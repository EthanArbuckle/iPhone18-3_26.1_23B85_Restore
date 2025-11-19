__CFDictionary *__cdecl __main_block_invoke_67(id a1, int a2, __CFDictionary *a3)
{
  v5 = CDGetLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v78 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "got %@", buf, 0xCu);
  }

  v6 = [(__CFDictionary *)a3 objectForKeyedSubscript:@"CACHE_DELETE_RESERVE_SPACE_AMOUNT"];
  if (v6)
  {
    v7 = [(__CFDictionary *)a3 objectForKeyedSubscript:@"CACHE_DELETE_RESERVE_SPACE_AMOUNT"];
    v8 = [(__CFDictionary *)a3 objectForKeyedSubscript:@"CACHE_DELETE_TOTAL_AVAILABLE"];
    v9 = [(__CFDictionary *)a3 objectForKeyedSubscript:@"CACHE_DELETE_FREESPACE_GOAL"];
    v10 = [(__CFDictionary *)a3 objectForKeyedSubscript:@"CACHE_DELETE_FACTOR_FOR_CENTRALIZED_PURGEABLE"];
    v74 = [(__CFDictionary *)a3 objectForKeyedSubscript:@"CACHE_DELETE_FACTOR_FOR_PLUGIN_PURGEABLE"];
    v73 = [(__CFDictionary *)a3 objectForKeyedSubscript:@"CACHE_DELETE_MAX_RESERVE_SPACE_AMOUNT"];
    v11 = [(__CFDictionary *)a3 objectForKeyedSubscript:@"CACHE_DELETE_TOTAL_FSPURGEABLE"];
    DevBSDForUpdateVolume = getDevBSDForUpdateVolume();
    v12 = getRootVolume();
    v76 = [CacheDeleteVolume volumeWithMountpoint:v12];

    if (v10 && [v10 unsignedLongValue])
    {
      v13 = [v10 unsignedLongValue];
    }

    else
    {
      v13 = 100;
    }

    v14 = v74;
    v72 = v10;
    if (v74 && [v74 unsignedLongValue])
    {
      v15 = [v74 unsignedLongValue];
    }

    else
    {
      v15 = 75;
    }

    if (!DevBSDForUpdateVolume)
    {
      goto LABEL_62;
    }

    v66 = v15;
    v68 = v6;
    v67 = a2;
    v71 = v9;
    if (v11)
    {
      v16 = [v11 unsignedLongLongValue];
      v17 = CDGetLogHandle();
      v65 = v11;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v7 unsignedLongLongValue];
        *buf = 134218240;
        v78 = v16;
        v79 = 2048;
        v80 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Using cached filesystem purgeable amount %lld  for reserving %lld", buf, 0x16u);
      }
    }

    else
    {
      v69 = v13;
      v24 = CDGetLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [v7 unsignedLongLongValue];
        *buf = 134217984;
        v78 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Checking filesystem purgeable amount for reserving %lld", buf, 0xCu);
      }

      v89 = @"CACHE_DELETE_VOLUME";
      v26 = getRootVolume();
      v90 = v26;
      v17 = [NSDictionary dictionaryWithObjects:&v90 forKeys:&v89 count:1];

      v27 = fsPurgeable(v17, 4);
      v28 = [v27 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
      v29 = evaluateNumberProperty();

      if (v29)
      {
        v16 = [v29 unsignedLongLongValue];
      }

      else
      {
        v16 = 0;
      }

      if (hasUserVolume())
      {
        v30 = v8;

        v17 = &off_10000CDB8;
        v31 = fsPurgeable(&off_10000CDB8, 4);

        v32 = [v31 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
        v33 = evaluateNumberProperty();

        if (v33)
        {
          v16 = v16 + [v33 unsignedLongLongValue];
          v29 = v33;
        }

        else
        {
          v29 = 0;
        }

        v8 = v30;
      }

      else
      {
        v31 = v27;
      }

      v65 = v29;

      v13 = v69;
    }

    v34 = v13;
    v70 = v8;
    v35 = [v8 unsignedLongLongValue] * v66 / 0x64 + v16 * v13 / 0x64;
    ReservedSizeFromUpdateVolume = getReservedSizeFromUpdateVolume();
    v37 = CDGetLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = [v70 unsignedLongLongValue];
      v39 = [v7 unsignedLongLongValue];
      *buf = 134219520;
      v78 = v16;
      v79 = 2048;
      v80 = v38;
      v81 = 1024;
      *v82 = v34;
      *&v82[4] = 1024;
      *&v82[6] = v66;
      v83 = 2048;
      v84 = v35;
      v85 = 2048;
      v86 = v39;
      v87 = 2048;
      v88 = ReservedSizeFromUpdateVolume;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "totalfsPurgeable: %lld plugin purgeable: %lld centralizedPurgeFactor: %d pluginPurgeFactor: %d actualPurgeable %lld requestedReserve:%lld current reserved:%lld", buf, 0x40u);
    }

    if ([v7 unsignedLongLongValue] <= v35)
    {
      releaseReservedSpaceFromUpdateVolume(0);
      v6 = v68;
      v8 = v70;
      a2 = v67;
      v9 = v71;
      v10 = v72;
      v11 = v65;
LABEL_61:
      free(DevBSDForUpdateVolume);
      v14 = v74;
LABEL_62:

      goto LABEL_63;
    }

    v40 = [v7 unsignedLongLongValue];
    v41 = (((((5 * [v76 size]) >> 1) & 0x3FFFFFFFFFFFFFFFLL) * 0x28F5C28F5C28F5C3uLL) >> 64) >> 2;
    v10 = v72;
    v11 = v65;
    if (v73 && [v73 unsignedLongLongValue])
    {
      v42 = CDGetLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = [v73 unsignedLongLongValue];
        *buf = 134218240;
        v78 = v41;
        v79 = 2048;
        v80 = v43;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, " tenPercentOfDiskCapacity: %lld maxReserveAmount: %lld", buf, 0x16u);
      }

      v44 = [v73 unsignedLongLongValue];
      if (v41 >= v44)
      {
        v41 = v44;
      }
    }

    v45 = CDGetLogHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v78 = v41;
      v79 = 2048;
      v80 = &v40[-v35];
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, " tenPercentOfDiskCapacity: %lld amountToReserve: %lld", buf, 0x16u);
    }

    if (v41 >= &v40[-v35])
    {
      v46 = &v40[-v35];
    }

    else
    {
      v46 = v41;
    }

    v47 = [v76 freespace];
    v8 = v70;
    if (v47 < v46 + [v71 unsignedLongLongValue])
    {
      v48 = CDGetLogHandle();
      a2 = v67;
      v14 = v74;
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v63 = [v76 freespace];
        *buf = 134218240;
        v78 = v63;
        v79 = 2048;
        v80 = v46;
        _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, " not enough space to reserve.current freespace:%lld, need to reserve:%lld", buf, 0x16u);
      }

      notify_post("CACHE_DELETE_NOT_ENOUGH_SPACE_TO_RESERVE");
      v6 = v68;
      v9 = v71;
      goto LABEL_62;
    }

    v49 = CDGetLogHandle();
    v50 = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
    a2 = v67;
    if (v64 >= v46)
    {
      if (!v50)
      {
        goto LABEL_57;
      }

      *buf = 134218496;
      v78 = v46;
      v79 = 2048;
      v80 = v64;
      v81 = 2048;
      *v82 = v46;
      v51 = " Decreasing reserved size to %lld cur_reserve_size: %lld amountToReserveOnUpdateVolume: %lld ";
    }

    else
    {
      if (!v50)
      {
        goto LABEL_57;
      }

      *buf = 134218496;
      v78 = v46;
      v79 = 2048;
      v80 = v64;
      v81 = 2048;
      *v82 = v46;
      v51 = " Increasing reserved size to %lld cur_reserve_size: %lld amountToReserveOnUpdateVolume: %lld ";
    }

    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, v51, buf, 0x20u);
LABEL_57:

    updated = APFSVolumeUpdateBounds();
    v6 = v68;
    v9 = v71;
    if (updated)
    {
      v53 = updated;
      v54 = CDGetLogHandle();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v78 = DevBSDForUpdateVolume;
        v79 = 1024;
        LODWORD(v80) = v53;
        _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, " failed to set reserve space %s: %d\n", buf, 0x12u);
      }

      notify_post("CACHE_DELETE_NOT_ENOUGH_SPACE_TO_RESERVE");
    }

    goto LABEL_61;
  }

  v19 = [(__CFDictionary *)a3 objectForKeyedSubscript:@"CACHE_DELETE_RELEASE_SPACE"];
  v20 = evaluateBoolProperty();

  if (v20)
  {
    v21 = [(__CFDictionary *)a3 objectForKeyedSubscript:@"CACHE_DELETE_RELEASE_AMOUNT"];
    v22 = evaluateNumberProperty();
    v23 = [v22 unsignedLongLongValue];

    releaseReservedSpaceFromUpdateVolume(v23);
  }

  else
  {
    purge_orphans(1, 1);
  }

LABEL_63:
  v55 = fsPurgeable(a3, a2);
  v56 = [v55 mutableCopy];

  v57 = [v56 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
  v58 = evaluateNumberProperty();
  v59 = [v58 unsignedLongLongValue];

  if (!v56)
  {
    v56 = [(__CFDictionary *)a3 mutableCopy];
  }

  v60 = [NSNumber numberWithUnsignedLongLong:v59];
  [v56 setObject:v60 forKeyedSubscript:@"CACHE_DELETE_AMOUNT"];

  v61 = [v56 copy];
  return v61;
}

uint64_t purge_orphans(signed int a1, char a2)
{
  v4 = getRootVolume();
  v5 = [CacheDeleteVolume volumeWithMountpoint:v4];

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v6 = CDGetLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 mountPoint];
    v8 = [v5 freespace];
    *buf = 67109890;
    v23 = 1063;
    v24 = 1024;
    v25 = a1;
    v26 = 2112;
    v27 = v7;
    v28 = 2048;
    v29 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%d purge_orphans ENTRY urgency: %d : %@ freespace: %llu", buf, 0x22u);
  }

  if ((atomic_exchange(purge_orphans_f, 1u) & 1) == 0)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __purge_orphans_block_invoke;
    v15[3] = &unk_10000C700;
    v16 = a1;
    v17 = a2;
    v15[4] = &v18;
    iterate_orphans(a1, 0, v15);
    if (os_variant_is_darwinos())
    {
      v9 = CDGetLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v23 = 1077;
        v24 = 1024;
        v25 = a1;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%d purge_orphans urgency: %d, clearing /tmp/", buf, 0xEu);
      }

      nuke_dir();
    }

    atomic_store(0, purge_orphans_f);
  }

  v10 = CDGetLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v5 mountPoint];
    v12 = [v5 freespace];
    *buf = 67109890;
    v23 = 1082;
    v24 = 1024;
    v25 = a1;
    v26 = 2112;
    v27 = v11;
    v28 = 2048;
    v29 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%d purge_orphans EXIT urgency: %d : %@ freespace: %llu", buf, 0x22u);
  }

  v13 = v19[3];
  _Block_object_dispose(&v18, 8);

  return v13;
}

void sub_100001ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void iterate_orphans(signed int a1, char a2, void *a3)
{
  v5 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = _MergedGlobals;
  v6 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v20;
    *&v7 = 138412290;
    v17 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [_MergedGlobals objectForKeyedSubscript:{v11, v17}];
        v13 = evaluateNumberProperty();
        v14 = [v13 intValue];

        if ((v14 & 0xFFFFFFF7) >= a1)
        {
          v15 = 1;
        }

        else
        {
          v15 = a2;
        }

        if ((v14 & 0xFFFFFFF7) == a1 || (v15 & 1) == 0)
        {
          v16 = CDGetLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v17;
            v24 = v11;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "iterate_orphans calling block: %@", buf, 0xCu);
          }

          v5[2](v5, [v11 UTF8String], (v14 >> 3) & 1);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v8);
  }
}

uint64_t __purge_orphans_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = CDGetLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v8[0] = 67109634;
    v8[1] = 1066;
    v9 = 1024;
    v10 = v5;
    v11 = 2080;
    v12 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%d purge_orphans urgency: %d, clearing: %s", v8, 0x18u);
  }

  if (*(a1 + 44) == 1)
  {
    return nuke_dir();
  }

  v7 = size_dir();
  nuke_dir();
  result = size_dir();
  *(*(*(a1 + 32) + 8) + 24) += v7 - result;
  return result;
}

id fsPurgeable(void *a1, int32_t a2)
{
  v3 = a1;
  v135 = 0;
  memset(v134, 0, sizeof(v134));
  memset(v133, 0, sizeof(v133));
  v132 = objc_opt_new();
  v4 = [v3 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v5 = evaluateStringProperty();
  v6 = mapVolume();

  if (v6)
  {
    if ((a2 - 5) >= 0xFFFFFFFC)
    {
      v7 = a2;
    }

    else
    {
      v7 = 3;
    }

    v8 = dword_1000075E0[v7 - 1];
    *&v133[0] = 12;
    *(&v133[0] + 1) = v8;
    v9 = CDGetLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      buf.f_bsize = 67109376;
      buf.f_iosize = v7;
      LOWORD(buf.f_blocks) = 2048;
      *(&buf.f_blocks + 2) = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Reguesting fsPurgeable for urgency %d with APFS_PURGEABLE urgency %0llx", &buf, 0x12u);
    }

    v10 = os_transaction_create();
    if (fsctl([v6 UTF8String], 0xC0E84A70uLL, v133, 0))
    {
      if (*__error() != 45)
      {
        v11 = CDGetLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
LABEL_109:
          v77 = __error();
          v78 = strerror(*v77);
          buf.f_bsize = 136315138;
          *&buf.f_iosize = v78;
          _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "APFSIOC_PURGEABLE_GET_DETAILED_STATS: %s", &buf, 0xCu);
        }

LABEL_76:

        v131 = 0;
        goto LABEL_104;
      }

      *&v133[0] = 4;
      if (fsctl([v6 UTF8String], 0xC0E84A70uLL, v133, 0))
      {
        v11 = CDGetLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_109;
        }

        goto LABEL_76;
      }
    }

    v122 = v7 - 1;
    v114 = v10;
    v115 = v3;
    v116 = v6;
    v131 = objc_opt_new();
    v13 = 0;
    v14 = v134;
    do
    {
      v15 = [NSNumber numberWithInt:v13];
      v16 = serviceForFSPurgeableType();

      if (v16)
      {
        v17 = [NSNumber numberWithUnsignedLongLong:*v14];
        [v132 setObject:v17 forKeyedSubscript:v16];

        if (!v13)
        {
          v18 = [NSNumber numberWithUnsignedLongLong:*v14];
          [v131 setObject:v18 forKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
        }

        v19 = CDGetLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *v14;
          v21 = *(v14 - 13);
          buf.f_bsize = 67109890;
          buf.f_iosize = v13;
          LOWORD(buf.f_blocks) = 2114;
          *(&buf.f_blocks + 2) = v16;
          WORD1(buf.f_bfree) = 2048;
          *(&buf.f_bfree + 4) = v20;
          WORD2(buf.f_bavail) = 2048;
          *(&buf.f_bavail + 6) = v21;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%d] fsPurgeable type: %{public}@, count: %lld bytes for %lld files", &buf, 0x26u);
        }
      }

      ++v13;
      ++v14;
    }

    while (v13 != 13);
    v22 = [v6 UTF8String];
    memset(&buf, 0, 36);
    *v141 = xmmword_1000075F0;
    *&v141[16] = 0;
    v23 = open(v22, 0x100000);
    if (v23 == -1 || (v24 = v23, fgetattrlist(v23, v141, &buf, 0x24uLL, 0) < 0) || (f_bfree_high = HIDWORD(buf.f_bfree), f_iosize = buf.f_iosize, close(v24), (f_bfree_high & 0x4000000) == 0) || (f_iosize & 0x4000000) == 0)
    {
LABEL_103:
      [v131 setObject:v132 forKeyedSubscript:{@"CACHE_DELETE_ITEMIZED_PURGEABLE", v113}];
      v10 = v114;
      v3 = v115;
LABEL_104:

      v12 = CDGetLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        buf.f_bsize = 138543362;
        *&buf.f_iosize = v131;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "fsPurgeable: %{public}@", &buf, 0xCu);
      }

      goto LABEL_106;
    }

    v27 = [v6 UTF8String];
    v28 = malloc_type_malloc(0x40000uLL, 0xBF80DCD1uLL);
    v29 = v28;
    if (v28)
    {
      v117 = v27;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v125 = 0;
      v129 = 0;
      v35 = 0;
      v36 = 0;
      LOBYTE(v127) = 0;
      *&buf.f_mntonname[8] = 0;
      memset(&buf, 0, 64);
      *&buf.f_flags = v28;
      *&buf.f_fstypename[8] = 58;
      *buf.f_mntonname = 1;
      v120 = qword_100007608[v122];
      v113 = 0x4000100uLL;
      v37 = 1;
      v118 = v28;
      while (1)
      {
        *buf.f_fstypename = 0x40000;
        if (fsctl(v117, 0xC0684A87uLL, &buf, 0))
        {
          break;
        }

        v123 = v30;
        if (*buf.f_fstypename)
        {
          v38 = 0;
          v39 = v32;
          while (1)
          {
            v40 = v29[v38];
            v41 = v38 + 1;
            if (v40 <= 3)
            {
              if (v40 == 1)
              {
                v39 = *&v29[v41];
                goto LABEL_60;
              }

              if (v40 != 3)
              {
LABEL_61:
                v47 = v33;
                v48 = v34;
                v49 = v36;
                v50 = v37;
                v51 = v35;
                v52 = v39;
                v53 = v31;
                v54 = CDGetLogHandle();
                if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                {
                  *v141 = 67109120;
                  *&v141[4] = v40;
                  _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "Unknown attribute %u", v141, 8u);
                }

                v31 = v53;
                v39 = v52;
                v35 = v51;
                v37 = v50;
                v36 = v49;
                v34 = v48;
                v33 = v47;
                v29 = v118;
                goto LABEL_64;
              }

              v33 = *&v29[v41];
              v41 = v38 + 5;
            }

            else
            {
              if (v40 == 4)
              {
                v34 = *&v29[v41];
LABEL_60:
                v41 = v38 + 9;
                goto LABEL_64;
              }

              if (v40 == 5)
              {
                v35 = *&v29[v41];
                goto LABEL_60;
              }

              if (v40 != 255)
              {
                goto LABEL_61;
              }

              if (!v129 || v39 != v129)
              {
                v42 = ((v36 > 1) & v37) != 0 ? v125 : 0;
                v43 = v127 ? v125 : 0;
                v44 = v31 - v43;
                v92 = v36 == 1;
                v123 += v42;
                LODWORD(v37) = 1;
                v36 = 0;
                if (v92)
                {
                  v31 = v44;
                }
              }

              PurgeableInfoByDirKey = (v120 & v33) != 0;
              if ((v120 & v33) == 0 && v35)
              {
                PurgeableInfoByDirKey = getPurgeableInfoByDirKey(v35, v117);
              }

              v127 = (v33 & 0x10) == 0;
              if ((PurgeableInfoByDirKey & v127) != 0)
              {
                v46 = v34;
              }

              else
              {
                v46 = 0;
              }

              v31 += v46;
              v37 = PurgeableInfoByDirKey & v37;
              ++v36;
              v129 = v39;
              v125 = v34;
              v34 = 0;
              v33 = 0;
            }

LABEL_64:
            v38 = v41;
            if (v41 >= *buf.f_fstypename)
            {
              goto LABEL_67;
            }
          }
        }

        v39 = v32;
LABEL_67:
        v32 = v39;
        if (((v36 > 1) & v37) != 0)
        {
          v55 = v125;
        }

        else
        {
          v55 = 0;
        }

        v30 = v123 + v55;
        if (v36 == 1 && v127)
        {
          v56 = v125;
        }

        else
        {
          v56 = 0;
        }

        v31 -= v56;
        if (buf.f_mntonname[8] == 1)
        {
          v57 = v30;
          v121 = v31;
          free(v29);
          goto LABEL_93;
        }
      }

      v57 = v30;
      v121 = v31;
      v58 = *__error();
      v59 = CDGetLogHandle();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        v107 = strerror(v58);
        *v141 = 67109378;
        *&v141[4] = v58;
        *&v141[8] = 2080;
        *&v141[10] = v107;
        _os_log_error_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "APFSIOC_CLONEGROUP_ITERATE failed with error %d (%s)", v141, 0x12u);
      }

      v27 = v117;
    }

    else
    {
      v58 = *__error();
      v59 = CDGetLogHandle();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        v85 = strerror(v58);
        *v141 = 134218498;
        *&v141[4] = 0x40000;
        *&v141[12] = 1024;
        *&v141[14] = v58;
        *&v141[18] = 2080;
        *&v141[20] = v85;
        _os_log_error_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "Failed to malloc %llu bytes with error %d (%s)", v141, 0x1Cu);
      }

      v121 = 0;
      v57 = 0;
    }

    free(v29);
    if (!v58)
    {
LABEL_93:
      v6 = v116;
      goto LABEL_94;
    }

    v6 = v116;
    if (v58 != 45)
    {
      v66 = CDGetLogHandle();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        v109 = strerror(v58);
        buf.f_bsize = 67109378;
        buf.f_iosize = v58;
        LOWORD(buf.f_blocks) = 2080;
        *(&buf.f_blocks + 2) = v109;
        _os_log_error_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "Failed to get total purgeable clones from clone groups (error %d: %s)", &buf, 0x12u);
      }

      goto LABEL_102;
    }

    v60 = CDGetLogHandle();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      v108 = strerror(45);
      buf.f_bsize = 67109378;
      buf.f_iosize = 45;
      LOWORD(buf.f_blocks) = 2080;
      *(&buf.f_blocks + 2) = v108;
      _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "Clone groups are not supported (error %d: %s). Falling back to clone mapping.", &buf, 0x12u);
    }

    v142 = 0;
    bzero(&buf, 0x878uLL);
    v61 = statfs(v27, &buf);
    if (v61)
    {
      v62 = v61;
      v63 = *__error();
      v64 = CDGetLogHandle();
      if (!os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_89;
      }

      *v136 = 67109376;
      *v137 = v62;
      *&v137[4] = 1024;
      *&v137[6] = v63;
      v82 = "statfs returned %d. error: %d";
      v83 = v64;
      v84 = 14;
    }

    else
    {
      v79 = malloc_type_malloc(0x1D4C0uLL, 0x1000040504FFAC1uLL);
      if (v79)
      {
        v65 = v79;
        *v141 = 0x100000001;
        v143 = v79;
        *&v141[8] = 0;
        *&v141[16] = 0;
        *&v141[24] = xmmword_1000075D0;
        HIDWORD(v142) = 120000;
        v80 = fsctl(buf.f_mntonname, 0xC0384A74uLL, v141, 0);
        if (!v80)
        {
          v119 = v65;
          v86 = 0;
          v87 = 0;
          v88 = 0;
          v89 = 0;
          v90 = 1;
          while (1)
          {
            v91 = HIDWORD(v142);
            if (HIDWORD(v142))
            {
              v92 = 1;
            }

            else
            {
              v92 = v87 == 0;
            }

            if (!v92)
            {
              if (v90)
              {
                v110 = v89;
              }

              else
              {
                v110 = 0;
              }

              v57 = v86 + v110;
              goto LABEL_156;
            }

            if (HIDWORD(v142) < 0x18)
            {
              break;
            }

            if (HIDWORD(v142) == 24)
            {
              v93 = v87;
            }

            else
            {
              v94 = 0;
              v126 = HIDWORD(v142);
              v128 = v143;
              v124 = v143 + 48;
              v95 = 24;
              do
              {
                v96 = &v128[v94];
                if (v90)
                {
                  v97 = v89;
                }

                else
                {
                  v97 = 0;
                }

                v98 = v97 + v86;
                v93 = *v96;
                v89 = *(v96 + 1);
                if (*v96 == v87)
                {
                  v99 = v90;
                }

                else
                {
                  v99 = 1;
                }

                if (*v96 == v87)
                {
                  v98 = v86;
                }

                if (v87)
                {
                  v90 = v99;
                  v86 = v98;
                }

                v100 = *(v96 + 2);
                if (v100)
                {
                  v130 = *(v96 + 1);
                  v101 = v86;
                  v102 = &v124[v94];
                  v103 = *(v96 + 2);
                  do
                  {
                    v88 = *(v102 - 3);
                    v104 = *v102;
                    v105 = *(v102 - 1);
                    if (v105)
                    {
                      v104 |= getPurgeableInfoByDirKey(v105, v27);
                    }

                    v102 += 32;
                    v90 &= v104;
                    --v103;
                  }

                  while (v103);
                  v6 = v116;
                  v86 = v101;
                  v89 = v130;
                  v91 = v126;
                }

                v94 = (v95 + 32 * v100);
                v95 = v94 + 24;
                v87 = v93;
              }

              while (v94 + 24 < v91);
            }

            *&v141[8] = v93;
            *&v141[16] = v88;
            HIDWORD(v142) = 120000;
            v106 = fsctl(buf.f_mntonname, 0xC0384A74uLL, v141, 0);
            v87 = v93;
            if (v106)
            {
              v81 = v106;
              v57 = v86;
              v65 = v119;
              goto LABEL_113;
            }
          }

          if (HIDWORD(v142))
          {
            v57 = v86;
LABEL_156:
            v111 = v119;
            goto LABEL_157;
          }

          v112 = CDGetLogHandle();
          v111 = v119;
          if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
          {
            *v136 = 136315138;
            *v137 = v27;
            _os_log_debug_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEBUG, "processCloneMapOnVol buffSize 0 : No clones in volume %s", v136, 0xCu);
          }

          v57 = v86;

LABEL_157:
          free(v111);
          goto LABEL_94;
        }

        v81 = v80;
        v57 = 0;
LABEL_113:
        v63 = *__error();
        v64 = CDGetLogHandle();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          *v136 = 67109632;
          *v137 = v81;
          *&v137[4] = 1024;
          *&v137[6] = v63;
          v138 = 1024;
          v139 = HIDWORD(v142);
          _os_log_error_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "err %d, errno %d, buffer_size %u", v136, 0x14u);
        }

        goto LABEL_90;
      }

      v63 = *__error();
      v64 = CDGetLogHandle();
      if (!os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
LABEL_89:
        v65 = 0;
        v57 = 0;
LABEL_90:

        free(v65);
        if (v63)
        {
          v66 = CDGetLogHandle();
          if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_102;
          }

          v67 = strerror(v63);
          buf.f_bsize = 67109378;
          buf.f_iosize = v63;
          LOWORD(buf.f_blocks) = 2080;
          *(&buf.f_blocks + 2) = v67;
          v68 = "Failed to get total purgeable clones from clone mapping (error %d: %s).";
          v69 = v66;
          v70 = 18;
LABEL_118:
          _os_log_error_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, v68, &buf, v70);
LABEL_102:

          goto LABEL_103;
        }

LABEL_94:
        v71 = [NSNumber numberWithUnsignedLongLong:v57, v113];
        [v132 setObject:v71 forKeyedSubscript:@"CACHE_DELETE_PURGEABLE_CLONES"];

        v72 = [v131 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
        v73 = [v72 unsignedLongLongValue];

        v74 = CDGetLogHandle();
        v66 = v74;
        if (v73 >= v121)
        {
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
          {
            buf.f_bsize = 134217984;
            *&buf.f_iosize = v121;
            _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Total Purgeable Partial Clones Size: (%llu)", &buf, 0xCu);
          }

          v75 = [NSNumber numberWithUnsignedLongLong:&v73[-v121]];
          [v131 setObject:v75 forKeyedSubscript:@"CACHE_DELETE_AMOUNT"];

          goto LABEL_103;
        }

        if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_102;
        }

        buf.f_bsize = 134218240;
        *&buf.f_iosize = v73;
        WORD2(buf.f_blocks) = 2048;
        *(&buf.f_blocks + 6) = v121;
        v68 = "Total FS Purgeable (%llu) < Total Purgeable Partial Clones (%llu)";
        v69 = v66;
        v70 = 22;
        goto LABEL_118;
      }

      *v136 = 134217984;
      *v137 = 120000;
      v82 = "can't malloc %llu bytes";
      v83 = v64;
      v84 = 12;
    }

    _os_log_error_impl(&_mh_execute_header, v83, OS_LOG_TYPE_ERROR, v82, v136, v84);
    goto LABEL_89;
  }

  v12 = CDGetLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf.f_bsize) = 0;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "No volume specified, returning NULL dictionary", &buf, 2u);
  }

  v131 = 0;
LABEL_106:

  return v131;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  v4 = _MergedGlobals;
  _MergedGlobals = &off_10000CD90;

  if (qword_1000103B0 != -1)
  {
    dispatch_once(&qword_1000103B0, &__block_literal_global_100);
  }

  CacheDeleteRegisterInfoCallbacks();
  is_darwinos = os_variant_is_darwinos();
  xpc_activity_register("com.apple.deleted_helper.daily", XPC_ACTIVITY_CHECK_IN, &__block_literal_global_0);
  v6 = dispatch_get_global_queue(17, 0);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = __main_block_invoke_47;
  handler[3] = &__block_descriptor_33_e33_v16__0__NSObject_OS_xpc_object__8l;
  v13 = is_darwinos;
  xpc_set_event_stream_handler("com.apple.dispatch.vfs", v6, handler);

  if ((is_darwinos & 1) == 0)
  {
    CacheDeleteRegisterInfoCallbacks();
  }

  signal(15, 1);
  v7 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, 0);
  v8 = qword_100010398;
  qword_100010398 = v7;

  dispatch_source_set_event_handler(qword_100010398, &__block_literal_global_95);
  dispatch_resume(qword_100010398);
  signal(3, 1);
  v9 = dispatch_source_create(&_dispatch_source_type_signal, 3uLL, 0, 0);
  v10 = qword_100010390;
  qword_100010390 = v9;

  dispatch_source_set_event_handler(qword_100010390, &__block_literal_global_98);
  dispatch_resume(qword_100010390);
  objc_autoreleasePoolPop(v3);
  dispatch_main();
}

void __main_block_invoke(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = CDGetLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 67109120;
    v9 = 1196;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%d com.apple.deleted_helper.daily xpc activity handler ENTRY", &v8, 8u);
  }

  v4 = os_transaction_create();
  state = xpc_activity_get_state(v2);

  if (state == 2)
  {
    v6 = CDGetLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 67109120;
      v9 = 1201;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%d com.apple.deleted_helper.daily xpc activity handler calling purge_orphans(kCacheDeleteUrgencyLow)", &v8, 8u);
    }

    purge_orphans(1, 1);
  }

  v7 = CDGetLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 67109120;
    v9 = 1204;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%d com.apple.deleted_helper.daily xpc activity handler EXIT", &v8, 8u);
  }
}

void __main_block_invoke_47(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) == 1)
  {
    v4 = CDGetLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v13 = 1211;
      v14 = 2048;
      v15 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%d com.apple.dispatch.vfs xpc stream handler ENTRY, event: %p", buf, 0x12u);
    }

    xpc_dictionary_apply(v3, &__block_literal_global_51);
    activity_block[0] = _NSConcreteStackBlock;
    activity_block[1] = 3221225472;
    activity_block[2] = __main_block_invoke_53;
    activity_block[3] = &unk_10000C508;
    v9 = os_transaction_create();
    v5 = v3;
    v10 = v5;
    v11 = *(a1 + 32);
    v6 = v9;
    _os_activity_initiate(&_mh_execute_header, "com.apple.deleted_helper.handle_vfs_xpc", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

    v7 = CDGetLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v13 = 1257;
      v14 = 2048;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%d com.apple.dispatch.vfs xpc stream handler EXIT, event: %p", buf, 0x12u);
    }
  }
}

BOOL __main_block_invoke_48(id a1, const char *a2, OS_xpc_object *a3)
{
  v4 = a3;
  v5 = CDGetLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = a2;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "\tkey: %s, value: %@", &v7, 0x16u);
  }

  return 1;
}

void __main_block_invoke_53(uint64_t a1)
{
  v1 = lowSpaceVolumes();
  v2 = objc_opt_new();
  v26 = getRootVolume();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v1;
  v3 = [obj countByEnumeratingWithState:&v32 objects:v45 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v33;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v33 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v32 + 1) + 8 * i);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v8 = [obj objectForKeyedSubscript:v7];
        v9 = [v8 countByEnumeratingWithState:&v28 objects:v44 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v29;
          do
          {
            for (j = 0; j != v10; j = j + 1)
            {
              if (*v29 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = [*(*(&v28 + 1) + 8 * j) objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
              [v2 addObject:v13];
            }

            v10 = [v8 countByEnumeratingWithState:&v28 objects:v44 count:16];
          }

          while (v10);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v32 objects:v45 count:16];
    }

    while (v4);
  }

  v14 = [v2 containsObject:v26];
  v15 = CDGetLogHandle();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (!v14)
  {
    if (v16)
    {
      v24 = *(a1 + 40);
      *buf = 134218242;
      *v41 = v24;
      *&v41[8] = 2112;
      *&v41[10] = v2;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Skipping low disk event %p for %@", buf, 0x16u);
    }

    goto LABEL_27;
  }

  if (v16)
  {
    v17 = *(a1 + 40);
    if (*(a1 + 48))
    {
      v18 = "YES";
    }

    else
    {
      v18 = "NO";
    }

    *buf = 67109890;
    *v41 = 1238;
    *&v41[4] = 2048;
    *&v41[6] = v17;
    *&v41[14] = 2080;
    *&v41[16] = v18;
    v42 = 1024;
    v43 = 4;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%d com.apple.dispatch.vfs xpc stream handler calling purge_orphans event: %p, darwin: %s, urgency: %d", buf, 0x22u);
  }

  purge_orphans(4, 1);
  if (*(a1 + 48) == 1)
  {
    v38 = @"CACHE_DELETE_VOLUME";
    v39 = v26;
    v15 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v19 = fsPurgeable(v15, 4);
    v20 = [v19 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
    v21 = v20;
    if (v20)
    {
      v36[0] = @"CACHE_DELETE_VOLUME";
      v36[1] = @"CACHE_DELETE_AMOUNT";
      v37[0] = v26;
      v37[1] = v20;
      v22 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:2];
      v23 = fsPurge(v22, 4);
    }

LABEL_27:
  }
}

id fsPurge(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = CDGetLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v93 = a2;
    *&v93[4] = 2112;
    *&v93[6] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "fsPurge: urgency %d, info: %@", buf, 0x12u);
  }

  v90 = 0u;
  v91 = 0u;
  v4 = [v2 mutableCopy];
  v5 = [v4 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v6 = evaluateStringProperty();
  v7 = mapVolume();

  v85 = [CacheDeleteVolume volumeWithPath:v7];
  v8 = [v4 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
  v9 = evaluateNumberProperty();

  v10 = [v2 objectForKeyedSubscript:@"CACHE_DELETE_SERVICES"];
  v11 = [v2 objectForKeyedSubscript:@"CACHE_DELETE_FREESPACE_GOAL"];
  v12 = evaluateNumberProperty();

  if (v12)
  {
    if (!v7)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v12 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v85 freespace] + objc_msgSend(v9, "unsignedLongLongValue"));
    if (!v7)
    {
LABEL_46:
      v41 = CDGetLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v93 = v2;
        _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Parameter error, incomplete info dict: %@", buf, 0xCu);
      }

      v42 = 0;
      v43 = 0;
      v44 = &off_10000CC98;
      goto LABEL_82;
    }
  }

  if (!v9)
  {
    goto LABEL_46;
  }

  v90 = 0u;
  v91 = 0u;
  v13 = os_transaction_create();
  v82 = v2;
  v70 = v10;
  v71 = v12;
  if ([v10 count])
  {
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v14 = v10;
    v74 = [v14 countByEnumeratingWithState:&v86 objects:v96 count:16];
    if (!v74)
    {

      v44 = &off_10000CC98;
LABEL_75:
      v57 = v90;
      v58 = [v7 UTF8String];
      v59 = __error();
      v42 = [NSString stringWithFormat:@"APFSIOC_PURGE_FILES failed: %@ at urgency %d (0x%x) on %s : %s", v44, a2, v57, v58, strerror(*v59)];
      v60 = CDGetLogHandle();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *v93 = v42;
        _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      [v4 setObject:v42 forKeyedSubscript:@"CACHE_DELETE_ERROR"];
      [v4 setObject:&off_10000CC98 forKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
      goto LABEL_79;
    }

    v69 = v13;
    v79 = &off_10000CC98;
    v73 = *v87;
    obj = v14;
    v15 = -1;
    while (2)
    {
      for (i = 0; i != v74; i = i + 1)
      {
        if (*v87 != v73)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v86 + 1) + 8 * i);
        LODWORD(v90) = dword_100007628[a2 + 4] | 0x11;
        v18 = fsPurgeableTypeForService();
        if (v18)
        {
          v19 = CDGetLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = [v18 unsignedIntValue];
            *buf = 138412802;
            *v93 = v17;
            *&v93[8] = 1024;
            *&v93[10] = v20;
            *&v93[14] = 2112;
            *&v93[16] = v9;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "fsPurge: adding service %@ (%u), amount: %@", buf, 0x1Cu);
          }

          v78 = v9;

          LODWORD(v90) = v90 | 2;
          DWORD1(v90) = [v18 unsignedIntValue];
          v21 = [v85 freespace];
          v22 = amountStillNeeded(v2, v85, a2, v18, 0);
          if (v22)
          {
            v23 = v22;
            v76 = v21;
            v24 = 1;
            do
            {
              *(&v91 + 1) = v23;
              v25 = CDGetLogHandle();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v93 = 811;
                *&v93[4] = 2048;
                *&v93[6] = *(&v91 + 1);
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%d fsPurge: purging: %llu", buf, 0x12u);
              }

              v15 = fsctl([v7 UTF8String], 0xC0204A45uLL, &v90, 0);
              v23 = amountStillNeeded(v2, v85, a2, v18, v24);
              v26 = CDGetLogHandle();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109888;
                *v93 = 814;
                *&v93[4] = 2048;
                *&v93[6] = *(&v91 + 1);
                *&v93[14] = 2048;
                *&v93[16] = v23;
                *&v93[24] = 1024;
                *&v93[26] = v24;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%d fsPurge: purged: %llu, still need: %llu tries: %d", buf, 0x22u);
              }

              ++v24;
            }

            while (v23 && *(&v91 + 1) && !v15);
            v80 = v24 == 2;
            v21 = v76;
            if (v15)
            {
LABEL_69:
              v9 = v78;
LABEL_71:

              goto LABEL_72;
            }
          }

          else
          {
            v80 = 1;
            if (v15)
            {
              goto LABEL_69;
            }
          }

          v77 = i;
          v27 = [v85 freespace];
          v28 = v27;
          if (v27 != -1 && v27 > v21)
          {
            v30 = v27 - v21;
          }

          else
          {
            v30 = 0;
          }

          v31 = [v79 unsignedLongLongValue];
          v32 = *(&v91 + 1);
          v75 = v30;
          if (!v80)
          {
            v32 = v30;
          }

          [NSNumber numberWithUnsignedLongLong:&v31[v32]];
          v34 = v33 = v21;

          v35 = CDGetLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = [v34 unsignedLongLongValue];
            *buf = 134218496;
            *v93 = v36;
            *&v93[8] = 2048;
            *&v93[10] = v28;
            *&v93[18] = 2048;
            *&v93[20] = v33;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "fsPurge: amountPurged %llu postPurgeFreespace %llu prePurgeFreespace %llu", buf, 0x20u);
          }

          v9 = v78;
          v37 = [v78 unsignedLongLongValue];
          i = v77;
          if (v37 <= [v34 unsignedLongLongValue])
          {
            v79 = v34;
            v2 = v82;
            goto LABEL_71;
          }

          v38 = [v78 unsignedLongLongValue];
          v39 = *(&v91 + 1);
          if (!v80)
          {
            v39 = v75;
          }

          v40 = [NSNumber numberWithUnsignedLongLong:&v38[-v39]];

          v15 = 0;
          v79 = v34;
          v9 = v40;
          v2 = v82;
        }
      }

      v74 = [obj countByEnumeratingWithState:&v86 objects:v96 count:16];
      if (v74)
      {
        continue;
      }

      break;
    }

LABEL_72:
    v12 = v71;
    v55 = obj;
  }

  else
  {
    v69 = v13;
    v81 = [v85 freespace];
    v45 = amountStillNeeded(v2, v85, a2, 0, 0);
    LODWORD(v90) = dword_100007628[a2 + 4] | 0x11;
    v46 = 1;
    do
    {
      *(&v91 + 1) = v45;
      v47 = CDGetLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *v93 = 850;
        *&v93[4] = 2048;
        *&v93[6] = *(&v91 + 1);
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%d fsPurge: purging: %llu", buf, 0x12u);
      }

      v15 = fsctl([v7 UTF8String], 0xC0204A45uLL, &v90, 0);
      v45 = amountStillNeeded(v2, v85, a2, 0, v46);
      v48 = CDGetLogHandle();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109888;
        *v93 = 853;
        *&v93[4] = 2048;
        *&v93[6] = *(&v91 + 1);
        *&v93[14] = 2048;
        *&v93[16] = v45;
        *&v93[24] = 1024;
        *&v93[26] = v46;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%d fsPurge: purged: %llu, still need: %llu tries: %d", buf, 0x22u);
      }

      ++v46;
    }

    while (v45 && *(&v91 + 1) && !v15);
    v49 = [v85 freespace];
    v50 = v49;
    v51 = v49 - v81;
    if (v49 == -1 || v49 <= v81)
    {
      v51 = 0;
    }

    if (v46 == 2)
    {
      v53 = *(&v91 + 1);
    }

    else
    {
      v53 = v51;
    }

    v54 = [NSNumber numberWithUnsignedLongLong:v53];
    v55 = CDGetLogHandle();
    v79 = v54;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      v56 = [v54 unsignedLongLongValue];
      *buf = 134218496;
      *v93 = v56;
      *&v93[8] = 2048;
      *&v93[10] = v50;
      *&v93[18] = 2048;
      *&v93[20] = v81;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "fsPurge: amountPurged %llu postPurgeFreespace %llu prePurgeFreespace %llu", buf, 0x20u);
    }

    v12 = v71;
  }

  if (v15)
  {
    v13 = v69;
    v44 = v79;
    goto LABEL_75;
  }

  v44 = v79;
  [v4 setObject:v79 forKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
  v42 = 0;
  v13 = v69;
LABEL_79:

  v61 = CDGetLogHandle();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    v62 = [v44 unsignedLongLongValue];
    v83 = v90;
    v63 = v44;
    v64 = [v7 UTF8String];
    [v4 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
    v66 = v65 = v9;
    v67 = evaluateStringProperty();
    *buf = 134219010;
    *v93 = v62;
    *&v93[8] = 1024;
    *&v93[10] = a2;
    *&v93[14] = 1024;
    *&v93[16] = v83;
    *&v93[20] = 2082;
    *&v93[22] = v64;
    v44 = v63;
    v94 = 2114;
    v95 = v67;
    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "fsPurge: %llu at urgency %d (flags: 0x%x) on %{public}s (%{public}@)", buf, 0x2Cu);

    v9 = v65;
    v12 = v71;

    v2 = v82;
  }

  v43 = v4;
  v10 = v70;
LABEL_82:

  return v43;
}

void *releaseReservedSpaceFromUpdateVolume(char *a1)
{
  v2 = CDGetLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134217984;
    v16 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, " releaseReservedSpaceFromUpdateVolume %lld", &v15, 0xCu);
  }

  DevBSDForUpdateVolume = getDevBSDForUpdateVolume();
  if (!DevBSDForUpdateVolume)
  {
    return 0;
  }

  v4 = DevBSDForUpdateVolume;
  ReservedSizeFromUpdateVolume = getReservedSizeFromUpdateVolume();
  if ((a1 - 1) >= ReservedSizeFromUpdateVolume)
  {
    v6 = ReservedSizeFromUpdateVolume;
  }

  else
  {
    v6 = a1;
  }

  if (ReservedSizeFromUpdateVolume)
  {
    v7 = ReservedSizeFromUpdateVolume;
    if (ReservedSizeFromUpdateVolume >= v6)
    {
      v8 = ReservedSizeFromUpdateVolume - v6;
    }

    else
    {
      v8 = 0;
    }

    updated = APFSVolumeUpdateBounds();
    if (updated)
    {
      v10 = updated;
      v11 = CDGetLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v15 = 136315394;
        v16 = v4;
        v17 = 1024;
        v18 = v10;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "failed to reduce the update volume size%s: %d\n", &v15, 0x12u);
      }

      v12 = 0;
    }

    else
    {
      if (v7 <= v6)
      {
        v13 = 0;
      }

      else
      {
        v13 = v8;
      }

      v12 = (v7 - v13);
      v11 = CDGetLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 134217984;
        v16 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " Released %lld from update volume", &v15, 0xCu);
      }
    }
  }

  else
  {
    v12 = 0;
  }

  free(v4);
  return v12;
}

__CFDictionary *__cdecl __main_block_invoke_90(id a1, int a2, __CFDictionary *a3)
{
  v3 = CDGetLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PERIODIC ENTRY", buf, 2u);
  }

  purge_orphans(3, 1);
  v4 = CDGetLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "customerReleaseBuild IS NOT SEED BUILD", buf, 2u);
  }

  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v6 = CDGetLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (has_internal_diagnostics)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "customerReleaseBuild IS INTERNAL BUILD", buf, 2u);
    }
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "customerReleaseBuild IS NOT INTERNAL BUILD", buf, 2u);
    }

    v8 = CDGetLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "unable to get address of MGGetBoolAnswer", buf, 2u);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [&off_10000CDE0 countByEnumeratingWithState:&v16 objects:buf count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(&off_10000CDE0);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          v14 = CDGetLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *v20 = 138412290;
            v21 = v13;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Customer build, clearing %@", v20, 0xCu);
          }

          traverse_directory();
        }

        v10 = [&off_10000CDE0 countByEnumeratingWithState:&v16 objects:buf count:16];
      }

      while (v10);
    }
  }

  return 0;
}

void __main_block_invoke_93(id a1)
{
  v1 = CDGetLogHandle();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "RECEIVED SIGTERM", v2, 2u);
  }

  exit(0);
}

void __main_block_invoke_2_96(id a1)
{
  v1 = CDGetLogHandle();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "RECEIVED SIGQUIT", v2, 2u);
  }

  exit(0);
}

void sub_100005D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __RegisterCacheDeleteOrphanDirHandlerService_block_invoke_3(uint64_t a1)
{
  if ((atomic_exchange(&RegisterCacheDeleteOrphanDirHandlerService_orphan_dir_iteration_flag, 1u) & 1) == 0)
  {
    v1 = *(a1 + 40);
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = __RegisterCacheDeleteOrphanDirHandlerService_block_invoke_4;
    v2[3] = &unk_10000C690;
    v2[4] = *(a1 + 32);
    v3 = v1;
    iterate_orphans(v1, 1, v2);
    atomic_store(0, &RegisterCacheDeleteOrphanDirHandlerService_orphan_dir_iteration_flag);
  }
}

void __RegisterCacheDeleteOrphanDirHandlerService_block_invoke_4(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) += size_dir();
  v4 = CDGetLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = *(*(*(a1 + 32) + 8) + 24);
    v7[0] = 67109890;
    v7[1] = 1108;
    v8 = 1024;
    v9 = v5;
    v10 = 2080;
    v11 = a2;
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%d purgeable orphans urgency: %d, path: %s size: %lld ", v7, 0x22u);
  }
}

id getPurgeableInfoByDirKey(uint64_t a1, const char *a2)
{
  v4 = [NSNumber numberWithUnsignedLongLong:a1];
  if (qword_1000103C0 != -1)
  {
    dispatch_once(&qword_1000103C0, &__block_literal_global_123);
  }

  v5 = qword_1000103B8;
  v6 = [NSNumber numberWithUnsignedLongLong:a1];
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    v8 = [v7 BOOLValue];

    goto LABEL_25;
  }

  v9 = 1024;
  v10 = a1;
  while (1)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 1;
    v26 = 33;
    *&v28 = v10;
    if (fsctl(a2, 0xC1104A71uLL, &v25, 0))
    {
      v12 = CDGetLogHandle();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
LABEL_16:

        goto LABEL_24;
      }

      v13 = *__error();
      v21 = 134218240;
      v22 = v10;
      v23 = 1024;
      LODWORD(v24) = v13;
      v14 = "APFSIOC_DIR_STATS_OP for %llu returned errno %u";
      v15 = v12;
      v16 = 18;
LABEL_27:
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v14, &v21, v16);
      goto LABEL_16;
    }

    v11 = v26;
    if ((v26 & 0x10) != 0)
    {
      v12 = CDGetLogHandle();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      v21 = 134217984;
      v22 = v10;
      v14 = "dir_stats entry is inconsistent for dirKeyItr:%lld";
      v15 = v12;
      v16 = 12;
      goto LABEL_27;
    }

    if ((v26 & 8) != 0)
    {
      goto LABEL_22;
    }

    if (!*(&v28 + 1))
    {
      v17 = CDGetLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v21 = 134217984;
        v22 = a1;
        _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Finished checking dirstat key %llu", &v21, 0xCu);
      }

      goto LABEL_21;
    }

    if (*(&v28 + 1) == v10)
    {
      break;
    }

    v10 = *(&v28 + 1);
    if (!--v9)
    {
      goto LABEL_24;
    }
  }

  v17 = CDGetLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v21 = 134218240;
    v22 = v10;
    v23 = 2048;
    v24 = *(&v28 + 1);
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "chained_key is pointing to itself dirKeyItr:%lld chained_key:%lld", &v21, 0x16u);
  }

LABEL_21:

LABEL_22:
  v18 = [NSNumber numberWithBool:(v11 >> 3) & 1];
  if (v18)
  {
    v19 = v18;
    [qword_1000103B8 setObject:v18 forKey:v4];
    v8 = [v19 BOOLValue];

    goto LABEL_25;
  }

LABEL_24:
  v8 = 0;
LABEL_25:

  return v8;
}

void __getPurgeableInfoByDirKey_block_invoke(id a1)
{
  qword_1000103B8 = [NSMutableDictionary dictionaryWithCapacity:100];

  _objc_release_x1();
}

int64_t amountStillNeeded(void *a1, void *a2, int a3, void *a4, int a5)
{
  v9 = a2;
  v10 = a4;
  v11 = [a1 objectForKeyedSubscript:@"CACHE_DELETE_FREESPACE_GOAL"];
  v12 = evaluateNumberProperty();

  if (v10)
  {
    v13 = serviceForFSPurgeableType();
  }

  else
  {
    v13 = @"CACHE_DELETE_TOTAL_FSPURGEABLE";
  }

  v14 = CDGetLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v9 mountPoint];
    v31 = 67110402;
    v32 = 628;
    v33 = 2048;
    v34 = 0;
    v35 = 1024;
    *v36 = a3;
    *&v36[4] = 1024;
    *&v36[6] = a5;
    *&v36[10] = 2112;
    *&v36[12] = v15;
    *&v36[20] = 2048;
    *&v36[22] = [v9 freespace];
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%d ENTRY amountStillNeeded: %llu, urgency: %d, tries: %d, %@ freespace: %llu ", &v31, 0x32u);
  }

  if (v12 && (v16 = [v12 unsignedLongLongValue], v17 = objc_msgSend(v9, "freespace"), a5 <= 4) && v16 > v17)
  {
    v18 = [v12 unsignedLongLongValue];
    v19 = v18 - [v9 freespace];
    v20 = CDGetLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v9 mountPoint];
      v22 = [v9 freespace];
      v31 = 67110658;
      v32 = 636;
      v33 = 2048;
      v34 = v19;
      v35 = 1024;
      *v36 = a3;
      *&v36[4] = 2112;
      *&v36[6] = v13;
      *&v36[14] = 1024;
      *&v36[16] = a5;
      *&v36[20] = 2112;
      *&v36[22] = v21;
      v37 = 2048;
      v38 = v22;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%d amountStillNeeded: %llu, urgency: %d, type: %@, tries: %d, %@ freespace: %llu", &v31, 0x3Cu);
    }
  }

  else
  {
    v20 = CDGetLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v12 unsignedLongLongValue];
      v31 = 67109632;
      v32 = 639;
      v33 = 2048;
      v34 = v23;
      v35 = 1024;
      *v36 = a5;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%d amountStillNeeded  freespaceGoal: %llu, tries: %d", &v31, 0x18u);
    }

    v19 = 0;
  }

  v24 = [v12 unsignedLongLongValue];
  if (v24 <= [v9 freespace])
  {
    v26 = 0;
  }

  else
  {
    v25 = [v12 unsignedLongLongValue];
    v26 = v25 - [v9 freespace];
  }

  v27 = CDGetLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [v9 mountPoint];
    v29 = [v9 freespace];
    v31 = 67110914;
    v32 = 645;
    v33 = 2048;
    v34 = v26;
    v35 = 2048;
    *v36 = v19;
    *&v36[8] = 1024;
    *&v36[10] = a3;
    *&v36[14] = 2112;
    *&v36[16] = v13;
    *&v36[24] = 1024;
    *&v36[26] = a5;
    v37 = 2112;
    v38 = v28;
    v39 = 2048;
    v40 = v29;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%d EXIT amountStillNeeded: %llu (returning: %llu), urgency: %d, type: %@, tries: %d, %@ freespace: %llu", &v31, 0x46u);
  }

  return v19;
}

BOOL __periodic_block_invoke(id a1, const char *a2, $C30814B07BD4D332EC35315132A26F28 *a3)
{
  if (a3->var0)
  {
    a3->var1 = 1;
  }

  else
  {
    unlinkat(-2, a2, 4096);
  }

  return 1;
}