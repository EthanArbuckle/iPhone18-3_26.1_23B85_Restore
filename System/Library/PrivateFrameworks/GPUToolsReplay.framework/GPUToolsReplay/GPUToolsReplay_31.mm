void AccelerationStructureViewerServer::Profiler::finishSkipFrame(uint64_t a1, void *a2)
{
  v3 = [a2 globalTraceObjectID];
  std::mutex::lock((a1 + 624));
  v4 = (a1 + 688);
  v5 = std::__hash_table<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>>>::find<unsigned int>((a1 + 688), v3);
  if (v5)
  {
    v6 = *(a1 + 696);
    v7 = v5[1];
    v8 = vcnt_s8(v6);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      if (v7 >= *&v6)
      {
        v7 %= *&v6;
      }
    }

    else
    {
      v7 &= *&v6 - 1;
    }

    v9 = *(*v4 + 8 * v7);
    do
    {
      v10 = v9;
      v9 = *v9;
    }

    while (v9 != v5);
    if (v10 == (a1 + 704))
    {
      goto LABEL_19;
    }

    v11 = v10[1];
    if (v8.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v7)
    {
LABEL_19:
      if (!*v5)
      {
        goto LABEL_20;
      }

      v12 = *(*v5 + 8);
      if (v8.u32[0] > 1uLL)
      {
        if (v12 >= *&v6)
        {
          v12 %= *&v6;
        }
      }

      else
      {
        v12 &= *&v6 - 1;
      }

      if (v12 != v7)
      {
LABEL_20:
        *(*v4 + 8 * v7) = 0;
      }
    }

    v13 = *v5;
    if (*v5)
    {
      v14 = *(v13 + 8);
      if (v8.u32[0] > 1uLL)
      {
        if (v14 >= *&v6)
        {
          v14 %= *&v6;
        }
      }

      else
      {
        v14 &= *&v6 - 1;
      }

      if (v14 != v7)
      {
        *(*v4 + 8 * v14) = v10;
        v13 = *v5;
      }
    }

    *v10 = v13;
    *v5 = 0;
    --*(a1 + 712);
    operator delete(v5);
  }

  std::mutex::unlock((a1 + 624));
}

void std::vector<AccelerationStructureViewerServer::APSUSCRayCollector>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 4;

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<AccelerationStructureViewerServer::APSRayCollector>::__on_zero_shared(uint64_t a1)
{
  v2 = (a1 + 88);
  std::vector<AccelerationStructureViewerServer::APSUSCRayCollector>::__destroy_vector::operator()[abi:nn200100](&v2);

  std::condition_variable::~condition_variable((a1 + 24));
}

void std::__shared_ptr_emplace<AccelerationStructureViewerServer::APSRayCollector>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2860BC710;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2530332C0);
}

__n128 __Block_byref_object_copy__9845(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  return result;
}

void __Block_byref_object_dispose__9846(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

void ___ZN33AccelerationStructureViewerServer8Profiler11finishFrameEPU26objcproto15MTLCommandQueue11objc_objectPU35objcproto24MTLComputeCommandEncoder11objc_objectmP18ASVSRenderSettingsPN27AccelerationStructureViewer6SampleE_block_invoke(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = ___ZN33AccelerationStructureViewerServer8Profiler11finishFrameEPU26objcproto15MTLCommandQueue11objc_objectPU35objcproto24MTLComputeCommandEncoder11objc_objectmP18ASVSRenderSettingsPN27AccelerationStructureViewer6SampleE_block_invoke_2;
  v3[3] = &unk_279659168;
  v4 = *(a1 + 32);
  dispatch_async(v2, v3);
}

void ___ZN33AccelerationStructureViewerServer8Profiler11finishFrameEPU26objcproto15MTLCommandQueue11objc_objectPU35objcproto24MTLComputeCommandEncoder11objc_objectmP18ASVSRenderSettingsPN27AccelerationStructureViewer6SampleE_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  std::mutex::lock((v2 + 136));
  v3 = *(v2 + 8);
  if (v3)
  {
    for (i = 0; i < v3; ++i)
    {
      v5 = *(*(*(*(a1 + 32) + 8) + 48) + 64) + 32 * i;
      v7 = *(v5 + 16);
      v6 = (v5 + 16);
      if (v7)
      {
        v8 = *(v2 + 208);
        v9 = *(v2 + 216);
        if (v9 == v8)
        {
          v10 = 0;
        }

        else
        {
          v10 = ((v9 - v8) << 6) - 1;
        }

        v11 = *(v2 + 232);
        if (v10 == *(v2 + 240) + v11)
        {
          v12 = v11 >= 0x200;
          v13 = v11 - 512;
          if (!v12)
          {
            v14 = *(v2 + 224);
            v15 = *(v2 + 200);
            if (v9 - v8 < (v14 - v15))
            {
              operator new();
            }

            if (v14 == v15)
            {
              v16 = 1;
            }

            else
            {
              v16 = (v14 - v15) >> 2;
            }

            std::__allocate_at_least[abi:nn200100]<std::allocator<NSString * {__strong}>>(v16);
          }

          *(v2 + 232) = v13;
          v22 = *v8;
          *(v2 + 208) = v8 + 8;
          std::__split_buffer<objc_object  {objcproto9MTLBuffer}* {__strong}*>::emplace_back<objc_object  {objcproto9MTLBuffer}* {__strong}&>((v2 + 200), &v22);
          v8 = *(v2 + 208);
          v9 = *(v2 + 216);
        }

        if (v9 == v8)
        {
          v18 = 0;
        }

        else
        {
          v17 = *(v2 + 240) + *(v2 + 232);
          v18 = (*&v8[(v17 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v17 & 0x1FF));
        }

        *v18 = *v6;
        ++*(v2 + 240);
        v19 = *v6;
        *v6 = 0;

        v3 = *(v2 + 8);
      }
    }
  }

  std::mutex::unlock((v2 + 136));
  v20 = *(*(a1 + 32) + 8);
  v21 = *(v20 + 56);
  *(v20 + 48) = 0;
  *(v20 + 56) = 0;
  if (v21)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  }
}

void *std::__split_buffer<objc_object  {objcproto9MTLBuffer}* {__strong}*>::emplace_back<objc_object  {objcproto9MTLBuffer}* {__strong}&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<NSString * {__strong}>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

uint64_t non-virtual thunk toAccelerationStructureViewerServer::Server::teardown(AccelerationStructureViewerServer::Server *this, Sampler *a2, NSError *a3)
{
  result = *(this + 2);
  if (result)
  {
    *(this + 2) = 0;
    return (*(*result + 40))(result, this - 8, a3);
  }

  return result;
}

void *AccelerationStructureViewerServer::Server::resume(void *this, Sampler *a2)
{
  if (this[5] >= 7uLL)
  {
    v4 = this;
    this = this[3];
    if (this)
    {
      v6 = v2;
      v7 = v3;
      v5 = 12;
      return (*(*this + 32))(this, v4, 0, 0, &v5, 1);
    }
  }

  return this;
}

void non-virtual thunk toAccelerationStructureViewerServer::Server::pause(AccelerationStructureViewerServer::Server *this, Sampler *a2, NSError *a3)
{
  if (*(this + 4) >= 7uLL)
  {
    AccelerationStructureViewerServer::Server::replyQueryable(this - 8, 11, -1, 0, a3);
  }
}

void AccelerationStructureViewerServer::Server::replyQueryable(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  if (!a4)
  {
    operator new();
  }

  v10 = *(a1 + 40);
  v21[0] = &unk_2860BB6A8;
  v21[1] = v10;
  v22 = 0;
  (*(*a4 + 16))(a4, v21);
  v11 = v22;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  std::vector<unsigned char>::__append(&v18, v22 + 9);
  v12 = v18;
  v13[1] = *(a1 + 40);
  v13[0] = &unk_2860BB6F0;
  v14 = 0;
  v15 = 0;
  v16 = v18 + 9;
  v17 = v11;
  (*(*a4 + 16))(a4, v13);
  if (v15 || v14 != v17)
  {
    operator new();
  }

  *v12 = a2;
  *(v12 + 1) = a3;
  (*(**(a1 + 24) + 32))(*(a1 + 24), a1, 0, 0, v12, v11 + 9);
  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }
}

uint64_t AccelerationStructureViewerServer::Server::setVersion(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 24);
  if (result)
  {
    v4 = 0;
    v5 = a2;
    return (*(*result + 32))(result, a1, 0, 0, &v4, 9);
  }

  return result;
}

void AccelerationStructureViewerServer::Server::receiveQueryRays(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v45 = *MEMORY[0x277D85DE8];
  if (*(a1 + 40) >= 0xBuLL && *(a1 + 24))
  {
    v11 = 400 * a6;
    v12 = malloc_type_malloc(v11 + 17, 0x100004075806E5BuLL);
    v13 = v12;
    *v12 = 17;
    *(v12 + 1) = a3 == 1;
    *(v12 + 5) = a4;
    *(v12 + 13) = a6;
    if (a6)
    {
      v14 = 0;
      v15 = v12;
      do
      {
        v16 = v15 + 405;
        v25 = *(a5 + v14 + 336);
        v26 = *(a5 + v14 + 352);
        v27 = *(a5 + v14 + 368);
        v28 = *(a5 + v14 + 384);
        v21 = *(a5 + v14 + 272);
        v22 = *(a5 + v14 + 288);
        v23 = *(a5 + v14 + 304);
        v24 = *(a5 + v14 + 320);
        v17 = *(a5 + v14 + 408);
        v43 = *(a5 + v14 + 240);
        v44 = *(a5 + v14 + 256);
        v41 = *(a5 + v14 + 208);
        v42 = *(a5 + v14 + 224);
        v39 = *(a5 + v14 + 176);
        v40 = *(a5 + v14 + 192);
        v37 = *(a5 + v14 + 144);
        v38 = *(a5 + v14 + 160);
        v35 = *(a5 + v14 + 112);
        v36 = *(a5 + v14 + 128);
        v33 = *(a5 + v14 + 80);
        v34 = *(a5 + v14 + 96);
        v31 = *(a5 + v14 + 48);
        v32 = *(a5 + v14 + 64);
        v29 = *(a5 + v14 + 16);
        v30 = *(a5 + v14 + 32);
        v18 = *(a5 + v14 + 400);
        *(v15 + 17) = *(a5 + v14 + 8);
        *(v15 + 213) = v41;
        *(v15 + 229) = v42;
        *(v15 + 245) = v43;
        *(v15 + 261) = v44;
        *(v15 + 149) = v37;
        *(v15 + 165) = v38;
        *(v15 + 181) = v39;
        *(v15 + 197) = v40;
        *(v15 + 85) = v33;
        *(v15 + 101) = v34;
        *(v15 + 117) = v35;
        *(v15 + 133) = v36;
        *(v15 + 21) = v29;
        *(v15 + 37) = v30;
        *(v15 + 53) = v31;
        *(v15 + 69) = v32;
        *(v15 + 341) = v25;
        *(v15 + 357) = v26;
        *(v15 + 373) = v27;
        *(v15 + 389) = v28;
        *(v15 + 277) = v21;
        *(v15 + 293) = v22;
        *(v15 + 309) = v23;
        *(v15 + 325) = v24;
        *(v15 + 405) = v18;
        v14 += 416;
        v15 += 400;
        *(v16 + 2) = v17;
      }

      while (416 * a6 != v14);
    }

    (*(**(a1 + 24) + 32))(*(a1 + 24), a1, 0, 0, v12, v11 + 17);
    v19 = *MEMORY[0x277D85DE8];

    free(v13);
  }

  else
  {
    v20 = *MEMORY[0x277D85DE8];
  }
}

void AccelerationStructureViewerServer::Server::receiveSample(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v331 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 40);
  if (v7 <= 8)
  {
    v8 = 16;
  }

  else
  {
    v8 = 256;
  }

  v9 = [*(a3 + 608) width];
  v10 = v8 - 1;
  if (*(a1 + 40) >= 6uLL)
  {
    v11 = ((v8 - ((4 * v9) & (v8 - 1))) & (v8 - 1)) + 4 * v9;
  }

  else
  {
    v11 = 4 * v9;
  }

  v12 = 16 * [*(a3 + 608) width];
  v13 = 16 * [*(a3 + 624) width];
  v14 = 16 * [*(a3 + 632) width];
  v15 = 4 * [*(a3 + 640) width];
  v16 = [*(a3 + 648) width];
  v17 = *(a1 + 40);
  v18 = ((v8 - (v14 & v10)) & v10) + v14;
  v19 = ((v8 - (v15 & v10)) & v10) + v15;
  v20 = ((v8 - (v16 & v10)) & v10) + v16;
  if (v17 >= 9)
  {
    v21 = ((v8 - (v13 & v10)) & v10) + v13;
  }

  else
  {
    v20 = v16;
    v19 = v15;
    v18 = v14;
    v21 = v13;
  }

  if (v17 >= 9)
  {
    v22 = ((v8 - (v12 & v10)) & v10) + v12;
  }

  else
  {
    v22 = v12;
  }

  if (!v17 || !*(a1 + 24))
  {
    goto LABEL_31;
  }

  if (v17 >= 3)
  {
    v118 = v22;
    if (v17 <= 0xA)
    {
      if (v17 != 10)
      {
        if (v17 <= 7)
        {
          v24 = 0;
          v23 = 0;
          if (v17 <= 4)
          {
            v37 = 172;
          }

          else
          {
            v37 = 176;
          }
        }

        else
        {
          v24 = 0;
          v23 = 0;
          v37 = 177;
        }

LABEL_42:
        v110 = v21;
        v111 = v19;
        v112 = v20;
        v106 = v18;
        v3 = *(a3 + 4);
        v51 = *(a3 + 608);
        if (v51)
        {
          v52 = v8 - (v37 & (v8 - 1));
          v44 = v37 + v52;
          v37 = v44 + [v51 height] * v11;
          v53 = 1;
        }

        else
        {
          v52 = 0;
          v53 = 0;
          v44 = 0;
        }

        v108 = v11;
        v54 = *(a3 + 616);
        if (v54)
        {
          v53 |= 2u;
          v55 = v8 - (v37 & (v8 - 1));
          v119 = v37 + v55;
          v37 = v119 + [v54 height] * v118;
        }

        else
        {
          v55 = 0;
          v119 = 0;
        }

        v56 = *(a1 + 40);
        v115 = v55;
        v116 = v52;
        if (v56 < 0xB)
        {
          v60 = *(a3 + 624);
          if (v60)
          {
            v61 = [v60 height];
            v53 |= 4u;
            v62 = v8 - (v37 & (v8 - 1));
            v117 = v37 + v62;
            v37 = v117 + v61 * v110;
            v56 = *(a1 + 40);
          }

          else
          {
            v62 = 0;
            v117 = 0;
          }

          v114 = v62;
          if (v56 >= 8 && (v64 = *(a3 + 632)) != 0)
          {
            v65 = [v64 height];
            v104 = 0;
            v105 = 0;
            v107 = v53 | 8;
            v66 = v8 - (v37 & (v8 - 1));
            v101 = v37 + v66;
            v37 = v101 + v65 * v106;
            v113 = v66;
          }

          else
          {
            v107 = v53;
            v113 = 0;
            v104 = 0;
            v105 = 0;
            v101 = 0;
          }
        }

        else
        {
          v57 = *(a3 + 640);
          if (v57)
          {
            v58 = [v57 height];
            v53 |= 4u;
            v59 = v8 - (v37 & (v8 - 1));
            v104 = v37 + v59;
            v37 = v104 + v58 * v111;
          }

          else
          {
            v59 = 0;
            v104 = 0;
          }

          v114 = v59;
          v63 = *(a3 + 648);
          if (v63)
          {
            v101 = 0;
            v117 = 0;
            v107 = v53 | 8;
            v113 = v8 - (v37 & (v8 - 1));
            v105 = v37 + v113;
            v37 = v105 + [v63 height] * v112;
          }

          else
          {
            v107 = v53;
            v113 = 0;
            v105 = 0;
            v101 = 0;
            v117 = 0;
          }
        }

        goto LABEL_62;
      }

      v24 = 0;
      v23 = 0;
      v37 = 180;
    }

    else
    {
      if (*(a3 + 16) >= 7u)
      {
        v23 = 0;
      }

      else
      {
        v23 = *(a3 + 16);
      }

      if (*(a3 + 17) >= 7u)
      {
        v24 = 0;
      }

      else
      {
        v24 = *(a3 + 17);
      }

      v98 = *(a3 + 24);
      v25 = *(a3 + 240);
      v327 = *(a3 + 224);
      v328 = v25;
      v26 = *(a3 + 272);
      v329 = *(a3 + 256);
      v330 = v26;
      v27 = *(a3 + 176);
      v323 = *(a3 + 160);
      v324 = v27;
      v28 = *(a3 + 208);
      v325 = *(a3 + 192);
      v326 = v28;
      v29 = *(a3 + 112);
      v319 = *(a3 + 96);
      v320 = v29;
      v30 = *(a3 + 144);
      v321 = *(a3 + 128);
      v322 = v30;
      v31 = *(a3 + 48);
      v315 = *(a3 + 32);
      v316 = v31;
      v32 = *(a3 + 80);
      v317 = *(a3 + 64);
      v318 = v32;
      v33 = *(a3 + 368);
      v311 = *(a3 + 352);
      v312 = v33;
      v34 = *(a3 + 400);
      v313 = *(a3 + 384);
      v314 = v34;
      v35 = *(a3 + 304);
      v307 = *(a3 + 288);
      v308 = v35;
      v36 = *(a3 + 336);
      v309 = *(a3 + 320);
      v310 = v36;
      v4 = *(a3 + 416);
      v37 = 582;
      v97 = *(a3 + 424);
    }

    v102 = *(a3 + 434);
    v103 = *(a3 + 1);
    goto LABEL_42;
  }

  v38 = *(a3 + 608);
  if (!v38 || !*(a3 + 616) || !*(a3 + 624))
  {
LABEL_31:
    v48 = *(a3 + 8);
    v49 = *(**(a1 + 32) + 88);
    v50 = *MEMORY[0x277D85DE8];

    v49();
    return;
  }

  v111 = v19;
  v112 = v20;
  v106 = v18;
  v108 = v11;
  v39 = [v38 height] * v11;
  v118 = v22;
  v40 = [*(a3 + 616) height] * v22;
  v41 = [*(a3 + 624) height];
  v104 = 0;
  v105 = 0;
  v101 = 0;
  v42 = v8 - (v39 & v10);
  v43 = v8 - (v40 & v10);
  if (v7 <= 8)
  {
    v44 = 192;
  }

  else
  {
    v44 = 256;
  }

  v45 = v39 + v44;
  v24 = 0;
  v46 = v45 + v42;
  v47 = v40 + v43;
  v23 = 0;
  v119 = v46;
  v117 = v46 + v47;
  v110 = v21;
  v37 = v46 + v47 + v41 * v21;
  v113 = v46 + v47;
  v114 = v46 + v47;
  v115 = v46 + v47;
  v116 = v46 + v47;
LABEL_62:
  v120 = 0;
  v121 = &v120;
  v122 = 0x3032000000;
  v123 = __Block_byref_object_copy__9879;
  v124 = __Block_byref_object_dispose__9880;
  v125 = *(a1 + 80);
  dispatch_semaphore_wait(v125, 0xFFFFFFFFFFFFFFFFLL);
  v67 = 0;
  while (1)
  {
    v68 = a1 + 8 * v67;
    if (!dispatch_semaphore_wait(*(v68 + 88), 0))
    {
      break;
    }

    if (++v67 == 4)
    {
      dispatch_semaphore_signal(v121[5]);
      (*(**(a1 + 32) + 88))(*(a1 + 32), *(a3 + 8), 1);
      goto LABEL_84;
    }
  }

  v100 = v24;
  v109 = v44;
  v70 = *(v68 + 120);
  v69 = (v68 + 120);
  v71 = v70;
  v72 = v71;
  v99 = v23;
  if (!v71 || [v71 length] < v37)
  {
    v73 = [*(a1 + 48) newBufferWithLength:v37 options:0];

    objc_storeStrong(v69, v73);
    v72 = v73;
  }

  v74 = [*(a1 + 56) commandBufferWithDescriptor:*(a1 + 64)];
  [v74 setLabel:@"ASVServer"];
  v75 = [v74 blitCommandEncoder];
  v76 = *(a3 + 608);
  if (v76)
  {
    v172 = 0uLL;
    *&v173 = 0;
    v77 = [v76 width];
    v78 = [*(a3 + 608) height];
    *&v161 = v77;
    *(&v161 + 1) = v78;
    *&v162 = 1;
    [v75 copyFromTexture:v76 sourceSlice:0 sourceLevel:0 sourceOrigin:&v172 sourceSize:&v161 toBuffer:v72 destinationOffset:v109 destinationBytesPerRow:v108 destinationBytesPerImage:{objc_msgSend(*(a3 + 608), "height") * v108}];
  }

  v79 = *(a3 + 616);
  if (v79)
  {
    v172 = 0uLL;
    *&v173 = 0;
    v80 = [v79 width];
    v81 = [*(a3 + 616) height];
    *&v161 = v80;
    *(&v161 + 1) = v81;
    *&v162 = 1;
    [v75 copyFromTexture:v79 sourceSlice:0 sourceLevel:0 sourceOrigin:&v172 sourceSize:&v161 toBuffer:v72 destinationOffset:v119 destinationBytesPerRow:v118 destinationBytesPerImage:{objc_msgSend(*(a3 + 616), "height") * v118}];
  }

  v82 = *(a1 + 40);
  if (v82 < 0xB)
  {
    v89 = *(a3 + 624);
    if (v89)
    {
      v172 = 0uLL;
      *&v173 = 0;
      v90 = [v89 width];
      v91 = [*(a3 + 624) height];
      *&v161 = v90;
      *(&v161 + 1) = v91;
      *&v162 = 1;
      [v75 copyFromTexture:v89 sourceSlice:0 sourceLevel:0 sourceOrigin:&v172 sourceSize:&v161 toBuffer:v72 destinationOffset:v117 destinationBytesPerRow:v110 destinationBytesPerImage:{objc_msgSend(*(a3 + 624), "height") * v110}];
      v82 = *(a1 + 40);
    }

    if (v82 >= 8)
    {
      v92 = *(a3 + 632);
      if (v92)
      {
        v172 = 0uLL;
        *&v173 = 0;
        v93 = [v92 width];
        v94 = [*(a3 + 632) height];
        *&v161 = v93;
        *(&v161 + 1) = v94;
        *&v162 = 1;
        [v75 copyFromTexture:v92 sourceSlice:0 sourceLevel:0 sourceOrigin:&v172 sourceSize:&v161 toBuffer:v72 destinationOffset:v101 destinationBytesPerRow:v106 destinationBytesPerImage:{objc_msgSend(*(a3 + 632), "height") * v106}];
      }
    }
  }

  else
  {
    v83 = *(a3 + 640);
    if (v83)
    {
      v172 = 0uLL;
      *&v173 = 0;
      v84 = [v83 width];
      v85 = [*(a3 + 640) height];
      *&v161 = v84;
      *(&v161 + 1) = v85;
      *&v162 = 1;
      [v75 copyFromTexture:v83 sourceSlice:0 sourceLevel:0 sourceOrigin:&v172 sourceSize:&v161 toBuffer:v72 destinationOffset:v104 destinationBytesPerRow:v111 destinationBytesPerImage:{objc_msgSend(*(a3 + 640), "height") * v111}];
    }

    v86 = *(a3 + 648);
    if (v86)
    {
      v172 = 0uLL;
      *&v173 = 0;
      v87 = [v86 width];
      v88 = [*(a3 + 648) height];
      *&v161 = v87;
      *(&v161 + 1) = v88;
      *&v162 = 1;
      [v75 copyFromTexture:v86 sourceSlice:0 sourceLevel:0 sourceOrigin:&v172 sourceSize:&v161 toBuffer:v72 destinationOffset:v105 destinationBytesPerRow:v112 destinationBytesPerImage:{objc_msgSend(*(a3 + 648), "height") * v112}];
    }
  }

  [v75 endEncoding];
  v181[0] = MEMORY[0x277D85DD0];
  v181[1] = 3321888768;
  v181[2] = ___ZN33AccelerationStructureViewerServer6Server13receiveSampleEPN27AccelerationStructureViewer7SamplerENS1_6SampleE_block_invoke;
  v181[3] = &unk_2860BC8A0;
  v186 = a1;
  v187 = v67;
  v188 = v37;
  v184 = v72;
  *&v200[15] = *(v180 + 15);
  v198 = v178;
  v199 = v179;
  *v200 = v180[0];
  v194 = v174;
  v195 = v175;
  v196 = v176;
  v197 = v177;
  v192 = v172;
  v193 = v173;
  v201 = v107;
  v202 = v116;
  v203 = v115;
  v204 = v114;
  v205 = v170;
  v206 = v171;
  v207 = v3;
  v208 = v113;
  v209 = v102;
  v210 = v103;
  v211 = v99;
  v212 = v100;
  v213 = v98;
  v216 = v317;
  v217 = v318;
  v214 = v315;
  v215 = v316;
  v220 = v321;
  v221 = v322;
  v218 = v319;
  v219 = v320;
  v224 = v325;
  v225 = v326;
  v222 = v323;
  v223 = v324;
  v228 = v329;
  v229 = v330;
  v226 = v327;
  v227 = v328;
  v234 = v311;
  v235 = v312;
  v236 = v313;
  v237 = v314;
  v230 = v307;
  v231 = v308;
  v232 = v309;
  v233 = v310;
  v238 = v4;
  v239 = v97;
  v246 = v167;
  v247 = v168;
  *v248 = v169[0];
  *&v248[15] = *(v169 + 15);
  v242 = v163;
  v243 = v164;
  v244 = v165;
  v245 = v166;
  v240 = v161;
  v241 = v162;
  v249 = v107;
  v250 = v116;
  v251 = v115;
  v252 = v114;
  v253 = v159;
  v254 = v160;
  v255 = v3;
  v256 = v113;
  v257 = v102;
  v258 = v103;
  v265 = v156;
  v266 = v157;
  *v267 = v158[0];
  *&v267[15] = *(v158 + 15);
  v261 = v152;
  v262 = v153;
  v263 = v154;
  v264 = v155;
  v259 = v150;
  v260 = v151;
  v268 = v107;
  v269 = v116;
  v270 = v115;
  v271 = v114;
  v272 = v148;
  v273 = v149;
  v274 = v3;
  v275 = v113;
  v282 = v145;
  v283 = v146;
  *v284 = v147[0];
  *&v284[15] = *(v147 + 15);
  v278 = v141;
  v279 = v142;
  v280 = v143;
  v281 = v144;
  v276 = v139;
  v277 = v140;
  v285 = v107;
  v286 = v116;
  v287 = v115;
  v288 = v114;
  v289 = v137;
  v290 = v138;
  v291 = v3;
  v298 = v134;
  v299 = v135;
  *v300 = v136[0];
  *&v300[15] = *(v136 + 15);
  v294 = v130;
  v295 = v131;
  v296 = v132;
  v297 = v133;
  v292 = v128;
  v293 = v129;
  v301 = v107;
  v302 = v116;
  v303 = v115;
  v304 = v114;
  v305 = v126;
  v306 = v127;
  v95 = v72;
  AccelerationStructureViewer::Sample::Sample(v182, a3);
  v189 = v109;
  v190 = v119;
  v191 = v117;
  v185 = &v120;
  [v74 addCompletedHandler:v181];
  [v74 commit];

  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v183);
LABEL_84:
  _Block_object_dispose(&v120, 8);

  v96 = *MEMORY[0x277D85DE8];
}

uint64_t __Block_byref_object_copy__9879(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZN33AccelerationStructureViewerServer6Server13receiveSampleEPN27AccelerationStructureViewer7SamplerENS1_6SampleE_block_invoke(uint64_t a1)
{
  v81 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 704);
  v3 = dispatch_get_global_queue(0, 0);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3321888768;
  v25[2] = ___ZN33AccelerationStructureViewerServer6Server13receiveSampleEPN27AccelerationStructureViewer7SamplerENS1_6SampleE_block_invoke_2;
  v25[3] = &unk_2860BC868;
  v30 = v2;
  v31 = *(a1 + 712);
  v32 = *(a1 + 720);
  v28 = *(a1 + 688);
  memcpy(v35, (a1 + 752), sizeof(v35));
  v4 = *(a1 + 1478);
  v44 = *(a1 + 1462);
  v45 = v4;
  v46 = *(a1 + 1494);
  v47 = *(a1 + 1510);
  v5 = *(a1 + 1414);
  v40 = *(a1 + 1398);
  v41 = v5;
  v6 = *(a1 + 1446);
  v42 = *(a1 + 1430);
  v43 = v6;
  v7 = *(a1 + 1350);
  v36 = *(a1 + 1334);
  v37 = v7;
  v8 = *(a1 + 1382);
  v38 = *(a1 + 1366);
  v39 = v8;
  v9 = *(a1 + 1658);
  v56 = *(a1 + 1642);
  v57 = v9;
  v58 = *(a1 + 1674);
  v10 = *(a1 + 1594);
  v52 = *(a1 + 1578);
  v53 = v10;
  v11 = *(a1 + 1626);
  v54 = *(a1 + 1610);
  v55 = v11;
  v12 = *(a1 + 1530);
  v48 = *(a1 + 1514);
  v49 = v12;
  v13 = *(a1 + 1562);
  v50 = *(a1 + 1546);
  v51 = v13;
  v59 = *(a1 + 1690);
  v14 = *(a1 + 1835);
  v68 = *(a1 + 1819);
  v69 = v14;
  v70 = *(a1 + 1851);
  v15 = *(a1 + 1771);
  v64 = *(a1 + 1755);
  v65 = v15;
  v16 = *(a1 + 1803);
  v66 = *(a1 + 1787);
  v67 = v16;
  v17 = *(a1 + 1707);
  v60 = *(a1 + 1691);
  v61 = v17;
  v18 = *(a1 + 1739);
  v62 = *(a1 + 1723);
  v63 = v18;
  v19 = *(a1 + 2011);
  v79 = *(a1 + 1995);
  *v80 = v19;
  *&v80[12] = *(a1 + 2023);
  v20 = *(a1 + 1947);
  v75 = *(a1 + 1931);
  v76 = v20;
  v21 = *(a1 + 1979);
  v77 = *(a1 + 1963);
  v78 = v21;
  v22 = *(a1 + 1883);
  v71 = *(a1 + 1867);
  v72 = v22;
  v23 = *(a1 + 1915);
  v73 = *(a1 + 1899);
  v74 = v23;
  AccelerationStructureViewer::Sample::Sample(v26, a1 + 32);
  v33 = *(a1 + 728);
  v34 = *(a1 + 736);
  v29 = *(a1 + 696);
  dispatch_async(v3, v25);

  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v27);
  v24 = *MEMORY[0x277D85DE8];
}

intptr_t ___ZN33AccelerationStructureViewerServer6Server13receiveSampleEPN27AccelerationStructureViewer7SamplerENS1_6SampleE_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 704);
  v3 = *(v2 + 40);
  if (v3 < 3)
  {
    v7 = [*(a1 + 688) contents];
    *v7 = 1;
    *(v7 + 1) = *(a1 + 40);
    *(v7 + 157) = *(a1 + 464);
    *(v7 + 158) = *(a1 + 466);
    *(v7 + 9) = *(a1 + 468);
    *(v7 + 141) = [*(a1 + 640) width];
    *(v7 + 145) = [*(a1 + 640) height];
    *(v7 + 149) = *(a1 + 472);
    *(v7 + 153) = *(a1 + 476);
    v8 = *(a1 + 496);
    v9 = *(a1 + 512);
    v10 = *(a1 + 528);
    *(v7 + 13) = *(a1 + 480);
    *(v7 + 29) = v8;
    *(v7 + 45) = v9;
    *(v7 + 61) = v10;
    v11 = *(a1 + 560);
    v12 = *(a1 + 576);
    v13 = *(a1 + 592);
    *(v7 + 77) = *(a1 + 544);
    *(v7 + 93) = v11;
    *(v7 + 109) = v12;
    *(v7 + 125) = v13;
    *(v7 + 159) = vaddq_s64(*(a1 + 728), vdupq_n_s64(0xFFFFFFFFFFFFFF49));
    *(v7 + 175) = *(a1 + 744) - 183;
    v14 = *(v2 + 24);
    if (!v14)
    {
      goto LABEL_58;
    }

    v15 = *(a1 + 40);
    v16 = *(a1 + 720);
    v17 = *(*v14 + 32);
    goto LABEL_57;
  }

  v4 = *(a1 + 712);
  v5 = *(v2 + 152 + 8 * v4);
  if (v3 <= 0xA)
  {
    v18 = 177;
    v19 = 172;
    if (v3 > 4)
    {
      v19 = 176;
    }

    if (v3 <= 7)
    {
      v18 = v19;
    }

    if (v3 == 10)
    {
      v6 = 180;
    }

    else
    {
      v6 = v18;
    }
  }

  else
  {
    v6 = 582;
  }

  v20 = *(a1 + 720);
  if (v5 && *(v2 + 8 * v4 + 216) >= v20)
  {
    v22 = *(a1 + 720);
  }

  else
  {
    v5 = malloc_type_malloc(*(a1 + 720), 0x100004077774924uLL);
    v21 = *(a1 + 712);
    *(v2 + 152 + 8 * v21) = v5;
    v22 = *(a1 + 720);
    *(v2 + 8 * v21 + 216) = v22;
    v4 = *(a1 + 712);
  }

  v23 = v20 - v6;
  v24 = *(v2 + 184 + 8 * v4);
  if (!v24)
  {
    v25 = compression_encode_scratch_buffer_size(*(v2 + 72));
    v24 = malloc_type_malloc(v25, 0x100004077774924uLL);
    *(v2 + 184 + 8 * *(a1 + 712)) = v24;
    v22 = *(a1 + 720);
  }

  v26 = compression_encode_buffer(v5 + v6, v22 - v6, ([*(a1 + 688) contents] + v6), v23, v24, *(v2 + 72));
  if (*(v2 + 72) && v26)
  {
    v27 = *(v2 + 40);
    if (v27 >= 0xB)
    {
      memcpy(v5, (a1 + 752), 0x246uLL);
      goto LABEL_44;
    }

    if (v27 == 10)
    {
      v39 = *(a1 + 1334);
      v40 = *(a1 + 1350);
      v41 = *(a1 + 1382);
      v5[2] = *(a1 + 1366);
      v5[3] = v41;
      *v5 = v39;
      v5[1] = v40;
      v42 = *(a1 + 1398);
      v43 = *(a1 + 1414);
      v44 = *(a1 + 1446);
      v5[6] = *(a1 + 1430);
      v5[7] = v44;
      v5[4] = v42;
      v5[5] = v43;
      v45 = *(a1 + 1462);
      v46 = *(a1 + 1478);
      v47 = *(a1 + 1494);
      *(v5 + 44) = *(a1 + 1510);
    }

    else
    {
      if (v27 < 8)
      {
        if (v27 < 5)
        {
          v82 = *(a1 + 1867);
          v83 = *(a1 + 1899);
          v5[1] = *(a1 + 1883);
          v5[2] = v83;
          *v5 = v82;
          v84 = *(a1 + 1915);
          v85 = *(a1 + 1931);
          v86 = *(a1 + 1963);
          v5[5] = *(a1 + 1947);
          v5[6] = v86;
          v5[3] = v84;
          v5[4] = v85;
          v73 = *(a1 + 1979);
          v74 = *(a1 + 1995);
          v75 = *(a1 + 2011);
          *(v5 + 156) = *(a1 + 2023);
        }

        else
        {
          v68 = *(a1 + 1691);
          v69 = *(a1 + 1723);
          v5[1] = *(a1 + 1707);
          v5[2] = v69;
          *v5 = v68;
          v70 = *(a1 + 1739);
          v71 = *(a1 + 1755);
          v72 = *(a1 + 1787);
          v5[5] = *(a1 + 1771);
          v5[6] = v72;
          v5[3] = v70;
          v5[4] = v71;
          v73 = *(a1 + 1803);
          v74 = *(a1 + 1819);
          v75 = *(a1 + 1835);
          v5[10] = *(a1 + 1851);
        }

        v5[8] = v74;
        v5[9] = v75;
        v5[7] = v73;
LABEL_44:
        v87 = *(v2 + 72);
        if (v87 > 2048)
        {
          if (v87 == 2818)
          {
            v88 = 5;
            goto LABEL_53;
          }

          if (v87 == 2049)
          {
            v88 = 3;
            goto LABEL_53;
          }
        }

        else
        {
          if (v87 == 256)
          {
            v88 = 2;
            goto LABEL_53;
          }

          if (v87 == 774)
          {
            v88 = 4;
LABEL_53:
            *(v5 + 163) = v88;
          }
        }

        *(v5 + 164) = v23;
        *(v2 + 40);
        goto LABEL_55;
      }

      v54 = *(a1 + 1514);
      v55 = *(a1 + 1530);
      v56 = *(a1 + 1562);
      v5[2] = *(a1 + 1546);
      v5[3] = v56;
      *v5 = v54;
      v5[1] = v55;
      v57 = *(a1 + 1578);
      v58 = *(a1 + 1594);
      v59 = *(a1 + 1626);
      v5[6] = *(a1 + 1610);
      v5[7] = v59;
      v5[4] = v57;
      v5[5] = v58;
      v45 = *(a1 + 1642);
      v46 = *(a1 + 1658);
      v47 = *(a1 + 1674);
      *(v5 + 176) = *(a1 + 1690);
    }

    v5[9] = v46;
    v5[10] = v47;
    v5[8] = v45;
    goto LABEL_44;
  }

  v28 = [*(a1 + 688) contents];
  v5 = v28;
  v29 = *(v2 + 40);
  if (v29 < 0xB)
  {
    if (v29 == 10)
    {
      v30 = *(a1 + 1334);
      v31 = *(a1 + 1350);
      v32 = *(a1 + 1382);
      v28[2] = *(a1 + 1366);
      v28[3] = v32;
      *v28 = v30;
      v28[1] = v31;
      v33 = *(a1 + 1398);
      v34 = *(a1 + 1414);
      v35 = *(a1 + 1446);
      v28[6] = *(a1 + 1430);
      v28[7] = v35;
      v28[4] = v33;
      v28[5] = v34;
      v36 = *(a1 + 1462);
      v37 = *(a1 + 1478);
      v38 = *(a1 + 1494);
      *(v28 + 44) = *(a1 + 1510);
    }

    else
    {
      if (v29 < 8)
      {
        if (v29 < 5)
        {
          v76 = *(a1 + 1867);
          v77 = *(a1 + 1899);
          v28[1] = *(a1 + 1883);
          v28[2] = v77;
          *v28 = v76;
          v78 = *(a1 + 1915);
          v79 = *(a1 + 1931);
          v80 = *(a1 + 1963);
          v28[5] = *(a1 + 1947);
          v28[6] = v80;
          v28[3] = v78;
          v28[4] = v79;
          v65 = *(a1 + 1979);
          v66 = *(a1 + 1995);
          v67 = *(a1 + 2011);
          *(v28 + 156) = *(a1 + 2023);
        }

        else
        {
          v60 = *(a1 + 1691);
          v61 = *(a1 + 1723);
          v28[1] = *(a1 + 1707);
          v28[2] = v61;
          *v28 = v60;
          v62 = *(a1 + 1739);
          v63 = *(a1 + 1755);
          v64 = *(a1 + 1787);
          v28[5] = *(a1 + 1771);
          v28[6] = v64;
          v28[3] = v62;
          v28[4] = v63;
          v65 = *(a1 + 1803);
          v66 = *(a1 + 1819);
          v67 = *(a1 + 1835);
          v28[10] = *(a1 + 1851);
        }

        v28[8] = v66;
        v28[9] = v67;
        v28[7] = v65;
        goto LABEL_41;
      }

      v48 = *(a1 + 1514);
      v49 = *(a1 + 1530);
      v50 = *(a1 + 1562);
      v28[2] = *(a1 + 1546);
      v28[3] = v50;
      *v28 = v48;
      v28[1] = v49;
      v51 = *(a1 + 1578);
      v52 = *(a1 + 1594);
      v53 = *(a1 + 1626);
      v28[6] = *(a1 + 1610);
      v28[7] = v53;
      v28[4] = v51;
      v28[5] = v52;
      v36 = *(a1 + 1642);
      v37 = *(a1 + 1658);
      v38 = *(a1 + 1674);
      *(v28 + 176) = *(a1 + 1690);
    }

    v28[9] = v37;
    v28[10] = v38;
    v28[8] = v36;
  }

  else
  {
    memcpy(v28, (a1 + 752), 0x246uLL);
  }

LABEL_41:
  *(v5 + 163) = 1;
  *(v5 + 164) = v23;
  v81 = *(a1 + 720);
LABEL_55:
  *v5 = 1;
  *(v5 + 1) = *(a1 + 40);
  *(v5 + 157) = *(a1 + 464);
  *(v5 + 158) = *(a1 + 466);
  *(v5 + 9) = *(a1 + 468);
  *(v5 + 141) = [*(a1 + 640) width];
  *(v5 + 145) = [*(a1 + 640) height];
  *(v5 + 149) = *(a1 + 472);
  *(v5 + 153) = *(a1 + 476);
  v89 = *(a1 + 496);
  v90 = *(a1 + 512);
  v91 = *(a1 + 528);
  *(v5 + 13) = *(a1 + 480);
  *(v5 + 29) = v89;
  *(v5 + 45) = v90;
  *(v5 + 61) = v91;
  v92 = *(a1 + 560);
  v93 = *(a1 + 576);
  v94 = *(a1 + 592);
  *(v5 + 77) = *(a1 + 544);
  *(v5 + 93) = v92;
  *(v5 + 109) = v93;
  *(v5 + 125) = v94;
  v95 = *(v2 + 24);
  if (!v95)
  {
    goto LABEL_58;
  }

  v96 = *(a1 + 40);
  v17 = *(*v95 + 32);
LABEL_57:
  v17();
LABEL_58:
  dispatch_semaphore_signal(*(v2 + 8 * *(a1 + 712) + 88));
  v97 = *(*(*(a1 + 696) + 8) + 40);

  return dispatch_semaphore_signal(v97);
}

void AccelerationStructureViewerServer::Server::receiveGBVH(AccelerationStructureViewerServer::Server *this, uint64_t a2, NSData *a3, NSError *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (*(this + 5) >= 0xDuLL && *(this + 3))
  {
    if (v8)
    {
      operator new();
    }

    v10 = [(NSData *)v7 length];
    v11 = malloc_type_malloc(v10 + 10, 0x100004080B1215BuLL);
    *v11 = 20;
    *(v11 + 1) = a2;
    v11[9] = 0;
    memcpy(v11 + 10, [(NSData *)v7 bytes], [(NSData *)v7 length]);
    (*(**(this + 3) + 32))(*(this + 3), this, 0, 0, v11, v10 + 10);
    free(v11);
  }
}

uint64_t AccelerationStructureViewerServer::Server::setSamplerProperties(uint64_t result)
{
  if (*(result + 24))
  {
    v1 = *(result + 40);
    if (v1 >= 5)
    {
      operator new();
    }

    if (v1 >= 2)
    {
      operator new();
    }

    operator new();
  }

  return result;
}

void non-virtual thunk toAccelerationStructureViewerServer::Server::~Server(AccelerationStructureViewerServer::Server *this)
{
  AccelerationStructureViewerServer::Server::~Server((this - 8));

  JUMPOUT(0x2530332C0);
}

{
  AccelerationStructureViewerServer::Server::~Server((this - 8));
}

void AccelerationStructureViewerServer::Server::~Server(AccelerationStructureViewerServer::Server *this)
{
  *this = &unk_2860BC748;
  *(this + 1) = &unk_2860BC7E8;
  *(this + 3) = 0;
  v2 = *(this + 10);
  v3 = *(this + 10);
  *(this + 10) = 0;

  v4 = 4;
  do
  {
    dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
    --v4;
  }

  while (v4);
  v5 = 4;
  do
  {
    dispatch_semaphore_signal(v2);
    --v5;
  }

  while (v5);

  v6 = -32;
  do
  {
    v7 = (this + v6);
    v8 = *(this + v6 + 120);
    *(this + v6 + 120) = 0;

    v9 = *(this + v6 + 152);
    v7[19] = 0;

    free(*(this + v6 + 184));
    free(*(this + v6 + 216));
    v7[23] = 0;
    v7[27] = 0;
    v6 += 8;
  }

  while (v6);
  for (i = 144; i != 112; i -= 8)
  {
  }

  do
  {

    i -= 8;
  }

  while (i != 80);
}

{
  AccelerationStructureViewerServer::Server::~Server(this);

  JUMPOUT(0x2530332C0);
}

uint64_t AccelerationStructureViewerServer::Server::teardown(AccelerationStructureViewerServer::Server *this, Sampler *a2, NSError *a3)
{
  result = *(this + 3);
  if (result)
  {
    *(this + 3) = 0;
    return (*(*result + 40))();
  }

  return result;
}

void AccelerationStructureViewerServer::Server::pause(AccelerationStructureViewerServer::Server *this, Sampler *a2, NSError *a3)
{
  if (*(this + 5) >= 7uLL)
  {
    AccelerationStructureViewerServer::Server::replyQueryable(this, 11, -1, 0, a3);
  }
}

void AccelerationStructureViewerServer::Server::recv(AccelerationStructureViewerServer::Server *this, char *a2, uint64_t a3, uint8x8_t a4)
{
  v116 = *MEMORY[0x277D85DE8];
  v6 = this;
  switch(*a2)
  {
    case 0:
      v7 = *(this + 4);
      if (!v7)
      {
        goto LABEL_98;
      }

      v8 = 13;
      if (*(a2 + 1) < 0xDuLL)
      {
        v8 = *(a2 + 1);
      }

      *(v6 + 5) = v8;
      v9 = *(*v7 + 40);
      v10 = *MEMORY[0x277D85DE8];

LABEL_18:
      v9();
      return;
    case 1:
    case 13:
      goto LABEL_98;
    case 2:
      v44 = *(this + 4);
      if (!v44)
      {
        goto LABEL_98;
      }

      v45 = a2[1];
      v46 = a2[2] != 0;
      a4.i32[0] = *(a2 + 3);
      v47 = vmovl_u8(a4).u64[0];
      v48 = vceq_s16(v47, 0x1000100010001);
      v49 = vceq_s16(v47, 0x2000200020002);
      v50 = vsub_s16(vand_s8(v49, 0x2000200020002), vbic_s8(v48, v49));
      v51 = a2[7];
      if (v51 == 2)
      {
        v52 = 2;
      }

      else
      {
        v52 = v51 == 1;
      }

      v53 = a2[8];
      v54 = a2[9];
      v55 = *(this + 5);
      if (v55 < 2)
      {
        v58 = 0;
        if (v55 == 1)
        {
          v57 = 0;
          v61 = 0;
          LOBYTE(v62) = 0;
          LOBYTE(v63) = 0;
          v56 = *(a2 + 10);
LABEL_86:
          v60 = -1;
          v59 = 1;
          goto LABEL_97;
        }

        v56 = 0;
        v57 = 0;
LABEL_85:
        v61 = 0;
        LOBYTE(v62) = 0;
        LOBYTE(v63) = 0;
        goto LABEL_86;
      }

      v56 = *(a2 + 10);
      v57 = *(a2 + 14);
      v58 = 0;
      if (v55 == 2)
      {
        goto LABEL_85;
      }

      v59 = a2[18];
      if (v55 < 4)
      {
        v61 = 0;
        LOBYTE(v62) = 0;
        LOBYTE(v63) = 0;
        v60 = -1;
      }

      else
      {
        v60 = *(a2 + 19);
        if (v55 == 4 || (v58 = *(a2 + 23), v55 < 8))
        {
          v61 = 0;
          LOBYTE(v62) = 0;
          LOBYTE(v63) = 0;
        }

        else
        {
          v61 = a2[27];
          v62 = a2[28];
          if (v62 >= 7)
          {
            LOBYTE(v62) = 0;
          }

          v63 = a2[29];
          if (v63 >= 7)
          {
            LOBYTE(v63) = 0;
          }

          LODWORD(a3) = *(a2 + 30);
          v64 = *(a2 + 370);
          v112 = *(a2 + 354);
          v113 = v64;
          v65 = *(a2 + 402);
          v114 = *(a2 + 386);
          v115 = v65;
          v66 = *(a2 + 306);
          v108 = *(a2 + 290);
          v109 = v66;
          v67 = *(a2 + 338);
          v110 = *(a2 + 322);
          v111 = v67;
          *&__src[49] = *(a2 + 226);
          *&__src[53] = *(a2 + 242);
          v68 = *(a2 + 274);
          *&__src[57] = *(a2 + 258);
          v4 = *(a2 + 418);
          LODWORD(v6) = *(a2 + 426);
          *&__src[61] = v68;
          *&__src[33] = *(a2 + 162);
          *&__src[37] = *(a2 + 178);
          *&__src[41] = *(a2 + 194);
          *&__src[45] = *(a2 + 210);
          *&__src[17] = *(a2 + 98);
          *&__src[21] = *(a2 + 114);
          *&__src[25] = *(a2 + 130);
          *&__src[29] = *(a2 + 146);
          *&__src[1] = *(a2 + 34);
          *&__src[5] = *(a2 + 50);
          *&__src[9] = *(a2 + 66);
          *&__src[13] = *(a2 + 82);
        }
      }

LABEL_97:
      v102.__locale_ = __PAIR64__(v57, v56);
      LOBYTE(v103) = v45;
      BYTE1(v103) = v46;
      *(&v103 + 2) = vuzp1_s8(v50, v50).u32[0];
      BYTE6(v103) = v52;
      HIBYTE(v103) = v53;
      LOBYTE(v104) = v54;
      BYTE1(v104) = v59;
      WORD1(v104) = v61;
      *(&v104 + 4) = __PAIR64__(v58, v60);
      BYTE12(v104) = v62;
      BYTE13(v104) = v63;
      LODWORD(v105[0]) = a3;
      memcpy(v105 + 4, __src, 0x104uLL);
      *&v105[37] = v110;
      *&v105[39] = v111;
      *&v105[33] = v108;
      *&v105[35] = v109;
      *&v105[45] = v114;
      *&v105[47] = v115;
      *&v105[41] = v112;
      *&v105[43] = v113;
      v105[49] = v4;
      v106 = v6;
      (*(*v44 + 32))(v44, &v102);
LABEL_98:
      v86 = *MEMORY[0x277D85DE8];
      return;
    case 3:
      v33 = *(this + 4);
      if (v33)
      {
        v34 = *(a2 + 1);
        v35 = *(a2 + 14);
        v36 = *(a2 + 30);
        v37 = *(a2 + 46);
        v38 = *(a2 + 62);
        v39 = *(a2 + 78);
        v40 = *(a2 + 94);
        v41 = *(a2 + 110);
        v42 = *(a2 + 126);
        LOBYTE(v102.__locale_) = a2[5];
        WORD1(v102.__locale_) = 0;
        HIDWORD(v102.__locale_) = v34;
        v103 = *(a2 + 6);
        v104 = v35;
        *v105 = v36;
        *&v105[2] = v37;
        *&v105[4] = v38;
        *&v105[6] = v39;
        *&v105[8] = v40;
        *&v105[10] = v41;
        *&v105[12] = v42;
        (*(*v33 + 24))(v33, &v102);
      }

      goto LABEL_98;
    case 4:
      v24 = *(this + 4);
      if (!v24)
      {
        goto LABEL_98;
      }

      v25 = *(a2 + 1);
      v26 = *(*v24 + 88);
      v27 = *MEMORY[0x277D85DE8];

      v26();
      return;
    case 7:
      v28 = *(a2 + 1);
      operator new();
    case 9:
      if (*(this + 5) < 0xDuLL)
      {
        goto LABEL_74;
      }

      v17 = *(a2 + 1);
      v102.__locale_ = 0;
      v103 = a2 + 3;
      *&v104 = a3 - 3;
      BYTE8(v104) = 0;
      LOWORD(v108) = 0;
      v18 = AccelerationStructureViewer::DataSourceQueryBlobDecoder::decode(&v102, &v108);
      v19 = v18;
      if (v108 != 14)
      {
        if (v18)
        {
          (*(*v18 + 8))(v18);
        }

        goto LABEL_74;
      }

      if (!v18)
      {
LABEL_74:
        v78 = ASVErrorWithCode(5u, @"properties is missing");
        AccelerationStructureViewerServer::Server::replyQueryable(v6, 8, -1, 0, v78);

        goto LABEL_98;
      }

      v29 = *(*(v6 + 4) + 8);
      if (!v29)
      {
        v74 = v18[1];
        v75 = ASVErrorWithCode(5u, @"id<MTLAccelerationStructure> is missing");
        AccelerationStructureViewerServer::Server::replyQueryable(v6, 8, v74, 0, v75);

LABEL_94:
        (*(*v19 + 8))(v19);
        goto LABEL_98;
      }

      v31 = v18[3];
      v30 = v18[4];
      v102.__locale_ = &unk_2860BC948;
      v105[0] = 0;
      v104 = 0uLL;
      LOBYTE(v103) = 0;
      v32 = v18[5];
      if (v32)
      {
        LOBYTE(v103) = *(v32 + 8);
        if (&v102 != v32)
        {
          std::vector<AccelerationStructureViewer::FilterToken>::__assign_with_size[abi:nn200100]<AccelerationStructureViewer::FilterToken*,AccelerationStructureViewer::FilterToken*>(&v104, *(v32 + 16), *(v32 + 24), 0xAAAAAAAAAAAAAAABLL * ((*(v32 + 24) - *(v32 + 16)) >> 3));
        }
      }

      if (v17 > 3)
      {
        if (v17 > 5)
        {
          if (v17 != 6)
          {
            if (v17 == 7)
            {
              v81 = v19[2];
              v89[0] = MEMORY[0x277D85DD0];
              v89[1] = 3221225472;
              v89[2] = ___ZN33AccelerationStructureViewerServer6Server4recvEPvm_block_invoke_4_33;
              v89[3] = &__block_descriptor_48_e28_v24__0__NSData_8__NSError_16l;
              v89[4] = v6;
              v89[5] = v19;
              (*(*v29 + 56))(v29, v81, v31, v30, v89);
            }

            goto LABEL_93;
          }

          v84 = v19[2];
          v85 = v19[6];
          AccelerationStructureViewer::Filter::Filter(v91, &v102);
          v90[0] = MEMORY[0x277D85DD0];
          v90[1] = 3221225472;
          v90[2] = ___ZN33AccelerationStructureViewerServer6Server4recvEPvm_block_invoke_3_32;
          v90[3] = &__block_descriptor_48_e21_v24__0_v8__NSError_16l;
          v90[4] = v6;
          v90[5] = v19;
          (*(*v29 + 48))(v29, v84, v85, v31, v30, v91, v90);
          v91[0] = &unk_2860BC948;
          v83 = &v92;
          goto LABEL_92;
        }

        if (v17 == 4)
        {
          v82 = v19[2];
          v77 = v94;
          AccelerationStructureViewer::Filter::Filter(v94, &v102);
          v93[0] = MEMORY[0x277D85DD0];
          v93[1] = 3221225472;
          v93[2] = ___ZN33AccelerationStructureViewerServer6Server4recvEPvm_block_invoke_2_31;
          v93[3] = &__block_descriptor_48_e21_v24__0_v8__NSError_16l;
          v93[4] = v6;
          v93[5] = v19;
          (*(*v29 + 40))(v29, v82, v31, v30, v94, v93);
          v94[0] = &unk_2860BC948;
        }

        else
        {
          v76 = v19[2];
          v77 = v88;
          AccelerationStructureViewer::Filter::Filter(v88, &v102);
          v87[0] = MEMORY[0x277D85DD0];
          v87[1] = 3221225472;
          v87[2] = ___ZN33AccelerationStructureViewerServer6Server4recvEPvm_block_invoke_5;
          v87[3] = &__block_descriptor_48_e21_v24__0_v8__NSError_16l;
          v87[4] = v6;
          v87[5] = v19;
          (*(*v29 + 64))(v29, v76, v31, v30, v88, v87);
          v88[0] = &unk_2860BC948;
        }
      }

      else
      {
        if (v17 <= 1)
        {
          if (v17)
          {
            v100[0] = MEMORY[0x277D85DD0];
            v100[1] = 3221225472;
            v100[2] = ___ZN33AccelerationStructureViewerServer6Server4recvEPvm_block_invoke_2;
            v100[3] = &__block_descriptor_48_e240_v40__0_vector_AccelerationStructureViewer::IntersectionFunctionTable__std::allocator_AccelerationStructureViewer::IntersectionFunctionTable_____IntersectionFunctionTable___IntersectionFunctionTable___IntersectionFunctionTable__8__NSError_32l;
            v100[4] = v6;
            v100[5] = v19;
            (*(*v29 + 16))(v29, v100);
          }

          else
          {
            v101[0] = MEMORY[0x277D85DD0];
            v101[1] = 3221225472;
            v101[2] = ___ZN33AccelerationStructureViewerServer6Server4recvEPvm_block_invoke;
            v101[3] = &__block_descriptor_48_e21_v24__0_v8__NSError_16l;
            v101[4] = v6;
            v101[5] = v19;
            (*(*v29 + 32))(v29, v101);
          }

          goto LABEL_93;
        }

        if (v17 == 2)
        {
          v97[0] = MEMORY[0x277D85DD0];
          v97[1] = 3321888768;
          v97[2] = ___ZN33AccelerationStructureViewerServer6Server4recvEPvm_block_invoke_3;
          v97[3] = &__block_descriptor_112_a8_72c42_ZTSN27AccelerationStructureViewer6FilterE_e240_v40__0_vector_AccelerationStructureViewer::IntersectionFunctionTable__std::allocator_AccelerationStructureViewer::IntersectionFunctionTable_____IntersectionFunctionTable___IntersectionFunctionTable___IntersectionFunctionTable__8__NSError_32l;
          v97[4] = v6;
          v97[5] = v19;
          v97[6] = v29;
          v97[7] = v31;
          v97[8] = v30;
          AccelerationStructureViewer::Filter::Filter(&v98, &v102);
          (*(*v29 + 16))(v29, v97);
          v98 = &unk_2860BC948;
          v83 = &v99;
          goto LABEL_92;
        }

        v80 = v19[2];
        v77 = v96;
        AccelerationStructureViewer::Filter::Filter(v96, &v102);
        v95[0] = MEMORY[0x277D85DD0];
        v95[1] = 3221225472;
        v95[2] = ___ZN33AccelerationStructureViewerServer6Server4recvEPvm_block_invoke_30;
        v95[3] = &__block_descriptor_48_e21_v24__0_v8__NSError_16l;
        v95[4] = v6;
        v95[5] = v19;
        (*(*v29 + 72))(v29, v80, v31, v30, v96, v95);
        v96[0] = &unk_2860BC948;
      }

      v83 = v77 + 2;
LABEL_92:
      *&v108 = v83;
      std::vector<AccelerationStructureViewer::FilterToken>::__destroy_vector::operator()[abi:nn200100](&v108);
LABEL_93:
      v102.__locale_ = &unk_2860BC948;
      *&v108 = &v104;
      std::vector<AccelerationStructureViewer::FilterToken>::__destroy_vector::operator()[abi:nn200100](&v108);
      goto LABEL_94;
    case 10:
      v22 = a2[1];
      if (v22 > 5)
      {
        v23 = 0;
      }

      else
      {
        v23 = dword_24DA91EF4[v22];
      }

      if (v23 != *(this + 18))
      {
        v70 = 4;
        do
        {
          dispatch_semaphore_wait(*(v6 + 10), 0xFFFFFFFFFFFFFFFFLL);
          --v70;
        }

        while (v70);
        *(v6 + 18) = v23;
        v71 = v6 + 184;
        do
        {
          free(*&v71[v70]);
          *&v71[v70] = 0;
          v70 += 8;
        }

        while (v70 != 32);
        v72 = 4;
        do
        {
          dispatch_semaphore_signal(*(v6 + 10));
          --v72;
        }

        while (v72);
      }

      goto LABEL_98;
    case 14:
      v11 = *(a2 + 1);
      v12 = *(a2 + 13);
      v13 = *(a2 + 21);
      v14 = *(this + 4);
      LODWORD(v103) = *(a2 + 9);
      v102.__locale_ = v11;
      DWORD2(v104) = v13;
      *&v104 = v12;
      v105[0] = *(a2 + 25);
      (*(*v14 + 72))(v14, &v102);
      goto LABEL_98;
    case 15:
      v20 = *(a2 + 1);
      v9 = *(**(this + 4) + 80);
      v21 = *MEMORY[0x277D85DE8];

      goto LABEL_18;
    case 16:
      v43 = *(a2 + 13);
      if (40 * v43 + 17 == a3)
      {
        if (v43)
        {
          operator new();
        }

        (*(**(this + 4) + 104))(*(this + 4), *(a2 + 1) == 1, *(a2 + 5), 0, 0);
      }

      goto LABEL_98;
    case 18:
      if (*(a2 + 1) != -1)
      {
        operator new();
      }

      memcpy(0, a2 + 5, 0xFFFFFFFFuLL);
      MEMORY[0xFFFFFFFF] = 0;
      v73 = [MEMORY[0x277CCACA8] stringWithCString:0 encoding:30];
      (*(**(v6 + 4) + 48))(*(v6 + 4), v73);

      v79 = *MEMORY[0x277D85DE8];

      operator delete(0);
      return;
    case 19:
      v15 = *(a2 + 1);
      v9 = *(**(this + 4) + 56);
      v16 = *MEMORY[0x277D85DE8];

      goto LABEL_18;
    default:
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>("ASVPacket - type '", 18);
      LOBYTE(v102.__locale_) = *a2;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, 1);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>("' is invalid", 12);
      std::ios_base::getloc((MEMORY[0x277D82678] + *(*MEMORY[0x277D82678] - 24)));
      v69 = std::locale::use_facet(&v102, MEMORY[0x277D82680]);
      (v69->__vftable[2].~facet_0)(v69, 10);
      std::locale::~locale(&v102);
      std::ostream::put();
      std::ostream::flush();
      goto LABEL_98;
  }
}

id *std::vector<AccelerationStructureViewer::FilterToken>::__assign_with_size[abi:nn200100]<AccelerationStructureViewer::FilterToken*,AccelerationStructureViewer::FilterToken*>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = a1[2];
  v9 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 3) < a4)
  {
    if (v9)
    {
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v9)
      {
        v12 = v10 - 24;
        v13 = (v10 - 24);
        v14 = (v10 - 24);
        do
        {
          v15 = *v14;
          v14 -= 3;
          (*v15)(v13);
          v12 -= 24;
          v16 = v13 == v9;
          v13 = v14;
        }

        while (!v16);
        v11 = *a1;
      }

      a1[1] = v9;
      operator delete(v11);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v18 = 2 * v17;
      if (2 * v17 <= a4)
      {
        v18 = a4;
      }

      if (v17 >= 0x555555555555555)
      {
        v19 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v19 = v18;
      }

      std::vector<AccelerationStructureViewer::FilterToken>::__vallocate[abi:nn200100](a1, v19);
    }

    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  v20 = a1[1] - v9;
  if (0xAAAAAAAAAAAAAAABLL * (v20 >> 3) >= a4)
  {
    result = std::__copy_impl::operator()[abi:nn200100]<AccelerationStructureViewer::FilterToken *,AccelerationStructureViewer::FilterToken *,AccelerationStructureViewer::FilterToken *>(a2, a3, v9);
    v22 = result;
    v23 = a1[1];
    if (v23 != result)
    {
      v24 = v23 - 3;
      v25 = v23 - 3;
      v26 = v23 - 3;
      do
      {
        v27 = *v26;
        v26 -= 3;
        result = (*v27)(v25);
        v24 -= 3;
        v16 = v25 == v22;
        v25 = v26;
      }

      while (!v16);
    }

    a1[1] = v22;
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<AccelerationStructureViewer::FilterToken *,AccelerationStructureViewer::FilterToken *,AccelerationStructureViewer::FilterToken *>(a2, a2 + v20, v9);

    return std::vector<AccelerationStructureViewer::FilterToken>::__construct_at_end<AccelerationStructureViewer::FilterToken*,AccelerationStructureViewer::FilterToken*>(a1, a2 + v20, a3);
  }

  return result;
}

void ___ZN33AccelerationStructureViewerServer6Server4recvEPvm_block_invoke_2(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v14 = &unk_2860BB738;
  *__p = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = *a2;
  if (*a2 != a2[1])
  {
    v8 = 0;
    do
    {
      if (v8 >= v16)
      {
        v9 = (v8 - __p[0]) >> 3;
        if ((v9 + 1) >> 61)
        {
          std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
        }

        v10 = (v16 - __p[0]) >> 2;
        if (v10 <= v9 + 1)
        {
          v10 = v9 + 1;
        }

        if (v16 - __p[0] >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (v11)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewerServer::AccelerationStructure *>>(v11);
        }

        *(8 * v9) = v7;
        v8 = (8 * v9 + 8);
        v12 = (8 * v9 - (__p[1] - __p[0]));
        memcpy(v12, __p[0], __p[1] - __p[0]);
        v13 = __p[0];
        __p[0] = v12;
        __p[1] = v8;
        *&v16 = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v8 = v7;
        v8 += 8;
      }

      __p[1] = v8;
      v7 += 32;
    }

    while (v7 != a2[1]);
  }

  AccelerationStructureViewerServer::Server::replyQueryable(v6, 8, *(*(a1 + 40) + 8), &v14, v5);
  AccelerationStructureViewer::DataSourceArray::~DataSourceArray(&v14);
}

void ___ZN33AccelerationStructureViewerServer6Server4recvEPvm_block_invoke_3(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v5)
  {
    AccelerationStructureViewerServer::Server::replyQueryable(*(a1 + 32), 8, *(*(a1 + 40) + 8), 0, v5);
  }

  else
  {
    v7 = *a2;
    v8 = *(a1 + 40);
    v9 = *(v8 + 16);
    while (1)
    {
      if (v7 == a2[1])
      {
        v10 = *(v8 + 8);
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"id<MTLIntersectionFunctionTable> 0x%llx does not exist", v9];
        v12 = ASVErrorWithCode(6u, v11);
        AccelerationStructureViewerServer::Server::replyQueryable(v6, 8, v10, 0, v12);

        goto LABEL_12;
      }

      if (*(v7 + 16) == v9)
      {
        break;
      }

      v7 += 32;
    }

    v14 = *(a1 + 48);
    v13 = *(a1 + 56);
    v15 = *(a1 + 64);
    v20 = &unk_2860BC948;
    v21 = *(a1 + 80);
    memset(v22, 0, sizeof(v22));
    v17 = *(a1 + 88);
    v16 = *(a1 + 96);
    if (v16 != v17)
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v17) >> 3);
      if (v18 < 0xAAAAAAAAAAAAAABLL)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewer::FilterToken>>(v18);
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = ___ZN33AccelerationStructureViewerServer6Server4recvEPvm_block_invoke_4;
    v19[3] = &__block_descriptor_48_e21_v24__0_v8__NSError_16l;
    v19[4] = v6;
    v19[5] = v8;
    (*(*v14 + 24))(v14, v7, v13, v15, &v20, v19);
    v20 = &unk_2860BC948;
    v23 = v22;
    std::vector<AccelerationStructureViewer::FilterToken>::__destroy_vector::operator()[abi:nn200100](&v23);
  }

LABEL_12:
}

uint64_t AccelerationStructureViewer::Filter::Filter(uint64_t this, const AccelerationStructureViewer::Filter *a2)
{
  *this = &unk_2860BC948;
  v2 = *(a2 + 8);
  *(this + 16) = 0;
  *(this + 8) = v2;
  *(this + 24) = 0;
  *(this + 32) = 0;
  v3 = *(a2 + 2);
  v4 = *(a2 + 3);
  if (v4 != v3)
  {
    std::vector<AccelerationStructureViewer::FilterToken>::__vallocate[abi:nn200100](this + 16, 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3));
  }

  return this;
}

void ___ZN33AccelerationStructureViewerServer6Server4recvEPvm_block_invoke_30(uint64_t a1, uint64_t **a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v16 = &unk_2860BB738;
  *__p = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = *a2;
  if (*a2 != a2[1])
  {
    v8 = 0;
    do
    {
      v9 = *v7;
      if (v8 >= v18)
      {
        v10 = (v8 - __p[0]) >> 3;
        if ((v10 + 1) >> 61)
        {
          std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
        }

        v11 = (v18 - __p[0]) >> 2;
        if (v11 <= v10 + 1)
        {
          v11 = v10 + 1;
        }

        if (v18 - __p[0] >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (v12)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewerServer::AccelerationStructure *>>(v12);
        }

        v13 = (8 * v10);
        *v13 = v9;
        v8 = (8 * v10 + 8);
        v14 = v13 - (__p[1] - __p[0]);
        memcpy(v14, __p[0], __p[1] - __p[0]);
        v15 = __p[0];
        __p[0] = v14;
        __p[1] = v8;
        *&v18 = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v8 = v9;
        v8 += 8;
      }

      __p[1] = v8;
      ++v7;
    }

    while (v7 != a2[1]);
  }

  AccelerationStructureViewerServer::Server::replyQueryable(v6, 8, *(*(a1 + 40) + 8), &v16, v5);
  AccelerationStructureViewer::DataSourceArray::~DataSourceArray(&v16);
}

void ___ZN33AccelerationStructureViewerServer6Server4recvEPvm_block_invoke_2_31(uint64_t a1, uint64_t **a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v16 = &unk_2860BB738;
  *__p = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = *a2;
  if (*a2 != a2[1])
  {
    v8 = 0;
    do
    {
      v9 = *v7;
      if (v8 >= v18)
      {
        v10 = (v8 - __p[0]) >> 3;
        if ((v10 + 1) >> 61)
        {
          std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
        }

        v11 = (v18 - __p[0]) >> 2;
        if (v11 <= v10 + 1)
        {
          v11 = v10 + 1;
        }

        if (v18 - __p[0] >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (v12)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewerServer::AccelerationStructure *>>(v12);
        }

        v13 = (8 * v10);
        *v13 = v9;
        v8 = (8 * v10 + 8);
        v14 = v13 - (__p[1] - __p[0]);
        memcpy(v14, __p[0], __p[1] - __p[0]);
        v15 = __p[0];
        __p[0] = v14;
        __p[1] = v8;
        *&v18 = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v8 = v9;
        v8 += 8;
      }

      __p[1] = v8;
      ++v7;
    }

    while (v7 != a2[1]);
  }

  AccelerationStructureViewerServer::Server::replyQueryable(v6, 8, *(*(a1 + 40) + 8), &v16, v5);
  AccelerationStructureViewer::DataSourceArray::~DataSourceArray(&v16);
}

void ___ZN33AccelerationStructureViewerServer6Server4recvEPvm_block_invoke_3_32(uint64_t a1, uint64_t **a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v16 = &unk_2860BB738;
  *__p = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = *a2;
  if (*a2 != a2[1])
  {
    v8 = 0;
    do
    {
      v9 = *v7;
      if (v8 >= v18)
      {
        v10 = (v8 - __p[0]) >> 3;
        if ((v10 + 1) >> 61)
        {
          std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
        }

        v11 = (v18 - __p[0]) >> 2;
        if (v11 <= v10 + 1)
        {
          v11 = v10 + 1;
        }

        if (v18 - __p[0] >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (v12)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewerServer::AccelerationStructure *>>(v12);
        }

        v13 = (8 * v10);
        *v13 = v9;
        v8 = (8 * v10 + 8);
        v14 = v13 - (__p[1] - __p[0]);
        memcpy(v14, __p[0], __p[1] - __p[0]);
        v15 = __p[0];
        __p[0] = v14;
        __p[1] = v8;
        *&v18 = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v8 = v9;
        v8 += 8;
      }

      __p[1] = v8;
      ++v7;
    }

    while (v7 != a2[1]);
  }

  AccelerationStructureViewerServer::Server::replyQueryable(v6, 8, *(*(a1 + 40) + 8), &v16, v5);
  AccelerationStructureViewer::DataSourceArray::~DataSourceArray(&v16);
}

void ___ZN33AccelerationStructureViewerServer6Server4recvEPvm_block_invoke_4_33(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 8);
  memset(v13, 0, sizeof(v13));
  v6 = a3;
  v7 = a2;
  v8 = [v7 length];
  if (v8 == -9)
  {
    v9 = 0;
  }

  else
  {
    std::vector<unsigned char>::__append(v13, v8 + 9);
    v9 = v13[0];
  }

  memcpy(v9 + 9, [v7 bytes], objc_msgSend(v7, "length"));
  *v9 = 8;
  *(v9 + 1) = v5;
  v10 = *(v4 + 24);
  v11 = [v7 length];
  v12 = *(*v10 + 32);

  v12(v10, v4, 0, 0, v9, v11 + 9);

  operator delete(v9);
}

void ___ZN33AccelerationStructureViewerServer6Server4recvEPvm_block_invoke_5(uint64_t a1, uint64_t **a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v16 = &unk_2860BB738;
  *__p = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = *a2;
  if (*a2 != a2[1])
  {
    v8 = 0;
    do
    {
      v9 = *v7;
      if (v8 >= v18)
      {
        v10 = (v8 - __p[0]) >> 3;
        if ((v10 + 1) >> 61)
        {
          std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
        }

        v11 = (v18 - __p[0]) >> 2;
        if (v11 <= v10 + 1)
        {
          v11 = v10 + 1;
        }

        if (v18 - __p[0] >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (v12)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewerServer::AccelerationStructure *>>(v12);
        }

        v13 = (8 * v10);
        *v13 = v9;
        v8 = (8 * v10 + 8);
        v14 = v13 - (__p[1] - __p[0]);
        memcpy(v14, __p[0], __p[1] - __p[0]);
        v15 = __p[0];
        __p[0] = v14;
        __p[1] = v8;
        *&v18 = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v8 = v9;
        v8 += 8;
      }

      __p[1] = v8;
      ++v7;
    }

    while (v7 != a2[1]);
  }

  AccelerationStructureViewerServer::Server::replyQueryable(v6, 8, *(*(a1 + 40) + 8), &v16, v5);
  AccelerationStructureViewer::DataSourceArray::~DataSourceArray(&v16);
}

uint64_t std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D82678];
  MEMORY[0x2530330D0](v18, MEMORY[0x277D82678]);
  if (v18[0] == 1)
  {
    v5 = v4 + *(*v4 - 24);
    v6 = *(v5 + 5);
    v7 = a1 + a2;
    if ((*(v5 + 2) & 0xB0) == 0x20)
    {
      v8 = a1 + a2;
    }

    else
    {
      v8 = a1;
    }

    v9 = *(v5 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((v4 + *(*v4 - 24)));
      v10 = std::locale::use_facet(&__b, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v5 + 36) = v9;
      if (!v6)
      {
LABEL_28:
        std::ios_base::clear((v4 + *(*v4 - 24)), *(v4 + *(*v4 - 24) + 32) | 5);
        return MEMORY[0x2530330E0](v18);
      }
    }

    else if (!v6)
    {
      goto LABEL_28;
    }

    v11 = *(v5 + 3);
    v12 = v11 <= a2;
    v13 = v11 - a2;
    if (v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    if (v8 - a1 >= 1 && (*(*v6 + 96))(v6, a1, v8 - a1) != v8 - a1)
    {
      goto LABEL_28;
    }

    if (v14 >= 1)
    {
      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
      }

      if (v14 >= 0x17)
      {
        operator new();
      }

      v20 = v14;
      memset(&__b, v9, v14);
      *(&__b.__locale_ + v14) = 0;
      if (v20 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v16 = (*(*v6 + 96))(v6, p_b, v14);
      if (v20 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v16 != v14)
      {
        goto LABEL_28;
      }
    }

    if (v7 - v8 >= 1 && (*(*v6 + 96))(v6, v8, v7 - v8) != v7 - v8)
    {
      goto LABEL_28;
    }

    *(v5 + 3) = 0;
  }

  return MEMORY[0x2530330E0](v18);
}

void __destroy_helper_block_a8_72c42_ZTSN27AccelerationStructureViewer6FilterE(uint64_t a1)
{
  *(a1 + 72) = &unk_2860BC948;
  v1 = (a1 + 88);
  std::vector<AccelerationStructureViewer::FilterToken>::__destroy_vector::operator()[abi:nn200100](&v1);
}

uint64_t __copy_helper_block_a8_72c42_ZTSN27AccelerationStructureViewer6FilterE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 80);
  *(result + 88) = 0;
  *(result + 72) = &unk_2860BC948;
  *(result + 80) = v2;
  *(result + 96) = 0;
  *(result + 104) = 0;
  v3 = *(a2 + 88);
  v4 = *(a2 + 96);
  if (v4 != v3)
  {
    std::vector<AccelerationStructureViewer::FilterToken>::__vallocate[abi:nn200100](result + 88, 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3));
  }

  return result;
}

void ___ZN33AccelerationStructureViewerServer6Server4recvEPvm_block_invoke_4(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v14 = &unk_2860BB738;
  *__p = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = *a2;
  if (*a2 != a2[1])
  {
    v8 = 0;
    do
    {
      if (v8 >= v16)
      {
        v9 = (v8 - __p[0]) >> 3;
        if ((v9 + 1) >> 61)
        {
          std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
        }

        v10 = (v16 - __p[0]) >> 2;
        if (v10 <= v9 + 1)
        {
          v10 = v9 + 1;
        }

        if (v16 - __p[0] >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (v11)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewerServer::AccelerationStructure *>>(v11);
        }

        *(8 * v9) = v7;
        v8 = (8 * v9 + 8);
        v12 = (8 * v9 - (__p[1] - __p[0]));
        memcpy(v12, __p[0], __p[1] - __p[0]);
        v13 = __p[0];
        __p[0] = v12;
        __p[1] = v8;
        *&v16 = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v8 = v7;
        v8 += 8;
      }

      __p[1] = v8;
      v7 += 152;
    }

    while (v7 != a2[1]);
  }

  AccelerationStructureViewerServer::Server::replyQueryable(v6, 8, *(*(a1 + 40) + 8), &v14, v5);
  AccelerationStructureViewer::DataSourceArray::~DataSourceArray(&v14);
}

id *std::__copy_impl::operator()[abi:nn200100]<AccelerationStructureViewer::FilterToken *,AccelerationStructureViewer::FilterToken *,AccelerationStructureViewer::FilterToken *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = (a3 + 16);
    do
    {
      *(v5 - 2) = *(v4 + 8);
      objc_storeStrong(v5, *(v4 + 16));
      v4 += 24;
      v5 += 3;
    }

    while (v4 != a2);
    return v5 - 2;
  }

  return a3;
}

void *AccelerationStructureViewerServer::Server::lost(void *this, uint64_t a2)
{
  if (!a2)
  {
    this = this[4];
    if (this)
    {
      return (*(*this + 88))(this, 0, 1);
    }
  }

  return this;
}

uint64_t std::__function::__func<AccelerationStructureViewerServer::Intersector::Intersector(AccelerationStructureViewerServer::IntersectorType,objc_object  {objcproto9MTLDevice}*,objc_object  {objcproto10MTLLibrary}*,AccelerationStructureViewerServer::DataSource *,AccelerationStructureViewer::IntersectionFunctionTable *)::$_0,std::allocator<AccelerationStructureViewer::IntersectionFunctionTable>,void ()(unsigned long,BOOL,objc_object  {objcproto11MTLFunction}*,AccelerationStructureViewerServer::DataSource::IntersectionFunction *)>::operator()(void *a1, uint64_t a2, unsigned __int8 *a3, id *a4, uint64_t *a5)
{
  v6 = *a3;
  v7 = *a5;
  v8 = *a4;
  if (v8)
  {
    v31 = v8;
    v10 = *(v7 + 80);
    for (i = *(v7 + 88); v10 != i; ++v10)
    {
      v11 = a1[3];
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *v11;
      if (*v11 != v13)
      {
        v14 = *v11;
        while (*v14 != *v10)
        {
          v14 += 4;
          if (v14 == v13)
          {
            goto LABEL_9;
          }
        }
      }

      if (v14 == v13)
      {
LABEL_9:
        v15 = *(v11 + 16);
        if (v13 >= v15)
        {
          v17 = v13 - v12;
          v18 = (v13 - v12) >> 2;
          v19 = v18 + 1;
          if ((v18 + 1) >> 62)
          {
            std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
          }

          v20 = v15 - v12;
          if (v20 >> 1 > v19)
          {
            v19 = v20 >> 1;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v21 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v19;
          }

          if (v21)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewer::IntersectionFunctionTag>>(v21);
          }

          v22 = (v13 - v12) >> 2;
          v23 = (4 * v18);
          v24 = (4 * v18 - 4 * v22);
          *v23 = *v10;
          v16 = v23 + 1;
          memcpy(v24, v12, v17);
          v25 = *v11;
          *v11 = v24;
          *(v11 + 8) = v16;
          *(v11 + 16) = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          *v13 = *v10;
          v16 = v13 + 4;
        }

        *(v11 + 8) = v16;
        i = *(v7 + 88);
      }
    }

    if (v6)
    {
      v28 = a1[2];
      v27 = (a1 + 2);
      v26 = v28;
    }

    else
    {
      v29 = a1[1];
      v27 = (a1 + 1);
      v26 = v29;
    }

    if (([*v26 containsObject:v31] & 1) == 0)
    {
      [**v27 addObject:v31];
    }
  }

  return MEMORY[0x2821F9730]();
}

__n128 std::__function::__func<AccelerationStructureViewerServer::Intersector::Intersector(AccelerationStructureViewerServer::IntersectorType,objc_object  {objcproto9MTLDevice}*,objc_object  {objcproto10MTLLibrary}*,AccelerationStructureViewerServer::DataSource *,AccelerationStructureViewer::IntersectionFunctionTable *)::$_0,std::allocator<AccelerationStructureViewer::IntersectionFunctionTable>,void ()(unsigned long,BOOL,objc_object  {objcproto11MTLFunction}*,AccelerationStructureViewerServer::DataSource::IntersectionFunction *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2860BC980;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::allocator<GTWaitInstructionInfo>::destroy[abi:nn200100](void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;

    operator delete(v3);
  }
}

void std::vector<GTRegisterPressureInstructionInfo>::__base_destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 96)
  {
    for (j = -24; j != -120; j -= 24)
    {
      v6 = *(i + j);
      if (v6)
      {
        operator delete(v6);
      }
    }
  }

  *(a1 + 8) = a2;
}

uint64_t std::__copy_move_unwrap_iters[abi:nn200100]<std::__copy_impl,GTRegisterPressureInstructionInfo *,GTRegisterPressureInstructionInfo *,GTRegisterPressureInstructionInfo *,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      for (i = 0; i != 96; i += 24)
      {
        if (a3 != v5)
        {
          v7 = v5 + i;
          v8 = *(v5 + i + 8);
          if (v8)
          {
            v9 = a3 + i;
            if (v8 > *(a3 + i + 16) << 6)
            {
              if (*v9)
              {
                operator delete(*v9);
                *v9 = 0;
                *(v9 + 8) = 0;
                *(v9 + 16) = 0;
                v8 = *(v7 + 8);
              }

              std::vector<BOOL>::__vallocate[abi:nn200100](a3 + i, v8);
            }

            memmove(*v9, *(v5 + i), (((v8 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8) + 8);
            v10 = *(v7 + 8);
          }

          else
          {
            v10 = 0;
          }

          *(a3 + i + 8) = v10;
        }
      }

      v5 += 96;
      a3 += 96;
    }

    while (v5 != a2);
  }

  return a3;
}

void *std::vector<GTRegisterPressureInstructionInfo>::__construct_at_end<GTRegisterPressureInstructionInfo*,GTRegisterPressureInstructionInfo*>(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = result[1];
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      for (i = 0; i != 96; i += 24)
      {
        result = std::vector<BOOL>::vector((v4 + i), v6 + i);
      }

      v6 += 96;
      v4 += 96;
    }

    while (v6 != a3);
  }

  v3[1] = v4;
  return result;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<GTWaitInstructionInfo *,GTWaitInstructionInfo *,GTWaitInstructionInfo *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      *a3 = *v5;
      if (v5 != a3)
      {
        std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((a3 + 8), *(v5 + 8), *(v5 + 16), (*(v5 + 16) - *(v5 + 8)) >> 2);
        std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((a3 + 32), *(v5 + 32), *(v5 + 40), (*(v5 + 40) - *(v5 + 32)) >> 2);
      }

      v5 += 56;
      a3 += 56;
    }

    while (v5 != a2);
  }

  return a3;
}

_DWORD *std::__uninitialized_allocator_copy_impl[abi:nn200100]<std::allocator<GTWaitInstructionInfo>,GTWaitInstructionInfo*,GTWaitInstructionInfo*,GTWaitInstructionInfo*>(_DWORD *a1, _DWORD *a2, _DWORD *a3)
{
  v3 = a3;
  if (a1 == a2)
  {
    return a3;
  }

  v5 = a1;
  v6 = a1;
  v7 = a3;
  do
  {
    v8 = *v6;
    v6 += 14;
    *v7 = v8;
    v7 += 14;
    std::vector<unsigned int>::vector[abi:nn200100](v3 + 1, v5 + 1);
    std::vector<unsigned int>::vector[abi:nn200100](v3 + 4, v5 + 4);
    v5 = v6;
    v3 = v7;
  }

  while (v6 != a2);
  return v7;
}

void *std::vector<unsigned int>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<AccelerationStructureViewer::IntersectionFunctionTag>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 2);
  }

  return result;
}

void *std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<AccelerationStructureViewer::IntersectionFunctionTag>::__vallocate[abi:nn200100](v6, v10);
    }

    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

__n128 GTMTLGetTextureLevelInfoForDeviceWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  MTLGetTextureLevelInfoForDeviceWithOptions();
  v11 = a3 + 11;
  if ((a3 - 501) <= 0x3E)
  {
    if (((1 << v11) & 0x2000000000100001) != 0)
    {
      *a1 = 0u;
      result.n128_u64[0] = 0;
      *(a1 + 48) = 0u;
      v12 = 2 * a7;
      goto LABEL_7;
    }

    if (((1 << v11) & 0x4000000000800008) != 0)
    {
      goto LABEL_5;
    }
  }

  if (a3 == 590)
  {
LABEL_5:
    *a1 = 0u;
    result.n128_u64[0] = 0;
    *(a1 + 48) = 0u;
    v12 = 4 * a7;
LABEL_7:
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = v12;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    return result;
  }

  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  result = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  return result;
}

uint64_t GTMTLPixelFormatGetInfoForDevice(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  result = MTLPixelFormatGetInfoForDevice();
  v6 = *(a1 + 8);
  if (v6)
  {
    if (a3 > 500)
    {
      v7 = a3 + 11;
      if ((a3 - 501) > 0x3E)
      {
        goto LABEL_6;
      }

      if (((1 << v7) & 0x2000000000100001) != 0)
      {
        v8 = 2;
        goto LABEL_9;
      }

      if (((1 << v7) & 0x4000000000800008) == 0)
      {
LABEL_6:
        if (a3 != 590)
        {
          return result;
        }
      }

      v8 = 4;
LABEL_9:
      *(a1 + 24) = v8;
      return result;
    }

    if (a3 == 141 || a3 == 143)
    {
      *(a1 + 8) = v6 & 0xFFFFF7FF;
    }
  }

  return result;
}

id MTLHeap_backbuffer(void *a1)
{
  v1 = a1;
  v2 = [v1 currentAllocatedSize];
  v3 = [v1 resourceOptions];
  if ([v1 type])
  {
    if ([v1 type] == 1)
    {
      v4 = [v1 newBufferWithLength:v2 options:v3 offset:0];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = [v1 newBufferWithLength:v2 options:v3];
    [v4 makeAliasable];
  }

  [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.gputools.MTLHeapBackBuffer_0x%llx", v1];

  return v4;
}

id DEVICEOBJECT(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  while ((objc_opt_respondsToSelector() & 1) != 0)
  {
    a1 = [a1 performSelector:sel_baseObject];
  }

  objc_autoreleasePoolPop(v2);

  return a1;
}

void MakeGTMTLTensorExtents(uint64_t a1, void *a2)
{
  v3 = a2;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  v9 = v3;
  v5 = [v3 rank];
  *a1 = v5;
  if (v5)
  {
    v6 = 0;
    v7 = v5 - 1;
    if ((v5 - 1) >= 0xF)
    {
      v7 = 15;
    }

    v8 = 8 * v7 + 8;
    do
    {
      *(v4 + v6) = *([v9 extents] + v6);
      v6 += 8;
    }

    while (v8 != v6);
  }
}

id MakeMTLTensorExtents(void *a1)
{
  v1 = 0;
  v7 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  v2 = *a1;
  do
  {
    if (v2 == v1)
    {
      break;
    }

    *(v6 + v1) = a1[v1 + 1];
    ++v1;
  }

  while (v1 != 16);
  v3 = [objc_alloc(MEMORY[0x277CD7040]) initWithRank:*a1 extents:v6];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

id MTLTensorExtents_computeStrides(void *a1)
{
  MakeGTMTLTensorExtents(&v8, a1);
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v10[0] = v8;
  v10[1] = 1;
  if (v8 >= 2)
  {
    v1 = &v9;
    v2 = v8 - 1;
    v3 = v11;
    v4 = 1;
    do
    {
      v5 = *v1++;
      v4 *= v5;
      *v3++ = v4;
      --v2;
    }

    while (v2);
  }

  v6 = MakeMTLTensorExtents(v10);

  return v6;
}

void GTMTLTensor_wholeSlice(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CD7040];
  v4 = a2;
  v5 = [v3 alloc];
  v8 = [v4 dimensions];
  v6 = [v5 initWithRank:objc_msgSend(v8 extents:{"rank"), &GTMTLTensor_wholeSlice_origin}];
  MakeGTMTLTensorExtents(a1, v6);
  v7 = [v4 dimensions];

  MakeGTMTLTensorExtents(a1 + 136, v7);
}

id GTMTLTensorSlice_origin(uint64_t a1)
{
  v1 = *(a1 + 112);
  v7[6] = *(a1 + 96);
  v7[7] = v1;
  v8 = *(a1 + 128);
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v3 = *(a1 + 80);
  v7[4] = *(a1 + 64);
  v7[5] = v3;
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  v5 = MakeMTLTensorExtents(v7);

  return v5;
}

id GTMTLTensorSlice_dimensions(uint64_t a1)
{
  v1 = *(a1 + 216);
  v2 = *(a1 + 248);
  v7[6] = *(a1 + 232);
  v7[7] = v2;
  v8 = *(a1 + 264);
  v3 = *(a1 + 152);
  v4 = *(a1 + 184);
  v7[2] = *(a1 + 168);
  v7[3] = v4;
  v7[4] = *(a1 + 200);
  v7[5] = v1;
  v7[0] = *(a1 + 136);
  v7[1] = v3;
  v5 = MakeMTLTensorExtents(v7);

  return v5;
}

id MakeMTLLogicalToPhysicalColorAttachmentMap(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v1 = objc_opt_new();
  v2 = 0;
  while (1)
  {
    v3 = *(&v7 + v2);
    if (v3 == 255)
    {
      break;
    }

    [v1 setPhysicalIndex:v3 forLogicalIndex:{v2++, v7, v8}];
    if (v2 == 8)
    {
      v4 = v1;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

vm_address_t GTCoreAlloc(memory_object_size_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  address = 0;
  object_handle = 0;
  size = a1;
  v2 = MEMORY[0x277D85F48];
  memory_entry_64 = mach_make_memory_entry_64(*MEMORY[0x277D85F48], &size, 0, 139267, &object_handle, 0);
  if (memory_entry_64)
  {
    v4 = memory_entry_64;
    if (s_logUsingOsLog != 1)
    {
      v11 = *MEMORY[0x277D85DF8];
      mach_error_string(memory_entry_64);
      fprintf(v11, "warning: failed to create memory entry error 0x%x (%s)\n");
      goto LABEL_13;
    }

    v5 = gt_tagged_log(3u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = mach_error_string(v4);
      *buf = 67109378;
      v19 = v4;
      v20 = 2080;
      v21 = v6;
      v7 = "warning: failed to create memory entry error 0x%x (%s)";
LABEL_9:
      _os_log_error_impl(&dword_24D764000, v5, OS_LOG_TYPE_ERROR, v7, buf, 0x12u);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v8 = vm_map(*v2, &address, a1, 0, 1, object_handle, 0, 0, 3, 3, 1u);
  if (v8)
  {
    v9 = v8;
    if (s_logUsingOsLog != 1)
    {
      v13 = *MEMORY[0x277D85DF8];
      mach_error_string(v8);
      fprintf(v13, "warning: failed to map memory error 0x%x (%s)\n");
      goto LABEL_13;
    }

    v5 = gt_tagged_log(3u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = mach_error_string(v9);
      *buf = 67109378;
      v19 = v9;
      v20 = 2080;
      v21 = v10;
      v7 = "warning: failed to map memory error 0x%x (%s)";
      goto LABEL_9;
    }

LABEL_13:
    result = 0;
    goto LABEL_14;
  }

  mach_port_deallocate(*v2, object_handle);
  result = address;
LABEL_14:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

id PrettifyFenumString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 hasPrefix:@"kDYFE"])
    {
      v3 = [v2 substringFromIndex:5];

      v2 = v3;
    }

    v4 = [v2 rangeOfString:@"_"];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [v2 stringByReplacingOccurrencesOfString:@"_" withString:@" " options:0 range:{v4, v5}];

      v2 = v6;
    }

    v7 = [v2 stringByReplacingOccurrencesOfString:@"_" withString:@":"];

    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@[%@%@]", @"-", v7, @":"];
  }

  return v2;
}

void GTError_addError(int *a1, uint64_t a2)
{
  if (a1 && *(a2 + 4))
  {
    if (GTError_initialize_onceToken != -1)
    {
      dispatch_once(&GTError_initialize_onceToken, &__block_literal_global_10851);
    }

    if (a1[1])
    {
      v4 = *a2 | *a1 | 2;
    }

    else
    {
      v5 = *a1;
      v7 = *(a2 + 16);
      v6 = *(a2 + 32);
      *a1 = *a2;
      *(a1 + 1) = v7;
      *(a1 + 2) = v6;
      v4 = *a1 | v5;
    }

    *a1 = v4;
  }
}

uint64_t gt_error_assert_add_error(int *a1, int a2, uint64_t a3)
{
  if (a1 && (a2 & 1) == 0)
  {
    v5[0] = *a1;
    v5[1] = 500;
    v6 = a3;
    v7 = 0u;
    v8 = 0u;
    GTError_addError(a1, v5);
  }

  return a2 ^ 1u;
}

char *gt_filepath_merge(const char *a1, const char *a2, apr_pool_t *a3)
{
  v6 = strlen(a1);
  v7 = strlen(a2);
  v8 = v7;
  if (v6)
  {
    v6 -= a1[v6 - 1] == 47;
  }

  v9 = apr_palloc(a3, v7 + v6 + 2);
  memcpy(v9, a1, v6);
  v9[v6] = 47;
  memcpy(&v9[v6 + 1], a2, v8);
  v9[v8 + 1 + v6] = 0;
  return v9;
}

unint64_t MinBytesPerRow(int a1, unsigned int a2)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (a1 > 1885745711)
        {
          if (a1 <= 2016686639)
          {
            if (a1 != 1885745712)
            {
              if (a1 == 1999843442)
              {
                goto LABEL_67;
              }

              v4 = 1999908961;
              goto LABEL_56;
            }
          }

          else if (a1 <= 2019963439)
          {
            if (a1 != 2016686640)
            {
              return 0;
            }
          }

          else if (a1 != 2019963440)
          {
            if (a1 != 2037741171)
            {
              v3 = 2037741158;
LABEL_62:
              if (a1 == v3)
              {
                goto LABEL_63;
              }

              return 0;
            }

            goto LABEL_63;
          }
        }

        if (a1 <= 1815162993)
        {
          break;
        }

        if (a1 != 1882468912)
        {
          if (a1 == 1815162994)
          {
            goto LABEL_67;
          }

          v4 = 1815491698;
LABEL_56:
          if (a1 != v4)
          {
            return 0;
          }

LABEL_68:
          a2 *= 8;
          return a2;
        }
      }

      if (a1 <= 1380411456)
      {
        break;
      }

      if (a1 != 1751527984)
      {
        if (a1 == 1380411457)
        {
          goto LABEL_68;
        }

        v6 = 1667838256;
LABEL_66:
        if (a1 == v6)
        {
          goto LABEL_67;
        }

        return 0;
      }
    }

    if (a1 <= 846624101)
    {
      if (a1 > 828584239)
      {
        if (a1 > 843264103)
        {
          if (a1 == 843264104 || a1 == 843264310)
          {
            goto LABEL_67;
          }

          if (a1 != 845361456)
          {
            return 0;
          }

          v5 = 2 * a2 + 2;
        }

        else
        {
          if (a1 != 828584240)
          {
            if (a1 == 843264056)
            {
              goto LABEL_63;
            }

            v4 = 843264102;
            goto LABEL_56;
          }

          v5 = a2 + 2;
        }

        return (2 * ((2863311531u * v5) >> 32)) & 0xFFFFFFFC;
      }

      if (a1 > 826486885)
      {
        if (a1 == 826486886)
        {
          goto LABEL_67;
        }

        if (a1 != 826486888)
        {
          v3 = 826487094;
          goto LABEL_62;
        }

LABEL_63:
        a2 *= 2;
        return a2;
      }

      if (a1 == 24)
      {
        a2 *= 3;
        return a2;
      }

      if (a1 == 32)
      {
        goto LABEL_67;
      }

      v2 = 826486840;
LABEL_50:
      if (a1 == v2)
      {
        return a2;
      }

      return 0;
    }

    if (a1 > 1094862673)
    {
      break;
    }

    if (a1 > 875704437)
    {
      if (a1 != 875704438 && a1 != 875836518 && a1 != 875836534)
      {
        return 0;
      }
    }

    else
    {
      if (a1 == 846624102 || a1 == 846624121)
      {
        goto LABEL_63;
      }

      if (a1 != 875704422)
      {
        return 0;
      }
    }

    a1 = 826486840;
  }

  if (a1 <= 1278226533)
  {
    if (a1 == 1094862674 || a1 == 1111970369)
    {
      goto LABEL_67;
    }

    v2 = 1278226488;
    goto LABEL_50;
  }

  if (a1 > 1278226741)
  {
    if (a1 == 1278226742)
    {
      goto LABEL_63;
    }

    v6 = 1380401729;
    goto LABEL_66;
  }

  if (a1 != 1278226534)
  {
    v3 = 1278226536;
    goto LABEL_62;
  }

LABEL_67:
  a2 *= 4;
  return a2;
}

uint64_t IsBiplanar(int a1)
{
  result = 1;
  if (a1 <= 875836517)
  {
    if (a1 > 645428783)
    {
      if (a1 != 645428784 && a1 != 875704422)
      {
        v3 = 875704438;
LABEL_18:
        if (a1 != v3)
        {
          return 0;
        }
      }
    }

    else if (a1 != 641230384 && a1 != 641234480)
    {
      v3 = 645424688;
      goto LABEL_18;
    }
  }

  else
  {
    if (a1 > 1882468911)
    {
      if (a1 > 2016686639)
      {
        if (a1 == 2016686640)
        {
          return result;
        }

        v3 = 2019963440;
      }

      else
      {
        if (a1 == 1882468912)
        {
          return result;
        }

        v3 = 1885745712;
      }

      goto LABEL_18;
    }

    if (a1 != 875836518 && a1 != 875836534)
    {
      v3 = 1751527984;
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t BytesPerElement(int a1)
{
  v1 = 1;
  if (a1 <= 875836533)
  {
    if (a1 <= 828584239)
    {
      if (a1 <= 645428783)
      {
        if (a1 <= 641230383)
        {
          if (a1 == 24)
          {
            return 3;
          }

          if (a1 == 32)
          {
            return 4;
          }
        }

        return 0;
      }

      if (a1 <= 826486885)
      {
        if (a1 == 826486840)
        {
          return v1;
        }

        return 0;
      }

      if (a1 == 826486886)
      {
        return 4;
      }

      if (a1 == 826486888)
      {
        return 2;
      }

      v3 = 826487094;
    }

    else
    {
      if (a1 > 845361455)
      {
        if (a1 <= 875704421)
        {
          if (a1 != 845361456)
          {
            if (a1 != 846624102)
            {
              v2 = 846624121;
              goto LABEL_56;
            }

            return 4;
          }

          return 8;
        }

        return 0;
      }

      if (a1 > 843264101)
      {
        if (a1 != 843264102)
        {
          if (a1 == 843264104)
          {
            return 4;
          }

          v2 = 843264310;
          goto LABEL_56;
        }

        return 8;
      }

      if (a1 == 828584240)
      {
        return 4;
      }

      v3 = 843264056;
    }

    goto LABEL_52;
  }

  if (a1 > 1751527983)
  {
    if (a1 <= 1999843441)
    {
      if (a1 > 1815491697)
      {
        if (a1 != 1815491698)
        {
          return 0;
        }

        return 8;
      }

      if (a1 == 1751527984)
      {
        return 0;
      }

      v2 = 1815162994;
    }

    else
    {
      if (a1 <= 2019963439)
      {
        if (a1 == 1999843442)
        {
          return 4;
        }

        if (a1 != 1999908961)
        {
          return 0;
        }

        return 8;
      }

      if (a1 == 2019963440)
      {
        return 0;
      }

      if (a1 == 2037741158)
      {
        return 4;
      }

      v2 = 2037741171;
    }

LABEL_56:
    if (a1 == v2)
    {
      return 4;
    }

    return 0;
  }

  if (a1 > 1278226535)
  {
    if (a1 > 1380401728)
    {
      if (a1 == 1380401729)
      {
        return 4;
      }

      if (a1 != 1380411457)
      {
        v2 = 1667838256;
        goto LABEL_56;
      }

      return 8;
    }

    if (a1 == 1278226536)
    {
      return 2;
    }

    v3 = 1278226742;
LABEL_52:
    if (a1 != v3)
    {
      return 0;
    }

    return 2;
  }

  if (a1 <= 1111970368)
  {
    if (a1 == 875836534)
    {
      return 0;
    }

    v2 = 1094862674;
    goto LABEL_56;
  }

  if (a1 == 1111970369)
  {
    return 4;
  }

  if (a1 != 1278226488)
  {
    v2 = 1278226534;
    goto LABEL_56;
  }

  return v1;
}

uint64_t ElementWidth(int a1)
{
  v1 = 2;
  if (a1 <= 875704437)
  {
    if (a1 <= 828584239)
    {
      if (a1 > 645424687)
      {
        if (a1 != 645424688)
        {
          v2 = 645428784;
          return a1 != v2;
        }
      }

      else if (a1 != 641230384)
      {
        v2 = 641234480;
        return a1 != v2;
      }

      return 0;
    }

    if (a1 <= 846624101)
    {
      if (a1 != 828584240 && a1 != 845361456)
      {
        return 1;
      }

      return 3;
    }

    else if (a1 != 846624102 && a1 != 846624121)
    {
      v2 = 875704422;
      return a1 != v2;
    }
  }

  else
  {
    if (a1 <= 1885745711)
    {
      if (a1 > 875836533)
      {
        if (a1 == 875836534 || a1 == 1751527984)
        {
          return 0;
        }

        v2 = 1882468912;
        return a1 != v2;
      }

      if (a1 != 875704438)
      {
        v2 = 875836518;
        return a1 != v2;
      }

      return 0;
    }

    if (a1 <= 2019963439)
    {
      if (a1 != 1885745712)
      {
        v2 = 2016686640;
        return a1 != v2;
      }

      return 0;
    }

    if (a1 == 2019963440)
    {
      return 0;
    }

    if (a1 != 2037741158 && a1 != 2037741171)
    {
      return 1;
    }
  }

  return v1;
}

id gt_tagged_log(unsigned int a1)
{
  v1 = &GTCoreLog_getLogForTag_s_logs[3 * a1];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __GTCoreLog_getLogForTag_block_invoke;
  v9 = &__block_descriptor_44_e5_v8__0l;
  LODWORD(v11) = a1;
  v10 = v1;
  if (*v1 != -1)
  {
    dispatch_once(&GTCoreLog_getLogForTag_s_logs[3 * a1], &v6);
  }

  if (v1[1] && ([MEMORY[0x277CBEBD0] standardUserDefaults], v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "BOOLForKey:", v1[1]), v2, !v3))
  {
    v4 = MEMORY[0x277D86228];
  }

  else
  {
    v4 = v1[2];
  }

  return v4;
}

void __GTCoreLogInit_block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"GPUToolsPerfLogging"];

  if (v1)
  {
    v2 = os_log_create("com.apple.gputools.perf", "");
    v3 = g_signpostLog;
    g_signpostLog = v2;
  }
}

id SanitizedShortString(void *a1, unint64_t a2)
{
  v3 = MEMORY[0x277CCA900];
  v4 = a1;
  v5 = [v3 alphanumericCharacterSet];
  v6 = [v5 invertedSet];

  v7 = [v4 componentsSeparatedByCharactersInSet:v6];

  v8 = [v7 componentsJoinedByString:&stru_2860BD438];
  if ([v8 length] > a2)
  {
    v9 = [v8 substringToIndex:a2];

    v8 = v9;
  }

  return v8;
}

const char *GTString_isMetalPackageURL(const char *result)
{
  if (result)
  {
    v1 = result;
    v2 = strlen(result);
    if (v2 >= 11)
    {
      return (strcmp(&v1[(v2 & 0x7FFFFFFF) - 11], ".mtlpackage") == 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

apr_hash_t *__cdecl apr_hash_make(apr_pool_t *pool)
{
  v6.tv_sec = 0;
  *&v6.tv_usec = 0;
  gettimeofday(&v6, 0);
  v6.tv_sec = v6.tv_usec + 1000000 * v6.tv_sec;
  tv_sec = v6.tv_sec;
  v3 = apr_palloc(pool, 0x50uLL);
  *v3 = pool;
  v3[9] = 0;
  v3[6] = 0xF00000000;
  *(v3 + 14) = (&v6 ^ pool ^ v3 ^ tv_sec ^ HIDWORD(tv_sec)) - 1;
  v4 = apr_palloc(pool, 0x80uLL);
  if (v4)
  {
    v4[6] = 0u;
    v4[7] = 0u;
    v4[4] = 0u;
    v4[5] = 0u;
    v4[2] = 0u;
    v4[3] = 0u;
    *v4 = 0u;
    v4[1] = 0u;
  }

  v3[1] = v4;
  v3[8] = 0;
  return v3;
}

apr_hash_index_t *__cdecl apr_hash_next(apr_hash_index_t *hi)
{
  v1 = *(hi + 2);
  *(hi + 1) = v1;
  if (v1)
  {
LABEL_5:
    *(hi + 2) = *v1;
  }

  else
  {
    v2 = *hi;
    v3 = *(*hi + 52);
    v4 = *(hi + 6);
    while (v4 <= v3)
    {
      v1 = *(*(v2 + 8) + 8 * v4++);
      *(hi + 6) = v4;
      *(hi + 1) = v1;
      if (v1)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

  return hi;
}

apr_hash_index_t *__cdecl apr_hash_first(apr_pool_t *p, apr_hash_t *ht)
{
  if (p)
  {
    v3 = apr_palloc(p, 0x20uLL);
  }

  else
  {
    v3 = ht + 16;
  }

  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = ht;
  *(v3 + 6) = 0;

  return apr_hash_next(v3);
}

apr_hash_t *__cdecl apr_hash_copy(apr_pool_t *pool, const apr_hash_t *h)
{
  result = apr_palloc(pool, 40 * *(h + 12) + 8 * (*(h + 13) + 1) + 80);
  v5 = 0;
  v6 = 0;
  *(result + 12) = *(h + 12);
  v7 = *(h + 52);
  *(result + 52) = v7;
  *(result + 8) = *(h + 8);
  *(result + 9) = 0;
  *result = pool;
  *(result + 1) = result + 80;
  if ((v7 + 1) > 1)
  {
    v8 = (v7 + 1);
  }

  else
  {
    v8 = 1;
  }

  do
  {
    v9 = (*(result + 1) + 8 * v5);
    v10 = *(*(h + 1) + 8 * v5);
    if (v10)
    {
      do
      {
        v11 = (v6 + 1);
        v12 = result + 40 * v6 + 8 * (v7 + 1) + 80;
        *v9 = v12;
        *(v12 + 2) = *(v10 + 2);
        v13 = v10[3];
        *(v12 + 2) = v10[2];
        v6 = *v9;
        v14 = v10[4];
        v6[3] = v13;
        v6[4] = v14;
        v9 = *v9;
        v10 = *v10;
        LODWORD(v6) = v11;
      }

      while (v10);
    }

    else
    {
      v11 = v6;
    }

    *v9 = 0;
    ++v5;
    v6 = v11;
  }

  while (v5 != v8);
  return result;
}

void *find_entry(uint64_t a1, _BYTE *a2, size_t a3, uint64_t a4)
{
  __n = a3;
  v7 = *(a1 + 64);
  if (v7)
  {
    v8 = v7(a2, &__n);
  }

  else
  {
    v8 = *(a1 + 56);
    if (a3 == -1)
    {
      v18 = *a2;
      if (*a2)
      {
        v19 = a2;
        do
        {
          v8 = 33 * v8 + v18;
          v20 = *++v19;
          v18 = v20;
        }

        while (v20);
      }

      else
      {
        v19 = a2;
      }

      __n = v19 - a2;
    }

    else if (a3)
    {
      v14 = a2;
      do
      {
        v15 = *v14++;
        v8 = 33 * v8 + v15;
        --a3;
      }

      while (a3);
    }
  }

  v9 = (*(a1 + 8) + 8 * (*(a1 + 52) & v8));
  v10 = *v9;
  if (*v9)
  {
    v11 = __n;
    while (1)
    {
      v12 = v9;
      v9 = v10;
      if (*(v10 + 8) == v8 && *(v10 + 24) == v11 && !memcmp(*(v10 + 16), a2, v11))
      {
        break;
      }

      v10 = *v9;
      if (!*v9)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    if (a4)
    {
      v13 = *(a1 + 72);
      if (v13)
      {
        *(a1 + 72) = *v13;
      }

      else
      {
        v13 = apr_palloc(*a1, 0x28uLL);
      }

      *v13 = 0;
      v13[2] = v8;
      v16 = __n;
      *(v13 + 2) = a2;
      *(v13 + 3) = v16;
      *(v13 + 4) = a4;
      *v9 = v13;
      ++*(a1 + 48);
    }

    return v9;
  }

  return v12;
}

void apr_hash_set(apr_hash_t *ht, const void *key, apr_ssize_t klen, const void *val)
{
  entry = find_entry(ht, key, klen, val);
  v7 = *entry;
  if (*entry)
  {
    if (val)
    {
      v7[4] = val;
      v8 = *(ht + 13);
      if (*(ht + 12) > v8)
      {
        v9 = (2 * v8) | 1;
        v10 = 8 * (2 * v8 + 2);
        v11 = apr_palloc(*ht, v10);
        v12 = v11;
        if (v11)
        {
          bzero(v11, v10);
        }

        *(ht + 3) = 0;
        *(ht + 4) = 0;
        *(ht + 2) = ht;
        *(ht + 10) = 0;
        v13 = (ht + 16);
        while (1)
        {
          v13 = apr_hash_next(v13);
          if (!v13)
          {
            break;
          }

          v14 = *(v13 + 1);
          v15 = *(v14 + 8) & v9;
          *v14 = v12[v15];
          v12[v15] = v14;
        }

        *(ht + 1) = v12;
        *(ht + 13) = v9;
      }
    }

    else
    {
      *entry = *v7;
      *v7 = *(ht + 9);
      *(ht + 9) = v7;
      --*(ht + 12);
    }
  }
}

void apr_hash_clear(apr_hash_t *ht)
{
  *(ht + 3) = 0;
  *(ht + 4) = 0;
  *(ht + 2) = ht;
  *(ht + 10) = 0;
  v2 = apr_hash_next((ht + 16));
  if (v2)
  {
    v3 = v2;
    do
    {
      apr_hash_set(ht, *(*(v3 + 1) + 16), *(*(v3 + 1) + 24), 0);
      v3 = apr_hash_next(v3);
    }

    while (v3);
  }
}

uint64_t atomic_cleanup(uint64_t a1)
{
  if (hash_mutex == a1)
  {
    hash_mutex = 0;
  }

  return 0;
}

void apr_pool_destroy(apr_pool_t *p)
{
  for (i = *(p + 14); i; i = *(p + 14))
  {
    *(p + 14) = *i;
    (*(i + 16))(*(i + 8));
  }

  *(p + 14) = 0;
  while (1)
  {
    v6 = *(p + 1);
    if (!v6)
    {
      break;
    }

    apr_pool_destroy(v6);
  }

  while (1)
  {
    v7 = *(p + 4);
    if (!v7)
    {
      break;
    }

    *(p + 4) = *v7;
    (*(v7 + 16))(*(v7 + 8));
  }

  free_proc_chain(*(p + 7), v1, v2, v3);
  if (*p)
  {
    v8 = *(*(*p + 48) + 24);
    if (v8)
    {
      pthread_mutex_lock((v8 + 8));
    }

    v9 = *(p + 2);
    **(p + 3) = v9;
    if (v9)
    {
      *(v9 + 24) = *(p + 3);
    }

    if (v8)
    {
      pthread_mutex_unlock((v8 + 8));
    }
  }

  v10 = *(p + 6);
  v11 = *(p + 12);
  *v11[1] = 0;
  if (v10[4] == p)
  {
    v10[3] = 0;
  }

  else
  {
    v12 = v10[3];
    if (v12)
    {
      pthread_mutex_lock((v12 + 8));
    }
  }

  v13 = 0;
  v14 = *v10;
  v15 = v10[1];
  v16 = (v10 + 5);
  v17 = v10[2];
  do
  {
    while (1)
    {
      v18 = v11;
      v11 = *v11;
      v19 = *(v18 + 4);
      if (!v15 || v17 > v19)
      {
        break;
      }

      *v18 = v13;
      v13 = v18;
      if (!v11)
      {
        goto LABEL_35;
      }
    }

    if (v19 > 0x13)
    {
      *v18 = *v16;
      *v16 = v18;
    }

    else
    {
      v20 = v16[v19];
      *v18 = v20;
      if (v14 <= v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = v14;
      }

      if (!v20)
      {
        v14 = v21;
      }

      v16[v19] = v18;
    }

    v22 = v17 > v19;
    v17 += ~v19;
    if (!v22)
    {
      v17 = 0;
    }
  }

  while (v11);
LABEL_35:
  *v10 = v14;
  v10[2] = v17;
  v23 = v10[3];
  if (v23)
  {
    pthread_mutex_unlock((v23 + 8));
  }

  if (v13)
  {
    v24 = MEMORY[0x277D85F48];
    do
    {
      v25 = *v13;
      MEMORY[0x253034350](*v24, v13, ((*(v13 + 4) << 12) + 4096));
      v13 = v25;
    }

    while (v25);
  }

  if (v10[4] == p)
  {

    apr_allocator_destroy(v10);
  }
}

unsigned int *free_proc_chain(unsigned int *result, uint64_t a2, apr_exit_why_e *a3, apr_wait_how_e a4)
{
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = result;
  do
  {
    result = apr_proc_wait(*v5, 1, a3, a4);
    if (result != 70006)
    {
      v5[2] = 0;
    }

    v5 = *(v5 + 2);
  }

  while (v5);
  v6 = v4;
  do
  {
    v7 = v6[2];
    if (v7 == 1)
    {
      result = apr_proc_kill(**v6, 9);
    }

    else if (v7 == 4 || v7 == 2)
    {
      result = apr_proc_kill(**v6, 15);
      if (!result)
      {
        LODWORD(v5) = 1;
      }
    }

    v6 = *(v6 + 2);
  }

  while (v6);
  v9 = v4;
  if (!v5)
  {
    goto LABEL_29;
  }

  v14 = xmmword_24DA8BC80;
  result = select(0, 0, 0, 0, &v14);
  v10 = 46875;
  while (2)
  {
    v11 = 0;
    v12 = v4;
    do
    {
      v13 = v11;
      if (v12[2] == 2)
      {
        v11 = 1;
        result = apr_proc_wait(*v12, 1, a3, a4);
        if (result == 70006)
        {
          goto LABEL_24;
        }

        v12[2] = 0;
      }

      v11 = v13;
LABEL_24:
      v12 = *(v12 + 2);
    }

    while (v12);
    if (v11 && v10 <= 0x2DC6BF)
    {
      *&v14 = v10 / 0xF4240;
      *(&v14 + 1) = v10 % 0xF4240;
      result = select(0, 0, 0, 0, &v14);
      v10 *= 2;
      continue;
    }

    break;
  }

  v9 = v4;
  do
  {
LABEL_29:
    if (v9[2] == 2)
    {
      result = apr_proc_kill(**v9, 9);
    }

    v9 = *(v9 + 2);
  }

  while (v9);
  do
  {
    if (v4[2])
    {
      result = apr_proc_wait(*v4, 0, a3, a4);
    }

    v4 = *(v4 + 2);
  }

  while (v4);
  return result;
}

void apr_allocator_destroy(apr_allocator_t *allocator)
{
  v1 = 0;
  v2 = allocator + 40;
  v3 = MEMORY[0x277D85F48];
  do
  {
    while (1)
    {
      v4 = *&v2[8 * v1];
      if (!v4)
      {
        break;
      }

      *&v2[8 * v1] = *v4;
      v5 = (*(v4 + 16) << 12);
      MEMORY[0x253034350](*v3);
    }

    ++v1;
  }

  while (v1 != 20);
  v6 = *v3;

  JUMPOUT(0x253034350);
}

uint64_t **allocator_alloc(unint64_t *a1, unint64_t a2)
{
  if (a2 + 4135 >= 0x2000)
  {
    v2 = (a2 + 4135) & 0xFFFFFFFFFFFFF000;
  }

  else
  {
    v2 = 0x2000;
  }

  if (((a2 + 4135) & 0xFFFFFFFFFFFFF000) < a2 || v2 == 0)
  {
    return 0;
  }

  v4 = v2 >> 12;
  v5 = (v2 >> 12) - 1;
  if (HIDWORD(v5))
  {
    return 0;
  }

  v8 = a1[3];
  if (v8)
  {
    pthread_mutex_lock((v8 + 8));
  }

  v10 = (a1 + 5);
  v9 = *a1;
  if (v5 <= *a1)
  {
    v13 = &v10[v5];
    v6 = *v13;
    v14 = *v13 == 0;
    v15 = v5 < v9;
    if (*v13)
    {
      v16 = 1;
    }

    else
    {
      v16 = v5 >= v9;
    }

    if (!v16)
    {
      do
      {
        v17 = v13[1];
        ++v13;
        v6 = v17;
        v14 = v17 == 0;
        v15 = v4 < v9;
        if (v17)
        {
          v18 = 1;
        }

        else
        {
          v18 = v4 >= v9;
        }

        ++v4;
      }

      while (!v18);
    }

    if (v14)
    {
      goto LABEL_28;
    }

    v21 = *v6;
    *v13 = *v6;
    if (v21 == 0 && !v15)
    {
      v22 = v13 - 1;
      do
      {
        if (*v22--)
        {
          v24 = 1;
        }

        else
        {
          v24 = v9 == 1;
        }

        --v9;
      }

      while (!v24);
      *a1 = v9;
    }

    v12 = (*(v6 + 4) + 1);
LABEL_41:
    v25 = a1[2] + v12;
    if (v25 >= a1[1])
    {
      v25 = a1[1];
    }

    a1[2] = v25;
    v26 = a1[3];
    if (v26)
    {
      pthread_mutex_unlock((v26 + 8));
    }

    goto LABEL_45;
  }

  v6 = *v10;
  if (!*v10)
  {
    goto LABEL_28;
  }

  v11 = *(v6 + 4);
  if (v5 <= v11)
  {
LABEL_17:
    *v10 = *v6;
    v12 = (v11 + 1);
    goto LABEL_41;
  }

  while (1)
  {
    v10 = v6;
    v6 = *v6;
    if (!v6)
    {
      break;
    }

    v11 = *(v6 + 4);
    if (v5 <= v11)
    {
      goto LABEL_17;
    }
  }

LABEL_28:
  v19 = a1[3];
  if (v19)
  {
    pthread_mutex_unlock((v19 + 8));
  }

  v20 = GTCoreAlloc(v2);
  v6 = v20;
  if (v20)
  {
    *(v20 + 16) = v5;
    *(v20 + 32) = v20 + v2;
LABEL_45:
    *v6 = 0;
    v6[3] = (v6 + 5);
  }

  return v6;
}

apr_status_t apr_pool_create_ex(apr_pool_t **newpool, apr_pool_t *parent, apr_abortfunc_t abort_fn, apr_allocator_t *allocator)
{
  v4 = abort_fn;
  *newpool = 0;
  if (parent)
  {
    v6 = parent;
  }

  else
  {
    v6 = global_pool;
  }

  if (v6)
  {
    v7 = *(v6 + 8);
    if (abort_fn)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v7 = 0;
  if (!abort_fn)
  {
LABEL_6:
    v4 = *(v6 + 6);
  }

LABEL_7:
  v8 = allocator_alloc(v4, 0x1FD8uLL);
  if (v8)
  {
    *v8 = v8;
    v8[1] = v8;
    v9 = v8[3];
    v8[3] = v9 + 15;
    v9[12] = v8;
    v9[13] = (v9 + 15);
    v9[14] = 0;
    v9[6] = v4;
    v9[7] = 0;
    v9[4] = 0;
    v9[5] = 0;
    v9[10] = 0;
    v9[11] = v8;
    v9[8] = v7;
    v9[9] = 0;
    *v9 = v6;
    v9[1] = 0;
    if (v6)
    {
      v10 = *(*(v6 + 6) + 24);
      if (v10)
      {
        pthread_mutex_lock((v10 + 8));
      }

      v13 = *(v6 + 1);
      v12 = (v6 + 8);
      v11 = v13;
      v9[2] = v13;
      if (v13)
      {
        *(v11 + 24) = v9 + 2;
      }

      *v12 = v9;
      v9[3] = v12;
      if (v10)
      {
        pthread_mutex_unlock((v10 + 8));
      }
    }

    else
    {
      v9[2] = 0;
      v9[3] = 0;
    }

    v14 = 0;
    *newpool = v9;
  }

  else
  {
    v14 = 12;
    if (v7)
    {
      v7(12);
    }
  }

  return v14;
}

void *__cdecl apr_palloc(apr_pool_t *p, apr_size_t size)
{
  v3 = (size + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v3 < size)
  {
LABEL_2:
    v4 = *(p + 8);
    if (v4)
    {
      v4(12);
    }

    return 0;
  }

  v6 = *(p + 11);
  result = v6[3];
  if (v3 <= v6[4] - result)
  {
    v6[3] = (result + v3);
    return result;
  }

  v7 = *v6;
  if (v3 <= (*v6)[4] - (*v6)[3])
  {
    v8 = *v7;
    *v7[1] = *v7;
    v8[1] = v7[1];
  }

  else
  {
    v7 = allocator_alloc(*(p + 6), (size + 7) & 0xFFFFFFFFFFFFFFF8);
    if (!v7)
    {
      goto LABEL_2;
    }
  }

  *(v7 + 5) = 0;
  result = v7[3];
  v7[3] = (result + v3);
  v9 = v6[1];
  v7[1] = v9;
  *v9 = v7;
  *v7 = v6;
  v6[1] = v7;
  *(p + 11) = v7;
  v10 = (v6[4] - v6[3]) >> 12;
  *(v6 + 5) = v10;
  if (v10 < *(*v6 + 5))
  {
    v11 = *v6;
    do
    {
      v11 = *v11;
    }

    while (*(v11 + 5) > v10);
    *v7 = *v6;
    (*v6)[1] = v6[1];
    v12 = v11[1];
    v6[1] = v12;
    *v12 = v6;
    *v6 = v11;
    v11[1] = v6;
  }

  return result;
}

void apr_pool_clear(apr_pool_t *p)
{
  for (i = *(p + 14); i; i = *(p + 14))
  {
    *(p + 14) = *i;
    (*(i + 16))(*(i + 8));
  }

  *(p + 14) = 0;
  while (1)
  {
    v6 = *(p + 1);
    if (!v6)
    {
      break;
    }

    apr_pool_destroy(v6);
  }

  v8 = (p + 32);
  v7 = *(p + 4);
  if (v7)
  {
    do
    {
      *v8 = *v7;
      (*(v7 + 16))(*(v7 + 8));
      v7 = *v8;
    }

    while (*v8);
  }

  *v8 = 0;
  *(p + 5) = 0;
  free_proc_chain(*(p + 7), v1, v2, v3);
  *(p + 7) = 0;
  *(p + 9) = 0;
  v10 = *(p + 12);
  v9 = *(p + 13);
  *(p + 11) = v10;
  *(v10 + 24) = v9;
  if (*v10 != v10)
  {
    **(v10 + 8) = 0;
    v11 = *(p + 6);
    v12 = *v10;
    v13 = v11[3];
    if (v13)
    {
      pthread_mutex_lock((v13 + 8));
    }

    v14 = 0;
    v15 = *v11;
    v16 = v11[1];
    v17 = v11 + 5;
    v18 = v11[2];
    do
    {
      while (1)
      {
        v19 = v12;
        v12 = *v12;
        v20 = *(v19 + 4);
        if (!v16 || v18 > v20)
        {
          break;
        }

        *v19 = v14;
        v14 = v19;
        if (!v12)
        {
          goto LABEL_27;
        }
      }

      if (v20 > 0x13)
      {
        *v19 = *v17;
        *v17 = v19;
      }

      else
      {
        v21 = v17[v20];
        *v19 = v21;
        if (v15 <= v20)
        {
          v22 = v20;
        }

        else
        {
          v22 = v15;
        }

        if (!v21)
        {
          v15 = v22;
        }

        v17[v20] = v19;
      }

      v23 = v18 > v20;
      v18 += ~v20;
      if (!v23)
      {
        v18 = 0;
      }
    }

    while (v12);
LABEL_27:
    *v11 = v15;
    v11[2] = v18;
    v24 = v11[3];
    if (v24)
    {
      pthread_mutex_unlock((v24 + 8));
    }

    if (v14)
    {
      v25 = MEMORY[0x277D85F48];
      do
      {
        v26 = *v14;
        MEMORY[0x253034350](*v25, v14, ((*(v14 + 4) << 12) + 4096));
        v14 = v26;
      }

      while (v26);
    }

    *v10 = v10;
    *(v10 + 8) = v10;
  }
}

uint64_t psprintf_flush(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *a1 - *(v3 + 24);
  if (2 * v4 <= 0x20)
  {
    v5 = 32;
  }

  else
  {
    v5 = 2 * v4;
  }

  if (!*(a1 + 32))
  {
    v6 = *v3;
    if (v5 <= *(*v3 + 32) - *(*v3 + 24))
    {
      v10 = *v6;
      *v6[1] = *v6;
      v10[1] = v6[1];
      v11 = *(v3 + 8);
      v6[1] = v11;
      *v11 = v6;
      *v6 = v3;
      *(v3 + 8) = v6;
      *(v6 + 5) = 0;
      *(v2 + 88) = v6;
      v12 = (*(v3 + 32) - *(v3 + 24)) >> 12;
      *(v3 + 20) = v12;
      if (v12 < *(*v3 + 20))
      {
        v13 = *v3;
        do
        {
          v13 = *v13;
        }

        while (*(v13 + 5) > v12);
        *v6 = *v3;
        *(*v3 + 8) = *(v3 + 8);
        v14 = v13[1];
        *(v3 + 8) = v14;
        *v14 = v3;
        *v3 = v13;
        v13[1] = v3;
        v6 = *(v2 + 88);
      }

      goto LABEL_10;
    }
  }

  v7 = allocator_alloc(*(v2 + 48), v5);
  if (v7)
  {
    v6 = v7;
    if (*(a1 + 32))
    {
      *v3 = *(a1 + 40);
      *(a1 + 40) = v3;
    }

    *(a1 + 32) = 1;
LABEL_10:
    memcpy(v6[3], *(v3 + 24), v4);
    result = 0;
    *(a1 + 16) = v6;
    v9 = v6[4] - 1;
    *a1 = v6[3] + v4;
    *(a1 + 8) = v9;
    return result;
  }

  return 0xFFFFFFFFLL;
}

char *apr_psprintf(apr_pool_t *p, const char *fmt, ...)
{
  va_start(va, fmt);
  v49 = 0;
  v50 = 0;
  v47 = *(p + 11);
  v48 = p;
  v4 = *(v47 + 32);
  c.curpos = *(v47 + 24);
  c.endpos = v4 - 1;
  if (c.curpos == v4 && psprintf_flush(&c) == -1 || apr_vformatter(psprintf_flush, &c, fmt, va) == -1)
  {
    v29 = *(p + 8);
    if (v29)
    {
      v29(12);
    }

    if (v49)
    {
      v30 = v47;
      *v47 = v50;
      v31 = *(p + 6);
      v32 = v31[3];
      if (v32)
      {
        pthread_mutex_lock((v32 + 8));
      }

      v33 = 0;
      v34 = *v31;
      v35 = v31[1];
      v36 = v31 + 5;
      v37 = v31[2];
      do
      {
        while (1)
        {
          v38 = v30;
          v30 = *v30;
          v39 = *(v38 + 4);
          if (!v35 || v37 > v39)
          {
            break;
          }

          *v38 = v33;
          v33 = v38;
          if (!v30)
          {
            goto LABEL_54;
          }
        }

        if (v39 > 0x13)
        {
          *v38 = *v36;
          *v36 = v38;
        }

        else
        {
          v40 = v36[v39];
          *v38 = v40;
          if (v34 <= v39)
          {
            v41 = v39;
          }

          else
          {
            v41 = v34;
          }

          if (!v40)
          {
            v34 = v41;
          }

          v36[v39] = v38;
        }

        v19 = v37 > v39;
        v37 += ~v39;
        if (!v19)
        {
          v37 = 0;
        }
      }

      while (v30);
LABEL_54:
      *v31 = v34;
      v31[2] = v37;
      v42 = v31[3];
      if (v42)
      {
        pthread_mutex_unlock((v42 + 8));
      }

      if (v33)
      {
        v43 = MEMORY[0x277D85F48];
        do
        {
          v44 = *v33;
          MEMORY[0x253034350](*v43, v33, ((*(v33 + 4) << 12) + 4096));
          v33 = v44;
        }

        while (v44);
      }
    }

    return 0;
  }

  else
  {
    v5 = c.curpos++;
    *v5 = 0;
    v6 = *(v47 + 24);
    *(v47 + 24) = &v6[(c.curpos - v6 + 7) & 0xFFFFFFFFFFFFFFF8];
    v7 = v50;
    if (v50)
    {
      v8 = *(p + 6);
      v9 = v8[3];
      if (v9)
      {
        pthread_mutex_lock((v9 + 8));
      }

      v10 = 0;
      v11 = *v8;
      v12 = v8[1];
      v13 = v8 + 5;
      v14 = v8[2];
      do
      {
        while (1)
        {
          v15 = v7;
          v7 = *v7;
          v16 = *(v15 + 4);
          if (!v12 || v14 > v16)
          {
            break;
          }

          *v15 = v10;
          v10 = v15;
          if (!v7)
          {
            goto LABEL_23;
          }
        }

        if (v16 > 0x13)
        {
          *v15 = *v13;
          *v13 = v15;
        }

        else
        {
          v17 = v13[v16];
          *v15 = v17;
          if (v11 <= v16)
          {
            v18 = v16;
          }

          else
          {
            v18 = v11;
          }

          if (!v17)
          {
            v11 = v18;
          }

          v13[v16] = v15;
        }

        v19 = v14 > v16;
        v14 += ~v16;
        if (!v19)
        {
          v14 = 0;
        }
      }

      while (v7);
LABEL_23:
      *v8 = v11;
      v8[2] = v14;
      v20 = v8[3];
      if (v20)
      {
        pthread_mutex_unlock((v20 + 8));
      }

      if (v10)
      {
        v21 = MEMORY[0x277D85F48];
        do
        {
          v22 = *v10;
          MEMORY[0x253034350](*v21, v10, ((*(v10 + 4) << 12) + 4096));
          v10 = v22;
        }

        while (v22);
      }
    }

    if (v49)
    {
      v23 = *(p + 11);
      v24 = v47;
      *(v47 + 20) = 0;
      v25 = v23[1];
      v24[1] = v25;
      *v25 = v24;
      *v24 = v23;
      v23[1] = v24;
      *(p + 11) = v24;
      v26 = (v23[4] - v23[3]) >> 12;
      *(v23 + 5) = v26;
      if (v26 < *(*v23 + 20))
      {
        v27 = *v23;
        do
        {
          v27 = *v27;
        }

        while (*(v27 + 5) > v26);
        *v24 = *v23;
        *(*v23 + 8) = v23[1];
        v28 = v27[1];
        v23[1] = v28;
        *v28 = v23;
        *v23 = v27;
        v27[1] = v23;
      }
    }
  }

  return v6;
}

void apr_pool_cleanup_register(apr_pool_t *p, const void *data, apr_status_t (__cdecl *plain_cleanup)(void *), apr_status_t (__cdecl *child_cleanup)(void *))
{
  if (p)
  {
    v8 = *(p + 5);
    if (v8)
    {
      *(p + 5) = *v8;
    }

    else
    {
      v8 = apr_palloc(p, 0x20uLL);
    }

    v8[2] = plain_cleanup;
    v8[3] = child_cleanup;
    *v8 = *(p + 4);
    v8[1] = data;
    *(p + 4) = v8;
  }
}

uint64_t GTMTLTensorExtents_bytesLength(void *a1, void *a2, unsigned int a3)
{
  if (a3 > 0x29)
  {
    goto LABEL_4;
  }

  if (((1 << a3) & 0x220000008) != 0)
  {
    v3 = 4;
    return a2[*a2] * a1[*a1] * v3;
  }

  if (((1 << a3) & 0x22000010000) == 0)
  {
LABEL_4:
    if (a3 != 121)
    {
      v3 = 1;
      return a2[*a2] * a1[*a1] * v3;
    }
  }

  v3 = 2;
  return a2[*a2] * a1[*a1] * v3;
}

apr_status_t apr_proc_wait(apr_proc_t *proc, int *exitcode, apr_exit_why_e *exitwhy, apr_wait_how_e waithow)
{
  v8 = 0;
  if (exitcode)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  while (1)
  {
    v6 = waitpid(proc->pid, &v8, v5);
    if ((v6 & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() != 4)
    {
      return *__error();
    }
  }

  if (!v6)
  {
    return 70006;
  }

  proc->pid = v6;
  if ((~v8 & 0x7F) != 0)
  {
    return 70005;
  }

  else
  {
    return 20014;
  }
}

apr_status_t apr_proc_kill(apr_proc_t *proc, int sig)
{
  if (kill(proc, sig) == -1)
  {
    return *__error();
  }

  else
  {
    return 0;
  }
}

int apr_vformatter(int (__cdecl *flush_func)(apr_vformatter_buff_t *), apr_vformatter_buff_t *c, const char *fmt, va_list ap)
{
  v5 = c;
  v6 = flush_func;
  v187 = 0;
  v188 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v206 = *MEMORY[0x277D85DE8];
  v195 = 0;
  v196 = ap;
  v193 = 0;
  curpos = c->curpos;
  endpos = c->endpos;
LABEL_2:
  LOBYTE(v11) = *fmt;
  do
  {
    while (2)
    {
      if (v11 != 37)
      {
        if (!v11)
        {
          v5->curpos = curpos;
          goto LABEL_517;
        }

        if (curpos)
        {
          v40 = endpos;
          if (curpos >= endpos)
          {
            v5->curpos = curpos;
            if ((v6)(v5))
            {
              goto LABEL_515;
            }

            curpos = v5->curpos;
            v40 = v5->endpos;
            LOBYTE(v11) = *fmt;
          }

          *curpos++ = v11;
        }

        else
        {
          v40 = endpos;
        }

        endpos = v40;
        ++v9;
LABEL_412:
        ++fmt;
        goto LABEL_2;
      }

      v13 = *++fmt;
      v12 = v13;
      if (v13 < 0)
      {
        if (__maskrune(v12, 0x1000uLL))
        {
LABEL_6:
          v191 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 1;
          v18 = 32;
          v19 = 1;
          goto LABEL_42;
        }
      }

      else if ((*(MEMORY[0x277D85DE0] + 4 * v12 + 60) & 0x1000) != 0)
      {
        goto LABEL_6;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      v19 = 1;
      v18 = 32;
      while (1)
      {
        v20 = *fmt;
        if (v20 <= 0x2A)
        {
          break;
        }

        switch(v20)
        {
          case '0':
            v18 = 48;
            break;
          case '-':
            v19 = 0;
            break;
          case '+':
            v15 = 1;
            break;
          default:
            goto LABEL_21;
        }

LABEL_20:
        ++fmt;
      }

      if (v20 == 32)
      {
        v14 = 1;
        goto LABEL_20;
      }

      if (v20 == 35)
      {
        v16 = 1;
        goto LABEL_20;
      }

LABEL_21:
      if (v20 - 48 > 9)
      {
        if (v20 == 42)
        {
          v23 = v196;
          v196 += 8;
          v24 = *v23;
          v25 = *++fmt;
          v20 = v25;
          if (v24 >= 0)
          {
            v19 = v19;
          }

          else
          {
            v19 = 0;
          }

          if (v24 >= 0)
          {
            v7 = v24;
          }

          else
          {
            v7 = -v24;
          }

          goto LABEL_32;
        }

        v191 = 0;
      }

      else
      {
        v7 = *fmt - 48;
        v21 = *++fmt;
        v20 = v21;
        if (v21 - 48 <= 9)
        {
          do
          {
            v7 = 10 * v7 + v20 - 48;
            v22 = *++fmt;
            v20 = v22;
          }

          while (v22 - 48 < 0xA);
        }

LABEL_32:
        v191 = 1;
      }

      if (v20 == 46)
      {
        v26 = *(fmt + 1);
        if ((v26 - 48) > 9)
        {
          v17 = 0;
          if (v26 == 42)
          {
            v36 = v196;
            v196 += 8;
            fmt += 2;
            v188 = *v36 & ~(*v36 >> 31);
          }

          else
          {
            v188 = 0;
            ++fmt;
          }
        }

        else
        {
          v28 = *(fmt + 2);
          fmt += 2;
          v27 = v28;
          v188 = v26 - 48;
          if ((v28 - 48) <= 9)
          {
            v29 = v26 - 48;
            do
            {
              v30 = *++fmt;
              v29 = 10 * v29 + v27 - 48;
              v27 = v30;
            }

            while ((v30 - 48) < 0xA);
            v188 = v29;
          }

          v17 = 0;
        }
      }

      else
      {
        v17 = 1;
      }

LABEL_42:
      v31 = 0;
      v11 = *fmt;
      v32 = 1;
      if (v11 == 113 || v11 == 108)
      {
LABEL_46:
        v33 = v31;
        v34 = *++fmt;
        v11 = v34;
        v31 = v32;
      }

      else
      {
        if (v11 == 104)
        {
          v32 = 0;
          v31 = 1;
          goto LABEL_46;
        }

        v33 = 0;
      }

      v192 = v19;
      if (v11 > 102)
      {
        if (v11 > 111)
        {
          if (v11 <= 114)
          {
            if (v11 != 112)
            {
              goto LABEL_199;
            }

            v35 = *++fmt;
            v11 = v35;
            v6 = flush_func;
            if (v35)
            {
              if (v11 <= 82)
              {
                if (v11 > 69)
                {
                  if (v11 == 70)
                  {
                    goto LABEL_161;
                  }

                  if (v11 != 73)
                  {
                    goto LABEL_254;
                  }

                  v72 = v196;
                  v196 += 8;
                  v73 = *v72;
                  if (!v73)
                  {
                    goto LABEL_328;
                  }

                  LOBYTE(v73) = 0;
                  LOBYTE(v16) = 0;
                  v8 = 0;
                  v74 = v195;
                }

                else
                {
                  if (v11 != 65)
                  {
                    if (v11 != 66)
                    {
                      goto LABEL_254;
                    }

                    goto LABEL_161;
                  }

                  v110 = v196;
                  v196 += 8;
                  v73 = *v110;
                  if (!v73)
                  {
                    goto LABEL_328;
                  }

                  v111 = bswap32(*v73);
                  v112 = v111;
                  v113 = v202;
                  v114 = &v202[2];
                  v115 = &v202[4];
                  do
                  {
                    v116 = v114;
                    v117 = v113;
                    *(v115 - 2) = v112 % 0xA + 48;
                    --v115;
                    --v114;
                    --v113;
                    v61 = v112 > 9;
                    v112 /= 0xAu;
                  }

                  while (v61);
                  *(v115 - 2) = 46;
                  v118 = BYTE1(v111);
                  do
                  {
                    v119 = v117;
                    *(v116 - 2) = v118 % 0xA + 48;
                    --v116;
                    --v117;
                    v61 = v118 > 9;
                    v118 /= 0xAu;
                  }

                  while (v61);
                  *(v116 - 2) = 46;
                  v120 = BYTE2(v111);
                  do
                  {
                    *(v119 - 2) = v120 % 0xA + 48;
                    --v119;
                    v61 = v120 > 9;
                    v120 /= 0xAu;
                  }

                  while (v61);
                  *(v119 - 2) = 46;
                  v8 = v119 - 2;
                  v121 = HIBYTE(v111);
                  do
                  {
                    *--v8 = v121 % 0xA + 48;
                    v61 = v121 > 9;
                    v121 /= 0xAu;
                  }

                  while (v61);
LABEL_360:
                  LOBYTE(v73) = 0;
                  LOBYTE(v16) = 0;
                  v74 = (&v202[3] - v8);
                }

                v78 = v188;
                if (v188 >= v74)
                {
                  v78 = v74;
                }

                v79 = v17 == 0;
                goto LABEL_364;
              }

              if (v11 > 108)
              {
                if (v11 == 109)
                {
                  v122 = v196;
                  v196 += 8;
                  v123 = *v122;
                  if (v123)
                  {
                    v124 = *v123;
                    if (*v123 > 19999)
                    {
                      if (v124 >> 6 > 0x752)
                      {
                        if (v124 > 0xA392F)
                        {
                          if (v124 > 0xAFC7F)
                          {
                            v163 = 0;
                            v164 = "Unrecognized resolver error";
                            if (v124 == 720004)
                            {
                              v164 = "No address for host";
                            }

                            v165 = "Unknown host";
                            if (v124 != 720001)
                            {
                              v165 = v164;
                            }

                            while (1)
                            {
                              v166 = v165[v163];
                              __n_4[v163] = v166;
                              if (!v166)
                              {
                                break;
                              }

                              if (++v163 == 510)
                              {
LABEL_511:
                                v177 = &v202[1];
                                goto LABEL_512;
                              }
                            }
                          }

                          else
                          {
                            v160 = gai_strerror(v124 - 670000);
                            if (v160)
                            {
                              v161 = 0;
                              while (1)
                              {
                                v162 = v160[v161];
                                __n_4[v161] = v162;
                                if (!v162)
                                {
                                  break;
                                }

                                if (++v161 == 510)
                                {
                                  goto LABEL_511;
                                }
                              }
                            }

                            else
                            {
                              v177 = __n_4;
LABEL_512:
                              *v177 = 0;
                            }
                          }
                        }

                        else
                        {
                          for (i = 0; ; ++i)
                          {
                            __n_4[i] = aAprDoesNotUnde[i];
                            if (i == 39)
                            {
                              break;
                            }
                          }
                        }
                      }

                      else
                      {
                        v154 = "Could not perform a stat on the file.";
                        switch(v124)
                        {
                          case 0x4E21u:
                            break;
                          case 0x4E22u:
                            v154 = "A new pool could not be created.";
                            break;
                          case 0x4E23u:
                          case 0x4E32u:
LABEL_489:
                            v154 = "Error string not specified yet";
                            break;
                          case 0x4E24u:
                            v154 = "An invalid date has been provided";
                            break;
                          case 0x4E25u:
                            v154 = "An invalid socket was returned";
                            break;
                          case 0x4E26u:
                            v154 = "No process was provided and one was required.";
                            break;
                          case 0x4E27u:
                            v154 = "No time was provided and one was required.";
                            break;
                          case 0x4E28u:
                            v154 = "No directory was provided and one was required.";
                            break;
                          case 0x4E29u:
                            v154 = "No lock was provided and one was required.";
                            break;
                          case 0x4E2Au:
                            v154 = "No poll structure was provided and one was required.";
                            break;
                          case 0x4E2Bu:
                            v154 = "No socket was provided and one was required.";
                            break;
                          case 0x4E2Cu:
                            v154 = "No thread was provided and one was required.";
                            break;
                          case 0x4E2Du:
                            v154 = "No thread key structure was provided and one was required.";
                            break;
                          case 0x4E2Eu:
                            v154 = "Internal error (specific information not available)";
                            break;
                          case 0x4E2Fu:
                            v154 = "No shared memory is currently available";
                            break;
                          case 0x4E30u:
                            v154 = "The specified IP address is invalid.";
                            break;
                          case 0x4E31u:
                            v154 = "The specified network mask is invalid.";
                            break;
                          case 0x4E33u:
                            v154 = "DSO load failed";
                            break;
                          case 0x4E34u:
                            v154 = "The given path is absolute";
                            break;
                          case 0x4E35u:
                            v154 = "The given path is relative";
                            break;
                          case 0x4E36u:
                            v154 = "The given path is incomplete";
                            break;
                          case 0x4E37u:
                            v154 = "The given path was above the root path";
                            break;
                          case 0x4E38u:
                            v154 = "The given path is misformatted or contained invalid characters";
                            break;
                          case 0x4E39u:
                            v154 = "The given path contained wildcard characters";
                            break;
                          case 0x4E3Au:
                            v154 = "Could not find the requested symbol.";
                            break;
                          case 0x4E3Bu:
                            v154 = "The process is not recognized.";
                            break;
                          case 0x4E3Cu:
                            v154 = "Not enough entropy to continue.";
                            break;
                          default:
                            switch(v124)
                            {
                              case 0x11171u:
                                v154 = "Your code just forked, and you are currently executing in the child process";
                                break;
                              case 0x11172u:
                                v154 = "Your code just forked, and you are currently executing in the parent process";
                                break;
                              case 0x11173u:
                                v154 = "The specified thread is detached";
                                break;
                              case 0x11174u:
                                v154 = "The specified thread is not detached";
                                break;
                              case 0x11175u:
                                v154 = "The specified child process is done executing";
                                break;
                              case 0x11176u:
                                v154 = "The specified child process is not done executing";
                                break;
                              case 0x11177u:
                                v154 = "The timeout specified has expired";
                                break;
                              case 0x11178u:
                                v154 = "Partial results are valid but processing is incomplete";
                                break;
                              case 0x1117Cu:
                                v154 = "Bad character specified on command line";
                                break;
                              case 0x1117Du:
                                v154 = "Missing parameter for the specified command line option";
                                break;
                              case 0x1117Eu:
                                v154 = "End of file found";
                                break;
                              case 0x1117Fu:
                                v154 = "Could not find specified socket in poll list.";
                                break;
                              case 0x11183u:
                                v154 = "Shared memory is implemented anonymously";
                                break;
                              case 0x11184u:
                                v154 = "Shared memory is implemented using files";
                                break;
                              case 0x11185u:
                                v154 = "Shared memory is implemented using a key system";
                                break;
                              case 0x11186u:
                                v154 = "There is no error, this value signifies an initialized error code";
                                break;
                              case 0x11187u:
                                v154 = "This function has not been implemented on this platform";
                                break;
                              case 0x11188u:
                                v154 = "passwords do not match";
                                break;
                              case 0x11189u:
                                v154 = "The given lock was busy.";
                                break;
                              default:
                                goto LABEL_489;
                            }

                            break;
                        }

                        v178 = 0;
                        while (1)
                        {
                          v179 = v154[v178];
                          __n_4[v178] = v179;
                          if (!v179)
                          {
                            break;
                          }

                          if (++v178 == 510)
                          {
                            goto LABEL_511;
                          }
                        }
                      }
                    }

                    else if (strerror_r(v124, __n_4, 0x1FFuLL) < 0)
                    {
                      for (j = 0; ; ++j)
                      {
                        __n_4[j] = aAprDoesNotUnde[j];
                        if (j == 39)
                        {
                          break;
                        }
                      }
                    }

                    v8 = __n_4;
                    v152 = strlen(__n_4);
                    LODWORD(v19) = v192;
                  }

                  else
                  {
                    v152 = 6;
                    v8 = "(null)";
                  }

                  v109 = endpos;
                  LOBYTE(v73) = 0;
                  LOBYTE(v16) = 0;
                  v195 = v152;
                  v18 = 32;
                  goto LABEL_370;
                }

                if (v11 != 116)
                {
                  if (v11 == 112)
                  {
                    v37 = v196;
                    v196 += 8;
                    v38 = *v37;
                    if (HIDWORD(v38))
                    {
                      v8 = &v202[3];
                      do
                      {
                        *--v8 = conv_p2_low_digits[v38 & 0xF];
                        v61 = v38 > 0xF;
                        v38 >>= 4;
                      }

                      while (v61);
                    }

                    else
                    {
                      v8 = &v202[3];
                      do
                      {
                        *--v8 = conv_p2_low_digits[v38 & 0xF];
                        v39 = v38 >= 0x10;
                        LODWORD(v38) = v38 >> 4;
                      }

                      while (v39);
                    }

                    LOBYTE(v73) = 0;
                    LOBYTE(v16) = 0;
                    v74 = (&v202[3] - v8);
LABEL_367:
                    v195 = v74;
                    goto LABEL_368;
                  }

LABEL_254:
                  LOBYTE(v73) = 0;
                  LOBYTE(v16) = 0;
                  v195 = 8;
                  v196 += 8;
                  v8 = "bogus %p";
                  goto LABEL_369;
                }

                v126 = v196;
                v196 += 8;
                v73 = *v126;
                if (v73)
                {
                  v127 = *v73;
                  if (HIDWORD(v127))
                  {
                    v8 = &v202[3];
                    do
                    {
                      *--v8 = conv_p2_low_digits[v127 & 0xF];
                      v61 = v127 > 0xF;
                      v127 >>= 4;
                    }

                    while (v61);
                  }

                  else
                  {
                    v8 = &v202[3];
                    do
                    {
                      *--v8 = conv_p2_low_digits[v127 & 0xF];
                      v39 = v127 >= 0x10;
                      LODWORD(v127) = v127 >> 4;
                    }

                    while (v39);
                  }

                  goto LABEL_360;
                }

LABEL_328:
                LOBYTE(v16) = 0;
                v195 = 6;
                v18 = 32;
                v8 = "(null)";
                goto LABEL_369;
              }

              if (v11 != 83)
              {
                if (v11 != 84)
                {
                  goto LABEL_254;
                }

                v75 = v196;
                v196 += 8;
                v73 = *v75;
                if (!v73)
                {
                  goto LABEL_328;
                }

                v76 = v17;
                v77 = conv_10_quad(*v73, 1, buf, &v202[3], &v195);
                LODWORD(v19) = v192;
                v8 = v77;
                LOBYTE(v73) = 0;
                LOBYTE(v16) = 0;
                v74 = v195;
                v78 = v188;
                if (v188 >= v195)
                {
                  v78 = v195;
                }

                v79 = v76 == 0;
LABEL_364:
                if (v79)
                {
                  v74 = v78;
                }

                goto LABEL_367;
              }

LABEL_161:
              v80 = v196;
              v196 += 8;
              v81 = *v80;
              if (v11 == 66)
              {
                if (v81)
                {
                  v82 = *v81;
                  goto LABEL_167;
                }

LABEL_223:
                v86 = apr_snprintf(buf, v19, "%3d ");
                goto LABEL_224;
              }

              if (!v81)
              {
                goto LABEL_223;
              }

              v82 = *v81;
              if ((*v81 & 0x8000000000000000) != 0)
              {
                v107 = "  - ";
LABEL_330:
                *buf = *v107;
                v205 = v107[4];
              }

              else
              {
LABEL_167:
                if (v82 < 0x3CD)
                {
                  goto LABEL_223;
                }

                v83 = "";
                do
                {
                  v84 = v82;
                  v82 >>= 10;
                  ++v83;
                }

                while (v82 > 0x3CC);
                v85 = v84 & 0x3FF;
                if (v82 < 9 || v82 == 9 && v85 <= 0x3CC)
                {
                  v183 = *v83;
                  v86 = apr_snprintf(buf, v19, "%d.%d%c");
                }

                else
                {
                  v182 = *v83;
                  v86 = apr_snprintf(buf, v19, "%3d%c");
                }

LABEL_224:
                if (v86 < 0)
                {
                  v107 = "****";
                  goto LABEL_330;
                }
              }

              v8 = buf;
              v150 = strlen(buf);
              LOBYTE(v73) = 0;
              LOBYTE(v16) = 0;
              v195 = v150;
              v18 = 32;
              v109 = endpos;
              LODWORD(v19) = v192;
              goto LABEL_370;
            }

            continue;
          }

          if (v11 == 115)
          {
            v99 = v196;
            v196 += 8;
            v8 = *v99;
            if (*v99)
            {
              if (v17)
              {
                v100 = strlen(*v99);
                LODWORD(v19) = v192;
                LOBYTE(v73) = 0;
                LOBYTE(v16) = 0;
                v195 = v100;
              }

              else
              {
                v195 = 0;
                LOBYTE(v73) = v188;
                if (v188)
                {
                  v151 = 0;
                  while (v8[v151])
                  {
                    v195 = ++v151;
                    v18 = 32;
                    if (v188 == v151)
                    {
                      goto LABEL_352;
                    }
                  }

                  LOBYTE(v73) = 0;
                }

                else
                {
                  v188 = 0;
                }

                LOBYTE(v16) = 0;
              }

              goto LABEL_368;
            }

            LOBYTE(v73) = 0;
            goto LABEL_328;
          }

          if (v11 != 120)
          {
            if (v11 != 117)
            {
              goto LABEL_199;
            }

            if (v31)
            {
              v50 = v196;
              v196 += 8;
              v51 = v17;
              v52 = conv_10_quad(*v50, 1, &v193, &v202[3], &v195);
              LODWORD(v19) = v192;
              v8 = v52;
              if ((v51 & 1) == 0)
              {
                goto LABEL_105;
              }

LABEL_292:
              LOBYTE(v73) = 0;
              LOBYTE(v16) = 0;
              goto LABEL_369;
            }

            v140 = v196;
            v196 += 8;
            v141 = *v140;
            if (v33)
            {
              v141 = v141;
            }

            v193 = 0;
            v8 = &v202[3];
            do
            {
              *--v8 = v141 % 0xA + 48;
              v61 = v141 > 9;
              v141 /= 0xAu;
            }

            while (v61);
            v195 = &v202[3] - v8;
            if (v17)
            {
              goto LABEL_292;
            }

LABEL_105:
            v53 = 511;
            if (v188 + 1 < 0x200)
            {
              v53 = v188;
            }

            for (; v195 < v53; ++v195)
            {
              *--v8 = 48;
            }

LABEL_352:
            LOBYTE(v73) = 0;
            LOBYTE(v16) = 0;
            goto LABEL_369;
          }

LABEL_136:
          if (v31)
          {
            v66 = v196;
            v196 += 8;
            v67 = *v66;
            v68 = "0123456789abcdef";
            if (*fmt == 88)
            {
              v68 = "0123456789ABCDEF";
            }

            if (HIDWORD(v67))
            {
              v8 = &v202[3];
              do
              {
                *--v8 = v68[v67 & 0xF];
                v39 = v67 >= 0x10;
                v67 >>= 4;
              }

              while (v39);
            }

            else
            {
              v8 = &v202[3];
              do
              {
                *--v8 = v68[v67 & 0xF];
                v39 = v67 >= 0x10;
                LODWORD(v67) = v67 >> 4;
              }

              while (v39);
            }
          }

          else
          {
            v92 = v196;
            v196 += 8;
            v93 = *v92;
            v94 = v93;
            if (!v33)
            {
              v94 = v93;
            }

            v95 = "0123456789abcdef";
            if (*fmt == 88)
            {
              v95 = "0123456789ABCDEF";
            }

            v8 = &v202[3];
            v187 = v94;
            do
            {
              *--v8 = v95[v94 & 0xF];
              v61 = v94 > 0xF;
              v94 >>= 4;
            }

            while (v61);
          }

          v195 = &v202[3] - v8;
          if ((v17 & 1) == 0)
          {
            v128 = 511;
            if (v188 + 1 < 0x200)
            {
              v128 = v188;
            }

            if (&v202[3] - v8 < v128)
            {
              do
              {
                *--v8 = 48;
                ++v195;
              }

              while (v195 < v128);
            }
          }

          LOBYTE(v73) = 0;
          if (!v16 || !v187)
          {
            LOBYTE(v16) = 0;
            goto LABEL_369;
          }

          LOBYTE(v73) = 0;
          LOBYTE(v16) = 0;
          v129 = *fmt;
          *(v8 - 2) = 48;
          v8 -= 2;
          v8[1] = v129;
          v130 = v195 + 2;
LABEL_269:
          v195 = v130;
          goto LABEL_369;
        }

        if (v11 > 109)
        {
          if (v11 == 110)
          {
            LOBYTE(v73) = 0;
            if (v31)
            {
              v98 = v196;
              v196 += 8;
              **v98 = v9;
            }

            else
            {
              v135 = v196;
              v196 += 8;
              if (v33)
              {
                **v135 = v9;
              }

              else
              {
                **v135 = v9;
              }
            }

            LOBYTE(v16) = 1;
            goto LABEL_369;
          }

          if (v31)
          {
            v69 = v196;
            v196 += 8;
            v70 = *v69;
            v71 = "0123456789abcdef";
            if (*fmt == 88)
            {
              v71 = "0123456789ABCDEF";
            }

            if (HIDWORD(v70))
            {
              v8 = &v202[3];
              do
              {
                *--v8 = v71[v70 & 7];
                v39 = v70 >= 8;
                v70 >>= 3;
              }

              while (v39);
            }

            else
            {
              v8 = &v202[3];
              do
              {
                *--v8 = v71[v70 & 7];
                v39 = v70 >= 8;
                LODWORD(v70) = v70 >> 3;
              }

              while (v39);
            }
          }

          else
          {
            v136 = v196;
            v196 += 8;
            v137 = *v136;
            v138 = v137;
            if (!v33)
            {
              v138 = v137;
            }

            v139 = "0123456789abcdef";
            if (*fmt == 88)
            {
              v139 = "0123456789ABCDEF";
            }

            v8 = &v202[3];
            v187 = v138;
            do
            {
              *--v8 = v139[v138 & 7];
              v61 = v138 > 7;
              v138 >>= 3;
            }

            while (v61);
          }

          v195 = &v202[3] - v8;
          if ((v17 & 1) == 0)
          {
            v153 = 511;
            if (v188 + 1 < 0x200)
            {
              v153 = v188;
            }

            if (&v202[3] - v8 < v153)
            {
              do
              {
                *--v8 = 48;
                ++v195;
              }

              while (v195 < v153);
            }
          }

          if (!v16)
          {
            LOBYTE(v73) = 0;
            goto LABEL_369;
          }

          if (*v8 == 48)
          {
            goto LABEL_352;
          }

          LOBYTE(v73) = 0;
          LOBYTE(v16) = 0;
          *--v8 = 48;
          v130 = v195 + 1;
          goto LABEL_269;
        }

        if (v11 != 103)
        {
          if (v11 != 105)
          {
            goto LABEL_199;
          }

          goto LABEL_87;
        }

LABEL_110:
        v186 = v5;
        v54 = v188;
        if (v188 <= 1)
        {
          v54 = 1;
        }

        if (v17)
        {
          v55 = 6;
        }

        else
        {
          v55 = v54;
        }

        v56 = v196;
        v196 += 8;
        v57 = *v56;
        *&v202[3] = 0;
        __n = 0;
        v188 = v55;
        apr_cvt(v55, &__n, &v202[3], 1, buf, v57);
        p_n_6 = __n_5;
        if (*&v202[3])
        {
          __n_5[0] = 45;
          p_n_6 = &__n_6;
        }

        LODWORD(v59) = v188;
        if (v188 >= 2)
        {
          v59 = v188 & 0x7FFFFFFF;
          while (v203[v59 + 1] == 48)
          {
            if (v59-- <= 2)
            {
              LODWORD(v59) = 1;
              break;
            }
          }
        }

        v60 = __n;
        v61 = __n < 0 || __n - v59 <= 4;
        v62 = !v61;
        if (__n >= -3 && v62 == 0)
        {
          if (__n <= 0)
          {
            if (buf[0] != 48)
            {
              *p_n_6++ = 46;
            }

            if (v60 < 0)
            {
              do
              {
                __n = v60 + 1;
                *p_n_6++ = 48;
                v60 = __n;
              }

              while (__n < 0);
            }

            else
            {
              v60 = 0;
            }
          }

          if (v59 >= 1)
          {
            v87 = v59;
            v88 = buf;
            v89 = 1;
            do
            {
              v90 = *v88++;
              *p_n_6 = v90;
              if (v89 == __n)
              {
                p_n_6[1] = 46;
                p_n_6 += 2;
              }

              else
              {
                ++p_n_6;
              }

              ++v89;
              --v87;
            }

            while (v87);
            v60 = __n;
          }

          if (v59 < v60)
          {
            do
            {
              v91 = p_n_6;
              LODWORD(v59) = v59 + 1;
              *p_n_6++ = 48;
            }

            while (v59 < __n);
            *p_n_6 = 46;
            p_n_6 = v91 + 2;
          }
        }

        else
        {
          --__n;
          *p_n_6 = buf[0];
          v64 = p_n_6 + 2;
          p_n_6[1] = 46;
          if (v59 > 1)
          {
            v185 = v60;
            memcpy(v64, &buf[1], (v59 - 1));
            v60 = v185;
            v64 = &p_n_6[(v59 + 1)];
          }

          *v64 = 101;
          if (v60 < 1)
          {
            __n = 1 - v60;
            v65 = 45;
          }

          else
          {
            v65 = 43;
          }

          v64[1] = v65;
          v142 = __n;
          if (__n < 100)
          {
            v143 = v64 + 2;
          }

          else
          {
            v143 = v64 + 3;
            v64[2] = __n / 0x64u + 48;
            v142 = __n;
          }

          if (v142 >= 10)
          {
            *v143++ = ((103 * (v142 % 0x64u)) >> 10) | 0x30;
            v142 = __n;
          }

          *v143 = v142 % 10 + 48;
          p_n_6 = v143 + 1;
        }

        v144 = p_n_6 - 1;
        if (*(p_n_6 - 1) != 46 || v16 != 0)
        {
          v144 = p_n_6;
        }

        *v144 = 0;
        v146 = 32 * (v14 != 0);
        if (v15)
        {
          v146 = 43;
        }

        if (__n_5[0] == 45)
        {
          v105 = 45;
        }

        else
        {
          v105 = v146;
        }

        if (__n_5[0] == 45)
        {
          v8 = &__n_6;
        }

        else
        {
          v8 = __n_5;
        }

        v147 = strlen(v8);
        v195 = v147;
        if (v16)
        {
          v148 = v147;
          if (!strchr(v8, 46))
          {
            v195 = v148 + 1;
            *&v8[v148] = 46;
          }
        }

        if (*fmt == 71)
        {
          v149 = strchr(v8, 101);
          if (v149)
          {
            *v149 = 69;
          }
        }

        v109 = endpos;
        LODWORD(v19) = v192;
LABEL_320:
        LOBYTE(v16) = 0;
        LOBYTE(v73) = v105 != 0;
        if (v105 && v8 != "(null)")
        {
          LOBYTE(v16) = 0;
          *--v8 = v105;
          ++v195;
          LOBYTE(v73) = 1;
        }

        v5 = v186;
        goto LABEL_370;
      }

      break;
    }

    if (v11 > 68)
    {
      if (v11 <= 98)
      {
        if (v11 != 69)
        {
          if (v11 != 71)
          {
            if (v11 != 88)
            {
              goto LABEL_199;
            }

            goto LABEL_136;
          }

          goto LABEL_110;
        }

LABEL_94:
        v44 = v196;
        v196 += 8;
        v45 = *v44;
        if (fabs(*v44) == INFINITY)
        {
          LOBYTE(v73) = 0;
          LOBYTE(v16) = 0;
          v195 = 3;
          v8 = "inf";
          goto LABEL_369;
        }

        v46 = *fmt;
        if (v17)
        {
          v47 = 6;
        }

        else
        {
          v47 = v188;
        }

        __n = 0;
        v184 = v46;
        v186 = v5;
        if (v46 == 102)
        {
          v48 = v47;
          v49 = 0;
        }

        else
        {
          v48 = v47 + 1;
          v49 = 1;
        }

        apr_cvt(v48, &__n, &v193, v49, buf, v45);
        v108 = buf[0];
        if ((buf[0] & 0x8000000000000000) != 0)
        {
          if (!__maskrune(buf[0], 0x100uLL))
          {
            goto LABEL_272;
          }

LABEL_229:
          v195 = strlen(buf);
          v8 = __n_5;
          __memcpy_chk();
          v193 = 0;
          v109 = endpos;
          LODWORD(v19) = v192;
        }

        else
        {
          if ((*(MEMORY[0x277D85DE0] + 4 * buf[0] + 60) & 0x100) != 0)
          {
            goto LABEL_229;
          }

LABEL_272:
          v131 = v184;
          if (v184 == 102)
          {
            v132 = __n;
            if (__n < 1)
            {
              __n_5[0] = 48;
              if (v47 < 1)
              {
                LODWORD(v19) = v192;
                if (v16)
                {
                  __n_6 = 46;
                  v133 = buf;
                  v134 = __n_7;
                }

                else
                {
                  v133 = buf;
                  v134 = &__n_6;
                }
              }

              else
              {
                __n_6 = 46;
                v134 = __n_7;
                LODWORD(v19) = v192;
                if (__n < 0)
                {
                  v159 = ~__n;
                  memset(__n_7, 48, v159 + 1);
                  v131 = 102;
                  LODWORD(v19) = v192;
                  v134 = &__n_7[v159 + 1];
                }

                __n = 1;
                v133 = buf;
              }
            }

            else
            {
              memcpy(__n_5, buf, __n);
              v133 = &buf[v132];
              v134 = &__n_5[v132];
              __n = -1;
              if (v16 || v47 > 0)
              {
                *v134++ = 46;
              }

              LODWORD(v19) = v192;
              v131 = 102;
            }
          }

          else
          {
            __n_5[0] = v108;
            LODWORD(v19) = v192;
            if (v16 || (v134 = &__n_6, v133 = &buf[1], v47 >= 1))
            {
              __n_6 = 46;
              v134 = __n_7;
              v133 = &buf[1];
            }
          }

          v167 = *v133;
          if (*v133)
          {
            v168 = (v133 + 1);
            do
            {
              *v134++ = v167;
              v169 = *v168++;
              v167 = v169;
            }

            while (v169);
          }

          if (v131 != 102)
          {
            *v134 = v131;
            v170 = __n;
            v171 = --__n;
            if (__n)
            {
              if (v171 >= 0)
              {
                v172 = v171;
              }

              else
              {
                v172 = -v171;
              }

              v173 = -1;
              v174 = v203;
              do
              {
                v175 = v173;
                *--v174 = v172 % 0xA + 48;
                --v173;
                v61 = v172 > 9;
                v172 /= 0xAu;
              }

              while (v61);
              if (v170 <= 0)
              {
                v176 = 45;
              }

              else
              {
                v176 = 43;
              }

              v134[1] = v176;
              if (v203 - v174 == 1)
              {
                v134[2] = 48;
                v134 += 3;
              }

              else
              {
                v134 += 2;
              }

              do
              {
                *v134++ = v203[v175];
                v39 = __CFADD__(v175++, 1);
              }

              while (!v39);
            }

            else
            {
              *(v134 + 1) = 12331;
              v134[3] = 48;
              v134 += 4;
            }
          }

          v195 = v134 - __n_5;
          v8 = __n_5;
          v109 = endpos;
          if (v193)
          {
            v105 = 45;
            goto LABEL_320;
          }
        }

        if (v15)
        {
          v105 = 43;
        }

        else
        {
          v105 = 32 * (v14 != 0);
        }

        goto LABEL_320;
      }

      if ((v11 - 101) < 2)
      {
        goto LABEL_94;
      }

      if (v11 == 99)
      {
        LOBYTE(v73) = 0;
        LOBYTE(v16) = 0;
        v106 = v196;
        v196 += 8;
        v96 = *v106;
LABEL_221:
        v194[0] = v96;
        v97 = 1;
        goto LABEL_222;
      }

      if (v11 != 100)
      {
        goto LABEL_199;
      }

LABEL_87:
      if (v31)
      {
        v41 = v196;
        v196 += 8;
        v42 = v17;
        v43 = conv_10_quad(*v41, 0, &v193, &v202[3], &v195);
        LODWORD(v19) = v192;
        v8 = v43;
        if (v42)
        {
LABEL_218:
          v186 = v5;
          if (v193)
          {
            v105 = 45;
          }

          else if (v15)
          {
            v105 = 43;
          }

          else
          {
            v105 = 32 * (v14 != 0);
          }

          v109 = endpos;
          goto LABEL_320;
        }
      }

      else
      {
        v101 = v196;
        v196 += 8;
        v102 = *v101;
        if (v33)
        {
          v102 = v102;
        }

        v103 = v102 >> 31;
        if ((v102 & 0x80000000) != 0)
        {
          v102 = -v102;
        }

        v193 = v103;
        v8 = &v202[3];
        do
        {
          *--v8 = v102 % 0xA + 48;
          v61 = v102 > 9;
          v102 /= 0xAu;
        }

        while (v61);
        v195 = &v202[3] - v8;
        if (v17)
        {
          goto LABEL_218;
        }
      }

      v104 = 511;
      if (v188 + 1 < 0x200)
      {
        v104 = v188;
      }

      for (; v195 < v104; ++v195)
      {
        *--v8 = 48;
      }

      goto LABEL_218;
    }

    v6 = flush_func;
  }

  while (!v11);
  if (v11 == 37)
  {
    LOBYTE(v73) = 0;
    LOBYTE(v16) = 0;
    LOBYTE(v96) = 37;
    goto LABEL_221;
  }

LABEL_199:
  LOBYTE(v73) = 0;
  LOBYTE(v16) = 0;
  v194[0] = 37;
  v194[1] = *fmt;
  v97 = 2;
LABEL_222:
  v195 = v97;
  v8 = v194;
LABEL_368:
  v18 = 32;
LABEL_369:
  v109 = endpos;
LABEL_370:
  v155 = v195;
  if (!v191 || v19 != 1)
  {
    v6 = flush_func;
LABEL_390:
    if (v155)
    {
      v157 = v16;
    }

    else
    {
      v157 = 1;
    }

    if ((v157 & 1) == 0)
    {
      v9 += v155;
      do
      {
        if (curpos)
        {
          if (curpos >= v109)
          {
            v5->curpos = curpos;
            if ((v6)(v5))
            {
              goto LABEL_515;
            }

            curpos = v5->curpos;
            v109 = v5->endpos;
            LODWORD(v19) = v192;
          }

          *curpos++ = *v8;
        }

        ++v8;
        --v155;
      }

      while (v155);
      v155 = v195;
    }

    if (v191 && !v19)
    {
      while (v7 > v155)
      {
        if (curpos)
        {
          if (curpos >= v109)
          {
            v5->curpos = curpos;
            if ((v6)(v5))
            {
              goto LABEL_515;
            }

            curpos = v5->curpos;
            v109 = v5->endpos;
          }

          *curpos++ = v18;
          v155 = v195;
        }

        ++v9;
        --v7;
      }
    }

    endpos = v109;
    goto LABEL_412;
  }

  v6 = flush_func;
  if (v7 <= v195)
  {
    goto LABEL_390;
  }

  v156 = v73 ^ 1;
  if (v18 != 48)
  {
    v156 = 1;
  }

  if (v156)
  {
    do
    {
LABEL_382:
      if (curpos)
      {
        if (curpos >= v109)
        {
          v5->curpos = curpos;
          if ((flush_func)(v5))
          {
            goto LABEL_515;
          }

          curpos = v5->curpos;
          v109 = v5->endpos;
          LODWORD(v19) = v192;
        }

        *curpos++ = v18;
        v155 = v195;
      }

      ++v9;
      --v7;
    }

    while (v7 > v155);
    goto LABEL_390;
  }

  if (!curpos)
  {
    goto LABEL_381;
  }

  if (curpos < v109)
  {
    goto LABEL_380;
  }

  v5->curpos = curpos;
  if (!(flush_func)(v5))
  {
    curpos = v5->curpos;
    v109 = v5->endpos;
    LODWORD(v19) = v192;
LABEL_380:
    *curpos++ = *v8;
    v155 = v195;
LABEL_381:
    ++v9;
    ++v8;
    v195 = --v155;
    --v7;
    goto LABEL_382;
  }

LABEL_515:
  v9 = -1;
LABEL_517:
  v180 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t conv_10_quad(unint64_t a1, int a2, _DWORD *a3, uint64_t a4, void *a5)
{
  if ((HIDWORD(a1) || !a2) && (a1 != a1 || a2))
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      v10 = a1;
    }

    else
    {
      v10 = -a1;
    }

    if (a2)
    {
      v11 = 0;
    }

    else
    {
      v11 = a1 >> 63;
    }

    if (a2)
    {
      v12 = a1;
    }

    else
    {
      v12 = v10;
    }

    *a3 = v11;
    result = a4;
    do
    {
      *--result = v12 % 0xA + 48;
      v13 = v12 > 9;
      v12 /= 0xAuLL;
    }

    while (v13);
  }

  else
  {
    if ((a1 & 0x80000000) == 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = -a1;
    }

    if (a2)
    {
      v6 = 0;
    }

    else
    {
      v6 = (a1 >> 31) & 1;
    }

    if (a2)
    {
      v7 = a1;
    }

    else
    {
      v7 = v5;
    }

    *a3 = v6;
    result = a4;
    do
    {
      *--result = v7 % 0xA + 48;
      v9 = v7 >= 0xA;
      v7 /= 0xAu;
    }

    while (v9);
  }

  *a5 = a4 - result;
  return result;
}

char *apr_cvt(int a1, int *a2, _DWORD *a3, int a4, char *a5, long double a6)
{
  if (a1 >= 78)
  {
    v9 = 78;
  }

  else
  {
    v9 = a1;
  }

  *a3 = 0;
  if (a6 < 0.0)
  {
    *a3 = 1;
    a6 = -a6;
  }

  v31 = 0.0;
  __y = 0.0;
  v10 = modf(a6, &__y);
  v11 = v10;
  v12 = __y;
  if (__y == 0.0)
  {
    if (v10 > 0.0)
    {
      v13 = 1;
      do
      {
        v21 = v11;
        v11 = v11 * 10.0;
        --v13;
      }

      while (v11 < 1.0);
      v19 = 0;
      v31 = v11;
      v11 = v21;
      goto LABEL_20;
    }

    v13 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 80;
    v15 = 1;
    do
    {
      v16 = v14;
      v17 = v15;
      v18 = modf(v12 / 10.0, &__y);
      ++v13;
      v14 = v16 - 1;
      a5[v16 - 1] = ((v18 + 0.03) * 10.0) + 48;
      if (v16 == 1)
      {
        break;
      }

      v12 = __y;
      v15 = v17 + 1;
    }

    while (__y != 0.0);
    v31 = v18;
    if (v16 <= 80)
    {
      v19 = 81 - v16;
      v20 = a5;
      do
      {
        *v20 = v20[v14];
        ++v20;
        --v17;
      }

      while (v17);
      goto LABEL_20;
    }
  }

  v19 = 0;
LABEL_20:
  if (a4)
  {
    v22 = 0;
  }

  else
  {
    v22 = v13;
  }

  v23 = v22 + v9;
  if (v23 < 0)
  {
    *a2 = -v9;
    v27 = a5;
  }

  else
  {
    *a2 = v13;
    if (v19 <= v23 && v19 <= 0x4F)
    {
      do
      {
        v11 = modf(v11 * 10.0, &v31);
        a5[v19] = v31 + 48;
        if (v19 >= v23)
        {
          break;
        }
      }

      while (v19++ < 0x4F);
    }

    if (v23 >= 80)
    {
      v27 = a5 + 79;
    }

    else
    {
      v25 = &a5[v23];
      v26 = (a5[v23] + 5);
      a5[v23] += 5;
      if (v26 < 58)
      {
        v27 = &a5[v23];
      }

      else
      {
        v27 = &a5[v23];
        do
        {
          *v25 = 48;
          if (v25 <= a5)
          {
            *v25 = 49;
            ++*a2;
            if (!a4)
            {
              if (v27 > a5)
              {
                *v27 = 48;
              }

              ++v27;
            }

            v29 = *v25;
          }

          else
          {
            v28 = *--v25;
            v29 = v28 + 1;
            *v25 = v28 + 1;
          }
        }

        while (v29 > 57);
      }
    }
  }

  *v27 = 0;
  return a5;
}

int apr_snprintf(char *buf, apr_size_t len, const char *format, ...)
{
  va_start(va, format);
  c.curpos = buf;
  c.endpos = buf + 4;
  va_copy(v5, va);
  result = apr_vformatter(snprintf_flush, &c, format, va);
  *c.curpos = 0;
  if (result == -1)
  {
    return 4;
  }

  return result;
}

char *__cdecl apr_pstrdup(apr_pool_t *p, const char *s)
{
  if (!s)
  {
    return 0;
  }

  v4 = strlen(s);
  v5 = apr_palloc(p, v4 + 1);

  return memcpy(v5, s, v4 + 1);
}

char *apr_pstrcat(apr_pool_t *p, ...)
{
  va_start(va, p);
  __s = va_arg(va, char *);
  v20 = *MEMORY[0x277D85DE8];
  memset(v19, 0, sizeof(v19));
  va_copy(v17, va);
  v2 = __s;
  if (__s)
  {
    v3 = 0;
    v4 = 0;
    v5 = __s;
    do
    {
      v6 = strlen(v5);
      if (v4 <= 5)
      {
        *(v19 + v4++) = v6;
      }

      v3 += v6;
      v7 = va_arg(v17, const char *);
      v5 = v7;
    }

    while (v7);
    v8 = v3 + 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = apr_palloc(p, v8);
  v10 = v9;
  va_copy(v18, va);
  v11 = v9;
  if (__s)
  {
    v12 = 0;
    v11 = v9;
    do
    {
      if (v12 > 5)
      {
        v13 = strlen(v2);
      }

      else
      {
        v13 = *(v19 + v12++);
      }

      memcpy(v11, v2, v13);
      v11 += v13;
      v14 = v18;
      v18 += 8;
      v2 = *v14;
    }

    while (*v14);
  }

  *v11 = 0;
  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

char *__cdecl apr_itoa(apr_pool_t *p, int n)
{
  v3 = apr_palloc(p, 0xEuLL);
  if (n >= 0)
  {
    v4 = n;
  }

  else
  {
    v4 = -n;
  }

  v3[13] = 0;
  v5 = v3 + 14;
  do
  {
    *(v5 - 2) = (v4 % 0xA) | 0x30;
    result = v5 - 2;
    --v5;
    v7 = v4 > 9;
    v4 /= 0xAu;
  }

  while (v7);
  if (n < 0)
  {
    *(v5 - 2) = 45;
    return v5 - 2;
  }

  return result;
}

char *__cdecl apr_ltoa(apr_pool_t *p, uint64_t n)
{
  v3 = apr_palloc(p, 0x1AuLL);
  if (n >= 0)
  {
    v4 = n;
  }

  else
  {
    v4 = -n;
  }

  v3[25] = 0;
  v5 = v3 + 26;
  do
  {
    *(v5 - 2) = (v4 % 0xA) | 0x30;
    result = v5 - 2;
    --v5;
    v7 = v4 > 9;
    v4 /= 0xAuLL;
  }

  while (v7);
  if (n < 0)
  {
    *(v5 - 2) = 45;
    return v5 - 2;
  }

  return result;
}

apr_array_header_t *__cdecl apr_array_make(apr_pool_t *p, int nelts, int elt_size)
{
  v6 = apr_palloc(p, 0x20uLL);
  if (nelts <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = nelts;
  }

  v8 = apr_palloc(p, (v7 * elt_size));
  v9 = v8;
  if (v8)
  {
    bzero(v8, (v7 * elt_size));
  }

  v6->elts = v9;
  v6->pool = p;
  v6->elt_size = elt_size;
  v6->nelts = 0;
  v6->nalloc = v7;
  return v6;
}

void *__cdecl apr_array_push(apr_array_header_t *arr)
{
  nelts = arr->nelts;
  if (nelts == arr->nalloc)
  {
    if (nelts < 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2 * nelts;
    }

    elts = apr_palloc(arr->pool, arr->elt_size * v3);
    memcpy(elts, arr->elts, arr->elt_size * arr->nalloc);
    bzero(&elts[arr->elt_size * arr->nalloc], arr->elt_size * (v3 - arr->nalloc));
    arr->elts = elts;
    arr->nalloc = v3;
    nelts = arr->nelts;
  }

  else
  {
    elts = arr->elts;
  }

  arr->nelts = nelts + 1;
  return &elts[arr->elt_size * nelts];
}

apr_array_header_t *__cdecl apr_array_copy(apr_pool_t *p, const apr_array_header_t *arr)
{
  v4 = apr_palloc(p, 0x20uLL);
  elt_size = arr->elt_size;
  if (arr->nalloc <= 1)
  {
    nalloc = 1;
  }

  else
  {
    nalloc = arr->nalloc;
  }

  v7 = apr_palloc(p, nalloc * elt_size);
  v4->elts = v7;
  v4->pool = p;
  v4->elt_size = elt_size;
  v4->nelts = 0;
  v4->nalloc = nalloc;
  memcpy(v7, arr->elts, arr->nelts * arr->elt_size);
  nelts = arr->nelts;
  v4->nelts = nelts;
  bzero(&v4->elts[v4->elt_size * nelts], (v4->nalloc - nelts) * v4->elt_size);
  return v4;
}

char *__cdecl apr_array_pstrcat(apr_pool_t *p, const apr_array_header_t *arr, const char sep)
{
  nelts = arr->nelts;
  v5 = nelts - 1;
  if (nelts >= 1)
  {
    elts = arr->elts;
    if (elts)
    {
      v8 = 0;
      while (1)
      {
        if (*elts)
        {
          v8 += strlen(*elts);
        }

        if (!v5)
        {
          break;
        }

        elts += 8;
        --v5;
      }

      v10 = apr_palloc(p, v8 + 1);
      v12 = arr->elts;
      v13 = 1;
      v9 = v10;
      if (v12)
      {
LABEL_12:
        if (*v12)
        {
          v14 = strlen(*v12);
          memcpy(v9, *v12, v14);
          v9 += v14;
        }
      }

      while (v13 < arr->nelts)
      {
        v12 += 8;
        ++v13;
        if (v12)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_9;
    }
  }

  v9 = apr_palloc(p, 1uLL);
  v10 = v9;
  if (v9)
  {
LABEL_9:
    *v9 = 0;
  }

  return v10;
}

id MakeNestedMTLRenderPassAttachmentDescriptor(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = MEMORY[0x277CCABB0];
  v7 = *(a2 + 8);
  v8 = a3;
  v9 = [v6 numberWithUnsignedLongLong:v7];
  v10 = [v8 objectForKeyedSubscript:v9];
  [v5 setTexture:v10];

  [v5 setLevel:*(a2 + 24)];
  [v5 setSlice:*(a2 + 22)];
  [v5 setDepthPlane:*(a2 + 16)];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*a2];
  v12 = [v8 objectForKeyedSubscript:v11];

  [v5 setResolveTexture:v12];
  [v5 setResolveLevel:*(a2 + 26)];
  [v5 setResolveSlice:*(a2 + 20)];
  [v5 setResolveDepthPlane:*(a2 + 18)];
  [v5 setLoadAction:*(a2 + 25)];
  [v5 setStoreAction:*(a2 + 27)];
  [v5 setStoreActionOptions:*(a2 + 28)];
  if (objc_opt_respondsToSelector())
  {
    [v5 setYInvert:*(a2 + 29) != 0];
  }

  return v5;
}

id MakeNestedMTLRenderPassColorAttachmentDescriptor(void *a1, double *a2, void *a3)
{
  v5 = a1;
  [MakeNestedMTLRenderPassAttachmentDescriptor(v5 a2];

  return v5;
}

id MakeNestedMTLRenderPassDepthAttachmentDescriptor(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  [MakeNestedMTLRenderPassAttachmentDescriptor(v5 a2];
  [v5 setDepthResolveFilter:*(a2 + 40)];

  return v5;
}

id MakeNestedMTLRenderPassStencilAttachmentDescriptor(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  [MakeNestedMTLRenderPassAttachmentDescriptor(v5 a2];
  if (objc_opt_respondsToSelector())
  {
    [v5 setStencilResolveFilter:*(a2 + 36)];
  }

  return v5;
}

id MakeMTLTextureDescriptorWithoutResourceIndex(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD7050]);
  [v2 setTextureType:*(a1 + 49)];
  [v2 setPixelFormat:*(a1 + 34)];
  [v2 setWidth:*(a1 + 24)];
  [v2 setHeight:*(a1 + 32)];
  [v2 setDepth:*(a1 + 30)];
  [v2 setMipmapLevelCount:*(a1 + 45)];
  [v2 setSampleCount:*(a1 + 47)];
  [v2 setArrayLength:*(a1 + 28)];
  [v2 setFramebufferOnly:*(a1 + 43) != 0];
  [v2 setIsDrawable:*(a1 + 44) != 0];
  [v2 setUsage:*(a1 + 20)];
  if (objc_opt_respondsToSelector())
  {
    [v2 setRotation:*(a1 + 46)];
  }

  [v2 setResourceOptions:*(a1 + 36)];
  [v2 setAllowGPUOptimizedContents:*(a1 + 38) != 0];
  if (objc_opt_respondsToSelector())
  {
    [v2 setSwizzleKey:*(a1 + 16)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setSparseSurfaceDefaultValue:*(a1 + 48)];
  }

  [v2 setWriteSwizzleEnabled:*(a1 + 50) != 0];
  if (objc_opt_respondsToSelector())
  {
    [v2 setCompressionType:*(a1 + 41)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setCompressionFootprint:*(a1 + 39)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setCompressionMode:*(a1 + 40)];
  }

  return v2;
}

id MakeMTLTextureDescriptorWithResourceIndex(uint64_t a1)
{
  v2 = MakeMTLTextureDescriptorWithoutResourceIndex(a1);
  [v2 setForceResourceIndex:*(a1 + 8) != 0];
  [v2 setResourceIndex:*(a1 + 8)];

  return v2;
}

id MakeMTLBufferDescriptor(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6CB0]);
  [v2 setLength:*a1];
  [v2 setResourceOptions:*(a1 + 32)];
  [v2 setNoCopy:*(a1 + 34) != 0];

  return v2;
}

id MakeNestedMTLVertexDescriptor(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = 0;
  v5 = (a2 + 10);
  do
  {
    v6 = [v3 layouts];
    v7 = [v6 objectAtIndexedSubscript:v4];
    [v7 setStride:*(v5 - 10)];
    [v7 setStepRate:*(v5 - 1)];
    v8 = *v5;
    v5 += 16;
    [v7 setStepFunction:v8];

    ++v4;
  }

  while (v4 != 31);
  v9 = 0;
  v10 = (a2 + 501);
  do
  {
    v11 = [v3 attributes];
    v12 = [v11 objectAtIndexedSubscript:v9];
    [v12 setFormat:*v10];
    [v12 setOffset:*(v10 - 5)];
    [v12 setBufferIndex:*(v10 - 1)];

    ++v9;
    v10 += 8;
  }

  while (v9 != 31);

  return v3;
}

id MakeNestedMTLRenderPipelineColorAttachmentDescriptor(void *a1, unsigned __int16 *a2)
{
  v3 = a1;
  [v3 setBlendingEnabled:*(a2 + 3) != 0];
  [v3 setSourceRGBBlendFactor:*(a2 + 8)];
  [v3 setDestinationRGBBlendFactor:*(a2 + 5)];
  [v3 setRgbBlendOperation:*(a2 + 6)];
  [v3 setSourceAlphaBlendFactor:*(a2 + 7)];
  [v3 setDestinationAlphaBlendFactor:*(a2 + 4)];
  [v3 setAlphaBlendOperation:*(a2 + 2)];
  [v3 setWriteMask:*(a2 + 9)];
  [v3 setPixelFormat:*a2];

  return v3;
}

id CreateObjectArrayWithMap(uint64_t *a1, int a2, void *a3)
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a2];
  if (a2 >= 1)
  {
    v7 = a2;
    do
    {
      v8 = *a1++;
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8];
      v10 = [v5 objectForKeyedSubscript:v9];

      if (v10)
      {
        [v6 addObject:v10];
      }

      --v7;
    }

    while (v7);
  }

  v11 = [v6 copy];

  return v11;
}

id MakeMTLRenderPipelineDescriptorWithoutResourceIndex(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD6F70]);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 1296)];
  v6 = [v3 objectForKeyedSubscript:v5];
  [v4 setVertexFunction:v6];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 1176)];
  v8 = [v3 objectForKeyedSubscript:v7];
  [v4 setFragmentFunction:v8];

  v9 = [v4 vertexDescriptor];

  [v4 setRasterSampleCount:*(a1 + 1272)];
  [v4 setSampleMask:*(a1 + 1288)];
  LODWORD(v10) = *(a1 + 1332);
  [v4 setSampleCoverage:v10];
  [v4 setAlphaToCoverageEnabled:*(a1 + 1480) != 0];
  [v4 setAlphaToOneEnabled:*(a1 + 1481) != 0];
  [v4 setRasterizationEnabled:*(a1 + 1494) != 0];
  [v4 setDepthAttachmentPixelFormat:*(a1 + 1340)];
  [v4 setStencilAttachmentPixelFormat:*(a1 + 1352)];
  v11 = 0;
  v12 = (a1 + 744);
  do
  {
    v13 = [v4 colorAttachments];
    v14 = [v13 objectAtIndexedSubscript:v11];

    ++v11;
    v12 += 8;
  }

  while (v11 != 8);
  if (*(a1 + 1200))
  {
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v4 setLabel:v15];
  }

  [v4 setInputPrimitiveTopology:*(a1 + 1486)];
  [v4 setTessellationPartitionMode:*(a1 + 1506)];
  [v4 setMaxTessellationFactor:*(a1 + 1208)];
  [v4 setTessellationFactorScaleEnabled:*(a1 + 1503) != 0];
  [v4 setTessellationFactorFormat:*(a1 + 1502)];
  [v4 setTessellationControlPointIndexType:*(a1 + 1501)];
  [v4 setTessellationFactorStepFunction:*(a1 + 1504)];
  [v4 setTessellationOutputWindingOrder:*(a1 + 1505)];
  for (i = 0; i != 31; ++i)
  {
    v17 = [v4 vertexBuffers];
    v18 = [v17 objectAtIndexedSubscript:i];
    [v18 setMutability:*(a1 + 1447 + i)];
  }

  for (j = 0; j != 31; ++j)
  {
    v20 = [v4 fragmentBuffers];
    v21 = [v20 objectAtIndexedSubscript:j];
    [v21 setMutability:*(a1 + 1354 + j)];
  }

  [v4 setSupportIndirectCommandBuffers:*(a1 + 1500) != 0];
  if (objc_opt_respondsToSelector())
  {
    [v4 setVertexAmplificationMode:*(a1 + 1508)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxVertexAmplificationCount:*(a1 + 1328)];
  }

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 1264)];
  v23 = [v3 objectForKeyedSubscript:v22];
  [v4 setPipelineLibrary:v23];

  if (objc_opt_respondsToSelector())
  {
    [v4 setLogicOperation:*(a1 + 1487)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setAlphaTestFunction:*(a1 + 1479)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setVertexDepthCompareClampMask:*(a1 + 1336)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setFragmentDepthCompareClampMask:*(a1 + 1324)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setLogicOperationEnabled:*(a1 + 1488) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setOpenGLModeEnabled:*(a1 + 1490) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setPointCoordLowerLeft:*(a1 + 1491) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setPointSizeOutputVS:*(a1 + 1492) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setTwoSideEnabled:*(a1 + 1507) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setAlphaTestEnabled:*(a1 + 1478) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setPointSmoothEnabled:*(a1 + 1493) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setClipDistanceEnableMask:*(a1 + 1482)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setColorSampleCount:*(a1 + 1160)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setSampleCoverageInvert:*(a1 + 1495) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setNeedsCustomBorderColorSamplers:*(a1 + 1489) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setDepthStencilWriteDisabled:*(a1 + 1484) != 0];
  }

  [v4 setForceSoftwareVertexFetch:*(a1 + 1485) != 0];
  if (objc_opt_respondsToSelector())
  {
    v24 = GTData_MakeDictionary(*(a1 + 1144), *(a1 + 1152));
    [v4 setPluginData:v24];
  }

  if (objc_opt_respondsToSelector())
  {
    v25 = GTData_MakeDictionary(*(a1 + 1128), *(a1 + 1136));
    [v4 setDriverCompilerOptions:v25];
  }

  v26 = *(a1 + 1312);
  if (v26)
  {
    v27 = CreateObjectArrayWithMap(*(a1 + 1304), v26, v3);
    [v4 setVertexPreloadedLibraries:v27];
  }

  v28 = *(a1 + 1192);
  if (v28)
  {
    v29 = CreateObjectArrayWithMap(*(a1 + 1184), v28, v3);
    [v4 setFragmentPreloadedLibraries:v29];
  }

  v30 = [v4 vertexLinkedFunctions];
  MakeNestedMTLLinkedFunctions(v30, a1 + 1064, v3);

  v31 = [v4 fragmentLinkedFunctions];
  MakeNestedMTLLinkedFunctions(v31, a1 + 872, v3);

  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 1240)];
  v33 = [v3 objectForKeyedSubscript:v32];
  [v4 setObjectFunction:v33];

  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 1216)];
  v35 = [v3 objectForKeyedSubscript:v34];
  [v4 setMeshFunction:v35];

  for (k = 0; k != 31; ++k)
  {
    v37 = [v4 objectBuffers];
    v38 = [v37 objectAtIndexedSubscript:k];
    [v38 setMutability:*(a1 + 1416 + k)];
  }

  for (m = 0; m != 31; ++m)
  {
    v40 = [v4 meshBuffers];
    v41 = [v40 objectAtIndexedSubscript:m];
    [v41 setMutability:*(a1 + 1385 + m)];
  }

  v42 = *(a1 + 1256);
  if (v42)
  {
    v43 = CreateObjectArrayWithMap(*(a1 + 1248), v42, v3);
    [v4 setObjectPreloadedLibraries:v43];
  }

  v44 = *(a1 + 1232);
  if (v44)
  {
    v45 = CreateObjectArrayWithMap(*(a1 + 1224), v44, v3);
    [v4 setMeshPreloadedLibraries:v45];
  }

  v46 = [v4 objectLinkedFunctions];
  MakeNestedMTLLinkedFunctions(v46, a1 + 1000, v3);

  v47 = [v4 meshLinkedFunctions];
  MakeNestedMTLLinkedFunctions(v47, a1 + 936, v3);

  if (objc_opt_respondsToSelector())
  {
    [v4 setSupportAddingVertexBinaryFunctions:*(a1 + 1499) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setSupportAddingFragmentBinaryFunctions:*(a1 + 1496) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setSupportAddingObjectBinaryFunctions:*(a1 + 1498) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setSupportAddingMeshBinaryFunctions:*(a1 + 1497) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setExplicitVisibilityGroupID:*(a1 + 1320)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxVertexCallStackDepth:*(a1 + 1350)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxFragmentCallStackDepth:*(a1 + 1344)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxObjectCallStackDepth:*(a1 + 1348)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxMeshCallStackDepth:*(a1 + 1346)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxAccelerationStructureTraversalDepth:*(a1 + 1342)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setColorAttachmentMappingState:*(a1 + 1483)];
  }

  v48 = v4;

  return v4;
}

id GTData_MakeDictionary(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = MEMORY[0x277CCAAC8];
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v5 setWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
    v11 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:a1 length:a2 freeWhenDone:0];
    v22 = 0;
    v12 = [v4 unarchivedObjectOfClasses:v10 fromData:v11 error:&v22];
    v13 = v22;

    if (v13)
    {
      if (s_logUsingOsLog == 1)
      {
        v14 = gt_tagged_log(3u);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = [v13 localizedDescription];
          v16 = [v15 UTF8String];
          *buf = 136315138;
          v24 = v16;
          _os_log_error_impl(&dword_24D764000, v14, OS_LOG_TYPE_ERROR, "warning: %s", buf, 0xCu);
        }
      }

      else
      {
        v17 = *MEMORY[0x277D85DF8];
        v18 = MEMORY[0x277CCACA8];
        v14 = [v13 localizedDescription];
        v19 = [v18 stringWithFormat:@"warning: %s", -[NSObject UTF8String](v14, "UTF8String")];
        fprintf(v17, "%s\n", [v19 UTF8String]);
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v12;
}

void MakeNestedMTLLinkedFunctions(void *a1, uint64_t a2, void *a3)
{
  v20 = a1;
  v5 = a3;
  if (*(a2 + 56) + *(a2 + 24) + *(a2 + 8) + *(a2 + 40))
  {
    v6 = v20;
    v7 = v5;
    v8 = *(a2 + 24);
    if (v8)
    {
      v9 = CreateObjectArrayWithMap(*(a2 + 16), v8, v7);
      [v6 setFunctions:v9];
    }

    v10 = *(a2 + 8);
    if (v10)
    {
      v11 = CreateObjectArrayWithMap(*a2, v10, v7);
      [v6 setBinaryFunctions:v11];
    }

    v12 = *(a2 + 56);
    if (v12)
    {
      v13 = CreateObjectArrayWithMap(*(a2 + 48), v12, v7);
      [v6 setPrivateFunctions:v13];
    }

    if (*(a2 + 40))
    {
      v14 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:*(a2 + 40)];
      if (*(a2 + 40))
      {
        v15 = 0;
        v16 = 0;
        do
        {
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(*(a2 + 32) + v15)];
          v18 = CreateObjectArrayWithMap(*(*(a2 + 32) + v15 + 8), *(*(a2 + 32) + v15 + 16), v7);
          [v14 setObject:v18 forKeyedSubscript:v17];

          ++v16;
          v15 += 24;
        }

        while (*(a2 + 40) > v16);
      }

      v19 = [v14 copy];
      [v6 setGroups:v19];
    }
  }
}

id MakeMTLRenderPipelineDescriptorWithResourceIndex(uint64_t a1, void *a2)
{
  v3 = MakeMTLRenderPipelineDescriptorWithoutResourceIndex(a1, a2);
  v4 = v3;
  if (*(a1 + 1500))
  {
    [v3 setResourceIndex:*(a1 + 1280)];
  }

  return v4;
}

id MakeMTLMeshRenderPipelineDescriptorWithoutResourceIndex(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD6EE8]);
  if (*(a1 + 352))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v4 setLabel:v5];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 368)];
  v7 = [v3 objectForKeyedSubscript:v6];
  [v4 setObjectFunction:v7];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 360)];
  v9 = [v3 objectForKeyedSubscript:v8];
  [v4 setMeshFunction:v9];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 344)];
  v11 = [v3 objectForKeyedSubscript:v10];
  [v4 setFragmentFunction:v11];

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxTotalThreadsPerObjectThreadgroup:*(a1 + 406)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxTotalThreadsPerMeshThreadgroup:*(a1 + 404)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setObjectThreadgroupSizeIsMultipleOfThreadExecutionWidth:*(a1 + 508) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMeshThreadgroupSizeIsMultipleOfThreadExecutionWidth:*(a1 + 507) != 0];
  }

  [v4 setPayloadMemoryLength:*(a1 + 376)];
  if (objc_opt_respondsToSelector())
  {
    v12 = *(a1 + 336);
    v30 = *(a1 + 320);
    v31 = v12;
    [v4 setMaxThreadgroupsPerMeshGrid:&v30];
  }

  for (i = 0; i != 31; ++i)
  {
    v14 = [v4 objectBuffers];
    v15 = [v14 objectAtIndexedSubscript:i];
    [v15 setMutability:*(a1 + 472 + i)];
  }

  for (j = 0; j != 31; ++j)
  {
    v17 = [v4 meshBuffers];
    v18 = [v17 objectAtIndexedSubscript:j];
    [v18 setMutability:*(a1 + 441 + j)];
  }

  for (k = 0; k != 31; ++k)
  {
    v20 = [v4 fragmentBuffers];
    v21 = [v20 objectAtIndexedSubscript:k];
    [v21 setMutability:*(a1 + 410 + k)];
  }

  [v4 setRasterSampleCount:*(a1 + 509)];
  [v4 setAlphaToCoverageEnabled:*(a1 + 503) != 0];
  [v4 setAlphaToOneEnabled:*(a1 + 504) != 0];
  [v4 setRasterizationEnabled:*(a1 + 510) != 0];
  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxVertexAmplificationCount:*(a1 + 396)];
  }

  v22 = 0;
  v23 = a1;
  do
  {
    v24 = [v4 colorAttachments];
    v25 = [v24 objectAtIndexedSubscript:v22];

    ++v22;
    v23 += 8;
  }

  while (v22 != 8);
  [v4 setDepthAttachmentPixelFormat:*(a1 + 400)];
  [v4 setStencilAttachmentPixelFormat:*(a1 + 408)];
  if (objc_opt_respondsToSelector())
  {
    [v4 setSupportIndirectCommandBuffers:*(a1 + 511) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setExplicitVisibilityGroupID:*(a1 + 392)];
  }

  v26 = [v4 objectLinkedFunctions];
  MakeNestedMTLLinkedFunctions(v26, a1 + 256, v3);

  v27 = [v4 meshLinkedFunctions];
  MakeNestedMTLLinkedFunctions(v27, a1 + 192, v3);

  v28 = [v4 fragmentLinkedFunctions];
  MakeNestedMTLLinkedFunctions(v28, a1 + 128, v3);

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxAccelerationStructureTraversalDepth:*(a1 + 402)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setColorAttachmentMappingState:*(a1 + 505)];
  }

  return v4;
}

id MakeMTLMeshRenderPipelineDescriptorWithResourceIndex(uint64_t a1, void *a2)
{
  v3 = MakeMTLMeshRenderPipelineDescriptorWithoutResourceIndex(a1, a2);
  v4 = v3;
  if (*(a1 + 511))
  {
    [v3 setResourceIndex:*(a1 + 384)];
  }

  return v4;
}

id MakeNestedMTLStencilDescriptor(void *a1, unsigned int *a2)
{
  v3 = a1;
  [v3 setStencilCompareFunction:*(a2 + 10)];
  [v3 setStencilFailureOperation:*(a2 + 11)];
  [v3 setDepthFailureOperation:*(a2 + 8)];
  [v3 setDepthStencilPassOperation:*(a2 + 9)];
  [v3 setReadMask:*a2];
  [v3 setWriteMask:a2[1]];

  return v3;
}

id MakeMTLDepthStencilDescriptor(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6D58]);
  [v2 setDepthCompareFunction:*(a1 + 40)];
  [v2 setDepthWriteEnabled:*(a1 + 41) != 0];
  if (*(a1 + 32))
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v2 setLabel:v3];
  }

  v4 = [v2 frontFaceStencil];

  v5 = [v2 backFaceStencil];

  return v2;
}

id MakeMTLSamplerDescriptorWithoutResourceIndex(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6FC8]);
  [v2 setMinFilter:*(a1 + 60)];
  [v2 setMagFilter:*(a1 + 59)];
  [v2 setMipFilter:*(a1 + 61)];
  [v2 setMaxAnisotropy:*(a1 + 8)];
  [v2 setSAddressMode:*(a1 + 65)];
  [v2 setTAddressMode:*(a1 + 67)];
  [v2 setRAddressMode:*(a1 + 63)];
  [v2 setNormalizedCoordinates:*(a1 + 62) != 0];
  LODWORD(v3) = *(a1 + 48);
  [v2 setLodMinClamp:v3];
  LODWORD(v4) = *(a1 + 44);
  [v2 setLodMaxClamp:v4];
  if (*a1)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v2 setLabel:v5];
  }

  [v2 setLodAverage:*(a1 + 58) != 0];
  [v2 setCompareFunction:*(a1 + 55)];
  [v2 setBorderColor:*(a1 + 54)];
  [v2 setSupportArgumentBuffers:*(a1 + 66) != 0];
  if (objc_opt_respondsToSelector())
  {
    [v2 setReductionMode:*(a1 + 64)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setCustomBorderColorValue_0:*(a1 + 24)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setCustomBorderColorValue_1:*(a1 + 28)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setCustomBorderColorValue_2:*(a1 + 32)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setCustomBorderColorValue_3:*(a1 + 36)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setForceSeamsOnCubemapFiltering:*(a1 + 57) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setPixelFormat:*(a1 + 52)];
  }

  if (objc_opt_respondsToSelector())
  {
    LODWORD(v6) = *(a1 + 40);
    [v2 setLodBias:v6];
  }

  return v2;
}