re::FrameMemoryStats *re::FrameMemoryStats::FrameMemoryStats(re::FrameMemoryStats *this)
{
  *(this + 2) = 10;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 12) = 0;
  *(this + 52) = 0x7FFFFFFFLL;
  *(this + 64) = 0;
  *this = &unk_1F5D0E010;
  *(this + 9) = 0;
  getpid();
  memorystatus_control();
  *(this + 9) = 0;
  return this;
}

uint64_t re::FrameMemoryStats::dumpStatisticsInternal(uint64_t a1, uint64_t a2)
{
  task_info_out[0] = 0;
  v3 = re::HashTable<unsigned int,re::FrameStatisticsOutput,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](a2, task_info_out);
  v4 = v3;
  if (v3[1])
  {
    v3[1] = 1;
    v5 = v3[2];
  }

  else
  {
    *(v3 + 8) = 0;
    v5 = v3 + 9;
  }

  *v5 = 0;
  re::DynamicString::append(v3, "Process Memory Usage [MB]\n", 0x1AuLL);
  task_info_outCnt = 93;
  task_info(*MEMORY[0x1E69E9A60], 0x16u, task_info_out, &task_info_outCnt);
  re::DynamicString::appendf(v4, "Dirty Memory Footprint : %.2f\n", (vcvts_n_f32_u64(v9, 0xAuLL) * 0.00097656));
  re::DynamicString::appendf(v4, "Peak Dirty Memory Footprint : %.2f\n", (vcvts_n_f32_s64(v10, 0xAuLL) * 0.00097656));
  result = re::DynamicString::appendf(v4, "Memory Limit : %.2f\n", (vcvts_n_f32_u64(*(a1 + 72), 0xAuLL) * 0.00097656));
  *(v4 + 10) = 512;
  return result;
}

uint64_t re::FrameThermalStats::dumpStatisticsInternal(uint64_t a1, uint64_t a2)
{
  info.numer = 0;
  v3 = re::HashTable<unsigned int,re::FrameStatisticsOutput,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](a2, &info);
  v4 = v3;
  if (v3[1])
  {
    v3[1] = 1;
    v5 = v3[2];
  }

  else
  {
    *(v3 + 8) = 0;
    v5 = v3 + 9;
  }

  *v5 = 0;
  re::DynamicString::append(v3, "App Thermal Info\n", 0x11uLL);
  v6 = [MEMORY[0x1E696AE30] processInfo];
  v7 = [v6 thermalState];

  switch(v7)
  {
    case 2:
      re::DynamicString::appendf(v4, "Thermal State : Serious\n");
      if (*(a1 + 90) > 2u)
      {
LABEL_30:
        v29 = 3;
        goto LABEL_39;
      }

      v18 = mach_absolute_time();
      v19 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
      {
        if (mach_timebase_info(&info))
        {
          v22 = NAN;
LABEL_29:
          v30 = v22 / 1000000.0;
          *(a1 + 76) = v30;
          ++*(a1 + 88);
          goto LABEL_30;
        }

        LODWORD(v20) = info.numer;
        LODWORD(v21) = info.denom;
        v19 = v20 / v21;
        re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v19;
      }

      v22 = v19 * v18;
      goto LABEL_29;
    case 1:
      re::DynamicString::appendf(v4, "Thermal State : Fair\n");
      if (*(a1 + 90) < 3u)
      {
LABEL_26:
        v29 = 2;
        goto LABEL_39;
      }

      v13 = mach_absolute_time();
      v14 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
      {
        if (mach_timebase_info(&info))
        {
          v17 = NAN;
LABEL_25:
          v28 = v17 / 1000000.0;
          *(a1 + 80) = v28;
          goto LABEL_26;
        }

        LODWORD(v15) = info.numer;
        LODWORD(v16) = info.denom;
        v14 = v15 / v16;
        re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v14;
      }

      v17 = v14 * v13;
      goto LABEL_25;
    case 0:
      re::DynamicString::appendf(v4, "Thermal State : Nominal\n");
      if (*(a1 + 90) < 3u)
      {
LABEL_34:
        v29 = 1;
        goto LABEL_39;
      }

      v8 = mach_absolute_time();
      v9 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
      {
        if (mach_timebase_info(&info))
        {
          v12 = NAN;
LABEL_33:
          v31 = v12 / 1000000.0;
          *(a1 + 80) = v31;
          goto LABEL_34;
        }

        LODWORD(v10) = info.numer;
        LODWORD(v11) = info.denom;
        v9 = v10 / v11;
        re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v9;
      }

      v12 = v9 * v8;
      goto LABEL_33;
  }

  re::DynamicString::appendf(v4, "Thermal State : Critical\n");
  if (*(a1 + 90) <= 2u)
  {
    v23 = mach_absolute_time();
    v24 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
    if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
    {
      if (mach_timebase_info(&info))
      {
        v27 = NAN;
LABEL_37:
        v32 = v27 / 1000000.0;
        *(a1 + 76) = v32;
        ++*(a1 + 88);
        goto LABEL_38;
      }

      LODWORD(v25) = info.numer;
      LODWORD(v26) = info.denom;
      v24 = v25 / v26;
      re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v24;
    }

    v27 = v24 * v23;
    goto LABEL_37;
  }

LABEL_38:
  v29 = 4;
LABEL_39:
  *(a1 + 90) = v29;
  v33 = mach_absolute_time();
  v34 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v37 = NAN;
      goto LABEL_44;
    }

    LODWORD(v35) = info.numer;
    LODWORD(v36) = info.denom;
    v34 = v35 / v36;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v34;
  }

  v37 = v34 * v33;
LABEL_44:
  v38 = v37 / 1000000.0 - *(a1 + 84);
  *(a1 + 68) = v38;
  re::DynamicString::appendf(v4, "Time Since App Launch : %.2f sec\n", (v38 / 1000.0));
  if (*(a1 + 90) > 2u)
  {
    result = re::DynamicString::appendf(v4, "Thermally Throttled in %.2f sec\n");
  }

  else
  {
    result = re::DynamicString::appendf(v4, "Not Thermally Throttled\n");
  }

  *(v4 + 10) = 1024;
  return result;
}

double re::FrameSceneUnderstandingStats::dumpStatisticsInternal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  info[0].numer = 0;
  v6 = re::HashTable<unsigned int,re::FrameStatisticsOutput,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](a2, info);
  v7 = v6;
  if (v6[1])
  {
    v6[1] = 1;
    v8 = v6[2];
  }

  else
  {
    *(v6 + 8) = 0;
    v8 = v6 + 9;
  }

  *v8 = 0;
  re::DynamicString::appendf(v6, "Scene Understanding Metrics (Profiler Pass)\n");
  v9 = 0x7FFFFFFFLL;
  if (*a3)
  {
    v10 = *(*(a3 + 8) + 4 * (0xAF26563F2EC4C8E6 % *(a3 + 24)));
    if (v10 != 0x7FFFFFFF)
    {
      v11 = *(a3 + 16);
      v9 = 0x7FFFFFFFLL;
      while (*(v11 + 80 * v10 + 4) != 128)
      {
        v10 = *(v11 + 80 * v10) & 0x7FFFFFFF;
        if (v10 == 0x7FFFFFFF)
        {
          goto LABEL_11;
        }
      }

      v9 = v10;
    }
  }

LABEL_11:
  v12 = *(*(a3 + 16) + 80 * v9 + 40);
  v13 = *(a1 + 8);
  v14 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(info))
    {
      v17 = NAN;
      goto LABEL_16;
    }

    LODWORD(v15) = info[0].numer;
    LODWORD(v16) = info[0].denom;
    v14 = v15 / v16;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v14;
  }

  v17 = v14 * (v12 / v13);
LABEL_16:
  re::DynamicString::appendf(v7, "SUProcessingSystem Update (ms): %.2f\n", v17 / 1000000.0);
  if (!*a3)
  {
    v18 = *(a3 + 16);
    goto LABEL_22;
  }

  v18 = *(a3 + 16);
  v19 = *(*(a3 + 8) + 4 * (0x89607B27DA843F55 % *(a3 + 24)));
  if (v19 == 0x7FFFFFFF)
  {
LABEL_22:
    v19 = 0x7FFFFFFFLL;
    goto LABEL_23;
  }

  while (*(v18 + 80 * v19 + 4) != 129)
  {
    v19 = *(v18 + 80 * v19) & 0x7FFFFFFF;
    if (v19 == 0x7FFFFFFF)
    {
      goto LABEL_22;
    }
  }

LABEL_23:
  v20 = *(v18 + 80 * v19 + 40);
  v21 = *(a1 + 8);
  v22 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(info))
    {
      v25 = NAN;
      goto LABEL_28;
    }

    LODWORD(v23) = info[0].numer;
    LODWORD(v24) = info[0].denom;
    v22 = v23 / v24;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v22;
  }

  v25 = v22 * (v20 / v21);
LABEL_28:
  re::DynamicString::appendf(v7, "SUMeshSystem Update (ms): %.2f\n", v25 / 1000000.0);
  re::DynamicString::appendf(v7, "Physics Chunk Creation (ms)\n");
  if (!*a3)
  {
    v26 = *(a3 + 16);
    goto LABEL_34;
  }

  v26 = *(a3 + 16);
  v27 = *(*(a3 + 8) + 4 * (0x629BE6C3EEC6E119uLL % *(a3 + 24)));
  if (v27 == 0x7FFFFFFF)
  {
LABEL_34:
    v27 = 0x7FFFFFFFLL;
    goto LABEL_35;
  }

  while (*(v26 + 80 * v27 + 4) != 133)
  {
    v27 = *(v26 + 80 * v27) & 0x7FFFFFFF;
    if (v27 == 0x7FFFFFFF)
    {
      goto LABEL_34;
    }
  }

LABEL_35:
  v28 = *(v26 + 80 * v27 + 48);
  v29 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(info))
    {
      v32 = NAN;
      goto LABEL_40;
    }

    LODWORD(v30) = info[0].numer;
    LODWORD(v31) = info[0].denom;
    v29 = v30 / v31;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v29;
  }

  v32 = v29 * v28;
LABEL_40:
  if (!*a3)
  {
    v33 = *(a3 + 16);
    goto LABEL_46;
  }

  v33 = *(a3 + 16);
  v34 = *(*(a3 + 8) + 4 * (0x629BE6C3EEC6E119uLL % *(a3 + 24)));
  if (v34 == 0x7FFFFFFF)
  {
LABEL_46:
    v34 = 0x7FFFFFFFLL;
    goto LABEL_47;
  }

  while (*(v33 + 80 * v34 + 4) != 133)
  {
    v34 = *(v33 + 80 * v34) & 0x7FFFFFFF;
    if (v34 == 0x7FFFFFFF)
    {
      goto LABEL_46;
    }
  }

LABEL_47:
  v35 = *(v33 + 80 * v34 + 36);
  v36 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  v37 = v32 / 1000000.0;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(info))
    {
      v40 = NAN;
      goto LABEL_52;
    }

    LODWORD(v38) = info[0].numer;
    LODWORD(v39) = info[0].denom;
    v36 = v38 / v39;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v36;
  }

  v40 = v36 * v35;
LABEL_52:
  re::DynamicString::appendf(v7, "Avg : %.3f, Max : %.3f\n", v37, v40 / 1000000.0);
  re::DynamicString::appendf(v7, "Physics Chunk Update (ms)\n");
  if (!*a3)
  {
    v41 = *(a3 + 16);
    goto LABEL_58;
  }

  v41 = *(a3 + 16);
  v42 = *(*(a3 + 8) + 4 * (0xDDA64E04828F136DLL % *(a3 + 24)));
  if (v42 == 0x7FFFFFFF)
  {
LABEL_58:
    v42 = 0x7FFFFFFFLL;
    goto LABEL_59;
  }

  while (*(v41 + 80 * v42 + 4) != 134)
  {
    v42 = *(v41 + 80 * v42) & 0x7FFFFFFF;
    if (v42 == 0x7FFFFFFF)
    {
      goto LABEL_58;
    }
  }

LABEL_59:
  v43 = *(v41 + 80 * v42 + 48);
  v44 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(info))
    {
      v47 = NAN;
      goto LABEL_64;
    }

    LODWORD(v45) = info[0].numer;
    LODWORD(v46) = info[0].denom;
    v44 = v45 / v46;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v44;
  }

  v47 = v44 * v43;
LABEL_64:
  if (!*a3)
  {
    v48 = *(a3 + 16);
    goto LABEL_70;
  }

  v48 = *(a3 + 16);
  v49 = *(*(a3 + 8) + 4 * (0xDDA64E04828F136DLL % *(a3 + 24)));
  if (v49 == 0x7FFFFFFF)
  {
LABEL_70:
    v49 = 0x7FFFFFFFLL;
    goto LABEL_71;
  }

  while (*(v48 + 80 * v49 + 4) != 134)
  {
    v49 = *(v48 + 80 * v49) & 0x7FFFFFFF;
    if (v49 == 0x7FFFFFFF)
    {
      goto LABEL_70;
    }
  }

LABEL_71:
  v50 = *(v48 + 80 * v49 + 36);
  v51 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  v52 = v47 / 1000000.0;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(info))
    {
      v55 = NAN;
      goto LABEL_76;
    }

    LODWORD(v53) = info[0].numer;
    LODWORD(v54) = info[0].denom;
    v51 = v53 / v54;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v51;
  }

  v55 = v51 * v50;
LABEL_76:
  re::DynamicString::appendf(v7, "Avg : %.3f, Max : %.3f\n", v52, v55 / 1000000.0);
  if (!*a3)
  {
    v57 = *(a3 + 16);
    v61 = *(v57 + 0x27FFFFFFD8);
    v62 = v61 - v61;
LABEL_105:
    v72 = 0x7FFFFFFFLL;
    goto LABEL_106;
  }

  v56 = *(a3 + 24);
  v58 = *(a3 + 8);
  v57 = *(a3 + 16);
  v59 = *(v58 + 4 * (0x3E784199B71EA792 % v56));
  if (v59 == 0x7FFFFFFF)
  {
    v60 = (v57 + 0x27FFFFFFD8);
  }

  else
  {
    v63 = 0x7FFFFFFFLL;
    while (*(v57 + 80 * v59 + 4) != 136)
    {
      v59 = *(v57 + 80 * v59) & 0x7FFFFFFF;
      if (v59 == 0x7FFFFFFF)
      {
        goto LABEL_85;
      }
    }

    v63 = v59;
LABEL_85:
    v60 = (v57 + 80 * v63 + 40);
  }

  v64 = *(v58 + 4 * (0x1D08970C8BCEA7C1 % v56));
  if (v64 == 0x7FFFFFFF)
  {
    v65 = (v57 + 0x27FFFFFFD8);
  }

  else
  {
    v66 = 0x7FFFFFFFLL;
    while (*(v57 + 80 * v64 + 4) != 138)
    {
      v64 = *(v57 + 80 * v64) & 0x7FFFFFFF;
      if (v64 == 0x7FFFFFFF)
      {
        goto LABEL_93;
      }
    }

    v66 = v64;
LABEL_93:
    v65 = (v57 + 80 * v66 + 40);
  }

  v67 = *v60;
  v68 = *v65;
  v69 = *(v58 + 4 * (0x72025A4FB5A542DBLL % v56));
  if (v69 == 0x7FFFFFFF)
  {
    v70 = (v57 + 0x27FFFFFFD8);
  }

  else
  {
    v71 = 0x7FFFFFFFLL;
    while (*(v57 + 80 * v69 + 4) != 137)
    {
      v69 = *(v57 + 80 * v69) & 0x7FFFFFFF;
      if (v69 == 0x7FFFFFFF)
      {
        goto LABEL_101;
      }
    }

    v71 = v69;
LABEL_101:
    v70 = (v57 + 80 * v71 + 40);
  }

  v62 = v67 - v68;
  v61 = *v70;
  v72 = *(v58 + 4 * (0x5CB85FD265949FD2 % v56));
  if (v72 == 0x7FFFFFFF)
  {
    goto LABEL_105;
  }

  while (*(v57 + 80 * v72 + 4) != 139)
  {
    v72 = *(v57 + 80 * v72) & 0x7FFFFFFF;
    if (v72 == 0x7FFFFFFF)
    {
      goto LABEL_105;
    }
  }

LABEL_106:
  v73 = v61 - *(v57 + 80 * v72 + 40);
  v74 = v62;
  if (v74 < 0.0)
  {
    v74 = 0.0;
  }

  v75 = v73;
  if (v75 < 0.0)
  {
    v75 = 0.0;
  }

  v76 = re::DynamicString::appendf(v7, "SU Vertices: %.2f, SU Triangles: %.2f\n", v74, v75);
  *(v7 + 10) = 2048;
  *(v7 + 4) = 0x2D00000008;
  if (!*a2 || (v77 = *(*(a2 + 8) + 4 * (0x5692161D100B05E5uLL % *(a2 + 24))), v77 == 0x7FFFFFFF))
  {
LABEL_115:
    *&info[0].numer = 0u;
    v161 = 0u;
    re::DynamicString::setCapacity(info, 0);
    v162 = 0x2800000006;
    v163 = 1;
    v159 = 1;
    re::HashTable<unsigned int,re::FrameStatisticsOutput,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::add(a2, &v159, info);
    if (*info && (info[1].numer & 1) != 0)
    {
      (*(**info + 40))();
    }
  }

  else
  {
    v78 = *(a2 + 16);
    while (*(v78 + (v77 << 6) + 4) != 1)
    {
      v77 = *(v78 + (v77 << 6)) & 0x7FFFFFFF;
      if (v77 == 0x7FFFFFFF)
      {
        goto LABEL_115;
      }
    }
  }

  info[0].numer = 1;
  v79 = re::HashTable<unsigned int,re::FrameStatisticsOutput,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](a2, info);
  v80 = v79;
  if (v79[1])
  {
    v79[1] = 1;
    v81 = v79[2];
  }

  else
  {
    *(v79 + 8) = 0;
    v81 = v79 + 9;
  }

  *v81 = 0;
  re::DynamicString::appendf(v79, "Scene Understanding Metrics (App Lifetime)\n");
  re::DynamicString::appendf(v80, "SUProcessingSystem Update (s)\n");
  if (!*a3)
  {
    v82 = *(a3 + 16);
    goto LABEL_127;
  }

  v82 = *(a3 + 16);
  v83 = *(*(a3 + 8) + 4 * (0xAF26563F2EC4C8E6 % *(a3 + 24)));
  if (v83 == 0x7FFFFFFF)
  {
LABEL_127:
    v83 = 0x7FFFFFFFLL;
    goto LABEL_128;
  }

  while (*(v82 + 80 * v83 + 4) != 128)
  {
    v83 = *(v82 + 80 * v83) & 0x7FFFFFFF;
    if (v83 == 0x7FFFFFFF)
    {
      goto LABEL_127;
    }
  }

LABEL_128:
  v84 = *(v82 + 80 * v83 + 68);
  v85 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(info))
    {
      v88 = NAN;
      goto LABEL_133;
    }

    LODWORD(v86) = info[0].numer;
    LODWORD(v87) = info[0].denom;
    v85 = v86 / v87;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v85;
  }

  v88 = v85 * (v84 / 1000.0);
LABEL_133:
  if (!*a3)
  {
    v89 = *(a3 + 16);
    goto LABEL_139;
  }

  v89 = *(a3 + 16);
  v90 = *(*(a3 + 8) + 4 * (0xAF26563F2EC4C8E6 % *(a3 + 24)));
  if (v90 == 0x7FFFFFFF)
  {
LABEL_139:
    v90 = 0x7FFFFFFFLL;
    goto LABEL_140;
  }

  while (*(v89 + 80 * v90 + 4) != 128)
  {
    v90 = *(v89 + 80 * v90) & 0x7FFFFFFF;
    if (v90 == 0x7FFFFFFF)
    {
      goto LABEL_139;
    }
  }

LABEL_140:
  v91 = *(v89 + 80 * v90 + 56);
  v92 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  v93 = v88 / 1000000.0;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(info))
    {
      v96 = NAN;
      goto LABEL_145;
    }

    LODWORD(v94) = info[0].numer;
    LODWORD(v95) = info[0].denom;
    v92 = v94 / v95;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v92;
  }

  v96 = v92 * (v91 / 1000.0);
LABEL_145:
  re::DynamicString::appendf(v80, "Avg : %.3f, Max : %.3f\n", v93, v96 / 1000000.0);
  re::DynamicString::appendf(v80, "SUMeshSystem Update (s)\n");
  if (!*a3)
  {
    v97 = *(a3 + 16);
    goto LABEL_151;
  }

  v97 = *(a3 + 16);
  v98 = *(*(a3 + 8) + 4 * (0x89607B27DA843F55 % *(a3 + 24)));
  if (v98 == 0x7FFFFFFF)
  {
LABEL_151:
    v98 = 0x7FFFFFFFLL;
    goto LABEL_152;
  }

  while (*(v97 + 80 * v98 + 4) != 129)
  {
    v98 = *(v97 + 80 * v98) & 0x7FFFFFFF;
    if (v98 == 0x7FFFFFFF)
    {
      goto LABEL_151;
    }
  }

LABEL_152:
  v99 = *(v97 + 80 * v98 + 68);
  v100 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(info))
    {
      v103 = NAN;
      goto LABEL_157;
    }

    LODWORD(v101) = info[0].numer;
    LODWORD(v102) = info[0].denom;
    v100 = v101 / v102;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v100;
  }

  v103 = v100 * (v99 / 1000.0);
LABEL_157:
  if (!*a3)
  {
    v104 = *(a3 + 16);
    goto LABEL_163;
  }

  v104 = *(a3 + 16);
  v105 = *(*(a3 + 8) + 4 * (0x89607B27DA843F55 % *(a3 + 24)));
  if (v105 == 0x7FFFFFFF)
  {
LABEL_163:
    v105 = 0x7FFFFFFFLL;
    goto LABEL_164;
  }

  while (*(v104 + 80 * v105 + 4) != 129)
  {
    v105 = *(v104 + 80 * v105) & 0x7FFFFFFF;
    if (v105 == 0x7FFFFFFF)
    {
      goto LABEL_163;
    }
  }

LABEL_164:
  v106 = *(v104 + 80 * v105 + 56);
  v107 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  v108 = v103 / 1000000.0;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(info))
    {
      v111 = NAN;
      goto LABEL_169;
    }

    LODWORD(v109) = info[0].numer;
    LODWORD(v110) = info[0].denom;
    v107 = v109 / v110;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v107;
  }

  v111 = v107 * (v106 / 1000.0);
LABEL_169:
  re::DynamicString::appendf(v80, "Avg : %.3f, Max : %.3f\n", v108, v111 / 1000000.0);
  re::DynamicString::appendf(v80, "Physics Chunk Creation (s)\n");
  if (!*a3)
  {
    v112 = *(a3 + 16);
    goto LABEL_175;
  }

  v112 = *(a3 + 16);
  v113 = *(*(a3 + 8) + 4 * (0x629BE6C3EEC6E119uLL % *(a3 + 24)));
  if (v113 == 0x7FFFFFFF)
  {
LABEL_175:
    v113 = 0x7FFFFFFFLL;
    goto LABEL_176;
  }

  while (*(v112 + 80 * v113 + 4) != 133)
  {
    v113 = *(v112 + 80 * v113) & 0x7FFFFFFF;
    if (v113 == 0x7FFFFFFF)
    {
      goto LABEL_175;
    }
  }

LABEL_176:
  v114 = *(v112 + 80 * v113 + 68);
  v115 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(info))
    {
      v118 = NAN;
      goto LABEL_181;
    }

    LODWORD(v116) = info[0].numer;
    LODWORD(v117) = info[0].denom;
    v115 = v116 / v117;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v115;
  }

  v118 = v115 * (v114 / 1000.0);
LABEL_181:
  if (!*a3)
  {
    v119 = *(a3 + 16);
    goto LABEL_187;
  }

  v119 = *(a3 + 16);
  v120 = *(*(a3 + 8) + 4 * (0x629BE6C3EEC6E119uLL % *(a3 + 24)));
  if (v120 == 0x7FFFFFFF)
  {
LABEL_187:
    v120 = 0x7FFFFFFFLL;
    goto LABEL_188;
  }

  while (*(v119 + 80 * v120 + 4) != 133)
  {
    v120 = *(v119 + 80 * v120) & 0x7FFFFFFF;
    if (v120 == 0x7FFFFFFF)
    {
      goto LABEL_187;
    }
  }

LABEL_188:
  v121 = *(v119 + 80 * v120 + 56);
  v122 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  v123 = v118 / 1000000.0;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(info))
    {
      v126 = NAN;
      goto LABEL_193;
    }

    LODWORD(v124) = info[0].numer;
    LODWORD(v125) = info[0].denom;
    v122 = v124 / v125;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v122;
  }

  v126 = v122 * (v121 / 1000.0);
LABEL_193:
  re::DynamicString::appendf(v80, "Avg : %.3f, Max : %.3f\n", v123, v126 / 1000000.0);
  re::DynamicString::appendf(v80, "Physics Chunk Update (s)\n");
  if (!*a3)
  {
    v127 = *(a3 + 16);
    goto LABEL_199;
  }

  v127 = *(a3 + 16);
  v128 = *(*(a3 + 8) + 4 * (0xDDA64E04828F136DLL % *(a3 + 24)));
  if (v128 == 0x7FFFFFFF)
  {
LABEL_199:
    v128 = 0x7FFFFFFFLL;
    goto LABEL_200;
  }

  while (*(v127 + 80 * v128 + 4) != 134)
  {
    v128 = *(v127 + 80 * v128) & 0x7FFFFFFF;
    if (v128 == 0x7FFFFFFF)
    {
      goto LABEL_199;
    }
  }

LABEL_200:
  v129 = *(v127 + 80 * v128 + 68);
  v130 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(info))
    {
      v133 = NAN;
      goto LABEL_205;
    }

    LODWORD(v131) = info[0].numer;
    LODWORD(v132) = info[0].denom;
    v130 = v131 / v132;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v130;
  }

  v133 = v130 * (v129 / 1000.0);
LABEL_205:
  if (!*a3)
  {
    v134 = *(a3 + 16);
    goto LABEL_211;
  }

  v134 = *(a3 + 16);
  v135 = *(*(a3 + 8) + 4 * (0xDDA64E04828F136DLL % *(a3 + 24)));
  if (v135 == 0x7FFFFFFF)
  {
LABEL_211:
    v135 = 0x7FFFFFFFLL;
    goto LABEL_212;
  }

  while (*(v134 + 80 * v135 + 4) != 134)
  {
    v135 = *(v134 + 80 * v135) & 0x7FFFFFFF;
    if (v135 == 0x7FFFFFFF)
    {
      goto LABEL_211;
    }
  }

LABEL_212:
  v136 = *(v134 + 80 * v135 + 56);
  v137 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  v138 = v133 / 1000000.0;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(info))
    {
      v141 = NAN;
      goto LABEL_217;
    }

    LODWORD(v139) = info[0].numer;
    LODWORD(v140) = info[0].denom;
    v137 = v139 / v140;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v137;
  }

  v141 = v137 * (v136 / 1000.0);
LABEL_217:
  re::DynamicString::appendf(v80, "Avg : %.3f, Max : %.3f\n", v138, v141 / 1000000.0);
  if (!*a3)
  {
    v143 = *(a3 + 16);
    v147 = *(v143 + 0x27FFFFFFECLL);
    v148 = v147 - v147;
LABEL_246:
    v157 = 0x7FFFFFFFLL;
    goto LABEL_247;
  }

  v142 = *(a3 + 24);
  v144 = *(a3 + 8);
  v143 = *(a3 + 16);
  v145 = *(v144 + 4 * (0x3E784199B71EA792 % v142));
  if (v145 == 0x7FFFFFFF)
  {
    v146 = (v143 + 0x27FFFFFFECLL);
  }

  else
  {
    v149 = 0x7FFFFFFFLL;
    while (*(v143 + 80 * v145 + 4) != 136)
    {
      v145 = *(v143 + 80 * v145) & 0x7FFFFFFF;
      if (v145 == 0x7FFFFFFF)
      {
        goto LABEL_226;
      }
    }

    v149 = v145;
LABEL_226:
    v146 = (v143 + 80 * v149 + 60);
  }

  v150 = *(v144 + 4 * (0x1D08970C8BCEA7C1 % v142));
  if (v150 == 0x7FFFFFFF)
  {
    v151 = (v143 + 0x27FFFFFFECLL);
  }

  else
  {
    v152 = 0x7FFFFFFFLL;
    while (*(v143 + 80 * v150 + 4) != 138)
    {
      v150 = *(v143 + 80 * v150) & 0x7FFFFFFF;
      if (v150 == 0x7FFFFFFF)
      {
        goto LABEL_234;
      }
    }

    v152 = v150;
LABEL_234:
    v151 = (v143 + 80 * v152 + 60);
  }

  v153 = *v146;
  v154 = *(v144 + 4 * (0x72025A4FB5A542DBLL % v142));
  if (v154 == 0x7FFFFFFF)
  {
    v155 = (v143 + 0x27FFFFFFECLL);
  }

  else
  {
    v156 = 0x7FFFFFFFLL;
    while (*(v143 + 80 * v154 + 4) != 137)
    {
      v154 = *(v143 + 80 * v154) & 0x7FFFFFFF;
      if (v154 == 0x7FFFFFFF)
      {
        goto LABEL_242;
      }
    }

    v156 = v154;
LABEL_242:
    v155 = (v143 + 80 * v156 + 60);
  }

  v148 = v153 - *v151;
  v147 = *v155;
  v157 = *(v144 + 4 * (0x5CB85FD265949FD2 % v142));
  if (v157 == 0x7FFFFFFF)
  {
    goto LABEL_246;
  }

  while (*(v143 + 80 * v157 + 4) != 139)
  {
    v157 = *(v143 + 80 * v157) & 0x7FFFFFFF;
    if (v157 == 0x7FFFFFFF)
    {
      goto LABEL_246;
    }
  }

LABEL_247:
  re::DynamicString::appendf(v80, "SU Vertices : %.2f, SU Triangles: %.2f\n", v148, (v147 - *(v143 + 80 * v157 + 60)));
  *(v80 + 10) = 2048;
  *&result = 0x2D0000000ALL;
  *(v80 + 4) = 0x2D0000000ALL;
  return result;
}

re::FrameCustomStats *re::FrameCustomStats::FrameCustomStats(re::FrameCustomStats *this)
{
  *(this + 2) = 10;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 12) = 0;
  *(this + 52) = 0x7FFFFFFFLL;
  *(this + 64) = 0;
  *this = &unk_1F5D0E040;
  *(this + 88) = 0u;
  *(this + 26) = 0;
  *(this + 72) = 0u;
  v2 = this + 72;
  *(this + 108) = 0x7FFFFFFFLL;
  *(this + 19) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 36) = 0;
  *(this + 15) = 0;
  v3 = this + 120;
  *(this + 160) = 1;
  LODWORD(v8[0]) = 0;
  v6 = 0u;
  v7 = 0u;
  *(v8 + 4) = 0x7FFFFFFFLL;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(v2, &v6);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v6);
  v8[0] = 0;
  *(&v6 + 1) = 0;
  *&v7 = 0;
  DWORD2(v7) = 0;
  re::DynamicArray<re::CustomStatsLineInfo>::setCapacity(&v6, 0xFuLL);
  ++DWORD2(v7);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v3, &v6);
  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v6);
  return this;
}

void re::FrameCustomStats::~FrameCustomStats(re::FrameCustomStats *this)
{
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 9);
  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(this + 120);
  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(this + 120);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 9);
  *this = &unk_1F5D0DFE0;
  *(this + 64) = 0;
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 2);
}

{
  re::FrameCustomStats::~FrameCustomStats(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::FrameCustomStats::addOrGetStat(re::FrameCustomStats *this, char *a2)
{
  v4 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(this + 72, &v7);
  v5 = v7;
  if (v7 && (v8 & 1) != 0)
  {
    v5 = (*(*v7 + 40))();
  }

  if (v4)
  {
    return *v4;
  }

  v9 = 257;
  v10 = 0xFF7FFFFF7F7FFFFFLL;
  v12 = 0;
  v11 = 0;
  v13 = xmmword_1E3100EC0;
  v14 = xmmword_1E3100ED0;
  v15 = 0;
  v16 = 0;
  re::DynamicArray<re::CustomStatsLineInfo>::add((this + 120), &v7);
  if (v7)
  {
    if (v8)
    {
      (*(*v7 + 40))();
    }
  }

  v7 = *(this + 17) - 1;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(this + 72, a2, &v7);
  return *(this + 17) - 1;
}

void re::DynamicArray<re::CustomStatsLineInfo>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::CustomStatsLineInfo>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 104 * v4;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 24) = *(a2 + 24);
  v6 = *(a2 + 8);
  *v5 = *a2;
  *a2 = 0;
  v7 = *(a2 + 16);
  *(a2 + 24) = 0;
  v9 = *(v5 + 8);
  v8 = *(v5 + 16);
  *(v5 + 8) = v6;
  *(v5 + 16) = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v8;
  *(v5 + 32) = *(a2 + 32);
  re::FrameStats::CollectedStatistics::CollectedStatistics((v5 + 36), (a2 + 36));
  ++*(this + 2);
  ++*(this + 6);
}

uint64_t re::FrameCustomStats::addOrGetLine(re::FrameCustomStats *this, char *a2)
{
  v4 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(this + 72, &v7);
  v5 = v7;
  if (v7 && (v8 & 1) != 0)
  {
    v5 = (*(*v7 + 40))();
  }

  if (v4)
  {
    return *v4;
  }

  v9 = 1;
  v10 = 0xFF7FFFFF7F7FFFFFLL;
  v12 = 0;
  v11 = 0;
  v13 = xmmword_1E3100EC0;
  v14 = xmmword_1E3100ED0;
  v15 = 0;
  v16 = 0;
  re::DynamicArray<re::CustomStatsLineInfo>::add((this + 120), &v7);
  if (v7)
  {
    if (v8)
    {
      (*(*v7 + 40))();
    }
  }

  v7 = *(this + 17) - 1;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(this + 72, a2, &v7);
  return *(this + 17) - 1;
}

void *re::FrameCustomStats::updateText(void *this, unint64_t a2, const char *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (this[17] > a2)
  {
    v5 = this;
    v6 = v5[17];
    if (v6 <= a2)
    {
      v9 = 0;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v10 = 136315906;
      v11 = "operator[]";
      v12 = 1024;
      v13 = 789;
      v14 = 2048;
      v15 = a2;
      v16 = 2048;
      v17 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    re::DynamicString::operator=((v5[19] + 104 * a2), &v7);
    this = v7;
    if (v7)
    {
      if (v8)
      {
        return (*(*v7 + 40))();
      }
    }
  }

  return this;
}

unint64_t re::FrameCustomStats::dumpStatisticsInternal(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  result = re::HashTable<unsigned int,re::FrameStatisticsOutput,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](a2, &v12);
  v4 = result;
  if (*(result + 8))
  {
    *(result + 8) = 1;
    v5 = *(result + 16);
  }

  else
  {
    *(result + 8) = 0;
    v5 = (result + 9);
  }

  *v5 = 0;
  v6 = *(a1 + 136);
  if (v6)
  {
    v7 = 0;
    v8 = *(a1 + 152);
    do
    {
      v9 = v8 + v7;
      *(v9 + 60) = *(v8 + v7 + 36);
      *(v9 + 76) = *(v8 + v7 + 52);
      *(v9 + 36) = xmmword_1E3100EE0;
      *(v9 + 52) = 0;
      if (*(v8 + v7 + 32) == 1)
      {
        if (*(v9 + 33) == 1)
        {
          if (*(v9 + 8))
          {
            v10 = *(v8 + v7 + 16);
          }

          else
          {
            v10 = (v8 + v7 + 9);
          }

          result = re::DynamicString::appendf(v4, "\n%.15s: ", v10);
          if (*(v9 + 72) != 0.0)
          {
            result = re::DynamicString::appendf(v4, "%.2f, Min/Max[%.2f-%.2f],", *(v9 + 76), *(v9 + 60), *(v9 + 64));
          }

          if (*(v8 + v7 + 92) != 0.0)
          {
            result = re::DynamicString::appendf(v4, "LT Min/Max[%.2f-%.2f]");
          }
        }

        else
        {
          result = re::DynamicString::appendf(v4, "\n%.70s");
        }
      }

      v7 += 104;
    }

    while (104 * v6 != v7);
  }

  *(v4 + 36) = 0x20000000003CLL;
  if (v6 <= 0xB)
  {
    v11 = 11;
  }

  else
  {
    v11 = v6;
  }

  *(v4 + 32) = v11;
  return result;
}

uint64_t re::FrameAttributionStats::dumpStatisticsInternal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  info.numer = 0;
  v6 = re::HashTable<unsigned int,re::FrameStatisticsOutput,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](a2, &info);
  v7 = v6;
  if (v6[1])
  {
    v6[1] = 1;
    v8 = v6[2];
  }

  else
  {
    *(v6 + 8) = 0;
    v8 = v6 + 9;
  }

  *v8 = 0;
  re::DynamicString::appendf(v6, "Attribution Statistics\n");
  v9 = 0x7FFFFFFFLL;
  if (*a4)
  {
    v10 = *(*(a4 + 8) + 4 * (0x8AEB093D93E71BBFLL % *(a4 + 24)));
    if (v10 != 0x7FFFFFFF)
    {
      v11 = *(a4 + 16);
      v9 = 0x7FFFFFFFLL;
      while (*(v11 + 80 * v10 + 4) != 122)
      {
        v10 = *(v11 + 80 * v10) & 0x7FFFFFFF;
        if (v10 == 0x7FFFFFFF)
        {
          goto LABEL_11;
        }
      }

      v9 = v10;
    }
  }

LABEL_11:
  v12 = *(*(a4 + 16) + 80 * v9 + 40);
  v13 = *(a1 + 8);
  v14 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v17 = NAN;
      goto LABEL_16;
    }

    LODWORD(v15) = info.numer;
    LODWORD(v16) = info.denom;
    v14 = v15 / v16;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v14;
  }

  v17 = v14 * (v12 / v13);
LABEL_16:
  if (!*a4)
  {
    v18 = *(a4 + 16);
    goto LABEL_22;
  }

  v18 = *(a4 + 16);
  v19 = *(*(a4 + 8) + 4 * (0x178631649EA56D8AuLL % *(a4 + 24)));
  if (v19 == 0x7FFFFFFF)
  {
LABEL_22:
    v19 = 0x7FFFFFFFLL;
    goto LABEL_23;
  }

  while (*(v18 + 80 * v19 + 4) != 120)
  {
    v19 = *(v18 + 80 * v19) & 0x7FFFFFFF;
    if (v19 == 0x7FFFFFFF)
    {
      goto LABEL_22;
    }
  }

LABEL_23:
  v20 = *(v18 + 80 * v19 + 40);
  v21 = *(a1 + 8);
  v22 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v25 = NAN;
      goto LABEL_28;
    }

    LODWORD(v23) = info.numer;
    LODWORD(v24) = info.denom;
    v22 = v23 / v24;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v22;
  }

  v25 = v22 * (v20 / v21);
LABEL_28:
  if (!*a4)
  {
    v26 = *(a4 + 16);
    goto LABEL_34;
  }

  v26 = *(a4 + 16);
  v27 = *(*(a4 + 8) + 4 * (0x2D2898CE1F8CEF8EuLL % *(a4 + 24)));
  if (v27 == 0x7FFFFFFF)
  {
LABEL_34:
    v27 = 0x7FFFFFFFLL;
    goto LABEL_35;
  }

  while (*(v26 + 80 * v27 + 4) != 125)
  {
    v27 = *(v26 + 80 * v27) & 0x7FFFFFFF;
    if (v27 == 0x7FFFFFFF)
    {
      goto LABEL_34;
    }
  }

LABEL_35:
  v28 = *(v26 + 80 * v27 + 40);
  v29 = *(a1 + 8);
  v30 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v33 = NAN;
      goto LABEL_40;
    }

    LODWORD(v31) = info.numer;
    LODWORD(v32) = info.denom;
    v30 = v31 / v32;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v30;
  }

  v33 = v30 * (v28 / v29);
LABEL_40:
  if (!*a4)
  {
    v34 = *(a4 + 16);
    goto LABEL_46;
  }

  v34 = *(a4 + 16);
  v35 = *(*(a4 + 8) + 4 * (0x8BC946409C88CB8FLL % *(a4 + 24)));
  if (v35 == 0x7FFFFFFF)
  {
LABEL_46:
    v35 = 0x7FFFFFFFLL;
    goto LABEL_47;
  }

  while (*(v34 + 80 * v35 + 4) != 121)
  {
    v35 = *(v34 + 80 * v35) & 0x7FFFFFFF;
    if (v35 == 0x7FFFFFFF)
    {
      goto LABEL_46;
    }
  }

LABEL_47:
  v36 = *(v34 + 80 * v35 + 40);
  v37 = *(a1 + 8);
  v38 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v41 = NAN;
      goto LABEL_52;
    }

    LODWORD(v39) = info.numer;
    LODWORD(v40) = info.denom;
    v38 = v39 / v40;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v38;
  }

  v41 = v38 * (v36 / v37);
LABEL_52:
  if (!*a4)
  {
    v42 = *(a4 + 16);
    goto LABEL_58;
  }

  v42 = *(a4 + 16);
  v43 = *(*(a4 + 8) + 4 * (0xEAD39EBF60CC176uLL % *(a4 + 24)));
  if (v43 == 0x7FFFFFFF)
  {
LABEL_58:
    v43 = 0x7FFFFFFFLL;
    goto LABEL_59;
  }

  while (*(v42 + 80 * v43 + 4) != 124)
  {
    v43 = *(v42 + 80 * v43) & 0x7FFFFFFF;
    if (v43 == 0x7FFFFFFF)
    {
      goto LABEL_58;
    }
  }

LABEL_59:
  v44 = *(v42 + 80 * v43 + 40);
  v45 = *(a1 + 8);
  v46 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v49 = NAN;
      goto LABEL_64;
    }

    LODWORD(v47) = info.numer;
    LODWORD(v48) = info.denom;
    v46 = v47 / v48;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v46;
  }

  v49 = v46 * (v44 / v45);
LABEL_64:
  if (!*a4)
  {
    v50 = *(a4 + 16);
    goto LABEL_70;
  }

  v50 = *(a4 + 16);
  v51 = *(*(a4 + 8) + 4 * (0xE2E7890052504D85 % *(a4 + 24)));
  if (v51 == 0x7FFFFFFF)
  {
LABEL_70:
    v51 = 0x7FFFFFFFLL;
    goto LABEL_71;
  }

  while (*(v50 + 80 * v51 + 4) != 131)
  {
    v51 = *(v50 + 80 * v51) & 0x7FFFFFFF;
    if (v51 == 0x7FFFFFFF)
    {
      goto LABEL_70;
    }
  }

LABEL_71:
  v52 = *(v50 + 80 * v51 + 40);
  v53 = *(a1 + 8);
  v54 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale >= 0.0)
  {
LABEL_75:
    v57 = v54 * (v52 / v53);
    goto LABEL_76;
  }

  if (!mach_timebase_info(&info))
  {
    LODWORD(v55) = info.numer;
    LODWORD(v56) = info.denom;
    v54 = v55 / v56;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v54;
    goto LABEL_75;
  }

  v57 = NAN;
LABEL_76:
  v58 = v49 / 1000000.0;
  v59 = v41 / 1000000.0;
  v60 = v33 / 1000000.0;
  v61 = v25 / 1000000.0;
  v62 = v17 / 1000000.0;
  v63 = v57 / 1000000.0;
  re::DynamicString::appendf(v7, "CPU Time %.2f\n", (((((v62 + v61) + v60) + v59) + v58) + v63));
  re::DynamicString::appendf(v7, "Animation %.2f\n", v60);
  re::DynamicString::appendf(v7, "Audio %.2f\n", v61);
  re::DynamicString::appendf(v7, "Rendering %.2f\n", v62);
  re::DynamicString::appendf(v7, "Network %.2f\n", v58);
  re::DynamicString::appendf(v7, "Physics %.2f\n", v59);
  result = re::DynamicString::appendf(v7, "Misc %.2f\n", v63);
  *(v7 + 8) = 8;
  return result;
}

double re::FrameVFXStats::dumpStatisticsInternal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  info.numer = 0;
  v5 = re::HashTable<unsigned int,re::FrameStatisticsOutput,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](a2, &info);
  v6 = v5;
  if (v5[1])
  {
    v5[1] = 1;
    v7 = v5[2];
  }

  else
  {
    *(v5 + 8) = 0;
    v7 = v5 + 9;
  }

  *v7 = 0;
  re::DynamicString::append(v5, "VFX Stats\n", 0xAuLL);
  v8 = 0x7FFFFFFFLL;
  if (*a3)
  {
    v9 = *(*(a3 + 8) + 4 * (0xD12374540570B1A6 % *(a3 + 24)));
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(a3 + 16);
      v8 = 0x7FFFFFFFLL;
      while (*(v10 + 80 * v9 + 4) != 130)
      {
        v9 = *(v10 + 80 * v9) & 0x7FFFFFFF;
        if (v9 == 0x7FFFFFFF)
        {
          goto LABEL_11;
        }
      }

      v8 = v9;
    }
  }

LABEL_11:
  v11 = *(*(a3 + 16) + 80 * v8 + 40);
  v12 = *(a1 + 8);
  v13 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v16 = NAN;
      goto LABEL_16;
    }

    LODWORD(v14) = info.numer;
    LODWORD(v15) = info.denom;
    v13 = v14 / v15;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v13;
  }

  v16 = v13 * (v11 / v12);
LABEL_16:
  v17 = v16 / 1000000.0;
  if (!*a3)
  {
    v18 = *(a3 + 16);
    goto LABEL_22;
  }

  v18 = *(a3 + 16);
  v19 = *(*(a3 + 8) + 4 * (0xD732B4173198B1FuLL % *(a3 + 24)));
  if (v19 == 0x7FFFFFFF)
  {
LABEL_22:
    v19 = 0x7FFFFFFFLL;
    goto LABEL_23;
  }

  while (*(v18 + 80 * v19 + 4) != 149)
  {
    v19 = *(v18 + 80 * v19) & 0x7FFFFFFF;
    if (v19 == 0x7FFFFFFF)
    {
      goto LABEL_22;
    }
  }

LABEL_23:
  re::DynamicString::appendf(v6, "VFX ECS (ms): %.2f    VFX Scene Components: %.0f\n", v17, (*(v18 + 80 * v19 + 40) / *(a1 + 8)));
  if (!*a3)
  {
    v20 = *(a3 + 16);
    goto LABEL_29;
  }

  v20 = *(a3 + 16);
  v21 = *(*(a3 + 8) + 4 * (0x3465840D39B46BB3uLL % *(a3 + 24)));
  if (v21 == 0x7FFFFFFF)
  {
LABEL_29:
    v21 = 0x7FFFFFFFLL;
    goto LABEL_30;
  }

  while (*(v20 + 80 * v21 + 4) != 150)
  {
    v21 = *(v20 + 80 * v21) & 0x7FFFFFFF;
    if (v21 == 0x7FFFFFFF)
    {
      goto LABEL_29;
    }
  }

LABEL_30:
  v22 = *(v20 + 80 * v21 + 40);
  v23 = *(a1 + 8);
  v24 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v27 = NAN;
      goto LABEL_35;
    }

    LODWORD(v25) = info.numer;
    LODWORD(v26) = info.denom;
    v24 = v25 / v26;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v24;
  }

  v27 = v24 * (v22 / v23);
LABEL_35:
  v28 = v27 / 1000000.0;
  if (!*a3)
  {
    v29 = *(a3 + 16);
    goto LABEL_41;
  }

  v29 = *(a3 + 16);
  v30 = *(*(a3 + 8) + 4 * (0xB3CC71E5DDF6EBC3 % *(a3 + 24)));
  if (v30 == 0x7FFFFFFF)
  {
LABEL_41:
    v30 = 0x7FFFFFFFLL;
    goto LABEL_42;
  }

  while (*(v29 + 80 * v30 + 4) != 151)
  {
    v30 = *(v29 + 80 * v30) & 0x7FFFFFFF;
    if (v30 == 0x7FFFFFFF)
    {
      goto LABEL_41;
    }
  }

LABEL_42:
  re::DynamicString::appendf(v6, "VFX Render Node (ms): %.2f    VFX Draw Calls : %.0f\n", v28, (*(v29 + 80 * v30 + 40) / *(a1 + 8)));
  if (!*a3)
  {
    v32 = *(a3 + 16);
    v36 = *(v32 + 0x27FFFFFFD8);
    v37 = *(a1 + 8);
LABEL_55:
    v39 = 0x7FFFFFFFLL;
    goto LABEL_56;
  }

  v31 = *(a3 + 24);
  v33 = *(a3 + 8);
  v32 = *(a3 + 16);
  v34 = *(v33 + 4 * (0x76FE0174DADB77ALL % v31));
  if (v34 == 0x7FFFFFFF)
  {
    v35 = (v32 + 0x27FFFFFFD8);
  }

  else
  {
    v38 = 0x7FFFFFFFLL;
    while (*(v32 + 80 * v34 + 4) != 152)
    {
      v34 = *(v32 + 80 * v34) & 0x7FFFFFFF;
      if (v34 == 0x7FFFFFFF)
      {
        goto LABEL_51;
      }
    }

    v38 = v34;
LABEL_51:
    v35 = (v32 + 80 * v38 + 40);
  }

  v36 = *v35;
  v37 = *(a1 + 8);
  v39 = *(v33 + 4 * (0x4B73DAB7CD5C5CDDLL % v31));
  if (v39 == 0x7FFFFFFF)
  {
    goto LABEL_55;
  }

  while (*(v32 + 80 * v39 + 4) != 153)
  {
    v39 = *(v32 + 80 * v39) & 0x7FFFFFFF;
    if (v39 == 0x7FFFFFFF)
    {
      goto LABEL_55;
    }
  }

LABEL_56:
  re::DynamicString::appendf(v6, "VFX Vert Count: %.0f    VFX Tri Count : %.0f\n", (v36 / v37), (*(v32 + 80 * v39 + 40) / v37));
  *&result = 0x2000000000032;
  *(v6 + 36) = 0x2000000000032;
  return result;
}

void re::FrameTimeStats::~FrameTimeStats(re::FrameTimeStats *this)
{
  *this = &unk_1F5D0DFE0;
  *(this + 64) = 0;
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 2);
}

{
  *this = &unk_1F5D0DFE0;
  *(this + 64) = 0;
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 2);

  JUMPOUT(0x1E6906520);
}

void re::FrameAnimationStats::~FrameAnimationStats(re::FrameAnimationStats *this)
{
  *this = &unk_1F5D0DFE0;
  *(this + 64) = 0;
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 2);
}

{
  *this = &unk_1F5D0DFE0;
  *(this + 64) = 0;
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 2);

  JUMPOUT(0x1E6906520);
}

void re::FrameAssetStats::~FrameAssetStats(re::FrameAssetStats *this)
{
  *this = &unk_1F5D0DFE0;
  *(this + 64) = 0;
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 2);
}

{
  *this = &unk_1F5D0DFE0;
  *(this + 64) = 0;
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 2);

  JUMPOUT(0x1E6906520);
}

void re::FrameAudioStats::~FrameAudioStats(re::FrameAudioStats *this)
{
  *this = &unk_1F5D0DFE0;
  *(this + 64) = 0;
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 2);
}

{
  *this = &unk_1F5D0DFE0;
  *(this + 64) = 0;
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 2);

  JUMPOUT(0x1E6906520);
}

void re::FrameECSStats::~FrameECSStats(re::FrameECSStats *this)
{
  *this = &unk_1F5D0DFE0;
  *(this + 64) = 0;
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 2);
}

{
  *this = &unk_1F5D0DFE0;
  *(this + 64) = 0;
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 2);

  JUMPOUT(0x1E6906520);
}

void re::FrameMeshStats::~FrameMeshStats(re::FrameMeshStats *this)
{
  *this = &unk_1F5D0DFE0;
  *(this + 64) = 0;
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 2);
}

{
  *this = &unk_1F5D0DFE0;
  *(this + 64) = 0;
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 2);

  JUMPOUT(0x1E6906520);
}

void re::FrameNetworkStats::~FrameNetworkStats(re::FrameNetworkStats *this)
{
  *this = &unk_1F5D0DFE0;
  *(this + 64) = 0;
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 2);
}

{
  *this = &unk_1F5D0DFE0;
  *(this + 64) = 0;
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 2);

  JUMPOUT(0x1E6906520);
}

void re::FramePhysicsStats::~FramePhysicsStats(re::FramePhysicsStats *this)
{
  *this = &unk_1F5D0DFE0;
  *(this + 64) = 0;
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 2);
}

{
  *this = &unk_1F5D0DFE0;
  *(this + 64) = 0;
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 2);

  JUMPOUT(0x1E6906520);
}

void re::FrameRenderingStats::~FrameRenderingStats(re::FrameRenderingStats *this)
{
  *this = &unk_1F5D0DFE0;
  *(this + 64) = 0;
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 2);
}

{
  *this = &unk_1F5D0DFE0;
  *(this + 64) = 0;
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 2);

  JUMPOUT(0x1E6906520);
}

void re::FrameMemoryStats::~FrameMemoryStats(re::FrameMemoryStats *this)
{
  *this = &unk_1F5D0DFE0;
  *(this + 64) = 0;
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 2);
}

{
  *this = &unk_1F5D0DFE0;
  *(this + 64) = 0;
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 2);

  JUMPOUT(0x1E6906520);
}

void re::FrameThermalStats::~FrameThermalStats(re::FrameThermalStats *this)
{
  *this = &unk_1F5D0DFE0;
  *(this + 64) = 0;
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 2);
}

{
  *this = &unk_1F5D0DFE0;
  *(this + 64) = 0;
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 2);

  JUMPOUT(0x1E6906520);
}

void re::FrameSceneUnderstandingStats::~FrameSceneUnderstandingStats(re::FrameSceneUnderstandingStats *this)
{
  *this = &unk_1F5D0DFE0;
  *(this + 64) = 0;
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 2);
}

{
  *this = &unk_1F5D0DFE0;
  *(this + 64) = 0;
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 2);

  JUMPOUT(0x1E6906520);
}

void re::FrameAttributionStats::~FrameAttributionStats(re::FrameAttributionStats *this)
{
  *this = &unk_1F5D0DFE0;
  *(this + 64) = 0;
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 2);
}

{
  *this = &unk_1F5D0DFE0;
  *(this + 64) = 0;
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 2);

  JUMPOUT(0x1E6906520);
}

void re::FrameVFXStats::~FrameVFXStats(re::FrameVFXStats *this)
{
  *this = &unk_1F5D0DFE0;
  *(this + 64) = 0;
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 2);
}

{
  *this = &unk_1F5D0DFE0;
  *(this + 64) = 0;
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 2);

  JUMPOUT(0x1E6906520);
}

void re::HashTable<unsigned int,re::FrameStatisticsOutput,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_165_0, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = *(a1 + 16);
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::DynamicString::deinit((v6 + v4 + 8));
          v3 = *(a1 + 32);
        }

        v4 += 64;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}

void *re::DynamicArray<re::CustomStatsLineInfo>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::CustomStatsLineInfo>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x68uLL))
        {
          v2 = 104 * a2;
          result = (*(*result + 32))(result, 104 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 104, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = (v8 + 104 * v9);
        v11 = (v7 + 36);
        v12 = (v8 + 36);
        do
        {
          *(v11 - 20) = 0u;
          *(v11 - 36) = 0u;
          *(v11 - 36) = *(v12 - 36);
          *(v12 - 36) = 0;
          v13 = *(v11 - 20);
          *(v11 - 20) = *(v12 - 20);
          *(v12 - 20) = v13;
          *(v11 - 12) = *(v12 - 12);
          *(v12 - 12) = 0;
          v14 = *(v11 - 28);
          *(v11 - 28) = *(v12 - 28);
          *(v12 - 28) = v14;
          *(v11 - 2) = *(v12 - 2);
          re::FrameStats::CollectedStatistics::CollectedStatistics(v11, v12);
          re::DynamicString::deinit((v12 - 36));
          v11 = (v11 + 104);
          v15 = v12 + 68;
          v12 = (v12 + 104);
        }

        while (v15 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::DynamicArray<re::CustomStatsLineInfo>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::CustomStatsLineInfo>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::CustomStatsLineInfo>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t re::profilerThreadContext(re *this)
{
  if ((*v2 & 1) == 0)
  {
    re::ProfilerThreadContext::ProfilerThreadContext(v2);
    v4 = re::profilerThreadContext(void)::context(&re::profilerThreadContext(void)::context);
    _tlv_atexit(re::ProfilerThreadContext::~ProfilerThreadContext, v4);
  }

  return re::profilerThreadContext(void)::context(&re::profilerThreadContext(void)::context);
}

void re::ProfilerThreadContext::~ProfilerThreadContext(re::ProfilerThreadContext *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    *(this + 10) = v4;
    operator delete(v4);
  }
}

__n128 re::ProfilerThreadContext::ProfilerThreadContext(re::ProfilerThreadContext *this)
{
  v1 = re::profilerThreadContext(void)::context;
  v2 = re::profilerThreadContext(void)::context(&re::profilerThreadContext(void)::context);
  *v2 = 0;
  *(v2 + 64) = atomic_fetch_add(&re::ProfilerThreadContext::s_threadId, 1uLL);
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 184) = 0;
  v3 = pthread_self();
  if (pthread_getname_np(v3, v2, 0x40uLL))
  {
    v4 = 0;
  }

  else
  {
    v4 = *v2 == 0;
  }

  if (v4)
  {
    v8 = pthread_self();
    v5 = v1(&re::profilerThreadContext(void)::context);
    snprintf(v5, 0x40uLL, "Thread %p", v8);
  }

  v6 = v1(&re::profilerThreadContext(void)::context);
  *(v6 + 176) = 0;
  result = 0uLL;
  *(v6 + 144) = 0u;
  *(v6 + 160) = 0u;
  if (*(v6 + 112) - *(v6 + 96) <= 0x1FuLL)
  {
    v1(&re::profilerThreadContext(void)::context);
    operator new();
  }

  return result;
}

void re::ProfilerThreadContext::begin(re::ProfilerThreadContext *this, re::ProfilerManager *a2, uint64_t a3, int a4)
{
  *(this + 184) = 1;
  v8 = re::ProfilerManager::acquireEventStream(a2, a4);
  v9 = re::ProfilerManager::acquireStatistics(a2, a4);
  v10 = re::ProfilerManager::acquireAttributions(a2, a4);
  v11 = re::ProfilerManager::acquireVisualizer(a2);
  v12 = re::ProfilerManager::acquireMemoryStatistics(a2, a4);
  v13 = v12;
  v14 = *(this + 10);
  v15 = *(this + 11);
  if (v14 >= v15)
  {
    v25 = a3;
    v17 = *(this + 9);
    v18 = v14 - v17;
    v19 = 0x6DB6DB6DB6DB6DB7 * ((v14 - v17) >> 3);
    v20 = v19 + 1;
    if ((v19 + 1) > 0x492492492492492)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v21 = 0x6DB6DB6DB6DB6DB7 * ((v15 - v17) >> 3);
    if (2 * v21 > v20)
    {
      v20 = 2 * v21;
    }

    if (v21 >= 0x249249249249249)
    {
      v22 = 0x492492492492492;
    }

    else
    {
      v22 = v20;
    }

    if (v22)
    {
      if (v22 <= 0x492492492492492)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v23 = 56 * v19;
    *v23 = v25;
    *(v23 + 8) = a2;
    *(v23 + 16) = v8;
    *(v23 + 24) = v9;
    *(v23 + 32) = v10;
    *(v23 + 40) = v11;
    *(v23 + 48) = v12;
    v16 = 56 * v19 + 56;
    v24 = (56 * v19 - v18);
    memcpy(v24, v17, v18);
    *(this + 9) = v24;
    *(this + 10) = v16;
    *(this + 11) = 0;
    if (v17)
    {
      operator delete(v17);
    }

    a3 = v25;
  }

  else
  {
    *v14 = a3;
    *(v14 + 1) = a2;
    *(v14 + 2) = v8;
    *(v14 + 3) = v9;
    *(v14 + 4) = v10;
    *(v14 + 5) = v11;
    v16 = (v14 + 56);
    *(v14 + 6) = v12;
  }

  *(this + 10) = v16;
  *(this + 18) = v8;
  *(this + 19) = v9;
  *(this + 20) = v10;
  *(this + 21) = v11;
  *(this + 22) = v13;
  if (v9)
  {
    *(v9 + 8) = a3;
  }

  *(this + 184) = 0;
}

void re::ProfilerThreadContext::end(re::ProfilerThreadContext *this)
{
  *(this + 184) = 1;
  v2 = *(this + 10);
  if (*(this + 9) == v2)
  {
    v10 = *re::foundationProfilingLogObjects(this);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Unbalanced calls to ProfilerThreadContext begin and end.", v11, 2u);
    }

    goto LABEL_16;
  }

  v3 = *(v2 - 40);
  if (v3)
  {
    re::ProfilerManager::submit(*(v2 - 48), v3);
  }

  v4 = *(v2 - 32);
  if (v4)
  {
    re::ProfilerManager::submit(*(v2 - 48), v4);
  }

  v5 = *(v2 - 24);
  if (v5)
  {
    re::ProfilerManager::submit(*(v2 - 48), v5);
  }

  v6 = *(v2 - 16);
  if (v6)
  {
    re::ProfilerManager::submit(*(v2 - 48), v6);
  }

  v7 = *(v2 - 8);
  if (v7)
  {
    re::ProfilerManager::submit(*(v2 - 48), v7);
  }

  v9 = *(this + 9);
  v8 = *(this + 10);
  *(this + 10) = v8 - 56;
  if (v9 == v8 - 56)
  {
LABEL_16:
    *(this + 22) = 0;
    *(this + 9) = 0u;
    *(this + 10) = 0u;
    goto LABEL_17;
  }

  *(this + 9) = *(v8 - 96);
  *(this + 10) = *(v8 - 80);
  *(this + 22) = *(v8 - 64);
LABEL_17:
  *(this + 184) = 0;
}

uint64_t re::ProfilerConfig::isStatisticCollectionEnabled(re::ProfilerConfig *this)
{
  v3 = &re::introspect_BOOL(BOOL)::info;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::introspect_BOOL(BOOL)::info;
    if (v5)
    {
      re::Defaults::BOOLValue("profiler.statisticcollection.enable", v6, v8);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 1;
      }

      re::ProfilerConfig::isStatisticCollectionEnabled(void)::enabled = v7;
      v3 = &re::introspect_BOOL(BOOL)::info;
    }
  }

  return v3[208];
}

uint64_t re::internal::PerfStats::beginStatisticsCollection(integer_t *this)
{
  if (*(this + 929) == 1)
  {

    return puts("Starting perf stats already collected");
  }

  else
  {
    v11 = v1;
    v12 = v2;
    re::internal::enableMemoryStatsCollection(this);
    v5 = getpid();
    this[233] = proc_pid_rusage(v5, 4, this) == 0;
    v6 = this[237];
    if (v6 == 31 || v6 == 4)
    {
      host_info64_outCnt = 40;
      v8 = MEMORY[0x1E69071F0]();
      if (host_statistics64(v8, 4, this + 148, &host_info64_outCnt))
      {
        printf("failed to get statistics. error %d", 1);
        v9 = 0;
      }

      else
      {
        v9 = 1;
      }

      this[235] = v9;
    }

    result = mach_absolute_time();
    *(this + 114) = result;
    *(this + 929) = 1;
  }

  return result;
}

void re::internal::PerfStats::endStatisticsCollection(re::internal::PerfStats *this, int a2)
{
  if (*(this + 930) == 1)
  {

    puts("Ending perf stats already collected");
  }

  else
  {
    v23 = v2;
    v24 = v3;
    *(this + 115) = mach_absolute_time();
    v6 = getpid();
    v7 = proc_pid_rusage(v6, 4, this + 37);
    *(this + 234) = v7 == 0;
    v8 = *(this + 237);
    if (v8 == 31 || v8 == 4)
    {
      host_info64_outCnt = 40;
      v10 = MEMORY[0x1E69071F0]();
      v7 = host_statistics64(v10, 4, this + 188, &host_info64_outCnt);
      if (v7)
      {
        v7 = printf("failed to get statistics. error %d", 1);
        v11 = 0;
      }

      else
      {
        v11 = 1;
      }

      *(this + 236) = v11;
    }

    re::internal::disableMemoryStatsCollection(v7);
    *(this + 122) = v12;
    *(this + 123) = v13;
    *(this + 124) = v14;
    *(this + 125) = v15;
    *(this + 126) = v16;
    *(this + 127) = v17;
    *(this + 128) = v18;
    *(this + 129) = v19;
    *(this + 130) = v20;
    *(this + 131) = v21;
    *(this + 930) = 1;
    if (*(this + 233) && *(this + 234))
    {
      if (a2)
      {
        re::internal::PerfStats::printStatistics(this, *(this + 237));
      }

      if (*(this + 928) == 1)
      {
        re::internal::PerfStats::dumpToJson(this, *(this + 237));
      }
    }
  }
}

re::internal::PerfStats *re::internal::PerfStats::printStatistics(re::internal::PerfStats *this, int a2)
{
  v2 = this;
  if (a2 <= 3)
  {
    if (a2 == 1)
    {

      return re::internal::PerfStats::printCPUStatistics(this);
    }

    else
    {
      if (a2 != 2)
      {
        if (a2 != 3)
        {
          return this;
        }

        re::internal::PerfStats::printCPUStatistics(this);
      }

      return re::internal::PerfStats::printMemoryStatistics(v2);
    }
  }

  else if (a2 > 15)
  {
    if (a2 != 16)
    {
      if (a2 != 31)
      {
        return this;
      }

      re::internal::PerfStats::printCPUStatistics(this);
      re::internal::PerfStats::printQoSStatistics(v2);
      re::internal::PerfStats::printMemoryStatistics(v2);
      re::internal::PerfStats::printVMPagingStatistics(v2);
    }

    return re::internal::PerfStats::printDiskStatistics(v2);
  }

  else if (a2 == 4)
  {

    return re::internal::PerfStats::printVMPagingStatistics(this);
  }

  else if (a2 == 8)
  {

    return re::internal::PerfStats::printQoSStatistics(this);
  }

  return this;
}

uint64_t re::internal::PerfStats::dumpToJson(uint64_t a1, int a2)
{
  v28[19] = *MEMORY[0x1E69E9840];
  v28[6] = 0;
  v4 = MEMORY[0x1E69E5530] + 24;
  v5 = MEMORY[0x1E69E5530] + 64;
  v28[0] = MEMORY[0x1E69E5530] + 64;
  v6 = MEMORY[0x1E69E54D0];
  v7 = *(MEMORY[0x1E69E54D0] + 16);
  v26 = *(MEMORY[0x1E69E54D0] + 8);
  *(&v27[-1] + *(v26 - 24)) = v7;
  v8 = (&v27[-1] + *(v26 - 24));
  std::ios_base::init(v8, v27);
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v26 = v4;
  v28[0] = v5;
  MEMORY[0x1E6906010](v27);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((&v27[-1] + *(v26 - 24)), *(&v27[3] + *(v26 - 24)) | 4);
  }

  if (!v27[15])
  {
    puts("\nError in opening results file....");
    goto LABEL_28;
  }

  puts("\nResults file opened....");
  v25[6] = 0;
  v9 = MEMORY[0x1E69E5528] + 24;
  v10 = MEMORY[0x1E69E5528] + 64;
  v25[0] = MEMORY[0x1E69E5528] + 64;
  v11 = *(MEMORY[0x1E69E54C8] + 16);
  v23[0] = *(MEMORY[0x1E69E54C8] + 8);
  *(v23 + *(v23[0] - 24)) = v11;
  v23[1] = 0;
  v12 = (v23 + *(v23[0] - 24));
  std::ios_base::init(v12, v24);
  v12[1].__vftable = 0;
  v12[1].__fmtflags_ = -1;
  v23[0] = v9;
  v25[0] = v10;
  MEMORY[0x1E6906010](v24);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((v23 + *(v23[0] - 24)), *&v24[*(v23[0] - 24) + 16] | 4);
  }

  std::istream::get();
  if ((*&v24[*(v23[0] - 24) + 16] & 2) != 0)
  {
    v13 = "[\n";
  }

  else
  {
    v13 = ",\n";
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v26, v13, 2);
  if (!std::filebuf::close())
  {
    std::ios_base::clear((v23 + *(v23[0] - 24)), *&v24[*(v23[0] - 24) + 16] | 4);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v26, "{\n", 2);
  v14 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v26, "\tModuleName : ", 17);
  v15 = strlen(*(a1 + 952));
  v16 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v14, *(a1 + 952), v15);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, ",\n", 3);
  v17 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v26, "\tTestName : ", 15);
  v18 = strlen(*(a1 + 960));
  v19 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v17, *(a1 + 960), v18);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v19, ",\n", 3);
  if (a2 > 7)
  {
    if (a2 == 8)
    {
      re::internal::PerfStats::addQoSStatisticsToJson(a1, &v26);
      goto LABEL_25;
    }

    if (a2 != 16)
    {
      if (a2 != 31)
      {
        goto LABEL_25;
      }

      re::internal::PerfStats::addCPUStatisticsToJson(a1, &v26);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v26, ",\n", 2);
      re::internal::PerfStats::addMemoryStatisticsToJson(a1, &v26);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v26, ",\n", 2);
      re::internal::PerfStats::addQoSStatisticsToJson(a1, &v26);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v26, ",\n", 2);
    }

    re::internal::PerfStats::addDiskStatisticsToJson(a1, &v26);
    goto LABEL_25;
  }

  switch(a2)
  {
    case 1:
      re::internal::PerfStats::addCPUStatisticsToJson(a1, &v26);
      break;
    case 2:
      goto LABEL_16;
    case 3:
      re::internal::PerfStats::addCPUStatisticsToJson(a1, &v26);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v26, ",\n", 2);
LABEL_16:
      re::internal::PerfStats::addMemoryStatisticsToJson(a1, &v26);
      break;
  }

LABEL_25:
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v26, "\n}", 2);
  v20 = getcwd(v22, 0x400uLL);
  printf("\nTrace file output in current working dir: %s\n", v20);
  if (!std::filebuf::close())
  {
    std::ios_base::clear((&v27[-1] + *(v26 - 24)), *(&v27[3] + *(v26 - 24)) | 4);
  }

  v23[0] = *MEMORY[0x1E69E54C8];
  *(v23 + *(v23[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1E6906020](v24);
  std::istream::~istream();
  MEMORY[0x1E6906460](v25);
LABEL_28:
  v26 = *v6;
  *(&v27[-1] + *(v26 - 24)) = v6[3];
  MEMORY[0x1E6906020](v27);
  std::ostream::~ostream();
  return MEMORY[0x1E6906460](v28);
}

uint64_t re::internal::PerfStats::printCPUStatistics(re::internal::PerfStats *this)
{
  v2 = *(this + 39);
  v3 = *(this + 40);
  v4 = *(this + 2);
  v5 = *(this + 3);
  v6 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v6 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      v9 = NAN;
      goto LABEL_6;
    }

    LODWORD(v7) = info.numer;
    LODWORD(v8) = info.denom;
    v6 = v7 / v8;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v6;
  }

  v9 = v6 * (v3 + v2 - (v4 + v5));
LABEL_6:
  v10 = *(this + 115);
  v11 = *(this + 114);
  if (v6 < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v14 = NAN;
      goto LABEL_11;
    }

    LODWORD(v12) = info.numer;
    LODWORD(v13) = info.denom;
    v6 = v12 / v13;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v6;
  }

  v14 = v6 * (v10 - v11);
LABEL_11:
  v15 = v9 / 1000000.0;
  v16 = v14 / 1000000.0;
  {
  }

  else
  {
    v17 = 100.0;
  }

  printf("\n-------------------\nModule : %s\n%s CPU Perf Stats\n-------------------\n", *(this + 119), *(this + 120));
  return puts("-------------------");
}

uint64_t re::internal::PerfStats::printQoSStatistics(const char **this)
{
  printf("\n-------------------\nModule : %s\n%s QoS Perf Stats\n-------------------\n", this[119], this[120]);
  v2 = this[57];
  v3 = this[20];
  v4 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v4 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      v7 = NAN;
      goto LABEL_6;
    }

    LODWORD(v5) = info.numer;
    LODWORD(v6) = info.denom;
    v4 = v5 / v6;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v4;
  }

  v7 = v4 * (v2 - v3);
LABEL_6:
  v8 = this[58];
  v9 = this[21];
  if (v4 < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v4 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      v12 = NAN;
      goto LABEL_11;
    }

    LODWORD(v10) = info.numer;
    LODWORD(v11) = info.denom;
    v4 = v10 / v11;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v4;
  }

  v12 = v4 * (v8 - v9);
LABEL_11:
  v13 = this[59];
  v14 = this[22];
  if (v4 < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v4 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      v17 = NAN;
      goto LABEL_16;
    }

    LODWORD(v15) = info.numer;
    LODWORD(v16) = info.denom;
    v4 = v15 / v16;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v4;
  }

  v17 = v4 * (v13 - v14);
LABEL_16:
  v18 = this[60];
  v19 = this[23];
  if (v4 < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v4 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      v22 = NAN;
      goto LABEL_21;
    }

    LODWORD(v20) = info.numer;
    LODWORD(v21) = info.denom;
    v4 = v20 / v21;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v4;
  }

  v22 = v4 * (v18 - v19);
LABEL_21:
  v23 = this[61];
  v24 = this[24];
  if (v4 < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v4 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      v27 = NAN;
      goto LABEL_26;
    }

    LODWORD(v25) = info.numer;
    LODWORD(v26) = info.denom;
    v4 = v25 / v26;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v4;
  }

  v27 = v4 * (v23 - v24);
LABEL_26:
  v28 = this[62];
  v29 = this[25];
  if (v4 < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v4 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      v32 = NAN;
      goto LABEL_31;
    }

    LODWORD(v30) = info.numer;
    LODWORD(v31) = info.denom;
    v4 = v30 / v31;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v4;
  }

  v32 = v4 * (v28 - v29);
LABEL_31:
  v33 = this[63];
  v34 = this[26];
  if (v4 >= 0.0)
  {
LABEL_35:
    v37 = v4 * (v33 - v34);
    goto LABEL_36;
  }

  if (!mach_timebase_info(&info))
  {
    LODWORD(v35) = info.numer;
    LODWORD(v36) = info.denom;
    v4 = v35 / v36;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v4;
    goto LABEL_35;
  }

  v37 = NAN;
LABEL_36:
  printf("QoS Threads CPU Scheduled Time\nDefault QoS Time [ms] : %f\nMaintenance QoS Time [ms] : %f\nBackground QoS Time [ms] : %f\nUtility QoS Time [ms] : %f\nLegacy QoS Time [ms] : %f\nUser Initiated QoS Time [ms] : %f\nUser Interactive QoS Time [ms] : %f\n", v7 / 1000000.0, v12 / 1000000.0, v17 / 1000000.0, v22 / 1000000.0, v27 / 1000000.0, v32 / 1000000.0, v37 / 1000000.0);
  return puts("-------------------");
}

uint64_t re::internal::PerfStats::printMemoryStatistics(re::internal::PerfStats *this)
{
  v2 = *(this + 46);
  v3 = *(this + 9);
  v4 = v3 - v2;
  v5 = v2 >= v3;
  v6 = v2 - v3;
  if (v5)
  {
    v7 = "Increase";
  }

  else
  {
    v7 = "Decrease";
  }

  if (!v5)
  {
    v6 = v4;
  }

  v8 = vcvtd_n_f64_u64(v6, 0xAuLL);
  v9 = vcvtd_n_f64_u64(*(this + 45) - *(this + 8), 0xAuLL);
  v10 = vcvtd_n_f64_u64(*(this + 44) - *(this + 7), 0xAuLL);
  printf("\n-------------------\nModule : %s\n%s Memory Perf Stats\n-------------------\n", *(this + 119), *(this + 120));
  printf("%s in Current Dirty Memory Footprint [kb] : %f\nPeak Dirty Memory Footprint [kb] : %f\n", v7, v8, *(this + 67) * 0.0009765625);
  printf("Increase in Current Resident Memory Footprint [kb] : %f\nIncrease in Current Wired Memory Footprint [kb] : %f\n", v9, v10);
  puts("\n-------- Malloc Allocation Stats --------");
  printf("Total Heap Allocations [kb] : %f\nTotal Heap Deallocations [kb] : %f\nPeak Heap Allocations [kb] : %f\n", *(this + 125) * 0.0009765625, *(this + 126) * 0.0009765625, *(this + 127) * 0.0009765625);
  printf("Total Heap Node Allocations: %llu\nTotal Heap Node Deallocations: %llu\n", *(this + 122), *(this + 123));
  printf("Total VM Allocations [kb] : %f\nTotal VM Deallocations [kb] : %f\nPeak VM Allocations [kb] : %f\n", *(this + 129) * 0.0009765625, *(this + 130) * 0.0009765625, *(this + 131) * 0.0009765625);

  return puts("-------------------");
}

uint64_t re::internal::PerfStats::printVMPagingStatistics(const char **this)
{
  printf("\n-------------------\nModule : %s\n%s Mach Virtual Memory Paging Stats : (page size of %llu bytes)\n-------------------\n", this[119], this[120], *MEMORY[0x1E69E9AB0]);
  printf("-----\nPages free at start : %u\nPages free at end : %u\nChange in free pages : %u\n-----\n", *(this + 148) - *(this + 171), *(this + 188) - *(this + 211), *(this + 171) - *(this + 211));
  printf("-----\nPages active at start : %u\nPages active at end : %u\nChange in active pages : %u\n-----\n", *(this + 149), *(this + 189), *(this + 189) - *(this + 149));
  printf("-----\nPages inactive at start : %u\nPages inactive at end : %u\nChange in inactive page s: %u\n-----\n", *(this + 150), *(this + 190), *(this + 190) - *(this + 150));
  printf("-----\nPages speculative at start : %u\nPages speculative at end : %u\nChange in speculative pages : %u\n-----\n", *(this + 171), *(this + 211), *(this + 211) - *(this + 171));
  printf("-----\nPages uncompressed in compressor at start : %llu\nPages uncompressed in compressor  at end : %llu\nChange in uncompressed pages in compressor  : %llu\n-----\n", this[92], this[112], this[112] - this[92]);
  printf("-----\nPages compressed in compressor at start : %u\nPages compressed in compressor at end : %u\nChange in compressed pages in compressor : %u\n-----\n", *(this + 180), *(this + 220), *(this + 220) - *(this + 180));
  printf("-----\nPages file backed at start : %u\nPages file backed at end : %u\nChange in pages file backed : %u\n-----\n", *(this + 182), *(this + 222), *(this + 222) - *(this + 182));
  printf("-----\nPages anonymous at start : %u\nPages anonymous at end : %u\nChange in anonymous pages : %u\n-----\n", *(this + 183), *(this + 223), *(this + 223) - *(this + 183));
  printf("-----\nPages throttled at start : %u\nPages throttled at end : %u\nChange in throttled pages : %u\n-----\n", *(this + 181), *(this + 221), *(this + 221) - *(this + 181));
  printf("-----\nPages wired down at start : %u\nPages wired down at end : %u\nChange in wired down pages : %u\n-----\n", *(this + 151), *(this + 191), *(this + 191) - *(this + 151));
  printf("-----\nPages purgeable at start : %u\nPages purgeable at end : %u\nChange in purgeable pages : %u\n-----\n", *(this + 170), *(this + 210), *(this + 210) - *(this + 170));
  printf("-----\nPage Faults : %llu\n-----\n", this[100] - this[80]);
  printf("-----\nPage CoW faults : %llu\n-----\n", this[101] - this[81]);
  printf("-----\nPages Zero Filled: %llu\n-----\n", this[96] - this[76]);
  printf("-----\nPages Reactivated : %llu\n-----\n", this[97] - this[77]);
  printf("-----\nPages Purged : %llu\n-----\n", this[104] - this[84]);
  printf("-----\nPages Decompressed : %llu\n-----\n", this[106] - this[86]);
  printf("-----\nPages Compressed : %llu\n-----\n", this[107] - this[87]);
  printf("-----\nPage Ins : %llu\n-----\n", this[98] - this[78]);
  printf("-----\nPage Outs : %llu\n-----\n", this[99] - this[79]);
  printf("-----\nPage Swap Ins : %llu\n-----\n", this[108] - this[88]);
  printf("-----\nPage Swap Outs : %llu\n-----\n", this[109] - this[89]);

  return puts("-------------------");
}

uint64_t re::internal::PerfStats::printDiskStatistics(const char **this)
{
  printf("\n-------------------\nModule : %s\n%s Disk Perf Stats\n-------------------\n", this[119], this[120]);
  printf("Total Bytes Read From Disk : %llu\nTotal Bytes Written To Disk : %llu\n", this[55] - this[18], this[56] - this[19]);

  return puts("-------------------");
}

uint64_t re::internal::PerfStats::addCPUStatisticsToJson(void *a1, void *a2)
{
  v4 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v4 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
    }

    else
    {
      LODWORD(v5) = info.numer;
      LODWORD(v6) = info.denom;
      v4 = v5 / v6;
      re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v4;
    }
  }

  if (v4 < 0.0 && !mach_timebase_info(&info))
  {
    LODWORD(v7) = info.numer;
    LODWORD(v8) = info.denom;
    *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = v7 / v8;
  }

  v9 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\tTotalCPUCoresAvailable : ", 28);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, ",\n", 2);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\tCPUUtil[%] : ", 16);
  v11 = std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, ",\n", 2);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\tTotalAbsoluteTime[ms] : ", 27);
  v12 = std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v12, ",\n", 2);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\tTotalCPUScheduledTime[ms] : ", 31);
  v13 = std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v13, ",\n", 2);
  v14 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\tTotalCPUInstructions : ", 26);
  v15 = MEMORY[0x1E6906120](v14, a1[68] - a1[31]);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, ",\n", 2);
  v16 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\tTotalCPUCycles : ", 20);
  return MEMORY[0x1E6906120](v16, a1[69] - a1[32]);
}

void re::internal::PerfStats::addMemoryStatisticsToJson(void *a1, void *a2)
{
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\tPeakDirtyMemoryFootprint[kb] : ", 34);
  v4 = std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v4, ",\n", 2);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\tDirtyMemoryIncrease[kb] : ", 29);
  v5 = std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, ",\n", 2);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\tResidentMemoryIncrease[kb] : ", 32);
  v6 = std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, ",\n", 2);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\tWiredMemoryIncrease[kb] : ", 29);
  v7 = std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, ",\n", 2);
  v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\tTotalHeapAllocations[kb] : ", 30);
  v9 = MEMORY[0x1E69060B0](v8, a1[125] * 0.0009765625);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, ",\n", 2);
  v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\tTotalHeapDeallocations[kb] : ", 32);
  v11 = MEMORY[0x1E69060B0](v10, a1[126] * 0.0009765625);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, ",\n", 2);
  v12 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\tPeakHeapAllocations[kb] : ", 29);
  v13 = MEMORY[0x1E69060B0](v12, a1[127] * 0.0009765625);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v13, ",\n", 2);
  v14 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\tTotalHeapNodeAllocations : ", 30);
  v15 = MEMORY[0x1E6906110](v14, a1[122]);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, ",\n", 2);
  v16 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\tTotalHeapNodeDeallocations : ", 32);
  v17 = MEMORY[0x1E6906110](v16, a1[123]);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v17, ",\n", 2);
  v18 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\tTotalVMAllocations[kb] : ", 28);
  v19 = MEMORY[0x1E69060B0](v18, a1[129] * 0.0009765625);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v19, ",\n", 2);
  v20 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\tTotalVMDeallocations[kb] : ", 30);
  v21 = MEMORY[0x1E69060B0](v20, a1[130] * 0.0009765625);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v21, ",\n", 2);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\tPeakVMAllocations[kb] : ", 27);

  JUMPOUT(0x1E69060B0);
}

uint64_t re::internal::PerfStats::addQoSStatisticsToJson(void *a1, void *a2)
{
  v4 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\tQoS-UserInitiated-CPUTime[ms] : ", 35);
  v5 = a1[62];
  v6 = a1[25];
  v7 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v10 = NAN;
      goto LABEL_6;
    }

    LODWORD(v8) = info.numer;
    LODWORD(v9) = info.denom;
    v7 = v8 / v9;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v7;
  }

  v10 = v7 * (v5 - v6);
LABEL_6:
  v11 = MEMORY[0x1E69060B0](v4, v10 / 1000000.0);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, ",\n", 2);
  v12 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\tQoS-UserInteractive-CPUTime[ms] : ", 37);
  v13 = a1[63];
  v14 = a1[26];
  v15 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v18 = NAN;
      goto LABEL_11;
    }

    LODWORD(v16) = info.numer;
    LODWORD(v17) = info.denom;
    v15 = v16 / v17;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v15;
  }

  v18 = v15 * (v13 - v14);
LABEL_11:
  v19 = MEMORY[0x1E69060B0](v12, v18 / 1000000.0);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v19, ",\n", 2);
  v20 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\tQoS-Default-CPUTime[ms] : ", 29);
  v21 = a1[57];
  v22 = a1[20];
  v23 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v26 = NAN;
      goto LABEL_16;
    }

    LODWORD(v24) = info.numer;
    LODWORD(v25) = info.denom;
    v23 = v24 / v25;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v23;
  }

  v26 = v23 * (v21 - v22);
LABEL_16:
  v27 = MEMORY[0x1E69060B0](v20, v26 / 1000000.0);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v27, ",\n", 2);
  v28 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\tQoS-Background-CPUTime[ms] : ", 32);
  v29 = a1[59];
  v30 = a1[22];
  v31 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v34 = NAN;
      goto LABEL_21;
    }

    LODWORD(v32) = info.numer;
    LODWORD(v33) = info.denom;
    v31 = v32 / v33;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v31;
  }

  v34 = v31 * (v29 - v30);
LABEL_21:
  v35 = MEMORY[0x1E69060B0](v28, v34 / 1000000.0);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v35, ",\n", 2);
  v36 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\tQoS-Utility-CPUTime[ms] : ", 29);
  v37 = a1[60];
  v38 = a1[23];
  v39 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v42 = NAN;
      goto LABEL_26;
    }

    LODWORD(v40) = info.numer;
    LODWORD(v41) = info.denom;
    v39 = v40 / v41;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v39;
  }

  v42 = v39 * (v37 - v38);
LABEL_26:
  v43 = MEMORY[0x1E69060B0](v36, v42 / 1000000.0);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v43, ",\n", 2);
  v44 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\tQoS-Maintenance-CPUTime[ms] : ", 33);
  v45 = a1[58];
  v46 = a1[21];
  v47 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v50 = NAN;
      goto LABEL_31;
    }

    LODWORD(v48) = info.numer;
    LODWORD(v49) = info.denom;
    v47 = v48 / v49;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v47;
  }

  v50 = v47 * (v45 - v46);
LABEL_31:
  v51 = MEMORY[0x1E69060B0](v44, v50 / 1000000.0);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v51, ",\n", 2);
  v52 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\tQoS-Legacy-CPUTime[ms] : ", 28);
  v53 = a1[61];
  v54 = a1[24];
  v55 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale >= 0.0)
  {
LABEL_35:
    v58 = v55 * (v53 - v54);
    return MEMORY[0x1E69060B0](v52, v58 / 1000000.0);
  }

  if (!mach_timebase_info(&info))
  {
    LODWORD(v56) = info.numer;
    LODWORD(v57) = info.denom;
    v55 = v56 / v57;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v55;
    goto LABEL_35;
  }

  v58 = NAN;
  return MEMORY[0x1E69060B0](v52, v58 / 1000000.0);
}

void re::internal::PerfStats::addDiskStatisticsToJson(uint64_t a1, void *a2)
{
  v4 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\tTotalBytesReadFromDisk[kb] : ", 32);
  v5 = MEMORY[0x1E6906120](v4, *(a1 + 440) - *(a1 + 144));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, ",\n", 2);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\tTotalBytesWrittenToDisk[kb] : ", 33);

  JUMPOUT(0x1E6906120);
}

void re::ProfilerManager::~ProfilerManager(_BOOL8 this)
{
  v1 = this;
  if (*(this + 136) != *(this + 144))
  {
    v2 = *re::foundationProfilingLogObjects(this);
    this = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    if (this)
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, "ProfilerEventStreams submitted but never processed.", buf, 2u);
    }
  }

  if (v1[28] != v1[29])
  {
    v3 = *re::foundationProfilingLogObjects(this);
    this = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (this)
    {
      *v54 = 0;
      _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "ProfilerStatistics submitted but never processed.", v54, 2u);
    }
  }

  if (v1[39] != v1[40])
  {
    v4 = *re::foundationProfilingLogObjects(this);
    this = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (this)
    {
      *v53 = 0;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "ProfilerAttributions submitted but never processed.", v53, 2u);
    }
  }

  if (v1[48] != v1[49])
  {
    v5 = *re::foundationProfilingLogObjects(this);
    this = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (this)
    {
      *v52 = 0;
      _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "ProfilerVisualizers submitted but never processed.", v52, 2u);
    }
  }

  if (v1[57] != v1[58])
  {
    v6 = *re::foundationProfilingLogObjects(this);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v51 = 0;
      _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "ProfilerMemoryStatistics submitted but never processed.", v51, 2u);
    }
  }

  for (i = v1[11]; i; i = *i)
  {
    v8 = i[2];
    if (v8)
    {
      v9 = v8[9];
      if (v9)
      {
        v8[10] = v9;
        MEMORY[0x1E6906510]();
      }

      v10 = v8[5];
      v11 = v8[6];
      if (v10 != v11)
      {
        do
        {
          if (*v10)
          {
            MEMORY[0x1E6906510](*v10, 128);
          }

          ++v10;
        }

        while (v10 != v11);
        v10 = v8[5];
      }

      if (v10)
      {
        v8[6] = v10;
        operator delete(v10);
      }

      v12 = v8[1];
      v13 = v8[2];
      if (v12 != v13)
      {
        do
        {
          if (*v12)
          {
            MEMORY[0x1E6906510](*v12, 128);
          }

          ++v12;
        }

        while (v12 != v13);
        v12 = v8[1];
      }

      if (v12)
      {
        v8[2] = v12;
        operator delete(v12);
      }

      MEMORY[0x1E6906520](v8, 0x10A0C40A52C3342);
    }
  }

  for (j = v1[22]; j; j = *j)
  {
    v15 = j[2];
    if (v15)
    {
      MEMORY[0x1E6906510](v15, 128);
    }
  }

  for (k = v1[33]; k; k = *k)
  {
    v17 = k[2];
    if (v17)
    {
      re::ProfilerAttributions::~ProfilerAttributions(v17);
      MEMORY[0x1E6906510]();
    }
  }

  v18 = v1[42];
  for (m = v1[43]; v18 != m; ++v18)
  {
    v20 = *v18;
    if (*v18)
    {
      v21 = *(v20 + 8);
      v22 = *(v20 + 16);
      if (v21 != v22)
      {
        do
        {
          if (*v21)
          {
            MEMORY[0x1E6906520](*v21, 0x1000C40CABF92ADLL);
          }

          ++v21;
        }

        while (v21 != v22);
        v21 = *(v20 + 8);
      }

      if (v21)
      {
        *(v20 + 16) = v21;
        operator delete(v21);
      }

      MEMORY[0x1E6906520](v20, 0x1080C401FB89069);
    }
  }

  v23 = v1[51];
  v24 = v1[52];
  while (v23 != v24)
  {
    if (*v23)
    {
      MEMORY[0x1E6906510](*v23, 128);
    }

    ++v23;
  }

  v25 = v1[62];
  if (v25)
  {
    do
    {
      v26 = v25[3];
      if (v26)
      {
        (*(*v26 + 8))(v26);
      }

      v25 = *v25;
    }

    while (v25);
    v27 = v1[62];
    if (v27)
    {
      do
      {
        v28 = *v27;
        operator delete(v27);
        v27 = v28;
      }

      while (v28);
    }
  }

  v29 = v1[60];
  v1[60] = 0;
  if (v29)
  {
    operator delete(v29);
  }

  v30 = v1[57];
  if (v30)
  {
    v1[58] = v30;
    operator delete(v30);
  }

  v31 = v1[54];
  if (v31)
  {
    v1[55] = v31;
    operator delete(v31);
  }

  v32 = v1[51];
  if (v32)
  {
    v1[52] = v32;
    operator delete(v32);
  }

  v33 = v1[48];
  if (v33)
  {
    v1[49] = v33;
    operator delete(v33);
  }

  v34 = v1[45];
  if (v34)
  {
    v1[46] = v34;
    operator delete(v34);
  }

  v35 = v1[42];
  if (v35)
  {
    v1[43] = v35;
    operator delete(v35);
  }

  v36 = v1[39];
  if (v36)
  {
    v1[40] = v36;
    operator delete(v36);
  }

  v37 = v1[36];
  if (v37)
  {
    v1[37] = v37;
    operator delete(v37);
  }

  v38 = v1[33];
  if (v38)
  {
    do
    {
      v39 = *v38;
      operator delete(v38);
      v38 = v39;
    }

    while (v39);
  }

  v40 = v1[31];
  v1[31] = 0;
  if (v40)
  {
    operator delete(v40);
  }

  v41 = v1[28];
  if (v41)
  {
    v1[29] = v41;
    operator delete(v41);
  }

  v42 = v1[25];
  if (v42)
  {
    v1[26] = v42;
    operator delete(v42);
  }

  v43 = v1[22];
  if (v43)
  {
    do
    {
      v44 = *v43;
      operator delete(v43);
      v43 = v44;
    }

    while (v44);
  }

  v45 = v1[20];
  v1[20] = 0;
  if (v45)
  {
    operator delete(v45);
  }

  v46 = v1[17];
  if (v46)
  {
    v1[18] = v46;
    operator delete(v46);
  }

  v47 = v1[14];
  if (v47)
  {
    v1[15] = v47;
    operator delete(v47);
  }

  v48 = v1[11];
  if (v48)
  {
    do
    {
      v49 = *v48;
      operator delete(v48);
      v48 = v49;
    }

    while (v49);
  }

  v50 = v1[9];
  v1[9] = 0;
  if (v50)
  {
    operator delete(v50);
  }
}

uint64_t re::ProfilerManager::acquireEventStream(re::ProfilerManager *this, int a2)
{
  os_unfair_lock_lock(this + 4);
  v4 = *(this + 532);
  os_unfair_lock_unlock(this + 4);
  if (v4 != 1)
  {
    return 0;
  }

  if (a2)
  {
    os_unfair_lock_lock(this + 3);
    v5 = *(this + 18);
    if (*(this + 17) == v5)
    {
      os_unfair_lock_unlock(this + 3);
    }

    else
    {
      v6 = *(v5 - 8);
      *(this + 18) = v5 - 8;
      os_unfair_lock_unlock(this + 3);
      if (v6)
      {
        return v6;
      }
    }
  }

  os_unfair_lock_lock(this + 2);
  v7 = *(this + 15);
  if (*(this + 14) == v7)
  {
    if (*(this + 12) < *(this + 3))
    {
      operator new();
    }

    if (atomic_load_explicit(this + 4, memory_order_acquire) != -1)
    {
      v11[0] = &v9;
      v11[1] = this;
      v11[2] = this + 24;
      v10 = v11;
      std::__call_once(this + 4, &v10, std::__call_once_proxy[abi:nn200100]<std::tuple<re::ProfilerManager::acquireEventStream(BOOL)::$_0 &&,unsigned long long &,unsigned long &>>);
    }

    v6 = 0;
  }

  else
  {
    v6 = *(v7 - 8);
    *(this + 15) = v7 - 8;
  }

  os_unfair_lock_unlock(this + 2);
  return v6;
}

unint64_t re::ProfilerManager::acquireStatistics(re::ProfilerManager *this, int a2)
{
  os_unfair_lock_lock(this + 4);
  v4 = *(this + 533);
  os_unfair_lock_unlock(this + 4);
  if (v4 != 1)
  {
    return 0;
  }

  if (a2)
  {
    os_unfair_lock_lock(this + 3);
    v5 = *(this + 29);
    if (*(this + 28) == v5)
    {
      os_unfair_lock_unlock(this + 3);
    }

    else
    {
      v6 = *(v5 - 8);
      *(this + 29) = v5 - 8;
      os_unfair_lock_unlock(this + 3);
      if (v6)
      {
        return v6;
      }
    }
  }

  os_unfair_lock_lock(this + 2);
  v7 = *(this + 26);
  if (*(this + 25) == v7)
  {
    if (*(this + 23) < *(this + 3))
    {
      v8 = operator new(0x4F00uLL, 0x80uLL);
      v6 = v8;
      *v8 = *this;
      *(v8 + 8) = -1;
      v9 = -20096;
      do
      {
        v10 = (v8 + v9);
        v10[2528] = -1;
        v10[2529] = 0;
        v10[2531] = 0;
        v10[2530] = 0;
        v9 += 128;
      }

      while (v9);
      v11 = 0x9DDFEA08EB382D69 * (((((v8 >> 7) & 0x3FFFFF) << 10) | 8) ^ HIDWORD(v8));
      v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(v8) ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(v8) ^ (v11 >> 47) ^ v11)) >> 47));
      v13 = *(this + 168);
      if (v13)
      {
        v14 = vcnt_s8(v13);
        v14.i16[0] = vaddlv_u8(v14);
        if (v14.u32[0] > 1uLL)
        {
          v15 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(v8) ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(v8) ^ (v11 >> 47) ^ v11)) >> 47));
          if (v12 >= *&v13)
          {
            v15 = v12 % *&v13;
          }
        }

        else
        {
          v15 = (*&v13 - 1) & v12;
        }

        v16 = *(*(this + 20) + 8 * v15);
        if (v16)
        {
          for (i = *v16; i; i = *i)
          {
            v18 = i[1];
            if (v18 == v12)
            {
              if (i[2] == v8)
              {
                goto LABEL_34;
              }
            }

            else
            {
              if (v14.u32[0] > 1uLL)
              {
                if (v18 >= *&v13)
                {
                  v18 %= *&v13;
                }
              }

              else
              {
                v18 &= *&v13 - 1;
              }

              if (v18 != v15)
              {
                break;
              }
            }
          }
        }
      }

      operator new();
    }

    if (atomic_load_explicit(this + 5, memory_order_acquire) != -1)
    {
      v22[0] = &v20;
      v22[1] = this;
      v22[2] = this + 24;
      v21 = v22;
      std::__call_once(this + 5, &v21, std::__call_once_proxy[abi:nn200100]<std::tuple<re::ProfilerManager::acquireStatistics(BOOL)::$_0 &&,unsigned long long &,unsigned long &>>);
    }

    v6 = 0;
  }

  else
  {
    v6 = *(v7 - 8);
    *(this + 26) = v7 - 8;
  }

LABEL_34:
  os_unfair_lock_unlock(this + 2);
  return v6;
}

re::ProfilerAttributions *re::ProfilerManager::acquireAttributions(re::ProfilerManager *this, int a2)
{
  os_unfair_lock_lock(this + 4);
  v4 = *(this + 534);
  os_unfair_lock_unlock(this + 4);
  if (v4 != 1)
  {
    return 0;
  }

  if (a2)
  {
    os_unfair_lock_lock(this + 3);
    v5 = *(this + 40);
    if (*(this + 39) == v5)
    {
      os_unfair_lock_unlock(this + 3);
    }

    else
    {
      v6 = *(v5 - 8);
      *(this + 40) = v5 - 8;
      os_unfair_lock_unlock(this + 3);
      if (v6)
      {
        return v6;
      }
    }
  }

  os_unfair_lock_lock(this + 2);
  v7 = *(this + 37);
  if (*(this + 36) == v7)
  {
    if (*(this + 34) < *(this + 3))
    {
      v6 = operator new(0x180uLL, 0x80uLL);
      v8 = re::ProfilerAttributions::ProfilerAttributions(v6, *this);
      v9 = 0x9DDFEA08EB382D69 * (((((v6 >> 7) & 0x3FFFFF) << 10) | 8) ^ (v8 >> 32));
      v10 = 0x9DDFEA08EB382D69 * ((v8 >> 32) ^ (v9 >> 47) ^ v9);
      v11 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
      v12 = *(this + 256);
      if (v12)
      {
        v13 = vcnt_s8(v12);
        v13.i16[0] = vaddlv_u8(v13);
        if (v13.u32[0] > 1uLL)
        {
          v14 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
          if (v11 >= *&v12)
          {
            v14 = v11 % *&v12;
          }
        }

        else
        {
          v14 = v11 & (*&v12 - 1);
        }

        v15 = *(*(this + 31) + 8 * v14);
        if (v15)
        {
          for (i = *v15; i; i = *i)
          {
            v17 = i[1];
            if (v17 == v11)
            {
              if (i[2] == v6)
              {
                goto LABEL_32;
              }
            }

            else
            {
              if (v13.u32[0] > 1uLL)
              {
                if (v17 >= *&v12)
                {
                  v17 %= *&v12;
                }
              }

              else
              {
                v17 &= *&v12 - 1;
              }

              if (v17 != v14)
              {
                break;
              }
            }
          }
        }
      }

      operator new();
    }

    if (atomic_load_explicit(this + 6, memory_order_acquire) != -1)
    {
      v21[0] = &v19;
      v21[1] = this;
      v21[2] = this + 24;
      v20 = v21;
      std::__call_once(this + 6, &v20, std::__call_once_proxy[abi:nn200100]<std::tuple<re::ProfilerManager::acquireAttributions(BOOL)::$_0 &&,unsigned long long &,unsigned long &>>);
    }

    v6 = 0;
  }

  else
  {
    v6 = *(v7 - 8);
    *(this + 37) = v7 - 8;
  }

LABEL_32:
  os_unfair_lock_unlock(this + 2);
  return v6;
}

void *re::ProfilerManager::acquireMemoryStatistics(re::ProfilerManager *this, int a2)
{
  os_unfair_lock_lock(this + 4);
  v4 = *(this + 535);
  os_unfair_lock_unlock(this + 4);
  if (v4 != 1)
  {
    return 0;
  }

  if (a2)
  {
    os_unfair_lock_lock(this + 3);
    v5 = *(this + 58);
    if (*(this + 57) == v5)
    {
      os_unfair_lock_unlock(this + 3);
    }

    else
    {
      v6 = *(v5 - 8);
      *(this + 58) = v5 - 8;
      os_unfair_lock_unlock(this + 3);
      if (v6)
      {
        return v6;
      }
    }
  }

  os_unfair_lock_lock(this + 2);
  v7 = *(this + 55);
  if (*(this + 54) == v7)
  {
    v9 = *(this + 51);
    v8 = *(this + 52);
    v10 = (v8 - v9) >> 3;
    if (v10 >= *(this + 3))
    {
      if (atomic_load_explicit(this + 8, memory_order_acquire) != -1)
      {
        v26[0] = &v24;
        v26[1] = this;
        v26[2] = this + 24;
        v25 = v26;
        std::__call_once(this + 8, &v25, std::__call_once_proxy[abi:nn200100]<std::tuple<re::ProfilerManager::acquireMemoryStatistics(BOOL)::$_0 &&,unsigned long long &,unsigned long &>>);
      }

      v6 = 0;
    }

    else
    {
      v11 = operator new(0xB00uLL, 0x80uLL);
      v6 = v11;
      v12 = 0;
      *v11 = *this;
      do
      {
        v13 = &v11[v12];
        v13[16] = -1;
        *(v13 + 17) = 0uLL;
        *(v13 + 19) = 0uLL;
        *(v13 + 21) = 0uLL;
        v12 += 16;
      }

      while (v12 != 320);
      v11[336] = 0;
      v14 = *(this + 53);
      if (v8 >= v14)
      {
        v16 = v10 + 1;
        if ((v10 + 1) >> 61)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v17 = v14 - v9;
        if (v17 >> 2 > v16)
        {
          v16 = v17 >> 2;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFF8)
        {
          v18 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<re::ProfilerVisualizer *>>(this + 408, v18);
        }

        *(8 * v10) = v11;
        v15 = 8 * v10 + 8;
        v19 = *(this + 51);
        v20 = *(this + 52) - v19;
        v21 = (8 * v10 - v20);
        memcpy(v21, v19, v20);
        v22 = *(this + 51);
        *(this + 51) = v21;
        *(this + 52) = v15;
        *(this + 53) = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v8 = v11;
        v15 = (v8 + 1);
      }

      *(this + 52) = v15;
    }
  }

  else
  {
    v6 = *(v7 - 8);
    *(this + 55) = v7 - 8;
  }

  os_unfair_lock_unlock(this + 2);
  return v6;
}

void re::ProfilerManager::submit(uint64_t a1, void *a2)
{
  os_unfair_lock_lock((a1 + 12));
  if (!a2)
  {
    re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) ", "stream", "submit", 308);
    _os_crash();
    __break(1u);
    goto LABEL_19;
  }

  if (*a2 != *a1)
  {
LABEL_19:
    re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) ", "stream->ownerId() == m_identifier", "submit", 309);
    _os_crash();
    __break(1u);
    goto LABEL_20;
  }

  v6 = *(a1 + 144);
  v5 = *(a1 + 152);
  if (v6 < v5)
  {
    *v6 = a2;
    v7 = (v6 + 1);
    goto LABEL_15;
  }

  v8 = *(a1 + 136);
  v9 = (v6 - v8) >> 3;
  if ((v9 + 1) >> 61)
  {
LABEL_20:
    std::string::__throw_length_error[abi:nn200100]();
  }

  v10 = v5 - v8;
  v11 = v10 >> 2;
  if (v10 >> 2 <= (v9 + 1))
  {
    v11 = v9 + 1;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v12 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v11;
  }

  if (v12)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<re::ProfilerVisualizer *>>(a1 + 136, v12);
  }

  v13 = (8 * v9);
  *v13 = a2;
  v7 = 8 * v9 + 8;
  v14 = *(a1 + 136);
  v15 = *(a1 + 144) - v14;
  v16 = v13 - v15;
  memcpy(v13 - v15, v14, v15);
  v17 = *(a1 + 136);
  *(a1 + 136) = v16;
  *(a1 + 144) = v7;
  *(a1 + 152) = 0;
  if (v17)
  {
    operator delete(v17);
  }

LABEL_15:
  *(a1 + 144) = v7;

  os_unfair_lock_unlock((a1 + 12));
}

{
  os_unfair_lock_lock((a1 + 12));
  if (!a2)
  {
    re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) ", "statistics", "submit", 317);
    _os_crash();
    __break(1u);
    goto LABEL_19;
  }

  if (*a2 != *a1)
  {
LABEL_19:
    re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) ", "statistics->ownerId() == m_identifier", "submit", 318);
    _os_crash();
    __break(1u);
    goto LABEL_20;
  }

  v6 = *(a1 + 232);
  v5 = *(a1 + 240);
  if (v6 < v5)
  {
    *v6 = a2;
    v7 = (v6 + 1);
    goto LABEL_15;
  }

  v8 = *(a1 + 224);
  v9 = (v6 - v8) >> 3;
  if ((v9 + 1) >> 61)
  {
LABEL_20:
    std::string::__throw_length_error[abi:nn200100]();
  }

  v10 = v5 - v8;
  v11 = v10 >> 2;
  if (v10 >> 2 <= (v9 + 1))
  {
    v11 = v9 + 1;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v12 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v11;
  }

  if (v12)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<re::ProfilerVisualizer *>>(a1 + 224, v12);
  }

  v13 = (8 * v9);
  *v13 = a2;
  v7 = 8 * v9 + 8;
  v14 = *(a1 + 224);
  v15 = *(a1 + 232) - v14;
  v16 = v13 - v15;
  memcpy(v13 - v15, v14, v15);
  v17 = *(a1 + 224);
  *(a1 + 224) = v16;
  *(a1 + 232) = v7;
  *(a1 + 240) = 0;
  if (v17)
  {
    operator delete(v17);
  }

LABEL_15:
  *(a1 + 232) = v7;

  os_unfair_lock_unlock((a1 + 12));
}

{
  os_unfair_lock_lock((a1 + 12));
  if (!a2)
  {
    re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) ", "memoryStatistics", "submit", 335);
    _os_crash();
    __break(1u);
    goto LABEL_19;
  }

  if (*a2 != *a1)
  {
LABEL_19:
    re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) ", "memoryStatistics->ownerId() == m_identifier", "submit", 336);
    _os_crash();
    __break(1u);
    goto LABEL_20;
  }

  v6 = *(a1 + 464);
  v5 = *(a1 + 472);
  if (v6 < v5)
  {
    *v6 = a2;
    v7 = (v6 + 1);
    goto LABEL_15;
  }

  v8 = *(a1 + 456);
  v9 = (v6 - v8) >> 3;
  if ((v9 + 1) >> 61)
  {
LABEL_20:
    std::string::__throw_length_error[abi:nn200100]();
  }

  v10 = v5 - v8;
  v11 = v10 >> 2;
  if (v10 >> 2 <= (v9 + 1))
  {
    v11 = v9 + 1;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v12 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v11;
  }

  if (v12)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<re::ProfilerVisualizer *>>(a1 + 456, v12);
  }

  v13 = (8 * v9);
  *v13 = a2;
  v7 = 8 * v9 + 8;
  v14 = *(a1 + 456);
  v15 = *(a1 + 464) - v14;
  v16 = v13 - v15;
  memcpy(v13 - v15, v14, v15);
  v17 = *(a1 + 456);
  *(a1 + 456) = v16;
  *(a1 + 464) = v7;
  *(a1 + 472) = 0;
  if (v17)
  {
    operator delete(v17);
  }

LABEL_15:
  *(a1 + 464) = v7;

  os_unfair_lock_unlock((a1 + 12));
}

{
  os_unfair_lock_lock((a1 + 12));
  if (!a2)
  {
    re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) ", "renderer", "submit", 344);
    _os_crash();
    __break(1u);
    goto LABEL_19;
  }

  if (*a2 != *a1)
  {
LABEL_19:
    re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) ", "renderer->ownerId() == m_identifier", "submit", 345);
    _os_crash();
    __break(1u);
    goto LABEL_20;
  }

  v6 = *(a1 + 392);
  v5 = *(a1 + 400);
  if (v6 < v5)
  {
    *v6 = a2;
    v7 = (v6 + 1);
    goto LABEL_15;
  }

  v8 = *(a1 + 384);
  v9 = (v6 - v8) >> 3;
  if ((v9 + 1) >> 61)
  {
LABEL_20:
    std::string::__throw_length_error[abi:nn200100]();
  }

  v10 = v5 - v8;
  v11 = v10 >> 2;
  if (v10 >> 2 <= (v9 + 1))
  {
    v11 = v9 + 1;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v12 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v11;
  }

  if (v12)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<re::ProfilerVisualizer *>>(a1 + 384, v12);
  }

  v13 = (8 * v9);
  *v13 = a2;
  v7 = 8 * v9 + 8;
  v14 = *(a1 + 384);
  v15 = *(a1 + 392) - v14;
  v16 = v13 - v15;
  memcpy(v13 - v15, v14, v15);
  v17 = *(a1 + 384);
  *(a1 + 384) = v16;
  *(a1 + 392) = v7;
  *(a1 + 400) = 0;
  if (v17)
  {
    operator delete(v17);
  }

LABEL_15:
  *(a1 + 392) = v7;

  os_unfair_lock_unlock((a1 + 12));
}

void re::ProfilerManager::submit(os_unfair_lock_s *this, re::ProfilerAttributions *a2)
{
  os_unfair_lock_lock(this + 3);
  if (!a2)
  {
    re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) ", "attributions", "submit", 326);
    _os_crash();
    __break(1u);
    goto LABEL_19;
  }

  if (*(a2 + 32) != *&this->_os_unfair_lock_opaque)
  {
LABEL_19:
    re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) ", "attributions->ownerId() == m_identifier", "submit", 327);
    _os_crash();
    __break(1u);
    goto LABEL_20;
  }

  v6 = *&this[80]._os_unfair_lock_opaque;
  v5 = *&this[82]._os_unfair_lock_opaque;
  if (v6 < v5)
  {
    *v6 = a2;
    v7 = (v6 + 1);
    goto LABEL_15;
  }

  v8 = *&this[78]._os_unfair_lock_opaque;
  v9 = (v6 - v8) >> 3;
  if ((v9 + 1) >> 61)
  {
LABEL_20:
    std::string::__throw_length_error[abi:nn200100]();
  }

  v10 = v5 - v8;
  v11 = v10 >> 2;
  if (v10 >> 2 <= (v9 + 1))
  {
    v11 = v9 + 1;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v12 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v11;
  }

  if (v12)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<re::ProfilerVisualizer *>>(&this[78], v12);
  }

  v13 = (8 * v9);
  *v13 = a2;
  v7 = 8 * v9 + 8;
  v14 = *&this[78]._os_unfair_lock_opaque;
  v15 = *&this[80]._os_unfair_lock_opaque - v14;
  v16 = v13 - v15;
  memcpy(v13 - v15, v14, v15);
  v17 = *&this[78]._os_unfair_lock_opaque;
  *&this[78]._os_unfair_lock_opaque = v16;
  *&this[80]._os_unfair_lock_opaque = v7;
  *&this[82]._os_unfair_lock_opaque = 0;
  if (v17)
  {
    operator delete(v17);
  }

LABEL_15:
  *&this[80]._os_unfair_lock_opaque = v7;

  os_unfair_lock_unlock(this + 3);
}

void re::ProfilerManager::process(uint64_t a1, void *a2)
{
  os_unfair_lock_lock((a1 + 12));
  v106 = 0;
  v107 = 0;
  v108 = 0;
  v5 = *(a1 + 136);
  v4 = *(a1 + 144);
  v6 = v4 - v5;
  if (v4 != v5)
  {
    if (!((v6 >> 3) >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::ProfilerVisualizer *>>(&v106, v6 >> 3);
    }

LABEL_106:
    std::string::__throw_length_error[abi:nn200100]();
  }

  v103 = 0;
  v104 = 0;
  v105 = 0;
  v8 = *(a1 + 224);
  v7 = *(a1 + 232);
  v9 = v7 - v8;
  if (v7 != v8)
  {
    if (!((v9 >> 3) >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::ProfilerVisualizer *>>(&v103, v9 >> 3);
    }

LABEL_107:
    std::string::__throw_length_error[abi:nn200100]();
  }

  v100 = 0;
  v101 = 0;
  v102 = 0;
  v11 = *(a1 + 312);
  v10 = *(a1 + 320);
  v12 = v10 - v11;
  if (v10 != v11)
  {
    if (!((v12 >> 3) >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::ProfilerVisualizer *>>(&v100, v12 >> 3);
    }

LABEL_108:
    std::string::__throw_length_error[abi:nn200100]();
  }

  __p = 0;
  v98 = 0;
  v99 = 0;
  v14 = *(a1 + 456);
  v13 = *(a1 + 464);
  v15 = v13 - v14;
  if (v13 != v14)
  {
    if (!((v15 >> 3) >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::ProfilerVisualizer *>>(&__p, v15 >> 3);
    }

LABEL_109:
    std::string::__throw_length_error[abi:nn200100]();
  }

  *(a1 + 144) = *(a1 + 136);
  *(a1 + 232) = *(a1 + 224);
  *(a1 + 320) = *(a1 + 312);
  *(a1 + 464) = v14;
  os_unfair_lock_unlock((a1 + 12));
  if (a2[3])
  {
    for (i = v100; i != v101; ++i)
    {
      v17 = *i;
      re::ProfilerAttributions::resolveDeferred(v17, a2);
    }
  }

  os_unfair_lock_lock((a1 + 16));
  ++*(a1 + 528);
  for (j = *(a1 + 496); j; j = *j)
  {
    v19 = j[3];
    if (v19[8] == 1)
    {
      v20 = *(a1 + 528);
      if (!(v20 % (*(*v19 + 56))(j[3])))
      {
        (*(*v19 + 16))(v19, *(a1 + 520), &v106, &v103, &v100, &__p);
      }
    }
  }

  os_unfair_lock_unlock((a1 + 16));
  v21 = v106;
  v22 = v107;
  while (v21 != v22)
  {
    v23 = *v21++;
    *(v23 + 32) = 0;
    *(v23 + 64) = 0;
    *(v23 + 80) = *(v23 + 72);
  }

  v24 = v103;
  v25 = v104;
  if (v103 != v104)
  {
    do
    {
      v26 = (*v24 + 128);
      v27 = -157;
      do
      {
        *v26 = re::kProfilerCounterEmpty;
        v26[1] = *algn_1E3101110;
        v26 += 8;
      }

      while (!__CFADD__(v27++, 1));
      ++v24;
    }

    while (v24 != v25);
  }

  v29 = v100;
  v30 = v101;
  while (v29 != v30)
  {
    v31 = *v29++;
    re::ProfilerAttributions::clear(v31);
  }

  v32 = __p;
  v33 = v98;
  if (__p != v98)
  {
    do
    {
      v34 = *v32;
      for (k = 128; k != 2688; k += 128)
      {
        v36 = v34 + k;
        *v36 = re::kProfilerMemoryCounterEmpty;
        *(v36 + 16) = *algn_1E3101190;
        *(v36 + 32) = xmmword_1E31011A0;
        *(v36 + 48) = 0;
      }

      *(v34 + 2688) = 0;
      ++v32;
    }

    while (v32 != v33);
  }

  os_unfair_lock_lock((a1 + 8));
  v37 = v106;
  v38 = v107;
  if (v106 != v107)
  {
    v39 = *(a1 + 120);
    do
    {
      v40 = *v37;
      v41 = *(a1 + 128);
      if (v39 >= v41)
      {
        v42 = *(a1 + 112);
        v43 = (v39 - v42) >> 3;
        if ((v43 + 1) >> 61)
        {
          goto LABEL_106;
        }

        v44 = v41 - v42;
        v45 = v44 >> 2;
        if (v44 >> 2 <= (v43 + 1))
        {
          v45 = v43 + 1;
        }

        if (v44 >= 0x7FFFFFFFFFFFFFF8)
        {
          v46 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v46 = v45;
        }

        if (v46)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<re::ProfilerVisualizer *>>(a1 + 112, v46);
        }

        v47 = (8 * v43);
        *v47 = v40;
        v39 = (8 * v43 + 8);
        v48 = *(a1 + 112);
        v49 = *(a1 + 120) - v48;
        v50 = v47 - v49;
        memcpy(v47 - v49, v48, v49);
        v51 = *(a1 + 112);
        *(a1 + 112) = v50;
        *(a1 + 120) = v39;
        *(a1 + 128) = 0;
        if (v51)
        {
          operator delete(v51);
        }
      }

      else
      {
        *v39++ = v40;
      }

      *(a1 + 120) = v39;
      ++v37;
    }

    while (v37 != v38);
  }

  v52 = v103;
  v53 = v104;
  if (v103 != v104)
  {
    v54 = *(a1 + 208);
    do
    {
      v55 = *v52;
      v56 = *(a1 + 216);
      if (v54 >= v56)
      {
        v57 = *(a1 + 200);
        v58 = (v54 - v57) >> 3;
        if ((v58 + 1) >> 61)
        {
          goto LABEL_107;
        }

        v59 = v56 - v57;
        v60 = v59 >> 2;
        if (v59 >> 2 <= (v58 + 1))
        {
          v60 = v58 + 1;
        }

        if (v59 >= 0x7FFFFFFFFFFFFFF8)
        {
          v61 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v61 = v60;
        }

        if (v61)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<re::ProfilerVisualizer *>>(a1 + 200, v61);
        }

        v62 = (8 * v58);
        *v62 = v55;
        v54 = (8 * v58 + 8);
        v63 = *(a1 + 200);
        v64 = *(a1 + 208) - v63;
        v65 = v62 - v64;
        memcpy(v62 - v64, v63, v64);
        v66 = *(a1 + 200);
        *(a1 + 200) = v65;
        *(a1 + 208) = v54;
        *(a1 + 216) = 0;
        if (v66)
        {
          operator delete(v66);
        }
      }

      else
      {
        *v54++ = v55;
      }

      *(a1 + 208) = v54;
      ++v52;
    }

    while (v52 != v53);
  }

  v67 = v100;
  v68 = v101;
  if (v100 != v101)
  {
    v69 = *(a1 + 296);
    do
    {
      v70 = *v67;
      v71 = *(a1 + 304);
      if (v69 >= v71)
      {
        v72 = *(a1 + 288);
        v73 = (v69 - v72) >> 3;
        if ((v73 + 1) >> 61)
        {
          goto LABEL_108;
        }

        v74 = v71 - v72;
        v75 = v74 >> 2;
        if (v74 >> 2 <= (v73 + 1))
        {
          v75 = v73 + 1;
        }

        if (v74 >= 0x7FFFFFFFFFFFFFF8)
        {
          v76 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v76 = v75;
        }

        if (v76)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<re::ProfilerVisualizer *>>(a1 + 288, v76);
        }

        v77 = (8 * v73);
        *v77 = v70;
        v69 = (8 * v73 + 8);
        v78 = *(a1 + 288);
        v79 = *(a1 + 296) - v78;
        v80 = v77 - v79;
        memcpy(v77 - v79, v78, v79);
        v81 = *(a1 + 288);
        *(a1 + 288) = v80;
        *(a1 + 296) = v69;
        *(a1 + 304) = 0;
        if (v81)
        {
          operator delete(v81);
        }
      }

      else
      {
        *v69++ = v70;
      }

      *(a1 + 296) = v69;
      ++v67;
    }

    while (v67 != v68);
  }

  v82 = __p;
  v83 = v98;
  if (__p != v98)
  {
    v84 = *(a1 + 440);
    do
    {
      v85 = *v82;
      v86 = *(a1 + 448);
      if (v84 >= v86)
      {
        v87 = *(a1 + 432);
        v88 = (v84 - v87) >> 3;
        if ((v88 + 1) >> 61)
        {
          goto LABEL_109;
        }

        v89 = v86 - v87;
        v90 = v89 >> 2;
        if (v89 >> 2 <= (v88 + 1))
        {
          v90 = v88 + 1;
        }

        if (v89 >= 0x7FFFFFFFFFFFFFF8)
        {
          v91 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v91 = v90;
        }

        if (v91)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<re::ProfilerVisualizer *>>(a1 + 432, v91);
        }

        v92 = (8 * v88);
        *v92 = v85;
        v84 = (8 * v88 + 8);
        v93 = *(a1 + 432);
        v94 = *(a1 + 440) - v93;
        v95 = v92 - v94;
        memcpy(v92 - v94, v93, v94);
        v96 = *(a1 + 432);
        *(a1 + 432) = v95;
        *(a1 + 440) = v84;
        *(a1 + 448) = 0;
        if (v96)
        {
          operator delete(v96);
        }
      }

      else
      {
        *v84++ = v85;
      }

      *(a1 + 440) = v84;
      ++v82;
    }

    while (v82 != v83);
  }

  os_unfair_lock_unlock((a1 + 8));
  if (__p)
  {
    v98 = __p;
    operator delete(__p);
  }

  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }

  if (v103)
  {
    v104 = v103;
    operator delete(v103);
  }

  if (v106)
  {
    v107 = v106;
    operator delete(v106);
  }
}

void *re::allocInfo_ProfilerManager(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_498, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_498))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BD6F0, "ProfilerManager");
    __cxa_guard_release(&_MergedGlobals_498);
  }

  return &unk_1EE1BD6F0;
}

void re::initInfo_ProfilerManager(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x2B0128137FA56C8;
  v6[1] = "ProfilerManager";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x21800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::initInfo_ProfilerManager(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void std::__call_once_proxy[abi:nn200100]<std::tuple<re::ProfilerManager::acquireEventStream(BOOL)::$_0 &&,unsigned long long &,unsigned long &>>(re *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = **(*a1 + 8);
  v2 = **(*a1 + 16);
  v3 = *re::foundationProfilingLogObjects(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134218240;
    v5 = v2;
    v6 = 2048;
    v7 = v1;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "ProfilerEventStream limit of %lu for ProfilerManager %llu reached. Consider increasing this value.", &v4, 0x16u);
  }
}

void std::__call_once_proxy[abi:nn200100]<std::tuple<re::ProfilerManager::acquireStatistics(BOOL)::$_0 &&,unsigned long long &,unsigned long &>>(re *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = **(*a1 + 8);
  v2 = **(*a1 + 16);
  v3 = *re::foundationProfilingLogObjects(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134218240;
    v5 = v2;
    v6 = 2048;
    v7 = v1;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "ProfilerStatistics limit of %lu for ProfilerManager %llu reached. Consider increasing this value.", &v4, 0x16u);
  }
}

void std::__call_once_proxy[abi:nn200100]<std::tuple<re::ProfilerManager::acquireAttributions(BOOL)::$_0 &&,unsigned long long &,unsigned long &>>(re *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = **(*a1 + 8);
  v2 = **(*a1 + 16);
  v3 = *re::foundationProfilingLogObjects(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134218240;
    v5 = v2;
    v6 = 2048;
    v7 = v1;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "ProfilerAttributions limit of %lu for ProfilerManager %llu reached. Consider increasing this value.", &v4, 0x16u);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<re::ProfilerVisualizer *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__call_once_proxy[abi:nn200100]<std::tuple<re::ProfilerManager::acquireMemoryStatistics(BOOL)::$_0 &&,unsigned long long &,unsigned long &>>(re *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = **(*a1 + 8);
  v2 = **(*a1 + 16);
  v3 = *re::foundationProfilingLogObjects(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134218240;
    v5 = v2;
    v6 = 2048;
    v7 = v1;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "ProfilerMemoryStatistics limit of %lu for ProfilerManager %llu reached. Consider increasing this value.", &v4, 0x16u);
  }
}

void re::ProfilerFrameStatisticsProcessor::process(uint64_t a1, uint64_t a2, uint64_t a3, int64x2_t ***a4)
{
  v4 = *a4;
  v5 = a4[1];
  if (*a4 != v5)
  {
    v6 = a1 + 128;
    v7 = a1 + 256;
    do
    {
      v8 = *v4;
      v9 = (*v4)->i64[1];
      if (v9 != -1)
      {
        v10 = (v6 + 20224 * ((*v4)->i64[1] & 0x3F));
        if (v10->i64[1] != v9)
        {
          v11 = (v7 + 20224 * ((*v4)->i64[1] & 0x3F));
          v12 = -157;
          do
          {
            *v11 = re::kProfilerCounterEmpty;
            v11[1] = *algn_1E3101290;
            v11 += 8;
          }

          while (!__CFADD__(v12++, 1));
          v10->i64[1] = v9;
        }

        re::ProfilerStatistics::operator+=(v10, v8);
      }

      ++v4;
    }

    while (v4 != v5);
  }
}

int64x2_t re::ProfilerStatistics::operator+=(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a1 + 9;
  v3 = a2 + 9;
  v4 = 157;
  do
  {
    v5 = v3[-1].u64[0];
    v6 = v2[-1].u64[1];
    if (v5 >= v2[-1].i64[0])
    {
      v5 = v2[-1].u64[0];
    }

    v2[-1].i64[0] = v5;
    v7 = v3[-1].u64[1];
    if (v6 > v7)
    {
      v7 = v6;
    }

    v2[-1].i64[1] = v7;
    v8 = *v3;
    v3 += 8;
    result = vaddq_s64(*v2, v8);
    *v2 = result;
    v2 += 8;
    --v4;
  }

  while (v4);
  return result;
}

uint64_t re::ProfilerFrameStatisticsProcessor::cpuActiveFrameTime(uint64_t this, uint64_t a2)
{
  if (*(this + 20224 * (a2 & 0x3F) + 136) == a2)
  {
    v2 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
    if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
    {
      this = mach_timebase_info(&info);
      if (this)
      {
        v2 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      }

      else
      {
        LODWORD(v3) = info.numer;
        LODWORD(v4) = info.denom;
        v2 = v3 / v4;
        re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v2;
      }
    }

    if (v2 < 0.0)
    {
      this = mach_timebase_info(&info);
      if (this)
      {
        v2 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      }

      else
      {
        LODWORD(v5) = info.numer;
        LODWORD(v6) = info.denom;
        v2 = v5 / v6;
        re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v2;
      }
    }

    if (v2 < 0.0)
    {
      this = mach_timebase_info(&info);
      if (this)
      {
        v2 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      }

      else
      {
        LODWORD(v7) = info.numer;
        LODWORD(v8) = info.denom;
        v2 = v7 / v8;
        re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v2;
      }
    }

    if (v2 < 0.0)
    {
      this = mach_timebase_info(&info);
      if (this)
      {
        v2 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      }

      else
      {
        LODWORD(v9) = info.numer;
        LODWORD(v10) = info.denom;
        v2 = v9 / v10;
        re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v2;
      }
    }

    if (v2 < 0.0)
    {
      this = mach_timebase_info(&info);
      if (this)
      {
        v2 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      }

      else
      {
        LODWORD(v11) = info.numer;
        LODWORD(v12) = info.denom;
        v2 = v11 / v12;
        re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v2;
      }
    }

    if (v2 < 0.0)
    {
      this = mach_timebase_info(&info);
      if (this)
      {
        v2 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      }

      else
      {
        LODWORD(v13) = info.numer;
        LODWORD(v14) = info.denom;
        v2 = v13 / v14;
        re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v2;
      }
    }

    if (v2 < 0.0)
    {
      this = mach_timebase_info(&info);
      if (this)
      {
        v2 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      }

      else
      {
        LODWORD(v15) = info.numer;
        LODWORD(v16) = info.denom;
        v2 = v15 / v16;
        re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v2;
      }
    }

    if (v2 < 0.0)
    {
      this = mach_timebase_info(&info);
      if (this)
      {
        v2 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      }

      else
      {
        LODWORD(v17) = info.numer;
        LODWORD(v18) = info.denom;
        v2 = v17 / v18;
        re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v2;
      }
    }

    if (v2 < 0.0)
    {
      this = mach_timebase_info(&info);
      if (this)
      {
        v2 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      }

      else
      {
        LODWORD(v19) = info.numer;
        LODWORD(v20) = info.denom;
        v2 = v19 / v20;
        re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v2;
      }
    }

    if (v2 < 0.0)
    {
      this = mach_timebase_info(&info);
      if (this)
      {
        v2 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      }

      else
      {
        LODWORD(v21) = info.numer;
        LODWORD(v22) = info.denom;
        v2 = v21 / v22;
        re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v2;
      }
    }

    if (v2 < 0.0)
    {
      this = mach_timebase_info(&info);
      if (this)
      {
        v2 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      }

      else
      {
        LODWORD(v23) = info.numer;
        LODWORD(v24) = info.denom;
        v2 = v23 / v24;
        re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v2;
      }
    }

    if (v2 < 0.0)
    {
      this = mach_timebase_info(&info);
      if (!this)
      {
        LODWORD(v25) = info.numer;
        LODWORD(v26) = info.denom;
        *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = v25 / v26;
      }
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Attempting to get statistics for a frame older than the allowed number of frames in flight", "!Unreachable code", "cpuActiveFrameTime", 39);
    this = _os_crash();
    __break(1u);
  }

  return this;
}

uint64_t re::ProfilerFrameStatisticsProcessor::cpuRenderThreadActiveFrameTime(uint64_t this, uint64_t a2)
{
  if (*(this + 20224 * (a2 & 0x3F) + 136) == a2)
  {
    v2 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
    if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
    {
      this = mach_timebase_info(&info);
      if (this)
      {
        v2 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      }

      else
      {
        LODWORD(v3) = info.numer;
        LODWORD(v4) = info.denom;
        v2 = v3 / v4;
        re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v2;
      }
    }

    if (v2 < 0.0)
    {
      this = mach_timebase_info(&info);
      if (this)
      {
        v2 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      }

      else
      {
        LODWORD(v5) = info.numer;
        LODWORD(v6) = info.denom;
        v2 = v5 / v6;
        re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v2;
      }
    }

    if (v2 < 0.0)
    {
      this = mach_timebase_info(&info);
      if (!this)
      {
        LODWORD(v7) = info.numer;
        LODWORD(v8) = info.denom;
        *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = v7 / v8;
      }
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Attempting to get statistics for a frame older than the allowed number of frames in flight", "!Unreachable code", "cpuRenderThreadActiveFrameTime", 74);
    this = _os_crash();
    __break(1u);
  }

  return this;
}

uint64_t re::ProfilerFrameStatisticsProcessor::cpuMainThreadLatency(uint64_t this, uint64_t a2)
{
  v2 = this + 20224 * (a2 & 0x3F);
  if (*(v2 + 136) != a2)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Attempting to get statistics for a frame older than the allowed number of frames in flight", "!Unreachable code", "cpuMainThreadLatency", 94);
    this = _os_crash();
    __break(1u);
    return this;
  }

  v3 = *(v2 + 1552);
  v4 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    this = mach_timebase_info(&info);
    if (this)
    {
      v7 = NAN;
      goto LABEL_7;
    }

    LODWORD(v5) = info.numer;
    LODWORD(v6) = info.denom;
    v4 = v5 / v6;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v4;
  }

  v7 = v4 * v3;
LABEL_7:
  if (v7 / 1000000.0 <= 0.0)
  {
    v8 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
    if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
    {
      this = mach_timebase_info(&info);
      if (this)
      {
        v8 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      }

      else
      {
        LODWORD(v9) = info.numer;
        LODWORD(v10) = info.denom;
        v8 = v9 / v10;
        re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v8;
      }
    }

    if (v8 < 0.0)
    {
      this = mach_timebase_info(&info);
      if (!this)
      {
        LODWORD(v11) = info.numer;
        LODWORD(v12) = info.denom;
        *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = v11 / v12;
      }
    }
  }

  return this;
}

uint64_t re::ProfilerFrameStatisticsProcessor::cpuRenderThreadLatency(uint64_t this, uint64_t a2)
{
  v2 = this + 20224 * (a2 & 0x3F);
  if (*(v2 + 136) != a2)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Attempting to get statistics for a frame older than the allowed number of frames in flight", "!Unreachable code", "cpuRenderThreadLatency", 112);
    this = _os_crash();
    __break(1u);
    return this;
  }

  v3 = *(v2 + 1552);
  v4 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    this = mach_timebase_info(&info);
    if (this)
    {
      v7 = NAN;
      goto LABEL_7;
    }

    LODWORD(v5) = info.numer;
    LODWORD(v6) = info.denom;
    v4 = v5 / v6;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v4;
  }

  v7 = v4 * v3;
LABEL_7:
  if (v7 / 1000000.0 > 0.0)
  {
    v8 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
    if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
    {
      this = mach_timebase_info(&info);
      if (this)
      {
        v8 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      }

      else
      {
        LODWORD(v9) = info.numer;
        LODWORD(v10) = info.denom;
        v8 = v9 / v10;
        re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v8;
      }
    }

    if (v8 < 0.0)
    {
      this = mach_timebase_info(&info);
      if (!this)
      {
        LODWORD(v11) = info.numer;
        LODWORD(v12) = info.denom;
        *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = v11 / v12;
      }
    }
  }

  return this;
}

uint64_t re::ProfilerFrameStatisticsProcessor::durationStatistic(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 20224 * (a3 & 0x3F) + 136) == a3)
  {
    if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
    {
      result = mach_timebase_info(&info);
      if (!result)
      {
        LODWORD(v3) = info.numer;
        LODWORD(v4) = info.denom;
        *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = v3 / v4;
      }
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Attempting to get statistics for a frame older than the allowed number of frames in flight", "!Unreachable code", "durationStatistic", 130);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::ProfilerFrameStatisticsProcessor::counterStatistic(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 20224 * (a3 & 0x3F);
  if (*(v5 + 136) == a3)
  {
    return *(v5 + 128 + (a2 << 7) + 144);
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Attempting to get statistics for a frame older than the allowed number of frames in flight", "!Unreachable code", "counterStatistic", 141, v3, v4);
  result = _os_crash();
  __break(1u);
  return result;
}

re::ProfilerAttributions *re::ProfilerAttributions::ProfilerAttributions(re::ProfilerAttributions *this, uint64_t a2)
{
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 74) = 1065353216;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 31) = 0;
  *(this + 32) = a2;
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 327) = 0;
  *(this + 40) = 0;
  v4 = operator new(0x4F00uLL, 0x80uLL);
  *v4 = a2;
  v4[1] = -1;
  v5 = 0x1FFFFFFFFFFFF630;
  do
  {
    v6 = &v4[v5];
    v6[2528] = -1;
    v6[2529] = 0;
    v6[2531] = 0;
    v6[2530] = 0;
    v5 += 16;
  }

  while (v5 * 8);
  *this = v4;
  return this;
}

void re::ProfilerAttributions::~ProfilerAttributions(re::ProfilerAttributions *this)
{
  for (i = 0; i != 256; i += 8)
  {
    v3 = *(this + i);
    if (v3)
    {
      MEMORY[0x1E6906510](v3, 128);
    }
  }

  v4 = *(this + 38);
  if (v4)
  {
    *(this + 39) = v4;
    MEMORY[0x1E6906510]();
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>>>::~__hash_table(this + 264);
}

void re::ProfilerAttributions::clear(re::ProfilerAttributions *this)
{
  for (i = 0; i != 256; i += 8)
  {
    v3 = *(this + i);
    if (v3)
    {
      v4 = (v3 + 128);
      v5 = -157;
      do
      {
        *v4 = re::kProfilerCounterEmpty;
        v4[1] = *algn_1E3101310;
        v4 += 8;
      }

      while (!__CFADD__(v5++, 1));
    }
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>>>::clear(this + 264);
  *(this + 39) = *(this + 38);
  *(this + 164) = 0;
  *(this + 330) = 0;
}

void re::ProfilerAttributions::resolveDeferred(re::ProfilerAttributions *a1, void *a2)
{
  v3 = *(a1 + 35);
  if (v3)
  {
    v17 = vdupq_n_s64(1uLL);
    do
    {
      v5 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(a2, v3 + 2);
      if (v5)
      {
        if (*(v5 + 12) >= 0x20u)
        {
          v6 = 0;
        }

        else
        {
          v6 = *(v5 + 12);
        }
      }

      else
      {
        v6 = 0;
      }

      Statistics = *(a1 + v6);
      v8 = v17.i64[1];
      if (!Statistics)
      {
        Statistics = re::ProfilerAttributions::createStatistics(a1, v6);
        v8 = v17.i64[1];
      }

      v9 = v3[3];
      for (i = v3[4]; v9 != i; v13[1] = vaddq_s64(v13[1], v16))
      {
        v11 = *(v9 + 1);
        v12 = *v9;
        v9 += 16;
        v13 = &Statistics[16 * v12 + 16];
        v14 = v13->i64[0];
        v15 = v13->u64[1];
        if (v13->i64[0] >= v11)
        {
          v14 = v11;
        }

        if (v15 <= v11)
        {
          v15 = v11;
        }

        v13->i64[0] = v14;
        v13->i64[1] = v15;
        v16.i64[1] = v8;
        v16.i64[0] = v11;
      }

      v3 = *v3;
    }

    while (v3);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>>>::clear(a1 + 264);
}

void *re::ProfilerAttributions::createStatistics(re::ProfilerAttributions *this, unsigned int a2)
{
  result = operator new(0x4F00uLL, 0x80uLL);
  *result = *(this + 32);
  result[1] = -1;
  v5 = 0x1FFFFFFFFFFFF630;
  do
  {
    v6 = &result[v5];
    v6[2528] = -1;
    v6[2529] = 0;
    v6[2531] = 0;
    v6[2530] = 0;
    v5 += 16;
  }

  while (v5 * 8);
  *(this + a2) = result;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
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
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t *re::foundationProfilingLogObjects(re *this)
{
  {
    re::foundationProfilingLogObjects(void)::logObjects = os_log_create("com.apple.re", "Foundation.Profiling");
  }

  return &re::foundationProfilingLogObjects(void)::logObjects;
}

void re::internal::enableMemoryStatsCollection(re::internal *this)
{
  if (_MergedGlobals_499 == 1)
  {
    v1 = *re::foundationProfilingLogObjects(this);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1E1C61000, v1, OS_LOG_TYPE_DEFAULT, "Malloc allocation statistics already being collected", v4, 2u);
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E99E8];
    v3 = *MEMORY[0x1E69E99E8];
    off_1EE1BD788 = *MEMORY[0x1E69E9B48];
    unk_1EE1BD790 = v3;
    *MEMORY[0x1E69E9B48] = _objectalloc_logger;
    *v2 = _objectalloc_logger;
    _MergedGlobals_499 = 1;
  }
}

size_t _objectalloc_logger(size_t result, uint64_t a2, char *ptr, unint64_t a4, uint64_t a5, int a6)
{
  v10 = result;
  if (off_1EE1BD788)
  {
    result = off_1EE1BD788(result, a2, ptr, a4, a5, (a6 + 1));
  }

  if ((~v10 & 6) != 0)
  {
    if ((v10 & 2) != 0)
    {
      if (a5)
      {
        do
        {
          if (v18 <= v19)
          {
            break;
          }

          v20 = v19;
        }

        while (v20 != v19);
      }
    }

    else if ((v10 & 4) != 0)
    {
      if (ptr)
      {
        result = malloc_size(ptr);
        do
        {
          if (v21 <= v22)
          {
            break;
          }

          v23 = v22;
        }

        while (v23 != v22);
      }
    }

    else if ((v10 & 0x10) != 0)
    {
      if (a5 && *MEMORY[0x1E69E9A60] == a2)
      {
        v24 = ~*MEMORY[0x1E69E9AB8] & &ptr[*MEMORY[0x1E69E9AB8]];
        do
        {
          if (v25 <= v26)
          {
            break;
          }

          v27 = v26;
        }

        while (v27 != v26);
      }
    }

    else if ((v10 & 0x20) != 0 && ptr && *MEMORY[0x1E69E9A60] == a2)
    {
      v14 = ~*MEMORY[0x1E69E9AB8] & (*MEMORY[0x1E69E9AB8] + a4);
      do
      {
        if (v15 <= v16)
        {
          break;
        }

        v17 = v16;
      }

      while (v17 != v16);
    }
  }

  else if (a5)
  {
    result = malloc_size(ptr);
    do
    {
      if (v11 <= v12)
      {
        break;
      }

      v13 = v12;
    }

    while (v13 != v12);
  }

  return result;
}

void re::internal::disableMemoryStatsCollection(re::internal *this)
{
  if (_MergedGlobals_499)
  {
    v3 = unk_1EE1BD790;
    *MEMORY[0x1E69E9B48] = off_1EE1BD788;
    *MEMORY[0x1E69E99E8] = v3;
    _MergedGlobals_499 = 0;
  }

  else
  {
    v6 = v1;
    v7 = v2;
    v4 = *re::foundationProfilingLogObjects(this);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "Malloc allocation statistics already disabled", v5, 2u);
    }
  }
}

re::ProfilerFlameChartProcessor *re::ProfilerFlameChartProcessor::ProfilerFlameChartProcessor(re::ProfilerFlameChartProcessor *this)
{
  *(this + 8) = 0;
  *this = &unk_1F5D0E4C8;
  *(this + 28) = 0u;
  *(this + 44) = 0u;
  *(this + 60) = 0u;
  *(this + 76) = 0u;
  *(this + 92) = 0u;
  *(this + 108) = 0u;
  *(this + 124) = 0u;
  *(this + 140) = 0u;
  *(this + 156) = 0u;
  *(this + 172) = 0u;
  *(this + 188) = 0u;
  *(this + 204) = 0u;
  *(this + 220) = 0u;
  *(this + 236) = 0u;
  *(this + 252) = 0u;
  *(this + 95) = 0;
  *(this + 12) = 0u;
  *(this + 268) = 0u;
  *(this + 284) = 0u;
  *(this + 300) = 0u;
  *(this + 316) = 0u;
  *(this + 332) = 0u;
  *(this + 348) = 0u;
  *(this + 364) = 0u;
  *(this + 48) = 0x10000001ELL;
  *(this + 98) = 1;
  *(this + 25) = xmmword_1E3062D70;
  *(this + 416) = 1;
  std::vector<re::ProfilerFlameChartBlock>::resize(this + 2, 0x80uLL);
  std::vector<re::ProfilerFlameChartBlock>::resize(this + 5, 0x80uLL);
  re::ProfilerFlameChartProcessor::mapColorsToCategories(this);
  return this;
}

void std::vector<re::ProfilerFlameChartBlock>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 7);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<re::ProfilerFlameChartBlock>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 384 * a2;
  }
}

double re::ProfilerFlameChartProcessor::mapColorsToCategories(re::ProfilerFlameChartProcessor *this)
{
  for (i = 64; i != 384; i += 64)
  {
    v2 = (this + i);
    v2[2] = xmmword_1E3101390;
    v2[3] = xmmword_1E3101390;
    *v2 = xmmword_1E3101390;
    v2[1] = xmmword_1E3101390;
  }

  *(this + 5) = xmmword_1E31013A0;
  *(this + 6) = xmmword_1E31013D0;
  *(this + 21) = xmmword_1E31013F0;
  *(this + 22) = xmmword_1E31013B0;
  *(this + 7) = xmmword_1E31013C0;
  *(this + 8) = xmmword_1E3101400;
  *(this + 9) = xmmword_1E3101410;
  *(this + 10) = xmmword_1E3101420;
  *(this + 11) = xmmword_1E3101400;
  *(this + 12) = xmmword_1E3101430;
  *(this + 15) = xmmword_1E3101440;
  *(this + 16) = xmmword_1E3101400;
  *(this + 13) = xmmword_1E3101450;
  *(this + 14) = xmmword_1E31013C0;
  *(this + 17) = xmmword_1E3101460;
  *(this + 18) = xmmword_1E3101470;
  *(this + 19) = xmmword_1E3101480;
  *(this + 20) = xmmword_1E31013E0;
  result = 0.0065870108;
  *(this + 23) = xmmword_1E3101490;
  return result;
}

char *re::ProfilerFlameChartProcessor::ProcessBlock(char *result, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char __dst, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int128 a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, __int128 a40, __int128 a41, __int128 a42, __int128 a43, __int128 a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  a66 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v67 = result;
    v68 = 0;
    v96 = result + 64;
    v69 = a3;
    do
    {
      v70 = a2 + (v68 << 7);
      *&a31 = 0.0;
      a40 = 0u;
      a41 = 0u;
      a42 = 0u;
      a43 = 0u;
      a44 = 0u;
      a45 = 0;
      *&a27 = 0.0;
      *&a28 = 0.0;
      a26 = *v70;
      v71 = *&v96[16 * *(v70 + 16)];
      LOWORD(a29) = *(v70 + 18);
      *(&a29 + 4) = v71;
      v73 = *(v70 + 24);
      v72 = *(v70 + 32);
      v74 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
      {
        if (mach_timebase_info(&info))
        {
          v77 = NAN;
          goto LABEL_8;
        }

        LODWORD(v76) = HIDWORD(info.__r_.__value_.__r.__words[0]);
        LODWORD(v75) = info.__r_.__value_.__l.__data_;
        v74 = v75 / v76;
        re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v74;
      }

      v77 = v74 * (v72 - v73);
LABEL_8:
      v78 = v77 / 1000000.0;
      *&a31 = v77 / 1000000.0;
      v79 = *(v70 + 24);
      if (*(v67 + 50) > v79 && *(v67 + 98) == 1)
      {
        *(v67 + 50) = v79;
      }

      v80 = *(v70 + 32);
      if (*(v67 + 51) < v80)
      {
        *(v67 + 51) = v80;
      }

      v81 = 0;
      *&a27 = v79;
      *&a28 = v80;
      v82 = *(v70 + 8);
LABEL_14:
      v83 = 0;
      v84 = v82 + v81;
      while (1)
      {
        v85 = *(v84 + v83);
        if (!*(v84 + v83))
        {
          break;
        }

        if (v85 == 32)
        {
          v81 += v83 + 1;
          goto LABEL_14;
        }

        if (v85 == 40)
        {
          break;
        }

        ++v83;
      }

      memset(&info, 0, sizeof(info));
      std::string::reserve(&info, 0x78uLL);
      std::string::append(&info, "(");
      std::to_string(&v97, v78);
      if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v86 = &v97;
      }

      else
      {
        v86 = v97.__r_.__value_.__r.__words[0];
      }

      if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v97.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v97.__r_.__value_.__l.__size_;
      }

      std::string::append(&info, v86, size);
      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }

      v88 = (v78 * 100.0) - 100 * v78;
      if (v88 >= 10)
      {
        v89 = ".";
      }

      else
      {
        v89 = ".0";
      }

      std::string::append(&info, v89);
      std::to_string(&v97, v88);
      if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v90 = &v97;
      }

      else
      {
        v90 = v97.__r_.__value_.__r.__words[0];
      }

      if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v91 = HIBYTE(v97.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v91 = v97.__r_.__value_.__l.__size_;
      }

      std::string::append(&info, v90, v91);
      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }

      std::string::append(&info, ")");
      if (v83 >= 0x78)
      {
        v92 = 120;
      }

      else
      {
        v92 = v83;
      }

      strncpy(&__dst, (v82 + v81), v92);
      if (SHIBYTE(info.__r_.__value_.__r.__words[2]) < 0)
      {
        v94 = info.__r_.__value_.__r.__words[0];
        v95 = 127 - info.__r_.__value_.__l.__size_;
        if (127 - info.__r_.__value_.__l.__size_ >= v92)
        {
          v95 = v92;
        }

        strncpy(&__dst + v95, info.__r_.__value_.__l.__data_, info.__r_.__value_.__l.__size_ + 1);
        operator delete(v94);
      }

      else
      {
        v93 = HIBYTE(info.__r_.__value_.__r.__words[2]) ^ 0x7FLL;
        if (v92 < v93)
        {
          v93 = v92;
        }

        strncpy(&__dst + v93, &info, (*(&info.__r_.__value_.__s + 23) + 1));
      }

      result = std::vector<re::ProfilerFlameChartBlock>::push_back[abi:nn200100]((v67 + 16), &__dst);
      ++v68;
    }

    while (v68 != v69);
  }

  return result;
}

void *std::vector<re::ProfilerFlameChartBlock>::push_back[abi:nn200100](uint64_t a1, void *__src)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 7);
    if (v8 + 1 > 0xAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 7);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x55555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      v12 = std::__allocate_at_least[abi:nn200100]<std::allocator<re::ProfilerFlameChartBlock>>(a1, v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[384 * v8];
    v14 = &v12[384 * v11];
    memcpy(v13, __src, 0x180uLL);
    v7 = v13 + 384;
    v15 = *(a1 + 8) - *a1;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *a1, v15);
    result = *a1;
    *a1 = v16;
    *(a1 + 8) = v13 + 384;
    *(a1 + 16) = v14;
    if (result)
    {
      result = MEMORY[0x1E6906510](result, 128);
    }
  }

  else
  {
    result = memcpy(*(a1 + 8), __src, 0x180uLL);
    v7 = (v5 + 384);
  }

  *(a1 + 8) = v7;
  return result;
}

const void **std::vector<re::ProfilerFlameChartBlock>::reserve(const void **result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 7) < a2)
  {
    if (a2 >= 0xAAAAAAAAAAAAABLL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v2 = result;
    v3 = result[1] - *result;
    v4 = std::__allocate_at_least[abi:nn200100]<std::allocator<re::ProfilerFlameChartBlock>>(result, a2);
    v5 = &v4[v3];
    v7 = &v4[384 * v6];
    v8 = v2[1] - *v2;
    v9 = &v4[v3 - v8];
    memcpy(v9, *v2, v8);
    result = *v2;
    *v2 = v9;
    v2[1] = v5;
    v2[2] = v7;
    if (result)
    {

      JUMPOUT(0x1E6906510);
    }
  }

  return result;
}

void re::ProfilerFlameChartProcessor::~ProfilerFlameChartProcessor(re::ProfilerFlameChartProcessor *this)
{
  *this = &unk_1F5D0E4C8;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    MEMORY[0x1E6906510]();
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    MEMORY[0x1E6906510]();
  }
}

{
  *this = &unk_1F5D0E4C8;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    MEMORY[0x1E6906510]();
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    MEMORY[0x1E6906510]();
  }

  JUMPOUT(0x1E6906520);
}

void *std::__allocate_at_least[abi:nn200100]<std::allocator<re::ProfilerFlameChartBlock>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xAAAAAAAAAAAAABLL)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  return operator new(384 * a2, 0x80uLL);
}

void std::vector<re::ProfilerFlameChartBlock>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 7) >= a2)
  {
    if (a2)
    {
      v11 = 384 * ((384 * a2 - 384) / 0x180) + 384;
      bzero(*(a1 + 8), v11);
      v5 += v11;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 7);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 7);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x55555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      v10 = std::__allocate_at_least[abi:nn200100]<std::allocator<re::ProfilerFlameChartBlock>>(a1, v9);
    }

    else
    {
      v10 = 0;
    }

    v12 = &v10[384 * v6];
    v13 = &v10[384 * v9];
    v14 = 384 * ((384 * a2 - 384) / 0x180) + 384;
    bzero(v12, v14);
    v15 = &v12[v14];
    v16 = *(a1 + 8) - *a1;
    v17 = &v12[-v16];
    memcpy(&v12[-v16], *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v15;
    *(a1 + 16) = v13;
    if (v18)
    {

      JUMPOUT(0x1E6906510);
    }
  }
}

re::ProfilerMiniHUDProcessor *re::ProfilerMiniHUDProcessor::ProfilerMiniHUDProcessor(re::ProfilerMiniHUDProcessor *this)
{
  *(this + 8) = 0;
  *this = &unk_1F5D0E538;
  *(this + 12) = 0u;
  *(this + 28) = 0u;
  *(this + 44) = 0u;
  *(this + 60) = 0u;
  *(this + 76) = 0u;
  *(this + 88) = 0u;
  v2 = re::DynamicString::setCapacity(this + 9, 0);
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  v3 = re::DynamicString::setCapacity(this + 13, 0);
  *(this + 152) = 0u;
  *(this + 136) = 0u;
  v4 = re::DynamicString::setCapacity(this + 17, 0);
  *(this + 184) = 0u;
  *(this + 168) = 0u;
  v5 = re::DynamicString::setCapacity(this + 21, 0);
  *(this + 216) = 0u;
  *(this + 200) = 0u;
  v6 = re::DynamicString::setCapacity(this + 25, 0);
  *(this + 248) = 0u;
  *(this + 232) = 0u;
  v7 = re::DynamicString::setCapacity(this + 29, 0);
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  v8 = re::DynamicString::setCapacity(this + 33, 0);
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  v9 = re::DynamicString::setCapacity(this + 37, 0);
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  v10 = re::DynamicString::setCapacity(this + 41, 0);
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  v11 = re::DynamicString::setCapacity(this + 45, 0);
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  v12 = re::DynamicString::setCapacity(this + 49, 0);
  *(this + 63) = 0;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 424) = 0u;
  v13 = re::DynamicString::setCapacity(this + 60, 0);
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  v14 = re::DynamicString::setCapacity(this + 64, 0);
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  v15 = re::DynamicString::setCapacity(this + 68, 0);
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  v16 = re::DynamicString::setCapacity(this + 72, 0);
  *(this + 38) = 0u;
  *(this + 39) = 0u;
  v17 = re::DynamicString::setCapacity(this + 76, 0);
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  v18 = re::DynamicString::setCapacity(this + 80, 0);
  *(this + 42) = 0u;
  *(this + 43) = 0u;
  v19 = re::DynamicString::setCapacity(this + 84, 0);
  *(this + 44) = 0u;
  *(this + 45) = 0u;
  v20 = re::DynamicString::setCapacity(this + 88, 0);
  *(this + 46) = 0u;
  *(this + 47) = 0u;
  v21 = re::DynamicString::setCapacity(this + 92, 0);
  *(this + 48) = 0u;
  *(this + 49) = 0u;
  v22 = re::DynamicString::setCapacity(this + 96, 0);
  *(this + 50) = 0u;
  *(this + 51) = 0u;
  re::DynamicString::setCapacity(this + 100, 0);
  *(this + 52) = xmmword_1E31014D0;
  *(this + 53) = xmmword_1E3060D30;
  *(this + 54) = xmmword_1E31014E0;
  *(this + 55) = 0u;
  *(this + 56) = 0u;
  getpid();
  memorystatus_control();
  *(this + 113) = 0;
  return this;
}

void re::ProfilerMiniHUDProcessor::process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v7 = *(a1 + 840) + 1;
  *(a1 + 840) = v7;
  v8 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  v12 = *a4;
  v13 = *(a4 + 8);
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  v17.i32[0] = 0;
  v18 = 0.0;
  v19 = 0.0;
  if (*a4 != v13)
  {
    v17.i32[0] = 0;
    v20 = 0.0;
    v21 = 0.0;
    v22 = 0.0;
    v23 = 0.0;
    v24 = 0.0;
    v25 = 0.0;
    v26 = 0.0;
    do
    {
      v27 = 0;
      v28 = (*v12 + 152);
      do
      {
        if (*v28)
        {
          v29 = *(v28 - 1);
          if (v29)
          {
            if (v27 > 0x5Au)
            {
              switch(v27)
              {
                case '[':
                  v24 = v24 + v29;
                  break;
                case '\\':
                  v25 = v25 + v29;
                  break;
                case ']':
                  v26 = v26 + v29;
                  break;
              }
            }

            else
            {
              switch(v27)
              {
                case 1:
                  v17.f32[0] = v17.f32[0] + v29;
                  break;
                case 2:
                  v18 = v18 + v29;
                  break;
                case 3:
                  v20 = v20 + v29;
                  break;
                case 4:
                  v21 = v21 + v29;
                  break;
                case 5:
                  v22 = v22 + v29;
                  break;
                case 6:
                  v23 = v23 + v29;
                  break;
                case 7:
                  v19 = v19 + v29;
                  break;
                case 8:
                  v14 = v14 + v29;
                  break;
                case 9:
                  v16 = v16 + v29;
                  break;
                case 10:
                  v15 = v15 + v29;
                  break;
                case 11:
                  v11 = v11 + v29;
                  break;
                case 12:
                  v10 = v10 + v29;
                  break;
                case 23:
                  v9 = v9 + v29;
                  break;
                case 24:
                  v8 = v8 + v29;
                  break;
                default:
                  break;
              }
            }
          }
        }

        ++v27;
        v28 += 16;
      }

      while (v27 != 157);
      ++v12;
    }

    while (v12 != v13);
    v18 = v19 + (v23 + (v22 + (v21 + (v20 + v18))));
    v19 = v26 + (v25 + v24);
  }

  v30 = ((v14 - v11) - v10) - v9;
  v31 = (v16 - v15) + v19;
  v32 = v18 + v19;
  v33 = v9 + (v10 + v11);
  v34 = v14 <= 0.0;
  if (v14 <= 0.0)
  {
    v35 = v31 - v33;
  }

  else
  {
    v35 = v31;
  }

  if (v34)
  {
    v15 = v33;
  }

  v17.f32[1] = (v32 - v15) - v35;
  v17.i64[1] = __PAIR64__(COERCE_UNSIGNED_INT(fmaxf(v30, 0.0)), LODWORD(v35));
  *(a1 + 20) = vaddq_f32(v17, *(a1 + 20));
  *(a1 + 36) = v8 + *(a1 + 36);
  v36 = *a6;
  v37 = a6[1];
  if (*a6 == v37)
  {
    v43 = 0;
    v42 = 0;
    v41 = 0;
    v40 = 0;
    v39 = 0;
    v38 = 0;
  }

  else
  {
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    do
    {
      v44 = (*v36 + 176);
      v45 = 20;
      do
      {
        v43 += *(v44 - 4);
        v42 += *(v44 - 3);
        v41 += *(v44 - 2);
        v40 += *(v44 - 1);
        v46 = *v44;
        v44 += 16;
        v39 += v46;
        --v45;
      }

      while (v45);
      v38 += *(*v36 + 2688);
      v36 += 8;
    }

    while (v36 != v37);
  }

  if (!(v7 % *(a1 + 832)))
  {
    os_unfair_lock_lock((a1 + 12));
    v47 = *(a1 + 20);
    v48 = *(a1 + 832);
    v49 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
    if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
    {
      if (mach_timebase_info(&info))
      {
        v49 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
        v52 = NAN;
        goto LABEL_50;
      }

      LODWORD(v50) = info.numer;
      LODWORD(v51) = info.denom;
      v49 = v50 / v51;
      re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v49;
    }

    v52 = v49 * (v47 / v48);
LABEL_50:
    v53 = v52 / 1000000.0;
    *(a1 + 428) = v53;
    v54 = 1000.0 / v53;
    v34 = v53 <= 0.0;
    v55 = 0.0;
    if (!v34)
    {
      v55 = v54;
    }

    *(a1 + 424) = v55;
    v56 = *(a1 + 24);
    v57 = *(a1 + 832);
    if (v49 < 0.0)
    {
      if (mach_timebase_info(&info))
      {
        v49 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
        v60 = NAN;
        goto LABEL_57;
      }

      LODWORD(v58) = info.numer;
      LODWORD(v59) = info.denom;
      v49 = v58 / v59;
      re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v49;
    }

    v60 = v49 * (v56 / v57);
LABEL_57:
    v61 = v60 / 1000000.0;
    *(a1 + 432) = v61;
    v62 = *(a1 + 28);
    v63 = *(a1 + 832);
    if (v49 < 0.0)
    {
      if (mach_timebase_info(&info))
      {
        v49 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
        v66 = NAN;
        goto LABEL_62;
      }

      LODWORD(v64) = info.numer;
      LODWORD(v65) = info.denom;
      v49 = v64 / v65;
      re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v49;
    }

    v66 = v49 * (v62 / v63);
LABEL_62:
    v67 = v66 / 1000000.0;
    *(a1 + 436) = v67;
    v68 = *(a1 + 32);
    v69 = *(a1 + 832);
    if (v49 < 0.0)
    {
      if (mach_timebase_info(&info))
      {
        v72 = NAN;
        goto LABEL_67;
      }

      LODWORD(v70) = info.numer;
      LODWORD(v71) = info.denom;
      v49 = v70 / v71;
      re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v49;
    }

    v72 = v49 * (v68 / v69);
LABEL_67:
    v73 = v72 / 1000000.0;
    *(a1 + 440) = v73;
    *(a1 + 444) = *(a1 + 36) / *(a1 + 832);
    *(a1 + 64) = 0;
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    v74 = qword_1ECF19148;
    task_info_outCnt = 93;
    task_info(*MEMORY[0x1E69E9A60], 0x16u, re::ProfilerMiniHUDProcessor::process(unsigned long long,std::vector<re::ProfilerEventStream *> const&,std::vector<re::ProfilerStatistics *> const&,std::vector<re::ProfilerAttributions *> const&,std::vector<re::ProfilerMemoryStatistics *> const&)::vmInfo, &task_info_outCnt);
    v75 = qword_1ECF19148;
    *(a1 + 448) = qword_1ECF19148;
    *(a1 + 456) = v75 - v74;
    *(a1 + 472) = *(a1 + 904);
    if (*(a1 + 488))
    {
      *(a1 + 488) = 1;
      v76 = *(a1 + 496);
    }

    else
    {
      *(a1 + 488) = 0;
      v76 = (a1 + 489);
    }

    *v76 = 0;
    if (*(a1 + 520))
    {
      *(a1 + 520) = 1;
      v77 = *(a1 + 528);
    }

    else
    {
      *(a1 + 520) = 0;
      v77 = (a1 + 521);
    }

    *v77 = 0;
    if (*(a1 + 552))
    {
      *(a1 + 552) = 1;
      v78 = *(a1 + 560);
    }

    else
    {
      *(a1 + 552) = 0;
      v78 = (a1 + 553);
    }

    *v78 = 0;
    if (*(a1 + 584))
    {
      *(a1 + 584) = 1;
      v79 = *(a1 + 592);
    }

    else
    {
      *(a1 + 584) = 0;
      v79 = (a1 + 585);
    }

    *v79 = 0;
    if (*(a1 + 616))
    {
      *(a1 + 616) = 1;
      v80 = *(a1 + 624);
    }

    else
    {
      *(a1 + 616) = 0;
      v80 = (a1 + 617);
    }

    *v80 = 0;
    if (*(a1 + 648))
    {
      *(a1 + 648) = 1;
      v81 = *(a1 + 656);
    }

    else
    {
      *(a1 + 648) = 0;
      v81 = (a1 + 649);
    }

    *v81 = 0;
    if (*(a1 + 680))
    {
      *(a1 + 680) = 1;
      v82 = *(a1 + 688);
    }

    else
    {
      *(a1 + 680) = 0;
      v82 = (a1 + 681);
    }

    *v82 = 0;
    if (*(a1 + 712))
    {
      *(a1 + 712) = 1;
      v83 = *(a1 + 720);
    }

    else
    {
      *(a1 + 712) = 0;
      v83 = (a1 + 713);
    }

    *v83 = 0;
    if (*(a1 + 744))
    {
      *(a1 + 744) = 1;
      v84 = *(a1 + 752);
    }

    else
    {
      *(a1 + 744) = 0;
      v84 = (a1 + 745);
    }

    *v84 = 0;
    if (*(a1 + 776))
    {
      *(a1 + 776) = 1;
      v85 = *(a1 + 784);
    }

    else
    {
      *(a1 + 776) = 0;
      v85 = (a1 + 777);
    }

    v86 = (a1 + 436);
    *v85 = 0;
    v87 = *(a1 + 432);
    if (*(a1 + 440) > 0.0)
    {
      v88 = *v86;
      v86 = (a1 + 440);
      v87 = v87 + v88;
    }

    re::DynamicString::appendf((a1 + 480), "Sim: %.2f", v87);
    re::DynamicString::appendf((a1 + 512), "Ren: %.2f", *v86);
    if (*(a1 + 444) == 0.0)
    {
      re::DynamicString::appendf((a1 + 544), "GPU: Off");
    }

    else
    {
      re::DynamicString::appendf((a1 + 544), "GPU: %.2f");
    }

    re::DynamicString::appendf((a1 + 576), "FPS: %2.2f", *(a1 + 424));
    re::DynamicString::appendf((a1 + 608), "Mem [MB]: %.2f", *(a1 + 448) * 0.0009765625 * 0.0009765625);
    if (!(v42 | v38))
    {
      goto LABEL_115;
    }

    re::DynamicString::appendf((a1 + 640), "Allocs: +%llu/-%llu", v42, v38);
    *(a1 + 880) += v42 - v38;
    v89 = mach_absolute_time();
    v90 = v89;
    v91 = *(a1 + 896);
    if (!v91)
    {
      *(a1 + 896) = v89;
      v91 = v89;
    }

    v92 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
    if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
    {
      if (mach_timebase_info(&info))
      {
        v95 = NAN;
        goto LABEL_110;
      }

      LODWORD(v93) = info.numer;
      LODWORD(v94) = info.denom;
      v92 = v93 / v94;
      re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v92;
    }

    v95 = v92 * (v90 - v91);
LABEL_110:
    if (v95 / 1000000000.0 >= 1.0)
    {
      if (*(a1 + 808))
      {
        *(a1 + 808) = 1;
        v96 = *(a1 + 816);
      }

      else
      {
        *(a1 + 808) = 0;
        v96 = (a1 + 809);
      }

      *v96 = 0;
      *(a1 + 896) = v90;
      v97 = *(a1 + 880);
      *(a1 + 888) = v97;
      *(a1 + 880) = 0;
      *(a1 + 464) = v97;
      re::DynamicString::appendf((a1 + 800), "%+lld allocs/sec", v97);
    }

LABEL_115:
    if (v41)
    {
      re::DynamicString::appendf((a1 + 704), "   (S): %llu", v41);
    }

    if (v40)
    {
      re::DynamicString::appendf((a1 + 736), "   (M): %llu", v40);
    }

    if (v39)
    {
      re::DynamicString::appendf((a1 + 768), "   (L): %llu", v39);
    }

    if (v43)
    {
      v98 = vcvtd_n_f64_u64(v43, 0xAuLL);
      re::DynamicString::appendf((a1 + 672), "  Size: %.2fKB", v98);
    }

    os_unfair_lock_unlock((a1 + 12));
  }
}

void re::ProfilerMiniHUDProcessor::~ProfilerMiniHUDProcessor(re::ProfilerMiniHUDProcessor *this)
{
  re::ProfilerMiniHUDProcessor::~ProfilerMiniHUDProcessor(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5D0E538;
  v2 = (this + 72);
  re::DynamicString::deinit((this + 800));
  re::DynamicString::deinit((this + 768));
  re::DynamicString::deinit((this + 736));
  re::DynamicString::deinit((this + 704));
  re::DynamicString::deinit((this + 672));
  re::DynamicString::deinit((this + 640));
  re::DynamicString::deinit((this + 608));
  re::DynamicString::deinit((this + 576));
  re::DynamicString::deinit((this + 544));
  re::DynamicString::deinit((this + 512));
  re::DynamicString::deinit((this + 480));
  re::DynamicString::deinit((this + 392));
  re::DynamicString::deinit((this + 360));
  re::DynamicString::deinit((this + 328));
  re::DynamicString::deinit((this + 296));
  re::DynamicString::deinit((this + 264));
  re::DynamicString::deinit((this + 232));
  re::DynamicString::deinit((this + 200));
  re::DynamicString::deinit((this + 168));
  re::DynamicString::deinit((this + 136));
  re::DynamicString::deinit((this + 104));
  re::DynamicString::deinit(v2);
}

float ___ZN2re13ProfilerUtils8timeBaseEv_block_invoke()
{
  mach_timebase_info(&info);
  *&v0 = info.numer;
  *(&v0 + 1) = info.denom;
  result = *&info.numer;
  re::ProfilerUtils::s_timeBase = v0;
  return result;
}

re::ProfilerDetailedHUDProcessor *re::ProfilerDetailedHUDProcessor::ProfilerDetailedHUDProcessor(re::ProfilerDetailedHUDProcessor *this)
{
  *(this + 8) = 0;
  *this = &unk_1F5D0E5C8;
  *(this + 12) = 0u;
  *(this + 28) = 0u;
  *(this + 44) = 0;
  *(this + 52) = 0x7FFFFFFFLL;
  *(this + 5) = 0u;
  *(this + 4) = 0u;
  v2 = (this + 64);
  v3 = re::DynamicString::setCapacity(v2, 0);
  *(this + 7) = 0u;
  *(this + 6) = 0u;
  v4 = re::DynamicString::setCapacity(this + 12, 0);
  *(this + 9) = 0u;
  *(this + 8) = 0u;
  v5 = re::DynamicString::setCapacity(this + 16, 0);
  *(this + 11) = 0u;
  *(this + 10) = 0u;
  v6 = re::DynamicString::setCapacity(this + 20, 0);
  *(this + 13) = 0u;
  *(this + 12) = 0u;
  v7 = re::DynamicString::setCapacity(this + 24, 0);
  *(this + 15) = 0u;
  *(this + 14) = 0u;
  re::DynamicString::setCapacity(this + 28, 0);
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 32) = 5;
  *(this + 280) = 0;
  getpid();
  memorystatus_control();
  *(this + 34) = 0;
  return this;
}

void re::ProfilerDetailedHUDProcessor::process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ++*(a1 + 264);
  if ((*(a1 + 280) & 1) == 0)
  {
    *&info[0].numer = 0u;
    memset(v612, 0, 20);
    *&v612[20] = 0x7FFFFFFFLL;
    re::HashTable<re::ProfilerStatistic,re::FrameStats::CollectedStatistics,re::Hash<re::ProfilerStatistic>,re::EqualTo<re::ProfilerStatistic>,true,false>::operator=(a1 + 16, info);
    re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(info);
    v6 = 0;
    do
    {
      v614 = v6;
      info[0] = 0xFF7FFFFF7F7FFFFFLL;
      info[1] = 0;
      *v612 = 0;
      *&v612[8] = xmmword_1E3100EC0;
      *&v612[24] = xmmword_1E3100ED0;
      v613 = 0;
      re::HashTable<re::ProfilerStatistic,re::FrameStats::CollectedStatistics,re::Hash<re::ProfilerStatistic>,re::EqualTo<re::ProfilerStatistic>,true,false>::addNew(a1 + 16, &v614, info);
    }

    while (v6++ < 0x9C);
    *(a1 + 280) = 1;
  }

  v9 = *a4;
  for (i = *(a4 + 8); v9 != i; ++v9)
  {
    v10 = 0;
    v11 = *v9 + 128;
    do
    {
      v12 = (v11 + (v10 << 7));
      v13 = v12[3];
      if (v13)
      {
        v14 = v12[2];
        if (v14)
        {
          if (*(a1 + 16))
          {
            v15 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v10) ^ ((0xBF58476D1CE4E5B9 * v10) >> 27));
            v16 = (v15 ^ (v15 >> 31)) % *(a1 + 40);
            v17 = *(a1 + 32);
            v18 = *(*(a1 + 24) + 4 * v16);
            if (v18 != 0x7FFFFFFF)
            {
              while (v10 != *(v17 + 80 * v18 + 4))
              {
                v18 = *(v17 + 80 * v18) & 0x7FFFFFFF;
                if (v18 == 0x7FFFFFFF)
                {
                  goto LABEL_16;
                }
              }

              goto LABEL_17;
            }
          }

          else
          {
            v17 = *(a1 + 32);
          }

LABEL_16:
          v18 = 0x7FFFFFFFLL;
LABEL_17:
          re::FrameStats::CollectedStatistics::addGroupValues((v17 + 80 * v18 + 8), v14, v13, *v12, v12[1]);
        }
      }

      ++v10;
    }

    while (v10 != 157);
  }

  if (!(*(a1 + 264) % *(a1 + 256)))
  {
    os_unfair_lock_lock((a1 + 12));
    v19 = *(a1 + 48);
    if (v19)
    {
      v20 = 0;
      v21 = *(a1 + 32);
      while (1)
      {
        v22 = *v21;
        v21 += 20;
        if (v22 < 0)
        {
          break;
        }

        if (v19 == ++v20)
        {
          LODWORD(v20) = *(a1 + 48);
          break;
        }
      }
    }

    else
    {
      LODWORD(v20) = 0;
    }

    if (v20 != v19)
    {
      v23 = *(a1 + 32);
      do
      {
        v24 = v23 + 80 * v20;
        *(v24 + 32) = *(v24 + 8);
        *(v24 + 48) = *(v24 + 24);
        *(v24 + 8) = xmmword_1E3100EE0;
        *(v24 + 24) = 0;
        if (v19 <= v20 + 1)
        {
          v25 = v20 + 1;
        }

        else
        {
          v25 = v19;
        }

        while (v25 - 1 != v20)
        {
          LODWORD(v20) = v20 + 1;
          if ((*(v23 + 80 * v20) & 0x80000000) != 0)
          {
            goto LABEL_36;
          }
        }

        LODWORD(v20) = v25;
LABEL_36:
        ;
      }

      while (v20 != v19);
    }

    if (*(a1 + 72))
    {
      *(a1 + 72) = 1;
      v26 = *(a1 + 80);
    }

    else
    {
      *(a1 + 72) = 0;
      v26 = (a1 + 73);
    }

    *v26 = 0;
    if (*(a1 + 104))
    {
      *(a1 + 104) = 1;
      v27 = *(a1 + 112);
    }

    else
    {
      *(a1 + 104) = 0;
      v27 = (a1 + 105);
    }

    *v27 = 0;
    v28 = 0x7FFFFFFFLL;
    if (*(a1 + 16))
    {
      v29 = *(*(a1 + 24) + 4 * (0x5692161D100B05E5uLL % *(a1 + 40)));
      if (v29 != 0x7FFFFFFF)
      {
        v30 = *(a1 + 32);
        v28 = 0x7FFFFFFFLL;
        while (*(v30 + 80 * v29 + 4) != 1)
        {
          v29 = *(v30 + 80 * v29) & 0x7FFFFFFF;
          if (v29 == 0x7FFFFFFF)
          {
            goto LABEL_50;
          }
        }

        v28 = v29;
      }
    }

LABEL_50:
    v31 = *(*(a1 + 32) + 80 * v28 + 40);
    v32 = *(a1 + 256);
    v33 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
    if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
    {
      if (mach_timebase_info(info))
      {
        v36 = NAN;
        goto LABEL_55;
      }

      LODWORD(v34) = info[0].numer;
      LODWORD(v35) = info[0].denom;
      v33 = v34 / v35;
      re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v33;
    }

    v36 = v33 * (v31 / v32);
LABEL_55:
    v599 = v36;
    if (*(a1 + 16))
    {
      v37 = *(a1 + 32);
      v38 = *(*(a1 + 24) + 4 * (0xDBD238973A2B148ALL % *(a1 + 40)));
      if (v38 != 0x7FFFFFFF)
      {
        while (*(v37 + 80 * v38 + 4) != 2)
        {
          v38 = *(v37 + 80 * v38) & 0x7FFFFFFF;
          if (v38 == 0x7FFFFFFF)
          {
            goto LABEL_61;
          }
        }

LABEL_62:
        v39 = *(v37 + 80 * v38 + 40);
        v40 = *(a1 + 256);
        v41 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
        if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
        {
          if (mach_timebase_info(info))
          {
            v44 = NAN;
            goto LABEL_67;
          }

          LODWORD(v42) = info[0].numer;
          LODWORD(v43) = info[0].denom;
          v41 = v42 / v43;
          re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v41;
        }

        v44 = v41 * (v39 / v40);
LABEL_67:
        if (*(a1 + 16))
        {
          v45 = *(a1 + 32);
          v46 = *(*(a1 + 24) + 4 * (0x1E535EEDE31428F0uLL % *(a1 + 40)));
          if (v46 != 0x7FFFFFFF)
          {
            while (*(v45 + 80 * v46 + 4) != 3)
            {
              v46 = *(v45 + 80 * v46) & 0x7FFFFFFF;
              if (v46 == 0x7FFFFFFF)
              {
                goto LABEL_73;
              }
            }

LABEL_74:
            v47 = *(v45 + 80 * v46 + 40);
            v48 = *(a1 + 256);
            v49 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
            if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
            {
              if (mach_timebase_info(info))
              {
                v52 = NAN;
                goto LABEL_79;
              }

              LODWORD(v50) = info[0].numer;
              LODWORD(v51) = info[0].denom;
              v49 = v50 / v51;
              re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v49;
            }

            v52 = v49 * (v47 / v48);
LABEL_79:
            if (*(a1 + 16))
            {
              v53 = *(a1 + 32);
              v54 = *(*(a1 + 24) + 4 * (0xB7A4712C74562914 % *(a1 + 40)));
              if (v54 != 0x7FFFFFFF)
              {
                while (*(v53 + 80 * v54 + 4) != 4)
                {
                  v54 = *(v53 + 80 * v54) & 0x7FFFFFFF;
                  if (v54 == 0x7FFFFFFF)
                  {
                    goto LABEL_85;
                  }
                }

LABEL_86:
                v55 = *(v53 + 80 * v54 + 40);
                v56 = *(a1 + 256);
                v57 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
                if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
                {
                  if (mach_timebase_info(info))
                  {
                    v60 = NAN;
                    goto LABEL_91;
                  }

                  LODWORD(v58) = info[0].numer;
                  LODWORD(v59) = info[0].denom;
                  v57 = v58 / v59;
                  re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v57;
                }

                v60 = v57 * (v55 / v56);
LABEL_91:
                if (*(a1 + 16))
                {
                  v61 = *(a1 + 32);
                  v62 = *(*(a1 + 24) + 4 * (0xB6BF613DBEBB45DCLL % *(a1 + 40)));
                  if (v62 != 0x7FFFFFFF)
                  {
                    while (*(v61 + 80 * v62 + 4) != 5)
                    {
                      v62 = *(v61 + 80 * v62) & 0x7FFFFFFF;
                      if (v62 == 0x7FFFFFFF)
                      {
                        goto LABEL_97;
                      }
                    }

LABEL_98:
                    v63 = *(v61 + 80 * v62 + 40);
                    v64 = *(a1 + 256);
                    v65 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
                    if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
                    {
                      if (mach_timebase_info(info))
                      {
                        v68 = NAN;
                        goto LABEL_103;
                      }

                      LODWORD(v66) = info[0].numer;
                      LODWORD(v67) = info[0].denom;
                      v65 = v66 / v67;
                      re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v65;
                    }

                    v68 = v65 * (v63 / v64);
LABEL_103:
                    v609 = v68;
                    if (*(a1 + 16))
                    {
                      v69 = *(a1 + 32);
                      v70 = *(*(a1 + 24) + 4 * (0xD17707977078336CLL % *(a1 + 40)));
                      if (v70 != 0x7FFFFFFF)
                      {
                        while (*(v69 + 80 * v70 + 4) != 6)
                        {
                          v70 = *(v69 + 80 * v70) & 0x7FFFFFFF;
                          if (v70 == 0x7FFFFFFF)
                          {
                            goto LABEL_109;
                          }
                        }

LABEL_110:
                        v71 = *(v69 + 80 * v70 + 40);
                        v72 = *(a1 + 256);
                        v73 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
                        if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
                        {
                          if (mach_timebase_info(info))
                          {
                            v76 = NAN;
                            goto LABEL_115;
                          }

                          LODWORD(v74) = info[0].numer;
                          LODWORD(v75) = info[0].denom;
                          v73 = v74 / v75;
                          re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v73;
                        }

                        v76 = v73 * (v71 / v72);
LABEL_115:
                        if (*(a1 + 16))
                        {
                          v77 = *(a1 + 32);
                          v78 = *(*(a1 + 24) + 4 * (0x12AE30237B17DF14uLL % *(a1 + 40)));
                          if (v78 != 0x7FFFFFFF)
                          {
                            while (*(v77 + 80 * v78 + 4) != 7)
                            {
                              v78 = *(v77 + 80 * v78) & 0x7FFFFFFF;
                              if (v78 == 0x7FFFFFFF)
                              {
                                goto LABEL_121;
                              }
                            }

LABEL_122:
                            v79 = *(v77 + 80 * v78 + 40);
                            v80 = *(a1 + 256);
                            v81 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
                            if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
                            {
                              if (mach_timebase_info(info))
                              {
                                v84 = NAN;
                                goto LABEL_127;
                              }

                              LODWORD(v82) = info[0].numer;
                              LODWORD(v83) = info[0].denom;
                              v81 = v82 / v83;
                              re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v81;
                            }

                            v84 = v81 * (v79 / v80);
LABEL_127:
                            v592 = v84;
                            if (*(a1 + 16))
                            {
                              v85 = *(a1 + 32);
                              v86 = *(*(a1 + 24) + 4 * (0x826C6ABF7FDD5AD7 % *(a1 + 40)));
                              if (v86 != 0x7FFFFFFF)
                              {
                                while (*(v85 + 80 * v86 + 4) != 9)
                                {
                                  v86 = *(v85 + 80 * v86) & 0x7FFFFFFF;
                                  if (v86 == 0x7FFFFFFF)
                                  {
                                    goto LABEL_133;
                                  }
                                }

LABEL_134:
                                v87 = *(v85 + 80 * v86 + 40);
                                v88 = *(a1 + 256);
                                v89 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
                                if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
                                {
                                  if (mach_timebase_info(info))
                                  {
                                    v92 = NAN;
                                    goto LABEL_139;
                                  }

                                  LODWORD(v90) = info[0].numer;
                                  LODWORD(v91) = info[0].denom;
                                  v89 = v90 / v91;
                                  re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v89;
                                }

                                v92 = v89 * (v87 / v88);
LABEL_139:
                                v594 = v76;
                                if (*(a1 + 16))
                                {
                                  v93 = *(a1 + 32);
                                  v94 = *(*(a1 + 24) + 4 * (0x75C8519A9320579uLL % *(a1 + 40)));
                                  if (v94 != 0x7FFFFFFF)
                                  {
                                    while (*(v93 + 80 * v94 + 4) != 10)
                                    {
                                      v94 = *(v93 + 80 * v94) & 0x7FFFFFFF;
                                      if (v94 == 0x7FFFFFFF)
                                      {
                                        goto LABEL_145;
                                      }
                                    }

LABEL_146:
                                    v95 = *(v93 + 80 * v94 + 40);
                                    v96 = *(a1 + 256);
                                    v97 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
                                    if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
                                    {
                                      if (mach_timebase_info(info))
                                      {
                                        v100 = NAN;
                                        goto LABEL_151;
                                      }

                                      LODWORD(v98) = info[0].numer;
                                      LODWORD(v99) = info[0].denom;
                                      v97 = v98 / v99;
                                      re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v97;
                                    }

                                    v100 = v97 * (v95 / v96);
LABEL_151:
                                    v607 = v100;
                                    if (*(a1 + 16))
                                    {
                                      v101 = *(a1 + 32);
                                      v102 = *(*(a1 + 24) + 4 * (0xD56B1FBB9CEBA9E8 % *(a1 + 40)));
                                      if (v102 != 0x7FFFFFFF)
                                      {
                                        while (*(v101 + 80 * v102 + 4) != 8)
                                        {
                                          v102 = *(v101 + 80 * v102) & 0x7FFFFFFF;
                                          if (v102 == 0x7FFFFFFF)
                                          {
                                            goto LABEL_157;
                                          }
                                        }

LABEL_158:
                                        v103 = *(v101 + 80 * v102 + 40);
                                        v104 = *(a1 + 256);
                                        v105 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
                                        if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
                                        {
                                          if (mach_timebase_info(info))
                                          {
                                            v108 = NAN;
                                            goto LABEL_163;
                                          }

                                          LODWORD(v106) = info[0].numer;
                                          LODWORD(v107) = info[0].denom;
                                          v105 = v106 / v107;
                                          re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v105;
                                        }

                                        v108 = v105 * (v103 / v104);
LABEL_163:
                                        v604 = v108;
                                        if (*(a1 + 16))
                                        {
                                          v109 = *(a1 + 32);
                                          v110 = *(*(a1 + 24) + 4 * (0x3462D848F53ABB6DuLL % *(a1 + 40)));
                                          if (v110 != 0x7FFFFFFF)
                                          {
                                            while (*(v109 + 80 * v110 + 4) != 11)
                                            {
                                              v110 = *(v109 + 80 * v110) & 0x7FFFFFFF;
                                              if (v110 == 0x7FFFFFFF)
                                              {
                                                goto LABEL_169;
                                              }
                                            }

LABEL_170:
                                            v111 = *(v109 + 80 * v110 + 40);
                                            v112 = *(a1 + 256);
                                            v113 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
                                            if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
                                            {
                                              if (mach_timebase_info(info))
                                              {
                                                v116 = NAN;
                                                goto LABEL_175;
                                              }

                                              LODWORD(v114) = info[0].numer;
                                              LODWORD(v115) = info[0].denom;
                                              v113 = v114 / v115;
                                              re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v113;
                                            }

                                            v116 = v113 * (v111 / v112);
LABEL_175:
                                            v596 = v116;
                                            if (*(a1 + 16))
                                            {
                                              v117 = *(a1 + 32);
                                              v118 = *(*(a1 + 24) + 4 * (0x37BE58E8D7213BBCuLL % *(a1 + 40)));
                                              if (v118 != 0x7FFFFFFF)
                                              {
                                                while (*(v117 + 80 * v118 + 4) != 12)
                                                {
                                                  v118 = *(v117 + 80 * v118) & 0x7FFFFFFF;
                                                  if (v118 == 0x7FFFFFFF)
                                                  {
                                                    goto LABEL_181;
                                                  }
                                                }

LABEL_182:
                                                v119 = *(v117 + 80 * v118 + 40);
                                                v120 = *(a1 + 256);
                                                v121 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
                                                if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
                                                {
                                                  if (mach_timebase_info(info))
                                                  {
                                                    v124 = NAN;
                                                    goto LABEL_187;
                                                  }

                                                  LODWORD(v122) = info[0].numer;
                                                  LODWORD(v123) = info[0].denom;
                                                  v121 = v122 / v123;
                                                  re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v121;
                                                }

                                                v124 = v121 * (v119 / v120);
LABEL_187:
                                                v584 = v124;
                                                if (*(a1 + 16))
                                                {
                                                  v125 = *(a1 + 32);
                                                  v126 = *(*(a1 + 24) + 4 * (0xDCFA9555B5F881D1 % *(a1 + 40)));
                                                  if (v126 != 0x7FFFFFFF)
                                                  {
                                                    while (*(v125 + 80 * v126 + 4) != 13)
                                                    {
                                                      v126 = *(v125 + 80 * v126) & 0x7FFFFFFF;
                                                      if (v126 == 0x7FFFFFFF)
                                                      {
                                                        goto LABEL_193;
                                                      }
                                                    }

LABEL_194:
                                                    v127 = *(v125 + 80 * v126 + 40);
                                                    v128 = *(a1 + 256);
                                                    v129 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
                                                    if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
                                                    {
                                                      if (mach_timebase_info(info))
                                                      {
                                                        v132 = NAN;
                                                        goto LABEL_199;
                                                      }

                                                      LODWORD(v130) = info[0].numer;
                                                      LODWORD(v131) = info[0].denom;
                                                      v129 = v130 / v131;
                                                      re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v129;
                                                    }

                                                    v132 = v129 * (v127 / v128);
LABEL_199:
                                                    if (*(a1 + 16))
                                                    {
                                                      v133 = *(a1 + 32);
                                                      v134 = *(*(a1 + 24) + 4 * (0x255C6046F62FBE29uLL % *(a1 + 40)));
                                                      if (v134 != 0x7FFFFFFF)
                                                      {
                                                        while (*(v133 + 80 * v134 + 4) != 14)
                                                        {
                                                          v134 = *(v133 + 80 * v134) & 0x7FFFFFFF;
                                                          if (v134 == 0x7FFFFFFF)
                                                          {
                                                            goto LABEL_205;
                                                          }
                                                        }

LABEL_206:
                                                        v135 = *(v133 + 80 * v134 + 40);
                                                        v136 = *(a1 + 256);
                                                        v137 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
                                                        if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
                                                        {
                                                          if (mach_timebase_info(info))
                                                          {
                                                            v140 = NAN;
                                                            goto LABEL_211;
                                                          }

                                                          LODWORD(v138) = info[0].numer;
                                                          LODWORD(v139) = info[0].denom;
                                                          v137 = v138 / v139;
                                                          re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v137;
                                                        }

                                                        v140 = v137 * (v135 / v136);
LABEL_211:
                                                        v602 = v140;
                                                        if (*(a1 + 16))
                                                        {
                                                          v141 = *(a1 + 32);
                                                          v142 = *(*(a1 + 24) + 4 * (0x392754934EA1539uLL % *(a1 + 40)));
                                                          if (v142 != 0x7FFFFFFF)
                                                          {
                                                            while (*(v141 + 80 * v142 + 4) != 15)
                                                            {
                                                              v142 = *(v141 + 80 * v142) & 0x7FFFFFFF;
                                                              if (v142 == 0x7FFFFFFF)
                                                              {
                                                                goto LABEL_217;
                                                              }
                                                            }

LABEL_218:
                                                            v143 = *(v141 + 80 * v142 + 40);
                                                            v144 = *(a1 + 256);
                                                            v145 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
                                                            if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
                                                            {
                                                              if (mach_timebase_info(info))
                                                              {
                                                                v148 = NAN;
                                                                goto LABEL_223;
                                                              }

                                                              LODWORD(v146) = info[0].numer;
                                                              LODWORD(v147) = info[0].denom;
                                                              v145 = v146 / v147;
                                                              re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v145;
                                                            }

                                                            v148 = v145 * (v143 / v144);
LABEL_223:
                                                            v601 = v148;
                                                            if (*(a1 + 16))
                                                            {
                                                              v149 = *(a1 + 32);
                                                              v150 = *(*(a1 + 24) + 4 * (0xD9844BCECCA4A8BDLL % *(a1 + 40)));
                                                              if (v150 != 0x7FFFFFFF)
                                                              {
                                                                while (*(v149 + 80 * v150 + 4) != 16)
                                                                {
                                                                  v150 = *(v149 + 80 * v150) & 0x7FFFFFFF;
                                                                  if (v150 == 0x7FFFFFFF)
                                                                  {
                                                                    goto LABEL_229;
                                                                  }
                                                                }

LABEL_230:
                                                                v151 = *(v149 + 80 * v150 + 40);
                                                                v152 = *(a1 + 256);
                                                                v153 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
                                                                if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
                                                                {
                                                                  if (mach_timebase_info(info))
                                                                  {
                                                                    v156 = NAN;
                                                                    goto LABEL_235;
                                                                  }

                                                                  LODWORD(v154) = info[0].numer;
                                                                  LODWORD(v155) = info[0].denom;
                                                                  v153 = v154 / v155;
                                                                  re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v153;
                                                                }

                                                                v156 = v153 * (v151 / v152);
LABEL_235:
                                                                v589 = v156;
                                                                if (*(a1 + 16))
                                                                {
                                                                  v157 = *(a1 + 32);
                                                                  v158 = *(*(a1 + 24) + 4 * (0x302B8631721C51BEuLL % *(a1 + 40)));
                                                                  if (v158 != 0x7FFFFFFF)
                                                                  {
                                                                    while (*(v157 + 80 * v158 + 4) != 17)
                                                                    {
                                                                      v158 = *(v157 + 80 * v158) & 0x7FFFFFFF;
                                                                      if (v158 == 0x7FFFFFFF)
                                                                      {
                                                                        goto LABEL_241;
                                                                      }
                                                                    }

LABEL_242:
                                                                    v159 = *(v157 + 80 * v158 + 40);
                                                                    v160 = *(a1 + 256);
                                                                    v161 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
                                                                    if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
                                                                    {
                                                                      if (mach_timebase_info(info))
                                                                      {
                                                                        v164 = NAN;
                                                                        goto LABEL_247;
                                                                      }

                                                                      LODWORD(v162) = info[0].numer;
                                                                      LODWORD(v163) = info[0].denom;
                                                                      v161 = v162 / v163;
                                                                      re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v161;
                                                                    }

                                                                    v164 = v161 * (v159 / v160);
LABEL_247:
                                                                    v590 = v164;
                                                                    if (*(a1 + 16))
                                                                    {
                                                                      v165 = *(a1 + 32);
                                                                      v166 = *(*(a1 + 24) + 4 * (0xE34A1ED09841F857 % *(a1 + 40)));
                                                                      if (v166 != 0x7FFFFFFF)
                                                                      {
                                                                        while (*(v165 + 80 * v166 + 4) != 19)
                                                                        {
                                                                          v166 = *(v165 + 80 * v166) & 0x7FFFFFFF;
                                                                          if (v166 == 0x7FFFFFFF)
                                                                          {
                                                                            goto LABEL_253;
                                                                          }
                                                                        }

LABEL_254:
                                                                        v167 = *(v165 + 80 * v166 + 40);
                                                                        v168 = *(a1 + 256);
                                                                        v169 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
                                                                        if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
                                                                        {
                                                                          if (mach_timebase_info(info))
                                                                          {
                                                                            v172 = NAN;
                                                                            goto LABEL_259;
                                                                          }

                                                                          LODWORD(v170) = info[0].numer;
                                                                          LODWORD(v171) = info[0].denom;
                                                                          v169 = v170 / v171;
                                                                          re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v169;
                                                                        }

                                                                        v172 = v169 * (v167 / v168);
LABEL_259:
                                                                        v591 = v172;
                                                                        if (*(a1 + 16))
                                                                        {
                                                                          v173 = *(a1 + 32);
                                                                          v174 = *(*(a1 + 24) + 4 * (0xEB90A3352640AF2uLL % *(a1 + 40)));
                                                                          if (v174 != 0x7FFFFFFF)
                                                                          {
                                                                            while (*(v173 + 80 * v174 + 4) != 20)
                                                                            {
                                                                              v174 = *(v173 + 80 * v174) & 0x7FFFFFFF;
                                                                              if (v174 == 0x7FFFFFFF)
                                                                              {
                                                                                goto LABEL_265;
                                                                              }
                                                                            }

LABEL_266:
                                                                            v175 = *(v173 + 80 * v174 + 40);
                                                                            v176 = *(a1 + 256);
                                                                            v177 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
                                                                            if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
                                                                            {
                                                                              if (mach_timebase_info(info))
                                                                              {
                                                                                v180 = NAN;
                                                                                goto LABEL_271;
                                                                              }

                                                                              LODWORD(v178) = info[0].numer;
                                                                              LODWORD(v179) = info[0].denom;
                                                                              v177 = v178 / v179;
                                                                              re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v177;
                                                                            }

                                                                            v180 = v177 * (v175 / v176);
LABEL_271:
                                                                            v587 = v180;
                                                                            if (*(a1 + 16))
                                                                            {
                                                                              v181 = *(a1 + 32);
                                                                              v182 = *(*(a1 + 24) + 4 * (0xD633B1846FAF2B49 % *(a1 + 40)));
                                                                              if (v182 != 0x7FFFFFFF)
                                                                              {
                                                                                while (*(v181 + 80 * v182 + 4) != 21)
                                                                                {
                                                                                  v182 = *(v181 + 80 * v182) & 0x7FFFFFFF;
                                                                                  if (v182 == 0x7FFFFFFF)
                                                                                  {
                                                                                    goto LABEL_277;
                                                                                  }
                                                                                }

LABEL_278:
                                                                                v183 = *(v181 + 80 * v182 + 40);
                                                                                v184 = *(a1 + 256);
                                                                                v185 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
                                                                                if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
                                                                                {
                                                                                  if (mach_timebase_info(info))
                                                                                  {
                                                                                    v188 = NAN;
                                                                                    goto LABEL_283;
                                                                                  }

                                                                                  LODWORD(v186) = info[0].numer;
                                                                                  LODWORD(v187) = info[0].denom;
                                                                                  v185 = v186 / v187;
                                                                                  re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v185;
                                                                                }

                                                                                v188 = v185 * (v183 / v184);
LABEL_283:
                                                                                v598 = v188;
                                                                                if (*(a1 + 16))
                                                                                {
                                                                                  v189 = *(a1 + 32);
                                                                                  v190 = *(*(a1 + 24) + 4 * (0x378A5760BE593CA5uLL % *(a1 + 40)));
                                                                                  if (v190 != 0x7FFFFFFF)
                                                                                  {
                                                                                    while (*(v189 + 80 * v190 + 4) != 23)
                                                                                    {
                                                                                      v190 = *(v189 + 80 * v190) & 0x7FFFFFFF;
                                                                                      if (v190 == 0x7FFFFFFF)
                                                                                      {
                                                                                        goto LABEL_289;
                                                                                      }
                                                                                    }

LABEL_290:
                                                                                    v191 = *(v189 + 80 * v190 + 40);
                                                                                    v192 = *(a1 + 256);
                                                                                    v193 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
                                                                                    if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
                                                                                    {
                                                                                      if (mach_timebase_info(info))
                                                                                      {
                                                                                        v196 = NAN;
                                                                                        goto LABEL_295;
                                                                                      }

                                                                                      LODWORD(v194) = info[0].numer;
                                                                                      LODWORD(v195) = info[0].denom;
                                                                                      v193 = v194 / v195;
                                                                                      re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v193;
                                                                                    }

                                                                                    v196 = v193 * (v191 / v192);
LABEL_295:
                                                                                    v583 = v196;
                                                                                    if (*(a1 + 16))
                                                                                    {
                                                                                      v197 = *(a1 + 32);
                                                                                      v198 = *(*(a1 + 24) + 4 * (0xFD95FA4DB404DD7BLL % *(a1 + 40)));
                                                                                      if (v198 != 0x7FFFFFFF)
                                                                                      {
                                                                                        while (*(v197 + 80 * v198 + 4) != 22)
                                                                                        {
                                                                                          v198 = *(v197 + 80 * v198) & 0x7FFFFFFF;
                                                                                          if (v198 == 0x7FFFFFFF)
                                                                                          {
                                                                                            goto LABEL_301;
                                                                                          }
                                                                                        }

LABEL_302:
                                                                                        v199 = *(v197 + 80 * v198 + 40);
                                                                                        v200 = *(a1 + 256);
                                                                                        v201 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
                                                                                        if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
                                                                                        {
                                                                                          if (mach_timebase_info(info))
                                                                                          {
                                                                                            v204 = NAN;
                                                                                            goto LABEL_307;
                                                                                          }

                                                                                          LODWORD(v202) = info[0].numer;
                                                                                          LODWORD(v203) = info[0].denom;
                                                                                          v201 = v202 / v203;
                                                                                          re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v201;
                                                                                        }

                                                                                        v204 = v201 * (v199 / v200);
LABEL_307:
                                                                                        v588 = v204;
                                                                                        if (*(a1 + 16))
                                                                                        {
                                                                                          v205 = *(a1 + 32);
                                                                                          v206 = *(*(a1 + 24) + 4 * (0x968A5BA23473FAFFLL % *(a1 + 40)));
                                                                                          if (v206 != 0x7FFFFFFF)
                                                                                          {
                                                                                            while (*(v205 + 80 * v206 + 4) != 91)
                                                                                            {
                                                                                              v206 = *(v205 + 80 * v206) & 0x7FFFFFFF;
                                                                                              if (v206 == 0x7FFFFFFF)
                                                                                              {
                                                                                                goto LABEL_313;
                                                                                              }
                                                                                            }

LABEL_314:
                                                                                            v207 = *(v205 + 80 * v206 + 40);
                                                                                            v208 = *(a1 + 256);
                                                                                            v209 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
                                                                                            if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
                                                                                            {
                                                                                              if (mach_timebase_info(info))
                                                                                              {
                                                                                                v212 = NAN;
                                                                                                goto LABEL_319;
                                                                                              }

                                                                                              LODWORD(v210) = info[0].numer;
                                                                                              LODWORD(v211) = info[0].denom;
                                                                                              v209 = v210 / v211;
                                                                                              re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v209;
                                                                                            }

                                                                                            v212 = v209 * (v207 / v208);
LABEL_319:
                                                                                            v603 = v132;
                                                                                            if (*(a1 + 16))
                                                                                            {
                                                                                              v213 = *(a1 + 32);
                                                                                              v214 = *(*(a1 + 24) + 4 * (0xDE295D82F964F296 % *(a1 + 40)));
                                                                                              if (v214 != 0x7FFFFFFF)
                                                                                              {
                                                                                                while (*(v213 + 80 * v214 + 4) != 92)
                                                                                                {
                                                                                                  v214 = *(v213 + 80 * v214) & 0x7FFFFFFF;
                                                                                                  if (v214 == 0x7FFFFFFF)
                                                                                                  {
                                                                                                    goto LABEL_325;
                                                                                                  }
                                                                                                }

LABEL_326:
                                                                                                v215 = v60 / 1000000.0;
                                                                                                v216 = v44 / 1000000.0;
                                                                                                v217 = v52 / 1000000.0;
                                                                                                v218 = v92 / 1000000.0;
                                                                                                v219 = *(v213 + 80 * v214 + 40);
                                                                                                v220 = *(a1 + 256);
                                                                                                v221 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
                                                                                                if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
                                                                                                {
                                                                                                  if (mach_timebase_info(info))
                                                                                                  {
                                                                                                    v224 = NAN;
                                                                                                    goto LABEL_331;
                                                                                                  }

                                                                                                  LODWORD(v222) = info[0].numer;
                                                                                                  LODWORD(v223) = info[0].denom;
                                                                                                  v221 = v222 / v223;
                                                                                                  re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v221;
                                                                                                }

                                                                                                v224 = v221 * (v219 / v220);
LABEL_331:
                                                                                                v226 = v218;
                                                                                                v227 = v607 / 1000000.0;
                                                                                                v228 = v212 / 1000000.0;
                                                                                                v229 = v224 / 1000000.0;
                                                                                                if (*(a1 + 16))
                                                                                                {
                                                                                                  v230 = *(a1 + 32);
                                                                                                  v231 = *(*(a1 + 24) + 4 * (0xFEBD6A4FBD0A7802 % *(a1 + 40)));
                                                                                                  v232 = v594;
                                                                                                  if (v231 == 0x7FFFFFFF)
                                                                                                  {
LABEL_335:
                                                                                                    v231 = 0x7FFFFFFFLL;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    while (*(v230 + 80 * v231 + 4) != 93)
                                                                                                    {
                                                                                                      v231 = *(v230 + 80 * v231) & 0x7FFFFFFF;
                                                                                                      if (v231 == 0x7FFFFFFF)
                                                                                                      {
                                                                                                        goto LABEL_335;
                                                                                                      }
                                                                                                    }
                                                                                                  }
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v230 = *(a1 + 32);
                                                                                                  v231 = 0x7FFFFFFFLL;
                                                                                                  v232 = v594;
                                                                                                }

                                                                                                v233 = v609 / 1000000.0;
                                                                                                v225 = v215;
                                                                                                v234 = (v216 + v217) + v225;
                                                                                                v235 = v604 / 1000000.0;
                                                                                                v610 = v235;
                                                                                                v236 = v596 / 1000000.0;
                                                                                                v605 = v236;
                                                                                                v237 = v584 / 1000000.0;
                                                                                                v238 = v583 / 1000000.0;
                                                                                                v608 = v238;
                                                                                                v597 = v226;
                                                                                                v239 = v226 - v227;
                                                                                                v240 = v228;
                                                                                                v241 = v229;
                                                                                                v242 = *(v230 + 80 * v231 + 40);
                                                                                                v243 = *(a1 + 256);
                                                                                                v244 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
                                                                                                v245 = v232 / 1000000.0;
                                                                                                if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
                                                                                                {
                                                                                                  v585 = v227;
                                                                                                  v246 = v237;
                                                                                                  if (mach_timebase_info(info))
                                                                                                  {
                                                                                                    v249 = NAN;
                                                                                                    v237 = v246;
                                                                                                    v227 = v585;
                                                                                                    goto LABEL_342;
                                                                                                  }

                                                                                                  LODWORD(v247) = info[0].numer;
                                                                                                  LODWORD(v248) = info[0].denom;
                                                                                                  v244 = v247 / v248;
                                                                                                  re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v244;
                                                                                                  v237 = v246;
                                                                                                  v227 = v585;
                                                                                                }

                                                                                                v249 = v244 * (v242 / v243);
LABEL_342:
                                                                                                v251 = v592 / 1000000.0;
                                                                                                v252 = v234 + v233;
                                                                                                v253 = v249 / 1000000.0;
                                                                                                v254 = (v240 + v241) + v253;
                                                                                                v586 = v237;
                                                                                                if (v610 <= 0.0)
                                                                                                {
                                                                                                  v255 = (v605 + v237) + v608;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v255 = v227;
                                                                                                }

                                                                                                if (v610 <= 0.0)
                                                                                                {
                                                                                                  v256 = (v239 + v254) - ((v605 + v237) + v608);
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v256 = v239 + v254;
                                                                                                }

                                                                                                v593 = v256;
                                                                                                if (*(a1 + 16))
                                                                                                {
                                                                                                  v257 = *(a1 + 32);
                                                                                                  v258 = *(*(a1 + 24) + 4 * (0xFFCB5C99F6AA8871 % *(a1 + 40)));
                                                                                                  v259 = v599;
                                                                                                  if (v258 == 0x7FFFFFFF)
                                                                                                  {
LABEL_352:
                                                                                                    v258 = 0x7FFFFFFFLL;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    while (*(v257 + 80 * v258 + 4) != 18)
                                                                                                    {
                                                                                                      v258 = *(v257 + 80 * v258) & 0x7FFFFFFF;
                                                                                                      if (v258 == 0x7FFFFFFF)
                                                                                                      {
                                                                                                        goto LABEL_352;
                                                                                                      }
                                                                                                    }
                                                                                                  }
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v257 = *(a1 + 32);
                                                                                                  v258 = 0x7FFFFFFFLL;
                                                                                                  v259 = v599;
                                                                                                }

                                                                                                v260 = v251;
                                                                                                v250 = v245;
                                                                                                v261 = v252 + v250;
                                                                                                v262 = *(v257 + 80 * v258 + 40);
                                                                                                v263 = *(a1 + 256);
                                                                                                v264 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
                                                                                                v265 = v259 / 1000000.0;
                                                                                                if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
                                                                                                {
                                                                                                  if (mach_timebase_info(info))
                                                                                                  {
                                                                                                    v268 = NAN;
                                                                                                    goto LABEL_359;
                                                                                                  }

                                                                                                  LODWORD(v266) = info[0].numer;
                                                                                                  LODWORD(v267) = info[0].denom;
                                                                                                  v264 = v266 / v267;
                                                                                                  re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v264;
                                                                                                }

                                                                                                v268 = v264 * (v262 / v263);
LABEL_359:
                                                                                                v269 = v265;
                                                                                                v270 = *(a1 + 16);
                                                                                                v595 = v268;
                                                                                                if (v270)
                                                                                                {
                                                                                                  v271 = *(a1 + 32);
                                                                                                  v272 = *(*(a1 + 24) + 4 * (0xD59EEF30DB86CAB8 % *(a1 + 40)));
                                                                                                  if (v272 != 0x7FFFFFFF)
                                                                                                  {
                                                                                                    while (*(v271 + 80 * v272 + 4) != 24)
                                                                                                    {
                                                                                                      v272 = *(v271 + 80 * v272) & 0x7FFFFFFF;
                                                                                                      if (v272 == 0x7FFFFFFF)
                                                                                                      {
                                                                                                        goto LABEL_365;
                                                                                                      }
                                                                                                    }

LABEL_366:
                                                                                                    v273 = (v261 + v260) + v254;
                                                                                                    v274 = v271 + 80 * v272;
                                                                                                    v275 = 0.0;
                                                                                                    if (v269 > 0.0)
                                                                                                    {
                                                                                                      v275 = (1000.0 / v269);
                                                                                                    }

                                                                                                    v276 = v273 - v255;
                                                                                                    v277 = *(v274 + 40);
                                                                                                    v278 = *(a1 + 256);
                                                                                                    v600 = v261 + v260;
                                                                                                    if (v270)
                                                                                                    {
                                                                                                      v279 = *(a1 + 40);
                                                                                                      v280 = *(a1 + 24);
                                                                                                      v281 = *(v280 + 4 * (0x4F7ABB7627B74F52 % v279));
                                                                                                      if (v281 == 0x7FFFFFFF)
                                                                                                      {
                                                                                                        v282 = (v271 + 0x27FFFFFFD8);
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        v287 = 0x7FFFFFFFLL;
                                                                                                        while (*(v271 + 80 * v281 + 4) != 29)
                                                                                                        {
                                                                                                          v281 = *(v271 + 80 * v281) & 0x7FFFFFFF;
                                                                                                          if (v281 == 0x7FFFFFFF)
                                                                                                          {
                                                                                                            goto LABEL_377;
                                                                                                          }
                                                                                                        }

                                                                                                        v287 = v281;
LABEL_377:
                                                                                                        v282 = (v271 + 80 * v287 + 40);
                                                                                                      }

                                                                                                      v288 = *(v280 + 4 * (0x724EA9269D42A72 % v279));
                                                                                                      if (v288 == 0x7FFFFFFF)
                                                                                                      {
                                                                                                        v289 = (v271 + 0x27FFFFFFD8);
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        v290 = 0x7FFFFFFFLL;
                                                                                                        while (*(v271 + 80 * v288 + 4) != 30)
                                                                                                        {
                                                                                                          v288 = *(v271 + 80 * v288) & 0x7FFFFFFF;
                                                                                                          if (v288 == 0x7FFFFFFF)
                                                                                                          {
                                                                                                            goto LABEL_385;
                                                                                                          }
                                                                                                        }

                                                                                                        v290 = v288;
LABEL_385:
                                                                                                        v289 = (v271 + 80 * v290 + 40);
                                                                                                      }

                                                                                                      v291 = *(v280 + 4 * (0x540F172E046EF165 % v279));
                                                                                                      if (v291 == 0x7FFFFFFF)
                                                                                                      {
                                                                                                        v292 = (v271 + 0x27FFFFFFD8);
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        v293 = 0x7FFFFFFFLL;
                                                                                                        while (*(v271 + 80 * v291 + 4) != 31)
                                                                                                        {
                                                                                                          v291 = *(v271 + 80 * v291) & 0x7FFFFFFF;
                                                                                                          if (v291 == 0x7FFFFFFF)
                                                                                                          {
                                                                                                            goto LABEL_393;
                                                                                                          }
                                                                                                        }

                                                                                                        v293 = v291;
LABEL_393:
                                                                                                        v292 = (v271 + 80 * v293 + 40);
                                                                                                      }

                                                                                                      v285 = *v282;
                                                                                                      v286 = *v289;
                                                                                                      v283 = *v292;
                                                                                                      v284 = *(v280 + 4 * (0xADFB1EBB497FAD45 % v279));
                                                                                                      if (v284 == 0x7FFFFFFF)
                                                                                                      {
LABEL_397:
                                                                                                        v284 = 0x7FFFFFFFLL;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        while (*(v271 + 80 * v284 + 4) != 32)
                                                                                                        {
                                                                                                          v284 = *(v271 + 80 * v284) & 0x7FFFFFFF;
                                                                                                          if (v284 == 0x7FFFFFFF)
                                                                                                          {
                                                                                                            goto LABEL_397;
                                                                                                          }
                                                                                                        }
                                                                                                      }
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v283 = *(v271 + 0x27FFFFFFD8);
                                                                                                      v284 = 0x7FFFFFFFLL;
                                                                                                      v285 = v283;
                                                                                                      v286 = v283;
                                                                                                    }

                                                                                                    v294 = *(v271 + 80 * v284 + 40);
                                                                                                    re::DynamicString::appendf((a1 + 64), "Frame Times (ms)\n");
                                                                                                    re::DynamicString::appendf((a1 + 64), "FPS: %.2f    Main Thread: %.2f\n", v275, v276);
                                                                                                    if (v610 > 0.0)
                                                                                                    {
                                                                                                      re::DynamicString::appendf((a1 + 64), "Render Thread: %.2f\n", (((v610 - v605) - v586) - v608));
                                                                                                    }

                                                                                                    re::DynamicString::appendf((a1 + 64), "GPU: %.2f\n", ((v277 / v278) / 1000000.0));
                                                                                                    re::DynamicString::appendf((a1 + 64), "Vtx: %.2f    Frg: %.2f\nRender Compute: %0.2f\nDeformer Compute: %0.2f\n", ((v285 / v278) / 1000000.0) / 1000000.0, ((v286 / v278) / 1000000.0) / 1000000.0, ((v283 / v278) / 1000000.0) / 1000000.0, ((v294 / v278) / 1000000.0) / 1000000.0);
                                                                                                    re::DynamicString::appendf((a1 + 96), "Engine CPU Breakdown (ms)\n");
                                                                                                    if (*(a1 + 16))
                                                                                                    {
                                                                                                      v295 = *(a1 + 32);
                                                                                                      v296 = *(*(a1 + 24) + 4 * (0x8AEB093D93E71BBFLL % *(a1 + 40)));
                                                                                                      if (v296 != 0x7FFFFFFF)
                                                                                                      {
                                                                                                        while (*(v295 + 80 * v296 + 4) != 122)
                                                                                                        {
                                                                                                          v296 = *(v295 + 80 * v296) & 0x7FFFFFFF;
                                                                                                          if (v296 == 0x7FFFFFFF)
                                                                                                          {
                                                                                                            goto LABEL_406;
                                                                                                          }
                                                                                                        }

LABEL_407:
                                                                                                        v297 = *(v295 + 80 * v296 + 40);
                                                                                                        v298 = *(a1 + 256);
                                                                                                        v299 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
                                                                                                        if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
                                                                                                        {
                                                                                                          if (mach_timebase_info(info))
                                                                                                          {
                                                                                                            v302 = NAN;
                                                                                                            goto LABEL_412;
                                                                                                          }

                                                                                                          LODWORD(v300) = info[0].numer;
                                                                                                          LODWORD(v301) = info[0].denom;
                                                                                                          v299 = v300 / v301;
                                                                                                          re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v299;
                                                                                                        }

                                                                                                        v302 = v299 * (v297 / v298);
LABEL_412:
                                                                                                        re::DynamicString::appendf((a1 + 96), "RenderGraph: %.2f    Render ECS: %.2f\n", (v593 + v610), v302 / 1000000.0);
                                                                                                        if (*(a1 + 16))
                                                                                                        {
                                                                                                          v303 = *(a1 + 32);
                                                                                                          v304 = *(*(a1 + 24) + 4 * (0x786DD0AB972D849AuLL % *(a1 + 40)));
                                                                                                          if (v304 != 0x7FFFFFFF)
                                                                                                          {
                                                                                                            while (*(v303 + 80 * v304 + 4) != 115)
                                                                                                            {
                                                                                                              v304 = *(v303 + 80 * v304) & 0x7FFFFFFF;
                                                                                                              if (v304 == 0x7FFFFFFF)
                                                                                                              {
                                                                                                                goto LABEL_418;
                                                                                                              }
                                                                                                            }

LABEL_419:
                                                                                                            v305 = *(v303 + 80 * v304 + 40);
                                                                                                            v306 = *(a1 + 256);
                                                                                                            v307 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
                                                                                                            if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
                                                                                                            {
                                                                                                              if (mach_timebase_info(info))
                                                                                                              {
                                                                                                                v310 = NAN;
                                                                                                                goto LABEL_424;
                                                                                                              }

                                                                                                              LODWORD(v308) = info[0].numer;
                                                                                                              LODWORD(v309) = info[0].denom;
                                                                                                              v307 = v308 / v309;
                                                                                                              re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v307;
                                                                                                            }

                                                                                                            v310 = v307 * (v305 / v306);
LABEL_424:
                                                                                                            re::DynamicString::appendf((a1 + 96), "Deformations: %.2f\n", v310 / 1000000.0);
                                                                                                            if (*(a1 + 16))
                                                                                                            {
                                                                                                              v311 = *(a1 + 32);
                                                                                                              v312 = *(*(a1 + 24) + 4 * (0x3465840D39B46BB3uLL % *(a1 + 40)));
                                                                                                              if (v312 != 0x7FFFFFFF)
                                                                                                              {
                                                                                                                while (*(v311 + 80 * v312 + 4) != 150)
                                                                                                                {
                                                                                                                  v312 = *(v311 + 80 * v312) & 0x7FFFFFFF;
                                                                                                                  if (v312 == 0x7FFFFFFF)
                                                                                                                  {
                                                                                                                    goto LABEL_430;
                                                                                                                  }
                                                                                                                }

LABEL_431:
                                                                                                                v313 = *(v311 + 80 * v312 + 40);
                                                                                                                v314 = *(a1 + 256);
                                                                                                                v315 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
                                                                                                                if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
                                                                                                                {
                                                                                                                  if (mach_timebase_info(info))
                                                                                                                  {
                                                                                                                    v318 = NAN;
                                                                                                                    goto LABEL_436;
                                                                                                                  }

                                                                                                                  LODWORD(v316) = info[0].numer;
                                                                                                                  LODWORD(v317) = info[0].denom;
                                                                                                                  v315 = v316 / v317;
                                                                                                                  re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v315;
                                                                                                                }

                                                                                                                v318 = v315 * (v313 / v314);
LABEL_436:
                                                                                                                if (*(a1 + 16))
                                                                                                                {
                                                                                                                  v319 = *(a1 + 32);
                                                                                                                  v320 = *(*(a1 + 24) + 4 * (0xD12374540570B1A6 % *(a1 + 40)));
                                                                                                                  if (v320 != 0x7FFFFFFF)
                                                                                                                  {
                                                                                                                    while (*(v319 + 80 * v320 + 4) != 130)
                                                                                                                    {
                                                                                                                      v320 = *(v319 + 80 * v320) & 0x7FFFFFFF;
                                                                                                                      if (v320 == 0x7FFFFFFF)
                                                                                                                      {
                                                                                                                        goto LABEL_442;
                                                                                                                      }
                                                                                                                    }

LABEL_443:
                                                                                                                    v322 = *(v319 + 80 * v320 + 40);
                                                                                                                    v323 = *(a1 + 256);
                                                                                                                    v324 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
                                                                                                                    v325 = v318 / 1000000.0;
                                                                                                                    if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
                                                                                                                    {
                                                                                                                      if (mach_timebase_info(info))
                                                                                                                      {
                                                                                                                        v328 = NAN;
                                                                                                                        goto LABEL_448;
                                                                                                                      }

                                                                                                                      LODWORD(v326) = info[0].numer;
                                                                                                                      LODWORD(v327) = info[0].denom;
                                                                                                                      v324 = v326 / v327;
                                                                                                                      re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v324;
                                                                                                                    }

                                                                                                                    v328 = v324 * (v322 / v323);
LABEL_448:
                                                                                                                    v321 = v589 / 1000000.0;
                                                                                                                    v329 = v321;
                                                                                                                    re::DynamicString::appendf((a1 + 96), "VFX RenderNode: %.2f    VFX ECS: %.2f\n", v325, v328 / 1000000.0);
                                                                                                                    if (*(a1 + 16))
                                                                                                                    {
                                                                                                                      v331 = *(a1 + 32);
                                                                                                                      v332 = *(*(a1 + 24) + 4 * (0x2D2898CE1F8CEF8EuLL % *(a1 + 40)));
                                                                                                                      if (v332 != 0x7FFFFFFF)
                                                                                                                      {
                                                                                                                        while (*(v331 + 80 * v332 + 4) != 125)
                                                                                                                        {
                                                                                                                          v332 = *(v331 + 80 * v332) & 0x7FFFFFFF;
                                                                                                                          if (v332 == 0x7FFFFFFF)
                                                                                                                          {
                                                                                                                            goto LABEL_454;
                                                                                                                          }
                                                                                                                        }

LABEL_455:
                                                                                                                        v333 = *(v331 + 80 * v332 + 40);
                                                                                                                        v334 = *(a1 + 256);
                                                                                                                        v335 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
                                                                                                                        if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
                                                                                                                        {
                                                                                                                          if (mach_timebase_info(info))
                                                                                                                          {
                                                                                                                            v338 = NAN;
                                                                                                                            goto LABEL_460;
                                                                                                                          }

                                                                                                                          LODWORD(v336) = info[0].numer;
                                                                                                                          LODWORD(v337) = info[0].denom;
                                                                                                                          v335 = v336 / v337;
                                                                                                                          re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v335;
                                                                                                                        }

                                                                                                                        v338 = v335 * (v333 / v334);
LABEL_460:
                                                                                                                        v339 = v590 / 1000000.0 + v329;
                                                                                                                        v330 = v587 / 1000000.0;
                                                                                                                        re::DynamicString::appendf((a1 + 96), "Animation Update: %.2f    Animation ECS: %.2f\n", v330, v338 / 1000000.0);
                                                                                                                        if (*(a1 + 16))
                                                                                                                        {
                                                                                                                          v340 = *(a1 + 32);
                                                                                                                          v341 = *(*(a1 + 24) + 4 * (0xD94FA4A9067DC0C4 % *(a1 + 40)));
                                                                                                                          v342 = v591;
                                                                                                                          if (v341 == 0x7FFFFFFF)
                                                                                                                          {
LABEL_464:
                                                                                                                            v341 = 0x7FFFFFFFLL;
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            while (*(v340 + 80 * v341 + 4) != 123)
                                                                                                                            {
                                                                                                                              v341 = *(v340 + 80 * v341) & 0x7FFFFFFF;
                                                                                                                              if (v341 == 0x7FFFFFFF)
                                                                                                                              {
                                                                                                                                goto LABEL_464;
                                                                                                                              }
                                                                                                                            }
                                                                                                                          }
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          v340 = *(a1 + 32);
                                                                                                                          v341 = 0x7FFFFFFFLL;
                                                                                                                          v342 = v591;
                                                                                                                        }

                                                                                                                        v343 = *(v340 + 80 * v341 + 40);
                                                                                                                        v344 = *(a1 + 256);
                                                                                                                        v345 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
                                                                                                                        v346 = v342 / 1000000.0;
                                                                                                                        if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
                                                                                                                        {
                                                                                                                          if (mach_timebase_info(info))
                                                                                                                          {
                                                                                                                            v349 = NAN;
                                                                                                                            goto LABEL_471;
                                                                                                                          }

                                                                                                                          LODWORD(v347) = info[0].numer;
                                                                                                                          LODWORD(v348) = info[0].denom;
                                                                                                                          v345 = v347 / v348;
                                                                                                                          re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v345;
                                                                                                                        }

                                                                                                                        v349 = v345 * (v343 / v344);
LABEL_471:
                                                                                                                        v350 = v346;
                                                                                                                        re::DynamicString::appendf((a1 + 96), "Network Update: %.2f    Network ECS: %.2f\n", v339, v349 / 1000000.0);
                                                                                                                        if (*(a1 + 16))
                                                                                                                        {
                                                                                                                          v351 = *(a1 + 32);
                                                                                                                          v352 = *(*(a1 + 24) + 4 * (0x8BC946409C88CB8FLL % *(a1 + 40)));
                                                                                                                          v353 = v588;
                                                                                                                          if (v352 == 0x7FFFFFFF)
                                                                                                                          {
LABEL_475:
                                                                                                                            v352 = 0x7FFFFFFFLL;
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            while (*(v351 + 80 * v352 + 4) != 121)
                                                                                                                            {
                                                                                                                              v352 = *(v351 + 80 * v352) & 0x7FFFFFFF;
                                                                                                                              if (v352 == 0x7FFFFFFF)
                                                                                                                              {
                                                                                                                                goto LABEL_475;
                                                                                                                              }
                                                                                                                            }
                                                                                                                          }
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          v351 = *(a1 + 32);
                                                                                                                          v352 = 0x7FFFFFFFLL;
                                                                                                                          v353 = v588;
                                                                                                                        }

                                                                                                                        v354 = *(v351 + 80 * v352 + 40);
                                                                                                                        v355 = *(a1 + 256);
                                                                                                                        v356 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
                                                                                                                        v357 = v353 / 1000000.0;
                                                                                                                        if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
                                                                                                                        {
                                                                                                                          if (mach_timebase_info(info))
                                                                                                                          {
                                                                                                                            v360 = NAN;
                                                                                                                            goto LABEL_482;
                                                                                                                          }

                                                                                                                          LODWORD(v358) = info[0].numer;
                                                                                                                          LODWORD(v359) = info[0].denom;
                                                                                                                          v356 = v358 / v359;
                                                                                                                          re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v356;
                                                                                                                        }

                                                                                                                        v360 = v356 * (v354 / v355);
LABEL_482:
                                                                                                                        v361 = v357;
                                                                                                                        re::DynamicString::appendf((a1 + 96), "Physics Engine: %.2f    Physics ECS: %.2f\n", v350, v360 / 1000000.0);
                                                                                                                        if (*(a1 + 16))
                                                                                                                        {
                                                                                                                          v362 = *(a1 + 32);
                                                                                                                          v363 = *(*(a1 + 24) + 4 * (0x178631649EA56D8AuLL % *(a1 + 40)));
                                                                                                                          if (v363 != 0x7FFFFFFF)
                                                                                                                          {
                                                                                                                            while (*(v362 + 80 * v363 + 4) != 120)
                                                                                                                            {
                                                                                                                              v363 = *(v362 + 80 * v363) & 0x7FFFFFFF;
                                                                                                                              if (v363 == 0x7FFFFFFF)
                                                                                                                              {
                                                                                                                                goto LABEL_488;
                                                                                                                              }
                                                                                                                            }

LABEL_489:
                                                                                                                            v364 = *(v362 + 80 * v363 + 40);
                                                                                                                            v365 = *(a1 + 256);
                                                                                                                            v366 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
                                                                                                                            if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
                                                                                                                            {
                                                                                                                              if (mach_timebase_info(info))
                                                                                                                              {
                                                                                                                                v369 = NAN;
                                                                                                                                goto LABEL_494;
                                                                                                                              }

                                                                                                                              LODWORD(v367) = info[0].numer;
                                                                                                                              LODWORD(v368) = info[0].denom;
                                                                                                                              v366 = v367 / v368;
                                                                                                                              re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v366;
                                                                                                                            }

                                                                                                                            v369 = v366 * (v364 / v365);
LABEL_494:
                                                                                                                            re::DynamicString::appendf((a1 + 96), "Audio Update: %.2f    Audio ECS: %.2f\n", v361, v369 / 1000000.0);
                                                                                                                            if (*(a1 + 16))
                                                                                                                            {
                                                                                                                              v370 = *(a1 + 32);
                                                                                                                              v371 = *(*(a1 + 24) + 4 * (0x89607B27DA843F55 % *(a1 + 40)));
                                                                                                                              v372 = v598;
                                                                                                                              if (v371 == 0x7FFFFFFF)
                                                                                                                              {
LABEL_498:
                                                                                                                                v371 = 0x7FFFFFFFLL;
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                while (*(v370 + 80 * v371 + 4) != 129)
                                                                                                                                {
                                                                                                                                  v371 = *(v370 + 80 * v371) & 0x7FFFFFFF;
                                                                                                                                  if (v371 == 0x7FFFFFFF)
                                                                                                                                  {
                                                                                                                                    goto LABEL_498;
                                                                                                                                  }
                                                                                                                                }
                                                                                                                              }
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              v370 = *(a1 + 32);
                                                                                                                              v371 = 0x7FFFFFFFLL;
                                                                                                                              v372 = v598;
                                                                                                                            }

                                                                                                                            v373 = *(v370 + 80 * v371 + 40);
                                                                                                                            v374 = *(a1 + 256);
                                                                                                                            v375 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
                                                                                                                            v376 = v372 / 1000000.0;
                                                                                                                            if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
                                                                                                                            {
                                                                                                                              if (mach_timebase_info(info))
                                                                                                                              {
                                                                                                                                v379 = NAN;
                                                                                                                                goto LABEL_505;
                                                                                                                              }

                                                                                                                              LODWORD(v377) = info[0].numer;
                                                                                                                              LODWORD(v378) = info[0].denom;
                                                                                                                              v375 = v377 / v378;
                                                                                                                              re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v375;
                                                                                                                            }

                                                                                                                            v379 = v375 * (v373 / v374);
LABEL_505:
                                                                                                                            v380 = v376;
                                                                                                                            if (*(a1 + 16))
                                                                                                                            {
                                                                                                                              v381 = *(a1 + 32);
                                                                                                                              v382 = *(*(a1 + 24) + 4 * (0xAF26563F2EC4C8E6 % *(a1 + 40)));
                                                                                                                              if (v382 != 0x7FFFFFFF)
                                                                                                                              {
                                                                                                                                while (*(v381 + 80 * v382 + 4) != 128)
                                                                                                                                {
                                                                                                                                  v382 = *(v381 + 80 * v382) & 0x7FFFFFFF;
                                                                                                                                  if (v382 == 0x7FFFFFFF)
                                                                                                                                  {
                                                                                                                                    goto LABEL_511;
                                                                                                                                  }
                                                                                                                                }

LABEL_512:
                                                                                                                                v383 = *(v381 + 80 * v382 + 40);
                                                                                                                                v384 = *(a1 + 256);
                                                                                                                                v385 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
                                                                                                                                v386 = v379 / 1000000.0;
                                                                                                                                if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
                                                                                                                                {
                                                                                                                                  if (mach_timebase_info(info))
                                                                                                                                  {
                                                                                                                                    v389 = NAN;
                                                                                                                                    goto LABEL_517;
                                                                                                                                  }

                                                                                                                                  LODWORD(v387) = info[0].numer;
                                                                                                                                  LODWORD(v388) = info[0].denom;
                                                                                                                                  v385 = v387 / v388;
                                                                                                                                  re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v385;
                                                                                                                                }

                                                                                                                                v389 = v385 * (v383 / v384);
LABEL_517:
                                                                                                                                re::DynamicString::appendf((a1 + 96), "Asset Update: %.2f    SU ECS: %.2f\n", v380, v386 + v389 / 1000000.0);
                                                                                                                                if (*(a1 + 16))
                                                                                                                                {
                                                                                                                                  v390 = *(a1 + 32);
                                                                                                                                  v391 = *(*(a1 + 24) + 4 * (0x584592B4271786AAuLL % *(a1 + 40)));
                                                                                                                                  v392 = v603;
                                                                                                                                  if (v391 == 0x7FFFFFFF)
                                                                                                                                  {
LABEL_521:
                                                                                                                                    v391 = 0x7FFFFFFFLL;
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    while (*(v390 + 80 * v391 + 4) != 126)
                                                                                                                                    {
                                                                                                                                      v391 = *(v390 + 80 * v391) & 0x7FFFFFFF;
                                                                                                                                      if (v391 == 0x7FFFFFFF)
                                                                                                                                      {
                                                                                                                                        goto LABEL_521;
                                                                                                                                      }
                                                                                                                                    }
                                                                                                                                  }
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  v390 = *(a1 + 32);
                                                                                                                                  v391 = 0x7FFFFFFFLL;
                                                                                                                                  v392 = v603;
                                                                                                                                }

                                                                                                                                v393 = *(v390 + 80 * v391 + 40);
                                                                                                                                v394 = *(a1 + 256);
                                                                                                                                v395 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
                                                                                                                                if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
                                                                                                                                {
                                                                                                                                  if (mach_timebase_info(info))
                                                                                                                                  {
                                                                                                                                    v398 = NAN;
                                                                                                                                    goto LABEL_528;
                                                                                                                                  }

                                                                                                                                  LODWORD(v396) = info[0].numer;
                                                                                                                                  LODWORD(v397) = info[0].denom;
                                                                                                                                  v395 = v396 / v397;
                                                                                                                                  re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v395;
                                                                                                                                }

                                                                                                                                v398 = v395 * (v393 / v394);
LABEL_528:
                                                                                                                                if (*(a1 + 16))
                                                                                                                                {
                                                                                                                                  v399 = *(a1 + 32);
                                                                                                                                  v400 = *(*(a1 + 24) + 4 * (0xA09D66D4686AD125 % *(a1 + 40)));
                                                                                                                                  if (v400 != 0x7FFFFFFF)
                                                                                                                                  {
                                                                                                                                    while (*(v399 + 80 * v400 + 4) != 127)
                                                                                                                                    {
                                                                                                                                      v400 = *(v399 + 80 * v400) & 0x7FFFFFFF;
                                                                                                                                      if (v400 == 0x7FFFFFFF)
                                                                                                                                      {
                                                                                                                                        goto LABEL_534;
                                                                                                                                      }
                                                                                                                                    }

LABEL_535:
                                                                                                                                    v401 = *(v399 + 80 * v400 + 40);
                                                                                                                                    v402 = *(a1 + 256);
                                                                                                                                    v403 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
                                                                                                                                    if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
                                                                                                                                    {
                                                                                                                                      if (mach_timebase_info(info))
                                                                                                                                      {
                                                                                                                                        v406 = NAN;
                                                                                                                                        goto LABEL_540;
                                                                                                                                      }

                                                                                                                                      LODWORD(v404) = info[0].numer;
                                                                                                                                      LODWORD(v405) = info[0].denom;
                                                                                                                                      v403 = v404 / v405;
                                                                                                                                      re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v403;
                                                                                                                                    }

                                                                                                                                    v406 = v403 * (v401 / v402);
LABEL_540:
                                                                                                                                    v408 = v392 / 1000000.0;
                                                                                                                                    v409 = v602 / 1000000.0;
                                                                                                                                    v410 = v408 + v409;
                                                                                                                                    v411 = v601 / 1000000.0;
                                                                                                                                    v606 = v587 / 1000000.0;
                                                                                                                                    v412 = ((((((v600 - (v410 + v411)) - v339) - v350) - v606) - v380) - v361) - v597;
                                                                                                                                    if (v610 <= 0.0)
                                                                                                                                    {
                                                                                                                                      v413 = v412 - v608;
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      v413 = v412;
                                                                                                                                    }

                                                                                                                                    re::DynamicString::appendf((a1 + 96), "Custom ECS: %.2f    Callback ECS: %.2f\n", v398 / 1000000.0, v406 / 1000000.0);
                                                                                                                                    v407 = v595 / 1000000.0;
                                                                                                                                    re::DynamicString::appendf((a1 + 96), "Update Callback: %.2f    Others: %.2f\n", v407, (v413 - v407));
                                                                                                                                    if (*(a1 + 136))
                                                                                                                                    {
                                                                                                                                      *(a1 + 136) = 1;
                                                                                                                                      v414 = *(a1 + 144);
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      *(a1 + 136) = 0;
                                                                                                                                      v414 = (a1 + 137);
                                                                                                                                    }

                                                                                                                                    *v414 = 0;
                                                                                                                                    if (*(a1 + 168))
                                                                                                                                    {
                                                                                                                                      *(a1 + 168) = 1;
                                                                                                                                      v415 = *(a1 + 176);
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      *(a1 + 168) = 0;
                                                                                                                                      v415 = (a1 + 169);
                                                                                                                                    }

                                                                                                                                    *v415 = 0;
                                                                                                                                    re::DynamicString::appendf((a1 + 128), "Scene Draw Stats\n");
                                                                                                                                    if (*(a1 + 16))
                                                                                                                                    {
                                                                                                                                      v416 = *(a1 + 32);
                                                                                                                                      v417 = *(*(a1 + 24) + 4 * (0xC67949C3A864283CLL % *(a1 + 40)));
                                                                                                                                      if (v417 == 0x7FFFFFFF)
                                                                                                                                      {
                                                                                                                                        v418 = (v416 + 0x27FFFFFFD8);
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        v421 = 0x7FFFFFFFLL;
                                                                                                                                        while (*(v416 + 80 * v417 + 4) != 34)
                                                                                                                                        {
                                                                                                                                          v417 = *(v416 + 80 * v417) & 0x7FFFFFFF;
                                                                                                                                          if (v417 == 0x7FFFFFFF)
                                                                                                                                          {
                                                                                                                                            goto LABEL_558;
                                                                                                                                          }
                                                                                                                                        }

                                                                                                                                        v421 = v417;
LABEL_558:
                                                                                                                                        v418 = (v416 + 80 * v421 + 40);
                                                                                                                                      }

                                                                                                                                      v419 = *(a1 + 256);
                                                                                                                                      v420 = *v418 / v419;
                                                                                                                                      v422 = *(*(a1 + 24) + 4 * (0x43E7CEFC06C022BEuLL % *(a1 + 40)));
                                                                                                                                      if (v422 != 0x7FFFFFFF)
                                                                                                                                      {
                                                                                                                                        while (*(v416 + 80 * v422 + 4) != 35)
                                                                                                                                        {
                                                                                                                                          v422 = *(v416 + 80 * v422) & 0x7FFFFFFF;
                                                                                                                                          if (v422 == 0x7FFFFFFF)
                                                                                                                                          {
                                                                                                                                            goto LABEL_562;
                                                                                                                                          }
                                                                                                                                        }

LABEL_563:
                                                                                                                                        re::DynamicString::appendf((a1 + 128), "Meshes: %.0f    Draw Calls: %.0f\n", v420, (*(v416 + 80 * v422 + 40) / v419));
                                                                                                                                        if (*(a1 + 16))
                                                                                                                                        {
                                                                                                                                          v423 = *(a1 + 32);
                                                                                                                                          v424 = *(*(a1 + 24) + 4 * (0xFF96B931ED5510E2 % *(a1 + 40)));
                                                                                                                                          if (v424 != 0x7FFFFFFF)
                                                                                                                                          {
                                                                                                                                            while (*(v423 + 80 * v424 + 4) != 36)
                                                                                                                                            {
                                                                                                                                              v424 = *(v423 + 80 * v424) & 0x7FFFFFFF;
                                                                                                                                              if (v424 == 0x7FFFFFFF)
                                                                                                                                              {
                                                                                                                                                goto LABEL_569;
                                                                                                                                              }
                                                                                                                                            }

LABEL_570:
                                                                                                                                            re::DynamicString::appendf((a1 + 128), "Triangles Submitted: %.0f\n", (*(v423 + 80 * v424 + 40) / *(a1 + 256)));
                                                                                                                                            if (*(a1 + 16))
                                                                                                                                            {
                                                                                                                                              v425 = *(a1 + 32);
                                                                                                                                              v426 = *(*(a1 + 24) + 4 * (0x499EF488EF760E18uLL % *(a1 + 40)));
                                                                                                                                              if (v426 != 0x7FFFFFFF)
                                                                                                                                              {
                                                                                                                                                while (*(v425 + 80 * v426 + 4) != 37)
                                                                                                                                                {
                                                                                                                                                  v426 = *(v425 + 80 * v426) & 0x7FFFFFFF;
                                                                                                                                                  if (v426 == 0x7FFFFFFF)
                                                                                                                                                  {
                                                                                                                                                    goto LABEL_576;
                                                                                                                                                  }
                                                                                                                                                }

LABEL_577:
                                                                                                                                                re::DynamicString::appendf((a1 + 128), "Vertices Submitted: %.0f\n", (*(v425 + 80 * v426 + 40) / *(a1 + 256)));
                                                                                                                                                re::DynamicString::appendf((a1 + 128), "Lighting Stats \n");
                                                                                                                                                if (*(a1 + 16))
                                                                                                                                                {
                                                                                                                                                  v427 = *(a1 + 40);
                                                                                                                                                  v429 = *(a1 + 24);
                                                                                                                                                  v428 = *(a1 + 32);
                                                                                                                                                  v430 = *(v429 + 4 * (0xD1F31274AB1CEA5ALL % v427));
                                                                                                                                                  if (v430 == 0x7FFFFFFF)
                                                                                                                                                  {
                                                                                                                                                    v431 = (v428 + 0x27FFFFFFD8);
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    v434 = 0x7FFFFFFFLL;
                                                                                                                                                    while (*(v428 + 80 * v430 + 4) != 95)
                                                                                                                                                    {
                                                                                                                                                      v430 = *(v428 + 80 * v430) & 0x7FFFFFFF;
                                                                                                                                                      if (v430 == 0x7FFFFFFF)
                                                                                                                                                      {
                                                                                                                                                        goto LABEL_586;
                                                                                                                                                      }
                                                                                                                                                    }

                                                                                                                                                    v434 = v430;
LABEL_586:
                                                                                                                                                    v431 = (v428 + 80 * v434 + 40);
                                                                                                                                                  }

                                                                                                                                                  v432 = *(a1 + 256);
                                                                                                                                                  v433 = *v431 / v432;
                                                                                                                                                  v435 = *(v429 + 4 * (0xB283085A8C486789 % v427));
                                                                                                                                                  if (v435 != 0x7FFFFFFF)
                                                                                                                                                  {
                                                                                                                                                    while (*(v428 + 80 * v435 + 4) != 96)
                                                                                                                                                    {
                                                                                                                                                      v435 = *(v428 + 80 * v435) & 0x7FFFFFFF;
                                                                                                                                                      if (v435 == 0x7FFFFFFF)
                                                                                                                                                      {
                                                                                                                                                        goto LABEL_590;
                                                                                                                                                      }
                                                                                                                                                    }

LABEL_591:
                                                                                                                                                    re::DynamicString::appendf((a1 + 128), "Total : %.0f (culled %.0f)\n", v433, (*(v428 + 80 * v435 + 40) / v432));
                                                                                                                                                    if (*(a1 + 16))
                                                                                                                                                    {
                                                                                                                                                      v436 = *(a1 + 40);
                                                                                                                                                      v438 = *(a1 + 24);
                                                                                                                                                      v437 = *(a1 + 32);
                                                                                                                                                      v439 = *(v438 + 4 * (0xAEFF7D4B5B72EC99 % v436));
                                                                                                                                                      if (v439 == 0x7FFFFFFF)
                                                                                                                                                      {
                                                                                                                                                        v440 = (v437 + 0x27FFFFFFD8);
                                                                                                                                                      }

                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                        v444 = 0x7FFFFFFFLL;
                                                                                                                                                        while (*(v437 + 80 * v439 + 4) != 97)
                                                                                                                                                        {
                                                                                                                                                          v439 = *(v437 + 80 * v439) & 0x7FFFFFFF;
                                                                                                                                                          if (v439 == 0x7FFFFFFF)
                                                                                                                                                          {
                                                                                                                                                            goto LABEL_600;
                                                                                                                                                          }
                                                                                                                                                        }

                                                                                                                                                        v444 = v439;
LABEL_600:
                                                                                                                                                        v440 = (v437 + 80 * v444 + 40);
                                                                                                                                                      }

                                                                                                                                                      v445 = *v440;
                                                                                                                                                      v442 = *(a1 + 256);
                                                                                                                                                      v446 = *(v438 + 4 * (0x51B6E610EB969D89 % v436));
                                                                                                                                                      if (v446 == 0x7FFFFFFF)
                                                                                                                                                      {
                                                                                                                                                        v447 = (v437 + 0x27FFFFFFD8);
                                                                                                                                                      }

                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                        v448 = 0x7FFFFFFFLL;
                                                                                                                                                        while (*(v437 + 80 * v446 + 4) != 103)
                                                                                                                                                        {
                                                                                                                                                          v446 = *(v437 + 80 * v446) & 0x7FFFFFFF;
                                                                                                                                                          if (v446 == 0x7FFFFFFF)
                                                                                                                                                          {
                                                                                                                                                            goto LABEL_608;
                                                                                                                                                          }
                                                                                                                                                        }

                                                                                                                                                        v448 = v446;
LABEL_608:
                                                                                                                                                        v447 = (v437 + 80 * v448 + 40);
                                                                                                                                                      }

                                                                                                                                                      v443 = v445 / v442;
                                                                                                                                                      v441 = *v447;
                                                                                                                                                      v449 = *(v438 + 4 * (0xFADB7BDC13722E8ELL % v436));
                                                                                                                                                      if (v449 != 0x7FFFFFFF)
                                                                                                                                                      {
                                                                                                                                                        while (*(v437 + 80 * v449 + 4) != 104)
                                                                                                                                                        {
                                                                                                                                                          v449 = *(v437 + 80 * v449) & 0x7FFFFFFF;
                                                                                                                                                          if (v449 == 0x7FFFFFFF)
                                                                                                                                                          {
                                                                                                                                                            goto LABEL_612;
                                                                                                                                                          }
                                                                                                                                                        }

LABEL_613:
                                                                                                                                                        re::DynamicString::appendf((a1 + 128), "Ambient : %.0f, Proxy : %.0f (culled %.0f)\n", v443, (v441 / v442), (*(v437 + 80 * v449 + 40) / v442));
                                                                                                                                                        if (*(a1 + 16))
                                                                                                                                                        {
                                                                                                                                                          v450 = *(a1 + 40);
                                                                                                                                                          v452 = *(a1 + 24);
                                                                                                                                                          v451 = *(a1 + 32);
                                                                                                                                                          v453 = *(v452 + 4 * (0x79CE5DC97509C089 % v450));
                                                                                                                                                          if (v453 == 0x7FFFFFFF)
                                                                                                                                                          {
                                                                                                                                                            v454 = (v451 + 0x27FFFFFFD8);
                                                                                                                                                          }

                                                                                                                                                          else
                                                                                                                                                          {
                                                                                                                                                            v458 = 0x7FFFFFFFLL;
                                                                                                                                                            while (*(v451 + 80 * v453 + 4) != 99)
                                                                                                                                                            {
                                                                                                                                                              v453 = *(v451 + 80 * v453) & 0x7FFFFFFF;
                                                                                                                                                              if (v453 == 0x7FFFFFFF)
                                                                                                                                                              {
                                                                                                                                                                goto LABEL_622;
                                                                                                                                                              }
                                                                                                                                                            }

                                                                                                                                                            v458 = v453;
LABEL_622:
                                                                                                                                                            v454 = (v451 + 80 * v458 + 40);
                                                                                                                                                          }

                                                                                                                                                          v459 = *v454;
                                                                                                                                                          v456 = *(a1 + 256);
                                                                                                                                                          v460 = *(v452 + 4 * (0x2731D9FDF756B334 % v450));
                                                                                                                                                          if (v460 == 0x7FFFFFFF)
                                                                                                                                                          {
                                                                                                                                                            v461 = (v451 + 0x27FFFFFFD8);
                                                                                                                                                          }

                                                                                                                                                          else
                                                                                                                                                          {
                                                                                                                                                            v462 = 0x7FFFFFFFLL;
                                                                                                                                                            while (*(v451 + 80 * v460 + 4) != 100)
                                                                                                                                                            {
                                                                                                                                                              v460 = *(v451 + 80 * v460) & 0x7FFFFFFF;
                                                                                                                                                              if (v460 == 0x7FFFFFFF)
                                                                                                                                                              {
                                                                                                                                                                goto LABEL_630;
                                                                                                                                                              }
                                                                                                                                                            }

                                                                                                                                                            v462 = v460;
LABEL_630:
                                                                                                                                                            v461 = (v451 + 80 * v462 + 40);
                                                                                                                                                          }

                                                                                                                                                          v457 = v459 / v456;
                                                                                                                                                          v455 = *v461;
                                                                                                                                                          v463 = *(v452 + 4 * (0xF2F8EDE6FA70BF5FLL % v450));
                                                                                                                                                          if (v463 != 0x7FFFFFFF)
                                                                                                                                                          {
                                                                                                                                                            while (*(v451 + 80 * v463 + 4) != 98)
                                                                                                                                                            {
                                                                                                                                                              v463 = *(v451 + 80 * v463) & 0x7FFFFFFF;
                                                                                                                                                              if (v463 == 0x7FFFFFFF)
                                                                                                                                                              {
                                                                                                                                                                goto LABEL_634;
                                                                                                                                                              }
                                                                                                                                                            }

LABEL_635:
                                                                                                                                                            re::DynamicString::appendf((a1 + 128), "Point : %.0f (culled %.0f), Directional : %.0f\n", v457, (v455 / v456), (*(v451 + 80 * v463 + 40) / v456));
                                                                                                                                                            if (*(a1 + 16))
                                                                                                                                                            {
                                                                                                                                                              v464 = *(a1 + 40);
                                                                                                                                                              v466 = *(a1 + 24);
                                                                                                                                                              v465 = *(a1 + 32);
                                                                                                                                                              v467 = *(v466 + 4 * (0xA7D485D747130317 % v464));
                                                                                                                                                              if (v467 == 0x7FFFFFFF)
                                                                                                                                                              {
                                                                                                                                                                v468 = (v465 + 0x27FFFFFFD8);
                                                                                                                                                              }

                                                                                                                                                              else
                                                                                                                                                              {
                                                                                                                                                                v472 = 0x7FFFFFFFLL;
                                                                                                                                                                while (*(v465 + 80 * v467 + 4) != 101)
                                                                                                                                                                {
                                                                                                                                                                  v467 = *(v465 + 80 * v467) & 0x7FFFFFFF;
                                                                                                                                                                  if (v467 == 0x7FFFFFFF)
                                                                                                                                                                  {
                                                                                                                                                                    goto LABEL_644;
                                                                                                                                                                  }
                                                                                                                                                                }

                                                                                                                                                                v472 = v467;
LABEL_644:
                                                                                                                                                                v468 = (v465 + 80 * v472 + 40);
                                                                                                                                                              }

                                                                                                                                                              v473 = *v468;
                                                                                                                                                              v470 = *(a1 + 256);
                                                                                                                                                              v474 = *(v466 + 4 * (0x973D7F79FC81E7F3 % v464));
                                                                                                                                                              if (v474 == 0x7FFFFFFF)
                                                                                                                                                              {
                                                                                                                                                                v475 = (v465 + 0x27FFFFFFD8);
                                                                                                                                                              }

                                                                                                                                                              else
                                                                                                                                                              {
                                                                                                                                                                v476 = 0x7FFFFFFFLL;
                                                                                                                                                                while (*(v465 + 80 * v474 + 4) != 102)
                                                                                                                                                                {
                                                                                                                                                                  v474 = *(v465 + 80 * v474) & 0x7FFFFFFF;
                                                                                                                                                                  if (v474 == 0x7FFFFFFF)
                                                                                                                                                                  {
                                                                                                                                                                    goto LABEL_652;
                                                                                                                                                                  }
                                                                                                                                                                }

                                                                                                                                                                v476 = v474;
LABEL_652:
                                                                                                                                                                v475 = (v465 + 80 * v476 + 40);
                                                                                                                                                              }

                                                                                                                                                              v471 = v473 / v470;
                                                                                                                                                              v469 = *v475;
                                                                                                                                                              v477 = *(v466 + 4 * (0x168B5740BA2991FFLL % v464));
                                                                                                                                                              if (v477 != 0x7FFFFFFF)
                                                                                                                                                              {
                                                                                                                                                                while (*(v465 + 80 * v477 + 4) != 105)
                                                                                                                                                                {
                                                                                                                                                                  v477 = *(v465 + 80 * v477) & 0x7FFFFFFF;
                                                                                                                                                                  if (v477 == 0x7FFFFFFF)
                                                                                                                                                                  {
                                                                                                                                                                    goto LABEL_656;
                                                                                                                                                                  }
                                                                                                                                                                }

LABEL_657:
                                                                                                                                                                re::DynamicString::appendf((a1 + 128), "Spot : %.0f (culled %.0f), Area : %.0f\n", v471, (v469 / v470), (*(v465 + 80 * v477 + 40) / v470));
                                                                                                                                                                if (*(a1 + 16))
                                                                                                                                                                {
                                                                                                                                                                  v478 = *(a1 + 32);
                                                                                                                                                                  v479 = *(*(a1 + 24) + 4 * (0x17B1332CD96C043DuLL % *(a1 + 40)));
                                                                                                                                                                  if (v479 != 0x7FFFFFFF)
                                                                                                                                                                  {
                                                                                                                                                                    while (*(v478 + 80 * v479 + 4) != 118)
                                                                                                                                                                    {
                                                                                                                                                                      v479 = *(v478 + 80 * v479) & 0x7FFFFFFF;
                                                                                                                                                                      if (v479 == 0x7FFFFFFF)
                                                                                                                                                                      {
                                                                                                                                                                        goto LABEL_663;
                                                                                                                                                                      }
                                                                                                                                                                    }

LABEL_664:
                                                                                                                                                                    re::DynamicString::appendf((a1 + 160), "Entities: %.0f\n", (*(v478 + 80 * v479 + 40) / *(a1 + 256)));
                                                                                                                                                                    re::DynamicString::appendf((a1 + 160), "Component Counts\n");
                                                                                                                                                                    if (*(a1 + 16))
                                                                                                                                                                    {
                                                                                                                                                                      v480 = *(a1 + 40);
                                                                                                                                                                      v482 = *(a1 + 24);
                                                                                                                                                                      v481 = *(a1 + 32);
                                                                                                                                                                      v483 = *(v482 + 4 * (0x4A1033F1AB1B19DDLL % v480));
                                                                                                                                                                      if (v483 == 0x7FFFFFFF)
                                                                                                                                                                      {
                                                                                                                                                                        v484 = (v481 + 0x27FFFFFFD8);
                                                                                                                                                                      }

                                                                                                                                                                      else
                                                                                                                                                                      {
                                                                                                                                                                        v487 = 0x7FFFFFFFLL;
                                                                                                                                                                        while (*(v481 + 80 * v483 + 4) != 94)
                                                                                                                                                                        {
                                                                                                                                                                          v483 = *(v481 + 80 * v483) & 0x7FFFFFFF;
                                                                                                                                                                          if (v483 == 0x7FFFFFFF)
                                                                                                                                                                          {
                                                                                                                                                                            goto LABEL_673;
                                                                                                                                                                          }
                                                                                                                                                                        }

                                                                                                                                                                        v487 = v483;
LABEL_673:
                                                                                                                                                                        v484 = (v481 + 80 * v487 + 40);
                                                                                                                                                                      }

                                                                                                                                                                      v485 = *(a1 + 256);
                                                                                                                                                                      v486 = *v484 / v485;
                                                                                                                                                                      v488 = *(v482 + 4 * (0x2C81EA329AEABA69 % v480));
                                                                                                                                                                      if (v488 != 0x7FFFFFFF)
                                                                                                                                                                      {
                                                                                                                                                                        while (*(v481 + 80 * v488 + 4) != 106)
                                                                                                                                                                        {
                                                                                                                                                                          v488 = *(v481 + 80 * v488) & 0x7FFFFFFF;
                                                                                                                                                                          if (v488 == 0x7FFFFFFF)
                                                                                                                                                                          {
                                                                                                                                                                            goto LABEL_677;
                                                                                                                                                                          }
                                                                                                                                                                        }

LABEL_678:
                                                                                                                                                                        re::DynamicString::appendf((a1 + 160), "Meshes: %.0f, Shadows: %.0f\n", v486, (*(v481 + 80 * v488 + 40) / v485));
                                                                                                                                                                        if (*(a1 + 16))
                                                                                                                                                                        {
                                                                                                                                                                          v489 = *(a1 + 32);
                                                                                                                                                                          v490 = *(*(a1 + 24) + 4 * (0xD1F31274AB1CEA5ALL % *(a1 + 40)));
                                                                                                                                                                          if (v490 != 0x7FFFFFFF)
                                                                                                                                                                          {
                                                                                                                                                                            while (*(v489 + 80 * v490 + 4) != 95)
                                                                                                                                                                            {
                                                                                                                                                                              v490 = *(v489 + 80 * v490) & 0x7FFFFFFF;
                                                                                                                                                                              if (v490 == 0x7FFFFFFF)
                                                                                                                                                                              {
                                                                                                                                                                                goto LABEL_684;
                                                                                                                                                                              }
                                                                                                                                                                            }

LABEL_685:
                                                                                                                                                                            re::DynamicString::appendf((a1 + 160), "Lights: %.0f\n", (*(v489 + 80 * v490 + 40) / *(a1 + 256)));
                                                                                                                                                                            if (*(a1 + 16))
                                                                                                                                                                            {
                                                                                                                                                                              v491 = *(a1 + 40);
                                                                                                                                                                              v493 = *(a1 + 24);
                                                                                                                                                                              v492 = *(a1 + 32);
                                                                                                                                                                              v494 = *(v493 + 4 * (0xD732B4173198B1FLL % v491));
                                                                                                                                                                              if (v494 == 0x7FFFFFFF)
                                                                                                                                                                              {
                                                                                                                                                                                v495 = (v492 + 0x27FFFFFFD8);
                                                                                                                                                                              }

                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                v498 = 0x7FFFFFFFLL;
                                                                                                                                                                                while (*(v492 + 80 * v494 + 4) != 149)
                                                                                                                                                                                {
                                                                                                                                                                                  v494 = *(v492 + 80 * v494) & 0x7FFFFFFF;
                                                                                                                                                                                  if (v494 == 0x7FFFFFFF)
                                                                                                                                                                                  {
                                                                                                                                                                                    goto LABEL_694;
                                                                                                                                                                                  }
                                                                                                                                                                                }

                                                                                                                                                                                v498 = v494;
LABEL_694:
                                                                                                                                                                                v495 = (v492 + 80 * v498 + 40);
                                                                                                                                                                              }

                                                                                                                                                                              v496 = *(a1 + 256);
                                                                                                                                                                              v497 = *v495 / v496;
                                                                                                                                                                              v499 = *(v493 + 4 * (0xB3CC71E5DDF6EBC3 % v491));
                                                                                                                                                                              if (v499 != 0x7FFFFFFF)
                                                                                                                                                                              {
                                                                                                                                                                                while (*(v492 + 80 * v499 + 4) != 151)
                                                                                                                                                                                {
                                                                                                                                                                                  v499 = *(v492 + 80 * v499) & 0x7FFFFFFF;
                                                                                                                                                                                  if (v499 == 0x7FFFFFFF)
                                                                                                                                                                                  {
                                                                                                                                                                                    goto LABEL_698;
                                                                                                                                                                                  }
                                                                                                                                                                                }

LABEL_699:
                                                                                                                                                                                re::DynamicString::appendf((a1 + 160), "VFX Scenes: %.0f, VFX Draw Calls: %.0f\n", v497, (*(v492 + 80 * v499 + 40) / v496));
                                                                                                                                                                                if (*(a1 + 16))
                                                                                                                                                                                {
                                                                                                                                                                                  v500 = *(a1 + 40);
                                                                                                                                                                                  v502 = *(a1 + 24);
                                                                                                                                                                                  v501 = *(a1 + 32);
                                                                                                                                                                                  v503 = *(v502 + 4 * (0x2427CEE8D2E4A800 % v500));
                                                                                                                                                                                  if (v503 == 0x7FFFFFFF)
                                                                                                                                                                                  {
                                                                                                                                                                                    v504 = (v501 + 0x27FFFFFFD8);
                                                                                                                                                                                  }

                                                                                                                                                                                  else
                                                                                                                                                                                  {
                                                                                                                                                                                    v507 = 0x7FFFFFFFLL;
                                                                                                                                                                                    while (*(v501 + 80 * v503 + 4) != 143)
                                                                                                                                                                                    {
                                                                                                                                                                                      v503 = *(v501 + 80 * v503) & 0x7FFFFFFF;
                                                                                                                                                                                      if (v503 == 0x7FFFFFFF)
                                                                                                                                                                                      {
                                                                                                                                                                                        goto LABEL_708;
                                                                                                                                                                                      }
                                                                                                                                                                                    }

                                                                                                                                                                                    v507 = v503;
LABEL_708:
                                                                                                                                                                                    v504 = (v501 + 80 * v507 + 40);
                                                                                                                                                                                  }

                                                                                                                                                                                  v505 = *(a1 + 256);
                                                                                                                                                                                  v506 = *v504 / v505;
                                                                                                                                                                                  v508 = *(v502 + 4 * (0xA630657CB8C7F164 % v500));
                                                                                                                                                                                  if (v508 != 0x7FFFFFFF)
                                                                                                                                                                                  {
                                                                                                                                                                                    while (*(v501 + 80 * v508 + 4) != 48)
                                                                                                                                                                                    {
                                                                                                                                                                                      v508 = *(v501 + 80 * v508) & 0x7FFFFFFF;
                                                                                                                                                                                      if (v508 == 0x7FFFFFFF)
                                                                                                                                                                                      {
                                                                                                                                                                                        goto LABEL_712;
                                                                                                                                                                                      }
                                                                                                                                                                                    }

LABEL_713:
                                                                                                                                                                                    re::DynamicString::appendf((a1 + 160), "AudioPlayers: %.0f, Network: %.0f\n", v506, (*(v501 + 80 * v508 + 40) / v505));
                                                                                                                                                                                    if (*(a1 + 16))
                                                                                                                                                                                    {
                                                                                                                                                                                      v509 = *(a1 + 40);
                                                                                                                                                                                      v511 = *(a1 + 24);
                                                                                                                                                                                      v510 = *(a1 + 32);
                                                                                                                                                                                      v512 = *(v511 + 4 * (0xCF4A7B3C48D45C4FLL % v509));
                                                                                                                                                                                      if (v512 == 0x7FFFFFFF)
                                                                                                                                                                                      {
                                                                                                                                                                                        v513 = (v510 + 0x27FFFFFFD8);
                                                                                                                                                                                      }

                                                                                                                                                                                      else
                                                                                                                                                                                      {
                                                                                                                                                                                        v516 = 0x7FFFFFFFLL;
                                                                                                                                                                                        while (*(v510 + 80 * v512 + 4) != 66)
                                                                                                                                                                                        {
                                                                                                                                                                                          v512 = *(v510 + 80 * v512) & 0x7FFFFFFF;
                                                                                                                                                                                          if (v512 == 0x7FFFFFFF)
                                                                                                                                                                                          {
                                                                                                                                                                                            goto LABEL_722;
                                                                                                                                                                                          }
                                                                                                                                                                                        }

                                                                                                                                                                                        v516 = v512;
LABEL_722:
                                                                                                                                                                                        v513 = (v510 + 80 * v516 + 40);
                                                                                                                                                                                      }

                                                                                                                                                                                      v514 = *(a1 + 256);
                                                                                                                                                                                      v515 = *v513 / v514;
                                                                                                                                                                                      v517 = *(v511 + 4 * (0xA46B02245B9F3AF4 % v509));
                                                                                                                                                                                      if (v517 != 0x7FFFFFFF)
                                                                                                                                                                                      {
                                                                                                                                                                                        while (*(v510 + 80 * v517 + 4) != 67)
                                                                                                                                                                                        {
                                                                                                                                                                                          v517 = *(v510 + 80 * v517) & 0x7FFFFFFF;
                                                                                                                                                                                          if (v517 == 0x7FFFFFFF)
                                                                                                                                                                                          {
                                                                                                                                                                                            goto LABEL_726;
                                                                                                                                                                                          }
                                                                                                                                                                                        }

LABEL_727:
                                                                                                                                                                                        re::DynamicString::appendf((a1 + 160), "RigidBodies: %.0f    Active: %.0f\n", v515, (*(v510 + 80 * v517 + 40) / v514));
                                                                                                                                                                                        if (*(a1 + 16))
                                                                                                                                                                                        {
                                                                                                                                                                                          v518 = *(a1 + 40);
                                                                                                                                                                                          v520 = *(a1 + 24);
                                                                                                                                                                                          v519 = *(a1 + 32);
                                                                                                                                                                                          v521 = *(v520 + 4 * (0x21C2DD3F1FDB3325 % v518));
                                                                                                                                                                                          if (v521 == 0x7FFFFFFF)
                                                                                                                                                                                          {
                                                                                                                                                                                            v522 = (v519 + 0x27FFFFFFD8);
                                                                                                                                                                                          }

                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                            v525 = 0x7FFFFFFFLL;
                                                                                                                                                                                            while (*(v519 + 80 * v521 + 4) != 68)
                                                                                                                                                                                            {
                                                                                                                                                                                              v521 = *(v519 + 80 * v521) & 0x7FFFFFFF;
                                                                                                                                                                                              if (v521 == 0x7FFFFFFF)
                                                                                                                                                                                              {
                                                                                                                                                                                                goto LABEL_736;
                                                                                                                                                                                              }
                                                                                                                                                                                            }

                                                                                                                                                                                            v525 = v521;
LABEL_736:
                                                                                                                                                                                            v522 = (v519 + 80 * v525 + 40);
                                                                                                                                                                                          }

                                                                                                                                                                                          v523 = *(a1 + 256);
                                                                                                                                                                                          v524 = *v522 / v523;
                                                                                                                                                                                          v526 = *(v520 + 4 * (0x41956A36DBC51080 % v518));
                                                                                                                                                                                          if (v526 != 0x7FFFFFFF)
                                                                                                                                                                                          {
                                                                                                                                                                                            while (*(v519 + 80 * v526 + 4) != 69)
                                                                                                                                                                                            {
                                                                                                                                                                                              v526 = *(v519 + 80 * v526) & 0x7FFFFFFF;
                                                                                                                                                                                              if (v526 == 0x7FFFFFFF)
                                                                                                                                                                                              {
                                                                                                                                                                                                goto LABEL_740;
                                                                                                                                                                                              }
                                                                                                                                                                                            }

LABEL_741:
                                                                                                                                                                                            re::DynamicString::appendf((a1 + 160), "Colliders: %.0f    Contacts: %.0f\n", v524, (*(v519 + 80 * v526 + 40) / v523));
                                                                                                                                                                                            if (*(a1 + 16))
                                                                                                                                                                                            {
                                                                                                                                                                                              v527 = *(a1 + 40);
                                                                                                                                                                                              v529 = *(a1 + 24);
                                                                                                                                                                                              v528 = *(a1 + 32);
                                                                                                                                                                                              v530 = *(v529 + 4 * (0xCA4B25A23588FF96 % v527));
                                                                                                                                                                                              if (v530 == 0x7FFFFFFF)
                                                                                                                                                                                              {
                                                                                                                                                                                                v531 = (v528 + 0x27FFFFFFD8);
                                                                                                                                                                                              }

                                                                                                                                                                                              else
                                                                                                                                                                                              {
                                                                                                                                                                                                v534 = 0x7FFFFFFFLL;
                                                                                                                                                                                                while (*(v528 + 80 * v530 + 4) != 110)
                                                                                                                                                                                                {
                                                                                                                                                                                                  v530 = *(v528 + 80 * v530) & 0x7FFFFFFF;
                                                                                                                                                                                                  if (v530 == 0x7FFFFFFF)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    goto LABEL_750;
                                                                                                                                                                                                  }
                                                                                                                                                                                                }

                                                                                                                                                                                                v534 = v530;
LABEL_750:
                                                                                                                                                                                                v531 = (v528 + 80 * v534 + 40);
                                                                                                                                                                                              }

                                                                                                                                                                                              v532 = *(a1 + 256);
                                                                                                                                                                                              v533 = *v531 / v532;
                                                                                                                                                                                              v535 = *(v529 + 4 * (0xF2BAED4A618B76B9 % v527));
                                                                                                                                                                                              if (v535 != 0x7FFFFFFF)
                                                                                                                                                                                              {
                                                                                                                                                                                                while (*(v528 + 80 * v535 + 4) != 108)
                                                                                                                                                                                                {
                                                                                                                                                                                                  v535 = *(v528 + 80 * v535) & 0x7FFFFFFF;
                                                                                                                                                                                                  if (v535 == 0x7FFFFFFF)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    goto LABEL_754;
                                                                                                                                                                                                  }
                                                                                                                                                                                                }

LABEL_755:
                                                                                                                                                                                                re::DynamicString::appendf((a1 + 160), "MeshDeformations: %.0f, SkeletalPoses: %.0f\n", v533, (*(v528 + 80 * v535 + 40) / v532));
                                                                                                                                                                                                if (*(a1 + 16))
                                                                                                                                                                                                {
                                                                                                                                                                                                  v536 = *(a1 + 40);
                                                                                                                                                                                                  v538 = *(a1 + 24);
                                                                                                                                                                                                  v537 = *(a1 + 32);
                                                                                                                                                                                                  v539 = *(v538 + 4 * (0x33CFFC116CF4F2F0 % v536));
                                                                                                                                                                                                  if (v539 == 0x7FFFFFFF)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    v540 = (v537 + 0x27FFFFFFD8);
                                                                                                                                                                                                  }

                                                                                                                                                                                                  else
                                                                                                                                                                                                  {
                                                                                                                                                                                                    v543 = 0x7FFFFFFFLL;
                                                                                                                                                                                                    while (*(v537 + 80 * v539 + 4) != 116)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      v539 = *(v537 + 80 * v539) & 0x7FFFFFFF;
                                                                                                                                                                                                      if (v539 == 0x7FFFFFFF)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        goto LABEL_764;
                                                                                                                                                                                                      }
                                                                                                                                                                                                    }

                                                                                                                                                                                                    v543 = v539;
LABEL_764:
                                                                                                                                                                                                    v540 = (v537 + 80 * v543 + 40);
                                                                                                                                                                                                  }

                                                                                                                                                                                                  v541 = *v540;
                                                                                                                                                                                                  v542 = *(a1 + 256);
                                                                                                                                                                                                  v544 = *(v538 + 4 * (0xEF08A61A384AADEELL % v536));
                                                                                                                                                                                                  if (v544 != 0x7FFFFFFF)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    while (*(v537 + 80 * v544 + 4) != 117)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      v544 = *(v537 + 80 * v544) & 0x7FFFFFFF;
                                                                                                                                                                                                      if (v544 == 0x7FFFFFFF)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        goto LABEL_768;
                                                                                                                                                                                                      }
                                                                                                                                                                                                    }

LABEL_769:
                                                                                                                                                                                                    re::DynamicString::appendf((a1 + 160), "ActiveDeformations: %.0f, Joints: %.0f\n", (v541 / v542), (*(v537 + 80 * v544 + 40) / v542));
                                                                                                                                                                                                    info[0].numer = 93;
                                                                                                                                                                                                    task_info(*MEMORY[0x1E69E9A60], 0x16u, re::ProfilerDetailedHUDProcessor::setMemoryPowerStatisticsData(void)::vmInfo, info);
                                                                                                                                                                                                    if (*(a1 + 200))
                                                                                                                                                                                                    {
                                                                                                                                                                                                      *(a1 + 200) = 1;
                                                                                                                                                                                                      v545 = *(a1 + 208);
                                                                                                                                                                                                    }

                                                                                                                                                                                                    else
                                                                                                                                                                                                    {
                                                                                                                                                                                                      *(a1 + 200) = 0;
                                                                                                                                                                                                      v545 = (a1 + 201);
                                                                                                                                                                                                    }

                                                                                                                                                                                                    *v545 = 0;
                                                                                                                                                                                                    re::DynamicString::append((a1 + 192), "System Memory and Thermal Info\n", 0x1FuLL);
                                                                                                                                                                                                    re::DynamicString::appendf((a1 + 192), "Engine Dirty Memory : %.2f\n", (vcvts_n_f32_u64(qword_1ECF192BC, 0xAuLL) * 0.00097656));
                                                                                                                                                                                                    re::DynamicString::appendf((a1 + 192), "Engine Peak Dirty Memory : %.2f\n", (vcvts_n_f32_s64(qword_1ECF192D4, 0xAuLL) * 0.00097656));
                                                                                                                                                                                                    re::DynamicString::appendf((a1 + 192), "Process Memory Limit : %.2f\n", (vcvts_n_f32_u64(*(a1 + 272), 0xAuLL) * 0.00097656));
                                                                                                                                                                                                    v546 = [MEMORY[0x1E696AE30] processInfo];
                                                                                                                                                                                                    v547 = [v546 thermalState];

                                                                                                                                                                                                    if (v547 > 2)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      re::DynamicString::appendf((a1 + 192), "Thermal State: Critical\n");
                                                                                                                                                                                                    }

                                                                                                                                                                                                    else
                                                                                                                                                                                                    {
                                                                                                                                                                                                      re::DynamicString::appendf((a1 + 192), off_1E8721778[v547]);
                                                                                                                                                                                                    }

                                                                                                                                                                                                    if (*(a1 + 232))
                                                                                                                                                                                                    {
                                                                                                                                                                                                      *(a1 + 232) = 1;
                                                                                                                                                                                                      v548 = *(a1 + 240);
                                                                                                                                                                                                    }

                                                                                                                                                                                                    else
                                                                                                                                                                                                    {
                                                                                                                                                                                                      *(a1 + 232) = 0;
                                                                                                                                                                                                      v548 = (a1 + 233);
                                                                                                                                                                                                    }

                                                                                                                                                                                                    *v548 = 0;
                                                                                                                                                                                                    re::DynamicString::append((a1 + 224), "Network Session Stats\n", 0x16uLL);
                                                                                                                                                                                                    re::DynamicString::append((a1 + 224), "Sent/Recevived\n", 0xFuLL);
                                                                                                                                                                                                    v549 = *(a1 + 16);
                                                                                                                                                                                                    if (v549)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      v550 = *(a1 + 32);
                                                                                                                                                                                                      v551 = *(*(a1 + 24) + 4 * (0xB74FD707F0B39325 % *(a1 + 40)));
                                                                                                                                                                                                      if (v551 != 0x7FFFFFFF)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        while (*(v550 + 80 * v551 + 4) != 40)
                                                                                                                                                                                                        {
                                                                                                                                                                                                          v551 = *(v550 + 80 * v551) & 0x7FFFFFFF;
                                                                                                                                                                                                          if (v551 == 0x7FFFFFFF)
                                                                                                                                                                                                          {
                                                                                                                                                                                                            goto LABEL_784;
                                                                                                                                                                                                          }
                                                                                                                                                                                                        }

LABEL_785:
                                                                                                                                                                                                        v552 = *(a1 + 256);
                                                                                                                                                                                                        v553 = (*(v550 + 80 * v551 + 40) / v552) * 0.0009765625;
                                                                                                                                                                                                        v554 = 0x7FFFFFFFLL;
                                                                                                                                                                                                        if (v549)
                                                                                                                                                                                                        {
                                                                                                                                                                                                          v555 = *(*(a1 + 24) + 4 * (0x66D1ECF1BBB89D25uLL % *(a1 + 40)));
                                                                                                                                                                                                          if (v555 != 0x7FFFFFFF)
                                                                                                                                                                                                          {
                                                                                                                                                                                                            v554 = 0x7FFFFFFFLL;
                                                                                                                                                                                                            while (*(v550 + 80 * v555 + 4) != 41)
                                                                                                                                                                                                            {
                                                                                                                                                                                                              v555 = *(v550 + 80 * v555) & 0x7FFFFFFF;
                                                                                                                                                                                                              if (v555 == 0x7FFFFFFF)
                                                                                                                                                                                                              {
                                                                                                                                                                                                                goto LABEL_792;
                                                                                                                                                                                                              }
                                                                                                                                                                                                            }

                                                                                                                                                                                                            v554 = v555;
                                                                                                                                                                                                          }
                                                                                                                                                                                                        }

LABEL_792:
                                                                                                                                                                                                        re::DynamicString::appendf((a1 + 224), "Bytes [KB]: %.2f/%.2f\n", v553, (*(v550 + 80 * v554 + 40) / v552) * 0.0009765625);
                                                                                                                                                                                                        if (*(a1 + 16))
                                                                                                                                                                                                        {
                                                                                                                                                                                                          v556 = *(a1 + 40);
                                                                                                                                                                                                          v558 = *(a1 + 24);
                                                                                                                                                                                                          v557 = *(a1 + 32);
                                                                                                                                                                                                          v559 = *(v558 + 4 * (0xA759EA27D4727622 % v556));
                                                                                                                                                                                                          if (v559 == 0x7FFFFFFF)
                                                                                                                                                                                                          {
                                                                                                                                                                                                            v560 = (v557 + 0x27FFFFFFD8);
                                                                                                                                                                                                          }

                                                                                                                                                                                                          else
                                                                                                                                                                                                          {
                                                                                                                                                                                                            v563 = 0x7FFFFFFFLL;
                                                                                                                                                                                                            while (*(v557 + 80 * v559 + 4) != 42)
                                                                                                                                                                                                            {
                                                                                                                                                                                                              v559 = *(v557 + 80 * v559) & 0x7FFFFFFF;
                                                                                                                                                                                                              if (v559 == 0x7FFFFFFF)
                                                                                                                                                                                                              {
                                                                                                                                                                                                                goto LABEL_801;
                                                                                                                                                                                                              }
                                                                                                                                                                                                            }

                                                                                                                                                                                                            v563 = v559;
LABEL_801:
                                                                                                                                                                                                            v560 = (v557 + 80 * v563 + 40);
                                                                                                                                                                                                          }

                                                                                                                                                                                                          v561 = *(a1 + 256);
                                                                                                                                                                                                          v562 = *v560 / v561;
                                                                                                                                                                                                          v564 = *(v558 + 4 * (0x4F0A61D9C798D8CALL % v556));
                                                                                                                                                                                                          if (v564 != 0x7FFFFFFF)
                                                                                                                                                                                                          {
                                                                                                                                                                                                            while (*(v557 + 80 * v564 + 4) != 43)
                                                                                                                                                                                                            {
                                                                                                                                                                                                              v564 = *(v557 + 80 * v564) & 0x7FFFFFFF;
                                                                                                                                                                                                              if (v564 == 0x7FFFFFFF)
                                                                                                                                                                                                              {
                                                                                                                                                                                                                goto LABEL_805;
                                                                                                                                                                                                              }
                                                                                                                                                                                                            }

LABEL_806:
                                                                                                                                                                                                            re::DynamicString::appendf((a1 + 224), "Packets: %.0f/%.0f\n", v562, (*(v557 + 80 * v564 + 40) / v561));
                                                                                                                                                                                                            if (*(a1 + 16))
                                                                                                                                                                                                            {
                                                                                                                                                                                                              v565 = *(a1 + 40);
                                                                                                                                                                                                              v567 = *(a1 + 24);
                                                                                                                                                                                                              v566 = *(a1 + 32);
                                                                                                                                                                                                              v568 = *(v567 + 4 * (0xFB2BF4996809BAF7 % v565));
                                                                                                                                                                                                              if (v568 == 0x7FFFFFFF)
                                                                                                                                                                                                              {
                                                                                                                                                                                                                v569 = (v566 + 0x27FFFFFFD8);
                                                                                                                                                                                                              }

                                                                                                                                                                                                              else
                                                                                                                                                                                                              {
                                                                                                                                                                                                                v572 = 0x7FFFFFFFLL;
                                                                                                                                                                                                                while (*(v566 + 80 * v568 + 4) != 44)
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  v568 = *(v566 + 80 * v568) & 0x7FFFFFFF;
                                                                                                                                                                                                                  if (v568 == 0x7FFFFFFF)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    goto LABEL_815;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                }

                                                                                                                                                                                                                v572 = v568;
LABEL_815:
                                                                                                                                                                                                                v569 = (v566 + 80 * v572 + 40);
                                                                                                                                                                                                              }

                                                                                                                                                                                                              v570 = *(a1 + 256);
                                                                                                                                                                                                              v571 = *v569 / v570;
                                                                                                                                                                                                              v573 = *(v567 + 4 * (0xBDBFB556329AEE83 % v565));
                                                                                                                                                                                                              if (v573 != 0x7FFFFFFF)
                                                                                                                                                                                                              {
                                                                                                                                                                                                                while (*(v566 + 80 * v573 + 4) != 45)
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  v573 = *(v566 + 80 * v573) & 0x7FFFFFFF;
                                                                                                                                                                                                                  if (v573 == 0x7FFFFFFF)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    goto LABEL_819;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                }

LABEL_820:
                                                                                                                                                                                                                re::DynamicString::appendf((a1 + 224), "Components: %.0f/%.0f\n", v571, (*(v566 + 80 * v573 + 40) / v570));
                                                                                                                                                                                                                if (*(a1 + 16))
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  v574 = *(a1 + 40);
                                                                                                                                                                                                                  v576 = *(a1 + 24);
                                                                                                                                                                                                                  v575 = *(a1 + 32);
                                                                                                                                                                                                                  v577 = *(v576 + 4 * (0x6F14AEC17CB2794BLL % v574));
                                                                                                                                                                                                                  if (v577 == 0x7FFFFFFF)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    v578 = (v575 + 0x27FFFFFFD8);
                                                                                                                                                                                                                  }

                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    v581 = 0x7FFFFFFFLL;
                                                                                                                                                                                                                    while (*(v575 + 80 * v577 + 4) != 46)
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                      v577 = *(v575 + 80 * v577) & 0x7FFFFFFF;
                                                                                                                                                                                                                      if (v577 == 0x7FFFFFFF)
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        goto LABEL_829;
                                                                                                                                                                                                                      }
                                                                                                                                                                                                                    }

                                                                                                                                                                                                                    v581 = v577;
LABEL_829:
                                                                                                                                                                                                                    v578 = (v575 + 80 * v581 + 40);
                                                                                                                                                                                                                  }

                                                                                                                                                                                                                  v579 = *v578;
                                                                                                                                                                                                                  v580 = *(a1 + 256);
                                                                                                                                                                                                                  v582 = *(v576 + 4 * (0x5A9FF51BA33ADC1CLL % v574));
                                                                                                                                                                                                                  if (v582 != 0x7FFFFFFF)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    while (*(v575 + 80 * v582 + 4) != 47)
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                      v582 = *(v575 + 80 * v582) & 0x7FFFFFFF;
                                                                                                                                                                                                                      if (v582 == 0x7FFFFFFF)
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        goto LABEL_833;
                                                                                                                                                                                                                      }
                                                                                                                                                                                                                    }

                                                                                                                                                                                                                    goto LABEL_834;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                }

                                                                                                                                                                                                                else
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  v575 = *(a1 + 32);
                                                                                                                                                                                                                  v579 = *(v575 + 0x27FFFFFFD8);
                                                                                                                                                                                                                  v580 = *(a1 + 256);
                                                                                                                                                                                                                }

LABEL_833:
                                                                                                                                                                                                                v582 = 0x7FFFFFFFLL;
LABEL_834:
                                                                                                                                                                                                                re::DynamicString::appendf((a1 + 224), "Entities: %.0f/%.0f\n", (v579 / v580), (*(v575 + 80 * v582 + 40) / v580));
                                                                                                                                                                                                                os_unfair_lock_unlock((a1 + 12));
                                                                                                                                                                                                                return;
                                                                                                                                                                                                              }
                                                                                                                                                                                                            }

                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                              v566 = *(a1 + 32);
                                                                                                                                                                                                              v570 = *(a1 + 256);
                                                                                                                                                                                                              v571 = *(v566 + 0x27FFFFFFD8) / v570;
                                                                                                                                                                                                            }

LABEL_819:
                                                                                                                                                                                                            v573 = 0x7FFFFFFFLL;
                                                                                                                                                                                                            goto LABEL_820;
                                                                                                                                                                                                          }
                                                                                                                                                                                                        }

                                                                                                                                                                                                        else
                                                                                                                                                                                                        {
                                                                                                                                                                                                          v557 = *(a1 + 32);
                                                                                                                                                                                                          v561 = *(a1 + 256);
                                                                                                                                                                                                          v562 = *(v557 + 0x27FFFFFFD8) / v561;
                                                                                                                                                                                                        }

LABEL_805:
                                                                                                                                                                                                        v564 = 0x7FFFFFFFLL;
                                                                                                                                                                                                        goto LABEL_806;
                                                                                                                                                                                                      }
                                                                                                                                                                                                    }

                                                                                                                                                                                                    else
                                                                                                                                                                                                    {
                                                                                                                                                                                                      v550 = *(a1 + 32);
                                                                                                                                                                                                    }

LABEL_784:
                                                                                                                                                                                                    v551 = 0x7FFFFFFFLL;
                                                                                                                                                                                                    goto LABEL_785;
                                                                                                                                                                                                  }
                                                                                                                                                                                                }

                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                  v537 = *(a1 + 32);
                                                                                                                                                                                                  v541 = *(v537 + 0x27FFFFFFD8);
                                                                                                                                                                                                  v542 = *(a1 + 256);
                                                                                                                                                                                                }

LABEL_768:
                                                                                                                                                                                                v544 = 0x7FFFFFFFLL;
                                                                                                                                                                                                goto LABEL_769;
                                                                                                                                                                                              }
                                                                                                                                                                                            }

                                                                                                                                                                                            else
                                                                                                                                                                                            {
                                                                                                                                                                                              v528 = *(a1 + 32);
                                                                                                                                                                                              v532 = *(a1 + 256);
                                                                                                                                                                                              v533 = *(v528 + 0x27FFFFFFD8) / v532;
                                                                                                                                                                                            }

LABEL_754:
                                                                                                                                                                                            v535 = 0x7FFFFFFFLL;
                                                                                                                                                                                            goto LABEL_755;
                                                                                                                                                                                          }
                                                                                                                                                                                        }

                                                                                                                                                                                        else
                                                                                                                                                                                        {
                                                                                                                                                                                          v519 = *(a1 + 32);
                                                                                                                                                                                          v523 = *(a1 + 256);
                                                                                                                                                                                          v524 = *(v519 + 0x27FFFFFFD8) / v523;
                                                                                                                                                                                        }

LABEL_740:
                                                                                                                                                                                        v526 = 0x7FFFFFFFLL;
                                                                                                                                                                                        goto LABEL_741;
                                                                                                                                                                                      }
                                                                                                                                                                                    }

                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                      v510 = *(a1 + 32);
                                                                                                                                                                                      v514 = *(a1 + 256);
                                                                                                                                                                                      v515 = *(v510 + 0x27FFFFFFD8) / v514;
                                                                                                                                                                                    }

LABEL_726:
                                                                                                                                                                                    v517 = 0x7FFFFFFFLL;
                                                                                                                                                                                    goto LABEL_727;
                                                                                                                                                                                  }
                                                                                                                                                                                }

                                                                                                                                                                                else
                                                                                                                                                                                {
                                                                                                                                                                                  v501 = *(a1 + 32);
                                                                                                                                                                                  v505 = *(a1 + 256);
                                                                                                                                                                                  v506 = *(v501 + 0x27FFFFFFD8) / v505;
                                                                                                                                                                                }

LABEL_712:
                                                                                                                                                                                v508 = 0x7FFFFFFFLL;
                                                                                                                                                                                goto LABEL_713;
                                                                                                                                                                              }
                                                                                                                                                                            }

                                                                                                                                                                            else
                                                                                                                                                                            {
                                                                                                                                                                              v492 = *(a1 + 32);
                                                                                                                                                                              v496 = *(a1 + 256);
                                                                                                                                                                              v497 = *(v492 + 0x27FFFFFFD8) / v496;
                                                                                                                                                                            }

LABEL_698:
                                                                                                                                                                            v499 = 0x7FFFFFFFLL;
                                                                                                                                                                            goto LABEL_699;
                                                                                                                                                                          }
                                                                                                                                                                        }

                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                          v489 = *(a1 + 32);
                                                                                                                                                                        }

LABEL_684:
                                                                                                                                                                        v490 = 0x7FFFFFFFLL;
                                                                                                                                                                        goto LABEL_685;
                                                                                                                                                                      }
                                                                                                                                                                    }

                                                                                                                                                                    else
                                                                                                                                                                    {
                                                                                                                                                                      v481 = *(a1 + 32);
                                                                                                                                                                      v485 = *(a1 + 256);
                                                                                                                                                                      v486 = *(v481 + 0x27FFFFFFD8) / v485;
                                                                                                                                                                    }

LABEL_677:
                                                                                                                                                                    v488 = 0x7FFFFFFFLL;
                                                                                                                                                                    goto LABEL_678;
                                                                                                                                                                  }
                                                                                                                                                                }

                                                                                                                                                                else
                                                                                                                                                                {
                                                                                                                                                                  v478 = *(a1 + 32);
                                                                                                                                                                }

LABEL_663:
                                                                                                                                                                v479 = 0x7FFFFFFFLL;
                                                                                                                                                                goto LABEL_664;
                                                                                                                                                              }
                                                                                                                                                            }

                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                              v465 = *(a1 + 32);
                                                                                                                                                              v469 = *(v465 + 0x27FFFFFFD8);
                                                                                                                                                              v470 = *(a1 + 256);
                                                                                                                                                              v471 = v469 / v470;
                                                                                                                                                            }

LABEL_656:
                                                                                                                                                            v477 = 0x7FFFFFFFLL;
                                                                                                                                                            goto LABEL_657;
                                                                                                                                                          }
                                                                                                                                                        }

                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                          v451 = *(a1 + 32);
                                                                                                                                                          v455 = *(v451 + 0x27FFFFFFD8);
                                                                                                                                                          v456 = *(a1 + 256);
                                                                                                                                                          v457 = v455 / v456;
                                                                                                                                                        }

LABEL_634:
                                                                                                                                                        v463 = 0x7FFFFFFFLL;
                                                                                                                                                        goto LABEL_635;
                                                                                                                                                      }
                                                                                                                                                    }

                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                      v437 = *(a1 + 32);
                                                                                                                                                      v441 = *(v437 + 0x27FFFFFFD8);
                                                                                                                                                      v442 = *(a1 + 256);
                                                                                                                                                      v443 = v441 / v442;
                                                                                                                                                    }

LABEL_612:
                                                                                                                                                    v449 = 0x7FFFFFFFLL;
                                                                                                                                                    goto LABEL_613;
                                                                                                                                                  }
                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                  v428 = *(a1 + 32);
                                                                                                                                                  v432 = *(a1 + 256);
                                                                                                                                                  v433 = *(v428 + 0x27FFFFFFD8) / v432;
                                                                                                                                                }

LABEL_590:
                                                                                                                                                v435 = 0x7FFFFFFFLL;
                                                                                                                                                goto LABEL_591;
                                                                                                                                              }
                                                                                                                                            }

                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                              v425 = *(a1 + 32);
                                                                                                                                            }

LABEL_576:
                                                                                                                                            v426 = 0x7FFFFFFFLL;
                                                                                                                                            goto LABEL_577;
                                                                                                                                          }
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          v423 = *(a1 + 32);
                                                                                                                                        }

LABEL_569:
                                                                                                                                        v424 = 0x7FFFFFFFLL;
                                                                                                                                        goto LABEL_570;
                                                                                                                                      }
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      v416 = *(a1 + 32);
                                                                                                                                      v419 = *(a1 + 256);
                                                                                                                                      v420 = *(v416 + 0x27FFFFFFD8) / v419;
                                                                                                                                    }

LABEL_562:
                                                                                                                                    v422 = 0x7FFFFFFFLL;
                                                                                                                                    goto LABEL_563;
                                                                                                                                  }
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  v399 = *(a1 + 32);
                                                                                                                                }

LABEL_534:
                                                                                                                                v400 = 0x7FFFFFFFLL;
                                                                                                                                goto LABEL_535;
                                                                                                                              }
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              v381 = *(a1 + 32);
                                                                                                                            }

LABEL_511:
                                                                                                                            v382 = 0x7FFFFFFFLL;
                                                                                                                            goto LABEL_512;
                                                                                                                          }
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          v362 = *(a1 + 32);
                                                                                                                        }

LABEL_488:
                                                                                                                        v363 = 0x7FFFFFFFLL;
                                                                                                                        goto LABEL_489;
                                                                                                                      }
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v331 = *(a1 + 32);
                                                                                                                    }

LABEL_454:
                                                                                                                    v332 = 0x7FFFFFFFLL;
                                                                                                                    goto LABEL_455;
                                                                                                                  }
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  v319 = *(a1 + 32);
                                                                                                                }

LABEL_442:
                                                                                                                v320 = 0x7FFFFFFFLL;
                                                                                                                goto LABEL_443;
                                                                                                              }
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v311 = *(a1 + 32);
                                                                                                            }

LABEL_430:
                                                                                                            v312 = 0x7FFFFFFFLL;
                                                                                                            goto LABEL_431;
                                                                                                          }
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          v303 = *(a1 + 32);
                                                                                                        }

LABEL_418:
                                                                                                        v304 = 0x7FFFFFFFLL;
                                                                                                        goto LABEL_419;
                                                                                                      }
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v295 = *(a1 + 32);
                                                                                                    }

LABEL_406:
                                                                                                    v296 = 0x7FFFFFFFLL;
                                                                                                    goto LABEL_407;
                                                                                                  }
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v271 = *(a1 + 32);
                                                                                                }

LABEL_365:
                                                                                                v272 = 0x7FFFFFFFLL;
                                                                                                goto LABEL_366;
                                                                                              }
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v213 = *(a1 + 32);
                                                                                            }

LABEL_325:
                                                                                            v214 = 0x7FFFFFFFLL;
                                                                                            goto LABEL_326;
                                                                                          }
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v205 = *(a1 + 32);
                                                                                        }

LABEL_313:
                                                                                        v206 = 0x7FFFFFFFLL;
                                                                                        goto LABEL_314;
                                                                                      }
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v197 = *(a1 + 32);
                                                                                    }

LABEL_301:
                                                                                    v198 = 0x7FFFFFFFLL;
                                                                                    goto LABEL_302;
                                                                                  }
                                                                                }

                                                                                else
                                                                                {
                                                                                  v189 = *(a1 + 32);
                                                                                }

LABEL_289:
                                                                                v190 = 0x7FFFFFFFLL;
                                                                                goto LABEL_290;
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              v181 = *(a1 + 32);
                                                                            }

LABEL_277:
                                                                            v182 = 0x7FFFFFFFLL;
                                                                            goto LABEL_278;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          v173 = *(a1 + 32);
                                                                        }

LABEL_265:
                                                                        v174 = 0x7FFFFFFFLL;
                                                                        goto LABEL_266;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v165 = *(a1 + 32);
                                                                    }

LABEL_253:
                                                                    v166 = 0x7FFFFFFFLL;
                                                                    goto LABEL_254;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v157 = *(a1 + 32);
                                                                }

LABEL_241:
                                                                v158 = 0x7FFFFFFFLL;
                                                                goto LABEL_242;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v149 = *(a1 + 32);
                                                            }

LABEL_229:
                                                            v150 = 0x7FFFFFFFLL;
                                                            goto LABEL_230;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v141 = *(a1 + 32);
                                                        }

LABEL_217:
                                                        v142 = 0x7FFFFFFFLL;
                                                        goto LABEL_218;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v133 = *(a1 + 32);
                                                    }

LABEL_205:
                                                    v134 = 0x7FFFFFFFLL;
                                                    goto LABEL_206;
                                                  }
                                                }

                                                else
                                                {
                                                  v125 = *(a1 + 32);
                                                }

LABEL_193:
                                                v126 = 0x7FFFFFFFLL;
                                                goto LABEL_194;
                                              }
                                            }

                                            else
                                            {
                                              v117 = *(a1 + 32);
                                            }

LABEL_181:
                                            v118 = 0x7FFFFFFFLL;
                                            goto LABEL_182;
                                          }
                                        }

                                        else
                                        {
                                          v109 = *(a1 + 32);
                                        }

LABEL_169:
                                        v110 = 0x7FFFFFFFLL;
                                        goto LABEL_170;
                                      }
                                    }

                                    else
                                    {
                                      v101 = *(a1 + 32);
                                    }

LABEL_157:
                                    v102 = 0x7FFFFFFFLL;
                                    goto LABEL_158;
                                  }
                                }

                                else
                                {
                                  v93 = *(a1 + 32);
                                }

LABEL_145:
                                v94 = 0x7FFFFFFFLL;
                                goto LABEL_146;
                              }
                            }

                            else
                            {
                              v85 = *(a1 + 32);
                            }

LABEL_133:
                            v86 = 0x7FFFFFFFLL;
                            goto LABEL_134;
                          }
                        }

                        else
                        {
                          v77 = *(a1 + 32);
                        }

LABEL_121:
                        v78 = 0x7FFFFFFFLL;
                        goto LABEL_122;
                      }
                    }

                    else
                    {
                      v69 = *(a1 + 32);
                    }

LABEL_109:
                    v70 = 0x7FFFFFFFLL;
                    goto LABEL_110;
                  }
                }

                else
                {
                  v61 = *(a1 + 32);
                }

LABEL_97:
                v62 = 0x7FFFFFFFLL;
                goto LABEL_98;
              }
            }

            else
            {
              v53 = *(a1 + 32);
            }

LABEL_85:
            v54 = 0x7FFFFFFFLL;
            goto LABEL_86;
          }
        }

        else
        {
          v45 = *(a1 + 32);
        }

LABEL_73:
        v46 = 0x7FFFFFFFLL;
        goto LABEL_74;
      }
    }

    else
    {
      v37 = *(a1 + 32);
    }

LABEL_61:
    v38 = 0x7FFFFFFFLL;
    goto LABEL_62;
  }
}