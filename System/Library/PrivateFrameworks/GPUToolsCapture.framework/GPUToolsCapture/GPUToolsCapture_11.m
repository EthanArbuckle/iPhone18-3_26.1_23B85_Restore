uint64_t ResourceIndicesCompare(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 != *a2;
  }
}

void WriteGTMTLSMLayer(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  v7 = *a1;
  Device = GTMTLSMContext_getDevice(*(a2 + 752), *(a3 + 40), *(a2 + 40));
  v95 = v7;
  v98 = *(a3 + 40);
  entry = find_entry(v6, &v98, 8uLL, 0);
  if (*entry && (v10 = *(*entry + 32)) != 0)
  {
    v11 = atomic_load((v10 + 56));
    v12 = (v10 + (~(v11 >> 2) & 8));
  }

  else
  {
    v12 = &dword_8;
  }

  v96 = *v12;
  v13 = Device[5];
  v14 = a1[1] + *(a1 + 4) - 512;
  v98 = 512;
  v97 = StoreMTLDeviceDescriptorUsingEncode(a1[4], v13, v14, &v98);
  DYTraceEncode_CAMetalLayer_setDevice(&v95, a1[1], *(a1 + 4), 0, 0);
  v15 = a1[1];
  v16 = a1[3];
  v17 = *v15;
  if ((*(v15 + 33) & 0x10) != 0)
  {
    v19 = a1[1];
    v18 = *v15;
    do
    {
      v19 = (v19 + v17);
      v17 = *v19;
      v18 += v17;
    }

    while ((*(v19 + 33) & 0x20) == 0);
  }

  else
  {
    v18 = *v15;
  }

  v20 = objc_autoreleasePoolPush();
  [*(v16 + 8) appendBytes:v15 length:{v18, v95, v96}];
  objc_autoreleasePoolPop(v20);
  v21 = *(a3 + 274);
  v22 = a1[1];
  *(v22 + 24) = 0;
  *(v22 + 8) = 0u;
  *(v22 + 32) = 0x69754300000000;
  *v22 = 0xFFFFE40800000028;
  *(v22 + 40) = v7;
  *(v22 + 48) = v21;
  *v22 = 52;
  v23 = a1[1];
  v24 = a1[3];
  v25 = *v23;
  if ((*(v23 + 33) & 0x10) != 0)
  {
    v27 = a1[1];
    v26 = *v23;
    do
    {
      v27 = (v27 + v25);
      v25 = *v27;
      v26 += v25;
    }

    while ((*(v27 + 33) & 0x20) == 0);
  }

  else
  {
    v26 = *v23;
  }

  v28 = objc_autoreleasePoolPush();
  [*(v24 + 8) appendBytes:v23 length:v26];
  objc_autoreleasePoolPop(v28);
  v29 = *(a3 + 272);
  v30 = a1[1];
  *(v30 + 24) = 0;
  *(v30 + 8) = 0u;
  *(v30 + 32) = 0x6C754300000000;
  *v30 = 0xFFFFE40300000028;
  *(v30 + 40) = v7;
  *(v30 + 48) = v29;
  *v30 = 56;
  v31 = a1[1];
  v32 = a1[3];
  v33 = *v31;
  if ((*(v31 + 33) & 0x10) != 0)
  {
    v35 = a1[1];
    v34 = *v31;
    do
    {
      v35 = (v35 + v33);
      v33 = *v35;
      v34 += v33;
    }

    while ((*(v35 + 33) & 0x20) == 0);
  }

  else
  {
    v34 = *v31;
  }

  v36 = objc_autoreleasePoolPush();
  [*(v32 + 8) appendBytes:v31 length:v34];
  objc_autoreleasePoolPop(v36);
  v37 = *(a3 + 176);
  v38 = a1[1];
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  *(v38 + 8) = 0;
  *v38 = 0xFFFFE40400000024;
  *(v38 + 32) = 0;
  strcpy((v38 + 36), "C@2d");
  *(v38 + 41) = 0;
  *(v38 + 43) = 0;
  *(v38 + 44) = v7;
  *(v38 + 52) = v37;
  *v38 = 68;
  v39 = a1[1];
  v40 = a1[3];
  v41 = *v39;
  if ((*(v39 + 33) & 0x10) != 0)
  {
    v43 = a1[1];
    v42 = *v39;
    do
    {
      v43 = (v43 + v41);
      v41 = *v43;
      v42 += v41;
    }

    while ((*(v43 + 33) & 0x20) == 0);
  }

  else
  {
    v42 = *v39;
  }

  v44 = objc_autoreleasePoolPush();
  [*(v40 + 8) appendBytes:v39 length:v42];
  objc_autoreleasePoolPop(v44);
  if (!*(a2 + 664))
  {
    v45 = *(a3 + 275);
    v46 = a1[1];
    *(v46 + 24) = 0;
    *(v46 + 8) = 0u;
    *(v46 + 32) = 0x69754300000000;
    *v46 = 0xFFFFE40E00000028;
    *(v46 + 40) = v7;
    *(v46 + 48) = v45;
    *v46 = 52;
    v47 = a1[1];
    v48 = a1[3];
    v49 = *v47;
    if ((*(v47 + 33) & 0x10) != 0)
    {
      v51 = a1[1];
      v50 = *v47;
      do
      {
        v51 = (v51 + v49);
        v49 = *v51;
        v50 += v49;
      }

      while ((*(v51 + 33) & 0x20) == 0);
    }

    else
    {
      v50 = *v47;
    }

    v52 = objc_autoreleasePoolPush();
    [*(v48 + 8) appendBytes:v47 length:v50];
    objc_autoreleasePoolPop(v52);
  }

  v53 = *(a3 + 216);
  v54 = *(a3 + 232);
  v55 = *(a3 + 208);
  v56 = a1[1];
  *(v56 + 16) = 0;
  *(v56 + 24) = 0;
  *(v56 + 8) = 0;
  *v56 = 0xFFFFE40600000024;
  *(v56 + 32) = 0;
  *(v56 + 36) = 0x6464344043;
  *(v56 + 44) = v7;
  *(v56 + 52) = v53;
  *(v56 + 68) = v54;
  *(v56 + 84) = v55;
  *v56 = 92;
  v57 = a1[1];
  v58 = a1[3];
  v59 = *v57;
  if ((*(v57 + 33) & 0x10) != 0)
  {
    v61 = a1[1];
    v60 = *v57;
    do
    {
      v61 = (v61 + v59);
      v59 = *v61;
      v60 += v59;
    }

    while ((*(v61 + 33) & 0x20) == 0);
  }

  else
  {
    v60 = *v57;
  }

  v62 = objc_autoreleasePoolPush();
  [*(v58 + 8) appendBytes:v57 length:v60];
  objc_autoreleasePoolPop(v62);
  v63 = *(a3 + 48);
  v64 = *(a3 + 64);
  v65 = *(a3 + 80);
  v66 = *(a3 + 96);
  v67 = *(a3 + 112);
  v68 = *(a3 + 128);
  v69 = *(a3 + 144);
  v70 = *(a3 + 160);
  v71 = *(a3 + 248);
  v72 = a1[1];
  *(v72 + 16) = 0;
  *(v72 + 24) = 0;
  *(v72 + 8) = 0;
  *v72 = 0xFFFFE00900000024;
  *(v72 + 32) = 0;
  *(v72 + 36) = 0x64646436314070;
  *(v72 + 44) = v7;
  *(v72 + 52) = v63;
  *(v72 + 68) = v64;
  *(v72 + 84) = v65;
  *(v72 + 100) = v66;
  *(v72 + 116) = v67;
  *(v72 + 132) = v68;
  *(v72 + 148) = v69;
  *(v72 + 164) = v70;
  *(v72 + 180) = v71;
  *v72 = 196;
  v73 = a1[1];
  LODWORD(v72) = v73[8];
  v73[8] = v72 | 0x10004;
  v74 = a1[3];
  v75 = *v73;
  if ((v72 & 0x1000) != 0)
  {
    v76 = *v73;
    v77 = v73;
    do
    {
      v77 = (v77 + v76);
      v76 = *v77;
      v75 += v76;
    }

    while ((*(v77 + 33) & 0x20) == 0);
  }

  v78 = objc_autoreleasePoolPush();
  [*(v74 + 8) appendBytes:v73 length:v75];
  objc_autoreleasePoolPop(v78);
  v79 = *(a3 + 192);
  v80 = a1[1];
  *(v80 + 16) = 0;
  *(v80 + 24) = 0;
  *(v80 + 8) = 0;
  *v80 = 0xFFFFE00B00000024;
  *(v80 + 32) = 0;
  strcpy((v80 + 36), "p@2d");
  *(v80 + 41) = 0;
  *(v80 + 43) = 0;
  *(v80 + 44) = v7;
  *(v80 + 52) = v79;
  *v80 = 68;
  v81 = a1[1];
  LODWORD(v80) = v81[8];
  v81[8] = v80 | 0x10004;
  v82 = a1[3];
  v83 = *v81;
  if ((v80 & 0x1000) != 0)
  {
    v84 = *v81;
    v85 = v81;
    do
    {
      v85 = (v85 + v84);
      v84 = *v85;
      v83 += v84;
    }

    while ((*(v85 + 33) & 0x20) == 0);
  }

  v86 = objc_autoreleasePoolPush();
  [*(v82 + 8) appendBytes:v81 length:v83];
  objc_autoreleasePoolPop(v86);
  v87 = *(a3 + 264);
  if (v87)
  {
    v95 = v7;
    v88 = a1[1] + *(a1 + 4) - 512;
    SavePointer(a1[4], (v87 + 16), *(v87 + 12), v88);
    v96 = v88;
    DYTraceEncode_CAMetalLayer_setColorspace(&v95, a1[1], *(a1 + 4), 0, 0);
    v89 = a1[1];
    v90 = a1[3];
    v91 = *v89;
    if ((*(v89 + 33) & 0x10) != 0)
    {
      v93 = a1[1];
      v92 = *v89;
      do
      {
        v93 = (v93 + v91);
        v91 = *v93;
        v92 += v91;
      }

      while ((*(v93 + 33) & 0x20) == 0);
    }

    else
    {
      v92 = *v89;
    }

    v94 = objc_autoreleasePoolPush();
    [*(v90 + 8) appendBytes:v89 length:v92];
    objc_autoreleasePoolPop(v94);
  }
}

uint64_t RetainDebugObject(void *a1)
{
  v1 = a1;
  v2 = DEVICEOBJECT(v1);
  os_unfair_lock_lock(&s_debugObjectsLock);
  v3 = s_debugObjects;
  if (!s_debugObjects)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = s_debugObjects;
    s_debugObjects = v4;

    v3 = s_debugObjects;
  }

  v6 = [NSNumber numberWithUnsignedLong:v2];
  [v3 setObject:v1 forKey:v6];

  os_unfair_lock_unlock(&s_debugObjectsLock);
  return 0;
}

void ReleaseDebugObject(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = atomic_load((a1 + 112));
  if (v6 != 1)
  {
    v7 = v6 != 2 || a2 == 0;
    if (v7 || (v11 = atomic_load((a2 + 56)), (v11 & 0x10) == 0))
    {
      v12 = v5;
      v8 = DEVICEOBJECT(v5);
      os_unfair_lock_lock(&s_debugObjectsLock);
      v9 = s_debugObjects;
      v10 = [NSNumber numberWithUnsignedLong:v8];
      [v9 removeObjectForKey:v10];

      os_unfair_lock_unlock(&s_debugObjectsLock);
      v5 = v12;
    }
  }
}

void ReleaseDebugObjects(uint64_t *a1, int a2)
{
  v7 = [[NSMutableArray alloc] initWithCapacity:a2];
  if (a2 >= 1)
  {
    v4 = a2;
    do
    {
      v5 = *a1++;
      v6 = [NSNumber numberWithUnsignedLongLong:v5];
      [v7 addObject:v6];

      --v4;
    }

    while (v4);
  }

  os_unfair_lock_lock(&s_debugObjectsLock);
  [s_debugObjects removeObjectsForKeys:v7];
  os_unfair_lock_unlock(&s_debugObjectsLock);
}

void *GetDebugLibrary(uint64_t a1)
{
  os_unfair_lock_lock(&s_debugObjectsLock);
  v2 = s_debugObjects;
  v3 = [NSNumber numberWithUnsignedLongLong:a1];
  v4 = [v2 objectForKeyedSubscript:v3];

  os_unfair_lock_unlock(&s_debugObjectsLock);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

BOOL EncodeDebugLibraryWithSource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 112))
  {
    return 0;
  }

  if (a3)
  {
    v8 = atomic_load((a3 + 56));
    v9 = (a3 + (~(v8 >> 2) & 8));
  }

  else
  {
    v9 = &dword_8;
  }

  v10 = *v9;
  v11 = GetDebugLibrary(*(a3 + 8));
  v12 = v11;
  v4 = v11 != 0;
  if (v11)
  {
    v13 = [v11 code];
    v14 = [v13 UTF8String];
    v15 = strlen(v14);
    v17[0] = *a1;
    v17[1] = v10;
    SavePointer(*(a1 + 32), v14, (v15 + 1), v19);
    v17[2] = v19;
    v17[3] = StoreMTLCompileOptionsUsingEncode(*(a1 + 32), *(a2 + 120), v18, a4);
    v17[4] = 0;
    DYTraceEncode_MTLDevice_newLibraryWithSource_options_error(v17, *(a1 + 8), *(a1 + 16), 0, 0);
  }

  return v4;
}

uint64_t StoreMTLCompileOptionsUsingEncode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = EncodeDYMTLCompileOptions(a2, 0, 0, a4);
  __chkstk_darwin(v8, v9);
  v11 = (&v13 - v10);
  bzero(&v13 - v10, v8);
  EncodeDYMTLCompileOptions(a2, v11, v8, a4);
  SavePointer(a1, v11, v8, a3);
  return a3;
}

BOOL EncodeDebugLibraryWithData(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 112))
  {
    return 0;
  }

  v6 = GetDebugLibrary(*(a3 + 8));
  v7 = v6;
  v3 = v6 != 0;
  if (v6)
  {
    v8 = [v6 code];
    size_ptr = 0;
    buffer_ptr = 0;
    v9 = dispatch_data_create_map(v8, &buffer_ptr, &size_ptr);
    v10 = *a1;
    v11 = atomic_load((a3 + 56));
    v12 = *(a3 + (~(v11 >> 2) & 8));
    v14[0] = v10;
    v14[1] = v12;
    SavePointer(a1[4], buffer_ptr, size_ptr, v17);
    v14[2] = v17;
    v14[3] = 0;
    DYTraceEncode_MTLDevice_newLibraryWithData_error(v14, a1[1], *(a1 + 4), 0, 0);
  }

  return v3;
}

uint64_t SaveDirPath(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = +[NSFileManager defaultManager];
  v10 = [NSString stringWithUTF8String:a2];
  v18 = 0;
  v11 = [v9 contentsOfDirectoryAtPath:v10 error:&v18];
  v12 = v18;
  v13 = DirToDict(v10, a4);
  v17 = v12;
  v14 = [NSKeyedArchiver archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v17];
  v15 = v17;

  SavePointer(a1, [v14 bytes], objc_msgSend(v14, "length"), a3);
  objc_autoreleasePoolPop(v8);
  return a3;
}

id DirToDict(void *a1, int a2)
{
  v2 = a1;
  v3 = +[NSMutableDictionary dictionary];
  v4 = +[NSFileManager defaultManager];
  v26 = 0;
  v5 = [v4 contentsOfDirectoryAtPath:v2 error:&v26];
  v6 = v26;
  v7 = v6;
  if (v5)
  {
    v18 = v6;
    v19 = v5;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (!v9)
    {
      goto LABEL_15;
    }

    v10 = v9;
    v11 = *v23;
    while (1)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [v2 stringByAppendingPathComponent:v13];
        v21 = 0;
        if ([v4 fileExistsAtPath:v14 isDirectory:&v21])
        {
          if (v21 == 1)
          {
            if (!a2)
            {
              goto LABEL_13;
            }

            v15 = DirToDict(v14, 1);
          }

          else
          {
            v15 = [v4 contentsAtPath:v14];
          }

          v16 = v15;
          [v3 setObject:v15 forKeyedSubscript:v13];
        }

LABEL_13:
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (!v10)
      {
LABEL_15:

        v7 = v18;
        v5 = v19;
        goto LABEL_17;
      }
    }
  }

  NSLog(@"Failed to read dictionary content at %@: %@", v2, v6);
LABEL_17:

  return v3;
}

uint64_t HashBytes(uint64_t *a1, unint64_t a2, char *a3)
{
  v4 = GTHash_data(a1, a2);
  sprintf(a3, "%llX", v4);
  return 0;
}

uint64_t SavePointer(uint64_t a1, uint64_t *a2, const void *a3, uint64_t a4)
{
  v8 = GTHash_data(a2, a3);
  __sprintf_chk(__s, 0, 0x41uLL, "%llX", v8);
  GTMTLCaptureState_storePointer(a1, __s, a2, a3);
  if (a4)
  {
    v9 = v15;
    *(a4 + 32) = v14;
    *(a4 + 48) = v9;
    *(a4 + 64) = v16;
    v10 = v13;
    *a4 = *__s;
    *(a4 + 16) = v10;
  }

  return a4;
}

char *SaveFileWithURL(uint64_t a1, char *a2, char *a3, void *a4, int a5)
{
  if (!a2)
  {
    return 0;
  }

  v9 = open(a2, 0, 0);
  if (v9 < 0)
  {
    return 0;
  }

  v10 = v9;
  v11 = lseek(v9, 0, 2);
  v12 = mmap(0, v11, 1, 2, v10, 0);
  close(v10);
  if (a4)
  {
    *a4 -= 65;
  }

  if (a5)
  {
    SavePointer(a1, v12, v11, a3);
  }

  else
  {
    GTMTLCaptureState_storePointer(a1, a3, v12, v11);
  }

  munmap(v12, v11);
  return a3;
}

uint64_t GTTrace_storePointer(uint64_t result, int a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v8 = a4;
  v61 = a5;
  v10 = &a4[a5];
  v11 = *(result + 32);
  if (a2 <= -15467)
  {
    if (a2 <= -15972)
    {
      if (a2 <= -16166)
      {
        if (a2 <= -16307)
        {
          if (a2 > -18425)
          {
            if (a2 > -16312)
            {
              if (a2 > -16310)
              {
                if (a2 == -16309)
                {
                  result = StoreMTLSamplerDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61);
                  goto LABEL_414;
                }

                if (a2 != -16307)
                {
                  return result;
                }

                goto LABEL_277;
              }

              if (a2 == -16311)
              {
                result = StoreMTLDepthStencilDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61);
                goto LABEL_414;
              }

              v12 = -16310;
              goto LABEL_245;
            }

            if (a2 > -16354)
            {
              if (a2 != -16353 && a2 != -16351)
              {
                return result;
              }

              result = StoreMTLRenderPassDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61, a6);
              goto LABEL_414;
            }

            if (a2 != -18424)
            {
              v12 = -16368;
LABEL_245:
              if (a2 != v12)
              {
                return result;
              }

              goto LABEL_246;
            }

LABEL_345:
            result = StoreMTLFXTemporalDenoisedScalerDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61);
            goto LABEL_414;
          }

          if (a2 <= -18429)
          {
            if (a2 == -18432)
            {
              goto LABEL_351;
            }

            if (a2 != -18431)
            {
              v26 = -18429;
LABEL_232:
              if (a2 != v26)
              {
                return result;
              }

              result = StoreMTLFXFrameInterpolatorDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61, a6);
              goto LABEL_414;
            }
          }

          else
          {
            if (a2 <= -18427)
            {
              if (a2 == -18428)
              {
                goto LABEL_345;
              }

LABEL_351:
              result = StoreMTLFXSpatialScalerDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61);
              goto LABEL_414;
            }

            if (a2 != -18426)
            {
              v26 = -18425;
              goto LABEL_232;
            }
          }

          result = StoreMTLFXTemporalScalerDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61);
          goto LABEL_414;
        }

        if (a2 > -16295)
        {
          if (a2 <= -16201)
          {
            if (a2 <= -16226)
            {
              if (a2 != -16294)
              {
                v14 = -16227;
                goto LABEL_336;
              }

              *(a3 + 16) = StoreMTLTextureDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61);
              result = StoreIOSurfaceUsingEncode(v11, *(a3 + 24), &v10[-v61], &v61);
LABEL_468:
              *(a3 + 24) = result;
              return result;
            }

            if (a2 != -16225)
            {
              v14 = -16223;
              goto LABEL_336;
            }

LABEL_337:
            v42 = *(a3 + 8);
            if (v42)
            {
              result = SavePointer(*(result + 32), (v42 + 16), *(v42 + 12), a4);
            }

            else
            {
              v8 = 0;
            }

            *(a3 + 8) = v8;
            return result;
          }

          if (a2 > -16199)
          {
            if (a2 != -16198)
            {
              v21 = -16197;
LABEL_285:
              if (a2 != v21)
              {
                return result;
              }
            }
          }

          else if (a2 != -16200)
          {
            v21 = -16199;
            goto LABEL_285;
          }

          v33 = *(a3 + 16);
          v34 = *(result + 32);
          v35 = a4;
LABEL_287:
          result = StoreMTLComputePipelineDescriptorUsingEncode(v34, v33, v35, &v61, a6);
          goto LABEL_414;
        }

        if (a2 <= -16304)
        {
          if (a2 == -16306)
          {
            goto LABEL_297;
          }

          v29 = *(a3 + 16);
          if (*(result + 48))
          {
            v8 = *(a3 + 16);
          }

          else if (v29)
          {
            v7 = a5 - 65;
            v61 = a5 - 65;
            SavePointer(v11, (v29 + 16), *(v29 + 12), a4);
          }

          else
          {
            v8 = 0;
          }

          *(a3 + 16) = v8;
          result = StoreMTLCompileOptionsUsingEncode_16210(v11, *(a3 + 24), &v10[-v7], &v61, a6);
          goto LABEL_468;
        }

        if (a2 > -16302)
        {
          if (a2 != -16301)
          {
            v20 = -16300;
LABEL_241:
            if (a2 != v20)
            {
              return result;
            }
          }
        }

        else if (a2 != -16303)
        {
          v20 = -16302;
          goto LABEL_241;
        }

        result = StoreMTLRenderPipelineDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61, a6);
        goto LABEL_414;
      }

      if (a2 <= -16040)
      {
        if (a2 <= -16121)
        {
          if (a2 == -16165)
          {
            result = StoreMTLCommandQueueDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61);
            goto LABEL_414;
          }

          if (a2 == -16163)
          {
            result = StoreIOSurfaceUsingEncode(*(result + 32), *(a3 + 16), a4, &v61);
            goto LABEL_414;
          }

          v14 = -16143;
          goto LABEL_336;
        }

        switch(a2)
        {
          case -16120:
            result = StoreMTLHeapDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61);
            goto LABEL_414;
          case -16116:
          case -16104:
          case -16099:
          case -16098:
            goto LABEL_246;
          case -16112:
            goto LABEL_341;
          case -16107:
          case -16106:
          case -16082:
          case -16081:
            result = StoreMTLFunctionConstantValuesUsingEncode(*(result + 32), *(a3 + 24), a4, &v61);
            goto LABEL_468;
          case -16101:
            goto LABEL_97;
          case -16096:
            goto LABEL_342;
          case -16095:
          case -16087:
            goto LABEL_297;
          case -16091:
          case -16090:
          case -16089:
          case -16088:
            result = StoreMTLTileRenderPipelineDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61, a6);
            goto LABEL_414;
          case -16077:
            goto LABEL_168;
          case -16076:
            goto LABEL_315;
          default:
            return result;
        }

        return result;
      }

      if (a2 <= -16030)
      {
        switch(a2)
        {
          case -16039:
            goto LABEL_277;
          case -16031:
LABEL_342:
            result = StoreMTLTextureDescriptorUsingEncode(*(result + 32), *(a3 + 32), a4, &v61);
            *(a3 + 32) = result;
            break;
          case -16030:
            result = StoreMTLTextureDescriptorUsingEncode(*(result + 32), *(a3 + 40), a4, &v61);
LABEL_369:
            *(a3 + 40) = result;
            break;
        }

        return result;
      }

      if (a2 <= -15981)
      {
        if (a2 != -16029 && a2 != -16018)
        {
          return result;
        }

LABEL_97:
        v17 = *(a3 + 16);
        if (v17)
        {
          v18 = *v17;
          v19 = UnwrapMTLArray_(*(result + 32), v17, a4, &v61, a6);
          v7 = v61;
        }

        else
        {
          v19 = 0;
          v18 = 0;
        }

        *(a3 + 16) = v19;
        result = StoreMTLImageFilterFunctionInfoSPIUsingEncode(v11, *(a3 + 24), &v10[-v7], &v61, v18);
        goto LABEL_468;
      }

      if (a2 != -15980)
      {
        if (a2 != -15972)
        {
          return result;
        }

LABEL_229:
        result = StoreMTLIndirectCommandBufferDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61);
        goto LABEL_414;
      }

LABEL_246:
      result = StoreMTLTextureDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61);
      goto LABEL_414;
    }

    if (a2 <= -15665)
    {
      if (a2 <= -15747)
      {
        if (a2 > -15849)
        {
          if (a2 <= -15794)
          {
            if (a2 <= -15831)
            {
              if (a2 == -15848)
              {
                result = StoreMTLCounterSampleBufferDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61);
                goto LABEL_414;
              }

              if (a2 != -15847)
              {
                return result;
              }

              result = StoreMTLImageFilterFunctionInfoSPIUsingEncode(*(result + 32), *(a3 + 32), a4, &v61, *(a3 + 24));
              goto LABEL_367;
            }

            if (a2 == -15830)
            {
              goto LABEL_297;
            }

            if (a2 != -15822)
            {
              return result;
            }

            goto LABEL_264;
          }

          if (a2 <= -15757)
          {
            if (a2 == -15793)
            {
              result = StoreMTLRasterizationRateMapDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61);
              goto LABEL_414;
            }

            if (a2 != -15777)
            {
              return result;
            }

            goto LABEL_246;
          }

          if (a2 != -15756)
          {
            v14 = -15753;
            goto LABEL_336;
          }

          v49 = *(a3 + 48);
          if (!v49)
          {
            goto LABEL_431;
          }

          goto LABEL_430;
        }

        if (a2 > -15964)
        {
          if (a2 > -15962)
          {
            if (a2 != -15961)
            {
              if (a2 != -15891)
              {
                return result;
              }

              result = StoreMTLMotionEstimationPipelineDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61);
              goto LABEL_414;
            }
          }

          else if (a2 != -15963)
          {
            goto LABEL_198;
          }

          v43 = *(a3 + 40);
          if (v43)
          {
            v7 = a5 - 65;
            result = SavePointer(*(result + 32), (v43 + 16), *(v43 + 12), a4);
          }

          else
          {
            v8 = 0;
          }

          *(a3 + 40) = v8;
          v49 = *(a3 + 48);
          if (!v49)
          {
LABEL_431:
            v8 = 0;
            goto LABEL_432;
          }

          v8 = &v10[-v7];
LABEL_430:
          result = SavePointer(v11, (v49 + 16), *(v49 + 12), v8);
LABEL_432:
          *(a3 + 48) = v8;
          return result;
        }

        if (a2 == -15971)
        {
          goto LABEL_297;
        }

        if (a2 == -15969)
        {
          goto LABEL_229;
        }

        if (a2 != -15964)
        {
          return result;
        }

LABEL_198:
        v27 = *(a3 + 40);
        if (v27)
        {
          result = SavePointer(*(result + 32), (v27 + 16), *(v27 + 12), a4);
        }

        else
        {
          v8 = 0;
        }

        *(a3 + 40) = v8;
        return result;
      }

      if (a2 <= -15717)
      {
        if (a2 > -15737)
        {
          if (a2 <= -15731)
          {
            if (a2 != -15736)
            {
              v13 = -15731;
LABEL_120:
              if (a2 != v13)
              {
                return result;
              }

LABEL_297:
              v37 = *(a3 + 16);
              if (v37)
              {
LABEL_298:
                result = SavePointer(v11, (v37 + 16), *(v37 + 12), v8);
LABEL_465:
                *(a3 + 16) = v8;
                return result;
              }

              goto LABEL_464;
            }

            result = StoreMTLCaptureDescriptorInternalUsingEncode(*(result + 32), *(a3 + 8), a4, &v61, a6);
            goto LABEL_410;
          }

          if (a2 == -15730)
          {
            goto LABEL_304;
          }

          v12 = -15719;
          goto LABEL_245;
        }

        if (a2 == -15746)
        {
          v53 = *(a3 + 8);
          if (v53)
          {
            v7 = a5 - 65;
            result = SavePointer(*(result + 32), (v53 + 16), *(v53 + 12), a4);
          }

          else
          {
            v8 = 0;
          }

          *(a3 + 8) = v8;
          v37 = *(a3 + 16);
          if (v37)
          {
            v8 = &v10[-v7];
            goto LABEL_298;
          }

LABEL_464:
          v8 = 0;
          goto LABEL_465;
        }

        if (a2 != -15741)
        {
          if (a2 != -15739)
          {
            return result;
          }

          goto LABEL_289;
        }
      }

      else
      {
        if (a2 <= -15694)
        {
          if (a2 > -15708)
          {
            if (a2 == -15707)
            {
              goto LABEL_297;
            }

            if (a2 != -15701)
            {
              return result;
            }

            result = StoreMTLCommandBufferDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61, a6);
            goto LABEL_414;
          }

          if (a2 != -15716)
          {
            if (a2 != -15714)
            {
              return result;
            }

LABEL_66:
            v15 = *(a3 + 24);
            if (v15)
            {
              goto LABEL_309;
            }

            goto LABEL_391;
          }

          goto LABEL_246;
        }

        if (a2 <= -15667)
        {
          if (a2 != -15693)
          {
            v14 = -15674;
            goto LABEL_336;
          }

          v46 = *(a3 + 24);
          v47 = *(result + 32);
          v48 = a4;
          goto LABEL_445;
        }

        if (a2 != -15666)
        {
LABEL_289:
          result = StoreMTLRenderPipelineDescriptorUsingEncode(*(result + 32), *(a3 + 8), a4, &v61, a6);
          goto LABEL_410;
        }
      }

      result = StoreMTLComputePipelineDescriptorUsingEncode(*(result + 32), *(a3 + 8), a4, &v61, a6);
      goto LABEL_410;
    }

    if (a2 <= -15578)
    {
      if (a2 > -15610)
      {
        if (a2 > -15587)
        {
          if (a2 <= -15585)
          {
            if (a2 == -15586)
            {
              result = StoreMTLComputePassDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61, a6);
            }

            else
            {
              result = StoreMTLResourceStatePassDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61, a6);
            }

            goto LABEL_414;
          }

          if (a2 != -15584)
          {
            if (a2 != -15578)
            {
              return result;
            }

LABEL_282:
            result = StoreMTLVisibleFunctionTableDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61);
            goto LABEL_414;
          }

          result = StoreMTLComputePassDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61, a6);
          *(a3 + 16) = result;
          v15 = *(a3 + 24);
          if (v15)
          {
            v8 = &v10[-v61];
            goto LABEL_309;
          }

LABEL_391:
          v8 = 0;
          goto LABEL_392;
        }

        if (a2 > -15598)
        {
          if (a2 != -15597)
          {
            if (a2 != -15587)
            {
              return result;
            }

            result = StoreMTLBlitPassDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61, a6);
            goto LABEL_414;
          }

          result = UnwrapArray_(*(result + 32), *(a3 + 8), a4, &v61, *(a3 + 24), a6);
          goto LABEL_410;
        }

        if (a2 != -15609 && a2 != -15608)
        {
          return result;
        }

        goto LABEL_294;
      }

      if (a2 <= -15625)
      {
        if (a2 != -15664)
        {
          if (a2 != -15647)
          {
            v28 = -15638;
            goto LABEL_254;
          }

LABEL_255:
          result = StoreMTLAccelerationStructureDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61, a6);
          goto LABEL_414;
        }

        result = StoreMTLTileRenderPipelineDescriptorUsingEncode(*(result + 32), *(a3 + 8), a4, &v61, a6);
        goto LABEL_410;
      }

      if (a2 <= -15616)
      {
        if (a2 != -15624)
        {
          if (a2 != -15617)
          {
            return result;
          }

          result = StoreMTLFunctionDescriptorUsingEncode(*(result + 32), *(a3 + 24), a4, &v61, a6);
          goto LABEL_468;
        }

        goto LABEL_337;
      }

      if (a2 == -15615)
      {
        goto LABEL_255;
      }

      v25 = -15613;
LABEL_249:
      if (a2 != v25)
      {
        return result;
      }

      goto LABEL_277;
    }

    if (a2 > -15525)
    {
      if (a2 > -15499)
      {
        if (a2 <= -15476)
        {
          if (a2 == -15498)
          {
            *(a3 + 8) = UnwrapMTLArray_(*(result + 32), *(a3 + 8), a4, &v61, a6);
            v33 = *(a3 + 16);
            v35 = &v10[-v61];
            v34 = v11;
            goto LABEL_287;
          }

          if (a2 != -15497)
          {
            return result;
          }

          *(a3 + 8) = UnwrapMTLArray_(*(result + 32), *(a3 + 8), a4, &v61, a6);
          v22 = *(a3 + 16);
          v23 = v61;
          if (v22)
          {
            v24 = &v10[-v61];
            v23 = v61 - 65;
            v61 -= 65;
            SavePointer(v11, (v22 + 16), *(v22 + 12), v24);
          }

          else
          {
            v24 = 0;
          }

          *(a3 + 16) = v24;
          v46 = *(a3 + 24);
          v48 = &v10[-v23];
          v47 = v11;
LABEL_445:
          result = UnwrapMTLArray_(v47, v46, v48, &v61, a6);
          goto LABEL_468;
        }

        if (a2 != -15475)
        {
          if (a2 == -15473)
          {
            v36 = *(a3 + 80);
            if (v36)
            {
              result = SavePointer(*(result + 32), (v36 + 16), *(v36 + 12), a4);
            }

            else
            {
              v8 = 0;
            }

            *(a3 + 80) = v8;
          }

          return result;
        }

LABEL_294:
        result = StoreMTLFunctionDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61, a6);
        goto LABEL_414;
      }

      if (a2 > -15510)
      {
        if (a2 == -15509)
        {
          result = StoreMTLBufferDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61);
          goto LABEL_414;
        }

        v14 = -15499;
        goto LABEL_336;
      }

      if (a2 == -15524)
      {
LABEL_127:
        result = UnwrapMTLArray_(*(result + 32), *(a3 + 16), a4, &v61, a6);
        goto LABEL_414;
      }

      v16 = -15522;
LABEL_126:
      if (a2 != v16)
      {
        return result;
      }

      goto LABEL_127;
    }

    if (a2 <= -15551)
    {
      if (a2 != -15577)
      {
        if (a2 == -15552)
        {
          result = StoreMTLAccelerationStructureDescriptorUsingEncode(*(result + 32), *(a3 + 8), a4, &v61, a6);
          goto LABEL_410;
        }

        if (a2 != -15551)
        {
          return result;
        }

        goto LABEL_213;
      }
    }

    else
    {
      if (a2 <= -15541)
      {
        if (a2 != -15550)
        {
          v16 = -15541;
          goto LABEL_126;
        }

LABEL_213:
        result = StoreMTLIntersectionFunctionDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61);
        goto LABEL_414;
      }

      if (a2 != -15540)
      {
        v25 = -15531;
        goto LABEL_249;
      }
    }

LABEL_251:
    result = StoreMTLIntersectionFunctionTableDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61);
    goto LABEL_414;
  }

  if (a2 <= -15135)
  {
    if (a2 <= -15367)
    {
      switch(a2)
      {
        case -15466:
          *(a3 + 16) = UnwrapMTLArray_(*(result + 32), *(a3 + 16), a4, &v61, a6);
          result = StoreMTLAccelerationStructureDescriptorUsingEncode(v11, *(a3 + 40), &v10[-v61], &v61, a6);
          goto LABEL_369;
        case -15465:
          v30 = *(a3 + 32);
          v32 = *(result + 32);
          v31 = a4;
          goto LABEL_366;
        case -15462:
        case -15443:
        case -15442:
        case -15441:
          goto LABEL_251;
        case -15461:
          result = StoreMTLRenderPipelineFunctionsDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61, a6);
          goto LABEL_414;
        case -15460:
        case -15440:
        case -15439:
        case -15438:
          goto LABEL_282;
        case -15435:
        case -15434:
        case -15425:
        case -15421:
        case -15420:
        case -15419:
          result = StoreMTLStitchedLibraryDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61, a6);
          goto LABEL_414;
        case -15430:
        case -15428:
        case -15399:
        case -15389:
          goto LABEL_297;
        case -15429:
        case -15427:
        case -15395:
        case -15385:
          goto LABEL_304;
        case -15426:
          result = StoreMTLStitchedLibraryDescriptorUsingEncode(*(result + 32), *(a3 + 8), a4, &v61, a6);
          goto LABEL_410;
        case -15411:
          result = StoreMTLRasterizationRateMapDescriptorUsingEncode(*(result + 32), *(a3 + 8), a4, &v61);
          goto LABEL_410;
        case -15406:
        case -15405:
        case -15404:
        case -15403:
          result = StoreMTLMeshRenderPipelineDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61, a6);
          goto LABEL_414;
        case -15398:
        case -15388:
          goto LABEL_337;
        default:
          return result;
      }

      return result;
    }

    if (a2 <= -15261)
    {
      if (a2 > -15351)
      {
        if (a2 <= -15283)
        {
          if (a2 <= -15297)
          {
            if (a2 != -15350)
            {
              v13 = -15348;
              goto LABEL_120;
            }

            result = StoreMTLIOCommandQueueDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61);
LABEL_414:
            *(a3 + 16) = result;
            return result;
          }

          if (a2 == -15296)
          {
            goto LABEL_297;
          }

          v14 = -15294;
          goto LABEL_336;
        }

        if (a2 <= -15274)
        {
          if (a2 != -15282)
          {
            v14 = -15281;
            goto LABEL_336;
          }

LABEL_304:
          v38 = *(a3 + 16);
          if (v38)
          {
            v7 = a5 - 65;
            result = SavePointer(*(result + 32), (v38 + 16), *(v38 + 12), a4);
          }

          else
          {
            v8 = 0;
          }

          *(a3 + 16) = v8;
          v15 = *(a3 + 24);
          if (v15)
          {
            v8 = &v10[-v7];
LABEL_309:
            result = SavePointer(v11, (v15 + 16), *(v15 + 12), v8);
LABEL_392:
            *(a3 + 24) = v8;
            return result;
          }

          goto LABEL_391;
        }

        if (a2 == -15273)
        {
          goto LABEL_304;
        }

        v14 = -15272;
LABEL_336:
        if (a2 != v14)
        {
          return result;
        }

        goto LABEL_337;
      }

      if (a2 > -15363)
      {
        if (a2 <= -15357)
        {
          if (a2 == -15362)
          {
            result = StoreMTLAccelerationStructureDescriptorUsingEncode(*(result + 32), *(a3 + 24), a4, &v61, a6);
          }

          else
          {
            if (a2 != -15358)
            {
              return result;
            }

            result = StoreMTLAccelerationStructureAllocationDescriptorUsingEncode(*(result + 32), *(a3 + 24), a4, &v61);
          }

          goto LABEL_468;
        }

        if (a2 != -15356)
        {
          v28 = -15355;
LABEL_254:
          if (a2 != v28)
          {
            return result;
          }

          goto LABEL_255;
        }

        goto LABEL_255;
      }

      if (a2 == -15366)
      {
        goto LABEL_255;
      }

      if (a2 == -15364)
      {
        result = StoreMTLAccelerationStructurePassDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61, a6);
        goto LABEL_414;
      }

      if (a2 != -15363)
      {
        return result;
      }

      *(a3 + 24) = UnwrapMTLArray_(*(result + 32), *(a3 + 24), a4, &v61, a6);
      v30 = *(a3 + 32);
      v31 = &v10[-v61];
      v32 = v11;
LABEL_366:
      result = StoreMTLAccelerationStructureDescriptorUsingEncode(v32, v30, v31, &v61, a6);
LABEL_367:
      *(a3 + 32) = result;
      return result;
    }

    if (a2 <= -15173)
    {
      if (a2 <= -15201)
      {
        if (a2 == -15260 || a2 == -15259)
        {
          goto LABEL_297;
        }

        if (a2 != -15245)
        {
          return result;
        }

        result = StoreMTLResidencySetDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61);
      }

      else if (a2 > -15195)
      {
        if (a2 == -15194)
        {
          result = StoreMTL4CompilerDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61, a6);
        }

        else
        {
          if (a2 != -15189)
          {
            return result;
          }

          result = StoreMTLResourceViewPoolDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61);
        }
      }

      else if (a2 == -15200)
      {
        result = StoreMTL4ArgumentTableDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61);
      }

      else
      {
        if (a2 != -15197)
        {
          return result;
        }

        result = StoreMTL4CommandAllocatorDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61);
      }

      goto LABEL_414;
    }

    if (a2 <= -15141)
    {
      if (a2 <= -15166)
      {
        if (a2 == -15172)
        {
          result = StoreMTL4CommandBufferOptionsUsingEncode(*(result + 32), *(a3 + 24), a4, &v61, a6);
          goto LABEL_468;
        }

        if (a2 != -15166)
        {
          return result;
        }

LABEL_346:
        result = StoreMTL4RenderPassDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61, a6);
        goto LABEL_414;
      }

      if (a2 == -15165)
      {
        goto LABEL_346;
      }

      if (a2 != -15141)
      {
        return result;
      }

LABEL_301:
      *(a3 + 16) = StoreMTL4PipelineDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61, a6);
      result = StoreMTL4CompilerTaskOptionsUsingEncode(v11, *(a3 + 24), &v10[-v61], &v61, a6);
      goto LABEL_468;
    }

    if (a2 <= -15137)
    {
      if (a2 == -15140)
      {
        goto LABEL_301;
      }

      v25 = -15137;
      goto LABEL_249;
    }

    if (a2 != -15136)
    {
LABEL_311:
      result = StoreMTL4LibraryDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61, a6);
      goto LABEL_414;
    }

LABEL_277:
    result = SaveFileWithURL(*(result + 32), *(a3 + 16), a4, &v61, 1);
    goto LABEL_414;
  }

  if (a2 > -10191)
  {
    if (a2 > -7154)
    {
      switch(a2)
      {
        case -6143:
        case -6131:
        case -6111:
          *(a3 + 16) = StoreMPSPluginCNNConvolutionDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61);
          result = StoreMPSPluginCNNConvolutionDataUsingEncode(v11, *(a3 + 24), &v10[-v61], &v61);
          goto LABEL_468;
        case -6142:
          *(a3 + 56) = StoreMPSSourceTextureInfoUsingEncode(*(result + 32), *(a3 + 56), a4, &v61);
          result = StoreMPSDestinationTextureInfoUsingEncode(v11, *(a3 + 80), &v10[-v61], &v61);
          *(a3 + 80) = result;
          return result;
        case -6141:
        case -6140:
        case -6139:
        case -6138:
        case -6137:
        case -6136:
        case -6134:
        case -6133:
        case -6132:
        case -6130:
        case -6128:
        case -6124:
        case -6123:
        case -6122:
        case -6119:
        case -6116:
        case -6113:
        case -6112:
        case -6110:
        case -6109:
        case -6108:
        case -6107:
        case -6106:
        case -6105:
        case -6104:
        case -6103:
        case -6101:
          return result;
        case -6135:
        case -6126:
        case -6121:
          *(a3 + 48) = StoreMPSSourceTextureInfoUsingEncode(*(result + 32), *(a3 + 48), a4, &v61);
          result = StoreMPSDestinationTextureInfoUsingEncode(v11, *(a3 + 64), &v10[-v61], &v61);
          *(a3 + 64) = result;
          return result;
        case -6129:
          goto LABEL_66;
        case -6127:
        case -6120:
          result = StoreMPSPluginCNNConvolutionDataUsingEncode(*(result + 32), *(a3 + 8), a4, &v61);
          goto LABEL_410;
        case -6125:
          *(a3 + 56) = StoreMPSSourceTextureInfoUsingEncode(*(result + 32), *(a3 + 56), a4, &v61);
          *(a3 + 72) = StoreMPSSourceTextureInfoUsingEncode(v11, *(a3 + 72), &v10[-v61], &v61);
          goto LABEL_421;
        case -6118:
          *(a3 + 64) = StoreMPSSourceTextureInfoUsingEncode(*(result + 32), *(a3 + 64), a4, &v61);
          *(a3 + 88) = StoreMPSSourceTextureInfoUsingEncode(v11, *(a3 + 88), &v10[-v61], &v61);
          result = StoreMPSDestinationTextureInfoUsingEncode(v11, *(a3 + 112), &v10[-v61], &v61);
          *(a3 + 112) = result;
          return result;
        case -6117:
          *(a3 + 56) = StoreMPSSourceTextureInfoUsingEncode(*(result + 32), *(a3 + 56), a4, &v61);
          result = StoreMPSDestinationTextureInfoUsingEncode(v11, *(a3 + 72), &v10[-v61], &v61);
          *(a3 + 72) = result;
          return result;
        case -6115:
          *(a3 + 64) = StoreMPSSourceTextureInfoUsingEncode(*(result + 32), *(a3 + 64), a4, &v61);
LABEL_421:
          result = StoreMPSDestinationTextureInfoUsingEncode(v11, *(a3 + 88), &v10[-v61], &v61);
          goto LABEL_423;
        case -6114:
          *(a3 + 64) = StoreMPSSourceTextureInfoUsingEncode(*(result + 32), *(a3 + 64), a4, &v61);
          result = StoreMPSSourceTextureInfoUsingEncode(v11, *(a3 + 88), &v10[-v61], &v61);
          goto LABEL_423;
        case -6102:
        case -6100:
        case -6099:
        case -6098:
          *(a3 + 56) = StoreMPSNDArrayStructureUsingEncode(*(result + 32), *(a3 + 56), a4, &v61);
          *(a3 + 72) = StoreMPSNDArrayStructureUsingEncode(v11, *(a3 + 72), &v10[-v61], &v61);
          *(a3 + 88) = StoreMPSNDArrayStructureUsingEncode(v11, *(a3 + 88), &v10[-v61], &v61);
          result = StoreMPSNDArrayStructureUsingEncode(v11, *(a3 + 104), &v10[-v61], &v61);
          *(a3 + 104) = result;
          return result;
        case -6097:
          *(a3 + 56) = StoreMPSNDArrayStructureUsingEncode(*(result + 32), *(a3 + 56), a4, &v61);
          *(a3 + 72) = StoreMPSNDArrayStructureUsingEncode(v11, *(a3 + 72), &v10[-v61], &v61);
          result = StoreMPSNDArrayStructureUsingEncode(v11, *(a3 + 88), &v10[-v61], &v61);
LABEL_423:
          *(a3 + 88) = result;
          return result;
        case -6096:
        case -6095:
          result = StoreMPSPluginNDArrayConvolutionDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61);
          goto LABEL_414;
        default:
          if (a2 == -7153)
          {
            v54 = *(a3 + 8);
            if (v54)
            {
              result = SavePointer(*(result + 32), (v54 + 16), *(v54 + 12), a4);
            }

            else
            {
              v8 = 0;
            }

            *(a3 + 8) = v8;
            return result;
          }

          if (a2 != -6654)
          {
            return result;
          }

          result = StoreMTLDeviceDescriptorUsingEncode(*(result + 32), *(a3 + 24), a4, &v61);
          break;
      }

      goto LABEL_468;
    }

    if (a2 > -10155)
    {
      if (a2 > -10140)
      {
        if (a2 != -10139)
        {
          if (a2 != -7163)
          {
            return result;
          }

          result = StoreMTLDeviceDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61);
          goto LABEL_414;
        }
      }

      else if (a2 != -10154)
      {
        v14 = -10152;
        goto LABEL_336;
      }

      goto LABEL_255;
    }

    switch(a2)
    {
      case -10190:
        v45 = *(a3 + 8);
        if (v45)
        {
          v7 = a5 - 65;
          result = SavePointer(*(result + 32), (v45 + 16), *(v45 + 12), a4);
        }

        else
        {
          v8 = 0;
        }

        *(a3 + 8) = v8;
        v44 = *(a3 + 24);
        if (!v44)
        {
          goto LABEL_441;
        }

        v8 = &v10[-v7];
        goto LABEL_440;
      case -10157:
        result = StoreMTLFunctionDescriptorUsingEncode(*(result + 32), *(a3 + 8), a4, &v61, a6);
        break;
      case -10156:
        result = UnwrapMTLArray_(*(result + 32), *(a3 + 8), a4, &v61, a6);
        break;
      default:
        return result;
    }

    goto LABEL_410;
  }

  if (a2 <= -14837)
  {
    if (a2 <= -14921)
    {
      if (a2 <= -15022)
      {
        if (a2 <= -15131)
        {
          if (a2 != -15134)
          {
            if (a2 != -15131)
            {
              return result;
            }

            goto LABEL_301;
          }

          goto LABEL_311;
        }

        if (a2 == -15130)
        {
          goto LABEL_301;
        }

        if (a2 != -15027)
        {
          return result;
        }

        goto LABEL_315;
      }

      if (a2 <= -14970)
      {
        if (a2 != -15021)
        {
          if (a2 != -15019)
          {
            return result;
          }

LABEL_168:
          result = StoreMTLViewportUsingEncode(*(result + 32), *(a3 + 8), a4, &v61, *(a3 + 16));
          goto LABEL_410;
        }

LABEL_264:
        result = StoreMTLVertexAmplificationViewMappingUsingEncode(*(result + 32), *(a3 + 16), a4, &v61, *(a3 + 8));
        goto LABEL_414;
      }

      if (a2 == -14969)
      {
        result = StoreMTLTextureViewDescriptorUsingEncode(*(result + 32), *(a3 + 24), a4, &v61);
        goto LABEL_468;
      }

      v40 = -14959;
LABEL_332:
      if (a2 != v40)
      {
        return result;
      }

      result = StoreMTLTensorDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61);
      goto LABEL_414;
    }

    if (a2 <= -14870)
    {
      if (a2 <= -14872)
      {
        if (a2 == -14920)
        {
LABEL_315:
          result = StoreMTLScissorRectUsingEncode(*(result + 32), *(a3 + 8), a4, &v61, *(a3 + 16));
          goto LABEL_410;
        }

        if (a2 != -14915)
        {
          return result;
        }

        goto LABEL_168;
      }

      *(a3 + 16) = StoreMTL4PipelineDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61, a6);
      v39 = StoreMTL4PipelineStageDynamicLinkingDescriptorUsingEncode(v11, *(a3 + 24), &v10[-v61], &v61, a6);
LABEL_348:
      *(a3 + 24) = v39;
      result = StoreMTL4CompilerTaskOptionsUsingEncode(v11, *(a3 + 32), &v10[-v61], &v61, a6);
      goto LABEL_367;
    }

    if (a2 <= -14868)
    {
      result = StoreMTL4PipelineDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61, a6);
      goto LABEL_414;
    }

    if (a2 != -14867)
    {
      v40 = -14840;
      goto LABEL_332;
    }

LABEL_347:
    *(a3 + 16) = StoreMTL4PipelineDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61, a6);
    v39 = StoreMTL4RenderPipelineDynamicLinkingDescriptorUsingEncode(v11, *(a3 + 24), &v10[-v61], &v61, a6);
    goto LABEL_348;
  }

  if (a2 > -14803)
  {
    if (a2 <= -10240)
    {
      if (a2 > -12273)
      {
        if (a2 == -12272)
        {
          v50 = *(a3 + 8);
          if (v50 != 116)
          {
            if (v50 != 111)
            {
              return result;
            }

            result = StoreMTLFunctionConstantValuesUsingEncode(*(result + 32), *(a3 + 16), a4, &v61);
            goto LABEL_414;
          }
        }

        else if (a2 != -10240)
        {
          return result;
        }

        v51 = *(a3 + 16);
        if (v51)
        {
          result = SavePointer(*(result + 32), (v51 + 16), *(v51 + 12), a4);
        }

        else
        {
          v8 = 0;
        }

        *(a3 + 16) = v8;
        return result;
      }

      if (a2 != -14802)
      {
        if (a2 != -14801)
        {
          return result;
        }

        result = StoreMTLTextureViewDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61);
        goto LABEL_414;
      }

LABEL_341:
      result = StoreMTLTextureDescriptorUsingEncode(*(result + 32), *(a3 + 24), a4, &v61);
      goto LABEL_468;
    }

    if (a2 > -10230)
    {
      if (a2 == -10229)
      {
        v52 = *(a3 + 8);
        if (v52)
        {
          v7 = a5 - 65;
          result = SavePointer(*(result + 32), (v52 + 16), *(v52 + 12), a4);
        }

        else
        {
          v8 = 0;
        }

        *(a3 + 8) = v8;
        v55 = *(a3 + 16);
        if (v55)
        {
          v56 = &v10[-v7];
          v7 -= 65;
          result = SavePointer(v11, (v55 + 16), *(v55 + 12), v56);
        }

        else
        {
          v56 = 0;
        }

        *(a3 + 16) = v56;
        v57 = *(a3 + 24);
        if (v57)
        {
          v58 = &v10[-v7];
          v7 -= 65;
          result = SavePointer(v11, (v57 + 16), *(v57 + 12), v58);
        }

        else
        {
          v58 = 0;
        }

        *(a3 + 24) = v58;
        v59 = *(a3 + 32);
        if (v59)
        {
          v60 = &v10[-v7];
          result = SavePointer(v11, (v59 + 16), *(v59 + 12), &v10[-v7]);
        }

        else
        {
          v60 = 0;
        }

        *(a3 + 32) = v60;
        return result;
      }

      v14 = -10194;
      goto LABEL_336;
    }

    if (a2 == -10239)
    {
      result = StoreMTLDeviceDescriptorUsingEncode(*(result + 32), *(a3 + 8), a4, &v61);
    }

    else
    {
      if (a2 != -10231)
      {
        return result;
      }

      result = StoreMTLTextureMipmapInfo2UsingEncode(*(result + 32), *(a3 + 8), a4, &v61);
    }

LABEL_410:
    *(a3 + 8) = result;
    return result;
  }

  if (a2 <= -14829)
  {
    if (a2 <= -14833)
    {
      if (a2 != -14836)
      {
        if (a2 != -14834)
        {
          return result;
        }

        result = StoreMTL4CommandQueueDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61);
        goto LABEL_414;
      }

      goto LABEL_347;
    }

    if (a2 != -14832 && a2 != -14829)
    {
      return result;
    }

LABEL_319:
    result = StoreMTL4AccelerationStructureDescriptorUsingEncode(*(result + 32), *(a3 + 16), a4, &v61);
    goto LABEL_414;
  }

  if (a2 <= -14823)
  {
    if (a2 == -14828)
    {
      goto LABEL_319;
    }

    if (a2 != -14823)
    {
      return result;
    }

LABEL_349:
    v44 = *(a3 + 24);
    if (!v44)
    {
LABEL_441:
      v8 = 0;
      goto LABEL_442;
    }

LABEL_440:
    result = SavePointer(v11, (v44 + 16), *(v44 + 12), v8);
LABEL_442:
    *(a3 + 24) = v8;
    return result;
  }

  if (a2 == -14822)
  {
    goto LABEL_349;
  }

  if (a2 == -14803)
  {
    v41 = *(a3 + 280);
    if (v41)
    {
      result = SavePointer(*(result + 32), (v41 + 16), *(v41 + 12), a4);
    }

    else
    {
      v8 = 0;
    }

    *(a3 + 280) = v8;
  }

  return result;
}

uint64_t StoreMTLImageFilterFunctionInfoSPIUsingEncode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v10 = EncodeDYMTLImageFilterFunctionInfoSPI(a2, a5, 0, 0);
  v11 = GTCoreAlloc(v10, v10);
  EncodeDYMTLImageFilterFunctionInfoSPI(a2, a5, v11, v10);
  *a4 -= 65;
  SavePointer(a1, v11, v10, a3);
  vm_deallocate(mach_task_self_, v11, v10);
  return a3;
}

uint64_t StoreMTLFunctionConstantValuesUsingEncode(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = EncodeDYMTLFunctionConstantValues(a2, 0, 0);
  v9 = GTCoreAlloc(v8, v8);
  EncodeDYMTLFunctionConstantValues(a2, v9, v8);
  *a4 -= 65;
  SavePointer(a1, v9, v8, a3);
  vm_deallocate(mach_task_self_, v9, v8);
  return a3;
}

uint64_t UnwrapMTLArray_(uint64_t a1, unint64_t *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v10 = *a2;
  v11 = 8 * *a2;
  __chkstk_darwin(a1, a2);
  v12 = (&v19 - ((v11 + 31) & 0xFFFFFFFFFFFFFFF0));
  bzero(v12, v11 + 16);
  *v12 = 115;
  v12[1] = v10;
  if (v10)
  {
    v13 = 0;
    do
    {
      v19 = a2[v13 + 1];
      entry = find_entry(a5, &v19, 8uLL, 0);
      v15 = &dword_8;
      if (*entry)
      {
        v16 = *(*entry + 32);
        if (v16)
        {
          v17 = atomic_load((v16 + 56));
          v15 = (v16 + (~(v17 >> 2) & 8));
        }

        else
        {
          v15 = &dword_8;
        }
      }

      v12[v13++ + 2] = *v15;
    }

    while (*a2 > v13);
  }

  *a4 -= 65;
  SavePointer(a1, (&v19 - ((v11 + 31) & 0xFFFFFFFFFFFFFFF0)), (v11 + 16), a3);
  return a3;
}

uint64_t UnwrapArray_(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    return 0;
  }

  v20 = a1;
  v11 = (8 * a5);
  __chkstk_darwin(a1, a2);
  bzero(&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  if (a5)
  {
    v12 = 0;
    v13 = 1;
    do
    {
      v21 = *(a2 + 8 * v12);
      entry = find_entry(a6, &v21, 8uLL, 0);
      v15 = &dword_8;
      if (*entry)
      {
        v16 = *(*entry + 32);
        if (v16)
        {
          v17 = atomic_load((v16 + 56));
          v15 = (v16 + (~(v17 >> 2) & 8));
        }

        else
        {
          v15 = &dword_8;
        }
      }

      *(&v19 + 8 * v12 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)) = *v15;
      v12 = v13++;
    }

    while (v12 < a5);
  }

  *a4 -= 65;
  SavePointer(v20, (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), v11, a3);
  return a3;
}

uint64_t StoreMTLTextureMipmapInfo2UsingEncode(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = EncodeDYMTLTextureMipmapInfo2(a2, 0, 0);
  v9 = GTCoreAlloc(v8, v8);
  EncodeDYMTLTextureMipmapInfo2(a2, v9, v8);
  *a4 -= 65;
  SavePointer(a1, v9, v8, a3);
  vm_deallocate(mach_task_self_, v9, v8);
  return a3;
}

uint64_t StoreMTLDeviceDescriptorUsingEncode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = EncodeDYMTLDeviceDescriptor(a2, 0, 0);
  v9 = GTCoreAlloc(v8, v8);
  EncodeDYMTLDeviceDescriptor(a2, v9, v8);
  *a4 -= 65;
  SavePointer(a1, v9, v8, a3);
  vm_deallocate(mach_task_self_, v9, v8);
  return a3;
}

uint64_t StoreMTL4CommandBufferOptionsUsingEncode(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v10 = EncodeDYMTL4CommandBufferOptions(a2, 0, 0, a5);
  v11 = GTCoreAlloc(v10, v10);
  EncodeDYMTL4CommandBufferOptions(a2, v11, v10, a5);
  *a4 -= 65;
  SavePointer(a1, v11, v10, a3);
  vm_deallocate(mach_task_self_, v11, v10);
  return a3;
}

uint64_t StoreMTL4RenderPassDescriptorUsingEncode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v10 = EncodeDYMTL4RenderPassDescriptor(a2, 0, 0, a5);
  v11 = GTCoreAlloc(v10, v10);
  EncodeDYMTL4RenderPassDescriptor(a2, v11, v10, a5);
  *a4 -= 65;
  SavePointer(a1, v11, v10, a3);
  vm_deallocate(mach_task_self_, v11, v10);
  return a3;
}

uint64_t StoreMTL4PipelineDescriptorUsingEncode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v10 = EncodeDYMTL4PipelineDescriptor(a2, 0, 0, a5);
  v11 = GTCoreAlloc(v10, v10);
  EncodeDYMTL4PipelineDescriptor(a2, v11, v10, a5);
  *a4 -= 65;
  SavePointer(a1, v11, v10, a3);
  vm_deallocate(mach_task_self_, v11, v10);
  return a3;
}

uint64_t StoreMTL4CompilerTaskOptionsUsingEncode(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v10 = EncodeDYMTL4CompilerTaskOptions(a2, 0, 0, a5);
  v11 = GTCoreAlloc(v10, v10);
  EncodeDYMTL4CompilerTaskOptions(a2, v11, v10, a5);
  *a4 -= 65;
  SavePointer(a1, v11, v10, a3);
  vm_deallocate(mach_task_self_, v11, v10);
  return a3;
}

uint64_t StoreMTL4PipelineStageDynamicLinkingDescriptorUsingEncode(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v10 = EncodeDYMTL4PipelineStageDynamicLinkingDescriptor(a2, 0, 0, a5);
  v11 = GTCoreAlloc(v10, v10);
  EncodeDYMTL4PipelineStageDynamicLinkingDescriptor(a2, v11, v10, a5);
  *a4 -= 65;
  SavePointer(a1, v11, v10, a3);
  vm_deallocate(mach_task_self_, v11, v10);
  return a3;
}

uint64_t StoreMTL4LibraryDescriptorUsingEncode(uint64_t a1, __int128 *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v9 = a2[1];
  v15 = *a2;
  __s[0] = v9;
  v10 = v9;
  v11 = strlen(v9);
  SavePointer(a1, v10, v11, v17);
  __s[1] = v17;
  v12 = EncodeDYMTL4LibraryDescriptor(&v15, 0, 0, a5);
  v13 = GTCoreAlloc(v12, v12);
  EncodeDYMTL4LibraryDescriptor(&v15, v13, v12, a5);
  *a4 -= 65;
  SavePointer(a1, v13, v12, a3);
  vm_deallocate(mach_task_self_, v13, v12);
  return a3;
}

uint64_t StoreMTL4RenderPipelineDynamicLinkingDescriptorUsingEncode(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v10 = EncodeDYMTL4RenderPipelineDynamicLinkingDescriptor(a2, 0, 0, a5);
  v11 = GTCoreAlloc(v10, v10);
  EncodeDYMTL4RenderPipelineDynamicLinkingDescriptor(a2, v11, v10, a5);
  *a4 -= 65;
  SavePointer(a1, v11, v10, a3);
  vm_deallocate(mach_task_self_, v11, v10);
  return a3;
}

uint64_t StoreMTL4AccelerationStructureDescriptorUsingEncode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = EncodeDYMTL4AccelerationStructureDescriptor(a2, 0, 0);
  v9 = GTCoreAlloc(v8, v8);
  EncodeDYMTL4AccelerationStructureDescriptor(a2, v9, v8);
  *a4 -= 65;
  SavePointer(a1, v9, v8, a3);
  vm_deallocate(mach_task_self_, v9, v8);
  return a3;
}

uint64_t StoreMTLAccelerationStructureDescriptorUsingEncode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v10 = EncodeDYMTLAccelerationStructureDescriptor(a2, 0, 0, a5);
  v11 = GTCoreAlloc(v10, v10);
  EncodeDYMTLAccelerationStructureDescriptor(a2, v11, v10, a5);
  *a4 -= 65;
  SavePointer(a1, v11, v10, a3);
  vm_deallocate(mach_task_self_, v11, v10);
  return a3;
}

uint64_t StoreMTLScissorRectUsingEncode(uint64_t a1, const void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v9 = 32 * a5;
  v10 = ((32 * a5) | 8);
  v11 = GTCoreAlloc(a1, v10);
  *v11 = 115;
  memcpy(v11 + 1, a2, v9);
  *a4 -= 65;
  SavePointer(a1, v11, v10, a3);
  vm_deallocate(mach_task_self_, v11, v10);
  return a3;
}

uint64_t StoreMTLVertexAmplificationViewMappingUsingEncode(uint64_t a1, const void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v9 = 8 * a5;
  v10 = GTCoreAlloc(a1, 8 * a5 + 8);
  *v10 = 115;
  memcpy(v10 + 1, a2, v9);
  *a4 -= 65;
  SavePointer(a1, v10, (v9 + 8), a3);
  vm_deallocate(mach_task_self_, v10, v9 + 8);
  return a3;
}

uint64_t StoreMTLViewportUsingEncode(uint64_t a1, const void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v9 = 48 * a5;
  v10 = ((48 * a5) | 8);
  v11 = GTCoreAlloc(a1, v10);
  *v11 = 115;
  memcpy(v11 + 1, a2, v9);
  *a4 -= 65;
  SavePointer(a1, v11, v10, a3);
  vm_deallocate(mach_task_self_, v11, v10);
  return a3;
}

uint64_t StoreMTLComputePipelineDescriptorUsingEncode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v10 = EncodeDYMTLComputePipelineDescriptor(a2, 0, 0, a5);
  v11 = GTCoreAlloc(v10, v10);
  EncodeDYMTLComputePipelineDescriptor(a2, v11, v10, a5);
  *a4 -= 65;
  SavePointer(a1, v11, v10, a3);
  vm_deallocate(mach_task_self_, v11, v10);
  return a3;
}

uint64_t StoreMTLStitchedLibraryDescriptorUsingEncode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v10 = EncodeDYMTLStitchedLibraryDescriptor(a2, 0, 0, a5);
  v11 = GTCoreAlloc(v10, v10);
  EncodeDYMTLStitchedLibraryDescriptor(a2, v11, v10, a5);
  *a4 -= 65;
  SavePointer(a1, v11, v10, a3);
  vm_deallocate(mach_task_self_, v11, v10);
  return a3;
}

uint64_t StoreMTLRenderPipelineDescriptorUsingEncode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v10 = EncodeDYMTLRenderPipelineDescriptor(a2, 0, 0, a5);
  v11 = GTCoreAlloc(v10, v10);
  EncodeDYMTLRenderPipelineDescriptor(a2, v11, v10, a5);
  *a4 -= 65;
  SavePointer(a1, v11, v10, a3);
  vm_deallocate(mach_task_self_, v11, v10);
  return a3;
}

uint64_t StoreMTLTileRenderPipelineDescriptorUsingEncode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v10 = EncodeDYMTLTileRenderPipelineDescriptor(a2, 0, 0, a5);
  v11 = GTCoreAlloc(v10, v10);
  EncodeDYMTLTileRenderPipelineDescriptor(a2, v11, v10, a5);
  *a4 -= 65;
  SavePointer(a1, v11, v10, a3);
  vm_deallocate(mach_task_self_, v11, v10);
  return a3;
}

uint64_t StoreMTLTextureDescriptorUsingEncode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = EncodeDYMTLTextureDescriptor(a2, 0, 0);
  v9 = GTCoreAlloc(v8, v8);
  EncodeDYMTLTextureDescriptor(a2, v9, v8);
  *a4 -= 65;
  SavePointer(a1, v9, v8, a3);
  vm_deallocate(mach_task_self_, v9, v8);
  return a3;
}

uint64_t StoreMTLTensorDescriptorUsingEncode(uint64_t a1, __int128 *a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = EncodeDYMTLTensorDescriptor(a2, 0, 0);
  v9 = GTCoreAlloc(v8, v8);
  EncodeDYMTLTensorDescriptor(a2, v9, v8);
  *a4 -= 65;
  SavePointer(a1, v9, v8, a3);
  vm_deallocate(mach_task_self_, v9, v8);
  return a3;
}

uint64_t StoreMTLCaptureDescriptorInternalUsingEncode(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v10 = EncodeDYMTLCaptureDescriptorInternal(a2, 0, 0, a5);
  v11 = GTCoreAlloc(v10, v10);
  EncodeDYMTLCaptureDescriptorInternal(a2, v11, v10, a5);
  *a4 -= 65;
  SavePointer(a1, v11, v10, a3);
  vm_deallocate(mach_task_self_, v11, v10);
  return a3;
}

uint64_t StoreMTLAccelerationStructurePassDescriptorUsingEncode(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v10 = EncodeDYMTLAccelerationStructurePassDescriptor(a2, 0, 0, a5);
  v11 = GTCoreAlloc(v10, v10);
  EncodeDYMTLAccelerationStructurePassDescriptor(a2, v11, v10, a5);
  *a4 -= 65;
  SavePointer(a1, v11, v10, a3);
  vm_deallocate(mach_task_self_, v11, v10);
  return a3;
}

uint64_t StoreMTLBlitPassDescriptorUsingEncode(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v10 = EncodeDYMTLBlitPassDescriptor(a2, 0, 0, a5);
  v11 = GTCoreAlloc(v10, v10);
  EncodeDYMTLBlitPassDescriptor(a2, v11, v10, a5);
  *a4 -= 65;
  SavePointer(a1, v11, v10, a3);
  vm_deallocate(mach_task_self_, v11, v10);
  return a3;
}

uint64_t StoreMTLComputePassDescriptorUsingEncode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v10 = EncodeDYMTLComputePassDescriptor(a2, 0, 0, a5);
  v11 = GTCoreAlloc(v10, v10);
  EncodeDYMTLComputePassDescriptor(a2, v11, v10, a5);
  *a4 -= 65;
  SavePointer(a1, v11, v10, a3);
  vm_deallocate(mach_task_self_, v11, v10);
  return a3;
}

uint64_t StoreMTLRenderPassDescriptorUsingEncode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v10 = EncodeDYMTLRenderPassDescriptor(a2, 0, 0, a5);
  v11 = GTCoreAlloc(v10, v10);
  EncodeDYMTLRenderPassDescriptor(a2, v11, v10, a5);
  *a4 -= 65;
  SavePointer(a1, v11, v10, a3);
  vm_deallocate(mach_task_self_, v11, v10);
  return a3;
}

uint64_t StoreMTLResourceStatePassDescriptorUsingEncode(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v10 = EncodeDYMTLResourceStatePassDescriptor(a2, 0, 0, a5);
  v11 = GTCoreAlloc(v10, v10);
  EncodeDYMTLResourceStatePassDescriptor(a2, v11, v10, a5);
  *a4 -= 65;
  SavePointer(a1, v11, v10, a3);
  vm_deallocate(mach_task_self_, v11, v10);
  return a3;
}

uint64_t StoreMTLCommandBufferDescriptorUsingEncode(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v10 = EncodeDYMTLCommandBufferDescriptor(a2, 0, 0, a5);
  v11 = GTCoreAlloc(v10, v10);
  EncodeDYMTLCommandBufferDescriptor(a2, v11, v10, a5);
  *a4 -= 65;
  SavePointer(a1, v11, v10, a3);
  vm_deallocate(mach_task_self_, v11, v10);
  return a3;
}

uint64_t StoreMTLIntersectionFunctionTableDescriptorUsingEncode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = EncodeDYMTLIntersectionFunctionTableDescriptor(a2, 0, 0);
  v9 = GTCoreAlloc(v8, v8);
  EncodeDYMTLIntersectionFunctionTableDescriptor(a2, v9, v8);
  *a4 -= 65;
  SavePointer(a1, v9, v8, a3);
  vm_deallocate(mach_task_self_, v9, v8);
  return a3;
}

uint64_t StoreMTLVisibleFunctionTableDescriptorUsingEncode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = EncodeDYMTLVisibleFunctionTableDescriptor(a2, 0, 0);
  v9 = GTCoreAlloc(v8, v8);
  EncodeDYMTLVisibleFunctionTableDescriptor(a2, v9, v8);
  *a4 -= 65;
  SavePointer(a1, v9, v8, a3);
  vm_deallocate(mach_task_self_, v9, v8);
  return a3;
}

uint64_t StoreMTLFunctionDescriptorUsingEncode(uint64_t a1, void **a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v10 = EncodeDYMTLFunctionDescriptor(a2, 0, 0, a5);
  v11 = GTCoreAlloc(v10, v10);
  EncodeDYMTLFunctionDescriptor(a2, v11, v10, a5);
  *a4 -= 65;
  SavePointer(a1, v11, v10, a3);
  vm_deallocate(mach_task_self_, v11, v10);
  return a3;
}

uint64_t StoreMTLAccelerationStructureAllocationDescriptorUsingEncode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = EncodeDYMTLAccelerationStructureAllocationDescriptor(a2, 0, 0);
  v9 = GTCoreAlloc(v8, v8);
  EncodeDYMTLAccelerationStructureAllocationDescriptor(a2, v9, v8);
  *a4 -= 65;
  SavePointer(a1, v9, v8, a3);
  vm_deallocate(mach_task_self_, v9, v8);
  return a3;
}

uint64_t StoreMTL4ArgumentTableDescriptorUsingEncode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = EncodeDYMTL4ArgumentTableDescriptor(a2, 0, 0);
  v9 = GTCoreAlloc(v8, v8);
  EncodeDYMTL4ArgumentTableDescriptor(a2, v9, v8);
  *a4 -= 65;
  SavePointer(a1, v9, v8, a3);
  vm_deallocate(mach_task_self_, v9, v8);
  return a3;
}

uint64_t StoreMTLBufferDescriptorUsingEncode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = EncodeDYMTLBufferDescriptor(a2, 0, 0);
  v9 = GTCoreAlloc(v8, v8);
  EncodeDYMTLBufferDescriptor(a2, v9, v8);
  *a4 -= 65;
  SavePointer(a1, v9, v8, a3);
  vm_deallocate(mach_task_self_, v9, v8);
  return a3;
}

uint64_t StoreIOSurfaceUsingEncode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = EncodeDYIOSurface(a2, 0, 0);
  v9 = GTCoreAlloc(v8, v8);
  EncodeDYIOSurface(a2, v9, v8);
  *a4 -= 65;
  SavePointer(a1, v9, v8, a3);
  vm_deallocate(mach_task_self_, v9, v8);
  return a3;
}

uint64_t StoreMTL4CommandAllocatorDescriptorUsingEncode(uint64_t a1, const char **a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = EncodeDYMTL4CommandAllocatorDescriptor(a2, 0, 0);
  v9 = GTCoreAlloc(v8, v8);
  EncodeDYMTL4CommandAllocatorDescriptor(a2, v9, v8);
  *a4 -= 65;
  SavePointer(a1, v9, v8, a3);
  vm_deallocate(mach_task_self_, v9, v8);
  return a3;
}

uint64_t StoreMTLCommandQueueDescriptorUsingEncode(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = EncodeDYMTLCommandQueueDescriptor(a2, 0, 0);
  v9 = GTCoreAlloc(v8, v8);
  EncodeDYMTLCommandQueueDescriptor(a2, v9, v8);
  *a4 -= 65;
  SavePointer(a1, v9, v8, a3);
  vm_deallocate(mach_task_self_, v9, v8);
  return a3;
}

uint64_t StoreMTL4CompilerDescriptorUsingEncode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v10 = EncodeDYMTL4CompilerDescriptor(a2, 0, 0, a5);
  v11 = GTCoreAlloc(v10, v10);
  EncodeDYMTL4CompilerDescriptor(a2, v11, v10, a5);
  *a4 -= 65;
  SavePointer(a1, v11, v10, a3);
  vm_deallocate(mach_task_self_, v11, v10);
  return a3;
}

uint64_t StoreMTLCounterSampleBufferDescriptorUsingEncode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = EncodeDYMTLCounterSampleBufferDescriptor(a2, 0, 0);
  v9 = GTCoreAlloc(v8, v8);
  EncodeDYMTLCounterSampleBufferDescriptor(a2, v9, v8);
  *a4 -= 65;
  SavePointer(a1, v9, v8, a3);
  vm_deallocate(mach_task_self_, v9, v8);
  return a3;
}

uint64_t StoreMTLDepthStencilDescriptorUsingEncode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = EncodeDYMTLDepthStencilDescriptor(a2, 0, 0);
  v9 = GTCoreAlloc(v8, v8);
  EncodeDYMTLDepthStencilDescriptor(a2, v9, v8);
  *a4 -= 65;
  SavePointer(a1, v9, v8, a3);
  vm_deallocate(mach_task_self_, v9, v8);
  return a3;
}

uint64_t StoreMTLHeapDescriptorUsingEncode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = EncodeDYMTLHeapDescriptor(a2, 0, 0);
  v9 = GTCoreAlloc(v8, v8);
  EncodeDYMTLHeapDescriptor(a2, v9, v8);
  *a4 -= 65;
  SavePointer(a1, v9, v8, a3);
  vm_deallocate(mach_task_self_, v9, v8);
  return a3;
}

uint64_t StoreMTLIOCommandQueueDescriptorUsingEncode(uint64_t a1, unsigned int *a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = EncodeDYMTLIOCommandQueueDescriptor(a2, 0, 0);
  v9 = GTCoreAlloc(v8, v8);
  EncodeDYMTLIOCommandQueueDescriptor(a2, v9, v8);
  *a4 -= 65;
  SavePointer(a1, v9, v8, a3);
  vm_deallocate(mach_task_self_, v9, v8);
  return a3;
}

uint64_t StoreMTLIndirectCommandBufferDescriptorUsingEncode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = EncodeDYMTLIndirectCommandBufferDescriptor(a2, 0, 0);
  v9 = GTCoreAlloc(v8, v8);
  EncodeDYMTLIndirectCommandBufferDescriptor(a2, v9, v8);
  *a4 -= 65;
  SavePointer(a1, v9, v8, a3);
  vm_deallocate(mach_task_self_, v9, v8);
  return a3;
}

uint64_t StoreMTLCompileOptionsUsingEncode_16210(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v10 = EncodeDYMTLCompileOptions(a2, 0, 0, a5);
  v11 = GTCoreAlloc(v10, v10);
  EncodeDYMTLCompileOptions(a2, v11, v10, a5);
  *a4 -= 65;
  SavePointer(a1, v11, v10, a3);
  vm_deallocate(mach_task_self_, v11, v10);
  return a3;
}

uint64_t StoreMTL4CommandQueueDescriptorUsingEncode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = EncodeDYMTL4CommandQueueDescriptor(a2, 0, 0);
  v9 = GTCoreAlloc(v8, v8);
  EncodeDYMTL4CommandQueueDescriptor(a2, v9, v8);
  *a4 -= 65;
  SavePointer(a1, v9, v8, a3);
  vm_deallocate(mach_task_self_, v9, v8);
  return a3;
}

uint64_t StoreMTLMotionEstimationPipelineDescriptorUsingEncode(uint64_t a1, unsigned __int16 *a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = EncodeDYMTLMotionEstimationPipelineDescriptor(a2, 0, 0);
  v9 = GTCoreAlloc(v8, v8);
  EncodeDYMTLMotionEstimationPipelineDescriptor(a2, v9, v8);
  *a4 -= 65;
  SavePointer(a1, v9, v8, a3);
  vm_deallocate(mach_task_self_, v9, v8);
  return a3;
}

uint64_t StoreMTLRasterizationRateMapDescriptorUsingEncode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = EncodeDYMTLRasterizationRateMapDescriptor(a2, 0, 0);
  v9 = GTCoreAlloc(v8, v8);
  EncodeDYMTLRasterizationRateMapDescriptor(a2, v9, v8);
  *a4 -= 65;
  SavePointer(a1, v9, v8, a3);
  vm_deallocate(mach_task_self_, v9, v8);
  return a3;
}

uint64_t StoreMTLMeshRenderPipelineDescriptorUsingEncode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v10 = EncodeDYMTLMeshRenderPipelineDescriptor(a2, 0, 0, a5);
  v11 = GTCoreAlloc(v10, v10);
  EncodeDYMTLMeshRenderPipelineDescriptor(a2, v11, v10, a5);
  *a4 -= 65;
  SavePointer(a1, v11, v10, a3);
  vm_deallocate(mach_task_self_, v11, v10);
  return a3;
}

uint64_t StoreMTLResidencySetDescriptorUsingEncode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = EncodeDYMTLResidencySetDescriptor(a2, 0, 0);
  v9 = GTCoreAlloc(v8, v8);
  EncodeDYMTLResidencySetDescriptor(a2, v9, v8);
  *a4 -= 65;
  SavePointer(a1, v9, v8, a3);
  vm_deallocate(mach_task_self_, v9, v8);
  return a3;
}

uint64_t StoreMTLSamplerDescriptorUsingEncode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = EncodeDYMTLSamplerDescriptor(a2, 0, 0);
  v9 = GTCoreAlloc(v8, v8);
  EncodeDYMTLSamplerDescriptor(a2, v9, v8);
  *a4 -= 65;
  SavePointer(a1, v9, v8, a3);
  vm_deallocate(mach_task_self_, v9, v8);
  return a3;
}

uint64_t StoreMTLResourceViewPoolDescriptorUsingEncode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = EncodeDYMTLResourceViewPoolDescriptor(a2, 0, 0);
  v9 = GTCoreAlloc(v8, v8);
  EncodeDYMTLResourceViewPoolDescriptor(a2, v9, v8);
  *a4 -= 65;
  SavePointer(a1, v9, v8, a3);
  vm_deallocate(mach_task_self_, v9, v8);
  return a3;
}

uint64_t StoreMTLIntersectionFunctionDescriptorUsingEncode(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = EncodeDYMTLIntersectionFunctionDescriptor(a2, 0, 0);
  v9 = GTCoreAlloc(v8, v8);
  EncodeDYMTLIntersectionFunctionDescriptor(a2, v9, v8);
  *a4 -= 65;
  SavePointer(a1, v9, v8, a3);
  vm_deallocate(mach_task_self_, v9, v8);
  return a3;
}

uint64_t StoreMTLRenderPipelineFunctionsDescriptorUsingEncode(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v10 = EncodeDYMTLRenderPipelineFunctionsDescriptor(a2, 0, 0, a5);
  v11 = GTCoreAlloc(v10, v10);
  EncodeDYMTLRenderPipelineFunctionsDescriptor(a2, v11, v10, a5);
  *a4 -= 65;
  SavePointer(a1, v11, v10, a3);
  vm_deallocate(mach_task_self_, v11, v10);
  return a3;
}

uint64_t StoreMTLTextureViewDescriptorUsingEncode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = EncodeDYMTLTextureViewDescriptor(a2, 0, 0);
  v9 = GTCoreAlloc(v8, v8);
  EncodeDYMTLTextureViewDescriptor(a2, v9, v8);
  *a4 -= 65;
  SavePointer(a1, v9, v8, a3);
  vm_deallocate(mach_task_self_, v9, v8);
  return a3;
}

uint64_t StoreMPSPluginCNNConvolutionDescriptorUsingEncode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = EncodeDYMPSPluginCNNConvolutionDescriptor(a2, 0, 0);
  v9 = GTCoreAlloc(v8, v8);
  EncodeDYMPSPluginCNNConvolutionDescriptor(a2, v9, v8);
  *a4 -= 65;
  SavePointer(a1, v9, v8, a3);
  vm_deallocate(mach_task_self_, v9, v8);
  return a3;
}

uint64_t StoreMPSPluginCNNConvolutionDataUsingEncode(uint64_t a1, unsigned int *a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = EncodeDYMPSPluginCNNConvolutionData(a2, 0, 0);
  v9 = GTCoreAlloc(v8, v8);
  EncodeDYMPSPluginCNNConvolutionData(a2, v9, v8);
  *a4 -= 65;
  SavePointer(a1, v9, v8, a3);
  vm_deallocate(mach_task_self_, v9, v8);
  return a3;
}

uint64_t StoreMPSPluginNDArrayConvolutionDescriptorUsingEncode(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = EncodeDYMPSPluginNDArrayConvolutionDescriptor(a2, 0, 0);
  v9 = GTCoreAlloc(v8, v8);
  EncodeDYMPSPluginNDArrayConvolutionDescriptor(a2, v9, v8);
  *a4 -= 65;
  SavePointer(a1, v9, v8, a3);
  vm_deallocate(mach_task_self_, v9, v8);
  return a3;
}

uint64_t StoreMPSSourceTextureInfoUsingEncode(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = EncodeDYMPSSourceTextureInfo(a2, 0, 0);
  v9 = GTCoreAlloc(v8, v8);
  EncodeDYMPSSourceTextureInfo(a2, v9, v8);
  *a4 -= 65;
  SavePointer(a1, v9, v8, a3);
  vm_deallocate(mach_task_self_, v9, v8);
  return a3;
}

uint64_t StoreMPSDestinationTextureInfoUsingEncode(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = EncodeDYMPSDestinationTextureInfo(a2, 0, 0);
  v9 = GTCoreAlloc(v8, v8);
  EncodeDYMPSDestinationTextureInfo(a2, v9, v8);
  *a4 -= 65;
  SavePointer(a1, v9, v8, a3);
  vm_deallocate(mach_task_self_, v9, v8);
  return a3;
}

uint64_t StoreMPSNDArrayStructureUsingEncode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = EncodeDYMPSNDArrayStructure(a2, 0, 0);
  v9 = GTCoreAlloc(v8, v8);
  EncodeDYMPSNDArrayStructure(a2, v9, v8);
  *a4 -= 65;
  SavePointer(a1, v9, v8, a3);
  vm_deallocate(mach_task_self_, v9, v8);
  return a3;
}

uint64_t StoreMTLFXFrameInterpolatorDescriptorUsingEncode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v10 = EncodeDYMTLFXFrameInterpolatorDescriptor(a2, 0, 0, a5);
  v11 = GTCoreAlloc(v10, v10);
  EncodeDYMTLFXFrameInterpolatorDescriptor(a2, v11, v10, a5);
  *a4 -= 65;
  SavePointer(a1, v11, v10, a3);
  vm_deallocate(mach_task_self_, v11, v10);
  return a3;
}

uint64_t StoreMTLFXSpatialScalerDescriptorUsingEncode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = EncodeDYMTLFXSpatialScalerDescriptor(a2, 0, 0);
  v9 = GTCoreAlloc(v8, v8);
  EncodeDYMTLFXSpatialScalerDescriptor(a2, v9, v8);
  *a4 -= 65;
  SavePointer(a1, v9, v8, a3);
  vm_deallocate(mach_task_self_, v9, v8);
  return a3;
}

uint64_t StoreMTLFXTemporalDenoisedScalerDescriptorUsingEncode(uint64_t a1, unsigned __int16 *a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = EncodeDYMTLFXTemporalDenoisedScalerDescriptor(a2, 0, 0);
  v9 = GTCoreAlloc(v8, v8);
  EncodeDYMTLFXTemporalDenoisedScalerDescriptor(a2, v9, v8);
  *a4 -= 65;
  SavePointer(a1, v9, v8, a3);
  vm_deallocate(mach_task_self_, v9, v8);
  return a3;
}

uint64_t StoreMTLFXTemporalScalerDescriptorUsingEncode(uint64_t a1, unsigned __int16 *a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = EncodeDYMTLFXTemporalScalerDescriptor(a2, 0, 0);
  v9 = GTCoreAlloc(v8, v8);
  EncodeDYMTLFXTemporalScalerDescriptor(a2, v9, v8);
  *a4 -= 65;
  SavePointer(a1, v9, v8, a3);
  vm_deallocate(mach_task_self_, v9, v8);
  return a3;
}

uint64_t GetStream(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  entry = find_entry(a1, &v4, 8uLL, 0);
  if (*entry)
  {
    return *(*entry + 32);
  }

  else
  {
    return 0;
  }
}

uint64_t GetObjectDownloadRequest_(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  entry = find_entry(a1, &v4, 8uLL, 0);
  if (*entry)
  {
    return *(*entry + 32);
  }

  else
  {
    return 0;
  }
}

uint64_t GetObjectChildren_(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  entry = find_entry(a1, &v4, 8uLL, 0);
  if (*entry)
  {
    return *(*entry + 32);
  }

  else
  {
    return 0;
  }
}

uint64_t FetchData(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result += 16;
    v2 = *(v1 + 12);
  }

  return result;
}

uint64_t GTTraceDump_getCommandBufferInfo(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  entry = find_entry(a1, &v4, 8uLL, 0);
  if (*entry)
  {
    return *(*entry + 32);
  }

  else
  {
    return 0;
  }
}

uint64_t GTTraceDump_getCommandBufferCommitIndex(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  entry = find_entry(a1, &v5, 8uLL, 0);
  if (*entry && (v3 = *(*entry + 32)) != 0)
  {
    return *v3;
  }

  else
  {
    return -1;
  }
}

uint64_t GTTraceDump_getCommandBufferQueue(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  entry = find_entry(a1, &v5, 8uLL, 0);
  if (*entry && (v3 = *(*entry + 32)) != 0)
  {
    return *(v3 + 8);
  }

  else
  {
    return -1;
  }
}

apr_pool_t **GTTraceDump_buildCommandBufferInfo(uint64_t a1, uint64_t a2, uint64_t a3, apr_pool_t *pool)
{
  v5 = apr_hash_make(pool);
  if (*(a3 + 12) >= 1)
  {
    for (i = 0; i < *(a3 + 12); ++i)
    {
      v7 = *(a3 + 24) + (i << 6);
      v8 = *(v7 + 8);
      if (v8 > -15344)
      {
        if ((v8 + 15343) <= 0x1B && ((1 << (v8 - 17)) & 0xA000001) != 0)
        {
LABEL_29:
          v35 = 0uLL;
          v19 = GTTraceFunc_targetContext(v7, a2);
          v36 = v19;
          v20 = *(*(*find_entry(a1, &v36, 8uLL, 0) + 32) + 32);
          if (v20)
          {
            v21 = 0;
            while (1)
            {
              v22 = atomic_load((v20 + 4));
              v23 = v21 + (v22 >> 6) - 1;
              if (v23 > 0)
              {
                break;
              }

              v20 = *(v20 + 40);
              v21 = v23;
              if (!v20)
              {
                v21 = v23;
LABEL_36:
                v24 = v21 | (v23 << 32);
                goto LABEL_37;
              }
            }

            v23 = 0;
            goto LABEL_36;
          }

          v24 = 0;
          while (1)
          {
LABEL_37:
            if (!v20 || (v25 = v20 + 64 + ((HIDWORD(v24) - v24) << 6), (*(v25 + 15) & 8) == 0))
            {
              v31 = -1;
              goto LABEL_47;
            }

            ConstructorType = GTFenum_getConstructorType(*(v25 + 8));
            if (ConstructorType == 51 || ConstructorType == 25)
            {
              break;
            }

            v28 = atomic_load((v20 + 4));
            v29 = v24 + (v28 >> 6);
            v30 = (HIDWORD(v24) + 1);
            v24 = (v30 << 32) | v24;
            if (v30 == v29 - 1)
            {
              v24 = (v30 << 32) | v30;
              v20 = *(v20 + 40);
            }
          }

          v31 = *GTTraceFunc_argumentBytesWithMap((v20 + 64 + ((HIDWORD(v24) - v24) << 6)), *(v25 + 13), a2);
LABEL_47:
          *(&v35 + 1) = v31;
          *&v35 = *v7;
          GTTraceDump_setCommandBufferInfo(v5, v19, &v35);
          continue;
        }

        if ((v8 + 14847) <= 0xE && ((1 << (v8 - 1)) & 0x4003) != 0 || v8 == -15158)
        {
          v14 = GTTraceFunc_targetContext(*(a3 + 24) + (i << 6), a2);
          v36 = 0;
          Mtl4Commits = GTTraceFuncArgs_getMtl4Commits(v7, a2, &v36);
          if (Mtl4Commits)
          {
            v16 = Mtl4Commits;
            v17 = v36;
            do
            {
              v35 = 0uLL;
              *&v35 = *v7;
              *(&v35 + 1) = v14;
              v18 = *v17++;
              GTTraceDump_setCommandBufferInfo(v5, v18, &v35);
              --v16;
            }

            while (v16);
          }
        }
      }

      else if (v8 == -16361 || v8 == -16202 || v8 == -15908)
      {
        goto LABEL_29;
      }
    }
  }

  return v5;
}

void GTTraceDump_setCommandBufferInfo(apr_pool_t **a1, uint64_t a2, _OWORD *a3)
{
  v6 = *a1;
  v7 = apr_palloc(*a1, 8uLL);
  *v7 = a2;
  if (a3)
  {
    v8 = apr_palloc(v6, 0x10uLL);
    *v8 = *a3;
  }

  else
  {
    v8 = 0;
  }

  apr_hash_set(a1, v7, 8, v8);
}

apr_hash_index_t *FillArrayFromHash(apr_array_header_t *a1, apr_pool_t **a2)
{
  a1->nelts = 0;
  result = apr_hash_first(*a2, a2);
  if (result)
  {
    v4 = result;
    do
    {
      v5 = **(*(v4 + 1) + 16);
      *apr_array_push(a1) = v5;
      result = apr_hash_next(v4);
      v4 = result;
    }

    while (result);
  }

  return result;
}

apr_hash_index_t *FillArrayFromHashDifference(apr_array_header_t *a1, apr_pool_t **a2, uint64_t a3)
{
  a1->nelts = 0;
  result = apr_hash_first(*a2, a2);
  if (result)
  {
    v6 = result;
    do
    {
      v7 = *(*(v6 + 1) + 16);
      v8 = *find_entry(a3, v7, 8uLL, 0);
      if (!v8 || !*(v8 + 32))
      {
        v9 = *v7;
        *apr_array_push(a1) = v9;
      }

      result = apr_hash_next(v6);
      v6 = result;
    }

    while (result);
  }

  return result;
}

apr_hash_index_t *ResidencySetHashContainsDrawableTexture(uint64_t *a1, unint64_t a2, apr_pool_t **ht)
{
  result = apr_hash_first(*ht, ht);
  if (result)
  {
    v6 = result;
    while (1)
    {
      Object = GTMTLSMContext_getObject(a1, **(*(v6 + 1) + 16), a2);
      if (Object)
      {
        if (*Object == 80)
        {
          if (Object[25])
          {
            break;
          }

          v8 = Object[14];
          if (v8)
          {
            if (*(v8 + 44))
            {
              break;
            }
          }
        }
      }

      result = apr_hash_next(v6);
      v6 = result;
      if (!result)
      {
        return result;
      }
    }

    return (&dword_0 + 1);
  }

  return result;
}

apr_hash_index_t *ResidencySetAllocationsContainDrawableTexture(uint64_t *a1, unint64_t a2, apr_pool_t ***a3)
{
  if (ResidencySetHashContainsDrawableTexture(a1, a2, *a3))
  {
    return (&dword_0 + 1);
  }

  v7 = a3[1];

  return ResidencySetHashContainsDrawableTexture(a1, a2, v7);
}

void GatherResidencySetAllocationsUpToIndex(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, int a6)
{
  if (a5)
  {
    v7 = a5;
  }

  else
  {
    v7 = a4;
  }

  v8 = *(a2 + 32);
  if (v8)
  {
    v9 = 0;
    while (1)
    {
      v10 = atomic_load((v8 + 4));
      v11 = v9 + (v10 >> 6) - 1;
      if (v11 > 0)
      {
        break;
      }

      v8 = *(v8 + 40);
      v9 = v11;
      if (!v8)
      {
        v9 = v11;
        goto LABEL_11;
      }
    }

    v11 = 0;
LABEL_11:
    v12 = v9 | (v11 << 32);
  }

  else
  {
    v12 = 0;
  }

  v13 = 0;
  while (v8)
  {
    v14 = v8 + 64 + ((HIDWORD(v12) - v12) << 6);
    if ((*(v14 + 15) & 8) == 0 || *v14 >= v7)
    {
      break;
    }

    if (*(v14 + 8) == -15208 && *(v14 + 15) < 0)
    {
      v13 = *v14;
    }

    v15 = atomic_load((v8 + 4));
    v16 = (HIDWORD(v12) + 1);
    v17 = v12 + (v15 >> 6) - 1;
    v12 = (v16 << 32) | v12;
    if (v16 == v17)
    {
      v12 = (v16 << 32) | v16;
      v8 = *(v8 + 40);
    }
  }

  v18 = *(a2 + 32);
  v46 = v7;
  if (v18)
  {
    v19 = 0;
    while (1)
    {
      v20 = atomic_load((v18 + 4));
      v21 = v19 + (v20 >> 6) - 1;
      if (v21 > 0)
      {
        break;
      }

      v18 = *(v18 + 40);
      v19 = v21;
      if (!v18)
      {
        v19 = v21;
        goto LABEL_28;
      }
    }

    v21 = 0;
LABEL_28:
    v22 = v19 | (v21 << 32);
  }

  else
  {
    v22 = 0;
  }

LABEL_29:
  v23 = v18 + 64;
  while (v18)
  {
    v24 = (v23 + ((HIDWORD(v22) - v22) << 6));
    if ((*(v24 + 15) & 8) == 0)
    {
      break;
    }

    v25 = *v24;
    if (*v24 < v13 || v25 >= a4 && (*(v24 + 15) & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

    if (v25 >= v46)
    {
      return;
    }

    v26 = *(v24 + 2);
    if (v26 > -15209)
    {
      if (v26 == -15208)
      {
        if (!a6)
        {
          apr_hash_clear(*a1);
        }

        goto LABEL_73;
      }

      if (v26 == -15206)
      {
LABEL_49:
        v32 = GTTraceFunc_argumentBytesWithMap((v23 + ((HIDWORD(v22) - v22) << 6)), *(v24 + 13), a3);
        v33 = GTTraceFunc_argumentBytesWithMap((v23 + ((HIDWORD(v22) - v22) << 6)), v32[16], a3);
        if (a6 == 2 || (v34 = *(v24 + 2), v34 == -15211))
        {
          if (*(v32 + 1))
          {
            v37 = 0;
            v38 = 0;
            do
            {
              v39 = *find_entry(*a1, &v33[v37], 8uLL, 0);
              if (!v39 || !*(v39 + 32))
              {
                if (v33)
                {
                  v40 = apr_palloc(**a1, 8uLL);
                  *v40 = *&v33[8 * v38];
                }

                else
                {
                  v40 = 0;
                }

                apr_hash_set(*a1, v40, 8, v40);
              }

              ++v38;
              v37 += 8;
            }

            while (*(v32 + 1) > v38);
          }
        }

        else if (!a6 && v34 == -15206 && *(v32 + 1))
        {
          v35 = 0;
          do
          {
            apr_hash_set(*a1, v33, 8, 0);
            ++v35;
            v33 += 8;
          }

          while (*(v32 + 1) > v35);
        }

        goto LABEL_73;
      }

      if (v26 != -15207)
      {
        goto LABEL_73;
      }
    }

    else
    {
      if (v26 == -15220)
      {
        *(a1 + 8) = apr_hash_copy(**a1, *a1);
        goto LABEL_73;
      }

      if (v26 != -15212)
      {
        if (v26 == -15211)
        {
          goto LABEL_49;
        }

        goto LABEL_73;
      }
    }

    v27 = GTTraceFunc_argumentBytesWithMap((v23 + ((HIDWORD(v22) - v22) << 6)), *(v24 + 13), a3);
    if (a6 == 2 || (v28 = *(v24 + 2), v28 == -15212))
    {
      entry = find_entry(*a1, v27 + 8, 8uLL, 0);
      if (*entry && *(*entry + 32))
      {
        goto LABEL_73;
      }

      v30 = apr_palloc(**a1, 8uLL);
      *v30 = *(v27 + 1);
      v29 = *a1;
      v31 = v30;
    }

    else
    {
      if (a6 || v28 != -15207)
      {
        goto LABEL_73;
      }

      v29 = *a1;
      v30 = v27 + 8;
      v31 = 0;
    }

    apr_hash_set(v29, v30, 8, v31);
LABEL_73:
    v41 = atomic_load((v18 + 4));
    v42 = v22 + (v41 >> 6);
    v43 = (HIDWORD(v22) + 1);
    v22 = (v43 << 32) | v22;
    if (v43 == v42 - 1)
    {
      v22 = (v43 << 32) | v43;
      v18 = *(v18 + 40);
      goto LABEL_29;
    }
  }
}

void GatherCommandQueueResidencySetsUpToIndex(apr_pool_t **a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, int a6)
{
  if (a5)
  {
    v7 = a5;
  }

  else
  {
    v7 = a4;
  }

  v8 = *(a2 + 32);
  if (v8)
  {
    v9 = 0;
    while (1)
    {
      v10 = atomic_load((v8 + 4));
      v11 = v9 + (v10 >> 6) - 1;
      if (v11 > 0)
      {
        break;
      }

      v8 = *(v8 + 40);
      v9 = v11;
      if (!v8)
      {
        v9 = v11;
        goto LABEL_11;
      }
    }

    v11 = 0;
LABEL_11:
    v12 = v9 | (v11 << 32);
  }

  else
  {
    v12 = 0;
  }

  v13 = 0;
  while (v8)
  {
    v14 = v8 + 64 + ((HIDWORD(v12) - v12) << 6);
    if ((*(v14 + 15) & 8) == 0 || *v14 >= v7)
    {
      break;
    }

    v15 = *(v14 + 8);
    v16 = v15 + 15161;
    v17 = v15 + 15252;
    v18 = v16 >= 2 && v17 > 1;
    if (!v18 && *(v14 + 15) < 0)
    {
      v13 = *v14;
    }

    v19 = atomic_load((v8 + 4));
    v20 = (HIDWORD(v12) + 1);
    v21 = v12 + (v19 >> 6) - 1;
    v12 = (v20 << 32) | v12;
    if (v20 == v21)
    {
      v12 = (v20 << 32) | v20;
      v8 = *(v8 + 40);
    }
  }

  v22 = *(a2 + 32);
  v56 = v7;
  if (v22)
  {
    v23 = 0;
    while (1)
    {
      v24 = atomic_load((v22 + 4));
      v25 = v23 + (v24 >> 6) - 1;
      if (v25 > 0)
      {
        break;
      }

      v22 = *(v22 + 40);
      v23 = v25;
      if (!v22)
      {
        v23 = v25;
LABEL_31:
        v26 = v23 | (v25 << 32);
        goto LABEL_32;
      }
    }

    v25 = 0;
    goto LABEL_31;
  }

  v26 = 0;
LABEL_32:
  while (v22)
  {
    v27 = v22 + 64;
    v28 = v22 + 64 + ((HIDWORD(v26) - v26) << 6);
    if ((*(v28 + 15) & 8) == 0)
    {
      break;
    }

    v29 = *v28;
    if (*v28 < v13 || v29 >= a4 && (*(v28 + 15) & 0x80000000) == 0)
    {
      goto LABEL_80;
    }

    if (v29 >= v56)
    {
      return;
    }

    v30 = *(v28 + 8);
    if (v30 > -15162)
    {
      if (v30 > -15152)
      {
        if (v30 == -15150)
        {
          goto LABEL_63;
        }

        if (v30 != -15151)
        {
          goto LABEL_80;
        }
      }

      else if (v30 != -15161)
      {
        v31 = -15160;
        goto LABEL_47;
      }
    }

    else if (v30 > -15251)
    {
      if (v30 != -15250)
      {
        v31 = -15249;
LABEL_47:
        if (v30 != v31)
        {
          goto LABEL_80;
        }

LABEL_63:
        v41 = GTTraceFunc_argumentBytesWithMap((v27 + ((HIDWORD(v26) - v26) << 6)), *(v28 + 13), a3);
        v42 = GTTraceFunc_argumentBytesWithMap((v27 + ((HIDWORD(v26) - v26) << 6)), v41[16], a3);
        v43 = *(v28 + 8);
        if ((v43 + 15252) < 2 || (v43 + 15161) < 2 || a6 == 2)
        {
          if (*(v41 + 1))
          {
            v46 = 0;
            v47 = 0;
            do
            {
              v48 = *find_entry(a1, &v42[v46], 8uLL, 0);
              if (!v48 || !*(v48 + 32))
              {
                if (v42)
                {
                  v49 = apr_palloc(*a1, 8uLL);
                  *v49 = *&v42[8 * v47];
                }

                else
                {
                  v49 = 0;
                }

                apr_hash_set(a1, v49, 8, v49);
              }

              ++v47;
              v46 += 8;
            }

            while (*(v41 + 1) > v47);
          }
        }

        else if (((v43 + 15151) < 2 || (v43 + 15250) <= 1) && !a6 && *(v41 + 1))
        {
          v53 = 0;
          do
          {
            apr_hash_set(a1, v42, 8, 0);
            ++v53;
            v42 += 8;
          }

          while (*(v41 + 1) > v53);
        }

        goto LABEL_80;
      }
    }

    else if (v30 != -15252)
    {
      v31 = -15251;
      goto LABEL_47;
    }

    v32 = GTTraceFunc_argumentBytesWithMap((v27 + ((HIDWORD(v26) - v26) << 6)), *(v28 + 13), a3);
    v33 = v32;
    v34 = *(v28 + 8);
    if ((v34 + 15252) < 2 || (v34 + 15161) < 2 || a6 == 2)
    {
      v37 = *find_entry(a1, v32 + 8, 8uLL, 0);
      if (v37 && *(v37 + 32))
      {
        goto LABEL_80;
      }

      v38 = apr_palloc(*a1, 8uLL);
      *v38 = *(v33 + 1);
      v39 = a1;
      v40 = v38;
    }

    else
    {
      if ((v34 + 15151) >= 2 && (v34 + 15250) > 1 || a6)
      {
        goto LABEL_80;
      }

      v38 = v32 + 8;
      v39 = a1;
      v40 = 0;
    }

    apr_hash_set(v39, v38, 8, v40);
LABEL_80:
    v50 = atomic_load((v22 + 4));
    v51 = v26 + (v50 >> 6);
    v52 = (HIDWORD(v26) + 1);
    v26 = (v52 << 32) | v26;
    if (v52 == v51 - 1)
    {
      v26 = (v52 << 32) | v52;
      v22 = *(v22 + 40);
    }
  }
}

char *GTResourceDownloaderGetResourceFilename(uint64_t a1, int a2, char *__str, size_t __size)
{
  v5 = *(a1 + 46);
  if (v5 <= 0x3B)
  {
    if (*(a1 + 46) > 0x31u)
    {
      if (v5 == 50)
      {
        v12 = *(a1 + 8);
        v13 = *(a1 + 40);
        if (*(a1 + 48))
        {
          v29 = *(a1 + 40);
          snprintf(__str, __size, "MTLHeap-%llu-%u-0x%llx");
        }

        else
        {
          v23 = *(a1 + 8);
          snprintf(__str, __size, "MTLHeap-%llu-%u");
        }
      }

      else if (v5 == 57)
      {
        v9 = *(a1 + 8);
        v26 = *(a1 + 40);
        snprintf(__str, __size, "MTLIndirectCmdBuf-%llu-%u");
      }
    }

    else if (v5 == 16)
    {
      if (a2 == 1)
      {
        v17 = *(a1 + 8);
        v32 = *(a1 + 40);
        snprintf(__str, __size, "MTLAccelerationStructure-primitive-%llu-%u");
      }

      else if (!a2)
      {
        v11 = *(a1 + 8);
        v28 = *(a1 + 40);
        snprintf(__str, __size, "MTLAccelerationStructure-data-%llu-%u");
      }
    }

    else if (v5 == 22)
    {
      v7 = *(a1 + 8);
      v8 = *(a1 + 40);
      if (*(a1 + 48))
      {
        v25 = *(a1 + 40);
        snprintf(__str, __size, "MTLBuffer-%llu-%u-0x%llx");
      }

      else
      {
        v22 = *(a1 + 8);
        snprintf(__str, __size, "MTLBuffer-%llu-%u");
      }
    }
  }

  else if (*(a1 + 46) <= 0x52u)
  {
    if (v5 == 60)
    {
      if (a2 == 1)
      {
        v18 = *(a1 + 8);
        v33 = *(a1 + 40);
        snprintf(__str, __size, "MTLIntersectionFunctionTable-buffers-%llu-%u");
      }

      else if (!a2)
      {
        v15 = *(a1 + 8);
        v31 = *(a1 + 40);
        snprintf(__str, __size, "MTLIntersectionFunctionTable-functions-%llu-%u");
      }
    }

    else if (v5 == 80)
    {
      v10 = a1 + 456 * a2;
      if (*(a1 + 47))
      {
        v43 = *(v10 + 50);
        v44 = *(v10 + 48);
        v41 = *(v10 + 64);
        v42 = *(v10 + 66);
        v39 = *(v10 + 58);
        v40 = *(v10 + 60);
        v38 = *(v10 + 56);
        snprintf(__str, __size, "MTLTexture-%llu-%u-Origin:%u-%u-%u-Size:%u-%u-%u-Level%u-Slice%u", *(a1 + 8), *(a1 + 40), *(v10 + 52));
      }

      else if ((*(a1 + 47) & 4) != 0)
      {
        v19 = *(a1 + 24);
        v34 = *(a1 + 32);
        snprintf(__str, __size, "CAMetalLayer-%llu-index-%llu");
      }

      else
      {
        v35 = *(v10 + 50);
        v37 = *(v10 + 48);
        v21 = *(a1 + 8);
        v27 = *(a1 + 40);
        snprintf(__str, __size, "MTLTexture-%llu-%u-mipmap%u-slice%u");
      }
    }
  }

  else
  {
    switch(v5)
    {
      case 'S':
        v14 = *(a1 + 8);
        v30 = *(a1 + 40);
        snprintf(__str, __size, "MTLVisibleFunctionTable-%llu-%u");
        break;
      case 'V':
        v16 = *(a1 + 8);
        v36 = *(a1 + 40);
        snprintf(__str, __size, "IOSurface-%llu-%d-%u");
        break;
      case 'e':
        v6 = *(a1 + 8);
        v24 = *(a1 + 40);
        snprintf(__str, __size, "MTLTensor-%llu-%u");
        break;
    }
  }

  return __str;
}

void FlushGTMTL4FunctionReflection(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a2)
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 8);
    v8 = *v7;
    v9 = objc_autoreleasePoolPush();
    [*(v6 + 8) appendBytes:v7 length:v8];
    objc_autoreleasePoolPop(v9);
    v10 = *(a1 + 8);
    *(v10 + 32) = 0;
    *v10 = 0u;
    *(v10 + 16) = 0u;
    v11 = *(a1 + 8);
    v11[8] = 198;
    *v11 = 0xFFFFD01000000024;
    v30 = 0u;
    v12 = a3;
    v29[0] = a3;
    v29[1] = 137;
    v13 = *(a2 + 10);
    v29[2] = *(a2 + 9);
    v29[3] = v13;
    DYTraceEncode_InternalData(v29, v11, *(a1 + 16), v14, 0);
    if (*(a2 + 8))
    {
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = *(a1 + 24);
        v18 = *(a1 + 8);
        v19 = *v18;
        v20 = objc_autoreleasePoolPush();
        [*(v17 + 8) appendBytes:v18 length:v19];
        objc_autoreleasePoolPop(v20);
        v21 = *(a1 + 8);
        *(v21 + 32) = 0;
        *v21 = 0u;
        *(v21 + 16) = 0u;
        v22 = *(a1 + 8);
        v22[8] = 198;
        *v22 = 0xFFFFD01000000024;
        v23 = *a2 + v15;
        v27 = 0u;
        v28 = 0u;
        v26[0] = v12;
        v26[1] = 120;
        v24 = *(v23 + 12);
        *&v27 = *(v23 + 8);
        *(&v27 + 1) = v24;
        *&v28 = *v23;
        BYTE8(v28) = *(v23 + 13);
        HIDWORD(v28) = 0;
        *(&v28 + 9) = 0;
        DYTraceEncode_InternalData(v26, v22, *(a1 + 16), v25, 0);
        ++v16;
        v15 += 16;
      }

      while (v16 < *(a2 + 8));
    }
  }
}

void FlushChainedRenderPipelineStateInfo(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  ObjectStream = GetObjectStream_(a3, a2);
  v8 = *(a1 + 16);
  v9 = *(a1 + 32);
  v111[0] = *a1;
  v111[1] = v8;
  v10 = *(a2 + 56);
  v111[2] = v9;
  v112 = *(a1 + 48);
  *&v111[0] = ObjectStream;
  v105 = a4;
  *(*(a1 + 8) + 32) |= a4 | 0x1000;
  if (*(v10 + 208))
  {
    v11 = 0;
    v12 = 0;
    do
    {
      EncodeGTMTLBinding(v111, *(v10 + 72) + v11, 102);
      ++v12;
      v11 += 56;
    }

    while (v12 < *(v10 + 208));
  }

  if (*(v10 + 198))
  {
    v13 = 0;
    v14 = 0;
    do
    {
      EncodeGTMTLBinding(v111, *(v10 + 24) + v13, 103);
      ++v14;
      v13 += 56;
    }

    while (v14 < *(v10 + 198));
  }

  if (*(v10 + 204))
  {
    v15 = 0;
    v16 = 0;
    do
    {
      EncodeGTMTLBinding(v111, *(v10 + 40) + v15, 130);
      ++v16;
      v15 += 56;
    }

    while (v16 < *(v10 + 204));
  }

  if (*(v10 + 210))
  {
    v17 = 0;
    v18 = 0;
    do
    {
      EncodeGTMTLBinding(v111, *(v10 + 80) + v17, 133);
      ++v18;
      v17 += 56;
    }

    while (v18 < *(v10 + 210));
  }

  if (*(v10 + 206))
  {
    v19 = 0;
    v20 = 0;
    do
    {
      EncodeGTMTLBinding(v111, *(v10 + 48) + v19, 131);
      ++v20;
      v19 += 56;
    }

    while (v20 < *(v10 + 206));
  }

  if (*(v10 + 212))
  {
    v21 = 0;
    v22 = 0;
    do
    {
      EncodeGTMTLBinding(v111, *(v10 + 88) + v21, 134);
      ++v22;
      v21 += 56;
    }

    while (v22 < *(v10 + 212));
  }

  if (*(v10 + 200))
  {
    v23 = 0;
    v24 = 0;
    do
    {
      EncodeGTMTLBinding(v111, *(v10 + 32) + v23, 104);
      ++v24;
      v23 += 56;
    }

    while (v24 < *(v10 + 200));
  }

  v25 = *(v10 + 202);
  if (*(v10 + 202))
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    do
    {
      v29 = *(v10 + 56);
      v30 = v29 + v26;
      v31 = *(v29 + v26 + 16);
      if (v31 != 17 || *(v30 + 38))
      {
        if (*(v10 + 64) && (v31 == 16 || v31 == 17 && *(v29 + v26 + 38) == 1))
        {
          v28 = 1;
          v30 = *(v10 + 64);
        }

        EncodeGTMTLBinding(v111, v30, 121);
        v25 = *(v10 + 202);
      }

      ++v27;
      v26 += 56;
    }

    while (v27 < v25);
  }

  else
  {
    v28 = 0;
  }

  v32 = *(v10 + 64);
  if (v32)
  {
    v33 = *(v32 + 16);
    if (v33 == 16 || v33 == 17 && *(v32 + 38) == 1)
    {
      v34 = (*(v10 + 208) + *(v10 + 198) + *(v10 + 200) + *(v10 + 204) + *(v10 + 210) + *(v10 + 206)) | *(v10 + 212);
      v35 = 56;
      if (v34)
      {
        v35 = 32;
      }

      v36 = 200;
      if (!v34)
      {
        v36 = 202;
      }

      v37 = *(v10 + v36);
      if (v37)
      {
        v38 = (*(v10 + v35) + 38);
        do
        {
          v39 = *(v38 - 22);
          if (v39 == 17)
          {
            if (*v38 == 1)
            {
              goto LABEL_55;
            }
          }

          else if (v39 == 16)
          {
            goto LABEL_55;
          }

          v38 += 56;
          --v37;
        }

        while (v37);
      }

      if ((v28 & 1) == 0)
      {
        if (v34)
        {
          v40 = 104;
        }

        else
        {
          v40 = 121;
        }

        EncodeGTMTLBinding(v111, v32, v40);
      }
    }
  }

LABEL_55:
  if (*(v10 + 120))
  {
    v41 = *(a1 + 24);
    v42 = *(a1 + 8);
    v43 = *v42;
    v44 = objc_autoreleasePoolPush();
    [*(v41 + 8) appendBytes:v42 length:v43];
    objc_autoreleasePoolPop(v44);
    v45 = *(a1 + 8);
    *(v45 + 32) = 0;
    *v45 = 0u;
    *(v45 + 16) = 0u;
    v46 = *(a1 + 8);
    *(v46 + 32) = 198;
    *v46 = 0xFFFFD01000000024;
    v47 = *(v10 + 120);
    SavePointer(*(a1 + 32), *(v10 + 112), v47, v113);
    v110 = 0u;
    v106 = ObjectStream;
    v107 = 116;
    v108 = v113;
    v109 = v47;
    DYTraceEncode_InternalData(&v106, *(a1 + 8), *(a1 + 16), v48, 0);
  }

  if (*(v10 + 214))
  {
    v49 = 0;
    do
    {
      v50 = ObjectStream;
      v51 = *(a1 + 24);
      v52 = *(a1 + 8);
      v53 = *v52;
      v54 = objc_autoreleasePoolPush();
      v55 = *(v51 + 8);
      ObjectStream = v50;
      [v55 appendBytes:v52 length:v53];
      objc_autoreleasePoolPop(v54);
      v56 = *(a1 + 8);
      *(v56 + 32) = 0;
      *v56 = 0u;
      *(v56 + 16) = 0u;
      v57 = *(a1 + 8);
      *(v57 + 32) = 198;
      *v57 = 0xFFFFD01000000024;
      SaveFileWithURL(*(a1 + 32), *(*(v10 + 104) + 8 * v49), v113, 0, 1);
      v109 = 0;
      v110 = 0uLL;
      v106 = v50;
      v107 = 126;
      v108 = v113;
      v109 = *(*(v10 + 104) + 8 * v49);
      DYTraceEncode_InternalData(&v106, *(a1 + 8), *(a1 + 16), v58, 0);
      ++v49;
    }

    while (v49 < *(v10 + 214));
  }

  v59 = *(a2 + 56);
  FlushGTMTL4FunctionReflection(a1, v59[62], ObjectStream);
  FlushGTMTL4FunctionReflection(a1, v59[63], ObjectStream);
  FlushGTMTL4FunctionReflection(a1, v59[64], ObjectStream);
  FlushGTMTL4FunctionReflection(a1, v59[65], ObjectStream);
  FlushGTMTL4FunctionReflection(a1, v59[66], ObjectStream);
  v60 = *(a1 + 8);
  v61 = v60[8];
  if ((v61 & 0x1000) != 0)
  {
    v62 = v61 & 0xFFFFEFFF;
  }

  else
  {
    v62 = v61 | 0x2000;
  }

  v60[8] = v62;
  v63 = *(a1 + 24);
  v64 = *v60;
  if ((v62 & 0x1000) != 0)
  {
    v66 = *v60;
    v67 = v60;
    v65 = v105;
    do
    {
      v67 = (v67 + v66);
      v66 = *v67;
      v64 += v66;
    }

    while ((*(v67 + 33) & 0x20) == 0);
  }

  else
  {
    v65 = v105;
  }

  v68 = objc_autoreleasePoolPush();
  [*(v63 + 8) appendBytes:v60 length:v64];
  objc_autoreleasePoolPop(v68);
  v69 = *(a2 + 120);
  if (v69)
  {
    v70 = *(a1 + 8);
    *(v70 + 24) = 0;
    *(v70 + 8) = 0u;
    *(v70 + 32) = 0x77754300000004;
    *v70 = 0xFFFFD81400000028;
    *(v70 + 40) = ObjectStream;
    *(v70 + 48) = v69;
    *v70 = 56;
    v71 = *(a1 + 8);
    v72 = v71[8] | v65;
    v71[8] = v72;
    v73 = *(a1 + 24);
    v74 = *v71;
    if ((v72 & 0x1000) != 0)
    {
      v75 = *v71;
      v76 = v71;
      do
      {
        v76 = (v76 + v75);
        v75 = *v76;
        v74 += v75;
      }

      while ((*(v76 + 33) & 0x20) == 0);
    }

    v77 = objc_autoreleasePoolPush();
    [*(v73 + 8) appendBytes:v71 length:v74];
    objc_autoreleasePoolPop(v77);
  }

  v78 = *(a2 + 436);
  if (v78)
  {
    v79 = *(a1 + 8);
    *(v79 + 24) = 0;
    *(v79 + 8) = 0u;
    *(v79 + 32) = 0x6C754300000006;
    *v79 = 0xFFFFD83800000028;
    *(v79 + 40) = ObjectStream;
    *(v79 + 48) = v78;
    *v79 = 56;
    v80 = *(a1 + 8);
    v81 = v80[8] | v65;
    v80[8] = v81;
    v82 = *(a1 + 24);
    v83 = *v80;
    if ((v81 & 0x1000) != 0)
    {
      v84 = *v80;
      v85 = v80;
      do
      {
        v85 = (v85 + v84);
        v84 = *v85;
        v83 += v84;
      }

      while ((*(v85 + 33) & 0x20) == 0);
    }

    v86 = objc_autoreleasePoolPush();
    [*(v82 + 8) appendBytes:v80 length:v83];
    objc_autoreleasePoolPop(v86);
  }

  v87 = *(a2 + 432);
  v88 = *(a1 + 8);
  *(v88 + 24) = 0;
  *(v88 + 8) = 0u;
  *(v88 + 32) = 0x69754300000006;
  *v88 = 0xFFFFD83000000028;
  *(v88 + 40) = ObjectStream;
  *(v88 + 48) = v87;
  *v88 = 52;
  v89 = *(a1 + 8);
  v90 = v89[8] | v65;
  v89[8] = v90;
  v91 = *(a1 + 24);
  v92 = *v89;
  if ((v90 & 0x1000) != 0)
  {
    v93 = *v89;
    v94 = v89;
    do
    {
      v94 = (v94 + v93);
      v93 = *v94;
      v92 += v93;
    }

    while ((*(v94 + 33) & 0x20) == 0);
  }

  v95 = objc_autoreleasePoolPush();
  [*(v91 + 8) appendBytes:v89 length:v92];
  objc_autoreleasePoolPop(v95);
  v96 = *(a2 + 136);
  if (v96)
  {
    v97 = *(a1 + 8);
    *(v97 + 24) = 0;
    *(v97 + 8) = 0u;
    *(v97 + 32) = 0x77754300000004;
    *v97 = 0xFFFFD84B00000028;
    *(v97 + 40) = ObjectStream;
    *(v97 + 48) = v96;
    *v97 = 56;
    v98 = *(a1 + 8);
    v99 = v98[8] | v65;
    v98[8] = v99;
    v100 = *(a1 + 24);
    v101 = *v98;
    if ((v99 & 0x1000) != 0)
    {
      v102 = *v98;
      v103 = v98;
      do
      {
        v103 = (v103 + v102);
        v102 = *v103;
        v101 += v102;
      }

      while ((*(v103 + 33) & 0x20) == 0);
    }

    v104 = objc_autoreleasePoolPush();
    [*(v100 + 8) appendBytes:v98 length:v101];
    objc_autoreleasePoolPop(v104);
  }
}

uint64_t GetObjectStream_(uint64_t a1, uint64_t a2)
{
  entry = find_entry(a1, (a2 + 8), 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v3 = *(*entry + 32);
  if (!v3)
  {
    return 0;
  }

  v4 = atomic_load((v3 + 56));
  return *(v3 + (~(v4 >> 2) & 8));
}

void EncodeGTMTLBinding(uint64_t *a1, uint64_t a2, int a3)
{
  if (*(a2 + 16) == 17 && !*(a2 + 38))
  {
    return;
  }

  v6 = a1[3];
  v7 = a1[1];
  v8 = *v7;
  v9 = objc_autoreleasePoolPush();
  [*(v6 + 8) appendBytes:v7 length:v8];
  objc_autoreleasePoolPop(v9);
  v10 = a1[1];
  *(v10 + 32) = 0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  v11 = a1[1];
  *(v11 + 32) = 198;
  *v11 = 0xFFFFD01000000024;
  v12 = *(a2 + 16);
  if (v12 > 0x17)
  {
    if (v12 - 24 >= 4)
    {
      if (v12 == 35)
      {
        EncodeGTMTLBindingStart(a1, a2, a3);
        v48 = a1[1];
        *(v48 + (*v48)++) = *(a2 + 24);
        v49 = a1[1];
        *(v49 + (*v49)++) = *(a2 + 25);
        v50 = a1[1];
        v51 = *v50;
        v52 = (v51 + 3) & 0xFFFFFFFC;
        bzero(v50 + v51, (v52 - v51));
        *v50 = v52;
        v53 = a1[1];
        *(v53 + *v53) = *(a2 + 48);
        *v53 += 4;
        v54 = a1[1];
        *(v54 + *v54) = *(a2 + 50);
        *v54 += 4;
        v55 = a1[1];
        *(v55 + (*v55)++) = *(a2 + 52);
        v56 = a1[1];
        v57 = *v56;
        v58 = (v57 + 3) & 0xFFFFFFFC;
        bzero(v56 + v57, (v58 - v57));
        *v56 = v58;
        EncodeGTMTLStructType(a1, *(a2 + 32), 0);
        v47 = *(a2 + 40);
        v46 = a1;
LABEL_34:
        v67 = 0;
LABEL_39:

        EncodeGTMTLStructType(v46, v47, v67);
        return;
      }

      if (v12 != 37)
      {
        return;
      }
    }

LABEL_9:

    EncodeGTMTLBindingStart(a1, a2, a3);
    return;
  }

  if (*(a2 + 16) > 2u)
  {
    if (v12 != 3)
    {
      if (v12 == 16)
      {
        v20 = *(a2 + 24);
        v34 = *(a2 + 8) != 0;
        v22 = v20 != 0;
        EncodeGTMTLBindingStart(a1, a2, a3);
        v35 = a1[1];
        *(v35 + (*v35)++) = v34;
        v36 = a1[1];
        v37 = *v36;
        v38 = (v37 + 3) & 0xFFFFFFFC;
        bzero(v36 + v37, (v38 - v37));
        *v36 = v38;
      }

      else
      {
        if (v12 != 17)
        {
          return;
        }

        v20 = *(a2 + 24);
        v21 = *(a2 + 8) != 0;
        v22 = v20 != 0;
        EncodeGTMTLBindingStart(a1, a2, a3);
        v23 = a1[1];
        *(v23 + (*v23)++) = v21;
        v24 = a1[1];
        v25 = *v24;
        v26 = (v25 + 3) & 0xFFFFFFFC;
        bzero(v24 + v25, (v26 - v25));
        *v24 = v26;
        v27 = a1[1];
        *(v27 + *v27) = *(a2 + 38);
        *v27 += 8;
      }

      v39 = a1[1];
      *(v39 + *v39) = *(a2 + 32);
      *v39 += 8;
      v40 = a1[1];
      *(v40 + (*v40)++) = v22;
      v41 = a1[1];
      *(v41 + (*v41)++) = *(a2 + 37);
      v42 = a1[1];
      v43 = *v42;
      v44 = (v43 + 3) & 0xFFFFFFFC;
      bzero(v42 + v43, (v44 - v43));
      *v42 = v44;
      v45 = a1[1];
      *(v45 + *v45) = *(a2 + 36);
      *v45 += 8;
      if (!v20)
      {
        v20 = *(a2 + 8);
      }

      v46 = a1;
      v47 = v20;
      goto LABEL_38;
    }

    goto LABEL_9;
  }

  if (!*(a2 + 16))
  {
    v28 = *(a2 + 8);
    if (v28)
    {
      v29 = *v28;
      if (v29 == 1)
      {
LABEL_32:
        EncodeGTMTLBindingStart(a1, a2, a3);
        v59 = a1[1];
        *(v59 + *v59) = *(a2 + 28);
        *v59 += 8;
        v60 = a1[1];
        *(v60 + *v60) = *(a2 + 24);
        *v60 += 8;
        v61 = a1[1];
        *(v61 + *v61) = *(a2 + 30);
        *v61 += 8;
        v62 = a1[1];
        *(v62 + (*v62)++) = v28 != 0;
        v63 = a1[1];
        *(v63 + (*v63)++) = *(a2 + 31);
        v64 = a1[1];
        v65 = *v64;
        v66 = (v65 + 3) & 0xFFFFFFFC;
        bzero(v64 + v65, (v66 - v65));
        *v64 = v66;
        if (!v28)
        {
          return;
        }

        v46 = a1;
        v47 = v28;
        goto LABEL_34;
      }

      if (v29 == 60 && v28[22] == 1)
      {
        v28 = *(v28 + 1);
        goto LABEL_32;
      }
    }

    v28 = 0;
    goto LABEL_32;
  }

  if (v12 != 1)
  {
    EncodeGTMTLBindingStart(a1, a2, a3);
    v13 = a1[1];
    *(v13 + *v13) = *(a2 + 25);
    *v13 += 8;
    v14 = a1[1];
    *(v14 + *v14) = *(a2 + 24);
    *v14 += 8;
    v15 = a1[1];
    *(v15 + *v15) = *(a2 + 26);
    *v15 += 8;
    v16 = a1[1];
    *(v16 + (*v16)++) = *(a2 + 27);
    v17 = a1[1];
    v18 = *v17;
    v19 = (v18 + 3) & 0xFFFFFFFC;
    bzero(v17 + v18, (v19 - v18));
    *v17 = v19;
    return;
  }

  v30 = *(a2 + 8);
  if (v30)
  {
    v31 = *(v30 + 22);
    v32 = *(v30 + 16);
    v33 = *(v30 + 8) != 0;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
  }

  EncodeGTMTLBindingStart(a1, a2, a3);
  v68 = a1[1];
  *(v68 + *v68) = *(a2 + 28);
  *v68 += 8;
  v69 = a1[1];
  *(v69 + *v69) = *(a2 + 24);
  *v69 += 8;
  v70 = a1[1];
  *(v70 + *v70) = v31;
  *v70 += 8;
  v71 = a1[1];
  *(v71 + *v71) = v32;
  *v71 += 8;
  v72 = a1[1];
  *(v72 + (*v72)++) = v33;
  v73 = a1[1];
  v74 = *v73;
  v75 = (v74 + 3) & 0xFFFFFFFC;
  bzero(v73 + v74, (v75 - v74));
  *v73 = v75;
  if (v33)
  {
    v47 = *(v30 + 8);
    v46 = a1;
LABEL_38:
    v67 = 1;
    goto LABEL_39;
  }
}

void EncodeGTMTLBindingStart(uint64_t *a1, uint64_t a2, int a3)
{
  v20[0] = *"CiSululuiul";
  memset(&v20[1], 0, 48);
  __strcat_chk();
  v6 = *a1;
  v7 = a1[1];
  v8 = strlen(v20);
  v9 = v8 + 1;
  memcpy(v7 + *v7, v20, v8 + 1);
  *v7 += v9;
  v10 = a1[1];
  v11 = *v10;
  LODWORD(v7) = (v11 + 3) & 0xFFFFFFFC;
  bzero(v10 + v11, (v7 - v11));
  *v10 = v7;
  v12 = a1[1];
  *(v12 + *v12) = v6;
  *v12 += 8;
  v13 = a1[1];
  *(v13 + *v13) = a3;
  *v13 += 4;
  EncodeString(a1[1], *a2);
  v14 = a1[1];
  v15 = *v14;
  LODWORD(v10) = (v15 + 3) & 0xFFFFFFFC;
  bzero(v14 + v15, (v10 - v15));
  *v14 = v10;
  v16 = a1[1];
  *(v16 + *v16) = *(a2 + 16);
  *v16 += 8;
  v17 = a1[1];
  *(v17 + *v17) = *(a2 + 17);
  *v17 += 8;
  v18 = a1[1];
  *(v18 + *v18) = *(a2 + 19) & 1;
  *v18 += 4;
  v19 = a1[1];
  *(v19 + *v19) = *(a2 + 18);
  *v19 += 8;
}

void EncodeGTMTLStructType(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = *(a1 + 24);
  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = *v6;
  v9 = objc_autoreleasePoolPush();
  [*(v5 + 8) appendBytes:v6 length:v8];
  objc_autoreleasePoolPop(v9);
  v10 = *(a1 + 8);
  *(v10 + 32) = 0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  v11 = *(a1 + 8);
  *(v11 + 32) = 198;
  strcpy((v11 + 36), "Ci");
  *v11 = 0xFFFFD01000000027;
  v12 = *(a1 + 8);
  v13 = *v12;
  v14 = (v13 + 3) & 0xFFFFFFFC;
  bzero(v12 + v13, (v14 - v13));
  *v12 = v14;
  v15 = *(a1 + 8);
  v64 = v7;
  *(v15 + *v15) = v7;
  *v15 += 8;
  v16 = *(a1 + 8);
  *(v16 + *v16) = *(a2 + 16);
  *v16 += 4;
  if (*(a2 + 16))
  {
    v17 = 0;
    v18 = 0;
    v63 = a2;
    do
    {
      v67 = *(a2 + 8);
      v68 = v67 + v17;
      v19 = *(v67 + v17 + 24);
      if (v19 == 60)
      {
        v20 = 0;
        v65 = 0;
        v21 = 0;
        v22 = *(v68 + 8) != 0;
      }

      else
      {
        if (v19 == 2)
        {
          v21 = 0;
          v65 = 0;
          v20 = *(v67 + v17 + 8) != 0;
        }

        else
        {
          v20 = 0;
          if (v19 == 1)
          {
            v21 = *(v67 + v17 + 8) != 0;
            v65 = v21;
          }

          else
          {
            v65 = 0;
            v21 = 0;
          }
        }

        v22 = 0;
      }

      v23 = *(a1 + 24);
      v24 = *(a1 + 8);
      v25 = *v24;
      v26 = objc_autoreleasePoolPush();
      [*(v23 + 8) appendBytes:v24 length:v25];
      objc_autoreleasePoolPop(v26);
      v27 = *(a1 + 8);
      *(v27 + 32) = 0;
      *v27 = 0u;
      *(v27 + 16) = 0u;
      v28 = *(a1 + 8);
      *(v28 + 32) = 198;
      *v28 = 0xFFFFD01000000024;
      strcpy((v28 + 36), "CiSulbbulbb");
      *v28 = 48;
      v29 = *(a1 + 8);
      v30 = *v29;
      LODWORD(v24) = (v30 + 3) & 0xFFFFFFFC;
      bzero(v29 + v30, (v24 - v30));
      *v29 = v24;
      v31 = *(a1 + 8);
      *(v31 + *v31) = v64;
      *v31 += 8;
      v32 = *(a1 + 8);
      v33 = v67;
      *(v32 + *v32) = *(v68 + 24);
      *v32 += 4;
      EncodeString(*(a1 + 8), *(v67 + v17));
      v34 = *(a1 + 8);
      v35 = *v34;
      LODWORD(v25) = (v35 + 3) & 0xFFFFFFFC;
      bzero(v34 + v35, (v25 - v35));
      *v34 = v25;
      v36 = *(a1 + 8);
      *(v36 + *v36) = *(v67 + v17 + 16);
      *v36 += 8;
      v37 = *(a1 + 8);
      *(v37 + (*v37)++) = v21;
      v38 = *(a1 + 8);
      *(v38 + (*v38)++) = v20;
      v39 = *(a1 + 8);
      v40 = *v39;
      v41 = (v40 + 3) & 0xFFFFFFFC;
      bzero(v39 + v40, (v41 - v40));
      *v39 = v41;
      v42 = *(a1 + 8);
      *(v42 + *v42) = *(v67 + v17 + 22);
      *v42 += 8;
      v43 = *(a1 + 8);
      *(v43 + (*v43)++) = a3;
      v44 = *(a1 + 8);
      *(v44 + (*v44)++) = v22;
      v45 = *(a1 + 8);
      v46 = *v45;
      v47 = (v46 + 3) & 0xFFFFFFFC;
      bzero(v45 + v46, (v47 - v46));
      *v45 = v47;
      if (a3)
      {
        if ((*(v68 + 24) - 62) > 0xFu)
        {
          v48 = 0;
        }

        else
        {
          v48 = asc_29BD3A[(*(v68 + 24) - 62)];
        }

        v49 = *(a1 + 24);
        v50 = *(a1 + 8);
        v51 = *v50;
        v52 = objc_autoreleasePoolPush();
        [*(v49 + 8) appendBytes:v50 length:v51];
        objc_autoreleasePoolPop(v52);
        v53 = *(a1 + 8);
        *(v53 + 32) = 0;
        *v53 = 0u;
        *(v53 + 16) = 0u;
        v54 = *(a1 + 8);
        *(v54 + 32) = 0x756C7543000000C6;
        *v54 = 0xFFFFD01000000024;
        *(v54 + 40) = 108;
        *v54 = 42;
        v55 = *(a1 + 8);
        v56 = *v55;
        LODWORD(v50) = (v56 + 3) & 0xFFFFFFFC;
        bzero(v55 + v56, (v50 - v56));
        *v55 = v50;
        v57 = *(a1 + 8);
        *(v57 + *v57) = v64;
        *v57 += 8;
        v58 = *(a1 + 8);
        *(v58 + *v58) = v48;
        *v58 += 8;
        v59 = *(a1 + 8);
        v33 = v67;
        *(v59 + *v59) = *(v67 + v17 + 25);
        *v59 += 8;
      }

      if (v65)
      {
        if (*(v68 + 24) == 1)
        {
          v60 = *(v33 + v17 + 8);
        }

        else
        {
          v60 = 0;
        }

        EncodeGTMTLStructType(a1, v60, a3);
        if (v20)
        {
LABEL_24:
          if (*(v68 + 24) == 2)
          {
            v61 = *(v33 + v17 + 8);
          }

          else
          {
            v61 = 0;
          }

          EncodeGTMTLArrayType(a1, v61, a3);
          if (!v22)
          {
            goto LABEL_32;
          }

LABEL_28:
          if (*(v68 + 24) == 60)
          {
            v62 = *(v33 + v17 + 8);
          }

          else
          {
            v62 = 0;
          }

          EncodeGTMTLPointerType(a1, v62, a3);
          goto LABEL_32;
        }
      }

      else if (v20)
      {
        goto LABEL_24;
      }

      if (v22)
      {
        goto LABEL_28;
      }

LABEL_32:
      ++v18;
      a2 = v63;
      v17 += 32;
    }

    while (v18 < *(v63 + 16));
  }
}

int *EncodeString(int *result, char *__s)
{
  v2 = result;
  if (__s)
  {
    v4 = strlen(__s);
    v5 = v4 + 1;
    result = memcpy(v2 + *v2, __s, v4 + 1);
    v6 = *v2 + v5;
  }

  else
  {
    *(result + *result) = 0xFFFFFFFFLL;
    v6 = *result + 8;
  }

  *v2 = v6;
  return result;
}

void EncodeGTMTLArrayType(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v47 = *a1;
  v6 = *(a2 + 24);
  if (v6 == 60)
  {
    v7 = 0;
    v46 = 0;
    v8 = 0;
    v9 = *(a2 + 8) != 0;
  }

  else
  {
    if (v6 == 2)
    {
      v8 = 0;
      v46 = 0;
      v7 = *(a2 + 8) != 0;
    }

    else
    {
      v7 = 0;
      if (v6 == 1)
      {
        v8 = *(a2 + 8) != 0;
        v46 = v8;
      }

      else
      {
        v46 = 0;
        v8 = 0;
      }
    }

    v9 = 0;
  }

  v10 = a1[3];
  v11 = a1[1];
  v12 = *v11;
  v13 = objc_autoreleasePoolPush();
  [*(v10 + 8) appendBytes:v11 length:v12];
  objc_autoreleasePoolPop(v13);
  v14 = a1[1];
  *(v14 + 32) = 0;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  v15 = a1[1];
  *(v15 + 32) = 198;
  *v15 = 0xFFFFD01000000024;
  strcpy((v15 + 36), "Ciululbbbulb");
  *v15 = 49;
  v16 = a1[1];
  v17 = *v16;
  LODWORD(v12) = (v17 + 3) & 0xFFFFFFFC;
  bzero(v16 + v17, (v12 - v17));
  *v16 = v12;
  v18 = a1[1];
  *(v18 + *v18) = v47;
  *v18 += 8;
  v19 = a1[1];
  *(v19 + *v19) = *(a2 + 20);
  *v19 += 4;
  v20 = a1[1];
  *(v20 + *v20) = *(a2 + 24);
  *v20 += 8;
  v21 = a1[1];
  *(v21 + *v21) = *(a2 + 16);
  *v21 += 8;
  v22 = a1[1];
  *(v22 + (*v22)++) = v8;
  v23 = a1[1];
  *(v23 + (*v23)++) = v7;
  v24 = a1[1];
  *(v24 + (*v24)++) = a3;
  v25 = a1[1];
  v26 = *v25;
  LODWORD(v12) = (v26 + 3) & 0xFFFFFFFC;
  bzero(v25 + v26, (v12 - v26));
  *v25 = v12;
  v27 = a1[1];
  *(v27 + *v27) = *(a2 + 22);
  *v27 += 8;
  v28 = a1[1];
  *(v28 + (*v28)++) = v9;
  v29 = a1[1];
  v30 = *v29;
  LODWORD(v12) = (v30 + 3) & 0xFFFFFFFC;
  bzero(v29 + v30, (v12 - v30));
  *v29 = v12;
  if (a3)
  {
    if ((*(a2 + 24) - 62) > 0xFu)
    {
      v31 = 0;
    }

    else
    {
      v31 = asc_29BD3A[(*(a2 + 24) - 62)];
    }

    v32 = a1[3];
    v33 = a1[1];
    v34 = *v33;
    v35 = objc_autoreleasePoolPush();
    [*(v32 + 8) appendBytes:v33 length:v34];
    objc_autoreleasePoolPop(v35);
    v36 = a1[1];
    *(v36 + 32) = 0;
    *v36 = 0u;
    *(v36 + 16) = 0u;
    v37 = a1[1];
    *(v37 + 32) = 0x756C7543000000C6;
    *v37 = 0xFFFFD01000000024;
    *(v37 + 40) = 108;
    *v37 = 42;
    v38 = a1[1];
    v39 = *v38;
    LODWORD(v34) = (v39 + 3) & 0xFFFFFFFC;
    bzero(v38 + v39, (v34 - v39));
    *v38 = v34;
    v40 = a1[1];
    *(v40 + *v40) = v47;
    *v40 += 8;
    v41 = a1[1];
    *(v41 + *v41) = v31;
    *v41 += 8;
    v42 = a1[1];
    *(v42 + *v42) = *(a2 + 25);
    *v42 += 8;
  }

  if (v46)
  {
    if (*(a2 + 24) == 1)
    {
      v44 = *(a2 + 8);
    }

    else
    {
      v44 = 0;
    }

    EncodeGTMTLStructType(a1, v44, a3);
    if (!v7)
    {
LABEL_16:
      if (!v9)
      {
        return;
      }

      goto LABEL_17;
    }
  }

  else if (!v7)
  {
    goto LABEL_16;
  }

  if (*(a2 + 24) == 2)
  {
    v45 = *(a2 + 8);
  }

  else
  {
    v45 = 0;
  }

  EncodeGTMTLArrayType(a1, v45, a3);
  if (v9)
  {
LABEL_17:
    if (*(a2 + 24) == 60)
    {
      v43 = *(a2 + 8);
    }

    else
    {
      v43 = 0;
    }

    EncodeGTMTLPointerType(a1, v43, a3);
  }
}

void EncodeGTMTLPointerType(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v5 = *a1;
  v6 = *(a2 + 22);
  if (v6 == 2)
  {
    v8 = 0;
    v9 = 0;
    v7 = *(a2 + 8) != 0;
  }

  else if (v6 == 1)
  {
    v7 = 0;
    v8 = *(a2 + 8) != 0;
    v9 = v8;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = 0;
  }

  v10 = a1[3];
  v11 = a1[1];
  v12 = *v11;
  v13 = objc_autoreleasePoolPush();
  [*(v10 + 8) appendBytes:v11 length:v12];
  objc_autoreleasePoolPop(v13);
  v14 = a1[1];
  *(v14 + 32) = 0;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  v15 = a1[1];
  *(v15 + 32) = 198;
  *v15 = 0xFFFFD01000000024;
  strcpy((v15 + 36), "Cululululbb");
  *v15 = 48;
  v16 = a1[1];
  v17 = *v16;
  LODWORD(v11) = (v17 + 3) & 0xFFFFFFFC;
  bzero(v16 + v17, (v11 - v17));
  *v16 = v11;
  v18 = a1[1];
  *(v18 + *v18) = v5;
  *v18 += 8;
  v19 = a1[1];
  *(v19 + *v19) = *(a2 + 22);
  *v19 += 8;
  v20 = a1[1];
  *(v20 + *v20) = *(a2 + 23);
  *v20 += 8;
  v21 = a1[1];
  *(v21 + *v21) = *(a2 + 20);
  *v21 += 8;
  v22 = a1[1];
  *(v22 + *v22) = *(a2 + 16);
  *v22 += 8;
  v23 = a1[1];
  *(v23 + (*v23)++) = v8;
  v24 = a1[1];
  *(v24 + (*v24)++) = v7;
  v25 = a1[1];
  v26 = *v25;
  LODWORD(v11) = (v26 + 3) & 0xFFFFFFFC;
  bzero(v25 + v26, (v11 - v26));
  *v25 = v11;
  if (v9)
  {
    if (*(a2 + 22) == 1)
    {
      v27 = *(a2 + 8);
    }

    else
    {
      v27 = 0;
    }

    EncodeGTMTLStructType(a1, v27, a3);
  }

  if (v7)
  {
    if (*(a2 + 22) == 2)
    {
      v28 = *(a2 + 8);
    }

    else
    {
      v28 = 0;
    }

    EncodeGTMTLArrayType(a1, v28, a3);
  }
}

void FlushChainedComputePipelineStateInfo(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  ObjectStream = GetObjectStream_(a3, a2);
  v8 = *(a1 + 16);
  v9 = *(a1 + 32);
  v85[0] = *a1;
  v85[1] = v8;
  v10 = *(a2 + 64);
  v85[2] = v9;
  v86 = *(a1 + 48);
  *&v85[0] = ObjectStream;
  v79 = a4;
  *(*(a1 + 8) + 32) |= a4 | 0x1000;
  if (*(v10 + 92))
  {
    v11 = 0;
    v12 = 0;
    do
    {
      EncodeGTMTLBinding(v85, *(v10 + 24) + v11, 105);
      ++v12;
      v11 += 56;
    }

    while (v12 < *(v10 + 92));
  }

  if (*(v10 + 94))
  {
    v13 = 0;
    v14 = 0;
    do
    {
      EncodeGTMTLBinding(v85, *(v10 + 32) + v13, 106);
      ++v14;
      v13 += 56;
    }

    while (v14 < *(v10 + 94));
  }

  v78 = a2;
  if (*(v10 + 64))
  {
    v15 = *(a1 + 24);
    v16 = *(a1 + 8);
    v17 = *v16;
    v18 = objc_autoreleasePoolPush();
    [*(v15 + 8) appendBytes:v16 length:v17];
    objc_autoreleasePoolPop(v18);
    v19 = *(a1 + 8);
    *(v19 + 32) = 0;
    *v19 = 0u;
    *(v19 + 16) = 0u;
    v20 = *(a1 + 8);
    *(v20 + 32) = 198;
    *v20 = 0xFFFFD01000000024;
    v21 = *(v10 + 64);
    SavePointer(*(a1 + 32), *(v10 + 56), v21, v87);
    v84 = 0u;
    v80 = ObjectStream;
    v81 = 116;
    v82 = v87;
    v83 = v21;
    DYTraceEncode_InternalData(&v80, *(a1 + 8), *(a1 + 16), v22, 0);
  }

  if (*(v10 + 96))
  {
    v23 = 0;
    do
    {
      v24 = ObjectStream;
      v25 = *(a1 + 24);
      v26 = *(a1 + 8);
      v27 = *v26;
      v28 = objc_autoreleasePoolPush();
      v29 = *(v25 + 8);
      ObjectStream = v24;
      [v29 appendBytes:v26 length:v27];
      objc_autoreleasePoolPop(v28);
      v30 = *(a1 + 8);
      *(v30 + 32) = 0;
      *v30 = 0u;
      *(v30 + 16) = 0u;
      v31 = *(a1 + 8);
      *(v31 + 32) = 198;
      *v31 = 0xFFFFD01000000024;
      SaveFileWithURL(*(a1 + 32), *(*(v10 + 48) + 8 * v23), v87, 0, 1);
      v83 = 0;
      v84 = 0uLL;
      v80 = v24;
      v81 = 126;
      v82 = v87;
      v83 = *(*(v10 + 48) + 8 * v23);
      DYTraceEncode_InternalData(&v80, *(a1 + 8), *(a1 + 16), v32, 0);
      ++v23;
    }

    while (v23 < *(v10 + 96));
  }

  FlushGTMTL4FunctionReflection(a1, *(*(v78 + 64) + 160), ObjectStream);
  v33 = *(a1 + 8);
  v34 = v33[8];
  if ((v34 & 0x1000) != 0)
  {
    v35 = v34 & 0xFFFFEFFF;
  }

  else
  {
    v35 = v34 | 0x2000;
  }

  v33[8] = v35;
  v36 = *(a1 + 24);
  v37 = *v33;
  if ((v35 & 0x1000) != 0)
  {
    v39 = *v33;
    v40 = v33;
    v38 = v79;
    do
    {
      v40 = (v40 + v39);
      v39 = *v40;
      v37 += v39;
    }

    while ((*(v40 + 33) & 0x20) == 0);
  }

  else
  {
    v38 = v79;
  }

  v41 = objc_autoreleasePoolPush();
  [*(v36 + 8) appendBytes:v33 length:v37];
  objc_autoreleasePoolPop(v41);
  v42 = *(v78 + 128);
  if (v42)
  {
    v43 = *(a1 + 8);
    *(v43 + 24) = 0;
    *(v43 + 8) = 0u;
    *(v43 + 32) = 0x77754300000004;
    *v43 = 0xFFFFC18B00000028;
    *(v43 + 40) = ObjectStream;
    *(v43 + 48) = v42;
    *v43 = 56;
    v44 = *(a1 + 8);
    v45 = v44[8] | v38;
    v44[8] = v45;
    v46 = *(a1 + 24);
    v47 = *v44;
    if ((v45 & 0x1000) != 0)
    {
      v48 = *v44;
      v49 = v44;
      do
      {
        v49 = (v49 + v48);
        v48 = *v49;
        v47 += v48;
      }

      while ((*(v49 + 33) & 0x20) == 0);
    }

    v50 = objc_autoreleasePoolPush();
    [*(v46 + 8) appendBytes:v44 length:v47];
    objc_autoreleasePoolPop(v50);
  }

  v51 = *(v78 + 120);
  if (v51)
  {
    v52 = *(a1 + 8);
    *(v52 + 24) = 0;
    *(v52 + 8) = 0u;
    *(v52 + 32) = 0x77754300000004;
    *v52 = 0xFFFFD81A00000028;
    *(v52 + 40) = ObjectStream;
    *(v52 + 48) = v51;
    *v52 = 56;
    v53 = *(a1 + 8);
    v54 = v53[8] | v38;
    v53[8] = v54;
    v55 = *(a1 + 24);
    v56 = *v53;
    if ((v54 & 0x1000) != 0)
    {
      v57 = *v53;
      v58 = v53;
      do
      {
        v58 = (v58 + v57);
        v57 = *v58;
        v56 += v57;
      }

      while ((*(v58 + 33) & 0x20) == 0);
    }

    v59 = objc_autoreleasePoolPush();
    [*(v55 + 8) appendBytes:v53 length:v56];
    objc_autoreleasePoolPop(v59);
  }

  v60 = *(v78 + 216);
  v61 = *(a1 + 8);
  *(v61 + 24) = 0;
  *(v61 + 8) = 0u;
  *(v61 + 32) = 0x69754300000006;
  *v61 = 0xFFFFD83100000028;
  *(v61 + 40) = ObjectStream;
  *(v61 + 48) = v60;
  *v61 = 52;
  v62 = *(a1 + 8);
  v63 = v62[8] | v38;
  v62[8] = v63;
  v64 = *(a1 + 24);
  v65 = *v62;
  if ((v63 & 0x1000) != 0)
  {
    v66 = *v62;
    v67 = v62;
    do
    {
      v67 = (v67 + v66);
      v66 = *v67;
      v65 += v66;
    }

    while ((*(v67 + 33) & 0x20) == 0);
  }

  v68 = objc_autoreleasePoolPush();
  [*(v64 + 8) appendBytes:v62 length:v65];
  objc_autoreleasePoolPop(v68);
  v69 = *(v78 + 136);
  if (v69)
  {
    v70 = *(a1 + 8);
    *(v70 + 24) = 0;
    *(v70 + 8) = 0u;
    *(v70 + 32) = 0x77754300000004;
    *v70 = 0xFFFFD84E00000028;
    *(v70 + 40) = ObjectStream;
    *(v70 + 48) = v69;
    *v70 = 56;
    v71 = *(a1 + 8);
    v72 = v71[8] | v38;
    v71[8] = v72;
    v73 = *(a1 + 24);
    v74 = *v71;
    if ((v72 & 0x1000) != 0)
    {
      v75 = *v71;
      v76 = v71;
      do
      {
        v76 = (v76 + v75);
        v75 = *v76;
        v74 += v75;
      }

      while ((*(v76 + 33) & 0x20) == 0);
    }

    v77 = objc_autoreleasePoolPush();
    [*(v73 + 8) appendBytes:v71 length:v74];
    objc_autoreleasePoolPop(v77);
  }
}

void FlushChainedMachineLearningPipelineStateInfo(__int128 *a1, uint64_t a2, uint64_t a3, int a4)
{
  ObjectStream = GetObjectStream_(a3, a2);
  v8 = a1[1];
  v9 = a1[2];
  v21 = *a1;
  v22 = v8;
  v10 = *(a2 + 56);
  v23 = v9;
  v24 = *(a1 + 6);
  *&v21 = ObjectStream;
  v11 = *(a1 + 1);
  v12 = v11[8] | a4 | 0x1000;
  v11[8] = v12;
  if (*(v10 + 8))
  {
    v13 = 0;
    v14 = 0;
    do
    {
      EncodeGTMTLBinding(&v21, *v10 + v13, 136);
      ++v14;
      v13 += 56;
    }

    while (v14 < *(v10 + 8));
    v11 = *(a1 + 1);
    v12 = v11[8];
  }

  if ((v12 & 0x1000) != 0)
  {
    v15 = v12 & 0xFFFFEFFF;
  }

  else
  {
    v15 = v12 | 0x2000;
  }

  v11[8] = v15;
  v16 = *(a1 + 3);
  v17 = *v11;
  if ((v15 & 0x1000) != 0)
  {
    v18 = *v11;
    v19 = v11;
    do
    {
      v19 = (v19 + v18);
      v18 = *v19;
      v17 += v18;
    }

    while ((*(v19 + 33) & 0x20) == 0);
  }

  v20 = objc_autoreleasePoolPush();
  [*(v16 + 8) appendBytes:v11 length:{v17, v21, v22, v23, v24}];

  objc_autoreleasePoolPop(v20);
}

void FlushChainedFunctionInfo(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(a1 + 8);
  v6 = v5[8] | a4;
  v5[8] = v6;
  if (a2 && *(a2 + 80))
  {
    ObjectStream = GetObjectStream_(a3, a2);
    v83 = a2;
    v9 = *(a2 + 80);
    v10 = *(a1 + 8);
    v10[8] |= 0x1000u;
    v11 = *(a1 + 24);
    v12 = *v10;
    v13 = objc_autoreleasePoolPush();
    [*(v11 + 8) appendBytes:v10 length:v12];
    objc_autoreleasePoolPop(v13);
    v14 = *(a1 + 8);
    *(v14 + 32) = 0;
    *v14 = 0u;
    *(v14 + 16) = 0u;
    v15 = *(a1 + 8);
    v15[8] = 198;
    *v15 = 0xFFFFD01000000024;
    v89 = ObjectStream;
    *&v90[0] = 101;
    v16 = *(v9 + 42);
    *(&v90[0] + 1) = *(v9 + 40);
    *&v90[1] = v16;
    *(&v90[1] + 8) = *(v9 + 8);
    DYTraceEncode_InternalData(&v89, v15, *(a1 + 16), v17, 0);
    v18 = *(a1 + 24);
    v19 = *(a1 + 8);
    v20 = *v19;
    v21 = objc_autoreleasePoolPush();
    [*(v18 + 8) appendBytes:v19 length:v20];
    objc_autoreleasePoolPop(v21);
    v22 = *(a1 + 8);
    *(v22 + 32) = 0;
    *v22 = 0u;
    *(v22 + 16) = 0u;
    v23 = *(a1 + 8);
    v23[8] = 198;
    *v23 = 0xFFFFD01000000024;
    v89 = ObjectStream;
    LODWORD(v90[0]) = 137;
    memset(v90 + 4, 0, 36);
    *(&v90[0] + 1) = *(v9 + 49);
    DYTraceEncode_InternalData(&v89, v23, *(a1 + 16), v24, 0);
    if (*(v9 + 46))
    {
      v25 = 0;
      v26 = 0;
      do
      {
        v27 = *(a1 + 24);
        v28 = *(a1 + 8);
        v29 = *v28;
        v30 = objc_autoreleasePoolPush();
        [*(v27 + 8) appendBytes:v28 length:v29];
        objc_autoreleasePoolPop(v30);
        v31 = *(a1 + 8);
        *(v31 + 32) = 0;
        *v31 = 0u;
        *(v31 + 16) = 0u;
        v32 = *(a1 + 8);
        v32[8] = 198;
        *v32 = 0xFFFFD01000000024;
        v33 = *(v9 + 24) + v25;
        memset(v90 + 8, 0, 32);
        v89 = ObjectStream;
        *&v90[0] = 109;
        *(&v90[0] + 1) = *(v33 + 8);
        *&v90[1] = *(v33 + 12);
        *(&v90[1] + 1) = *v33;
        LOBYTE(v90[2]) = *(v33 + 13);
        DWORD1(v90[2]) = 0;
        *(&v90[2] + 1) = 0;
        DYTraceEncode_InternalData(&v89, v32, *(a1 + 16), v34, 0);
        ++v26;
        v25 += 16;
      }

      while (v26 < *(v9 + 46));
    }

    v35 = ObjectStream;
    if (*(v9 + 47))
    {
      v36 = 0;
      v37 = 0;
      do
      {
        v38 = *(a1 + 24);
        v39 = *(a1 + 8);
        v40 = *v39;
        v41 = objc_autoreleasePoolPush();
        [*(v38 + 8) appendBytes:v39 length:v40];
        objc_autoreleasePoolPop(v41);
        v42 = *(a1 + 8);
        *(v42 + 32) = 0;
        *v42 = 0u;
        *(v42 + 16) = 0u;
        v43 = *(a1 + 8);
        v43[8] = 198;
        *v43 = 0xFFFFD01000000024;
        v44 = *(v9 + 32) + v36;
        memset(v90 + 8, 0, 32);
        v89 = v35;
        *&v90[0] = 120;
        *(&v90[0] + 1) = *(v44 + 8);
        *&v90[1] = *(v44 + 12);
        *(&v90[1] + 1) = *v44;
        LOBYTE(v90[2]) = *(v44 + 13);
        DWORD1(v90[2]) = 0;
        *(&v90[2] + 1) = 0;
        DYTraceEncode_InternalData(&v89, v43, *(a1 + 16), v45, 0);
        ++v37;
        v36 += 16;
      }

      while (v37 < *(v9 + 47));
    }

    v46 = v35;
    if (*(v83 + 72))
    {
      v47 = *(a1 + 24);
      v48 = *(a1 + 8);
      v49 = *v48;
      v50 = objc_autoreleasePoolPush();
      [*(v47 + 8) appendBytes:v48 length:v49];
      objc_autoreleasePoolPop(v50);
      v51 = *(a1 + 8);
      *(v51 + 32) = 0;
      *v51 = 0u;
      *(v51 + 16) = 0u;
      v52 = *(a1 + 8);
      *(v52 + 32) = 198;
      *v52 = 0xFFFFD01000000024;
      v53 = EncodeDYMTLFunctionConstantValues(*(v83 + 72), v52, *(a1 + 16));
      SavePointer(*(a1 + 32), *(a1 + 8), v53, &v89);
      v84 = v46;
      v85 = 111;
      v86 = 0u;
      v87 = 0u;
      v88 = 0;
      *(&v86 + 4) = &v89;
      DYTraceEncode_InternalData(&v84, *(a1 + 8), *(a1 + 16), v54, 0);
    }

    if (*(v83 + 64))
    {
      v55 = *(a1 + 24);
      v56 = *(a1 + 8);
      v57 = *v56;
      v58 = objc_autoreleasePoolPush();
      [*(v55 + 8) appendBytes:v56 length:v57];
      objc_autoreleasePoolPop(v58);
      v60 = *(a1 + 8);
      *(v60 + 32) = 0;
      *v60 = 0u;
      *(v60 + 16) = 0u;
      v61 = *(a1 + 8);
      v61[8] = 198;
      *v61 = 0xFFFFD01000000024;
      v89 = v46;
      LODWORD(v90[0]) = 117;
      memset(v90 + 4, 0, 36);
      v62 = *(v83 + 64);
      if (!v62)
      {
        v62 = "";
      }

      *(&v90[0] + 1) = v62;
      DYTraceEncode_InternalData(&v89, v61, *(a1 + 16), v59, 0);
    }

    v63 = *(a1 + 24);
    v64 = *(a1 + 8);
    v65 = *v64;
    v66 = objc_autoreleasePoolPush();
    [*(v63 + 8) appendBytes:v64 length:v65];
    objc_autoreleasePoolPop(v66);
    v68 = *(a1 + 8);
    *v68 = 0u;
    *(v68 + 16) = 0u;
    *(v68 + 32) = 0;
    v69 = *(a1 + 8);
    v69[8] = 198;
    *v69 = 0xFFFFD01000000024;
    *(&v90[1] + 8) = 0u;
    v89 = v46;
    *&v90[0] = 110;
    *(&v90[0] + 1) = *(v9 + 48);
    if (*(v83 + 72))
    {
      v70 = -1;
    }

    else
    {
      v70 = *(v9 + 44);
    }

    *&v90[1] = v70;
    DYTraceEncode_InternalData(&v89, v69, *(a1 + 16), v67, 0);
    v76 = *(a1 + 8);
    v77 = v76[8];
    v76[8] = v77 | 0x2000;
    v78 = *(a1 + 24);
    v79 = *v76;
    if ((v77 & 0x1000) != 0)
    {
      v80 = *v76;
      v81 = v76;
      do
      {
        v81 = (v81 + v80);
        v80 = *v81;
        v79 += v80;
      }

      while ((*(v81 + 33) & 0x20) == 0);
    }

    v82 = objc_autoreleasePoolPush();
    [*(v78 + 8) appendBytes:v76 length:v79];
    objc_autoreleasePoolPop(v82);
  }

  else
  {
    v71 = *(a1 + 24);
    v72 = *v5;
    if ((v6 & 0x1000) != 0)
    {
      v74 = v5;
      v73 = *v5;
      do
      {
        v74 = (v74 + v72);
        v72 = *v74;
        v73 += v72;
      }

      while ((*(v74 + 33) & 0x20) == 0);
    }

    else
    {
      v73 = *v5;
    }

    v75 = objc_autoreleasePoolPush();
    [*(v71 + 8) appendBytes:v5 length:v73];

    objc_autoreleasePoolPop(v75);
  }
}

void FlushChainedDynamicLibraryInfo(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(a1 + 8);
  v6 = v5[8] | a4;
  v5[8] = v6;
  if (a2)
  {
    ObjectStream = GetObjectStream_(a3, a2);
    v9 = *(a1 + 8);
    v9[8] |= 0x1000u;
    if (*(a2 + 80))
    {
      v10 = *(a1 + 24);
      v11 = *v9;
      v12 = objc_autoreleasePoolPush();
      [*(v10 + 8) appendBytes:v9 length:v11];
      objc_autoreleasePoolPop(v12);
      v13 = *(a1 + 8);
      *(v13 + 32) = 0;
      *v13 = 0u;
      *(v13 + 16) = 0u;
      v14 = *(a1 + 8);
      v14[8] = 198;
      *v14 = 0xFFFFD01000000024;
      v44 = ObjectStream;
      v45 = 128;
      v46 = 0u;
      v47 = 0u;
      v48 = 0;
      *(&v46 + 4) = *(a2 + 80);
      DYTraceEncode_InternalData(&v44, v14, *(a1 + 16), v15, 0);
    }

    if (*(a2 + 96))
    {
      v16 = *(a1 + 24);
      v17 = *(a1 + 8);
      v18 = *v17;
      v19 = objc_autoreleasePoolPush();
      [*(v16 + 8) appendBytes:v17 length:v18];
      objc_autoreleasePoolPop(v19);
      v20 = *(a1 + 8);
      *(v20 + 32) = 0;
      *v20 = 0u;
      *(v20 + 16) = 0u;
      v21 = *(a1 + 8);
      v21[8] = 198;
      *v21 = 0xFFFFD01000000024;
      v44 = ObjectStream;
      v45 = 127;
      v46 = 0u;
      v47 = 0u;
      v48 = 0;
      *(&v46 + 4) = *(a2 + 96);
      DYTraceEncode_InternalData(&v44, v21, *(a1 + 16), v22, 0);
    }

    if (*(a2 + 112))
    {
      v23 = 0;
      do
      {
        v24 = *(a1 + 24);
        v25 = *(a1 + 8);
        v26 = *v25;
        v27 = objc_autoreleasePoolPush();
        [*(v24 + 8) appendBytes:v25 length:v26];
        objc_autoreleasePoolPop(v27);
        v28 = *(a1 + 8);
        *(v28 + 32) = 0;
        *v28 = 0u;
        *(v28 + 16) = 0u;
        v29 = *(a1 + 8);
        v29[8] = 198;
        *v29 = 0xFFFFD01000000024;
        v44 = ObjectStream;
        v45 = 129;
        v46 = 0u;
        v47 = 0u;
        v48 = 0;
        *(&v46 + 4) = *(*(a2 + 104) + 8 * v23);
        DYTraceEncode_InternalData(&v44, v29, *(a1 + 16), v30, 0);
        ++v23;
      }

      while (v23 < *(a2 + 112));
    }

    v31 = *(a1 + 8);
    v32 = v31[8];
    if ((v32 & 0x1000) != 0)
    {
      v33 = v32 & 0xFFFFEFFF;
    }

    else
    {
      v33 = v32 | 0x2000;
    }

    v31[8] = v33;
    v34 = *(a1 + 24);
    v35 = *v31;
    if ((v33 & 0x1000) != 0)
    {
      v36 = *v31;
      v37 = v31;
      do
      {
        v37 = (v37 + v36);
        v36 = *v37;
        v35 += v36;
      }

      while ((*(v37 + 33) & 0x20) == 0);
    }

    v38 = objc_autoreleasePoolPush();
    [*(v34 + 8) appendBytes:v31 length:v35];
    objc_autoreleasePoolPop(v38);
  }

  else
  {
    v39 = *(a1 + 24);
    v40 = *v5;
    if ((v6 & 0x1000) != 0)
    {
      v42 = v5;
      v41 = *v5;
      do
      {
        v42 = (v42 + v40);
        v40 = *v42;
        v41 += v40;
      }

      while ((*(v42 + 33) & 0x20) == 0);
    }

    else
    {
      v41 = *v5;
    }

    v43 = objc_autoreleasePoolPush();
    [*(v39 + 8) appendBytes:v5 length:v41];

    objc_autoreleasePoolPop(v43);
  }
}

void WriteBufferInfo(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  ObjectStream = GetObjectStream_(a3, a2);
  v8 = *(a2 + 120);
  v9 = *(a1 + 8);
  *(v9 + 24) = 0;
  *(v9 + 8) = 0u;
  *(v9 + 32) = 0x77754300000004;
  *v9 = 0xFFFFD80C00000028;
  *(v9 + 40) = ObjectStream;
  *(v9 + 48) = v8;
  *v9 = 56;
  v10 = *(a1 + 8);
  LODWORD(v8) = v10[8] | a4;
  v10[8] = v8;
  v11 = *(a1 + 24);
  v12 = *v10;
  if ((v8 & 0x1000) != 0)
  {
    v13 = *v10;
    v14 = v10;
    do
    {
      v14 = (v14 + v13);
      v13 = *v14;
      v12 += v13;
    }

    while ((*(v14 + 33) & 0x20) == 0);
  }

  v15 = objc_autoreleasePoolPush();
  [*(v11 + 8) appendBytes:v10 length:v12];
  objc_autoreleasePoolPop(v15);
  v16 = *(a2 + 96);
  v17 = *(a1 + 8);
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = 6;
  *(v17 + 36) = 26947;
  *(v17 + 40) = ObjectStream;
  *(v17 + 48) = v16;
  *v17 = 0xFFFFC00D00000034;
  *(v17 + 8) = 0;
  v18 = *(a1 + 8);
  v19 = v18[8] | a4;
  v18[8] = v19;
  v20 = *(a1 + 24);
  v21 = *v18;
  if ((v19 & 0x1000) != 0)
  {
    v22 = *v18;
    v23 = v18;
    do
    {
      v23 = (v23 + v22);
      v22 = *v23;
      v21 += v22;
    }

    while ((*(v23 + 33) & 0x20) == 0);
  }

  v24 = objc_autoreleasePoolPush();
  [*(v20 + 8) appendBytes:v18 length:v21];
  objc_autoreleasePoolPop(v24);
  v25 = *(a2 + 64);
  v26 = *(a1 + 8);
  *(v26 + 24) = 0;
  *(v26 + 8) = 0u;
  *(v26 + 32) = 0x6C754300000006;
  *v26 = 0xFFFFD81100000028;
  *(v26 + 40) = ObjectStream;
  *(v26 + 48) = v25;
  *v26 = 56;
  v27 = *(a1 + 8);
  LODWORD(v25) = v27[8] | a4;
  v27[8] = v25;
  v28 = *(a1 + 24);
  v29 = *v27;
  if ((v25 & 0x1000) != 0)
  {
    v30 = *v27;
    v31 = v27;
    do
    {
      v31 = (v31 + v30);
      v30 = *v31;
      v29 += v30;
    }

    while ((*(v31 + 33) & 0x20) == 0);
  }

  v32 = objc_autoreleasePoolPush();
  [*(v28 + 8) appendBytes:v27 length:v29];
  objc_autoreleasePoolPop(v32);
  v33 = *(a2 + 72);
  if (v33)
  {
    v34 = *(a1 + 8);
    *(v34 + 24) = 0;
    *(v34 + 8) = 0u;
    *(v34 + 32) = 0x77754300000006;
    *v34 = 0xFFFFD82500000028;
    *(v34 + 40) = ObjectStream;
    *(v34 + 48) = v33;
    *v34 = 56;
    v35 = *(a1 + 8);
    v36 = v35[8] | a4;
    v35[8] = v36;
    v37 = *(a1 + 24);
    v38 = *v35;
    if ((v36 & 0x1000) != 0)
    {
      v39 = *v35;
      v40 = v35;
      do
      {
        v40 = (v40 + v39);
        v39 = *v40;
        v38 += v39;
      }

      while ((*(v40 + 33) & 0x20) == 0);
    }

    v41 = objc_autoreleasePoolPush();
    [*(v37 + 8) appendBytes:v35 length:v38];
    objc_autoreleasePoolPop(v41);
  }

  if (*(a2 + 48))
  {
    v42 = *(a2 + 120) - *(a2 + 136);
    v43 = *(a1 + 8);
    *(v43 + 24) = 0;
    *(v43 + 8) = 0u;
    *(v43 + 32) = 0x6C754300000000;
    *v43 = 0xFFFFD83500000028;
    *(v43 + 40) = ObjectStream;
    *(v43 + 48) = v42;
    *v43 = 56;
  }

  else
  {
    v44 = *(a2 + 136);
    v45 = *(a1 + 8);
    *(v45 + 8) = 0;
    *(v45 + 16) = 0;
    *(v45 + 24) = 0;
    *v45 = 0xFFFFD83600000024;
    *(v45 + 32) = 4;
    *(v45 + 36) = 0x7775777543;
    *(v45 + 44) = ObjectStream;
    *(v45 + 52) = v44;
    *v45 = 68;
  }

  v46 = *(a1 + 8);
  v47 = v46[8] | a4;
  v46[8] = v47;
  v48 = *(a1 + 24);
  v49 = *v46;
  if ((v47 & 0x1000) != 0)
  {
    v50 = *v46;
    v51 = v46;
    do
    {
      v51 = (v51 + v50);
      v50 = *v51;
      v49 += v50;
    }

    while ((*(v51 + 33) & 0x20) == 0);
  }

  v52 = objc_autoreleasePoolPush();
  [*(v48 + 8) appendBytes:v46 length:v49];

  objc_autoreleasePoolPop(v52);
}

void WriteTensorInfo(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  ObjectStream = GetObjectStream_(a3, a2);
  v8 = *(a2 + 96);
  v9 = *(a1 + 8);
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = 6;
  *(v9 + 36) = 26947;
  *(v9 + 40) = ObjectStream;
  *(v9 + 48) = v8;
  *v9 = 0xFFFFC59B00000034;
  *(v9 + 8) = 0;
  v10 = *(a1 + 8);
  LODWORD(v9) = v10[8] | a4;
  v10[8] = v9;
  v11 = *(a1 + 24);
  v12 = *v10;
  if ((v9 & 0x1000) != 0)
  {
    v14 = v10;
    v13 = *v10;
    do
    {
      v14 = (v14 + v12);
      v12 = *v14;
      v13 += v12;
    }

    while ((*(v14 + 33) & 0x20) == 0);
  }

  else
  {
    v13 = *v10;
  }

  v15 = objc_autoreleasePoolPush();
  [*(v11 + 8) appendBytes:v10 length:v13];
  objc_autoreleasePoolPop(v15);
  v16 = *(a2 + 64);
  v17 = *(a1 + 8);
  *(v17 + 24) = 0;
  *(v17 + 8) = 0u;
  *(v17 + 32) = 0x69754300000006;
  *v17 = 0xFFFFD85C00000028;
  *(v17 + 40) = ObjectStream;
  *(v17 + 48) = v16;
  *v17 = 52;
  v18 = *(a1 + 8);
  LODWORD(v16) = v18[8] | a4;
  v18[8] = v16;
  v19 = *(a1 + 24);
  v20 = *v18;
  if ((v16 & 0x1000) != 0)
  {
    v21 = *v18;
    v22 = v18;
    do
    {
      v22 = (v22 + v21);
      v21 = *v22;
      v20 += v21;
    }

    while ((*(v22 + 33) & 0x20) == 0);
  }

  v23 = objc_autoreleasePoolPush();
  [*(v19 + 8) appendBytes:v18 length:v20];
  objc_autoreleasePoolPop(v23);
  v24 = *(a2 + 72);
  v25 = *(a1 + 8);
  *(v25 + 24) = 0;
  *(v25 + 8) = 0u;
  *(v25 + 32) = 0x77754300000006;
  *v25 = 0xFFFFD85D00000028;
  *(v25 + 40) = ObjectStream;
  *(v25 + 48) = v24;
  *v25 = 56;
  v26 = *(a1 + 8);
  LODWORD(v24) = v26[8] | a4;
  v26[8] = v24;
  v27 = *(a1 + 24);
  v28 = *v26;
  if ((v24 & 0x1000) != 0)
  {
    v29 = *v26;
    v30 = v26;
    do
    {
      v30 = (v30 + v29);
      v29 = *v30;
      v28 += v29;
    }

    while ((*(v30 + 33) & 0x20) == 0);
  }

  v31 = objc_autoreleasePoolPush();
  [*(v27 + 8) appendBytes:v26 length:v28];
  objc_autoreleasePoolPop(v31);
  v32 = *(a2 + 296);
  v33 = *(a1 + 8);
  *(v33 + 24) = 0;
  *(v33 + 8) = 0u;
  *(v33 + 32) = 0x77754300000004;
  *v33 = 0xFFFFD85E00000028;
  *(v33 + 40) = ObjectStream;
  *(v33 + 48) = v32;
  *v33 = 56;
  v34 = *(a1 + 8);
  LODWORD(v32) = v34[8] | a4;
  v34[8] = v32;
  v35 = *(a1 + 24);
  v36 = *v34;
  if ((v32 & 0x1000) != 0)
  {
    v37 = *v34;
    v38 = v34;
    do
    {
      v38 = (v38 + v37);
      v37 = *v38;
      v36 += v37;
    }

    while ((*(v38 + 33) & 0x20) == 0);
  }

  v39 = objc_autoreleasePoolPush();
  [*(v35 + 8) appendBytes:v34 length:v36];
  objc_autoreleasePoolPop(v39);
  v40 = *(a2 + 304);
  v41 = *(a1 + 8);
  *(v41 + 24) = 0;
  *(v41 + 8) = 0u;
  *(v41 + 32) = 0x77754300000004;
  *v41 = 0xFFFFD85F00000028;
  *(v41 + 40) = ObjectStream;
  *(v41 + 48) = v40;
  *v41 = 56;
  v42 = *(a1 + 8);
  LODWORD(v40) = v42[8] | a4;
  v42[8] = v40;
  v43 = *(a1 + 24);
  v44 = *v42;
  if ((v40 & 0x1000) != 0)
  {
    v45 = *v42;
    v46 = v42;
    do
    {
      v46 = (v46 + v45);
      v45 = *v46;
      v44 += v45;
    }

    while ((*(v46 + 33) & 0x20) == 0);
  }

  v47 = objc_autoreleasePoolPush();
  [*(v43 + 8) appendBytes:v42 length:v44];
  objc_autoreleasePoolPop(v47);
  v48 = *(a2 + 312);
  v49 = *(a1 + 8);
  *(v49 + 24) = 0;
  *(v49 + 8) = 0u;
  *(v49 + 32) = 0x77754300000004;
  *v49 = 0xFFFFD86000000028;
  *(v49 + 40) = ObjectStream;
  *(v49 + 48) = v48;
  *v49 = 56;
  v50 = *(a1 + 8);
  LODWORD(v48) = v50[8] | a4;
  v50[8] = v48;
  v51 = *(a1 + 24);
  v52 = *v50;
  if ((v48 & 0x1000) != 0)
  {
    v53 = *v50;
    v54 = v50;
    do
    {
      v54 = (v54 + v53);
      v53 = *v54;
      v52 += v53;
    }

    while ((*(v54 + 33) & 0x20) == 0);
  }

  v55 = objc_autoreleasePoolPush();
  [*(v51 + 8) appendBytes:v50 length:v52];

  objc_autoreleasePoolPop(v55);
}

void WriteTextureInfo(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  ObjectStream = GetObjectStream_(a3, a2);
  v8 = *(a2 + 176);
  v9 = *(a1 + 8);
  *(v9 + 24) = 0;
  *(v9 + 8) = 0u;
  *(v9 + 32) = 0x77754300000004;
  *v9 = 0xFFFFD80D00000028;
  *(v9 + 40) = ObjectStream;
  *(v9 + 48) = v8;
  *v9 = 56;
  v10 = *(a1 + 8);
  LODWORD(v8) = v10[8] | a4;
  v10[8] = v8;
  v11 = *(a1 + 24);
  v12 = *v10;
  if ((v8 & 0x1000) != 0)
  {
    v13 = *v10;
    v14 = v10;
    do
    {
      v14 = (v14 + v13);
      v13 = *v14;
      v12 += v13;
    }

    while ((*(v14 + 33) & 0x20) == 0);
  }

  v15 = objc_autoreleasePoolPush();
  [*(v11 + 8) appendBytes:v10 length:v12];
  objc_autoreleasePoolPop(v15);
  v16 = *(a2 + 96);
  v17 = *(a1 + 8);
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = 6;
  *(v17 + 36) = 26947;
  *(v17 + 40) = ObjectStream;
  *(v17 + 48) = v16;
  *v17 = 0xFFFFC09100000034;
  *(v17 + 8) = 0;
  v18 = *(a1 + 8);
  v19 = v18[8] | a4;
  v18[8] = v19;
  v20 = *(a1 + 24);
  v21 = *v18;
  if ((v19 & 0x1000) != 0)
  {
    v22 = *v18;
    v23 = v18;
    do
    {
      v23 = (v23 + v22);
      v22 = *v23;
      v21 += v22;
    }

    while ((*(v23 + 33) & 0x20) == 0);
  }

  v24 = objc_autoreleasePoolPush();
  [*(v20 + 8) appendBytes:v18 length:v21];
  objc_autoreleasePoolPop(v24);
  v25 = *(a2 + 64);
  v26 = *(a1 + 8);
  *(v26 + 24) = 0;
  *(v26 + 8) = 0u;
  *(v26 + 32) = 0x69754300000006;
  *v26 = 0xFFFFD81200000028;
  *(v26 + 40) = ObjectStream;
  *(v26 + 48) = v25;
  *v26 = 52;
  v27 = *(a1 + 8);
  LODWORD(v25) = v27[8] | a4;
  v27[8] = v25;
  v28 = *(a1 + 24);
  v29 = *v27;
  if ((v25 & 0x1000) != 0)
  {
    v30 = *v27;
    v31 = v27;
    do
    {
      v31 = (v31 + v30);
      v30 = *v31;
      v29 += v30;
    }

    while ((*(v31 + 33) & 0x20) == 0);
  }

  v32 = objc_autoreleasePoolPush();
  [*(v28 + 8) appendBytes:v27 length:v29];
  objc_autoreleasePoolPop(v32);
  v85[0] = ObjectStream;
  v33 = *(a2 + 120);
  v34 = *(a1 + 8) + *(a1 + 16) - 512;
  v86 = 512;
  v85[1] = StoreMTLTextureMipmapInfo2UsingEncode(*(a1 + 32), v33, v34, &v86);
  DYTraceEncode_MTLTexture_mipmapInfo(v85, *(a1 + 8), *(a1 + 16), 0, 0);
  v35 = *(a1 + 8);
  v36 = v35[8] | a4;
  v35[8] = v36;
  v37 = *(a1 + 24);
  v38 = *v35;
  if ((v36 & 0x1000) != 0)
  {
    v39 = *v35;
    v40 = v35;
    do
    {
      v40 = (v40 + v39);
      v39 = *v40;
      v38 += v39;
    }

    while ((*(v40 + 33) & 0x20) == 0);
  }

  v41 = objc_autoreleasePoolPush();
  [*(v37 + 8) appendBytes:v35 length:v38];
  objc_autoreleasePoolPop(v41);
  v42 = *(a2 + 228);
  v43 = *(a1 + 8);
  *(v43 + 24) = 0;
  *(v43 + 8) = 0u;
  *(v43 + 32) = 0x69754300000006;
  *v43 = 0xFFFFD82300000028;
  *(v43 + 40) = ObjectStream;
  *(v43 + 48) = v42;
  *v43 = 52;
  v44 = *(a1 + 8);
  v45 = v44[8] | a4;
  v44[8] = v45;
  v46 = *(a1 + 24);
  v47 = *v44;
  if ((v45 & 0x1000) != 0)
  {
    v48 = *v44;
    v49 = v44;
    do
    {
      v49 = (v49 + v48);
      v48 = *v49;
      v47 += v48;
    }

    while ((*(v49 + 33) & 0x20) == 0);
  }

  v50 = objc_autoreleasePoolPush();
  [*(v46 + 8) appendBytes:v44 length:v47];
  objc_autoreleasePoolPop(v50);
  v51 = *(a2 + 72);
  v52 = *(a1 + 8);
  *(v52 + 24) = 0;
  *(v52 + 8) = 0u;
  *(v52 + 32) = 0x77754300000006;
  *v52 = 0xFFFFD82400000028;
  *(v52 + 40) = ObjectStream;
  *(v52 + 48) = v51;
  *v52 = 56;
  v53 = *(a1 + 8);
  LODWORD(v51) = v53[8] | a4;
  v53[8] = v51;
  v54 = *(a1 + 24);
  v55 = *v53;
  if ((v51 & 0x1000) != 0)
  {
    v56 = *v53;
    v57 = v53;
    do
    {
      v57 = (v57 + v56);
      v56 = *v57;
      v55 += v56;
    }

    while ((*(v57 + 33) & 0x20) == 0);
  }

  v58 = objc_autoreleasePoolPush();
  [*(v54 + 8) appendBytes:v53 length:v55];
  objc_autoreleasePoolPop(v58);
  v59 = *(a2 + 184);
  v60 = *(a1 + 8);
  *(v60 + 24) = 0;
  *(v60 + 8) = 0u;
  *(v60 + 32) = 0x77754300000004;
  *v60 = 0xFFFFD82A00000028;
  *(v60 + 40) = ObjectStream;
  *(v60 + 48) = v59;
  *v60 = 56;
  v61 = *(a1 + 8);
  LODWORD(v59) = v61[8] | a4;
  v61[8] = v59;
  v62 = *(a1 + 24);
  v63 = *v61;
  if ((v59 & 0x1000) != 0)
  {
    v64 = *v61;
    v65 = v61;
    do
    {
      v65 = (v65 + v64);
      v64 = *v65;
      v63 += v64;
    }

    while ((*(v65 + 33) & 0x20) == 0);
  }

  v66 = objc_autoreleasePoolPush();
  [*(v62 + 8) appendBytes:v61 length:v63];
  objc_autoreleasePoolPop(v66);
  if (*(a2 + 48))
  {
    v67 = *(a2 + 136);
    if (v67)
    {
      v68 = *(v67 + 64) - *(v67 + 72);
    }

    else
    {
      v68 = *(a2 + 56);
    }

    v69 = *(a1 + 8);
    *(v69 + 24) = 0;
    *(v69 + 8) = 0u;
    *(v69 + 32) = 0x6C754300000000;
    *v69 = 0xFFFFD83700000028;
    *(v69 + 40) = ObjectStream;
    *(v69 + 48) = v68;
    *v69 = 56;
    v70 = *(a1 + 8);
    v71 = v70[8] | a4;
    v70[8] = v71;
    v72 = *(a1 + 24);
    v73 = *v70;
    if ((v71 & 0x1000) != 0)
    {
      v74 = *v70;
      v75 = v70;
      do
      {
        v75 = (v75 + v74);
        v74 = *v75;
        v73 += v74;
      }

      while ((*(v75 + 33) & 0x20) == 0);
    }

    v76 = objc_autoreleasePoolPush();
    [*(v72 + 8) appendBytes:v70 length:v73];
    objc_autoreleasePoolPop(v76);
  }

  v77 = *(a2 + 208);
  v78 = *(a1 + 8);
  *(v78 + 24) = 0;
  *(v78 + 8) = 0u;
  *(v78 + 32) = 0x77754300000004;
  *v78 = 0xFFFFD84C00000028;
  *(v78 + 40) = ObjectStream;
  *(v78 + 48) = v77;
  *v78 = 56;
  v79 = *(a1 + 8);
  LODWORD(v77) = v79[8] | a4;
  v79[8] = v77;
  v80 = *(a1 + 24);
  v81 = *v79;
  if ((v77 & 0x1000) != 0)
  {
    v82 = *v79;
    v83 = v79;
    do
    {
      v83 = (v83 + v82);
      v82 = *v83;
      v81 += v82;
    }

    while ((*(v83 + 33) & 0x20) == 0);
  }

  v84 = objc_autoreleasePoolPush();
  [*(v80 + 8) appendBytes:v79 length:v81];

  objc_autoreleasePoolPop(v84);
}

void WriteSamplerStateInfo(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  ObjectStream = GetObjectStream_(a3, a2);
  v8 = ObjectStream;
  v9 = *(a2 + 64);
  if (v9)
  {
    v10 = *(a1 + 8);
    *(v10 + 24) = 0;
    *(v10 + 8) = 0u;
    *(v10 + 32) = 0x77754300000004;
    *v10 = 0xFFFFD80E00000028;
    *(v10 + 40) = ObjectStream;
    *(v10 + 48) = v9;
    *v10 = 56;
    v11 = *(a1 + 8);
    v12 = v11[8] | a4;
    v11[8] = v12;
    v13 = *(a1 + 24);
    v14 = *v11;
    if ((v12 & 0x1000) != 0)
    {
      v15 = *v11;
      v16 = v11;
      do
      {
        v16 = (v16 + v15);
        v15 = *v16;
        v14 += v15;
      }

      while ((*(v16 + 33) & 0x20) == 0);
    }

    v17 = objc_autoreleasePoolPush();
    [*(v13 + 8) appendBytes:v11 length:v14];
    objc_autoreleasePoolPop(v17);
  }

  v18 = *(a2 + 72);
  if (v18)
  {
    v19 = *(a1 + 8);
    *(v19 + 24) = 0;
    *(v19 + 8) = 0u;
    *(v19 + 32) = 0x77754300000004;
    *v19 = 0xFFFFD84D00000028;
    *(v19 + 40) = v8;
    *(v19 + 48) = v18;
    *v19 = 56;
    v20 = *(a1 + 8);
    v21 = v20[8] | a4;
    v20[8] = v21;
    v22 = *(a1 + 24);
    v23 = *v20;
    if ((v21 & 0x1000) != 0)
    {
      v24 = *v20;
      v25 = v20;
      do
      {
        v25 = (v25 + v24);
        v24 = *v25;
        v23 += v24;
      }

      while ((*(v25 + 33) & 0x20) == 0);
    }

    v26 = objc_autoreleasePoolPush();
    [*(v22 + 8) appendBytes:v20 length:v23];

    objc_autoreleasePoolPop(v26);
  }
}

void WriteDepthStencilStateInfo(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  ObjectStream = GetObjectStream_(a3, a2);
  v8 = ObjectStream;
  v9 = *(a2 + 64);
  if (v9)
  {
    v10 = *(a1 + 8);
    *(v10 + 24) = 0;
    *(v10 + 8) = 0u;
    *(v10 + 32) = 0x77754300000004;
    *v10 = 0xFFFFD85A00000028;
    *(v10 + 40) = ObjectStream;
    *(v10 + 48) = v9;
    *v10 = 56;
    v11 = *(a1 + 8);
    v12 = v11[8] | a4;
    v11[8] = v12;
    v13 = *(a1 + 24);
    v14 = *v11;
    if ((v12 & 0x1000) != 0)
    {
      v15 = *v11;
      v16 = v11;
      do
      {
        v16 = (v16 + v15);
        v15 = *v16;
        v14 += v15;
      }

      while ((*(v16 + 33) & 0x20) == 0);
    }

    v17 = objc_autoreleasePoolPush();
    [*(v13 + 8) appendBytes:v11 length:v14];
    objc_autoreleasePoolPop(v17);
  }

  v18 = *(a2 + 72);
  if (v18)
  {
    v19 = *(a1 + 8);
    *(v19 + 24) = 0;
    *(v19 + 8) = 0u;
    *(v19 + 32) = 0x77754300000004;
    *v19 = 0xFFFFD85B00000028;
    *(v19 + 40) = v8;
    *(v19 + 48) = v18;
    *v19 = 56;
    v20 = *(a1 + 8);
    v21 = v20[8] | a4;
    v20[8] = v21;
    v22 = *(a1 + 24);
    v23 = *v20;
    if ((v21 & 0x1000) != 0)
    {
      v24 = *v20;
      v25 = v20;
      do
      {
        v25 = (v25 + v24);
        v24 = *v25;
        v23 += v24;
      }

      while ((*(v25 + 33) & 0x20) == 0);
    }

    v26 = objc_autoreleasePoolPush();
    [*(v22 + 8) appendBytes:v20 length:v23];

    objc_autoreleasePoolPop(v26);
  }
}

void WriteIndirectCommandBufferInfo(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  ObjectStream = GetObjectStream_(a3, a2);
  v8 = *(a2 + 128);
  v9 = *(a1 + 8);
  *(v9 + 24) = 0;
  *(v9 + 8) = 0u;
  *(v9 + 32) = 0x77754300000004;
  *v9 = 0xFFFFD81600000028;
  *(v9 + 40) = ObjectStream;
  *(v9 + 48) = v8;
  *v9 = 56;
  v10 = *(a1 + 8);
  LODWORD(v8) = v10[8] | a4;
  v10[8] = v8;
  v11 = *(a1 + 24);
  v12 = *v10;
  if ((v8 & 0x1000) != 0)
  {
    v13 = *v10;
    v14 = v10;
    do
    {
      v14 = (v14 + v13);
      v13 = *v14;
      v12 += v13;
    }

    while ((*(v14 + 33) & 0x20) == 0);
  }

  v15 = objc_autoreleasePoolPush();
  [*(v11 + 8) appendBytes:v10 length:v12];
  objc_autoreleasePoolPop(v15);
  v16 = *(a2 + 96);
  v17 = *(a1 + 8);
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = 6;
  *(v17 + 36) = 26947;
  *(v17 + 40) = ObjectStream;
  *(v17 + 48) = v16;
  *v17 = 0xFFFFC1CC00000034;
  *(v17 + 8) = 0;
  v18 = *(a1 + 8);
  v19 = v18[8] | a4;
  v18[8] = v19;
  v20 = *(a1 + 24);
  v21 = *v18;
  if ((v19 & 0x1000) != 0)
  {
    v22 = *v18;
    v23 = v18;
    do
    {
      v23 = (v23 + v22);
      v22 = *v23;
      v21 += v22;
    }

    while ((*(v23 + 33) & 0x20) == 0);
  }

  v24 = objc_autoreleasePoolPush();
  [*(v20 + 8) appendBytes:v18 length:v21];
  objc_autoreleasePoolPop(v24);
  v25 = *(a2 + 64);
  v26 = *(a1 + 8);
  *(v26 + 24) = 0;
  *(v26 + 8) = 0u;
  *(v26 + 32) = 0x6C754300000004;
  *v26 = 0xFFFFD81900000028;
  *(v26 + 40) = ObjectStream;
  *(v26 + 48) = v25;
  *v26 = 56;
  v27 = *(a1 + 8);
  LODWORD(v25) = v27[8] | a4;
  v27[8] = v25;
  v28 = *(a1 + 24);
  v29 = *v27;
  if ((v25 & 0x1000) != 0)
  {
    v30 = *v27;
    v31 = v27;
    do
    {
      v31 = (v31 + v30);
      v30 = *v31;
      v29 += v30;
    }

    while ((*(v31 + 33) & 0x20) == 0);
  }

  v32 = objc_autoreleasePoolPush();
  [*(v28 + 8) appendBytes:v27 length:v29];
  objc_autoreleasePoolPop(v32);
  v33 = *(a2 + 72);
  v34 = *(a1 + 8);
  *(v34 + 24) = 0;
  *(v34 + 8) = 0u;
  *(v34 + 32) = 0x77754300000006;
  *v34 = 0xFFFFD82600000028;
  *(v34 + 40) = ObjectStream;
  *(v34 + 48) = v33;
  *v34 = 56;
  v35 = *(a1 + 8);
  LODWORD(v33) = v35[8] | a4;
  v35[8] = v33;
  v36 = *(a1 + 24);
  v37 = *v35;
  if ((v33 & 0x1000) != 0)
  {
    v38 = *v35;
    v39 = v35;
    do
    {
      v39 = (v39 + v38);
      v38 = *v39;
      v37 += v38;
    }

    while ((*(v39 + 33) & 0x20) == 0);
  }

  v40 = objc_autoreleasePoolPush();
  [*(v36 + 8) appendBytes:v35 length:v37];
  objc_autoreleasePoolPop(v40);
  v41 = *(a2 + 136);
  v42 = *(a1 + 8);
  *(v42 + 24) = 0;
  *(v42 + 8) = 0u;
  *(v42 + 32) = 0x77754300000004;
  *v42 = 0xFFFFD84A00000028;
  *(v42 + 40) = ObjectStream;
  *(v42 + 48) = v41;
  *v42 = 56;
  v43 = *(a1 + 8);
  LODWORD(v41) = v43[8] | a4;
  v43[8] = v41;
  v44 = *(a1 + 24);
  v45 = *v43;
  if ((v41 & 0x1000) != 0)
  {
    v46 = *v43;
    v47 = v43;
    do
    {
      v47 = (v47 + v46);
      v46 = *v47;
      v45 += v46;
    }

    while ((*(v47 + 33) & 0x20) == 0);
  }

  v48 = objc_autoreleasePoolPush();
  [*(v44 + 8) appendBytes:v43 length:v45];

  objc_autoreleasePoolPop(v48);
}

void WriteVisibleFunctionTableInfo(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  ObjectStream = GetObjectStream_(a3, a2);
  v8 = a2[18];
  v9 = *(a1 + 8);
  *(v9 + 24) = 0;
  *(v9 + 8) = 0u;
  *(v9 + 32) = 0x77754300000004;
  *v9 = 0xFFFFD82F00000028;
  *(v9 + 40) = ObjectStream;
  *(v9 + 48) = v8;
  *v9 = 56;
  v10 = *(a1 + 8);
  LODWORD(v8) = v10[8] | a4;
  v10[8] = v8;
  v11 = *(a1 + 24);
  v12 = *v10;
  if ((v8 & 0x1000) != 0)
  {
    v13 = *v10;
    v14 = v10;
    do
    {
      v14 = (v14 + v13);
      v13 = *v14;
      v12 += v13;
    }

    while ((*(v14 + 33) & 0x20) == 0);
  }

  v15 = objc_autoreleasePoolPush();
  [*(v11 + 8) appendBytes:v10 length:v12];
  objc_autoreleasePoolPop(v15);
  v16 = a2[8];
  v17 = *(a1 + 8);
  *(v17 + 24) = 0;
  *(v17 + 8) = 0u;
  *(v17 + 32) = 0x6C754300000000;
  *v17 = 0xFFFFD84200000028;
  *(v17 + 40) = ObjectStream;
  *(v17 + 48) = v16;
  *v17 = 56;
  v18 = *(a1 + 8);
  LODWORD(v16) = v18[8] | a4;
  v18[8] = v16;
  v19 = *(a1 + 24);
  v20 = *v18;
  if ((v16 & 0x1000) != 0)
  {
    v21 = *v18;
    v22 = v18;
    do
    {
      v22 = (v22 + v21);
      v21 = *v22;
      v20 += v21;
    }

    while ((*(v22 + 33) & 0x20) == 0);
  }

  v23 = objc_autoreleasePoolPush();
  [*(v19 + 8) appendBytes:v18 length:v20];
  objc_autoreleasePoolPop(v23);
  v24 = a2[9];
  v25 = *(a1 + 8);
  *(v25 + 24) = 0;
  *(v25 + 8) = 0u;
  *(v25 + 32) = 0x77754300000000;
  *v25 = 0xFFFFD83F00000028;
  *(v25 + 40) = ObjectStream;
  *(v25 + 48) = v24;
  *v25 = 56;
  v26 = *(a1 + 8);
  LODWORD(v24) = v26[8] | a4;
  v26[8] = v24;
  v27 = *(a1 + 24);
  v28 = *v26;
  if ((v24 & 0x1000) != 0)
  {
    v29 = *v26;
    v30 = v26;
    do
    {
      v30 = (v30 + v29);
      v29 = *v30;
      v28 += v29;
    }

    while ((*(v30 + 33) & 0x20) == 0);
  }

  v31 = objc_autoreleasePoolPush();
  [*(v27 + 8) appendBytes:v26 length:v28];
  objc_autoreleasePoolPop(v31);
  v32 = a2[20];
  v33 = *(a1 + 8);
  *(v33 + 24) = 0;
  *(v33 + 8) = 0u;
  *(v33 + 32) = 0x77754300000004;
  *v33 = 0xFFFFD85000000028;
  *(v33 + 40) = ObjectStream;
  *(v33 + 48) = v32;
  *v33 = 56;
  v34 = *(a1 + 8);
  LODWORD(v32) = v34[8] | a4;
  v34[8] = v32;
  v35 = *(a1 + 24);
  v36 = *v34;
  if ((v32 & 0x1000) != 0)
  {
    v37 = *v34;
    v38 = v34;
    do
    {
      v38 = (v38 + v37);
      v37 = *v38;
      v36 += v37;
    }

    while ((*(v38 + 33) & 0x20) == 0);
  }

  v39 = objc_autoreleasePoolPush();
  [*(v35 + 8) appendBytes:v34 length:v36];
  objc_autoreleasePoolPop(v39);
  v40 = a2[21];
  v41 = *(a1 + 8);
  *(v41 + 24) = 0;
  *(v41 + 8) = 0u;
  *(v41 + 32) = 0x77754300000000;
  *v41 = 0xFFFFD85700000028;
  *(v41 + 40) = ObjectStream;
  *(v41 + 48) = v40;
  *v41 = 56;
  v42 = *(a1 + 8);
  LODWORD(v40) = v42[8] | a4;
  v42[8] = v40;
  v43 = *(a1 + 24);
  v44 = *v42;
  if ((v40 & 0x1000) != 0)
  {
    v45 = *v42;
    v46 = v42;
    do
    {
      v46 = (v46 + v45);
      v45 = *v46;
      v44 += v45;
    }

    while ((*(v46 + 33) & 0x20) == 0);
  }

  v47 = objc_autoreleasePoolPush();
  [*(v43 + 8) appendBytes:v42 length:v44];

  objc_autoreleasePoolPop(v47);
}

void WriteIntersectionFunctionTableInfo(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  ObjectStream = GetObjectStream_(a3, a2);
  v8 = a2[19];
  v9 = *(a1 + 8);
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = 1;
  *(v9 + 36) = 67;
  *(v9 + 40) = ObjectStream;
  *(v9 + 48) = 30581;
  *(v9 + 52) = v8;
  *v9 = 0xFFFFD8410000003CLL;
  *(v9 + 8) = 0;
  v10 = *(a1 + 8);
  LODWORD(v9) = v10[8] | a4;
  v10[8] = v9;
  v11 = *(a1 + 24);
  v12 = *v10;
  if ((v9 & 0x1000) != 0)
  {
    v14 = v10;
    v13 = *v10;
    do
    {
      v14 = (v14 + v12);
      v12 = *v14;
      v13 += v12;
    }

    while ((*(v14 + 33) & 0x20) == 0);
  }

  else
  {
    v13 = *v10;
  }

  v15 = objc_autoreleasePoolPush();
  [*(v11 + 8) appendBytes:v10 length:v13];
  objc_autoreleasePoolPop(v15);
  v16 = a2[8];
  v17 = *(a1 + 8);
  *(v17 + 24) = 0;
  *(v17 + 8) = 0u;
  *(v17 + 32) = 0x6C754300000000;
  *v17 = 0xFFFFD83D00000028;
  *(v17 + 40) = ObjectStream;
  *(v17 + 48) = v16;
  *v17 = 56;
  v18 = *(a1 + 8);
  LODWORD(v16) = v18[8] | a4;
  v18[8] = v16;
  v19 = *(a1 + 24);
  v20 = *v18;
  if ((v16 & 0x1000) != 0)
  {
    v21 = *v18;
    v22 = v18;
    do
    {
      v22 = (v22 + v21);
      v21 = *v22;
      v20 += v21;
    }

    while ((*(v22 + 33) & 0x20) == 0);
  }

  v23 = objc_autoreleasePoolPush();
  [*(v19 + 8) appendBytes:v18 length:v20];
  objc_autoreleasePoolPop(v23);
  v24 = a2[9];
  v25 = *(a1 + 8);
  *(v25 + 24) = 0;
  *(v25 + 8) = 0u;
  *(v25 + 32) = 0x77754300000000;
  *v25 = 0xFFFFD84000000028;
  *(v25 + 40) = ObjectStream;
  *(v25 + 48) = v24;
  *v25 = 56;
  v26 = *(a1 + 8);
  LODWORD(v24) = v26[8] | a4;
  v26[8] = v24;
  v27 = *(a1 + 24);
  v28 = *v26;
  if ((v24 & 0x1000) != 0)
  {
    v29 = *v26;
    v30 = v26;
    do
    {
      v30 = (v30 + v29);
      v29 = *v30;
      v28 += v29;
    }

    while ((*(v30 + 33) & 0x20) == 0);
  }

  v31 = objc_autoreleasePoolPush();
  [*(v27 + 8) appendBytes:v26 length:v28];
  objc_autoreleasePoolPop(v31);
  v32 = a2[20];
  v33 = *(a1 + 8);
  *(v33 + 24) = 0;
  *(v33 + 8) = 0u;
  *(v33 + 32) = 0x77754300000004;
  *v33 = 0xFFFFD84F00000028;
  *(v33 + 40) = ObjectStream;
  *(v33 + 48) = v32;
  *v33 = 56;
  v34 = *(a1 + 8);
  LODWORD(v32) = v34[8] | a4;
  v34[8] = v32;
  v35 = *(a1 + 24);
  v36 = *v34;
  if ((v32 & 0x1000) != 0)
  {
    v37 = *v34;
    v38 = v34;
    do
    {
      v38 = (v38 + v37);
      v37 = *v38;
      v36 += v37;
    }

    while ((*(v38 + 33) & 0x20) == 0);
  }

  v39 = objc_autoreleasePoolPush();
  [*(v35 + 8) appendBytes:v34 length:v36];

  objc_autoreleasePoolPop(v39);
}

void WriteAccelerationStructureInfo(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  ObjectStream = GetObjectStream_(a3, a2);
  v8 = ObjectStream;
  v9 = *(a2 + 160);
  if (v9)
  {
    v10 = *(a1 + 8);
    *(v10 + 24) = 0;
    *(v10 + 8) = 0u;
    *(v10 + 32) = 0x77754300000000;
    *v10 = 0xFFFFD84600000028;
    *(v10 + 40) = ObjectStream;
    *(v10 + 48) = v9;
    *v10 = 56;
    v11 = *(a1 + 8);
    v12 = v11[8] | a4;
    v11[8] = v12;
    v13 = *(a1 + 24);
    v14 = *v11;
    if ((v12 & 0x1000) != 0)
    {
      v15 = *v11;
      v16 = v11;
      do
      {
        v16 = (v16 + v15);
        v15 = *v16;
        v14 += v15;
      }

      while ((*(v16 + 33) & 0x20) == 0);
    }

    v17 = objc_autoreleasePoolPush();
    [*(v13 + 8) appendBytes:v11 length:v14];
    objc_autoreleasePoolPop(v17);
  }

  v18 = *(a2 + 168);
  if (v18)
  {
    v75[0] = v8;
    v75[1] = v18;
    v76 = *(a2 + 176);
    v77 = *(a2 + 104);
    v78 = *(a2 + 200);
    DYTraceEncode_MTLAccelerationStructure_allocationInfo(v75, *(a1 + 8), *(a1 + 16), 0, 0);
    v19 = *(a1 + 8);
    v20 = v19[8] | a4;
    v19[8] = v20;
    v21 = *(a1 + 24);
    v22 = *v19;
    if ((v20 & 0x1000) != 0)
    {
      v23 = *v19;
      v24 = v19;
      do
      {
        v24 = (v24 + v23);
        v23 = *v24;
        v22 += v23;
      }

      while ((*(v24 + 33) & 0x20) == 0);
    }

    v25 = objc_autoreleasePoolPush();
    [*(v21 + 8) appendBytes:v19 length:v22];
    objc_autoreleasePoolPop(v25);
  }

  v26 = *(a2 + 136);
  v27 = *(a1 + 8);
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = 5;
  *(v27 + 36) = 67;
  *(v27 + 40) = v8;
  *(v27 + 48) = 30581;
  *(v27 + 52) = v26;
  *v27 = 0xFFFFD83B0000003CLL;
  *(v27 + 8) = 0;
  v28 = *(a1 + 8);
  LODWORD(v26) = v28[8] | a4;
  v28[8] = v26;
  v29 = *(a1 + 24);
  v30 = *v28;
  if ((v26 & 0x1000) != 0)
  {
    v31 = *v28;
    v32 = v28;
    do
    {
      v32 = (v32 + v31);
      v31 = *v32;
      v30 += v31;
    }

    while ((*(v32 + 33) & 0x20) == 0);
  }

  v33 = objc_autoreleasePoolPush();
  [*(v29 + 8) appendBytes:v28 length:v30];
  objc_autoreleasePoolPop(v33);
  v34 = *(a2 + 64);
  v35 = *(a1 + 8);
  *(v35 + 24) = 0;
  *(v35 + 8) = 0u;
  *(v35 + 32) = 0x6C754300000006;
  *v35 = 0xFFFFD82C00000028;
  *(v35 + 40) = v8;
  *(v35 + 48) = v34;
  *v35 = 56;
  v36 = *(a1 + 8);
  LODWORD(v34) = v36[8] | a4;
  v36[8] = v34;
  v37 = *(a1 + 24);
  v38 = *v36;
  if ((v34 & 0x1000) != 0)
  {
    v39 = *v36;
    v40 = v36;
    do
    {
      v40 = (v40 + v39);
      v39 = *v40;
      v38 += v39;
    }

    while ((*(v40 + 33) & 0x20) == 0);
  }

  v41 = objc_autoreleasePoolPush();
  [*(v37 + 8) appendBytes:v36 length:v38];
  objc_autoreleasePoolPop(v41);
  v42 = *(a2 + 72);
  v43 = *(a1 + 8);
  *(v43 + 24) = 0;
  *(v43 + 8) = 0u;
  *(v43 + 32) = 0x77754300000006;
  *v43 = 0xFFFFD82B00000028;
  *(v43 + 40) = v8;
  *(v43 + 48) = v42;
  *v43 = 56;
  v44 = *(a1 + 8);
  LODWORD(v42) = v44[8] | a4;
  v44[8] = v42;
  v45 = *(a1 + 24);
  v46 = *v44;
  if ((v42 & 0x1000) != 0)
  {
    v47 = *v44;
    v48 = v44;
    do
    {
      v48 = (v48 + v47);
      v47 = *v48;
      v46 += v47;
    }

    while ((*(v48 + 33) & 0x20) == 0);
  }

  v49 = objc_autoreleasePoolPush();
  [*(v45 + 8) appendBytes:v44 length:v46];
  objc_autoreleasePoolPop(v49);
  v50 = *(a2 + 96);
  v51 = *(a1 + 8);
  *(v51 + 16) = 0;
  *(v51 + 24) = 0;
  *(v51 + 32) = 6;
  *(v51 + 36) = 26947;
  *(v51 + 40) = v8;
  *(v51 + 48) = v50;
  *v51 = 0xFFFFC2D400000034;
  *(v51 + 8) = 0;
  v52 = *(a1 + 8);
  v53 = v52[8] | a4;
  v52[8] = v53;
  v54 = *(a1 + 24);
  v55 = *v52;
  if ((v53 & 0x1000) != 0)
  {
    v56 = *v52;
    v57 = v52;
    do
    {
      v57 = (v57 + v56);
      v56 = *v57;
      v55 += v56;
    }

    while ((*(v57 + 33) & 0x20) == 0);
  }

  v58 = objc_autoreleasePoolPush();
  [*(v54 + 8) appendBytes:v52 length:v55];
  objc_autoreleasePoolPop(v58);
  if (*(a2 + 48))
  {
    v59 = *(*(a2 + 128) + 72) - *(*(a2 + 128) + 80);
    v60 = *(a1 + 8);
    *(v60 + 24) = 0;
    *(v60 + 8) = 0u;
    *(v60 + 32) = 0x6C754300000000;
    *v60 = 0xFFFFD84700000028;
    *(v60 + 40) = v8;
    *(v60 + 48) = v59;
    *v60 = 56;
    v61 = *(a1 + 8);
    LODWORD(v59) = v61[8] | a4;
    v61[8] = v59;
    v62 = *(a1 + 24);
    v63 = *v61;
    if ((v59 & 0x1000) != 0)
    {
      v64 = *v61;
      v65 = v61;
      do
      {
        v65 = (v65 + v64);
        v64 = *v65;
        v63 += v64;
      }

      while ((*(v65 + 33) & 0x20) == 0);
    }

    v66 = objc_autoreleasePoolPush();
    [*(v62 + 8) appendBytes:v61 length:v63];
    objc_autoreleasePoolPop(v66);
  }

  v67 = *(a2 + 144);
  v68 = *(a1 + 8);
  *(v68 + 24) = 0;
  *(v68 + 8) = 0u;
  *(v68 + 32) = 0x77754300000004;
  *v68 = 0xFFFFD84900000028;
  *(v68 + 40) = v8;
  *(v68 + 48) = v67;
  *v68 = 56;
  v69 = *(a1 + 8);
  LODWORD(v67) = v69[8] | a4;
  v69[8] = v67;
  v70 = *(a1 + 24);
  v71 = *v69;
  if ((v67 & 0x1000) != 0)
  {
    v72 = *v69;
    v73 = v69;
    do
    {
      v73 = (v73 + v72);
      v72 = *v73;
      v71 += v72;
    }

    while ((*(v73 + 33) & 0x20) == 0);
  }

  v74 = objc_autoreleasePoolPush();
  [*(v70 + 8) appendBytes:v69 length:v71];

  objc_autoreleasePoolPop(v74);
}

void WriteFunctionHandleInfo(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  ObjectStream = GetObjectStream_(a3, a2);
  v8 = ObjectStream;
  v9 = *(a2 + 88);
  if (v9)
  {
    v10 = *(a1 + 8);
    *(v10 + 24) = 0;
    *(v10 + 8) = 0u;
    *(v10 + 32) = 0x77754300000004;
    *v10 = 0xFFFFD86300000028;
    *(v10 + 40) = ObjectStream;
    *(v10 + 48) = v9;
    *v10 = 56;
    v11 = *(a1 + 8);
    v12 = v11[8] | a4;
    v11[8] = v12;
    v13 = *(a1 + 24);
    v14 = *v11;
    if ((v12 & 0x1000) != 0)
    {
      v15 = *v11;
      v16 = v11;
      do
      {
        v16 = (v16 + v15);
        v15 = *v16;
        v14 += v15;
      }

      while ((*(v16 + 33) & 0x20) == 0);
    }

    v17 = objc_autoreleasePoolPush();
    [*(v13 + 8) appendBytes:v11 length:v14];
    objc_autoreleasePoolPop(v17);
  }

  v18 = *(a2 + 80);
  if (v18)
  {
    v19 = *(a1 + 8);
    *(v19 + 24) = 0;
    *(v19 + 8) = 0u;
    *(v19 + 32) = 0x77754300000004;
    *v19 = 0xFFFFD86400000028;
    *(v19 + 40) = v8;
    *(v19 + 48) = v18;
    *v19 = 56;
    v20 = *(a1 + 8);
    v21 = v20[8] | a4;
    v20[8] = v21;
    v22 = *(a1 + 24);
    v23 = *v20;
    if ((v21 & 0x1000) != 0)
    {
      v24 = *v20;
      v25 = v20;
      do
      {
        v25 = (v25 + v24);
        v24 = *v25;
        v23 += v24;
      }

      while ((*(v25 + 33) & 0x20) == 0);
    }

    v26 = objc_autoreleasePoolPush();
    [*(v22 + 8) appendBytes:v20 length:v23];

    objc_autoreleasePoolPop(v26);
  }
}

void FlushChainedLibraryInfo(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  ObjectStream = GetObjectStream_(a3, a2);
  v8 = *(a1 + 8);
  v9 = v8[8] | a4;
  v8[8] = v9;
  v10 = *(a2 + 177);
  if (v10 == 7 || v10 == 1)
  {
    v8[8] = v9 | 0x1000;
    v12 = *(a1 + 24);
    v13 = *v8;
    v14 = objc_autoreleasePoolPush();
    [*(v12 + 8) appendBytes:v8 length:v13];
    objc_autoreleasePoolPop(v14);
    v16 = *(a1 + 8);
    *(v16 + 32) = 0;
    *v16 = 0u;
    *(v16 + 16) = 0u;
    v17 = *(a1 + 8);
    v17[8] = 198;
    *v17 = 0xFFFFD01000000024;
    v44 = *a1;
    *v45 = 127;
    memset(&v45[4], 0, 36);
    *&v45[8] = *(a2 + 152);
  }

  else
  {
    if (*(a2 + 177))
    {
      goto LABEL_10;
    }

    v8[8] = v9 | 0x1000;
    v18 = *(a1 + 24);
    v19 = *v8;
    v20 = objc_autoreleasePoolPush();
    [*(v18 + 8) appendBytes:v8 length:v19];
    objc_autoreleasePoolPop(v20);
    v21 = *(a1 + 8);
    *(v21 + 32) = 0;
    *v21 = 0u;
    *(v21 + 16) = 0u;
    v17 = *(a1 + 8);
    *v17 = 0xFFFFD01000000024;
    v17[8] = 198;
    *&v45[24] = 0u;
    v44 = *a1;
    *v45 = 108;
    v22 = *(a2 + 160);
    *&v45[8] = ObjectStream;
    *&v45[16] = v22;
  }

  DYTraceEncode_InternalData(&v44, v17, *(a1 + 16), v15, 0);
  v8 = *(a1 + 8);
  v8[8] |= 0x2000u;
LABEL_10:
  v23 = *(a1 + 24);
  v24 = *v8;
  if ((*(v8 + 33) & 0x10) != 0)
  {
    v26 = v8;
    v25 = *v8;
    do
    {
      v26 = (v26 + v24);
      v24 = *v26;
      v25 += v24;
    }

    while ((*(v26 + 33) & 0x20) == 0);
  }

  else
  {
    v25 = *v8;
  }

  v27 = objc_autoreleasePoolPush();
  [*(v23 + 8) appendBytes:v8 length:v25];
  objc_autoreleasePoolPop(v27);
  v28 = *(a2 + 176);
  v29 = *(a1 + 8);
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = 5;
  *(v29 + 36) = 67;
  *(v29 + 40) = ObjectStream;
  *(v29 + 48) = 27765;
  *(v29 + 52) = v28;
  *v29 = 0xFFFFD8390000003CLL;
  *(v29 + 8) = 0;
  v30 = *(a1 + 8);
  LODWORD(v28) = v30[8] | a4;
  v30[8] = v28;
  v31 = *(a1 + 24);
  v32 = *v30;
  if ((v28 & 0x1000) != 0)
  {
    v33 = *v30;
    v34 = v30;
    do
    {
      v34 = (v34 + v33);
      v33 = *v34;
      v32 += v33;
    }

    while ((*(v34 + 33) & 0x20) == 0);
  }

  v35 = objc_autoreleasePoolPush();
  [*(v31 + 8) appendBytes:v30 length:v32];
  objc_autoreleasePoolPop(v35);
  v36 = *(a2 + 144);
  if (v36)
  {
    v44 = ObjectStream;
    *v45 = v36;
    DYTraceEncode_MTLLibrary_libraryIdentifier(&v44, *(a1 + 8), *(a1 + 16), 0, 0);
    v37 = *(a1 + 8);
    v38 = v37[8] | a4;
    v37[8] = v38;
    v39 = *(a1 + 24);
    v40 = *v37;
    if ((v38 & 0x1000) != 0)
    {
      v41 = *v37;
      v42 = v37;
      do
      {
        v42 = (v42 + v41);
        v41 = *v42;
        v40 += v41;
      }

      while ((*(v42 + 33) & 0x20) == 0);
    }

    v43 = objc_autoreleasePoolPush();
    [*(v39 + 8) appendBytes:v37 length:v40];
    objc_autoreleasePoolPop(v43);
  }
}

void FlushChainedPipelineLibraryInfo(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  GetObjectStream_(a3, a2);
  v7 = a1[1];
  v7[8] |= a4 | 0x1000;
  if (*(a2 + 48))
  {
    v8 = a1[3];
    v9 = *v7;
    v10 = objc_autoreleasePoolPush();
    [*(v8 + 8) appendBytes:v7 length:v9];
    objc_autoreleasePoolPop(v10);
    v11 = a1[1];
    *(v11 + 32) = 0;
    *v11 = 0u;
    *(v11 + 16) = 0u;
    v12 = a1[1];
    v12[8] = 198;
    *v12 = 0xFFFFD01000000024;
    v34 = *a1;
    *v35 = 132;
    memset(&v35[4], 0, 36);
    *&v35[8] = *(a2 + 48);
    DYTraceEncode_InternalData(&v34, v12, *(a1 + 4), v13, 0);
  }

  if (*(a2 + 80))
  {
    v14 = 0;
    do
    {
      v15 = a1[3];
      v16 = a1[1];
      v17 = *v16;
      v18 = objc_autoreleasePoolPush();
      [*(v15 + 8) appendBytes:v16 length:v17];
      objc_autoreleasePoolPop(v18);
      v19 = a1[1];
      *(v19 + 32) = 0;
      *v19 = 0u;
      *(v19 + 16) = 0u;
      v20 = a1[1];
      *(v20 + 32) = 198;
      *v20 = 0xFFFFD01000000024;
      memset(&v35[8], 0, 32);
      v34 = *a1;
      *v35 = 135;
      v21 = __chkstk_darwin(a1[4], *(*(a2 + 64) + 8 * v14));
      *(&v33 - 16) = 0;
      *(&v33 - 3) = v22;
      *(&v33 - 2) = v22;
      *(&v33 - 5) = v22;
      *(&v33 - 4) = v22;
      *&v35[8] = SaveFileWithURL(v21, v23, &v33 - 80, 0, 1);
      *&v35[16] = *(*(a2 + 72) + 8 * v14);
      DYTraceEncode_InternalData(&v34, a1[1], *(a1 + 4), v24, 0);
      ++v14;
    }

    while (v14 < *(a2 + 80));
  }

  v25 = a1[1];
  v26 = v25[8];
  if ((v26 & 0x1000) != 0)
  {
    v27 = v26 & 0xFFFFEFFF;
  }

  else
  {
    v27 = v26 | 0x2000;
  }

  v25[8] = v27;
  v28 = a1[3];
  v29 = *v25;
  if ((v27 & 0x1000) != 0)
  {
    v30 = *v25;
    v31 = v25;
    do
    {
      v31 = (v31 + v30);
      v30 = *v31;
      v29 += v30;
    }

    while ((*(v31 + 33) & 0x20) == 0);
  }

  v32 = objc_autoreleasePoolPush();
  [*(v28 + 8) appendBytes:v25 length:v29];
  objc_autoreleasePoolPop(v32);
}

size_t SaveResourceMapsData(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v7 = a1;
  if (a3 > 7)
  {
    *a2 = 115;
    v8 = *a1;
    v9 = (*a1 + 12);
    v10 = *v9;
    if (a3 < 0x10)
    {
      goto LABEL_6;
    }

    a2[1] = v10;
  }

  else
  {
    v8 = *a1;
    v9 = (*a1 + 12);
  }

  v10 = *(v8 + 12);
LABEL_6:
  if (v10 < 1)
  {
    v20 = 16;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = a2 + 2;
    do
    {
      v14 = *(*(v8 + 24) + 8 * v12);
      if (v14)
      {
        v15 = v14[1];
      }

      else
      {
        v15 = 0;
      }

      newpool = v15;
      entry = find_entry(a4, &newpool, 8uLL, 0);
      if (*entry && (v17 = *(*entry + 32)) != 0)
      {
        v18 = atomic_load((v17 + 56));
        v19 = (v17 + (~(v18 >> 2) & 8));
      }

      else
      {
        v19 = &dword_8;
      }

      if (v11 * 8 + 24 <= a3)
      {
        v13[v11] = *v19;
      }

      if (v11 * 8 + 32 <= a3)
      {
        v13[v11 + 1] = v14[15];
      }

      if (v11 * 8 + 40 <= a3)
      {
        v13[v11 + 2] = v14[14];
      }

      ++v12;
      v11 += 3;
    }

    while (v12 < *v9);
    v20 = v11 * 8 + 16;
    v7 = a1;
  }

  v21 = v7[2];
  v22 = *(v21 + 12);
  v23 = v20 + 8;
  if (v20 + 8 <= a3)
  {
    *(a2 + v20) = v22;
    v22 = *(v21 + 12);
  }

  if (v22 >= 1)
  {
    v24 = 0;
    v25 = v20 + 32;
    do
    {
      v26 = *(*(v21 + 24) + 8 * v24);
      if (v26)
      {
        v27 = v26[1];
      }

      else
      {
        v27 = 0;
      }

      newpool = v27;
      v28 = find_entry(a4, &newpool, 8uLL, 0);
      if (*v28 && (v29 = *(*v28 + 32)) != 0)
      {
        v30 = atomic_load((v29 + 56));
        v31 = (v29 + (~(v30 >> 2) & 8));
      }

      else
      {
        v31 = &dword_8;
      }

      if (v25 - 16 <= a3)
      {
        *(a2 + v25 - 24) = *v31;
      }

      if (v25 - 8 <= a3)
      {
        *(a2 + v25 - 16) = v26[22];
      }

      if (v25 <= a3)
      {
        *(a2 + v25 - 8) = v26[26];
      }

      ++v24;
      v25 += 24;
    }

    while (v24 < *(v21 + 12));
    v23 = v25 - 24;
  }

  v32 = v7[3];
  v33 = *(v32 + 12);
  if (v33 < 1)
  {
    v34 = 0;
  }

  else
  {
    v34 = 0;
    v35 = *(v32 + 24);
    v36 = v35;
    do
    {
      v37 = *v36;
      if (*(*(*v36 + 48) + 66))
      {
        *v36 = v35[v34];
        v35[v34++] = v37;
      }

      ++v36;
      --v33;
    }

    while (v33);
  }

  v38 = v23 + 8;
  if (v23 + 8 <= a3)
  {
    *(a2 + v23) = v34;
  }

  if (v34 >= 1)
  {
    v39 = 0;
    v40 = 0;
    v41 = a2 + v23;
    v42 = 24 * v34;
    do
    {
      v43 = *(*(v32 + 24) + v39);
      if (v43)
      {
        v44 = v43[1];
      }

      else
      {
        v44 = 0;
      }

      newpool = v44;
      v45 = find_entry(a4, &newpool, 8uLL, 0);
      if (*v45 && (v46 = *(*v45 + 32)) != 0)
      {
        v47 = atomic_load((v46 + 56));
        v48 = (v46 + (~(v47 >> 2) & 8));
      }

      else
      {
        v48 = &dword_8;
      }

      if (v23 + v40 + 16 <= a3)
      {
        *&v41[v40 + 8] = *v48;
      }

      if (v23 + v40 + 24 <= a3)
      {
        *&v41[v40 + 16] = v43[8];
      }

      if (v23 + v40 + 32 <= a3)
      {
        *&v41[v40 + 24] = v43[9];
      }

      v40 += 24;
      v39 += 8;
    }

    while (v42 != v40);
    v38 = v23 + v40 + 8;
    v7 = a1;
  }

  v49 = v7[4];
  v50 = GTMTLSMPipelineState_sortIndirectResources(*(v49 + 24), *(v49 + 12));
  v51 = v38 + 8;
  if (v38 + 8 <= a3)
  {
    *(a2 + v38) = v50;
  }

  if (v50 >= 1)
  {
    v52 = 0;
    v53 = 0;
    v54 = a2 + v38;
    v55 = 24 * v50;
    do
    {
      v56 = *(*(v49 + 24) + v52);
      if (v56)
      {
        v57 = v56[1];
      }

      else
      {
        v57 = 0;
      }

      newpool = v57;
      v58 = find_entry(a4, &newpool, 8uLL, 0);
      if (*v58 && (v59 = *(*v58 + 32)) != 0)
      {
        v60 = atomic_load((v59 + 56));
        v61 = (v59 + (~(v60 >> 2) & 8));
      }

      else
      {
        v61 = &dword_8;
      }

      if (v38 + v53 + 16 <= a3)
      {
        *&v54[v53 + 8] = *v61;
      }

      if (v38 + v53 + 24 <= a3)
      {
        *&v54[v53 + 16] = v56[15];
      }

      if (v38 + v53 + 32 <= a3)
      {
        *&v54[v53 + 24] = v56[17];
      }

      v53 += 24;
      v52 += 8;
    }

    while (v55 != v53);
    v51 = v38 + v53 + 8;
    v7 = a1;
  }

  v62 = v7[5];
  v63 = GTMTLSMPipelineState_sortIndirectResources(*(v62 + 24), *(v62 + 12));
  v64 = v51 + 8;
  if (v51 + 8 <= a3)
  {
    *(a2 + v51) = v63;
  }

  if (v63 >= 1)
  {
    v65 = 0;
    v66 = 0;
    v67 = a2 + v51;
    v68 = 24 * v63;
    do
    {
      v69 = *(*(v62 + 24) + v65);
      if (v69)
      {
        v70 = v69[1];
      }

      else
      {
        v70 = 0;
      }

      newpool = v70;
      v71 = find_entry(a4, &newpool, 8uLL, 0);
      if (*v71 && (v72 = *(*v71 + 32)) != 0)
      {
        v73 = atomic_load((v72 + 56));
        v74 = (v72 + (~(v73 >> 2) & 8));
      }

      else
      {
        v74 = &dword_8;
      }

      if (v51 + v66 + 16 <= a3)
      {
        *&v67[v66 + 8] = *v74;
      }

      if (v51 + v66 + 24 <= a3)
      {
        *&v67[v66 + 16] = v69[15];
      }

      if (v51 + v66 + 32 <= a3)
      {
        *&v67[v66 + 24] = v69[17];
      }

      v66 += 24;
      v65 += 8;
    }

    while (v68 != v66);
    v64 = v51 + v66 + 8;
    v7 = a1;
  }

  v75 = v7[6];
  v76 = *(v75 + 12);
  v77 = v64 + 8;
  if (v64 + 8 <= a3)
  {
    *(a2 + v64) = v76;
    v76 = *(v75 + 12);
  }

  if (v76 >= 1)
  {
    v78 = 0;
    v79 = v64 + 32;
    do
    {
      v80 = *(*(v75 + 24) + 8 * v78);
      if (v80)
      {
        v81 = v80[1];
      }

      else
      {
        v81 = 0;
      }

      newpool = v81;
      v82 = find_entry(a4, &newpool, 8uLL, 0);
      if (*v82 && (v83 = *(*v82 + 32)) != 0)
      {
        v84 = atomic_load((v83 + 56));
        v85 = (v83 + (~(v84 >> 2) & 8));
      }

      else
      {
        v85 = &dword_8;
      }

      if (v79 - 16 <= a3)
      {
        *(a2 + v79 - 24) = *v85;
      }

      if (v79 - 8 <= a3)
      {
        *(a2 + v79 - 16) = v80[16];
      }

      if (v79 <= a3)
      {
        *(a2 + v79 - 8) = v80[17];
      }

      ++v78;
      v79 += 24;
    }

    while (v78 < *(v75 + 12));
    v77 = v79 - 24;
  }

  v86 = v7[7];
  v87 = *(v86 + 12);
  v88 = v77 + 8;
  if (v77 + 8 <= a3)
  {
    *(a2 + v77) = v87;
    v87 = *(v86 + 12);
  }

  if (v87 >= 1)
  {
    v89 = 0;
    v90 = v77 + 32;
    do
    {
      v91 = *(*(v86 + 24) + 8 * v89);
      if (v91)
      {
        v92 = v91[1];
      }

      else
      {
        v92 = 0;
      }

      newpool = v92;
      v93 = find_entry(a4, &newpool, 8uLL, 0);
      if (*v93 && (v94 = *(*v93 + 32)) != 0)
      {
        v95 = atomic_load((v94 + 56));
        v96 = (v94 + (~(v95 >> 2) & 8));
      }

      else
      {
        v96 = &dword_8;
      }

      if (v90 - 16 <= a3)
      {
        *(a2 + v90 - 24) = *v96;
      }

      if (v90 - 8 <= a3)
      {
        *(a2 + v90 - 16) = v91[18];
      }

      if (v90 <= a3)
      {
        *(a2 + v90 - 8) = v91[20];
      }

      ++v89;
      v90 += 24;
    }

    while (v89 < *(v86 + 12));
    v88 = v90 - 24;
  }

  v97 = v7[8];
  v98 = *(v97 + 12);
  v99 = v88 + 8;
  if (v88 + 8 <= a3)
  {
    *(a2 + v88) = v98;
    v98 = *(v97 + 12);
  }

  if (v98 >= 1)
  {
    v100 = 0;
    v101 = v88 + 32;
    do
    {
      v102 = *(*(v97 + 24) + 8 * v100);
      if (v102)
      {
        v103 = v102[1];
      }

      else
      {
        v103 = 0;
      }

      newpool = v103;
      v104 = find_entry(a4, &newpool, 8uLL, 0);
      if (*v104 && (v105 = *(*v104 + 32)) != 0)
      {
        v106 = atomic_load((v105 + 56));
        v107 = (v105 + (~(v106 >> 2) & 8));
      }

      else
      {
        v107 = &dword_8;
      }

      if (v101 - 16 <= a3)
      {
        *(a2 + v101 - 24) = *v107;
      }

      if (v101 - 8 <= a3)
      {
        *(a2 + v101 - 16) = v102[19];
      }

      if (v101 <= a3)
      {
        *(a2 + v101 - 8) = v102[20];
      }

      ++v100;
      v101 += 24;
    }

    while (v100 < *(v97 + 12));
    v99 = v101 - 24;
  }

  v108 = v7[9];
  v109 = *(v108 + 12);
  v110 = v99 + 8;
  if (v99 + 8 <= a3)
  {
    *(a2 + v99) = v109;
    v109 = *(v108 + 12);
  }

  if (v109 >= 1)
  {
    v111 = 0;
    v112 = v99 + 32;
    do
    {
      v113 = *(*(v108 + 24) + 8 * v111);
      if (v113)
      {
        v114 = v113[1];
      }

      else
      {
        v114 = 0;
      }

      newpool = v114;
      v115 = find_entry(a4, &newpool, 8uLL, 0);
      if (*v115 && (v116 = *(*v115 + 32)) != 0)
      {
        v117 = atomic_load((v116 + 56));
        v118 = (v116 + (~(v117 >> 2) & 8));
      }

      else
      {
        v118 = &dword_8;
      }

      if (v112 - 16 <= a3)
      {
        *(a2 + v112 - 24) = *v118;
      }

      if (v112 - 8 <= a3)
      {
        *(a2 + v112 - 16) = v113[17];
      }

      if (v112 <= a3)
      {
        *(a2 + v112 - 8) = v113[18];
      }

      ++v111;
      v112 += 24;
    }

    while (v111 < *(v108 + 12));
    v110 = v112 - 24;
  }

  v119 = v7[10];
  v120 = *(v119 + 12);
  v121 = v110 + 8;
  if (v110 + 8 <= a3)
  {
    *(a2 + v110) = v120;
    v120 = *(v119 + 12);
  }

  if (v120 >= 1)
  {
    v122 = 0;
    v123 = v110 + 32;
    do
    {
      v124 = *(*(v119 + 24) + 8 * v122);
      if (v124)
      {
        v125 = v124[1];
      }

      else
      {
        v125 = 0;
      }

      newpool = v125;
      v126 = find_entry(a4, &newpool, 8uLL, 0);
      if (*v126 && (v127 = *(*v126 + 32)) != 0)
      {
        v128 = atomic_load((v127 + 56));
        v129 = (v127 + (~(v128 >> 2) & 8));
      }

      else
      {
        v129 = &dword_8;
      }

      if (v123 - 16 <= a3)
      {
        *(a2 + v123 - 24) = *v129;
      }

      if (v123 - 8 <= a3)
      {
        *(a2 + v123 - 16) = v124[8];
      }

      if (v123 <= a3)
      {
        *(a2 + v123 - 8) = v124[9];
      }

      ++v122;
      v123 += 24;
    }

    while (v122 < *(v119 + 12));
    v121 = v123 - 24;
  }

  v130 = v7[1];
  v131 = *(v130 + 12);
  v132 = v121 + 8;
  if (v121 + 8 <= a3)
  {
    *(a2 + v121) = v131;
    v131 = *(v130 + 12);
  }

  if (v131 >= 1)
  {
    v133 = 0;
    v134 = v121 + 32;
    do
    {
      v135 = *(*(v130 + 24) + 8 * v133);
      if (v135)
      {
        v136 = v135[1];
      }

      else
      {
        v136 = 0;
      }

      newpool = v136;
      v137 = find_entry(a4, &newpool, 8uLL, 0);
      if (*v137 && (v138 = *(*v137 + 32)) != 0)
      {
        v139 = atomic_load((v138 + 56));
        v140 = (v138 + (~(v139 >> 2) & 8));
      }

      else
      {
        v140 = &dword_8;
      }

      if (v134 - 16 <= a3)
      {
        *(a2 + v134 - 24) = *v140;
      }

      if (v134 - 8 <= a3)
      {
        *(a2 + v134 - 16) = v135[39];
      }

      if (v134 <= a3)
      {
        *(a2 + v134 - 8) = v135[37];
      }

      ++v133;
      v134 += 24;
    }

    while (v133 < *(v130 + 12));
    v132 = v134 - 24;
  }

  v141 = v7[11];
  v142 = *(v141 + 12);
  if (v142 < 1)
  {
    v144 = 0;
  }

  else
  {
    v143 = 0;
    v144 = 0;
    do
    {
      v145 = *(*(v141 + 24) + 8 * v143);
      v146 = *(v145 + 64);
      if (v146 >= 1)
      {
        do
        {
          v144 += *(v145 + 80);
          v145 = *(v145 + 32);
          --v146;
        }

        while (v146);
      }

      ++v143;
    }

    while (v143 != v142);
  }

  v147 = v132 + 8;
  if (v132 + 8 <= a3)
  {
    *(a2 + v132) = v144;
  }

  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, 0);
  v148 = newpool;
  v149 = apr_array_make(newpool, 128, 8);
  if (*(v141 + 12) < 1)
  {
    v164 = v147;
  }

  else
  {
    v150 = v149;
    v151 = 0;
    do
    {
      v152 = *(*(v141 + 24) + 8 * v151);
      v153 = *(v152 + 64);
      if (v153 < 1)
      {
        v163 = 0;
        v150->nelts = 0;
      }

      else
      {
        v154 = 0;
        v155 = *(v152 + 64);
        v156 = *(*(v141 + 24) + 8 * v151);
        do
        {
          v154 += *(v156 + 80);
          v156 = *(v156 + 32);
          --v155;
        }

        while (v155);
        v157 = 0;
        v158 = 3 * v154;
        v150->nelts = 3 * v154;
        do
        {
          v159 = *(v152 + 80);
          if (v159)
          {
            v160 = 0;
            v161 = *(v152 + 72);
            v162 = &v150->elts[24 * v154 - 24 * v159 + 8];
            do
            {
              *(v162 - 1) = *(v161 + 8 * v160);
              *v162 = *(v152 + 24);
              *(v162 + 1) = v160 + *(v152 + 96);
              ++v160;
              v162 += 24;
            }

            while (*(v152 + 80) > v160);
          }

          v154 -= v159;
          v152 = *(v152 + 32);
          ++v157;
        }

        while (v157 != v153);
        v163 = 8 * v158;
      }

      v164 = v147 + v163;
      if (v147 + v163 <= a3)
      {
        memcpy(a2 + v147, v150->elts, v163);
      }

      ++v151;
      v147 = v164;
    }

    while (v151 < *(v141 + 12));
  }

  apr_pool_destroy(v148);
  return v164;
}

apr_array_header_t *MakeResourceMapsData(apr_array_header_t **a1, unsigned int *a2, int a3, apr_pool_t *p)
{
  v6 = *a2;
  v7 = a2[2];
  v8 = a2 + 4;
  v9 = apr_array_make(p, v7, 32);
  if (v7 >= 1)
  {
    do
    {
      v10 = apr_array_push(v9);
      v10[2] = *v8;
      *v10 = *(v8 + 1);
      v11 = *(v8 + 2);
      v8 += 6;
      v10[1] = v11;
      *(v10 + 24) = 0;
      --v7;
    }

    while (v7);
  }

  v18 = v8;
  *a1 = v9;
  a1[2] = LoadUniqueIdentifierResourceGroup(&v18, v6, p);
  a1[3] = LoadUniqueIdentifierResourceGroup(&v18, v6, p);
  if (v6 <= 0x16)
  {
    a1[4] = apr_array_make(p, 0, 32);
    a1[5] = apr_array_make(p, 0, 32);
    a1[6] = apr_array_make(p, 0, 32);
    goto LABEL_14;
  }

  a1[4] = LoadUniqueIdentifierResourceGroup(&v18, v6, p);
  a1[5] = LoadUniqueIdentifierResourceGroup(&v18, v6, p);
  a1[6] = LoadUniqueIdentifierResourceGroup(&v18, v6, p);
  if (v6 <= 0x2E)
  {
LABEL_14:
    a1[7] = apr_array_make(p, 0, 32);
    goto LABEL_15;
  }

  a1[7] = LoadUniqueIdentifierResourceGroup(&v18, v6, p);
  if (v6 <= 0x35)
  {
LABEL_15:
    a1[8] = apr_array_make(p, 0, 32);
    a1[9] = apr_array_make(p, 0, 32);
    goto LABEL_16;
  }

  a1[8] = LoadUniqueIdentifierResourceGroup(&v18, v6, p);
  a1[9] = LoadUniqueIdentifierResourceGroup(&v18, v6, p);
  if (v6 <= 0x64)
  {
LABEL_16:
    a1[10] = apr_array_make(p, 0, 32);
    goto LABEL_17;
  }

  a1[10] = LoadUniqueIdentifierResourceGroup(&v18, v6, p);
  if (v6 <= 0x67)
  {
LABEL_17:
    a1[1] = apr_array_make(p, 0, 32);
    goto LABEL_18;
  }

  a1[1] = LoadUniqueIdentifierResourceGroup(&v18, v6, p);
  if (v6 < 0x6E)
  {
LABEL_18:
    result = apr_array_make(p, 0, 24);
    v15 = result;
    goto LABEL_19;
  }

  v12 = v18;
  v13 = *v18;
  result = apr_array_make(p, *v18, 24);
  v15 = result;
  if (v13 >= 1)
  {
    v16 = (v12 + 2);
    do
    {
      result = apr_array_push(v15);
      result->pool = *v16;
      *&result->elt_size = v16[1];
      v17 = v16[2];
      v16 += 3;
      *&result->nalloc = v17;
      --v13;
    }

    while (v13);
  }

LABEL_19:
  a1[11] = v15;
  return result;
}

apr_array_header_t *LoadUniqueIdentifierResourceGroup(int **a1, unsigned int a2, apr_pool_t *p)
{
  v5 = **a1;
  *a1 += 2;
  v6 = apr_array_make(p, v5, 32);
  if (v5 >= 1)
  {
    do
    {
      v7 = apr_array_push(v6);
      v8 = *a1;
      v9 = **a1;
      *a1 += 2;
      v7[1] = v9;
      v10 = *(v8 + 1);
      *a1 = v8 + 4;
      *v7 = v10;
      if (a2 >= 0x41)
      {
        v11 = *(v8 + 2);
        *a1 = v8 + 6;
        v7[2] = v11;
      }

      --v5;
    }

    while (v5);
  }

  return v6;
}

uint64_t SaveDYMTLMutableBufferAncestorMaps(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  if (a3 > 7)
  {
    *a2 = 115;
    v7 = (a1 + 12);
    v8 = *(a1 + 12);
    if (a3 < 0x10)
    {
      goto LABEL_6;
    }

    a2[1] = v8;
  }

  else
  {
    v7 = (a1 + 12);
  }

  v8 = *v7;
LABEL_6:
  if (v8 < 1)
  {
    return 16;
  }

  v9 = 0;
  v10 = a2 + 3;
  v11 = 16;
  v31 = v7;
  v32 = a1;
  do
  {
    v12 = *(*(a1 + 24) + 8 * v9);
    v13 = v11 + 8;
    if (v11 + 8 <= a3)
    {
      *(a2 + v11) = *(v12 + 48);
    }

    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    *(v12 + 16) = v12;
    *(v12 + 40) = 0;
    for (i = (v12 + 16); ; i = v16)
    {
      v15 = apr_hash_next(i);
      v16 = v15;
      if (!v15)
      {
        break;
      }

      v17 = *(v15 + 1);
      v18 = *(v17 + 32);
      v33 = **(v17 + 16);
      entry = find_entry(a4, &v33, 8uLL, 0);
      if (*entry && (v20 = *(*entry + 32)) != 0)
      {
        v21 = atomic_load((v20 + 56));
        v22 = (v20 + (~(v21 >> 2) & 8));
      }

      else
      {
        v22 = &dword_8;
      }

      if (v13 + 8 <= a3)
      {
        *(a2 + v13) = *v22;
      }

      if (v13 + 16 <= a3)
      {
        *(a2 + v13 + 8) = *(v18 + 48);
      }

      *(v18 + 24) = 0;
      *(v18 + 32) = 0;
      *(v18 + 16) = v18;
      *(v18 + 40) = 0;
      v23 = apr_hash_next((v18 + 16));
      if (v23)
      {
        do
        {
          v24 = *(v23 + 1);
          v25 = *(v24 + 32);
          v33 = **(v24 + 16);
          v26 = find_entry(a4, &v33, 8uLL, 0);
          if (*v26 && (v27 = *(*v26 + 32)) != 0)
          {
            v28 = atomic_load((v27 + 56));
            v29 = (v27 + (~(v28 >> 2) & 8));
          }

          else
          {
            v29 = &dword_8;
          }

          if (v13 + 24 <= a3)
          {
            *(v10 + v13 - 8) = *v29;
          }

          if (v13 + 32 <= a3)
          {
            *(v10 + v13) = *v25;
          }

          v23 = apr_hash_next(v23);
          v13 += 16;
        }

        while (v23);
        v13 += 16;
      }

      else
      {
        v13 += 16;
      }
    }

    ++v9;
    a1 = v32;
    v11 = v13;
  }

  while (v9 < *v31);
  return v13;
}

uint64_t SaveDYMTLIndirectArgumentBufferInfos(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v8 = a1;
  if (a4 > 7)
  {
    *a3 = 115;
    v9 = (a1 + 12);
    v10 = *(a1 + 12);
    if (a4 < 0x10)
    {
      goto LABEL_6;
    }

    a3[1] = v10;
  }

  else
  {
    v9 = (a1 + 12);
  }

  v10 = *v9;
LABEL_6:
  if (v10 < 1)
  {
    return 16;
  }

  v11 = 0;
  v31 = a3 + 5;
  v32 = v9;
  v12 = 16;
  v34 = a3;
  do
  {
    v13 = (*(v8 + 24) + 16 * v11);
    v14 = *v13;
    v15 = v13[1];
    result = v12 + 8;
    if (v12 + 8 <= a4)
    {
      *(a3 + v12) = v15;
    }

    v17 = v15 + v14;
    if (v17 > v14)
    {
      v18 = 0;
      v19 = v31 + v12;
      v20 = 40 * v14;
      v21 = v17 - v14;
      do
      {
        v22 = *(a2 + 24);
        v35 = *(v22 + v20 + v18);
        entry = find_entry(a5, &v35, 8uLL, 0);
        if (*entry && (v24 = *(*entry + 32)) != 0)
        {
          v25 = atomic_load((v24 + 56));
          v26 = (v24 + (~(v25 >> 2) & 8));
        }

        else
        {
          v26 = &dword_8;
        }

        if (v12 + v18 + 16 <= a4)
        {
          *&v19[v18 - 32] = *v26;
        }

        if (v12 + v18 + 24 <= a4)
        {
          *&v19[v18 - 24] = *(v22 + v20 + v18 + 8);
        }

        if (v12 + v18 + 32 <= a4)
        {
          *&v19[v18 - 16] = *(v22 + v20 + v18 + 16);
        }

        v35 = *(v22 + v20 + v18 + 24);
        v27 = find_entry(a5, &v35, 8uLL, 0);
        if (*v27 && (v28 = *(*v27 + 32)) != 0)
        {
          v29 = atomic_load((v28 + 56));
          v30 = (v28 + (~(v29 >> 2) & 8));
        }

        else
        {
          v30 = &dword_8;
        }

        if (v12 + v18 + 40 <= a4)
        {
          *&v19[v18 - 8] = *v30;
        }

        if (v12 + v18 + 48 <= a4)
        {
          *&v19[v18] = *(v22 + v20 + v18 + 32);
        }

        v18 += 40;
        --v21;
      }

      while (v21);
      result = v12 + v18 + 8;
      v8 = a1;
      a3 = v34;
      v9 = v32;
    }

    ++v11;
    v12 = result;
  }

  while (v11 < *v9);
  return result;
}