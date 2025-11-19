id __copy_helper_block_a8_64c25_ZTSN2re3xpc10ConnectionE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 64);
  *(a1 + 64) = result;
  return result;
}

uint64_t re::ResourceSharingManager::connectedPeers@<X0>(re::ResourceSharingManager *this@<X0>, uint64_t a2@<X8>)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x5812000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = "";
  v16 = 0;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v15 = 0;
  v3 = *(this + 5);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZNK2re22ResourceSharingManager14connectedPeersEv_block_invoke;
  block[3] = &unk_1E871AD68;
  block[4] = &v6;
  block[5] = this;
  dispatch_sync(v3, block);
  re::DynamicArray<char const*>::DynamicArray(a2, v7 + 6);
  _Block_object_dispose(&v6, 8);
  result = v12;
  if (v12)
  {
    if (v16)
    {
      return (*(*v12 + 40))();
    }
  }

  return result;
}

void *___ZNK2re22ResourceSharingManager14connectedPeersEv_block_invoke(void *result)
{
  v1 = result[5];
  v2 = *(v1 + 80);
  if (v2)
  {
    v3 = result;
    v4 = 168 * v2;
    v5 = (*(v1 + 96) + 16);
    do
    {
      result = re::DynamicArray<re::TransitionCondition *>::add((*(v3[4] + 8) + 48), v5);
      v5 += 21;
      v4 -= 168;
    }

    while (v4);
  }

  return result;
}

void re::ResourceSharingManager::pushDirectCommit(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_not_V2(*(a1 + 40));
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___ZN2re22ResourceSharingManager16pushDirectCommitEPU24objcproto13OS_xpc_object8NSObject_block_invoke;
  v6[3] = &unk_1E871AD90;
  v7 = v3;
  v8 = a1;
  v5 = v3;
  dispatch_sync(v4, v6);
}

void ___ZN2re22ResourceSharingManager16pushDirectCommitEPU24objcproto13OS_xpc_object8NSObject_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 80);
  if (v2)
  {
    v4 = *(v1 + 96);
    v5 = 168 * v2;
    do
    {
      v6 = re::ResourceFetchManager::Connection::remoteObjectProxy(v4);
      v7 = [[REXPCObject alloc] initWithObject:*(a1 + 32)];
      [v6 receiveDirectResourceCommit:v7];

      v4 += 21;
      v5 -= 168;
    }

    while (v5);
  }
}

void re::ResourceSharingManager::sendTrackableResource(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  dispatch_assert_queue_not_V2(*(a1 + 40));
  v6 = *(a1 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2re22ResourceSharingManager21sendTrackableResourceEPU24objcproto13OS_xpc_object8NSObjecti_block_invoke;
  block[3] = &unk_1E871ADB8;
  v9 = v5;
  v10 = a1;
  v11 = a3;
  v7 = v5;
  dispatch_sync(v6, block);
}

void ___ZN2re22ResourceSharingManager21sendTrackableResourceEPU24objcproto13OS_xpc_object8NSObjecti_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 80);
  if (v2)
  {
    v4 = *(v1 + 96);
    v5 = 168 * v2;
    do
    {
      v6 = re::ResourceFetchManager::Connection::remoteObjectProxy(v4);
      v7 = [[REXPCObject alloc] initWithObject:*(a1 + 32)];
      [v6 receiveTrackableResource:v7 withType:*(a1 + 48)];

      v4 += 21;
      v5 -= 168;
    }

    while (v5);
  }
}

uint64_t re::ResourceSharingManager::decodeShaderGraph@<X0>(dispatch_queue_t *this@<X0>, const re::Data *a2@<X1>, const re::Data *a3@<X2>, uint64_t a4@<X8>)
{
  v48 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_not_V2(this[5]);
  v33 = 0;
  v34 = &v33;
  v35 = 0x5812000000;
  v36 = __Block_byref_object_copy__59;
  v37 = __Block_byref_object_dispose__60;
  v38 = "";
  v41 = 0;
  memset(v39, 0, sizeof(v39));
  v40 = 0;
  v8 = this[5];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2re22ResourceSharingManager17decodeShaderGraphERKNS_4DataES3__block_invoke;
  block[3] = &unk_1E871AD68;
  block[4] = &v33;
  block[5] = this;
  dispatch_sync(v8, block);
  if (v34[8] >= 2)
  {
    v10 = *re::resourceSharingLogObjects(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v21 = v34[8];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v21;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Expected num connections <= 1, have %zu", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v43 = 0x3812000000;
  v44 = __Block_byref_object_copy__62;
  v45 = __Block_byref_object_dispose__63;
  v46 = 0;
  v47 = [MEMORY[0x1E696ABC0] errorWithDomain:@"No XPC connection" code:0 userInfo:0];

  v25 = 0;
  v26 = &v25;
  v27 = 0x3812000000;
  v28 = __Block_byref_object_copy__66;
  v30 = 0;
  v31 = 0;
  v29 = __Block_byref_object_dispose__67;
  v11 = v34[8];
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v34[10];
  v13 = MEMORY[0x1E69E9820];
  v14 = 8 * v11;
  do
  {
    v23[0] = v13;
    v23[1] = 3221225472;
    v23[2] = ___ZN2re22ResourceSharingManager17decodeShaderGraphERKNS_4DataES3__block_invoke_68;
    v23[3] = &unk_1E871ADE0;
    v23[4] = &buf;
    re::xpc::Connection::syncRemoteObjectProxy(v12, v23, &v24);
    v15 = *a2;
    v16 = *a3;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = ___ZN2re22ResourceSharingManager17decodeShaderGraphERKNS_4DataES3__block_invoke_2;
    v22[3] = &unk_1E871AE08;
    v22[4] = &buf;
    v22[5] = &v25;
    [v24 decodeShaderGraph:v15 withFnConsts:v16 withReply:v22];

    ++v12;
    v14 -= 8;
  }

  while (v14);
  v17 = v26[6];
  if (v17)
  {
    v18 = 1;
  }

  else
  {
LABEL_9:
    v18 = 0;
    v17 = *(*(&buf + 1) + 48);
  }

  v19 = v17;
  *a4 = v18;
  *(a4 + 8) = v19;
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v33, 8);
  return re::DynamicArray<re::ObjCObject>::deinit(v39);
}

uint64_t __Block_byref_object_copy__59(uint64_t result, uint64_t a2)
{
  *(result + 80) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  *(result + 72) = 0;
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v3 = *(result + 64);
  *(result + 64) = *(a2 + 64);
  *(a2 + 64) = v3;
  v4 = *(result + 80);
  *(result + 80) = *(a2 + 80);
  *(a2 + 80) = v4;
  ++*(a2 + 72);
  ++*(result + 72);
  return result;
}

_anonymous_namespace_ *___ZN2re22ResourceSharingManager17decodeShaderGraphERKNS_4DataES3__block_invoke(_anonymous_namespace_ *result)
{
  v1 = *(result + 5);
  v2 = *(v1 + 80);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + 96);
    v5 = 168 * v2;
    do
    {
      v6 = *(*(v3 + 4) + 8);
      v7 = *(v6 + 56);
      v8 = *(v6 + 64);
      if (v8 >= v7)
      {
        v9 = v8 + 1;
        if (v7 < v9)
        {
          if (*(v6 + 48))
          {
            if (v7)
            {
              v10 = 2 * v7;
            }

            else
            {
              v10 = 8;
            }

            if (v10 <= v9)
            {
              v11 = v9;
            }

            else
            {
              v11 = v10;
            }

            re::DynamicArray<re::ObjCObject>::setCapacity((v6 + 48), v11);
          }

          else
          {
            re::DynamicArray<re::ObjCObject>::setCapacity((v6 + 48), v9);
            ++*(v6 + 72);
          }
        }

        v8 = *(v6 + 64);
      }

      v12 = *(v6 + 80);
      v13 = *v4;
      v4 += 21;
      result = v13;
      *(v12 + 8 * v8) = result;
      ++*(v6 + 64);
      ++*(v6 + 72);
      v5 -= 168;
    }

    while (v5);
  }

  return result;
}

uint64_t __Block_byref_object_copy__62(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

uint64_t __Block_byref_object_copy__66(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

void ___ZN2re22ResourceSharingManager17decodeShaderGraphERKNS_4DataES3__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = 32;
    v8 = v5;
  }

  else
  {
    if (!v9)
    {
      goto LABEL_6;
    }

    v7 = 40;
    v8 = v9;
  }

  re::ObjCObject::operator=((*(*(a1 + v7) + 8) + 48), v8);
LABEL_6:
}

void re::ResourceSharingManager::payloadDidChange(dispatch_queue_t *this, const re::AssetHandle *a2)
{
  dispatch_assert_queue_V2(this[4]);
  v4 = this[5];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___ZN2re22ResourceSharingManager16payloadDidChangeERKNS_11AssetHandleE_block_invoke;
  v5[3] = &__block_descriptor_48_e5_v8__0l;
  v5[4] = this;
  v5[5] = a2;
  dispatch_sync(v4, v5);
}

void ___ZN2re22ResourceSharingManager16payloadDidChangeERKNS_11AssetHandleE_block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = re::AssetHandle::assetInfo(*(a1 + 40));
  v4 = re::Hash<re::DynamicString>::operator()(buf, v3 + 96);
  v5 = *(v2 + 10);
  if (v5)
  {
    v6 = 0;
    v7 = *(v2 + 12);
    v8 = v7 + 168 * v5;
    do
    {
      v9 = *(v7 + 56);
      if (v9)
      {
        v10 = 0;
        v11 = (*(v7 + 40) + 8);
        while (1)
        {
          v12 = *v11;
          v11 += 6;
          if (v12 < 0)
          {
            break;
          }

          if (v9 == ++v10)
          {
            LODWORD(v10) = *(v7 + 56);
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
        v13 = *(v7 + 40);
        while (*(*(v13 + 24 * v10 + 16) + 56) != v4)
        {
          if (v9 <= v10 + 1)
          {
            v14 = v10 + 1;
          }

          else
          {
            v14 = *(v7 + 56);
          }

          while (v14 - 1 != v10)
          {
            LODWORD(v10) = v10 + 1;
            if ((*(v13 + 24 * v10 + 8) & 0x80000000) != 0)
            {
              goto LABEL_19;
            }
          }

          LODWORD(v10) = v14;
LABEL_19:
          if (v10 == v9)
          {
            goto LABEL_22;
          }
        }

        v6 = *(v13 + 24 * v10 + 16);
      }

LABEL_22:
      v7 += 168;
    }

    while (v7 != v8);
    if (v6 && v6[11])
    {
      v15 = *re::resourceSharingLogObjects(v4);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v39 = *(a1 + 40);
        v40 = v15;
        v41 = re::AssetHandle::assetInfo(v39);
        if (v41[17])
        {
          v42 = v41[18];
        }

        else
        {
          v42 = v41 + 137;
        }

        v43 = v6[11];
        *buf = 136315394;
        *v51 = v42;
        *&v51[8] = 2048;
        *&v51[10] = v43;
        _os_log_debug_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_DEBUG, "Sending updated resource payload for '%s' to %zu subscribed servers", buf, 0x16u);
      }

      re::ResourceSharingManager::makeFetchRequestResult(v46, v2, *(a1 + 40));
      v17 = v6[11];
      if (v17)
      {
        v18 = v6[13];
        v19 = &v18[v17];
        *&v16 = 138412290;
        v44 = v16;
        v45 = v19;
        do
        {
          v20 = *v18;
          v21 = v46[0];
          v22 = v47;
          v23 = v22;
          v24 = *(v2 + 10);
          if (v24)
          {
            v25 = *(v2 + 12);
            v26 = 168 * v24;
            while (*(v25 + 8) != v20)
            {
              v25 += 168;
              v26 -= 168;
              if (!v26)
              {
                goto LABEL_32;
              }
            }

            if (v6[4])
            {
              v30 = v6[5];
            }

            else
            {
              v30 = v6 + 33;
            }

            v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v30, v44}];
            v48[0] = v21;
            v49 = v23;
            re::ResourceSharingManager::validateResult(buf, v2, v25, v6, v48);

            v32 = buf[0];
            v33 = *&v51[4];
            if (buf[0])
            {
              v34 = *&v51[4];
            }

            else
            {
              v34 = 0;
            }

            v35 = v34;
            if (v32)
            {
              v36 = 0;
            }

            else
            {
              v36 = v33;
            }

            v37 = v36;

            v38 = re::ResourceFetchManager::Connection::remoteObjectProxy(v25);
            [v38 resourceAtAssetPath:v31 payloadDidUpdate:v35 error:v37];

            v19 = v45;
          }

          else
          {
LABEL_32:
            v27 = *re::resourceSharingLogObjects(v22);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
            {
              v28 = v20;
              *buf = v44;
              *v51 = v28;
              v29 = v27;
              _os_log_fault_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_FAULT, "No resource connection exists for server %@", buf, 0xCu);
            }
          }

          ++v18;
        }

        while (v18 != v19);
      }
    }
  }
}

uint64_t re::ResourceSharingManager::makeFetchRequestResult(re::ResourceSharingManager *this, const re::AssetHandle *a2, const re::AssetHandle *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 6);
  memset(buf, 0, 32);
  v7 = snprintf_l(buf, 0x20uLL, 0, "%llu", v6);
  if ((v7 - 32) <= 0xFFFFFFE0)
  {
    re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) ", "0 < ret && ret < sizeof(str)", "peerIDToString", 202);
    _os_crash();
    __break(1u);
  }

  v9 = *(a2 + 3);
  re::AssetHandle::AssetHandle(v26, a3);
  if (v29)
  {
    v10 = *&v30[7];
  }

  else
  {
    v10 = v30;
  }

  (*(*v9 + 232))(&v27, v9, v26, v10);
  re::AssetHandle::~AssetHandle(v26);
  if (v27)
  {
    v12 = *re::resourceSharingLogObjects(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v18 = v12;
      v19 = re::AssetHandle::assetInfo(a3);
      if (v19[17])
      {
        v20 = v19[18];
      }

      else
      {
        v20 = v19 + 137;
      }

      *buf = 136315138;
      *&buf[4] = v20;
      _os_log_debug_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEBUG, "Created shared resource payload for '%s'", buf, 0xCu);
    }

    v13 = v27;
    *this = 1;
    *(this + 1) = v13;
  }

  else
  {
    re::makeResourceSharingError(1, 0, &v25);
    v15 = *re::resourceSharingLogObjects(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v21 = v15;
      v22 = re::AssetHandle::assetInfo(a3);
      if (v22[17])
      {
        v23 = v22[18];
      }

      else
      {
        v23 = v22 + 137;
      }

      v24 = v25;
      *buf = 136315394;
      *&buf[4] = v23;
      *&buf[12] = 2112;
      *&buf[14] = v24;
      _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "Failed to makeFetchRequestResult for '%s': %@", buf, 0x16u);
    }

    v16 = v25;
    *this = 0;
    *(this + 1) = v16;
  }

  result = v28;
  if (v28)
  {
    if (v29)
    {
      return (*(*v28 + 40))();
    }
  }

  return result;
}

void re::ResourceSharingManager::releaseAssets(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(a2 + 8)];
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *a2;
    v7 = 8 * v5;
    do
    {
      v8 = *v6++;
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v8];
      [v4 addObject:v9];

      v7 -= 8;
    }

    while (v7);
  }

  v10 = [MEMORY[0x1E695DEC8] arrayWithArray:v4];
  v11 = *(a1 + 40);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___ZN2re22ResourceSharingManager13releaseAssetsERKNS_5SliceIyEE_block_invoke;
  v13[3] = &unk_1E871AD90;
  v14 = v10;
  v15 = a1;
  v12 = v10;
  dispatch_sync(v11, v13);
}

void ___ZN2re22ResourceSharingManager13releaseAssetsERKNS_5SliceIyEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 80);
  if (v2)
  {
    v4 = *(v1 + 96);
    v5 = 168 * v2;
    do
    {
      v6 = re::ResourceFetchManager::Connection::remoteObjectProxy(v4);
      [v6 releaseResourcesWithAssetIds:*(a1 + 32)];

      v4 += 21;
      v5 -= 168;
    }

    while (v5);
  }
}

unint64_t re::ResourceSharingManager::drainResourceRequestQueue(re::ResourceSharingManager *this, dispatch_time_t a2)
{
  v3 = *(this + 7);
  v4 = *(v3 + 48);
  re::internal::ResourceRequestQueue::flushSync(v3, a2);
  v5 = *(*(this + 7) + 48);
  v6 = v4 >= v5;
  v7 = v4 - v5;
  if (v6)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

unint64_t non-virtual thunk tore::ResourceSharingManager::drainResourceRequestQueue(re::ResourceSharingManager *this, dispatch_time_t a2)
{
  v3 = *(this + 6);
  v4 = *(v3 + 48);
  re::internal::ResourceRequestQueue::flushSync(v3, a2);
  v5 = *(*(this + 6) + 48);
  v6 = v4 >= v5;
  v7 = v4 - v5;
  if (v6)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

void re::DynamicArray<REResourceSharingClientObject * {__strong}>::remove(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 16);
  i = v3;
  if (v4)
  {
    v6 = 8 * v4;
    for (i = *(a1 + 32); *i != a2; i += 8)
    {
      v6 -= 8;
      if (!v6)
      {
        return;
      }
    }
  }

  v7 = &v3[8 * v4];
  if (i != v7)
  {
    v8 = i - v3;
    if (v4 <= v8 >> 3)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (v4 - 1 > v8 >> 3)
    {
      v9 = *(v7 - 1);
      *(v7 - 1) = 0;
      v10 = *(a1 + 32);
      v11 = *(v10 + v8);
      *(v10 + v8) = v9;

      v4 = *(a1 + 16);
      v3 = *(a1 + 32);
    }

    --*(a1 + 16);
    ++*(a1 + 24);
  }
}

uint64_t ___ZN2re22ResourceSharingManager19enqueueFetchRequestENS0_12FetchRequestE_block_invoke(uint64_t a1)
{
  v85 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v41 = *(a1 + 40);
  re::DynamicString::DynamicString(&v42, (a1 + 48));
  re::DynamicString::DynamicString(v44, (a1 + 80));
  v3 = *(a1 + 120);
  v45 = *(a1 + 112);
  v46 = v3;
  aBlock = _Block_copy(*(a1 + 128));
  dispatch_assert_queue_V2(*(v2 + 32));
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 0;
  v4 = *(v2 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN2re22ResourceSharingManager19processFetchRequestENS0_12FetchRequestE_block_invoke;
  block[3] = &unk_1F5CBCD70;
  block[5] = v2;
  v60 = v41;
  v5 = v4;
  re::DynamicString::DynamicString(v61, &v42);
  re::DynamicString::DynamicString(v62, v44);
  v62[4] = v45;
  v63 = v46;
  v64 = _Block_copy(aBlock);
  block[4] = &v65;
  dispatch_sync(v5, block);

  if (v66[3])
  {
    (***(v2 + 24))(&v57);
    if (v58)
    {
      v7 = *(v58 + 280);
    }

    else
    {
      v7 = 0;
    }

    v9 = re::AssetHandle::assetInfo(&v57);
    if (v9[10] == -1)
    {
      LODWORD(v11) = 0;
    }

    else
    {
      v11 = v9[10];
    }

    if (v7)
    {
      v12 = *v7;
    }

    else
    {
      v12 = 0;
    }

    v13 = re::AssetSignpost::fireImpulse(0x80D, v11, v12, v10);
    if (v58)
    {
      v14 = atomic_load((v58 + 896));
      if (v14 == 2)
      {
        if (re::assetsHighFrequencyLoggingEnabled(void)::onceToken != -1)
        {
          dispatch_once(&re::assetsHighFrequencyLoggingEnabled(void)::onceToken, &__block_literal_global_0);
        }

        if (re::assetsHighFrequencyLoggingEnabled(void)::shouldLog == 1)
        {
          v15 = *re::assetsLogObjects(v13);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v37 = v15;
            re::AssetPath::fullAssetPath(&v41, &buf);
            if (BYTE8(buf))
            {
              v38 = v70;
            }

            else
            {
              v38 = (&buf + 9);
            }

            v39 = *(re::AssetHandle::assetInfo(&v57) + 10);
            if (v39 == -1)
            {
              v39 = 0;
            }

            *v81 = 136315394;
            *&v81[4] = v38;
            *&v81[12] = 2048;
            *&v81[14] = v39;
            _os_log_debug_impl(&dword_1E1C61000, v37, OS_LOG_TYPE_DEBUG, "Handled resource fetch request for '%s': asset with id '%llu'", v81, 0x16u);

            if (buf && (BYTE8(buf) & 1) != 0)
            {
              (*(*buf + 40))();
            }
          }
        }

        re::ResourceSharingManager::makeFetchRequestResult(v55, v2, &v57);
        *v81 = 0;
        *&v81[8] = v81;
        *&v81[16] = 0x3032000000;
        v82 = __Block_byref_object_copy__90;
        v83 = __Block_byref_object_dispose__91;
        v84 = 0;
        v49 = 0;
        v50 = &v49;
        v51 = 0x3032000000;
        v52 = __Block_byref_object_copy__90;
        v53 = __Block_byref_object_dispose__91;
        v54 = 0;
        v16 = *(v2 + 40);
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3321888768;
        v70 = ___ZN2re22ResourceSharingManager19processFetchRequestENS0_12FetchRequestE_block_invoke_92;
        v71 = &unk_1F5CBCDA8;
        v74[1] = v2;
        v72 = &v65;
        v17 = v16;
        re::AssetHandle::AssetHandle(v75, &v57);
        BYTE8(v76) = v55[0];
        v18 = v56;
        *&v77 = v18;
        v73 = v81;
        v74[0] = &v49;
        dispatch_sync(v17, &buf);

        v19 = aBlock;
        v20 = *(*&v81[8] + 40);
        v48 = v20;

        re::AssetHandle::~AssetHandle(v75);
        _Block_object_dispose(&v49, 8);

        _Block_object_dispose(v81, 8);
        goto LABEL_42;
      }

      v21 = atomic_load((v58 + 896));
      v22 = v21 == 3;
    }

    else
    {
      v22 = 0;
    }

    v23 = *re::resourceSharingLogObjects(v13);
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
    if (v22)
    {
      if (!v24)
      {
LABEL_32:
        v31 = aBlock;
        re::ResourceSharingManager::makeFetchRequestError(&buf);

LABEL_42:
        re::AssetHandle::~AssetHandle(&v57);
        goto LABEL_43;
      }

      v25 = v23;
      re::AssetPath::fullAssetPath(&v41, &buf);
      if (BYTE8(buf))
      {
        v26 = v70;
      }

      else
      {
        v26 = (&buf + 9);
      }

      *v81 = 136315138;
      *&v81[4] = v26;
      v27 = "Handled resource fetch request for '%s': asset loading has already failed";
    }

    else
    {
      if (v24)
      {
        v35 = v23;
        re::AssetPath::fullAssetPath(&v41, &buf);
        v36 = (BYTE8(buf) & 1) != 0 ? v70 : (&buf + 9);
        *v81 = 136315138;
        *&v81[4] = v36;
        _os_log_debug_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_DEBUG, "Requesting async load of '%s' due to resource fetch request", v81, 0xCu);

        if (buf)
        {
          if (BYTE8(buf))
          {
            (*(*buf + 40))();
          }
        }
      }

      re::AssetHandle::loadAsync(&v57);
      if (!v58 || (v29 = atomic_load((v58 + 896)), v29 != 3))
      {
        v32 = *(v2 + 40);
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3321888768;
        v70 = ___ZN2re22ResourceSharingManager19processFetchRequestENS0_12FetchRequestE_block_invoke_93;
        v71 = &unk_1F5CBCDE0;
        v72 = &v65;
        v73 = v2;
        v33 = v32;
        re::AssetHandle::AssetHandle(v74, &v57);
        v75[2] = v41;
        re::DynamicString::DynamicString(&v76, &v42);
        re::DynamicString::DynamicString(v78, v44);
        v78[4] = v45;
        v79 = v46;
        v80 = _Block_copy(aBlock);
        dispatch_sync(v33, &buf);

        if (v78[0])
        {
          if (v78[1])
          {
            (*(*v78[0] + 40))();
          }

          memset(v78, 0, 32);
        }

        if (v76)
        {
          if (BYTE8(v76))
          {
            (*(*v76 + 40))();
          }

          v76 = 0u;
          v77 = 0u;
        }

        re::AssetHandle::~AssetHandle(v74);
        goto LABEL_42;
      }

      v30 = *re::resourceSharingLogObjects(v28);
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_32;
      }

      v25 = v30;
      re::AssetPath::fullAssetPath(&v41, &buf);
      if (BYTE8(buf))
      {
        v40 = v70;
      }

      else
      {
        v40 = (&buf + 9);
      }

      *v81 = 136315138;
      *&v81[4] = v40;
      v27 = "Handled resource fetch request for '%s': asset loading failed to begin";
    }

    _os_log_debug_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_DEBUG, v27, v81, 0xCu);

    if (buf && (BYTE8(buf) & 1) != 0)
    {
      (*(*buf + 40))();
    }

    goto LABEL_32;
  }

  v8 = *re::resourceSharingLogObjects(v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v46;
    _os_log_fault_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_FAULT, "No resource connection exists for server %@", &buf, 0xCu);
  }

LABEL_43:

  if (v62[0])
  {
    if (v62[1])
    {
      (*(*v62[0] + 40))();
    }

    memset(v62, 0, 32);
  }

  if (v61[0])
  {
    if (v61[1])
    {
      (*(*v61[0] + 40))();
    }

    memset(v61, 0, sizeof(v61));
  }

  _Block_object_dispose(&v65, 8);

  if (v44[0])
  {
    if (v44[1])
    {
      (*(*v44[0] + 40))();
    }

    memset(v44, 0, sizeof(v44));
  }

  result = v42;
  if (v42)
  {
    if (v43)
    {
      return (*(*v42 + 40))();
    }
  }

  return result;
}

void *__copy_helper_block_a8_40c48_ZTSKN2re22ResourceSharingManager12FetchRequestE(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  re::DynamicString::DynamicString((a1 + 48), (a2 + 48));
  re::DynamicString::DynamicString((a1 + 80), (a2 + 80));
  v4 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v4;
  result = _Block_copy(*(a2 + 128));
  *(a1 + 128) = result;
  return result;
}

double __destroy_helper_block_a8_40c48_ZTSKN2re22ResourceSharingManager12FetchRequestE(id *a1)
{
  re::DynamicString::deinit((a1 + 10));

  return re::DynamicString::deinit((a1 + 6));
}

uint64_t ___ZN2re22ResourceSharingManager25enqueueUnsubscribeRequestENS0_18UnsubscribeRequestE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3321888768;
  v9[2] = ___ZN2re22ResourceSharingManager25enqueueUnsubscribeRequestENS0_18UnsubscribeRequestE_block_invoke_2;
  v9[3] = &__block_descriptor_80_a8_40c54_ZTSKN2re22ResourceSharingManager18UnsubscribeRequestE_e5_v8__0l;
  v9[4] = v2;
  v4 = v3;
  re::DynamicString::DynamicString(&v10, (a1 + 40));
  v13 = *(a1 + 72);
  dispatch_sync(v4, v9);

  result = v10;
  if (v10)
  {
    if (v11)
    {
      return (*(*v10 + 40))(v10, v12, v5, v6, v7);
    }
  }

  return result;
}

uint64_t ___ZN2re22ResourceSharingManager25enqueueUnsubscribeRequestENS0_18UnsubscribeRequestE_block_invoke_2(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  re::DynamicString::DynamicString(&v42, (a1 + 40));
  v46 = *(a1 + 72);
  dispatch_assert_queue_V2(*(v2 + 32));
  dispatch_assert_queue_V2(*(v2 + 40));
  v4 = *(v2 + 80);
  if (v4)
  {
    v5 = 0;
    v6 = *(v2 + 96);
    v7 = 168 * v4;
    while (*(v6 + v5 + 8) != v46)
    {
      v5 += 168;
      if (v7 == v5)
      {
        goto LABEL_5;
      }
    }

    v9 = *(v6 + v5 + 56);
    if (v9)
    {
      v10 = 0;
      v11 = (*(v6 + v5 + 40) + 8);
      while (1)
      {
        v12 = *v11;
        v11 += 6;
        if (v12 < 0)
        {
          break;
        }

        if (v9 == ++v10)
        {
          LODWORD(v10) = *(v6 + v5 + 56);
          break;
        }
      }
    }

    else
    {
      LODWORD(v10) = 0;
    }

    if (v10 == v9)
    {
LABEL_24:
      v20 = *re::resourceSharingLogObjects(v3);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        if (v43)
        {
          v33 = v45;
        }

        else
        {
          v33 = v44;
        }

        *buf = 138412546;
        v48 = v46;
        v49 = 2080;
        v50 = v33;
        _os_log_error_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_ERROR, "Resource connection %@ ignored an unsubscribe request for '%s': no subscription exists", buf, 0x16u);
      }
    }

    else
    {
      v13 = v6 + v5;
      v14 = *(v6 + v5 + 40);
      while (1)
      {
        v15 = v14 + 24 * v10;
        v18 = *(v15 + 16);
        v16 = (v15 + 16);
        v17 = v18;
        v3 = re::DynamicString::operator==(v18 + 24, &v42);
        if (v3)
        {
          break;
        }

        if (v9 <= v10 + 1)
        {
          v19 = v10 + 1;
        }

        else
        {
          v19 = v9;
        }

        while (v19 - 1 != v10)
        {
          LODWORD(v10) = v10 + 1;
          if ((*(v14 + 24 * v10 + 8) & 0x80000000) != 0)
          {
            goto LABEL_23;
          }
        }

        LODWORD(v10) = v19;
LABEL_23:
        if (v10 == v9)
        {
          goto LABEL_24;
        }
      }

      re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v6 + v5 + 72, (v17 + 64));
      re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v6 + v5 + 120, (*v16 + 64));
      v22 = *v16;
      if (*v16)
      {
        v23 = (v22 + 8);
      }

      re::DynamicArray<REResourceSharingClientObject * {__strong}>::remove(v22 + 72, v46);
      v25 = *(v6 + v5 + 48);
      if (v25)
      {
        v26 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v22 ^ (v22 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v22 ^ (v22 >> 30))) >> 27));
        v27 = (v26 ^ (v26 >> 31)) % v25;
        v28 = *(v6 + v5 + 32);
        v29 = *(v28 + 4 * v27);
        if (v29 != 0x7FFFFFFF)
        {
          v30 = *(v13 + 40);
          if (*(v30 + 24 * v29 + 16) == v22)
          {
            *(v28 + 4 * v27) = *(v30 + 24 * v29 + 8) & 0x7FFFFFFF;
LABEL_42:
            v34 = *(v13 + 40) + 24 * v29;
            v35 = *(v34 + 8);
            if (v35 < 0)
            {
              *(v34 + 8) = v35 & 0x7FFFFFFF;
              v36 = *(v34 + 16);
              if (v36)
              {

                *(v34 + 16) = 0;
              }
            }

            v37 = (v6 + v5);
            v38 = *(v13 + 40) + 24 * v29;
            *(v38 + 8) = *(v38 + 8) & 0x80000000 | *(v6 + v5 + 60);
            v37[13] = *(v6 + v5 + 52) - 1;
            v39 = *(v6 + v5 + 64) + 1;
            v37[15] = v29;
            v37[16] = v39;
          }

          else
          {
            while (1)
            {
              v31 = v29;
              v32 = *(v30 + 24 * v29 + 8);
              v29 = v32 & 0x7FFFFFFF;
              if ((v32 & 0x7FFFFFFF) == 0x7FFFFFFF)
              {
                break;
              }

              if (*(v30 + 24 * v29 + 16) == v22)
              {
                *(v30 + 24 * v31 + 8) = *(v30 + 24 * v31 + 8) & 0x80000000 | *(v30 + 24 * v29 + 8) & 0x7FFFFFFF;
                goto LABEL_42;
              }
            }
          }
        }
      }

      v40 = *re::resourceSharingLogObjects(v24);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        if (v43)
        {
          v41 = v45;
        }

        else
        {
          v41 = v44;
        }

        *buf = 138412546;
        v48 = v46;
        v49 = 2080;
        v50 = v41;
        _os_log_debug_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_DEBUG, "Resource connection %@ unsubscribed from '%s'", buf, 0x16u);
        if (!v22)
        {
          goto LABEL_25;
        }
      }

      else if (!v22)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_5:
    v8 = *re::resourceSharingLogObjects(v3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v48 = v46;
      _os_log_fault_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_FAULT, "No resource connection exists for server %@", buf, 0xCu);
    }
  }

LABEL_25:

  result = v42;
  if (v42)
  {
    if (v43)
    {
      return (*(*v42 + 40))();
    }
  }

  return result;
}

id __copy_helper_block_a8_40c54_ZTSKN2re22ResourceSharingManager18UnsubscribeRequestE(uint64_t a1, uint64_t a2)
{
  re::DynamicString::DynamicString((a1 + 40), (a2 + 40));
  result = *(a2 + 72);
  *(a1 + 72) = result;
  return result;
}

double __destroy_helper_block_a8_40c54_ZTSKN2re22ResourceSharingManager18UnsubscribeRequestE(uint64_t a1)
{

  return re::DynamicString::deinit((a1 + 40));
}

uint64_t ___ZN2re22ResourceSharingManager24enqueueSetOptionsRequestENS0_17SetOptionsRequestE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN2re22ResourceSharingManager24enqueueSetOptionsRequestENS0_17SetOptionsRequestE_block_invoke_2;
  block[3] = &__block_descriptor_88_a8_40c52_ZTSN2re22ResourceSharingManager17SetOptionsRequestE_e5_v8__0l;
  block[4] = v2;
  v4 = v3;
  re::DynamicString::DynamicString(&v7, (a1 + 40));
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  dispatch_sync(v4, block);

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

uint64_t ___ZN2re22ResourceSharingManager24enqueueSetOptionsRequestENS0_17SetOptionsRequestE_block_invoke_2(uint64_t a1)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  re::DynamicString::DynamicString(&v36, (a1 + 40));
  v40 = *(a1 + 72);
  v41 = *(a1 + 80);
  dispatch_assert_queue_V2(*(v2 + 32));
  dispatch_assert_queue_V2(*(v2 + 40));
  v3 = re::Hash<re::DynamicString>::operator()(buf, &v36);
  v4 = *(v2 + 80);
  if (!v4)
  {
LABEL_5:
    v7 = *re::resourceSharingLogObjects(v3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v49 = v40;
      _os_log_fault_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_FAULT, "No resource connection exists for server %@", buf, 0xCu);
    }

    goto LABEL_25;
  }

  v5 = *(v2 + 96) + 40;
  v6 = 168 * v4;
  while (*(v5 - 32) != v40)
  {
    v5 += 168;
    v6 -= 168;
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  v8 = *(v5 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (*v5 + 8);
    while (1)
    {
      v11 = *v10;
      v10 += 6;
      if (v11 < 0)
      {
        break;
      }

      if (v8 == ++v9)
      {
        LODWORD(v9) = *(v5 + 16);
        break;
      }
    }
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (v9 == v8)
  {
LABEL_24:
    v17 = *re::resourceSharingLogObjects(v3);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      if (v37)
      {
        v26 = v39;
      }

      else
      {
        v26 = v38;
      }

      *buf = 138412546;
      v49 = v40;
      v50 = 2080;
      *v51 = v26;
      _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "Resource connection %@ ignored a set-options request for '%s': no subscription exists", buf, 0x16u);
    }

    goto LABEL_25;
  }

  v12 = *v5;
  while (1)
  {
    v13 = v12 + 24 * v9;
    v15 = *(v13 + 16);
    v14 = (v13 + 16);
    if (*(v15 + 56) == v3)
    {
      break;
    }

    if (v8 <= v9 + 1)
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = v8;
    }

    while (v16 - 1 != v9)
    {
      LODWORD(v9) = v9 + 1;
      if ((*(v12 + 24 * v9 + 8) & 0x80000000) != 0)
      {
        goto LABEL_23;
      }
    }

    LODWORD(v9) = v16;
LABEL_23:
    if (v9 == v8)
    {
      goto LABEL_24;
    }
  }

  v19 = (*(**(v2 + 24) + 112))(buf);
  if ((buf[0] & 1) == 0)
  {
    v22 = *re::resourceSharingLogObjects(v19);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = v39;
      if ((v37 & 1) == 0)
      {
        v23 = v38;
      }

      v24 = *v14;
      if (*(*v14 + 32))
      {
        v25 = *(v24 + 40);
      }

      else
      {
        v25 = (v24 + 33);
      }

      *v42 = 138412802;
      v43 = v40;
      v44 = 2080;
      v45 = v23;
      v46 = 2080;
      v47 = v25;
      _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "Resource connection %@ has a subscription for '%s', but no AssetHandle '%s' could be found in AssetService.", v42, 0x20u);
    }

    goto LABEL_51;
  }

  if (!*&v51[2])
  {
    v29 = *re::resourceSharingLogObjects(v19);
    goto LABEL_50;
  }

  v20 = atomic_load((*&v51[2] + 896));
  if (v20 != 2)
  {
    v27 = atomic_load((*&v51[2] + 896));
    v28 = re::resourceSharingLogObjects(v19);
    v29 = *v28;
    if (v27 == 3)
    {
      if (os_log_type_enabled(*v28, OS_LOG_TYPE_DEBUG))
      {
        if (v37)
        {
          v30 = v39;
        }

        else
        {
          v30 = v38;
        }

        *v42 = 136315138;
        v43 = v30;
        _os_log_debug_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_DEBUG, "Handled set-options request for '%s': asset loading has already failed", v42, 0xCu);
      }

      goto LABEL_51;
    }

LABEL_50:
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      if (v37)
      {
        v31 = v39;
      }

      else
      {
        v31 = v38;
      }

      *v42 = 136315138;
      v43 = v31;
      _os_log_fault_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_FAULT, "Set-options request for '%s' arrived while asset is loading, which isn't yet implemented", v42, 0xCu);
    }

    goto LABEL_51;
  }

  v21 = *re::resourceSharingLogObjects(v19);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    if (v37)
    {
      v32 = v39;
    }

    else
    {
      v32 = v38;
    }

    v33 = v40;
    v34 = v41;
    *v42 = 138412802;
    v43 = v33;
    v44 = 2080;
    v45 = v32;
    v46 = 2112;
    v47 = v34;
    v35 = v21;
    _os_log_debug_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_DEBUG, "Resource connection %@ set payload options on '%s': %@", v42, 0x20u);
  }

  re::AssetManager::setAssetPayloadRequestOptions(*(*&v51[2] + 24), *&v51[2], &v41);
LABEL_51:
  if (buf[0] == 1)
  {
    re::AssetHandle::~AssetHandle((&v49 + 4));
  }

LABEL_25:

  result = v36;
  if (v36)
  {
    if (v37)
    {
      return (*(*v36 + 40))();
    }
  }

  return result;
}

id __copy_helper_block_a8_40c52_ZTSN2re22ResourceSharingManager17SetOptionsRequestE(void *a1, id *a2)
{
  re::DynamicString::DynamicString((a1 + 5), (a2 + 5));
  a1[9] = a2[9];
  result = a2[10];
  a1[10] = result;
  return result;
}

double __destroy_helper_block_a8_40c52_ZTSN2re22ResourceSharingManager17SetOptionsRequestE(id *a1)
{

  return re::DynamicString::deinit((a1 + 5));
}

void re::ResourceSharingManager::pushLoadedAssetWithPayload(re::ResourceSharingManager *this, const re::AssetHandle *a2, char a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 1);
  if (v6)
  {
    v7 = *(v6 + 280);
  }

  else
  {
    v7 = 0;
  }

  if (re::assetsHighFrequencyLoggingEnabled(void)::onceToken != -1)
  {
    dispatch_once(&re::assetsHighFrequencyLoggingEnabled(void)::onceToken, &__block_literal_global_0);
  }

  if (re::assetsHighFrequencyLoggingEnabled(void)::shouldLog == 1)
  {
    v8 = *re::assetsLogObjects(this);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v14 = v8;
      v15 = *(re::AssetHandle::assetInfo(a2) + 10);
      if (v15 == -1)
      {
        v15 = 0;
      }

      *buf = 134217984;
      v27 = v15;
      _os_log_debug_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEBUG, "Pushing loaded asset with payload: %llu", buf, 0xCu);
    }
  }

  RequestResult = re::ResourceSharingManager::makeFetchRequestResult(v24, this, a2);
  if (v24[0])
  {
    v10 = *(this + 5);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3321888768;
    v19[2] = ___ZN2re22ResourceSharingManager26pushLoadedAssetWithPayloadERKNS_11AssetHandleEb_block_invoke;
    v19[3] = &__block_descriptor_73_a8_48c63_ZTSN2re6ResultINS_21SharedResourcePayloadENS_12WrappedErrorEEE_e5_v8__0l;
    v19[4] = this;
    v19[5] = a2;
    v20 = v24[0];
    v11 = v10;
    v12 = v25;
    v21 = v12;
    v22 = v7;
    v23 = a3;
    dispatch_sync(v11, v19);
  }

  else
  {
    v13 = *re::resourceSharingLogObjects(RequestResult);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = v13;
      v17 = re::AssetHandle::assetInfo(a2);
      if (v17[10] == -1)
      {
        v18 = 0;
      }

      else
      {
        v18 = v17[10];
      }

      v12 = v25;
      *buf = 134218242;
      v27 = v18;
      v28 = 2112;
      v29 = v12;
      _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "Failed to push loaded asset(%llu) to peers: %@", buf, 0x16u);
    }

    else
    {
      v12 = v25;
    }
  }
}

void ___ZN2re22ResourceSharingManager26pushLoadedAssetWithPayloadERKNS_11AssetHandleEb_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 10);
  if (v2)
  {
    v4 = *(v1 + 12);
    v5 = 168 * v2;
    do
    {
      re::ResourceSharingManager::findOrAddSubscription(&v21, v1, v4, *(a1 + 40));
      v6 = v21;
      v17[0] = *(a1 + 48);
      v18 = *(a1 + 56);
      re::ResourceSharingManager::validateResult(v19, v1, v4, v6, v17);

      v7 = v19[0];
      v8 = v20;
      if (v19[0])
      {
        v9 = v20;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;
      if (v7)
      {
        v11 = 0;
      }

      else
      {
        v11 = v8;
      }

      v12 = v11;

      if (!v12)
      {
        v13 = re::ResourceFetchManager::Connection::remoteObjectProxy(v4);
        v14 = re::AssetHandle::assetInfo(*(a1 + 40));
        if (v14[10] == -1)
        {
          v15 = 0;
        }

        else
        {
          v15 = v14[10];
        }

        v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:**(a1 + 64)];
        [v13 pushLoadedResourceWithPayloadAndAssetId:v15 assetType:v16 payload:v10 isPriorityAsset:*(a1 + 72)];
      }

      v4 = (v4 + 168);
      v5 -= 168;
    }

    while (v5);
  }
}

id re::ResourceSharingManager::findOrAddSubscription(re::ResourceSharingManager *this, Connection *a2, const re::AssetHandle *a3, re::AssetHandle *a4)
{
  v8 = re::AssetHandle::assetInfo(a4);
  v9 = re::Hash<re::DynamicString>::operator()(v40, v8 + 96);
  v10 = *(a3 + 14);
  if (v10)
  {
    v11 = 0;
    v12 = (*(a3 + 5) + 8);
    while (1)
    {
      v13 = *v12;
      v12 += 6;
      if (v13 < 0)
      {
        break;
      }

      if (v10 == ++v11)
      {
        LODWORD(v11) = *(a3 + 14);
        break;
      }
    }
  }

  else
  {
    LODWORD(v11) = 0;
  }

  if (v11 != v10)
  {
    v14 = *(a3 + 5);
    while (1)
    {
      v15 = *(v14 + 24 * v11 + 16);
      if (*(v15 + 56) == v9)
      {
        break;
      }

      if (v10 <= v11 + 1)
      {
        v16 = v11 + 1;
      }

      else
      {
        v16 = *(a3 + 14);
      }

      while (v16 - 1 != v11)
      {
        LODWORD(v11) = v11 + 1;
        if ((*(v14 + 24 * v11 + 8) & 0x80000000) != 0)
        {
          goto LABEL_17;
        }
      }

      LODWORD(v11) = v16;
LABEL_17:
      if (v11 == v10)
      {
        goto LABEL_18;
      }
    }

    *this = v15;
    v39 = (v15 + 8);
    return v39;
  }

LABEL_18:
  v17 = *(a2 + 10);
  if (v17)
  {
    v18 = *(a2 + 12);
    v19 = v18 + 168 * v17;
    while (1)
    {
      if (*(a3 + 1) != *(v18 + 8))
      {
        v20 = *(v18 + 56);
        if (v20)
        {
          v21 = 0;
          v22 = (*(v18 + 40) + 8);
          while (1)
          {
            v23 = *v22;
            v22 += 6;
            if (v23 < 0)
            {
              break;
            }

            if (v20 == ++v21)
            {
              LODWORD(v21) = *(v18 + 56);
              break;
            }
          }
        }

        else
        {
          LODWORD(v21) = 0;
        }

        if (v21 != v20)
        {
          break;
        }
      }

LABEL_38:
      v18 += 168;
      if (v18 == v19)
      {
        goto LABEL_39;
      }
    }

    v24 = *(v18 + 40);
    while (1)
    {
      v25 = v24 + 24 * v21;
      v28 = *(v25 + 16);
      v27 = (v25 + 16);
      v26 = v28;
      if (*(v28 + 56) == v9)
      {
        break;
      }

      if (v20 <= v21 + 1)
      {
        v29 = v21 + 1;
      }

      else
      {
        v29 = *(v18 + 56);
      }

      while (v29 - 1 != v21)
      {
        LODWORD(v21) = v21 + 1;
        if ((*(v24 + 24 * v21 + 8) & 0x80000000) != 0)
        {
          goto LABEL_37;
        }
      }

      LODWORD(v21) = v29;
LABEL_37:
      if (v21 == v20)
      {
        goto LABEL_38;
      }
    }

    re::DynamicArray<REResourceSharingClientObject * {__strong}>::add(v26 + 72, a3 + 1);
    result = re::HashSetBase<re::SharedPtr<re::ResourceSharingManager::Subscription>,re::SharedPtr<re::ResourceSharingManager::Subscription>,re::internal::ValueAsKey<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::Hash<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::EqualTo<re::SharedPtr<re::ResourceSharingManager::Subscription>>,true,false>::add(a3 + 24, v27);
    v38 = *v27;
    *this = *v27;
    if (v38)
    {
      v39 = (v38 + 8);
      return v39;
    }
  }

  else
  {
LABEL_39:
    v30 = re::globalAllocators(v9);
    v31 = (*(*v30[2] + 32))(v30[2], 160, 8);
    *v31 = 0u;
    *(v31 + 16) = 0u;
    *(v31 + 32) = 0u;
    *(v31 + 48) = 0u;
    *(v31 + 64) = 0u;
    *(v31 + 80) = 0u;
    *(v31 + 96) = 0u;
    *(v31 + 112) = 0u;
    *(v31 + 128) = 0u;
    *(v31 + 144) = 0u;
    ArcSharedObject::ArcSharedObject(v31, 0);
    *v31 = &unk_1F5CBCFB0;
    *(v31 + 40) = 0u;
    *(v31 + 24) = 0u;
    re::DynamicString::setCapacity((v31 + 24), 0);
    *(v31 + 96) = 0;
    *(v31 + 72) = 0;
    *(v31 + 80) = 0;
    *(v31 + 88) = 0;
    *(v31 + 152) = 0;
    *(v31 + 104) = 0u;
    *(v31 + 120) = 0u;
    *(v31 + 132) = 0u;
    *this = v31;
    v33 = re::AssetHandle::assetInfo(a4);
    if (*(v33 + 13))
    {
      v34 = *(v33 + 14);
    }

    else
    {
      v34 = v33 + 105;
    }

    v35 = strlen(v34);
    v40[0] = v34;
    v40[1] = v35;
    re::DynamicString::operator=((v31 + 24), v40);
    *(v31 + 56) = re::Hash<re::DynamicString>::operator()(v40, v31 + 24);
    v36 = *(re::AssetHandle::assetInfo(a4) + 10);
    if (v36 == -1)
    {
      v36 = 0;
    }

    *(v31 + 64) = v36;
    re::DynamicArray<REResourceSharingClientObject * {__strong}>::add(v31 + 72, a3 + 1);
    return re::HashSetBase<re::SharedPtr<re::ResourceSharingManager::Subscription>,re::SharedPtr<re::ResourceSharingManager::Subscription>,re::internal::ValueAsKey<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::Hash<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::EqualTo<re::SharedPtr<re::ResourceSharingManager::Subscription>>,true,false>::add(a3 + 24, this);
  }

  return result;
}

void re::ResourceSharingManager::validateResult(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned __int8 *a5)
{
  v48 = *MEMORY[0x1E69E9840];
  v7 = *a5;
  v8 = *(a5 + 1);
  if (v7 == 1 && v8)
  {
    v12 = v8;
    re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a3 + 72, a4 + 8);
    re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a3 + 120, a4 + 8);
    v13 = *(a3 + 152);
    if (v13)
    {
      v14 = 0;
      v15 = *(a3 + 136);
      while (1)
      {
        v16 = *v15;
        v15 += 8;
        if (v16 < 0)
        {
          break;
        }

        if (v13 == ++v14)
        {
          LODWORD(v14) = *(a3 + 152);
          break;
        }
      }
    }

    else
    {
      LODWORD(v14) = 0;
    }

    if (v14 == v13)
    {
      v17 = 0;
    }

    else
    {
      v17 = 0;
      v18 = *(a3 + 136);
      do
      {
        v17 += *(v18 + 32 * v14 + 16);
        if (v13 <= v14 + 1)
        {
          v19 = v14 + 1;
        }

        else
        {
          v19 = *(a3 + 152);
        }

        while (v19 - 1 != v14)
        {
          LODWORD(v14) = v14 + 1;
          if ((*(v18 + 32 * v14) & 0x80000000) != 0)
          {
            goto LABEL_21;
          }
        }

        LODWORD(v14) = v19;
LABEL_21:
        ;
      }

      while (v14 != v13);
    }

    v20 = *(a3 + 104);
    if (v20)
    {
      v21 = 0;
      v22 = *(a3 + 88);
      while (1)
      {
        v23 = *v22;
        v22 += 8;
        if (v23 < 0)
        {
          break;
        }

        if (v20 == ++v21)
        {
          LODWORD(v21) = *(a3 + 104);
          break;
        }
      }
    }

    else
    {
      LODWORD(v21) = 0;
    }

    if (v21 == v20)
    {
      v24 = 0;
    }

    else
    {
      v24 = 0;
      v25 = *(a3 + 88);
      do
      {
        v24 += *(v25 + 32 * v21 + 16);
        if (v20 <= v21 + 1)
        {
          v26 = v21 + 1;
        }

        else
        {
          v26 = *(a3 + 104);
        }

        while (v26 - 1 != v21)
        {
          LODWORD(v21) = v21 + 1;
          if ((*(v25 + 32 * v21) & 0x80000000) != 0)
          {
            goto LABEL_39;
          }
        }

        LODWORD(v21) = v26;
LABEL_39:
        ;
      }

      while (v21 != v20);
    }

    v27 = malloc_size(v12);
    v41 = v27;
    v28 = *re::resourceSharingLogObjects(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      if (a4[4])
      {
        v33 = a4[5];
      }

      else
      {
        v33 = a4 + 33;
      }

      *buf = 136315394;
      v43 = v33;
      v44 = 2048;
      v45 = v27;
      _os_log_debug_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEBUG, "Asset '%s' estimated to be size:%zu", buf, 0x16u);
    }

    if (v27 + v24 + v17 <= (*(**(a2 + 24) + 408))(*(a2 + 24)))
    {
      re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(a3 + 72, a4 + 8, &v41);
      v32 = *(a5 + 1);
      *a1 = 1;
      *(a1 + 8) = v32;
    }

    else
    {
      re::makeResourceSharingError(0x258, 0, &v40);
      v30 = *re::resourceSharingLogObjects(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v34 = *(a2 + 24);
        v35 = *(*v34 + 408);
        v36 = v30;
        v37 = v35(v34);
        if (a4[4])
        {
          v38 = a4[5];
        }

        else
        {
          v38 = (a4 + 33);
        }

        v39 = v40;
        *buf = 134218498;
        v43 = v37;
        v44 = 2080;
        v45 = v38;
        v46 = 2112;
        v47 = v39;
        _os_log_error_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_ERROR, "Specified upperBound limit of %zu was hit. Failed send payload for '%s': %@", buf, 0x20u);
      }

      v31 = v40;
      *a1 = 0;
      *(a1 + 8) = v31;
    }
  }

  else
  {
    *a1 = v7;
    *(a5 + 1) = 0;
    *(a1 + 8) = v8;
  }
}

id __copy_helper_block_a8_48c63_ZTSN2re6ResultINS_21SharedResourcePayloadENS_12WrappedErrorEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  result = *(a2 + 56);
  *(a1 + 56) = result;
  return result;
}

void *___ZN2re22ResourceSharingManager19processFetchRequestENS0_12FetchRequestE_block_invoke(void *result)
{
  v1 = result[5];
  v2 = *(v1 + 80);
  if (v2)
  {
    v3 = *(v1 + 96);
    v4 = 168 * v2;
    while (*(v3 + 8) != result[16])
    {
      v3 += 168;
      v4 -= 168;
      if (!v4)
      {
        return result;
      }
    }

    *(*(result[4] + 8) + 24) = v3;
  }

  return result;
}

void *__copy_helper_block_a8_48c48_ZTSKN2re22ResourceSharingManager12FetchRequestE(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  re::DynamicString::DynamicString((a1 + 56), (a2 + 56));
  re::DynamicString::DynamicString((a1 + 88), (a2 + 88));
  v4 = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v4;
  result = _Block_copy(*(a2 + 136));
  *(a1 + 136) = result;
  return result;
}

double __destroy_helper_block_a8_48c48_ZTSKN2re22ResourceSharingManager12FetchRequestE(id *a1)
{
  re::DynamicString::deinit((a1 + 11));

  return re::DynamicString::deinit((a1 + 7));
}

uint64_t __Block_byref_object_copy__90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZN2re22ResourceSharingManager19processFetchRequestENS0_12FetchRequestE_block_invoke_92(uint64_t a1)
{
  v2 = *(a1 + 56);
  re::ResourceSharingManager::findOrAddSubscription(&v13, v2, *(*(*(a1 + 32) + 8) + 24), (a1 + 64));
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = v13;
  v9[0] = *(a1 + 88);
  v10 = *(a1 + 96);
  re::ResourceSharingManager::validateResult(v11, v2, v3, v4, v9);

  v5 = v11[0];
  v6 = v12;
  if (v11[0])
  {
    v7 = v12;
  }

  else
  {
    v7 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v7);
  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v8);
}

id __copy_helper_block_a8_64c23_ZTSKN2re11AssetHandleE88c63_ZTSN2re6ResultINS_21SharedResourcePayloadENS_12WrappedErrorEEE(uint64_t a1, uint64_t a2)
{
  re::AssetHandle::AssetHandle((a1 + 64), (a2 + 64));
  *(a1 + 88) = *(a2 + 88);
  result = *(a2 + 96);
  *(a1 + 96) = result;
  return result;
}

void __destroy_helper_block_a8_64c23_ZTSKN2re11AssetHandleE88c63_ZTSN2re6ResultINS_21SharedResourcePayloadENS_12WrappedErrorEEE(uint64_t a1)
{

  re::AssetHandle::~AssetHandle((a1 + 64));
}

void re::anonymous namespace::internalSendFetchResponse(void *a1, void *a2, void *a3, re::AssetHandle *a4)
{
  v7 = a3;
  v14 = a1;
  v8 = re::AssetHandle::assetInfo(a4);
  v10 = *(a4 + 1);
  if (v10 && (v11 = *(v10 + 280)) != 0)
  {
    v12 = *v11;
  }

  else
  {
    v12 = 0;
  }

  if (v8[10] == -1)
  {
    LODWORD(v13) = 0;
  }

  else
  {
    v13 = v8[10];
  }

  re::AssetSignpost::fireImpulse(0x80E, v13, v12, v9);
  v14[2](v14, *a2, v7);
}

void re::anonymous namespace::sendFetchResponse(void *a1, uint64_t a2, re::AssetHandle *a3)
{
  v5 = a1;
  v6 = re::AssetHandle::assetInfo(a3);
  if (v6[10] == -1)
  {
    LODWORD(v8) = 0;
  }

  else
  {
    v8 = v6[10];
  }

  v9 = *(a3 + 1);
  if (v9 && (v10 = *(v9 + 280)) != 0)
  {
    v11 = *v10;
  }

  else
  {
    v11 = 0;
  }

  re::AssetSignpost::fireImpulse(0x80E, v8, v11, v7);
  if (*a2)
  {
    v12 = *(a2 + 8);
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  if (*a2)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(a2 + 8);
  }

  v15 = v14;

  v16 = v13;
  v17 = v16;
}

void re::ResourceSharingManager::makeFetchRequestError(re::ResourceSharingManager *this)
{
  re::makeResourceSharingError(0x190, 0, &v3);
  v2 = v3;
  v3 = 0;
  *this = 0;
  *(this + 1) = v2;
}

void ___ZN2re22ResourceSharingManager19processFetchRequestENS0_12FetchRequestE_block_invoke_93(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  re::ResourceSharingManager::findOrAddSubscription(&v22, v2, *(*(*(a1 + 32) + 8) + 24), (a1 + 48));
  v3 = v22;
  if (!*(v22 + 112))
  {
    (*(**(v2 + 3) + 208))(v23);
    v4 = *(v3 + 112);
    v5 = v23[0];
    *(v3 + 112) = v23[0];
    v23[0] = v4;
    if (v4)
    {

      v5 = *(v3 + 112);
    }

    v6 = (v3 + 8);
    v23[2] = v3;
    v24 = 0;
    v23[0] = &unk_1F5CBCEC0;
    v23[1] = v2;
    v7 = (v3 + 8);
    v24 = v23;
    re::AssetLoadRequest::setCompletionHandler(v5, v23, 0);
    std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](v23);

    re::AssetLoadRequest::addAsset(v5, (a1 + 48));
  }

  v8 = *(*(*(a1 + 32) + 8) + 24);
  v9 = *(a1 + 160);
  v10 = re::globalAllocators(v9);
  v11 = (*(*v10[2] + 32))(v10[2], 40, 8);
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;
  ArcSharedObject::ArcSharedObject(v11, 0);
  *(v11 + 24) = 0;
  *v11 = &unk_1F5CBCFF8;
  *(v11 + 32) = v8;
  v12 = _Block_copy(v9);

  v13 = *(v11 + 24);
  *(v11 + 24) = v12;

  v15 = *(v3 + 128);
  v16 = *(v3 + 136);
  if (v16 >= v15)
  {
    v17 = v16 + 1;
    if (v15 < v16 + 1)
    {
      if (*(v3 + 120))
      {
        v18 = 2 * v15;
        v19 = v15 == 0;
        v20 = 8;
        if (!v19)
        {
          v20 = v18;
        }

        if (v20 <= v17)
        {
          v21 = v17;
        }

        else
        {
          v21 = v20;
        }

        re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity((v3 + 120), v21);
      }

      else
      {
        re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity((v3 + 120), v17);
        ++*(v3 + 144);
      }
    }

    v16 = *(v3 + 136);
  }

  *(*(v3 + 152) + 8 * v16) = v11;
  *(v3 + 136) = v16 + 1;
  ++*(v3 + 144);
}

void *__copy_helper_block_a8_48c23_ZTSKN2re11AssetHandleE72c48_ZTSKN2re22ResourceSharingManager12FetchRequestE(uint64_t a1, uint64_t a2)
{
  re::AssetHandle::AssetHandle((a1 + 48), (a2 + 48));
  *(a1 + 72) = *(a2 + 72);
  re::DynamicString::DynamicString((a1 + 80), (a2 + 80));
  re::DynamicString::DynamicString((a1 + 112), (a2 + 112));
  v4 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = v4;
  result = _Block_copy(*(a2 + 160));
  *(a1 + 160) = result;
  return result;
}

void __destroy_helper_block_a8_48c23_ZTSKN2re11AssetHandleE72c48_ZTSKN2re22ResourceSharingManager12FetchRequestE(id *a1)
{
  re::DynamicString::deinit((a1 + 14));
  re::DynamicString::deinit((a1 + 10));

  re::AssetHandle::~AssetHandle((a1 + 6));
}

uint64_t re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v9);
  v5 = v11;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = *(a1 + 16);
    v7 = *(v6 + 32 * v11) & 0x7FFFFFFF;
    if (v12 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v10) = v7;
      v5 = v11;
    }

    else
    {
      *(v6 + 32 * v12) = *(v6 + 32 * v12) & 0x80000000 | v7;
    }

    v8 = *(a1 + 40);
    *(v6 + 32 * v5) = *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v5;
    *(a1 + 40) = v8 + 1;
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(uint64_t a1, void *a2, uint64_t *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  v8 = HIDWORD(v11);
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v11, v10);
    v9 = *a3;
    *(result + 8) = *a2;
    *(result + 16) = v9;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    *(*(a1 + 16) + 32 * v8 + 16) = *a3;
  }

  return result;
}

id re::DynamicArray<REResourceSharingClientObject * {__strong}>::add(uint64_t a1, id *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v6)
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

        re::DynamicArray<REResourceSharingClientObject * {__strong}>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<REResourceSharingClientObject * {__strong}>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32);
  result = *a2;
  *(v11 + 8 * v5) = result;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

uint64_t re::HashSetBase<re::SharedPtr<re::ResourceSharingManager::Subscription>,re::SharedPtr<re::ResourceSharingManager::Subscription>,re::internal::ValueAsKey<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::Hash<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::EqualTo<re::SharedPtr<re::ResourceSharingManager::Subscription>>,true,false>::add(uint64_t result, uint64_t *a2)
{
  v3 = result;
  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  v7 = *(result + 24);
  if (v7)
  {
    v8 = v6 % v7;
    v9 = *(*(result + 8) + 4 * (v6 % v7));
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(result + 16);
      if (*(v10 + 24 * v9 + 16) == v4)
      {
        return result;
      }

      while (1)
      {
        LODWORD(v9) = *(v10 + 24 * v9 + 8) & 0x7FFFFFFF;
        if (v9 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v10 + 24 * v9 + 16) == v4)
        {
          return result;
        }
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  result = re::HashSetBase<re::SharedPtr<re::ResourceSharingManager::Subscription>,re::SharedPtr<re::ResourceSharingManager::Subscription>,re::internal::ValueAsKey<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::Hash<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::EqualTo<re::SharedPtr<re::ResourceSharingManager::Subscription>>,true,false>::addAsCopy(result, v8, v6, a2);
  ++*(v3 + 40);
  return result;
}

void re::make::shared::object<re::internal::ResourceRequestQueue>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 80, 8);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  ArcSharedObject::ArcSharedObject(v4, 0);
  *v4 = &unk_1F5CBCE78;
  *(v4 + 24) = 0;
  *(v4 + 64) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 32) = 0;
  *(v4 + 56) = 0;
  *(v4 + 72) = 0;
  *a2 = v4;
}

void re::internal::ResourceRequestQueue::~ResourceRequestQueue(re::internal::ResourceRequestQueue *this)
{
  *this = &unk_1F5CBCE78;
  re::DynamicArray<re::ObjCObject>::deinit(this + 32);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CBCE78;
  re::DynamicArray<re::ObjCObject>::deinit(this + 32);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *re::DynamicArray<re::ResourceSharingManager::Connection>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ResourceSharingManager::Connection>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xA8uLL))
        {
          v2 = 168 * a2;
          result = (*(*result + 32))(result, 168 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 168, a2);
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
        v10 = (v8 + 168 * v9);
        v11 = v7;
        do
        {
          v12 = *v8;
          *v8 = 0;
          *(v8 + 1) = 0;
          *v11 = v12;
          v11[2] = *(v8 + 2);
          *(v11 + 5) = 0u;
          *(v11 + 14) = 0;
          *(v11 + 3) = 0u;
          *(v11 + 60) = 0x7FFFFFFFLL;
          re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap(v11 + 3, v8 + 3);
          *(v11 + 26) = 0;
          *(v11 + 11) = 0u;
          *(v11 + 9) = 0u;
          *(v11 + 108) = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v11 + 9, v8 + 9);
          *(v11 + 15) = 0u;
          v13 = v11 + 15;
          *(v13 + 8) = 0;
          *(v13 + 1) = 0u;
          *(v13 + 36) = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v13, v8 + 15);
          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v8 + 15);
          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v8 + 9);
          re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(v8 + 3);

          v14 = *v8;
          v8 = (v8 + 168);

          v11 = v13 + 6;
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

uint64_t re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator=(uint64_t a1, uint64_t a2)
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
      re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(a1);
      if (*a2)
      {
        v5 = *(a2 + 28);
        if (*(a1 + 24) < v5)
        {
          re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, v5);
        }

        re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, a2);
        ++*(a1 + 40);
      }
    }
  }

  return a1;
}

void re::HashSetBase<re::SharedPtr<re::ResourceSharingManager::Subscription>,re::SharedPtr<re::ResourceSharingManager::Subscription>,re::internal::ValueAsKey<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::Hash<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::EqualTo<re::SharedPtr<re::ResourceSharingManager::Subscription>>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v22, 0, 36);
      *&v22[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(v22, v4, a2);
      v5 = *a1;
      *a1 = *v22;
      v6 = *(a1 + 16);
      v7 = *&v22[8];
      *v22 = v5;
      *&v22[16] = v6;
      *(a1 + 8) = v7;
      v9 = *&v22[24];
      *&v22[24] = *(a1 + 24);
      v8 = *&v22[32];
      *(a1 + 24) = v9;
      v10 = v8;
      if (v8)
      {
        v11 = DWORD1(v9);
        v12 = v7;
        v13 = (v6 + 16);
        do
        {
          if ((*(v13 - 1) & 0x80000000) != 0)
          {
            v14 = *(v13 - 2);
            v15 = *(a1 + 24);
            v16 = v14 % v15;
            v17 = *(a1 + 36);
            if (v17 == 0x7FFFFFFF)
            {
              v17 = *(a1 + 32);
              v18 = v17;
              if (v17 == v15)
              {
                re::HashSetBase<re::SharedPtr<re::ResourceSharingManager::Subscription>,re::SharedPtr<re::ResourceSharingManager::Subscription>,re::internal::ValueAsKey<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::Hash<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::EqualTo<re::SharedPtr<re::ResourceSharingManager::Subscription>>,true,false>::setCapacity(a1, (2 * v11));
                v16 = v14 % *(a1 + 24);
                v18 = *(a1 + 32);
                v12 = *(a1 + 8);
              }

              *(a1 + 32) = v18 + 1;
              v19 = *(a1 + 16);
              v20 = *(v19 + 24 * v17 + 8);
            }

            else
            {
              v19 = *(a1 + 16);
              v20 = *(v19 + 24 * v17 + 8);
              *(a1 + 36) = v20 & 0x7FFFFFFF;
            }

            *(v19 + 24 * v17 + 8) = v20 | 0x80000000;
            *(*(a1 + 16) + 24 * v17 + 8) = *(*(a1 + 16) + 24 * v17 + 8) & 0x80000000 | *(v12 + 4 * v16);
            *(*(a1 + 16) + 24 * v17) = v14;
            *(*(a1 + 16) + 24 * v17 + 16) = *v13;
            *v13 = 0;
            *(v12 + 4 * v16) = v17;
            v11 = *(a1 + 28) + 1;
            *(a1 + 28) = v11;
          }

          v13 += 3;
          --v10;
        }

        while (v10);
      }

      re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(v22);
    }
  }

  else
  {
    if (a2)
    {
      v21 = a2;
    }

    else
    {
      v21 = 3;
    }
  }
}

uint64_t re::HashSetBase<re::SharedPtr<re::ResourceSharingManager::Subscription>,re::SharedPtr<re::ResourceSharingManager::Subscription>,re::internal::ValueAsKey<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::Hash<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::EqualTo<re::SharedPtr<re::ResourceSharingManager::Subscription>>,true,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t *a4)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<re::SharedPtr<re::ResourceSharingManager::Subscription>,re::SharedPtr<re::ResourceSharingManager::Subscription>,re::internal::ValueAsKey<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::Hash<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::EqualTo<re::SharedPtr<re::ResourceSharingManager::Subscription>>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v9 = *(a1 + 32);
    }

    *(a1 + 32) = v9 + 1;
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v8 + 8);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v8 + 8);
    *(a1 + 36) = v11 & 0x7FFFFFFF;
  }

  *(v10 + 24 * v8 + 8) = v11 | 0x80000000;
  v12 = *(a1 + 8);
  *(*(a1 + 16) + 24 * v8 + 8) = *(*(a1 + 16) + 24 * v8 + 8) & 0x80000000 | *(v12 + 4 * a2);
  *(*(a1 + 16) + 24 * v8) = a3;
  v13 = *a4;
  *(*(a1 + 16) + 24 * v8 + 16) = *a4;
  if (v13)
  {
    v14 = (v13 + 8);
    v12 = *(a1 + 8);
  }

  *(v12 + 4 * a2) = v8;
  ++*(a1 + 28);
  return v8;
}

void re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
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
      re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, v9);
      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v9);
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

uint64_t re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4, *(v7 + v5 + 24) % *(v4 + 24), *(v7 + v5 + 24));
        v7 = *(a2 + 16);
        *(result + 8) = *(v7 + v5 + 8);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 32;
    }

    while (v6 < v2);
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 32 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v9 + 24) = a3;
  *(v10 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v7 + 32 * v5;
}

void *re::DynamicArray<REResourceSharingClientObject * {__strong}>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<REResourceSharingClientObject * {__strong}>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 61)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 8, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 8 * a2;
          result = (*(*result + 32))(result, 8 * a2, 8);
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
        v10 = 8 * v9;
        v11 = v7;
        do
        {
          *v11++ = *v8;
          v12 = *v8++;

          v10 -= 8;
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

void *std::__function::__func<re::ResourceSharingManager::createAssetLoadRequest(re::SharedPtr<re::ResourceSharingManager::Subscription> const&,re::AssetHandle const&)::$_0,std::allocator<re::ResourceSharingManager::createAssetLoadRequest(re::SharedPtr<re::ResourceSharingManager::Subscription> const&,re::AssetHandle const&)::$_0>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F5CBCEC0;
  v2 = a1[2];
  if (v2)
  {

    a1[2] = 0;
  }

  return a1;
}

void std::__function::__func<re::ResourceSharingManager::createAssetLoadRequest(re::SharedPtr<re::ResourceSharingManager::Subscription> const&,re::AssetHandle const&)::$_0,std::allocator<re::ResourceSharingManager::createAssetLoadRequest(re::SharedPtr<re::ResourceSharingManager::Subscription> const&,re::AssetHandle const&)::$_0>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F5CBCEC0;
  v2 = a1[2];
  if (v2)
  {

    a1[2] = 0;
  }

  JUMPOUT(0x1E6906520);
}

void *std::__function::__func<re::ResourceSharingManager::createAssetLoadRequest(re::SharedPtr<re::ResourceSharingManager::Subscription> const&,re::AssetHandle const&)::$_0,std::allocator<re::ResourceSharingManager::createAssetLoadRequest(re::SharedPtr<re::ResourceSharingManager::Subscription> const&,re::AssetHandle const&)::$_0>,void ()(BOOL)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_1F5CBCEC0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    return (v2 + 8);
  }

  return result;
}

void std::__function::__func<re::ResourceSharingManager::createAssetLoadRequest(re::SharedPtr<re::ResourceSharingManager::Subscription> const&,re::AssetHandle const&)::$_0,std::allocator<re::ResourceSharingManager::createAssetLoadRequest(re::SharedPtr<re::ResourceSharingManager::Subscription> const&,re::AssetHandle const&)::$_0>,void ()(BOOL)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {

    *(a1 + 16) = 0;
  }
}

void std::__function::__func<re::ResourceSharingManager::createAssetLoadRequest(re::SharedPtr<re::ResourceSharingManager::Subscription> const&,re::AssetHandle const&)::$_0,std::allocator<re::ResourceSharingManager::createAssetLoadRequest(re::SharedPtr<re::ResourceSharingManager::Subscription> const&,re::AssetHandle const&)::$_0>,void ()(BOOL)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
  }

  operator delete(__p);
}

uint64_t std::__function::__func<re::ResourceSharingManager::createAssetLoadRequest(re::SharedPtr<re::ResourceSharingManager::Subscription> const&,re::AssetHandle const&)::$_0,std::allocator<re::ResourceSharingManager::createAssetLoadRequest(re::SharedPtr<re::ResourceSharingManager::Subscription> const&,re::AssetHandle const&)::$_0>,void ()(BOOL)>::operator()(_anonymous_namespace_ *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *(a1 + 1);
  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x5012000000;
  v59[3] = __Block_byref_object_copy__160;
  v59[4] = __Block_byref_object_dispose__161;
  v59[5] = "";
  v60 = 0u;
  v61 = 0u;
  re::DynamicString::setCapacity(&v60, 0);
  v50 = 0;
  v51 = &v50;
  v52 = 0x5812000000;
  v53 = __Block_byref_object_copy__163;
  v54 = __Block_byref_object_dispose__164;
  v55 = "";
  v58 = 0;
  memset(v56, 0, sizeof(v56));
  v57 = 0;
  v5 = *(v4 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZZN2re22ResourceSharingManager22createAssetLoadRequestERKNS_9SharedPtrINS0_12SubscriptionEEERKNS_11AssetHandleEENK3__0clEb_block_invoke;
  block[3] = &unk_1F5CBCF28;
  v25 = a1;
  v6 = *(a1 + 2);
  v49 = v6;
  if (v6)
  {
    v7 = (v6 + 8);
  }

  block[4] = v59;
  block[5] = &v50;
  dispatch_sync(v5, block);

  (*(**(v4 + 24) + 112))(&v46);
  if (v3 && v46 == 1)
  {
    re::ResourceSharingManager::makeFetchRequestResult(v44, v4, v47);
  }

  else
  {
    re::ResourceSharingManager::makeFetchRequestError(v44);
  }

  v8 = v44[0];
  v9 = v51[10];
  v10 = v51[8];
  if (v44[0])
  {
    if (v10)
    {
      v11 = v45;
      v12 = 8 * v10;
      do
      {
        v13 = *v9;
        if (*v9)
        {
          v14 = (v13 + 8);
        }

        v38 = 0;
        v39 = &v38;
        v40 = 0x3032000000;
        v41 = __Block_byref_object_copy__90;
        v42 = __Block_byref_object_dispose__91;
        v43 = 0;
        v32 = 0;
        v33 = &v32;
        v34 = 0x3032000000;
        v35 = __Block_byref_object_copy__90;
        v36 = __Block_byref_object_dispose__91;
        v37 = 0;
        v15 = *(v4 + 40);
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3321888768;
        v27[2] = ___ZZN2re22ResourceSharingManager22createAssetLoadRequestERKNS_9SharedPtrINS0_12SubscriptionEEERKNS_11AssetHandleEENK3__0clEb_block_invoke_166;
        v27[3] = &unk_1F5CBCF60;
        v27[6] = v4;
        v28 = v13;
        if (v13)
        {
          v16 = (v13 + 8);
        }

        v17 = *(v25 + 2);
        v29 = v17;
        if (v17)
        {
          v18 = (v17 + 8);
        }

        v30 = v8;
        v31 = v11;
        v27[4] = &v38;
        v27[5] = &v32;
        dispatch_sync(v15, v27);

        v19 = *(v13 + 24);
        v20 = v39[5];
        v26 = v20;

        if (v29)
        {

          v29 = 0;
        }

        if (v28)
        {

          v28 = 0;
        }

        _Block_object_dispose(&v32, 8);

        _Block_object_dispose(&v38, 8);
        ++v9;
        v12 -= 8;
      }

      while (v12);
    }
  }

  else if (v10)
  {
    v21 = 8 * v10;
    do
    {
      v22 = *v9;
      if (*v9)
      {
        v23 = (v22 + 8);
      }

      ++v9;
      v21 -= 8;
    }

    while (v21);
  }

  if (v46 == 1)
  {
    re::AssetHandle::~AssetHandle(v47);
  }

  if (v49)
  {

    v49 = 0;
  }

  _Block_object_dispose(&v50, 8);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v56);
  _Block_object_dispose(v59, 8);
  result = v60;
  if (v60)
  {
    if (BYTE8(v60))
    {
      return (*(*v60 + 40))(v60, v61);
    }
  }

  return result;
}

uint64_t std::__function::__func<re::ResourceSharingManager::createAssetLoadRequest(re::SharedPtr<re::ResourceSharingManager::Subscription> const&,re::AssetHandle const&)::$_0,std::allocator<re::ResourceSharingManager::createAssetLoadRequest(re::SharedPtr<re::ResourceSharingManager::Subscription> const&,re::AssetHandle const&)::$_0>,void ()(BOOL)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double __Block_byref_object_copy__160(uint64_t a1, void *a2)
{
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 72) = a2[9];
  v3 = a2[7];
  *(a1 + 48) = a2[6];
  a2[6] = 0;
  v4 = a2[8];
  a2[9] = 0;
  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  *(a1 + 56) = v3;
  *(a1 + 64) = v4;
  a2[7] = v6;
  a2[8] = v5;
  return result;
}

uint64_t __Block_byref_object_copy__163(uint64_t result, uint64_t a2)
{
  *(result + 80) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  *(result + 72) = 0;
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v3 = *(result + 64);
  *(result + 64) = *(a2 + 64);
  *(a2 + 64) = v3;
  v4 = *(result + 80);
  *(result + 80) = *(a2 + 80);
  *(a2 + 80) = v4;
  ++*(a2 + 72);
  ++*(result + 72);
  return result;
}

void ___ZZN2re22ResourceSharingManager22createAssetLoadRequestERKNS_9SharedPtrINS0_12SubscriptionEEERKNS_11AssetHandleEENK3__0clEb_block_invoke(void *a1)
{
  re::DynamicString::operator=((*(a1[4] + 8) + 48), (a1[6] + 24));
  v2 = a1[6];
  v3 = (v2 + 120);
  v4 = *(a1[5] + 8);
  if (v4 + 48 != v2 + 120)
  {
    v5 = *v3;
    if (*(v4 + 48))
    {
      v6 = (v4 + 48);
      if (v5)
      {
        re::DynamicArray<re::SharedPtr<re::ResourceSharingManager::Completion>>::copy(v6, v2 + 120);
        ++*(v4 + 72);
      }

      else
      {
        re::DynamicArray<re::SharedPtr<re::ResourceSharingManager::Completion>>::clear(v6);
      }
    }

    else if (v5)
    {
      v7 = *(v2 + 136);
      *(v4 + 48) = v5;
      re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity((v4 + 48), v7);
      ++*(v4 + 72);
      re::DynamicArray<re::SharedPtr<re::ResourceSharingManager::Completion>>::copy((v4 + 48), v3);
    }
  }

  v8 = a1[6];
  v9 = *(v8 + 112);
  if (v9)
  {

    *(v8 + 112) = 0;
    v8 = a1[6];
  }

  re::DynamicArray<re::SharedPtr<re::ResourceSharingManager::Completion>>::clear(v8 + 120);
}

void re::DynamicArray<re::SharedPtr<re::ResourceSharingManager::Completion>>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 8 * v2;
    do
    {
      if (*v3)
      {

        *v3 = 0;
      }

      v3 += 8;
      v4 -= 8;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

void *__copy_helper_block_a8_48c65_ZTSRKN2re9SharedPtrINS_22ResourceSharingManager12SubscriptionEEE(void *result, uint64_t a2)
{
  v2 = *(a2 + 48);
  result[6] = v2;
  if (v2)
  {
    return (v2 + 8);
  }

  return result;
}

void ___ZZN2re22ResourceSharingManager22createAssetLoadRequestERKNS_9SharedPtrINS0_12SubscriptionEEERKNS_11AssetHandleEENK3__0clEb_block_invoke_166(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 56) + 32);
  v4 = *(a1 + 64);
  v8[0] = *(a1 + 72);
  v9 = *(a1 + 80);
  re::ResourceSharingManager::validateResult(v10, v2, v3, v4, v8);

  if (*(a1 + 72) == 1)
  {
    v5 = *(a1 + 80);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), v5);
  if (*(a1 + 72))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a1 + 80);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v6);

  v7 = v11;
}

id __copy_helper_block_a8_56c61_ZTSN2re9SharedPtrINS_22ResourceSharingManager10CompletionEEE64c65_ZTSRKN2re9SharedPtrINS_22ResourceSharingManager12SubscriptionEEE72c63_ZTSN2re6ResultINS_21SharedResourcePayloadENS_12WrappedErrorEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  *(a1 + 56) = v4;
  if (v4)
  {
    v5 = (v4 + 8);
  }

  v6 = *(a2 + 64);
  *(a1 + 64) = v6;
  if (v6)
  {
    v7 = (v6 + 8);
  }

  *(a1 + 72) = *(a2 + 72);
  result = *(a2 + 80);
  *(a1 + 80) = result;
  return result;
}

void __destroy_helper_block_a8_56c61_ZTSN2re9SharedPtrINS_22ResourceSharingManager10CompletionEEE64c65_ZTSRKN2re9SharedPtrINS_22ResourceSharingManager12SubscriptionEEE72c63_ZTSN2re6ResultINS_21SharedResourcePayloadENS_12WrappedErrorEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {

    *(a1 + 56) = 0;
  }
}

void re::DynamicArray<re::SharedPtr<re::ResourceSharingManager::Completion>>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(a1, *(a2 + 16));
    v12 = *(a2 + 32);
    v13 = a1[2];
    v14 = a1[4];
    if (v13)
    {
      v15 = 8 * v13;
      do
      {
        v16 = *v12++;
        re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v14++, v16);
        v15 -= 8;
      }

      while (v15);
      v14 = a1[4];
      v13 = a1[2];
      v12 = *(a2 + 32);
    }

    if (v13 != v4)
    {
      v17 = &v12[v13];
      v18 = &v14[v13];
      v19 = 8 * v4 - 8 * v13;
      do
      {
        v20 = *v17;
        *v18 = *v17;
        if (v20)
        {
          v21 = (v20 + 8);
        }

        ++v17;
        ++v18;
        v19 -= 8;
      }

      while (v19);
    }
  }

  else
  {
    v6 = a1[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 8 * v4;
      do
      {
        v9 = *v7++;
        re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v6++, v9);
        v8 -= 8;
      }

      while (v8);
      v6 = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      v10 = &v6[v4];
      v11 = 8 * v5 - 8 * v4;
      do
      {
        if (*v10)
        {

          *v10 = 0;
        }

        ++v10;
        v11 -= 8;
      }

      while (v11);
    }
  }

  a1[2] = v4;
}

void re::ResourceSharingManager::Subscription::~Subscription(re::ResourceSharingManager::Subscription *this)
{
  re::ResourceSharingManager::Subscription::~Subscription(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5CBCFB0;
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(this + 120);
  v2 = *(this + 14);
  if (v2)
  {

    *(this + 14) = 0;
  }

  v3 = *(this + 9);
  if (v3)
  {
    v4 = *(this + 13);
    if (v4)
    {
      v5 = *(this + 11);
      if (v5)
      {
        v6 = 8 * v5;
        do
        {
          v7 = *v4++;

          v6 -= 8;
        }

        while (v6);
        v3 = *(this + 9);
        v4 = *(this + 13);
      }

      (*(*v3 + 40))(v3, v4);
    }

    *(this + 13) = 0;
    *(this + 10) = 0;
    *(this + 11) = 0;
    *(this + 9) = 0;
    ++*(this + 24);
  }

  re::DynamicString::deinit((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

void re::ResourceSharingManager::Completion::~Completion(id *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);
}

{

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);

  JUMPOUT(0x1E6906520);
}

void *re::allocInfo_DynamicAssetHeader(re *this)
{
  if ((atomic_load_explicit(&qword_1EE193AA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193AA8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE193B58, "DynamicAssetHeader");
    __cxa_guard_release(&qword_1EE193AA8);
  }

  return &unk_1EE193B58;
}

void re::initInfo_DynamicAssetHeader(re *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x8CA13F8BC694F7FCLL;
  v10[1] = "DynamicAssetHeader";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE193AB8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE193AB8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::introspect_AssetSerializationFormat(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "assetSerializationFormat";
      *(v8 + 16) = &qword_1EE193B10;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE193AB0 = v8;
      __cxa_guard_release(&qword_1EE193AB8);
    }
  }

  *(this + 2) = 0x400000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE193AB0;
  *(this + 9) = re::internal::defaultConstruct<re::DynamicAssetHeader>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::DynamicAssetHeader>;
  *(this + 13) = re::internal::defaultConstructV2<re::DynamicAssetHeader>;
  *(this + 14) = re::internal::defaultDestructV2<re::DynamicAssetHeader>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void re::introspect_AssetSerializationFormat(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE193AD0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE193AD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193AD8))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE193B10, "AssetSerializationFormat", 4, 4, 1, 1);
      qword_1EE193B10 = &unk_1F5D0C658;
      qword_1EE193B50 = &re::introspect_AssetSerializationFormat(BOOL)::enumTable;
      dword_1EE193B20 = 9;
      __cxa_guard_release(&qword_1EE193AD8);
    }

    if (_MergedGlobals_57)
    {
      break;
    }

    _MergedGlobals_57 = 1;
    re::IntrospectionRegistry::add(&qword_1EE193B10, a2);
    v37 = 0x69029CD6B845AE2ELL;
    v38 = "AssetSerializationFormat";
    v41 = 208862;
    v42 = "int";
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
      v6 = qword_1EE193B50;
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
      xmmword_1EE193B30 = v39;
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
    v28 = __cxa_guard_acquire(&qword_1EE193AD0);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Unknown";
      qword_1EE193AF0 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "JSON";
      qword_1EE193AF8 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 2;
      *(v34 + 2) = "Binary";
      qword_1EE193B00 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 8) = 3;
      *(v36 + 16) = "OPACK";
      qword_1EE193B08 = v36;
      __cxa_guard_release(&qword_1EE193AD0);
    }
  }
}

void re::AssetUtilities::init(re::AssetUtilities *this)
{
  if ((atomic_load_explicit(&qword_1EE193AE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193AE8))
  {
    qword_1EE193AE0 = re::internal::getOrCreateInfo("DynamicAssetHeader", re::allocInfo_DynamicAssetHeader, re::initInfo_DynamicAssetHeader, &unk_1EE193AC0, 0);

    __cxa_guard_release(&qword_1EE193AE8);
  }
}

uint64_t re::AssetUtilities::deserializeOPACK(uint64_t a1, uint64_t a2, re **a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v54[6] = *MEMORY[0x1E69E9840];
  re::IntrospectionSharedLock::IntrospectionSharedLock(&v26);
  if (v24[0])
  {
    re::AssetOPACKDeserializer::AssetOPACKDeserializer(&v36);
    v42[14] = a4;
    re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::open(&v36, a1, a5, a6);
    if (v40 != 1)
    {
      (v36[9])(&v36, "asset", 1, a2, v25, v25, 0);
    }

    (v36[7])(&v36);
    v15 = re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::close(&v39);
    v16 = v40;
    if (v40 == 1)
    {
      v17 = *re::assetsLogObjects(v15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v22 = re::TypeInfo::name(v25)[1];
        buf[0] = v40;
        if (v40)
        {
          *&v28[4] = v41;
          re::DynamicString::DynamicString(&v29, v42);
          v23 = (v30 & 1) != 0 ? *&v31[7] : v31;
        }

        else
        {
          v23 = v31;
        }

        *v32 = 136315394;
        v33 = v22;
        v34 = 2080;
        v35 = v23;
        _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "Asset deserialization failed. Type %s. Details: %s", v32, 0x16u);
        if (buf[0] == 1 && v29 && (v30 & 1) != 0)
        {
          (*(*v29 + 40))();
        }
      }
    }

    v36 = off_1F5CBAD70;
    v18 = re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(v54);
    if (v49)
    {
      if (v53)
      {
        (*(*v49 + 40))(v18);
      }

      v53 = 0;
      v50 = 0;
      v51 = 0;
      v49 = 0;
      ++v52;
    }

    v14 = v16 ^ 1u;
    v19 = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v48);
    if (v43)
    {
      if (v47)
      {
        (*(*v43 + 40))(v19);
      }

      v47 = 0;
      v44 = 0;
      v45 = 0;
      v43 = 0;
      ++v46;
    }

    re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::~Serializer(&v36);
  }

  else
  {
    PrettyTypeName = re::getPrettyTypeName(a3, &v36);
    v13 = *re::assetsLogObjects(PrettyTypeName);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      if (v37)
      {
        v21 = *&v38[7];
      }

      else
      {
        v21 = v38;
      }

      *buf = 136315138;
      *v28 = v21;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Asset serialization failed. Type info (%s) not found.", buf, 0xCu);
    }

    if (v36 && (v37 & 1) != 0)
    {
      (*(*v36 + 5))();
    }

    v14 = 0;
  }

  re::IntrospectionSharedLock::~IntrospectionSharedLock(&v26);
  return v14;
}

uint64_t re::AssetUtilities::serializeIntrospectedAsset(_anonymous_namespace_ *a1, const re::IntrospectionBase **a2, const re::AssetPath *a3, uint64_t a4, int a5, const re::AssetPathMapping *a6, char a7)
{
  re::RemappedAssetSerialize::RemappedAssetSerialize(&v24, a3, a6);
  v24 = &unk_1F5CB9600;
  v30 = a7;
  v22 = 0u;
  v23 = 0u;
  v21 = &v24;
  if (a5 == 3)
  {
LABEL_9:
    if (v18[0] & 1) == 0 && v19 && (v20)
    {
      (*(*v19 + 40))();
    }

    goto LABEL_13;
  }

  if (a5 != 2)
  {
    if (a5 != 1)
    {
      re::internal::assertLog(4, v15, "assertion failure: '%s' (%s:line %i) Invalid asset serialization format.", "!Unreachable code", "serializeIntrospectedAsset", 383);
      result = _os_crash();
      __break(1u);
      return result;
    }

    goto LABEL_9;
  }

  if (*(a4 + 16) == 8 && !strcmp(*(a4 + 48), "SceneAsset"))
  {
    goto LABEL_9;
  }

LABEL_13:
  v24 = &unk_1F5CB95D0;
  if (v25 == 1)
  {
    if (v28)
    {
      if (BYTE8(v28))
      {
        (*(*v28 + 40))();
      }

      v29 = 0u;
      v28 = 0u;
    }

    if (v26)
    {
      if (v27)
      {
        (*(*v26 + 40))();
      }
    }
  }

  return v16;
}

uint64_t anonymous namespace::unwrap(re *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if ((*a1 & 1) == 0)
  {
    v2 = *re::assetsLogObjects(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 2))
      {
        v4 = *(a1 + 3);
      }

      else
      {
        v4 = a1 + 17;
      }

      v5 = 136446210;
      v6 = v4;
      _os_log_error_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_ERROR, "%{public}s", &v5, 0xCu);
    }
  }

  return *a1;
}

uint64_t deserializeIntrospectedAssetWithVersioning@<X0>(re *a1@<X0>, const char **a2@<X1>, uint64_t *a3@<X2>, re::PersistedSchema *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v50 = *MEMORY[0x1E69E9840];
  if (*a8 == 1)
  {
    v17 = *(a8 + 8);
  }

  else
  {
    v17 = 0;
  }

  re::AssetSignpost::ScopeGuard::ScopeGuard(v45, 2054, v17, *a2);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v45);
  v19 = a5;
  if (!a4)
  {
    goto LABEL_12;
  }

  re::getPrettyTypeName(a5, &v39);
  if (BYTE8(v39))
  {
    v20 = v40;
  }

  else
  {
    v20 = &v39 + 9;
  }

  v21 = re::PersistedSchema::introspectionInfo(a4, v20);
  if (v21)
  {
    v19 = v21;
    if (v39 && (BYTE8(v39) & 1) != 0)
    {
      (*(*v39 + 40))();
    }

LABEL_12:
    v47 = 0;
    v48 = 0;
    *buf = a6;
    *&buf[8] = 0;
    v49 = deserializeIntrospectedAssetWithVersioning(re::SeekableInputStream &,re::AssetType const&,re::AssetLoadData const&,re::PersistedSchema const*,re::IntrospectionBase const&,re::AssetSerializationScheme &,re::AssetSerializationFormat,re::Optional<unsigned long long>)::$_0::__invoke;
    v22 = *a3;
    *&v39 = a2;
    v23 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v22, &v39);
    (*(**v23 + 128))(*v23);
    v24 = *v23;
    v26 = (*(*v24 + 136))(v24);
    if (a7 == 3)
    {
    }

    else
    {
      if (a7 != 2)
      {
        re::internal::assertLog(4, v25, "assertion failure: '%s' (%s:line %i) Unexpected asset serialization format.", "!Unreachable code", "deserializeIntrospectedAssetWithVersioning", 468);
        result = _os_crash();
        __break(1u);
        return result;
      }

      if (*(a5 + 16) != 8 || strcmp(*(a5 + 48), "SceneAsset"))
      {
        *&v39 = &unk_1F5D0AE00;
        *(&v39 + 1) = a1;
        v40 = 0;
        LODWORD(v41) = 0;
        v42 = 0;
        v43 = (*(*a1 + 40))(a1);
        v44 = 0;
        v28 = result;
        if (v41)
        {
          result = (*(**(&v39 + 1) + 24))(*(&v39 + 1));
        }

LABEL_23:
        if (v28)
        {
          *a9 = 1;
          *(a9 + 8) = v26;
        }

        else
        {
          v29 = (*(*v24 + 16))(v24, v26);
          v30 = v39;
          v31 = v40;
          v32 = v41;
          *a9 = 0;
          *(a9 + 8) = v30;
          *(a9 + 24) = v31;
          *(a9 + 32) = v32;
        }

        return result;
      }
    }

    v28 = result;
    if ((v39 & 1) == 0)
    {
      result = *(&v39 + 1);
      if (*(&v39 + 1))
      {
        if (v40)
        {
          result = (*(**(&v39 + 1) + 40))();
        }
      }
    }

    goto LABEL_23;
  }

  v33 = *re::assetsLogObjects(0);
  v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
  if (v34)
  {
    if (BYTE8(v39))
    {
      v38 = v40;
    }

    else
    {
      v38 = &v39 + 9;
    }

    *buf = 136315138;
    *&buf[4] = v38;
    _os_log_error_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_ERROR, "Failed to find asset schema '%s'", buf, 0xCu);
  }

  v35 = *buf;
  v36 = v47;
  v37 = v48;
  *a9 = 0;
  *(a9 + 8) = v35;
  *(a9 + 24) = v36;
  *(a9 + 32) = v37;
  result = v39;
  if (v39 && (BYTE8(v39) & 1) != 0)
  {
    return (*(*v39 + 40))();
  }

  return result;
}

uint64_t re::AssetUtilities::deserializeIntrospectedAsset(re *a1, const char **a2, uint64_t *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v8[0] = *a7;
  if (v8[0] == 1)
  {
    v9 = *(a7 + 8);
  }

  deserializeIntrospectedAssetWithVersioning(a1, a2, a3, 0, a4, a5, a6, v8, v10);
  result = v11;
  if ((v10[0] & 1) == 0 && v11)
  {
    if (v12)
    {
      (*(*v11 + 40))();
    }

    return 0;
  }

  return result;
}

__n128 re::AssetUtilities::saveAssetHandleToPath@<Q0>(re::AssetHandle *this@<X1>, re::FileStreamWriter *a2@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = *(this + 1);
  if (!v8)
  {
    v11 = 0;
    v9 = 0;
    goto LABEL_5;
  }

  v9 = *(v8 + 280);
  v10 = atomic_load((v8 + 896));
  if (v10 != 2)
  {
    v11 = *(this + 1);
LABEL_5:
    re::AssetHandle::loadNow(v11, 0);
  }

  v12 = *(this + 1);
  if (v12 && (v13 = atomic_load((v12 + 896)), v13 == 2))
  {
    re::AssetHandle::serializableAsset(this, &v21);
    v14 = v21.n128_u64[0];
    v15 = re::AssetHandle::legacy_assetPath(this);
    re::AssetUtilities::saveCompiledAssetToPath(a2, v14, v15, v9, a3, a4);
    std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v21);
  }

  else
  {
    v17 = re::AssetHandle::assetInfo(this);
    if (v17[17])
    {
      v18 = v17[18];
    }

    else
    {
      v18 = v17 + 137;
    }

    re::DynamicString::format("Asset '%s' failed to load", &v21, v18);
    result = v21;
    v19 = v22;
    v20 = v23;
    *a4 = 0;
    *(a4 + 8) = result;
    *(a4 + 24) = v19;
    *(a4 + 32) = v20;
  }

  return result;
}

uint64_t re::AssetUtilities::saveCompiledAssetToPath@<X0>(re::FileStreamWriter *a1@<X0>, const re::IntrospectionBase **a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (re::ensureFolderExistsForFile(a1, a2))
  {
    re::FileStreamWriter::open(a1, &v22);
    if (v22)
    {
      v12.n128_f64[0] = re::AssetUtilities::saveCompiledAssetToStream(&v22 + 8, a2, a3, a4, a5, a6);
    }

    else
    {
      re::formattedErrorMessage<re::DetailedError>(&v22 + 8, &v19);
      v12 = v19;
      v17 = v20;
      v18 = v21;
      *a6 = 0;
      *(a6 + 8) = v12;
      *(a6 + 24) = v17;
      *(a6 + 32) = v18;
    }

    if (v22 == 1)
    {
      result = v23;
      if (v23)
      {
        if (v24 == 1)
        {
          return fclose(v23);
        }
      }
    }

    else
    {
      result = v24;
      if (v24 && (v25 & 1) != 0)
      {
        return (*(*v24 + 40))(v12);
      }
    }
  }

  else
  {
    result = re::DynamicString::format("Failed to create directory for '%s'", &v22, a1);
    v14 = v22;
    v15 = v23;
    v16 = v24;
    *a6 = 0;
    *(a6 + 8) = v14;
    *(a6 + 24) = v15;
    *(a6 + 32) = v16;
  }

  return result;
}

double re::AssetUtilities::saveCompiledAssetToStream@<D0>(uint64_t a1@<X0>, const re::IntrospectionBase **a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  re::AssetUtilities::saveCompiledAssetToStreamChunked(a1, a2, a3, a4, a5, v11);
  if (v11[0] == 1)
  {
    *a6 = v11[0];
  }

  else
  {
    re::DynamicString::DynamicString(&v8, v12);
    *a6 = 0;
    *(a6 + 8) = v8;
    *(a6 + 32) = v10;
    result = *&v9;
    *(a6 + 16) = v9;
    if ((v11[0] & 1) == 0)
    {
      return re::DynamicString::deinit(v12);
    }
  }

  if (v12[0])
  {
    if (v12[4])
    {
      (*(*v12[0] + 40))();
    }

    memset(v12, 0, 24);
  }

  return result;
}

__n128 re::AssetUtilities::saveAssetHandleToStream@<Q0>(re::AssetHandle *this@<X1>, uint64_t a2@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = *(this + 1);
  if (!v8)
  {
    v11 = 0;
    v9 = 0;
    goto LABEL_5;
  }

  v9 = *(v8 + 280);
  v10 = atomic_load((v8 + 896));
  if (v10 != 2)
  {
    v11 = *(this + 1);
LABEL_5:
    re::AssetHandle::loadNow(v11, 0);
  }

  v12 = *(this + 1);
  if (v12 && (v13 = atomic_load((v12 + 896)), v13 == 2))
  {
    re::AssetHandle::serializableAsset(this, &v21);
    v14 = v21.n128_u64[0];
    v15 = re::AssetHandle::legacy_assetPath(this);
    re::AssetUtilities::saveCompiledAssetToStream(a2, v14, v15, v9, a3, a4);
    std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v21);
  }

  else
  {
    v17 = re::AssetHandle::assetInfo(this);
    if (v17[17])
    {
      v18 = v17[18];
    }

    else
    {
      v18 = v17 + 137;
    }

    re::DynamicString::format("Asset '%s' failed to load", &v21, v18);
    result = v21;
    v19 = v22;
    v20 = v23;
    *a4 = 0;
    *(a4 + 8) = result;
    *(a4 + 24) = v19;
    *(a4 + 32) = v20;
  }

  return result;
}

uint64_t re::AssetUtilities::saveCompiledAssetToStreamChunked@<X0>(uint64_t a1@<X0>, const re::IntrospectionBase **a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v138 = *MEMORY[0x1E69E9840];
  v12 = **a5;
  buf[0].n128_u64[0] = a4;
  v13 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v12, buf);
  (*(**v13 + 128))(*v13);
  v14 = *v13;
  v15 = (*(*v14 + 128))(v14);
  v16 = (*(*v14 + 144))(v14, a2);
  v17 = v16;
  if (v16 == 1)
  {
    v18 = *re::assetsLogObjects(v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *a4;
      buf[0].n128_u32[0] = 136315138;
      *(buf[0].n128_u64 + 4) = v19;
      _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "Asset may not be fully serialized. Type %s", buf, 0xCu);
    }
  }

  v112 = 0;
  v109[1] = 0;
  v110 = 0;
  v109[0] = 0;
  v111 = 0;
  v20 = *(a5 + 32);
  if (v20 == 2)
  {
    LODWORD(v114) = 0;
    memset(buf, 0, sizeof(buf));
    *(&v114 + 4) = 0x7FFFFFFFLL;
    re::PersistedSchema::addIntrospectionGraph(buf, v15);
    *v67 = &unk_1F5D0A7B0;
    *&v67[8] = v109;
    *&v67[16] = 0;
    if ((v73 & 1) == 0)
    {
      re::DynamicString::DynamicString(v67, &v74);
      *a6 = 0;
      *(a6 + 8) = *v67;
      *(a6 + 32) = v68;
      *(a6 + 16) = *&v67[8];
      if (v73 & 1) == 0 && v74 && (v75)
      {
        (*(*v74 + 40))();
      }

      v25.n128_f64[0] = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(buf);
      goto LABEL_92;
    }

    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(buf);
    v20 = *(a5 + 32);
  }

  v108 = 0;
  v105[1] = 0;
  v106 = 0;
  v104[2] = 0;
  v105[0] = 0;
  v107 = 0;
  v104[0] = &unk_1F5D0A7B0;
  v104[1] = v105;
  if (re::AssetUtilities::serializeIntrospectedAsset(v104, a2, a3, v15, v20, *(a5 + 16), *(a5 + 37)))
  {
    v103 = 0;
    v100[1] = 0;
    v101 = 0;
    v99 = 0;
    v100[0] = 0;
    v102 = 0;
    v96[1] = 0;
    v97 = 0;
    v98 = 0;
    v95[0] = &unk_1F5D0A7B0;
    v95[1] = v100;
    v95[2] = v96;
    v96[0] = 0;
    v21 = (*(*v14 + 72))(v14, v95, a2, *(a5 + 24));
    if ((v21 & 1) == 0)
    {
      v27 = *(a3 + 8);
      v75 = 0;
      v76 = 0;
      v73 = v27;
      v74 = 0;
      re::DynamicString::setCapacity(&v73, 0);
      re::AssetPath::fullAssetPath(a3, &v73);
      if (v74)
      {
        v28 = v75;
      }

      else
      {
        v28 = &v74 + 1;
      }

      re::DynamicString::format("Serializing compiled file blob failed for %s", buf, v28);
      v25 = buf[0];
      v29 = buf[1];
      *a6 = 0;
      *(a6 + 8) = v25;
      *(a6 + 24) = v29;
      if (v73 && (v74 & 1) != 0)
      {
        (*(*v73 + 40))();
      }

      goto LABEL_83;
    }

    v92[0] = 825246019;
    v23 = *(a5 + 36);
    if (v23)
    {
      v24 = 3;
    }

    else
    {
      v30 = *(a5 + 32);
      if (v30 == 2)
      {
        v24 = 1;
      }

      else
      {
        if (v30 != 3)
        {
          re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Unsupported compiled asset serialization format.", "!Unreachable code", "headerVersion", 201);
          result = _os_crash();
          __break(1u);
          return result;
        }

        v24 = 2;
      }
    }

    v92[1] = v24;
    v92[2] = 1;
    v94 = *(a5 + 8);
    v31 = v110 != 0;
    v93 = v31;
    if (v101)
    {
      v31 |= 2u;
      v93 = v31;
    }

    if (v23)
    {
      v93 = v31 | 4;
      v91 = 0;
      v88 = 0;
      v89 = 0;
      v87 = 0;
      v90 = 0;
      re::DynamicAssetHeader::DynamicAssetHeader(v21);
      v86 = *(a5 + 32);
      re::IntrospectionSharedLock::IntrospectionSharedLock(&v85);
      if ((atomic_load_explicit(&qword_1EE193AE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193AE8))
      {
        qword_1EE193AE0 = re::internal::getOrCreateInfo("DynamicAssetHeader", re::allocInfo_DynamicAssetHeader, re::initInfo_DynamicAssetHeader, &unk_1EE193AC0, 0);
        __cxa_guard_release(&qword_1EE193AE8);
      }

      if ((v130 & 1) == 0)
      {
        v41 = buf[0];
        v42 = buf[1];
        *a6 = 0;
        *(a6 + 8) = v41;
        *(a6 + 24) = v42;
LABEL_78:
        re::IntrospectionSharedLock::~IntrospectionSharedLock(&v85);
LABEL_79:
        if (v87)
        {
          if (v91)
          {
            (*(*v87 + 40))();
          }

          v91 = 0;
        }

LABEL_83:
        if (v96[0] && v99)
        {
          (*(*v96[0] + 40))();
        }

        if (v100[0] && v103)
        {
          (*(*v100[0] + 40))();
        }

        goto LABEL_89;
      }

      LOWORD(v74) = 0;
      v75 = &v87;
      v73 = &unk_1F5D0A850;
      v76 = &unk_1F5D0A8A8;
      v77 = 0;
      v78 = &unk_1F5CAC9D0;
      v79 = &v76;
      LOWORD(v80) = 0;
      v81 = 0;
      v82 = 0;
      v83 = 0x2000;
      v84 = 0;
      *v67 = 0x7F1E19097D86D060;
      *&v67[8] = "DynamicAssetHeaderSerializer";
      v33 = re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SerializerV2(buf, v67);
      if (v67[0])
      {
        if (v67[0])
        {
        }
      }

      v34 = re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::open(buf, &v73, 0, 0);
      if (v116[0] == 1 || (v34 = (*(buf[0].n128_u64[0] + 72))(buf, "DynamicAssetHeader", 0, &v86, &v131 + 4, &v131 + 4, 0), (v34 & 1) == 0))
      {
        v55 = *v67;
        v56 = *&v67[16];
        v57 = v68;
        *a6 = 0;
        *(a6 + 8) = v55;
        *(a6 + 24) = v56;
        *(a6 + 32) = v57;
LABEL_69:
        buf[0].n128_u64[0] = off_1F5CB5A48;
        v58 = re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(v129);
        if (v124)
        {
          if (v128)
          {
            (*(*v124 + 40))(v58);
          }

          v128 = 0;
          v125 = 0;
          v126 = 0;
          v124 = 0;
          ++v127;
        }

        v59 = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v123);
        if (v118)
        {
          if (v122)
          {
            (*(*v118 + 40))(v59);
          }

          v122 = 0;
          v119 = 0;
          v120 = 0;
          v118 = 0;
          ++v121;
        }

        re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::~Serializer(buf);
        re::DynamicArrayBufferedOutputStream::~DynamicArrayBufferedOutputStream(&v73);
        goto LABEL_78;
      }

      if (v116[0] == 1)
      {
        v67[0] = v116[0];
        *&v67[8] = *&v116[8];
        re::DynamicString::DynamicString(&v68, &v117);
        if (v69[0])
        {
          v51 = v69[1];
        }

        else
        {
          v51 = v69 + 1;
        }

        re::DynamicString::format("%s", &v70, v51);
        v52 = v70;
        v53 = v71;
        v54 = v72;
        *&v70 = 0;
        v71 = 0;
        *a6 = 0;
        *(a6 + 8) = v52;
        *(a6 + 24) = v53;
        *(a6 + 32) = v54;
        if (v67[0] == 1 && v68 && (v69[0] & 1) != 0)
        {
          (*(*v68 + 40))();
        }

        goto LABEL_69;
      }

      (*(buf[0].n128_u64[0] + 56))(buf);
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::close(&buf[1].n128_i8[8]);
      re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::deinit(buf);
      re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::~SerializerV2(buf);
      re::DynamicArrayBufferedOutputStream::~DynamicArrayBufferedOutputStream(&v73);
      re::IntrospectionSharedLock::~IntrospectionSharedLock(&v85);
      if (*(a5 + 36))
      {
        v73 = 88;
        v74 = v89;
        v61 = v110;
        if (v93)
        {
          v62 = v89 + 88;
        }

        else
        {
          v62 = 0;
        }

        if ((v93 & 1) == 0)
        {
          v61 = 0;
        }

        v75 = v62;
        v76 = v61;
        v77 = v89 + v61 + 88;
        v78 = v106;
        if ((v93 & 2) != 0)
        {
          v79 = (v106 + v89 + v61 + 88);
          v80 = v101;
        }

        else
        {
          v79 = 0;
          v80 = 0;
        }
      }
    }

    else
    {
      v91 = 0;
      v88 = 0;
      v89 = 0;
      v87 = 0;
      v90 = 0;
    }

    v69[0] = 0;
    memset(v67, 0, sizeof(v67));
    LODWORD(v68) = 0;
    v35 = (*(*a1 + 16))(a1, v92, 24);
    if (v35 == 24)
    {
      if (*(a5 + 36) == 1)
      {
        v36 = (*(*a1 + 16))(a1, &v73, 64);
        if (v36 != 64)
        {
          v39 = "Failed to write CompiledAssetOffsets bytes.";
          goto LABEL_44;
        }

        v37 = (*(*a1 + 16))(a1, v91, v89);
        if (v37 != v89)
        {
          v39 = "Failed to write DynamicAssetHeader bytes.";
          goto LABEL_44;
        }

        v38 = v37 + 88;
      }

      else
      {
        v38 = 24;
      }

      if (v110)
      {
        v43 = (*(*a1 + 16))(a1, v112);
        if (v43 != v110)
        {
          v39 = "write compiled file schema failed";
          goto LABEL_44;
        }

        v38 += v43;
      }

      buf[0].n128_u64[0] = v38;
      buf[0].n128_u8[8] = 1;
      v44 = re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(v67, buf);
      v45 = (*(*a1 + 16))(a1, v108, v106, v44);
      if (v45 == v106)
      {
        buf[0].n128_u64[0] = v45;
        buf[0].n128_u8[8] = 0;
        v46 = re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(v67, buf);
        if (!v101)
        {
          goto LABEL_122;
        }

        v47 = (*(*a1 + 16))(a1, v103, v46);
        if (v47 == v101)
        {
          v48 = v47;
          v49 = v97;
          if (v97)
          {
            if (v97 == 1)
            {
              v50 = 0;
            }

            else
            {
              v63 = 0;
              v64 = 1;
              do
              {
                if (v49 <= v64 - 1)
                {
                  *&v70 = 0;
                  v115 = 0u;
                  *v116 = 0u;
                  v114 = 0u;
                  memset(buf, 0, sizeof(buf));
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v130 = 136315906;
                  v131 = "operator[]";
                  v132 = 1024;
                  v133 = 789;
                  v134 = 2048;
                  v135 = v64 - 1;
                  v136 = 2048;
                  v137 = v49;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
                }

                if (*(v99 + v63 + 16) != *(v99 + v63))
                {
                  buf[0].n128_u64[0] = *(v99 + v63 + 16) - *(v99 + v63);
                  buf[0].n128_u8[8] = *(v99 + v63 + 8);
                  re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(v67, buf);
                  v49 = v97;
                }

                ++v64;
                v63 += 16;
              }

              while (v64 < v49);
              v48 = v101;
              v50 = v49 - 1;
            }

            v65 = re::DynamicArray<re::DynamicArrayStreamWriter::ChunkInfo>::operator[](v49, v99, v50);
            if (v48 == *v65)
            {
              goto LABEL_122;
            }

            buf[0].n128_u64[0] = v48 - *v65;
            buf[0].n128_u8[8] = *(re::DynamicArray<re::DynamicArrayStreamWriter::ChunkInfo>::operator[](v97, v99, v97 - 1) + 8);
          }

          else
          {
            buf[0].n128_u64[0] = v47;
            buf[0].n128_u8[8] = 0;
          }

          re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(v67, buf);
LABEL_122:
          re::DynamicArray<re::RealityArchiveChunkInfo>::DynamicArray(buf, v67);
          *a6 = 1;
          v66 = v114;
          *(a6 + 8) = buf[0].n128_u64[0];
          v25 = *(buf + 8);
          *(a6 + 16) = *(buf + 8);
          *(a6 + 40) = v66;
          *(a6 + 32) = 1;
          goto LABEL_45;
        }

        v39 = "write compiled file blob failed";
      }

      else
      {
        v39 = "write compiled file data failed";
      }
    }

    else
    {
      v39 = "write compiled file header failed";
    }

LABEL_44:
    v25 = buf[0];
    v40 = buf[1];
    *a6 = 0;
    *(a6 + 8) = v25;
    *(a6 + 24) = v40;
LABEL_45:
    if (*v67 && v69[0])
    {
      (*(**v67 + 40))();
    }

    goto LABEL_79;
  }

  re::DynamicString::format("Serializing compiled file failed", buf);
  v25 = buf[0];
  v26 = buf[1];
  *a6 = 0;
  *(a6 + 8) = v25;
  *(a6 + 24) = v26;
LABEL_89:
  if (v105[0] && v108)
  {
    (*(*v105[0] + 40))();
  }

LABEL_92:
  result = v109[0];
  if (v109[0] && v112)
  {
    result = (*(*v109[0] + 40))(v25);
  }

  if (v17)
  {
    return (*(*v14 + 152))(v14, a2, v25);
  }

  return result;
}

void re::DynamicAssetHeader::DynamicAssetHeader(re::DynamicAssetHeader *this)
{
  if ((atomic_load_explicit(&qword_1EE193AE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193AE8))
  {
    qword_1EE193AE0 = re::internal::getOrCreateInfo("DynamicAssetHeader", re::allocInfo_DynamicAssetHeader, re::initInfo_DynamicAssetHeader, &unk_1EE193AC0, 0);
    __cxa_guard_release(&qword_1EE193AE8);
  }

  qword_1EE193AC8 = qword_1EE193AE0;
}

uint64_t re::DynamicArray<re::DynamicArrayStreamWriter::ChunkInfo>::operator[](unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return a2 + 16 * a3;
}

uint64_t re::AssetUtilities::loadCompiledAsset@<X0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, const char **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  re::DynamicString::setCapacity(&v16, 0);
  if (re::AssetPath::filePathToAsset(a1, &v16, 0, *(a2 + 16)))
  {
    if (v17)
    {
      v12 = v18;
    }

    else
    {
      v12 = &v17 + 1;
    }

    v14[0] = *a5;
    if (v14[0] == 1)
    {
      v15 = *(a5 + 8);
    }

    re::AssetUtilities::loadCompiledAssetFromPath(v12, a2, a3, a4, v14, a6);
  }

  else
  {
    *a6 = 1;
    *(a6 + 8) = 0;
    *(a6 + 16) = 0;
  }

  result = v16;
  if (v16)
  {
    if (v17)
    {
      return (*(*v16 + 40))();
    }
  }

  return result;
}

void re::AssetUtilities::loadCompiledAssetFromPath(char *a1@<X0>, uint64_t *a2@<X1>, const char **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  re::FileSeekableInputStream::FileSeekableInputStream(v29, a1, 0, -1);
  if (v31 == -1)
  {
    if (v29[48])
    {
      v15 = *&v30[7];
    }

    else
    {
      v15 = v30;
    }

    re::DynamicString::format("Attempt to open compiled file '%s' did not succeed: %s", &v26, a1, v15);
    if (v27)
    {
      v16 = v28[0];
    }

    else
    {
      v16 = &v27 + 1;
    }

    re::WrappedError::make(@"REAssetLoadingErrorDomain", 0x12C, v16, &v22);
    v17 = v22;
    v22 = 0;
    *a6 = 0;
    *(a6 + 8) = v17;

    if (v26 && (v27 & 1) != 0)
    {
      (*(*v26 + 40))();
    }
  }

  else
  {
    v22 = 0;
    v23[0] = 0;
    v24[0] = *a5;
    if (v24[0] == 1)
    {
      v25 = *(a5 + 8);
    }

    re::AssetUtilities::loadCompiledAssetFromStream(v29, &v22, a2, a3, a4, 0, 0, v24, &v26);
    if (v26 == 1)
    {
      v13 = v27;
      v12 = v28[0];
      if (v28[0])
      {
        v14 = (v28[0] + 8);
      }

      *a6 = 1;
      *(a6 + 8) = v13;
      *(a6 + 16) = v12;
    }

    else
    {
      if (v28[0])
      {
        v18 = v28[1];
      }

      else
      {
        v18 = v28 + 1;
      }

      re::DynamicString::format("Error loading compiled file '%s': %s", &v22, a1, v18);
      if (v23[0])
      {
        v19 = v23[1];
      }

      else
      {
        v19 = v23 + 1;
      }

      re::WrappedError::make(@"REAssetLoadingErrorDomain", 0x12C, v19, &v21);
      v20 = v21;
      v21 = 0;
      *a6 = 0;
      *(a6 + 8) = v20;

      if (v22 && (v23[0] & 1) != 0)
      {
        (*(*v22 + 40))();
      }
    }

    re::Result<re::AssetUtilities::CompiledAssetLoadResult,re::DynamicString>::~Result(&v26);
  }

  re::FileSeekableInputStream::~FileSeekableInputStream(v29);
}

void re::AssetUtilities::loadCompiledAssetFromStream(re *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, const char **a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v143[7] = *MEMORY[0x1E69E9840];
  v130[0] = 0;
  *&v129 = 0;
  v128 = 0uLL;
  DWORD2(v129) = 0;
  *&v126[8] = 0;
  *&v126[16] = 0;
  *v126 = a1;
  LODWORD(v127) = 0;
  Next = re::SeekableInputStreamBufferedReader::readNext(v126, 0x18uLL);
  if (*&v126[16] <= 0x17uLL)
  {
    v16 = *re::assetsLogObjects(Next);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (v17)
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "Compiled file is too short", buf, 2u);
    }

    v18 = "Compiled file is too short";
LABEL_14:
    v26 = 0;
    v113 = 0;
    *v114 = *buf;
    *&v114[16] = *&buf[16];
    v115 = v118;
    goto LABEL_15;
  }

  v19 = **&v126[8];
  if (**&v126[8] != 825246019)
  {
    v24 = *re::assetsLogObjects(Next);
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (v25)
    {
      *buf = 67109376;
      *&buf[4] = v19;
      *&buf[8] = 1024;
      *&buf[10] = 825246019;
      _os_log_error_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_ERROR, "Compiled file has incorrect file tag (got %x, expected %x)", buf, 0xEu);
    }

    v18 = "Compiled file has incorrect file tag";
    goto LABEL_14;
  }

  v20 = *(*&v126[8] + 4);
  v21 = *(*&v126[8] + 8);
  if (a4 && v21 != 1)
  {
    v22 = *re::assetsLogObjects(Next);
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v23)
    {
      *buf = 67109376;
      *&buf[4] = v21;
      *&buf[8] = 1024;
      *&buf[10] = 1;
      _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "Compiled file has an incorrect asset version (got %d, expected %d)", buf, 0xEu);
    }

    v18 = "Compiled file has an incorrect asset version";
    goto LABEL_14;
  }

  v26 = 1;
  v113 = 1;
  *v114 = 825246019;
  *&v114[4] = v20;
  *&v114[12] = *(*&v126[8] + 12);
  v41 = *(*&v126[8] + 20);
  *&v114[8] = v21;
  *&v114[20] = v41;
LABEL_15:
  if (v127)
  {
    (*(**v126 + 24))(*v126);
    LODWORD(v127) = 0;
  }

  memset(v126, 0, sizeof(v126));
  v27 = v128;
  if (v128 && v130[0])
  {
    v27 = (*(*v128 + 40))();
  }

  if (v26)
  {
    memset(v112, 0, sizeof(v112));
    if ((v114[12] & 4) != 0)
    {
      v37 = (*(*a1 + 104))(a1, 64, v112);
      if (v37 <= 0x3F)
      {
        v108 = 0;
        v109 = *v126;
        v110 = *&v126[16];
        v111 = v127;
        re::DynamicString::DynamicString(v126, &v109);
        *a9 = 0;
        v38 = v127;
        *(a9 + 8) = *v126;
        *(a9 + 32) = v38;
        *(a9 + 16) = *&v126[8];
LABEL_109:
        if (v109 && (BYTE8(v109) & 1) != 0)
        {
          (*(*v109 + 40))();
        }

LABEL_112:
        if (v113)
        {
          return;
        }

        goto LABEL_113;
      }

      v108 = 1;
      re::DynamicAssetHeader::DynamicAssetHeader(v37);
      v107 = 0;
      if ((atomic_load_explicit(&qword_1EE193AE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193AE8))
      {
        qword_1EE193AE0 = re::internal::getOrCreateInfo("DynamicAssetHeader", re::allocInfo_DynamicAssetHeader, re::initInfo_DynamicAssetHeader, &unk_1EE193AC0, 0);
        __cxa_guard_release(&qword_1EE193AE8);
      }

      v116 = *(qword_1EE193AE0 + 32);
      re::IntrospectionSharedLock::IntrospectionSharedLock(&v94);
      re::TypeRegistry::typeInfo(v116, &v116, v126);
      re::TypeInfo::TypeInfo(v96, &v126[8]);
      *buf = 0x2568151B0860AFE2;
      *&buf[8] = "DynamicAssetHeaderDeserializer";
      v42 = re::SerializerV2<re::EncoderOPACK<re::SeekableInputStream>>::SerializerV2(v126, buf);
      if (buf[0])
      {
        if (buf[0])
        {
        }
      }

      re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::init(v126, v116);
      v43 = re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::open(v126, a1, 0, 0);
      if (LOBYTE(v130[0]) == 1 || (v43 = (*(*v126 + 72))(v126, "DynamicAssetHeader", 0, &v107, v96, v96, 0), (v43 & 1) == 0))
      {
        v57 = 0;
        v103 = 0;
        v104 = *buf;
        v105 = *&buf[16];
        v106 = v118;
      }

      else
      {
        (*(*v126 + 56))(v126);
        re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::close(&v127);
        if (LOBYTE(v130[0]) == 1)
        {
          buf[0] = v130[0];
          *&buf[8] = *&v130[1];
          re::DynamicString::DynamicString(&v118, &v131);
          if (v119)
          {
            v56 = v120;
          }

          else
          {
            v56 = &v119 + 1;
          }

          re::DynamicString::format("%s", v124, v56);
          v103 = 0;
          v104 = *v124;
          v105 = *&v124[16];
          v106 = v125;
          if (buf[0] == 1 && v118 && (v119 & 1) != 0)
          {
            (*(*v118 + 40))();
          }

          v57 = 0;
        }

        else
        {
          re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::deinit(v126);
          v57 = 1;
        }
      }

      *v126 = off_1F5CBAD70;
      v58 = re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(v143);
      if (v138)
      {
        if (v142)
        {
          (*(*v138 + 40))(v58);
        }

        v142 = 0;
        v139 = 0;
        v140 = 0;
        v138 = 0;
        ++v141;
      }

      v59 = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v137);
      if (v132)
      {
        if (v136)
        {
          (*(*v132 + 40))(v59);
        }

        v136 = 0;
        v133 = 0;
        v134 = 0;
        v132 = 0;
        ++v135;
      }

      re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::~Serializer(v126);
      re::IntrospectionSharedLock::~IntrospectionSharedLock(&v94);
      if ((v57 & 1) == 0)
      {
        if ((v103 & 1) == 0)
        {
          re::DynamicString::DynamicString(v126, &v104);
          *a9 = 0;
          v60 = v127;
          *(a9 + 8) = *v126;
          *(a9 + 32) = v60;
          *(a9 + 16) = *&v126[8];
LABEL_141:
          if (v104 && (BYTE8(v104) & 1) != 0)
          {
            (*(*v104 + 40))();
          }

          goto LABEL_108;
        }

LABEL_24:
        v29 = v107;
        if (!v107)
        {
          v40 = *&v114[4];
          if (*&v114[4] == 1)
          {
            v29 = 2;
          }

          else
          {
            if (*&v114[4] != 2)
            {
              v61 = *re::assetsLogObjects(v28);
              v62 = os_log_type_enabled(v61, OS_LOG_TYPE_ERROR);
              if (v62)
              {
                *v126 = 67109120;
                *&v126[4] = v40;
                _os_log_error_impl(&dword_1E1C61000, v61, OS_LOG_TYPE_ERROR, "Compiled file has an incompatible header version (got %d, expected a valid CompiledAssetHeaderVersion enum value).", v126, 8u);
              }

              v63 = *v126;
              v64 = *&v126[16];
              v65 = v127;
              *a9 = 0;
              *(a9 + 8) = v63;
              *(a9 + 24) = v64;
              *(a9 + 32) = v65;
              goto LABEL_108;
            }

            v29 = 3;
          }
        }

        v89 = a7;
        v90 = a6;
        v30 = *a3;
        *v126 = a4;
        v31 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v30, v126);
        (*(**v31 + 128))(*v31);
        v32 = *v31;
        v33 = (*(**v31 + 128))(*v31);
        v126[16] = 0;
        *v126 = &unk_1F5CCF6E8;
        *&v126[8] = "schema";
        v128 = 0u;
        v129 = 0u;
        LODWORD(v130[0]) = 0;
        *(v130 + 4) = 0x7FFFFFFFLL;
        v34 = v114[12];
        if (v114[12])
        {
          v39 = *(v33 + 16) != 8 || strcmp(*(v33 + 48), "SceneAsset") != 0;
          *buf = &unk_1F5D0AE00;
          *&buf[8] = a1;
          *&buf[16] = 0;
          LODWORD(v118) = 0;
          v119 = 0;
          v120 = (*(*a1 + 40))(a1);
          LOBYTE(v121) = 0;
          if ((v96[0] & 1) == 0)
          {
            v54 = *re::assetsLogObjects(v44);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              if (BYTE8(v97))
              {
                v88 = v98;
              }

              else
              {
                v88 = &v97 + 9;
              }

              *v124 = 136315138;
              *&v124[4] = v88;
              _os_log_error_impl(&dword_1E1C61000, v54, OS_LOG_TYPE_ERROR, "%s", v124, 0xCu);
            }

            re::DynamicString::DynamicString(v124, &v97);
            *a9 = 0;
            v55 = v125;
            *(a9 + 8) = *v124;
            *(a9 + 32) = v55;
            *(a9 + 16) = *&v124[8];
            if (v96[0])
            {
              if (v118)
              {
                (*(**&buf[8] + 24))(*&buf[8]);
              }
            }

            else
            {
              if (v97 && (BYTE8(v97) & 1) != 0)
              {
                (*(*v97 + 40))();
              }

              if (v118)
              {
                (*(**&buf[8] + 24))(*&buf[8]);
                LODWORD(v118) = 0;
              }
            }

            goto LABEL_107;
          }

          v35 = v97;
          if (v118)
          {
            (*(**&buf[8] + 24))(*&buf[8], v45);
          }
        }

        else
        {
          v35 = 0;
        }

        if (a5)
        {
          v101[0] = *a8;
          if (v101[0] == 1)
          {
            v102 = *(a8 + 8);
          }

          deserializeIntrospectedAssetWithVersioning(a1, a4, a3, v35, v33, a5, v29, v101, buf);
          if (buf[0] != 1)
          {
LABEL_94:
            re::DynamicString::DynamicString(v96, &buf[8]);
            *a9 = 0;
            *(a9 + 8) = *v96;
            *(a9 + 32) = v98;
            *(a9 + 16) = v97;
            if (*&buf[8] && (buf[16] & 1) != 0)
            {
              (*(**&buf[8] + 40))();
            }

LABEL_107:
            re::AutoFreeAllocator::~AutoFreeAllocator(v126);
            goto LABEL_108;
          }
        }

        else
        {
          *v124 = &unk_1F5CB9778;
          v99[0] = *a8;
          if (v99[0] == 1)
          {
            v100 = *(a8 + 8);
          }

          v46 = deserializeIntrospectedAssetWithVersioning(a1, a4, a3, v35, v33, v124, v29, v99, buf);
          if ((buf[0] & 1) == 0)
          {
            v66 = *re::assetsLogObjects(v46);
            if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
            {
              *v96 = 0;
              _os_log_error_impl(&dword_1E1C61000, v66, OS_LOG_TYPE_ERROR, "Failed to deserialize asset data", v96, 2u);
            }

            goto LABEL_94;
          }
        }

        v47 = *&buf[8];
        if ((v34 & 2) == 0)
        {
          v48 = (*(*a1 + 40))(a1);
          v49 = (*(*a1 + 64))(a1);
          if (v48 != v49)
          {
            v68 = *re::assetsLogObjects(v49);
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_1E1C61000, v68, OS_LOG_TYPE_ERROR, "Extra data in file", buf, 2u);
            }

            v69 = (*(*v32 + 16))(v32, v47);
            v70 = *buf;
            v71 = *&buf[16];
            v72 = v118;
            *a9 = 0;
            *(a9 + 8) = v70;
            *(a9 + 24) = v71;
            *(a9 + 32) = v72;
            goto LABEL_107;
          }
        }

        v116 = v47;
        re::SeekableInputStreamSlice::SeekableInputStreamSlice(v96, a1, -1);
        if (v90)
        {
          if ((v34 & 2) == 0)
          {
            goto LABEL_136;
          }

          v123 = 0;
          v120 = 0;
          v121 = 0;
          v119 = 0;
          v122 = 0;
          *&buf[8] = 0;
          *&buf[16] = 0;
          *buf = a1;
          LODWORD(v118) = 0;
          v50 = re::SeekableInputStreamBufferedReader::readNext(buf, 0xFFFFFFFFFFFFFFFFLL);
          v51 = v50;
          if (v50)
          {
            re::Data::makeDataWithBytes(*&buf[8], *&buf[16], v124);
            if (v124 != v90)
            {
              v52 = *v124;
              *v124 = 0;
              v53 = *v90;
              *v90 = v52;
            }
          }

          else
          {
            v82 = *re::assetsLogObjects(v50);
            if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
            {
              *v124 = 0;
              _os_log_error_impl(&dword_1E1C61000, v82, OS_LOG_TYPE_ERROR, "Error reading asset blob", v124, 2u);
            }

            v83 = (*(*v32 + 16))(v32, v47);
            v84 = *v124;
            v85 = *&v124[16];
            v86 = v125;
            *a9 = 0;
            *(a9 + 8) = v84;
            *(a9 + 24) = v85;
            *(a9 + 32) = v86;
          }

          if (v118)
          {
            (*(**buf + 24))(*buf);
            LODWORD(v118) = 0;
          }

          memset(buf, 0, sizeof(buf));
          if (v119 && v123)
          {
            (*(*v119 + 40))();
          }

          if (v51)
          {
LABEL_136:
            v80 = 0;
LABEL_137:
            *a9 = 1;
            *(a9 + 8) = v47;
            *(a9 + 16) = v80;
          }
        }

        else
        {
          if (*a8 == 1)
          {
            v67 = *(a8 + 8);
          }

          else
          {
            v67 = 0;
          }

          re::AssetSignpost::ScopeGuard::ScopeGuard(v124, 2056, v67, *a4);
          v73 = (*(*v32 + 40))(&v94, v32, v47, v96, a2, v89);
          v74 = v94;
          if (v94)
          {
            re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v116 + 1, v95);
          }

          else
          {
            v75 = *re::assetsLogObjects(v73);
            if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_1E1C61000, v75, OS_LOG_TYPE_ERROR, "Failed to create runtime data for asset.", buf, 2u);
            }

            (*(*v32 + 16))(v32, v47);
            v76 = re::WrappedError::localizedDescription(&v95);
            v77 = *buf;
            v78 = *&buf[16];
            v79 = v118;
            *a9 = 0;
            *(a9 + 8) = v77;
            *(a9 + 24) = v78;
            *(a9 + 32) = v79;
          }

          re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(&v94);
          re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v124);
          if (v74)
          {
            v80 = *(&v116 + 1);
            v47 = v116;
            if (*(&v116 + 1))
            {
              v81 = (*(&v116 + 1) + 8);
            }

            goto LABEL_137;
          }
        }

        re::SeekableInputStreamSlice::detach(v96);
        if (*(&v116 + 1))
        {
        }

        v87 = v103;
        re::AutoFreeAllocator::~AutoFreeAllocator(v126);
        if ((v87 & 1) == 0)
        {
          goto LABEL_141;
        }

LABEL_108:
        if (v108)
        {
          goto LABEL_112;
        }

        goto LABEL_109;
      }
    }

    else
    {
      v108 = 1;
      re::DynamicAssetHeader::DynamicAssetHeader(v27);
      v107 = 0;
    }

    v103 = 1;
    goto LABEL_24;
  }

  re::DynamicString::DynamicString(v126, v114);
  *a9 = 0;
  v36 = v127;
  *(a9 + 8) = *v126;
  *(a9 + 32) = v36;
  *(a9 + 16) = *&v126[8];
LABEL_113:
  if (*v114)
  {
    if (v114[8])
    {
      (*(**v114 + 40))();
    }
  }
}

uint64_t re::AssetUtilities::loadCompiledAssetFromData@<X0>(id *a1@<X0>, uint64_t *a2@<X1>, const char **a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v17 = *a1;
  re::DataSeekableInputStream::DataSeekableInputStream(v18, &v17, 1, 0);

  v16[0] = 0;
  v16[1] = 0;
  v14[0] = *a6;
  if (v14[0] == 1)
  {
    v15 = *(a6 + 8);
  }

  re::AssetUtilities::loadCompiledAssetFromStream(v18, v16, a2, a3, a4, a5, 0, v14, a7);
  v18[0] = &unk_1F5D0A4F8;

  v18[0] = &unk_1F5D0A468;
  return re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(v19);
}

uint64_t re::AssetUtilities::loadLocalCompiledOrSourceAsset@<X0>(char *a1@<X0>, uint64_t a2@<X1>, const char **a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = a3[1];
  re::DynamicString::insert(&v60, 0, ".", 1uLL);
  v15 = *(a1 + 1);
  if (v15)
  {
    v16 = v15 >> 1;
  }

  else
  {
    v16 = v15 >> 1;
  }

  if (v61[0])
  {
    v17 = v61[1];
  }

  else
  {
    v17 = v61 + 1;
  }

  if (v61[0])
  {
    v18 = v61[0] >> 1;
  }

  else
  {
    v18 = LOBYTE(v61[0]) >> 1;
  }

  re::DynamicString::rfind(a1, v17, v18, v16 - 1, v58);
  if (v58[0] == 1)
  {
    v19 = (v61[0] & 1) != 0 ? v61[0] >> 1 : LOBYTE(v61[0]) >> 1;
    if (v59 == v16 - v19)
    {
      if (*(a1 + 1))
      {
        v20 = *(a1 + 2);
      }

      else
      {
        v20 = a1 + 9;
      }

      v56[0] = *a5;
      if (v56[0] == 1)
      {
        v57 = *(a5 + 1);
      }

      re::AssetUtilities::loadCompiledAssetFromPath(v20, a2, a3, a4, v56, &v71);
      if (v71 == 1)
      {
        v22 = *(&v71 + 1);
        v21 = v72;
        if (v72)
        {
          v23 = (v72 + 8);
        }

        *a7 = 1;
        *(a7 + 8) = v22;
        *(a7 + 16) = v21;
      }

      else
      {
        v43 = re::WrappedError::localizedDescription(&v71 + 1);
        v44 = v65;
        v45 = v66;
        v46 = v67;
        *a7 = 0;
        *(a7 + 8) = v44;
        *(a7 + 24) = v45;
        *(a7 + 32) = v46;
      }

      re::Result<re::AssetUtilities::CompiledAssetLoadResult,re::WrappedError>::~Result(&v71);
      goto LABEL_69;
    }
  }

  if (*a5 == 1)
  {
    v55 = *(a5 + 1);
  }

  else
  {
    v55 = 0;
  }

  if (*(a1 + 1))
  {
    v24 = *(a1 + 2);
  }

  else
  {
    v24 = (a1 + 9);
  }

  v25 = *a2;
  *&v65 = a3;
  v26 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v25, &v65);
  (*(**v26 + 128))(*v26);
  v27 = *v26;
  v28 = *a3;
  v30 = re::path::ext(v24, v29);
  if (*v30 != 46)
  {
    goto LABEL_38;
  }

  v31 = (***(a2 + 8))(*(a2 + 8), v30 + 1);
  (*(*v31 + 16))(&v65);
  v32 = v66 & 1;
  if (v66)
  {
    v33 = v67;
  }

  else
  {
    v33 = &v66 + 1;
  }

  v34 = strcmp(v28, v33);
  v30 = *(&v65 + 1);
  if (*(&v65 + 1) && v32)
  {
    v30 = (*(**(&v65 + 1) + 40))();
  }

  if (v34)
  {
LABEL_38:
    re::DynamicString::operator+(&v71, &v69, &v65);
    v36 = v65;
    v65 = 0uLL;
    v37 = v66;
    v38 = v67;
    v66 = 0;
    v67 = 0;
    *a7 = 0;
    *(a7 + 8) = v36;
    *(a7 + 24) = v37;
    *(a7 + 32) = v38;
    if (v69 && (v70 & 1) != 0)
    {
      (*(*v69 + 40))();
    }

    if (v71 && (BYTE8(v71) & 1) != 0)
    {
      (*(*v71 + 40))();
    }

    goto LABEL_69;
  }

  v39 = (*(*v27 + 192))(v27, a6);
  v40 = (*(*v31 + 40))(&v65, v31, v24, v39, a4);
  if (v65)
  {
    v41 = *(&v65 + 1);
    re::AssetSignpost::ScopeGuard::ScopeGuard(v62, 2056, v55, v28);
    v42 = (*(*v27 + 24))(v27, v41, 0, 0);
    if ((v42 & 1) == 0)
    {
      re::DynamicString::operator+(&v69, &v63, &v71);
      v51 = v71;
      v71 = 0uLL;
      v52 = v72;
      v53 = v73;
      v72 = 0;
      v73 = 0;
      *a7 = 0;
      *(a7 + 8) = v51;
      *(a7 + 24) = v52;
      *(a7 + 32) = v53;
      if (v63 && (v64 & 1) != 0)
      {
        (*(*v63 + 40))();
      }

      if (v69 && (v70 & 1) != 0)
      {
        (*(*v69 + 40))();
      }

      re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v62);
      goto LABEL_63;
    }

    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v62);
    *a7 = 1;
    *(a7 + 8) = v41;
    *(a7 + 16) = 0;
  }

  else
  {
    re::DynamicString::DynamicString(&v63, &v67);
    re::DynamicString::operator+(&v69, &v63, &v71);
    v47 = v71;
    v71 = 0uLL;
    v48 = v72;
    v49 = v73;
    v72 = 0;
    v73 = 0;
    *a7 = 0;
    *(a7 + 8) = v47;
    *(a7 + 24) = v48;
    *(a7 + 32) = v49;
    if (v63 && (v64 & 1) != 0)
    {
      (*(*v63 + 40))();
    }

    if (v69 && (v70 & 1) != 0)
    {
      (*(*v69 + 40))();
    }
  }

  v41 = 0;
LABEL_63:
  if (v65 & 1) == 0 && v67 && (v68)
  {
    (*(*v67 + 40))();
  }

  (*(*v31 + 56))(v31, v39);
  if (v41)
  {
    (*(*v27 + 16))(v27, v41);
  }

LABEL_69:
  result = v60;
  if (v60)
  {
    if (v61[0])
    {
      return (*(*v60 + 40))();
    }
  }

  return result;
}

FILE *re::AssetUtilities::readSourceJson@<X0>(re::AssetUtilities *this@<X0>, const char *a2@<X1>, _OWORD *a3@<X2>, const re::IntrospectionBase *a4@<X3>, uint64_t a5@<X8>)
{
  re::FileStreamReader::open(this, v31);
  if (v31[0])
  {
    v30 = 0u;
    v29 = 0u;
    v28 = a4;
    v20 = a3[2];
    if (v23 == 1)
    {
      *a5 = v23;
    }

    else
    {
      if (v26)
      {
        v16 = *&v27[7];
      }

      else
      {
        v16 = v27;
      }

      re::DynamicString::format("Failed to read JSON source asset %s: %s", &v20, this, v16);
      v17 = v20;
      v18 = v21;
      v19 = v22;
      *a5 = 0;
      *(a5 + 8) = v17;
      *(a5 + 24) = v18;
      *(a5 + 32) = v19;
      if (v23 & 1) == 0 && v25 && (v26)
      {
        (*(*v25 + 40))();
      }
    }
  }

  else
  {
    re::formattedErrorMessage<re::DetailedError>(&v32, &v23);
    v12 = v23;
    v13 = v24;
    v14 = v25;
    *a5 = 0;
    *(a5 + 8) = v12;
    *(a5 + 24) = v13;
    *(a5 + 32) = v14;
  }

  if (v31[0] == 1)
  {
    result = v33;
    if (v33)
    {
      if (v35 == 1)
      {
        return fclose(v33);
      }
    }
  }

  else
  {
    result = v34;
    if (v34 && (v35 & 1) != 0)
    {
      return (*(*v34 + 40))();
    }
  }

  return result;
}

uint64_t re::AssetUtilities::estimateSize_introspectionLockedShared(re::AssetUtilities *this, re::TypeInfo *a2, const re::TypeInfo *a3)
{
  if (!this)
  {
    return 0;
  }

  v4 = this;
  if (a3)
  {
    v5 = *(*(a2 + 2) + 8);
  }

  else
  {
    v5 = 0;
  }

  if (*(a2 + 12) == 8)
  {
    v6 = re::TypeInfo::name(a2);
    if (*v6 >> 1 == 94623636)
    {
      v7 = v6[1];
      if (v7 == "char*" || !strcmp(v7, "char*"))
      {
        v12 = *v4;
        goto LABEL_19;
      }
    }

    v8 = re::TypeInfo::name(a2);
    if (*v8 >> 1 == 0x134375A94D9F7110)
    {
      v9 = v8[1];
      if (v9 == "DynamicString" || !strcmp(v9, "DynamicString"))
      {
        v14 = *(v4 + 1);
        if (v14)
        {
          v15 = v14 >> 1;
        }

        else
        {
          v15 = v14 >> 1;
        }

        v13 = v5 + v15;
        goto LABEL_24;
      }
    }

    v10 = re::TypeInfo::name(a2);
    if (*v10 >> 1 == 0x22C6ED80D0CLL)
    {
      v11 = v10[1];
      if (v11 == "StringID" || !strcmp(v11, "StringID")) && (*v4)
      {
        v12 = *(v4 + 1);
LABEL_19:
        v13 = v5 + strlen(v12);
LABEL_24:
        v5 = v13 + 1;
      }
    }
  }

  v16 = *(a2 + 2);
  if ((v16[6] & 2) != 0)
  {
    return v5;
  }

  v17 = *(a2 + 12);
  if (v17 > 5)
  {
    if (*(a2 + 12) > 7u)
    {
      if (v17 == 8)
      {
        re::TypeRegistry::typeInfo(*a2, v16[10], &v55);
        if (v55 == 1)
        {
          v5 += re::AssetUtilities::estimateSize_introspectionLockedShared(v4, &v56, 0, v37);
        }

        re::TypeMemberCollection::TypeMemberCollection(&v52, *a2, *(a2 + 2));
        v38 = v54;
        if (v54)
        {
          v39 = 0;
          do
          {
            re::TypeMemberCollection::operator[](&v52, v39, v58);
            re::TypeRegistry::typeInfo(v58[0], *v59, v60);
            re::TypeInfo::TypeInfo(v51, &v60[8]);
            v5 += re::AssetUtilities::estimateSize_introspectionLockedShared((v4 + *(v59 + 24)), v51, 0, v40);
            ++v39;
          }

          while (v38 != v39);
        }

        return v5;
      }

      if (v17 == 9)
      {
        v23 = *v4;
        if (*v4)
        {
          re::TypeRegistry::typeInfo(*a2, v16[10], v60);
          re::TypeInfo::TypeInfo(&v55, &v60[8]);
          if (re::TypeInfo::isPointerToPolymorphicType(a2))
          {
            re::TypeInfo::getActualTypeFromPointer(a2, v4, &v52);
            if (v52 || (re::TypeInfo::getActualType(&v55, v23, v60), v52 = *v60, *v60))
            {
              re::TypeRegistry::typeInfo(*a2, &v52, v60);
              re::TypeInfo::operator=(&v55, &v60[8]);
            }
          }

          v20 = &v55;
          v21 = v23;
          v22 = 1;
          goto LABEL_46;
        }

        return v5;
      }
    }

    else
    {
      if (v17 == 6)
      {
        re::TypeInfo::TypeInfo(&v55, a2);
        re::TypeRegistry::typeInfo(v55, *(v57 + 80), v60);
        re::TypeInfo::TypeInfo(&v52, &v60[8]);
        re::TypeRegistry::typeInfo(v55, *(v57 + 88), v60);
        re::TypeInfo::TypeInfo(v58, &v60[8]);
        v29 = (*(v57 + 96))(v4);
        v5 += (*(v59 + 8) + *(v53 + 8)) * v29;
        v30 = *(v53 + 48);
        v31 = *(v59 + 48);
        if ((v30 & 2) == 0 || (v31 & 2) == 0)
        {
          if ((*(v57 + 128))())
          {
            do
            {
              if ((v30 & 2) == 0)
              {
                v33 = (*(v57 + 136))(v32);
                v5 += re::AssetUtilities::estimateSize_introspectionLockedShared(v33, &v52, 0, v34);
              }

              if ((v31 & 2) == 0)
              {
                v35 = (*(v57 + 144))(v32);
                v5 += re::AssetUtilities::estimateSize_introspectionLockedShared(v35, v58, 0, v36);
              }
            }

            while (((*(v57 + 128))(v32) & 1) != 0);
          }
        }

        return v5;
      }

      if (v17 == 7)
      {
        re::TypeInfo::TypeInfo(&v55, a2);
        re::UnionAccessor::activeMemberType(&v55, v4, v60);
        if (v60[0] == 1)
        {
          v20 = &v60[8];
          goto LABEL_37;
        }

        return v5;
      }
    }
  }

  else if (*(a2 + 12) > 3u)
  {
    if (v17 == 4)
    {
      re::TypeInfo::TypeInfo(&v55, a2);
      re::TypeRegistry::typeInfo(v55, *(v57 + 80), v60);
      re::TypeInfo::TypeInfo(&v52, &v60[8]);
      v41 = re::ArrayAccessor::size(&v55, v4);
      v42 = v41;
      if ((*(v57 + 92) & 0xFFFFFF) != 0)
      {
        v5 += v41 * *(v53 + 8);
      }

      if ((*(v53 + 48) & 2) == 0 && v41)
      {
        v43 = 0;
        do
        {
          v44 = re::ArrayAccessor::elementAt(&v55, v4, v43);
          v5 += re::AssetUtilities::estimateSize_introspectionLockedShared(v44, &v52, 0, v45);
          ++v43;
        }

        while (v42 != v43);
      }

      return v5;
    }

    if (v17 == 5)
    {
      re::TypeInfo::TypeInfo(&v55, a2);
      re::TypeRegistry::typeInfo(v55, *(v57 + 80), v60);
      re::TypeInfo::TypeInfo(&v52, &v60[8]);
      v24 = (*(v57 + 88))(v4);
      v5 += v24 * *(v53 + 8);
      if ((*(v53 + 48) & 2) == 0)
      {
        if (*(v57 + 104))
        {
          v25 = v24;
          if (v24)
          {
            v26 = 0;
            do
            {
              v27 = (*(v57 + 104))(v4, v26);
              v5 += re::AssetUtilities::estimateSize_introspectionLockedShared(v27, &v52, 0, v28);
              v26 = (v26 + 1);
            }

            while (v25 != v26);
          }
        }

        else if (*(v57 + 112) && *(v57 + 120) && *(v57 + 128))
        {
          for (i = *(v57 + 120); ; i = *(v57 + 120))
          {
            v49 = i();
            if (!v49)
            {
              break;
            }

            v5 += re::AssetUtilities::estimateSize_introspectionLockedShared(v49, &v52, 0, v50);
          }
        }
      }

      return v5;
    }
  }

  else
  {
    if (v17 - 1 < 2)
    {
      return v5;
    }

    if (v17 == 3)
    {
      re::TypeInfo::TypeInfo(&v55, a2);
      v18 = (*(v57 + 88))(v4);
      if (v18)
      {
        v4 = v18;
        re::TypeRegistry::typeInfo(v55, *(v57 + 80), v60);
        re::TypeInfo::TypeInfo(&v52, &v60[8]);
        v20 = &v52;
LABEL_37:
        v21 = v4;
        v22 = 0;
LABEL_46:
        v5 += re::AssetUtilities::estimateSize_introspectionLockedShared(v21, v20, v22, v19);
        return v5;
      }

      return v5;
    }
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected type category.", "!Unreachable code", "estimateSize_introspectionLockedShared", 1451);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::AssetUtilities::computeIntrospectedDataSizeV2(re::AssetUtilities *this, re **a2, const re::IntrospectionBase *a3)
{
  re::IntrospectionSharedLock::IntrospectionSharedLock(&v13);
  if (v11[0])
  {
    locked = re::AssetUtilities::estimateSize_introspectionLockedShared(this, &v12, 1);
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v13);
    return locked;
  }

  else
  {
    re::getPrettyTypeName(a2, v9);
    re::DynamicString::~DynamicString(v9);
    re::getPrettyTypeName(a2, v9);
    if (v9[8])
    {
      v8 = *&v10[7];
    }

    else
    {
      v8 = v10;
    }

    re::internal::assertLog(5, v7, "assertion failure: '%s' (%s:line %i) Type info (%s) is missing.", "type", "computeIntrospectedDataSizeV2", 1467, v8);
    re::DynamicString::~DynamicString(v9);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t deserializeIntrospectedAssetWithVersioning(re::SeekableInputStream &,re::AssetType const&,re::AssetLoadData const&,re::PersistedSchema const*,re::IntrospectionBase const&,re::AssetSerializationScheme &,re::AssetSerializationFormat,re::Optional<unsigned long long>)::$_0::__invoke(uint64_t a1)
{
  if (*(a1 + 16) != 8)
  {
    return 0;
  }

  v2 = *(a1 + 48);
  if (strlen(v2) >= 0x10 && !strncmp(v2, "CustomComponent", 0xFuLL))
  {
    return 1;
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    for (i = *(a1 + 64); ; ++i)
    {
      v5 = *i;
      if (**i == 1 && v5[10] == 3)
      {
        break;
      }

      if (!--v3)
      {
        return 0;
      }
    }

    v7 = *(v5 + 2);
    if (v7)
    {
      while (*(v7 + 16) == 8)
      {
        if (!strcmp(*(v7 + 48), "Component"))
        {
          return 1;
        }

        v8 = *(v7 + 56);
        if (!v8)
        {
          break;
        }

        for (j = *(v7 + 64); ; ++j)
        {
          v10 = *j;
          if (**j == 1 && v10[10] == 3)
          {
            break;
          }

          if (!--v8)
          {
            return 0;
          }
        }

        result = 0;
        v7 = *(v10 + 2);
        if (!v7)
        {
          return result;
        }
      }
    }
  }

  return 0;
}

uint64_t re::DynamicArray<re::RealityArchiveChunkInfo>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v5);
    ++*(a1 + 24);
    v6 = a2[2];
    if (v6 >= *(a1 + 16))
    {
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, a2[2]);
      v7 = *(a1 + 16);
      if (v7)
      {
        memmove(*(a1 + 32), a2[4], 16 * v7);
        v7 = *(a1 + 16);
      }

      memcpy((*(a1 + 32) + 16 * v7), (a2[4] + 16 * v7), 16 * (v6 - v7));
    }

    else if (v6)
    {
      memmove(*(a1 + 32), a2[4], 16 * v6);
    }

    *(a1 + 16) = v6;
  }

  return a1;
}

BOOL re::isDoubleCompressed(uint64_t a1)
{
  v1 = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    v1 = *v1;
  }

  v2 = strlen(v1);
  return v2 >= 4 && *&v1[v2 - 4] == 2054316334;
}

uint64_t re::RealityArchiveEntryTable::RealityArchiveEntryTable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  v6 = *(a3 + 184);
  *(a1 + 24) = 0u;
  *a1 = &unk_1F5CBD040;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0x7FFFFFFFLL;
  *(a1 + 72) = a2;
  v8 = *(a3 + 184);
  if (v8)
  {
    for (i = 0; v8 != i; ++i)
    {
      v10 = i + *(a3 + 176);
      v11 = *(*(a3 + 152) + 8 * (v10 / 0x27));
      v12 = v10 % 0x27;
      v13 = v11 + 104 * v12;
      v14 = (v13 + 8);
      v15 = *(v13 + 31);
      if (v15 < 0)
      {
        v17 = *(v13 + 16);
        if (!v17)
        {
          if (!zip_entry_is_alignment(v13))
          {
            goto LABEL_15;
          }

          continue;
        }

        v16 = *v14;
      }

      else
      {
        if (!*(v13 + 31))
        {
          if (!zip_entry_is_alignment(v11 + 104 * v12))
          {
            goto LABEL_16;
          }

          continue;
        }

        v16 = (v13 + 8);
        v17 = *(v13 + 31);
      }

      if (v16[v17 - 1] != 47 && !zip_entry_is_alignment(v13))
      {
        if ((v15 & 0x80000000) != 0)
        {
LABEL_15:
          v14 = *v14;
        }

LABEL_16:
        isDoubleCompressed = re::isDoubleCompressed(v13);
        if (isDoubleCompressed)
        {
          v19 = strlen(v14);
          v20 = v19 - 4;
        }

        else
        {
        }

        v29 = 0;
        v30 = 0;
        v31 = 0;
        v21 = re::Hash<re::DynamicString>::operator()(&v32, &v26);
        re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1 + 24, &v26, v21, &v29);
        if (HIDWORD(v30) == 0x7FFFFFFF)
        {
          v22 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1 + 24, v30, v29);
          *(v22 + 8) = v26;
          v23 = v28;
          v24 = v27;
          v26 = 0;
          *(&v27 + 1) = 0;
          v28 = 0;
          *(v22 + 16) = v24;
          *(v22 + 32) = v23;
          *(v22 + 40) = i;
          ++*(a1 + 64);
        }

        else if (v26 && (v27 & 1) != 0)
        {
          (*(*v26 + 40))();
        }
      }
    }
  }

  return a1;
}

uint64_t re::RealityArchiveEntryTable::tryFindEntryIndex(re::RealityArchiveEntryTable *this, char *a2)
{
  v4 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(this + 24, a2);
  if (!v4)
  {
    re::filePathURLConverted(a2, &v7);
    if (v8)
    {
      v6 = *&v9[7];
    }

    else
    {
      v6 = v9;
    }

    v4 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(this + 24, v6);
    if (v7 && (v8 & 1) != 0)
    {
      (*(*v7 + 40))();
    }
  }

  return v4;
}

void re::RealityArchive::~RealityArchive(re::RealityArchive *this)
{
  *this = &unk_1F5CBD070;
  zip_close(*(this + 3));
  *(this + 3) = 0;
  v2 = *(this + 10);
  if (v2)
  {
    fclose(v2);
  }

  re::DynamicString::deinit((this + 40));
  v3 = *(this + 4);
  if (v3)
  {

    *(this + 4) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::RealityArchive::~RealityArchive(this);

  JUMPOUT(0x1E6906520);
}

void *re::RealityArchive::findEntry(re::RealityArchive *this, char *a2)
{
  v2 = *(this + 3);
  result = re::RealityArchiveEntryTable::tryFindEntryIndex(*(this + 4), a2);
  if (result)
  {
    return (*(*(v2 + 152) + 8 * ((*(v2 + 176) + *result) / 0x27uLL)) + 104 * ((*(v2 + 176) + *result) % 0x27uLL));
  }

  return result;
}

id re::RealityArchive::createOrReuseTable@<X0>(re *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a3 && *(a3 + 72) == a1)
  {
    *a4 = a3;

    return (a3 + 8);
  }

  else
  {
    v8 = re::globalAllocators(a1);
    v9 = (*(*v8[2] + 32))(v8[2], 80, 8);
    result = re::RealityArchiveEntryTable::RealityArchiveEntryTable(v9, a1, a2);
    *a4 = result;
  }

  return result;
}

__n128 re::RealityArchive::makeByOpeningFileAtPath@<Q0>(re::RealityArchive *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  *__error() = 0;
  v7 = fopen(this, "rb");
  if (!v7)
  {
    v17 = __error();
    v20 = strerror(*v17);
    re::DynamicString::format("RERealityArchive: Failed to open FILE pointer due to error: %s", &v22, v20);
LABEL_12:
    result = v22;
    v18 = v23;
    v19 = v24;
    *a3 = 0;
    *(a3 + 8) = result;
    *(a3 + 24) = v18;
    *(a3 + 32) = v19;
    return result;
  }

  v8 = v7;
  v9 = zip_file_read(v7);
  if (!v9)
  {
    fclose(v8);
    re::DynamicString::format("RERealityArchive: Failed to open archive, file corrupted or not a proper archive file", &v22);
    goto LABEL_12;
  }

  v10 = v9;
  v11 = strlen(this);
  if (v11)
  {
    MurmurHash3_x64_128(this, v11, 0, v22.n128_u64);
    v11 = ((v22.n128_u64[1] + (v22.n128_u64[0] << 6) + (v22.n128_u64[0] >> 2) - 0x61C8864680B583E9) ^ v22.n128_u64[0]);
  }

  v12 = re::RealityArchive::createOrReuseTable(v11, v10, a2, &v21);
  v13 = re::globalAllocators(v12);
  v14 = (*(*v13[2] + 32))(v13[2], 88, 8);
  v15 = v21;
  re::RealityArchive::RealityArchive(v14, v10, v21);
  v14[10] = v8;
  re::DynamicString::operator=((v14 + 5), &v22);
  *a3 = 1;
  *(a3 + 8) = v14;
  if (v22.n128_u64[0] && (v22.n128_u8[8] & 1) != 0)
  {
    (*(*v22.n128_u64[0] + 40))();
  }

  if (v15)
  {
  }

  return result;
}

__n128 re::RealityArchive::makeFromFile@<Q0>(FILE *this@<X0>, __sFILE *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = zip_file_read(this);
  if (v7)
  {
    v8 = v7;
    v9 = re::RealityArchive::createOrReuseTable(this, v7, a2, &v17);
    v10 = re::globalAllocators(v9);
    v11 = (*(*v10[2] + 32))(v10[2], 88, 8);
    v12 = v17.n128_u64[0];
    v13 = re::RealityArchive::RealityArchive(v11, v8, v17.n128_i64[0]);
    *a3 = 1;
    *(a3 + 8) = v13;
    if (v12)
    {
    }
  }

  else
  {
    re::DynamicString::format("RERealityArchive: Failed to create archive", &v17);
    result = v17;
    v15 = v18;
    v16 = v19;
    *a3 = 0;
    *(a3 + 8) = result;
    *(a3 + 24) = v15;
    *(a3 + 32) = v16;
  }

  return result;
}

__n128 re::RealityArchive::makeByReadingBuffer@<Q0>(id *this@<X0>, const re::Data *a2@<X1>, uint64_t a3@<X8>)
{
  *__error() = 0;
  v7 = fmemopen([*this bytes], objc_msgSend(*this, "length"), "rb");
  if (!v7)
  {
    v17 = __error();
    v20 = strerror(*v17);
    re::DynamicString::format("Failed to open FILE pointer due to error: %s", &v21, v20);
LABEL_7:
    result = v21;
    v18 = v22;
    v19 = v23;
    *a3 = 0;
    *(a3 + 8) = result;
    *(a3 + 24) = v18;
    *(a3 + 32) = v19;
    return result;
  }

  v8 = v7;
  v9 = zip_file_read(v7);
  if (!v9)
  {
    fclose(v8);
    re::DynamicString::format("RERealityArchive: Failed to create archive", &v21);
    goto LABEL_7;
  }

  v10 = v9;
  v11 = re::RealityArchive::createOrReuseTable([*this bytes], v9, a2, &v21);
  v12 = re::globalAllocators(v11);
  v13 = (*(*v12[2] + 32))(v12[2], 88, 8);
  v14 = v21.n128_u64[0];
  v15 = re::RealityArchive::RealityArchive(v13, v10, v21.n128_i64[0]);
  *(v15 + 80) = v8;
  re::ObjCObject::operator=((v15 + 72), this);
  *a3 = 1;
  *(a3 + 8) = v13;
  if (v14)
  {
  }

  return result;
}

__n128 re::RealityArchive::verifyRealityArchiveAtFilePath@<Q0>(re::RealityArchive *this@<X0>, uint64_t a2@<X8>)
{
  *__error() = 0;
  v5 = fopen(this, "rb");
  if (v5)
  {
    v6 = v5;
    v7 = zip_file_read(v5);
    if (v7)
    {
      v8 = v7;
      v9 = zip_verify_crc_archive(v7);
      zip_close(v8);
      fclose(v6);
      *a2 = 1;
      *(a2 + 8) = v9;
      return result;
    }

    fclose(v6);
    re::DynamicString::format("RERealityArchive: Failed to create archive from provided file path: %s", &v15, this);
  }

  else
  {
    v11 = __error();
    v14 = strerror(*v11);
    re::DynamicString::format("Failed to open FILE pointer due to error: %s", &v15, v14);
  }

  result = v15;
  v12 = v16;
  v13 = v17;
  *a2 = 0;
  *(a2 + 8) = result;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  return result;
}

__n128 re::RealityArchive::copy@<Q0>(re::RealityArchive *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 6);
  if (v4)
  {
    v5 = v4 >> 1;
  }

  else
  {
    v5 = v4 >> 1;
  }

  if (v5)
  {
    *__error() = 0;
    if (*(this + 48))
    {
      v6 = *(this + 7);
    }

    else
    {
      v6 = this + 49;
    }

    v7 = fopen(v6, "rb");
  }

  else
  {
    if (!*(this + 9))
    {
      goto LABEL_15;
    }

    *__error() = 0;
    v7 = fmemopen([*(this + 9) bytes], objc_msgSend(*(this + 9), "length"), "rb");
  }

  if (v7)
  {
    zip_copy_with_read_handle();
  }

  v8 = __error();
  v12 = strerror(*v8);
  re::DynamicString::format("Failed to open FILE pointer due to error: %s", &v13, v12);
LABEL_15:
  result = v13;
  v10 = v14;
  v11 = v15;
  *a2 = 0;
  *(a2 + 8) = result;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  return result;
}

void *re::RealityArchive::entryNames@<X0>(re::RealityArchive *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(this + 4) + 52);
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  result = re::DynamicArray<re::DynamicString>::setCapacity(a2, v4);
  ++*(a2 + 24);
  v6 = *(this + 4);
  v7 = *(v6 + 56);
  if (v7)
  {
    v8 = 0;
    v9 = *(v6 + 40);
    while (1)
    {
      v10 = *v9;
      v9 += 14;
      if (v10 < 0)
      {
        break;
      }

      if (v7 == ++v8)
      {
        LODWORD(v8) = *(v6 + 56);
        break;
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  while (v8 != v7)
  {
    result = re::DynamicArray<re::DynamicString>::add(a2, (*(v6 + 40) + 56 * v8 + 8));
    v11 = *(v6 + 56);
    if (v11 <= v8 + 1)
    {
      v11 = v8 + 1;
    }

    while (v11 - 1 != v8)
    {
      LODWORD(v8) = v8 + 1;
      if ((*(*(v6 + 40) + 56 * v8) & 0x80000000) != 0)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v8) = v11;
LABEL_14:
    ;
  }

  return result;
}

__n128 re::RealityArchive::newDataByLoadingEntryWithName@<Q0>(re::RealityArchive *this@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(this + 3);
  EntryIndex = re::RealityArchiveEntryTable::tryFindEntryIndex(*(this + 4), a2);
  if (EntryIndex && *(*(v5 + 152) + 8 * ((*(v5 + 176) + *EntryIndex) / 0x27uLL)))
  {
    reality_v1_entry_load_data_begin();
  }

  re::DynamicString::format("Could not find archive entry named %s.", v9, a2);
  result = v9[0];
  v8 = v9[1];
  *a3 = 0;
  *(a3 + 8) = result;
  *(a3 + 24) = v8;
  return result;
}

uint64_t re::RealityArchive::uncompressedEntryRange(re::RealityArchive *this, char *a2, unint64_t *a3, unint64_t *a4)
{
  v6 = *(this + 3);
  EntryIndex = re::RealityArchiveEntryTable::tryFindEntryIndex(*(this + 4), a2);
  if (EntryIndex && (v8 = *(v6 + 176) + *EntryIndex, (v9 = *(*(v6 + 152) + 8 * (v8 / 0x27))) != 0) && (v10 = v9 + 104 * (v8 % 0x27), !re::isDoubleCompressed(v10)) && *(v10 + 40) == *(v10 + 48))
  {
    *a3 = zip_entry_data_offset(v10);
    v11 = *(v10 + 48);
    result = 1;
  }

  else
  {
    v11 = 0;
    result = 0;
    *a3 = 0;
  }

  *a4 = v11;
  return result;
}

uint64_t *re::RealityArchive::unarchiveToDirectory@<X0>(re::RealityArchive *this@<X0>, re *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = this;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  re::DynamicString::setCapacity(&v45, 0);
  v7 = re::ensureFolderExists(a2, v6);
  if ((v7 & 1) == 0)
  {
    re::DynamicString::format("Failed to create directory %s.", v41, a2);
    v32 = *v41;
    v33 = *&v41[16];
    v34 = v42;
    *a3 = 0;
    *(a3 + 8) = v32;
    *(a3 + 24) = v33;
    *(a3 + 32) = v34;
    goto LABEL_61;
  }

  v38 = *(*(v4 + 3) + 184);
  if (!v38)
  {
    goto LABEL_60;
  }

  v9 = 0;
  v36 = 1;
  v37 = v4;
  do
  {
    v10 = *(v4 + 3);
    v11 = *(v10 + 176) + v9;
    v12 = *(*(v10 + 152) + 8 * (v11 / 0x27));
    v13 = strlen(a2);
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v13;
    if (v13)
    {
      memcpy(&__dst, a2, v13);
    }

    v15 = v12 + 104 * (v11 % 0x27);
    __dst.__r_.__value_.__s.__data_[v14] = 0;
    std::string::append(&__dst, "/");
    v16 = (v15 + 8);
    v17 = (v15 + 8);
    if (*(v15 + 31) < 0)
    {
      v17 = *v16;
    }

    std::string::append(&__dst, v17);
    v19 = *(v15 + 31);
    if (v19 < 0)
    {
      v19 = *(v15 + 16);
      if (!v19)
      {
LABEL_22:
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        goto LABEL_25;
      }

      v20 = *v16;
    }

    else
    {
      v20 = (v15 + 8);
      if (!*(v15 + 31))
      {
        goto LABEL_22;
      }
    }

    v21 = v20[v19 - 1];
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    if (v21 == 47)
    {
      re::ensureFolderExists(p_dst, v18);
      v4 = v37;
      v30 = 0;
      goto LABEL_50;
    }

LABEL_25:
    re::ensureFolderExistsForFile(p_dst, v18);
    v23 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    v24 = __dst.__r_.__value_.__r.__words[0];
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &__dst;
    }

    else
    {
      v25 = __dst.__r_.__value_.__r.__words[0];
    }

    v26 = strrchr(v25, 46);
    if (v26)
    {
      v27 = v26;
      if (!strcmp(v26, ".arz"))
      {
        std::string::erase(&__dst, v27 - v25, 4uLL);
        v23 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        v24 = __dst.__r_.__value_.__r.__words[0];
      }
    }

    if (v23 >= 0)
    {
      v28 = &__dst;
    }

    else
    {
      v28 = v24;
    }

    re::FileStreamWriter::open(v28, v41);
    if (v41[0])
    {
      reality_v1_entry_load_data_begin();
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = &__dst;
    }

    else
    {
      v29 = __dst.__r_.__value_.__r.__words[0];
    }

    re::DynamicString::format("RERealityArchive: Failed to open file for writing at %s.", &v39, v29);
    re::DynamicString::operator=(&v45, &v39);
    if (v39 && (v40 & 1) != 0)
    {
      (*(*v39 + 40))();
    }

    v4 = v37;
    if (v41[0] == 1)
    {
      if (*&v41[16] && v42 == 1)
      {
        fclose(*&v41[16]);
      }
    }

    else if (v42 && (v43 & 1) != 0)
    {
      (*(*v42 + 40))();
    }

    v30 = 1;
    v36 = 0;
LABEL_50:
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (++v9 == v38)
    {
      v31 = 1;
    }

    else
    {
      v31 = v30;
    }
  }

  while (v31 != 1);
  if ((v36 & 1) == 0)
  {
    re::DynamicString::DynamicString(v41, &v45);
    *a3 = 0;
    *(a3 + 8) = *v41;
    *(a3 + 32) = v42;
    *(a3 + 16) = *&v41[8];
    goto LABEL_61;
  }

LABEL_60:
  *a3 = 1;
LABEL_61:
  result = v45;
  if (v45)
  {
    if (v46)
    {
      return (*(*v45 + 40))(v45, v47);
    }
  }

  return result;
}

__n128 re::RealityArchive::archiveFromDirectory@<Q0>(char *a1@<X0>, char *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (stat(a1, &v13) || (v13.st_mode & 0x4000) == 0)
  {
    re::DynamicString::format("Could not find directory %s.", &v13, a1);
  }

  else if (re::ensureFolderExistsForFile(a2, v8))
  {
    v9 = reality_archive_file_pack(a1, a2, a3 == 1);
    if (v9)
    {
      *a4 = 1;
      return result;
    }
  }

  else
  {
    re::DynamicString::format("Could not create parent folders for file path %s.", &v13, a2);
  }

  result = *&v13.st_dev;
  v11 = *&v13.st_uid;
  v12 = *&v13.st_rdev;
  *a4 = 0;
  *(a4 + 8) = result;
  *(a4 + 24) = v11;
  *(a4 + 32) = v12;
  return result;
}

uint64_t re::RealityArchive::RealityArchive(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(a1 + 24) = a2;
  *a1 = &unk_1F5CBD070;
  *(a1 + 32) = a3;
  if (a3)
  {
    v6 = (a3 + 8);
  }

  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  re::DynamicString::setCapacity((a1 + 40), 0);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return a1;
}

void re::RealityArchiveEntryTable::~RealityArchiveEntryTable(re::RealityArchiveEntryTable *this)
{
  *this = &unk_1F5CBD040;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 3);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CBD040;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 3);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::anonymous namespace::ArchiveEntryData::~ArchiveEntryData(CFTypeRef *this)
{
  *this = &unk_1F5CBD0D0;
  CFRelease(this[3]);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);
}

{
  *this = &unk_1F5CBD0D0;
  CFRelease(this[3]);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphEmitterAsset::~RenderGraphEmitterAsset(re::RenderGraphEmitterAsset *this)
{
  *this = &unk_1F5CBD118;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = re::globalAllocators(this)[2];
    (**v2)(v2);
    (*(*v3 + 40))(v3, v2);
    *(this + 2) = 0;
  }
}

{
  re::RenderGraphEmitterAsset::~RenderGraphEmitterAsset(this);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::RenderGraphEmitterAsset::assetType(re::RenderGraphEmitterAsset *this)
{
  {
    re::RenderGraphEmitterAsset::assetType(void)::type = "RenderGraphEmitter";
    qword_1EE1C67C8 = 0;
    re::AssetType::generateCompiledExtension(&re::RenderGraphEmitterAsset::assetType(void)::type);
  }

  return &re::RenderGraphEmitterAsset::assetType(void)::type;
}

uint64_t re::RenderGraphEmitterAssetLoader::introspectionType(re::RenderGraphEmitterAssetLoader *this)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::RenderGraphEmitterAsset>(BOOL)::info = re::internal::getOrCreateInfo("RenderGraphEmitterAsset", re::allocInfo_RenderGraphEmitterAsset, re::initInfo_RenderGraphEmitterAsset, &re::internal::introspectionInfoStorage<re::RenderGraphEmitterAsset>, 0);
      v1 = &unk_1EE187000;
    }
  }

  return v1[187];
}

re *re::internal::destroyPersistent<re::RenderGraphEmitterAsset>(re *result, uint64_t a2, void (***a3)(void))
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

void re::RenderGraphEmitterAssetLoader::findDependencies(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
}

uint64_t re::ServiceLocator::service<re::AssetService>(uint64_t a1)
{
  result = re::ServiceLocator::serviceOrNull<re::AssetService>(a1);
  if (!result)
  {
    v2 = re::introspect<re::AssetService>(0);
    re::StringID::invalid(v6);
    re::internal::missingServiceErrorMessage(v2, v6, v7);
    re::DynamicString::~DynamicString(v7);
    re::StringID::~StringID(v6);
    v3 = re::introspect<re::AssetService>(0);
    re::StringID::invalid(v6);
    re::internal::missingServiceErrorMessage(v3, v6, v7);
    if (v7[8])
    {
      v5 = *&v8[7];
    }

    else
    {
      v5 = v8;
    }

    re::internal::assertLog(5, v4, "assertion failure: '%s' (%s:line %i) %s", "service", "service", 69, v5);
    re::DynamicString::~DynamicString(v7);
    re::StringID::~StringID(v6);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void *re::allocInfo_RenderGraphEmitterPointer(re *this)
{
  if ((atomic_load_explicit(&qword_1EE193BF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193BF0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE193C78, "RenderGraphEmitterPointer");
    __cxa_guard_release(&qword_1EE193BF0);
  }

  return &unk_1EE193C78;
}

void re::initInfo_RenderGraphEmitterPointer(re *this, re::IntrospectionBase *a2)
{
  v13[0] = 0x32C67EAE114248ELL;
  v13[1] = "RenderGraphEmitterPointer";
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  *(this + 2) = v14;
  if ((atomic_load_explicit(&qword_1EE193BF8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE193BF8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<re::RenderGraphEmitterBase *>::get();
      v8 = re::introspect_size_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "emitter";
      *(v9 + 16) = &qword_1EE193C38;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0x800000001;
      *(v9 + 40) = 2;
      *(v9 + 48) = v8;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE193C28 = v9;
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 8, 4);
      *v11 = 0x100000004;
      qword_1EE193C30 = v11;
      __cxa_guard_release(&qword_1EE193BF8);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE193C28;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphEmitterPointer>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphEmitterPointer>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphEmitterPointer>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphEmitterPointer>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v12 = v14;
}

void re::IntrospectionInfo<re::RenderGraphEmitterBase *>::get()
{
  if ((atomic_load_explicit(&qword_1EE193C20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193C20))
  {
    re::IntrospectionPointer::IntrospectionPointer(&qword_1EE193C38);
    __cxa_guard_release(&qword_1EE193C20);
  }

  if ((_MergedGlobals_58 & 1) == 0)
  {
    _MergedGlobals_58 = 1;
    v0 = re::introspect_RenderGraphEmitterBase(1);
    ArcSharedObject::ArcSharedObject(&qword_1EE193C38, 0);
    qword_1EE193C48 = 0x800000001;
    dword_1EE193C50 = 8;
    word_1EE193C54 = 0;
    *&xmmword_1EE193C58 = 0;
    *(&xmmword_1EE193C58 + 1) = 0xFFFFFFFFLL;
    qword_1EE193C38 = &unk_1F5CBD2C0;
    qword_1EE193C68 = v0;
    unk_1EE193C70 = 0;
    re::IntrospectionRegistry::add(v1, v2);
    re::getPrettyTypeName(&qword_1EE193C38, &v7);
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

    xmmword_1EE193C58 = v5;
    if (v9)
    {
      if (v9)
      {
      }
    }
  }
}

void *re::allocInfo_RenderGraphEmitterAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE193C08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193C08))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE193D08, "RenderGraphEmitterAsset");
    __cxa_guard_release(&qword_1EE193C08);
  }

  return &unk_1EE193D08;
}

void re::initInfo_RenderGraphEmitterAsset(re *this, re::IntrospectionBase *a2)
{
  v12[0] = 0xA52A22BD1BA272F4;
  v12[1] = "RenderGraphEmitterAsset";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE193C18, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE193C18);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE193C00;
      if (!qword_1EE193C00)
      {
        v8 = re::allocInfo_RenderGraphEmitterPointer(v6);
        qword_1EE193C00 = v8;
        re::initInfo_RenderGraphEmitterPointer(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "data";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0x800000001;
      *(v10 + 40) = 0;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE193C10 = v10;
      __cxa_guard_release(&qword_1EE193C18);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE193C10;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphEmitterAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphEmitterAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphEmitterAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphEmitterAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v11 = v13;
}

void *re::internal::defaultConstructV2<re::RenderGraphEmitterAsset>(void *result)
{
  *result = &unk_1F5CBD118;
  result[2] = 0;
  return result;
}

uint64_t re::introspect<re::AssetService>(unsigned int a1)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::AssetService>(BOOL)::info = re::introspect_AssetService(a1);
      v1 = &unk_1EE187000;
    }
  }

  return v1[241];
}

re::IntrospectionPointer *re::IntrospectionPointer::IntrospectionPointer(re::IntrospectionPointer *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 22) = 0;
  v2[2] = 0;
  v2[4] = 0;
  v2[5] = 0xFFFFFFFFLL;
  *v2 = &unk_1F5CBD2C0;
  v2[7] = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset((v2 + 6));
  return this;
}

void re::IntrospectionPointer::~IntrospectionPointer(re::IntrospectionPointer *this)
{
  *this = &unk_1F5CBD2C0;
  re::SerializedReference<re::IntrospectionBase const*>::reset(this + 48);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CBD2C0;
  re::SerializedReference<re::IntrospectionBase const*>::reset(this + 48);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::IntrospectionPointer::childInfo(re::IntrospectionPointer *this, uint64_t a2)
{
  if (!a2)
  {
    return *(this + 6);
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Index out of range.", "index == 0", "childInfo", 976, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

void *re::allocInfo_BuiltinTextureLoadDescriptorParameters(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_59, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_59))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE193DC8, "BuiltinTextureLoadDescriptorParameters");
    __cxa_guard_release(&_MergedGlobals_59);
  }

  return &unk_1EE193DC8;
}

void re::initInfo_BuiltinTextureLoadDescriptorParameters(re *this, re::IntrospectionBase *a2)
{
  v11[0] = 0xAFF0BF94697C90EELL;
  v11[1] = "BuiltinTextureLoadDescriptorParameters";
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  *(this + 2) = v12;
  if ((atomic_load_explicit(&qword_1EE193DA8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE193DA8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicString>::get(1, v7);
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
      qword_1EE193DA0 = v9;
      __cxa_guard_release(&qword_1EE193DA8);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE193DA0;
  *(this + 9) = re::internal::defaultConstruct<re::BuiltinTextureLoadDescriptorParameters>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BuiltinTextureLoadDescriptorParameters>;
  *(this + 13) = re::internal::defaultConstructV2<re::BuiltinTextureLoadDescriptorParameters>;
  *(this + 14) = re::internal::defaultDestructV2<re::BuiltinTextureLoadDescriptorParameters>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v10 = v12;
}

void *re::internal::defaultConstruct<re::BuiltinTextureLoadDescriptorParameters>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;

  return re::DynamicString::setCapacity(a3, 0);
}

void *re::internal::defaultConstructV2<re::BuiltinTextureLoadDescriptorParameters>(_anonymous_namespace_ *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;

  return re::DynamicString::setCapacity(a1, 0);
}

_anonymous_namespace_ *re::BuiltinTextureAssetProvider::BuiltinTextureAssetProvider(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5CBD318;
  if ((atomic_load_explicit(&qword_1EE193DC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193DC0))
  {
    qword_1EE193DB8 = re::internal::getOrCreateInfo("BuiltinTextureLoadDescriptorParameters", re::allocInfo_BuiltinTextureLoadDescriptorParameters, re::initInfo_BuiltinTextureLoadDescriptorParameters, &unk_1EE193DB0, 0);
    __cxa_guard_release(&qword_1EE193DC0);
  }

  re::BuiltinTextureAssetProvider::s_loadDescriptorParametersIntrospect = qword_1EE193DB8;
  *(a1 + 3) = a2;
  *(a1 + 4) = re::ServiceLocator::serviceOrNull<re::RenderManager>(a3);
  return a1;
}

void re::BuiltinTextureAssetProvider::~BuiltinTextureAssetProvider(re::BuiltinTextureAssetProvider *this)
{
  *(this + 3) = 0;
  *(this + 4) = 0;
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *(this + 3) = 0;
  *(this + 4) = 0;
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::BuiltinTextureAssetProvider::makeDescriptor@<X0>(re::BuiltinTextureAssetProvider *this@<X0>, uint64_t a2@<X8>)
{
  re::BuiltinTextureAssetProvider::makeDescriptor(&v6, a2);
  result = v6;
  if (v6)
  {
    if (v7)
    {
      return (*(*v6 + 40))();
    }
  }

  return result;
}

uint64_t re::BuiltinTextureAssetProvider::makeDescriptor@<X0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v4 = re::DynamicString::setCapacity(a2, 0);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 56) = 0;
  *(a2 + 48) = 0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0;
  re::DynamicString::setCapacity((a2 + 112), 0);
  v13 = "BuiltinTexture";
  v14 = 14;
  v5 = re::DynamicString::operator=(a2, &v13);
  v6 = *re::TextureAsset::assetType(v5);
  v7 = strlen(v6);
  v13 = v6;
  v14 = v7;
  v8 = re::DynamicString::operator=((a2 + 112), &v13);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  re::DynamicString::setCapacity(&v13, 0);
  re::DynamicString::operator=(&v13, a1);
  re::DynamicString::DynamicString(v12, &v13);
  re::AssetLoadDescriptor::setIntrospectableData(a2, re::BuiltinTextureAssetProvider::s_loadDescriptorParametersIntrospect, v12, 0);
  if (*&v12[0])
  {
    if (BYTE8(v12[0]))
    {
      (*(**&v12[0] + 40))();
    }

    memset(v12, 0, sizeof(v12));
  }

  result = v13;
  if (v13)
  {
    if (v14)
    {
      return (*(*v13 + 40))(v13, v15, v9, v10);
    }
  }

  return result;
}

re::DynamicString *re::BuiltinTextureAssetProvider::load@<X0>(re::BuiltinTextureAssetProvider *this@<X0>, const re::AssetLoadDescriptor *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 8))
  {
    v8 = *(a2 + 2);
  }

  else
  {
    v8 = a2 + 9;
  }

  v9 = strcmp(v8, "BuiltinTexture");
  v10 = v9;
  v11 = *re::TextureAsset::assetType(v9);
  if (*(a2 + 15))
  {
    v12 = *(a2 + 16);
  }

  else
  {
    v12 = a2 + 121;
  }

  v13 = strcmp(v12, v11);
  if (v10 | v13)
  {
    v15 = v47;
    v16 = v48;
    v17 = v49;
    *a3 = 0;
    *(a3 + 8) = v15;
    *(a3 + 24) = v16;
    *(a3 + 32) = v17;
    return result;
  }

  v58 = 0uLL;
  v59 = 0;
  re::DynamicString::setCapacity(&v57, 0);
  v18 = re::AssetLoadDescriptor::getIntrospectableData<re::BuiltinTextureLoadDescriptorParameters>(a2, &v57);
  if (v18)
  {
    v55 = 0;
    v56 = 0;
    v19 = *(this + 4);
    if (!v19)
    {
      goto LABEL_35;
    }

    v20 = *(v19 + 56);
    if (v20)
    {
      if (v58)
      {
        v22 = *(&v58 + 1);
        v18 = strncmp(*(&v58 + 1), "fallback.", 9uLL);
        if (v18)
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (*(&v58 + 1) != 0x6B6361626C6C6166 || BYTE9(v58) != 46)
        {
          goto LABEL_31;
        }

        v22 = &v58 + 1;
      }

      v26 = *(v20 + 240);
      v27 = v22[9];
      if (v22[9])
      {
        v28 = v22[10];
        if (v28)
        {
          v29 = (v22 + 11);
          do
          {
            v27 = 31 * v27 + v28;
            v30 = *v29++;
            v28 = v30;
          }

          while (v30);
        }

        v27 &= ~0x8000000000000000;
      }

      *&v47 = v27;
      v18 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v26 + 1, &v47);
      if (v18 != -1)
      {
        (*(*v26 + 24))(&v42, v26, *(v26[2] + 16 * v18 + 9));
        *&v47 = v42;
        DWORD2(v47) = 0;
        std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v55, &v47);
        if (DWORD2(v47) != -1)
        {
          (off_1F5CBD3A8[DWORD2(v47)])(&v60, &v47);
        }

        DWORD2(v47) = -1;
        v18 = v42;
        if (v42)
        {
        }
      }
    }

LABEL_31:
    if (v56)
    {
      if (v56 != 1)
      {
        v40 = std::__throw_bad_variant_access[abi:nn200100]();
        return re::AssetLoadDescriptor::getIntrospectableData<re::BuiltinTextureLoadDescriptorParameters>(v40, v41);
      }

      if (!*(v55 + 48))
      {
        goto LABEL_48;
      }

      v31 = (v55 + 24);
LABEL_36:
      if (*v31)
      {
        LOWORD(v47) = 0;
        v48 = 0;
        v49 = 0;
        *(&v47 + 1) = 0;
        v51 = 0u;
        memset(v52, 0, 28);
        v53 = 0;
        v54 = 0;
        TextureAsset = re::TextureAsset::makeTextureAsset(&v55, &v47, 6, 0);
        if (*&v52[0])
        {
          if (v53)
          {
            (*(**&v52[0] + 40))();
          }

          v53 = 0;
          memset(v52, 0, 24);
          ++DWORD2(v52[1]);
        }

        if (v51)
        {
        }

        *(&v47 + 1) = 0;
        v48 = 0;
        v49 = 0;
        re::DynamicString::setCapacity(&v47, 0);
        BYTE8(v51) = 0;
        LOBYTE(v52[0]) = 0;
        v50 = TextureAsset;
        *&v51 = 0;
        re::DynamicString::operator=(&v47, (a2 + 112));
        re::types::Ok<re::AssetLoadResult>::Ok(&v42, &v47);
        *a3 = 1;
        *(a3 + 8) = v42;
        *(a3 + 32) = v44;
        *(a3 + 16) = v43;
        v34 = v46;
        *(a3 + 40) = v45;
        *(a3 + 56) = v34;
        if (v51)
        {

          *&v51 = 0;
        }

        v35 = v47;
        if (!v47 || (BYTE8(v47) & 1) == 0)
        {
          goto LABEL_52;
        }

        v36 = v48;
        goto LABEL_51;
      }

LABEL_48:
      re::DynamicString::operator+(&v42, &v57, &v47);
      v37 = v47;
      v47 = 0uLL;
      v38 = v48;
      v39 = v49;
      v48 = 0;
      v49 = 0;
      *a3 = 0;
      *(a3 + 8) = v37;
      *(a3 + 24) = v38;
      *(a3 + 32) = v39;
      v35 = v42;
      if (!v42 || (v43 & 1) == 0)
      {
LABEL_52:
        if (v56 != -1)
        {
          (off_1F5CBD3A8[v56])(&v47, &v55);
        }

        goto LABEL_54;
      }

      v36 = *(&v43 + 1);
LABEL_51:
      (*(*v35 + 40))(v35, v36);
      goto LABEL_52;
    }

LABEL_35:
    v31 = &v55;
    goto LABEL_36;
  }

  v23 = v47;
  v24 = v48;
  v25 = v49;
  *a3 = 0;
  *(a3 + 8) = v23;
  *(a3 + 24) = v24;
  *(a3 + 32) = v25;
LABEL_54:
  result = v57;
  if (v57)
  {
    if (v58)
    {
      return (*(*v57 + 40))();
    }
  }

  return result;
}

uint64_t re::AssetLoadDescriptor::getIntrospectableData<re::BuiltinTextureLoadDescriptorParameters>(re::AssetLoadDescriptor *a1, re::DynamicString **a2)
{
  v3 = a2;
  if ((atomic_load_explicit(&qword_1EE193DC0, memory_order_acquire) & 1) == 0)
  {
    v6 = a1;
    v8 = __cxa_guard_acquire(&qword_1EE193DC0);
    v3 = a2;
    v9 = v8;
    a1 = v6;
    if (v9)
    {
      qword_1EE193DB8 = re::internal::getOrCreateInfo("BuiltinTextureLoadDescriptorParameters", re::allocInfo_BuiltinTextureLoadDescriptorParameters, re::initInfo_BuiltinTextureLoadDescriptorParameters, &unk_1EE193DB0, 0);
      __cxa_guard_release(&qword_1EE193DC0);
      a1 = v6;
      v3 = a2;
    }
  }

  v4 = qword_1EE193DB8;

  return re::AssetLoadDescriptor::getIntrospectableData(a1, v4, v3, 0);
}

__n128 re::BuiltinTextureAssetProvider::resolveChild@<Q0>(re::BuiltinTextureAssetProvider *this@<X0>, uint64_t a2@<X8>)
{
  result = v9;
  v7 = v10;
  v8 = v11;
  *a2 = 0;
  *(a2 + 8) = result;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  return result;
}

re::DynamicString *re::BuiltinTextureAssetProvider::getDescription(re::BuiltinTextureAssetProvider *this, const re::AssetLoadDescriptor *a2, re::DynamicString *a3)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  re::DynamicString::setCapacity(&v6, 0);
  if (re::AssetLoadDescriptor::getIntrospectableData<re::BuiltinTextureLoadDescriptorParameters>(a2, &v6))
  {
    re::DynamicString::operator=(a3, &v6);
  }

  else
  {
    v10[0] = "mangled";
    v10[1] = 7;
    re::DynamicString::operator=(a3, v10);
  }

  result = v6;
  if (v6)
  {
    if (v7)
    {
      return (*(*v6 + 40))();
    }
  }

  return result;
}

uint64_t re::BuiltinTextureAssetProvider::buildFallbackTextureDescriptors@<X0>(uint64_t this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
  v4 = *(this + 32);
  if (v4)
  {
    v5 = *(v4 + 56);
    if (v5)
    {
      v6 = v5[30];
      v7 = v5[32];
      v8 = v5[33];
      v9 = (v6 + 8);
      v38[0] = v6 + 8;
      v10 = *(v6 + 24);
      if (v10 >= 0x10)
      {
        v11 = 0;
        v12 = *v9;
        v13 = v10 >> 4;
        v14 = -1.79399301e-307;
        v15 = 4.74803907e-38;
        while (1)
        {
          v16 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v12), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v38[1] = v16 ^ 0xFFFFLL;
          if (v16 != 0xFFFFLL)
          {
            break;
          }

          v11 -= 16;
          ++v12;
          if (!--v13)
          {
            return this;
          }
        }

        v17 = __clz(__rbit64(v16 ^ 0xFFFFLL));
        v18 = v17 - v11;
        v39 = v17 - v11;
        if (v17 + 1 != v11)
        {
          while (1)
          {
            v19 = *(*(v38[0] + 8) + 16 * v18 + 8) >> 8;
            if (v7 <= v19)
            {
              break;
            }

            v20 = v8 + 32 * v19;
            if (*(v20 + 8))
            {
              v21 = *(v20 + 16);
            }

            else
            {
              v21 = v20 + 9;
            }

            re::DynamicString::format("fallback.%s", &v23, v21);
            re::BuiltinTextureAssetProvider::makeDescriptor(&v23, v25);
            v22.n128_f64[0] = re::DynamicArray<re::AssetLoadDescriptor>::add(a3, v25);
            if (v36)
            {
              if (BYTE8(v36))
              {
                (*(*v36 + 40))(v22.n128_f64[0]);
              }

              v22 = 0uLL;
              v36 = 0u;
              v37 = 0u;
            }

            if (v31)
            {
              if (v35)
              {
                (*(*v31 + 40))(v22);
              }

              v35 = 0;
              v32 = 0;
              v33 = 0;
              v31 = 0;
              ++v34;
            }

            if (v26)
            {
              if (v30)
              {
                (*(*v26 + 40))(v22);
              }

              v30 = 0;
              v27 = 0;
              v28 = 0;
              v26 = 0;
              ++v29;
            }

            if (*&v25[0])
            {
              if (BYTE8(v25[0]))
              {
                (*(**&v25[0] + 40))(v22);
              }

              v22 = 0uLL;
              memset(v25, 0, sizeof(v25));
            }

            if (v23)
            {
              if (v24)
              {
                (*(*v23 + 40))(v22);
              }
            }

            this = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v38);
            v18 = v39;
            if (v39 == -1)
            {
              return this;
            }
          }

          re::internal::assertLog(6, a2, v14, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, *(*(v38[0] + 8) + 16 * v18 + 8) >> 8, v7);
          this = _os_crash();
          __break(1u);
        }
      }
    }
  }

  return this;
}

re::DynamicString *re::BuiltinTextureAssetProvider::getAssetPathForRelease@<X0>(_anonymous_namespace_ *a1@<X0>, re::AssetLoadDescriptor *a2@<X1>, unsigned int a3@<W4>, uint64_t a4@<X8>)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  re::DynamicString::setCapacity(&v18, 0);
  if (re::AssetLoadDescriptor::getIntrospectableData<re::BuiltinTextureLoadDescriptorParameters>(a2, &v18))
  {
    if (a3 < 0xA)
    {
      if (v19)
      {
        v13 = v20;
      }

      else
      {
        v13 = &v19 + 1;
      }

      re::DynamicString::format("memory:%s.compiledtexture", &v15, v13);
    }

    else
    {
      if (*(a2 + 1))
      {
        v7 = *(a2 + 2);
      }

      else
      {
        v7 = a2 + 9;
      }

      if (v19)
      {
        v8 = v20;
      }

      else
      {
        v8 = &v19 + 1;
      }

      re::DynamicString::format("%s:%s.compiledtexture", &v15, v7, v8);
    }

    v10 = v15;
    v11 = v16;
    v12 = v17;
    *a4 = 1;
  }

  else
  {
    if (*(a2 + 1))
    {
      v9 = *(a2 + 2);
    }

    else
    {
      v9 = a2 + 9;
    }

    re::DynamicString::format("Failed to deserialize parameters for %s", &v15, v9);
    v10 = v15;
    v11 = v16;
    v12 = v17;
    *a4 = 0;
  }

  *(a4 + 8) = v10;
  *(a4 + 24) = v11;
  *(a4 + 32) = v12;
  result = v18;
  if (v18)
  {
    if (v19)
    {
      return (*(*v18 + 40))();
    }
  }

  return result;
}

__n128 re::BuiltinTextureAssetProvider::makeDescriptorFromAssetPath@<Q0>(const re::AssetPath *a1@<X1>, uint64_t a2@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a1 + 17;
  if (*(a1 + 2))
  {
    v6 = *(a1 + 3);
  }

  else
  {
    v6 = a1 + 17;
  }

  v7 = strcmp(v6, "BuiltinTexture");
  if (v7)
  {
    v8 = *re::assetsLogObjects(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 2))
      {
        v14 = *(a1 + 3);
      }

      else
      {
        v14 = v5;
      }

      *v15 = 136315394;
      *&v15[4] = v14;
      *&v15[12] = 2080;
      *&v15[14] = "BuiltinTexture";
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "Unexpected scheme: %s, expected: %s", v15, 0x16u);
    }

    *a2 = 0;
  }

  else
  {
    if (*(a1 + 6))
    {
      v10 = *(a1 + 7);
    }

    else
    {
      v10 = (a1 + 49);
    }

    re::BuiltinTextureAssetProvider::makeDescriptor(v10, v15);
    *a2 = 1;
    *(a2 + 8) = *v15;
    *(a2 + 16) = *&v15[8];
    v11 = v17;
    *(a2 + 32) = v16;
    *(a2 + 40) = v11;
    *(a2 + 48) = v18;
    *(a2 + 64) = 1;
    v12 = v20;
    *(a2 + 72) = v19;
    *(a2 + 88) = v12;
    *(a2 + 104) = 1;
    result = v21;
    *(a2 + 144) = v23;
    v13 = v22;
    *(a2 + 112) = result;
    *(a2 + 128) = v13;
  }

  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 8);
  v4 = *(a2 + 8);
  if (v3 == -1)
  {
    if (v4 == -1)
    {
      return result;
    }
  }

  else if (v4 == -1)
  {
    result = (off_1F5CBD3A8[v3])(&v6, result, a2);
    *(v2 + 8) = -1;
    return result;
  }

  v5 = result;
  return (off_1F5CBD3B8[v4])(&v5, result, a2);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSD_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSI_1EJSC_SG_EEEEEEDcSK_DpT0_(uint64_t a1, id *a2)
{
  if (*a2)
  {

    *a2 = 0;
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSD_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSI_1EJSC_SG_EEEEEEDcSK_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {

    *a2 = 0;
  }
}

void **std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__assign_alt[abi:nn200100]<0ul,NS::SharedPtr<MTL::Texture>,NS::SharedPtr<MTL::Texture>>(void **result, void **a2, void **a3)
{
  v4 = result;
  v5 = *(result + 2);
  if (v5 == -1)
  {
    goto LABEL_7;
  }

  if (v5)
  {
    result = (off_1F5CBD3A8[v5])(&v6, result);
LABEL_7:
    *v4 = *a3;
    *a3 = 0;
    *(v4 + 2) = 0;
    return result;
  }

  return NS::SharedPtr<MTL::Texture>::operator=(a2, a3);
}

void **NS::SharedPtr<MTL::Texture>::operator=(void **a1, void **a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 == *a2)
  {
  }

  else
  {
    if (v4)
    {

      v5 = *a2;
    }

    *a1 = v5;
  }

  *a2 = 0;
  return a1;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__assign_alt[abi:nn200100]<1ul,re::SharedPtr<re::CPUTexture>,re::SharedPtr<re::CPUTexture>>(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v4 = result;
  v5 = *(result + 8);
  if (v5 != -1)
  {
    if (v5 == 1)
    {
      v6 = *a2;
      *a2 = *a3;
      *a3 = v6;
      return result;
    }

    result = (off_1F5CBD3A8[v5])(&v7, result);
  }

  *v4 = *a3;
  *a3 = 0;
  *(v4 + 8) = 1;
  return result;
}

uint64_t re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(void *a1, void *a2)
{
  if (!a1[7])
  {
    return -1;
  }

  v2 = a1[2];
  if (v2 < 0x10 || !a1[3])
  {
    return -1;
  }

  v3 = v2 >> 4;
  v4 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v5 = (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31);
  v6 = v5 % v3;
  v7 = vdupq_n_s8(v5 & 0x7F);
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  v9 = v5 % v3;
  while (1)
  {
    v10 = *(*a1 + 16 * v9);
    v11 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v7, v10), xmmword_1E304FAD0)))), 0x3830282018100800);
    v12 = __clz(__rbit64(v11));
    if (v12 <= 0x3F)
    {
      break;
    }

LABEL_10:
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v10, v8), xmmword_1E304FAD0)))), 0x3830282018100800))
    {
      return -1;
    }

    if (v9 + 1 == v3)
    {
      v9 = 0;
    }

    else
    {
      ++v9;
    }

    v14 = -1;
    if (v9 == v6)
    {
      return v14;
    }
  }

  v13 = 16 * v9;
  while (1)
  {
    v14 = v12 + v13;
    if (*a2 == *(a1[1] + 16 * (v12 + v13)))
    {
      return v14;
    }

    if (v12 <= 0x3E)
    {
      v12 = __clz(__rbit64((-2 << v12) & v11));
      if (v12 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_10;
  }
}

void re::VFXAsset::~VFXAsset(re::VFXAsset *this)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(this + 10) != -1)
  {
    v2 = sandbox_extension_release();
    if (v2)
    {
      v3 = *re::assetTypesLogObjects(v2);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v4 = *__error();
        v5[0] = 67109120;
        v5[1] = v4;
        _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "VFXAsset: sandbox release error %i", v5, 8u);
      }
    }
  }

  re::DynamicString::deinit((this + 32));
  re::DynamicString::deinit(this);
}

void sub_1E1F62F44(_Unwind_Exception *a1)
{
  re::DynamicString::deinit((v1 + 4));
  re::DynamicString::deinit(v1);
  _Unwind_Resume(a1);
}

uint64_t *re::VFXAsset::assetType(re::VFXAsset *this)
{
  {
    re::VFXAsset::assetType(void)::type = "VFX";
    qword_1EE1C5788 = 0;
    re::AssetType::generateCompiledExtension(&re::VFXAsset::assetType(void)::type);
  }

  return &re::VFXAsset::assetType(void)::type;
}

uint64_t re::VFXAssetLoader::introspectionType(re::VFXAssetLoader *this)
{
  v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v3)
    {
      re::introspect<re::VFXAsset>(BOOL)::info = re::internal::getOrCreateInfo("VFXAsset", re::allocInfo_VFXAsset, re::initInfo_VFXAsset, &re::internal::introspectionInfoStorage<re::VFXAsset>, 0);
      v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v1 + 258);
}

BOOL re::VFXAssetLoader::createRuntimeData(uint64_t *a1, uint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 8);
  v3 = v2 >> 1;
  if ((v2 & 1) == 0)
  {
    v3 = v2 >> 1;
  }

  if (v3)
  {
    v5 = (a2 + 64);
    if (*(a2 + 64))
    {
      return 1;
    }

    if (v2)
    {
      v9 = *(a2 + 16);
    }

    else
    {
      v9 = a2 + 9;
    }

    v10 = MEMORY[0x1E695DFF8];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
    v12 = [v10 fileURLWithPath:v11];

    v43 = 0;
    if (re::ServiceLocator::serviceOrNull<re::RenderManager>(a1[1]))
    {
      v13 = *(re::ServiceLocator::service<re::RenderManager>(a1[1]) + 205);
      v14 = a1[1];
      {
        re::introspect<re::VFXManager>(BOOL)::info = re::introspect_VFXManager(0);
      }

      v15 = re::introspect<re::VFXManager>(BOOL)::info;
      re::StringID::invalid(buf);
      v16 = (*(*v14 + 16))(v14, v15, buf);
      v17 = v16;
      if (buf[0])
      {
        if (buf[0])
        {
        }
      }

      if (v17)
      {
        if (v13)
        {
          re::VFXManager::loadAndPrepareWorld(v17, v12, &v43, &v42);
        }

        else
        {
          re::VFXManager::loadWorld(v12, &v43, &v42);
        }

        if (!v43 && v42)
        {
          *(a2 + 72) = 0;
          re::ObjCObject::operator=(v5, &v42);
LABEL_27:

          return 1;
        }

        v24 = *re::assetTypesLogObjects(v18);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v39 = [v12 path];
          *buf = 138412546;
          v45 = v39;
          v46 = 2112;
          v47 = v43;
          _os_log_debug_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_DEBUG, "Couldn't load %@ %@, trying legacy import", buf, 0x16u);
        }

        v41 = 0;
        VFXSceneLoadOptionsClass = re::getVFXSceneLoadOptionsClass(v25);
        VFXRESceneClass = re::getVFXRESceneClass(VFXSceneLoadOptionsClass);
        if (VFXSceneLoadOptionsClass && (v28 = VFXRESceneClass) != 0)
        {
          v29 = objc_alloc_init(VFXSceneLoadOptionsClass);
          [v29 setSetupRenderer:v13];
          [v29 setAutomaticallyPrepareScene:v13];
          [v29 setEnableRuntimeScriptCompilation:*(v17 + 24)];
          v30 = [v28 alloc];
          if (v13)
          {
            v31 = *(v17 + 1);
          }

          else
          {
            v31 = 0;
          }

          v33 = [v30 initWithContentsOf:v12 commandQueue:v31 options:v29 error:&v41];
          v34 = v33;
          if (v13)
          {
          }

          if (!v41)
          {
            *(a2 + 72) = 1;
            re::ObjCObject::operator=(v5, v34);

            goto LABEL_27;
          }

          v35 = v43;
          v36 = *re::assetTypesLogObjects(v33);
          v37 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
          if (v35)
          {
            if (v37)
            {
              v38 = [v12 path];
              *buf = 138412546;
              v45 = v38;
              v46 = 2112;
              v47 = v43;
              _os_log_error_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_ERROR, "Couldn't load %@ %@", buf, 0x16u);
            }
          }

          else if (v37)
          {
            v40 = [v12 path];
            *buf = 138412546;
            v45 = v40;
            v46 = 2112;
            v47 = v41;
            _os_log_error_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_ERROR, "Couldn't load %@ %@", buf, 0x16u);
          }
        }

        else
        {
          v32 = *re::assetTypesLogObjects(VFXRESceneClass);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_ERROR, "VFX framework is not loaded", buf, 2u);
          }
        }

        return 0;
      }

      v23 = *re::assetTypesLogObjects(v16);
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      *buf = 0;
      v20 = "VFX service is not loaded";
      v21 = v23;
      v22 = 2;
    }

    else
    {
      v19 = *re::assetTypesLogObjects(0);
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
LABEL_22:

        return 0;
      }

      *buf = 138412290;
      v45 = v12;
      v20 = "Can't load VFXAsset %@ null rendermanager";
      v21 = v19;
      v22 = 12;
    }

    _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, v20, buf, v22);
    goto LABEL_22;
  }

  v7 = *re::assetTypesLogObjects(a1);
  result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (!result)
  {
    return result;
  }

  *buf = 0;
  _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Can't load VFXAsset empty path", buf, 2u);
  return 0;
}

void sub_1E1F635F8(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

uint64_t re::ServiceLocator::service<re::RenderManager>(uint64_t a1)
{
  result = re::ServiceLocator::serviceOrNull<re::RenderManager>(a1);
  if (!result)
  {
    v2 = re::introspect<re::RenderManager>(0);
    re::StringID::invalid(v6);
    re::internal::missingServiceErrorMessage(v2, v6, v7);
    re::DynamicString::~DynamicString(v7);
    re::StringID::~StringID(v6);
    v3 = re::introspect<re::RenderManager>(0);
    re::StringID::invalid(v6);
    re::internal::missingServiceErrorMessage(v3, v6, v7);
    if (v7[8])
    {
      v5 = *&v8[7];
    }

    else
    {
      v5 = v8;
    }

    re::internal::assertLog(5, v4, "assertion failure: '%s' (%s:line %i) %s", "service", "service", 69, v5);
    re::DynamicString::~DynamicString(v7);
    re::StringID::~StringID(v6);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::VFXAssetLoader::registerAsset(re::VFXAssetLoader *this, unsigned __int8 *a2, const re::ExistingAssetInformation *a3)
{
  v3 = *(a2 + 1);
  if (v3)
  {
    v4 = v3 >> 1;
  }

  else
  {
    v4 = v3 >> 1;
  }

  if (!v4)
  {
    return 2;
  }

  if (*(re::ServiceLocator::service<re::RenderManager>(*(this + 1)) + 205) == 1)
  {
    v8 = *(this + 1);
    v9 = *(a3 + 10);
    v10 = re::ServiceLocator::serviceOrNull<re::AssetService>(v8);
    if (v10)
    {
      if (v9 == -1)
      {
        v11 = 0;
      }

      else
      {
        v11 = v9;
      }

      re::AssetManager::fromPeerID(v10, v11, v23);
      v12 = v23[0];
      v13 = v24;
      v14 = re::ServiceLocator::serviceOrNull<re::ResourceFetchService>(v8);
      if (v14)
      {
        if (v12)
        {
          v15 = v13;
        }

        else
        {
          v15 = 0;
        }

        v16 = (*(*v14 + 64))(v14, v15);
LABEL_20:
        v20 = a2[72];
        v21 = *(a2 + 8);
        v22 = v21;
        if (v20 != 1 || v21)
        {
          [v21 setPeerPid:0xFFFFFFFFLL];
          [v22 setPeerTaskIdentity:v16];
          [v22 updateMemoryOwnership];
        }

        return 0;
      }

      v18 = *re::assetTypesLogObjects(0);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
LABEL_19:
        v16 = 0;
        goto LABEL_20;
      }

      *v23 = 0;
      v19 = "ResourceFetchService not available to retrieve peer task identity token";
    }

    else
    {
      v18 = *re::assetTypesLogObjects(0);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      *v23 = 0;
      v19 = "AssetManager not available to retrieve peer task identity token";
    }

    _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, v19, v23, 2u);
    goto LABEL_19;
  }

  return 0;
}

re *re::internal::destroyPersistent<re::VFXAsset>(re *result, uint64_t a2, re::VFXAsset *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::VFXAsset::~VFXAsset(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

void *re::allocInfo_VFXFile(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_60))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE193E98, "VFXFile");
    __cxa_guard_release(&_MergedGlobals_60);
  }

  return &unk_1EE193E98;
}

void re::initInfo_VFXFile(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0x2483894288;
  v15[1] = "VFXFile";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE193E60, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE193E60);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicString>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "vfxFilePath";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE193E88 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::DynamicString>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "vfxSandboxToken";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x2000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE193E90 = v13;
      __cxa_guard_release(&qword_1EE193E60);
    }
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE193E88;
  *(this + 9) = re::internal::defaultConstruct<re::VFXFile>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::VFXFile>;
  *(this + 13) = re::internal::defaultConstructV2<re::VFXFile>;
  *(this + 14) = re::internal::defaultDestructV2<re::VFXFile>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

void *re::internal::defaultConstruct<re::VFXFile>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v4 = re::DynamicString::setCapacity(a3, 0);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  v5 = (a3 + 32);

  return re::DynamicString::setCapacity(v5, 0);
}

double re::internal::defaultDestruct<re::VFXFile>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicString::deinit((a3 + 32));

  return re::DynamicString::deinit(a3);
}

void *re::internal::defaultConstructV2<re::VFXFile>(_OWORD *a1)
{
  *a1 = 0u;
  a1[1] = 0u;
  v2 = re::DynamicString::setCapacity(a1, 0);
  a1[2] = 0u;
  a1[3] = 0u;
  v3 = a1 + 2;

  return re::DynamicString::setCapacity(v3, 0);
}