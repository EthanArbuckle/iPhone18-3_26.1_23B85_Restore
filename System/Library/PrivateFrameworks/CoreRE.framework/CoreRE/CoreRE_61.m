void re::VideoFileAsset::~VideoFileAsset(re::VideoFileAsset *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = re::globalAllocators(this);
    v4 = v3[2];
    v5 = *(v2 + 24);
    if (v5)
    {
      v6 = re::globalAllocators(v3)[2];
      (**v5)(v5);
      (*(*v6 + 40))(v6, v5);
      *(v2 + 24) = 0;
    }

    v7 = *v2;
    *v2 = 0;

    if (*(v2 + 16) == 1)
    {
      v8 = *(v2 + 8);
      if (v8)
      {
        v9 = [v8 fileSystemRepresentation];
        remove(v9, v10);
      }
    }

    v11 = *(v2 + 8);
    *(v2 + 8) = 0;

    (*(*v4 + 40))(v4, v2);
  }

  re::DynamicString::deinit((this + 8));
}

{
  re::VideoFileAsset::~VideoFileAsset(this);

  JUMPOUT(0x1E6906520);
}

re::DynamicString *re::VideoFileAssetCompiler::getCurrentCompiledAssetInfo@<X0>(re::VideoFileAssetCompiler *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = re::DynamicString::setCapacity((a2 + 8), 0);
  *a2 = 0x100000001;
  re::VideoFileAsset::assetType(v3);
  v5[0] = re::VideoFileAsset::assetType(void)::type;
  v5[1] = strlen(re::VideoFileAsset::assetType(void)::type);
  return re::DynamicString::operator=((a2 + 8), v5);
}

uint64_t re::VideoFileAssetCompiler::assetIntrospectionType(re::VideoFileAssetCompiler *this)
{
  if ((atomic_load_explicit(&qword_1EE198CB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE198CB0))
  {
    qword_1EE198CA8 = re::internal::getOrCreateInfo("VideoFileAsset", re::allocInfo_VideoFileAsset, re::initInfo_VideoFileAsset, &unk_1EE198CA0, 0);
    __cxa_guard_release(&qword_1EE198CB0);
  }

  return qword_1EE198CA8;
}

void *re::VideoFileAssetCompiler::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  v3 = 0;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  do
  {
    result = re::DynamicArray<re::TransitionCondition *>::add(a1, &v5);
    ++v3;
  }

  while (v3 != 5);
  return result;
}

void re::VideoFileAssetCompiler::compile(char *__s@<X1>, uint64_t a2@<X8>)
{
  v7 = strrchr(__s, 46) + 1;
  if (!strcasecmp(v7, "mp4"))
  {
    v8 = MEMORY[0x1E69874B8];
  }

  else if (!strcasecmp(v7, "m4v"))
  {
    v8 = MEMORY[0x1E6987480];
  }

  else if (!strcasecmp(v7, "3gp"))
  {
    v8 = MEMORY[0x1E6987448];
  }

  else
  {
    if (strcasecmp(v7, "mov") && strcasecmp(v7, "qt"))
    {
      goto LABEL_12;
    }

    v8 = MEMORY[0x1E69874C0];
  }

  v9 = *v8;
  if (v9)
  {
    v21 = v9;
    v10 = re::globalAllocators(v9);
    v11 = (*(*v10[2] + 32))(v10[2], 48, 8);
    re::VideoFileAsset::VideoFileAsset(v11);
    *&v22 = [(re *)v21 UTF8String];
    *(&v22 + 1) = strlen(v22);
    re::DynamicString::operator=((v11 + 1), &v22);
    v12 = MEMORY[0x1E695DFF8];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:__s];
    v14 = [v12 fileURLWithPath:v13];
    v15 = v11[5];
    v16 = *(v15 + 8);
    *(v15 + 8) = v14;

    *a2 = 1;
    *(a2 + 8) = v11;
    v17 = v21;
    goto LABEL_13;
  }

LABEL_12:
  re::DynamicString::format("Unsupported video file extension: %s", &v22, v7);
  v17 = 0;
  v18 = v22;
  v19 = v23;
  v20 = v24;
  *a2 = 0;
  *(a2 + 8) = 100;
  *(a2 + 16) = re::AssetErrorCategory(void)::instance;
  *(a2 + 24) = v18;
  *(a2 + 40) = v19;
  *(a2 + 48) = v20;
LABEL_13:
}

re *re::internal::destroyPersistent<re::VideoFileAsset>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    re::VideoFileAsset::~VideoFileAsset(v1);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

uint64_t re::VideoFileAssetLoader::introspectionType(re::VideoFileAssetLoader *this)
{
  if ((atomic_load_explicit(&qword_1EE198CB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE198CB0))
  {
    qword_1EE198CA8 = re::internal::getOrCreateInfo("VideoFileAsset", re::allocInfo_VideoFileAsset, re::initInfo_VideoFileAsset, &unk_1EE198CA0, 0);
    __cxa_guard_release(&qword_1EE198CB0);
  }

  return qword_1EE198CA8;
}

uint64_t re::VideoFileAssetLoader::createRuntimeData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  (*(*a3 + 112))(v32, a3);
  if ((v32[0] & 1) == 0)
  {
    if (!*(*(a2 + 40) + 24))
    {
      goto LABEL_6;
    }

    return 1;
  }

  v5 = (*(*a3 + 72))(a3);
  *(*(a2 + 40) + 24) = v5;
  if (v5)
  {
    return 1;
  }

LABEL_6:
  if (*(a2 + 16))
  {
    v6 = *(a2 + 24);
  }

  else
  {
    v6 = a2 + 17;
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
  if ([v7 isEqualToString:*MEMORY[0x1E69874B8]])
  {
    v8 = "mp4";
    goto LABEL_17;
  }

  if ([v7 isEqualToString:*MEMORY[0x1E6987480]])
  {
    v8 = "m4v";
    goto LABEL_17;
  }

  if ([v7 isEqualToString:*MEMORY[0x1E6987448]])
  {
    v8 = "3gp";
    goto LABEL_17;
  }

  if ([v7 isEqualToString:*MEMORY[0x1E69874C0]])
  {
    v8 = "mov";
LABEL_17:

    v9 = NSTemporaryDirectory();
    v10 = [v9 stringByAppendingPathComponent:@"re_video"];

    v7 = v10;
    re::DynamicString::format("%sXXXXXX.%s", &v28, [v10 UTF8String], v8);
    if (v29)
    {
      v11 = v31;
    }

    else
    {
      v11 = v30;
    }

    v12 = mkstemps(v11, 4);
    v13 = v12;
    if (v12)
    {
      memset(__nbyte, 0, sizeof(__nbyte));
      do
      {
        if (!(*(*a3 + 16))(a3, &__nbyte[1], __nbyte))
        {
          v19 = MEMORY[0x1E695DFF8];
          if (v29)
          {
            v20 = v31;
          }

          else
          {
            v20 = v30;
          }

          v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v20];
          v22 = [v19 fileURLWithPath:v21];
          v23 = *(a2 + 40);
          v24 = *(v23 + 8);
          *(v23 + 8) = v22;

          *(*(a2 + 40) + 16) = 1;
          close(v13);
          if (v28 && (v29 & 1) != 0)
          {
            (*(*v28 + 40))();
          }

          return 1;
        }

        v14 = __nbyte[0];
        v15 = write(v13, *&__nbyte[1], __nbyte[0]);
      }

      while (v15 == v14);
      v16 = *re::assetTypesLogObjects(v15);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      v26 = 0;
      v17 = "Failed to write VideoFileAsset temporary file content";
      v18 = &v26;
    }

    else
    {
      v16 = *re::assetTypesLogObjects(v12);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      LOWORD(__nbyte[1]) = 0;
      v17 = "Unable to create VideoFileAsset temporary file";
      v18 = &__nbyte[1];
    }

    _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, v17, v18, 2u);
LABEL_27:
    if (v28)
    {
      if (v29)
      {
        (*(*v28 + 40))();
      }
    }

    goto LABEL_39;
  }

LABEL_39:
  return 0;
}

void sub_1E209CB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a14)
  {
    if (a15)
    {
      (*(*a14 + 40))();
    }
  }

  _Unwind_Resume(a1);
}

uint64_t re::VideoFileAssetLoader::registerAsset(re *a1, uint64_t a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 40);
  if (*v2)
  {
    return 0;
  }

  v6 = v2[3];
  if (!v6)
  {
    goto LABEL_18;
  }

  (*(*v6 + 112))(v23, v6);
  v7 = MEMORY[0x1E695DFF8];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v23[1]];
  v9 = [v7 fileURLWithPath:v8];

  if (*(a2 + 16))
  {
    v10 = *(a2 + 24);
  }

  else
  {
    v10 = a2 + 17;
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];
  if ([v11 isEqualToString:*MEMORY[0x1E69874B8]])
  {
    v12 = "video/mp4";
LABEL_16:

    v24 = *MEMORY[0x1E6987BA8];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
    v25[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];

    v15 = objc_alloc(MEMORY[0x1E6988168]);
    v16 = [v15 initWithFileURL:v9 offset:v23[2] length:(*(*v6 + 64))(v6) options:v14];
    v17 = *(a2 + 40);
    v11 = *v17;
    *v17 = v16;
    goto LABEL_17;
  }

  if ([v11 isEqualToString:*MEMORY[0x1E6987480]])
  {
    v12 = "video/x-m4v";
    goto LABEL_16;
  }

  if ([v11 isEqualToString:*MEMORY[0x1E6987448]])
  {
    v12 = "video/3gpp";
    goto LABEL_16;
  }

  if ([v11 isEqualToString:*MEMORY[0x1E69874C0]])
  {
    v12 = "video/quicktime";
    goto LABEL_16;
  }

  v14 = v11;
LABEL_17:

  v2 = *(a2 + 40);
  if (*v2)
  {
    return 0;
  }

LABEL_18:
  v18 = v2[1];
  if (v18)
  {
    v19 = [MEMORY[0x1E6988168] URLAssetWithURL:v18 options:0];
    v20 = *(a2 + 40);
    v21 = *v20;
    *v20 = v19;

    if (**(a2 + 40))
    {
      return 0;
    }
  }

  v22 = *re::assetTypesLogObjects(a1);
  if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    return 2;
  }

  LOWORD(v23[0]) = 0;
  v3 = 2;
  _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "VideoFileAsset has no associated file", v23, 2u);
  return v3;
}

BOOL re::VideoFileAssetLoader::isSupportedSourceExtension(re::VideoFileAssetLoader *this, const char *a2)
{
  v3 = 0;
  do
  {
    if (!v4)
    {
      break;
    }
  }

  while (v3++ != 4);
  return v4 == 0;
}

BOOL re::VideoFileAssetLoader::serializeAssetBlob(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(a3 + 40);
  v5 = *(v4 + 24);
  if (v5)
  {
    v13 = &unk_1F5D0AE00;
    v14 = v5;
    v15 = 0;
    LODWORD(v16) = 0;
    v17 = 0;
    v18 = (*(*v5 + 40))(v5);
    v19 = 0;
    v6 = re::AssetHelper::readerToWriterStream(&v13, a2);
    if (v16)
    {
      (*(*v14 + 24))(v14);
    }
  }

  else
  {
    v7 = *(v4 + 8);
    if (v7)
    {
      re::FileStreamReader::open([v7 fileSystemRepresentation], &v13);
      if (v13)
      {
        v6 = re::AssetHelper::readerToWriterStream(&v14, a2);
      }

      else
      {
        v10 = *re::assetTypesLogObjects(v8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          if (v17)
          {
            v12 = v18;
          }

          else
          {
            v12 = &v17 + 1;
          }

          *buf = 136315138;
          v21 = v12;
          _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Failed to write VideoFileAsset: %s", buf, 0xCu);
        }

        v6 = 0;
      }

      if (v13 == 1)
      {
        if (v15 && v17 == 1)
        {
          fclose(v15);
        }
      }

      else if (v16 && (v17 & 1) != 0)
      {
        (*(*v16 + 40))();
      }
    }

    else
    {
      v9 = *re::assetTypesLogObjects(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v13) = 0;
        _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Writing empty VideoFileAsset", &v13, 2u);
      }

      return 0;
    }
  }

  return v6;
}

uint64_t re::Result<re::FileStreamReader,re::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 16);
    if (v2 && *(a1 + 32) == 1)
    {
      fclose(v2);
      *(a1 + 16) = 0;
      *(a1 + 32) = 0;
    }
  }

  else
  {
    re::DynamicString::deinit((a1 + 24));
  }

  return a1;
}

void *re::VideoFileAssetLoader::allocateSampleAsset(re::VideoFileAssetLoader *this)
{
  v1 = dispatch_group_create();
  dispatch_group_enter(v1);
  v2 = MEMORY[0x1E696AEC0];
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];
  v5 = [v2 stringWithFormat:@"re_videosample%@.mp4", v4];

  v6 = MEMORY[0x1E695DFF8];
  v7 = NSTemporaryDirectory();
  v8 = [v7 stringByAppendingPathComponent:v5];
  v9 = [v6 fileURLWithPath:v8];

  v10 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2re20VideoFileAssetLoader19allocateSampleAssetEv_block_invoke;
  block[3] = &unk_1E871B268;
  v11 = v9;
  v23 = v11;
  v12 = v1;
  v24 = v12;
  dispatch_group_async(v12, v10, block);

  v13 = dispatch_group_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  v14 = re::globalAllocators(v13);
  v15 = (*(*v14[2] + 32))(v14[2], 48, 8);
  re::VideoFileAsset::VideoFileAsset(v15);
  v16 = [*MEMORY[0x1E69874B8] UTF8String];
  v17 = strlen(v16);
  v25[0] = v16;
  v25[1] = v17;
  re::DynamicString::operator=((v15 + 1), v25);
  objc_storeStrong((v15[5] + 8), v9);
  *(v15[5] + 16) = 1;
  v18 = [MEMORY[0x1E6988168] URLAssetWithURL:v11 options:0];
  v19 = v15[5];
  v20 = *v19;
  *v19 = v18;

  return v15;
}

void ___ZN2re20VideoFileAssetLoader19allocateSampleAssetEv_block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *MEMORY[0x1E69874B8];
  v21 = 0;
  v4 = [MEMORY[0x1E6987ED8] assetWriterWithURL:v2 fileType:v3 error:&v21];
  v15 = v21;
  v5 = MEMORY[0x1E695DF20];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:16];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:16];
  v16 = [v5 dictionaryWithObjectsAndKeys:{*MEMORY[0x1E6987CE8], *MEMORY[0x1E6987CB0], v6, *MEMORY[0x1E6987E08], v7, *MEMORY[0x1E6987D70], 0}];

  v8 = [MEMORY[0x1E6987EE0] assetWriterInputWithMediaType:*MEMORY[0x1E6987608] outputSettings:v16];
  v9 = [MEMORY[0x1E6987F08] assetWriterInputPixelBufferAdaptorWithAssetWriterInput:v8 sourcePixelBufferAttributes:0];
  [v4 addInput:v8];
  [v4 startWriting];
  __b[0] = *MEMORY[0x1E6960CC0];
  *&__b[1] = *(MEMORY[0x1E6960CC0] + 16);
  [v4 startSessionAtSourceTime:__b];
  v10 = 0;
  v11 = *MEMORY[0x1E695E480];
  do
  {
    do
    {
      v12 = [v9 assetWriterInput];
      v13 = [v12 isReadyForMoreMediaData];
    }

    while ((v13 & 1) == 0);
    memset(__b, 25 * v10, sizeof(__b));
    texture = 0;
    CVPixelBufferCreateWithBytes(v11, 0x10uLL, 0x10uLL, 0x18u, __b, 0x30uLL, 0, 0, 0, &texture);
    v14 = texture;
    CMTimeMake(&v19, v10, 10);
    [v9 appendPixelBuffer:v14 withPresentationTime:&v19];
    CVPixelBufferRelease(texture);
    ++v10;
  }

  while (v10 != 10);
  [v8 markAsFinished];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = ___ZN2re20VideoFileAssetLoader19allocateSampleAssetEv_block_invoke_2;
  v17[3] = &unk_1E871B240;
  v18 = *(a1 + 40);
  [v4 finishWritingWithCompletionHandler:v17];
}

void *re::allocInfo_VideoFileAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE198C98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE198C98))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE198CB8, "VideoFileAsset");
    __cxa_guard_release(&qword_1EE198C98);
  }

  return &unk_1EE198CB8;
}

void re::initInfo_VideoFileAsset(re *this, re::IntrospectionBase *a2)
{
  v11[0] = 0xEC9982C10E198972;
  v11[1] = "VideoFileAsset";
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  *(this + 2) = v12;
  if ((atomic_load_explicit(&qword_1EE198C90, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE198C90);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicString>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "avFileType";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0x800000001;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      _MergedGlobals_88 = v9;
      __cxa_guard_release(&qword_1EE198C90);
    }
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &_MergedGlobals_88;
  *(this + 9) = re::internal::defaultConstruct<re::VideoFileAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::VideoFileAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::VideoFileAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::VideoFileAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v10 = v12;
}

uint64_t re::SkeletalPoseRigMappingData::rebuildMappingData<re::MeshAsset>(_anonymous_namespace_ *a1, unint64_t a2, uint64_t a3, re::MeshAsset *a4, unint64_t a5, uint64_t a6)
{
  v9 = a1;
  v151 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
  }

  v9[1] = -1;
  re::FixedArray<CoreIKTransform>::deinit(v9 + 2);
  re::FixedArray<CoreIKTransform>::deinit(v9 + 5);
  re::FixedArray<CoreIKTransform>::deinit(v9 + 8);
  re::FixedArray<CoreIKTransform>::deinit(v9 + 11);
  re::FixedArray<CoreIKTransform>::deinit(v9 + 14);
  re::FixedArray<CoreIKTransform>::deinit(v9 + 17);
  re::FixedArray<CoreIKTransform>::deinit(v9 + 20);
  re::FixedArray<CoreIKTransform>::deinit(v9 + 23);
  re::FixedArray<CoreIKTransform>::deinit(v9 + 26);
  v10 = re::FixedArray<CoreIKTransform>::deinit(v9 + 29);
  v13 = *(a5 + 264);
  v111 = a6;
  if (v13)
  {
    if (v13 >= 0x2E8BA2E8BA2E8BBLL)
    {
LABEL_187:
      re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 88, v13);
      _os_crash();
      __break(1u);
      goto LABEL_188;
    }

    if (!v11)
    {
LABEL_188:
      re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
      goto LABEL_189;
    }

    v15 = v11;
    v16 = v13 - 1;
    if (v13 != 1)
    {
      v15 = v11;
      do
      {
        *v15 = 0;
        *(v15 + 1) = 0;
        *(v15 + 6) = 0;
        *(v15 + 2) = 0;
        *(v15 + 9) = 0;
        *(v15 + 2) = 0uLL;
        *(v15 + 3) = 0uLL;
        *(v15 + 16) = 0;
        *(v15 + 20) = -1;
        v15 = (v15 + 88);
        --v16;
      }

      while (v16);
    }

    v118 = v11;
    *v15 = 0;
    *(v15 + 1) = 0;
    *(v15 + 6) = 0;
    *(v15 + 2) = 0;
    *(v15 + 9) = 0;
    *(v15 + 2) = 0u;
    *(v15 + 3) = 0u;
    *(v15 + 16) = 0;
    *(v15 + 20) = -1;
  }

  else
  {
    v118 = 0;
  }

  isSkinningAssignLoggingEnabled = re::DeformerFeatureFlags::isSkinningAssignLoggingEnabled(v11);
  v133 = isSkinningAssignLoggingEnabled;
  v18 = *(a2 + 296);
  v121 = v9;
  v130 = a5;
  if (v18)
  {
    v19 = 0;
    v123 = *(a2 + 296);
    v125 = a2;
    do
    {
      v20 = *(a2 + 296);
      if (v20 <= v19)
      {
        goto LABEL_173;
      }

      v21 = *(a2 + 312) + (v19 << 6);
      if (*(v21 + 56) == 1)
      {
        if (!v133 || *(a2 + 176) > *(v21 + 60))
        {
          goto LABEL_22;
        }

        v45 = *re::assetsLogObjects(isSkinningAssignLoggingEnabled);
        isSkinningAssignLoggingEnabled = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
        if (isSkinningAssignLoggingEnabled)
        {
          v46 = *(v21 + 60);
          buf[0].n128_u32[0] = 67109120;
          buf[0].n128_u32[1] = v46;
          v24 = v45;
          v25 = "[DeformerLogging] Skeletal mesh pose has an invalid model space pose index: %u.";
          goto LABEL_53;
        }
      }

      else
      {
        if (*(v21 + 56))
        {
          if (!v133)
          {
            goto LABEL_50;
          }

          v43 = *re::assetsLogObjects(isSkinningAssignLoggingEnabled);
          isSkinningAssignLoggingEnabled = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
          if (!isSkinningAssignLoggingEnabled)
          {
            goto LABEL_50;
          }

          v44 = *(v21 + 56);
          buf[0].n128_u32[0] = 67109120;
          buf[0].n128_u32[1] = v44;
          v24 = v43;
          v25 = "[DeformerLogging] Skeletal mesh pose has an invalid skeletal pose type: %u.";
          goto LABEL_53;
        }

        if (!v133 || *(a2 + 136) > *(v21 + 60))
        {
LABEL_22:
          v127 = *(a2 + 312) + (v19 << 6);
          re::MeshNameMap::meshInstancePartsForIdentifier(a5, v21, buf);
          *v143 = a4;
          *&v143[8] = a5;
          *&v143[16] = buf[0].n128_u64[0];
          *&v145[9] = v137;
          *&v145[13] = 0;
          re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::operator=<24ul>(&v143[24], &buf[0].n128_i64[1]);
          re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&buf[0].n128_i64[1]);
          *v146 = v143;
          *&v146[8] = 0;
          v26 = *&v143[16];
          if (!*&v143[16])
          {
LABEL_45:
            isSkinningAssignLoggingEnabled = re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&v143[24]);
            v9 = v121;
            a5 = v130;
            v18 = v123;
            a2 = v125;
            goto LABEL_50;
          }

          v27 = 0;
          v28 = v143;
          while (2)
          {
            buf[0].n128_u64[0] = v27;
            v29 = (*(**(v28 + 7) + 16))(*(v28 + 7), buf);
            buf[0].n128_u64[0] = *&v146[8];
            v18 = (*(**(*v146 + 56) + 16))(*(*v146 + 56), buf);
            v30 = re::MeshIdentifierIteration<re::MeshAsset,re::MeshInstanceAndPartIndex>::MeshIdentifierIterator::meshModel(v146);
            v31 = v30;
            a2 = WORD2(v18);
            v32 = v30[28];
            if (v32 && *(v32 + 8) > WORD2(v18))
            {
              if (*(a3 + 24) > v29)
              {
                v33 = *(a3 + 32) + 24 * v29;
                if (*(v33 + 8) > WORD2(v18))
                {
                  a5 = *(*(v33 + 16) + 4 * WORD2(v18));
                  if (a5 != -1)
                  {
                    a2 = HIDWORD(v18);
                    started = re::MeshNameMap::meshPartStartIndexForInstance(v130, v29);
                    v20 = re::MeshNameMap::skinnedPartIndexForPartInstance(v130, started + WORD2(v18));
                    if (v13 <= v20)
                    {
                      goto LABEL_185;
                    }

                    v36 = v118 + 88 * v20;
                    *(v36 + 20) = a5;
                    if (*(v127 + 56) != 1)
                    {
                      if (*(v127 + 56))
                      {
                        goto LABEL_191;
                      }

                      v36 += 40;
                    }

                    re::DynamicArray<int>::add(v36, (v127 + 60));
LABEL_43:
                    v28 = *v146;
                    v27 = ++*&v146[8];
                    if (*v146 == v143 && v27 == v26)
                    {
                      goto LABEL_45;
                    }

                    continue;
                  }
                }
              }

              if (!v133)
              {
                goto LABEL_43;
              }

              v20 = *re::assetsLogObjects(v30);
              if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                goto LABEL_43;
              }

              a5 = v31[7];
              if (a5 <= WORD2(v18))
              {
                goto LABEL_182;
              }

              v41 = v31[1];
              v42 = *(v31[8] + 544 * WORD2(v18) + 496);
              buf[0].n128_u32[0] = 136315394;
              *(buf[0].n128_u64 + 4) = v41;
              buf[0].n128_u16[6] = 2080;
              *(&buf[0].n128_u64[1] + 6) = v42;
              v39 = v20;
              v40 = "[DeformerLogging] Mesh Model[%s] Part[%s] has no assigned rig.";
            }

            else
            {
              if (!v133)
              {
                goto LABEL_43;
              }

              v20 = *re::assetsLogObjects(v30);
              if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                goto LABEL_43;
              }

              a5 = v31[7];
              if (a5 <= WORD2(v18))
              {
                goto LABEL_172;
              }

              v37 = v31[1];
              v38 = *(v31[8] + 544 * WORD2(v18) + 496);
              buf[0].n128_u32[0] = 136315394;
              *(buf[0].n128_u64 + 4) = v37;
              buf[0].n128_u16[6] = 2080;
              *(&buf[0].n128_u64[1] + 6) = v38;
              v39 = v20;
              v40 = "[DeformerLogging] Mesh Model[%s] Part[%s] not skinned.";
            }

            break;
          }

          _os_log_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_INFO, v40, buf, 0x16u);
          goto LABEL_43;
        }

        v22 = *re::assetsLogObjects(isSkinningAssignLoggingEnabled);
        isSkinningAssignLoggingEnabled = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
        if (isSkinningAssignLoggingEnabled)
        {
          v23 = *(v21 + 60);
          buf[0].n128_u32[0] = 67109120;
          buf[0].n128_u32[1] = v23;
          v24 = v22;
          v25 = "[DeformerLogging] Skeletal mesh pose has an invalid local space pose index: %u.";
LABEL_53:
          _os_log_error_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_ERROR, v25, buf, 8u);
        }
      }

LABEL_50:
      ++v19;
    }

    while (v19 != v18);
  }

  v47 = *(a5 + 216);
  v112 = *(a5 + 264);
  *&v145[1] = 0;
  memset(v143, 0, sizeof(v143));
  *(v142 + 2) = 0;
  memset(v140, 0, sizeof(v140));
  v114 = v47;
  v116 = v13;
  if (v47)
  {
    v124 = 0;
    v126 = 0;
    v48 = 0;
    v113 = 0;
    v49 = v118;
    v19 = *(a4 + 156);
    v120 = v19;
    while (1)
    {
      v119 = re::MeshNameMap::modelIndex(a5, v48);
      v50 = re::MeshAssetBaseInfo::meshModel<re::MeshAsset>(a4, v119);
      v51 = re::MeshNameMap::meshPartStartIndexForInstance(a5, v48);
      v128 = v51;
      v52 = v50[28];
      v115 = v48;
      if (v52)
      {
        v53 = *(v52 + 8);
        if (v53 > v50[7])
        {
          if (v133)
          {
            v54 = *re::assetsLogObjects(v51);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              v55 = v50[1];
              buf[0].n128_u32[0] = 136315138;
              *(buf[0].n128_u64 + 4) = v55;
              _os_log_error_impl(&dword_1E1C61000, v54, OS_LOG_TYPE_ERROR, "[DeformerLogging] Mesh Model[%s] has unexpected skinned part count", buf, 0xCu);
            }
          }

          goto LABEL_117;
        }

        if (v53)
        {
          break;
        }
      }

LABEL_117:
      v48 = v115 + 1;
      if (v115 + 1 == v114)
      {
        a2 = *&v143[16];
        goto LABEL_120;
      }
    }

    v18 = 0;
    v132 = *(v52 + 8);
    v122 = v50;
    while (1)
    {
      v56 = v50[28];
      if (v56 && *(v56 + 8) > v18)
      {
        a2 = *(*(v56 + 16) + 88 * v18 + 4);
      }

      else
      {
        a2 = 0xFFFFFFFFLL;
      }

      if (v19 > a2)
      {
        break;
      }

      if (v133)
      {
        v20 = *re::assetsLogObjects(v51);
        v51 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
        if (v51)
        {
          a2 = v50[7];
          if (a2 <= v18)
          {
            goto LABEL_174;
          }

          v68 = v50[1];
          v69 = *(v50[8] + 544 * v18 + 496);
          buf[0].n128_u32[0] = 136315394;
          *(buf[0].n128_u64 + 4) = v68;
          buf[0].n128_u16[6] = 2080;
          *(&buf[0].n128_u64[1] + 6) = v69;
          _os_log_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_INFO, "[DeformerLogging] Mesh Model[%s] Part[%s] has no skeleton.", buf, 0x16u);
        }

        goto LABEL_113;
      }

LABEL_114:
      if (++v18 == v53)
      {
        goto LABEL_117;
      }
    }

    v57 = re::MeshNameMap::skinnedPartIndexForPartInstance(a5, v128 + v18);
    __src = v57;
    v20 = v57;
    if (v13 <= v57)
    {
      goto LABEL_171;
    }

    v58 = v49 + 88 * v57;
    v59 = *(v58 + 80);
    if (v59 == -1)
    {
      v50 = v122;
      v70 = v122[28];
      if (v70 && *(v70 + 32) > a2)
      {
        re::ReadOnlyCPUAccessibleBufferSliceContent::make((*(v70 + 40) + 40 * a2), buf);
        if (buf[0].n128_u8[0])
        {
          v71 = buf[1].n128_u64[0] >> 6;
        }

        else
        {
          v71 = 0;
        }

        v72 = v113;
        if (v113 <= v71)
        {
          v72 = v71;
        }

        v113 = v72;
        *v146 = __src;
        *&v146[8] = v71;
        v73 = re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(v140, v146);
        a5 = v130;
        v19 = v120;
        if (buf[0].n128_u8[0] == 1)
        {
          re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(&buf[0].n128_i8[8]);
        }

        else
        {
          v51 = buf[1].n128_i64[1];
          if (buf[1].n128_u64[1] && (v137 & 1) != 0)
          {
            v51 = (*(*buf[1].n128_u64[1] + 40))(v73);
          }
        }

        goto LABEL_113;
      }

      buf[0].n128_u32[0] = v57;
      buf[0].n128_u64[1] = 0;
      re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(v140, buf);
      a5 = v130;
    }

    else
    {
      v129 = *&v145[1];
      v60 = *&v143[16];
      if (*&v143[16])
      {
        v61 = *(v58 + 16);
        v62 = (*&v145[1] + 16);
        v63 = *&v143[16] << 6;
        while (1)
        {
          v64 = *(v62 - 2);
          if (*(v64 + 16) == v61)
          {
            v57 = memcmp(*(v64 + 32), *(v58 + 32), 4 * v61);
            if (!v57)
            {
              v65 = *(v64 + 56);
              if (v65 == *(v58 + 56))
              {
                v57 = memcmp(*(v64 + 72), *(v58 + 72), 4 * v65);
                if (!v57 && *(v64 + 80) == v59 && *(v62 - 2) == a2)
                {
                  break;
                }
              }
            }
          }

          v62 += 8;
          v63 -= 64;
          if (!v63)
          {
            goto LABEL_79;
          }
        }

        v51 = re::DynamicArray<int>::add(v62, &__src);
        v13 = v116;
        v49 = v118;
        v19 = v120;
        v9 = v121;
        a5 = v130;
        v50 = v122;
        goto LABEL_113;
      }

LABEL_79:
      buf[0].n128_u64[0] = v58;
      buf[0].n128_u32[2] = a2;
      *&v138 = 0;
      *&v137 = 0;
      buf[1] = 0uLL;
      DWORD2(v137) = 0;
      re::DynamicArray<int>::setCapacity(buf[1].n128_u64, 1uLL);
      ++DWORD2(v137);
      v66 = re::DynamicArray<float>::copy(buf[1].n128_u64, 0, &__src, 1);
      DWORD2(v138) = v119;
      if (v60 >= *&v143[8])
      {
        v9 = v121;
        v50 = v122;
        a5 = v130;
        if (*&v143[8] < v60 + 1)
        {
          if (*v143)
          {
            v74 = 8;
            if (*&v143[8])
            {
              v74 = 2 * *&v143[8];
            }

            if (v74 <= v60 + 1)
            {
              v75 = v60 + 1;
            }

            else
            {
              v75 = v74;
            }

            re::DynamicArray<void re::SkeletalPoseRigMappingData::rebuildMappingData<re::MeshAsset>(re::SkeletalPoseDefinitionAsset const&,re::RigRuntimeData const&,re::MeshAsset const&,re::MeshNameMap const&,unsigned long)::UniqueSkinningRigPose>::setCapacity(v143, v75);
          }

          else
          {
            re::DynamicArray<void re::SkeletalPoseRigMappingData::rebuildMappingData<re::MeshAsset>(re::SkeletalPoseDefinitionAsset const&,re::RigRuntimeData const&,re::MeshAsset const&,re::MeshNameMap const&,unsigned long)::UniqueSkinningRigPose>::setCapacity(v143, v60 + 1);
            ++*&v143[24];
          }
        }

        v60 = *&v143[16];
        v67 = *&v145[1];
      }

      else
      {
        v9 = v121;
        v50 = v122;
        a5 = v130;
        v67 = v129;
      }

      v76 = v67 + (v60 << 6);
      v77 = buf[0].n128_u64[0];
      *(v76 + 8) = buf[0].n128_u32[2];
      *v76 = v77;
      *(v76 + 48) = 0;
      *(v76 + 24) = 0;
      *(v76 + 32) = 0;
      *(v76 + 16) = 0;
      *(v76 + 40) = 0;
      *(v76 + 16) = buf[1].n128_u64[0];
      buf[1].n128_u64[0] = 0;
      *(v76 + 24) = buf[1].n128_u64[1];
      buf[1].n128_u64[1] = 0;
      v78 = *(v76 + 32);
      *(v76 + 32) = v137;
      *&v137 = v78;
      v79 = *(v76 + 48);
      *(v76 + 48) = v138;
      *&v138 = v79;
      ++DWORD2(v137);
      ++*(v76 + 40);
      *(v76 + 56) = DWORD2(v138);
      *&v143[16] = v60 + 1;
      ++*&v143[24];
      v51 = buf[1].n128_i64[0];
      if (buf[1].n128_u64[0] && v79)
      {
        v51 = (*(*buf[1].n128_u64[0] + 40))();
      }

      v124 += *(v58 + 56);
      v126 += *(v58 + 16);
      v13 = v116;
      v49 = v118;
    }

    v19 = v120;
LABEL_113:
    v53 = v132;
    goto LABEL_114;
  }

  a2 = 0;
  v113 = 0;
  v124 = 0;
  v126 = 0;
LABEL_120:
  re::FixedArray<int>::init<>(v9 + 26, *v9, a2 + 1);
  a5 = v112;
  re::FixedArray<unsigned int>::init<unsigned int const&>(v9 + 2, *v9, v112, &re::SkeletalPoseRigMappingData::kInvalidPoseRigMapIndex);
  v81 = *v9;
  v9[29] = *v9;
  v9[30] = v112;
  if (v112)
  {
    if (v112 >> 61)
    {
LABEL_189:
      re::internal::assertLog(6, v80, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, a5);
      _os_crash();
      __break(1u);
      goto LABEL_190;
    }

    v82 = (*(*v81 + 32))(v81, 8 * v112, 4);
    v9[31] = v82;
    if (!v82)
    {
LABEL_190:
      re::internal::assertLog(4, v83, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
LABEL_191:
      re::internal::assertLog(4, v35, "assertion failure: '%s' (%s:line %i) Unexpected skeletal pose type.", "!Unreachable code", "rebuildMappingData", 280);
      _os_crash();
      __break(1u);
    }

    v84 = v82;
    if (v112 != 1)
    {
      bzero(v82, 8 * v112 - 8);
      v84 += v112 - 1;
    }

    *v84 = 0;
  }

  if (a2)
  {
    v20 = 0;
    v18 = 0;
    v85 = *&v145[1];
    while (1)
    {
      if (v20 == a2)
      {
        goto LABEL_183;
      }

      v86 = v85 + (v20 << 6);
      v87 = re::MeshAsset::skeletonAtIndex(a4, *(v86 + 8));
      a5 = v9[27];
      if (a5 <= v20)
      {
        goto LABEL_184;
      }

      v88 = *(v87 + 24);
      *(v9[28] + 4 * v20) = v18;
      v89 = *(v86 + 32);
      if (v89)
      {
        break;
      }

LABEL_135:
      v18 = (v18 + v88);
      if (++v20 == a2)
      {
        goto LABEL_138;
      }
    }

    v90 = *(v86 + 48);
    v91 = 4 * v89;
    while (1)
    {
      v19 = *v90;
      a5 = v9[3];
      if (a5 <= v19)
      {
        break;
      }

      *(v9[4] + 4 * v19) = v20;
      a5 = v9[30];
      if (a5 <= v19)
      {
        goto LABEL_170;
      }

      *(v9[31] + 8 * v19) = v18 | (v88 << 32);
      ++v90;
      v91 -= 4;
      if (!v91)
      {
        goto LABEL_135;
      }
    }

    v135 = 0;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v146 = 136315906;
    *&v146[4] = "operator[]";
    *&v146[12] = 1024;
    *&v146[14] = 468;
    v147 = 2048;
    v148 = v19;
    v149 = 2048;
    v150 = a5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_170:
    v135 = 0;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v146 = 136315906;
    *&v146[4] = "operator[]";
    *&v146[12] = 1024;
    *&v146[14] = 468;
    v147 = 2048;
    v148 = v19;
    v149 = 2048;
    v150 = a5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_171:
    v135 = 0;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v146 = 136315906;
    *&v146[4] = "operator[]";
    *&v146[12] = 1024;
    *&v146[14] = 468;
    v147 = 2048;
    v148 = v20;
    v149 = 2048;
    v150 = v13;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_172:
    v135 = 0;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v140 = 136315906;
    *&v140[4] = "operator[]";
    *&v140[12] = 1024;
    *&v140[14] = 476;
    *&v140[18] = 2048;
    *&v140[20] = a2;
    v141 = 2048;
    v142[0] = a5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_173:
    *v140 = 0;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v143 = 136315906;
    *&v143[4] = "operator[]";
    *&v143[12] = 1024;
    *&v143[14] = 797;
    *&v143[18] = 2048;
    *&v143[20] = v19;
    v144 = 2048;
    *v145 = v20;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_174:
    v135 = 0;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v146 = 136315906;
    *&v146[4] = "operator[]";
    *&v146[12] = 1024;
    *&v146[14] = 476;
    v147 = 2048;
    v148 = v18;
    v149 = 2048;
    v150 = a2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_175;
  }

  LODWORD(v18) = 0;
LABEL_138:
  v9[32] = v113 + v18;
  v20 = v9[27];
  if (v20 <= a2)
  {
LABEL_186:
    v135 = 0;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v146 = 136315906;
    *&v146[4] = "operator[]";
    *&v146[12] = 1024;
    *&v146[14] = 468;
    v147 = 2048;
    v148 = a2;
    v149 = 2048;
    v150 = v20;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_187;
  }

  *(v9[28] + 4 * a2) = v18;
  re::FixedArray<int>::init<>(v9 + 5, *v9, v124);
  re::FixedArray<int>::init<>(v9 + 8, *v9, v126);
  re::FixedArray<int>::init<>(v9 + 11, *v9, a2);
  re::FixedArray<re::Slice<unsigned int>>::init<>(v9 + 14, *v9, a2);
  re::FixedArray<re::Slice<unsigned int>>::init<>(v9 + 17, *v9, a2);
  re::FixedArray<int>::init<>(v9 + 20, *v9, a2);
  re::FixedArray<int>::init<>(v9 + 23, *v9, a2);
  if (a2)
  {
    v20 = 0;
    v92 = 0;
    v93 = *&v145[1];
    v13 = 8;
    while (a2 != v20)
    {
      v94 = *v93;
      re::FixedArray<unsigned int>::copy(v121 + 5, v92, *(*v93 + 72), *(*v93 + 56));
      re::FixedArray<unsigned int>::copy(v121 + 8, 0, *(v94 + 32), *(v94 + 16));
      a5 = v121[12];
      if (a5 <= v20)
      {
        goto LABEL_177;
      }

      *(v121[13] + 4 * v20) = *(v94 + 80);
      v95 = re::FixedArray<unsigned int>::slice((v121 + 5), v92, *(v94 + 56));
      a5 = v121[15];
      if (a5 <= v20)
      {
        goto LABEL_178;
      }

      v97 = (v121[16] + v13);
      *(v97 - 1) = v95;
      *v97 = v96;
      v98 = re::FixedArray<unsigned int>::slice((v121 + 8), 0, *(v94 + 16));
      a5 = v121[18];
      if (a5 <= v20)
      {
        goto LABEL_179;
      }

      v100 = (v121[19] + v13);
      *(v100 - 1) = v98;
      *v100 = v99;
      a5 = v121[21];
      if (a5 <= v20)
      {
        goto LABEL_180;
      }

      *(v121[22] + 4 * v20) = v93[2];
      a5 = v121[24];
      if (a5 <= v20)
      {
        goto LABEL_181;
      }

      *(v121[25] + 4 * v20) = v93[14];
      v92 += *(v94 + 56);
      ++v20;
      v13 += 16;
      v93 += 16;
      if (a2 == v20)
      {
        goto LABEL_148;
      }
    }

LABEL_176:
    v135 = 0;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v146 = 136315906;
    *&v146[4] = "operator[]";
    *&v146[12] = 1024;
    *&v146[14] = 789;
    v147 = 2048;
    v148 = a2;
    v149 = 2048;
    v150 = a2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_177:
    v135 = 0;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v146 = 136315906;
    *&v146[4] = "operator[]";
    *&v146[12] = 1024;
    *&v146[14] = 468;
    v147 = 2048;
    v148 = v20;
    v149 = 2048;
    v150 = a5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_178:
    v135 = 0;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v146 = 136315906;
    *&v146[4] = "operator[]";
    *&v146[12] = 1024;
    *&v146[14] = 468;
    v147 = 2048;
    v148 = v20;
    v149 = 2048;
    v150 = a5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_179:
    v135 = 0;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v146 = 136315906;
    *&v146[4] = "operator[]";
    *&v146[12] = 1024;
    *&v146[14] = 468;
    v147 = 2048;
    v148 = v20;
    v149 = 2048;
    v150 = a5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_180:
    v135 = 0;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v146 = 136315906;
    *&v146[4] = "operator[]";
    *&v146[12] = 1024;
    *&v146[14] = 468;
    v147 = 2048;
    v148 = v20;
    v149 = 2048;
    v150 = a5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_181:
    v135 = 0;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v146 = 136315906;
    *&v146[4] = "operator[]";
    *&v146[12] = 1024;
    *&v146[14] = 468;
    v147 = 2048;
    v148 = v20;
    v149 = 2048;
    v150 = a5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_182:
    v135 = 0;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v140 = 136315906;
    *&v140[4] = "operator[]";
    *&v140[12] = 1024;
    *&v140[14] = 476;
    *&v140[18] = 2048;
    *&v140[20] = a2;
    v141 = 2048;
    v142[0] = a5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_183:
    v135 = 0;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v146 = 136315906;
    *&v146[4] = "operator[]";
    *&v146[12] = 1024;
    *&v146[14] = 789;
    v147 = 2048;
    v148 = a2;
    v149 = 2048;
    v150 = a2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_184:
    v135 = 0;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v146 = 136315906;
    *&v146[4] = "operator[]";
    *&v146[12] = 1024;
    *&v146[14] = 468;
    v147 = 2048;
    v148 = v20;
    v149 = 2048;
    v150 = a5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_185:
    v135 = 0;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v140 = 136315906;
    *&v140[4] = "operator[]";
    *&v140[12] = 1024;
    *&v140[14] = 468;
    *&v140[18] = 2048;
    *&v140[20] = v20;
    v141 = 2048;
    v142[0] = v13;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_186;
  }

LABEL_148:
  v101 = *(v142 + 2);
  v102 = v118;
  if (*&v140[16])
  {
    v103 = *(v142 + 2);
    v104 = *(v142 + 2) + 16 * *&v140[16];
    while (1)
    {
      v20 = *v103;
      a5 = v121[30];
      if (a5 <= v20)
      {
        break;
      }

      *(v121[31] + 8 * v20) = v18 | (*(v103 + 1) << 32);
      v103 += 4;
      if (v103 == v104)
      {
        goto LABEL_152;
      }
    }

LABEL_175:
    v135 = 0;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v146 = 136315906;
    *&v146[4] = "operator[]";
    *&v146[12] = 1024;
    *&v146[14] = 468;
    v147 = 2048;
    v148 = v20;
    v149 = 2048;
    v150 = a5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_176;
  }

LABEL_152:
  v121[1] = v111;
  if (*v140)
  {
    v105 = v101 == 0;
  }

  else
  {
    v105 = 1;
  }

  if (!v105)
  {
    (*(**v140 + 40))();
  }

  result = *v143;
  if (*v143)
  {
    v107 = *&v145[1];
    if (*&v145[1])
    {
      if (a2)
      {
        v108 = a2 << 6;
        v109 = *&v145[1] + 16;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v109);
          v109 += 64;
          v108 -= 64;
        }

        while (v108);
        result = *v143;
        v107 = *&v145[1];
        v102 = v118;
      }

      result = (*(*result + 40))(result, v107);
    }
  }

  if (v116)
  {
    v110 = 88 * v116;
    do
    {
      re::DynamicArray<unsigned long>::deinit(v102 + 40);
      re::DynamicArray<unsigned long>::deinit(v102);
      v102 += 88;
      v110 -= 88;
    }

    while (v110);
  }

  return result;
}

void re::FixedArray<re::Slice<unsigned int>>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 60)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 16, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = 16 * a3;
  v6 = (*(*a2 + 32))(a2, 16 * a3, 8);
  a1[2] = v6;
  if (!v6)
  {
LABEL_9:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
    return;
  }

  v8 = v6;
  if (a3 != 1)
  {
    bzero(v6, v5 - 16);
    v8 = (v8 + v5 - 16);
  }

  *v8 = 0;
  v8[1] = 0;
}

uint64_t re::FixedArray<unsigned int>::slice(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (v4 + 1 <= a2)
  {
    v6 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v7) = 136315906;
    *(&v7 + 4) = "slice";
    WORD6(v7) = 1024;
    HIWORD(v7) = 502;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_6;
  }

  if (__CFADD__(a2, a3))
  {
LABEL_6:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::slice(size_t,size_t). index, %zu, count = %zu, array size = %zu", "!overflow", "slice", 508, a2, a3, v4, v6, v7);
    _os_crash();
    __break(1u);
LABEL_7:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Invalid count. index = %zu, count = %zu, array size = %zu", "endIndexExclusive <= m_size", "slice", 512, a2, a3, v4);
    _os_crash();
    __break(1u);
  }

  if (a2 + a3 > v4)
  {
    goto LABEL_7;
  }

  return *(a1 + 16) + 4 * a2;
}

uint64_t re::SkeletalPoseRigMappingData::poseRigMapIndex(re::SkeletalPoseRigMappingData *this, const re::MeshNameMap *a2, unsigned int a3, int a4)
{
  if (*(a2 + 54) <= a3)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = re::MeshNameMap::meshPartStartIndexForInstance(a2, a3) + a4;
  if (v7 >= re::MeshNameMap::meshPartStartIndexForInstance(a2, a3 + 1))
  {
    return 0xFFFFFFFFLL;
  }

  result = re::MeshNameMap::skinnedPartIndexForPartInstance(a2, v7);
  if (result != -1)
  {
    if (*(this + 3) <= result)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    return *(*(this + 4) + 4 * result);
  }

  return result;
}

uint64_t re::SkeletalPoseRigMappingData::poseRigMapJointTransformCount(re::SkeletalPoseRigMappingData *this, unsigned int a2)
{
  v2 = a2 + 1;
  v3 = *(this + 27);
  if (v3 <= v2)
  {
    return 0;
  }

  if (v3 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return (*(*(this + 28) + 4 * v2) - *(*(this + 28) + 4 * a2));
}

unint64_t re::SkeletalPoseRigMappingData::poseRigMapAbsoluteJointTransforms(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a2 + 1);
  v4 = *(a1 + 216);
  if (v4 > v3)
  {
    if (v4 <= a2)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      v5 = *(a1 + 224);
      v6 = *(v5 + 4 * a2);
      v7 = a3[1];
      if (v7 >= v6)
      {
        if (v7 >= *(v5 + 4 * v3))
        {
          return *a3 + (v6 << 6);
        }

LABEL_10:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. toExclusive = %zu, size = %zu", "toExclusive <= size()", "range", 249, v6, v7);
        _os_crash();
        __break(1u);
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. fromInclusive = %zu, size = %zu", "fromInclusive <= size()", "range", 248, v6, v7);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  return 0;
}

uint64_t re::SkeletalPoseRigMappingData::jointTransformStartAndEndIndex(re::SkeletalPoseRigMappingData *this, unsigned int a2)
{
  if (*(this + 30) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(this + 31) + 8 * a2;
}

void *re::DynamicArray<void re::SkeletalPoseRigMappingData::rebuildMappingData<re::MeshAsset>(re::SkeletalPoseDefinitionAsset const&,re::RigRuntimeData const&,re::MeshAsset const&,re::MeshNameMap const&,unsigned long)::UniqueSkinningRigPose>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<void re::SkeletalPoseRigMappingData::rebuildMappingData<re::MeshAsset>(re::SkeletalPoseDefinitionAsset const&,re::RigRuntimeData const&,re::MeshAsset const&,re::MeshNameMap const&,unsigned long)::UniqueSkinningRigPose>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 58)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 64, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = a2 << 6;
          result = (*(*result + 32))(result, a2 << 6, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + (v9 << 6);
        v11 = v7;
        do
        {
          v12 = *v8;
          *(v11 + 2) = *(v8 + 8);
          *v11 = v12;
          v11[6] = 0;
          v11[3] = 0;
          v11[4] = 0;
          v11[2] = 0;
          *(v11 + 10) = 0;
          v13 = *(v8 + 16);
          v14 = *(v8 + 24);
          v15 = v8 + 16;
          v11[2] = v13;
          v11[3] = v14;
          *v15 = 0;
          *(v15 + 8) = 0;
          v16 = v11[4];
          v11[4] = *(v15 + 16);
          *(v15 + 16) = v16;
          v17 = v11[6];
          v11[6] = *(v15 + 32);
          *(v15 + 32) = v17;
          ++*(v15 + 24);
          ++*(v11 + 10);
          *(v11 + 14) = *(v15 + 40);
          re::DynamicArray<unsigned long>::deinit(v15);
          v11 += 8;
          v8 = v15 + 48;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::FixedArray<unsigned int>::copy(void *result, uint64_t a2, const void *a3, uint64_t a4)
{
  if (__CFADD__(a2, a4))
  {
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 362, result[1], a2, a4);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  if ((a2 + a4) > result[1])
  {
LABEL_9:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Too much data to copy.", "requiredSize <= m_size", "copy", 363);
    result = _os_crash();
    __break(1u);
    return result;
  }

  if (a4)
  {
    v4 = (result[2] + 4 * a2);

    return memmove(v4, a3, 4 * a4);
  }

  return result;
}

BOOL re::AudioAssetLoadStrategy_Base::createRuntimeData(uint64_t a1, re::AudioFileAsset *a2, uint64_t a3, uint64_t a4, AudioSceneService *a5)
{
  v9 = *(*(a2 + 1) + 16);
  if (v9)
  {

LABEL_4:
    re::AudioFileAsset::completeLoad(a2, a5);
    return 1;
  }

  v10 = *(*(a2 + 1) + 200);

  if (v10)
  {
    goto LABEL_4;
  }

  if (a3)
  {
    if ((*(*a1 + 48))(a1, a3, a2))
    {
      goto LABEL_4;
    }

    return 0;
  }

  if ((*(*(*(a2 + 1) + 48) + 64))())
  {
    if ((*(*a1 + 56))(a1, *(a2 + 1) + 48, a2))
    {
      goto LABEL_4;
    }

    return 0;
  }

  v12 = re::AudioFileAsset::sharableFileBuffer(a2);

  if (v12)
  {
    goto LABEL_4;
  }

  v13 = re::AudioFileAsset::audioFile(a2);

  if (v13)
  {
    goto LABEL_4;
  }

  v15 = *re::audioLogObjects(v14);
  result = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *v16 = 0;
    _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "[CoreRE] [AudioFileAssetLoader/Base] Failed to create runtime data with audio file.", v16, 2u);
    return 0;
  }

  return result;
}

BOOL re::AudioAssetLoadStrategy_Base::createRuntimeDataWithAudioFile(re::AudioAssetLoadStrategy_Base *this, id **a2)
{
  v2 = *a2[1];
  v3 = v2 != 0;

  return v3;
}

void re::AudioAssetLoadStrategy_Base::resourceDidUpdate(uint64_t a1, uint64_t a2, id *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = *a3;
  v7[0] = 0;
  v7[32] = 0;
  re::AudioAssetLoadStrategy_Base::resourceDidUpdate(v6, a2, &v6, v4, v5, v7);
}

void re::AudioAssetLoadStrategy_Base::resourceDidUpdate(int a1, uint64_t a2, id *this, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v114 = *MEMORY[0x1E69E9840];
  re::AudioPayload::dynamicCast(this, &v104);
  if (v104)
  {
    v9 = v104;
    *(a2 + 60) = [v9 inputMode];

    v10 = v104;
    [v10 referenceLevel];
    *(a2 + 56) = v11;

    v12 = v104;
    *(a2 + 104) = [v12 loopCount];

    v13 = v104;
    *(a2 + 108) = [v13 streaming];

    v14 = v104;
    *(a2 + 112) = [v14 normalizationMode];

    v15 = v104;
    *(a2 + 116) = [v15 calibrationMode];

    v16 = v104;
    [v16 calibrationLevel];
    *(a2 + 120) = v17;

    v18 = v104;
    [v18 targetLUFS];
    *(a2 + 128) = v19;

    v20 = [v104 mixGroupName];
    LOBYTE(v18) = v20 == 0;

    if ((v18 & 1) == 0)
    {
      v21 = v104;
      v22 = [v21 mixGroupName];
      v23 = v22;
      v24 = [v22 UTF8String];
      buf[0] = 1;
      *&v106[4] = *&v103[0];
      *&v106[28] = *(&v103[1] + 1);
      *&v106[12] = *(v103 + 8);
      memset(v103, 0, sizeof(v103));
      re::Optional<re::DynamicString>::operator=(a2 + 64, buf);
      if (buf[0] == 1 && *&v106[4])
      {
        if (v106[12])
        {
          (*(**&v106[4] + 40))();
        }

        memset(&v106[4], 0, 32);
      }

      if (*&v103[0])
      {
        if (BYTE8(v103[0]))
        {
          (*(**&v103[0] + 40))();
        }

        memset(v103, 0, sizeof(v103));
      }
    }

    v25 = [v104 pcmBuffer];
    v26 = v25 == 0;

    if (v26)
    {
      v44 = [v104 filePath];
      v45 = v44 == 0;

      if (v45)
      {
        v64 = [v104 fileBuffer];
        v65 = v64 == 0;

        if (v65)
        {
          v34 = *re::audioLogObjects(v66);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_DEFAULT, "[CoreRE] [AudioFileAssetLoader/Base] Cannot update asset from payload that contains neither buffer nor file path.", buf, 2u);
          }

          goto LABEL_72;
        }

        v67 = v104;
        v68 = [v67 fileBuffer];
        objc_storeStrong((*(a2 + 8) + 208), v68);

        v69 = v104;
        v70 = [v69 bufferSize];
        *(*(a2 + 8) + 40) = [v70 unsignedLongLongValue];

        v71 = v104;
        v72 = [v71 length];
        *(a2 + 144) = [v72 longLongValue];

        v73 = v104;
        v74 = [v73 format];
        objc_storeStrong((*(a2 + 8) + 8), v74);

        v34 = *re::audioLogObjects(v75);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v102 = *(*(a2 + 8) + 208);
          v76 = *(*(a2 + 8) + 40);
          v77 = re::AudioFileAsset::audioFormat(a2);
          v78 = *(a2 + 144);
          v79 = *(a2 + 60);
          v80 = *(a2 + 56);
          v81 = *(a2 + 104);
          v82 = (a2 + 80);
          if (!*(a2 + 64))
          {
            v82 = v103 + 8;
          }

          if (*v82)
          {
            if (*(a2 + 64))
            {
              v90 = (a2 + 88);
            }

            else
            {
              v90 = &v103[1];
            }

            v83 = *v90;
          }

          else if (*(a2 + 64))
          {
            v83 = (a2 + 81);
          }

          else
          {
            v83 = v103 + 9;
          }

          v91 = *(a2 + 108);
          v92 = *(a2 + 112);
          v93 = *(a2 + 116);
          v94 = *(a2 + 120);
          v95 = *(a2 + 128);
          *buf = 138415362;
          *v106 = v102;
          *&v106[8] = 2048;
          *&v106[10] = v76;
          *&v106[18] = 2112;
          *&v106[20] = v77;
          *&v106[28] = 2048;
          *&v106[30] = v78;
          *&v106[38] = 1024;
          *&v106[40] = v79;
          *&v106[44] = 2048;
          *v107 = v80;
          *&v107[8] = 1024;
          *&v107[10] = v81;
          *v108 = 2080;
          *&v108[2] = v83;
          *&v108[10] = 1024;
          *&v108[12] = v91;
          *&v108[16] = 1024;
          *v109 = v92;
          *&v109[4] = 1024;
          *&v109[6] = v93;
          v110 = 2048;
          v111 = v94;
          v112 = 2048;
          v113 = v95;
          _os_log_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_DEFAULT, "[CoreRE] [AudioFileAssetLoader/Base] Recovered file buffer asset with buffer=%@, bufferSize=%zu, format=%@, length=%llu, inputMode=%d, referenceLevel=%0.2f, loopCount=%d, mixGroupName=%s, streaming=%d, normalizationMode=%d, calibrationMode=%d, calibrationLevel=%0.2f, targetLUFS=%0.2f from audio payload update.", buf, 0x70u);
          if (*&v103[0] && (BYTE8(v103[0]) & 1) != 0)
          {
            (*(**&v103[0] + 40))();
          }
        }
      }

      else
      {
        v46 = v104;
        v47 = [v46 filePath];
        v48 = v47;
        v49 = re::AudioFileAsset::prepareToLoadFrom(a2, [v47 UTF8String], 0);

        if (!v49)
        {
          v51 = *re::audioLogObjects(v50);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            v97 = v104;
            v98 = [v97 filePath];
            v99 = v98;
            v100 = [v98 UTF8String];
            *buf = 136315138;
            *v106 = v100;
            _os_log_error_impl(&dword_1E1C61000, v51, OS_LOG_TYPE_ERROR, "Failed to load audio file at '%s'", buf, 0xCu);
          }
        }

        v34 = *re::audioLogObjects(v50);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v52 = *(*(a2 + 8) + 32);
          v53 = *(a2 + 60);
          v54 = *(a2 + 56);
          v55 = *(a2 + 104);
          v56 = (a2 + 80);
          if (!*(a2 + 64))
          {
            v56 = v103 + 8;
          }

          if (*v56)
          {
            if (*(a2 + 64))
            {
              v84 = (a2 + 88);
            }

            else
            {
              v84 = &v103[1];
            }

            v57 = *v84;
          }

          else if (*(a2 + 64))
          {
            v57 = (a2 + 81);
          }

          else
          {
            v57 = v103 + 9;
          }

          v85 = *(a2 + 108);
          v86 = *(a2 + 112);
          v87 = *(a2 + 116);
          v88 = *(a2 + 120);
          v89 = *(a2 + 128);
          *buf = 138414594;
          *v106 = v52;
          *&v106[8] = 1024;
          *&v106[10] = v53;
          *&v106[14] = 2048;
          *&v106[16] = v54;
          *&v106[24] = 1024;
          *&v106[26] = v55;
          *&v106[30] = 2080;
          *&v106[32] = v57;
          *&v106[40] = 1024;
          *&v106[42] = v85;
          *v107 = 1024;
          *&v107[2] = v86;
          *&v107[6] = 1024;
          *&v107[8] = v87;
          *&v107[12] = 2048;
          *v108 = v88;
          *&v108[8] = 2048;
          *&v108[10] = v89;
          _os_log_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_DEFAULT, "[CoreRE] [AudioFileAssetLoader/Base] Recovered file asset with path=%@, inputMode=%d, referenceLevel=%0.2f, loopCount=%d, mixGroupName=%s, streaming=%d, normalizationMode=%d, calibrationMode=%d, calibrationLevel=%0.2f, targetLUFS=%0.2f from audio payload update.", buf, 0x52u);
          if (*&v103[0] && (BYTE8(v103[0]) & 1) != 0)
          {
            (*(**&v103[0] + 40))();
          }
        }
      }
    }

    else
    {
      v27 = v104;
      v28 = [v27 pcmBuffer];
      objc_storeStrong((*(a2 + 8) + 200), v28);

      v29 = v104;
      v30 = [v29 format];
      objc_storeStrong((*(a2 + 8) + 8), v30);

      v31 = v104;
      v32 = [v31 length];
      *(a2 + 144) = [v32 longLongValue];

      v34 = *re::audioLogObjects(v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = *(*(a2 + 8) + 200);
        v36 = re::AudioFileAsset::audioFormat(a2);
        v37 = *(a2 + 144);
        v38 = *(a2 + 60);
        v39 = *(a2 + 56);
        v40 = *(a2 + 104);
        v41 = (a2 + 80);
        if (!*(a2 + 64))
        {
          v41 = v103 + 8;
        }

        if (*v41)
        {
          if (*(a2 + 64))
          {
            v58 = (a2 + 88);
          }

          else
          {
            v58 = &v103[1];
          }

          v42 = *v58;
        }

        else if (*(a2 + 64))
        {
          v42 = (a2 + 81);
        }

        else
        {
          v42 = v103 + 9;
        }

        v59 = *(a2 + 108);
        v60 = *(a2 + 112);
        v61 = *(a2 + 116);
        v62 = *(a2 + 120);
        v63 = *(a2 + 128);
        *buf = 138415106;
        *v106 = v35;
        *&v106[8] = 2112;
        *&v106[10] = v36;
        *&v106[18] = 2048;
        *&v106[20] = v37;
        *&v106[28] = 1024;
        *&v106[30] = v38;
        *&v106[34] = 2048;
        *&v106[36] = v39;
        *&v106[44] = 1024;
        *v107 = v40;
        *&v107[4] = 2080;
        *&v107[6] = v42;
        *v108 = 1024;
        *&v108[2] = v59;
        *&v108[6] = 1024;
        *&v108[8] = v60;
        *&v108[12] = 1024;
        *&v108[14] = v61;
        *v109 = 2048;
        *&v109[2] = v62;
        v110 = 2048;
        v111 = v63;
        _os_log_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_DEFAULT, "[CoreRE] [AudioFileAssetLoader/Base] Recovered pcm buffer asset with buffer=%@, format=%@, length=%llu, inputMode=%d, referenceLevel=%0.2f, loopCount=%d, mixGroupName=%s, streaming=%d, normalizationMode=%d, calibrationMode=%d, calibrationLevel=%0.2f, targetLUFS=%0.2f from audio payload update.", buf, 0x66u);
        if (*&v103[0] && (BYTE8(v103[0]) & 1) != 0)
        {
          (*(**&v103[0] + 40))();
        }
      }
    }

LABEL_72:
    if (*(a6 + 32) == 1)
    {
      v96 = *(a6 + 24);
      if (!v96)
      {
        v101 = std::__throw_bad_function_call[abi:nn200100]();

        _Unwind_Resume(v101);
      }

      (*(*v96 + 48))(v96);
    }

    re::AudioFileAsset::markAsIncompleteLoad(a2);
    goto LABEL_76;
  }

  v43 = *re::audioLogObjects(v8);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v43, OS_LOG_TYPE_ERROR, "[CoreRE] [AudioFileAssetLoader/Base] Cannot update shared AudioFileAsset with bad arguments.", buf, 2u);
  }

LABEL_76:
}

BOOL re::AudioAssetLoadStrategy_Base::createRuntimeDataWithRealityFile(re::AudioAssetLoadStrategy_Base *this, re::SeekableInputStream *a2, id **a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = (*(*a2 + 72))(a2);
  if (v5)
  {
    v6 = v5;
    v7 = (*(*this + 72))(this, v5, a3, 1);
    v8 = v7;
    v9 = v7 != 0;
    if (v7)
    {
      re::AudioAssetLoadStrategy_Base::setAudioFileFormat(v7, a3, v7);
      v10 = (*(*v6 + 112))(&v28, v6);
      if (v28)
      {
        v26[0] = v28;
        v27 = v29;
        v11 = (*(*v6 + 64))(v6);
        v12 = re::AudioAssetLoadStrategy_Base::generateURLFromQueryItems(v11, v26, v11);
        v13 = *re::audioLogObjects(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [(re *)v12 path];
          v15 = [(re *)v12 query];
          *buf = 138412546;
          v31 = v14;
          v32 = 2112;
          v33 = v15;
          _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "[CoreRE] [AudioFileAssetLoader/Base] Loading reality file from url: %@ with query: %@", buf, 0x16u);
        }

        objc_storeStrong(a3[1], v8);
        v16 = MEMORY[0x1E695DFF8];
        v17 = [(re *)v12 path];
        v18 = [v16 fileURLWithPath:v17];
        objc_storeStrong(a3[1] + 4, v18);

        v19 = [(re *)v12 query];
        objc_storeStrong(a3[1] + 23, v19);
      }

      else
      {
        v21 = *re::audioLogObjects(v10);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, "[CoreRE] [AudioFileAssetLoader/Base] Cannot read reality file as NSURL without file path and offset. Attempting to load asset blob.", buf, 2u);
        }

        if (*(a3 + 108) != 1 || ([(re::AudioAssetLoadStrategy_Base *)v8 processingFormat], v22 = objc_claimAutoreleasedReturnValue(), v24 = re::AudioAssetLoadStrategy_Base::streamSeekableInput(v6, a3, v8, v22, v23), v22, (v24 & 1) == 0))
        {
          (*(*this + 64))(this, v6, a3);
        }
      }
    }
  }

  else
  {
    v20 = *re::audioLogObjects(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v28) = 0;
      _os_log_error_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_ERROR, "[CoreRE] [AudioAssetLoadStrategy_Base] Could not create a detached seekable stream.", &v28, 2u);
    }

    return 0;
  }

  return v9;
}

void re::AudioAssetLoadStrategy_Base::setAudioFileFormat(re::AudioAssetLoadStrategy_Base *this, re::AudioFileAsset *a2, AVAudioFile *a3)
{
  v12 = a3;
  v4 = [(AVAudioFile *)v12 processingFormat];
  v5 = [(AVAudioFile *)v12 fileFormat];
  [v5 sampleRate];
  v7 = v6;

  if (v7 != 48000.0)
  {
    v8 = [objc_alloc(MEMORY[0x1E69583D0]) initWithLayoutTag:*(a2 + 34)];
    v9 = objc_alloc(MEMORY[0x1E6958418]);
    v10 = [(AVAudioFile *)v12 fileFormat];
    [v10 sampleRate];
    v11 = [v9 initStandardFormatWithSampleRate:v8 channelLayout:?];

    v4 = v11;
  }

  objc_storeStrong((*(a2 + 1) + 8), v4);
}

uint64_t re::AudioAssetLoadStrategy_Base::streamSeekableInput(re::AudioAssetLoadStrategy_Base *this, re::SeekableInputStream *a2, re::AudioFileAsset *a3, _REAudioFile *a4, AVAudioFormat *a5)
{
  v8 = a3;
  v9 = a4;
  objc_storeStrong((*(a2 + 1) + 8), a4);
  *(a2 + 18) = [(re::AudioFileAsset *)v8 getReaderFileLength];
  SharableFileBuffer = re::AudioFileAsset::createSharableFileBuffer(a2, this);

  return SharableFileBuffer;
}

id re::AudioAssetLoadStrategy_Base::generateURLFromQueryItems(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(a2 + 8)];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%zu", *(a2 + 16)];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%zu", a3];
  v8 = [MEMORY[0x1E696AF20] componentsWithString:v5];
  v9 = [MEMORY[0x1E696AF60] queryItemWithName:@"start" value:v6];
  v10 = [MEMORY[0x1E696AF60] queryItemWithName:@"length" value:v7];
  v14[0] = v9;
  v14[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  [v8 setQueryItems:v11];

  v12 = [v8 URL];

  return v12;
}

void sub_1E20A1B08(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

uint64_t re::AudioAssetLoadStrategy_Base::createRuntimeDataWithUSDZ(re::AudioAssetLoadStrategy_Base *this, re::SeekableInputStream *a2, re::AudioFileAsset *a3)
{
  *(*(a3 + 1) + 160) = (*(*(*(a3 + 1) + 48) + 40))();
  v6 = (*(*this + 72))(this, a2, a3, 0);
  v7 = v6;
  if (v6)
  {
    if (*(a3 + 108) == 1 && ([(re::AudioFileAsset *)v6 processingFormat], v8 = objc_claimAutoreleasedReturnValue(), v10 = re::AudioAssetLoadStrategy_Base::streamSeekableInput(a2, a3, v7, v8, v9), v8, (v10 & 1) != 0))
    {
      v11 = 1;
    }

    else
    {
      v11 = (*(*this + 64))(this, a2, a3);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id re::AudioAssetLoadStrategy_Base::createREAudioFile(re::AudioAssetLoadStrategy_Base *this, re::SeekableInputStream *a2, re::AudioFileAsset *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [_REAudioFile audioFileWithStream:a2 ownsStream:?];
  v5 = v4;
  if (!v4)
  {
    v6 = *re::audioLogObjects(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = *(*(a3 + 1) + 24);
      v14 = 134217984;
      v15 = v12;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "[CoreRE] [AudioFileAssetLoader/Base] Failed to load embedded audio asset(%llu) due to nil audio file", &v14, 0xCu);
    }

    goto LABEL_8;
  }

  v6 = [v4 processingFormat];
  v8 = re::audio::layoutTagFromFormat(v6, v7);
  *(a3 + 34) = v8;
  if (v8 == -65536)
  {
    v9 = *re::audioLogObjects(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = *(*(a3 + 1) + 24);
      v14 = 134217984;
      v15 = v13;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "[CoreRE] [AudioFileAssetLoader/Base] Failed to load embedded audio asset(%llu) due to missing channel layout.", &v14, 0xCu);
    }

LABEL_8:
    v10 = 0;
    goto LABEL_10;
  }

  v10 = v5;
LABEL_10:

  return v10;
}

BOOL re::AudioAssetLoadStrategy_Base::decodeSeekableStreamIntoPCMBuffer(re::AudioAssetLoadStrategy_Base *this, re::SeekableInputStream *a2, re::AudioFileAsset *a3)
{
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v10 = 0;
  v11 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  re::audio::AudioFileAssetReader::init(&v10, a2, 0);
  v5 = re::audio::AudioFileAssetReader::readFromData(&v10);
  v6 = v5;
  if (v5)
  {
    v7 = [v5 format];
    objc_storeStrong((*(a3 + 1) + 8), v7);

    *(a3 + 18) = [v6 frameLength];
    objc_storeStrong((*(a3 + 1) + 16), v6);
    re::audio::pcmBufferSize(v6, v8);
    if (re::internal::enableSignposts(0, 0))
    {
      goto LABEL_7;
    }
  }

  else if (re::internal::enableSignposts(0, 0))
  {
LABEL_7:
    (*(*a2 + 64))(a2);
    kdebug_trace();
  }

  re::audio::AudioFileAssetReader::~AudioFileAssetReader(&v10);
  return v6 != 0;
}

void sub_1E20A2034(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  re::audio::AudioFileAssetReader::~AudioFileAssetReader(va);
  _Unwind_Resume(a1);
}

uint64_t *re::SceneAsset::assetType(re::SceneAsset *this)
{
  {
    re::SceneAsset::assetType(void)::type = "Scene";
    qword_1EE1C7538 = 0;
    re::AssetType::generateCompiledExtension(&re::SceneAsset::assetType(void)::type);
  }

  return &re::SceneAsset::assetType(void)::type;
}

void re::ecs2::ComponentHandleAssetData::release(re::DynamicString **this, re::Allocator *a2)
{
  if (this[1])
  {
    v4 = re::ecs2::ComponentTypeRegistry::instance(this);
    v5 = re::ecs2::ComponentTypeRegistry::componentTypeWithHash(v4, *this);
    if (v5)
    {
      if (*(this + 16) == 1)
      {

        this[1] = 0;
      }

      else
      {
        v6 = (*(*v5 + 48))(v5);
        v7 = this[1];

        re::introspectionReleasePointer(v7, a2, 0, v6);
      }
    }
  }
}

void re::ecs2::EntityAssetData::~EntityAssetData(re::ecs2::EntityAssetData *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    v3 = *(this + 8);
    v4 = 24 * v2;
    do
    {
      re::ecs2::ComponentHandleAssetData::release(v3, *(this + 4));
      *v3 = 0;
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
      v3 += 24;
      v4 -= 24;
    }

    while (v4);
  }

  re::DynamicArray<re::ecs2::EntityAssetData>::deinit(this + 72);
  re::DynamicArray<unsigned long>::deinit(this + 32);
  re::StringID::destroyString((this + 8));
}

re *re::internal::destroyPersistent<re::SceneAsset>(re *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::DynamicArray<re::ecs2::EntityAssetData>::deinit(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t re::SceneAssetLoader::introspectionType(re::SceneAssetLoader *this)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::SceneAsset>(BOOL)::info = re::internal::getOrCreateInfo("SceneAsset", re::allocInfo_SceneAsset, re::initInfo_SceneAsset, &re::internal::introspectionInfoStorage<re::SceneAsset>, 0);
      v1 = &unk_1EE187000;
    }
  }

  return v1[244];
}

void *re::SceneAssetLoader::findRegistrationDependencies@<X0>(re::SceneAssetLoader *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  result = re::DynamicArray<re::AssetHandle>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::ecs2::allocInfo_ComponentHandleAssetData(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE198D50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE198D50))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE198E80, "ComponentHandleAssetData");
    __cxa_guard_release(&qword_1EE198D50);
  }

  return &unk_1EE198E80;
}

void re::ecs2::initInfo_ComponentHandleAssetData(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v14[0] = 0xE7C2365AE903F5AALL;
  v14[1] = "ComponentHandleAssetData";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE198D58, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE198D58);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::IntrospectionInfo<re::ecs2::Component *>::get(1);
      v9 = re::introspect_uint64_t(1, v8);
      v10 = (*(*v6 + 32))(v6, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "component";
      *(v10 + 16) = v7;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0x800000001;
      *(v10 + 40) = 2;
      *(v10 + 48) = v9;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE198DC8 = v10;
      v11 = re::introspectionAllocator(v10);
      v12 = (*(*v11 + 32))(v11, 8, 4);
      *v12 = 0x100000004;
      qword_1EE198DD0 = v12;
      __cxa_guard_release(&qword_1EE198D58);
    }
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE198DC8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ComponentHandleAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ComponentHandleAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ComponentHandleAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ComponentHandleAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

uint64_t *re::IntrospectionInfo<re::ecs2::Component *>::get(int a1)
{
  {
    re::IntrospectionPointer::IntrospectionPointer(&re::IntrospectionInfo<re::ecs2::Component *>::get(BOOL)::info);
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::ecs2::Component *>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::ecs2::Component *>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v14);
    v2 = re::IntrospectionInfo<re::ecs2::Component *>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v14);
    if (v2)
    {
      return &re::IntrospectionInfo<re::ecs2::Component *>::get(BOOL)::info;
    }

    v4 = re::introspectionSharedMutex(v3);
    std::__shared_mutex_base::lock(v4);
    if (re::IntrospectionInfo<re::ecs2::Component *>::get(BOOL)::isInitialized)
    {
LABEL_22:
      v11 = re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(v11);
      return &re::IntrospectionInfo<re::ecs2::Component *>::get(BOOL)::info;
    }
  }

  re::IntrospectionInfo<re::ecs2::Component *>::get(BOOL)::isInitialized = 1;
  v6 = re::ecs2::introspect_Component(1);
  ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::ecs2::Component *>::get(BOOL)::info, 0);
  qword_1EE1861D0 = 0x800000001;
  dword_1EE1861D8 = 8;
  word_1EE1861DC = 0;
  *&xmmword_1EE1861E0 = 0;
  *(&xmmword_1EE1861E0 + 1) = 0xFFFFFFFFLL;
  re::IntrospectionInfo<re::ecs2::Component *>::get(BOOL)::info = &unk_1F5CBD2C0;
  qword_1EE1861F0 = v6;
  unk_1EE1861F8 = 0;
  re::IntrospectionRegistry::add(v7, v8);
  re::getPrettyTypeName(&re::IntrospectionInfo<re::ecs2::Component *>::get(BOOL)::info, &v14);
  if (BYTE8(v14))
  {
    v9 = v15;
  }

  else
  {
    v9 = &v14 + 9;
  }

  if (v14 && (BYTE8(v14) & 1) != 0)
  {
    (*(*v14 + 40))();
  }

  if (v16 >> 1 == 94623636 && (__s1 == "char*" || !strcmp(__s1, "char*")))
  {
    v10 = v14;
  }

  else
  {
    v14 = *(v6 + 32);
    v10 = v13;
  }

  xmmword_1EE1861E0 = v10;
  if (v16)
  {
    if (v16)
    {
    }
  }

  if ((a1 & 1) == 0)
  {
    goto LABEL_22;
  }

  return &re::IntrospectionInfo<re::ecs2::Component *>::get(BOOL)::info;
}

void re::internal::defaultConstruct<re::ecs2::ComponentHandleAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
}

uint64_t re::internal::defaultConstructV2<re::ecs2::ComponentHandleAssetData>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

void *re::ecs2::allocInfo_EntityAssetData(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE198D68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE198D68))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE198F10, "EntityAssetData");
    __cxa_guard_release(&qword_1EE198D68);
  }

  return &unk_1EE198F10;
}

void re::ecs2::initInfo_EntityAssetData(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v23[0] = 0x1BEB5EC469A7F3EELL;
  v23[1] = "EntityAssetData";
  if (v23[0])
  {
    if (v23[0])
    {
    }
  }

  *(this + 2) = v24;
  if ((atomic_load_explicit(&qword_1EE198D70, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE198D70);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_uint64_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "id";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE198DD8 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::StringID>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "name";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE198DE0 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_BOOL(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "isSelfActive";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x1800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE198DE8 = v17;
      v18 = re::introspectionAllocator(v17);
      re::IntrospectionInfo<re::DynamicArray<re::ecs2::ComponentHandleAssetData>>::get(v18);
      v19 = (*(*v18 + 32))(v18, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "components";
      *(v19 + 16) = &qword_1EE198E00;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x2000000004;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE198DF0 = v19;
      v20 = re::introspectionAllocator(v19);
      re::IntrospectionInfo<re::DynamicArray<re::ecs2::EntityAssetData>>::get();
      v21 = (*(*v20 + 32))(v20, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "children";
      *(v21 + 16) = &qword_1EE198E40;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x4800000005;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE198DF8 = v21;
      __cxa_guard_release(&qword_1EE198D70);
    }
  }

  *(this + 2) = 0x7000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE198DD8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::EntityAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::EntityAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::EntityAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::EntityAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v22 = v24;
}

void re::IntrospectionInfo<re::DynamicArray<re::ecs2::ComponentHandleAssetData>>::get(re::ecs2 *a1)
{
  if ((atomic_load_explicit(&qword_1EE198DB8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE198DB8);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE198E00);
      qword_1EE198E00 = &unk_1F5CC79D8;
      __cxa_guard_release(&qword_1EE198DB8);
    }
  }

  if ((_MergedGlobals_89 & 1) == 0)
  {
    v1 = qword_1EE198D60;
    if (qword_1EE198D60 || (v1 = re::ecs2::allocInfo_ComponentHandleAssetData(a1), qword_1EE198D60 = v1, re::ecs2::initInfo_ComponentHandleAssetData(v1, v2), (_MergedGlobals_89 & 1) == 0))
    {
      _MergedGlobals_89 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE198E00, 0);
      qword_1EE198E10 = 0x2800000003;
      dword_1EE198E18 = v3;
      word_1EE198E1C = 0;
      *&xmmword_1EE198E20 = 0;
      *(&xmmword_1EE198E20 + 1) = 0xFFFFFFFFLL;
      qword_1EE198E30 = v1;
      unk_1EE198E38 = 0;
      qword_1EE198E00 = &unk_1F5CC79D8;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE198E00, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ComponentHandleAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ComponentHandleAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ComponentHandleAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ComponentHandleAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ComponentHandleAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ComponentHandleAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ComponentHandleAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ComponentHandleAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE198E20 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::ecs2::EntityAssetData>>::get(re::ecs2 *a1)
{
  if ((atomic_load_explicit(&qword_1EE198DC0, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE198DC0);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE198E40);
      qword_1EE198E40 = &unk_1F5CC7A70;
      __cxa_guard_release(&qword_1EE198DC0);
    }
  }

  if ((byte_1EE198D49 & 1) == 0)
  {
    v1 = qword_1EE198D78;
    if (qword_1EE198D78 || (v1 = re::ecs2::allocInfo_EntityAssetData(a1), qword_1EE198D78 = v1, re::ecs2::initInfo_EntityAssetData(v1, v2), (byte_1EE198D49 & 1) == 0))
    {
      byte_1EE198D49 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE198E40, 0);
      qword_1EE198E50 = 0x2800000003;
      dword_1EE198E58 = v3;
      word_1EE198E5C = 0;
      *&xmmword_1EE198E60 = 0;
      *(&xmmword_1EE198E60 + 1) = 0xFFFFFFFFLL;
      qword_1EE198E70 = v1;
      unk_1EE198E78 = 0;
      qword_1EE198E40 = &unk_1F5CC7A70;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE198E40, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE198E60 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::ecs2::EntityAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = &str_67;
  *(a3 + 24) = 1;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 32) = 0;
  *(a3 + 56) = 0;
  *(a3 + 104) = 0;
  result = 0.0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::EntityAssetData>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = &str_67;
  *(a1 + 24) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 104) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  return result;
}

void *re::ecs2::allocInfo_SceneAssetData(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE198D80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE198D80))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE198FA0, "SceneAssetData");
    __cxa_guard_release(&qword_1EE198D80);
  }

  return &unk_1EE198FA0;
}

void re::ecs2::initInfo_SceneAssetData(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v9[0] = 0x79292AE943720F5CLL;
  v9[1] = "SceneAssetData";
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  *(this + 2) = v10;
  if ((atomic_load_explicit(&qword_1EE198D90, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE198D90);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<re::DynamicArray<re::ecs2::EntityAssetData>>::get(v6);
      v7 = (*(*v6 + 32))(v6, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "entities";
      *(v7 + 16) = &qword_1EE198E40;
      *(v7 + 24) = 0;
      *(v7 + 32) = 1;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE198D88 = v7;
      __cxa_guard_release(&qword_1EE198D90);
    }
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE198D88;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SceneAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SceneAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SceneAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SceneAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v8 = v10;
}

void re::internal::defaultConstruct<re::ecs2::SceneAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
}

uint64_t re::internal::defaultConstructV2<re::ecs2::SceneAssetData>(uint64_t result)
{
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 24) = 0;
  return result;
}

void *re::allocInfo_SceneAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE198DA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE198DA0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE199030, "SceneAsset");
    __cxa_guard_release(&qword_1EE198DA0);
  }

  return &unk_1EE199030;
}

void re::initInfo_SceneAsset(re *this, re::IntrospectionBase *a2)
{
  v12[0] = 0x103693E25C6BC8;
  v12[1] = "SceneAsset";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE198DB0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE198DB0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE198D98;
      if (!qword_1EE198D98)
      {
        v8 = re::ecs2::allocInfo_SceneAssetData(v6);
        qword_1EE198D98 = v8;
        re::ecs2::initInfo_SceneAssetData(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "sceneAssetData";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 1;
      *(v10 + 40) = 0;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE198DA8 = v10;
      __cxa_guard_release(&qword_1EE198DB0);
    }
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE198DA8;
  *(this + 9) = re::internal::defaultConstruct<re::SceneAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SceneAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::SceneAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::SceneAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v11 = v13;
}

void re::internal::defaultConstruct<re::SceneAsset>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
}

uint64_t re::internal::defaultConstructV2<re::SceneAsset>(uint64_t result)
{
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 24) = 0;
  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::ComponentHandleAssetData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::ComponentHandleAssetData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::ComponentHandleAssetData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::ComponentHandleAssetData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::ComponentHandleAssetData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::ecs2::ComponentHandleAssetData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::ComponentHandleAssetData>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v10 = 0uLL;
  v11 = 0;
  re::DynamicArray<re::BufferView>::add(this, &v10);
  v8 = (*(this + 4) + 24 * *(this + 2) - 24);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<re::ecs2::ComponentHandleAssetData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 24 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 24 * a3;
}

void *re::DynamicArray<re::ecs2::ComponentHandleAssetData>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 24 * v5;
      if ((24 * v5) >= 1)
      {
        v7 = v3[4] + 24 * v4;
        v8 = v6 / 0x18 + 1;
        do
        {
          *v7 = 0;
          *(v7 + 8) = 0;
          *(v7 + 16) = 0;
          v7 += 24;
          --v8;
        }

        while (v8 > 1);
      }
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ComponentHandleAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ComponentHandleAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::ecs2::ComponentHandleAssetData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 24 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 24;
        v11 -= 24;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ComponentHandleAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 24 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ComponentHandleAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ComponentHandleAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 24 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ComponentHandleAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::EntityAssetData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::EntityAssetData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::EntityAssetData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::EntityAssetData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::ecs2::EntityAssetData>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::ecs2::EntityAssetData>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::ecs2::EntityAssetData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::ecs2::EntityAssetData>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::ecs2::EntityAssetData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::EntityAssetData>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4)
{
  v17 = 0;
  v18 = 0;
  v15 = 0u;
  v16 = 0u;
  v10 = 0u;
  v12 = 1;
  v11 = &str_67;
  v13 = 0uLL;
  v14 = 0uLL;
  re::DynamicArray<re::ecs2::EntityAssetData>::add(a4, &v10);
  re::ecs2::EntityAssetData::~EntityAssetData(&v10);
  v8 = (*(a4 + 32) + 112 * *(a4 + 16) - 112);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<re::ecs2::EntityAssetData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 112 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 112 * a3;
}

void re::DynamicArray<re::ecs2::EntityAssetData>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 112 * a2;
    v9 = a2;
    do
    {
      re::ecs2::EntityAssetData::~EntityAssetData((*(a1 + 32) + v8));
      ++v9;
      v8 += 112;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::ecs2::EntityAssetData>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 112 * v4;
      do
      {
        v7 = *(a1 + 32) + v6;
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = &str_67;
        *(v7 + 24) = 1;
        *(v7 + 40) = 0;
        *(v7 + 48) = 0;
        *(v7 + 32) = 0;
        *(v7 + 56) = 0;
        *(v7 + 104) = 0;
        *(v7 + 64) = 0uLL;
        *(v7 + 80) = 0uLL;
        v6 += 112;
        *(v7 + 96) = 0;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::ecs2::EntityAssetData>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::ecs2::EntityAssetData>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::ecs2::EntityAssetData>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::ecs2::EntityAssetData>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::ecs2::EntityAssetData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 112 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 112;
        v11 -= 112;
      }

      while (v11);
    }
  }
}

re::ecs2::EntityAssetData *re::DynamicArray<re::ecs2::EntityAssetData>::clear(re::ecs2::EntityAssetData *result)
{
  v1 = result;
  v2 = *(result + 2);
  *(result + 2) = 0;
  if (v2)
  {
    result = *(result + 4);
    v3 = 112 * v2;
    do
    {
      re::ecs2::EntityAssetData::~EntityAssetData(result);
      result = (v4 + 112);
      v3 -= 112;
    }

    while (v3);
  }

  ++*(v1 + 6);
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 112 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 112 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

uint64_t *re::RigGraphAsset::assetType(re::RigGraphAsset *this)
{
  {
    re::RigGraphAsset::assetType(void)::type = "RigGraph";
    qword_1EE1C7158 = 0;
    re::AssetType::generateCompiledExtension(&re::RigGraphAsset::assetType(void)::type);
  }

  return &re::RigGraphAsset::assetType(void)::type;
}

uint64_t *re::RigGraphAsset::createAutoRetargetBipedToBipedRigGraphAsset@<X0>(re::RigGraphAsset *this@<X0>, const re::ecs2::Entity *a2@<X1>, unint64_t a3@<X2>, const int *a4@<X4>, uint64_t a5@<X3>, uint64_t a6@<X8>)
{
  v177 = *MEMORY[0x1E69E9840];
  v13 = re::globalAllocators(this);
  v14 = (*(*v13[2] + 32))(v13[2], 160, 8);
  *v14 = 0u;
  v14[1] = 0u;
  v14[2] = 0u;
  v14[3] = 0u;
  v14[4] = 0u;
  v14[5] = 0u;
  v14[6] = 0u;
  v14[7] = 0u;
  v14[8] = 0u;
  v14[9] = 0u;
  *&v162[0] = &unk_1F5CC7C80;
  *(&v162[1] + 1) = v162;
  v148 = v14;
  v150 = v149;
  v149[0] = &unk_1F5CC7C80;
  std::__function::__value_func<void ()(re::RigGraphAsset *)>::~__value_func[abi:nn200100](v162);
  if (!*(this + 31))
  {
    *&v162[0] = 0;
    v80 = "Source entity must have a skeletal pose";
LABEL_126:
    v81 = 39;
LABEL_127:
    re::internal::makeError(v80, v81, v162);
    v82 = *&v162[0];
    *a6 = 0;
    *(a6 + 8) = v82;
    return std::unique_ptr<re::RigGraphAsset,std::function<void ()(re::RigGraphAsset*)>>::~unique_ptr[abi:nn200100](&v148);
  }

  v15 = *(a2 + 24);
  if (!v15 || !*(a2 + 31))
  {
    *&v162[0] = 0;
    v80 = "Target entity must have a skeletal mesh";
    goto LABEL_126;
  }

  v16 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>((v15 + 32));
  if (!v16)
  {
    *&v162[0] = 0;
    v80 = "Invalid skeletal mesh";
    v81 = 21;
    goto LABEL_127;
  }

  v100 = v16;
  v17 = v148;
  re::DynamicArray<re::RigGraphDefinition>::setCapacity(v17, 0);
  ++*(v17 + 24);
  v99 = (v17 + 40);
  re::DynamicArray<re::MeshRigGraphIndex>::setCapacity((v17 + 40), 0);
  ++*(v17 + 64);
  re::DynamicArray<re::RigGraphBoundInputParameterData>::setCapacity((v17 + 80), 0);
  ++*(v17 + 104);
  v101 = *(v100 + 312);
  if (v101)
  {
    v96 = this;
    v97 = a2;
    v95 = (v17 + 80);
    v18 = 0;
    v98 = a6;
    do
    {
      v104 = v18;
      v127 = 0xF97D88DA606B5F84;
      v128 = "retargetRigGraph";
      v127 = 0;
      v128 = &str_67;
      if (a3)
      {
        v124[0] = 0;
        v124[1] = &str_67;
        v20 = v124;
        v123[0] = 0;
        v123[1] = &str_67;
        v22 = v123;
        v23 = v124;
        v24 = v123;
      }

      else
      {
        v126[0] = 0;
        v126[1] = &str_67;
        v20 = v126;
        v125[0] = 0;
        v125[1] = &str_67;
        v22 = v125;
        v23 = v126;
        v24 = v125;
      }

      re::internal::RigGraphDefinitionBuilder::addNode(v162, v23, v24);
      re::StringID::destroyString(v22);
      re::StringID::destroyString(v20);
      *&v122.var0 = 0;
      v122.var1 = &str_67;
      *&v142.var0 = 0;
      v142.var1 = &str_67;
      v143 = 0;
      v144 = &str_67;
      v121[0] = 0;
      re::internal::RigGraphDefinitionBuilder::addGraphInput(v162, &v122, &v142, v121);
      if (v143)
      {
        if (v143)
        {
        }
      }

      v144 = &str_67;
      v143 = 0;
      if (*&v142.var0)
      {
        if (*&v142.var0)
        {
        }
      }

      v142.var1 = &str_67;
      *&v142.var0 = 0;
      if (*&v122.var0)
      {
        if (*&v122.var0)
        {
        }
      }

      *&v122.var0 = 0;
      v122.var1 = &str_67;
      *&v120.var0 = 0;
      v120.var1 = &str_67;
      *&v136.var0 = 0;
      v136.var1 = &str_67;
      v137 = 0;
      v138 = &str_67;
      v119[0] = 0;
      re::internal::RigGraphDefinitionBuilder::addGraphInput(v162, &v120, &v136, v119);
      if (v137)
      {
        if (v137)
        {
        }
      }

      v138 = &str_67;
      v137 = 0;
      if (*&v136.var0)
      {
        if (*&v136.var0)
        {
        }
      }

      v136.var1 = &str_67;
      *&v136.var0 = 0;
      if (*&v120.var0)
      {
        if (*&v120.var0)
        {
        }
      }

      *&v120.var0 = 0;
      v120.var1 = &str_67;
      *&v118.var0 = 0;
      v118.var1 = &str_67;
      *&v130.var0 = 0;
      v130.var1 = &str_67;
      v131 = 0;
      v132 = &str_67;
      v117[0] = 0;
      re::internal::RigGraphDefinitionBuilder::addGraphInput(v162, &v118, &v130, v117);
      if (v131)
      {
        if (v131)
        {
        }
      }

      v132 = &str_67;
      v131 = 0;
      if (*&v130.var0)
      {
        if (*&v130.var0)
        {
        }
      }

      v130.var1 = &str_67;
      *&v130.var0 = 0;
      if (*&v118.var0)
      {
        if (*&v118.var0)
        {
        }
      }

      *&v118.var0 = 0;
      v118.var1 = &str_67;
      *&v116.var0 = 0;
      v116.var1 = &str_67;
      *v176 = 0;
      *&v176[8] = &str_67;
      *&v176[16] = 0;
      *&v176[24] = &str_67;
      v115[0] = 0;
      re::internal::RigGraphDefinitionBuilder::addGraphInput(v162, &v116, v176, v115);
      if (v176[16])
      {
        if (v176[16])
        {
        }
      }

      *&v176[16] = 0;
      *&v176[24] = &str_67;
      if (v176[0])
      {
        if (v176[0])
        {
        }
      }

      *v176 = 0;
      *&v176[8] = &str_67;
      if (*&v116.var0)
      {
        if (*&v116.var0)
        {
        }
      }

      *&v116.var0 = 0;
      v116.var1 = &str_67;
      *&v114.var0 = 0;
      v114.var1 = &str_67;
      *&v111.var0 = 0;
      v111.var1 = &str_67;
      v112 = 0;
      v113 = &str_67;
      v110[0] = 0;
      re::internal::RigGraphDefinitionBuilder::addGraphOutput(v162, &v114, &v111, v110);
      if (v112)
      {
        if (v112)
        {
        }
      }

      v112 = 0;
      v113 = &str_67;
      if (*&v111.var0)
      {
        if (*&v111.var0)
        {
        }
      }

      *&v111.var0 = 0;
      v111.var1 = &str_67;
      if (*&v114.var0)
      {
        if (*&v114.var0)
        {
        }
      }

      *&v114.var0 = 0;
      v114.var1 = &str_67;
      if (a3)
      {
        memset(&v151[8], 0, 24);
        re::DynamicString::setCapacity(v151, 100 * a3);
        v42 = 1;
        re::DynamicString::append(v151, "{", 1uLL);
        v43 = 0;
        do
        {
          re::DynamicString::appendf(v151, ".value[%u]={.jointIndex=%d,.rotationOffset=[%f,%f,%f,%f]}", v42 - 1, *(a5 + 4 * v43), COERCE_FLOAT(*&a4[4 * v43]), COERCE_FLOAT(HIDWORD(*&a4[4 * v43])), COERCE_FLOAT(*&a4[4 * v43 + 2]), COERCE_FLOAT(HIDWORD(*&a4[4 * v43])));
          if (a3 - 1 <= v43)
          {
            v44 = 125;
          }

          else
          {
            v44 = 44;
          }

          __src = v44;
          v45 = re::DynamicString::append(v151, &__src, 1uLL);
          v43 = v42++;
        }

        while (v43 < a3);
        *&v107.var0 = 0;
        v107.var1 = &str_67;
        v108 = 0;
        v109 = &str_67;
        if (v151[8])
        {
          v48 = *&v151[16];
        }

        else
        {
          v48 = &v151[9];
        }

        *&v106.var0 = 0;
        v106.var1 = &str_67;
        re::internal::RigGraphDefinitionBuilder::addGraphInputValue(v162, &v107, &v106);
        if (*&v106.var0)
        {
          if (*&v106.var0)
          {
          }
        }

        *&v106.var0 = 0;
        v106.var1 = &str_67;
        if (v108)
        {
          if (v108)
          {
          }
        }

        v108 = 0;
        v109 = &str_67;
        if (*&v107.var0)
        {
          if (*&v107.var0)
          {
          }
        }

        *&v107.var0 = 0;
        v107.var1 = &str_67;
        if (*v151 && (v151[8] & 1) != 0)
        {
          (*(**v151 + 40))();
        }
      }

      *v151 = *&v162[0];
      v50 = *(v162 + 8);
      *&v162[0] = 0;
      *(&v162[0] + 1) = &str_67;
      *&v151[8] = v50;
      memset(&v162[1], 0, 24);
      *&v151[24] = *(&v162[1] + 8);
      ++DWORD2(v162[2]);
      LODWORD(v152) = 1;
      v153[0] = v163;
      v153[1] = v164;
      v163 = 0u;
      v164 = 0u;
      v155[0] = v166;
      v166 = 0u;
      v155[1] = v167;
      v167 = 0u;
      ++v165;
      ++v168;
      v154 = 1;
      v156 = 1;
      v157[0] = v169;
      v157[1] = v170;
      v169 = 0u;
      v170 = 0u;
      v161 = v175;
      v159[0] = v172;
      v172 = 0u;
      v159[1] = v173;
      v173 = 0u;
      v175 = 0;
      ++v171;
      ++v174;
      v158 = 1;
      v160 = 1;
      re::DynamicArray<re::RigGraphDefinition>::add(v17, v151);
      re::DynamicArray<re::RigGraphInputValue>::deinit(v159 + 8);
      re::DynamicArray<re::RigGraphConnection>::deinit(v157 + 1);
      re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v155 + 8);
      re::DynamicArray<re::RigGraphParameterProxy>::deinit(v153 + 8);
      v51 = re::DynamicArray<re::RigGraphParameterProxy>::deinit(&v151[16]);
      if (v151[0])
      {
        if (v151[0])
        {
        }
      }

      re::DynamicArray<re::RigGraphInputValue>::deinit(&v172 + 8);
      re::DynamicArray<re::RigGraphConnection>::deinit(&v169 + 1);
      re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v166 + 8);
      re::DynamicArray<re::RigGraphParameterProxy>::deinit(&v163 + 8);
      v52 = re::DynamicArray<re::RigGraphParameterProxy>::deinit(&v162[1]);
      if (v162[0])
      {
        if (v162[0])
        {
        }
      }

      a6 = (v104 + 1);
      v18 = a6;
    }

    while (a6 != v101);
    v53 = *(v100 + 76);
    if (v53)
    {
      v54 = *(v100 + 312);
      v55 = *(v100 + 78);
      v102 = &v55[v53];
      v103 = *(v100 + 79);
      while (1)
      {
        v56 = re::DataArray<re::MeshModel>::tryGet(v103 + 8, *v55);
        if (!v56)
        {
          *&v162[0] = 0;
          re::internal::makeError("Unable to get mesh model", 24, v162);
          v84 = *&v162[0];
          a6 = v98;
          goto LABEL_187;
        }

        v57 = v56;
        v105 = v55;
        v58 = *(v56 + 56);
        if (v58)
        {
          break;
        }

LABEL_105:
        v55 = v105 + 1;
        if (v105 + 1 == v102)
        {
          goto LABEL_106;
        }
      }

      v59 = 0;
      v60 = 4;
      v61 = 488;
      while (1)
      {
        v62 = *(v57 + 56);
        if (v62 <= v59)
        {
          break;
        }

        v63 = *(v57 + 224);
        if (v63)
        {
          if (*(v63 + 8) > v59)
          {
            v64 = *(v63 + 16);
            v65 = *(v64 + v60);
            if (v65 < v54)
            {
              a6 = *(v57 + 64);
              v66 = re::MeshAsset::skeletonAtIndex(v100, *(v64 + v60));
              re::StringID::StringID(v151, v66);
              LOBYTE(v162[0]) = 2;
              re::StringID::StringID((v162 + 8), v57);
              re::StringID::StringID((&v162[1] + 8), (a6 + v61));
              re::StringID::StringID((&v162[2] + 8), v151);
              DWORD2(v163) = v65;
              v67 = re::DynamicArray<re::MeshRigGraphIndex>::add(v99, v162);
              if (BYTE8(v162[2]))
              {
                if (BYTE8(v162[2]))
                {
                }
              }

              *&v163 = &str_67;
              *(&v162[2] + 1) = 0;
              if (BYTE8(v162[1]))
              {
                if (BYTE8(v162[1]))
                {
                }
              }

              *&v162[2] = &str_67;
              *(&v162[1] + 1) = 0;
              if (BYTE8(v162[0]))
              {
                if (BYTE8(v162[0]))
                {
                }
              }

              if (v151[0])
              {
                if (v151[0])
                {
                }
              }
            }
          }
        }

        ++v59;
        v61 += 544;
        v60 += 88;
        if (v58 == v59)
        {
          goto LABEL_105;
        }
      }

      *&v142.var0 = 0;
      v163 = 0u;
      v164 = 0u;
      memset(v162, 0, sizeof(v162));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v151 = 136315906;
      *&v151[4] = "operator[]";
      *&v151[12] = 1024;
      *&v151[14] = 476;
      *&v151[18] = 2048;
      *&v151[20] = v59;
      *&v151[28] = 2048;
      *&v151[30] = v62;
      _os_log_send_and_compose_impl();
      v93 = _os_crash_msg();
      __break(1u);
      goto LABEL_194;
    }

LABEL_106:
    *&v151[8] = 0;
    *v151 = 0;
    *&v151[16] = 1;
    v152 = 0;
    *&v151[24] = 0;
    *&v151[32] = 0;
    LODWORD(v153[0]) = 0;
    v142.var1 = 0;
    *&v142.var0 = 0;
    LODWORD(v143) = 1;
    v146 = 0;
    v144 = 0;
    v145 = 0;
    v147 = 0;
    re::internal::RetargetRigGraphAssetBuilder::appendParentNamesAndIds(v96, v151, &v142);
    v136.var1 = 0;
    *&v136.var0 = 0;
    LODWORD(v137) = 1;
    v140 = 0;
    v138 = 0;
    v139 = 0;
    v141 = 0;
    v130.var1 = 0;
    *&v130.var0 = 0;
    LODWORD(v131) = 1;
    v134 = 0;
    v132 = 0;
    v133 = 0;
    v135 = 0;
    re::internal::RetargetRigGraphAssetBuilder::appendParentNamesAndIds(v97, &v136, &v130);
    if (v146)
    {
      v68 = 0;
      v69 = -1;
      while (1)
      {
        v70 = re::BucketArray<unsigned long long,5ul>::operator[](&v142, v68);
        if (v134)
        {
          v71 = 0;
          var1 = v130.var1;
          v73 = v133;
          if (v131)
          {
            v73 = &v132;
          }

          while (1)
          {
            if (v130.var1 <= (v71 / 5))
            {
              *&v111.var0 = 0;
              v163 = 0u;
              v164 = 0u;
              memset(v162, 0, sizeof(v162));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v176 = 136315906;
              *&v176[4] = "operator[]";
              *&v176[12] = 1024;
              *&v176[14] = 866;
              *&v176[18] = 2048;
              *&v176[20] = v71 / 5;
              *&v176[28] = 2048;
              *&v176[30] = var1;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }

            if (*(v73[v71 / 5] + v71 + -5 * (v71 / 5)) == *v70)
            {
              break;
            }

            if (v134 == ++v71)
            {
              goto LABEL_117;
            }
          }
        }

        else
        {
          v71 = 0;
        }

        if (v71 != v134)
        {
          break;
        }

LABEL_117:
        ++v68;
        ++v69;
        if (v68 >= v146)
        {
          goto LABEL_118;
        }
      }

      if (v151[16])
      {
        v85 = &v151[24];
      }

      else
      {
        v85 = *&v151[32];
      }

      *&v162[0] = v85;
      *(&v162[0] + 1) = *&v151[8];
      *&v162[1] = v68;
      for (; v71; --v71)
      {
        re::DynamicString::appendf(v176, "relative[parent].");
      }

      if (v68)
      {
        do
        {
          v86 = *(re::BucketSlice<re::StringSlice,5ul>::operator[](v162, v69) + 8);
          v87 = re::BucketSlice<re::StringSlice,5ul>::operator[](v162, v69);
          re::DynamicString::appendf(v176, "%.*s.", v86, *v87);
          --v69;
        }

        while (v69 != -1);
      }

      a6 = v98;
      v76 = v95;
    }

    else
    {
LABEL_118:
      v74 = *&v151[32];
      v75 = v152;
      if (v151[16])
      {
        v74 = &v151[24];
      }

      *&v162[0] = v74;
      *(&v162[0] + 1) = *&v151[8];
      *&v162[1] = v152;
      v76 = v95;
      if (v75)
      {
        v77 = v75 - 1;
        do
        {
          v78 = *(re::BucketSlice<re::StringSlice,5ul>::operator[](v162, v77) + 8);
          v79 = re::BucketSlice<re::StringSlice,5ul>::operator[](v162, v77);
          re::DynamicString::appendf(v176, "%.*s.", v78, *v79);
          --v77;
        }

        while (v77 != -1);
      }

      a6 = v98;
    }

    re::BucketArray<unsigned long long,5ul>::deinit(&v130);
    if (*&v130.var0 && (v131 & 1) == 0)
    {
      (*(**&v130.var0 + 40))();
    }

    re::BucketArray<re::StringSlice,5ul>::deinit(&v136);
    if (*&v136.var0 && (v137 & 1) == 0)
    {
      (*(**&v136.var0 + 40))();
    }

    re::BucketArray<unsigned long long,5ul>::deinit(&v142);
    if (*&v142.var0 && (v143 & 1) == 0)
    {
      (*(**&v142.var0 + 40))();
    }

    re::BucketArray<re::StringSlice,5ul>::deinit(v151);
    if (*v151 && (v151[16] & 1) == 0)
    {
      (*(**v151 + 40))();
    }

    if (v176[8])
    {
      v88 = *&v176[8] >> 1;
    }

    else
    {
      v88 = v176[8] >> 1;
    }

    if (v88)
    {
      *&v162[0] = 0xFE85F7454D5070B4;
      *(&v162[0] + 1) = "sourceHierarchy";
      re::DynamicString::operator+(v176, "SkeletalPose.skeletalPoses[0]", v151);
      re::StringID::StringID(&v162[1], v151);
      LODWORD(v162[2]) = 0;
      v89 = re::DynamicArray<re::RigGraphBoundInputParameterData>::add(v76, v162);
      if (v162[1])
      {
        if (v162[1])
        {
        }
      }

      *(&v162[1] + 1) = &str_67;
      *&v162[1] = 0;
      if (v162[0])
      {
        if (v162[0])
        {
        }
      }

      *(&v162[0] + 1) = &str_67;
      *&v162[0] = 0;
      if (*v151 && (v151[8] & 1) != 0)
      {
        (*(**v151 + 40))();
      }

      *&v162[0] = 0xEFC647C93FEC3E86;
      *(&v162[0] + 1) = "sourceModelToWorldTransform";
      re::DynamicString::operator+(v176, "Transform.transform", v151);
      re::StringID::StringID(&v162[1], v151);
      LODWORD(v162[2]) = 0;
      v90 = re::DynamicArray<re::RigGraphBoundInputParameterData>::add(v76, v162);
      if (v162[1])
      {
        if (v162[1])
        {
        }
      }

      v84 = &str_67;
      *(&v162[1] + 1) = &str_67;
      *&v162[1] = 0;
      if (v162[0])
      {
        if (v162[0])
        {
        }
      }

      *(&v162[0] + 1) = &str_67;
      *&v162[0] = 0;
      if (*v151 && (v151[8] & 1) != 0)
      {
        (*(**v151 + 40))();
      }

      *&v162[0] = 0x52855BF5A9F7771ALL;
      *(&v162[0] + 1) = "targetModelToWorldTransform";
      *&v162[1] = 0x7A8A31107D1B226;
      *(&v162[1] + 1) = "entity://Transform.transform";
      LODWORD(v162[2]) = 0;
      v91 = re::DynamicArray<re::RigGraphBoundInputParameterData>::add(v76, v162);
      if (v162[1])
      {
      }

      if (v162[0])
      {
      }
    }

    else
    {
      *&v162[0] = 0;
      re::internal::makeError("Unable to construct bind path to source entity", 46, v162);
      v84 = *&v162[0];
    }

    if (*v176 && (v176[8] & 1) != 0)
    {
      (*(**v176 + 40))();
    }

    if (v88)
    {
      v92 = v148;
      v93 = v150;
      v148 = 0;
      *&v162[0] = v92;
      if (v150)
      {
        if (v150 != v149)
        {
          v150 = 0;
          *a6 = 1;
          *&v162[2] = v93;
          *&v162[0] = 0;
          *(a6 + 8) = v92;
LABEL_191:
          if (v93 == (v162 + 8))
          {
LABEL_194:
            *(a6 + 40) = a6 + 16;
            (*(*v93 + 24))(v93);
            goto LABEL_195;
          }

          *(a6 + 40) = v93;
          *&v162[2] = 0;
LABEL_195:
          std::unique_ptr<re::RigGraphAsset,std::function<void ()(re::RigGraphAsset*)>>::~unique_ptr[abi:nn200100](v162);
          return std::unique_ptr<re::RigGraphAsset,std::function<void ()(re::RigGraphAsset*)>>::~unique_ptr[abi:nn200100](&v148);
        }

        *&v162[2] = v162 + 8;
        (*(*v150 + 24))();
        v94 = *&v162[0];
        v93 = *&v162[2];
        *a6 = 1;
        *&v162[0] = 0;
        *(a6 + 8) = v94;
        if (v93)
        {
          goto LABEL_191;
        }
      }

      else
      {
        *a6 = 1;
        *&v162[2] = 0;
        *&v162[0] = 0;
        *(a6 + 8) = v92;
      }

      *(a6 + 40) = 0;
      goto LABEL_195;
    }
  }

  else
  {
    *&v162[0] = 0;
    re::internal::makeError("No skeleton to build retarget for", 33, v162);
    v84 = *&v162[0];
  }

LABEL_187:
  *a6 = 0;
  *(a6 + 8) = v84;
  return std::unique_ptr<re::RigGraphAsset,std::function<void ()(re::RigGraphAsset*)>>::~unique_ptr[abi:nn200100](&v148);
}

void re::internal::makeError(char *cStr, uint64_t a2, CFErrorRef *a3)
{
  if (!*a3)
  {
    userInfoValues[3] = v3;
    userInfoValues[4] = v4;
    userInfoValues[0] = CFStringCreateWithCString(0, cStr, 0x8000100u);
    v6 = *MEMORY[0x1E695E620];
    *a3 = CFErrorCreateWithUserInfoKeysAndValues(0, @"RERigGraphAssetErrorDomain", 0, &v6, userInfoValues, 1);
    if (userInfoValues[0])
    {
      CFRelease(userInfoValues[0]);
    }
  }
}

uint64_t *re::RigGraphAsset::createIKSolverRigGraphAsset@<X0>(re::RigGraphAsset *this@<X0>, const re::MeshAsset *a2@<X1>, uint64_t a3@<X8>)
{
  v128 = *MEMORY[0x1E69E9840];
  v8 = re::globalAllocators(v7);
  v9 = (*(*v8[2] + 32))(v8[2], 160, 8);
  *v9 = 0u;
  v9[1] = 0u;
  v9[2] = 0u;
  v9[3] = 0u;
  v9[4] = 0u;
  v9[5] = 0u;
  v9[6] = 0u;
  v9[7] = 0u;
  v9[8] = 0u;
  v9[9] = 0u;
  *&v104[0] = &unk_1F5CC7D00;
  *(&v104[1] + 1) = v104;
  v120 = v119;
  v118 = v9;
  v119[0] = &unk_1F5CC7D00;
  std::__function::__value_func<void ()(re::RigGraphAsset *)>::~__value_func[abi:nn200100](v104);
  v10 = v118;
  re::DynamicArray<re::RigGraphDefinition>::setCapacity(v10, 0);
  v10 += 40;
  ++*(v10 - 16);
  re::DynamicArray<re::MeshRigGraphIndex>::setCapacity(v10, 0);
  ++*(v10 + 24);
  v49 = *(a2 + 32);
  if (!*(a2 + 32))
  {
    *&v104[0] = 0;
    re::internal::makeError("No solver to build execution graph for", 38, v104);
    v44 = *&v104[0];
    *a3 = 0;
    *(a3 + 8) = v44;
    return std::unique_ptr<re::RigGraphAsset,std::function<void ()(re::RigGraphAsset*)>>::~unique_ptr[abi:nn200100](&v118);
  }

  v47 = a3;
  v12 = 0;
  v52 = v118;
  v48 = a2;
  do
  {
    v13 = *(a2 + 4);
    if (v13 <= v12)
    {
      goto LABEL_122;
    }

    re::StringID::StringID(&v84, (*(a2 + 5) + 16 * v12));
    v13 = *(a2 + 10);
    if (v13 <= v12)
    {
      goto LABEL_123;
    }

    re::StringID::StringID(&v83, (*(a2 + 11) + 16 * v12));
    re::StringID::StringID(&v82, v104);
    if (*&v104[0] && (BYTE8(v104[0]) & 1) != 0)
    {
      (*(**&v104[0] + 40))();
    }

    re::StringID::StringID(&v81, v104);
    if (*&v104[0] && (BYTE8(v104[0]) & 1) != 0)
    {
      (*(**&v104[0] + 40))();
    }

    re::StringID::StringID(&v80, v104);
    if (*&v104[0] && (BYTE8(v104[0]) & 1) != 0)
    {
      (*(**&v104[0] + 40))();
    }

    re::StringID::StringID(&v79, v104);
    if (*&v104[0] && (BYTE8(v104[0]) & 1) != 0)
    {
      (*(**&v104[0] + 40))();
    }

    re::StringID::StringID(v78, &v82);
    if (v78[0])
    {
      if (v78[0])
      {
      }
    }

    v78[0] = 0;
    v78[1] = &str_67;
    re::StringID::StringID(v77, &v84);
    v75 = 0xA0DBB863F4861A8CLL;
    v76 = "IKParametersComponentSolverNode";
    re::internal::RigGraphDefinitionBuilder::addNode(v104, v77, &v75);
    if (v75)
    {
    }

    v75 = 0;
    v76 = &str_67;
    if (v77[0])
    {
      if (v77[0])
      {
      }
    }

    v77[0] = 0;
    v77[1] = &str_67;
    re::StringID::StringID(&v74, &v81);
    *&v71.var0 = 0x2789F63FDC13D20;
    v71.var1 = "inHierarchy";
    v72 = 0x3C4B6E418F8AFE4ALL;
    v73 = "RigHierarchy";
    v70[0] = 0;
    re::internal::RigGraphDefinitionBuilder::addGraphInput(v104, &v74, &v71, v70);
    v72 = 0;
    v73 = &str_67;
    *&v71.var0 = 0;
    v71.var1 = &str_67;
    if (*&v74.var0)
    {
      if (*&v74.var0)
      {
      }
    }

    *&v74.var0 = 0;
    v74.var1 = &str_67;
    re::StringID::StringID(&v69, &v80);
    *&v66.var0 = 0x11F4B3FE87F3AF2ALL;
    v66.var1 = "inSolverRootModelSpaceTransform";
    v67 = 164778;
    v68 = "SRT";
    v65[0] = 0;
    re::internal::RigGraphDefinitionBuilder::addGraphInput(v104, &v69, &v66, v65);
    v67 = 0;
    v68 = &str_67;
    *&v66.var0 = 0;
    v66.var1 = &str_67;
    if (*&v69.var0)
    {
      if (*&v69.var0)
      {
      }
    }

    *&v69.var0 = 0;
    v69.var1 = &str_67;
    *&v62.var0 = 0x4363292BB5C214F0;
    v62.var1 = "inSolverInstanceName";
    v63 = 0x128749862;
    v64 = "String";
    re::StringID::StringID(&v59, &v84);
    re::StringID::StringID(&v61, v93);
    if (*&v93[0] && (BYTE8(v93[0]) & 1) != 0)
    {
      (*(**&v93[0] + 40))();
    }

    re::internal::RigGraphDefinitionBuilder::addGraphInputValue(v104, &v62, &v61);
    if (*&v61.var0)
    {
      if (*&v61.var0)
      {
      }
    }

    *&v61.var0 = 0;
    v61.var1 = &str_67;
    if (v59)
    {
      if (v59)
      {
      }
    }

    v59 = 0;
    v60 = &str_67;
    v63 = 0;
    v64 = &str_67;
    *&v62.var0 = 0;
    v62.var1 = &str_67;
    re::StringID::StringID(&v58, &v79);
    *&v55.var0 = 0x51075CF812B0B50ELL;
    v55.var1 = "outHierarchy";
    v56 = 0x3C4B6E418F8AFE4ALL;
    v57 = "RigHierarchy";
    v54[0] = 0;
    re::internal::RigGraphDefinitionBuilder::addGraphOutput(v104, &v58, &v55, v54);
    v56 = 0;
    v57 = &str_67;
    *&v55.var0 = 0;
    v55.var1 = &str_67;
    if (*&v58.var0)
    {
      if (*&v58.var0)
      {
      }
    }

    *&v58.var0 = 0;
    v58.var1 = &str_67;
    *&v93[0] = *&v104[0];
    v20 = *(v104 + 8);
    *&v104[0] = 0;
    *(&v104[0] + 1) = &str_67;
    *(v93 + 8) = v20;
    memset(&v104[1], 0, 24);
    *(&v93[1] + 8) = *(&v104[1] + 8);
    ++DWORD2(v104[2]);
    DWORD2(v93[2]) = 1;
    v94 = v105;
    v95 = v106;
    v105 = 0u;
    v106 = 0u;
    v97[0] = v108;
    v108 = 0u;
    v97[1] = v109;
    v109 = 0u;
    ++v107;
    ++v110;
    v96 = 1;
    v98 = 1;
    v99[0] = v111;
    v99[1] = v112;
    v111 = 0u;
    v112 = 0u;
    v103 = v117;
    v101[0] = v114;
    v114 = 0u;
    v101[1] = v115;
    v115 = 0u;
    v117 = 0;
    ++v113;
    ++v116;
    v100 = 1;
    v102 = 1;
    re::DynamicArray<re::RigGraphDefinition>::add(v52, v93);
    re::DynamicArray<re::RigGraphInputValue>::deinit(v101 + 8);
    re::DynamicArray<re::RigGraphConnection>::deinit(v99 + 1);
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v97 + 8);
    re::DynamicArray<re::RigGraphParameterProxy>::deinit(&v94 + 8);
    v21 = re::DynamicArray<re::RigGraphParameterProxy>::deinit(&v93[1]);
    if (v93[0])
    {
      if (v93[0])
      {
      }
    }

    re::StringID::StringID(v93, &v80);
    *&v93[1] = 0x7A8A31107D1B226;
    *(&v93[1] + 1) = "entity://Transform.transform";
    LODWORD(v93[2]) = 0;
    v22 = re::DynamicArray<re::RigGraphBoundInputParameterData>::add((v52 + 80), v93);
    if (v93[1])
    {
      if (v93[1])
      {
      }
    }

    *(&v93[1] + 1) = &str_67;
    *&v93[1] = 0;
    if (v93[0])
    {
      if (v93[0])
      {
      }
    }

    v13 = *(this + 156);
    if (!v13)
    {
      goto LABEL_85;
    }

    v23 = *(this + 79);
    if (!v23)
    {
      goto LABEL_85;
    }

    v24 = *(this + 1264);
    v25 = v24 ? 608 : 32;
    if (!*(this + v25))
    {
      goto LABEL_85;
    }

    v26 = 0;
    v53 = v12;
    v50 = *(this + 79);
    do
    {
      v27 = *(this + 76);
      if (v27 <= v26)
      {
        *v121 = 0;
        v94 = 0u;
        v95 = 0u;
        memset(v93, 0, sizeof(v93));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v86 = 136315906;
        *&v86[4] = "operator[]";
        v87 = 1024;
        v88 = 797;
        v89 = 2048;
        *v90 = v26;
        *&v90[8] = 2048;
        *&v90[10] = v27;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_121:
        *v121 = 0;
        v94 = 0u;
        v95 = 0u;
        memset(v93, 0, sizeof(v93));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v86 = 136315906;
        *&v86[4] = "operator[]";
        v87 = 1024;
        v88 = 797;
        v89 = 2048;
        *v90 = v27;
        *&v90[8] = 2048;
        *&v90[10] = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_122:
        *v86 = 0;
        v105 = 0u;
        v106 = 0u;
        memset(v104, 0, sizeof(v104));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v93[0]) = 136315906;
        *(v93 + 4) = "operator[]";
        WORD6(v93[0]) = 1024;
        *(v93 + 14) = 476;
        WORD1(v93[1]) = 2048;
        *(&v93[1] + 4) = v12;
        WORD6(v93[1]) = 2048;
        *(&v93[1] + 14) = v13;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_123:
        *v86 = 0;
        v105 = 0u;
        v106 = 0u;
        memset(v104, 0, sizeof(v104));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v93[0]) = 136315906;
        *(v93 + 4) = "operator[]";
        WORD6(v93[0]) = 1024;
        *(v93 + 14) = 476;
        WORD1(v93[1]) = 2048;
        *(&v93[1] + 4) = v12;
        WORD6(v93[1]) = 2048;
        *(&v93[1] + 14) = v13;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v28 = *(*(this + 78) + 8 * v26);
      v27 = WORD1(v28);
      v11 = *(v23 + 24);
      if (v11 <= WORD1(v28))
      {
        goto LABEL_121;
      }

      v51 = v26;
      v29 = *(*(v23 + 40) + 16 * WORD1(v28)) + 864 * v28;
      v30 = *(v29 + 224);
      if (!v30)
      {
        goto LABEL_81;
      }

      v31 = *(v30 + 8);
      if (!v31)
      {
        goto LABEL_81;
      }

      v32 = 0;
      v33 = 488;
      v34 = 4;
      do
      {
        v35 = *(v29 + 224);
        if (v35 && *(v35 + 8) > v32)
        {
          v11 = *(*(v35 + 16) + v34);
        }

        else
        {
          v11 = 0xFFFFFFFFLL;
        }

        if (v13 > v11)
        {
          v86[0] = 2;
          re::StringID::StringID(&v86[8], v29);
          v36 = *(v29 + 56);
          if (v36 <= v32)
          {
            v85 = 0;
            v94 = 0u;
            v95 = 0u;
            memset(v93, 0, sizeof(v93));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v121 = 136315906;
            *&v121[4] = "operator[]";
            v122 = 1024;
            v123 = 476;
            v124 = 2048;
            v125 = v32;
            v126 = 2048;
            v127 = v36;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_112;
          }

          re::StringID::StringID(&v90[4], (*(v29 + 64) + v33));
          v37 = re::MeshAsset::skeletonAtIndex(this, v11);
          re::StringID::StringID(v91, v37);
          v92 = v53;
          v38 = re::DynamicArray<re::MeshRigGraphIndex>::add((v52 + 40), v86);
          if (v91[0])
          {
            if (v91[0])
            {
            }
          }

          v91[1] = &str_67;
          v91[0] = 0;
          if (v90[4])
          {
            if (v90[4])
            {
            }
          }

          *&v90[12] = &str_67;
          *&v90[4] = 0;
          if (v86[8])
          {
            if (v86[8])
            {
            }
          }
        }

        ++v32;
        v34 += 88;
        v33 += 544;
      }

      while (v31 != v32);
      v24 = *(this + 1264);
      v12 = v53;
LABEL_81:
      v23 = v50;
      v26 = v51 + 1;
      if (v24)
      {
        v39 = 608;
      }

      else
      {
        v39 = 32;
      }
    }

    while (v26 < *(this + v39));
LABEL_85:
    re::DynamicArray<re::RigGraphInputValue>::deinit(&v114 + 8);
    re::DynamicArray<re::RigGraphConnection>::deinit(&v111 + 1);
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v108 + 8);
    re::DynamicArray<re::RigGraphParameterProxy>::deinit(&v105 + 8);
    v40 = re::DynamicArray<re::RigGraphParameterProxy>::deinit(&v104[1]);
    if (v104[0])
    {
      if (v104[0])
      {
      }
    }

    a2 = v48;
    if (*&v79.var0)
    {
      if (*&v79.var0)
      {
      }
    }

    if (*&v80.var0)
    {
      if (*&v80.var0)
      {
      }
    }

    if (*&v81.var0)
    {
      if (*&v81.var0)
      {
      }
    }

    if (*&v82.var0)
    {
      if (*&v82.var0)
      {
      }
    }

    if (v83)
    {
      if (v83)
      {
      }
    }

    if (*&v84.var0)
    {
      if (*&v84.var0)
      {
      }
    }

    ++v12;
  }

  while (v12 != v49);
  v41 = v118;
  v42 = v120;
  v118 = 0;
  *&v104[0] = v41;
  if (!v120)
  {
LABEL_112:
    *v47 = 1;
    v43 = v47;
    *&v104[2] = 0;
    *&v104[0] = 0;
    *(v47 + 8) = v41;
LABEL_113:
    *(v43 + 40) = 0;
    goto LABEL_118;
  }

  if (v120 == v119)
  {
    *&v104[2] = v104 + 8;
    (*(*v120 + 24))();
    v45 = *&v104[0];
    v42 = *&v104[2];
    *v47 = 1;
    v43 = v47;
    *&v104[0] = 0;
    *(v47 + 8) = v45;
    if (v42)
    {
      goto LABEL_115;
    }

    goto LABEL_113;
  }

  v120 = 0;
  *v47 = 1;
  v43 = v47;
  *&v104[2] = v42;
  *&v104[0] = 0;
  *(v47 + 8) = v41;
LABEL_115:
  if (v42 == (v104 + 8))
  {
    *(v43 + 40) = v43 + 16;
    (*(*v42 + 24))(v42);
  }

  else
  {
    *(v43 + 40) = v42;
    *&v104[2] = 0;
  }

LABEL_118:
  std::unique_ptr<re::RigGraphAsset,std::function<void ()(re::RigGraphAsset*)>>::~unique_ptr[abi:nn200100](v104);
  return std::unique_ptr<re::RigGraphAsset,std::function<void ()(re::RigGraphAsset*)>>::~unique_ptr[abi:nn200100](&v118);
}

void re::internal::RigGraphDefinitionBuilder::addNode(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a2[1];
  v6[0] = *a2;
  v6[1] = v3;
  *a2 = 0;
  a2[1] = &str_67;
  v4 = a3[1];
  v7 = *a3;
  v8 = v4;
  *a3 = 0;
  a3[1] = &str_67;
  v5 = re::DynamicArray<re::RigGraphNodeDescription>::add((a1 + 96), v6);
  if (v7)
  {
    if (v7)
    {
    }
  }

  v7 = 0;
  v8 = &str_67;
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }
}

void re::internal::RigGraphDefinitionBuilder::addGraphInput(void *a1, const StringID *a2, const StringID *a3, unsigned __int8 *a4)
{
  *&v35.var0 = 7118140;
  v35.var1 = "this";
  re::StringID::StringID(&v36, a3 + 1);
  re::StringID::StringID(&v37, a2);
  re::StringID::invalid(&v38);
  re::StringID::invalid(&v39);
  re::StringID::StringID(&v30, (a1[16] + 32 * a1[14] - 32));
  re::StringID::StringID(&v31, a3 + 1);
  re::StringID::StringID(&v32, a3);
  re::StringID::invalid(&v33);
  re::StringID::invalid(&v34);
  re::StringID::StringID(v14, &v35);
  re::StringID::StringID(&v15, &v36);
  re::StringID::StringID(&v17, &v37);
  re::StringID::StringID(&v19, &v38);
  re::StringID::StringID(&v21, &v39);
  re::StringID::StringID(&v23, &v30);
  re::StringID::StringID(&v25, &v31);
  re::StringID::StringID(v27, &v32);
  re::StringID::StringID(v28, &v33);
  re::StringID::StringID(v29, &v34);
  v8 = re::DynamicArray<re::RigGraphConnection>::add(a1 + 17, v14);
  if (v29[0])
  {
    if (v29[0])
    {
    }
  }

  v29[0] = 0;
  v29[1] = &str_67;
  if (v28[0])
  {
    if (v28[0])
    {
    }
  }

  v28[0] = 0;
  v28[1] = &str_67;
  if (v27[0])
  {
    if (v27[0])
    {
    }
  }

  v27[0] = 0;
  v27[1] = &str_67;
  if (v25)
  {
    if (v25)
    {
    }
  }

  v25 = 0;
  v26 = &str_67;
  if (v23)
  {
    if (v23)
    {
    }
  }

  v23 = 0;
  v24 = &str_67;
  if (v21)
  {
    if (v21)
    {
    }
  }

  v21 = 0;
  v22 = &str_67;
  if (v19)
  {
    if (v19)
    {
    }
  }

  v19 = 0;
  v20 = &str_67;
  if (v17)
  {
    if (v17)
    {
    }
  }

  v17 = 0;
  v18 = &str_67;
  if (v15)
  {
    if (v15)
    {
    }
  }

  v15 = 0;
  v16 = &str_67;
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  re::StringID::StringID(v14, &v30);
  re::StringID::StringID(&v15, &v31);
  re::StringID::StringID(&v17, &v32);
  re::StringID::StringID(&v19, &v33);
  re::StringID::StringID(&v21, &v34);
  re::StringID::StringID(&v23, a2);
  v13[0] = 0;
  v13[1] = "";
  v10 = *a4;
  v9 = (a4 + 8);
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v13;
  }

  re::StringID::StringID(&v25, v11);
  v12 = re::DynamicArray<re::RigGraphParameterProxy>::add(a1 + 2, v14);
  if (v25)
  {
    if (v25)
    {
    }
  }

  v25 = 0;
  v26 = &str_67;
  if (v23)
  {
    if (v23)
    {
    }
  }

  v23 = 0;
  v24 = &str_67;
  if (v21)
  {
    if (v21)
    {
    }
  }

  v21 = 0;
  v22 = &str_67;
  if (v19)
  {
    if (v19)
    {
    }
  }

  v19 = 0;
  v20 = &str_67;
  if (v17)
  {
    if (v17)
    {
    }
  }

  v17 = 0;
  v18 = &str_67;
  if (v15)
  {
    if (v15)
    {
    }
  }

  v15 = 0;
  v16 = &str_67;
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  if (*&v34.var0)
  {
    if (*&v34.var0)
    {
    }
  }

  *&v34.var0 = 0;
  v34.var1 = &str_67;
  if (*&v33.var0)
  {
    if (*&v33.var0)
    {
    }
  }

  *&v33.var0 = 0;
  v33.var1 = &str_67;
  if (*&v32.var0)
  {
    if (*&v32.var0)
    {
    }
  }

  *&v32.var0 = 0;
  v32.var1 = &str_67;
  if (*&v31.var0)
  {
    if (*&v31.var0)
    {
    }
  }

  *&v31.var0 = 0;
  v31.var1 = &str_67;
  if (*&v30.var0)
  {
    if (*&v30.var0)
    {
    }
  }

  if (*&v39.var0)
  {
    if (*&v39.var0)
    {
    }
  }

  *&v39.var0 = 0;
  v39.var1 = &str_67;
  if (*&v38.var0)
  {
    if (*&v38.var0)
    {
    }
  }

  *&v38.var0 = 0;
  v38.var1 = &str_67;
  if (*&v37.var0)
  {
    if (*&v37.var0)
    {
    }
  }

  *&v37.var0 = 0;
  v37.var1 = &str_67;
  if (*&v36.var0)
  {
    if (*&v36.var0)
    {
    }
  }

  *&v36.var0 = 0;
  v36.var1 = &str_67;
  if (*&v35.var0)
  {
    if (*&v35.var0)
    {
    }
  }
}

void re::internal::RigGraphDefinitionBuilder::addGraphInputValue(void *a1, const StringID *a2, const StringID *a3)
{
  re::StringID::StringID(&v13, (a1[16] + 32 * a1[14] - 32));
  re::StringID::StringID(&v14, a2 + 1);
  re::StringID::StringID(&v15, a2);
  re::StringID::invalid(&v16);
  re::StringID::invalid(&v17);
  re::StringID::StringID(&v7, &v13);
  re::StringID::StringID(v8, &v14);
  re::StringID::StringID(v9, &v15);
  re::StringID::StringID(v10, &v16);
  re::StringID::StringID(v11, &v17);
  re::StringID::StringID(v12, a3);
  v6 = re::DynamicArray<re::RigGraphInputValue>::add(a1 + 22, &v7);
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  v12[0] = 0;
  v12[1] = &str_67;
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  v11[0] = 0;
  v11[1] = &str_67;
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  v10[0] = 0;
  v10[1] = &str_67;
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  v9[0] = 0;
  v9[1] = &str_67;
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  v8[0] = 0;
  v8[1] = &str_67;
  if (v7)
  {
    if (v7)
    {
    }
  }

  if (*&v17.var0)
  {
    if (*&v17.var0)
    {
    }
  }

  *&v17.var0 = 0;
  v17.var1 = &str_67;
  if (*&v16.var0)
  {
    if (*&v16.var0)
    {
    }
  }

  *&v16.var0 = 0;
  v16.var1 = &str_67;
  if (*&v15.var0)
  {
    if (*&v15.var0)
    {
    }
  }

  *&v15.var0 = 0;
  v15.var1 = &str_67;
  if (*&v14.var0)
  {
    if (*&v14.var0)
    {
    }
  }

  *&v14.var0 = 0;
  v14.var1 = &str_67;
  if (*&v13.var0)
  {
    if (*&v13.var0)
    {
    }
  }
}

void re::internal::RigGraphDefinitionBuilder::addGraphOutput(void *a1, const StringID *a2, const StringID *a3, unsigned __int8 *a4)
{
  *&v35.var0 = 7118140;
  v35.var1 = "this";
  re::StringID::StringID(&v36, a3 + 1);
  re::StringID::StringID(&v37, a2);
  re::StringID::invalid(&v38);
  re::StringID::invalid(&v39);
  re::StringID::StringID(&v30, (a1[16] + 32 * a1[14] - 32));
  re::StringID::StringID(&v31, a3 + 1);
  re::StringID::StringID(&v32, a3);
  re::StringID::invalid(&v33);
  re::StringID::invalid(&v34);
  re::StringID::StringID(v14, &v30);
  re::StringID::StringID(&v15, &v31);
  re::StringID::StringID(&v17, &v32);
  re::StringID::StringID(&v19, &v33);
  re::StringID::StringID(&v21, &v34);
  re::StringID::StringID(&v23, &v35);
  re::StringID::StringID(&v25, &v36);
  re::StringID::StringID(v27, &v37);
  re::StringID::StringID(v28, &v38);
  re::StringID::StringID(v29, &v39);
  v8 = re::DynamicArray<re::RigGraphConnection>::add(a1 + 17, v14);
  if (v29[0])
  {
    if (v29[0])
    {
    }
  }

  v29[0] = 0;
  v29[1] = &str_67;
  if (v28[0])
  {
    if (v28[0])
    {
    }
  }

  v28[0] = 0;
  v28[1] = &str_67;
  if (v27[0])
  {
    if (v27[0])
    {
    }
  }

  v27[0] = 0;
  v27[1] = &str_67;
  if (v25)
  {
    if (v25)
    {
    }
  }

  v25 = 0;
  v26 = &str_67;
  if (v23)
  {
    if (v23)
    {
    }
  }

  v23 = 0;
  v24 = &str_67;
  if (v21)
  {
    if (v21)
    {
    }
  }

  v21 = 0;
  v22 = &str_67;
  if (v19)
  {
    if (v19)
    {
    }
  }

  v19 = 0;
  v20 = &str_67;
  if (v17)
  {
    if (v17)
    {
    }
  }

  v17 = 0;
  v18 = &str_67;
  if (v15)
  {
    if (v15)
    {
    }
  }

  v15 = 0;
  v16 = &str_67;
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  re::StringID::StringID(v14, &v30);
  re::StringID::StringID(&v15, &v31);
  re::StringID::StringID(&v17, &v32);
  re::StringID::StringID(&v19, &v33);
  re::StringID::StringID(&v21, &v34);
  re::StringID::StringID(&v23, a2);
  v13[0] = 0;
  v13[1] = "";
  v10 = *a4;
  v9 = (a4 + 8);
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v13;
  }

  re::StringID::StringID(&v25, v11);
  v12 = re::DynamicArray<re::RigGraphParameterProxy>::add(a1 + 7, v14);
  if (v25)
  {
    if (v25)
    {
    }
  }

  v25 = 0;
  v26 = &str_67;
  if (v23)
  {
    if (v23)
    {
    }
  }

  v23 = 0;
  v24 = &str_67;
  if (v21)
  {
    if (v21)
    {
    }
  }

  v21 = 0;
  v22 = &str_67;
  if (v19)
  {
    if (v19)
    {
    }
  }

  v19 = 0;
  v20 = &str_67;
  if (v17)
  {
    if (v17)
    {
    }
  }

  v17 = 0;
  v18 = &str_67;
  if (v15)
  {
    if (v15)
    {
    }
  }

  v15 = 0;
  v16 = &str_67;
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  if (*&v34.var0)
  {
    if (*&v34.var0)
    {
    }
  }

  *&v34.var0 = 0;
  v34.var1 = &str_67;
  if (*&v33.var0)
  {
    if (*&v33.var0)
    {
    }
  }

  *&v33.var0 = 0;
  v33.var1 = &str_67;
  if (*&v32.var0)
  {
    if (*&v32.var0)
    {
    }
  }

  *&v32.var0 = 0;
  v32.var1 = &str_67;
  if (*&v31.var0)
  {
    if (*&v31.var0)
    {
    }
  }

  *&v31.var0 = 0;
  v31.var1 = &str_67;
  if (*&v30.var0)
  {
    if (*&v30.var0)
    {
    }
  }

  if (*&v39.var0)
  {
    if (*&v39.var0)
    {
    }
  }

  *&v39.var0 = 0;
  v39.var1 = &str_67;
  if (*&v38.var0)
  {
    if (*&v38.var0)
    {
    }
  }

  *&v38.var0 = 0;
  v38.var1 = &str_67;
  if (*&v37.var0)
  {
    if (*&v37.var0)
    {
    }
  }

  *&v37.var0 = 0;
  v37.var1 = &str_67;
  if (*&v36.var0)
  {
    if (*&v36.var0)
    {
    }
  }

  *&v36.var0 = 0;
  v36.var1 = &str_67;
  if (*&v35.var0)
  {
    if (*&v35.var0)
    {
    }
  }
}

uint64_t re::DynamicArray<re::RigGraphDefinition>::add(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*a1)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        re::DynamicArray<re::RigGraphDefinition>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::RigGraphDefinition>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  result = re::RigGraphDefinition::RigGraphDefinition(*(a1 + 32) + 216 * v5, a2);
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::RigGraphBoundInputParameterData>::add(_anonymous_namespace_ *result, uint64_t *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*result)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        result = re::DynamicArray<re::RigGraphBoundInputParameterData>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::RigGraphBoundInputParameterData>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  v11 = *(v3 + 4) + 40 * v5;
  v12 = *a2;
  *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v11 = *a2 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
  *(v11 + 8) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  v13 = a2[2];
  *(v11 + 16) = *(v11 + 16) & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
  *(v11 + 16) = a2[2] & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
  *(v11 + 24) = a2[3];
  a2[2] = 0;
  a2[3] = &str_67;
  *(v11 + 32) = *(a2 + 8);
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::MeshRigGraphIndex>::add(_anonymous_namespace_ *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*result)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        result = re::DynamicArray<re::MeshRigGraphIndex>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::MeshRigGraphIndex>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  v11 = *(v3 + 4) + (v5 << 6);
  *v11 = *a2;
  v12 = *(a2 + 8);
  *(v11 + 8) = *(v11 + 8) & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
  *(v11 + 8) = *(a2 + 8) & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
  *(v11 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = &str_67;
  v13 = *(a2 + 24);
  *(v11 + 24) = *(v11 + 24) & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
  *(v11 + 24) = *(a2 + 24) & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
  *(v11 + 32) = *(a2 + 32);
  *(a2 + 24) = 0;
  *(a2 + 32) = &str_67;
  v14 = *(a2 + 40);
  *(v11 + 40) = *(v11 + 40) & 0xFFFFFFFFFFFFFFFELL | v14 & 1;
  *(v11 + 40) = *(a2 + 40) & 0xFFFFFFFFFFFFFFFELL | v14 & 1;
  *(v11 + 48) = *(a2 + 48);
  *(a2 + 40) = 0;
  *(a2 + 48) = &str_67;
  *(v11 + 56) = *(a2 + 56);
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

uint64_t re::RigGraphAssetLoader::createRuntimeData(uint64_t a1, uint64_t a2)
{
  v98 = *MEMORY[0x1E69E9840];
  re::StackScratchAllocator::StackScratchAllocator(v49);
  v91[0] = 0;
  v91[1] = 0;
  v92 = 1;
  v94 = 0;
  v95 = 0;
  v93 = 0;
  v96 = 0;
  memset(v97, 0, sizeof(v97));
  re::RigEnvironment::init(v91, v49);
  v35[0] = 0;
  v35[1] = 0;
  v36 = 1;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  v40 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v44 = 0;
  v48 = 0;
  v45 = 0u;
  v46 = 0u;
  v47 = 0;
  re::RigGraphCompilation::init(v35, v49);
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = *(a2 + 32);
    v5 = 216 * v3;
    while (1)
    {
      *v55 = 0;
      v54 = 0u;
      v53 = 0u;
      *&v55[4] = 0x7FFFFFFFLL;
      v50 = v49;
      v51 = v4;
      v52 = v91;
      re::RigGraphDefinitionValidator::validate(&v50, v72);
      if ((v72[0] & 1) == 0)
      {
        break;
      }

      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v53);
      v4 += 216;
      v5 -= 216;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    v28 = *re::assetTypesLogObjects(v6);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      if (v74)
      {
        v34 = v75;
      }

      else
      {
        v34 = &v74 + 1;
      }

      *buf = 136315138;
      v90 = v34;
      _os_log_error_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_ERROR, "Could not validate RigGraphAssetDefinition: Error = %s", buf, 0xCu);
    }

    if (v72[0] & 1) == 0 && v73 && (v74)
    {
      (*(*v73 + 40))(v73, v75, v29, v30);
    }

    re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v53);
    v8 = 0;
  }

  else
  {
LABEL_5:
    v7 = *a2;
    v8 = 1;
    if (*a2)
    {
      v75 = 0;
      v74 = 0;
      v76 = 1;
      v79 = 0;
      v77 = 0;
      v78 = 0;
      v80 = 0;
      v83 = 0;
      v81 = 0;
      v82 = 0;
      v88 = 0;
      v85 = 0u;
      v86 = 0u;
      v84 = 0;
      v87 = 0;
      v72[1] = 0;
      v72[2] = 0;
      v72[0] = v7;
      LOBYTE(v73) = 0;
      re::RigGraphCompilation::init(&v74, v7);
      *(a2 + 120) = *a2;
      re::DynamicArray<re::RigGraphNode>::setCapacity((a2 + 120), 0);
      ++*(a2 + 144);
      if (*(a2 + 16))
      {
        v9 = 0;
        v10 = 0;
        do
        {
          v11 = re::RigGraphSystem::buildFromDefinition(*a2, (*(a2 + 32) + v9), &v50);
          v12 = *(a2 + 128);
          v13 = *(a2 + 136);
          if (v13 >= v12)
          {
            v14 = v13 + 1;
            if (v12 < v13 + 1)
            {
              if (*(a2 + 120))
              {
                if (v12)
                {
                  v15 = 2 * v12;
                }

                else
                {
                  v15 = 8;
                }

                if (v15 <= v14)
                {
                  v16 = v13 + 1;
                }

                else
                {
                  v16 = v15;
                }

                re::DynamicArray<re::RigGraphNode>::setCapacity((a2 + 120), v16);
              }

              else
              {
                re::DynamicArray<re::RigGraphNode>::setCapacity((a2 + 120), v14);
                ++*(a2 + 144);
              }
            }

            v13 = *(a2 + 136);
          }

          v17 = *(a2 + 152) + 200 * v13;
          *(v17 + 32) = 0;
          *(v17 + 8) = 0;
          *(v17 + 16) = 0;
          *v17 = 0;
          *(v17 + 24) = 0;
          *v17 = v50;
          v50 = 0;
          *(v17 + 8) = v51;
          v51 = 0;
          v18 = *(v17 + 16);
          *(v17 + 16) = v52;
          v52 = v18;
          v19 = *(v17 + 32);
          *(v17 + 32) = *(&v53 + 1);
          *(&v53 + 1) = v19;
          LODWORD(v53) = v53 + 1;
          ++*(v17 + 24);
          *(v17 + 72) = 0;
          *(v17 + 48) = 0;
          *(v17 + 56) = 0;
          *(v17 + 40) = 0;
          *(v17 + 64) = 0;
          *(v17 + 40) = v54;
          *&v54 = 0;
          *(v17 + 48) = *(&v54 + 1);
          *(&v54 + 1) = 0;
          v20 = *(v17 + 56);
          *(v17 + 56) = *v55;
          *v55 = v20;
          v21 = *(v17 + 72);
          *(v17 + 72) = v56;
          v56 = v21;
          ++*&v55[8];
          ++*(v17 + 64);
          *(v17 + 112) = 0;
          *(v17 + 88) = 0;
          *(v17 + 96) = 0;
          *(v17 + 80) = 0;
          *(v17 + 104) = 0;
          *(v17 + 80) = v57;
          v57 = 0;
          *(v17 + 88) = v58;
          v58 = 0;
          v22 = *(v17 + 96);
          *(v17 + 96) = v59;
          v59 = v22;
          v23 = *(v17 + 112);
          *(v17 + 112) = v61;
          v61 = v23;
          ++v60;
          ++*(v17 + 104);
          *(v17 + 152) = 0;
          *(v17 + 128) = 0;
          *(v17 + 136) = 0;
          *(v17 + 120) = 0;
          *(v17 + 144) = 0;
          *(v17 + 120) = v62;
          v62 = 0;
          *(v17 + 128) = v63;
          v63 = 0;
          v24 = *(v17 + 136);
          *(v17 + 136) = v64;
          v64 = v24;
          v25 = *(v17 + 152);
          *(v17 + 152) = v66;
          v66 = v25;
          ++v65;
          ++*(v17 + 144);
          *(v17 + 192) = 0;
          *(v17 + 168) = 0;
          *(v17 + 176) = 0;
          *(v17 + 160) = 0;
          *(v17 + 184) = 0;
          *(v17 + 160) = v67;
          v67 = 0;
          *(v17 + 168) = v68;
          v68 = 0;
          v26 = *(v17 + 176);
          *(v17 + 176) = v69;
          v69 = v26;
          v27 = *(v17 + 192);
          *(v17 + 192) = v71;
          v71 = v27;
          ++v70;
          ++*(v17 + 184);
          ++*(a2 + 136);
          ++*(a2 + 144);
          re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit(&v67);
          re::DynamicArray<re::StringID>::deinit(&v62);
          re::DynamicArray<re::RigGraphNodeChild>::deinit(&v57);
          re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v54);
          re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v50);
          ++v10;
          v9 += 216;
        }

        while (v10 < *(a2 + 16));
      }

      re::RigGraphCompilation::~RigGraphCompilation(&v74);
      v8 = 1;
    }
  }

  re::RigGraphCompilation::~RigGraphCompilation(v35);
  re::BindNode::deinit(&v97[8]);
  re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::deinit(v91);
  if (v91[0] && (v92 & 1) == 0)
  {
    (*(*v91[0] + 40))(v91[0], v94, v31, v32);
  }

  re::StackScratchAllocator::~StackScratchAllocator(v49);
  return v8;
}

uint64_t re::RigGraphAssetLoader::introspectionType(re::RigGraphAssetLoader *this)
{
  v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v3)
    {
      re::introspect<re::RigGraphAsset>(BOOL)::info = re::internal::getOrCreateInfo("RigGraphAsset", re::allocInfo_RigGraphAsset, re::initInfo_RigGraphAsset, &re::internal::introspectionInfoStorage<re::RigGraphAsset>, 0);
      v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v1 + 127);
}

void *re::allocInfo_RigGraphBoundInputParameterDataV1(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1990C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1990C8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1992F8, "RigGraphBoundInputParameterDataV1");
    __cxa_guard_release(&qword_1EE1990C8);
  }

  return &unk_1EE1992F8;
}

void re::initInfo_RigGraphBoundInputParameterDataV1(re *this, re::IntrospectionBase *a2)
{
  v22[0] = 0x43DF5FA6F6F04B48;
  v22[1] = "RigGraphBoundInputParameterDataV1";
  if (v22[0])
  {
    if (v22[0])
    {
    }
  }

  *(this + 2) = v23;
  if ((atomic_load_explicit(&qword_1EE1990D0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1990D0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::StringID>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "name";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1991B0 = v9;
      v10 = re::introspectionAllocator(v9);
      re::introspect_RigGraphBindNodeType(v10, v11);
      v12 = (*(*v10 + 32))(v10, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "bindNodeType";
      *(v12 + 16) = &qword_1EE1992B0;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1000000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1991B8 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::IntrospectionInfo<re::StringID>::get(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "bindingPath";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x1800000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1991C0 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_uint32_t(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "rigGraphIndex";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x2800000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1991C8 = v20;
      __cxa_guard_release(&qword_1EE1990D0);
    }
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1991B0;
  *(this + 9) = re::internal::defaultConstruct<re::RigGraphBoundInputParameterDataV1>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigGraphBoundInputParameterDataV1>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigGraphBoundInputParameterDataV1>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigGraphBoundInputParameterDataV1>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v21 = v23;
}

re::StringID *re::internal::defaultConstruct<re::RigGraphBoundInputParameterDataV1>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::invalid(a3);
  *(a3 + 16) = 0;
  result = re::StringID::invalid((a3 + 24));
  *(a3 + 40) = 0;
  return result;
}

void re::internal::defaultDestruct<re::RigGraphBoundInputParameterDataV1>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 24));

  re::StringID::destroyString(a3);
}

re::StringID *re::internal::defaultConstructV2<re::RigGraphBoundInputParameterDataV1>(uint64_t a1)
{
  re::StringID::invalid(a1);
  *(a1 + 16) = 0;
  result = re::StringID::invalid((a1 + 24));
  *(a1 + 40) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::RigGraphBoundInputParameterDataV1>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 24));

  re::StringID::destroyString(a1);
}

void *re::allocInfo_MeshRigGraphIndex(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1990E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1990E0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE199388, "MeshRigGraphIndex");
    __cxa_guard_release(&qword_1EE1990E0);
  }

  return &unk_1EE199388;
}

void re::initInfo_MeshRigGraphIndex(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0x26A8B32DA977788ELL;
  v18[1] = "MeshRigGraphIndex";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1990E8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1990E8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_MeshIdentifierAsset(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "meshIdentifier";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE199168 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::IntrospectionInfo<re::StringID>::get(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "skeletonName";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x2800000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE199170 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_uint32_t(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "rigGraphIndex";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x3800000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE199178 = v16;
      __cxa_guard_release(&qword_1EE1990E8);
    }
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE199168;
  *(this + 9) = re::internal::defaultConstruct<re::MeshRigGraphIndex>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshRigGraphIndex>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshRigGraphIndex>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshRigGraphIndex>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

void re::internal::defaultConstruct<re::MeshRigGraphIndex>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = &str_67;
  *(a3 + 24) = 0;
  *(a3 + 32) = &str_67;
  *(a3 + 40) = 0;
  *(a3 + 48) = &str_67;
  *(a3 + 56) = 0;
}

void re::internal::defaultDestruct<re::MeshRigGraphIndex>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 40));
  re::StringID::destroyString((a3 + 24));

  re::StringID::destroyString((a3 + 8));
}

uint64_t re::internal::defaultConstructV2<re::MeshRigGraphIndex>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = &str_67;
  *(result + 24) = 0;
  *(result + 32) = &str_67;
  *(result + 40) = 0;
  *(result + 48) = &str_67;
  *(result + 56) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::MeshRigGraphIndex>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 40));
  re::StringID::destroyString((a1 + 24));

  re::StringID::destroyString((a1 + 8));
}

void re::introspect_RigGraphBindNodeType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1990F8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE199100, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199100))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1992B0, "RigGraphBindNodeType", 1, 1, 1, 1);
      qword_1EE1992B0 = &unk_1F5D0C658;
      qword_1EE1992F0 = &re::introspect_RigGraphBindNodeType(BOOL)::enumTable;
      dword_1EE1992C0 = 9;
      __cxa_guard_release(&qword_1EE199100);
    }

    if (_MergedGlobals_90)
    {
      break;
    }

    _MergedGlobals_90 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1992B0, a2);
    v35 = 0xA871E7EADD22D22ELL;
    v36 = "RigGraphBindNodeType";
    v39 = 0x31CD534126;
    v40 = "uint8_t";
    v4 = v38[0];
    v5 = v38[1];
    if (v39)
    {
      if (v39)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1992F0;
      v39 = v4;
      v40 = v5;
      re::TypeBuilder::beginEnumType(v38, &v35, 1, 1, &v39);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v37.var0 = 2 * v11;
            v37.var1 = v10;
            re::TypeBuilder::addEnumConstant(v38, v15, &v37);
            if (*&v37.var0)
            {
              if (*&v37.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v37.var0 = 2 * v20;
              v37.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v38, v24, &v37);
              if (*&v37.var0)
              {
                if (*&v37.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v38, v26);
      xmmword_1EE1992D0 = v37;
      if (v35)
      {
        if (v35)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v36);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE1990F8);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Scene";
      qword_1EE199180 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "Entity";
      qword_1EE199188 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 8) = 2;
      *(v34 + 16) = "EcsService";
      qword_1EE199190 = v34;
      __cxa_guard_release(&qword_1EE1990F8);
    }
  }
}

void *re::allocInfo_RigGraphBoundInputParameterData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE199108, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199108))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE199418, "RigGraphBoundInputParameterData");
    __cxa_guard_release(&qword_1EE199108);
  }

  return &unk_1EE199418;
}

void re::initInfo_RigGraphBoundInputParameterData(re *this, re::IntrospectionBase *a2)
{
  v24[0] = 0x24087D919F4A9292;
  v24[1] = "RigGraphBoundInputParameterData";
  if (v24[0])
  {
    if (v24[0])
    {
    }
  }

  *(this + 2) = v25;
  if ((atomic_load_explicit(&qword_1EE199110, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE199110);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::StringID>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "name";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1991D0 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::StringID>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "bindingPath";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x1000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1991D8 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_uint32_t(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "rigGraphIndex";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x2000000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1991E0 = v17;
      v18 = re::introspectionAllocator(v17);
      v19 = v18;
      v20 = qword_1EE1990D8;
      if (!qword_1EE1990D8)
      {
        v20 = re::allocInfo_RigGraphBoundInputParameterDataV1(v18);
        qword_1EE1990D8 = v20;
        re::initInfo_RigGraphBoundInputParameterDataV1(v20, v21);
      }

      v22 = (*(*v19 + 32))(v19, 64, 8);
      *v22 = 6;
      *(v22 + 8) = 2;
      *(v22 + 16) = v20;
      *(v22 + 24) = 0;
      *(v22 + 32) = re::rigGraphBoundInputParameterDataUpgradeV1ToV2;
      *(v22 + 40) = 0;
      *(v22 + 48) = 0;
      *(v22 + 56) = 0;
      qword_1EE1991E8 = v22;
      __cxa_guard_release(&qword_1EE199110);
    }
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1991D0;
  *(this + 9) = re::internal::defaultConstruct<re::RigGraphBoundInputParameterData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigGraphBoundInputParameterData>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigGraphBoundInputParameterData>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigGraphBoundInputParameterData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v23 = v25;
}

uint64_t re::rigGraphBoundInputParameterDataUpgradeV1ToV2(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  re::DynamicString::find(&v17, "scene://", 8, 0, &v15);
  if (v15 != 1)
  {
    re::DynamicString::find(&v17, "entity://", 9, 0, v14);
    if (v14[0] != 1)
    {
      re::DynamicString::find(&v17, "service://", 10, 0, v13);
      if (v13[0] != 1)
      {
        v6 = *(a2 + 16);
        if (v6 <= 2)
        {
          v7 = off_1E871B288[v6];
          v8 = strlen(v7);
          re::DynamicString::insert(&v17, 0, v7, v8);
        }
      }
    }
  }

  v9 = re::StringID::operator=(a3, a2);
  if (v18)
  {
    v10 = *&v19[7];
  }

  else
  {
    v10 = v19;
  }

  v15 = 0;
  v16 = &str_67;
  v11 = re::StringID::operator=((a3 + 16), &v15);
  if (v15)
  {
    if (v15)
    {
    }
  }

  *(a3 + 32) = *(a2 + 40);
  if (v17 && (v18 & 1) != 0)
  {
    (*(*v17 + 40))();
  }

  return 1;
}

re::StringID *re::internal::defaultConstruct<re::RigGraphBoundInputParameterData>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  re::StringID::invalid(a3);
  result = re::StringID::invalid((a3 + 4));
  a3[8] = 0;
  return result;
}

void re::internal::defaultDestruct<re::RigGraphBoundInputParameterData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 16));

  re::StringID::destroyString(a3);
}

re::StringID *re::internal::defaultConstructV2<re::RigGraphBoundInputParameterData>(_DWORD *a1)
{
  re::StringID::invalid(a1);
  result = re::StringID::invalid((a1 + 4));
  a1[8] = 0;
  return result;
}

void re::internal::defaultDestructV2<re::RigGraphBoundInputParameterData>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 16));

  re::StringID::destroyString(a1);
}

void *re::allocInfo_RigGraphAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE199120, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199120))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1994A8, "RigGraphAssetData");
    __cxa_guard_release(&qword_1EE199120);
  }

  return &unk_1EE1994A8;
}

void re::initInfo_RigGraphAssetData(re *this, re::IntrospectionBase *a2)
{
  v13[0] = 0xFBB5838EDEC9EC38;
  v13[1] = "RigGraphAssetData";
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  *(this + 2) = v14;
  if ((atomic_load_explicit(&qword_1EE199128, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE199128);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<re::DynamicArray<re::RigGraphDefinition>>::get();
      v7 = (*(*v6 + 32))(v6, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "rigGraphDefinitions";
      *(v7 + 16) = &qword_1EE1991F0;
      *(v7 + 24) = 0;
      *(v7 + 32) = 1;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE199198 = v7;
      v8 = re::introspectionAllocator(v7);
      re::IntrospectionInfo<re::DynamicArray<re::MeshRigGraphIndex>>::get(v8);
      v9 = (*(*v8 + 32))(v8, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "meshRigGraphs";
      *(v9 + 16) = &qword_1EE199230;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0x2800000002;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1991A0 = v9;
      v10 = re::introspectionAllocator(v9);
      re::IntrospectionInfo<re::DynamicArray<re::RigGraphBoundInputParameterData>>::get(v10);
      v11 = (*(*v10 + 32))(v10, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "boundInputParameters";
      *(v11 + 16) = &qword_1EE199270;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x5000000003;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1991A8 = v11;
      __cxa_guard_release(&qword_1EE199128);
    }
  }

  *(this + 2) = 0x7800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE199198;
  *(this + 9) = re::internal::defaultConstruct<re::RigGraphAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigGraphAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigGraphAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigGraphAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v12 = v14;
}

void re::IntrospectionInfo<re::DynamicArray<re::RigGraphDefinition>>::get()
{
  if ((atomic_load_explicit(&qword_1EE199150, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199150))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1991F0);
    qword_1EE1991F0 = &unk_1F5CC7D80;
    __cxa_guard_release(&qword_1EE199150);
  }

  if ((byte_1EE1990C1 & 1) == 0)
  {
    v0 = re::introspect_RigGraphDefinition(1);
    if ((byte_1EE1990C1 & 1) == 0)
    {
      v1 = v0;
      byte_1EE1990C1 = 1;
      v2 = *(v0 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1991F0, 0);
      qword_1EE199200 = 0x2800000003;
      dword_1EE199208 = v2;
      word_1EE19920C = 0;
      *&xmmword_1EE199210 = 0;
      *(&xmmword_1EE199210 + 1) = 0xFFFFFFFFLL;
      qword_1EE199220 = v1;
      unk_1EE199228 = 0;
      qword_1EE1991F0 = &unk_1F5CC7D80;
      re::IntrospectionRegistry::add(v3, v4);
      re::getPrettyTypeName(&qword_1EE1991F0, &v12);
      if (v13)
      {
        v5 = *&v14[7];
      }

      else
      {
        v5 = v14;
      }

      if (v12 && (v13 & 1) != 0)
      {
        (*(*v12 + 40))();
      }

      v9 = *(v1 + 32);
      if (v16)
      {
        v8 = v16;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v15);
        re::TypeBuilder::TypeBuilder(&v12, v15);
        v11 = v9;
        re::TypeBuilder::beginListType(&v12, &v10, 1, 0x28uLL, 8uLL, &v11);
        re::TypeBuilder::setConstructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v12, 1);
        re::TypeBuilder::setListAccessors(&v12, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v12, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v12, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v12, v7);
        re::StackScratchAllocator::~StackScratchAllocator(v15);
      }

      xmmword_1EE199210 = v8;
      if (v10)
      {
        if (v10)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::MeshRigGraphIndex>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE199158, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE199158);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE199230);
      qword_1EE199230 = &unk_1F5CC7E18;
      __cxa_guard_release(&qword_1EE199158);
    }
  }

  if ((byte_1EE1990C2 & 1) == 0)
  {
    v1 = qword_1EE1990F0;
    if (qword_1EE1990F0 || (v1 = re::allocInfo_MeshRigGraphIndex(a1), qword_1EE1990F0 = v1, re::initInfo_MeshRigGraphIndex(v1, v2), (byte_1EE1990C2 & 1) == 0))
    {
      byte_1EE1990C2 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE199230, 0);
      qword_1EE199240 = 0x2800000003;
      dword_1EE199248 = v3;
      word_1EE19924C = 0;
      *&xmmword_1EE199250 = 0;
      *(&xmmword_1EE199250 + 1) = 0xFFFFFFFFLL;
      qword_1EE199260 = v1;
      unk_1EE199268 = 0;
      qword_1EE199230 = &unk_1F5CC7E18;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE199230, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshRigGraphIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshRigGraphIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshRigGraphIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshRigGraphIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshRigGraphIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshRigGraphIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshRigGraphIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshRigGraphIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE199250 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::RigGraphBoundInputParameterData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE199160, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE199160);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE199270);
      qword_1EE199270 = &unk_1F5CC7EB0;
      __cxa_guard_release(&qword_1EE199160);
    }
  }

  if ((byte_1EE1990C3 & 1) == 0)
  {
    v1 = qword_1EE199118;
    if (qword_1EE199118 || (v1 = re::allocInfo_RigGraphBoundInputParameterData(a1), qword_1EE199118 = v1, re::initInfo_RigGraphBoundInputParameterData(v1, v2), (byte_1EE1990C3 & 1) == 0))
    {
      byte_1EE1990C3 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE199270, 0);
      qword_1EE199280 = 0x2800000003;
      dword_1EE199288 = v3;
      word_1EE19928C = 0;
      *&xmmword_1EE199290 = 0;
      *(&xmmword_1EE199290 + 1) = 0xFFFFFFFFLL;
      qword_1EE1992A0 = v1;
      unk_1EE1992A8 = 0;
      qword_1EE199270 = &unk_1F5CC7EB0;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE199270, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphBoundInputParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphBoundInputParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphBoundInputParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphBoundInputParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphBoundInputParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphBoundInputParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphBoundInputParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphBoundInputParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE199290 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::RigGraphAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0;
  return result;
}

uint64_t re::internal::defaultDestruct<re::RigGraphAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigGraphBoundInputParameterData>::deinit(a3 + 80);
  re::DynamicArray<re::MeshRigGraphIndex>::deinit(a3 + 40);

  return re::DynamicArray<re::RigGraphDefinition>::deinit(a3);
}

double re::internal::defaultConstructV2<re::RigGraphAssetData>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::RigGraphAssetData>(uint64_t a1)
{
  re::DynamicArray<re::RigGraphBoundInputParameterData>::deinit(a1 + 80);
  re::DynamicArray<re::MeshRigGraphIndex>::deinit(a1 + 40);

  return re::DynamicArray<re::RigGraphDefinition>::deinit(a1);
}

void *re::allocInfo_RigGraphAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE199138, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199138))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE199538, "RigGraphAsset");
    __cxa_guard_release(&qword_1EE199138);
  }

  return &unk_1EE199538;
}

void re::initInfo_RigGraphAsset(re *this, re::IntrospectionBase *a2)
{
  v12[0] = 0x4D22379AE5FD16A4;
  v12[1] = "RigGraphAsset";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE199148, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE199148);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE199130;
      if (!qword_1EE199130)
      {
        v8 = re::allocInfo_RigGraphAssetData(v6);
        qword_1EE199130 = v8;
        re::initInfo_RigGraphAssetData(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "rigGraphAssetData";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 1;
      *(v10 + 40) = 0;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE199140 = v10;
      __cxa_guard_release(&qword_1EE199148);
    }
  }

  *(this + 2) = 0xA000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE199140;
  *(this + 9) = re::internal::defaultConstruct<re::RigGraphAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigGraphAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigGraphAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigGraphAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v11 = v13;
}

double re::internal::defaultConstruct<re::RigGraphAsset>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0;
  *(a3 + 152) = 0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0;
  return result;
}

uint64_t re::internal::defaultDestruct<re::RigGraphAsset>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigGraphNode>::deinit(a3 + 120);
  re::DynamicArray<re::RigGraphBoundInputParameterData>::deinit(a3 + 80);
  re::DynamicArray<re::MeshRigGraphIndex>::deinit(a3 + 40);

  return re::DynamicArray<re::RigGraphDefinition>::deinit(a3);
}

double re::internal::defaultConstructV2<re::RigGraphAsset>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 152) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::RigGraphAsset>(uint64_t a1)
{
  re::DynamicArray<re::RigGraphNode>::deinit(a1 + 120);
  re::DynamicArray<re::RigGraphBoundInputParameterData>::deinit(a1 + 80);
  re::DynamicArray<re::MeshRigGraphIndex>::deinit(a1 + 40);

  return re::DynamicArray<re::RigGraphDefinition>::deinit(a1);
}

void *re::DynamicArray<re::RigGraphBoundInputParameterData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RigGraphBoundInputParameterData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
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
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = &v8[5 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          LOBYTE(v12) = v8[2];
          v11[2] = v11[2] & 0xFFFFFFFFFFFFFFFELL | v8[2] & 1;
          v11[2] = v8[2] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[3] = v8[3];
          v8[3] = &str_67;
          v8[2] = 0;
          *(v11 + 8) = *(v8 + 8);
          re::StringID::destroyString((v8 + 2));
          re::StringID::destroyString(v8);
          v11 += 5;
          v8 += 5;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

size_t re::internal::RetargetRigGraphAssetBuilder::appendParentNamesAndIds(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2 + 24;
  v6 = a3 + 24;
  do
  {
    v7 = *(a1 + 296);
    result = strlen(v7);
    v9 = result;
    v10 = *(a2 + 40);
    v11 = *(a2 + 8);
    if (5 * v11 < v10 + 1)
    {
      result = re::BucketArray<re::StringSlice,5ul>::setBucketsCapacity(a2, (v10 + 5) / 5);
      v11 = *(a2 + 8);
    }

    if (v11 <= v10 / 5)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_16:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v12 = *(a2 + 32);
    if (*(a2 + 16))
    {
      v12 = v20;
    }

    v13 = *(v12 + 8 * (v10 / 5));
    ++*(a2 + 40);
    ++*(a2 + 48);
    v14 = (v13 + 16 * (v10 % 5));
    *v14 = v7;
    v14[1] = v9;
    v15 = *(a1 + 312);
    v16 = *(a3 + 40);
    v17 = *(a3 + 8);
    if (5 * v17 < v16 + 1)
    {
      result = re::BucketArray<unsigned long long,5ul>::setBucketsCapacity(a3, (v16 + 5) / 5);
      v17 = *(a3 + 8);
    }

    if (v17 <= v16 / 5)
    {
      goto LABEL_16;
    }

    v18 = *(a3 + 32);
    if (*(a3 + 16))
    {
      v18 = v6;
    }

    v19 = *(v18 + 8 * (v16 / 5));
    ++*(a3 + 40);
    ++*(a3 + 48);
    *(v19 + 8 * (v16 % 5)) = v15;
    a1 = *(a1 + 32);
  }

  while (a1 && (*(a1 + 304) & 0x80) == 0);
  return result;
}

unint64_t re::BucketArray<unsigned long long,5ul>::operator[](uint64_t a1, unint64_t a2)
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

  if (*(a1 + 8) <= a2 / 5)
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

  return *(v3 + 8 * (a2 / 5)) + 8 * (a2 % 5);
}

uint64_t re::BucketArray<re::StringSlice,5ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::StringSlice,5ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::StringSlice,5ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (5 * a2 > result[5])
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
          result = (*(**v3 + 32))(*v3, 80, 0);
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

uint64_t re::BucketArray<unsigned long long,5ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<unsigned long long,5ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<unsigned long long,5ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (5 * a2 > result[5])
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
        v5 = (*(**v3 + 32))(*v3, 40, 0);
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

uint64_t re::BucketSlice<re::StringSlice,5ul>::operator[](void *a1, unint64_t a2)
{
  v2 = a1[2];
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 296, a2, v2);
    _os_crash();
    __break(1u);
  }

  else
  {
    v3 = a2 / 5;
    v4 = a1[1];
    if (v4 > a2 / 5)
    {
      return *(*a1 + 8 * v3) + 16 * (a2 % 5);
    }
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v3, v4);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::BucketArray<unsigned long long,5ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      re::BucketArray<unsigned long long,5ul>::operator[](a1, i);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

uint64_t re::BucketArray<re::StringSlice,5ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      if (*(a1 + 8) <= i / 5)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }
    }
  }

  else if (!*(a1 + 8))
  {
    goto LABEL_8;
  }

  do
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  while (*(a1 + 8));
LABEL_8:
  result = *a1;
  if (*a1)
  {
    v5 = *(a1 + 16);
    if ((v5 & 1) == 0)
    {
      result = (*(*result + 40))(result, *(a1 + 32));
      v5 = *(a1 + 16);
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = (v5 | 1) + 2;
  }

  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

uint64_t re::internal::RigGraphDefinitionBuilder::RigGraphDefinitionBuilder(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  re::StringID::invalid(a1);
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 208) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  v6 = re::StringID::operator=(a1, a3);
  v6[12] = a2;
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(v6 + 12, 0);
  ++*(a1 + 120);
  *(a1 + 136) = a2;
  re::DynamicArray<re::RigGraphConnection>::setCapacity((a1 + 136), 0);
  ++*(a1 + 160);
  *(a1 + 16) = a2;
  re::DynamicArray<re::RigGraphParameterProxy>::setCapacity((a1 + 16), 0);
  ++*(a1 + 40);
  *(a1 + 56) = a2;
  re::DynamicArray<re::RigGraphParameterProxy>::setCapacity((a1 + 56), 0);
  ++*(a1 + 80);
  return a1;
}

uint64_t re::RigGraphDefinition::RigGraphDefinition(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *result = *result & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *result = *a2 & 0xFFFFFFFFFFFFFFFELL | v2 & 1;
  *(result + 8) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  *(result + 48) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  v3 = a2[3];
  *(result + 16) = a2[2];
  *(result + 24) = v3;
  a2[2] = 0;
  a2[3] = 0;
  v4 = *(result + 32);
  *(result + 32) = a2[4];
  a2[4] = v4;
  v5 = *(result + 48);
  *(result + 48) = a2[6];
  a2[6] = v5;
  ++*(a2 + 10);
  ++*(result + 40);
  *(result + 88) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 56) = 0;
  *(result + 80) = 0;
  v6 = a2[8];
  *(result + 56) = a2[7];
  *(result + 64) = v6;
  a2[7] = 0;
  a2[8] = 0;
  v7 = *(result + 72);
  *(result + 72) = a2[9];
  a2[9] = v7;
  v8 = *(result + 88);
  *(result + 88) = a2[11];
  a2[11] = v8;
  ++*(a2 + 20);
  ++*(result + 80);
  *(result + 128) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 96) = 0;
  *(result + 120) = 0;
  v9 = a2[13];
  *(result + 96) = a2[12];
  *(result + 104) = v9;
  a2[12] = 0;
  a2[13] = 0;
  v10 = *(result + 112);
  *(result + 112) = a2[14];
  a2[14] = v10;
  v11 = *(result + 128);
  *(result + 128) = a2[16];
  a2[16] = v11;
  ++*(a2 + 30);
  ++*(result + 120);
  *(result + 168) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 136) = 0;
  *(result + 160) = 0;
  v12 = a2[18];
  *(result + 136) = a2[17];
  *(result + 144) = v12;
  a2[17] = 0;
  a2[18] = 0;
  v13 = *(result + 152);
  *(result + 152) = a2[19];
  a2[19] = v13;
  v14 = *(result + 168);
  *(result + 168) = a2[21];
  a2[21] = v14;
  ++*(a2 + 40);
  ++*(result + 160);
  *(result + 208) = 0;
  *(result + 184) = 0;
  *(result + 192) = 0;
  *(result + 176) = 0;
  *(result + 200) = 0;
  v15 = a2[23];
  *(result + 176) = a2[22];
  *(result + 184) = v15;
  a2[22] = 0;
  a2[23] = 0;
  v16 = *(result + 192);
  *(result + 192) = a2[24];
  a2[24] = v16;
  v17 = *(result + 208);
  *(result + 208) = a2[26];
  a2[26] = v17;
  ++*(a2 + 50);
  ++*(result + 200);
  return result;
}

void *re::DynamicArray<re::RigGraphDefinition>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RigGraphDefinition>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xD8uLL))
        {
          v2 = 216 * a2;
          result = (*(*result + 32))(result, 216 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 216, a2);
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
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 0;
        v11 = 216 * v9;
        do
        {
          re::RigGraphDefinition::RigGraphDefinition(&v7[v10 / 8], (v8 + v10));
          re::DynamicArray<re::RigGraphInputValue>::deinit(v8 + v10 + 176);
          re::DynamicArray<re::RigGraphConnection>::deinit((v8 + v10 + 136));
          re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v8 + v10 + 96);
          re::DynamicArray<re::RigGraphParameterProxy>::deinit(v8 + v10 + 56);
          re::DynamicArray<re::RigGraphParameterProxy>::deinit(v8 + v10 + 16);
          re::StringID::destroyString((v8 + v10));
          v10 += 216;
        }

        while (v11 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::DynamicArray<re::MeshRigGraphIndex>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MeshRigGraphIndex>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 58)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 64, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = a2 << 6;
          result = (*(*result + 32))(result, a2 << 6, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + (v9 << 6);
        v11 = v7;
        do
        {
          *v11 = *v8;
          v13 = (v8 + 8);
          v12 = *(v8 + 8);
          v11[1] = v11[1] & 0xFFFFFFFFFFFFFFFELL | *(v8 + 8) & 1;
          v11[1] = *(v8 + 8) & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[2] = *(v8 + 16);
          *(v8 + 16) = &str_67;
          *(v8 + 8) = 0;
          v15 = (v8 + 24);
          v14 = *(v8 + 24);
          v11[3] = v11[3] & 0xFFFFFFFFFFFFFFFELL | *(v8 + 24) & 1;
          v11[3] = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL | v14 & 1;
          v11[4] = *(v8 + 32);
          *(v8 + 32) = &str_67;
          *(v8 + 24) = 0;
          v17 = *(v8 + 40);
          v16 = v8 + 40;
          v11[5] = v11[5] & 0xFFFFFFFFFFFFFFFELL | v17 & 1;
          v11[5] = *v16 & 0xFFFFFFFFFFFFFFFELL | v17 & 1;
          v11[6] = *(v16 + 8);
          *v16 = 0;
          *(v16 + 8) = &str_67;
          *(v11 + 14) = *(v16 + 16);
          re::StringID::destroyString(v16);
          re::StringID::destroyString(v15);
          re::StringID::destroyString(v13);
          v11 += 8;
          v8 = v16 + 24;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t std::__function::__func<re::RigGraphAsset::createAutoRetargetBipedToBipedRigGraphAsset(re::ecs2::Entity const&,re::ecs2::Entity const&,unsigned long,int const*,simd_quatf const*)::$_0,std::allocator<re::RigGraphAsset::createAutoRetargetBipedToBipedRigGraphAsset(re::ecs2::Entity const&,re::ecs2::Entity const&,unsigned long,int const*,simd_quatf const*)::$_0>,void ()(re::RigGraphAsset*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2re20makeDefaultUniquePtrINS2_13RigGraphAssetEJEEENS_10unique_ptrIT_NS_8functionIFvPS6_EEEEEDpOT0_EUlPS4_E_NS_9allocatorISG_EEFvSF_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *re::DynamicArray<re::RigGraphNode>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RigGraphNode>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xC8uLL))
        {
          v2 = 200 * a2;
          result = (*(*result + 32))(result, 200 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 200, a2);
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
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 200 * v9;
        v11 = v7;
        do
        {
          re::RigGraphNode::RigGraphNode(v11, v8);
          re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit(v8 + 160);
          re::DynamicArray<re::StringID>::deinit(v8 + 120);
          re::DynamicArray<re::RigGraphNodeChild>::deinit(v8 + 80);
          re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(v8 + 40);
          re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(v8);
          v8 += 200;
          v11 += 200;
          v10 -= 200;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigGraphDefinition>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigGraphDefinition>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigGraphDefinition>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigGraphDefinition>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigGraphDefinition>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigGraphDefinition>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::RigGraphDefinition>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigGraphDefinition>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::RigGraphDefinition>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigGraphDefinition>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4)
{
  v20 = 0;
  v18 = 0u;
  memset(v19, 0, sizeof(v19));
  v17 = 0u;
  memset(v16, 0, sizeof(v16));
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  re::StringID::invalid(&v11);
  v12 = 0uLL;
  DWORD2(v13) = 0;
  *&v13 = 0;
  v20 = 0;
  v14 = 0u;
  v15 = 0u;
  LODWORD(v16[0]) = 0;
  memset(v16 + 8, 0, 36);
  v17 = 0u;
  v18 = 0u;
  memset(v19 + 8, 0, 36);
  LODWORD(v19[0]) = 0;
  re::DynamicArray<re::RigGraphDefinition>::add(a4, &v11);
  re::DynamicArray<re::RigGraphInputValue>::deinit(&v19[1]);
  re::DynamicArray<re::RigGraphConnection>::deinit(&v17 + 1);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v16[1]);
  re::DynamicArray<re::RigGraphParameterProxy>::deinit(&v14 + 8);
  v8 = re::DynamicArray<re::RigGraphParameterProxy>::deinit(&v12);
  if (v11)
  {
    if (v11)
    {
    }
  }

  v9 = (*(a4 + 32) + 216 * *(a4 + 16) - 216);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

uint64_t re::IntrospectionDynamicArray<re::RigGraphDefinition>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 216 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 216 * a3;
}

void re::DynamicArray<re::RigGraphDefinition>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 216 * a2;
    v9 = a2;
    do
    {
      v10 = (*(a1 + 32) + v8);
      re::DynamicArray<re::RigGraphInputValue>::deinit(v10 + 176);
      re::DynamicArray<re::RigGraphConnection>::deinit(v10 + 17);
      re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v10 + 96);
      re::DynamicArray<re::RigGraphParameterProxy>::deinit(v10 + 56);
      re::DynamicArray<re::RigGraphParameterProxy>::deinit(v10 + 16);
      re::StringID::destroyString(v10);
      ++v9;
      v8 += 216;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::RigGraphDefinition>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 216 * v4 + 208;
      do
      {
        v7 = (*(a1 + 32) + v6);
        re::StringID::invalid((v7 - 26));
        *(v7 - 24) = 0;
        *(v7 - 23) = 0;
        *(v7 - 42) = 0;
        *(v7 - 22) = 0;
        *v7 = 0;
        *(v7 - 10) = 0u;
        *(v7 - 9) = 0u;
        *(v7 - 32) = 0;
        *(v7 - 15) = 0u;
        *(v7 - 13) = 0u;
        *(v7 - 22) = 0;
        *(v7 - 5) = 0u;
        *(v7 - 4) = 0u;
        *(v7 - 12) = 0;
        *(v7 - 5) = 0u;
        *(v7 - 3) = 0u;
        v6 += 216;
        *(v7 - 2) = 0;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigGraphDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigGraphDefinition>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigGraphDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = 0;
      v10 = *(a1 + 32);
      v11 = 216 * v8;
      do
      {
        re::DynamicArray<re::RigGraphInputValue>::deinit(v10 + v9 + 176);
        re::DynamicArray<re::RigGraphConnection>::deinit((v10 + v9 + 136));
        re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v10 + v9 + 96);
        re::DynamicArray<re::RigGraphParameterProxy>::deinit(v10 + v9 + 56);
        re::DynamicArray<re::RigGraphParameterProxy>::deinit(v10 + v9 + 16);
        re::StringID::destroyString((v10 + v9));
        v9 += 216;
      }

      while (v11 != v9);
    }
  }

  else
  {
    re::DynamicArray<re::RigGraphDefinition>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigGraphDefinition>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::RigGraphDefinition>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v17);
    re::TypeInfo::TypeInfo(v16, &v18);
    v13 = *(a1 + 16);
    if (v13)
    {
      v14 = *(a1 + 32);
      v15 = 216 * v13;
      do
      {
        re::TypeInfo::destruct(v16, v14, a3, 0);
        re::TypeInfo::construct(v16, v14, a3, 0);
        v14 += 216;
        v15 -= 216;
      }

      while (v15);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 216 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 216 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::MeshRigGraphIndex>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MeshRigGraphIndex>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MeshRigGraphIndex>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MeshRigGraphIndex>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MeshRigGraphIndex>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MeshRigGraphIndex>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::MeshRigGraphIndex>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MeshRigGraphIndex>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::MeshRigGraphIndex>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MeshRigGraphIndex>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *a4)
{
  v15 = 0;
  v17 = 0;
  v11 = 0u;
  v13 = 0;
  v12 = &str_67;
  v14 = &str_67;
  v16 = &str_67;
  v8 = re::DynamicArray<re::MeshRigGraphIndex>::add(a4, &v11);
  if (v15)
  {
  }

  if (v13)
  {
  }

  if (BYTE8(v11))
  {
  }

  v9 = (*(a4 + 4) + (*(a4 + 2) << 6) - 64);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

uint64_t re::IntrospectionDynamicArray<re::MeshRigGraphIndex>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 6);
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 6);
}

void re::DynamicArray<re::MeshRigGraphIndex>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = (a2 << 6) | 0x28;
    v9 = a2;
    do
    {
      v10 = (*(a1 + 32) + v8);
      re::StringID::destroyString(v10);
      re::StringID::destroyString((v10 - 16));
      re::StringID::destroyString((v10 - 32));
      ++v9;
      v8 += 64;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::MeshRigGraphIndex>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = (v4 << 6) | 0x20;
      do
      {
        v7 = *(a1 + 32) + v6;
        *(v7 - 32) = 0;
        *(v7 - 24) = 0;
        *(v7 - 16) = &str_67;
        *(v7 - 8) = 0;
        *v7 = &str_67;
        *(v7 + 8) = 0;
        *(v7 + 16) = &str_67;
        *(v7 + 24) = 0;
        v6 += 64;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MeshRigGraphIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MeshRigGraphIndex>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MeshRigGraphIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = v8 << 6;
      v10 = (*(a1 + 32) + 40);
      do
      {
        re::StringID::destroyString(v10);
        re::StringID::destroyString((v10 - 16));
        re::StringID::destroyString((v10 - 32));
        v10 = (v10 + 64);
        v9 -= 64;
      }

      while (v9);
    }
  }

  else
  {
    re::DynamicArray<re::MeshRigGraphIndex>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MeshRigGraphIndex>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::MeshRigGraphIndex>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = v12 << 6;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 64;
        v14 -= 64;
      }

      while (v14);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshRigGraphIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + (a2 << 6);
}