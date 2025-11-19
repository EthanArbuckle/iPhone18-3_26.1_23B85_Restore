@interface CacheDeleteEnumerateRemovedFiles
@end

@implementation CacheDeleteEnumerateRemovedFiles

double ___CacheDeleteEnumerateRemovedFiles_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.CacheDeleteEnumerateRemovedFiles", v0);
  v2 = _MergedGlobals_6;
  _MergedGlobals_6 = v1;

  info = 0;
  if (mach_timebase_info(&info))
  {
    v5 = CDGetLogHandle("client");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_1BA7F1000, v5, OS_LOG_TYPE_ERROR, "Failed to get timebase info\n", v7, 2u);
    }
  }

  else
  {
    LODWORD(v3) = info.numer;
    LODWORD(v4) = info.denom;
    result = v3 / v4;
    gTimebaseConversion = *&result;
  }

  return result;
}

void ___CacheDeleteEnumerateRemovedFiles_block_invoke_85(uint64_t a1)
{
  v128 = *MEMORY[0x1E69E9840];
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  q = dispatch_queue_create("com.apple.CacheDeleteFSEvents", v2);

  v3 = objc_opt_new();
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v97 = a1;
  sinceWhen = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v4 countByEnumeratingWithState:&v106 objects:v127 count:16];
  if (v5)
  {
    v6 = *v107;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v107 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v106 + 1) + 8 * i);
        bzero(v119, 0x400uLL);
        v9 = v8;
        if (!realpath_DARWIN_EXTSN([v8 UTF8String], v119))
        {
          v10 = CDGetLogHandle("client");
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v17 = v8;
            v18 = [v8 UTF8String];
            *buf = 136446210;
            v111 = v18;
            _os_log_error_impl(&dword_1BA7F1000, v10, OS_LOG_TYPE_ERROR, "_CacheDeleteEnumerateRemovedFiles: Unable to realpath %{public}s", buf, 0xCu);
          }
        }

        v11 = normalizePath(v8, 1);
        v12 = v11;
        if (v11)
        {
          v13 = mapVolume(v11, 0);

          v14 = [v3 objectForKeyedSubscript:v13];
          if (!v14)
          {
            v14 = objc_opt_new();
            [v3 setObject:v14 forKeyedSubscript:v13];
          }

          v15 = mapVolume(v8, 0);
          [v14 addObject:v15];

          v16 = CDGetLogHandle("client");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v111 = v8;
            v112 = 2114;
            v113 = v13;
            _os_log_impl(&dword_1BA7F1000, v16, OS_LOG_TYPE_DEFAULT, "_CacheDeleteEnumerateRemovedFiles: validated %{public}@ on %{public}@", buf, 0x16u);
          }
        }

        else
        {
          v13 = CDGetLogHandle("client");
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v111 = v8;
            _os_log_error_impl(&dword_1BA7F1000, v13, OS_LOG_TYPE_ERROR, "_CacheDeleteEnumerateRemovedFiles: unable to associate directory: %{public}@ with a volume", buf, 0xCu);
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v106 objects:v127 count:16];
    }

    while (v5);
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  obj = v3;
  v93 = [obj countByEnumeratingWithState:&v102 objects:v118 count:16];
  if (v93)
  {
    v92 = *v103;
    do
    {
      for (j = 0; j != v93; ++j)
      {
        if (*v103 != v92)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v102 + 1) + 8 * j);
        v21 = [obj objectForKeyedSubscript:v20];
        v22 = [[CDRemoveEventsConsumer alloc] initWithConsumer:*(v97 + 32) identifier:*(v97 + 56)];
        *v119 = 0;
        v120 = v119;
        v121 = 0x4810000000;
        v123 = 0;
        v125 = 0u;
        v126 = 0;
        v122 = &unk_1BA8338FA;
        v124 = v22;
        v23 = sinceWhen;
        if (sinceWhen)
        {
LABEL_26:
          sinceWhen = v23;
          if (v23 == -1)
          {
            v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_CacheDeleteEnumerateRemovedFiles: Invalid _since parameter: %llu (0x%032llx)", -1, -1];
            CDSimulateCrash(195890385, v24);

            sinceWhen = FSEventsGetCurrentEventId();
            v25 = CDGetLogHandle("client");
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v111 = -1;
              v112 = 2048;
              v113 = sinceWhen;
              _os_log_error_impl(&dword_1BA7F1000, v25, OS_LOG_TYPE_ERROR, "_CacheDeleteEnumerateRemovedFiles: reset _since from %llu to current event id: %llu", buf, 0x16u);
            }
          }

          v26 = v120;
          v27 = [v21 allObjects];
          v28 = FSEventStreamCreate(0, fsEventStreamCallback, (v26 + 32), v27, sinceWhen, 0.0, 0x53u);

          if (v28)
          {
            if (q)
            {
              v29 = CDGetLogHandle("client");
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1BA7F1000, v29, OS_LOG_TYPE_DEFAULT, "_CacheDeleteEnumerateRemovedFiles: dispatching queue..", buf, 2u);
              }
            }

            FSEventStreamSetDispatchQueue(v28, q);
            [(CDRemoveEventsConsumer *)v22 setSince:sinceWhen];
            v30 = CDGetLogHandle("client");
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v31 = [v21 allObjects];
              *buf = 138413058;
              v111 = v22;
              v112 = 2048;
              v113 = q;
              v114 = 2048;
              v115 = sinceWhen;
              v116 = 2112;
              v117 = v31;
              _os_log_impl(&dword_1BA7F1000, v30, OS_LOG_TYPE_DEFAULT, "_CacheDeleteEnumerateRemovedFiles: CDConsumer %@ consuming stream (queue: %p) from ID: %llu for dirs: %@", buf, 0x2Au);
            }

            [(CDRemoveEventsConsumer *)v22 consumeStream:v28 forVolume:v20];
          }

          else
          {
            v47 = CDGetLogHandle("client");
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              v54 = __error();
              v55 = strerror(*v54);
              *buf = 138543618;
              v111 = v20;
              v112 = 2080;
              v113 = v55;
              _os_log_error_impl(&dword_1BA7F1000, v47, OS_LOG_TYPE_ERROR, "_CacheDeleteEnumerateRemovedFiles: Unable to create FSEventsStream for volume %{public}@: %s", buf, 0x16u);
            }
          }

          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = ___CacheDeleteEnumerateRemovedFiles_block_invoke_98;
          block[3] = &unk_1E7F02E58;
          block[4] = v119;
          block[5] = v22;
          dispatch_sync(q, block);
          p_super = CDGetLogHandle("client");
          if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v111 = v20;
            _os_log_impl(&dword_1BA7F1000, p_super, OS_LOG_TYPE_DEFAULT, "_CacheDeleteEnumerateRemovedFiles: Finished streaming events for %@", buf, 0xCu);
          }

          v49 = 0;
          goto LABEL_103;
        }

        v90 = *(v97 + 56);
        sinceWhena = v20;
        v32 = [CacheDeleteVolume volumeWithPath:?];
        if (v32)
        {
          v33 = domain(v90);
          v34 = objc_alloc_init(MEMORY[0x1E695E000]);
          log = v34;
          if (v34)
          {
            oslog = [v34 objectForKey:v33];
            if (oslog)
            {
              v35 = [v32 uuid];
              v36 = [v35 UUIDString];
              v85 = [oslog objectForKeyedSubscript:v36];

              if (v85)
              {
                v37 = [v85 objectAtIndexedSubscript:0];
                v38 = [v32 FSEventsUUID];
                v39 = [v38 UUIDString];
                v40 = [v37 isEqualToString:v39];

                if (v40)
                {
                  v41 = [v85 objectAtIndexedSubscript:0];
                  if (v41)
                  {
                    v42 = [v85 objectAtIndexedSubscript:1];
                    v94 = malloc_type_calloc(0x28uLL, 1uLL, 0xDE23AF01uLL);
                    v94[4] = [v42 unsignedLongLongValue];
                    v43 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v41];
                    [v43 getUUIDBytes:v94 + 2];

                    v44 = [v32 uuid];
                    [v44 getUUIDBytes:v94];

                    v45 = CDGetLogHandle("client");
                    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                    {
                      v46 = CDPurgeMarkerDescription(v94);
                      *buf = 138543618;
                      v111 = v33;
                      v112 = 2114;
                      v113 = v46;
                      _os_log_impl(&dword_1BA7F1000, v45, OS_LOG_TYPE_DEFAULT, "copyPurgeMarker(%{public}@): returning %{public}@", buf, 0x16u);
                    }

                    goto LABEL_71;
                  }

                  v53 = CDGetLogHandle("client");
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    v111 = v85;
                    _os_log_error_impl(&dword_1BA7F1000, v53, OS_LOG_TYPE_ERROR, "copyPurgeMarker: Unable to get FSEventsUUISStr from: %{public}@", buf, 0xCu);
                  }
                }

                else
                {
                  v53 = CDGetLogHandle("client");
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                  {
                    v95 = [v32 FSEventsUUID];
                    v80 = [v95 UUIDString];
                    v81 = [v85 objectAtIndexedSubscript:0];
                    v82 = [v32 mountPoint];
                    *buf = 138543874;
                    v111 = v80;
                    v112 = 2114;
                    v113 = v81;
                    v114 = 2114;
                    v115 = v82;
                    _os_log_error_impl(&dword_1BA7F1000, v53, OS_LOG_TYPE_ERROR, "copyPurgeMarker: Current FSEventsUUID (%{public}@) does not match saved UUID (%{public}@) for volume %{public}@", buf, 0x20u);
                  }
                }
              }

              else
              {
                v52 = CDGetLogHandle("client");
                if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                {
                  v77 = [v32 mountPoint];
                  v78 = [v32 uuid];
                  v79 = [v78 UUIDString];
                  *buf = 138543618;
                  v111 = v77;
                  v112 = 2114;
                  v113 = v79;
                  _os_log_error_impl(&dword_1BA7F1000, v52, OS_LOG_TYPE_ERROR, "copyPurgeMarker: Unable to get volume defaults for %{public}@ : %{public}@", buf, 0x16u);
                }
              }

LABEL_70:
              v94 = 0;
LABEL_71:

              goto LABEL_72;
            }

            oslog = CDGetLogHandle("client");
            if (!os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_70;
            }

            *buf = 138543362;
            v111 = v33;
            v50 = oslog;
            v51 = "copyPurgeMarker: Unable to get cacheDeleteAppDefaults for key: %{public}@";
          }

          else
          {
            oslog = CDGetLogHandle("client");
            if (!os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_70;
            }

            *buf = 138543362;
            v111 = v33;
            v50 = oslog;
            v51 = "copyPurgeMarker(%{public}@): Unable to create NSUserDefaults";
          }

          _os_log_error_impl(&dword_1BA7F1000, v50, OS_LOG_TYPE_ERROR, v51, buf, 0xCu);
          goto LABEL_70;
        }

        v33 = CDGetLogHandle("client");
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v111 = sinceWhena;
          _os_log_error_impl(&dword_1BA7F1000, v33, OS_LOG_TYPE_ERROR, "copyPurgeMarker: Unable to make CacheDeleteVolume from %{public}@", buf, 0xCu);
        }

        v94 = 0;
LABEL_72:

        if (v94)
        {
          v56 = sinceWhena;
          v57 = [CacheDeleteVolume volumeWithPath:v56];
          v58 = v57;
          if (!v57)
          {
            v58 = CDGetLogHandle("client");
            if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v111 = v56;
              _os_log_error_impl(&dword_1BA7F1000, v58, OS_LOG_TYPE_ERROR, "verifyDirAndMarkerUUIDs: Unable to validate dir: %{public}@", buf, 0xCu);
            }

            goto LABEL_97;
          }

          v59 = [v57 uuid];
          if (!v59)
          {
            v67 = CDGetLogHandle("client");
            if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              v75 = [v58 mountPoint];
              *buf = 138543362;
              v111 = v75;
              _os_log_error_impl(&dword_1BA7F1000, v67, OS_LOG_TYPE_ERROR, "verifyDirAndMarkerUUIDs: Unable to get volume UUID from %{public}@", buf, 0xCu);
            }

            goto LABEL_97;
          }

          v91 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v94];
          v60 = [v91 UUIDString];
          v61 = [v59 UUIDString];
          v62 = [v60 isEqualToString:v61];

          if ((v62 & 1) == 0)
          {
            v68 = CDGetLogHandle("client");
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              v76 = [v58 mountPoint];
              *buf = 138543362;
              v111 = v76;
              _os_log_error_impl(&dword_1BA7F1000, v68, OS_LOG_TYPE_ERROR, "verifyDirAndMarkerUUIDs: Marker volume UUID does not match cdVolume: %{public}@", buf, 0xCu);
            }

            goto LABEL_97;
          }

          osloga = [v58 FSEventsUUID];
          if (!osloga)
          {
            loga = CDGetLogHandle("client");
            if (os_log_type_enabled(loga, OS_LOG_TYPE_ERROR))
            {
              v69 = [v58 mountPoint];
              *buf = 138543362;
              v111 = v69;
              _os_log_error_impl(&dword_1BA7F1000, loga, OS_LOG_TYPE_ERROR, "verifyDirAndMarkerUUIDs: Unable to get FSEventsUUID string from %{public}@", buf, 0xCu);
            }

            goto LABEL_96;
          }

          v63 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v94 + 2];
          loga = v63;
          if (!v63)
          {
            v70 = CDGetLogHandle("client");
            if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
            {
              v71 = CDPurgeMarkerDescription(v94);
              *buf = 138543362;
              v111 = v71;
              _os_log_error_impl(&dword_1BA7F1000, v70, OS_LOG_TYPE_ERROR, "verifyDirAndMarkerUUIDs: Unable to get UUID from %{public}@", buf, 0xCu);
            }

LABEL_95:

LABEL_96:
LABEL_97:

            v72 = CDGetLogHandle("client");
            if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
            {
              v74 = CDPurgeMarkerDescription(v94);
              *buf = 138543618;
              v111 = v56;
              v112 = 2114;
              v113 = v74;
              _os_log_error_impl(&dword_1BA7F1000, v72, OS_LOG_TYPE_ERROR, "_CacheDeleteEnumerateRemovedFiles: Unable to verify directory and marker, starting from zero. Directory: %{public}@, marker: %{public}@", buf, 0x16u);
            }

            free(v94);
            goto LABEL_100;
          }

          v64 = [v63 UUIDString];
          v65 = [osloga UUIDString];
          v66 = [v64 isEqualToString:v65];

          if ((v66 & 1) == 0)
          {
            v70 = CDGetLogHandle("client");
            if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
            {
              v83 = [v58 mountPoint];
              *buf = 138543362;
              v111 = v83;
              _os_log_error_impl(&dword_1BA7F1000, v70, OS_LOG_TYPE_ERROR, "verifyDirAndMarkerUUIDs: Marker FSEventsUUID does not match cdVolume: %{public}@", buf, 0xCu);
            }

            goto LABEL_95;
          }

          v23 = v94[4];
          free(v94);
          if (v23)
          {
            goto LABEL_26;
          }
        }

LABEL_100:
        v73 = CDGetLogHandle("client");
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1BA7F1000, v73, OS_LOG_TYPE_ERROR, "_CacheDeleteEnumerateRemovedFiles: Unable to get a purgeMarker, was CacheDeleteEnumerateRemovedFilesInDirectories() invoked before CacheDeleteInitPurgeMarker() ?", buf, 2u);
        }

        setPurgeMarker(*(v97 + 56), sinceWhena, 1, 0);
        (*(*(v97 + 32) + 16))();
        sinceWhen = 0;
        v49 = 1;
        p_super = &v22->super;
LABEL_103:

        _Block_object_dispose(v119, 8);
        if (v49)
        {
          goto LABEL_106;
        }
      }

      v93 = [obj countByEnumeratingWithState:&v102 objects:v118 count:16];
    }

    while (v93);
  }

LABEL_106:

  v84 = *MEMORY[0x1E69E9840];
}

@end