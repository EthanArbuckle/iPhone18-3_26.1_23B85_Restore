@interface REResourceSharingClientObject
- (REResourceSharingClientObject)initWithAssetService:(AssetService *)a3 resourceSharingManager:(void *)a4 peerID:(unint64_t)a5;
- (void)fetchResourceAtAssetPath:(id)a3 withReply:(id)a4;
- (void)reportLoadState:(unsigned __int8)a3 forAssetId:(unint64_t)a4 assetSize:(unint64_t)a5 errorCode:(unsigned __int16)a6;
- (void)setSubscriptionOptions:(id)a3 forResourceAtAssetPath:(id)a4;
- (void)unsubscribeFromResourceAtAssetPath:(id)a3;
@end

@implementation REResourceSharingClientObject

- (REResourceSharingClientObject)initWithAssetService:(AssetService *)a3 resourceSharingManager:(void *)a4 peerID:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = REResourceSharingClientObject;
  result = [(REResourceSharingClientObject *)&v9 init];
  if (result)
  {
    result->_assetService = a3;
    result->_resourceSharingManager = a4;
    result->_peerID = a5;
  }

  return result;
}

- (void)fetchResourceAtAssetPath:(id)a3 withReply:(id)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v18 = *re::resourceSharingLogObjects(v7);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_fault_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_FAULT, "Resource connection %@ received an invalid fetch request for a nil asset path", buf, 0xCu);
    }

    v17 = 500;
    goto LABEL_15;
  }

  assetService = self->_assetService;
  if (!assetService || !self->_resourceSharingManager)
  {
    v16 = *re::resourceSharingLogObjects(v7);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "Resource connection %@ ignored a fetch request for '%@': service was deinited", buf, 0x16u);
    }

    v17 = 401;
LABEL_15:
    re::makeResourceSharingError(v17, 0, buf);
    (*(v8 + 2))(v8, 0, *buf);

    goto LABEL_32;
  }

  v10 = v34;
  v11 = (*(assetService->var0 + 22))(&v31, assetService, [v6 UTF8String], 0);
  if (v31)
  {
    if (v32 == 4)
    {
      v21 = *re::resourceSharingLogObjects(v11);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        *&buf[4] = v6;
        v13 = "Resource fetch request for peer asset path '%@' is not allowed";
        v14 = v21;
        v15 = 12;
        goto LABEL_23;
      }
    }

    else
    {
      if (v32)
      {
        v24 = v32;
        re::DynamicString::DynamicString(&v25, &v33);
        re::DynamicString::DynamicString(v27, v36);
        v28 = v36[4];
        v29 = self;
        aBlock = _Block_copy(v8);
        resourceSharingManager = self->_resourceSharingManager;
        v37 = v24;
        re::DynamicString::DynamicString(&v38, &v25);
        re::DynamicString::DynamicString(v40, v27);
        v41 = v28;
        v42 = v29;
        v43 = _Block_copy(aBlock);
        v23 = *(resourceSharingManager + 7);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3321888768;
        *&buf[16] = ___ZN2re22ResourceSharingManager19enqueueFetchRequestENS0_12FetchRequestE_block_invoke;
        v45 = &__block_descriptor_136_a8_40c48_ZTSKN2re22ResourceSharingManager12FetchRequestE_e5_v8__0l;
        v46 = resourceSharingManager;
        v47 = v37;
        re::DynamicString::DynamicString(&v48, &v38);
        re::DynamicString::DynamicString(&v51, v40);
        v53 = v41;
        v54 = v42;
        v55 = _Block_copy(v43);
        re::internal::ResourceRequestQueue::enqueue(v23, buf);
        re::internal::ResourceRequestQueue::flushAsync(*(resourceSharingManager + 7), resourceSharingManager + 4);

        if (v51)
        {
          if (BYTE8(v51))
          {
            (*(*v51 + 40))(v51, v52);
          }

          v51 = 0u;
          v52 = 0u;
        }

        if (v48 && (v49 & 1) != 0)
        {
          (*(*v48 + 40))(v48, v50);
        }

        if (v40[0])
        {
          if (v40[1])
          {
            (*(*v40[0] + 40))();
          }

          memset(v40, 0, sizeof(v40));
        }

        if (v38 && (v39 & 1) != 0)
        {
          (*(*v38 + 40))();
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

        goto LABEL_25;
      }

      v12 = *re::resourceSharingLogObjects(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v13 = "Invalid resource fetch request for empty asset path";
        v14 = v12;
        v15 = 2;
LABEL_23:
        _os_log_fault_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_FAULT, v13, buf, v15);
      }
    }
  }

  else
  {
    v19 = *re::resourceSharingLogObjects(v11);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      if (v34[8])
      {
        v20 = *&v35[7];
      }

      else
      {
        v20 = v35;
      }

      *buf = 138412546;
      *&buf[4] = v6;
      *&buf[12] = 2080;
      *&buf[14] = v20;
      v13 = "Failed to handle resource fetch request for '%@': %s";
      v14 = v19;
      v15 = 22;
      goto LABEL_23;
    }
  }

  re::makeResourceSharingError(0x1F4, 0, buf);
  (*(v8 + 2))(v8, 0, *buf);

LABEL_25:
  if (v31 == 1)
  {
    if (v36[0])
    {
      if (v36[1])
      {
        (*(*v36[0] + 40))();
      }

      memset(v36, 0, 32);
    }

    v10 = &v33;
  }

  re::DynamicString::deinit(v10);
LABEL_32:
}

- (void)setSubscriptionOptions:(id)a3 forResourceAtAssetPath:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    assetService = self->_assetService;
    if (assetService && self->_resourceSharingManager)
    {
      v10 = v27;
      v11 = (*(assetService->var0 + 22))(&v24, assetService, [v7 UTF8String], 0);
      if (v24)
      {
        v20 = 0;
        v21 = 0;
        v18 = v26;
        v19 = 0;
        re::DynamicString::setCapacity(&v18, 0);
        re::AssetPath::fullAssetPath(v25, &v18);
        v22 = self;
        v23 = v6;
        resourceSharingManager = self->_resourceSharingManager;
        re::DynamicString::DynamicString(&v31, &v18);
        v33 = v22;
        v34 = v23;
        v13 = *(resourceSharingManager + 7);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3321888768;
        *&buf[16] = ___ZN2re22ResourceSharingManager24enqueueSetOptionsRequestENS0_17SetOptionsRequestE_block_invoke;
        v36 = &__block_descriptor_88_a8_40c52_ZTSN2re22ResourceSharingManager17SetOptionsRequestE_e5_v8__0l;
        v37 = resourceSharingManager;
        re::DynamicString::DynamicString(&v38, &v31);
        v41 = v33;
        v42 = v34;
        re::internal::ResourceRequestQueue::enqueue(v13, buf);
        re::internal::ResourceRequestQueue::flushAsync(*(resourceSharingManager + 7), resourceSharingManager + 4);

        if (v38 && (v39 & 1) != 0)
        {
          (*(*v38 + 40))(v38, v40);
        }

        if (v31 && (v32 & 1) != 0)
        {
          (*(*v31 + 40))();
        }

        if (v18 && (v19 & 1) != 0)
        {
          (*(*v18 + 40))();
        }
      }

      else
      {
        v16 = *re::resourceSharingLogObjects(v11);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          if (v27[8])
          {
            v17 = *&v28[7];
          }

          else
          {
            v17 = v28;
          }

          *buf = 138412546;
          *&buf[4] = v8;
          *&buf[12] = 2080;
          *&buf[14] = v17;
          _os_log_fault_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_FAULT, "Failed to handle resource set-options request for '%@': %s", buf, 0x16u);
        }
      }

      if (v24 == 1)
      {
        v10 = &v26;
        if (v29)
        {
          if (BYTE8(v29))
          {
            (*(*v29 + 40))();
          }

          v29 = 0u;
          v30 = 0u;
        }
      }

      re::DynamicString::deinit(v10);
    }

    else
    {
      v14 = *re::resourceSharingLogObjects(v7);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = v8;
        _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "Resource connection %@ ignored an set-options request for '%@': service was deinited", buf, 0x16u);
      }
    }
  }

  else
  {
    v15 = *re::resourceSharingLogObjects(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_fault_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_FAULT, "Resource connection %@ received an invalid set-options request for a nil asset path", buf, 0xCu);
    }
  }
}

- (void)unsubscribeFromResourceAtAssetPath:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    assetService = self->_assetService;
    if (assetService && self->_resourceSharingManager)
    {
      v7 = v27;
      v8 = (*(assetService->var0 + 22))(buf, assetService, [v4 UTF8String], 0);
      if (buf[0])
      {
        v17 = 0;
        v18 = 0;
        v15 = *&v26[2];
        v16 = 0;
        re::DynamicString::setCapacity(&v15, 0);
        re::AssetPath::fullAssetPath(&v24 + 4, &v15);
        v19 = self;
        resourceSharingManager = self->_resourceSharingManager;
        re::DynamicString::DynamicString(&v20, &v15);
        v22 = v19;
        v10 = *(resourceSharingManager + 7);
        *v31 = MEMORY[0x1E69E9820];
        *&v31[8] = 3321888768;
        *&v31[16] = ___ZN2re22ResourceSharingManager25enqueueUnsubscribeRequestENS0_18UnsubscribeRequestE_block_invoke;
        v32 = &__block_descriptor_80_a8_40c54_ZTSKN2re22ResourceSharingManager18UnsubscribeRequestE_e5_v8__0l;
        v33 = resourceSharingManager;
        re::DynamicString::DynamicString(&v34, &v20);
        v37 = v22;
        re::internal::ResourceRequestQueue::enqueue(v10, v31);
        re::internal::ResourceRequestQueue::flushAsync(*(resourceSharingManager + 7), resourceSharingManager + 4);

        if (v34 && (v35 & 1) != 0)
        {
          (*(*v34 + 40))(v34, v36);
        }

        if (v20 && (v21 & 1) != 0)
        {
          (*(*v20 + 40))();
        }

        if (v15 && (v16 & 1) != 0)
        {
          (*(*v15 + 40))();
        }
      }

      else
      {
        v13 = *re::resourceSharingLogObjects(v8);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          if (v27[8])
          {
            v14 = *&v28[7];
          }

          else
          {
            v14 = v28;
          }

          *v31 = 138412546;
          *&v31[4] = v5;
          *&v31[12] = 2080;
          *&v31[14] = v14;
          _os_log_fault_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_FAULT, "Failed to handle resource unsubscribe request for '%@': %s", v31, 0x16u);
        }
      }

      if (buf[0] == 1)
      {
        v7 = &v26[2];
        if (v29)
        {
          if (BYTE8(v29))
          {
            (*(*v29 + 40))();
          }

          v29 = 0u;
          v30 = 0u;
        }
      }

      re::DynamicString::deinit(v7);
    }

    else
    {
      v11 = *re::resourceSharingLogObjects(v4);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v24 = self;
        v25 = 2112;
        *v26 = v5;
        _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Resource connection %@ ignored an unsubscribe request for '%@': service was deinited", buf, 0x16u);
      }
    }
  }

  else
  {
    v12 = *re::resourceSharingLogObjects(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v24 = self;
      _os_log_fault_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_FAULT, "Resource connection %@ received an invalid unsubscribe request for a nil asset path", buf, 0xCu);
    }
  }
}

- (void)reportLoadState:(unsigned __int8)a3 forAssetId:(unint64_t)a4 assetSize:(unint64_t)a5 errorCode:(unsigned __int16)a6
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_assetService && self->_resourceSharingManager)
  {
    v8 = a6;
    v10 = a3;
    v11 = *re::resourceSharingLogObjects(self);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      *&buf[4] = v10;
      *&buf[8] = 2048;
      *&buf[10] = a4;
      *&buf[18] = 2048;
      *&buf[20] = a5;
      v20 = 1024;
      v21 = v8;
      _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "Received load state:%u for asset:%llu of size:%zu, error:%d", buf, 0x22u);
    }

    resourceSharingManager = self->_resourceSharingManager;
    peerID = self->_peerID;
    v18 = a5;
    *buf = a4;
    dispatch_assert_queue_V2(resourceSharingManager[5]);
    if ((v10 - 4) >= 0xFEu)
    {
      v14 = resourceSharingManager[10];
      if (v14)
      {
        v15 = &resourceSharingManager[12][9];
        v16 = 168 * v14;
        do
        {
          if ([*(v15 - 64) peerID] == peerID)
          {
            re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v15, buf);
            re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(v15 + 48, buf, &v18);
          }

          v15 += 168;
          v16 -= 168;
        }

        while (v16);
      }
    }

    (*(self->_assetService->var0 + 50))(self->_assetService, a4, self->_peerID, v10, a5, v8);
  }

  else
  {
    v17 = *re::resourceSharingLogObjects(self);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = a4;
      _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "Resource connection %@ ignored an unsubscribe request for '%llu': service was deinited", buf, 0x16u);
    }
  }
}

@end