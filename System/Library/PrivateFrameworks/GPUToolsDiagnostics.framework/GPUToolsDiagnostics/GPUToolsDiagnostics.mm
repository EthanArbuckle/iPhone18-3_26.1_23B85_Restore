id GPUTools::Diag::GetLibrary(objc_object *this, objc_object *a2)
{
  v2 = DeviceObject(this);
  v3 = objc_getAssociatedObject(v2, &GPUTools::Diag::AssociatedObjectKey);

  return v3;
}

objc_object *DeviceObject(objc_object *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = objc_autoreleasePoolPush();
    while ((objc_opt_respondsToSelector() & 1) != 0)
    {
      v2 = [(objc_object *)v2 performSelector:"baseObject"];
    }

    objc_autoreleasePoolPop(v3);
    a1 = v2;
    v1 = vars8;
  }

  return a1;
}

uint64_t GPUTools::Diag::SwizzleMTLTracker::FromCallstack(uint64_t a1)
{
  if (!*(a1 + 4096))
  {
    return 0;
  }

  result = [NSData dataWithBytes:a1 length:4096];
  v3 = *(a1 + 4096);
  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,std::vector<unsigned long>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<unsigned long>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<unsigned long>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<unsigned long>>>>::find<unsigned long>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  result = *v5;
  if (*v5)
  {
    do
    {
      v7 = result[1];
      if (v7 == a2)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v3.u32[0] > 1uLL)
        {
          if (v7 >= *&v2)
          {
            v7 %= *&v2;
          }
        }

        else
        {
          v7 &= *&v2 - 1;
        }

        if (v7 != v4)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,std::vector<unsigned long>>,void *>>>::operator()[abi:nn200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void GPUTools::Diag::SwizzleMTLTracker::ProcessBufferErrorLog(void *a1, void *a2, uint64_t a3)
{
  v41 = a2;
  v42 = a1;
  v43 = objc_opt_new();
  [v43 setCpuCallstackData:v41];
  [v43 setCpuCallstackFramesNum:a3];
  v46 = [&__NSArray0__struct mutableCopy];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v44 = v42;
  v4 = [v44 errorStackTrace];
  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v5)
  {
    v6 = *v52;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v52 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v51 + 1) + 8 * i);
        v9 = objc_opt_new();
        v10 = [v8 URL];
        v11 = [v10 path];
        v12 = [NSURL fileURLWithPath:v11];
        [v9 setFile:v12];

        [v9 setLine:{objc_msgSend(v8, "line")}];
        [v9 setColumn:{objc_msgSend(v8, "column")}];
        v13 = [v8 functionName];
        [v9 setFunctionName:v13];

        [v46 addObject:v9];
      }

      v4 = obj;
      v5 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v5);
  }

  [v43 setCallstack:v46];
  [v43 setLibraryOnlineSource:&stru_146E0];
  v14 = objc_opt_new();
  [v43 setLibraryOfflineSource:v14];

  v15 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v16 = [v44 function];
  LOBYTE(v14) = v16 == 0;

  if ((v14 & 1) == 0)
  {
    v17 = [v44 function];
    v19 = GPUTools::Diag::GetLibrary(v17, v18);
    goto LABEL_17;
  }

  v20 = [v44 computePipeline];
  if (v20)
  {

LABEL_13:
    v23 = [v44 computePipeline];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = [v44 renderPipeline];
    }

    v17 = v25;

    v27 = GPUTools::Diag::GetLibraries(v17, v26);
    v28 = [v44 functionName];
    v29 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@|%d", v28, [v44 functionType], v41);
    v19 = [v27 objectForKey:v29];

LABEL_17:
    if (!v19)
    {
      goto LABEL_27;
    }

    [v19 library];
    v30 = [NSString stringWithFormat:@"%lu", v19];
    [v43 setLibraryHash:v30];

    if ([*v15 containsObject:v19])
    {
      [v43 setIsDefaultLibrary:v50];
      if (!v49)
      {
LABEL_26:

        goto LABEL_27;
      }

      v31 = @" ";
    }

    else
    {
      [*v15 addObject:v19];
      [v43 setIsDefaultLibrary:v50];
      if (v47)
      {
        v32 = [NSData dataWithContentsOfFile:?];
        [v43 setLibraryOfflineSource:v32];

        goto LABEL_26;
      }

      if (v48)
      {
        [v43 setLibraryOfflineSource:?];
        goto LABEL_26;
      }

      v31 = v49;
      if (!v49)
      {
        goto LABEL_26;
      }
    }

    [v43 setLibraryOnlineSource:v31];
    goto LABEL_26;
  }

  v21 = [v44 renderPipeline];
  v22 = v21 == 0;

  if (!v22)
  {
    goto LABEL_13;
  }

  v19 = 0;
LABEL_27:
  v33 = [v44 debugDescription];
  if ([(__CFString *)v33 length])
  {
    v34 = v33;
  }

  else
  {
    v34 = @"Invalid OOB access detected";
  }

  [v43 setMetalLogMessage:v34];
  if (objc_opt_respondsToSelector())
  {
    v35 = [v44 functionName];
    v36 = v35;
    if (v35)
    {
      v37 = v35;
    }

    else
    {
      v37 = &stru_146E0;
    }

    [v43 setMetalFunctionName:v37];
  }

  else
  {
    v36 = [v44 function];
    v38 = [v36 name];
    v39 = v38;
    if (v38)
    {
      v40 = v38;
    }

    else
    {
      v40 = &stru_146E0;
    }

    [v43 setMetalFunctionName:v40];
  }

  [GPUTools::Diag::SwizzleMTLTracker::FacilityImpl notifyDiagnosticsIssue:v43];
}

id GPUTools::Diag::GetLibraries(objc_object *this, objc_object *a2)
{
  v2 = DeviceObject(this);
  v3 = objc_getAssociatedObject(v2, &GPUTools::Diag::AssociatedObjectKey);

  return v3;
}

void GPUTools::Diag::SwizzleMTLTracker::_MTLCommandBuffer_commit(GPUTools::Diag::SwizzleMTLTracker *this, objc_object *a2, objc_selector *a3)
{
  v3 = __chkstk_darwin(this);
  v5 = v4;
  v6 = v3;
  v7 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v8 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (!v8 || v8("_MTLCommandBuffer_commit", 0))
  {
    v9 = v6;
    bzero(v15, 0x1008uLL);
    LODWORD(v15[512]) = backtrace(v15, 512);
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x3032000000;
    v13[3] = __Block_byref_object_copy_;
    v13[4] = __Block_byref_object_dispose_;
    v14 = *(v7 + 288);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = ___ZN8GPUTools4Diag17SwizzleMTLTracker24_MTLCommandBuffer_commitEP11objc_objectP13objc_selector_block_invoke;
    v11[3] = &unk_14388;
    v11[4] = v13;
    memcpy(v12, v15, sizeof(v12));
    v10 = objc_retainBlock(v11);
    [v9 addCompletedHandler:v10];
    (*(v7 + 320))(v9, v5);

    _Block_object_dispose(v13, 8);
  }
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZN8GPUTools4Diag17SwizzleMTLTracker24_MTLCommandBuffer_commitEP11objc_objectP13objc_selector_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = ___ZN8GPUTools4Diag17SwizzleMTLTracker24_MTLCommandBuffer_commitEP11objc_objectP13objc_selector_block_invoke_2;
  v6[3] = &unk_14360;
  v7 = v3;
  memcpy(v8, (a1 + 40), sizeof(v8));
  v5 = v3;
  dispatch_async(v4, v6);
}

void ___ZN8GPUTools4Diag17SwizzleMTLTracker24_MTLCommandBuffer_commitEP11objc_objectP13objc_selector_block_invoke_2(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v67 = *(v1 + 32);
  v64 = [v67 globalTraceObjectID];
  v2 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v68 = GPUTools::Diag::SwizzleMTLTracker::FromCallstack(v1 + 40);
  v4 = v3;
  if (objc_opt_respondsToSelector())
  {
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v5 = [v67 logs];
    v6 = [v5 countByEnumeratingWithState:&v75 objects:v92 count:16];
    if (v6)
    {
      v7 = *v76;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v76 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v75 + 1) + 8 * i);
          if ([v9 conformsToProtocol:&OBJC_PROTOCOL___MTLFunctionLog])
          {
            v10 = v68;
            GPUTools::Diag::SwizzleMTLTracker::ProcessBufferErrorLog(v9, v68, v4);
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v75 objects:v92 count:16];
      }

      while (v6);
    }
  }

  v11 = [v67 error];
  v63 = v2;
  v12 = v11 == 0;

  if (!v12)
  {
    v62 = v68;
    v65 = v67;
    v13 = [v65 error];
    v14 = [v13 userInfo];
    v61 = [v14 valueForKey:MTLCommandBufferEncoderInfoErrorKey];

    v66 = objc_opt_new();
    [v66 setCommandBufferCommitCallstackData:v62];
    [v66 setCommandBufferCommitCallstackFramesNum:v4];
    v74 = [&__NSArray0__struct mutableCopy];
    v71 = [&__NSArray0__struct mutableCopy];
    v70 = [&__NSArray0__struct mutableCopy];
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    obj = v61;
    v15 = [obj countByEnumeratingWithState:&v87 objects:v95 count:16];
    if (v15)
    {
      v16 = *v88;
      do
      {
        for (j = 0; j != v15; j = j + 1)
        {
          if (*v88 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v87 + 1) + 8 * j);
          if ([v18 errorState] == &dword_4)
          {
            [v71 addObject:v18];
          }

          if ([v18 errorState] == &dword_0 + 2)
          {
            [v70 addObject:v18];
          }
        }

        v15 = [obj countByEnumeratingWithState:&v87 objects:v95 count:16];
      }

      while (v15);
    }

    if ([v71 count])
    {
      v60 = @"The commands associated with an encoder caused an error";
      v19 = v71;
    }

    else
    {
      if (![v70 count])
      {
LABEL_55:

        goto LABEL_56;
      }

      v60 = @"The commands associated with the encoder were affected by an error, which may or may not have been caused by the commands themselves, and failed to execute in full";
      v19 = v70;
    }

    v20 = v19;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v69 = v20;
    v21 = [v69 countByEnumeratingWithState:&v83 objects:v94 count:16];
    if (v21)
    {
      v73 = *v84;
      do
      {
        for (k = 0; k != v21; k = k + 1)
        {
          if (*v84 != v73)
          {
            objc_enumerationMutation(v69);
          }

          v23 = *(*(&v83 + 1) + 8 * k);
          v79 = 0u;
          v80 = 0u;
          v81 = 0u;
          v82 = 0u;
          v24 = [v23 debugSignposts];
          v25 = [v24 countByEnumeratingWithState:&v79 objects:v93 count:16];
          if (v25)
          {
            v26 = *v80;
            while (2)
            {
              for (m = 0; m != v25; m = m + 1)
              {
                if (*v80 != v26)
                {
                  objc_enumerationMutation(v24);
                }

                v28 = *(*(&v79 + 1) + 8 * m);
                if ([v28 hasPrefix:@"GPUToolsDebugInfo"])
                {
                  v30 = [v28 componentsSeparatedByString:@"_"];
                  v31 = [v30 objectAtIndexedSubscript:1];
                  [v31 integerValue];
                  v32 = [v23 label];
                  if ([v32 length])
                  {
                    v33 = [v23 label];
                    v34 = [NSString stringWithFormat:@" %@", v33];
                  }

                  else
                  {
                    v34 = &stru_146E0;
                  }

                  v35 = [v30 objectAtIndexedSubscript:2];
                  v29 = [v35 stringByAppendingString:v34];

                  goto LABEL_46;
                }
              }

              v25 = [v24 countByEnumeratingWithState:&v79 objects:v93 count:16];
              if (v25)
              {
                continue;
              }

              break;
            }
          }

          v29 = @"[MTLCommandEncoder endEncoding]";
LABEL_46:

          GPUTools::Diag::BacktraceStore::RemoveBacktrace(v91);
          v36 = GPUTools::Diag::SwizzleMTLTracker::FromCallstack(v91);
          v38 = v37;
          v39 = objc_opt_new();
          [v39 setCpuCallstackData:v36];
          [v39 setCpuCallstackFramesNum:v38];
          if (v29)
          {
            v40 = v29;
          }

          else
          {
            v40 = &stru_146E0;
          }

          [v39 setMetalLogMessage:v40];
          [v74 addObject:v39];
        }

        v21 = [v69 countByEnumeratingWithState:&v83 objects:v94 count:16];
      }

      while (v21);
    }

    [v66 setFaultingEncoders:v74];
    v41 = [v65 label];
    if ([v41 length])
    {
      v42 = [v65 label];
      v43 = [NSString stringWithFormat:@" %@", v42];
    }

    else
    {
      v43 = &stru_146E0;
    }

    v44 = [NSString stringWithFormat:@"MTLCommandBuffer%@ execution failed: %@", v43, v60];
    [v66 setMetalLogMessage:v44];

    [GPUTools::Diag::SwizzleMTLTracker::FacilityImpl notifyCommandBufferIssue:v66];
    goto LABEL_55;
  }

LABEL_56:
  v45 = std::__hash_table<std::__hash_value_type<unsigned long,std::vector<unsigned long>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<unsigned long>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<unsigned long>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<unsigned long>>>>::find<unsigned long>(v63 + 1, v64);
  if (v45)
  {
    v46 = v45;
    v47 = v45[3];
    v48 = v45[4];
    while (v47 != v48)
    {
      v49 = *v47++;
      GPUTools::Diag::BacktraceStore::RemoveBacktrace(v91);
    }

    v50 = v63[2];
    v51 = v46[1];
    v52 = vcnt_s8(v50);
    v52.i16[0] = vaddlv_u8(v52);
    if (v52.u32[0] > 1uLL)
    {
      if (v51 >= *&v50)
      {
        v51 %= *&v50;
      }
    }

    else
    {
      v51 &= *&v50 - 1;
    }

    v53 = v63[1];
    v54 = *(v53 + 8 * v51);
    do
    {
      v55 = v54;
      v54 = *v54;
    }

    while (v54 != v46);
    if (v55 == v63 + 3)
    {
      goto LABEL_77;
    }

    v56 = v55[1];
    if (v52.u32[0] > 1uLL)
    {
      if (v56 >= *&v50)
      {
        v56 %= *&v50;
      }
    }

    else
    {
      v56 &= *&v50 - 1;
    }

    if (v56 != v51)
    {
LABEL_77:
      if (!*v46)
      {
        goto LABEL_78;
      }

      v57 = *(*v46 + 8);
      if (v52.u32[0] > 1uLL)
      {
        if (v57 >= *&v50)
        {
          v57 %= *&v50;
        }
      }

      else
      {
        v57 &= *&v50 - 1;
      }

      if (v57 != v51)
      {
LABEL_78:
        *(v53 + 8 * v51) = 0;
      }
    }

    v58 = *v46;
    if (*v46)
    {
      v59 = *(v58 + 8);
      if (v52.u32[0] > 1uLL)
      {
        if (v59 >= *&v50)
        {
          v59 %= *&v50;
        }
      }

      else
      {
        v59 &= *&v50 - 1;
      }

      if (v59 != v51)
      {
        *(v63[1] + 8 * v59) = v55;
        v58 = *v46;
      }
    }

    *v55 = v58;
    *v46 = 0;
    --v63[4];
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,std::vector<unsigned long>>,void *>>>::operator()[abi:nn200100](1, v46);
  }
}

id GPUTools::Diag::SwizzleMTLTracker::_MTLCommandQueue_commandBufferWithDescriptor(GPUTools::Diag::SwizzleMTLTracker *this, objc_object *a2, objc_selector *a3, MTLCommandBufferDescriptor *a4)
{
  v6 = a3;
  v7 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v8 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (v8 && (v8("_MTLCommandQueue_commandBufferWithDescriptor", 0) & 1) == 0)
  {
    v9 = 0;
  }

  else
  {
    if (!v6)
    {
      v6 = objc_opt_new();
    }

    [(objc_selector *)v6 setErrorOptions:1];
    v9 = (*(v7 + 328))(this, a2, v6);
  }

  return v9;
}

void GPUTools::Diag::SwizzleMTLTracker::_MTLCommandEncoder_endEncoding(GPUTools::Diag::SwizzleMTLTracker *this, objc_object *a2, objc_selector *a3)
{
  v3 = __chkstk_darwin(this);
  v5 = v4;
  v6 = v3;
  v7 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v8 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (!v8 || v8("_MTLCommandEncoder_endEncoding", 0))
  {
    bzero(__src, 0x1008uLL);
    LODWORD(__src[512]) = backtrace(__src, 512);
    v9 = v6;
    v10 = [v9 globalTraceObjectID];
    v11 = *(v7 + 160);
    *&v33 = _NSConcreteStackBlock;
    *(&v33 + 1) = 3221225472;
    *&v34 = ___ZN8GPUTools4Diag14BacktraceStore15InsertBacktraceENS0_9CallstackEm_block_invoke;
    *(&v34 + 1) = &__block_descriptor_4152_e5_v8__0l;
    v35[0] = v7 + 48;
    memcpy(&v35[1], __src, 0x1008uLL);
    v35[514] = v10;
    dispatch_async(v11, &v33);
    v12 = [v9 commandBuffer];
    v13 = [v12 globalTraceObjectID];

    v14 = std::__hash_table<std::__hash_value_type<unsigned long,std::vector<unsigned long>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<unsigned long>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<unsigned long>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<unsigned long>>>>::find<unsigned long>((v7 + 8), v13);
    if (!v14)
    {
      operator new();
    }

    v15 = v14;
    v17 = v14[4];
    v16 = v14[5];
    if (v17 >= v16)
    {
      v19 = v14[3];
      v20 = v17 - v19;
      v21 = (v17 - v19) >> 3;
      v22 = v21 + 1;
      if ((v21 + 1) >> 61)
      {
        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      v23 = v16 - v19;
      if (v23 >> 2 > v22)
      {
        v22 = v23 >> 2;
      }

      if (v23 >= 0x7FFFFFFFFFFFFFF8)
      {
        v24 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v22;
      }

      if (v24)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v24);
      }

      v25 = v21;
      v26 = (8 * v21);
      v27 = &v26[-v25];
      *v26 = v10;
      v18 = v26 + 1;
      memcpy(v27, v19, v20);
      v28 = v15[3];
      v15[3] = v27;
      v15[4] = v18;
      v15[5] = 0;
      if (v28)
      {
        operator delete(v28);
      }
    }

    else
    {
      *v17 = v10;
      v18 = v17 + 8;
    }

    v15[4] = v18;
    v29 = [v9 getType];
    if (v29 >= 7)
    {
      v30 = "_MTLCommandEncoder";
    }

    else
    {
      v30 = off_145A0[v29];
    }

    memset(v35, 0, 224);
    v33 = 0u;
    v34 = 0u;
    snprintf(&v33, 0x100uLL, "%s_%lu%s", "GPUToolsDebugInfo", v10, v30);
    v31 = [NSString stringWithUTF8String:&v33];
    [v9 insertDebugSignpost:v31];

    (*(v7 + 336))(v9, v5);
  }
}

void sub_2F2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,std::vector<unsigned long>>,void *>>>::operator()[abi:nn200100](1, v15);
  operator delete(v14);

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

void GPUTools::Diag::SwizzleMTLTracker::MTL4GPUDebugCommandQueue__commit_count_options(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v10 = v9;
  v11 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v12 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (!v12 || (v12("MTL4GPUDebugCommandQueue__commit_count_options", 0) & 1) != 0)
  {
    bzero(v19, 0x1008uLL);
    LODWORD(v19[512]) = backtrace(v19, 512);
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = __Block_byref_object_copy_;
    v17[4] = __Block_byref_object_dispose_;
    v18 = *(v11 + 288);
    if (!v10)
    {
      v10 = objc_opt_new();
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = ___ZN8GPUTools4Diag17SwizzleMTLTracker46MTL4GPUDebugCommandQueue__commit_count_optionsEP11objc_objectP13objc_selectorPKPU28objcproto17MTL4CommandBuffer11objc_objectmP17MTL4CommitOptions_block_invoke;
    v13[3] = &unk_143D8;
    v13[4] = v17;
    memcpy(v14, v19, sizeof(v14));
    v15 = v5;
    v16 = v3;
    [v10 addFeedbackHandler:v13];
    (*(v11 + 344))(v8, v7, v5, v3, v10);
    _Block_object_dispose(v17, 8);
  }
}

void ___ZN8GPUTools4Diag17SwizzleMTLTracker46MTL4GPUDebugCommandQueue__commit_count_optionsEP11objc_objectP13objc_selectorPKPU28objcproto17MTL4CommandBuffer11objc_objectmP17MTL4CommitOptions_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = ___ZN8GPUTools4Diag17SwizzleMTLTracker46MTL4GPUDebugCommandQueue__commit_count_optionsEP11objc_objectP13objc_selectorPKPU28objcproto17MTL4CommandBuffer11objc_objectmP17MTL4CommitOptions_block_invoke_2;
  v6[3] = &unk_143B0;
  v7 = v3;
  memcpy(v8, (a1 + 40), sizeof(v8));
  v5 = v3;
  dispatch_async(v4, v6);
}

void ___ZN8GPUTools4Diag17SwizzleMTLTracker46MTL4GPUDebugCommandQueue__commit_count_optionsEP11objc_objectP13objc_selectorPKPU28objcproto17MTL4CommandBuffer11objc_objectmP17MTL4CommitOptions_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = GPUTools::Diag::SwizzleMTLTracker::FromCallstack(a1 + 40);
  v5 = v4;
  v6 = v2;
  if (objc_opt_respondsToSelector())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [v6 logs];
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if ([v11 conformsToProtocol:&OBJC_PROTOCOL___MTLFunctionLog])
          {
            v12 = v3;
            GPUTools::Diag::SwizzleMTLTracker::ProcessBufferErrorLog(v11, v3, v5);
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  [v6 error];
}

void ___ZN8GPUTools4Diag17SwizzleMTLTrackerC2EPFbPKcP11objc_objectE_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) dispatchMessage:v4 replyConnection:WeakRetained];
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,std::vector<unsigned long>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<unsigned long>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<unsigned long>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<unsigned long>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

__CFString *GPUTools::Diag::SwizzleMTLTracker::SwizzleSelectorsAuto(GPUTools::Diag::SwizzleMTLTracker *this)
{
  v2 = NSClassFromString(@"MTLGPUDebugDevice");
  InstanceMethod = class_getInstanceMethod(v2, "newDefaultLibrary");
  if (InstanceMethod && (v4 = method_setImplementation(InstanceMethod, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newDefaultLibrary), (*(this + 44) = v4) != 0))
  {
    v5 = &stru_146E0;
  }

  else
  {
    v5 = [&stru_146E0 stringByAppendingString:@"MTLGPUDebugDevice-@selector(newDefaultLibrary)\n"];
  }

  v6 = NSClassFromString(@"MTLGPUDebugDevice");
  v7 = class_getInstanceMethod(v6, "newDefaultLibraryWithBundle:error:");
  if (!v7 || (v8 = method_setImplementation(v7, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newDefaultLibraryWithBundle_error), (*(this + 46) = v8) == 0))
  {
    v9 = [(__CFString *)v5 stringByAppendingString:@"MTLGPUDebugDevice-@selector(newDefaultLibraryWithBundle:error:)\n"];

    v5 = v9;
  }

  v10 = NSClassFromString(@"MTLGPUDebugDevice");
  v11 = class_getInstanceMethod(v10, "newLibraryWithDAG:functions:error:");
  if (!v11 || (v12 = method_setImplementation(v11, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithDAG_functions_error), (*(this + 48) = v12) == 0))
  {
    v13 = [(__CFString *)v5 stringByAppendingString:@"MTLGPUDebugDevice-@selector(newLibraryWithDAG:functions:error:)\n"];

    v5 = v13;
  }

  v14 = NSClassFromString(@"MTLGPUDebugDevice");
  v15 = class_getInstanceMethod(v14, "newLibraryWithData:error:");
  if (!v15 || (v16 = method_setImplementation(v15, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithData_error), (*(this + 50) = v16) == 0))
  {
    v17 = [(__CFString *)v5 stringByAppendingString:@"MTLGPUDebugDevice-@selector(newLibraryWithData:error:)\n"];

    v5 = v17;
  }

  v18 = NSClassFromString(@"MTLGPUDebugDevice");
  v19 = class_getInstanceMethod(v18, "newLibraryWithDescriptor:completionHandler:");
  if (!v19 || (v20 = method_setImplementation(v19, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithDescriptor_completionHandler), (*(this + 52) = v20) == 0))
  {
    v21 = [(__CFString *)v5 stringByAppendingString:@"MTLGPUDebugDevice-@selector(newLibraryWithDescriptor:completionHandler:)\n"];

    v5 = v21;
  }

  v22 = NSClassFromString(@"MTLGPUDebugDevice");
  v23 = class_getInstanceMethod(v22, "newLibraryWithDescriptor:error:");
  if (!v23 || (v24 = method_setImplementation(v23, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithDescriptor_error), (*(this + 54) = v24) == 0))
  {
    v25 = [(__CFString *)v5 stringByAppendingString:@"MTLGPUDebugDevice-@selector(newLibraryWithDescriptor:error:)\n"];

    v5 = v25;
  }

  v26 = NSClassFromString(@"MTLGPUDebugDevice");
  v269 = "newLibraryWithDescriptorSPI:error:";
  v27 = class_getInstanceMethod(v26, "newLibraryWithDescriptorSPI:error:");
  if (!v27 || (v28 = method_setImplementation(v27, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithDescriptorSPI_error), (*(this + 56) = v28) == 0))
  {
    v29 = [(__CFString *)v5 stringByAppendingString:@"MTLGPUDebugDevice-@selector(newLibraryWithDescriptorSPI:error:)\n"];

    v5 = v29;
  }

  v30 = NSClassFromString(@"MTLGPUDebugDevice");
  v31 = class_getInstanceMethod(v30, "newLibraryWithFile:error:");
  if (!v31 || (v32 = method_setImplementation(v31, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithFile_error), (*(this + 58) = v32) == 0))
  {
    v33 = [(__CFString *)v5 stringByAppendingString:@"MTLGPUDebugDevice-@selector(newLibraryWithFile:error:)\n"];

    v5 = v33;
  }

  v34 = NSClassFromString(@"MTLGPUDebugDevice");
  v268 = "newLibraryWithSource:options:completionHandler:";
  v35 = class_getInstanceMethod(v34, "newLibraryWithSource:options:completionHandler:");
  if (!v35 || (v36 = method_setImplementation(v35, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithSource_options_completionHandler), (*(this + 60) = v36) == 0))
  {
    v37 = [(__CFString *)v5 stringByAppendingString:@"MTLGPUDebugDevice-@selector(newLibraryWithSource:options:completionHandler:)\n"];

    v5 = v37;
  }

  v38 = NSClassFromString(@"MTLGPUDebugDevice");
  v267 = "newLibraryWithSource:options:error:";
  v39 = class_getInstanceMethod(v38, "newLibraryWithSource:options:error:");
  if (!v39 || (v40 = method_setImplementation(v39, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithSource_options_error), (*(this + 62) = v40) == 0))
  {
    v41 = [(__CFString *)v5 stringByAppendingString:@"MTLGPUDebugDevice-@selector(newLibraryWithSource:options:error:)\n"];

    v5 = v41;
  }

  v42 = NSClassFromString(@"MTLGPUDebugDevice");
  name = "newLibraryWithStitchedDescriptor:completionHandler:";
  v43 = class_getInstanceMethod(v42, "newLibraryWithStitchedDescriptor:completionHandler:");
  if (!v43 || (v44 = method_setImplementation(v43, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithStitchedDescriptor_completionHandler), (*(this + 64) = v44) == 0))
  {
    v45 = [(__CFString *)v5 stringByAppendingString:@"MTLGPUDebugDevice-@selector(newLibraryWithStitchedDescriptor:completionHandler:)\n"];

    v5 = v45;
  }

  v46 = NSClassFromString(@"MTLGPUDebugDevice");
  v265 = "newLibraryWithStitchedDescriptor:error:";
  v47 = class_getInstanceMethod(v46, "newLibraryWithStitchedDescriptor:error:");
  if (!v47 || (v48 = method_setImplementation(v47, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithStitchedDescriptor_error), (*(this + 66) = v48) == 0))
  {
    v49 = [(__CFString *)v5 stringByAppendingString:@"MTLGPUDebugDevice-@selector(newLibraryWithStitchedDescriptor:error:)\n"];

    v5 = v49;
  }

  v50 = NSClassFromString(@"MTLGPUDebugDevice");
  v264 = "newLibraryWithStitchedDescriptorSPI:error:";
  v51 = class_getInstanceMethod(v50, "newLibraryWithStitchedDescriptorSPI:error:");
  if (!v51 || (v52 = method_setImplementation(v51, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithStitchedDescriptorSPI_error), (*(this + 68) = v52) == 0))
  {
    v53 = [(__CFString *)v5 stringByAppendingString:@"MTLGPUDebugDevice-@selector(newLibraryWithStitchedDescriptorSPI:error:)\n"];

    v5 = v53;
  }

  v54 = NSClassFromString(@"MTLGPUDebugDevice");
  v263 = "newLibraryWithURL:error:";
  v55 = class_getInstanceMethod(v54, "newLibraryWithURL:error:");
  if (!v55 || (v56 = method_setImplementation(v55, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithURL_error), (*(this + 70) = v56) == 0))
  {
    v57 = [(__CFString *)v5 stringByAppendingString:@"MTLGPUDebugDevice-@selector(newLibraryWithURL:error:)\n"];

    v5 = v57;
  }

  v58 = NSClassFromString(@"MTL4GPUDebugCompiler");
  v59 = class_getInstanceMethod(v58, "newLibraryWithDescriptor:completionHandler:");
  if (!v59 || (v60 = method_setImplementation(v59, GPUTools::Diag::SwizzleMTLTracker::MTL4GPUDebugCompiler_newLibraryWithDescriptor_completionHandler), (*(this + 72) = v60) == 0))
  {
    v61 = [(__CFString *)v5 stringByAppendingString:@"MTL4GPUDebugCompiler-@selector(newLibraryWithDescriptor:completionHandler:)\n"];

    v5 = v61;
  }

  v62 = NSClassFromString(@"MTL4GPUDebugCompiler");
  v63 = class_getInstanceMethod(v62, "newLibraryWithDescriptor:error:");
  if (!v63 || (v64 = method_setImplementation(v63, GPUTools::Diag::SwizzleMTLTracker::MTL4GPUDebugCompiler_newLibraryWithDescriptor_error), (*(this + 73) = v64) == 0))
  {
    v65 = [(__CFString *)v5 stringByAppendingString:@"MTL4GPUDebugCompiler-@selector(newLibraryWithDescriptor:error:)\n"];

    v5 = v65;
  }

  v66 = NSClassFromString(@"MTLGPUDebugLibrary");
  v262 = "newExternFunctionWithName:";
  v67 = class_getInstanceMethod(v66, "newExternFunctionWithName:");
  if (!v67 || (v68 = method_setImplementation(v67, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newExternFunctionWithName), (*(this + 74) = v68) == 0))
  {
    v69 = [(__CFString *)v5 stringByAppendingString:@"MTLGPUDebugLibrary-@selector(newExternFunctionWithName:)\n"];

    v5 = v69;
  }

  v70 = NSClassFromString(@"MTLGPUDebugLibrary");
  v261 = "newFunctionWithDescriptor:completionHandler:";
  v71 = class_getInstanceMethod(v70, "newFunctionWithDescriptor:completionHandler:");
  if (!v71 || (v72 = method_setImplementation(v71, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newFunctionWithDescriptor_completionHandler), (*(this + 76) = v72) == 0))
  {
    v73 = [(__CFString *)v5 stringByAppendingString:@"MTLGPUDebugLibrary-@selector(newFunctionWithDescriptor:completionHandler:)\n"];

    v5 = v73;
  }

  v74 = NSClassFromString(@"MTLGPUDebugLibrary");
  v260 = "newFunctionWithDescriptor:destinationArchive:error:";
  v75 = class_getInstanceMethod(v74, "newFunctionWithDescriptor:destinationArchive:error:");
  if (!v75 || (v76 = method_setImplementation(v75, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newFunctionWithDescriptor_destinationArchive_error), (*(this + 78) = v76) == 0))
  {
    v77 = [(__CFString *)v5 stringByAppendingString:@"MTLGPUDebugLibrary-@selector(newFunctionWithDescriptor:destinationArchive:error:)\n"];

    v5 = v77;
  }

  v78 = NSClassFromString(@"MTLGPUDebugLibrary");
  v259 = "newFunctionWithDescriptor:error:";
  v79 = class_getInstanceMethod(v78, "newFunctionWithDescriptor:error:");
  if (!v79 || (v80 = method_setImplementation(v79, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newFunctionWithDescriptor_error), (*(this + 80) = v80) == 0))
  {
    v81 = [(__CFString *)v5 stringByAppendingString:@"MTLGPUDebugLibrary-@selector(newFunctionWithDescriptor:error:)\n"];

    v5 = v81;
  }

  v82 = NSClassFromString(@"MTLGPUDebugLibrary");
  v258 = "newFunctionWithName:";
  v83 = class_getInstanceMethod(v82, "newFunctionWithName:");
  if (!v83 || (v84 = method_setImplementation(v83, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newFunctionWithName), (*(this + 82) = v84) == 0))
  {
    v85 = [(__CFString *)v5 stringByAppendingString:@"MTLGPUDebugLibrary-@selector(newFunctionWithName:)\n"];

    v5 = v85;
  }

  v86 = NSClassFromString(@"MTLGPUDebugLibrary");
  v257 = "newFunctionWithName:constantValues:completionHandler:";
  v87 = class_getInstanceMethod(v86, "newFunctionWithName:constantValues:completionHandler:");
  if (!v87 || (v88 = method_setImplementation(v87, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newFunctionWithName_constantValues_completionHandler), (*(this + 84) = v88) == 0))
  {
    v89 = [(__CFString *)v5 stringByAppendingString:@"MTLGPUDebugLibrary-@selector(newFunctionWithName:constantValues:completionHandler:)\n"];

    v5 = v89;
  }

  v90 = NSClassFromString(@"MTLGPUDebugLibrary");
  v256 = "newFunctionWithName:constantValues:error:";
  v91 = class_getInstanceMethod(v90, "newFunctionWithName:constantValues:error:");
  if (!v91 || (v92 = method_setImplementation(v91, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newFunctionWithName_constantValues_error), (*(this + 86) = v92) == 0))
  {
    v93 = [(__CFString *)v5 stringByAppendingString:@"MTLGPUDebugLibrary-@selector(newFunctionWithName:constantValues:error:)\n"];

    v5 = v93;
  }

  v94 = NSClassFromString(@"MTLGPUDebugLibrary");
  v255 = "newFunctionWithName:constantValues:pipelineLibrary:completionHandler:";
  v95 = class_getInstanceMethod(v94, "newFunctionWithName:constantValues:pipelineLibrary:completionHandler:");
  if (!v95 || (v96 = method_setImplementation(v95, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newFunctionWithName_constantValues_pipelineLibrary_completionHandler), (*(this + 88) = v96) == 0))
  {
    v97 = [(__CFString *)v5 stringByAppendingString:@"MTLGPUDebugLibrary-@selector(newFunctionWithName:constantValues:pipelineLibrary:completionHandler:)\n"];

    v5 = v97;
  }

  v98 = NSClassFromString(@"MTLGPUDebugLibrary");
  v254 = "newFunctionWithName:constantValues:pipelineLibrary:error:";
  v99 = class_getInstanceMethod(v98, "newFunctionWithName:constantValues:pipelineLibrary:error:");
  if (!v99 || (v100 = method_setImplementation(v99, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newFunctionWithName_constantValues_pipelineLibrary_error), (*(this + 90) = v100) == 0))
  {
    v101 = [(__CFString *)v5 stringByAppendingString:@"MTLGPUDebugLibrary-@selector(newFunctionWithName:constantValues:pipelineLibrary:error:)\n"];

    v5 = v101;
  }

  v102 = NSClassFromString(@"MTLGPUDebugLibrary");
  v253 = "newIntersectionFunctionWithDescriptor:completionHandler:";
  v103 = class_getInstanceMethod(v102, "newIntersectionFunctionWithDescriptor:completionHandler:");
  if (!v103 || (v104 = method_setImplementation(v103, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newIntersectionFunctionWithDescriptor_completionHandler), (*(this + 92) = v104) == 0))
  {
    v105 = [(__CFString *)v5 stringByAppendingString:@"MTLGPUDebugLibrary-@selector(newIntersectionFunctionWithDescriptor:completionHandler:)\n"];

    v5 = v105;
  }

  v106 = NSClassFromString(@"MTLGPUDebugLibrary");
  v252 = "newIntersectionFunctionWithDescriptor:error:";
  v107 = class_getInstanceMethod(v106, "newIntersectionFunctionWithDescriptor:error:");
  if (!v107 || (v108 = method_setImplementation(v107, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newIntersectionFunctionWithDescriptor_error), (*(this + 94) = v108) == 0))
  {
    v109 = [(__CFString *)v5 stringByAppendingString:@"MTLGPUDebugLibrary-@selector(newIntersectionFunctionWithDescriptor:error:)\n", "newIntersectionFunctionWithDescriptor:error:", "newIntersectionFunctionWithDescriptor:completionHandler:", "newFunctionWithName:constantValues:pipelineLibrary:error:", "newFunctionWithName:constantValues:pipelineLibrary:completionHandler:", "newFunctionWithName:constantValues:error:", "newFunctionWithName:constantValues:completionHandler:", "newFunctionWithName:", "newFunctionWithDescriptor:error:", "newFunctionWithDescriptor:destinationArchive:error:", "newFunctionWithDescriptor:completionHandler:", "newExternFunctionWithName:", "newLibraryWithURL:error:", "newLibraryWithStitchedDescriptorSPI:error:", "newLibraryWithStitchedDescriptor:error:", "newLibraryWithStitchedDescriptor:completionHandler:", "newLibraryWithSource:options:error:", "newLibraryWithSource:options:completionHandler:", "newLibraryWithDescriptorSPI:error:"];

    v5 = v109;
  }

  v110 = NSClassFromString(@"MTL4GPUDebugCompiler");
  v111 = class_getInstanceMethod(v110, "newComputePipelineStateWithDescriptor:compilerTaskOptions:completionHandler:");
  if (!v111 || (v112 = method_setImplementation(v111, GPUTools::Diag::SwizzleMTLTracker::MTL4GPUDebugCompiler_newComputePipelineStateWithDescriptor_compilerTaskOptions_completionHandler), (*(this + 96) = v112) == 0))
  {
    v113 = [(__CFString *)v5 stringByAppendingString:@"MTL4GPUDebugCompiler-@selector(newComputePipelineStateWithDescriptor:compilerTaskOptions:completionHandler:)\n", v252];

    v5 = v113;
  }

  v114 = NSClassFromString(@"MTL4GPUDebugCompiler");
  v115 = class_getInstanceMethod(v114, "newComputePipelineStateWithDescriptor:compilerTaskOptions:error:");
  if (!v115 || (v116 = method_setImplementation(v115, GPUTools::Diag::SwizzleMTLTracker::MTL4GPUDebugCompiler_newComputePipelineStateWithDescriptor_compilerTaskOptions_error), (*(this + 97) = v116) == 0))
  {
    v117 = [(__CFString *)v5 stringByAppendingString:@"MTL4GPUDebugCompiler-@selector(newComputePipelineStateWithDescriptor:compilerTaskOptions:error:)\n", v252];

    v5 = v117;
  }

  v118 = NSClassFromString(@"MTL4GPUDebugCompiler");
  v119 = class_getInstanceMethod(v118, "newComputePipelineStateWithDescriptor:dynamicLinkingDescriptor:compilerTaskOptions:completionHandler:");
  if (!v119 || (v120 = method_setImplementation(v119, GPUTools::Diag::SwizzleMTLTracker::MTL4GPUDebugCompiler_newComputePipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler), (*(this + 98) = v120) == 0))
  {
    v121 = [(__CFString *)v5 stringByAppendingString:@"MTL4GPUDebugCompiler-@selector(newComputePipelineStateWithDescriptor:dynamicLinkingDescriptor:compilerTaskOptions:completionHandler:)\n", v252];

    v5 = v121;
  }

  v122 = NSClassFromString(@"MTL4GPUDebugCompiler");
  v123 = class_getInstanceMethod(v122, "newComputePipelineStateWithDescriptor:dynamicLinkingDescriptor:compilerTaskOptions:error:");
  if (!v123 || (v124 = method_setImplementation(v123, GPUTools::Diag::SwizzleMTLTracker::MTL4GPUDebugCompiler_newComputePipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_error), (*(this + 99) = v124) == 0))
  {
    v125 = [(__CFString *)v5 stringByAppendingString:@"MTL4GPUDebugCompiler-@selector(newComputePipelineStateWithDescriptor:dynamicLinkingDescriptor:compilerTaskOptions:error:)\n", v252];

    v5 = v125;
  }

  v126 = NSClassFromString(@"MTL4GPUDebugCompiler");
  v127 = class_getInstanceMethod(v126, "newRenderPipelineStateBySpecializationWithDescriptor:pipeline:completionHandler:");
  if (!v127 || (v128 = method_setImplementation(v127, GPUTools::Diag::SwizzleMTLTracker::MTL4GPUDebugCompiler_newRenderPipelineStateBySpecializationWithDescriptor_pipeline_completionHandler), (*(this + 100) = v128) == 0))
  {
    v129 = [(__CFString *)v5 stringByAppendingString:@"MTL4GPUDebugCompiler-@selector(newRenderPipelineStateBySpecializationWithDescriptor:pipeline:completionHandler:)\n", v252];

    v5 = v129;
  }

  v130 = NSClassFromString(@"MTL4GPUDebugCompiler");
  v131 = class_getInstanceMethod(v130, "newRenderPipelineStateBySpecializationWithDescriptor:pipeline:error:");
  if (!v131 || (v132 = method_setImplementation(v131, GPUTools::Diag::SwizzleMTLTracker::MTL4GPUDebugCompiler_newRenderPipelineStateBySpecializationWithDescriptor_pipeline_error), (*(this + 101) = v132) == 0))
  {
    v133 = [(__CFString *)v5 stringByAppendingString:@"MTL4GPUDebugCompiler-@selector(newRenderPipelineStateBySpecializationWithDescriptor:pipeline:error:)\n", v252];

    v5 = v133;
  }

  v134 = NSClassFromString(@"MTL4GPUDebugCompiler");
  v135 = class_getInstanceMethod(v134, "newRenderPipelineStateWithDescriptor:compilerTaskOptions:completionHandler:");
  if (!v135 || (v136 = method_setImplementation(v135, GPUTools::Diag::SwizzleMTLTracker::MTL4GPUDebugCompiler_newRenderPipelineStateWithDescriptor_compilerTaskOptions_completionHandler), (*(this + 102) = v136) == 0))
  {
    v137 = [(__CFString *)v5 stringByAppendingString:@"MTL4GPUDebugCompiler-@selector(newRenderPipelineStateWithDescriptor:compilerTaskOptions:completionHandler:)\n", v252];

    v5 = v137;
  }

  v138 = NSClassFromString(@"MTL4GPUDebugCompiler");
  v139 = class_getInstanceMethod(v138, "newRenderPipelineStateWithDescriptor:compilerTaskOptions:error:");
  if (!v139 || (v140 = method_setImplementation(v139, GPUTools::Diag::SwizzleMTLTracker::MTL4GPUDebugCompiler_newRenderPipelineStateWithDescriptor_compilerTaskOptions_error), (*(this + 103) = v140) == 0))
  {
    v141 = [(__CFString *)v5 stringByAppendingString:@"MTL4GPUDebugCompiler-@selector(newRenderPipelineStateWithDescriptor:compilerTaskOptions:error:)\n", v252];

    v5 = v141;
  }

  v142 = NSClassFromString(@"MTL4GPUDebugCompiler");
  v143 = class_getInstanceMethod(v142, "newRenderPipelineStateWithDescriptor:dynamicLinkingDescriptor:compilerTaskOptions:completionHandler:");
  if (!v143 || (v144 = method_setImplementation(v143, GPUTools::Diag::SwizzleMTLTracker::MTL4GPUDebugCompiler_newRenderPipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler), (*(this + 104) = v144) == 0))
  {
    v145 = [(__CFString *)v5 stringByAppendingString:@"MTL4GPUDebugCompiler-@selector(newRenderPipelineStateWithDescriptor:dynamicLinkingDescriptor:compilerTaskOptions:completionHandler:)\n", v252];

    v5 = v145;
  }

  v146 = NSClassFromString(@"MTL4GPUDebugCompiler");
  v147 = class_getInstanceMethod(v146, "newRenderPipelineStateWithDescriptor:dynamicLinkingDescriptor:compilerTaskOptions:error:");
  if (!v147 || (v148 = method_setImplementation(v147, GPUTools::Diag::SwizzleMTLTracker::MTL4GPUDebugCompiler_newRenderPipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_error), (*(this + 105) = v148) == 0))
  {
    v149 = [(__CFString *)v5 stringByAppendingString:@"MTL4GPUDebugCompiler-@selector(newRenderPipelineStateWithDescriptor:dynamicLinkingDescriptor:compilerTaskOptions:error:)\n", v252];

    v5 = v149;
  }

  if (NSClassFromString(@"MTLLegacySVDevice"))
  {
    v150 = NSClassFromString(@"MTLLegacySVDevice");
    v151 = class_getInstanceMethod(v150, "newDefaultLibrary");
    if (v151 && (v152 = method_setImplementation(v151, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newDefaultLibrary), (*(this + 45) = v152) != 0))
    {
      if (v152 == GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newDefaultLibrary)
      {
        *(this + 45) = *(this + 44);
      }
    }

    else
    {
      v153 = [(__CFString *)v5 stringByAppendingString:@"MTLLegacySVDevice-@selector(newDefaultLibrary)\n"];

      v5 = v153;
    }

    v154 = NSClassFromString(@"MTLLegacySVDevice");
    v155 = class_getInstanceMethod(v154, "newDefaultLibraryWithBundle:error:");
    if (v155 && (v156 = method_setImplementation(v155, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newDefaultLibraryWithBundle_error), (*(this + 47) = v156) != 0))
    {
      if (v156 == GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newDefaultLibraryWithBundle_error)
      {
        *(this + 47) = *(this + 46);
      }
    }

    else
    {
      v157 = [(__CFString *)v5 stringByAppendingString:@"MTLLegacySVDevice-@selector(newDefaultLibraryWithBundle:error:)\n"];

      v5 = v157;
    }

    v158 = NSClassFromString(@"MTLLegacySVDevice");
    v159 = class_getInstanceMethod(v158, "newLibraryWithDAG:functions:error:");
    if (v159 && (v160 = method_setImplementation(v159, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithDAG_functions_error), (*(this + 49) = v160) != 0))
    {
      if (v160 == GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithDAG_functions_error)
      {
        *(this + 49) = *(this + 48);
      }
    }

    else
    {
      v161 = [(__CFString *)v5 stringByAppendingString:@"MTLLegacySVDevice-@selector(newLibraryWithDAG:functions:error:)\n"];

      v5 = v161;
    }

    v162 = NSClassFromString(@"MTLLegacySVDevice");
    v163 = class_getInstanceMethod(v162, "newLibraryWithData:error:");
    if (v163 && (v164 = method_setImplementation(v163, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithData_error), (*(this + 51) = v164) != 0))
    {
      if (v164 == GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithData_error)
      {
        *(this + 51) = *(this + 50);
      }
    }

    else
    {
      v165 = [(__CFString *)v5 stringByAppendingString:@"MTLLegacySVDevice-@selector(newLibraryWithData:error:)\n"];

      v5 = v165;
    }

    v166 = NSClassFromString(@"MTLLegacySVDevice");
    v167 = class_getInstanceMethod(v166, "newLibraryWithDescriptor:completionHandler:");
    if (v167 && (v168 = method_setImplementation(v167, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithDescriptor_completionHandler), (*(this + 53) = v168) != 0))
    {
      if (v168 == GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithDescriptor_completionHandler)
      {
        *(this + 53) = *(this + 52);
      }
    }

    else
    {
      v169 = [(__CFString *)v5 stringByAppendingString:@"MTLLegacySVDevice-@selector(newLibraryWithDescriptor:completionHandler:)\n"];

      v5 = v169;
    }

    v170 = NSClassFromString(@"MTLLegacySVDevice");
    v171 = class_getInstanceMethod(v170, "newLibraryWithDescriptor:error:");
    if (v171 && (v172 = method_setImplementation(v171, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithDescriptor_error), (*(this + 55) = v172) != 0))
    {
      if (v172 == GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithDescriptor_error)
      {
        *(this + 55) = *(this + 54);
      }
    }

    else
    {
      v173 = [(__CFString *)v5 stringByAppendingString:@"MTLLegacySVDevice-@selector(newLibraryWithDescriptor:error:)\n"];

      v5 = v173;
    }

    v174 = NSClassFromString(@"MTLLegacySVDevice");
    v175 = class_getInstanceMethod(v174, v269);
    if (v175 && (v176 = method_setImplementation(v175, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithDescriptorSPI_error), (*(this + 57) = v176) != 0))
    {
      if (v176 == GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithDescriptorSPI_error)
      {
        *(this + 57) = *(this + 56);
      }
    }

    else
    {
      v177 = [(__CFString *)v5 stringByAppendingString:@"MTLLegacySVDevice-@selector(newLibraryWithDescriptorSPI:error:)\n"];

      v5 = v177;
    }

    v178 = NSClassFromString(@"MTLLegacySVDevice");
    v179 = class_getInstanceMethod(v178, "newLibraryWithFile:error:");
    if (v179 && (v180 = method_setImplementation(v179, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithFile_error), (*(this + 59) = v180) != 0))
    {
      if (v180 == GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithFile_error)
      {
        *(this + 59) = *(this + 58);
      }
    }

    else
    {
      v181 = [(__CFString *)v5 stringByAppendingString:@"MTLLegacySVDevice-@selector(newLibraryWithFile:error:)\n"];

      v5 = v181;
    }

    v182 = NSClassFromString(@"MTLLegacySVDevice");
    v183 = class_getInstanceMethod(v182, v268);
    if (v183 && (v184 = method_setImplementation(v183, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithSource_options_completionHandler), (*(this + 61) = v184) != 0))
    {
      if (v184 == GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithSource_options_completionHandler)
      {
        *(this + 61) = *(this + 60);
      }
    }

    else
    {
      v185 = [(__CFString *)v5 stringByAppendingString:@"MTLLegacySVDevice-@selector(newLibraryWithSource:options:completionHandler:)\n"];

      v5 = v185;
    }

    v186 = NSClassFromString(@"MTLLegacySVDevice");
    v187 = class_getInstanceMethod(v186, v267);
    if (v187 && (v188 = method_setImplementation(v187, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithSource_options_error), (*(this + 63) = v188) != 0))
    {
      if (v188 == GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithSource_options_error)
      {
        *(this + 63) = *(this + 62);
      }
    }

    else
    {
      v189 = [(__CFString *)v5 stringByAppendingString:@"MTLLegacySVDevice-@selector(newLibraryWithSource:options:error:)\n"];

      v5 = v189;
    }

    v190 = NSClassFromString(@"MTLLegacySVDevice");
    v191 = class_getInstanceMethod(v190, name);
    if (v191 && (v192 = method_setImplementation(v191, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithStitchedDescriptor_completionHandler), (*(this + 65) = v192) != 0))
    {
      if (v192 == GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithStitchedDescriptor_completionHandler)
      {
        *(this + 65) = *(this + 64);
      }
    }

    else
    {
      v193 = [(__CFString *)v5 stringByAppendingString:@"MTLLegacySVDevice-@selector(newLibraryWithStitchedDescriptor:completionHandler:)\n"];

      v5 = v193;
    }

    v194 = NSClassFromString(@"MTLLegacySVDevice");
    v195 = class_getInstanceMethod(v194, v265);
    if (v195 && (v196 = method_setImplementation(v195, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithStitchedDescriptor_error), (*(this + 67) = v196) != 0))
    {
      if (v196 == GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithStitchedDescriptor_error)
      {
        *(this + 67) = *(this + 66);
      }
    }

    else
    {
      v197 = [(__CFString *)v5 stringByAppendingString:@"MTLLegacySVDevice-@selector(newLibraryWithStitchedDescriptor:error:)\n"];

      v5 = v197;
    }

    v198 = NSClassFromString(@"MTLLegacySVDevice");
    v199 = class_getInstanceMethod(v198, v264);
    if (v199 && (v200 = method_setImplementation(v199, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithStitchedDescriptorSPI_error), (*(this + 69) = v200) != 0))
    {
      if (v200 == GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithStitchedDescriptorSPI_error)
      {
        *(this + 69) = *(this + 68);
      }
    }

    else
    {
      v201 = [(__CFString *)v5 stringByAppendingString:@"MTLLegacySVDevice-@selector(newLibraryWithStitchedDescriptorSPI:error:)\n"];

      v5 = v201;
    }

    v202 = NSClassFromString(@"MTLLegacySVDevice");
    v203 = class_getInstanceMethod(v202, v263);
    if (v203 && (v204 = method_setImplementation(v203, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithURL_error), (*(this + 71) = v204) != 0))
    {
      if (v204 == GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithURL_error)
      {
        *(this + 71) = *(this + 70);
      }
    }

    else
    {
      v205 = [(__CFString *)v5 stringByAppendingString:@"MTLLegacySVDevice-@selector(newLibraryWithURL:error:)\n"];

      v5 = v205;
    }
  }

  if (NSClassFromString(@"MTLLegacySVLibrary"))
  {
    v206 = NSClassFromString(@"MTLLegacySVLibrary");
    v207 = class_getInstanceMethod(v206, v262);
    if (v207 && (v208 = method_setImplementation(v207, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newExternFunctionWithName), (*(this + 75) = v208) != 0))
    {
      if (v208 == GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newExternFunctionWithName)
      {
        *(this + 75) = *(this + 74);
      }
    }

    else
    {
      v209 = [(__CFString *)v5 stringByAppendingString:@"MTLLegacySVLibrary-@selector(newExternFunctionWithName:)\n"];

      v5 = v209;
    }

    v210 = NSClassFromString(@"MTLLegacySVLibrary");
    v211 = class_getInstanceMethod(v210, v261);
    if (v211 && (v212 = method_setImplementation(v211, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newFunctionWithDescriptor_completionHandler), (*(this + 77) = v212) != 0))
    {
      if (v212 == GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newFunctionWithDescriptor_completionHandler)
      {
        *(this + 77) = *(this + 76);
      }
    }

    else
    {
      v213 = [(__CFString *)v5 stringByAppendingString:@"MTLLegacySVLibrary-@selector(newFunctionWithDescriptor:completionHandler:)\n"];

      v5 = v213;
    }

    v214 = NSClassFromString(@"MTLLegacySVLibrary");
    v215 = class_getInstanceMethod(v214, v260);
    if (v215 && (v216 = method_setImplementation(v215, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newFunctionWithDescriptor_destinationArchive_error), (*(this + 79) = v216) != 0))
    {
      if (v216 == GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newFunctionWithDescriptor_destinationArchive_error)
      {
        *(this + 79) = *(this + 78);
      }
    }

    else
    {
      v217 = [(__CFString *)v5 stringByAppendingString:@"MTLLegacySVLibrary-@selector(newFunctionWithDescriptor:destinationArchive:error:)\n"];

      v5 = v217;
    }

    v218 = NSClassFromString(@"MTLLegacySVLibrary");
    v219 = class_getInstanceMethod(v218, v259);
    if (v219 && (v220 = method_setImplementation(v219, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newFunctionWithDescriptor_error), (*(this + 81) = v220) != 0))
    {
      if (v220 == GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newFunctionWithDescriptor_error)
      {
        *(this + 81) = *(this + 80);
      }
    }

    else
    {
      v221 = [(__CFString *)v5 stringByAppendingString:@"MTLLegacySVLibrary-@selector(newFunctionWithDescriptor:error:)\n"];

      v5 = v221;
    }

    v222 = NSClassFromString(@"MTLLegacySVLibrary");
    v223 = class_getInstanceMethod(v222, v258);
    if (v223 && (v224 = method_setImplementation(v223, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newFunctionWithName), (*(this + 83) = v224) != 0))
    {
      if (v224 == GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newFunctionWithName)
      {
        *(this + 83) = *(this + 82);
      }
    }

    else
    {
      v225 = [(__CFString *)v5 stringByAppendingString:@"MTLLegacySVLibrary-@selector(newFunctionWithName:)\n"];

      v5 = v225;
    }

    v226 = NSClassFromString(@"MTLLegacySVLibrary");
    v227 = class_getInstanceMethod(v226, v257);
    if (v227 && (v228 = method_setImplementation(v227, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newFunctionWithName_constantValues_completionHandler), (*(this + 85) = v228) != 0))
    {
      if (v228 == GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newFunctionWithName_constantValues_completionHandler)
      {
        *(this + 85) = *(this + 84);
      }
    }

    else
    {
      v229 = [(__CFString *)v5 stringByAppendingString:@"MTLLegacySVLibrary-@selector(newFunctionWithName:constantValues:completionHandler:)\n"];

      v5 = v229;
    }

    v230 = NSClassFromString(@"MTLLegacySVLibrary");
    v231 = class_getInstanceMethod(v230, v256);
    if (v231 && (v232 = method_setImplementation(v231, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newFunctionWithName_constantValues_error), (*(this + 87) = v232) != 0))
    {
      if (v232 == GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newFunctionWithName_constantValues_error)
      {
        *(this + 87) = *(this + 86);
      }
    }

    else
    {
      v233 = [(__CFString *)v5 stringByAppendingString:@"MTLLegacySVLibrary-@selector(newFunctionWithName:constantValues:error:)\n"];

      v5 = v233;
    }

    v234 = NSClassFromString(@"MTLLegacySVLibrary");
    v235 = class_getInstanceMethod(v234, v255);
    if (v235 && (v236 = method_setImplementation(v235, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newFunctionWithName_constantValues_pipelineLibrary_completionHandler), (*(this + 89) = v236) != 0))
    {
      if (v236 == GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newFunctionWithName_constantValues_pipelineLibrary_completionHandler)
      {
        *(this + 89) = *(this + 88);
      }
    }

    else
    {
      v237 = [(__CFString *)v5 stringByAppendingString:@"MTLLegacySVLibrary-@selector(newFunctionWithName:constantValues:pipelineLibrary:completionHandler:)\n"];

      v5 = v237;
    }

    v238 = NSClassFromString(@"MTLLegacySVLibrary");
    v239 = class_getInstanceMethod(v238, v254);
    if (v239 && (v240 = method_setImplementation(v239, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newFunctionWithName_constantValues_pipelineLibrary_error), (*(this + 91) = v240) != 0))
    {
      if (v240 == GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newFunctionWithName_constantValues_pipelineLibrary_error)
      {
        *(this + 91) = *(this + 90);
      }
    }

    else
    {
      v241 = [(__CFString *)v5 stringByAppendingString:@"MTLLegacySVLibrary-@selector(newFunctionWithName:constantValues:pipelineLibrary:error:)\n"];

      v5 = v241;
    }

    v242 = NSClassFromString(@"MTLLegacySVLibrary");
    v243 = class_getInstanceMethod(v242, v253);
    if (v243 && (v244 = method_setImplementation(v243, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newIntersectionFunctionWithDescriptor_completionHandler), (*(this + 93) = v244) != 0))
    {
      if (v244 == GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newIntersectionFunctionWithDescriptor_completionHandler)
      {
        *(this + 93) = *(this + 92);
      }
    }

    else
    {
      v245 = [(__CFString *)v5 stringByAppendingString:@"MTLLegacySVLibrary-@selector(newIntersectionFunctionWithDescriptor:completionHandler:)\n"];

      v5 = v245;
    }

    v246 = NSClassFromString(@"MTLLegacySVLibrary");
    v247 = class_getInstanceMethod(v246, v252);
    if (v247 && (v248 = method_setImplementation(v247, GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newIntersectionFunctionWithDescriptor_error), (*(this + 95) = v248) != 0))
    {
      if (v248 == GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newIntersectionFunctionWithDescriptor_error)
      {
        *(this + 95) = *(this + 94);
      }
    }

    else
    {
      v249 = [(__CFString *)v5 stringByAppendingString:@"MTLLegacySVLibrary-@selector(newIntersectionFunctionWithDescriptor:error:)\n"];

      v5 = v249;
    }
  }

  v250 = v5;

  return v5;
}

objc_object *GPUTools::Diag::SwizzleMTLTracker::MTL4GPUDebugCompiler_newRenderPipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_error(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v15 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (v15 && (v15("MTL4GPUDebugCompiler_newRenderPipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_error", 0) & 1) == 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = (*(v14 + 840))(a1, a2, v11, v12, v13, a6);
    if (v16)
    {
      v17 = GPUTools::Diag::GetLibrariesFromDescriptor(v11);
      v18 = DeviceObject(v16);
      objc_setAssociatedObject(v18, &GPUTools::Diag::AssociatedObjectKey, v17, &stru_2E8.segname[9]);

      v19 = v16;
    }
  }

  return v16;
}

void sub_53E4(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

id GPUTools::Diag::GetLibrariesFromDescriptor(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = GPUTools::Diag::GetLibrariesFromDescriptor(v1);
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v1;
    v2 = [&__NSDictionary0__struct mutableCopy];
    v4 = [v3 vertexFunctionDescriptor];
    v5 = GPUTools::Diag::GetLibrariesFromFunctionDescriptor(v4, 1, 0);
    [v2 addEntriesFromDictionary:v5];

    v6 = [v3 fragmentFunctionDescriptor];
    v7 = GPUTools::Diag::GetLibrariesFromFunctionDescriptor(v6, 2, 0);
    [v2 addEntriesFromDictionary:v7];
LABEL_7:

LABEL_8:
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v1;
    v2 = [&__NSDictionary0__struct mutableCopy];
    v8 = [v3 meshFunctionDescriptor];
    v9 = GPUTools::Diag::GetLibrariesFromFunctionDescriptor(v8, 7, 0);
    [v2 addEntriesFromDictionary:v9];

    v10 = [v3 objectFunctionDescriptor];
    v11 = GPUTools::Diag::GetLibrariesFromFunctionDescriptor(v10, 8, 0);
    [v2 addEntriesFromDictionary:v11];

    v6 = [v3 fragmentFunctionDescriptor];
    v7 = GPUTools::Diag::GetLibrariesFromFunctionDescriptor(v6, 2, 0);
    [v2 addEntriesFromDictionary:v7];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v1 tileFunctionDescriptor];
    v2 = GPUTools::Diag::GetLibrariesFromFunctionDescriptor(v3, 3, 0);
    goto LABEL_8;
  }

  v2 = &__NSDictionary0__struct;
LABEL_9:

  return v2;
}

{
  v1 = [a1 computeFunctionDescriptor];
  v2 = GPUTools::Diag::GetLibrariesFromFunctionDescriptor(v1, 3, 0);

  return v2;
}

id GPUTools::Diag::GetLibrariesFromFunctionDescriptor(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [&__NSDictionary0__struct mutableCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v5;
    v9 = [v8 library];
    v11 = GPUTools::Diag::GetLibrary(v9, v10);
    v12 = v6;
    if (!v6)
    {
      v12 = [v8 name];
    }

    v13 = [NSString stringWithFormat:@"%@|%d", v12, a2];
    [v7 setObject:v11 forKey:v13];

    if (v6)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v5;
    v9 = [v8 functionDescriptor];
    v11 = [v8 specializedName];
    v12 = GPUTools::Diag::GetLibrariesFromFunctionDescriptor(v9, a2, v11);
    [v7 addEntriesFromDictionary:v12];
LABEL_8:

LABEL_9:
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v15 = [v5 functionDescriptors];
    v16 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v16)
    {
      v17 = *v21;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = GPUTools::Diag::GetLibrariesFromFunctionDescriptor(*(*(&v20 + 1) + 8 * i), a2, 0);
          [v7 addEntriesFromDictionary:v19];
        }

        v16 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v16);
    }
  }

LABEL_10:

  return v7;
}

id GPUTools::Diag::SwizzleMTLTracker::MTL4GPUDebugCompiler_newRenderPipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v16 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (v16 && (v16("MTL4GPUDebugCompiler_newRenderPipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler", 0) & 1) == 0)
  {
    v18 = 0;
  }

  else
  {
    v17 = *(v15 + 832);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = ___ZN8GPUTools4Diag17SwizzleMTLTracker120MTL4GPUDebugCompiler_newRenderPipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandlerEP11objc_objectP13objc_selectorP22MTL4PipelineDescriptorP42MTL4RenderPipelineDynamicLinkingDescriptorP23MTL4CompilerTaskOptionsU13block_pointerFvPU33objcproto22MTLRenderPipelineState11objc_objectP7NSErrorE_block_invoke;
    v20[3] = &unk_14580;
    v21 = v11;
    v22 = v14;
    v18 = v17(a1, a2, v21, v12, v13, v20);
  }

  return v18;
}

void ___ZN8GPUTools4Diag17SwizzleMTLTracker120MTL4GPUDebugCompiler_newRenderPipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandlerEP11objc_objectP13objc_selectorP22MTL4PipelineDescriptorP42MTL4RenderPipelineDynamicLinkingDescriptorP23MTL4CompilerTaskOptionsU13block_pointerFvPU33objcproto22MTLRenderPipelineState11objc_objectP7NSErrorE_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v8)
  {
    v6 = GPUTools::Diag::GetLibrariesFromDescriptor(*(a1 + 32));
    v7 = DeviceObject(v8);
    objc_setAssociatedObject(v7, &GPUTools::Diag::AssociatedObjectKey, v6, &stru_2E8.segname[9]);
  }

  (*(*(a1 + 40) + 16))();
}

objc_object *GPUTools::Diag::SwizzleMTLTracker::MTL4GPUDebugCompiler_newRenderPipelineStateWithDescriptor_compilerTaskOptions_error(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a3;
  v10 = a4;
  v11 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v12 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (v12 && (v12("MTL4GPUDebugCompiler_newRenderPipelineStateWithDescriptor_compilerTaskOptions_error", 0) & 1) == 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = (*(v11 + 824))(a1, a2, v9, v10, a5);
    if (v13)
    {
      v14 = GPUTools::Diag::GetLibrariesFromDescriptor(v9);
      v15 = DeviceObject(v13);
      objc_setAssociatedObject(v15, &GPUTools::Diag::AssociatedObjectKey, v14, &stru_2E8.segname[9]);

      v16 = v13;
    }
  }

  return v13;
}

void sub_5DE4(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id GPUTools::Diag::SwizzleMTLTracker::MTL4GPUDebugCompiler_newRenderPipelineStateWithDescriptor_compilerTaskOptions_completionHandler(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v13 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (v13 && (v13("MTL4GPUDebugCompiler_newRenderPipelineStateWithDescriptor_compilerTaskOptions_completionHandler", 0) & 1) == 0)
  {
    v15 = 0;
  }

  else
  {
    v14 = *(v12 + 816);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = ___ZN8GPUTools4Diag17SwizzleMTLTracker95MTL4GPUDebugCompiler_newRenderPipelineStateWithDescriptor_compilerTaskOptions_completionHandlerEP11objc_objectP13objc_selectorP22MTL4PipelineDescriptorP23MTL4CompilerTaskOptionsU13block_pointerFvPU33objcproto22MTLRenderPipelineState11objc_objectP7NSErrorE_block_invoke;
    v17[3] = &unk_14580;
    v18 = v9;
    v19 = v11;
    v15 = v14(a1, a2, v18, v10, v17);
  }

  return v15;
}

void ___ZN8GPUTools4Diag17SwizzleMTLTracker95MTL4GPUDebugCompiler_newRenderPipelineStateWithDescriptor_compilerTaskOptions_completionHandlerEP11objc_objectP13objc_selectorP22MTL4PipelineDescriptorP23MTL4CompilerTaskOptionsU13block_pointerFvPU33objcproto22MTLRenderPipelineState11objc_objectP7NSErrorE_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v8)
  {
    v6 = GPUTools::Diag::GetLibrariesFromDescriptor(*(a1 + 32));
    v7 = DeviceObject(v8);
    objc_setAssociatedObject(v7, &GPUTools::Diag::AssociatedObjectKey, v6, &stru_2E8.segname[9]);
  }

  (*(*(a1 + 40) + 16))();
}

objc_object *GPUTools::Diag::SwizzleMTLTracker::MTL4GPUDebugCompiler_newRenderPipelineStateBySpecializationWithDescriptor_pipeline_error(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a3;
  v10 = a4;
  v11 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v12 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (v12 && (v12("MTL4GPUDebugCompiler_newRenderPipelineStateBySpecializationWithDescriptor_pipeline_error", 0) & 1) == 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = (*(v11 + 808))(a1, a2, v9, v10, a5);
    if (v13)
    {
      v14 = GPUTools::Diag::GetLibrariesFromDescriptor(v9);
      v16 = GPUTools::Diag::GetLibraries(v10, v15);
      [v14 addEntriesFromDictionary:v16];

      v17 = DeviceObject(v13);
      objc_setAssociatedObject(v17, &GPUTools::Diag::AssociatedObjectKey, v14, &stru_2E8.segname[9]);

      v18 = v13;
    }
  }

  return v13;
}

void sub_619C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id GPUTools::Diag::SwizzleMTLTracker::MTL4GPUDebugCompiler_newRenderPipelineStateBySpecializationWithDescriptor_pipeline_completionHandler(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v13 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (v13 && (v13("MTL4GPUDebugCompiler_newRenderPipelineStateBySpecializationWithDescriptor_pipeline_completionHandler", 0) & 1) == 0)
  {
    v15 = 0;
  }

  else
  {
    v14 = *(v12 + 800);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = ___ZN8GPUTools4Diag17SwizzleMTLTracker100MTL4GPUDebugCompiler_newRenderPipelineStateBySpecializationWithDescriptor_pipeline_completionHandlerEP11objc_objectP13objc_selectorP22MTL4PipelineDescriptorPU33objcproto22MTLRenderPipelineState11objc_objectU13block_pointerFvS9_P7NSErrorE_block_invoke;
    v17[3] = &unk_14558;
    v18 = v9;
    v19 = v10;
    v20 = v11;
    v15 = v14(a1, a2, v18, v19, v17);
  }

  return v15;
}

void ___ZN8GPUTools4Diag17SwizzleMTLTracker100MTL4GPUDebugCompiler_newRenderPipelineStateBySpecializationWithDescriptor_pipeline_completionHandlerEP11objc_objectP13objc_selectorP22MTL4PipelineDescriptorPU33objcproto22MTLRenderPipelineState11objc_objectU13block_pointerFvS9_P7NSErrorE_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    v6 = GPUTools::Diag::GetLibrariesFromDescriptor(*(a1 + 32));
    v8 = GPUTools::Diag::GetLibraries(*(a1 + 40), v7);
    [v6 addEntriesFromDictionary:v8];

    v9 = DeviceObject(v10);
    objc_setAssociatedObject(v9, &GPUTools::Diag::AssociatedObjectKey, v6, &stru_2E8.segname[9]);
  }

  (*(*(a1 + 48) + 16))();
}

objc_object *GPUTools::Diag::SwizzleMTLTracker::MTL4GPUDebugCompiler_newComputePipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_error(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v15 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (v15 && (v15("MTL4GPUDebugCompiler_newComputePipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_error", 0) & 1) == 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = (*(v14 + 792))(a1, a2, v11, v12, v13, a6);
    if (v16)
    {
      v17 = GPUTools::Diag::GetLibrariesFromDescriptor(v11);
      v18 = DeviceObject(v16);
      objc_setAssociatedObject(v18, &GPUTools::Diag::AssociatedObjectKey, v17, &stru_2E8.segname[9]);

      v19 = v16;
    }
  }

  return v16;
}

void sub_6594(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

id GPUTools::Diag::SwizzleMTLTracker::MTL4GPUDebugCompiler_newComputePipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v16 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (v16 && (v16("MTL4GPUDebugCompiler_newComputePipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler", 0) & 1) == 0)
  {
    v18 = 0;
  }

  else
  {
    v17 = *(v15 + 784);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = ___ZN8GPUTools4Diag17SwizzleMTLTracker121MTL4GPUDebugCompiler_newComputePipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandlerEP11objc_objectP13objc_selectorP29MTL4ComputePipelineDescriptorP41MTL4PipelineStageDynamicLinkingDescriptorP23MTL4CompilerTaskOptionsU13block_pointerFvPU34objcproto23MTLComputePipelineState11objc_objectP7NSErrorE_block_invoke;
    v20[3] = &unk_14530;
    v21 = v11;
    v22 = v14;
    v18 = v17(a1, a2, v21, v12, v13, v20);
  }

  return v18;
}

void ___ZN8GPUTools4Diag17SwizzleMTLTracker121MTL4GPUDebugCompiler_newComputePipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandlerEP11objc_objectP13objc_selectorP29MTL4ComputePipelineDescriptorP41MTL4PipelineStageDynamicLinkingDescriptorP23MTL4CompilerTaskOptionsU13block_pointerFvPU34objcproto23MTLComputePipelineState11objc_objectP7NSErrorE_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v8)
  {
    v6 = GPUTools::Diag::GetLibrariesFromDescriptor(*(a1 + 32));
    v7 = DeviceObject(v8);
    objc_setAssociatedObject(v7, &GPUTools::Diag::AssociatedObjectKey, v6, &stru_2E8.segname[9]);
  }

  (*(*(a1 + 40) + 16))();
}

objc_object *GPUTools::Diag::SwizzleMTLTracker::MTL4GPUDebugCompiler_newComputePipelineStateWithDescriptor_compilerTaskOptions_error(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a3;
  v10 = a4;
  v11 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v12 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (v12 && (v12("MTL4GPUDebugCompiler_newComputePipelineStateWithDescriptor_compilerTaskOptions_error", 0) & 1) == 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = (*(v11 + 776))(a1, a2, v9, v10, a5);
    if (v13)
    {
      v14 = GPUTools::Diag::GetLibrariesFromDescriptor(v9);
      v15 = DeviceObject(v13);
      objc_setAssociatedObject(v15, &GPUTools::Diag::AssociatedObjectKey, v14, &stru_2E8.segname[9]);

      v16 = v13;
    }
  }

  return v13;
}

void sub_6948(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id GPUTools::Diag::SwizzleMTLTracker::MTL4GPUDebugCompiler_newComputePipelineStateWithDescriptor_compilerTaskOptions_completionHandler(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v13 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (v13 && (v13("MTL4GPUDebugCompiler_newComputePipelineStateWithDescriptor_compilerTaskOptions_completionHandler", 0) & 1) == 0)
  {
    v15 = 0;
  }

  else
  {
    v14 = *(v12 + 768);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = ___ZN8GPUTools4Diag17SwizzleMTLTracker96MTL4GPUDebugCompiler_newComputePipelineStateWithDescriptor_compilerTaskOptions_completionHandlerEP11objc_objectP13objc_selectorP29MTL4ComputePipelineDescriptorP23MTL4CompilerTaskOptionsU13block_pointerFvPU34objcproto23MTLComputePipelineState11objc_objectP7NSErrorE_block_invoke;
    v17[3] = &unk_14530;
    v18 = v9;
    v19 = v11;
    v15 = v14(a1, a2, v18, v10, v17);
  }

  return v15;
}

void ___ZN8GPUTools4Diag17SwizzleMTLTracker96MTL4GPUDebugCompiler_newComputePipelineStateWithDescriptor_compilerTaskOptions_completionHandlerEP11objc_objectP13objc_selectorP29MTL4ComputePipelineDescriptorP23MTL4CompilerTaskOptionsU13block_pointerFvPU34objcproto23MTLComputePipelineState11objc_objectP7NSErrorE_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v8)
  {
    v6 = GPUTools::Diag::GetLibrariesFromDescriptor(*(a1 + 32));
    v7 = DeviceObject(v8);
    objc_setAssociatedObject(v7, &GPUTools::Diag::AssociatedObjectKey, v6, &stru_2E8.segname[9]);
  }

  (*(*(a1 + 40) + 16))();
}

id GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newIntersectionFunctionWithDescriptor_error(GPUTools::Diag *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v9 = v7;
  v10 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v11 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (v11 && ([v7 name], v12 = objc_claimAutoreleasedReturnValue(), v13 = v11("MTLGPUDebugLibrary_newIntersectionFunctionWithDescriptor_error", v12), v12, (v13 & 1) == 0))
  {
    v17 = 0;
  }

  else
  {
    IsLegacy = GPUTools::Diag::IsLegacy(a1, v8);
    v15 = 752;
    if (IsLegacy)
    {
      v15 = 760;
    }

    v16 = (*(v10 + v15))(a1, a2, v9, a4);
    v17 = v16;
    if (v16)
    {
      GPUTools::Diag::AssociateFunctionWithLibrary(v16, a1);
      v18 = v17;
    }
  }

  return v17;
}

uint64_t GPUTools::Diag::IsLegacy(GPUTools::Diag *this, objc_object *a2)
{
  v2 = this;
  {
    GPUTools::Diag::IsLegacy(objc_object *)::legacyDevice = NSClassFromString(@"MTLLegacySVDevice");
  }

  {
    GPUTools::Diag::IsLegacy(objc_object *)::legacyLibrary = NSClassFromString(@"MTLLegacySVLibrary");
  }

  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

void sub_6DE0(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

void GPUTools::Diag::AssociateFunctionWithLibrary(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = DeviceObject(v4);

  v6 = DeviceObject(v3);

  v7 = objc_getAssociatedObject(v5, &GPUTools::Diag::AssociatedObjectKey);
  if (!v7)
  {
    v8 = [v6 unpackedFilePath];
    v7 = [v8 length];

    if (v7)
    {
      v9 = [v6 unpackedFilePath];
      v10[0] = v9;
      memset(&v10[1], 0, 24);
      if (GTSwizzleMTLTrackerLibraryWrapper)
      {
        v7 = [GTSwizzleMTLTrackerLibraryWrapper libraryWrapperWithLibrary:v10];
      }

      else
      {

        v7 = 0;
      }
    }
  }

  objc_setAssociatedObject(v6, &GPUTools::Diag::AssociatedObjectKey, v7, &stru_2E8.segname[9]);
}

void sub_6F28(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newIntersectionFunctionWithDescriptor_completionHandler(GPUTools::Diag *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v9 = a4;
  v10 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v11 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (!v11 || ([v7 name], v12 = objc_claimAutoreleasedReturnValue(), v13 = v11("MTLGPUDebugLibrary_newIntersectionFunctionWithDescriptor_completionHandler", v12), v12, (v13 & 1) != 0))
  {
    IsLegacy = GPUTools::Diag::IsLegacy(a1, v8);
    v15 = 736;
    if (IsLegacy)
    {
      v15 = 744;
    }

    v16 = *(v10 + v15);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = ___ZN8GPUTools4Diag17SwizzleMTLTracker74MTLGPUDebugLibrary_newIntersectionFunctionWithDescriptor_completionHandlerEP11objc_objectP13objc_selectorP33MTLIntersectionFunctionDescriptorU13block_pointerFvPU22objcproto11MTLFunction11objc_objectP7NSErrorE_block_invoke;
    v17[3] = &unk_14508;
    v19 = a1;
    v18 = v9;
    v16(a1, a2, v7, v17);
  }
}

void ___ZN8GPUTools4Diag17SwizzleMTLTracker74MTLGPUDebugLibrary_newIntersectionFunctionWithDescriptor_completionHandlerEP11objc_objectP13objc_selectorP33MTLIntersectionFunctionDescriptorU13block_pointerFvPU22objcproto11MTLFunction11objc_objectP7NSErrorE_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v6)
  {
    GPUTools::Diag::AssociateFunctionWithLibrary(v6, *(a1 + 40));
  }

  (*(*(a1 + 32) + 16))();
}

id GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newFunctionWithName_constantValues_pipelineLibrary_error(GPUTools::Diag *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v11 = a3;
  v12 = a4;
  v14 = a5;
  v15 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v16 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (v16 && (v16("MTLGPUDebugLibrary_newFunctionWithName_constantValues_pipelineLibrary_error", v11) & 1) == 0)
  {
    v20 = 0;
  }

  else
  {
    IsLegacy = GPUTools::Diag::IsLegacy(a1, v13);
    v18 = 720;
    if (IsLegacy)
    {
      v18 = 728;
    }

    v19 = (*(v15 + v18))(a1, a2, v11, v12, v14, a6);
    v20 = v19;
    if (v19)
    {
      GPUTools::Diag::AssociateFunctionWithLibrary(v19, a1);
      v21 = v20;
    }
  }

  return v20;
}

void GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newFunctionWithName_constantValues_pipelineLibrary_completionHandler(GPUTools::Diag *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v15 = a6;
  v16 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v17 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (!v17 || (v17("MTLGPUDebugLibrary_newFunctionWithName_constantValues_pipelineLibrary_completionHandler", v11) & 1) != 0)
  {
    IsLegacy = GPUTools::Diag::IsLegacy(a1, v14);
    v19 = 704;
    if (IsLegacy)
    {
      v19 = 712;
    }

    v20 = *(v16 + v19);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = ___ZN8GPUTools4Diag17SwizzleMTLTracker87MTLGPUDebugLibrary_newFunctionWithName_constantValues_pipelineLibrary_completionHandlerEP11objc_objectP13objc_selectorP8NSStringP25MTLFunctionConstantValuesPU29objcproto18MTLPipelineLibrary11objc_objectU13block_pointerFvPU22objcproto11MTLFunction11objc_objectP7NSErrorE_block_invoke;
    v21[3] = &unk_14508;
    v23 = a1;
    v22 = v15;
    v20(a1, a2, v11, v12, v13, v21);
  }
}

void ___ZN8GPUTools4Diag17SwizzleMTLTracker87MTLGPUDebugLibrary_newFunctionWithName_constantValues_pipelineLibrary_completionHandlerEP11objc_objectP13objc_selectorP8NSStringP25MTLFunctionConstantValuesPU29objcproto18MTLPipelineLibrary11objc_objectU13block_pointerFvPU22objcproto11MTLFunction11objc_objectP7NSErrorE_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v6)
  {
    GPUTools::Diag::AssociateFunctionWithLibrary(v6, *(a1 + 40));
  }

  (*(*(a1 + 32) + 16))();
}

id GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newFunctionWithName_constantValues_error(GPUTools::Diag *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a3;
  v11 = a4;
  v12 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v13 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (v13 && (v13("MTLGPUDebugLibrary_newFunctionWithName_constantValues_error", v9) & 1) == 0)
  {
    v17 = 0;
  }

  else
  {
    IsLegacy = GPUTools::Diag::IsLegacy(a1, v10);
    v15 = 688;
    if (IsLegacy)
    {
      v15 = 696;
    }

    v16 = (*(v12 + v15))(a1, a2, v9, v11, a5);
    v17 = v16;
    if (v16)
    {
      GPUTools::Diag::AssociateFunctionWithLibrary(v16, a1);
      v18 = v17;
    }
  }

  return v17;
}

void GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newFunctionWithName_constantValues_completionHandler(GPUTools::Diag *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v12 = a5;
  v13 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v14 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (!v14 || (v14("MTLGPUDebugLibrary_newFunctionWithName_constantValues_completionHandler", v9) & 1) != 0)
  {
    IsLegacy = GPUTools::Diag::IsLegacy(a1, v11);
    v16 = 672;
    if (IsLegacy)
    {
      v16 = 680;
    }

    v17 = *(v13 + v16);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = ___ZN8GPUTools4Diag17SwizzleMTLTracker71MTLGPUDebugLibrary_newFunctionWithName_constantValues_completionHandlerEP11objc_objectP13objc_selectorP8NSStringP25MTLFunctionConstantValuesU13block_pointerFvPU22objcproto11MTLFunction11objc_objectP7NSErrorE_block_invoke;
    v18[3] = &unk_14508;
    v20 = a1;
    v19 = v12;
    v17(a1, a2, v9, v10, v18);
  }
}

void ___ZN8GPUTools4Diag17SwizzleMTLTracker71MTLGPUDebugLibrary_newFunctionWithName_constantValues_completionHandlerEP11objc_objectP13objc_selectorP8NSStringP25MTLFunctionConstantValuesU13block_pointerFvPU22objcproto11MTLFunction11objc_objectP7NSErrorE_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v6)
  {
    GPUTools::Diag::AssociateFunctionWithLibrary(v6, *(a1 + 40));
  }

  (*(*(a1 + 32) + 16))();
}

id GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newFunctionWithName(GPUTools::Diag::SwizzleMTLTracker *this, objc_object *a2, objc_selector *a3, NSString *a4)
{
  v7 = a3;
  v8 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v9 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (v9 && (v9("MTLGPUDebugLibrary_newFunctionWithName", v7) & 1) == 0)
  {
    v13 = 0;
  }

  else
  {
    IsLegacy = GPUTools::Diag::IsLegacy(this, v6);
    v11 = 656;
    if (IsLegacy)
    {
      v11 = 664;
    }

    v12 = (*(v8 + v11))(this, a2, v7);
    v13 = v12;
    if (v12)
    {
      GPUTools::Diag::AssociateFunctionWithLibrary(v12, this);
      v14 = v13;
    }
  }

  return v13;
}

id GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newFunctionWithDescriptor_error(GPUTools::Diag *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v9 = v7;
  v10 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v11 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (v11 && ([v7 name], v12 = objc_claimAutoreleasedReturnValue(), v13 = v11("MTLGPUDebugLibrary_newFunctionWithDescriptor_error", v12), v12, (v13 & 1) == 0))
  {
    v17 = 0;
  }

  else
  {
    IsLegacy = GPUTools::Diag::IsLegacy(a1, v8);
    v15 = 640;
    if (IsLegacy)
    {
      v15 = 648;
    }

    v16 = (*(v10 + v15))(a1, a2, v9, a4);
    v17 = v16;
    if (v16)
    {
      GPUTools::Diag::AssociateFunctionWithLibrary(v16, a1);
      v18 = v17;
    }
  }

  return v17;
}

id GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newFunctionWithDescriptor_destinationArchive_error(GPUTools::Diag *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a3;
  v11 = a4;
  v12 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v13 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (v13 && ([v9 name], v14 = objc_claimAutoreleasedReturnValue(), v15 = v13("MTLGPUDebugLibrary_newFunctionWithDescriptor_destinationArchive_error", v14), v14, (v15 & 1) == 0))
  {
    v19 = 0;
  }

  else
  {
    IsLegacy = GPUTools::Diag::IsLegacy(a1, v10);
    v17 = 624;
    if (IsLegacy)
    {
      v17 = 632;
    }

    v18 = (*(v12 + v17))(a1, a2, v9, v11, a5);
    v19 = v18;
    if (v18)
    {
      GPUTools::Diag::AssociateFunctionWithLibrary(v18, a1);
      v20 = v19;
    }
  }

  return v19;
}

void GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newFunctionWithDescriptor_completionHandler(GPUTools::Diag *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v9 = a4;
  v10 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v11 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (!v11 || ([v7 name], v12 = objc_claimAutoreleasedReturnValue(), v13 = v11("MTLGPUDebugLibrary_newFunctionWithDescriptor_completionHandler", v12), v12, (v13 & 1) != 0))
  {
    IsLegacy = GPUTools::Diag::IsLegacy(a1, v8);
    v15 = 608;
    if (IsLegacy)
    {
      v15 = 616;
    }

    v16 = *(v10 + v15);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = ___ZN8GPUTools4Diag17SwizzleMTLTracker62MTLGPUDebugLibrary_newFunctionWithDescriptor_completionHandlerEP11objc_objectP13objc_selectorP21MTLFunctionDescriptorU13block_pointerFvPU22objcproto11MTLFunction11objc_objectP7NSErrorE_block_invoke;
    v17[3] = &unk_14508;
    v19 = a1;
    v18 = v9;
    v16(a1, a2, v7, v17);
  }
}

void ___ZN8GPUTools4Diag17SwizzleMTLTracker62MTLGPUDebugLibrary_newFunctionWithDescriptor_completionHandlerEP11objc_objectP13objc_selectorP21MTLFunctionDescriptorU13block_pointerFvPU22objcproto11MTLFunction11objc_objectP7NSErrorE_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v6)
  {
    GPUTools::Diag::AssociateFunctionWithLibrary(v6, *(a1 + 40));
  }

  (*(*(a1 + 32) + 16))();
}

id GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugLibrary_newExternFunctionWithName(GPUTools::Diag::SwizzleMTLTracker *this, objc_object *a2, objc_selector *a3, NSString *a4)
{
  v7 = a3;
  v8 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v9 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (v9 && (v9("MTLGPUDebugLibrary_newExternFunctionWithName", v7) & 1) == 0)
  {
    v13 = 0;
  }

  else
  {
    IsLegacy = GPUTools::Diag::IsLegacy(this, v6);
    v11 = 592;
    if (IsLegacy)
    {
      v11 = 600;
    }

    v12 = (*(v8 + v11))(this, a2, v7);
    v13 = v12;
    if (v12)
    {
      GPUTools::Diag::AssociateFunctionWithLibrary(v12, this);
      v14 = v13;
    }
  }

  return v13;
}

id GPUTools::Diag::SwizzleMTLTracker::MTL4GPUDebugCompiler_newLibraryWithDescriptor_error(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = v7;
  v9 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v10 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (v10 && ([v7 name], v11 = objc_claimAutoreleasedReturnValue(), v12 = v10("MTL4GPUDebugCompiler_newLibraryWithDescriptor_error", v11), v11, (v12 & 1) == 0))
  {
    v14 = 0;
  }

  else
  {
    v13 = (*(v9 + 584))(a1, a2, v8, a4);
    v14 = v13;
    if (v13)
    {
      v15 = *(v9 + 296);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = ___ZN8GPUTools4Diag17SwizzleMTLTracker51MTL4GPUDebugCompiler_newLibraryWithDescriptor_errorEP11objc_objectP13objc_selectorP21MTL4LibraryDescriptorPU15__autoreleasingP7NSError_block_invoke;
      v19[3] = &unk_14490;
      v16 = v13;
      v20 = v16;
      v21 = v8;
      dispatch_sync(v15, v19);
      v17 = v16;
    }
  }

  return v14;
}

void ___ZN8GPUTools4Diag17SwizzleMTLTracker51MTL4GPUDebugCompiler_newLibraryWithDescriptor_errorEP11objc_objectP13objc_selectorP21MTL4LibraryDescriptorPU15__autoreleasingP7NSError_block_invoke(uint64_t a1)
{
  v2 = DeviceObject(*(a1 + 32));
  v3 = GTSwizzleMTLTrackerLibraryWrapper;
  v4 = [*(a1 + 40) source];
  v5 = [v4 copy];
  v6[2] = v5;
  v6[3] = 0;
  if (GTSwizzleMTLTrackerLibraryWrapper)
  {
    v3 = [GTSwizzleMTLTrackerLibraryWrapper libraryWrapperWithLibrary:v6];
  }

  else
  {
  }

  objc_setAssociatedObject(v2, &GPUTools::Diag::AssociatedObjectKey, v3, &stru_2E8.segname[9]);
}

id GPUTools::Diag::SwizzleMTLTracker::MTL4GPUDebugCompiler_newLibraryWithDescriptor_completionHandler(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v10 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (v10 && ([v7 name], v11 = objc_claimAutoreleasedReturnValue(), v12 = v10("MTL4GPUDebugCompiler_newLibraryWithDescriptor_completionHandler", v11), v11, (v12 & 1) == 0))
  {
    v14 = 0;
  }

  else
  {
    v13 = *(v9 + 576);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = ___ZN8GPUTools4Diag17SwizzleMTLTracker63MTL4GPUDebugCompiler_newLibraryWithDescriptor_completionHandlerEP11objc_objectP13objc_selectorP21MTL4LibraryDescriptorU13block_pointerFvPU21objcproto10MTLLibrary11objc_objectP7NSErrorE_block_invoke;
    v16[3] = &unk_144E0;
    v19 = v9;
    v17 = v7;
    v18 = v8;
    v14 = v13(a1, a2, v17, v16);
  }

  return v14;
}

void ___ZN8GPUTools4Diag17SwizzleMTLTracker63MTL4GPUDebugCompiler_newLibraryWithDescriptor_completionHandlerEP11objc_objectP13objc_selectorP21MTL4LibraryDescriptorU13block_pointerFvPU21objcproto10MTLLibrary11objc_objectP7NSErrorE_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7 = a3;
  if (v5)
  {
    v8 = *(*(a1 + 48) + 296);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = ___ZN8GPUTools4Diag17SwizzleMTLTracker63MTL4GPUDebugCompiler_newLibraryWithDescriptor_completionHandlerEP11objc_objectP13objc_selectorP21MTL4LibraryDescriptorU13block_pointerFvPU21objcproto10MTLLibrary11objc_objectP7NSErrorE_block_invoke_2;
    v9[3] = &unk_14490;
    v10 = v5;
    v11 = *(a1 + 32);
    dispatch_sync(v8, v9);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v5, v7, v6);
}

void ___ZN8GPUTools4Diag17SwizzleMTLTracker63MTL4GPUDebugCompiler_newLibraryWithDescriptor_completionHandlerEP11objc_objectP13objc_selectorP21MTL4LibraryDescriptorU13block_pointerFvPU21objcproto10MTLLibrary11objc_objectP7NSErrorE_block_invoke_2(uint64_t a1)
{
  v2 = DeviceObject(*(a1 + 32));
  v3 = GTSwizzleMTLTrackerLibraryWrapper;
  v4 = [*(a1 + 40) source];
  v5 = [v4 copy];
  v6[2] = v5;
  v6[3] = 0;
  if (GTSwizzleMTLTrackerLibraryWrapper)
  {
    v3 = [GTSwizzleMTLTrackerLibraryWrapper libraryWrapperWithLibrary:v6];
  }

  else
  {
  }

  objc_setAssociatedObject(v2, &GPUTools::Diag::AssociatedObjectKey, v3, &stru_2E8.segname[9]);
}

id GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithURL_error(GPUTools::Diag *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = a3;
  v9 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v10 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (v10 && (v10("MTLGPUDebugDevice_newLibraryWithURL_error", 0) & 1) == 0)
  {
    v14 = 0;
  }

  else
  {
    IsLegacy = GPUTools::Diag::IsLegacy(a1, v7);
    v12 = 560;
    if (IsLegacy)
    {
      v12 = 568;
    }

    v13 = (*(v9 + v12))(a1, a2, v8, a4);
    v14 = v13;
    if (v13)
    {
      v15 = *(v9 + 296);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = ___ZN8GPUTools4Diag17SwizzleMTLTracker41MTLGPUDebugDevice_newLibraryWithURL_errorEP11objc_objectP13objc_selectorP5NSURLPU15__autoreleasingP7NSError_block_invoke;
      v19[3] = &unk_14490;
      v16 = v13;
      v20 = v16;
      v21 = v8;
      dispatch_sync(v15, v19);
      v17 = v16;
    }
  }

  return v14;
}

void ___ZN8GPUTools4Diag17SwizzleMTLTracker41MTLGPUDebugDevice_newLibraryWithURL_errorEP11objc_objectP13objc_selectorP5NSURLPU15__autoreleasingP7NSError_block_invoke(uint64_t a1)
{
  v2 = DeviceObject(*(a1 + 32));
  v3 = GTSwizzleMTLTrackerLibraryWrapper;
  v4 = [*(a1 + 40) path];
  v5[0] = v4;
  memset(&v5[1], 0, 24);
  if (GTSwizzleMTLTrackerLibraryWrapper)
  {
    v3 = [GTSwizzleMTLTrackerLibraryWrapper libraryWrapperWithLibrary:v5];
  }

  else
  {
  }

  objc_setAssociatedObject(v2, &GPUTools::Diag::AssociatedObjectKey, v3, &stru_2E8.segname[9]);
}

id GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithStitchedDescriptorSPI_error(GPUTools::Diag *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = a3;
  v9 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v10 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (v10 && (v10("MTLGPUDebugDevice_newLibraryWithStitchedDescriptorSPI_error", 0) & 1) == 0)
  {
    v14 = 0;
  }

  else
  {
    IsLegacy = GPUTools::Diag::IsLegacy(a1, v7);
    v12 = 544;
    if (IsLegacy)
    {
      v12 = 552;
    }

    v13 = (*(v9 + v12))(a1, a2, v8, a4);
    v14 = v13;
    if (v13)
    {
      v15 = *(v9 + 296);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = ___ZN8GPUTools4Diag17SwizzleMTLTracker59MTLGPUDebugDevice_newLibraryWithStitchedDescriptorSPI_errorEP11objc_objectP13objc_selectorP31MTLStitchedLibraryDescriptorSPIPU15__autoreleasingP7NSError_block_invoke;
      block[3] = &unk_14468;
      v16 = v13;
      v20 = v16;
      dispatch_sync(v15, block);
      v17 = v16;
    }
  }

  return v14;
}

void ___ZN8GPUTools4Diag17SwizzleMTLTracker59MTLGPUDebugDevice_newLibraryWithStitchedDescriptorSPI_errorEP11objc_objectP13objc_selectorP31MTLStitchedLibraryDescriptorSPIPU15__autoreleasingP7NSError_block_invoke(uint64_t a1)
{
  v1 = DeviceObject(*(a1 + 32));
  memset(v3, 0, sizeof(v3));
  if (GTSwizzleMTLTrackerLibraryWrapper)
  {
    v2 = [GTSwizzleMTLTrackerLibraryWrapper libraryWrapperWithLibrary:v3];
  }

  else
  {
    v2 = 0;
  }

  objc_setAssociatedObject(v1, &GPUTools::Diag::AssociatedObjectKey, v2, &stru_2E8.segname[9]);
}

id GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithStitchedDescriptor_error(GPUTools::Diag *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = a3;
  v9 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v10 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (v10 && (v10("MTLGPUDebugDevice_newLibraryWithStitchedDescriptor_error", 0) & 1) == 0)
  {
    v14 = 0;
  }

  else
  {
    IsLegacy = GPUTools::Diag::IsLegacy(a1, v7);
    v12 = 528;
    if (IsLegacy)
    {
      v12 = 536;
    }

    v13 = (*(v9 + v12))(a1, a2, v8, a4);
    v14 = v13;
    if (v13)
    {
      v15 = *(v9 + 296);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = ___ZN8GPUTools4Diag17SwizzleMTLTracker56MTLGPUDebugDevice_newLibraryWithStitchedDescriptor_errorEP11objc_objectP13objc_selectorP28MTLStitchedLibraryDescriptorPU15__autoreleasingP7NSError_block_invoke;
      block[3] = &unk_14468;
      v16 = v13;
      v20 = v16;
      dispatch_sync(v15, block);
      v17 = v16;
    }
  }

  return v14;
}

void ___ZN8GPUTools4Diag17SwizzleMTLTracker56MTLGPUDebugDevice_newLibraryWithStitchedDescriptor_errorEP11objc_objectP13objc_selectorP28MTLStitchedLibraryDescriptorPU15__autoreleasingP7NSError_block_invoke(uint64_t a1)
{
  v1 = DeviceObject(*(a1 + 32));
  memset(v3, 0, sizeof(v3));
  if (GTSwizzleMTLTrackerLibraryWrapper)
  {
    v2 = [GTSwizzleMTLTrackerLibraryWrapper libraryWrapperWithLibrary:v3];
  }

  else
  {
    v2 = 0;
  }

  objc_setAssociatedObject(v1, &GPUTools::Diag::AssociatedObjectKey, v2, &stru_2E8.segname[9]);
}

void GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithStitchedDescriptor_completionHandler(GPUTools::Diag *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v9 = a4;
  v10 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v11 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (!v11 || (v11("MTLGPUDebugDevice_newLibraryWithStitchedDescriptor_completionHandler", 0) & 1) != 0)
  {
    IsLegacy = GPUTools::Diag::IsLegacy(a1, v8);
    v13 = 512;
    if (IsLegacy)
    {
      v13 = 520;
    }

    v14 = *(v10 + v13);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = ___ZN8GPUTools4Diag17SwizzleMTLTracker68MTLGPUDebugDevice_newLibraryWithStitchedDescriptor_completionHandlerEP11objc_objectP13objc_selectorP28MTLStitchedLibraryDescriptorU13block_pointerFvPU21objcproto10MTLLibrary11objc_objectP7NSErrorE_block_invoke;
    v15[3] = &unk_144B8;
    v17 = v10;
    v16 = v9;
    v14(a1, a2, v7, v15);
  }
}

void ___ZN8GPUTools4Diag17SwizzleMTLTracker68MTLGPUDebugDevice_newLibraryWithStitchedDescriptor_completionHandlerEP11objc_objectP13objc_selectorP28MTLStitchedLibraryDescriptorU13block_pointerFvPU21objcproto10MTLLibrary11objc_objectP7NSErrorE_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(*(a1 + 40) + 296);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = ___ZN8GPUTools4Diag17SwizzleMTLTracker68MTLGPUDebugDevice_newLibraryWithStitchedDescriptor_completionHandlerEP11objc_objectP13objc_selectorP28MTLStitchedLibraryDescriptorU13block_pointerFvPU21objcproto10MTLLibrary11objc_objectP7NSErrorE_block_invoke_2;
    block[3] = &unk_14468;
    v9 = v5;
    dispatch_sync(v7, block);
  }

  (*(*(a1 + 32) + 16))();
}

void ___ZN8GPUTools4Diag17SwizzleMTLTracker68MTLGPUDebugDevice_newLibraryWithStitchedDescriptor_completionHandlerEP11objc_objectP13objc_selectorP28MTLStitchedLibraryDescriptorU13block_pointerFvPU21objcproto10MTLLibrary11objc_objectP7NSErrorE_block_invoke_2(uint64_t a1)
{
  v1 = DeviceObject(*(a1 + 32));
  memset(v3, 0, sizeof(v3));
  if (GTSwizzleMTLTrackerLibraryWrapper)
  {
    v2 = [GTSwizzleMTLTrackerLibraryWrapper libraryWrapperWithLibrary:v3];
  }

  else
  {
    v2 = 0;
  }

  objc_setAssociatedObject(v1, &GPUTools::Diag::AssociatedObjectKey, v2, &stru_2E8.segname[9]);
}

id GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithSource_options_error(GPUTools::Diag *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a3;
  v10 = a4;
  v11 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v12 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (v12 && (v12("MTLGPUDebugDevice_newLibraryWithSource_options_error", v9) & 1) == 0)
  {
    v17 = 0;
  }

  else
  {
    if (!v10)
    {
      v10 = objc_opt_new();
    }

    [v10 setDebuggingEnabled:1];
    IsLegacy = GPUTools::Diag::IsLegacy(a1, v13);
    v15 = 496;
    if (IsLegacy)
    {
      v15 = 504;
    }

    v16 = (*(v11 + v15))(a1, a2, v9, v10, a5);
    v17 = v16;
    if (v16)
    {
      v18 = *(v11 + 296);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = ___ZN8GPUTools4Diag17SwizzleMTLTracker52MTLGPUDebugDevice_newLibraryWithSource_options_errorEP11objc_objectP13objc_selectorP8NSStringP17MTLCompileOptionsPU15__autoreleasingP7NSError_block_invoke;
      v22[3] = &unk_14490;
      v19 = v16;
      v23 = v19;
      v24 = v9;
      dispatch_sync(v18, v22);
      v20 = v19;
    }
  }

  return v17;
}

void ___ZN8GPUTools4Diag17SwizzleMTLTracker52MTLGPUDebugDevice_newLibraryWithSource_options_errorEP11objc_objectP13objc_selectorP8NSStringP17MTLCompileOptionsPU15__autoreleasingP7NSError_block_invoke(uint64_t a1)
{
  v2 = DeviceObject(*(a1 + 32));
  v3 = GTSwizzleMTLTrackerLibraryWrapper;
  v4 = [*(a1 + 40) copy];
  v5[2] = v4;
  v5[3] = 0;
  if (GTSwizzleMTLTrackerLibraryWrapper)
  {
    v3 = [GTSwizzleMTLTrackerLibraryWrapper libraryWrapperWithLibrary:v5];
  }

  else
  {
  }

  objc_setAssociatedObject(v2, &GPUTools::Diag::AssociatedObjectKey, v3, &stru_2E8.segname[9]);
}

void GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithSource_options_completionHandler(GPUTools::Diag *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v13 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (!v13 || (v13("MTLGPUDebugDevice_newLibraryWithSource_options_completionHandler", v9) & 1) != 0)
  {
    if (!v10)
    {
      v10 = objc_opt_new();
    }

    [v10 setDebuggingEnabled:1];
    IsLegacy = GPUTools::Diag::IsLegacy(a1, v14);
    v16 = 480;
    if (IsLegacy)
    {
      v16 = 488;
    }

    v17 = *(v12 + v16);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = ___ZN8GPUTools4Diag17SwizzleMTLTracker64MTLGPUDebugDevice_newLibraryWithSource_options_completionHandlerEP11objc_objectP13objc_selectorP8NSStringP17MTLCompileOptionsU13block_pointerFvPU21objcproto10MTLLibrary11objc_objectP7NSErrorE_block_invoke;
    v18[3] = &unk_144E0;
    v21 = v12;
    v19 = v9;
    v20 = v11;
    v17(a1, a2, v19, v10, v18);
  }
}

void ___ZN8GPUTools4Diag17SwizzleMTLTracker64MTLGPUDebugDevice_newLibraryWithSource_options_completionHandlerEP11objc_objectP13objc_selectorP8NSStringP17MTLCompileOptionsU13block_pointerFvPU21objcproto10MTLLibrary11objc_objectP7NSErrorE_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7 = a3;
  if (v5)
  {
    v8 = *(*(a1 + 48) + 296);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = ___ZN8GPUTools4Diag17SwizzleMTLTracker64MTLGPUDebugDevice_newLibraryWithSource_options_completionHandlerEP11objc_objectP13objc_selectorP8NSStringP17MTLCompileOptionsU13block_pointerFvPU21objcproto10MTLLibrary11objc_objectP7NSErrorE_block_invoke_2;
    v9[3] = &unk_14490;
    v10 = v5;
    v11 = *(a1 + 32);
    dispatch_sync(v8, v9);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v5, v7, v6);
}

void ___ZN8GPUTools4Diag17SwizzleMTLTracker64MTLGPUDebugDevice_newLibraryWithSource_options_completionHandlerEP11objc_objectP13objc_selectorP8NSStringP17MTLCompileOptionsU13block_pointerFvPU21objcproto10MTLLibrary11objc_objectP7NSErrorE_block_invoke_2(uint64_t a1)
{
  v2 = DeviceObject(*(a1 + 32));
  v3 = GTSwizzleMTLTrackerLibraryWrapper;
  v4 = [*(a1 + 40) copy];
  v5[2] = v4;
  v5[3] = 0;
  if (GTSwizzleMTLTrackerLibraryWrapper)
  {
    v3 = [GTSwizzleMTLTrackerLibraryWrapper libraryWrapperWithLibrary:v5];
  }

  else
  {
  }

  objc_setAssociatedObject(v2, &GPUTools::Diag::AssociatedObjectKey, v3, &stru_2E8.segname[9]);
}

id GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithFile_error(GPUTools::Diag *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = a3;
  v9 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v10 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (v10 && (v10("MTLGPUDebugDevice_newLibraryWithFile_error", v8) & 1) == 0)
  {
    v14 = 0;
  }

  else
  {
    IsLegacy = GPUTools::Diag::IsLegacy(a1, v7);
    v12 = 464;
    if (IsLegacy)
    {
      v12 = 472;
    }

    v13 = (*(v9 + v12))(a1, a2, v8, a4);
    v14 = v13;
    if (v13)
    {
      v15 = *(v9 + 296);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = ___ZN8GPUTools4Diag17SwizzleMTLTracker42MTLGPUDebugDevice_newLibraryWithFile_errorEP11objc_objectP13objc_selectorP8NSStringPU15__autoreleasingP7NSError_block_invoke;
      v19[3] = &unk_14490;
      v16 = v13;
      v20 = v16;
      v21 = v8;
      dispatch_sync(v15, v19);
      v17 = v16;
    }
  }

  return v14;
}

void ___ZN8GPUTools4Diag17SwizzleMTLTracker42MTLGPUDebugDevice_newLibraryWithFile_errorEP11objc_objectP13objc_selectorP8NSStringPU15__autoreleasingP7NSError_block_invoke(uint64_t a1)
{
  v2 = DeviceObject(*(a1 + 32));
  v3 = GTSwizzleMTLTrackerLibraryWrapper;
  v4 = *(a1 + 40);
  v5[0] = v4;
  memset(&v5[1], 0, 24);
  if (GTSwizzleMTLTrackerLibraryWrapper)
  {
    v3 = [GTSwizzleMTLTrackerLibraryWrapper libraryWrapperWithLibrary:v5];
  }

  else
  {
  }

  objc_setAssociatedObject(v2, &GPUTools::Diag::AssociatedObjectKey, v3, &stru_2E8.segname[9]);
}

id GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithDescriptorSPI_error(GPUTools::Diag *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = a3;
  v9 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v10 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (v10 && (v10("MTLGPUDebugDevice_newLibraryWithDescriptorSPI_error", 0) & 1) == 0)
  {
    v14 = 0;
  }

  else
  {
    IsLegacy = GPUTools::Diag::IsLegacy(a1, v7);
    v12 = 448;
    if (IsLegacy)
    {
      v12 = 456;
    }

    v13 = (*(v9 + v12))(a1, a2, v8, a4);
    v14 = v13;
    if (v13)
    {
      v15 = *(v9 + 296);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = ___ZN8GPUTools4Diag17SwizzleMTLTracker51MTLGPUDebugDevice_newLibraryWithDescriptorSPI_errorEP11objc_objectP13objc_selectorP31MTLStitchedLibraryDescriptorSPIPU15__autoreleasingP7NSError_block_invoke;
      block[3] = &unk_14468;
      v16 = v13;
      v20 = v16;
      dispatch_sync(v15, block);
      v17 = v16;
    }
  }

  return v14;
}

void ___ZN8GPUTools4Diag17SwizzleMTLTracker51MTLGPUDebugDevice_newLibraryWithDescriptorSPI_errorEP11objc_objectP13objc_selectorP31MTLStitchedLibraryDescriptorSPIPU15__autoreleasingP7NSError_block_invoke(uint64_t a1)
{
  v1 = DeviceObject(*(a1 + 32));
  memset(v3, 0, sizeof(v3));
  if (GTSwizzleMTLTrackerLibraryWrapper)
  {
    v2 = [GTSwizzleMTLTrackerLibraryWrapper libraryWrapperWithLibrary:v3];
  }

  else
  {
    v2 = 0;
  }

  objc_setAssociatedObject(v1, &GPUTools::Diag::AssociatedObjectKey, v2, &stru_2E8.segname[9]);
}

id GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithDescriptor_error(GPUTools::Diag *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = a3;
  v9 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v10 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (v10 && (v10("MTLGPUDebugDevice_newLibraryWithDescriptor_error", 0) & 1) == 0)
  {
    v14 = 0;
  }

  else
  {
    IsLegacy = GPUTools::Diag::IsLegacy(a1, v7);
    v12 = 432;
    if (IsLegacy)
    {
      v12 = 440;
    }

    v13 = (*(v9 + v12))(a1, a2, v8, a4);
    v14 = v13;
    if (v13)
    {
      v15 = *(v9 + 296);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = ___ZN8GPUTools4Diag17SwizzleMTLTracker48MTLGPUDebugDevice_newLibraryWithDescriptor_errorEP11objc_objectP13objc_selectorP28MTLStitchedLibraryDescriptorPU15__autoreleasingP7NSError_block_invoke;
      block[3] = &unk_14468;
      v16 = v13;
      v20 = v16;
      dispatch_sync(v15, block);
      v17 = v16;
    }
  }

  return v14;
}

void ___ZN8GPUTools4Diag17SwizzleMTLTracker48MTLGPUDebugDevice_newLibraryWithDescriptor_errorEP11objc_objectP13objc_selectorP28MTLStitchedLibraryDescriptorPU15__autoreleasingP7NSError_block_invoke(uint64_t a1)
{
  v1 = DeviceObject(*(a1 + 32));
  memset(v3, 0, sizeof(v3));
  if (GTSwizzleMTLTrackerLibraryWrapper)
  {
    v2 = [GTSwizzleMTLTrackerLibraryWrapper libraryWrapperWithLibrary:v3];
  }

  else
  {
    v2 = 0;
  }

  objc_setAssociatedObject(v1, &GPUTools::Diag::AssociatedObjectKey, v2, &stru_2E8.segname[9]);
}

void GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithDescriptor_completionHandler(GPUTools::Diag *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v9 = a4;
  v10 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v11 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (!v11 || (v11("MTLGPUDebugDevice_newLibraryWithDescriptor_completionHandler", 0) & 1) != 0)
  {
    IsLegacy = GPUTools::Diag::IsLegacy(a1, v8);
    v13 = 416;
    if (IsLegacy)
    {
      v13 = 424;
    }

    v14 = *(v10 + v13);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = ___ZN8GPUTools4Diag17SwizzleMTLTracker60MTLGPUDebugDevice_newLibraryWithDescriptor_completionHandlerEP11objc_objectP13objc_selectorP28MTLStitchedLibraryDescriptorU13block_pointerFvPU21objcproto10MTLLibrary11objc_objectP7NSErrorE_block_invoke;
    v15[3] = &unk_144B8;
    v17 = v10;
    v16 = v9;
    v14(a1, a2, v7, v15);
  }
}

void ___ZN8GPUTools4Diag17SwizzleMTLTracker60MTLGPUDebugDevice_newLibraryWithDescriptor_completionHandlerEP11objc_objectP13objc_selectorP28MTLStitchedLibraryDescriptorU13block_pointerFvPU21objcproto10MTLLibrary11objc_objectP7NSErrorE_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(*(a1 + 40) + 296);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = ___ZN8GPUTools4Diag17SwizzleMTLTracker60MTLGPUDebugDevice_newLibraryWithDescriptor_completionHandlerEP11objc_objectP13objc_selectorP28MTLStitchedLibraryDescriptorU13block_pointerFvPU21objcproto10MTLLibrary11objc_objectP7NSErrorE_block_invoke_2;
    block[3] = &unk_14468;
    v9 = v5;
    dispatch_sync(v7, block);
  }

  (*(*(a1 + 32) + 16))();
}

void ___ZN8GPUTools4Diag17SwizzleMTLTracker60MTLGPUDebugDevice_newLibraryWithDescriptor_completionHandlerEP11objc_objectP13objc_selectorP28MTLStitchedLibraryDescriptorU13block_pointerFvPU21objcproto10MTLLibrary11objc_objectP7NSErrorE_block_invoke_2(uint64_t a1)
{
  v1 = DeviceObject(*(a1 + 32));
  memset(v3, 0, sizeof(v3));
  if (GTSwizzleMTLTrackerLibraryWrapper)
  {
    v2 = [GTSwizzleMTLTrackerLibraryWrapper libraryWrapperWithLibrary:v3];
  }

  else
  {
    v2 = 0;
  }

  objc_setAssociatedObject(v1, &GPUTools::Diag::AssociatedObjectKey, v2, &stru_2E8.segname[9]);
}

id GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithData_error(GPUTools::Diag *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = a3;
  v9 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v10 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (v10 && (v10("MTLGPUDebugDevice_newLibraryWithData_error", 0) & 1) == 0)
  {
    v14 = 0;
  }

  else
  {
    IsLegacy = GPUTools::Diag::IsLegacy(a1, v7);
    v12 = 400;
    if (IsLegacy)
    {
      v12 = 408;
    }

    v13 = (*(v9 + v12))(a1, a2, v8, a4);
    v14 = v13;
    if (v13)
    {
      v15 = *(v9 + 296);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = ___ZN8GPUTools4Diag17SwizzleMTLTracker42MTLGPUDebugDevice_newLibraryWithData_errorEP11objc_objectP13objc_selectorPU27objcproto16OS_dispatch_data8NSObjectPU15__autoreleasingP7NSError_block_invoke;
      v19[3] = &unk_14490;
      v16 = v13;
      v20 = v16;
      v21 = v8;
      dispatch_sync(v15, v19);
      v17 = v16;
    }
  }

  return v14;
}

void ___ZN8GPUTools4Diag17SwizzleMTLTracker42MTLGPUDebugDevice_newLibraryWithData_errorEP11objc_objectP13objc_selectorPU27objcproto16OS_dispatch_data8NSObjectPU15__autoreleasingP7NSError_block_invoke(uint64_t a1)
{
  v2 = DeviceObject(*(a1 + 32));
  v3 = GTSwizzleMTLTrackerLibraryWrapper;
  v5[0] = 0;
  v4 = *(a1 + 40);
  v5[2] = 0;
  v5[3] = 0;
  v5[1] = v4;
  if (GTSwizzleMTLTrackerLibraryWrapper)
  {
    v3 = [GTSwizzleMTLTrackerLibraryWrapper libraryWrapperWithLibrary:v5];
  }

  else
  {
  }

  objc_setAssociatedObject(v2, &GPUTools::Diag::AssociatedObjectKey, v3, &stru_2E8.segname[9]);
}

id GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newLibraryWithDAG_functions_error(GPUTools::Diag *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a3;
  v11 = a4;
  v12 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v13 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (v13 && (v13("MTLGPUDebugDevice_newLibraryWithDAG_functions_error", v9) & 1) == 0)
  {
    v17 = 0;
  }

  else
  {
    IsLegacy = GPUTools::Diag::IsLegacy(a1, v10);
    v15 = 384;
    if (IsLegacy)
    {
      v15 = 392;
    }

    v16 = (*(v12 + v15))(a1, a2, v9, v11, a5);
    v17 = v16;
    if (v16)
    {
      v18 = *(v12 + 296);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = ___ZN8GPUTools4Diag17SwizzleMTLTracker51MTLGPUDebugDevice_newLibraryWithDAG_functions_errorEP11objc_objectP13objc_selectorP8NSStringP7NSArrayIPU22objcproto11MTLFunction11objc_objectEPU15__autoreleasingP7NSError_block_invoke;
      block[3] = &unk_14468;
      v19 = v16;
      v23 = v19;
      dispatch_sync(v18, block);
      v20 = v19;
    }
  }

  return v17;
}

void ___ZN8GPUTools4Diag17SwizzleMTLTracker51MTLGPUDebugDevice_newLibraryWithDAG_functions_errorEP11objc_objectP13objc_selectorP8NSStringP7NSArrayIPU22objcproto11MTLFunction11objc_objectEPU15__autoreleasingP7NSError_block_invoke(uint64_t a1)
{
  v1 = DeviceObject(*(a1 + 32));
  memset(v3, 0, sizeof(v3));
  if (GTSwizzleMTLTrackerLibraryWrapper)
  {
    v2 = [GTSwizzleMTLTrackerLibraryWrapper libraryWrapperWithLibrary:v3];
  }

  else
  {
    v2 = 0;
  }

  objc_setAssociatedObject(v1, &GPUTools::Diag::AssociatedObjectKey, v2, &stru_2E8.segname[9]);
}

id GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newDefaultLibraryWithBundle_error(GPUTools::Diag *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v9 = v7;
  v10 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v11 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (v11 && ([v7 bundlePath], v12 = objc_claimAutoreleasedReturnValue(), v13 = v11("MTLGPUDebugDevice_newDefaultLibraryWithBundle_error", v12), v12, (v13 & 1) == 0))
  {
    v17 = 0;
  }

  else
  {
    IsLegacy = GPUTools::Diag::IsLegacy(a1, v8);
    v15 = 368;
    if (IsLegacy)
    {
      v15 = 376;
    }

    v16 = (*(v10 + v15))(a1, a2, v9, a4);
    v17 = v16;
    if (v16)
    {
      v18 = *(v10 + 296);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = ___ZN8GPUTools4Diag17SwizzleMTLTracker51MTLGPUDebugDevice_newDefaultLibraryWithBundle_errorEP11objc_objectP13objc_selectorP8NSBundlePU15__autoreleasingP7NSError_block_invoke;
      v22[3] = &unk_14490;
      v19 = v16;
      v23 = v19;
      v24 = v9;
      dispatch_sync(v18, v22);
      v20 = v19;
    }
  }

  return v17;
}

void ___ZN8GPUTools4Diag17SwizzleMTLTracker51MTLGPUDebugDevice_newDefaultLibraryWithBundle_errorEP11objc_objectP13objc_selectorP8NSBundlePU15__autoreleasingP7NSError_block_invoke(uint64_t a1)
{
  v2 = DeviceObject(*(a1 + 32));
  v3 = GTSwizzleMTLTrackerLibraryWrapper;
  v4 = [*(a1 + 40) pathForResource:@"default" ofType:@"metallib"];
  v5[1] = 0;
  v5[2] = 0;
  v5[0] = v4;
  v6 = 1;
  memset(v7, 0, sizeof(v7));
  if (GTSwizzleMTLTrackerLibraryWrapper)
  {
    v3 = [GTSwizzleMTLTrackerLibraryWrapper libraryWrapperWithLibrary:v5];
  }

  else
  {
  }

  objc_setAssociatedObject(v2, &GPUTools::Diag::AssociatedObjectKey, v3, &stru_2E8.segname[9]);
}

id GPUTools::Diag::SwizzleMTLTracker::MTLGPUDebugDevice_newDefaultLibrary(GPUTools::Diag::SwizzleMTLTracker *this, objc_object *a2, objc_selector *a3)
{
  v5 = GPUTools::Diag::SwizzleMTLTracker::Tracker;
  v6 = *(GPUTools::Diag::SwizzleMTLTracker::Tracker + 312);
  if (!v6 || (v7 = 0, v6("MTLGPUDebugDevice_newDefaultLibrary", 0, a3)))
  {
    IsLegacy = GPUTools::Diag::IsLegacy(this, a2);
    v9 = 352;
    if (IsLegacy)
    {
      v9 = 360;
    }

    v10 = (*(v5 + v9))(this, a2);
    v7 = v10;
    if (v10)
    {
      v11 = *(v5 + 296);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = ___ZN8GPUTools4Diag17SwizzleMTLTracker35MTLGPUDebugDevice_newDefaultLibraryEP11objc_objectP13objc_selector_block_invoke;
      block[3] = &unk_14468;
      v12 = v10;
      v16 = v12;
      dispatch_sync(v11, block);
      v13 = v12;
    }
  }

  return v7;
}

void ___ZN8GPUTools4Diag17SwizzleMTLTracker35MTLGPUDebugDevice_newDefaultLibraryEP11objc_objectP13objc_selector_block_invoke(uint64_t a1)
{
  v1 = DeviceObject(*(a1 + 32));
  v2 = GTSwizzleMTLTrackerLibraryWrapper;
  v3 = +[NSBundle mainBundle];
  v4 = [v3 pathForResource:@"default" ofType:@"metallib"];
  v5[1] = 0;
  v5[2] = 0;
  v5[0] = v4;
  v6 = 1;
  memset(v7, 0, sizeof(v7));
  if (GTSwizzleMTLTrackerLibraryWrapper)
  {
    v2 = [GTSwizzleMTLTrackerLibraryWrapper libraryWrapperWithLibrary:v5];
  }

  else
  {
  }

  objc_setAssociatedObject(v1, &GPUTools::Diag::AssociatedObjectKey, v2, &stru_2E8.segname[9]);
}

void GTToolsDiagnostics_DylibMain(void)
{
  v0 = +[NSBundle mainBundle];
  v1 = [v0 infoDictionary];

  if (v1)
  {
    v2 = +[NSProcessInfo processInfo];
    v3 = v2;
    if (v2)
    {
      [v2 operatingSystemVersion];
    }

    v4 = [NSString stringWithFormat:@"%lu.%lu", 0, 0];
    v5 = [v1 objectForKeyedSubscript:@"LSMinimumSystemVersion"];
    if (v5)
    {
      [v1 objectForKeyedSubscript:@"LSMinimumSystemVersion"];
    }

    else
    {
      [v1 objectForKeyedSubscript:@"MinimumOSVersion"];
    }
    v6 = ;

    if (v6 && ([v4 isEqualToString:v6] & 1) == 0)
    {
      v7 = os_log_create("com.apple.runtime-issues", "Metal Diagnostics Warning");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v8 = v6;
        v9 = [v6 UTF8String];
        v10 = v4;
        v11 = [v4 UTF8String];
        location[0] = 136315394;
        *&location[1] = v9;
        v13 = 2080;
        v14 = v11;
        _os_log_fault_impl(&dword_0, v7, OS_LOG_TYPE_FAULT, "Application Deployment Target Version (%s) does not match OS Version (%s) - diagnostics may be missing debug information", location, 0x16u);
      }
    }
  }

  operator new();
}

void GTToolsDiagnostics_DylibExit(void)
{
  {
    GPUTools::Diag::SwizzleMTLTracker::Tracker = 0;

    v2 = v0[36];
    v0[36] = 0;

    GPUTools::Diag::BacktraceStore::~BacktraceStore((v0 + 21));
    GPUTools::Diag::BacktraceStore::~BacktraceStore((v0 + 6));
    std::__hash_table<std::__hash_value_type<unsigned long,std::vector<unsigned long>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<unsigned long>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<unsigned long>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<unsigned long>>>>::~__hash_table((v0 + 1));

    operator delete();
  }
}

void GPUTools::Diag::BacktraceStore::~BacktraceStore(GPUTools::Diag::BacktraceStore *this)
{
  v2 = *(this + 14);
  *(this + 14) = 0;

  v3 = *(this + 11);
  if (v3)
  {
    do
    {
      v4 = *v3;
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(this + 4);
  v7 = *(this + 5);
  *(this + 8) = 0;
  v8 = v7 - v6;
  if (v8 >= 3)
  {
    do
    {
      operator delete(*v6);
      v7 = *(this + 5);
      v6 = (*(this + 4) + 8);
      *(this + 4) = v6;
      v8 = v7 - v6;
    }

    while (v8 > 2);
  }

  if (v8 == 1)
  {
    v9 = 512;
    goto LABEL_11;
  }

  if (v8 == 2)
  {
    v9 = 1024;
LABEL_11:
    *(this + 7) = v9;
  }

  if (v6 != v7)
  {
    do
    {
      v10 = *v6++;
      operator delete(v10);
    }

    while (v6 != v7);
    v12 = *(this + 4);
    v11 = *(this + 5);
    if (v11 != v12)
    {
      *(this + 5) = v11 + ((v12 - v11 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v13 = *(this + 3);
  if (v13)
  {
    operator delete(v13);
  }

  v14 = *this;
  if (*this)
  {
    *(this + 1) = v14;
    operator delete(v14);
  }
}

void ___ZN8GPUTools4Diag14BacktraceStore15InsertBacktraceENS0_9CallstackEm_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *v2;
  v4 = v2[8];
  if (v4)
  {
    v5 = v2[4];
    v6 = (*(v5 + ((v2[7] >> 7) & 0x1FFFFFFFFFFFFF8)))[v2[7] & 0x3FF];
    v7 = (v2[7] + 1);
    v2[7] = v7;
    v2[8] = v4 - 1;
    if (v7 >= 0x800)
    {
      operator delete(*v5);
      v2[4] += 8;
      v2[7] -= 1024;
      v3 = *a1[4];
    }

    memcpy(&v3[4104 * v6], a1 + 5, 0x1008uLL);
  }

  else
  {
    v9 = v2[1];
    v8 = v2[2];
    if (v9 >= v8)
    {
      v11 = v9 - v3;
      v12 = 0x803FE00FF803FE01 * (v11 >> 3) + 1;
      if (v12 > 0xFF803FE00FF80)
      {
        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      v13 = 0x803FE00FF803FE01 * ((v8 - v3) >> 3);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x7FC01FF007FC0)
      {
        v14 = 0xFF803FE00FF80;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        if (v14 <= 0xFF803FE00FF80)
        {
          operator new();
        }

        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      v15 = (8 * (v11 >> 3));
      memcpy(v15, a1 + 5, 0x1008uLL);
      v10 = v15 + 4104;
      v16 = &v15[-v11];
      memcpy(v16, v3, v11);
      *v2 = v16;
      v2[1] = v10;
      v2[2] = 0;
      if (v3)
      {
        operator delete(v3);
      }
    }

    else
    {
      memcpy(v2[1], a1 + 5, 0x1008uLL);
      v10 = v9 + 4104;
    }

    v2[1] = v10;
  }

  v17 = a1[4];
  v18 = a1[518];
  v19 = v17[10];
  if (!*&v19)
  {
    goto LABEL_36;
  }

  v20 = vcnt_s8(v19);
  v20.i16[0] = vaddlv_u8(v20);
  if (v20.u32[0] > 1uLL)
  {
    v21 = a1[518];
    if (v18 >= *&v19)
    {
      v21 = v18 % *&v19;
    }
  }

  else
  {
    v21 = (*&v19 - 1) & v18;
  }

  v22 = *(v17[9] + 8 * v21);
  if (!v22 || (v23 = *v22) == 0)
  {
LABEL_36:
    v25 = -133956095 * ((v17[1] - *v17) >> 3) - 1;
    operator new();
  }

  while (1)
  {
    v24 = v23[1];
    if (v24 == v18)
    {
      break;
    }

    if (v20.u32[0] > 1uLL)
    {
      if (v24 >= *&v19)
      {
        v24 %= *&v19;
      }
    }

    else
    {
      v24 &= *&v19 - 1;
    }

    if (v24 != v21)
    {
      goto LABEL_36;
    }

LABEL_35:
    v23 = *v23;
    if (!v23)
    {
      goto LABEL_36;
    }
  }

  if (v23[2] != v18)
  {
    goto LABEL_35;
  }
}

void GPUTools::Diag::BacktraceStore::RemoveBacktrace(GPUTools::Diag::BacktraceStore *this)
{
  v1 = __chkstk_darwin(this);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x103812000000;
  v12 = __Block_byref_object_copy__14;
  v13 = __Block_byref_object_dispose__15;
  v14 = &unk_1167A;
  bzero(&v15, 0x1008uLL);
  v7 = *(v5 + 112);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = ___ZN8GPUTools4Diag14BacktraceStore15RemoveBacktraceEm_block_invoke;
  v8[3] = &unk_14600;
  v8[5] = v5;
  v8[6] = v3;
  v8[4] = &v9;
  dispatch_sync(v7, v8);
  memcpy(v6, v10 + 6, 0x1008uLL);
  _Block_object_dispose(&v9, 8);
}

void ___ZN8GPUTools4Diag14BacktraceStore15RemoveBacktraceEm_block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = v1[10];
  if (v2)
  {
    v4 = a1[6];
    v5 = vcnt_s8(v2);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = a1[6];
      if (v4 >= *&v2)
      {
        v6 = v4 % *&v2;
      }
    }

    else
    {
      v6 = (*&v2 - 1) & v4;
    }

    v7 = *(v1[9] + 8 * v6);
    if (v7)
    {
      for (i = *v7; i; i = *i)
      {
        v9 = i[1];
        if (v9 == v4)
        {
          if (i[2] == v4)
          {
            memcpy((*(a1[4] + 8) + 48), (*v1 + 4104 * *(i + 6)), 0x1008uLL);
            v10 = a1[5];
            v11 = *(v10 + 32);
            v12 = *(v10 + 40);
            v13 = *(v10 + 32);
            if (v12 == v13)
            {
              v14 = 0;
            }

            else
            {
              v14 = ((v12 - v13) << 7) - 1;
            }

            v15 = *(v10 + 56);
            v16 = *(v10 + 64);
            v17 = v16 + v15;
            if (v14 == v16 + v15)
            {
              v18 = v15 >= 0x400;
              v19 = v15 - 1024;
              if (!v18)
              {
                v20 = *(v10 + 48);
                v21 = *(v10 + 24);
                if (v12 - v13 < (v20 - v21))
                {
                  operator new();
                }

                if (v20 == v21)
                {
                  v22 = 1;
                }

                else
                {
                  v22 = (v20 - v21) >> 2;
                }

                std::__allocate_at_least[abi:nn200100]<std::allocator<int *>>(v22);
              }

              *(v10 + 56) = v19;
              v34 = *v13;
              *(v10 + 32) = v13 + 8;
              std::__split_buffer<int *>::emplace_back<int *&>((v10 + 24), &v34);
              v13 = *(v10 + 32);
              v16 = *(v10 + 64);
              v17 = *(v10 + 56) + v16;
              v23 = a1[5];
            }

            else
            {
              v23 = a1[5];
            }

            *(*&v13[(v17 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v17 & 0x3FF)) = *(i + 6);
            *(v10 + 64) = v16 + 1;
            v24 = v23[10];
            v25 = i[1];
            v26 = vcnt_s8(v24);
            v26.i16[0] = vaddlv_u8(v26);
            if (v26.u32[0] > 1uLL)
            {
              if (v25 >= *&v24)
              {
                v25 %= *&v24;
              }
            }

            else
            {
              v25 &= *&v24 - 1;
            }

            v27 = v23[9];
            v28 = *(v27 + 8 * v25);
            do
            {
              v29 = v28;
              v28 = *v28;
            }

            while (v28 != i);
            if (v29 == v23 + 11)
            {
              goto LABEL_49;
            }

            v30 = v29[1];
            if (v26.u32[0] > 1uLL)
            {
              if (v30 >= *&v24)
              {
                v30 %= *&v24;
              }
            }

            else
            {
              v30 &= *&v24 - 1;
            }

            if (v30 != v25)
            {
LABEL_49:
              if (!*i)
              {
                goto LABEL_50;
              }

              v31 = *(*i + 8);
              if (v26.u32[0] > 1uLL)
              {
                if (v31 >= *&v24)
                {
                  v31 %= *&v24;
                }
              }

              else
              {
                v31 &= *&v24 - 1;
              }

              if (v31 != v25)
              {
LABEL_50:
                *(v27 + 8 * v25) = 0;
              }
            }

            v32 = *i;
            if (*i)
            {
              v33 = *(v32 + 8);
              if (v26.u32[0] > 1uLL)
              {
                if (v33 >= *&v24)
                {
                  v33 %= *&v24;
                }
              }

              else
              {
                v33 &= *&v24 - 1;
              }

              if (v33 != v25)
              {
                *(v23[9] + 8 * v33) = v29;
                v32 = *i;
              }
            }

            *v29 = v32;
            *i = 0;
            --v23[12];

            operator delete(i);
            return;
          }
        }

        else
        {
          if (v5.u32[0] > 1uLL)
          {
            if (v9 >= *&v2)
            {
              v9 %= *&v2;
            }
          }

          else
          {
            v9 &= *&v2 - 1;
          }

          if (v9 != v6)
          {
            return;
          }
        }
      }
    }
  }
}

void sub_B9AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<int *>::emplace_back<int *&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:nn200100]<std::allocator<int *>>(v11);
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

void std::__allocate_at_least[abi:nn200100]<std::allocator<int *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}