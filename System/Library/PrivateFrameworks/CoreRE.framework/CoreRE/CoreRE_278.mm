uint64_t tessellateTriangleRecursive(uint64_t a1, float32x4_t *a2, unsigned int *a3, float32x4_t *a4)
{
  ++*(a1 + 52);
  result = physx::Gu::intersectTriangleBox_Unsafe((a1 + 24), (a1 + 36), a2, a3, a4);
  if (!result)
  {
    return result;
  }

  v9 = *a3;
  *&v10 = a2->i64[0];
  v11 = a2->f32[2];
  *&v12 = *(a3 + 1);
  LODWORD(v13) = HIDWORD(a2->i64[0]);
  v14 = *a4->f32;
  LODWORD(v15) = HIDWORD(a4->i64[0]);
  v16 = a4->f32[2];
  v17 = vsub_f32(*a4->f32, *a2->f32).f32[0];
  v18 = *(a1 + 48);
  v19 = (((((v13 - *&v12) * (v13 - *&v12)) + ((COERCE_FLOAT(a2->i64[0]) - *a3) * (COERCE_FLOAT(a2->i64[0]) - *a3))) + ((v11 - *(&v12 + 1)) * (v11 - *(&v12 + 1)))) > v18) | (2 * (((((*&v12 - v15) * (*&v12 - v15)) + ((*a3 - COERCE_FLOAT(a4->i64[0])) * (*a3 - COERCE_FLOAT(a4->i64[0])))) + ((*(&v12 + 1) - v16) * (*(&v12 + 1) - v16))) > v18)) | (4 * (((((v15 - v13) * (v15 - v13)) + (v17 * v17)) + ((v16 - v11) * (v16 - v11))) > v18));
  v20 = *a3;
  v43 = vmul_f32(vadd_f32(*a2->f32, *a3), 0x3F0000003F000000);
  v44 = (v11 + *(&v12 + 1)) * 0.5;
  v41 = vmul_f32(vadd_f32(v20, v14), 0x3F0000003F000000);
  v42 = (*(&v12 + 1) + v16) * 0.5;
  v39 = vmul_f32(vadd_f32(*&v10, v14), 0x3F0000003F000000);
  v40 = (v11 + v16) * 0.5;
  if (v19 > 3)
  {
    if (v19 > 5)
    {
      if (v19 != 6)
      {
        tessellateTriangleRecursive(a1, a2, &v43, &v39);
        tessellateTriangleRecursive(a1, &v43, a3, &v41);
        tessellateTriangleRecursive(a1, &v39, &v41, a4);
        v32 = &v43;
        v33 = &v41;
        v30 = &v39;
        v31 = a1;
        return tessellateTriangleRecursive(v31, v32, v33, v30);
      }

      tessellateTriangleRecursive(a1, a2, a3, &v41);
      tessellateTriangleRecursive(a1, a2, &v41, &v39);
      v32 = &v39;
      v33 = &v41;
      v31 = a1;
      goto LABEL_24;
    }

    if (v19 == 4)
    {
      tessellateTriangleRecursive(a1, a2, a3, &v39);
      v30 = &v39;
      v31 = a1;
      v32 = a3;
      v33 = a4;
      return tessellateTriangleRecursive(v31, v32, v33, v30);
    }

    tessellateTriangleRecursive(a1, a2, &v43, &v39);
    tessellateTriangleRecursive(a1, &v43, a3, &v39);
    v32 = &v39;
LABEL_23:
    v31 = a1;
    v33 = a3;
LABEL_24:
    v30 = a4;
    return tessellateTriangleRecursive(v31, v32, v33, v30);
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      tessellateTriangleRecursive(a1, a2, &v43, &v41);
      tessellateTriangleRecursive(a1, a2, &v41, a4);
      v32 = &v43;
      v30 = &v41;
      v31 = a1;
      v33 = a3;
      return tessellateTriangleRecursive(v31, v32, v33, v30);
    }

    tessellateTriangleRecursive(a1, a2, a3, &v41);
    v33 = &v41;
    v31 = a1;
    v32 = a2;
    goto LABEL_24;
  }

  if (v19)
  {
    tessellateTriangleRecursive(a1, a2, &v43, a4);
    v32 = &v43;
    goto LABEL_23;
  }

  v21 = *(a1 + 8);
  v22 = *(v21 + 8);
  v23 = *(v21 + 12) & 0x7FFFFFFF;
  v24 = v22 + 1;
  v25 = v22 + 2;
  if (v22 + 2 > v23)
  {
    v26 = 2 * *(v21 + 12);
    if (!v23)
    {
      v26 = 2;
    }

    if (v25 <= v26)
    {
      v27 = v26;
    }

    else
    {
      v27 = v25;
    }

    v37 = v12;
    v38 = v10;
    v35 = v14;
    v36 = v9;
    v34 = v11;
    physx::shdfnd::Array<physx::PxTriangle,physx::shdfnd::ReflectionAllocator<physx::PxTriangle>>::recreate(*(a1 + 8), v27);
    v11 = v34;
    v14 = v35;
    v9 = v36;
    *&v12 = v37;
    *&v10 = v38;
    v22 = *(v21 + 8);
  }

  v28 = *v21 + 36 * v22;
  *(v21 + 8) = v24;
  *(&v10 + 1) = __PAIR64__(v9, LODWORD(v11));
  *(&v12 + 1) = v14;
  *v28 = v10;
  *(v28 + 16) = v12;
  *(v28 + 32) = v16;
  result = *(a1 + 16);
  v29 = *(result + 8);
  if ((*(result + 12) & 0x7FFFFFFFu) <= v29)
  {
    result = physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(result, (a1 + 4));
  }

  else
  {
    *(*result + 4 * v29) = *(a1 + 4);
    ++*(result + 8);
  }

  ++*a1;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxTriangle,physx::shdfnd::ReflectionAllocator<physx::PxTriangle>>::recreate(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = 36 * a2;
  v5 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance, a2))
  {
    v6 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxTriangle>::getName() [T = physx::PxTriangle]";
  }

  else
  {
    v6 = "<allocation names disabled>";
  }

  result = (*(*(v5 + 24) + 16))(v5 + 24, v4, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  v8 = result;
  v9 = *(a1 + 2);
  v10 = *a1;
  if (v9)
  {
    v11 = result + 36 * v9;
    v12 = *a1;
    v13 = result;
    do
    {
      *v13 = *v12;
      *(v13 + 8) = *(v12 + 8);
      *(v13 + 16) = *(v12 + 16);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 32) = *(v12 + 32);
      v13 += 36;
      v12 += 36;
    }

    while (v13 < v11);
  }

  if ((*(a1 + 3) & 0x80000000) == 0 && v10)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *a1 = v8;
  *(a1 + 3) = v2;
  return result;
}

uint64_t createInvisibleWalls(float *a1, float *a2, uint64_t a3, uint64_t a4)
{
  v14 = a1[11];
  if (v14 == 0.0)
  {
    return 0;
  }

  v118 = v13;
  v119 = v12;
  v120 = v11;
  v121 = v10;
  v122 = v9;
  v123 = v8;
  v124 = v7;
  v125 = v6;
  v126 = v4;
  v127 = v5;
  v20 = *a2;
  v19 = a2[1];
  v21 = a2[2];
  v22 = a2[3];
  v23 = v22 - *a2;
  v24 = a2[4];
  v25 = a2[5];
  v26 = a2[7];
  v27 = a2[6] - *a2;
  v28 = a2[8];
  v29 = ((v24 - v19) * (v28 - v21)) - ((v25 - v21) * (v26 - v19));
  v30 = ((v25 - v21) * v27) - (v23 * (v28 - v21));
  v31 = (v23 * (v26 - v19)) - ((v24 - v19) * v27);
  v32 = sqrtf(((v30 * v30) + (v29 * v29)) + (v31 * v31));
  if (v32 > 0.0)
  {
    v33 = 1.0 / v32;
    v29 = v29 * v33;
    v30 = v30 * v33;
    v31 = v31 * v33;
  }

  v34 = a1[5];
  v35 = a1[6];
  v36 = (v30 * v35) + (v29 * v34);
  v37 = a1[7];
  v38 = v36 + (v31 * v37);
  if (v38 < 0.0 || v38 >= a1[8])
  {
    return 0;
  }

  v40 = v14 * v34;
  v41 = v14 * v35;
  v42 = v14 * v37;
  v114 = v20 + (v14 * v34);
  v115 = v21 + (v14 * v37);
  v116 = v19 + (v14 * v35);
  v43 = *(a3 + 8);
  v44 = *(a3 + 12) & 0x7FFFFFFF;
  v45 = v43 + 1;
  v46 = v43 + 2;
  v111 = a2[6];
  v109 = a2[7];
  v107 = a2[8];
  if (v43 + 2 <= v44)
  {
    v50 = *(a3 + 8);
  }

  else
  {
    if (v44)
    {
      v47 = 2 * *(a3 + 12);
    }

    else
    {
      v47 = 2;
    }

    if (v46 <= v47)
    {
      v48 = v47;
    }

    else
    {
      v48 = v46;
    }

    v106 = v14 * v35;
    v49 = v14 * v37;
    physx::shdfnd::Array<physx::PxTriangle,physx::shdfnd::ReflectionAllocator<physx::PxTriangle>>::recreate(a3, v48);
    v42 = v49;
    v41 = v106;
    v50 = *(a3 + 8);
    v44 = *(a3 + 12) & 0x7FFFFFFF;
  }

  v51 = v22 + v40;
  v52 = v25 + v42;
  v53 = v24 + v41;
  v54 = *a3;
  *(a3 + 8) = v45;
  v55 = (v54 + 36 * v50);
  *v55 = v20;
  v55[1] = v19;
  v55[2] = v21;
  v55[3] = v22;
  v55[4] = v24;
  v55[5] = v25;
  v55[6] = v114;
  v55[7] = v116;
  v55[8] = v115;
  v56 = *(a2 + 3);
  v57 = *(a2 + 5);
  v58 = v43 + 3;
  if (v43 + 3 > v44)
  {
    if (v44)
    {
      v59 = 2 * v44;
    }

    else
    {
      v59 = 2;
    }

    if (v58 <= v59)
    {
      v60 = v59;
    }

    else
    {
      v60 = v58;
    }

    v61 = v52;
    v62 = v22 + v40;
    v63 = v53;
    v64 = v42;
    physx::shdfnd::Array<physx::PxTriangle,physx::shdfnd::ReflectionAllocator<physx::PxTriangle>>::recreate(a3, v60);
    v42 = v64;
    v53 = v63;
    v51 = v62;
    v52 = v61;
    v54 = *a3;
    v45 = *(a3 + 8);
    v44 = *(a3 + 12) & 0x7FFFFFFF;
  }

  v65 = v109 + v41;
  v66 = v111 + v40;
  v67 = v107 + v42;
  *(a3 + 8) = v46;
  v68 = v54 + 36 * v45;
  v70 = v114;
  v69 = v115;
  *v68 = v114;
  *(v68 + 4) = v116;
  *(v68 + 8) = v115;
  *(v68 + 12) = v56;
  *(v68 + 20) = v57;
  *(v68 + 24) = v51;
  *(v68 + 28) = v53;
  *(v68 + 32) = v52;
  v71 = *(a2 + 3);
  v72 = *(a2 + 5);
  v73 = v43 + 4;
  if (v43 + 4 > v44)
  {
    if (v44)
    {
      v74 = 2 * v44;
    }

    else
    {
      v74 = 2;
    }

    if (v73 <= v74)
    {
      v75 = v74;
    }

    else
    {
      v75 = v73;
    }

    v76 = v66;
    v77 = v107 + v42;
    v78 = v65;
    v79 = v52;
    v80 = v51;
    v81 = v53;
    v82 = *(a2 + 5);
    physx::shdfnd::Array<physx::PxTriangle,physx::shdfnd::ReflectionAllocator<physx::PxTriangle>>::recreate(a3, v75);
    v72 = v82;
    v53 = v81;
    v51 = v80;
    v52 = v79;
    v65 = v78;
    v67 = v77;
    v66 = v76;
    v70 = v114;
    v69 = v115;
    v54 = *a3;
    v46 = *(a3 + 8);
    v44 = *(a3 + 12) & 0x7FFFFFFF;
  }

  *(a3 + 8) = v58;
  v83 = v54 + 36 * v46;
  *v83 = v51;
  *(v83 + 4) = v53;
  *(v83 + 8) = v52;
  *(v83 + 12) = v71;
  *(v83 + 20) = v72;
  *(v83 + 24) = v66;
  *(v83 + 28) = v65;
  *(v83 + 32) = v67;
  v84 = *(a2 + 3);
  v85 = *(a2 + 7);
  v86 = v43 + 5;
  if (v43 + 5 > v44)
  {
    if (v44)
    {
      v87 = 2 * v44;
    }

    else
    {
      v87 = 2;
    }

    if (v86 <= v87)
    {
      v88 = v87;
    }

    else
    {
      v88 = v86;
    }

    v112 = *(a2 + 3);
    physx::shdfnd::Array<physx::PxTriangle,physx::shdfnd::ReflectionAllocator<physx::PxTriangle>>::recreate(a3, v88);
    v84 = v112;
    v54 = *a3;
    v58 = *(a3 + 8);
    v44 = *(a3 + 12) & 0x7FFFFFFF;
  }

  v89 = v54 + 36 * v58;
  *(a3 + 8) = v73;
  *v89 = v66;
  *(v89 + 4) = v65;
  *(v89 + 8) = v67;
  *(v89 + 12) = v84;
  *(v89 + 28) = v85;
  *&v90 = *(a2 + 3);
  v91 = *(a2 + 8);
  v92 = *a2;
  v93 = *(a2 + 1);
  v94 = v43 + 6;
  if (v43 + 6 > v44)
  {
    if (v44)
    {
      v95 = 2 * v44;
    }

    else
    {
      v95 = 2;
    }

    if (v94 <= v95)
    {
      v96 = v95;
    }

    else
    {
      v96 = v94;
    }

    v110 = *a2;
    v113 = *(a2 + 3);
    v108 = *(a2 + 8);
    physx::shdfnd::Array<physx::PxTriangle,physx::shdfnd::ReflectionAllocator<physx::PxTriangle>>::recreate(a3, v96);
    v91 = v108;
    v92 = v110;
    *&v90 = v113;
    v54 = *a3;
    v73 = *(a3 + 8);
    v44 = *(a3 + 12) & 0x7FFFFFFF;
  }

  v97 = v54 + 36 * v73;
  *(a3 + 8) = v86;
  *v97 = v70;
  *(v97 + 4) = v116;
  *(v97 + 8) = v69;
  *(&v90 + 1) = __PAIR64__(LODWORD(v92), v91);
  *(v97 + 12) = v90;
  *(v97 + 28) = v93;
  v98 = *(a2 + 3);
  v99 = *(a2 + 8);
  v100 = v43 + 7;
  if (v43 + 7 > v44)
  {
    if (v44)
    {
      v101 = 2 * v44;
    }

    else
    {
      v101 = 2;
    }

    if (v100 <= v101)
    {
      v102 = v101;
    }

    else
    {
      v102 = v100;
    }

    physx::shdfnd::Array<physx::PxTriangle,physx::shdfnd::ReflectionAllocator<physx::PxTriangle>>::recreate(a3, v102);
    v54 = *a3;
    v86 = *(a3 + 8);
  }

  *(a3 + 8) = v94;
  v103 = v54 + 36 * v86;
  *v103 = v70;
  *(v103 + 4) = v116;
  *(v103 + 8) = v69;
  *(v103 + 12) = v66;
  *(v103 + 16) = v65;
  *(v103 + 20) = v67;
  *(v103 + 24) = v98;
  *(v103 + 32) = v99;
  v117 = -1;
  v104 = 6;
  do
  {
    v105 = *(a4 + 8);
    if ((*(a4 + 12) & 0x7FFFFFFFu) <= v105)
    {
      physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(a4, &v117);
    }

    else
    {
      *(*a4 + 4 * v105) = v117;
      ++*(a4 + 8);
    }

    --v104;
  }

  while (v104);
  return 6;
}

float *fixDir(float *result, float *a2, float *a3)
{
  v3 = a2[1];
  v4 = a3[1];
  v5 = a2[2];
  v6 = a3[2];
  v7 = ((v3 * v4) + (*a2 * *a3)) + (v5 * v6);
  v8 = *a2 - (*a3 * v7);
  v9 = v3 - (v4 * v7);
  v10 = v5 - (v6 * v7);
  v11 = ((v9 * v9) + (v8 * v8)) + (v10 * v10);
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  if (v11 > 0.0)
  {
    v15 = 1.0 / sqrtf(v11);
    v12 = v8 * v15;
    v13 = v9 * v15;
    v14 = v10 * v15;
  }

  *result = v12;
  result[1] = v13;
  result[2] = v14;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxExtendedBox,physx::shdfnd::ReflectionAllocator<physx::PxExtendedBox>>::growAndPushBack(uint64_t result, __int128 *a2)
{
  v3 = result;
  v4 = *(result + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxExtendedBox>::getName() [T = physx::PxExtendedBox]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    result = (*(*(v6 + 24) + 16))(v6 + 24, 56 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v3 + 8);
  if (v9)
  {
    v10 = v8 + 56 * v9;
    v11 = *v3;
    v12 = v8;
    do
    {
      v13 = *v11;
      *(v12 + 16) = *(v11 + 2);
      *v12 = v13;
      *(v12 + 24) = *(v11 + 24);
      *(v12 + 40) = *(v11 + 5);
      *(v12 + 48) = *(v11 + 12);
      v12 += 56;
      v11 = (v11 + 56);
    }

    while (v12 < v10);
    v14 = *(v3 + 8);
  }

  else
  {
    v14 = 0;
  }

  v15 = v8 + 56 * v14;
  v16 = *a2;
  *(v15 + 16) = *(a2 + 2);
  *v15 = v16;
  *(v15 + 24) = *(a2 + 24);
  *(v15 + 40) = *(a2 + 5);
  *(v15 + 48) = *(a2 + 12);
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v8;
  ++*(v3 + 8);
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::shdfnd::Array<void const*,physx::shdfnd::ReflectionAllocator<void const*>>::growAndPushBack(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<const void *>::getName() [T = const void *]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    result = (*(*(v6 + 24) + 16))(v6 + 24, 8 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v3 + 8);
  v10 = &v8[v9];
  if (v9)
  {
    v11 = *v3;
    v12 = v8;
    do
    {
      v13 = *v11++;
      *v12++ = v13;
    }

    while (v12 < v10);
  }

  *v10 = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    LODWORD(v9) = *(v3 + 8);
  }

  *v3 = v8;
  *(v3 + 8) = v9 + 1;
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxExtendedCapsule,physx::shdfnd::ReflectionAllocator<physx::PxExtendedCapsule>>::growAndPushBack(uint64_t result, __int128 *a2)
{
  v3 = result;
  v4 = *(result + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxExtendedCapsule>::getName() [T = physx::PxExtendedCapsule]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    result = (*(*(v6 + 24) + 16))(v6 + 24, 56 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v3 + 8);
  if (v9)
  {
    v10 = v8 + 56 * v9;
    v11 = *v3;
    v12 = v8;
    do
    {
      v13 = *v11;
      v14 = v11[1];
      v15 = v11[2];
      *(v12 + 48) = *(v11 + 6);
      *(v12 + 16) = v14;
      *(v12 + 32) = v15;
      *v12 = v13;
      v12 += 56;
      v11 = (v11 + 56);
    }

    while (v12 < v10);
    v16 = *(v3 + 8);
  }

  else
  {
    v16 = 0;
  }

  v17 = v8 + 56 * v16;
  v18 = *a2;
  v19 = a2[1];
  v20 = a2[2];
  *(v17 + 48) = *(a2 + 6);
  *(v17 + 16) = v19;
  *(v17 + 32) = v20;
  *v17 = v18;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v8;
  ++*(v3 + 8);
  *(v3 + 12) = v5;
  return result;
}

void *physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<physx::PxBase const* const,physx::Cct::ObservedRefCounter>,physx::PxBase const*,physx::shdfnd::Hash<physx::PxBase const*>,physx::shdfnd::internal::HashMapBase<physx::PxBase const*,physx::Cct::ObservedRefCounter,physx::shdfnd::Hash<physx::PxBase const*>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  if ((a2 ^ (a2 - 1)) <= a2 - 1)
  {
    v4 = a2 | (a2 >> 1) | ((a2 | (a2 >> 1)) >> 2);
    v5 = v4 | (v4 >> 4) | ((v4 | (v4 >> 4)) >> 8);
    v2 = (v5 | HIWORD(v5)) + 1;
  }

  v6 = *(a1 + 32);
  v7 = (*(a1 + 40) * v2);
  v8 = ((-4 * (v2 + v7)) & 0xC) + 4 * (v2 + v7);
  if (v8 + 16 * v7)
  {
    v9 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v8 + 16 * v7, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsHashInternals.h", 372);
  }

  else
  {
    v9 = 0;
  }

  v10 = &v9[4 * v2];
  result = memset(v9, 255, 4 * v2);
  if (*(a1 + 52))
  {
    v12 = 0;
    v13 = &v9[v8 + 8];
    v14 = (*(a1 + 8) + 8);
    do
    {
      v15 = *(v14 - 1);
      v16 = (~(v15 << 32) + v15) ^ ((~(v15 << 32) + v15) >> 22);
      v17 = 9 * ((v16 + ~(v16 << 13)) ^ ((v16 + ~(v16 << 13)) >> 8));
      v18 = (v17 ^ (v17 >> 15)) + ~((v17 ^ (v17 >> 15)) << 27);
      LODWORD(v18) = (v2 - 1) & ((v18 >> 31) ^ v18);
      *&v10[4 * v12] = *&v9[4 * v18];
      *&v9[4 * v18] = v12;
      *(v13 - 1) = v15;
      v19 = *v14;
      v14 += 4;
      *v13 = v19;
      v13 += 16;
      ++v12;
    }

    while (v12 < *(a1 + 52));
  }

  if (*a1)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(a1 + 16) = v10;
  *(a1 + 24) = v9;
  *a1 = v9;
  *(a1 + 8) = &v9[v8];
  *(a1 + 32) = v7;
  *(a1 + 36) = v2;
  if (*(a1 + 44) == -1)
  {
    *(a1 + 44) = v6;
  }

  return result;
}

uint64_t physx::shdfnd::Array<physx::Cct::Controller *,physx::shdfnd::ReflectionAllocator<physx::Cct::Controller *>>::growAndPushBack(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Cct::Controller *>::getName() [T = physx::Cct::Controller *]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    result = (*(*(v6 + 24) + 16))(v6 + 24, 8 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v3 + 8);
  v10 = &v8[v9];
  if (v9)
  {
    v11 = *v3;
    v12 = v8;
    do
    {
      v13 = *v11++;
      *v12++ = v13;
    }

    while (v12 < v10);
  }

  *v10 = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    LODWORD(v9) = *(v3 + 8);
  }

  *v3 = v8;
  *(v3 + 8) = v9 + 1;
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<physx::PxBase const* const,physx::Cct::ObservedRefCounter>,physx::PxBase const*,physx::shdfnd::Hash<physx::PxBase const*>,physx::shdfnd::internal::HashMapBase<physx::PxBase const*,physx::Cct::ObservedRefCounter,physx::shdfnd::Hash<physx::PxBase const*>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create(int32x2_t *a1, void *a2, _BYTE *a3)
{
  v5 = a1[4].u32[1];
  if (!v5)
  {
    v9 = 0;
    goto LABEL_8;
  }

  v6 = ~(*a2 << 32) + *a2;
  v7 = 9 * (((v6 ^ (v6 >> 22)) + ~((v6 ^ (v6 >> 22)) << 13)) ^ (((v6 ^ (v6 >> 22)) + ~((v6 ^ (v6 >> 22)) << 13)) >> 8));
  v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
  v9 = (v5 - 1) & ((v8 >> 31) ^ v8);
  v10 = *(*&a1[3] + 4 * v9);
  if (v10 == -1)
  {
LABEL_8:
    *a3 = 0;
    if (a1[6].i32[1] == a1[4].i32[0])
    {
      if (v5)
      {
        v12 = 2 * v5;
      }

      else
      {
        v12 = 16;
      }

      if (v5 < v12)
      {
        physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<physx::PxBase const* const,physx::Cct::ObservedRefCounter>,physx::PxBase const*,physx::shdfnd::Hash<physx::PxBase const*>,physx::shdfnd::internal::HashMapBase<physx::PxBase const*,physx::Cct::ObservedRefCounter,physx::shdfnd::Hash<physx::PxBase const*>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(a1, v12);
        v5 = a1[4].u32[1];
      }

      v13 = ~(*a2 << 32) + *a2;
      v14 = 9 * (((v13 ^ (v13 >> 22)) + ~((v13 ^ (v13 >> 22)) << 13)) ^ (((v13 ^ (v13 >> 22)) + ~((v13 ^ (v13 >> 22)) << 13)) >> 8));
      v15 = (v14 ^ (v14 >> 15)) + ~((v14 ^ (v14 >> 15)) << 27);
      v9 = (v5 - 1) & ((v15 >> 31) ^ v15);
    }

    v16 = a1[5].u32[1];
    a1[5].i32[1] = v16 + 1;
    v17 = a1[3];
    v18 = a1[1];
    *(*&a1[2] + 4 * v16) = *(*&v17 + 4 * v9);
    *(*&v17 + 4 * v9) = v16;
    a1[6] = vadd_s32(a1[6], 0x100000001);
    return *&v18 + 16 * v16;
  }

  v11 = a1[1];
  while (*(*&v11 + 16 * v10) != *a2)
  {
    v10 = *(*&a1[2] + 4 * v10);
    if (v10 == -1)
    {
      goto LABEL_8;
    }
  }

  result = *&v11 + 16 * v10;
  *a3 = 1;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Cct::ObstacleContext *,physx::shdfnd::ReflectionAllocator<physx::Cct::ObstacleContext *>>::growAndPushBack(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Cct::ObstacleContext *>::getName() [T = physx::Cct::ObstacleContext *]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    result = (*(*(v6 + 24) + 16))(v6 + 24, 8 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v3 + 8);
  v10 = &v8[v9];
  if (v9)
  {
    v11 = *v3;
    v12 = v8;
    do
    {
      v13 = *v11++;
      *v12++ = v13;
    }

    while (v12 < v10);
  }

  *v10 = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    LODWORD(v9) = *(v3 + 8);
  }

  *v3 = v8;
  *(v3 + 8) = v9 + 1;
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::shdfnd::Array<void const*,physx::shdfnd::ReflectionAllocator<void const*>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    v4 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v5 = "static const char *physx::shdfnd::ReflectionAllocator<const void *>::getName() [T = const void *]";
    }

    else
    {
      v5 = "<allocation names disabled>";
    }

    result = (*(*(v4 + 24) + 16))(v4 + 24, 8 * a2, v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = *v3;
  if (v7)
  {
    v9 = &v6[v7];
    v10 = v6;
    do
    {
      v11 = *v8++;
      *v10++ = v11;
    }

    while (v10 < v9);
    v8 = *v3;
  }

  if ((*(v3 + 12) & 0x80000000) == 0 && v8)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v6;
  *(v3 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxExtendedBox,physx::shdfnd::ReflectionAllocator<physx::PxExtendedBox>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    v4 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v5 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxExtendedBox>::getName() [T = physx::PxExtendedBox]";
    }

    else
    {
      v5 = "<allocation names disabled>";
    }

    result = (*(*(v4 + 24) + 16))(v4 + 24, 56 * a2, v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = *v3;
  if (v7)
  {
    v9 = v6 + 56 * v7;
    v10 = v6;
    do
    {
      v11 = *v8;
      *(v10 + 16) = *(v8 + 2);
      *v10 = v11;
      *(v10 + 24) = *(v8 + 24);
      *(v10 + 40) = *(v8 + 5);
      *(v10 + 48) = *(v8 + 12);
      v10 += 56;
      v8 = (v8 + 56);
    }

    while (v10 < v9);
    v8 = *v3;
  }

  if ((*(v3 + 12) & 0x80000000) == 0 && v8)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v6;
  *(v3 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxExtendedCapsule,physx::shdfnd::ReflectionAllocator<physx::PxExtendedCapsule>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    v4 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v5 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxExtendedCapsule>::getName() [T = physx::PxExtendedCapsule]";
    }

    else
    {
      v5 = "<allocation names disabled>";
    }

    result = (*(*(v4 + 24) + 16))(v4 + 24, 56 * a2, v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = *v3;
  if (v7)
  {
    v9 = v6 + 56 * v7;
    v10 = v6;
    do
    {
      v11 = *v8;
      v12 = v8[1];
      v13 = v8[2];
      *(v10 + 48) = *(v8 + 6);
      *(v10 + 16) = v12;
      *(v10 + 32) = v13;
      *v10 = v11;
      v10 += 56;
      v8 = (v8 + 56);
    }

    while (v10 < v9);
    v8 = *v3;
  }

  if ((*(v3 + 12) & 0x80000000) == 0 && v8)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v6;
  *(v3 + 12) = a2;
  return result;
}

physx::Cct::HandleManager *physx::Cct::HandleManager::HandleManager(physx::Cct::HandleManager *this)
{
  *(this + 10) = 0;
  *(this + 1) = 0x200000000;
  *this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 16, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcharacterkinematic/src/CctObstacleContext.cpp", 44);
  v2 = *(this + 3);
  if (!v2)
  {
    *(this + 2) = 0;
    goto LABEL_6;
  }

  v3 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 2 * v2, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcharacterkinematic/src/CctObstacleContext.cpp", 45);
  v4 = *(this + 3);
  *(this + 2) = v3;
  if (!v4)
  {
LABEL_6:
    v8 = 0;
    v7 = 0;
    *(this + 3) = 0;
    goto LABEL_7;
  }

  v5 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 2 * v4, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcharacterkinematic/src/CctObstacleContext.cpp", 46);
  v6 = *(this + 3);
  *(this + 3) = v5;
  if (v6)
  {
    v7 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 2 * v6, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcharacterkinematic/src/CctObstacleContext.cpp", 47);
    v8 = (2 * *(this + 3));
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

LABEL_7:
  *(this + 4) = v7;
  memset(*(this + 2), 255, v8);
  memset(*(this + 3), 255, (2 * *(this + 3)));
  bzero(*(this + 4), (2 * *(this + 3)));
  return this;
}

void *physx::Cct::HandleManager::SetupLists(void *this, void **a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5)
{
  v9 = this;
  if (this[4])
  {
    this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v9[4] = 0;
  if (v9[3])
  {
    this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v9[3] = 0;
  if (v9[2])
  {
    this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v9[2] = 0;
  if (*v9)
  {
    this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v9 = a2;
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a5;
  return this;
}

uint64_t physx::Cct::HandleManager::Add(physx::Cct::HandleManager *this, void *a2)
{
  v4 = *(this + 10);
  if (v4)
  {
    v5 = *(this + 2);
    v6 = *(*(this + 3) + 2 * v5);
    *(*this + 8 * v5) = a2;
    *(this + 2) = v5 + 1;
    *(*(this + 2) + 2 * v6) = v5;
    *(this + 10) = v4 - 1;
    return v6 | (*(*(this + 4) + 2 * v6) << 16);
  }

  v8 = *(this + 2);
  if (v8 == *(this + 3))
  {
    v9 = 2 * v8;
    if (2 * v8 >= 0xFFFF)
    {
      v10 = 0xFFFF;
    }

    else
    {
      v10 = 2 * v8;
    }

    *(this + 3) = v10;
    if (v9)
    {
      v11 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 8 * v10, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcharacterkinematic/src/CctObstacleContext.cpp", 94);
      v10 = *(this + 3);
      if (v10)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v11 = 0;
      if (v10)
      {
LABEL_9:
        v12 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 2 * v10, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcharacterkinematic/src/CctObstacleContext.cpp", 95);
        v13 = *(this + 3);
        if (v13)
        {
          v14 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 2 * v13, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcharacterkinematic/src/CctObstacleContext.cpp", 96);
          v15 = *(this + 3);
          if (v15)
          {
            v16 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 2 * v15, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcharacterkinematic/src/CctObstacleContext.cpp", 97);
LABEL_16:
            memcpy(v11, *this, (8 * *(this + 2)));
            memcpy(v12, *(this + 2), (2 * *(this + 2)));
            memcpy(v14, *(this + 3), (2 * *(this + 2)));
            memcpy(v16, *(this + 4), (2 * *(this + 2)));
            memset(&v12[2 * *(this + 2)], 255, (2 * (*(this + 3) - *(this + 2))));
            memset(&v14[2 * *(this + 2)], 255, (2 * (*(this + 3) - *(this + 2))));
            bzero(&v16[2 * *(this + 2)], (2 * (*(this + 3) - *(this + 2))));
            physx::Cct::HandleManager::SetupLists(this, v11, v12, v14, v16);
            v8 = *(this + 2);
            goto LABEL_17;
          }
        }

        else
        {
          v14 = 0;
        }

LABEL_15:
        v16 = 0;
        goto LABEL_16;
      }
    }

    v14 = 0;
    v12 = 0;
    goto LABEL_15;
  }

LABEL_17:
  *(*this + 8 * v8) = a2;
  v17 = *(this + 3);
  *(*(this + 2) + 2 * v8) = v8;
  *(v17 + 2 * v8) = v8;
  *(this + 2) = v8 + 1;
  return v8 | (*(*(this + 4) + 2 * v8) << 16);
}

uint64_t *physx::Cct::HandleManager::Remove(uint64_t *this, unsigned int a2)
{
  v2 = *(this + 3);
  if (a2 < v2)
  {
    v3 = *(this[2] + 2 * a2);
    if (v3 != 0xFFFF && v2 > v3)
    {
      v5 = *(this + 2);
      if (v5)
      {
        if (*(this[4] + 2 * a2) == HIWORD(a2))
        {
          v6 = *this;
          v7 = v5 - 1;
          *(this + 2) = v7;
          *(v6 + 8 * v3) = *(v6 + 8 * v7);
          v8 = this[2];
          v9 = this[3];
          *(v8 + 2 * *(v9 + 2 * v7)) = v3;
          *(v9 + 2 * v3) = *(v9 + 2 * v7);
          *(v9 + 2 * v7) = a2;
          *(v8 + 2 * a2) = -1;
          ++*(this + 10);
          ++*(this[4] + 2 * a2);
        }
      }
    }
  }

  return this;
}

void physx::Cct::ObstacleContext::~ObstacleContext(physx::Cct::ObstacleContext *this)
{
  *this = &unk_1F5D27C50;
  physx::Cct::HandleManager::SetupLists(this + 5, 0, 0, 0, 0);
  v2 = *(this + 9);
  if ((v2 & 0x80000000) == 0 && (v2 & 0x7FFFFFFF) != 0 && *(this + 3) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  v4 = *(this + 5);
  if ((v4 & 0x80000000) == 0 && (v4 & 0x7FFFFFFF) != 0 && *(this + 1) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }
}

{
  physx::Cct::ObstacleContext::~ObstacleContext(this);
  if (v1)
  {
    v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v2();
  }
}

uint64_t physx::Cct::ObstacleContext::addObstacle(uint64_t a1, __int128 *a2)
{
  if (*a2 == 2)
  {
    v17 = physx::Cct::HandleManager::Add((a1 + 40), ((*(a1 + 32) << 16) | 3));
    v5 = v17;
    v28 = v17;
    v18 = a2[1];
    v29 = *a2;
    v30 = v18;
    v31 = *(a2 + 4);
    v19 = *(a2 + 10);
    v20 = *(a2 + 11);
    v32 = v19;
    v33 = v20;
    v21 = *(a2 + 12);
    v22 = *(a2 + 13);
    v34 = v21;
    v35 = v22;
    v23 = *(a2 + 7);
    v24 = *(a1 + 32);
    v25 = *(a1 + 36) & 0x7FFFFFFF;
    v36 = v23;
    if (v25 <= v24)
    {
      physx::shdfnd::Array<physx::Cct::ObstacleContext::InternalCapsuleObstacle,physx::shdfnd::ReflectionAllocator<physx::Cct::ObstacleContext::InternalCapsuleObstacle>>::growAndPushBack(a1 + 24, &v28);
    }

    else
    {
      v26 = *(a1 + 24) + 72 * v24;
      *v26 = v17;
      *(v26 + 8) = v29;
      *(v26 + 24) = v30;
      *(v26 + 40) = v31;
      *(v26 + 48) = v19;
      *(v26 + 52) = v20;
      *(v26 + 56) = v21;
      *(v26 + 60) = v22;
      *(v26 + 64) = v23;
      ++*(a1 + 32);
    }

    goto LABEL_10;
  }

  if (*a2 == 3)
  {
    v4 = physx::Cct::HandleManager::Add((a1 + 40), ((*(a1 + 16) << 16) | 4));
    v5 = v4;
    v28 = v4;
    v6 = a2[1];
    v29 = *a2;
    v30 = v6;
    v31 = *(a2 + 4);
    v7 = *(a2 + 10);
    v8 = *(a2 + 11);
    v32 = v7;
    v33 = v8;
    v9 = *(a2 + 12);
    v10 = *(a2 + 13);
    v34 = v9;
    v35 = v10;
    v11 = *(a2 + 14);
    v12 = *(a2 + 15);
    v36 = __PAIR64__(v12, v11);
    v13 = *(a2 + 16);
    v14 = *(a1 + 16);
    v15 = *(a1 + 20) & 0x7FFFFFFF;
    v37 = v13;
    if (v15 <= v14)
    {
      physx::shdfnd::Array<physx::Cct::ObstacleContext::InternalBoxObstacle,physx::shdfnd::ReflectionAllocator<physx::Cct::ObstacleContext::InternalBoxObstacle>>::growAndPushBack(a1 + 8, &v28);
    }

    else
    {
      v16 = *(a1 + 8) + 80 * v14;
      *v16 = v4;
      *(v16 + 8) = v29;
      *(v16 + 24) = v30;
      *(v16 + 40) = v31;
      *(v16 + 48) = v7;
      *(v16 + 52) = v8;
      *(v16 + 56) = v9;
      *(v16 + 60) = v10;
      *(v16 + 64) = v11;
      *(v16 + 68) = v12;
      *(v16 + 72) = v13;
      ++*(a1 + 16);
    }

LABEL_10:
    physx::Cct::CharacterControllerManager::onObstacleAdded(*(a1 + 88), v5, a1);
    return v5;
  }

  return 0xFFFFFFFFLL;
}

uint64_t physx::Cct::ObstacleContext::removeObstacle(physx::Cct::ObstacleContext *this, unsigned int a2)
{
  v2 = *(this + 13);
  if (a2 >= v2)
  {
    return 0;
  }

  v4 = *(*(this + 7) + 2 * a2);
  if (v4 == 0xFFFF || v2 <= v4)
  {
    return 0;
  }

  if (*(*(this + 9) + 2 * a2) != HIWORD(a2))
  {
    return 0;
  }

  v7 = *(*(this + 5) + 8 * *(*(this + 7) + 2 * a2));
  if (!v7)
  {
    return 0;
  }

  if (*(*(this + 5) + 8 * *(*(this + 7) + 2 * a2)) == 3)
  {
    v20 = *(this + 8);
    if (WORD1(v7) < v20)
    {
      physx::Cct::HandleManager::Remove(this + 5, a2);
      v21 = *(this + 3);
      if (v20 - 1 != WORD1(v7))
      {
        v22 = *(v21 + 72 * (v20 - 1));
        v23 = *(this + 13);
        if (*(v21 + 72 * (v20 - 1)) < v23)
        {
          v24 = *(*(this + 7) + 2 * v22);
          v25 = v24 != 0xFFFF && v23 > v24;
          if (v25 && *(*(this + 9) + 2 * v22) == HIWORD(*(v21 + 72 * (v20 - 1))))
          {
            *(*(this + 5) + 8 * *(*(this + 7) + 2 * v22)) = v7;
            v21 = *(this + 3);
          }
        }
      }

      v26 = *(this + 8) - 1;
      *(this + 8) = v26;
      v27 = v21 + 72 * v26;
      v28 = v21 + 72 * WORD1(v7);
      *v28 = *v27;
      v29 = *(v27 + 40);
      v30 = *(v27 + 24);
      *(v28 + 8) = *(v27 + 8);
      *(v28 + 24) = v30;
      *(v28 + 40) = v29;
      *(v28 + 48) = *(v27 + 48);
      *(v28 + 64) = *(v27 + 64);
      goto LABEL_34;
    }

    return 0;
  }

  if (*(*(this + 5) + 8 * *(*(this + 7) + 2 * a2)) != 4)
  {
    return 0;
  }

  v8 = *(this + 4);
  if (WORD1(v7) >= v8)
  {
    return 0;
  }

  physx::Cct::HandleManager::Remove(this + 5, a2);
  v9 = *(this + 1);
  if (v8 - 1 != WORD1(v7))
  {
    v10 = *(v9 + 80 * (v8 - 1));
    v11 = *(this + 13);
    if (*(v9 + 80 * (v8 - 1)) < v11)
    {
      v12 = *(*(this + 7) + 2 * v10);
      v13 = v12 != 0xFFFF && v11 > v12;
      if (v13 && *(*(this + 9) + 2 * v10) == HIWORD(*(v9 + 80 * (v8 - 1))))
      {
        *(*(this + 5) + 8 * *(*(this + 7) + 2 * v10)) = v7;
        v9 = *(this + 1);
      }
    }
  }

  v14 = *(this + 4) - 1;
  *(this + 4) = v14;
  v15 = v9 + 80 * v14;
  v16 = v9 + 80 * WORD1(v7);
  *v16 = *v15;
  v17 = *(v15 + 40);
  v18 = *(v15 + 24);
  *(v16 + 8) = *(v15 + 8);
  *(v16 + 24) = v18;
  *(v16 + 40) = v17;
  *(v16 + 48) = *(v15 + 48);
  *(v16 + 64) = *(v15 + 64);
  *(v16 + 72) = *(v15 + 72);
LABEL_34:
  v31 = *(this + 11);
  v32 = *(v31 + 112);
  if (!v32)
  {
    return 1;
  }

  v33 = *(v31 + 104);
  result = 1;
  do
  {
    if (*(*v33 + 320) == a2)
    {
      *(*v33 + 320) = -1;
    }

    v33 += 8;
    --v32;
  }

  while (v32);
  return result;
}

uint64_t physx::Cct::ObstacleContext::updateObstacle(uint64_t a1, unsigned int a2, __int128 *a3)
{
  v3 = *(a1 + 52);
  if (a2 < v3)
  {
    v4 = *(*(a1 + 56) + 2 * a2);
    if (v4 != 0xFFFF && v3 > v4 && *(*(a1 + 72) + 2 * a2) == HIWORD(a2))
    {
      v6 = *(*(a1 + 40) + 8 * *(*(a1 + 56) + 2 * a2));
      if (v6)
      {
        if (*(*(a1 + 40) + 8 * *(*(a1 + 56) + 2 * a2)) - 1 == *a3)
        {
          v7 = WORD1(v6);
          if (v6 == 3)
          {
            if (v7 < *(a1 + 32))
            {
              v11 = *(a1 + 24) + 72 * v7;
              v12 = *a3;
              v13 = a3[1];
              *(v11 + 40) = *(a3 + 4);
              *(v11 + 24) = v13;
              *(v11 + 8) = v12;
              *(v11 + 48) = *(a3 + 40);
              *(v11 + 64) = *(a3 + 7);
              goto LABEL_16;
            }
          }

          else if (v6 == 4 && v7 < *(a1 + 16))
          {
            v8 = *(a1 + 8) + 80 * v7;
            v9 = *a3;
            v10 = a3[1];
            *(v8 + 40) = *(a3 + 4);
            *(v8 + 24) = v10;
            *(v8 + 8) = v9;
            *(v8 + 48) = *(a3 + 40);
            *(v8 + 64) = *(a3 + 7);
            *(v8 + 72) = *(a3 + 16);
LABEL_16:
            physx::Cct::CharacterControllerManager::onObstacleUpdated(*(a1 + 88), a2, a1);
            return 1;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t physx::Cct::ObstacleContext::getObstacle(physx::Cct::ObstacleContext *this, unsigned int a2)
{
  v2 = *(this + 4);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (!v3)
  {
    v5 = *(this + 1) + 80 * a2;
    return v5 + 8;
  }

  if (v4 < *(this + 8))
  {
    v5 = *(this + 3) + 72 * v4;
    return v5 + 8;
  }

  return 0;
}

unint64_t physx::Cct::ObstacleContext::getObstacleByHandle(physx::Cct::ObstacleContext *this, unsigned int a2)
{
  v2 = *(this + 13);
  if (a2 < v2)
  {
    v3 = *(*(this + 7) + 2 * a2);
    if (v3 != 0xFFFF && v2 > v3 && *(*(this + 9) + 2 * a2) == HIWORD(a2))
    {
      v5 = *(*(this + 5) + 8 * *(*(this + 7) + 2 * a2));
      if (v5)
      {
        v6 = WORD1(v5);
        if (v5 == 3)
        {
          if (WORD1(v5) < *(this + 8))
          {
            v7 = *(this + 3);
            v8 = 72;
            return v7 + v6 * v8 + 8;
          }
        }

        else if (v5 == 4 && WORD1(v5) < *(this + 4))
        {
          v7 = *(this + 1);
          v8 = 80;
          return v7 + v6 * v8 + 8;
        }
      }
    }
  }

  return 0;
}

uint64_t physx::Cct::ObstacleContext::raycastSingle(uint64_t a1, uint64_t a2, float32x2_t *a3, float32x2_t *a4, _DWORD *a5, float a6)
{
  v38 = 0uLL;
  v39 = -1;
  v40 = 0;
  v42 = 0;
  v41 = 0uLL;
  *v43 = 2139095039;
  *&v43[8] = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    v14 = off_1EE185D68[0];
    v15 = 80 * v11;
    v16 = 3.4028e38;
    do
    {
      v17 = *(a1 + 8) + v12;
      v18 = *(v17 + 72);
      v35 = 3;
      v36 = *(v17 + 64);
      v37 = v18;
      v19 = *(v17 + 40);
      v32 = *(v17 + 48);
      v33 = vcvt_f32_f64(*(v17 + 24));
      v34 = v19;
      v31 = 0;
      if ((v14)(&v35, &v32, a3, a4, &v31, a6, 1, &v38))
      {
        v20 = *v43;
        if (*v43 < v16)
        {
          v13 = v17 + 8;
          *a2 = v38;
          *(a2 + 16) = v39;
          *(a2 + 20) = v40;
          *(a2 + 24) = v41;
          *(a2 + 40) = v42;
          *(a2 + 48) = v20;
          *(a2 + 52) = *&v43[4];
          *a5 = *(*(a1 + 8) + v12);
          v16 = v20;
        }
      }

      v12 += 80;
    }

    while (v15 != v12);
  }

  else
  {
    v13 = 0;
    v16 = 3.4028e38;
  }

  v21 = *(a1 + 32);
  if (v21)
  {
    v22 = 0;
    v23 = off_1EE185D60[0];
    v24 = 72 * v21;
    do
    {
      v25 = *(a1 + 24) + v22;
      v35 = 2;
      v36 = vrev64_s32(*(v25 + 64));
      v26 = *(v25 + 40);
      v32 = *(v25 + 48);
      v33 = vcvt_f32_f64(*(v25 + 24));
      v34 = v26;
      v31 = 0;
      (v23)(&v35, &v32, a3, a4, &v31, a6, 1, &v38);
      if (v27)
      {
        v28 = *v43;
        if (*v43 < v16)
        {
          v13 = v25 + 8;
          *a2 = v38;
          *(a2 + 16) = v39;
          *(a2 + 20) = v40;
          *(a2 + 24) = v41;
          *(a2 + 40) = v42;
          *(a2 + 48) = v28;
          *(a2 + 52) = *&v43[4];
          *a5 = *(*(a1 + 24) + v22);
          v16 = v28;
        }
      }

      v22 += 72;
    }

    while (v24 != v22);
  }

  return v13;
}

uint64_t physx::Cct::ObstacleContext::raycastSingle(uint64_t a1, uint64_t a2, unsigned int *a3, float *a4, float32x2_t *a5, float a6)
{
  v8 = *a3;
  v9 = *a3;
  v10 = *(a1 + 52);
  if (v9 >= v10)
  {
    return 0;
  }

  v27 = v6;
  v28 = v7;
  v11 = *(*(a1 + 56) + 2 * v9);
  v12 = v11 != 0xFFFF && v10 > v11;
  if (v12 && *(*(a1 + 72) + 2 * v9) == HIWORD(v8) && (v13 = *(*(a1 + 40) + 8 * *(*(a1 + 56) + 2 * v9))) != 0 && ((v14 = WORD1(v13), *(*(a1 + 40) + 8 * *(*(a1 + 56) + 2 * v9)) != 4) ? (v15 = *(a1 + 24) + 72 * v14, v16 = off_1EE185D60[0], v24 = 2, v25 = vrev64_s32(*(v15 + 64))) : (v15 = *(a1 + 8) + 80 * v14, v16 = off_1EE185D68[0], v17 = *(v15 + 72), v24 = 3, v25 = *(v15 + 64), v26 = v17), v19 = *(v15 + 40), v21 = *(v15 + 48), v22 = vcvt_f32_f64(*(v15 + 24)), v23 = v19, v20 = 0, (v16)(&v24, &v21, a4, a5, &v20, a6, 1, a2)))
  {
    return v15 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t physx::Cct::ObstacleContext::onOriginShift(uint64_t result, float32x2_t *a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = vcvtq_f64_f32(*a2);
    v4 = a2[1].f32[0];
    v5 = (*(result + 8) + 40);
    do
    {
      *(v5 - 1) = vsubq_f64(*(v5 - 2), v3);
      *v5 = *v5 - v4;
      v5 += 10;
      --v2;
    }

    while (v2);
  }

  v6 = *(result + 32);
  if (v6)
  {
    v7 = vcvtq_f64_f32(*a2);
    v8 = a2[1].f32[0];
    v9 = (*(result + 24) + 40);
    do
    {
      *(v9 - 1) = vsubq_f64(*(v9 - 2), v7);
      *v9 = *v9 - v8;
      v9 += 9;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t physx::Cct::SweptBox::computeTemporalBox(uint64_t a1, uint64_t a2, uint64_t a3, float64x2_t *a4, float32x2_t *a5, double a6)
{
  LODWORD(a6) = *(a1 + 48);
  if (*(a1 + 44) > *&a6)
  {
    LODWORD(a6) = *(a1 + 44);
  }

  return physx::Cct::computeTemporalBox(a3, (a2 + 300), a4, a5, a6, *(a1 + 40) + *(a1 + 40), *(a2 + 316), *(a2 + 328));
}

uint64_t physx::Cct::computeTemporalBox(uint64_t result, float32x2_t *a2, float64x2_t *a3, float32x2_t *a4, double a5, float a6, float a7, float a8)
{
  *&a5 = *&a5 + a7;
  v8 = a6 * 0.5;
  v9 = a2[1].f32[0];
  v10 = a3[1].f64[0];
  v11 = (*&a5 + (fabsf(v9) * v8));
  v12 = v10 + v11;
  v13 = v10 + a4[1].f32[0];
  v14 = v13 - v11;
  v15 = v13 + v11;
  v16 = *a3;
  v17 = vcvtq_f64_f32(vmla_n_f32(vdup_lane_s32(*&a5, 0), vabs_f32(*a2), v8));
  v18 = vsubq_f64(*a3, v17);
  v19 = vaddq_f64(*a3, vcvtq_f64_f32(*a4));
  v20 = vsubq_f64(v19, v17);
  v21 = vbslq_s8(vcgtq_f64(v18, v20), v20, v18);
  if (v10 - v11 <= v14)
  {
    v22 = v10 - v11;
  }

  else
  {
    v22 = v14;
  }

  v23 = vaddq_f64(v16, v17);
  v24 = vaddq_f64(v19, v17);
  v25 = vbslq_s8(vcgtq_f64(v24, v23), v24, v23);
  if (v12 < v15)
  {
    v12 = v15;
  }

  if (a8 == 0.0)
  {
    goto LABEL_10;
  }

  v26 = vmul_n_f32(*a2, a8);
  v27 = v10 - (v9 * a8);
  v28 = v27 - v11;
  v29 = v27 + v11;
  v30 = vsubq_f64(v16, vcvtq_f64_f32(v26));
  v31 = vsubq_f64(v30, v17);
  v21 = vbslq_s8(vcgtq_f64(v21, v31), v31, v21);
  if (v22 > v28)
  {
    v22 = v28;
  }

  v32 = vaddq_f64(v30, v17);
  v25 = vbslq_s8(vcgtq_f64(v32, v25), v32, v25);
  if (v12 >= v29)
  {
LABEL_10:
    v29 = v12;
  }

  *result = v21;
  *(result + 16) = v22;
  *(result + 24) = v25;
  *(result + 40) = v29;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Cct::ObstacleContext::InternalBoxObstacle,physx::shdfnd::ReflectionAllocator<physx::Cct::ObstacleContext::InternalBoxObstacle>>::growAndPushBack(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Cct::ObstacleContext::InternalBoxObstacle>::getName() [T = physx::Cct::ObstacleContext::InternalBoxObstacle]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    result = (*(*(v6 + 24) + 16))(v6 + 24, 80 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v3 + 8);
  if (v9)
  {
    v10 = v8 + 80 * v9;
    v11 = *v3;
    v12 = v8;
    do
    {
      *v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 24);
      *(v12 + 40) = *(v11 + 40);
      *(v12 + 24) = v14;
      *(v12 + 8) = v13;
      *(v12 + 48) = *(v11 + 48);
      *(v12 + 64) = *(v11 + 64);
      *(v12 + 72) = *(v11 + 72);
      v12 += 80;
      v11 += 80;
    }

    while (v12 < v10);
    v15 = *(v3 + 8);
  }

  else
  {
    v15 = 0;
  }

  v16 = v8 + 80 * v15;
  *v16 = *a2;
  v17 = *(a2 + 8);
  v18 = *(a2 + 24);
  *(v16 + 40) = *(a2 + 40);
  *(v16 + 24) = v18;
  *(v16 + 8) = v17;
  *(v16 + 48) = *(a2 + 48);
  *(v16 + 64) = *(a2 + 64);
  *(v16 + 72) = *(a2 + 72);
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v8;
  ++*(v3 + 8);
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Cct::ObstacleContext::InternalCapsuleObstacle,physx::shdfnd::ReflectionAllocator<physx::Cct::ObstacleContext::InternalCapsuleObstacle>>::growAndPushBack(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Cct::ObstacleContext::InternalCapsuleObstacle>::getName() [T = physx::Cct::ObstacleContext::InternalCapsuleObstacle]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    result = (*(*(v6 + 24) + 16))(v6 + 24, 72 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v3 + 8);
  if (v9)
  {
    v10 = v8 + 72 * v9;
    v11 = *v3;
    v12 = v8;
    do
    {
      *v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 24);
      *(v12 + 40) = *(v11 + 40);
      *(v12 + 24) = v14;
      *(v12 + 8) = v13;
      *(v12 + 48) = *(v11 + 48);
      *(v12 + 64) = *(v11 + 64);
      v12 += 72;
      v11 += 72;
    }

    while (v12 < v10);
    v15 = *(v3 + 8);
  }

  else
  {
    v15 = 0;
  }

  v16 = v8 + 72 * v15;
  *v16 = *a2;
  v17 = *(a2 + 8);
  v18 = *(a2 + 24);
  *(v16 + 40) = *(a2 + 40);
  *(v16 + 24) = v18;
  *(v16 + 8) = v17;
  *(v16 + 48) = *(a2 + 48);
  *(v16 + 64) = *(a2 + 64);
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v8;
  ++*(v3 + 8);
  *(v3 + 12) = v5;
  return result;
}

void *physx::PxD6JointCreate(uint64_t a1, uint64_t a2, float32x4_t *a3, uint64_t a4, float32x4_t *a5)
{
  v10 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v11 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Ext::D6Joint>::getName() [T = physx::Ext::D6Joint]";
  }

  else
  {
    v11 = "<allocation names disabled>";
  }

  v12 = (*(*(v10 + 24) + 16))(v10 + 24, 120, v11, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxextensions/src/ExtD6Joint.cpp", 49);
  v13 = (*(*a1 + 40))(a1);
  physx::Ext::D6Joint::D6Joint(v12, v13, a2, a3, a4, a5);
  v14 = (*(*a1 + 216))(a1, a2, a4, v12 + 3, &physx::Ext::D6Joint::sShaders, 480);
  v12[12] = v14;
  if (!v14)
  {
    (*(*v12 + 32))(v12);
    return 0;
  }

  return v12;
}

uint64_t physx::Ext::D6Joint::D6Joint(uint64_t a1, float *a2, uint64_t a3, float32x4_t *a4, uint64_t a5, float32x4_t *a6)
{
  *(a1 + 8) = 196869;
  *a1 = &unk_1F5D280D0;
  *(a1 + 24) = &unk_1F5D282E8;
  *(a1 + 32) = 0;
  *(a1 + 96) = 0;
  *(a1 + 16) = 0;
  v12 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 480, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxextensions/src/ExtJoint.h", 454);
  _Q0 = *a4;
  _Q1 = vmulq_f32(_Q0, _Q0);
  _S2 = a4->i64[1];
  __asm { FMLA            S1, S2, V0.S[2] }

  _S2 = HIDWORD(*a4);
  __asm { FMLA            S1, S2, V0.S[3] }

  _Q1.f32[0] = sqrtf(_Q1.f32[0]);
  v21 = a4[1].i32[2];
  v22 = vdivq_f32(*a4, vdupq_lane_s32(*_Q1.f32, 0));
  _Q1.i64[0] = a4[1].i64[0];
  *(a1 + 40) = v22;
  *(a1 + 56) = _Q1.i64[0];
  *(a1 + 64) = v21;
  v22.i32[0] = a6[1].i32[2];
  _Q1 = *a6;
  _Q2 = vmulq_f32(_Q1, _Q1);
  _S3 = a6->i64[1];
  __asm { FMLA            S2, S3, V1.S[2] }

  _S3 = HIDWORD(*a6);
  __asm { FMLA            S2, S3, V1.S[3] }

  _Q2.f32[0] = sqrtf(_Q2.f32[0]);
  v27 = a6[1].i64[0];
  *(a1 + 68) = vdivq_f32(*a6, vdupq_lane_s32(*_Q2.f32, 0));
  *(a1 + 84) = v27;
  *(a1 + 92) = v22.i32[0];
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v66, a3);
  v28 = v68;
  v29 = (a4[1].f32[0] - v70) + (a4[1].f32[0] - v70);
  v30 = (a4[1].f32[1] - v71) + (a4[1].f32[1] - v71);
  v31 = (a4[1].f32[2] - v72) + (a4[1].f32[2] - v72);
  v32 = (v69 * v69) + -0.5;
  v33 = (-(v67 * v30) - (v66 * v29)) - (v68 * v31);
  v34 = ((v69 * ((v68 * v30) - (v67 * v31))) + (v29 * v32)) - (v66 * v33);
  v35 = (v69 * ((v66 * v31) - (v68 * v29))) + (v30 * v32);
  v36 = (v69 * ((v67 * v29) - (v66 * v30))) + (v31 * v32);
  v38 = a4->f32[2];
  v37 = a4->f32[3];
  v39 = a4->f32[1];
  v40 = (((v69 * v39) - (v67 * v37)) - (v68 * a4->f32[0])) + (v38 * v66);
  v41 = (((v69 * v38) - (v68 * v37)) - (v66 * v39)) + (a4->f32[0] * v67);
  v42 = v35 - (v67 * v33);
  v43 = (((v66 * a4->f32[0]) + (v69 * v37)) + (v67 * v39)) + (v68 * v38);
  *(v12 + 16) = (((v69 * a4->f32[0]) - (v66 * v37)) - (v67 * v38)) + (v39 * v68);
  *(v12 + 20) = v40;
  *(v12 + 24) = v41;
  *(v12 + 28) = v43;
  *(v12 + 32) = v34;
  *(v12 + 36) = v42;
  *(v12 + 40) = v36 - (v28 * v33);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v66, a5);
  v44 = (a6[1].f32[0] - v70) + (a6[1].f32[0] - v70);
  v45 = (a6[1].f32[1] - v71) + (a6[1].f32[1] - v71);
  v46 = (a6[1].f32[2] - v72) + (a6[1].f32[2] - v72);
  v47 = (v69 * v69) + -0.5;
  v48 = (-(v67 * v45) - (v66 * v44)) - (v68 * v46);
  v49 = ((v69 * ((v68 * v45) - (v67 * v46))) + (v44 * v47)) - (v66 * v48);
  v50 = ((v69 * ((v66 * v46) - (v68 * v44))) + (v45 * v47)) - (v67 * v48);
  v51 = ((v69 * ((v67 * v44) - (v66 * v45))) + (v46 * v47)) - (v68 * v48);
  v53 = a6->f32[2];
  v52 = a6->f32[3];
  v54 = a6->f32[1];
  v55 = (((v69 * v54) - (v67 * v52)) - (v68 * a6->f32[0])) + (v53 * v66);
  v56 = (((v69 * v53) - (v68 * v52)) - (v66 * v54)) + (a6->f32[0] * v67);
  v57 = (((v66 * a6->f32[0]) + (v69 * v52)) + (v67 * v54)) + (v68 * v53);
  *(v12 + 44) = (((v69 * a6->f32[0]) - (v66 * v52)) - (v67 * v53)) + (v54 * v68);
  *(v12 + 48) = v55;
  *(v12 + 52) = v56;
  *(v12 + 56) = v57;
  *(v12 + 60) = v49;
  *(v12 + 64) = v50;
  *(v12 + 68) = v51;
  __asm { FMOV            V0.4S, #1.0 }

  *v12 = _Q0;
  *(a1 + 104) = v12;
  *a1 = &unk_1F5D27D88;
  *(a1 + 24) = &unk_1F5D27FB0;
  *(a1 + 112) = 1;
  *(v12 + 80) = 0;
  *(v12 + 88) = 0;
  *(v12 + 96) = 0;
  *(v12 + 212) = 0x3F00000000000000;
  *(v12 + 220) = 0;
  *(v12 + 228) = xmmword_1E3118980;
  *(v12 + 244) = 1056964608;
  *(v12 + 248) = 0;
  *(v12 + 256) = xmmword_1E3118990;
  *(v12 + 272) = 1056964608;
  *(v12 + 276) = 0;
  *(v12 + 284) = xmmword_1E31189A0;
  *(v12 + 300) = 1070141403;
  *&_Q0 = *a2 * 0.01;
  *(v12 + 104) = 0;
  *(v12 + 112) = 0;
  *(v12 + 120) = _Q0;
  *(v12 + 124) = 2139095039;
  *&_Q0 = *a2;
  *(v12 + 464) = *a2 * 0.000001;
  *(v12 + 128) = 0;
  *(v12 + 132) = *&_Q0 + *&_Q0;
  *(v12 + 136) = 0;
  *(v12 + 144) = fminf(*&_Q0 * 0.01, 1.1116e38);
  *(v12 + 148) = 0xFEAAAAAA7EAAAAAALL;
  v59 = fminf(*a2 * 0.01, 1.1116e38);
  v60 = *a2 + *a2;
  *(v12 + 156) = 0;
  *(v12 + 160) = v60;
  *(v12 + 164) = 0;
  *(v12 + 172) = v59;
  *(v12 + 176) = 0xFEAAAAAA7EAAAAAALL;
  v61 = fminf(*a2 * 0.01, 1.1116e38);
  v62 = *a2 + *a2;
  *(v12 + 184) = 0;
  *(v12 + 188) = v62;
  *(v12 + 192) = 0;
  *(v12 + 200) = v61;
  *(v12 + 204) = 0xFEAAAAAA7EAAAAAALL;
  v63 = v12 + 316;
  v64 = 6;
  do
  {
    *(v63 - 12) = 0;
    *(v63 - 4) = 2139095039;
    v63 += 16;
    --v64;
  }

  while (v64);
  *(v12 + 400) = xmmword_1E30474D0;
  *(v12 + 416) = 0u;
  *(v12 + 432) = 0u;
  *(v12 + 448) = 0;
  *(v12 + 468) = 0x40490FDB501502F9;
  *(v12 + 476) = 0;
  return a1;
}

uint64_t physx::Ext::D6Joint::setMotion(uint64_t a1, unsigned int a2, int a3)
{
  v3 = *(a1 + 96);
  *(*(a1 + 104) + 4 * a2 + 80) = a3;
  *(a1 + 112) = 1;
  return (*(*v3 + 72))(v3);
}

float physx::Ext::D6Joint::getTwistAngle(physx::Ext::D6Joint *this)
{
  (*(*this + 80))(v7);
  v1 = 1.0;
  if (v7[0] == 0.0)
  {
    v4 = 0;
    v3 = 1.0;
  }

  else
  {
    v2 = sqrtf(((v7[0] * v7[0]) + 0.0) + (v8 * v8));
    v3 = v8 / v2;
    v4 = (v7[0] / v2) < 0.0;
  }

  if (v3 < -1.0)
  {
    v3 = -1.0;
  }

  if (v3 <= 1.0)
  {
    v1 = v3;
  }

  v5 = acosf(v1);
  result = v5 + v5;
  if (v4)
  {
    return -result;
  }

  return result;
}

float physx::Ext::D6Joint::getSwingYAngle(physx::Ext::D6Joint *this)
{
  (*(*this + 80))(&v9);
  if (*&v9 == 0.0)
  {
    v2 = 0.0;
    v3 = 0.0;
    v4 = 1.0;
  }

  else
  {
    v1 = sqrtf(((*&v9 * *&v9) + 0.0) + (v11 * v11));
    v2 = *&v9 / v1;
    v3 = 0.0 / v1;
    v4 = v11 / v1;
  }

  v5 = (((*&v9 * v2) + (v11 * v4)) + (*(&v9 + 1) * v3)) + (v10 * v3);
  v6 = -((((*(&v9 + 1) * v4) - (v11 * v3)) - (v10 * v2)) + (v3 * *&v9));
  v7 = -v5;
  if (v5 >= 0.0)
  {
    v7 = (((*&v9 * v2) + (v11 * v4)) + (*(&v9 + 1) * v3)) + (v10 * v3);
    v6 = (((*(&v9 + 1) * v4) - (v11 * v3)) - (v10 * v2)) + (v3 * *&v9);
  }

  return atan2f(v6, v7 + 1.0) * 4.0;
}

float physx::Ext::D6Joint::getSwingZAngle(physx::Ext::D6Joint *this)
{
  (*(*this + 80))(&v9);
  if (*&v9 == 0.0)
  {
    v2 = 0.0;
    v3 = 0.0;
    v4 = 1.0;
  }

  else
  {
    v1 = sqrtf(((*&v9 * *&v9) + 0.0) + (v11 * v11));
    v2 = *&v9 / v1;
    v3 = 0.0 / v1;
    v4 = v11 / v1;
  }

  v5 = (((*&v9 * v2) + (v11 * v4)) + (*(&v9 + 1) * v3)) + (v10 * v3);
  v6 = -((((v10 * v4) - (v11 * v3)) - (*&v9 * v3)) + (v2 * *(&v9 + 1)));
  v7 = -v5;
  if (v5 >= 0.0)
  {
    v7 = (((*&v9 * v2) + (v11 * v4)) + (*(&v9 + 1) * v3)) + (v10 * v3);
    v6 = (((v10 * v4) - (v11 * v3)) - (*&v9 * v3)) + (v2 * *(&v9 + 1));
  }

  return atan2f(v6, v7 + 1.0) * 4.0;
}

float physx::Ext::D6Joint::getDrive@<S0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 104) + 16 * a2;
  *a3 = *(v3 + 304);
  result = *(v3 + 312);
  *(a3 + 8) = result;
  *(a3 + 12) = *(v3 + 316);
  return result;
}

uint64_t physx::Ext::D6Joint::setDrive(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 104) + 16 * a2;
  *(v3 + 304) = *a3;
  *(v3 + 312) = *(a3 + 8);
  *(v3 + 316) = *(a3 + 12);
  *(a1 + 112) = 1;
  return (*(**(a1 + 96) + 72))();
}

uint64_t physx::Ext::D6Joint::setDistanceLimit(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 104);
  v3 = *a2;
  *(v2 + 120) = *(a2 + 2);
  *(v2 + 104) = v3;
  v5 = a1 + 96;
  v4 = *(a1 + 96);
  *(*(v5 + 8) + 476) = 1;
  return (*(*v4 + 72))();
}

double physx::Ext::D6Joint::getDistanceLimit@<D0>(physx::Ext::D6Joint *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 13);
  *a2 = *(v2 + 104);
  result = *(v2 + 120);
  *(a2 + 16) = result;
  return result;
}

uint64_t physx::Ext::D6Joint::setLinearLimit(uint64_t result, int a2, __int128 *a3)
{
  v3 = *(result + 104);
  if (a2 == 2)
  {
    v6 = *a3;
    *(v3 + 196) = *(a3 + 12);
    *(v3 + 184) = v6;
  }

  else if (a2 == 1)
  {
    v5 = *a3;
    *(v3 + 168) = *(a3 + 12);
    *(v3 + 156) = v5;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v4 = *a3;
    *(v3 + 140) = *(a3 + 12);
    *(v3 + 128) = v4;
  }

  *(v3 + 477) = 1;
  return (*(**(result + 96) + 72))();
}

uint64_t physx::Ext::D6Joint::getLinearLimit@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(result + 104);
  switch(a2)
  {
    case 2:
      *a3 = *(v3 + 184);
      *(a3 + 16) = *(v3 + 200);
      v4 = *(v3 + 204);
      goto LABEL_7;
    case 1:
      *a3 = *(v3 + 156);
      *(a3 + 16) = *(v3 + 172);
      v4 = *(v3 + 176);
      goto LABEL_7;
    case 0:
      *a3 = *(v3 + 128);
      *(a3 + 16) = *(v3 + 144);
      v4 = *(v3 + 148);
LABEL_7:
      *(a3 + 20) = v4;
      return result;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  *(a3 + 4) = 0x40000000;
  return result;
}

float physx::Ext::D6Joint::getTwistLimit@<S0>(physx::Ext::D6Joint *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 13);
  *a2 = *(v2 + 212);
  result = *(v2 + 228);
  *(a2 + 16) = result;
  *(a2 + 20) = *(v2 + 232);
  return result;
}

uint64_t physx::Ext::D6Joint::setTwistLimit(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 104);
  v3 = *a2;
  *(v2 + 224) = *(a2 + 12);
  *(v2 + 212) = v3;
  return (*(**(a1 + 96) + 72))();
}

__n128 physx::Ext::D6Joint::getPyramidSwingLimit@<Q0>(physx::Ext::D6Joint *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 13);
  *a2 = *(v2 + 268);
  *(a2 + 16) = *(v2 + 284);
  result = *(v2 + 288);
  *(a2 + 20) = result;
  return result;
}

uint64_t physx::Ext::D6Joint::setPyramidSwingLimit(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 104);
  v3 = *a2;
  v4 = a2[1];
  *(v2 + 300) = *(a2 + 8);
  *(v2 + 268) = v3;
  *(v2 + 284) = v4;
  *(*(a1 + 104) + 478) = 256;
  return (*(**(a1 + 96) + 72))();
}

float physx::Ext::D6Joint::getSwingLimit@<S0>(physx::Ext::D6Joint *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 13);
  *a2 = *(v2 + 240);
  result = *(v2 + 256);
  *(a2 + 16) = result;
  *(a2 + 20) = *(v2 + 260);
  return result;
}

uint64_t physx::Ext::D6Joint::setSwingLimit(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 104);
  v3 = *a2;
  *(v2 + 252) = *(a2 + 12);
  *(v2 + 240) = v3;
  *(*(a1 + 104) + 478) = 1;
  return (*(**(a1 + 96) + 72))();
}

float physx::Ext::D6Joint::getDrivePosition@<S0>(physx::Ext::D6Joint *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 13);
  *a2 = *(v2 + 400);
  *(a2 + 16) = *(v2 + 416);
  result = *(v2 + 424);
  *(a2 + 24) = result;
  return result;
}

uint64_t physx::Ext::D6Joint::setDrivePosition(uint64_t a1, float32x4_t *a2, int a3)
{
  v4 = a2[1].i32[2];
  _Q1 = *a2;
  _Q2 = vmulq_f32(_Q1, _Q1);
  _S3 = a2->i64[1];
  __asm { FMLA            S2, S3, V1.S[2] }

  _S3 = HIDWORD(*a2);
  __asm { FMLA            S2, S3, V1.S[3] }

  _Q2.f32[0] = sqrtf(_Q2.f32[0]);
  v13 = *(a1 + 104);
  v14 = a2[1].i64[0];
  v13[25] = vdivq_f32(*a2, vdupq_lane_s32(*_Q2.f32, 0));
  v13[26].i64[0] = v14;
  v13[26].i32[2] = v4;
  if (a3)
  {
    physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::wakeUpActors(*(a1 + 96));
  }

  v15 = *(**(a1 + 96) + 72);

  return v15();
}

void *physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::wakeUpActors(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12[0] = 0;
  v1 = &v11;
  (*(*a1 + 56))(a1, &v11, v12);
  v2 = 1;
  do
  {
    v3 = v2;
    result = *v1;
    if (*v1)
    {
      result = (*(*result + 56))(result);
      if (result)
      {
        result = (*(**v1 + 48))();
        if (result == 1)
        {
          v5 = *v1;
          result = (*(*v5 + 432))(&v10, v5);
          if ((v10 & 1) == 0)
          {
            v6 = (*(*v5 + 56))(v5);
            v7 = (*(*v6 + 880))(v6);
            v8 = (*(*v5 + 584))(v5);
            result = (*(*v5 + 512))(v5);
            if (v8 < v7 || result != 0)
            {
              if (v8 >= v7)
              {
                v7 = v8;
              }

              (*(*v5 + 592))(v5);
              result = (*(*v5 + 576))(v5, v7);
            }
          }
        }
      }
    }

    v2 = 0;
    v1 = v12;
  }

  while ((v3 & 1) != 0);
  return result;
}

float physx::Ext::D6Joint::getDriveVelocity(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 104);
  *a2 = *(v3 + 428);
  *(a2 + 8) = *(v3 + 436);
  *a3 = *(v3 + 440);
  result = *(v3 + 448);
  *(a3 + 8) = result;
  return result;
}

uint64_t physx::Ext::D6Joint::setDriveVelocity(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(a1 + 104);
  *(v5 + 428) = *a2;
  *(v5 + 436) = *(a2 + 8);
  *(v5 + 440) = *a3;
  *(v5 + 448) = *(a3 + 8);
  if (a4)
  {
    physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::wakeUpActors(*(a1 + 96));
  }

  v6 = *(**(a1 + 96) + 72);

  return v6();
}

uint64_t physx::Ext::D6Joint::setProjectionAngularTolerance(physx::Ext::D6Joint *this, float a2)
{
  v2 = this + 96;
  v3 = *(this + 12);
  *(*(v2 + 1) + 472) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::D6Joint::setProjectionLinearTolerance(physx::Ext::D6Joint *this, float a2)
{
  v2 = this + 96;
  v3 = *(this + 12);
  *(*(v2 + 1) + 468) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::D6Joint::prepareData(physx::Ext::D6Joint *this)
{
  result = *(this + 13);
  if (*(this + 112) == 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    *(this + 112) = 0;
    *(result + 456) = 0;
    v6 = (result + 80);
    *(result + 452) = 0;
    do
    {
      v7 = v6[v5];
      if (v7)
      {
        if (v7 == 1)
        {
          v3 |= 1 << v5;
          *(result + 456) = v3;
        }
      }

      else
      {
        v4 |= 1 << v5;
        *(result + 452) = v4;
      }

      ++v5;
    }

    while (v5 != 6);
    v8 = *(result + 304) == 0.0 && *(result + 308) == 0.0;
    v9 = 0;
    if (!v8 && *v6)
    {
      v9 = 1;
      *(result + 460) = 1;
    }

    if ((*(result + 320) != 0.0 || *(result + 324) != 0.0) && *(result + 84))
    {
      v9 |= 2u;
      *(result + 460) = v9;
    }

    if ((*(result + 336) != 0.0 || *(result + 340) != 0.0) && *(result + 88))
    {
      v9 |= 4u;
      *(result + 460) = v9;
    }

    v10 = *(result + 96);
    v11 = v10 == 0;
    if (*(result + 384) == 0.0)
    {
      v11 = *(result + 388) == 0.0 || v10 == 0;
    }

    v13 = *(result + 100);
    v14 = *(result + 92);
    if (!v11 && v13 && v14)
    {
      v15 = v9 | 0x20;
LABEL_43:
      *(result + 460) = v15;
      return result;
    }

    if (*(result + 368) != 0.0 || *(result + 372) != 0.0)
    {
      if (v14)
      {
        v9 |= 0x10u;
        *(result + 460) = v9;
      }
    }

    v16 = v10 | v13;
    if (*(result + 352) != 0.0)
    {
      if (!v16)
      {
        return result;
      }

LABEL_42:
      v15 = v9 | 8;
      goto LABEL_43;
    }

    v17 = v16 == 0;
    if (*(result + 356) != 0.0 && !v17)
    {
      goto LABEL_42;
    }
  }

  return result;
}

uint64_t physx::Ext::D6Joint::exportExtraData(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 104))
  {
    (*(*a2 + 24))(a2, 16);
    (*(*a2 + 16))(a2, *(a1 + 104), 480);
  }

  v4 = *(a1 + 32);
  v5 = *(*a2 + 32);

  return v5(a2, v4);
}

float project(float *a1, float *a2, float *a3, BOOL *a4, float a5)
{
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v9 = a3[1];
  v10 = a3[2];
  v11 = ((v6 * v9) + (*a2 * *a3)) + (v8 * v10);
  if (fabsf(v11) >= 0.000001)
  {
    v17 = *a3 * v11;
    v18 = v9 * v11;
    v19 = v10 * v11;
    v12 = a2[3];
    v20 = sqrtf((((v18 * v18) + (v17 * v17)) + (v19 * v19)) + (v12 * v12));
    v14 = v17 / v20;
    v15 = v18 / v20;
    v16 = v19 / v20;
    v13 = v12 / v20;
  }

  else
  {
    v12 = a2[3];
    v13 = 1.0;
    v14 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
  }

  v30[0] = (((v7 * v13) - (v12 * v14)) - (v6 * v16)) + (v15 * v8);
  v30[1] = (((v6 * v13) - (v12 * v15)) - (v8 * v14)) + (v16 * v7);
  v30[2] = (((v8 * v13) - (v12 * v16)) - (v7 * v15)) + (v14 * v6);
  v30[3] = (((v7 * v14) + (v12 * v13)) + (v6 * v15)) + (v8 * v16);
  truncate(&v26, v30, a4, a5);
  v21 = v28;
  v22 = (((v13 * v27) + (v29 * v15)) + (v28 * v14)) - (v16 * v26);
  v23 = (((v13 * v28) + (v29 * v16)) + (v26 * v15)) - (v14 * v27);
  v24 = ((v29 * v13) - (v26 * v14)) - (v27 * v15);
  *a1 = (((v13 * v26) + (v29 * v14)) + (v27 * v16)) - (v15 * v28);
  a1[1] = v22;
  result = v24 - (v21 * v16);
  a1[2] = v23;
  a1[3] = result;
  return result;
}

uint64_t truncate(uint64_t result, uint64_t a2, BOOL *a3, float a4)
{
  v4 = *(a2 + 12);
  v5 = *a2;
  if (v4 >= 0.0)
  {
    _D2 = *(a2 + 4);
  }

  else
  {
    v5 = -v5;
    _D2 = vneg_f32(*(a2 + 4));
    v4 = -v4;
  }

  *a3 = v4 < a4;
  if (v4 < a4)
  {
    _S4 = _D2.i32[1];
    __asm { FMLA            S3, S4, V2.S[1] }

    if (_S3 <= 0.0)
    {
      v15 = 0;
      v14 = 0.0;
    }

    else
    {
      v13 = 1.0 / sqrtf(_S3);
      v14 = v5 * v13;
      v15 = vmul_n_f32(_D2, v13);
    }

    v16 = sqrtf(1.0 - (a4 * a4));
    v5 = v16 * v14;
    _D2 = vmul_n_f32(v15, v16);
  }

  else
  {
    a4 = v4;
  }

  *result = v5;
  *(result + 4) = _D2;
  *(result + 12) = a4;
  return result;
}

uint64_t D6JointSolverPrep(uint64_t a1, float32x2_t *a2, double a3, double a4, double a5, double a6, double a7, double a8, int8x16_t a9, int8x16_t a10, uint64_t a11, __int128 *a12, uint64_t a13, float32x2_t *a14, float32x2_t *a15, int a16, float32x2_t *a17, float32x2_t *a18)
{
  v320 = *MEMORY[0x1E69E9840];
  physx::Ext::joint::ConstraintHelper::ConstraintHelper(&v293, a1, a12, &v305, &v299, a2, a13, a14, a3, a4, a5, a6, a7, a8, a9, a10, a15);
  v25 = *(a13 + 460);
  v26 = v305;
  v27 = v300;
  if (a16)
  {
    v29 = v306;
    v28 = v307;
    v30 = v308;
    v31 = v301;
    v33 = v299.f32[1];
    v32 = v299.f32[0];
  }

  else
  {
    v33 = v299.f32[1];
    v32 = v299.f32[0];
    v29 = v306;
    v28 = v307;
    v30 = v308;
    v31 = v301;
    if (((((v306 * v299.f32[1]) + (v305 * v299.f32[0])) + (v307 * v300)) + (v308 * v301)) < 0.0)
    {
      v32 = -v299.f32[0];
      v33 = -v299.f32[1];
      v27 = -v300;
      v299.f32[0] = -v299.f32[0];
      v299.f32[1] = -v299.f32[1];
      v31 = -v301;
      v300 = -v300;
      v301 = -v301;
    }
  }

  v34 = *(a13 + 452);
  v35 = *(a13 + 456);
  v36 = (v302 - v309) + (v302 - v309);
  v37 = (v303 - v310) + (v303 - v310);
  v38 = (v304 - v311) + (v304 - v311);
  v39 = (v30 * v30) + -0.5;
  v40 = (-(v29 * v37) - (v305 * v36)) - (v28 * v38);
  v41 = ((v30 * ((v28 * v37) - (v29 * v38))) + (v36 * v39)) - (v305 * v40);
  v42 = ((v30 * ((v305 * v38) - (v28 * v36))) + (v37 * v39)) - (v29 * v40);
  v43 = ((v30 * ((v29 * v36) - (v305 * v37))) + (v38 * v39)) - (v28 * v40);
  v44 = (((v30 * v32) - (v305 * v31)) - (v29 * v27)) + (v33 * v28);
  v45 = (((v30 * v33) - (v29 * v31)) - (v28 * v32)) + (v27 * v305);
  v46 = (((v30 * v27) - (v28 * v31)) - (v305 * v33)) + (v32 * v29);
  v47 = (((v305 * v32) + (v30 * v31)) + (v29 * v33)) + (v28 * v27);
  v289[0] = v44;
  v289[1] = v45;
  v289[2] = v46;
  v289[3] = v47;
  v290 = v41;
  v291 = v42;
  v292 = v43;
  v48 = v29 * (v29 + v29);
  v49 = v28 * (v28 + v28);
  v50 = (v305 + v305) * v29;
  v51 = (v305 + v305) * v28;
  v52 = (v305 + v305) * v30;
  v53 = v28 * (v29 + v29);
  v54 = v30 * (v29 + v29);
  v55 = v30 * (v28 + v28);
  v283[0] = (1.0 - v48) - v49;
  v283[1] = v50 + v55;
  v56 = 1.0 - (v305 * (v305 + v305));
  v284 = v51 - v54;
  v285.f32[0] = v50 - v55;
  v285.f32[1] = v56 - v49;
  v286 = v52 + v53;
  v287.f32[0] = v51 + v54;
  v287.f32[1] = v53 - v52;
  v288 = v56 - v48;
  v57 = v32 + v32;
  v58 = v33 * (v33 + v33);
  v59 = v27 * (v27 + v27);
  v60 = v33 * (v32 + v32);
  v61 = v27 * (v32 + v32);
  v62 = (v33 + v33) * v31;
  v63 = v31 * (v27 + v27);
  if ((v25 & 7) != 0)
  {
    v64 = 0;
    v65 = 0;
    v66 = a13 + 304;
    *&v67 = *(a13 + 420) - v42;
    *&v68 = *(a13 + 424) - v43;
    *&v317 = *(a13 + 416) - v41;
    *(&v317 + 4) = __PAIR64__(v68, v67);
    v69 = v294;
    v70 = &v284;
    do
    {
      if ((v25 >> v64))
      {
        v71 = -*(a13 + v65 + 428);
        v294 = v69 + 80;
        *(v69 + 78) = 0;
        v72 = *(v70 - 2);
        *&_Q10 = v72;
        *(&_Q10 + 2) = *v70;
        HIDWORD(_Q10) = *(&v317 + v65);
        *(v69 + 32) = v72;
        *(v69 + 40) = DWORD2(_Q10);
        *v69 = _Q10;
        LODWORD(_Q10) = v296;
        _V12.S[1] = v295.i32[1];
        __asm { FMLA            S11, S22, V12.S[1] }

        v80 = vdup_lane_s32(v72, 0);
        v80.i32[0] = DWORD2(_Q10);
        *&_Q10 = vzip1_s32(*&_Q10, v295);
        v81 = vmla_f32(vmul_f32(v80, vneg_f32(v295)), v72, *&_Q10);
        *(v69 + 16) = _S11;
        *(v69 + 20) = v81;
        LODWORD(_Q10) = v298;
        _V12.S[1] = v297.i32[1];
        __asm { FMLA            S11, S22, V12.S[1] }

        v84 = vmla_f32(vmul_f32(v80, vneg_f32(v297)), v72, vzip1_s32(*&_Q10, v297));
        *(v69 + 48) = _S11;
        *(v69 + 52) = v84;
        *(v69 + 28) = v71;
        if (*(a13 + 4 * v65 + 316))
        {
          v85 = 35;
        }

        else
        {
          v85 = 33;
        }

        *(v69 + 76) |= v85;
        *(v69 + 64) = *v66;
        *(v69 + 68) = *(v66 + 4);
        v86 = *(v66 + 8);
        *(v69 + 44) = -v86;
        *(v69 + 60) = v86;
        v69 += 80;
      }

      v65 += 4;
      ++v64;
      v66 += 16;
      v70 += 3;
    }

    while (v65 != 12);
  }

  v87 = (1.0 - v58) - v59;
  v88 = v63 + v60;
  v89 = v61 - v62;
  if ((v25 & 0x38) != 0)
  {
    v90 = *(a13 + 400);
    v91 = *(a13 + 404);
    v92 = *(a13 + 408);
    v93 = *(a13 + 412);
    if (((((v45 * v91) + (v44 * v90)) + (v46 * v92)) + (v47 * v93)) <= 0.0)
    {
      v90 = -v90;
      v91 = -v91;
      v92 = -v92;
      v93 = -v93;
    }

    v94 = (((v93 * v44) - (v90 * v47)) - (v91 * v46)) + (v45 * v92);
    v95 = (((v93 * v45) - (v91 * v47)) - (v92 * v44)) + (v46 * v90);
    v96 = (((v93 * v46) - (v92 * v47)) - (v90 * v45)) + (v44 * v91);
    if ((v25 & 0x20) != 0)
    {
      v276 = v63 + v60;
      v122 = *(a13 + 440) + *(a13 + 440);
      v123 = *(a13 + 444) + *(a13 + 444);
      v124 = *(a13 + 448) + *(a13 + 448);
      v125 = ((v29 * v123) + (v26 * v122)) + (v28 * v124);
      v126 = (v30 * ((v123 * -v28) + (v29 * v124))) + (v122 * v39);
      v127 = (v30 * ((v124 * -v26) + (v28 * v122))) + (v123 * v39);
      v128 = (v30 * ((v122 * -v29) + (v26 * v123))) + (v124 * v39);
      v317 = xmmword_1E3047670;
      v318 = xmmword_1E3047670;
      v319 = 1.0;
      if (*(a13 + 384) != 0.0)
      {
        v271 = v89;
        v129 = (((v26 * v93) + (v30 * v90)) + (v29 * v92)) + (-v91 * v28);
        v130 = (((v29 * v93) + (v30 * v91)) + (v28 * v90)) + (-v92 * v26);
        v131 = (((v28 * v93) + (v30 * v92)) + (v26 * v91)) + (-v90 * v29);
        v132 = (((v90 * -v26) + (v30 * v93)) + (-v29 * v91)) + (-v28 * v92);
        v133 = (v32 * v132) + (v31 * v129);
        v134 = (v33 * v132) + (v31 * v130);
        v135 = (v27 * v132) + (v31 * v131);
        v136 = v31 * v132;
        v137 = v33 * v130;
        v138 = ((v33 * v130) + (v129 * v32)) + (v131 * v27);
        v139 = v32 * v129;
        v140 = (v32 * v130) + (v33 * v129);
        v141 = (v32 * v131) + (v27 * v129);
        v142 = ((v139 + v139) + (v136 - v138)) * 0.5;
        *&v317 = v142;
        *(&v317 + 1) = (v140 + v135) * 0.5;
        v143 = (v33 * v131) + (v27 * v130);
        v144 = ((v137 + v137) + (v136 - v138)) * 0.5;
        *(&v317 + 2) = (v141 - v134) * 0.5;
        *(&v317 + 3) = (v140 - v135) * 0.5;
        *&v318 = v144;
        *(&v318 + 1) = (v133 + v143) * 0.5;
        v145 = (((v27 * v131) + (v27 * v131)) + (v136 - v138)) * 0.5;
        *(&v318 + 2) = (v134 + v141) * 0.5;
        *(&v318 + 3) = (v143 - v133) * 0.5;
        v319 = v145;
        v146 = v136 + v138;
        v89 = v271;
        if (v146 == 0.0)
        {
          *&v317 = v142 + 0.00000011921;
          *&v318 = v144 + 0.00000011921;
          v319 = v145 + 0.00000011921;
        }
      }

      v147 = 0;
      v148 = v294;
      v149 = -(v128 + (v28 * v125));
      v150 = &v317 + 2;
      v151 = &v315;
      do
      {
        v152 = v148 + v147;
        *&v153 = *(v150 - 1);
        v154 = *v150;
        v150 += 3;
        v155 = v154;
        v156 = (vmuls_lane_f32(-(v127 + (v29 * v125)), *&v153, 1) + (*&v153 * -(v126 + (v26 * v125)))) + (v154 * v149);
        v315 = __PAIR64__(LODWORD(v95), LODWORD(v94));
        v316 = v96;
        v157 = v151->f32[0];
        v151 = (v151 + 4);
        *(v152 + 78) = 258;
        *v152 = 0;
        *(v152 + 8) = 0;
        *(v152 + 16) = v153;
        *(v152 + 32) = 0;
        *(v152 + 40) = 0;
        *(v152 + 12) = -v157;
        v158 = *(v148 + v147 + 76);
        *(v152 + 24) = v155;
        *(v152 + 28) = v156;
        if (*(a13 + 396))
        {
          v159 = 35;
        }

        else
        {
          v159 = 33;
        }

        *(v152 + 76) = v158 | v159 | 0x40;
        *(v152 + 64) = *(a13 + 384);
        *(v152 + 68) = *(a13 + 388);
        v160 = *(a13 + 392);
        *(&v153 + 1) = __PAIR64__(LODWORD(v160), LODWORD(v155));
        *(v152 + 44) = -v160;
        *(v152 + 48) = v153;
        v147 += 80;
      }

      while (v147 != 240);
      v294 = v148 + 240;
      v88 = v276;
    }

    else
    {
      if ((v25 & 0x10) != 0)
      {
        v97 = *(a13 + 440);
        v98 = v294;
        v294 += 80;
        *(v98 + 78) = 0;
        *v98 = 0;
        *(v98 + 8) = 0;
        *(v98 + 20) = v88;
        *(v98 + 24) = v89;
        *(v98 + 32) = 0;
        *(v98 + 40) = 0;
        *(v98 + 48) = v87;
        *(v98 + 52) = v88;
        *(v98 + 56) = v89;
        *(v98 + 12) = v94 * -2.0;
        *(v98 + 16) = v87;
        v99 = *(v98 + 76);
        *(v98 + 28) = v97;
        if (*(a13 + 380))
        {
          v100 = 35;
        }

        else
        {
          v100 = 33;
        }

        *(v98 + 76) = v99 | v100 | 0x40;
        *(v98 + 64) = *(a13 + 368);
        *(v98 + 68) = *(a13 + 372);
        v101 = *(a13 + 376);
        *(v98 + 44) = -v101;
        *(v98 + 60) = v101;
      }

      if ((v25 & 8) != 0)
      {
        v102 = v31 * v57;
        v103 = v27 * (v33 + v33);
        v104 = 1.0 - (v32 * v57);
        v105 = (((v44 * v90) + (v93 * v47)) + (v91 * v45)) + (v92 * v46);
        v106 = (v105 * v105) + -0.5;
        v107 = ((v95 * 0.0) + (v94 * 2.0)) + (v96 * 0.0);
        if ((v34 & 0x10) == 0)
        {
          v108 = v60 - v63;
          v109 = *(a13 + 444);
          v110 = v294;
          v294 += 80;
          *(v110 + 78) = 0;
          *v110 = 0;
          *(v110 + 8) = 0;
          *(v110 + 20) = v104 - v59;
          *(v110 + 24) = v103 + v102;
          *(v110 + 32) = 0;
          *(v110 + 40) = 0;
          *(v110 + 48) = v108;
          *(v110 + 52) = v104 - v59;
          *(v110 + 56) = v103 + v102;
          *(v110 + 12) = ((v105 * ((v95 * -2.0) + (v94 * 0.0))) + (v106 * 0.0)) + (v96 * v107);
          *(v110 + 16) = v108;
          v111 = *(v110 + 76);
          *(v110 + 28) = v109;
          if (*(a13 + 364))
          {
            v112 = 35;
          }

          else
          {
            v112 = 33;
          }

          *(v110 + 76) = v111 | v112 | 0x40;
          *(v110 + 64) = *(a13 + 352);
          *(v110 + 68) = *(a13 + 356);
          v113 = *(a13 + 360);
          *(v110 + 44) = -v113;
          *(v110 + 60) = v113;
        }

        if ((v34 & 0x20) == 0)
        {
          v114 = v103 - v102;
          v115 = v104 - v58;
          v116 = ((v105 * ((v94 * -0.0) + (v96 * 2.0))) + (v106 * 0.0)) + (v95 * v107);
          v117 = *(a13 + 448);
          v118 = v294;
          v294 += 80;
          *(v118 + 78) = 0;
          *v118 = 0;
          *(v118 + 8) = 0;
          *(v118 + 20) = v114;
          *(v118 + 24) = v115;
          *(v118 + 32) = 0;
          *(v118 + 40) = 0;
          *(v118 + 48) = v62 + v61;
          *(v118 + 52) = v114;
          *(v118 + 56) = v115;
          *(v118 + 12) = -v116;
          *(v118 + 16) = v62 + v61;
          v119 = *(v118 + 76);
          *(v118 + 28) = v117;
          if (*(a13 + 364))
          {
            v120 = 35;
          }

          else
          {
            v120 = 33;
          }

          *(v118 + 76) = v119 | v120 | 0x40;
          *(v118 + 64) = *(a13 + 352);
          *(v118 + 68) = *(a13 + 356);
          v121 = *(a13 + 360);
          *(v118 + 44) = -v121;
          *(v118 + 60) = v121;
        }
      }
    }
  }

  if ((v35 & 0x38) != 0)
  {
    if (v44 == 0.0)
    {
      v164 = 1.0;
      v162 = 0.0;
      v163 = 0.0;
    }

    else
    {
      v161 = sqrtf(((v44 * v44) + 0.0) + (v47 * v47));
      v162 = v44 / v161;
      v163 = 0.0 / v161;
      v164 = v47 / v161;
    }

    *&v165 = (((v44 * v164) - (v47 * v162)) - (v45 * v163)) + (v163 * v46);
    v166 = (((v45 * v164) - (v47 * v163)) - (v46 * v162)) + (v163 * v44);
    *&v167 = (((v46 * v164) - (v47 * v163)) - (v44 * v163)) + (v162 * v45);
    v168 = (((v44 * v162) + (v47 * v164)) + (v45 * v163)) + (v46 * v163);
    *&v317 = __PAIR64__(LODWORD(v166), v165);
    *(&v317 + 1) = __PAIR64__(LODWORD(v168), v167);
    if ((~v35 & 0x30) == 0)
    {
      if (*(a13 + 478) == 1)
      {
        v169 = *(a13 + 252) <= 0.0 && *(a13 + 248) <= 0.0 ? *(a13 + 256) : 0;
        v314 = 0;
        v312 = *(a13 + 260);
        v313 = v169;
        if (physx::Cm::ConeLimitHelperTanLess::getLimit(&v312, &v317, &v315, &v314))
        {
          v172 = v307;
          v173 = (v308 * v308) + -0.5;
          v174 = (((v315.f32[1] + v315.f32[1]) * v306) + (v305 * (v315.f32[0] + v315.f32[0]))) + (v307 * (v316 + v316));
          v175 = ((v308 * ((v306 * (v316 + v316)) - (v307 * (v315.f32[1] + v315.f32[1])))) + ((v315.f32[0] + v315.f32[0]) * v173)) + (v305 * v174);
          v176 = ((v308 * ((v307 * (v315.f32[0] + v315.f32[0])) - (v305 * (v316 + v316)))) + ((v315.f32[1] + v315.f32[1]) * v173)) + (v306 * v174);
          v177 = (v308 * ((v305 * (v315.f32[1] + v315.f32[1])) - (v306 * (v315.f32[0] + v315.f32[0])))) + ((v316 + v316) * v173);
          v178 = v314;
          v179 = v294;
          v294 += 80;
          *(v179 + 78) = 0;
          *v179 = 0;
          v180 = v177 + (v172 * v174);
          *(v179 + 8) = 0;
          *(v179 + 20) = v176;
          *(v179 + 24) = v180;
          *(v179 + 32) = 0;
          *(v179 + 40) = 0;
          *(v179 + 48) = v175;
          *(v179 + 52) = v176;
          *(v179 + 56) = v180;
          *(v179 + 12) = v178;
          *(v179 + 16) = v175;
          *(v179 + 76) |= 0x40u;
          physx::Ext::joint::ConstraintHelper::addLimit(&v293, v179, a13 + 240);
        }
      }

      if (*(a13 + 479) != 1)
      {
        goto LABEL_69;
      }

      v170 = a13;
      v171 = 1;
      goto LABEL_68;
    }

    if ((v35 & 0x10) == 0)
    {
      goto LABEL_52;
    }

    if ((v34 & 0x20) != 0)
    {
      if (*(a13 + 479))
      {
        setupPyramidSwingLimits(&v293, a13, &v317, &v305, 1, 0);
        goto LABEL_52;
      }

      v280 = *(a13 + 260);
      v221 = atan2f(v166, v168 + 1.0) * 4.0;
      if (*(a13 + 252) <= 0.0 && *(a13 + 248) <= 0.0)
      {
        v222 = *(a13 + 256);
      }

      else
      {
        v222 = 0.0;
      }

      v262 = v280;
      if ((v222 - v280) > v221)
      {
        v263 = -v286;
        v264 = v294;
        v294 += 80;
        *(v264 + 78) = 0;
        *v264 = 0;
        *(v264 + 8) = 0;
        v265 = vneg_f32(v285);
        *(v264 + 16) = v265;
        *(v264 + 24) = v263;
        *(v264 + 32) = 0;
        *(v264 + 40) = 0;
        *(v264 + 48) = v265;
        *(v264 + 56) = v263;
        *(v264 + 12) = -(-v280 - v221);
        *(v264 + 76) |= 0x40u;
        physx::Ext::joint::ConstraintHelper::addLimit(&v293, v264, a13 + 240);
        v262 = v280;
      }

      if ((v262 - v222) < v221)
      {
        v256 = v262 - v221;
        v257 = v294;
        v294 += 80;
        *(v257 + 78) = 0;
        *v257 = 0;
        *(v257 + 8) = 0;
        v215 = v285.f32[1];
        v214 = v285.f32[0];
        v216 = v286;
        goto LABEL_156;
      }
    }

    else
    {
      if (*(a13 + 479))
      {
        physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxextensions/src/ExtD6Joint.cpp", 1005, "D6JointSolverPrep: invalid joint setup. Double pyramid mode not supported.", v22, v23, v24, v266);
        goto LABEL_52;
      }

      v206 = (v288 * v87) - (v287.f32[0] * v89);
      v207 = (v287.f32[0] * v88) - (v287.f32[1] * v87);
      v208 = ((v88 * v287.f32[1]) + (v287.f32[0] * v87)) + (v288 * v89);
      v209 = -v208;
      v273 = (v287.f32[1] * v89) - (v288 * v88);
      v278 = *(a13 + 260);
      if (v208 > 1.0)
      {
        v209 = -1.0;
      }

      if (v209 > 1.0)
      {
        v209 = 1.0;
      }

      v210 = asinf(v209);
      v211 = v206;
      v212 = v210;
      v213 = ((v211 * v211) + (v273 * v273)) + (v207 * v207);
      v214 = 0.0;
      v215 = 0.0;
      v216 = 0.0;
      if (v213 > 0.0)
      {
        v217 = 1.0 / sqrtf(v213);
        v214 = v273 * v217;
        v215 = v211 * v217;
        v216 = v207 * v217;
      }

      if (*(a13 + 252) <= 0.0 && *(a13 + 248) <= 0.0)
      {
        v218 = *(a13 + 256);
      }

      else
      {
        v218 = 0.0;
      }

      v254 = v278;
      if ((v218 - v278) > v212)
      {
        v255 = v294;
        v268 = v218;
        v270 = v216;
        v294 += 80;
        v275 = v215;
        v282 = v214;
        *(v255 + 78) = 0;
        *v255 = 0;
        *(v255 + 8) = 0;
        *(v255 + 20) = -v215;
        *(v255 + 24) = -v216;
        *(v255 + 32) = 0;
        *(v255 + 40) = 0;
        *(v255 + 48) = -v214;
        *(v255 + 52) = -v215;
        *(v255 + 56) = -v216;
        *(v255 + 12) = -(-v254 - v212);
        *(v255 + 16) = -v214;
        *(v255 + 76) |= 0x40u;
        physx::Ext::joint::ConstraintHelper::addLimit(&v293, v255, a13 + 240);
        v218 = v268;
        v216 = v270;
        v215 = v275;
        v214 = v282;
      }

      if ((v254 - v218) < v212)
      {
        v256 = v254 - v212;
        v257 = v294;
        v294 += 80;
        *(v257 + 78) = 0;
        *v257 = 0;
        *(v257 + 8) = 0;
LABEL_156:
        *(v257 + 20) = v215;
        *(v257 + 24) = v216;
        *(v257 + 32) = 0;
        *(v257 + 40) = 0;
        *(v257 + 48) = v214;
        *(v257 + 52) = v215;
        *(v257 + 56) = v216;
        *(v257 + 12) = v256;
        *(v257 + 16) = v214;
        *(v257 + 76) |= 0x40u;
        physx::Ext::joint::ConstraintHelper::addLimit(&v293, v257, a13 + 240);
      }
    }

LABEL_52:
    if ((v35 & 0x20) == 0)
    {
      goto LABEL_69;
    }

    if ((v34 & 0x10) != 0)
    {
      if (*(a13 + 479))
      {
        v170 = a13;
        v171 = 0;
LABEL_68:
        setupPyramidSwingLimits(&v293, v170, &v317, &v305, v171, 1);
        goto LABEL_69;
      }

      v279 = *(a13 + 264);
      v219 = atan2f(*(&v317 + 2), *(&v317 + 3) + 1.0) * 4.0;
      if (*(a13 + 252) <= 0.0 && *(a13 + 248) <= 0.0)
      {
        v220 = *(a13 + 256);
      }

      else
      {
        v220 = 0.0;
      }

      v258 = v279;
      if ((v220 - v279) > v219)
      {
        v259 = -v288;
        v260 = v294;
        v294 += 80;
        *(v260 + 78) = 0;
        *v260 = 0;
        *(v260 + 8) = 0;
        v261 = vneg_f32(v287);
        *(v260 + 16) = v261;
        *(v260 + 24) = v259;
        *(v260 + 32) = 0;
        *(v260 + 40) = 0;
        *(v260 + 48) = v261;
        *(v260 + 56) = v259;
        *(v260 + 12) = -(-v279 - v219);
        *(v260 + 76) |= 0x40u;
        physx::Ext::joint::ConstraintHelper::addLimit(&v293, v260, a13 + 240);
        v258 = v279;
      }

      if ((v258 - v220) >= v219)
      {
        goto LABEL_69;
      }

      v252 = v258 - v219;
      v253 = v294;
      v294 += 80;
      *(v253 + 78) = 0;
      *v253 = 0;
      *(v253 + 8) = 0;
      v202 = v287.f32[1];
      v201 = v287.f32[0];
      v203 = v288;
    }

    else
    {
      if (*(a13 + 479))
      {
        physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxextensions/src/ExtD6Joint.cpp", 1021, "D6JointSolverPrep: invalid joint setup. Double pyramid mode not supported.", v22, v23, v24, v266);
        goto LABEL_69;
      }

      v194 = (v286 * v87) - (v285.f32[0] * v89);
      v195 = (v285.f32[0] * v88) - (v285.f32[1] * v87);
      v196 = ((v88 * v285.f32[1]) + (v285.f32[0] * v87)) + (v286 * v89);
      v272 = (v285.f32[1] * v89) - (v286 * v88);
      v277 = *(a13 + 264);
      if (v196 < -1.0)
      {
        v196 = -1.0;
      }

      if (v196 > 1.0)
      {
        v196 = 1.0;
      }

      v197 = asinf(v196);
      v198 = v194;
      v199 = v197;
      v200 = ((v198 * v198) + (v272 * v272)) + (v195 * v195);
      v201 = 0.0;
      v202 = 0.0;
      v203 = 0.0;
      if (v200 > 0.0)
      {
        v204 = 1.0 / sqrtf(v200);
        v201 = -(v272 * v204);
        v202 = -(v198 * v204);
        v203 = -(v195 * v204);
      }

      if (*(a13 + 252) <= 0.0 && *(a13 + 248) <= 0.0)
      {
        v205 = *(a13 + 256);
      }

      else
      {
        v205 = 0.0;
      }

      v250 = v277;
      if ((v205 - v277) > v199)
      {
        v251 = v294;
        v267 = v205;
        v269 = v203;
        v294 += 80;
        v274 = v202;
        v281 = v201;
        *(v251 + 78) = 0;
        *v251 = 0;
        *(v251 + 8) = 0;
        *(v251 + 20) = -v202;
        *(v251 + 24) = -v203;
        *(v251 + 32) = 0;
        *(v251 + 40) = 0;
        *(v251 + 48) = -v201;
        *(v251 + 52) = -v202;
        *(v251 + 56) = -v203;
        *(v251 + 12) = -(-v250 - v199);
        *(v251 + 16) = -v201;
        *(v251 + 76) |= 0x40u;
        physx::Ext::joint::ConstraintHelper::addLimit(&v293, v251, a13 + 240);
        v205 = v267;
        v203 = v269;
        v202 = v274;
        v201 = v281;
      }

      if ((v250 - v205) >= v199)
      {
        goto LABEL_69;
      }

      v252 = v250 - v199;
      v253 = v294;
      v294 += 80;
      *(v253 + 78) = 0;
      *v253 = 0;
      *(v253 + 8) = 0;
    }

    *(v253 + 20) = v202;
    *(v253 + 24) = v203;
    *(v253 + 32) = 0;
    *(v253 + 40) = 0;
    *(v253 + 48) = v201;
    *(v253 + 52) = v202;
    *(v253 + 56) = v203;
    *(v253 + 12) = v252;
    *(v253 + 16) = v201;
    *(v253 + 76) |= 0x40u;
    physx::Ext::joint::ConstraintHelper::addLimit(&v293, v253, a13 + 240);
LABEL_69:
    if ((v35 & 8) != 0)
    {
      v181 = sqrtf((((v163 * v163) + (v162 * v162)) + (v163 * v163)) + (v164 * v164));
      if (v181 != 0.0)
      {
        v162 = v162 / v181;
        v164 = v164 / v181;
      }

      v182 = -1.0;
      if (v164 >= -1.0)
      {
        v182 = v164;
      }

      if (v182 > 1.0)
      {
        v182 = 1.0;
      }

      v183 = acosf(v182);
      v184 = v183 + v183;
      if (v162 >= 0.0)
      {
        v185 = v184;
      }

      else
      {
        v185 = -v184;
      }

      v186 = *(a13 + 236);
      if (*(a13 + 224) <= 0.0 && *(a13 + 220) <= 0.0)
      {
        v187 = *(a13 + 228);
      }

      else
      {
        v187 = 0.0;
      }

      v188 = *(a13 + 232);
      if ((v186 + v187) > v185)
      {
        v189 = v294;
        v294 += 80;
        *(v189 + 78) = 0;
        *v189 = 0;
        *(v189 + 8) = 0;
        *(v189 + 20) = -v88;
        *(v189 + 24) = -v89;
        *(v189 + 32) = 0;
        *(v189 + 40) = 0;
        *(v189 + 48) = -v87;
        *(v189 + 52) = -v88;
        *(v189 + 56) = -v89;
        *(v189 + 12) = -(v186 - v185);
        *(v189 + 16) = -v87;
        *(v189 + 76) |= 0x40u;
        physx::Ext::joint::ConstraintHelper::addLimit(&v293, v189, a13 + 212);
      }

      if ((v188 - v187) < v185)
      {
        v190 = v294;
        v294 += 80;
        *(v190 + 78) = 0;
        *v190 = 0;
        *(v190 + 8) = 0;
        *(v190 + 20) = v88;
        *(v190 + 24) = v89;
        *(v190 + 32) = 0;
        *(v190 + 40) = 0;
        *(v190 + 48) = v87;
        *(v190 + 52) = v88;
        *(v190 + 56) = v89;
        *(v190 + 12) = v188 - v185;
        *(v190 + 16) = v87;
        *(v190 + 76) |= 0x40u;
        physx::Ext::joint::ConstraintHelper::addLimit(&v293, v190, a13 + 212);
      }
    }
  }

  if ((v35 & 7) != 0)
  {
    if (*(a13 + 476) == 1)
    {
      v191 = computeLimitedDistance(*(a13 + 456), v289, v283, &v317);
      if (v191 > *(a13 + 464))
      {
        v192.i32[0] = *(a13 + 124);
        if (*(a13 + 116) <= 0.0 && *(a13 + 112) <= 0.0)
        {
          v193 = *(a13 + 120);
        }

        else
        {
          v193 = 0.0;
        }

        if ((v191 + v193) > *v192.i32)
        {
          v223 = vmul_n_f32(*&v317, 1.0 / v191);
          _S2 = (1.0 / v191) * *(&v317 + 2);
          v225 = *v192.i32 - v191;
          v226 = v294;
          v294 += 80;
          *(v226 + 78) = 0;
          *v226 = v223;
          *(v226 + 8) = _S2;
          v192.i32[0] = v296;
          _V5.S[1] = v295.i32[1];
          __asm { FMLA            S4, S2, V5.S[1] }

          v229 = vdup_lane_s32(v223, 0);
          v229.f32[0] = _S2;
          v230 = vzip1_s32(v192, v295);
          v231 = vmla_f32(vmul_f32(v229, vneg_f32(v295)), v223, v230);
          *(v226 + 16) = _S4;
          *(v226 + 20) = v231;
          *(v226 + 32) = v223;
          *(v226 + 40) = _S2;
          v230.i32[0] = v298;
          _V5.S[1] = v297.i32[1];
          __asm { FMLA            S4, S2, V5.S[1] }

          v234 = vmla_f32(vmul_f32(v229, vneg_f32(v297)), v223, vzip1_s32(v230, v297));
          *(v226 + 48) = _S4;
          *(v226 + 52) = v234;
          *(v226 + 12) = v225;
          physx::Ext::joint::ConstraintHelper::addLimit(&v293, v226, a13 + 104);
        }
      }
    }

    if (*(a13 + 477) == 1)
    {
      if ((v35 & 1) != 0 && *(a13 + 152) <= *(a13 + 148))
      {
        setupLinearLimit(&v293, (a13 + 128), v283, v290);
      }

      if ((v35 & 2) != 0 && *(a13 + 180) <= *(a13 + 176))
      {
        setupLinearLimit(&v293, (a13 + 156), &v285, v291);
      }

      if ((v35 & 4) != 0 && *(a13 + 208) <= *(a13 + 204))
      {
        setupLinearLimit(&v293, (a13 + 184), &v287, v292);
      }
    }
  }

  if ((v34 & 0x38) == 0x20)
  {
    v34 &= 0xFFFFFFC7;
    v241 = v286;
    v242 = (v88 * v286) - (v89 * v285.f32[1]);
    v243 = (v89 * v285.f32[0]) - (v87 * v286);
    v244 = (v87 * v285.f32[1]) - (v88 * v285.f32[0]);
    v245 = (v88 * v285.f32[1]) + (v87 * v285.f32[0]);
    v246 = v294;
    v294 += 80;
    *(v246 + 78) = 2048;
    *v246 = 0;
    *(v246 + 8) = 0;
    *(v246 + 20) = v243;
    *(v246 + 24) = v244;
    *(v246 + 32) = 0;
    *(v246 + 40) = 0;
    *(v246 + 48) = v242;
    *(v246 + 52) = v243;
    *(v246 + 56) = v244;
    *(v246 + 12) = -(v245 + (v89 * v241));
    *(v246 + 16) = v242;
    *(v246 + 76) |= 0x50u;
  }

  else if ((v34 & 0x38) == 0x10)
  {
    v235 = v288;
    v236 = (v88 * v288) - (v89 * v287.f32[1]);
    v237 = (v89 * v287.f32[0]) - (v87 * v288);
    v238 = (v87 * v287.f32[1]) - (v88 * v287.f32[0]);
    v239 = (v88 * v287.f32[1]) + (v87 * v287.f32[0]);
    v240 = v294;
    v294 += 80;
    *(v240 + 78) = 2048;
    *v240 = 0;
    *(v240 + 8) = 0;
    *(v240 + 20) = v237;
    *(v240 + 24) = v238;
    *(v240 + 32) = 0;
    *(v240 + 40) = 0;
    *(v240 + 48) = v236;
    *(v240 + 52) = v237;
    *(v240 + 56) = v238;
    *(v240 + 12) = -(v239 + (v89 * v235));
    *(v240 + 16) = v236;
    *(v240 + 76) |= 0x50u;
    v34 &= 0xFFFFFFC7;
  }

  physx::Ext::joint::ConstraintHelper::prepareLockedAxes(&v293, &v305, &v299, &v290, v34 & 7, v34 >> 3, &v317, &v315);
  v247 = *(&v317 + 2) + a14[3].f32[0];
  *a17 = vadd_f32(*&v317, a14[2]);
  a17[1].f32[0] = v247;
  v248 = v316 + a15[3].f32[0];
  *a18 = vadd_f32(v315, a15[2]);
  a18[1].f32[0] = v248;
  return -858993459 * ((v294 - v293) >> 4);
}

void D6JointProject(uint64_t a1, float *a2, float *a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, int8x16_t a11, int8x16_t a12)
{
  physx::Ext::joint::computeJointFrames(&v149, &v142, a1, a2, a3, a5, a6, a7, a8, a9, a10, a11, a12);
  v16 = v149;
  v17 = v150;
  v19 = v151;
  v18 = v152;
  v122 = v153;
  v123 = v146;
  v20 = (v146 - v122) + (v146 - v122);
  v21 = (v147 - v154) + (v147 - v154);
  v22 = (v148 - v155) + (v148 - v155);
  v23 = (v18 * v18) + -0.5;
  v24 = (-(v150 * v21) - (v149 * v20)) - (v151 * v22);
  v25 = ((v152 * ((v151 * v21) - (v150 * v22))) + (v20 * v23)) - (v149 * v24);
  v26 = ((v152 * ((v149 * v22) - (v151 * v20))) + (v21 * v23)) - (v150 * v24);
  v121 = v23;
  v27 = ((v152 * ((v150 * v20) - (v149 * v21))) + (v22 * v23)) - (v151 * v24);
  v28 = (((v152 * v142) - (v149 * v145)) - (v150 * v144)) + (v143 * v151);
  v29 = (((v152 * v143) - (v150 * v145)) - (v151 * v142)) + (v144 * v149);
  v30 = (((v152 * v144) - (v151 * v145)) - (v149 * v143)) + (v142 * v150);
  v124 = v142;
  v125 = v143;
  v126 = v145;
  v127 = v144;
  v31 = (((v149 * v142) + (v152 * v145)) + (v150 * v143)) + (v151 * v144);
  v141[0] = v28;
  v141[1] = v29;
  v141[2] = v30;
  v141[3] = v31;
  v141[4] = v25;
  v141[5] = v26;
  v141[6] = v27;
  v32 = *(a1 + 452);
  v134 = v26;
  v135 = v25;
  if (v32)
  {
    v33 = v25;
  }

  else
  {
    v33 = 0.0;
  }

  if ((v32 & 2) == 0)
  {
    v26 = 0.0;
  }

  v133 = v27;
  if ((v32 & 4) != 0)
  {
    v34 = v27;
  }

  else
  {
    v34 = 0.0;
  }

  v35 = *(a1 + 468);
  v36 = ((v26 * v26) + (v33 * v33)) + (v34 * v34);
  v136 = v35 * v35;
  v37 = v33;
  v38 = v26;
  v39 = v34;
  if (v36 > (v35 * v35))
  {
    v40 = 1.0 / sqrtf(v36);
    v37 = v35 * (v33 * v40);
    v38 = v35 * (v26 * v40);
    v39 = v35 * (v34 * v40);
  }

  v137 = ((v26 * v26) + (v33 * v33)) + (v34 * v34);
  v138 = v33;
  v128 = v39;
  v129 = v38;
  v130 = v37;
  v131 = v34;
  v132 = v26;
  v41 = v32 >> 3;
  v42 = cosf(*(a1 + 472) * 0.5);
  v140 = 0;
  if (v41 <= 3)
  {
    if (v41 <= 1)
    {
      if (v41 >= 2)
      {
        goto LABEL_27;
      }

      goto LABEL_20;
    }

    if (v41 != 2)
    {
      v156 = 0;
      v157 = 1065353216;
LABEL_26:
      project(&v139, v141, &v156, &v140, v42);
      goto LABEL_28;
    }

LABEL_20:
    *&v139 = __PAIR64__(LODWORD(v29), LODWORD(v28));
    *(&v139 + 1) = __PAIR64__(LODWORD(v31), LODWORD(v30));
    goto LABEL_28;
  }

  if (v41 <= 5)
  {
    if (v41 == 4)
    {
      goto LABEL_20;
    }

    v43 = 0x3F80000000000000;
LABEL_25:
    v156 = v43;
    v157 = 0;
    goto LABEL_26;
  }

  if (v41 == 6)
  {
    v43 = 1065353216;
    goto LABEL_25;
  }

  if (v41 != 7)
  {
LABEL_27:
    v139 = xmmword_1E30474D0;
    goto LABEL_28;
  }

  truncate(&v139, v141, &v140, v42);
LABEL_28:
  if (v137 > v136 || v140)
  {
    v44 = (v135 - v138) + v130;
    v45 = (v134 - v132) + v129;
    v46 = (v133 - v131) + v128;
    if (a4)
    {
      v47 = *(a1 + 60) * -2.0;
      v48 = *(a1 + 64) * -2.0;
      v49 = *(a1 + 68) * -2.0;
      v51 = *(a1 + 52);
      v50 = *(a1 + 56);
      v52 = (v50 * v50) + -0.5;
      v53 = *(a1 + 44);
      v54 = *(a1 + 48);
      v55 = ((v48 * v54) + (v53 * v47)) + (v51 * v49);
      v56 = ((v47 * v52) - (((v54 * v49) - (v51 * v48)) * v50)) + (v53 * v55);
      v57 = ((v48 * v52) - (((v51 * v47) - (v53 * v49)) * v50)) + (v54 * v55);
      v58 = ((v49 * v52) - (((v53 * v48) - (v54 * v47)) * v50)) + (v51 * v55);
      v59 = v56 + v56;
      v60 = v58 + v58;
      v61 = (*(&v139 + 3) * *(&v139 + 3)) + -0.5;
      v62 = ((*(&v139 + 1) * (v57 + v57)) + (*&v139 * (v56 + v56))) + (*(&v139 + 2) * v60);
      v63 = ((*(&v139 + 3) * ((*(&v139 + 1) * v60) - (*(&v139 + 2) * (v57 + v57)))) + ((v56 + v56) * v61)) + (*&v139 * v62);
      v64 = ((*(&v139 + 3) * ((*(&v139 + 2) * (v56 + v56)) - (*&v139 * v60))) + ((v57 + v57) * v61)) + (*(&v139 + 1) * v62);
      v65 = v46 + (((*(&v139 + 3) * ((*&v139 * (v57 + v57)) - (*(&v139 + 1) * v59))) + (v60 * v61)) + (*(&v139 + 2) * v62));
      v66 = (((*&v139 * v50) - (*(&v139 + 3) * v53)) - (*(&v139 + 1) * v51)) + (v54 * *(&v139 + 2));
      v67 = (((*(&v139 + 1) * v50) - (*(&v139 + 3) * v54)) - (*(&v139 + 2) * v53)) + (v51 * *&v139);
      v68 = (((*(&v139 + 2) * v50) - (*(&v139 + 3) * v51)) - (*&v139 * v54)) + (v53 * *(&v139 + 1));
      v69 = (((*&v139 * v53) + (*(&v139 + 3) * v50)) + (*(&v139 + 1) * v54)) + (*(&v139 + 2) * v51);
      v70 = (v44 + v63) + (v44 + v63);
      v71 = (v45 + v64) + (v45 + v64);
      v72 = v65 + v65;
      v73 = ((v17 * v71) + (v16 * v70)) + (v19 * (v65 + v65));
      v74 = ((v18 * ((v71 * -v19) + (v17 * v72))) + (v70 * v121)) + (v16 * v73);
      v75 = ((v18 * ((v72 * -v16) + (v19 * v70))) + (v71 * v121)) + (v17 * v73);
      v76 = ((v18 * ((v70 * -v17) + (v16 * v71))) + (v72 * v121)) + (v19 * v73);
      v77 = v122 + v74;
      v78 = v154 + v75;
      v79 = v155 + v76;
      v80 = (((v16 * v69) + (v18 * v66)) + (v17 * v68)) - (v67 * v19);
      v81 = (((v17 * v69) + (v18 * v67)) + (v19 * v66)) - (v68 * v16);
      v82 = (((v19 * v69) + (v18 * v68)) + (v16 * v67)) - (v66 * v17);
      v83 = (((v66 * -v16) + (v18 * v69)) + (-v17 * v67)) + (-v19 * v68);
      *a3 = v80;
      a3[1] = v81;
      a3[2] = v82;
      a3[3] = v83;
      a3[4] = v77;
      a3[5] = v78;
      a3[6] = v79;
      v84 = sqrtf((((v81 * v81) + (v80 * v80)) + (v82 * v82)) + (v83 * v83));
      if (v84 != 0.0)
      {
        *a3 = v80 / v84;
        a3[1] = v81 / v84;
        a3[2] = v82 / v84;
        a3[3] = v83 / v84;
      }
    }

    else
    {
      v85 = *(a1 + 32) * -2.0;
      v86 = *(a1 + 36) * -2.0;
      v87 = *(a1 + 40) * -2.0;
      v89 = *(a1 + 24);
      v88 = *(a1 + 28);
      v90 = (v88 * v88) + -0.5;
      v91 = *(a1 + 16);
      v92 = *(a1 + 20);
      v93 = ((v86 * v92) + (v91 * v85)) + (v89 * v87);
      v94 = ((v85 * v90) - (((v92 * v87) - (v89 * v86)) * v88)) + (v91 * v93);
      v95 = ((v86 * v90) - (((v89 * v85) - (v91 * v87)) * v88)) + (v92 * v93);
      v96 = (((v87 * v90) - (((v91 * v86) - (v92 * v85)) * v88)) + (v89 * v93)) - v46;
      v97 = (v94 - v44) + (v94 - v44);
      v98 = (v95 - v45) + (v95 - v45);
      v99 = v96 + v96;
      v100 = (*(&v139 + 3) * *(&v139 + 3)) + -0.5;
      v101 = (-(*(&v139 + 1) * v98) - (*&v139 * v97)) - (*(&v139 + 2) * v99);
      v102 = ((*(&v139 + 3) * ((*(&v139 + 2) * v98) - (*(&v139 + 1) * v99))) + (v97 * v100)) - (*&v139 * v101);
      v103 = ((*(&v139 + 3) * ((*&v139 * v99) - (*(&v139 + 2) * v97))) + (v98 * v100)) - (*(&v139 + 1) * v101);
      v104 = ((*(&v139 + 3) * ((*(&v139 + 1) * v97) - (*&v139 * v98))) + (v99 * v100)) - (*(&v139 + 2) * v101);
      v105 = ((-(*&v139 * v88) - (*(&v139 + 3) * v91)) + (*(&v139 + 1) * v89)) - (v92 * *(&v139 + 2));
      v106 = ((-(*(&v139 + 1) * v88) - (*(&v139 + 3) * v92)) + (*(&v139 + 2) * v91)) - (v89 * *&v139);
      v107 = ((-(*(&v139 + 2) * v88) - (*(&v139 + 3) * v89)) + (*&v139 * v92)) - (v91 * *(&v139 + 1));
      v108 = (((*(&v139 + 3) * v88) - (v91 * *&v139)) - (*(&v139 + 1) * v92)) - (*(&v139 + 2) * v89);
      v109 = (v126 * v126) + -0.5;
      v110 = ((v125 * (v103 + v103)) + (v124 * (v102 + v102))) + (v127 * (v104 + v104));
      v111 = ((v126 * ((v127 * (v102 + v102)) - (v124 * (v104 + v104)))) + ((v103 + v103) * v109)) + (v125 * v110);
      v112 = ((v126 * ((v124 * (v103 + v103)) - (v125 * (v102 + v102)))) + ((v104 + v104) * v109)) + (v127 * v110);
      v113 = v123 + (((v126 * ((v125 * (v104 + v104)) - (v127 * (v103 + v103)))) + ((v102 + v102) * v109)) + (v124 * v110));
      v114 = v147 + v111;
      v115 = v148 + v112;
      v116 = (((v124 * v108) + (v126 * v105)) + (v125 * v107)) - (v106 * v127);
      v117 = (((v125 * v108) + (v126 * v106)) + (v127 * v105)) - (v107 * v124);
      v118 = (((v127 * v108) + (v126 * v107)) + (v124 * v106)) - (v105 * v125);
      v119 = (((v126 * v108) - (v124 * v105)) - (v125 * v106)) - (v127 * v107);
      *a2 = v116;
      a2[1] = v117;
      a2[2] = v118;
      a2[3] = v119;
      a2[4] = v113;
      a2[5] = v114;
      a2[6] = v115;
      v120 = sqrtf((((v117 * v117) + (v116 * v116)) + (v118 * v118)) + (v119 * v119));
      if (v120 != 0.0)
      {
        *a2 = v116 / v120;
        a2[1] = v117 / v120;
        a2[2] = v118 / v120;
        a2[3] = v119 / v120;
      }
    }
  }
}

void D6JointVisualize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, double a6, double a7, double a8, double a9, double a10, double a11, int8x16_t a12, int8x16_t a13)
{
  *v16.i32 = physx::Ext::joint::computeJointFrames(v208, &v201, a2, a3, a4, a6, a7, a8, a9, a10, a11, a12, a13);
  if (a5)
  {
    (*(*a1 + 16))(a1, v208, &v201, *v16.i32);
  }

  if ((a5 & 2) == 0)
  {
    return;
  }

  v18 = *v208;
  v19 = *&v208[8];
  v20 = (v205 - v210.f32[0]) + (v205 - v210.f32[0]);
  v21 = (v206 - v210.f32[1]) + (v206 - v210.f32[1]);
  v22 = (v207 - v211) + (v207 - v211);
  v23 = (v209 * v209) + -0.5;
  v24 = (-(*&v208[4] * v21) - (*v208 * v20)) - (*&v208[8] * v22);
  v25 = ((v209 * ((*&v208[8] * v21) - (*&v208[4] * v22))) + (v20 * v23)) - (*v208 * v24);
  v26 = ((v209 * ((*v208 * v22) - (*&v208[8] * v20))) + (v21 * v23)) - (*&v208[4] * v24);
  v27 = ((v209 * ((*&v208[4] * v20) - (*v208 * v21))) + (v22 * v23)) - (*&v208[8] * v24);
  v29 = v203;
  v28 = v204;
  v31 = v201;
  v30 = v202;
  v194 = (((v209 * v201) - (*v208 * v204)) - (*&v208[4] * v203)) + (v202 * *&v208[8]);
  v195 = (((v209 * v202) - (*&v208[4] * v204)) - (*&v208[8] * v201)) + (v203 * *v208);
  v196 = (((v209 * v203) - (*&v208[8] * v204)) - (*v208 * v202)) + (v201 * *&v208[4]);
  v197 = (((*v208 * v201) + (v209 * v204)) + (*&v208[4] * v202)) + (*&v208[8] * v203);
  v198 = v25;
  v199 = v26;
  v200 = v27;
  v32 = v18 + v18;
  v33 = v18 * (v18 + v18);
  v34 = *&v208[4] * (*&v208[4] + *&v208[4]);
  v35 = v19 * (v19 + v19);
  v36 = (v18 + v18) * *&v208[4];
  v37 = v32 * *&v208[8];
  v38 = v32 * v209;
  v39 = (*&v208[4] + *&v208[4]) * *&v208[8];
  v40 = (*&v208[4] + *&v208[4]) * v209;
  v41 = (v19 + v19) * v209;
  v42 = (1.0 - v34) - v35;
  v43 = v36 + v41;
  v44 = v37 - v40;
  v187[0] = v42;
  v187[1] = v36 + v41;
  v45 = v36 - v41;
  v46 = 1.0 - v33;
  v47 = (1.0 - v33) - v35;
  v48 = v39 + v38;
  v187[2] = v37 - v40;
  v188 = v45;
  v189 = v47;
  v190 = v39 + v38;
  v49 = v37 + v40;
  v50 = v39 - v38;
  v51 = v46 - v34;
  v191 = v37 + v40;
  v192 = v39 - v38;
  v193 = v51;
  if (*(a2 + 477) == 1)
  {
    v52 = *(a2 + 456);
    if (v52 <= 3)
    {
      switch(v52)
      {
        case 1:
          v59 = v187;
          v60 = (a2 + 128);
          v61 = a1;
          goto LABEL_23;
        case 2:
          v59 = &v188;
          v60 = (a2 + 156);
          v61 = a1;
          v25 = v26;
          goto LABEL_23;
        case 3:
          v53 = v187;
          v54 = (a2 + 128);
          v55 = &v188;
          v56 = (a2 + 156);
          v57 = a1;
          v27 = v26;
          goto LABEL_21;
      }
    }

    else
    {
      if (v52 <= 5)
      {
        if (v52 != 4)
        {
          v53 = v187;
          v54 = (a2 + 128);
          v55 = &v191;
          v56 = (a2 + 184);
          v57 = a1;
LABEL_21:
          visualizeQuad(v57, &v210, v53, v54, v55, v56, v25, v27);
          goto LABEL_52;
        }

        v59 = &v191;
        v60 = (a2 + 184);
        v61 = a1;
        v25 = v27;
LABEL_23:
        visualizeLine(v61, &v210, v59, v60, v25);
        goto LABEL_52;
      }

      if (v52 == 6)
      {
        v53 = &v188;
        v54 = (a2 + 156);
        v55 = &v191;
        v56 = (a2 + 184);
        v57 = a1;
        v25 = v26;
        goto LABEL_21;
      }

      if (v52 == 7)
      {
        if (*(a2 + 140) <= 0.0 && *(a2 + 136) <= 0.0)
        {
          v58 = *(a2 + 144);
        }

        else
        {
          v58 = 0.0;
        }

        if (*(a2 + 168) <= 0.0 && *(a2 + 164) <= 0.0)
        {
          v62 = *(a2 + 172);
        }

        else
        {
          v62 = 0.0;
        }

        v63 = *(a2 + 148);
        v64 = *(a2 + 152);
        v65 = *(a2 + 176);
        v66 = *(a2 + 180);
        if (*(a2 + 196) <= 0.0 && *(a2 + 192) <= 0.0)
        {
          v67 = *(a2 + 200);
        }

        else
        {
          v67 = 0.0;
        }

        v68 = v62 + v66;
        v69 = v65 - v62;
        v70 = *(a2 + 204);
        v71 = *(a2 + 208);
        if ((v70 - v67) >= v27 && (v67 + v71) <= v27 && v69 >= v26 && (v63 - v58) >= v25 && v68 <= v26 && (v58 + v64) <= v25)
        {
          v77 = 0xFFFFFFLL;
        }

        else
        {
          v77 = 16711680;
        }

        v78 = v42 * v64;
        v79 = v43 * v64;
        v80 = v44 * v64;
        v81 = v42 * v63;
        v82 = v43 * v63;
        v83 = v44 * v63;
        v84 = v45 * v66;
        v85 = v47 * v66;
        v86 = v48 * v66;
        v87 = v45 * v65;
        v88 = v47 * v65;
        v89 = v48 * v65;
        v90 = v49 * v71;
        v91 = v50 * v71;
        v92 = v51 * v71;
        v93 = v49 * v70;
        v94 = v50 * v70;
        v95 = v51 * v70;
        v96 = v210.f32[0] + v78;
        v97 = v210.f32[1] + v79;
        v98 = v211 + v80;
        v99 = v96 + v84;
        v100 = v97 + v85;
        v101 = v98 + v86;
        *&v180 = (v96 + v84) + v90;
        *(&v180 + 1) = (v97 + v85) + v91;
        *(&v180 + 2) = (v98 + v86) + v92;
        v102 = v210.f32[0] + v81;
        v103 = v210.f32[1] + v82;
        v104 = v211 + v83;
        v105 = v102 + v84;
        v106 = v103 + v85;
        v107 = v104 + v86;
        *&v177 = (v102 + v84) + v90;
        *(&v177 + 1) = (v103 + v85) + v91;
        *(&v177 + 2) = (v104 + v86) + v92;
        v108 = v102 + v87;
        v109 = v103 + v88;
        v110 = v104 + v89;
        v174.f32[0] = v108 + v90;
        v174.f32[1] = v109 + v91;
        v174.f32[2] = v110 + v92;
        v111 = v96 + v87;
        v112 = v97 + v88;
        v113 = v98 + v89;
        v212.f32[0] = v111 + v90;
        v212.f32[1] = v112 + v91;
        v212.f32[2] = v113 + v92;
        v183 = v99 + v93;
        v184 = v100 + v94;
        v185 = v101 + v95;
        v215[0] = v105 + v93;
        v215[1] = v106 + v94;
        v215[2] = v107 + v95;
        v214[0] = v108 + v93;
        v214[1] = v109 + v94;
        v214[2] = v110 + v95;
        v213[0] = v111 + v93;
        v213[1] = v112 + v94;
        v213[2] = v113 + v95;
        (*(*a1 + 56))(a1, &v180, &v177, v77);
        (*(*a1 + 56))(a1, &v177, &v174, v77);
        (*(*a1 + 56))(a1, &v174, &v212, v77);
        (*(*a1 + 56))(a1, &v212, &v180, v77);
        (*(*a1 + 56))(a1, &v183, v215, v77);
        (*(*a1 + 56))(a1, v215, v214, v77);
        (*(*a1 + 56))(a1, v214, v213, v77);
        (*(*a1 + 56))(a1, v213, &v183, v77);
        (*(*a1 + 56))(a1, &v180, &v183, v77);
        (*(*a1 + 56))(a1, &v177, v215, v77);
        (*(*a1 + 56))(a1, &v174, v214, v77);
        (*(*a1 + 56))(a1, &v212, v213, v77);
      }
    }
  }

LABEL_52:
  if (*(a2 + 476) == 1)
  {
    *v16.i32 = computeLimitedDistance(*(a2 + 456), &v194, v187, &v180);
    if (*v16.i32 > *(a2 + 464))
    {
      if (*v16.i32 <= *(a2 + 124))
      {
        v114 = 65280;
      }

      else
      {
        v114 = 16711680;
      }

      (*(*a1 + 56))(a1, &v210, &v205, v114);
    }
  }

  if (v194 == 0.0)
  {
    v16.i32[0] = 1.0;
    v116 = 0.0;
    v117 = 0.0;
  }

  else
  {
    v16.i32[1] = 0;
    v115 = sqrtf(((v194 * v194) + 0.0) + (v197 * v197));
    v116 = v194 / v115;
    v117 = 0.0 / v115;
    *v16.i32 = v197 / v115;
  }

  v118 = (((*v16.i32 * v195) - (v197 * v117)) - (v196 * v116)) + (v117 * v194);
  v119 = (((*v16.i32 * v196) - (v197 * v117)) - (v194 * v117)) + (v116 * v195);
  v120 = (((v194 * v116) + (v197 * *v16.i32)) + (v195 * v117)) + (v196 * v117);
  v183 = (((v194 * *v16.i32) - (v197 * v116)) - (v195 * v117)) + (v117 * v196);
  v184 = v118;
  v185 = v119;
  v186 = v120;
  v121 = *(a2 + 456);
  if ((v121 & 8) != 0)
  {
    v122 = sqrtf((((v117 * v117) + (v116 * v116)) + (v117 * v117)) + (*v16.i32 * *v16.i32));
    if (v122 != 0.0)
    {
      v116 = v116 / v122;
      *v16.i32 = *v16.i32 / v122;
    }

    if (*v16.i32 < -1.0)
    {
      *v16.i32 = -1.0;
    }

    if (*v16.i32 > 1.0)
    {
      *v16.i32 = 1.0;
    }

    v123 = acosf(*v16.i32);
    v124 = v123 + v123;
    if (v116 >= 0.0)
    {
      v125 = v124;
    }

    else
    {
      v125 = -v124;
    }

    if (*(a2 + 224) <= 0.0 && *(a2 + 220) <= 0.0)
    {
      v126 = *(a2 + 228);
    }

    else
    {
      v126 = 0.0;
    }

    v127 = (*(a2 + 236) + v126) > v125 || (*(a2 + 232) - v126) < v125;
    (*(*a1 + 32))(a1, v208, v127);
    v121 = *(a2 + 456);
  }

  if ((~v121 & 0x30) != 0)
  {
    if (((v121 >> 5) & 1) == (v121 & 0x10) >> 4)
    {
      return;
    }

    v128 = (v31 + v31) * v29;
    *v133.i32 = v28 * (v30 + v30);
    v129 = v28 * (v29 + v29);
    v130 = (1.0 - (v30 * (v30 + v30))) - (v29 * (v29 + v29));
    v131 = ((v31 + v31) * v30) + v129;
    v132 = v128 - *v133.i32;
    v133.i64[1] = 0x3F3504F3BF3504F3;
    v180 = xmmword_1E31189B0;
    v133.i32[1] = 0;
    v181 = 0;
    v182 = 0;
    v177 = xmmword_1E31189C0;
    v178 = 0;
    v179 = 0;
    v134 = *(a2 + 452);
    if ((v121 & 0x10) != 0)
    {
      if ((v134 & 0x20) == 0)
      {
        if (*(a2 + 479))
        {
          return;
        }

        v17.i32[0] = *&v208[8];
        *v133.i32 = (v209 * v209) + -0.5;
        v141 = (vmuls_lane_f32(0.0, *v208, 1) + (*v208 * 0.0)) + (*&v208[8] * 0.0);
        v142 = vmla_n_f32(vmla_n_f32(vmul_n_f32(vmla_f32(vmul_f32(vzip1_s32(*v17.i8, *v208), 0x8000000080000000), 0, *&v208[4]), v209), 0, *v133.i32), *v208, v141);
        *v133.i32 = ((v209 * (vmuls_lane_f32(-0.0, *v208, 1) + (*v208 * 0.0))) + (*v133.i32 * 0.0)) + (*&v208[8] * v141);
        v143 = vadd_f32(v210, v142);
        v144 = v211 + *v133.i32;
        physx::PxQuat::operator*(v208, &v177, &v212, v133, v17);
        v174 = v212;
        v175 = v143;
        v176 = v144;
        v139 = ((v131 * v192) + (v191 * v130)) + (v193 * v132);
        v140 = *(a2 + 260);
LABEL_92:
        visualizeDoubleCone(a1, a2, &v174, v139, v140);
        return;
      }

      if (*(a2 + 479))
      {
        v155 = a1;
        v156 = a2;
        v157 = 1;
        v158 = 0;
        goto LABEL_98;
      }

      v17.i32[0] = *&v208[8];
      *v133.i32 = (v209 * v209) + -0.5;
      v167 = (vmuls_lane_f32(0.0, *v208, 1) + (*v208 * 0.0)) + (*&v208[8] * 0.0);
      v168 = vmla_n_f32(vmla_n_f32(vmul_n_f32(vmla_f32(vmul_f32(vzip1_s32(*v17.i8, *v208), 0x8000000080000000), 0, *&v208[4]), v209), 0, *v133.i32), *v208, v167);
      *v133.i32 = ((v209 * (vmuls_lane_f32(-0.0, *v208, 1) + (*v208 * 0.0))) + (*v133.i32 * 0.0)) + (*&v208[8] * v167);
      v169 = vadd_f32(v210, v168);
      v170 = v211 + *v133.i32;
      physx::PxQuat::operator*(v208, &v180, &v212, v133, v17);
      v174 = v212;
      v175 = v169;
      v176 = v170;
      v163 = *(a2 + 260);
      v164 = *(a2 + 256);
      v165 = a1;
      v166 = v118;
    }

    else
    {
      if ((v134 & 0x10) == 0)
      {
        if (*(a2 + 479))
        {
          return;
        }

        v17.i32[0] = *&v208[8];
        *v133.i32 = (v209 * v209) + -0.5;
        v135 = (vmuls_lane_f32(0.0, *v208, 1) + (*v208 * 0.0)) + (*&v208[8] * 0.0);
        v136 = vmla_n_f32(vmla_n_f32(vmul_n_f32(vmla_f32(vmul_f32(vzip1_s32(*v17.i8, *v208), 0x8000000080000000), 0, *&v208[4]), v209), 0, *v133.i32), *v208, v135);
        *v133.i32 = ((v209 * (vmuls_lane_f32(-0.0, *v208, 1) + (*v208 * 0.0))) + (*v133.i32 * 0.0)) + (*&v208[8] * v135);
        v137 = vadd_f32(v210, v136);
        v138 = v211 + *v133.i32;
        physx::PxQuat::operator*(v208, &v180, &v212, v133, v17);
        v174 = v212;
        v175 = v137;
        v176 = v138;
        v139 = ((v131 * v189) + (v188 * v130)) + (v190 * v132);
        v140 = *(a2 + 264);
        goto LABEL_92;
      }

      if (*(a2 + 479))
      {
        v155 = a1;
        v156 = a2;
        v157 = 0;
        goto LABEL_97;
      }

      v17.i32[0] = *&v208[8];
      *v133.i32 = (v209 * v209) + -0.5;
      v159 = (vmuls_lane_f32(0.0, *v208, 1) + (*v208 * 0.0)) + (*&v208[8] * 0.0);
      v160 = vmla_n_f32(vmla_n_f32(vmul_n_f32(vmla_f32(vmul_f32(vzip1_s32(*v17.i8, *v208), 0x8000000080000000), 0, *&v208[4]), v209), 0, *v133.i32), *v208, v159);
      *v133.i32 = ((v209 * (vmuls_lane_f32(-0.0, *v208, 1) + (*v208 * 0.0))) + (*v133.i32 * 0.0)) + (*&v208[8] * v159);
      v161 = vadd_f32(v210, v160);
      v162 = v211 + *v133.i32;
      physx::PxQuat::operator*(v208, &v177, &v212, v133, v17);
      v174 = v212;
      v175 = v161;
      v176 = v162;
      v163 = *(a2 + 264);
      v164 = *(a2 + 256);
      v165 = a1;
      v166 = v119;
    }

    visualizeAngularLimit(v165, &v174, v164, v166, v120, v163);
    return;
  }

  if (*(a2 + 478) == 1)
  {
    if (*(a2 + 252) <= 0.0 && *(a2 + 248) <= 0.0)
    {
      v16.i32[0] = *(a2 + 256);
    }

    else
    {
      v16 = 0;
    }

    v171 = v16;
    v145 = v120 + 1.0;
    v172 = atan2f(v119, v145);
    v146.f32[0] = atan2f(v118, v145);
    v146.f32[1] = v172;
    __asm { FMOV            V1.2S, #4.0 }

    v151 = vmul_f32(v146, _D1);
    v173 = *(a2 + 260);
    v152 = tanf(vmuls_lane_f32(0.25, v173, 1));
    v153.n128_u32[0] = tanf(0.25 * v173.f32[0]);
    v154 = vdiv_f32(vadd_f32(vdup_lane_s32(v171, 0), vabs_f32(v151)), v173);
    (*(*a1 + 40))(a1, v208, vaddv_f32(vmul_f32(v154, v154)) > 1.0, v152, v153);
  }

  if (*(a2 + 479) == 1)
  {
    v155 = a1;
    v156 = a2;
    v157 = 1;
LABEL_97:
    v158 = 1;
LABEL_98:
    drawPyramid(v155, v156, v208, &v183, v157, v158);
  }
}

void physx::PxDefaultErrorCallback::reportError(uint64_t a1, int a2, const char *a3, const char *a4, int a5)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2 > 7)
  {
    if (a2 <= 31)
    {
      if (a2 == 8)
      {
        v6 = "invalid operation";
      }

      else
      {
        if (a2 != 16)
        {
          return;
        }

        v6 = "out of memory";
      }
    }

    else
    {
      switch(a2)
      {
        case 32:
          v6 = "internal error";
          break;
        case 64:
          v6 = "abort";
          break;
        case 128:
          v6 = "performance warning";
          break;
        default:
          return;
      }
    }
  }

  else if (a2 <= 0)
  {
    if (a2 == -1)
    {
      v6 = "unknown error";
    }

    else
    {
      if (a2)
      {
        return;
      }

      v6 = "no error";
    }
  }

  else
  {
    switch(a2)
    {
      case 1:
        v6 = "info";
        break;
      case 2:
        v6 = "warning";
        break;
      case 4:
        v6 = "invalid parameter";
        break;
      default:
        return;
    }
  }

  sprintf(v8, "%s (%d) : %s : %s\n", a4, a5, v6, a3);
  puts(v8);
  if (a2 == 64)
  {
    while (1)
    {
      puts(v8);
      __rmtp = xmmword_1E3058110;
        ;
      }
    }
  }
}

void physx::Ext::D6Joint::~D6Joint(physx::Ext::D6Joint *this)
{
  if (physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::~Joint(this))
  {
    v1 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v1();
  }
}

BOOL physx::PxD6Joint::isKindOf(physx::PxD6Joint *this, const char *a2)
{
  if (!strcmp("PxD6Joint", a2))
  {
    return 1;
  }

  return physx::PxJoint::isKindOf(this, a2);
}

uint64_t physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::setActors(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(**(a1 + 96) + 64))(*(a1 + 96));
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v41, a2);
  v6 = v43;
  v7 = (*(a1 + 56) - v45) + (*(a1 + 56) - v45);
  v8 = (*(a1 + 60) - v46) + (*(a1 + 60) - v46);
  v9 = (*(a1 + 64) - v47) + (*(a1 + 64) - v47);
  v10 = (v44 * v44) + -0.5;
  v11 = (-(v42 * v8) - (v41 * v7)) - (v43 * v9);
  v12 = ((v44 * ((v43 * v8) - (v42 * v9))) + (v7 * v10)) - (v41 * v11);
  v13 = (v44 * ((v41 * v9) - (v43 * v7))) + (v8 * v10);
  v14 = (v44 * ((v42 * v7) - (v41 * v8))) + (v9 * v10);
  v16 = *(a1 + 48);
  v15 = *(a1 + 52);
  v17 = *(a1 + 40);
  v18 = *(a1 + 44);
  v19 = (((v44 * v18) - (v42 * v15)) - (v43 * v17)) + (v16 * v41);
  v20 = (((v44 * v16) - (v43 * v15)) - (v41 * v18)) + (v17 * v42);
  v21 = v13 - (v42 * v11);
  v22 = (((v41 * v17) + (v44 * v15)) + (v42 * v18)) + (v43 * v16);
  v23 = *(a1 + 104);
  v23[4] = (((v44 * v17) - (v41 * v15)) - (v42 * v16)) + (v18 * v43);
  v23[5] = v19;
  v23[6] = v20;
  v23[7] = v22;
  v23[8] = v12;
  v23[9] = v21;
  v23[10] = v14 - (v6 * v11);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v41, a3);
  v24 = (*(a1 + 84) - v45) + (*(a1 + 84) - v45);
  v25 = (*(a1 + 88) - v46) + (*(a1 + 88) - v46);
  v26 = (*(a1 + 92) - v47) + (*(a1 + 92) - v47);
  v27 = (v44 * v44) + -0.5;
  v28 = (-(v42 * v25) - (v41 * v24)) - (v43 * v26);
  v29 = ((v44 * ((v43 * v25) - (v42 * v26))) + (v24 * v27)) - (v41 * v28);
  v30 = ((v44 * ((v41 * v26) - (v43 * v24))) + (v25 * v27)) - (v42 * v28);
  v31 = ((v44 * ((v42 * v24) - (v41 * v25))) + (v26 * v27)) - (v43 * v28);
  v33 = *(a1 + 76);
  v32 = *(a1 + 80);
  v34 = *(a1 + 68);
  v35 = *(a1 + 72);
  v36 = (((v44 * v35) - (v42 * v32)) - (v43 * v34)) + (v33 * v41);
  v37 = (((v44 * v33) - (v43 * v32)) - (v41 * v35)) + (v34 * v42);
  v38 = (((v41 * v34) + (v44 * v32)) + (v42 * v35)) + (v43 * v33);
  v39 = *(a1 + 104);
  v39[11] = (((v44 * v34) - (v41 * v32)) - (v42 * v33)) + (v35 * v43);
  v39[12] = v36;
  v39[13] = v37;
  v39[14] = v38;
  v39[15] = v29;
  v39[16] = v30;
  v39[17] = v31;
  return (*(**(a1 + 96) + 72))(*(a1 + 96));
}

uint64_t physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getActors(uint64_t a1, void *a2, void *a3)
{
  result = *(a1 + 96);
  if (result)
  {
    return (*(*result + 56))();
  }

  *a2 = 0;
  *a3 = 0;
  return result;
}

uint64_t physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::setLocalPose(uint64_t a1, unsigned int a2, float *a3)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v5 = a3[1];
  v6 = a3[2];
  v7 = a3[3];
  v8 = sqrtf((((v5 * v5) + (*a3 * *a3)) + (v6 * v6)) + (v7 * v7));
  v9 = *a3 / v8;
  v10 = v5 / v8;
  v11 = v6 / v8;
  v12 = v7 / v8;
  v13 = a3[4];
  v14 = a3[5];
  v15 = a3[6];
  v16 = 28 * a2;
  v17 = (a1 + v16);
  v17[10] = v9;
  v17[11] = v5 / v8;
  v17[12] = v6 / v8;
  v17[13] = v7 / v8;
  v17[14] = v13;
  v17[15] = v14;
  v17[16] = v15;
  v39 = 0;
  v40[0] = 0;
  (*(**(a1 + 96) + 56))(*(a1 + 96), &v39, v40);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v32, v40[a2 - 1]);
  v18 = (v13 - v36) + (v13 - v36);
  v19 = (v14 - v37) + (v14 - v37);
  v20 = (v15 - v38) + (v15 - v38);
  v21 = (v35 * v35) + -0.5;
  v22 = (-(v33 * v19) - (v32 * v18)) - (v34 * v20);
  v23 = ((v35 * ((v34 * v19) - (v33 * v20))) + (v18 * v21)) - (v32 * v22);
  v24 = ((v35 * ((v32 * v20) - (v34 * v18))) + (v19 * v21)) - (v33 * v22);
  v25 = ((v35 * ((v33 * v18) - (v32 * v19))) + (v20 * v21)) - (v34 * v22);
  v26 = (((v35 * v10) - (v33 * v12)) - (v34 * v9)) + (v11 * v32);
  v27 = (((v35 * v11) - (v34 * v12)) - (v32 * v10)) + (v9 * v33);
  v28 = (((v9 * v32) + (v35 * v12)) + (v33 * v10)) + (v34 * v11);
  v29 = *(a1 + 96);
  v30 = (*(a1 + 104) + v16);
  v30[4] = (((v35 * v9) - (v32 * v12)) - (v33 * v11)) + (v10 * v34);
  v30[5] = v26;
  v30[6] = v27;
  v30[7] = v28;
  v30[8] = v23;
  v30[9] = v24;
  v30[10] = v25;
  return (*(*v29 + 72))(v29);
}

float physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getLocalPose@<S0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a1 + 28 * a2;
  *a3 = *(v3 + 40);
  *(a3 + 16) = *(v3 + 56);
  result = *(v3 + 64);
  *(a3 + 24) = result;
  return result;
}

float physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getRelativeTransform@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  v72 = 0;
  v73 = 0;
  (*(**(a1 + 96) + 56))(*(a1 + 96), &v73, &v72);
  v4 = 1.0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  v12 = 1.0;
  if (v73)
  {
    (*(*v73 + 152))(&v66);
    v5 = 0.0;
    v4 = 1.0;
    v10 = *(&v66 + 1);
    v11 = *&v66;
    v9 = v67;
    v12 = v68;
    v8 = v69;
    v7 = v70;
    v6 = v71;
  }

  v13 = *(a1 + 56);
  v14 = *(a1 + 60);
  v15 = *(a1 + 64);
  v16 = *(a1 + 48);
  v17 = *(a1 + 52);
  v18 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  v21 = *(a1 + 40);
  v22 = *(a1 + 44);
  v23 = 0.0;
  v24 = 0.0;
  if (v72)
  {
    v64 = v7;
    v65 = v8;
    v62 = *(a1 + 56);
    v63 = v6;
    v60 = *(a1 + 64);
    v61 = *(a1 + 60);
    (*(*v72 + 152))(&v66);
    v15 = v60;
    v14 = v61;
    v13 = v62;
    v6 = v63;
    v7 = v64;
    v8 = v65;
    v23 = *(&v66 + 1);
    v24 = *&v66;
    v20 = v67;
    v4 = v68;
    v19 = v69;
    v18 = v70;
    v5 = v71;
  }

  v25 = (((v12 * v17) - (v11 * v21)) - (v10 * v22)) - (v9 * v16);
  v26 = (((v9 * v17) + (v12 * v16)) + (v11 * v22)) - (v21 * v10);
  v27 = (((v10 * v17) + (v12 * v22)) + (v9 * v21)) - (v16 * v11);
  v28 = (((v11 * v17) + (v12 * v21)) + (v10 * v16)) - (v22 * v9);
  v29 = v15 + v15;
  v30 = v14 + v14;
  v31 = ((v10 * (v14 + v14)) + (v11 * (v13 + v13))) + (v9 * v29);
  v32 = (v12 * v12) + -0.5;
  v33 = v6 + (((v12 * ((v11 * (v14 + v14)) - (v10 * (v13 + v13)))) + (v29 * v32)) + (v9 * v31));
  v34 = v7 + (((v12 * ((v9 * (v13 + v13)) - (v11 * v29))) + (v30 * v32)) + (v10 * v31));
  v35 = v8 + (((v12 * ((v10 * v29) - (v9 * v30))) + ((v13 + v13) * v32)) + (v11 * v31));
  v36 = *(a1 + 84) + *(a1 + 84);
  v37 = *(a1 + 88) + *(a1 + 88);
  v38 = *(a1 + 92) + *(a1 + 92);
  v39 = (v4 * v4) + -0.5;
  v40 = ((v23 * v37) + (v24 * v36)) + (v20 * v38);
  v41 = v19 + (((v4 * ((v23 * v38) - (v20 * v37))) + (v36 * v39)) + (v24 * v40));
  v42 = v18 + (((v4 * ((v20 * v36) - (v24 * v38))) + (v37 * v39)) + (v23 * v40));
  v43 = v5 + (((v4 * ((v24 * v37) - (v23 * v36))) + (v38 * v39)) + (v20 * v40));
  v45 = *(a1 + 76);
  v44 = *(a1 + 80);
  v46 = *(a1 + 68);
  v47 = *(a1 + 72);
  v48 = (((v24 * v44) + (v4 * v46)) + (v23 * v45)) - (v47 * v20);
  v49 = (((v23 * v44) + (v4 * v47)) + (v20 * v46)) - (v45 * v24);
  v50 = (((v20 * v44) + (v4 * v45)) + (v24 * v47)) - (v46 * v23);
  v51 = (((v4 * v44) - (v24 * v46)) - (v23 * v47)) - (v20 * v45);
  v52 = (v41 - v35) + (v41 - v35);
  v53 = (v42 - v34) + (v42 - v34);
  v54 = (v43 - v33) + (v43 - v33);
  v55 = (v25 * v25) + -0.5;
  v56 = (-(v27 * v53) - (v28 * v52)) - (v26 * v54);
  v57 = ((v25 * ((v26 * v53) - (v27 * v54))) + (v52 * v55)) - (v28 * v56);
  v58 = ((v25 * ((v28 * v54) - (v26 * v52))) + (v53 * v55)) - (v27 * v56);
  *a2 = (((v25 * v48) - (v28 * v51)) - (v27 * v50)) + (v49 * v26);
  a2[1] = (((v25 * v49) - (v27 * v51)) - (v26 * v48)) + (v50 * v28);
  a2[2] = (((v25 * v50) - (v26 * v51)) - (v28 * v49)) + (v48 * v27);
  a2[3] = (((v28 * v48) + (v25 * v51)) + (v27 * v49)) + (v26 * v50);
  result = ((v25 * ((v27 * v52) - (v28 * v53))) + (v54 * v55)) - (v26 * v56);
  a2[4] = v57;
  a2[5] = v58;
  a2[6] = result;
  return result;
}

float physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getRelativeLinearVelocity@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  v51 = 0;
  v52 = 0;
  (*(**(a1 + 96) + 56))(*(a1 + 96), &v52, &v51);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v36, v52);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v32, v51);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getActorVelocity(v52, v50, &v47);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getActorVelocity(v51, v46, &v43);
  v4 = *(a1 + 56) + *(a1 + 56);
  v5 = *(a1 + 60) + *(a1 + 60);
  v6 = *(a1 + 64) + *(a1 + 64);
  v7 = (v39 * v39) + -0.5;
  v8 = ((v5 * v37) + (v36 * v4)) + (v38 * v6);
  v9 = ((v39 * ((v37 * v6) - (v38 * v5))) + (v4 * v7)) + (v36 * v8);
  v10 = ((v39 * ((v38 * v4) - (v36 * v6))) + (v5 * v7)) + (v37 * v8);
  v11 = ((v39 * ((v36 * v5) - (v37 * v4))) + (v6 * v7)) + (v38 * v8);
  v12 = *(a1 + 84) + *(a1 + 84);
  v13 = *(a1 + 88) + *(a1 + 88);
  v14 = *(a1 + 92) + *(a1 + 92);
  v15 = (v35 * v35) + -0.5;
  v16 = ((v13 * v33) + (v32 * v12)) + (v34 * v14);
  v17 = ((v35 * ((v33 * v14) - (v34 * v13))) + (v12 * v15)) + (v32 * v16);
  v18 = ((v35 * ((v34 * v12) - (v32 * v14))) + (v13 * v15)) + (v33 * v16);
  v19 = ((v35 * ((v32 * v13) - (v33 * v12))) + (v14 * v15)) + (v34 * v16);
  v20 = (v48 * v11) - (v49 * v10);
  v21 = (v49 * v9) - (v47 * v11);
  v22 = (v47 * v10) - (v48 * v9);
  v23 = (((v46[0] - ((v44 * v19) - (v45 * v18))) - v50[0]) + v20) - v40;
  v24 = (((v46[1] - ((v45 * v17) - (v43 * v19))) - v50[1]) + v21) - v41;
  v25 = (((v46[2] - ((v43 * v18) - (v44 * v17))) - v50[2]) + v22) - v42;
  v26 = v23 + v23;
  v27 = v24 + v24;
  v28 = v25 + v25;
  v29 = ((v37 * v27) + (v36 * v26)) + (v38 * v28);
  v30 = ((v27 * v7) - (((v38 * v26) - (v36 * v28)) * v39)) + (v37 * v29);
  result = ((v28 * v7) - (((v36 * v27) - (v37 * v26)) * v39)) + (v38 * v29);
  *a2 = ((v26 * v7) - (((v37 * v28) - (v38 * v27)) * v39)) + (v36 * v29);
  a2[1] = v30;
  a2[2] = result;
  return result;
}

float32_t physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getRelativeAngularVelocity@<S0>(uint64_t a1@<X0>, float32x2_t *a2@<X8>)
{
  v21 = 0;
  v22 = 0;
  (*(**(a1 + 96) + 56))(*(a1 + 96), &v22, &v21);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(v11, v22);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getActorVelocity(v22, v20, &v18);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getActorVelocity(v21, v17, &v15);
  v3 = ((v16 - v19) - v14) + ((v16 - v19) - v14);
  v4.i32[0] = *&v11[8];
  v5 = (v12 * v12) + -0.5;
  v6 = vsub_f32(vsub_f32(v15, v18), v13);
  v7 = vadd_f32(v6, v6);
  v8 = (vmuls_lane_f32(v7.f32[1], *v11, 1) + (*v11 * v7.f32[0])) + (*&v11[8] * v3);
  v9.i32[0] = vdup_lane_s32(v7, 1).u32[0];
  v9.f32[1] = v3;
  result = ((v3 * v5) - (((-*&v11[4] * v7.f32[0]) + (*v11 * v7.f32[1])) * v12)) + (*&v11[8] * v8);
  *a2 = vmla_n_f32(vmla_n_f32(vmul_n_f32(vneg_f32(vmla_f32(vmul_f32(v9, vneg_f32(vzip1_s32(v4, *v11))), vext_s8(v9, v7, 4uLL), *&v11[4])), v12), v7, v5), *v11, v8);
  a2[1].f32[0] = result;
  return result;
}

uint64_t physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::setConstraintFlags(uint64_t a1, __int16 *a2)
{
  v2 = *(a1 + 96);
  v4 = *a2;
  return (*(*v2 + 80))(v2, &v4);
}

uint64_t physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::setInvMassScale0(uint64_t a1, float a2)
{
  v2 = a1 + 96;
  v3 = *(a1 + 96);
  **(v2 + 8) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::setInvInertiaScale0(uint64_t a1, float a2)
{
  v2 = a1 + 96;
  v3 = *(a1 + 96);
  *(*(v2 + 8) + 4) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::setInvMassScale1(uint64_t a1, float a2)
{
  v2 = a1 + 96;
  v3 = *(a1 + 96);
  *(*(v2 + 8) + 8) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::setInvInertiaScale1(uint64_t a1, float a2)
{
  v2 = a1 + 96;
  v3 = *(a1 + 96);
  *(*(v2 + 8) + 12) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getScene(uint64_t a1)
{
  result = *(a1 + 96);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

uint64_t physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::requiresObjects(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2, *(a1 + 96));
  v5 = 0;
  v6 = 0;
  result = (*(**(a1 + 96) + 56))(*(a1 + 96), &v6, &v5);
  if (v6)
  {
    result = (*(*a2 + 16))(a2);
  }

  if (v5)
  {
    return (*(*a2 + 16))(a2);
  }

  return result;
}

uint64_t physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::onComShift(uint64_t a1, unsigned int a2)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v30 = 0;
  v31[0] = 0;
  (*(**(a1 + 96) + 56))(*(a1 + 96), &v30, v31);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v23, v31[a2 - 1]);
  v4 = 28 * a2;
  v5 = (*(a1 + v4 + 56) - v27) + (*(a1 + v4 + 56) - v27);
  v6 = (*(a1 + v4 + 60) - v28) + (*(a1 + v4 + 60) - v28);
  v7 = (*(a1 + v4 + 64) - v29) + (*(a1 + v4 + 64) - v29);
  v8 = (v26 * v26) + -0.5;
  v9 = (-(v24 * v6) - (v23 * v5)) - (v25 * v7);
  v10 = ((v26 * ((v25 * v6) - (v24 * v7))) + (v5 * v8)) - (v23 * v9);
  v11 = ((v26 * ((v23 * v7) - (v25 * v5))) + (v6 * v8)) - (v24 * v9);
  v12 = ((v26 * ((v24 * v5) - (v23 * v6))) + (v7 * v8)) - (v25 * v9);
  v14 = *(a1 + v4 + 48);
  v13 = *(a1 + v4 + 52);
  v15 = *(a1 + v4 + 40);
  v16 = *(a1 + v4 + 44);
  v17 = (((v26 * v16) - (v24 * v13)) - (v25 * v15)) + (v14 * v23);
  v18 = (((v26 * v14) - (v25 * v13)) - (v23 * v16)) + (v15 * v24);
  v19 = (((v23 * v15) + (v26 * v13)) + (v24 * v16)) + (v25 * v14);
  v20 = *(a1 + 96);
  v21 = (*(a1 + 104) + v4);
  v21[4] = (((v26 * v15) - (v23 * v13)) - (v24 * v14)) + (v16 * v25);
  v21[5] = v17;
  v21[6] = v18;
  v21[7] = v19;
  v21[8] = v10;
  v21[9] = v11;
  v21[10] = v12;
  return (*(*v20 + 72))(v20);
}

uint64_t physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::onOriginShift(uint64_t a1, float *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16[0] = 0;
  result = (*(**(a1 + 96) + 56))(*(a1 + 96), &v15, v16);
  if (v15)
  {
    if (v16[0])
    {
      return result;
    }

    v5 = 68;
    v6 = 64;
    v7 = 60;
    v8 = 92;
    v9 = 88;
    v10 = 84;
  }

  else
  {
    v5 = 40;
    v6 = 36;
    v7 = 32;
    v8 = 64;
    v9 = 60;
    v10 = 56;
  }

  v11 = a2[1];
  *(a1 + v10) = *(a1 + v10) - *a2;
  *(a1 + v9) = *(a1 + v9) - v11;
  *(a1 + v8) = *(a1 + v8) - a2[2];
  v12 = *(a1 + 96);
  v13 = *(a1 + 104);
  v14 = a2[1];
  *(v13 + v7) = *(v13 + v7) - *a2;
  *(v13 + v6) = *(v13 + v6) - v14;
  *(v13 + v5) = *(v13 + v5) - a2[2];
  return (*(*v12 + 72))(v12);
}

uint64_t physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::onConstraintRelease(void *a1)
{
  if (a1[13])
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  a1[13] = 0;
  v2 = *(*a1 + 32);

  return v2(a1);
}

uint64_t non-virtual thunk tophysx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getExternalReference(uint64_t a1, _DWORD *a2)
{
  result = a1 - 24;
  *a2 = 0;
  return result;
}

void non-virtual thunk tophysx::Ext::D6Joint::~D6Joint(physx::Ext::D6Joint *this)
{
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::~Joint(this - 24);
}

{
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::~Joint(this - 24);
  v1 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

  v1();
}

void setupPyramidSwingLimits(uint64_t a1, float *a2, float *a3, float *a4, int a5, int a6)
{
  v10 = a4[1];
  v12 = a3[2];
  v11 = a3[3];
  v13 = a3[1];
  v15 = a4[2];
  v14 = a4[3];
  v16 = (((v11 * *a4) + (v14 * *a3)) + (v10 * v12)) - (v13 * v15);
  v17 = (((v11 * v10) + (v14 * v13)) + (v15 * *a3)) - (v12 * *a4);
  v18 = (((v11 * v15) + (v14 * v12)) + (*a4 * v13)) - (*a3 * v10);
  v19 = (((v14 * v11) - (*a4 * *a3)) - (v10 * v13)) - (v15 * v12);
  if (a5)
  {
    v20 = atan2f(v13, v11 + 1.0) * 4.0;
    v21 = a2[72];
    v22 = v19 + v19;
    if (a2[70] <= 0.0 && a2[69] <= 0.0)
    {
      v23 = a2[71];
    }

    else
    {
      v23 = 0.0;
    }

    v24 = a2[73];
    v25 = (v16 * (v17 + v17)) - (v18 * v22);
    v26 = ((v19 * (v19 + v19)) + -1.0) + (v17 * (v17 + v17));
    v27 = ((v17 + v17) * v18) + (v16 * v22);
    if ((v21 + v23) > v20)
    {
      v28 = *(a1 + 8);
      *(a1 + 8) = v28 + 80;
      v42 = (v16 * (v17 + v17)) - (v18 * v22);
      *(v28 + 78) = 0;
      *v28 = 0;
      *(v28 + 8) = 0;
      *(v28 + 20) = -v26;
      *(v28 + 24) = -v27;
      *(v28 + 32) = 0;
      *(v28 + 40) = 0;
      *(v28 + 48) = -v25;
      *(v28 + 52) = -v26;
      *(v28 + 56) = -v27;
      *(v28 + 12) = -(v21 - v20);
      *(v28 + 16) = -v25;
      *(v28 + 76) |= 0x40u;
      physx::Ext::joint::ConstraintHelper::addLimit(a1, v28, (a2 + 67));
      v26 = ((v19 * (v19 + v19)) + -1.0) + (v17 * (v17 + v17));
      v25 = v42;
    }

    if ((v24 - v23) < v20)
    {
      v29 = *(a1 + 8);
      *(a1 + 8) = v29 + 80;
      *(v29 + 78) = 0;
      *v29 = 0;
      *(v29 + 8) = 0;
      *(v29 + 20) = v26;
      *(v29 + 24) = v27;
      *(v29 + 32) = 0;
      *(v29 + 40) = 0;
      *(v29 + 48) = v25;
      *(v29 + 52) = v26;
      *(v29 + 56) = v27;
      *(v29 + 12) = v24 - v20;
      *(v29 + 16) = v25;
      *(v29 + 76) |= 0x40u;
      physx::Ext::joint::ConstraintHelper::addLimit(a1, v29, (a2 + 67));
    }
  }

  if (a6)
  {
    v30 = atan2f(a3[2], a3[3] + 1.0) * 4.0;
    v31 = a2[74];
    v32 = v19 + v19;
    v33 = v17 * (v18 + v18);
    v34 = (v19 * (v19 + v19)) + -1.0;
    if (a2[70] <= 0.0 && a2[69] <= 0.0)
    {
      v35 = a2[71];
    }

    else
    {
      v35 = 0.0;
    }

    v36 = a2[75];
    v37 = (v16 * (v18 + v18)) + (v17 * v32);
    v38 = v33 - (v16 * v32);
    v39 = v34 + (v18 * (v18 + v18));
    if ((v31 + v35) > v30)
    {
      v40 = *(a1 + 8);
      *(a1 + 8) = v40 + 80;
      *(v40 + 78) = 0;
      *v40 = 0;
      *(v40 + 8) = 0;
      *(v40 + 20) = -v38;
      *(v40 + 24) = -v39;
      *(v40 + 32) = 0;
      *(v40 + 40) = 0;
      *(v40 + 48) = -v37;
      *(v40 + 52) = -v38;
      *(v40 + 56) = -v39;
      *(v40 + 12) = -(v31 - v30);
      *(v40 + 16) = -v37;
      *(v40 + 76) |= 0x40u;
      physx::Ext::joint::ConstraintHelper::addLimit(a1, v40, (a2 + 67));
    }

    if ((v36 - v35) < v30)
    {
      v41 = *(a1 + 8);
      *(a1 + 8) = v41 + 80;
      *(v41 + 78) = 0;
      *v41 = 0;
      *(v41 + 8) = 0;
      *(v41 + 20) = v38;
      *(v41 + 24) = v39;
      *(v41 + 32) = 0;
      *(v41 + 40) = 0;
      *(v41 + 48) = v37;
      *(v41 + 52) = v38;
      *(v41 + 56) = v39;
      *(v41 + 12) = v36 - v30;
      *(v41 + 16) = v37;
      *(v41 + 76) |= 0x40u;

      physx::Ext::joint::ConstraintHelper::addLimit(a1, v41, (a2 + 67));
    }
  }
}

float computeLimitedDistance(unsigned int a1, uint64_t a2, uint64_t a3, float32x2_t *a4)
{
  v4 = 0;
  v5 = (a3 + 8);
  v6 = 0;
  v7 = 0.0;
  do
  {
    if ((a1 >> v4))
    {
      v8 = *(a2 + 16 + 4 * v4);
      v6 = vadd_f32(v6, vmul_n_f32(*(v5 - 2), v8));
      v7 = v7 + (v8 * *v5);
    }

    ++v4;
    v5 += 3;
  }

  while (v4 != 3);
  *a4 = v6;
  a4[1].f32[0] = v7;
  return sqrtf((COERCE_FLOAT(vmul_f32(v6, v6).i32[1]) + (v6.f32[0] * v6.f32[0])) + (v7 * v7));
}

void setupLinearLimit(uint64_t a1, float *a2, uint64_t a3, float a4)
{
  v8 = a2[5];
  v9 = a2[3];
  if (v9 <= 0.0 && a2[2] <= 0.0)
  {
    v10 = a2[4];
  }

  else
  {
    v10 = 0.0;
  }

  if ((v10 + a4) > v8)
  {
    v11 = *(a1 + 8);
    *(a1 + 8) = v11 + 80;
    v12 = *a3;
    *v11 = *a3;
    v13 = *(a1 + 16);
    v14 = *(a3 + 4);
    *(v11 + 4) = v14;
    v15 = *(a1 + 20);
    v16.i32[0] = vdup_lane_s32(v15, 1).u32[0];
    *(v11 + 78) = 0;
    v16.f32[1] = v13;
    v17.i32[0] = vdup_lane_s32(v14, 1).u32[0];
    v17.f32[1] = v12;
    *(v11 + 16) = vmla_f32(vmul_f32(v14, vneg_f32(v16)), v17, v15);
    *(v11 + 24) = (v13 * v14.f32[0]) - (v15.f32[0] * v12);
    v18 = *a3;
    *(v11 + 32) = *a3;
    v19 = *(a1 + 28);
    v20 = *(a3 + 4);
    *(v11 + 36) = v20;
    v21 = *(a1 + 32);
    v16.i32[0] = vdup_lane_s32(v21, 1).u32[0];
    v16.f32[1] = v19;
    v17.i32[0] = vdup_lane_s32(v20, 1).u32[0];
    v17.f32[1] = v18;
    *(v11 + 48) = vmla_f32(vmul_f32(v20, vneg_f32(v16)), v17, v21);
    *(v11 + 56) = (v19 * v20.f32[0]) - (v21.f32[0] * v18);
    *(v11 + 12) = v8 - a4;
    physx::Ext::joint::ConstraintHelper::addLimit(a1, v11, a2);
    v9 = a2[3];
  }

  v22 = a2[6];
  if (v9 <= 0.0 && a2[2] <= 0.0)
  {
    v23 = a2[4];
  }

  else
  {
    v23 = 0.0;
  }

  if ((v23 - a4) > -v22)
  {
    v24 = *a3;
    v25 = *(a3 + 4);
    v26 = *(a3 + 8);
    v27 = -*a3;
    v28 = *(a1 + 8);
    *(a1 + 8) = v28 + 80;
    *(v28 + 78) = 0;
    *v28 = v27;
    *(v28 + 4) = -v25;
    *(v28 + 8) = -v26;
    v30 = *(a1 + 20);
    v29 = *(a1 + 24);
    v31 = *(a1 + 16);
    *(v28 + 16) = (v25 * v29) + (v30 * -v26);
    *(v28 + 20) = (v26 * v31) + (v29 * v27);
    *(v28 + 24) = (v24 * v30) + (v31 * -v25);
    *(v28 + 32) = v27;
    *(v28 + 36) = -v25;
    *(v28 + 40) = -v26;
    v33 = *(a1 + 32);
    v32 = *(a1 + 36);
    v34 = *(a1 + 28);
    *(v28 + 48) = (v25 * v32) + (v33 * -v26);
    *(v28 + 52) = (v26 * v34) + (v32 * v27);
    *(v28 + 56) = (v24 * v33) + (v34 * -v25);
    *(v28 + 12) = a4 - v22;

    physx::Ext::joint::ConstraintHelper::addLimit(a1, v28, a2);
  }
}

uint64_t physx::Ext::joint::ConstraintHelper::prepareLockedAxes(uint64_t result, float *a2, float *a3, float *a4, int a5, int a6, float *a7, float *a8)
{
  v8 = *(result + 8);
  v9 = *(result + 16);
  v10 = *(result + 20);
  v12 = *(result + 24);
  v11 = *(result + 28);
  v13 = *(result + 32);
  v14 = *(result + 36);
  if (!a5)
  {
    v45 = *(result + 8);
    goto LABEL_16;
  }

  v15 = *a2;
  v16 = a2[1];
  v17 = a2[2];
  v18 = a2[3];
  v19 = v15 + v15;
  v20 = v16 + v16;
  v21 = v15 * (v15 + v15);
  v22 = v16 * (v16 + v16);
  v23 = v17 * (v17 + v17);
  v24 = v19 * v16;
  v25 = v19 * v17;
  v26 = v19 * v18;
  v27 = v20 * v17;
  v28 = v20 * v18;
  v29 = (v17 + v17) * v18;
  v30 = (1.0 - v22) - v23;
  v31 = v24 + v29;
  v32 = v25 - v28;
  v33 = 1.0 - v21;
  v34 = 0.0;
  v35 = 0.0;
  v36 = 0.0;
  if (a5)
  {
    v34 = 0.0 - (v30 * *a4);
    v35 = 0.0 - (v31 * *a4);
    v36 = 0.0 - (v32 * *a4);
  }

  v37 = v24 - v29;
  v38 = v33 - v23;
  v39 = v27 + v26;
  if ((a5 & 2) != 0)
  {
    v40 = a4[1];
    v34 = v34 - (v37 * v40);
    v35 = v35 - (v38 * v40);
    v36 = v36 - (v39 * v40);
  }

  v41 = v25 + v28;
  v42 = v27 - v26;
  v43 = v33 - v22;
  if ((a5 & 4) != 0)
  {
    v44 = a4[2];
    v34 = v34 - (v41 * v44);
    v35 = v35 - (v42 * v44);
    v36 = v36 - (v43 * v44);
  }

  v9 = v9 + v34;
  v10 = v10 + v35;
  v12 = v12 + v36;
  v45 = *(result + 8);
  if ((a5 & 1) == 0)
  {
    if ((a5 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_14:
    v47 = -a4[1];
    *(v45 + 78) = 2048;
    *v45 = v37;
    *(v45 + 4) = v38;
    *(v45 + 16) = (v10 * v39) - (v12 * v38);
    *(v45 + 20) = (v12 * v37) - (v9 * v39);
    *(v45 + 24) = (v9 * v38) - (v10 * v37);
    *(v45 + 32) = v37;
    *(v45 + 36) = v38;
    *(v45 + 40) = v39;
    *(v45 + 48) = (v13 * v39) - (v14 * v38);
    *(v45 + 52) = (v14 * v37) - (v11 * v39);
    *(v45 + 56) = (v11 * v38) - (v13 * v37);
    *(v45 + 8) = v39;
    *(v45 + 12) = v47;
    v45 += 80;
    if ((a5 & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v46 = -*a4;
  v45 = v8 + 80;
  *(v8 + 78) = 2048;
  *v8 = v30;
  *(v8 + 4) = v31;
  *(v8 + 16) = (v10 * v32) - (v12 * v31);
  *(v8 + 20) = (v12 * v30) - (v9 * v32);
  *(v8 + 24) = (v9 * v31) - (v10 * v30);
  *(v8 + 32) = v30;
  *(v8 + 36) = v31;
  *(v8 + 40) = v32;
  *(v8 + 48) = (v13 * v32) - (v14 * v31);
  *(v8 + 52) = (v14 * v30) - (v11 * v32);
  *(v8 + 56) = (v11 * v31) - (v13 * v30);
  *(v8 + 8) = v32;
  *(v8 + 12) = v46;
  if ((a5 & 2) != 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  if ((a5 & 4) != 0)
  {
LABEL_15:
    v48 = -a4[2];
    *(v45 + 78) = 2048;
    *v45 = v41;
    *(v45 + 4) = v42;
    *(v45 + 16) = (v10 * v43) - (v12 * v42);
    *(v45 + 20) = (v12 * v41) - (v9 * v43);
    *(v45 + 24) = (v9 * v42) - (v10 * v41);
    *(v45 + 32) = v41;
    *(v45 + 36) = v42;
    *(v45 + 40) = v43;
    *(v45 + 48) = (v13 * v43) - (v14 * v42);
    *(v45 + 52) = (v14 * v41) - (v11 * v43);
    *(v45 + 56) = (v11 * v42) - (v13 * v41);
    *(v45 + 8) = v43;
    *(v45 + 12) = v48;
    v45 += 80;
  }

LABEL_16:
  if (a6)
  {
    v50 = *a2;
    v49 = a2[1];
    v51 = a2[2];
    v52 = a2[3];
    v54 = a3[2];
    v53 = a3[3];
    v55 = *a3;
    v56 = a3[1];
    v57 = v52 * *a3;
    v58 = *a2 * v53;
    v59 = (v49 * v53) + (v52 * v56);
    v60 = (v51 * v53) + (v52 * v54);
    v61 = ((v49 * v56) + (*a2 * *a3)) + (v51 * v54);
    v62 = (v52 * v53) - v61;
    v63 = (v49 * *a3) + (*a2 * v56);
    v64 = (v51 * *a3) + (*a2 * v54);
    v65 = (v52 * v53) + v61;
    v66 = ((((v49 * v56) + (v49 * v56)) + v62) * 0.5) + 0.00000011921;
    v67 = ((((v51 * v54) + (v51 * v54)) + v62) * 0.5) + 0.00000011921;
    if (v65 != 0.0)
    {
      v67 = (((v51 * v54) + (v51 * v54)) + v62) * 0.5;
      v66 = (((v49 * v56) + (v49 * v56)) + v62) * 0.5;
    }

    if (a6)
    {
      v68 = (((v50 * v55) + (v50 * v55)) + v62) * 0.5;
      if (v65 == 0.0)
      {
        v68 = v68 + 0.00000011921;
      }

      v69 = (v64 - v59) * 0.5;
      v70 = (v60 + v63) * 0.5;
      *(v45 + 78) = 2048;
      *v45 = 0;
      *(v45 + 8) = 0;
      *(v45 + 20) = v70;
      *(v45 + 24) = v69;
      *(v45 + 32) = 0;
      *(v45 + 40) = 0;
      *(v45 + 48) = v68;
      *(v45 + 52) = v70;
      *(v45 + 56) = v69;
      *(v45 + 12) = -((((v53 * -v50) + (v52 * v55)) + (-v49 * v54)) + (v56 * v51));
      *(v45 + 16) = v68;
      *(v45 + 76) |= 0x40u;
      v45 += 80;
    }

    v71 = v57 + v58;
    v72 = (v49 * v54) + (v51 * v56);
    if ((a6 & 2) != 0)
    {
      v73 = (v63 - v60) * 0.5;
      v74 = (v71 + v72) * 0.5;
      *(v45 + 78) = 2048;
      *v45 = 0;
      *(v45 + 8) = 0;
      *(v45 + 20) = v66;
      *(v45 + 24) = v74;
      *(v45 + 32) = 0;
      *(v45 + 40) = 0;
      *(v45 + 48) = v73;
      *(v45 + 52) = v66;
      *(v45 + 56) = v74;
      *(v45 + 12) = -((((v52 * v56) - (v49 * v53)) - (v51 * v55)) + (v54 * v50));
      *(v45 + 16) = v73;
      *(v45 + 76) |= 0x40u;
      v45 += 80;
    }

    if ((a6 & 4) != 0)
    {
      v75 = (((v52 * v54) - (v51 * v53)) - (v50 * v56)) + (v55 * v49);
      v76 = (v64 + v59) * 0.5;
      v77 = (v72 - v71) * 0.5;
      *(v45 + 78) = 2048;
      *v45 = 0;
      *(v45 + 8) = 0;
      *(v45 + 20) = v77;
      *(v45 + 24) = v67;
      *(v45 + 32) = 0;
      *(v45 + 40) = 0;
      *(v45 + 48) = v76;
      *(v45 + 52) = v77;
      *(v45 + 56) = v67;
      *(v45 + 12) = -v75;
      *(v45 + 16) = v76;
      *(v45 + 76) |= 0x40u;
      v45 += 80;
    }
  }

  *a7 = v9;
  a7[1] = v10;
  a7[2] = v12;
  *a8 = v11;
  a8[1] = v13;
  a8[2] = v14;
  while (v8 < v45)
  {
    *(v8 + 76) |= 0x10u;
    v8 += 80;
  }

  *(result + 8) = v45;
  return result;
}

uint64_t physx::Ext::joint::ConstraintHelper::ConstraintHelper(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, float32x2_t *a5, float32x2_t *a6, __int128 *a7, float32x2_t *a8, double a9, double a10, double a11, double a12, double a13, double a14, int8x16_t a15, int8x16_t a16, float32x2_t *a17)
{
  *a1 = a2;
  *(a1 + 8) = a2;
  v22 = *a7;
  *a3 = *a7;
  physx::Ext::joint::computeJointFrames(a4, a5, a7, a8, a17, *&v22, a10, a11, a12, a13, a14, a15, a16);
  v23 = a5[3].f32[0] - a8[3].f32[0];
  *a6 = vsub_f32(a5[2], a8[2]);
  a6[1].f32[0] = v23;
  v24 = a5[3].f32[0] - a8[3].f32[0];
  *(a1 + 16) = vsub_f32(a5[2], a8[2]);
  *(a1 + 24) = v24;
  v25 = a5[3].f32[0] - a17[3].f32[0];
  *(a1 + 28) = vsub_f32(a5[2], a17[2]);
  *(a1 + 36) = v25;
  *(a1 + 40) = *(a4 + 16);
  *(a1 + 48) = *(a4 + 24);
  *(a1 + 52) = a5[2];
  *(a1 + 60) = a5[3].i32[0];
  return a1;
}

float physx::Ext::joint::computeJointFrames(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, int8x16_t a12, int8x16_t _Q7)
{
  _S2 = *(a3 + 32) + *(a3 + 32);
  v15 = *(a3 + 36) + *(a3 + 36);
  _S4 = *(a3 + 40) + *(a3 + 40);
  v17 = *(a4 + 12);
  *a12.i32 = (v17 * v17) + -0.5;
  _Q7.i32[0] = *a4;
  _Q16.i64[0] = *(a4 + 4);
  __asm
  {
    FMLA            S17, S4, V16.S[1]
    FMLA            S19, S2, V16.S[1]
    FMLA            S21, S17, V16.S[1]
  }

  v25 = *(a4 + 20) + (((v17 * _S19) + (v15 * *a12.i32)) + (_Q16.f32[0] * _S17));
  v26 = *(a4 + 24) + _S21;
  v27 = *(a3 + 16);
  v28 = v27;
  v28.i32[3] = _Q16.i32[1];
  v29 = *(a4 + 16) + (((v17 * (vmuls_lane_f32(v15, vnegq_f32(v28), 3) + (_Q16.f32[0] * _S4))) + (_S2 * *a12.i32)) + (*a4 * _S17));
  v30 = vextq_s8(vextq_s8(_Q7, _Q7, 4uLL), _Q16, 0xCuLL);
  v30.f32[3] = -*a4;
  _Q3 = vmlaq_n_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(v27, 3), v27, 4uLL), v30), v27, v17);
  v30.f32[3] = -_Q16.f32[0];
  _Q16.i32[2] = *a4;
  _Q16.i32[3] = *(a3 + 24);
  v32 = vmlsq_f32(vmlaq_f32(vuzp2q_s32(vextq_s8(_Q3, _Q3, 4uLL), _Q3), vextq_s8(vextq_s8(v27, v27, 0xCuLL), v27, 8uLL), v30), _Q16, v28);
  *a1 = vzip2q_s32(vzip1q_s32(v32, vextq_s8(v32, v32, 0xCuLL)), v32);
  *(a1 + 16) = v29;
  *(a1 + 20) = v25;
  *(a1 + 24) = v26;
  *_Q3.i32 = *(a3 + 60) + *(a3 + 60);
  v30.f32[0] = *(a3 + 64) + *(a3 + 64);
  _S5 = *(a3 + 68) + *(a3 + 68);
  v32.i32[0] = *(a5 + 12);
  v34 = *(a5 + 16);
  v35 = (*v32.i32 * *v32.i32) + -0.5;
  a12.i32[0] = *a5;
  _Q7.i64[0] = *(a5 + 4);
  __asm
  {
    FMLA            S16, S5, V7.S[1]
    FMLA            S18, S3, V7.S[1]
    FMLA            S20, S16, V7.S[1]
  }

  v39 = *(a5 + 20) + (((*v32.i32 * _S18) + (v30.f32[0] * v35)) + (*_Q7.i32 * _S16));
  v40 = *(a3 + 44);
  v41 = v40;
  v41.i32[3] = _Q7.i32[1];
  v42 = *(a5 + 24) + _S20;
  v43 = ((*v32.i32 * (vmuls_lane_f32(v30.f32[0], vnegq_f32(v41), 3) + (*_Q7.i32 * _S5))) + (*_Q3.i32 * v35)) + (*a5 * _S16);
  v44 = vextq_s8(vextq_s8(a12, a12, 4uLL), _Q7, 0xCuLL);
  v44.f32[3] = -*a5;
  v45 = vmlaq_n_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(v40, 3), v40, 4uLL), v44), v40, *v32.i32);
  v44.f32[3] = -*_Q7.i32;
  _Q7.i32[2] = *a5;
  _Q7.i32[3] = *(a3 + 52);
  v46 = vmlsq_f32(vmlaq_f32(vuzp2q_s32(vextq_s8(v45, v45, 4uLL), v45), vextq_s8(vextq_s8(v40, v40, 0xCuLL), v40, 8uLL), v44), _Q7, v41);
  *a2 = vzip2q_s32(vzip1q_s32(v46, vextq_s8(v46, v46, 0xCuLL)), v46);
  result = v34 + v43;
  *(a2 + 16) = result;
  *(a2 + 20) = v39;
  *(a2 + 24) = v42;
  return result;
}

BOOL physx::Cm::ConeLimitHelperTanLess::getLimit(float32x2_t *a1, float *a2, float *a3, float *a4)
{
  v7 = a2[2];
  v8 = a2[3];
  v10 = *a2;
  v9 = a2[1];
  v67 = atan2f(v9, v8 + 1.0);
  v11 = __PAIR64__(COERCE_UNSIGNED_INT(atan2f(v7, v8 + 1.0)), LODWORD(v67));
  v12 = &a1[1];
  __asm { FMOV            V0.2S, #4.0 }

  v18 = vmul_f32(v11, _D0);
  v19 = vabs_f32(v18);
  v20 = vld1_dup_f32(v12);
  v21 = *a1;
  v22 = vdiv_f32(vadd_f32(v19, v20), *a1);
  v23 = vaddv_f32(vmul_f32(v22, v22));
  if (v23 > 1.0)
  {
    v24 = v10 + v10;
    v25 = ((v8 * (v8 + v8)) + -1.0) + (v10 * (v10 + v10));
    v26 = ((v10 + v10) * v9) + (v7 * (v8 + v8));
    v66 = (v24 * v7) - (v9 * (v8 + v8));
    v68 = v25;
    if (v21.f32[0] >= v21.f32[1])
    {
      if (v19.f32[1] < 0.000001)
      {
        if (v18.f32[0] <= 0.0)
        {
          v28.f32[0] = -v21.f32[0];
        }

        else
        {
          v28.i32[0] = *a1;
        }

        v27 = 0.0;
        goto LABEL_20;
      }
    }

    else if (v19.f32[0] < 0.000001)
    {
      if (v18.f32[1] <= 0.0)
      {
        v27 = -v21.f32[1];
      }

      else
      {
        LODWORD(v27) = HIDWORD(*a1);
      }

      v28.i32[0] = 0;
LABEL_20:
      v42 = v28.f32[0] / vmul_f32(v21, v21).f32[0];
      v43 = v27 / (v21.f32[1] * v21.f32[1]);
      v44 = tanf(v28.f32[0] * 0.25);
      v45 = tanf(v27 * 0.25);
      v46 = (v44 * v44) + (v45 * v45);
      v47 = 1.0 - v46;
      v48 = 1.0 / (v46 + 1.0);
      v49 = (v47 + v47) * (v48 * v48);
      v50 = v45 + v45;
      v51 = (v45 + v45) * v49;
      v52 = (v44 * -2.0) * v49;
      v53 = ((1.0 - v46) * v49) + -1.0;
      v54 = ((v42 * v44) + 0.0) + (v45 * v43);
      v55 = v48 * (((3.0 - v46) * (v54 * -4.0)) * (v48 * v48));
      v56 = (v47 * v55) - ((v54 + v54) * v49);
      v57 = ((v43 + v43) * v49) + (v50 * v55);
      v58 = ((v44 * -2.0) * v55) - ((v42 + v42) * v49);
      v59 = (v52 * v56) - (v53 * v58);
      v60 = (v53 * v57) - (v51 * v56);
      v61 = 1.0 / sqrtf(((v57 * v57) + (v56 * v56)) + (v58 * v58));
      v62 = ((v51 * v58) - (v52 * v57)) * v61;
      v63 = v59 * v61;
      v64 = v60 * v61;
      *a3 = v62;
      a3[1] = v63;
      a3[2] = v64;
      *a4 = ((v26 * ((v52 * v62) - (v53 * v64))) + (((v51 * v64) - (v52 * v63)) * v68)) + (((v53 * v63) - (v51 * v62)) * v66);
      return v23 > 1.0;
    }

    v29 = vmul_f32(v21, v21);
    v30 = vmul_f32(v19, v21);
    v31 = vsub_f32(v30, v29);
    if (*v31.i32 <= *&v31.i32[1])
    {
      v31.i32[0] = v31.i32[1];
    }

    v32 = 20;
    __asm { FMOV            V6.2S, #1.0 }

    while (1)
    {
      _D18 = vdiv_f32(_D6, vadd_f32(v29, vdup_lane_s32(v31, 0)));
      v35 = vmul_f32(v30, _D18);
      v36 = vmul_f32(v35, v35);
      v37 = vaddv_f32(v36) + -1.0;
      if (v37 < 0.0001)
      {
        break;
      }

      _S21 = v36.i32[1];
      __asm { FMLA            S20, S21, V18.S[1] }

      *v31.i32 = *v31.i32 + (v37 / (_S20 + _S20));
      if (!--v32)
      {
        v40 = vmul_f32(vmul_f32(v18, v29), _D18);
        v28 = vdiv_f32(v40, v21);
        v41 = 1.0 / sqrtf(vaddv_f32(vmul_f32(v28, v28)));
        v28.f32[0] = v41 * v40.f32[0];
        v27 = vmuls_lane_f32(v41, v40, 1);
        goto LABEL_20;
      }
    }

    v28 = vmul_f32(vmul_f32(v18, v29), _D18);
    v27 = v28.f32[1];
    goto LABEL_20;
  }

  return v23 > 1.0;
}

void physx::Ext::joint::ConstraintHelper::addLimit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 76);
  v4 = *(a3 + 8);
  if (*(a3 + 12) > 0.0 || v4 > 0.0)
  {
    v6 = v3 | 0x11;
    *(a2 + 64) = v4;
    *(a2 + 68) = *(a3 + 12);
  }

  else
  {
    *(a2 + 78) = 2049;
    *(a2 + 64) = *a3;
    *(a2 + 68) = *(a3 + 4);
    if (*(a2 + 12) <= 0.0)
    {
      v5 = 16;
    }

    else
    {
      v5 = 24;
    }

    v6 = v5 | v3;
    if (*a3 > 0.0)
    {
      v6 |= 4u;
    }
  }

  *(a2 + 76) = v6;
  *(a2 + 44) = 0;
}

uint64_t visualizeLine(uint64_t a1, float32x2_t *a2, float32x2_t *a3, float *a4, float a5)
{
  if (a4[3] <= 0.0 && a4[2] <= 0.0)
  {
    v7 = a4[4];
  }

  else
  {
    v7 = 0.0;
  }

  v21 = v5;
  v22 = v6;
  v9 = a4[5];
  v8 = a4[6];
  v10 = (v9 - v7) >= a5 && (v7 + v8) <= a5;
  v11 = a3[1].f32[0];
  v12 = a2[1].f32[0];
  v13 = *a3;
  v14 = *a2;
  v19 = vadd_f32(vmul_n_f32(*a3, v8), *a2);
  v20 = (v8 * v11) + v12;
  v17 = vadd_f32(vmul_n_f32(v13, v9), v14);
  v18 = (v9 * v11) + v12;
  if (v10)
  {
    v15 = 0xFFFFFFLL;
  }

  else
  {
    v15 = 16711680;
  }

  return (*(*a1 + 56))(a1, &v19, &v17, v15);
}

uint64_t visualizeQuad(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6, float a7, float a8)
{
  if (a4[3] <= 0.0 && a4[2] <= 0.0)
  {
    v9 = a4[4];
  }

  else
  {
    v9 = 0.0;
  }

  v10 = a4[5];
  v11 = a4[6];
  if (a6[3] <= 0.0 && a6[2] <= 0.0)
  {
    v12 = a6[4];
  }

  else
  {
    v12 = 0.0;
  }

  v13 = v9 + v11;
  v14 = v10 - v9;
  v15 = a6[5];
  v16 = a6[6];
  if ((v15 - v12) >= a8 && v14 >= a7 && (v12 + v16) <= a8 && v13 <= a7)
  {
    v20 = 0xFFFFFFLL;
  }

  else
  {
    v20 = 16711680;
  }

  v21 = a3[1];
  v22 = v11 * *a3;
  v23 = v11 * v21;
  v24 = a3[2];
  v25 = v11 * v24;
  v26 = v10 * *a3;
  v27 = v10 * v21;
  v28 = v10 * v24;
  v29 = a5[1];
  v30 = v16 * *a5;
  v31 = v16 * v29;
  v32 = a5[2];
  v33 = v16 * v32;
  v34 = v15 * *a5;
  v35 = v15 * v29;
  v36 = v15 * v32;
  v37 = *a2;
  v38 = a2[1];
  v39 = v22 + *a2;
  v40 = v23 + v38;
  v41 = a2[2];
  v42 = v25 + v41;
  v50[0] = v30 + v39;
  v50[1] = v31 + v40;
  v50[2] = v33 + v42;
  v43 = v26 + v37;
  v44 = v27 + v38;
  v45 = v28 + v41;
  v49[0] = v30 + v43;
  v49[1] = v31 + v44;
  v49[2] = v33 + v45;
  v48[0] = v34 + v43;
  v48[1] = v35 + v44;
  v48[2] = v36 + v45;
  v47[0] = v34 + v39;
  v47[1] = v35 + v40;
  v47[2] = v36 + v42;
  (*(*a1 + 56))(a1, v50, v49, v20);
  (*(*a1 + 56))(a1, v49, v48, v20);
  (*(*a1 + 56))(a1, v48, v47, v20);
  return (*(*a1 + 56))(a1, v47, v50, v20);
}

uint64_t drawPyramid(uint64_t a1, float *a2, float32x2_t *a3, float *a4, int a5, char a6)
{
  if (a5)
  {
    v11 = atan2f(a4[1], a4[3] + 1.0) * 4.0;
    if (a2[70] <= 0.0 && a2[69] <= 0.0)
    {
      v12 = a2[71];
    }

    else
    {
      v12 = 0.0;
    }

    v13 = (a2[72] + v12) > v11;
    if ((a2[73] - v12) < v11)
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (a6)
  {
    v14 = atan2f(a4[2], a4[3] + 1.0) * 4.0;
    v15 = a2[74];
    v16 = a2[75];
    if (a2[70] <= 0.0 && a2[69] <= 0.0)
    {
      v17 = a2[71];
    }

    else
    {
      v17 = 0.0;
    }

    v18 = (v15 + v17) > v14;
    if ((v16 - v17) < v14)
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
    v15 = a2[74];
    v16 = a2[75];
  }

  if (v13 || v18)
  {
    v19 = 4294901760;
  }

  else
  {
    v19 = 4286611584;
  }

  drawPyramid(physx::PxConstraintVisualizer &,physx::Ext::D6JointData const&,physx::PxTransform const&,physx::PxQuat const&,BOOL,BOOL)::Local::drawArc(a1, a3, v19, a2[72], a2[72], v15, v16);
  drawPyramid(physx::PxConstraintVisualizer &,physx::Ext::D6JointData const&,physx::PxTransform const&,physx::PxQuat const&,BOOL,BOOL)::Local::drawArc(a1, a3, v19, a2[73], a2[73], a2[74], a2[75]);
  drawPyramid(physx::PxConstraintVisualizer &,physx::Ext::D6JointData const&,physx::PxTransform const&,physx::PxQuat const&,BOOL,BOOL)::Local::drawArc(a1, a3, v19, a2[72], a2[73], a2[74], a2[74]);
  v20 = a2[72];
  v21 = a2[73];
  v22 = a2[75];

  return drawPyramid(physx::PxConstraintVisualizer &,physx::Ext::D6JointData const&,physx::PxTransform const&,physx::PxQuat const&,BOOL,BOOL)::Local::drawArc(a1, a3, v19, v20, v21, v22, v22);
}

uint64_t visualizeAngularLimit(uint64_t a1, uint64_t a2, float a3, float a4, float a5, float a6)
{
  v9 = fabsf(atan2f(a4, a5 + 1.0) * 4.0) > (a6 - a3);
  v11 = *(*a1 + 32);
  v12.n128_f32[0] = a6;

  v10.n128_f32[0] = -a6;
  return v11(a1, a2, v9, v10, v12);
}

uint64_t visualizeDoubleCone(uint64_t a1, float *a2, uint64_t a3, float a4, float a5)
{
  if (a2[63] <= 0.0 && a2[62] <= 0.0)
  {
    v8 = a2[64];
  }

  else
  {
    v8 = 0.0;
  }

  if (a4 < -1.0)
  {
    a4 = -1.0;
  }

  if (a4 > 1.0)
  {
    a4 = 1.0;
  }

  v9.n128_f32[0] = asinf(a4);
  v10 = (v8 - a5) > v9.n128_f32[0] || (a5 - v8) < v9.n128_f32[0];
  v11 = *(*a1 + 48);
  v9.n128_f32[0] = a5;

  return v11(a1, a3, v10, v9);
}

uint64_t drawPyramid(physx::PxConstraintVisualizer &,physx::Ext::D6JointData const&,physx::PxTransform const&,physx::PxQuat const&,BOOL,BOOL)::Local::drawArc(uint64_t a1, float32x2_t *a2, uint64_t a3, float a4, float a5, float a6, float a7)
{
  v14 = 0;
  v36 = 0;
  v37 = 0;
  do
  {
    v15 = v14 / 7.0;
    v16 = ((1.0 - v15) * a4) + (v15 * a5);
    v17 = __sincosf_stret(((1.0 - v15) * a6) + (v15 * a7));
    v18 = __sincosf_stret(v16);
    *v19.i32 = v18.__cosval * 0.0;
    *v20.i32 = v18.__sinval * -0.0;
    v21 = (((v18.__cosval * 0.0) + 0.0) - v18.__sinval) + ((v18.__cosval + ((v18.__sinval * 0.0) + 0.0)) * 0.0);
    v22 = v21 + v21;
    v23.i32[0] = a2[1].i32[0];
    v24 = a2[1].f32[1];
    v25 = (v24 * v24) + -0.5;
    v26 = vmul_f32(__PAIR64__(LODWORD(v17.__sinval), LODWORD(v17.__cosval)), COERCE_FLOAT32X2_T(-0.0));
    v27 = vrev64_s32(v26);
    v28 = vadd_f32(vdup_lane_s32(v20, 0), vadd_f32(vmul_n_f32(__PAIR64__(LODWORD(v17.__sinval), LODWORD(v17.__cosval)), v18.__cosval), v27));
    *v20.i32 = *v26.i32 - v17.__sinval;
    *&v20.i32[1] = v17.__cosval + (v17.__sinval * 0.0);
    v29 = vadd_f32(vmul_f32(vadd_f32(vdup_lane_s32(v19, 0), vadd_f32(vmul_n_f32(__PAIR64__(LODWORD(v17.__sinval), LODWORD(v17.__cosval)), v18.__sinval), v27)), 0), vadd_f32(v28, vmul_f32(vadd_f32(v20, 0), 0)));
    v30 = vadd_f32(v29, v29);
    v19.i32[0] = HIDWORD(*a2);
    v31 = (vmuls_lane_f32(*v19.i32, v30, 1) + (COERCE_FLOAT(*a2) * v30.f32[0])) + (*v23.i32 * v22);
    v27.i32[0] = vdup_lane_s32(v30, 1).u32[0];
    v27.f32[1] = v22;
    v32 = vadd_f32(a2[2], vmla_n_f32(vmla_n_f32(vmul_n_f32(vmla_f32(vmul_f32(v27, vneg_f32(vzip1_s32(v23, *a2))), vext_s8(v27, v30, 4uLL), *(a2 + 4)), v24), v30, v25), *a2, v31));
    v30.f32[0] = a2[3].f32[0] + (((v24 * ((-*v19.i32 * v30.f32[0]) + (COERCE_FLOAT(*a2) * v30.f32[1]))) + (v22 * v25)) + (*v23.i32 * v31));
    v34 = v32;
    v35 = v30.i32[0];
    result = (*(*a1 + 56))(a1, a2 + 2, &v34, a3);
    if (v14)
    {
      result = (*(*a1 + 56))(a1, &v36, &v34, a3);
    }

    v36 = v34;
    v37 = v35;
    ++v14;
  }

  while (v14 != 8);
  return result;
}

uint64_t physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::~Joint(uint64_t a1)
{
  *a1 = &unk_1F5D280D0;
  *(a1 + 24) = &unk_1F5D282E8;
  if (*(a1 + 10))
  {
    if (*(a1 + 104))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }

    *(a1 + 104) = 0;
  }

  return a1;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::PxShape *>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxShape *>::getName() [T = physx::PxShape *]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

float physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(float *a1, uint64_t a2)
{
  if (a2)
  {
    if ((*(*a2 + 48))(a2) == 1 || (*(*a2 + 48))(a2) == 2)
    {
      v4 = *(*a2 + 224);

      v4(a2);
    }

    else
    {
      (*(*a2 + 152))(&v15, a2);
      v7 = v16;
      v6 = v17;
      v8 = (v6 * v6) + -0.5;
      v9 = (((v19 * -2.0) * *(&v15 + 1)) + (*&v15 * (v18 * -2.0))) + (v16 * (v20 * -2.0));
      v10 = -v16;
      v11 = (((v18 * -2.0) * v8) - (((*(&v15 + 1) * (v20 * -2.0)) - (v16 * (v19 * -2.0))) * v17)) + (*&v15 * v9);
      v12 = (((v19 * -2.0) * v8) - (((v16 * (v18 * -2.0)) - (*&v15 * (v20 * -2.0))) * v17)) + (*(&v15 + 1) * v9);
      v13 = -*(&v15 + 1);
      v14 = ((v20 * -2.0) * v8) - (((*&v15 * (v19 * -2.0)) - (*(&v15 + 1) * (v18 * -2.0))) * v17);
      *a1 = -*&v15;
      a1[1] = v13;
      a1[2] = v10;
      a1[3] = v6;
      result = v14 + (v7 * v9);
      a1[4] = v11;
      a1[5] = v12;
      a1[6] = result;
    }
  }

  else
  {
    result = 0.0;
    *a1 = xmmword_1E30474D0;
    *(a1 + 2) = 0;
    a1[6] = 0.0;
  }

  return result;
}

float physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getActorVelocity(_WORD *a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a1[4] != 6)
  {
    (*(*a1 + 312))(&v7, a1);
    *a2 = v7;
    *(a2 + 8) = v8;
    (*(*a1 + 328))(&v7, a1);
    *a3 = v7;
    result = v8;
    *(a3 + 8) = v8;
  }

  else
  {
    result = 0.0;
    *a3 = 0;
    *(a3 + 8) = 0;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

void physx::PxDefaultMemoryOutputStream::~PxDefaultMemoryOutputStream(physx::PxDefaultMemoryOutputStream *this)
{
  *this = &unk_1F5D28378;
  if (*(this + 2))
  {
    (*(**(this + 1) + 24))(*(this + 1));
  }
}

{
  *this = &unk_1F5D28378;
  if (*(this + 2))
  {
    (*(**(this + 1) + 24))(*(this + 1));
  }

  JUMPOUT(0x1E6906520);
}

uint64_t physx::PxDefaultMemoryOutputStream::write(physx::PxDefaultMemoryOutputStream *this, const void *a2, uint64_t a3)
{
  v6 = *(this + 6);
  if ((v6 + a3) <= *(this + 7))
  {
    v11 = *(this + 2);
  }

  else
  {
    v7 = (v6 + a3) | ((v6 + a3) >> 1) | (((v6 + a3) | ((v6 + a3) >> 1)) >> 2);
    v8 = v7 | (v7 >> 4) | ((v7 | (v7 >> 4)) >> 8);
    v9 = v8 | HIWORD(v8);
    if ((v9 + 1) > 0x1000)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 4096;
    }

    *(this + 7) = v10;
    v11 = (*(**(this + 1) + 16))(*(this + 1));
    memcpy(v11, *(this + 2), *(this + 6));
    if (*(this + 2))
    {
      (*(**(this + 1) + 24))(*(this + 1));
    }

    *(this + 2) = v11;
    v6 = *(this + 6);
  }

  memcpy(&v11[v6], a2, a3);
  *(this + 6) += a3;
  return a3;
}

size_t physx::PxDefaultMemoryInputData::read(physx::PxDefaultMemoryInputData *this, void *__dst, unsigned int a3)
{
  v4 = *(this + 6);
  v5 = *(this + 2) - v4;
  if (a3 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = a3;
  }

  memcpy(__dst, (*(this + 2) + v4), v6);
  *(this + 6) += v6;
  return v6;
}

uint64_t physx::PxDefaultMemoryInputData::seek(uint64_t this, unsigned int a2)
{
  v2 = *(this + 8);
  if (v2 >= a2)
  {
    v2 = a2;
  }

  *(this + 24) = v2;
  return this;
}

void *physx::PxDistanceJointCreate(uint64_t a1, uint64_t a2, float32x4_t *a3, uint64_t a4, float32x4_t *a5)
{
  v10 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v11 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Ext::DistanceJoint>::getName() [T = physx::Ext::DistanceJoint]";
  }

  else
  {
    v11 = "<allocation names disabled>";
  }

  v12 = (*(*(v10 + 24) + 16))(v10 + 24, 112, v11, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxextensions/src/ExtDistanceJoint.cpp", 45);
  v13 = (*(*a1 + 40))(a1);
  v14 = physx::Ext::DistanceJoint::DistanceJoint(v12, v13, a2, a3, a4, a5);
  v15 = (*(*a1 + 216))(a1, a2, a4, v12 + 3, &physx::Ext::DistanceJoint::sShaders, 112, v14);
  v12[12] = v15;
  if (!v15)
  {
    (*(*v12 + 32))(v12);
    return 0;
  }

  return v12;
}

uint64_t physx::Ext::DistanceJoint::setMinDistance(physx::Ext::DistanceJoint *this, float a2)
{
  v2 = this + 96;
  v3 = *(this + 12);
  *(*(v2 + 1) + 80) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::DistanceJoint::setMaxDistance(physx::Ext::DistanceJoint *this, float a2)
{
  v2 = this + 96;
  v3 = *(this + 12);
  *(*(v2 + 1) + 84) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::DistanceJoint::setTolerance(physx::Ext::DistanceJoint *this, float a2)
{
  v2 = this + 96;
  v3 = *(this + 12);
  *(*(v2 + 1) + 88) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::DistanceJoint::setStiffness(physx::Ext::DistanceJoint *this, float a2)
{
  v2 = this + 96;
  v3 = *(this + 12);
  *(*(v2 + 1) + 92) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::DistanceJoint::setDamping(physx::Ext::DistanceJoint *this, float a2)
{
  v2 = this + 96;
  v3 = *(this + 12);
  *(*(v2 + 1) + 96) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::DistanceJoint::setDistanceJointFlags(uint64_t a1, _WORD *a2)
{
  v3 = a1 + 96;
  v2 = *(a1 + 96);
  *(*(v3 + 8) + 100) = *a2;
  return (*(*v2 + 72))();
}

uint64_t physx::Ext::DistanceJoint::setDistanceJointFlag(uint64_t a1, __int16 a2, int a3)
{
  v3 = *(a1 + 104);
  if (a3)
  {
    v4 = *(v3 + 100) | a2;
  }

  else
  {
    v4 = *(v3 + 100) & ~a2;
  }

  *(v3 + 100) = v4;
  return (*(**(a1 + 96) + 72))();
}

uint64_t physx::Ext::DistanceJoint::exportExtraData(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 104))
  {
    (*(*a2 + 24))(a2, 16);
    (*(*a2 + 16))(a2, *(a1 + 104), 112);
  }

  v4 = *(a1 + 32);
  v5 = *(*a2 + 32);

  return v5(a2, v4);
}

uint64_t DistanceJointSolverPrep(uint64_t a1, float32x2_t *a2, double a3, double a4, double a5, double a6, double a7, double a8, int8x16_t a9, int8x16_t a10, uint64_t a11, __int128 *a12, uint64_t a13, float32x2_t *a14, float32x2_t *a15, uint64_t a16, float *a17, float *a18)
{
  physx::Ext::joint::ConstraintHelper::ConstraintHelper(v45, a1, a12, v56, v52, a2, a13, a14, a3, a4, a5, a6, a7, a8, a9, a10, a15);
  v20 = v53;
  v21 = v54;
  *a17 = v53;
  a17[1] = v21;
  v22 = v55;
  a17[2] = v55;
  v23 = v58;
  v24 = v57 - v20;
  *a18 = v20;
  a18[1] = v21;
  a18[2] = v22;
  v25 = v23 - v21;
  v26 = v59 - v22;
  v27 = sqrtf(((v25 * v25) + (v24 * v24)) + (v26 * v26));
  if (v27 > 0.0)
  {
    v24 = v24 * (1.0 / v27);
    v25 = v25 * (1.0 / v27);
    v26 = v26 * (1.0 / v27);
  }

  v28 = *(a13 + 100);
  if (v27 < 0.00000011921)
  {
    v24 = 1.0;
    v25 = 0.0;
    v26 = 0.0;
  }

  v29 = v49;
  v30 = (v47 * v26) - (v48 * v25);
  v31 = (v48 * v24) - (v46 * v26);
  v32 = (v46 * v25) - (v47 * v24);
  v33 = (v50 * v26) - (v51 * v25);
  v34 = (v51 * v24) - (v49 * v26);
  v35 = -(v50 * v24);
  *(a1 + 76) = 16;
  *a1 = v24;
  *(a1 + 4) = v25;
  *(a1 + 8) = v26;
  v36 = v35 + (v29 * v25);
  *(a1 + 16) = v30;
  *(a1 + 20) = v31;
  *(a1 + 24) = v32;
  *(a1 + 32) = v24;
  *(a1 + 36) = v25;
  *(a1 + 40) = v26;
  *(a1 + 48) = v33;
  *(a1 + 52) = v34;
  *(a1 + 56) = v36;
  if ((v28 & 8) != 0)
  {
    *(a1 + 76) = 17;
    *(a1 + 64) = *(a13 + 92);
    *(a1 + 68) = *(a13 + 96);
    v37 = 25;
  }

  else
  {
    v37 = 24;
  }

  v39 = *(a13 + 80);
  v38 = *(a13 + 84);
  if (v39 == v38 && (v28 & 6) == 6)
  {
    v40 = v27 - v38;
    v41 = *(a13 + 88);
    if (v40 <= v41)
    {
      v42 = 0.0;
      if (v40 < -v41)
      {
        v42 = v40 + v41;
      }
    }

    else
    {
      v42 = v40 - v41;
    }

    *(a1 + 12) = v42;
    return 1;
  }

  if ((v28 & 2) == 0)
  {
    if ((v28 & 4) != 0)
    {
      if (v27 >= v39)
      {
        result = 0;
        *(a1 + 12) = v27 - v39;
        *(a1 + 44) = 0;
        *(a1 + 60) = 2139095039;
LABEL_24:
        *(a1 + 76) = v37;
        return result;
      }

LABEL_26:
      *(a1 + 12) = (v27 - v39) + *(a13 + 88);
      *(a1 + 44) = 0;
    }

    return 1;
  }

  if (v27 > v38)
  {
    *(a1 + 12) = (v27 - v38) - *(a13 + 88);
    *(a1 + 60) = 0;
    return 1;
  }

  if ((v28 & 4) == 0)
  {
    result = 0;
    *(a1 + 12) = v27 - v38;
    *(a1 + 44) = -8388609;
    *(a1 + 60) = 0;
    goto LABEL_24;
  }

  if (v27 < v39)
  {
    goto LABEL_26;
  }

  *(a1 + 12) = v27 - v39;
  *(a1 + 44) = 0;
  *(a1 + 60) = 2139095039;
  *(a1 + 76) = v37;
  *(a1 + 80) = v24;
  *(a1 + 84) = v25;
  *(a1 + 88) = v26;
  *(a1 + 96) = v30;
  *(a1 + 100) = v31;
  *(a1 + 104) = v32;
  *(a1 + 112) = v24;
  *(a1 + 116) = v25;
  *(a1 + 120) = v26;
  *(a1 + 128) = v33;
  *(a1 + 132) = v34;
  *(a1 + 136) = v36;
  if ((*(a13 + 100) & 8) != 0)
  {
    *(a1 + 144) = *(a13 + 92);
    *(a1 + 148) = *(a13 + 96);
    v38 = *(a13 + 84);
    v44 = 25;
  }

  else
  {
    v44 = 24;
  }

  *(a1 + 92) = v27 - v38;
  *(a1 + 124) = -8388609;
  *(a1 + 140) = 0;
  *(a1 + 156) = v44;
  return 2;
}

void DistanceJointVisualize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, double a6, double a7, double a8, double a9, double a10, double a11, int8x16_t a12, int8x16_t a13)
{
  v16 = physx::Ext::joint::computeJointFrames(v24, v20, a2, a3, a4, a6, a7, a8, a9, a10, a11, a12, a13);
  if (a5)
  {
    (*(*a1 + 16))(a1, v24, v20, v16);
  }

  if ((a5 & 2) != 0)
  {
    v17 = *(a2 + 100);
    if ((v17 & 6) != 0)
    {
      v18 = sqrtf((((v22 - v26) * (v22 - v26)) + ((v21 - v25) * (v21 - v25))) + ((v23 - v27) * (v23 - v27)));
      if ((v17 & 2) != 0 && v18 > *(a2 + 84))
      {
        v19 = 16711680;
      }

      else
      {
        v19 = 65280;
      }

      if ((v17 & 4) != 0 && v18 < *(a2 + 80))
      {
        v19 = 255;
      }

      (*(*a1 + 56))(a1, &v25, &v21, v19);
    }
  }
}

void *physx::PxFixedJointCreate(uint64_t a1, uint64_t a2, float32x4_t *a3, uint64_t a4, float32x4_t *a5)
{
  v10 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v11 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Ext::FixedJoint>::getName() [T = physx::Ext::FixedJoint]";
  }

  else
  {
    v11 = "<allocation names disabled>";
  }

  v12 = (*(*(v10 + 24) + 16))(v10 + 24, 112, v11, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxextensions/src/ExtFixedJoint.cpp", 45);
  (*(*a1 + 40))(a1);
  v15 = 3;
  physx::Ext::Joint<physx::PxFixedJoint,physx::PxFixedJointGeneratedValues>::Joint(v12, 259, &v15, a2, a3, a4, a5, 0x60u);
  *v12 = &unk_1F5D286F8;
  v12[3] = &unk_1F5D28878;
  *(v12[13] + 80) = 0x40490FDB501502F9;
  v13 = (*(*a1 + 216))(a1, a2, a4);
  v12[12] = v13;
  if (!v13)
  {
    (*(*v12 + 32))(v12);
    return 0;
  }

  return v12;
}

uint64_t physx::Ext::FixedJoint::setProjectionLinearTolerance(physx::Ext::FixedJoint *this, float a2)
{
  v2 = this + 96;
  v3 = *(this + 12);
  *(*(v2 + 1) + 80) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::FixedJoint::setProjectionAngularTolerance(physx::Ext::FixedJoint *this, float a2)
{
  v2 = this + 96;
  v3 = *(this + 12);
  *(*(v2 + 1) + 84) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::FixedJoint::exportExtraData(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 104))
  {
    (*(*a2 + 24))(a2, 16);
    (*(*a2 + 16))(a2, *(a1 + 104), 96);
  }

  v4 = *(a1 + 32);
  v5 = *(*a2 + 32);

  return v5(a2, v4);
}

uint64_t FixedJointSolverPrep(uint64_t a1, float32x2_t *a2, double a3, double a4, double a5, double a6, double a7, double a8, int8x16_t a9, int8x16_t a10, uint64_t a11, __int128 *a12, __int128 *a13, float32x2_t *a14, float32x2_t *a15, uint64_t a16, float32x2_t *a17, float32x2_t *a18)
{
  physx::Ext::joint::ConstraintHelper::ConstraintHelper(v47, a1, a12, &v51, &v48, a2, a13, a14, a3, a4, a5, a6, a7, a8, a9, a10, a15);
  _S0 = v51.i32[0];
  *_D1.i32 = v52;
  _S2 = v53;
  _V4.D[1] = v48.i64[1];
  __asm
  {
    FMLA            S5, S1, V4.S[2]
    FMLA            S5, S2, V4.S[3]
  }

  if (_S5 < 0.0)
  {
    v48 = vnegq_f32(v48);
  }

  v30 = (v50 - v55) + (v50 - v55);
  v31 = (v53 * v53) + -0.5;
  v32 = vsub_f32(v49, v54);
  _D16 = vadd_f32(v32, v32);
  v34 = (vmuls_lane_f32(*&v51.i32[1], _D16, 1) + (*v51.i32 * _D16.f32[0])) + (v52 * v30);
  v35.i32[0] = vdup_lane_s32(_D16, 1).u32[0];
  v35.f32[1] = v30;
  v36 = vdup_lane_s32(_D1, 0);
  v36.i32[0] = v51.i32[1];
  __asm { FMLA            S7, S0, V16.S[1] }

  v41 = vmla_n_f32(vmla_n_f32(vmul_n_f32(vneg_f32(vmla_f32(vmul_f32(v35, vneg_f32(vzip1_s32(_D1, v51))), vext_s8(v35, _D16, 4uLL), v36)), v53), _D16, v31), v51, v34);
  v42 = ((v30 * v31) - (_S7 * v53)) + (v52 * v34);
  physx::Ext::joint::ConstraintHelper::prepareLockedAxes(v47, &v51, v48.f32, &v41, 7, 7, &v45, &v43);
  v38 = v46 + a14[3].f32[0];
  *a17 = vadd_f32(v45, a14[2]);
  a17[1].f32[0] = v38;
  v39 = v44 + a15[3].f32[0];
  *a18 = vadd_f32(v43, a15[2]);
  a18[1].f32[0] = v39;
  return -858993459 * ((v47[1] - v47[0]) >> 4);
}

void FixedJointProject(float *a1, float *a2, float *a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, int8x16_t a11, int8x16_t a12)
{
  physx::Ext::joint::computeDerived(a1, a2, a3, &v132, &v125, &v119, 1, a5, a6, a7, a8, a9, a10, a11, a12);
  v16 = a1[20];
  v18 = v122;
  v17 = v123;
  v19 = v124;
  v20 = ((v17 * v17) + (v18 * v18)) + (v19 * v19);
  v21 = v16 * v16;
  if (v20 > (v16 * v16))
  {
    v22 = 1.0 / sqrtf(v20);
    v18 = v16 * (v122 * v22);
    v17 = v16 * (v123 * v22);
    v19 = v16 * (v124 * v22);
  }

  v24 = __sincosf_stret(a1[21] * 0.5);
  if (v24.__sinval > 0.9999)
  {
    v25 = v119;
    _D2 = v120;
    v23.f32[0] = v121;
    goto LABEL_9;
  }

  v23.f32[0] = v121;
  _D2 = v120;
  _D5 = vbsl_s8(vdup_lane_s32(vmvn_s8(vcge_f32(v23, 0)), 0), vneg_f32(v120), v120);
  v25 = v119;
  v28 = -v119;
  if (v121 >= 0.0)
  {
    v28 = v119;
  }

  _S16 = _D5.i32[1];
  __asm { FMLA            S7, S16, V5.S[1] }

  if (_S7 <= (v24.__sinval * v24.__sinval))
  {
LABEL_9:
    if (v20 <= v21)
    {
      return;
    }

    goto LABEL_10;
  }

  v35 = 1.0 / sqrtf(_S7);
  v25 = (v24.__sinval * v28) * v35;
  _D2 = vmul_n_f32(vmul_n_f32(_D5, v24.__sinval), v35);
  v23.i32[0] = LODWORD(v24.__cosval);
LABEL_10:
  if (a4)
  {
    v36 = a1[15] * -2.0;
    v37 = a1[16] * -2.0;
    v38 = a1[17] * -2.0;
    _S5 = a1[13];
    v39 = a1[14];
    v41 = (v39 * v39) + -0.5;
    _S7 = a1[11];
    _S6 = a1[12];
    v44 = ((v37 * _S6) + (_S7 * v36)) + (_S5 * v38);
    v45 = ((v36 * v41) - (((_S6 * v38) - (_S5 * v37)) * v39)) + (_S7 * v44);
    v46 = ((v37 * v41) - (((_S5 * v36) - (_S7 * v38)) * v39)) + (_S6 * v44);
    v47 = ((v38 * v41) - (((_S7 * v37) - (_S6 * v36)) * v39)) + (_S5 * v44);
    _S17 = v45 + v45;
    v49 = v46 + v46;
    _S16 = v47 + v47;
    v51 = (v23.f32[0] * v23.f32[0]) + -0.5;
    __asm { FMLA            S20, S16, V2.S[1] }

    v53 = ((v23.f32[0] * ((_D2.f32[0] * _S16) - (_D2.f32[1] * (v46 + v46)))) + ((v45 + v45) * v51)) + (v25 * _S20);
    __asm
    {
      FMLA            S22, S17, V2.S[1]
      FMLA            S16, S20, V2.S[1]
    }

    v56 = v18 + v53;
    v57 = v17 + (((v23.f32[0] * _S22) + (v49 * v51)) + (_D2.f32[0] * _S20));
    v58 = v19 + _S16;
    __asm
    {
      FMLA            S16, S6, V2.S[1]
      FMLS            S20, S7, V2.S[1]
    }

    v61 = _S20 + (_S5 * v25);
    v62 = ((vmuls_lane_f32(v39, _D2, 1) - (v23.f32[0] * _S5)) - (v25 * _S6)) + (_S7 * _D2.f32[0]);
    __asm { FMLA            S3, S5, V2.S[1] }

    v64 = v57 + v57;
    v65 = v58 + v58;
    v66 = (v135 * v135) + -0.5;
    v67 = ((v133 * (v57 + v57)) + (v132 * (v56 + v56))) + (v134 * (v58 + v58));
    v68 = ((v135 * ((v133 * (v58 + v58)) - (v134 * v64))) + ((v56 + v56) * v66)) + (v132 * v67);
    v69 = ((v135 * ((v134 * (v56 + v56)) - (v132 * v65))) + (v64 * v66)) + (v133 * v67);
    v70 = ((v135 * ((v132 * v64) - (v133 * (v56 + v56)))) + (v65 * v66)) + (v134 * v67);
    v71 = v136 + v68;
    v72 = v137 + v69;
    v73 = v138 + v70;
    v74 = (((_S3 * v132) + (v135 * _S16)) + (v133 * v62)) - (v61 * v134);
    v75 = (((_S3 * v133) + (v135 * v61)) + (v134 * _S16)) - (v62 * v132);
    v76 = (((_S3 * v134) + (v135 * v62)) + (v132 * v61)) - (_S16 * v133);
    v77 = (((v135 * _S3) - (v132 * _S16)) - (v133 * v61)) - (v134 * v62);
    *a3 = v74;
    a3[1] = v75;
    a3[2] = v76;
    a3[3] = v77;
    a3[4] = v71;
    a3[5] = v72;
    a3[6] = v73;
    v78 = sqrtf((((v75 * v75) + (v74 * v74)) + (v76 * v76)) + (v77 * v77));
    if (v78 != 0.0)
    {
      *a3 = v74 / v78;
      a3[1] = v75 / v78;
      a3[2] = v76 / v78;
      a3[3] = v77 / v78;
    }
  }

  else
  {
    v79 = a1[8] * -2.0;
    v80 = a1[9] * -2.0;
    v81 = a1[10] * -2.0;
    _S5 = a1[6];
    v82 = a1[7];
    v84 = (v82 * v82) + -0.5;
    _S7 = a1[4];
    _S6 = a1[5];
    v87 = ((v80 * _S6) + (_S7 * v79)) + (_S5 * v81);
    v88 = ((v79 * v84) - (((_S6 * v81) - (_S5 * v80)) * v82)) + (_S7 * v87);
    v89 = ((v80 * v84) - (((_S5 * v79) - (_S7 * v81)) * v82)) + (_S6 * v87);
    v90 = ((v81 * v84) - (((_S7 * v80) - (_S6 * v79)) * v82)) + (_S5 * v87);
    _S18 = (v88 - v18) + (v88 - v18);
    v92 = (v89 - v17) + (v89 - v17);
    _S16 = (v90 - v19) + (v90 - v19);
    v94 = (v23.f32[0] * v23.f32[0]) + -0.5;
    __asm { FMLS            S21, S16, V2.S[1] }

    v96 = ((v23.f32[0] * (vmuls_lane_f32(v92, _D2, 1) - (_S16 * _D2.f32[0]))) + (_S18 * v94)) - (v25 * _S21);
    __asm { FMLS            S23, S18, V2.S[1] }

    v98 = ((v23.f32[0] * _S23) + (v92 * v94)) - (_S21 * _D2.f32[0]);
    __asm
    {
      FMLS            S18, S21, V2.S[1]
      FMLS            S16, S6, V2.S[1]
      FMLA            S19, S7, V2.S[1]
    }

    v102 = _S19 - (_S5 * v25);
    v103 = ((-(_D2.f32[1] * v82) - (v23.f32[0] * _S5)) + (v25 * _S6)) - (_S7 * _D2.f32[0]);
    __asm { FMLS            S3, S5, V2.S[1] }

    v105 = v96 + v96;
    v106 = (v128 * v128) + -0.5;
    v107 = ((v126 * (v98 + v98)) + (v125 * (v96 + v96))) + (v127 * (_S18 + _S18));
    v108 = ((v128 * ((v126 * (_S18 + _S18)) - (v127 * (v98 + v98)))) + ((v96 + v96) * v106)) + (v125 * v107);
    v109 = ((v128 * ((v127 * (v96 + v96)) - (v125 * (_S18 + _S18)))) + ((v98 + v98) * v106)) + (v126 * v107);
    v110 = ((v128 * ((v125 * (v98 + v98)) - (v126 * v105))) + ((_S18 + _S18) * v106)) + (v127 * v107);
    v111 = v129 + v108;
    v112 = v130 + v109;
    v113 = v131 + v110;
    v114 = (((_S3 * v125) + (v128 * _S16)) + (v126 * v103)) - (v102 * v127);
    v115 = (((_S3 * v126) + (v128 * v102)) + (v127 * _S16)) - (v103 * v125);
    v116 = (((_S3 * v127) + (v128 * v103)) + (v125 * v102)) - (_S16 * v126);
    v117 = (((v128 * _S3) - (v125 * _S16)) - (v126 * v102)) - (v127 * v103);
    *a2 = v114;
    a2[1] = v115;
    a2[2] = v116;
    a2[3] = v117;
    a2[4] = v111;
    a2[5] = v112;
    a2[6] = v113;
    v118 = sqrtf((((v115 * v115) + (v114 * v114)) + (v116 * v116)) + (v117 * v117));
    if (v118 != 0.0)
    {
      *a2 = v114 / v118;
      a2[1] = v115 / v118;
      a2[2] = v116 / v118;
      a2[3] = v117 / v118;
    }
  }
}

uint64_t FixedJointVisualize(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, double a6, double a7, double a8, double a9, double a10, double a11, int8x16_t a12, int8x16_t a13)
{
  if (a5)
  {
    v13 = result;
    v14 = physx::Ext::joint::computeJointFrames(v16, v15, a2, a3, a4, a6, a7, a8, a9, a10, a11, a12, a13);
    return (*(*v13 + 16))(v13, v16, v15, v14);
  }

  return result;
}

void physx::Ext::DistanceJoint::~DistanceJoint(physx::Ext::DistanceJoint *this)
{
  if (physx::Ext::Joint<physx::PxDistanceJoint,physx::PxDistanceJointGeneratedValues>::~Joint(this))
  {
    v1 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v1();
  }
}

BOOL physx::PxDistanceJoint::isKindOf(physx::PxDistanceJoint *this, const char *a2)
{
  if (!strcmp("PxDistanceJoint", a2))
  {
    return 1;
  }

  return physx::PxJoint::isKindOf(this, a2);
}

uint64_t physx::Ext::Joint<physx::PxDistanceJoint,physx::PxDistanceJointGeneratedValues>::setActors(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(**(a1 + 96) + 64))(*(a1 + 96));
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v41, a2);
  v6 = v43;
  v7 = (*(a1 + 56) - v45) + (*(a1 + 56) - v45);
  v8 = (*(a1 + 60) - v46) + (*(a1 + 60) - v46);
  v9 = (*(a1 + 64) - v47) + (*(a1 + 64) - v47);
  v10 = (v44 * v44) + -0.5;
  v11 = (-(v42 * v8) - (v41 * v7)) - (v43 * v9);
  v12 = ((v44 * ((v43 * v8) - (v42 * v9))) + (v7 * v10)) - (v41 * v11);
  v13 = (v44 * ((v41 * v9) - (v43 * v7))) + (v8 * v10);
  v14 = (v44 * ((v42 * v7) - (v41 * v8))) + (v9 * v10);
  v16 = *(a1 + 48);
  v15 = *(a1 + 52);
  v17 = *(a1 + 40);
  v18 = *(a1 + 44);
  v19 = (((v44 * v18) - (v42 * v15)) - (v43 * v17)) + (v16 * v41);
  v20 = (((v44 * v16) - (v43 * v15)) - (v41 * v18)) + (v17 * v42);
  v21 = v13 - (v42 * v11);
  v22 = (((v41 * v17) + (v44 * v15)) + (v42 * v18)) + (v43 * v16);
  v23 = *(a1 + 104);
  v23[4] = (((v44 * v17) - (v41 * v15)) - (v42 * v16)) + (v18 * v43);
  v23[5] = v19;
  v23[6] = v20;
  v23[7] = v22;
  v23[8] = v12;
  v23[9] = v21;
  v23[10] = v14 - (v6 * v11);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v41, a3);
  v24 = (*(a1 + 84) - v45) + (*(a1 + 84) - v45);
  v25 = (*(a1 + 88) - v46) + (*(a1 + 88) - v46);
  v26 = (*(a1 + 92) - v47) + (*(a1 + 92) - v47);
  v27 = (v44 * v44) + -0.5;
  v28 = (-(v42 * v25) - (v41 * v24)) - (v43 * v26);
  v29 = ((v44 * ((v43 * v25) - (v42 * v26))) + (v24 * v27)) - (v41 * v28);
  v30 = ((v44 * ((v41 * v26) - (v43 * v24))) + (v25 * v27)) - (v42 * v28);
  v31 = ((v44 * ((v42 * v24) - (v41 * v25))) + (v26 * v27)) - (v43 * v28);
  v33 = *(a1 + 76);
  v32 = *(a1 + 80);
  v34 = *(a1 + 68);
  v35 = *(a1 + 72);
  v36 = (((v44 * v35) - (v42 * v32)) - (v43 * v34)) + (v33 * v41);
  v37 = (((v44 * v33) - (v43 * v32)) - (v41 * v35)) + (v34 * v42);
  v38 = (((v41 * v34) + (v44 * v32)) + (v42 * v35)) + (v43 * v33);
  v39 = *(a1 + 104);
  v39[11] = (((v44 * v34) - (v41 * v32)) - (v42 * v33)) + (v35 * v43);
  v39[12] = v36;
  v39[13] = v37;
  v39[14] = v38;
  v39[15] = v29;
  v39[16] = v30;
  v39[17] = v31;
  return (*(**(a1 + 96) + 72))(*(a1 + 96));
}

uint64_t physx::Ext::Joint<physx::PxDistanceJoint,physx::PxDistanceJointGeneratedValues>::getActors(uint64_t a1, void *a2, void *a3)
{
  result = *(a1 + 96);
  if (result)
  {
    return (*(*result + 56))();
  }

  *a2 = 0;
  *a3 = 0;
  return result;
}

uint64_t physx::Ext::Joint<physx::PxDistanceJoint,physx::PxDistanceJointGeneratedValues>::setLocalPose(uint64_t a1, unsigned int a2, float *a3)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v5 = a3[1];
  v6 = a3[2];
  v7 = a3[3];
  v8 = sqrtf((((v5 * v5) + (*a3 * *a3)) + (v6 * v6)) + (v7 * v7));
  v9 = *a3 / v8;
  v10 = v5 / v8;
  v11 = v6 / v8;
  v12 = v7 / v8;
  v13 = a3[4];
  v14 = a3[5];
  v15 = a3[6];
  v16 = 28 * a2;
  v17 = (a1 + v16);
  v17[10] = v9;
  v17[11] = v5 / v8;
  v17[12] = v6 / v8;
  v17[13] = v7 / v8;
  v17[14] = v13;
  v17[15] = v14;
  v17[16] = v15;
  v39 = 0;
  v40[0] = 0;
  (*(**(a1 + 96) + 56))(*(a1 + 96), &v39, v40);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v32, v40[a2 - 1]);
  v18 = (v13 - v36) + (v13 - v36);
  v19 = (v14 - v37) + (v14 - v37);
  v20 = (v15 - v38) + (v15 - v38);
  v21 = (v35 * v35) + -0.5;
  v22 = (-(v33 * v19) - (v32 * v18)) - (v34 * v20);
  v23 = ((v35 * ((v34 * v19) - (v33 * v20))) + (v18 * v21)) - (v32 * v22);
  v24 = ((v35 * ((v32 * v20) - (v34 * v18))) + (v19 * v21)) - (v33 * v22);
  v25 = ((v35 * ((v33 * v18) - (v32 * v19))) + (v20 * v21)) - (v34 * v22);
  v26 = (((v35 * v10) - (v33 * v12)) - (v34 * v9)) + (v11 * v32);
  v27 = (((v35 * v11) - (v34 * v12)) - (v32 * v10)) + (v9 * v33);
  v28 = (((v9 * v32) + (v35 * v12)) + (v33 * v10)) + (v34 * v11);
  v29 = *(a1 + 96);
  v30 = (*(a1 + 104) + v16);
  v30[4] = (((v35 * v9) - (v32 * v12)) - (v33 * v11)) + (v10 * v34);
  v30[5] = v26;
  v30[6] = v27;
  v30[7] = v28;
  v30[8] = v23;
  v30[9] = v24;
  v30[10] = v25;
  return (*(*v29 + 72))(v29);
}

float physx::Ext::Joint<physx::PxDistanceJoint,physx::PxDistanceJointGeneratedValues>::getLocalPose@<S0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a1 + 28 * a2;
  *a3 = *(v3 + 40);
  *(a3 + 16) = *(v3 + 56);
  result = *(v3 + 64);
  *(a3 + 24) = result;
  return result;
}

float physx::Ext::Joint<physx::PxDistanceJoint,physx::PxDistanceJointGeneratedValues>::getRelativeTransform@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  v72 = 0;
  v73 = 0;
  (*(**(a1 + 96) + 56))(*(a1 + 96), &v73, &v72);
  v4 = 1.0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  v12 = 1.0;
  if (v73)
  {
    (*(*v73 + 152))(&v66);
    v5 = 0.0;
    v4 = 1.0;
    v10 = *(&v66 + 1);
    v11 = *&v66;
    v9 = v67;
    v12 = v68;
    v8 = v69;
    v7 = v70;
    v6 = v71;
  }

  v13 = *(a1 + 56);
  v14 = *(a1 + 60);
  v15 = *(a1 + 64);
  v16 = *(a1 + 48);
  v17 = *(a1 + 52);
  v18 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  v21 = *(a1 + 40);
  v22 = *(a1 + 44);
  v23 = 0.0;
  v24 = 0.0;
  if (v72)
  {
    v64 = v7;
    v65 = v8;
    v62 = *(a1 + 56);
    v63 = v6;
    v60 = *(a1 + 64);
    v61 = *(a1 + 60);
    (*(*v72 + 152))(&v66);
    v15 = v60;
    v14 = v61;
    v13 = v62;
    v6 = v63;
    v7 = v64;
    v8 = v65;
    v23 = *(&v66 + 1);
    v24 = *&v66;
    v20 = v67;
    v4 = v68;
    v19 = v69;
    v18 = v70;
    v5 = v71;
  }

  v25 = (((v12 * v17) - (v11 * v21)) - (v10 * v22)) - (v9 * v16);
  v26 = (((v9 * v17) + (v12 * v16)) + (v11 * v22)) - (v21 * v10);
  v27 = (((v10 * v17) + (v12 * v22)) + (v9 * v21)) - (v16 * v11);
  v28 = (((v11 * v17) + (v12 * v21)) + (v10 * v16)) - (v22 * v9);
  v29 = v15 + v15;
  v30 = v14 + v14;
  v31 = ((v10 * (v14 + v14)) + (v11 * (v13 + v13))) + (v9 * v29);
  v32 = (v12 * v12) + -0.5;
  v33 = v6 + (((v12 * ((v11 * (v14 + v14)) - (v10 * (v13 + v13)))) + (v29 * v32)) + (v9 * v31));
  v34 = v7 + (((v12 * ((v9 * (v13 + v13)) - (v11 * v29))) + (v30 * v32)) + (v10 * v31));
  v35 = v8 + (((v12 * ((v10 * v29) - (v9 * v30))) + ((v13 + v13) * v32)) + (v11 * v31));
  v36 = *(a1 + 84) + *(a1 + 84);
  v37 = *(a1 + 88) + *(a1 + 88);
  v38 = *(a1 + 92) + *(a1 + 92);
  v39 = (v4 * v4) + -0.5;
  v40 = ((v23 * v37) + (v24 * v36)) + (v20 * v38);
  v41 = v19 + (((v4 * ((v23 * v38) - (v20 * v37))) + (v36 * v39)) + (v24 * v40));
  v42 = v18 + (((v4 * ((v20 * v36) - (v24 * v38))) + (v37 * v39)) + (v23 * v40));
  v43 = v5 + (((v4 * ((v24 * v37) - (v23 * v36))) + (v38 * v39)) + (v20 * v40));
  v45 = *(a1 + 76);
  v44 = *(a1 + 80);
  v46 = *(a1 + 68);
  v47 = *(a1 + 72);
  v48 = (((v24 * v44) + (v4 * v46)) + (v23 * v45)) - (v47 * v20);
  v49 = (((v23 * v44) + (v4 * v47)) + (v20 * v46)) - (v45 * v24);
  v50 = (((v20 * v44) + (v4 * v45)) + (v24 * v47)) - (v46 * v23);
  v51 = (((v4 * v44) - (v24 * v46)) - (v23 * v47)) - (v20 * v45);
  v52 = (v41 - v35) + (v41 - v35);
  v53 = (v42 - v34) + (v42 - v34);
  v54 = (v43 - v33) + (v43 - v33);
  v55 = (v25 * v25) + -0.5;
  v56 = (-(v27 * v53) - (v28 * v52)) - (v26 * v54);
  v57 = ((v25 * ((v26 * v53) - (v27 * v54))) + (v52 * v55)) - (v28 * v56);
  v58 = ((v25 * ((v28 * v54) - (v26 * v52))) + (v53 * v55)) - (v27 * v56);
  *a2 = (((v25 * v48) - (v28 * v51)) - (v27 * v50)) + (v49 * v26);
  a2[1] = (((v25 * v49) - (v27 * v51)) - (v26 * v48)) + (v50 * v28);
  a2[2] = (((v25 * v50) - (v26 * v51)) - (v28 * v49)) + (v48 * v27);
  a2[3] = (((v28 * v48) + (v25 * v51)) + (v27 * v49)) + (v26 * v50);
  result = ((v25 * ((v27 * v52) - (v28 * v53))) + (v54 * v55)) - (v26 * v56);
  a2[4] = v57;
  a2[5] = v58;
  a2[6] = result;
  return result;
}

float physx::Ext::Joint<physx::PxDistanceJoint,physx::PxDistanceJointGeneratedValues>::getRelativeLinearVelocity@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  v51 = 0;
  v52 = 0;
  (*(**(a1 + 96) + 56))(*(a1 + 96), &v52, &v51);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v36, v52);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v32, v51);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getActorVelocity(v52, v50, &v47);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getActorVelocity(v51, v46, &v43);
  v4 = *(a1 + 56) + *(a1 + 56);
  v5 = *(a1 + 60) + *(a1 + 60);
  v6 = *(a1 + 64) + *(a1 + 64);
  v7 = (v39 * v39) + -0.5;
  v8 = ((v5 * v37) + (v36 * v4)) + (v38 * v6);
  v9 = ((v39 * ((v37 * v6) - (v38 * v5))) + (v4 * v7)) + (v36 * v8);
  v10 = ((v39 * ((v38 * v4) - (v36 * v6))) + (v5 * v7)) + (v37 * v8);
  v11 = ((v39 * ((v36 * v5) - (v37 * v4))) + (v6 * v7)) + (v38 * v8);
  v12 = *(a1 + 84) + *(a1 + 84);
  v13 = *(a1 + 88) + *(a1 + 88);
  v14 = *(a1 + 92) + *(a1 + 92);
  v15 = (v35 * v35) + -0.5;
  v16 = ((v13 * v33) + (v32 * v12)) + (v34 * v14);
  v17 = ((v35 * ((v33 * v14) - (v34 * v13))) + (v12 * v15)) + (v32 * v16);
  v18 = ((v35 * ((v34 * v12) - (v32 * v14))) + (v13 * v15)) + (v33 * v16);
  v19 = ((v35 * ((v32 * v13) - (v33 * v12))) + (v14 * v15)) + (v34 * v16);
  v20 = (v48 * v11) - (v49 * v10);
  v21 = (v49 * v9) - (v47 * v11);
  v22 = (v47 * v10) - (v48 * v9);
  v23 = (((v46[0] - ((v44 * v19) - (v45 * v18))) - v50[0]) + v20) - v40;
  v24 = (((v46[1] - ((v45 * v17) - (v43 * v19))) - v50[1]) + v21) - v41;
  v25 = (((v46[2] - ((v43 * v18) - (v44 * v17))) - v50[2]) + v22) - v42;
  v26 = v23 + v23;
  v27 = v24 + v24;
  v28 = v25 + v25;
  v29 = ((v37 * v27) + (v36 * v26)) + (v38 * v28);
  v30 = ((v27 * v7) - (((v38 * v26) - (v36 * v28)) * v39)) + (v37 * v29);
  result = ((v28 * v7) - (((v36 * v27) - (v37 * v26)) * v39)) + (v38 * v29);
  *a2 = ((v26 * v7) - (((v37 * v28) - (v38 * v27)) * v39)) + (v36 * v29);
  a2[1] = v30;
  a2[2] = result;
  return result;
}

float32_t physx::Ext::Joint<physx::PxDistanceJoint,physx::PxDistanceJointGeneratedValues>::getRelativeAngularVelocity@<S0>(uint64_t a1@<X0>, float32x2_t *a2@<X8>)
{
  v21 = 0;
  v22 = 0;
  (*(**(a1 + 96) + 56))(*(a1 + 96), &v22, &v21);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(v11, v22);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getActorVelocity(v22, v20, &v18);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getActorVelocity(v21, v17, &v15);
  v3 = ((v16 - v19) - v14) + ((v16 - v19) - v14);
  v4.i32[0] = *&v11[8];
  v5 = (v12 * v12) + -0.5;
  v6 = vsub_f32(vsub_f32(v15, v18), v13);
  v7 = vadd_f32(v6, v6);
  v8 = (vmuls_lane_f32(v7.f32[1], *v11, 1) + (*v11 * v7.f32[0])) + (*&v11[8] * v3);
  v9.i32[0] = vdup_lane_s32(v7, 1).u32[0];
  v9.f32[1] = v3;
  result = ((v3 * v5) - (((-*&v11[4] * v7.f32[0]) + (*v11 * v7.f32[1])) * v12)) + (*&v11[8] * v8);
  *a2 = vmla_n_f32(vmla_n_f32(vmul_n_f32(vneg_f32(vmla_f32(vmul_f32(v9, vneg_f32(vzip1_s32(v4, *v11))), vext_s8(v9, v7, 4uLL), *&v11[4])), v12), v7, v5), *v11, v8);
  a2[1].f32[0] = result;
  return result;
}

uint64_t physx::Ext::Joint<physx::PxDistanceJoint,physx::PxDistanceJointGeneratedValues>::setConstraintFlags(uint64_t a1, __int16 *a2)
{
  v2 = *(a1 + 96);
  v4 = *a2;
  return (*(*v2 + 80))(v2, &v4);
}

uint64_t physx::Ext::Joint<physx::PxDistanceJoint,physx::PxDistanceJointGeneratedValues>::setInvMassScale0(uint64_t a1, float a2)
{
  v2 = a1 + 96;
  v3 = *(a1 + 96);
  **(v2 + 8) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::Joint<physx::PxDistanceJoint,physx::PxDistanceJointGeneratedValues>::setInvInertiaScale0(uint64_t a1, float a2)
{
  v2 = a1 + 96;
  v3 = *(a1 + 96);
  *(*(v2 + 8) + 4) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::Joint<physx::PxDistanceJoint,physx::PxDistanceJointGeneratedValues>::setInvMassScale1(uint64_t a1, float a2)
{
  v2 = a1 + 96;
  v3 = *(a1 + 96);
  *(*(v2 + 8) + 8) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::Joint<physx::PxDistanceJoint,physx::PxDistanceJointGeneratedValues>::setInvInertiaScale1(uint64_t a1, float a2)
{
  v2 = a1 + 96;
  v3 = *(a1 + 96);
  *(*(v2 + 8) + 12) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::Joint<physx::PxDistanceJoint,physx::PxDistanceJointGeneratedValues>::getScene(uint64_t a1)
{
  result = *(a1 + 96);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

uint64_t physx::Ext::Joint<physx::PxDistanceJoint,physx::PxDistanceJointGeneratedValues>::requiresObjects(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2, *(a1 + 96));
  v5 = 0;
  v6 = 0;
  result = (*(**(a1 + 96) + 56))(*(a1 + 96), &v6, &v5);
  if (v6)
  {
    result = (*(*a2 + 16))(a2);
  }

  if (v5)
  {
    return (*(*a2 + 16))(a2);
  }

  return result;
}

uint64_t physx::Ext::Joint<physx::PxDistanceJoint,physx::PxDistanceJointGeneratedValues>::onComShift(uint64_t a1, unsigned int a2)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v30 = 0;
  v31[0] = 0;
  (*(**(a1 + 96) + 56))(*(a1 + 96), &v30, v31);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v23, v31[a2 - 1]);
  v4 = 28 * a2;
  v5 = (*(a1 + v4 + 56) - v27) + (*(a1 + v4 + 56) - v27);
  v6 = (*(a1 + v4 + 60) - v28) + (*(a1 + v4 + 60) - v28);
  v7 = (*(a1 + v4 + 64) - v29) + (*(a1 + v4 + 64) - v29);
  v8 = (v26 * v26) + -0.5;
  v9 = (-(v24 * v6) - (v23 * v5)) - (v25 * v7);
  v10 = ((v26 * ((v25 * v6) - (v24 * v7))) + (v5 * v8)) - (v23 * v9);
  v11 = ((v26 * ((v23 * v7) - (v25 * v5))) + (v6 * v8)) - (v24 * v9);
  v12 = ((v26 * ((v24 * v5) - (v23 * v6))) + (v7 * v8)) - (v25 * v9);
  v14 = *(a1 + v4 + 48);
  v13 = *(a1 + v4 + 52);
  v15 = *(a1 + v4 + 40);
  v16 = *(a1 + v4 + 44);
  v17 = (((v26 * v16) - (v24 * v13)) - (v25 * v15)) + (v14 * v23);
  v18 = (((v26 * v14) - (v25 * v13)) - (v23 * v16)) + (v15 * v24);
  v19 = (((v23 * v15) + (v26 * v13)) + (v24 * v16)) + (v25 * v14);
  v20 = *(a1 + 96);
  v21 = (*(a1 + 104) + v4);
  v21[4] = (((v26 * v15) - (v23 * v13)) - (v24 * v14)) + (v16 * v25);
  v21[5] = v17;
  v21[6] = v18;
  v21[7] = v19;
  v21[8] = v10;
  v21[9] = v11;
  v21[10] = v12;
  return (*(*v20 + 72))(v20);
}

uint64_t physx::Ext::Joint<physx::PxDistanceJoint,physx::PxDistanceJointGeneratedValues>::onOriginShift(uint64_t a1, float *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16[0] = 0;
  result = (*(**(a1 + 96) + 56))(*(a1 + 96), &v15, v16);
  if (v15)
  {
    if (v16[0])
    {
      return result;
    }

    v5 = 68;
    v6 = 64;
    v7 = 60;
    v8 = 92;
    v9 = 88;
    v10 = 84;
  }

  else
  {
    v5 = 40;
    v6 = 36;
    v7 = 32;
    v8 = 64;
    v9 = 60;
    v10 = 56;
  }

  v11 = a2[1];
  *(a1 + v10) = *(a1 + v10) - *a2;
  *(a1 + v9) = *(a1 + v9) - v11;
  *(a1 + v8) = *(a1 + v8) - a2[2];
  v12 = *(a1 + 96);
  v13 = *(a1 + 104);
  v14 = a2[1];
  *(v13 + v7) = *(v13 + v7) - *a2;
  *(v13 + v6) = *(v13 + v6) - v14;
  *(v13 + v5) = *(v13 + v5) - a2[2];
  return (*(*v12 + 72))(v12);
}

uint64_t physx::Ext::Joint<physx::PxDistanceJoint,physx::PxDistanceJointGeneratedValues>::onConstraintRelease(void *a1)
{
  if (a1[13])
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  a1[13] = 0;
  v2 = *(*a1 + 32);

  return v2(a1);
}

uint64_t non-virtual thunk tophysx::Ext::Joint<physx::PxDistanceJoint,physx::PxDistanceJointGeneratedValues>::getExternalReference(uint64_t a1, _DWORD *a2)
{
  result = a1 - 24;
  *a2 = 0;
  return result;
}

void non-virtual thunk tophysx::Ext::DistanceJoint::~DistanceJoint(physx::Ext::DistanceJoint *this)
{
  physx::Ext::Joint<physx::PxDistanceJoint,physx::PxDistanceJointGeneratedValues>::~Joint(this - 24);
}

{
  physx::Ext::Joint<physx::PxDistanceJoint,physx::PxDistanceJointGeneratedValues>::~Joint(this - 24);
  v1 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

  v1();
}

void physx::Ext::FixedJoint::~FixedJoint(physx::Ext::FixedJoint *this)
{
  if (physx::Ext::Joint<physx::PxFixedJoint,physx::PxFixedJointGeneratedValues>::~Joint(this))
  {
    v1 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v1();
  }
}

BOOL physx::PxFixedJoint::isKindOf(physx::PxFixedJoint *this, const char *a2)
{
  if (!strcmp("PxFixedJoint", a2))
  {
    return 1;
  }

  return physx::PxJoint::isKindOf(this, a2);
}

uint64_t physx::Ext::Joint<physx::PxFixedJoint,physx::PxFixedJointGeneratedValues>::setActors(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(**(a1 + 96) + 64))(*(a1 + 96));
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v41, a2);
  v6 = v43;
  v7 = (*(a1 + 56) - v45) + (*(a1 + 56) - v45);
  v8 = (*(a1 + 60) - v46) + (*(a1 + 60) - v46);
  v9 = (*(a1 + 64) - v47) + (*(a1 + 64) - v47);
  v10 = (v44 * v44) + -0.5;
  v11 = (-(v42 * v8) - (v41 * v7)) - (v43 * v9);
  v12 = ((v44 * ((v43 * v8) - (v42 * v9))) + (v7 * v10)) - (v41 * v11);
  v13 = (v44 * ((v41 * v9) - (v43 * v7))) + (v8 * v10);
  v14 = (v44 * ((v42 * v7) - (v41 * v8))) + (v9 * v10);
  v16 = *(a1 + 48);
  v15 = *(a1 + 52);
  v17 = *(a1 + 40);
  v18 = *(a1 + 44);
  v19 = (((v44 * v18) - (v42 * v15)) - (v43 * v17)) + (v16 * v41);
  v20 = (((v44 * v16) - (v43 * v15)) - (v41 * v18)) + (v17 * v42);
  v21 = v13 - (v42 * v11);
  v22 = (((v41 * v17) + (v44 * v15)) + (v42 * v18)) + (v43 * v16);
  v23 = *(a1 + 104);
  v23[4] = (((v44 * v17) - (v41 * v15)) - (v42 * v16)) + (v18 * v43);
  v23[5] = v19;
  v23[6] = v20;
  v23[7] = v22;
  v23[8] = v12;
  v23[9] = v21;
  v23[10] = v14 - (v6 * v11);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v41, a3);
  v24 = (*(a1 + 84) - v45) + (*(a1 + 84) - v45);
  v25 = (*(a1 + 88) - v46) + (*(a1 + 88) - v46);
  v26 = (*(a1 + 92) - v47) + (*(a1 + 92) - v47);
  v27 = (v44 * v44) + -0.5;
  v28 = (-(v42 * v25) - (v41 * v24)) - (v43 * v26);
  v29 = ((v44 * ((v43 * v25) - (v42 * v26))) + (v24 * v27)) - (v41 * v28);
  v30 = ((v44 * ((v41 * v26) - (v43 * v24))) + (v25 * v27)) - (v42 * v28);
  v31 = ((v44 * ((v42 * v24) - (v41 * v25))) + (v26 * v27)) - (v43 * v28);
  v33 = *(a1 + 76);
  v32 = *(a1 + 80);
  v34 = *(a1 + 68);
  v35 = *(a1 + 72);
  v36 = (((v44 * v35) - (v42 * v32)) - (v43 * v34)) + (v33 * v41);
  v37 = (((v44 * v33) - (v43 * v32)) - (v41 * v35)) + (v34 * v42);
  v38 = (((v41 * v34) + (v44 * v32)) + (v42 * v35)) + (v43 * v33);
  v39 = *(a1 + 104);
  v39[11] = (((v44 * v34) - (v41 * v32)) - (v42 * v33)) + (v35 * v43);
  v39[12] = v36;
  v39[13] = v37;
  v39[14] = v38;
  v39[15] = v29;
  v39[16] = v30;
  v39[17] = v31;
  return (*(**(a1 + 96) + 72))(*(a1 + 96));
}

uint64_t physx::Ext::Joint<physx::PxFixedJoint,physx::PxFixedJointGeneratedValues>::getActors(uint64_t a1, void *a2, void *a3)
{
  result = *(a1 + 96);
  if (result)
  {
    return (*(*result + 56))();
  }

  *a2 = 0;
  *a3 = 0;
  return result;
}

uint64_t physx::Ext::Joint<physx::PxFixedJoint,physx::PxFixedJointGeneratedValues>::setLocalPose(uint64_t a1, unsigned int a2, float *a3)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v5 = a3[1];
  v6 = a3[2];
  v7 = a3[3];
  v8 = sqrtf((((v5 * v5) + (*a3 * *a3)) + (v6 * v6)) + (v7 * v7));
  v9 = *a3 / v8;
  v10 = v5 / v8;
  v11 = v6 / v8;
  v12 = v7 / v8;
  v13 = a3[4];
  v14 = a3[5];
  v15 = a3[6];
  v16 = 28 * a2;
  v17 = (a1 + v16);
  v17[10] = v9;
  v17[11] = v5 / v8;
  v17[12] = v6 / v8;
  v17[13] = v7 / v8;
  v17[14] = v13;
  v17[15] = v14;
  v17[16] = v15;
  v39 = 0;
  v40[0] = 0;
  (*(**(a1 + 96) + 56))(*(a1 + 96), &v39, v40);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v32, v40[a2 - 1]);
  v18 = (v13 - v36) + (v13 - v36);
  v19 = (v14 - v37) + (v14 - v37);
  v20 = (v15 - v38) + (v15 - v38);
  v21 = (v35 * v35) + -0.5;
  v22 = (-(v33 * v19) - (v32 * v18)) - (v34 * v20);
  v23 = ((v35 * ((v34 * v19) - (v33 * v20))) + (v18 * v21)) - (v32 * v22);
  v24 = ((v35 * ((v32 * v20) - (v34 * v18))) + (v19 * v21)) - (v33 * v22);
  v25 = ((v35 * ((v33 * v18) - (v32 * v19))) + (v20 * v21)) - (v34 * v22);
  v26 = (((v35 * v10) - (v33 * v12)) - (v34 * v9)) + (v11 * v32);
  v27 = (((v35 * v11) - (v34 * v12)) - (v32 * v10)) + (v9 * v33);
  v28 = (((v9 * v32) + (v35 * v12)) + (v33 * v10)) + (v34 * v11);
  v29 = *(a1 + 96);
  v30 = (*(a1 + 104) + v16);
  v30[4] = (((v35 * v9) - (v32 * v12)) - (v33 * v11)) + (v10 * v34);
  v30[5] = v26;
  v30[6] = v27;
  v30[7] = v28;
  v30[8] = v23;
  v30[9] = v24;
  v30[10] = v25;
  return (*(*v29 + 72))(v29);
}

float physx::Ext::Joint<physx::PxFixedJoint,physx::PxFixedJointGeneratedValues>::getLocalPose@<S0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a1 + 28 * a2;
  *a3 = *(v3 + 40);
  *(a3 + 16) = *(v3 + 56);
  result = *(v3 + 64);
  *(a3 + 24) = result;
  return result;
}

float physx::Ext::Joint<physx::PxFixedJoint,physx::PxFixedJointGeneratedValues>::getRelativeTransform@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  v72 = 0;
  v73 = 0;
  (*(**(a1 + 96) + 56))(*(a1 + 96), &v73, &v72);
  v4 = 1.0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  v12 = 1.0;
  if (v73)
  {
    (*(*v73 + 152))(&v66);
    v5 = 0.0;
    v4 = 1.0;
    v10 = *(&v66 + 1);
    v11 = *&v66;
    v9 = v67;
    v12 = v68;
    v8 = v69;
    v7 = v70;
    v6 = v71;
  }

  v13 = *(a1 + 56);
  v14 = *(a1 + 60);
  v15 = *(a1 + 64);
  v16 = *(a1 + 48);
  v17 = *(a1 + 52);
  v18 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  v21 = *(a1 + 40);
  v22 = *(a1 + 44);
  v23 = 0.0;
  v24 = 0.0;
  if (v72)
  {
    v64 = v7;
    v65 = v8;
    v62 = *(a1 + 56);
    v63 = v6;
    v60 = *(a1 + 64);
    v61 = *(a1 + 60);
    (*(*v72 + 152))(&v66);
    v15 = v60;
    v14 = v61;
    v13 = v62;
    v6 = v63;
    v7 = v64;
    v8 = v65;
    v23 = *(&v66 + 1);
    v24 = *&v66;
    v20 = v67;
    v4 = v68;
    v19 = v69;
    v18 = v70;
    v5 = v71;
  }

  v25 = (((v12 * v17) - (v11 * v21)) - (v10 * v22)) - (v9 * v16);
  v26 = (((v9 * v17) + (v12 * v16)) + (v11 * v22)) - (v21 * v10);
  v27 = (((v10 * v17) + (v12 * v22)) + (v9 * v21)) - (v16 * v11);
  v28 = (((v11 * v17) + (v12 * v21)) + (v10 * v16)) - (v22 * v9);
  v29 = v15 + v15;
  v30 = v14 + v14;
  v31 = ((v10 * (v14 + v14)) + (v11 * (v13 + v13))) + (v9 * v29);
  v32 = (v12 * v12) + -0.5;
  v33 = v6 + (((v12 * ((v11 * (v14 + v14)) - (v10 * (v13 + v13)))) + (v29 * v32)) + (v9 * v31));
  v34 = v7 + (((v12 * ((v9 * (v13 + v13)) - (v11 * v29))) + (v30 * v32)) + (v10 * v31));
  v35 = v8 + (((v12 * ((v10 * v29) - (v9 * v30))) + ((v13 + v13) * v32)) + (v11 * v31));
  v36 = *(a1 + 84) + *(a1 + 84);
  v37 = *(a1 + 88) + *(a1 + 88);
  v38 = *(a1 + 92) + *(a1 + 92);
  v39 = (v4 * v4) + -0.5;
  v40 = ((v23 * v37) + (v24 * v36)) + (v20 * v38);
  v41 = v19 + (((v4 * ((v23 * v38) - (v20 * v37))) + (v36 * v39)) + (v24 * v40));
  v42 = v18 + (((v4 * ((v20 * v36) - (v24 * v38))) + (v37 * v39)) + (v23 * v40));
  v43 = v5 + (((v4 * ((v24 * v37) - (v23 * v36))) + (v38 * v39)) + (v20 * v40));
  v45 = *(a1 + 76);
  v44 = *(a1 + 80);
  v46 = *(a1 + 68);
  v47 = *(a1 + 72);
  v48 = (((v24 * v44) + (v4 * v46)) + (v23 * v45)) - (v47 * v20);
  v49 = (((v23 * v44) + (v4 * v47)) + (v20 * v46)) - (v45 * v24);
  v50 = (((v20 * v44) + (v4 * v45)) + (v24 * v47)) - (v46 * v23);
  v51 = (((v4 * v44) - (v24 * v46)) - (v23 * v47)) - (v20 * v45);
  v52 = (v41 - v35) + (v41 - v35);
  v53 = (v42 - v34) + (v42 - v34);
  v54 = (v43 - v33) + (v43 - v33);
  v55 = (v25 * v25) + -0.5;
  v56 = (-(v27 * v53) - (v28 * v52)) - (v26 * v54);
  v57 = ((v25 * ((v26 * v53) - (v27 * v54))) + (v52 * v55)) - (v28 * v56);
  v58 = ((v25 * ((v28 * v54) - (v26 * v52))) + (v53 * v55)) - (v27 * v56);
  *a2 = (((v25 * v48) - (v28 * v51)) - (v27 * v50)) + (v49 * v26);
  a2[1] = (((v25 * v49) - (v27 * v51)) - (v26 * v48)) + (v50 * v28);
  a2[2] = (((v25 * v50) - (v26 * v51)) - (v28 * v49)) + (v48 * v27);
  a2[3] = (((v28 * v48) + (v25 * v51)) + (v27 * v49)) + (v26 * v50);
  result = ((v25 * ((v27 * v52) - (v28 * v53))) + (v54 * v55)) - (v26 * v56);
  a2[4] = v57;
  a2[5] = v58;
  a2[6] = result;
  return result;
}

float physx::Ext::Joint<physx::PxFixedJoint,physx::PxFixedJointGeneratedValues>::getRelativeLinearVelocity@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  v51 = 0;
  v52 = 0;
  (*(**(a1 + 96) + 56))(*(a1 + 96), &v52, &v51);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v36, v52);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v32, v51);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getActorVelocity(v52, v50, &v47);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getActorVelocity(v51, v46, &v43);
  v4 = *(a1 + 56) + *(a1 + 56);
  v5 = *(a1 + 60) + *(a1 + 60);
  v6 = *(a1 + 64) + *(a1 + 64);
  v7 = (v39 * v39) + -0.5;
  v8 = ((v5 * v37) + (v36 * v4)) + (v38 * v6);
  v9 = ((v39 * ((v37 * v6) - (v38 * v5))) + (v4 * v7)) + (v36 * v8);
  v10 = ((v39 * ((v38 * v4) - (v36 * v6))) + (v5 * v7)) + (v37 * v8);
  v11 = ((v39 * ((v36 * v5) - (v37 * v4))) + (v6 * v7)) + (v38 * v8);
  v12 = *(a1 + 84) + *(a1 + 84);
  v13 = *(a1 + 88) + *(a1 + 88);
  v14 = *(a1 + 92) + *(a1 + 92);
  v15 = (v35 * v35) + -0.5;
  v16 = ((v13 * v33) + (v32 * v12)) + (v34 * v14);
  v17 = ((v35 * ((v33 * v14) - (v34 * v13))) + (v12 * v15)) + (v32 * v16);
  v18 = ((v35 * ((v34 * v12) - (v32 * v14))) + (v13 * v15)) + (v33 * v16);
  v19 = ((v35 * ((v32 * v13) - (v33 * v12))) + (v14 * v15)) + (v34 * v16);
  v20 = (v48 * v11) - (v49 * v10);
  v21 = (v49 * v9) - (v47 * v11);
  v22 = (v47 * v10) - (v48 * v9);
  v23 = (((v46[0] - ((v44 * v19) - (v45 * v18))) - v50[0]) + v20) - v40;
  v24 = (((v46[1] - ((v45 * v17) - (v43 * v19))) - v50[1]) + v21) - v41;
  v25 = (((v46[2] - ((v43 * v18) - (v44 * v17))) - v50[2]) + v22) - v42;
  v26 = v23 + v23;
  v27 = v24 + v24;
  v28 = v25 + v25;
  v29 = ((v37 * v27) + (v36 * v26)) + (v38 * v28);
  v30 = ((v27 * v7) - (((v38 * v26) - (v36 * v28)) * v39)) + (v37 * v29);
  result = ((v28 * v7) - (((v36 * v27) - (v37 * v26)) * v39)) + (v38 * v29);
  *a2 = ((v26 * v7) - (((v37 * v28) - (v38 * v27)) * v39)) + (v36 * v29);
  a2[1] = v30;
  a2[2] = result;
  return result;
}

float32_t physx::Ext::Joint<physx::PxFixedJoint,physx::PxFixedJointGeneratedValues>::getRelativeAngularVelocity@<S0>(uint64_t a1@<X0>, float32x2_t *a2@<X8>)
{
  v21 = 0;
  v22 = 0;
  (*(**(a1 + 96) + 56))(*(a1 + 96), &v22, &v21);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(v11, v22);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getActorVelocity(v22, v20, &v18);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getActorVelocity(v21, v17, &v15);
  v3 = ((v16 - v19) - v14) + ((v16 - v19) - v14);
  v4.i32[0] = *&v11[8];
  v5 = (v12 * v12) + -0.5;
  v6 = vsub_f32(vsub_f32(v15, v18), v13);
  v7 = vadd_f32(v6, v6);
  v8 = (vmuls_lane_f32(v7.f32[1], *v11, 1) + (*v11 * v7.f32[0])) + (*&v11[8] * v3);
  v9.i32[0] = vdup_lane_s32(v7, 1).u32[0];
  v9.f32[1] = v3;
  result = ((v3 * v5) - (((-*&v11[4] * v7.f32[0]) + (*v11 * v7.f32[1])) * v12)) + (*&v11[8] * v8);
  *a2 = vmla_n_f32(vmla_n_f32(vmul_n_f32(vneg_f32(vmla_f32(vmul_f32(v9, vneg_f32(vzip1_s32(v4, *v11))), vext_s8(v9, v7, 4uLL), *&v11[4])), v12), v7, v5), *v11, v8);
  a2[1].f32[0] = result;
  return result;
}

uint64_t physx::Ext::Joint<physx::PxFixedJoint,physx::PxFixedJointGeneratedValues>::setConstraintFlags(uint64_t a1, __int16 *a2)
{
  v2 = *(a1 + 96);
  v4 = *a2;
  return (*(*v2 + 80))(v2, &v4);
}

uint64_t physx::Ext::Joint<physx::PxFixedJoint,physx::PxFixedJointGeneratedValues>::setInvMassScale0(uint64_t a1, float a2)
{
  v2 = a1 + 96;
  v3 = *(a1 + 96);
  **(v2 + 8) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::Joint<physx::PxFixedJoint,physx::PxFixedJointGeneratedValues>::setInvInertiaScale0(uint64_t a1, float a2)
{
  v2 = a1 + 96;
  v3 = *(a1 + 96);
  *(*(v2 + 8) + 4) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::Joint<physx::PxFixedJoint,physx::PxFixedJointGeneratedValues>::setInvMassScale1(uint64_t a1, float a2)
{
  v2 = a1 + 96;
  v3 = *(a1 + 96);
  *(*(v2 + 8) + 8) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::Joint<physx::PxFixedJoint,physx::PxFixedJointGeneratedValues>::setInvInertiaScale1(uint64_t a1, float a2)
{
  v2 = a1 + 96;
  v3 = *(a1 + 96);
  *(*(v2 + 8) + 12) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::Joint<physx::PxFixedJoint,physx::PxFixedJointGeneratedValues>::getScene(uint64_t a1)
{
  result = *(a1 + 96);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

uint64_t physx::Ext::Joint<physx::PxFixedJoint,physx::PxFixedJointGeneratedValues>::requiresObjects(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2, *(a1 + 96));
  v5 = 0;
  v6 = 0;
  result = (*(**(a1 + 96) + 56))(*(a1 + 96), &v6, &v5);
  if (v6)
  {
    result = (*(*a2 + 16))(a2);
  }

  if (v5)
  {
    return (*(*a2 + 16))(a2);
  }

  return result;
}

uint64_t physx::Ext::Joint<physx::PxFixedJoint,physx::PxFixedJointGeneratedValues>::onComShift(uint64_t a1, unsigned int a2)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v30 = 0;
  v31[0] = 0;
  (*(**(a1 + 96) + 56))(*(a1 + 96), &v30, v31);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v23, v31[a2 - 1]);
  v4 = 28 * a2;
  v5 = (*(a1 + v4 + 56) - v27) + (*(a1 + v4 + 56) - v27);
  v6 = (*(a1 + v4 + 60) - v28) + (*(a1 + v4 + 60) - v28);
  v7 = (*(a1 + v4 + 64) - v29) + (*(a1 + v4 + 64) - v29);
  v8 = (v26 * v26) + -0.5;
  v9 = (-(v24 * v6) - (v23 * v5)) - (v25 * v7);
  v10 = ((v26 * ((v25 * v6) - (v24 * v7))) + (v5 * v8)) - (v23 * v9);
  v11 = ((v26 * ((v23 * v7) - (v25 * v5))) + (v6 * v8)) - (v24 * v9);
  v12 = ((v26 * ((v24 * v5) - (v23 * v6))) + (v7 * v8)) - (v25 * v9);
  v14 = *(a1 + v4 + 48);
  v13 = *(a1 + v4 + 52);
  v15 = *(a1 + v4 + 40);
  v16 = *(a1 + v4 + 44);
  v17 = (((v26 * v16) - (v24 * v13)) - (v25 * v15)) + (v14 * v23);
  v18 = (((v26 * v14) - (v25 * v13)) - (v23 * v16)) + (v15 * v24);
  v19 = (((v23 * v15) + (v26 * v13)) + (v24 * v16)) + (v25 * v14);
  v20 = *(a1 + 96);
  v21 = (*(a1 + 104) + v4);
  v21[4] = (((v26 * v15) - (v23 * v13)) - (v24 * v14)) + (v16 * v25);
  v21[5] = v17;
  v21[6] = v18;
  v21[7] = v19;
  v21[8] = v10;
  v21[9] = v11;
  v21[10] = v12;
  return (*(*v20 + 72))(v20);
}

uint64_t physx::Ext::Joint<physx::PxFixedJoint,physx::PxFixedJointGeneratedValues>::onOriginShift(uint64_t a1, float *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16[0] = 0;
  result = (*(**(a1 + 96) + 56))(*(a1 + 96), &v15, v16);
  if (v15)
  {
    if (v16[0])
    {
      return result;
    }

    v5 = 68;
    v6 = 64;
    v7 = 60;
    v8 = 92;
    v9 = 88;
    v10 = 84;
  }

  else
  {
    v5 = 40;
    v6 = 36;
    v7 = 32;
    v8 = 64;
    v9 = 60;
    v10 = 56;
  }

  v11 = a2[1];
  *(a1 + v10) = *(a1 + v10) - *a2;
  *(a1 + v9) = *(a1 + v9) - v11;
  *(a1 + v8) = *(a1 + v8) - a2[2];
  v12 = *(a1 + 96);
  v13 = *(a1 + 104);
  v14 = a2[1];
  *(v13 + v7) = *(v13 + v7) - *a2;
  *(v13 + v6) = *(v13 + v6) - v14;
  *(v13 + v5) = *(v13 + v5) - a2[2];
  return (*(*v12 + 72))(v12);
}

uint64_t physx::Ext::Joint<physx::PxFixedJoint,physx::PxFixedJointGeneratedValues>::onConstraintRelease(void *a1)
{
  if (a1[13])
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  a1[13] = 0;
  v2 = *(*a1 + 32);

  return v2(a1);
}

uint64_t non-virtual thunk tophysx::Ext::Joint<physx::PxFixedJoint,physx::PxFixedJointGeneratedValues>::getExternalReference(uint64_t a1, _DWORD *a2)
{
  result = a1 - 24;
  *a2 = 0;
  return result;
}

void non-virtual thunk tophysx::Ext::FixedJoint::~FixedJoint(physx::Ext::FixedJoint *this)
{
  physx::Ext::Joint<physx::PxFixedJoint,physx::PxFixedJointGeneratedValues>::~Joint(this - 24);
}

{
  physx::Ext::Joint<physx::PxFixedJoint,physx::PxFixedJointGeneratedValues>::~Joint(this - 24);
  v1 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

  v1();
}

float physx::Ext::DistanceJoint::DistanceJoint(uint64_t a1, float *a2, uint64_t a3, float32x4_t *a4, uint64_t a5, float32x4_t *a6)
{
  v10 = 3;
  v7 = physx::Ext::Joint<physx::PxDistanceJoint,physx::PxDistanceJointGeneratedValues>::Joint(a1, 260, &v10, a3, a4, a5, a6, 0x70u);
  *v7 = &unk_1F5D28448;
  v7[3] = &unk_1F5D28618;
  v8 = v7[13];
  *(v8 + 92) = 0;
  *(v8 + 80) = 0;
  result = *a2 * 0.025;
  *(v8 + 88) = result;
  *(v8 + 100) = 2;
  return result;
}

uint64_t physx::Ext::Joint<physx::PxDistanceJoint,physx::PxDistanceJointGeneratedValues>::Joint(uint64_t a1, __int16 a2, __int16 *a3, uint64_t a4, float32x4_t *a5, uint64_t a6, float32x4_t *a7, unsigned int a8)
{
  v13 = *a3;
  *(a1 + 8) = a2;
  *(a1 + 10) = v13;
  *a1 = &unk_1F5D28958;
  *(a1 + 24) = &unk_1F5D28B18;
  *(a1 + 32) = 0;
  *(a1 + 96) = 0;
  *(a1 + 16) = 0;
  if (a8)
  {
    v14 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, a8, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxextensions/src/ExtJoint.h", 454);
  }

  else
  {
    v14 = 0;
  }

  v15 = a5[1].i32[2];
  _Q1 = *a5;
  _Q2 = vmulq_f32(_Q1, _Q1);
  _S3 = a5->i64[1];
  __asm { FMLA            S2, S3, V1.S[2] }

  _S3 = HIDWORD(*a5);
  __asm { FMLA            S2, S3, V1.S[3] }

  _Q2.f32[0] = sqrtf(_Q2.f32[0]);
  v24 = vdivq_f32(*a5, vdupq_lane_s32(*_Q2.f32, 0));
  _Q2.i64[0] = a5[1].i64[0];
  *(a1 + 40) = v24;
  *(a1 + 56) = _Q2.i64[0];
  *(a1 + 64) = v15;
  _Q0 = *a7;
  _Q1 = vmulq_f32(_Q0, _Q0);
  _Q2.i32[0] = a7->i64[1];
  __asm { FMLA            S1, S2, V0.S[2] }

  _Q2.i32[0] = HIDWORD(*a7);
  __asm { FMLA            S1, S2, V0.S[3] }

  _Q1.f32[0] = sqrtf(_Q1.f32[0]);
  _Q2.i32[0] = a7[1].i32[2];
  v27 = a7[1].i64[0];
  *(a1 + 68) = vdivq_f32(*a7, vdupq_lane_s32(*_Q1.f32, 0));
  *(a1 + 84) = v27;
  *(a1 + 92) = _Q2.i32[0];
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v61, a4);
  v28 = v63;
  v29 = (a5[1].f32[0] - v65) + (a5[1].f32[0] - v65);
  v30 = (a5[1].f32[1] - v66) + (a5[1].f32[1] - v66);
  v31 = (a5[1].f32[2] - v67) + (a5[1].f32[2] - v67);
  v32 = (v64 * v64) + -0.5;
  v33 = (-(v62 * v30) - (v61 * v29)) - (v63 * v31);
  v34 = ((v64 * ((v63 * v30) - (v62 * v31))) + (v29 * v32)) - (v61 * v33);
  v35 = (v64 * ((v61 * v31) - (v63 * v29))) + (v30 * v32);
  v36 = (v64 * ((v62 * v29) - (v61 * v30))) + (v31 * v32);
  v38 = a5->f32[2];
  v37 = a5->f32[3];
  v39 = a5->f32[1];
  v40 = (((v64 * v39) - (v62 * v37)) - (v63 * a5->f32[0])) + (v38 * v61);
  v41 = (((v64 * v38) - (v63 * v37)) - (v61 * v39)) + (a5->f32[0] * v62);
  v42 = v35 - (v62 * v33);
  v43 = (((v61 * a5->f32[0]) + (v64 * v37)) + (v62 * v39)) + (v63 * v38);
  *(v14 + 16) = (((v64 * a5->f32[0]) - (v61 * v37)) - (v62 * v38)) + (v39 * v63);
  *(v14 + 20) = v40;
  *(v14 + 24) = v41;
  *(v14 + 28) = v43;
  *(v14 + 32) = v34;
  *(v14 + 36) = v42;
  *(v14 + 40) = v36 - (v28 * v33);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v61, a6);
  v44 = v63;
  v45 = (a7[1].f32[0] - v65) + (a7[1].f32[0] - v65);
  v46 = (a7[1].f32[1] - v66) + (a7[1].f32[1] - v66);
  v47 = (a7[1].f32[2] - v67) + (a7[1].f32[2] - v67);
  v48 = (v64 * v64) + -0.5;
  v49 = (-(v62 * v46) - (v61 * v45)) - (v63 * v47);
  v50 = ((v64 * ((v63 * v46) - (v62 * v47))) + (v45 * v48)) - (v61 * v49);
  v51 = ((v64 * ((v61 * v47) - (v63 * v45))) + (v46 * v48)) - (v62 * v49);
  v52 = ((v64 * ((v62 * v45) - (v61 * v46))) + (v47 * v48)) - (v63 * v49);
  v54 = a7->f32[2];
  v53 = a7->f32[3];
  v55 = a7->f32[1];
  v56 = (((v64 * v55) - (v62 * v53)) - (v63 * a7->f32[0])) + (v54 * v61);
  v57 = (((v64 * v54) - (v63 * v53)) - (v61 * v55)) + (a7->f32[0] * v62);
  v58 = ((v61 * a7->f32[0]) + (v64 * v53)) + (v62 * v55);
  *(v14 + 44) = (((v64 * a7->f32[0]) - (v61 * v53)) - (v62 * v54)) + (v55 * v63);
  *(v14 + 48) = v56;
  *(v14 + 52) = v57;
  *(v14 + 56) = v58 + (v44 * v54);
  *(v14 + 60) = v50;
  *(v14 + 64) = v51;
  *(v14 + 68) = v52;
  __asm { FMOV            V0.4S, #1.0 }

  *v14 = _Q0;
  *(a1 + 104) = v14;
  return a1;
}

uint64_t physx::Ext::Joint<physx::PxFixedJoint,physx::PxFixedJointGeneratedValues>::Joint(uint64_t a1, __int16 a2, __int16 *a3, uint64_t a4, float32x4_t *a5, uint64_t a6, float32x4_t *a7, unsigned int a8)
{
  v13 = *a3;
  *(a1 + 8) = a2;
  *(a1 + 10) = v13;
  *a1 = &unk_1F5D28B80;
  *(a1 + 24) = &unk_1F5D28CF0;
  *(a1 + 32) = 0;
  *(a1 + 96) = 0;
  *(a1 + 16) = 0;
  if (a8)
  {
    v14 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, a8, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxextensions/src/ExtJoint.h", 454);
  }

  else
  {
    v14 = 0;
  }

  v15 = a5[1].i32[2];
  _Q1 = *a5;
  _Q2 = vmulq_f32(_Q1, _Q1);
  _S3 = a5->i64[1];
  __asm { FMLA            S2, S3, V1.S[2] }

  _S3 = HIDWORD(*a5);
  __asm { FMLA            S2, S3, V1.S[3] }

  _Q2.f32[0] = sqrtf(_Q2.f32[0]);
  v24 = vdivq_f32(*a5, vdupq_lane_s32(*_Q2.f32, 0));
  _Q2.i64[0] = a5[1].i64[0];
  *(a1 + 40) = v24;
  *(a1 + 56) = _Q2.i64[0];
  *(a1 + 64) = v15;
  _Q0 = *a7;
  _Q1 = vmulq_f32(_Q0, _Q0);
  _Q2.i32[0] = a7->i64[1];
  __asm { FMLA            S1, S2, V0.S[2] }

  _Q2.i32[0] = HIDWORD(*a7);
  __asm { FMLA            S1, S2, V0.S[3] }

  _Q1.f32[0] = sqrtf(_Q1.f32[0]);
  _Q2.i32[0] = a7[1].i32[2];
  v27 = a7[1].i64[0];
  *(a1 + 68) = vdivq_f32(*a7, vdupq_lane_s32(*_Q1.f32, 0));
  *(a1 + 84) = v27;
  *(a1 + 92) = _Q2.i32[0];
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v61, a4);
  v28 = v63;
  v29 = (a5[1].f32[0] - v65) + (a5[1].f32[0] - v65);
  v30 = (a5[1].f32[1] - v66) + (a5[1].f32[1] - v66);
  v31 = (a5[1].f32[2] - v67) + (a5[1].f32[2] - v67);
  v32 = (v64 * v64) + -0.5;
  v33 = (-(v62 * v30) - (v61 * v29)) - (v63 * v31);
  v34 = ((v64 * ((v63 * v30) - (v62 * v31))) + (v29 * v32)) - (v61 * v33);
  v35 = (v64 * ((v61 * v31) - (v63 * v29))) + (v30 * v32);
  v36 = (v64 * ((v62 * v29) - (v61 * v30))) + (v31 * v32);
  v38 = a5->f32[2];
  v37 = a5->f32[3];
  v39 = a5->f32[1];
  v40 = (((v64 * v39) - (v62 * v37)) - (v63 * a5->f32[0])) + (v38 * v61);
  v41 = (((v64 * v38) - (v63 * v37)) - (v61 * v39)) + (a5->f32[0] * v62);
  v42 = v35 - (v62 * v33);
  v43 = (((v61 * a5->f32[0]) + (v64 * v37)) + (v62 * v39)) + (v63 * v38);
  *(v14 + 16) = (((v64 * a5->f32[0]) - (v61 * v37)) - (v62 * v38)) + (v39 * v63);
  *(v14 + 20) = v40;
  *(v14 + 24) = v41;
  *(v14 + 28) = v43;
  *(v14 + 32) = v34;
  *(v14 + 36) = v42;
  *(v14 + 40) = v36 - (v28 * v33);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v61, a6);
  v44 = v63;
  v45 = (a7[1].f32[0] - v65) + (a7[1].f32[0] - v65);
  v46 = (a7[1].f32[1] - v66) + (a7[1].f32[1] - v66);
  v47 = (a7[1].f32[2] - v67) + (a7[1].f32[2] - v67);
  v48 = (v64 * v64) + -0.5;
  v49 = (-(v62 * v46) - (v61 * v45)) - (v63 * v47);
  v50 = ((v64 * ((v63 * v46) - (v62 * v47))) + (v45 * v48)) - (v61 * v49);
  v51 = ((v64 * ((v61 * v47) - (v63 * v45))) + (v46 * v48)) - (v62 * v49);
  v52 = ((v64 * ((v62 * v45) - (v61 * v46))) + (v47 * v48)) - (v63 * v49);
  v54 = a7->f32[2];
  v53 = a7->f32[3];
  v55 = a7->f32[1];
  v56 = (((v64 * v55) - (v62 * v53)) - (v63 * a7->f32[0])) + (v54 * v61);
  v57 = (((v64 * v54) - (v63 * v53)) - (v61 * v55)) + (a7->f32[0] * v62);
  v58 = ((v61 * a7->f32[0]) + (v64 * v53)) + (v62 * v55);
  *(v14 + 44) = (((v64 * a7->f32[0]) - (v61 * v53)) - (v62 * v54)) + (v55 * v63);
  *(v14 + 48) = v56;
  *(v14 + 52) = v57;
  *(v14 + 56) = v58 + (v44 * v54);
  *(v14 + 60) = v50;
  *(v14 + 64) = v51;
  *(v14 + 68) = v52;
  __asm { FMOV            V0.4S, #1.0 }

  *v14 = _Q0;
  *(a1 + 104) = v14;
  return a1;
}

float physx::Ext::joint::computeDerived(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, float *a5, float *a6, char a7, double a8, double a9, double a10, double a11, double a12, double a13, int8x16_t a14, int8x16_t a15)
{
  physx::Ext::joint::computeJointFrames(a4, a5, a1, a2, a3, a8, a9, a10, a11, a12, a13, a14, a15);
  v19 = *a4;
  v20 = *a5;
  if (a7)
  {
    v22 = a5[1];
    v21 = a5[2];
    v23 = a5[3];
    if (((((a4[1] * v22) + (v19 * v20)) + (a4[2] * v21)) + (a4[3] * v23)) < 0.0)
    {
      v20 = -v20;
      v22 = -v22;
      v21 = -v21;
      v23 = -v23;
      *a5 = v20;
      a5[1] = v22;
      a5[2] = v21;
      a5[3] = v23;
      v19 = *a4;
    }
  }

  else
  {
    v21 = a5[2];
    v23 = a5[3];
    v22 = a5[1];
  }

  v24 = a4[1];
  v25 = a4[2];
  v26 = a4[3];
  v27 = a5[4] - a4[4];
  v28 = a5[5] - a4[5];
  v29 = a5[6] - a4[6];
  v30 = v27 + v27;
  v31 = v28 + v28;
  v32 = v29 + v29;
  v33 = (v26 * v26) + -0.5;
  v34 = (-(v24 * v31) - (v19 * v30)) - (v25 * v32);
  *a6 = (((v26 * v20) - (v19 * v23)) - (v24 * v21)) + (v22 * v25);
  a6[1] = (((v26 * v22) - (v24 * v23)) - (v25 * v20)) + (v21 * v19);
  a6[2] = (((v26 * v21) - (v25 * v23)) - (v19 * v22)) + (v20 * v24);
  a6[3] = (((v20 * v19) + (v26 * v23)) + (v24 * v22)) + (v25 * v21);
  result = ((v26 * ((v24 * v30) - (v19 * v31))) + (v32 * v33)) - (v25 * v34);
  a6[4] = ((v26 * ((v25 * v31) - (v24 * v32))) + (v30 * v33)) - (v19 * v34);
  a6[5] = ((v26 * ((v19 * v32) - (v25 * v30))) + (v31 * v33)) - (v24 * v34);
  a6[6] = result;
  return result;
}

uint64_t physx::Ext::Joint<physx::PxDistanceJoint,physx::PxDistanceJointGeneratedValues>::~Joint(uint64_t a1)
{
  *a1 = &unk_1F5D28958;
  *(a1 + 24) = &unk_1F5D28B18;
  if (*(a1 + 10))
  {
    if (*(a1 + 104))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }

    *(a1 + 104) = 0;
  }

  return a1;
}

uint64_t physx::Ext::Joint<physx::PxFixedJoint,physx::PxFixedJointGeneratedValues>::~Joint(uint64_t a1)
{
  *a1 = &unk_1F5D28B80;
  *(a1 + 24) = &unk_1F5D28CF0;
  if (*(a1 + 10))
  {
    if (*(a1 + 104))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }

    *(a1 + 104) = 0;
  }

  return a1;
}

void *physx::PxPrismaticJointCreate(uint64_t a1, uint64_t a2, float32x4_t *a3, uint64_t a4, float32x4_t *a5)
{
  v10 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v11 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Ext::PrismaticJoint>::getName() [T = physx::Ext::PrismaticJoint]";
  }

  else
  {
    v11 = "<allocation names disabled>";
  }

  v12 = (*(*(v10 + 24) + 16))(v10 + 24, 112, v11, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxextensions/src/ExtPrismaticJoint.cpp", 45);
  v13 = (*(*a1 + 40))(a1);
  v14 = physx::Ext::PrismaticJoint::PrismaticJoint(v12, v13, a2, a3, a4, a5);
  v15 = (*(*a1 + 216))(a1, a2, a4, v12 + 3, &physx::Ext::PrismaticJoint::sShaders, 128, v14);
  v12[12] = v15;
  if (!v15)
  {
    (*(*v12 + 32))(v12);
    return 0;
  }

  return v12;
}

uint64_t physx::Ext::PrismaticJoint::setProjectionAngularTolerance(physx::Ext::PrismaticJoint *this, float a2)
{
  v2 = this + 96;
  v3 = *(this + 12);
  *(*(v2 + 1) + 112) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::PrismaticJoint::setProjectionLinearTolerance(physx::Ext::PrismaticJoint *this, float a2)
{
  v2 = this + 96;
  v3 = *(this + 12);
  *(*(v2 + 1) + 108) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::PrismaticJoint::setPrismaticJointFlags(uint64_t a1, _WORD *a2)
{
  v3 = a1 + 96;
  v2 = *(a1 + 96);
  *(*(v3 + 8) + 116) = *a2;
  return (*(*v2 + 72))();
}

uint64_t physx::Ext::PrismaticJoint::setPrismaticJointFlag(uint64_t a1, __int16 a2, int a3)
{
  v3 = *(a1 + 104);
  if (a3)
  {
    v4 = *(v3 + 116) | a2;
  }

  else
  {
    v4 = *(v3 + 116) & ~a2;
  }

  *(v3 + 116) = v4;
  return (*(**(a1 + 96) + 72))();
}

float physx::Ext::PrismaticJoint::getLimit@<S0>(physx::Ext::PrismaticJoint *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 13);
  *a2 = *(v2 + 80);
  result = *(v2 + 96);
  *(a2 + 16) = result;
  *(a2 + 20) = *(v2 + 100);
  return result;
}

uint64_t physx::Ext::PrismaticJoint::setLimit(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 104);
  v3 = *a2;
  *(v2 + 92) = *(a2 + 12);
  *(v2 + 80) = v3;
  return (*(**(a1 + 96) + 72))();
}

uint64_t physx::Ext::PrismaticJoint::exportExtraData(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 104))
  {
    (*(*a2 + 24))(a2, 16);
    (*(*a2 + 16))(a2, *(a1 + 104), 128);
  }

  v4 = *(a1 + 32);
  v5 = *(*a2 + 32);

  return v5(a2, v4);
}

uint64_t PrismaticJointSolverPrep(uint64_t a1, float32x2_t *a2, double a3, double a4, double a5, double a6, double a7, double a8, int8x16_t a9, int8x16_t a10, uint64_t a11, __int128 *a12, uint64_t a13, float32x2_t *a14, float32x2_t *a15, uint64_t a16, float32x2_t *a17, float32x2_t *a18)
{
  physx::Ext::joint::ConstraintHelper::ConstraintHelper(&v75, a1, a12, &v86, &v83, a2, a13, a14, a3, a4, a5, a6, a7, a8, a9, a10, a15);
  _S0 = v86.i32[0];
  *_D1.i32 = v87;
  _S2 = v88;
  _V4.D[1] = v83.i64[1];
  __asm
  {
    FMLA            S5, S1, V4.S[2]
    FMLA            S5, S2, V4.S[3]
  }

  if (_S5 < 0.0)
  {
    v83 = vnegq_f32(v83);
  }

  v31 = *(a13 + 116);
  v32 = (v31 & 2) != 0 && *(a13 + 104) >= *(a13 + 100);
  v33 = (v85 - v90) + (v85 - v90);
  v34 = (v88 * v88) + -0.5;
  v35 = vsub_f32(v84, v89);
  _D16 = vadd_f32(v35, v35);
  v37.i32[0] = vdup_lane_s32(_D16, 1).u32[0];
  v38 = (vmuls_lane_f32(*&v86.i32[1], _D16, 1) + (*v86.i32 * _D16.f32[0])) + (v87 * v33);
  v37.f32[1] = v33;
  v39 = vdup_lane_s32(_D1, 0);
  v39.i32[0] = v86.i32[1];
  __asm { FMLA            S7, S0, V16.S[1] }

  v73 = vmla_n_f32(vmla_n_f32(vmul_n_f32(vneg_f32(vmla_f32(vmul_f32(v37, vneg_f32(vzip1_s32(_D1, v86))), vext_s8(v37, _D16, 4uLL), v39)), v88), _D16, v34), v86, v38);
  v74 = ((v33 * v34) - (_S7 * v88)) + (v87 * v38);
  if (v32)
  {
    v41 = 7;
  }

  else
  {
    v41 = 6;
  }

  physx::Ext::joint::ConstraintHelper::prepareLockedAxes(&v75, &v86, v83.f32, &v73, v41, 7, &v71, &v69);
  v42 = v72 + a14[3].f32[0];
  *a17 = vadd_f32(v71, a14[2]);
  a17[1].f32[0] = v42;
  v43 = v70 + a15[3].f32[0];
  *a18 = vadd_f32(v69, a15[2]);
  a18[1].f32[0] = v43;
  if ((v31 & 2) != 0 && !v32)
  {
    v44 = (v88 * v88) + -0.5;
    v45 = 0.0;
    v46 = ((*&v86.i32[1] * 0.0) + (*v86.i32 * 2.0)) + (v87 * 0.0);
    v47 = (v88 * ((v87 * -0.0) + (*&v86.i32[1] * 0.0))) + (v44 * 2.0);
    v48 = (v88 * ((*v86.i32 * -0.0) + (v87 * 2.0))) + (v44 * 0.0);
    v49 = (v88 * ((*&v86.i32[1] * -2.0) + (*v86.i32 * 0.0))) + (v44 * 0.0);
    v50 = v73.f32[0];
    v51 = *(a13 + 100);
    v52 = *(a13 + 92);
    if (v52 <= 0.0 && *(a13 + 88) <= 0.0)
    {
      v45 = *(a13 + 96);
    }

    v53 = v47 + (*v86.i32 * v46);
    v54 = v48 + (*&v86.i32[1] * v46);
    v55 = v49 + (v87 * v46);
    if ((v73.f32[0] + v45) > v51)
    {
      v56 = v76;
      v76 += 80;
      *(v56 + 78) = 0;
      *v56 = v53;
      *(v56 + 4) = v54;
      *(v56 + 8) = v55;
      v57 = (v79 * v53) - (v77 * v55);
      v58 = (v77 * v54) - (v78 * v53);
      *(v56 + 16) = (v78 * v55) - (v79 * v54);
      *(v56 + 20) = v57;
      *(v56 + 24) = v58;
      *(v56 + 32) = v53;
      *(v56 + 36) = v54;
      *(v56 + 40) = v55;
      v59 = (v82 * v53) - (v80 * v55);
      v60 = (v80 * v54) - (v81 * v53);
      *(v56 + 48) = (v81 * v55) - (v82 * v54);
      *(v56 + 52) = v59;
      *(v56 + 56) = v60;
      *(v56 + 12) = v51 - v50;
      physx::Ext::joint::ConstraintHelper::addLimit(&v75, v56, a13 + 80);
      v52 = *(a13 + 92);
    }

    v61 = *(a13 + 104);
    if (v52 <= 0.0 && *(a13 + 88) <= 0.0)
    {
      v62 = *(a13 + 96);
    }

    else
    {
      v62 = 0.0;
    }

    if ((v62 - v50) > -v61)
    {
      v63 = v76;
      v76 += 80;
      *(v63 + 78) = 0;
      *v63 = -v53;
      *(v63 + 4) = -v54;
      *(v63 + 8) = -v55;
      v64 = (v55 * v77) + (v79 * -v53);
      v65 = (v53 * v78) + (v77 * -v54);
      *(v63 + 16) = (v54 * v79) + (v78 * -v55);
      *(v63 + 20) = v64;
      *(v63 + 24) = v65;
      *(v63 + 32) = -v53;
      *(v63 + 36) = -v54;
      *(v63 + 40) = -v55;
      v66 = (v55 * v80) + (v82 * -v53);
      v67 = (v53 * v81) + (v80 * -v54);
      *(v63 + 48) = (v54 * v82) + (v81 * -v55);
      *(v63 + 52) = v66;
      *(v63 + 56) = v67;
      *(v63 + 12) = v50 - v61;
      physx::Ext::joint::ConstraintHelper::addLimit(&v75, v63, a13 + 80);
    }
  }

  return -858993459 * ((v76 - v75) >> 4);
}

void PrismaticJointProject(float *a1, float *a2, float *a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, int8x16_t a11, int8x16_t a12)
{
  physx::Ext::joint::computeDerived(a1, a2, a3, &v130, &v123, &v117, 1, a5, a6, a7, a8, a9, a10, a11, a12);
  v17 = v121;
  v16 = v122;
  v18 = a1[27];
  v19 = (v17 * v17) + (v16 * v16);
  v20 = v18 * v18;
  if (v19 > (v18 * v18))
  {
    v21 = 1.0 / sqrtf(v19);
    v17 = v18 * (v121 * v21);
    v16 = v18 * (v122 * v21);
  }

  v23 = __sincosf_stret(a1[28] * 0.5);
  if (v23.__sinval > 0.9999)
  {
    v24 = v117;
    _D2 = v118;
    v22.f32[0] = v119;
    goto LABEL_9;
  }

  v22.f32[0] = v119;
  _D2 = v118;
  _D5 = vbsl_s8(vdup_lane_s32(vmvn_s8(vcge_f32(v22, 0)), 0), vneg_f32(v118), v118);
  v24 = v117;
  v27 = -v117;
  if (v119 >= 0.0)
  {
    v27 = v117;
  }

  _S16 = _D5.i32[1];
  __asm { FMLA            S7, S16, V5.S[1] }

  if (_S7 <= (v23.__sinval * v23.__sinval))
  {
LABEL_9:
    if (v19 <= v20)
    {
      return;
    }

    goto LABEL_10;
  }

  v34 = 1.0 / sqrtf(_S7);
  v24 = (v23.__sinval * v27) * v34;
  _D2 = vmul_n_f32(vmul_n_f32(_D5, v23.__sinval), v34);
  v22.i32[0] = LODWORD(v23.__cosval);
LABEL_10:
  if (a4)
  {
    v35 = a1[15] * -2.0;
    v36 = a1[16] * -2.0;
    v37 = a1[17] * -2.0;
    _S6 = a1[13];
    v38 = a1[14];
    v40 = (v38 * v38) + -0.5;
    _S16 = a1[11];
    _S7 = a1[12];
    v43 = ((v36 * _S7) + (_S16 * v35)) + (_S6 * v37);
    v44 = ((v35 * v40) - (((_S7 * v37) - (_S6 * v36)) * v38)) + (_S16 * v43);
    v45 = ((v36 * v40) - (((_S6 * v35) - (_S16 * v37)) * v38)) + (_S7 * v43);
    v46 = ((v37 * v40) - (((_S16 * v36) - (_S7 * v35)) * v38)) + (_S6 * v43);
    _S18 = v44 + v44;
    v48 = v45 + v45;
    _S17 = v46 + v46;
    v50 = (v22.f32[0] * v22.f32[0]) + -0.5;
    __asm { FMLA            S21, S17, V2.S[1] }

    v52 = ((v22.f32[0] * ((_D2.f32[0] * _S17) - (_D2.f32[1] * (v45 + v45)))) + ((v44 + v44) * v50)) + (v24 * _S21);
    __asm { FMLA            S23, S18, V2.S[1] }

    v54 = ((v22.f32[0] * _S23) + (v48 * v50)) + (_D2.f32[0] * _S21);
    __asm
    {
      FMLA            S17, S21, V2.S[1]
      FMLA            S0, S7, V2.S[1]
      FMLS            S20, S16, V2.S[1]
    }

    v58 = _S20 + (_S6 * v24);
    v59 = ((vmuls_lane_f32(v38, _D2, 1) - (v22.f32[0] * _S6)) - (v24 * _S7)) + (_S16 * _D2.f32[0]);
    __asm { FMLA            S4, S6, V2.S[1] }

    v61 = (v120 + v52) + (v120 + v52);
    v62 = (v17 + v54) + (v17 + v54);
    v63 = (v16 + _S17) + (v16 + _S17);
    v64 = (v133 * v133) + -0.5;
    v65 = ((v131 * v62) + (v130 * v61)) + (v132 * v63);
    v66 = ((v133 * ((v131 * v63) - (v132 * v62))) + (v61 * v64)) + (v130 * v65);
    v67 = ((v133 * ((v132 * v61) - (v130 * v63))) + (v62 * v64)) + (v131 * v65);
    v68 = ((v133 * ((v130 * v62) - (v131 * v61))) + (v63 * v64)) + (v132 * v65);
    v69 = v134 + v66;
    v70 = v135 + v67;
    v71 = v136 + v68;
    v72 = (((_S4 * v130) + (v133 * _S0)) + (v131 * v59)) - (v58 * v132);
    v73 = (((_S4 * v131) + (v133 * v58)) + (v132 * _S0)) - (v59 * v130);
    v74 = (((_S4 * v132) + (v133 * v59)) + (v130 * v58)) - (_S0 * v131);
    v75 = (((v133 * _S4) - (v130 * _S0)) - (v131 * v58)) - (v132 * v59);
    *a3 = v72;
    a3[1] = v73;
    a3[2] = v74;
    a3[3] = v75;
    a3[4] = v69;
    a3[5] = v70;
    a3[6] = v71;
    v76 = sqrtf((((v73 * v73) + (v72 * v72)) + (v74 * v74)) + (v75 * v75));
    if (v76 != 0.0)
    {
      *a3 = v72 / v76;
      a3[1] = v73 / v76;
      a3[2] = v74 / v76;
      a3[3] = v75 / v76;
    }
  }

  else
  {
    v77 = a1[8] * -2.0;
    v78 = a1[9] * -2.0;
    v79 = a1[10] * -2.0;
    _S6 = a1[6];
    v80 = a1[7];
    v82 = (v80 * v80) + -0.5;
    _S16 = a1[4];
    _S7 = a1[5];
    v85 = ((v78 * _S7) + (_S16 * v77)) + (_S6 * v79);
    v86 = ((v77 * v82) - (((_S7 * v79) - (_S6 * v78)) * v80)) + (_S16 * v85);
    v87 = ((v78 * v82) - (((_S6 * v77) - (_S16 * v79)) * v80)) + (_S7 * v85);
    v88 = ((v79 * v82) - (((_S16 * v78) - (_S7 * v77)) * v80)) + (_S6 * v85);
    _S0 = (v86 - v120) + (v86 - v120);
    v90 = (v87 - v17) + (v87 - v17);
    _S17 = (v88 - v16) + (v88 - v16);
    v92 = (v22.f32[0] * v22.f32[0]) + -0.5;
    __asm { FMLS            S21, S17, V2.S[1] }

    v94 = ((v22.f32[0] * (vmuls_lane_f32(v90, _D2, 1) - (_S17 * _D2.f32[0]))) + (_S0 * v92)) - (v24 * _S21);
    __asm { FMLS            S23, S0, V2.S[1] }

    v96 = ((v22.f32[0] * _S23) + (v90 * v92)) - (_S21 * _D2.f32[0]);
    __asm
    {
      FMLS            S17, S21, V2.S[1]
      FMLS            S0, S7, V2.S[1]
      FMLA            S19, S16, V2.S[1]
    }

    v100 = _S19 - (_S6 * v24);
    v101 = ((-(_D2.f32[1] * v80) - (v22.f32[0] * _S6)) + (v24 * _S7)) - (_S16 * _D2.f32[0]);
    __asm { FMLS            S4, S6, V2.S[1] }

    v103 = v94 + v94;
    v104 = (v126 * v126) + -0.5;
    v105 = ((v124 * (v96 + v96)) + (v123 * (v94 + v94))) + (v125 * (_S17 + _S17));
    v106 = ((v126 * ((v124 * (_S17 + _S17)) - (v125 * (v96 + v96)))) + ((v94 + v94) * v104)) + (v123 * v105);
    v107 = ((v126 * ((v125 * (v94 + v94)) - (v123 * (_S17 + _S17)))) + ((v96 + v96) * v104)) + (v124 * v105);
    v108 = ((v126 * ((v123 * (v96 + v96)) - (v124 * v103))) + ((_S17 + _S17) * v104)) + (v125 * v105);
    v109 = v127 + v106;
    v110 = v128 + v107;
    v111 = v129 + v108;
    v112 = (((_S4 * v123) + (v126 * _S0)) + (v124 * v101)) - (v100 * v125);
    v113 = (((_S4 * v124) + (v126 * v100)) + (v125 * _S0)) - (v101 * v123);
    v114 = (((_S4 * v125) + (v126 * v101)) + (v123 * v100)) - (_S0 * v124);
    v115 = (((v126 * _S4) - (v123 * _S0)) - (v124 * v100)) - (v125 * v101);
    *a2 = v112;
    a2[1] = v113;
    a2[2] = v114;
    a2[3] = v115;
    a2[4] = v109;
    a2[5] = v110;
    a2[6] = v111;
    v116 = sqrtf((((v113 * v113) + (v112 * v112)) + (v114 * v114)) + (v115 * v115));
    if (v116 != 0.0)
    {
      *a2 = v112 / v116;
      a2[1] = v113 / v116;
      a2[2] = v114 / v116;
      a2[3] = v115 / v116;
    }
  }
}

void PrismaticJointVisualize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, double a6, double a7, double a8, double a9, double a10, double a11, int8x16_t a12, int8x16_t a13)
{
  v16 = physx::Ext::joint::computeJointFrames(&v23, v19, a2, a3, a4, a6, a7, a8, a9, a10, a11, a12, a13);
  if (a5)
  {
    (*(*a1 + 16))(a1, &v23, v19, v16);
  }

  if ((a5 & 2) != 0 && (*(a2 + 116) & 2) != 0)
  {
    v17 = ((((v20 - v27) + (v20 - v27)) * ((v26 * v26) + -0.5)) - (((v24 * ((v22 - v29) + (v22 - v29))) - (v25 * ((v21 - v28) + (v21 - v28)))) * v26)) + (v23 * (((((v21 - v28) + (v21 - v28)) * v24) + (v23 * ((v20 - v27) + (v20 - v27)))) + (v25 * ((v22 - v29) + (v22 - v29)))));
    v18 = 0.0;
    if (*(a2 + 92) <= 0.0 && *(a2 + 88) <= 0.0)
    {
      v18 = *(a2 + 96);
    }

    (*(*a1 + 24))(a1, &v23, v19, v17 < (v18 + *(a2 + 104)));
    (*(*a1 + 24))(a1, &v23, v19, v17 > (*(a2 + 100) - v18));
  }
}

void *physx::PxRevoluteJointCreate(uint64_t a1, uint64_t a2, float32x4_t *a3, uint64_t a4, float32x4_t *a5)
{
  v10 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v11 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Ext::RevoluteJoint>::getName() [T = physx::Ext::RevoluteJoint]";
  }

  else
  {
    v11 = "<allocation names disabled>";
  }

  v12 = (*(*(v10 + 24) + 16))(v10 + 24, 112, v11, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxextensions/src/ExtRevoluteJoint.cpp", 45);
  v13 = (*(*a1 + 40))(a1);
  v14 = physx::Ext::RevoluteJoint::RevoluteJoint(v12, v13, a2, a3, a4, a5);
  v15 = (*(*a1 + 216))(a1, a2, a4, v12 + 3, &physx::Ext::RevoluteJoint::sShaders, 144, v14);
  v12[12] = v15;
  if (!v15)
  {
    (*(*v12 + 32))(v12);
    return 0;
  }

  return v12;
}

float physx::Ext::RevoluteJoint::getAngle(physx::Ext::RevoluteJoint *this)
{
  (*(*this + 80))(v7);
  v1 = 1.0;
  if (v7[0] == 0.0)
  {
    v4 = 0;
    v3 = 1.0;
  }

  else
  {
    v2 = sqrtf(((v7[0] * v7[0]) + 0.0) + (v8 * v8));
    v3 = v8 / v2;
    v4 = (v7[0] / v2) < 0.0;
  }

  if (v3 < -1.0)
  {
    v3 = -1.0;
  }

  if (v3 <= 1.0)
  {
    v1 = v3;
  }

  v5 = acosf(v1);
  result = v5 + v5;
  if (v4)
  {
    return -result;
  }

  return result;
}

float physx::Ext::RevoluteJoint::getLimit@<S0>(physx::Ext::RevoluteJoint *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 13);
  *a2 = *(v2 + 92);
  result = *(v2 + 108);
  *(a2 + 16) = result;
  *(a2 + 20) = *(v2 + 112);
  return result;
}

uint64_t physx::Ext::RevoluteJoint::setLimit(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 104);
  v3 = *a2;
  *(v2 + 104) = *(a2 + 12);
  *(v2 + 92) = v3;
  return (*(**(a1 + 96) + 72))();
}

uint64_t physx::Ext::RevoluteJoint::setDriveVelocity(physx::Ext::RevoluteJoint *this, float a2, int a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  *(*(this + 13) + 80) = a2;
  if (a3)
  {
    v4 = *(this + 12);
    v17 = 0;
    v18[0] = 0;
    v5 = &v17;
    (*(*v4 + 56))(v4, &v17, v18);
    v6 = 1;
    do
    {
      v7 = v6;
      if (*v5)
      {
        if ((*(**v5 + 56))(*v5))
        {
          if ((*(**v5 + 48))() == 1)
          {
            v8 = *v5;
            (*(*v8 + 432))(&v16, v8);
            if ((v16 & 1) == 0)
            {
              v9 = (*(*v8 + 56))(v8);
              v10 = (*(*v9 + 880))(v9);
              v11 = (*(*v8 + 584))(v8);
              v12 = (*(*v8 + 512))(v8);
              if (v11 < v10 || v12 != 0)
              {
                if (v11 >= v10)
                {
                  v10 = v11;
                }

                (*(*v8 + 592))(v8);
                (*(*v8 + 576))(v8, v10);
              }
            }
          }
        }
      }

      v6 = 0;
      v5 = v18;
    }

    while ((v7 & 1) != 0);
  }

  v14 = *(**(this + 12) + 72);

  return v14();
}

uint64_t physx::Ext::RevoluteJoint::setDriveForceLimit(physx::Ext::RevoluteJoint *this, float a2)
{
  v2 = this + 96;
  v3 = *(this + 12);
  *(*(v2 + 1) + 84) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::RevoluteJoint::setDriveGearRatio(physx::Ext::RevoluteJoint *this, float a2)
{
  v2 = this + 96;
  v3 = *(this + 12);
  *(*(v2 + 1) + 88) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::RevoluteJoint::setProjectionAngularTolerance(physx::Ext::RevoluteJoint *this, float a2)
{
  v2 = this + 96;
  v3 = *(this + 12);
  *(*(v2 + 1) + 124) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::RevoluteJoint::setProjectionLinearTolerance(physx::Ext::RevoluteJoint *this, float a2)
{
  v2 = this + 96;
  v3 = *(this + 12);
  *(*(v2 + 1) + 120) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::RevoluteJoint::setRevoluteJointFlag(uint64_t a1, __int16 a2, int a3)
{
  v3 = *(a1 + 104);
  if (a3)
  {
    v4 = *(v3 + 128) | a2;
  }

  else
  {
    v4 = *(v3 + 128) & ~a2;
  }

  *(v3 + 128) = v4;
  return (*(**(a1 + 96) + 72))();
}

uint64_t physx::Ext::RevoluteJoint::exportExtraData(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 104))
  {
    (*(*a2 + 24))(a2, 16);
    (*(*a2 + 16))(a2, *(a1 + 104), 144);
  }

  v4 = *(a1 + 32);
  v5 = *(*a2 + 32);

  return v5(a2, v4);
}

uint64_t RevoluteJointSolverPrep(uint64_t a1, float32x2_t *a2, double a3, double a4, double a5, double a6, double a7, double a8, int8x16_t a9, int8x16_t a10, uint64_t a11, __int128 *a12, uint64_t a13, float32x2_t *a14, float32x2_t *a15, int a16, float32x2_t *a17, float32x2_t *a18)
{
  physx::Ext::joint::ConstraintHelper::ConstraintHelper(&v77, a1, a12, &v82, &v79, a2, a13, a14, a3, a4, a5, a6, a7, a8, a9, a10, a15);
  v22 = *(a13 + 128);
  v23 = (v22 & 1) != 0 && *(a13 + 116) >= *(a13 + 112);
  _S0 = v83;
  if (a16)
  {
    _S2 = v84;
    v26 = v82;
  }

  else
  {
    v26 = v82;
    _V3.D[1] = v79.i64[1];
    __asm { FMLA            S4, S0, V3.S[2] }

    _S2 = v84;
    __asm { FMLA            S4, S2, V3.S[3] }

    if (_S4 < 0.0)
    {
      v79 = vnegq_f32(v79);
    }
  }

  v34 = (v81 - v86) + (v81 - v86);
  v35 = vdup_lane_s32(v26, 0);
  v36 = (_S2 * _S2) + -0.5;
  v35.f32[0] = v83;
  v37 = vsub_f32(v80, v85);
  v38 = vadd_f32(v37, v37);
  v39 = (vmuls_lane_f32(v26.f32[1], v38, 1) + (v26.f32[0] * v38.f32[0])) + (v83 * v34);
  v40.i32[0] = vdup_lane_s32(v38, 1).u32[0];
  v40.f32[1] = v34;
  v71 = vmla_n_f32(vmla_n_f32(vmul_n_f32(vneg_f32(vmla_f32(vmul_f32(v40, vneg_f32(v35)), vext_s8(v40, v38, 4uLL), vext_s8(v26, v35, 4uLL))), _S2), v38, v36), v26, v39);
  v72 = ((v34 * v36) - (((-v26.f32[1] * v38.f32[0]) + (v26.f32[0] * v38.f32[1])) * _S2)) + (v83 * v39);
  if (v23)
  {
    v41 = 7;
  }

  else
  {
    v41 = 6;
  }

  physx::Ext::joint::ConstraintHelper::prepareLockedAxes(&v77, &v82, v79.f32, &v71, 7, v41, &v75, &v73);
  v42 = v76 + a14[3].f32[0];
  *a17 = vadd_f32(v75, a14[2]);
  a17[1].f32[0] = v42;
  v43 = v74 + a15[3].f32[0];
  *a18 = vadd_f32(v73, a15[2]);
  a18[1].f32[0] = v43;
  if (!v23)
  {
    v45 = v83;
    v44 = v84;
    v46 = (v44 * v44) + -0.5;
    v47 = v82;
    v48 = ((v82.f32[1] * 0.0) + (v82.f32[0] * 2.0)) + (v83 * 0.0);
    v49 = ((v84 * ((v83 * -0.0) + (v82.f32[1] * 0.0))) + (v46 * 2.0)) + (v82.f32[0] * v48);
    v50 = ((v84 * ((v82.f32[0] * -0.0) + (v83 * 2.0))) + (v46 * 0.0)) + (v82.f32[1] * v48);
    v51 = ((v84 * ((v82.f32[1] * -2.0) + (v82.f32[0] * 0.0))) + (v46 * 0.0)) + (v83 * v48);
    v52 = *(a13 + 128);
    if ((v52 & 2) != 0)
    {
      v53 = v78;
      v78 += 80;
      *(v53 + 78) = 0;
      *v53 = 0;
      *(v53 + 8) = 0;
      *(v53 + 16) = -v49;
      *(v53 + 20) = -v50;
      *(v53 + 32) = 0;
      *(v53 + 40) = 0;
      v54 = *(a13 + 88);
      v55 = -(v49 * v54);
      *(v53 + 52) = -(v50 * v54);
      *(v53 + 56) = -(v51 * v54);
      v56 = *(a13 + 80);
      v57 = *(a13 + 84);
      *(v53 + 24) = -v51;
      *(v53 + 28) = v56;
      *(v53 + 44) = -v57;
      *(v53 + 48) = v55;
      *(v53 + 60) = v57;
      v58 = *(v53 + 76);
      if ((v52 & 4) != 0)
      {
        if (v56 > 0.0)
        {
          *(v53 + 44) = 0;
        }

        if (v56 < 0.0)
        {
          *(v53 + 60) = 0;
        }
      }

      *(v53 + 76) = v58 | 0x60;
    }

    if (v22)
    {
      v59 = (((v79.f32[3] * -v47.f32[0]) + (v44 * v79.f32[0])) + (-v47.f32[1] * v79.f32[2])) + (v79.f32[1] * v45);
      v60 = (((v47.f32[0] * v79.f32[0]) + (v44 * v79.f32[3])) + (v47.f32[1] * v79.f32[1])) + (v45 * v79.f32[2]);
      v61 = sqrtf(((v59 * v59) + 0.0) + (v60 * v60));
      if (v61 != 0.0)
      {
        v59 = v59 / v61;
        v60 = v60 / v61;
      }

      if (v60 < -1.0)
      {
        v60 = -1.0;
      }

      if (v60 > 1.0)
      {
        v60 = 1.0;
      }

      v62 = acosf(v60);
      v63 = v62 + v62;
      if (v59 >= 0.0)
      {
        v64 = v63;
      }

      else
      {
        v64 = -v63;
      }

      v65 = *(a13 + 116);
      if (*(a13 + 104) <= 0.0 && *(a13 + 100) <= 0.0)
      {
        v66 = *(a13 + 108);
      }

      else
      {
        v66 = 0.0;
      }

      v67 = *(a13 + 112);
      if ((v65 + v66) > v64)
      {
        v68 = v78;
        v78 += 80;
        *(v68 + 78) = 0;
        *v68 = 0;
        *(v68 + 8) = 0;
        *(v68 + 20) = -v50;
        *(v68 + 24) = -v51;
        *(v68 + 32) = 0;
        *(v68 + 40) = 0;
        *(v68 + 48) = -v49;
        *(v68 + 52) = -v50;
        *(v68 + 56) = -v51;
        *(v68 + 12) = -(v65 - v64);
        *(v68 + 16) = -v49;
        *(v68 + 76) |= 0x40u;
        physx::Ext::joint::ConstraintHelper::addLimit(&v77, v68, a13 + 92);
      }

      if ((v67 - v66) < v64)
      {
        v69 = v78;
        v78 += 80;
        *(v69 + 78) = 0;
        *v69 = 0;
        *(v69 + 8) = 0;
        *(v69 + 20) = v50;
        *(v69 + 24) = v51;
        *(v69 + 32) = 0;
        *(v69 + 40) = 0;
        *(v69 + 48) = v49;
        *(v69 + 52) = v50;
        *(v69 + 56) = v51;
        *(v69 + 12) = v67 - v64;
        *(v69 + 16) = v49;
        *(v69 + 76) |= 0x40u;
        physx::Ext::joint::ConstraintHelper::addLimit(&v77, v69, a13 + 92);
      }
    }
  }

  return -858993459 * ((v78 - v77) >> 4);
}

void RevoluteJointProject(float *a1, float *a2, float *a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, int8x16_t a11, int8x16_t a12)
{
  physx::Ext::joint::computeJointFrames(&v151, &v144, a1, a2, a3, a5, a6, a7, a8, a9, a10, a11, a12);
  v16 = v153;
  v130 = v155;
  v131 = v148;
  v128 = v156;
  v129 = v149;
  v126 = v150;
  v127 = v157;
  v17 = (v148 - v155) + (v148 - v155);
  v18 = (v149 - v156) + (v149 - v156);
  v19 = (v150 - v157) + (v150 - v157);
  v20 = (v154 * v154) + -0.5;
  v21 = (-(v152 * v18) - (v151 * v17)) - (v153 * v19);
  v22 = ((v154 * ((v153 * v18) - (v152 * v19))) + (v17 * v20)) - (v151 * v21);
  v23 = ((v154 * ((v151 * v19) - (v153 * v17))) + (v18 * v20)) - (v152 * v21);
  v125 = v20;
  v24 = ((v154 * ((v152 * v17) - (v151 * v18))) + (v19 * v20)) - (v153 * v21);
  v25 = (((v154 * v144) - (v151 * v147)) - (v152 * v146)) + (v145 * v153);
  v136 = v145;
  v137 = v147;
  v132 = v154;
  v26 = a1[30];
  v27 = ((v23 * v23) + (v22 * v22)) + (v24 * v24);
  v142 = v26 * v26;
  v143 = v27;
  if (v27 > (v26 * v26))
  {
    v28 = 1.0 / sqrtf(v27);
    v22 = v26 * (v22 * v28);
    v23 = v26 * (v23 * v28);
    v24 = v26 * (v24 * v28);
  }

  v134 = v151;
  v135 = v144;
  v29 = (((v154 * v145) - (v152 * v147)) - (v153 * v144)) + (v146 * v151);
  v30 = (((v154 * v146) - (v153 * v147)) - (v151 * v145)) + (v144 * v152);
  v31 = (((v151 * v144) + (v154 * v147)) + (v152 * v145)) + (v153 * v146);
  v138 = v146;
  v139 = v24;
  v133 = v152;
  v140 = v23;
  v141 = v22;
  if (v25 == 0.0)
  {
    v35 = 1.0;
    v33 = 0.0;
    v34 = 0.0;
  }

  else
  {
    v32 = sqrtf(((v25 * v25) + 0.0) + (v31 * v31));
    v33 = v25 / v32;
    v34 = 0.0 / v32;
    v35 = v31 / v32;
  }

  v36 = (((v25 * v35) - (v31 * v33)) - (v29 * v34)) + (v34 * v30);
  v37 = (((v29 * v35) - (v31 * v34)) - (v30 * v33)) + (v34 * v25);
  v38 = (((v30 * v35) - (v31 * v34)) - (v25 * v34)) + (v33 * v29);
  cosval = (((v25 * v33) + (v31 * v35)) + (v29 * v34)) + (v30 * v34);
  v40 = __sincosf_stret(a1[31] * 0.5);
  if (v40.__sinval > 0.9999)
  {
    goto LABEL_11;
  }

  v41 = -v36;
  v42 = -v37;
  v43 = -v38;
  if (cosval >= 0.0)
  {
    v41 = v36;
    v42 = v37;
    v43 = v38;
  }

  v44 = ((v42 * v42) + (v41 * v41)) + (v43 * v43);
  if (v44 <= (v40.__sinval * v40.__sinval))
  {
LABEL_11:
    if (v143 <= v142)
    {
      return;
    }
  }

  else
  {
    v45 = v40.__sinval * v43;
    v46 = 1.0 / sqrtf(v44);
    v36 = (v40.__sinval * v41) * v46;
    v37 = (v40.__sinval * v42) * v46;
    v38 = v45 * v46;
    cosval = v40.__cosval;
  }

  v47 = (((v35 * v36) + (cosval * v33)) + (v37 * v34)) + (-v34 * v38);
  v48 = (((v35 * v37) + (cosval * v34)) + (v38 * v33)) + (-v34 * v36);
  v49 = (((v35 * v38) + (cosval * v34)) + (v36 * v34)) + (-v33 * v37);
  v50 = (((cosval * v35) - (v36 * v33)) - (v37 * v34)) - (v38 * v34);
  if (a4)
  {
    v51 = a1[15] * -2.0;
    v52 = a1[16] * -2.0;
    v53 = a1[17] * -2.0;
    v55 = a1[13];
    v54 = a1[14];
    v56 = (v54 * v54) + -0.5;
    v57 = a1[11];
    v58 = a1[12];
    v59 = ((v52 * v58) + (v57 * v51)) + (v55 * v53);
    v60 = ((v51 * v56) - (((v58 * v53) - (v55 * v52)) * v54)) + (v57 * v59);
    v61 = ((v52 * v56) - (((v55 * v51) - (v57 * v53)) * v54)) + (v58 * v59);
    v62 = ((v53 * v56) - (((v57 * v52) - (v58 * v51)) * v54)) + (v55 * v59);
    v63 = v60 + v60;
    v64 = v62 + v62;
    v65 = (v50 * v50) + -0.5;
    v66 = ((v48 * (v61 + v61)) + (v47 * (v60 + v60))) + (v49 * v64);
    v67 = ((v50 * ((v48 * v64) - (v49 * (v61 + v61)))) + ((v60 + v60) * v65)) + (v47 * v66);
    v68 = ((v50 * ((v49 * (v60 + v60)) - (v47 * v64))) + ((v61 + v61) * v65)) + (v48 * v66);
    v69 = ((v50 * ((v47 * (v61 + v61)) - (v48 * v63))) + (v64 * v65)) + (v49 * v66);
    v70 = v141 + v67;
    v71 = (((v47 * v54) - (v50 * v57)) - (v48 * v55)) + (v58 * v49);
    v72 = (((v48 * v54) - (v50 * v58)) - (v49 * v57)) + (v55 * v47);
    v73 = (((v49 * v54) - (v50 * v55)) - (v47 * v58)) + (v57 * v48);
    v74 = (((v47 * v57) + (v50 * v54)) + (v48 * v58)) + (v49 * v55);
    v75 = v70 + v70;
    v76 = (v140 + v68) + (v140 + v68);
    v77 = (v139 + v69) + (v139 + v69);
    v78 = ((v133 * v76) + (v134 * (v70 + v70))) + (v16 * v77);
    v79 = ((v132 * ((v76 * -v16) + (v133 * v77))) + ((v70 + v70) * v125)) + (v134 * v78);
    v80 = ((v132 * ((v77 * -v134) + (v16 * (v70 + v70)))) + (v76 * v125)) + (v133 * v78);
    v81 = ((v132 * ((v75 * -v133) + (v134 * v76))) + (v77 * v125)) + (v16 * v78);
    v82 = v130 + v79;
    v83 = v128 + v80;
    v84 = v127 + v81;
    v85 = (((v134 * v74) + (v132 * v71)) + (v133 * v73)) - (v72 * v16);
    v86 = (((v133 * v74) + (v132 * v72)) + (v16 * v71)) - (v73 * v134);
    v87 = (((v16 * v74) + (v132 * v73)) + (v134 * v72)) - (v71 * v133);
    v88 = (((v71 * -v134) + (v132 * v74)) + (-v133 * v72)) + (-v16 * v73);
    *a3 = v85;
    a3[1] = v86;
    a3[2] = v87;
    a3[3] = v88;
    a3[4] = v82;
    a3[5] = v83;
    a3[6] = v84;
    v89 = sqrtf((((v86 * v86) + (v85 * v85)) + (v87 * v87)) + (v88 * v88));
    if (v89 != 0.0)
    {
      *a3 = v85 / v89;
      a3[1] = v86 / v89;
      a3[2] = v87 / v89;
      a3[3] = v88 / v89;
    }
  }

  else
  {
    v90 = a1[8] * -2.0;
    v91 = a1[9] * -2.0;
    v92 = a1[10] * -2.0;
    v94 = a1[6];
    v93 = a1[7];
    v95 = (v93 * v93) + -0.5;
    v96 = a1[4];
    v97 = a1[5];
    v98 = ((v91 * v97) + (v96 * v90)) + (v94 * v92);
    v99 = ((v90 * v95) - (((v97 * v92) - (v94 * v91)) * v93)) + (v96 * v98);
    v100 = ((v91 * v95) - (((v94 * v90) - (v96 * v92)) * v93)) + (v97 * v98);
    v101 = ((v92 * v95) - (((v96 * v91) - (v97 * v90)) * v93)) + (v94 * v98);
    v102 = (v99 - v141) + (v99 - v141);
    v103 = (v100 - v140) + (v100 - v140);
    v104 = (v101 - v139) + (v101 - v139);
    v105 = (v50 * v50) + -0.5;
    v106 = (-(v48 * v103) - (v47 * v102)) - (v49 * v104);
    v107 = ((v50 * ((v49 * v103) - (v48 * v104))) + (v102 * v105)) - (v47 * v106);
    v108 = ((v50 * ((v47 * v104) - (v49 * v102))) + (v103 * v105)) - (v48 * v106);
    v109 = ((v50 * ((v48 * v102) - (v47 * v103))) + (v104 * v105)) - (v49 * v106);
    v110 = ((-(v47 * v93) - (v50 * v96)) + (v48 * v94)) - (v97 * v49);
    v111 = ((-(v48 * v93) - (v50 * v97)) + (v49 * v96)) - (v94 * v47);
    v112 = ((-(v49 * v93) - (v50 * v94)) + (v47 * v97)) - (v96 * v48);
    v113 = (((v50 * v93) - (v96 * v47)) - (v48 * v97)) - (v49 * v94);
    v114 = (v137 * v137) + -0.5;
    v115 = ((v136 * (v108 + v108)) + (v135 * (v107 + v107))) + (v138 * (v109 + v109));
    v116 = ((v137 * ((v138 * (v107 + v107)) - (v135 * (v109 + v109)))) + ((v108 + v108) * v114)) + (v136 * v115);
    v117 = ((v137 * ((v135 * (v108 + v108)) - (v136 * (v107 + v107)))) + ((v109 + v109) * v114)) + (v138 * v115);
    v118 = v131 + (((v137 * ((v136 * (v109 + v109)) - (v138 * (v108 + v108)))) + ((v107 + v107) * v114)) + (v135 * v115));
    v119 = v126 + v117;
    v120 = (((v135 * v113) + (v137 * v110)) + (v136 * v112)) - (v111 * v138);
    v121 = (((v136 * v113) + (v137 * v111)) + (v138 * v110)) - (v112 * v135);
    v122 = (((v138 * v113) + (v137 * v112)) + (v135 * v111)) - (v110 * v136);
    v123 = (((v137 * v113) - (v135 * v110)) - (v136 * v111)) - (v138 * v112);
    *a2 = v120;
    a2[1] = v121;
    a2[2] = v122;
    a2[3] = v123;
    a2[4] = v118;
    a2[5] = v129 + v116;
    a2[6] = v119;
    v124 = sqrtf((((v121 * v121) + (v120 * v120)) + (v122 * v122)) + (v123 * v123));
    if (v124 != 0.0)
    {
      *a2 = v120 / v124;
      a2[1] = v121 / v124;
      a2[2] = v122 / v124;
      a2[3] = v123 / v124;
    }
  }
}

void RevoluteJointVisualize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, double a6, double a7, double a8, double a9, double a10, double a11, int8x16_t a12, int8x16_t a13)
{
  v16 = physx::Ext::joint::computeJointFrames(&v29, &v25, a2, a3, a4, a6, a7, a8, a9, a10, a11, a12, a13);
  if (a5)
  {
    (*(*a1 + 16))(a1, &v29, &v25, v16);
  }

  if (a5 & 2) != 0 && (*(a2 + 128))
  {
    v17 = (((v32 * v25) - (v29 * v28)) - (v30 * v27)) + (v26 * v31);
    v18 = (((v29 * v25) + (v32 * v28)) + (v30 * v26)) + (v31 * v27);
    v19 = sqrtf(((v17 * v17) + 0.0) + (v18 * v18));
    if (v19 != 0.0)
    {
      v17 = v17 / v19;
      v18 = v18 / v19;
    }

    if (v18 < -1.0)
    {
      v18 = -1.0;
    }

    if (v18 > 1.0)
    {
      v18 = 1.0;
    }

    v20 = acosf(v18);
    v21 = v20 + v20;
    if (v17 >= 0.0)
    {
      v22 = v21;
    }

    else
    {
      v22 = -v21;
    }

    if (*(a2 + 104) <= 0.0 && *(a2 + 100) <= 0.0)
    {
      v23 = *(a2 + 108);
    }

    else
    {
      v23 = 0.0;
    }

    v24 = (*(a2 + 116) + v23) > v22 || (*(a2 + 112) - v23) < v22;
    (*(*a1 + 32))(a1, &v29, v24);
  }
}

float physx::Ext::InertiaTensorComputer::translate(uint64_t a1, uint64_t a2, int32x4_t a3)
{
  a3.i32[0] = *a2;
  v4 = *(a2 + 4);
  if (*a2 != 0.0 || v4.f32[0] != 0.0 || v4.f32[1] != 0.0)
  {
    v5 = *(a1 + 36);
    v6 = -v5;
    v7 = *a3.i32 + v5;
    a3.i64[0] = *(a1 + 40);
    v8 = vextq_s8(vzip1q_s32(a3, a3), a3, 8uLL);
    v9 = vdup_lane_s32(*a3.i8, 0);
    v10 = vadd_f32(v4, *a3.i8);
    if (v7 == 0.0 && *v10.i32 == 0.0 && *&v10.i32[1] == 0.0)
    {
      v11 = xmmword_1E3118C30;
      v11.i32[0] = v8.i32[0];
      v12 = vmulq_f32(v8, v11);
      v13 = v12;
      v13.i32[0] = 0;
      v14 = v5 * v6;
      v15 = a3;
      v15.i32[2] = HIDWORD(*(a1 + 40));
      v16 = vextq_s8(vzip1q_s32(v15, vzip1q_s32(0, v15)), v15, 4uLL);
      v15.i32[0] = *(a1 + 36);
      v15.i32[1] = v15.i32[0];
      v15.f32[3] = -*a3.i32;
      v17 = vmulq_f32(v16, v15);
      v18 = vsubq_f32(v13, v12).f32[0];
      v13.i32[2] = v17.i32[1];
      v19 = vaddq_f32(v13, v12);
      v19.f32[0] = v18;
      v12.i32[0] = v17.i32[3];
      v12.f32[1] = *a3.i32 * v5;
      v12.f32[3] = *a3.i32 * v5;
      v20 = vaddq_f32(v19, v12);
      v21 = vdupq_laneq_s32(v17, 2);
      v21.f32[1] = *a3.i32 * 0.0;
      v22 = v18 + v14;
      v21.f32[2] = v5 * -0.0;
      v23 = v21;
      v23.f32[3] = v14;
      v21.i32[0] = v17.i32[0];
      v21.i32[3] = 0;
      v24 = vaddq_f32(vaddq_f32(v17, v23), v21);
    }

    else
    {
      *v3.f32 = vrev64_s32(v10);
      v25 = vzip1q_s32(v3, vdupq_lane_s32(*v3.f32, 0));
      v26 = xmmword_1E3118C30;
      v27 = xmmword_1E3118C30;
      v27.i32[0] = v8.i32[0];
      v28 = vmulq_f32(v8, v27);
      v27.f32[0] = v5 * v6;
      v26.i32[0] = v25.i32[0];
      v29 = vmulq_f32(v25, v26);
      *&v30 = *v10.i32 * v7;
      v31 = v28;
      v31.i32[0] = 0;
      v32 = v29;
      v32.i32[0] = 0;
      v33 = a3;
      v33.i32[2] = HIDWORD(*(a1 + 40));
      v34 = vextq_s8(vzip1q_s32(v33, vzip1q_s32(0, v33)), v33, 4uLL);
      v33.i32[0] = *(a1 + 36);
      v33.i32[1] = v33.i32[0];
      v25.f32[0] = -(v7 * v7);
      v33.f32[3] = -*a3.i32;
      v35 = vmulq_f32(v34, v33);
      v36 = vdupq_laneq_s32(v35, 2);
      v37 = v7 * -0.0;
      v36.f32[1] = *a3.i32 * 0.0;
      v36.f32[2] = v5 * -0.0;
      v38 = v36;
      v38.i32[3] = v27.i32[0];
      v36.i32[0] = v35.i32[0];
      v36.i32[3] = 0;
      v3.i64[1] = v3.i64[0];
      v39 = vzip1q_s32(v3, v3);
      v39.i32[0] = 0;
      v3.f32[0] = v7;
      v3.f32[1] = v7;
      v3.f32[3] = -*v10.i32;
      v40 = vaddq_f32(vaddq_f32(v35, v38), v36);
      v41 = vmulq_f32(v39, v3);
      v42 = vsubq_f32(v31, v28).f32[0];
      v31.i32[2] = v35.i32[1];
      v43 = vaddq_f32(v31, v28);
      v43.f32[0] = v42;
      v28.i32[0] = v35.i32[3];
      v28.f32[1] = *a3.i32 * v5;
      v28.f32[3] = *a3.i32 * v5;
      v44 = vsubq_f32(v32, v29).f32[0];
      v32.i32[2] = v41.i32[1];
      v27.f32[0] = v42 + v27.f32[0];
      v45 = vaddq_f32(v32, v29);
      v45.f32[0] = v44;
      v29.i64[0] = __PAIR64__(v30, v41.u32[3]);
      v29.i32[3] = v30;
      v46 = v44 + v25.f32[0];
      v47 = vdupq_laneq_s32(v41, 2);
      v47.f32[1] = *v10.i32 * 0.0;
      v47.f32[2] = v37;
      v48 = v47;
      v48.i32[3] = v25.i32[0];
      v47.i32[0] = v41.i32[0];
      v47.i32[3] = 0;
      v49 = vaddq_f32(vaddq_f32(v41, v48), v47);
      v20 = vsubq_f32(vaddq_f32(v43, v28), vaddq_f32(v29, v45));
      v22 = v27.f32[0] - v46;
      v24 = vsubq_f32(v40, v49);
    }

    v50 = *(a1 + 48);
    *a1 = vaddq_f32(vmulq_n_f32(v20, v50), *a1);
    *(a1 + 16) = (v22 * v50) + *(a1 + 16);
    *(a1 + 20) = vaddq_f32(vmulq_n_f32(v24, v50), *(a1 + 20));
    v9.f32[0] = v5;
    *(a1 + 36) = vadd_f32(v9, *a2);
    *a3.i32 = *&a3.i32[1] + *(a2 + 8);
    *(a1 + 44) = *a3.i32;
  }

  return *a3.i32;
}

uint64_t updateMassAndInertia(int a1, uint64_t a2, float *a3, unsigned int a4, float32x2_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a6;
  v284 = *MEMORY[0x1E69E9840];
  __asm { FMOV            V8.2S, #1.0 }

  v255 = _D8;
  v256 = 1.0;
  v254 = xmmword_1E30474D0;
  if (a5)
  {
    v20 = *a5;
    v21 = a5[1].f32[0];
  }

  else
  {
    v20 = 0;
    v21 = 0.0;
  }

  v248 = v20;
  if (!a3 || !a4)
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxextensions/src/ExtRigidBodyExt.cpp", 288, "%s: No density specified, setting mass to 1 and inertia to (1,1,1)", a6, a7, a8, "PxRigidBodyExt::updateMassAndInertia");
LABEL_64:
    v194 = 0;
    v193 = v248.i32[1];
LABEL_65:
    v195 = 1.0;
    goto LABEL_66;
  }

  v253 = 0.0;
  v251 = 0u;
  v252 = 0u;
  v249 = 0u;
  v250 = 0u;
  v281 = 1;
  v283 = 0x1000000000;
  v282 = &v278;
  v22 = (*(*a2 + 184))(a2);
  *v275 = 0;
  physx::shdfnd::Array<physx::PxShape *,physx::shdfnd::InlineAllocator<128u,physx::shdfnd::ReflectionAllocator<physx::PxShape *>>>::resize(&v278, v22, v275);
  v26 = (*(*a2 + 192))(a2, v282, v283, 0);
  v245 = *a3;
  if ((*a3 >> 23) == 255)
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxextensions/src/ExtRigidBodyExt.cpp", 128, "computeMassAndInertia: Provided mass or density has no valid value", v23, v24, v25, v242);
    v192 = 0;
    goto LABEL_54;
  }

  v244 = v21;
  if (!v283)
  {
    v29 = 0;
    v31 = 0.0;
    v26.n128_u64[0] = 0;
    v246 = v26;
    v30 = 0.0;
    v247 = 0u;
LABEL_49:
    v191 = v246;
    v250 = v249;
    v251 = v247;
    *&v252 = v30;
    *(&v252 + 4) = v29;
    v192 = 1;
    *(&v252 + 3) = v31;
    v253 = v246.n128_f32[0];
    goto LABEL_53;
  }

  v243 = _D8;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v249 = 0u;
  v8.i32[0] = 1.0;
  v30 = 0.0;
  v31 = 0.0;
  v246 = 0u;
  v247 = 0u;
  while (1)
  {
    (*(**(v282 + v27) + 312))(v275);
    if ((v275[0] & 1) == 0 && !v9)
    {
      goto LABEL_42;
    }

    if (a1)
    {
      if (v28 >= a4)
      {
        v188 = physx::shdfnd::Foundation::mInstance;
        v189 = "computeMassAndInertia: Not enough mass/density values provided for all (simulation) shapes";
        v190 = 153;
        goto LABEL_52;
      }

      v245 = a3[v28];
      if ((LODWORD(v245) >> 23) == 255)
      {
        break;
      }
    }

    v32 = (*(**(v282 + v27) + 64))(*(v282 + v27));
    if (v32 <= 2)
    {
      if (v32 > 0)
      {
        if (v32 != 2)
        {
          goto LABEL_45;
        }

        LODWORD(v262) = 2;
        *(&v262 + 4) = 0;
        (*(**(v282 + v27) + 104))(*(v282 + v27), &v262);
        (*(**(v282 + v27) + 160))(&v266);
        v71.i64[0] = *(&v262 + 4);
        v73 = (3.1416 * *v71.i32) * *v71.i32;
        *(&v277 + 3) = (((4.1888 * *v71.i32) * *v71.i32) * *v71.i32) + (v73 * (*(&v262 + 2) + *(&v262 + 2)));
        __asm { FMOV            V3.2S, #3.0 }

        v75 = vdiv_f32(vmul_f32(vmul_n_f32(*(&v262 + 4), vmuls_lane_f32(*(&v262 + 2), *(&v262 + 4), 1)), 0x4000000040800000), _D3);
        _D3.f32[0] = (8.0 * vmul_f32(*v71.i8, vmul_f32(*v71.i8, *v71.i8)).f32[0]) / 15.0;
        v76 = vmuls_lane_f32(*v71.i32, *v71.i8, 1);
        v77 = v73 * (v75.f32[1] + (v75.f32[0] + (_D3.f32[0] + (((v76 * *(&v262 + 1)) * 3.0) * 0.5))));
        *v71.i32 = v73 * (_D3.f32[0] + (v76 * *(&v262 + 1)));
        v75.i32[0] = v266;
        v78 = v267;
        v79 = v75.f32[0] + v75.f32[0];
        v80 = *&v78 * (*&v78 + *&v78);
        v81 = *(&v267 + 1) * (*(&v267 + 1) + *(&v267 + 1));
        v82 = (v75.f32[0] + v75.f32[0]) * *&v267;
        v83.f32[0] = (v75.f32[0] + v75.f32[0]) * *(&v267 + 2);
        _D3.f32[0] = (*(&v267 + 1) + *(&v267 + 1)) * *(&v267 + 2);
        *&v84 = (v8.f32[0] - v80) - v81;
        *v85.i32 = v82 + _D3.f32[0];
        v86 = ((v75.f32[0] + v75.f32[0]) * *(&v267 + 1)) - ((*&v78 + *&v78) * *(&v267 + 2));
        *&v87 = v82 - _D3.f32[0];
        v88 = v8.f32[0] - (v75.f32[0] * (v75.f32[0] + v75.f32[0]));
        v89.f32[0] = v88 - v81;
        v90 = *v71.i32 * v86;
        v91 = (*v71.i32 * *&v84) + (*&v87 * 0.0);
        v92 = (*v71.i32 * *v85.i32) + (v89.f32[0] * 0.0);
        *v71.i32 = (*&v84 * 0.0) + (*&v87 * 0.0);
        v75.f32[0] = (*v85.i32 * 0.0) + (v89.f32[0] * 0.0);
        v93.f32[0] = (v79 * *(&v267 + 1)) + ((*&v78 + *&v78) * *(&v267 + 2));
        *v94.i32 = v88 - v80;
        v95 = (v88 - v80) * 0.0;
        v96.f32[0] = (*&v78 + *&v78) * *(&v267 + 1);
        *v97.i32 = v96.f32[0] - v83.f32[0];
        v98 = *v97.i32 * 0.0;
        v96.f32[1] = (v96.f32[0] - v83.f32[0]) * 0.0;
        v83.f32[1] = (*v85.i32 * 0.0) + (v89.f32[0] * v77);
        *v99.i8 = vadd_f32(v96, *v83.f32);
        v100.f32[0] = (*v97.i32 * 0.0) + v92;
        v101 = v99;
        *v101.i32 = (v93.f32[0] * 0.0) + v91;
        *&v101.i32[2] = v95 + (v90 + (0.0 * *v99.i32));
        v102 = v85;
        *&v102.i32[1] = v95 + ((v86 * 0.0) + (v77 * *v99.i32));
        v102.i32[3] = v100.i32[0];
        v103 = v101;
        v103.f32[3] = *v101.i32;
        v104 = v102;
        v104.f32[2] = *v101.i32;
        v105 = (v86 * 0.0) + (0.0 * *v99.i32);
        v106.i64[0] = __PAIR64__(v87, v84);
        v106.i64[1] = __PAIR64__(v85.u32[0], v84);
        v107 = vuzp2q_s32(v102, v102);
        v108 = vextq_s8(v101, v99, 4uLL);
        v107.f32[0] = (v93.f32[0] * 0.0) + ((*&v84 * 0.0) + (*&v87 * v77));
        v108.f32[2] = v107.f32[0];
        v107.f32[3] = v107.f32[0];
        v100.i32[1] = v89.i32[0];
        v100.f32[2] = v86;
        v100.f32[3] = v86;
        v109 = vmulq_f32(v104, v100);
        v100.i64[0] = __PAIR64__(v84, v87);
        v100.i64[1] = __PAIR64__(v89.u32[0], v87);
        v89.i32[1] = v85.i32[0];
        v89.i64[1] = v99.i64[0];
        v110 = vaddq_f32(v109, vmulq_f32(v108, v89));
        v109.f32[0] = (v93.f32[0] * v77) + *v71.i32;
        v109.f32[1] = (*v97.i32 * v77) + v75.f32[0];
        v109.i64[1] = __PAIR64__(v109.u32[0], v93.u32[0]);
        v83.f32[0] = v109.f32[1];
        v83.f32[1] = (*v94.i32 * v77) + v105;
        v83.f32[2] = v109.f32[0];
        v83.f32[3] = v109.f32[1];
        v93.i32[1] = v93.i32[0];
        v93.f32[2] = v83.f32[1];
        v93.i32[3] = v97.i32[0];
        *v111.f32 = vdup_lane_s32(v97, 0);
        *&v111.u32[2] = vdup_lane_s32(v94, 0);
        *v275 = vaddq_f32(vmulq_f32(v109, v93), vaddq_f32(vmulq_f32(v103, v106), vmulq_f32(v107, v100)));
        *&v275[16] = vaddq_f32(vmulq_f32(v83, v111), v110);
        v72 = v98 + v75.f32[0];
        v276 = (*v94.i32 * v83.f32[1]) + ((v86 * (v95 + (v90 + (0.0 * *v99.i32)))) + (*&v102.i32[1] * *v99.i32));
        *&v277 = (v93.f32[0] * 0.0) + *v71.i32;
        *v71.i32 = v95 + v105;
      }

      else
      {
        if (v32)
        {
          if (v32 == -1)
          {
LABEL_45:
            v188 = physx::shdfnd::Foundation::mInstance;
            v189 = "computeMassAndInertia: Dynamic actor with illegal collision shapes";
            v190 = 231;
            goto LABEL_52;
          }

          goto LABEL_41;
        }

        *&v262 = 0;
        (*(**(v282 + v27) + 96))(*(v282 + v27), &v262);
        (*(**(v282 + v27) + 160))(&v266);
        v36 = (*(&v262 + 1) * (*(&v262 + 1) * (*(&v262 + 1) * (*(&v262 + 1) * (*(&v262 + 1) * 4.1888))))) * 0.4;
        *(&v277 + 3) = *(&v262 + 1) * (*(&v262 + 1) * (*(&v262 + 1) * 4.1888));
        v71.i32[0] = v266;
        v37 = *&v267;
        v38 = *v71.i32 + *v71.i32;
        v39 = v37 + v37;
        v40 = v37 * (v37 + v37);
        v41 = *(&v267 + 1) * (*(&v267 + 1) + *(&v267 + 1));
        v42 = (*v71.i32 + *v71.i32) * *&v267;
        v43.f32[0] = (*v71.i32 + *v71.i32) * *(&v267 + 2);
        v44 = (*(&v267 + 1) + *(&v267 + 1)) * *(&v267 + 2);
        *&v45 = (v8.f32[0] - v40) - v41;
        v46.f32[0] = v42 + v44;
        v47 = ((*v71.i32 + *v71.i32) * *(&v267 + 1)) - (v39 * *(&v267 + 2));
        *&v48 = v42 - v44;
        v49 = v8.f32[0] - (*v71.i32 * (*v71.i32 + *v71.i32));
        v50.f32[0] = v49 - v41;
        *v71.i32 = (*&v45 * 0.0) + (*&v48 * 0.0);
        v51 = (v46.f32[0] * 0.0) + ((v49 - v41) * 0.0);
        v52.f32[0] = (v38 * *(&v267 + 1)) + (v39 * *(&v267 + 2));
        *v53.i32 = v49 - v40;
        v54 = *v53.i32 * 0.0;
        v55.f32[0] = v39 * *(&v267 + 1);
        *v56.i32 = (v39 * *(&v267 + 1)) - v43.f32[0];
        v57 = *v56.i32 * 0.0;
        v55.f32[1] = *v56.i32 * 0.0;
        v43.f32[1] = (v46.f32[0] * 0.0) + (v36 * v50.f32[0]);
        *v8.f32 = vadd_f32(v55, v43);
        v58 = (v47 * 0.0) + (0.0 * v8.f32[0]);
        v59.f32[0] = (*v56.i32 * 0.0) + ((v36 * v46.f32[0]) + (v50.f32[0] * 0.0));
        v60 = (*v53.i32 * 0.0) + ((v36 * v47) + (0.0 * v8.f32[0]));
        v61 = v8;
        v61.f32[0] = (v52.f32[0] * 0.0) + ((v36 * *&v45) + (*&v48 * 0.0));
        v61.f32[2] = v60;
        v62 = v46;
        v62.f32[1] = (*v53.i32 * 0.0) + ((v47 * 0.0) + (v36 * v8.f32[0]));
        v62.f32[3] = v59.f32[0];
        v63 = vuzp2q_s32(v62, v62);
        v62.f32[2] = v61.f32[0];
        v64 = vextq_s8(v61, v8, 4uLL);
        v61.f32[3] = v61.f32[0];
        v59.i32[1] = v50.i32[0];
        v59.f32[2] = v47;
        v59.f32[3] = v47;
        v65.i64[0] = __PAIR64__(v48, v45);
        v65.i64[1] = __PAIR64__(v46.u32[0], v45);
        v66 = vmulq_f32(v61, v65);
        v63.f32[0] = (v52.f32[0] * 0.0) + ((*&v45 * 0.0) + (v36 * *&v48));
        v63.f32[3] = v63.f32[0];
        v64.f32[2] = v63.f32[0];
        v67.i64[0] = __PAIR64__(v45, v48);
        v67.i64[1] = __PAIR64__(v50.u32[0], v48);
        v50.i32[1] = v46.i32[0];
        v50.i64[1] = v8.i64[0];
        v68 = v62.f32[1] * v8.f32[0];
        v8.i32[0] = 1.0;
        v61.f32[0] = (v36 * v52.f32[0]) + *v71.i32;
        v61.f32[1] = (v36 * *v56.i32) + v51;
        v61.i64[1] = __PAIR64__(v61.u32[0], v52.u32[0]);
        v69 = vaddq_f32(v66, vmulq_f32(v63, v67));
        v66.f32[0] = v61.f32[1];
        v66.f32[1] = (v36 * *v53.i32) + v58;
        v66.f32[2] = v61.f32[0];
        v66.f32[3] = v61.f32[1];
        v52.i32[1] = v52.i32[0];
        v52.f32[2] = v66.f32[1];
        v52.i32[3] = v56.i32[0];
        *v70.f32 = vdup_lane_s32(v56, 0);
        *&v70.u32[2] = vdup_lane_s32(v53, 0);
        *v275 = vaddq_f32(vmulq_f32(v61, v52), v69);
        *&v275[16] = vaddq_f32(vmulq_f32(v66, v70), vaddq_f32(vmulq_f32(v62, v59), vmulq_f32(v64, v50)));
        *v71.i32 = (v52.f32[0] * 0.0) + *v71.i32;
        v72 = v57 + v51;
        v276 = (*v53.i32 * v66.f32[1]) + ((v47 * v60) + v68);
LABEL_34:
        LODWORD(v277) = v71.i32[0];
        *v71.i32 = v54 + v58;
      }

      *(&v277 + 4) = __PAIR64__(v71.u32[0], LODWORD(v72));
      v152 = &v266;
      goto LABEL_40;
    }

    if (v32 == 3)
    {
      v262 = 3uLL;
      (*(**(v282 + v27) + 88))(*(v282 + v27), &v262);
      (*(**(v282 + v27) + 160))(&v266);
      if (*(&v262 + 1) == 0.0)
      {
        v116 = v8.f32[0];
      }

      else
      {
        v116 = *(&v262 + 1);
      }

      if (*(&v262 + 2) != 0.0)
      {
        v116 = *(&v262 + 2) * v116;
      }

      if (*(&v262 + 3) != 0.0)
      {
        v116 = *(&v262 + 3) * v116;
      }

      v117 = v116 * 8.0;
      v118 = ((*(&v262 + 2) * *(&v262 + 2)) + (*(&v262 + 3) * *(&v262 + 3))) * (v117 * 0.33333);
      v119 = ((*(&v262 + 1) * *(&v262 + 1)) + (*(&v262 + 3) * *(&v262 + 3))) * (v117 * 0.33333);
      v120 = ((*(&v262 + 1) * *(&v262 + 1)) + (*(&v262 + 2) * *(&v262 + 2))) * (v117 * 0.33333);
      *(&v277 + 3) = v117;
      v121 = *&v266;
      v122 = *&v267;
      *v112.i32 = v121 + v121;
      *v113.i32 = v122 + v122;
      *v115.i32 = v122 * (v122 + v122);
      v123 = *(&v267 + 1) * (*(&v267 + 1) + *(&v267 + 1));
      v124 = (v121 + v121) * *&v267;
      v125.f32[0] = (v121 + v121) * *(&v267 + 2);
      v126 = (*(&v267 + 1) + *(&v267 + 1)) * *(&v267 + 2);
      *&v127 = (v8.f32[0] - *v115.i32) - v123;
      v114.f32[0] = v124 + v126;
      v128 = ((v121 + v121) * *(&v267 + 1)) - (*v113.i32 * *(&v267 + 2));
      *&v129 = v124 - v126;
      v130 = v8.f32[0] - (v121 * (v121 + v121));
      v131.f32[0] = v130 - v123;
      v132 = v118 * v128;
      v133 = (v118 * *&v127) + (*&v129 * 0.0);
      v134 = (v118 * v114.f32[0]) + (v131.f32[0] * 0.0);
      v135 = (*&v127 * 0.0) + (*&v129 * 0.0);
      v136 = (v114.f32[0] * 0.0) + (v131.f32[0] * 0.0);
      v137.f32[0] = (*v112.i32 * *(&v267 + 1)) + (*v113.i32 * *(&v267 + 2));
      *v112.i32 = v130 - *v115.i32;
      v54 = (v130 - *v115.i32) * 0.0;
      *v115.i32 = *v113.i32 * *(&v267 + 1);
      *v113.i32 = (*v113.i32 * *(&v267 + 1)) - v125.f32[0];
      v138 = *v113.i32 * 0.0;
      *&v115.i32[1] = *v113.i32 * 0.0;
      v125.f32[1] = (v114.f32[0] * 0.0) + (v119 * v131.f32[0]);
      v139 = (v137.f32[0] * 0.0) + ((*&v127 * 0.0) + (v119 * *&v129));
      *v115.i8 = vadd_f32(*v115.i8, v125);
      v125.f32[0] = v132 + (0.0 * *v115.i32);
      v140 = (v128 * 0.0) + (v119 * *v115.i32);
      v58 = (v128 * 0.0) + (0.0 * *v115.i32);
      v141.f32[0] = (*v113.i32 * 0.0) + v134;
      v142 = v115;
      v142.f32[0] = (v137.f32[0] * 0.0) + v133;
      v142.f32[2] = v54 + v125.f32[0];
      v143 = v114;
      v143.f32[1] = v54 + v140;
      v143.i32[3] = v141.i32[0];
      v144 = vextq_s8(v142, v115, 4uLL);
      v142.f32[3] = v142.f32[0];
      v8 = vuzp2q_s32(v143, v143);
      v143.f32[2] = v142.f32[0];
      v141.i32[1] = v131.i32[0];
      v141.f32[2] = v128;
      v141.f32[3] = v128;
      v145.i64[0] = __PAIR64__(v129, v127);
      v145.i64[1] = __PAIR64__(v114.u32[0], v127);
      v8.f32[0] = v139;
      v144.f32[2] = v139;
      v8.f32[3] = v139;
      v146 = vmulq_f32(v143, v141);
      v141.i64[0] = __PAIR64__(v127, v129);
      v141.i64[1] = __PAIR64__(v131.u32[0], v129);
      v131.i32[1] = v114.i32[0];
      v131.i64[1] = v115.i64[0];
      v147 = vmulq_f32(v8, v141);
      v8.i32[0] = 1.0;
      v148 = (v54 + v140) * *v115.i32;
      v149.f32[0] = (v120 * *v113.i32) + v136;
      v149.f32[1] = (*v112.i32 * v120) + v58;
      v149.f32[2] = (v120 * v137.f32[0]) + v135;
      v149.f32[3] = v149.f32[0];
      v150.f32[0] = v149.f32[2];
      v150.f32[1] = v149.f32[0];
      v150.i32[2] = v137.i32[0];
      v150.f32[3] = v149.f32[2];
      v137.i32[1] = v137.i32[0];
      v137.f32[2] = v149.f32[1];
      v137.i32[3] = v113.i32[0];
      *v151.f32 = vdup_lane_s32(v113, 0);
      *&v151.u32[2] = vdup_lane_s32(v112, 0);
      *v275 = vaddq_f32(vmulq_f32(v150, v137), vaddq_f32(vmulq_f32(v142, v145), v147));
      *&v275[16] = vaddq_f32(vmulq_f32(v149, v151), vaddq_f32(v146, vmulq_f32(v144, v131)));
      *v71.i32 = (v137.f32[0] * 0.0) + v135;
      v72 = v138 + v136;
      v276 = (*v112.i32 * v149.f32[1]) + ((v128 * (v54 + v125.f32[0])) + v148);
      goto LABEL_34;
    }

    if (v32 != 4)
    {
      if ((v32 - 5) < 3)
      {
        goto LABEL_45;
      }

      goto LABEL_41;
    }

    v267 = xmmword_1E304F3C0;
    v266 = 4;
    v268 = 0.0;
    v269 = 0.0;
    v270 = 1.0;
    v271 = 0;
    v272 = 1;
    v273 = 0;
    v274 = 0;
    (*(**(v282 + v27) + 120))(*(v282 + v27), &v266);
    v265 = 0.0;
    (*(*v271 + 104))(v271, &v265, &v262, &v260);
    if (*&v267 == v8.f32[0] && *(&v267 + 1) == v8.f32[0] && *(&v267 + 2) == v8.f32[0])
    {
      v33 = v262;
      v34 = v263;
      v35 = v264;
    }

    else
    {
      v265 = ((*&v267 * *(&v267 + 1)) * *(&v267 + 2)) * v265;
      v153 = (v270 * v270) + -0.5;
      v154 = (((*(&v260 + 1) + *(&v260 + 1)) * v268) + (*(&v267 + 3) * (*&v260 + *&v260))) + (v269 * (v261 + v261));
      v155 = ((v270 * ((v268 * (v261 + v261)) - (v269 * (*(&v260 + 1) + *(&v260 + 1))))) + ((*&v260 + *&v260) * v153)) + (*(&v267 + 3) * v154);
      v156 = ((v270 * ((v269 * (*&v260 + *&v260)) - (*(&v267 + 3) * (v261 + v261)))) + ((*(&v260 + 1) + *(&v260 + 1)) * v153)) + (v268 * v154);
      v157 = *(&v267 + 2) * (((v270 * ((*(&v267 + 3) * (*(&v260 + 1) + *(&v260 + 1))) - (v268 * (*&v260 + *&v260)))) + ((v261 + v261) * v153)) + (v269 * v154));
      v158 = (*&v267 * v155) + (*&v267 * v155);
      v159 = (*(&v267 + 1) * v156) + (*(&v267 + 1) * v156);
      v160 = v157 + v157;
      v161 = ((v268 * v159) + (*(&v267 + 3) * v158)) + (v269 * v160);
      *&v260 = ((v158 * v153) - (((v268 * v160) - (v269 * v159)) * v270)) + (*(&v267 + 3) * v161);
      *(&v260 + 1) = ((v159 * v153) - (((v269 * v158) - (*(&v267 + 3) * v160)) * v270)) + (v268 * v161);
      v261 = ((v160 * v153) - (((*(&v267 + 3) * v159) - (v268 * v158)) * v270)) + (v269 * v161);
      physx::PxMassProperties::scaleInertia(&v262, &v267 + 12, &v267, &v257);
      v33 = v257;
      v34 = v258;
      v262 = v257;
      v263 = v258;
      v35 = v259;
      v264 = v259;
    }

    *&v162 = v260;
    *v275 = v33;
    *&v275[16] = v34;
    v276 = v35;
    *(&v162 + 1) = __PAIR64__(LODWORD(v265), LODWORD(v261));
    v277 = v162;
    (*(**(v282 + v27) + 160))(&v257);
    v163 = vadd_f32(*&v257, *&v257);
    v164 = vadd_f32(*(&v257 + 8), *(&v257 + 8));
    v165 = vrev64_s32(vmul_f32(*&v257, v163));
    v166 = vmul_lane_f32(v163, *&v257, 1);
    v167 = vmul_n_f32(*(&v257 + 8), v163.f32[0]);
    v168 = vrev64_s32(vmul_lane_f32(*(&v257 + 8), v163, 1));
    v169 = vmul_lane_f32(v164, *(&v257 + 8), 1);
    *v71.i8 = vsub_f32(v167, v168);
    v170 = vsub_f32(v166, v169);
    v171 = vadd_f32(v166, v169);
    v172 = vzip1_s32(v170, v171);
    v173 = vsub_f32(v243, v165);
    v174 = vsub_f32(v173, vdup_lane_s32(vmul_f32(*(&v257 + 8), v164), 0));
    v175 = vadd_f32(v168, v167);
    v176 = vsub_f32(v168, v167);
    v177 = __PAIR64__(v176.u32[1], v175.u32[0]);
    v178 = vsub_f32(vdup_lane_s32(v173, 1), v165);
    v179 = vadd_f32(vadd_f32(vmul_f32(vrev64_s32(*v275), v172), vmul_f32(*v275, v174)), vmul_n_f32(__PAIR64__(v176.u32[1], v175.u32[0]), *&v275[8]));
    v168.f32[0] = (vmul_f32(*v275, *v71.i8).f32[0] + vmuls_lane_f32(*&v275[4], v175, 1)) + (*&v275[8] * v178.f32[0]);
    v180 = vadd_f32(vadd_f32(vmul_f32(v172, vrev64_s32(*&v275[12])), vmul_f32(v174, *&v275[12])), vmul_n_f32(__PAIR64__(v176.u32[1], v175.u32[0]), *&v275[20]));
    v173.f32[0] = (vmul_f32(*v71.i8, *&v275[12]).f32[0] + vmuls_lane_f32(v175.f32[1], *&v275[12], 1)) + (*&v275[20] * v178.f32[0]);
    v181 = vadd_f32(vadd_f32(vmul_f32(v172, vrev64_s32(*&v275[24])), vmul_f32(v174, *&v275[24])), vmul_n_f32(__PAIR64__(v176.u32[1], v175.u32[0]), v276));
    v182 = (vmul_f32(*v71.i8, *&v275[24]).f32[0] + vmuls_lane_f32(v175.f32[1], *&v275[24], 1)) + (v276 * v178.f32[0]);
    v183 = vadd_f32(vadd_f32(vmul_f32(v174, v179), vmul_f32(v170, v180)), vmul_f32(v175, v181)).u32[0];
    v184 = (vmuls_lane_f32(v174.f32[0], v179, 1) + vmuls_lane_f32(v170.f32[0], v180, 1)) + vmuls_lane_f32(v175.f32[0], v181, 1);
    v170.f32[0] = ((v168.f32[0] * v174.f32[0]) + (v173.f32[0] * v170.f32[0])) + (v182 * v175.f32[0]);
    v185 = vmuls_lane_f32(v180.f32[0], v175, 1);
    v175.f32[0] = (v168.f32[0] * *v71.i32) + vmuls_lane_f32(v173.f32[0], v175, 1);
    *v275 = v183;
    *&v275[4] = v184;
    *&v275[12] = vadd_f32(vadd_f32(vmul_n_f32(v179, *v171.i32), vmul_lane_f32(v180, v174, 1)), vmul_lane_f32(v181, v176, 1));
    *&v275[8] = v170.i32[0];
    *&v275[20] = ((v168.f32[0] * *v171.i32) + vmuls_lane_f32(v173.f32[0], v174, 1)) + vmuls_lane_f32(v182, v176, 1);
    *&v275[24] = (vmul_f32(*v71.i8, v179).f32[0] + v185) + vmul_f32(v178, v181).f32[0];
    *&v275[28] = (vmuls_lane_f32(*v71.i32, v179, 1) + vmuls_lane_f32(v175.f32[1], v180, 1)) + vmuls_lane_f32(v178.f32[0], v181, 1);
    *v71.i8 = vmul_f32(*v71.i8, *&v277);
    v164.f32[0] = vmuls_lane_f32(v175.f32[1], *&v277, 1);
    *&v277 = vadd_f32(vadd_f32(vmul_f32(v172, vrev64_s32(*&v277)), vmul_f32(v174, *&v277)), vmul_n_f32(v177, *(&v277 + 2)));
    *v71.i32 = (*v71.i32 + v164.f32[0]) + (*(&v277 + 2) * v178.f32[0]);
    v276 = v175.f32[0] + (v182 * v178.f32[0]);
    DWORD2(v277) = v71.i32[0];
    v152 = &v257;
LABEL_40:
    physx::Ext::InertiaTensorComputer::translate(v275, (v152 + 4), v71);
LABEL_41:
    v186 = v8.f32[0] / (v246.n128_f32[0] + (v245 * *(&v277 + 3)));
    v29 = vmul_n_f32(vadd_f32(vmul_n_f32(v29, v246.n128_f32[0]), vmul_n_f32(*&v277, v245 * *(&v277 + 3))), v186);
    v31 = v186 * ((v31 * v246.n128_f32[0]) + ((v245 * *(&v277 + 3)) * *(&v277 + 2)));
    v249 = vaddq_f32(v249, vmulq_n_f32(*v275, v245));
    v187 = v247;
    v30 = v30 + (v245 * v276);
    ++v28;
    v187.n128_f32[0] = v246.n128_f32[0] + (v245 * *(&v277 + 3));
    v246 = v187;
    v247 = vaddq_f32(v247, vmulq_n_f32(*&v275[16], v245));
LABEL_42:
    if (++v27 >= v283)
    {
      goto LABEL_49;
    }
  }

  v188 = physx::shdfnd::Foundation::mInstance;
  v189 = "computeMassAndInertia: Provided mass or density has no valid value";
  v190 = 146;
LABEL_52:
  physx::shdfnd::Foundation::error(v188, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxextensions/src/ExtRigidBodyExt.cpp", v190, v189, v23, v24, v25, v242);
  v192 = 0;
LABEL_53:
  v21 = v244;
LABEL_54:
  if ((v283 & 0x8000000000000000) == 0 && (v283 & 0x7FFFFFFF00000000) != 0 && v282 != &v278 && v282)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  if (!v192)
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxextensions/src/ExtRigidBodyExt.cpp", 280, "%s: Mass and inertia computation failed, setting mass to 1 and inertia to (1,1,1)", v23, v24, v25, "PxRigidBodyExt::updateMassAndInertia");
    goto LABEL_64;
  }

  v193 = v248.i32[1];
  if (v253 == 0.0)
  {
    v194 = 0;
    goto LABEL_65;
  }

  if (a5)
  {
    *v191.i8 = vneg_f32(v248);
    *&v278 = v191.i64[0];
    *(&v278 + 2) = -v21;
    physx::Ext::InertiaTensorComputer::translate(&v250, &v278, v191);
  }

  else
  {
    v21 = *(&v252 + 3);
    *v191.i32 = -*(&v252 + 3);
    v248 = *(&v252 + 4);
    *&v278 = vneg_f32(*(&v252 + 4));
    *(&v278 + 2) = -*(&v252 + 3);
    physx::Ext::InertiaTensorComputer::translate(&v250, &v278, v191);
    v193 = v248.i32[1];
  }

  v278 = v250;
  v279 = v251;
  v195 = v253;
  v280 = v252;
  physx::PxDiagonalize(&v278, &v254, v275);
  v255 = *v275;
  v256 = *&v275[8];
  if (*v275 <= 0.0 || *&v275[4] <= 0.0 || *&v275[8] <= 0.0)
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxextensions/src/ExtRigidBodyExt.cpp", 84, "%s: inertia tensor has negative components (ill-conditioned input expected). Approximation for inertia tensor will be used instead.", v197, v198, v199, "PxRigidBodyExt::updateMassAndInertia");
    (*(*a2 + 80))(v275, a2, 1.01);
    (*(*a2 + 152))(&v278, a2);
    v200.f32[0] = v279.f32[2] * -2.0;
    v201.i32[0] = DWORD2(v278);
    v202 = (*(&v278 + 3) * *(&v278 + 3)) + -0.5;
    v236 = vadd_f32(*v275, *&v275[12]);
    v203 = vmul_f32(v236, 0x3F0000003F000000);
    _S20 = ((*&v275[8] + *&v275[20]) * 0.5) + ((*&v275[8] + *&v275[20]) * 0.5);
    v205 = -*(&v278 + 2) - *(&v278 + 2);
    v206 = -(*(&v278 + 2) * v205);
    v207 = vmul_f32(*v279.f32, 0xC0000000C0000000);
    v208 = vrev64_s32(v207);
    _D22 = vrev64_s32(*&v278);
    v210 = (vmul_f32(v208, _D22).f32[0] + (*&v278 * *v207.i32)) + (*(&v278 + 2) * (v279.f32[2] * -2.0));
    v211 = vneg_f32(_D22);
    _D27 = vadd_f32(v203, v203);
    v213 = vrev64_s32(_D27);
    _S30 = _D27.i32[1];
    _D31 = vmul_f32(v213, v211);
    __asm { FMLS            S31, S27, V22.S[1] }

    _D31.f32[0] = _D31.f32[0] - (*(&v278 + 2) * _S20);
    v216.f32[0] = (_S20 * *&v278) - (*_D27.i32 * *(&v278 + 2));
    __asm { FMLS            S27, S30, V22.S[1] }

    v201.f32[1] = v279.f32[2] * -2.0;
    v200.f32[1] = -*(&v278 + 2);
    v217 = vmla_f32(vmul_f32(v200, vext_s8(v211, v208, 4uLL)), vzip2_s32(v208, *&v278), v201);
    v201.f32[0] = *(&v278 + 3) * v205;
    v218 = (*&v275[20] - *&v275[8]) * 0.5;
    __asm { FMLS            S9, S20, V22.S[0] }

    v216.i32[1] = _S9;
    v220 = vadd_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(vneg_f32(v217), *(&v278 + 3)), v208, v202), _D22, v210), vmls_lane_f32(vmla_n_f32(vmul_n_f32(v216, *(&v278 + 3)), v213, v202), _D22, _D31, 0));
    v221 = ((((v279.f32[2] * -2.0) * v202) - ((vmuls_n_f32(*v207.i32, v211.f32[0]) + (*&v278 * *&v207.i32[1])) * *(&v278 + 3))) + (*(&v278 + 2) * v210)) + (((*(&v278 + 3) * *_D27.i32) + (_S20 * v202)) - (*(&v278 + 2) * _D31.f32[0]));
    v222 = vmul_f32(vsub_f32(*&v275[12], *v275), 0x3F0000003F000000);
    v223 = vsub_f32(v211, _D22);
    v224 = vmul_f32(v223, v211).f32[0];
    v225 = vmuls_lane_f32(v211.f32[0], v223, 1);
    v226 = vmul_n_f32(v223, -*(&v278 + 2));
    v227 = vmul_n_f32(vrev64_s32(v223), *(&v278 + 3));
    v211.f32[0] = (1.0 - v224) - v206;
    v228.f32[0] = v225 + (*(&v278 + 3) * v205);
    v229 = vmuls_lane_f32(*&v278, v223, 1) + 1.0;
    v230.f32[0] = v229 - v206;
    v231 = vsub_f32(v226, v227);
    v232 = vadd_f32(v226, v227);
    v228.i32[1] = v211.i32[0];
    v230.f32[1] = v225 - v201.f32[0];
    v233 = vmul_f32(vext_s8(v231, v232, 4uLL), v222);
    v231.i32[1] = v232.i32[1];
    v234 = vadd_f32(vadd_f32(vabs_f32(vmul_n_f32(v228, v222.f32[0])), vabs_f32(vmul_lane_f32(v230, v222, 1))), vabs_f32(vmul_n_f32(v231, v218)));
    v233.f32[0] = vaddv_f32(vabs_f32(v233)) + fabsf((v229 - v224) * v218);
    v235 = vmul_f32(vadd_f32(vadd_f32(v234, v220), vsub_f32(v234, v220)), 0x3F0000003F000000);
    v236.f32[0] = ((v233.f32[0] + v221) + (v233.f32[0] - v221)) * 0.5;
    v237 = v235.f32[1];
    if (v235.f32[1] == 0.0)
    {
      v237 = 1.0;
    }

    if (v235.f32[0] != 0.0)
    {
      v237 = v237 * v235.f32[0];
    }

    if (v236.f32[0] != 0.0)
    {
      v237 = v236.f32[0] * v237;
    }

    v238 = v237 * 8.0;
    v236.f32[0] = v236.f32[0] * v236.f32[0];
    v239 = vmul_f32(v235, v235);
    v240 = vmul_n_f32(vadd_f32(vdup_lane_s32(v236, 0), v239), v238 * 0.33333);
    v239.f32[0] = vaddv_f32(v239) * (v238 * 0.33333);
    v241 = v195 / v238;
    v255 = vmul_n_f32(v240, v241);
    v256 = v241 * v239.f32[0];
    v254 = xmmword_1E30474D0;
  }

  v194 = 1;
LABEL_66:
  (*(*a2 + 232))(a2, v195);
  (*(*a2 + 256))(a2, &v255);
  v278 = v254;
  v279.i64[0] = __PAIR64__(v193, v248.u32[0]);
  v279.f32[2] = v21;
  (*(*a2 + 216))(a2, &v278);
  return v194;
}