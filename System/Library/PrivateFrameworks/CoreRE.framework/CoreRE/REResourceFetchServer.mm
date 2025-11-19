@interface REResourceFetchServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (REResourceFetchServer)initWithResourceFetchManager:(void *)a3;
@end

@implementation REResourceFetchServer

- (REResourceFetchServer)initWithResourceFetchManager:(void *)a3
{
  v5.receiver = self;
  v5.super_class = REResourceFetchServer;
  result = [(REResourceFetchServer *)&v5 init];
  if (result)
  {
    result->_resourceFetchManager = a3;
  }

  return result;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    resourceFetchManager = self->_resourceFetchManager;
    *buf = 134217984;
    *&buf[4] = resourceFetchManager;
    _os_log_impl(&dword_1E1C61000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%p listener:(NSXPCListener *)listener shouldAcceptNewConnection:(NSXPCConnection *)newConnection", buf, 0xCu);
  }

  v10 = self->_resourceFetchManager;
  if (v10)
  {
    v36 = v7;
    dispatch_assert_queue_V2(*(v10 + 4));
    v11 = [v36 processIdentifier];
    v12 = v11;
    v13 = re::resourceSharingLogObjects(v11)[1];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v12;
      _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "Accepting new resource connection from client pid %d", buf, 8u);
    }

    v14 = voucher_copy();

    if (v14)
    {
      v16 = re::resourceSharingLogObjects(v15)[1];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v12;
        _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "Successfully harvested transport voucher on resource fetch connection for pid %d", buf, 8u);
      }

      v41 = v14;
      os_unfair_lock_lock(v10 + 64);
      re::ObjCObject::operator=(v10 + 33, &v41);
      os_unfair_lock_unlock(v10 + 64);
    }

    v17 = [[REResourceFetchClientObject alloc] initWithResourceFetchManager:v10 connection:&v36 voucher:v14];
    *buf = v17;
    re::xpc::Connection::setExportedObject(&v36, buf);

    re::ResourceFetchManager::xpcInterface(buf);
    re::xpc::Connection::setExportedInterface(&v36, buf);

    re::ResourceSharingManager::xpcInterface(buf);
    re::xpc::Connection::setRemoteObjectInterface(&v36, buf);

    re::xpc::Connection::setQueue(&v36, (v10 + 32));
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = ___ZN2re20ResourceFetchManager13addConnectionENS_3xpc10ConnectionE_block_invoke;
    v39[3] = &unk_1E871AA90;
    v18 = v17;
    v40 = v18;
    [v36 setInterruptionHandler:v39];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = ___ZN2re20ResourceFetchManager13addConnectionENS_3xpc10ConnectionE_block_invoke_68;
    v37[3] = &unk_1E871AA90;
    v19 = v18;
    v38 = v19;
    [v36 setInvalidationHandler:v37];
    os_unfair_lock_lock(v10 + 32);
    *buf = v36;
    v20 = v19;
    *&buf[8] = v20;
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    v46 = 0x7FFFFFFFLL;
    v23 = *(v10 + 18);
    v22 = *(v10 + 19);
    if (v22 >= v23)
    {
      v24 = v22 + 1;
      if (v23 < v22 + 1)
      {
        if (*(v10 + 17))
        {
          v25 = 2 * v23;
          if (!v23)
          {
            v25 = 8;
          }

          if (v25 <= v24)
          {
            v26 = v24;
          }

          else
          {
            v26 = v25;
          }

          re::DynamicArray<re::ResourceFetchManager::Connection>::setCapacity(v10 + 17, v26);
        }

        else
        {
          re::DynamicArray<re::ResourceFetchManager::Connection>::setCapacity(v10 + 17, v24);
          ++*(v10 + 40);
        }
      }

      v22 = *(v10 + 19);
    }

    v30 = *(v10 + 21) + (v22 << 6);
    v31 = *buf;
    memset(buf, 0, sizeof(buf));
    *v30 = v31;
    *(v30 + 16) = v43;
    *&v43 = 0;
    *(v30 + 24) = *(&v43 + 1);
    *(&v43 + 1) = 0;
    *(v30 + 32) = v44;
    *&v44 = 0;
    *(v30 + 40) = DWORD2(v44);
    DWORD2(v44) = 0;
    *(v30 + 44) = HIDWORD(v44);
    HIDWORD(v44) = 0;
    *(v30 + 48) = v45;
    v45 = 0;
    *(v30 + 52) = v46;
    LODWORD(v46) = 0x7FFFFFFF;
    *(v30 + 56) = 1;
    *(v10 + 19) = v22 + 1;
    ++*(v10 + 40);
    re::HashTable<re::DynamicString,re::DynamicArray<re::ResourceFetchManager::Request *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v43);

    os_unfair_lock_unlock(v10 + 32);
    v32 = *(v10 + 49);
    if (v32)
    {
      v33 = v20;
      *buf = v33;
      v34 = re::directMeshConnectionId(buf);
      (*(*v32 + 32))(v32, v34);
    }

    [v36 resume];
  }

  else
  {
    v27 = re::resourceSharingLogObjects(v8)[1];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = v27;
      v29 = [v7 processIdentifier];
      *buf = 67109120;
      *&buf[4] = v29;
      _os_log_error_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_ERROR, "Rejecting attempted resource connection from client pid %d: service was deinited", buf, 8u);
    }
  }

  return v10 != 0;
}

@end