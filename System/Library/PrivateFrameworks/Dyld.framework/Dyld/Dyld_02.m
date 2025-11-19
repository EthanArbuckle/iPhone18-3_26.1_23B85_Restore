uint64_t sub_1AE4BD9A8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AE4BD9E8(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    return MEMORY[0x1EEE6C138]();
  }

  return result;
}

uint64_t sub_1AE4BDA6C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *_dyld_process_info_get_platform(void *result)
{
  if (result)
  {
    return [result platform];
  }

  return result;
}

void dyld_shared_cache_copy_uuid(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [a1 uuid];
    [v3 getUUIDBytes:a2];
  }
}

void *dyld_shared_cache_is_mapped_private(void *a1, const char *a2)
{
  if (a1)
  {
    return [a1 mappedPrivate];
  }

  return a1;
}

void *sub_1AE4BDBC4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_1AE4BDBDC(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

__n128 sub_1AE4BDC20@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_1AE4BDC90()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AE4BDCC8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AE4BDD00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FileIdentifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1AE4BDDBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FileIdentifier(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1AE4BDE78()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE4BDEBC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1AE4BDFA4(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -2;
}

uint64_t deviceSupportsMTE()
{
  if (deviceSupportsMTE::onceToken != -1)
  {
    deviceSupportsMTE_cold_1();
  }

  return deviceSupportsMTE::result;
}

uint64_t __deviceSupportsMTE_block_invoke()
{
  v3 = 8;
  v4 = 0;
  result = sysctlbyname("hw.optional.arm.FEAT_MTE4", &v4, &v3, 0, 0);
  if (result)
  {
    v1 = 0;
  }

  else
  {
    v1 = v4 == 1;
  }

  v2 = v1;
  deviceSupportsMTE::result = v2;
  return result;
}

uint64_t vm_read_safe(vm_map_read_t a1, uint64_t a2, mach_vm_size_t a3, vm_address_t *a4, mach_msg_type_number_t *a5)
{
  data = 0;
  v7 = MEMORY[0x1E69E9A60];
  v8 = 0xFFFFFFFFFFFFFFLL;
  if (*MEMORY[0x1E69E9A60] == a1)
  {
    v8 = -1;
  }

  v9 = mach_vm_read(a1, v8 & a2, a3, &data, a5);
  if (!v9)
  {
    v10 = vm_allocate(*v7, a4, *a5, 1);
    if (v10)
    {
      v9 = v10;
      mach_vm_deallocate(*v7, data, *a5);
    }

    else
    {
      if (deviceSupportsMTE::onceToken != -1)
      {
        vm_read_safe_cold_1();
      }

      if (deviceSupportsMTE::result == 1)
      {
        __asm { MSR             TCO, #1 }
      }

      memcpy(*a4, data, *a5);
      if (deviceSupportsMTE::onceToken != -1)
      {
        vm_read_safe_cold_1();
      }

      if (deviceSupportsMTE::result == 1)
      {
        __asm { MSR             TCO, #0 }
      }

      mach_vm_deallocate(*v7, data, *a5);
      return 0;
    }
  }

  return v9;
}

BOOL scavengeProcess(lsl::MemoryManager *a1, void *a2, size_t *a3)
{
  v5 = a1;
  v83 = *MEMORY[0x1E69E9840];
  v6 = lsl::MemoryManager::defaultAllocator(a1);
  v50 = v6;
  __src = 0;
  __len = 0;
  v53 = 0;
  v54 = 0;
  target_task = v5;
  v70 = 0;
  v71 = 0;
  v7 = MEMORY[0x1E69E9A60];
  if (*MEMORY[0x1E69E9A60] == v5)
  {
    if (!task_threads(v5, &v70, &v71) && v71)
    {
      for (i = 0; i < v71; ++i)
      {
        v9 = *(v70 + 4 * i);
        if (v9 != MEMORY[0x1B2701920]())
        {
          thread_suspend(*(v70 + 4 * i));
        }
      }
    }
  }

  else
  {
    task_suspend(v5);
  }

  x = 0;
  PropertyList::PropertyList(v65, v6);
  v10 = PropertyList::rootDictionary(v65);
  v11 = PropertyList::Dictionary::addObjectForKey<PropertyList::Array>(v10, "imgs", 4uLL);
  v12 = pid_for_task(v5, &x);
  if (!v12)
  {
    v47 = a3;
    v48 = a2;
    PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,int &>(v10, "proc", 4uLL, &x);
    v64 = *(PropertyList::Dictionary::addObjectForKey<PropertyList::Flags<long long>>(v10, "flag", 4uLL) + 1);
    size[1] = &unk_1F240C678;
    LODWORD(buffer) = 1;
    PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,int &>(v10, "time", 4uLL, &buffer);
    LODWORD(buffer) = 0;
    PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,int &>(v10, "plat", 4uLL, &buffer);
    address = 0;
    size[0] = 0;
    infoCnt = 9;
    object_name = 0;
    if (!mach_vm_region(v5, &address, size, 10, info, &infoCnt, &object_name))
    {
      v13 = 0;
      v49 = 0;
      v14 = MEMORY[0x1E69E9AC8];
      while (1)
      {
        if (info[0] == 5)
        {
          v15 = *v14 >= size[0] ? size[0] : *v14;
          v16 = v57;
          if (v57)
          {
            break;
          }
        }

LABEL_47:
        address += size[0];
        infoCnt = 9;
        object_name = 0;
        if (mach_vm_region(v5, &address, size, 10, info, &infoCnt, &object_name))
        {
          goto LABEL_48;
        }
      }

      if (v58)
      {
        v17 = v11;
        v18 = mach_o::Header::isMachO(v57, v58);
        if (v18)
        {
          v19 = v18;
          v20 = v13;
          CommandsSize = mach_o::Header::headerAndLoadCommandsSize(v18);
          if (*v14 >= CommandsSize)
          {
            goto LABEL_27;
          }

          v22 = 0;
          v23 = v57;
          v24 = v58;
          v26 = buffer;
          v25 = v80;
          v57 = buffer;
          v58 = v80;
          buffer = v23;
          v80 = v24;
          v27 = 4;
          if (v57 && v25)
          {
            v19 = mach_o::Header::isMachO(v26, v25);
            v22 = v19 != 0;
            v27 = 4 * (v19 == 0);
            v23 = buffer;
          }

          if (v23)
          {
            free(v23);
          }

          if (v22)
          {
LABEL_27:
            v13 = mach_o::Header::isDylinker(v19) | v20;
            v49 |= mach_o::Header::isMainExecutable(v19);
            if (mach_o::Header::isDylinker(v19) || mach_o::Header::isMainExecutable(v19))
            {
              v28 = PropertyList::Array::addObject<PropertyList::Dictionary>(v17);
              v56 = mach_o::Header::preferredLoadAddress(v19);
              if (v56)
              {
                PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,unsigned long long &>(v28, "padr", 4uLL, &v56);
              }

              PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,unsigned long long &>(v28, "addr", 4uLL, &address);
              v55 = mach_o::Header::installName(v19);
              if (v55)
              {
                PropertyList::Dictionary::addObjectForKey<PropertyList::String,char const*&>(v28, "name", 4uLL, &v55);
              }

              *v81 = 0;
              v82 = 0;
              if (mach_o::Header::getUuid(v19, v81))
              {
                PropertyList::Dictionary::addObjectForKey<PropertyList::UUID,unsigned char (&)[16]>(v28, "uuid", 4uLL, v81);
              }

              v29 = proc_regionfilename(x, address, &buffer, 0x400u);
              if (v29)
              {
                *(&buffer + v29) = 0;
                PropertyList::Dictionary::addObjectForKey<PropertyList::String,char (&)[1025]>(v28, "file", 4uLL, &buffer);
              }

              v78[0] = 0;
              v78[1] = v78;
              v78[2] = 0x2000000000;
              v78[3] = 0;
              v72 = MEMORY[0x1E69E9820];
              v73 = 0x40000000;
              v74 = ___ZN12_GLOBAL__N_115addSegmentArrayERN12PropertyList10DictionaryEPKN6mach_o6HeaderE_block_invoke;
              v75 = &unk_1E7A26368;
              v76 = v78;
              v77 = v28;
              mach_o::Header::forEachSegment(v19, &v72);
              _Block_object_dispose(v78, 8);
              if (v13 & v49)
              {
                v27 = 2;
              }

              else
              {
                v27 = 0;
              }
            }

            else
            {
              v27 = 4;
            }
          }

          else
          {
            v13 = v20;
          }
        }

        else
        {
          v27 = 4;
        }

        v16 = v57;
        v11 = v17;
        if (!v57)
        {
LABEL_46:
          v30 = v27 | 4;
          v14 = MEMORY[0x1E69E9AC8];
          if (v30 != 4)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        }
      }

      else
      {
        v27 = 4;
      }

      free(v16);
      goto LABEL_46;
    }

LABEL_48:
    LODWORD(buffer) = 1;
    PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,int &>(v10, "init", 4uLL, &buffer);
    v32 = *(v10 + 48);
    v31 = v10 + 48;
    v33 = lsl::Allocator::aligned_alloc(v32, 8uLL, 0x18uLL);
    PropertyList::String::String(v33, v32, "stat", 4uLL);
    lsl::Vector<PropertyList::Object *>::reserve(v31 - 32, *(v31 - 16) + 1);
    v34 = *(v31 - 24);
    v35 = *(v31 - 16);
    *(v31 - 16) = v35 + 1;
    *(v34 + 8 * v35) = v33;
    v36 = lsl::Allocator::aligned_alloc(v32, 8uLL, 0x18uLL);
    PropertyList::Integer::Integer(v36, v32, 0);
    lsl::Vector<PropertyList::Object *>::reserve(v31, *(v31 + 16) + 1);
    v37 = *(v31 + 8);
    v38 = *(v31 + 16);
    *(v31 + 16) = v38 + 1;
    *(v37 + 8 * v38) = v36;
    v72 = v6;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    LODWORD(v76) = 0;
    PropertyList::encode(v65, &v72);
    AAREncoder::AAREncoder(&buffer, v6);
    AAREncoder::addFile(&buffer, "process.plist", 0xDuLL, v73, v74);
    AAREncoder::encode(&buffer, &v50);
    AAREncoder::~AAREncoder(&buffer);
    if (v73)
    {
      lsl::Vector<std::byte>::resize(&v72, 0);
    }

    a3 = v47;
    a2 = v48;
  }

  v65[1] = &unk_1F240C718;
  if (v67[1])
  {
    lsl::Vector<PropertyList::Object *>::resize(v67, 0);
  }

  if (v66[1])
  {
    lsl::Vector<PropertyList::Object *>::resize(v66, 0);
  }

  v39 = target_task;
  if (target_task != *v7)
  {
    task_resume(target_task);
    if (v12)
    {
      goto LABEL_68;
    }

    goto LABEL_66;
  }

  if (v71)
  {
    for (j = 0; j < v71; v39 = mach_port_deallocate(*v7, *(v70 + 4 * j++)))
    {
      v41 = *(v70 + 4 * j);
      if (v41 != MEMORY[0x1B2701920](v39))
      {
        thread_resume(*(v70 + 4 * j));
      }
    }

    LODWORD(v39) = *v7;
    v42 = 4 * v71;
  }

  else
  {
    v42 = 0;
  }

  mach_vm_deallocate(v39, v70, v42);
  if (!v12)
  {
LABEL_66:
    v43 = __len;
    *a3 = __len;
    v44 = malloc_type_malloc(v43, 0x7D93AAE4uLL);
    *a2 = v44;
    if (__len)
    {
      memmove(v44, __src, __len);
    }
  }

LABEL_68:
  if (__src)
  {
    lsl::Vector<std::byte>::resize(&v50, 0);
  }

  result = v12 == 0;
  v46 = *MEMORY[0x1E69E9840];
  return result;
}

void *PropertyList::Dictionary::addObjectForKey<PropertyList::Array>(uint64_t a1, const void *a2, size_t a3)
{
  v5 = a1 + 48;
  v6 = *(a1 + 48);
  v7 = lsl::Allocator::aligned_alloc(v6, 8uLL, 0x18uLL);
  PropertyList::String::String(v7, v6, a2, a3);
  lsl::Vector<PropertyList::Object *>::reserve(v5 - 32, *(v5 - 16) + 1);
  v8 = *(v5 - 24);
  v9 = *(v5 - 16);
  *(v5 - 16) = v9 + 1;
  *(v8 + 8 * v9) = v7;
  v10 = lsl::Allocator::aligned_alloc(v6, 8uLL, 0x30uLL);
  PropertyList::Array::Array(v10, v6);
  lsl::Vector<PropertyList::Object *>::reserve(v5, *(v5 + 16) + 1);
  v11 = *(v5 + 8);
  v12 = *(v5 + 16);
  *(v5 + 16) = v12 + 1;
  *(v11 + 8 * v12) = v10;
  return v10;
}

void *PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,int &>(uint64_t a1, const void *a2, size_t a3, int *a4)
{
  v7 = a1 + 48;
  v8 = *(a1 + 48);
  v9 = lsl::Allocator::aligned_alloc(v8, 8uLL, 0x18uLL);
  PropertyList::String::String(v9, v8, a2, a3);
  lsl::Vector<PropertyList::Object *>::reserve(v7 - 32, *(v7 - 16) + 1);
  v10 = *(v7 - 24);
  v11 = *(v7 - 16);
  *(v7 - 16) = v11 + 1;
  *(v10 + 8 * v11) = v9;
  v12 = lsl::Allocator::aligned_alloc(v8, 8uLL, 0x18uLL);
  PropertyList::Integer::Integer(v12, v8, *a4);
  lsl::Vector<PropertyList::Object *>::reserve(v7, *(v7 + 16) + 1);
  v13 = *(v7 + 8);
  v14 = *(v7 + 16);
  *(v7 + 16) = v14 + 1;
  *(v13 + 8 * v14) = v12;
  return v12;
}

void *PropertyList::Dictionary::addObjectForKey<PropertyList::Flags<long long>>(uint64_t a1, const void *a2, size_t a3)
{
  v5 = a1 + 48;
  v6 = *(a1 + 48);
  v7 = lsl::Allocator::aligned_alloc(v6, 8uLL, 0x18uLL);
  PropertyList::String::String(v7, v6, a2, a3);
  lsl::Vector<PropertyList::Object *>::reserve(v5 - 32, *(v5 - 16) + 1);
  v8 = *(v5 - 24);
  v9 = *(v5 - 16);
  *(v5 - 16) = v9 + 1;
  *(v8 + 8 * v9) = v7;
  v10 = lsl::Allocator::aligned_alloc(v6, 8uLL, 0x18uLL);
  *PropertyList::Integer::Integer(v10, v6, 0) = &unk_1F240C678;
  lsl::Vector<PropertyList::Object *>::reserve(v5, *(v5 + 16) + 1);
  v11 = *(v5 + 8);
  v12 = *(v5 + 16);
  *(v5 + 16) = v12 + 1;
  *(v11 + 8 * v12) = v10;
  return v10;
}

_anonymous_namespace_::RemoteMap *anonymous namespace::RemoteMap::RemoteMap(_anonymous_namespace_::RemoteMap *this, vm_map_read_t src_task, mach_vm_address_t src_address, mach_vm_size_t size)
{
  *this = 0;
  *(this + 1) = size;
  v18 = 1;
  cur_protection = 0;
  target_address = 0;
  v5 = MEMORY[0x1E69E9A60];
  if (mach_vm_remap_new(*MEMORY[0x1E69E9A60], &target_address, size, 0, 97, src_task, src_address, 1, &cur_protection, &v18, 2u))
  {
    *this = 0;
    *(this + 1) = 0;
  }

  else
  {
    v6 = malloc_type_malloc(*(this + 1), 0x51242F4FuLL);
    *this = v6;
    if (v6)
    {
      if (deviceSupportsMTE())
      {
        __asm { MSR             TCO, #1 }
      }

      memcpy(*this, target_address, *(this + 1));
      if (deviceSupportsMTE())
      {
        __asm { MSR             TCO, #0 }
      }

      v13 = *v5;
      v14 = target_address;
      v15 = *(this + 1);
    }

    else
    {
      *(this + 1) = 0;
      v13 = *v5;
      v14 = target_address;
      v15 = 0;
    }

    mach_vm_deallocate(v13, v14, v15);
  }

  return this;
}

void *PropertyList::Array::addObject<PropertyList::Dictionary>(uint64_t a1)
{
  v1 = a1 + 16;
  v2 = *(a1 + 16);
  v3 = lsl::Allocator::aligned_alloc(v2, 8uLL, 0x50uLL);
  PropertyList::Dictionary::Dictionary(v3, v2);
  lsl::Vector<PropertyList::Object *>::reserve(v1, *(v1 + 16) + 1);
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  *(v1 + 16) = v5 + 1;
  *(v4 + 8 * v5) = v3;
  return v3;
}

void *PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,unsigned long long &>(uint64_t a1, const void *a2, size_t a3, uint64_t *a4)
{
  v7 = a1 + 48;
  v8 = *(a1 + 48);
  v9 = lsl::Allocator::aligned_alloc(v8, 8uLL, 0x18uLL);
  PropertyList::String::String(v9, v8, a2, a3);
  lsl::Vector<PropertyList::Object *>::reserve(v7 - 32, *(v7 - 16) + 1);
  v10 = *(v7 - 24);
  v11 = *(v7 - 16);
  *(v7 - 16) = v11 + 1;
  *(v10 + 8 * v11) = v9;
  v12 = lsl::Allocator::aligned_alloc(v8, 8uLL, 0x18uLL);
  PropertyList::Integer::Integer(v12, v8, *a4);
  lsl::Vector<PropertyList::Object *>::reserve(v7, *(v7 + 16) + 1);
  v13 = *(v7 + 8);
  v14 = *(v7 + 16);
  *(v7 + 16) = v14 + 1;
  *(v13 + 8 * v14) = v12;
  return v12;
}

void *PropertyList::Dictionary::addObjectForKey<PropertyList::String,char const*&>(uint64_t a1, const void *a2, size_t a3, const char **a4)
{
  v7 = a1 + 48;
  v8 = *(a1 + 48);
  v9 = lsl::Allocator::aligned_alloc(v8, 8uLL, 0x18uLL);
  PropertyList::String::String(v9, v8, a2, a3);
  lsl::Vector<PropertyList::Object *>::reserve(v7 - 32, *(v7 - 16) + 1);
  v10 = *(v7 - 24);
  v11 = *(v7 - 16);
  *(v7 - 16) = v11 + 1;
  *(v10 + 8 * v11) = v9;
  v12 = lsl::Allocator::aligned_alloc(v8, 8uLL, 0x18uLL);
  v13 = *a4;
  v14 = strlen(v13);
  PropertyList::String::String(v12, v8, v13, v14);
  lsl::Vector<PropertyList::Object *>::reserve(v7, *(v7 + 16) + 1);
  v15 = *(v7 + 8);
  v16 = *(v7 + 16);
  *(v7 + 16) = v16 + 1;
  *(v15 + 8 * v16) = v12;
  return v12;
}

PropertyList::UUID *PropertyList::Dictionary::addObjectForKey<PropertyList::UUID,unsigned char (&)[16]>(uint64_t a1, const void *a2, size_t a3, unsigned __int8 *a4)
{
  v7 = a1 + 48;
  v8 = *(a1 + 48);
  v9 = lsl::Allocator::aligned_alloc(v8, 8uLL, 0x18uLL);
  PropertyList::String::String(v9, v8, a2, a3);
  lsl::Vector<PropertyList::Object *>::reserve(v7 - 32, *(v7 - 16) + 1);
  v10 = *(v7 - 24);
  v11 = *(v7 - 16);
  *(v7 - 16) = v11 + 1;
  *(v10 + 8 * v11) = v9;
  v12 = lsl::Allocator::aligned_alloc(v8, 8uLL, 0x30uLL);
  PropertyList::UUID::UUID(v12, v8, a4);
  lsl::Vector<PropertyList::Object *>::reserve(v7, *(v7 + 16) + 1);
  v13 = *(v7 + 8);
  v14 = *(v7 + 16);
  *(v7 + 16) = v14 + 1;
  *(v13 + 8 * v14) = v12;
  return v12;
}

void *PropertyList::Dictionary::addObjectForKey<PropertyList::String,char (&)[1025]>(uint64_t a1, const void *a2, size_t a3, const char *a4)
{
  v7 = a1 + 48;
  v8 = *(a1 + 48);
  v9 = lsl::Allocator::aligned_alloc(v8, 8uLL, 0x18uLL);
  PropertyList::String::String(v9, v8, a2, a3);
  lsl::Vector<PropertyList::Object *>::reserve(v7 - 32, *(v7 - 16) + 1);
  v10 = *(v7 - 24);
  v11 = *(v7 - 16);
  *(v7 - 16) = v11 + 1;
  *(v10 + 8 * v11) = v9;
  v12 = lsl::Allocator::aligned_alloc(v8, 8uLL, 0x18uLL);
  v13 = strlen(a4);
  PropertyList::String::String(v12, v8, a4, v13);
  lsl::Vector<PropertyList::Object *>::reserve(v7, *(v7 + 16) + 1);
  v14 = *(v7 + 8);
  v15 = *(v7 + 16);
  *(v7 + 16) = v15 + 1;
  *(v14 + 8 * v15) = v12;
  return v12;
}

void lsl::Vector<PropertyList::Object *>::reserve(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24) < a2)
  {
    if (a2 >= 0x10)
    {
      v3 = (a2 - 1) | ((a2 - 1) >> 1) | (((a2 - 1) | ((a2 - 1) >> 1)) >> 2);
      v4 = v3 | (v3 >> 4) | ((v3 | (v3 >> 4)) >> 8);
      v2 = (v4 | (v4 >> 16) | ((v4 | (v4 >> 16)) >> 32)) + 1;
    }

    else
    {
      v2 = 16;
    }

    lsl::Vector<PropertyList::Object *>::reserveExact(a1, v2);
  }
}

void lsl::Vector<PropertyList::Object *>::reserveExact(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24) < a2)
  {
    if ((lsl::Allocator::realloc(*a1, *(a1 + 8)) & 1) == 0)
    {
      v4 = lsl::Allocator::aligned_alloc(*a1, 0x10uLL, 8 * a2);
      v5 = v4;
      v6 = *(a1 + 16);
      if (v6)
      {
        v7 = 0;
        v8 = v4;
        do
        {
          *v8++ = *(*(a1 + 8) + 8 * v7++);
        }

        while (v6 != v7);
      }

      v9 = *(a1 + 8);
      if (v9)
      {
        lsl::Allocator::free(*a1, v9);
        v6 = *(a1 + 16);
      }

      if (v6 >= a2)
      {
        v6 = a2;
      }

      *(a1 + 8) = v5;
      *(a1 + 16) = v6;
    }

    *(a1 + 24) = a2;
  }
}

void *___ZN12_GLOBAL__N_115addSegmentArrayERN12PropertyList10DictionaryEPKN6mach_o6HeaderE_block_invoke(void *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8) != 10 || (**a2 == 0x455A454741505F5FLL ? (v4 = *(*a2 + 8) == 20306) : (v4 = 0), !v4))
  {
    v5 = *(*(result[4] + 8) + 24);
    if (!v5)
    {
      *(*(v3[4] + 8) + 24) = PropertyList::Dictionary::addObjectForKey<PropertyList::Array>(v3[5], "segs", 4uLL);
      v5 = *(*(v3[4] + 8) + 24);
    }

    v6 = PropertyList::Array::addObject<PropertyList::Dictionary>(v5);
    PropertyList::Dictionary::addObjectForKey<PropertyList::String,std::string_view const&>(v6, "name", 4uLL, a2);
    PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,unsigned long long &>(v6, "padr", 4uLL, (a2 + 16));
    PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,unsigned long long &>(v6, "size", 4uLL, (a2 + 24));
    PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,unsigned int const&>(v6, "foff", 4uLL, (a2 + 32));
    PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,unsigned int const&>(v6, "fsze", 4uLL, (a2 + 36));

    return PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,unsigned char const&>(v6, "perm", 4uLL, (a2 + 47));
  }

  return result;
}

void *PropertyList::Dictionary::addObjectForKey<PropertyList::String,std::string_view const&>(uint64_t a1, const void *a2, size_t a3, uint64_t a4)
{
  v7 = a1 + 48;
  v8 = *(a1 + 48);
  v9 = lsl::Allocator::aligned_alloc(v8, 8uLL, 0x18uLL);
  PropertyList::String::String(v9, v8, a2, a3);
  lsl::Vector<PropertyList::Object *>::reserve(v7 - 32, *(v7 - 16) + 1);
  v10 = *(v7 - 24);
  v11 = *(v7 - 16);
  *(v7 - 16) = v11 + 1;
  *(v10 + 8 * v11) = v9;
  v12 = lsl::Allocator::aligned_alloc(v8, 8uLL, 0x18uLL);
  PropertyList::String::String(v12, v8, *a4, *(a4 + 8));
  lsl::Vector<PropertyList::Object *>::reserve(v7, *(v7 + 16) + 1);
  v13 = *(v7 + 8);
  v14 = *(v7 + 16);
  *(v7 + 16) = v14 + 1;
  *(v13 + 8 * v14) = v12;
  return v12;
}

void *PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,unsigned int const&>(uint64_t a1, const void *a2, size_t a3, unsigned int *a4)
{
  v7 = a1 + 48;
  v8 = *(a1 + 48);
  v9 = lsl::Allocator::aligned_alloc(v8, 8uLL, 0x18uLL);
  PropertyList::String::String(v9, v8, a2, a3);
  lsl::Vector<PropertyList::Object *>::reserve(v7 - 32, *(v7 - 16) + 1);
  v10 = *(v7 - 24);
  v11 = *(v7 - 16);
  *(v7 - 16) = v11 + 1;
  *(v10 + 8 * v11) = v9;
  v12 = lsl::Allocator::aligned_alloc(v8, 8uLL, 0x18uLL);
  PropertyList::Integer::Integer(v12, v8, *a4);
  lsl::Vector<PropertyList::Object *>::reserve(v7, *(v7 + 16) + 1);
  v13 = *(v7 + 8);
  v14 = *(v7 + 16);
  *(v7 + 16) = v14 + 1;
  *(v13 + 8 * v14) = v12;
  return v12;
}

void *PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,unsigned char const&>(uint64_t a1, const void *a2, size_t a3, unsigned __int8 *a4)
{
  v7 = a1 + 48;
  v8 = *(a1 + 48);
  v9 = lsl::Allocator::aligned_alloc(v8, 8uLL, 0x18uLL);
  PropertyList::String::String(v9, v8, a2, a3);
  lsl::Vector<PropertyList::Object *>::reserve(v7 - 32, *(v7 - 16) + 1);
  v10 = *(v7 - 24);
  v11 = *(v7 - 16);
  *(v7 - 16) = v11 + 1;
  *(v10 + 8 * v11) = v9;
  v12 = lsl::Allocator::aligned_alloc(v8, 8uLL, 0x18uLL);
  PropertyList::Integer::Integer(v12, v8, *a4);
  lsl::Vector<PropertyList::Object *>::reserve(v7, *(v7 + 16) + 1);
  v13 = *(v7 + 8);
  v14 = *(v7 + 16);
  *(v7 + 16) = v14 + 1;
  *(v13 + 8 * v14) = v12;
  return v12;
}

void lsl::Vector<PropertyList::Object *>::resize(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24) >= a2)
  {
    if (a2)
    {
      *(a1 + 16) = a2;
      *(a1 + 24) = a2;
      v4 = *a1;
      v5 = *(a1 + 8);

      lsl::Allocator::realloc(v4, v5);
    }

    else
    {
      v7 = (a1 + 8);
      v6 = *(a1 + 8);
      if (v6)
      {
        lsl::Allocator::free(*a1, v6);
      }

      *v7 = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
    }
  }

  else
  {
    lsl::Vector<PropertyList::Object *>::reserve(a1, a2);
    *(a1 + 16) = a2;
    *(a1 + 24) = a2;
  }
}

void lsl::Vector<std::byte>::resize(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24) >= a2)
  {
    if (a2)
    {
      *(a1 + 16) = a2;
      *(a1 + 24) = a2;
      v4 = *a1;
      v5 = *(a1 + 8);

      lsl::Allocator::realloc(v4, v5);
    }

    else
    {
      v7 = (a1 + 8);
      v6 = *(a1 + 8);
      if (v6)
      {
        lsl::Allocator::free(*a1, v6);
      }

      *v7 = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
    }
  }

  else
  {
    lsl::Vector<std::byte>::reserve(a1, a2);
    *(a1 + 16) = a2;
    *(a1 + 24) = a2;
  }
}

void lsl::Vector<std::byte>::reserve(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24) < a2)
  {
    if (a2 >= 0x10)
    {
      v3 = (a2 - 1) | ((a2 - 1) >> 1) | (((a2 - 1) | ((a2 - 1) >> 1)) >> 2);
      v4 = v3 | (v3 >> 4) | ((v3 | (v3 >> 4)) >> 8);
      v2 = (v4 | (v4 >> 16) | ((v4 | (v4 >> 16)) >> 32)) + 1;
    }

    else
    {
      v2 = 16;
    }

    lsl::Vector<std::byte>::reserveExact(a1, v2);
  }
}

void lsl::Vector<std::byte>::reserveExact(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24) < a2)
  {
    if ((lsl::Allocator::realloc(*a1, *(a1 + 8)) & 1) == 0)
    {
      v4 = lsl::Allocator::aligned_alloc(*a1, 0x10uLL, a2);
      v5 = v4;
      v6 = *(a1 + 16);
      if (v6)
      {
        for (i = 0; i < v6; ++i)
        {
          v4[i] = *(*(a1 + 8) + i);
          v6 = *(a1 + 16);
        }
      }

      v8 = *(a1 + 8);
      if (v8)
      {
        lsl::Allocator::free(*a1, v8);
        v6 = *(a1 + 16);
      }

      if (v6 >= a2)
      {
        v6 = a2;
      }

      *(a1 + 8) = v5;
      *(a1 + 16) = v6;
    }

    *(a1 + 24) = a2;
  }
}

uint64_t cksum(unsigned __int8 *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = 0;
  v3 = 1;
  do
  {
    v4 = *a1++;
    v2 = crcTable[v4 ^ HIBYTE(v2)] ^ (v2 << 8);
    v5 = a2 > v3++;
  }

  while (v5);
  do
  {
    v2 = crcTable[a2 ^ HIBYTE(v2)] ^ (v2 << 8);
    v5 = a2 > 0xFF;
    a2 >>= 8;
  }

  while (v5);
  return ~v2;
}

CFTypeRef dyld_process_create_for_current_task()
{
  v0 = +[_DYProcess processForCurrentTask];
  v1 = CFRetain(v0);

  return v1;
}

uint64_t extractKernReturn(NSError *a1)
{
  v1 = a1;
  v2 = [(NSError *)v1 domain];
  v3 = [v2 isEqual:@"com.apple.dyld.snapshot"];

  if ((v3 & 1) != 0 && [(NSError *)v1 code]== 1)
  {
    v4 = [(NSError *)v1 userInfo];
    v5 = [v4 objectForKeyedSubscript:@"kern_return_t"];

    if (v5)
    {
      v6 = [v5 intValue];
    }

    else
    {
      v6 = 5;
    }
  }

  else
  {
    v6 = 5;
  }

  return v6;
}

void sub_1AE4BF828(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

CFTypeRef dyld_process_snapshot_create_from_data(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    dyld_process_snapshot_create_from_data_cold_1();
  }

  if (a4)
  {
    dyld_process_snapshot_create_from_data_cold_2();
  }

  v4 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:a1 length:a2 freeWhenDone:1];
  v9 = 0;
  v5 = [[_DYSnapshot alloc] initWithData:v4 error:&v9];
  v6 = v9;
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = CFRetain(v5);
  }

  return v7;
}

void dyld_process_snapshot_for_each_image(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = [a1 images];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v3[2](v3, *(*(&v9 + 1) + 8 * v7++));
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void dyld_for_each_installed_shared_cache(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  +[_DYSharedCache installedSharedCaches];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v3 = v9 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v1[2](v1, *(*(&v8 + 1) + 8 * v6++));
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *MEMORY[0x1E69E9840];
}

void dyld_for_each_installed_shared_cache_with_system_path(const char *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = "";
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
  v6 = [_DYSharedCache installedSharedCachesForSystemPath:v5];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v3[2](v3, *(*(&v12 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

BOOL dyld_shared_cache_for_file(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [_DYSharedCache alloc];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
  v9 = 0;
  v6 = [(_DYSharedCache *)v4 initWithPath:v5 error:&v9];
  v7 = v9;

  if (!v7)
  {
    v3[2](v3, v6);
  }

  return v7 == 0;
}

void *dyld_shared_cache_pin_mapping(void *a1, const char *a2)
{
  if (a1)
  {
    return [a1 pinMappings];
  }

  return a1;
}

void *dyld_shared_cache_unpin_mapping(void *a1, const char *a2)
{
  if (a1)
  {
    return [a1 unpinMappings];
  }

  return a1;
}

void dyld_shared_cache_for_each_image(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = [a1 images];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v3[2](v3, *(*(&v9 + 1) + 8 * v7++));
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

BOOL dyld_image_copy_uuid(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  v4 = [v3 uuid];
  v5 = v4 != 0;

  if (v4)
  {
    v6 = [v3 uuid];
    [v6 getUUIDBytes:a2];
  }

  return v5;
}

uint64_t dyld_image_get_installname(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = [v1 installname];

  if (v2)
  {
    v3 = [v1 installname];
    v4 = [v3 UTF8String];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t dyld_image_get_file_path(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = [v1 filePath];

  if (v2)
  {
    v3 = [v1 filePath];
    v4 = [v3 UTF8String];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL dyld_image_for_each_segment_info(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = a1;
    v4 = [a1 segments];
    obj = v4;
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = *v16;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v15 + 1) + 8 * i);
          v9 = [v8 name];
          v10 = v9;
          v3[2](v3, [v9 UTF8String], objc_msgSend(v8, "address"), objc_msgSend(v8, "vmsize"), objc_msgSend(v8, "permissions"));
        }

        v4 = obj;
        v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v5);
    }

    a1 = v13;
  }

  v11 = *MEMORY[0x1E69E9840];
  return a1 != 0;
}

uint64_t dyld_image_content_for_segment(void *a1, const char *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a1)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = [a1 segments];
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = *v21;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v20 + 1) + 8 * i);
          v11 = [v10 name];
          v12 = v11;
          v13 = strcmp([v11 UTF8String], a2) == 0;

          if (v13)
          {
            v15 = objc_autoreleasePoolPush();
            v18[0] = MEMORY[0x1E69E9820];
            v18[1] = 3221225472;
            v18[2] = __dyld_image_content_for_segment_block_invoke;
            v18[3] = &unk_1E7A26390;
            v18[4] = v10;
            v19 = v5;
            v14 = [v10 withSegmentData:v18];

            objc_autoreleasePoolPop(v15);
            goto LABEL_12;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_12:
  }

  else
  {
    v14 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

void __dyld_image_content_for_segment_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = v3;
  (*(v4 + 16))(v4, [v5 bytes], objc_msgSend(*(a1 + 32), "address"), objc_msgSend(*(a1 + 32), "vmsize"));
}

void *dyld_image_for_each_section_info(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = [a1 segments];
    v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v5)
    {
      v6 = *v21;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v21 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v20 + 1) + 8 * i);
          v9 = [v8 name];
          v10 = v9;
          v11 = strcmp([v9 UTF8String], "__TEXT") == 0;

          if (v11)
          {
            v12 = v8;
            goto LABEL_12;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_12:

    v13 = [v12 address];
    v14 = v13 - [v12 preferredLoadAddress];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __dyld_image_for_each_section_info_block_invoke;
    v17[3] = &unk_1E7A263E0;
    v18 = v3;
    v19 = v14;
    a1 = [v12 withSegmentData:v17];
  }

  v15 = *MEMORY[0x1E69E9840];
  return a1;
}

void __dyld_image_for_each_section_info_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = mach_o::Header::isMachO([v3 bytes], objc_msgSend(v3, "length"));
  if (v4)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __dyld_image_for_each_section_info_block_invoke_2;
    v7[3] = &unk_1E7A263B8;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = v5;
    v9 = v6;
    mach_o::Header::forEachSection(v4, v7);
  }
}

uint64_t __dyld_image_for_each_section_info_block_invoke_2(uint64_t a1, __int128 **a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = a2[2];
  if (a2[3] >= 0x10)
  {
    v8 = *v3;
    v9 = 0;
    v3 = &v8;
  }

  if (a2[1] >= 0x10)
  {
    v6 = *v2;
    v7 = 0;
    v2 = &v6;
  }

  result = (*(*(a1 + 32) + 16))(*(a1 + 32), v3, v2, a2[7] + *(a1 + 40), a2[8]);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t dyld_image_content_for_section(void *a1, const char *a2, uint64_t a3, void *a4)
{
  v48 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (!a1)
  {
    v23 = 0;
    goto LABEL_21;
  }

  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v27 = a1;
  v28 = v7;
  obj = [v27 segments];
  v8 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  v26 = a3;
  v9 = 0;
  v10 = 0;
  if (!v8)
  {
    goto LABEL_16;
  }

  v11 = *v44;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v44 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v43 + 1) + 8 * i);
      v14 = [v13 name];
      v15 = v14;
      v16 = strcmp([v14 UTF8String], "__TEXT") == 0;

      if (v16)
      {
        v17 = v13;

        v9 = v17;
      }

      v18 = [v13 name];
      v19 = v18;
      v20 = strcmp([v18 UTF8String], a2) == 0;

      if (v20)
      {
        v21 = v13;

        v10 = v21;
        if (!v9)
        {
          continue;
        }
      }

      else if (!v9)
      {
        continue;
      }

      if (v10)
      {
        goto LABEL_16;
      }
    }

    v8 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  }

  while (v8);
LABEL_16:

  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v42[3] = 0;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v41[3] = 0;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __dyld_image_content_for_section_block_invoke;
  v35[3] = &unk_1E7A26430;
  v39 = a2;
  v40 = v26;
  v37 = v42;
  v22 = v10;
  v36 = v22;
  v38 = v41;
  if ([v9 withSegmentData:v35])
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __dyld_image_content_for_section_block_invoke_3;
    v30[3] = &unk_1E7A26458;
    v32 = v28;
    v33 = v42;
    v31 = v22;
    v34 = v41;
    v23 = [v31 withSegmentData:v30];
  }

  else
  {
    v23 = 0;
  }

  _Block_object_dispose(v41, 8);
  _Block_object_dispose(v42, 8);

  v7 = v28;
LABEL_21:

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

void sub_1AE4C0CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);

  _Unwind_Resume(a1);
}

void __dyld_image_content_for_section_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = mach_o::Header::isMachO([v3 bytes], objc_msgSend(v3, "length"));
  if (v4)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __dyld_image_content_for_section_block_invoke_2;
    v7[3] = &unk_1E7A26408;
    v10 = *(a1 + 56);
    v6 = *(a1 + 32);
    v5 = v6;
    v8 = v6;
    v9 = *(a1 + 48);
    mach_o::Header::forEachSection(v4, v7);
  }
}

uint64_t __dyld_image_content_for_section_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(a1 + 56);
  result = strlen(v5);
  if (v4 == result)
  {
    result = memcmp(*(a2 + 16), v5, v4);
    if (!result)
    {
      v7 = *(a2 + 8);
      result = strlen(*(a1 + 64));
      if (v7 == result)
      {
        result = memcmp(*a2, *(a1 + 64), v7);
        if (!result)
        {
          v8 = *(a2 + 56);
          result = [*(a1 + 32) preferredLoadAddress];
          *(*(*(a1 + 40) + 8) + 24) = v8 - result;
          *(*(*(a1 + 48) + 8) + 24) = *(a2 + 64);
        }
      }
    }
  }

  return result;
}

void __dyld_image_content_for_section_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v7 = v3;
  v5 = [v7 bytes];
  v6 = *(*(*(a1 + 48) + 8) + 24);
  (*(v4 + 16))(v4, v5 + v6, [*(a1 + 32) address] + v6, *(*(*(a1 + 56) + 8) + 24));
}

uint64_t dyld_image_local_nlist_content_4Symbolication(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = a1;
    v5 = [v4 sharedCache];
    v6 = v5;
    if (v5)
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v30 = 1;
      v7 = [v5 localSymbolData];
      if (v7)
      {
        v8 = [v4 address];
        v9 = [v6 address];
        v10 = [v7 bytes];
        v11 = [v7 bytes];
        v12 = v8 - v9;
        v13 = *(v10 + 72);
        v14 = v11 + v13;
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v20 = __dyld_image_local_nlist_content_4Symbolication_block_invoke;
        v21 = &unk_1E7A26480;
        v25 = v12;
        v22 = v4;
        v26 = v11 + v13;
        v23 = v3;
        v24 = &v27;
        v31 = 0;
        if (*(v11 + v13 + 20))
        {
          v15 = 0;
          v16 = (v13 + *(v14 + 16) + v11 + 12);
          do
          {
            v20(v19, *(v16 - 3), *(v16 - 1), *v16, &v31);
            if (v31)
            {
              break;
            }

            v16 += 4;
            ++v15;
          }

          while (v15 < *(v14 + 20));
        }

        v17 = *(v28 + 24);
      }

      else
      {
        v17 = *(v28 + 24);
      }

      _Block_object_dispose(&v27, 8);
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

void sub_1AE4C11F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __dyld_image_local_nlist_content_4Symbolication_block_invoke(uint64_t result, uint64_t a2, int a3, uint64_t a4, _BYTE *a5)
{
  if (*(result + 56) == a2)
  {
    v7 = result;
    if ([*(result + 32) pointerSize] == 8)
    {
      v8 = *(v7 + 64);
      v9 = &v8[4 * a3] + *v8;
    }

    else
    {
      result = [*(v7 + 32) pointerSize];
      if (result != 4)
      {
        *(*(*(v7 + 48) + 8) + 24) = 0;
        goto LABEL_8;
      }

      v8 = *(v7 + 64);
      v10 = &v8[3 * a3] + *v8;
    }

    v11 = v8 + v8[2];
    result = (*(*(v7 + 40) + 16))();
LABEL_8:
    *a5 = 1;
  }

  return result;
}

void _dyld_process_info_get_aot_cache(void *a1, uint64_t a2)
{
  v3 = a1;
  if (!v3)
  {
    if (a2)
    {
      v4 = [0 sharedCache];

      v3 = 0;
      if (v4)
      {
        v5 = [0 sharedCache];
        v6 = [v5 aotAddress];

        if (v6)
        {
          v7 = [0 sharedCache];
          *(a2 + 16) = [v7 aotAddress];

          v8 = [0 sharedCache];
          v9 = [v8 uuid];
          [v9 getUUIDBytes:a2];
        }

        else
        {
          *(a2 + 16) = 0;
        }

        v3 = 0;
      }
    }
  }
}

void _dyld_process_info_for_each_aot_image(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v17 = a1;
    v4 = [v17 aotImages];

    if (!v4)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v5 = [v17 aotImages];
      obj = v5;
      v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v6)
      {
        v19 = *v21;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v21 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v8 = *(*(&v20 + 1) + 8 * i);
            v9 = [v8 x86Address];
            v10 = [v8 aotAddress];
            v11 = [v8 aotSize];
            v12 = [v8 aotImageKey];
            v13 = v12;
            v14 = [v12 bytes];
            v15 = [v8 aotImageKey];
            v3[2](v3, v9, v10, v11, v14, [v15 length]);
          }

          v5 = obj;
          v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v6);
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void _dyld_process_info_for_each_segment(void *a1, uint64_t a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a1)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v6 = [a1 images];
    v7 = [v6 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v7)
    {
      v8 = *v30;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v29 + 1) + 8 * i);
          if ([v10 address] == a2)
          {
            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            v11 = [v10 segments];
            v12 = [v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
            if (v12)
            {
              v13 = *v26;
              do
              {
                for (j = 0; j != v12; ++j)
                {
                  if (*v26 != v13)
                  {
                    objc_enumerationMutation(v11);
                  }

                  v15 = *(*(&v25 + 1) + 8 * j);
                  v24 = 0;
                  v22 = 0u;
                  v23 = 0u;
                  *__source = 0u;
                  [v15 getFastPathData:__source];
                  if (__source[0])
                  {
                    if ((__source[1] + 1) < 0x11)
                    {
                      v16 = (__source[1] + 1);
                    }

                    else
                    {
                      v16 = 17;
                    }

                    v17 = __dst;
                    strlcpy(__dst, __source[0], v16);
                  }

                  else
                  {
                    v18 = [v15 name];
                    v19 = v18;
                    v17 = [v18 UTF8String];
                  }

                  (*(v5 + 2))(v5, v23, v22, v17);
                }

                v12 = [v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
              }

              while (v12);
            }

            goto LABEL_25;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v29 objects:v35 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_25:
  }

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t dyld_process_register_for_image_notifications(void *a1, _DWORD *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    *a2 = 0;
    if (!a1)
    {
      v9 = 0;
      *a2 = 5;
      goto LABEL_10;
    }
  }

  else if (!a1)
  {
    v9 = 0;
    goto LABEL_10;
  }

  v10 = a1;
  [v10 setQueue:v7];
  v21 = 0;
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __dyld_process_register_for_image_notifications_block_invoke;
  v19 = &unk_1E7A264A8;
  v20 = v8;
  v11 = [v10 registerChangeNotificationsWithError:&v21 handler:&v16];
  v12 = v21;
  v13 = v12;
  if (v12)
  {
    KernReturn = extractKernReturn(v12);
    v9 = 0;
    if (a2)
    {
      *a2 = KernReturn;
    }
  }

  else
  {
    v9 = [v11 value];
  }

LABEL_10:
  return v9;
}

uint64_t dyld_process_register_for_event_notification(void *a1, _DWORD *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  if (a2)
  {
    *a2 = 0;
    if (!a1)
    {
      v11 = 0;
      *a2 = 5;
      goto LABEL_10;
    }
  }

  else if (!a1)
  {
    v11 = 0;
    goto LABEL_10;
  }

  v12 = a1;
  [v12 setQueue:v9];
  v18 = 0;
  v13 = [v12 registerForEvent:a3 error:&v18 handler:v10];
  v14 = v18;
  v15 = v14;
  if (v14)
  {
    KernReturn = extractKernReturn(v14);
    v11 = 0;
    if (a2)
    {
      *a2 = KernReturn;
    }
  }

  else
  {
    v11 = [v13 value];
  }

LABEL_10:
  return v11;
}

void dyld_process_unregister_for_notification(void *a1, uint64_t a2)
{
  v4 = a1;
  v3 = [[_DYEventHandlerToken alloc] initWithValue:a2];
  [v4 unregisterForEvent:v3];
}

atomic_uint *_dyld_process_info_notify(uint64_t a1, void *a2, void *a3, void *a4, kern_return_t *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v16 = 0;
  if (a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = &v16;
  }

  *v12 = 0;
  v13 = malloc_type_malloc(0x20uLL, 0x108004055799E83uLL);
  v14 = v13;
  if (!v13)
  {
    goto LABEL_8;
  }

  dyld_process_info_notify_base::dyld_process_info_notify_base(v13, a1, v9, v10, v11, v12);
  if (!*v12)
  {
    if (*v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = 0;
    *v12 = 5;
    goto LABEL_9;
  }

  dyld_process_info_notify_base::decrementRefCount(v14);
  v14 = 0;
LABEL_9:

  return v14;
}

void dyld_process_info_notify_base::decrementRefCount(atomic_uint *this)
{
  if (!atomic_fetch_add(this + 7, 0xFFFFFFFF))
  {
    dyld_process_info_notify_base::~dyld_process_info_notify_base(this);

    free(v2);
  }
}

void dyld_process_info_notify_base::registerNotifyMain(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*a1 registerForEvent:1 error:0 handler:?];
  v4 = *(a1 + 16);
  *(a1 + 16) = v3;
}

uint64_t dyld_process_info_notify_base::dyld_process_info_notify_base(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, kern_return_t *a6)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  *(a1 + 28) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  if (a6)
  {
    *a6 = 0;
  }

  v33 = 0;
  v14 = [[_DYProcess alloc] initWithTask:a2 queue:v11 error:&v33];
  v15 = v33;
  v16 = *a1;
  *a1 = v14;

  if (v15)
  {
    KernReturn = extractKernReturn(v15);
    if (a6)
    {
      *a6 = KernReturn;
    }
  }

  else
  {
    if (v12)
    {
      v18 = *a1;
      v32 = 0;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = ___ZN29dyld_process_info_notify_baseC2EjPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvbyyPKhPKcEU13block_pointerFvvEPi_block_invoke;
      v29[3] = &unk_1E7A264D0;
      v31 = a1;
      v30 = v12;
      v19 = [v18 registerChangeNotificationsWithError:&v32 handler:v29];
      v15 = v32;
      v20 = *(a1 + 8);
      *(a1 + 8) = v19;

      *(a1 + 24) = 1;
      if (!v13)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v15 = 0;
      if (!v13)
      {
        goto LABEL_13;
      }
    }

    x = 0;
    v21 = pid_for_task(a2, &x);
    if (a6)
    {
      *a6 = v21;
    }

    v22 = dispatch_source_create(MEMORY[0x1E69E96F0], x, 0x80000000uLL, v11);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = ___ZN29dyld_process_info_notify_baseC2EjPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvbyyPKhPKcEU13block_pointerFvvEPi_block_invoke_2;
    handler[3] = &unk_1E7A264F8;
    v26 = v22;
    v27 = v13;
    v23 = v22;
    dispatch_source_set_event_handler(v23, handler);
    dispatch_resume(v23);
  }

LABEL_13:

  return a1;
}

void ___ZN29dyld_process_info_notify_baseC2EjPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvbyyPKhPKcEU13block_pointerFvvEPi_block_invoke(uint64_t a1, void *a2, int a3)
{
  v26[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  v7 = *(a1 + 40);
  if (*(v7 + 24) == 1)
  {
    v26[0] = 0;
    v26[1] = 0;
    v8 = [v5 uuid];

    if (v8)
    {
      v9 = [v6 uuid];
      [v9 getUUIDBytes:v26];
    }

    v10 = *v7;
    v24 = 0;
    v11 = [v10 getCurrentSnapshotAndReturnError:&v24];
    v12 = v24;
    v13 = v12;
    if (v11)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      v15 = [v6 filePath];
      v16 = v15;
      v17 = [v15 UTF8String];

      v18 = [v6 sharedCache];
      LOBYTE(v15) = v18 == 0;

      if ((v15 & 1) == 0)
      {
        v19 = [v6 installname];
        v20 = v19;
        v17 = [v19 UTF8String];
      }

      if (a3)
      {
        v21 = "Load";
      }

      else
      {
        v21 = "Unload";
      }

      if (v17)
      {
        v22 = v17;
      }

      else
      {
        v22 = "(null)";
      }

      snprintf(__str, 0x400uLL, "Notifier (%s):\n\tPath: %s\n\tAddress: 0x%llx\n\tTimestamp: %llu\n", v21, v22, [v6 address], objc_msgSend(v11, "timestamp"));
      qword_1EB5DD8E8 = __str;
      (*(*(a1 + 32) + 16))(*(a1 + 32), a3 ^ 1u, [v11 timestamp], objc_msgSend(v6, "address"), v26, v17);
      qword_1EB5DD8E8 = 0;
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void ___ZN29dyld_process_info_notify_baseC2EjPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvbyyPKhPKcEU13block_pointerFvvEPi_block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  dispatch_source_cancel(v2);
}

void dyld_process_info_notify_base::~dyld_process_info_notify_base(dyld_process_info_notify_base *this)
{
  v2 = *this;
  if (v2)
  {
    if (*(this + 1))
    {
      [v2 unregisterForEvent:?];
    }

    if (*(this + 2))
    {
      [*this unregisterForEvent:?];
    }
  }
}

void *PropertyList::Integer::Integer(void *result, uint64_t a2, uint64_t a3)
{
  *result = &unk_1F240C698;
  result[1] = 0xFFFFFFFFFFFFFFELL;
  result[2] = a3;
  return result;
}

void PropertyList::Integer::emit(PropertyList::Integer *this, unsigned __int8 a2, ByteStream *a3)
{
  v4 = *(this + 2);
  v5 = 1;
  while (v4 << (v4 >> 60 == 0) >> (8 * (v5 & 0x1F)))
  {
    v6 = v5;
    v5 *= 2;
    if (v6 >= 4)
    {
      v5 = 8;
      break;
    }
  }

  lsl::Vector<std::byte>::reserve(a3, *(a3 + 2) + 1);
  v7 = *(a3 + 1);
  v8 = *(a3 + 2);
  *(a3 + 2) = v8 + 1;
  *(v7 + v8) = __clz(__rbit32(v5)) | 0x10;

  ByteStream::push_back(a3, v5, v4);
}

char *PropertyList::Data::emit(PropertyList::Data *this, unsigned __int8 a2, ByteStream *a3)
{
  v5 = *(this + 4);
  lsl::Vector<std::byte>::reserve(a3, *(a3 + 2) + 1);
  v7 = *(a3 + 1);
  v8 = *(a3 + 2);
  *(a3 + 2) = v8 + 1;
  if (v5 > 0xE)
  {
    *(v7 + v8) = 79;
  }

  else
  {
    *(v7 + v8) = v5 | 0x40;
  }

  return std::__copy_impl::operator()[abi:nn200100]<std::byte *,std::byte *,std::back_insert_iterator<ByteStream>>(&v10, *(this + 3), (*(this + 3) + *(this + 4)), a3);
}

void anonymous namespace::emitUnsignedPlistEncodedInteger(unint64_t this, ByteStream *a2, ByteStream *a3)
{
  v5 = 1;
  while (this >> (8 * (v5 & 0x1F)))
  {
    v6 = v5;
    v5 *= 2;
    if (v6 >= 4)
    {
      v5 = 8;
      break;
    }
  }

  lsl::Vector<std::byte>::reserve(a2, *(a2 + 2) + 1);
  v7 = *(a2 + 1);
  v8 = *(a2 + 2);
  *(a2 + 2) = v8 + 1;
  *(v7 + v8) = __clz(__rbit32(v5)) | 0x10;

  ByteStream::push_back(a2, v5, this);
}

uint64_t PropertyList::Data::operator<=>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a2 + 32);
  if (v3 < v4)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 1;
  }

  if (v3 == v4)
  {
    v6 = memcmp(*(a1 + 24), *(a2 + 24), v3);
    if (v6 < 0)
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }

    if (v6)
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t lsl::Vector<std::byte>::insert<std::__wrap_iter<std::byte*>>(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  v7 = a2 - *(a1 + 8);
  v8 = a4 - a3;
  lsl::Vector<std::byte>::reserve(a1, *(a1 + 16) + a4 - a3);
  v9 = *(a1 + 16);
  if (v9 != v7)
  {
    memmove((*(a1 + 8) + v8 + v7), (*(a1 + 8) + v7), v9 - v7);
  }

  if (a4 != a3)
  {
    memmove((*(a1 + 8) + v7), a3, v8);
  }

  v10 = *(a1 + 8);
  *(a1 + 16) += v8;
  return v10 + v7;
}

uint64_t PropertyList::String::emitUnicode(PropertyList::String *this, unsigned __int8 a2, unint64_t a3, ByteStream *a4)
{
  if (!a3)
  {
    return 0;
  }

  v7 = 0;
  while ((*(*(this + 2) + v7) & 0x80000000) == 0)
  {
    if (a3 == ++v7)
    {
      return 0;
    }
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  LODWORD(v12) = 0;
  v37 = *a4;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  do
  {
    v13 = *(this + 2);
    v14 = (v13 + v11);
    v15 = *v14;
    if ((*v14 & 0x80000000) == 0)
    {
      v16 = v10 + 1;
LABEL_18:
      lsl::Vector<unsigned short>::reserve(&v37, v16);
      v9 = v38;
      v20 = v39;
      v10 = ++v39;
      v38[v20] = v15;
      goto LABEL_19;
    }

    if ((v15 & 0xE0) == 0xC0)
    {
      v12 = v12 + 1;
      if (v12 >= a3)
      {
        goto LABEL_29;
      }

      v17 = *(v13 + v12);
      if ((v17 & 0xC0) != 0x80)
      {
        goto LABEL_29;
      }

      v16 = v10 + 1;
      LOWORD(v15) = v17 & 0x3F | ((v15 & 0x1F) << 6);
      goto LABEL_18;
    }

    if ((v15 & 0xF0) == 0xE0)
    {
      v12 = v12 + 2;
      if (v12 >= a3 || (v18 = v14[1], (v18 & 0xC0) != 0x80) || (v19 = *(v13 + v12), (v19 & 0xC0) != 0x80))
      {
LABEL_29:
        v8 = 0;
        if (!v9)
        {
          return v8;
        }

        goto LABEL_37;
      }

      LOWORD(v15) = (v15 << 12) | ((v18 & 0x3F) << 6) | v19 & 0x3F;
      v16 = v10 + 1;
      goto LABEL_18;
    }

    if ((v15 & 0xF8) == 0xF0)
    {
      v21 = v12 + 3;
      if (v21 >= a3)
      {
        goto LABEL_29;
      }

      v8 = 0;
      v22 = v14[1];
      if ((v22 & 0xC0) != 0x80)
      {
        goto LABEL_36;
      }

      v23 = v14[2];
      if ((v23 & 0xC0) != 0x80)
      {
        goto LABEL_36;
      }

      v24 = *(v13 + v21);
      if ((v24 & 0xC0) != 0x80)
      {
        goto LABEL_36;
      }

      v25 = (((((v22 & 0x3F) << 12) | (v15 << 18) | (((v23 >> 4) & 3) << 10)) + 983040) >> 10) & 0x3FF | 0xD800;
      LOWORD(v15) = v24 & 0x3F | ((v23 & 0xF) << 6) | 0xDC00;
      lsl::Vector<unsigned short>::reserve(&v37, v10 + 1);
      v26 = v39++;
      v38[v26] = v25;
      v16 = v26 + 2;
      LODWORD(v12) = v21;
      goto LABEL_18;
    }

LABEL_19:
    LODWORD(v12) = v12 + 1;
    v11 = v12;
  }

  while (v12 < a3);
  if (v10 > 0xE)
  {
    lsl::Vector<std::byte>::reserve(a4, *(a4 + 2) + 1);
    v30 = *(a4 + 1);
    v31 = *(a4 + 2);
    *(a4 + 2) = v31 + 1;
    *(v30 + v31) = 111;
    v36[0] = &unk_1F240C698;
    v36[1] = 0xFFFFFFFFFFFFFFELL;
    v36[2] = v39;
    PropertyList::Integer::emit(v36, 0, a4);
  }

  else
  {
    v27 = v10 | 0x60;
    lsl::Vector<std::byte>::reserve(a4, *(a4 + 2) + 1);
    v28 = *(a4 + 1);
    v29 = *(a4 + 2);
    *(a4 + 2) = v29 + 1;
    *(v28 + v29) = v27;
  }

  v32 = v38;
  if (v39)
  {
    v33 = 2 * v39;
    do
    {
      v34 = *v32++;
      ByteStream::push_back<unsigned short>(a4, v34);
      v33 -= 2;
    }

    while (v33);
    v8 = 1;
    v9 = v38;
LABEL_36:
    if (!v9)
    {
      return v8;
    }

LABEL_37:
    lsl::Vector<unsigned short>::resize(&v37, 0);
    return v8;
  }

  v8 = 1;
  if (v38)
  {
    goto LABEL_37;
  }

  return v8;
}

char *ByteStream::push_back<unsigned short>(uint64_t a1, __int16 a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v3 = __rev16(a2);
  }

  return std::__copy_impl::operator()[abi:nn200100]<std::byte *,std::byte *,std::back_insert_iterator<lsl::Vector<std::byte>>>(&v5, &v3, &v4, a1);
}

uint64_t PropertyList::String::emit(const char **this, unsigned __int8 a2, ByteStream *a3)
{
  v5 = strlen(this[2]);
  result = PropertyList::String::emitUnicode(this, 0, v5, a3);
  if ((result & 1) == 0)
  {
    lsl::Vector<std::byte>::reserve(a3, *(a3 + 2) + 1);
    v7 = *(a3 + 1);
    v8 = *(a3 + 2);
    *(a3 + 2) = v8 + 1;
    if (v5 > 0xE)
    {
      *(v7 + v8) = 95;
      v9[0] = &unk_1F240C698;
      v9[1] = 0xFFFFFFFFFFFFFFELL;
      v9[2] = v5;
      PropertyList::Integer::emit(v9, 0, a3);
    }

    else
    {
      *(v7 + v8) = v5 | 0x50;
    }

    return std::__copy_impl::operator()[abi:nn200100]<std::byte *,std::byte *,std::back_insert_iterator<ByteStream>>(v9, this[2], &this[2][v5], a3);
  }

  return result;
}

void PropertyList::String::deallocate(void **this, void *a2)
{
  if ((this[1] & 0x8000000000000000) == 0)
  {
    lsl::Allocator::freeObject(this[2], a2);
    this[2] = 0;
  }
}

void *PropertyList::String::String(void *a1, lsl::Allocator *this, const void *a3, size_t a4)
{
  *a1 = &unk_1F240C6D8;
  a1[1] = 0x7FFFFFFFFFFFFFELL;
  v7 = lsl::Allocator::malloc(this, a4 + 1);
  memcpy(v7, a3, a4);
  *(v7 + a4) = 0;
  a1[2] = v7;
  return a1;
}

void *PropertyList::Array::Array(void *result, uint64_t a2)
{
  *result = &unk_1F240C6F8;
  result[1] = 0x17FFFFFFFFFFFFFELL;
  result[2] = a2;
  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  return result;
}

void PropertyList::Array::emit(PropertyList::Array *this, int a2, ByteStream *a3)
{
  v6 = *(this + 4);
  if (v6 >= 0xF)
  {
    lsl::Vector<std::byte>::reserve(a3, *(a3 + 2) + 1);
    v9 = *(a3 + 1);
    v10 = *(a3 + 2);
    *(a3 + 2) = v10 + 1;
    *(v9 + v10) = -81;
  }

  else
  {
    lsl::Vector<std::byte>::reserve(a3, *(a3 + 2) + 1);
    v7 = *(a3 + 1);
    v8 = *(a3 + 2);
    *(a3 + 2) = v8 + 1;
    *(v7 + v8) = v6 | 0xA0;
    if (!v6)
    {
      return;
    }
  }

  for (i = 0; i != v6; ++i)
  {
    ByteStream::push_back(a3, a2, *(*(*(this + 3) + 8 * i) + 8) & 0x7FFFFFFFFFFFFFFLL);
  }
}

void ByteStream::push_back(ByteStream *this, int a2, unint64_t a3)
{
  v3 = a3;
  if (a2 > 3)
  {
    if (a2 == 4)
    {

      ByteStream::push_back<unsigned int>(this, a3);
    }

    else if (a2 == 8)
    {

      ByteStream::push_back<unsigned long long>(this, a3);
    }
  }

  else if (a2 == 1)
  {
    lsl::Vector<std::byte>::reserve(this, *(this + 2) + 1);
    v5 = *(this + 1);
    v6 = *(this + 2);
    *(this + 2) = v6 + 1;
    *(v5 + v6) = v3;
  }

  else if (a2 == 2)
  {

    ByteStream::push_back<unsigned short>(this, a3);
  }
}

void *PropertyList::Array::deallocate(void *this)
{
  if ((this[1] & 0x8000000000000000) == 0)
  {
    v1 = this[4];
    if (v1)
    {
      v2 = this[3];
      v3 = 8 * v1;
      do
      {
        v4 = *v2++;
        this = (*(*v4 + 8))(v4);
        v3 -= 8;
      }

      while (v3);
    }
  }

  return this;
}

void *PropertyList::Dictionary::Dictionary(void *result, uint64_t a2)
{
  *result = &unk_1F240C718;
  result[1] = 0x1FFFFFFFFFFFFFFELL;
  result[2] = a2;
  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  result[6] = a2;
  result[7] = 0;
  result[8] = 0;
  result[9] = 0;
  return result;
}

void PropertyList::Dictionary::emit(PropertyList::Dictionary *this, int a2, ByteStream *a3)
{
  v6 = *(this + 4);
  if (v6 >= 0xF)
  {
    lsl::Vector<std::byte>::reserve(a3, *(a3 + 2) + 1);
    v9 = *(a3 + 1);
    v10 = *(a3 + 2);
    *(a3 + 2) = v10 + 1;
    *(v9 + v10) = -33;
    v13[0] = &unk_1F240C698;
    v13[1] = 0xFFFFFFFFFFFFFFELL;
    v13[2] = v6;
    PropertyList::Integer::emit(v13, 0, a3);
  }

  else
  {
    lsl::Vector<std::byte>::reserve(a3, *(a3 + 2) + 1);
    v7 = *(a3 + 1);
    v8 = *(a3 + 2);
    *(a3 + 2) = v8 + 1;
    *(v7 + v8) = v6 | 0xD0;
    if (!v6)
    {
      return;
    }
  }

  for (i = 0; i != v6; ++i)
  {
    ByteStream::push_back(a3, a2, *(*(*(this + 3) + 8 * i) + 8) & 0x7FFFFFFFFFFFFFFLL);
  }

  for (j = 0; j != v6; ++j)
  {
    ByteStream::push_back(a3, a2, *(*(*(this + 7) + 8 * j) + 8) & 0x7FFFFFFFFFFFFFFLL);
  }
}

void *PropertyList::Dictionary::deallocate(void *this)
{
  if ((this[1] & 0x8000000000000000) == 0)
  {
    v1 = this;
    v2 = this[4];
    if (v2)
    {
      v3 = this[3];
      v4 = 8 * v2;
      do
      {
        v5 = *v3++;
        this = (*(*v5 + 8))(v5);
        v4 -= 8;
      }

      while (v4);
    }

    v6 = v1[8];
    if (v6)
    {
      v7 = v1[7];
      v8 = 8 * v6;
      do
      {
        v9 = *v7++;
        this = (*(*v9 + 8))(v9);
        v8 -= 8;
      }

      while (v8);
    }
  }

  return this;
}

PropertyList::UUID *PropertyList::UUID::UUID(PropertyList::UUID *this, lsl::Allocator *a2, unsigned __int8 *a3)
{
  *this = &unk_1F240C6B8;
  *(this + 1) = 0x27FFFFFFFFFFFFFELL;
  *(this + 2) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  lsl::Vector<std::byte>::insert<std::__wrap_iter<std::byte*>>(this + 16, 0, a3, a3 + 16);
  *this = &unk_1F240C738;
  return this;
}

void *PropertyList::PropertyList(void *result, uint64_t a2)
{
  result[2] = 0x1FFFFFFFFFFFFFFELL;
  result[3] = a2;
  *result = a2;
  result[1] = &unk_1F240C718;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  result[7] = a2;
  result[8] = 0;
  result[9] = 0;
  result[10] = 0;
  return result;
}

void PropertyList::encode(PropertyList *this, ByteStream *a2)
{
  v98 = *a2;
  v99 = 0;
  v100 = 0;
  v101 = 0;
  v4 = this + 8;
  v94 = *this;
  v95 = 0;
  v96 = 0;
  v97 = 0;
  v90 = v94;
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v86 = v94;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v82 = v94;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v79 = v94;
  v80 = 0;
  v81 = 0;
  lsl::Vector<PropertyList::Object *>::reserve(&v79, 1uLL);
  v5 = v80;
  v6 = __CFADD__(v80, 1);
  v7 = ++v80;
  *(*(&v79 + 1) + 8 * v5) = v4;
  if (!v6)
  {
    do
    {
      v75 = *this;
      v77 = 0;
      v78 = 0;
      v76 = 0;
      v8 = *(&v79 + 1);
      v9 = 8 * v7;
      do
      {
        v10 = *v8;
        v11 = *(*v8 + 8);
        if ((v11 & 0x4000000000000000) != 0)
        {
          goto LABEL_16;
        }

        *(v10 + 8) = v11 | 0x4000000000000000;
        v12 = (v11 >> 59) & 7;
        if (v12 <= 1)
        {
          if (v12)
          {
            lsl::Vector<PropertyList::Object *>::reserve(&v90, v92 + 1);
            v13 = v91;
            v14 = v92++;
          }

          else
          {
            lsl::Vector<PropertyList::Object *>::reserve(&v94, v96 + 1);
            v13 = v95;
            v14 = v96++;
          }
        }

        else
        {
          if (v12 == 2)
          {
            lsl::Vector<PropertyList::Object *>::reserve(&v82, v84 + 1);
            v15 = v84++;
            v83[v15] = v10;
            v16 = *(v10 + 24);
            v17 = *(v10 + 32);
LABEL_13:
            std::__copy_impl::operator()[abi:nn200100]<PropertyList::Object **,PropertyList::Object **,std::back_insert_iterator<lsl::Vector<PropertyList::Object *>>>(&v102, v16, &v16[v17], &v75);
            goto LABEL_16;
          }

          if (v12 == 3)
          {
            lsl::Vector<PropertyList::Object *>::reserve(&v82, v84 + 1);
            v18 = v84++;
            v83[v18] = v10;
            std::__copy_impl::operator()[abi:nn200100]<PropertyList::Object **,PropertyList::Object **,std::back_insert_iterator<lsl::Vector<PropertyList::Object *>>>(&v102, *(v10 + 24), (*(v10 + 24) + 8 * *(v10 + 32)), &v75);
            v16 = *(v10 + 56);
            v17 = *(v10 + 64);
            goto LABEL_13;
          }

          if (v12 != 4)
          {
            goto LABEL_16;
          }

          lsl::Vector<PropertyList::Object *>::reserve(&v86, v88 + 1);
          v13 = v87;
          v14 = v88++;
        }

        *&v13[8 * v14] = v10;
LABEL_16:
        ++v8;
        v9 -= 8;
      }

      while (v9);
      lsl::Vector<PropertyList::Object *>::operator=(&v79, &v75);
      if (v76)
      {
        lsl::Vector<PropertyList::Object *>::resize(&v75, 0);
      }

      v7 = v80;
    }

    while (v80);
  }

  *(a2 + 8) = 1;
  lsl::Vector<std::byte>::insert<std::__wrap_iter<std::byte*>>(a2, *(a2 + 1) + *(a2 + 2), "bplist00", "");
  if (v96)
  {
    if (v96)
    {
      v19 = 0;
      v20 = 0;
      v21 = v100;
      do
      {
        v22 = *&v95[8 * v19];
        if (v20 && !strcmp(*(v22 + 16), *(v20 + 16)))
        {
          v25 = *(v20 + 8);
          (*(*v22 + 8))(v22);
          *(v22 + 8) = *(v22 + 8) & 0x7800000000000000 | v25 & 0x7FFFFFFFFFFFFFFLL | 0x8000000000000000;
        }

        else
        {
          *(v22 + 8) = *(v22 + 8) & 0xF800000000000000 | v21 & 0x7FFFFFFFFFFFFFFLL;
          v20 = *&v95[8 * v19];
          v23 = *(a2 + 2);
          lsl::Vector<unsigned long long>::reserve(&v98, v100 + 1);
          v24 = v100++;
          *(v99 + 8 * v24) = v23;
          (**v20)(v20, 0, a2);
          ++v21;
        }

        ++v19;
      }

      while (v96 > v19);
    }
  }

  if (v92)
  {
    if (v92)
    {
      v26 = 0;
      v27 = 0;
      v28 = v100;
      do
      {
        v29 = *&v91[8 * v26];
        if (v27 && v29[2] == *(v27 + 16))
        {
          v30 = *(v27 + 8);
          (*(*v29 + 8))(*&v91[8 * v26]);
          v29[1] = v29[1] & 0x7800000000000000 | v30 & 0x7FFFFFFFFFFFFFFLL | 0x8000000000000000;
        }

        else
        {
          v29[1] = v29[1] & 0xF800000000000000 | v28 & 0x7FFFFFFFFFFFFFFLL;
          v27 = *&v91[8 * v26];
          v31 = *(a2 + 2);
          lsl::Vector<unsigned long long>::reserve(&v98, v100 + 1);
          v32 = v100++;
          *(v99 + 8 * v32) = v31;
          (**v27)(v27, 0, a2);
          ++v28;
        }

        ++v26;
      }

      while (v92 > v26);
    }
  }

  if (v88)
  {
    if (v88)
    {
      v33 = 0;
      v34 = 0;
      v35 = v100;
      do
      {
        v36 = *&v87[8 * v33];
        if (v34 && !PropertyList::Data::operator<=>(*&v87[8 * v33], v34))
        {
          v39 = *(v34 + 8);
          (*(*v36 + 8))(v36);
          v36[1] = v36[1] & 0x7800000000000000 | v39 & 0x7FFFFFFFFFFFFFFLL | 0x8000000000000000;
        }

        else
        {
          v36[1] = v36[1] & 0xF800000000000000 | v35 & 0x7FFFFFFFFFFFFFFLL;
          v34 = *&v87[8 * v33];
          v37 = *(a2 + 2);
          lsl::Vector<unsigned long long>::reserve(&v98, v100 + 1);
          v38 = v100++;
          *(v99 + 8 * v38) = v37;
          (**v34)(v34, 0, a2);
          ++v35;
        }

        ++v33;
      }

      while (v88 > v33);
    }
  }

  v40 = v100;
  v41 = v84 + v100;
  v42 = 1;
  while (v41 >> (8 * (v42 & 0x1Fu)))
  {
    v43 = v42;
    v42 *= 2;
    if (v43 >= 4)
    {
      v42 = 8;
      break;
    }
  }

  if (v84)
  {
    v44 = v83;
    v45 = 8 * v84;
    v46 = v100;
    do
    {
      v47 = *v44++;
      v48 = *(v47 + 8) & 0xF800000000000000 | v46++ & 0x7FFFFFFFFFFFFFFLL;
      *(v47 + 8) = v48;
      v45 -= 8;
    }

    while (v45);
    if (v84)
    {
      v49 = v83;
      v50 = 8 * v84;
      do
      {
        v51 = *v49++;
        v52 = *(a2 + 2);
        lsl::Vector<unsigned long long>::reserve(&v98, v100 + 1);
        v53 = v100++;
        *(v99 + 8 * v53) = v52;
        (**v51)(v51, v42, a2);
        v50 -= 8;
      }

      while (v50);
    }
  }

  v54 = *(a2 + 2);
  v55 = 1;
  while (v54 >> (8 * (v55 & 0x1Fu)))
  {
    v56 = v55;
    v55 *= 2;
    if (v56 >= 4)
    {
      v55 = 8;
      break;
    }
  }

  v57 = *(a2 + 2);
  if (v100)
  {
    for (i = 0; i < v100; ++i)
    {
      ByteStream::push_back(a2, v55, *(v99 + 8 * i));
    }

    v57 = *(a2 + 2);
  }

  lsl::Vector<std::byte>::reserve(a2, v57 + 1);
  v59 = *(a2 + 1);
  v60 = *(a2 + 2);
  *(a2 + 2) = v60 + 1;
  *(v59 + v60) = 0;
  lsl::Vector<std::byte>::reserve(a2, *(a2 + 2) + 1);
  v61 = *(a2 + 1);
  v62 = *(a2 + 2);
  *(a2 + 2) = v62 + 1;
  *(v61 + v62) = 0;
  lsl::Vector<std::byte>::reserve(a2, *(a2 + 2) + 1);
  v63 = *(a2 + 1);
  v64 = *(a2 + 2);
  *(a2 + 2) = v64 + 1;
  *(v63 + v64) = 0;
  lsl::Vector<std::byte>::reserve(a2, *(a2 + 2) + 1);
  v65 = *(a2 + 1);
  v66 = *(a2 + 2);
  *(a2 + 2) = v66 + 1;
  *(v65 + v66) = 0;
  lsl::Vector<std::byte>::reserve(a2, *(a2 + 2) + 1);
  v67 = *(a2 + 1);
  v68 = *(a2 + 2);
  *(a2 + 2) = v68 + 1;
  *(v67 + v68) = 0;
  lsl::Vector<std::byte>::reserve(a2, *(a2 + 2) + 1);
  v69 = *(a2 + 1);
  v70 = *(a2 + 2);
  *(a2 + 2) = v70 + 1;
  *(v69 + v70) = 0;
  lsl::Vector<std::byte>::reserve(a2, *(a2 + 2) + 1);
  v71 = *(a2 + 1);
  v72 = *(a2 + 2);
  *(a2 + 2) = v72 + 1;
  *(v71 + v72) = v55;
  lsl::Vector<std::byte>::reserve(a2, *(a2 + 2) + 1);
  v73 = *(a2 + 1);
  v74 = *(a2 + 2);
  *(a2 + 2) = v74 + 1;
  *(v73 + v74) = v42;
  ByteStream::push_back<unsigned long long>(a2, v41);
  ByteStream::push_back<unsigned long long>(a2, v40);
  ByteStream::push_back<unsigned long long>(a2, v54);
  if (*(&v79 + 1))
  {
    lsl::Vector<PropertyList::Object *>::resize(&v79, 0);
  }

  if (v83)
  {
    lsl::Vector<PropertyList::Object *>::resize(&v82, 0);
  }

  if (v87)
  {
    lsl::Vector<PropertyList::Object *>::resize(&v86, 0);
  }

  if (v91)
  {
    lsl::Vector<PropertyList::Object *>::resize(&v90, 0);
  }

  if (v95)
  {
    lsl::Vector<PropertyList::Object *>::resize(&v94, 0);
  }

  if (v99)
  {
    lsl::Vector<unsigned long long>::resize(&v98, 0);
  }
}

__int128 *lsl::Vector<PropertyList::Object *>::operator=(__int128 *a1, uint64_t *a2)
{
  lsl::Vector<PropertyList::Object *>::Vector(&v7, a2);
  if (&v7 == a1)
  {
    if (!*(&v7 + 1))
    {
      return a1;
    }

    goto LABEL_3;
  }

  v3 = v8;
  v8 = a1[1];
  v5 = *a1;
  v4 = *(a1 + 1);
  *a1 = v7;
  a1[1] = v3;
  *&v7 = v5;
  *(&v7 + 1) = v4;
  if (v4)
  {
LABEL_3:
    lsl::Vector<PropertyList::Object *>::resize(&v7, 0);
  }

  return a1;
}

char *ByteStream::push_back<unsigned long long>(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v3 = bswap64(a2);
  }

  return std::__copy_impl::operator()[abi:nn200100]<std::byte *,std::byte *,std::back_insert_iterator<lsl::Vector<std::byte>>>(&v5, &v3, v4, a1);
}

char *std::__copy_impl::operator()[abi:nn200100]<std::byte *,std::byte *,std::back_insert_iterator<ByteStream>>(uint64_t a1, char *a2, char *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5++;
      lsl::Vector<std::byte>::reserve(a4, *(a4 + 16) + 1);
      v8 = *(a4 + 8);
      v9 = *(a4 + 16);
      *(a4 + 16) = v9 + 1;
      *(v8 + v9) = v7;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

char *ByteStream::push_back<unsigned int>(uint64_t a1, unsigned int a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v3 = bswap32(a2);
  }

  return std::__copy_impl::operator()[abi:nn200100]<std::byte *,std::byte *,std::back_insert_iterator<lsl::Vector<std::byte>>>(&v5, &v3, v4, a1);
}

char *std::__copy_impl::operator()[abi:nn200100]<std::byte *,std::byte *,std::back_insert_iterator<lsl::Vector<std::byte>>>(uint64_t a1, char *a2, char *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      lsl::Vector<std::byte>::reserve(a4, *(a4 + 16) + 1);
      v7 = *v5++;
      v8 = *(a4 + 8);
      v9 = *(a4 + 16);
      *(a4 + 16) = v9 + 1;
      *(v8 + v9) = v7;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t *std::__copy_impl::operator()[abi:nn200100]<PropertyList::Object **,PropertyList::Object **,std::back_insert_iterator<lsl::Vector<PropertyList::Object *>>>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = *(a4 + 16);
    do
    {
      lsl::Vector<PropertyList::Object *>::reserve(a4, v7 + 1);
      v8 = *v5++;
      v9 = *(a4 + 8);
      v10 = *(a4 + 16);
      v7 = v10 + 1;
      *(a4 + 16) = v10 + 1;
      *(v9 + 8 * v10) = v8;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void lsl::Vector<unsigned short>::resize(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24) >= a2)
  {
    if (a2)
    {
      *(a1 + 16) = a2;
      *(a1 + 24) = a2;
      v4 = *a1;
      v5 = *(a1 + 8);

      lsl::Allocator::realloc(v4, v5);
    }

    else
    {
      v7 = (a1 + 8);
      v6 = *(a1 + 8);
      if (v6)
      {
        lsl::Allocator::free(*a1, v6);
      }

      *v7 = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
    }
  }

  else
  {
    lsl::Vector<unsigned short>::reserve(a1, a2);
    *(a1 + 16) = a2;
    *(a1 + 24) = a2;
  }
}

void lsl::Vector<unsigned short>::reserve(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24) < a2)
  {
    if (a2 >= 0x10)
    {
      v3 = (a2 - 1) | ((a2 - 1) >> 1) | (((a2 - 1) | ((a2 - 1) >> 1)) >> 2);
      v4 = v3 | (v3 >> 4) | ((v3 | (v3 >> 4)) >> 8);
      v2 = (v4 | (v4 >> 16) | ((v4 | (v4 >> 16)) >> 32)) + 1;
    }

    else
    {
      v2 = 16;
    }

    lsl::Vector<unsigned short>::reserveExact(a1, v2);
  }
}

void lsl::Vector<unsigned short>::reserveExact(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24) < a2)
  {
    if (lsl::Allocator::realloc(*a1, *(a1 + 8)))
    {
LABEL_12:
      *(a1 + 24) = a2;
      return;
    }

    v4 = lsl::Allocator::aligned_alloc(*a1, 0x10uLL, 2 * a2);
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7)
    {
      v8 = v4;
      v9 = *(a1 + 8);
      do
      {
        v10 = *v9++;
        *v8++ = v10;
        --v7;
      }

      while (v7);
    }

    else if (!v6)
    {
      v11 = 0;
      goto LABEL_9;
    }

    lsl::Allocator::free(*a1, v6);
    v11 = *(a1 + 16);
LABEL_9:
    if (v11 >= a2)
    {
      v11 = a2;
    }

    *(a1 + 8) = v5;
    *(a1 + 16) = v11;
    goto LABEL_12;
  }
}

void lsl::Vector<unsigned long long>::resize(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24) >= a2)
  {
    if (a2)
    {
      *(a1 + 16) = a2;
      *(a1 + 24) = a2;
      v4 = *a1;
      v5 = *(a1 + 8);

      lsl::Allocator::realloc(v4, v5);
    }

    else
    {
      v7 = (a1 + 8);
      v6 = *(a1 + 8);
      if (v6)
      {
        lsl::Allocator::free(*a1, v6);
      }

      *v7 = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
    }
  }

  else
  {
    lsl::Vector<unsigned long long>::reserve(a1, a2);
    *(a1 + 16) = a2;
    *(a1 + 24) = a2;
  }
}

void lsl::Vector<unsigned long long>::reserve(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24) < a2)
  {
    if (a2 >= 0x10)
    {
      v3 = (a2 - 1) | ((a2 - 1) >> 1) | (((a2 - 1) | ((a2 - 1) >> 1)) >> 2);
      v4 = v3 | (v3 >> 4) | ((v3 | (v3 >> 4)) >> 8);
      v2 = (v4 | (v4 >> 16) | ((v4 | (v4 >> 16)) >> 32)) + 1;
    }

    else
    {
      v2 = 16;
    }

    lsl::Vector<unsigned long long>::reserveExact(a1, v2);
  }
}

void lsl::Vector<unsigned long long>::reserveExact(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24) < a2)
  {
    if (lsl::Allocator::realloc(*a1, *(a1 + 8)))
    {
LABEL_12:
      *(a1 + 24) = a2;
      return;
    }

    v4 = lsl::Allocator::aligned_alloc(*a1, 0x10uLL, 8 * a2);
    v5 = v4;
    v6 = *(a1 + 8);
    if (*(a1 + 16))
    {
      v7 = 0;
      v8 = v4;
      do
      {
        *v8++ = v6[v7++];
      }

      while (*(a1 + 16) > v7);
    }

    else if (!v6)
    {
      v9 = 0;
      goto LABEL_9;
    }

    lsl::Allocator::free(*a1, v6);
    v9 = *(a1 + 16);
LABEL_9:
    if (v9 >= a2)
    {
      v9 = a2;
    }

    *(a1 + 8) = v5;
    *(a1 + 16) = v9;
    goto LABEL_12;
  }
}

uint64_t *lsl::Vector<PropertyList::Object *>::Vector(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  a1[1] = 0;
  v3 = (a1 + 1);
  a1[2] = 0;
  a1[3] = 0;
  if (!v2)
  {
    lsl::Vector<PropertyList::Object *>::Vector();
  }

  lsl::Vector<PropertyList::Object *>::resize(a1, 0);
  lsl::Vector<PropertyList::Object *>::reserve(a1, a2[2]);
  v6 = a2[2];
  a1[2] = v6;
  if (v6)
  {
    memmove(*v3, a2[1], 8 * v6);
  }

  return a1;
}

uint64_t anonymous namespace::quickSort<PropertyList::String **>(uint64_t result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + ((4 * (((a2 - v3) >> 3) + ((a2 - v3) >> 63))) & 0xFFFFFFFFFFFFFFF8));
      v5 = a2;
      v6 = v3;
      while (2)
      {
        v7 = *(v4 + 16);
        while (1)
        {
          v8 = *v6;
          if ((strcmp(*(*v6 + 16), v7) & 0x80000000) == 0)
          {
            break;
          }

          v6 += 8;
          if (v6 == v5)
          {
            goto LABEL_13;
          }
        }

        do
        {
          if (--v5 == v6)
          {
            v5 = v6;
            goto LABEL_13;
          }

          v9 = *v5;
        }

        while ((strcmp(*(*v5 + 16), v7) & 0x80000000) == 0);
        *v6 = v9;
        v6 += 8;
        *v5 = v8;
        if (v5 != v6)
        {
          continue;
        }

        break;
      }

LABEL_13:
      v10 = v5;
      if (v5 != a2)
      {
        v10 = a2;
        v11 = v5;
        while (2)
        {
          v12 = *(v4 + 16);
          while (1)
          {
            v13 = *v11;
            if (strcmp(v12, *(*v11 + 16)) < 0)
            {
              break;
            }

            if (++v11 == v10)
            {
              goto LABEL_24;
            }
          }

          do
          {
            v10 -= 8;
            if (v10 == v11)
            {
              v10 = v11;
              goto LABEL_24;
            }

            v14 = *v10;
          }

          while (strcmp(v12, *(*v10 + 16)) < 0);
          *v11++ = v14;
          *v10 = v13;
          if (v10 != v11)
          {
            continue;
          }

          break;
        }
      }

LABEL_24:
      v3 = v10;
    }

    while (v10 != a2);
  }

  return result;
}

char *anonymous namespace::quickSort<PropertyList::Integer **>(char *result, char *a2)
{
  if (result != a2)
  {
    do
    {
      v3 = *(*&result[(4 * (((a2 - result) >> 3) + ((a2 - result) >> 63))) & 0xFFFFFFFFFFFFFFF8] + 16);
      v4 = a2;
      v5 = result;
      while (2)
      {
        while (1)
        {
          v6 = *v5;
          if (*(*v5 + 16) >= v3)
          {
            break;
          }

          if (++v5 == v4)
          {
            goto LABEL_11;
          }
        }

        do
        {
          if (--v4 == v5)
          {
            v4 = v5;
            goto LABEL_11;
          }
        }

        while (*(*v4 + 16) >= v3);
        *v5++ = *v4;
        *v4 = v6;
        if (v4 != v5)
        {
          continue;
        }

        break;
      }

LABEL_11:
      v7 = v4;
      if (v4 != a2)
      {
        v7 = a2;
        v8 = v4;
        while (2)
        {
          v9 = v8;
          while (1)
          {
            v10 = *v9;
            if (v3 < *(*v9 + 16))
            {
              break;
            }

            if (++v9 == v7)
            {
              goto LABEL_22;
            }
          }

          do
          {
            if (--v7 == v9)
            {
              v7 = v9;
              goto LABEL_22;
            }
          }

          while (v3 < *(*v7 + 16));
          *v9 = *v7;
          v8 = v9 + 1;
          *v7 = v10;
          if (v7 != v9 + 1)
          {
            continue;
          }

          break;
        }

        v7 = v9 + 1;
      }

LABEL_22:
      result = v7;
    }

    while (v7 != a2);
  }

  return result;
}

uint64_t anonymous namespace::quickSort<PropertyList::Data **>(uint64_t result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + ((4 * (a2 - v3 + ((a2 - v3) >> 63))) & 0xFFFFFFFFFFFFFFF8));
      v5 = a2;
      v6 = v3;
      while (2)
      {
        while (1)
        {
          v7 = *v6;
          if ((PropertyList::Data::operator<=>(*v6, v4) & 0x80) == 0)
          {
            break;
          }

          if (++v6 == v5)
          {
            goto LABEL_12;
          }
        }

        do
        {
          if (--v5 == v6)
          {
            v5 = v6;
            goto LABEL_12;
          }

          v8 = *v5;
        }

        while ((PropertyList::Data::operator<=>(*v5, v4) & 0x80) == 0);
        *v6++ = v8;
        *v5 = v7;
        if (v5 != v6)
        {
          continue;
        }

        break;
      }

LABEL_12:
      v9 = v5;
      if (v5 != a2)
      {
        v9 = a2;
        v10 = v5;
        while (2)
        {
          while (1)
          {
            v11 = *v10;
            if ((PropertyList::Data::operator<=>(v4, *v10) & 0x80) != 0)
            {
              break;
            }

            if (++v10 == v9)
            {
              goto LABEL_22;
            }
          }

          do
          {
            if (--v9 == v10)
            {
              v9 = v10;
              goto LABEL_22;
            }

            v12 = *v9;
          }

          while ((PropertyList::Data::operator<=>(v4, *v9) & 0x80) != 0);
          *v10++ = v12;
          *v9 = v11;
          if (v9 != v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_22:
      v3 = v9;
    }

    while (v9 != a2);
  }

  return result;
}

mach_o::Error *mach_o::Error::Error(mach_o::Error *this, const char *a2, ...)
{
  *this = 0;
  *this = _simple_salloc();
  _simple_vsprintf();
  return this;
}

void mach_o::Error::~Error(mach_o::Error *this)
{
  if (*this)
  {
    _simple_sfree();
  }

  *this = 0;
}

_DWORD *mach_o::Header::isMachO(_DWORD *result, unint64_t a2)
{
  if (a2 < 0x1C || !result || *result >> 1 != 2138504551)
  {
    return 0;
  }

  return result;
}

mach_o::Error *mach_o::Header::forEachLoadCommand@<X0>(mach_o::Error *result@<X0>, uint64_t a2@<X1>, mach_o::Error *a3@<X8>)
{
  v4 = result;
  v6 = *result;
  if (*result == -17958193)
  {
    v7 = 32;
  }

  else
  {
    if (v6 != -17958194)
    {
      if ((v6 & 0xFEFFFFFF) == 0xCEFAEDFE)
      {

        return mach_o::Error::Error(a3, "big endian mach-o file");
      }

      else
      {
        v16 = *result;
        v17 = *(result + 1);
        return mach_o::Error::Error(a3, "file does not start with MH_MAGIC[_64]: 0x%08X 0x%08X");
      }
    }

    v7 = 28;
  }

  if (*(result + 3) < 0xDu)
  {
    if (*(result + 4))
    {
      v8 = result + v7;
      v9 = result + v7 + *(result + 5);
      v10 = 1;
      for (i = result + v7; ; i = v13)
      {
        if (i >= v9)
        {
          return mach_o::Error::Error(a3, "malformed load command (%d of %d) at %p with mh=%p, off end of load commands");
        }

        v12 = *(i + 1);
        if (v12 <= 7)
        {
          break;
        }

        v13 = &i[v12];
        if (&i[v12] > v9 || v13 < v8)
        {
          v18 = *(i + 1);
          return mach_o::Error::Error(a3, "malformed load command (%d of %d) at %p with mh=%p, size (0x%X) is too large, load commands end at %p");
        }

        result = (*(a2 + 16))(a2);
        if (++v10 > *(v4 + 4))
        {
          goto LABEL_18;
        }
      }

      return mach_o::Error::Error(a3, "malformed load command (%d of %d) at %p with mh=%p, size (0x%X) too small");
    }

    else
    {
LABEL_18:
      *a3 = 0;
    }
  }

  else
  {
    v15 = *(result + 3);
    return mach_o::Error::Error(a3, "unknown mach-o filetype (%u)");
  }

  return result;
}

uint64_t mach_o::Header::installName(mach_o::Header *this)
{
  v4 = 0;
  v2 = 0x10000;
  v3 = 0x10000;
  if (mach_o::Header::getDylibInstallName(this, &v4, &v3, &v2))
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void mach_o::Header::forEachSection(mach_o::Error *a1, uint64_t a2)
{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x2000000000;
  v4 = 0;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 0x40000000;
  v2[2] = ___ZNK6mach_o6Header14forEachSectionEU13block_pointerFvRKNS0_11SectionInfoERbE_block_invoke;
  v2[3] = &unk_1E7A265C0;
  v2[4] = a2;
  v2[5] = v3;
  mach_o::Header::forEachLoadCommand(a1, v2, v5);
  mach_o::Error::~Error(v5);
  _Block_object_dispose(v3, 8);
}

uint64_t mach_o::Header::getDylibInstallName(mach_o::Error *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZNK6mach_o6Header19getDylibInstallNameEPPKcPNS_9Version32ES5__block_invoke;
  v6[3] = &unk_1E7A26520;
  v6[6] = a4;
  v6[7] = a2;
  v6[4] = &v7;
  v6[5] = a3;
  mach_o::Header::forEachLoadCommand(a1, v6, v11);
  mach_o::Error::~Error(v11);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t ___ZNK6mach_o6Header19getDylibInstallNameEPPKcPNS_9Version32ES5__block_invoke(uint64_t result, _DWORD *a2, _BYTE *a3)
{
  if ((*a2 | 2) == 0xF)
  {
    v3 = *(result + 48);
    **(result + 40) = a2[5];
    *v3 = a2[4];
    **(result + 56) = a2 + a2[2];
    *(*(*(result + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

uint64_t mach_o::Header::getUuid(mach_o::Header *this, unsigned __int8 *a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZNK6mach_o6Header7getUuidEPh_block_invoke;
  v6[3] = &unk_1E7A26548;
  v6[4] = &v7;
  v6[5] = a2;
  mach_o::Header::forEachLoadCommand(this, v6, v11);
  mach_o::Error::~Error(v11);
  v3 = v8;
  if (v8[3])
  {
    v4 = 1;
  }

  else
  {
    bzero(a2, 0x10uLL);
    v4 = *(v3 + 24);
  }

  _Block_object_dispose(&v7, 8);
  return v4 & 1;
}

__n128 ___ZNK6mach_o6Header7getUuidEPh_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*a2 == 27)
  {
    result = *(a2 + 8);
    **(a1 + 40) = result;
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

uint64_t mach_o::Header::preferredLoadAddress(mach_o::Header *this)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZNK6mach_o6Header20preferredLoadAddressEv_block_invoke;
  v3[3] = &unk_1E7A26570;
  v3[4] = &v4;
  mach_o::Header::forEachSegment(this, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void mach_o::Header::forEachSegment(mach_o::Error *a1, uint64_t a2)
{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x2000000000;
  v4 = 0;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 0x40000000;
  v2[2] = ___ZNK6mach_o6Header14forEachSegmentEU13block_pointerFvRKNS0_11SegmentInfoERbE_block_invoke;
  v2[3] = &unk_1E7A26598;
  v2[4] = a2;
  v2[5] = v3;
  mach_o::Header::forEachLoadCommand(a1, v2, v5);
  mach_o::Error::~Error(v5);
  _Block_object_dispose(v3, 8);
}

uint64_t ___ZNK6mach_o6Header20preferredLoadAddressEv_block_invoke(uint64_t result, void *a2, _BYTE *a3)
{
  if (a2[1] == 6 && **a2 == 1163157343 && *(*a2 + 4) == 21592)
  {
    *(*(*(result + 32) + 8) + 24) = a2[2];
    *a3 = 1;
  }

  return result;
}

uint64_t ___ZNK6mach_o6Header14forEachSegmentEU13block_pointerFvRKNS0_11SegmentInfoERbE_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  if (*a2 == 1)
  {
    v11 = strnlen((a2 + 8), 0x10uLL);
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
    *&v14 = v12;
    *(&v14 + 1) = HIDWORD(v12);
    v18 = v14;
    if (v11 >= 0x10)
    {
      v15 = 16;
    }

    else
    {
      v15 = v11;
    }

    v16 = a2 + 8;
    v17 = v15;
    v19 = v13;
    v20 = *(a2 + 52);
    v8 = *(v5 + 32);
    v21 = *(*(*(v5 + 40) + 8) + 24);
    v9 = *(a2 + 40);
    v10 = *(a2 + 44);
  }

  else
  {
    if (*a2 != 25)
    {
      return result;
    }

    v6 = strnlen((a2 + 8), 0x10uLL);
    if (v6 >= 0x10)
    {
      v7 = 16;
    }

    else
    {
      v7 = v6;
    }

    v16 = a2 + 8;
    v17 = v7;
    v18 = *(a2 + 24);
    v19 = vmovn_s64(*(a2 + 40));
    v20 = *(a2 + 68);
    v8 = *(v5 + 32);
    v21 = *(*(*(v5 + 40) + 8) + 24);
    v9 = *(a2 + 56);
    v10 = *(a2 + 60);
  }

  v22 = v9;
  v23 = v10;
  result = (*(v8 + 16))(v8, &v16, a3);
  ++*(*(*(v5 + 40) + 8) + 24);
  return result;
}

size_t ___ZNK6mach_o6Header14forEachSectionEU13block_pointerFvRKNS0_11SectionInfoERbE_block_invoke(size_t result, uint64_t a2, _BYTE *a3)
{
  v5 = result;
  if (*a2 == 1)
  {
    if ((*a3 & 1) == 0)
    {
      v25 = *(a2 + 48);
      if (v25)
      {
        v26 = a2 + 68 * v25 + 56;
        v27 = a2 + 56;
        v28 = a2 + 72;
        do
        {
          v29 = strnlen(v27, 0x10uLL);
          if (v29 >= 0x10)
          {
            v30 = 16;
          }

          else
          {
            v30 = v29;
          }

          v39 = v28 - 16;
          v40 = v30;
          v31 = strnlen((v27 + 16), 0x10uLL);
          if (v31 >= 0x10)
          {
            v32 = 16;
          }

          else
          {
            v32 = v31;
          }

          *&v41 = v28;
          *(&v41 + 1) = v32;
          v33 = *(v5 + 32);
          v42 = *(*(*(v5 + 40) + 8) + 24);
          v43 = *(a2 + 40);
          v35 = *(v27 + 40);
          v34 = *(v27 + 44);
          v44 = *(v27 + 56);
          v45 = v34;
          v36 = *(v27 + 32);
          *&v37 = v36;
          *(&v37 + 1) = HIDWORD(v36);
          v46 = v37;
          v47 = v35;
          *&v38 = *(v27 + 48);
          *(&v38 + 1) = *(v27 + 60);
          v48 = v38;
          result = (*(v33 + 16))();
          if (*a3)
          {
            break;
          }

          v27 += 68;
          v28 += 68;
        }

        while (v27 < v26);
      }
    }
  }

  else
  {
    if (*a2 != 25)
    {
      return result;
    }

    v6 = *(a2 + 64);
    result = strnlen((a2 + 8), 0x10uLL);
    if (result >= 0x10)
    {
      v7 = 16;
    }

    else
    {
      v7 = result;
    }

    v50[0] = a2 + 8;
    v50[1] = v7;
    if ((*a3 & 1) == 0 && v6)
    {
      v8 = 0;
      do
      {
        v9 = a2 + v8;
        v10 = strnlen((a2 + v8 + 88), 0x10uLL);
        v11 = v10;
        if (v10 >= 0x10)
        {
          v12 = 16;
        }

        else
        {
          v12 = v10;
        }

        v49[0] = a2 + v8 + 88;
        v49[1] = v12;
        v13 = strnlen((a2 + v8 + 72), 0x10uLL);
        if (v13 >= 0x10)
        {
          v19 = 16;
        }

        else
        {
          v19 = v13;
        }

        v39 = a2 + v8 + 72;
        v40 = v19;
        v20 = v49;
        if (!v11)
        {
          v20 = v50;
        }

        v41 = *v20;
        v21 = *(v5 + 32);
        v42 = *(*(*(v5 + 40) + 8) + 24);
        v43 = *(a2 + 56);
        v23 = *(v9 + 120);
        v22 = *(v9 + 124);
        v44 = *(v9 + 136);
        v45 = v22;
        v46 = *(v9 + 104);
        v47 = v23;
        *&v24 = *(v9 + 128);
        *(&v24 + 1) = *(v9 + 140);
        v48 = v24;
        result = (*(v21 + 16))(v21, &v39, a3, v14, v15, v16, v17, v18);
        if (*a3)
        {
          break;
        }

        v8 += 80;
      }

      while (v9 + 152 < a2 + 80 * v6 + 72);
    }
  }

  ++*(*(*(v5 + 40) + 8) + 24);
  return result;
}

uint64_t mach_o::Header::headerAndLoadCommandsSize(mach_o::Header *this)
{
  if (*this == -17958193)
  {
    v1 = 32;
  }

  else
  {
    v1 = 28;
  }

  return (v1 + *(this + 5));
}

uint64_t AAREncoder::headerSize(uint64_t a1, uint64_t a2)
{
  v3 = strlen(*a2);
  v4 = 1;
  while (*(a2 + 16) >> (8 * v4))
  {
    v5 = v4 > 3;
    v4 *= 2;
    if (v5)
    {
      LOWORD(v4) = 8;
      return (v3 + v4 + 29);
    }
  }

  if (v4 < 3)
  {
    LOWORD(v4) = 2;
  }

  return (v3 + v4 + 29);
}

uint64_t AAREncoder::encodeFile(uint64_t a1, _BYTE **a2, uint64_t a3)
{
  v5 = cksum(a2[1], a2[2]);
  *(a3 + 32) = 0;
  v6 = lsl::Vector<std::byte>::insert<std::__wrap_iter<std::byte*>>(a3, *(a3 + 8) + *(a3 + 16), "AA01", "");
  v7 = AAREncoder::headerSize(v6, a2);
  ByteStream::push_back<unsigned short>(a3, v7);
  lsl::Vector<std::byte>::insert<std::__wrap_iter<std::byte*>>(a3, *(a3 + 8) + *(a3 + 16), "TYP1F", "");
  lsl::Vector<std::byte>::insert<std::__wrap_iter<std::byte*>>(a3, *(a3 + 8) + *(a3 + 16), "PATP", "");
  v8 = strlen(*a2);
  ByteStream::push_back<unsigned short>(a3, v8);
  v9 = strlen(*a2);
  lsl::Vector<std::byte>::insert<std::__wrap_iter<std::byte*>>(a3, *(a3 + 8) + *(a3 + 16), *a2, &(*a2)[v9]);
  lsl::Vector<std::byte>::insert<std::__wrap_iter<std::byte*>>(a3, *(a3 + 8) + *(a3 + 16), "CKSF", "");
  ByteStream::push_back<unsigned int>(a3, v5);
  v10 = 1;
  while (a2[2] >> (8 * v10))
  {
    v11 = v10 > 3;
    v10 *= 2;
    if (v11)
    {
      goto LABEL_9;
    }
  }

  if (v10 - 1 < 2)
  {
    lsl::Vector<std::byte>::insert<std::__wrap_iter<std::byte*>>(a3, *(a3 + 8) + *(a3 + 16), "DATA", "");
    ByteStream::push_back<unsigned short>(a3, *(a2 + 8));
  }

  else
  {
    if (v10 != 4)
    {
      if (v10 != 8)
      {
        AAREncoder::encodeFile();
      }

LABEL_9:
      lsl::Vector<std::byte>::insert<std::__wrap_iter<std::byte*>>(a3, *(a3 + 8) + *(a3 + 16), "DATC", "");
      ByteStream::push_back<unsigned long long>(a3, a2[2]);
      goto LABEL_12;
    }

    lsl::Vector<std::byte>::insert<std::__wrap_iter<std::byte*>>(a3, *(a3 + 8) + *(a3 + 16), "DATB", "");
    ByteStream::push_back<unsigned int>(a3, *(a2 + 4));
  }

LABEL_12:
  v12 = a2[1];
  v13 = *(a3 + 8) + *(a3 + 16);
  v14 = &a2[2][v12];

  return lsl::Vector<std::byte>::insert<std::__wrap_iter<std::byte*>>(a3, v13, v12, v14);
}

uint64_t AAREncoder::encodeLink(uint64_t a1, const char **a2, uint64_t a3)
{
  *(a3 + 32) = 0;
  lsl::Vector<std::byte>::insert<std::__wrap_iter<std::byte*>>(a3, *(a3 + 8) + *(a3 + 16), "AA01", "");
  v5 = strlen(*a2);
  v6 = strlen(a2[1]);
  ByteStream::push_back<unsigned short>(a3, v5 + v6 + 23);
  lsl::Vector<std::byte>::insert<std::__wrap_iter<std::byte*>>(a3, *(a3 + 8) + *(a3 + 16), "TYP1L", "");
  lsl::Vector<std::byte>::insert<std::__wrap_iter<std::byte*>>(a3, *(a3 + 8) + *(a3 + 16), "PATP", "");
  v7 = strlen(*a2);
  ByteStream::push_back<unsigned short>(a3, v7);
  v8 = strlen(*a2);
  lsl::Vector<std::byte>::insert<std::__wrap_iter<std::byte*>>(a3, *(a3 + 8) + *(a3 + 16), *a2, &(*a2)[v8]);
  lsl::Vector<std::byte>::insert<std::__wrap_iter<std::byte*>>(a3, *(a3 + 8) + *(a3 + 16), "LNKP", "");
  v9 = strlen(a2[1]);
  ByteStream::push_back<unsigned short>(a3, v9);
  v10 = a2[1];
  v11 = strlen(v10);
  v12 = *(a3 + 8) + *(a3 + 16);

  return lsl::Vector<std::byte>::insert<std::__wrap_iter<std::byte*>>(a3, v12, v10, &v10[v11]);
}

void *AAREncoder::AAREncoder(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  result[5] = a2;
  result[7] = 0;
  result[8] = 0;
  result[6] = 0;
  return result;
}

void AAREncoder::~AAREncoder(AAREncoder *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = 24 * v2;
    do
    {
      v5 = *v3;
      v3 += 3;
      lsl::Allocator::free(*this, v5);
      v4 -= 24;
    }

    while (v4);
  }

  v6 = *(this + 6);
  v7 = *(this + 7);
  if (v7)
  {
    v8 = (v6 + 8);
    v9 = 16 * v7;
    do
    {
      lsl::Allocator::free(*this, *v8);
      lsl::Allocator::free(*this, *(v8 - 1));
      v8 += 2;
      v9 -= 16;
    }

    while (v9);
    v6 = *(this + 6);
  }

  if (v6)
  {
    lsl::Vector<AAREncoder::Link>::resize(this + 40, 0);
  }

  if (*(this + 2))
  {
    lsl::Vector<AAREncoder::File>::resize(this + 8, 0);
  }
}

void AAREncoder::addFile(uint64_t a1, const void *a2, size_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lsl::Allocator::malloc(*a1, a3 + 1);
  memcpy(v10, a2, a3);
  *(v10 + a3) = 0;
  lsl::Vector<AAREncoder::File>::reserve(a1 + 8, *(a1 + 24) + 1);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  *(a1 + 24) = v12 + 1;
  v13 = (v11 + 24 * v12);
  *v13 = v10;
  v13[1] = a4;
  v13[2] = a5;
}

void AAREncoder::encode(void *a1, uint64_t a2)
{
  v3 = a1;
  v13 = *a1;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v4 = a1[7];
  if (v4)
  {
    v5 = a1[6];
    v6 = 16 * v4;
    do
    {
      v7 = *v5++;
      v11 = v7;
      a1 = AAREncoder::encodeLink(a1, &v11, &v13);
      v6 -= 16;
    }

    while (v6);
  }

  v8 = v3[3];
  if (v8)
  {
    v9 = v3[2];
    v10 = 24 * v8;
    do
    {
      v11 = *v9;
      v12 = *(v9 + 2);
      a1 = AAREncoder::encodeFile(a1, &v11, &v13);
      v9 = (v9 + 24);
      v10 -= 24;
    }

    while (v10);
  }

  lsl::Vector<std::byte>::insert<std::__wrap_iter<std::byte*>>(a2, *(a2 + 8) + *(a2 + 16), v14, &v14[v15]);
  if (v14)
  {
    lsl::Vector<std::byte>::resize(&v13, 0);
  }
}

void lsl::Vector<AAREncoder::File>::resize(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24) >= a2)
  {
    if (a2)
    {
      *(a1 + 16) = a2;
      *(a1 + 24) = a2;
      v4 = *a1;
      v5 = *(a1 + 8);

      lsl::Allocator::realloc(v4, v5);
    }

    else
    {
      v7 = (a1 + 8);
      v6 = *(a1 + 8);
      if (v6)
      {
        lsl::Allocator::free(*a1, v6);
      }

      *v7 = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
    }
  }

  else
  {
    lsl::Vector<AAREncoder::File>::reserve(a1, a2);
    *(a1 + 16) = a2;
    *(a1 + 24) = a2;
  }
}

void lsl::Vector<AAREncoder::File>::reserve(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24) < a2)
  {
    if (a2 >= 0x10)
    {
      v3 = (a2 - 1) | ((a2 - 1) >> 1) | (((a2 - 1) | ((a2 - 1) >> 1)) >> 2);
      v4 = v3 | (v3 >> 4) | ((v3 | (v3 >> 4)) >> 8);
      v2 = (v4 | (v4 >> 16) | ((v4 | (v4 >> 16)) >> 32)) + 1;
    }

    else
    {
      v2 = 16;
    }

    lsl::Vector<AAREncoder::File>::reserveExact(a1, v2);
  }
}

void lsl::Vector<AAREncoder::File>::reserveExact(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24) < a2)
  {
    if ((lsl::Allocator::realloc(*a1, *(a1 + 8)) & 1) == 0)
    {
      v4 = lsl::Allocator::aligned_alloc(*a1, 0x10uLL, 24 * a2);
      v5 = v4;
      v6 = *(a1 + 16);
      if (v6)
      {
        v7 = 0;
        for (i = 0; i < v6; ++i)
        {
          v9 = &v4[v7];
          v10 = (*(a1 + 8) + v7);
          v11 = *v10;
          *(v9 + 2) = *(v10 + 2);
          *v9 = v11;
          v6 = *(a1 + 16);
          v7 += 24;
        }
      }

      v12 = *(a1 + 8);
      if (v12)
      {
        lsl::Allocator::free(*a1, v12);
        v6 = *(a1 + 16);
      }

      if (v6 >= a2)
      {
        v6 = a2;
      }

      *(a1 + 8) = v5;
      *(a1 + 16) = v6;
    }

    *(a1 + 24) = a2;
  }
}

void lsl::Vector<AAREncoder::Link>::resize(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24) >= a2)
  {
    if (a2)
    {
      *(a1 + 16) = a2;
      *(a1 + 24) = a2;
      v4 = *a1;
      v5 = *(a1 + 8);

      lsl::Allocator::realloc(v4, v5);
    }

    else
    {
      v7 = (a1 + 8);
      v6 = *(a1 + 8);
      if (v6)
      {
        lsl::Allocator::free(*a1, v6);
      }

      *v7 = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
    }
  }

  else
  {
    lsl::Vector<AAREncoder::Link>::reserve(a1, a2);
    *(a1 + 16) = a2;
    *(a1 + 24) = a2;
  }
}

void lsl::Vector<AAREncoder::Link>::reserve(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24) < a2)
  {
    if (a2 >= 0x10)
    {
      v3 = (a2 - 1) | ((a2 - 1) >> 1) | (((a2 - 1) | ((a2 - 1) >> 1)) >> 2);
      v4 = v3 | (v3 >> 4) | ((v3 | (v3 >> 4)) >> 8);
      v2 = (v4 | (v4 >> 16) | ((v4 | (v4 >> 16)) >> 32)) + 1;
    }

    else
    {
      v2 = 16;
    }

    lsl::Vector<AAREncoder::Link>::reserveExact(a1, v2);
  }
}

void lsl::Vector<AAREncoder::Link>::reserveExact(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24) < a2)
  {
    if ((lsl::Allocator::realloc(*a1, *(a1 + 8)) & 1) == 0)
    {
      v4 = lsl::Allocator::aligned_alloc(*a1, 0x10uLL, 16 * a2);
      v5 = v4;
      v6 = *(a1 + 16);
      if (v6)
      {
        v7 = 0;
        for (i = 0; i < v6; ++i)
        {
          *&v4[v7] = *(*(a1 + 8) + v7);
          v6 = *(a1 + 16);
          v7 += 16;
        }
      }

      v9 = *(a1 + 8);
      if (v9)
      {
        lsl::Allocator::free(*a1, v9);
        v6 = *(a1 + 16);
      }

      if (v6 >= a2)
      {
        v6 = a2;
      }

      *(a1 + 8) = v5;
      *(a1 + 16) = v6;
    }

    *(a1 + 24) = a2;
  }
}

double ___ZN3lsl13MemoryManager13memoryManagerEv_block_invoke()
{
  if (lsl::sMemoryManagerInitialized == 1)
  {
    ___ZN3lsl13MemoryManager13memoryManagerEv_block_invoke_cold_1();
  }

  result = 0.0;
  unk_1EB5DDB00 = 0u;
  unk_1EB5DDAF0 = 0u;
  lsl::sMemoryManagerBuffer = 0u;
  *&qword_1EB5DDAD8 = 0u;
  unk_1EB5DDAE7 = 0;
  qword_1EB5DDAD8 = &lsl::sAllocatorBuffer;
  lsl::sMemoryManagerInitialized = 1;
  return result;
}

void *lsl::Allocator::malloc(lsl::Allocator *this, unint64_t a2)
{
  v2 = 16;
  if (a2 > 0x10)
  {
    v2 = a2;
  }

  return malloc_type_aligned_alloc(0x10uLL, (v2 + 15) & 0xFFFFFFFFFFFFFFF0, 0xC4FC5F7FuLL);
}

void *lsl::Allocator::aligned_alloc(lsl::Allocator *this, unint64_t a2, unint64_t a3)
{
  if ((a2 ^ (a2 - 1)) <= a2 - 1)
  {
    lsl::Allocator::aligned_alloc();
  }

  v4 = 16;
  if (a2 <= 0x10)
  {
    v5 = 16;
  }

  else
  {
    v5 = a2;
  }

  if (a3 > 0x10)
  {
    v4 = a3;
  }

  return malloc_type_aligned_alloc(v5, (v5 + v4 - 1) & -v5, 0xC4FC5F7FuLL);
}

void lsl::Allocator::freeObject(void *this, void *a2)
{
  if (this)
  {
    free(this);
  }
}

void lsl::Allocator::free(lsl::Allocator *this, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

uint64_t lsl::MemoryManager::defaultAllocator(lsl::MemoryManager *this)
{
  if (lsl::MemoryManager::memoryManager(void)::onceToken[0] != -1)
  {
    lsl::MemoryManager::defaultAllocator();
  }

  return qword_1EB5DDAD8;
}

uint64_t sub_1AE4C57EC(uint64_t result)
{
  v2 = *v1;
  v3 = v1[2];
  v4 = v1[3];
  v5 = v4 - v3;
  if (!v3)
  {
    v5 = 0;
  }

  if (v2 < 0 || v5 < v2)
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = v1[1];
  if (v6 < 0 || v5 < v6)
  {
    goto LABEL_17;
  }

  if (v6 - v2 <= 3)
  {
    if (v3)
    {
      v7 = v3 + v2;
      sub_1AE4C94DC();
      swift_willThrowTypedImpl();
      return v7;
    }

    goto LABEL_18;
  }

  if (v3)
  {
    v8 = *(v3 + v2);
    v9 = bswap32(v8);
    if (result)
    {
      v7 = v9;
    }

    else
    {
      v7 = v8;
    }

    *v1 = sub_1AE4A7CA4(4uLL, v2, v6, v3, v4);
    v1[1] = v10;
    v1[2] = v11;
    v1[3] = v12;
    return v7;
  }

LABEL_19:
  __break(1u);
  return result;
}

unint64_t sub_1AE4C58DC(unint64_t result, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[2];
  v6 = v2[3];
  v7 = v6 - v5;
  if (!v5)
  {
    v7 = 0;
  }

  if (v4 < 0 || v7 < v4)
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v2[1];
  if (v8 < 0 || v7 < v8)
  {
    goto LABEL_17;
  }

  if (v8 - v4 <= 7)
  {
    if (v5)
    {
      v9 = v5 + v4;
      v10 = v5 + v8;
      sub_1AE4C9530();
      swift_willThrowTypedImpl();
      *a2 = v9;
      *(a2 + 8) = v10;
      *(a2 + 16) = xmmword_1AE4EC820;
      *(a2 + 32) = 5;
      return v10;
    }

    goto LABEL_18;
  }

  if (v5)
  {
    v11 = bswap64(*(v5 + v4));
    if (result)
    {
      v10 = v11;
    }

    else
    {
      v10 = *(v5 + v4);
    }

    *v2 = sub_1AE4A7CA4(8uLL, v4, v8, v5, v6);
    v2[1] = v12;
    v2[2] = v13;
    v2[3] = v14;
    return v10;
  }

LABEL_19:
  __break(1u);
  return result;
}

unint64_t sub_1AE4C59E0(unint64_t result)
{
  v2 = *v1;
  v3 = v1[2];
  v4 = v1[3];
  v5 = v4 - v3;
  if (!v3)
  {
    v5 = 0;
  }

  if (v2 < 0 || v5 < v2)
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = v1[1];
  if (v6 < 0 || v5 < v6)
  {
    goto LABEL_17;
  }

  if (v6 - v2 <= 7)
  {
    if (v3)
    {
      v7 = v3 + v2;
      sub_1AE4C94DC();
      swift_willThrowTypedImpl();
      return v7;
    }

    goto LABEL_18;
  }

  if (v3)
  {
    v8 = bswap64(*(v3 + v2));
    if (result)
    {
      v7 = v8;
    }

    else
    {
      v7 = *(v3 + v2);
    }

    *v1 = sub_1AE4A7CA4(8uLL, v2, v6, v3, v4);
    v1[1] = v9;
    v1[2] = v10;
    v1[3] = v11;
    return v7;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1AE4C5AD0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v4 = qword_1AE4ED448[*(a1 + 32)];
  v5 = a2 * v4;
  if ((a2 * v4) >> 64 != (a2 * v4) >> 63)
  {
    __break(1u);
    goto LABEL_19;
  }

  v6 = *(a1 + 56);
  v7 = v5 + v6;
  if (__OFADD__(v5, v6))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v8 != 2)
    {
      memset(v21, 0, 14);
      v9 = *(v21 + v7);
      goto LABEL_17;
    }

    v10 = *(a3 + 16);
    v11 = sub_1AE4EA990();
    if (v11)
    {
      v12 = v11;
      v13 = sub_1AE4EA9B0();
      if (__OFSUB__(v10, v13))
      {
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
      }

      v14 = v10 - v13 + v12;
      sub_1AE4EA9A0();
      if (v14)
      {
LABEL_15:
        v9 = *(v14 + v7);
        goto LABEL_17;
      }
    }

    else
    {
      sub_1AE4EA9A0();
    }

    __break(1u);
    goto LABEL_25;
  }

  if (!v8)
  {
    v21[0] = a3;
    LOWORD(v21[1]) = a4;
    BYTE2(v21[1]) = BYTE2(a4);
    BYTE3(v21[1]) = BYTE3(a4);
    BYTE4(v21[1]) = BYTE4(a4);
    BYTE5(v21[1]) = BYTE5(a4);
    v9 = *(v21 + v7);
LABEL_17:
    v20 = *MEMORY[0x1E69E9840];
    return v9;
  }

  v15 = a3;
  if (a3 > a3 >> 32)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = sub_1AE4EA990();
  if (!v16)
  {
LABEL_25:
    result = sub_1AE4EA9A0();
    __break(1u);
    goto LABEL_26;
  }

  v17 = v16;
  v18 = sub_1AE4EA9B0();
  if (__OFSUB__(v15, v18))
  {
    goto LABEL_22;
  }

  v14 = v15 - v18 + v17;
  result = sub_1AE4EA9A0();
  if (v14)
  {
    goto LABEL_15;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1AE4C5CAC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v4 = qword_1AE4ED448[*(a1 + 32)];
  v5 = a2 * v4;
  if ((a2 * v4) >> 64 != (a2 * v4) >> 63)
  {
    __break(1u);
    goto LABEL_22;
  }

  v6 = *(a1 + 56);
  v7 = v5 + v6;
  if (__OFADD__(v5, v6))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v8 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (v8)
    {
      goto LABEL_13;
    }

    v21[0] = a3;
    LOWORD(v21[1]) = a4;
    BYTE2(v21[1]) = BYTE2(a4);
    BYTE3(v21[1]) = BYTE3(a4);
    BYTE4(v21[1]) = BYTE4(a4);
    BYTE5(v21[1]) = BYTE5(a4);
    v8 = *(v21 + v7);
    result = bswap64(v8);
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  if (v8 != 2)
  {
    goto LABEL_19;
  }

  v10 = *(a3 + 16);
  v11 = sub_1AE4EA990();
  if (!v11)
  {
    sub_1AE4EA9A0();
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v12 = v11;
  v13 = sub_1AE4EA9B0();
  if (__OFSUB__(v10, v13))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  v14 = v10 - v13 + v12;
  sub_1AE4EA9A0();
  if (!v14)
  {
    goto LABEL_28;
  }

  result = bswap64(*(v14 + v7));
  if ((result & 0x8000000000000000) == 0)
  {
    goto LABEL_20;
  }

  __break(1u);
LABEL_13:
  v15 = a3;
  if (a3 > a3 >> 32)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = sub_1AE4EA990();
  if (!v16)
  {
LABEL_29:
    result = sub_1AE4EA9A0();
    goto LABEL_30;
  }

  v17 = v16;
  v18 = sub_1AE4EA9B0();
  if (__OFSUB__(v15, v18))
  {
    goto LABEL_26;
  }

  v19 = v15 - v18 + v17;
  result = sub_1AE4EA9A0();
  if (v19)
  {
    result = bswap64(*(v19 + v7));
    if (result < 0)
    {
      __break(1u);
LABEL_19:
      memset(v21, 0, 14);
      result = bswap64(*(v21 + v7));
      if ((result & 0x8000000000000000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_24;
    }

LABEL_20:
    v20 = *MEMORY[0x1E69E9840];
    return result;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1AE4C5EA8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X6>, void *a4@<X8>, uint64_t a5)
{
  if (a1 == 4)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
    result = sub_1AE4EB230();
    *a4 = a3;
    a4[1] = v9;
    a4[2] = a2;
  }

  else
  {
    sub_1AE4C78AC();
    result = swift_willThrowTypedImpl();
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    *a5 = 6;
    *(a5 + 24) = 0x80;
  }

  return result;
}

uint64_t sub_1AE4C5F7C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = sub_1AE4A6A00(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1AE4C601C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1AE4AF28C(a1);
  v5 = v4;

  *a2 = v3;
  a2[1] = v5;
  return result;
}

uint64_t sub_1AE4C60C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = sub_1AE4AEC7C(a1, a2);
  v6 = v5;

  *a3 = v4;
  a3[1] = v6;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1AE4C61D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AE4C6220(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BPList.IntDescripter(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BPList.IntDescripter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1AE4C63E0()
{
  result = qword_1EB5DD230;
  if (!qword_1EB5DD230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DD230);
  }

  return result;
}

uint64_t sub_1AE4C6434@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1AE4AC2B4(a1);
  v5 = v4;
  v7 = v6;

  *a2 = v3;
  a2[1] = v5;
  a2[2] = v7;
  return result;
}

uint64_t sub_1AE4C6514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_1AE4AE3BC())
  {
    v4 = *(a1 + 16);
    (*(*(a1 + 24) + 8))();
    v5 = *(*(v4 - 8) + 56);

    return v5(a2, 0, 1, v4);
  }

  else
  {
    result = sub_1AE4EB140();
    __break(1u);
  }

  return result;
}

void (*sub_1AE4C65F4(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = sub_1AE4C66CC(v7, *a2, *v3, v3[1], v3[2], *(a3 + 16), *(a3 + 24));
  return sub_1AE4C6684;
}

void sub_1AE4C6684(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_1AE4C66CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(void *a1)
{
  v13 = *(a6 - 8);
  *a1 = a6;
  a1[1] = v13;
  if (MEMORY[0x1E69E7D08])
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(*(v13 + 64));
  }

  a1[2] = v14;
  v15 = sub_1AE4B9974(a2, a3, a4, a5);
  (*(a7 + 8))(v15);
  return sub_1AE4C67D4;
}

void sub_1AE4C67D4(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_1AE4C6848@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = sub_1AE4C64E0();
  v8 = v7;
  v10 = v9;

  *a1 = v6;
  a1[1] = v8;
  a1[2] = v10;
  a1[3] = 0;
  return result;
}

uint64_t sub_1AE4C68A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1AE4C6900()
{
  swift_getWitnessTable();
  v1 = sub_1AE4E8690();
  v2 = *v0;

  return v1;
}

unint64_t sub_1AE4C6960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37[4] = *MEMORY[0x1E69E9840];
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v36 = a1;
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v12 != 2)
    {
      memset(v37, 0, 14);
      if (a3 <= 0)
      {
        v28 = *(a2 + 33);
        v29 = qword_1AE4ED448[v28];
        if ((v29 * a1) >> 64 == (v29 * a1) >> 63)
        {
          swift_retain_n();
          v17 = sub_1AE4A67C4(v28, v29 * a1, a3, 0, v37, v37);
          v30 = a1 + a4;
          if (!__OFADD__(a1, a4))
          {
            v19 = v29 * v30;
            if ((v29 * v30) >> 64 == (v29 * v30) >> 63)
            {
              v20 = v28;
              v21 = v37;
              v22 = a3;
              v23 = 0;
              goto LABEL_17;
            }

LABEL_27:
            __break(1u);
          }

          goto LABEL_25;
        }

        goto LABEL_23;
      }

      goto LABEL_21;
    }

    v24 = *(v10 + 16);
    v25 = *(v10 + 24);
  }

  else
  {
    if (!v12)
    {
      v37[0] = *(a2 + 16);
      LOWORD(v37[1]) = v11;
      BYTE2(v37[1]) = BYTE2(v11);
      BYTE3(v37[1]) = BYTE3(v11);
      v13 = v11 >> 40;
      BYTE4(v37[1]) = BYTE4(v11);
      v14 = BYTE6(v11);
      BYTE5(v37[1]) = v13;
      if (v14 >= a3)
      {
        v15 = *(a2 + 33);
        v16 = qword_1AE4ED448[v15];
        if ((v16 * a1) >> 64 == (v16 * a1) >> 63)
        {
          swift_retain_n();
          v17 = sub_1AE4A67C4(v15, v16 * a1, a3, v14, v37, v37 + v14);
          v18 = a1 + a4;
          if (!__OFADD__(a1, a4))
          {
            v19 = v16 * v18;
            if ((v16 * v18) >> 64 == (v16 * v18) >> 63)
            {
              v20 = v15;
              v21 = v37 + v14;
              v22 = a3;
              v23 = v14;
LABEL_17:
              result = sub_1AE4A67C4(v20, v19, v22, v23, v37, v21);
              goto LABEL_18;
            }

            goto LABEL_26;
          }

          goto LABEL_24;
        }

        goto LABEL_22;
      }

      __break(1u);
      goto LABEL_20;
    }

    v24 = v10;
    v25 = v10 >> 32;
    if (v10 >> 32 < v10)
    {
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }
  }

  swift_retain_n();
  v17 = sub_1AE4AD03C(v24, v25, v11 & 0x3FFFFFFFFFFFFFFFLL, sub_1AE4C9400, v32, a3);
  result = v26;
LABEL_18:
  *a5 = a2;
  *(a5 + 8) = v17;
  *(a5 + 16) = 1;
  *(a5 + 24) = a2;
  *(a5 + 32) = result;
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AE4C6D3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AE4AE3BC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_1AE4C6D64@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *sub_1AE4C6D7C(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t (*sub_1AE4C6D94(uint64_t *a1, uint64_t *a2))(uint64_t a1)
{
  v4 = sub_1AE4B9974(*a2, *v2, v2[1], v2[2]);
  a1[1] = v5;
  a1[2] = v4;
  *a1 = v4;
  return sub_1AE4C6DE8;
}

void sub_1AE4C6DF0(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = v2;
  }
}

void *sub_1AE4C6E04@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0 && *(v3 + 16) >= v4)
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE4C6E30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1AE4C9350(*a1, a2, *a3, *(v4 + 16));
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t *sub_1AE4C6E6C(uint64_t *result, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(v2 + 16);
  if (v4 >= *a2)
  {
    v5 = *result;
    if (((v3 | *result) & 0x8000000000000000) == 0 && v4 >= v5)
    {
      return (v3 - v5);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1AE4C6ED4@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, unint64_t *a8@<X8>, uint64_t a9)
{
  v12 = *(a5 + 33);
  v13 = qword_1AE4ED448[v12];
  if ((v13 * a7) >> 64 == (v13 * a7) >> 63)
  {
    v18 = result;
    result = sub_1AE4A67C4(*(a5 + 33), v13 * a7, result, a2, a3, a4);
    if (v9)
    {
      *a9 = result;
      *(a9 + 8) = v19;
      *(a9 + 16) = v20;
      *(a9 + 24) = v21;
      return result;
    }

    v22 = a7 + a6;
    if (!__OFADD__(a7, a6))
    {
      if ((v13 * v22) >> 64 == (v13 * v22) >> 63)
      {
        v23 = result;
        result = sub_1AE4A67C4(v12, v13 * v22, v18, a2, a3, a4);
        *a8 = v23;
        a8[1] = result;
        return result;
      }

      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

double sub_1AE4C6FC8@<D0>(uint64_t a1@<X8>)
{
  sub_1AE4B87FC(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

void (*sub_1AE4C700C(uint64_t *a1, uint64_t *a2))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  v6 = v5;
  *a1 = v5;
  sub_1AE4C6960(*a2, *v2, v2[1], v2[2], &v11);
  v7 = v12;
  v8 = v13;
  v9 = v14;
  *v6 = v11;
  *(v6 + 16) = v7;
  *(v6 + 24) = v8;
  *(v6 + 32) = v9;
  return sub_1AE4C70B0;
}

void sub_1AE4C70B0(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[3];
  sub_1AE4A67B4(**a1, v1[1], *(v1 + 16));

  free(v1);
}

uint64_t *sub_1AE4C70FC@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = *result;
  if (*result < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result[1];
  if (v3 >= v5)
  {
    v6 = *v2;
    v7 = v2[1];
    *a2 = v4;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
    a2[4] = v3;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1AE4C7138@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = 0;
  a1[4] = v3;
}

uint64_t *sub_1AE4C7150@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *result;
    if (!a2)
    {
LABEL_5:
      *a3 = v3;
      return result;
    }

    if ((v3 ^ 0x7FFFFFFFFFFFFFFFuLL) > a2 - 1)
    {
      v3 += a2;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE4C7180@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1AE4C9280(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1AE4C71B8(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5 = __OFSUB__(*a2, *a1);
  result = *a2 - *a1;
  if (result < 0 != v5)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = __OFSUB__(v2, v3);
  v6 = v2 - v3;
  if (!v6)
  {
    return 0;
  }

  if (v6 < 0 == v5)
  {
    goto LABEL_9;
  }

  if (v6 < 0x8000000000000001)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t *sub_1AE4C71F8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_1AE4C7214(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_1AE4C7230(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE4C7278(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *v4;
  v6 = v4[2];
  if (!v6)
  {
    goto LABEL_4;
  }

  v8 = v4[1];
  v9 = a3(v4[2], 0);
  v10 = a4(v12, v9 + 32, v6, v5, v8, v6);

  if (v10 != v6)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v9;
}

uint64_t sub_1AE4C7340()
{
  v1 = *v0;
  sub_1AE4EB260();
  MEMORY[0x1B2701700](v1);
  return sub_1AE4EB290();
}

uint64_t sub_1AE4C73B4()
{
  v1 = *v0;
  sub_1AE4EB260();
  MEMORY[0x1B2701700](v1);
  return sub_1AE4EB290();
}

unint64_t sub_1AE4C73FC()
{
  result = qword_1EB5DD238;
  if (!qword_1EB5DD238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DD238);
  }

  return result;
}

unint64_t sub_1AE4C7454()
{
  result = qword_1EB5DD240;
  if (!qword_1EB5DD240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DD240);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *sub_1AE4C7590@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_1AE4C75E8(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1AE4C7618@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1AE4C7644@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1AE4C7730@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1AE4C93C8(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1AE4C77D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SnapshotFlags(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AE4C7884(uint64_t a1)
{
  result = sub_1AE4C78AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AE4C78AC()
{
  result = qword_1EB5DD4F0;
  if (!qword_1EB5DD4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DD4F0);
  }

  return result;
}

void *sub_1AE4C7900(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD3D8, &qword_1AE4ED438);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1AE4C7984(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5DD2D0, &qword_1AE4ECE28);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

uint64_t sub_1AE4C7A14(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v85 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
LABEL_120:
    v8 = 0;
    goto LABEL_124;
  }

  v8 = a3;
  if (!a3)
  {
    goto LABEL_124;
  }

  if (a3 < 0)
  {
    goto LABEL_155;
  }

  v9 = a2;
  v73 = a1;
  v10 = 1;
  while (1)
  {
    v11 = v10 - 1;
    if (v10 - 1 >= a6)
    {
      v8 = v10 - 1;
      goto LABEL_123;
    }

    v12 = *(a4 + 16);
    v13 = *(a4 + 24);
    v14 = v13 >> 62;
    if ((v13 >> 62) <= 1)
    {
      if (!v14)
      {
        v76[0] = *(a4 + 16);
        LOWORD(v76[1]) = v13;
        BYTE2(v76[1]) = BYTE2(v13);
        BYTE3(v76[1]) = BYTE3(v13);
        v15 = v13 >> 40;
        BYTE4(v76[1]) = BYTE4(v13);
        v16 = BYTE6(v13);
        BYTE5(v76[1]) = v15;
        if (v16 < a5)
        {
          goto LABEL_126;
        }

        v17 = *(a4 + 33);
        v18 = qword_1AE4ED448[v17];
        v19 = v18 * v11;
        if ((v18 * v11) >> 64 != (v18 * v11) >> 63)
        {
          goto LABEL_129;
        }

        if (__OFADD__(v19, v18))
        {
          goto LABEL_133;
        }

        if (a5 < 0)
        {
          goto LABEL_138;
        }

        if (v16 - a5 < v19 + v18)
        {
          goto LABEL_164;
        }

        v81 = a5;
        v82 = v16;
        v83 = v76;
        v84 = v76 + v16;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
        sub_1AE4EB230();
        v20 = v77 + v19;
        if (__OFADD__(v77, v19))
        {
          goto LABEL_141;
        }

        if (__OFADD__(v20, v18))
        {
          goto LABEL_146;
        }

        if (v16 < v20 + v18)
        {
          goto LABEL_163;
        }

        v21 = v17;
        if (v17 <= 1u)
        {
          v8 = a3;
          if (v21)
          {
            goto LABEL_18;
          }

LABEL_86:
          v23 = *(v76 + v20);

          goto LABEL_116;
        }

        v8 = a3;
        if (v21 != 2)
        {
          goto LABEL_88;
        }

LABEL_90:
        v59 = *(v76 + v20);

        v23 = bswap32(v59);
        goto LABEL_116;
      }

      v41 = v12;
      v42 = v12 >> 32;
      v43 = v42 - v41;
      if (v42 < v41)
      {
        goto LABEL_127;
      }

      v26 = sub_1AE4EA990();
      if (v26)
      {
        v44 = sub_1AE4EA9B0();
        if (__OFSUB__(v41, v44))
        {
          goto LABEL_154;
        }

        v26 += v41 - v44;
      }

      v45 = sub_1AE4EA9A0();
      if (v45 >= v43)
      {
        v46 = v43;
      }

      else
      {
        v46 = v45;
      }

      if (v26)
      {
        v47 = v46;
      }

      else
      {
        v47 = 0;
      }

      if (v26)
      {
        v48 = (v26 + v46);
      }

      else
      {
        v48 = 0;
      }

      if (v47 < a5)
      {
        goto LABEL_131;
      }

      v49 = *(a4 + 33);
      v50 = qword_1AE4ED448[v49];
      v51 = v50 * v11;
      if ((v50 * v11) >> 64 != (v50 * v11) >> 63)
      {
        goto LABEL_135;
      }

      if (__OFADD__(v51, v50))
      {
        goto LABEL_139;
      }

      v52 = &v48[-v26];
      if (v26)
      {
        v53 = &v48[-v26];
      }

      else
      {
        v53 = 0;
      }

      if (a5 < 0 || v53 < a5)
      {
        goto LABEL_143;
      }

      if (v53 < v47)
      {
        goto LABEL_147;
      }

      if (v47 - a5 < v51 + v50)
      {
        goto LABEL_163;
      }

      v81 = a5;
      v82 = v47;
      v83 = v26;
      v84 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
      sub_1AE4EB230();
      v39 = v77 + v51;
      if (__OFADD__(v77, v51))
      {
        goto LABEL_150;
      }

      v54 = v39 + v50;
      if (__OFADD__(v39, v50))
      {
        goto LABEL_152;
      }

      if (v26)
      {
        if (v52 < v54)
        {
          goto LABEL_163;
        }
      }

      else if (v54 >= 1)
      {
        goto LABEL_163;
      }

      if (v49 <= 1u)
      {
        if (!v49)
        {
          if (!v26)
          {
            goto LABEL_162;
          }

          goto LABEL_103;
        }

        if (!v26)
        {
          goto LABEL_161;
        }

LABEL_112:
        v61 = *(v26 + v39);

        v23 = bswap32(v61) >> 16;
        goto LABEL_115;
      }

      if (v49 == 2)
      {
        if (!v26)
        {
          goto LABEL_160;
        }

        goto LABEL_106;
      }

      if (!v26)
      {
        goto LABEL_159;
      }

      goto LABEL_114;
    }

    if (v14 != 2)
    {
      memset(v76, 0, 14);
      if (a5 <= 0)
      {
        v55 = *(a4 + 33);
        v56 = qword_1AE4ED448[v55];
        v57 = v56 * v11;
        if ((v56 * v11) >> 64 != (v56 * v11) >> 63)
        {
          goto LABEL_130;
        }

        if (__OFADD__(v57, v56))
        {
          goto LABEL_134;
        }

        if (a5 < 0)
        {
          goto LABEL_137;
        }

        if (v57 + v56 >= 1)
        {
LABEL_164:
          v82 = 0;
          v83 = 0;
          v81 = 1;
          LOBYTE(v84) = 0x80;
          sub_1AE4C78AC();

          goto LABEL_165;
        }

        v81 = 0;
        v82 = 0;
        v83 = v76;
        v84 = v76;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
        sub_1AE4EB230();
        v20 = v77 + v57;
        if (__OFADD__(v77, v57))
        {
          goto LABEL_142;
        }

        if (__OFADD__(v20, v56))
        {
          goto LABEL_145;
        }

        if (v20 + v56 >= 1)
        {
          goto LABEL_163;
        }

        if (v55 <= 1u)
        {
          if (v55)
          {
LABEL_18:
            v22 = *(v76 + v20);

            v23 = bswap32(v22) >> 16;
            goto LABEL_116;
          }

          goto LABEL_86;
        }

        if (v55 != 2)
        {
LABEL_88:
          v58 = *(v76 + v20);

          v23 = bswap64(v58);
          goto LABEL_116;
        }

        goto LABEL_90;
      }

      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
    }

    v24 = *(v12 + 16);
    v25 = *(v12 + 24);

    v26 = sub_1AE4EA990();
    if (v26)
    {
      v27 = sub_1AE4EA9B0();
      if (__OFSUB__(v24, v27))
      {
        goto LABEL_153;
      }

      v26 += v24 - v27;
    }

    v28 = __OFSUB__(v25, v24);
    v29 = v25 - v24;
    if (v28)
    {
      goto LABEL_128;
    }

    v30 = sub_1AE4EA9A0();
    if (v30 >= v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = v30;
    }

    if (v26)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    if (v26)
    {
      v33 = (v26 + v31);
    }

    else
    {
      v33 = 0;
    }

    if (v32 < a5)
    {
      goto LABEL_132;
    }

    v34 = *(a4 + 33);
    v35 = qword_1AE4ED448[v34];
    v36 = v35 * v11;
    if ((v35 * v11) >> 64 != (v35 * v11) >> 63)
    {
      goto LABEL_136;
    }

    if (__OFADD__(v36, v35))
    {
      goto LABEL_140;
    }

    v37 = &v33[-v26];
    if (v26)
    {
      v38 = &v33[-v26];
    }

    else
    {
      v38 = 0;
    }

    if (a5 < 0 || v38 < a5)
    {
      goto LABEL_144;
    }

    if (v38 < v32)
    {
      goto LABEL_148;
    }

    if (v32 - a5 < v36 + v35)
    {
      goto LABEL_163;
    }

    v81 = a5;
    v82 = v32;
    v83 = v26;
    v84 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
    sub_1AE4EB230();
    v39 = v77 + v36;
    if (__OFADD__(v77, v36))
    {
      goto LABEL_149;
    }

    v40 = v39 + v35;
    if (__OFADD__(v39, v35))
    {
      goto LABEL_151;
    }

    if (v26)
    {
      if (v37 < v40)
      {
        goto LABEL_163;
      }
    }

    else if (v40 >= 1)
    {
      goto LABEL_163;
    }

    if (v34 > 1u)
    {
      if (v34 == 2)
      {
        if (!v26)
        {
          goto LABEL_156;
        }

LABEL_106:
        v60 = *(v26 + v39);

        v23 = bswap32(v60);
        goto LABEL_115;
      }

      if (!v26)
      {
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        v82 = 0;
        v83 = 0;
        v81 = 1;
        LOBYTE(v84) = 0x80;
        sub_1AE4C78AC();
LABEL_165:
        swift_willThrowTypedImpl();
        sub_1AE4C78AC();
        v65 = swift_allocError();
        *(v66 + 8) = 0;
        *(v66 + 16) = 0;
        *v66 = 1;
        *(v66 + 24) = 0x80;
        v76[0] = v65;
        v67 = v65;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
        swift_dynamicCast();
        v68 = v81;
        v69 = v82;
        v70 = v83;
        v71 = v84;
        v77 = v81;
        v78 = v82;
        v79 = v83;
        v80 = v84;
        sub_1AE4C78AC();
        swift_willThrowTypedImpl();

        swift_allocError();
        *v72 = v68;
        *(v72 + 8) = v69;
        *(v72 + 16) = v70;
        *(v72 + 24) = v71;
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

LABEL_114:
      v62 = *(v26 + v39);

      v23 = bswap64(v62);
      goto LABEL_115;
    }

    if (v34)
    {
      if (!v26)
      {
        goto LABEL_157;
      }

      goto LABEL_112;
    }

    if (!v26)
    {
      goto LABEL_158;
    }

LABEL_103:
    v23 = *(v26 + v39);

LABEL_115:
    v8 = a3;
LABEL_116:
    *v9 = a4;
    v9[1] = v23;
    if (v8 == v10)
    {
      break;
    }

    v9 += 2;

    v28 = __OFADD__(v10++, 1);
    if (v28)
    {
      __break(1u);
      goto LABEL_120;
    }
  }

LABEL_123:
  a1 = v73;
LABEL_124:
  *a1 = a4;
  a1[1] = a5;
  a1[2] = a6;
  a1[3] = v8;
  v63 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t sub_1AE4C81F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v7 = a4;
  v122 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v8 = a3;
    if (a3)
    {
      if (a3 < 0)
      {
        goto LABEL_248;
      }

      v9 = a2;
      v10 = 1;
      v112 = a5;
      while (1)
      {
        v11 = v10 - 1;
        if (v10 - 1 >= v6)
        {
          v8 = v10 - 1;
          break;
        }

        v12 = *(v7 + 16);
        v13 = *(v7 + 24);
        v14 = v13 >> 62;
        if ((v13 >> 62) > 1)
        {
          if (v14 == 2)
          {
            v24 = *(v12 + 16);
            v25 = *(v12 + 24);

            v26 = sub_1AE4EA990();
            if (v26)
            {
              v27 = v26;
              v28 = sub_1AE4EA9B0();
              if (__OFSUB__(v24, v28))
              {
                goto LABEL_246;
              }

              v29 = (v24 - v28 + v27);
              v30 = __OFSUB__(v25, v24);
              v31 = v25 - v24;
              if (v30)
              {
                goto LABEL_197;
              }
            }

            else
            {
              v29 = 0;
              v30 = __OFSUB__(v25, v24);
              v31 = v25 - v24;
              if (v30)
              {
                goto LABEL_197;
              }
            }

            v107 = v9;
            v44 = sub_1AE4EA9A0();
            if (v44 >= v31)
            {
              v45 = v31;
            }

            else
            {
              v45 = v44;
            }

            v46 = &v29[v45];
            if (v29)
            {
              v47 = v45;
            }

            else
            {
              v47 = 0;
            }

            if (v29)
            {
              v48 = &v29[v45];
            }

            else
            {
              v48 = 0;
            }

            if (v47 < v112)
            {
              goto LABEL_201;
            }

            v49 = *(v7 + 33);
            v50 = qword_1AE4ED448[v49];
            v51 = v50 * v11;
            if ((v50 * v11) >> 64 != (v50 * v11) >> 63)
            {
              goto LABEL_204;
            }

            if (__OFADD__(v51, v50))
            {
              goto LABEL_208;
            }

            v52 = v48 - v29;
            if (v29)
            {
              v53 = v48 - v29;
            }

            else
            {
              v53 = 0;
            }

            if (v112 < 0 || v53 < v112)
            {
              goto LABEL_212;
            }

            if (v53 < v47)
            {
              goto LABEL_217;
            }

            if (v47 - v112 < v51 + v50)
            {
              goto LABEL_257;
            }

            v54 = v47 - v112;
            v118 = v112;
            v119 = v47;
            v120 = v29;
            v121 = v48;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
            sub_1AE4EB230();
            v55 = v114 + v51;
            if (__OFADD__(v114, v51))
            {
              goto LABEL_220;
            }

            v56 = v55 + v50;
            if (__OFADD__(v55, v50))
            {
              goto LABEL_224;
            }

            if (v29)
            {
              v57 = v52 < v56;
              v6 = a6;
              v58 = v112;
              if (v57)
              {
                goto LABEL_257;
              }
            }

            else
            {
              v57 = v56 < 1;
              v6 = a6;
              v58 = v112;
              if (!v57)
              {
                goto LABEL_257;
              }
            }

            LODWORD(v49) = v49;
            v72 = v45;
            if (v49 > 1u)
            {
              v9 = v107;
              if (v49 == 2)
              {
                if (!v29)
                {
                  goto LABEL_250;
                }

                v73 = v46;
                v23 = bswap32(*&v29[v55]);
              }

              else
              {
                if (!v29)
                {
                  __break(1u);
LABEL_250:
                  __break(1u);
LABEL_251:
                  __break(1u);
LABEL_252:
                  __break(1u);
LABEL_253:
                  __break(1u);
LABEL_254:
                  __break(1u);
LABEL_255:
                  __break(1u);
LABEL_256:
                  __break(1u);
LABEL_257:
                  v119 = 0;
                  v120 = 0;
                  v118 = 1;
                  LOBYTE(v121) = 0x80;
                  sub_1AE4C78AC();
                  while (1)
                  {
                    swift_willThrowTypedImpl();
                    sub_1AE4C78AC();
                    v98 = swift_allocError();
                    *(v99 + 8) = 0;
                    *(v99 + 16) = 0;
                    *v99 = 1;
                    *(v99 + 24) = 0x80;
                    v113[0] = v98;
                    v100 = v98;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
                    swift_dynamicCast();
                    v101 = v118;
                    v102 = v119;
                    v103 = v120;
                    v104 = v121;
                    v114 = v118;
                    v115 = v119;
                    v116 = v120;
                    v117 = v121;
                    sub_1AE4C78AC();
                    swift_willThrowTypedImpl();

                    swift_allocError();
                    *v105 = v101;
                    *(v105 + 8) = v102;
                    *(v105 + 16) = v103;
                    *(v105 + 24) = v104;
                    swift_unexpectedError();
                    __break(1u);
LABEL_259:
                    v119 = 0;
                    v120 = 0;
                    v118 = 1;
                    LOBYTE(v121) = 0x80;
                    sub_1AE4C78AC();
                  }
                }

                v73 = v46;
                v23 = bswap64(*&v29[v55]);
              }
            }

            else
            {
              v9 = v107;
              if (v49)
              {
                if (!v29)
                {
                  goto LABEL_251;
                }

                v73 = v46;
                v23 = bswap32(*&v29[v55]) >> 16;
              }

              else
              {
                if (!v29)
                {
                  goto LABEL_252;
                }

                v73 = v46;
                v23 = v29[v55];
              }
            }

            v86 = v11 + v6;
            if (__OFADD__(v11, v6))
            {
              goto LABEL_228;
            }

            v87 = v50 * v86;
            if ((v50 * v86) >> 64 != (v50 * v86) >> 63)
            {
              goto LABEL_232;
            }

            if (__OFADD__(v87, v50))
            {
              goto LABEL_236;
            }

            if (v52 < v58)
            {
              goto LABEL_238;
            }

            if (v52 < v72)
            {
              goto LABEL_241;
            }

            if (v54 < v87 + v50)
            {
              goto LABEL_257;
            }

            v118 = v58;
            v119 = v72;
            v120 = v29;
            v121 = v73;
            sub_1AE4EB230();
            v88 = v114 + v87;
            if (__OFADD__(v114, v87))
            {
              goto LABEL_242;
            }

            if (__OFADD__(v88, v50))
            {
              goto LABEL_244;
            }

            if (v52 < v88 + v50)
            {
              goto LABEL_257;
            }

            if (v49 <= 1u)
            {
              if (v49)
              {
                goto LABEL_159;
              }

LABEL_175:
              v81 = v29[v88];
              v7 = a4;

LABEL_179:
              v8 = a3;
              goto LABEL_186;
            }

LABEL_176:
            if (v49 == 2)
            {
              v92 = *&v29[v88];
              v7 = a4;

              v81 = bswap32(v92);
            }

            else
            {
              v93 = *&v29[v88];
              v7 = a4;

              v81 = bswap64(v93);
            }

            goto LABEL_179;
          }

          memset(v113, 0, 14);
          if (a5 > 0)
          {
            goto LABEL_196;
          }

          v40 = *(v7 + 33);
          v41 = qword_1AE4ED448[v40];
          v42 = v41 * v11;
          if ((v41 * v11) >> 64 != (v41 * v11) >> 63)
          {
            goto LABEL_198;
          }

          if (__OFADD__(v42, v41))
          {
            goto LABEL_203;
          }

          if (a5 < 0)
          {
            goto LABEL_207;
          }

          if (v42 + v41 >= 1)
          {
            goto LABEL_259;
          }

          v118 = 0;
          v119 = 0;
          v120 = v113;
          v121 = v113;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
          sub_1AE4EB230();
          v43 = v114 + v42;
          if (__OFADD__(v114, v42))
          {
            goto LABEL_211;
          }

          if (__OFADD__(v43, v41))
          {
            goto LABEL_215;
          }

          if (v43 + v41 >= 1)
          {
            goto LABEL_257;
          }

          if (v40 > 1u)
          {
            if (v40 == 2)
            {
              v23 = bswap32(*(v113 + v43));
            }

            else
            {
              v23 = bswap64(*(v113 + v43));
            }
          }

          else if (v40)
          {
            v23 = bswap32(*(v113 + v43)) >> 16;
          }

          else
          {
            v23 = *(v113 + v43);
          }

          v83 = v11 + v6;
          if (__OFADD__(v11, v6))
          {
            goto LABEL_219;
          }

          v84 = v41 * v83;
          if ((v41 * v83) >> 64 != (v41 * v83) >> 63)
          {
            goto LABEL_222;
          }

          if (__OFADD__(v84, v41))
          {
            goto LABEL_227;
          }

          if (v84 + v41 > 0)
          {
            goto LABEL_257;
          }

          v118 = 0;
          v119 = 0;
          v120 = v113;
          v121 = v113;
          sub_1AE4EB230();
          v85 = v114 + v84;
          if (__OFADD__(v114, v84))
          {
            goto LABEL_231;
          }

          if (__OFADD__(v85, v41))
          {
            goto LABEL_235;
          }

          if (v85 + v41 >= 1)
          {
            goto LABEL_257;
          }

          if (v40 <= 1u)
          {
            if (!v40)
            {
              v81 = *(v113 + v85);
              goto LABEL_140;
            }

            v94 = *(v113 + v85);
            goto LABEL_183;
          }

          if (v40 == 2)
          {
            v82 = *(v113 + v85);
            goto LABEL_143;
          }

          v95 = *(v113 + v85);
        }

        else
        {
          if (v14)
          {
            v32 = v12;
            v33 = v12 >> 32;
            v34 = v33 - v32;
            if (v33 < v32)
            {
              __break(1u);
LABEL_195:
              __break(1u);
LABEL_196:
              __break(1u);
LABEL_197:
              __break(1u);
LABEL_198:
              __break(1u);
LABEL_199:
              __break(1u);
LABEL_200:
              __break(1u);
LABEL_201:
              __break(1u);
LABEL_202:
              __break(1u);
LABEL_203:
              __break(1u);
LABEL_204:
              __break(1u);
LABEL_205:
              __break(1u);
LABEL_206:
              __break(1u);
LABEL_207:
              __break(1u);
LABEL_208:
              __break(1u);
LABEL_209:
              __break(1u);
LABEL_210:
              __break(1u);
LABEL_211:
              __break(1u);
LABEL_212:
              __break(1u);
LABEL_213:
              __break(1u);
LABEL_214:
              __break(1u);
LABEL_215:
              __break(1u);
LABEL_216:
              __break(1u);
LABEL_217:
              __break(1u);
LABEL_218:
              __break(1u);
LABEL_219:
              __break(1u);
LABEL_220:
              __break(1u);
LABEL_221:
              __break(1u);
LABEL_222:
              __break(1u);
LABEL_223:
              __break(1u);
LABEL_224:
              __break(1u);
LABEL_225:
              __break(1u);
LABEL_226:
              __break(1u);
LABEL_227:
              __break(1u);
LABEL_228:
              __break(1u);
LABEL_229:
              __break(1u);
LABEL_230:
              __break(1u);
LABEL_231:
              __break(1u);
LABEL_232:
              __break(1u);
LABEL_233:
              __break(1u);
LABEL_234:
              __break(1u);
LABEL_235:
              __break(1u);
LABEL_236:
              __break(1u);
LABEL_237:
              __break(1u);
LABEL_238:
              __break(1u);
LABEL_239:
              __break(1u);
LABEL_240:
              __break(1u);
LABEL_241:
              __break(1u);
LABEL_242:
              __break(1u);
LABEL_243:
              __break(1u);
LABEL_244:
              __break(1u);
LABEL_245:
              __break(1u);
LABEL_246:
              __break(1u);
LABEL_247:
              __break(1u);
LABEL_248:
              __break(1u);
            }

            v35 = sub_1AE4EA990();
            if (v35)
            {
              v36 = v35;
              v37 = sub_1AE4EA9B0();
              v38 = v32 - v37;
              if (__OFSUB__(v32, v37))
              {
                goto LABEL_247;
              }

              v39 = v10 - 1;
              v29 = (v38 + v36);
            }

            else
            {
              v39 = v10 - 1;
              v29 = 0;
            }

            v59 = sub_1AE4EA9A0();
            if (v59 >= v34)
            {
              v60 = v34;
            }

            else
            {
              v60 = v59;
            }

            v61 = &v29[v60];
            if (v29)
            {
              v62 = v60;
            }

            else
            {
              v62 = 0;
            }

            if (v29)
            {
              v63 = &v29[v60];
            }

            else
            {
              v63 = 0;
            }

            if (v62 < v112)
            {
              goto LABEL_200;
            }

            v49 = *(v7 + 33);
            v64 = qword_1AE4ED448[v49];
            v65 = v64 * v39;
            v108 = v39;
            if ((v64 * v39) >> 64 != (v64 * v39) >> 63)
            {
              goto LABEL_205;
            }

            if (__OFADD__(v65, v64))
            {
              goto LABEL_209;
            }

            v66 = v63 - v29;
            if (v29)
            {
              v67 = v63 - v29;
            }

            else
            {
              v67 = 0;
            }

            if (v112 < 0 || v67 < v112)
            {
              goto LABEL_213;
            }

            if (v67 < v62)
            {
              goto LABEL_216;
            }

            if (v62 - v112 < v65 + v64)
            {
              goto LABEL_257;
            }

            v68 = v62 - v112;
            v118 = v112;
            v119 = v62;
            v120 = v29;
            v121 = v63;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
            sub_1AE4EB230();
            v69 = v114 + v65;
            if (__OFADD__(v114, v65))
            {
              goto LABEL_221;
            }

            v70 = v69 + v64;
            if (__OFADD__(v69, v64))
            {
              goto LABEL_225;
            }

            if (v29)
            {
              v57 = v66 < v70;
              v6 = a6;
              v71 = v112;
              if (v57)
              {
                goto LABEL_257;
              }
            }

            else
            {
              v57 = v70 < 1;
              v6 = a6;
              v71 = v112;
              if (!v57)
              {
                goto LABEL_257;
              }
            }

            LODWORD(v49) = v49;
            v74 = v60;
            if (v49 > 1u)
            {
              v75 = v66;
              v76 = v108;
              if (v49 == 2)
              {
                if (!v29)
                {
                  goto LABEL_254;
                }

                v77 = v61;
                v23 = bswap32(*&v29[v69]);
              }

              else
              {
                if (!v29)
                {
                  goto LABEL_253;
                }

                v77 = v61;
                v23 = bswap64(*&v29[v69]);
              }
            }

            else
            {
              v75 = v66;
              v76 = v108;
              if (v49)
              {
                if (!v29)
                {
                  goto LABEL_255;
                }

                v77 = v61;
                v23 = bswap32(*&v29[v69]) >> 16;
              }

              else
              {
                if (!v29)
                {
                  goto LABEL_256;
                }

                v77 = v61;
                v23 = v29[v69];
              }
            }

            v90 = v76 + v6;
            if (__OFADD__(v76, v6))
            {
              goto LABEL_229;
            }

            v91 = v64 * v90;
            if ((v64 * v90) >> 64 != (v64 * v90) >> 63)
            {
              goto LABEL_233;
            }

            if (__OFADD__(v91, v64))
            {
              goto LABEL_237;
            }

            if (v75 < v71)
            {
              goto LABEL_239;
            }

            if (v75 < v74)
            {
              goto LABEL_240;
            }

            if (v68 < v91 + v64)
            {
              goto LABEL_257;
            }

            v118 = v71;
            v119 = v74;
            v120 = v29;
            v121 = v77;
            sub_1AE4EB230();
            v88 = v114 + v91;
            if (__OFADD__(v114, v91))
            {
              goto LABEL_243;
            }

            if (__OFADD__(v88, v64))
            {
              goto LABEL_245;
            }

            if (v75 < v88 + v64)
            {
              goto LABEL_257;
            }

            if (v49 <= 1u)
            {
              if (!v49)
              {
                goto LABEL_175;
              }

LABEL_159:
              v89 = *&v29[v88];
              v7 = a4;

              v81 = bswap32(v89) >> 16;
              goto LABEL_179;
            }

            goto LABEL_176;
          }

          v113[0] = *(v7 + 16);
          LOWORD(v113[1]) = v13;
          BYTE2(v113[1]) = BYTE2(v13);
          BYTE3(v113[1]) = BYTE3(v13);
          v15 = v13 >> 40;
          BYTE4(v113[1]) = BYTE4(v13);
          v16 = BYTE6(v13);
          BYTE5(v113[1]) = v15;
          v17 = v16 - a5;
          if (v16 < a5)
          {
            goto LABEL_195;
          }

          v18 = *(v7 + 33);
          v19 = qword_1AE4ED448[v18];
          v20 = v19 * v11;
          if ((v19 * v11) >> 64 != (v19 * v11) >> 63)
          {
            goto LABEL_199;
          }

          if (__OFADD__(v20, v19))
          {
            goto LABEL_202;
          }

          if (a5 < 0)
          {
            goto LABEL_206;
          }

          if (v17 < v20 + v19)
          {
            goto LABEL_259;
          }

          v118 = a5;
          v119 = v16;
          v120 = v113;
          v121 = v113 + v16;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
          sub_1AE4EB230();
          v21 = v114 + v20;
          if (__OFADD__(v114, v20))
          {
            goto LABEL_210;
          }

          if (__OFADD__(v21, v19))
          {
            goto LABEL_214;
          }

          if (v16 < v21 + v19)
          {
            goto LABEL_257;
          }

          v6 = a6;
          v22 = v17;
          if (v18 > 1u)
          {
            if (v18 == 2)
            {
              v23 = bswap32(*(v113 + v21));
            }

            else
            {
              v23 = bswap64(*(v113 + v21));
            }
          }

          else if (v18)
          {
            v23 = bswap32(*(v113 + v21)) >> 16;
          }

          else
          {
            v23 = *(v113 + v21);
          }

          v78 = v11 + a6;
          if (__OFADD__(v11, a6))
          {
            goto LABEL_218;
          }

          v79 = v19 * v78;
          if ((v19 * v78) >> 64 != (v19 * v78) >> 63)
          {
            goto LABEL_223;
          }

          if (__OFADD__(v79, v19))
          {
            goto LABEL_226;
          }

          if (v22 < v79 + v19)
          {
            goto LABEL_257;
          }

          v118 = v112;
          v119 = v16;
          v120 = v113;
          v121 = v113 + v16;
          sub_1AE4EB230();
          v80 = v114 + v79;
          if (__OFADD__(v114, v79))
          {
            goto LABEL_230;
          }

          if (__OFADD__(v80, v19))
          {
            goto LABEL_234;
          }

          if (v16 < v80 + v19)
          {
            goto LABEL_257;
          }

          v8 = a3;
          if (v18 <= 1u)
          {
            if (!v18)
            {
              v81 = *(v113 + v80);
              v7 = a4;
LABEL_140:

              goto LABEL_186;
            }

            v94 = *(v113 + v80);
            v7 = a4;
LABEL_183:

            v81 = bswap32(v94) >> 16;
            goto LABEL_186;
          }

          if (v18 == 2)
          {
            v82 = *(v113 + v80);
            v7 = a4;
LABEL_143:

            v81 = bswap32(v82);
            goto LABEL_186;
          }

          v95 = *(v113 + v80);
          v7 = a4;
        }

        v81 = bswap64(v95);
LABEL_186:
        *v9 = v7;
        *(v9 + 8) = v23;
        *(v9 + 16) = 1;
        *(v9 + 24) = v7;
        *(v9 + 32) = v81;
        if (v8 == v10)
        {
          swift_retain_n();
          a5 = v112;
          break;
        }

        v9 += 40;
        swift_retain_n();
        v30 = __OFADD__(v10++, 1);
        a5 = v112;
        if (v30)
        {
          __break(1u);
          goto LABEL_190;
        }
      }
    }
  }

  else
  {
LABEL_190:
    v8 = 0;
  }

  *a1 = v7;
  a1[1] = a5;
  a1[2] = v6;
  a1[3] = v8;
  v96 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t sub_1AE4C8E00(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  v8 = a4 >> 5;
  if (v8 <= 1)
  {
    if (a4 >> 5)
    {
      if ((a8 & 0xE0) == 0x20)
      {
        return a1 == a5;
      }
    }

    else if (a8 <= 0x1Fu)
    {
      return a1 == a5;
    }

    return 0;
  }

  if (v8 == 2)
  {
    if ((a8 & 0xE0) == 0x40)
    {
      if (a4)
      {
        return (a8 & 1) != 0;
      }

      if ((a8 & 1) == 0)
      {
        if (a1)
        {
          if (!a5 || a1 != a5)
          {
            return 0;
          }
        }

        else if (a5)
        {
          return 0;
        }

        if (a2)
        {
          if (a6 && a2 == a6 && a3 == a7)
          {
            return 1;
          }
        }

        else if (!a6 && a3 == a7)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (v8 != 3)
  {
    v10 = a3 | a2;
    if (a3 | a2 | a1 || a4 != 128)
    {
      if (a4 == 128 && a1 == 1 && !v10)
      {
        if ((a8 & 0xE0) == 0x80 && a8 == 128 && a5 == 1 && !(a7 | a6))
        {
          return 1;
        }
      }

      else if (a4 == 128 && a1 == 2 && !v10)
      {
        if ((a8 & 0xE0) == 0x80 && a8 == 128 && a5 == 2 && !(a7 | a6))
        {
          return 1;
        }
      }

      else if (a4 == 128 && a1 == 3 && !v10)
      {
        if ((a8 & 0xE0) == 0x80 && a8 == 128 && a5 == 3 && !(a7 | a6))
        {
          return 1;
        }
      }

      else if (a4 == 128 && a1 == 4 && !v10)
      {
        if ((a8 & 0xE0) == 0x80 && a8 == 128 && a5 == 4 && !(a7 | a6))
        {
          return 1;
        }
      }

      else if (a4 == 128 && a1 == 5 && !v10)
      {
        if ((a8 & 0xE0) == 0x80 && a8 == 128 && a5 == 5 && !(a7 | a6))
        {
          return 1;
        }
      }

      else if (a4 == 128 && a1 == 6 && !v10)
      {
        if ((a8 & 0xE0) == 0x80 && a8 == 128 && a5 == 6 && !(a7 | a6))
        {
          return 1;
        }
      }

      else if ((a8 & 0xE0) == 0x80 && a8 == 128 && a5 == 7 && !(a7 | a6))
      {
        return 1;
      }
    }

    else if ((a8 & 0xE0) == 0x80 && !(a7 | a6 | a5) && a8 == 128)
    {
      return 1;
    }

    return 0;
  }

  if ((a8 & 0xE0) != 0x60)
  {
    return 0;
  }

  if (a1 == a5 && a2 == a6)
  {
    return 1;
  }

  else
  {
    return sub_1AE4EB190();
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1AE4C915C()
{
  result = qword_1EB5DD2C0;
  if (!qword_1EB5DD2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DD2C0);
  }

  return result;
}

uint64_t sub_1AE4C91C8(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AE4C9280(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if (a2)
  {
    v3 = a3 - result;
    if (a3 - result >= (a2 - 1))
    {
      v3 = a2 - 1;
    }

    if (v3 >= (result ^ 0x7FFFFFFFFFFFFFFFuLL))
    {
      v3 = result ^ 0x7FFFFFFFFFFFFFFFLL;
    }

    v4 = v3 + 1;
    if (v4 >= 5)
    {
      v7 = v4 & 3;
      if ((v4 & 3) == 0)
      {
        v7 = 4;
      }

      v5 = v4 - v7;
      v8 = 0uLL;
      v9 = result;
      v10 = vdupq_n_s64(1uLL);
      v11 = v5;
      do
      {
        v8 = vaddq_s64(v8, v10);
        v9 = vaddq_s64(v9, v10);
        v11 -= 4;
      }

      while (v11);
      v6 = vaddvq_s64(vpaddq_s64(v9, v8));
    }

    else
    {
      v5 = 0;
      v6 = result;
    }

    v12 = v5 + result - 0x7FFFFFFFFFFFFFFFLL;
    v13 = v5 + result - a3;
    v14 = a2 - v5;
    result = v6;
    while (1)
    {
      if (!v13)
      {
        return 0;
      }

      if (!v12)
      {
        break;
      }

      ++result;
      ++v12;
      ++v13;
      if (!--v14)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_1AE4C9350(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < a3 || (a3 | result) < 0 || a4 < result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = a3 - result;
  if (a2 >= 1)
  {
    if (v4 < 0 || v4 >= a2)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v4 <= 0 && v4 > a2)
  {
    return 0;
  }

LABEL_11:
  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (result < 0 || result > a4)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_1AE4C93C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_1AE4C9430()
{
  result = qword_1EB5DD0B0;
  if (!qword_1EB5DD0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DD0B0);
  }

  return result;
}

const char *sub_1AE4C9494@<X0>(const char *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    result = strncmp(result, v3, *(v2 + 32));
    *a2 = result == 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1AE4C94DC()
{
  result = qword_1EB5DD2E0[0];
  if (!qword_1EB5DD2E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5DD2E0);
  }

  return result;
}

unint64_t sub_1AE4C9530()
{
  result = qword_1EB5DCF98;
  if (!qword_1EB5DCF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DCF98);
  }

  return result;
}

uint64_t sub_1AE4C9584()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE4C95F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AE4C9610(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_1AE4C964C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_4Dyld11BPListErrorO(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = v1;
  v3 = v1 >> 5;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 4);
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1AE4C96CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 25))
  {
    return (*a1 + 124);
  }

  v3 = ((*(a1 + 24) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 24) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1AE4C9720(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_1AE4C978C(uint64_t result, unsigned int a2)
{
  if (a2 < 4)
  {
    *(result + 24) = *(result + 24) & 1 | (32 * a2);
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 4;
    *(result + 24) = 0x80;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1AE4C9898()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE4C98EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AE4C9934(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AE4C9988()
{
  result = qword_1EB5DD368;
  if (!qword_1EB5DD368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DD368);
  }

  return result;
}

unint64_t sub_1AE4C99E0()
{
  result = qword_1EB5DD370;
  if (!qword_1EB5DD370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DD370);
  }

  return result;
}

unint64_t sub_1AE4C9A68()
{
  result = qword_1EB5DD388;
  if (!qword_1EB5DD388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DD388);
  }

  return result;
}

unint64_t sub_1AE4C9B04()
{
  result = qword_1EB5DD3A0;
  if (!qword_1EB5DD3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DD3A0);
  }

  return result;
}

unint64_t sub_1AE4C9BD4()
{
  result = qword_1EB5DD3B8;
  if (!qword_1EB5DD3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DD3B8);
  }

  return result;
}

uint64_t sub_1AE4C9C60(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5DD380, &qword_1AE4ED298);
    sub_1AE4C9A68();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AE4C9D20(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5DD398, &qword_1AE4ED2A0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AE4C9D98()
{
  result = qword_1EB5DD3D0;
  if (!qword_1EB5DD3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DD3D0);
  }

  return result;
}

uint64_t sub_1AE4C9DEC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AE4C9E34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AE4C9F0C(uint64_t a1)
{
  v2 = sub_1AE4D735C();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1AE4C9F48(uint64_t a1)
{
  v2 = sub_1AE4D735C();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1AE4C9F84()
{
  v0 = qword_1EB5DD4A0;

  return v0;
}

uint64_t sub_1AE4C9FD0(uint64_t a1)
{
  v3 = type metadata accessor for Image.Info(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AE4BA6DC();
  sub_1AE4B55F8(v7);
  v9 = &v7[*(v4 + 36)];
  v10 = *v9;
  v11 = v9[8];
  sub_1AE4DB5C0(v7, type metadata accessor for Image.Info);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  v13 = sub_1AE4AC6E0(1936156019, 0xE400000000000000, 0, *(a1 + OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist), *(a1 + OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist + 8), *(a1 + OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist + 16));
  if (!v13)
  {
    goto LABEL_18;
  }

  v7 = sub_1AE4B9FBC(v13);
  v1 = v15;
  v11 = v16;

  v17 = sub_1AE4DC3F8(v7, v1, v11, a1, v8 - v12);

  if (!(v17 >> 62))
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_7;
    }

LABEL_15:

    return MEMORY[0x1E69E7CC0];
  }

  v18 = sub_1AE4EB150();
  if (!v18)
  {
    goto LABEL_15;
  }

LABEL_7:
  v25 = MEMORY[0x1E69E7CC0];
  sub_1AE4EB0F0();
  if (v18 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    v23 = v14;
    sub_1AE4C78AC();
    swift_allocError();
    *v24 = v7;
    *(v24 + 8) = v1;
    *(v24 + 16) = v11;
    *(v24 + 24) = v23;
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v19 = 0;
  do
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B2701540](v19, v17);
    }

    else
    {
      v21 = *(v17 + 8 * v19 + 32);
    }

    ++v19;
    sub_1AE4EB0D0();
    v20 = *(v25 + 16);
    sub_1AE4EB100();
    sub_1AE4EB110();
    sub_1AE4EB0E0();
  }

  while (v18 != v19);

  return v25;
}

uint64_t sub_1AE4CA244(uint64_t a1, uint64_t a2, int64_t a3)
{
  v73 = *MEMORY[0x1E69E9840];
  if (a3 < 0)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    *(&v69 + 6) = 0;
    *&v69 = 0;
    if (v6 > 0)
    {
      __break(1u);
LABEL_85:
      v49 = v4 + v6;
      goto LABEL_86;
    }

    if (v6 < 0)
    {
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      if (v5)
      {
        goto LABEL_88;
      }

      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      if (!v5)
      {
        __break(1u);
      }

      goto LABEL_88;
    }

    *&v71 = &v69;
    *(&v71 + 1) = &v69;
    *&v72 = 1;
    BYTE8(v72) = 64;
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();
    v45 = swift_allocError();
    *v56 = &v69;
    *(v56 + 8) = &v69;
    *(v56 + 16) = 1;
    *(v56 + 24) = 64;
    while (1)
    {
LABEL_87:
      v67 = v45;
      v51 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
      swift_dynamicCast();
      v52 = *(&v71 + 1);
      v5 = v71;
      v53 = v72;
      v54 = BYTE8(v72);
      v69 = v71;
      *&v70 = v72;
      BYTE8(v70) = BYTE8(v72);
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();

      swift_allocError();
      *v55 = v5;
      *(v55 + 8) = v52;
      *(v55 + 16) = v53;
      *(v55 + 24) = v54;
      swift_unexpectedError();
      __break(1u);
LABEL_88:
      v49 = &v5[v6];
      v5 += v3;
LABEL_86:
      *&v69 = v49;
      *(&v69 + 1) = v5;
      *&v70 = 1;
      BYTE8(v70) = 64;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();
      v45 = swift_allocError();
      *v50 = v49;
      *(v50 + 8) = v5;
      *(v50 + 16) = 1;
      *(v50 + 24) = 64;
    }
  }

  v7 = a3;
  v8 = MEMORY[0x1E69E7CC0];
  if (a3)
  {
    v68 = MEMORY[0x1E69E7CC0];
    sub_1AE4D85BC(0, a3, 0);
    v9 = 0;
    v8 = v68;
    v4 = &v61;
    v57 = v7;
    while (1)
    {
      if (v7 == v9)
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      v10 = sub_1AE4B9974(v9, a1, a2, v7);
      v11 = *(v10 + 72);
      v12 = (*(v10 + 64))();
      v6 = v12;
      v13 = *(v10 + 16);
      v14 = *(v10 + 24);
      v3 = v14 >> 62;
      if ((v14 >> 62) > 1)
      {
        break;
      }

      if (v3)
      {
        v24 = v13;
        v25 = v13 >> 32;
        v4 = (v25 - v24);
        if (v25 < v24)
        {
          goto LABEL_58;
        }

        v5 = sub_1AE4EA990();
        if (v5)
        {
          v26 = sub_1AE4EA9B0();
          if (__OFSUB__(v24, v26))
          {
            goto LABEL_68;
          }

          v5 += v24 - v26;
        }

        v27 = sub_1AE4EA9A0();
        if (v27 >= v4)
        {
          v28 = v4;
        }

        else
        {
          v28 = v27;
        }

        v21 = &v5[v28];
        if (v5)
        {
          v29 = v21;
        }

        else
        {
          v29 = 0;
        }

        v3 = v29 - v5;
        if (v5)
        {
          v30 = v3;
        }

        else
        {
          v30 = 0;
        }

        v7 = v57;
        if (v30 < v6)
        {
          goto LABEL_62;
        }

        if (v6 < 0)
        {
          goto LABEL_64;
        }

        if (v30 <= v6)
        {
          goto LABEL_74;
        }

        if (!v5)
        {
          goto LABEL_73;
        }

        if (v3 <= v6)
        {
          goto LABEL_65;
        }

        goto LABEL_49;
      }

      v61 = *(v10 + 16);
      v62 = v14;
      v63 = BYTE2(v14);
      v3 = HIDWORD(v14);
      v64 = BYTE3(v14);
      v65 = BYTE4(v14);
      v66 = BYTE5(v14);
      if (BYTE6(v14) < v12)
      {
        goto LABEL_57;
      }

      if (v12 < 0)
      {
        goto LABEL_60;
      }

      v5 = &v61 + BYTE6(v14);
      if (BYTE6(v14) <= v12)
      {
        goto LABEL_85;
      }

      v15 = *(&v61 + v12);
      *&v71 = v12 + 1;
      *(&v71 + 1) = BYTE6(v14);
      *&v72 = &v61;
      *(&v72 + 1) = &v61 + BYTE6(v14);
LABEL_50:
      sub_1AE4A65CC(v15);
      v6 = v34;
      if (v60)
      {
        v42 = v31;
        v43 = v32;
        v44 = v33;
        sub_1AE4C78AC();
        v45 = swift_allocError();
        *v46 = v6;
        *(v46 + 8) = v42;
        *(v46 + 16) = v43;
        *(v46 + 24) = v44;
        goto LABEL_87;
      }

      v60 = 0;
      v35 = v15 >> 4;
      if (v15 >> 4 != 13)
      {
        if (v35 <= 0xA && ((1 << v35) & 0x472) != 0)
        {
          *&v70 = 0;
          v69 = 6uLL;
          BYTE8(v70) = 0x80;
          sub_1AE4C78AC();
          swift_willThrowTypedImpl();
          v45 = swift_allocError();
          *(v47 + 8) = 0;
          *(v47 + 16) = 0;
          *v47 = 6;
          *(v47 + 24) = 0x80;
        }

        else
        {
          sub_1AE4C78AC();
          v45 = swift_allocError();
          *(v48 + 8) = 0;
          *(v48 + 16) = 0;
          *v48 = 0;
          *(v48 + 24) = 0x80;
          swift_willThrow();
        }

        goto LABEL_87;
      }

      v69 = v71;
      v70 = v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
      sub_1AE4EB230();
      v36 = v67;
      v68 = v8;
      v38 = *(v8 + 16);
      v37 = *(v8 + 24);
      v5 = (v38 + 1);
      if (v38 >= v37 >> 1)
      {
        sub_1AE4D85BC((v37 > 1), v38 + 1, 1);
        v8 = v68;
      }

      ++v9;
      *(v8 + 16) = v5;
      v39 = (v8 + 24 * v38);
      v39[4] = v10;
      v39[5] = v36;
      v39[6] = v6;
      v4 = &v61;
      if (v7 == v9)
      {
        goto LABEL_55;
      }
    }

    if (v3 != 2)
    {
      goto LABEL_70;
    }

    v4 = *(v13 + 16);
    v16 = *(v13 + 24);
    v5 = sub_1AE4EA990();
    if (v5)
    {
      v17 = sub_1AE4EA9B0();
      if (__OFSUB__(v4, v17))
      {
        goto LABEL_67;
      }

      v5 = &v5[v4 - v17];
    }

    v18 = __OFSUB__(v16, v4);
    v4 = (v16 - v4);
    if (v18)
    {
      goto LABEL_59;
    }

    v19 = sub_1AE4EA9A0();
    if (v19 >= v4)
    {
      v20 = v4;
    }

    else
    {
      v20 = v19;
    }

    v21 = &v5[v20];
    if (v5)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v3 = v22 - v5;
    if (v5)
    {
      v23 = v3;
    }

    else
    {
      v23 = 0;
    }

    if (v23 < v6)
    {
      goto LABEL_61;
    }

    if (v6 < 0)
    {
      goto LABEL_63;
    }

    if (v23 <= v6)
    {
      goto LABEL_77;
    }

    v7 = v57;
    if (!v5)
    {
      goto LABEL_76;
    }

    if (v3 <= v6)
    {
      goto LABEL_66;
    }

LABEL_49:
    v15 = v5[v6];
    *&v71 = v6 + 1;
    *(&v71 + 1) = v3;
    *&v72 = v5;
    *(&v72 + 1) = v21;
    goto LABEL_50;
  }

LABEL_55:
  v40 = *MEMORY[0x1E69E9840];
  return v8;
}