@interface GTCaptureBoundaryTracker
@end

@implementation GTCaptureBoundaryTracker

void __GTCaptureBoundaryTracker_handleTrigger_block_invoke(uint64_t a1)
{
  v1 = atomic_load((*(a1 + 48) + 20));
  v183 = v1;
  v2 = *(a1 + 48);
  v3 = *(a1 + 60);
  v185 = *(a1 + 56);
  v187 = *(a1 + 64);
  v4 = *(a1 + 104);
  v197 = *(a1 + 96);
  v198 = *(a1 + 80);
  v5 = *(a1 + 120);
  v195 = *(a1 + 88);
  v196 = *(a1 + 112);
  v188 = *(a1 + 128);
  *v205 = *(a1 + 129);
  *&v205[3] = *(a1 + 132);
  v193 = *(a1 + 72);
  v194 = *(a1 + 136);
  os_unfair_lock_lock((v2 + 16));
  v186 = v3;
  if (v3 == 9)
  {
    v6 = (v2 + 20);
    if (!atomic_load((v2 + 20)))
    {
LABEL_17:
      v12 = (v2 + 20);
      v13 = atomic_load((v2 + 20));
      v200 = v2 + 32;
      v14 = *(v2 + 32 + 8 * v13);
      *buf = v185;
      *&buf[4] = v186;
      *&buf[8] = v187;
      *&buf[16] = v193;
      *&buf[24] = v198;
      *&buf[32] = v195;
      *&buf[40] = v197;
      *&buf[48] = v4;
      *&buf[56] = v196;
      *&v212 = v5;
      BYTE8(v212) = v188;
      *(&v212 + 9) = *v205;
      HIDWORD(v212) = *&v205[3];
      *&v213 = v194;
      if (GTCapturePhase_checkTrigger(v14, buf))
      {
        v15 = atomic_load(v12);
        if (v15 == 1)
        {
          v16 = 0;
          v17 = 0;
          v18 = *(*(v2 + 40) + 8);
          v19 = *(v18 + 12);
          v20 = v19 & ~(v19 >> 31);
          v21 = 60;
          if ((v19 & ~(v19 >> 31)) != 0)
          {
            do
            {
              v22 = *(*(v18 + 24) + v21);
              if (v22)
              {
                if (v22 == 1)
                {
                  ++v17;
                }
              }

              else
              {
                ++v16;
              }

              v21 += 64;
              --v20;
            }

            while (v20);
          }

          if (v17 == 1 && v16 + 1 == v19 && v19 > 0)
          {
            v23 = *(v18 + 24);
            while (v23[1] != 3)
            {
              v23 += 16;
              if (!--v19)
              {
                goto LABEL_42;
              }
            }

            if (*v23 == 1)
            {
              for (i = 1; i != 5; ++i)
              {
                v25 = *(*(v200 + 8 * i) + 8);
                v26 = *(v25 + 12);
                if (v26 >= 1)
                {
                  v27 = *(v25 + 24);
                  while (*(v27 + 4) != 3)
                  {
                    v27 += 64;
                    if (!--v26)
                    {
                      goto LABEL_41;
                    }
                  }

                  *v27 = v185;
                  if (v185 == 3)
                  {
                    *(v27 + 8) = v4;
                  }
                }

LABEL_41:
                ;
              }
            }
          }
        }
      }

LABEL_42:
      v28 = atomic_load(v12);
      v10 = v28 == 3;
      v29 = v186;
      if (!v10)
      {
        goto LABEL_55;
      }

      if (v186 == 5)
      {
        v31 = g_targetRef == v196 || g_targetRef == v197;
        v30 = &g_commitOther;
        if (v31)
        {
          v30 = &g_commitCount;
        }
      }

      else
      {
        if (v186 != 3)
        {
LABEL_55:
          v190 = (v29 - 1);
          v189 = (v185 - 1);
          p_prots = &OBJC_PROTOCOL___CaptureMTLObject.prots;
          v191 = v5;
          v192 = v2;
          while (1)
          {
            v33 = *(v14 + 8);
            v34 = *(v33 + 12);
            if (v34)
            {
              if (v34 < 1)
              {
                goto LABEL_10;
              }

              v35 = v34 - 1;
              v36 = (*(v33 + 24) + 60);
              do
              {
                v37 = *(v36 - 1);
                v38 = *v36;
                v39 = *v36 >= v37 || v35-- == 0;
                v36 += 16;
              }

              while (!v39);
              if (v38 < v37)
              {
                goto LABEL_10;
              }
            }

            v40 = atomic_load((v2 + 20));
            if (v40 == 4)
            {
              goto LABEL_10;
            }

            if (*(p_prots + 88) == 1)
            {
              v41 = gt_tagged_log(5);
              v42 = v194;
              if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
              {
                v43 = atomic_load((v2 + 20));
                v44 = "UNKNOWN";
                if (v43 <= 4)
                {
                  v44 = (&off_2F1F10)[v43];
                }

                v45 = atomic_load((v2 + 20));
                v46 = v45 + 1;
                v47 = "UNKNOWN";
                if (v46 <= 4)
                {
                  v47 = (&off_2F1F10)[v46];
                }

                *buf = 136315394;
                *&buf[4] = v44;
                *&buf[12] = 2080;
                *&buf[14] = v47;
                _os_log_impl(&dword_0, v41, OS_LOG_TYPE_INFO, "⏭️  Capture phase transition: %s ==> %s", buf, 0x16u);
              }
            }

            else
            {
              v48 = atomic_load((v2 + 20));
              v49 = "UNKNOWN";
              if (v48 <= 4)
              {
                v49 = (&off_2F1F10)[v48];
              }

              v50 = atomic_load((v2 + 20));
              v51 = v50 + 1;
              v52 = "UNKNOWN";
              v42 = v194;
              if (v51 <= 4)
              {
                v52 = (&off_2F1F10)[v51];
              }

              fprintf(__stdoutp, "⏭️  Capture phase transition: %s ==> %s\n", v49, v52);
            }

            if (*(p_prots + 88) == 1)
            {
              v53 = gt_tagged_log(5);
              if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_0, v53, OS_LOG_TYPE_INFO, "🔫 GTCaptureTrigger", buf, 2u);
              }
            }

            else
            {
              fwrite("🔫 GTCaptureTrigger\n", 0x16uLL, 1uLL, __stdoutp);
            }

            if (*(p_prots + 88) == 1)
            {
              v54 = gt_tagged_log(5);
              if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
              {
                v55 = "Instant";
                if (v190 <= 8)
                {
                  v55 = (&off_2F1EC8)[v190];
                }

                *buf = 136315138;
                *&buf[4] = v55;
                _os_log_impl(&dword_0, v54, OS_LOG_TYPE_INFO, "    type: %s", buf, 0xCu);
              }
            }

            else
            {
              v56 = "Instant";
              if (v190 <= 8)
              {
                v56 = (&off_2F1EC8)[v190];
              }

              fprintf(__stdoutp, "    type: %s\n", v56);
            }

            if (*(p_prots + 88) == 1)
            {
              v57 = gt_tagged_log(5);
              if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
              {
                v58 = "None";
                if (v189 <= 0xB)
                {
                  v58 = (&off_2F1E68)[v189];
                }

                *buf = 136315138;
                *&buf[4] = v58;
                _os_log_impl(&dword_0, v57, OS_LOG_TYPE_INFO, "    object: %s", buf, 0xCu);
              }
            }

            else
            {
              v59 = "None";
              if (v189 <= 0xB)
              {
                v59 = (&off_2F1E68)[v189];
              }

              fprintf(__stdoutp, "    object: %s\n", v59);
            }

            if (*(p_prots + 88) == 1)
            {
              v60 = gt_tagged_log(5);
              if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
              {
                *buf = 134218240;
                *&buf[4] = v187;
                *&buf[12] = 2048;
                *&buf[14] = v193;
                _os_log_impl(&dword_0, v60, OS_LOG_TYPE_INFO, "    stream: %llu; function index: %llu", buf, 0x16u);
              }
            }

            else
            {
              fprintf(__stdoutp, "    stream: %llu; function index: %llu\n", v187, v193);
            }

            if (v198)
            {
              if (*(p_prots + 88) == 1)
              {
                v61 = gt_tagged_log(5);
                if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
                {
                  *buf = 134217984;
                  *&buf[4] = v198;
                  _os_log_impl(&dword_0, v61, OS_LOG_TYPE_INFO, "    parent function index: %llu", buf, 0xCu);
                }
              }

              else
              {
                fprintf(__stdoutp, "    parent function index: %llu\n", v198);
              }
            }

            if (v195)
            {
              if (*(p_prots + 88) == 1)
              {
                v62 = gt_tagged_log(5);
                if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
                {
                  *buf = 134217984;
                  *&buf[4] = v195;
                  _os_log_impl(&dword_0, v62, OS_LOG_TYPE_INFO, "    MTLCaptureScope stream ref: %llu", buf, 0xCu);
                }
              }

              else
              {
                fprintf(__stdoutp, "    MTLCaptureScope stream ref: %llu\n", v195);
              }
            }

            if (v197)
            {
              if (*(p_prots + 88) == 1)
              {
                v63 = gt_tagged_log(5);
                if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
                {
                  *buf = 134217984;
                  *&buf[4] = v197;
                  _os_log_impl(&dword_0, v63, OS_LOG_TYPE_INFO, "    MTLDevice stream ref: %llu", buf, 0xCu);
                }
              }

              else
              {
                fprintf(__stdoutp, "    MTLDevice stream ref: %llu\n", v197);
              }
            }

            if (v196)
            {
              if (*(p_prots + 88) == 1)
              {
                v64 = gt_tagged_log(5);
                if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
                {
                  *buf = 134217984;
                  *&buf[4] = v196;
                  _os_log_impl(&dword_0, v64, OS_LOG_TYPE_INFO, "    MTLCommandQueue stream ref: %llu", buf, 0xCu);
                }
              }

              else
              {
                fprintf(__stdoutp, "    MTLCommandQueue stream ref: %llu\n", v196);
              }
            }

            if (v5)
            {
              if (*(p_prots + 88) == 1)
              {
                v65 = gt_tagged_log(5);
                if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
                {
                  *buf = 134217984;
                  *&buf[4] = v5;
                  _os_log_impl(&dword_0, v65, OS_LOG_TYPE_INFO, "    MTLCommandBuffer stream ref: %llu", buf, 0xCu);
                }
              }

              else
              {
                fprintf(__stdoutp, "    MTLCommandBuffer stream ref: %llu\n", v5);
              }
            }

            if (v188)
            {
              if (*(p_prots + 88) == 1)
              {
                v66 = gt_tagged_log(5);
                if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_0, v66, OS_LOG_TYPE_INFO, "    MTLCommandBuffer is capturing", buf, 2u);
                }
              }

              else
              {
                fwrite("    MTLCommandBuffer is capturing\n", 0x22uLL, 1uLL, __stdoutp);
              }
            }

            if (v42)
            {
              if (*(p_prots + 88) == 1)
              {
                v67 = gt_tagged_log(5);
                if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_0, v67, OS_LOG_TYPE_INFO, "    captureDescriptor:", buf, 2u);
                }
              }

              else
              {
                fwrite("    captureDescriptor:\n", 0x17uLL, 1uLL, __stdoutp);
              }

              if (*(p_prots + 88) == 1)
              {
                v68 = gt_tagged_log(5);
                if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_0, v68, OS_LOG_TYPE_INFO, "        📜 GTMTLCaptureDescriptorInternal", buf, 2u);
                }
              }

              else
              {
                fwrite("        📜 GTMTLCaptureDescriptorInternal\n", 0x2CuLL, 1uLL, __stdoutp);
              }

              if (*v42)
              {
                if (*(p_prots + 88) == 1)
                {
                  v69 = gt_tagged_log(5);
                  if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
                  {
                    v70 = *v42;
                    *buf = 134217984;
                    *&buf[4] = v70;
                    _os_log_impl(&dword_0, v69, OS_LOG_TYPE_INFO, "        MTLDevice stream ref: %llu", buf, 0xCu);
                  }
                }

                else
                {
                  fprintf(__stdoutp, "        MTLDevice stream ref: %llu\n", *v42);
                }
              }

              if (v42[1])
              {
                if (*(p_prots + 88) == 1)
                {
                  v71 = gt_tagged_log(5);
                  if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
                  {
                    v72 = v42[1];
                    *buf = 134217984;
                    *&buf[4] = v72;
                    _os_log_impl(&dword_0, v71, OS_LOG_TYPE_INFO, "        MTLCommandQueue stream ref: %llu", buf, 0xCu);
                  }
                }

                else
                {
                  fprintf(__stdoutp, "        MTLCommandQueue stream ref: %llu\n", v42[1]);
                }
              }

              if (v42[2])
              {
                if (*(p_prots + 88) == 1)
                {
                  v73 = gt_tagged_log(5);
                  if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
                  {
                    v74 = v42[2];
                    *buf = 134217984;
                    *&buf[4] = v74;
                    _os_log_impl(&dword_0, v73, OS_LOG_TYPE_INFO, "        MTLCaptureScope stream ref: %llu", buf, 0xCu);
                  }
                }

                else
                {
                  fprintf(__stdoutp, "        MTLCaptureScope stream ref: %llu\n", v42[2]);
                }
              }

              if (v42[3])
              {
                if (*(p_prots + 88) == 1)
                {
                  v75 = gt_tagged_log(5);
                  if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
                  {
                    v76 = v42[3];
                    *buf = 134217984;
                    *&buf[4] = v76;
                    _os_log_impl(&dword_0, v75, OS_LOG_TYPE_INFO, "        CAMetalLayer stream ref: %llu", buf, 0xCu);
                  }
                }

                else
                {
                  fprintf(__stdoutp, "        CAMetalLayer stream ref: %llu\n", v42[3]);
                }
              }

              if (v42[4])
              {
                if (*(p_prots + 88) == 1)
                {
                  v77 = gt_tagged_log(5);
                  if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
                  {
                    v78 = v42[4];
                    *buf = 134217984;
                    *&buf[4] = v78;
                    _os_log_impl(&dword_0, v77, OS_LOG_TYPE_INFO, "        session ID: %llu", buf, 0xCu);
                  }
                }

                else
                {
                  fprintf(__stdoutp, "        session ID: %llu\n", v42[4]);
                }
              }

              if (*(p_prots + 88) == 1)
              {
                v79 = gt_tagged_log(5);
                if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
                {
                  v80 = v42[5];
                  *buf = 134217984;
                  *&buf[4] = v80;
                  _os_log_impl(&dword_0, v79, OS_LOG_TYPE_INFO, "        trigger hits to start: %llu", buf, 0xCu);
                }
              }

              else
              {
                fprintf(__stdoutp, "        trigger hits to start: %llu\n", v42[5]);
              }

              if (*(p_prots + 88) == 1)
              {
                v81 = gt_tagged_log(5);
                if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
                {
                  v82 = v42[6];
                  *buf = 134217984;
                  *&buf[4] = v82;
                  _os_log_impl(&dword_0, v81, OS_LOG_TYPE_INFO, "        trigger hits to end: %llu", buf, 0xCu);
                }
              }

              else
              {
                fprintf(__stdoutp, "        trigger hits to end: %llu\n", v42[6]);
              }

              if (v42[7])
              {
                if (*(p_prots + 88) == 1)
                {
                  v83 = gt_tagged_log(5);
                  if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
                  {
                    v84 = v42[7];
                    *buf = 136315138;
                    *&buf[4] = v84;
                    _os_log_impl(&dword_0, v83, OS_LOG_TYPE_INFO, "        localFilePathURL: %s", buf, 0xCu);
                  }
                }

                else
                {
                  fprintf(__stdoutp, "        localFilePathURL: %s\n", v42[7]);
                }
              }

              if (v42[8])
              {
                if (*(p_prots + 88) == 1)
                {
                  v85 = gt_tagged_log(5);
                  if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
                  {
                    v86 = v42[8];
                    *buf = 136315138;
                    *&buf[4] = v86;
                    _os_log_impl(&dword_0, v85, OS_LOG_TYPE_INFO, "        hostFilePathURL: %s", buf, 0xCu);
                  }
                }

                else
                {
                  fprintf(__stdoutp, "        hostFilePathURL: %s\n", v42[8]);
                }
              }

              if (*(p_prots + 88) == 1)
              {
                v87 = gt_tagged_log(5);
                if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
                {
                  v88 = "DeviceManual";
                  if (*(v42 + 72) - 1 <= 5)
                  {
                    v88 = off_2F13E8[(*(v42 + 72) - 1)];
                  }

                  *buf = 136315138;
                  *&buf[4] = v88;
                  _os_log_impl(&dword_0, v87, OS_LOG_TYPE_INFO, "        captureMode: %s", buf, 0xCu);
                }
              }

              else
              {
                v89 = "DeviceManual";
                if (*(v42 + 72) - 1 <= 5)
                {
                  v89 = off_2F13E8[(*(v42 + 72) - 1)];
                }

                fprintf(__stdoutp, "        captureMode: %s\n", v89);
              }

              if (*(v42 + 73) == 1)
              {
                if (*(p_prots + 88) == 1)
                {
                  v90 = gt_tagged_log(5);
                  if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_0, v90, OS_LOG_TYPE_INFO, "        suspendAfterCapture: true", buf, 2u);
                  }
                }

                else
                {
                  fwrite("        suspendAfterCapture: true\n", 0x22uLL, 1uLL, __stdoutp);
                }
              }

              if (*(v42 + 74) == 1)
              {
                if (*(p_prots + 88) == 1)
                {
                  v91 = gt_tagged_log(5);
                  if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_0, v91, OS_LOG_TYPE_INFO, "        isBoundaryLess: true", buf, 2u);
                  }
                }

                else
                {
                  fwrite("        isBoundaryLess: true\n", 0x1DuLL, 1uLL, __stdoutp);
                }
              }

              if (*(v42 + 75) == 1)
              {
                if (*(p_prots + 88) == 1)
                {
                  v92 = gt_tagged_log(5);
                  if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_0, v92, OS_LOG_TYPE_INFO, "        apiTriggeredCapture: true", buf, 2u);
                  }
                }

                else
                {
                  fwrite("        apiTriggeredCapture: true\n", 0x22uLL, 1uLL, __stdoutp);
                }
              }

              if (*(v42 + 76) == 1)
              {
                if (*(p_prots + 88) == 1)
                {
                  v93 = gt_tagged_log(5);
                  if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_0, v93, OS_LOG_TYPE_INFO, "        toolTriggeredCapture: true", buf, 2u);
                  }
                }

                else
                {
                  fwrite("        toolTriggeredCapture: true\n", 0x23uLL, 1uLL, __stdoutp);
                }
              }

              if (*(v42 + 77) == 1)
              {
                if (*(p_prots + 88) == 1)
                {
                  v94 = gt_tagged_log(5);
                  if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_0, v94, OS_LOG_TYPE_INFO, "        ignoreUnusedResources: true", buf, 2u);
                  }
                }

                else
                {
                  fwrite("        ignoreUnusedResources: true\n", 0x24uLL, 1uLL, __stdoutp);
                }
              }

              if (*(v42 + 78) == 1)
              {
                if (*(p_prots + 88) == 1)
                {
                  v95 = gt_tagged_log(5);
                  if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_0, v95, OS_LOG_TYPE_INFO, "        includeBacktrace: true", buf, 2u);
                  }
                }

                else
                {
                  fwrite("        includeBacktrace: true\n", 0x1FuLL, 1uLL, __stdoutp);
                }
              }

              if (v42[10])
              {
                if (*(p_prots + 88) == 1)
                {
                  v96 = gt_tagged_log(5);
                  if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
                  {
                    v97 = v42[10];
                    *buf = 134217984;
                    *&buf[4] = v97;
                    _os_log_impl(&dword_0, v96, OS_LOG_TYPE_INFO, "        captureCompletionHandler: %lu", buf, 0xCu);
                  }
                }

                else
                {
                  fprintf(__stdoutp, "        captureCompletionHandler: %lu\n", v42[10]);
                }
              }
            }

            v98 = atomic_load((v2 + 20));
            if (v98 > 1)
            {
              if (v98 != 2)
              {
                if (v98 != 3)
                {
                  goto LABEL_389;
                }

                if (!v5 || v186 != 5 && v186 != 3)
                {
                  atomic_store(0, (*v2 + 128));
                  goto LABEL_389;
                }

                if (*(p_prots + 88) == 1)
                {
                  v101 = gt_tagged_log(5);
                  if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
                  {
                    *buf = 134217984;
                    *&buf[4] = v5;
                    _os_log_impl(&dword_0, v101, OS_LOG_TYPE_INFO, "🔄 Transition aborted: waiting until command buffer %llu is scheduled", buf, 0xCu);
                  }
                }

                else
                {
                  fprintf(__stdoutp, "🔄 Transition aborted: waiting until command buffer %llu is scheduled\n", v5);
                }

                v117 = *(*(v2 + 56) + 8);
                v117->nelts = 0;
                v118 = apr_array_push(v117);
                *v118 = 0x600000008;
                *(v118 + 8) = 0u;
                *(v118 + 24) = 0u;
                *(v118 + 5) = v5;
                *(v118 + 6) = 0;
                *(v118 + 7) = 1;
                goto LABEL_390;
              }

              if (!v198 || v186 != 3 || v198 > *(v2 + 72))
              {
                goto LABEL_389;
              }

              if (*(p_prots + 88) == 1)
              {
                v108 = gt_tagged_log(5);
                if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_0, v108, OS_LOG_TYPE_INFO, "🔄 Transition aborted: waiting for a present issued during capture", buf, 2u);
                }
              }

              else
              {
                fwrite("🔄 Transition aborted: waiting for a present issued during capture\n", 0x45uLL, 1uLL, __stdoutp);
              }

              v119 = 0;
              v120 = *(v2 + 40);
              v121 = *(v2 + 48);
              while (1)
              {
                v122 = *(v120 + 8);
                if (v119 >= *(v122 + 12))
                {
                  goto LABEL_390;
                }

                v123 = (*(v122 + 24) + (v119 << 6));
                if (v123[1] == 3)
                {
                  v124 = *v123;
                  v125 = *(v123 + 7);
                  *buf = *v123;
                  *&buf[4] = 3;
                  *&buf[8] = *(v123 + 2);
                  *&buf[24] = *(v123 + 6);
                  *&buf[40] = *(v123 + 10);
                  *&buf[56] = v125;
                  v126 = *(v121 + 8);
                  nelts = v126->nelts;
                  if (nelts < 1)
                  {
                    goto LABEL_280;
                  }

                  elts = v126->elts;
                  v129 = elts;
                  while (!GTCaptureBoundaryCondition_equals(v129, buf))
                  {
                    v129 += 64;
                    if (!--nelts)
                    {
                      goto LABEL_280;
                    }
                  }

                  if (elts)
                  {
                    ++*(v129 + 56);
                  }

                  else
                  {
LABEL_280:
                    *buf = *(v123 + 2);
                    *&buf[16] = *(v123 + 6);
                    *&buf[32] = *(v123 + 10);
                    v130 = apr_array_push(v126);
                    *v130 = v124;
                    *(v130 + 1) = 3;
                    *(v130 + 8) = *buf;
                    *(v130 + 24) = *&buf[16];
                    *(v130 + 40) = *&buf[32];
                    *(v130 + 7) = 1;
                  }

                  v5 = v191;
                  v2 = v192;
                  p_prots = (&OBJC_PROTOCOL___CaptureMTLObject + 16);
                }

                ++v119;
              }
            }

            if (v98)
            {
              if (v98 != 1)
              {
                goto LABEL_389;
              }

              v99 = *(*v2 + 72);
              GTTraceStoreDebugDescription();
              if (v197 && !*_sharedCaptureManager)
              {
                *_sharedCaptureManager = v197;
                if (v42)
                {
                  goto LABEL_233;
                }
              }

              else if (v42)
              {
LABEL_233:
                v100 = *(v42 + 78);
                goto LABEL_263;
              }

              v100 = 1;
LABEL_263:
              v113 = *v2;
              atomic_store(v100, (*v2 + 128));
              GTMTLCaptureManager_startCapture(v113);
              if (*(p_prots + 88) == 1)
              {
                v114 = gt_tagged_log(5);
                if (os_log_type_enabled(v114, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  v115 = v114;
                  v116 = "🟢 Capture started";
                  goto LABEL_386;
                }
              }

              else
              {
                fwrite("🟢 Capture started\n", 0x15uLL, 1uLL, __stdoutp);
              }

              goto LABEL_388;
            }

            *(v2 + 88) = v185;
            v102 = *(v42 + 72);
            if (v102 <= 2)
            {
              break;
            }

            if (*(v42 + 72) <= 4u)
            {
              if (v102 != 3)
              {
                if (v102 != 4)
                {
                  goto LABEL_289;
                }

                v103 = v194[2];
                v104 = v194[5];
                v105 = apr_array_push(*(*(v2 + 40) + 8));
                *v105 = 0x100000002;
                *(v105 + 1) = 0;
                *(v105 + 2) = v103;
                *(v105 + 24) = 0u;
                *(v105 + 40) = 0u;
                *(v105 + 7) = v104;
                v106 = v194[6];
                v107 = apr_array_push(*(*(v2 + 56) + 8));
                *v107 = 0x200000002;
                *(v107 + 1) = 0;
                *(v107 + 2) = v103;
                *(v107 + 24) = 0u;
                *(v107 + 40) = 0u;
                goto LABEL_287;
              }

              v131 = v42;
              v132 = v42[5];
              v133 = apr_array_push(*(*(v2 + 40) + 8));
              *v133 = 0x400000008;
              *(v133 + 8) = 0u;
              *(v133 + 24) = 0u;
              *(v133 + 40) = 0u;
              *(v133 + 7) = v132;
              v134 = v131[1];
              v106 = v131[6];
              v107 = apr_array_push(*(*(v2 + 56) + 8));
              *v107 = 0x500000008;
              *(v107 + 1) = 0;
              *(v107 + 2) = 0;
              *(v107 + 3) = 0;
              *(v107 + 4) = v134;
              *(v107 + 5) = 0;
              goto LABEL_286;
            }

            if (v102 == 6)
            {
              v135 = v42;
              v136 = v42[3];
              v137 = v135[5];
              v138 = apr_array_push(*(*(v2 + 40) + 8));
              *v138 = 0x300000003;
              v138[1] = v136;
              *(v138 + 1) = 0u;
              *(v138 + 2) = 0u;
              v138[6] = 0;
              v138[7] = v137;
              v106 = v135[6];
              v107 = apr_array_push(*(*(v2 + 56) + 8));
              *v107 = 0x300000003;
              *(v107 + 1) = v136;
              *(v107 + 1) = 0u;
              *(v107 + 2) = 0u;
              *(v107 + 6) = 0;
LABEL_287:
              *(v107 + 14) = v106;
              goto LABEL_288;
            }

            if (v102 != 5)
            {
              goto LABEL_289;
            }

            v110 = v194[5];
            v111 = apr_array_push(*(*(v2 + 40) + 8));
            *v111 = 0x300000001;
            *(v111 + 8) = 0u;
            *(v111 + 24) = 0u;
            *(v111 + 40) = 0u;
            *(v111 + 7) = v110;
            v112 = v194[6];
            v107 = apr_array_push(*(*(v2 + 56) + 8));
            *v107 = 0x300000001;
            *(v107 + 8) = 0u;
            *(v107 + 24) = 0u;
            *(v107 + 40) = 0u;
            *(v107 + 14) = v112;
LABEL_288:
            *(v107 + 15) = 0;
LABEL_289:
            v142 = 0;
            v222 = 0u;
            v223 = 0u;
            v220 = 0u;
            v221 = 0u;
            v218 = 0u;
            v219 = 0u;
            v216 = 0u;
            v217 = 0u;
            v214 = 0u;
            v215 = 0u;
            v212 = 0u;
            v213 = 0u;
            v143 = &off_2F1F10;
            v144 = 4;
            memset(buf, 0, sizeof(buf));
            do
            {
              v145 = *v143++;
              v146 = v142 + snprintf(&buf[v142], 256 - v142, "%s--", v145);
              v147 = &buf[v146];
              v148 = 256 - v146;
              if (*(*(*(v2 + 8 * v144) + 8) + 12))
              {
                v149 = snprintf(v147, v148, "🛡️ --");
              }

              else
              {
                v149 = snprintf(v147, v148, "➡️ --");
              }

              v142 = v146 + v149;
              ++v144;
            }

            while (v144 != 9);
            snprintf(&buf[v142], 256 - v142, "Postcapture");
            if (p_prots[11])
            {
              v150 = gt_tagged_log(5);
              if (os_log_type_enabled(v150, OS_LOG_TYPE_INFO))
              {
                *v206 = 136315138;
                *v207 = buf;
                _os_log_impl(&dword_0, v150, OS_LOG_TYPE_INFO, "%s", v206, 0xCu);
              }
            }

            else
            {
              fprintf(__stdoutp, "%s\n", buf);
            }

            for (j = 0; j != 5; ++j)
            {
              v152 = *(*(*(v200 + 8 * j) + 8) + 12);
              if (v152 >= 1)
              {
                v153 = 0;
                v154 = 0;
                v199 = v152 << 6;
                while (*(p_prots + 88) == 1)
                {
                  v155 = gt_tagged_log(5);
                  if (os_log_type_enabled(v155, OS_LOG_TYPE_INFO))
                  {
                    if (j <= 1)
                    {
                      if (j)
                      {
                        if (j != 1)
                        {
                          goto LABEL_328;
                        }

                        v156 = "Active";
                        v159 = "Precapture";
                      }

                      else
                      {
                        v156 = "Inactive";
                        v159 = "Active";
                      }
                    }

                    else if (j == 2)
                    {
                      v156 = "Precapture";
                      v159 = "Capture";
                    }

                    else if (j == 3)
                    {
                      v156 = "Capture";
                      v159 = "Postcapture";
                    }

                    else
                    {
                      v156 = "Postcapture";
                      if (j != 4)
                      {
LABEL_328:
                        v156 = "UNKNOWN";
                      }

                      v159 = "UNKNOWN";
                    }

                    *v206 = 136315650;
                    *v207 = v156;
                    *&v207[8] = 2080;
                    v208 = v159;
                    v209 = 1024;
                    v210 = v153;
                    _os_log_impl(&dword_0, v155, OS_LOG_TYPE_INFO, "%s--🛡️ --%s Condition #%d", v206, 0x1Cu);
                  }

LABEL_331:
                  v160 = j;
                  v161 = (*(*(*(v200 + 8 * j) + 8) + 24) + v154);
                  v162 = *v161;
                  v163 = v161[1];
                  v164 = *(v161 + 1);
                  v165 = *(v161 + 2);
                  v166 = *(v161 + 4);
                  v167 = *(v161 + 5);
                  v204 = *(v161 + 48);
                  v202 = v161[14];
                  v203 = *(v161 + 3);
                  v201 = v161[15];
                  if (s_logUsingOsLog == 1)
                  {
                    v168 = gt_tagged_log(5);
                    if (os_log_type_enabled(v168, OS_LOG_TYPE_INFO))
                    {
                      v169 = "Instant";
                      if ((v163 - 1) <= 8)
                      {
                        v169 = (&off_2F1EC8)[v163 - 1];
                      }

                      *v206 = 136315138;
                      *v207 = v169;
                      _os_log_impl(&dword_0, v168, OS_LOG_TYPE_INFO, "    type: %s", v206, 0xCu);
                    }
                  }

                  else
                  {
                    v170 = "Instant";
                    if ((v163 - 1) <= 8)
                    {
                      v170 = (&off_2F1EC8)[v163 - 1];
                    }

                    fprintf(__stdoutp, "    type: %s\n", v170);
                  }

                  p_prots = &OBJC_PROTOCOL___CaptureMTLObject.prots;
                  if (s_logUsingOsLog == 1)
                  {
                    v171 = gt_tagged_log(5);
                    if (os_log_type_enabled(v171, OS_LOG_TYPE_INFO))
                    {
                      v172 = "None";
                      if ((v162 - 1) <= 0xB)
                      {
                        v172 = (&off_2F1E68)[v162 - 1];
                      }

                      *v206 = 136315138;
                      *v207 = v172;
                      _os_log_impl(&dword_0, v171, OS_LOG_TYPE_INFO, "    object: %s", v206, 0xCu);
                    }
                  }

                  else
                  {
                    v173 = "None";
                    if ((v162 - 1) <= 0xB)
                    {
                      v173 = (&off_2F1E68)[v162 - 1];
                    }

                    fprintf(__stdoutp, "    object: %s\n", v173);
                  }

                  j = v160;
                  if (v164)
                  {
                    if (s_logUsingOsLog == 1)
                    {
                      v174 = gt_tagged_log(5);
                      if (os_log_type_enabled(v174, OS_LOG_TYPE_INFO))
                      {
                        *v206 = 134217984;
                        *v207 = v164;
                        _os_log_impl(&dword_0, v174, OS_LOG_TYPE_INFO, "    CAMetalLayer stream ref: %llu", v206, 0xCu);
                      }
                    }

                    else
                    {
                      fprintf(__stdoutp, "    CAMetalLayer stream ref: %llu\n", v164);
                    }
                  }

                  if (v165)
                  {
                    if (s_logUsingOsLog == 1)
                    {
                      v175 = gt_tagged_log(5);
                      if (os_log_type_enabled(v175, OS_LOG_TYPE_INFO))
                      {
                        *v206 = 134217984;
                        *v207 = v165;
                        _os_log_impl(&dword_0, v175, OS_LOG_TYPE_INFO, "    MTLCaptureScope stream ref: %llu", v206, 0xCu);
                      }
                    }

                    else
                    {
                      fprintf(__stdoutp, "    MTLCaptureScope stream ref: %llu\n", v165);
                    }
                  }

                  if (v203)
                  {
                    if (s_logUsingOsLog == 1)
                    {
                      v176 = gt_tagged_log(5);
                      if (os_log_type_enabled(v176, OS_LOG_TYPE_INFO))
                      {
                        *v206 = 134217984;
                        *v207 = v203;
                        _os_log_impl(&dword_0, v176, OS_LOG_TYPE_INFO, "    MTLDevice stream ref: %llu", v206, 0xCu);
                      }
                    }

                    else
                    {
                      fprintf(__stdoutp, "    MTLDevice stream ref: %llu\n", v203);
                    }
                  }

                  if (v166)
                  {
                    if (s_logUsingOsLog == 1)
                    {
                      v177 = gt_tagged_log(5);
                      if (os_log_type_enabled(v177, OS_LOG_TYPE_INFO))
                      {
                        *v206 = 134217984;
                        *v207 = v166;
                        _os_log_impl(&dword_0, v177, OS_LOG_TYPE_INFO, "    MTLCommandQueue stream ref: %llu", v206, 0xCu);
                      }
                    }

                    else
                    {
                      fprintf(__stdoutp, "    MTLCommandQueue stream ref: %llu\n", v166);
                    }
                  }

                  if (v167)
                  {
                    if (s_logUsingOsLog == 1)
                    {
                      v178 = gt_tagged_log(5);
                      if (os_log_type_enabled(v178, OS_LOG_TYPE_INFO))
                      {
                        *v206 = 134217984;
                        *v207 = v167;
                        _os_log_impl(&dword_0, v178, OS_LOG_TYPE_INFO, "    MTLCommandBuffer stream ref: %llu", v206, 0xCu);
                      }
                    }

                    else
                    {
                      fprintf(__stdoutp, "    MTLCommandBuffer stream ref: %llu\n", v167);
                    }
                  }

                  if (v204)
                  {
                    if (s_logUsingOsLog == 1)
                    {
                      v179 = gt_tagged_log(5);
                      if (os_log_type_enabled(v179, OS_LOG_TYPE_INFO))
                      {
                        *v206 = 0;
                        _os_log_impl(&dword_0, v179, OS_LOG_TYPE_INFO, "    MTLCommandBuffer is capturing", v206, 2u);
                      }
                    }

                    else
                    {
                      fwrite("    MTLCommandBuffer is capturing\n", 0x22uLL, 1uLL, __stdoutp);
                    }
                  }

                  if (s_logUsingOsLog == 1)
                  {
                    v180 = gt_tagged_log(5);
                    if (os_log_type_enabled(v180, OS_LOG_TYPE_INFO))
                    {
                      *v206 = 67109376;
                      *v207 = v201;
                      *&v207[4] = 1024;
                      *&v207[6] = v202;
                      _os_log_impl(&dword_0, v180, OS_LOG_TYPE_INFO, "    Hit count: %u/%u", v206, 0xEu);
                    }
                  }

                  else
                  {
                    fprintf(__stdoutp, "    Hit count: %u/%u\n", v201, v202);
                  }

                  v154 += 64;
                  ++v153;
                  if (v199 == v154)
                  {
                    goto LABEL_382;
                  }
                }

                if (j <= 1)
                {
                  if (j)
                  {
                    if (j != 1)
                    {
                      goto LABEL_322;
                    }

                    v157 = "Active";
                    v158 = "Precapture";
                  }

                  else
                  {
                    v157 = "Inactive";
                    v158 = "Active";
                  }
                }

                else if (j == 2)
                {
                  v157 = "Precapture";
                  v158 = "Capture";
                }

                else if (j == 3)
                {
                  v157 = "Capture";
                  v158 = "Postcapture";
                }

                else
                {
                  v157 = "Postcapture";
                  if (j != 4)
                  {
LABEL_322:
                    v157 = "UNKNOWN";
                  }

                  v158 = "UNKNOWN";
                }

                fprintf(__stdoutp, "%s--🛡️ --%s Condition #%d\n", v157, v158, v153);
                goto LABEL_331;
              }

LABEL_382:
              ;
            }

            v2 = v192;
            atomic_store(1u, (*v192 + 112));
            GTMTLCaptureManager_activateCaptureWithDescriptor(v194);
            if (*(p_prots + 88) == 1)
            {
              v181 = gt_tagged_log(5);
              v5 = v191;
              if (os_log_type_enabled(v181, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                v115 = v181;
                v116 = "🚀 Capture activated";
LABEL_386:
                _os_log_impl(&dword_0, v115, OS_LOG_TYPE_INFO, v116, buf, 2u);
              }
            }

            else
            {
              fwrite("🚀 Capture activated\n", 0x17uLL, 1uLL, __stdoutp);
              v5 = v191;
            }

LABEL_388:
            *(v2 + 72) = v193;
LABEL_389:
            atomic_fetch_add((v2 + 20), 1u);
LABEL_390:
            v182 = atomic_load((v2 + 20));
            v14 = *(v200 + 8 * v182);
          }

          if (!*(v42 + 72))
          {
            goto LABEL_257;
          }

          if (v102 != 1)
          {
            if (v102 != 2)
            {
              goto LABEL_289;
            }

LABEL_257:
            v109 = apr_array_push(*(*(v2 + 56) + 8));
            *v109 = v185;
            *(v109 + 1) = 8;
            *(v109 + 8) = 0u;
            *(v109 + 24) = 0u;
            *(v109 + 40) = 0u;
            *(v109 + 7) = 1;
            goto LABEL_289;
          }

          v139 = *v194;
          v140 = v194[5];
          v141 = apr_array_push(*(*(v2 + 40) + 8));
          *v141 = 0x400000008;
          v141[1] = 0;
          v141[2] = 0;
          v141[3] = v139;
          v141[4] = 0;
          v141[5] = 0;
          v141[6] = 0;
          v141[7] = v140;
          v106 = v194[6];
          v107 = apr_array_push(*(*(v2 + 56) + 8));
          *v107 = 0x500000008;
          *(v107 + 1) = 0;
          *(v107 + 2) = 0;
          *(v107 + 4) = 0;
          *(v107 + 5) = 0;
          *(v107 + 3) = v139;
LABEL_286:
          v107[48] = 1;
          *(v107 + 49) = 0;
          *(v107 + 13) = 0;
          goto LABEL_287;
        }

        if (g_targetRef == v4)
        {
          v30 = &g_frameCount;
        }

        else
        {
          v30 = &g_frameOther;
        }
      }

      atomic_fetch_add(v30, 1uLL);
      v29 = v186;
      goto LABEL_55;
    }

    *(v2 + 96) = 1;
  }

  else
  {
    if (v3 == 3)
    {
      atomic_fetch_add((g_guestAppClientMTL + 56), 1uLL);
      goto LABEL_17;
    }

    if (v185 != *(v2 + 88))
    {
      goto LABEL_17;
    }

    if (v3 != 8)
    {
      goto LABEL_17;
    }

    v6 = (v2 + 20);
    if (!atomic_load((v2 + 20)))
    {
      goto LABEL_17;
    }
  }

  atomic_store(4u, v6);
LABEL_10:
  os_unfair_lock_unlock((v2 + 16));
  v9 = atomic_load((*(a1 + 48) + 20));
  v10 = v183 != 4 && v9 == 4;
  v11 = v10;
  *(*(*(a1 + 32) + 8) + 24) = v11;
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 48) + 96);
}

void __GTCaptureBoundaryTracker_handleTrigger_block_invoke_2(uint64_t a1)
{
  if (s_logUsingOsLog == 1)
  {
    v2 = gt_tagged_log(5);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "🛑 Stopping capture", buf, 2u);
    }
  }

  else
  {
    fwrite("🛑 Stopping capture\n", 0x16uLL, 1uLL, __stdoutp);
  }

  GTMTLCaptureManager_stopActiveCapture(*(*(a1 + 32) + 72), *(*(a1 + 32) + 80));
  if (s_logUsingOsLog == 1)
  {
    v3 = gt_tagged_log(5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "🏁 Capture finished", v4, 2u);
    }
  }

  else
  {
    fwrite("🏁 Capture finished\n", 0x16uLL, 1uLL, __stdoutp);
  }
}

@end