void sub_1E20EE004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, id a12, id a13, uint64_t a14, id a15, uint64_t a16, id a17, uint64_t a18, id a19, uint64_t a20, char a21)
{
  if (a15)
  {
  }

  if (a19)
  {
  }

  v23 = 184;
  while (1)
  {
    v24 = *(&a21 + v23);
    if (v24)
    {

      *(&a21 + v23) = 0;
    }

    v23 -= 24;
    if (v23 == -8)
    {

      _Unwind_Resume(a1);
    }
  }
}

void re::anonymous namespace::copyDirectMeshPayload(size_t *a1, void *a2)
{
  v9 = a2;
  Length = DRMemoryResourceGetLength();
  v4 = DRMemoryResourceCreate();
  if (v4)
  {
    if (DRMemoryResourceGetLength() < Length)
    {
      re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) ", "destBufferSize >= srcBufferSize", "copyDirectMeshPayload", 1194);
      _os_crash();
      __break(1u);
      return;
    }

    Bytes = DRMemoryResourceGetBytes();
    v7 = DRMemoryResourceGetBytes();
    memcpy(v7, Bytes, Length);
    DRMemoryResourceDidUpdateBytes();
    v8 = v4;
    *a1 = Length;
    a1[1] = v7;
    a1[2] = v8;
    if (v8)
    {
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void re::MeshPayload::dynamicCast(id *this@<X0>, void *a2@<X8>)
{
  v5 = *this;
  if ([v5 conformsToProtocol:&unk_1F5D44AD8])
  {
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
}

void re::MeshPayload::makeMeshPayloadBuffers(id *this@<X0>, id *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *this;
  v5 = *a2;
  if (v6)
  {
    [v6 meshPayloadBuffersWithDevice:v5];
  }

  else
  {
    *(a3 + 192) = 0;
    *(a3 + 160) = 0u;
    *(a3 + 176) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }
}

void re::MeshPayload::payloadBufferSizes(id *this@<X0>, _OWORD *a2@<X8>)
{
  v3 = *this;
  v4 = v3;
  if (v3)
  {
    [v3 payloadBufferSizes];
  }

  else
  {
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }
}

BOOL re::anonymous namespace::validateBlendShapeConstants(unint64_t a1, unsigned int a2, int a3, unsigned int a4, unsigned int a5, uint64_t a6, unint64_t a7)
{
  v7 = 4 * (a1 & 0x3FFFFFFF);
  if (a7 % v7)
  {
    return 0;
  }

  result = 0;
  v10 = v7 * a6;
  v11 = 1;
  if (a3)
  {
    v11 = 2;
  }

  if (v10 * (v11 + a4 + a5) <= a7)
  {
    v12 = HIDWORD(a1);
    if (v12 <= a2)
    {
      if (a2 != ((a2 + 3) & 0x1FFFFFFFCLL))
      {
        return 0;
      }

      return v12 >= 3 * a6;
    }
  }

  return result;
}

uint64_t re::Slice<unsigned int>::last(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return a1 + 4 * a2 - 4;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty.", "!isEmpty()", "last", 240, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::Slice<unsigned int>::operator[](uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 > a3)
  {
    return a1 + 4 * a3;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a3, a2, v3, v4);
  result = _os_crash();
  __break(1u);
  return result;
}

void re::AudioFileAssetLoader::~AudioFileAssetLoader(re::AudioFileAssetLoader *this)
{
  *(this + 1) = 0;
}

{
  *(this + 1) = 0;
  JUMPOUT(0x1E6906520);
}

uint64_t re::AudioFileAssetLoader::registerAsset(re *a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      v3 = (*(*v2 + 24))(v2);
      re::AudioAssetLoadStrategyFactory::getCurrentLoadStrategy(v3, v4);
    }

    operator new();
  }

  v5 = *re::audioLogObjects(a1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "[CoreRE] [AudioFileAssetLoader] Cannot call resourceDidUpdate with a null audioFileAsset", buf, 2u);
  }

  return 2;
}

void re::AudioFileAssetLoader::unregisterAsset(re *a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      v3 = (*(*v2 + 24))(v2);
      re::AudioAssetLoadStrategyFactory::getCurrentLoadStrategy(v3, v4);
    }

    operator new();
  }

  v5 = *re::audioLogObjects(a1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "[CoreRE] [AudioFileAssetLoader] Cannot unregister asset with a null audioFileAsset", buf, 2u);
  }
}

BOOL re::AudioFileAssetLoader::serializeAssetBlob(int a1, void *a2, re::AudioFileAsset *this)
{
  if (!re::AudioFileAsset::shouldSkipCompressionOnExport(this) || !re::AudioFileAssetLoader::serializeAssetBlobWithoutCompression(a2, this))
  {
    v6 = re::AudioFileAsset::pcmBuffer(this);
    if (v6 || (re::AudioFileAssetLoader::readAudioFileAssetIntoPCMBuffer(this, v7), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = v6;
      v12[0] = v8;
      v12[1] = a2;
      v14 = 0;
      v15 = 0;
      __p = 0;
      v9 = re::audio::AudioFileAssetWriter::writeToStreamWithDefaultCompression(v12);
      if (__p)
      {
        v14 = __p;
        operator delete(__p);
      }

      if (v9)
      {
        v5 = 1;
LABEL_14:

        return v5;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = *re::audioLogObjects(v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12[0]) = 0;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "[CoreRE] [AudioFileAssetLoader] serializeAssetBlob failed to compress the asset and will serialize it as is.", v12, 2u);
    }

    v5 = re::AudioFileAssetLoader::serializeAssetBlobWithoutCompression(a2, this);
    goto LABEL_14;
  }

  return 1;
}

void sub_1E20EF010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  re::audio::AudioFileAssetWriter::~AudioFileAssetWriter(&a9);

  _Unwind_Resume(a1);
}

BOOL re::AudioFileAssetLoader::serializeAssetBlobWithoutCompression(void *a1, id **this)
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = re::AudioFileAssetLoader::readAudioFileAssetIntoPCMBuffer(this, this);
  v5 = v4;
  if (v4)
  {
    *&v38 = v4;
    *(&v38 + 1) = a1;
    v40 = 0;
    v41 = 0;
    v39 = 0;
    v6 = re::AudioFileAssetLoader::serializeAssetBlobFromPCMBuffer(a1, v38);

    if (v6)
    {
      v11 = 1;
      goto LABEL_27;
    }

LABEL_8:
    if ((*(this[1][6] + 8))(this[1] + 6, v7, v8, v9, v10))
    {
      (*(this[1][6] + 5))(this[1] + 6, v16, v17, v18, v19);
      if ((*(this[1][6] + 7))(this[1] + 6, this[1][20], v20, v21, v22))
      {
        v23 = this[1];
        v24 = v23[6];
        *&v38 = &unk_1F5D0AE00;
        *(&v38 + 1) = v23 + 6;
        v39 = 0;
        LODWORD(v40) = 0;
        v41 = 0;
        v42 = v24[5](v23 + 6);
        v43 = 0;
        v11 = re::AssetHelper::readerToWriterStream(&v38, a1);
        (*(this[1][6] + 7))();
        if (v40)
        {
          (*(**(&v38 + 1) + 24))(*(&v38 + 1));
        }

        goto LABEL_27;
      }

LABEL_12:
      v11 = 0;
      goto LABEL_27;
    }

    v25 = *re::audioLogObjects(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v30 = (*(this[1][6] + 8))(this[1] + 6, v26, v27, v28, v29);
      LODWORD(v38) = 134217984;
      *(&v38 + 4) = v30;
      _os_log_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_DEFAULT, "[CoreRE] [AudioFileAssetLoader] Asset's mappedDataStream length (%zu) must be greater than 0. Attempting to serialize from an in memory pcm buffer.", &v38, 0xCu);
    }

    v31 = re::AudioFileAsset::pcmBuffer(this);
    if (v31)
    {
      v32 = re::AudioFileAssetLoader::serializeAssetBlobFromPCMBuffer(a1, v31);
      if (v32)
      {
        v11 = 1;
LABEL_24:

        goto LABEL_27;
      }

      v35 = *re::audioLogObjects(v32);
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
LABEL_23:
        v11 = 0;
        goto LABEL_24;
      }

      LOWORD(v38) = 0;
      v36 = "[CoreRE] [AudioFileAssetLoader] Failed to serialize asset blob without compression.";
    }

    else
    {
      v35 = *re::audioLogObjects(0);
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      LOWORD(v38) = 0;
      v36 = "[CoreRE] [AudioFileAssetLoader] Failed to serialize asset blob without compression. pcmBuffer is nil.";
    }

    _os_log_error_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_ERROR, v36, &v38, 2u);
    goto LABEL_23;
  }

  v12 = this[1][4];

  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = this[1][23];

  if (v13)
  {
    v15 = *re::audioLogObjects(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v38) = 0;
      _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "[CoreRE] [AudioFileAssetLoader] Failed to serialize asset from url. dataWithContentsOfURL does not support query items.", &v38, 2u);
    }

    goto LABEL_12;
  }

  v33 = this[1][4];
  if (v33)
  {
    v34 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v33];
    v11 = (*(*a1 + 16))(a1, [v34 bytes], objc_msgSend(v34, "length")) != 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_27:
  return v11;
}

re::audio *re::AudioFileAssetLoader::readAudioFileAssetIntoPCMBuffer(id **this, const re::AudioFileAsset *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = re::AudioFileAsset::audioFormat(this);
  v4 = *this[1];
  v5 = v4;
  if (!v3)
  {
    v12 = *re::audioLogObjects(v4);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      v11 = 0;
      goto LABEL_17;
    }

    *buf = 0;
    v13 = "[CoreRE] [AudioFileAssetLoader] AudioFileAsset cannot be read into a buffer if it has no format.";
LABEL_21:
    _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, v13, buf, 2u);
    goto LABEL_12;
  }

  if (!v4)
  {
    v12 = *re::audioLogObjects(0);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v13 = "[CoreRE] [AudioFileAssetLoader] AudioFileAsset cannot be read into a buffer if it has no underlying AVAudioFile.";
    goto LABEL_21;
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v6 = [objc_alloc(MEMORY[0x1E6958440]) initWithPCMFormat:v3 frameCapacity:*(this + 36)];
  [(re *)v5 setFramePosition:0];
  v16 = 0;
  v7 = [(re *)v5 readIntoBuffer:v6 error:&v16];
  v8 = v16;
  v9 = re::internal::enableSignposts(0, 0);
  if (v9)
  {
    [(re *)v5 length];
    re::audio::pcmBufferSize(v6, v10);
    v9 = kdebug_trace();
  }

  if (v7)
  {
    v11 = v6;
  }

  else
  {
    v14 = *re::audioLogObjects(v9);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v8;
      _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "[CoreRE] [AudioFileAssetLoader] AudioFileAsset could not be read into a buffer. %@", buf, 0xCu);
    }

    v11 = 0;
  }

LABEL_17:

  return v11;
}

void re::audio::AudioFileAssetWriter::~AudioFileAssetWriter(re::audio::AudioFileAssetWriter *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

BOOL re::AudioFileAssetLoader::serializeAssetBlobFromPCMBuffer(void *a1, void *a2)
{
  v3 = a2;
  v11[0] = v3;
  v11[1] = a1;
  v13 = 0;
  v14 = 0;
  __p = 0;
  v4 = [v3 format];
  v5 = [v4 streamDescription];
  v6 = *v5;
  v7 = *(v5 + 16);
  *&v10.mBitsPerChannel = *(v5 + 32);
  *&v10.mSampleRate = v6;
  *&v10.mBytesPerPacket = v7;

  v10.mBytesPerFrame *= v10.mChannelsPerFrame;
  v10.mFormatFlags &= ~0x20u;
  v10.mBytesPerPacket *= v10.mChannelsPerFrame;
  v8 = re::audio::AudioFileAssetWriter::writeToStreamWithCustomOutputDescription(v11, &v10, 0);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_1E20EF8A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  re::audio::AudioFileAssetWriter::~AudioFileAssetWriter(va);
  _Unwind_Resume(a1);
}

uint64_t re::AudioFileAssetLoader::createRuntimeData(re *a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      v3 = (*(*v2 + 24))(v2);
      re::AudioAssetLoadStrategyFactory::getCurrentLoadStrategy(v3, v4);
    }

    operator new();
  }

  v5 = *re::audioLogObjects(a1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "[CoreRE] [AudioFileAssetLoader] Cannot create runtime data with a null audioFileAsset", buf, 2u);
  }

  return 0;
}

void re::AudioFileAssetLoader::allocateSampleAsset(re::AudioFileAssetLoader *this)
{
  v1 = re::globalAllocators(this);
  v2 = (*(*v1[2] + 32))(v1[2], 176, 8);
  re::AudioFileAsset::AudioFileAsset(v2);
}

void re::AudioFileAssetLoader::unloadAsset(re::AudioFileAssetLoader *this, re::AudioFileAsset *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = re::audioLogObjects(this);
  v4 = *v3;
  if (a2)
  {
    v5 = v4;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a2 + 1) + 24);
      v9 = 134217984;
      v10 = v6;
      _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "[CoreRE] [AudioFileAsset] Unloaded audio asset: %llu", &v9, 0xCu);
    }

    v8 = re::globalAllocators(v7)[2];
    re::AudioFileAsset::~AudioFileAsset(a2);
    (*(*v8 + 40))(v8, a2);
  }

  else if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v9) = 0;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "[CoreRE] [AudioFileAssetLoader] Cannot unload asset with a null audioFileAsset", &v9, 2u);
  }
}

BOOL re::AudioFileAssetLoader::isSupportedSourceExtension(re::AudioFileAssetLoader *this, const char *a2)
{
  re::AudioFileAsset::supportedExtensions(&v16);
  v3 = strlen(a2);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v15 = v3;
  if (v3)
  {
    memcpy(__p, a2, v3);
  }

  *(__p + v4) = 0;
  if ((v15 & 0x80u) == 0)
  {
    v5 = (__p + v15);
  }

  else
  {
    v5 = (__p[0] + __p[1]);
  }

  if ((v15 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  while (v6 != v5)
  {
    *v6 = __tolower(*v6);
    v6 = (v6 + 1);
  }

  if (v17)
  {
    v7 = v18;
    v8 = 8 * v17 - 8;
    do
    {
      v9 = *v7++;
      v10 = strcmp(a2, v9);
      v11 = v10 == 0;
      if (v10)
      {
        v12 = v8 == 0;
      }

      else
      {
        v12 = 1;
      }

      v8 -= 8;
    }

    while (!v12);
  }

  else
  {
    v11 = 0;
  }

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v16 && v18)
  {
    (*(*v16 + 40))();
  }

  return v11;
}

void sub_1E20EFF38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a15)
  {
    if (a19)
    {
      (*(*a15 + 40))();
    }
  }

  _Unwind_Resume(exception_object);
}

void re::AudioFileAssetLoader::makeSharedResourcePayload(uint64_t a1@<X1>, void *a2@<X8>)
{
  if (*(a1 + 64) == 1)
  {
    if (*(a1 + 80))
    {
      v4 = *(a1 + 88);
    }

    else
    {
      v4 = a1 + 81;
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(a1 + 8) + 200);

  if (v6)
  {
    v7 = *(*(a1 + 8) + 200);
    v8 = re::AudioFileAsset::audioFormat(a1);
    HIDWORD(v29) = *(a1 + 136);
    LODWORD(v29) = *(a1 + 116);
    re::AudioPayload::makeBufferPayloadWithProperties(v7, v8, *(a1 + 144), *(a1 + 60), *(a1 + 104), v5, *(a1 + 108), *(a1 + 112), buf, *(a1 + 56), *(a1 + 120), v29, *(a1 + 140), *(*(a1 + 8) + 24));
LABEL_9:
    v9 = *buf;
    *buf = 0;
    *a2 = v9;

    goto LABEL_12;
  }

  v10 = *(*(a1 + 8) + 32);

  if (v10)
  {
    v31 = a2;
    v33 = v5;
    v32 = *(*(a1 + 8) + 32);
    v11 = [v32 path];
    v12 = *(a1 + 60);
    v13 = *(a1 + 56);
    v14 = *(a1 + 104);
    v15 = *(a1 + 108);
    v16 = *(a1 + 112);
    v17 = *(a1 + 116);
    v19 = *(a1 + 136);
    v18 = *(a1 + 140);
    v20 = *(a1 + 120);
    v21 = *(a1 + 128);
    v22 = *(a1 + 8);
    v23 = *(v22 + 24);
    v24 = *(v22 + 184);
    v30 = v23;
    v5 = v33;
    re::AudioPayload::makeFilePayloadWithProperties(v11, v12, v14, v33, v15, v16, v17, v19, buf, v13, v20, v21, v18, v30, v24);
    v25 = *buf;
    *buf = 0;
    *v31 = v25;

    goto LABEL_12;
  }

  v26 = *(*(a1 + 8) + 208);

  if (v26)
  {
    v7 = *(*(a1 + 8) + 208);
    v8 = re::AudioFileAsset::audioFormat(a1);
    re::AudioPayload::makeFileBufferPayloadWithProperties(v7, v8, *(a1 + 144), *(*(a1 + 8) + 40), *(a1 + 60), *(a1 + 104), v5, *(a1 + 108), buf, *(a1 + 56), *(a1 + 120), *(a1 + 112), HIDWORD(*(a1 + 112)), *(a1 + 136), *(a1 + 140), *(*(a1 + 8) + 24));
    goto LABEL_9;
  }

  v28 = *re::audioLogObjects(v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_ERROR, "[CoreRE] [AudioFileAssetLoader] makeSharedResourcePayload was unexpectedly called on an asset without playback data.", buf, 2u);
  }

  *a2 = 0;
LABEL_12:
}

uint64_t re::AudioFileAssetLoader::postInitializeAssetFromPayload(uint64_t a1, id *a2, uint64_t a3)
{
  v132 = *MEMORY[0x1E69E9840];
  re::AudioPayload::dynamicCast(a2, &v123);
  if (!*a2 || !v123)
  {
    v48 = *re::audioLogObjects(v6);
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v51 = "[CoreRE] [AudioFileAssetLoader] Cannot make AudioFileAsset with bad payload.";
LABEL_44:
    _os_log_error_impl(&dword_1E1C61000, v48, OS_LOG_TYPE_ERROR, v51, buf, 2u);
    goto LABEL_28;
  }

  if (!a3)
  {
    v48 = *re::audioLogObjects(v6);
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v51 = "[CoreRE] [AudioFileAssetLoader] Invalid asset pointer when initializing asset from payload.";
    goto LABEL_44;
  }

  v7 = v123;
  *(a3 + 60) = [v7 inputMode];

  v8 = v123;
  [v8 referenceLevel];
  *(a3 + 56) = v9;

  v10 = v123;
  *(a3 + 104) = [v10 loopCount];

  v11 = v123;
  *(a3 + 108) = [v11 streaming];

  v12 = v123;
  *(a3 + 112) = [v12 normalizationMode];

  v13 = v123;
  *(a3 + 116) = [v13 calibrationMode];

  v14 = v123;
  [v14 calibrationLevel];
  *(a3 + 120) = v15;

  v16 = v123;
  *(a3 + 136) = [v16 layoutTag];

  v17 = v123;
  [v17 targetLUFS];
  *(a3 + 128) = v18;

  v19 = v123;
  *(*(a3 + 8) + 24) = [v19 audioAssetID];

  v20 = [v123 taskToken];
  v21 = mach_port_mod_refs(*MEMORY[0x1E69E9A60], v20, 0, 1);
  v22 = v21;
  if (v21)
  {
    v23 = *re::audioLogObjects(v21);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v98 = mach_error_string(v22);
      *buf = 136315138;
      *v125 = v98;
      _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, "[CoreRE] [AudioFileAssetLoader] Failed to increment the taskToken ref count, with KERN error: %s", buf, 0xCu);
    }
  }

  *(a3 + 140) = v20;
  v24 = [v123 mixGroupName];
  v25 = v24 == 0;

  if (!v25)
  {
    v26 = v123;
    v27 = [v26 mixGroupName];
    v28 = v27;
    v29 = [v27 UTF8String];
    buf[0] = 1;
    *&v125[4] = *&v122[0];
    *&v125[28] = *(&v122[1] + 1);
    *&v125[12] = *(v122 + 8);
    memset(v122, 0, sizeof(v122));
    re::Optional<re::DynamicString>::operator=(a3 + 64, buf);
    if (buf[0] == 1 && *&v125[4])
    {
      if (v125[12])
      {
        (*(**&v125[4] + 40))();
      }

      memset(&v125[4], 0, 32);
    }

    if (*&v122[0])
    {
      if (BYTE8(v122[0]))
      {
        (*(**&v122[0] + 40))();
      }

      memset(v122, 0, sizeof(v122));
    }
  }

  v30 = [v123 pcmBuffer];
  v31 = v30 == 0;

  if (v31)
  {
    v52 = [v123 filePath];
    v53 = v52 == 0;

    if (v53)
    {
      v66 = [v123 fileBuffer];
      v67 = v66 == 0;

      if (!v67)
      {
        v69 = v123;
        v70 = [v69 fileBuffer];
        objc_storeStrong((*(a3 + 8) + 208), v70);

        v71 = v123;
        v72 = [v71 bufferSize];
        *(*(a3 + 8) + 40) = [v72 unsignedLongLongValue];

        v73 = v123;
        v74 = [v73 length];
        *(a3 + 144) = [v74 longLongValue];

        v75 = v123;
        v76 = [v75 format];
        objc_storeStrong((*(a3 + 8) + 8), v76);

        v39 = *re::audioLogObjects(v77);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v120 = re::AudioFileAsset::sharableFileBuffer(a3);
          v78 = *(*(a3 + 8) + 40);
          v79 = re::AudioFileAsset::audioFormat(a3);
          v80 = *(a3 + 144);
          v81 = *(a3 + 60);
          v82 = *(a3 + 56);
          v83 = *(a3 + 104);
          v84 = (a3 + 80);
          if (!*(a3 + 64))
          {
            v84 = v122 + 8;
          }

          if (*v84)
          {
            if (*(a3 + 64))
            {
              v107 = (a3 + 88);
            }

            else
            {
              v107 = &v122[1];
            }

            v85 = *v107;
          }

          else if (*(a3 + 64))
          {
            v85 = (a3 + 81);
          }

          else
          {
            v85 = v122 + 9;
          }

          v108 = *(*(a3 + 8) + 24);
          v109 = *(a3 + 136);
          v111 = *(a3 + 120);
          v110 = *(a3 + 128);
          v113 = *(a3 + 112);
          v112 = *(a3 + 116);
          v114 = *(a3 + 108);
          *buf = 138415874;
          *v125 = v120;
          *&v125[8] = 2048;
          *&v125[10] = v78;
          *&v125[18] = 2112;
          *&v125[20] = v79;
          *&v125[28] = 2048;
          *&v125[30] = v80;
          *&v125[38] = 1024;
          *&v125[40] = v81;
          *&v125[44] = 2048;
          *v126 = v82;
          *&v126[8] = 1024;
          *&v126[10] = v83;
          *v127 = 2080;
          *&v127[2] = v85;
          *&v127[10] = 1024;
          *&v127[12] = v114;
          *&v127[16] = 1024;
          *&v127[18] = v113;
          *&v127[22] = 1024;
          *&v127[24] = v112;
          *&v127[28] = 2048;
          *&v127[30] = v111;
          *&v127[38] = 1024;
          *&v127[40] = v109;
          v128 = 2048;
          v129 = v110;
          v130 = 2048;
          v131 = v108;
          _os_log_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_DEFAULT, "[CoreRE] [AudioFileAssetLoader] Recovered file buffer asset with buffer=%@, bufferSize=%zu, format=%@, length=%llu, inputMode=%d, referenceLevel=%0.2f, loopCount=%d, mixGroupName=%s, streaming=%d, normalizationMode=%d, calibrationMode=%d, calibrationLevel=%0.2f, layoutTag=%u, targetLUFS=%0.2f, audioAssetID=%llu from audio payload.", buf, 0x80u);
          if (*&v122[0] && (BYTE8(v122[0]) & 1) != 0)
          {
            (*(**&v122[0] + 40))();
          }
        }

        goto LABEL_84;
      }

      v97 = *re::audioLogObjects(v68);
      if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v97, OS_LOG_TYPE_DEFAULT, "[CoreRE] [AudioFileAssetLoader] Cannot make asset from payload that contains neither buffer nor file path.", buf, 2u);
      }
    }

    else
    {
      v54 = v123;
      v39 = [v54 filePath];

      v55 = v123;
      v56 = [v55 urlQueryItems];

      if (v56)
      {
        v57 = [v39 stringByAppendingFormat:@"?%@", v56];
      }

      else
      {
        v57 = v39;
      }

      v86 = v57;
      v87 = v57;
      v88 = re::AudioFileAsset::prepareToLoadFrom(a3, [v86 UTF8String], v56 != 0);
      v89 = v88;
      v90 = *re::audioLogObjects(v88);
      v91 = v90;
      if (v89)
      {
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
        {
          v92 = re::AudioFileAsset::localFileURL(a3);
          v93 = *(a3 + 60);
          v94 = *(a3 + 56);
          v121 = *(a3 + 104);
          v95 = (a3 + 80);
          if (!*(a3 + 64))
          {
            v95 = v122 + 8;
          }

          if (*v95)
          {
            if (*(a3 + 64))
            {
              v99 = (a3 + 88);
            }

            else
            {
              v99 = &v122[1];
            }

            v96 = *v99;
          }

          else if (*(a3 + 64))
          {
            v96 = (a3 + 81);
          }

          else
          {
            v96 = v122 + 9;
          }

          v100 = *(*(a3 + 8) + 24);
          v101 = *(a3 + 136);
          v103 = *(a3 + 120);
          v102 = *(a3 + 128);
          v105 = *(a3 + 112);
          v104 = *(a3 + 116);
          v106 = *(a3 + 108);
          *buf = 138415106;
          *v125 = v92;
          *&v125[8] = 1024;
          *&v125[10] = v93;
          *&v125[14] = 2048;
          *&v125[16] = v94;
          *&v125[24] = 1024;
          *&v125[26] = v121;
          *&v125[30] = 2080;
          *&v125[32] = v96;
          *&v125[40] = 1024;
          *&v125[42] = v106;
          *v126 = 1024;
          *&v126[2] = v105;
          *&v126[6] = 1024;
          *&v126[8] = v104;
          *&v126[12] = 2048;
          *v127 = v103;
          *&v127[8] = 1024;
          *&v127[10] = v101;
          *&v127[14] = 2048;
          *&v127[16] = v102;
          *&v127[24] = 2048;
          *&v127[26] = v100;
          _os_log_impl(&dword_1E1C61000, v91, OS_LOG_TYPE_DEFAULT, "[CoreRE] [AudioFileAssetLoader] Recovered file asset with path=%@, inputMode=%d, referenceLevel=%0.2f, loopCount=%d, mixGroupName=%s, streaming=%d, normalizationMode=%d, calibrationMode=%d, calibrationLevel=%0.2f, layoutTag=%u, targetLUFS=%0.2f, audioAssetID=%llu from audio payload.", buf, 0x62u);
          if (*&v122[0] && (BYTE8(v122[0]) & 1) != 0)
          {
            (*(**&v122[0] + 40))();
          }
        }

        goto LABEL_84;
      }

      if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
      {
        v118 = v86;
        v119 = [v86 UTF8String];
        *buf = 136315138;
        *v125 = v119;
        _os_log_error_impl(&dword_1E1C61000, v91, OS_LOG_TYPE_ERROR, "[CoreRE] [AudioFileAssetLoader] Failed to load audio file at '%s'", buf, 0xCu);
      }
    }

LABEL_28:
    v49 = 0;
    goto LABEL_29;
  }

  v32 = v123;
  v33 = [v32 pcmBuffer];
  objc_storeStrong((*(a3 + 8) + 200), v33);

  v34 = v123;
  v35 = [v34 format];
  objc_storeStrong((*(a3 + 8) + 8), v35);

  v36 = v123;
  v37 = [v36 length];
  *(a3 + 144) = [v37 longLongValue];

  v39 = *re::audioLogObjects(v38);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = *(*(a3 + 8) + 200);
    v41 = re::AudioFileAsset::audioFormat(a3);
    v42 = *(a3 + 144);
    v43 = *(a3 + 60);
    v44 = *(a3 + 56);
    v45 = *(a3 + 104);
    v46 = (a3 + 80);
    if (!*(a3 + 64))
    {
      v46 = v122 + 8;
    }

    if (*v46)
    {
      if (*(a3 + 64))
      {
        v58 = (a3 + 88);
      }

      else
      {
        v58 = &v122[1];
      }

      v47 = *v58;
    }

    else if (*(a3 + 64))
    {
      v47 = (a3 + 81);
    }

    else
    {
      v47 = v122 + 9;
    }

    v59 = *(*(a3 + 8) + 24);
    v60 = *(a3 + 136);
    v62 = *(a3 + 120);
    v61 = *(a3 + 128);
    v64 = *(a3 + 112);
    v63 = *(a3 + 116);
    v65 = *(a3 + 108);
    *buf = 138415618;
    *v125 = v40;
    *&v125[8] = 2112;
    *&v125[10] = v41;
    *&v125[18] = 2048;
    *&v125[20] = v42;
    *&v125[28] = 1024;
    *&v125[30] = v43;
    *&v125[34] = 2048;
    *&v125[36] = v44;
    *&v125[44] = 1024;
    *v126 = v45;
    *&v126[4] = 2080;
    *&v126[6] = v47;
    *v127 = 1024;
    *&v127[2] = v65;
    *&v127[6] = 1024;
    *&v127[8] = v64;
    *&v127[12] = 1024;
    *&v127[14] = v63;
    *&v127[18] = 2048;
    *&v127[20] = v62;
    *&v127[28] = 1024;
    *&v127[30] = v60;
    *&v127[34] = 2048;
    *&v127[36] = v61;
    v128 = 2048;
    v129 = v59;
    _os_log_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_DEFAULT, "[CoreRE] [AudioFileAssetLoader] Recovered pcm buffer asset with buffer=%@, format=%@, length=%llu, inputMode=%d, referenceLevel=%0.2f, loopCount=%d, mixGroupName=%s, streaming=%d, normalizationMode=%d, calibrationMode=%d, calibrationLevel=%0.2f, layoutTag=%u, targetLUFS=%0.2f, audioAssetID=%llu from audio payload.", buf, 0x76u);
    if (*&v122[0] && (BYTE8(v122[0]) & 1) != 0)
    {
      (*(**&v122[0] + 40))();
    }
  }

LABEL_84:

  v115 = (*(**(a1 + 8) + 160))(*(a1 + 8), *(*(a3 + 8) + 24));
  if (v115)
  {
    v116 = *re::audioLogObjects(v115);
    if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
    {
      v117 = *(*(a3 + 8) + 24);
      *buf = 134217984;
      *v125 = v117;
      _os_log_impl(&dword_1E1C61000, v116, OS_LOG_TYPE_DEFAULT, "Audio asset with ID %llu has already been registered in PHASE. Marking as completely loaded.", buf, 0xCu);
    }

    v49 = 1;
    *(a3 + 161) = 1;
  }

  else
  {
    re::AudioFileAsset::completeLoad(a3, *(a1 + 8));
    v49 = 1;
  }

LABEL_29:

  return v49;
}

void re::AudioFileAssetLoader::resourceDidUpdate(re *a1, uint64_t a2, void *a3)
{
  if (a2 && *a3)
  {
    v3 = *(a1 + 1);
    if (v3)
    {
      v4 = (*(*v3 + 24))(v3);
      re::AudioAssetLoadStrategyFactory::getCurrentLoadStrategy(v4, v5);
    }

    operator new();
  }

  v6 = *re::audioLogObjects(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "[CoreRE] [AudioFileAssetLoader] Cannot update shared AudioFileAsset with bad arguments.", buf, 2u);
  }
}

uint64_t re::AudioFileAssetLoader::introspectionType(re::AudioFileAssetLoader *this)
{
  {
    re::introspect<re::AudioFileAsset>(BOOL)::info = re::introspect_AudioFileAsset(0);
  }

  return re::introspect<re::AudioFileAsset>(BOOL)::info;
}

uint64_t re::AudioFileAssetLoader::assetNonIntrospectionNonSharedDataByteSize(re::AudioFileAssetLoader *this, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  v3 = *re::audioLogObjects(this);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a2[1] + 24);
    v5 = a2[21];
    v7 = 134218240;
    v8 = v4;
    v9 = 2048;
    v10 = v5;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "[CoreRE] [AudioFileAssetLoader] Asset: %llu has an in memory byte size of: %lu", &v7, 0x16u);
  }

  return a2[21];
}

void sub_1E20F14E0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1E20F1640(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1E20F1C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *(v11 - 80);
  if (v13)
  {

    *(v11 - 80) = 0;
  }

  v14 = 56;
  while (1)
  {
    v15 = *(&a9 + v14);
    if (v15)
    {

      *(&a9 + v14) = 0;
    }

    v14 -= 8;
    if (v14 == -8)
    {

      _Unwind_Resume(a1);
    }
  }
}

void sub_1E20F1F68(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1E20F20C8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void *re::DirectMeshPayload::connectionId(id *this)
{
  v2 = [*this clientObject];
  v7 = v2;
  ClientIdentifier = re::directMeshConnectionId(&v7);

  if (!ClientIdentifier)
  {
    ClientIdentifier = [*this directMesh];

    if (ClientIdentifier)
    {
      v4 = [*this directMesh];
      v5 = DRMeshAsResource();
      ClientIdentifier = DRResourceGetClientIdentifier();
    }
  }

  return ClientIdentifier;
}

void *re::DirectMeshPayload::directMesh(id *this)
{
  v1 = [*this directMesh];

  return v1;
}

void re::DirectMeshPayload::make(uint64_t a1@<X0>, REDirectMeshPayload **a2@<X8>)
{
  v3 = [[REDirectMeshPayload alloc] initWithDirectMesh:a1];
  *a2 = v3;
}

void re::DirectMeshPayload::dynamicCast(id *this@<X0>, void *a2@<X8>)
{
  v7 = *this;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = v7;
  if (isKindOfClass)
  {
    v6 = v7;
    v5 = v7;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
}

uint64_t re::DirectTexturePayload::connectionId(id *this)
{
  v1 = [*this clientObject];
  v4 = v1;
  v2 = re::directMeshConnectionId(&v4);

  return v2;
}

void *re::DirectTexturePayload::directTexture(id *this)
{
  v1 = [*this directTexture];

  return v1;
}

void re::DirectTexturePayload::make(uint64_t a1@<X0>, REDirectTexturePayload **a2@<X8>)
{
  v3 = [[REDirectTexturePayload alloc] initWithDirectTexture:a1];
  *a2 = v3;
}

void re::DirectTexturePayload::dynamicCast(id *this@<X0>, void *a2@<X8>)
{
  v7 = *this;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = v7;
  if (isKindOfClass)
  {
    v6 = v7;
    v5 = v7;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
}

uint64_t *re::TimelineAsset::assetType(re::TimelineAsset *this)
{
  {
    re::TimelineAsset::assetType(void)::type = "Timeline";
    qword_1EE1C7128 = 0;
    re::AssetType::generateCompiledExtension(&re::TimelineAsset::assetType(void)::type);
  }

  return &re::TimelineAsset::assetType(void)::type;
}

void re::IntrospectionInfo<re::TimelineAssetData *>::get()
{
  if ((atomic_load_explicit(&qword_1EE19BAA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19BAA0))
  {
    re::IntrospectionPointer::IntrospectionPointer(&qword_1EE19BAA8);
    __cxa_guard_release(&qword_1EE19BAA0);
  }

  if ((_MergedGlobals_103 & 1) == 0)
  {
    _MergedGlobals_103 = 1;
    v0 = re::introspect_TimelineAssetData(1);
    ArcSharedObject::ArcSharedObject(&qword_1EE19BAA8, 0);
    qword_1EE19BAB8 = 0x800000001;
    dword_1EE19BAC0 = 8;
    word_1EE19BAC4 = 0;
    *&xmmword_1EE19BAC8 = 0;
    *(&xmmword_1EE19BAC8 + 1) = 0xFFFFFFFFLL;
    qword_1EE19BAA8 = &unk_1F5CBD2C0;
    qword_1EE19BAD8 = v0;
    unk_1EE19BAE0 = 0;
    re::IntrospectionRegistry::add(v1, v2);
    re::getPrettyTypeName(&qword_1EE19BAA8, &v7);
    if (BYTE8(v7))
    {
      v3 = v8;
    }

    else
    {
      v3 = &v7 + 9;
    }

    if (v7 && (BYTE8(v7) & 1) != 0)
    {
      (*(*v7 + 40))();
    }

    if (v9 >> 1 == 94623636 && (__s1 == "char*" || !strcmp(__s1, "char*")))
    {
      v5 = v7;
    }

    else
    {
      v7 = *(v0 + 32);
      v5 = v6;
    }

    xmmword_1EE19BAC8 = v5;
    if (v9)
    {
      if (v9)
      {
      }
    }
  }
}

void *re::allocInfo_TimelineAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19BA98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19BA98))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19BAE8, "TimelineAsset");
    __cxa_guard_release(&qword_1EE19BA98);
  }

  return &unk_1EE19BAE8;
}

void re::initInfo_TimelineAsset(re *this, re::IntrospectionBase *a2)
{
  v9[0] = 0x79041F6188FFAE1ELL;
  v9[1] = "TimelineAsset";
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  *(this + 2) = v10;
  if ((atomic_load_explicit(&qword_1EE19BA90, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19BA90);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<re::TimelineAssetData *>::get();
      v7 = (*(*v6 + 32))(v6, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "m_timelineData";
      *(v7 + 16) = &qword_1EE19BAA8;
      *(v7 + 24) = 0;
      *(v7 + 32) = 0x800000001;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE19BA88 = v7;
      __cxa_guard_release(&qword_1EE19BA90);
    }
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE19BA88;
  *(this + 9) = re::internal::defaultConstruct<re::TimelineAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::TimelineAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::TimelineAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::TimelineAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v8 = v10;
}

uint64_t re::internal::defaultConstructV2<re::TimelineAsset>(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t re::TimelineAssetLoader::introspectionType(re::TimelineAssetLoader *this)
{
  v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v3)
    {
      re::introspect<re::TimelineAsset>(BOOL)::info = re::internal::getOrCreateInfo("TimelineAsset", re::allocInfo_TimelineAsset, re::initInfo_TimelineAsset, &re::internal::introspectionInfoStorage<re::TimelineAsset>, 0);
      v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v1 + 344);
}

uint64_t re::TimelineAssetLoader::registerAsset(re::TimelineAssetLoader *this, void *a2, const re::ExistingAssetInformation *a3)
{
  v4 = re::globalAllocators(this);
  v6 = *(a2 + 2);
  if (!v6)
  {
    v6 = re::internal::convertToTimeline(*(a2 + 1), v4[2], v5);
    *(a2 + 2) = v6;
    *a2 = v6;
  }

  v7 = *(a2 + 1);

  return re::internal::registerAndResolveTimelineDependencies(v7, v6, v5);
}

re **re::TimelineAssetLoader::allocateSampleAsset(re::TimelineAssetLoader *this)
{
  v1 = re::globalAllocators(this);
  v2 = (*(*v1[2] + 32))(v1[2], 120, 8);
  v3 = re::TimelineAssetData::TimelineAssetData(v2, 11);
  *(v3 + 72) = 0;
  *(v3 + 80) = 0x3FF0000000000000;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 112) = 0;
  *v3 = &unk_1F5CC3530;
  v4 = re::globalAllocators(v3);
  v6 = re::internal::convertToTimeline(v2, v4[2], v5);
  v7 = re::globalAllocators(v6);
  result = (*(*v7[2] + 32))(v7[2], 24, 8);
  *result = v6;
  result[1] = v2;
  result[2] = v6;
  return result;
}

re *re::TimelineAssetLoader::unregisterAsset(re *this, void *a2, const re::ExistingAssetInformation *a3)
{
  if (a2[2])
  {
    v4 = re::globalAllocators(this);
    this = re::internal::destroy(a2[2], v4[2], v5);
    a2[2] = 0;
  }

  *a2 = 0;
  return this;
}

uint64_t re::TimelineAssetLoader::unloadAsset(re::TimelineAssetLoader *this, void *a2)
{
  v3 = a2[1];
  if (v3)
  {
    (**v3)(v3);
  }

  a2[1] = 0;
  if (a2[2])
  {
    v5 = re::globalAllocators(v4);
    v4 = re::internal::destroy(a2[2], v5[2], v6);
    a2[2] = 0;
    *a2 = 0;
  }

  v7 = *(*re::globalAllocators(v4)[2] + 40);

  return v7();
}

uint64_t re::TimelineAssetLoader::findDependencies@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  result = a1[1];
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  if (result)
  {
    return (*(*result + 32))(result, a2);
  }

  return result;
}

uint64_t re::TimelineAssetLoader::internalFindAssetHandleFields@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  result = a1[1];
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  if (result)
  {
    return (*(*result + 40))(result, a2);
  }

  return result;
}

void re::MeshDeformationRuntimeData::update<re::MeshAsset>(re::MeshDeformationRuntimeData *this, uint64_t a2, uint64_t a3, uint64_t **a4, unint64_t a5, re::MeshNameMap *a6, uint64_t a7)
{
  if (*(this + 1))
  {
    v13 = *(this + 2);
  }

  else
  {
    v14 = *a4;
    *this = a2;
    if (!v14)
    {
    }

    *(this + 1) = v14;
    *(this + 1) = xmmword_1E3062D70;
    v13 = -1;
  }

  if (v13 != a7)
  {
    re::MeshDeformationRuntimeData::clear(this);
    re::MeshDeformationRuntimeData::rebuildRuntimeData<re::MeshAsset>(this, a3, a4, a5, a6);
    *(this + 2) = a7;
  }
}

void *re::MeshDeformationRuntimeData::clear(re::MeshDeformationRuntimeData *this)
{
  *(this + 2) = -1;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = 8 * v2;
    v4 = (*(this + 6) + 4);
    do
    {
      if ((*v4 & 0xFFFFFF) != 0)
      {
        (*(**this + 56))(*this, *(v4 - 1));
      }

      v4 += 2;
      v3 -= 8;
    }

    while (v3);
  }

  re::FixedArray<CoreIKTransform>::deinit(this + 4);
  re::FixedArray<CoreIKTransform>::deinit(this + 7);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  re::FixedArray<CoreIKTransform>::deinit(this + 13);
  result = re::FixedArray<re::MeshDeformationRuntimeData::DeformationMapping>::deinit(this + 16);
  *(this + 3) = 0;
  return result;
}

uint64_t re::MeshDeformationRuntimeData::rebuildRuntimeData<re::MeshAsset>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, re::MeshNameMap *a5)
{
  v8 = a3;
  v102 = *MEMORY[0x1E69E9840];
  re::MeshDeformationAssetLoader::initializeUsedDeformers(a2, a3);
  v10 = *(a5 + 27);
  v11 = v10;
  v77 = v10;
  if (!v10)
  {
    goto LABEL_8;
  }

  v14 = 0;
  v15 = 0;
  do
  {
    v16 = a1[8];
    if (v16 <= v14)
    {
      goto LABEL_137;
    }

    *(a1[9] + 4 * v14) = v15;
    v17 = re::MeshNameMap::modelIndex(a5, v14);
    v15 += *(re::MeshAssetBaseInfo::meshModel<re::MeshAsset>(a4, v17) + 56);
    ++v14;
  }

  while (v11 != v14);
  v19 = a1[8];
  if (v19 <= v11)
  {
    goto LABEL_150;
  }

  *(a1[9] + 4 * v11) = v15;
  if (HIDWORD(v15))
  {
    re::internal::assertLog(4, v18, "assertion failure: '%s' (%s:line %i) The total number of mesh parts for a mesh collection exceeds the maximum supported count.", "m_meshPartStartIndex[meshBaseCount] == meshPartCount", "rebuildRuntimeData", 194);
    _os_crash();
    __break(1u);
LABEL_8:
    if (a1[8] <= v11)
    {
      goto LABEL_149;
    }

    v15 = 0;
    *(a1[9] + 4 * v11) = 0;
  }

  re::FixedArray<re::DataArrayHandle<re::DeformationStack>>::init<>(a1 + 4, a1[1], v8[2]);
  v20 = re::FixedArray<unsigned long>::init<unsigned long const&>(a1 + 10, a1[1], v15, &re::MeshDeformationRuntimeData::kInvalidMeshDeformationHandle);
  if (!v21)
  {
    goto LABEL_147;
  }

  v13 = v21;
  bzero(v21, 0x558uLL);
  v24 = 0;
  do
  {
    v14 = &v13[v24];
    v24 += 9;
  }

  while (v24 != 171);
  v27 = v8[7];
  v72 = v11;
  v70 = v15;
  if (v27)
  {
    v5 = v8[9];
    v73 = &v5[6 * v27];
    v15 = v85;
    v71 = v8;
    while (1)
    {
      v28 = *v5;
      if (v28 == 1)
      {
        if (re::MeshNameMap::instanceIndex(a5, (v5 + 1)) == 0xFFFF)
        {
          goto LABEL_73;
        }

        v28 = *v5;
      }

      if (v28 != 2 || re::MeshNameMap::modelIndex(a5, (v5 + 1)) != 0xFFFF)
      {
        break;
      }

LABEL_73:
      v5 += 6;
      if (v5 == v73)
      {
        goto LABEL_74;
      }
    }

    v29 = v5[5];
    v16 = v8[2];
    if (v16 <= v29)
    {
      goto LABEL_140;
    }

    v76 = v5[5];
    re::DynamicArray<re::DeformationDefinition>::DynamicArray(v81, (v8[4] + 40 * v29));
    if (!v82)
    {
      goto LABEL_72;
    }

    v30 = 0;
    v78 = v5;
LABEL_23:
    v31 = v83 + 40 * v30;
    v32 = (*(**a1 + 24))(&v80);
    if ((v80 & 1) == 0)
    {
      v14 = *re::assetsLogObjects(v32);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v41 = *(v31 + 8);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v41;
        _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "Unknown deformer name specified in deformation stack: %s.", &buf, 0xCu);
      }

      goto LABEL_55;
    }

    re::MeshNameMap::meshInstancePartsForIdentifier(a5, v5, &buf);
    *v85 = a4;
    *&v85[8] = a5;
    *&v85[16] = buf;
    v88 = v99;
    v89 = 0;
    re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::operator=<24ul>(&v85[24], &buf + 8);
    re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&buf + 8);
    v5 = *&v85[16];
    if (!*&v85[16])
    {
LABEL_44:
      v15 = v85;
      re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&v85[24]);
      ++v30;
      v5 = v78;
      goto LABEL_56;
    }

    v15 = 0;
    while (1)
    {
      *&buf = v15;
      v33 = (*(*v89 + 16))(v89, &buf);
      v14 = re::MeshNameMap::modelIndex(*&v85[8], v33);
      *&buf = v15;
      v34 = (*(*v89 + 16))(v89, &buf);
      v35 = re::MeshAssetBaseInfo::meshModel<re::MeshAsset>(a4, v14);
      if (BYTE1(v80) > 5u)
      {
        if (BYTE1(v80) - 6 < 2)
        {
          v37 = HIDWORD(v34);
          v11 = WORD2(v34);
          v16 = *(v35 + 7);
          if (v16 <= v37)
          {
            goto LABEL_130;
          }

          if (!*(*(v35 + 8) + 544 * v11 + 516))
          {
            v14 = *re::assetsLogObjects(v35);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 67109120;
              DWORD1(buf) = v11;
              v42 = v14;
              v43 = "Invalid deformation stack - Mesh part does not have open subdiv data: %u";
LABEL_53:
              _os_log_error_impl(&dword_1E1C61000, v42, OS_LOG_TYPE_ERROR, v43, &buf, 8u);
            }

LABEL_54:
            v15 = v85;
            re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&v85[24]);
            v5 = v78;
LABEL_55:
            re::DynamicArray<re::DeformationDefinition>::removeStableAt(v81, v30);
LABEL_56:
            if (v30 >= v82)
            {
              v8 = v71;
              v11 = v72;
              if (v82)
              {
                v45 = (*(**a1 + 48))(*a1, v81);
                v80 = v45;
                if ((v45 & 0xFFFFFF00000000) != 0)
                {
                  v16 = a1[5];
                  v46 = v76;
                  if (v16 <= v76)
                  {
                    goto LABEL_143;
                  }

                  *(a1[6] + 8 * v76) = v45;
                  re::MeshNameMap::meshInstancePartsForIdentifier(a5, v5, &buf);
                  *v85 = a4;
                  *&v85[8] = a5;
                  *&v85[16] = buf;
                  v88 = v99;
                  v89 = 0;
                  re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::operator=<24ul>(&v85[24], &buf + 8);
                  re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&buf + 8);
                  v74 = *&v85[16];
                  if (*&v85[16])
                  {
                    v5 = 0;
                    while (1)
                    {
                      *&buf = v5;
                      v11 = (*(*v89 + 16))(v89, &buf);
                      *&buf = v5;
                      v15 = (*(*v89 + 16))(v89, &buf) >> 32;
                      v14 = (*(**a1 + 72))(*a1, &v80);
                      if (v14)
                      {
                        for (i = 0; i != v14; ++i)
                        {
                          v48 = (*(**a1 + 80))(*a1, &v80, i);
                          v16 = v48;
                          if (v48 >= 0x13)
                          {
                            goto LABEL_126;
                          }

                          re::MeshDeformationRuntimeData::DeformationMappingCounter::addToDeformationMapping(&v13[9 * v48], a5, v11, v15, i);
                        }
                      }

                      re::MeshDeformationRuntimeData::DeformationMappingCounter::addToDeformationMapping((v13 + 162), a5, v11, v15, 255);
                      v14 = v11;
                      v16 = a1[8];
                      if (v16 <= v11)
                      {
                        goto LABEL_135;
                      }

                      v14 = *(a1[9] + 4 * v11) + v15;
                      v16 = a1[11];
                      if (v16 <= v14)
                      {
                        break;
                      }

                      v49 = a1[12];
                      v50 = a1[3];
                      if (*(v49 + 8 * v14) == -1)
                      {
                        ++v50;
                      }

                      a1[3] = v50;
                      *(v49 + 8 * v14) = v76;
                      v5 = (v5 + 1);
                      if (v5 == v74)
                      {
                        goto LABEL_71;
                      }
                    }

LABEL_136:
                    v84 = 0;
                    v100 = 0u;
                    v101 = 0u;
                    v98 = 0u;
                    v99 = 0u;
                    buf = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v90 = 136315906;
                    *&v90[4] = "operator[]";
                    v91 = 1024;
                    v92 = 468;
                    v93 = 2048;
                    v94 = v14;
                    v95 = 2048;
                    v96 = v16;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_137:
                    v81[0] = 0;
                    v100 = 0u;
                    v101 = 0u;
                    v98 = 0u;
                    v99 = 0u;
                    buf = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v85 = 136315906;
                    *&v85[4] = "operator[]";
                    *&v85[12] = 1024;
                    *&v85[14] = 468;
                    *&v85[18] = 2048;
                    *&v85[20] = v14;
                    v86 = 2048;
                    v87 = v16;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_138:
                    v81[0] = 0;
                    v100 = 0u;
                    v101 = 0u;
                    v98 = 0u;
                    v99 = 0u;
                    buf = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v85 = 136315906;
                    *&v85[4] = "operator[]";
                    *&v85[12] = 1024;
                    *&v85[14] = 476;
                    *&v85[18] = 2048;
                    *&v85[20] = v11;
                    v86 = 2048;
                    v87 = v16;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_139:
                    v81[0] = 0;
                    v100 = 0u;
                    v101 = 0u;
                    v98 = 0u;
                    v99 = 0u;
                    buf = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v85 = 136315906;
                    *&v85[4] = "operator[]";
                    *&v85[12] = 1024;
                    *&v85[14] = 468;
                    *&v85[18] = 2048;
                    *&v85[20] = v15;
                    v86 = 2048;
                    v87 = v13;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_140:
                    v81[0] = 0;
                    v100 = 0u;
                    v101 = 0u;
                    v98 = 0u;
                    v99 = 0u;
                    buf = 0u;
                    v68 = v29;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v85 = 136315906;
                    *&v85[4] = "operator[]";
                    *&v85[12] = 1024;
                    *&v85[14] = 797;
                    *&v85[18] = 2048;
                    *&v85[20] = v68;
                    v86 = 2048;
                    v87 = v16;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_141:
                    v81[0] = 0;
                    v100 = 0u;
                    v101 = 0u;
                    v98 = 0u;
                    v99 = 0u;
                    buf = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v85 = 136315906;
                    *&v85[4] = "operator[]";
                    *&v85[12] = 1024;
                    *&v85[14] = 468;
                    *&v85[18] = 2048;
                    *&v85[20] = v15;
                    v86 = 2048;
                    v87 = v16;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_142:
                    v81[0] = 0;
                    v100 = 0u;
                    v101 = 0u;
                    v98 = 0u;
                    v99 = 0u;
                    buf = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v85 = 136315906;
                    *&v85[4] = "operator[]";
                    *&v85[12] = 1024;
                    *&v85[14] = 468;
                    *&v85[18] = 2048;
                    *&v85[20] = v14;
                    v86 = 2048;
                    v87 = v5;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_143:
                    *v90 = 0;
                    v100 = 0u;
                    v101 = 0u;
                    v98 = 0u;
                    v99 = 0u;
                    buf = 0u;
                    v69 = v46;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v85 = 136315906;
                    *&v85[4] = "operator[]";
                    *&v85[12] = 1024;
                    *&v85[14] = 468;
                    *&v85[18] = 2048;
                    *&v85[20] = v69;
                    v86 = 2048;
                    v87 = v16;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_144:
                    v81[0] = 0;
                    v100 = 0u;
                    v101 = 0u;
                    v98 = 0u;
                    v99 = 0u;
                    buf = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v85 = 136315906;
                    *&v85[4] = "operator[]";
                    *&v85[12] = 1024;
                    *&v85[14] = 476;
                    *&v85[18] = 2048;
                    *&v85[20] = v16;
                    v86 = 2048;
                    v87 = v13;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_145:
                    v81[0] = 0;
                    v100 = 0u;
                    v101 = 0u;
                    v98 = 0u;
                    v99 = 0u;
                    buf = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v85 = 136315906;
                    *&v85[4] = "operator[]";
                    *&v85[12] = 1024;
                    *&v85[14] = 476;
                    *&v85[18] = 2048;
                    *&v85[20] = v16;
                    v86 = 2048;
                    v87 = v11;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_146:
                    v81[0] = 0;
                    v100 = 0u;
                    v101 = 0u;
                    v98 = 0u;
                    v99 = 0u;
                    buf = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v85 = 136315906;
                    *&v85[4] = "operator[]";
                    *&v85[12] = 1024;
                    *&v85[14] = 476;
                    *&v85[18] = 2048;
                    *&v85[20] = a4;
                    v86 = 2048;
                    v87 = v11;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_147:
                    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
                    _os_crash();
                    __break(1u);
LABEL_148:
                    re::internal::assertLog(4, v53, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
                    _os_crash();
                    __break(1u);
LABEL_149:
                    v19 = 0;
LABEL_150:
                    v81[0] = 0;
                    v100 = 0u;
                    v101 = 0u;
                    v98 = 0u;
                    v99 = 0u;
                    buf = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v85 = 136315906;
                    *&v85[4] = "operator[]";
                    *&v85[12] = 1024;
                    *&v85[14] = 468;
                    *&v85[18] = 2048;
                    *&v85[20] = v11;
                    v86 = 2048;
                    v87 = v19;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_151:
                    re::internal::assertLog(4, v57, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 454);
                    _os_crash();
                    __break(1u);
                  }

LABEL_71:
                  v15 = v85;
                  re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&v85[24]);
                  v8 = v71;
                  v11 = v72;
                  v5 = v78;
                }
              }

LABEL_72:
              re::DynamicArray<re::DeformationDefinition>::deinit(v81);
              goto LABEL_73;
            }

            goto LABEL_23;
          }
        }
      }

      else if (BYTE1(v80))
      {
        if (BYTE1(v80) == 2 || BYTE1(v80) == 4)
        {
          v36 = *(v35 + 28);
          if (!v36 || *(v36 + 8) <= WORD2(v34))
          {
            v14 = *re::assetsLogObjects(v35);
            if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_54;
            }

            LODWORD(buf) = 67109120;
            DWORD1(buf) = WORD2(v34);
            v42 = v14;
            v43 = "Invalid deformation stack - Mesh part index is not skinned: %u.";
            goto LABEL_53;
          }
        }
      }

      else
      {
        v38 = *(v35 + 18);
        if (!v38 || ((v39 = *(v38 + 40), v39 > WORD2(v34)) ? (v40 = v39 > *(v35 + 7)) : (v40 = 1), v40 || *(*(v38 + 48) + 4 * WORD2(v34)) == -1))
        {
          v14 = *re::assetsLogObjects(v35);
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_54;
          }

          LODWORD(buf) = 67109120;
          DWORD1(buf) = WORD2(v34);
          v42 = v14;
          v43 = "Invalid deformation stack - Blend shape not specified for mesh part: %u.";
          goto LABEL_53;
        }
      }

      if (v5 == ++v15)
      {
        goto LABEL_44;
      }
    }
  }

LABEL_74:
  v51 = a1[1];
  a1[16] = v51;
  a1[17] = 19;
  v52 = (*(*v51 + 32))(v51, 1824, 8);
  a1[18] = v52;
  if (!v52)
  {
    goto LABEL_148;
  }

  bzero(v52, 0x720uLL);
  v15 = 0;
  v79 = v13;
  do
  {
    v54 = &v13[9 * v15];
    if (v77)
    {
      v55 = 0;
      LODWORD(v56) = 0;
      v14 = 0;
      v16 = v54[1];
      do
      {
        if (v16 == v55)
        {
          goto LABEL_131;
        }

        v14 = v14 + *(v54[2] + 2 * v55);
        if (*(v54[2] + 2 * v55))
        {
          v56 = (v56 + 1);
        }

        else
        {
          v56 = v56;
        }

        ++v55;
      }

      while (v11 != v55);
    }

    else
    {
      v14 = 0;
      v56 = 0;
    }

    v16 = a1[17];
    if (v16 <= v15)
    {
      goto LABEL_141;
    }

    a4 = a1[18] + 96 * v15;
    re::FixedArray<unsigned short>::init<>(a4, a1[1], v56);
    re::FixedArray<int>::init<>((a4 + 24), a1[1], (v14 + 1));
    re::FixedArray<unsigned short>::init<>((a4 + 48), a1[1], v14);
    re::FixedArray<BOOL>::init<>((a4 + 72), a1[1], v14);
    if (v77)
    {
      v75 = v15;
      v11 = 0;
      v16 = 0;
      v5 = 0;
      do
      {
        v15 = v11;
        v14 = v54[1];
        if (v14 <= v11)
        {
          goto LABEL_132;
        }

        if (*(v54[2] + 2 * v11))
        {
          v14 = v5;
          v11 = *(a4 + 8);
          if (v11 <= v5)
          {
            goto LABEL_133;
          }

          *(*(a4 + 16) + 2 * v5) = v15;
          v11 = *(a4 + 32);
          if (v11 <= v5)
          {
            goto LABEL_134;
          }

          *(*(a4 + 40) + 4 * v5) = v16;
          LODWORD(v14) = re::MeshNameMap::meshPartStartIndexForInstance(a5, v15);
          v11 = (v15 + 1);
          started = re::MeshNameMap::meshPartStartIndexForInstance(a5, v15 + 1);
          if (v14 < started)
          {
            v59 = 0;
            v14 = v14;
            while (1)
            {
              v15 = v54[4];
              if (v15 <= v14)
              {
                break;
              }

              if (*(v54[5] + v14) == 1)
              {
                v15 = v16;
                v13 = *(a4 + 56);
                if (v13 <= v16)
                {
                  goto LABEL_127;
                }

                *(*(a4 + 64) + 2 * v16) = v59;
                v13 = v54[7];
                if (v13 <= v14)
                {
                  goto LABEL_128;
                }

                v13 = *(a4 + 80);
                if (v13 <= v16)
                {
                  goto LABEL_129;
                }

                *(*(a4 + 88) + v16) = *(v54[8] + v14);
                v16 = (v16 + 1);
                v13 = v79;
              }

              ++v14;
              ++v59;
              if (started == v14)
              {
                goto LABEL_101;
              }
            }

            v81[0] = 0;
            v100 = 0u;
            v101 = 0u;
            v98 = 0u;
            v99 = 0u;
            buf = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v85 = 136315906;
            *&v85[4] = "operator[]";
            *&v85[12] = 1024;
            *&v85[14] = 476;
            *&v85[18] = 2048;
            *&v85[20] = v14;
            v86 = 2048;
            v87 = v15;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_126:
            v84 = 0;
            v100 = 0u;
            v101 = 0u;
            v98 = 0u;
            v99 = 0u;
            buf = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v90 = 136315906;
            *&v90[4] = "operator[]";
            v91 = 1024;
            v92 = 468;
            v93 = 2048;
            v94 = v16;
            v95 = 2048;
            v96 = 19;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_127:
            v81[0] = 0;
            v100 = 0u;
            v101 = 0u;
            v98 = 0u;
            v99 = 0u;
            buf = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v85 = 136315906;
            *&v85[4] = "operator[]";
            *&v85[12] = 1024;
            *&v85[14] = 468;
            *&v85[18] = 2048;
            *&v85[20] = v15;
            v86 = 2048;
            v87 = v13;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_128:
            v81[0] = 0;
            v100 = 0u;
            v101 = 0u;
            v98 = 0u;
            v99 = 0u;
            buf = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v85 = 136315906;
            *&v85[4] = "operator[]";
            *&v85[12] = 1024;
            *&v85[14] = 476;
            *&v85[18] = 2048;
            *&v85[20] = v14;
            v86 = 2048;
            v87 = v13;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_129:
            v81[0] = 0;
            v100 = 0u;
            v101 = 0u;
            v98 = 0u;
            v99 = 0u;
            buf = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v85 = 136315906;
            *&v85[4] = "operator[]";
            *&v85[12] = 1024;
            *&v85[14] = 468;
            *&v85[18] = 2048;
            *&v85[20] = v15;
            v86 = 2048;
            v87 = v13;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_130:
            v84 = 0;
            v100 = 0u;
            v101 = 0u;
            v98 = 0u;
            v99 = 0u;
            buf = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v90 = 136315906;
            *&v90[4] = "operator[]";
            v91 = 1024;
            v92 = 476;
            v93 = 2048;
            v94 = v11;
            v95 = 2048;
            v96 = v16;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_131:
            v81[0] = 0;
            v100 = 0u;
            v101 = 0u;
            v98 = 0u;
            v99 = 0u;
            buf = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v85 = 136315906;
            *&v85[4] = "operator[]";
            *&v85[12] = 1024;
            *&v85[14] = 476;
            *&v85[18] = 2048;
            *&v85[20] = v16;
            v86 = 2048;
            v87 = v16;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_132:
            v81[0] = 0;
            v100 = 0u;
            v101 = 0u;
            v98 = 0u;
            v99 = 0u;
            buf = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v85 = 136315906;
            *&v85[4] = "operator[]";
            *&v85[12] = 1024;
            *&v85[14] = 476;
            *&v85[18] = 2048;
            *&v85[20] = v15;
            v86 = 2048;
            v87 = v14;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_133:
            v81[0] = 0;
            v100 = 0u;
            v101 = 0u;
            v98 = 0u;
            v99 = 0u;
            buf = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v85 = 136315906;
            *&v85[4] = "operator[]";
            *&v85[12] = 1024;
            *&v85[14] = 468;
            *&v85[18] = 2048;
            *&v85[20] = v14;
            v86 = 2048;
            v87 = v11;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_134:
            v81[0] = 0;
            v100 = 0u;
            v101 = 0u;
            v98 = 0u;
            v99 = 0u;
            buf = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v85 = 136315906;
            *&v85[4] = "operator[]";
            *&v85[12] = 1024;
            *&v85[14] = 468;
            *&v85[18] = 2048;
            *&v85[20] = v14;
            v86 = 2048;
            v87 = v11;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_135:
            v84 = 0;
            v100 = 0u;
            v101 = 0u;
            v98 = 0u;
            v99 = 0u;
            buf = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v90 = 136315906;
            *&v90[4] = "operator[]";
            v91 = 1024;
            v92 = 468;
            v93 = 2048;
            v94 = v14;
            v95 = 2048;
            v96 = v16;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_136;
          }

LABEL_101:
          v5 = (v5 + 1);
        }

        else
        {
          v11 = (v11 + 1);
        }
      }

      while (v11 != v77);
      v14 = v5;
      v11 = v72;
      v15 = v75;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    v5 = *(a4 + 32);
    if (v5 <= v14)
    {
      goto LABEL_142;
    }

    *(*(a4 + 40) + 4 * v14) = v16;
    ++v15;
  }

  while (v15 != 19);
  v60 = a1[17];
  if (!v60)
  {
    goto LABEL_151;
  }

  v14 = a1[18] + 96 * v60;
  v5 = *(v14 - 88);
  v61 = a1[1];
  LODWORD(buf) = -1;
  re::FixedArray<unsigned int>::init<unsigned int>(a1 + 13, v61, v70, &buf);
  if (v5)
  {
    a4 = 0;
    while (1)
    {
      v16 = a4;
      v13 = *(v14 - 88);
      if (v13 <= a4)
      {
        goto LABEL_144;
      }

      v62 = re::MeshNameMap::meshPartStartIndexForInstance(a5, *(*(v14 - 80) + 2 * a4));
      v11 = *(v14 - 64);
      if (v11 <= a4)
      {
        goto LABEL_145;
      }

      ++a4;
      if (v11 <= v16 + 1)
      {
        goto LABEL_146;
      }

      v63 = *(v14 - 56);
      v64 = *(v63 + 4 * v16);
      v65 = *(v63 + 4 * a4);
      if (v64 < v65)
      {
        break;
      }

LABEL_121:
      if (a4 == v5)
      {
        goto LABEL_122;
      }
    }

    v16 = *(v14 - 40);
    if (v16 <= v64)
    {
      v11 = v64;
    }

    else
    {
      v11 = *(v14 - 40);
    }

    while (v11 != v64)
    {
      v15 = v62 + *(*(v14 - 32) + 2 * v64);
      v13 = a1[14];
      if (v13 <= v15)
      {
        goto LABEL_139;
      }

      *(a1[15] + 4 * v15) = v64++;
      if (v65 == v64)
      {
        goto LABEL_121;
      }
    }

    goto LABEL_138;
  }

LABEL_122:
  for (j = 0; j != 171; j += 9)
  {
    re::FixedArray<CoreIKTransform>::deinit(&v79[j + 6]);
    re::FixedArray<CoreIKTransform>::deinit(&v79[j + 3]);
    re::FixedArray<CoreIKTransform>::deinit(&v79[j]);
  }
}

void *re::FixedArray<re::MeshDeformationRuntimeData::DeformationMapping>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 96 * v2;
      do
      {
        re::FixedArray<CoreIKTransform>::deinit(v4 + 9);
        re::FixedArray<CoreIKTransform>::deinit(v4 + 6);
        re::FixedArray<CoreIKTransform>::deinit(v4 + 3);
        re::FixedArray<CoreIKTransform>::deinit(v4);
        v4 += 12;
        v5 -= 96;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

uint64_t re::MeshDeformationRuntimeData::absoluteDeformedMeshPartIndex(re::MeshDeformationRuntimeData *this, unsigned int a2)
{
  if (*(this + 14) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 15) + 4 * a2);
}

uint64_t re::MeshDeformationRuntimeData::meshDeformationHandle(re::MeshDeformationRuntimeData *this, unsigned int a2, unsigned int a3)
{
  v3 = a2 + 1;
  v4 = *(this + 8);
  if (v4 > v3)
  {
    if (v4 <= a2)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_9;
    }

    v5 = *(this + 9);
    v6 = *(v5 + 4 * a2);
    v7 = *(v5 + 4 * v3);
    v8 = v6 + a3;
    if (v8 < v7)
    {
      if (*(this + 11) > v8)
      {
        return *(*(this + 12) + 8 * v8);
      }

LABEL_9:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

  return -1;
}

uint64_t re::MeshDeformationRuntimeData::deformationStackHandle(re::MeshDeformationRuntimeData *this, unint64_t a2)
{
  if (*(this + 5) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 6) + 8 * a2);
}

uint64_t re::MeshDeformationRuntimeData::DeformationMappingCounter::addToDeformationMapping(re::MeshDeformationRuntimeData::DeformationMappingCounter *this, const re::MeshNameMap *a2, unsigned int a3, int a4, char a5)
{
  result = re::MeshNameMap::meshPartStartIndexForInstance(a2, a3);
  v10 = (result + a4);
  if (*(this + 4) <= v10)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_9:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(this + 5);
  if (*(v11 + v10))
  {
    return result;
  }

  *(v11 + v10) = 1;
  if (*(this + 1) <= a3)
  {
    goto LABEL_8;
  }

  ++*(*(this + 2) + 2 * a3);
  if (*(this + 7) <= v10)
  {
    goto LABEL_9;
  }

  *(*(this + 8) + v10) = a5;
  return result;
}

void *re::FixedArray<re::DataArrayHandle<re::DeformationStack>>::init<>(void *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >> 61)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 8 * a3, 8);
  v4[2] = result;
  if (!result)
  {
LABEL_9:
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = a3 - 1;
  if (a3 != 1)
  {
    do
    {
      *result++ = 0xFFFFFFFFLL;
      --v6;
    }

    while (v6);
  }

  *result = 0xFFFFFFFFLL;
  return result;
}

void re::DynamicArray<re::DeformationDefinition>::removeStableAt(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 <= a2)
  {
    memset(v6, 0, sizeof(v6));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v2 - 1 > a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<re::DeformationDefinition *,re::DeformationDefinition *,re::DeformationDefinition *>(v6, (*(a1 + 32) + 40 * a2 + 40), (*(a1 + 32) + 40 * v2), (*(a1 + 32) + 40 * a2));
    v2 = *(a1 + 16);
  }

  v4 = *(a1 + 32) + 40 * v2;
  v5 = (v4 - 40);
  re::FixedArray<CoreIKTransform>::deinit((v4 - 24));
  re::StringID::destroyString(v5);
  --*(a1 + 16);
  ++*(a1 + 24);
}

void *re::FixedArray<unsigned int>::init<unsigned int>(void *result, uint64_t a2, unint64_t a3, int *a4)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >> 62)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 4, a3);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  result = (*(*a2 + 32))(a2, 4 * a3, 4);
  v6[2] = result;
  if (!result)
  {
LABEL_10:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v8 = a3 - 1;
  if (a3 != 1)
  {
    v9 = *a4;
    do
    {
      *result = v9;
      result = (result + 4);
      --v8;
    }

    while (v8);
  }

  *result = *a4;
  return result;
}

uint64_t re::DynamicArray<re::DeformationDefinition>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::DeformationDefinition>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::DeformationDefinition>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::DeformationDefinition>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::DeformationDefinition>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::DeformationDefinition *,re::DeformationDefinition *,re::DeformationDefinition *>(&v14, *(a2 + 32), (*(a2 + 32) + 40 * a1[2]), a1[4]);
    v8 = a1[2];
    if (v8 != v4)
    {
      v9 = 5 * v8;
      v10 = *(a2 + 32) + 8 * v9;
      v11 = (a1[4] + 8 * v9);
      v12 = 40 * v4 - 8 * v9;
      do
      {
        re::StringID::StringID(v11, v10);
        re::FixedArray<unsigned char>::FixedArray(v11 + 2, (v10 + 16));
        v10 += 40;
        v11 = (v11 + 40);
        v12 -= 40;
      }

      while (v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::DeformationDefinition *,re::DeformationDefinition *,re::DeformationDefinition *>(&v13, *(a2 + 32), (*(a2 + 32) + 40 * v4), a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = (a1[4] + 40 * v4);
      v7 = 40 * v5 - 40 * v4;
      do
      {
        re::FixedArray<CoreIKTransform>::deinit(v6 + 2);
        re::StringID::destroyString(v6);
        v6 += 5;
        v7 -= 40;
      }

      while (v7);
    }
  }

  a1[2] = v4;
}

uint64_t *std::__copy_impl::operator()[abi:nn200100]<re::DeformationDefinition *,re::DeformationDefinition *,re::DeformationDefinition *>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      re::StringID::operator=(a4, v5);
      re::FixedArray<unsigned char>::operator=((a4 + 16), v5 + 2);
      v5 += 5;
      a4 += 40;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<re::DeformationDefinition *,re::DeformationDefinition *,re::DeformationDefinition *>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      re::StringID::operator=(a4, v5);
      re::FixedArray<float>::operator=(a4 + 2, v5 + 2);
      v5 += 5;
      a4 += 5;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void re::AnimationLibraryMeshMapping::rebuildRuntimeData(void **this, const re::MeshAsset *a2, const re::AnimationLibraryAsset *a3)
{
  v4 = this;
  v42 = *MEMORY[0x1E69E9840];
  this[7] = -1;
  if (*(this + 7))
  {
    v5 = *(this + 6);
    if (v5)
    {
      memset_pattern16(this[1], &unk_1E304C660, 4 * v5);
    }

    if (*(v4 + 8))
    {
      v6 = 0;
      v7 = 0;
      do
      {
        this = re::HashTable<re::AssetHandle,re::DynamicArray<re::AnimationLibraryMeshMappingData>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::EntryBase::free((*(v4 + 2) + v6));
        ++v7;
        v6 += 80;
      }

      while (v7 < *(v4 + 8));
    }

    *(v4 + 7) = 0;
    *(v4 + 8) = 0;
    v8 = *(v4 + 10) + 1;
    *(v4 + 9) = 0x7FFFFFFF;
    *(v4 + 10) = v8;
  }

  if (!*(v4 + 6))
  {
    *(v4 + 7) = -1;
  }

  if (*(a3 + 2))
  {
    v9 = 0;
    v10 = 0;
    do
    {
      re::MeshNameMap::meshInstancePartsForIdentifier(a2 + 640, (*(a3 + 4) + 120 * v9), &v31);
      v26 = *(a2 + 156);
      if (v26)
      {
        v11 = 0;
        v12 = 0;
        while (1)
        {
          v13 = re::MeshAsset::skeletonAtIndex(a2, v11);
          v14 = *(a3 + 2);
          if (v14 <= v9)
          {
            goto LABEL_42;
          }

          if (re::StringID::operator==(v13, (*(a3 + 4) + 120 * v9 + 40)))
          {
            v15 = v31;
            if (v31)
            {
              break;
            }
          }

LABEL_38:
          v11 = ++v12;
          if (v26 <= v12)
          {
            goto LABEL_39;
          }
        }

        v16 = 0;
        while (1)
        {
          *&v37 = v16;
          *v30 = __PAIR64__((*(*v33 + 16))(v33, &v37), v10);
          *&v30[8] = v12;
          v14 = *(a3 + 2);
          if (v14 <= v9)
          {
            break;
          }

          re::AssetHandle::AssetHandle(&v28, (*(a3 + 4) + 120 * v9 + 72));
          if (v29)
          {
            v17 = *(v29 + 792);
          }

          else
          {
            v17 = 0;
          }

          v18 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v29 ^ (v29 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v29 ^ (v29 >> 30))) >> 27));
          re::HashTable<re::AssetHandle,re::DynamicArray<re::AnimationLibraryMeshMappingData>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(&v37, v4, v29, v17 ^ (v18 >> 31) ^ v18);
          if (HIDWORD(v37) == 0x7FFFFFFF)
          {
            *&v39 = 0;
            *&v38 = 0;
            v37 = 0uLL;
            DWORD2(v38) = 0;
            re::DynamicArray<re::AnimationLibraryMeshMappingData>::add(&v37, v30);
            if (v29)
            {
              v19 = *(v29 + 792);
            }

            else
            {
              v19 = 0;
            }

            memset(v34, 0, 24);
            v24 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v29 ^ (v29 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v29 ^ (v29 >> 30))) >> 27));
            re::HashTable<re::AssetHandle,re::DynamicArray<re::AnimationLibraryMeshMappingData>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(v34, v4, v29, v19 ^ (v24 >> 31) ^ v24);
            if (*&v34[12] == 0x7FFFFFFF)
            {
              v25 = re::HashTable<re::AssetHandle,re::DynamicArray<re::AnimationLibraryMeshMappingData>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::allocEntry(v4, *&v34[8], *v34);
              re::AssetHandle::AssetHandle((v25 + 8), &v28);
              re::DynamicArray<re::AnimationLibraryMeshMappingData>::DynamicArray(v25 + 32, &v37);
              ++*(v4 + 10);
            }

            if (v37)
            {
              if (v39)
              {
                (*(*v37 + 40))();
              }
            }
          }

          else
          {
            v20 = (*(v4 + 2) + 80 * HIDWORD(v37));
            v21 = v20[6];
            if (v21)
            {
              v22 = 12 * v21;
              v23 = (v20[8] + 4);
              while (*(v23 - 1) != *v30 || *v23 != *&v30[4])
              {
                v23 = (v23 + 12);
                v22 -= 12;
                if (!v22)
                {
                  goto LABEL_30;
                }
              }
            }

            else
            {
LABEL_30:
              re::DynamicArray<re::AnimationLibraryMeshMappingData>::add(v20 + 4, v30);
            }
          }

          re::AssetHandle::~AssetHandle(&v28);
          if (++v16 == v15)
          {
            goto LABEL_38;
          }
        }

        v28 = 0;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v37 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v34 = 136315906;
        *&v34[4] = "operator[]";
        *&v34[12] = 1024;
        *&v34[14] = 797;
        *&v34[18] = 2048;
        *&v34[20] = v9;
        v35 = 2048;
        v36 = v14;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_42:
        v28 = 0;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v37 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v34 = 136315906;
        *&v34[4] = "operator[]";
        *&v34[12] = 1024;
        *&v34[14] = 797;
        *&v34[18] = 2048;
        *&v34[20] = v9;
        v35 = 2048;
        v36 = v14;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

LABEL_39:
      re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&v32);
      v9 = ++v10;
    }

    while (*(a3 + 2) > v10);
  }
}

void *re::DynamicArray<re::AnimationLibraryMeshMappingData>::add(void *this, uint64_t *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::AnimationLibraryMeshMappingData>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = v3[4] + 12 * v4;
  v6 = *a2;
  *(v5 + 8) = *(a2 + 2);
  *v5 = v6;
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

uint64_t re::AnimationLibraryMeshMapping::processSkeletalQueryEntry(int a1, uint64_t a2, _anonymous_namespace_ *this)
{
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = 12 * v4;
    do
    {
      re::DynamicArray<re::AnimationLibraryMeshMappingData>::add(v8, v5);
      v5 = (v5 + 12);
      v6 -= 12;
    }

    while (v6);
  }

  re::DynamicArray<re::SkeletalAnimationQueryEntry>::add(this, v8);
  result = v8[0];
  if (v8[0])
  {
    if (v10)
    {
      return (*(*v8[0] + 40))();
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::SkeletalAnimationQueryEntry>::add(_anonymous_namespace_ *this, uint64_t *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::DynamicArray<unsigned int>>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = re::DynamicArray<re::AnimationLibraryMeshMappingData>::DynamicArray(*(this + 4) + 40 * v4, a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::AnimationLibraryMeshMapping::processForFirstSkeletalQueryEntry(int a1, uint64_t a2, uint64_t a3, _anonymous_namespace_ *this, _anonymous_namespace_ *a5)
{
  v46 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v28[1] = 0;
  v29 = 0;
  v28[0] = 0;
  v30 = 0;
  v5 = *(a2 + 16);
  if (!v5)
  {
    goto LABEL_34;
  }

  v7 = a3;
  v8 = *(a2 + 32);
  v26 = (v8 + 12 * v5);
  do
  {
    v9 = *v8;
    v10 = *(v7 + 16);
    if (v10 <= v9)
    {
      v32 = 0;
      v44 = 0u;
      v45 = 0u;
      *__s1 = 0u;
      *v43 = 0u;
      v41 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v33 = 136315906;
      v34 = "operator[]";
      v35 = 1024;
      v36 = 797;
      v37 = 2048;
      v38 = v9;
      v39 = 2048;
      v40 = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v11 = (*(v7 + 32) + 120 * v9);
    v12 = *(this + 2);
    if (!v12)
    {
LABEL_28:
      if (v12 >= *(this + 1))
      {
        re::DynamicArray<re::MeshIdentifierAsset>::growCapacity(this, v12 + 1);
        v12 = *(this + 2);
      }

      v21 = (*(this + 4) + 40 * v12);
      *v21 = *v11;
      v22 = (v21 + 24);
      re::StringID::StringID((v21 + 8), (v11 + 8));
      re::StringID::StringID(v22, (v11 + 24));
      ++*(this + 2);
      ++*(this + 6);
      re::DynamicArray<re::AnimationLibraryMeshMappingData>::add(v28, v8);
      goto LABEL_31;
    }

    v27 = 0;
    v13 = 40 * v12 - 40;
    v14 = (*(this + 4) + 24);
    do
    {
      LOBYTE(v41) = v14[-2].var1;
      re::StringID::StringID((&v41 + 8), v14 - 1);
      v15 = re::StringID::StringID(&__s1[1], v14);
      if (v41 == *v11 && (*(v11 + 1) ^ *(&v41 + 1)) <= 1 && ((v15 = __s1[0], v16 = *(v11 + 2), __s1[0] == v16) || (v15 = strcmp(__s1[0], v16), !v15)) && (v17 = __s1[1], (*(v11 + 3) ^ __s1[1]) <= 1uLL) && ((v15 = v43[0], v18 = *(v11 + 4), v43[0] == v18) || (v15 = strcmp(v43[0], v18), !v15)))
      {
        v27 = 1;
        v19 = 1;
        if ((v17 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v19 = 0;
        if ((__s1[1] & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      if (__s1[1])
      {
      }

LABEL_16:
      __s1[1] = 0;
      v43[0] = &str_67;
      if (BYTE8(v41))
      {
        if (BYTE8(v41))
        {
        }
      }

      if (v13)
      {
        v20 = v19;
      }

      else
      {
        v20 = 1;
      }

      v13 -= 40;
      v14 = (v14 + 40);
    }

    while (v20 != 1);
    v7 = a3;
    if ((v27 & 1) == 0)
    {
      v12 = *(this + 2);
      goto LABEL_28;
    }

LABEL_31:
    v8 = (v8 + 12);
  }

  while (v8 != v26);
  if (v29)
  {
    re::DynamicArray<re::SkeletalAnimationQueryEntry>::add(a5, v28);
  }

LABEL_34:
  result = v28[0];
  if (v28[0])
  {
    if (v31)
    {
      return (*(*v28[0] + 40))();
    }
  }

  return result;
}

BOOL re::AnimationLibraryMeshMapping::getFirstSkeletalAnimation(uint64_t a1, uint64_t a2, _anonymous_namespace_ *a3)
{
  SkeletalQueryEntry = re::DynamicArray<re::DynamicArray<unsigned int>>::clear(a3);
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = 0;
    v9 = *(a1 + 16);
    while (1)
    {
      v10 = *v9;
      v9 += 20;
      if (v10 < 0)
      {
        break;
      }

      if (v7 == ++v8)
      {
        LODWORD(v8) = *(a1 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  v17 = 0;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  if (v8 != v7)
  {
    do
    {
      SkeletalQueryEntry = re::AnimationLibraryMeshMapping::processForFirstSkeletalQueryEntry(SkeletalQueryEntry, *(a1 + 16) + 80 * v8 + 32, a2, v15, a3);
      v11 = *(a1 + 32);
      if (v11 <= v8 + 1)
      {
        v12 = v8 + 1;
      }

      else
      {
        v12 = *(a1 + 32);
      }

      while (v12 - 1 != v8)
      {
        LODWORD(v8) = v8 + 1;
        if ((*(*(a1 + 16) + 80 * v8) & 0x80000000) != 0)
        {
          goto LABEL_15;
        }
      }

      LODWORD(v8) = v12;
LABEL_15:
      ;
    }

    while (v8 != v11);
  }

  v13 = *(a3 + 2) != 0;
  re::DynamicArray<re::MeshIdentifierAsset>::deinit(v15);
  return v13;
}

BOOL re::AnimationLibraryMeshMapping::getNamedSkeletalAnimation(uint64_t a1, void *a2, uint64_t a3, _anonymous_namespace_ *a4)
{
  re::DynamicArray<re::DynamicArray<unsigned int>>::clear(a4);
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = 0;
    v10 = *(a1 + 16);
    while (1)
    {
      v11 = *v10;
      v10 += 20;
      if (v11 < 0)
      {
        break;
      }

      if (v8 == ++v9)
      {
        LODWORD(v9) = *(a1 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (v9 != v8)
  {
    do
    {
      re::DynamicArray<re::AnimationLibraryMeshMappingData>::DynamicArray(v21, (*(a1 + 16) + 80 * v9 + 32));
      if (v21[2] && (v13 = *v22, *(a3 + 16) > v13) && re::StringID::operator==((*(a3 + 32) + 120 * v13 + 56), a2))
      {
        v14 = re::DynamicArray<re::AnimationLibraryMeshMappingData>::DynamicArray(v18, (*(a1 + 16) + 80 * v9 + 32));
        re::AnimationLibraryMeshMapping::processSkeletalQueryEntry(v14, v18, a4);
        if (v18[0])
        {
          if (v20)
          {
            (*(*v18[0] + 40))();
          }

          v15 = 0;
          v20 = 0;
          memset(v18, 0, sizeof(v18));
          ++v19;
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 1;
      }

      if (v21[0] && v22)
      {
        (*(*v21[0] + 40))();
      }

      if (!v15)
      {
        break;
      }

      v16 = *(a1 + 32);
      v17 = v16 <= v9 + 1 ? v9 + 1 : *(a1 + 32);
      while (v17 - 1 != v9)
      {
        LODWORD(v9) = v9 + 1;
        if ((*(*(a1 + 16) + 80 * v9) & 0x80000000) != 0)
        {
          goto LABEL_28;
        }
      }

      LODWORD(v9) = v17;
LABEL_28:
      ;
    }

    while (v9 != v16);
  }

  return *(a4 + 2) != 0;
}

BOOL re::AnimationLibraryMeshMapping::getAllSkeletalAnimations(uint64_t a1, _anonymous_namespace_ *a2)
{
  re::DynamicArray<re::DynamicArray<unsigned int>>::clear(a2);
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = 0;
    v6 = *(a1 + 16);
    while (1)
    {
      v7 = *v6;
      v6 += 20;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(a1 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 != v4)
  {
    do
    {
      v8 = re::DynamicArray<re::AnimationLibraryMeshMappingData>::DynamicArray(v12, (*(a1 + 16) + 80 * v5 + 32));
      re::AnimationLibraryMeshMapping::processSkeletalQueryEntry(v8, v12, a2);
      if (v12[0])
      {
        if (v14)
        {
          (*(*v12[0] + 40))();
        }

        v14 = 0;
        memset(v12, 0, sizeof(v12));
        ++v13;
      }

      v9 = *(a1 + 32);
      if (v9 <= v5 + 1)
      {
        v10 = v5 + 1;
      }

      else
      {
        v10 = *(a1 + 32);
      }

      while (v10 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(*(a1 + 16) + 80 * v5) & 0x80000000) != 0)
        {
          goto LABEL_19;
        }
      }

      LODWORD(v5) = v10;
LABEL_19:
      ;
    }

    while (v5 != v9);
  }

  return *(a2 + 2) != 0;
}

_DWORD *re::HashTable<re::AssetHandle,re::DynamicArray<re::AnimationLibraryMeshMappingData>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::EntryBase::free(_DWORD *result)
{
  if ((*result & 0x80000000) != 0)
  {
    *result &= ~0x80000000;
    v2 = (result + 8);
    re::AssetHandle::~AssetHandle((result + 2));

    return re::DynamicArray<unsigned long>::deinit(v2);
  }

  return result;
}

uint64_t re::HashTable<re::AssetHandle,re::DynamicArray<re::AnimationLibraryMeshMappingData>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_10;
  }

  v4 = a4 % *(a2 + 24);
  v6 = *(*(a2 + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  v7 = *(a2 + 16);
  if (*(v7 + 80 * v6 + 16) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_10:
    v6 = 0x7FFFFFFF;
    goto LABEL_11;
  }

  v8 = *(v7 + 80 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 80 * v8 + 16) == a3)
      {
        break;
      }

      v8 = *(v7 + 80 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
        goto LABEL_11;
      }
    }

    v5 = v8;
  }

LABEL_11:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

void *re::DynamicArray<re::AnimationLibraryMeshMappingData>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::AnimationLibraryMeshMappingData>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::AnimationLibraryMeshMappingData>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::AnimationLibraryMeshMappingData>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (is_mul_ok(a2, 0xCuLL))
        {
          v2 = 12 * a2;
          result = (*(*result + 32))(result, 12 * a2, 4);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 12 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 12, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::AnimationLibraryMeshMappingData>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

uint64_t re::HashTable<re::AssetHandle,re::DynamicArray<re::AnimationLibraryMeshMappingData>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v33, 0, 36);
          *&v33[36] = 0x7FFFFFFFLL;
          re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v33, v9, v8);
          v11 = *v33;
          *v33 = *a1;
          *a1 = v11;
          v12 = *&v33[16];
          v13 = *(a1 + 16);
          *&v33[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v33[24];
          *&v33[24] = *(a1 + 24);
          v14 = *&v33[32];
          *(a1 + 24) = v15;
          ++*&v33[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 40;
            do
            {
              v19 = v13 + v18;
              if ((*(v13 + v18 - 40) & 0x80000000) != 0)
              {
                v20 = re::HashTable<re::AssetHandle,re::DynamicArray<re::AnimationLibraryMeshMappingData>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::allocEntry(a1, *(v19 + 32) % *(a1 + 24));
                *(v20 + 16) = 0;
                *(v20 + 24) = 0;
                *(v20 + 8) = 0;
                *(v20 + 16) = *(v19 - 24);
                *(v19 - 24) = 0;
                v21 = *(v20 + 8);
                *(v20 + 8) = 0;
                *(v20 + 8) = *(v19 - 32);
                *(v19 - 32) = v21;
                v22 = *(v20 + 24);
                *(v20 + 24) = *(v19 - 16);
                *(v19 - 16) = v22;
                v13 = *&v33[16];
                v23 = *&v33[16] + v18;
                *(v20 + 64) = 0;
                *(v20 + 40) = 0;
                *(v20 + 48) = 0;
                *(v20 + 32) = 0;
                *(v20 + 56) = 0;
                v24 = *v23;
                *(v20 + 32) = *(v23 - 8);
                *(v20 + 40) = v24;
                *(v23 - 8) = 0;
                *v23 = 0;
                v25 = *(v20 + 48);
                *(v20 + 48) = *(v23 + 8);
                *(v23 + 8) = v25;
                v26 = *(v20 + 64);
                *(v20 + 64) = *(v23 + 24);
                *(v23 + 24) = v26;
                ++*(v23 + 16);
                ++*(v20 + 56);
              }

              ++v17;
              v18 += 80;
            }

            while (v17 < v16);
          }

          re::HashTable<re::AssetHandle,re::DynamicArray<re::AnimationLibraryMeshMappingData>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(v33);
        }
      }

      else
      {
        if (v8)
        {
          v29 = 2 * v7;
        }

        else
        {
          v29 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v27 = *(a1 + 16);
    v28 = *(v27 + 80 * v5);
  }

  else
  {
    v27 = *(a1 + 16);
    v28 = *(v27 + 80 * v5);
    *(a1 + 36) = v28 & 0x7FFFFFFF;
  }

  v30 = v27 + 80 * v5;
  *v30 = v28 | 0x80000000;
  v31 = *(a1 + 8);
  *v30 = *(v31 + 4 * a2) | 0x80000000;
  *(v31 + 4 * a2) = v5;
  *(v30 + 72) = a3;
  ++*(a1 + 28);
  return v27 + 80 * v5;
}

double re::HashTable<re::AssetHandle,re::DynamicArray<re::AnimationLibraryMeshMappingData>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::AssetHandle,re::DynamicArray<re::AnimationLibraryMeshMappingData>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 80;
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

uint64_t re::DynamicArray<re::AnimationLibraryMeshMappingData>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::AnimationLibraryMeshMappingData>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::AnimationLibraryMeshMappingData>::copy(a1, a2);
  }

  return a1;
}

void **re::DynamicArray<re::AnimationLibraryMeshMappingData>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<re::AnimationLibraryMeshMappingData>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), 12 * v5);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 12 * v5, (*(a2 + 32) + 12 * v5), 12 * (v4 - v5));
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), 12 * v4);
  }

  v3[2] = v4;
  return result;
}

void sub_1E20F75DC(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_1EE19BB90);

  _Unwind_Resume(a1);
}

void re::anonymous namespace::validationError(void *a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *re::assetTypesLogObjects(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v7 = 138543362;
    *&v7[4] = v3;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Mesh payload validation error: %{public}@", v7, 0xCu);
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (a1)
  {
LABEL_3:
    v5 = *MEMORY[0x1E696A278];
    v6 = v3;
    re::makeResourceSharingError(0x1F6, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v6 forKeys:&v5 count:1], v7);
    *a1 = *v7;
  }

LABEL_4:
}

void sub_1E20F7BC4(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id re::anonymous namespace::extractAttributeWithName(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];
  if (v5)
  {
    [v3 removeObjectForKey:v4];
  }

  return v5;
}

BOOL validateMTLIndexType(re *a1, MTLIndexType *a2)
{
  if (a1 > 1)
  {
    if (a2)
    {
      *a2 = -1;
    }

    v3 = *re::assetTypesLogObjects(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Invalid MTLIndexType when decoding REMeshPartDescriptor", v5, 2u);
    }
  }

  else if (a2)
  {
    *a2 = a1;
  }

  return a1 < 2;
}

BOOL validateMeshPartOptionalFlag(re *a1, char *a2)
{
  if (a1 >= 3)
  {
    v4 = *re::assetTypesLogObjects(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Invalid MeshPartOptionalFlag when decoding REMeshAttributeDescriptor", v6, 2u);
    }
  }

  else
  {
    if (a1 == 2)
    {
      v3 = 2;
    }

    else
    {
      if (a1 != 1)
      {
        *a2 = 0;
        return a1 < 3;
      }

      v3 = 1;
    }

    *a2 = v3;
  }

  return a1 < 3;
}

void sub_1E20F9B44(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::validateAttribute(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = v7;
  if (v7)
  {
    v9 = 48;
    if (a2 == 1)
    {
      v9 = 0;
    }

    v10 = [v7 validateWithPayloadSize:*(a3 + v9) error:a4];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

void sub_1E20FC878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(va);
  _Unwind_Resume(a1);
}

void sub_1E20FCFC0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 16 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 4)
    {
      if (!(a2 >> 60))
      {
        v8 = v7 - v3;
        v9 = v8 >> 3;
        if (v8 >> 3 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(v10);
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    bzero(a1[1], 16 * v6);
    v11 = v4 + 16 * v6;
  }

  a1[1] = v11;
}

uint64_t validateLocalRestPoseFloat3(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != 16 * a1)
  {
    return 0;
  }

  if (a1)
  {
    if (!(a1 >> 60))
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  if (!a4)
  {
    return 1;
  }

  v6 = *a4;
  if (*a4)
  {
    *(a4 + 8) = v6;
    operator delete(v6);
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  v5 = 1;
  *(a4 + 16) = 0;
  return v5;
}

void _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<simd_float4x4>>(unint64_t a1)
{
  if (!(a1 >> 58))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void *re::DynamicOverflowArray<unsigned long long,3ul>::setCapacity(void *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (a2 && !v5)
  {
    result = re::DynamicOverflowArray<unsigned long long,3ul>::setCapacity(v4, a2);
    v6 = *(v4 + 4) + 2;
LABEL_4:
    *(v4 + 4) = v6;
    return result;
  }

  v7 = *(result + 4);
  if (v7)
  {
    v8 = 3;
  }

  else
  {
    v8 = result[3];
  }

  if (v8 != a2)
  {
    v9 = result[1];
    if (v9 <= a2 && (a2 > 3 || (v7 & 1) == 0))
    {
      if (a2 < 4)
      {
        v14 = result + 3;
        v15 = v4[4];
        if (v7)
        {
          v16 = v4 + 3;
        }

        else
        {
          v16 = v4[4];
        }

        memcpy(v14, v16, 8 * v9);
        result = (*(*v5 + 40))(v5, v15);
        v6 = *(v4 + 4) | 1;
        goto LABEL_4;
      }

      if (a2 >> 61)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 8, a2);
        _os_crash();
        __break(1u);
      }

      else
      {
        v2 = 8 * a2;
        v10 = (*(*v5 + 32))(*result, 8 * a2, 8);
        if (v10)
        {
          v12 = v10;
          if (v4[2])
          {
            v13 = v4 + 3;
          }

          else
          {
            v13 = v4[4];
          }

          result = memcpy(v10, v13, 8 * v4[1]);
          v17 = *(v4 + 4);
          if ((v17 & 1) == 0)
          {
            result = (*(**v4 + 40))(*v4, v4[4]);
            v17 = *(v4 + 4);
          }

          *(v4 + 4) = v17 & 0xFFFFFFFE;
          v4[3] = a2;
          v4[4] = v12;
          return result;
        }
      }

      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*v4 + 8));
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<unsigned long long,3ul>::resize(_anonymous_namespace_ *result, unint64_t a2, void *a3)
{
  v4 = result;
  v5 = *(result + 1);
  if (v5 >= a2)
  {
    if (v5 <= a2)
    {
      return result;
    }
  }

  else
  {
    result = re::DynamicOverflowArray<unsigned long long,3ul>::reserve(result, a2);
    v7 = *(v4 + 1);
    if (v7 < a2)
    {
      do
      {
        v8 = v4 + 24;
        if ((*(v4 + 16) & 1) == 0)
        {
          v8 = *(v4 + 4);
        }

        *&v8[8 * v7++] = *a3;
      }

      while (a2 != v7);
    }
  }

  *(v4 + 1) = a2;
  *(v4 + 4) += 2;
  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<unsigned long long,3ul>::reserve(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if ((*(result + 4) & 1) == 0)
    {
LABEL_3:
      v4 = *(v3 + 3);
      goto LABEL_6;
    }
  }

  else
  {
    result = re::DynamicOverflowArray<unsigned long long,3ul>::setCapacity(v3, a2);
    v5 = *(v3 + 4) + 2;
    *(v3 + 4) = v5;
    if ((v5 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 3;
LABEL_6:
  if (v4 < a2)
  {

    return re::DynamicOverflowArray<unsigned long long,3ul>::setCapacity(v3, a2);
  }

  return result;
}

void *re::allocInfo_AudioFileGroupAsset(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_105, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_105))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19BBD8, "AudioFileGroupAsset");
    __cxa_guard_release(&_MergedGlobals_105);
  }

  return &unk_1EE19BBD8;
}

void re::initInfo_AudioFileGroupAsset(re *this, re::IntrospectionBase *a2)
{
  v11[0] = 0xFE91415CC2D84746;
  v11[1] = "AudioFileGroupAsset";
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  *(this + 2) = v12;
  if ((atomic_load_explicit(&qword_1EE19BBB8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19BBB8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicArray<re::AssetHandle>>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "assets";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0x800000001;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE19BBB0 = v9;
      __cxa_guard_release(&qword_1EE19BBB8);
    }
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE19BBB0;
  *(this + 9) = re::internal::defaultConstruct<re::AudioFileGroupAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AudioFileGroupAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::AudioFileGroupAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::AudioFileGroupAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v10 = v12;
}

re::AudioFileGroupAsset *re::AudioFileGroupAsset::AudioFileGroupAsset(re::AudioFileGroupAsset *this)
{
  *(this + 1) = 0;
  *this = &unk_1F5CCA008;
  *(this + 5) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
    ;
  }

  *(this + 6) = __buf;
  return this;
}

void re::AudioFileGroupAsset::~AudioFileGroupAsset(re::AudioFileGroupAsset *this)
{
  re::DynamicArray<re::AssetHandle>::deinit(this + 8);
}

{
  re::DynamicArray<re::AssetHandle>::deinit(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::AudioFileGroupAsset::assetType(re::AudioFileGroupAsset *this)
{
  {
    re::AudioFileGroupAsset::assetType(void)::type = "AudioFileGroup";
    qword_1EE1C6C80 = 0;
    re::AssetType::generateCompiledExtension(&re::AudioFileGroupAsset::assetType(void)::type);
  }

  return &re::AudioFileGroupAsset::assetType(void)::type;
}

uint64_t re::AudioFileGroupAsset::isCompletelyLoaded(uint64_t this)
{
  v1 = *(this + 24);
  if (!v1)
  {
    return 1;
  }

  v2 = *(this + 40);
  v3 = 24 * v1;
  while (1)
  {
    v4 = *(v2 + 1);
    if (!v4)
    {
      break;
    }

    v5 = atomic_load((v4 + 896));
    if (v5 != 2)
    {
      break;
    }

    v6 = *(v2 + 1);
    if (!v6)
    {
      re::AudioFileAsset::assetType(this);
      return 0;
    }

    v7 = *(v6 + 280);
    if (v7 != re::AudioFileAsset::assetType(this))
    {
      return 0;
    }

    this = re::AssetHandle::loadedAsset<re::AudioFileAsset>(v2);
    if (!this)
    {
      return this;
    }

    if ((*(this + 161) & 1) == 0)
    {
      return 0;
    }

    v2 = (v2 + 24);
    v3 -= 24;
    if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

void re::AudioFileGroupAsset::completeLoad(re::AudioFileGroupAsset *this, AudioSceneService *a2)
{
  v2 = *(this + 3);
  if (v2)
  {
    v4 = *(this + 5);
    v5 = 24 * v2;
    do
    {
      v6 = *(v4 + 1);
      if (v6)
      {
        v7 = *(v6 + 280);
        this = re::AudioFileAsset::assetType(this);
        if (v7 == this)
        {
          ++*(*(v4 + 1) + 276);
          this = re::AssetHandle::loadedAsset<re::AudioFileAsset>(v4);
          if (this)
          {
            re::AudioFileAsset::completeLoad(this, a2);
          }
        }
      }

      else
      {
        this = re::AudioFileAsset::assetType(this);
      }

      v4 = (v4 + 24);
      v5 -= 24;
    }

    while (v5);
  }
}

void re::AudioFileGroupAssetLoader::~AudioFileGroupAssetLoader(re::AudioFileGroupAssetLoader *this)
{
  *(this + 3) = 0;
}

{
  *(this + 3) = 0;
  JUMPOUT(0x1E6906520);
}

uint64_t re::AudioFileGroupAssetLoader::unloadAsset(re::AudioFileGroupAssetLoader *this, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(this + 3);
  if (v3 && (v3 = (*(*v3 + 24))(v3)) != 0)
  {
    result = (*(*v3 + 920))(v3, a2[6]);
  }

  else
  {
    v5 = *re::audioLogObjects(v3);
    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v7 = a2[6];
      v8 = 134217984;
      v9 = v7;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "[CoreRE] [AudioFileGroupAssetLoader] Cannot unload audio file group asset data for assetID: %llu  without a valid audio service.", &v8, 0xCu);
    }

    else if (!a2)
    {
      return result;
    }
  }

  v6 = re::globalAllocators(result)[2];
  re::DynamicArray<re::AssetHandle>::deinit((a2 + 1));
  return (*(*v6 + 40))(v6, a2);
}

uint64_t re::AudioFileGroupAssetLoader::introspectionType(re::AudioFileGroupAssetLoader *this)
{
  if ((atomic_load_explicit(&qword_1EE19BBD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19BBD0))
  {
    qword_1EE19BBC8 = re::internal::getOrCreateInfo("AudioFileGroupAsset", re::allocInfo_AudioFileGroupAsset, re::initInfo_AudioFileGroupAsset, &unk_1EE19BBC0, 0);
    __cxa_guard_release(&qword_1EE19BBD0);
  }

  return qword_1EE19BBC8;
}

void re::AudioFileGroupAssetLoader::unregisterAsset(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      v4 = *(*v3 + 152);

      v4();
    }

    else
    {
      v5 = *re::audioLogObjects(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = *(a2 + 48);
        v7 = 134217984;
        v8 = v6;
        _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "[CoreRE] [AudioFileGroupAssetLoader] Cannot unregister asset %llu without a valid audio scene service.", &v7, 0xCu);
      }
    }
  }
}

uint64_t *re::RenderGraphAsset::assetType(re::RenderGraphAsset *this)
{
  {
    re::RenderGraphAsset::assetType(void)::type = "RenderGraph";
    qword_1EE1C6F58 = 0;
    re::AssetType::generateCompiledExtension(&re::RenderGraphAsset::assetType(void)::type);
  }

  return &re::RenderGraphAsset::assetType(void)::type;
}

uint64_t re::RenderGraphAssetLoader::introspectionType(re::RenderGraphAssetLoader *this)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::RenderGraphAsset>(BOOL)::info = re::internal::getOrCreateInfo("RenderGraphAsset", re::allocInfo_RenderGraphAsset, re::initInfo_RenderGraphAsset, &re::internal::introspectionInfoStorage<re::RenderGraphAsset>, 0);
      v1 = &unk_1EE187000;
    }
  }

  return v1[214];
}

re *re::internal::destroyPersistent<re::RenderGraphAsset>(re *result, uint64_t a2, void (***a3)(void))
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    (**a3)(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t re::RenderGraphAssetLoader::registerAsset(re::RenderGraphAssetLoader *this, char *a2, const re::ExistingAssetInformation *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  *(a2 + 46) = re::ServiceLocator::service<re::AssetService>(*(this + 1));
  if (*(a3 + 13))
  {
    v6 = *(a3 + 14);
  }

  else
  {
    v6 = a3 + 105;
  }

  v11 = v6;
  v12 = strlen(v6);
  re::DynamicString::operator=((a2 + 376), &v11);
  if (a2[384])
  {
    v7 = *(a2 + 49);
  }

  else
  {
    v7 = a2 + 385;
  }

  v8 = strlen(v7);
  if (v8)
  {
    MurmurHash3_x64_128(v7, v8, 0, &v11);
    v9 = (v12 + (v11 << 6) + (v11 >> 2) - 0x61C8864680B583E9) ^ v11;
  }

  else
  {
    v9 = 0;
  }

  *(a2 + 51) = v9;
  return re::AssetLoader::registerAsset(this, a2, a3);
}

uint64_t re::RenderGraphAssetLoader::createRuntimeData(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a2 + 144) == *(a2 + 772))
  {
LABEL_2:
    re::RenderGraphFile::initConnectionSourceDataList(a2 + 8);
    return 1;
  }

  v4 = re::RenderGraphFile::calculateValidity((a2 + 8), v12);
  if ((v12[0] & 1) == 0)
  {
    v6 = *re::assetTypesLogObjects(v4);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    if (*(a2 + 24))
    {
      v8 = *(a2 + 32);
    }

    else
    {
      v8 = a2 + 25;
    }

    if (v14)
    {
      v9 = v16;
    }

    else
    {
      v9 = v15;
    }

    *buf = 136315394;
    *v18 = v8;
    *&v18[8] = 2080;
    *&v18[10] = v9;
    v10 = "Failed to calculate validity of render graph asset %s: %s";
    goto LABEL_31;
  }

  re::RenderGraphFile::initRuntimeNodeSettings((a2 + 8), buf);
  v5 = re::Result<re::Unit,re::DynamicString>::operator=(v12, buf);
  if ((buf[0] & 1) == 0)
  {
    v5 = *&v18[4];
    if (*&v18[4])
    {
      if (v18[12])
      {
        v5 = (*(**&v18[4] + 40))();
      }
    }
  }

  if (v12[0])
  {
    goto LABEL_2;
  }

  v6 = *re::assetTypesLogObjects(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    if (*(a2 + 24))
    {
      v7 = *(a2 + 32);
    }

    else
    {
      v7 = a2 + 25;
    }

    if (v14)
    {
      v11 = v16;
    }

    else
    {
      v11 = v15;
    }

    *buf = 136315394;
    *v18 = v7;
    *&v18[8] = 2080;
    *&v18[10] = v11;
    v10 = "Failed to initialize runtime node settings for render graph asset %s: %s";
LABEL_31:
    _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, v10, buf, 0x16u);
  }

LABEL_13:
  if (v12[0] & 1) == 0 && v13 && (v14)
  {
    (*(*v13 + 40))();
  }

  return 0;
}

uint64_t re::Result<re::Unit,re::DynamicString>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if ((*a2 & 1) == 0)
    {
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 32) = *(a2 + 32);
      v3 = *(a2 + 16);
      *(a1 + 8) = *(a2 + 8);
      *(a2 + 8) = 0;
      v4 = *(a2 + 24);
      *(a2 + 32) = 0;
      v6 = *(a1 + 16);
      v5 = *(a1 + 24);
      *(a1 + 16) = v3;
      *(a1 + 24) = v4;
      *a1 = 0;
      *(a2 + 16) = v6;
      *(a2 + 24) = v5;
    }
  }

  else
  {
    v7 = (a1 + 8);
    if (*a2)
    {
      re::DynamicString::deinit(v7);
      *a1 = 1;
    }

    else
    {
      re::DynamicString::operator=(v7, (a2 + 8));
    }
  }

  return a1;
}

void *re::allocInfo_RenderGraphAsset(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_106, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_106))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19BC80, "RenderGraphAsset");
    __cxa_guard_release(&_MergedGlobals_106);
  }

  return &unk_1EE19BC80;
}

void re::initInfo_RenderGraphAsset(re *this, re::IntrospectionBase *a2)
{
  v10[0] = 0xD47C10C081B17130;
  v10[1] = "RenderGraphAsset";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE19BC78, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19BC78);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphFile(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "provider";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0x800000001;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE19BC70 = v8;
      __cxa_guard_release(&qword_1EE19BC78);
    }
  }

  *(this + 2) = 0x36800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE19BC70;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v9 = v11;
}

re::RenderGraphAsset *re::RenderGraphAsset::RenderGraphAsset(re::RenderGraphAsset *this)
{
  *this = &unk_1F5CCA328;
  *(this + 1) = &unk_1F5CC5700;
  *(this + 2) = 0u;
  *(this + 1) = 0u;
  v2 = (this + 16);
  v3 = re::DynamicString::setCapacity(v2, 0);
  *(this + 1) = &unk_1F5CC4EA8;
  *(this + 6) = 0;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 0;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 48) = 0;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 58) = 0;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 68) = 0;
  *(this + 78) = 0;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 88) = 0;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  re::DynamicString::setCapacity(this + 47, 0);
  *(this + 436) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 452) = 0x7FFFFFFFLL;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 124) = 0;
  *(this + 500) = 0x7FFFFFFFLL;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 136) = 0;
  *(this + 548) = 0x7FFFFFFFLL;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 148) = 0;
  *(this + 596) = 0x7FFFFFFFLL;
  *(this + 160) = 0;
  *(this + 38) = 0u;
  *(this + 39) = 0u;
  *(this + 644) = 0x7FFFFFFFLL;
  *(this + 41) = 0u;
  *(this + 42) = 0u;
  *(this + 172) = 0;
  *(this + 692) = 0x7FFFFFFFLL;
  *(this + 88) = 0;
  *(this + 712) = 1;
  *(this + 45) = 0u;
  *(this + 46) = 0u;
  *(this + 47) = 0u;
  *(this + 764) = 0u;
  *(this + 780) = 0x7FFFFFFFLL;
  *(this + 101) = 0;
  *(this + 204) = 0;
  *(this + 792) = 0u;
  *(this + 108) = 0;
  *(this + 214) = 0;
  *(this + 824) = 0u;
  *(this + 840) = 0u;
  return this;
}

void re::RenderGraphAsset::~RenderGraphAsset(re::RenderGraphAsset *this)
{
  *this = &unk_1F5CCA328;
  re::RenderGraphFile::~RenderGraphFile((this + 8));
}

{
  *this = &unk_1F5CCA328;
  re::RenderGraphFile::~RenderGraphFile((this + 8));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::AnimationLibraryAsset::assetType(re::AnimationLibraryAsset *this)
{
  {
    re::AnimationLibraryAsset::assetType(void)::type = "AnimationLibraryAsset";
    qword_1EE1C69A0 = 0;
    re::AssetType::generateCompiledExtension(&re::AnimationLibraryAsset::assetType(void)::type);
  }

  return &re::AnimationLibraryAsset::assetType(void)::type;
}

uint64_t re::AnimationLibraryAsset::buildAsset(_anonymous_namespace_ *a1, uint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 2);
  if (v2)
  {
    v4 = a1;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      *&v19.var0 = 0;
      v19.var1 = &str_67;
      memset(v20, 0, sizeof(v20));
      if (v2 <= v6)
      {
        break;
      }

      v8 = *(v4 + 4) + v5;
      if (*(v8 + 8))
      {
        v9 = *(v8 + 16);
      }

      else
      {
        v9 = (v8 + 9);
      }

      *&v30.var0 = 0;
      v30.var1 = &str_67;
      v11 = v30;
      *&v30.var0 = 0;
      v30.var1 = &str_67;
      var0 = v19.var0;
      var1 = v19.var1;
      v19 = v11;
      if (var0)
      {
        if (*&v30.var0)
        {
          if (*&v30.var0)
          {
          }
        }
      }

      v2 = *(a2 + 16);
      if (v2 <= v6)
      {
        goto LABEL_25;
      }

      v14 = *(a2 + 32) + v5;
      if (*(v14 + 8))
      {
        v15 = *(v14 + 16);
      }

      else
      {
        v15 = (v14 + 9);
      }

      if (!v7)
      {
        v17 = re::globalAllocators(v16);
        v7 = (*(*v17[2] + 32))(v17[2], 224, 8);
        *(v7 + 176) = 0u;
        *(v7 + 192) = 0u;
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
        *(v7 + 196) = 0x7FFFFFFF;
        *(v7 + 208) = 0;
        *(v7 + 216) = &str_67;
        re::AnimationLibraryAsset::init(v7, 0);
      }

      re::DynamicArray<re::NamedAnimationLibraryEntry>::add((v7 + 40), &v19);
      re::AssetHandle::~AssetHandle(v20);
      if (*&v19.var0)
      {
        if (*&v19.var0)
        {
        }
      }

      ++v6;
      v2 = *(v4 + 2);
      v5 += 32;
      if (v6 >= v2)
      {
        return v7;
      }
    }

    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    v25 = 797;
    v26 = 2048;
    v27 = v6;
    v28 = 2048;
    v29 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_25:
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    v25 = 797;
    v26 = 2048;
    v27 = v6;
    v28 = 2048;
    v29 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return 0;
}

void re::AnimationLibraryAsset::init(re::AnimationLibraryAsset *this, re::Allocator *a2)
{
  v2 = a2;
  if (!a2)
  {
  }

  *this = v2;
  re::DynamicArray<re::SkeletalAnimationLibraryEntry>::setCapacity(this, 0);
  ++*(this + 6);
  *(this + 5) = v2;
  re::DynamicArray<re::NamedAnimationLibraryEntry>::setCapacity(this + 5, 0);
  *(this + 15) = v2;
  v4 = this + 120;
  ++*(v4 - 14);
  re::DynamicArray<re::AssetHandle>::setCapacity(v4, 0);
  ++*(v4 + 6);

  re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init((v4 + 40), v2, 3);
}

re::AssetHandle *re::DynamicArray<re::NamedAnimationLibraryEntry>::add(_anonymous_namespace_ *this, StringID *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::NamedAnimationLibraryEntry>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = re::StringID::StringID((*(this + 4) + 40 * v4), a2);
  result = re::AssetHandle::AssetHandle((v5 + 16), &a2[1]);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void *re::DynamicArray<re::SkeletalAnimationLibraryEntry>::add(void *this, uint64_t a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::SkeletalAnimationLibraryEntry>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = v3[4] + 120 * v4;
  *v5 = *a2;
  v6 = *(a2 + 8);
  *(v5 + 8) = *(v5 + 8) & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 8) = *(a2 + 8) & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = &str_67;
  v7 = *(a2 + 24);
  *(v5 + 24) = *(v5 + 24) & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  *(v5 + 24) = *(a2 + 24) & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  *(v5 + 32) = *(a2 + 32);
  *(a2 + 24) = 0;
  *(a2 + 32) = &str_67;
  v8 = *(a2 + 40);
  *(v5 + 40) = *(v5 + 40) & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  *(v5 + 40) = *(a2 + 40) & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  *(v5 + 48) = *(a2 + 48);
  *(a2 + 40) = 0;
  *(a2 + 48) = &str_67;
  v9 = *(a2 + 56);
  *(v5 + 56) = *(v5 + 56) & 0xFFFFFFFFFFFFFFFELL | v9 & 1;
  *(v5 + 56) = *(a2 + 56) & 0xFFFFFFFFFFFFFFFELL | v9 & 1;
  *(v5 + 64) = *(a2 + 64);
  *(a2 + 56) = 0;
  *(a2 + 64) = &str_67;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  *(v5 + 80) = *(a2 + 80);
  *(a2 + 80) = 0;
  v10 = *(v5 + 72);
  *(v5 + 72) = 0;
  *(v5 + 72) = *(a2 + 72);
  *(a2 + 72) = v10;
  v11 = *(v5 + 88);
  *(v5 + 88) = *(a2 + 88);
  *(a2 + 88) = v11;
  *(v5 + 96) = 0;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  *(v5 + 104) = *(a2 + 104);
  *(a2 + 104) = 0;
  v12 = *(v5 + 96);
  *(v5 + 96) = 0;
  *(v5 + 96) = *(a2 + 96);
  *(a2 + 96) = v12;
  v13 = *(v5 + 112);
  *(v5 + 112) = *(a2 + 112);
  *(a2 + 112) = v13;
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

uint64_t re::AnimationLibraryAsset::buildAsset(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 16);
  if (!v5)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  v9 = &v39;
  v35 = a4;
  do
  {
    v33 = a1[2];
    if (v33)
    {
      v10 = 0;
      do
      {
        v11 = a1[2];
        if (v11 <= v10)
        {
          goto LABEL_57;
        }

        v34 = v10;
        v12 = (a1[4] + (v10 << 9));
        v13 = v12[21];
        if (v13)
        {
          v14 = 0;
          v10 = 0;
          v15 = 72;
          v38 = v12[21];
          while (1)
          {
            v16 = v12[21];
            if (v16 <= v10)
            {
              break;
            }

            v16 = *(a4 + 16);
            if (v16 <= v8)
            {
              goto LABEL_52;
            }

            v16 = *(v12[23] + v14);
            if (*(*(a4 + 32) + 8 * v8) == v16 && a1[12] > v16)
            {
              *(&v39 + 1) = 0;
              *&v40 = &str_67;
              *(&v40 + 1) = 0;
              *&v41 = &str_67;
              *(&v41 + 1) = 0;
              *&v42 = &str_67;
              *(&v42 + 1) = 0;
              *&v43[0] = &str_67;
              *(v43 + 8) = 0u;
              memset(&v43[1] + 8, 0, 32);
              LOBYTE(v39) = 2;
              re::StringID::operator=(&v39 + 1, v12);
              v9 = v12[26];
              if (v9 <= v10)
              {
                goto LABEL_53;
              }

              v18 = re::StringID::operator=(&v40 + 1, (v12[28] + v15));
              v9 = *(a2 + 16);
              if (v9 <= v8)
              {
                goto LABEL_54;
              }

              v19 = *(a2 + 32) + 32 * v8;
              if (*(v19 + 8))
              {
                v20 = *(v19 + 16);
              }

              else
              {
                v20 = (v19 + 9);
              }

              v51[0] = 0;
              v51[1] = &str_67;
              v22 = v51[0];
              v23 = v51[1];
              v51[0] = 0;
              v51[1] = &str_67;
              v24 = BYTE8(v42);
              *(&v42 + 1) = v22;
              *&v43[0] = v23;
              if (v24)
              {
                if (v51[0])
                {
                  if (v51[0])
                  {
                  }
                }
              }

              v9 = a1[12];
              if (v9 <= v16)
              {
                goto LABEL_55;
              }

              v26 = re::StringID::operator=(&v41 + 1, (a1[14] + 112 * v16));
              v16 = *(a5 + 16);
              if (v16 <= v8)
              {
                goto LABEL_56;
              }

              v27 = *(a5 + 32) + 32 * v8;
              if (*(v27 + 8))
              {
                v28 = *(v27 + 16);
              }

              else
              {
                v28 = (v27 + 9);
              }

              v13 = v38;
              if (!v7)
              {
                v30 = re::globalAllocators(v29);
                v7 = (*(*v30[2] + 32))(v30[2], 224, 8);
                *(v7 + 176) = 0u;
                *(v7 + 192) = 0u;
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
                *(v7 + 196) = 0x7FFFFFFF;
                *(v7 + 208) = 0;
                *(v7 + 216) = &str_67;
                re::AnimationLibraryAsset::init(v7, 0);
              }

              re::DynamicArray<re::SkeletalAnimationLibraryEntry>::add(v7, &v39);
              re::AssetHandle::~AssetHandle(&v43[2]);
              re::AssetHandle::~AssetHandle((v43 + 8));
              v9 = &v39;
              if (BYTE8(v42))
              {
                if (BYTE8(v42))
                {
                }
              }

              *(&v42 + 1) = 0;
              *&v43[0] = &str_67;
              if (BYTE8(v41))
              {
                if (BYTE8(v41))
                {
                }
              }

              *(&v41 + 1) = 0;
              *&v42 = &str_67;
              if (BYTE8(v40))
              {
                if (BYTE8(v40))
                {
                }
              }

              *(&v40 + 1) = 0;
              *&v41 = &str_67;
              if (BYTE8(v39))
              {
                if (BYTE8(v39))
                {
                }
              }

              a4 = v35;
            }

            ++v10;
            v15 += 256;
            v14 += 144;
            if (v13 == v10)
            {
              goto LABEL_45;
            }
          }

          *v44 = 0;
          v42 = 0u;
          v43[0] = 0u;
          v40 = 0u;
          v41 = 0u;
          v39 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v51[0]) = 136315906;
          *(v51 + 4) = "operator[]";
          WORD2(v51[1]) = 1024;
          *(&v51[1] + 6) = 797;
          WORD1(v51[2]) = 2048;
          *(&v51[2] + 4) = v10;
          WORD2(v51[3]) = 2048;
          *(&v51[3] + 6) = v16;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_52:
          *v44 = 0;
          v42 = 0u;
          v43[0] = 0u;
          v40 = 0u;
          v41 = 0u;
          v39 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v51[0]) = 136315906;
          *(v51 + 4) = "operator[]";
          WORD2(v51[1]) = 1024;
          *(&v51[1] + 6) = 797;
          WORD1(v51[2]) = 2048;
          *(&v51[2] + 4) = v8;
          WORD2(v51[3]) = 2048;
          *(&v51[3] + 6) = v16;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_53:
          v52 = 0u;
          v53 = 0u;
          memset(v51, 0, sizeof(v51));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v44 = 136315906;
          *&v44[4] = "operator[]";
          v45 = 1024;
          v46 = 797;
          v47 = 2048;
          v48 = v10;
          v49 = 2048;
          v50 = v9;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_54:
          v52 = 0u;
          v53 = 0u;
          memset(v51, 0, sizeof(v51));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v44 = 136315906;
          *&v44[4] = "operator[]";
          v45 = 1024;
          v46 = 797;
          v47 = 2048;
          v48 = v8;
          v49 = 2048;
          v50 = v9;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_55:
          v52 = 0u;
          v53 = 0u;
          memset(v51, 0, sizeof(v51));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v44 = 136315906;
          *&v44[4] = "operator[]";
          v45 = 1024;
          v46 = 797;
          v47 = 2048;
          v48 = v16;
          v49 = 2048;
          v50 = v9;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_56:
          v11 = v44;
          v52 = 0u;
          v53 = 0u;
          memset(v51, 0, sizeof(v51));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v44 = 136315906;
          *&v44[4] = "operator[]";
          v45 = 1024;
          v46 = 797;
          v47 = 2048;
          v48 = v8;
          v49 = 2048;
          v50 = v16;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_57:
          *v44 = 0;
          v42 = 0u;
          v43[0] = 0u;
          v40 = 0u;
          v41 = 0u;
          v39 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v51[0]) = 136315906;
          *(v51 + 4) = "operator[]";
          WORD2(v51[1]) = 1024;
          *(&v51[1] + 6) = 797;
          WORD1(v51[2]) = 2048;
          *(&v51[2] + 4) = v10;
          WORD2(v51[3]) = 2048;
          *(&v51[3] + 6) = v11;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

LABEL_45:
        v10 = v34 + 1;
      }

      while (v34 + 1 != v33);
      v5 = *(a2 + 16);
    }

    ++v8;
  }

  while (v8 < v5);
  return v7;
}

uint64_t re::DynamicArray<re::SkeletalAnimationLibraryEntry>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 0;
        v6 = 120 * v4;
        do
        {
          re::AssetHandle::~AssetHandle((v3 + v5 + 96));
          re::AssetHandle::~AssetHandle((v3 + v5 + 72));
          re::StringID::destroyString((v3 + v5 + 56));
          re::StringID::destroyString((v3 + v5 + 40));
          re::StringID::destroyString((v3 + v5 + 24));
          re::StringID::destroyString((v3 + v5 + 8));
          v5 += 120;
        }

        while (v6 != v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::NamedAnimationLibraryEntry>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 40 * v4;
        do
        {
          re::AssetHandle::~AssetHandle((v3 + 16));
          re::StringID::destroyString(v3);
          v3 += 40;
          v5 -= 40;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void re::AnimationLibraryAsset::insertEntry(uint64_t a1, re::AssetHandle *a2, unint64_t a3)
{
  if (*(a1 + 136) <= a3)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "entryIndex < animationLibraryEntries.size()", "insertEntry", 213);
    _os_crash();
    __break(1u);
  }

  else
  {
    re::DynamicArray<re::AssetHandle>::insert((a1 + 120), a3, a2);
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    v18 = 0x7FFFFFFFLL;
    v5 = *(a1 + 192);
    if (v5)
    {
      v6 = 0;
      v7 = *(a1 + 176);
      while (1)
      {
        v8 = *v7;
        v7 += 8;
        if (v8 < 0)
        {
          break;
        }

        if (v5 == ++v6)
        {
          LODWORD(v6) = *(a1 + 192);
          break;
        }
      }
    }

    else
    {
      LODWORD(v6) = 0;
    }

LABEL_18:
    while (v6 != v5)
    {
      v9 = *(a1 + 176) + 32 * v6;
      v12 = *(v9 + 24);
      v10 = (v9 + 24);
      v11 = v12;
      v13 = (v10 - 2);
      if (v12 >= a3)
      {
        v15 = v11 + 1;
        re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v16, v13, &v15);
      }

      else
      {
        re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v16, v13, v10);
      }

      v14 = *(a1 + 192);
      if (v14 <= v6 + 1)
      {
        v14 = v6 + 1;
      }

      while (v14 - 1 != v6)
      {
        LODWORD(v6) = v6 + 1;
        if ((*(*(a1 + 176) + 32 * v6) & 0x80000000) != 0)
        {
          goto LABEL_18;
        }
      }

      LODWORD(v6) = v14;
    }

    re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=((a1 + 160), v16);
    re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v16);
  }
}

uint64_t re::DynamicArray<re::AssetHandle>::insert(_anonymous_namespace_ *this, unint64_t a2, re::AssetHandle *a3)
{
  v4 = *(this + 2);
  if (v4 + 1 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::AssetHandle>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v7 = (*(this + 4) + 24 * v4);
  if (v4 <= a2)
  {
    result = re::AssetHandle::AssetHandle(v7, a3);
  }

  else
  {
    *v7 = *(v7 - 24);
    *(v7 - 3) = 0;
    *(v7 - 2) = 0;
    *(v7 + 2) = *(v7 - 1);
    *(v7 - 1) = 0;
    v8 = *(this + 4);
    v9 = *(this + 2);
    v10 = v8 + 24 * v9 - 24;
    if (v10 != v8 + 24 * a2)
    {
      v11 = 24 * a2 - 24 * v9 + 24;
      v12 = v10;
      do
      {
        v13 = *(v12 - 3);
        v12 = (v12 - 24);
        v14 = *(v10 - 16);
        v15 = *(v10 - 8);
        *v12 = *v10;
        v16 = *(v10 + 16);
        *(v10 + 8) = v14;
        *(v10 + 16) = v15;
        *(v10 - 8) = v16;
        *v10 = v13;
        v10 = v12;
        v11 += 24;
      }

      while (v11);
      v8 = *(this + 4);
    }

    result = re::AssetHandle::operator=(v8 + 24 * a2, a3);
  }

  ++*(this + 2);
  ++*(this + 6);
  return result;
}

re::StringID *re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=(re::StringID *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
      if (*a2)
      {
        v4 = *(a2 + 28);
        if (*(a1 + 6) < v4)
        {
          re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, v4);
        }

        re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(a1, a2);
        ++*(a1 + 10);
      }
    }

    else
    {
      v5 = *a2;
      if (*a2)
      {
        if (*(a2 + 28) <= 3u)
        {
          v6 = 3;
        }

        else
        {
          v6 = *(a2 + 28);
        }

        re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, v5, v6);
        re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(a1, a2);
      }
    }
  }

  return a1;
}

double re::AnimationLibraryAsset::removeEntry(re::AnimationLibraryAsset *this, unint64_t a2)
{
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v26 = 0x7FFFFFFFLL;
  v4 = *(this + 48);
  if (v4)
  {
    v5 = 0;
    v6 = *(this + 22);
    while (1)
    {
      v7 = *v6;
      v6 += 8;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(this + 48);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

LABEL_19:
  while (v5 != v4)
  {
    v8 = *(this + 22) + 32 * v5;
    v11 = *(v8 + 24);
    v9 = (v8 + 24);
    v10 = v11;
    v12 = (v9 - 2);
    v13 = v11 > a2;
    if (v11 >= a2)
    {
      if (v13)
      {
        v27 = v10 - 1;
        re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v24, v12, &v27);
      }
    }

    else
    {
      re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v24, v12, v9);
    }

    v14 = *(this + 48);
    if (v14 <= v5 + 1)
    {
      v14 = v5 + 1;
    }

    while (v14 - 1 != v5)
    {
      LODWORD(v5) = v5 + 1;
      if ((*(*(this + 22) + 32 * v5) & 0x80000000) != 0)
      {
        goto LABEL_19;
      }
    }

    LODWORD(v5) = v14;
  }

  re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=((this + 160), v24);
  re::DynamicArray<re::AssetHandle>::removeStableAt(this + 120, a2);
  v15 = *(this + 26);
  if (v15 > 1 || (v16 = *(this + 27)) == 0 || *v16)
  {
    v17 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v15 >> 31) ^ (v15 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v15 >> 31) ^ (v15 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 160, this + 26, v17 ^ (v17 >> 31), &v27);
    if (HIDWORD(v28) == 0x7FFFFFFF)
    {
      v27 = 0;
      v28 = &str_67;
      v18 = re::StringID::operator=((this + 208), &v27);
      if (v27)
      {
      }
    }
  }

  return re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v24);
}

void re::DynamicArray<re::AssetHandle>::removeStableAt(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v2 - 1 > a2)
  {
    v4 = *(a1 + 32);
    v5 = v4 + 24 * a2 + 24;
    if (v5 != v4 + 24 * v2)
    {
      v6 = 24 * v2 - 24 * a2 - 24;
      do
      {
        v8 = *(v5 - 24);
        v7 = *(v5 - 16);
        *(v5 - 24) = *v5;
        v9 = *(v5 - 8);
        *(v5 - 8) = *(v5 + 16);
        *v5 = v8;
        *(v5 + 8) = v7;
        *(v5 + 16) = v9;
        v5 += 24;
        v6 -= 24;
      }

      while (v6);
    }
  }

  re::AssetHandle::~AssetHandle((*(a1 + 32) + 24 * v2 - 24));
  --*(a1 + 16);
  ++*(a1 + 24);
}

uint64_t re::AnimationLibraryAsset::setEntry(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v5 = a1;
  v20 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 192);
  if (v6)
  {
    v7 = 0;
    v8 = *(a1 + 176);
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
        LODWORD(v7) = *(a1 + 192);
        break;
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  while (v7 != v6)
  {
    v10 = *(v5 + 176) + 32 * v7;
    if (*(v10 + 24) == a2)
    {
      v11 = *re::animationLogObjects(a1);
      a1 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (a1)
      {
        v12 = *(v10 + 16);
        *buf = 136315138;
        *&buf[4] = v12;
        _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "Animation library asset - entry has an associated key. Changing they asset associated with key %s", buf, 0xCu);
      }
    }

    v13 = *(v5 + 192);
    if (v13 <= v7 + 1)
    {
      v13 = v7 + 1;
    }

    while (v13 - 1 != v7)
    {
      LODWORD(v7) = v7 + 1;
      if ((*(*(v5 + 176) + 32 * v7) & 0x80000000) != 0)
      {
        goto LABEL_18;
      }
    }

    LODWORD(v7) = v13;
LABEL_18:
    ;
  }

  if (*(v5 + 136) <= a2)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return re::AssetHandle::operator=(*(v5 + 152) + 24 * a2, a3);
}

re *re::internal::destroyPersistent<re::AnimationLibraryAsset>(re *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::StringID::destroyString((a3 + 208));
    re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit((a3 + 160));
    re::DynamicArray<re::AssetHandle>::deinit(a3 + 120);
    re::DynamicArray<re::NamedAnimationLibraryEntry>::deinit(a3 + 80);
    re::DynamicArray<re::NamedAnimationLibraryEntry>::deinit(a3 + 40);
    re::DynamicArray<re::SkeletalAnimationLibraryEntry>::deinit(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t re::AnimationLibraryAssetLoader::introspectionType(re::AnimationLibraryAssetLoader *this)
{
  v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v3)
    {
      re::introspect<re::AnimationLibraryAsset>(BOOL)::info = re::internal::getOrCreateInfo("AnimationLibraryAsset", re::allocInfo_AnimationLibraryAsset, re::initInfo_AnimationLibraryAsset, &re::internal::introspectionInfoStorage<re::AnimationLibraryAsset>, 0);
      v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v1 + 346);
}

void *re::allocInfo_TransformAnimationLibraryEntry(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19BD18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19BD18))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19BED0, "TransformAnimationLibraryEntry");
    __cxa_guard_release(&qword_1EE19BD18);
  }

  return &unk_1EE19BED0;
}

void re::initInfo_TransformAnimationLibraryEntry(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0x72E8C42152E0C5ELL;
  v15[1] = "TransformAnimationLibraryEntry";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE19BD20, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19BD20);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::StringID>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "animationName";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE19BD88 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_AssetHandle(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "animationHandle";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x1000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE19BD90 = v13;
      __cxa_guard_release(&qword_1EE19BD20);
    }
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE19BD88;
  *(this + 9) = re::internal::defaultConstruct<re::TransformAnimationLibraryEntry>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::TransformAnimationLibraryEntry>;
  *(this + 13) = re::internal::defaultConstructV2<re::TransformAnimationLibraryEntry>;
  *(this + 14) = re::internal::defaultDestructV2<re::TransformAnimationLibraryEntry>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

void re::internal::defaultConstruct<re::TransformAnimationLibraryEntry>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  a3[1] = &str_67;
  a3[3] = 0;
  a3[4] = 0;
  a3[2] = 0;
}

void re::internal::defaultDestruct<re::TransformAnimationLibraryEntry>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::AssetHandle::~AssetHandle((a3 + 16));

  re::StringID::destroyString(a3);
}

void *re::internal::defaultConstructV2<re::TransformAnimationLibraryEntry>(void *result)
{
  *result = 0;
  result[1] = &str_67;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void re::internal::defaultDestructV2<re::TransformAnimationLibraryEntry>(uint64_t a1)
{
  re::AssetHandle::~AssetHandle((a1 + 16));

  re::StringID::destroyString(a1);
}

void *re::allocInfo_SkeletalAnimationLibraryEntry(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19BD30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19BD30))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19BF60, "SkeletalAnimationLibraryEntry");
    __cxa_guard_release(&qword_1EE19BD30);
  }

  return &unk_1EE19BF60;
}

void re::initInfo_SkeletalAnimationLibraryEntry(re *this, re::IntrospectionBase *a2)
{
  v22[0] = 0x893CCA30395019C4;
  v22[1] = "SkeletalAnimationLibraryEntry";
  if (v22[0])
  {
    if (v22[0])
    {
    }
  }

  *(this + 2) = v23;
  if ((atomic_load_explicit(&qword_1EE19BD38, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19BD38);
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
      qword_1EE19BDB0 = v8;
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
      qword_1EE19BDB8 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::IntrospectionInfo<re::StringID>::get(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "animationName";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x3800000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE19BDC0 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_AssetHandle(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "animationHandle";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x4800000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE19BDC8 = v20;
      __cxa_guard_release(&qword_1EE19BD38);
    }
  }

  *(this + 2) = 0x7800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE19BDB0;
  *(this + 9) = re::internal::defaultConstruct<re::SkeletalAnimationLibraryEntry>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SkeletalAnimationLibraryEntry>;
  *(this + 13) = re::internal::defaultConstructV2<re::SkeletalAnimationLibraryEntry>;
  *(this + 14) = re::internal::defaultDestructV2<re::SkeletalAnimationLibraryEntry>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v21 = v23;
}

double re::internal::defaultConstruct<re::SkeletalAnimationLibraryEntry>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = &str_67;
  *(a3 + 24) = 0;
  *(a3 + 32) = &str_67;
  *(a3 + 40) = 0;
  *(a3 + 48) = &str_67;
  *(a3 + 56) = 0;
  *(a3 + 64) = &str_67;
  result = 0.0;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  return result;
}

void re::internal::defaultDestruct<re::SkeletalAnimationLibraryEntry>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::AssetHandle::~AssetHandle((a3 + 96));
  re::AssetHandle::~AssetHandle((a3 + 72));
  re::StringID::destroyString((a3 + 56));
  re::StringID::destroyString((a3 + 40));
  re::StringID::destroyString((a3 + 24));

  re::StringID::destroyString((a3 + 8));
}

double re::internal::defaultConstructV2<re::SkeletalAnimationLibraryEntry>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = &str_67;
  *(a1 + 24) = 0;
  *(a1 + 32) = &str_67;
  *(a1 + 40) = 0;
  *(a1 + 48) = &str_67;
  *(a1 + 56) = 0;
  *(a1 + 64) = &str_67;
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return result;
}

void re::internal::defaultDestructV2<re::SkeletalAnimationLibraryEntry>(uint64_t a1)
{
  re::AssetHandle::~AssetHandle((a1 + 96));
  re::AssetHandle::~AssetHandle((a1 + 72));
  re::StringID::destroyString((a1 + 56));
  re::StringID::destroyString((a1 + 40));
  re::StringID::destroyString((a1 + 24));

  re::StringID::destroyString((a1 + 8));
}

void *re::allocInfo_NamedAnimationLibraryEntry(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19BD48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19BD48))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19BFF0, "NamedAnimationLibraryEntry");
    __cxa_guard_release(&qword_1EE19BD48);
  }

  return &unk_1EE19BFF0;
}

void re::initInfo_NamedAnimationLibraryEntry(re *this, re::IntrospectionBase *a2)
{
  v20[0] = 0x618480047777F904;
  v20[1] = "NamedAnimationLibraryEntry";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE19BD50, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19BD50);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::StringID>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "animationName";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE19BD98 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_AssetHandle(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "animationHandle";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x1000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE19BDA0 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = v14;
      v16 = qword_1EE19BD28;
      if (!qword_1EE19BD28)
      {
        v16 = re::allocInfo_TransformAnimationLibraryEntry(v14);
        qword_1EE19BD28 = v16;
        re::initInfo_TransformAnimationLibraryEntry(v16, v17);
      }

      v18 = (*(*v15 + 32))(v15, 64, 8);
      *v18 = 6;
      *(v18 + 8) = 2;
      *(v18 + 16) = v16;
      *(v18 + 24) = 0;
      *(v18 + 32) = re::TransformEntryUpgrade;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      qword_1EE19BDA8 = v18;
      __cxa_guard_release(&qword_1EE19BD50);
    }
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE19BD98;
  *(this + 9) = re::internal::defaultConstruct<re::NamedAnimationLibraryEntry>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::NamedAnimationLibraryEntry>;
  *(this + 13) = re::internal::defaultConstructV2<re::NamedAnimationLibraryEntry>;
  *(this + 14) = re::internal::defaultDestructV2<re::NamedAnimationLibraryEntry>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v19 = v21;
}

uint64_t re::TransformEntryUpgrade(uint64_t a1, uint64_t *a2, unint64_t *a3)
{
  v4 = re::StringID::operator=(a3, a2);
  re::AssetHandle::operator=((v4 + 2), a2 + 2);
  return 1;
}

void re::internal::defaultConstruct<re::NamedAnimationLibraryEntry>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  a3[1] = &str_67;
  a3[3] = 0;
  a3[4] = 0;
  a3[2] = 0;
}

void re::internal::defaultDestruct<re::NamedAnimationLibraryEntry>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::AssetHandle::~AssetHandle((a3 + 16));

  re::StringID::destroyString(a3);
}

void *re::internal::defaultConstructV2<re::NamedAnimationLibraryEntry>(void *result)
{
  *result = 0;
  result[1] = &str_67;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void re::internal::defaultDestructV2<re::NamedAnimationLibraryEntry>(uint64_t a1)
{
  re::AssetHandle::~AssetHandle((a1 + 16));

  re::StringID::destroyString(a1);
}

void *re::allocInfo_AnimationLibraryAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19BD60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19BD60))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19C080, "AnimationLibraryAsset");
    __cxa_guard_release(&qword_1EE19BD60);
  }

  return &unk_1EE19C080;
}

void re::initInfo_AnimationLibraryAsset(re *this, re::IntrospectionBase *a2)
{
  v24[0] = 0x72B9F762ED1258F2;
  v24[1] = "AnimationLibraryAsset";
  if (v24[0])
  {
    if (v24[0])
    {
    }
  }

  *(this + 2) = v25;
  if ((atomic_load_explicit(&qword_1EE19BD68, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19BD68);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<re::DynamicArray<re::SkeletalAnimationLibraryEntry>>::get(v6);
      v7 = (*(*v6 + 32))(v6, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "skeletalAnimationLibrary";
      *(v7 + 16) = &qword_1EE19BE00;
      *(v7 + 24) = 0;
      *(v7 + 32) = 1;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE19BDD0 = v7;
      v8 = re::introspectionAllocator(v7);
      re::IntrospectionInfo<re::DynamicArray<re::NamedAnimationLibraryEntry>>::get(v8);
      v9 = (*(*v8 + 32))(v8, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "transformAnimationLibrary";
      *(v9 + 16) = &qword_1EE19BE40;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0x2800000002;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE19BDD8 = v9;
      v10 = re::introspectionAllocator(v9);
      re::IntrospectionInfo<re::DynamicArray<re::NamedAnimationLibraryEntry>>::get(v10);
      v11 = (*(*v10 + 32))(v10, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "animationSceneLibrary";
      *(v11 + 16) = &qword_1EE19BE40;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x5000000003;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE19BDE0 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::IntrospectionInfo<re::DynamicArray<re::AssetHandle>>::get(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "animationLibraryEntries";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x7800000004;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE19BDE8 = v15;
      v16 = re::introspectionAllocator(v15);
      re::IntrospectionInfo<re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v16, v17);
      v18 = (*(*v16 + 32))(v16, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "entryKeyMap";
      *(v18 + 16) = &qword_1EE19BE80;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0xA000000005;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE19BDF0 = v18;
      v19 = re::introspectionAllocator(v18);
      v21 = re::IntrospectionInfo<re::StringID>::get(1, v20);
      v22 = (*(*v19 + 32))(v19, 72, 8);
      *v22 = 1;
      *(v22 + 8) = "defaultEntryKey";
      *(v22 + 16) = v21;
      *(v22 + 24) = 0;
      *(v22 + 32) = 0xD000000006;
      *(v22 + 40) = 0;
      *(v22 + 48) = 0;
      *(v22 + 56) = 0;
      *(v22 + 64) = 0;
      qword_1EE19BDF8 = v22;
      __cxa_guard_release(&qword_1EE19BD68);
    }
  }

  *(this + 2) = 0xE000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE19BDD0;
  *(this + 9) = re::internal::defaultConstruct<re::AnimationLibraryAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AnimationLibraryAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::AnimationLibraryAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::AnimationLibraryAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v23 = v25;
}

void re::IntrospectionInfo<re::DynamicArray<re::SkeletalAnimationLibraryEntry>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE19BD70, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE19BD70);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE19BE00);
      qword_1EE19BE00 = &unk_1F5CCA4D0;
      __cxa_guard_release(&qword_1EE19BD70);
    }
  }

  if ((_MergedGlobals_107 & 1) == 0)
  {
    v1 = qword_1EE19BD40;
    if (qword_1EE19BD40 || (v1 = re::allocInfo_SkeletalAnimationLibraryEntry(a1), qword_1EE19BD40 = v1, re::initInfo_SkeletalAnimationLibraryEntry(v1, v2), (_MergedGlobals_107 & 1) == 0))
    {
      _MergedGlobals_107 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE19BE00, 0);
      qword_1EE19BE10 = 0x2800000003;
      dword_1EE19BE18 = v3;
      word_1EE19BE1C = 0;
      *&xmmword_1EE19BE20 = 0;
      *(&xmmword_1EE19BE20 + 1) = 0xFFFFFFFFLL;
      qword_1EE19BE30 = v1;
      unk_1EE19BE38 = 0;
      qword_1EE19BE00 = &unk_1F5CCA4D0;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE19BE00, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SkeletalAnimationLibraryEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SkeletalAnimationLibraryEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SkeletalAnimationLibraryEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SkeletalAnimationLibraryEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SkeletalAnimationLibraryEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::SkeletalAnimationLibraryEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SkeletalAnimationLibraryEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SkeletalAnimationLibraryEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE19BE20 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::NamedAnimationLibraryEntry>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE19BD78, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE19BD78);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE19BE40);
      qword_1EE19BE40 = &unk_1F5CCA568;
      __cxa_guard_release(&qword_1EE19BD78);
    }
  }

  if ((byte_1EE19BD11 & 1) == 0)
  {
    v1 = qword_1EE19BD58;
    if (qword_1EE19BD58 || (v1 = re::allocInfo_NamedAnimationLibraryEntry(a1), qword_1EE19BD58 = v1, re::initInfo_NamedAnimationLibraryEntry(v1, v2), (byte_1EE19BD11 & 1) == 0))
    {
      byte_1EE19BD11 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE19BE40, 0);
      qword_1EE19BE50 = 0x2800000003;
      dword_1EE19BE58 = v3;
      word_1EE19BE5C = 0;
      *&xmmword_1EE19BE60 = 0;
      *(&xmmword_1EE19BE60 + 1) = 0xFFFFFFFFLL;
      qword_1EE19BE70 = v1;
      unk_1EE19BE78 = 0;
      qword_1EE19BE40 = &unk_1F5CCA568;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE19BE40, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::NamedAnimationLibraryEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::NamedAnimationLibraryEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::NamedAnimationLibraryEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::NamedAnimationLibraryEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::NamedAnimationLibraryEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::NamedAnimationLibraryEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::NamedAnimationLibraryEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::NamedAnimationLibraryEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE19BE60 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE19BD80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19BD80))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE19BE80);
    qword_1EE19BE80 = &unk_1F5CCA600;
    __cxa_guard_release(&qword_1EE19BD80);
  }

  if ((byte_1EE19BD12 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::StringID>::get(1, a2);
    v4 = re::introspect_size_t(1, v3);
    if ((byte_1EE19BD12 & 1) == 0)
    {
      v5 = v4;
      byte_1EE19BD12 = 1;
      v6 = v4[6];
      ArcSharedObject::ArcSharedObject(&qword_1EE19BE80, 0);
      qword_1EE19BE90 = 0x3000000007;
      dword_1EE19BE98 = v6;
      word_1EE19BE9C = 0;
      *&xmmword_1EE19BEA0 = 0;
      *(&xmmword_1EE19BEA0 + 1) = 0xFFFFFFFFLL;
      qword_1EE19BEB0 = v2;
      unk_1EE19BEB8 = 0;
      qword_1EE19BEC0 = v5;
      unk_1EE19BEC8 = 0;
      qword_1EE19BE80 = &unk_1F5CCA600;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&qword_1EE19BE80, &v23);
      if (BYTE8(v23))
      {
        v9 = v24;
      }

      else
      {
        v9 = &v23 + 9;
      }

      if (v23 && (BYTE8(v23) & 1) != 0)
      {
        (*(*v23 + 40))();
      }

      v10 = v2[2];
      v18 = *(v5 + 32);
      v19 = v10;
      if (v30)
      {
        v17 = v30;
      }

      else
      {
        *&v23 = 0x449AD97C4B77BED4;
        *(&v23 + 1) = "_CompareFunc";
        if (v23)
        {
          if (v23)
          {
          }
        }

        if (!v29)
        {
          v25[0] = 0x449AD97C4B77BED4;
          v25[1] = "_CompareFunc";
          v29 = v23;
          if (v25[0])
          {
            if (v25[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v28, &v23 + 8);
        if (!v29 || (v14 = *v28[2], *&v23 = *(&v29 + 1), *(&v23 + 1) = v14, LODWORD(v24) = -1, (v15 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v28[0] + 768, &v23)) == 0) || !*v15)
        {
          v26 = v29;
          v27 = v19;
        }

        re::StackScratchAllocator::StackScratchAllocator(v25);
        re::TypeBuilder::TypeBuilder(&v23, v25);
        v21 = v18;
        v22 = v19;
        re::TypeBuilder::beginDictionaryType(&v23, &v20, 1, 0x30uLL, 8uLL, &v22, &v21);
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE19BEA0 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::AnimationLibraryAsset>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0;
  *(a3 + 152) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 180) = 0u;
  *&result = 0x7FFFFFFFLL;
  *(a3 + 196) = 0x7FFFFFFFLL;
  *(a3 + 208) = 0;
  *(a3 + 216) = &str_67;
  return result;
}

uint64_t re::internal::defaultDestruct<re::AnimationLibraryAsset>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 208));
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit((a3 + 160));
  re::DynamicArray<re::AssetHandle>::deinit(a3 + 120);
  re::DynamicArray<re::NamedAnimationLibraryEntry>::deinit(a3 + 80);
  re::DynamicArray<re::NamedAnimationLibraryEntry>::deinit(a3 + 40);

  return re::DynamicArray<re::SkeletalAnimationLibraryEntry>::deinit(a3);
}

double re::internal::defaultConstructV2<re::AnimationLibraryAsset>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 180) = 0u;
  *&result = 0x7FFFFFFFLL;
  *(a1 + 196) = 0x7FFFFFFFLL;
  *(a1 + 208) = 0;
  *(a1 + 216) = &str_67;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::AnimationLibraryAsset>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 208));
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit((a1 + 160));
  re::DynamicArray<re::AssetHandle>::deinit(a1 + 120);
  re::DynamicArray<re::NamedAnimationLibraryEntry>::deinit(a1 + 80);
  re::DynamicArray<re::NamedAnimationLibraryEntry>::deinit(a1 + 40);

  return re::DynamicArray<re::SkeletalAnimationLibraryEntry>::deinit(a1);
}

void *re::DynamicArray<re::NamedAnimationLibraryEntry>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::NamedAnimationLibraryEntry>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::NamedAnimationLibraryEntry>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::NamedAnimationLibraryEntry>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::NamedAnimationLibraryEntry>::setCapacity(v5, a2);
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
        v10 = (v8 + 40 * v9);
        v11 = (v8 + 16);
        v12 = v7;
        do
        {
          v13 = *(v11 - 2);
          *v12 = *v12 & 0xFFFFFFFFFFFFFFFELL | *(v11 - 2) & 1;
          *v12 = *(v11 - 2) & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
          v12[1] = *(v11 - 1);
          *(v11 - 1) = &str_67;
          *(v11 - 2) = 0;
          v12[2] = 0;
          v12[3] = 0;
          v12[4] = 0;
          v12[3] = *(v11 + 1);
          *(v11 + 1) = 0;
          v14 = v12[2];
          v12[2] = 0;
          v12[2] = *v11;
          *v11 = v14;
          v15 = v12[4];
          v12[4] = *(v11 + 2);
          *(v11 + 2) = v15;
          re::AssetHandle::~AssetHandle(v11);
          re::StringID::destroyString((v11 - 16));
          v12 += 5;
          v16 = (v11 + 24);
          v11 = (v11 + 40);
        }

        while (v16 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::DynamicArray<re::SkeletalAnimationLibraryEntry>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::SkeletalAnimationLibraryEntry>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::SkeletalAnimationLibraryEntry>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::SkeletalAnimationLibraryEntry>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v4 = a2;
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::SkeletalAnimationLibraryEntry>::setCapacity(v5, v4);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x78uLL))
        {
          v2 = 120 * a2;
          result = (*(*result + 32))(result, 120 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 120, a2);
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
        v5[1] = v4;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v22 = v4;
        v10 = (v8 + 120 * v9);
        v11 = (v8 + 96);
        v12 = v7;
        do
        {
          *v12 = *(v11 - 96);
          v13 = *(v11 - 11);
          v12[1] = v12[1] & 0xFFFFFFFFFFFFFFFELL | *(v11 - 11) & 1;
          v12[1] = *(v11 - 11) & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
          v12[2] = *(v11 - 10);
          *(v11 - 10) = &str_67;
          *(v11 - 11) = 0;
          v14 = *(v11 - 9);
          v12[3] = v12[3] & 0xFFFFFFFFFFFFFFFELL | *(v11 - 9) & 1;
          v12[3] = *(v11 - 9) & 0xFFFFFFFFFFFFFFFELL | v14 & 1;
          v12[4] = *(v11 - 8);
          *(v11 - 8) = &str_67;
          *(v11 - 9) = 0;
          v15 = *(v11 - 7);
          v12[5] = v12[5] & 0xFFFFFFFFFFFFFFFELL | *(v11 - 7) & 1;
          v12[5] = *(v11 - 7) & 0xFFFFFFFFFFFFFFFELL | v15 & 1;
          v12[6] = *(v11 - 6);
          *(v11 - 6) = &str_67;
          *(v11 - 7) = 0;
          v16 = *(v11 - 5);
          v12[7] = v12[7] & 0xFFFFFFFFFFFFFFFELL | *(v11 - 5) & 1;
          v12[7] = *(v11 - 5) & 0xFFFFFFFFFFFFFFFELL | v16 & 1;
          v12[8] = *(v11 - 4);
          *(v11 - 4) = &str_67;
          *(v11 - 5) = 0;
          v12[9] = 0;
          v12[10] = 0;
          v12[11] = 0;
          v12[10] = *(v11 - 2);
          *(v11 - 2) = 0;
          v17 = v12[9];
          v12[9] = 0;
          v12[9] = *(v11 - 3);
          *(v11 - 3) = v17;
          v18 = v12[11];
          v12[11] = *(v11 - 1);
          *(v11 - 1) = v18;
          v12[12] = 0;
          v12[13] = 0;
          v12[14] = 0;
          v12[13] = v11[1];
          v11[1] = 0;
          v19 = v12[12];
          v12[12] = 0;
          v12[12] = *v11;
          *v11 = v19;
          v20 = v12[14];
          v12[14] = v11[2];
          v11[2] = v20;
          re::AssetHandle::~AssetHandle(v11);
          re::AssetHandle::~AssetHandle((v11 - 3));
          re::StringID::destroyString((v11 - 5));
          re::StringID::destroyString((v11 - 7));
          re::StringID::destroyString((v11 - 9));
          re::StringID::destroyString((v11 - 11));
          v12 += 15;
          v21 = v11 + 3;
          v11 += 15;
        }

        while (v21 != v10);
        v8 = v5[4];
        v4 = v22;
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

re::StringID *re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(re::StringID *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 16);
    do
    {
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        v10 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, v9 % *(v4 + 24), v9);
        result = re::StringID::StringID((v10 + 8), (*(a2 + 16) + v5 + 8));
        v7 = *(a2 + 16);
        *(v10 + 24) = *(v7 + v5 + 24);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 32;
    }

    while (v6 < v2);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::SkeletalAnimationLibraryEntry>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::SkeletalAnimationLibraryEntry>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::SkeletalAnimationLibraryEntry>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::SkeletalAnimationLibraryEntry>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::SkeletalAnimationLibraryEntry>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::SkeletalAnimationLibraryEntry>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::SkeletalAnimationLibraryEntry>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::SkeletalAnimationLibraryEntry>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::SkeletalAnimationLibraryEntry>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::SkeletalAnimationLibraryEntry>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11 = 0;
  v12 = 0;
  v13 = &str_67;
  v14 = 0;
  v15 = &str_67;
  v16 = 0;
  v17 = &str_67;
  v18 = 0;
  v19 = &str_67;
  memset(v20, 0, sizeof(v20));
  re::DynamicArray<re::SkeletalAnimationLibraryEntry>::add(this, &v11);
  re::AssetHandle::~AssetHandle((&v20[1] + 8));
  re::AssetHandle::~AssetHandle(v20);
  if (v18)
  {
    if (v18)
    {
    }
  }

  v18 = 0;
  v19 = &str_67;
  if (v16)
  {
    if (v16)
    {
    }
  }

  v16 = 0;
  v17 = &str_67;
  if (v14)
  {
    if (v14)
    {
    }
  }

  v14 = 0;
  v15 = &str_67;
  if (v12)
  {
    if (v12)
    {
    }
  }

  v9 = (*(this + 4) + 120 * *(this + 2) - 120);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

uint64_t re::IntrospectionDynamicArray<re::SkeletalAnimationLibraryEntry>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 120 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 120 * a3;
}

void re::DynamicArray<re::SkeletalAnimationLibraryEntry>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 120 * a2 + 56;
    v9 = a2;
    do
    {
      v10 = *(a1 + 32) + v8;
      re::AssetHandle::~AssetHandle((v10 + 40));
      re::AssetHandle::~AssetHandle((v10 + 16));
      re::StringID::destroyString(v10);
      re::StringID::destroyString((v10 - 16));
      re::StringID::destroyString((v10 - 32));
      re::StringID::destroyString((v10 - 48));
      ++v9;
      v8 += 120;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::SkeletalAnimationLibraryEntry>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 120 * v4 + 72;
      do
      {
        v7 = (*(a1 + 32) + v6);
        *(v7 - 72) = 0;
        *(v7 - 8) = 0;
        *(v7 - 7) = &str_67;
        *(v7 - 6) = 0;
        *(v7 - 5) = &str_67;
        *(v7 - 4) = 0;
        *(v7 - 3) = &str_67;
        *(v7 - 2) = 0;
        *(v7 - 1) = &str_67;
        *v7 = 0uLL;
        v7[1] = 0uLL;
        v6 += 120;
        v7[2] = 0uLL;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::SkeletalAnimationLibraryEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::SkeletalAnimationLibraryEntry>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::SkeletalAnimationLibraryEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = 0;
      v10 = *(a1 + 32);
      v11 = 120 * v8;
      do
      {
        re::AssetHandle::~AssetHandle((v10 + v9 + 96));
        re::AssetHandle::~AssetHandle((v10 + v9 + 72));
        re::StringID::destroyString((v10 + v9 + 56));
        re::StringID::destroyString((v10 + v9 + 40));
        re::StringID::destroyString((v10 + v9 + 24));
        re::StringID::destroyString((v10 + v9 + 8));
        v9 += 120;
      }

      while (v11 != v9);
    }
  }

  else
  {
    re::DynamicArray<re::SkeletalAnimationLibraryEntry>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::SkeletalAnimationLibraryEntry>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::SkeletalAnimationLibraryEntry>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v17);
    re::TypeInfo::TypeInfo(v16, &v18);
    v13 = *(a1 + 16);
    if (v13)
    {
      v14 = *(a1 + 32);
      v15 = 120 * v13;
      do
      {
        re::TypeInfo::destruct(v16, v14, a3, 0);
        re::TypeInfo::construct(v16, v14, a3, 0);
        v14 += 120;
        v15 -= 120;
      }

      while (v15);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SkeletalAnimationLibraryEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 120 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SkeletalAnimationLibraryEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SkeletalAnimationLibraryEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 120 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SkeletalAnimationLibraryEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::NamedAnimationLibraryEntry>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::NamedAnimationLibraryEntry>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::NamedAnimationLibraryEntry>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::NamedAnimationLibraryEntry>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::NamedAnimationLibraryEntry>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::NamedAnimationLibraryEntry>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::NamedAnimationLibraryEntry>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::NamedAnimationLibraryEntry>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::NamedAnimationLibraryEntry>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::NamedAnimationLibraryEntry>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11[0] = 0;
  v11[1] = &str_67;
  memset(v12, 0, sizeof(v12));
  re::DynamicArray<re::NamedAnimationLibraryEntry>::add(this, v11);
  re::AssetHandle::~AssetHandle(v12);
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  v9 = (*(this + 4) + 40 * *(this + 2) - 40);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

uint64_t re::IntrospectionDynamicArray<re::NamedAnimationLibraryEntry>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 40 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 40 * a3;
}

void re::DynamicArray<re::NamedAnimationLibraryEntry>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 40 * a2;
    v9 = a2;
    do
    {
      v10 = *(a1 + 32) + v8;
      re::AssetHandle::~AssetHandle((v10 + 16));
      re::StringID::destroyString(v10);
      ++v9;
      v8 += 40;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::NamedAnimationLibraryEntry>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 40 * v4;
      do
      {
        v7 = (*(a1 + 32) + v6);
        *v7 = 0;
        v7[1] = &str_67;
        v7[3] = 0;
        v7[4] = 0;
        v7[2] = 0;
        v6 += 40;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::DynamicArray<re::NamedAnimationLibraryEntry>::add(void *this, uint64_t *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::NamedAnimationLibraryEntry>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = (v3[4] + 40 * v4);
  v6 = *a2;
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v5 = *a2 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  v5[1] = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = 0;
  v5[3] = a2[3];
  a2[3] = 0;
  v7 = v5[2];
  v5[2] = 0;
  v5[2] = a2[2];
  a2[2] = v7;
  v8 = v5[4];
  v5[4] = a2[4];
  a2[4] = v8;
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::NamedAnimationLibraryEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::NamedAnimationLibraryEntry>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::NamedAnimationLibraryEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::NamedAnimationLibraryEntry>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::NamedAnimationLibraryEntry>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::NamedAnimationLibraryEntry>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::NamedAnimationLibraryEntry>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 40 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 40;
        v11 -= 40;
      }

      while (v11);
    }
  }
}

void re::DynamicArray<re::NamedAnimationLibraryEntry>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 40 * v2;
    do
    {
      re::AssetHandle::~AssetHandle((v3 + 16));
      re::StringID::destroyString(v3);
      v3 += 40;
      v4 -= 40;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::NamedAnimationLibraryEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 40 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::NamedAnimationLibraryEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::NamedAnimationLibraryEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 40 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::NamedAnimationLibraryEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionHashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, StringID *a5)
{
  v10 = 0;
  v8 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a4, a5, &v10);
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 8;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + 32 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 24);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + 32 * v6) & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    LODWORD(v6) = v11;
LABEL_17:
    ;
  }

  while (v6 != v5);
  return result;
}

uint64_t re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, void *a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v12);
  v7 = HIDWORD(v13);
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v13, v12);
    re::StringID::StringID((v8 + 8), a2);
    *(v8 + 24) = *a3;
    v9 = v8 + 24;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v10 = *(a1 + 16) + 32 * v7;
    *(v10 + 24) = *a3;
    return v10 + 24;
  }

  return v9;
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

  return re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

    re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void **a2, re::Allocator *a3, StringID *a4)
{
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 32 * v6 + 24;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + 32 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 8;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 32 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 32 * *(a1 + 32) + 24;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void introspect_REMeshIdentifierType(BOOL a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE19C118, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE19C120, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19C120))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE19C170, "REMeshIdentifierType", 1, 1, 1, 1);
      qword_1EE19C170 = &unk_1F5D0C658;
      qword_1EE19C1B0 = &introspect_REMeshIdentifierType(BOOL)::enumTable;
      dword_1EE19C180 = 9;
      __cxa_guard_release(&qword_1EE19C120);
    }

    if (_MergedGlobals_108)
    {
      break;
    }

    _MergedGlobals_108 = 1;
    re::IntrospectionRegistry::add(&qword_1EE19C170, a2);
    v37 = 0xD5C6F6D094C2E4C6;
    v38 = "REMeshIdentifierType";
    v41 = 0x31CD534126;
    v42 = "uint8_t";
    v4 = v40[0];
    v5 = v40[1];
    if (v41)
    {
      if (v41)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE19C1B0;
      v41 = v4;
      v42 = v5;
      re::TypeBuilder::beginEnumType(v40, &v37, 1, 1, &v41);
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
            *&v39.var0 = 2 * v11;
            v39.var1 = v10;
            re::TypeBuilder::addEnumConstant(v40, v15, &v39);
            if (*&v39.var0)
            {
              if (*&v39.var0)
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
              *&v39.var0 = 2 * v20;
              v39.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v40, v24, &v39);
              if (*&v39.var0)
              {
                if (*&v39.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v40, v26);
      xmmword_1EE19C190 = v39;
      if (v37)
      {
        if (v37)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v38);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE19C118);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Invalid";
      qword_1EE19C150 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "Instance";
      qword_1EE19C158 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 2;
      *(v34 + 2) = "Model";
      qword_1EE19C160 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 8) = 3;
      *(v36 + 16) = "All";
      qword_1EE19C168 = v36;
      __cxa_guard_release(&qword_1EE19C118);
    }
  }
}

uint64_t re::MeshIdentifierIteration<re::MeshAsset,re::MeshInstanceAndPartIndex>::MeshIdentifierIterator::meshModelIndex(void *a1)
{
  v2 = *a1;
  v5 = a1[1];
  v3 = (*(**(v2 + 56) + 16))(*(v2 + 56), &v5);
  return re::MeshNameMap::modelIndex(*(*a1 + 8), v3);
}

uint64_t re::MeshIdentifierIteration<re::MeshAsset,re::MeshInstanceAndPartIndex>::MeshIdentifierIterator::meshModel(uint64_t **a1)
{
  v2 = **a1;
  v3 = re::MeshIdentifierIteration<re::MeshAsset,re::MeshInstanceAndPartIndex>::MeshIdentifierIterator::meshModelIndex(a1);
  if (*(v2 + 608) <= v3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(*(v2 + 624) + 8 * v3);
  v5 = *(**a1 + 632) + 8;

  return re::DataArray<re::MeshModel>::tryGet(v5, v4);
}

void *re::allocInfo_MeshIdentifierAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19C128, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19C128))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19C1B8, "MeshIdentifierAsset");
    __cxa_guard_release(&qword_1EE19C128);
  }

  return &unk_1EE19C1B8;
}

void re::initInfo_MeshIdentifierAsset(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0x35C48431124203F4;
  v18[1] = "MeshIdentifierAsset";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE19C130, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19C130);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      introspect_REMeshIdentifierType(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "type";
      *(v8 + 16) = &qword_1EE19C170;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE19C138 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::IntrospectionInfo<re::StringID>::get(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "name";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x800000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE19C140 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::IntrospectionInfo<re::StringID>::get(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "partName";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x1800000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE19C148 = v16;
      __cxa_guard_release(&qword_1EE19C130);
    }
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE19C138;
  *(this + 9) = re::internal::defaultConstruct<re::MeshIdentifierAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshIdentifierAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshIdentifierAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshIdentifierAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

void re::internal::defaultConstruct<re::MeshIdentifierAsset>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = &str_67;
  *(a3 + 24) = 0;
  *(a3 + 32) = &str_67;
}

void re::internal::defaultDestruct<re::MeshIdentifierAsset>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 24));

  re::StringID::destroyString((a3 + 8));
}

uint64_t re::internal::defaultConstructV2<re::MeshIdentifierAsset>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = &str_67;
  *(result + 24) = 0;
  *(result + 32) = &str_67;
  return result;
}

void re::internal::defaultDestructV2<re::MeshIdentifierAsset>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 24));

  re::StringID::destroyString((a1 + 8));
}

uint64_t *re::assetTypesLogObjects(re *this)
{
  {
    re::assetTypesLogObjects(void)::logObjects = os_log_create("com.apple.re", "AssetTypes");
  }

  return &re::assetTypesLogObjects(void)::logObjects;
}

uint64_t *re::RigAsset::assetType(re::RigAsset *this)
{
  {
    re::RigAsset::assetType(void)::type = "Rig";
    qword_1EE1C57B0 = 0;
    re::AssetType::generateCompiledExtension(&re::RigAsset::assetType(void)::type);
  }

  return &re::RigAsset::assetType(void)::type;
}

void *re::RigAsset::init(re::RigAsset *this, re::Allocator *a2)
{
  v2 = a2;
  if (!a2)
  {
  }

  *this = v2;
  re::DynamicArray<re::RigDefinition>::setCapacity(this, 0);
  *(this + 10) = v2;
  v4 = this + 80;
  ++*(v4 - 14);
  result = re::DynamicArray<re::MeshRigGraphIndex>::setCapacity(v4, 0);
  ++*(v4 + 6);
  return result;
}

void re::RigAsset::init(re::RigAsset *this, const re::MeshAsset *a2, re::Allocator *a3)
{
  v3 = a3;
  if (!a3)
  {
  }

  v6 = *(a2 + 312);
  *this = v3;
  re::DynamicArray<re::RigDefinition>::setCapacity(this, v6);
  ++*(this + 6);
  *(this + 10) = v3;
  re::DynamicArray<re::MeshRigGraphIndex>::setCapacity(this + 10, v6);
  ++*(this + 26);

  re::RigAsset::addDefaultSkeletonRigs(this, a2);
}

void re::RigAsset::addDefaultSkeletonRigs(re::RigAsset *this, const re::MeshAsset *a2)
{
  v3 = a2;
  v53 = *MEMORY[0x1E69E9840];
  v33 = *(this + 4);
  v36 = *(a2 + 156);
  if (v36)
  {
    v4 = 0;
    while (1)
    {
      v32 = v4;
      v2 = re::MeshAsset::skeletonAtIndex(v3, v4);
      v5 = *(v2 + 24);
      v37 = *(v2 + 56);
      v39 = *(v2 + 48);
      v7 = *(v2 + 96);
      v6 = *(v2 + 104);
      bzero(&v44, 0x478uLL);
      re::DynamicArray<re::RigDefinition>::add(this, &v44);
      re::RigDefinition::~RigDefinition(&v44);
      v8 = *(this + 4) + 1144 * *(this + 2);
      v9 = (v8 - 280);
      *(v8 - 280) = *this;
      re::DynamicArray<re::RigTransform>::setCapacity((v8 - 280), v5);
      *(v8 - 120) = *this;
      v10 = v8 - 120;
      ++*(v10 - 136);
      re::DynamicArray<re::RigNode>::setCapacity(v10, v5);
      ++*(v10 + 24);
      if (v5)
      {
        break;
      }

LABEL_16:
      v4 = v32 + 1;
      v3 = a2;
      if (v32 + 1 == v36)
      {
        goto LABEL_17;
      }
    }

    v11 = 0;
    v12 = 0;
    while (1)
    {
      if (v12 >= v7)
      {
        *v41 = 0x3F8000003F800000;
        *&v41[8] = 1065353216;
        *&v41[16] = 0;
        *&v41[24] = 0x3F80000000000000;
        *&v41[32] = 0uLL;
      }

      else
      {
        v13 = *v6;
        v14 = *(v6 + 32);
        *&v41[16] = *(v6 + 16);
        *&v41[32] = v14;
        *v41 = v13;
      }

      v44 = *&v41[32];
      *v48 = 0u;
      re::convertQuaternionsToIntrinsicEulers<float>(&v41[16], 1, 0, v48, 1);
      v45 = *v48;
      v46[0] = *v41;
      LOBYTE(v46[1]) = 0;
      *&v16 = re::DynamicArray<re::RigTransform>::add(v9, &v44).n128_u64[0];
      v17 = *(v2 + 24);
      if (v17 <= v12)
      {
        break;
      }

      re::StringID::StringID(&v44, (*(v2 + 32) + v11));
      LOBYTE(v45) = 1;
      *(&v45 + 1) = v12;
      if (v39 == v12)
      {
        goto LABEL_46;
      }

      v19 = *(v37 + 4 * v12);
      if (v19 == -1)
      {
        v19 = -1;
      }

      *&v46[0] = v19;
      *(v46 + 8) = xmmword_1E3049610;
      re::DynamicArray<re::RigNode>::add(v10, &v44);
      if (v44.n128_u8[0])
      {
        if (v44.n128_u8[0])
        {
        }
      }

      ++v12;
      v11 += 16;
      v6 += 48;
      if (v5 == v12)
      {
        goto LABEL_16;
      }
    }

    re::internal::assertLog(6, v15, v16, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v12, v17);
    _os_crash();
    __break(1u);
LABEL_46:
    re::internal::assertLog(6, v18, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v39, v39);
    _os_crash();
    __break(1u);
LABEL_47:
    v47 = 0u;
    memset(v46, 0, sizeof(v46));
    v44 = 0u;
    v45 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v48 = 136315906;
    *&v48[4] = "operator[]";
    *&v48[12] = 1024;
    *&v48[14] = 476;
    v49 = 2048;
    v50 = v9;
    v51 = 2048;
    v52 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_48:
    *v48 = 0;
    v47 = 0u;
    memset(v46, 0, sizeof(v46));
    v44 = 0u;
    v45 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v41 = 136315906;
    *&v41[4] = "operator[]";
    *&v41[12] = 1024;
    *&v41[14] = 797;
    *&v41[18] = 2048;
    *&v41[20] = v10;
    *&v41[28] = 2048;
    *&v41[30] = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_49:
    *v48 = 0;
    v47 = 0u;
    memset(v46, 0, sizeof(v46));
    v44 = 0u;
    v45 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v41 = 136315906;
    *&v41[4] = "operator[]";
    *&v41[12] = 1024;
    *&v41[14] = 797;
    *&v41[18] = 2048;
    *&v41[20] = v6;
    *&v41[28] = 2048;
    *&v41[30] = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_17:
  v21 = *(v3 + 79);
  if (v21)
  {
    v22 = 32;
    if (*(v3 + 1264))
    {
      v22 = 608;
    }

    v40 = *(v3 + v22);
    if (v40)
    {
      v10 = 0;
      v38 = *(v3 + 79);
      while (1)
      {
        v6 = *(v3 + 76);
        if (v6 <= v10)
        {
          goto LABEL_48;
        }

        v23 = *(*(v3 + 78) + 8 * v10);
        v6 = WORD1(v23);
        v2 = *(v21 + 24);
        if (v2 <= WORD1(v23))
        {
          goto LABEL_49;
        }

        v6 = *(*(v21 + 40) + 16 * WORD1(v23)) + 864 * v23;
        v24 = *(v6 + 224);
        if (v24)
        {
          v25 = *(v24 + 8);
          if (v25)
          {
            v9 = 0;
            v26 = 488;
            v27 = 4;
            do
            {
              v28 = *(v6 + 224);
              if (v28 && *(v28 + 8) > v9)
              {
                v29 = *(*(v28 + 16) + v27);
              }

              else
              {
                v29 = -1;
              }

              if (v36 > v29)
              {
                v41[0] = 2;
                re::StringID::StringID(&v41[8], v6);
                v2 = *(v6 + 56);
                if (v2 <= v9)
                {
                  goto LABEL_47;
                }

                v2 = v29;
                re::StringID::StringID(&v41[24], (*(v6 + 64) + v26));
                v30 = re::MeshAsset::skeletonAtIndex(a2, v29);
                re::StringID::StringID(&v41[40], v30);
                v43 = v29 + v33;
                v31 = re::DynamicArray<re::MeshRigGraphIndex>::add((this + 80), v41);
                if (v41[40])
                {
                  if (v41[40])
                  {
                  }
                }

                *&v41[40] = 0;
                v42 = &str_67;
                if (v41[24])
                {
                  if (v41[24])
                  {
                  }
                }

                *&v41[24] = 0;
                *&v41[32] = &str_67;
                if (v41[8])
                {
                  if (v41[8])
                  {
                  }
                }
              }

              v9 = (v9 + 1);
              v27 += 88;
              v26 += 544;
            }

            while (v25 != v9);
          }
        }

        ++v10;
        v21 = v38;
        v3 = a2;
        if (v10 == v40)
        {
          return;
        }
      }
    }
  }
}

uint64_t re::DynamicArray<re::RigDefinition>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 1144 * v4;
        do
        {
          re::RigDefinition::~RigDefinition(v3);
          v3 = (v3 + 1144);
          v5 -= 1144;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::RigDefinition>::add(uint64_t a1, uint64_t a2)
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

        re::DynamicArray<re::RigDefinition>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::RigDefinition>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  result = re::RigDefinition::RigDefinition(*(a1 + 32) + 1144 * v5, a2);
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

re *re::internal::destroyPersistent<re::RigAsset>(re *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::DynamicArray<re::MeshRigGraphIndex>::deinit(a3 + 80);
    re::DynamicArray<re::StringID>::deinit(a3 + 40);
    re::DynamicArray<re::RigDefinition>::deinit(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t re::RigAssetLoader::introspectionType(re::RigAssetLoader *this)
{
  v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v3)
    {
      re::introspect<re::RigAsset>(BOOL)::info = re::internal::getOrCreateInfo("RigAsset", re::allocInfo_RigAsset, re::initInfo_RigAsset, &re::internal::introspectionInfoStorage<re::RigAsset>, 0);
      v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v1 + 350);
}

void *re::allocInfo_MeshRigIndex(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19C250, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19C250))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19C338, "MeshRigIndex");
    __cxa_guard_release(&qword_1EE19C250);
  }

  return &unk_1EE19C338;
}

void re::initInfo_MeshRigIndex(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0x38AFE38B67FC759ELL;
  v18[1] = "MeshRigIndex";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE19C258, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19C258);
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
      qword_1EE19C288 = v8;
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
      qword_1EE19C290 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_uint32_t(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "rigIndex";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x3800000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE19C298 = v16;
      __cxa_guard_release(&qword_1EE19C258);
    }
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE19C288;
  *(this + 9) = re::internal::defaultConstruct<re::MeshRigIndex>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshRigIndex>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshRigIndex>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshRigIndex>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

void re::internal::defaultConstruct<re::MeshRigIndex>(uint64_t a1, uint64_t a2, uint64_t a3)
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

void re::internal::defaultDestruct<re::MeshRigIndex>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 40));
  re::StringID::destroyString((a3 + 24));

  re::StringID::destroyString((a3 + 8));
}

uint64_t re::internal::defaultConstructV2<re::MeshRigIndex>(uint64_t result)
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

void re::internal::defaultDestructV2<re::MeshRigIndex>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 40));
  re::StringID::destroyString((a1 + 24));

  re::StringID::destroyString((a1 + 8));
}

void *re::allocInfo_RigAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19C268, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19C268))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19C3C8, "RigAsset");
    __cxa_guard_release(&qword_1EE19C268);
  }

  return &unk_1EE19C3C8;
}