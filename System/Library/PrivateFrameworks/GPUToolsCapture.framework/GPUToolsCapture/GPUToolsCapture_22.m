uint64_t EncodeDYMTLRenderPipelineDescriptor(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v142 = a2;
  v144 = a3;
  if (a3 >= 8)
  {
    *a2 = 115;
  }

  v6 = &dword_8;
  v143 = 8;
  v141 = *(a1 + 1296);
  entry = find_entry(a4, &v141, 8uLL, 0);
  if (*entry)
  {
    v8 = *(*entry + 32);
    if (v8)
    {
      v9 = atomic_load((v8 + 56));
      v6 = (v8 + (~(v9 >> 2) & 8));
    }

    else
    {
      v6 = &dword_8;
    }
  }

  v10 = v143 + 8;
  if (v143 + 8 <= v144)
  {
    *(v142 + v143) = *v6;
    v10 = v143 + 8;
  }

  v143 = v10;
  v140 = *(a1 + 1176);
  v11 = &dword_8;
  v12 = find_entry(a4, &v140, 8uLL, 0);
  if (*v12)
  {
    v13 = *(*v12 + 32);
    if (v13)
    {
      v14 = atomic_load((v13 + 56));
      v11 = (v13 + (~(v14 >> 2) & 8));
    }

    else
    {
      v11 = &dword_8;
    }
  }

  v15 = v143 + 8;
  if (v143 + 8 <= v144)
  {
    *(v142 + v143) = *v11;
    v15 = v143 + 8;
  }

  v143 = v15;
  SaveDYMTLVertexDescriptor(&v142, a1);
  v16 = v144;
  v17 = v143 + 8;
  if (v143 + 8 <= v144)
  {
    *(v142 + v143) = *(a1 + 1272);
    v16 = v144;
    v17 = v143 + 8;
  }

  v143 = v17;
  v18 = v17 + 8;
  if (v17 + 8 <= v16)
  {
    *(v142 + v17) = *(a1 + 1288);
    v16 = v144;
    v18 = v143 + 8;
  }

  v143 = v18;
  v19 = v18 + 4;
  if (v18 + 4 <= v16)
  {
    *(v142 + v18) = *(a1 + 1332);
    v16 = v144;
    v19 = v143 + 4;
  }

  v143 = v19;
  if (v16 > v19)
  {
    if (v16 - v19 >= 4)
    {
      v20 = 4;
    }

    else
    {
      v20 = v16 - v19;
    }

    bzero(v142 + v19, v20);
    v19 = v143;
    v16 = v144;
  }

  v21 = v19 + 4;
  v143 = v19 + 4;
  v22 = v19 + 12;
  if (v22 <= v16)
  {
    *(v142 + v21) = *(a1 + 1480);
    v16 = v144;
    v22 = v143 + 8;
  }

  v143 = v22;
  v23 = v22 + 8;
  if (v22 + 8 <= v16)
  {
    *(v142 + v22) = *(a1 + 1481);
    v16 = v144;
    v23 = v143 + 8;
  }

  v143 = v23;
  v24 = v23 + 8;
  if (v23 + 8 <= v16)
  {
    *(v142 + v23) = *(a1 + 1494);
    v16 = v144;
    v24 = v143 + 8;
  }

  v143 = v24;
  v25 = v24 + 8;
  if (v24 + 8 <= v16)
  {
    *(v142 + v24) = *(a1 + 1340);
    v16 = v144;
    v25 = v143 + 8;
  }

  v143 = v25;
  v26 = v25 + 8;
  if (v25 + 8 <= v16)
  {
    *(v142 + v25) = *(a1 + 1352);
    v16 = v144;
    v26 = v143 + 8;
  }

  v143 = v26;
  v27 = v26 + 8;
  if (v26 + 8 <= v16)
  {
    *(v142 + v26) = 8;
    v27 = v143 + 8;
  }

  v143 = v27;
  v28 = (a1 + 744);
  v29 = 8;
  do
  {
    SaveDYMTLRenderPipelineColorAttachmentDescriptor(&v142, v28);
    v28 += 16;
    --v29;
  }

  while (v29);
  WriteDynamicBufferString(&v142, *(a1 + 1200));
  v30 = v144;
  v31 = v143 + 8;
  if (v143 + 8 <= v144)
  {
    *(v142 + v143) = *(a1 + 1486);
    v30 = v144;
    v31 = v143 + 8;
  }

  v143 = v31;
  v32 = v31 + 8;
  if (v31 + 8 <= v30)
  {
    *(v142 + v31) = *(a1 + 1506);
    v30 = v144;
    v32 = v143 + 8;
  }

  v143 = v32;
  v33 = v32 + 8;
  if (v32 + 8 <= v30)
  {
    *(v142 + v32) = *(a1 + 1208);
    v30 = v144;
    v33 = v143 + 8;
  }

  v143 = v33;
  v34 = v33 + 8;
  if (v33 + 8 <= v30)
  {
    *(v142 + v33) = *(a1 + 1503);
    v30 = v144;
    v34 = v143 + 8;
  }

  v143 = v34;
  v35 = v34 + 8;
  if (v34 + 8 <= v30)
  {
    *(v142 + v34) = *(a1 + 1502);
    v30 = v144;
    v35 = v143 + 8;
  }

  v143 = v35;
  v36 = v35 + 8;
  if (v35 + 8 <= v30)
  {
    *(v142 + v35) = *(a1 + 1501);
    v30 = v144;
    v36 = v143 + 8;
  }

  v143 = v36;
  v37 = v36 + 8;
  if (v36 + 8 <= v30)
  {
    *(v142 + v36) = *(a1 + 1504);
    v30 = v144;
    v37 = v143 + 8;
  }

  v143 = v37;
  v38 = v37 + 8;
  if (v37 + 8 <= v30)
  {
    *(v142 + v37) = *(a1 + 1505);
    v30 = v144;
    v38 = v143 + 8;
  }

  v143 = v38;
  v39 = v38 + 8;
  if (v38 + 8 <= v30)
  {
    *(v142 + v38) = 31;
    v39 = v143 + 8;
  }

  v40 = 0;
  v143 = v39;
  do
  {
    v41 = v39 + 8;
    if (v39 + 8 <= v144)
    {
      *(v142 + v39) = *(a1 + 1447 + v40);
      v41 = v143 + 8;
    }

    v143 = v41;
    ++v40;
    v39 = v41;
  }

  while (v40 != 31);
  v42 = v41 + 8;
  if (v41 + 8 <= v144)
  {
    *(v142 + v41) = 31;
    v42 = v143 + 8;
  }

  v43 = 0;
  v143 = v42;
  do
  {
    v44 = v42 + 8;
    if (v42 + 8 <= v144)
    {
      *(v142 + v42) = *(a1 + 1354 + v43);
      v44 = v143 + 8;
    }

    v143 = v44;
    ++v43;
    v42 = v44;
  }

  while (v43 != 31);
  v45 = v44 + 8;
  v46 = v144;
  if (v44 + 8 <= v144)
  {
    *(v142 + v44) = *(a1 + 1500);
    v46 = v144;
    v45 = v143 + 8;
  }

  v143 = v45;
  v47 = v45 + 8;
  if (v45 + 8 <= v46)
  {
    *(v142 + v45) = *(a1 + 1508);
    v46 = v144;
    v47 = v143 + 8;
  }

  v143 = v47;
  v48 = v47 + 8;
  if (v47 + 8 <= v46)
  {
    *(v142 + v47) = *(a1 + 1328);
    v48 = v143 + 8;
  }

  v143 = v48;
  v139 = *(a1 + 1264);
  v49 = &dword_8;
  v50 = find_entry(a4, &v139, 8uLL, 0);
  if (*v50)
  {
    v51 = *(*v50 + 32);
    if (v51)
    {
      v52 = atomic_load((v51 + 56));
      v49 = (v51 + (~(v52 >> 2) & 8));
    }

    else
    {
      v49 = &dword_8;
    }
  }

  v53 = v144;
  v54 = v143 + 8;
  if (v143 + 8 <= v144)
  {
    *(v142 + v143) = *v49;
    v53 = v144;
    v54 = v143 + 8;
  }

  v143 = v54;
  v55 = v54 + 8;
  if (v54 + 8 <= v53)
  {
    *(v142 + v54) = *(a1 + 1487);
    v53 = v144;
    v55 = v143 + 8;
  }

  v143 = v55;
  v56 = v55 + 8;
  if (v55 + 8 <= v53)
  {
    *(v142 + v55) = *(a1 + 1479);
    v53 = v144;
    v56 = v143 + 8;
  }

  v143 = v56;
  v57 = v56 + 8;
  if (v56 + 8 <= v53)
  {
    *(v142 + v56) = *(a1 + 1336);
    v53 = v144;
    v57 = v143 + 8;
  }

  v143 = v57;
  v58 = v57 + 8;
  if (v57 + 8 <= v53)
  {
    *(v142 + v57) = *(a1 + 1324);
    v53 = v144;
    v58 = v143 + 8;
  }

  v143 = v58;
  v59 = v58 + 8;
  if (v58 + 8 <= v53)
  {
    *(v142 + v58) = *(a1 + 1488);
    v53 = v144;
    v59 = v143 + 8;
  }

  v143 = v59;
  v60 = v59 + 8;
  if (v59 + 8 <= v53)
  {
    *(v142 + v59) = *(a1 + 1490);
    v53 = v144;
    v60 = v143 + 8;
  }

  v143 = v60;
  v61 = v60 + 8;
  if (v60 + 8 <= v53)
  {
    *(v142 + v60) = *(a1 + 1491);
    v53 = v144;
    v61 = v143 + 8;
  }

  v143 = v61;
  v62 = v61 + 8;
  if (v61 + 8 <= v53)
  {
    *(v142 + v61) = *(a1 + 1492);
    v53 = v144;
    v62 = v143 + 8;
  }

  v143 = v62;
  v63 = v62 + 8;
  if (v62 + 8 <= v53)
  {
    *(v142 + v62) = *(a1 + 1507);
    v53 = v144;
    v63 = v143 + 8;
  }

  v143 = v63;
  v64 = v63 + 8;
  if (v63 + 8 <= v53)
  {
    *(v142 + v63) = *(a1 + 1478);
    v53 = v144;
    v64 = v143 + 8;
  }

  v143 = v64;
  v65 = v64 + 8;
  if (v64 + 8 <= v53)
  {
    *(v142 + v64) = *(a1 + 1493);
    v53 = v144;
    v65 = v143 + 8;
  }

  v143 = v65;
  v66 = v65 + 8;
  if (v65 + 8 <= v53)
  {
    *(v142 + v65) = *(a1 + 1482);
    v53 = v144;
    v66 = v143 + 8;
  }

  v143 = v66;
  v67 = v66 + 8;
  if (v66 + 8 <= v53)
  {
    *(v142 + v66) = *(a1 + 1280);
    v53 = v144;
    v67 = v143 + 8;
  }

  v143 = v67;
  v68 = v67 + 8;
  if (v67 + 8 <= v53)
  {
    *(v142 + v67) = *(a1 + 1160);
    v53 = v144;
    v68 = v143 + 8;
  }

  v143 = v68;
  v69 = v68 + 8;
  if (v68 + 8 <= v53)
  {
    *(v142 + v68) = *(a1 + 1168);
    v53 = v144;
    v69 = v143 + 8;
  }

  v143 = v69;
  v70 = v69 + 8;
  if (v69 + 8 <= v53)
  {
    *(v142 + v69) = *(a1 + 1495);
    v53 = v144;
    v70 = v143 + 8;
  }

  v143 = v70;
  v71 = v70 + 8;
  if (v70 + 8 <= v53)
  {
    *(v142 + v70) = *(a1 + 1489);
    v53 = v144;
    v71 = v143 + 8;
  }

  v143 = v71;
  v72 = v71 + 8;
  if (v71 + 8 <= v53)
  {
    *(v142 + v71) = *(a1 + 1484);
    v53 = v144;
    v72 = v143 + 8;
  }

  v143 = v72;
  v73 = v72 + 8;
  if (v72 + 8 <= v53)
  {
    *(v142 + v72) = *(a1 + 1485);
    v73 = v143 + 8;
  }

  v143 = v73;
  WriteGTData(&v142, *(a1 + 1144), *(a1 + 1152));
  WriteGTData(&v142, *(a1 + 1128), *(a1 + 1136));
  v74 = *(a1 + 1312);
  v75 = v143 + 8;
  if (v143 + 8 <= v144)
  {
    *(v142 + v143) = v74;
    v75 = v143 + 8;
    v74 = *(a1 + 1312);
  }

  v143 = v75;
  if (v74)
  {
    v76 = 0;
    do
    {
      v138 = *(*(a1 + 1304) + 8 * v76);
      v77 = find_entry(a4, &v138, 8uLL, 0);
      v78 = &dword_8;
      if (*v77)
      {
        v79 = *(*v77 + 32);
        if (v79)
        {
          v80 = atomic_load((v79 + 56));
          v78 = (v79 + (~(v80 >> 2) & 8));
        }

        else
        {
          v78 = &dword_8;
        }
      }

      v75 = v143 + 8;
      if (v143 + 8 <= v144)
      {
        *(v142 + v143) = *v78;
        v75 = v143 + 8;
      }

      v143 = v75;
      ++v76;
    }

    while (*(a1 + 1312) > v76);
  }

  v81 = *(a1 + 1192);
  v82 = v75 + 8;
  if (v75 + 8 <= v144)
  {
    *(v142 + v75) = v81;
    v82 = v143 + 8;
    v81 = *(a1 + 1192);
  }

  v143 = v82;
  if (v81)
  {
    v83 = 0;
    do
    {
      v137 = *(*(a1 + 1184) + 8 * v83);
      v84 = find_entry(a4, &v137, 8uLL, 0);
      v85 = &dword_8;
      if (*v84)
      {
        v86 = *(*v84 + 32);
        if (v86)
        {
          v87 = atomic_load((v86 + 56));
          v85 = (v86 + (~(v87 >> 2) & 8));
        }

        else
        {
          v85 = &dword_8;
        }
      }

      v88 = v143 + 8;
      if (v143 + 8 <= v144)
      {
        *(v142 + v143) = *v85;
        v88 = v143 + 8;
      }

      v143 = v88;
      ++v83;
    }

    while (*(a1 + 1192) > v83);
  }

  SaveDYMTLLinkedFunctions(&v142, a1 + 1064, a4);
  SaveDYMTLLinkedFunctions(&v142, a1 + 872, a4);
  v136 = *(a1 + 1240);
  v89 = &dword_8;
  v90 = find_entry(a4, &v136, 8uLL, 0);
  if (*v90)
  {
    v91 = *(*v90 + 32);
    if (v91)
    {
      v92 = atomic_load((v91 + 56));
      v89 = (v91 + (~(v92 >> 2) & 8));
    }

    else
    {
      v89 = &dword_8;
    }
  }

  v93 = v143 + 8;
  if (v143 + 8 <= v144)
  {
    *(v142 + v143) = *v89;
    v93 = v143 + 8;
  }

  v143 = v93;
  v135 = *(a1 + 1216);
  v94 = &dword_8;
  v95 = find_entry(a4, &v135, 8uLL, 0);
  if (*v95)
  {
    v96 = *(*v95 + 32);
    if (v96)
    {
      v97 = atomic_load((v96 + 56));
      v94 = (v96 + (~(v97 >> 2) & 8));
    }

    else
    {
      v94 = &dword_8;
    }
  }

  v98 = v144;
  v99 = v143 + 8;
  if (v143 + 8 <= v144)
  {
    *(v142 + v143) = *v94;
    v98 = v144;
    v99 = v143 + 8;
  }

  v143 = v99;
  v100 = v99 + 8;
  if (v99 + 8 <= v98)
  {
    *(v142 + v99) = 31;
    v100 = v143 + 8;
  }

  v101 = 0;
  v143 = v100;
  do
  {
    v102 = v100 + 8;
    if (v100 + 8 <= v144)
    {
      *(v142 + v100) = *(a1 + 1416 + v101);
      v102 = v143 + 8;
    }

    v143 = v102;
    ++v101;
    v100 = v102;
  }

  while (v101 != 31);
  v103 = v102 + 8;
  if (v102 + 8 <= v144)
  {
    *(v142 + v102) = 31;
    v103 = v143 + 8;
  }

  v104 = 0;
  v143 = v103;
  do
  {
    v105 = v103 + 8;
    if (v103 + 8 <= v144)
    {
      *(v142 + v103) = *(a1 + 1385 + v104);
      v105 = v143 + 8;
    }

    v143 = v105;
    ++v104;
    v103 = v105;
  }

  while (v104 != 31);
  v106 = *(a1 + 1256);
  v107 = v105 + 8;
  if (v105 + 8 <= v144)
  {
    *(v142 + v105) = v106;
    v107 = v143 + 8;
    v106 = *(a1 + 1256);
  }

  v143 = v107;
  if (v106)
  {
    v108 = 0;
    do
    {
      v134 = *(*(a1 + 1248) + 8 * v108);
      v109 = find_entry(a4, &v134, 8uLL, 0);
      v110 = &dword_8;
      if (*v109)
      {
        v111 = *(*v109 + 32);
        if (v111)
        {
          v112 = atomic_load((v111 + 56));
          v110 = (v111 + (~(v112 >> 2) & 8));
        }

        else
        {
          v110 = &dword_8;
        }
      }

      v107 = v143 + 8;
      if (v143 + 8 <= v144)
      {
        *(v142 + v143) = *v110;
        v107 = v143 + 8;
      }

      v143 = v107;
      ++v108;
    }

    while (*(a1 + 1256) > v108);
  }

  v113 = *(a1 + 1232);
  v114 = v107 + 8;
  if (v107 + 8 <= v144)
  {
    *(v142 + v107) = v113;
    v114 = v143 + 8;
    v113 = *(a1 + 1232);
  }

  v143 = v114;
  if (v113)
  {
    v115 = 0;
    do
    {
      v133 = *(*(a1 + 1224) + 8 * v115);
      v116 = find_entry(a4, &v133, 8uLL, 0);
      v117 = &dword_8;
      if (*v116)
      {
        v118 = *(*v116 + 32);
        if (v118)
        {
          v119 = atomic_load((v118 + 56));
          v117 = (v118 + (~(v119 >> 2) & 8));
        }

        else
        {
          v117 = &dword_8;
        }
      }

      v120 = v143 + 8;
      if (v143 + 8 <= v144)
      {
        *(v142 + v143) = *v117;
        v120 = v143 + 8;
      }

      v143 = v120;
      ++v115;
    }

    while (*(a1 + 1232) > v115);
  }

  SaveDYMTLLinkedFunctions(&v142, a1 + 1000, a4);
  SaveDYMTLLinkedFunctions(&v142, a1 + 936, a4);
  v121 = v144;
  v122 = v143 + 8;
  if (v143 + 8 <= v144)
  {
    *(v142 + v143) = *(a1 + 1499);
    v121 = v144;
    v122 = v143 + 8;
  }

  v143 = v122;
  v123 = v122 + 8;
  if (v122 + 8 <= v121)
  {
    *(v142 + v122) = *(a1 + 1496);
    v121 = v144;
    v123 = v143 + 8;
  }

  v143 = v123;
  v124 = v123 + 8;
  if (v123 + 8 <= v121)
  {
    *(v142 + v123) = *(a1 + 1498);
    v121 = v144;
    v124 = v143 + 8;
  }

  v143 = v124;
  v125 = v124 + 8;
  if (v124 + 8 <= v121)
  {
    *(v142 + v124) = *(a1 + 1497);
    v121 = v144;
    v125 = v143 + 8;
  }

  v143 = v125;
  v126 = v125 + 8;
  if (v125 + 8 <= v121)
  {
    *(v142 + v125) = *(a1 + 1320);
    v121 = v144;
    v126 = v143 + 8;
  }

  v143 = v126;
  v127 = v126 + 8;
  if (v126 + 8 <= v121)
  {
    *(v142 + v126) = *(a1 + 1350);
    v121 = v144;
    v127 = v143 + 8;
  }

  v143 = v127;
  v128 = v127 + 8;
  if (v127 + 8 <= v121)
  {
    *(v142 + v127) = *(a1 + 1344);
    v121 = v144;
    v128 = v143 + 8;
  }

  v143 = v128;
  v129 = v128 + 8;
  if (v128 + 8 <= v121)
  {
    *(v142 + v128) = *(a1 + 1348);
    v121 = v144;
    v129 = v143 + 8;
  }

  v143 = v129;
  v130 = v129 + 8;
  if (v129 + 8 <= v121)
  {
    *(v142 + v129) = *(a1 + 1346);
    v121 = v144;
    v130 = v143 + 8;
  }

  v143 = v130;
  v131 = v130 + 8;
  if (v130 + 8 <= v121)
  {
    *(v142 + v130) = *(a1 + 1342);
    v121 = v144;
    v131 = v143 + 8;
  }

  v143 = v131;
  result = v131 + 8;
  if (v131 + 8 <= v121)
  {
    *(v142 + v131) = *(a1 + 1483);
    return v143 + 8;
  }

  return result;
}

void DecodeDYMTLComputePipelineDescriptor(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v66[1] = a2;
  memcpy(v65, &GTMTLComputePipelineDescriptorDefaults, sizeof(v65));
  v9 = *a1;
  v10 = *(a1 + 16);
  v65[106] = *(a1 + 8);
  BYTE6(v65[119]) = v10;
  v66[0] = a1 + 24 + (strlen((a1 + 24)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = *(a1 + 24);
  if (*(a1 + 24))
  {
    v12 = (a1 + 24);
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = strlen(v12);
    v14 = a3 + 74;
    v15 = a3[74];
    v16 = v13 + 1;
    if (v13 != -1)
    {
      v17 = a3[74];
      goto LABEL_9;
    }
  }

  else
  {
    v14 = a3 + 74;
    v15 = a3[74];
  }

  v16 = 0;
  v17 = 0;
LABEL_9:
  *v14 = v15 + v16;
  if (a4)
  {
    memcpy(v17, v12, v16);
  }

  v65[109] = v17;
  if (v9 < 0xB)
  {
    goto LABEL_87;
  }

  bzero(__src, 0x2F0uLL);
  v18 = v66[0];
  if (v9 < 0x1A)
  {
    v19 = 31;
  }

  else
  {
    v18 = (v66[0] + 8);
    v19 = *v66[0];
    if (!*v66[0])
    {
      goto LABEL_23;
    }
  }

  v20 = &__src[11];
  do
  {
    if (a4)
    {
      v22 = v18[1];
      v21 = v18[2];
      v23 = *v18;
      if (*v18 == 0xFFFFFFFFLL)
      {
        v23 = -1;
      }

      *(v20 - 11) = v23;
      *(v20 - 3) = v22;
      *(v20 - 1) = v21;
      *v20 = 0;
      v20[4] = 0;
    }

    v18 += 3;
    v20 += 16;
    --v19;
  }

  while (v19);
  v66[0] = v18;
  if (v9 > 0x19)
  {
LABEL_23:
    v25 = *v18++;
    v24 = v25;
    v66[0] = v18;
    if (!v25)
    {
      goto LABEL_30;
    }

    goto LABEL_26;
  }

  v24 = 31;
LABEL_26:
  v26 = &__src[502];
  do
  {
    if (a4)
    {
      v27 = v18[2];
      v28 = *v18;
      *(v26 - 3) = v18[1];
      *(v26 - 2) = v27;
      *(v26 - 1) = v28;
      *v26 = 0;
    }

    v18 += 3;
    v26 += 4;
    --v24;
  }

  while (v24);
LABEL_30:
  __src[745] = *v18;
  v29 = v18[1];
  v30 = v18 + 2;
  v66[0] = v18 + 2;
  __src[744] = v29;
  if (a4)
  {
    memcpy(v65, __src, 0x2F0uLL);
  }

  HIBYTE(v65[118]) = -1;
  if (v9 >= 0x12)
  {
    if (v9 < 0x1A)
    {
      v31 = 31;
    }

    else
    {
      v31 = v18[2];
      v30 = v18 + 3;
      v66[0] = v18 + 3;
      if (v31 < 1)
      {
        goto LABEL_39;
      }

      v31 = v31;
    }

    v32 = &v65[115];
    do
    {
      v33 = *v30++;
      *v32++ = v33;
      --v31;
    }

    while (v31);
LABEL_39:
    if (v9 >= 0x1B)
    {
      BYTE4(v65[119]) = *v30;
      if (v9 >= 0x25)
      {
        HIWORD(v65[114]) = v30[1];
        if (v9 != 37)
        {
          v65[110] = v30[2];
          if (v9 >= 0x28)
          {
            v34 = v30[3];
            v35 = v30 + 4;
            v66[0] = v35;
            v65[108] = v34;
            if (v34)
            {
              v36 = a3[72];
              v65[107] = v36;
              do
              {
                v38 = *v35++;
                v37 = v38;
                if (a4)
                {
                  if (a5)
                  {
                    Stream_19685 = GetStream_19685(a5, v37);
                    if (Stream_19685)
                    {
                      v37 = *Stream_19685;
                    }

                    else
                    {
                      v37 = 0;
                    }
                  }

                  v36 = a3[72];
                  *v36 = v37;
                }

                a3[72] = ++v36;
                --v34;
              }

              while (v34);
            }

            else
            {
              v65[107] = 0;
            }

            if (v9 != 40)
            {
              v65[113] = *v35;
              if (v9 >= 0x2A)
              {
                BYTE5(v65[119]) = v35[1];
                LOWORD(v65[114]) = v35[2];
                BYTE2(v65[119]) = v35[3];
                BYTE1(v65[119]) = v35[4];
                LOBYTE(v65[119]) = v35[5];
                v40 = v35[6];
                v41 = v35 + 7;
                v42 = (v35 + ((v40 + 7) & 0xFFFFFFFFFFFFFFF8) + 56);
                v66[0] = v42;
                if (v40)
                {
                  v43 = a3[74];
                }

                else
                {
                  v43 = 0;
                }

                v44 = (a3[74] + v40);
                a3[74] = v44;
                if (a4)
                {
                  if (v40)
                  {
                    v45 = v41;
                  }

                  else
                  {
                    v45 = 0;
                  }

                  memcpy(v43, v45, v40);
                  v44 = a3[74];
                }

                v65[104] = v43;
                v65[105] = v40;
                v48 = *v42;
                v47 = v42 + 1;
                v46 = v48;
                v49 = (v47 + ((v48 + 7) & 0xFFFFFFFFFFFFFFF8));
                v66[0] = v49;
                if (v48)
                {
                  v50 = v44;
                }

                else
                {
                  v50 = 0;
                }

                a3[74] = &v44[v46];
                if (a4)
                {
                  if (v46)
                  {
                    v51 = v47;
                  }

                  else
                  {
                    v51 = 0;
                  }

                  memcpy(v50, v51, v46);
                }

                v65[102] = v50;
                v65[103] = v46;
                if (v9 >= 0x2D)
                {
                  v52 = *v49;
                  v66[0] = v49 + 1;
                  WORD2(v65[114]) = v52;
                  v53 = v49[1];
                  v66[0] = v49 + 2;
                  BYTE3(v65[119]) = v53;
                  MakeDYMTLLinkedFunctions(v66, &v65[94], a3, v9, a4, a5);
                  if (v9 >= 0x30)
                  {
                    v54 = (v66[0] + 8);
                    v55 = *v66[0];
                    v65[112] = v55;
                    if (v55)
                    {
                      v56 = a3[72];
                      v65[111] = v56;
                      do
                      {
                        v58 = *v54++;
                        v57 = v58;
                        if (a4)
                        {
                          if (a5)
                          {
                            v59 = GetStream_19685(a5, v57);
                            if (v59)
                            {
                              v57 = *v59;
                            }

                            else
                            {
                              v57 = 0;
                            }
                          }

                          v56 = a3[72];
                          *v56 = v57;
                        }

                        a3[72] = ++v56;
                        --v55;
                      }

                      while (v55);
                    }

                    else
                    {
                      v65[111] = 0;
                    }

                    if (v9 >= 0x4B)
                    {
                      WORD1(v65[114]) = *v54;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_87:
  v60 = a3[39];
  a3[39] = v60 + 960;
  if (!a4)
  {
    return;
  }

  if (a5)
  {
    v61 = GetStream_19685(a5, v65[106]);
    if (v61)
    {
      v62 = *v61;
    }

    else
    {
      v62 = 0;
    }

    v65[106] = v62;
    v63 = GetStream_19685(a5, v65[110]);
    if (!v63)
    {
      v64 = 0;
      goto LABEL_96;
    }
  }

  else
  {
    v63 = &v65[110];
  }

  v64 = *v63;
LABEL_96:
  v65[110] = v64;
  memcpy(v60, v65, 0x3C0uLL);
}

uint64_t EncodeDYMTLComputePipelineDescriptor(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v55 = a2;
  v57 = a3;
  if (a3 >= 8)
  {
    *a2 = 115;
  }

  v6 = &dword_8;
  v56 = 8;
  v54 = *(a1 + 848);
  entry = find_entry(a4, &v54, 8uLL, 0);
  if (*entry)
  {
    v8 = *(*entry + 32);
    if (v8)
    {
      v9 = atomic_load((v8 + 56));
      v6 = (v8 + (~(v9 >> 2) & 8));
    }

    else
    {
      v6 = &dword_8;
    }
  }

  v10 = v57;
  v11 = v56 + 8;
  if (v56 + 8 <= v57)
  {
    *(v55 + v56) = *v6;
    v10 = v57;
    v11 = v56 + 8;
  }

  v56 = v11;
  v12 = v11 + 8;
  if (v11 + 8 <= v10)
  {
    *(v55 + v11) = *(a1 + 958);
    v12 = v56 + 8;
  }

  v56 = v12;
  WriteDynamicBufferString(&v55, *(a1 + 872));
  if (*(a1 + 951))
  {
    SaveDYMTLStageInputOutputDescriptor(&v55, a1);
    v13 = v56;
  }

  else
  {
    v13 = v56 + 8;
    if (v56 + 8 <= v57)
    {
      *(v55 + v56) = -1;
      v13 = v56 + 8;
    }

    v56 = v13;
  }

  v14 = v13 + 8;
  if (v13 + 8 <= v57)
  {
    *(v55 + v13) = 31;
    v14 = v56 + 8;
  }

  v15 = 0;
  v56 = v14;
  do
  {
    v16 = v14 + 8;
    if (v14 + 8 <= v57)
    {
      *(v55 + v14) = *(a1 + 920 + v15);
      v16 = v56 + 8;
    }

    v56 = v16;
    ++v15;
    v14 = v16;
  }

  while (v15 != 31);
  v17 = v16 + 8;
  v18 = v57;
  if (v16 + 8 <= v57)
  {
    *(v55 + v16) = *(a1 + 956);
    v18 = v57;
    v17 = v56 + 8;
  }

  v56 = v17;
  v19 = v17 + 8;
  if (v17 + 8 <= v18)
  {
    *(v55 + v17) = *(a1 + 918);
    v19 = v56 + 8;
  }

  v56 = v19;
  v53 = *(a1 + 880);
  v20 = &dword_8;
  v21 = find_entry(a4, &v53, 8uLL, 0);
  if (*v21)
  {
    v22 = *(*v21 + 32);
    if (v22)
    {
      v23 = atomic_load((v22 + 56));
      v20 = (v22 + (~(v23 >> 2) & 8));
    }

    else
    {
      v20 = &dword_8;
    }
  }

  v24 = v57;
  v25 = v56 + 8;
  if (v56 + 8 <= v57)
  {
    *(v55 + v56) = *v20;
    v24 = v57;
    v25 = v56 + 8;
  }

  v56 = v25;
  v26 = *(a1 + 864);
  v27 = v25 + 8;
  if (v25 + 8 <= v24)
  {
    *(v55 + v25) = v26;
    v27 = v56 + 8;
    v26 = *(a1 + 864);
  }

  v56 = v27;
  if (v26)
  {
    v28 = 0;
    do
    {
      v52 = *(*(a1 + 856) + 8 * v28);
      v29 = find_entry(a4, &v52, 8uLL, 0);
      v30 = &dword_8;
      if (*v29)
      {
        v31 = *(*v29 + 32);
        if (v31)
        {
          v32 = atomic_load((v31 + 56));
          v30 = (v31 + (~(v32 >> 2) & 8));
        }

        else
        {
          v30 = &dword_8;
        }
      }

      v27 = v56 + 8;
      if (v56 + 8 <= v57)
      {
        *(v55 + v56) = *v30;
        v27 = v56 + 8;
      }

      v56 = v27;
      ++v28;
    }

    while (*(a1 + 864) > v28);
  }

  v33 = v27 + 8;
  v34 = v57;
  if (v27 + 8 <= v57)
  {
    *(v55 + v27) = *(a1 + 904);
    v34 = v57;
    v33 = v56 + 8;
  }

  v56 = v33;
  v35 = v33 + 8;
  if (v33 + 8 <= v34)
  {
    *(v55 + v33) = *(a1 + 957);
    v34 = v57;
    v35 = v56 + 8;
  }

  v56 = v35;
  v36 = v35 + 8;
  if (v35 + 8 <= v34)
  {
    *(v55 + v35) = *(a1 + 912);
    v34 = v57;
    v36 = v56 + 8;
  }

  v56 = v36;
  v37 = v36 + 8;
  if (v36 + 8 <= v34)
  {
    *(v55 + v36) = *(a1 + 954);
    v34 = v57;
    v37 = v56 + 8;
  }

  v56 = v37;
  v38 = v37 + 8;
  if (v37 + 8 <= v34)
  {
    *(v55 + v37) = *(a1 + 953);
    v34 = v57;
    v38 = v56 + 8;
  }

  v56 = v38;
  v39 = v38 + 8;
  if (v38 + 8 <= v34)
  {
    *(v55 + v38) = *(a1 + 952);
    v39 = v56 + 8;
  }

  v56 = v39;
  WriteGTData(&v55, *(a1 + 832), *(a1 + 840));
  WriteGTData(&v55, *(a1 + 816), *(a1 + 824));
  v40 = v57;
  v41 = v56 + 8;
  if (v56 + 8 <= v57)
  {
    *(v55 + v56) = *(a1 + 916);
    v40 = v57;
    v41 = v56 + 8;
  }

  v56 = v41;
  v42 = v41 + 8;
  if (v41 + 8 <= v40)
  {
    *(v55 + v41) = *(a1 + 955);
    v42 = v56 + 8;
  }

  v56 = v42;
  SaveDYMTLLinkedFunctions(&v55, a1 + 752, a4);
  v43 = *(a1 + 896);
  v44 = v56 + 8;
  if (v56 + 8 <= v57)
  {
    *(v55 + v56) = v43;
    v44 = v56 + 8;
    v43 = *(a1 + 896);
  }

  v56 = v44;
  if (v43)
  {
    v45 = 0;
    do
    {
      v51 = *(*(a1 + 888) + 8 * v45);
      v46 = find_entry(a4, &v51, 8uLL, 0);
      v47 = &dword_8;
      if (*v46)
      {
        v48 = *(*v46 + 32);
        if (v48)
        {
          v49 = atomic_load((v48 + 56));
          v47 = (v48 + (~(v49 >> 2) & 8));
        }

        else
        {
          v47 = &dword_8;
        }
      }

      v44 = v56 + 8;
      if (v56 + 8 <= v57)
      {
        *(v55 + v56) = *v47;
        v44 = v56 + 8;
      }

      v56 = v44;
      ++v45;
    }

    while (*(a1 + 896) > v45);
  }

  result = v44 + 8;
  if (v44 + 8 <= v57)
  {
    *(v55 + v44) = *(a1 + 914);
    return v56 + 8;
  }

  return result;
}

double MakeDYMTLAccelerationStructureGeometryDescriptor(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v8 = a4;
  v49 = 0;
  *&v12 = 0;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  v13 = *a1;
  v14 = *(*a1)++;
  BYTE2(v49) = v14;
  v15 = v13[1];
  *a1 = v13 + 2;
  *&v46 = v15;
  v16 = v13[2];
  *a1 = v13 + 3;
  BYTE1(v49) = v16;
  v17 = v13[3];
  *a1 = v13 + 4;
  LOBYTE(v49) = v17;
  if (v14 > 3)
  {
    switch(v14)
    {
      case 4:
        MakeDYMTLAccelerationStructureMotionBoundingBoxGeometryDescriptor(a1, &v40, a3, a4, a5, a6);
        break;
      case 5:
        MakeDYMTLAccelerationStructureCurveGeometryDescriptor(a1, &v40, a3, a4, a5, a6);
        break;
      case 6:
        MakeDYMTLAccelerationStructureMotionCurveGeometryDescriptor(a1, &v40, a3, a4, a5, a6);
        break;
    }
  }

  else
  {
    switch(v14)
    {
      case 1:
        MakeDYMTLAccelerationStructureTriangleGeometryDescriptor(a1, &v40, a3, a4, a5, a6);
        break;
      case 2:
        MakeDYMTLAccelerationStructureBoundingBoxGeometryDescriptor(a1, &v40, a3, a4, a5, a6);
        break;
      case 3:
        MakeDYMTLAccelerationStructureMotionTriangleGeometryDescriptor(a1, &v40, a3, a4, a5, a6);
        break;
    }
  }

  if (v8 >= 0x38)
  {
    v18 = *a1;
    *a1 = (*a1 + (strlen(*a1) & 0xFFFFFFFFFFFFFFF8) + 8);
    v19 = *v18;
    if (!*v18)
    {
      v18 = 0;
    }

    if (v19)
    {
      v20 = strlen(v18);
      v21 = (a3 + 592);
      v22 = *(a3 + 592);
      v23 = v20 + 1;
      if (v20 != -1)
      {
        v24 = *(a3 + 592);
LABEL_22:
        *v21 = v22 + v23;
        if (a5)
        {
          memcpy(v24, v18, v23);
        }

        *(&v46 + 1) = v24;
        if (v8 >= 0x3D)
        {
          v25 = *a1;
          v26 = *a1 + 1;
          v27 = (*a1 + 2);
          v28 = (*a1 + 3);
          v29 = (*a1 + 4);
          *&v12 = **a1;
          *a1 = v26;
          *(&v12 + 1) = *v26;
          *a1 = v27;
          v30 = v25[2];
          *a1 = v28;
          *&v31 = v25[3];
          *a1 = v29;
          *(&v31 + 1) = v30;
          v47 = v12;
          v48 = v31;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v21 = (a3 + 592);
      v22 = *(a3 + 592);
    }

    v23 = 0;
    v24 = 0;
    goto LABEL_22;
  }

LABEL_26:
  if (a5)
  {
    v32 = v47;
    if (a6)
    {
      Stream_19685 = GetStream_19685(a6, v47);
      if (Stream_19685)
      {
        v32 = *Stream_19685;
      }

      else
      {
        v32 = 0;
      }
    }

    *&v47 = v32;
    v34 = v48;
    *(a2 + 144) = v49;
    v35 = v43;
    *(a2 + 32) = v42;
    *(a2 + 48) = v35;
    v36 = v45;
    *(a2 + 64) = v44;
    *(a2 + 80) = v36;
    v37 = v41;
    *a2 = v40;
    *(a2 + 16) = v37;
    *&v12 = v46;
    v38 = v47;
    *(a2 + 96) = v46;
    *(a2 + 112) = v38;
    *(a2 + 128) = v34;
  }

  return *&v12;
}

uint64_t SaveDYMTLAccelerationStructureGeometryDescriptor(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[1];
  v6 = a1[2];
  v8 = v7 + 8;
  if (v7 + 8 <= v6)
  {
    *(*a1 + v7) = *(a2 + 146);
    v6 = a1[2];
    v8 = a1[1] + 8;
  }

  a1[1] = v8;
  v9 = v8 + 8;
  if (v8 + 8 <= v6)
  {
    *(*a1 + v8) = *(a2 + 96);
    v6 = a1[2];
    v9 = a1[1] + 8;
  }

  a1[1] = v9;
  v10 = v9 + 8;
  if (v9 + 8 <= v6)
  {
    *(*a1 + v9) = *(a2 + 145);
    v6 = a1[2];
    v10 = a1[1] + 8;
  }

  a1[1] = v10;
  v11 = v10 + 8;
  if (v10 + 8 <= v6)
  {
    *(*a1 + v10) = *(a2 + 144);
    v11 = a1[1] + 8;
  }

  a1[1] = v11;
  v12 = *(a2 + 146);
  if (v12 > 3)
  {
    switch(v12)
    {
      case 4u:
        SaveDYMTLAccelerationStructureMotionBoundingBoxGeometryDescriptor(a1, a2, a3);
        break;
      case 5u:
        SaveDYMTLAccelerationStructureCurveGeometryDescriptor(a1, a2, a3);
        break;
      case 6u:
        SaveDYMTLAccelerationStructureMotionCurveGeometryDescriptor(a1, a2, a3);
        break;
    }
  }

  else
  {
    switch(v12)
    {
      case 1u:
        SaveDYMTLAccelerationStructureTriangleGeometryDescriptor(a1, a2, a3);
        break;
      case 2u:
        SaveDYMTLAccelerationStructureBoundingBoxGeometryDescriptor(a1, a2, a3);
        break;
      case 3u:
        SaveDYMTLAccelerationStructureMotionTriangleGeometryDescriptor(a1, a2, a3);
        break;
    }
  }

  WriteDynamicBufferString(a1, *(a2 + 104));
  result = GTTraceStream_deviceObjectOrNULL(a3, *(a2 + 112));
  v15 = a1[1];
  v14 = a1[2];
  v16 = v15 + 8;
  if (v15 + 8 <= v14)
  {
    *(*a1 + v15) = result;
    v14 = a1[2];
    v16 = a1[1] + 8;
  }

  a1[1] = v16;
  v17 = v16 + 8;
  if (v16 + 8 <= v14)
  {
    *(*a1 + v16) = *(a2 + 120);
    v14 = a1[2];
    v17 = a1[1] + 8;
  }

  a1[1] = v17;
  v18 = v17 + 8;
  if (v17 + 8 <= v14)
  {
    *(*a1 + v17) = *(a2 + 136);
    v14 = a1[2];
    v18 = a1[1] + 8;
  }

  a1[1] = v18;
  v19 = v18 + 8;
  if (v18 + 8 <= v14)
  {
    *(*a1 + v18) = *(a2 + 128);
    v19 = a1[1] + 8;
  }

  a1[1] = v19;
  return result;
}

void *DecodeDYMTL4RenderPassDescriptor(void *result, uint64_t *a2, uint64_t a3, int a4, uint64_t a5)
{
  v24[1] = a2;
  v5 = *(a3 + 320);
  *(a3 + 320) = v5 + 640;
  if (a4)
  {
    v7 = result;
    bzero(v5, 0x280uLL);
    v11 = *v7;
    v10 = (v7 + 2);
    v9 = v11;
    while (1)
    {
      v12 = *v10;
      v24[0] = v10 + 1;
      if (v12 == -1)
      {
        break;
      }

      MakeDYMTLRenderPassColorAttachmentDescriptor(v24, v5 + (v12 << 6), v8, v9, 1, a5);
      v10 = v24[0];
    }

    v13 = v10[1];
    v24[0] = v10 + 2;
    *(v5 + 632) = v13;
    MakeDYMTLRenderPassDepthAttachmentDescriptor(v24, v5 + 512, v8, v9, 1, a5);
    v14 = v24[0];
    *(v5 + 620) = *v24[0];
    *(v5 + 600) = v14[1];
    *(v5 + 622) = v14[2];
    *(v5 + 624) = v14[3];
    v15 = v14[4];
    v24[0] = v14 + 5;
    *(v5 + 626) = v15;
    result = MakeDYMTLRenderPassStencilAttachmentDescriptor(v24, v5 + 560, v16, v9, 1, a5);
    v17 = v24[0];
    v18 = *v24[0];
    *(v5 + 616) = *v24[0];
    v19 = *(v17 + 4);
    *(v5 + 628) = v19;
    v20 = *(v17 + 8);
    *(v5 + 630) = v20;
    v21 = v17[3];
    *(v5 + 608) = v21;
    *(v5 + 634) = v17[4];
    *(v5 + 596) = v17[5];
    if (v9 >= 0x67)
    {
      *(v5 + 633) = v17[6];
    }

    if (*(v5 + 632) == 255)
    {
      *(v5 + 632) = 0;
    }

    if (*(v5 + 620) == -1)
    {
      *(v5 + 620) = 0;
    }

    if (*(v5 + 622) == -1)
    {
      *(v5 + 622) = 0;
    }

    if (*(v5 + 624) == -1)
    {
      *(v5 + 624) = 0;
    }

    if (*(v5 + 626) == -1)
    {
      *(v5 + 626) = 0;
    }

    if (v18 == -1)
    {
      *(v5 + 616) = 0;
    }

    if (v19 == -1)
    {
      *(v5 + 628) = 0;
    }

    if (v20 == -1)
    {
      *(v5 + 630) = 0;
    }

    if (a5)
    {
      Stream_19685 = GetStream_19685(a5, *(v5 + 600));
      if (Stream_19685)
      {
        v23 = *Stream_19685;
      }

      else
      {
        v23 = 0;
      }

      *(v5 + 600) = v23;
      result = GetStream_19685(a5, *(v5 + 608));
      if (result)
      {
        v21 = *result;
      }

      else
      {
        v21 = 0;
      }
    }

    *(v5 + 608) = v21;
  }

  return result;
}

uint64_t EncodeDYMTL4RenderPassDescriptor(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v37 = a2;
  v39 = a3;
  if (a3 >= 8)
  {
    *a2 = 115;
  }

  v6 = 0;
  v38 = 8;
  v7 = a1;
  do
  {
    if (*(v7 + 8))
    {
      v8 = v38 + 8;
      if (v38 + 8 <= v39)
      {
        *(v37 + v38) = v6;
        v8 = v38 + 8;
      }

      v38 = v8;
      SaveDYMTLRenderPassColorAttachmentDescriptor(&v37, v7, a4);
    }

    ++v6;
    v7 += 64;
  }

  while (v6 != 8);
  v9 = v39;
  v10 = v38 + 8;
  if (v38 + 8 <= v39)
  {
    *(v37 + v38) = -1;
    v9 = v39;
    v10 = v38 + 8;
  }

  v38 = v10;
  v11 = v10 + 8;
  if (v10 + 8 <= v9)
  {
    *(v37 + v10) = *(a1 + 632);
    v11 = v38 + 8;
  }

  v38 = v11;
  SaveDYMTLRenderPassDepthAttachmentDescriptor(&v37, (a1 + 512), a4);
  v12 = v38 + 8;
  if (v38 + 8 <= v39)
  {
    *(v37 + v38) = *(a1 + 620);
    v12 = v38 + 8;
  }

  v38 = v12;
  v36 = *(a1 + 600);
  v13 = &dword_8;
  entry = find_entry(a4, &v36, 8uLL, 0);
  if (*entry)
  {
    v15 = *(*entry + 32);
    if (v15)
    {
      v16 = atomic_load((v15 + 56));
      v13 = (v15 + (~(v16 >> 2) & 8));
    }

    else
    {
      v13 = &dword_8;
    }
  }

  v17 = v39;
  v18 = v38 + 8;
  if (v38 + 8 <= v39)
  {
    *(v37 + v38) = *v13;
    v17 = v39;
    v18 = v38 + 8;
  }

  v38 = v18;
  v19 = v18 + 8;
  if (v18 + 8 <= v17)
  {
    *(v37 + v18) = *(a1 + 622);
    v17 = v39;
    v19 = v38 + 8;
  }

  v38 = v19;
  v20 = v19 + 8;
  if (v19 + 8 <= v17)
  {
    *(v37 + v19) = *(a1 + 624);
    v17 = v39;
    v20 = v38 + 8;
  }

  v38 = v20;
  v21 = v20 + 8;
  if (v20 + 8 <= v17)
  {
    *(v37 + v20) = *(a1 + 626);
    v21 = v38 + 8;
  }

  v38 = v21;
  SaveDYMTLRenderPassStencilAttachmentDescriptor(&v37, (a1 + 560), a4);
  v22 = v39;
  v23 = v38 + 8;
  if (v38 + 8 <= v39)
  {
    *(v37 + v38) = *(a1 + 616);
    v22 = v39;
    v23 = v38 + 8;
  }

  v38 = v23;
  v24 = v23 + 8;
  if (v23 + 8 <= v22)
  {
    *(v37 + v23) = *(a1 + 628);
    v22 = v39;
    v24 = v38 + 8;
  }

  v38 = v24;
  v25 = v24 + 8;
  if (v24 + 8 <= v22)
  {
    *(v37 + v24) = *(a1 + 630);
    v25 = v38 + 8;
  }

  v38 = v25;
  v35 = *(a1 + 608);
  v26 = &dword_8;
  v27 = find_entry(a4, &v35, 8uLL, 0);
  if (*v27)
  {
    v28 = *(*v27 + 32);
    if (v28)
    {
      v29 = atomic_load((v28 + 56));
      v26 = (v28 + (~(v29 >> 2) & 8));
    }

    else
    {
      v26 = &dword_8;
    }
  }

  v30 = v39;
  v31 = v38 + 8;
  if (v38 + 8 <= v39)
  {
    *(v37 + v38) = *v26;
    v30 = v39;
    v31 = v38 + 8;
  }

  v38 = v31;
  v32 = v31 + 8;
  if (v31 + 8 <= v30)
  {
    *(v37 + v31) = *(a1 + 634);
    v30 = v39;
    v32 = v38 + 8;
  }

  v38 = v32;
  v33 = v32 + 8;
  if (v32 + 8 <= v30)
  {
    *(v37 + v32) = *(a1 + 596);
    v30 = v39;
    v33 = v38 + 8;
  }

  v38 = v33;
  result = v33 + 8;
  if (v33 + 8 <= v30)
  {
    *(v37 + v33) = *(a1 + 633);
    return v38 + 8;
  }

  return result;
}

__n128 MakeDYMTL4ComputePipelineDescriptor(const char **a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a5;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  MakeDYMTL4FunctionDescriptor(a1, &v20, a3, a4, a5, a6);
  v9 = *a1;
  v10 = (*a1 + 16);
  v11 = (*a1 + 24);
  v12 = (*a1 + 32);
  v13 = **a1;
  *a1 += 8;
  result.n128_u64[0] = *(v9 + 1);
  *a1 = v10;
  result.n128_u64[1] = *v10;
  *a1 = v11;
  *&v15 = *(v9 + 3);
  *a1 = v12;
  *(&v15 + 1) = v13;
  v22 = result;
  v23 = v15;
  v16 = *(v9 + 4);
  *a1 = v9 + 40;
  LOBYTE(v24) = v16;
  v17 = *(v9 + 5);
  *a1 = v9 + 48;
  BYTE2(v24) = v17;
  v18 = *(v9 + 6);
  *a1 = v9 + 56;
  BYTE1(v24) = v18;
  if (v6)
  {
    v19 = v23;
    *(a2 + 32) = v22;
    *(a2 + 48) = v19;
    *(a2 + 64) = v24;
    result = v21;
    *a2 = v20;
    *(a2 + 16) = result;
  }

  return result;
}

void *SaveDYMTL4ComputePipelineDescriptor(void *a1, uint64_t a2, uint64_t a3)
{
  SaveDYMTL4FunctionDescriptor(a1, a2, a3);
  v5 = a1[1];
  v6 = v5 + 8;
  if ((v5 + 8) <= a1[2])
  {
    *(*a1 + v5) = *(a2 + 56);
    v6 = a1[1] + 8;
  }

  a1[1] = v6;
  v13 = *(a2 + 32);
  v14 = *(a2 + 48);
  result = SaveGTMTLSize(a1, &v13);
  v9 = a1[1];
  v8 = a1[2];
  v10 = v9 + 8;
  if (v9 + 8 <= v8)
  {
    *(*a1 + v9) = *(a2 + 64);
    v8 = a1[2];
    v10 = a1[1] + 8;
  }

  a1[1] = v10;
  v11 = v10 + 8;
  if (v10 + 8 <= v8)
  {
    *(*a1 + v10) = *(a2 + 66);
    v8 = a1[2];
    v11 = a1[1] + 8;
  }

  a1[1] = v11;
  v12 = v11 + 8;
  if (v11 + 8 <= v8)
  {
    *(*a1 + v11) = *(a2 + 65);
    v12 = a1[1] + 8;
  }

  a1[1] = v12;
  return result;
}

const char **MakeDYMTL4MachineLearningPipelineDescriptor(const char **a1, uint64_t a2, void *a3, uint64_t a4, char a5, uint64_t a6)
{
  v21 = 0u;
  v22 = 0u;
  v12 = *a1;
  *a1 += (strlen(*a1) & 0xFFFFFFFFFFFFFFF8) + 8;
  v13 = *v12;
  if (!*v12)
  {
    v12 = 0;
  }

  if (v13)
  {
    v14 = strlen(v12);
    v15 = a3 + 74;
    v16 = a3[74];
    v17 = v14 + 1;
    if (v14 != -1)
    {
      v18 = a3[74];
      goto LABEL_8;
    }
  }

  else
  {
    v15 = a3 + 74;
    v16 = a3[74];
  }

  v17 = 0;
  v18 = 0;
LABEL_8:
  *v15 = v16 + v17;
  if ((a5 & 1) == 0)
  {
    return MakeDYMTL4FunctionDescriptor(a1, &v21, a3, a4, 0, a6);
  }

  memcpy(v18, v12, v17);
  v23 = v18;
  result = MakeDYMTL4FunctionDescriptor(a1, &v21, a3, a4, 1, a6);
  v20 = v22;
  *a2 = v21;
  *(a2 + 16) = v20;
  *(a2 + 32) = v23;
  return result;
}

void SaveDYMTL4MachineLearningPipelineDescriptor(void *a1, uint64_t a2, uint64_t a3)
{
  WriteDynamicBufferString(a1, *(a2 + 32));

  SaveDYMTL4FunctionDescriptor(a1, a2, a3);
}

const char **MakeDYMTL4RenderPipelineDescriptor(const char **a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  bzero(__src, 0x3C8uLL);
  v14 = *a1;
  v15 = **a1;
  *a1 += 8;
  LOBYTE(__src[120]) = v15;
  v16 = *(v14 + 1);
  *a1 = v14 + 16;
  BYTE1(__src[120]) = v16;
  v17 = *(v14 + 2);
  v18 = v14 + 24;
  *a1 = v18;
  if (v17)
  {
    v19 = &__src[93];
    do
    {
      MakeDYMTL4RenderPipelineColorAttachmentDescriptor(a1, v19, v12, v13, a5);
      v19 += 2;
      --v17;
    }

    while (v17);
    v18 = *a1;
  }

  v20 = *v18;
  *a1 = v18 + 8;
  __src[117] = v20;
  MakeDYMTL4FunctionDescriptor(a1, &__src[109], a3, a4, a5, a6);
  v21 = *a1;
  v22 = **a1;
  *a1 += 8;
  BYTE3(__src[120]) = v22;
  v23 = *(v21 + 1);
  *a1 = v21 + 16;
  __src[118] = v23;
  v24 = *(v21 + 2);
  *a1 = v21 + 24;
  __src[119] = v24;
  v25 = *(v21 + 3);
  *a1 = v21 + 32;
  BYTE4(__src[120]) = v25;
  v26 = *(v21 + 4);
  *a1 = v21 + 40;
  BYTE5(__src[120]) = v26;
  v27 = *(v21 + 5);
  *a1 = v21 + 48;
  HIBYTE(__src[120]) = v27;
  MakeDYMTLVertexDescriptor(a1, __src, v28, a4, a5);
  result = MakeDYMTL4FunctionDescriptor(a1, &__src[113], a3, a4, a5, a6);
  v30 = *a1;
  v31 = **a1;
  *a1 += 8;
  BYTE6(__src[120]) = v31;
  if (a4 > 0x6E)
  {
    v32 = *(v30 + 1);
    *a1 = v30 + 16;
    BYTE2(__src[120]) = v32;
  }

  if (a5)
  {
    return memcpy(a2, __src, 0x3C8uLL);
  }

  return result;
}

void SaveDYMTL4RenderPipelineDescriptor(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[1];
  v6 = a1[2];
  v8 = v7 + 8;
  if (v7 + 8 <= v6)
  {
    *(*a1 + v7) = *(a2 + 960);
    v6 = a1[2];
    v8 = a1[1] + 8;
  }

  a1[1] = v8;
  v9 = v8 + 8;
  if (v8 + 8 <= v6)
  {
    *(*a1 + v8) = *(a2 + 961);
    v6 = a1[2];
    v9 = a1[1] + 8;
  }

  a1[1] = v9;
  v10 = v9 + 8;
  if (v9 + 8 <= v6)
  {
    *(*a1 + v9) = 8;
    v10 = a1[1] + 8;
  }

  a1[1] = v10;
  for (i = 744; i != 872; i += 16)
  {
    SaveDYMTL4RenderPipelineColorAttachmentDescriptor(a1, (a2 + i));
  }

  v12 = a1[1];
  v13 = v12 + 8;
  if ((v12 + 8) <= a1[2])
  {
    *(*a1 + v12) = *(a2 + 936);
    v13 = a1[1] + 8;
  }

  a1[1] = v13;
  SaveDYMTL4FunctionDescriptor(a1, (a2 + 872), a3);
  v15 = a1[1];
  v14 = a1[2];
  v16 = v15 + 8;
  if (v15 + 8 <= v14)
  {
    *(*a1 + v15) = *(a2 + 963);
    v14 = a1[2];
    v16 = a1[1] + 8;
  }

  a1[1] = v16;
  v17 = v16 + 8;
  if (v16 + 8 <= v14)
  {
    *(*a1 + v16) = *(a2 + 944);
    v14 = a1[2];
    v17 = a1[1] + 8;
  }

  a1[1] = v17;
  v18 = v17 + 8;
  if (v17 + 8 <= v14)
  {
    *(*a1 + v17) = *(a2 + 952);
    v14 = a1[2];
    v18 = a1[1] + 8;
  }

  a1[1] = v18;
  v19 = v18 + 8;
  if (v18 + 8 <= v14)
  {
    *(*a1 + v18) = *(a2 + 964);
    v14 = a1[2];
    v19 = a1[1] + 8;
  }

  a1[1] = v19;
  v20 = v19 + 8;
  if (v19 + 8 <= v14)
  {
    *(*a1 + v19) = *(a2 + 965);
    v14 = a1[2];
    v20 = a1[1] + 8;
  }

  a1[1] = v20;
  v21 = v20 + 8;
  if (v20 + 8 <= v14)
  {
    *(*a1 + v20) = *(a2 + 967);
    v21 = a1[1] + 8;
  }

  a1[1] = v21;
  SaveDYMTLVertexDescriptor(a1, a2);
  SaveDYMTL4FunctionDescriptor(a1, (a2 + 904), a3);
  v23 = a1[1];
  v22 = a1[2];
  v24 = v23 + 8;
  if (v23 + 8 <= v22)
  {
    *(*a1 + v23) = *(a2 + 966);
    v22 = a1[2];
    v24 = a1[1] + 8;
  }

  a1[1] = v24;
  v25 = v24 + 8;
  if (v24 + 8 <= v22)
  {
    *(*a1 + v24) = *(a2 + 962);
    v25 = a1[1] + 8;
  }

  a1[1] = v25;
}

const char **MakeDYMTL4MeshRenderPipelineDescriptor(const char **a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  memset(v42, 0, 344);
  v12 = *a1;
  v13 = **a1;
  *a1 += 8;
  BYTE8(v42[20]) = v13;
  v14 = *(v12 + 1);
  *a1 = v12 + 16;
  BYTE9(v42[20]) = v14;
  v15 = *(v12 + 2);
  v16 = v12 + 24;
  *a1 = v16;
  if (v15)
  {
    v17 = v42;
    do
    {
      MakeDYMTL4RenderPipelineColorAttachmentDescriptor(a1, v17++, a3, a4, a5);
      --v15;
    }

    while (v15);
    v16 = *a1;
  }

  v18 = *v16;
  *a1 = v16 + 8;
  *&v42[17] = v18;
  MakeDYMTL4FunctionDescriptor(a1, &v42[8], a3, a4, a5, a6);
  v19 = *a1;
  v20 = *a1 + 8;
  v21 = (*a1 + 16);
  v22 = *a1 + 24;
  v23 = (*a1 + 32);
  *&v24 = **a1;
  *a1 = v20;
  *(&v24 + 1) = *v20;
  *a1 = v21;
  *&v25 = *(v19 + 2);
  *a1 = v22;
  *(&v25 + 1) = *v22;
  *a1 = v23;
  *(&v42[17] + 8) = v24;
  *(&v42[18] + 8) = v25;
  MakeDYMTL4FunctionDescriptor(a1, &v42[10], a3, a4, a5, a6);
  v26 = **a1;
  *a1 += 8;
  BYTE11(v42[20]) = v26;
  result = MakeDYMTL4FunctionDescriptor(a1, &v42[12], a3, a4, a5, a6);
  v28 = *a1;
  v29 = **a1;
  *a1 += 8;
  BYTE12(v42[20]) = v29;
  v30 = *(v28 + 1);
  *a1 = v28 + 16;
  v31 = *(v28 + 2);
  *a1 = v28 + 24;
  *(&v42[19] + 1) = v30;
  *&v42[20] = v31;
  v32 = *(v28 + 3);
  *a1 = v28 + 32;
  BYTE13(v42[20]) = v32;
  *&v33 = *(v28 + 4);
  *a1 = v28 + 40;
  *(&v33 + 1) = *(v28 + 5);
  *a1 = v28 + 48;
  *&v34 = *(v28 + 6);
  *a1 = v28 + 56;
  *(&v34 + 1) = *(v28 + 7);
  *a1 = v28 + 64;
  v35 = *(v28 + 8);
  *a1 = v28 + 72;
  v36 = *(v28 + 9);
  *a1 = v28 + 80;
  v42[14] = v33;
  v42[15] = v34;
  *&v42[16] = v35;
  *(&v42[16] + 1) = v36;
  v37 = *(v28 + 10);
  *a1 = v28 + 88;
  BYTE14(v42[20]) = v37;
  v38 = *(v28 + 11);
  *a1 = v28 + 96;
  LOBYTE(v42[21]) = v38;
  v39 = *(v28 + 12);
  *a1 = v28 + 104;
  BYTE1(v42[21]) = v39;
  v40 = *(v28 + 13);
  *a1 = v28 + 112;
  HIBYTE(v42[20]) = v40;
  if (a4 > 0x6E)
  {
    v41 = *(v28 + 14);
    *a1 = v28 + 120;
    BYTE10(v42[20]) = v41;
  }

  if (a5)
  {
    return memcpy(a2, v42, 0x158uLL);
  }

  return result;
}

void *SaveDYMTL4MeshRenderPipelineDescriptor(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[1];
  v6 = a1[2];
  v8 = v7 + 8;
  if (v7 + 8 <= v6)
  {
    *(*a1 + v7) = *(a2 + 328);
    v6 = a1[2];
    v8 = a1[1] + 8;
  }

  a1[1] = v8;
  v9 = v8 + 8;
  if (v8 + 8 <= v6)
  {
    *(*a1 + v8) = *(a2 + 329);
    v6 = a1[2];
    v9 = a1[1] + 8;
  }

  a1[1] = v9;
  v10 = v9 + 8;
  if (v9 + 8 <= v6)
  {
    *(*a1 + v9) = 8;
    v10 = a1[1] + 8;
  }

  a1[1] = v10;
  v11 = 8;
  v12 = a2;
  do
  {
    SaveDYMTL4RenderPipelineColorAttachmentDescriptor(a1, v12);
    v12 += 16;
    --v11;
  }

  while (v11);
  v13 = a1[1];
  v14 = v13 + 8;
  if ((v13 + 8) <= a1[2])
  {
    *(*a1 + v13) = *(a2 + 272);
    v14 = a1[1] + 8;
  }

  a1[1] = v14;
  SaveDYMTL4FunctionDescriptor(a1, (a2 + 128), a3);
  v16 = a1[1];
  v15 = a1[2];
  v17 = v16 + 8;
  if (v16 + 8 <= v15)
  {
    *(*a1 + v16) = *(a2 + 280);
    v15 = a1[2];
    v17 = a1[1] + 8;
  }

  a1[1] = v17;
  v18 = v17 + 8;
  if (v17 + 8 <= v15)
  {
    *(*a1 + v17) = *(a2 + 288);
    v15 = a1[2];
    v18 = a1[1] + 8;
  }

  a1[1] = v18;
  v19 = v18 + 8;
  if (v18 + 8 <= v15)
  {
    *(*a1 + v18) = *(a2 + 296);
    v15 = a1[2];
    v19 = a1[1] + 8;
  }

  a1[1] = v19;
  v20 = v19 + 8;
  if (v19 + 8 <= v15)
  {
    *(*a1 + v19) = *(a2 + 304);
    v20 = a1[1] + 8;
  }

  a1[1] = v20;
  SaveDYMTL4FunctionDescriptor(a1, (a2 + 160), a3);
  v21 = a1[1];
  v22 = v21 + 8;
  if ((v21 + 8) <= a1[2])
  {
    *(*a1 + v21) = *(a2 + 331);
    v22 = a1[1] + 8;
  }

  a1[1] = v22;
  SaveDYMTL4FunctionDescriptor(a1, (a2 + 192), a3);
  v24 = a1[1];
  v23 = a1[2];
  v25 = v24 + 8;
  if (v24 + 8 <= v23)
  {
    *(*a1 + v24) = *(a2 + 332);
    v23 = a1[2];
    v25 = a1[1] + 8;
  }

  a1[1] = v25;
  v26 = v25 + 8;
  if (v25 + 8 <= v23)
  {
    *(*a1 + v25) = *(a2 + 312);
    v23 = a1[2];
    v26 = a1[1] + 8;
  }

  a1[1] = v26;
  v27 = v26 + 8;
  if (v26 + 8 <= v23)
  {
    *(*a1 + v26) = *(a2 + 320);
    v23 = a1[2];
    v27 = a1[1] + 8;
  }

  a1[1] = v27;
  v28 = v27 + 8;
  if (v27 + 8 <= v23)
  {
    *(*a1 + v27) = *(a2 + 333);
    v28 = a1[1] + 8;
  }

  a1[1] = v28;
  v37 = *(a2 + 224);
  v38 = *(a2 + 240);
  SaveGTMTLSize(a1, &v37);
  v37 = *(a2 + 248);
  v38 = *(a2 + 264);
  result = SaveGTMTLSize(a1, &v37);
  v31 = a1[1];
  v30 = a1[2];
  v32 = v31 + 8;
  if (v31 + 8 <= v30)
  {
    *(*a1 + v31) = *(a2 + 334);
    v30 = a1[2];
    v32 = a1[1] + 8;
  }

  a1[1] = v32;
  v33 = v32 + 8;
  if (v32 + 8 <= v30)
  {
    *(*a1 + v32) = *(a2 + 336);
    v30 = a1[2];
    v33 = a1[1] + 8;
  }

  a1[1] = v33;
  v34 = v33 + 8;
  if (v33 + 8 <= v30)
  {
    *(*a1 + v33) = *(a2 + 337);
    v30 = a1[2];
    v34 = a1[1] + 8;
  }

  a1[1] = v34;
  v35 = v34 + 8;
  if (v34 + 8 <= v30)
  {
    *(*a1 + v34) = *(a2 + 335);
    v30 = a1[2];
    v35 = a1[1] + 8;
  }

  a1[1] = v35;
  v36 = v35 + 8;
  if (v35 + 8 <= v30)
  {
    *(*a1 + v35) = *(a2 + 330);
    v36 = a1[1] + 8;
  }

  a1[1] = v36;
  return result;
}

double MakeDYMTL4TileRenderPipelineDescriptor(const char **a1, _OWORD *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a5;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = *a1 + 8;
  v9 = **a1;
  *a1 = v8;
  if (v9)
  {
    v10 = &v27 + 4;
    do
    {
      v12 = *v8;
      v8 += 8;
      v11 = v12;
      *a1 = v8;
      if (a5)
      {
        *v10 = v11;
      }

      ++v10;
      --v9;
    }

    while (v9);
  }

  v13 = *v8;
  *a1 = v8 + 8;
  *(&v28 + 1) = v13;
  v14 = *(v8 + 1);
  *a1 = v8 + 16;
  *&v29 = v14;
  v15 = *(v8 + 2);
  *a1 = v8 + 24;
  v16 = *(v8 + 3);
  *a1 = v8 + 32;
  v17 = *(v8 + 4);
  *a1 = v8 + 40;
  *&v26 = v15;
  *(&v26 + 1) = v16;
  *&v27 = v17;
  v18 = *(v8 + 5);
  *a1 = v8 + 48;
  BYTE8(v29) = v18;
  v19 = *(v8 + 6);
  *a1 = v8 + 56;
  BYTE9(v29) = v19;
  MakeDYMTL4FunctionDescriptor(a1, &v24, a3, a4, a5, a6);
  if (v6)
  {
    v21 = v27;
    a2[2] = v26;
    a2[3] = v21;
    v22 = v29;
    a2[4] = v28;
    a2[5] = v22;
    result = *&v24;
    v23 = v25;
    *a2 = v24;
    a2[1] = v23;
  }

  return result;
}

void SaveDYMTL4TileRenderPipelineDescriptor(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[1];
  v7 = v6 + 8;
  if ((v6 + 8) <= a1[2])
  {
    *(*a1 + v6) = 8;
    v7 = a1[1] + 8;
  }

  a1[1] = v7;
  for (i = 56; i != 72; i += 2)
  {
    v9 = v7 + 8;
    if ((v7 + 8) <= a1[2])
    {
      *(*a1 + v7) = *(a2 + i);
      v9 = a1[1] + 8;
    }

    a1[1] = v9;
    v7 = v9;
  }

  v10 = v9 + 8;
  v11 = a1[2];
  if (v9 + 8 <= v11)
  {
    *(*a1 + v9) = *(a2 + 72);
    v11 = a1[2];
    v10 = a1[1] + 8;
  }

  a1[1] = v10;
  v12 = v10 + 8;
  if (v10 + 8 <= v11)
  {
    *(*a1 + v10) = *(a2 + 80);
    v12 = a1[1] + 8;
  }

  a1[1] = v12;
  v17 = *(a2 + 32);
  v18 = *(a2 + 48);
  SaveGTMTLSize(a1, &v17);
  v14 = a1[1];
  v13 = a1[2];
  v15 = v14 + 8;
  if (v14 + 8 <= v13)
  {
    *(*a1 + v14) = *(a2 + 88);
    v13 = a1[2];
    v15 = a1[1] + 8;
  }

  a1[1] = v15;
  v16 = v15 + 8;
  if (v15 + 8 <= v13)
  {
    *(*a1 + v15) = *(a2 + 89);
    v16 = a1[1] + 8;
  }

  a1[1] = v16;

  SaveDYMTL4FunctionDescriptor(a1, a2, a3);
}

void MakeDYMTL4PrimitiveAccelerationStructureDescriptor(const char **a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = *a1 + 8;
  v9 = **a1;
  *a1 = v8;
  if (v9)
  {
    v11 = *(a3 + 432);
    v12 = v9;
    do
    {
      v13 = *(a3 + 432);
      *(a3 + 432) = v13 + 152;
      MakeDYMTL4AccelerationStructureGeometryDescriptor(a1, v13, a3, a4, a5);
      --v12;
    }

    while (v12);
    v8 = *a1;
  }

  else
  {
    v11 = 0;
  }

  v14 = *v8;
  *a1 = v8 + 8;
  v15 = *(v8 + 2);
  *a1 = v8 + 16;
  v16 = *(v8 + 2);
  *a1 = v8 + 24;
  v17 = *(v8 + 3);
  *a1 = v8 + 32;
  v18 = *(v8 + 8);
  *a1 = v8 + 40;
  if (a5)
  {
    *a2 = v11;
    *(a2 + 8) = v9;
    *(a2 + 16) = v16;
    *(a2 + 24) = v15;
    *(a2 + 28) = v18;
    *(a2 + 32) = v14;
    *(a2 + 33) = v17;
    *(a2 + 34) = 0;
    *(a2 + 38) = 0;
  }
}

void SaveDYMTL4PrimitiveAccelerationStructureDescriptor(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = a1[1];
  v6 = v5 + 8;
  if ((v5 + 8) <= a1[2])
  {
    *(*a1 + v5) = v4;
    v6 = a1[1] + 8;
    v4 = *(a2 + 8);
  }

  a1[1] = v6;
  if (v4)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      SaveDYMTL4AccelerationStructureGeometryDescriptor(a1, *a2 + v7);
      ++v8;
      v7 += 152;
    }

    while (*(a2 + 8) > v8);
    v6 = a1[1];
  }

  v9 = v6 + 8;
  v10 = a1[2];
  if (v6 + 8 <= v10)
  {
    *(*a1 + v6) = *(a2 + 32);
    v10 = a1[2];
    v9 = a1[1] + 8;
  }

  a1[1] = v9;
  v11 = v9 + 4;
  if (v9 + 4 <= v10)
  {
    *(*a1 + v9) = *(a2 + 24);
    v10 = a1[2];
    v11 = a1[1] + 4;
  }

  a1[1] = v11;
  if (v10 > v11)
  {
    if (v10 - v11 >= 4)
    {
      v12 = 4;
    }

    else
    {
      v12 = v10 - v11;
    }

    bzero((*a1 + v11), v12);
    v11 = a1[1];
    v10 = a1[2];
  }

  v13 = v11 + 4;
  a1[1] = v11 + 4;
  v14 = v11 + 12;
  if (v14 <= v10)
  {
    *(*a1 + v13) = *(a2 + 16);
    v10 = a1[2];
    v14 = a1[1] + 8;
  }

  a1[1] = v14;
  v15 = v14 + 8;
  if (v14 + 8 <= v10)
  {
    *(*a1 + v14) = *(a2 + 33);
    v10 = a1[2];
    v15 = a1[1] + 8;
  }

  a1[1] = v15;
  v16 = v15 + 4;
  if (v15 + 4 <= v10)
  {
    *(*a1 + v15) = *(a2 + 28);
    v10 = a1[2];
    v16 = a1[1] + 4;
  }

  a1[1] = v16;
  v17 = v10 > v16;
  v18 = v10 - v16;
  if (v17)
  {
    if (v18 >= 4)
    {
      v19 = 4;
    }

    else
    {
      v19 = v18;
    }

    bzero((*a1 + v16), v19);
    v16 = a1[1];
  }

  a1[1] = v16 + 4;
}

__n128 DecodeDYMTL4BinaryFunctionDescriptor(unsigned int *a1, __int16 *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = a4;
  *&v22 = 0;
  v7 = *a1;
  v20 = 0u;
  v21 = 0u;
  v23[0] = (a1 + 2);
  v23[1] = a2;
  v18 = 0u;
  v19 = 0u;
  MakeDYMTL4FunctionDescriptor(v23, (&v20 + 8), a3, v7, a4, a5);
  v8 = v23[0];
  v23[0] = (v23[0] + (strlen(v23[0]) & 0xFFFFFFFFFFFFFFF8) + 8);
  v9 = *v8;
  if (!*v8)
  {
    v8 = 0;
  }

  if (v9)
  {
    v10 = strlen(v8);
    v11 = a3 + 74;
    v12 = a3[74];
    v13 = v10 + 1;
    if (v10 != -1)
    {
      v14 = a3[74];
      goto LABEL_8;
    }
  }

  else
  {
    v11 = a3 + 74;
    v12 = a3[74];
  }

  v13 = 0;
  v14 = 0;
LABEL_8:
  *v11 = v12 + v13;
  if (v5)
  {
    memcpy(v14, v8, v13);
  }

  *(&v22 + 1) = v14;
  result.n128_u64[0] = MakeDYMTL4PipelineOptions(v23, &v18, a3, v7, v5);
  v16 = a3[41];
  a3[41] = v16 + 80;
  if (v5)
  {
    v17 = v21;
    *(v16 + 32) = v20;
    *(v16 + 48) = v17;
    *(v16 + 64) = v22;
    result = v19;
    *v16 = v18;
    *(v16 + 16) = result;
  }

  return result;
}

uint64_t EncodeDYMTL4BinaryFunctionDescriptor(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = a2;
  v8 = a3;
  if (a3 >= 8)
  {
    *a2 = 115;
  }

  v7 = 8;
  SaveDYMTL4FunctionDescriptor(&v6, (a1 + 40), a4);
  WriteDynamicBufferString(&v6, *(a1 + 72));
  SaveDYMTL4PipelineOptions(&v6, a1);
  return v7;
}

void MakeDYMTLPrimitiveAccelerationStructureDescriptor(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v10 = *(*a1)++;
  if (v10)
  {
    v13 = *(a3 + 424);
    v14 = v10;
    do
    {
      v15 = *(a3 + 424);
      *(a3 + 424) = v15 + 152;
      MakeDYMTLAccelerationStructureGeometryDescriptor(a1, v15, a3, a4, a5, a6);
      --v14;
    }

    while (v14);
  }

  else
  {
    v13 = 0;
  }

  if (a4 <= 0x38)
  {
    v20 = 0;
    v19 = 0;
    v21 = 1;
    v18 = 0;
    v17 = 0;
    if (!a5)
    {
      return;
    }

    goto LABEL_10;
  }

  v16 = *a1;
  v17 = *(*a1)++;
  v18 = *(v16 + 2);
  *a1 = v16 + 2;
  v19 = *(v16 + 16);
  *a1 = v16 + 3;
  v20 = *(v16 + 24);
  *a1 = v16 + 4;
  v21 = *(v16 + 8);
  *a1 = v16 + 5;
  if (a5)
  {
LABEL_10:
    *a2 = v13;
    *(a2 + 8) = v10;
    *(a2 + 16) = v18;
    *(a2 + 20) = v21;
    *(a2 + 24) = v17;
    *(a2 + 28) = v20;
    *(a2 + 29) = v19;
    *(a2 + 30) = 0;
  }
}

char *DecodeDYMTL4PipelineDescriptor(const char *a1, __int16 *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v21[1] = a2;
  bzero(v20, 0x400uLL);
  v9 = *a1;
  v21[0] = &a1[(strlen(a1 + 8) & 0xFFFFFFFFFFFFFFF8) + 16];
  v10 = *(a1 + 8);
  if (a1[8])
  {
    v11 = a1 + 8;
  }

  else
  {
    v11 = 0;
  }

  if (v10)
  {
    v12 = strlen(v11);
    v13 = a3 + 74;
    v14 = a3[74];
    v15 = v12 + 1;
    if (v12 != -1)
    {
      v16 = a3[74];
      goto LABEL_9;
    }
  }

  else
  {
    v13 = a3 + 74;
    v14 = a3[74];
  }

  v15 = 0;
  v16 = 0;
LABEL_9:
  *v13 = v14 + v15;
  if (a4)
  {
    memcpy(v16, v11, v15);
  }

  *&v20[63] = v16;
  MakeDYMTL4PipelineOptions(v21, &v20[60] + 8, a3, v9, a4);
  v18 = *v21[0];
  v17 = v18;
  v21[0] += 4;
  BYTE8(v20[63]) = v18;
  if (v18 <= 2)
  {
    if (v17 == 1)
    {
      MakeDYMTL4ComputePipelineDescriptor(v21, v20, a3, v9, a4, a5);
    }

    else if (v17 == 2)
    {
      MakeDYMTL4RenderPipelineDescriptor(v21, v20, a3, v9, a4, a5);
    }
  }

  else
  {
    switch(v17)
    {
      case 3:
        MakeDYMTL4MachineLearningPipelineDescriptor(v21, v20, a3, v9, a4, a5);
        break;
      case 4:
        MakeDYMTL4MeshRenderPipelineDescriptor(v21, v20, a3, v9, a4, a5);
        break;
      case 5:
        MakeDYMTL4TileRenderPipelineDescriptor(v21, v20, a3, v9, a4, a5);
        break;
    }
  }

  result = a3[42];
  a3[42] = result + 1024;
  if (a4)
  {
    return memcpy(result, v20, 0x400uLL);
  }

  return result;
}

uint64_t EncodeDYMTL4PipelineDescriptor(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v9 = a2;
  v11 = a3;
  if (a3 >= 8)
  {
    *a2 = 115;
  }

  v10 = 8;
  WriteDynamicBufferString(&v9, *(a1 + 1008));
  SaveDYMTL4PipelineOptions(&v9, a1 + 968);
  v6 = *(a1 + 1016);
  v7 = v10 + 8;
  if (v10 + 8 <= v11)
  {
    *(v9 + v10) = v6;
    LODWORD(v6) = *(a1 + 1016);
  }

  v10 = v7;
  if (v6 <= 2)
  {
    if (v6 == 1)
    {
      SaveDYMTL4ComputePipelineDescriptor(&v9, a1, a4);
    }

    else if (v6 == 2)
    {
      SaveDYMTL4RenderPipelineDescriptor(&v9, a1, a4);
    }
  }

  else
  {
    switch(v6)
    {
      case 3:
        WriteDynamicBufferString(&v9, *(a1 + 32));
        SaveDYMTL4FunctionDescriptor(&v9, a1, a4);
        break;
      case 4:
        SaveDYMTL4MeshRenderPipelineDescriptor(&v9, a1, a4);
        break;
      case 5:
        SaveDYMTL4TileRenderPipelineDescriptor(&v9, a1, a4);
        break;
    }
  }

  return v10;
}

void MakeDYMTL4AccelerationStructureDescriptor(uint64_t *a1, _OWORD *a2, uint64_t a3, uint64_t a4, int a5)
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = **a1;
  *a1 += 8;
  BYTE8(v16) = v7;
  if (v7 != 5)
  {
    if (v7 == 6)
    {
      MakeDYMTL4InstanceAccelerationStructureDescriptor(a1, &v11, a3, a4, a5);
    }

    else if (v7 == 7)
    {
      MakeDYMTL4IndirectInstanceAccelerationStructureDescriptor(a1, &v11, a3, a4, a5);
      if (!a5)
      {
        return;
      }

      goto LABEL_8;
    }

    if (!a5)
    {
      return;
    }

    goto LABEL_8;
  }

  MakeDYMTL4PrimitiveAccelerationStructureDescriptor(a1, &v11, a3, a4, a5);
  if (!a5)
  {
    return;
  }

LABEL_8:
  v8 = v14;
  a2[2] = v13;
  a2[3] = v8;
  v9 = v16;
  a2[4] = v15;
  a2[5] = v9;
  v10 = v12;
  *a2 = v11;
  a2[1] = v10;
}

void SaveDYMTL4AccelerationStructureDescriptor(void *result, uint64_t a2)
{
  v2 = *(a2 + 88);
  v3 = result[1];
  v4 = v3 + 8;
  if ((v3 + 8) <= result[2])
  {
    *(*result + v3) = v2;
    v4 = result[1] + 8;
    LODWORD(v2) = *(a2 + 88);
  }

  result[1] = v4;
  switch(v2)
  {
    case 5:
      SaveDYMTL4PrimitiveAccelerationStructureDescriptor(result, a2);
      break;
    case 6:
      SaveDYMTL4InstanceAccelerationStructureDescriptor(result, a2);
      break;
    case 7:
      SaveDYMTL4IndirectInstanceAccelerationStructureDescriptor(result, a2);
      break;
  }
}

void DecodeDYMTL4AccelerationStructureDescriptor(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = *(a1 + 8);
  v24[0] = (a1 + 16);
  v24[1] = a2;
  BYTE8(v23) = v6;
  if (v6 == 5)
  {
    MakeDYMTL4PrimitiveAccelerationStructureDescriptor(v24, &v18, a3, a4, a4);
    goto LABEL_8;
  }

  if (v6 != 6)
  {
    if (v6 == 7)
    {
      MakeDYMTL4IndirectInstanceAccelerationStructureDescriptor(v24, &v18, a3, a4, a4);
    }

LABEL_8:
    v14 = *(a3 + 344);
    *(a3 + 344) = v14 + 6;
    if (!v4)
    {
      return;
    }

    goto LABEL_9;
  }

  if ((a4 & 1) == 0)
  {
    *(a3 + 344) += 96;
    return;
  }

  v7 = *(a1 + 96);
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10 = *(a1 + 40);
  v11 = *(a1 + 16);
  v12 = *(a1 + 64);
  v13 = *(a1 + 80);
  v18 = *(a1 + 24);
  v19 = v12;
  *&v20 = v11;
  *(&v20 + 1) = v10;
  v21 = v13;
  LOBYTE(v22) = v9;
  BYTE1(v22) = v8;
  BYTE2(v22) = v7;
  *(&v22 + 3) = 0;
  BYTE7(v22) = 0;
  v14 = *(a3 + 344);
  *(a3 + 344) = v14 + 6;
LABEL_9:
  v15 = v21;
  v14[2] = v20;
  v14[3] = v15;
  v16 = v23;
  v14[4] = v22;
  v14[5] = v16;
  v17 = v19;
  *v14 = v18;
  v14[1] = v17;
}

uint64_t EncodeDYMTL4AccelerationStructureDescriptor(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = a2;
  v8 = a3;
  if (a3 > 7)
  {
    *a2 = 115;
    v3 = (a1 + 88);
    v4 = *(a1 + 88);
    if (a3 < 0x10)
    {
      goto LABEL_6;
    }

    a2[1] = v4;
  }

  else
  {
    v3 = (a1 + 88);
  }

  LODWORD(v4) = *v3;
LABEL_6:
  v7 = 16;
  switch(v4)
  {
    case 5:
      SaveDYMTL4PrimitiveAccelerationStructureDescriptor(&v6, a1);
      break;
    case 6:
      SaveDYMTL4InstanceAccelerationStructureDescriptor(&v6, a1);
      break;
    case 7:
      SaveDYMTL4IndirectInstanceAccelerationStructureDescriptor(&v6, a1);
      break;
  }

  return v7;
}

__n128 DecodeDYMTLAccelerationStructureDescriptor(__n128 *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v67 = 0;
  result.n128_u64[0] = 0;
  v66 = 0u;
  v64 = 0u;
  memset(v65, 0, sizeof(v65));
  v62 = 0u;
  v63 = 0u;
  v9 = a1->n128_u32[0];
  LOBYTE(v67) = a1->n128_u8[8];
  v10 = a1[1].n128_u64[0];
  v68[0] = &a1[1].n128_i64[1];
  v68[1] = a2;
  BYTE1(v67) = v10;
  if (v67 > 2u)
  {
    if (v67 == 3)
    {
      if (v9 < 0x4E)
      {
        v21 = 0;
        v23 = 0;
        v22 = 0;
        if (!a4)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v21 = a1[7].n128_u64[1];
        v22 = a1[8].n128_u8[0];
        v23 = a1[8].n128_u8[8];
        if (!a4)
        {
          goto LABEL_37;
        }
      }

      v25 = a1[1].n128_i64[1];
      v24 = a1[2].n128_u64[0];
      v26 = a1[2].n128_i64[1];
      v27 = a1[3].n128_u64[0];
      v29 = a1[3].n128_i64[1];
      v28 = a1[4].n128_u64[0];
      v31 = a1[4].n128_i64[1];
      v30 = a1[5].n128_u64[0];
      v32 = a1[5].n128_u32[2];
      v33 = a1[6].n128_u32[0];
      v34 = a1[6].n128_u32[2];
      v35 = a1[7].n128_u8[0];
      if (a5)
      {
        v51 = a1[6].n128_u32[0];
        v52 = a1[5].n128_u64[0];
        v53 = a1[7].n128_u8[0];
        v54 = a1[6].n128_u32[2];
        v56 = a1[4].n128_u64[0];
        v59 = a1[5].n128_u32[2];
        v61 = a1[2].n128_u64[0];
        Stream_19685 = GetStream_19685(a5, v25);
        if (Stream_19685)
        {
          v25 = *Stream_19685;
        }

        else
        {
          v25 = 0;
        }

        v46 = GetStream_19685(a5, v26);
        if (v46)
        {
          v26 = *v46;
        }

        else
        {
          v26 = 0;
        }

        v47 = GetStream_19685(a5, v29);
        if (v47)
        {
          v29 = *v47;
        }

        else
        {
          v29 = 0;
        }

        v48 = GetStream_19685(a5, v31);
        if (v48)
        {
          v31 = *v48;
        }

        else
        {
          v31 = 0;
        }

        v24 = v61;
        v32 = v59;
        v28 = v56;
        v35 = v53;
        v34 = v54;
        v30 = v52;
        v33 = v51;
      }

      *&v62 = v26;
      *(&v62 + 1) = v27;
      v63.n128_u64[0] = v25;
      v63.n128_u64[1] = v24;
      *&v64 = v29;
      *(&v64 + 1) = v28;
      *&v65[0] = v31;
      *(&v65[0] + 1) = v30;
      *&v65[1] = v21;
      *(&v65[1] + 1) = __PAIR64__(v32, v33);
      LODWORD(v66) = v34;
      BYTE4(v66) = v35;
      BYTE5(v66) = v23;
      BYTE6(v66) = v22;
      goto LABEL_57;
    }

    if (v67 == 4)
    {
      MakeDYMTL4AccelerationStructureDescriptor(v68, &v62, a3, a4, a4);
    }
  }

  else if (v67 == 1)
  {
    MakeDYMTLPrimitiveAccelerationStructureDescriptor(v68, &v62, a3, v9, a4, a5);
  }

  else if (v67 == 2)
  {
    v58 = a1[1].n128_i64[1];
    result = a1[2];
    v60 = result;
    v11 = &a1[4];
    v13 = a1[3].n128_u64[0];
    v12 = a1[3].n128_u64[1];
    if (v12)
    {
      v14 = *(a3 + 576);
      v15 = a1[3].n128_u64[1];
      v16 = v14;
      do
      {
        v18 = *v11;
        v11 += 2;
        v17 = v18;
        if (v6)
        {
          if (a5)
          {
            v19 = GetStream_19685(a5, v17);
            if (v19)
            {
              v17 = *v19;
            }

            else
            {
              v17 = 0;
            }
          }

          v16 = *(a3 + 576);
          *v16 = v17;
        }

        *(a3 + 576) = ++v16;
        --v15;
      }

      while (v15);
    }

    else
    {
      v14 = 0;
    }

    if (v9 <= 0x38)
    {
      v37 = 0;
      v38 = 0;
      v40 = 0;
      v42 = 0;
      v41 = 0;
      v39 = 0uLL;
      if (!v6)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v37 = *v11;
      v38 = *(v11 + 1);
      v39 = *(v11 + 1);
      if (v9 >= 0x4E)
      {
        v40 = *(v11 + 4);
        v41 = *(v11 + 40);
        v42 = *(v11 + 48);
        if (!v6)
        {
          goto LABEL_37;
        }

        goto LABEL_33;
      }

      v40 = 0;
      v42 = 0;
      v41 = 0;
      if (!v6)
      {
LABEL_37:
        *(a3 + 352) += 104;
        return result;
      }
    }

LABEL_33:
    if (a5)
    {
      v55 = v39;
      v57 = v37;
      v43 = GetStream_19685(a5, v58);
      if (v43)
      {
        v44 = *v43;
      }

      else
      {
        v44 = 0;
      }

      v45 = GetStream_19685(a5, v38);
      if (v45)
      {
        v38 = *v45;
      }

      else
      {
        v38 = 0;
      }

      v37 = v57;
      v39 = v55;
    }

    else
    {
      v44 = v58;
    }

    *&v62 = v13;
    *(&v62 + 1) = v44;
    v63 = v60;
    *&v64 = v14;
    *(&v64 + 1) = v12;
    *&v65[0] = v38;
    *(v65 + 8) = v39;
    *(&v65[1] + 1) = v40;
    LOBYTE(v66) = v37;
    BYTE1(v66) = v42;
    BYTE2(v66) = v41;
    *(&v66 + 3) = 0;
LABEL_57:
    BYTE7(v66) = 0;
    v20 = *(a3 + 352);
    *(a3 + 352) = v20 + 104;
    goto LABEL_58;
  }

  v20 = *(a3 + 352);
  *(a3 + 352) = v20 + 104;
  if (v6)
  {
LABEL_58:
    v49 = v66;
    *(v20 + 64) = v65[1];
    *(v20 + 80) = v49;
    *(v20 + 96) = v67;
    v50 = v63;
    *v20 = v62;
    *(v20 + 16) = v50;
    result = v65[0];
    *(v20 + 32) = v64;
    *(v20 + 48) = result;
  }

  return result;
}

uint64_t EncodeDYMTLAccelerationStructureDescriptor(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = a3;
  v67 = a2;
  v69 = a3;
  if (a3 > 7)
  {
    *a2 = 115;
    v8 = (a1 + 96);
    if (a3 >= 0x10)
    {
      a2[1] = *v8;
      if (a3 >= 0x18)
      {
        a2[2] = *(a1 + 97);
      }
    }
  }

  else
  {
    v8 = (a1 + 96);
  }

  result = 24;
  v68 = 24;
  v10 = *v8;
  if (v10 <= 2)
  {
    if (v10 == 1)
    {
      v29 = *(a1 + 8);
      if (a3 >= 0x20)
      {
        a2[3] = v29;
        v29 = *(a1 + 8);
      }

      v30 = 32;
      v68 = 32;
      if (v29)
      {
        v31 = 0;
        v32 = 0;
        do
        {
          SaveDYMTLAccelerationStructureGeometryDescriptor(&v67, *a1 + v31, a4);
          ++v32;
          v31 += 152;
        }

        while (*(a1 + 8) > v32);
        v30 = v68;
        v5 = v69;
      }

      v33 = v30 + 4;
      if (v30 + 4 <= v5)
      {
        *(v67 + v30) = *(a1 + 24);
        v5 = v69;
        v33 = v68 + 4;
      }

      if (v5 > v33)
      {
        if (v5 - v33 >= 4)
        {
          v34 = 4;
        }

        else
        {
          v34 = v5 - v33;
        }

        bzero(v67 + v33, v34);
      }

      v35 = v33 + 4;
      v68 = v33 + 4;
      v36 = v33 + 8;
      if (v36 <= v5)
      {
        *(v67 + v35) = *(a1 + 16);
        v5 = v69;
        v36 = v68 + 4;
      }

      if (v5 > v36)
      {
        if (v5 - v36 >= 4)
        {
          v37 = 4;
        }

        else
        {
          v37 = v5 - v36;
        }

        bzero(v67 + v36, v37);
      }

      v68 = v36 + 4;
      v38 = v36 + 12;
      if (v36 + 12 <= v5)
      {
        *(v67 + v36 + 4) = *(a1 + 29);
        v5 = v69;
        v38 = v68 + 8;
      }

      v68 = v38;
      v39 = v38 + 8;
      if (v38 + 8 <= v5)
      {
        *(v67 + v38) = *(a1 + 28);
        v5 = v69;
        v39 = v68 + 8;
      }

      v68 = v39;
      result = v39 + 8;
      if (v39 + 8 <= v5)
      {
        *(v67 + v39) = *(a1 + 20);
        return v68 + 8;
      }

      return result;
    }

    if (v10 != 2)
    {
      return result;
    }

    v11 = GTTraceStream_deviceObjectOrNULL(a4, *(a1 + 8));
    if (v5 >= 0x20 && (a2[3] = v11, v5 >= 0x28) && (a2[4] = *(a1 + 16), v5 >= 0x30) && (a2[5] = *(a1 + 24), v5 > 0x37))
    {
      a2[6] = *a1;
      v12 = (a1 + 40);
      v13 = *(a1 + 40);
      if (v5 < 0x40)
      {
LABEL_15:
        v14 = 64;
        v68 = 64;
        if (v13)
        {
          v15 = 0;
          do
          {
            v71 = *(*(a1 + 32) + 8 * v15);
            entry = find_entry(a4, &v71, 8uLL, 0);
            v17 = &dword_8;
            if (*entry)
            {
              v18 = *(*entry + 32);
              if (v18)
              {
                v19 = atomic_load((v18 + 56));
                v17 = (v18 + (~(v19 >> 2) & 8));
              }

              else
              {
                v17 = &dword_8;
              }
            }

            v14 = v68 + 8;
            if (v68 + 8 <= v69)
            {
              *(v67 + v68) = *v17;
              v14 = v68 + 8;
            }

            v68 = v14;
            ++v15;
          }

          while (*v12 > v15);
          v5 = v69;
        }

        v20 = v14 + 8;
        if (v14 + 8 <= v5)
        {
          *(v67 + v14) = *(a1 + 80);
          v20 = v68 + 8;
        }

        v68 = v20;
        v21 = GTTraceStream_deviceObjectOrNULL(a4, *(a1 + 48));
        v22 = v69;
        v23 = v68 + 8;
        if (v68 + 8 <= v69)
        {
          *(v67 + v68) = v21;
          v22 = v69;
          v23 = v68 + 8;
        }

        v68 = v23;
        v24 = v23 + 8;
        if (v23 + 8 <= v22)
        {
          *(v67 + v23) = *(a1 + 56);
          v22 = v69;
          v24 = v68 + 8;
        }

        v68 = v24;
        v25 = v24 + 8;
        if (v24 + 8 <= v22)
        {
          *(v67 + v24) = *(a1 + 64);
          v22 = v69;
          v25 = v68 + 8;
        }

        v68 = v25;
        v26 = v25 + 8;
        if (v25 + 8 <= v22)
        {
          *(v67 + v25) = *(a1 + 72);
          v22 = v69;
          v26 = v68 + 8;
        }

        v68 = v26;
        v27 = v26 + 8;
        if (v26 + 8 <= v22)
        {
          *(v67 + v26) = *(a1 + 82);
          v22 = v69;
          v27 = v68 + 8;
        }

        v68 = v27;
        result = v27 + 8;
        if (v27 + 8 <= v22)
        {
          v28 = *(a1 + 81);
LABEL_106:
          *(v67 + v27) = v28;
          return v68 + 8;
        }

        return result;
      }

      a2[7] = v13;
    }

    else
    {
      v12 = (a1 + 40);
    }

    v13 = *v12;
    goto LABEL_15;
  }

  if (v10 == 3)
  {
    v71 = *(a1 + 16);
    v40 = &dword_8;
    v41 = find_entry(a4, &v71, 8uLL, 0);
    if (*v41)
    {
      v42 = *(*v41 + 32);
      if (v42)
      {
        v43 = atomic_load((v42 + 56));
        v40 = (v42 + (~(v43 >> 2) & 8));
      }

      else
      {
        v40 = &dword_8;
      }
    }

    v44 = v69;
    v45 = v68 + 8;
    if (v68 + 8 <= v69)
    {
      *(v67 + v68) = *v40;
      v44 = v69;
      v45 = v68 + 8;
    }

    v68 = v45;
    v46 = v45 + 8;
    if (v45 + 8 <= v44)
    {
      *(v67 + v45) = *(a1 + 24);
      v46 = v68 + 8;
    }

    v68 = v46;
    v70 = *a1;
    v47 = &dword_8;
    v48 = find_entry(a4, &v70, 8uLL, 0);
    if (*v48)
    {
      v49 = *(*v48 + 32);
      if (v49)
      {
        v50 = atomic_load((v49 + 56));
        v47 = (v49 + (~(v50 >> 2) & 8));
      }

      else
      {
        v47 = &dword_8;
      }
    }

    v51 = v69;
    v52 = v68 + 8;
    if (v68 + 8 <= v69)
    {
      *(v67 + v68) = *v47;
      v51 = v69;
      v52 = v68 + 8;
    }

    v68 = v52;
    v53 = v52 + 8;
    if (v52 + 8 <= v51)
    {
      *(v67 + v52) = *(a1 + 8);
      v53 = v68 + 8;
    }

    v68 = v53;
    v54 = GTTraceStream_deviceObjectOrNULL(a4, *(a1 + 32));
    v55 = v69;
    v56 = v68 + 8;
    if (v68 + 8 <= v69)
    {
      *(v67 + v68) = v54;
      v55 = v69;
      v56 = v68 + 8;
    }

    v68 = v56;
    v57 = v56 + 8;
    if (v56 + 8 <= v55)
    {
      *(v67 + v56) = *(a1 + 40);
      v57 = v68 + 8;
    }

    v68 = v57;
    v58 = GTTraceStream_deviceObjectOrNULL(a4, *(a1 + 48));
    v59 = v69;
    v60 = v68 + 8;
    if (v68 + 8 <= v69)
    {
      *(v67 + v68) = v58;
      v59 = v69;
      v60 = v68 + 8;
    }

    v68 = v60;
    v61 = v60 + 8;
    if (v60 + 8 <= v59)
    {
      *(v67 + v60) = *(a1 + 56);
      v59 = v69;
      v61 = v68 + 8;
    }

    v68 = v61;
    v62 = v61 + 8;
    if (v61 + 8 <= v59)
    {
      *(v67 + v61) = *(a1 + 76);
      v59 = v69;
      v62 = v68 + 8;
    }

    v68 = v62;
    v63 = v62 + 8;
    if (v62 + 8 <= v59)
    {
      *(v67 + v62) = *(a1 + 72);
      v59 = v69;
      v63 = v68 + 8;
    }

    v68 = v63;
    v64 = v63 + 8;
    if (v63 + 8 <= v59)
    {
      *(v67 + v63) = *(a1 + 80);
      v59 = v69;
      v64 = v68 + 8;
    }

    v68 = v64;
    v65 = v64 + 8;
    if (v64 + 8 <= v59)
    {
      *(v67 + v64) = *(a1 + 84);
      v59 = v69;
      v65 = v68 + 8;
    }

    v68 = v65;
    v66 = v65 + 8;
    if (v65 + 8 <= v59)
    {
      *(v67 + v65) = *(a1 + 64);
      v59 = v69;
      v66 = v68 + 8;
    }

    v68 = v66;
    v27 = v66 + 8;
    if (v66 + 8 <= v59)
    {
      *(v67 + v66) = *(a1 + 86);
      v59 = v69;
      v27 = v68 + 8;
    }

    v68 = v27;
    result = v27 + 8;
    if (v27 + 8 <= v59)
    {
      v28 = *(a1 + 85);
      goto LABEL_106;
    }
  }

  else if (v10 == 4)
  {
    SaveDYMTL4AccelerationStructureDescriptor(&v67, a1);
    return v68;
  }

  return result;
}

double DecodeDYIOSurface(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = 0.0;
  v32 = 0u;
  v33 = 0u;
  v34 = 0;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = *a1;
  v27 = *(a1 + 8);
  v8 = *(a1 + 32);
  WORD6(v32) = *(a1 + 24);
  HIWORD(v32) = v8;
  v9 = *(a1 + 48);
  LOWORD(v33) = *(a1 + 40);
  v10 = *(a1 + 64);
  WORD1(v33) = *(a1 + 56);
  WORD2(v33) = v10;
  v11 = *(a1 + 80);
  *&v32 = __PAIR64__(*(a1 + 72), v9);
  v12 = (a1 + 88);
  BYTE6(v33) = v11;
  v13 = v11;
  if (v11)
  {
    v14 = &v28 + 6;
    do
    {
      v15 = v12[1];
      *(v14 - 4) = *v12;
      *(v14 - 3) = v15;
      v16 = v12[3];
      *(v14 - 2) = v12[2];
      *(v14 - 3) = v16;
      v17 = v12[5];
      *(v14 - 1) = v12[4];
      v12 += 6;
      *v14 = v17;
      v14 += 8;
      --v13;
    }

    while (v13);
  }

  DWORD2(v32) = *v12;
  if (v7 <= 0x29)
  {
    v20 = *(&v33 + 1);
    v18 = v34;
LABEL_15:
    v21 = GTMTLDescriptorAllocator_copyPropertyList(a3, v20, v18, a4);
    v18 = v22;
    goto LABEL_16;
  }

  v18 = v12[1];
  v19 = v12 + 2;
  if (v18)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v7 < 0x2E)
  {
    goto LABEL_15;
  }

  if (v18)
  {
    v21 = *(a3 + 592);
  }

  else
  {
    v21 = 0;
  }

  *(a3 + 592) += v18;
  if (a4)
  {
    memcpy(v21, v20, v18);
  }

LABEL_16:
  *(&v33 + 1) = v21;
  v34 = v18;
  v23 = *(a3 + 552);
  *(a3 + 552) = v23 + 120;
  if (a4)
  {
    v24 = v32;
    *(v23 + 64) = v31;
    *(v23 + 80) = v24;
    *(v23 + 96) = v33;
    *(v23 + 112) = v34;
    v25 = v28;
    *v23 = v27;
    *(v23 + 16) = v25;
    result = *&v29;
    v26 = v30;
    *(v23 + 32) = v29;
    *(v23 + 48) = v26;
  }

  return result;
}

uint64_t EncodeDYIOSurface(uint64_t a1, void *a2, unint64_t a3)
{
  v12 = a2;
  v13 = 0;
  v14 = a3;
  if (a3 < 8 || (*a2 = 115, a3 < 0x10) || (a2[1] = *a1, a3 < 0x18) || (a2[2] = *(a1 + 8), a3 < 0x20) || (a2[3] = *(a1 + 92), a3 <= 0x27))
  {
    v13 = 40;
LABEL_7:
    v3 = (a1 + 102);
LABEL_8:
    LODWORD(v4) = *v3;
    goto LABEL_9;
  }

  a2[4] = *(a1 + 94);
  v13 = 40;
  if (a3 < 0x30)
  {
    goto LABEL_7;
  }

  a2[5] = *(a1 + 96);
  if (a3 < 0x38)
  {
    goto LABEL_7;
  }

  a2[6] = *(a1 + 80);
  if (a3 < 0x40)
  {
    goto LABEL_7;
  }

  a2[7] = *(a1 + 98);
  if (a3 < 0x48)
  {
    goto LABEL_7;
  }

  a2[8] = *(a1 + 100);
  if (a3 <= 0x4F)
  {
    goto LABEL_7;
  }

  a2[9] = *(a1 + 84);
  v3 = (a1 + 102);
  v4 = *(a1 + 102);
  if (a3 >= 0x58)
  {
    a2[10] = v4;
    goto LABEL_8;
  }

LABEL_9:
  v5 = 88;
  v13 = 88;
  if (v4)
  {
    v6 = 0;
    v5 = v13;
    v7 = v14;
    v8 = (a1 + 28);
    v9 = 88;
    do
    {
      v10 = v9 + 8;
      if (v9 + 8 <= a3)
      {
        *(a2 + v9) = *(v8 - 4);
        v10 = v5 + 8;
        a3 = v7;
      }

      if (v10 + 8 <= a3)
      {
        *(a2 + v10) = *(v8 - 3);
        a3 = v7;
      }

      if (v10 + 16 <= a3)
      {
        *(a2 + v10 + 8) = *(v8 - 2);
        a3 = v7;
      }

      if (v10 + 24 <= a3)
      {
        *(a2 + v10 + 16) = *(v8 - 3);
        a3 = v7;
      }

      if (v10 + 32 <= a3)
      {
        *(a2 + v10 + 24) = *(v8 - 1);
        a3 = v7;
      }

      v5 = v10 + 40;
      if (v10 + 40 <= a3)
      {
        *(a2 + v10 + 32) = *v8;
      }

      ++v6;
      v8 += 8;
      v9 = v10 + 40;
    }

    while (v6 < *v3);
    v13 = v10 + 40;
  }

  if (v5 + 8 <= a3)
  {
    *(a2 + v5) = *(a1 + 88);
  }

  v13 = v5 + 8;
  WriteGTData(&v12, *(a1 + 104), *(a1 + 112));
  return v13;
}

double DecodeDYMTLCaptureDescriptorInternal(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v33 = *(a1 + 48);
  v34 = *(a1 + 40);
  v13 = (a1 + 64);
  v32 = *(a1 + 56);
  v14 = a1 + 64 + (strlen((a1 + 64)) & 0xFFFFFFFFFFFFFFF8);
  if (!*(a1 + 64))
  {
    v13 = 0;
  }

  v30 = *(v14 + 8);
  v15 = *(v14 + 16) != 0;
  v31 = *(v14 + 40);
  v16 = *(v14 + 24);
  v29 = v16;
  if (*(a1 + 64))
  {
    v17 = strlen(v13);
    v18 = (a3 + 592);
    v19 = *(a3 + 592);
    v20 = v17 + 1;
    if (v17 != -1)
    {
      v21 = *(a3 + 592);
      goto LABEL_8;
    }
  }

  else
  {
    v18 = (a3 + 592);
    v19 = *(a3 + 592);
  }

  v20 = 0;
  v21 = 0;
LABEL_8:
  *v18 = v19 + v20;
  if (a4)
  {
    memcpy(v21, v13, v20);
    v22 = *(a3 + 448);
    *(a3 + 448) = v22 + 88;
    if (a5)
    {
      Stream_19685 = GetStream_19685(a5, v9);
      if (Stream_19685)
      {
        v9 = *Stream_19685;
      }

      else
      {
        v9 = 0;
      }

      v24 = GetStream_19685(a5, v10);
      if (v24)
      {
        v10 = *v24;
      }

      else
      {
        v10 = 0;
      }

      v25 = GetStream_19685(a5, v11);
      if (v25)
      {
        v11 = *v25;
      }

      else
      {
        v11 = 0;
      }

      v26 = GetStream_19685(a5, v12);
      if (v26)
      {
        v12 = *v26;
      }

      else
      {
        v12 = 0;
      }
    }

    *v22 = v9;
    *(v22 + 8) = v10;
    *(v22 + 16) = v11;
    *(v22 + 24) = v12;
    *(v22 + 32) = v34;
    *(v22 + 40) = v33;
    *(v22 + 48) = v32;
    *(v22 + 56) = v21;
    *(v22 + 64) = 0;
    *(v22 + 72) = v30;
    *(v22 + 73) = v15;
    *(v22 + 74) = 0;
    v27 = vand_s8(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v29), vceqzq_s64(v31)))), 0x1000100010001);
    *v16.i8 = vuzp1_s8(v27, v27);
    *(v22 + 75) = v16.i32[0];
    *(v22 + 79) = 0;
    *(v22 + 87) = 0;
  }

  else
  {
    *(a3 + 448) += 88;
  }

  return *v16.i64;
}

uint64_t EncodeDYMTLCaptureDescriptorInternal(uint64_t *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = a3;
  v35 = a2;
  v37 = a3;
  if (a3 >= 8)
  {
    *a2 = 115;
  }

  v7 = &dword_8;
  v36 = 8;
  v34 = *a1;
  entry = find_entry(a4, &v34, 8uLL, 0);
  if (*entry)
  {
    v9 = *(*entry + 32);
    if (v9)
    {
      v10 = atomic_load((v9 + 56));
      v7 = (v9 + (~(v10 >> 2) & 8));
      v11 = v36;
      v5 = v37;
    }

    else
    {
      v11 = 8;
      v7 = &dword_8;
    }
  }

  else
  {
    v11 = 8;
  }

  v12 = v11 + 8;
  if (v11 + 8 <= v5)
  {
    *(v35 + v11) = *v7;
  }

  v36 = v11 + 8;
  v33 = a1[1];
  v13 = &dword_8;
  v14 = find_entry(a4, &v33, 8uLL, 0);
  if (*v14)
  {
    v15 = *(*v14 + 32);
    if (v15)
    {
      v16 = atomic_load((v15 + 56));
      v13 = (v15 + (~(v16 >> 2) & 8));
      v12 = v36;
      v5 = v37;
    }

    else
    {
      v13 = &dword_8;
    }
  }

  v17 = v12 + 8;
  if (v12 + 8 <= v5)
  {
    *(v35 + v12) = *v13;
  }

  v36 = v12 + 8;
  v32 = a1[2];
  v18 = &dword_8;
  v19 = find_entry(a4, &v32, 8uLL, 0);
  if (*v19)
  {
    v20 = *(*v19 + 32);
    if (v20)
    {
      v21 = atomic_load((v20 + 56));
      v18 = (v20 + (~(v21 >> 2) & 8));
      v17 = v36;
      v5 = v37;
    }

    else
    {
      v18 = &dword_8;
    }
  }

  v22 = v17 + 8;
  if (v17 + 8 <= v5)
  {
    *(v35 + v17) = *v18;
  }

  v36 = v17 + 8;
  v31 = a1[3];
  v23 = &dword_8;
  v24 = find_entry(a4, &v31, 8uLL, 0);
  if (*v24)
  {
    v25 = *(*v24 + 32);
    if (v25)
    {
      v26 = atomic_load((v25 + 56));
      v23 = (v25 + (~(v26 >> 2) & 8));
      v22 = v36;
      v5 = v37;
    }

    else
    {
      v23 = &dword_8;
    }
  }

  if (v22 + 8 <= v5)
  {
    *(v35 + v22) = *v23;
  }

  if (v22 + 16 <= v5)
  {
    *(v35 + v22 + 8) = a1[4];
  }

  if (v22 + 24 <= v5)
  {
    *(v35 + v22 + 16) = a1[5];
  }

  if (v22 + 32 <= v5)
  {
    *(v35 + v22 + 24) = a1[6];
  }

  v36 = v22 + 32;
  WriteDynamicBufferString(&v35, a1[7]);
  v27 = v36;
  v28 = v37;
  v29 = v36 + 8;
  if (v36 + 8 <= v37)
  {
    *(v35 + v36) = *(a1 + 72);
  }

  if (v27 + 16 <= v28)
  {
    *(v35 + v29) = *(a1 + 73);
  }

  if (v27 + 24 <= v28)
  {
    *(v35 + v27 + 16) = *(a1 + 75);
  }

  if (v27 + 32 <= v28)
  {
    *(v35 + v27 + 24) = *(a1 + 76);
  }

  if (v27 + 40 <= v28)
  {
    *(v35 + v27 + 32) = *(a1 + 77);
  }

  result = v27 + 48;
  if (v27 + 48 <= v28)
  {
    *(v35 + v27 + 40) = *(a1 + 78);
  }

  return result;
}

size_t DecodeDYMTLDeviceDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = (a1 + 16);
  result = strlen((a1 + 16));
  v12 = &v9[result & 0xFFFFFFFFFFFFFFF8];
  v13 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v14 = v9;
  }

  else
  {
    v14 = 0;
  }

  v56 = *(v12 + 8);
  v57 = *(v12 + 4);
  v55 = *(v12 + 12);
  v15 = v12 + 40;
  v58 = v12[32];
  if (v8 == 1)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v54 = 0;
  }

  else
  {
    v19 = &v15[strlen(v15) & 0xFFFFFFFFFFFFFFF8];
    v20 = a4;
    if (*v15)
    {
      v21 = v15;
    }

    else
    {
      v21 = 0;
    }

    v22 = v14;
    v23 = v8;
    v24 = v7;
    v7 = &v19[(strlen(v19 + 8) & 0xFFFFFFFFFFFFFFF8) + 8];
    v25 = (v7 + 8);
    if (v19[8])
    {
      v17 = v19 + 8;
    }

    else
    {
      v17 = 0;
    }

    result = strlen((v7 + 8));
    v13 = *(a1 + 16);
    v26 = &v25[result & 0xFFFFFFFFFFFFFFF8];
    v27 = *(v7 + 8);
    LOBYTE(v7) = v24;
    LOBYTE(v8) = v23;
    v14 = v22;
    v16 = v21;
    a4 = v20;
    if (v27)
    {
      v18 = v25;
    }

    else
    {
      v18 = 0;
    }

    v15 = v26 + 24;
    LOBYTE(v54) = v26[16];
    BYTE4(v54) = v26[8];
  }

  if (v7 < 0xCu)
  {
    v47 = 0;
    v50 = 0;
    v53 = 0;
    v51 = 0;
    v48 = 0;
    v29 = 0;
    v52 = 0u;
    v49 = 0u;
    v59 = 0u;
    if (v13)
    {
      goto LABEL_34;
    }

    goto LABEL_39;
  }

  v52 = *v15;
  if (v7 < 0xFu)
  {
    v47 = 0;
    v50 = 0;
    v53 = 0;
    goto LABEL_25;
  }

  v53 = v15[16];
  if (v7 < 0x19u)
  {
    v47 = 0;
    v50 = 0;
LABEL_25:
    v51 = 0;
    v48 = 0;
    v29 = 0;
    v59 = 0u;
    v49 = 0u;
    if (v13)
    {
      goto LABEL_34;
    }

    goto LABEL_39;
  }

  v59 = 0u;
  if (*(v15 + 3) == -1)
  {
    v51 = 0;
    v28 = (v15 + 32);
    v49 = 0uLL;
  }

  else
  {
    v11.i64[0] = *(v15 + 3);
    v49 = vuzp1q_s16(vuzp1q_s32(vzip1q_s64(v11, *(v15 + 2)), vextq_s8(*(v15 + 2), *(v15 + 3), 8uLL)), vuzp1q_s32(vzip1q_s64(vdupq_laneq_s64(*(v15 + 3), 1), *(v15 + 4)), *(v15 + 72)));
    WORD2(v51) = *(v15 + 44);
    v28 = (v15 + 104);
    LOWORD(v51) = *(v15 + 48);
  }

  if (v7 < 0x1Cu)
  {
    v47 = 0;
    v50 = 0;
    goto LABEL_32;
  }

  v50 = *v28;
  if (v7 == 28)
  {
    v47 = 0;
LABEL_32:
    v48 = 0;
    goto LABEL_33;
  }

  v48 = v28[8];
  if (v7 < 0x2Cu)
  {
    v47 = 0;
LABEL_33:
    v29 = 0;
    if (v13)
    {
      goto LABEL_34;
    }

LABEL_39:
    v30 = (a3 + 592);
    v31 = *(a3 + 592);
    goto LABEL_40;
  }

  v47 = *(v28 + 2);
  if (v7 < 0x35u)
  {
    goto LABEL_33;
  }

  v59 = *(v28 + 24);
  v29 = v28[40];
  if (!v13)
  {
    goto LABEL_39;
  }

LABEL_34:
  result = strlen(v14);
  v30 = (a3 + 592);
  v31 = *(a3 + 592);
  v32 = result + 1;
  if (result != -1)
  {
    v33 = *(a3 + 592);
    goto LABEL_41;
  }

LABEL_40:
  v32 = 0;
  v33 = 0;
LABEL_41:
  *v30 = v31 + v32;
  if (a4)
  {
    result = memcpy(v33, v14, v32);
  }

  if (v16)
  {
    result = strlen(v16);
    v34 = (a3 + 592);
    v35 = *(a3 + 592);
    v36 = result + 1;
    if (result != -1)
    {
      v37 = *(a3 + 592);
      goto LABEL_48;
    }
  }

  else
  {
    v34 = (a3 + 592);
    v35 = *(a3 + 592);
  }

  v36 = 0;
  v37 = 0;
LABEL_48:
  *v34 = v35 + v36;
  if (a4)
  {
    result = memcpy(v37, v16, v36);
  }

  if (v17)
  {
    result = strlen(v17);
    v38 = (a3 + 592);
    v39 = *(a3 + 592);
    v40 = result + 1;
    if (result != -1)
    {
      v41 = *(a3 + 592);
      goto LABEL_55;
    }
  }

  else
  {
    v38 = (a3 + 592);
    v39 = *(a3 + 592);
  }

  v40 = 0;
  v41 = 0;
LABEL_55:
  *v38 = v39 + v40;
  if (a4)
  {
    result = memcpy(v41, v17, v40);
  }

  if (v18)
  {
    result = strlen(v18);
    v42 = (a3 + 592);
    v43 = *(a3 + 592);
    v44 = result + 1;
    if (result != -1)
    {
      v45 = *(a3 + 592);
      goto LABEL_62;
    }
  }

  else
  {
    v42 = (a3 + 592);
    v43 = *(a3 + 592);
  }

  v44 = 0;
  v45 = 0;
LABEL_62:
  *v42 = v43 + v44;
  if (a4)
  {
    result = memcpy(v45, v18, v44);
    v46 = *(a3 + 480);
    *(a3 + 480) = v46 + 112;
    *v46 = v52;
    *(v46 + 16) = v47;
    *(v46 + 24) = v59;
    *(v46 + 40) = v49;
    *(v46 + 56) = WORD2(v51);
    *(v46 + 58) = v51;
    *(v46 + 60) = 0;
    *(v46 + 64) = v33;
    *(v46 + 72) = v37;
    *(v46 + 80) = v41;
    *(v46 + 88) = v45;
    *(v46 + 96) = v57;
    *(v46 + 98) = v56;
    *(v46 + 100) = v55;
    *(v46 + 102) = v8;
    *(v46 + 103) = v50;
    *(v46 + 104) = v7;
    *(v46 + 105) = v58;
    *(v46 + 106) = BYTE4(v54);
    *(v46 + 107) = v54;
    *(v46 + 108) = v53;
    *(v46 + 109) = v48;
    *(v46 + 110) = v29;
    *(v46 + 111) = 0;
  }

  else
  {
    *(a3 + 480) += 112;
  }

  return result;
}

uint64_t EncodeDYMTLDeviceDescriptor(uint64_t a1, void *a2, unint64_t a3)
{
  v33 = a2;
  v35 = a3;
  if (a3 > 7)
  {
    *a2 = 115;
    v4 = (a1 + 102);
    if (a3 >= 0x10)
    {
      a2[1] = *v4;
    }
  }

  else
  {
    v4 = (a1 + 102);
  }

  v34 = 16;
  WriteDynamicBufferString(&v33, *(a1 + 64));
  v5 = v35;
  v6 = v34 + 8;
  if (v34 + 8 <= v35)
  {
    *(v33 + v34) = *(a1 + 96);
    v5 = v35;
    v6 = v34 + 8;
  }

  v34 = v6;
  v7 = v6 + 8;
  if (v6 + 8 <= v5)
  {
    *(v33 + v6) = *(a1 + 98);
    v5 = v35;
    v7 = v34 + 8;
  }

  v34 = v7;
  v8 = v7 + 8;
  if (v7 + 8 <= v5)
  {
    *(v33 + v7) = *(a1 + 100);
    v5 = v35;
    v8 = v34 + 8;
  }

  v34 = v8;
  v9 = v8 + 8;
  if (v8 + 8 <= v5)
  {
    *(v33 + v8) = *(a1 + 105);
    v9 = v34 + 8;
  }

  v34 = v9;
  if (*v4 != 1)
  {
    WriteDynamicBufferString(&v33, *(a1 + 72));
    WriteDynamicBufferString(&v33, *(a1 + 80));
    WriteDynamicBufferString(&v33, *(a1 + 88));
    v10 = v35;
    v11 = v34 + 8;
    if (v34 + 8 <= v35)
    {
      *(v33 + v34) = *(a1 + 106);
      v10 = v35;
      v11 = v34 + 8;
    }

    v34 = v11;
    v9 = v11 + 8;
    if (v11 + 8 <= v10)
    {
      *(v33 + v11) = *(a1 + 107);
      v9 = v34 + 8;
    }

    v34 = v9;
  }

  v12 = v9 + 8;
  v13 = v35;
  if (v9 + 8 <= v35)
  {
    *(v33 + v9) = *a1;
    v13 = v35;
    v12 = v34 + 8;
  }

  v34 = v12;
  v14 = v12 + 8;
  if (v12 + 8 <= v13)
  {
    *(v33 + v12) = *(a1 + 8);
    v13 = v35;
    v14 = v34 + 8;
  }

  v34 = v14;
  v15 = v14 + 8;
  if (v14 + 8 <= v13)
  {
    *(v33 + v14) = *(a1 + 108);
    v13 = v35;
    v15 = v34 + 8;
  }

  v34 = v15;
  v16 = *(a1 + 40);
  v17 = v15 + 8;
  if (v15 + 8 <= v13)
  {
    if (*(a1 + 40))
    {
      v18 = *(a1 + 40);
    }

    else
    {
      v18 = -1;
    }

    *(v33 + v15) = v18;
    v13 = v35;
    v17 = v34 + 8;
  }

  v34 = v17;
  if (v16)
  {
    v19 = v17 + 8;
    if (v17 + 8 <= v13)
    {
      *(v33 + v17) = *(a1 + 42);
      v13 = v35;
      v19 = v34 + 8;
    }

    v34 = v19;
    v20 = v19 + 8;
    if (v19 + 8 <= v13)
    {
      *(v33 + v19) = *(a1 + 44);
      v13 = v35;
      v20 = v34 + 8;
    }

    v34 = v20;
    v21 = v20 + 8;
    if (v20 + 8 <= v13)
    {
      *(v33 + v20) = *(a1 + 46);
      v13 = v35;
      v21 = v34 + 8;
    }

    v34 = v21;
    v22 = v21 + 8;
    if (v21 + 8 <= v13)
    {
      *(v33 + v21) = *(a1 + 48);
      v13 = v35;
      v22 = v34 + 8;
    }

    v34 = v22;
    v23 = v22 + 8;
    if (v22 + 8 <= v13)
    {
      *(v33 + v22) = *(a1 + 50);
      v13 = v35;
      v23 = v34 + 8;
    }

    v34 = v23;
    v24 = v23 + 8;
    if (v23 + 8 <= v13)
    {
      *(v33 + v23) = *(a1 + 52);
      v13 = v35;
      v24 = v34 + 8;
    }

    v34 = v24;
    v25 = v24 + 8;
    if (v24 + 8 <= v13)
    {
      *(v33 + v24) = *(a1 + 54);
      v13 = v35;
      v25 = v34 + 8;
    }

    v34 = v25;
    v26 = v25 + 8;
    if (v25 + 8 <= v13)
    {
      *(v33 + v25) = *(a1 + 56);
      v13 = v35;
      v26 = v34 + 8;
    }

    v34 = v26;
    v17 = v26 + 8;
    if (v26 + 8 <= v13)
    {
      *(v33 + v26) = *(a1 + 58);
      v13 = v35;
      v17 = v34 + 8;
    }

    v34 = v17;
  }

  v27 = v17 + 8;
  if (v17 + 8 <= v13)
  {
    *(v33 + v17) = *(a1 + 103);
    v13 = v35;
    v27 = v34 + 8;
  }

  v34 = v27;
  v28 = v27 + 8;
  if (v27 + 8 <= v13)
  {
    *(v33 + v27) = *(a1 + 109);
    v13 = v35;
    v28 = v34 + 8;
  }

  v34 = v28;
  v29 = v28 + 8;
  if (v28 + 8 <= v13)
  {
    *(v33 + v28) = *(a1 + 16);
    v13 = v35;
    v29 = v34 + 8;
  }

  v34 = v29;
  v30 = v29 + 8;
  if (v29 + 8 <= v13)
  {
    *(v33 + v29) = *(a1 + 24);
    v13 = v35;
    v30 = v34 + 8;
  }

  v34 = v30;
  v31 = v30 + 8;
  if (v30 + 8 <= v13)
  {
    *(v33 + v30) = *(a1 + 32);
    v13 = v35;
    v31 = v34 + 8;
  }

  v34 = v31;
  result = v31 + 8;
  if (v31 + 8 <= v13)
  {
    *(v33 + v31) = *(a1 + 110);
    return v34 + 8;
  }

  return result;
}

size_t DecodeDYMTLCounterSampleBufferDescriptor(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v7 = (a1 + 8);
  v8 = a1 + 8 + (strlen((a1 + 8)) & 0xFFFFFFFFFFFFFFF8);
  v9 = *(a1 + 8);
  if (*(a1 + 8))
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  __s = v10;
  v11 = v8 + 8 + (strlen((v8 + 8)) & 0xFFFFFFFFFFFFFFF8);
  v53 = *(v8 + 8);
  if (*(v8 + 8))
  {
    v12 = (v8 + 8);
  }

  else
  {
    v12 = 0;
  }

  v55 = v12;
  v13 = *(v11 + 16);
  v14 = (v11 + 24);
  v52 = v13;
  if (v13)
  {
    v51 = a3[70];
    while (1)
    {
      v15 = &v14[strlen(v14) & 0xFFFFFFFFFFFFFFF8];
      v16 = v15 + 8;
      v17 = *v14;
      if (*v14)
      {
        v18 = v14;
      }

      else
      {
        v18 = 0;
      }

      v19 = strlen(v15 + 8);
      v20 = *(v15 + 8);
      if (v20)
      {
        v21 = v16;
      }

      else
      {
        v21 = 0;
      }

      if (v17)
      {
        v22 = strlen(v18);
        v23 = a3[74];
        v24 = v22 + 1;
        if (v22 != -1)
        {
          v25 = a3[74];
          goto LABEL_20;
        }
      }

      else
      {
        v23 = a3[74];
      }

      v24 = 0;
      v25 = 0;
LABEL_20:
      a3[74] = v23 + v24;
      if (a4)
      {
        memcpy(v25, v18, v24);
      }

      if (!v20)
      {
        v27 = a3[74];
LABEL_26:
        v28 = 0;
        v29 = 0;
        goto LABEL_27;
      }

      v26 = strlen(v21);
      v27 = a3[74];
      v28 = v26 + 1;
      if (v26 == -1)
      {
        goto LABEL_26;
      }

      v29 = a3[74];
LABEL_27:
      a3[74] = v27 + v28;
      if (a4)
      {
        memcpy(v29, v21, v28);
        v30 = a3[70];
        a3[70] = v30 + 2;
        *v30 = v25;
        v30[1] = v29;
      }

      else
      {
        a3[70] += 16;
      }

      v14 = &v16[(v19 & 0xFFFFFFFFFFFFFFF8) + 8];
      if (!--v13)
      {
        goto LABEL_33;
      }
    }
  }

  v51 = 0;
LABEL_33:
  result = strlen(v14);
  v32 = &v14[result & 0xFFFFFFFFFFFFFFF8];
  v33 = *v14;
  if (*v14)
  {
    v34 = v14;
  }

  else
  {
    v34 = 0;
  }

  v35 = *(v32 + 1);
  v36 = *(v32 + 2);
  if (v9)
  {
    result = strlen(__s);
    v37 = a3 + 74;
    v38 = a3[74];
    v39 = result + 1;
    if (result != -1)
    {
      v40 = a3[74];
      v41 = v55;
      goto LABEL_41;
    }
  }

  else
  {
    v37 = a3 + 74;
    v38 = a3[74];
  }

  v41 = v55;
  v39 = 0;
  v40 = 0;
LABEL_41:
  *v37 = v38 + v39;
  if (a4)
  {
    result = memcpy(v40, __s, v39);
  }

  if (v53)
  {
    result = strlen(v41);
    v42 = a3 + 74;
    v43 = a3[74];
    v44 = result + 1;
    if (result != -1)
    {
      v45 = a3[74];
      goto LABEL_48;
    }
  }

  else
  {
    v42 = a3 + 74;
    v43 = a3[74];
  }

  v44 = 0;
  v45 = 0;
LABEL_48:
  *v42 = v43 + v44;
  if (a4)
  {
    result = memcpy(v45, v41, v44);
  }

  if (v33)
  {
    result = strlen(v34);
    v46 = a3 + 74;
    v47 = a3[74];
    v48 = result + 1;
    if (result != -1)
    {
      v49 = a3[74];
      goto LABEL_55;
    }
  }

  else
  {
    v46 = a3 + 74;
    v47 = a3[74];
  }

  v48 = 0;
  v49 = 0;
LABEL_55:
  *v46 = v47 + v48;
  if (a4)
  {
    result = memcpy(v49, v34, v48);
    v50 = a3[55];
    a3[55] = v50 + 48;
    *v50 = v49;
    *(v50 + 8) = v40;
    *(v50 + 16) = v45;
    *(v50 + 24) = v51;
    *(v50 + 32) = v52;
    *(v50 + 40) = v36;
    *(v50 + 44) = v35;
    *(v50 + 45) = 0;
    *(v50 + 47) = 0;
  }

  else
  {
    a3[55] += 48;
  }

  return result;
}

uint64_t EncodeDYMTLCounterSampleBufferDescriptor(uint64_t a1, void *a2, unint64_t a3)
{
  v15 = a2;
  v17 = a3;
  if (a3 >= 8)
  {
    *a2 = 115;
  }

  v16 = 8;
  WriteDynamicBufferString(&v15, *(a1 + 8));
  WriteDynamicBufferString(&v15, *(a1 + 16));
  v4 = v16;
  v5 = v17;
  v6 = v16 + 8;
  if (v16 + 8 <= v17)
  {
    v7 = GTMTLCounterSet_structType(*(a1 + 8));
    *(v15 + v4) = v7;
  }

  v8 = *(a1 + 32);
  if (v4 + 16 <= v5)
  {
    *(v15 + v6) = v8;
    LODWORD(v8) = *(a1 + 32);
  }

  v16 = v4 + 16;
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      WriteDynamicBufferString(&v15, *(*(a1 + 24) + v9));
      WriteDynamicBufferString(&v15, *(*(a1 + 24) + v9 + 8));
      ++v10;
      v9 += 16;
    }

    while (v10 < *(a1 + 32));
  }

  WriteDynamicBufferString(&v15, *a1);
  v11 = v16;
  v12 = v17;
  v13 = v16 + 8;
  if (v16 + 8 <= v17)
  {
    *(v15 + v16) = *(a1 + 44);
  }

  result = v11 + 16;
  if (v11 + 16 <= v12)
  {
    *(v15 + v13) = *(a1 + 40);
  }

  return result;
}

uint64_t DecodeDYMTLImageFilterFunctionInfoSPI(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = *(a1 + 8);
  if (result)
  {
    v6 = 0;
    v7 = (a1 + 16);
    do
    {
      v8 = *v7;
      v9 = *(v7 + 1);
      v7 += 16;
      v10 = *(a3 + 496);
      if (v9)
      {
        v11 = v10 + 24;
        v12 = v9;
        do
        {
          if (a4)
          {
            v13 = *(v7 + 2);
            *(v11 - 24) = *v7;
            *(v11 - 8) = v13;
          }

          v7 += 24;
          *(a3 + 496) = v11;
          v11 += 24;
          --v12;
        }

        while (v12);
      }

      v14 = *(a3 + 368);
      if (a4)
      {
        *v14 = v8;
        *(v14 + 4) = 0;
        *(v14 + 1) = 0;
        *(v14 + 8) = v9;
        *(v14 + 16) = v10;
        v14 = *(a3 + 368);
      }

      *(a3 + 368) = v14 + 24;
      ++v6;
    }

    while (v6 != result);
  }

  return result;
}

uint64_t EncodeDYMTLImageFilterFunctionInfoSPI(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  if (a4 >= 8)
  {
    *a3 = 115;
    if (a4 >= 0x10)
    {
      a3[1] = a2;
    }
  }

  if (!a2)
  {
    return 16;
  }

  v4 = 0;
  v5 = 16;
  do
  {
    v6 = (a1 + 24 * v4);
    if (v5 + 8 <= a4)
    {
      *(a3 + v5) = *v6;
    }

    v7 = *(v6 + 1);
    if (v5 + 16 <= a4)
    {
      *(a3 + v5 + 8) = v7;
      v7 = *(v6 + 1);
    }

    if (v7)
    {
      v8 = 0;
      v9 = 0;
      v10 = a3 + v5 + 16;
      do
      {
        v11 = *(v6 + 2);
        if (v5 + v8 + 24 <= a4)
        {
          *&v10[v8] = *(v11 + v8);
        }

        if (v5 + v8 + 32 <= a4)
        {
          *&v10[v8 + 8] = *(v11 + v8 + 8);
        }

        if (v5 + v8 + 40 <= a4)
        {
          *&v10[v8 + 16] = *(v11 + v8 + 16);
        }

        ++v9;
        v8 += 24;
      }

      while (*(v6 + 1) > v9);
      v5 += v8 + 16;
    }

    else
    {
      v5 += 16;
    }

    ++v4;
  }

  while (v4 != a2);
  return v5;
}

uint64_t DecodeDYMTLTextureMipmapInfo(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 8);
  v5 = *(a3 + 360);
  *(a3 + 360) = v5 + 16;
  v6 = *(a3 + 520);
  *(a3 + 520) = v6 + 16 * v4;
  if (a4)
  {
    *(v5 + 8) = v4;
    if (v4)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    *v5 = v7;
    if (v4)
    {
      v8 = (v6 + 8);
      v9 = (result + 40);
      do
      {
        *(v8 - 2) = *(v9 - 2);
        *(v8 - 1) = *(v9 - 1);
        v10 = *v9;
        v9 += 4;
        *v8 = v10;
        v8 += 4;
        --v4;
      }

      while (v4);
    }
  }

  return result;
}

uint64_t EncodeDYMTLTextureMipmapInfo2(uint64_t *a1, void *a2, unint64_t a3)
{
  if (a3 > 7)
  {
    *a2 = 115;
    v3 = (a1 + 1);
    v4 = *(a1 + 8);
    if (a3 < 0x10)
    {
      goto LABEL_6;
    }

    a2[1] = v4;
  }

  else
  {
    v3 = (a1 + 1);
  }

  LODWORD(v4) = *v3;
LABEL_6:
  if (!v4)
  {
    return 16;
  }

  v5 = 0;
  v6 = 0;
  v7 = a2 + 5;
  v8 = 24;
  do
  {
    if (v8 <= a3)
    {
      v7[v8 / 8 - 6] = v6;
    }

    v9 = *a1;
    if (v8 + 8 <= a3)
    {
      a2[v8 / 8] = *(v9 + v5);
      v9 = *a1;
    }

    if (v8 + 16 <= a3)
    {
      v7[v8 / 8 - 4] = *(v9 + v5 + 4);
      v9 = *a1;
    }

    if (v8 + 24 <= a3)
    {
      v7[v8 / 8 - 3] = *(v9 + v5 + 8);
    }

    ++v6;
    v8 += 32;
    v5 += 16;
  }

  while (v6 < *v3);
  return v8 - 8;
}

uint64_t EncodeDYMTLStitchedLibraryDescriptor(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v51 = a2;
  v53 = a3;
  if (a3 < 8 || (*a2 = 115, a3 <= 0xF))
  {
    v52 = 16;
LABEL_4:
    v6 = (a1 + 24);
    goto LABEL_5;
  }

  a2[1] = 0;
  v52 = 16;
  if (a3 < 0x18)
  {
    goto LABEL_4;
  }

  a2[2] = 0;
  if (a3 < 0x20)
  {
    goto LABEL_4;
  }

  a2[3] = 0;
  if (a3 < 0x28)
  {
    goto LABEL_4;
  }

  a2[4] = 0;
  if (a3 < 0x30)
  {
    goto LABEL_4;
  }

  a2[5] = 0;
  if (a3 <= 0x37)
  {
    goto LABEL_4;
  }

  a2[6] = *(a1 + 48);
  v6 = (a1 + 24);
  v7 = *(a1 + 24);
  if (a3 < 0x40)
  {
    goto LABEL_6;
  }

  a2[7] = v7;
LABEL_5:
  v7 = *v6;
LABEL_6:
  v8 = 64;
  v52 = 64;
  if (!v7)
  {
    goto LABEL_66;
  }

  v9 = 0;
  v8 = 64;
  do
  {
    v10 = (*(a1 + 8) + 56 * v9);
    v11 = *v10;
    if (*v10 <= 5u)
    {
      if (*v10 <= 3u)
      {
        if ((v11 - 1) < 2)
        {
          goto LABEL_40;
        }

        if (v11 == 3)
        {
          v13 = v8 + 8;
          v14 = v53;
          if (v8 + 8 <= v53)
          {
            *(v51 + v8) = 3;
            v14 = v53;
            v13 = v52 + 8;
          }

          v52 = v13;
          v12 = v13 + 8;
          if (v13 + 8 > v14)
          {
            goto LABEL_36;
          }

          *(v51 + v13) = *(v10 + 8);
          goto LABEL_35;
        }

LABEL_64:
        v12 = v8 + 8;
        if (v8 + 8 > v53)
        {
          goto LABEL_36;
        }

        *(v51 + v8) = 0;
        goto LABEL_35;
      }

      if (v11 == 4)
      {
LABEL_30:
        v18 = v8 + 8;
        v20 = v53;
        if (v8 + 8 <= v53)
        {
          *(v51 + v8) = v11;
          v20 = v53;
          v18 = v52 + 8;
        }

        v52 = v18;
        v12 = v18 + 8;
        if (v18 + 8 > v20)
        {
          goto LABEL_36;
        }

        v19 = *(v10 + 8);
      }

      else
      {
        if (v11 != 5)
        {
          goto LABEL_64;
        }

        v15 = v8 + 8;
        v16 = v53;
        if (v8 + 8 <= v53)
        {
          *(v51 + v8) = 5;
          v16 = v53;
          v15 = v52 + 8;
        }

        v52 = v15;
        v17 = v15 + 8;
        if (v15 + 8 <= v16)
        {
          *(v51 + v15) = *(v10 + 8);
          v16 = v53;
          v17 = v52 + 8;
        }

        v52 = v17;
        v18 = v17 + 8;
        if (v17 + 8 <= v16)
        {
          *(v51 + v17) = *(v10 + 1);
          v16 = v53;
          v18 = v52 + 8;
        }

        v52 = v18;
        v12 = v18 + 8;
        if (v18 + 8 > v16)
        {
          goto LABEL_36;
        }

        v19 = v10[18];
      }

      *(v51 + v18) = v19;
LABEL_35:
      v12 = v52 + 8;
      goto LABEL_36;
    }

    if ((v11 - 6) < 4)
    {
      goto LABEL_30;
    }

    if ((v11 - 10) < 2)
    {
      v12 = v8 + 8;
      if (v8 + 8 <= v53)
      {
        *(v51 + v8) = v11;
        goto LABEL_35;
      }

LABEL_36:
      v52 = v12;
      v8 = v12;
      goto LABEL_37;
    }

    if (v11 != 12)
    {
      goto LABEL_64;
    }

LABEL_40:
    v21 = v8 + 8;
    if (v8 + 8 <= v53)
    {
      *(v51 + v8) = v11;
      v21 = v52 + 8;
      LODWORD(v11) = *v10;
    }

    v52 = v21;
    if (v11 == 2)
    {
      v22 = v21 + 8;
      if (v21 + 8 <= v53)
      {
        *(v51 + v21) = v10[48];
        v22 = v52 + 8;
      }

      v52 = v22;
    }

    WriteDynamicBufferString(&v51, *(v10 + 1));
    v23 = v52 + 8;
    if (v52 + 8 <= v53)
    {
      *(v51 + v52) = *(v10 + 4);
      v23 = v52 + 8;
    }

    v52 = v23;
    if (*(v10 + 4))
    {
      v24 = 0;
      do
      {
        v25 = v23 + 8;
        if (v23 + 8 <= v53)
        {
          *(v51 + v23) = *(*(v10 + 2) + 8 * v24);
          v25 = v52 + 8;
        }

        v52 = v25;
        ++v24;
        v23 = v25;
      }

      while (v24 < *(v10 + 4));
    }

    else
    {
      v25 = v23;
    }

    v26 = v25 + 8;
    if (v25 + 8 <= v53)
    {
      *(v51 + v25) = *(v10 + 5);
      v26 = v52 + 8;
    }

    v52 = v26;
    if (*(v10 + 5))
    {
      v27 = 0;
      do
      {
        v8 = v26 + 8;
        if (v26 + 8 <= v53)
        {
          *(v51 + v26) = *(*(v10 + 3) + 8 * v27);
          v8 = v52 + 8;
        }

        v52 = v8;
        ++v27;
        v26 = v8;
      }

      while (v27 < *(v10 + 5));
    }

    else
    {
      v8 = v26;
    }

LABEL_37:
    ++v9;
  }

  while (v9 < *v6);
  a3 = v53;
LABEL_66:
  v28 = *(a1 + 32);
  v29 = v8 + 8;
  if (v8 + 8 <= a3)
  {
    *(v51 + v8) = v28;
    v29 = v52 + 8;
    v28 = *(a1 + 32);
  }

  v52 = v29;
  if (v28)
  {
    v30 = 0;
    do
    {
      v31 = *a1 + 56 * v30;
      v32 = v29 + 8;
      if (v29 + 8 <= v53)
      {
        *(v51 + v29) = *(v31 + 48);
        v32 = v52 + 8;
      }

      v52 = v32;
      WriteDynamicBufferString(&v51, *v31);
      v33 = *(v31 + 16);
      v34 = v52 + 8;
      if (v52 + 8 <= v53)
      {
        *(v51 + v52) = v33;
        v34 = v52 + 8;
        v33 = *(v31 + 16);
      }

      v52 = v34;
      if (v33)
      {
        for (i = 0; i < v33; ++i)
        {
          v36 = v34 + 8;
          if (v34 + 8 <= v53)
          {
            *(v51 + v34) = *(*(v31 + 8) + 8 * i);
            v36 = v52 + 8;
            v33 = *(v31 + 16);
          }

          v52 = v36;
          v34 = v36;
        }
      }

      else
      {
        v36 = v34;
      }

      v37 = v36 + 8;
      v38 = v53;
      if (v36 + 8 <= v53)
      {
        *(v51 + v36) = *(v31 + 24);
        v38 = v53;
        v37 = v52 + 8;
      }

      v52 = v37;
      v39 = *(v31 + 40);
      v40 = v37 + 8;
      if (v37 + 8 <= v38)
      {
        *(v51 + v37) = v39;
        v40 = v52 + 8;
        v39 = *(v31 + 40);
      }

      v52 = v40;
      if (v39)
      {
        v41 = 0;
        for (j = 0; j < v39; ++j)
        {
          v29 = v40 + 8;
          if (v40 + 8 <= v53)
          {
            *(v51 + v40) = *(*(v31 + 32) + v41);
            v29 = v52 + 8;
            v39 = *(v31 + 40);
          }

          v52 = v29;
          v41 += 8;
          v40 = v29;
        }
      }

      else
      {
        v29 = v40;
      }

      ++v30;
    }

    while (v30 < *(a1 + 32));
  }

  v43 = *(a1 + 40);
  result = v29 + 8;
  if (v29 + 8 <= v53)
  {
    *(v51 + v29) = v43;
    result = v52 + 8;
    v43 = *(a1 + 40);
  }

  v52 = result;
  if (v43)
  {
    v45 = 0;
    do
    {
      v50 = *(*(a1 + 16) + 8 * v45);
      entry = find_entry(a4, &v50, 8uLL, 0);
      v47 = &dword_8;
      if (*entry)
      {
        v48 = *(*entry + 32);
        if (v48)
        {
          v49 = atomic_load((v48 + 56));
          v47 = (v48 + (~(v49 >> 2) & 8));
        }

        else
        {
          v47 = &dword_8;
        }
      }

      result = v52 + 8;
      if (v52 + 8 <= v53)
      {
        *(v51 + v52) = *v47;
        result = v52 + 8;
      }

      v52 = result;
      ++v45;
    }

    while (v45 < *(a1 + 40));
  }

  return result;
}

void DecodeDYMTLStitchedLibraryDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v75 = 0;
  v73 = 0u;
  v74 = 0u;
  v72 = 0u;
  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, 0);
  v9 = newpool;
  v10 = apr_hash_make(newpool);
  v11 = (a1 + 8);
  v12 = *a1;
  v76[0] = (a1 + 8);
  v70 = 0;
  v69 = 0;
  if (v12 < 0x4F)
  {
    LOBYTE(v13) = 4;
    goto LABEL_10;
  }

  v13 = *(a1 + 24);
  v11 = (a1 + 32);
  v76[0] = (a1 + 32);
  if (v12 <= 0x51)
  {
LABEL_10:
    LOBYTE(v75) = v13;
    *(&v72 + 1) = 0;
    *(&v73 + 1) = 0;
    goto LABEL_11;
  }

  v14 = *(a1 + 56);
  LOBYTE(v75) = *(a1 + 48);
  v11 = (a1 + 64);
  v76[0] = (a1 + 64);
  *(&v73 + 1) = v14;
  v15 = *(a3 + 536);
  *(a3 + 536) = v15 + 56 * v14;
  if (v14)
  {
    v16 = a5;
    v17 = 0;
    *(&v72 + 1) = v15;
    do
    {
      v67 = 0;
      v65 = 0u;
      v66 = 0u;
      v64 = 0u;
      v59[0] = v76;
      v59[1] = &v72;
      v59[2] = a3;
      v59[3] = v10;
      v60 = v12;
      v61 = a4;
      v62 = 0;
      v63 = 0;
      DecodeDYMTLFunctionStitchingNode(&v64, v59, &v68);
      if (a4)
      {
        v18 = v64;
        v19 = v65;
        v20 = v66;
        *(v15 + 48) = v67;
        *(v15 + 16) = v19;
        *(v15 + 32) = v20;
        *v15 = v18;
        v15 += 56;
      }

      ++v17;
    }

    while (v17 < *(&v73 + 1));
    v11 = v76[0];
    a5 = v16;
  }

  else
  {
    *(&v72 + 1) = 0;
  }

LABEL_11:
  v22 = *v11;
  v21 = v11 + 8;
  v76[0] = v21;
  *&v74 = v22;
  if (v22)
  {
    v54 = v9;
    v23 = 0;
    *&v72 = *(a3 + 528);
    while (1)
    {
      v58 = v23;
      v24 = v76[0];
      v55 = *v76[0];
      v76[0] += 8;
      v25 = &v76[0][(strlen(v76[0]) & 0xFFFFFFFFFFFFFFF8) + 8];
      v76[0] = v25;
      v26 = *(v24 + 8);
      v27 = v24[8] ? v24 + 8 : 0;
      if (!v26)
      {
        break;
      }

      v28 = strlen(v27);
      v29 = *(a3 + 592);
      v30 = v28 + 1;
      if (v28 == -1)
      {
        goto LABEL_20;
      }

      __dst = *(a3 + 592);
LABEL_21:
      *(a3 + 592) = v29 + v30;
      if (a4)
      {
        memcpy(__dst, v27, v30);
        v25 = v76[0];
      }

      v31 = *v25;
      v76[0] = v25 + 8;
      v32 = *(a3 + 576);
      *(a3 + 576) = &v32[v31];
      v33 = v31;
      v56 = v32;
      if (v31)
      {
        do
        {
          *&v64 = v76;
          *(&v64 + 1) = &v72;
          *&v65 = a3;
          *(&v65 + 1) = v10;
          LODWORD(v66) = v12;
          BYTE4(v66) = a4;
          *(&v66 + 5) = v69;
          BYTE7(v66) = v70;
          DYMTLFunctionStitchingFunctionNodeID = GetDYMTLFunctionStitchingFunctionNodeID(&v64);
          if (a4)
          {
            *v32++ = DYMTLFunctionStitchingFunctionNodeID;
          }

          --v33;
        }

        while (v33);
        v35 = v56;
      }

      else
      {
        v35 = 0;
      }

      *&v64 = v76;
      *(&v64 + 1) = &v72;
      *&v65 = a3;
      *(&v65 + 1) = v10;
      LODWORD(v66) = v12;
      BYTE4(v66) = a4;
      *(&v66 + 5) = v69;
      BYTE7(v66) = v70;
      DYMTLFunctionStitchingNodeID = GetDYMTLFunctionStitchingNodeID(&v64);
      v37 = v76[0];
      v38 = *v76[0];
      v76[0] += 8;
      v39 = *(a3 + 544);
      if (v38)
      {
        v40 = v39 + 8;
        v41 = v37 + 16;
        v42 = v38;
        do
        {
          v43 = *(v41 - 1);
          v76[0] = v41;
          if (a4)
          {
            *(v40 - 8) = v43;
          }

          v41 += 8;
          *(a3 + 544) = v40;
          v40 += 8;
          --v42;
        }

        while (v42);
      }

      if (a4)
      {
        v44 = *(a3 + 528);
        *v44 = __dst;
        *(v44 + 8) = v35;
        *(v44 + 16) = v31;
        *(v44 + 24) = DYMTLFunctionStitchingNodeID;
        *(v44 + 32) = v39;
        *(v44 + 40) = v38;
        *(v44 + 48) = v55;
        *(v44 + 49) = 0;
        *(v44 + 52) = 0;
      }

      *(a3 + 528) += 56;
      v23 = v58 + 1;
      if (v58 + 1 >= v74)
      {
        v21 = v76[0];
        v9 = v54;
        goto LABEL_39;
      }
    }

    v29 = *(a3 + 592);
LABEL_20:
    v30 = 0;
    __dst = 0;
    goto LABEL_21;
  }

  *&v72 = 0;
LABEL_39:
  v45 = *v21;
  v76[0] = v21 + 8;
  *(&v74 + 1) = v45;
  if (!v45)
  {
    *&v73 = 0;
    if ((a4 & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  v46 = 0;
  v47 = *(a3 + 576);
  *&v73 = v47;
  do
  {
    v48 = *v76[0];
    v76[0] += 8;
    if (a4)
    {
      if (a5)
      {
        Stream_19685 = GetStream_19685(a5, v48);
        if (Stream_19685)
        {
          v48 = *Stream_19685;
        }

        else
        {
          v48 = 0;
        }
      }

      v47 = *(a3 + 576);
      *v47 = v48;
      v45 = *(&v74 + 1);
    }

    *(a3 + 576) = ++v47;
    ++v46;
  }

  while (v46 < v45);
  if (a4)
  {
LABEL_49:
    v50 = *(a3 + 376);
    v51 = v72;
    v52 = v73;
    v53 = v74;
    *(v50 + 48) = v75;
    *(v50 + 16) = v52;
    *(v50 + 32) = v53;
    *v50 = v51;
  }

LABEL_50:
  *(a3 + 376) += 56;
  apr_pool_destroy(v9);
}

size_t DecodeDYMTLFunctionStitchingNode(size_t result, unsigned __int8 ***a2, void *a3)
{
  *(result + 48) = 0;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *result = 0u;
  v6 = **a2;
  v8 = *v6;
  v7 = v8;
  **a2 = v6 + 8;
  *result = v8;
  if (v8 <= 4)
  {
    if ((v7 - 1) >= 2)
    {
      if (v7 != 3 && v7 != 4)
      {
        return result;
      }

LABEL_7:
      v9 = **a2;
      v10 = *v9;
      **a2 = v9 + 8;
      *(result + 16) = v10;
      return result;
    }

    goto LABEL_10;
  }

  if ((v7 - 6) < 4)
  {
    goto LABEL_7;
  }

  if (v7 == 5)
  {
    v12 = **a2;
    v13 = *v12;
    **a2 = v12 + 8;
    *(result + 16) = v13;
    v14 = **a2;
    v15 = *v14;
    **a2 = v14 + 8;
    *(result + 8) = v15;
    v16 = **a2;
    v17 = *v16;
    **a2 = v16 + 8;
    *(result + 18) = v17;
    return result;
  }

  if (v7 == 12)
  {
LABEL_10:
    v20 = v3;
    v21 = v4;
    v11 = *(a2 + 1);
    v18[0] = *a2;
    v18[1] = v11;
    v19 = a2[4];
    return DecodeDYMTLFunctionStitchingFunctionNode(result, v18, v7, a3);
  }

  return result;
}

uint64_t GetDYMTLFunctionStitchingNodeID(__int128 *a1)
{
  if (*(a1 + 8) < 0x52u)
  {
    v11 = 0;
    memset(v9, 0, sizeof(v9));
    v10 = 0;
    v4 = a1[1];
    v6 = *a1;
    v7 = v4;
    v8 = *(a1 + 4);
    DecodeDYMTLFunctionStitchingNode(v9, &v6, &v11);
    v5 = a1[1];
    v6 = *a1;
    v7 = v5;
    v8 = *(a1 + 4);
    return AppendNodeToDescriptor(&v6, v9, v11);
  }

  else
  {
    v2 = **a1;
    result = *v2;
    **a1 = v2 + 1;
  }

  return result;
}

uint64_t GetDYMTLFunctionStitchingFunctionNodeID(unsigned __int8 ***a1)
{
  if (*(a1 + 8) < 0x52u)
  {
    v13 = 0;
    memset(v11, 0, sizeof(v11));
    v12 = 0;
    v4 = **a1;
    v5 = *v4;
    **a1 = v4 + 8;
    v6 = *(a1 + 1);
    v8 = *a1;
    v9 = v6;
    v10 = a1[4];
    DecodeDYMTLFunctionStitchingFunctionNode(v11, &v8, v5, &v13);
    v7 = *(a1 + 1);
    v8 = *a1;
    v9 = v7;
    v10 = a1[4];
    return AppendNodeToDescriptor(&v8, v11, v13);
  }

  else
  {
    v2 = **a1;
    result = *v2;
    **a1 = (v2 + 1);
  }

  return result;
}

size_t DecodeDYMTLFunctionStitchingFunctionNode(uint64_t a1, unint64_t ***a2, int a3, void *a4)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *a1 = a3;
  if ((*(a2 + 8) - 79) <= 2)
  {
    v6 = **a2;
    v7 = *v6;
    **a2 = (v6 + 1);
    *a4 = v7;
  }

  if (a3 == 2)
  {
    v8 = **a2;
    v9 = *v8;
    **a2 = (v8 + 1);
    *(a1 + 48) = v9;
  }

  v10 = **a2;
  **a2 = &v10[(strlen(v10) & 0xFFFFFFFFFFFFFFF8) + 8];
  if (!*v10)
  {
    v10 = "";
  }

  v11 = a2[2];
  v12 = *(a2 + 36);
  result = strlen(v10);
  v14 = result + 1;
  if (result == -1)
  {
    v15 = 0;
  }

  else
  {
    v15 = v11[74];
  }

  v11[74] = (v11[74] + v14);
  if (v12 == 1)
  {
    result = memcpy(v15, v10, v14);
  }

  *(a1 + 8) = v15;
  v16 = **a2;
  v17 = *v16;
  **a2 = v16 + 1;
  *(a1 + 32) = v17;
  v18 = a2[2];
  v19 = v18[72];
  v18[72] = &v19[v17];
  if (v17)
  {
    v20 = 0;
    *(a1 + 16) = v19;
    do
    {
      v21 = *(a2 + 1);
      v28 = *a2;
      v29 = v21;
      v30 = a2[4];
      result = GetDYMTLFunctionStitchingNodeID(&v28);
      if (*(a2 + 36) == 1)
      {
        *v19++ = result;
        v17 = *(a1 + 32);
      }

      ++v20;
    }

    while (v20 < v17);
  }

  else
  {
    *(a1 + 16) = 0;
  }

  v22 = **a2;
  v23 = *v22;
  **a2 = v22 + 1;
  *(a1 + 40) = v23;
  v24 = a2[2];
  v25 = v24[72];
  v24[72] = &v25[v23];
  if (v23)
  {
    v26 = 0;
    *(a1 + 24) = v25;
    do
    {
      v27 = *(a2 + 1);
      v28 = *a2;
      v29 = v27;
      v30 = a2[4];
      result = GetDYMTLFunctionStitchingFunctionNodeID(&v28);
      if (*(a2 + 36) == 1)
      {
        *v25++ = result;
        v23 = *(a1 + 40);
      }

      ++v26;
    }

    while (v26 < v23);
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return result;
}

uint64_t AppendNodeToDescriptor(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v16 = a3;
  if (!*a2)
  {
    return 0;
  }

  if (a3 && (*(a1 + 32) - 79) <= 2)
  {
    entry = find_entry(*(a1 + 24), &v16, 8uLL, 0);
    if (*entry)
    {
      result = *(*entry + 32);
      if (result)
      {
        return result;
      }
    }

    v7 = *(*(a1 + 8) + 24);
    v8 = *(a1 + 24);
    v9 = apr_palloc(*v8, 8uLL);
    *v9 = v16;
    apr_hash_set(v8, v9, 8, (v7 + 1));
  }

  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(v11 + 536);
  if (!*(v10 + 8))
  {
    *(v10 + 8) = v12;
  }

  *(v11 + 536) = v12 + 56;
  if (*(a1 + 36) == 1)
  {
    v13 = *a2;
    v14 = a2[1];
    v15 = a2[2];
    *(v12 + 48) = *(a2 + 6);
    *(v12 + 16) = v14;
    *(v12 + 32) = v15;
    *v12 = v13;
    v10 = *(a1 + 8);
  }

  result = *(v10 + 24) + 1;
  *(v10 + 24) = result;
  return result;
}

void *DecodeDYMTLFXSpatialScalerDescriptor(void *result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a3 + 384);
  *(a3 + 384) = v4 + 40;
  if (a4)
  {
    *v4 = result[1];
    *(v4 + 8) = result[2];
    *(v4 + 16) = result[3];
    *(v4 + 24) = result[4];
    *(v4 + 32) = result[5];
    *(v4 + 34) = result[6];
    *(v4 + 36) = result[7];
  }

  return result;
}

uint64_t DecodeDYMTLFXTemporalScalerDescriptor(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *result;
  v5 = *(a3 + 392);
  *(a3 + 392) = v5 + 64;
  if (a4)
  {
    *v5 = *(result + 8);
    *(v5 + 2) = *(result + 16);
    *(v5 + 4) = *(result + 24);
    *(v5 + 6) = *(result + 32);
    *(v5 + 16) = *(result + 40);
    *(v5 + 24) = *(result + 48);
    *(v5 + 32) = *(result + 56);
    *(v5 + 40) = *(result + 64);
    *(v5 + 48) = *(result + 72);
    *(v5 + 52) = *(result + 80);
    *(v5 + 56) = *(result + 88);
    *(v5 + 57) = *(result + 96);
    if (v4 >= 0x4D)
    {
      *(v5 + 58) = *(result + 104);
      *(v5 + 8) = *(result + 112);
      if (v4 >= 0x50)
      {
        *(v5 + 59) = *(result + 120);
      }
    }
  }

  return result;
}

uint64_t DecodeDYMTLFXFrameInterpolatorDescriptor(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = *result;
  v6 = *(a3 + 400);
  *(a3 + 400) = v6 + 56;
  if (v5 >= 0x71 && a4 != 0)
  {
    v8 = result;
    *(v6 + 40) = *(result + 8);
    *(v6 + 42) = *(result + 16);
    *(v6 + 44) = *(result + 24);
    *(v6 + 46) = *(result + 32);
    *v6 = *(result + 40);
    *(v6 + 8) = *(result + 48);
    v9 = *(result + 56);
    if (a5)
    {
      result = GetStream_19685(a5, v9);
      if (result)
      {
        v9 = *result;
      }

      else
      {
        v9 = 0;
      }
    }

    *(v6 + 32) = v9;
    *(v6 + 16) = v8[8];
    *(v6 + 24) = v8[9];
    *(v6 + 48) = v8[10];
  }

  return result;
}

uint64_t DecodeDYMTLFXTemporalDenoisedScalerDescriptor(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *result;
  v5 = *(a3 + 408);
  *(a3 + 408) = v5 + 72;
  if (a4)
  {
    *v5 = *(result + 8);
    *(v5 + 2) = *(result + 16);
    *(v5 + 4) = *(result + 24);
    *(v5 + 6) = *(result + 32);
    *(v5 + 8) = *(result + 40);
    *(v5 + 10) = *(result + 48);
    *(v5 + 12) = *(result + 56);
    *(v5 + 14) = *(result + 64);
    *(v5 + 20) = *(result + 72);
    *(v5 + 24) = *(result + 80);
    *(v5 + 32) = *(result + 88);
    *(v5 + 40) = *(result + 96);
    *(v5 + 48) = *(result + 104);
    *(v5 + 56) = *(result + 112);
    *(v5 + 60) = *(result + 120);
    *(v5 + 64) = *(result + 128);
    *(v5 + 65) = *(result + 136);
    if (v4 >= 0x4D)
    {
      *(v5 + 66) = *(result + 144);
      *(v5 + 22) = *(result + 152);
      if (v4 >= 0x50)
      {
        *(v5 + 67) = *(result + 160);
        if (v4 >= 0x6D)
        {
          *(v5 + 16) = *(result + 168);
          *(v5 + 18) = *(result + 176);
          *(v5 + 68) = *(result + 184);
          *(v5 + 69) = *(result + 192);
          *(v5 + 70) = *(result + 200);
        }
      }
    }
  }

  return result;
}

uint64_t EncodeDYMTLFXSpatialScalerDescriptor(uint64_t a1, void *a2, unint64_t a3)
{
  if (a3 >= 8)
  {
    *a2 = 115;
    if (a3 >= 0x10)
    {
      a2[1] = *a1;
      if (a3 >= 0x18)
      {
        a2[2] = *(a1 + 8);
        if (a3 >= 0x20)
        {
          a2[3] = *(a1 + 16);
          if (a3 >= 0x28)
          {
            a2[4] = *(a1 + 24);
            if (a3 >= 0x30)
            {
              a2[5] = *(a1 + 32);
              if (a3 >= 0x38)
              {
                a2[6] = *(a1 + 34);
                if (a3 >= 0x40)
                {
                  a2[7] = *(a1 + 36);
                }
              }
            }
          }
        }
      }
    }
  }

  return 64;
}

uint64_t EncodeDYMTLFXTemporalScalerDescriptor(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 8)
  {
    *a2 = 115;
    if (a3 >= 0x10)
    {
      *(a2 + 8) = *a1;
      if (a3 >= 0x18)
      {
        *(a2 + 16) = a1[1];
        if (a3 >= 0x20)
        {
          *(a2 + 24) = a1[2];
          if (a3 >= 0x28)
          {
            *(a2 + 32) = a1[3];
            if (a3 >= 0x30)
            {
              *(a2 + 40) = *(a1 + 2);
              if (a3 >= 0x38)
              {
                *(a2 + 48) = *(a1 + 3);
                if (a3 >= 0x40)
                {
                  *(a2 + 56) = *(a1 + 4);
                  if (a3 >= 0x48)
                  {
                    *(a2 + 64) = *(a1 + 5);
                    if (a3 >= 0x4C)
                    {
                      *(a2 + 72) = *(a1 + 12);
                      if (a3 >= 0x4D)
                      {
                        v6 = a3 - 76 >= 4 ? 4 : a3 - 76;
                        bzero((a2 + 76), v6);
                        if (a3 >= 0x54)
                        {
                          *(a2 + 80) = *(a1 + 13);
                          if (a3 >= 0x55)
                          {
                            if (a3 - 84 >= 4)
                            {
                              v7 = 4;
                            }

                            else
                            {
                              v7 = a3 - 84;
                            }

                            bzero((a2 + 84), v7);
                            if (a3 >= 0x60)
                            {
                              *(a2 + 88) = *(a1 + 56);
                              if (a3 >= 0x68)
                              {
                                *(a2 + 96) = *(a1 + 57);
                                if (a3 >= 0x70)
                                {
                                  *(a2 + 104) = *(a1 + 58);
                                  if (a3 >= 0x78)
                                  {
                                    *(a2 + 112) = a1[4];
                                    if (a3 >= 0x80)
                                    {
                                      *(a2 + 120) = *(a1 + 59);
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return 128;
}

uint64_t EncodeDYMTLFXFrameInterpolatorDescriptor(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  if (a3 >= 8 && (*a2 = 115, a3 >= 0x10) && (a2[1] = *(a1 + 40), a3 >= 0x18) && (a2[2] = *(a1 + 42), a3 >= 0x20) && (a2[3] = *(a1 + 44), a3 >= 0x28) && (a2[4] = *(a1 + 46), a3 >= 0x30) && (a2[5] = *a1, a3 > 0x37))
  {
    a2[6] = *(a1 + 8);
    v8 = GTTraceStream_deviceObjectOrNULL(a4, *(a1 + 32));
    if (a3 >= 0x40)
    {
      a2[7] = v8;
      if (a3 >= 0x48)
      {
        a2[8] = *(a1 + 16);
        if (a3 >= 0x50)
        {
          a2[9] = *(a1 + 24);
          if (a3 >= 0x58)
          {
            a2[10] = *(a1 + 48);
          }
        }
      }
    }
  }

  else
  {
    GTTraceStream_deviceObjectOrNULL(a4, *(a1 + 32));
  }

  return 88;
}

uint64_t EncodeDYMTLFXTemporalDenoisedScalerDescriptor(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 8)
  {
    *a2 = 115;
    if (a3 >= 0x10)
    {
      *(a2 + 8) = *a1;
      if (a3 >= 0x18)
      {
        *(a2 + 16) = a1[1];
        if (a3 >= 0x20)
        {
          *(a2 + 24) = a1[2];
          if (a3 >= 0x28)
          {
            *(a2 + 32) = a1[3];
            if (a3 >= 0x30)
            {
              *(a2 + 40) = a1[4];
              if (a3 >= 0x38)
              {
                *(a2 + 48) = a1[5];
                if (a3 >= 0x40)
                {
                  *(a2 + 56) = a1[6];
                  if (a3 >= 0x48)
                  {
                    *(a2 + 64) = a1[7];
                    if (a3 >= 0x50)
                    {
                      *(a2 + 72) = a1[10];
                      if (a3 >= 0x58)
                      {
                        *(a2 + 80) = *(a1 + 3);
                        if (a3 >= 0x60)
                        {
                          *(a2 + 88) = *(a1 + 4);
                          if (a3 >= 0x68)
                          {
                            *(a2 + 96) = *(a1 + 5);
                            if (a3 >= 0x70)
                            {
                              *(a2 + 104) = *(a1 + 6);
                              v3 = a3 - 116;
                              if (a3 >= 0x74)
                              {
                                *(a2 + 112) = *(a1 + 14);
                                if (a3 >= 0x75)
                                {
                                  if (v3 >= 4)
                                  {
                                    v3 = 4;
                                  }

                                  bzero((a2 + 116), v3);
                                  if (a3 >= 0x7C)
                                  {
                                    *(a2 + 120) = *(a1 + 15);
                                    if (a3 >= 0x7D)
                                    {
                                      if (a3 - 124 >= 4)
                                      {
                                        v4 = 4;
                                      }

                                      else
                                      {
                                        v4 = a3 - 124;
                                      }

                                      bzero((a2 + 124), v4);
                                      if (a3 >= 0x88)
                                      {
                                        *(a2 + 128) = *(a1 + 64);
                                        if (a3 >= 0x90)
                                        {
                                          *(a2 + 136) = *(a1 + 65);
                                          if (a3 >= 0x98)
                                          {
                                            *(a2 + 144) = *(a1 + 66);
                                            if (a3 >= 0xA0)
                                            {
                                              *(a2 + 152) = a1[11];
                                              if (a3 >= 0xA8)
                                              {
                                                *(a2 + 160) = *(a1 + 67);
                                                if (a3 >= 0xB0)
                                                {
                                                  *(a2 + 168) = a1[8];
                                                  if (a3 >= 0xB8)
                                                  {
                                                    *(a2 + 176) = a1[9];
                                                    if (a3 >= 0xC0)
                                                    {
                                                      *(a2 + 184) = *(a1 + 68);
                                                      if (a3 >= 0xC8)
                                                      {
                                                        *(a2 + 192) = *(a1 + 69);
                                                        if (a3 >= 0xD0)
                                                        {
                                                          *(a2 + 200) = *(a1 + 70);
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return 208;
}

void *DecodeDYMPSSourceTextureInfo(void *result, uint64_t a2, void **a3, int a4)
{
  v4 = *a3;
  *a3 += 10;
  if (a4)
  {
    *v4 = result[1];
    v4[1] = result[2];
    v4[2] = result[3];
    v4[3] = result[4];
    v4[4] = result[5];
    v4[5] = result[6];
    v4[6] = result[7];
    v4[7] = result[8];
    v4[8] = result[9];
    v4[9] = result[10];
  }

  return result;
}

uint64_t EncodeDYMPSSourceTextureInfo(void *a1, void *a2, unint64_t a3)
{
  if (a3 >= 8)
  {
    *a2 = 115;
    if (a3 >= 0x10)
    {
      a2[1] = *a1;
      if (a3 >= 0x18)
      {
        a2[2] = a1[1];
        if (a3 >= 0x20)
        {
          a2[3] = a1[2];
          if (a3 >= 0x28)
          {
            a2[4] = a1[3];
            if (a3 >= 0x30)
            {
              a2[5] = a1[4];
              if (a3 >= 0x38)
              {
                a2[6] = a1[5];
                if (a3 >= 0x40)
                {
                  a2[7] = a1[6];
                  if (a3 >= 0x48)
                  {
                    a2[8] = a1[7];
                    if (a3 >= 0x50)
                    {
                      a2[9] = a1[8];
                      if (a3 >= 0x58)
                      {
                        a2[10] = a1[9];
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return 88;
}

void *DecodeDYMPSDestinationTextureInfo(void *result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a3 + 8);
  *(a3 + 8) = v4 + 10;
  if (a4)
  {
    *v4 = result[1];
    v4[1] = result[2];
    v4[2] = result[3];
    v4[3] = result[4];
    v4[4] = result[5];
    v4[5] = result[6];
    v4[6] = result[7];
    v4[7] = result[8];
    v4[8] = result[9];
    v4[9] = result[10];
  }

  return result;
}

uint64_t EncodeDYMPSDestinationTextureInfo(void *a1, void *a2, unint64_t a3)
{
  if (a3 >= 8)
  {
    *a2 = 115;
    if (a3 >= 0x10)
    {
      a2[1] = *a1;
      if (a3 >= 0x18)
      {
        a2[2] = a1[1];
        if (a3 >= 0x20)
        {
          a2[3] = a1[2];
          if (a3 >= 0x28)
          {
            a2[4] = a1[3];
            if (a3 >= 0x30)
            {
              a2[5] = a1[4];
              if (a3 >= 0x38)
              {
                a2[6] = a1[5];
                if (a3 >= 0x40)
                {
                  a2[7] = a1[6];
                  if (a3 >= 0x48)
                  {
                    a2[8] = a1[7];
                    if (a3 >= 0x50)
                    {
                      a2[9] = a1[8];
                      if (a3 >= 0x58)
                      {
                        a2[10] = a1[9];
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return 88;
}

uint64_t EncodeDYMPSPluginCNNConvolutionDescriptor(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < 8)
  {
    goto LABEL_20;
  }

  *a2 = 115;
  if (a3 < 0x10)
  {
    goto LABEL_20;
  }

  *(a2 + 8) = *(a1 + 52);
  if (a3 < 0x14)
  {
    goto LABEL_20;
  }

  *(a2 + 16) = *(a1 + 12);
  if (a3 < 0x15)
  {
    goto LABEL_20;
  }

  v6 = a3 - 20 >= 4 ? 4 : a3 - 20;
  if ((bzero((a2 + 20), v6), a3 < 0x1C) || (*(a2 + 24) = *(a1 + 16), a3 < 0x1D) || (a3 - 28 >= 4 ? (v7 = 4) : (v7 = a3 - 28), (bzero((a2 + 28), v7), a3 < 0x24) || (*(a2 + 32) = *(a1 + 20), a3 <= 0x24)))
  {
LABEL_20:
    v9 = (a1 + 8);
    goto LABEL_21;
  }

  if (a3 - 36 >= 4)
  {
    v8 = 4;
  }

  else
  {
    v8 = a3 - 36;
  }

  bzero((a2 + 36), v8);
  v9 = (a1 + 8);
  v10 = *(a1 + 8);
  if (a3 >= 0x30)
  {
    *(a2 + 40) = v10;
LABEL_21:
    v10 = *v9;
  }

  if (*a1)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = 48;
  }

  else
  {
    v13 = v10 + 48;
    if (a3 >= v10 + 48)
    {
      memcpy((a2 + 48), *a1, v10);
    }

    v14 = (v10 + 7) & 0x1FFFFFFF8;
    if (a3 > v13)
    {
      if (a3 - v13 >= v14 - v10)
      {
        v15 = v14 - v10;
      }

      else
      {
        v15 = a3 - v13;
      }

      bzero((a2 + v13), v15);
    }

    v12 = v14 + 48;
  }

  if (v12 + 8 <= a3)
  {
    *(a2 + v12) = *(a1 + 24);
  }

  if (v12 + 16 <= a3)
  {
    *(a2 + v12 + 8) = *(a1 + 28);
  }

  if (v12 + 24 <= a3)
  {
    *(a2 + v12 + 16) = *(a1 + 53);
  }

  if (v12 + 32 <= a3)
  {
    *(a2 + v12 + 24) = *(a1 + 54);
  }

  if (v12 + 40 <= a3)
  {
    *(a2 + v12 + 32) = *(a1 + 32);
  }

  if (v12 + 48 <= a3)
  {
    *(a2 + v12 + 40) = *(a1 + 36);
  }

  if (v12 + 56 <= a3)
  {
    *(a2 + v12 + 48) = *(a1 + 40);
  }

  if (v12 + 64 <= a3)
  {
    *(a2 + v12 + 56) = *(a1 + 44);
  }

  if (v12 + 72 <= a3)
  {
    *(a2 + v12 + 64) = *(a1 + 48);
  }

  if (v12 + 80 <= a3)
  {
    *(a2 + v12 + 72) = *(a1 + 55);
  }

  if (v12 + 88 <= a3)
  {
    *(a2 + v12 + 80) = *(a1 + 56);
  }

  if (v12 + 96 <= a3)
  {
    *(a2 + v12 + 88) = *(a1 + 57);
  }

  result = v12 + 104;
  if (v12 + 104 <= a3)
  {
    *(a2 + v12 + 96) = *(a1 + 58);
  }

  return result;
}

void *DecodeDYMPSPluginCNNConvolutionDescriptor(void *result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = result[1];
  v6 = *(result + 4);
  v7 = *(result + 6);
  v8 = *(result + 8);
  v9 = result[5];
  v10 = result + ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
  v11 = *v10;
  v12 = *(v10 + 16);
  v13 = *(v10 + 32);
  v14 = *(v10 + 48);
  v15 = *(v10 + 64);
  v16 = *(v10 + 72);
  v18 = *(v10 + 88);
  v17 = *(v10 + 96);
  v19 = *(a3 + 72);
  *(a3 + 72) = &v19[v9];
  if (a4)
  {
    if (v9)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v9)
    {
      v21 = result + 6;
    }

    else
    {
      v21 = 0;
    }

    v28 = v13;
    v29 = v11;
    v26 = v12;
    v27 = v14;
    v25 = v16;
    result = memcpy(v20, v21, v9);
    v22.i64[1] = v26.i64[1];
    v23 = vmovn_s64(v25);
    *v22.i8 = vmovn_s64(v26);
    v24 = *(a3 + 16);
    *v24 = v20;
    *(v24 + 8) = v9;
    *(v24 + 12) = v6;
    *(v24 + 16) = v7;
    *(v24 + 20) = v8;
    *(v24 + 24) = vuzp1q_s32(v29, v28);
    *(v24 + 40) = vmovn_s64(v27);
    *(v24 + 48) = v15;
    *(v24 + 52) = v5;
    v22.i16[1] = v22.i16[2];
    v22.i16[2] = v23.i16[0];
    v22.i16[3] = v23.i16[2];
    *(v24 + 53) = vmovn_s16(v22).u32[0];
    *(v24 + 57) = v18;
    *(v24 + 58) = v17;
    *(v24 + 63) = 0;
    *(v24 + 59) = 0;
  }

  *(a3 + 16) += 64;
  return result;
}

uint64_t EncodeDYMPSPluginCNNConvolutionData(unsigned int *a1, void *a2, unint64_t a3)
{
  v6 = a1[15];
  v7 = 4 * v6;
  v8 = a1[2];
  if (v8 == 2)
  {
    v11 = 0;
    v10 = 0;
    v9 = 1024;
  }

  else
  {
    v9 = 0;
    if (v8 == 1)
    {
      v10 = 8 * v6;
    }

    else
    {
      v10 = 0;
    }

    v11 = 1;
  }

  v12 = a1[14];
  v13 = *(a1 + 6);
  if (v13)
  {
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = 4 * v6;
  }

  else
  {
    v16 = 0;
    v14 = 0;
    v15 = 0;
  }

  if (a3 >= 8)
  {
    *a2 = 115;
    if (a3 >= 0x10)
    {
      a2[1] = *a1;
      if (a3 >= 0x18)
      {
        a2[2] = a1[1];
        if (a3 >= 0x20)
        {
          a2[3] = a1[2];
          if (a3 >= 0x28)
          {
            a2[4] = v12;
          }
        }
      }
    }
  }

  v17 = *(a1 + 2);
  v18 = 40;
  v61 = v14;
  if (v17 && v12)
  {
    v57 = v10;
    v59 = v15;
    v19 = v12 + 40;
    if (a3 >= v12 + 40)
    {
      v20 = v9;
      v21 = v6;
      v22 = v11;
      v23 = v7;
      memcpy(a2 + 5, v17, v12);
      v7 = v23;
      v11 = v22;
      LODWORD(v6) = v21;
      v9 = v20;
    }

    v24 = (v12 + 7) & 0x1FFFFFFF8;
    if (a3 > v19)
    {
      v56 = v11;
      if (a3 - v19 >= v24 - v12)
      {
        v25 = v24 - v12;
      }

      else
      {
        v25 = a3 - v19;
      }

      v26 = a2 + v19;
      v27 = v9;
      v28 = v7;
      bzero(v26, v25);
      v7 = v28;
      v11 = v56;
      v9 = v27;
    }

    v18 = v24 + 40;
    v10 = v57;
    v15 = v59;
    v14 = v61;
  }

  v29 = v18 + 8;
  if (v18 + 8 <= a3)
  {
    *(a2 + v18) = v7;
  }

  v30 = *(a1 + 3);
  if (v30 && v6)
  {
    v31 = v29 + v7;
    if (a3 >= v29 + v7)
    {
      v32 = v9;
      v58 = v10;
      v33 = v15;
      v34 = v11;
      v35 = v7;
      memcpy(a2 + v29, v30, v7);
      v7 = v35;
      v11 = v34;
      v15 = v33;
      v10 = v58;
      v9 = v32;
    }

    v36 = (v7 + 7) & 0x7FFFFFFF8;
    if (a3 > v31)
    {
      v60 = v15;
      v37 = v11;
      if (a3 - v31 >= v36 - v7)
      {
        v38 = v36 - v7;
      }

      else
      {
        v38 = a3 - v31;
      }

      v39 = a2 + v31;
      v40 = v9;
      bzero(v39, v38);
      v11 = v37;
      v15 = v60;
      v9 = v40;
    }

    v29 += v36;
    v14 = v61;
  }

  v41 = v29 + 8;
  if (v29 + 8 <= a3)
  {
    *(a2 + v29) = v9;
  }

  v42 = *(a1 + 4);
  if (!v42)
  {
    v11 = 1;
  }

  v43 = v29 + 8;
  if ((v11 & 1) == 0)
  {
    v43 = v41 + v9;
    if (v41 + v9 <= a3)
    {
      memcpy(a2 + v41, v42, v9);
    }
  }

  v44 = v43 + 8;
  if (v43 + 8 <= a3)
  {
    *(a2 + v43) = v10;
  }

  v45 = *(a1 + 5);
  if (v45 && v10)
  {
    v46 = v44 + v10;
    if (v44 + v10 <= a3)
    {
      memcpy(a2 + v44, v45, v10);
    }

    v44 = v46;
  }

  v47 = v44 + 8;
  if (v44 + 8 <= a3)
  {
    *(a2 + v44) = v16;
  }

  if (v14 && v16)
  {
    v48 = v47 + v16;
    if (a3 >= v47 + v16)
    {
      memcpy(a2 + v47, v14, v16);
    }

    v49 = (v16 + 7) & 0x7FFFFFFF8;
    if (a3 > v48)
    {
      if (a3 - v48 >= v49 - v16)
      {
        v50 = v49 - v16;
      }

      else
      {
        v50 = a3 - v48;
      }

      bzero(a2 + v48, v50);
    }

    v47 += v49;
  }

  v51 = v47 + 8;
  if (v47 + 8 <= a3)
  {
    *(a2 + v47) = v16;
  }

  if (v15 && v16)
  {
    v52 = v51 + v16;
    if (a3 >= v51 + v16)
    {
      memcpy(a2 + v51, v15, v16);
    }

    v53 = (v16 + 7) & 0x7FFFFFFF8;
    if (a3 > v52)
    {
      if (a3 - v52 >= v53 - v16)
      {
        v54 = v53 - v16;
      }

      else
      {
        v54 = a3 - v52;
      }

      bzero(a2 + v52, v54);
    }

    v51 += v53;
  }

  return v51;
}

void *DecodeDYMPSPluginCNNConvolutionData(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v6 = vmovn_s64(*(a1 + 8));
  v51 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = (a1 + 40);
  v9 = (a1 + 40 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v9;
  v10 = v9 + 1;
  v11 = v12;
  v13 = (v10 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = *v13;
  v14 = v13 + 1;
  v15 = v16;
  if (v16)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0;
  }

  v18 = (v14 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  v21 = *v18;
  v19 = v18 + 1;
  v20 = v21;
  if (v21)
  {
    v22 = v19;
  }

  else
  {
    v22 = 0;
  }

  v23 = (v19 + ((v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  v26 = *v23;
  v24 = v23 + 1;
  v25 = v26;
  if (v26)
  {
    v27 = v24;
  }

  else
  {
    v27 = 0;
  }

  __src = v27;
  v28 = (v24 + ((v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  v31 = *v28;
  v29 = v28 + 1;
  v30 = v31;
  if (!v31)
  {
    v29 = 0;
  }

  v48 = v29;
  if (v7)
  {
    result = a3[9];
  }

  else
  {
    result = 0;
  }

  a3[9] += v7;
  v52 = v6;
  v50 = result;
  if (a4)
  {
    if (v11)
    {
      v33 = v10;
    }

    else
    {
      v33 = 0;
    }

    if (v7)
    {
      v34 = v8;
    }

    else
    {
      v34 = 0;
    }

    memcpy(result, v34, v7);
    v35 = (v11 >> 2);
    if ((v11 >> 2))
    {
      v36 = a3[8];
    }

    else
    {
      v36 = 0;
    }

    a3[8] += 4 * v35;
    v49 = v36;
    result = memcpy(v36, v33, 4 * v35);
    v6 = v52;
  }

  else
  {
    v35 = (v11 >> 2);
    if ((v11 >> 2))
    {
      v37 = a3[8];
    }

    else
    {
      v37 = 0;
    }

    v49 = v37;
    a3[8] += 4 * v35;
  }

  if (v6.i32[0] == 2)
  {
    v39 = a3[8];
    a3[8] = v39 + 1024;
    if (a4)
    {
      result = memcpy(v39, v17, 0x400uLL);
      v6 = v52;
    }

    goto LABEL_41;
  }

  if (v6.i32[0] != 1)
  {
    v39 = 0;
LABEL_41:
    v38 = 0;
    goto LABEL_42;
  }

  if (v35)
  {
    v38 = a3[7];
  }

  else
  {
    v38 = 0;
  }

  a3[7] += 8 * v35;
  if (a4)
  {
    result = memcpy(v38, v22, 8 * v35);
    v6 = v52;
  }

  v39 = 0;
LABEL_42:
  if (!(v25 + v30))
  {
    v40 = 0;
    if (!a4)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v41 = a3[8];
  v42 = &v41[4 * v35];
  a3[8] = v42;
  if (a4)
  {
    if (v35)
    {
      v43 = v41;
    }

    else
    {
      v43 = 0;
    }

    memcpy(v43, __src, 4 * v35);
    if (v35)
    {
      v44 = a3[8];
    }

    else
    {
      v44 = 0;
    }

    a3[8] += 4 * v35;
    result = memcpy(v44, v48, 4 * v35);
    v6 = v52;
    v45 = a3[6];
    *v45 = v43;
    v45[1] = v44;
  }

  else
  {
    a3[8] = &v42[4 * v35];
  }

  v40 = a3[6];
  a3[6] = *&v40 + 16;
  if (a4)
  {
LABEL_55:
    v46 = a3[3];
    *v46 = v6;
    v46[1].i32[0] = v51;
    v46[1].i32[1] = 0;
    v46[2] = v50;
    v46[3] = v49;
    v46[4] = v39;
    v46[5] = v38;
    v46[6] = v40;
    v46[7].i32[0] = v7;
    v46[7].i32[1] = v11 >> 2;
  }

LABEL_56:
  a3[3] += 64;
  return result;
}

uint64_t EncodeDYMPSPluginNDArrayConvolutionDescriptor(unsigned __int8 *a1, void *a2, unint64_t a3)
{
  if (a3 >= 8)
  {
    *a2 = 115;
  }

  v3 = a2 + 1;
  v4 = 16;
  v5 = a1;
  do
  {
    if (v4 <= a3)
    {
      *v3 = *v5;
    }

    ++v3;
    v4 += 8;
    v5 += 4;
  }

  while (v4 != 40);
  if (a3 >= 0x28)
  {
    a2[4] = a1[36];
    if (a3 >= 0x30)
    {
      a2[5] = a1[37];
    }
  }

  v6 = (a1 + 12);
  v7 = a2 + 6;
  for (i = 56; i != 80; i += 8)
  {
    if (i <= a3)
    {
      *v7 = *v6;
    }

    ++v7;
    ++v6;
  }

  v9 = (a1 + 24);
  v10 = a2 + 9;
  do
  {
    if (i <= a3)
    {
      *v10 = *v9;
    }

    ++v10;
    i += 8;
    ++v9;
  }

  while (i != 104);
  if (a3 >= 0x68)
  {
    a2[12] = a1[38];
    if (a3 >= 0x70)
    {
      a2[13] = a1[39];
      if (a3 >= 0x78)
      {
        a2[14] = a1[40];
        if (a3 >= 0x80)
        {
          a2[15] = a1[41];
          if (a3 >= 0x88)
          {
            a2[16] = a1[42];
          }
        }
      }
    }
  }

  return 136;
}

uint64_t DecodeDYMPSPluginNDArrayConvolutionDescriptor(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a3 + 32);
  *(a3 + 32) = v4 + 44;
  if (a4)
  {
    v5 = 0;
    v6 = (result + 8);
    do
    {
      v7 = v6;
      v8 = *v6++;
      *&v4[v5] = v8;
      v5 += 4;
    }

    while (v5 != 12);
    v9 = 0;
    v4[36] = *v6;
    v10 = v6[1];
    v11 = v7 + 3;
    v4[37] = v10;
    do
    {
      v12 = *v11++;
      *&v4[v9 + 12] = v12;
      v9 += 4;
    }

    while (v9 != 12);
    for (i = 0; i != 12; i += 4)
    {
      v14 = *v11++;
      *&v4[i + 24] = v14;
    }

    v4[38] = *v11;
    v4[39] = v11[1];
    v4[40] = v11[2];
    v4[41] = v11[3];
    v4[42] = v11[4];
  }

  return result;
}

uint64_t EncodeDYMPSNDArrayStructure(uint64_t a1, void *a2, unint64_t a3)
{
  if (a3 >= 8)
  {
    *a2 = 115;
    if (a3 >= 0x10)
    {
      a2[1] = *a1;
    }
  }

  v3 = (a1 + 8);
  v4 = a2 + 2;
  for (i = 24; i != 56; i += 8)
  {
    if (i <= a3)
    {
      *v4 = *v3;
    }

    ++v4;
    ++v3;
  }

  v6 = (a1 + 24);
  v7 = a2 + 6;
  do
  {
    if (i <= a3)
    {
      *v7 = *v6;
    }

    ++v7;
    i += 8;
    ++v6;
  }

  while (i != 88);
  if (a3 >= 0x58)
  {
    a2[10] = *(a1 + 40);
  }

  return 88;
}

uint64_t DecodeDYMPSNDArrayStructure(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a3 + 40);
  *(a3 + 40) = v4 + 48;
  if (a4)
  {
    v5 = 0;
    v6 = (result + 16);
    *v4 = *(result + 8);
    do
    {
      v7 = *v6++;
      *(v4 + 8 + v5) = v7;
      v5 += 4;
    }

    while (v5 != 16);
    v8 = 0;
    v9 = (v4 + 24);
    do
    {
      *v9++ = v6[v8++];
    }

    while (v8 != 4);
    *(v4 + 40) = v6[4];
  }

  return result;
}

uint64_t GTTraceContext_setParent()
{
  s();
  v1 = *v0;
  *v0 = v2;
  return v1;
}

apr_hash_t *GTTraceContext_buildBacktraceMap(uint64_t a1, apr_pool_t *pool)
{
  v3 = apr_hash_make(pool);
  v4 = 0;
  v5 = a1 + 136;
  do
  {
    for (i = *(v5 + 24 * v4); i; i = *(i + 40))
    {
      v7 = atomic_load((i + 4));
      if (v7 != 64)
      {
        v8 = i + v7;
        v9 = i + 64;
        do
        {
          apr_hash_set(v3, v9, 8, (v9 + 8));
          v9 += (8 * *(v9 + 8) + 23) & 0xFFFFFFFF8;
        }

        while (v9 != v8);
      }
    }

    ++v4;
  }

  while (v4 != 16);
  return v3;
}

uint64_t GTTraceContext_create(uint64_t a1)
{
  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, 0);
  v2 = newpool;
  v3 = apr_palloc(newpool, 0x208uLL);
  v4 = v3;
  if (v3)
  {
    *(v3 + 8) = 0u;
    *(v3 + 488) = 0u;
    *(v3 + 504) = 0u;
    *(v3 + 456) = 0u;
    *(v3 + 472) = 0u;
    *(v3 + 424) = 0u;
    *(v3 + 440) = 0u;
    *(v3 + 392) = 0u;
    *(v3 + 408) = 0u;
    *(v3 + 360) = 0u;
    *(v3 + 376) = 0u;
    *(v3 + 328) = 0u;
    *(v3 + 344) = 0u;
    *(v3 + 296) = 0u;
    *(v3 + 312) = 0u;
    *(v3 + 264) = 0u;
    *(v3 + 280) = 0u;
    *(v3 + 232) = 0u;
    *(v3 + 248) = 0u;
    *(v3 + 200) = 0u;
    *(v3 + 216) = 0u;
    *(v3 + 168) = 0u;
    *(v3 + 184) = 0u;
    *(v3 + 136) = 0u;
    *(v3 + 152) = 0u;
    *(v3 + 104) = 0u;
    *(v3 + 120) = 0u;
    *(v3 + 72) = 0u;
    *(v3 + 88) = 0u;
    *(v3 + 40) = 0u;
    *(v3 + 56) = 0u;
    *(v3 + 24) = 0u;
  }

  *v3 = a1;
  pthread_mutex_init((v3 + 8), 0);
  v5 = apr_hash_make(v2);
  *(v4 + 96) = v5;
  v6 = GTCoreAlloc(v5, 0x148uLL);
  pthread_mutex_init((v6 + 264), 0);
  *(v4 + 72) = v6;
  *(v4 + 120) = GTTraceContext_openStream(v4, 0, 0);
  atomic_store(0, (v4 + 128));
  atomic_store(0, (v4 + 112));
  return v4;
}

unint64_t *GTTraceContext_openStream(uint64_t a1, unint64_t a2, unint64_t a3)
{
  pthread_mutex_lock((a1 + 8));
  RetainFreeNode(a1);
  v7 = v6;
  RetainFreeNode(a1);
  v7[3] = v8;
  add = atomic_fetch_add((a1 + 88), 1uLL);
  *v7 = add;
  v7[1] = a2;
  v7[2] = a3;
  v10 = v7[3];
  *v10 = *(a1 + 72);
  *(v10 + 32) = add;
  atomic_fetch_add((v10 + 40), 1u);
  atomic_store(0, v7 + 7);
  if (*a1 == 1)
  {
    atomic_store(0x20uLL, v7 + 7);
  }

  apr_hash_set(*(a1 + 96), v7, 8, v7);
  pthread_mutex_unlock((a1 + 8));
  return v7;
}

double RetainFreeNode(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (!v2)
  {
    v2 = apr_palloc(**(a1 + 96), 0x1000uLL);
    v3 = 0;
    v4 = v2 + 8;
    v5 = vdupq_n_s64(0x3FuLL);
    do
    {
      v6 = vorrq_s8(vdupq_n_s64(v3), xmmword_2975C0);
      if (vmovn_s64(vcgtq_u64(v5, v6)).u8[0])
      {
        *(v4 - 8) = v4;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x3FuLL), v6)).i32[1])
      {
        *v4 = v4 + 8;
      }

      v3 += 2;
      v4 += 16;
    }

    while (v3 != 64);
    v2[504] = 0;
    *(a1 + 104) = v2;
  }

  *(a1 + 104) = *v2;
  result = 0.0;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  return result;
}

void GTTraceContext_closeStream(uint64_t a1, void *a2)
{
  pthread_mutex_lock((a1 + 8));
  v4 = atomic_load((a1 + 112));
  if (v4 == 1)
  {
    if (!a2)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v5 = v4 != 2 || a2 == 0;
  if (!v5)
  {
    v8 = atomic_load(a2 + 7);
    if ((v8 & 0x10) != 0)
    {
LABEL_12:
      v9 = atomic_load(a2 + 7);
      v10 = v9;
      do
      {
        atomic_compare_exchange_strong(a2 + 7, &v10, v9 | 4);
        v5 = v10 == v9;
        v9 = v10;
      }

      while (!v5);
LABEL_15:

      pthread_mutex_unlock((a1 + 8));
      return;
    }
  }

  v13 = 0uLL;
  *v14 = 0;
  apr_hash_set(*(a1 + 96), a2, 8, 0);
  v6 = *(*(a1 + 96) + 48);
  v7 = a2[3];
  if (atomic_fetch_add((v7 + 40), 0xFFFFFFFF) == 1)
  {
    v13 = *(v7 + 8);
    *v14 = *(v7 + 24);
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    *v7 = *(a1 + 104);
    *(a1 + 104) = v7;
  }

  if (*(&v13 + 1))
  {
    v11 = atomic_load(a2 + 12);
    atomic_fetch_add(v14, v11);
    v12 = atomic_load(a2 + 13);
    atomic_fetch_add(&v14[1], v12);
    *(*(&v13 + 1) + 40) = a2[4];
  }

  else
  {
    v13 = *(a2 + 2);
    *v14 = a2[6];
  }

  a2[4] = 0;
  a2[5] = 0;
  a2[6] = 0;
  *a2 = *(a1 + 104);
  *(a1 + 104) = a2;
  pthread_mutex_unlock((a1 + 8));
  GTTraceStoreFreeNodes(*(a1 + 72), v13);
  if (!v6)
  {
    pthread_mutex_destroy((a1 + 8));
    GTTraceStoreDestroy(*(a1 + 72));
    apr_pool_destroy(**(a1 + 96));
    if ((shared_initialized & 1) == 0 && !--initialized)
    {
      apr_pool_terminate();
    }
  }
}

uint64_t GTTraceContext_getStream(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  pthread_mutex_lock((a1 + 8));
  v3 = *find_entry(*(a1 + 96), &v6, 8uLL, 0);
  if (v3)
  {
    v4 = *(v3 + 32);
  }

  else
  {
    v4 = 0;
  }

  pthread_mutex_unlock((a1 + 8));
  return v4;
}

unint64_t *GTTraceContext_openEncoderStream(uint64_t a1, unint64_t a2, unint64_t a3)
{
  pthread_mutex_lock((a1 + 8));
  RetainFreeNode(a1);
  v7 = v6;
  *v6 = atomic_fetch_add((a1 + 88), 1uLL);
  v6[1] = a2;
  v6[3] = a3;
  atomic_fetch_add((a3 + 40), 1u);
  atomic_store(0, v6 + 7);
  if (*a1 == 1)
  {
    atomic_store(0x20uLL, v6 + 7);
  }

  apr_hash_set(*(a1 + 96), v6, 8, v6);
  pthread_mutex_unlock((a1 + 8));
  return v7;
}

unint64_t *GTTraceContext_openChildStream(uint64_t a1)
{
  result = GTTraceContext_openStream(a1, 0, 0);
  v2 = *result;
  result[1] = *result;
  result[2] = v2;
  return result;
}

BOOL GTTraceContext_isTransientStreamRetained(uint64_t a1, uint64_t a2)
{
  v2 = atomic_load((a1 + 112));
  if (v2 != 2)
  {
    return v2 == 1;
  }

  if (!a2)
  {
    return 0;
  }

  v4 = atomic_load((a2 + 56));
  return (v4 >> 4) & 1;
}

apr_array_header_t *GTTraceContext_cleanupTransientStreams(uint64_t a1, apr_pool_t *a2)
{
  atomic_store(0, (a1 + 112));
  pthread_mutex_lock((a1 + 8));
  v4 = apr_array_make(a2, 32, 8);
  v25 = 0uLL;
  *v26 = 0;
  v5 = *(a1 + 96);
  *(v5 + 40) = 0;
  *(v5 + 16) = v5;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  v6 = apr_hash_next((v5 + 16));
  if (v6)
  {
    v7 = v6;
    do
    {
      v8 = *(*(v7 + 1) + 32);
      if (v8)
      {
        v9 = atomic_load(v8 + 7);
        if ((v9 & 4) != 0)
        {
          v13 = v8[1];
          *apr_array_push(v4) = v13;
          apr_hash_set(*(a1 + 96), v8, 8, 0);
          v14 = v8[3];
          v15 = *(&v25 + 1);
          if (atomic_fetch_add((v14 + 40), 0xFFFFFFFF) == 1)
          {
            if (*(&v25 + 1))
            {
              v16 = atomic_load((v14 + 24));
              atomic_fetch_add(v26, v16);
              v17 = atomic_load((v14 + 28));
              atomic_fetch_add(&v26[1], v17);
              v15 = *(&v25 + 1);
              *(*(&v25 + 1) + 40) = *(v14 + 8);
              if (*(v14 + 16))
              {
                *(&v25 + 1) = *(v14 + 16);
                v15 = *(&v25 + 1);
              }
            }

            else
            {
              v25 = *(v14 + 8);
              *v26 = *(v14 + 24);
              v15 = *(&v25 + 1);
            }

            *(v14 + 8) = 0;
            *(v14 + 16) = 0;
            *(v14 + 24) = 0;
            *v14 = *(a1 + 104);
            *(a1 + 104) = v14;
          }

          if (v15)
          {
            v18 = atomic_load(v8 + 12);
            atomic_fetch_add(v26, v18);
            v19 = atomic_load(v8 + 13);
            atomic_fetch_add(&v26[1], v19);
            *(*(&v25 + 1) + 40) = v8[4];
            if (v8[5])
            {
              *(&v25 + 1) = v8[5];
            }
          }

          else
          {
            v25 = *(v8 + 2);
            *v26 = v8[6];
          }

          v8[4] = 0;
          v8[5] = 0;
          v8[6] = 0;
          *v8 = *(a1 + 104);
          *(a1 + 104) = v8;
        }

        else
        {
          v10 = atomic_load(v8 + 7);
          v11 = v10;
          do
          {
            atomic_compare_exchange_strong(v8 + 7, &v11, v10 & 0xFFFFFFFFFFFFFFEFLL);
            v12 = v11 == v10;
            v10 = v11;
          }

          while (!v12);
        }
      }

      v7 = apr_hash_next(v7);
    }

    while (v7);
  }

  pthread_mutex_unlock((a1 + 8));
  v20 = (a1 + 136);
  v21 = 16;
  do
  {
    if (*(&v25 + 1))
    {
      v22 = atomic_load(v20 + 4);
      atomic_fetch_add(v26, v22);
      v23 = atomic_load(v20 + 5);
      atomic_fetch_add(&v26[1], v23);
      *(*(&v25 + 1) + 40) = *v20;
      if (*(v20 + 1))
      {
        *(&v25 + 1) = *(v20 + 1);
      }
    }

    else
    {
      v25 = *v20;
      *v26 = *(v20 + 2);
    }

    *v20 = 0;
    *(v20 + 1) = 0;
    *(v20 + 2) = 0;
    v20 = (v20 + 24);
    --v21;
  }

  while (v21);
  GTTraceStoreFreeNodes(*(a1 + 72), v25);
  return v4;
}

unint64_t *GTTraceContext_openLayerStream(uint64_t a1, unint64_t a2)
{
  v6 = a2;
  pthread_mutex_lock((a1 + 8));
  v3 = *find_entry(*(a1 + 96), &v6, 8uLL, 0);
  if (!v3)
  {
    pthread_mutex_unlock((a1 + 8));
LABEL_5:
    v4 = GTTraceContext_openStream(a1, v6, v6);
    pthread_mutex_lock((a1 + 8));
    apr_hash_set(*(a1 + 96), v4 + 1, 8, v4);
    pthread_mutex_unlock((a1 + 8));
    return v4;
  }

  v4 = *(v3 + 32);
  pthread_mutex_unlock((a1 + 8));
  if (!v4)
  {
    goto LABEL_5;
  }

  return v4;
}

void GTTraceContext_closeLayerStream(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  pthread_mutex_lock((a1 + 8));
  v3 = *find_entry(*(a1 + 96), &v5, 8uLL, 0);
  if (v3 && (v4 = *(v3 + 32)) != 0)
  {
    apr_hash_set(*(a1 + 96), v4 + 1, 8, 0);
    pthread_mutex_unlock((a1 + 8));
    GTTraceContext_closeStream(a1, v4);
  }

  else
  {
    pthread_mutex_unlock((a1 + 8));
  }
}

apr_hash_t *GTTraceContext_copyStreamMap(uint64_t a1, apr_pool_t *a2)
{
  pthread_mutex_lock((a1 + 8));
  v4 = apr_hash_copy(a2, *(a1 + 96));
  pthread_mutex_unlock((a1 + 8));
  return v4;
}

apr_array_header_t *GTTraceContext_buildDispatchArray(uint64_t a1, unint64_t a2, uint64_t nelts, apr_pool_t *p)
{
  v4 = nelts;
  v27 = a2;
  v28 = nelts;
  v6 = apr_array_make(p, nelts, 64);
  v6->nelts = v4;
  *(a1 + 40) = 0;
  *(a1 + 16) = a1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v7 = apr_hash_next((a1 + 16));
  if (v7)
  {
    v8 = v7;
    do
    {
      v9 = *(*(*(v8 + 1) + 32) + 32);
      if (v9)
      {
        while (1)
        {
          v10 = atomic_load((v9 + 4));
          v11 = (v10 >> 6) - 1;
          if (v10 >> 6 == 1)
          {
            v12 = 0;
          }

          else
          {
            v12 = v11;
            v13 = (v9 + (v10 & 0xFFFFFFC0) - 49);
            do
            {
              v14 = *v13;
              v13 -= 64;
              if ((v14 & 8) != 0)
              {
                break;
              }

              --v12;
            }

            while (v12);
          }

          v15 = (v9 + 64);
          if (v10 >= 0x80)
          {
            do
            {
              v16 = &v15[8 * (v11 >> 1)];
              v17 = GTTraceFuncCompare(v16, &v27);
              if (v17 >= 0)
              {
                v11 = v11 >> 1;
              }

              else
              {
                v11 += ~(v11 >> 1);
              }

              if (v17 < 0)
              {
                v15 = v16 + 8;
              }
            }

            while (v11 > 0);
          }

          v18 = v9 + 64 + (v12 << 6);
          if (v15 < v18)
          {
            break;
          }

LABEL_24:
          v9 = *(v9 + 40);
          if (!v9)
          {
            goto LABEL_25;
          }
        }

        v19 = v27;
        v20 = v28 + v27;
        while (*v15 >= v19 && *v15 < v20)
        {
          v22 = &v6->elts[64 * (*v15 - v19)];
          v23 = *v15;
          v24 = *(v15 + 1);
          v25 = *(v15 + 3);
          *(v22 + 2) = *(v15 + 2);
          *(v22 + 3) = v25;
          *v22 = v23;
          *(v22 + 1) = v24;
          v15 += 8;
          if (v15 >= v18)
          {
            goto LABEL_24;
          }
        }
      }

LABEL_25:
      v8 = apr_hash_next(v8);
    }

    while (v8);
  }

  return v6;
}

uint64_t GTTraceFuncCompare(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 > *a2;
  }
}

_DWORD *StreamNodeToArray@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  v2 = atomic_load(a1 + 1);
  v4 = *a1;
  result = a1 + 16;
  *(a2 + 8) = 64;
  *(a2 + 12) = (v2 >> 6) - 1;
  *(a2 + 16) = (v4 >> 6) - 1;
  *(a2 + 24) = result;
  return result;
}

uint64_t GTTraceContext_filterDispatchArray(uint64_t result)
{
  v1 = *(result + 12);
  if (v1 < 1)
  {
    LODWORD(v2) = 0;
  }

  else
  {
    v2 = 0;
    v3 = (*(result + 24) + 8);
    while (1)
    {
      v4 = *v3;
      v3 += 16;
      if (!v4)
      {
        break;
      }

      if (v1 == ++v2)
      {
        goto LABEL_14;
      }
    }
  }

  if (v2 >= v1)
  {
LABEL_14:
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = v2 << 6;
    do
    {
      v7 = *(result + 24);
      v8 = (v7 + v6);
      if (*(v7 + v6 + 8))
      {
        v1 = (v7 + ((v2 - v5) << 6));
        v9 = *v8;
        v10 = v8[1];
        v11 = v8[3];
        v1[2] = v8[2];
        v1[3] = v11;
        *v1 = v9;
        v1[1] = v10;
        LODWORD(v1) = *(result + 12);
      }

      else
      {
        ++v5;
      }

      LODWORD(v2) = v2 + 1;
      v6 += 64;
    }

    while (v1 > v2);
  }

  *(result + 12) = v1 - v5;
  return result;
}

apr_array_header_t *GTTraceContext_copyStreamMapAndBuildDispatchArray(uint64_t a1, unint64_t a2, uint64_t a3, apr_pool_t *a4, apr_hash_t **a5)
{
  pthread_mutex_lock((a1 + 8));
  v10 = apr_hash_copy(a4, *(a1 + 96));
  v11 = GTTraceContext_buildDispatchArray(v10, a2, a3, a4);
  pthread_mutex_unlock((a1 + 8));
  if (a5)
  {
    *a5 = v10;
  }

  return v11;
}

uint64_t GTTraceFunc_argumentBlobWithPool(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  if (a2 < 0x40)
  {
    return 0;
  }

  else
  {
    return GTTraceMemPool_findHeader(a3, *a1, a2);
  }
}

uint64_t GTTraceFunc_argumentBlobWithMap(void *a1, unsigned int a2, uint64_t a3)
{
  if (a2 < 0x40)
  {
    return 0;
  }

  v7[2] = v3;
  v7[3] = v4;
  v7[0] = *a1;
  v7[1] = a2;
  entry = find_entry(a3, v7, 9uLL, 0);
  if (*entry)
  {
    return *(*entry + 32);
  }

  else
  {
    return 0;
  }
}

char *GTTraceFunc_argumentBytesWithPool(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x40)
  {
    return a1 + a2;
  }

  Header = GTTraceMemPool_findHeader(a3, *a1, a2);
  if (Header)
  {
    return (Header + 16);
  }

  else
  {
    return 0;
  }
}

char *GTTraceFunc_argumentBytesWithMap(void *a1, unsigned int a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x40)
  {
    return a1 + a2;
  }

  v8[2] = v3;
  v8[3] = v4;
  v8[0] = *a1;
  v8[1] = a2;
  entry = find_entry(a3, v8, 9uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v6 = *(*entry + 32);
  if (v6)
  {
    return (v6 + 16);
  }

  else
  {
    return 0;
  }
}

char *GTTraceFunc_targetContext(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  result = GTTraceFunc_argumentBytesWithMap(a1, *(a1 + 13), a2);
  if (v2 == -15913 || v2 == -15914)
  {
    result += 16;
  }

  else if (!result)
  {
    return result;
  }

  return *result;
}

char *GTTraceFunc_getFuncStreamRef(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (GTFenum_getConstructorType(v4) || GTFenum_isBeginCommandBuffer(v4))
  {
    return *(GTTraceFunc_argumentBytesWithMap(a1, *(a1 + 13), a2) + 1);
  }

  return GTTraceFunc_targetContext(a1, a2);
}

char *GTTraceFunc_parentWithMap(uint64_t a1, uint64_t a2)
{
  result = GTTraceFunc_argumentBytesWithMap(a1, *(a1 + 12), a2);
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t GTTraceMemoryMap_argumentBlobAtIndex(unsigned int a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0x40)
  {
    return 0;
  }

  v7[2] = v3;
  v7[3] = v4;
  v7[0] = a3;
  v7[1] = a1;
  entry = find_entry(a2, v7, 9uLL, 0);
  if (*entry)
  {
    return *(*entry + 32);
  }

  else
  {
    return 0;
  }
}

void GTTraceContext_pushEncoderWithExplicitIndex(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = a2;
  s();
  v4 = *v3;
  *v3 = v5;
  *(v6 + 32) = v4;
  *(v6 + 40) = *(v3 + 8);
  *(v6 + 41) = 16400;
  *(v6 + 43) = 0;
  *(v6 + 47) = 0;
}

void GTTraceContext_pushEncoder(uint64_t a1@<X0>, void *a2@<X8>)
{
  add = atomic_fetch_add((a1 + 80), 1uLL);
  *a2 = a1;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = add;
  s();
  v4 = *v3;
  *v3 = v5;
  *(v6 + 32) = v4;
  *(v6 + 40) = *(v3 + 8);
  *(v6 + 41) = 16400;
  *(v6 + 43) = 0;
  *(v6 + 47) = 0;
}

void *GTTraceContext_pushEncoderWithStream@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  add = atomic_fetch_add((a1 + 80), 1uLL);
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = add;
  s();
  v6 = *v5;
  *v5 = v7;
  *(a2 + 32) = v6;
  *(a2 + 40) = *(v5 + 8);
  *(a2 + 41) = 16400;
  *(a2 + 43) = 0;
  *(a2 + 47) = 0;
  result = GTTraceEncoder_setStream_(a2, v8);
  v10 = atomic_load((a1 + 128));
  if (v10)
  {
    v11 = *a2;
    v12 = *(a2 + 24);

    return GTTraceContext_backtrace(v11, v12);
  }

  return result;
}

uint64_t GTTraceEncoder_setStream_(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    a2 = *(*a1 + 120);
  }

  *(a1 + 8) = a2;
  PushFunc(a2);
  *(a1 + 16) = v3;
  v4 = *(a1 + 40);
  *v3 = *(a1 + 24);
  *(v3 + 8) = 0;
  *(v3 + 11) = 0;
  *(v3 + 15) = v4;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 16) = 0u;
  if (*(a1 + 32))
  {
    result = GTTraceEncoder_storeBytes(a1, (a1 + 32), 8uLL);
  }

  else
  {
    result = 0;
  }

  *(*(a1 + 16) + 12) = result;
  return result;
}

void *GTTraceContext_backtrace(uint64_t a1, uint64_t a2)
{
  GTTraceContext_backtrace_callstack();
  v5 = v4;
  result = backtrace(v4, 512);
  if (result >= 1)
  {
    v7 = result - 2;
    v8 = 8 * v7;
    v25 = 0;
    pthread_threadid_np(0, &v25);
    v9 = a1 + 24 * (v25 & 0xF);
    v10 = (v9 + 136);
    add = atomic_fetch_add((v9 + 152), 1u);
    do
    {
      v12 = atomic_load(v10 + 5);
    }

    while (v12 != add);
    v13 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
    v14 = *v10;
    if (!*v10)
    {
      goto LABEL_10;
    }

    v15 = atomic_load(v14 + 1);
    while (1)
    {
      v16 = v15;
      v17 = v13 + v15;
      v18 = *v14;
      if (v17 > v18)
      {
        break;
      }

      v15 = v16;
      atomic_compare_exchange_strong(v14 + 1, &v15, v17);
      if (v15 == v16)
      {
        v18 = *v14;
        break;
      }
    }

    v19 = (v14 + v16);
    if (v17 > v18)
    {
LABEL_10:
      v20 = GTTraceStoreAllocNode(*(a1 + 72), 16320, 3, 0);
      *(v20 + 5) = *v10;
      *v10 = v20;
      if (!*(v10 + 1))
      {
        *(v10 + 1) = v20;
      }

      v21 = atomic_load(v20 + 1);
      while (1)
      {
        v22 = v21;
        v23 = v13 + v21;
        v24 = *v20;
        if (v23 > v24)
        {
          break;
        }

        v21 = v22;
        atomic_compare_exchange_strong(v20 + 1, &v21, v23);
        if (v21 == v22)
        {
          v24 = *v20;
          break;
        }
      }

      v19 = (v20 + v22);
      if (v23 > v24)
      {
        v19 = 0;
      }
    }

    atomic_store(add + 1, v10 + 5);
    *v19 = a2;
    v19[1] = v7 | 0x800000000;
    return memcpy(v19 + 2, v5 + 2, v8);
  }

  return result;
}

double PushFunc(uint64_t a1)
{
  add = atomic_fetch_add((a1 + 48), 1u);
  do
  {
    v3 = atomic_load((a1 + 52));
  }

  while (v3 != add);
  v4 = *(a1 + 40);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = atomic_load(v4 + 1);
  while (1)
  {
    v6 = v5;
    v7 = v5 + 64;
    v8 = *v4;
    if (v7 > v8)
    {
      break;
    }

    v5 = v6;
    atomic_compare_exchange_strong(v4 + 1, &v5, v7);
    if (v5 == v6)
    {
      v8 = *v4;
      break;
    }
  }

  if (v7 <= v8)
  {
    v19 = (v4 + v6);
    v9 = add + 1;
  }

  else
  {
LABEL_9:
    v9 = add + 1;
    if (((add + 1) << 7) >= 0x3FC0)
    {
      v10 = 16320;
    }

    else
    {
      v10 = v9 << 7;
    }

    v11 = GTTraceStoreAllocNode(**(a1 + 24), v10, 1, *a1);
    v12 = *(a1 + 40);
    if (v12)
    {
      v13 = (v12 + 40);
    }

    else
    {
      v13 = (a1 + 32);
    }

    *v13 = v11;
    *(a1 + 40) = v11;
    *(v11 + 5) = 0;
    v14 = atomic_load(v11 + 1);
    while (1)
    {
      v15 = v14;
      v16 = v14 + 64;
      v17 = *v11;
      if (v16 > v17)
      {
        break;
      }

      v14 = v15;
      atomic_compare_exchange_strong(v11 + 1, &v14, v16);
      if (v14 == v15)
      {
        v17 = *v11;
        break;
      }
    }

    v18 = (v11 + v15);
    if (v16 <= v17)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  result = 0.0;
  v19[2] = 0u;
  v19[3] = 0u;
  *v19 = 0u;
  v19[1] = 0u;
  atomic_store(v9, (a1 + 52));
  return result;
}

uint64_t GTTraceEncoder_storeBytes(uint64_t a1, void *__src, size_t __n)
{
  v3 = 0;
  if (__src)
  {
    v4 = __n;
    if (__n)
    {
      v3 = *(a1 + 41);
      if (v3 + __n > 0x40)
      {
        v7 = *(*(a1 + 8) + 24);
        v3 = *(a1 + 42);
        *(a1 + 42) = v3 + 1;
        if (__n << 32)
        {
          v8 = __n;
          Bytes = GTTraceMemPool_allocateBytes(v7, *(a1 + 24), (__n << 32) | v3);
          memcpy(Bytes + 16, __src, v8);
        }
      }

      else
      {
        memcpy((*(a1 + 16) + v3), __src, __n);
        *(a1 + 41) += (v4 + 7) & 0xF8;
      }
    }
  }

  return v3;
}

void GTTraceContext_popEncoder(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  s();
  *v3 = v4;
  *(v3 + 8) = *(v5 + 40);
  *(*(v5 + 16) + 15) |= 8u;
}

void *GTTraceEncoder_setStream(uint64_t *a1, uint64_t a2)
{
  result = GTTraceEncoder_setStream_(a1, a2);
  v4 = atomic_load((*a1 + 128));
  if (v4)
  {
    v5 = *a1;
    v6 = a1[3];

    return GTTraceContext_backtrace(v5, v6);
  }

  return result;
}

char *GTTraceEncoder_allocateArguments(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  *(v3 + 8) = a2;
  if (a3)
  {
    v4 = *(a1 + 41);
    if ((v4 + a3) > 0x40)
    {
      v6 = *(*(a1 + 8) + 24);
      v7 = *(a1 + 42);
      *(a1 + 42) = v7 + 1;
      v5 = GTTraceMemPool_allocateBytes(v6, *(a1 + 24), v7 | (a3 << 32)) + 16;
      LOBYTE(v4) = v7;
    }

    else
    {
      v5 = (v3 + v4);
      *(a1 + 41) = v4 + a3;
    }
  }

  else
  {
    v5 = 0;
    LOBYTE(v4) = 0;
  }

  *(v3 + 13) = v4;
  return v5;
}

uint64_t GTTraceEncoder_storeBlob(uint64_t a1, const void *a2, uint64_t a3)
{
  v3 = 0;
  if (a2)
  {
    if (a3)
    {
      v4 = *(*(a1 + 8) + 24);
      v3 = *(a1 + 42);
      *(a1 + 42) = v3 + 1;
      if (a3 << 32)
      {
        v6 = a3;
        Bytes = GTTraceMemPool_allocateBytes(v4, *(a1 + 24), (a3 << 32) | v3);
        memcpy(Bytes + 16, a2, v6);
      }
    }
  }

  return v3;
}

char *GTTraceEncoder_allocateBlobWithType(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v4 = *(*(a1 + 8) + 24);
  v5 = *(a1 + 24);
  v6 = *(a1 + 42);
  *(a1 + 42) = v6 + 1;
  return GTTraceMemPool_allocateBytes(v4, v5, (a2 << 32) | (a3 << 16) | (a4 << 8) | v6);
}

__n128 GTTraceEncoder_cloneToStream(uint64_t a1, uint64_t a2)
{
  *(*(a1 + 16) + 15) |= 8u;
  PushFunc(a2);
  v3 = *(a1 + 16);
  v5 = *(v3 + 32);
  result = *(v3 + 48);
  v6 = *(v3 + 16);
  *v7 = *v3;
  *(v7 + 16) = v6;
  *(v7 + 32) = v5;
  *(v7 + 48) = result;
  return result;
}

uint64_t GTTraceStream_uniqueIdentifier(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t GTTraceStream_deviceObject(uint64_t a1)
{
  if (a1)
  {
    v1 = atomic_load((a1 + 56));
    v2 = a1 + (~(v1 >> 2) & 8);
  }

  else
  {
    v2 = 8;
  }

  return *v2;
}

uint64_t GTTraceStream_deviceObjectOrNULL(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  entry = find_entry(a1, &v6, 8uLL, 0);
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

uint64_t GTTraceStream_setBoundTimestamp(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = atomic_load((result + 56));
    v3 = v2;
    do
    {
      atomic_compare_exchange_strong((result + 56), &v3, v2 & 0x3F | a2 & 0xFFFFFFFFFFFFFFC0);
      v4 = v3 == v2;
      v2 = v3;
    }

    while (!v4);
  }

  return result;
}

uint64_t GTTraceStream_touchBoundTimestamp(uint64_t a1)
{
  result = mach_absolute_time();
  if (a1)
  {
    v3 = atomic_load((a1 + 56));
    v4 = v3;
    do
    {
      atomic_compare_exchange_strong((a1 + 56), &v4, v3 & 0x3F | result & 0xFFFFFFFFFFFFFFC0);
      v5 = v4 == v3;
      v3 = v4;
    }

    while (!v5);
  }

  return result;
}

uint64_t GTTraceStream_touchResourceUsage(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = atomic_load((result + 56));
    v3 = v2;
    do
    {
      atomic_compare_exchange_strong((result + 56), &v3, v2 | a2);
      v4 = v3 == v2;
      v2 = v3;
    }

    while (!v4);
  }

  return result;
}

uint64_t GTTraceStream_touchUpdated(uint64_t result)
{
  if (result)
  {
    v1 = atomic_load((result + 56));
    v2 = v1;
    do
    {
      atomic_compare_exchange_strong((result + 56), &v2, v1 | 8);
      v3 = v2 == v1;
      v1 = v2;
    }

    while (!v3);
  }

  return result;
}

uint64_t GTTraceStream_resetUpdated(uint64_t result)
{
  if (result)
  {
    v1 = atomic_load((result + 56));
    v2 = v1;
    do
    {
      atomic_compare_exchange_strong((result + 56), &v2, v1 & 0xFFFFFFFFFFFFFFF7);
      v3 = v2 == v1;
      v1 = v2;
    }

    while (!v3);
  }

  return result;
}

uint64_t GTTraceStream_resourceUsage(uint64_t result)
{
  if (result)
  {
    v1 = atomic_load((result + 56));
    return v1 & 3;
  }

  return result;
}

unint64_t GTTraceStream_boundTimestamp(unint64_t result)
{
  if (result)
  {
    v1 = atomic_load((result + 56));
    return v1 & 0xFFFFFFFFFFFFFFC0;
  }

  return result;
}

uint64_t GTTraceStream_updated(uint64_t result)
{
  if (result)
  {
    v1 = atomic_load((result + 56));
    return (v1 >> 3) & 1;
  }

  return result;
}

uint64_t GTTraceStream_markForDeferredClose(uint64_t result)
{
  if (result)
  {
    v1 = atomic_load((result + 56));
    v2 = v1;
    do
    {
      atomic_compare_exchange_strong((result + 56), &v2, v1 | 0x10);
      v3 = v2 == v1;
      v1 = v2;
    }

    while (!v3);
  }

  return result;
}

uint64_t GTTraceStream_firstFunc(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 32);
    if (v1 && (*(v1 + 79) & 8) != 0)
    {
      return v1 + 64;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t GTTraceStream_lastFunc(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = atomic_load((v1 + 4));
    if (v2 < 0x80)
    {
LABEL_7:
      v1 = *(a1 + 32);
      if (v1)
      {
        v6 = 0;
        while (1)
        {
          v7 = atomic_load((v1 + 4));
          v8 = v6 + (v7 >> 6) - 1;
          if (v8 > 0)
          {
            break;
          }

          v1 = *(v1 + 40);
          v6 = v8;
          if (!v1)
          {
            return v1;
          }
        }

        v9 = v6;
        v10 = (0xFFFFFFFF00000001 * v6) >> 32;
        if ((*(v1 + (v10 << 6) + 79) & 8) != 0)
        {
          do
          {
            v11 = v1;
            v12 = v10;
            v13 = atomic_load((v1 + 4));
            v14 = (HIDWORD(v9) + 1);
            if (v14 == v9 + (v13 >> 6) - 1)
            {
              v1 = *(v11 + 40);
              if (!v1)
              {
                return v11 + (v12 << 6) + 64;
              }

              v9 = (HIDWORD(v9) + 1);
            }

            else
            {
              v9 = v9;
              v1 = v11;
            }

            v9 |= v14 << 32;
            v10 = (0xFFFFFFFF00000001 * v9) >> 32;
          }

          while ((*(v1 + (v10 << 6) + 79) & 8) != 0);
          return v11 + (v12 << 6) + 64;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      v3 = (v2 >> 6) - 2;
      v4 = v1 + 64;
      while (1)
      {
        v1 = v4 + (v3 << 6);
        if ((*(v1 + 15) & 8) != 0)
        {
          break;
        }

        v5 = __OFSUB__(v3--, 1);
        if (v3 < 0 != v5)
        {
          goto LABEL_7;
        }
      }
    }
  }

  return v1;
}

uint64_t GTTraceStream_makeIterator(uint64_t a1, int a2)
{
  result = *(a1 + 32);
  if (result)
  {
    v3 = 0;
    do
    {
      v4 = atomic_load((result + 4));
      v5 = v3 + (v4 >> 6) - 1;
      if (v5 > a2)
      {
        break;
      }

      result = *(result + 40);
      v3 = v5;
    }

    while (result);
  }

  return result;
}

uint64_t GTTraceStreamIteratorFunc(uint64_t a1)
{
  if (*a1 && (v1 = *a1 + ((*(a1 + 12) - *(a1 + 8)) << 6), (*(v1 + 79) & 8) != 0))
  {
    return v1 + 64;
  }

  else
  {
    return 0;
  }
}

_DWORD *GTTraceStreamIteratorNext(_DWORD *result)
{
  v1 = atomic_load((*result + 4));
  v2 = result[2] + (v1 >> 6);
  v3 = result[3] + 1;
  result[3] = v3;
  if (v3 == v2 - 1)
  {
    result[2] = v3;
    *result = *(*result + 40);
  }

  return result;
}

BOOL GTTraceStreamIteratorEnd(uint64_t *a1)
{
  v2 = *a1;
  result = *a1 == 0;
  if (v2)
  {
    if ((*(v2 + ((*(a1 + 3) - *(a1 + 2)) << 6) + 79) & 8) == 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t GTTraceFuncGetAttribs(uint64_t result, _BYTE *a2)
{
  if (result)
  {
    entry = find_entry(result, a2, 8uLL, 0);
    if (*entry)
    {
      return *(*entry + 32);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t GTMTLGPUAddressResource_compare(void *a1, void *a2)
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

void *GTMTLGPUAddressResource_resourceForGPUAddress(void *a1, unint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a1;
  do
  {
    v4 = &v3[4 * (a2 >> 1)];
    v6 = *v4;
    v5 = v4 + 4;
    v7 = v6 > a3;
    if (v6 <= a3)
    {
      a2 += ~(a2 >> 1);
    }

    else
    {
      a2 >>= 1;
    }

    if (!v7)
    {
      v3 = v5;
    }
  }

  while (a2);
  if (v3 == a1)
  {
    return 0;
  }

  result = v3 - 4;
  v9 = *(v3 - 4);
  if (!v9 || *(v3 - 3) + v9 <= a3)
  {
    return 0;
  }

  return result;
}

uint64_t GTMTLGPUAddressResource_translateToResourceOffset@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (result)
  {
    v3 = a2 - *result;
    *a3 = *(result + 16);
    a3[1] = v3;
    *(a3 + 16) = *(result + 24);
  }

  return result;
}

uint64_t GTMTLUniqueIdentifierResource_resourceForIdentifier(uint64_t a1, uint64_t a2)
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

uint64_t GTMTLUniqueIdentifierResource_resourceForGPUResourceID(uint64_t a1, uint64_t a2)
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

uint64_t GTMTLUniqueIdentifierResource_resourceForGPUResourceIDWithType(uint64_t a1, int a2, uint64_t a3)
{
  v5 = 0;
  if (a2 > 115)
  {
    if (a2 > 138)
    {
      if (a2 == 139)
      {
        v6 = 24;
      }

      else
      {
        if (a2 != 140)
        {
          goto LABEL_25;
        }

        v6 = 16;
      }
    }

    else if ((a2 - 117) >= 2)
    {
      if (a2 != 116)
      {
        goto LABEL_25;
      }

      v6 = 72;
    }

    else
    {
      v6 = 80;
    }
  }

  else if (a2 > 78)
  {
    switch(a2)
    {
      case 'O':
        v6 = 48;
        break;
      case 'P':
        v6 = 56;
        break;
      case 's':
        v6 = 64;
        break;
      default:
        goto LABEL_25;
    }
  }

  else
  {
    switch(a2)
    {
      case ':':
        v6 = 8;
        break;
      case ';':
        v6 = 32;
        break;
      case 'N':
        v6 = 40;
        break;
      default:
        goto LABEL_25;
    }
  }

  v5 = *(a1 + v6);
LABEL_25:
  v9[1] = v3;
  v9[2] = v4;
  v9[0] = a3;
  entry = find_entry(v5, v9, 8uLL, 0);
  if (*entry)
  {
    return *(*entry + 32);
  }

  else
  {
    return 0;
  }
}

uint64_t GTMTLIndirectResources_renderPipelineIdForUniqueIdentifier(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v6 = a2;
  entry = find_entry(v2, &v6, 8uLL, 0);
  if (*entry && (v4 = *(*entry + 32)) != 0)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t GTMTLIndirectResources_computePipelineIdForUniqueIdentifier(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v6 = a2;
  entry = find_entry(v2, &v6, 8uLL, 0);
  if (*entry && (v4 = *(*entry + 32)) != 0)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t GTMTLIndirectResources_depthStencilStateIdForUniqueIdentifier(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v6 = a2;
  entry = find_entry(v2, &v6, 8uLL, 0);
  if (*entry && (v4 = *(*entry + 32)) != 0)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t GTMTLIndirectResources_renderPipelineIdForGPUResourceID(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v6 = a2;
  entry = find_entry(v2, &v6, 8uLL, 0);
  if (*entry && (v4 = *(*entry + 32)) != 0)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t GTMTLIndirectResources_computePipelineIdForGPUResourceID(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v6 = a2;
  entry = find_entry(v2, &v6, 8uLL, 0);
  if (*entry && (v4 = *(*entry + 32)) != 0)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

void GTMTLUniqueIdentifierResource_fillHashMap(char *key, int a2, apr_hash_t *ht)
{
  if (a2 >= 1)
  {
    v5 = a2;
    do
    {
      apr_hash_set(ht, key, 8, key);
      key += 32;
      --v5;
    }

    while (v5);
  }
}

void GTMTLUniqueIdentifierResource_fillHashMapByKey(char *val, int a2, int a3, apr_hash_t *ht)
{
  if (a2 >= 1)
  {
    v7 = 0;
    v8 = a2;
    v9 = val;
    do
    {
      v10 = &val[32 * v7];
      v11 = v10 + 16;
      v12 = v10 + 24;
      if (a3 != 2)
      {
        v12 = v9;
      }

      if (a3 == 1)
      {
        v13 = v11;
      }

      else
      {
        v13 = v12;
      }

      apr_hash_set(ht, v13, 8, v9);
      ++v7;
      v9 += 32;
      --v8;
    }

    while (v8);
  }
}

void GTMTLIndirectResources_optimizeByKey(apr_pool_t *pool@<X2>, uint64_t *a2@<X0>, int a3@<W1>, uint64_t *a4@<X8>)
{
  v8 = *a2;
  *a4 = *a2;
  v9 = apr_hash_make(pool);
  a4[1] = v9;
  v10 = apr_hash_make(pool);
  a4[2] = v10;
  v11 = apr_hash_make(pool);
  a4[3] = v11;
  v12 = apr_hash_make(pool);
  a4[4] = v12;
  v13 = apr_hash_make(pool);
  a4[5] = v13;
  ht = apr_hash_make(pool);
  a4[6] = ht;
  v22 = apr_hash_make(pool);
  a4[7] = v22;
  v23 = apr_hash_make(pool);
  a4[8] = v23;
  v24 = apr_hash_make(pool);
  a4[9] = v24;
  v25 = apr_hash_make(pool);
  a4[10] = v25;
  v14 = apr_hash_make(pool);
  a4[11] = v14;
  a4[12] = 0;
  qsort(*(v8 + 24), *(v8 + 12), *(v8 + 8), GTMTLGPUAddressResource_compare);
  GTMTLUniqueIdentifierResource_fillHashMapByKey(*(a2[2] + 24), *(a2[2] + 12), a3, v9);
  GTMTLUniqueIdentifierResource_fillHashMapByKey(*(a2[1] + 24), *(a2[1] + 12), a3, v10);
  GTMTLUniqueIdentifierResource_fillHashMapByKey(*(a2[10] + 24), *(a2[10] + 12), a3, v11);
  GTMTLUniqueIdentifierResource_fillHashMapByKey(*(a2[3] + 24), *(a2[3] + 12), a3, v12);
  GTMTLUniqueIdentifierResource_fillHashMapByKey(*(a2[4] + 24), *(a2[4] + 12), a3, v13);
  GTMTLUniqueIdentifierResource_fillHashMapByKey(*(a2[5] + 24), *(a2[5] + 12), a3, ht);
  GTMTLUniqueIdentifierResource_fillHashMapByKey(*(a2[6] + 24), *(a2[6] + 12), a3, v22);
  GTMTLUniqueIdentifierResource_fillHashMapByKey(*(a2[7] + 24), *(a2[7] + 12), a3, v23);
  GTMTLUniqueIdentifierResource_fillHashMapByKey(*(a2[8] + 24), *(a2[8] + 12), a3, v24);
  GTMTLUniqueIdentifierResource_fillHashMapByKey(*(a2[9] + 24), *(a2[9] + 12), a3, v25);
  v15 = a2[11];
  v16 = *(v15 + 24);
  v17 = *(v15 + 12);
  if (a3 == 1)
  {
    v18 = *(v15 + 24);
    v19 = *(v15 + 12);

    GTMTLResourceViewPoolResource_fillHashMapWithArraysByResourceID(v18, v19, v14);
  }

  else if (v17 >= 1)
  {
    v20 = qword_29BD60[a3];
    do
    {
      apr_hash_set(v14, &v16[v20], 8, v16);
      v16 += 24;
      --v17;
    }

    while (v17);
  }
}

__n128 GTMTLResourceViewPoolResource_fillHashMapWithArraysByResourceID(__n128 *a1, int a2, apr_pool_t **a3)
{
  if (a2 >= 1)
  {
    v4 = a2;
    v5 = a1 + 1;
    do
    {
      v6 = *find_entry(a3, v5, 8uLL, 0);
      if (!v6 || (v7 = *(v6 + 32)) == 0)
      {
        v7 = apr_array_make(*a3, 4, 24);
        apr_hash_set(a3, v5, 8, v7);
      }

      v8 = apr_array_push(v7);
      v9 = v5->n128_u64[0];
      result = v5[-1];
      *v8 = result;
      v8[1].n128_u64[0] = v9;
      v5 = (v5 + 24);
      --v4;
    }

    while (v4);
  }

  return result;
}

void GTMTLResourceViewPoolResource_fillHashMapByKey(char *val, int a2, char a3, apr_hash_t *ht)
{
  if (a2 >= 1)
  {
    v6 = a2;
    v7 = qword_29BD60[a3];
    do
    {
      apr_hash_set(ht, &val[v7], 8, val);
      val += 24;
      --v6;
    }

    while (v6);
  }
}

void GTMTLIndirectResources_allResourcesByKey(apr_pool_t *p@<X3>, _DWORD **a2@<X0>, unint64_t a3@<X1>, int a4@<W2>, uint64_t *a5@<X8>)
{
  v8 = apr_array_make(p, 32, 8);
  v8->nelts = 0;
  GTMTLSMContext_getObjects(a2[1], a3, v8);
  v9 = apr_array_make(p, v8->nelts, 32);
  v114[0] = v9;
  if (v8->nelts >= 1)
  {
    v10 = 0;
    do
    {
      v11 = *&v8->elts[8 * v10];
      v12 = apr_array_push(v9);
      v13 = v11->i64[1];
      *v12 = vextq_s8(v11[7], v11[7], 8uLL);
      ++v10;
      v12[1].i64[0] = v13;
      v12[1].i64[1] = 0;
    }

    while (v10 < v8->nelts);
  }

  v118 = 0u;
  v117 = 0u;
  v116 = 0u;
  v115 = 0u;
  v8->nelts = 0;
  GTMTLSMContext_getObjects(a2[3], a3, v8);
  v14 = apr_array_make(p, v8->nelts, 32);
  v114[2] = v14;
  if (v8->nelts >= 1)
  {
    v15 = v14;
    v16 = 0;
    do
    {
      v17 = *&v8->elts[8 * v16];
      v18 = apr_array_push(v15);
      v19 = v17[1];
      *v18 = v17[22];
      v18[1] = v19;
      v18[2] = v17[26];
      v20 = apr_array_push(v9);
      v21 = v17[8];
      v22 = v17[1];
      *v20 = v17[27];
      *(v20 + 1) = v21;
      *(v20 + 2) = v22;
      v20[24] = 2;
      *(v20 + 25) = 0;
      *(v20 + 7) = 0;
      ++v16;
    }

    while (v16 < v8->nelts);
  }

  v8->nelts = 0;
  GTMTLSMContext_getObjects(a2[2], a3, v8);
  v23 = apr_array_make(p, v8->nelts, 32);
  v114[1] = v23;
  if (v8->nelts >= 1)
  {
    v24 = v23;
    v25 = 0;
    do
    {
      v26 = *&v8->elts[8 * v25];
      v27 = apr_array_push(v24);
      v28 = v26[1];
      *v27 = v26[39];
      v27[1] = v28;
      v27[2] = v26[37];
      ++v25;
    }

    while (v25 < v8->nelts);
  }

  v8->nelts = 0;
  GTMTLSMContext_getObjects(a2[4], a3, v8);
  v29 = apr_array_make(p, v8->nelts, 32);
  v114[3] = v29;
  if (v8->nelts >= 1)
  {
    v30 = v29;
    v31 = 0;
    do
    {
      v32 = *&v8->elts[8 * v31];
      v33 = apr_array_push(v30);
      v34 = v32[1];
      v35 = v32[9];
      *v33 = v32[8];
      v33[1] = v34;
      v33[2] = v35;
      ++v31;
    }

    while (v31 < v8->nelts);
  }

  v8->nelts = 0;
  GTMTLSMContext_getObjects(a2[11], a3, v8);
  v36 = apr_array_make(p, v8->nelts, 32);
  *&v118 = v36;
  nelts = v8->nelts;
  if (nelts >= 1)
  {
    v38 = v36;
    for (i = 0; i < nelts; ++i)
    {
      v40 = *&v8->elts[8 * i];
      if (v40[6])
      {
        v41 = apr_array_push(v38);
        v42 = v40[1];
        v43 = v40[9];
        *v41 = v40[8];
        v41[1] = v42;
        v41[2] = v43;
        nelts = v8->nelts;
      }
    }
  }

  v8->nelts = 0;
  GTMTLSMContext_getObjects(a2[5], a3, v8);
  v44 = apr_array_make(p, v8->nelts, 32);
  *&v115 = v44;
  v45 = v8->nelts;
  if (v45 >= 1)
  {
    v46 = v44;
    for (j = 0; j < v45; ++j)
    {
      v48 = *&v8->elts[8 * j];
      if (GTMTLSMPipelineState_supportsIndirectCommandBuffers(v48))
      {
        v49 = apr_array_push(v46);
        v50 = v48[1];
        *v49 = v48[15];
        v49[1] = v50;
        v49[2] = v48[17];
        v45 = v8->nelts;
      }
    }
  }

  v8->nelts = 0;
  GTMTLSMContext_getObjects(a2[6], a3, v8);
  v51 = apr_array_make(p, v8->nelts, 32);
  *(&v115 + 1) = v51;
  v52 = v8->nelts;
  if (v52 >= 1)
  {
    v53 = v51;
    for (k = 0; k < v52; ++k)
    {
      v55 = *&v8->elts[8 * k];
      if (GTMTLSMPipelineState_supportsIndirectCommandBuffers(v55))
      {
        v56 = apr_array_push(v53);
        v57 = v55[1];
        *v56 = v55[15];
        v56[1] = v57;
        v56[2] = v55[17];
        v52 = v8->nelts;
      }
    }
  }

  v8->nelts = 0;
  GTMTLSMContext_getObjects(a2[7], a3, v8);
  v58 = apr_array_make(p, v8->nelts, 32);
  *&v116 = v58;
  if (v8->nelts >= 1)
  {
    v59 = v58;
    v60 = 0;
    do
    {
      v61 = *&v8->elts[8 * v60];
      v62 = apr_array_push(v59);
      v63 = v61[1];
      v64 = v61[17];
      *v62 = v61[16];
      v62[1] = v63;
      v62[2] = v64;
      ++v60;
    }

    while (v60 < v8->nelts);
  }

  v8->nelts = 0;
  GTMTLSMContext_getObjects(a2[8], a3, v8);
  v65 = apr_array_make(p, v8->nelts, 32);
  *(&v116 + 1) = v65;
  if (v8->nelts >= 1)
  {
    v66 = v65;
    v67 = 0;
    do
    {
      v68 = *&v8->elts[8 * v67];
      v69 = apr_array_push(v66);
      v70 = *(v68 + 8);
      *v69 = *(v68 + 144);
      v69[1] = v70;
      *(v69 + 1) = *(v68 + 160);
      v71 = apr_array_push(v9);
      v72 = *(v68 + 8);
      *v71 = *(v68 + 168);
      *(v71 + 1) = 8;
      *(v71 + 2) = v72;
      v71[24] = 7;
      *(v71 + 25) = 0;
      *(v71 + 7) = 0;
      ++v67;
    }

    while (v67 < v8->nelts);
  }

  v8->nelts = 0;
  GTMTLSMContext_getObjects(a2[9], a3, v8);
  v73 = apr_array_make(p, v8->nelts, 32);
  *&v117 = v73;
  if (v8->nelts >= 1)
  {
    v74 = v73;
    v75 = 0;
    do
    {
      v76 = *&v8->elts[8 * v75];
      v77 = apr_array_push(v74);
      v78 = v76[1];
      v79 = v76[20];
      *v77 = v76[19];
      v77[1] = v78;
      v77[2] = v79;
      ++v75;
    }

    while (v75 < v8->nelts);
  }

  v8->nelts = 0;
  GTMTLSMContext_getObjects(a2[10], a3, v8);
  v80 = apr_array_make(p, v8->nelts, 32);
  *(&v117 + 1) = v80;
  if (v8->nelts >= 1)
  {
    v81 = v80;
    v82 = 0;
    do
    {
      v83 = *&v8->elts[8 * v82];
      v84 = apr_array_push(v81);
      v85 = v83[1];
      v86 = v83[18];
      *v84 = v83[17];
      v84[1] = v85;
      v84[2] = v86;
      v87 = apr_array_push(v9);
      v88 = v83[8];
      v89 = v83[1];
      *v87 = v83[21];
      *(v87 + 1) = v88;
      *(v87 + 2) = v89;
      v87[24] = 9;
      *(v87 + 25) = 0;
      *(v87 + 7) = 0;
      ++v82;
    }

    while (v82 < v8->nelts);
  }

  v8->nelts = 0;
  GTMTLSMContext_getObjects(a2[12], a3, v8);
  v90 = v8->nelts;
  if (v90 < 1)
  {
    LODWORD(v92) = 0;
    v93 = a4;
    v94 = a5;
  }

  else
  {
    v91 = 0;
    v92 = 0;
    v93 = a4;
    v94 = a5;
    do
    {
      v95 = *&v8->elts[8 * v91];
      v96 = *(v95 + 64);
      if (v96 >= 1)
      {
        do
        {
          v92 += *(v95 + 80);
          v95 = *(v95 + 32);
          --v96;
        }

        while (v96);
      }

      ++v91;
    }

    while (v91 != v90);
  }

  v97 = apr_array_make(p, v92, 24);
  *(&v118 + 1) = v97;
  if (v8->nelts >= 1)
  {
    v98 = 0;
    elts = v8->elts;
    do
    {
      v100 = *&elts[8 * v98];
      v101 = *(v100 + 64);
      if (v101 >= 1)
      {
        v102 = 0;
        v103 = *(v100 + 64);
        v104 = *&elts[8 * v98];
        do
        {
          v102 += *(v104 + 80);
          v104 = *(v104 + 32);
          --v103;
        }

        while (v103);
        v97->nelts += v102;
        do
        {
          v105 = *(v100 + 80);
          if (v105)
          {
            v106 = 0;
            v107 = *(v100 + 72);
            v108 = *(v100 + 32);
            v109 = &v97->elts[24 * v102 - 24 * v105 + 8];
            do
            {
              v110 = *(v108 + 24);
              v111 = v106 + *(v100 + 96);
              *(v109 - 1) = *(v107 + 8 * v106);
              *v109 = v110;
              *(v109 + 1) = v111;
              ++v106;
              v109 += 24;
            }

            while (*(v100 + 80) > v106);
          }

          else
          {
            v108 = *(v100 + 32);
          }

          v102 -= v105;
          ++v103;
          v100 = v108;
        }

        while (v103 != v101);
      }

      ++v98;
    }

    while (v98 < v8->nelts);
  }

  GTMTLIndirectResources_optimizeByKey(p, v114, v93, v94);
}

uint64_t GTMTLUniqueIdentifierResource_getKey(uint64_t a1, int a2)
{
  v2 = a1 + 16;
  if (a2 != 1)
  {
    v2 = a1;
  }

  if (a2 == 2)
  {
    return a1 + 24;
  }

  else
  {
    return v2;
  }
}

uint64_t GTMTLResourceViewPoolResource_getKey(uint64_t a1, int a2)
{
  v2 = a1 + 16;
  if (a2 != 1)
  {
    v2 = a1 + 8;
  }

  if (a2 == 2)
  {
    v2 = a1 + 8;
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return a1 + 8;
  }
}

apr_hash_index_t *GTMTLIndirectResources_rehash@<X0>(apr_pool_t *p@<X2>, apr_hash_index_t *result@<X0>, int a3@<W1>, uint64_t a4@<X8>)
{
  v4 = result;
  if (*(result + 96) == a3)
  {
    v6 = *(result + 5);
    *(a4 + 64) = *(result + 4);
    *(a4 + 80) = v6;
    *(a4 + 96) = *(result + 12);
    v7 = *(result + 1);
    *a4 = *result;
    *(a4 + 16) = v7;
    v8 = *(result + 3);
    *(a4 + 32) = *(result + 2);
    *(a4 + 48) = v8;
  }

  else
  {
    LODWORD(v10) = a3;
    *a4 = apr_array_copy(p, *result);
    v11 = apr_hash_make(p);
    *(a4 + 8) = v11;
    v12 = apr_hash_make(p);
    *(a4 + 16) = v12;
    v13 = apr_hash_make(p);
    *(a4 + 24) = v13;
    v14 = apr_hash_make(p);
    *(a4 + 32) = v14;
    v15 = apr_hash_make(p);
    *(a4 + 40) = v15;
    v16 = apr_hash_make(p);
    *(a4 + 48) = v16;
    v40 = apr_hash_make(p);
    *(a4 + 56) = v40;
    v41 = apr_hash_make(p);
    *(a4 + 64) = v41;
    v42 = apr_hash_make(p);
    *(a4 + 72) = v42;
    v43 = apr_hash_make(p);
    *(a4 + 80) = v43;
    v17 = apr_hash_make(p);
    *(a4 + 88) = v17;
    *(a4 + 96) = v10;
    *(a4 + 97) = 0;
    *(a4 + 100) = 0;
    GTMTLUniqueIdentifierResource_fillHashMapByKey_apr_ht(*(v4 + 1), v10, v11);
    GTMTLUniqueIdentifierResource_fillHashMapByKey_apr_ht(*(v4 + 2), v10, v12);
    GTMTLUniqueIdentifierResource_fillHashMapByKey_apr_ht(*(v4 + 3), v10, v13);
    GTMTLUniqueIdentifierResource_fillHashMapByKey_apr_ht(*(v4 + 4), v10, v14);
    GTMTLUniqueIdentifierResource_fillHashMapByKey_apr_ht(*(v4 + 5), v10, v15);
    GTMTLUniqueIdentifierResource_fillHashMapByKey_apr_ht(*(v4 + 6), v10, v16);
    GTMTLUniqueIdentifierResource_fillHashMapByKey_apr_ht(*(v4 + 7), v10, v40);
    GTMTLUniqueIdentifierResource_fillHashMapByKey_apr_ht(*(v4 + 8), v10, v41);
    GTMTLUniqueIdentifierResource_fillHashMapByKey_apr_ht(*(v4 + 9), v10, v42);
    result = GTMTLUniqueIdentifierResource_fillHashMapByKey_apr_ht(*(v4 + 10), v10, v43);
    v18 = *(v4 + 96);
    if (v10 == 1)
    {
      if (v18 != 1)
      {
        v19 = *(v4 + 11);
        v20 = *v17;
        *(v19 + 24) = 0;
        *(v19 + 32) = 0;
        *(v19 + 16) = v19;
        *(v19 + 40) = 0;
        result = apr_hash_next((v19 + 16));
        if (result)
        {
          v21 = result;
          do
          {
            v22 = *(*(v21 + 1) + 32);
            v23 = *find_entry(v17, (v22 + 16), 8uLL, 0);
            if (!v23 || (v24 = *(v23 + 32)) == 0)
            {
              v24 = apr_array_make(v20, 4, 24);
              v25 = apr_palloc(v20, 8uLL);
              *v25 = *(v22 + 16);
              apr_hash_set(v17, v25, 8, v24);
            }

            v26 = apr_array_push(v24);
            v27 = *(v22 + 16);
            *v26 = *v22;
            v26[2] = v27;
            result = apr_hash_next(v21);
            v21 = result;
          }

          while (result);
        }
      }
    }

    else
    {
      v28 = *(v4 + 11);
      if (v18 == 1)
      {
        *(v28 + 24) = 0;
        *(v28 + 32) = 0;
        *(v28 + 16) = v28;
        *(v28 + 40) = 0;
        result = apr_hash_next((v28 + 16));
        if (result)
        {
          v29 = result;
          v30 = v10;
          do
          {
            v31 = *(*(v29 + 1) + 32);
            v32 = *(v31 + 12);
            if (v32 >= 1)
            {
              v33 = *(v31 + 24);
              v34 = qword_29BD60[v30];
              do
              {
                apr_hash_set(v17, &v33[v34], 8, v33);
                v33 += 24;
                --v32;
              }

              while (v32);
            }

            result = apr_hash_next(v29);
            v29 = result;
          }

          while (result);
        }
      }

      else
      {
        v35 = *v17;
        *(v28 + 24) = 0;
        *(v28 + 32) = 0;
        *(v28 + 16) = v28;
        *(v28 + 40) = 0;
        result = apr_hash_next((v28 + 16));
        if (result)
        {
          v36 = result;
          v10 = v10;
          do
          {
            v37 = *(*(v36 + 1) + 32);
            v38 = apr_palloc(v35, 0x20uLL);
            v39 = *(v37 + 16);
            *v38 = *v37;
            v38[2] = v39;
            apr_hash_set(v17, v38 + qword_29BD60[v10], 8, v38);
            result = apr_hash_next(v36);
            v36 = result;
          }

          while (result);
        }
      }
    }
  }

  return result;
}

apr_hash_index_t *GTMTLUniqueIdentifierResource_fillHashMapByKey_apr_ht(uint64_t a1, int a2, apr_hash_t *a3)
{
  v5 = *a3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = a1;
  *(a1 + 40) = 0;
  result = apr_hash_next((a1 + 16));
  if (result)
  {
    v7 = result;
    do
    {
      v8 = *(*(v7 + 1) + 32);
      v9 = apr_palloc(v5, 0x20uLL);
      v10 = v8[1];
      *v9 = *v8;
      v9[1] = v10;
      v11 = v9 + 1;
      if (a2 != 1)
      {
        v11 = v9;
      }

      if (a2 == 2)
      {
        v12 = v9 + 24;
      }

      else
      {
        v12 = v11;
      }

      apr_hash_set(a3, v12, 8, v9);
      result = apr_hash_next(v7);
      v7 = result;
    }

    while (result);
  }

  return result;
}

uint64_t GTMTLResourceViewPoolResourceArray_resourceForUniqueIdentifier(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 12);
  if (v2)
  {
    v3 = *(a1 + 24);
    do
    {
      v4 = v2 >> 1;
      v5 = v3 + 24 * (v2 >> 1);
      v6 = *(v5 + 8);
      v7 = v5 + 24;
      v2 += ~(v2 >> 1);
      if (v6 <= a2)
      {
        v3 = v7;
      }

      else
      {
        v2 = v4;
      }
    }

    while (v2);
  }

  else
  {
    v3 = *(a1 + 24);
  }

  if (v3 == *(a1 + 24))
  {
    return 0;
  }

  else
  {
    return v3 - 24;
  }
}

uint64_t GTMTLTensorDataType_bytesLength(unsigned int a1)
{
  if (a1 <= 0x29)
  {
    if (((1 << a1) & 0x220000008) != 0)
    {
      return 4;
    }

    if (((1 << a1) & 0x22000010000) != 0)
    {
      return 2;
    }
  }

  if (a1 == 121)
  {
    return 2;
  }

  return 1;
}

void *GTMTLDescriptorAllocator_copyData(uint64_t a1, const void *a2, size_t __n, int a4)
{
  if (__n)
  {
    v4 = *(a1 + 592);
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 592) += __n;
  if (a4)
  {
    memcpy(v4, a2, __n);
  }

  return v4;
}

uint64_t GTMTLDescriptorAllocator_size(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  do
  {
    v2 += (*(a1 + v1) + 7) & 0xFFFFFFFFFFFFFFF8;
    v1 += 8;
  }

  while (v1 != 600);
  return v2;
}

uint64_t GTMTLDescriptorAllocator_rebase(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 600; i += 8)
  {
    if (((*(result + i) + 7) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v3 = a2;
    }

    else
    {
      v3 = 0;
    }

    a2 += (*(result + i) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(result + i) = v3;
  }

  return result;
}

void *GTMPSDescriptorAllocator_copyData(uint64_t a1, const void *a2, size_t __n, int a4)
{
  if (__n)
  {
    v4 = *(a1 + 72);
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 72) += __n;
  if (a4)
  {
    memcpy(v4, a2, __n);
  }

  return v4;
}

void *GTMPSDescriptorAllocator_copyFloats(uint64_t a1, const void *a2, uint64_t a3, int a4)
{
  v5 = *(a1 + 64);
  if (a3)
  {
    result = *(a1 + 64);
  }

  else
  {
    result = 0;
  }

  *(a1 + 64) = v5 + 4 * a3;
  if (a4)
  {
    return memcpy(result, a2, 4 * a3);
  }

  return result;
}

void *GTMPSDescriptorAllocator_copyFloats2(uint64_t a1, const void *a2, uint64_t a3, int a4)
{
  v5 = *(a1 + 56);
  if (a3)
  {
    result = *(a1 + 56);
  }

  else
  {
    result = 0;
  }

  *(a1 + 56) = v5 + 8 * a3;
  if (a4)
  {
    return memcpy(result, a2, 8 * a3);
  }

  return result;
}

uint64_t GTMPSDescriptorAllocator_size(uint64_t a1)
{
  v1 = 0;
  v2 = 0uLL;
  v3 = vdupq_n_s64(0xFuLL);
  v4 = vdupq_n_s64(0xFFFFFFFFFFFFFFF0);
  do
  {
    v2 = vaddq_s64(vandq_s8(vaddq_s64(*(a1 + v1), v3), v4), v2);
    v1 += 16;
  }

  while (v1 != 80);
  return vaddvq_s64(v2);
}

uint64_t GTMPSDescriptorAllocator_rebase(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 80; i += 8)
  {
    if (((*(result + i) + 15) & 0xFFFFFFFFFFFFFFF0) != 0)
    {
      v3 = a2;
    }

    else
    {
      v3 = 0;
    }

    a2 += (*(result + i) + 15) & 0xFFFFFFFFFFFFFFF0;
    *(result + i) = v3;
  }

  return result;
}

void *CopyGTMPSPluginCNNConvolutionData(void *result, __int128 *a2, int a3)
{
  v5 = result;
  v6 = *(a2 + 14);
  v7 = *(a2 + 15);
  v32 = *a2;
  v9 = *(a2 + 6);
  v8 = *(a2 + 7);
  v10 = *(a2 + 2);
  if (v6)
  {
    v11 = result[9];
  }

  else
  {
    v11 = 0;
  }

  result[9] += v6;
  if (a3)
  {
    memcpy(v11, v10, v6);
    v12 = *(a2 + 3);
    v13 = v7 == 0;
    v14 = v5 + 8;
    if (v7)
    {
      v15 = v5[8];
    }

    else
    {
      v15 = 0;
    }

    *v14 = v5[8] + 4 * v7;
    result = memcpy(v15, v12, 4 * v7);
  }

  else
  {
    v13 = v7 == 0;
    v14 = result + 8;
    if (v7)
    {
      v15 = result[8];
    }

    else
    {
      v15 = 0;
    }

    *v14 = result[8] + 4 * v7;
  }

  v16 = *(a2 + 2);
  v30 = v11;
  v31 = v8;
  if (v16 == 2)
  {
    v19 = *(a2 + 4);
    v20 = *v14;
    *v14 += 1024;
    if (a3)
    {
      result = memcpy(v20, v19, 0x400uLL);
    }

    v18 = 0;
  }

  else
  {
    if (v16 == 1)
    {
      v17 = *(a2 + 5);
      if (v13)
      {
        v18 = 0;
      }

      else
      {
        v18 = v5[7];
      }

      v5[7] += 8 * v7;
      if (a3)
      {
        result = memcpy(v18, v17, 8 * v7);
      }
    }

    else
    {
      v18 = 0;
    }

    v20 = 0;
  }

  v21 = *(a2 + 6);
  if (v21)
  {
    v22 = *v21;
    v23 = *v14;
    v24 = *v14 + 4 * v7;
    *v14 = v24;
    if (a3)
    {
      if (v13)
      {
        v25 = 0;
      }

      else
      {
        v25 = v23;
      }

      memcpy(v25, v22, 4 * v7);
      v26 = *(*(a2 + 6) + 8);
      if (v13)
      {
        v27 = 0;
      }

      else
      {
        v27 = v5[8];
      }

      v5[8] += 4 * v7;
      result = memcpy(v27, v26, 4 * v7);
      v28 = v5[6];
      *v28 = v25;
      v28[1] = v27;
    }

    else
    {
      *v14 = v24 + 4 * v7;
    }

    v9 = v5[6];
    v5[6] = v9 + 16;
  }

  if (a3)
  {
    v29 = v5[3];
    *v29 = v32;
    *(v29 + 16) = v30;
    *(v29 + 24) = v15;
    *(v29 + 32) = v20;
    *(v29 + 40) = v18;
    *(v29 + 48) = v9;
    *(v29 + 56) = v31;
  }

  v5[3] += 64;
  return result;
}

uint64_t GTMTLCounterSet_structType(const char *a1)
{
  if (!a1)
  {
    return -1;
  }

  if (!strcmp(a1, "timestamp"))
  {
    return 0;
  }

  if (!strcmp(a1, "stageutilization"))
  {
    return 1;
  }

  if (!strcmp(a1, "statistic"))
  {
    return 2;
  }

  return -1;
}

void *GTMTLDescriptorAllocator_copyString(uint64_t a1, char *__s, int a3)
{
  if (__s)
  {
    v6 = strlen(__s);
    v7 = (a1 + 592);
    v8 = *(a1 + 592);
    v9 = v6 + 1;
    if (v6 != -1)
    {
      v10 = *(a1 + 592);
      goto LABEL_6;
    }
  }

  else
  {
    v7 = (a1 + 592);
    v8 = *(a1 + 592);
  }

  v9 = 0;
  v10 = 0;
LABEL_6:
  *v7 = v8 + v9;
  if (a3)
  {
    memcpy(v10, __s, v9);
  }

  return v10;
}

_OWORD *GTCaptureArchive_open(const char *a1, apr_pool_t *a2, _OWORD *a3)
{
  bzero(v58, 0x400uLL);
  v6 = realpath_DARWIN_EXTSN(a1, v58);
  memset(&v57.st_blksize, 0, 32);
  if (v6)
  {
    a1 = v6;
  }

  memset(&v57, 0, 112);
  v7 = gt_filepath_merge(a1, "index", a2);
  v8 = open(v7, 0);
  if (v8 < 0)
  {
    if (a3)
    {
      v56.st_dev = *a3;
      *&v56.st_mode = 502;
      v11 = "fd >= 0";
      v56.st_ino = "index";
LABEL_35:
      *&v56.st_uid = v11;
      v56.st_atimespec.tv_nsec = 0;
      GTError_addError(a3, &v56);
      return 0;
    }
  }

  else
  {
    v9 = v8;
    fstat(v8, &v57);
    v10 = mmap(0, v57.st_size, 1, 2, v9, 0);
    close(v9);
    if (v10 == -1)
    {
      if (a3)
      {
        v56.st_dev = *a3;
        *&v56.st_mode = 502;
        v11 = "header != MAP_FAILED";
        goto LABEL_34;
      }
    }

    else if (v57.st_size <= 0x13uLL)
    {
      if (a3)
      {
        v56.st_dev = *a3;
        *&v56.st_mode = 502;
        v11 = "indexStat.st_size >= sizeof(dy_capture_index_header_t)";
        goto LABEL_34;
      }
    }

    else if (*v10 == 1667851384 || !v10[1])
    {
      v12 = v10[2];
      if (v57.st_size - 20 >= (12 * v12))
      {
        v13 = &v10[3 * v12 + 5];
        v14 = v10[3];
        if (v10 + v57.st_size - v13 >= 24 * v14)
        {
          v15 = v13 + 24 * v14;
          v16 = v10[4];
          if (v10 + v57.st_size - v15 >= 2 * v16)
          {
            p = a2;
            v17 = apr_array_make(a2, v16, 8);
            v18 = v10[4];
            if (v18)
            {
              v19 = 0;
              v20 = v10 + v57.st_size;
              v21 = v15 + 2 * v18;
              while (v20 > v21)
              {
                *apr_array_push(v17) = v21;
                v21 += *(v15 + 2 * v19++);
                if (v19 >= v10[4])
                {
                  goto LABEL_29;
                }
              }

              if (a3)
              {
                v56.st_dev = *a3;
                *&v56.st_mode = 502;
                v11 = "end > it";
                goto LABEL_34;
              }
            }

            else
            {
LABEL_29:
              v22 = gt_filepath_merge(a1, "store0", a2);
              v23 = open(v22, 0);
              if (v23 < 0)
              {
                if (!a3)
                {
                  return a3;
                }

                v56.st_dev = *a3;
                *&v56.st_mode = 502;
                v11 = "fd >= 0";
                v56.st_ino = "store0";
                goto LABEL_35;
              }

              v24 = v23;
              memset(&v56, 0, sizeof(v56));
              fstat(v23, &v56);
              if (v56.st_size < 1)
              {
                st_size = 0;
                v49 = 0;
              }

              else
              {
                v25 = mmap(0, v56.st_size, 1, 2, v24, 0);
                st_size = v56.st_size;
                v49 = v25;
              }

              v50 = v17;
              close(v24);
              v27 = a2;
              v28 = apr_palloc(a2, 0xA0uLL);
              a3 = v28;
              if (v28)
              {
                v28[8] = 0u;
                v28[9] = 0u;
                v28[6] = 0u;
                v28[7] = 0u;
                v28[4] = 0u;
                v28[5] = 0u;
                v28[2] = 0u;
                v28[3] = 0u;
                *v28 = 0u;
                v28[1] = 0u;
              }

              *v28 = apr_pstrdup(a2, a1);
              *(a3 + 1) = a2;
              pthread_mutex_init((a3 + 1), 0);
              *(a3 + 10) = apr_array_make(a2, v10[2], 32);
              *(a3 + 11) = apr_hash_make(a2);
              v29 = v10[2];
              if (v29)
              {
                v30 = 0;
                v31 = v10 + 6;
                do
                {
                  v32 = *(v31 - 1);
                  if (v32 != -1)
                  {
                    v33 = v13;
                    v34 = v13 + 24 * v32;
                    v35 = *(v34 + 4);
                    v36 = *(v34 + 8);
                    v37 = *(v34 + 16);
                    v54 = v37;
                    v55 = *v34;
                    v38 = apr_pstrdup(v27, *&v50->elts[8 * *v31]);
                    v39 = v38;
                    if ((v37 & 2) != 0)
                    {
                      v35 = 0;
                      v40 = 0;
                    }

                    else
                    {
                      v40 = v36;
                    }

                    ht = *(a3 + 11);
                    v53 = v40;
                    v41 = *(*(a3 + 10) + 12);
                    v42 = strlen(v38);
                    v43 = apr_palloc(*(a3 + 1), 8uLL);
                    *v43 = v41;
                    v13 = v33;
                    apr_hash_set(ht, v39, v42, v43);
                    v44 = apr_array_push(*(a3 + 10));
                    *v44 = v39;
                    v27 = p;
                    v44[2] = v55;
                    v44[3] = v35;
                    *(v44 + 2) = v53;
                    v44[6] = v54;
                    v44[7] = 0;
                    v29 = v10[2];
                  }

                  ++v30;
                  v31 += 3;
                }

                while (v30 < v29);
              }

              *(a3 + 12) = v49;
              *(a3 + 13) = st_size;
              *(a3 + 14) = st_size;
              *(a3 + 128) = 0;
              v45 = compression_encode_scratch_buffer_size(0x505u);
              v46 = compression_decode_scratch_buffer_size(COMPRESSION_ZLIB);
              if (v45 <= v46)
              {
                v47 = v46;
              }

              else
              {
                v47 = v45;
              }

              *(a3 + 15) = apr_palloc(v27, v47);
              *(a3 + 17) = apr_hash_make(v27);
              munmap(v10, v57.st_size);
              GetUUIDFromMetadata(a3 + 9, a1, v27);
              apr_pool_cleanup_register(v27, a3, GTCaptureArchive_cleanup, apr_pool_cleanup_null);
            }
          }

          else if (a3)
          {
            v56.st_dev = *a3;
            *&v56.st_mode = 502;
            v11 = "indexStat.st_size - BUFFER_DELTA2(header, name_table) >= sizeof(dy_capture_index_name_entry_t) * header->name_table_length";
            goto LABEL_34;
          }
        }

        else if (a3)
        {
          v56.st_dev = *a3;
          *&v56.st_mode = 502;
          v11 = "indexStat.st_size - BUFFER_DELTA2(header, file_table) >= sizeof(dy_capture_index_file_entry_t) * header->file_table_length";
          goto LABEL_34;
        }
      }

      else if (a3)
      {
        v56.st_dev = *a3;
        *&v56.st_mode = 502;
        v11 = "indexStat.st_size - BUFFER_DELTA2(header, hash_table) >= sizeof(dy_capture_index_hash_entry_t) * header->hash_table_length";
        goto LABEL_34;
      }
    }

    else if (a3)
    {
      v56.st_dev = *a3;
      *&v56.st_mode = 502;
      v11 = "header->fourcc == DY_CAPTURE_INDEX_FOURCC || header->version == DY_CAPTURE_INDEX_VERSION_0";
LABEL_34:
      v56.st_ino = 0;
      goto LABEL_35;
    }
  }

  return a3;
}

void GetUUIDFromMetadata(CFUUIDBytes *a1, const char *a2, apr_pool_t *parent)
{
  newpool = 0;
  if (!apr_pool_create_ex(&newpool, parent, 0, 0))
  {
    v5 = newpool;
    v6 = gt_filepath_merge(a2, "metadata", newpool);
    v7 = open(v6, 0);
    if (v7 < 0)
    {
      *&a1->byte0 = 0;
      *&a1->byte8 = 0;

      apr_pool_destroy(v5);
    }

    else
    {
      v8 = v7;
      memset(&v21, 0, sizeof(v21));
      fstat(v7, &v21);
      v9 = apr_palloc(v5, v21.st_size);
      v10 = 0;
      st_size = v21.st_size;
      do
      {
        if ((st_size - v10) >= 0x100000)
        {
          v12 = 0x100000;
        }

        else
        {
          v12 = st_size - v10;
        }

        v13 = read(v8, &v9[v10], v12);
        if (v13 == -1)
        {
          v14 = 0;
        }

        else
        {
          v14 = v13;
        }

        v10 += v14;
      }

      while (v13 != -1 && v10 != st_size);
      close(v8);
      v16 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v9, v21.st_size, kCFAllocatorNull);
      error = 0;
      v17 = CFPropertyListCreateWithData(kCFAllocatorDefault, v16, 0, 0, &error);
      CFRelease(v16);
      if (error || (Value = CFDictionaryGetValue(v17, @"(uuid)")) == 0)
      {
        *&a1->byte0 = 0;
        *&a1->byte8 = 0;
      }

      else
      {
        v19 = CFUUIDCreateFromString(kCFAllocatorDefault, Value);
        *a1 = CFUUIDGetUUIDBytes(v19);
        CFRelease(v19);
      }

      CFRelease(v17);
      apr_pool_destroy(v5);
    }
  }
}

uint64_t GTCaptureArchive_cleanup(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    munmap(*(a1 + 96), v2);
  }

  if (*(a1 + 128) != 1 || *(a1 + 112) <= *(a1 + 104))
  {
    goto LABEL_7;
  }

  v3 = gt_filepath_merge(*a1, "store0", *(a1 + 8));
  v4 = open(v3, 513, 438);
  if ((v4 & 0x80000000) == 0)
  {
    v5 = v4;
    ftruncate(v4, *(a1 + 104));
    close(v5);
LABEL_7:
    pthread_mutex_destroy((a1 + 16));
    return 0;
  }

  return 20014;
}

uint64_t GTCaptureArchive_create(const char *a1, apr_pool_t *a2, int *a3)
{
  bzero(v20, 0x400uLL);
  v6 = realpath_DARWIN_EXTSN(a1, v20);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = a1;
  }

  v8 = gt_filepath_merge(v7, "index", a2);
  if (GTFileSystem_fileExists(v8, 0))
  {
    if (a3)
    {
      v16[0] = *a3;
      v16[1] = 502;
      v17 = "index";
      v18 = "!GTFileSystem_fileExists(indexPath, NULL)";
      v19 = 0;
      GTError_addError(a3, v16);
    }

    return 0;
  }

  else
  {
    GTFileSystem_mkdir(v7);
    v10 = apr_palloc(a2, 0xA0uLL);
    v9 = v10;
    if (v10)
    {
      v10[8] = 0u;
      v10[9] = 0u;
      v10[6] = 0u;
      v10[7] = 0u;
      v10[4] = 0u;
      v10[5] = 0u;
      v10[2] = 0u;
      v10[3] = 0u;
      *v10 = 0u;
      v10[1] = 0u;
    }

    *v10 = apr_pstrdup(a2, v7);
    *(v9 + 8) = a2;
    pthread_mutex_init((v9 + 16), 0);
    *(v9 + 80) = apr_array_make(a2, 1, 32);
    *(v9 + 88) = apr_hash_make(a2);
    *(v9 + 104) = 0;
    *(v9 + 112) = 0;
    GTCaptureArchive_resizeBackingStore(v9, 0x400000uLL, a3);
    v11 = compression_encode_scratch_buffer_size(0x505u);
    v12 = compression_decode_scratch_buffer_size(COMPRESSION_ZLIB);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    *(v9 + 120) = apr_palloc(a2, v13);
    GetUUIDFromMetadata((v9 + 144), v7, a2);
    v14 = *(a2 + 5);
    if (v14)
    {
      *(a2 + 5) = *v14;
    }

    else
    {
      v14 = apr_palloc(a2, 0x20uLL);
    }

    v14[1] = v9;
    v14[2] = GTCaptureArchive_cleanup;
    v14[3] = apr_pool_cleanup_null;
    *v14 = *(a2 + 4);
    *(a2 + 4) = v14;
  }

  return v9;
}

void GTCaptureArchive_resizeBackingStore(uint64_t a1, size_t a2, int *a3)
{
  v6 = *(a1 + 112);
  if (v6 < a2 || (*(a1 + 128) & 1) == 0)
  {
    if (v6 && munmap(*(a1 + 96), v6))
    {
      if (a3)
      {
        v14 = *a3;
        v15 = 502;
        v16 = 0;
        v17 = "unmapResult == 0";
        v18 = 0;
        GTError_addError(a3, &v14);
      }

      return;
    }

    newpool = 0;
    apr_pool_create_ex(&newpool, *(a1 + 8), 0, 0);
    v7 = newpool;
    v8 = gt_filepath_merge(*a1, "store0", newpool);
    v9 = open(v8, 514, 438);
    if (v9 < 0)
    {
      if (!a3)
      {
        goto LABEL_15;
      }

      v14 = *a3;
      v15 = 502;
      v12 = "fd >= 0";
    }

    else
    {
      v10 = v9;
      ftruncate(v9, a2);
      *(a1 + 112) = a2;
      v11 = mmap(0, a2, 2, 1, v10, 0);
      close(v10);
      if (v11 != -1)
      {
        *(a1 + 96) = v11;
        *(a1 + 128) = 1;
LABEL_15:
        apr_pool_destroy(v7);
        return;
      }

      if (!a3)
      {
        goto LABEL_15;
      }

      v14 = *a3;
      v15 = 502;
      v12 = "bytes != MAP_FAILED";
    }

    v16 = 0;
    v17 = v12;
    v18 = 0;
    GTError_addError(a3, &v14);
    goto LABEL_15;
  }
}

uint64_t GTCaptureArchive_overrideURL(uint64_t a1, const char *a2, const char *a3)
{
  pthread_mutex_lock((a1 + 16));
  newpool = 0;
  apr_pool_create_ex(&newpool, *(a1 + 8), 0, 0);
  v6 = newpool;
  v7 = gt_filepath_merge(*a1, a3, newpool);
  v8 = fopen(v7, "r");
  v9 = v8;
  if (v8)
  {
    memset(&v15, 0, sizeof(v15));
    v10 = fileno(v8);
    if (!fstat(v10, &v15))
    {
      v11 = apr_pstrdup(*(a1 + 8), a2);
      v12 = apr_pstrdup(*(a1 + 8), a3);
      v13 = apr_palloc(*(a1 + 8), 0x20uLL);
      if (v13)
      {
        v13[1] = 0;
        v13[2] = 0;
        v13[3] = 0;
      }

      *v13 = v12;
      *(v13 + 6) = 2;
      *(v13 + 2) = (LODWORD(v15.st_size) + vm_page_size - 1) & -vm_page_size;
      apr_hash_set(*(a1 + 136), v11, -1, v13);
    }
  }

  fclose(v9);
  apr_pool_destroy(v6);
  return pthread_mutex_unlock((a1 + 16));
}

__n128 GTCaptureArchive_getUUID(__n128 *a1, __n128 *a2)
{
  result = a1[9];
  *a2 = result;
  return result;
}

uint64_t GTCaptureArchive_getFileWithFilename(uint64_t a1, char *a2)
{
  pthread_mutex_lock((a1 + 16));
  v4 = *(a1 + 136);
  if (!v4 || (v5 = *find_entry(v4, a2, 0xFFFFFFFFFFFFFFFFLL, 0)) == 0 || (v6 = *(v5 + 32)) == 0)
  {
    v7 = strlen(a2);
    v8 = *find_entry(*(a1 + 88), a2, v7, 0);
    if (v8 && (v9 = *(v8 + 32)) != 0)
    {
      v6 = *(*(a1 + 80) + 24) + 32 * *v9;
    }

    else
    {
      v6 = 0;
    }
  }

  pthread_mutex_unlock((a1 + 16));
  return v6;
}

void *GTCaptureArchive_isFileSymlink(const char **a1, char *a2, apr_pool_t *a3)
{
  if (!GTCaptureArchive_getFileWithFilename(a1, a2))
  {
    return 0;
  }

  v6 = gt_filepath_merge(*a1, a2, a3);
  v7 = readlink(v6, __s, 0x3FFuLL);
  if (v7 == -1)
  {
    return 0;
  }

  __s[v7] = 0;
  v8 = strlen(__s);
  v9 = apr_palloc(a3, v8 + 1);
  memcpy(v9, __s, v8 + 1);
  return v9;
}

unint64_t GTCaptureArchive_fileBackingStore(uint64_t a1, uint64_t a2, int *a3)
{
  if ((*(a2 + 24) & 2) != 0)
  {
    if (a3)
    {
      v6 = *a3;
      v7 = 502;
      v4 = "!(entry->flags & DY_CAPTURE_FILE_FLAG_SEPARATE_FILE)";
      goto LABEL_7;
    }

    return 0;
  }

  v3 = *(a2 + 16);
  if (v3 > *(a1 + 104))
  {
    if (a3)
    {
      v6 = *a3;
      v7 = 502;
      v4 = "entry->storage_offset <= archive->backingStore.length";
LABEL_7:
      v8 = 0;
      v9 = v4;
      v10 = 0;
      GTError_addError(a3, &v6);
      return 0;
    }

    return 0;
  }

  return *(a1 + 96) + v3;
}

void *GTCaptureArchive_mapDataSeparateFile(uint64_t a1, uint64_t a2, apr_pool_t *a3, int *a4)
{
  if (*(a2 + 16) > *(a1 + 104))
  {
    if (a4)
    {
      v6 = *a2;
      v16 = *a4;
      v17 = 502;
      v7 = "entry->storage_offset <= self->backingStore.length";
LABEL_14:
      v18 = v6;
      v19 = v7;
      v20 = 0;
      GTError_addError(a4, &v16);
      return 0;
    }

    return 0;
  }

  if ((*(a2 + 24) & 2) == 0)
  {
    if (a4)
    {
      v6 = *a2;
      v16 = *a4;
      v17 = 502;
      v7 = "entry->flags & DY_CAPTURE_FILE_FLAG_SEPARATE_FILE";
      goto LABEL_14;
    }

    return 0;
  }

  v9 = gt_filepath_merge(*a1, *a2, a3);
  v10 = open(v9, 0);
  if (v10 <= 0)
  {
    if (a4)
    {
      v6 = *a2;
      v16 = *a4;
      v17 = 502;
      v7 = "fd > 0";
      goto LABEL_14;
    }

    return 0;
  }

  v11 = v10;
  v12 = mmap(0, *(a2 + 8), 1, 2, v10, 0);
  close(v11);
  if (v12 == -1)
  {
    if (a4)
    {
      v6 = *a2;
      v16 = *a4;
      v17 = 502;
      v7 = "bytes != MAP_FAILED";
      goto LABEL_14;
    }

    return 0;
  }

  v13 = *(a2 + 8);
  v14 = apr_palloc(a3, 0x10uLL);
  *v14 = v12;
  v14[1] = v13;
  apr_pool_cleanup_register(a3, v14, GTData_munmap, apr_pool_cleanup_null);
  return v12;
}

void GTCaptureArchive_fillBufferCompressedDeflate(uint64_t a1, uint64_t a2, uint64_t a3, uint8_t *a4, size_t a5, int *a6)
{
  if (a4)
  {
    if (a2)
    {
      if (*(a3 + 12) > 5u)
      {
        v11 = GTCaptureArchive_fileBackingStore(a1, a3, a6);
        if (!v11)
        {
          goto LABEL_16;
        }

        if (compression_decode_buffer(a4, a5, (v11 + 2), (*(a3 + 12) - 6), *(a2 + 8), COMPRESSION_ZLIB) == a5)
        {
          return;
        }

        if (!a6)
        {
          goto LABEL_16;
        }

        v13 = *a6;
        v14 = 502;
        v12 = "total_out == destSize";
        goto LABEL_15;
      }

      if (a6)
      {
        v13 = *a6;
        v14 = 502;
        v12 = "ZLIB_HEADER_SIZE + ZLIB_ADLER_SIZE <= entry->storage_size";
        goto LABEL_15;
      }
    }

    else if (a6)
    {
      v13 = *a6;
      v14 = 502;
      v12 = "decompressor != NULL";
LABEL_15:
      v15 = 0;
      v16 = v12;
      v17 = 0;
      GTError_addError(a6, &v13);
    }

LABEL_16:

    bzero(a4, a5);
    return;
  }

  if (a6)
  {
    v13 = *a6;
    v14 = 502;
    v15 = 0;
    v16 = "dest != NULL";
    v17 = 0;
    GTError_addError(a6, &v13);
  }
}

void *GTCaptureArchiveDecompressor_create(apr_pool_t *a1)
{
  v2 = apr_palloc(a1, 0x10uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = 0;
    v2[1] = 0;
  }

  apr_pool_create_ex(v2, a1, 0, 0);
  v4 = compression_decode_scratch_buffer_size(COMPRESSION_ZLIB);
  v3[1] = apr_palloc(a1, v4);
  return v3;
}

void GTCaptureArchive_fillBuffer(const char **a1, apr_pool_t **a2, char *a3, void *a4, size_t a5, int *a6)
{
  FileWithFilename = GTCaptureArchive_getFileWithFilename(a1, a3);
  if (*(FileWithFilename + 8) >= a5)
  {
    if ((*(FileWithFilename + 24) & 2) != 0)
    {
      v12 = *FileWithFilename;
      v13 = *a2;
      v14 = *a1;

      GTCaptureArchive_fillBufferSeparateFile(v14, v12, a4, a5, v13, a6);
    }

    else
    {

      GTCaptureArchive_fillBufferCompressedDeflate(a1, a2, FileWithFilename, a4, a5, a6);
    }
  }

  else
  {
    if (a6)
    {
      v15[0] = *a6;
      v15[1] = 502;
      v16 = 0;
      v17 = "destSize <= entry->size";
      v18 = 0;
      GTError_addError(a6, v15);
    }

    bzero(a4, a5);
  }
}

void GTCaptureArchive_fillBufferSeparateFile(const char *a1, const char *a2, void *a3, size_t a4, apr_pool_t *a5, int *a6)
{
  v10 = gt_filepath_merge(a1, a2, a5);
  v11 = open(v10, 0, 0);
  v12 = GTFile_map(v11, a3, a4);
  if ((v11 & 0x80000000) == 0)
  {
    close(v11);
  }

  if ((v12 & 1) == 0)
  {
    if (a6)
    {
      v13[0] = *a6;
      v13[1] = 502;
      v14 = a2;
      v15 = "mapped";
      v16 = 0;
      GTError_addError(a6, v13);
    }

    bzero(a3, a4);
  }
}

void *GTCaptureArchive_readData(const char **a1, apr_pool_t **a2, char *a3, apr_pool_t *a4, int *a5)
{
  if (!a3)
  {
    return 0;
  }

  FileWithFilename = GTCaptureArchive_getFileWithFilename(a1, a3);
  if (!FileWithFilename)
  {
    return 0;
  }

  v11 = FileWithFilename;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  if (a5)
  {
    v12 = *a5 & 0xFFFFFFFD;
  }

  else
  {
    v12 = 0;
  }

  LODWORD(v18) = v12;
  v13 = *(FileWithFilename + 24);
  v14 = *(FileWithFilename + 8);
  v15 = apr_palloc(a4, v14);
  if ((v13 & 2) != 0)
  {
    GTCaptureArchive_fillBufferSeparateFile(*a1, a3, v15, v14, *a2, &v18);
  }

  else
  {
    GTCaptureArchive_fillBufferCompressedDeflate(a1, a2, v11, v15, v14, &v18);
  }

  if (DWORD1(v18) == 502)
  {
    if (!*(&v18 + 1))
    {
      *(&v18 + 1) = a3;
    }

    v17[0] = v18;
    v17[1] = v19;
    v17[2] = v20;
    GTError_addError(a5, v17);
    return 0;
  }

  return v15;
}

uint8_t *GTCaptureArchive_mapData(uint64_t a1, uint64_t a2, char *a3, apr_pool_t *a4, int *a5)
{
  FileWithFilename = GTCaptureArchive_getFileWithFilename(a1, a3);
  if (!FileWithFilename)
  {
    return 0;
  }

  v11 = FileWithFilename;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  if ((*(FileWithFilename + 24) & 2) != 0)
  {
    v13 = GTCaptureArchive_mapDataSeparateFile(a1, FileWithFilename, a4, &v16);
  }

  else
  {
    v12 = *(FileWithFilename + 8);
    v13 = apr_palloc(a4, v12);
    GTCaptureArchive_fillBufferCompressedDeflate(a1, a2, v11, v13, v12, &v16);
  }

  if (DWORD1(v16) == 502)
  {
    if (!*(&v16 + 1))
    {
      *(&v16 + 1) = a3;
    }

    v15[0] = v16;
    v15[1] = v17;
    v15[2] = v18;
    GTError_addError(a5, v15);
    return 0;
  }

  return v13;
}

apr_array_header_t *GTCaptureArchive_sortedStrings(uint64_t a1, apr_pool_t *a2)
{
  pthread_mutex_lock((a1 + 16));
  v4 = apr_array_make(a2, *(*(a1 + 80) + 12), 8);
  v5 = *(a1 + 80);
  if (*(v5 + 12) >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *(*(v5 + 24) + v6);
      if (v8)
      {
        *apr_array_push(v4) = v8;
        v5 = *(a1 + 80);
      }

      ++v7;
      v6 += 32;
    }

    while (v7 < *(v5 + 12));
  }

  qsort(v4->elts, v4->nelts, v4->elt_size, GTCaptureArchive_strcmp);
  pthread_mutex_unlock((a1 + 16));
  return v4;
}

uint64_t GTCaptureArchive_filenamesWithPrefix(uint64_t a1, char *__s, apr_array_header_t *a3)
{
  result = strlen(__s);
  v7 = result;
  v8 = *(a1 + 24);
  v9 = *(a1 + 12);
  v10 = &v8[v9];
  if (v9 >= 1)
  {
    do
    {
      v11 = &v8[v9 >> 1];
      v13 = *v11;
      v12 = v11 + 1;
      result = strncmp(v13, __s, v7);
      if (result >= 0)
      {
        v9 >>= 1;
      }

      else
      {
        v9 += ~(v9 >> 1);
      }

      if (result < 0)
      {
        v8 = v12;
      }
    }

    while (v9 > 0);
  }

  while (v8 != v10)
  {
    v14 = *v8;
    result = strncmp(*v8, __s, v7);
    if (result)
    {
      break;
    }

    result = apr_array_push(a3);
    *result = v14;
    ++v8;
  }

  return result;
}

apr_array_header_t *GTCaptureArchive_fileIndex(uint64_t a1, apr_pool_t *a2)
{
  pthread_mutex_lock((a1 + 16));
  v4 = apr_array_copy(a2, *(a1 + 80));
  pthread_mutex_unlock((a1 + 16));
  return v4;
}

uint64_t GTCaptureFileIndex_compareByStorageOffset(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = v2 == v3;
  if (v2 < v3)
  {
    v5 = -1;
  }

  else
  {
    v5 = 1;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

void GTCaptureFileIndex_save(uint64_t a1, const char *a2)
{
  newpool = 0;
  apr_pool_create_ex(&newpool, *a1, 0, 0);
  v38 = 1667851384;
  v3 = (2 * *(a1 + 12) + 1023) & 0xFFFFFC00;
  v39 = v3;
  v4 = newpool;
  v5 = apr_palloc(newpool, 12 * v3);
  v35 = 12 * v3;
  memset(v5, 255, v35);
  v40 = *(a1 + 12);
  v34 = 24 * v40;
  v6 = apr_palloc(v4, v34);
  v41 = *(a1 + 12);
  p = v4;
  v33 = 2 * v41;
  v7 = apr_palloc(v4, v33);
  if (*(a1 + 12) < 1)
  {
    v9 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(a1 + 24) + 32 * v8;
      v11 = *v10;
      v12 = strlen(*v10);
      v13 = -1640531527;
      v14 = v12 - 1;
      if (v12 == 1)
      {
        goto LABEL_7;
      }

      v15 = 0;
      do
      {
        v16 = v13 + v11[v15];
        v17 = (v11[v15 + 1] << 11) ^ (v16 << 16);
        v13 = (v17 ^ v16) + ((v17 ^ v16) >> 11);
        v15 += 2;
      }

      while (v15 < v14);
      if (v12)
      {
LABEL_7:
        v18 = (v13 + v11[v14]) ^ ((v13 + v11[v14]) << 11);
        v13 = v18 + (v18 >> 17);
      }

      v19 = (v13 ^ (8 * v13)) + ((v13 ^ (8 * v13)) >> 5);
      v20 = (v19 ^ (4 * v19)) + ((v19 ^ (4 * v19)) >> 15);
      if (v20 == v20 << 10)
      {
        v21 = 0x40000000;
      }

      else
      {
        v21 = v20 ^ (v20 << 10);
      }

      v22 = (v21 % v3);
      while (1)
      {
        v23 = &v5[12 * v22];
        if (*v23 == -1)
        {
          break;
        }

        if (v3 <= ++v22)
        {
          v23 = v5 - 12;
          do
          {
            v24 = *(v23 + 3);
            v23 += 12;
          }

          while (v24 != -1);
          break;
        }
      }

      *v23 = v8;
      *(v23 + 1) = v8;
      *(v23 + 2) = -1;
      v25 = &v6[24 * v8];
      *v25 = *(v10 + 8);
      v26 = v8;
      if (*(v10 + 24))
      {
        v26 = *(v10 + 12);
      }

      *(v25 + 1) = v26;
      *(v25 + 1) = *(v10 + 16);
      *(v25 + 2) = *(v10 + 24);
      v7[v8] = v12 + 1;
      v9 += (v12 + 1);
      ++v8;
    }

    while (v8 < *(a1 + 12));
  }

  v27 = apr_palloc(p, v9);
  if (*(a1 + 12) < 1)
  {
    v30 = 0;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    do
    {
      v31 = v7[v29];
      memcpy(&v27[v30], *(*(a1 + 24) + v28), v31);
      v30 += v31;
      ++v29;
      v28 += 32;
    }

    while (v29 < *(a1 + 12));
  }

  v43.iov_base = &v38;
  v43.iov_len = 20;
  v44 = v5;
  v45 = v35;
  v46 = v6;
  v47 = v34;
  v48 = v7;
  v49 = v33;
  v50 = v27;
  v51 = v30;
  v32 = open(a2, 514, 438);
  writev(v32, &v43, 5);
  close(v32);
  apr_pool_destroy(p);
}

uint64_t GTCaptureArchive_save(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  qsort(*(*(a1 + 80) + 24), *(*(a1 + 80) + 12), *(*(a1 + 80) + 8), GTCaptureFileIndex_compareByStorageOffset);
  v2 = *(a1 + 80);
  if (*(v2 + 12) >= 1)
  {
    v3 = 0;
    v4 = *(v2 + 24);
    v5 = v4;
    do
    {
      entry = find_entry(*(a1 + 88), *v5, 0xFFFFFFFFFFFFFFFFLL, 0);
      if (*entry)
      {
        v7 = *(*entry + 32);
        if (v7)
        {
          *v7 = v3;
        }
      }

      ++v3;
      v8 = *(*(a1 + 80) + 12);
      v5 += 4;
    }

    while (v3 < v8);
    if (v8 >= 1)
    {
      v9 = 0;
      v10 = (v4 + 12);
      v11 = -1;
      do
      {
        if ((v10[3] & 2) == 0)
        {
          v12 = *(v10 + 1);
          if (v12 != v11)
          {
            if (v12 != v9)
            {
              if (v12 > v9)
              {
                newpool = 0;
                apr_pool_create_ex(&newpool, *(a1 + 8), 0, 0);
                v22 = newpool;
                v23 = gt_filepath_merge(*a1, "store0", newpool);
                v24 = open(v23, 2, 438);
                if ((v24 & 0x80000000) == 0)
                {
                  v25 = v24;
                  munmap(*(a1 + 96), *(a1 + 112));
                  v26 = mmap(0, *(a1 + 112), 1, 2, v25, 0);
                  v27 = mmap(0, *(a1 + 112), 3, 1, v25, 0);
                  close(v25);
                  v28 = apr_hash_make(v22);
                  if (*(*(a1 + 80) + 12) < 1)
                  {
                    v30 = 0;
                  }

                  else
                  {
                    v29 = v28;
                    v30 = 0;
                    v31 = 0;
                    v32 = (v4 + 12);
                    do
                    {
                      if ((v32[3] & 2) == 0)
                      {
                        v33 = find_entry(v29, v32 + 4, 8uLL, 0);
                        if (*v33 && (v34 = *(*v33 + 32)) != 0)
                        {
                          *(v32 + 1) = *v34;
                        }

                        else
                        {
                          memcpy(&v27[v30], &v26[*(v32 + 1)], *v32);
                          v35 = apr_palloc(v22, 8uLL);
                          *v35 = *(v32 + 1);
                          v36 = apr_palloc(v22, 8uLL);
                          *v36 = v30;
                          apr_hash_set(v29, v35, 8, v36);
                          *(v32 + 1) = v30;
                          v30 += *v32;
                        }
                      }

                      ++v31;
                      v32 += 8;
                    }

                    while (v31 < *(*(a1 + 80) + 12));
                  }

                  munmap(v26, *(a1 + 112));
                  *(a1 + 128) = 1;
                  *(a1 + 96) = v27;
                  *(a1 + 104) = v30;
                }

                apr_pool_destroy(v22);
              }

              break;
            }

            v11 = v9;
            v9 += *v10;
          }
        }

        v10 += 8;
        --v8;
      }

      while (v8);
    }
  }

  v13 = *(a1 + 8);
  isValid = GTCaptureArchive_isValid(a1);
  if (isValid)
  {
    qsort(*(*(a1 + 80) + 24), *(*(a1 + 80) + 12), *(*(a1 + 80) + 8), GTCaptureFileIndex_compareByName);
    v15 = *(a1 + 80);
    if (*(v15 + 12) >= 1)
    {
      v16 = 0;
      v17 = *(v15 + 24);
      do
      {
        v18 = find_entry(*(a1 + 88), *v17, 0xFFFFFFFFFFFFFFFFLL, 0);
        if (*v18)
        {
          v19 = *(*v18 + 32);
          if (v19)
          {
            *v19 = v16;
          }
        }

        ++v16;
        v17 += 4;
      }

      while (v16 < *(*(a1 + 80) + 12));
    }

    v20 = gt_filepath_merge(*a1, "index", v13);
    GTCaptureFileIndex_save(*(a1 + 80), v20);
  }

  pthread_mutex_unlock((a1 + 16));
  return isValid;
}

uint64_t GTCaptureArchive_isValid(void *a1)
{
  if (!a1[12] && a1[13])
  {
    return 0;
  }

  v1 = a1[10];
  v2 = *(v1 + 12);
  if (v2 >= 1)
  {
    v3 = (*(v1 + 24) + 12);
    do
    {
      if ((v3[3] & 2) != 0)
      {
        if (!**(v3 - 3))
        {
          return 0;
        }
      }

      else
      {
        v4 = *(v3 + 1);
        if (v4 < 0 || v4 + *v3 > a1[13])
        {
          return 0;
        }
      }

      v3 += 8;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t GTCaptureArchive_removeFile(uint64_t a1, char *a2)
{
  pthread_mutex_lock((a1 + 16));
  v4 = strlen(a2);
  v5 = *find_entry(*(a1 + 88), a2, v4, 0);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = *(v5 + 32);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = *(a1 + 80);
  v8 = *v6;
  v9 = *(v7 + 24) + 32 * *v6;
  if ((*(v9 + 24) & 2) != 0)
  {
    newpool = 0;
    apr_pool_create_ex(&newpool, *(a1 + 8), 0, 0);
    v10 = newpool;
    v11 = gt_filepath_merge(*a1, a2, newpool);
    v12 = GTFileSystem_unlink(v11);
    apr_pool_destroy(v10);
    if (v12)
    {
      v8 = *v6;
      goto LABEL_6;
    }

LABEL_9:
    v16 = 0;
    goto LABEL_10;
  }

LABEL_6:
  v13 = *(v7 + 12) - 1;
  if (v8 != v13)
  {
    v14 = *(v7 + 24) + 32 * v13;
    **(*find_entry(*(a1 + 88), *v14, 0xFFFFFFFFFFFFFFFFLL, 0) + 32) = *v6;
    v15 = *(v14 + 16);
    *v9 = *v14;
    *(v9 + 16) = v15;
    LODWORD(v13) = *(v7 + 12) - 1;
  }

  *(v7 + 12) = v13;
  apr_hash_set(*(a1 + 88), a2, -1, 0);
  v16 = 1;
LABEL_10:
  pthread_mutex_unlock((a1 + 16));
  return v16;
}

uint64_t GTCaptureArchive_addFile(uint64_t a1, const char *a2, const uint8_t *a3, size_t a4, int a5, int *a6)
{
  pthread_mutex_lock((a1 + 16));
  v12 = apr_array_push(*(a1 + 80));
  v28 = a2;
  v13 = apr_pstrdup(*(a1 + 8), a2);
  *v12 = v13;
  v12[2] = a4;
  v14 = *(a1 + 88);
  v15 = *(*(a1 + 80) + 12) - 1;
  v16 = strlen(v13);
  v17 = apr_palloc(*(a1 + 8), 8uLL);
  *v17 = v15;
  apr_hash_set(v14, v13, v16, v17);
  if (a5)
  {
    v18 = *(a1 + 120);
    v19 = *(a1 + 104);
    newpool[0] = 0;
    apr_pool_create_ex(newpool, *(a1 + 8), 0, 0);
    for (i = *(a1 + 112); ; GTCaptureArchive_resizeBackingStore(a1, i, a6))
    {
      v21 = compression_encode_buffer((*(a1 + 96) + v19), i - *(a1 + 104), a3, a4, v18, 0x505u);
      if (v21)
      {
        break;
      }

      i = a4 + ((3 * i) >> 1);
    }

    *(a1 + 104) += v21;
    v22 = 1;
    v12[6] = 1;
    v12[3] = v21;
    *(v12 + 2) = v19;
    pthread_mutex_unlock((a1 + 16));
    apr_pool_destroy(newpool[0]);
  }

  else
  {
    v12[6] = 2;
    v12[3] = a4;
    *(v12 + 2) = 0;
    v29 = 0;
    apr_pool_create_ex(&v29, *(a1 + 8), 0, 0);
    v23 = v29;
    v24 = gt_filepath_merge(*a1, v28, v29);
    pthread_mutex_unlock((a1 + 16));
    v25 = dispatch_data_create(a3, a4, 0, &__block_literal_global_20070);
    v26 = GTFileSystem_write(v24, v25);
    dispatch_release(v25);
    if (v26)
    {
      apr_pool_destroy(v23);
      return 1;
    }

    else
    {
      if (a6)
      {
        LODWORD(newpool[0]) = *a6;
        HIDWORD(newpool[0]) = 502;
        newpool[1] = 0;
        newpool[2] = "written == true";
        newpool[5] = 0;
        GTError_addError(a6, newpool);
      }

      apr_pool_destroy(v23);
      return 0;
    }
  }

  return v22;
}

int *GTCaptureArchive_linkFile(uint64_t a1, char *a2, const char *a3, int *a4)
{
  FileWithFilename = GTCaptureArchive_getFileWithFilename(a1, a2);
  if (FileWithFilename)
  {
    v9 = FileWithFilename;
    if (strcmp(*FileWithFilename, a2))
    {
      if (a4)
      {
        v23 = *a4;
        v24 = 502;
        v10 = "strcmp(targetFile->name, target) == 0";
LABEL_15:
        v25 = 0;
        v26 = v10;
        v27 = 0;
        GTError_addError(a4, &v23);
        return 0;
      }

      return a4;
    }

    if (!*a3 || !*a2)
    {
      if (a4)
      {
        v23 = *a4;
        v24 = 502;
        v10 = "strlen(link) > 0 && strlen(target) > 0";
        goto LABEL_15;
      }

      return a4;
    }

    pthread_mutex_lock((a1 + 16));
    v11 = *(a1 + 80);
    nelts = v11->nelts;
    v13 = apr_array_push(v11);
    v14 = *(v9 + 1);
    *v13 = *v9;
    v13[1] = v14;
    v15 = strlen(a3);
    v16 = apr_palloc(*(a1 + 8), v15 + 1);
    memcpy(v16, a3, v15 + 1);
    *v13 = v16;
    v17 = *(a1 + 88);
    v18 = apr_palloc(*(a1 + 8), 8uLL);
    *v18 = nelts;
    apr_hash_set(v17, v16, -1, v18);
    if ((*(v13 + 24) & 2) != 0)
    {
      newpool = 0;
      apr_pool_create_ex(&newpool, *(a1 + 8), 0, 0);
      v19 = newpool;
      v20 = gt_filepath_merge(*a1, a3, newpool);
      if ((GTFileSystem_symlink(a2, v20) & 1) == 0)
      {
        if (a4)
        {
          v23 = *a4;
          v24 = 502;
          v25 = 0;
          v26 = "GTFileSystem_symlink(target, fullLinkPath)";
          v27 = 0;
          GTError_addError(a4, &v23);
        }

        apr_pool_destroy(v19);
        a4 = 0;
        goto LABEL_20;
      }

      apr_pool_destroy(v19);
    }

    a4 = &dword_0 + 1;
LABEL_20:
    pthread_mutex_unlock((a1 + 16));
    return a4;
  }

  if (a4)
  {
    v23 = *a4;
    v24 = 502;
    v10 = "targetFile";
    goto LABEL_15;
  }

  return a4;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v3 = _CFUUIDGetUUIDBytes(uuid);
  v2 = *&v3.byte8;
  v1 = *&v3.byte0;
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
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