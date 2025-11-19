uint64_t re::anonymous namespace::gatherDependencies(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  if (v3)
  {
    v6 = result;
    v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) >> 27));
    v8 = *(v3 + 792) ^ (v7 >> 31);
    result = re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(&v13, a3, v3, v8 ^ v7);
    if (HIDWORD(v14) == 0x7FFFFFFF)
    {
      v9 = *(a3 + 28);
      v13 = 0;
      v14 = 0;
      v15 = 0;
      re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(&v13, a3, v3, v8 ^ v7);
      if (HIDWORD(v14) == 0x7FFFFFFF)
      {
        v10 = re::HashTable<re::AssetHandle,unsigned long,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::allocEntry(a3, v14, v13);
        re::AssetHandle::AssetHandle((v10 + 8), v6);
        *(v10 + 32) = v9;
        ++*(a3 + 40);
      }

      (*(*a2 + 288))(&v13, a2, v6);
      if (v15)
      {
        v11 = v16;
        v12 = 24 * v15;
        do
        {
          v11 += 24;
          v12 -= 24;
        }

        while (v12);
      }

      return re::DynamicArray<re::AssetHandle>::deinit(&v13);
    }
  }

  return result;
}

void re::AssetDeduplication::remap(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 36) = 0x7FFFFFFFLL;
  v6 = *(a2 + 32);
  if (v6)
  {
    v7 = 0;
    v8 = *(a2 + 16);
    while (1)
    {
      v9 = *v8;
      v8 += 18;
      if (v9 < 0)
      {
        break;
      }

      if (v6 == ++v7)
      {
        LODWORD(v7) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  if (v7 != v6)
  {
    v10 = *(a2 + 16);
    do
    {
      re::AssetHandle::AssetHandle(v29, (v10 + 72 * v7 + 8));
      re::AssetHandle::AssetHandle(v27, v29);
      if (v30)
      {
        v11 = *(v30 + 792);
      }

      else
      {
        v11 = 0;
      }

      v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v30 ^ (v30 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v30 ^ (v30 >> 30))) >> 27));
      re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(a1, v29, v11 ^ (v12 >> 31) ^ v12, buf);
      if (v33[0] != 0x7FFFFFFF)
      {
        if (v30)
        {
          v13 = *(v30 + 792);
        }

        else
        {
          v13 = 0;
        }

        v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v30 ^ (v30 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v30 ^ (v30 >> 30))) >> 27));
        re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(a1, v29, v13 ^ (v14 >> 31) ^ v14, buf);
        re::AssetHandle::operator=(v27, (*(a1 + 16) + (v33[0] << 6) + 32));
      }

      if (v28)
      {
        v15 = *(v28 + 792);
      }

      else
      {
        v15 = 0;
      }

      v16 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v28 ^ (v28 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v28 ^ (v28 >> 30))) >> 27));
      v17 = re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(a2, v27, v15 ^ (v16 >> 31) ^ v16, buf);
      if (v33[0] == 0x7FFFFFFF)
      {
        v18 = *re::pipelineLogObjects(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v19 = re::AssetHandle::assetInfo(v29);
          if (v19[17])
          {
            v20 = v19[18];
          }

          else
          {
            v20 = v19 + 137;
          }

          v26 = v20;
          v21 = re::AssetHandle::assetInfo(v27);
          if (v21[17])
          {
            v22 = v21[18];
          }

          else
          {
            v22 = v21 + 137;
          }

          *buf = 136315394;
          v32 = v26;
          LOWORD(v33[0]) = 2080;
          *(v33 + 2) = v22;
          _os_log_debug_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEBUG, "Found a duplicate asset '%s' (equal to '%s') that is not remapped. Leaving it unchanged.", buf, 0x16u);
        }
      }

      else
      {
        if (v28)
        {
          v23 = *(v28 + 792);
        }

        else
        {
          v23 = 0;
        }

        v24 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v28 ^ (v28 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v28 ^ (v28 >> 30))) >> 27));
        re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(a2, v27, v23 ^ (v24 >> 31) ^ v24, buf);
        re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::add(a3, v29, (*(a2 + 16) + 72 * v33[0] + 32));
      }

      re::AssetHandle::~AssetHandle(v27);
      re::AssetHandle::~AssetHandle(v29);
      if (*(a2 + 32) <= (v7 + 1))
      {
        v25 = v7 + 1;
      }

      else
      {
        v25 = *(a2 + 32);
      }

      v10 = *(a2 + 16);
      while (v25 - 1 != v7)
      {
        LODWORD(v7) = v7 + 1;
        if ((*(v10 + 72 * v7) & 0x80000000) != 0)
        {
          goto LABEL_41;
        }
      }

      LODWORD(v7) = v25;
LABEL_41:
      ;
    }

    while (v7 != v6);
  }
}

uint64_t re::HashTable<re::AssetHandle,unsigned long,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v28, 0, 36);
          *&v28[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v28, v9, v8);
          v11 = *v28;
          *v28 = *a1;
          *a1 = v11;
          v12 = *&v28[16];
          v13 = *(a1 + 16);
          *&v28[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v28[24];
          *&v28[24] = *(a1 + 24);
          v14 = *&v28[32];
          *(a1 + 24) = v15;
          ++*&v28[40];
          v16 = v14;
          if (v14)
          {
            v17 = (v13 + 24);
            do
            {
              if ((*(v17 - 3) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::AssetHandle,unsigned long,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::allocEntry(a1, v17[2] % *(a1 + 24));
                v18[2] = 0;
                v18[3] = 0;
                v18[1] = 0;
                v18[2] = *(v17 - 1);
                *(v17 - 1) = 0;
                v19 = v18[1];
                v18[1] = 0;
                v18[1] = *(v17 - 2);
                *(v17 - 2) = v19;
                v20 = v18[3];
                v21 = v17[1];
                v18[3] = *v17;
                *v17 = v20;
                v18[4] = v21;
              }

              v17 += 6;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(v28);
        }
      }

      else
      {
        if (v8)
        {
          v24 = 2 * v7;
        }

        else
        {
          v24 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v22 = *(a1 + 16);
    v23 = *(v22 + 48 * v5);
  }

  else
  {
    v22 = *(a1 + 16);
    v23 = *(v22 + 48 * v5);
    *(a1 + 36) = v23 & 0x7FFFFFFF;
  }

  v25 = v22 + 48 * v5;
  *v25 = v23 | 0x80000000;
  v26 = *(a1 + 8);
  *v25 = *(v26 + 4 * a2) | 0x80000000;
  *(v26 + 4 * a2) = v5;
  *(v25 + 40) = a3;
  ++*(a1 + 28);
  return v22 + 48 * v5;
}

double re::HashTable<unsigned long,re::DynamicArray<re::AssetHandle>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::DynamicArray<re::AssetHandle>::deinit(v6 + v4 + 16);
          v3 = *(a1 + 8);
        }

        v4 += 64;
      }

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

uint64_t re::HashTable<unsigned long,re::DynamicArray<re::AssetHandle>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v29, 0, 36);
          *&v29[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v29, v9, v8);
          v11 = *v29;
          *v29 = *a1;
          *a1 = v11;
          v12 = *&v29[16];
          v13 = *(a1 + 16);
          *&v29[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v29[24];
          *&v29[24] = *(a1 + 24);
          v14 = *&v29[32];
          *(a1 + 24) = v15;
          ++*&v29[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 32;
            do
            {
              if ((*(v17 - 32) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long,re::DynamicArray<re::AssetHandle>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a1, *(v17 + 24) % *(a1 + 24));
                v19 = *(v17 - 24);
                *(v18 + 48) = 0;
                *(v18 + 40) = 0;
                *(v18 + 24) = 0;
                *(v18 + 32) = 0;
                *(v18 + 8) = v19;
                *(v18 + 16) = 0;
                v20 = *(v17 - 8);
                *(v18 + 16) = *(v17 - 16);
                *(v18 + 24) = v20;
                *(v17 - 16) = 0;
                *(v17 - 8) = 0;
                v21 = *(v18 + 32);
                *(v18 + 32) = *v17;
                *v17 = v21;
                v22 = *(v18 + 48);
                *(v18 + 48) = *(v17 + 16);
                *(v17 + 16) = v22;
                ++*(v17 + 8);
                ++*(v18 + 40);
              }

              v17 += 64;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long,re::DynamicArray<re::AssetHandle>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(v29);
        }
      }

      else
      {
        if (v8)
        {
          v25 = 2 * v7;
        }

        else
        {
          v25 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v23 = *(a1 + 16);
    v24 = *(v23 + (v5 << 6));
  }

  else
  {
    v23 = *(a1 + 16);
    v24 = *(v23 + (v5 << 6));
    *(a1 + 36) = v24 & 0x7FFFFFFF;
  }

  v26 = v23 + (v5 << 6);
  *v26 = v24 | 0x80000000;
  v27 = *(a1 + 8);
  *v26 = *(v27 + 4 * a2) | 0x80000000;
  *(v26 + 56) = a3;
  *(v27 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v23 + (v5 << 6);
}

void ___ZN2re35pipelineHighFrequencyLoggingEnabledEv_block_invoke(uint64_t a1, const char *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  re::Defaults::BOOLValue("enablePipelineHFLogs", a2, v5);
  if (LOBYTE(v5[0]))
  {
    v3 = BYTE1(v5[0]);
  }

  else
  {
    v3 = 0;
  }

  re::pipelineLogObjects(v2);
  v4 = re::pipelineLogObjects(void)::logObjects;
  if (os_log_type_enabled(re::pipelineLogObjects(void)::logObjects, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "enablePipelineHFLogs=%d.", v5, 8u);
  }

  re::pipelineHighFrequencyLoggingEnabled(void)::shouldLog = v3;
}

uint64_t *re::pipelineLogObjects(re *this)
{
  {
    re::pipelineLogObjects(void)::logObjects = os_log_create("com.apple.re", "Pipeline");
  }

  return &re::pipelineLogObjects(void)::logObjects;
}

uint64_t re::readZipArchiveEntry@<X0>(re *this@<X0>, const char *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v9 = *re::pipelineLogObjects(this);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = a2;
    *&buf[12] = 2080;
    *&buf[14] = this;
    _os_log_debug_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEBUG, "Reading archived file '%s' from archive '%s'", buf, 0x16u);
  }

  v30 = archive_read_new();
  if (!v30)
  {
    re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) archive_read_new() returned null", "ar.get()", "readZipArchiveEntry", 69);
    _os_crash();
    __break(1u);
  }

  support_format_zip_seekable = archive_read_support_format_zip_seekable();
  if (!support_format_zip_seekable)
  {
    support_format_zip_seekable = archive_read_open_filename();
    if (!support_format_zip_seekable)
    {
      v29 = 0;
      while (1)
      {
        next_header = archive_read_next_header();
        if (next_header)
        {
          v15 = next_header;
          if (next_header == 1)
          {
            v20 = *re::pipelineLogObjects(next_header);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = a2;
              *&buf[12] = 2080;
              *&buf[14] = this;
              _os_log_error_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_ERROR, "No such file '%s' in archive '%s'", buf, 0x16u);
            }

            v21 = *MEMORY[0x1E695E640];
            v22 = 2;
            goto LABEL_26;
          }

          if (v15 != -20)
          {
            v23 = *buf;
            *a4 = 0;
            *(a4 + 8) = v23;
            goto LABEL_8;
          }
        }

        v16 = archive_entry_pathname();
        if (!strcmp(v16, a2))
        {
          is_set = archive_entry_size_is_set();
          if (is_set)
          {
            v18 = archive_entry_size();
            *&buf[16] = 0;
            v32 = 0;
            *buf = a3;
            *&buf[8] = 0;
            re::DynamicString::setCapacity(buf, v18 + 1);
            re::DynamicString::resize(buf, v18, 0);
            data = archive_read_data();
            if (data == v18)
            {
              re::DynamicString::DynamicString(&v26, buf);
              *a4 = 1;
              *(a4 + 8) = v26;
              *(a4 + 32) = v28;
              *(a4 + 16) = v27;
            }

            else
            {
              v25 = v26;
              v26 = 0;
              *a4 = 0;
              *(a4 + 8) = v25;
            }

            if (*buf && (buf[8] & 1) != 0)
            {
              (*(**buf + 40))();
            }

            return archive_read_free();
          }

          v24 = *re::pipelineLogObjects(is_set);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_ERROR, "Archive read error: entry size unexpectedly not set", buf, 2u);
          }

          v21 = *MEMORY[0x1E695E640];
          v22 = 79;
LABEL_26:
          re::WrappedError::make(v21, v22, 0, buf);
          goto LABEL_7;
        }
      }
    }
  }

LABEL_7:
  v12 = *buf;
  *buf = 0;
  *a4 = 0;
  *(a4 + 8) = v12;
LABEL_8:

  return archive_read_free();
}

void re::anonymous namespace::makeArchiveError(void *a1, uint64_t a2, int a3)
{
  *&v15[7] = *MEMORY[0x1E69E9840];
  v5 = archive_errno();
  v6 = v5;
  v7 = *re::pipelineLogObjects(v5);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (a3 <= -21)
  {
    if (a3 == -30)
    {
      if (v8)
      {
        v12 = 67109378;
        v13 = v6;
        v14 = 2082;
        *v15 = archive_error_string();
        v9 = "Archive read error (fatal) %d: %{public}s";
        goto LABEL_16;
      }

      goto LABEL_18;
    }

    if (a3 == -25)
    {
      if (v8)
      {
        v12 = 67109378;
        v13 = v6;
        v14 = 2082;
        *v15 = archive_error_string();
        v9 = "Archive read error %d: %{public}s";
LABEL_16:
        v10 = v7;
        v11 = 18;
        goto LABEL_17;
      }

      goto LABEL_18;
    }

LABEL_10:
    if (v8)
    {
      v12 = 67109634;
      v13 = a3;
      v14 = 1024;
      *v15 = v6;
      v15[2] = 2082;
      *&v15[3] = archive_error_string();
      v9 = "Archive read unexpected result %d, errno %d: %{public}s";
      v10 = v7;
      v11 = 24;
LABEL_17:
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, v9, &v12, v11);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (a3 == -20)
  {
    if (v8)
    {
      v12 = 67109378;
      v13 = v6;
      v14 = 2082;
      *v15 = archive_error_string();
      v9 = "Archive read error (partial) %d: %{public}s";
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  if (a3 != -10)
  {
    goto LABEL_10;
  }

  if (v8)
  {
    v12 = 67109378;
    v13 = v6;
    v14 = 2082;
    *v15 = archive_error_string();
    v9 = "Archive read error (retryable) %d: %{public}s";
    goto LABEL_16;
  }

LABEL_18:
  re::WrappedError::make(*MEMORY[0x1E695E640], v6, 0, a1);
}

double re::ZipArchiveGetDefaultLayerMTimeFromArchive()
{
  v15 = 0;
  while (!archive_read_next_header())
  {
    v1 = archive_entry_pathname();
    v2 = strlen(v1);
    if (v2 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v3 = v2;
    if (v2 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v2;
    if (v2)
    {
      memmove(&__dst, v1, v2);
    }

    __dst.__r_.__value_.__s.__data_[v3] = 0;
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    do
    {
      v6 = size;
      if (!size)
      {
        break;
      }

      v7 = *(&p_dst[-1].__r_.__value_.__r.__words[2] + size-- + 7);
    }

    while (v7 != 46);
    std::string::basic_string(&__p, &__dst, v6, 0xFFFFFFFFFFFFFFFFLL, &v16);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      if (__p.__r_.__value_.__l.__size_ == 3)
      {
        if (*__p.__r_.__value_.__l.__data_ != 29557 || *(__p.__r_.__value_.__r.__words[0] + 2) != 100)
        {
LABEL_37:
          v9 = 1;
LABEL_39:
          operator delete(__p.__r_.__value_.__l.__data_);
          goto LABEL_40;
        }

        goto LABEL_38;
      }

      if (__p.__r_.__value_.__l.__size_ != 4)
      {
        goto LABEL_37;
      }

      p_p = __p.__r_.__value_.__r.__words[0];
      if (*__p.__r_.__value_.__l.__data_ != 1667527541)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (HIBYTE(__p.__r_.__value_.__r.__words[2]) == 3)
      {
        if (LOWORD(__p.__r_.__value_.__l.__data_) != 29557 || __p.__r_.__value_.__s.__data_[2] != 100)
        {
LABEL_32:
          v9 = 1;
          goto LABEL_40;
        }

        goto LABEL_38;
      }

      if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 4)
      {
        goto LABEL_32;
      }

      if (LODWORD(__p.__r_.__value_.__l.__data_) != 1667527541)
      {
        p_p = &__p;
LABEL_25:
        if (LODWORD(p_p->__r_.__value_.__l.__data_) != 1633973109)
        {
          v9 = 1;
          if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
          {
            goto LABEL_39;
          }

          goto LABEL_40;
        }
      }
    }

LABEL_38:
    v9 = 0;
    v0 = archive_entry_mtime();
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_39;
    }

LABEL_40:
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
      if ((v9 & 1) == 0)
      {
        return v0;
      }
    }

    else if ((v9 & 1) == 0)
    {
      return v0;
    }
  }

  return 0.0;
}

double re::ZipArchiveGetDefaultLayerMTime(re *this, char *a2, __CFError **a3)
{
  if (!archive_read_new())
  {
    return 0.0;
  }

  archive_read_support_format_zip();
  if (archive_read_open_filename())
  {
    DefaultLayerMTimeFromArchive = 0.0;
    if (a2)
    {
      v5 = *MEMORY[0x1E695E640];
      v6 = archive_errno();
      *a2 = CFErrorCreate(0, v5, v6, 0);
    }
  }

  else
  {
    DefaultLayerMTimeFromArchive = re::ZipArchiveGetDefaultLayerMTimeFromArchive();
  }

  archive_read_free();
  return DefaultLayerMTimeFromArchive;
}

uint64_t re::AssetCompilerRegistry::registerAssetCompiler(uint64_t a1, uint64_t *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = (*(**a2 + 32))(&v30);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  if (v7 >= v6)
  {
    v8 = v7 + 1;
    if (v6 < v7 + 1)
    {
      if (*(a1 + 8))
      {
        v9 = 2 * v6;
        v10 = v6 == 0;
        v11 = 8;
        if (!v10)
        {
          v11 = v9;
        }

        if (v11 <= v8)
        {
          v12 = v8;
        }

        else
        {
          v12 = v11;
        }

        re::DynamicArray<std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>>::setCapacity((a1 + 8), v12);
      }

      else
      {
        re::DynamicArray<std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>>::setCapacity((a1 + 8), v8);
        ++*(a1 + 32);
      }
    }

    v7 = *(a1 + 24);
  }

  v13 = (*(a1 + 40) + 40 * v7);
  v14 = *a2;
  *a2 = 0;
  *v13 = v14;
  std::__function::__value_func<void ()(re::AssetCompiler *)>::__value_func[abi:nn200100]((v13 + 1), (a2 + 1));
  v15 = *(a1 + 24);
  *(a1 + 24) = v15 + 1;
  ++*(a1 + 32);
  if (v31)
  {
    for (i = 0; v31 > i; ++i)
    {
      *v34 = *(v32 + 8 * i);
      v17 = re::Hash<re::DynamicString>::operator()(buf, *v34);
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1 + 48, v34, v17, buf);
      if (*&buf[12] == 0x7FFFFFFF)
      {
        v18 = v31;
        if (v31 <= i)
        {
          *v39 = 0;
          v48 = 0u;
          v49 = 0u;
          v47 = 0u;
          memset(buf, 0, sizeof(buf));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v34 = 136315906;
          *&v34[4] = "operator[]";
          *&v34[12] = 1024;
          *&v34[14] = 797;
          v35 = 2048;
          v36 = i;
          v37 = 2048;
          v38 = v18;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_38:
          v33 = 0;
          v48 = 0u;
          v49 = 0u;
          v47 = 0u;
          memset(buf, 0, sizeof(buf));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v39 = 136315906;
          *&v39[4] = "operator[]";
          v40 = 1024;
          v41 = 797;
          v42 = 2048;
          v43 = i;
          v44 = 2048;
          v45 = v18;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_39:
          v33 = 0;
          v48 = 0u;
          v49 = 0u;
          v47 = 0u;
          memset(buf, 0, sizeof(buf));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v39 = 136315906;
          *&v39[4] = "operator[]";
          v40 = 1024;
          v41 = 789;
          v42 = 2048;
          v43 = v18;
          v44 = 2048;
          v45 = v2;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_40:
          *v39 = 0;
          v48 = 0u;
          v49 = 0u;
          v47 = 0u;
          memset(buf, 0, sizeof(buf));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v34 = 136315906;
          *&v34[4] = "operator[]";
          *&v34[12] = 1024;
          *&v34[14] = 797;
          v35 = 2048;
          v36 = i;
          v37 = 2048;
          v38 = v2;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        *v34 = *(v32 + 8 * i);
        memset(buf, 0, 24);
        v19 = re::Hash<re::DynamicString>::operator()(v39, *v34);
        re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1 + 48, v34, v19, buf);
        if (*&buf[12] == 0x7FFFFFFF)
        {
          v20 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1 + 48, *&buf[8], *buf);
          v2 = *v34;
          v20[5] = v15;
          ++*(a1 + 88);
        }
      }

      else
      {
        v18 = v31;
        if (v31 <= i)
        {
          goto LABEL_38;
        }

        *v39 = *(v32 + 8 * i);
        v21 = re::Hash<re::DynamicString>::operator()(buf, *v39);
        re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1 + 48, v39, v21, buf);
        v18 = *(*(a1 + 64) + 56 * *&buf[12] + 40);
        v2 = *(a1 + 24);
        if (v2 <= v18)
        {
          goto LABEL_39;
        }

        (*(**(*(a1 + 40) + 40 * v18) + 16))(v34);
        re::DynamicString::DynamicString(&v27, &v34[8]);
        v22 = *&v34[8];
        if (*&v34[8] && (v34[16] & 1) != 0)
        {
          v22 = (*(**&v34[8] + 40))();
        }

        v23 = *re::pipelineLogObjects(v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v2 = v31;
          if (v31 <= i)
          {
            goto LABEL_40;
          }

          v24 = *(v32 + 8 * i);
          v25 = v29;
          if (v28)
          {
            v25 = *&v29[7];
          }

          *buf = 136315394;
          *&buf[4] = v24;
          *&buf[12] = 2080;
          *&buf[14] = v25;
          _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, "This extension %s is already registered for assets of type %s", buf, 0x16u);
        }

        if (v27 && (v28 & 1) != 0)
        {
          (*(*v27 + 40))();
        }
      }
    }
  }

  result = v30;
  if (v30)
  {
    if (v32)
    {
      return (*(*v30 + 40))();
    }
  }

  return result;
}

unint64_t *re::AssetCompilerRegistry::getCompilerForExtension(re::AssetCompilerRegistry *this, const char *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  LOBYTE(v3) = *a2;
  if (*a2)
  {
    v4 = a2 + 1;
    v5 = v13;
    v6 = 30;
    do
    {
      if ((v3 - 65) < 0x1Au)
      {
        LOBYTE(v3) = v3 + 32;
      }

      *v5++ = v3;
      v7 = *v4++;
      v3 = v7;
      v9 = v6-- != 0;
    }

    while (v3 && v9);
  }

  else
  {
    v5 = v13;
  }

  *v5 = 0;
  result = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(this + 48, v13);
  if (result)
  {
    v11 = *result;
    v12 = *(this + 3);
    if (v12 <= *result)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v14 = 136315906;
      v15 = "operator[]";
      v16 = 1024;
      v17 = 797;
      v18 = 2048;
      v19 = v11;
      v20 = 2048;
      v21 = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    return *(*(this + 5) + 40 * v11);
  }

  return result;
}

uint64_t *re::DynamicArray<std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>>::clear(uint64_t *result)
{
  v1 = result;
  v2 = result[2];
  result[2] = 0;
  if (v2)
  {
    result = result[4];
    v3 = 40 * v2;
    do
    {
      result = std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](result) + 5;
      v3 -= 40;
    }

    while (v3);
  }

  ++*(v1 + 6);
  return result;
}

void *re::DynamicArray<std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>>::setCapacity(v5, a2);
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
        v10 = (v7 + 1);
        v11 = 40 * v9;
        v12 = v5[4];
        do
        {
          v13 = *v8;
          *v12 = 0;
          v12 += 5;
          *(v10 - 8) = v13;
          std::__function::__value_func<void ()(re::AssetCompiler *)>::__value_func[abi:nn200100](v10, (v8 + 1));
          std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](v8);
          v10 += 40;
          v8 = v12;
          v11 -= 40;
        }

        while (v11);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::allocInfo_AssetCompilerService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_496, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_496))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BD5C0, "AssetCompilerService");
    __cxa_guard_release(&_MergedGlobals_496);
  }

  return &unk_1EE1BD5C0;
}

void re::initInfo_AssetCompilerService(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x5FF8D78549D7284CLL;
  v6[1] = "AssetCompilerService";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::initInfo_AssetCompilerService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

uint64_t re::UniqueNameGenerator::uniqueName@<X0>(re::UniqueNameGenerator *this@<X0>, const char *a2@<X1>, const char *a3@<X2>, re::StringID *a4@<X8>)
{
  if (a2 && *a2)
  {
    a3 = a2;
  }

  for (i = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(this, &v15); i; i = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(this, &v15))
  {
    v8 = (*i + 1);
    *i = v8;
    if (v16)
    {
      v9 = v18;
    }

    else
    {
      v9 = v17;
    }

    re::DynamicString::format("%s[%u]", &v13, v9, v8);
    re::DynamicString::operator=(&v15, &v13);
    if (v13 && (v14 & 1) != 0)
    {
      (*(*v13 + 40))();
    }
  }

  LODWORD(v13) = 0;
  v10 = re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(this, &v15, &v13);
  if (v16)
  {
    v11 = v18;
  }

  else
  {
    v11 = v17;
  }

  *a4 = 0;
  *(a4 + 1) = &str_67;
  result = v15;
  if (v15)
  {
    if (v16)
    {
      return (*(*v15 + 40))();
    }
  }

  return result;
}

void re::usdkit::Resource::makeWithPath(re::usdkit::Resource *this@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x1E69DED70];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:this];
  v5 = [v4 resourceWithPath:v6];
  *a2 = v5;
}

void re::usdkit::Resource::makeMappedData(id *this@<X0>, void *a2@<X8>)
{
  v3 = *this;
  v4 = [v3 dataNoCopy];
  if (v4)
  {
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = ___ZNK2re6usdkit8Resource14makeMappedDataEv_block_invoke;
    v13 = &unk_1E8721710;
    v14 = v3;
    v5 = v4;
    v15 = v5;
    v6 = _Block_copy(&v10);
    v7 = objc_alloc(MEMORY[0x1E695DEF0]);
    v8 = v5;
    v9 = [v7 initWithBytesNoCopy:objc_msgSend(v8 length:"bytes" deallocator:{v10, v11, v12, v13), objc_msgSend(v5, "length"), v6}];
  }

  else
  {
    v9 = 0;
  }

  *a2 = v9;
}

re::FrameProfiler *re::FrameProfiler::FrameProfiler(re::FrameProfiler *this)
{
  *(this + 8) = 0;
  *this = &unk_1F5D0DF70;
  *(this + 3) = 0;
  *(this + 8) = 1;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  *(this + 60) = 0x7FFFFFFFLL;
  *(this + 88) = 0u;
  *(this + 26) = 0;
  *(this + 72) = 0u;
  v2 = this + 72;
  *(this + 108) = 0x7FFFFFFFLL;
  *(this + 19) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  *(this + 36) = 0;
  *(this + 44) = 545;
  *(this + 23) = 0;
  *(this + 24) = 10;
  *(this + 50) = 1;
  *(this + 102) = 0;
  *(this + 206) = 0;
  *(this + 29) = 0;
  *(this + 60) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 264) = 0;
  *(this + 34) = 0;
  *(this + 35) = 0;
  *(this + 288) = 0;
  *(this + 296) = 0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 82) = 0;
  *(this + 38) = 0;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 56) = 0;
  *(this + 364) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 380) = 0x7FFFFFFFLL;
  *(this + 106) = 0;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 428) = 0x7FFFFFFFLL;
  LODWORD(v9[0]) = 0;
  memset(v8, 0, sizeof(v8));
  *(v9 + 4) = 0x7FFFFFFFLL;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(v2, v8);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v8);
  v9[0] = 0;
  memset(v8 + 8, 0, 20);
  re::DynamicArray<float *>::setCapacity(v8, 0xFuLL);
  v5 = *(this + 15);
  if (v5 && *&v8[0] && v5 != *&v8[0])
  {
    re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    *(this + 15) = *&v8[0];
    *(this + 8) = *(v8 + 8);
    v6 = *(this + 19);
    *(this + 19) = v9[0];
    ++*(this + 36);
    if (v5)
    {
      if (v6)
      {
        (*(*v5 + 40))(v5);
      }
    }

    return this;
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      v4 = *a1 == *a2;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(a1, a2);
    }

    else
    {
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
      if (*a2)
      {
        v5 = *(a2 + 28);
        if (*(a1 + 24) < v5)
        {
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, v5);
        }

        re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, a2);
        ++*(a1 + 40);
      }
    }
  }

  return a1;
}

void re::FrameProfiler::~FrameProfiler(re::FrameProfiler *this)
{
  re::FrameProfiler::deinit(this);
  v3 = *(this + 17);
  if (v3)
  {
    v4 = *(this + 19);
    v5 = 8 * v3;
    do
    {
      v6 = *v4++;
      *(v6 + 64) = 0;
      v7 = re::globalAllocators(v2)[2];
      re::FrameCustomStats::~FrameCustomStats(v6);
      v2 = (*(*v7 + 40))(v7, v6);
      v5 -= 8;
    }

    while (v5);
  }

  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 9);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 49);
  v8.n128_f64[0] = re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 43);
  v9 = *(this + 38);
  if (v9)
  {
    v10 = *(this + 42);
    if (v10)
    {
      v11 = *(this + 40);
      if (v11)
      {
        v12 = 48 * v11;
        do
        {
          v8.n128_f64[0] = re::DynamicString::deinit(v10);
          v10 = (v10 + 48);
          v12 -= 48;
        }

        while (v12);
        v9 = *(this + 38);
        v10 = *(this + 42);
      }

      (*(*v9 + 40))(v9, v10, v8);
    }

    *(this + 42) = 0;
    *(this + 39) = 0;
    *(this + 40) = 0;
    *(this + 38) = 0;
    ++*(this + 82);
  }

  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 9);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 3);
}

{
  re::FrameProfiler::~FrameProfiler(this);

  JUMPOUT(0x1E6906520);
}

void re::FrameProfiler::deinit(re::FrameProfiler *this)
{
  if (*(this + 206) == 1)
  {
    v2 = *(this + 14);
    if (v2)
    {
      v3 = 0;
      v4 = *(this + 5);
      while (1)
      {
        v5 = *v4;
        v4 += 6;
        if (v5 < 0)
        {
          break;
        }

        if (v2 == ++v3)
        {
          LODWORD(v3) = *(this + 14);
          break;
        }
      }
    }

    else
    {
      LODWORD(v3) = 0;
    }

    while (v3 != v2)
    {
      v6 = *(*(this + 5) + 24 * v3 + 8);
      *(v6 + 64) = 0;
      re::internal::destroyPersistent<re::FrameStats>("deinit", 94, v6);
      v7 = *(this + 14);
      if (v7 <= v3 + 1)
      {
        v7 = v3 + 1;
      }

      while (v7 - 1 != v3)
      {
        LODWORD(v3) = v3 + 1;
        if ((*(*(this + 5) + 24 * v3) & 0x80000000) != 0)
        {
          goto LABEL_15;
        }
      }

      LODWORD(v3) = v7;
LABEL_15:
      ;
    }

    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 3);
    re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 43);
    *(this + 206) = 0;
  }
}

uint64_t re::FrameProfiler::init(uint64_t this)
{
  if (*(this + 206))
  {
    return this;
  }

  v1 = this;
  *(this + 196) = 0;
  v2 = std::thread::hardware_concurrency();
  *(v1 + 200) = v2;
  memset(v68, 0, 36);
  *&v68[36] = 0x7FFFFFFFLL;
  v3 = (v1 + 24);
  if ((v1 + 24) != v68)
  {
    v4 = *v3;
    v5 = *v68;
    if (!*v3 || v4 == *v68)
    {
      *(v1 + 24) = *v68;
      *v68 = v4;
      v10 = *&v68[8];
      v11 = *(v1 + 48);
      *&v68[8] = *(v1 + 32);
      v12 = *&v68[24];
      *(v1 + 32) = v10;
      *(v1 + 48) = v12;
      *&v68[24] = v11;
    }

    else
    {
      if (*(v1 + 52))
      {
        v6 = *(v1 + 48);
        if (v6)
        {
          memset_pattern16(*(v1 + 32), &unk_1E304C660, 4 * v6);
        }

        v7 = *(v1 + 56);
        if (v7)
        {
          v8 = *(v1 + 40);
          do
          {
            if ((*v8 & 0x80000000) != 0)
            {
              *v8 &= ~0x80000000;
            }

            v8 += 6;
            --v7;
          }

          while (v7);
        }

        *(v1 + 52) = 0;
        *(v1 + 56) = 0;
        v9 = *(v1 + 64) + 1;
        *(v1 + 60) = 0x7FFFFFFF;
        *(v1 + 64) = v9;
      }

      if (!v5)
      {
        goto LABEL_20;
      }

      if (*(v1 + 48) < *&v68[28])
      {
        re::HashTable<re::FrameProfilerStatisticsOptions,re::FrameStats *,re::Hash<re::FrameProfilerStatisticsOptions>,re::EqualTo<re::FrameProfilerStatisticsOptions>,true,false>::setCapacity(v1 + 24, *&v68[28]);
      }

      re::HashTable<re::FrameProfilerStatisticsOptions,re::FrameStats *,re::Hash<re::FrameProfilerStatisticsOptions>,re::EqualTo<re::FrameProfilerStatisticsOptions>,true,false>::move(v1 + 24, v68);
    }

    ++*(v1 + 64);
  }

LABEL_20:
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v68);
  v70 = 1;
  v14 = re::globalAllocators(v13);
  v15 = (*(*v14[2] + 32))(v14[2], 72, 8);
  *(v15 + 8) = 0u;
  *(v15 + 40) = 0u;
  *(v15 + 24) = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 8) = 10;
  *(v15 + 48) = 0x7FFFFFFF00000000;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *(v15 + 64) = 0;
  *v15 = &unk_1F5D0E080;
  *v68 = v15;
  v16 = re::HashTable<re::FrameProfilerStatisticsOptions,re::FrameStats *,re::Hash<re::FrameProfilerStatisticsOptions>,re::EqualTo<re::FrameProfilerStatisticsOptions>,true,false>::add(v1 + 24, &v70, v68);
  v70 = 2;
  v17 = re::globalAllocators(v16);
  v18 = (*(*v17[2] + 32))(v17[2], 72, 8);
  *(v18 + 8) = 0u;
  *(v18 + 40) = 0u;
  *(v18 + 24) = 0u;
  *(v18 + 56) = 0u;
  *(v18 + 8) = 10;
  *(v18 + 48) = 0x7FFFFFFF00000000;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  *(v18 + 64) = 0;
  *v18 = &unk_1F5D0E0C8;
  *v68 = v18;
  v19 = re::HashTable<re::FrameProfilerStatisticsOptions,re::FrameStats *,re::Hash<re::FrameProfilerStatisticsOptions>,re::EqualTo<re::FrameProfilerStatisticsOptions>,true,false>::add(v1 + 24, &v70, v68);
  v70 = 4;
  v20 = re::globalAllocators(v19);
  v21 = (*(*v20[2] + 32))(v20[2], 72, 8);
  *(v21 + 8) = 0u;
  *(v21 + 40) = 0u;
  *(v21 + 24) = 0u;
  *(v21 + 56) = 0u;
  *(v21 + 8) = 10;
  *(v21 + 48) = 0x7FFFFFFF00000000;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0u;
  *(v21 + 64) = 0;
  *v21 = &unk_1F5D0E110;
  *v68 = v21;
  v22 = re::HashTable<re::FrameProfilerStatisticsOptions,re::FrameStats *,re::Hash<re::FrameProfilerStatisticsOptions>,re::EqualTo<re::FrameProfilerStatisticsOptions>,true,false>::add(v1 + 24, &v70, v68);
  v70 = 8;
  v23 = re::globalAllocators(v22);
  v24 = (*(*v23[2] + 32))(v23[2], 72, 8);
  *(v24 + 8) = 0u;
  *(v24 + 40) = 0u;
  *(v24 + 24) = 0u;
  *(v24 + 56) = 0u;
  *(v24 + 8) = 10;
  *(v24 + 48) = 0x7FFFFFFF00000000;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0u;
  *(v24 + 64) = 0;
  *v24 = &unk_1F5D0E158;
  *v68 = v24;
  v25 = re::HashTable<re::FrameProfilerStatisticsOptions,re::FrameStats *,re::Hash<re::FrameProfilerStatisticsOptions>,re::EqualTo<re::FrameProfilerStatisticsOptions>,true,false>::add(v1 + 24, &v70, v68);
  v70 = 16;
  v26 = re::globalAllocators(v25);
  v27 = (*(*v26[2] + 32))(v26[2], 72, 8);
  *(v27 + 8) = 0u;
  *(v27 + 40) = 0u;
  *(v27 + 24) = 0u;
  *(v27 + 56) = 0u;
  *(v27 + 8) = 10;
  *(v27 + 48) = 0x7FFFFFFF00000000;
  *(v27 + 16) = 0u;
  *(v27 + 32) = 0u;
  *(v27 + 64) = 0;
  *v27 = &unk_1F5D0E1A0;
  *v68 = v27;
  v28 = re::HashTable<re::FrameProfilerStatisticsOptions,re::FrameStats *,re::Hash<re::FrameProfilerStatisticsOptions>,re::EqualTo<re::FrameProfilerStatisticsOptions>,true,false>::add(v1 + 24, &v70, v68);
  v70 = 32;
  v29 = re::globalAllocators(v28);
  v30 = (*(*v29[2] + 32))(v29[2], 72, 8);
  *(v30 + 8) = 0u;
  *(v30 + 40) = 0u;
  *(v30 + 24) = 0u;
  *(v30 + 56) = 0u;
  *(v30 + 8) = 10;
  *(v30 + 48) = 0x7FFFFFFF00000000;
  *(v30 + 16) = 0u;
  *(v30 + 32) = 0u;
  *(v30 + 64) = 0;
  *v30 = &unk_1F5D0E1E8;
  *v68 = v30;
  v31 = re::HashTable<re::FrameProfilerStatisticsOptions,re::FrameStats *,re::Hash<re::FrameProfilerStatisticsOptions>,re::EqualTo<re::FrameProfilerStatisticsOptions>,true,false>::add(v1 + 24, &v70, v68);
  v70 = 64;
  v32 = re::globalAllocators(v31);
  v33 = (*(*v32[2] + 32))(v32[2], 72, 8);
  *(v33 + 8) = 0u;
  *(v33 + 40) = 0u;
  *(v33 + 24) = 0u;
  *(v33 + 56) = 0u;
  *(v33 + 8) = 10;
  *(v33 + 48) = 0x7FFFFFFF00000000;
  *(v33 + 16) = 0u;
  *(v33 + 32) = 0u;
  *(v33 + 64) = 0;
  *v33 = &unk_1F5D0E230;
  *v68 = v33;
  v34 = re::HashTable<re::FrameProfilerStatisticsOptions,re::FrameStats *,re::Hash<re::FrameProfilerStatisticsOptions>,re::EqualTo<re::FrameProfilerStatisticsOptions>,true,false>::add(v1 + 24, &v70, v68);
  v70 = 128;
  v35 = re::globalAllocators(v34);
  v36 = (*(*v35[2] + 32))(v35[2], 72, 8);
  *(v36 + 8) = 0u;
  *(v36 + 40) = 0u;
  *(v36 + 24) = 0u;
  *(v36 + 56) = 0u;
  *(v36 + 8) = 10;
  *(v36 + 48) = 0x7FFFFFFF00000000;
  *(v36 + 16) = 0u;
  *(v36 + 32) = 0u;
  *(v36 + 64) = 0;
  *v36 = &unk_1F5D0E278;
  *v68 = v36;
  v37 = re::HashTable<re::FrameProfilerStatisticsOptions,re::FrameStats *,re::Hash<re::FrameProfilerStatisticsOptions>,re::EqualTo<re::FrameProfilerStatisticsOptions>,true,false>::add(v1 + 24, &v70, v68);
  v70 = 256;
  v38 = re::globalAllocators(v37);
  v39 = (*(*v38[2] + 32))(v38[2], 72, 8);
  *(v39 + 8) = 0u;
  *(v39 + 40) = 0u;
  *(v39 + 24) = 0u;
  *(v39 + 56) = 0u;
  *(v39 + 8) = 10;
  *(v39 + 48) = 0x7FFFFFFF00000000;
  *(v39 + 16) = 0u;
  *(v39 + 32) = 0u;
  *(v39 + 64) = 0;
  *v39 = &unk_1F5D0E2C0;
  *v68 = v39;
  v40 = re::HashTable<re::FrameProfilerStatisticsOptions,re::FrameStats *,re::Hash<re::FrameProfilerStatisticsOptions>,re::EqualTo<re::FrameProfilerStatisticsOptions>,true,false>::add(v1 + 24, &v70, v68);
  v70 = 512;
  v41 = re::globalAllocators(v40);
  v42 = (*(*v41[2] + 32))(v41[2], 80, 8);
  *v68 = re::FrameMemoryStats::FrameMemoryStats(v42);
  v43 = re::HashTable<re::FrameProfilerStatisticsOptions,re::FrameStats *,re::Hash<re::FrameProfilerStatisticsOptions>,re::EqualTo<re::FrameProfilerStatisticsOptions>,true,false>::add(v1 + 24, &v70, v68);
  v70 = 1024;
  v44 = re::globalAllocators(v43);
  v45 = (*(*v44[2] + 32))(v44[2], 96, 8);
  *(v45 + 8) = 0u;
  *(v45 + 40) = 0u;
  *(v45 + 24) = 0u;
  *(v45 + 56) = 0u;
  *(v45 + 72) = 0u;
  *(v45 + 88) = 0;
  *(v45 + 8) = 10;
  *(v45 + 48) = 0x7FFFFFFF00000000;
  *(v45 + 16) = 0u;
  *(v45 + 32) = 0u;
  *(v45 + 64) = 0;
  *v45 = &unk_1F5D0E320;
  *(v45 + 84) = 0;
  *(v45 + 76) = 0;
  *(v45 + 68) = 0;
  *v68 = v45;
  v46 = re::HashTable<re::FrameProfilerStatisticsOptions,re::FrameStats *,re::Hash<re::FrameProfilerStatisticsOptions>,re::EqualTo<re::FrameProfilerStatisticsOptions>,true,false>::add(v1 + 24, &v70, v68);
  v70 = 2048;
  v47 = re::globalAllocators(v46);
  v48 = (*(*v47[2] + 32))(v47[2], 72, 8);
  *(v48 + 8) = 0u;
  *(v48 + 40) = 0u;
  *(v48 + 24) = 0u;
  *(v48 + 56) = 0u;
  *(v48 + 8) = 10;
  *(v48 + 48) = 0x7FFFFFFF00000000;
  *(v48 + 16) = 0u;
  *(v48 + 32) = 0u;
  *(v48 + 64) = 0;
  *v48 = &unk_1F5D0E368;
  *v68 = v48;
  v49 = re::HashTable<re::FrameProfilerStatisticsOptions,re::FrameStats *,re::Hash<re::FrameProfilerStatisticsOptions>,re::EqualTo<re::FrameProfilerStatisticsOptions>,true,false>::add(v1 + 24, &v70, v68);
  v70 = 0x2000;
  v50 = re::globalAllocators(v49);
  v51 = (*(*v50[2] + 32))(v50[2], 168, 8);
  *v68 = re::FrameCustomStats::FrameCustomStats(v51);
  re::HashTable<re::FrameProfilerStatisticsOptions,re::FrameStats *,re::Hash<re::FrameProfilerStatisticsOptions>,re::EqualTo<re::FrameProfilerStatisticsOptions>,true,false>::add(v1 + 24, &v70, v68);
  *v68 = 0x2000;
  v52 = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](v1 + 24, v68);
  Line = re::FrameCustomStats::addOrGetLine(*v52, "Custom Stats");
  v70 = 0x4000;
  v54 = re::globalAllocators(Line);
  v55 = (*(*v54[2] + 32))(v54[2], 72, 8);
  *(v55 + 8) = 0u;
  *(v55 + 40) = 0u;
  *(v55 + 24) = 0u;
  *(v55 + 56) = 0u;
  *(v55 + 8) = 10;
  *(v55 + 48) = 0x7FFFFFFF00000000;
  *(v55 + 16) = 0u;
  *(v55 + 32) = 0u;
  *(v55 + 64) = 0;
  *v55 = &unk_1F5D0E3C8;
  *v68 = v55;
  v56 = re::HashTable<re::FrameProfilerStatisticsOptions,re::FrameStats *,re::Hash<re::FrameProfilerStatisticsOptions>,re::EqualTo<re::FrameProfilerStatisticsOptions>,true,false>::add(v1 + 24, &v70, v68);
  v70 = 0x20000;
  v57 = re::globalAllocators(v56);
  v58 = (*(*v57[2] + 32))(v57[2], 72, 8);
  *(v58 + 8) = 0u;
  *(v58 + 40) = 0u;
  *(v58 + 24) = 0u;
  *(v58 + 56) = 0u;
  *(v58 + 8) = 10;
  *(v58 + 48) = 0x7FFFFFFF00000000;
  *(v58 + 16) = 0u;
  *(v58 + 32) = 0u;
  *(v58 + 64) = 0;
  *v58 = &unk_1F5D0E410;
  *v68 = v58;
  v59 = re::HashTable<re::FrameProfilerStatisticsOptions,re::FrameStats *,re::Hash<re::FrameProfilerStatisticsOptions>,re::EqualTo<re::FrameProfilerStatisticsOptions>,true,false>::add(v1 + 24, &v70, v68);
  v60 = *(v1 + 56);
  if (v60)
  {
    v61 = 0;
    v62 = *(v1 + 40);
    while (1)
    {
      v63 = *v62;
      v62 += 6;
      if (v63 < 0)
      {
        break;
      }

      if (v60 == ++v61)
      {
        LODWORD(v61) = *(v1 + 56);
        break;
      }
    }
  }

  else
  {
    LODWORD(v61) = 0;
  }

  while (v61 != v60)
  {
    v59 = re::FrameStats::init(*(*(v1 + 40) + 24 * v61 + 8), *(v1 + 200), *(v1 + 192));
    v64 = *(v1 + 56);
    if (v64 <= v61 + 1)
    {
      v64 = v61 + 1;
    }

    while (v64 - 1 != v61)
    {
      LODWORD(v61) = v61 + 1;
      if ((*(*(v1 + 40) + 24 * v61) & 0x80000000) != 0)
      {
        goto LABEL_33;
      }
    }

    LODWORD(v61) = v64;
LABEL_33:
    ;
  }

  memset(v68, 0, 36);
  *&v68[36] = 0x7FFFFFFFLL;
  re::HashTable<re::ProfilerStatistic,re::FrameStats::CollectedStatistics,re::Hash<re::ProfilerStatistic>,re::EqualTo<re::ProfilerStatistic>,true,false>::operator=(v1 + 344, v68);
  re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v68);
  memset(v68, 0, 36);
  *&v68[36] = 0x7FFFFFFFLL;
  re::HashTable<re::ProfilerStatistic,re::FrameStats::CollectedStatistics,re::Hash<re::ProfilerStatistic>,re::EqualTo<re::ProfilerStatistic>,true,false>::operator=(v1 + 392, v68);
  re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v68);
  v66 = 0;
  do
  {
    LOBYTE(v70) = v66;
    *v68 = 0xFF7FFFFF7F7FFFFFLL;
    *&v68[16] = 0;
    *&v68[24] = xmmword_1E3100EC0;
    *&v68[40] = xmmword_1E3100ED0;
    v69 = 0;
    re::HashTable<re::ProfilerStatistic,re::FrameStats::CollectedStatistics,re::Hash<re::ProfilerStatistic>,re::EqualTo<re::ProfilerStatistic>,true,false>::addNew(v1 + 344, &v70, v68);
    *v68 = 0xFF7FFFFF7F7FFFFFLL;
    *&v68[16] = 0;
    *&v68[24] = xmmword_1E3100EC0;
    *&v68[40] = xmmword_1E3100ED0;
    v69 = 0;
    re::HashTable<re::ProfilerStatistic,re::FrameStats::CollectedStatistics,re::Hash<re::ProfilerStatistic>,re::EqualTo<re::ProfilerStatistic>,true,false>::addNew(v1 + 392, &v70, v68);
  }

  while (v66++ < 0x9C);
  *(v1 + 206) = 1;
  return re::FrameProfiler::setEngineInitializedTimestamp(v1, *(v1 + 208));
}

uint64_t re::HashTable<re::FrameProfilerStatisticsOptions,re::FrameStats *,re::Hash<re::FrameProfilerStatisticsOptions>,re::EqualTo<re::FrameProfilerStatisticsOptions>,true,false>::add(uint64_t a1, _DWORD *a2, void *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    result = re::HashTable<re::FrameProfilerStatisticsOptions,re::FrameStats *,re::Hash<re::FrameProfilerStatisticsOptions>,re::EqualTo<re::FrameProfilerStatisticsOptions>,true,false>::allocEntry(a1, v9, v8);
    *(result + 4) = *a2;
    *(result + 8) = *a3;
    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::HashTable<re::ProfilerStatistic,re::FrameStats::CollectedStatistics,re::Hash<re::ProfilerStatistic>,re::EqualTo<re::ProfilerStatistic>,true,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      v4 = *a1 == *a2;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(a1, a2);
    }

    else
    {
      re::HashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::clear(a1);
      if (*a2)
      {
        v5 = *(a2 + 28);
        if (*(a1 + 24) < v5)
        {
          re::HashTable<re::ProfilerStatistic,re::FrameStats::CollectedStatistics,re::Hash<re::ProfilerStatistic>,re::EqualTo<re::ProfilerStatistic>,true,false>::setCapacity(a1, v5);
        }

        re::HashTable<re::ProfilerStatistic,re::FrameStats::CollectedStatistics,re::Hash<re::ProfilerStatistic>,re::EqualTo<re::ProfilerStatistic>,true,false>::move(a1, a2);
        ++*(a1 + 40);
      }
    }
  }

  return a1;
}

void re::HashTable<re::ProfilerStatistic,re::FrameStats::CollectedStatistics,re::Hash<re::ProfilerStatistic>,re::EqualTo<re::ProfilerStatistic>,true,false>::addNew(uint64_t a1, unsigned __int8 *a2, const re::FrameStats::CollectedStatistics *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *a2) ^ ((0xBF58476D1CE4E5B9 * *a2) >> 27));
  re::HashTable<unsigned char,re::Matrix4x4<float>,re::Hash<unsigned char>,re::EqualTo<unsigned char>,false,false>::findEntry<unsigned char>(a1, a2, v6 ^ (v6 >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    v7 = re::HashTable<re::ProfilerStatistic,re::FrameStats::CollectedStatistics,re::Hash<re::ProfilerStatistic>,re::EqualTo<re::ProfilerStatistic>,true,false>::allocEntry(a1, v9, v8);
    *(v7 + 4) = *a2;
    re::FrameStats::CollectedStatistics::CollectedStatistics((v7 + 8), a3);
    ++*(a1 + 40);
  }
}

uint64_t re::FrameProfiler::setEngineInitializedTimestamp(uint64_t this, unint64_t a2)
{
  v3 = this;
  if (*(this + 206) == 1)
  {
    v10 = 1024;
    this = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](this + 24, &v10);
    v4 = *this;
    v5 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
    if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
    {
      this = mach_timebase_info(&info);
      if (this)
      {
        v8 = NAN;
LABEL_7:
        v9 = v8 / 1000000.0;
        *(v4 + 84) = v9;
        goto LABEL_8;
      }

      LODWORD(v6) = info.numer;
      LODWORD(v7) = info.denom;
      v5 = v6 / v7;
      re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v5;
    }

    v8 = v5 * a2;
    goto LABEL_7;
  }

LABEL_8:
  *(v3 + 208) = a2;
  return this;
}

re *re::internal::destroyPersistent<re::FrameStats>(re *result, uint64_t a2, void (***a3)(void))
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

void re::FrameProfiler::process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 206) != 1)
  {
    return;
  }

  v39 = v5;
  v40 = v6;
  if (*(a1 + 204) != 1)
  {
    return;
  }

  v9 = *a4;
  v10 = *(a4 + 8);
  if (*a4 == v10)
  {
    goto LABEL_17;
  }

  do
  {
    v11 = 0;
    v12 = *v9 + 128;
    do
    {
      v13 = (v12 + (v11 << 7));
      v14 = v13[3];
      if (v14)
      {
        v15 = v13[2];
        if (v15)
        {
          if (*(a1 + 344))
          {
            v16 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v11) ^ ((0xBF58476D1CE4E5B9 * v11) >> 27));
            v17 = (v16 ^ (v16 >> 31)) % *(a1 + 368);
            v18 = *(a1 + 360);
            v19 = *(*(a1 + 352) + 4 * v17);
            if (v19 != 0x7FFFFFFF)
            {
              while (v11 != *(v18 + 80 * v19 + 4))
              {
                v19 = *(v18 + 80 * v19) & 0x7FFFFFFF;
                if (v19 == 0x7FFFFFFF)
                {
                  goto LABEL_13;
                }
              }

              goto LABEL_14;
            }
          }

          else
          {
            v18 = *(a1 + 360);
          }

LABEL_13:
          v19 = 0x7FFFFFFFLL;
LABEL_14:
          re::FrameStats::CollectedStatistics::addGroupValues((v18 + 80 * v19 + 8), v15, v14, *v13, v13[1]);
        }
      }

      ++v11;
    }

    while (v11 != 157);
    ++v9;
  }

  while (v9 != v10);
LABEL_17:
  v20 = *a5;
  v36 = *(a5 + 8);
  if (*a5 != v36)
  {
    while (1)
    {
      v21 = 0;
      v22 = 0;
      v37 = v20;
      v23 = *v20;
      do
      {
        if (*(v23 + 8 * v22))
        {
          v24 = v21 > 0x1F;
        }

        else
        {
          v24 = 1;
        }

        if (!v24)
        {
          v38[v21++] = v22;
        }

        ++v22;
      }

      while (v22 != 32);
      if (v21)
      {
        break;
      }

LABEL_41:
      v20 = v37 + 1;
      if (v37 + 1 == v36)
      {
        return;
      }
    }

    v25 = 0;
    while (1)
    {
      v26 = v38[v25];
      if (*(a1 + 168) == v26)
      {
        break;
      }

LABEL_40:
      if (++v25 == v21)
      {
        goto LABEL_41;
      }
    }

    v27 = 0;
    v28 = *(v23 + 8 * v26) + 128;
    while (2)
    {
      v29 = (v28 + (v27 << 7));
      v30 = v29[3];
      if (!v30)
      {
        goto LABEL_39;
      }

      v31 = v29[2];
      if (!v31)
      {
        goto LABEL_39;
      }

      if (*(a1 + 392))
      {
        v32 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v27) ^ ((0xBF58476D1CE4E5B9 * v27) >> 27));
        v33 = (v32 ^ (v32 >> 31)) % *(a1 + 416);
        v34 = *(a1 + 408);
        v35 = *(*(a1 + 400) + 4 * v33);
        if (v35 != 0x7FFFFFFF)
        {
          while (v27 != *(v34 + 80 * v35 + 4))
          {
            v35 = *(v34 + 80 * v35) & 0x7FFFFFFF;
            if (v35 == 0x7FFFFFFF)
            {
              goto LABEL_37;
            }
          }

LABEL_38:
          re::FrameStats::CollectedStatistics::addGroupValues((v34 + 80 * v35 + 8), v31, v30, *v29, v29[1]);
LABEL_39:
          if (++v27 == 157)
          {
            goto LABEL_40;
          }

          continue;
        }
      }

      else
      {
        v34 = *(a1 + 408);
      }

      break;
    }

LABEL_37:
    v35 = 0x7FFFFFFFLL;
    goto LABEL_38;
  }
}

void re::FrameProfiler::setOverlayEnabled(re::FrameProfiler *this, int a2)
{
  os_unfair_lock_lock(this + 56);
  re::Defaults::intValue("statisticsOverlayEnabled", v4, v7);
  if (v7[0] != 1)
  {
    if (!a2)
    {
      goto LABEL_7;
    }

LABEL_10:
    if ((*(this + 206) & 1) == 0)
    {
      re::FrameProfiler::init(this);
    }

    v6 = 1;
    goto LABEL_13;
  }

  if (v8)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  if (v8 == 1 || (v5 & 1) != 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  if (*(this + 206) == 1)
  {
    re::FrameProfiler::deinit(this);
    v6 = 0;
LABEL_13:
    re::ProfilerManager::setProcessorEnabled<re::FrameProfiler,void>(*(this + 23), v6);
    goto LABEL_15;
  }

  LOBYTE(v6) = 0;
LABEL_15:
  *(this + 204) = v6;

  os_unfair_lock_unlock(this + 56);
}

void re::FrameProfiler::checkUserDefaultsForStatisticsOptions(re::FrameProfiler *this, const char *a2)
{
  re::Defaults::intValue("showFrameTimeStatistics", a2, v56);
  re::Defaults::intValue("showAnimationStatistics", v3, v54);
  re::Defaults::intValue("showAssetPipelineStatistics", v4, v52);
  re::Defaults::intValue("showAudioStatistics", v5, v50);
  re::Defaults::intValue("showECSStatistics", v6, v48);
  re::Defaults::intValue("showMeshStatistics", v7, v46);
  re::Defaults::intValue("showNetworkStatistics", v8, v44);
  re::Defaults::intValue("showPhysicsStatistics", v9, v42);
  re::Defaults::intValue("showRenderingStatistics", v10, v40);
  re::Defaults::intValue("showMemoryStatistics", v11, v38);
  re::Defaults::intValue("showThermalStatistics", v12, v36);
  re::Defaults::intValue("showSceneUnderstandingStatistics", v13, v34);
  re::Defaults::intValue("showCustomStatistics", v14, v32);
  re::Defaults::intValue("showAttributionStatistics", v15, v30);
  re::Defaults::intValue("showVFXStatistics", v16, v28);
  re::Defaults::intValue("showAllStatistics", v17, v26);
  re::Defaults::intValue("showMTLCounterAPIStatistics", v18, v24);
  if (v56[0] == 1)
  {
    v20 = *(this + 44) & 0xFFFFFFFE;
    if (v57)
    {
      ++v20;
    }

    *(this + 44) = v20;
  }

  if (v54[0] == 1)
  {
    *(this + 44) = *(this + 44) & 0xFFFFFFFD | (2 * (v55 != 0));
  }

  if (v52[0] == 1)
  {
    *(this + 44) = *(this + 44) & 0xFFFFFFFB | (4 * (v53 != 0));
  }

  if (v50[0] == 1)
  {
    *(this + 44) = *(this + 44) & 0xFFFFFFF7 | (8 * (v51 != 0));
  }

  if (v48[0] == 1)
  {
    *(this + 44) = *(this + 44) & 0xFFFFFFEF | (16 * (v49 != 0));
  }

  if (v46[0] == 1)
  {
    *(this + 44) = *(this + 44) & 0xFFFFFFDF | (32 * (v47 != 0));
  }

  if (v44[0] == 1)
  {
    *(this + 44) = *(this + 44) & 0xFFFFFFBF | ((v45 != 0) << 6);
  }

  if (v42[0] == 1)
  {
    *(this + 44) = *(this + 44) & 0xFFFFFF7F | ((v43 != 0) << 7);
  }

  if (v40[0] == 1)
  {
    *(this + 44) = *(this + 44) & 0xFFFFFEFF | ((v41 != 0) << 8);
  }

  if (v38[0] == 1)
  {
    *(this + 44) = *(this + 44) & 0xFFFFFDFF | ((v39 != 0) << 9);
  }

  if (v36[0] == 1)
  {
    *(this + 44) = *(this + 44) & 0xFFFFFBFF | ((v37 != 0) << 10);
  }

  if (v34[0] == 1)
  {
    *(this + 44) = *(this + 44) & 0xFFFFF7FF | ((v35 != 0) << 11);
  }

  if (v32[0] == 1)
  {
    *(this + 44) = *(this + 44) & 0xFFFFDFFF | ((v33 != 0) << 13);
  }

  if (v30[0] == 1)
  {
    *(this + 44) = *(this + 44) & 0xFFFFBFFF | ((v31 != 0) << 14);
  }

  if (v28[0] == 1)
  {
    *(this + 44) = *(this + 44) & 0xFFFDFFFF | ((v29 != 0) << 17);
  }

  if (v26[0] == 1)
  {
    if (v27)
    {
      v21 = -1;
    }

    else
    {
      v21 = 0;
    }

    *(this + 44) = v21;
  }

  if (v24[0] == 1)
  {
    *(this + 44) = *(this + 44) & 0xFFFFEFFF | ((v25 != 0) << 12);
  }

  else
  {
    v22 = *re::foundationProfilingLogObjects(v19);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEFAULT, "MTLCounter API disabled. Enable with 'defaults write -g com.apple.re.showMTLCounterAPIStatistics 1'", v23, 2u);
    }
  }
}

uint64_t re::FrameProfiler::totalNumberOfFlags(re::FrameProfiler *this, int a2)
{
  v3 = *(this + 14);
  if (v3)
  {
    v4 = 0;
    v5 = *(this + 5);
    while (1)
    {
      v6 = *v5;
      v5 += 6;
      if (v6 < 0)
      {
        break;
      }

      if (v3 == ++v4)
      {
        LODWORD(v4) = *(this + 14);
        break;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  if (v4 == v3)
  {
    return 0;
  }

  LODWORD(result) = 0;
  v8 = *(this + 5);
  do
  {
    if ((*(v8 + 24 * v4 + 4) & a2) != 0)
    {
      result = (result + 1);
    }

    else
    {
      result = result;
    }

    if (v3 <= v4 + 1)
    {
      v9 = v4 + 1;
    }

    else
    {
      v9 = v3;
    }

    while (v9 - 1 != v4)
    {
      LODWORD(v4) = v4 + 1;
      if ((*(v8 + 24 * v4) & 0x80000000) != 0)
      {
        goto LABEL_20;
      }
    }

    LODWORD(v4) = v9;
LABEL_20:
    ;
  }

  while (v4 != v3);
  return result;
}

uint64_t re::FrameProfiler::setProfilerUpdateInterval(uint64_t this, float a2)
{
  if (*(this + 206) == 1)
  {
    v2 = *(this + 56);
    if (v2)
    {
      v3 = 0;
      v4 = *(this + 40);
      while (1)
      {
        v5 = *v4;
        v4 += 6;
        if (v5 < 0)
        {
          break;
        }

        if (v2 == ++v3)
        {
          LODWORD(v3) = *(this + 56);
          break;
        }
      }
    }

    else
    {
      LODWORD(v3) = 0;
    }

    if (v3 == v2)
    {
      v6 = a2;
    }

    else
    {
      v7 = *(this + 40);
      v6 = a2;
      do
      {
        *(*(v7 + 24 * v3 + 8) + 8) = v6;
        if (v2 <= v3 + 1)
        {
          v8 = v3 + 1;
        }

        else
        {
          v8 = v2;
        }

        while (v8 - 1 != v3)
        {
          LODWORD(v3) = v3 + 1;
          if ((*(v7 + 24 * v3) & 0x80000000) != 0)
          {
            goto LABEL_18;
          }
        }

        LODWORD(v3) = v8;
LABEL_18:
        ;
      }

      while (v3 != v2);
    }

    *(this + 192) = v6;
  }

  return this;
}

void re::FrameProfiler::checkUserDefaults(re::FrameProfiler *this, const char *a2)
{
  re::Defaults::intValue("statisticsOverlayEnabled", a2, v4);
  if (v4[0] == 1)
  {
    re::FrameProfiler::setOverlayEnabled(this, 1);
  }

  re::FrameProfiler::checkUserDefaultsForStatisticsOptions(this, v3);
}

float re::FrameProfiler::totalFrameTime(re::FrameProfiler *this)
{
  if (*(this + 206))
  {
    v1 = 0x7FFFFFFFLL;
    if (*(this + 43))
    {
      v2 = *(*(this + 44) + 4 * (0x5692161D100B05E5uLL % *(this + 92)));
      if (v2 != 0x7FFFFFFF)
      {
        v3 = *(this + 45);
        v1 = 0x7FFFFFFFLL;
        while (*(v3 + 80 * v2 + 4) != 1)
        {
          v2 = *(v3 + 80 * v2) & 0x7FFFFFFF;
          if (v2 == 0x7FFFFFFF)
          {
            goto LABEL_11;
          }
        }

        v1 = v2;
      }
    }

LABEL_11:
    v6 = *(*(this + 45) + 80 * v1 + 40);
    v7 = *(this + 48);
    v8 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
    if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
    {
      if (mach_timebase_info(&info))
      {
        v11 = NAN;
        return v11 / 1000000.0;
      }

      LODWORD(v9) = info.numer;
      LODWORD(v10) = info.denom;
      v8 = v9 / v10;
      re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v8;
    }

    v11 = v8 * (v6 / v7);
    return v11 / 1000000.0;
  }

  v4 = *re::foundationProfilingLogObjects(this);
  v5 = -1.0;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "totalFrameTime returns an accurate value only while statistics overlay is enabled", v13, 2u);
  }

  return v5;
}

uint64_t re::FrameProfiler::frameUpdateFinished(re::FrameProfiler *this)
{
  if (*(this + 206) != 1)
  {
    return 0;
  }

  v2 = *(this + 48);
  v3 = *(this + 49) + 1;
  *(this + 49) = v3;
  if (v3 != v2)
  {
    return 0;
  }

  v4 = *(this + 94);
  if (v4)
  {
    v5 = 0;
    v6 = *(this + 45);
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
        LODWORD(v5) = *(this + 94);
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
    v9 = *(this + 45);
    do
    {
      v10 = v9 + 80 * v5;
      *(v10 + 32) = *(v10 + 8);
      *(v10 + 48) = *(v10 + 24);
      *(v10 + 8) = xmmword_1E3100EE0;
      *(v10 + 24) = 0;
      if (v4 <= v5 + 1)
      {
        v11 = v5 + 1;
      }

      else
      {
        v11 = v4;
      }

      while (v11 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(v9 + 80 * v5) & 0x80000000) != 0)
        {
          goto LABEL_20;
        }
      }

      LODWORD(v5) = v11;
LABEL_20:
      ;
    }

    while (v5 != v4);
  }

  v12 = *(this + 106);
  if (v12)
  {
    v13 = 0;
    v14 = *(this + 51);
    while (1)
    {
      v15 = *v14;
      v14 += 20;
      if (v15 < 0)
      {
        break;
      }

      if (v12 == ++v13)
      {
        LODWORD(v13) = *(this + 106);
        break;
      }
    }
  }

  else
  {
    LODWORD(v13) = 0;
  }

  if (v13 != v12)
  {
    v16 = *(this + 51);
    do
    {
      v17 = v16 + 80 * v13;
      *(v17 + 32) = *(v17 + 8);
      *(v17 + 48) = *(v17 + 24);
      *(v17 + 8) = xmmword_1E3100EE0;
      *(v17 + 24) = 0;
      if (v12 <= v13 + 1)
      {
        v18 = v13 + 1;
      }

      else
      {
        v18 = v12;
      }

      while (v18 - 1 != v13)
      {
        LODWORD(v13) = v13 + 1;
        if ((*(v16 + 80 * v13) & 0x80000000) != 0)
        {
          goto LABEL_36;
        }
      }

      LODWORD(v13) = v18;
LABEL_36:
      ;
    }

    while (v13 != v12);
  }

  *(this + 49) = 0;
  v19 = *(this + 40);
  *(this + 40) = 0;
  if (v19)
  {
    v20 = *(this + 42);
    v21 = 48 * v19;
    do
    {
      re::DynamicString::deinit(v20);
      v20 = (v20 + 48);
      v21 -= 48;
    }

    while (v21);
  }

  ++*(this + 82);
  os_unfair_lock_lock(this + 56);
  v22 = *(this + 17);
  if (v22)
  {
    v23 = *(this + 19);
    v24 = &v23[v22];
    do
    {
      v25 = *v23;
      if (*(*v23 + 160) == 1)
      {
        (*(*v25 + 24))(*v23, v25 + 16, this + 344, this + 392);
        v26 = *(v25 + 48);
        if (v26)
        {
          v27 = 0;
          v28 = *(v25 + 32);
          while (1)
          {
            v29 = *v28;
            v28 += 16;
            if (v29 < 0)
            {
              break;
            }

            if (v26 == ++v27)
            {
              LODWORD(v27) = *(v25 + 48);
              break;
            }
          }
        }

        else
        {
          LODWORD(v27) = 0;
        }

        if (v27 != v26)
        {
          v30 = *(v25 + 32);
          do
          {
            re::DynamicArray<re::FrameStatisticsOutput>::add(this + 304, (v30 + (v27 << 6) + 8));
            if (*(v25 + 48) <= (v27 + 1))
            {
              v31 = v27 + 1;
            }

            else
            {
              v31 = *(v25 + 48);
            }

            v30 = *(v25 + 32);
            while (v31 - 1 != v27)
            {
              LODWORD(v27) = v27 + 1;
              if ((*(v30 + (v27 << 6)) & 0x80000000) != 0)
              {
                goto LABEL_60;
              }
            }

            LODWORD(v27) = v31;
LABEL_60:
            ;
          }

          while (v27 != v26);
        }
      }

      ++v23;
    }

    while (v23 != v24);
  }

  os_unfair_lock_unlock(this + 56);
  v32 = *(this + 14);
  if (v32)
  {
    v33 = 0;
    v34 = *(this + 5);
    while (1)
    {
      v35 = *v34;
      v34 += 6;
      if (v35 < 0)
      {
        break;
      }

      if (v32 == ++v33)
      {
        LODWORD(v33) = *(this + 14);
        break;
      }
    }
  }

  else
  {
    LODWORD(v33) = 0;
  }

  while (v33 != v32)
  {
    v36 = *(this + 5);
    if ((*(this + 44) & *(v36 + 24 * v33 + 4)) != 0)
    {
      v37 = *(v36 + 24 * v33 + 8);
      (*(*v37 + 24))(v37, v37 + 16, this + 344, this + 392);
      v38 = *(v37 + 48);
      if (v38)
      {
        v39 = 0;
        v40 = *(v37 + 32);
        while (1)
        {
          v41 = *v40;
          v40 += 16;
          if (v41 < 0)
          {
            break;
          }

          if (v38 == ++v39)
          {
            LODWORD(v39) = *(v37 + 48);
            break;
          }
        }
      }

      else
      {
        LODWORD(v39) = 0;
      }

      if (v39 != v38)
      {
        v42 = *(v37 + 32);
        do
        {
          re::DynamicArray<re::FrameStatisticsOutput>::add(this + 304, (v42 + (v39 << 6) + 8));
          if (*(v37 + 48) <= (v39 + 1))
          {
            v43 = v39 + 1;
          }

          else
          {
            v43 = *(v37 + 48);
          }

          v42 = *(v37 + 32);
          while (v43 - 1 != v39)
          {
            LODWORD(v39) = v39 + 1;
            if ((*(v42 + (v39 << 6)) & 0x80000000) != 0)
            {
              goto LABEL_87;
            }
          }

          LODWORD(v39) = v43;
LABEL_87:
          ;
        }

        while (v39 != v38);
      }
    }

    v44 = *(this + 14);
    if (v44 <= v33 + 1)
    {
      v44 = v33 + 1;
    }

    while (v44 - 1 != v33)
    {
      LODWORD(v33) = v33 + 1;
      if ((*(*(this + 5) + 24 * v33) & 0x80000000) != 0)
      {
        goto LABEL_94;
      }
    }

    LODWORD(v33) = v44;
LABEL_94:
    ;
  }

  return 1;
}

re::DynamicString *re::DynamicArray<re::FrameStatisticsOutput>::add(uint64_t a1, re::DynamicString *a2)
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

        re::DynamicArray<re::FrameStatisticsOutput>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::FrameStatisticsOutput>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  result = re::DynamicString::DynamicString((*(a1 + 32) + 48 * v5), a2);
  v12 = *(a2 + 4);
  *(result + 10) = *(a2 + 10);
  *(result + 4) = v12;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

void re::FrameProfiler::addCustomFrameStats(os_unfair_lock_s *this, char *a2, float a3)
{
  if (BYTE2(this[51]._os_unfair_lock_opaque) == 1)
  {
    v15 = v6;
    v16 = v5;
    v17 = v3;
    v18 = v4;
    os_unfair_lock_lock(this + 56);
    v14 = 0x2000;
    v10 = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](&this[6], &v14);
    Stat = re::FrameCustomStats::addOrGetStat(*v10, a2);
    v13 = 0x2000;
    v12 = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](&this[6], &v13);
    if (*(*v12 + 136) > Stat)
    {
      re::FrameStats::CollectedStatistics::addValue((*(*v12 + 152) + 104 * Stat + 36), a3);
    }

    os_unfair_lock_unlock(this + 56);
  }
}

uint64_t re::FrameProfiler::addOrGetCustomStatClass(os_unfair_lock_s *this, char *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 56);
  *v18 = a2;
  v4 = re::Hash<re::DynamicString>::operator()(v25, a2);
  v5 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(&this[18], v18, v4, v25);
  if (HIDWORD(v25[0]) == 0x7FFFFFFF)
  {
    v6 = re::globalAllocators(v5);
    v7 = (*(*v6[2] + 32))(v6[2], 168, 8);
    v8 = re::FrameCustomStats::FrameCustomStats(v7);
    v10 = *&this[32]._os_unfair_lock_opaque;
    v9 = *&this[34]._os_unfair_lock_opaque;
    if (v9 >= v10)
    {
      v11 = v9 + 1;
      if (v10 < v9 + 1)
      {
        if (*&this[30]._os_unfair_lock_opaque)
        {
          v12 = 2 * v10;
          if (!v10)
          {
            v12 = 8;
          }

          if (v12 <= v11)
          {
            v13 = v11;
          }

          else
          {
            v13 = v12;
          }

          re::DynamicArray<float *>::setCapacity(&this[30]._os_unfair_lock_opaque, v13);
        }

        else
        {
          re::DynamicArray<float *>::setCapacity(&this[30]._os_unfair_lock_opaque, v11);
          ++this[36]._os_unfair_lock_opaque;
        }
      }

      v9 = *&this[34]._os_unfair_lock_opaque;
    }

    *(*&this[38]._os_unfair_lock_opaque + 8 * v9) = v7;
    *&this[34]._os_unfair_lock_opaque = v9 + 1;
    ++this[36]._os_unfair_lock_opaque;
    *&v25[0] = v9;
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(&this[18], a2, v25);
    v15 = *&this[34]._os_unfair_lock_opaque;
    v16 = v15 - 1;
    if (!v15)
    {
      memset(v25, 0, sizeof(v25));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v18 = 136315906;
      *&v18[4] = "operator[]";
      v19 = 1024;
      v20 = 789;
      v21 = 2048;
      v22 = v16;
      v23 = 2048;
      v24 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    re::FrameCustomStats::addOrGetLine(*(*&this[38]._os_unfair_lock_opaque + 8 * v16), a2);
    v14 = *&this[34]._os_unfair_lock_opaque - 1;
  }

  else
  {
    v14 = *(*&this[22]._os_unfair_lock_opaque + 56 * HIDWORD(v25[0]) + 40);
  }

  os_unfair_lock_unlock(this + 56);
  return v14;
}

void *re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(uint64_t a1, char *a2, void *a3)
{
  v9 = 0;
  v10 = a2;
  v7 = 0;
  v8 = 0;
  v5 = re::Hash<re::DynamicString>::operator()(&v11, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1, &v10, v5, &v7);
  if (HIDWORD(v8) == 0x7FFFFFFF)
  {
    return re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<char const*&,unsigned long>(a1, &v7, &v10, a3);
  }

  else
  {
    return (*(a1 + 16) + 56 * HIDWORD(v8) + 40);
  }
}

void re::FrameProfiler::setCustomStatClassEnabled(os_unfair_lock_s *this, unint64_t a2, char a3)
{
  os_unfair_lock_lock(this + 56);
  if (*&this[34]._os_unfair_lock_opaque > a2)
  {
    *(*(*&this[38]._os_unfair_lock_opaque + 8 * a2) + 160) = a3;
  }

  os_unfair_lock_unlock(this + 56);
}

uint64_t re::FrameProfiler::addOrGetStatLine(os_unfair_lock_s *this, unint64_t a2, char *a3)
{
  os_unfair_lock_lock(this + 56);
  if (*&this[34]._os_unfair_lock_opaque <= a2)
  {
    Stat = 0;
  }

  else
  {
    Stat = re::FrameCustomStats::addOrGetStat(*(*&this[38]._os_unfair_lock_opaque + 8 * a2), a3);
  }

  os_unfair_lock_unlock(this + 56);
  return Stat;
}

void re::FrameProfiler::logStat(os_unfair_lock_s *this, unint64_t a2, unint64_t a3, float a4)
{
  if (BYTE2(this[51]._os_unfair_lock_opaque) == 1)
  {
    os_unfair_lock_lock(this + 56);
    if (*&this[34]._os_unfair_lock_opaque > a2)
    {
      v9 = *(*&this[38]._os_unfair_lock_opaque + 8 * a2);
      if (*(v9 + 136) > a3)
      {
        re::FrameStats::CollectedStatistics::addValue((*(v9 + 152) + 104 * a3 + 36), a4);
      }
    }

    os_unfair_lock_unlock(this + 56);
  }
}

uint64_t re::FrameProfiler::addOrGetLine(os_unfair_lock_s *this, unint64_t a2, char *a3)
{
  os_unfair_lock_lock(this + 56);
  if (*&this[34]._os_unfair_lock_opaque <= a2)
  {
    Line = 0;
  }

  else
  {
    Line = re::FrameCustomStats::addOrGetLine(*(*&this[38]._os_unfair_lock_opaque + 8 * a2), a3);
  }

  os_unfair_lock_unlock(this + 56);
  return Line;
}

void re::FrameProfiler::updateText(os_unfair_lock_s *this, unint64_t a2, unint64_t a3, const char *a4)
{
  os_unfair_lock_lock(this + 56);
  if (*&this[34]._os_unfair_lock_opaque > a2)
  {
    re::FrameCustomStats::updateText(*(*&this[38]._os_unfair_lock_opaque + 8 * a2), a3, a4);
  }

  os_unfair_lock_unlock(this + 56);
}

void re::FrameProfiler::setCustomStatOrLineEnabled(os_unfair_lock_s *this, unint64_t a2, unint64_t a3, char a4)
{
  os_unfair_lock_lock(this + 56);
  if (*&this[34]._os_unfair_lock_opaque > a2)
  {
    v8 = *(*&this[38]._os_unfair_lock_opaque + 8 * a2);
    if (*(v8 + 136) > a3)
    {
      *(*(v8 + 152) + 104 * a3 + 32) = a4;
    }
  }

  os_unfair_lock_unlock(this + 56);
}

re::DynamicString *re::FrameProfiler::getStatisticOutputForOption(re::FrameProfiler *this, int a2, int a3)
{
  v21 = a2;
  v5 = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](this + 24, &v21);
  v6 = *v5;
  (*(**v5 + 24))(*v5, *v5 + 16, this + 344, this + 392);
  v20 = 0;
  v7 = re::HashTable<unsigned int,re::FrameStatisticsOutput,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](v6 + 16, &v20);
  if (*(v6 + 44) != 1 && a3 != 0)
  {
    v9 = *(v6 + 48);
    if (v9)
    {
      v10 = 0;
      v11 = *(v6 + 32);
      while (1)
      {
        v12 = *v11;
        v11 += 16;
        if (v12 < 0)
        {
          break;
        }

        if (v9 == ++v10)
        {
          LODWORD(v10) = *(v6 + 48);
          break;
        }
      }
    }

    else
    {
      LODWORD(v10) = 0;
    }

    if (v10 != v9)
    {
      v13 = *(v6 + 32);
      v14 = *(v6 + 48);
      do
      {
        v15 = v13 + (v10 << 6);
        if (*(v15 + 4))
        {
          if (*(v15 + 16))
          {
            v16 = *(v15 + 24);
          }

          else
          {
            v16 = (v15 + 17);
          }

          v17 = strlen(v16);
          re::DynamicString::append(v7, v16, v17);
          v14 = *(v6 + 48);
          v13 = *(v6 + 32);
        }

        if (v14 <= v10 + 1)
        {
          v18 = v10 + 1;
        }

        else
        {
          v18 = v14;
        }

        while (v18 - 1 != v10)
        {
          LODWORD(v10) = v10 + 1;
          if ((*(v13 + (v10 << 6)) & 0x80000000) != 0)
          {
            goto LABEL_26;
          }
        }

        LODWORD(v10) = v18;
LABEL_26:
        ;
      }

      while (v10 != v9);
    }
  }

  return v7;
}

unint64_t re::HashTable<unsigned int,re::FrameStatisticsOutput,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](uint64_t a1, _DWORD *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned int,re::DrawCallMeshPartsDetails,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return *(a1 + 16) + (v6 << 6) + 8;
}

void *re::allocInfo_FrameProfiler(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_497, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_497))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BD658, "FrameProfiler");
    __cxa_guard_release(&_MergedGlobals_497);
  }

  return &unk_1EE1BD658;
}

void re::initInfo_FrameProfiler(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x4D07016EB3F258ACLL;
  v6[1] = "FrameProfiler";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x1B800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::initInfo_FrameProfiler(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::FrameProfiler>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::FrameProfiler>;
  *(this + 13) = re::internal::defaultConstructV2<re::FrameProfiler>;
  *(this + 14) = re::internal::defaultDestructV2<re::FrameProfiler>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

uint64_t re::HashTable<unsigned int,re::FrameStatisticsOutput,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned int,re::FrameStatisticsOutput,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + (v5 << 6));
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + (v5 << 6));
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + (v5 << 6);
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v9 + 56) = a3;
  *(v10 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v7 + (v5 << 6);
}

void re::HashTable<unsigned int,re::FrameStatisticsOutput,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v9, v4, a2);
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
      re::HashTable<unsigned int,re::FrameStatisticsOutput,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::move(a1, v9);
      re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
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

uint64_t re::HashTable<unsigned int,re::FrameStatisticsOutput,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<unsigned int,re::FrameStatisticsOutput,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(v4, *(v7 + v5 + 56) % *(v4 + 24), *(v7 + v5 + 56));
        v8 = *(a2 + 16) + v5;
        *(result + 4) = *(v8 + 4);
        *(result + 8) = 0u;
        *(result + 24) = 0u;
        *(result + 32) = *(v8 + 32);
        v9 = *(v8 + 16);
        *(result + 8) = *(v8 + 8);
        *(v8 + 8) = 0;
        v10 = *(v8 + 24);
        *(v8 + 32) = 0;
        v12 = *(result + 16);
        v11 = *(result + 24);
        *(result + 16) = v9;
        *(result + 24) = v10;
        *(v8 + 16) = v12;
        *(v8 + 24) = v11;
        LODWORD(v10) = *(v8 + 48);
        *(result + 40) = *(v8 + 40);
        *(result + 48) = v10;
        v2 = *(a2 + 32);
      }

      v5 += 64;
    }
  }

  return result;
}

void re::HashTable<re::FrameProfilerStatisticsOptions,re::FrameStats *,re::Hash<re::FrameProfilerStatisticsOptions>,re::EqualTo<re::FrameProfilerStatisticsOptions>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v9, v4, a2);
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
      re::HashTable<re::FrameProfilerStatisticsOptions,re::FrameStats *,re::Hash<re::FrameProfilerStatisticsOptions>,re::EqualTo<re::FrameProfilerStatisticsOptions>,true,false>::move(a1, v9);
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v9);
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

uint64_t re::HashTable<re::FrameProfilerStatisticsOptions,re::FrameStats *,re::Hash<re::FrameProfilerStatisticsOptions>,re::EqualTo<re::FrameProfilerStatisticsOptions>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<re::FrameProfilerStatisticsOptions,re::FrameStats *,re::Hash<re::FrameProfilerStatisticsOptions>,re::EqualTo<re::FrameProfilerStatisticsOptions>,true,false>::allocEntry(v4, *(v7 + v5 + 16) % *(v4 + 24));
        v8 = *(a2 + 16) + v5;
        *(result + 4) = *(v8 + 4);
        *(result + 8) = *(v8 + 8);
        v2 = *(a2 + 32);
      }

      v5 += 24;
    }
  }

  return result;
}

uint64_t re::HashTable<re::FrameProfilerStatisticsOptions,re::FrameStats *,re::Hash<re::FrameProfilerStatisticsOptions>,re::EqualTo<re::FrameProfilerStatisticsOptions>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::FrameProfilerStatisticsOptions,re::FrameStats *,re::Hash<re::FrameProfilerStatisticsOptions>,re::EqualTo<re::FrameProfilerStatisticsOptions>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 24 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 24 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 24 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 16) = a3;
  ++*(a1 + 28);
  return v7 + 24 * v5;
}

void re::HashTable<re::ProfilerStatistic,re::FrameStats::CollectedStatistics,re::Hash<re::ProfilerStatistic>,re::EqualTo<re::ProfilerStatistic>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::ProfilerStatistic,re::FrameStats::CollectedStatistics,re::Hash<re::ProfilerStatistic>,re::EqualTo<re::ProfilerStatistic>,true,false>::move(a1, v9);
      re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
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

void re::HashTable<re::ProfilerStatistic,re::FrameStats::CollectedStatistics,re::Hash<re::ProfilerStatistic>,re::EqualTo<re::ProfilerStatistic>,true,false>::move(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        v8 = re::HashTable<re::ProfilerStatistic,re::FrameStats::CollectedStatistics,re::Hash<re::ProfilerStatistic>,re::EqualTo<re::ProfilerStatistic>,true,false>::allocEntry(a1, *(v7 + v5 + 72) % *(a1 + 24), *(v7 + v5 + 72));
        v9 = *(a2 + 16) + v5;
        *(v8 + 4) = *(v9 + 4);
        re::FrameStats::CollectedStatistics::CollectedStatistics((v8 + 8), (v9 + 8));
        v2 = *(a2 + 32);
      }

      v5 += 80;
    }
  }
}

uint64_t re::HashTable<re::ProfilerStatistic,re::FrameStats::CollectedStatistics,re::Hash<re::ProfilerStatistic>,re::EqualTo<re::ProfilerStatistic>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::ProfilerStatistic,re::FrameStats::CollectedStatistics,re::Hash<re::ProfilerStatistic>,re::EqualTo<re::ProfilerStatistic>,true,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 80 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 80 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 80 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 72) = a3;
  ++*(a1 + 28);
  return v7 + 80 * v5;
}

void *re::DynamicArray<re::FrameStatisticsOutput>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::FrameStatisticsOutput>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x30uLL))
        {
          v2 = 48 * a2;
          result = (*(*result + 32))(result, 48 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 48, a2);
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
        v10 = v8 + 48 * v9;
        v11 = v7;
        do
        {
          *v11 = 0u;
          *(v11 + 1) = 0u;
          v11[3] = *(v8 + 24);
          v12 = *(v8 + 8);
          *v11 = *v8;
          *v8 = 0;
          v13 = *(v8 + 16);
          *(v8 + 24) = 0;
          v15 = v11[1];
          v14 = v11[2];
          v11[1] = v12;
          v11[2] = v13;
          *(v8 + 8) = v15;
          *(v8 + 16) = v14;
          v16 = *(v8 + 32);
          *(v11 + 10) = *(v8 + 40);
          v11[4] = v16;
          re::DynamicString::deinit(v8);
          v8 += 48;
          v11 += 6;
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

void *re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<char const*&,unsigned long>(uint64_t a1, uint64_t a2, const char **a3, void *a4)
{
  v7 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  v7[5] = *a4;
  ++*(a1 + 40);
  return v7 + 5;
}

uint64_t re::FrameStats::init(re::FrameStats *this, int a2, int a3)
{
  *(this + 2) = a3;
  *(this + 64) = 1;
  *v9 = 0;
  v7 = 0u;
  v8 = 0u;
  *&v9[4] = 0x7FFFFFFFLL;
  re::HashTable<unsigned int,re::FrameStatisticsOutput,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator=(this + 16, &v7);
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v7);
  *(&v7 + 1) = 0;
  v8 = 0uLL;
  re::DynamicString::setCapacity(&v7, 0);
  *v9 = 0x2800000006;
  *&v9[8] = 1;
  v6 = 0;
  re::HashTable<unsigned int,re::FrameStatisticsOutput,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::add(this + 16, &v6, &v7);
  result = v7;
  if (v7)
  {
    if (BYTE8(v7))
    {
      return (*(*v7 + 40))();
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned int,re::FrameStatisticsOutput,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      v4 = *a1 == *a2;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(a1, a2);
    }

    else
    {
      re::HashTable<unsigned int,re::FrameStatisticsOutput,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::clear(a1);
      if (*a2)
      {
        v5 = *(a2 + 28);
        if (*(a1 + 24) < v5)
        {
          re::HashTable<unsigned int,re::FrameStatisticsOutput,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::setCapacity(a1, v5);
        }

        re::HashTable<unsigned int,re::FrameStatisticsOutput,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::move(a1, a2);
        ++*(a1 + 40);
      }
    }
  }

  return a1;
}

re::DynamicString *re::HashTable<unsigned int,re::FrameStatisticsOutput,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::add(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned int,re::DrawCallMeshPartsDetails,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return (*(a1 + 16) + (HIDWORD(v11) << 6) + 8);
  }

  v7 = re::HashTable<unsigned int,re::FrameStatisticsOutput,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, v11, v10);
  *(v7 + 4) = *a2;
  result = re::DynamicString::DynamicString((v7 + 8), a3);
  v9 = *(a3 + 32);
  *(v7 + 48) = *(a3 + 40);
  *(v7 + 40) = v9;
  ++*(a1 + 40);
  return result;
}

float32x2_t re::FrameStats::CollectedStatistics::addValue(re::FrameStats::CollectedStatistics *this, float a2)
{
  if (*this > a2)
  {
    *this = a2;
  }

  if (*(this + 1) < a2)
  {
    *(this + 1) = a2;
  }

  __asm { FMOV            V1.2S, #1.0 }

  _D1.f32[0] = a2;
  v7 = vadd_f32(*(this + 8), _D1);
  *(this + 1) = v7;
  *(this + 4) = vdiv_f32(v7, vdup_lane_s32(v7, 1)).u32[0];
  *(this + 5) = a2;
  if (*(this + 11) > a2)
  {
    *(this + 11) = a2;
  }

  if (*(this + 12) < a2)
  {
    *(this + 12) = a2;
  }

  v8 = vadd_f32(*(this + 52), _D1);
  *(this + 52) = v8;
  result = vdiv_f32(v8, vdup_lane_s32(v8, 1));
  *(this + 15) = result.i32[0];
  return result;
}

float re::FrameStats::CollectedStatistics::addGroupValues(re::FrameStats::CollectedStatistics *this, float a2, float a3, float a4, float a5)
{
  if (*this > a4)
  {
    *this = a4;
  }

  if (*(this + 1) < a5)
  {
    *(this + 1) = a5;
  }

  v5 = *(this + 2) + a2;
  v6 = *(this + 3) + a3;
  *(this + 2) = v5;
  *(this + 3) = v6;
  *(this + 4) = v5 / v6;
  if (*(this + 11) > a4)
  {
    *(this + 11) = a4;
  }

  if (*(this + 12) < a5)
  {
    *(this + 12) = a5;
  }

  v7 = *(this + 13) + a2;
  v8 = *(this + 14) + a3;
  *(this + 13) = v7;
  *(this + 14) = v8;
  result = v7 / v8;
  *(this + 15) = result;
  return result;
}

float re::FrameStats::CollectedStatistics::CollectedStatistics(re::FrameStats::CollectedStatistics *this, const re::FrameStats::CollectedStatistics *a2)
{
  *this = 0xFF7FFFFF7F7FFFFFLL;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 24) = xmmword_1E3100EC0;
  *(this + 40) = xmmword_1E3100ED0;
  *(this + 7) = 0;
  *this = *a2;
  *(this + 4) = *(a2 + 4);
  *(this + 44) = *(a2 + 44);
  result = *(a2 + 15);
  *(this + 15) = result;
  return result;
}

uint64_t re::FrameTimeStats::dumpStatisticsInternal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  info.numer = 0;
  v5 = re::HashTable<unsigned int,re::FrameStatisticsOutput,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](a2, &info);
  v6 = v5;
  if (*(v5 + 8))
  {
    *(v5 + 8) = 1;
    v7 = *(v5 + 16);
  }

  else
  {
    *(v5 + 8) = 0;
    v7 = (v5 + 9);
  }

  *v7 = 0;
  v8 = 0x7FFFFFFFLL;
  if (*a3)
  {
    v9 = *(*(a3 + 8) + 4 * (0x5692161D100B05E5uLL % *(a3 + 24)));
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(a3 + 16);
      v8 = 0x7FFFFFFFLL;
      while (*(v10 + 80 * v9 + 4) != 1)
      {
        v9 = *(v10 + 80 * v9) & 0x7FFFFFFF;
        if (v9 == 0x7FFFFFFF)
        {
          goto LABEL_11;
        }
      }

      v8 = v9;
    }
  }

LABEL_11:
  v11 = *(*(a3 + 16) + 80 * v8 + 40);
  v12 = *(a1 + 8);
  v13 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v345 = NAN;
      goto LABEL_16;
    }

    LODWORD(v14) = info.numer;
    LODWORD(v15) = info.denom;
    v13 = v14 / v15;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v13;
  }

  v345 = v13 * (v11 / v12);
LABEL_16:
  if (!*a3)
  {
    v16 = *(a3 + 16);
    goto LABEL_22;
  }

  v16 = *(a3 + 16);
  v17 = *(*(a3 + 8) + 4 * (0xDBD238973A2B148ALL % *(a3 + 24)));
  if (v17 == 0x7FFFFFFF)
  {
LABEL_22:
    v17 = 0x7FFFFFFFLL;
    goto LABEL_23;
  }

  while (*(v16 + 80 * v17 + 4) != 2)
  {
    v17 = *(v16 + 80 * v17) & 0x7FFFFFFF;
    if (v17 == 0x7FFFFFFF)
    {
      goto LABEL_22;
    }
  }

LABEL_23:
  v18 = *(v16 + 80 * v17 + 40);
  v19 = *(a1 + 8);
  v20 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v23 = NAN;
      goto LABEL_28;
    }

    LODWORD(v21) = info.numer;
    LODWORD(v22) = info.denom;
    v20 = v21 / v22;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v20;
  }

  v23 = v20 * (v18 / v19);
LABEL_28:
  if (!*a3)
  {
    v24 = *(a3 + 16);
    goto LABEL_34;
  }

  v24 = *(a3 + 16);
  v25 = *(*(a3 + 8) + 4 * (0x1E535EEDE31428F0uLL % *(a3 + 24)));
  if (v25 == 0x7FFFFFFF)
  {
LABEL_34:
    v25 = 0x7FFFFFFFLL;
    goto LABEL_35;
  }

  while (*(v24 + 80 * v25 + 4) != 3)
  {
    v25 = *(v24 + 80 * v25) & 0x7FFFFFFF;
    if (v25 == 0x7FFFFFFF)
    {
      goto LABEL_34;
    }
  }

LABEL_35:
  v26 = *(v24 + 80 * v25 + 40);
  v27 = *(a1 + 8);
  v28 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v31 = NAN;
      goto LABEL_40;
    }

    LODWORD(v29) = info.numer;
    LODWORD(v30) = info.denom;
    v28 = v29 / v30;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v28;
  }

  v31 = v28 * (v26 / v27);
LABEL_40:
  if (!*a3)
  {
    v32 = *(a3 + 16);
    goto LABEL_46;
  }

  v32 = *(a3 + 16);
  v33 = *(*(a3 + 8) + 4 * (0xB7A4712C74562914 % *(a3 + 24)));
  if (v33 == 0x7FFFFFFF)
  {
LABEL_46:
    v33 = 0x7FFFFFFFLL;
    goto LABEL_47;
  }

  while (*(v32 + 80 * v33 + 4) != 4)
  {
    v33 = *(v32 + 80 * v33) & 0x7FFFFFFF;
    if (v33 == 0x7FFFFFFF)
    {
      goto LABEL_46;
    }
  }

LABEL_47:
  v34 = *(v32 + 80 * v33 + 40);
  v35 = *(a1 + 8);
  v36 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v39 = NAN;
      goto LABEL_52;
    }

    LODWORD(v37) = info.numer;
    LODWORD(v38) = info.denom;
    v36 = v37 / v38;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v36;
  }

  v39 = v36 * (v34 / v35);
LABEL_52:
  if (!*a3)
  {
    v40 = *(a3 + 16);
    goto LABEL_58;
  }

  v40 = *(a3 + 16);
  v41 = *(*(a3 + 8) + 4 * (0xB6BF613DBEBB45DCLL % *(a3 + 24)));
  if (v41 == 0x7FFFFFFF)
  {
LABEL_58:
    v41 = 0x7FFFFFFFLL;
    goto LABEL_59;
  }

  while (*(v40 + 80 * v41 + 4) != 5)
  {
    v41 = *(v40 + 80 * v41) & 0x7FFFFFFF;
    if (v41 == 0x7FFFFFFF)
    {
      goto LABEL_58;
    }
  }

LABEL_59:
  v42 = *(v40 + 80 * v41 + 40);
  v43 = *(a1 + 8);
  v44 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v47 = NAN;
      goto LABEL_64;
    }

    LODWORD(v45) = info.numer;
    LODWORD(v46) = info.denom;
    v44 = v45 / v46;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v44;
  }

  v47 = v44 * (v42 / v43);
LABEL_64:
  if (!*a3)
  {
    v48 = *(a3 + 16);
    goto LABEL_70;
  }

  v48 = *(a3 + 16);
  v49 = *(*(a3 + 8) + 4 * (0xD17707977078336CLL % *(a3 + 24)));
  if (v49 == 0x7FFFFFFF)
  {
LABEL_70:
    v49 = 0x7FFFFFFFLL;
    goto LABEL_71;
  }

  while (*(v48 + 80 * v49 + 4) != 6)
  {
    v49 = *(v48 + 80 * v49) & 0x7FFFFFFF;
    if (v49 == 0x7FFFFFFF)
    {
      goto LABEL_70;
    }
  }

LABEL_71:
  v50 = *(v48 + 80 * v49 + 40);
  v51 = *(a1 + 8);
  v52 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v342 = NAN;
      goto LABEL_76;
    }

    LODWORD(v53) = info.numer;
    LODWORD(v54) = info.denom;
    v52 = v53 / v54;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v52;
  }

  v342 = v52 * (v50 / v51);
LABEL_76:
  if (!*a3)
  {
    v55 = *(a3 + 16);
    goto LABEL_82;
  }

  v55 = *(a3 + 16);
  v56 = *(*(a3 + 8) + 4 * (0x12AE30237B17DF14uLL % *(a3 + 24)));
  if (v56 == 0x7FFFFFFF)
  {
LABEL_82:
    v56 = 0x7FFFFFFFLL;
    goto LABEL_83;
  }

  while (*(v55 + 80 * v56 + 4) != 7)
  {
    v56 = *(v55 + 80 * v56) & 0x7FFFFFFF;
    if (v56 == 0x7FFFFFFF)
    {
      goto LABEL_82;
    }
  }

LABEL_83:
  v57 = *(v55 + 80 * v56 + 40);
  v58 = *(a1 + 8);
  v59 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v340 = NAN;
      goto LABEL_88;
    }

    LODWORD(v60) = info.numer;
    LODWORD(v61) = info.denom;
    v59 = v60 / v61;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v59;
  }

  v340 = v59 * (v57 / v58);
LABEL_88:
  if (!*a3)
  {
    v62 = *(a3 + 16);
    goto LABEL_94;
  }

  v62 = *(a3 + 16);
  v63 = *(*(a3 + 8) + 4 * (0x826C6ABF7FDD5AD7 % *(a3 + 24)));
  if (v63 == 0x7FFFFFFF)
  {
LABEL_94:
    v63 = 0x7FFFFFFFLL;
    goto LABEL_95;
  }

  while (*(v62 + 80 * v63 + 4) != 9)
  {
    v63 = *(v62 + 80 * v63) & 0x7FFFFFFF;
    if (v63 == 0x7FFFFFFF)
    {
      goto LABEL_94;
    }
  }

LABEL_95:
  v64 = *(v62 + 80 * v63 + 40);
  v65 = *(a1 + 8);
  v66 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v335 = NAN;
      goto LABEL_100;
    }

    LODWORD(v67) = info.numer;
    LODWORD(v68) = info.denom;
    v66 = v67 / v68;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v66;
  }

  v335 = v66 * (v64 / v65);
LABEL_100:
  if (!*a3)
  {
    v69 = *(a3 + 16);
    goto LABEL_106;
  }

  v69 = *(a3 + 16);
  v70 = *(*(a3 + 8) + 4 * (0x75C8519A9320579uLL % *(a3 + 24)));
  if (v70 == 0x7FFFFFFF)
  {
LABEL_106:
    v70 = 0x7FFFFFFFLL;
    goto LABEL_107;
  }

  while (*(v69 + 80 * v70 + 4) != 10)
  {
    v70 = *(v69 + 80 * v70) & 0x7FFFFFFF;
    if (v70 == 0x7FFFFFFF)
    {
      goto LABEL_106;
    }
  }

LABEL_107:
  v71 = *(v69 + 80 * v70 + 40);
  v72 = *(a1 + 8);
  v73 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v332 = NAN;
      goto LABEL_112;
    }

    LODWORD(v74) = info.numer;
    LODWORD(v75) = info.denom;
    v73 = v74 / v75;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v73;
  }

  v332 = v73 * (v71 / v72);
LABEL_112:
  if (!*a3)
  {
    v76 = *(a3 + 16);
    goto LABEL_118;
  }

  v76 = *(a3 + 16);
  v77 = *(*(a3 + 8) + 4 * (0xD56B1FBB9CEBA9E8 % *(a3 + 24)));
  if (v77 == 0x7FFFFFFF)
  {
LABEL_118:
    v77 = 0x7FFFFFFFLL;
    goto LABEL_119;
  }

  while (*(v76 + 80 * v77 + 4) != 8)
  {
    v77 = *(v76 + 80 * v77) & 0x7FFFFFFF;
    if (v77 == 0x7FFFFFFF)
    {
      goto LABEL_118;
    }
  }

LABEL_119:
  v78 = *(v76 + 80 * v77 + 40);
  v79 = *(a1 + 8);
  v80 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v330 = NAN;
      goto LABEL_124;
    }

    LODWORD(v81) = info.numer;
    LODWORD(v82) = info.denom;
    v80 = v81 / v82;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v80;
  }

  v330 = v80 * (v78 / v79);
LABEL_124:
  if (!*a3)
  {
    v83 = *(a3 + 16);
    goto LABEL_130;
  }

  v83 = *(a3 + 16);
  v84 = *(*(a3 + 8) + 4 * (0x3462D848F53ABB6DuLL % *(a3 + 24)));
  if (v84 == 0x7FFFFFFF)
  {
LABEL_130:
    v84 = 0x7FFFFFFFLL;
    goto LABEL_131;
  }

  while (*(v83 + 80 * v84 + 4) != 11)
  {
    v84 = *(v83 + 80 * v84) & 0x7FFFFFFF;
    if (v84 == 0x7FFFFFFF)
    {
      goto LABEL_130;
    }
  }

LABEL_131:
  v85 = *(v83 + 80 * v84 + 40);
  v86 = *(a1 + 8);
  v87 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v329 = NAN;
      goto LABEL_136;
    }

    LODWORD(v88) = info.numer;
    LODWORD(v89) = info.denom;
    v87 = v88 / v89;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v87;
  }

  v329 = v87 * (v85 / v86);
LABEL_136:
  if (!*a3)
  {
    v90 = *(a3 + 16);
    goto LABEL_142;
  }

  v90 = *(a3 + 16);
  v91 = *(*(a3 + 8) + 4 * (0x37BE58E8D7213BBCuLL % *(a3 + 24)));
  if (v91 == 0x7FFFFFFF)
  {
LABEL_142:
    v91 = 0x7FFFFFFFLL;
    goto LABEL_143;
  }

  while (*(v90 + 80 * v91 + 4) != 12)
  {
    v91 = *(v90 + 80 * v91) & 0x7FFFFFFF;
    if (v91 == 0x7FFFFFFF)
    {
      goto LABEL_142;
    }
  }

LABEL_143:
  v92 = *(v90 + 80 * v91 + 40);
  v93 = *(a1 + 8);
  v94 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v324 = NAN;
      goto LABEL_148;
    }

    LODWORD(v95) = info.numer;
    LODWORD(v96) = info.denom;
    v94 = v95 / v96;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v94;
  }

  v324 = v94 * (v92 / v93);
LABEL_148:
  if (!*a3)
  {
    v97 = *(a3 + 16);
    goto LABEL_154;
  }

  v97 = *(a3 + 16);
  v98 = *(*(a3 + 8) + 4 * (0xDCFA9555B5F881D1 % *(a3 + 24)));
  if (v98 == 0x7FFFFFFF)
  {
LABEL_154:
    v98 = 0x7FFFFFFFLL;
    goto LABEL_155;
  }

  while (*(v97 + 80 * v98 + 4) != 13)
  {
    v98 = *(v97 + 80 * v98) & 0x7FFFFFFF;
    if (v98 == 0x7FFFFFFF)
    {
      goto LABEL_154;
    }
  }

LABEL_155:
  v99 = *(v97 + 80 * v98 + 40);
  v100 = *(a1 + 8);
  v101 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v339 = NAN;
      goto LABEL_160;
    }

    LODWORD(v102) = info.numer;
    LODWORD(v103) = info.denom;
    v101 = v102 / v103;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v101;
  }

  v339 = v101 * (v99 / v100);
LABEL_160:
  if (!*a3)
  {
    v104 = *(a3 + 16);
    goto LABEL_166;
  }

  v104 = *(a3 + 16);
  v105 = *(*(a3 + 8) + 4 * (0x255C6046F62FBE29uLL % *(a3 + 24)));
  if (v105 == 0x7FFFFFFF)
  {
LABEL_166:
    v105 = 0x7FFFFFFFLL;
    goto LABEL_167;
  }

  while (*(v104 + 80 * v105 + 4) != 14)
  {
    v105 = *(v104 + 80 * v105) & 0x7FFFFFFF;
    if (v105 == 0x7FFFFFFF)
    {
      goto LABEL_166;
    }
  }

LABEL_167:
  v106 = *(v104 + 80 * v105 + 40);
  v107 = *(a1 + 8);
  v108 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v338 = NAN;
      goto LABEL_172;
    }

    LODWORD(v109) = info.numer;
    LODWORD(v110) = info.denom;
    v108 = v109 / v110;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v108;
  }

  v338 = v108 * (v106 / v107);
LABEL_172:
  if (!*a3)
  {
    v111 = *(a3 + 16);
    goto LABEL_178;
  }

  v111 = *(a3 + 16);
  v112 = *(*(a3 + 8) + 4 * (0x392754934EA1539uLL % *(a3 + 24)));
  if (v112 == 0x7FFFFFFF)
  {
LABEL_178:
    v112 = 0x7FFFFFFFLL;
    goto LABEL_179;
  }

  while (*(v111 + 80 * v112 + 4) != 15)
  {
    v112 = *(v111 + 80 * v112) & 0x7FFFFFFF;
    if (v112 == 0x7FFFFFFF)
    {
      goto LABEL_178;
    }
  }

LABEL_179:
  v113 = *(v111 + 80 * v112 + 40);
  v114 = *(a1 + 8);
  v115 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v337 = NAN;
      goto LABEL_184;
    }

    LODWORD(v116) = info.numer;
    LODWORD(v117) = info.denom;
    v115 = v116 / v117;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v115;
  }

  v337 = v115 * (v113 / v114);
LABEL_184:
  if (!*a3)
  {
    v118 = *(a3 + 16);
    goto LABEL_190;
  }

  v118 = *(a3 + 16);
  v119 = *(*(a3 + 8) + 4 * (0xD9844BCECCA4A8BDLL % *(a3 + 24)));
  if (v119 == 0x7FFFFFFF)
  {
LABEL_190:
    v119 = 0x7FFFFFFFLL;
    goto LABEL_191;
  }

  while (*(v118 + 80 * v119 + 4) != 16)
  {
    v119 = *(v118 + 80 * v119) & 0x7FFFFFFF;
    if (v119 == 0x7FFFFFFF)
    {
      goto LABEL_190;
    }
  }

LABEL_191:
  v120 = *(v118 + 80 * v119 + 40);
  v121 = *(a1 + 8);
  v122 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v327 = NAN;
      goto LABEL_196;
    }

    LODWORD(v123) = info.numer;
    LODWORD(v124) = info.denom;
    v122 = v123 / v124;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v122;
  }

  v327 = v122 * (v120 / v121);
LABEL_196:
  if (!*a3)
  {
    v125 = *(a3 + 16);
    goto LABEL_202;
  }

  v125 = *(a3 + 16);
  v126 = *(*(a3 + 8) + 4 * (0x302B8631721C51BEuLL % *(a3 + 24)));
  if (v126 == 0x7FFFFFFF)
  {
LABEL_202:
    v126 = 0x7FFFFFFFLL;
    goto LABEL_203;
  }

  while (*(v125 + 80 * v126 + 4) != 17)
  {
    v126 = *(v125 + 80 * v126) & 0x7FFFFFFF;
    if (v126 == 0x7FFFFFFF)
    {
      goto LABEL_202;
    }
  }

LABEL_203:
  v127 = *(v125 + 80 * v126 + 40);
  v128 = *(a1 + 8);
  v129 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v328 = NAN;
      goto LABEL_208;
    }

    LODWORD(v130) = info.numer;
    LODWORD(v131) = info.denom;
    v129 = v130 / v131;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v129;
  }

  v328 = v129 * (v127 / v128);
LABEL_208:
  if (!*a3)
  {
    v132 = *(a3 + 16);
    goto LABEL_214;
  }

  v132 = *(a3 + 16);
  v133 = *(*(a3 + 8) + 4 * (0xE34A1ED09841F857 % *(a3 + 24)));
  if (v133 == 0x7FFFFFFF)
  {
LABEL_214:
    v133 = 0x7FFFFFFFLL;
    goto LABEL_215;
  }

  while (*(v132 + 80 * v133 + 4) != 19)
  {
    v133 = *(v132 + 80 * v133) & 0x7FFFFFFF;
    if (v133 == 0x7FFFFFFF)
    {
      goto LABEL_214;
    }
  }

LABEL_215:
  v134 = *(v132 + 80 * v133 + 40);
  v135 = *(a1 + 8);
  v136 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v322 = NAN;
      goto LABEL_220;
    }

    LODWORD(v137) = info.numer;
    LODWORD(v138) = info.denom;
    v136 = v137 / v138;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v136;
  }

  v322 = v136 * (v134 / v135);
LABEL_220:
  if (!*a3)
  {
    v139 = *(a3 + 16);
    goto LABEL_226;
  }

  v139 = *(a3 + 16);
  v140 = *(*(a3 + 8) + 4 * (0xEB90A3352640AF2uLL % *(a3 + 24)));
  if (v140 == 0x7FFFFFFF)
  {
LABEL_226:
    v140 = 0x7FFFFFFFLL;
    goto LABEL_227;
  }

  while (*(v139 + 80 * v140 + 4) != 20)
  {
    v140 = *(v139 + 80 * v140) & 0x7FFFFFFF;
    if (v140 == 0x7FFFFFFF)
    {
      goto LABEL_226;
    }
  }

LABEL_227:
  v141 = *(v139 + 80 * v140 + 40);
  v142 = *(a1 + 8);
  v143 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v325 = NAN;
      goto LABEL_232;
    }

    LODWORD(v144) = info.numer;
    LODWORD(v145) = info.denom;
    v143 = v144 / v145;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v143;
  }

  v325 = v143 * (v141 / v142);
LABEL_232:
  if (!*a3)
  {
    v146 = *(a3 + 16);
    goto LABEL_238;
  }

  v146 = *(a3 + 16);
  v147 = *(*(a3 + 8) + 4 * (0xD633B1846FAF2B49 % *(a3 + 24)));
  if (v147 == 0x7FFFFFFF)
  {
LABEL_238:
    v147 = 0x7FFFFFFFLL;
    goto LABEL_239;
  }

  while (*(v146 + 80 * v147 + 4) != 21)
  {
    v147 = *(v146 + 80 * v147) & 0x7FFFFFFF;
    if (v147 == 0x7FFFFFFF)
    {
      goto LABEL_238;
    }
  }

LABEL_239:
  v148 = *(v146 + 80 * v147 + 40);
  v149 = *(a1 + 8);
  v150 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v326 = NAN;
      goto LABEL_244;
    }

    LODWORD(v151) = info.numer;
    LODWORD(v152) = info.denom;
    v150 = v151 / v152;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v150;
  }

  v326 = v150 * (v148 / v149);
LABEL_244:
  if (!*a3)
  {
    v153 = *(a3 + 16);
    goto LABEL_250;
  }

  v153 = *(a3 + 16);
  v154 = *(*(a3 + 8) + 4 * (0x378A5760BE593CA5uLL % *(a3 + 24)));
  if (v154 == 0x7FFFFFFF)
  {
LABEL_250:
    v154 = 0x7FFFFFFFLL;
    goto LABEL_251;
  }

  while (*(v153 + 80 * v154 + 4) != 23)
  {
    v154 = *(v153 + 80 * v154) & 0x7FFFFFFF;
    if (v154 == 0x7FFFFFFF)
    {
      goto LABEL_250;
    }
  }

LABEL_251:
  v155 = *(v153 + 80 * v154 + 40);
  v156 = *(a1 + 8);
  v157 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v321 = NAN;
      goto LABEL_256;
    }

    LODWORD(v158) = info.numer;
    LODWORD(v159) = info.denom;
    v157 = v158 / v159;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v157;
  }

  v321 = v157 * (v155 / v156);
LABEL_256:
  if (!*a3)
  {
    v160 = *(a3 + 16);
    goto LABEL_262;
  }

  v160 = *(a3 + 16);
  v161 = *(*(a3 + 8) + 4 * (0xFD95FA4DB404DD7BLL % *(a3 + 24)));
  if (v161 == 0x7FFFFFFF)
  {
LABEL_262:
    v161 = 0x7FFFFFFFLL;
    goto LABEL_263;
  }

  while (*(v160 + 80 * v161 + 4) != 22)
  {
    v161 = *(v160 + 80 * v161) & 0x7FFFFFFF;
    if (v161 == 0x7FFFFFFF)
    {
      goto LABEL_262;
    }
  }

LABEL_263:
  v162 = *(v160 + 80 * v161 + 40);
  v163 = *(a1 + 8);
  v164 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v323 = NAN;
      goto LABEL_268;
    }

    LODWORD(v165) = info.numer;
    LODWORD(v166) = info.denom;
    v164 = v165 / v166;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v164;
  }

  v323 = v164 * (v162 / v163);
LABEL_268:
  if (!*a3)
  {
    v169 = *(a3 + 16);
    goto LABEL_274;
  }

  v169 = *(a3 + 16);
  v170 = *(*(a3 + 8) + 4 * (0x968A5BA23473FAFFLL % *(a3 + 24)));
  if (v170 == 0x7FFFFFFF)
  {
LABEL_274:
    v170 = 0x7FFFFFFFLL;
    goto LABEL_275;
  }

  while (*(v169 + 80 * v170 + 4) != 91)
  {
    v170 = *(v169 + 80 * v170) & 0x7FFFFFFF;
    if (v170 == 0x7FFFFFFF)
    {
      goto LABEL_274;
    }
  }

LABEL_275:
  v167 = v23 / 1000000.0;
  v168 = v31 / 1000000.0;
  v172 = v167 + v168;
  v173 = *(v169 + 80 * v170 + 40);
  v174 = *(a1 + 8);
  v175 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v178 = NAN;
      goto LABEL_280;
    }

    LODWORD(v176) = info.numer;
    LODWORD(v177) = info.denom;
    v175 = v176 / v177;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v175;
  }

  v178 = v175 * (v173 / v174);
LABEL_280:
  v171 = v39 / 1000000.0;
  v180 = v172 + v171;
  if (!*a3)
  {
    v181 = *(a3 + 16);
    goto LABEL_286;
  }

  v181 = *(a3 + 16);
  v182 = *(*(a3 + 8) + 4 * (0xDE295D82F964F296 % *(a3 + 24)));
  if (v182 == 0x7FFFFFFF)
  {
LABEL_286:
    v182 = 0x7FFFFFFFLL;
    goto LABEL_287;
  }

  while (*(v181 + 80 * v182 + 4) != 92)
  {
    v182 = *(v181 + 80 * v182) & 0x7FFFFFFF;
    if (v182 == 0x7FFFFFFF)
    {
      goto LABEL_286;
    }
  }

LABEL_287:
  v183 = v342 / 1000000.0;
  v179 = v47 / 1000000.0;
  v184 = v180 + v179;
  v185 = v335 / 1000000.0;
  v186 = *(v181 + 80 * v182 + 40);
  v187 = *(a1 + 8);
  v188 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    v343 = v178;
    if (mach_timebase_info(&info))
    {
      v191 = NAN;
      v178 = v343;
      goto LABEL_292;
    }

    LODWORD(v189) = info.numer;
    LODWORD(v190) = info.denom;
    v188 = v189 / v190;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v188;
    v178 = v343;
  }

  v191 = v188 * (v186 / v187);
LABEL_292:
  v192 = v345 / 1000000.0;
  v193 = v340 / 1000000.0;
  v194 = v184 + v183;
  v196 = v332 / 1000000.0;
  v197 = v178 / 1000000.0;
  v198 = v191 / 1000000.0;
  if (!*a3)
  {
    v199 = *(a3 + 16);
    goto LABEL_298;
  }

  v199 = *(a3 + 16);
  v200 = *(*(a3 + 8) + 4 * (0xFEBD6A4FBD0A7802 % *(a3 + 24)));
  if (v200 == 0x7FFFFFFF)
  {
LABEL_298:
    v200 = 0x7FFFFFFFLL;
    goto LABEL_299;
  }

  while (*(v199 + 80 * v200 + 4) != 93)
  {
    v200 = *(v199 + 80 * v200) & 0x7FFFFFFF;
    if (v200 == 0x7FFFFFFF)
    {
      goto LABEL_298;
    }
  }

LABEL_299:
  v201 = v330 / 1000000.0;
  v346 = v201;
  v202 = v329 / 1000000.0;
  v203 = v324 / 1000000.0;
  v204 = v321 / 1000000.0;
  v344 = v204;
  v205 = v192;
  v206 = v194 + v193;
  v336 = v185;
  v195 = v185;
  v207 = v195 - v196;
  v208 = v197;
  v209 = v198;
  v210 = *(v199 + 80 * v200 + 40);
  v211 = *(a1 + 8);
  v212 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  v341 = v194 + v193;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    v333 = v332 / 1000000.0;
    if (mach_timebase_info(&info))
    {
      v215 = NAN;
      v206 = v341;
      v196 = v333;
      goto LABEL_304;
    }

    LODWORD(v213) = info.numer;
    LODWORD(v214) = info.denom;
    v212 = v213 / v214;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v212;
    v206 = v341;
    v196 = v333;
  }

  v215 = v212 * (v210 / v211);
LABEL_304:
  v216 = v215 / 1000000.0;
  v217 = (v208 + v209) + v216;
  v218 = v207 + v217;
  v219 = v206 + v217;
  v220 = (v202 + v203) + v344;
  if (v346 <= 0.0)
  {
    v221 = v218 - v220;
  }

  else
  {
    v220 = v196;
    v221 = v218;
  }

  v222 = v219 - v220;
  if (v205 > 0.0)
  {
    v223 = (1000.0 / v205);
  }

  else
  {
    v223 = 0.0;
  }

  re::DynamicString::appendf(v6, "Frame Times (ms)\n");
  re::DynamicString::appendf(v6, "FPS : %.2f    Main Thread : %.2f\n", v223, v222);
  if (v346 > 0.0)
  {
    re::DynamicString::appendf(v6, "Render Thread : %.2f\n", (((v346 - v202) - v203) - v344));
  }

  re::DynamicString::appendf(v6, "Main Thread Breakdown (ms)\n");
  if (*a3)
  {
    v224 = *(a3 + 16);
    v225 = *(*(a3 + 8) + 4 * (0x8AEB093D93E71BBFLL % *(a3 + 24)));
    if (v225 == 0x7FFFFFFF)
    {
LABEL_316:
      v225 = 0x7FFFFFFFLL;
    }

    else
    {
      while (*(v224 + 80 * v225 + 4) != 122)
      {
        v225 = *(v224 + 80 * v225) & 0x7FFFFFFF;
        if (v225 == 0x7FFFFFFF)
        {
          goto LABEL_316;
        }
      }
    }
  }

  else
  {
    v224 = *(a3 + 16);
    v225 = 0x7FFFFFFFLL;
  }

  v226 = *(v224 + 80 * v225 + 40);
  v227 = *(a1 + 8);
  v228 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v231 = NAN;
      goto LABEL_323;
    }

    LODWORD(v229) = info.numer;
    LODWORD(v230) = info.denom;
    v228 = v229 / v230;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v228;
  }

  v231 = v228 * (v226 / v227);
LABEL_323:
  if (!*a3)
  {
    v232 = *(a3 + 16);
    goto LABEL_329;
  }

  v232 = *(a3 + 16);
  v233 = *(*(a3 + 8) + 4 * (0x89607B27DA843F55 % *(a3 + 24)));
  if (v233 == 0x7FFFFFFF)
  {
LABEL_329:
    v233 = 0x7FFFFFFFLL;
    goto LABEL_330;
  }

  while (*(v232 + 80 * v233 + 4) != 129)
  {
    v233 = *(v232 + 80 * v233) & 0x7FFFFFFF;
    if (v233 == 0x7FFFFFFF)
    {
      goto LABEL_329;
    }
  }

LABEL_330:
  v234 = *(v232 + 80 * v233 + 40);
  v235 = *(a1 + 8);
  v236 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v239 = NAN;
      goto LABEL_335;
    }

    LODWORD(v237) = info.numer;
    LODWORD(v238) = info.denom;
    v236 = v237 / v238;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v236;
  }

  v239 = v236 * (v234 / v235);
LABEL_335:
  if (!*a3)
  {
    v240 = *(a3 + 16);
    goto LABEL_341;
  }

  v240 = *(a3 + 16);
  v241 = *(*(a3 + 8) + 4 * (0xAF26563F2EC4C8E6 % *(a3 + 24)));
  if (v241 == 0x7FFFFFFF)
  {
LABEL_341:
    v241 = 0x7FFFFFFFLL;
    goto LABEL_342;
  }

  while (*(v240 + 80 * v241 + 4) != 128)
  {
    v241 = *(v240 + 80 * v241) & 0x7FFFFFFF;
    if (v241 == 0x7FFFFFFF)
    {
      goto LABEL_341;
    }
  }

LABEL_342:
  v242 = v322 / 1000000.0;
  v243 = v231 / 1000000.0 + v221;
  v244 = *(v240 + 80 * v241 + 40);
  v245 = *(a1 + 8);
  v246 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  v247 = v239 / 1000000.0;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v250 = NAN;
      goto LABEL_347;
    }

    LODWORD(v248) = info.numer;
    LODWORD(v249) = info.denom;
    v246 = v248 / v249;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v246;
  }

  v250 = v246 * (v244 / v245);
LABEL_347:
  v252 = v250 / 1000000.0;
  if (!*a3)
  {
    v253 = *(a3 + 16);
    goto LABEL_353;
  }

  v253 = *(a3 + 16);
  v254 = *(*(a3 + 8) + 4 * (0x8BC946409C88CB8FLL % *(a3 + 24)));
  if (v254 == 0x7FFFFFFF)
  {
LABEL_353:
    v254 = 0x7FFFFFFFLL;
    goto LABEL_354;
  }

  while (*(v253 + 80 * v254 + 4) != 121)
  {
    v254 = *(v253 + 80 * v254) & 0x7FFFFFFF;
    if (v254 == 0x7FFFFFFF)
    {
      goto LABEL_353;
    }
  }

LABEL_354:
  v256 = v243 + v247 + v252;
  v334 = v242;
  v251 = v242;
  v257 = v251;
  v258 = *(v253 + 80 * v254 + 40);
  v259 = *(a1 + 8);
  v260 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v263 = NAN;
      goto LABEL_359;
    }

    LODWORD(v261) = info.numer;
    LODWORD(v262) = info.denom;
    v260 = v261 / v262;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v260;
  }

  v263 = v260 * (v258 / v259);
LABEL_359:
  v255 = v327 / 1000000.0;
  v264 = v255;
  re::DynamicString::appendf(v6, "Rendering : %.2f    Physics : %.2f\n", v256, v263 / 1000000.0 + v257);
  if (!*a3)
  {
    v265 = *(a3 + 16);
    goto LABEL_365;
  }

  v265 = *(a3 + 16);
  v266 = *(*(a3 + 8) + 4 * (0xD94FA4A9067DC0C4 % *(a3 + 24)));
  if (v266 == 0x7FFFFFFF)
  {
LABEL_365:
    v266 = 0x7FFFFFFFLL;
    goto LABEL_366;
  }

  while (*(v265 + 80 * v266 + 4) != 123)
  {
    v266 = *(v265 + 80 * v266) & 0x7FFFFFFF;
    if (v266 == 0x7FFFFFFF)
    {
      goto LABEL_365;
    }
  }

LABEL_366:
  v267 = v328 / 1000000.0 + v264;
  v268 = *(v265 + 80 * v266 + 40);
  v269 = *(a1 + 8);
  v270 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v273 = NAN;
      goto LABEL_371;
    }

    LODWORD(v271) = info.numer;
    LODWORD(v272) = info.denom;
    v270 = v271 / v272;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v270;
  }

  v273 = v270 * (v268 / v269);
LABEL_371:
  if (!*a3)
  {
    v275 = *(a3 + 16);
    goto LABEL_377;
  }

  v275 = *(a3 + 16);
  v276 = *(*(a3 + 8) + 4 * (0xEAD39EBF60CC176uLL % *(a3 + 24)));
  if (v276 == 0x7FFFFFFF)
  {
LABEL_377:
    v276 = 0x7FFFFFFFLL;
    goto LABEL_378;
  }

  while (*(v275 + 80 * v276 + 4) != 124)
  {
    v276 = *(v275 + 80 * v276) & 0x7FFFFFFF;
    if (v276 == 0x7FFFFFFF)
    {
      goto LABEL_377;
    }
  }

LABEL_378:
  v331 = v267;
  v274 = v267;
  v277 = v274;
  v278 = *(v275 + 80 * v276 + 40);
  v279 = *(a1 + 8);
  v280 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  v281 = v273 / 1000000.0;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v284 = NAN;
      goto LABEL_383;
    }

    LODWORD(v282) = info.numer;
    LODWORD(v283) = info.denom;
    v280 = v282 / v283;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v280;
  }

  v284 = v280 * (v278 / v279);
LABEL_383:
  v285 = v325 / 1000000.0;
  v286 = v284 / 1000000.0;
  if (!*a3)
  {
    v287 = *(a3 + 16);
    goto LABEL_389;
  }

  v287 = *(a3 + 16);
  v288 = *(*(a3 + 8) + 4 * (0x2D2898CE1F8CEF8EuLL % *(a3 + 24)));
  if (v288 == 0x7FFFFFFF)
  {
LABEL_389:
    v288 = 0x7FFFFFFFLL;
    goto LABEL_390;
  }

  while (*(v287 + 80 * v288 + 4) != 125)
  {
    v288 = *(v287 + 80 * v288) & 0x7FFFFFFF;
    if (v288 == 0x7FFFFFFF)
    {
      goto LABEL_389;
    }
  }

LABEL_390:
  v289 = v281 + v277 + v286;
  v290 = *(v287 + 80 * v288 + 40);
  v291 = *(a1 + 8);
  v292 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v295 = NAN;
      goto LABEL_395;
    }

    LODWORD(v293) = info.numer;
    LODWORD(v294) = info.denom;
    v292 = v293 / v294;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v292;
  }

  v295 = v292 * (v290 / v291);
LABEL_395:
  v296 = v326 / 1000000.0;
  v297 = v323 / 1000000.0;
  re::DynamicString::appendf(v6, "Network : %.2f    Animation : %.2f\n", v289, v295 / 1000000.0 + v285);
  if (!*a3)
  {
    v298 = *(a3 + 16);
    goto LABEL_401;
  }

  v298 = *(a3 + 16);
  v299 = *(*(a3 + 8) + 4 * (0x178631649EA56D8AuLL % *(a3 + 24)));
  if (v299 == 0x7FFFFFFF)
  {
LABEL_401:
    v299 = 0x7FFFFFFFLL;
    goto LABEL_402;
  }

  while (*(v298 + 80 * v299 + 4) != 120)
  {
    v299 = *(v298 + 80 * v299) & 0x7FFFFFFF;
    if (v299 == 0x7FFFFFFF)
    {
      goto LABEL_401;
    }
  }

LABEL_402:
  v300 = *(v298 + 80 * v299 + 40);
  v301 = *(a1 + 8);
  v302 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v305 = NAN;
      goto LABEL_407;
    }

    LODWORD(v303) = info.numer;
    LODWORD(v304) = info.denom;
    v302 = v303 / v304;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v302;
  }

  v305 = v302 * (v300 / v301);
LABEL_407:
  re::DynamicString::appendf(v6, "Assets : %.2f    Audio : %.2f\n", v296, v305 / 1000000.0 + v297);
  *(v6 + 10) = 1;
  if (!*a3)
  {
    v306 = *(a3 + 16);
    goto LABEL_413;
  }

  v306 = *(a3 + 16);
  v307 = *(*(a3 + 8) + 4 * (0xFFCB5C99F6AA8871 % *(a3 + 24)));
  if (v307 == 0x7FFFFFFF)
  {
LABEL_413:
    v307 = 0x7FFFFFFFLL;
    goto LABEL_414;
  }

  while (*(v306 + 80 * v307 + 4) != 18)
  {
    v307 = *(v306 + 80 * v307) & 0x7FFFFFFF;
    if (v307 == 0x7FFFFFFF)
    {
      goto LABEL_413;
    }
  }

LABEL_414:
  v308 = *(v306 + 80 * v307 + 40);
  v309 = *(a1 + 8);
  v310 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v313 = NAN;
      goto LABEL_419;
    }

    LODWORD(v311) = info.numer;
    LODWORD(v312) = info.denom;
    v310 = v311 / v312;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v310;
  }

  v313 = v310 * (v308 / v309);
LABEL_419:
  v314 = v339 / 1000000.0;
  v315 = v338 / 1000000.0;
  v316 = v314 + v315;
  v317 = v337 / 1000000.0;
  v318 = ((((((v341 - (v316 + v317)) - v331) - v334) - v285) - v296) - v297) - v336;
  if (v346 <= 0.0)
  {
    v318 = v318 - v344;
  }

  v319 = v313 / 1000000.0;
  result = re::DynamicString::appendf(v6, "Update Callback : %.2f    Others : %.2f\n", v319, (v318 - v319));
  *(v6 + 8) = 7;
  return result;
}

double re::FrameAnimationStats::dumpStatisticsInternal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  info.numer = 0;
  v5 = re::HashTable<unsigned int,re::FrameStatisticsOutput,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](a2, &info);
  v6 = v5;
  if (v5[1])
  {
    v5[1] = 1;
    v7 = v5[2];
  }

  else
  {
    *(v5 + 8) = 0;
    v7 = v5 + 9;
  }

  *v7 = 0;
  re::DynamicString::appendf(v5, "Animation Stats\n");
  v8 = 0x7FFFFFFFLL;
  if (*a3)
  {
    v9 = *(*(a3 + 8) + 4 * (0x2D2898CE1F8CEF8EuLL % *(a3 + 24)));
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(a3 + 16);
      v8 = 0x7FFFFFFFLL;
      while (*(v10 + 80 * v9 + 4) != 125)
      {
        v9 = *(v10 + 80 * v9) & 0x7FFFFFFF;
        if (v9 == 0x7FFFFFFF)
        {
          goto LABEL_11;
        }
      }

      v8 = v9;
    }
  }

LABEL_11:
  v11 = *(*(a3 + 16) + 80 * v8 + 40);
  v12 = *(a1 + 8);
  v13 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v16 = NAN;
      goto LABEL_16;
    }

    LODWORD(v14) = info.numer;
    LODWORD(v15) = info.denom;
    v13 = v14 / v15;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v13;
  }

  v16 = v13 * (v11 / v12);
LABEL_16:
  re::DynamicString::appendf(v6, "ECS Animations CPU Time (ms) : %.2f\n", v16 / 1000000.0);
  if (!*a3)
  {
    v17 = *(a3 + 16);
    goto LABEL_22;
  }

  v17 = *(a3 + 16);
  v18 = *(*(a3 + 8) + 4 * (0xEB90A3352640AF2uLL % *(a3 + 24)));
  if (v18 == 0x7FFFFFFF)
  {
LABEL_22:
    v18 = 0x7FFFFFFFLL;
    goto LABEL_23;
  }

  while (*(v17 + 80 * v18 + 4) != 20)
  {
    v18 = *(v17 + 80 * v18) & 0x7FFFFFFF;
    if (v18 == 0x7FFFFFFF)
    {
      goto LABEL_22;
    }
  }

LABEL_23:
  v19 = *(v17 + 80 * v18 + 40);
  v20 = *(a1 + 8);
  v21 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v24 = NAN;
      goto LABEL_28;
    }

    LODWORD(v22) = info.numer;
    LODWORD(v23) = info.denom;
    v21 = v22 / v23;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v21;
  }

  v24 = v21 * (v19 / v20);
LABEL_28:
  re::DynamicString::appendf(v6, "Animation Manager CPU Time (ms) : %.2f\n", v24 / 1000000.0);
  if (!*a3)
  {
    v25 = *(a3 + 16);
    goto LABEL_34;
  }

  v25 = *(a3 + 16);
  v26 = *(*(a3 + 8) + 4 * (0x786DD0AB972D849AuLL % *(a3 + 24)));
  if (v26 == 0x7FFFFFFF)
  {
LABEL_34:
    v26 = 0x7FFFFFFFLL;
    goto LABEL_35;
  }

  while (*(v25 + 80 * v26 + 4) != 115)
  {
    v26 = *(v25 + 80 * v26) & 0x7FFFFFFF;
    if (v26 == 0x7FFFFFFF)
    {
      goto LABEL_34;
    }
  }

LABEL_35:
  v27 = *(v25 + 80 * v26 + 40);
  v28 = *(a1 + 8);
  v29 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v32 = NAN;
      goto LABEL_40;
    }

    LODWORD(v30) = info.numer;
    LODWORD(v31) = info.denom;
    v29 = v30 / v31;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v29;
  }

  v32 = v29 * (v27 / v28);
LABEL_40:
  re::DynamicString::appendf(v6, "Deform Processing CPU Time (ms) : %.2f\n", v32 / 1000000.0);
  if (!*a3)
  {
    v34 = *(a3 + 16);
    v38 = *(a1 + 8);
    v39 = *(v34 + 0x27FFFFFFD8) / v38;
LABEL_53:
    v41 = 0x7FFFFFFFLL;
    goto LABEL_54;
  }

  v33 = *(a3 + 24);
  v35 = *(a3 + 8);
  v34 = *(a3 + 16);
  v36 = *(v35 + 4 * (0x33CFFC116CF4F2F0 % v33));
  if (v36 == 0x7FFFFFFF)
  {
    v37 = (v34 + 0x27FFFFFFD8);
  }

  else
  {
    v40 = 0x7FFFFFFFLL;
    while (*(v34 + 80 * v36 + 4) != 116)
    {
      v36 = *(v34 + 80 * v36) & 0x7FFFFFFF;
      if (v36 == 0x7FFFFFFF)
      {
        goto LABEL_49;
      }
    }

    v40 = v36;
LABEL_49:
    v37 = (v34 + 80 * v40 + 40);
  }

  v38 = *(a1 + 8);
  v39 = *v37 / v38;
  v41 = *(v35 + 4 * (0xEF08A61A384AADEELL % v33));
  if (v41 == 0x7FFFFFFF)
  {
    goto LABEL_53;
  }

  while (*(v34 + 80 * v41 + 4) != 117)
  {
    v41 = *(v34 + 80 * v41) & 0x7FFFFFFF;
    if (v41 == 0x7FFFFFFF)
    {
      goto LABEL_53;
    }
  }

LABEL_54:
  re::DynamicString::appendf(v6, "Active Deformations : %.0f, Total Joints : %.0f\n", v39, (*(v34 + 80 * v41 + 40) / v38));
  re::DynamicString::appendf(v6, "Component Counts\n");
  if (!*a3)
  {
    v43 = *(a3 + 16);
    v47 = *(v43 + 0x27FFFFFFD8);
    v48 = *(a1 + 8);
    v49 = v47 / v48;
LABEL_75:
    v55 = 0x7FFFFFFFLL;
    goto LABEL_76;
  }

  v42 = *(a3 + 24);
  v44 = *(a3 + 8);
  v43 = *(a3 + 16);
  v45 = *(v44 + 4 * (0x8607C7321697C49DLL % v42));
  if (v45 == 0x7FFFFFFF)
  {
    v46 = (v43 + 0x27FFFFFFD8);
  }

  else
  {
    v50 = 0x7FFFFFFFLL;
    while (*(v43 + 80 * v45 + 4) != 107)
    {
      v45 = *(v43 + 80 * v45) & 0x7FFFFFFF;
      if (v45 == 0x7FFFFFFF)
      {
        goto LABEL_63;
      }
    }

    v50 = v45;
LABEL_63:
    v46 = (v43 + 80 * v50 + 40);
  }

  v51 = *v46;
  v48 = *(a1 + 8);
  v52 = *(v44 + 4 * (0x581D666DC9C63F77 % v42));
  if (v52 == 0x7FFFFFFF)
  {
    v53 = (v43 + 0x27FFFFFFD8);
  }

  else
  {
    v54 = 0x7FFFFFFFLL;
    while (*(v43 + 80 * v52 + 4) != 111)
    {
      v52 = *(v43 + 80 * v52) & 0x7FFFFFFF;
      if (v52 == 0x7FFFFFFF)
      {
        goto LABEL_71;
      }
    }

    v54 = v52;
LABEL_71:
    v53 = (v43 + 80 * v54 + 40);
  }

  v49 = v51 / v48;
  v47 = *v53;
  v55 = *(v44 + 4 * (0x30AF74B32E05F342 % v42));
  if (v55 == 0x7FFFFFFF)
  {
    goto LABEL_75;
  }

  while (*(v43 + 80 * v55 + 4) != 109)
  {
    v55 = *(v43 + 80 * v55) & 0x7FFFFFFF;
    if (v55 == 0x7FFFFFFF)
    {
      goto LABEL_75;
    }
  }

LABEL_76:
  re::DynamicString::appendf(v6, "Animations : %.0f, Blend Shapes : %.0f, Rigs : %.0f\n", v49, (v47 / v48), (*(v43 + 80 * v55 + 40) / v48));
  if (!*a3)
  {
    v57 = *(a3 + 16);
    v61 = *(a1 + 8);
    v62 = *(v57 + 0x27FFFFFFD8) / v61;
LABEL_89:
    v64 = 0x7FFFFFFFLL;
    goto LABEL_90;
  }

  v56 = *(a3 + 24);
  v58 = *(a3 + 8);
  v57 = *(a3 + 16);
  v59 = *(v58 + 4 * (0xF2BAED4A618B76B9 % v56));
  if (v59 == 0x7FFFFFFF)
  {
    v60 = (v57 + 0x27FFFFFFD8);
  }

  else
  {
    v63 = 0x7FFFFFFFLL;
    while (*(v57 + 80 * v59 + 4) != 108)
    {
      v59 = *(v57 + 80 * v59) & 0x7FFFFFFF;
      if (v59 == 0x7FFFFFFF)
      {
        goto LABEL_85;
      }
    }

    v63 = v59;
LABEL_85:
    v60 = (v57 + 80 * v63 + 40);
  }

  v61 = *(a1 + 8);
  v62 = *v60 / v61;
  v64 = *(v58 + 4 * (0xE2D92833383B377ELL % v56));
  if (v64 == 0x7FFFFFFF)
  {
    goto LABEL_89;
  }

  while (*(v57 + 80 * v64 + 4) != 113)
  {
    v64 = *(v57 + 80 * v64) & 0x7FFFFFFF;
    if (v64 == 0x7FFFFFFF)
    {
      goto LABEL_89;
    }
  }

LABEL_90:
  re::DynamicString::appendf(v6, "Skeletal Poses : %.0f, Mesh Offsets : %.0f\n", v62, (*(v57 + 80 * v64 + 40) / v61));
  if (!*a3)
  {
    v66 = *(a3 + 16);
    v70 = *(v66 + 0x27FFFFFFD8);
    v71 = *(a1 + 8);
LABEL_103:
    v73 = 0x7FFFFFFFLL;
    goto LABEL_104;
  }

  v65 = *(a3 + 24);
  v67 = *(a3 + 8);
  v66 = *(a3 + 16);
  v68 = *(v67 + 4 * (0x1801EBC20183EB48 % v65));
  if (v68 == 0x7FFFFFFF)
  {
    v69 = (v66 + 0x27FFFFFFD8);
  }

  else
  {
    v72 = 0x7FFFFFFFLL;
    while (*(v66 + 80 * v68 + 4) != 112)
    {
      v68 = *(v66 + 80 * v68) & 0x7FFFFFFF;
      if (v68 == 0x7FFFFFFF)
      {
        goto LABEL_99;
      }
    }

    v72 = v68;
LABEL_99:
    v69 = (v66 + 80 * v72 + 40);
  }

  v70 = *v69;
  v71 = *(a1 + 8);
  v73 = *(v67 + 4 * (0xCA4B25A23588FF96 % v65));
  if (v73 == 0x7FFFFFFF)
  {
    goto LABEL_103;
  }

  while (*(v66 + 80 * v73 + 4) != 110)
  {
    v73 = *(v66 + 80 * v73) & 0x7FFFFFFF;
    if (v73 == 0x7FFFFFFF)
    {
      goto LABEL_103;
    }
  }

LABEL_104:
  re::DynamicString::appendf(v6, "Mesh Smooths : %.0f, Mesh Deformations : %.0f\n", (v70 / v71), (*(v66 + 80 * v73 + 40) / v71));
  *&result = 0x2D00000009;
  *(v6 + 4) = 0x2D00000009;
  *(v6 + 10) = 2;
  return result;
}

double re::FrameAssetStats::dumpStatisticsInternal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  info.numer = 0;
  v5 = re::HashTable<unsigned int,re::FrameStatisticsOutput,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](a2, &info);
  v6 = v5;
  if (v5[1])
  {
    v5[1] = 1;
    v7 = v5[2];
  }

  else
  {
    *(v5 + 8) = 0;
    v7 = v5 + 9;
  }

  *v7 = 0;
  re::DynamicString::appendf(v5, "Asset Pipeline Stats\n");
  v8 = 0x7FFFFFFFLL;
  if (*a3)
  {
    v9 = *(*(a3 + 8) + 4 * (0xD633B1846FAF2B49 % *(a3 + 24)));
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(a3 + 16);
      v8 = 0x7FFFFFFFLL;
      while (*(v10 + 80 * v9 + 4) != 21)
      {
        v9 = *(v10 + 80 * v9) & 0x7FFFFFFF;
        if (v9 == 0x7FFFFFFF)
        {
          goto LABEL_11;
        }
      }

      v8 = v9;
    }
  }

LABEL_11:
  v11 = *(*(a3 + 16) + 80 * v8 + 40);
  v12 = *(a1 + 8);
  v13 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v16 = NAN;
      goto LABEL_16;
    }

    LODWORD(v14) = info.numer;
    LODWORD(v15) = info.denom;
    v13 = v14 / v15;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v13;
  }

  v16 = v13 * (v11 / v12);
LABEL_16:
  re::DynamicString::appendf(v6, "AssetManager Update Time (ms) : %.2f\n", v16 / 1000000.0);
  re::DynamicString::appendf(v6, "Asset Registration App Lifetime Times (sec)\n");
  if (!*a3)
  {
    v17 = *(a3 + 16);
    goto LABEL_22;
  }

  v17 = *(a3 + 16);
  v18 = *(*(a3 + 8) + 4 * (0x926465EF67D04F3FLL % *(a3 + 24)));
  if (v18 == 0x7FFFFFFF)
  {
LABEL_22:
    v18 = 0x7FFFFFFFLL;
    goto LABEL_23;
  }

  while (*(v17 + 80 * v18 + 4) != 61)
  {
    v18 = *(v17 + 80 * v18) & 0x7FFFFFFF;
    if (v18 == 0x7FFFFFFF)
    {
      goto LABEL_22;
    }
  }

LABEL_23:
  v19 = *(v17 + 80 * v18 + 60);
  v20 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v23 = NAN;
      goto LABEL_28;
    }

    LODWORD(v21) = info.numer;
    LODWORD(v22) = info.denom;
    v20 = v21 / v22;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v20;
  }

  v23 = v20 * v19;
LABEL_28:
  if (!*a3)
  {
    v24 = *(a3 + 16);
    goto LABEL_34;
  }

  v24 = *(a3 + 16);
  v25 = *(*(a3 + 8) + 4 * (0x926465EF67D04F3FLL % *(a3 + 24)));
  if (v25 == 0x7FFFFFFF)
  {
LABEL_34:
    v25 = 0x7FFFFFFFLL;
    goto LABEL_35;
  }

  while (*(v24 + 80 * v25 + 4) != 61)
  {
    v25 = *(v24 + 80 * v25) & 0x7FFFFFFF;
    if (v25 == 0x7FFFFFFF)
    {
      goto LABEL_34;
    }
  }

LABEL_35:
  v26 = *(v24 + 80 * v25 + 56);
  v27 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v30 = NAN;
      goto LABEL_40;
    }

    LODWORD(v28) = info.numer;
    LODWORD(v29) = info.denom;
    v27 = v28 / v29;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v27;
  }

  v30 = v27 * v26;
LABEL_40:
  if (!*a3)
  {
    v31 = *(a3 + 16);
    goto LABEL_46;
  }

  v31 = *(a3 + 16);
  v32 = *(*(a3 + 8) + 4 * (0x926465EF67D04F3FLL % *(a3 + 24)));
  if (v32 == 0x7FFFFFFF)
  {
LABEL_46:
    v32 = 0x7FFFFFFFLL;
    goto LABEL_47;
  }

  while (*(v31 + 80 * v32 + 4) != 61)
  {
    v32 = *(v31 + 80 * v32) & 0x7FFFFFFF;
    if (v32 == 0x7FFFFFFF)
    {
      goto LABEL_46;
    }
  }

LABEL_47:
  v33 = *(v31 + 80 * v32 + 52);
  v34 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v37 = NAN;
      goto LABEL_52;
    }

    LODWORD(v35) = info.numer;
    LODWORD(v36) = info.denom;
    v34 = v35 / v36;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v34;
  }

  v37 = v34 * v33;
LABEL_52:
  v38 = v37 / 1000000.0;
  if (!*a3)
  {
    v39 = *(a3 + 16);
    goto LABEL_58;
  }

  v39 = *(a3 + 16);
  v40 = *(*(a3 + 8) + 4 * (0x926465EF67D04F3FLL % *(a3 + 24)));
  if (v40 == 0x7FFFFFFF)
  {
LABEL_58:
    v40 = 0x7FFFFFFFLL;
    goto LABEL_59;
  }

  while (*(v39 + 80 * v40 + 4) != 61)
  {
    v40 = *(v39 + 80 * v40) & 0x7FFFFFFF;
    if (v40 == 0x7FFFFFFF)
    {
      goto LABEL_58;
    }
  }

LABEL_59:
  v41 = *(v39 + 80 * v40 + 68);
  v42 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  v43 = v38 / 1000.0;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v46 = NAN;
      goto LABEL_64;
    }

    LODWORD(v44) = info.numer;
    LODWORD(v45) = info.denom;
    v42 = v44 / v45;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v42;
  }

  v46 = v42 * v41;
LABEL_64:
  re::DynamicString::appendf(v6, "Total : %.2f, Max : %.2f, Min : %.2f, Mean : %.2f\n", v23 / 1000000.0 / 1000.0, v30 / 1000000.0 / 1000.0, v43, v46 / 1000000.0 / 1000.0);
  re::DynamicString::appendf(v6, "Asset Load App Lifetime Times (sec)\n");
  if (!*a3)
  {
    v47 = *(a3 + 16);
    goto LABEL_70;
  }

  v47 = *(a3 + 16);
  v48 = *(*(a3 + 8) + 4 * (0x8BD899976CB6021ELL % *(a3 + 24)));
  if (v48 == 0x7FFFFFFF)
  {
LABEL_70:
    v48 = 0x7FFFFFFFLL;
    goto LABEL_71;
  }

  while (*(v47 + 80 * v48 + 4) != 59)
  {
    v48 = *(v47 + 80 * v48) & 0x7FFFFFFF;
    if (v48 == 0x7FFFFFFF)
    {
      goto LABEL_70;
    }
  }

LABEL_71:
  v49 = *(v47 + 80 * v48 + 40);
  v50 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v53 = NAN;
      goto LABEL_76;
    }

    LODWORD(v51) = info.numer;
    LODWORD(v52) = info.denom;
    v50 = v51 / v52;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v50;
  }

  v53 = v50 * (v49 / 1000.0);
LABEL_76:
  if (!*a3)
  {
    v54 = *(a3 + 16);
    goto LABEL_82;
  }

  v54 = *(a3 + 16);
  v55 = *(*(a3 + 8) + 4 * (0x8BD899976CB6021ELL % *(a3 + 24)));
  if (v55 == 0x7FFFFFFF)
  {
LABEL_82:
    v55 = 0x7FFFFFFFLL;
    goto LABEL_83;
  }

  while (*(v54 + 80 * v55 + 4) != 59)
  {
    v55 = *(v54 + 80 * v55) & 0x7FFFFFFF;
    if (v55 == 0x7FFFFFFF)
    {
      goto LABEL_82;
    }
  }

LABEL_83:
  v56 = *(v54 + 80 * v55 + 36);
  v57 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v60 = NAN;
      goto LABEL_88;
    }

    LODWORD(v58) = info.numer;
    LODWORD(v59) = info.denom;
    v57 = v58 / v59;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v57;
  }

  v60 = v57 * (v56 / 1000.0);
LABEL_88:
  if (!*a3)
  {
    v61 = *(a3 + 16);
    goto LABEL_94;
  }

  v61 = *(a3 + 16);
  v62 = *(*(a3 + 8) + 4 * (0x8BD899976CB6021ELL % *(a3 + 24)));
  if (v62 == 0x7FFFFFFF)
  {
LABEL_94:
    v62 = 0x7FFFFFFFLL;
    goto LABEL_95;
  }

  while (*(v61 + 80 * v62 + 4) != 59)
  {
    v62 = *(v61 + 80 * v62) & 0x7FFFFFFF;
    if (v62 == 0x7FFFFFFF)
    {
      goto LABEL_94;
    }
  }

LABEL_95:
  v63 = *(v61 + 80 * v62 + 32);
  v64 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v67 = NAN;
      goto LABEL_100;
    }

    LODWORD(v65) = info.numer;
    LODWORD(v66) = info.denom;
    v64 = v65 / v66;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v64;
  }

  v67 = v64 * (v63 / 1000.0);
LABEL_100:
  if (!*a3)
  {
    v68 = *(a3 + 16);
    goto LABEL_106;
  }

  v68 = *(a3 + 16);
  v69 = *(*(a3 + 8) + 4 * (0x8BD899976CB6021ELL % *(a3 + 24)));
  if (v69 == 0x7FFFFFFF)
  {
LABEL_106:
    v69 = 0x7FFFFFFFLL;
    goto LABEL_107;
  }

  while (*(v68 + 80 * v69 + 4) != 59)
  {
    v69 = *(v68 + 80 * v69) & 0x7FFFFFFF;
    if (v69 == 0x7FFFFFFF)
    {
      goto LABEL_106;
    }
  }

LABEL_107:
  v70 = v53 / 1000000.0;
  v71 = v60 / 1000000.0;
  v72 = *(v68 + 80 * v69 + 48);
  v73 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  v74 = v67 / 1000000.0;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v77 = NAN;
      goto LABEL_112;
    }

    LODWORD(v75) = info.numer;
    LODWORD(v76) = info.denom;
    v73 = v75 / v76;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v73;
  }

  v77 = v73 * (v72 / 1000.0);
LABEL_112:
  re::DynamicString::appendf(v6, "Total : %.2f, Max : %.2f, Min : %.2f, Mean : %.2f\n", v70, v71, v74, v77 / 1000000.0);
  if (!*a3)
  {
    v78 = *(a3 + 16);
    goto LABEL_118;
  }

  v78 = *(a3 + 16);
  v79 = *(*(a3 + 8) + 4 * (0x99E7FE09B67A7978 % *(a3 + 24)));
  if (v79 == 0x7FFFFFFF)
  {
LABEL_118:
    v79 = 0x7FFFFFFFLL;
    goto LABEL_119;
  }

  while (*(v78 + 80 * v79 + 4) != 58)
  {
    v79 = *(v78 + 80 * v79) & 0x7FFFFFFF;
    if (v79 == 0x7FFFFFFF)
    {
      goto LABEL_118;
    }
  }

LABEL_119:
  re::DynamicString::appendf(v6, "Total Assets : %.0f\n", (*(v78 + 80 * v79 + 40) / *(a1 + 8)));
  if (!*a3)
  {
    v81 = *(a3 + 16);
    v85 = *(a1 + 8);
    v86 = *(v81 + 0x27FFFFFFD8) / v85;
LABEL_132:
    v88 = 0x7FFFFFFFLL;
    goto LABEL_133;
  }

  v80 = *(a3 + 24);
  v82 = *(a3 + 8);
  v81 = *(a3 + 16);
  v83 = *(v82 + 4 * (0x58EFD731A91FB004 % v80));
  if (v83 == 0x7FFFFFFF)
  {
    v84 = (v81 + 0x27FFFFFFD8);
  }

  else
  {
    v87 = 0x7FFFFFFFLL;
    while (*(v81 + 80 * v83 + 4) != 56)
    {
      v83 = *(v81 + 80 * v83) & 0x7FFFFFFF;
      if (v83 == 0x7FFFFFFF)
      {
        goto LABEL_128;
      }
    }

    v87 = v83;
LABEL_128:
    v84 = (v81 + 80 * v87 + 40);
  }

  v85 = *(a1 + 8);
  v86 = *v84 / v85;
  v88 = *(v82 + 4 * (0x9ABD6DF5738C0A9BLL % v80));
  if (v88 == 0x7FFFFFFF)
  {
    goto LABEL_132;
  }

  while (*(v81 + 80 * v88 + 4) != 55)
  {
    v88 = *(v81 + 80 * v88) & 0x7FFFFFFF;
    if (v88 == 0x7FFFFFFF)
    {
      goto LABEL_132;
    }
  }

LABEL_133:
  re::DynamicString::appendf(v6, "Loaded : %.0f, Loading : %.0f\n", v86, (*(v81 + 80 * v88 + 40) / v85));
  if (!*a3)
  {
    v90 = *(a3 + 16);
    v94 = *(a1 + 8);
    v95 = *(v90 + 0x27FFFFFFD8) / v94;
LABEL_146:
    v97 = 0x7FFFFFFFLL;
    goto LABEL_147;
  }

  v89 = *(a3 + 24);
  v91 = *(a3 + 8);
  v90 = *(a3 + 16);
  v92 = *(v91 + 4 * (0x6231EAB2525BA011 % v89));
  if (v92 == 0x7FFFFFFF)
  {
    v93 = (v90 + 0x27FFFFFFD8);
  }

  else
  {
    v96 = 0x7FFFFFFFLL;
    while (*(v90 + 80 * v92 + 4) != 57)
    {
      v92 = *(v90 + 80 * v92) & 0x7FFFFFFF;
      if (v92 == 0x7FFFFFFF)
      {
        goto LABEL_142;
      }
    }

    v96 = v92;
LABEL_142:
    v93 = (v90 + 80 * v96 + 40);
  }

  v94 = *(a1 + 8);
  v95 = *v93 / v94;
  v97 = *(v91 + 4 * (0xF95D76A430C5BB5CLL % v89));
  if (v97 == 0x7FFFFFFF)
  {
    goto LABEL_146;
  }

  while (*(v90 + 80 * v97 + 4) != 54)
  {
    v97 = *(v90 + 80 * v97) & 0x7FFFFFFF;
    if (v97 == 0x7FFFFFFF)
    {
      goto LABEL_146;
    }
  }

LABEL_147:
  re::DynamicString::appendf(v6, "Failed Loads: %.0f, Unloaded : %.0f\n", v95, (*(v90 + 80 * v97 + 40) / v94));
  if (!*a3)
  {
    v99 = *(a3 + 16);
    v103 = *(a1 + 8);
    v104 = *(v99 + 0x27FFFFFFD8) / v103;
LABEL_160:
    v106 = 0x7FFFFFFFLL;
    goto LABEL_161;
  }

  v98 = *(a3 + 24);
  v100 = *(a3 + 8);
  v99 = *(a3 + 16);
  v101 = *(v100 + 4 * (0x3CEE781815CE206BLL % v98));
  if (v101 == 0x7FFFFFFF)
  {
    v102 = *(v99 + 0x27FFFFFFD8);
  }

  else
  {
    v105 = 0x7FFFFFFFLL;
    while (*(v99 + 80 * v101 + 4) != 62)
    {
      v101 = *(v99 + 80 * v101) & 0x7FFFFFFF;
      if (v101 == 0x7FFFFFFF)
      {
        goto LABEL_156;
      }
    }

    v105 = v101;
LABEL_156:
    v102 = *(v99 + 80 * v105 + 40);
  }

  v103 = *(a1 + 8);
  v104 = v102 / v103;
  v106 = *(v100 + 4 * (0xE1BAA47D01408015 % v98));
  if (v106 == 0x7FFFFFFF)
  {
    goto LABEL_160;
  }

  while (*(v99 + 80 * v106 + 4) != 63)
  {
    v106 = *(v99 + 80 * v106) & 0x7FFFFFFF;
    if (v106 == 0x7FFFFFFF)
    {
      goto LABEL_160;
    }
  }

LABEL_161:
  v107 = v104;
  if (v121)
  {
    v108 = v123;
  }

  else
  {
    v108 = v122;
  }

  re::DynamicString::appendf(v6, "Mesh Info: %.0f mesh(es) @ %s\n", v107, v108);
  if (*&info && (v121 & 1) != 0)
  {
    (*(**&info + 40))();
  }

  if (!*a3)
  {
    v110 = *(a3 + 16);
    v113 = *(v110 + 0x27FFFFFFD8);
    v114 = *(a1 + 8);
LABEL_180:
    v116 = 0x7FFFFFFFLL;
    goto LABEL_181;
  }

  v109 = *(a3 + 24);
  v111 = *(a3 + 8);
  v110 = *(a3 + 16);
  v112 = *(v111 + 4 * (0x8AA449CE2D0CA1D3 % v109));
  if (v112 == 0x7FFFFFFF)
  {
    v113 = *(v110 + 0x27FFFFFFD8);
  }

  else
  {
    v115 = 0x7FFFFFFFLL;
    while (*(v110 + 80 * v112 + 4) != 64)
    {
      v112 = *(v110 + 80 * v112) & 0x7FFFFFFF;
      if (v112 == 0x7FFFFFFF)
      {
        goto LABEL_176;
      }
    }

    v115 = v112;
LABEL_176:
    v113 = *(v110 + 80 * v115 + 40);
  }

  v114 = *(a1 + 8);
  v116 = *(v111 + 4 * (0x6B18769D9C324EABLL % v109));
  if (v116 == 0x7FFFFFFF)
  {
    goto LABEL_180;
  }

  while (*(v110 + 80 * v116 + 4) != 65)
  {
    v116 = *(v110 + 80 * v116) & 0x7FFFFFFF;
    if (v116 == 0x7FFFFFFF)
    {
      goto LABEL_180;
    }
  }

LABEL_181:
  v117 = (v113 / v114);
  if (v121)
  {
    v118 = v123;
  }

  else
  {
    v118 = v122;
  }

  re::DynamicString::appendf(v6, "Texture Info: %.0f texture(s) @ %s\n", v117, v118);
  if (*&info && (v121 & 1) != 0)
  {
    (*(**&info + 40))();
  }

  *&result = 0x3C0000000BLL;
  *(v6 + 4) = 0x3C0000000BLL;
  *(v6 + 10) = 4;
  return result;
}

uint64_t anonymous namespace::getFormattedBytes(_anonymous_namespace_ *this, float a2)
{
  v2 = 0;
  while (1)
  {
    v3 = a2 * 0.00097656;
    if ((a2 * 0.00097656) < 1.0)
    {
      break;
    }

    ++v2;
    a2 = a2 * 0.00097656;
    if (v2 == 5)
    {
      v4 = v3;
      v5 = "TB";
      return re::DynamicString::format("%.2f %s", this, *&v4, v5);
    }
  }

  v4 = a2;
  v5 = off_1E8721730[v2];
  return re::DynamicString::format("%.2f %s", this, *&v4, v5);
}

uint64_t re::FrameAudioStats::dumpStatisticsInternal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  info.numer = 0;
  v5 = re::HashTable<unsigned int,re::FrameStatisticsOutput,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](a2, &info);
  v6 = v5;
  if (v5[1])
  {
    v5[1] = 1;
    v7 = v5[2];
  }

  else
  {
    *(v5 + 8) = 0;
    v7 = v5 + 9;
  }

  *v7 = 0;
  re::DynamicString::appendf(v5, "Audio Stats\n");
  v8 = 0x7FFFFFFFLL;
  if (*a3)
  {
    v9 = *(*(a3 + 8) + 4 * (0x178631649EA56D8AuLL % *(a3 + 24)));
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(a3 + 16);
      v8 = 0x7FFFFFFFLL;
      while (*(v10 + 80 * v9 + 4) != 120)
      {
        v9 = *(v10 + 80 * v9) & 0x7FFFFFFF;
        if (v9 == 0x7FFFFFFF)
        {
          goto LABEL_11;
        }
      }

      v8 = v9;
    }
  }

LABEL_11:
  v11 = *(*(a3 + 16) + 80 * v8 + 40);
  v12 = *(a1 + 8);
  v13 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v16 = NAN;
      goto LABEL_16;
    }

    LODWORD(v14) = info.numer;
    LODWORD(v15) = info.denom;
    v13 = v14 / v15;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v13;
  }

  v16 = v13 * (v11 / v12);
LABEL_16:
  re::DynamicString::appendf(v6, "Audio ECS Work (ms) : %.2f\n", v16 / 1000000.0);
  if (!*a3)
  {
    v17 = *(a3 + 16);
    goto LABEL_22;
  }

  v17 = *(a3 + 16);
  v18 = *(*(a3 + 8) + 4 * (0xFD95FA4DB404DD7BLL % *(a3 + 24)));
  if (v18 == 0x7FFFFFFF)
  {
LABEL_22:
    v18 = 0x7FFFFFFFLL;
    goto LABEL_23;
  }

  while (*(v17 + 80 * v18 + 4) != 22)
  {
    v18 = *(v17 + 80 * v18) & 0x7FFFFFFF;
    if (v18 == 0x7FFFFFFF)
    {
      goto LABEL_22;
    }
  }

LABEL_23:
  v19 = *(v17 + 80 * v18 + 40);
  v20 = *(a1 + 8);
  v21 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v24 = NAN;
      goto LABEL_28;
    }

    LODWORD(v22) = info.numer;
    LODWORD(v23) = info.denom;
    v21 = v22 / v23;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v21;
  }

  v24 = v21 * (v19 / v20);
LABEL_28:
  re::DynamicString::appendf(v6, "Audio Pre/Post Frame Update (ms) : %.2f\n", v24 / 1000000.0);
  if (!*a3)
  {
    v26 = *(a3 + 16);
    v30 = *(v26 + 0x27FFFFFFD8);
    v31 = *(a1 + 8);
    v32 = v30 / v31;
LABEL_49:
    v38 = 0x7FFFFFFFLL;
    goto LABEL_50;
  }

  v25 = *(a3 + 24);
  v27 = *(a3 + 8);
  v26 = *(a3 + 16);
  v28 = *(v27 + 4 * (0x2427CEE8D2E4A800 % v25));
  if (v28 == 0x7FFFFFFF)
  {
    v29 = (v26 + 0x27FFFFFFD8);
  }

  else
  {
    v33 = 0x7FFFFFFFLL;
    while (*(v26 + 80 * v28 + 4) != 143)
    {
      v28 = *(v26 + 80 * v28) & 0x7FFFFFFF;
      if (v28 == 0x7FFFFFFF)
      {
        goto LABEL_37;
      }
    }

    v33 = v28;
LABEL_37:
    v29 = (v26 + 80 * v33 + 40);
  }

  v34 = *v29;
  v31 = *(a1 + 8);
  v35 = *(v27 + 4 * (0xA46F85AC5FAF045DLL % v25));
  if (v35 == 0x7FFFFFFF)
  {
    v36 = (v26 + 0x27FFFFFFD8);
  }

  else
  {
    v37 = 0x7FFFFFFFLL;
    while (*(v26 + 80 * v35 + 4) != 140)
    {
      v35 = *(v26 + 80 * v35) & 0x7FFFFFFF;
      if (v35 == 0x7FFFFFFF)
      {
        goto LABEL_45;
      }
    }

    v37 = v35;
LABEL_45:
    v36 = (v26 + 80 * v37 + 40);
  }

  v32 = v34 / v31;
  v30 = *v36;
  v38 = *(v27 + 4 * (0xFB7C0C284AF128D0 % v25));
  if (v38 == 0x7FFFFFFF)
  {
    goto LABEL_49;
  }

  while (*(v26 + 80 * v38 + 4) != 147)
  {
    v38 = *(v26 + 80 * v38) & 0x7FFFFFFF;
    if (v38 == 0x7FFFFFFF)
    {
      goto LABEL_49;
    }
  }

LABEL_50:
  re::DynamicString::appendf(v6, "Players : %.0f, Listeners: %.0f, Timebases: %.0f\n", v32, (v30 / v31), (*(v26 + 80 * v38 + 40) / v31));
  if (!*a3)
  {
    v40 = *(a3 + 16);
    v44 = *(a1 + 8);
    v45 = *(v40 + 0x27FFFFFFD8) / v44;
LABEL_63:
    v47 = 0x7FFFFFFFLL;
    goto LABEL_64;
  }

  v39 = *(a3 + 24);
  v41 = *(a3 + 8);
  v40 = *(a3 + 16);
  v42 = *(v41 + 4 * (0xD8013BA0973C70B4 % v39));
  if (v42 == 0x7FFFFFFF)
  {
    v43 = (v40 + 0x27FFFFFFD8);
  }

  else
  {
    v46 = 0x7FFFFFFFLL;
    while (*(v40 + 80 * v42 + 4) != 145)
    {
      v42 = *(v40 + 80 * v42) & 0x7FFFFFFF;
      if (v42 == 0x7FFFFFFF)
      {
        goto LABEL_59;
      }
    }

    v46 = v42;
LABEL_59:
    v43 = (v40 + 80 * v46 + 40);
  }

  v44 = *(a1 + 8);
  v45 = *v43 / v44;
  v47 = *(v41 + 4 * (0xC1726A6640A7C667 % v39));
  if (v47 == 0x7FFFFFFF)
  {
    goto LABEL_63;
  }

  while (*(v40 + 80 * v47 + 4) != 141)
  {
    v47 = *(v40 + 80 * v47) & 0x7FFFFFFF;
    if (v47 == 0x7FFFFFFF)
    {
      goto LABEL_63;
    }
  }

LABEL_64:
  re::DynamicString::appendf(v6, "Voices : %.0f, Generators : %.0f\n", v45, (*(v40 + 80 * v47 + 40) / v44));
  if (!*a3)
  {
    v49 = *(a3 + 16);
    v53 = *(a1 + 8);
    v54 = *(v49 + 0x27FFFFFFD8) / v53;
LABEL_77:
    v56 = 0x7FFFFFFFLL;
    goto LABEL_78;
  }

  v48 = *(a3 + 24);
  v50 = *(a3 + 8);
  v49 = *(a3 + 16);
  v51 = *(v50 + 4 * (0x97DCC30D0B60AE52 % v48));
  if (v51 == 0x7FFFFFFF)
  {
    v52 = (v49 + 0x27FFFFFFD8);
  }

  else
  {
    v55 = 0x7FFFFFFFLL;
    while (*(v49 + 80 * v51 + 4) != 142)
    {
      v51 = *(v49 + 80 * v51) & 0x7FFFFFFF;
      if (v51 == 0x7FFFFFFF)
      {
        goto LABEL_73;
      }
    }

    v55 = v51;
LABEL_73:
    v52 = (v49 + 80 * v55 + 40);
  }

  v53 = *(a1 + 8);
  v54 = *v52 / v53;
  v56 = *(v50 + 4 * (0x4A1AC66DC58909F5 % v48));
  if (v56 == 0x7FFFFFFF)
  {
    goto LABEL_77;
  }

  while (*(v49 + 80 * v56 + 4) != 146)
  {
    v56 = *(v49 + 80 * v56) & 0x7FFFFFFF;
    if (v56 == 0x7FFFFFFF)
    {
      goto LABEL_77;
    }
  }

LABEL_78:
  re::DynamicString::appendf(v6, "Animations: %.0f, Acoustic Meshes : %.0f\n", v54, (*(v49 + 80 * v56 + 40) / v53));
  if (!*a3)
  {
    v57 = *(a3 + 16);
    goto LABEL_84;
  }

  v57 = *(a3 + 16);
  v58 = *(*(a3 + 8) + 4 * (0x30C19CE02862B3C8uLL % *(a3 + 24)));
  if (v58 == 0x7FFFFFFF)
  {
LABEL_84:
    v58 = 0x7FFFFFFFLL;
    goto LABEL_85;
  }

  while (*(v57 + 80 * v58 + 4) != 144)
  {
    v58 = *(v57 + 80 * v58) & 0x7FFFFFFF;
    if (v58 == 0x7FFFFFFF)
    {
      goto LABEL_84;
    }
  }

LABEL_85:
  re::DynamicString::appendf(v6, "Audio Files: <T.B.D> %.0f\n", (*(v57 + 80 * v58 + 40) / *(a1 + 8)));
  if (!*a3)
  {
    v59 = *(a3 + 16);
    goto LABEL_91;
  }

  v59 = *(a3 + 16);
  v60 = *(*(a3 + 8) + 4 * (0x83D7EAD9103E6A46 % *(a3 + 24)));
  if (v60 == 0x7FFFFFFF)
  {
LABEL_91:
    v60 = 0x7FFFFFFFLL;
    goto LABEL_92;
  }

  while (*(v59 + 80 * v60 + 4) != 148)
  {
    v60 = *(v59 + 80 * v60) & 0x7FFFFFFF;
    if (v60 == 0x7FFFFFFF)
    {
      goto LABEL_91;
    }
  }

LABEL_92:
  result = re::DynamicString::appendf(v6, "AR Spatial Scene Classification %.0f\n", (*(v59 + 80 * v60 + 40) / *(a1 + 8)));
  *(v6 + 10) = 8;
  return result;
}

uint64_t re::FrameECSStats::dumpStatisticsInternal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  info.numer = 0;
  v5 = re::HashTable<unsigned int,re::FrameStatisticsOutput,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](a2, &info);
  v6 = v5;
  if (*(v5 + 8))
  {
    *(v5 + 8) = 1;
    v7 = *(v5 + 16);
  }

  else
  {
    *(v5 + 8) = 0;
    v7 = (v5 + 9);
  }

  *v7 = 0;
  v8 = 0x7FFFFFFFLL;
  if (*a3)
  {
    v9 = *(*(a3 + 8) + 4 * (0xDCFA9555B5F881D1 % *(a3 + 24)));
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(a3 + 16);
      v8 = 0x7FFFFFFFLL;
      while (*(v10 + 80 * v9 + 4) != 13)
      {
        v9 = *(v10 + 80 * v9) & 0x7FFFFFFF;
        if (v9 == 0x7FFFFFFF)
        {
          goto LABEL_11;
        }
      }

      v8 = v9;
    }
  }

LABEL_11:
  v11 = *(*(a3 + 16) + 80 * v8 + 40);
  v12 = *(a1 + 8);
  v13 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v112 = NAN;
      goto LABEL_16;
    }

    LODWORD(v14) = info.numer;
    LODWORD(v15) = info.denom;
    v13 = v14 / v15;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v13;
  }

  v112 = v13 * (v11 / v12);
LABEL_16:
  if (!*a3)
  {
    v16 = *(a3 + 16);
    goto LABEL_22;
  }

  v16 = *(a3 + 16);
  v17 = *(*(a3 + 8) + 4 * (0x255C6046F62FBE29uLL % *(a3 + 24)));
  if (v17 == 0x7FFFFFFF)
  {
LABEL_22:
    v17 = 0x7FFFFFFFLL;
    goto LABEL_23;
  }

  while (*(v16 + 80 * v17 + 4) != 14)
  {
    v17 = *(v16 + 80 * v17) & 0x7FFFFFFF;
    if (v17 == 0x7FFFFFFF)
    {
      goto LABEL_22;
    }
  }

LABEL_23:
  v18 = *(v16 + 80 * v17 + 40);
  v19 = *(a1 + 8);
  v20 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v111 = NAN;
      goto LABEL_28;
    }

    LODWORD(v21) = info.numer;
    LODWORD(v22) = info.denom;
    v20 = v21 / v22;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v20;
  }

  v111 = v20 * (v18 / v19);
LABEL_28:
  if (!*a3)
  {
    v23 = *(a3 + 16);
    goto LABEL_34;
  }

  v23 = *(a3 + 16);
  v24 = *(*(a3 + 8) + 4 * (0x392754934EA1539uLL % *(a3 + 24)));
  if (v24 == 0x7FFFFFFF)
  {
LABEL_34:
    v24 = 0x7FFFFFFFLL;
    goto LABEL_35;
  }

  while (*(v23 + 80 * v24 + 4) != 15)
  {
    v24 = *(v23 + 80 * v24) & 0x7FFFFFFF;
    if (v24 == 0x7FFFFFFF)
    {
      goto LABEL_34;
    }
  }

LABEL_35:
  v25 = *(v23 + 80 * v24 + 40);
  v26 = *(a1 + 8);
  v27 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v110 = NAN;
      goto LABEL_40;
    }

    LODWORD(v28) = info.numer;
    LODWORD(v29) = info.denom;
    v27 = v28 / v29;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v27;
  }

  v110 = v27 * (v25 / v26);
LABEL_40:
  if (!*a3)
  {
    v30 = *(a3 + 16);
    goto LABEL_46;
  }

  v30 = *(a3 + 16);
  v31 = *(*(a3 + 8) + 4 * (0xA09D66D4686AD125 % *(a3 + 24)));
  if (v31 == 0x7FFFFFFF)
  {
LABEL_46:
    v31 = 0x7FFFFFFFLL;
    goto LABEL_47;
  }

  while (*(v30 + 80 * v31 + 4) != 127)
  {
    v31 = *(v30 + 80 * v31) & 0x7FFFFFFF;
    if (v31 == 0x7FFFFFFF)
    {
      goto LABEL_46;
    }
  }

LABEL_47:
  v32 = *(v30 + 80 * v31 + 40);
  v33 = *(a1 + 8);
  v34 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v108 = NAN;
      goto LABEL_52;
    }

    LODWORD(v35) = info.numer;
    LODWORD(v36) = info.denom;
    v34 = v35 / v36;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v34;
  }

  v108 = v34 * (v32 / v33);
LABEL_52:
  if (!*a3)
  {
    v37 = *(a3 + 16);
    goto LABEL_58;
  }

  v37 = *(a3 + 16);
  v38 = *(*(a3 + 8) + 4 * (0x178631649EA56D8AuLL % *(a3 + 24)));
  if (v38 == 0x7FFFFFFF)
  {
LABEL_58:
    v38 = 0x7FFFFFFFLL;
    goto LABEL_59;
  }

  while (*(v37 + 80 * v38 + 4) != 120)
  {
    v38 = *(v37 + 80 * v38) & 0x7FFFFFFF;
    if (v38 == 0x7FFFFFFF)
    {
      goto LABEL_58;
    }
  }

LABEL_59:
  v39 = *(v37 + 80 * v38 + 40);
  v40 = *(a1 + 8);
  v41 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v44 = NAN;
      goto LABEL_64;
    }

    LODWORD(v42) = info.numer;
    LODWORD(v43) = info.denom;
    v41 = v42 / v43;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v41;
  }

  v44 = v41 * (v39 / v40);
LABEL_64:
  if (!*a3)
  {
    v45 = *(a3 + 16);
    goto LABEL_70;
  }

  v45 = *(a3 + 16);
  v46 = *(*(a3 + 8) + 4 * (0x8BC946409C88CB8FLL % *(a3 + 24)));
  if (v46 == 0x7FFFFFFF)
  {
LABEL_70:
    v46 = 0x7FFFFFFFLL;
    goto LABEL_71;
  }

  while (*(v45 + 80 * v46 + 4) != 121)
  {
    v46 = *(v45 + 80 * v46) & 0x7FFFFFFF;
    if (v46 == 0x7FFFFFFF)
    {
      goto LABEL_70;
    }
  }

LABEL_71:
  v47 = *(v45 + 80 * v46 + 40);
  v48 = *(a1 + 8);
  v49 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v52 = NAN;
      goto LABEL_76;
    }

    LODWORD(v50) = info.numer;
    LODWORD(v51) = info.denom;
    v49 = v50 / v51;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v49;
  }

  v52 = v49 * (v47 / v48);
LABEL_76:
  if (!*a3)
  {
    v53 = *(a3 + 16);
    goto LABEL_82;
  }

  v53 = *(a3 + 16);
  v54 = *(*(a3 + 8) + 4 * (0xD94FA4A9067DC0C4 % *(a3 + 24)));
  if (v54 == 0x7FFFFFFF)
  {
LABEL_82:
    v54 = 0x7FFFFFFFLL;
    goto LABEL_83;
  }

  while (*(v53 + 80 * v54 + 4) != 123)
  {
    v54 = *(v53 + 80 * v54) & 0x7FFFFFFF;
    if (v54 == 0x7FFFFFFF)
    {
      goto LABEL_82;
    }
  }

LABEL_83:
  v55 = *(v53 + 80 * v54 + 40);
  v56 = *(a1 + 8);
  v57 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v60 = NAN;
      goto LABEL_88;
    }

    LODWORD(v58) = info.numer;
    LODWORD(v59) = info.denom;
    v57 = v58 / v59;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v57;
  }

  v60 = v57 * (v55 / v56);
LABEL_88:
  if (!*a3)
  {
    v61 = *(a3 + 16);
    goto LABEL_94;
  }

  v61 = *(a3 + 16);
  v62 = *(*(a3 + 8) + 4 * (0xEAD39EBF60CC176uLL % *(a3 + 24)));
  if (v62 == 0x7FFFFFFF)
  {
LABEL_94:
    v62 = 0x7FFFFFFFLL;
    goto LABEL_95;
  }

  while (*(v61 + 80 * v62 + 4) != 124)
  {
    v62 = *(v61 + 80 * v62) & 0x7FFFFFFF;
    if (v62 == 0x7FFFFFFF)
    {
      goto LABEL_94;
    }
  }

LABEL_95:
  v63 = *(v61 + 80 * v62 + 40);
  v64 = *(a1 + 8);
  v65 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v68 = NAN;
      goto LABEL_100;
    }

    LODWORD(v66) = info.numer;
    LODWORD(v67) = info.denom;
    v65 = v66 / v67;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v65;
  }

  v68 = v65 * (v63 / v64);
LABEL_100:
  if (!*a3)
  {
    v69 = *(a3 + 16);
    goto LABEL_106;
  }

  v69 = *(a3 + 16);
  v70 = *(*(a3 + 8) + 4 * (0x8AEB093D93E71BBFLL % *(a3 + 24)));
  if (v70 == 0x7FFFFFFF)
  {
LABEL_106:
    v70 = 0x7FFFFFFFLL;
    goto LABEL_107;
  }

  while (*(v69 + 80 * v70 + 4) != 122)
  {
    v70 = *(v69 + 80 * v70) & 0x7FFFFFFF;
    if (v70 == 0x7FFFFFFF)
    {
      goto LABEL_106;
    }
  }

LABEL_107:
  v71 = *(v69 + 80 * v70 + 40);
  v72 = *(a1 + 8);
  v73 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v76 = NAN;
      goto LABEL_112;
    }

    LODWORD(v74) = info.numer;
    LODWORD(v75) = info.denom;
    v73 = v74 / v75;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v73;
  }

  v76 = v73 * (v71 / v72);
LABEL_112:
  if (!*a3)
  {
    v77 = *(a3 + 16);
    goto LABEL_118;
  }

  v77 = *(a3 + 16);
  v78 = *(*(a3 + 8) + 4 * (0x2D2898CE1F8CEF8EuLL % *(a3 + 24)));
  if (v78 == 0x7FFFFFFF)
  {
LABEL_118:
    v78 = 0x7FFFFFFFLL;
    goto LABEL_119;
  }

  while (*(v77 + 80 * v78 + 4) != 125)
  {
    v78 = *(v77 + 80 * v78) & 0x7FFFFFFF;
    if (v78 == 0x7FFFFFFF)
    {
      goto LABEL_118;
    }
  }

LABEL_119:
  v79 = *(v77 + 80 * v78 + 40);
  v80 = *(a1 + 8);
  v81 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v84 = NAN;
      goto LABEL_124;
    }

    LODWORD(v82) = info.numer;
    LODWORD(v83) = info.denom;
    v81 = v82 / v83;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v81;
  }

  v84 = v81 * (v79 / v80);
LABEL_124:
  if (!*a3)
  {
    v85 = *(a3 + 16);
    goto LABEL_130;
  }

  v85 = *(a3 + 16);
  v86 = *(*(a3 + 8) + 4 * (0x584592B4271786AAuLL % *(a3 + 24)));
  if (v86 == 0x7FFFFFFF)
  {
LABEL_130:
    v86 = 0x7FFFFFFFLL;
    goto LABEL_131;
  }

  while (*(v85 + 80 * v86 + 4) != 126)
  {
    v86 = *(v85 + 80 * v86) & 0x7FFFFFFF;
    if (v86 == 0x7FFFFFFF)
    {
      goto LABEL_130;
    }
  }

LABEL_131:
  v87 = *(v85 + 80 * v86 + 40);
  v88 = *(a1 + 8);
  v89 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v92 = NAN;
      goto LABEL_136;
    }

    LODWORD(v90) = info.numer;
    LODWORD(v91) = info.denom;
    v89 = v90 / v91;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v89;
  }

  v92 = v89 * (v87 / v88);
LABEL_136:
  if (!*a3)
  {
    v93 = *(a3 + 16);
    goto LABEL_142;
  }

  v93 = *(a3 + 16);
  v94 = *(*(a3 + 8) + 4 * (0x17B1332CD96C043DuLL % *(a3 + 24)));
  if (v94 == 0x7FFFFFFF)
  {
LABEL_142:
    v94 = 0x7FFFFFFFLL;
    goto LABEL_143;
  }

  while (*(v93 + 80 * v94 + 4) != 118)
  {
    v94 = *(v93 + 80 * v94) & 0x7FFFFFFF;
    if (v94 == 0x7FFFFFFF)
    {
      goto LABEL_142;
    }
  }

LABEL_143:
  v95 = v92 / 1000000.0;
  v96 = v84 / 1000000.0;
  v97 = v76 / 1000000.0;
  v98 = v60 / 1000000.0;
  v99 = v68 / 1000000.0 + v98;
  v100 = v52 / 1000000.0;
  v101 = v44 / 1000000.0;
  v102 = v108 / 1000000.0;
  v107 = v95;
  v109 = v102;
  v103 = v110 / 1000000.0;
  v104 = v111 / 1000000.0;
  v105 = v112 / 1000000.0;
  v113 = ((((((((v105 + v104) + v103) - v102) - v101) - v100) - v99) - v97) - v96) - v95;
  re::DynamicString::appendf(v6, "ECS Stats - Total Entities : %.0f\n", (*(v93 + 80 * v94 + 40) / *(a1 + 8)));
  re::DynamicString::appendf(v6, "ECS Phases CPU Frame Times (ms)\n");
  re::DynamicString::appendf(v6, "Prepare: %.2f\n", v105);
  re::DynamicString::appendf(v6, "Simulate: %.2f   Commit: %.2f\n", v104, v103);
  re::DynamicString::appendf(v6, "ECS Frame Times per Module (ms)\n");
  re::DynamicString::appendf(v6, "Rendering : %.2f    Physics : %.2f\n", v97, v100);
  re::DynamicString::appendf(v6, "Network : %.2f    Animation : %.2f\n", v99, v96);
  re::DynamicString::appendf(v6, "Audio : %.2f    Custom Systems : %.2f\n", v101, v107);
  result = re::DynamicString::appendf(v6, "User Callback : %.2f    Others : %.2f\n", v109, v113);
  *(v6 + 8) = 10;
  *(v6 + 10) = 16;
  return result;
}

uint64_t re::FrameMeshStats::dumpStatisticsInternal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = 0;
  v5 = re::HashTable<unsigned int,re::FrameStatisticsOutput,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](a2, &v21);
  v6 = v5;
  if (v5[1])
  {
    v5[1] = 1;
    v7 = v5[2];
  }

  else
  {
    *(v5 + 8) = 0;
    v7 = v5 + 9;
  }

  *v7 = 0;
  re::DynamicString::appendf(v5, "Scene Mesh Stats\n");
  v8 = 0x7FFFFFFFLL;
  if (*a3)
  {
    v9 = *(*(a3 + 8) + 4 * (0xC67949C3A864283CLL % *(a3 + 24)));
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(a3 + 16);
      v8 = 0x7FFFFFFFLL;
      while (*(v10 + 80 * v9 + 4) != 34)
      {
        v9 = *(v10 + 80 * v9) & 0x7FFFFFFF;
        if (v9 == 0x7FFFFFFF)
        {
          goto LABEL_11;
        }
      }

      v8 = v9;
    }
  }

LABEL_11:
  v11 = *(a3 + 16);
  v12 = *(a1 + 8);
  v13 = (*(v11 + 80 * v8 + 40) / v12);
  v14 = 0x7FFFFFFFLL;
  if (*a3)
  {
    v15 = *(*(a3 + 8) + 4 * (0x43E7CEFC06C022BEuLL % *(a3 + 24)));
    if (v15 != 0x7FFFFFFF)
    {
      v14 = 0x7FFFFFFFLL;
      while (*(v11 + 80 * v15 + 4) != 35)
      {
        v15 = *(v11 + 80 * v15) & 0x7FFFFFFF;
        if (v15 == 0x7FFFFFFF)
        {
          goto LABEL_18;
        }
      }

      v14 = v15;
    }
  }

LABEL_18:
  re::DynamicString::appendf(v6, "Meshes : %.0f    Draw Calls : %.0f\n", v13, (*(v11 + 80 * v14 + 40) / v12));
  if (!*a3)
  {
    v16 = *(a3 + 16);
    goto LABEL_24;
  }

  v16 = *(a3 + 16);
  v17 = *(*(a3 + 8) + 4 * (0xFF96B931ED5510E2 % *(a3 + 24)));
  if (v17 == 0x7FFFFFFF)
  {
LABEL_24:
    v17 = 0x7FFFFFFFLL;
    goto LABEL_25;
  }

  while (*(v16 + 80 * v17 + 4) != 36)
  {
    v17 = *(v16 + 80 * v17) & 0x7FFFFFFF;
    if (v17 == 0x7FFFFFFF)
    {
      goto LABEL_24;
    }
  }

LABEL_25:
  re::DynamicString::appendf(v6, "Triangles Submitted: %.0f\n", (*(v16 + 80 * v17 + 40) / *(a1 + 8)));
  if (!*a3)
  {
    v18 = *(a3 + 16);
    goto LABEL_31;
  }

  v18 = *(a3 + 16);
  v19 = *(*(a3 + 8) + 4 * (0x499EF488EF760E18uLL % *(a3 + 24)));
  if (v19 == 0x7FFFFFFF)
  {
LABEL_31:
    v19 = 0x7FFFFFFFLL;
    goto LABEL_32;
  }

  while (*(v18 + 80 * v19 + 4) != 37)
  {
    v19 = *(v18 + 80 * v19) & 0x7FFFFFFF;
    if (v19 == 0x7FFFFFFF)
    {
      goto LABEL_31;
    }
  }

LABEL_32:
  result = re::DynamicString::appendf(v6, "Vertices Submitted: %.0f\n", (*(v18 + 80 * v19 + 40) / *(a1 + 8)));
  *(v6 + 10) = 32;
  return result;
}

double re::FrameNetworkStats::dumpStatisticsInternal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  info.numer = 0;
  v5 = re::HashTable<unsigned int,re::FrameStatisticsOutput,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](a2, &info);
  v6 = v5;
  if (v5[1])
  {
    v5[1] = 1;
    v7 = v5[2];
  }

  else
  {
    *(v5 + 8) = 0;
    v7 = v5 + 9;
  }

  *v7 = 0;
  re::DynamicString::append(v5, "Frame Network Stats\n", 0x14uLL);
  v8 = 0x7FFFFFFFLL;
  if (*a3)
  {
    v9 = *(*(a3 + 8) + 4 * (0xA630657CB8C7F164 % *(a3 + 24)));
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(a3 + 16);
      v8 = 0x7FFFFFFFLL;
      while (*(v10 + 80 * v9 + 4) != 48)
      {
        v9 = *(v10 + 80 * v9) & 0x7FFFFFFF;
        if (v9 == 0x7FFFFFFF)
        {
          goto LABEL_11;
        }
      }

      v8 = v9;
    }
  }

LABEL_11:
  re::DynamicString::appendf(v6, "Network Components : %.0f\n", (*(*(a3 + 16) + 80 * v8 + 40) / *(a1 + 8)));
  if (!*a3)
  {
    v11 = *(a3 + 16);
    goto LABEL_17;
  }

  v11 = *(a3 + 16);
  v12 = *(*(a3 + 8) + 4 * (0xD9844BCECCA4A8BDLL % *(a3 + 24)));
  if (v12 == 0x7FFFFFFF)
  {
LABEL_17:
    v12 = 0x7FFFFFFFLL;
    goto LABEL_18;
  }

  while (*(v11 + 80 * v12 + 4) != 16)
  {
    v12 = *(v11 + 80 * v12) & 0x7FFFFFFF;
    if (v12 == 0x7FFFFFFF)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  v13 = *(v11 + 80 * v12 + 40);
  v14 = *(a1 + 8);
  v15 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v18 = NAN;
      goto LABEL_23;
    }

    LODWORD(v16) = info.numer;
    LODWORD(v17) = info.denom;
    v15 = v16 / v17;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v15;
  }

  v18 = v15 * (v13 / v14);
LABEL_23:
  if (!*a3)
  {
    v19 = *(a3 + 16);
    goto LABEL_29;
  }

  v19 = *(a3 + 16);
  v20 = *(*(a3 + 8) + 4 * (0x302B8631721C51BEuLL % *(a3 + 24)));
  if (v20 == 0x7FFFFFFF)
  {
LABEL_29:
    v20 = 0x7FFFFFFFLL;
    goto LABEL_30;
  }

  while (*(v19 + 80 * v20 + 4) != 17)
  {
    v20 = *(v19 + 80 * v20) & 0x7FFFFFFF;
    if (v20 == 0x7FFFFFFF)
    {
      goto LABEL_29;
    }
  }

LABEL_30:
  v21 = *(v19 + 80 * v20 + 40);
  v22 = *(a1 + 8);
  v23 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  v24 = v18 / 1000000.0;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v27 = NAN;
      goto LABEL_35;
    }

    LODWORD(v25) = info.numer;
    LODWORD(v26) = info.denom;
    v23 = v25 / v26;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v23;
  }

  v27 = v23 * (v21 / v22);
LABEL_35:
  re::DynamicString::appendf(v6, "PreFrame (ms): %.2f    PostFrame (ms): %.2f\n", v24, v27 / 1000000.0);
  if (!*a3)
  {
    v28 = *(a3 + 16);
    goto LABEL_41;
  }

  v28 = *(a3 + 16);
  v29 = *(*(a3 + 8) + 4 * (0xD94FA4A9067DC0C4 % *(a3 + 24)));
  if (v29 == 0x7FFFFFFF)
  {
LABEL_41:
    v29 = 0x7FFFFFFFLL;
    goto LABEL_42;
  }

  while (*(v28 + 80 * v29 + 4) != 123)
  {
    v29 = *(v28 + 80 * v29) & 0x7FFFFFFF;
    if (v29 == 0x7FFFFFFF)
    {
      goto LABEL_41;
    }
  }

LABEL_42:
  v30 = *(v28 + 80 * v29 + 40);
  v31 = *(a1 + 8);
  v32 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v35 = NAN;
      goto LABEL_47;
    }

    LODWORD(v33) = info.numer;
    LODWORD(v34) = info.denom;
    v32 = v33 / v34;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v32;
  }

  v35 = v32 * (v30 / v31);
LABEL_47:
  if (!*a3)
  {
    v36 = *(a3 + 16);
    goto LABEL_53;
  }

  v36 = *(a3 + 16);
  v37 = *(*(a3 + 8) + 4 * (0xEAD39EBF60CC176uLL % *(a3 + 24)));
  if (v37 == 0x7FFFFFFF)
  {
LABEL_53:
    v37 = 0x7FFFFFFFLL;
    goto LABEL_54;
  }

  while (*(v36 + 80 * v37 + 4) != 124)
  {
    v37 = *(v36 + 80 * v37) & 0x7FFFFFFF;
    if (v37 == 0x7FFFFFFF)
    {
      goto LABEL_53;
    }
  }

LABEL_54:
  v38 = *(v36 + 80 * v37 + 40);
  v39 = *(a1 + 8);
  v40 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  v41 = v35 / 1000000.0;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v44 = NAN;
      goto LABEL_59;
    }

    LODWORD(v42) = info.numer;
    LODWORD(v43) = info.denom;
    v40 = v42 / v43;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v40;
  }

  v44 = v40 * (v38 / v39);
LABEL_59:
  re::DynamicString::appendf(v6, "SendSystem (ms): %.2f    ReceiveSystem (ms): %.2f\n", v41, v44 / 1000000.0);
  re::DynamicString::append(v6, "Network Session Stats\n", 0x16uLL);
  re::DynamicString::append(v6, "Sent/Received\n", 0xEuLL);
  if (!*a3)
  {
    v45 = *(a3 + 16);
    goto LABEL_65;
  }

  v45 = *(a3 + 16);
  v46 = *(*(a3 + 8) + 4 * (0xB74FD707F0B39325 % *(a3 + 24)));
  if (v46 == 0x7FFFFFFF)
  {
LABEL_65:
    v46 = 0x7FFFFFFFLL;
    goto LABEL_66;
  }

  while (*(v45 + 80 * v46 + 4) != 40)
  {
    v46 = *(v45 + 80 * v46) & 0x7FFFFFFF;
    if (v46 == 0x7FFFFFFF)
    {
      goto LABEL_65;
    }
  }

LABEL_66:
  v47 = *(a1 + 8);
  v48 = (*(v45 + 80 * v46 + 40) / v47) * 0.0009765625;
  v49 = 0x7FFFFFFFLL;
  if (*a3)
  {
    v50 = *(*(a3 + 8) + 4 * (0x66D1ECF1BBB89D25uLL % *(a3 + 24)));
    if (v50 != 0x7FFFFFFF)
    {
      v49 = 0x7FFFFFFFLL;
      while (*(v45 + 80 * v50 + 4) != 41)
      {
        v50 = *(v45 + 80 * v50) & 0x7FFFFFFF;
        if (v50 == 0x7FFFFFFF)
        {
          goto LABEL_73;
        }
      }

      v49 = v50;
    }
  }

LABEL_73:
  re::DynamicString::appendf(v6, "Data [KB]: %.2f/%.2f\n", v48, (*(v45 + 80 * v49 + 40) / v47) * 0.0009765625);
  if (!*a3)
  {
    v52 = *(a3 + 16);
    v56 = *(a1 + 8);
    v57 = *(v52 + 0x27FFFFFFD8) / v56;
LABEL_86:
    v59 = 0x7FFFFFFFLL;
    goto LABEL_87;
  }

  v51 = *(a3 + 24);
  v53 = *(a3 + 8);
  v52 = *(a3 + 16);
  v54 = *(v53 + 4 * (0xA759EA27D4727622 % v51));
  if (v54 == 0x7FFFFFFF)
  {
    v55 = (v52 + 0x27FFFFFFD8);
  }

  else
  {
    v58 = 0x7FFFFFFFLL;
    while (*(v52 + 80 * v54 + 4) != 42)
    {
      v54 = *(v52 + 80 * v54) & 0x7FFFFFFF;
      if (v54 == 0x7FFFFFFF)
      {
        goto LABEL_82;
      }
    }

    v58 = v54;
LABEL_82:
    v55 = (v52 + 80 * v58 + 40);
  }

  v56 = *(a1 + 8);
  v57 = *v55 / v56;
  v59 = *(v53 + 4 * (0x4F0A61D9C798D8CALL % v51));
  if (v59 == 0x7FFFFFFF)
  {
    goto LABEL_86;
  }

  while (*(v52 + 80 * v59 + 4) != 43)
  {
    v59 = *(v52 + 80 * v59) & 0x7FFFFFFF;
    if (v59 == 0x7FFFFFFF)
    {
      goto LABEL_86;
    }
  }

LABEL_87:
  re::DynamicString::appendf(v6, "Packets: %.0f/%.0f\n", v57, (*(v52 + 80 * v59 + 40) / v56));
  if (!*a3)
  {
    v61 = *(a3 + 16);
    v65 = *(a1 + 8);
    v66 = *(v61 + 0x27FFFFFFD8) / v65;
LABEL_100:
    v68 = 0x7FFFFFFFLL;
    goto LABEL_101;
  }

  v60 = *(a3 + 24);
  v62 = *(a3 + 8);
  v61 = *(a3 + 16);
  v63 = *(v62 + 4 * (0xFB2BF4996809BAF7 % v60));
  if (v63 == 0x7FFFFFFF)
  {
    v64 = (v61 + 0x27FFFFFFD8);
  }

  else
  {
    v67 = 0x7FFFFFFFLL;
    while (*(v61 + 80 * v63 + 4) != 44)
    {
      v63 = *(v61 + 80 * v63) & 0x7FFFFFFF;
      if (v63 == 0x7FFFFFFF)
      {
        goto LABEL_96;
      }
    }

    v67 = v63;
LABEL_96:
    v64 = (v61 + 80 * v67 + 40);
  }

  v65 = *(a1 + 8);
  v66 = *v64 / v65;
  v68 = *(v62 + 4 * (0xBDBFB556329AEE83 % v60));
  if (v68 == 0x7FFFFFFF)
  {
    goto LABEL_100;
  }

  while (*(v61 + 80 * v68 + 4) != 45)
  {
    v68 = *(v61 + 80 * v68) & 0x7FFFFFFF;
    if (v68 == 0x7FFFFFFF)
    {
      goto LABEL_100;
    }
  }

LABEL_101:
  re::DynamicString::appendf(v6, "Components: %.0f/%.0f\n", v66, (*(v61 + 80 * v68 + 40) / v65));
  if (!*a3)
  {
    v70 = *(a3 + 16);
    v74 = *(a1 + 8);
    v75 = *(v70 + 0x27FFFFFFD8) / v74;
LABEL_114:
    v77 = 0x7FFFFFFFLL;
    goto LABEL_115;
  }

  v69 = *(a3 + 24);
  v71 = *(a3 + 8);
  v70 = *(a3 + 16);
  v72 = *(v71 + 4 * (0x6F14AEC17CB2794BLL % v69));
  if (v72 == 0x7FFFFFFF)
  {
    v73 = (v70 + 0x27FFFFFFD8);
  }

  else
  {
    v76 = 0x7FFFFFFFLL;
    while (*(v70 + 80 * v72 + 4) != 46)
    {
      v72 = *(v70 + 80 * v72) & 0x7FFFFFFF;
      if (v72 == 0x7FFFFFFF)
      {
        goto LABEL_110;
      }
    }

    v76 = v72;
LABEL_110:
    v73 = (v70 + 80 * v76 + 40);
  }

  v74 = *(a1 + 8);
  v75 = *v73 / v74;
  v77 = *(v71 + 4 * (0x5A9FF51BA33ADC1CLL % v69));
  if (v77 == 0x7FFFFFFF)
  {
    goto LABEL_114;
  }

  while (*(v70 + 80 * v77 + 4) != 47)
  {
    v77 = *(v70 + 80 * v77) & 0x7FFFFFFF;
    if (v77 == 0x7FFFFFFF)
    {
      goto LABEL_114;
    }
  }

LABEL_115:
  re::DynamicString::appendf(v6, "Entities: %.0f/%.0f\n", v75, (*(v70 + 80 * v77 + 40) / v74));
  if (!*a3)
  {
    v78 = *(a3 + 16);
    goto LABEL_121;
  }

  v78 = *(a3 + 16);
  v79 = *(*(a3 + 8) + 4 * (0x5B64875D6615936EuLL % *(a3 + 24)));
  if (v79 == 0x7FFFFFFF)
  {
LABEL_121:
    v79 = 0x7FFFFFFFLL;
    goto LABEL_122;
  }

  while (*(v78 + 80 * v79 + 4) != 38)
  {
    v79 = *(v78 + 80 * v79) & 0x7FFFFFFF;
    if (v79 == 0x7FFFFFFF)
    {
      goto LABEL_121;
    }
  }

LABEL_122:
  v80 = *(v78 + 80 * v79 + 40);
  v81 = *(a1 + 8);
  v82 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v85 = NAN;
      goto LABEL_127;
    }

    LODWORD(v83) = info.numer;
    LODWORD(v84) = info.denom;
    v82 = v83 / v84;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v82;
  }

  v85 = v82 * (v80 / v81);
LABEL_127:
  v86 = v85 / 1000000.0;
  if (!*a3)
  {
    v87 = *(a3 + 16);
    goto LABEL_133;
  }

  v87 = *(a3 + 16);
  v88 = *(*(a3 + 8) + 4 * (0x271C93C147C4CD83uLL % *(a3 + 24)));
  if (v88 == 0x7FFFFFFF)
  {
LABEL_133:
    v88 = 0x7FFFFFFFLL;
    goto LABEL_134;
  }

  while (*(v87 + 80 * v88 + 4) != 39)
  {
    v88 = *(v87 + 80 * v88) & 0x7FFFFFFF;
    if (v88 == 0x7FFFFFFF)
    {
      goto LABEL_133;
    }
  }

LABEL_134:
  re::DynamicString::appendf(v6, "RTT [ms]: %.2f    PacketLoss: %.2f\n", v86, (*(v87 + 80 * v88 + 40) / *(a1 + 8)));
  re::DynamicString::append(v6, "SyncPacket Stats\n", 0x11uLL);
  if (!*a3)
  {
    v89 = *(a3 + 16);
    goto LABEL_140;
  }

  v89 = *(a3 + 16);
  v90 = *(*(a3 + 8) + 4 * (0x622570C6C262C8DFuLL % *(a3 + 24)));
  if (v90 == 0x7FFFFFFF)
  {
LABEL_140:
    v90 = 0x7FFFFFFFLL;
    goto LABEL_141;
  }

  while (*(v89 + 80 * v90 + 4) != 49)
  {
    v90 = *(v89 + 80 * v90) & 0x7FFFFFFF;
    if (v90 == 0x7FFFFFFF)
    {
      goto LABEL_140;
    }
  }

LABEL_141:
  v91 = *(v89 + 80 * v90 + 40);
  v92 = *(a1 + 8);
  v93 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v96 = NAN;
      goto LABEL_146;
    }

    LODWORD(v94) = info.numer;
    LODWORD(v95) = info.denom;
    v93 = v94 / v95;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v93;
  }

  v96 = v93 * (v91 / v92);
LABEL_146:
  v97 = v96 / 1000000.0;
  if (!*a3)
  {
    v98 = *(a3 + 16);
    goto LABEL_152;
  }

  v98 = *(a3 + 16);
  v99 = *(*(a3 + 8) + 4 * (0xCB9EBFBDFE40F3F9 % *(a3 + 24)));
  if (v99 == 0x7FFFFFFF)
  {
LABEL_152:
    v99 = 0x7FFFFFFFLL;
    goto LABEL_153;
  }

  while (*(v98 + 80 * v99 + 4) != 51)
  {
    v99 = *(v98 + 80 * v99) & 0x7FFFFFFF;
    if (v99 == 0x7FFFFFFF)
    {
      goto LABEL_152;
    }
  }

LABEL_153:
  re::DynamicString::appendf(v6, "RTT [ms]: %.2f    Packet Loss [1s]: %.2f\n", v97, (*(v98 + 80 * v99 + 40) / *(a1 + 8)));
  if (!*a3)
  {
    v100 = *(a3 + 16);
    goto LABEL_159;
  }

  v100 = *(a3 + 16);
  v101 = *(*(a3 + 8) + 4 * (0x4930C821C1606730uLL % *(a3 + 24)));
  if (v101 == 0x7FFFFFFF)
  {
LABEL_159:
    v101 = 0x7FFFFFFFLL;
    goto LABEL_160;
  }

  while (*(v100 + 80 * v101 + 4) != 50)
  {
    v101 = *(v100 + 80 * v101) & 0x7FFFFFFF;
    if (v101 == 0x7FFFFFFF)
    {
      goto LABEL_159;
    }
  }

LABEL_160:
  re::DynamicString::appendf(v6, "Packet Loss [avg]: %.2f\n", (*(v100 + 80 * v101 + 40) / *(a1 + 8)));
  v102 = mach_absolute_time();
  v103 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v106 = NAN;
      goto LABEL_165;
    }

    LODWORD(v104) = info.numer;
    LODWORD(v105) = info.denom;
    v103 = v104 / v105;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v103;
  }

  v106 = v103 * v102;
LABEL_165:
  v107 = v106 / 1000000000.0;
  if (!*a3)
  {
    v108 = *(a3 + 16);
    goto LABEL_171;
  }

  v108 = *(a3 + 16);
  v109 = *(*(a3 + 8) + 4 * (0x6616B7C1A5E48C27uLL % *(a3 + 24)));
  if (v109 == 0x7FFFFFFF)
  {
LABEL_171:
    v109 = 0x7FFFFFFFLL;
    goto LABEL_172;
  }

  while (*(v108 + 80 * v109 + 4) != 52)
  {
    v109 = *(v108 + 80 * v109) & 0x7FFFFFFF;
    if (v109 == 0x7FFFFFFF)
    {
      goto LABEL_171;
    }
  }

LABEL_172:
  re::DynamicString::appendf(v6, "Hand Tap Latency [ms]: %.2f", (v107 - *(v108 + 80 * v109 + 28)) * 1000.0);
  v110 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v113 = NAN;
      goto LABEL_177;
    }

    LODWORD(v111) = info.numer;
    LODWORD(v112) = info.denom;
    v110 = v111 / v112;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v110;
  }

  v113 = v110 * v102;
LABEL_177:
  if (!*a3)
  {
    v114 = *(a3 + 16);
    goto LABEL_183;
  }

  v114 = *(a3 + 16);
  v115 = *(*(a3 + 8) + 4 * (0x632FD669A7AB1BD4uLL % *(a3 + 24)));
  if (v115 == 0x7FFFFFFF)
  {
LABEL_183:
    v115 = 0x7FFFFFFFLL;
    goto LABEL_184;
  }

  while (*(v114 + 80 * v115 + 4) != 53)
  {
    v115 = *(v114 + 80 * v115) & 0x7FFFFFFF;
    if (v115 == 0x7FFFFFFF)
    {
      goto LABEL_183;
    }
  }

LABEL_184:
  re::DynamicString::appendf(v6, "Direct Gaze Latency [ms]: %.2f", (v113 / 1000000000.0 - *(v114 + 80 * v115 + 28)) * 1000.0);
  *&result = 0x2D00000010;
  *(v6 + 4) = 0x2D00000010;
  *(v6 + 10) = 64;
  return result;
}

double re::FramePhysicsStats::dumpStatisticsInternal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  info.numer = 0;
  v5 = re::HashTable<unsigned int,re::FrameStatisticsOutput,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](a2, &info);
  v6 = v5;
  if (v5[1])
  {
    v5[1] = 1;
    v7 = v5[2];
  }

  else
  {
    *(v5 + 8) = 0;
    v7 = v5 + 9;
  }

  *v7 = 0;
  re::DynamicString::appendf(v5, "Physics Stats\n");
  v8 = 0x7FFFFFFFLL;
  if (*a3)
  {
    v9 = *(*(a3 + 8) + 4 * (0xE34A1ED09841F857 % *(a3 + 24)));
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(a3 + 16);
      v8 = 0x7FFFFFFFLL;
      while (*(v10 + 80 * v9 + 4) != 19)
      {
        v9 = *(v10 + 80 * v9) & 0x7FFFFFFF;
        if (v9 == 0x7FFFFFFF)
        {
          goto LABEL_11;
        }
      }

      v8 = v9;
    }
  }

LABEL_11:
  v11 = *(*(a3 + 16) + 80 * v8 + 40);
  v12 = *(a1 + 8);
  v13 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v16 = NAN;
      goto LABEL_16;
    }

    LODWORD(v14) = info.numer;
    LODWORD(v15) = info.denom;
    v13 = v14 / v15;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v13;
  }

  v16 = v13 * (v11 / v12);
LABEL_16:
  re::DynamicString::appendf(v6, "PhysX Update Time (ms) : %.2f\n", v16 / 1000000.0);
  if (!*a3)
  {
    v17 = *(a3 + 16);
    goto LABEL_22;
  }

  v17 = *(a3 + 16);
  v18 = *(*(a3 + 8) + 4 * (0x8BC946409C88CB8FLL % *(a3 + 24)));
  if (v18 == 0x7FFFFFFF)
  {
LABEL_22:
    v18 = 0x7FFFFFFFLL;
    goto LABEL_23;
  }

  while (*(v17 + 80 * v18 + 4) != 121)
  {
    v18 = *(v17 + 80 * v18) & 0x7FFFFFFF;
    if (v18 == 0x7FFFFFFF)
    {
      goto LABEL_22;
    }
  }

LABEL_23:
  v19 = *(v17 + 80 * v18 + 40);
  v20 = *(a1 + 8);
  v21 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v24 = NAN;
      goto LABEL_28;
    }

    LODWORD(v22) = info.numer;
    LODWORD(v23) = info.denom;
    v21 = v22 / v23;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v21;
  }

  v24 = v21 * (v19 / v20);
LABEL_28:
  re::DynamicString::appendf(v6, "Physics ECS Work (ms) : %.2f\n", v24 / 1000000.0);
  if (!*a3)
  {
    v26 = *(a3 + 16);
    v30 = *(a1 + 8);
    v31 = *(v26 + 0x27FFFFFFD8) / v30;
LABEL_41:
    v33 = 0x7FFFFFFFLL;
    goto LABEL_42;
  }

  v25 = *(a3 + 24);
  v27 = *(a3 + 8);
  v26 = *(a3 + 16);
  v28 = *(v27 + 4 * (0xA46B02245B9F3AF4 % v25));
  if (v28 == 0x7FFFFFFF)
  {
    v29 = (v26 + 0x27FFFFFFD8);
  }

  else
  {
    v32 = 0x7FFFFFFFLL;
    while (*(v26 + 80 * v28 + 4) != 67)
    {
      v28 = *(v26 + 80 * v28) & 0x7FFFFFFF;
      if (v28 == 0x7FFFFFFF)
      {
        goto LABEL_37;
      }
    }

    v32 = v28;
LABEL_37:
    v29 = (v26 + 80 * v32 + 40);
  }

  v30 = *(a1 + 8);
  v31 = *v29 / v30;
  v33 = *(v27 + 4 * (0xCF4A7B3C48D45C4FLL % v25));
  if (v33 == 0x7FFFFFFF)
  {
    goto LABEL_41;
  }

  while (*(v26 + 80 * v33 + 4) != 66)
  {
    v33 = *(v26 + 80 * v33) & 0x7FFFFFFF;
    if (v33 == 0x7FFFFFFF)
    {
      goto LABEL_41;
    }
  }

LABEL_42:
  re::DynamicString::appendf(v6, "Active Rigid Bodies : %.0f    Rigid Bodies : %.0f\n", v31, (*(v26 + 80 * v33 + 40) / v30));
  if (!*a3)
  {
    v35 = *(a3 + 16);
    v39 = *(a1 + 8);
    v40 = *(v35 + 0x27FFFFFFD8) / v39;
LABEL_55:
    v42 = 0x7FFFFFFFLL;
    goto LABEL_56;
  }

  v34 = *(a3 + 24);
  v36 = *(a3 + 8);
  v35 = *(a3 + 16);
  v37 = *(v36 + 4 * (0x21C2DD3F1FDB3325 % v34));
  if (v37 == 0x7FFFFFFF)
  {
    v38 = (v35 + 0x27FFFFFFD8);
  }

  else
  {
    v41 = 0x7FFFFFFFLL;
    while (*(v35 + 80 * v37 + 4) != 68)
    {
      v37 = *(v35 + 80 * v37) & 0x7FFFFFFF;
      if (v37 == 0x7FFFFFFF)
      {
        goto LABEL_51;
      }
    }

    v41 = v37;
LABEL_51:
    v38 = (v35 + 80 * v41 + 40);
  }

  v39 = *(a1 + 8);
  v40 = *v38 / v39;
  v42 = *(v36 + 4 * (0x41956A36DBC51080 % v34));
  if (v42 == 0x7FFFFFFF)
  {
    goto LABEL_55;
  }

  while (*(v35 + 80 * v42 + 4) != 69)
  {
    v42 = *(v35 + 80 * v42) & 0x7FFFFFFF;
    if (v42 == 0x7FFFFFFF)
    {
      goto LABEL_55;
    }
  }

LABEL_56:
  re::DynamicString::appendf(v6, "Collision Objects : %.0f    Contacts : %.0f\n", v40, (*(v35 + 80 * v42 + 40) / v39));
  if (!*a3)
  {
    v44 = *(a3 + 16);
    v48 = *(a1 + 8);
    v49 = *(v44 + 0x27FFFFFFD8) / v48;
LABEL_69:
    v51 = 0x7FFFFFFFLL;
    goto LABEL_70;
  }

  v43 = *(a3 + 24);
  v45 = *(a3 + 8);
  v44 = *(a3 + 16);
  v46 = *(v45 + 4 * (0x4BEE618685B05729 % v43));
  if (v46 == 0x7FFFFFFF)
  {
    v47 = (v44 + 0x27FFFFFFD8);
  }

  else
  {
    v50 = 0x7FFFFFFFLL;
    while (*(v44 + 80 * v46 + 4) != 71)
    {
      v46 = *(v44 + 80 * v46) & 0x7FFFFFFF;
      if (v46 == 0x7FFFFFFF)
      {
        goto LABEL_65;
      }
    }

    v50 = v46;
LABEL_65:
    v47 = (v44 + 80 * v50 + 40);
  }

  v48 = *(a1 + 8);
  v49 = *v47 / v48;
  v51 = *(v45 + 4 * (0x87CF9DF80D80457CLL % v43));
  if (v51 == 0x7FFFFFFF)
  {
    goto LABEL_69;
  }

  while (*(v44 + 80 * v51 + 4) != 70)
  {
    v51 = *(v44 + 80 * v51) & 0x7FFFFFFF;
    if (v51 == 0x7FFFFFFF)
    {
      goto LABEL_69;
    }
  }

LABEL_70:
  re::DynamicString::appendf(v6, "Force Effects : %.0f    Active Constraints : %.0f\n", v49, (*(v44 + 80 * v51 + 40) / v48));
  re::DynamicString::appendf(v6, "Physics Shapes\n");
  if (!*a3)
  {
    v53 = *(a3 + 16);
    v57 = *(v53 + 0x27FFFFFFD8);
    v58 = *(a1 + 8);
    v59 = v57 / v58;
LABEL_91:
    v65 = 0x7FFFFFFFLL;
    goto LABEL_92;
  }

  v52 = *(a3 + 24);
  v54 = *(a3 + 8);
  v53 = *(a3 + 16);
  v55 = *(v54 + 4 * (0x654FAFC0EE6F9A84 % v52));
  if (v55 == 0x7FFFFFFF)
  {
    v56 = (v53 + 0x27FFFFFFD8);
  }

  else
  {
    v60 = 0x7FFFFFFFLL;
    while (*(v53 + 80 * v55 + 4) != 72)
    {
      v55 = *(v53 + 80 * v55) & 0x7FFFFFFF;
      if (v55 == 0x7FFFFFFF)
      {
        goto LABEL_79;
      }
    }

    v60 = v55;
LABEL_79:
    v56 = (v53 + 80 * v60 + 40);
  }

  v61 = *v56;
  v58 = *(a1 + 8);
  v62 = *(v54 + 4 * (0xA7941FA8506D86F0 % v52));
  if (v62 == 0x7FFFFFFF)
  {
    v63 = (v53 + 0x27FFFFFFD8);
  }

  else
  {
    v64 = 0x7FFFFFFFLL;
    while (*(v53 + 80 * v62 + 4) != 73)
    {
      v62 = *(v53 + 80 * v62) & 0x7FFFFFFF;
      if (v62 == 0x7FFFFFFF)
      {
        goto LABEL_87;
      }
    }

    v64 = v62;
LABEL_87:
    v63 = (v53 + 80 * v64 + 40);
  }

  v59 = v61 / v58;
  v57 = *v63;
  v65 = *(v54 + 4 * (0xC1EBF56D881F3523 % v52));
  if (v65 == 0x7FFFFFFF)
  {
    goto LABEL_91;
  }

  while (*(v53 + 80 * v65 + 4) != 74)
  {
    v65 = *(v53 + 80 * v65) & 0x7FFFFFFF;
    if (v65 == 0x7FFFFFFF)
    {
      goto LABEL_91;
    }
  }

LABEL_92:
  re::DynamicString::appendf(v6, "Spheres : %.0f, Planes : %.0f, Capsules : %.0f\n", v59, (v57 / v58), (*(v53 + 80 * v65 + 40) / v58));
  if (*a3)
  {
    v66 = *(a3 + 24);
    v68 = *(a3 + 8);
    v67 = *(a3 + 16);
    v69 = *(v68 + 4 * (0xCFCA9D2880B2128DLL % v66));
    if (v69 == 0x7FFFFFFF)
    {
      v70 = (v67 + 0x27FFFFFFD8);
    }

    else
    {
      v75 = 0x7FFFFFFFLL;
      while (*(v67 + 80 * v69 + 4) != 75)
      {
        v69 = *(v67 + 80 * v69) & 0x7FFFFFFF;
        if (v69 == 0x7FFFFFFF)
        {
          goto LABEL_101;
        }
      }

      v75 = v69;
LABEL_101:
      v70 = (v67 + 80 * v75 + 40);
    }

    v71 = *(a1 + 8);
    v76 = *(v68 + 4 * (0xB6C90EBACC2B26DDLL % v66));
    if (v76 == 0x7FFFFFFF)
    {
      v77 = (v67 + 0x27FFFFFFD8);
    }

    else
    {
      v78 = 0x7FFFFFFFLL;
      while (*(v67 + 80 * v76 + 4) != 76)
      {
        v76 = *(v67 + 80 * v76) & 0x7FFFFFFF;
        if (v76 == 0x7FFFFFFF)
        {
          goto LABEL_109;
        }
      }

      v78 = v76;
LABEL_109:
      v77 = (v67 + 80 * v78 + 40);
    }

    v72 = *v70;
    v74 = *v77;
    v73 = *(v68 + 4 * (0x2CFA56B4A2AF9298 % v66));
    if (v73 == 0x7FFFFFFF)
    {
LABEL_113:
      v73 = 0x7FFFFFFFLL;
    }

    else
    {
      while (*(v67 + 80 * v73 + 4) != 77)
      {
        v73 = *(v67 + 80 * v73) & 0x7FFFFFFF;
        if (v73 == 0x7FFFFFFF)
        {
          goto LABEL_113;
        }
      }
    }
  }

  else
  {
    v71 = *(a1 + 8);
    v67 = *(a3 + 16);
    v72 = *(v67 + 0x27FFFFFFD8);
    v73 = 0x7FFFFFFFLL;
    v74 = v72;
  }

  re::DynamicString::appendf(v6, "Boxes : %.0f, Triangles : %.0f, Convexes : %.0f\n", (v72 / v71), (v74 / v71), (*(v67 + 80 * v73 + 40) / v71));
  *&result = 0x320000000ALL;
  *(v6 + 4) = 0x320000000ALL;
  *(v6 + 10) = 128;
  return result;
}

double re::FrameRenderingStats::dumpStatisticsInternal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  info[0].numer = 0;
  v6 = re::HashTable<unsigned int,re::FrameStatisticsOutput,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](a2, info);
  v7 = v6;
  if (*(v6 + 8))
  {
    *(v6 + 8) = 1;
    v8 = *(v6 + 16);
  }

  else
  {
    *(v6 + 8) = 0;
    v8 = (v6 + 9);
  }

  *v8 = 0;
  v9 = 0x7FFFFFFFLL;
  if (*a3)
  {
    v10 = *(*(a3 + 8) + 4 * (0x5692161D100B05E5uLL % *(a3 + 24)));
    if (v10 != 0x7FFFFFFF)
    {
      v11 = *(a3 + 16);
      v9 = 0x7FFFFFFFLL;
      while (*(v11 + 80 * v10 + 4) != 1)
      {
        v10 = *(v11 + 80 * v10) & 0x7FFFFFFF;
        if (v10 == 0x7FFFFFFF)
        {
          goto LABEL_11;
        }
      }

      v9 = v10;
    }
  }

LABEL_11:
  v12 = *(*(a3 + 16) + 80 * v9 + 40);
  v13 = *(a1 + 8);
  v14 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(info))
    {
      v263 = NAN;
      goto LABEL_16;
    }

    LODWORD(v15) = info[0].numer;
    LODWORD(v16) = info[0].denom;
    v14 = v15 / v16;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v14;
  }

  v263 = v14 * (v12 / v13);
LABEL_16:
  if (!*a3)
  {
    v17 = *(a3 + 16);
    goto LABEL_22;
  }

  v17 = *(a3 + 16);
  v18 = *(*(a3 + 8) + 4 * (0x826C6ABF7FDD5AD7 % *(a3 + 24)));
  if (v18 == 0x7FFFFFFF)
  {
LABEL_22:
    v18 = 0x7FFFFFFFLL;
    goto LABEL_23;
  }

  while (*(v17 + 80 * v18 + 4) != 9)
  {
    v18 = *(v17 + 80 * v18) & 0x7FFFFFFF;
    if (v18 == 0x7FFFFFFF)
    {
      goto LABEL_22;
    }
  }

LABEL_23:
  v19 = *(v17 + 80 * v18 + 40);
  v20 = *(a1 + 8);
  v21 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(info))
    {
      v24 = NAN;
      goto LABEL_28;
    }

    LODWORD(v22) = info[0].numer;
    LODWORD(v23) = info[0].denom;
    v21 = v22 / v23;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v21;
  }

  v24 = v21 * (v19 / v20);
LABEL_28:
  if (!*a3)
  {
    v25 = *(a3 + 16);
    goto LABEL_34;
  }

  v25 = *(a3 + 16);
  v26 = *(*(a3 + 8) + 4 * (0x75C8519A9320579uLL % *(a3 + 24)));
  if (v26 == 0x7FFFFFFF)
  {
LABEL_34:
    v26 = 0x7FFFFFFFLL;
    goto LABEL_35;
  }

  while (*(v25 + 80 * v26 + 4) != 10)
  {
    v26 = *(v25 + 80 * v26) & 0x7FFFFFFF;
    if (v26 == 0x7FFFFFFF)
    {
      goto LABEL_34;
    }
  }

LABEL_35:
  v27 = *(v25 + 80 * v26 + 40);
  v28 = *(a1 + 8);
  v29 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(info))
    {
      v32 = NAN;
      goto LABEL_40;
    }

    LODWORD(v30) = info[0].numer;
    LODWORD(v31) = info[0].denom;
    v29 = v30 / v31;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v29;
  }

  v32 = v29 * (v27 / v28);
LABEL_40:
  if (!*a3)
  {
    v33 = *(a3 + 16);
    goto LABEL_46;
  }

  v33 = *(a3 + 16);
  v34 = *(*(a3 + 8) + 4 * (0xD56B1FBB9CEBA9E8 % *(a3 + 24)));
  if (v34 == 0x7FFFFFFF)
  {
LABEL_46:
    v34 = 0x7FFFFFFFLL;
    goto LABEL_47;
  }

  while (*(v33 + 80 * v34 + 4) != 8)
  {
    v34 = *(v33 + 80 * v34) & 0x7FFFFFFF;
    if (v34 == 0x7FFFFFFF)
    {
      goto LABEL_46;
    }
  }

LABEL_47:
  v35 = *(v33 + 80 * v34 + 40);
  v36 = *(a1 + 8);
  v37 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(info))
    {
      v40 = NAN;
      goto LABEL_52;
    }

    LODWORD(v38) = info[0].numer;
    LODWORD(v39) = info[0].denom;
    v37 = v38 / v39;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v37;
  }

  v40 = v37 * (v35 / v36);
LABEL_52:
  if (!*a3)
  {
    v41 = *(a3 + 16);
    goto LABEL_58;
  }

  v41 = *(a3 + 16);
  v42 = *(*(a3 + 8) + 4 * (0x3462D848F53ABB6DuLL % *(a3 + 24)));
  if (v42 == 0x7FFFFFFF)
  {
LABEL_58:
    v42 = 0x7FFFFFFFLL;
    goto LABEL_59;
  }

  while (*(v41 + 80 * v42 + 4) != 11)
  {
    v42 = *(v41 + 80 * v42) & 0x7FFFFFFF;
    if (v42 == 0x7FFFFFFF)
    {
      goto LABEL_58;
    }
  }

LABEL_59:
  v43 = *(v41 + 80 * v42 + 40);
  v44 = *(a1 + 8);
  v45 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(info))
    {
      v268 = NAN;
      goto LABEL_64;
    }

    LODWORD(v46) = info[0].numer;
    LODWORD(v47) = info[0].denom;
    v45 = v46 / v47;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v45;
  }

  v268 = v45 * (v43 / v44);
LABEL_64:
  if (!*a3)
  {
    v48 = *(a3 + 16);
    goto LABEL_70;
  }

  v48 = *(a3 + 16);
  v49 = *(*(a3 + 8) + 4 * (0x37BE58E8D7213BBCuLL % *(a3 + 24)));
  if (v49 == 0x7FFFFFFF)
  {
LABEL_70:
    v49 = 0x7FFFFFFFLL;
    goto LABEL_71;
  }

  while (*(v48 + 80 * v49 + 4) != 12)
  {
    v49 = *(v48 + 80 * v49) & 0x7FFFFFFF;
    if (v49 == 0x7FFFFFFF)
    {
      goto LABEL_70;
    }
  }

LABEL_71:
  v50 = *(v48 + 80 * v49 + 40);
  v51 = *(a1 + 8);
  v52 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(info))
    {
      v266 = NAN;
      goto LABEL_76;
    }

    LODWORD(v53) = info[0].numer;
    LODWORD(v54) = info[0].denom;
    v52 = v53 / v54;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v52;
  }

  v266 = v52 * (v50 / v51);
LABEL_76:
  if (!*a3)
  {
    v55 = *(a3 + 16);
    goto LABEL_82;
  }

  v55 = *(a3 + 16);
  v56 = *(*(a3 + 8) + 4 * (0x378A5760BE593CA5uLL % *(a3 + 24)));
  if (v56 == 0x7FFFFFFF)
  {
LABEL_82:
    v56 = 0x7FFFFFFFLL;
    goto LABEL_83;
  }

  while (*(v55 + 80 * v56 + 4) != 23)
  {
    v56 = *(v55 + 80 * v56) & 0x7FFFFFFF;
    if (v56 == 0x7FFFFFFF)
    {
      goto LABEL_82;
    }
  }

LABEL_83:
  v57 = *(v55 + 80 * v56 + 40);
  v58 = *(a1 + 8);
  v59 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(info))
    {
      v62 = NAN;
      goto LABEL_88;
    }

    LODWORD(v60) = info[0].numer;
    LODWORD(v61) = info[0].denom;
    v59 = v60 / v61;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v59;
  }

  v62 = v59 * (v57 / v58);
LABEL_88:
  if (!*a3)
  {
    v63 = *(a3 + 16);
    goto LABEL_94;
  }

  v63 = *(a3 + 16);
  v64 = *(*(a3 + 8) + 4 * (0xCFF0446243756E89 % *(a3 + 24)));
  if (v64 == 0x7FFFFFFF)
  {
LABEL_94:
    v64 = 0x7FFFFFFFLL;
    goto LABEL_95;
  }

  while (*(v63 + 80 * v64 + 4) != 79)
  {
    v64 = *(v63 + 80 * v64) & 0x7FFFFFFF;
    if (v64 == 0x7FFFFFFF)
    {
      goto LABEL_94;
    }
  }

LABEL_95:
  v65 = *(v63 + 80 * v64 + 40);
  v66 = *(a1 + 8);
  v67 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(info))
    {
      v261 = NAN;
      goto LABEL_100;
    }

    LODWORD(v68) = info[0].numer;
    LODWORD(v69) = info[0].denom;
    v67 = v68 / v69;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v67;
  }

  v261 = v67 * (v65 / v66);
LABEL_100:
  if (!*a3)
  {
    v70 = *(a3 + 16);
    goto LABEL_106;
  }

  v70 = *(a3 + 16);
  v71 = *(*(a3 + 8) + 4 * (0x8AEB093D93E71BBFLL % *(a3 + 24)));
  if (v71 == 0x7FFFFFFF)
  {
LABEL_106:
    v71 = 0x7FFFFFFFLL;
    goto LABEL_107;
  }

  while (*(v70 + 80 * v71 + 4) != 122)
  {
    v71 = *(v70 + 80 * v71) & 0x7FFFFFFF;
    if (v71 == 0x7FFFFFFF)
    {
      goto LABEL_106;
    }
  }

LABEL_107:
  v72 = *(v70 + 80 * v71 + 40);
  v73 = *(a1 + 8);
  v74 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(info))
    {
      v260 = NAN;
      goto LABEL_112;
    }

    LODWORD(v75) = info[0].numer;
    LODWORD(v76) = info[0].denom;
    v74 = v75 / v76;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v74;
  }

  v260 = v74 * (v72 / v73);
LABEL_112:
  v262 = v7;
  if (!*a3)
  {
    v77 = *(a3 + 16);
    goto LABEL_118;
  }

  v77 = *(a3 + 16);
  v78 = *(*(a3 + 8) + 4 * (0x968A5BA23473FAFFLL % *(a3 + 24)));
  if (v78 == 0x7FFFFFFF)
  {
LABEL_118:
    v78 = 0x7FFFFFFFLL;
    goto LABEL_119;
  }

  while (*(v77 + 80 * v78 + 4) != 91)
  {
    v78 = *(v77 + 80 * v78) & 0x7FFFFFFF;
    if (v78 == 0x7FFFFFFF)
    {
      goto LABEL_118;
    }
  }

LABEL_119:
  v79 = *(v77 + 80 * v78 + 40);
  v80 = *(a1 + 8);
  v81 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(info))
    {
      v84 = NAN;
      goto LABEL_124;
    }

    LODWORD(v82) = info[0].numer;
    LODWORD(v83) = info[0].denom;
    v81 = v82 / v83;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v81;
  }

  v84 = v81 * (v79 / v80);
LABEL_124:
  if (!*a3)
  {
    v85 = *(a3 + 16);
    goto LABEL_130;
  }

  v85 = *(a3 + 16);
  v86 = *(*(a3 + 8) + 4 * (0xDE295D82F964F296 % *(a3 + 24)));
  if (v86 == 0x7FFFFFFF)
  {
LABEL_130:
    v86 = 0x7FFFFFFFLL;
    goto LABEL_131;
  }

  while (*(v85 + 80 * v86 + 4) != 92)
  {
    v86 = *(v85 + 80 * v86) & 0x7FFFFFFF;
    if (v86 == 0x7FFFFFFF)
    {
      goto LABEL_130;
    }
  }

LABEL_131:
  v87 = v24 / 1000000.0;
  v88 = *(v85 + 80 * v86 + 40);
  v89 = *(a1 + 8);
  v90 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  v91 = v32 / 1000000.0;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(info))
    {
      v94 = NAN;
      goto LABEL_136;
    }

    LODWORD(v92) = info[0].numer;
    LODWORD(v93) = info[0].denom;
    v90 = v92 / v93;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v90;
  }

  v94 = v90 * (v88 / v89);
LABEL_136:
  v96 = v91;
  v97 = v94 / 1000000.0;
  if (!*a3)
  {
    v98 = *(a3 + 16);
    goto LABEL_142;
  }

  v98 = *(a3 + 16);
  v99 = *(*(a3 + 8) + 4 * (0xFEBD6A4FBD0A7802 % *(a3 + 24)));
  if (v99 == 0x7FFFFFFF)
  {
LABEL_142:
    v99 = 0x7FFFFFFFLL;
    goto LABEL_143;
  }

  while (*(v98 + 80 * v99 + 4) != 93)
  {
    v99 = *(v98 + 80 * v99) & 0x7FFFFFFF;
    if (v99 == 0x7FFFFFFF)
    {
      goto LABEL_142;
    }
  }

LABEL_143:
  v100 = v40 / 1000000.0;
  v265 = v100;
  v101 = v268 / 1000000.0;
  v269 = v101;
  v102 = v266 / 1000000.0;
  v103 = v62 / 1000000.0;
  v267 = v103;
  v259 = v96;
  v95 = v87;
  v104 = v95 - v96;
  v105 = v84 / 1000000.0;
  v106 = v97;
  v107 = *(v98 + 80 * v99 + 40);
  v108 = *(a1 + 8);
  v109 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(info))
    {
      v112 = NAN;
      goto LABEL_148;
    }

    LODWORD(v110) = info[0].numer;
    LODWORD(v111) = info[0].denom;
    v109 = v110 / v111;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v109;
  }

  v112 = v109 * (v107 / v108);
LABEL_148:
  v113 = v263 / 1000000.0;
  v114 = v112 / 1000000.0;
  v115 = v104 + ((v105 + v106) + v114);
  v116 = v102;
  if (v265 <= 0.0)
  {
    v117 = v115 - ((v269 + v102) + v267);
  }

  else
  {
    v117 = v115;
  }

  if (!*a3)
  {
    v118 = *(a3 + 16);
    goto LABEL_157;
  }

  v118 = *(a3 + 16);
  v119 = *(*(a3 + 8) + 4 * (0xD59EEF30DB86CAB8 % *(a3 + 24)));
  if (v119 == 0x7FFFFFFF)
  {
LABEL_157:
    v119 = 0x7FFFFFFFLL;
    goto LABEL_158;
  }

  while (*(v118 + 80 * v119 + 4) != 24)
  {
    v119 = *(v118 + 80 * v119) & 0x7FFFFFFF;
    if (v119 == 0x7FFFFFFF)
    {
      goto LABEL_157;
    }
  }

LABEL_158:
  v120 = *(a1 + 8);
  v121 = 0.0;
  if (v113 > 0.0)
  {
    v121 = (1000.0 / v113);
  }

  v122 = (*(v118 + 80 * v119 + 40) / v120) / 1000000.0;
  if (*a3)
  {
    v123 = *(a3 + 24);
    v124 = *(a3 + 8);
    v125 = *(v124 + 4 * (0x4F7ABB7627B74F52 % v123));
    if (v125 == 0x7FFFFFFF)
    {
      v126 = (v118 + 0x27FFFFFFD8);
    }

    else
    {
      v133 = 0x7FFFFFFFLL;
      while (*(v118 + 80 * v125 + 4) != 29)
      {
        v125 = *(v118 + 80 * v125) & 0x7FFFFFFF;
        if (v125 == 0x7FFFFFFF)
        {
          goto LABEL_169;
        }
      }

      v133 = v125;
LABEL_169:
      v126 = (v118 + 80 * v133 + 40);
    }

    v134 = *(v124 + 4 * (0x724EA9269D42A72 % v123));
    if (v134 == 0x7FFFFFFF)
    {
      v135 = (v118 + 0x27FFFFFFD8);
    }

    else
    {
      v136 = 0x7FFFFFFFLL;
      while (*(v118 + 80 * v134 + 4) != 30)
      {
        v134 = *(v118 + 80 * v134) & 0x7FFFFFFF;
        if (v134 == 0x7FFFFFFF)
        {
          goto LABEL_177;
        }
      }

      v136 = v134;
LABEL_177:
      v135 = (v118 + 80 * v136 + 40);
    }

    v137 = *(v124 + 4 * (0x540F172E046EF165 % v123));
    if (v137 == 0x7FFFFFFF)
    {
      v138 = (v118 + 0x27FFFFFFD8);
    }

    else
    {
      v139 = 0x7FFFFFFFLL;
      while (*(v118 + 80 * v137 + 4) != 31)
      {
        v137 = *(v118 + 80 * v137) & 0x7FFFFFFF;
        if (v137 == 0x7FFFFFFF)
        {
          goto LABEL_185;
        }
      }

      v139 = v137;
LABEL_185:
      v138 = (v118 + 80 * v139 + 40);
    }

    v127 = a1;
    v131 = *v126;
    v132 = *v135;
    v129 = *v138;
    v130 = *(v124 + 4 * (0xADFB1EBB497FAD45 % v123));
    if (v130 == 0x7FFFFFFF)
    {
LABEL_189:
      v128 = a2;
      v130 = 0x7FFFFFFFLL;
    }

    else
    {
      while (*(v118 + 80 * v130 + 4) != 32)
      {
        v130 = *(v118 + 80 * v130) & 0x7FFFFFFF;
        if (v130 == 0x7FFFFFFF)
        {
          goto LABEL_189;
        }
      }

      v128 = a2;
    }
  }

  else
  {
    v127 = a1;
    v128 = a2;
    v129 = *(v118 + 0x27FFFFFFD8);
    v130 = 0x7FFFFFFFLL;
    v131 = v129;
    v132 = v129;
  }

  v140 = v261 / 1000000.0;
  v141 = ((v132 / v120) / 1000000.0);
  v142 = ((v131 / v120) / 1000000.0);
  v143 = ((v129 / v120) / 1000000.0);
  v144 = ((*(v118 + 80 * v130 + 40) / v120) / 1000000.0);
  re::DynamicString::appendf(v262, "Frame Render GPU Times (ms)\n");
  re::DynamicString::appendf(v262, "FPS : %.2f    GPU : %.2f\n", v121, v122);
  re::DynamicString::appendf(v262, "Vtx : %.2f    Frg : %.2f\nRenderGraph compute : %0.2f\nDeformer compute : %0.2f\n", v142 / 1000000.0, v141 / 1000000.0, v143 / 1000000.0, v144 / 1000000.0);
  re::DynamicString::appendf(v262, "Frame Render CPU Times (ms)\n");
  if (v265 <= 0.0)
  {
    v145 = v127;
    if (*a3)
    {
      v150 = *(a3 + 16);
      v151 = *(*(a3 + 8) + 4 * (0x8AEB093D93E71BBFLL % *(a3 + 24)));
      if (v151 != 0x7FFFFFFF)
      {
        v148 = v128;
        v159 = &unk_1EE186000;
        while (*(v150 + 80 * v151 + 4) != 122)
        {
          v151 = *(v150 + 80 * v151) & 0x7FFFFFFF;
          if (v151 == 0x7FFFFFFF)
          {
            v152 = v260 / 1000000.0;
            v151 = 0x7FFFFFFFLL;
            goto LABEL_208;
          }
        }

        v152 = v260 / 1000000.0;
LABEL_208:
        v160 = *(v150 + 80 * v151 + 40);
        v161 = *(v127 + 8);
        v162 = v159[46];
        if (v162 < 0.0)
        {
          if (mach_timebase_info(info))
          {
            v165 = NAN;
            goto LABEL_229;
          }

          LODWORD(v163) = info[0].numer;
          LODWORD(v164) = info[0].denom;
          v162 = v163 / v164;
          v159[46] = v162;
        }

        v165 = v162 * (v160 / v161);
LABEL_229:
        if (*a3)
        {
          v176 = *(a3 + 16);
          v177 = *(*(a3 + 8) + 4 * (0x89607B27DA843F55 % *(a3 + 24)));
          if (v177 != 0x7FFFFFFF)
          {
            while (*(v176 + 80 * v177 + 4) != 129)
            {
              v177 = *(v176 + 80 * v177) & 0x7FFFFFFF;
              if (v177 == 0x7FFFFFFF)
              {
                goto LABEL_235;
              }
            }

LABEL_236:
            v178 = v117;
            v179 = *(v176 + 80 * v177 + 40);
            v180 = *(v127 + 8);
            v181 = v159[46];
            v182 = v165 / 1000000.0;
            if (v181 < 0.0)
            {
              if (mach_timebase_info(info))
              {
                v185 = NAN;
                goto LABEL_253;
              }

              LODWORD(v183) = info[0].numer;
              LODWORD(v184) = info[0].denom;
              v181 = v183 / v184;
              v159[46] = v181;
            }

            v185 = v181 * (v179 / v180);
LABEL_253:
            v196 = v185 / 1000000.0;
            if (*a3)
            {
              v197 = *(a3 + 16);
              v198 = *(*(a3 + 8) + 4 * (0xAF26563F2EC4C8E6 % *(a3 + 24)));
              if (v198 != 0x7FFFFFFF)
              {
                while (*(v197 + 80 * v198 + 4) != 128)
                {
                  v198 = *(v197 + 80 * v198) & 0x7FFFFFFF;
                  if (v198 == 0x7FFFFFFF)
                  {
                    goto LABEL_259;
                  }
                }

LABEL_260:
                v199 = v182 + v178 + v196;
                v200 = *(v197 + 80 * v198 + 40);
                v201 = *(v127 + 8);
                v202 = v159[46];
                if (v202 < 0.0)
                {
                  if (mach_timebase_info(info))
                  {
                    v205 = NAN;
LABEL_268:
                    re::DynamicString::appendf(v262, "MainThread Render : %.2f\n", v199 + v205 / 1000000.0);
                    re::DynamicString::appendf(v262, "EncodeDrawCalls : %.2f    ECS Render : %.2f\n", v140, v152);
                    v206 = re::DynamicString::appendf(v262, "Drawables Wait : %.2f    GPU Wait : %.2f\n", v269, v116);
                    v207 = 10;
                    goto LABEL_269;
                  }

                  LODWORD(v203) = info[0].numer;
                  LODWORD(v204) = info[0].denom;
                  v202 = v203 / v204;
                  v159[46] = v202;
                }

                v205 = v202 * (v200 / v201);
                goto LABEL_268;
              }
            }

            else
            {
              v197 = *(a3 + 16);
            }

LABEL_259:
            v198 = 0x7FFFFFFFLL;
            goto LABEL_260;
          }
        }

        else
        {
          v176 = *(a3 + 16);
        }

LABEL_235:
        v177 = 0x7FFFFFFFLL;
        goto LABEL_236;
      }

      v152 = v260 / 1000000.0;
    }

    else
    {
      v152 = v260 / 1000000.0;
      v150 = *(a3 + 16);
    }

    v151 = 0x7FFFFFFFLL;
    v148 = v128;
    v159 = &unk_1EE186000;
    goto LABEL_208;
  }

  v145 = v127;
  if (!*a3)
  {
    v146 = *(a3 + 16);
    goto LABEL_202;
  }

  v146 = *(a3 + 16);
  v147 = *(*(a3 + 8) + 4 * (0x8AEB093D93E71BBFLL % *(a3 + 24)));
  if (v147 == 0x7FFFFFFF)
  {
LABEL_202:
    v147 = 0x7FFFFFFFLL;
    v148 = v128;
    v149 = &unk_1EE186000;
    goto LABEL_203;
  }

  v148 = v128;
  v149 = &unk_1EE186000;
  while (*(v146 + 80 * v147 + 4) != 122)
  {
    v147 = *(v146 + 80 * v147) & 0x7FFFFFFF;
    if (v147 == 0x7FFFFFFF)
    {
      v147 = 0x7FFFFFFFLL;
      break;
    }
  }

LABEL_203:
  v153 = *(v146 + 80 * v147 + 40);
  v154 = *(v127 + 8);
  v155 = v149[46];
  if (v155 < 0.0)
  {
    if (mach_timebase_info(info))
    {
      v158 = NAN;
      goto LABEL_217;
    }

    LODWORD(v156) = info[0].numer;
    LODWORD(v157) = info[0].denom;
    v155 = v156 / v157;
    v149[46] = v155;
  }

  v158 = v155 * (v153 / v154);
LABEL_217:
  if (!*a3)
  {
    v166 = *(a3 + 16);
    goto LABEL_223;
  }

  v166 = *(a3 + 16);
  v167 = *(*(a3 + 8) + 4 * (0x89607B27DA843F55 % *(a3 + 24)));
  if (v167 == 0x7FFFFFFF)
  {
LABEL_223:
    v167 = 0x7FFFFFFFLL;
    goto LABEL_224;
  }

  while (*(v166 + 80 * v167 + 4) != 129)
  {
    v167 = *(v166 + 80 * v167) & 0x7FFFFFFF;
    if (v167 == 0x7FFFFFFF)
    {
      goto LABEL_223;
    }
  }

LABEL_224:
  v168 = v117;
  v169 = *(v166 + 80 * v167 + 40);
  v170 = *(v127 + 8);
  v171 = v149[46];
  v172 = v158 / 1000000.0;
  if (v171 < 0.0)
  {
    if (mach_timebase_info(info))
    {
      v175 = NAN;
      goto LABEL_241;
    }

    LODWORD(v173) = info[0].numer;
    LODWORD(v174) = info[0].denom;
    v171 = v173 / v174;
    v149[46] = v171;
  }

  v175 = v171 * (v169 / v170);
LABEL_241:
  v186 = v175 / 1000000.0;
  if (!*a3)
  {
    v187 = *(a3 + 16);
    goto LABEL_247;
  }

  v187 = *(a3 + 16);
  v188 = *(*(a3 + 8) + 4 * (0xAF26563F2EC4C8E6 % *(a3 + 24)));
  if (v188 == 0x7FFFFFFF)
  {
LABEL_247:
    v188 = 0x7FFFFFFFLL;
    goto LABEL_248;
  }

  while (*(v187 + 80 * v188 + 4) != 128)
  {
    v188 = *(v187 + 80 * v188) & 0x7FFFFFFF;
    if (v188 == 0x7FFFFFFF)
    {
      goto LABEL_247;
    }
  }

LABEL_248:
  v189 = v172 + v168 + v186;
  v190 = *(v187 + 80 * v188 + 40);
  v191 = *(v127 + 8);
  v192 = v149[46];
  if (v192 >= 0.0)
  {
LABEL_264:
    v195 = v192 * (v190 / v191);
    goto LABEL_265;
  }

  if (!mach_timebase_info(info))
  {
    LODWORD(v193) = info[0].numer;
    LODWORD(v194) = info[0].denom;
    v192 = v193 / v194;
    v149[46] = v192;
    goto LABEL_264;
  }

  v195 = NAN;
LABEL_265:
  re::DynamicString::appendf(v262, "RenderThread : %.2f    MainThread Render : %.2f\n", (((v265 - v269) - v116) - v267), v189 + v195 / 1000000.0);
  v264 = v260 / 1000000.0;
  re::DynamicString::appendf(v262, "EncodeDrawCalls : %.2f    ECS Render : %.2f\n", v140, v264);
  re::DynamicString::appendf(v262, "Drawables Wait : %.2f    GPU Wait : %.2f\n", v269, v116);
  v206 = re::DynamicString::appendf(v262, "Render Thread Sync Latency: %.2f\n", v259);
  v207 = 11;
LABEL_269:
  *(v262 + 8) = v207;
  *(v262 + 36) = 0x10000000032;
  if (!*v148 || (v208 = *(*(v148 + 8) + 4 * (0x5692161D100B05E5uLL % *(v148 + 24))), v208 == 0x7FFFFFFF))
  {
LABEL_274:
    *&info[0].numer = 0u;
    v272 = 0u;
    re::DynamicString::setCapacity(info, 0);
    v273 = 0x2800000006;
    v274 = 1;
    v270 = 1;
    re::HashTable<unsigned int,re::FrameStatisticsOutput,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::add(v148, &v270, info);
    if (*info && (info[1].numer & 1) != 0)
    {
      (*(**info + 40))();
    }
  }

  else
  {
    v209 = *(v148 + 16);
    while (*(v209 + (v208 << 6) + 4) != 1)
    {
      v208 = *(v209 + (v208 << 6)) & 0x7FFFFFFF;
      if (v208 == 0x7FFFFFFF)
      {
        goto LABEL_274;
      }
    }
  }

  info[0].numer = 1;
  v210 = re::HashTable<unsigned int,re::FrameStatisticsOutput,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](v148, info);
  v211 = v210;
  if (v210[1])
  {
    v210[1] = 1;
    v212 = v210[2];
  }

  else
  {
    *(v210 + 8) = 0;
    v212 = v210 + 9;
  }

  *v212 = 0;
  re::DynamicString::appendf(v210, "Metal Heap Allocation Stats Per Frame [MB]\n");
  if (!*a3)
  {
    v214 = *(a3 + 16);
    v218 = *(v145 + 8);
    v219 = *(v214 + 0x27FFFFFFD8) / v218;
LABEL_293:
    v221 = 0x7FFFFFFFLL;
    goto LABEL_294;
  }

  v213 = *(a3 + 24);
  v215 = *(a3 + 8);
  v214 = *(a3 + 16);
  v216 = *(v215 + 4 * (0x87D70AD2CA29B0ALL % v213));
  if (v216 == 0x7FFFFFFF)
  {
    v217 = (v214 + 0x27FFFFFFD8);
  }

  else
  {
    v220 = 0x7FFFFFFFLL;
    while (*(v214 + 80 * v216 + 4) != 80)
    {
      v216 = *(v214 + 80 * v216) & 0x7FFFFFFF;
      if (v216 == 0x7FFFFFFF)
      {
        goto LABEL_289;
      }
    }

    v220 = v216;
LABEL_289:
    v217 = (v214 + 80 * v220 + 40);
  }

  v218 = *(v145 + 8);
  v219 = *v217 / v218;
  v221 = *(v215 + 4 * (0x8B37E5E0A757936CLL % v213));
  if (v221 == 0x7FFFFFFF)
  {
    goto LABEL_293;
  }

  while (*(v214 + 80 * v221 + 4) != 81)
  {
    v221 = *(v214 + 80 * v221) & 0x7FFFFFFF;
    if (v221 == 0x7FFFFFFF)
    {
      goto LABEL_293;
    }
  }

LABEL_294:
  re::DynamicString::appendf(v211, "Heaps : %.0f, Heap Memory [MB]: %.2f\n", v219, (((*(v214 + 80 * v221 + 40) / v218) * 0.00097656) * 0.00097656));
  if (!*a3)
  {
    v223 = *(a3 + 16);
    v227 = *(v145 + 8);
    v228 = *(v223 + 0x27FFFFFFD8) / v227;
LABEL_307:
    v230 = 0x7FFFFFFFLL;
    goto LABEL_308;
  }

  v222 = *(a3 + 24);
  v224 = *(a3 + 8);
  v223 = *(a3 + 16);
  v225 = *(v224 + 4 * (0x33C617428BBAA70BLL % v222));
  if (v225 == 0x7FFFFFFF)
  {
    v226 = (v223 + 0x27FFFFFFD8);
  }

  else
  {
    v229 = 0x7FFFFFFFLL;
    while (*(v223 + 80 * v225 + 4) != 82)
    {
      v225 = *(v223 + 80 * v225) & 0x7FFFFFFF;
      if (v225 == 0x7FFFFFFF)
      {
        goto LABEL_303;
      }
    }

    v229 = v225;
LABEL_303:
    v226 = (v223 + 80 * v229 + 40);
  }

  v227 = *(v145 + 8);
  v228 = *v226 / v227;
  v230 = *(v224 + 4 * (0x45F79258E41B3AE0 % v222));
  if (v230 == 0x7FFFFFFF)
  {
    goto LABEL_307;
  }

  while (*(v223 + 80 * v230 + 4) != 83)
  {
    v230 = *(v223 + 80 * v230) & 0x7FFFFFFF;
    if (v230 == 0x7FFFFFFF)
    {
      goto LABEL_307;
    }
  }

LABEL_308:
  re::DynamicString::appendf(v211, "Protected Heaps : %.0f, Heap Memory [MB]: %.2f\n", v228, (((*(v223 + 80 * v230 + 40) / v227) * 0.00097656) * 0.00097656));
  if (!*a3)
  {
    v231 = *(a3 + 16);
    goto LABEL_314;
  }

  v231 = *(a3 + 16);
  v232 = *(*(a3 + 8) + 4 * (0xAA2D7708F2A6F456 % *(a3 + 24)));
  if (v232 == 0x7FFFFFFF)
  {
LABEL_314:
    v232 = 0x7FFFFFFFLL;
    goto LABEL_315;
  }

  while (*(v231 + 80 * v232 + 4) != 90)
  {
    v232 = *(v231 + 80 * v232) & 0x7FFFFFFF;
    if (v232 == 0x7FFFFFFF)
    {
      goto LABEL_314;
    }
  }

LABEL_315:
  re::DynamicString::appendf(v211, "Peak Frame Memory : %.2f\n", (((*(v231 + 80 * v232 + 40) / *(v145 + 8)) * 0.00097656) * 0.00097656));
  if (!*a3)
  {
    v233 = *(a3 + 16);
    goto LABEL_321;
  }

  v233 = *(a3 + 16);
  v234 = *(*(a3 + 8) + 4 * (0xAA2D7708F2A6F456 % *(a3 + 24)));
  if (v234 == 0x7FFFFFFF)
  {
LABEL_321:
    v234 = 0x7FFFFFFFLL;
    goto LABEL_322;
  }

  while (*(v233 + 80 * v234 + 4) != 90)
  {
    v234 = *(v233 + 80 * v234) & 0x7FFFFFFF;
    if (v234 == 0x7FFFFFFF)
    {
      goto LABEL_321;
    }
  }

LABEL_322:
  re::DynamicString::appendf(v211, "Max of all Peaks : %.2f\n", ((*(v233 + 80 * v234 + 56) * 0.00097656) * 0.00097656));
  if (!*a3)
  {
    v236 = *(a3 + 16);
    v240 = *(v145 + 8);
    v241 = *(v236 + 0x27FFFFFFD8) / v240;
LABEL_335:
    v243 = 0x7FFFFFFFLL;
    goto LABEL_336;
  }

  v235 = *(a3 + 24);
  v237 = *(a3 + 8);
  v236 = *(a3 + 16);
  v238 = *(v237 + 4 * (0xE3841E098FBC6AD9 % v235));
  if (v238 == 0x7FFFFFFF)
  {
    v239 = (v236 + 0x27FFFFFFD8);
  }

  else
  {
    v242 = 0x7FFFFFFFLL;
    while (*(v236 + 80 * v238 + 4) != 84)
    {
      v238 = *(v236 + 80 * v238) & 0x7FFFFFFF;
      if (v238 == 0x7FFFFFFF)
      {
        goto LABEL_331;
      }
    }

    v242 = v238;
LABEL_331:
    v239 = (v236 + 80 * v242 + 40);
  }

  v240 = *(v145 + 8);
  v241 = *v239 / v240;
  v243 = *(v237 + 4 * (0x8505BE27DEF25DA7 % v235));
  if (v243 == 0x7FFFFFFF)
  {
    goto LABEL_335;
  }

  while (*(v236 + 80 * v243 + 4) != 85)
  {
    v243 = *(v236 + 80 * v243) & 0x7FFFFFFF;
    if (v243 == 0x7FFFFFFF)
    {
      goto LABEL_335;
    }
  }

LABEL_336:
  re::DynamicString::appendf(v211, "Textures: %.0f, Memoryless Textures: %.0f\n", v241, (*(v236 + 80 * v243 + 40) / v240));
  if (!*a3)
  {
    v244 = *(a3 + 16);
    goto LABEL_342;
  }

  v244 = *(a3 + 16);
  v245 = *(*(a3 + 8) + 4 * (0xCF15A836B33FD539 % *(a3 + 24)));
  if (v245 == 0x7FFFFFFF)
  {
LABEL_342:
    v245 = 0x7FFFFFFFLL;
    goto LABEL_343;
  }

  while (*(v244 + 80 * v245 + 4) != 87)
  {
    v245 = *(v244 + 80 * v245) & 0x7FFFFFFF;
    if (v245 == 0x7FFFFFFF)
    {
      goto LABEL_342;
    }
  }

LABEL_343:
  v246 = (((*(v244 + 80 * v245 + 40) / *(v145 + 8)) * 0.00097656) * 0.00097656);
  v247 = 0x7FFFFFFFLL;
  if (*a3)
  {
    v248 = *(*(a3 + 8) + 4 * (0x2505F58C05E6526FuLL % *(a3 + 24)));
    if (v248 != 0x7FFFFFFF)
    {
      v247 = 0x7FFFFFFFLL;
      while (*(v244 + 80 * v248 + 4) != 88)
      {
        v248 = *(v244 + 80 * v248) & 0x7FFFFFFF;
        if (v248 == 0x7FFFFFFF)
        {
          goto LABEL_350;
        }
      }

      v247 = v248;
    }
  }

LABEL_350:
  re::DynamicString::appendf(v211, "Texture Memory: %.2f, Largest Texture: %.2f\n", v246, ((*(v244 + 80 * v247 + 36) * 0.00097656) * 0.00097656));
  if (!*a3)
  {
    v250 = *(a3 + 16);
    v254 = *(v250 + 0x27FFFFFFD8);
    v255 = *(v145 + 8);
LABEL_363:
    v257 = 0x7FFFFFFFLL;
    goto LABEL_364;
  }

  v249 = *(a3 + 24);
  v251 = *(a3 + 8);
  v250 = *(a3 + 16);
  v252 = *(v251 + 4 * (0x9E14C3B38F31B195 % v249));
  if (v252 == 0x7FFFFFFF)
  {
    v253 = (v250 + 0x27FFFFFFD8);
  }

  else
  {
    v256 = 0x7FFFFFFFLL;
    while (*(v250 + 80 * v252 + 4) != 86)
    {
      v252 = *(v250 + 80 * v252) & 0x7FFFFFFF;
      if (v252 == 0x7FFFFFFF)
      {
        goto LABEL_359;
      }
    }

    v256 = v252;
LABEL_359:
    v253 = (v250 + 80 * v256 + 40);
  }

  v254 = *v253;
  v255 = *(v145 + 8);
  v257 = *(v251 + 4 * (0x1D3169FBB198C267 % v249));
  if (v257 == 0x7FFFFFFF)
  {
    goto LABEL_363;
  }

  while (*(v250 + 80 * v257 + 4) != 89)
  {
    v257 = *(v250 + 80 * v257) & 0x7FFFFFFF;
    if (v257 == 0x7FFFFFFF)
    {
      goto LABEL_363;
    }
  }

LABEL_364:
  re::DynamicString::appendf(v211, "Buffers : %.0f, Total Buffer Memory : %.2f\n", (v254 / v255), (((*(v250 + 80 * v257 + 40) / v255) * 0.00097656) * 0.00097656));
  *&result = 0x3200000007;
  *(v211 + 4) = 0x3200000007;
  *(v211 + 10) = 256;
  return result;
}