@interface DTXSharedMemoryTransport
+ (id)addressForMemory:(unint64_t)a3 inProcess:(int)a4;
+ (id)addressForPosixSharedMemoryWithName:(id)a3;
- (BOOL)_setupCreatingSharedMemory:(id)a3 size:(int)a4;
- (BOOL)_setupWithShm:(DTXSharedMemory *)a3 asCreator:(BOOL)a4;
- (DTXSharedMemoryTransport)initWithMappedMemory:(DTXSharedMemory *)a3;
- (DTXSharedMemoryTransport)initWithMemoryAddress:(unint64_t)a3 inTask:(unsigned int)a4;
- (DTXSharedMemoryTransport)initWithRemoteAddress:(id)a3;
- (id)localAddresses;
- (int)remotePid;
- (unint64_t)transmit:(const void *)a3 ofLength:(unint64_t)a4;
- (void)dealloc;
- (void)disconnect;
- (void)setRemotePid:(int)a3;
@end

@implementation DTXSharedMemoryTransport

+ (id)addressForPosixSharedMemoryWithName:(id)a3
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@://%@", @"shm", a3);
  v6 = objc_msgSend_URLWithString_(v3, v5, v4);

  return v6;
}

+ (id)addressForMemory:(unint64_t)a3 inProcess:(int)a4
{
  v4 = MEMORY[0x277CBEBC0];
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@://%d/%#llx", @"mmap", a4, a3);
  v7 = objc_msgSend_URLWithString_(v4, v6, v5);

  return v7;
}

- (BOOL)_setupWithShm:(DTXSharedMemory *)a3 asCreator:(BOOL)a4
{
  if (a3)
  {
    self->_shm = a3;
    self->_creator = a4;
    v6 = dispatch_queue_create("shared memory transport listener queue", 0);
    listenQueue = self->_listenQueue;
    self->_listenQueue = v6;

    v8 = self->_listenQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_247F4E2CC;
    block[3] = &unk_278EEE708;
    block[4] = self;
    dispatch_async(v8, block);
  }

  return a3 != 0;
}

- (BOOL)_setupCreatingSharedMemory:(id)a3 size:(int)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v10 = objc_msgSend_UTF8String(a3, v8, v9);
  v11 = (2 * a4);
  if (!v10)
  {
    v15 = (v11 + 16463) & 0x1FFFFC000;
LABEL_7:
    v19 = mmap(0, v15, 3, 4098, 167772160, 0);
    if (v19 != -1)
    {
      v18 = v19;
      *v19 = v15;
      v19[1] = v19;
      v19[2] = 0;
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  v12 = v10;
  v13 = strlen(v10);
  v14 = v13 + 1;
  v15 = (v11 + v13 + 1 + 16463) & 0xFFFFFFFFFFFFC000;
  if (v13 == -1)
  {
    goto LABEL_7;
  }

  v16 = shm_open(v12, 16777730, 511);
  if (v16 == -1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v23 = *__error();
      *buf = 136315906;
      v26 = v12;
      v27 = 2048;
      v28 = v15;
      v29 = 1024;
      v30 = 511;
      v31 = 1024;
      v32 = v23;
      _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error creating shared memory (name: %s, size: %llu, permissions: %x): %d\n", buf, 0x22u);
    }

    goto LABEL_14;
  }

  v17 = v16;
  ftruncate(v16, v15);
  v18 = mmap(0, v15, 3, 1, v17, 0);
  close(v17);
  if (v18 == -1)
  {
LABEL_14:
    v24 = *MEMORY[0x277D85DE8];
    return 0;
  }

  *v18 = v15;
  *(v18 + 1) = v18;
  *(v18 + 2) = v11 + 80;
  strlcpy(v18 + v11 + 80, v12, v14);
LABEL_9:
  *(v18 + 6) = 0;
  *(v18 + 7) = a4;
  *(v18 + 8) = a4;
  *(v18 + 9) = a4;
  atomic_store(0, v18 + 13);
  atomic_store(0, v18 + 14);
  atomic_store(0, v18 + 15);
  atomic_store(0, v18 + 16);
  atomic_store(0, v18 + 12);
  atomic_store(getpid(), v18 + 10);
  atomic_store(0, v18 + 11);
  v21 = *MEMORY[0x277D85DE8];

  return objc_msgSend__setupWithShm_asCreator_(self, v20, v18, 1);
}

- (DTXSharedMemoryTransport)initWithRemoteAddress:(id)a3
{
  v86 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v70.receiver = self;
  v70.super_class = DTXSharedMemoryTransport;
  v7 = [(DTXTransport *)&v70 initWithRemoteAddress:v4];
  if (!v7)
  {
    goto LABEL_40;
  }

  v8 = objc_msgSend_scheme(v4, v5, v6);
  if (objc_msgSend_isEqualToString_(v8, v9, @"shm"))
  {

LABEL_5:
    v17 = objc_msgSend_host(v4, v12, v13);
    v18 = v17;
    v21 = objc_msgSend_UTF8String(v17, v19, v20);
    v22 = v21;
    if (!v21 || !*v21)
    {
      goto LABEL_36;
    }

    v23 = shm_open(v21, 2);
    if (v23 == -1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v48 = *__error();
        *buf = 136315394;
        *&buf[4] = v22;
        *&buf[12] = 1024;
        *&buf[14] = v48;
        v49 = MEMORY[0x277D86220];
        v50 = "Error connecting to shared memory (name: %s): %d\n";
        v51 = 18;
LABEL_24:
        _os_log_impl(&dword_247F3D000, v49, OS_LOG_TYPE_ERROR, v50, buf, v51);
      }

LABEL_36:
      v26 = 0;
      goto LABEL_37;
    }

    v24 = mmap(0, 0x1000uLL, 3, 1, v23, 0);
    if (v24 == -1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v55 = *__error();
        *buf = 136315650;
        *&buf[4] = v22;
        *&buf[12] = 2048;
        *&buf[14] = 4096;
        *&buf[22] = 1024;
        LODWORD(v74) = v55;
        v56 = MEMORY[0x277D86220];
        v57 = "Unable to map shared memory %s with size %zu: %d\n";
LABEL_34:
        _os_log_impl(&dword_247F3D000, v56, OS_LOG_TYPE_ERROR, v57, buf, 0x1Cu);
      }
    }

    else
    {
      v25 = *v24;
      munmap(v24, 0x1000uLL);
      v26 = mmap(0, v25, 3, 1, v23, 0);
      if (v26 != -1)
      {
        close(v23);
        if (!v26)
        {
LABEL_37:

          goto LABEL_38;
        }

        v27 = atomic_load((v26 + 44));
        if (!v27 || v27 == getpid())
        {
          atomic_store(getpid(), (v26 + 44));
          v28 = *(v26 + 16);
          if (v28)
          {
            shm_unlink((v26 + v28));
          }

          goto LABEL_37;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v27;
          v49 = MEMORY[0x277D86220];
          v50 = "Unable to attach to shared memory - process %d already attached.\n";
          v51 = 8;
          goto LABEL_24;
        }

        goto LABEL_36;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v58 = *__error();
        *buf = 136315650;
        *&buf[4] = v22;
        *&buf[12] = 2048;
        *&buf[14] = v25;
        *&buf[22] = 1024;
        LODWORD(v74) = v58;
        v56 = MEMORY[0x277D86220];
        v57 = "Unable to map shared memory %s with size %llu: %d\n";
        goto LABEL_34;
      }
    }

    close(v23);
    goto LABEL_36;
  }

  v14 = objc_msgSend_scheme(v4, v10, v11);
  isEqualToString = objc_msgSend_isEqualToString_(v14, v15, @"shmem");

  if (isEqualToString)
  {
    goto LABEL_5;
  }

  v29 = objc_msgSend_host(v4, v12, v13);
  v32 = objc_msgSend_intValue(v29, v30, v31);

  v35 = objc_msgSend_path(v4, v33, v34);
  if (objc_msgSend_length(v35, v36, v37) <= 1)
  {

    v45 = 0;
  }

  else
  {
    v40 = objc_msgSend_path(v4, v38, v39);
    v41 = v40;
    v44 = objc_msgSend_UTF8String(v40, v42, v43);

    v45 = strtoull((v44 + 1), 0, 16);
  }

  name = 0;
  v46 = MEMORY[0x277D85F48];
  v47 = task_for_pid(*MEMORY[0x277D85F48], v32, &name);
  if (v47)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *&buf[4] = v32;
      *&buf[8] = 1024;
      *&buf[10] = v47;
      _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to acquire task for pid: %d (%d)\n", buf, 0xEu);
    }

    goto LABEL_39;
  }

  if (!v45)
  {
    goto LABEL_58;
  }

  v52 = name;
  if (name - 1 > 0xFFFFFFFD)
  {
    goto LABEL_58;
  }

  v53 = *v46;
  if (*v46 - 1 >= 0xFFFFFFFE)
  {
    goto LABEL_58;
  }

  *v76 = 0;
  v77 = v76;
  v78 = 0x2020000000;
  v79 = 0;
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = sub_247F4FD30;
  v74 = &unk_278EEEFC8;
  v75 = v76;
  v54 = buf;
  if (mach_task_is_self(v52))
  {
    (*&buf[16])(v54, v45);
  }

  else
  {
    v62 = *v46;
    *cur_protection = 0;
    target_address = 0;
    v63 = mach_vm_remap(v62, &target_address, 0x50uLL, 0, 1048577, v52, v45, 0, &cur_protection[1], cur_protection, 2u);
    if (v63)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *v80 = 134218496;
        v81 = v45;
        v82 = 1024;
        v83 = v52;
        v84 = 1024;
        v85 = v63;
        _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to map memory for address: %#llx in task: 0x%x (%d)\n", v80, 0x18u);
      }

      v64 = 0;
    }

    else
    {
      if ((~cur_protection[1] & 3) != 0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *v80 = 134218496;
          v81 = v45;
          v82 = 1024;
          v83 = v52;
          v84 = 1024;
          v85 = cur_protection[1];
          _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to map memory r/w for address: %#llx in task: 0x%x (%d)\n", v80, 0x18u);
        }

        mach_vm_deallocate(v62, target_address, 0x50uLL);
      }

      v64 = target_address;
    }

    (*&buf[16])(v54, v64);
    mach_vm_deallocate(*v46, v64, 0x50uLL);
  }

  v65 = *(v77 + 3);
  if (!v65)
  {
    goto LABEL_57;
  }

  *cur_protection = 0;
  target_address = 0;
  v66 = mach_vm_remap(v53, &target_address, v65, 0, 1048577, v52, v45, 0, &cur_protection[1], cur_protection, 2u);
  if (v66)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v80 = 134218496;
      v81 = v45;
      v82 = 1024;
      v83 = v52;
      v84 = 1024;
      v85 = v66;
      _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to map memory for address: %#llx in task: 0x%x (%d)\n", v80, 0x18u);
    }

LABEL_57:
    _Block_object_dispose(v76, 8);
    goto LABEL_58;
  }

  if ((~cur_protection[1] & 3) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v80 = 134218496;
      v81 = v45;
      v82 = 1024;
      v83 = v52;
      v84 = 1024;
      v85 = cur_protection[1];
      _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to map memory r/w for address: %#llx in task: 0x%x (%d)\n", v80, 0x18u);
    }

    mach_vm_deallocate(v53, target_address, v65);
  }

  v26 = target_address;
  _Block_object_dispose(v76, 8);
  if (!v26)
  {
    goto LABEL_59;
  }

  v67 = atomic_load((v26 + 44));
  if (!v67 || v67 == getpid())
  {
    atomic_store(getpid(), (v26 + 44));
    v68 = *(v26 + 16);
    if (v68)
    {
      shm_unlink((v26 + v68));
    }

    goto LABEL_59;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v76 = 67109120;
    *&v76[4] = v67;
    _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to attach to shared memory - process %d already attached.\n", v76, 8u);
  }

LABEL_58:
  v26 = 0;
LABEL_59:
  mach_port_deallocate(*v46, name);
LABEL_38:
  if ((objc_msgSend__setupWithShm_asCreator_(v7, v59, v26, 0) & 1) == 0)
  {
LABEL_39:

    v7 = 0;
  }

LABEL_40:

  v60 = *MEMORY[0x277D85DE8];
  return v7;
}

- (DTXSharedMemoryTransport)initWithMemoryAddress:(unint64_t)a3 inTask:(unsigned int)a4
{
  v35 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    goto LABEL_21;
  }

  if (a4 - 1 > 0xFFFFFFFD)
  {
    goto LABEL_21;
  }

  v6 = MEMORY[0x277D85F48];
  v7 = *MEMORY[0x277D85F48];
  if ((*MEMORY[0x277D85F48] - 1) >= 0xFFFFFFFE)
  {
    goto LABEL_21;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v20 = sub_247F4FD30;
  v21 = &unk_278EEEFC8;
  v22 = &v23;
  v9 = v19;
  if (mach_task_is_self(a4))
  {
    v20(v9, a3);
  }

  else
  {
    v10 = *v6;
    *cur_protection = 0;
    target_address = 0;
    v11 = mach_vm_remap(v10, &target_address, 0x50uLL, 0, 1048577, a4, a3, 0, &cur_protection[1], cur_protection, 2u);
    if (v11)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 134218496;
        v30 = a3;
        v31 = 1024;
        v32 = a4;
        v33 = 1024;
        v34 = v11;
        _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to map memory for address: %#llx in task: 0x%x (%d)\n", buf, 0x18u);
      }

      v12 = 0;
    }

    else
    {
      if ((~cur_protection[1] & 3) != 0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 134218496;
          v30 = a3;
          v31 = 1024;
          v32 = a4;
          v33 = 1024;
          v34 = cur_protection[1];
          _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to map memory r/w for address: %#llx in task: 0x%x (%d)\n", buf, 0x18u);
        }

        mach_vm_deallocate(v10, target_address, 0x50uLL);
      }

      v12 = target_address;
    }

    v20(v9, v12);
    mach_vm_deallocate(*v6, v12, 0x50uLL);
  }

  v13 = v24[3];
  if (!v13)
  {
LABEL_20:
    _Block_object_dispose(&v23, 8);
LABEL_21:
    v15 = 0;
    goto LABEL_22;
  }

  *cur_protection = 0;
  target_address = 0;
  v14 = mach_vm_remap(v7, &target_address, v13, 0, 1048577, a4, a3, 0, &cur_protection[1], cur_protection, 2u);
  if (v14)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      v30 = a3;
      v31 = 1024;
      v32 = a4;
      v33 = 1024;
      v34 = v14;
      _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to map memory for address: %#llx in task: 0x%x (%d)\n", buf, 0x18u);
    }

    goto LABEL_20;
  }

  if ((~cur_protection[1] & 3) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      v30 = a3;
      v31 = 1024;
      v32 = a4;
      v33 = 1024;
      v34 = cur_protection[1];
      _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to map memory r/w for address: %#llx in task: 0x%x (%d)\n", buf, 0x18u);
    }

    mach_vm_deallocate(v7, target_address, v13);
  }

  v15 = target_address;
  _Block_object_dispose(&v23, 8);
  if (v15)
  {
    self = objc_msgSend_initWithMappedMemory_(self, v18, v15);
    v15 = self;
  }

LABEL_22:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (DTXSharedMemoryTransport)initWithMappedMemory:(DTXSharedMemory *)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = DTXSharedMemoryTransport;
  v5 = [(DTXTransport *)&v10 init];
  if (v5)
  {
    if (a3)
    {
      v6 = atomic_load(&a3->var8);
      if (v6 && v6 != getpid())
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v12 = v6;
          _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to attach to shared memory - process %d already attached.\n", buf, 8u);
        }

        a3 = 0;
      }

      else
      {
        atomic_store(getpid(), &a3->var8);
        var2 = a3->var2;
        if (var2)
        {
          shm_unlink(a3 + var2);
        }
      }
    }

    if ((objc_msgSend__setupWithShm_asCreator_(v5, v4, a3, 0) & 1) == 0)
    {

      v5 = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)dealloc
{
  shm = self->_shm;
  if (shm)
  {
    atomic_store(1u, &shm->var9);
    if (shm->var2)
    {
      if (!atomic_load(&shm->var8))
      {
        shm_unlink(shm + shm->var2);
      }
    }

    mach_vm_deallocate(*MEMORY[0x277D85F48], shm, shm->var0);
  }

  self->_shm = 0;
  v5.receiver = self;
  v5.super_class = DTXSharedMemoryTransport;
  [(DTXTransport *)&v5 dealloc];
}

- (int)remotePid
{
  v2 = 40;
  if (self->_creator)
  {
    v2 = 44;
  }

  return atomic_load((self->_shm + v2));
}

- (void)setRemotePid:(int)a3
{
  v3 = 40;
  if (self->_creator)
  {
    v3 = 44;
  }

  atomic_store(a3, (self->_shm + v3));
}

- (unint64_t)transmit:(const void *)a3 ofLength:(unint64_t)a4
{
  shm = self->_shm;
  if (!shm)
  {
    goto LABEL_49;
  }

  if (self->_creator)
  {
    v5 = 52;
  }

  else
  {
    v5 = 60;
  }

  v6 = 56;
  if (!self->_creator)
  {
    v6 = 64;
  }

  v7 = 24;
  if (!self->_creator)
  {
    v7 = 32;
  }

  v8 = 40;
  if (self->_creator)
  {
    v8 = 44;
  }

  v9 = 36;
  if (self->_creator)
  {
    v9 = 28;
  }

  if (a4)
  {
    v10 = a3;
    v11 = 0;
    v12 = &shm->var17[*(&shm->var0 + v7)];
    v13 = *(&shm->var0 + v9);
    v31 = v12;
    v32 = (shm + v6);
    v30 = (shm + v8);
    v14 = a4;
    v15 = 64;
    while (!atomic_load_explicit(&shm->var9, memory_order_acquire))
    {
      v16 = atomic_load(v32);
      v17 = atomic_load((shm + v5));
      if (v16 <= v17)
      {
        v18 = v13;
      }

      else
      {
        v18 = 0;
      }

      v19 = v16 + ~v17 + v18;
      if (v19)
      {
        v20 = v17;
        LODWORD(v21) = v13 - v17;
        if (v21 >= v19)
        {
          v21 = v19;
        }

        else
        {
          v21 = v21;
        }

        if (v14 >= v21)
        {
          v22 = v21;
        }

        else
        {
          v22 = v14;
        }

        memcpy(&v12[v20], v10, v22);
        v10 += v22;
        v14 -= v22;
        v11 += v22;
        if (v14)
        {
          v23 = v19 == v22;
        }

        else
        {
          v23 = 1;
        }

        if (v23)
        {
          LODWORD(v22) = v20 + v22;
        }

        else
        {
          if (v14 >= v19 - v22)
          {
            v22 = v19 - v22;
          }

          else
          {
            v22 = v14;
          }

          memmove(v12, v10, v22);
          v10 += v22;
          v14 -= v22;
          v11 += v22;
        }

        v26 = v20;
        atomic_compare_exchange_strong((shm + v5), &v26, v22);
        if (v26 != v20)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Inconsistent writer offset in shared memory! MT transmission suspected...\n", buf, 2u);
          }

          break;
        }

        v15 = 64;
      }

      else
      {
        v24 = atomic_load(v30);
        if (v15 <= 0x40)
        {
          v25 = 64;
        }

        else
        {
          v25 = v15;
        }

        usleep(v25);
        if (v15 <= 0x10000)
        {
          v15 = 2 * v25;
        }

        else
        {
          if (v24 && kill(v24, 0) == -1 && *__error() == 3)
          {
            break;
          }

          v15 = 0x20000;
        }
      }

      v12 = v31;
      if (!v14)
      {
        break;
      }
    }
  }

  else
  {
LABEL_49:
    v11 = 0;
  }

  if (v11 < a4)
  {
    objc_msgSend_disconnect(self, a2, a3);
  }

  return v11;
}

- (void)disconnect
{
  atomic_store(1u, &self->_shm->var9);
  listenQueue = self->_listenQueue;
  if (listenQueue)
  {
    dispatch_sync(listenQueue, &unk_285A12320);
  }

  v4.receiver = self;
  v4.super_class = DTXSharedMemoryTransport;
  [(DTXTransport *)&v4 disconnect];
}

- (id)localAddresses
{
  v3 = atomic_load(&self->_shm->var7);
  v5 = objc_msgSend_addressForMemory_inProcess_(DTXSharedMemoryTransport, a2, self->_shm->var1, v3);
  shm = self->_shm;
  var2 = shm->var2;
  if (var2)
  {
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, shm + var2);
    if (v9)
    {
      v10 = objc_msgSend_addressForPosixSharedMemoryWithName_(DTXSharedMemoryTransport, v8, v9);
      objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v11, v5, v10, 0);
    }

    else
    {
      v10 = 0;
      objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v8, v5, 0, 0);
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
    objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v4, v5, 0, 0);
  }
  v12 = ;

  return v12;
}

@end