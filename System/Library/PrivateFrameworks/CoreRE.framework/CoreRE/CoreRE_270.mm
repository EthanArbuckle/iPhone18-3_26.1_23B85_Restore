uint64_t physx::Gu::sweepSphereCapsule(void *a1, float32x2_t *a2, float32x2_t *a3, float *a4, float32x2_t *a5, float32x2_t *a6, _WORD *a7, float a8)
{
  v90 = *MEMORY[0x1E69E9840];
  v15 = a2[3].f32[0];
  v16 = *(a1 + 3);
  v17 = v15 + v16;
  v18 = a2->f32[0];
  v19 = a2[1].f32[1];
  if ((*a7 & 0x10) != 0)
  {
    v21.i32[0] = a2->i32[1];
    v20.i32[0] = a2[2].i32[0];
  }

  else
  {
    v20 = a2[2];
    v21 = *(a2 + 4);
    v22 = vsub_f32(v20, v21);
    _D16 = vsub_f32(*(a1 + 4), v21);
    _S20 = v22.i32[1];
    __asm { FMLA            S19, S20, V16.S[1] }

    if (_S19 > 0.0)
    {
      v29 = (vmul_f32(v22, v22).f32[0] + ((v19 - v18) * (v19 - v18))) + (v22.f32[1] * v22.f32[1]);
      if (_S19 >= v29)
      {
        _D16 = vsub_f32(_D16, v22);
      }

      else
      {
        _D16 = vsub_f32(_D16, vmul_n_f32(v22, _S19 / v29));
      }
    }

    _S17 = _D16.i32[1];
    __asm { FMLA            S7, S17, V16.S[1] }

    if (_S7 < (v17 * v17))
    {
      *a4 = 0.0;
      v32 = -a3[1].f32[0];
      *a6 = vneg_f32(*a3);
      a6[1].f32[0] = v32;
      return 1;
    }
  }

  v33 = a2[1].f32[0];
  v34 = a2[2].f32[1];
  if (v18 == v19 && v21.f32[0] == v20.f32[0] && v33 == v34)
  {
    v55 = -(a3[1].f32[0] * a8);
    v81 = vmul_n_f32(vneg_f32(*a3), a8);
    v82 = v55;
    v80 = a8;
    result = physx::Gu::sweepSphereSphere(a1, a2, &v81, a4, a6, v16, v15);
    if (!result)
    {
      return result;
    }

    *a4 = *a4 * v80;
    v57 = *(a1 + 3);
    v58 = (v57 * a6[1].f32[0]) + *(a1 + 2);
    *a5 = vadd_f32(vmul_n_f32(*a6, v57), *a1);
    a5[1].f32[0] = v58;
    return 1;
  }

  v81.i32[0] = a2->i32[0];
  v81.i32[1] = v21.i32[0];
  v82 = v33;
  v83 = __PAIR64__(v20.u32[0], LODWORD(v19));
  v84 = v34;
  v85 = v15 + v16;
  v37 = v19 - v18;
  v38 = v20.f32[0] - v21.f32[0];
  v39 = v34 - v33;
  v40 = COERCE_FLOAT(*a1) - v18;
  v41 = COERCE_FLOAT(HIDWORD(*a1)) - v21.f32[0];
  v42 = *(a1 + 2);
  v43 = v42 - v33;
  v44 = ((v38 * v41) + (v40 * v37)) + ((v42 - v33) * (v34 - v33));
  if (v44 > 0.0)
  {
    v45 = ((v38 * v38) + (v37 * v37)) + (v39 * v39);
    if (v44 < v45)
    {
      v46 = v44 / v45;
      v37 = v37 * v46;
      v38 = v38 * v46;
      v39 = v39 * v46;
    }

    v40 = v40 - v37;
    v41 = v41 - v38;
    v43 = v43 - v39;
  }

  v47 = sqrtf(((v41 * v41) + (v40 * v40)) + (v43 * v43)) - v17;
  if (v47 <= 0.0)
  {
    v52 = 0;
    v51 = 0.0;
  }

  else
  {
    v48 = v47 + -10.0;
    if (v47 <= 10.0)
    {
      v48 = 0.0;
    }

    v49 = v42 + (v48 * a3[1].f32[0]);
    v78 = v48;
    v79 = a8;
    v86 = vadd_f32(*a1, vmul_n_f32(*a3, v48));
    v87 = v49;
    physx::Gu::intersectRayCapsuleInternal(&v86, a3, &v81, &v83, &v88, v17);
    v51 = 0.0;
    v52 = v50 == 0;
    if (v50)
    {
      v53 = v88;
      if (v88 >= v89 && v50 != 1)
      {
        v53 = v89;
      }

      v51 = v78 + v53;
    }

    a8 = v79;
  }

  v59 = v51 < 0.0;
  if (v51 > a8)
  {
    v59 = 1;
  }

  v60 = v52 || v59;
  if ((v60 & 1) == 0)
  {
    *a4 = v51;
    v61 = v51 * a3[1].f32[0];
    v62 = v82 - v61;
    v63 = v84 - v61;
    v64 = vmul_n_f32(*a3, v51);
    v65 = vsub_f32(v81, v64);
    v66 = vsub_f32(vsub_f32(v83, v64), v65);
    v67 = v63 - v62;
    v68 = (vmuls_lane_f32(*(a1 + 1) - v65.f32[1], v66, 1) + ((*a1 - v65.f32[0]) * v66.f32[0])) + ((*(a1 + 2) - v62) * v67);
    v69 = 0.0;
    if (v68 > 0.0)
    {
      v70 = ((v66.f32[1] * v66.f32[1]) + (v66.f32[0] * v66.f32[0])) + (v67 * v67);
      v69 = 1.0;
      if (v68 < v70)
      {
        v69 = v68 / v70;
      }
    }

    v71 = v62 + (v67 * v69);
    a5[1].f32[0] = v71;
    v72 = vadd_f32(v65, vmul_n_f32(v66, v69));
    *a5 = v72;
    v73 = vsub_f32(v72, *a1);
    v74 = v71 - *(a1 + 2);
    *a6 = v73;
    a6[1].f32[0] = v74;
    v75 = sqrtf((COERCE_FLOAT(vmul_f32(v73, v73).i32[1]) + (v73.f32[0] * v73.f32[0])) + (v74 * v74));
    if (v75 > 0.0)
    {
      v76 = 1.0 / v75;
      v73 = vmul_n_f32(v73, v76);
      *a6 = v73;
      v74 = v74 * v76;
      a6[1].f32[0] = v74;
    }

    v77 = a2[3].f32[0];
    *a5 = vsub_f32(*a5, vmul_n_f32(v73, v77));
    a5[1].f32[0] = a5[1].f32[0] - (v74 * v77);
  }

  return v60 ^ 1u;
}

uint64_t physx::Adjacencies::ComputeNbBoundaryEdges(physx::Adjacencies *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  v2 = *this;
  if (!v2)
  {
    return 0;
  }

  LODWORD(result) = 0;
  v4 = (v1 + 8);
  do
  {
    v5 = (*(v4 - 2) & 0x1FFFFFFF) == 0x1FFFFFFF;
    if ((*(v4 - 2) & 0x1FFFFFFF) == 0x1FFFFFFF)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    if ((~*(v4 - 1) & 0x1FFFFFFF) == 0)
    {
      v5 = v6;
    }

    v7 = *v4;
    v4 += 3;
    v8 = v5 + result;
    if ((~v7 & 0x1FFFFFFF) != 0)
    {
      result = v8;
    }

    else
    {
      result = v8 + 1;
    }

    --v2;
  }

  while (v2);
  return result;
}

uint64_t physx::AdjacenciesBuilder::Init(unsigned int *a1, unsigned int *a2)
{
  v86 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  if (!v2)
  {
    return 0;
  }

  v3 = a2;
  *a1 = v2;
  v5 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v6 = "static const char *physx::shdfnd::ReflectionAllocator<physx::AdjTriangle>::getName() [T = physx::AdjTriangle]";
  }

  else
  {
    v6 = "<allocation names disabled>";
  }

  v7 = (*(*(v5 + 24) + 16))(v5 + 24, 12 * v2 + 16, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/Adjacencies.cpp", 625);
  *v7 = 12;
  v7[1] = v2;
  *(a1 + 1) = v7 + 2;
  v8 = 3 * *a1;
  v9 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v10 = "static const char *physx::shdfnd::ReflectionAllocator<AdjEdge>::getName() [T = AdjEdge]";
  }

  else
  {
    v10 = "<allocation names disabled>";
  }

  v11 = (*(*(v9 + 24) + 16))(v9 + 24, 12 * v8 + 16, v10, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/Adjacencies.cpp", 627);
  *v11 = 12;
  v11[1] = v8;
  v74 = v11;
  v12 = (v11 + 2);
  v13 = *(a1 + 1);
  if (*a1)
  {
    v14 = 0;
    v15 = *(v3 + 1);
    v16 = *(v3 + 2);
    v17 = 2;
    v18 = *(a1 + 1);
    do
    {
      if (v15)
      {
        v19 = *(v15 + 4 * (v17 - 2));
        v20 = *(v15 + 4 * (v17 - 1));
        v21 = *(v15 + 4 * v17);
      }

      else if (v16)
      {
        v19 = *(v16 + 2 * (v17 - 2));
        v20 = *(v16 + 2 * (v17 - 1));
        v21 = *(v16 + 2 * v17);
      }

      else
      {
        v19 = 0;
        v21 = 2;
        v20 = 1;
      }

      *v18 = -1;
      v18 = (v18 + 12);
      *(v13 + 4 * v17) = -1;
      v22 = &v12[3 * (v17 - 2)];
      if (v19 >= v20)
      {
        v23 = v20;
      }

      else
      {
        v23 = v19;
      }

      if (v19 <= v20)
      {
        v24 = v20;
      }

      else
      {
        v24 = v19;
      }

      *v22 = v23;
      v22[1] = v24;
      v22[2] = v14;
      if (v19 >= v21)
      {
        v25 = v21;
      }

      else
      {
        v25 = v19;
      }

      if (v19 <= v21)
      {
        v19 = v21;
      }

      v26 = &v12[3 * (v17 - 1)];
      *v26 = v25;
      v26[1] = v19;
      v26[2] = v14;
      if (v20 >= v21)
      {
        v27 = v21;
      }

      else
      {
        v27 = v20;
      }

      if (v20 <= v21)
      {
        v20 = v21;
      }

      v28 = &v12[3 * v17];
      *v28 = v27;
      v28[1] = v20;
      v28[2] = v14++;
      v17 += 3;
    }

    while (v14 < *a1);
    v29 = v17 - 2;
  }

  else
  {
    v29 = 0;
  }

  v78 = 0;
  v77 = 0u;
  *&v76[8] = 0u;
  v79 = 1;
  *v76 = 0x80000000;
  v30 = &unk_1F5D21400;
  v75 = &unk_1F5D21400;
  v31 = physx::shdfnd::ReflectionAllocator<unsigned int>::allocate(&v80, 4 * v29, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/Adjacencies.cpp", 536);
  v32 = v31;
  if (v29)
  {
    v33 = 0;
    v34 = 4 * v29;
    v35 = v12;
    do
    {
      v36 = *v35;
      v35 += 3;
      *(v31 + v33) = v36;
      v33 += 4;
    }

    while (v34 != v33);
    physx::Cm::RadixSortBuffered::Sort(&v75);
    v37 = 0;
    v38 = v74 + 5;
    do
    {
      v39 = *v38;
      v38 += 3;
      *(v32 + v37) = v39;
      v37 += 4;
    }

    while (v34 != v37);
    physx::Cm::RadixSortBuffered::Sort(&v75);
  }

  else if (!v31)
  {
LABEL_56:
    LOBYTE(v43) = 1;
    goto LABEL_64;
  }

  (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v32);
  if (!v29)
  {
    goto LABEL_56;
  }

  v43 = 0;
  v44 = *&v76[8];
  v45 = &v12[3 * **&v76[8]];
  v46 = *v45;
  v47 = v45[1];
  v72 = &unk_1F5D21400;
  v73 = v3;
  while (2)
  {
    v48 = 0;
    v49 = 2 - v43;
    v50 = -4;
    v51 = v43;
    v52 = &v80 + v43;
    while (1)
    {
      v53 = &v12[3 * *(v44 + 4 * v48)];
      v54 = v53[1];
      v55 = v53[2];
      v56 = *v53;
      if (*v53 != v46 || v54 != v47)
      {
        break;
      }

      v52[v48] = v55;
      if (v49 == v48)
      {
        physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/Adjacencies.cpp", 570, "Adjacencies::CreateDatabase: can't work on non-manifold meshes.", v40, v41, v42, &unk_1F5D21400);
LABEL_58:
        LOBYTE(v43) = 0;
        goto LABEL_62;
      }

      ++v48;
      v50 -= 4;
      if (v29 == v48)
      {
        if (2 - v51 == v48)
        {
          v3 = v73;
          LOBYTE(v43) = UpdateLink(v80, v81, v46, v47, v13, *(v73 + 1), *(v73 + 2));
LABEL_63:
          v30 = v72;
          goto LABEL_64;
        }

        LOBYTE(v43) = 1;
LABEL_62:
        v3 = v73;
        goto LABEL_63;
      }
    }

    if (2 - v51 == v48 && (UpdateLink(v80, v81, v46, v47, v13, *(v73 + 1), *(v73 + 2)) & 1) == 0)
    {
      goto LABEL_58;
    }

    v58 = v29 - 1;
    v29 = v29 - 1 - v48;
    v44 -= v50;
    v80 = v55;
    v47 = v54;
    v43 = 1;
    v46 = v56;
    v30 = &unk_1F5D21400;
    v3 = v73;
    if (v58 != v48)
    {
      continue;
    }

    break;
  }

LABEL_64:
  v75 = v30;
  physx::Cm::RadixSortBuffered::reset(&v75);
  (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v74);
  if ((v43 & 1) == 0)
  {
    return 0;
  }

  v65 = *(v3 + 3);
  result = 1;
  if (v65)
  {
    *&v76[16] = 1;
    LODWORD(v75) = *v3;
    *v76 = *(v3 + 2);
    *&v77 = v65;
    DWORD2(v77) = v3[8];
    v80 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    if (physx::Gu::EdgeListBuilder::init(&v80, &v75, v59, v60, v61, v62, v63, v64) && *a1)
    {
      v67 = 0;
      v68 = (*(a1 + 1) + 8);
      v69 = (v83 + 4);
      do
      {
        v70 = *(v68 - 1);
        *(v68 - 2) = *(v68 - 2) & 0xDFFFFFFF | (*(v69 - 1) >> 31 << 29);
        *(v68 - 1) = v70 & 0xDFFFFFFF | (v69[1] >> 31 << 29);
        v71 = *v69;
        v69 += 3;
        *v68 = *v68 & 0xDFFFFFFF | (v71 >> 31 << 29);
        v68 += 3;
        ++v67;
      }

      while (v67 < *a1);
    }

    physx::Gu::EdgeList::~EdgeList(&v80);
    return 1;
  }

  return result;
}

uint64_t physx::Gu::EdgeListBuilder::init(physx::Gu::EdgeListBuilder *this, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = this;
  v305 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 4);
  v11 = v10 != 0;
  v12 = *(a2 + 25);
  if (v10 || (a2[6] & 1) != 0)
  {
    result = physx::Gu::EdgeListBuilder::createFacesToEdges(this, *a2, *(a2 + 1), *(a2 + 2), a5, a6, a7, a8);
    if (!result)
    {
      return result;
    }
  }

  if ((v11 | v12))
  {
    v14 = *a2;
    result = physx::Gu::EdgeListBuilder::createFacesToEdges(v9, *a2, *(a2 + 1), *(a2 + 2), a5, a6, a7, a8);
    if (!result)
    {
      return result;
    }

    v15 = *v9;
    if (v15)
    {
      v16 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 8 * v15, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/EdgeList.cpp", 246);
      v17 = (8 * *v9);
    }

    else
    {
      v17 = 0;
      v16 = 0;
    }

    *(v9 + 4) = v16;
    bzero(v16, v17);
    v18 = *(v9 + 4);
    if (v14)
    {
      v19 = (*(v9 + 3) + 8);
      v20 = v14;
      do
      {
        v21 = v18 + 8 * *(v19 - 2);
        ++*(v21 + 2);
        v22 = v18 + 8 * *(v19 - 1);
        ++*(v22 + 2);
        v23 = *v19;
        v19 += 3;
        ++*(v18 + 8 * v23 + 2);
        --v20;
      }

      while (v20);
    }

    *(v18 + 4) = 0;
    v24 = *v9;
    if (v24 >= 2)
    {
      v25 = v24 - 1;
      v26 = (v18 + 12);
      do
      {
        *v26 = *(v26 - 2) + *(v26 - 5);
        v26 += 2;
        --v25;
      }

      while (v25);
    }

    v27 = *(v18 + 8 * (v24 - 1) + 4) + *(v18 + 8 * (v24 - 1) + 2);
    if (v27)
    {
      v28 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * v27, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/EdgeList.cpp", 265);
      v18 = *(v9 + 4);
    }

    else
    {
      v28 = 0;
    }

    *(v9 + 5) = v28;
    if (v14)
    {
      v29 = 0;
      v30 = (*(v9 + 3) + 8);
      do
      {
        v31 = v18 + 8 * *(v30 - 2);
        v32 = *(v31 + 4);
        *(v31 + 4) = v32 + 1;
        *(v28 + 4 * v32) = v29;
        v33 = v18 + 8 * *(v30 - 1);
        v34 = *(v33 + 4);
        *(v33 + 4) = v34 + 1;
        *(v28 + 4 * v34) = v29;
        v35 = *v30;
        v30 += 3;
        v36 = v18 + 8 * v35;
        v37 = *(v36 + 4);
        *(v36 + 4) = v37 + 1;
        *(v28 + 4 * v37) = v29++;
      }

      while (v14 != v29);
    }

    *(v18 + 4) = 0;
    v38 = *v9;
    if (v38 >= 2)
    {
      v39 = v38 - 1;
      v40 = (v18 + 12);
      do
      {
        *v40 = *(v40 - 2) + *(v40 - 5);
        v40 += 2;
        --v39;
      }

      while (v39);
    }
  }

  v41 = *(a2 + 4);
  if (v41)
  {
    v42 = *(a2 + 1);
    v43 = *(a2 + 2);
    if (*(a2 + 2) == 0)
    {
      v259 = physx::shdfnd::Foundation::mInstance;
      v260 = "EdgeList::ComputeActiveEdges: NULL parameter!";
      v261 = 310;
    }

    else
    {
      v44 = *v9;
      if (v44)
      {
        v45 = *(v9 + 1);
        if (v45)
        {
          v46 = *(v9 + 4);
          if (v46)
          {
            v297 = v9;
            v47 = *(v9 + 5);
            if (v47)
            {
              v296 = *a2;
              v48 = *(a2 + 10);
              v52 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v44, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/EdgeList.cpp", 343);
              v53 = v52;
              while (1)
              {
                v54 = *(v46 + 2);
                if (v54 != 1)
                {
                  if (v54 == 2)
                  {
                    v55 = *(v46 + 4);
                    v56 = (3 * *(v47 + 4 * v55));
                    v57 = 3 * *(v47 + 4 * (v55 + 1));
                    if (v42)
                    {
                      v58 = *(v42 + 4 * v56);
                      v59 = *(v42 + 4 * (v56 + 1));
                      v60 = *(v42 + 4 * (v56 + 2));
                      v61 = *(v42 + 4 * v57);
                      v62 = *(v42 + 4 * (v57 + 1));
                      v63 = *(v42 + 4 * (v57 + 2));
                    }

                    else
                    {
                      v58 = *(v43 + 2 * v56);
                      v59 = *(v43 + 2 * (v56 + 1));
                      v60 = *(v43 + 2 * (v56 + 2));
                      v61 = *(v43 + 2 * v57);
                      v62 = *(v43 + 2 * (v57 + 1));
                      v63 = *(v43 + 2 * (v57 + 2));
                    }

                    v69 = *v45;
                    v70 = v45[1];
                    if (v69 == v58)
                    {
                      v71 = v60;
                      if (v70 != v59)
                      {
                        v71 = v59;
                        goto LABEL_44;
                      }
                    }

                    else
                    {
                      if (v69 != v59)
                      {
                        if (v69 == v60)
                        {
                          v71 = v58;
                          if (v70 == v59)
                          {
                            goto LABEL_125;
                          }

                          v71 = v59;
                          if (v70 == v58)
                          {
                            goto LABEL_125;
                          }
                        }

LABEL_124:
                        v71 = -1;
                        goto LABEL_125;
                      }

                      v71 = v60;
                      if (v70 != v58)
                      {
                        v71 = v58;
LABEL_44:
                        if (v70 == v60)
                        {
                          goto LABEL_125;
                        }

                        goto LABEL_124;
                      }
                    }

LABEL_125:
                    v189 = (v41 + 12 * v61);
                    v190 = (v41 + 12 * v62);
                    v191 = (v41 + 12 * v63);
                    v192 = v189[1];
                    v193 = *v190 - *v189;
                    v194 = v190[1] - v192;
                    v195 = v189[2];
                    v196 = v190[2] - v195;
                    v197 = *v191 - *v189;
                    v198 = v191[1] - v192;
                    v199 = v191[2] - v195;
                    v200 = (v194 * v199) - (v196 * v198);
                    v201 = (v196 * v197) - (v193 * v199);
                    v202 = (v193 * v198) - (v194 * v197);
                    v203 = ((v201 * v201) + (v200 * v200)) + (v202 * v202);
                    v204 = 0.0;
                    v205 = v203 <= 0.0;
                    v206 = sqrtf(v203);
                    v207 = 0.0;
                    v208 = 0.0;
                    if (!v205)
                    {
                      v204 = v200 * (1.0 / v206);
                      v207 = v201 * (1.0 / v206);
                      v208 = v202 * (1.0 / v206);
                    }

                    v209 = ((v192 * v207) + (*v189 * v204)) + (v195 * v208);
                    v210 = ((v207 * *(v41 + 12 * v71 + 4)) + (*(v41 + 12 * v71) * v204)) + (*(v41 + 12 * v71 + 8) * v208);
                    v211 = (v41 + 12 * v58);
                    v212 = (v41 + 12 * v59);
                    v213 = (v41 + 12 * v60);
                    v214 = v211[1];
                    v215 = v211[2];
                    v216 = v213[2];
                    v217 = *v212 - *v211;
                    v218 = v212[1] - v214;
                    v219 = v212[2] - v215;
                    v220 = *v213 - *v211;
                    v221 = v213[1] - v214;
                    v222 = (v218 * (v216 - v215)) - (v219 * v221);
                    v223 = (v219 * v220) - (v217 * (v216 - v215));
                    v224 = (v217 * v221) - (v218 * v220);
                    v225 = sqrtf(((v223 * v223) + (v222 * v222)) + (v224 * v224));
                    if (v210 >= v209)
                    {
                      if (v225 > 0.0)
                      {
                        v228 = 1.0 / v225;
                        v222 = v222 * v228;
                        v223 = v223 * v228;
                        v224 = v224 * v228;
                      }

                      if (v206 > 0.0)
                      {
                        v229 = 1.0 / v206;
                        v200 = v200 * v229;
                        v201 = v201 * v229;
                        v202 = v202 * v229;
                      }

                      LOBYTE(v54) = (((v223 * v201) + (v222 * v200)) + (v224 * v202)) < -0.999;
                    }

                    else
                    {
                      if (v225 > 0.0)
                      {
                        v226 = 1.0 / v225;
                        v222 = v222 * v226;
                        v223 = v223 * v226;
                        v224 = v224 * v226;
                      }

                      if (v206 > 0.0)
                      {
                        v227 = 1.0 / v206;
                        v200 = v200 * v227;
                        v201 = v201 * v227;
                        v202 = v202 * v227;
                      }

                      LOBYTE(v54) = fabsf(atan2f(sqrtf(((((v224 * v200) - (v222 * v202)) * ((v224 * v200) - (v222 * v202))) + (((v223 * v202) - (v224 * v201)) * ((v223 * v202) - (v224 * v201)))) + (((v222 * v201) - (v223 * v200)) * ((v222 * v201) - (v223 * v200)))), ((v223 * v201) + (v222 * v200)) + (v224 * v202))) > v48;
                    }

                    goto LABEL_162;
                  }

                  v64 = *(v46 + 4);
                  v65 = (3 * *(v47 + 4 * v64));
                  if (v42)
                  {
                    v66 = *(v42 + 4 * v65);
                    v67 = *(v42 + 4 * (v65 + 1));
                    v68 = *(v42 + 4 * (v65 + 2));
                  }

                  else
                  {
                    v66 = *(v43 + 2 * v65);
                    v67 = *(v43 + 2 * (v65 + 1));
                    v68 = *(v43 + 2 * (v65 + 2));
                  }

                  if (v54 >= 2)
                  {
                    v72 = 0;
                    v73 = 0;
                    v74 = 0;
                    v75 = 0;
                    v76 = 0;
                    v299 = (v41 + 12 * v66);
                    v300 = (v41 + 12 * v67);
                    v49 = -v54;
                    v77 = 1;
                    v50 = 1 - v54;
                    v78 = 1;
                    v298 = (v41 + 12 * v68);
                    while (1)
                    {
                      while (1)
                      {
                        v51 = -v77;
                        v79 = v64 + v77;
LABEL_50:
                        v80 = (3 * *(v47 + 4 * v79));
                        if (v42)
                        {
                          v81 = *(v42 + 4 * v80);
                          v82 = *(v42 + 4 * (v80 + 1));
                          v83 = *(v42 + 4 * (v80 + 2));
                        }

                        else
                        {
                          v81 = *(v43 + 2 * v80);
                          v82 = *(v43 + 2 * (v80 + 1));
                          v83 = *(v43 + 2 * (v80 + 2));
                        }

                        v84 = v81 == v66 || v81 == v67;
                        if (!v84 && v81 != v68)
                        {
                          break;
                        }

                        v86 = v82 == v66 || v82 == v67;
                        if (!v86 && v82 != v68)
                        {
                          break;
                        }

                        v88 = v83 == v66 || v83 == v67;
                        if (!v88 && v83 != v68)
                        {
                          break;
                        }

                        v131 = v299[1];
                        v132 = v299[2];
                        v133 = v298[2];
                        v134 = *v300 - *v299;
                        v135 = v300[1] - v131;
                        v136 = v300[2] - v132;
                        v137 = *v298 - *v299;
                        v138 = v298[1] - v131;
                        v139 = (v135 * (v133 - v132)) - (v136 * v138);
                        v140 = (v136 * v137) - (v134 * (v133 - v132));
                        v141 = (v134 * v138) - (v135 * v137);
                        v142 = sqrtf(((v140 * v140) + (v139 * v139)) + (v141 * v141));
                        if (v142 > 0.0)
                        {
                          v143 = 1.0 / v142;
                          v139 = v139 * v143;
                          v140 = v140 * v143;
                          v141 = v141 * v143;
                        }

                        v144 = (v41 + 12 * v81);
                        v145 = (v41 + 12 * v82);
                        v146 = (v41 + 12 * v83);
                        v147 = v144[1];
                        v148 = v144[2];
                        v149 = v146[2];
                        v150 = *v145 - *v144;
                        v151 = v145[1] - v147;
                        v152 = v145[2] - v148;
                        v153 = *v146 - *v144;
                        v154 = v146[1] - v147;
                        v155 = (v151 * (v149 - v148)) - (v152 * v154);
                        v156 = (v152 * v153) - (v150 * (v149 - v148));
                        v157 = (v150 * v154) - (v151 * v153);
                        v158 = sqrtf(((v156 * v156) + (v155 * v155)) + (v157 * v157));
                        if (v158 > 0.0)
                        {
                          v159 = 1.0 / v158;
                          v155 = v155 * v159;
                          v156 = v156 * v159;
                          v157 = v157 * v159;
                        }

                        v73 |= (((v140 * v156) + (v139 * v155)) + (v141 * v157)) < -0.999;
                        v77 = 1 - v51;
                        if (v50 == v51)
                        {
                          if (v78 != 2)
                          {
                            goto LABEL_160;
                          }

LABEL_115:
                          if ((v73 | v72))
                          {
                            v160 = (v41 + 12 * v75);
                            v161 = (v41 + 12 * v76);
                            v162 = *v160;
                            v163 = v160[1];
                            v164 = v161[1];
                            v165 = v160[2];
                            v166 = v161[2];
                            v167 = (v41 + 12 * v74);
                            v168 = v167[2];
                            v169 = v162 - *v161;
                            v170 = v163 - v164;
                            v171 = v165 - v166;
                            v172 = *v167 - *v161;
                            v173 = v167[1] - v164;
                            v107 = (v170 * (v168 - v166)) - (v171 * v173);
                            v108 = (v171 * v172) - (v169 * (v168 - v166));
                            v109 = (v169 * v173) - (v170 * v172);
                            v110 = ((v108 * v108) + (v107 * v107)) + (v109 * v109);
                            goto LABEL_117;
                          }

LABEL_139:
                          v231 = *v45;
                          v230 = v45[1];
                          if (v231 == v66)
                          {
                            if (v230 != v67)
                            {
LABEL_149:
                              if (v230 != v68)
                              {
                                goto LABEL_150;
                              }

                              goto LABEL_151;
                            }
                          }

                          else
                          {
                            if (v231 != v67)
                            {
                              if (v231 != v68)
                              {
                                goto LABEL_150;
                              }

                              if (v230 == v67)
                              {
                                LODWORD(v67) = v66;
                              }

                              else if (v230 != v66)
                              {
LABEL_150:
                                LODWORD(v67) = -1;
                              }

LABEL_151:
                              v232 = (v41 + 12 * v76);
                              v233 = (v41 + 12 * v75);
                              v234 = (v41 + 12 * v74);
                              v235 = v232[1];
                              v236 = *v233 - *v232;
                              v237 = v233[1] - v235;
                              v238 = v232[2];
                              v239 = v233[2] - v238;
                              v240 = *v234 - *v232;
                              v241 = v234[1] - v235;
                              v242 = v234[2] - v238;
                              v107 = (v237 * v242) - (v239 * v241);
                              v108 = (v239 * v240) - (v236 * v242);
                              v109 = (v236 * v241) - (v237 * v240);
                              v243 = ((v108 * v108) + (v107 * v107)) + (v109 * v109);
                              v244 = 0.0;
                              v245 = 0.0;
                              v246 = 0.0;
                              if (v243 > 0.0)
                              {
                                v247 = 1.0 / sqrtf(v243);
                                v244 = v107 * v247;
                                v245 = v108 * v247;
                                v246 = v109 * v247;
                              }

                              if ((((v245 * *(v41 + 12 * v67 + 4)) + (*(v41 + 12 * v67) * v244)) + (*(v41 + 12 * v67 + 8) * v246)) < (((v235 * v245) + (*v232 * v244)) + (v238 * v246)))
                              {
                                v248 = v299[1];
                                v249 = v299[2];
                                v250 = v298[2];
                                v251 = *v300 - *v299;
                                v252 = v300[1] - v248;
                                v253 = v300[2] - v249;
                                v254 = *v298 - *v299;
                                v255 = v298[1] - v248;
                                v182 = (v252 * (v250 - v249)) - (v253 * v255);
                                v183 = (v253 * v254) - (v251 * (v250 - v249));
                                v184 = (v251 * v255) - (v252 * v254);
                                v256 = sqrtf(((v183 * v183) + (v182 * v182)) + (v184 * v184));
                                if (v256 > 0.0)
                                {
                                  v257 = 1.0 / v256;
                                  v182 = v182 * v257;
                                  v183 = v183 * v257;
                                  v184 = v184 * v257;
                                }

                                v258 = sqrtf(v243);
                                if (v258 > 0.0)
                                {
                                  v188 = 1.0 / v258;
                                  v107 = v107 * v188;
LABEL_158:
                                  v108 = v108 * v188;
                                  v109 = v109 * v188;
                                }

LABEL_159:
                                if (fabsf(atan2f(sqrtf(((((v184 * v107) - (v182 * v109)) * ((v184 * v107) - (v182 * v109))) + (((v183 * v109) - (v184 * v108)) * ((v183 * v109) - (v184 * v108)))) + (((v182 * v108) - (v183 * v107)) * ((v182 * v108) - (v183 * v107)))), ((v183 * v108) + (v182 * v107)) + (v184 * v109))) > v48)
                                {
                                  goto LABEL_160;
                                }
                              }

                              LOBYTE(v54) = 0;
                              goto LABEL_162;
                            }

                            if (v230 != v66)
                            {
                              LODWORD(v67) = v66;
                              goto LABEL_149;
                            }
                          }

                          LODWORD(v67) = v68;
                          goto LABEL_151;
                        }
                      }

                      if (v78 != 2)
                      {
                        --v51;
                        ++v79;
                        v78 = 2;
                        v74 = v83;
                        v75 = v82;
                        v76 = v81;
                        if (v49 == v51)
                        {
                          v76 = v81;
                          v75 = v82;
                          v74 = v83;
                          goto LABEL_115;
                        }

                        goto LABEL_50;
                      }

                      if (v81 != v76 && v81 != v75 && v81 != v74)
                      {
                        break;
                      }

                      v92 = v82 == v76 || v82 == v75;
                      if (!v92 && v82 != v74)
                      {
                        break;
                      }

                      v94 = v83 == v76 || v83 == v75;
                      if (!v94 && v83 != v74)
                      {
                        break;
                      }

                      v96 = (v41 + 12 * v76);
                      v97 = (v41 + 12 * v75);
                      v98 = (v41 + 12 * v74);
                      v99 = v96[1];
                      v100 = v96[2];
                      v101 = *v97 - *v96;
                      v102 = v97[1] - v99;
                      v103 = v97[2] - v100;
                      v104 = *v98 - *v96;
                      v105 = v98[1] - v99;
                      v106 = v98[2] - v100;
                      v107 = (v102 * v106) - (v103 * v105);
                      v108 = (v103 * v104) - (v101 * v106);
                      v109 = (v101 * v105) - (v102 * v104);
                      v110 = ((v108 * v108) + (v107 * v107)) + (v109 * v109);
                      v111 = sqrtf(v110);
                      v112 = v107;
                      v113 = v108;
                      v114 = v109;
                      if (v111 > 0.0)
                      {
                        v112 = v107 * (1.0 / v111);
                        v113 = v108 * (1.0 / v111);
                        v114 = v109 * (1.0 / v111);
                      }

                      v115 = (v41 + 12 * v81);
                      v116 = (v41 + 12 * v82);
                      v117 = (v41 + 12 * v83);
                      v118 = v115[1];
                      v119 = v115[2];
                      v120 = v117[2];
                      v121 = *v116 - *v115;
                      v122 = v116[1] - v118;
                      v123 = v116[2] - v119;
                      v124 = *v117 - *v115;
                      v125 = v117[1] - v118;
                      v126 = (v122 * (v120 - v119)) - (v123 * v125);
                      v127 = (v123 * v124) - (v121 * (v120 - v119));
                      v128 = (v121 * v125) - (v122 * v124);
                      v129 = sqrtf(((v127 * v127) + (v126 * v126)) + (v128 * v128));
                      if (v129 > 0.0)
                      {
                        v130 = 1.0 / v129;
                        v126 = v126 * v130;
                        v127 = v127 * v130;
                        v128 = v128 * v130;
                      }

                      v72 |= (((v113 * v127) + (v112 * v126)) + (v114 * v128)) < -0.999;
                      v77 = 1 - v51;
                      v78 = 2;
                      if (v50 == v51)
                      {
                        if (((v73 | v72) & 1) == 0)
                        {
                          goto LABEL_139;
                        }

LABEL_117:
                        v174 = v299[1];
                        v175 = v299[2];
                        v176 = v298[2];
                        v177 = *v300 - *v299;
                        v178 = v300[1] - v174;
                        v179 = v300[2] - v175;
                        v180 = *v298 - *v299;
                        v181 = v298[1] - v174;
                        v182 = (v178 * (v176 - v175)) - (v179 * v181);
                        v183 = (v179 * v180) - (v177 * (v176 - v175));
                        v184 = (v177 * v181) - (v178 * v180);
                        v185 = sqrtf(((v183 * v183) + (v182 * v182)) + (v184 * v184));
                        if (v185 > 0.0)
                        {
                          v186 = 1.0 / v185;
                          v182 = v182 * v186;
                          v183 = v183 * v186;
                          v184 = v184 * v186;
                        }

                        v187 = sqrtf(v110);
                        if (v187 > 0.0)
                        {
                          v188 = 1.0 / v187;
                          v107 = v188 * v107;
                          goto LABEL_158;
                        }

                        goto LABEL_159;
                      }
                    }
                  }

LABEL_160:
                  LOBYTE(v54) = 1;
                }

LABEL_162:
                *v53++ = v54;
                v46 += 8;
                v45 += 2;
                LODWORD(v44) = v44 - 1;
                if (!v44)
                {
                  v9 = v297;
                  if (*(v297 + 4))
                  {
                    v262 = 0;
                    v263 = *(v297 + 3);
                    do
                    {
                      for (i = 0; i != 12; i += 4)
                      {
                        v265 = *(v263 + i);
                        if ((v265 & 0x80000000) == 0 && *(v52 + (v265 & 0xFFFFFFF)) == 1)
                        {
                          *(v263 + i) = v265 | 0x80000000;
                        }
                      }

                      ++v262;
                      v263 += 12;
                    }

                    while (v262 < *(v297 + 4));
                  }

                  v266 = *v297;
                  if (v266)
                  {
                    v267 = 0;
                    v268 = 8 * v266;
                    v269 = v52;
                    do
                    {
                      v270 = *v269++;
                      if (v270 == 1)
                      {
                        *(*(v297 + 4) + v267) |= 1u;
                      }

                      v267 += 8;
                    }

                    while (v268 != v267);
                  }

                  else if (!v52)
                  {
                    goto LABEL_188;
                  }

                  (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v52, v49, v50, v51);
LABEL_188:
                  if (v296)
                  {
                    v271 = 0;
                    v272 = 0;
                    do
                    {
                      if (v42)
                      {
                        v273 = *(v42 + 4 * v271);
                        v274 = *(v42 + 4 * (v271 + 1));
                        v275 = *(v42 + 4 * (v271 + 2));
                      }

                      else
                      {
                        v273 = *(v43 + 2 * v271);
                        v274 = *(v43 + 2 * (v271 + 1));
                        v275 = *(v43 + 2 * (v271 + 2));
                      }

                      if (v273 > v272)
                      {
                        v272 = v273;
                      }

                      if (v274 > v272)
                      {
                        v272 = v274;
                      }

                      if (v275 > v272)
                      {
                        v272 = v275;
                      }

                      v271 += 3;
                    }

                    while (3 * v296 != v271);
                    v276 = v272 + 1;
                    if (v272 == -1)
                    {
                      v276 = 0;
                      v277 = 0;
LABEL_204:
                      bzero(v277, v276);
                      v278 = *(v297 + 4);
                      if (v278)
                      {
                        v279 = 0;
                        v280 = 0;
                        v281 = *(v297 + 3);
                        v282 = v281;
                        do
                        {
                          if (v42)
                          {
                            v283 = *(v42 + 4 * (3 * v279));
                            v284 = *(v42 + 4 * (3 * v279 + 1));
                            v301 = *(v42 + 4 * (3 * v279 + 1));
                            v302 = v283;
                            v280 = *(v42 + 4 * (3 * v279 + 2));
                          }

                          else if (v43)
                          {
                            v285 = *(v43 + 2 * (3 * v279));
                            v284 = *(v43 + 2 * (3 * v279 + 1));
                            v301 = *(v43 + 2 * (3 * v279 + 1));
                            v302 = v285;
                            v280 = *(v43 + 2 * (3 * v279 + 2));
                          }

                          else
                          {
                            v284 = 0;
                          }

                          for (j = 0; j != 3; ++j)
                          {
                            if ((*(v282 + 4 * j) & 0x80000000) != 0)
                            {
                              if (j == 1)
                              {
                                v287 = &v301;
                              }

                              else
                              {
                                v287 = &v302;
                              }

                              if (j)
                              {
                                v288 = v280;
                              }

                              else
                              {
                                v287 = &v302;
                                v288 = v284;
                              }

                              *(v277 + v288) = 1;
                              *(v277 + *v287) = 1;
                            }
                          }

                          ++v279;
                          v282 += 12;
                        }

                        while (v279 != v278);
                        for (k = 0; k < *(v297 + 4); ++k)
                        {
                          if (v42)
                          {
                            v290 = *(v42 + 4 * (3 * k + 1));
                            v302 = *(v42 + 4 * (3 * k));
                            v303 = v290;
                            v291 = *(v42 + 4 * (3 * k + 2));
                          }

                          else
                          {
                            if (!v43)
                            {
                              goto LABEL_228;
                            }

                            v292 = *(v43 + 2 * (3 * k + 1));
                            v302 = *(v43 + 2 * (3 * k));
                            v303 = v292;
                            v291 = *(v43 + 2 * (3 * k + 2));
                          }

                          v304 = v291;
LABEL_228:
                          for (m = 0; m != 12; m += 4)
                          {
                            v294 = *(v281 + m);
                            if ((v294 & 0x40000000) == 0 && *(v277 + *(&v302 + m)) == 1)
                            {
                              *(v281 + m) = v294 | 0x40000000;
                            }
                          }

                          v281 += 12;
                        }
                      }

                      if (v277)
                      {
                        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v277);
                      }

                      goto LABEL_236;
                    }
                  }

                  else
                  {
                    v276 = 1;
                  }

                  v277 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v276, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/EdgeList.cpp", 643);
                  goto LABEL_204;
                }
              }
            }

            v259 = physx::shdfnd::Foundation::mInstance;
            v260 = "ActiveEdges::ComputeConvexEdges: no faces-by-edges in edge list!";
            v261 = 338;
          }

          else
          {
            v259 = physx::shdfnd::Foundation::mInstance;
            v260 = "ActiveEdges::ComputeConvexEdges: no edge-to-triangle in edge list!";
            v261 = 331;
          }
        }

        else
        {
          v259 = physx::shdfnd::Foundation::mInstance;
          v260 = "ActiveEdges::ComputeConvexEdges: no edge data in edge list!";
          v261 = 324;
        }
      }

      else
      {
        v259 = physx::shdfnd::Foundation::mInstance;
        v260 = "ActiveEdges::ComputeConvexEdges: no edges in edge list!";
        v261 = 317;
      }
    }

    physx::shdfnd::Foundation::error(v259, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/EdgeList.cpp", v261, v260, a6, a7, a8, v295);
    return 0;
  }

LABEL_236:
  if ((a2[6] & 1) == 0)
  {
    if (*(v9 + 3))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }

    *(v9 + 3) = 0;
  }

  if ((*(a2 + 25) & 1) == 0)
  {
    if (*(v9 + 4))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }

    *(v9 + 4) = 0;
    if (*(v9 + 5))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }

    *(v9 + 5) = 0;
  }

  return 1;
}

__n128 physx::Cooking::setParams(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 24) = *(a2 + 2);
  *(a1 + 8) = v2;
  *(a1 + 32) = *(a2 + 6);
  result = *(a2 + 28);
  *(a1 + 52) = *(a2 + 11);
  *(a1 + 36) = result;
  return result;
}

uint64_t physx::Cooking::release(physx::Cooking *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (this)
  {
    this = (*(*this + 128))(this);
    v9 = vars8;
  }

  return physx::shdfnd::Foundation::decRefCount(this, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t physx::Cooking::validateTriangleMesh(uint64_t a1, uint64_t a2)
{
  fegetenv(&v20);
  fesetenv(MEMORY[0x1E69E9AE0]);
  v7 = *(a2 + 16);
  if (v7 < 3 || ((v8 = *(a2 + 32), -1431655765 * v7 >= 0x55555556) ? (v9 = v8 == 0) : (v9 = 0), v9 || *(a2 + 64) && *(a2 + 56) < 2u || v7 >= 0x10000 && (*(a2 + 48) & 2) != 0 || !*(a2 + 8) || *a2 < 0xCu || v8 && ((*(a2 + 48) & 2) != 0 ? (v10 = 6) : (v10 = 12), *(a2 + 24) < v10)))
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/Cooking.cpp", 102, "Cooking::validateTriangleMesh: user-provided triangle mesh descriptor is invalid!", v4, v5, v6, v17);
    v11 = 0;
  }

  else
  {
    physx::BV4TriangleMeshBuilder::BV4TriangleMeshBuilder(v18, a1 + 8);
    v11 = physx::TriangleMeshBuilder::loadFromDesc(v18, a2, 0, 1, v13, v14, v15, v16);
    v18[0] = &unk_1F5D231C0;
    physx::Gu::BV4TriangleData::~BV4TriangleData(&v19);
    v18[0] = &unk_1F5D23180;
    physx::TriangleMeshBuilder::releaseEdgeList(v18);
  }

  fesetenv(&v20);
  return v11;
}

uint64_t physx::Cooking::cookTriangleMesh(uint64_t a1, void *a2, __int128 *a3, void (***a4)(uint64_t (***)(void, unsigned int *, uint64_t), unsigned int *, uint64_t), _DWORD *a5)
{
  fegetenv(v17);
  fesetenv(MEMORY[0x1E69E9AE0]);
  if (a5)
  {
    *a5 = 0;
  }

  v14 = physx::TriangleMeshBuilder::loadFromDesc(a2, a3, a5, 0, v10, v11, v12, v13);
  if (v14)
  {
    v15 = (*(*a1 + 24))(a1);
    physx::TriangleMeshBuilder::save(a2, a4, v15, a1 + 8);
  }

  fesetenv(v17);
  return v14;
}

uint64_t physx::Cooking::cookTriangleMesh(uint64_t a1, __int128 *a2, void (***a3)(uint64_t (***)(void, unsigned int *, uint64_t), unsigned int *, uint64_t), _DWORD *a4)
{
  if (*(a1 + 48))
  {
    physx::BV4TriangleMeshBuilder::BV4TriangleMeshBuilder(v10, a1 + 8);
    v8 = physx::Cooking::cookTriangleMesh(a1, v10, a2, a3, a4);
    v10[0] = &unk_1F5D231C0;
    physx::Gu::BV4TriangleData::~BV4TriangleData(&v11);
    v10[0] = &unk_1F5D23180;
    physx::TriangleMeshBuilder::releaseEdgeList(v10);
  }

  else
  {
    physx::RTreeTriangleMeshBuilder::RTreeTriangleMeshBuilder(v10, a1 + 8);
    v8 = physx::Cooking::cookTriangleMesh(a1, v10, a2, a3, a4);
    physx::RTreeTriangleMeshBuilder::~RTreeTriangleMeshBuilder(v10);
  }

  return v8;
}

uint64_t physx::Cooking::createTriangleMesh(uint64_t a1, void *a2, __int128 *a3, uint64_t (***a4)(void, uint64_t, void), _DWORD *a5)
{
  fegetenv(v17);
  fesetenv(MEMORY[0x1E69E9AE0]);
  if (a5)
  {
    *a5 = 0;
  }

  if (physx::TriangleMeshBuilder::loadFromDesc(a2, a3, a5, 0, v10, v11, v12, v13))
  {
    if ((*(a1 + 32) & 8) == 0)
    {
      physx::TriangleMeshBuilder::checkMeshIndicesSize(a2);
    }

    if ((*(*a2 + 16))(a2))
    {
      v14 = 4;
    }

    else
    {
      v14 = 3;
    }

    v15 = (**a4)(a4, v14, a2[3]);
  }

  else
  {
    v15 = 0;
  }

  fesetenv(v17);
  return v15;
}

uint64_t physx::Cooking::createTriangleMesh(uint64_t a1, __int128 *a2, uint64_t (***a3)(void, uint64_t, void), _DWORD *a4)
{
  if (*(a1 + 48))
  {
    physx::BV4TriangleMeshBuilder::BV4TriangleMeshBuilder(v10, a1 + 8);
    TriangleMesh = physx::Cooking::createTriangleMesh(a1, v10, a2, a3, a4);
    v10[0] = &unk_1F5D231C0;
    physx::Gu::BV4TriangleData::~BV4TriangleData(&v11);
    v10[0] = &unk_1F5D23180;
    physx::TriangleMeshBuilder::releaseEdgeList(v10);
  }

  else
  {
    physx::RTreeTriangleMeshBuilder::RTreeTriangleMeshBuilder(v10, a1 + 8);
    TriangleMesh = physx::Cooking::createTriangleMesh(a1, v10, a2, a3, a4);
    physx::RTreeTriangleMeshBuilder::~RTreeTriangleMeshBuilder(v10);
  }

  return TriangleMesh;
}

uint64_t physx::Cooking::cookConvexMeshInternal(uint64_t a1, __int128 *a2, float32x4_t *a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5)
  {
    *a5 = 3;
  }

  v12 = *(a2 + 4);
  if (v12 < 3 || v12 >= 0x10000 && (*(a2 + 36) & 1) != 0 || !*(a2 + 1) || *a2 < 0xCu || *(a2 + 38) < 4u)
  {
    goto LABEL_21;
  }

  if (*(a2 + 4))
  {
    if (*(a2 + 10) < 4u || !*(a2 + 7))
    {
      goto LABEL_21;
    }

    v13 = *(a2 + 36);
    v14 = (v13 & 1) != 0 ? 2 : 4;
    if (*(a2 + 12) < v14 || *(a2 + 6) <= 0x13u)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v13 = *(a2 + 36);
    if ((v13 & 2) == 0)
    {
LABEL_21:
      v16 = physx::shdfnd::Foundation::mInstance;
      v17 = "Cooking::cookConvexMesh: user-provided convex mesh descriptor is invalid!";
      v18 = 4;
      v19 = 193;
LABEL_22:
      physx::shdfnd::Foundation::error(v16, v18, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/Cooking.cpp", v19, v17, a6, a7, a8, v27);
      return 0;
    }
  }

  v15 = *(a2 + 37);
  if ((v13 & 0x20) != 0)
  {
    if ((v15 - 4) >= 0xFD)
    {
      goto LABEL_21;
    }
  }

  else if ((v15 - 8) >= 0xF9)
  {
    goto LABEL_21;
  }

  if (*(a1 + 8) <= 0.0)
  {
    v16 = physx::shdfnd::Foundation::mInstance;
    v17 = "Cooking::cookConvexMesh: provided cooking parameter areaTestEpsilon is invalid!";
    v18 = 4;
    v19 = 199;
    goto LABEL_22;
  }

  if (*(a1 + 12) < 0.0)
  {
    v16 = physx::shdfnd::Foundation::mInstance;
    v17 = "Cooking::cookConvexMesh: provided cooking parameter planeTolerance is invalid!";
    v18 = 4;
    v19 = 205;
    goto LABEL_22;
  }

  v21 = a2[3];
  v29 = a2[2];
  v30 = v21;
  v31 = *(a2 + 16);
  v22 = a2[1];
  v27 = *a2;
  v28 = v22;
  v32 = v13;
  v33 = *(a2 + 74);
  if ((v13 & 2) != 0)
  {
    v32 = v13 & 0xFFFE;
    v31 = 0;
    *(&v30 + 1) = 0;
    LODWORD(v30) = 0;
    DWORD2(v29) = 0;
    *&v29 = 0;
    DWORD2(v28) = 0;
    v24 = (*(*a4 + 16))(a4);
    v25 = v24;
    if (v24 == 2)
    {
      goto LABEL_35;
    }

    if (v24 == 1)
    {
      result = 0;
      *a5 = 1;
      return result;
    }

    v23 = 0;
    if (!v24)
    {
LABEL_35:
      v23 = v24 == 2;
      (*(*a4 + 24))(a4, &v27);
    }

    if ((v25 | 2) != 2)
    {
      return 0;
    }
  }

  else
  {
    v23 = 0;
  }

  if (v28 >= 0x100)
  {
    v16 = physx::shdfnd::Foundation::mInstance;
    v17 = "Cooking::cookConvexMesh: user-provided hull must have less than 256 vertices!";
    v18 = 32;
    v19 = 247;
    goto LABEL_22;
  }

  result = physx::ConvexMeshBuilder::build(a3, &v27, *(a1 + 52), 0, a4, a6, a7, a8);
  if (a5 && result)
  {
    if (v23)
    {
      v26 = 2;
    }

    else
    {
      v26 = 0;
    }

    *a5 = v26;
    return 1;
  }

  return result;
}

uint64_t physx::Cooking::cookConvexMesh(_BYTE *a1, uint64_t a2, void (***a3)(uint64_t (***)(void, unsigned int *, uint64_t), unsigned int *, uint64_t), int *a4)
{
  fegetenv(&v37);
  fesetenv(MEMORY[0x1E69E9AE0]);
  v11 = *(a2 + 48);
  v33[2] = *(a2 + 32);
  v33[3] = v11;
  v34 = *(a2 + 64);
  v12 = *(a2 + 16);
  v33[0] = *a2;
  v33[1] = v12;
  v35 = *(a2 + 72);
  v13 = *(a2 + 74);
  v36 = v13;
  if ((v35 & 2) != 0)
  {
    if ((v35 & 0x80) != 0)
    {
      if ((v13 & 0xFFC0) != 0)
      {
        LOWORD(v13) = 64;
      }

      LOWORD(v36) = v13;
    }

    v15 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v16 = "static const char *physx::shdfnd::ReflectionAllocator<physx::QuickHullConvexHullLib>::getName() [T = physx::QuickHullConvexHullLib]";
    }

    else
    {
      v16 = "<allocation names disabled>";
    }

    v14 = (*(*(v15 + 24) + 16))(v15 + 24, 88, v16, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/Cooking.cpp", 283);
    physx::QuickHullConvexHullLib::QuickHullConvexHullLib(v14, v33, (a1 + 8));
  }

  else
  {
    v14 = 0;
  }

  v17 = a1[22];
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  v24 = v28;
  v25 = v17;
  v26 = 0;
  v27 = 0;
  v28[18] = 0;
  v29 = 0;
  v30 = xmmword_1E3047680;
  v31 = xmmword_1E3047680;
  v32 = 0x3F80000000000000;
  if (physx::Cooking::cookConvexMeshInternal(a1, v33, v22, v14, a4, v8, v9, v10))
  {
    v18 = (*(*a1 + 24))(a1);
    if (physx::ConvexMeshBuilder::save(v22, a3, v18))
    {
      v19 = 1;
      v20 = 1;
      if (!v14)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    if (a4)
    {
      *a4 = 3;
    }
  }

  v19 = 0;
  v20 = 0;
  if (v14)
  {
LABEL_18:
    (*(*v14 + 8))(v14);
    v20 = v19;
  }

LABEL_19:
  physx::ConvexMeshBuilder::~ConvexMeshBuilder(v22);
  fesetenv(&v37);
  return v20;
}

uint64_t physx::Cooking::createConvexMesh(uint64_t a1, uint64_t a2, uint64_t (***a3)(void, uint64_t, _WORD *), int *a4)
{
  fegetenv(&v36);
  fesetenv(MEMORY[0x1E69E9AE0]);
  v11 = *(a2 + 48);
  v32[2] = *(a2 + 32);
  v32[3] = v11;
  v33 = *(a2 + 64);
  v12 = *(a2 + 16);
  v32[0] = *a2;
  v32[1] = v12;
  v34 = *(a2 + 72);
  v13 = *(a2 + 74);
  v35 = v13;
  if ((v34 & 2) != 0)
  {
    if ((v34 & 0x80) != 0)
    {
      if ((v13 & 0xFFC0) != 0)
      {
        LOWORD(v13) = 64;
      }

      LOWORD(v35) = v13;
    }

    v15 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v16 = "static const char *physx::shdfnd::ReflectionAllocator<physx::QuickHullConvexHullLib>::getName() [T = physx::QuickHullConvexHullLib]";
    }

    else
    {
      v16 = "<allocation names disabled>";
    }

    v14 = (*(*(v15 + 24) + 16))(v15 + 24, 88, v16, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/Cooking.cpp", 331);
    physx::QuickHullConvexHullLib::QuickHullConvexHullLib(v14, v32, a1 + 8);
  }

  else
  {
    v14 = 0;
  }

  v17 = *(a1 + 22);
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  v23 = v27;
  v24 = v17;
  v25 = 0;
  v26 = 0;
  v27[18] = 0;
  v28 = 0;
  v29 = xmmword_1E3047680;
  v30 = xmmword_1E3047680;
  v31 = 0x3F80000000000000;
  if (physx::Cooking::cookConvexMeshInternal(a1, v32, v21, v14, a4, v8, v9, v10))
  {
    v20[18] = 0;
    physx::ConvexMeshBuilder::copy(v21, v20);
    v18 = (**a3)(a3, 2, v20);
    if (!v18 && a4)
    {
      *a4 = 3;
    }

    if (v14)
    {
      (*(*v14 + 8))(v14);
    }
  }

  else
  {
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v18 = 0;
  }

  physx::ConvexMeshBuilder::~ConvexMeshBuilder(v21);
  fesetenv(&v36);
  return v18;
}

uint64_t physx::Cooking::validateConvexMesh(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 22);
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v13 = v17;
  v14 = v8;
  v15 = 0;
  v16 = 0;
  v17[18] = 0;
  v18 = 0;
  v19 = xmmword_1E3047680;
  v20 = xmmword_1E3047680;
  v21 = 0x3F80000000000000;
  v9 = physx::ConvexMeshBuilder::build(v11, a2, *(a1 + 52), 1, 0, a6, a7, a8);
  physx::ConvexMeshBuilder::~ConvexMeshBuilder(v11);
  return v9;
}

uint64_t physx::Cooking::computeHullPolygons(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD *a4, void *a5, unsigned int *a6, uint64_t *a7, _DWORD *a8, uint64_t *a9)
{
  v45 = a8;
  v46 = a7;
  v44 = a6;
  v58 = *MEMORY[0x1E69E9840];
  v15 = a2 + 4;
  v14 = a2[4];
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v43 - ((v16 + 15) & 0x1FFFFFFFF0);
  bzero(v17, v16);
  if (v14)
  {
    v19 = *a2;
    v20 = *(a2 + 1);
    v21 = v17;
    do
    {
      v22 = *v20;
      *(v21 + 2) = *(v20 + 2);
      *v21 = v22;
      v21 += 12;
      v20 = (v20 + v19);
      --v14;
    }

    while (v14);
  }

  v43 = a9;
  v23 = a2[10];
  MEMORY[0x1EEE9AC00](v18);
  v25 = &v43 - ((v24 + 15) & 0x1FFFFFFFF0);
  bzero(v25, v24);
  if ((a2[12] & 2) != 0)
  {
    v26 = a5;
    v27 = a4;
    v28 = a3;
    v29 = v44;
    v30 = v46;
    v31 = v45;
    if (v23)
    {
      v36 = a2[6];
      v37 = (*(a2 + 4) + 4);
      v38 = v25;
      do
      {
        v39 = *(v37 - 1);
        *v38 = *(v37 - 2);
        *(v38 + 1) = v39;
        *(v38 + 2) = *v37;
        v37 = (v37 + v36);
        v38 += 12;
      }

      while (v38 < &v25[12 * v23]);
    }
  }

  else
  {
    v26 = a5;
    v27 = a4;
    v28 = a3;
    v29 = v44;
    v30 = v46;
    v31 = v45;
    if (v23)
    {
      v32 = a2[6];
      v33 = *(a2 + 4);
      v34 = v25;
      do
      {
        v35 = *v33;
        *(v34 + 2) = *(v33 + 2);
        *v34 = v35;
        v34 += 12;
        v33 = (v33 + v32);
        --v23;
      }

      while (v23);
    }
  }

  v40 = *(a1 + 22);
  memset(v47, 0, sizeof(v47));
  v48 = 0;
  v49 = v53;
  v50 = v40;
  v51 = 0;
  v52 = 0;
  v53[18] = 0;
  v54 = 0;
  v55 = xmmword_1E3047680;
  v56 = xmmword_1E3047680;
  v57 = 0x3F80000000000000;
  v41 = physx::ConvexMeshBuilder::computeHullPolygons(v47, v15, v17, a2 + 10, v25, v28, v27, v26, v29, v30, v31, v43);
  physx::ConvexMeshBuilder::~ConvexMeshBuilder(v47);
  return v41;
}

uint64_t physx::Cooking::cookHeightField(uint64_t a1, uint64_t a2, void (***a3)(uint64_t (***)(void, unsigned int *, uint64_t), unsigned int *, uint64_t))
{
  fegetenv(&v26);
  fesetenv(MEMORY[0x1E69E9AE0]);
  v6 = 0;
  if (*(a2 + 4) >= 2u && *a2 >= 2u && *(a2 + 8) == 1 && *(a2 + 16) >= 4u && *(a2 + 32) >= 0.0 && *(a2 + 36) <= 1u)
  {
    v14 = 196609;
    v16 = 1;
    v13 = &unk_1F5D21FF8;
    v15 = &unk_1F5D220C8;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v21 = 1;
    v17 = 0;
    v19 = 0;
    v20 = 0;
    v18 = 0;
    if (physx::Gu::HeightField::loadFromDesc(&v13, a2))
    {
      v11 = (*(*a1 + 24))(a1);
      v6 = physx::saveHeightField(&v13, a3, v11);
      if ((v14 & 0x10000) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if ((v14 & 0x10000) == 0)
      {
        v6 = 0;
LABEL_25:
        v13 = &unk_1F5D21FF8;
        v15 = &unk_1F5D220C8;
        if ((v14 & 0x10000) != 0 && v18)
        {
          (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
        }

        goto LABEL_28;
      }

      v6 = 0;
    }

    if (v18)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }

    v18 = 0;
    goto LABEL_25;
  }

LABEL_28:
  fesetenv(&v26);
  return v6;
}

uint64_t physx::Cooking::createHeightField(uint64_t a1, uint64_t a2, uint64_t (***a3)(void, uint64_t, uint64_t))
{
  fegetenv(v16);
  fesetenv(MEMORY[0x1E69E9AE0]);
  v5 = 0;
  if (*(a2 + 4) >= 2u && *a2 >= 2u && *(a2 + 8) == 1 && *(a2 + 16) >= 4u && *(a2 + 32) >= 0.0 && *(a2 + 36) <= 1u)
  {
    v10 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v11 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Gu::HeightField>::getName() [T = physx::Gu::HeightField]";
    }

    else
    {
      v11 = "<allocation names disabled>";
    }

    v12 = (*(*(v10 + 24) + 16))(v10 + 24, 136, v11, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/Cooking.cpp", 456);
    *(v12 + 8) = 196609;
    *(v12 + 24) = 1;
    *v12 = &unk_1F5D21FF8;
    *(v12 + 16) = &unk_1F5D220C8;
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
    *(v12 + 120) = 0;
    *(v12 + 128) = 0;
    *(v12 + 96) = 1;
    *(v12 + 56) = 0;
    *(v12 + 88) = 0;
    *(v12 + 92) = 0;
    *(v12 + 80) = 0;
    if (physx::Gu::HeightField::loadFromDesc(v12, a2))
    {
      v13 = (**a3)(a3, 1, v12 + 32);
      v5 = v13;
      if (v13)
      {
        v14 = *(v12 + 112);
        *(v13 + 104) = *(v12 + 104);
        *(v13 + 112) = v14;
        *(v13 + 120) = *(v12 + 120);
      }
    }

    else
    {
      v5 = 0;
    }

    (*(*v12 + 32))(v12);
  }

  fesetenv(v16);
  return v5;
}

uint64_t physx::Cooking::cookBVHStructure(uint64_t a1, uint64_t a2, uint64_t (***a3)(void, unsigned int *, uint64_t))
{
  fegetenv(&v24);
  fesetenv(MEMORY[0x1E69E9AE0]);
  if (*(a2 + 8))
  {
    v6 = *(a2 + 16) == 0;
  }

  else
  {
    v6 = 1;
  }

  v8 = !v6 && *a2 > 0x17u;
  if (v8 == 1)
  {
    v22 = 0u;
    v23 = 0u;
    physx::BVHStructureBuilder::loadFromDesc(&v22, a2);
    v9 = (*(*a1 + 24))(a1);
    if (physx::writeHeader(66, 86, 72, 83, 1u, v9, a3))
    {
      v10 = DWORD2(v22);
      physx::writeDword(DWORD2(v22), v9, a3);
      v11 = HIDWORD(v22);
      physx::writeDword(HIDWORD(v22), v9, a3);
      if (v10)
      {
        v12 = 0;
        v13 = *(&v23 + 1);
        do
        {
          physx::writeDword(*(v13 + 4 * v12++), v9, a3);
        }

        while (v12 < v10);
        v14 = 0;
        v15 = v22;
        v16 = 12;
        do
        {
          physx::writeFloatBuffer(v15 + v16 - 12, 3, v9, a3);
          v15 = v22;
          physx::writeFloatBuffer(v22 + v16, 3, v9, a3);
          ++v14;
          v16 += 24;
        }

        while (v14 < DWORD2(v22));
        v11 = HIDWORD(v22);
      }

      if (v11)
      {
        v17 = 0;
        v18 = 0;
        v19 = v23;
        do
        {
          v20 = v19 + v17;
          physx::writeDword(*(v20 + 24), v9, a3);
          physx::writeFloatBuffer(v20, 3, v9, a3);
          v19 = v23;
          physx::writeFloatBuffer(v23 + v17 + 12, 3, v9, a3);
          ++v18;
          v17 += 28;
        }

        while (v18 < HIDWORD(v22));
      }
    }

    physx::BVHStructureBuilder::~BVHStructureBuilder(&v22);
  }

  fesetenv(&v24);
  return v8;
}

void physx::BVHStructureBuilder::loadFromDesc(uint64_t a1, unsigned int *a2)
{
  v4 = a2[4];
  if (v4 == -1)
  {
    v5 = 0;
    *a1 = 0;
    goto LABEL_4;
  }

  v5 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 24 * (v4 + 1), "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/BVHStructureBuilder.cpp", 128);
  *a1 = v5;
  if (v4)
  {
LABEL_4:
    v6 = *(a2 + 1);
    v7 = *a2;
    v8 = (v5 + 16);
    v9 = vdupq_n_s32(0x3BA3D70Au);
    v10 = v4;
    do
    {
      v11 = *(v6 + 12);
      v12 = vmulq_f32(vsubq_f32(v11, *v6), v9);
      v13 = vsubq_f32(*v6, v12);
      v14 = vaddq_f32(v11, v12);
      v13.i32[3] = v14.i32[0];
      v8[-1] = v13;
      v8->i64[0] = vextq_s8(v14, v14, 4uLL).u64[0];
      v8 = (v8 + 24);
      v6 += v7;
      --v10;
    }

    while (v10);
  }

  *(a1 + 8) = v4;
  v15 = a2[4];
  v44 = v5;
  v45 = 0;
  LODWORD(v43) = 4;
  HIDWORD(v43) = v15;
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  physx::Gu::buildAABBTree(&v43, &v40, &v42, (a1 + 24));
  v16 = v42;
  *(a1 + 12) = v42;
  if (v16)
  {
    v17 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 28 * v16, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/BVHStructureBuilder.cpp", 154);
  }

  else
  {
    v17 = 0;
  }

  *(a1 + 16) = v17;
  v18 = v41;
  if (v41)
  {
    v19 = 0;
    v20 = 0;
    v21 = *(&v40 + 1);
    v22 = *(&v40 + 1) + 8;
    do
    {
      v23 = (v21 + 16 * v19);
      v24 = *(v23 + 2);
      if (v24)
      {
        v25 = 0;
        v26 = *v23;
        do
        {
          v27 = v26 + 40 * v25;
          v28 = v17 + 28 * v20;
          *v28 = *v27;
          *(v28 + 8) = *(v27 + 8);
          *(v28 + 16) = *(v27 + 16);
          v29 = *(v27 + 24);
          if (v29)
          {
            v30 = 0;
            v31 = v22;
            v32 = v18;
            do
            {
              v33 = *(v31 - 1);
              v34 = *v31;
              v35 = v33 + 40 * *v31;
              v37 = v29 >= v33;
              v36 = v29 - v33;
              v37 = !v37 || v29 >= v35;
              if (!v37)
              {
                v39 = -858993459 * (v36 >> 3);
                goto LABEL_23;
              }

              v31 += 4;
              v30 += v34;
              --v32;
            }

            while (v32);
            v39 = -1;
LABEL_23:
            v38 = 2 * (v39 + v30);
          }

          else
          {
            v38 = (32 * *(v27 + 32)) | (2 * (*(v27 + 36) & 0xF)) | 1;
          }

          *(v28 + 24) = v38;
          ++v20;
          ++v25;
        }

        while (v25 != v24);
      }

      ++v19;
    }

    while (v19 != v18);
  }

  physx::Gu::NodeAllocator::release(&v40);
  physx::Gu::NodeAllocator::~NodeAllocator(&v40);
  v43 = 0;
  v44 = 0;
  if (v45)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }
}

uint64_t physx::Cooking::createBVHStructure(uint64_t a1, uint64_t a2, uint64_t (***a3)(void, uint64_t, void *))
{
  fegetenv(&v13);
  fesetenv(MEMORY[0x1E69E9AE0]);
  if (*(a2 + 8))
  {
    v5 = *a2 >= 0x18u;
  }

  else
  {
    v5 = 0;
  }

  if (!v5 || *(a2 + 16) == 0)
  {
    v7 = 0;
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    physx::BVHStructureBuilder::loadFromDesc(&v11, a2);
    v9[0] = *(&v11 + 1);
    v9[1] = v11;
    v10 = vextq_s8(v12, v12, 8uLL);
    v11 = 0u;
    v12 = 0u;
    v7 = (**a3)(a3, 17, v9);
    physx::BVHStructureBuilder::~BVHStructureBuilder(&v11);
  }

  fesetenv(&v13);
  return v7;
}

__n128 PxCreateCooking(physx::shdfnd::Foundation *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  physx::shdfnd::Foundation::incRefCount(a1, a2, a3, a4, a5, a6, a7, a8, v14);
  v9 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v10 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Cooking>::getName() [T = physx::Cooking]";
  }

  else
  {
    v10 = "<allocation names disabled>";
  }

  v11 = (*(*(v9 + 24) + 16))(v9 + 24, 56, v10, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/Cooking.cpp", 543);
  *v11 = &unk_1F5D23018;
  v12 = *a3;
  *(v11 + 24) = *(a3 + 16);
  *(v11 + 8) = v12;
  *(v11 + 32) = *(a3 + 24);
  result = *(a3 + 28);
  *(v11 + 52) = *(a3 + 44);
  *(v11 + 36) = result;
  return result;
}

physx::ReducedVertexCloud *physx::ReducedVertexCloud::Clean(physx::ReducedVertexCloud *this)
{
  if (*(this + 4))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 4) = 0;
  if (*(this + 3))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 3) = 0;
  return this;
}

uint64_t physx::ReducedVertexCloud::Reduce(physx::ReducedVertexCloud *a1, uint64_t a2)
{
  v4 = physx::ReducedVertexCloud::Clean(a1);
  *(a1 + 4) = physx::shdfnd::ReflectionAllocator<unsigned int>::allocate(&v34, 4 * *v4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/CookingUtils.cpp", 75);
  v5 = physx::shdfnd::ReflectionAllocator<float>::allocate(&v34, 4 * *a1, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/CookingUtils.cpp", 77);
  v6 = v5;
  if (*a1)
  {
    v7 = *(a1 + 1);
    v8 = v5;
    v9 = *a1;
    do
    {
      v10 = *v7;
      v7 += 3;
      *v8++ = v10;
      --v9;
    }

    while (v9);
  }

  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v39 = 1;
  v35 = 0x80000000;
  v34 = &unk_1F5D21400;
  physx::Cm::RadixSortBuffered::Sort(&v34);
  if (*a1)
  {
    v11 = (*(a1 + 1) + 4);
    v12 = v6;
    v13 = *a1;
    do
    {
      v14 = *v11;
      v11 += 3;
      *v12++ = v14;
      --v13;
    }

    while (v13);
  }

  physx::Cm::RadixSortBuffered::Sort(&v34);
  v15 = *a1;
  if (v15)
  {
    v16 = 0;
    v17 = (*(a1 + 1) + 8);
    do
    {
      v18 = *v17;
      v17 += 3;
      v6[v16++] = v18;
    }

    while (v15 != v16);
    physx::Cm::RadixSortBuffered::Sort(&v34);
  }

  else if (!v6)
  {
    *(a1 + 4) = 0;
LABEL_26:
    v21 = 0;
    *(a1 + 3) = 0;
    if (!a2)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v19 = v36;
  (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v6);
  v20 = *a1;
  *(a1 + 4) = 0;
  if (!v20)
  {
    goto LABEL_26;
  }

  v21 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 12 * v20, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/CookingUtils.cpp", 98);
  v22 = *a1;
  *(a1 + 3) = v21;
  if (v22)
  {
    v23 = *(a1 + 1);
    v24 = *(a1 + 4);
    v25 = &dword_1E3117738;
    while (1)
    {
      v27 = *v19++;
      v26 = v27;
      v28 = (v23 + 12 * v27);
      v29 = *v28;
      if (*v28 != *v25)
      {
        break;
      }

      v30 = v28[1];
      if (v30 != v25[1] || v28[2] != v25[2])
      {
        goto LABEL_20;
      }

      v31 = *(a1 + 4) - 1;
LABEL_21:
      *(v24 + 4 * v26) = v31;
      v25 = v28;
      if (!--v22)
      {
        goto LABEL_22;
      }
    }

    v30 = v28[1];
LABEL_20:
    v31 = *(a1 + 4);
    *(a1 + 4) = v31 + 1;
    v32 = (v21 + 12 * v31);
    *v32 = v29;
    v32[1] = v30;
    v32[2] = v28[2];
    goto LABEL_21;
  }

LABEL_22:
  if (a2)
  {
LABEL_23:
    *(a2 + 16) = *(a1 + 4);
    *(a2 + 8) = *(a1 + 4);
    *a2 = v21;
  }

LABEL_24:
  v34 = &unk_1F5D21400;
  physx::Cm::RadixSortBuffered::reset(&v34);
  return 1;
}

void physx::Gu::EdgeList::~EdgeList(physx::Gu::EdgeList *this)
{
  if (*(this + 5))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 5) = 0;
  if (*(this + 4))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 4) = 0;
  if (*(this + 1))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 1) = 0;
  if (*(this + 3))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 3) = 0;
}

uint64_t physx::Gu::EdgeListBuilder::createFacesToEdges(physx::Gu::EdgeListBuilder *this, unsigned int a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2 || !(a3 | a4))
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/EdgeList.cpp", 147, "EdgeList::CreateFacesToEdges: NULL parameter!", a6, a7, a8, v47);
    return 0;
  }

  if (*(this + 3))
  {
    return 1;
  }

  v12 = 3 * a2;
  v13 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v14 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Gu::EdgeTriangleData>::getName() [T = physx::Gu::EdgeTriangleData]";
  }

  else
  {
    v14 = "<allocation names disabled>";
  }

  *(this + 3) = (*(*(v13 + 24) + 16))(v13 + 24, 4 * v12, v14, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/EdgeList.cpp", 155);
  v15 = physx::shdfnd::ReflectionAllocator<unsigned int>::allocate(&v49, 12 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/EdgeList.cpp", 156);
  v16 = physx::shdfnd::ReflectionAllocator<unsigned int>::allocate(&v49, 12 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/EdgeList.cpp", 157);
  v48 = 3 * a2;
  v17 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v18 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Gu::EdgeData>::getName() [T = physx::Gu::EdgeData]";
  }

  else
  {
    v18 = "<allocation names disabled>";
  }

  v19 = (*(*(v17 + 24) + 16))(v17 + 24, 24 * a2, v18, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/EdgeList.cpp", 158);
  v20 = 0;
  do
  {
    if (a3)
    {
      v21 = *(a3 + 4 * v20);
      v22 = *(a3 + 4 * (v20 + 1));
      v23 = *(a3 + 4 * (v20 + 2));
    }

    else
    {
      if (!a4)
      {
        v24 = 0;
        v21 = 0;
        v23 = 2;
        v25 = 1;
        v22 = 1;
        goto LABEL_21;
      }

      v21 = *(a4 + 2 * v20);
      v22 = *(a4 + 2 * (v20 + 1));
      v23 = *(a4 + 2 * (v20 + 2));
    }

    if (v21 >= v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = v21;
    }

    if (v21 <= v22)
    {
      v25 = v22;
    }

    else
    {
      v25 = v21;
    }

LABEL_21:
    v26 = 4 * v20;
    *(v15 + v26) = v24;
    *(v16 + v26) = v25;
    if (v22 >= v23)
    {
      v27 = v23;
    }

    else
    {
      v27 = v22;
    }

    if (v22 <= v23)
    {
      v22 = v23;
    }

    v28 = v20 + 1;
    *(v15 + 4 * v28) = v27;
    *(v16 + 4 * v28) = v22;
    if (v23 >= v21)
    {
      v29 = v21;
    }

    else
    {
      v29 = v23;
    }

    if (v23 > v21)
    {
      v21 = v23;
    }

    v30 = v20 + 2;
    *(v15 + 4 * v30) = v29;
    *(v16 + 4 * v30) = v21;
    v20 += 3;
  }

  while (v12 != v20);
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v54 = 1;
  v50 = 0x80000000;
  v49 = &unk_1F5D21400;
  physx::Cm::RadixSortBuffered::Sort(&v49);
  physx::Cm::RadixSortBuffered::Sort(&v49);
  v32 = v51;
  *this = 0;
  *(this + 4) = a2;
  if (v48 <= 1)
  {
    v33 = 1;
  }

  else
  {
    v33 = v48;
  }

  v34 = *(this + 3);
  v35 = -1;
  v36 = -1;
  do
  {
    v37 = v36;
    v39 = *v32++;
    v38 = v39;
    v36 = *(v15 + 4 * v39);
    v40 = v35;
    v35 = *(v16 + 4 * v39);
    v41 = *this;
    if (v36 != v37 || v35 != v40)
    {
      v43 = &v19[8 * v41];
      *v43 = v36;
      v43[1] = v35;
      LODWORD(v41) = v41 + 1;
      *this = v41;
    }

    *(v34 + 12 * (v38 / 3) + 4 * (v38 % 3)) = v41 - 1;
    --v33;
  }

  while (v33);
  v44 = *this;
  if (v44)
  {
    v45 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 8 * v44, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/EdgeList.cpp", 212);
    v46 = (8 * *this);
  }

  else
  {
    v46 = 0;
    v45 = 0;
  }

  *(this + 1) = v45;
  memcpy(v45, v19, v46);
  if (v19)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v19);
  }

  (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v16);
  (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v15);
  v49 = &unk_1F5D21400;
  physx::Cm::RadixSortBuffered::reset(&v49);
  return 1;
}

uint64_t physx::MeshCleaner::MeshCleaner(uint64_t a1, unsigned int a2, float *a3, unsigned int a4, unsigned int *a5, float a6)
{
  v101 = a4;
  v9 = a2;
  v10 = 12 * a2;
  v11 = &re::introspect_BOOL(BOOL)::info;
  if (a2)
  {
    v12 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 12 * a2, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/MeshCleaner.cpp", 79);
    a4 = v101;
    v13 = v12;
    if (v101)
    {
LABEL_3:
      v14 = 4 * a4;
      v15 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 12 * a4, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/MeshCleaner.cpp", 82);
      v11 = &re::introspect_BOOL(BOOL)::info;
      v102 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v14, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/MeshCleaner.cpp", 84);
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v102 = 0;
LABEL_6:
  if (a6 == 0.0)
  {
    memcpy(v13, a3, v10 & 0xFFFFFFFC);
  }

  else if (a2)
  {
    v18 = (*(*(v11[428] + 24) + 16))();
    v17 = 0;
    v18.n128_f32[0] = 1.0 / a6;
    v19 = vdup_lane_s32(v18.n128_u64[0], 0);
    v20 = v13 + 2;
    v21 = a3 + 2;
    do
    {
      v16[v17] = v17;
      v22 = floorf((*v21 * v18.n128_f32[0]) + 0.5);
      *(v20 - 1) = vrndm_f32(vmla_f32(0x3F0000003F000000, v19, *(v21 - 2)));
      *v20 = v22;
      v20 += 3;
      ++v17;
      v21 += 3;
    }

    while (v9 != v17);
    goto LABEL_13;
  }

  v16 = 0;
LABEL_13:
  v99 = v16;
  if (v101 <= a2)
  {
    v23 = a2;
  }

  else
  {
    v23 = v101;
  }

  v24 = v23 | (v23 >> 1) | ((v23 | (v23 >> 1)) >> 2);
  v25 = v24 | (v24 >> 4) | ((v24 | (v24 >> 4)) >> 8);
  v26 = v25 | HIWORD(v25);
  if (v26 + 1 + v23)
  {
    v27 = (*(*(v11[428] + 24) + 16))();
  }

  else
  {
    v27 = 0;
  }

  memset(v27, 255, 4 * (v26 + 1));
  if (a2)
  {
    v28 = *(*(v11[428] + 24) + 16);
    v29 = 4 * v9;
    v30 = v28();
  }

  else
  {
    v30 = 0;
    v29 = 4 * v9;
  }

  memset(v30, 255, v29);
  if (v101)
  {
    LODWORD(v31) = 3 * v101;
    if (3 * v101 <= 1)
    {
      v31 = 1;
    }

    else
    {
      v31 = v31;
    }

    v32 = a5;
    do
    {
      v34 = *v32++;
      v33 = v34;
      if (v34 < a2)
      {
        *(v30 + v33) = 0;
      }

      --v31;
    }

    while (v31);
  }

  v35 = &v27[4 * (v26 + 1)];
  if (a2)
  {
    v36 = 0;
    v37 = 0;
    do
    {
      if (*(v30 + v36) != -1)
      {
        v38 = &v13[3 * v36];
        v39 = *v38;
        v40 = v38[1];
        v41 = v38[2];
        v42 = (((LODWORD(v39) + 11 * LODWORD(v40) + 2147483631 * LODWORD(v41)) >> 22) & 0x1FF ^ (((LODWORD(v39) + 11 * LODWORD(v40) + 2147483631 * LODWORD(v41)) & 0x7FFFFFFFu) >> 12) ^ (LODWORD(v39) + 11 * LODWORD(v40) + 2147483631 * LODWORD(v41)) & 0x7FFFFFFF) & v26;
        v43 = *&v27[4 * v42];
        if (v43 == -1)
        {
LABEL_38:
          *(v30 + v36) = v37;
          v45 = &v13[3 * v37];
          *v45 = v39;
          v45[1] = v40;
          v45[2] = v41;
          if (v99)
          {
            v99[v37] = v36;
          }

          *&v35[4 * v37] = *&v27[4 * v42];
          *&v27[4 * v42] = v37++;
        }

        else
        {
          while (1)
          {
            v44 = &v13[3 * v43];
            if (*v44 == v39 && v44[1] == v40 && v44[2] == v41)
            {
              break;
            }

            v43 = *&v35[4 * v43];
            if (v43 == -1)
            {
              goto LABEL_38;
            }
          }

          *(v30 + v36) = v43;
        }
      }

      ++v36;
    }

    while (v36 != v9);
  }

  else
  {
    v37 = 0;
  }

  v46 = 0;
  if (v101)
  {
    for (i = 0; i != v101; ++i)
    {
      v48 = *a5;
      v49 = a5[1];
      v50 = a5[2];
      if (v48 < a2 && v49 < a2 && v50 < a2)
      {
        v53 = &a3[3 * v48];
        v54 = &a3[3 * v49];
        v55 = &a3[3 * v50];
        v56 = v53[1];
        v57 = *v53 - *v54;
        v58 = v56 - v54[1];
        v59 = v53[2];
        v60 = *v53 - *v55;
        v61 = v59 - v54[2];
        v62 = v56 - v55[1];
        v63 = v59 - v55[2];
        if ((((((v61 * v60) - (v57 * v63)) * ((v61 * v60) - (v57 * v63))) + (((v58 * v63) - (v61 * v62)) * ((v58 * v63) - (v61 * v62)))) + (((v57 * v62) - (v58 * v60)) * ((v57 * v62) - (v58 * v60)))) != 0.0)
        {
          v64 = *(v30 + v48);
          v65 = *(v30 + v49);
          v66 = *(v30 + v50);
          v67 = v64 == v65 || v65 == v66;
          if (!v67 && v66 != v64)
          {
            v69 = 3 * v46;
            *(v15 + 4 * v69) = v64;
            *(v15 + 4 * (v69 + 1)) = v65;
            *(v15 + 4 * (v69 + 2)) = v66;
            *(v102 + 4 * v46++) = i;
          }
        }
      }

      a5 += 3;
    }
  }

  if (v30)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v30);
  }

  memset(v27, 255, 4 * (v26 + 1));
  v70 = v102;
  if (v46)
  {
    v71 = 0;
    v72 = v46;
    v46 = 0;
    v73 = 1;
    do
    {
      v74 = (v15 + 12 * v71);
      v75 = v74[1];
      v76 = v74[2];
      v77 = (*v74 - (v75 + v76)) ^ (v76 >> 13);
      v78 = (v75 - v76 - v77) ^ (v77 << 8);
      v79 = (v76 - v77 - v78) ^ (v78 >> 13);
      v80 = (v77 - v78 - v79) ^ (v79 >> 12);
      v81 = (v78 - v79 - v80) ^ (v80 << 16);
      v82 = (v79 - v80 - v81) ^ (v81 >> 5);
      v83 = (v80 - v81 - v82) ^ (v82 >> 3);
      v84 = ((v82 - v83 - ((v81 - v82 - v83) ^ (v83 << 10))) ^ (((v81 - v82 - v83) ^ (v83 << 10)) >> 15)) & v26;
      for (j = *&v27[4 * v84]; j != -1; j = *&v35[4 * j])
      {
        v86 = (v15 + 12 * j);
        if (*v86 == *v74 && v86[1] == v75 && v86[2] == v76)
        {
          goto LABEL_75;
        }
      }

      v87 = *(v102 + 4 * v71);
      *(v102 + 4 * v46) = v87;
      v73 &= v87 == v46;
      v88 = v15 + 12 * v46;
      v89 = *v74;
      *(v88 + 8) = v74[2];
      *v88 = v89;
      *&v35[4 * v46] = *&v27[4 * v84];
      *&v27[4 * v84] = v46++;
LABEL_75:
      ++v71;
    }

    while (v71 != v72);
  }

  else
  {
    v90 = 0;
    v73 = 1;
    v91 = v99;
    if (!v27)
    {
      goto LABEL_79;
    }
  }

  (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v27);
  v91 = v99;
  v90 = v46;
LABEL_79:
  if (v91)
  {
    if (v37)
    {
      v92 = v13 + 2;
      v93 = v91;
      v94 = v37;
      do
      {
        v95 = *v93++;
        v96 = &a3[3 * v95];
        *(v92 - 1) = *v96;
        *v92 = *(v96 + 2);
        v92 += 3;
        --v94;
      }

      while (v94);
    }

    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *a1 = v37;
  *(a1 + 4) = v90;
  *(a1 + 8) = v13;
  *(a1 + 16) = v15;
  if ((v73 & 1) != 0 && v102)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v102);
    v70 = 0;
  }

  *(a1 + 24) = v70;
  return a1;
}

void physx::MeshCleaner::~MeshCleaner(physx::MeshCleaner *this)
{
  if (*(this + 3))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 3) = 0;
  if (*(this + 2))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 2) = 0;
  if (*(this + 1))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 1) = 0;
}

double physx::createQuantizer(physx *this)
{
  v1 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v2 = "static const char *physx::shdfnd::ReflectionAllocator<QuantizerImpl>::getName() [T = QuantizerImpl]";
  }

  else
  {
    v2 = "<allocation names disabled>";
  }

  v3 = (*(*(v1 + 24) + 16))(v1 + 24, 64, v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/Quantizer.cpp", 336);
  *v3 = &unk_1F5D230F8;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  result = 0.00781250185;
  *(v3 + 8) = xmmword_1E304F3C0;
  *(v3 + 24) = 0;
  return result;
}

void physx::BVHStructureBuilder::~BVHStructureBuilder(physx::BVHStructureBuilder *this)
{
  if (*this)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *this = 0;
  if (*(this + 2))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 2) = 0;
  if (*(this + 3))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 3) = 0;
}

uint64_t physx::BigConvexDataBuilder::save(uint64_t a1, void (***a2)(uint64_t (***)(void, unsigned int *, uint64_t), unsigned int *, uint64_t), int a3)
{
  if (!physx::Gu::WriteHeader(83, 85, 80, 77, 0, a3, a2) || !physx::Gu::WriteHeader(71, 65, 85, 83, 0, a3, a2))
  {
    return 0;
  }

  physx::writeDword(**(a1 + 8), a3, a2);
  physx::writeDword(*(*(a1 + 8) + 2), a3, a2);
  (**a2)(a2, *(*(a1 + 8) + 8), 2 * *(*(a1 + 8) + 2));

  return physx::BigConvexDataBuilder::saveValencies(a1, a2, a3);
}

uint64_t physx::BigConvexDataBuilder::saveValencies(uint64_t a1, void (***a2)(uint64_t (***)(void, unsigned int *, uint64_t), unsigned int *, uint64_t), int a3)
{
  v6 = physx::Gu::WriteHeader(86, 65, 76, 69, 2u, a3, a2);
  if (v6)
  {
    physx::writeDword(*(*(a1 + 8) + 16), a3, a2);
    physx::writeDword(*(*(a1 + 8) + 20), a3, a2);
    v7 = physx::shdfnd::ReflectionAllocator<unsigned short>::allocate(&v20, 2 * *(*(a1 + 8) + 16), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/BigConvexDataBuilder.cpp", 345);
    v8 = v7;
    v9 = *(a1 + 8);
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = *(v9 + 24);
      v12 = v7;
      v13 = v10;
      do
      {
        v14 = *v11;
        v11 += 2;
        *v12++ = v14;
        --v13;
      }

      while (v13);
      LOWORD(v15) = 0;
      v16 = v7;
      do
      {
        v18 = *v16++;
        v17 = v18;
        if (v18 <= v15)
        {
          v15 = v15;
        }

        else
        {
          v15 = v17;
        }

        LODWORD(v10) = v10 - 1;
      }

      while (v10);
    }

    else
    {
      v15 = 0;
    }

    physx::writeDword(v15, a3, a2);
    physx::Gu::StoreIndices(v15, *(*(a1 + 8) + 16), v8, a2, a3);
    if (v8)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v8);
    }

    (**a2)(a2, *(*(a1 + 8) + 32), *(*(a1 + 8) + 20));
  }

  return v6;
}

uint64_t physx::BigConvexDataBuilder::computeValencies(physx::BigConvexDataBuilder *this, const physx::ConvexHullBuilder *a2)
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 7);
  v5 = *(v4 + 38);
  v6 = *(this + 1);
  *(v6 + 16) = v5;
  v7 = 4 * v5 + 12;
  v8 = v7 & 0x7F0;
  v9 = 2 * (*(v4 + 36) & 0x7FFF);
  if ((v7 & 0x7F0) + v9)
  {
    v10 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, (v7 & 0x7F0u) + v9, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/BigConvexDataBuilder.cpp", 118);
    v6 = *(this + 1);
  }

  else
  {
    v10 = 0;
  }

  *(v6 + 24) = v10;
  *(v6 + 32) = &v10[v8];
  *(v6 + 40) = v10;
  bzero(v10, (4 * v5));
  bzero(v60, v5);
  v11 = *(a2 + 7);
  v12 = *(v11 + 39);
  if (*(v11 + 39))
  {
    v13 = 0;
    v14 = *(a2 + 1);
    v15 = *(a2 + 2);
    do
    {
      v16 = v14 + 20 * v13;
      v17 = *(v16 + 18);
      if (*(v16 + 18))
      {
        v18 = (v15 + *(v16 + 16));
        v19 = *(*(this + 1) + 24);
        do
        {
          v20 = *v18++;
          ++*(v19 + 4 * v20);
          --v17;
        }

        while (v17);
      }

      ++v13;
    }

    while (v13 != v12);
  }

  v21 = *(this + 1);
  v22 = *(v21 + 24);
  v22[1] = 0;
  v23 = *(v21 + 16);
  if (v23 >= 2)
  {
    v24 = v23 - 1;
    v25 = v22;
    do
    {
      v25[3] = *v25 + v25[1];
      v25 += 2;
      --v24;
    }

    while (v24);
  }

  *(v21 + 20) = v22[2 * (v23 - 1)] + v22[2 * (v23 - 1) + 1];
  if (v12)
  {
    v26 = 0;
    v27 = *(a2 + 1);
    do
    {
      v28 = v27 + 20 * v26;
      v29 = *(v28 + 18);
      if (*(v28 + 18))
      {
        v30 = 0;
        v31 = *(a2 + 2) + *(v28 + 16);
        do
        {
          v32 = *(v31 + v30);
          v33 = v30 + 1;
          if (!v60[v32])
          {
            if (v33 == v29)
            {
              v34 = 0;
            }

            else
            {
              v34 = v30 + 1;
            }

            v35 = *(v31 + v34);
            v36 = *(*(this + 1) + 32);
            v37 = *(*(this + 1) + 24) + 4 * v32;
            v38 = *(v37 + 2);
            *(v37 + 2) = v38 + 1;
            *(v36 + v38) = v35;
            v39 = *(a2 + 5);
            v27 = *(a2 + 1);
            v40 = *(a2 + 3);
            v41 = (v40 + 2 * (*(v39 + 2 * v30 + 2 * *(v27 + 20 * v26 + 16)) & 0x7FFF));
            v42 = *v41;
            v43 = v41[1];
            if (v26 == v42)
            {
              LOBYTE(v42) = v43;
            }

            v44 = 1;
            while (v26 != v42)
            {
              v45 = v27 + 20 * v42;
              v46 = *(v45 + 18);
              if (*(v45 + 18))
              {
                v47 = 0;
                v48 = *(a2 + 2) + *(v45 + 16);
                while (*(v48 + v47) != v32)
                {
                  if (v46 == ++v47)
                  {
                    goto LABEL_28;
                  }
                }

                if (*(v48 + (v47 + 1) % v46) == v35)
                {
                  v49 = (v48 + (v46 - 1));
                  if (v47)
                  {
                    v50 = v47;
                  }

                  else
                  {
                    v50 = v46;
                  }

                  if (v47)
                  {
                    v49 = (v48 + v47 - 1);
                  }

                  v35 = *v49;
                  LODWORD(v47) = v50 - 1;
                }

                else
                {
                  v35 = *(v48 + (v47 + 1) % v46);
                }

                v51 = *(*(this + 1) + 32);
                v52 = *(*(this + 1) + 24) + 4 * v32;
                v53 = *(v52 + 2);
                *(v52 + 2) = v53 + 1;
                *(v51 + v53) = v35;
                ++v44;
                v39 = *(a2 + 5);
                v27 = *(a2 + 1);
                v40 = *(a2 + 3);
              }

              else
              {
LABEL_28:
                LODWORD(v47) = 0;
              }

              v54 = (v40 + 2 * (*(v39 + 2 * (v47 + *(v27 + 20 * v42 + 16))) & 0x7FFF));
              v55 = *v54;
              v56 = v54[1];
              if (v55 == v42)
              {
                LOBYTE(v42) = v56;
              }

              else
              {
                LOBYTE(v42) = v55;
              }
            }

            v60[v32] = v44;
          }

          v30 = v33;
        }

        while (v33 != v29);
        v11 = *(a2 + 7);
      }

      ++v26;
    }

    while (v26 < *(v11 + 39));
    v57 = *(this + 1);
    v22 = *(v57 + 24);
    LODWORD(v23) = *(v57 + 16);
  }

  v22[1] = 0;
  if (v23 >= 2)
  {
    v58 = v23 - 1;
    do
    {
      v22[3] = *v22 + v22[1];
      v22 += 2;
      --v58;
    }

    while (v58);
  }

  return 1;
}

uint64_t physx::BigConvexDataBuilder::precompute(physx::BigConvexDataBuilder *this, int a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = *(this + 1);
  *v4 = a2;
  v5 = a2 * a2;
  v4[1] = 6 * a2 * a2;
  *(*(this + 1) + 8) = physx::shdfnd::ReflectionAllocator<unsigned char>::allocate(v52, 4 * ((3 * a2 * a2) & 0x7FFFu), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/BigConvexDataBuilder.cpp", 69);
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  if (a2)
  {
    v6 = 0;
    v7 = 0;
    v8 = vcvts_n_f32_u32(a2 - 1, 1uLL);
    do
    {
      v9 = 1.0 - (v7 / v8);
      v10 = v6;
      v11 = v6;
      v12 = v7;
      do
      {
        v13 = 1.0;
        v14 = 1.0 - (v12 / v8);
        v15 = sqrtf(((v14 * v14) + 1.0) + (v9 * v9));
        if (v15 <= 0.0)
        {
          v16 = 1.0 - (v7 / v8);
        }

        else
        {
          v13 = 1.0 / v15;
          v14 = v14 * (1.0 / v15);
          v16 = v9 * (1.0 / v15);
        }

        v17 = 0;
        v52[0] = -v13;
        v52[1] = v14;
        v52[2] = v16;
        v52[3] = v13;
        v52[4] = v14;
        v52[5] = v16;
        v52[6] = v16;
        v52[7] = -v13;
        v52[8] = v14;
        v52[9] = v16;
        v52[10] = v13;
        v52[11] = v14;
        v52[12] = v14;
        v52[13] = v16;
        v52[14] = -v13;
        v52[15] = v14;
        v52[16] = v16;
        v52[17] = v13;
        v52[18] = -v13;
        v52[19] = v16;
        v52[20] = v14;
        v52[21] = v13;
        v52[22] = v16;
        v52[23] = v14;
        v52[24] = v14;
        v52[25] = -v13;
        v52[26] = v16;
        v52[27] = v14;
        v52[28] = v13;
        v52[29] = v16;
        v52[30] = v16;
        v52[31] = v14;
        v52[32] = -v13;
        v52[33] = v16;
        v52[34] = v14;
        v52[35] = v13;
        v19 = *(this + 1);
        v18 = *(this + 2);
        v20 = *(v19 + 24);
        v21 = *(v19 + 32);
        do
        {
          v22 = &v52[3 * v17];
          v23 = *(&v55 + v17);
          v57 = 0uLL;
          v58 = 0uLL;
          v24 = *v22;
          v25 = v22[1];
          v26 = v22[2];
          v27 = ((*(v18 + 12 * v23 + 4) * v25) + (*(v18 + 12 * v23) * *v22)) + (*(v18 + 12 * v23 + 8) * v26);
          do
          {
            v28 = v23;
            v29 = (v20 + 4 * v23);
            v30 = *v29;
            if (!*v29)
            {
              break;
            }

            v31 = (v21 + v29[1]);
            v23 = v28;
            do
            {
              v33 = *v31++;
              v32 = v33;
              v34 = ((v25 * *(v18 + 12 * v33 + 4)) + (*(v18 + 12 * v33) * v24)) + (*(v18 + 12 * v33 + 8) * v26);
              if (v34 < v27)
              {
                v35 = *(&v57 + (v32 >> 5));
                if ((v35 & (1 << v32)) == 0)
                {
                  *(&v57 + (v32 >> 5)) = v35 | (1 << v32);
                  v27 = v34;
                  v23 = v32;
                }
              }

              --v30;
            }

            while (v30);
          }

          while (v23 != v28);
          *(&v55 + v17) = v28;
          v36 = *(&v53 + v17);
          v57 = 0uLL;
          v58 = 0uLL;
          v37 = -(((v25 * *(v18 + 12 * v36 + 4)) + (*(v18 + 12 * v36) * v24)) + (*(v18 + 12 * v36 + 8) * v26));
          do
          {
            v38 = v36;
            v39 = (v20 + 4 * v36);
            v40 = *v39;
            if (!*v39)
            {
              break;
            }

            v41 = (v21 + v39[1]);
            v36 = v38;
            do
            {
              v43 = *v41++;
              v42 = v43;
              v44 = -(((v25 * *(v18 + 12 * v43 + 4)) + (*(v18 + 12 * v43) * v24)) + (*(v18 + 12 * v43 + 8) * v26));
              if (v37 > v44)
              {
                v45 = *(&v57 + (v42 >> 5));
                if ((v45 & (1 << v42)) == 0)
                {
                  *(&v57 + (v42 >> 5)) = v45 | (1 << v42);
                  v37 = v44;
                  v36 = v42;
                }
              }

              --v40;
            }

            while (v40);
          }

          while (v36 != v38);
          *(&v53 + v17++) = v38;
        }

        while (v17 != 12);
        v46 = &v53;
        v47 = &v55;
        v48 = v10;
        v49 = v11;
        v50 = 6;
        do
        {
          *(*(*(this + 1) + 8) + v48) = *v47;
          *(*(*(this + 1) + 8) + v48 + *(*(this + 1) + 2)) = *v46;
          *(*(*(this + 1) + 8) + v49) = *(v47 + 6);
          *(*(*(this + 1) + 8) + v49 + *(*(this + 1) + 2)) = *(v46 + 6);
          v46 = (v46 + 1);
          v47 = (v47 + 1);
          v49 += v5;
          v48 += v5;
          --v50;
        }

        while (v50);
        ++v12;
        ++v11;
        v10 += a2;
      }

      while (v12 != a2);
      ++v7;
      v6 += a2 + 1;
    }

    while (v7 != a2);
  }

  return 1;
}

void physx::Cooking::~Cooking(physx::Cooking *this)
{
  if (this)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, this);
  }
}

uint64_t UpdateLink(unsigned int a1, unsigned int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = 3 * a1;
  v13 = 3 * a2;
  if (a6)
  {
    v14 = *(a6 + 4 * (v12 + 1));
    v30 = *(a6 + 4 * v12);
    v31 = v14;
    v32 = *(a6 + 4 * (v12 + 2));
    v15 = *(a6 + 4 * (v13 + 1));
    v27 = *(a6 + 4 * v13);
    v28 = v15;
    v29 = *(a6 + 4 * (v13 + 2));
  }

  if (a7)
  {
    v16 = *(a7 + 2 * (v12 + 1));
    v30 = *(a7 + 2 * v12);
    v31 = v16;
    v32 = *(a7 + 2 * (v12 + 2));
    v17 = *(a7 + 2 * (v13 + 1));
    v27 = *(a7 + 2 * v13);
    v28 = v17;
    v29 = *(a7 + 2 * (v13 + 2));
  }

  Edge = physx::Gu::TriangleT<unsigned int>::findEdge(&v30, a3, a4);
  v19 = physx::Gu::TriangleT<unsigned int>::findEdge(&v27, a3, a4);
  v23 = v19 == 0xFF || Edge == 255;
  v24 = !v23;
  if (v23)
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/Adjacencies.cpp", 509, "Adjacencies::UpdateLink: invalid edge reference", v20, v21, v22, v26);
  }

  else
  {
    *(a5 + 12 * a1 + 4 * Edge) = a2 | (v19 << 30);
    *(a5 + 12 * a2 + 4 * v19) = a1 | (Edge << 30);
  }

  return v24;
}

uint64_t physx::Gu::TriangleT<unsigned int>::findEdge(int *a1, int a2, int a3)
{
  v3 = *a1;
  if (*a1 == a2 && a1[1] == a3 || v3 == a3 && a1[1] == a2)
  {
    return 0;
  }

  if (v3 == a2 && a1[2] == a3 || v3 == a3 && a1[2] == a2)
  {
    return 1;
  }

  v5 = a1[1];
  if (v5 == a2 && a1[2] == a3 || v5 == a3 && a1[2] == a2)
  {
    return 2;
  }

  else
  {
    return 255;
  }
}

uint64_t QuantizerImpl::kmeansQuantize3D(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, char a5, unsigned int a6, unsigned int *a7)
{
  *a7 = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  if (!a2)
  {
    return 0;
  }

  v11 = a4;
  v12 = vdup_n_s32(0x7E7FFFFFu);
  v13 = vdup_n_s32(0xFE7FFFFF);
  v14 = (a3 + 8);
  v15 = 8.5071e37;
  v16 = -8.5071e37;
  v17 = a2;
  do
  {
    if (v15 >= *v14)
    {
      v15 = *v14;
    }

    v18 = *(v14 - 2);
    v12 = vbsl_s8(vcgt_f32(v18, v12), v12, v18);
    v13 = vbsl_s8(vcgt_f32(v13, v18), v13, v18);
    if (v16 <= *v14)
    {
      v16 = *v14;
    }

    v14 = (v14 + a4);
    --v17;
  }

  while (v17);
  v19 = 0;
  v20 = vadd_f32(v12, v13);
  v21.i32[0] = vdup_lane_s32(v12, 1).u32[0];
  v21.f32[1] = v15;
  v22.i32[0] = vdup_lane_s32(v13, 1).u32[0];
  v22.f32[1] = v16;
  *(a1 + 24) = vmul_f32(vadd_f32(v21, v22), 0x3F0000003F000000);
  v23 = vsub_f32(v13, v12);
  v13.f32[0] = (v16 - v15) * 1.001;
  v108 = v13.f32[0];
  v107 = vmul_f32(v23, vdup_n_s32(0x3F8020C5u));
  *(a1 + 8) = vmul_f32(v107, 0x3F0000003F000000);
  *(a1 + 16) = vmul_f32(vzip1_s32(v13, v20), 0x3F0000003F000000);
  do
  {
    if (v107.f32[v19] == 0.0)
    {
      *(a1 + 8 + v19 * 4) = 1065353216;
    }

    ++v19;
  }

  while (v19 != 3);
  __asm { FMOV            V1.2S, #1.0 }

  v29 = vdiv_f32(_D1, *(a1 + 8));
  v30 = (a3 + 8);
  v31 = a2;
  v32 = 1.0 / *(a1 + 16);
  do
  {
    v33 = vmul_f32(v29, vsub_f32(*(v30 - 2), *(a1 + 20)));
    v34 = v32 * (*v30 - *(a1 + 28));
    v105 = v33;
    v106 = v34;
    v35 = *(a1 + 40);
    if ((*(a1 + 44) & 0x7FFFFFFFu) <= v35)
    {
      physx::shdfnd::Array<physx::PxVec3,physx::shdfnd::ReflectionAllocator<physx::PxVec3>>::growAndPushBack(a1 + 32, &v105);
    }

    else
    {
      v36 = *(a1 + 32) + 12 * v35;
      *v36 = v33;
      *(v36 + 8) = v34;
      *(a1 + 40) = v35 + 1;
    }

    v30 = (v30 + v11);
    --v31;
  }

  while (v31);
  v37 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 12 * a2, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/Quantizer.cpp", 229);
  v38 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * a2, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/Quantizer.cpp", 230);
  v42 = *(a1 + 32);
  if (a6)
  {
    v43 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * a6, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/Quantizer.cpp", 61);
    v44 = v43;
    if (a2 <= a6)
    {
      v92 = 0;
      v93 = 0;
      do
      {
        if (v38)
        {
          *(v38 + 4 * v93) = v93;
        }

        v94 = &v37[v92];
        v39.n128_u64[0] = *(v42 + v92 * 4);
        *v94 = v39.n128_u64[0];
        v39.n128_u32[0] = *(v42 + v92 * 4 + 8);
        v94[2] = v39.n128_f32[0];
        *(v43 + 4 * v93++) = 1;
        v92 += 3;
      }

      while (3 * a2 != v92);
      a6 = a2;
      goto LABEL_47;
    }

    v45 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 12 * a6, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/Quantizer.cpp", 78);
    v46 = 0;
    v47 = v37 + 2;
    v48 = a6;
    do
    {
      v49 = v42 + 12 * (v46 / a6);
      v39.n128_u64[0] = *v49;
      *(v47 - 1) = *v49;
      *v47 = *(v49 + 8);
      v47 += 3;
      v46 += a2;
      --v48;
    }

    while (v48);
  }

  else
  {
    v45 = 0;
    v44 = 0;
  }

  v51 = 64;
  v39.n128_u32[0] = 2139095039;
  v40.n128_u32[0] = 1008981770;
  v41.n128_u32[0] = 1.0;
  do
  {
    v52 = v44;
    v53 = (v45 + 8);
    v54 = a6;
    if (a6)
    {
      do
      {
        *v52++ = 0;
        *(v53 - 1) = 0;
        *v53 = 0;
        v53 += 3;
        --v54;
      }

      while (v54);
    }

    v55 = 0;
    v56 = 0.0;
    do
    {
      v57 = (v42 + 12 * v55);
      v58 = *v57;
      v59 = v57[1].f32[0];
      if (a6)
      {
        v60 = 0;
        v61 = 3.4028e38;
        v62 = v37 + 2;
        do
        {
          v63 = (((v58.f32[1] - *(v62 - 1)) * (v58.f32[1] - *(v62 - 1))) + ((v58.f32[0] - *(v62 - 2)) * (v58.f32[0] - *(v62 - 2)))) + ((v59 - *v62) * (v59 - *v62));
          if (v63 < v61)
          {
            *(v38 + 4 * v55) = v60;
            v61 = v63;
          }

          ++v60;
          v62 += 3;
        }

        while (a6 != v60);
      }

      else
      {
        v61 = 3.4028e38;
      }

      v64 = *(v38 + 4 * v55);
      v65 = (v45 + 12 * v64);
      *v65 = vadd_f32(v58, *v65);
      v65[1].f32[0] = v59 + v65[1].f32[0];
      ++v44[v64];
      v56 = v56 + v61;
      ++v55;
    }

    while (v55 != a2);
    v66 = v44;
    v67 = (v45 + 8);
    v68 = v37 + 2;
    v69 = a6;
    if (a6)
    {
      do
      {
        v71 = *v66++;
        v70 = v71;
        if (v71)
        {
          v72 = 1.0 / v70;
          v73 = vmul_n_f32(*(v67 - 2), v72);
          *(v67 - 1) = v73;
          v74 = v72 * *v67;
          *v67 = v74;
          *(v68 - 1) = v73;
          *v68 = v74;
        }

        v68 += 3;
        v67 += 3;
        --v69;
      }

      while (v69);
    }

    if (!--v51)
    {
      break;
    }

    if (v56 < 0.01)
    {
      break;
    }

    v75 = vabds_f32(v56, v39.n128_f32[0]) <= 0.01;
    v39.n128_f32[0] = v56;
  }

  while (!v75);
  if (v45)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v39, v40, v41);
  }

  if (!a6)
  {
    v77 = 0;
LABEL_78:
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v44, v39, v40, v41);
    goto LABEL_79;
  }

LABEL_47:
  v76 = 0;
  v77 = 0;
  v39.n128_u32[0] = 841731190;
  do
  {
    if (v44[v76])
    {
      if (v77)
      {
        v78 = v77;
        v79 = &v37[3 * v76];
        v40.n128_f32[0] = *v79;
        v41.n128_f32[0] = v79[1];
        v80 = v79[2];
        if (((((v41.n128_f32[0] - v37[1]) * (v41.n128_f32[0] - v37[1])) + ((*v79 - *v37) * (*v79 - *v37))) + ((v80 - v37[2]) * (v80 - v37[2]))) < 0.00000001)
        {
          LODWORD(v81) = 0;
          v86 = 1;
        }

        else
        {
          v81 = 0;
          v82 = v37 + 5;
          while (v77 - 1 != v81)
          {
            v83 = v40.n128_f32[0] - *(v82 - 2);
            v84 = v41.n128_f32[0] - *(v82 - 1);
            v85 = *v82;
            v82 += 3;
            ++v81;
            if ((((v84 * v84) + (v83 * v83)) + ((v80 - v85) * (v80 - v85))) < 0.00000001)
            {
              v86 = v81 < v77;
              goto LABEL_58;
            }
          }

          v86 = 0;
          LODWORD(v81) = v77;
        }
      }

      else
      {
        v78 = 0;
        v86 = 0;
        LODWORD(v81) = 0;
      }

LABEL_58:
      v87 = v78 != v76 || v86;
      if (v38 && v87)
      {
        v88 = v38;
        v89 = a2;
        do
        {
          if (v76 == *v88)
          {
            *v88 = v81;
          }

          ++v88;
          --v89;
        }

        while (v89);
      }

      if (!v86)
      {
        v90 = &v37[3 * v76];
        v91 = &v37[3 * v78];
        v40.n128_u64[0] = *v90;
        *v91 = *v90;
        v40.n128_f32[0] = v90[2];
        v91[2] = v40.n128_f32[0];
        ++v77;
      }
    }

    ++v76;
  }

  while (v76 != a6);
  if (v44)
  {
    goto LABEL_78;
  }

LABEL_79:
  *a7 = v77;
  if (v77)
  {
    if (a5)
    {
      v95 = 0;
      v96 = v37 + 2;
      do
      {
        v41.n128_u64[0] = *(a1 + 20);
        v39.n128_u64[0] = vadd_f32(vmul_f32(*(v96 - 2), *(a1 + 8)), v41.n128_u64[0]);
        v41.n128_u32[0] = *(a1 + 28);
        v40.n128_f32[0] = (*v96 * *(a1 + 16)) + v41.n128_f32[0];
        v107 = v39.n128_u64[0];
        v108 = v40.n128_f32[0];
        v97 = *(a1 + 56);
        if ((*(a1 + 60) & 0x7FFFFFFFu) <= v97)
        {
          physx::shdfnd::Array<physx::PxVec3,physx::shdfnd::ReflectionAllocator<physx::PxVec3>>::growAndPushBack(a1 + 48, &v107);
        }

        else
        {
          v98 = *(a1 + 48) + 12 * v97;
          *v98 = v39.n128_u64[0];
          *(v98 + 8) = v40.n128_u32[0];
          *(a1 + 56) = v97 + 1;
        }

        ++v95;
        v96 += 3;
      }

      while (v95 < *a7);
    }

    else
    {
      v99 = 0;
      v100 = v37;
      do
      {
        v101 = *(a1 + 56);
        if ((*(a1 + 60) & 0x7FFFFFFFu) <= v101)
        {
          physx::shdfnd::Array<physx::PxVec3,physx::shdfnd::ReflectionAllocator<physx::PxVec3>>::growAndPushBack(a1 + 48, v100);
        }

        else
        {
          v102 = *(a1 + 48) + 12 * v101;
          v39.n128_u64[0] = *v100;
          *v102 = *v100;
          v39.n128_u32[0] = *(v100 + 8);
          *(v102 + 8) = v39.n128_u32[0];
          *(a1 + 56) = v101 + 1;
        }

        ++v99;
        v100 += 12;
      }

      while (v99 < *a7);
    }

    v50 = *(a1 + 48);
    if (!v37)
    {
      goto LABEL_96;
    }

    goto LABEL_95;
  }

  v50 = 0;
  if (v37)
  {
LABEL_95:
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v37, v39, v40, v41);
  }

LABEL_96:
  if (v38)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v38, v39, v40, v41);
  }

  return v50;
}

uint64_t QuantizerImpl::release(uint64_t this)
{
  if (this)
  {
    return (*(*this + 40))();
  }

  return this;
}

void QuantizerImpl::~QuantizerImpl(QuantizerImpl *this)
{
  QuantizerImpl::~QuantizerImpl(this);
  if (v1)
  {
    v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v2();
  }
}

{
  *this = &unk_1F5D230F8;
  v2 = *(this + 15);
  if ((v2 & 0x80000000) == 0 && (v2 & 0x7FFFFFFF) != 0 && *(this + 6) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  v4 = *(this + 11);
  if ((v4 & 0x80000000) == 0 && (v4 & 0x7FFFFFFF) != 0 && *(this + 4) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }
}

uint64_t physx::shdfnd::Array<physx::PxVec3,physx::shdfnd::ReflectionAllocator<physx::PxVec3>>::growAndPushBack(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 12);
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
    v6 = physx::shdfnd::ReflectionAllocator<physx::PxVec3>::allocate(a1, 12 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 8);
  v8 = v6 + 12 * v7;
  v9 = *a1;
  if (v7)
  {
    v10 = *a1;
    v11 = v6;
    do
    {
      *v11 = *v10;
      *(v11 + 8) = *(v10 + 8);
      v11 += 12;
      v10 += 12;
    }

    while (v11 < v8);
  }

  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  if ((*(a1 + 12) & 0x80000000) == 0 && v9)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    v7 = *(a1 + 8);
  }

  *a1 = v6;
  *(a1 + 8) = v7 + 1;
  *(a1 + 12) = v5;
  return v6 + 12 * v7;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::PxVec3>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxVec3>::getName() [T = physx::PxVec3]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::saveHeightField(uint64_t a1, void (***a2)(uint64_t (***)(void, unsigned int *, uint64_t), unsigned int *, uint64_t), int a3)
{
  v6 = physx::writeHeader(72, 70, 72, 70, 1u, a3, a2);
  if (v6)
  {
    physx::writeDword(*(a1 + 56), a3, a2);
    physx::writeDword(*(a1 + 60), a3, a2);
    physx::writeFloat(a3, a2, *(a1 + 64));
    physx::writeFloat(a3, a2, *(a1 + 68));
    physx::writeFloat(a3, a2, *(a1 + 72));
    v14 = 0;
    (**a2)(a2, &v14, 4);
    physx::writeFloat(a3, a2, *(a1 + 88));
    v7 = *(a1 + 92);
    v15 = *(a1 + 92);
    if (a3)
    {
      v15 = __rev16(v7);
    }

    (**a2)(a2, &v15, 2);
    physx::writeDword(*(a1 + 96), a3, a2);
    physx::writeFloat(a3, a2, *(a1 + 32) - *(a1 + 44));
    physx::writeFloat(a3, a2, *(a1 + 36) - *(a1 + 48));
    physx::writeFloat(a3, a2, *(a1 + 40) - *(a1 + 52));
    physx::writeFloat(a3, a2, *(a1 + 32) + *(a1 + 44));
    physx::writeFloat(a3, a2, *(a1 + 36) + *(a1 + 48));
    physx::writeFloat(a3, a2, *(a1 + 40) + *(a1 + 52));
    physx::writeDword(*(a1 + 104), a3, a2);
    physx::writeDword(*(a1 + 108), a3, a2);
    physx::writeFloat(a3, a2, *(a1 + 112));
    physx::writeFloat(a3, a2, *(a1 + 116));
    if (*(a1 + 108))
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(a1 + 80);
        v11 = *(v10 + v8);
        v16 = *(v10 + v8);
        if (a3)
        {
          v16 = __rev16(v11);
        }

        (**a2)(a2, &v16, 2);
        v12 = v10 + v8;
        (**a2)(a2, (v12 + 2), 1);
        (**a2)(a2, (v12 + 3), 1);
        ++v9;
        v8 += 4;
      }

      while (v9 < *(a1 + 108));
    }
  }

  return v6;
}

float physx::MeshBulider::computeLocalBounds(physx::MeshBulider *this, physx::Gu::MeshDataBase *a2)
{
  v3 = (this + 32);
  physx::Gu::computeBoundsAroundVertices(this + 32, *(this + 4), *(this + 3));
  v4 = 0.0;
  v5 = 3;
  do
  {
    v6 = fabsf(v3[3]);
    v7 = *v3++;
    v8 = fabsf(v7);
    if (v6 <= v8)
    {
      v6 = v8;
    }

    if (v4 <= v6)
    {
      v4 = v6;
    }

    --v5;
  }

  while (v5);
  result = v4 * 0.00000023842;
  *(this + 14) = result;
  return result;
}

uint64_t physx::TriangleMeshBuilder::releaseEdgeList(uint64_t this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2)
  {
    physx::Gu::EdgeList::~EdgeList(*(this + 8));
    this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v2);
  }

  *(v1 + 8) = 0;
  return this;
}

uint64_t physx::TriangleMeshBuilder::createSharedEdgeData(uint64_t this, int a2, int a3)
{
  v42 = this;
  if ((a2 & 1) != 0 || a3)
  {
    v4 = *(*(this + 24) + 104);
    v5 = physx::shdfnd::ReflectionAllocator<unsigned char>::allocate(&v43, v4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/mesh/TriangleMeshBuilder.cpp", 254);
    *(*(v42 + 24) + 120) = v5;
    bzero(v5, v4);
    if (v4 >> 30)
    {
      return physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/mesh/TriangleMeshBuilder.cpp", 261, "TriangleMesh: mesh is too big for this algo!", v6, v7, v8, v40);
    }

    else
    {
      v9 = *(v42 + 24);
      v10 = *(v9 + 112);
      v48 = 1036831949;
      v43 = *(v9 + 104);
      if ((*(v9 + 12) & 2) != 0)
      {
        v11 = 0;
      }

      else
      {
        v11 = v10;
      }

      v41 = v10;
      if ((*(v9 + 12) & 2) == 0)
      {
        v10 = 0;
      }

      v44 = v11;
      v45 = v10;
      v46 = 257;
      v47 = *(v9 + 24);
      v12 = physx::shdfnd::Foundation::mInstance;
      if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
      {
        v13 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Gu::EdgeListBuilder>::getName() [T = physx::Gu::EdgeListBuilder]";
      }

      else
      {
        v13 = "<allocation names disabled>";
      }

      v14 = (*(*(v12 + 24) + 16))(v12 + 24, 48, v13, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/mesh/TriangleMeshBuilder.cpp", 752);
      *v14 = 0;
      *(v14 + 1) = 0;
      *(v14 + 4) = 0;
      *(v14 + 5) = 0;
      *(v14 + 3) = 0;
      *(v42 + 8) = v14;
      this = physx::Gu::EdgeListBuilder::init(v14, &v43, v15, v16, v17, v18, v19, v20);
      v21 = *(v42 + 8);
      if (this)
      {
        if (v21)
        {
          v22 = *(v21 + 16);
          if (v22)
          {
            if (v22 == *(*(v42 + 24) + 104))
            {
              v23 = 0;
              v24 = 0;
              do
              {
                v25 = *(v21 + 24);
                if ((*(v25 + v23) & 0x80000000) != 0)
                {
                  *(*(*(v42 + 24) + 120) + v24) |= 8u;
                }

                v26 = v25 + v23;
                if ((*(v26 + 4) & 0x80000000) != 0)
                {
                  *(*(*(v42 + 24) + 120) + v24) |= 0x10u;
                }

                if ((*(v26 + 8) & 0x80000000) != 0)
                {
                  *(*(*(v42 + 24) + 120) + v24) |= 0x20u;
                }

                ++v24;
                v21 = *(v42 + 8);
                v23 += 12;
              }

              while (v24 < *(v21 + 16));
            }
          }
        }
      }

      else
      {
        if (v21)
        {
          physx::Gu::EdgeList::~EdgeList(*(v42 + 8));
          this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v21);
        }

        *(v42 + 8) = 0;
      }

      if (a2)
      {
        v27 = physx::shdfnd::ReflectionAllocator<unsigned int>::allocate(&v43, 4 * (3 * v4), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/mesh/TriangleMeshBuilder.cpp", 285);
        *(*(v42 + 24) + 72) = v27;
        this = memset(v27, 255, 12 * v4);
        v28 = *(v42 + 8);
        v29 = *v28;
        if (*v28)
        {
          v30 = *(v28 + 5);
          v31 = (*(v28 + 4) + 4);
          v32 = (*(v28 + 1) + 4);
          do
          {
            if (*(v31 - 1) >= 2u)
            {
              v33 = *v31;
              v34 = *(v30 + 4 * v33);
              v35 = *(v30 + 4 * (v33 + 1));
              v36 = *(v32 - 1);
              v37 = *v32;
              EdgeCCW = physx::Gu::TriangleT<unsigned int>::findEdgeCCW((v41 + 12 * v34), v36, *v32);
              this = physx::Gu::TriangleT<unsigned int>::findEdgeCCW((v41 + 12 * v35), v36, v37);
              v39 = *(*(v42 + 24) + 72);
              *(v39 + 4 * (3 * v34 + EdgeCCW)) = v35;
              *(v39 + 4 * (3 * v35 + this)) = v34;
            }

            v31 += 2;
            v32 += 2;
            --v29;
          }

          while (v29);
        }
      }
    }
  }

  return this;
}

uint64_t physx::Gu::TriangleT<unsigned int>::findEdgeCCW(int *a1, int a2, int a3)
{
  v3 = *a1;
  if (*a1 == a2 && a1[1] == a3 || v3 == a3 && a1[1] == a2)
  {
    return 0;
  }

  if (v3 == a2 && a1[2] == a3 || v3 == a3 && a1[2] == a2)
  {
    return 2;
  }

  v5 = a1[1];
  if (v5 == a2 && a1[2] == a3 || v5 == a3 && a1[2] == a2)
  {
    return 1;
  }

  else
  {
    return 255;
  }
}

void *physx::TriangleMeshBuilder::recordTriangleIndices(void *this)
{
  if (*(this[2] + 14) == 1)
  {
    v1 = this;
    this = memcpy(*(this[3] + 80), *(this[3] + 112), (12 * *(this[3] + 104)));
    v2 = v1[3];
    if (*(v2 + 64))
    {
      v3 = physx::shdfnd::ReflectionAllocator<unsigned int>::allocate(&v5, 4 * *(v2 + 104), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/mesh/TriangleMeshBuilder.cpp", 643);
      v4 = v1[3];
      *(v4 + 96) = v3;
      return memcpy(v3, *(v4 + 64), (4 * *(v4 + 104)));
    }
  }

  return this;
}

uint64_t physx::TriangleMeshBuilder::createGRBMidPhaseAndData(uint64_t this, unsigned int a2)
{
  v154 = *MEMORY[0x1E69E9840];
  if (*(*(this + 16) + 14) != 1)
  {
    return this;
  }

  v3 = this;
  v4 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v5 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Gu::BV32Tree>::getName() [T = physx::Gu::BV32Tree]";
  }

  else
  {
    v5 = "<allocation names disabled>";
  }

  v6 = (*(*(v4 + 24) + 16))(v4 + 24, 64, v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/mesh/TriangleMeshBuilder.cpp", 687);
  v6[5] = 0;
  v6[6] = 0;
  v6[4] = 0;
  v6[7].i8[0] = 0;
  v6[1] = 0;
  v6[2] = 0;
  *v6 = 0;
  v6[3].i32[0] = 0;
  v7 = *(v3 + 24);
  *(v7 + 136) = v6;
  v8 = *(v3 + 16);
  *&v147 = 0;
  LODWORD(v146) = *(v7 + 16);
  DWORD2(v147) = *(v7 + 104);
  v9 = *(v7 + 24);
  v148 = *(v7 + 80);
  *(&v146 + 1) = v9;
  if (!physx::Gu::BuildBV32Ex(v6, &v146, 0x20, 0.0002))
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 32, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/mesh/TriangleMeshBuilder.cpp", 1249, "BV32 tree failed to build.", v10, v11, v12, v132);
LABEL_17:
    v13 = v147;
    goto LABEL_18;
  }

  v13 = v147;
  if (*(v8 + 12) != 1 || *(v8 + 14) == 1)
  {
    v14 = physx::shdfnd::ReflectionAllocator<unsigned int>::allocate(v140, 4 * *(v7 + 104), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/mesh/TriangleMeshBuilder.cpp", 1257);
    v15 = v14;
    v16 = *(v7 + 96);
    if (*(v7 + 104))
    {
      v17 = 0;
      do
      {
        v18 = v13;
        if (v16)
        {
          v18 = (v16 + 4 * *v13);
        }

        *(v14 + 4 * v17++) = *v18;
        ++v13;
      }

      while (v17 < *(v7 + 104));
    }

    if (v16)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(v7 + 96) = v15;
    goto LABEL_17;
  }

LABEL_18:
  if (v13)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v13);
  }

  v19 = *(v3 + 24);
  v20 = *(v19 + 104);
  if (!v20)
  {
    v21 = 0;
LABEL_95:
    *(v19 + 88) = 0;
LABEL_96:
    if (!v21)
    {
      goto LABEL_108;
    }

    goto LABEL_107;
  }

  v21 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 12 * v20, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/mesh/TriangleMeshBuilder.cpp", 662);
  v22 = *(v19 + 104);
  if (!v22)
  {
    v19 = *(v3 + 24);
    goto LABEL_95;
  }

  v23 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 16 * v22, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/mesh/TriangleMeshBuilder.cpp", 664);
  v24 = *(v19 + 104);
  v25 = *(v3 + 24);
  v25[11] = v23;
  if (!v24)
  {
    goto LABEL_96;
  }

  v26 = v23;
  v133 = a2;
  v134 = v3;
  v27 = v25[3];
  v28 = v25[10];
  v29 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 36 * v24, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/mesh/GrbTriangleMeshCooking.h", 147);
  v30 = v29;
  v31 = 0;
  v32 = 0;
  v33 = 2;
  do
  {
    v34 = *(v28 + v31);
    v35 = *(v28 + v31 + 4);
    v36 = *(v28 + v31 + 8);
    v37 = (v27 + 12 * v35);
    v38 = (v27 + 12 * v34);
    v39 = v38[1];
    v40 = *v37 - *v38;
    v41 = v37[1] - v39;
    v42 = v37[2];
    v43 = (v27 + 12 * v36);
    v44 = *v43 - *v38;
    v45 = v38[2];
    v46 = v42 - v45;
    v47 = v43[1] - v39;
    v48 = v43[2] - v45;
    v49 = (v41 * v48) - (v46 * v47);
    v50 = (v46 * v44) - (v40 * v48);
    v51 = (v40 * v47) - (v41 * v44);
    v52 = ((v50 * v50) + (v49 * v49)) + (v51 * v51);
    v53 = 0.0;
    v54 = 0.0;
    v55 = 0.0;
    if (v52 > 0.0)
    {
      v56 = 1.0 / sqrtf(v52);
      v53 = v49 * v56;
      v54 = v50 * v56;
      v55 = v51 * v56;
    }

    v57 = (v21 + v31);
    *v57 = v53;
    v57[1] = v54;
    v57[2] = v55;
    if (v34 >= v35)
    {
      v58 = v35;
    }

    else
    {
      v58 = v34;
    }

    v59 = (v29 + 12 * (v33 - 2));
    if (v34 <= v35)
    {
      v60 = v35;
    }

    else
    {
      v60 = v34;
    }

    *v59 = v58;
    v59[1] = v60;
    v59[2] = v32;
    if (v35 >= v36)
    {
      v61 = v36;
    }

    else
    {
      v61 = v35;
    }

    v62 = (v29 + 12 * (v33 - 1));
    if (v35 <= v36)
    {
      v35 = v36;
    }

    *v62 = v61;
    v62[1] = v35;
    v62[2] = v32;
    if (v34 >= v36)
    {
      v63 = v36;
    }

    else
    {
      v63 = v34;
    }

    v64 = (v29 + 12 * v33);
    if (v34 <= v36)
    {
      v34 = v36;
    }

    *v64 = v63;
    v64[1] = v34;
    v64[2] = v32++;
    v33 += 3;
    v31 += 12;
  }

  while (v24 != v32);
  v145 = 0;
  v144 = &v146;
  v141 = 0x2000000000;
  v142 = &v146;
  v143 = 0;
  v65 = 3 * v24 - 1;
  v136 = v27;
  if (v65 >= 1)
  {
    v66 = 0;
    v67 = 0;
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v138 = v29 + 16;
    v68 = &v146;
    v146 = 0u;
    v147 = 0u;
    while (1)
    {
      if (v65 > v67)
      {
        if ((v65 - v67) < 5)
        {
LABEL_81:
          v102 = v67;
          v103 = v67 + 1;
          v104 = (v138 + 12 * v67);
          do
          {
            v105 = v102++;
            v106 = v104;
            v107 = v105;
            v108 = v103;
            v109 = v105;
            do
            {
              v110 = (v30 + 12 * v109);
              v111 = *(v106 - 1);
              if (v111 < *v110 || v111 == *v110 && *v106 < v110[1])
              {
                v109 = v108;
              }

              ++v108;
              ++v107;
              v106 += 3;
            }

            while (v107 < v65);
            if (v109 != v105)
            {
              v112 = v30 + 12 * v109;
              v113 = v30 + 12 * v105;
              v114 = *(v112 + 8);
              v115 = *v112;
              v116 = *(v113 + 8);
              *v112 = *v113;
              *(v112 + 8) = v116;
              *v113 = v115;
              *(v113 + 8) = v114;
            }

            ++v103;
            v104 += 3;
          }

          while (v102 != v65);
        }

        else
        {
          while (1)
          {
            v69 = v30 + 12 * ((v65 + v67) / 2);
            v70 = (v30 + 12 * v67);
            v71 = *v70;
            if (*v69 < *v70 || *v69 == v71 && (v71 = *v69, *(v69 + 4) < v70[1]))
            {
              v72 = v70[2];
              v73 = *v70;
              v74 = *(v69 + 8);
              *v70 = *v69;
              v70[2] = v74;
              *v69 = v73;
              *(v69 + 8) = v72;
              v71 = *v70;
            }

            v75 = (v30 + 12 * v65);
            LODWORD(v76) = *v75;
            if (*v75 < v71 || v76 == v71 && (LODWORD(v76) = v71, v75[1] < v70[1]))
            {
              v77 = v70[2];
              v76 = *v70;
              v78 = v75[2];
              *v70 = *v75;
              v70[2] = v78;
              *v75 = v76;
              v75[2] = v77;
            }

            if (v76 < *v69 || v76 == *v69 && v75[1] < *(v69 + 4))
            {
              v79 = *(v69 + 8);
              v80 = *v69;
              v81 = v75[2];
              *v69 = *v75;
              *(v69 + 8) = v81;
              *v75 = v80;
              v75[2] = v79;
            }

            v82 = *(v69 + 8);
            v83 = *v69;
            v84 = *(v75 - 1);
            *v69 = *(v75 - 3);
            *(v69 + 8) = v84;
            *(v75 - 3) = v83;
            *(v75 - 1) = v82;
            j = v65 - 1;
            v86 = (v30 + 12 * j);
            v87 = v67;
            while (1)
            {
              v88 = 0;
              v89 = *v86;
              v90 = v87;
              for (i = (v30 + 12 + 12 * v87); *i < v89 || *i == v89 && i[1] < v86[1]; i += 3)
              {
                ++v88;
              }

              v87 += v88 + 1;
              v92 = j - 1;
              for (j = v30 - 12 + 12 * j; v89 < *j || v89 == *j && v86[1] < *(j + 4); j -= 12)
              {
                --v92;
              }

              if (v90 + v88 + 1 >= v92)
              {
                break;
              }

              v93 = i[2];
              v94 = *i;
              v95 = *(j + 8);
              *i = *j;
              i[2] = v95;
              *j = v94;
              *(j + 8) = v93;
              LODWORD(j) = v92;
            }

            v96 = i[2];
            v97 = *i;
            v98 = v86[2];
            *i = *v86;
            i[2] = v98;
            *v86 = v97;
            v86[2] = v96;
            v99 = HIDWORD(v141) - 1;
            if (v90 - v67 + v88 + 1 >= ~v90 + v65 - v88)
            {
              if (v66 >= v99)
              {
                physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::EdgeTriLookup>>::grow(v140);
                v66 = v141;
                v68 = v142;
              }

              *(v68 + v66) = v88 + v90 + 2;
              v101 = v66 + 1;
              v66 += 2;
              LODWORD(v141) = v66;
              *(v68 + v101) = v65;
              v65 = v90 + v88;
            }

            else
            {
              if (v66 >= v99)
              {
                physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::EdgeTriLookup>>::grow(v140);
                v66 = v141;
                v68 = v142;
              }

              v100 = v66 + 1;
              *(v68 + v66) = v67;
              v66 += 2;
              LODWORD(v141) = v66;
              *(v68 + v100) = v88 + v90;
              v67 = v90 + v88 + 2;
            }

            if (v65 <= v67)
            {
              break;
            }

            if ((v65 - v67) <= 4)
            {
              goto LABEL_81;
            }
          }
        }
      }

      if (!v66)
      {
        break;
      }

      LODWORD(v141) = v66 - 1;
      v65 = *(v68 + v66 - 1);
      v66 -= 2;
      LODWORD(v141) = v66;
      v67 = *(v68 + v66);
    }

    if (v143)
    {
      if (v68)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
        if (v145)
        {
          physx::shdfnd::TempAllocator::deallocate(&v144, v144);
        }
      }
    }
  }

  v135 = v24;
  v117 = 0;
  v118 = 0;
  v119 = (v26 + 8);
  do
  {
    v120 = *(v28 + v117 + 4);
    v121 = *(v28 + v117 + 8);
    v122 = (v136 + 12 * *(v28 + v117));
    v123 = *(v28 + v117);
    v137 = v123;
    *&v146 = *(v21 + v117);
    DWORD2(v146) = *(v21 + v117 + 8);
    *(&v146 + 3) = -(((*(&v146 + 1) * v122[1]) + (*v122 * *&v146)) + (v122[2] * *(&v146 + 2)));
    Adjacent = physx::findAdjacent(v136, v21, v28, v135, v123, v120, &v146, v30, v118);
    v124 = physx::findAdjacent(v136, v21, v28, v135, v120, v121, &v146, v30, v118);
    v125 = physx::findAdjacent(v136, v21, v28, v135, v121, v137, &v146, v30, v118);
    *(v119 - 2) = Adjacent;
    *(v119 - 1) = v124;
    *v119 = v125;
    v119[1] = 0;
    v119 += 4;
    ++v118;
    v117 += 12;
  }

  while (v135 != v118);
  if (v30)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v30);
  }

  a2 = v133;
  v3 = v134;
LABEL_107:
  (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v21);
LABEL_108:
  this = physx::shdfnd::ReflectionAllocator<unsigned int>::allocate(&v146, 4 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/mesh/TriangleMeshBuilder.cpp", 695);
  v126 = *(v3 + 24);
  if (*(v126 + 104))
  {
    v127 = 0;
    v128 = *(v126 + 64);
    do
    {
      *(this + 4 * *(v128 + 4 * v127)) = v127;
      ++v127;
      v129 = *(v126 + 104);
    }

    while (v127 < v129);
    if (v129)
    {
      v130 = 0;
      v131 = *(v126 + 96);
      do
      {
        *(v131 + 4 * v130) = *(this + 4 * *(v131 + 4 * v130));
        ++v130;
      }

      while (v130 < *(v126 + 104));
    }
  }

  else if (!this)
  {
    return this;
  }

  return (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, this);
}

uint64_t physx::TriangleMeshBuilder::loadFromDesc(uint64_t a1, __int128 *a2, _DWORD *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 4);
  if (v8 < 3 || ((v9 = *(a2 + 4), -1431655765 * v8 >= 0x55555556) ? (v10 = v9 == 0) : (v10 = 0), v10 || (*(a2 + 8) ? (v11 = *(a2 + 14) >= 2u) : (v11 = 1), !v11 || (v15 = *(a2 + 10), v8 >= 0x10000) && (a2[3] & 2) != 0 || !*(a2 + 1) || *a2 < 0xCu || v9 && ((a2[3] & 2) != 0 ? (v16 = 6) : (v16 = 12), *(a2 + 6) < v16))))
  {
    v17 = physx::shdfnd::Foundation::mInstance;
    v18 = "TriangleMesh::loadFromDesc: desc.isValid() failed!";
    v19 = 776;
LABEL_21:
    physx::shdfnd::Foundation::error(v17, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/mesh/TriangleMeshBuilder.cpp", v19, v18, a6, a7, a8, v38);
    return 0;
  }

  v21 = *(a1 + 16);
  v22 = *(v21 + 40);
  if (v22 == 1)
  {
    if ((*(v21 + 32) - 4) >= 0xC)
    {
LABEL_29:
      v17 = physx::shdfnd::Foundation::mInstance;
      v18 = "TriangleMesh::loadFromDesc: mParams.midphaseDesc.isValid() failed!";
      v19 = 783;
      goto LABEL_21;
    }
  }

  else
  {
    if (v22)
    {
      goto LABEL_29;
    }

    v23 = *(v21 + 32);
    if (v23 < 0.0 || v23 > 1.0)
    {
      goto LABEL_29;
    }
  }

  *&v41[12] = *(a2 + 28);
  v25 = a2[1];
  v40 = *a2;
  *v41 = v25;
  v26 = *(a2 + 24);
  v42 = v26;
  v43 = *(a2 + 56);
  if (*&v41[16])
  {
    if ((physx::TriangleMeshBuilder::importMesh(a1, &v40, v21, a3, a4) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v42 = v26 & 0xFFFD;
    v27 = *v41;
    *&v41[8] = 12;
    *&v41[24] = *v41 / 3u;
    v28 = physx::shdfnd::ReflectionAllocator<unsigned int>::allocate(&v39, 4 * *v41, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/mesh/TriangleMeshBuilder.cpp", 804);
    v29 = v28;
    if (v27)
    {
      v30 = 0;
      v31 = vdupq_n_s64(v27 - 1);
      v32 = xmmword_1E3049640;
      v33 = xmmword_1E3049620;
      v34 = (v28 + 8);
      v35 = vdupq_n_s64(4uLL);
      do
      {
        v36 = vmovn_s64(vcgeq_u64(v31, v33));
        if (vuzp1_s16(v36, *v31.i8).u8[0])
        {
          *(v34 - 2) = v30;
        }

        if (vuzp1_s16(v36, *&v31).i8[2])
        {
          *(v34 - 1) = v30 + 1;
        }

        if (vuzp1_s16(*&v31, vmovn_s64(vcgeq_u64(v31, *&v32))).i32[1])
        {
          *v34 = v30 + 2;
          v34[1] = v30 + 3;
        }

        v30 += 4;
        v32 = vaddq_s64(v32, v35);
        v33 = vaddq_s64(v33, v35);
        v34 += 4;
      }

      while (((v27 + 3) & 0x1FFFFFFFCLL) != v30);
    }

    *&v41[16] = v28;
    if ((physx::TriangleMeshBuilder::importMesh(a1, &v40, *(a1 + 16), a3, a4) & 1) == 0)
    {
      return 0;
    }

    if (v29)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v29);
    }
  }

  physx::TriangleMeshBuilder::recordTriangleIndices(a1);
  (*(*a1 + 24))(a1);
  physx::MeshBulider::computeLocalBounds(*(a1 + 24), v37);
  physx::TriangleMeshBuilder::createSharedEdgeData(a1, *(*(a1 + 16) + 13), (*(*(a1 + 16) + 24) & 4) == 0);
  physx::TriangleMeshBuilder::createGRBMidPhaseAndData(a1, v15);
  return 1;
}

uint64_t physx::TriangleMeshBuilder::importMesh(uint64_t a1, unsigned int *a2, _BYTE *a3, _DWORD *a4, int a5)
{
  Vertices = physx::Gu::MeshDataBase::allocateVertices(*(a1 + 24), a2[4]);
  Triangles = physx::Gu::TriangleMeshData::allocateTriangles(*(a1 + 24), a2[10], 1, a3[14]);
  v15 = *(a1 + 24);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = *a2;
    v18 = *(a2 + 1);
    do
    {
      v19 = *v18;
      *(Vertices + 8) = *(v18 + 2);
      *Vertices = v19;
      Vertices += 12;
      v18 = (v18 + v17);
      --v16;
    }

    while (v16);
    v15 = *(a1 + 24);
  }

  v20 = *(v15 + 104);
  v21 = &Triangles[3 * v20];
  v22 = *(a2 + 4);
  v23 = *(a2 + 24);
  if ((v23 & 2) != 0)
  {
    if (v20)
    {
      v27 = (v23 & 1) == 0;
      v28 = 1;
      if (v27)
      {
        v29 = 1;
      }

      else
      {
        v29 = 2;
      }

      if (v27)
      {
        v28 = 2;
      }

      do
      {
        *Triangles = *v22;
        Triangles[1] = *(v22 + v29);
        Triangles[2] = *(v22 + v28);
        Triangles += 3;
        v22 = (v22 + a2[6]);
      }

      while (Triangles < v21);
    }
  }

  else if (v20)
  {
    v24 = (v23 & 1) == 0;
    v25 = 1;
    if (v24)
    {
      v26 = 1;
    }

    else
    {
      v26 = 2;
    }

    if (v24)
    {
      v25 = 2;
    }

    do
    {
      *Triangles = *v22;
      Triangles[1] = v22[v26];
      Triangles[2] = v22[v25];
      Triangles += 3;
      v22 = (v22 + a2[6]);
    }

    while (Triangles < v21);
  }

  if (*(a2 + 8))
  {
    v30 = physx::shdfnd::ReflectionAllocator<unsigned short>::allocate(&v86, 2 * *(v15 + 104), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/geomutils/src/mesh/GuMeshData.h", 239);
    *(v15 + 128) = v30;
    v31 = *(*(a1 + 24) + 104);
    if (v31)
    {
      v32 = a2[14];
      v33 = *(a2 + 8);
      do
      {
        *v30++ = *v33;
        v33 = (v33 + v32);
        --v31;
      }

      while (v31);
    }
  }

  if ((a3[24] & 2) == 0 || a5)
  {
    v38 = *(a1 + 16);
    v39 = 0.0;
    if (*(v38 + 24))
    {
      v39 = *(v38 + 28);
      if (v39 == 0.0)
      {
        physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/mesh/TriangleMeshBuilder.cpp", 144, "TriangleMesh: Enable mesh welding with 0 weld tolerance!", v12, v13, v14, v84);
        v39 = 0.0;
      }
    }

    physx::MeshCleaner::MeshCleaner(&v86, *(*(a1 + 24) + 16), *(*(a1 + 24) + 24), *(*(a1 + 24) + 104), *(*(a1 + 24) + 112), v39);
    v40 = v87;
    if (v87)
    {
      v41 = *(a1 + 24);
      if (!a5 || v86 == *(v41 + 16) && v87 == *(v41 + 104))
      {
        if (__src)
        {
          if (*(v41 + 128))
          {
            v42 = physx::shdfnd::ReflectionAllocator<unsigned short>::allocate(&v85, 2 * v87, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/mesh/TriangleMeshBuilder.cpp", 175);
            v43 = v42;
            v44 = 0;
            v45 = *(*(a1 + 24) + 128);
            v46 = __src;
            do
            {
              *(v42 + 2 * v44) = *(v45 + 2 * v46[v44]);
              ++v44;
            }

            while (v40 != v44);
            (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
            v41 = *(a1 + 24);
            *(v41 + 128) = v43;
          }

          v47 = *(a1 + 16);
          if (*(v47 + 12) != 1 || *(v47 + 14) == 1)
          {
            v48 = physx::shdfnd::ReflectionAllocator<unsigned int>::allocate(&v85, 4 * v40, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/mesh/TriangleMeshBuilder.cpp", 185);
            *(*(a1 + 24) + 64) = v48;
            memcpy(v48, __src, (4 * v40));
            v41 = *(a1 + 24);
          }
        }

        v49 = *(v41 + 16);
        v50 = v86;
        if (v49 != v86)
        {
          v51 = *(v41 + 24);
          if (v51)
          {
            (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v51);
            v41 = *(a1 + 24);
            v50 = v86;
          }

          *(v41 + 24) = 0;
          physx::Gu::MeshDataBase::allocateVertices(v41, v50);
          v41 = *(a1 + 24);
          v49 = *(v41 + 16);
        }

        memcpy(*(v41 + 24), v88, (12 * v49));
        v55 = *(a1 + 24);
        v56 = *(v55 + 104);
        v57 = v87;
        if (v56 != v87)
        {
          v58 = *(v55 + 112);
          if (v58)
          {
            (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v58);
            v55 = *(a1 + 24);
            v57 = v87;
          }

          *(v55 + 112) = 0;
          physx::Gu::TriangleMeshData::allocateTriangles(v55, v57, 1, 0);
          v55 = *(a1 + 24);
          v56 = *(v55 + 104);
        }

        if (v56)
        {
          v59 = 0;
          v60 = 0;
          v61 = *(*(a1 + 16) + 16) * (*(*(a1 + 16) + 16) * 250000.0);
          v62 = *(v55 + 24);
          v63 = v89;
          v64 = *(v55 + 112) + 4;
LABEL_57:
          v65 = 3 * v59;
          v66 = (v64 + 12 * v59);
          do
          {
            v67 = *(v63 + 4 * v65);
            v68 = *(v63 + 4 * (v65 + 1));
            v69 = *(v63 + 4 * (v65 + 2));
            *(v66 - 1) = v67;
            *v66 = v68;
            v66[1] = v69;
            v70 = (v62 + 12 * v67);
            v71 = (v62 + 12 * v68);
            v72 = v70[1];
            v73 = v71[1];
            v74 = v70[2];
            v75 = v71[2];
            if (((((v72 - v73) * (v72 - v73)) + ((*v70 - *v71) * (*v70 - *v71))) + ((v74 - v75) * (v74 - v75))) >= v61 || ((v76 = (v62 + 12 * v69), v77 = v76[1], v78 = v76[2], ((((v73 - v77) * (v73 - v77)) + ((*v71 - *v76) * (*v71 - *v76))) + ((v75 - v78) * (v75 - v78))) < v61) ? (v79 = ((((v77 - v72) * (v77 - v72)) + ((*v76 - *v70) * (*v76 - *v70))) + ((v78 - v74) * (v78 - v74))) < v61) : (v79 = 0), !v79))
            {
              ++v59;
              v60 = 1;
              if (v59 < *(v55 + 104))
              {
                goto LABEL_57;
              }

              goto LABEL_73;
            }

            ++v59;
            v65 += 3;
            v66 += 3;
          }

          while (v59 < *(v55 + 104));
          if ((v60 & 1) == 0)
          {
            goto LABEL_76;
          }

LABEL_73:
          if (a4)
          {
            *a4 = 1;
          }

          physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/mesh/TriangleMeshBuilder.cpp", 234, "TriangleMesh: triangles are too big, reduce their size to increase simulation stability!", v52, v53, v54, v84);
        }

LABEL_76:
        v37 = 1;
      }

      else
      {
        v37 = 0;
      }

      physx::MeshCleaner::~MeshCleaner(&v86);
    }

    else
    {
      physx::MeshCleaner::~MeshCleaner(&v86);
      if ((a5 & 1) == 0)
      {
        physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 32, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/mesh/TriangleMeshBuilder.cpp", 1048, "cleaning the mesh failed", v80, v81, v82, v84);
      }

      return 0;
    }
  }

  else
  {
    if ((a3[12] & 1) == 0)
    {
      v34 = physx::shdfnd::ReflectionAllocator<unsigned int>::allocate(&v86, 4 * *(*(a1 + 24) + 104), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/mesh/TriangleMeshBuilder.cpp", 1058);
      v35 = *(a1 + 24);
      *(v35 + 64) = v34;
      if (*(v35 + 104))
      {
        v36 = 0;
        do
        {
          *(v34 + 4 * v36) = v36;
          ++v36;
        }

        while (v36 < *(v35 + 104));
      }
    }

    return 1;
  }

  return v37;
}

uint64_t physx::TriangleMeshBuilder::save(void *a1, void (***a2)(uint64_t (***)(void, unsigned int *, uint64_t), unsigned int *, uint64_t), uint64_t a3, uint64_t a4)
{
  v8 = physx::writeHeader(77, 69, 83, 72, 0xFu, a3, a2);
  if (!v8)
  {
    return v8;
  }

  v9 = (*(*a1 + 16))(a1);
  physx::writeDword(v9, a3, a2);
  v10 = a1[3];
  v11 = *(v10 + 128);
  v12 = v11 == 0;
  v13 = v11 != 0;
  if (v12)
  {
    v14 = 2;
  }

  else
  {
    v14 = 3;
  }

  if (*(v10 + 64))
  {
    v13 = v14;
  }

  if (*(v10 + 72))
  {
    v13 |= 0x10u;
  }

  if (*(a4 + 14))
  {
    v13 |= 0x20u;
  }

  v15 = *(v10 + 112);
  v16 = *(v10 + 104);
  if (!v16)
  {
    v21 = (*(a4 + 24) >> 3) & 1;
LABEL_23:
    v22 = 4;
    goto LABEL_24;
  }

  v17 = 0;
  v18 = (v15 + 8);
  do
  {
    if (*(v18 - 2) > v17)
    {
      v17 = *(v18 - 2);
    }

    if (*(v18 - 1) > v17)
    {
      v17 = *(v18 - 1);
    }

    v20 = *v18;
    v18 += 3;
    v19 = v20;
    if (v20 > v17)
    {
      v17 = v19;
    }

    --v16;
  }

  while (v16);
  v21 = (*(a4 + 24) & 8 | HIWORD(v17)) != 0;
  if (v17 <= 0xFF)
  {
    goto LABEL_23;
  }

  v22 = 8;
LABEL_24:
  if (v21)
  {
    v23 = 0;
  }

  else
  {
    v23 = v22;
  }

  v24 = v23 | v13;
  physx::writeDword(v23 | v13, a3, a2);
  physx::writeDword(*(a1[3] + 16), a3, a2);
  physx::writeDword(*(a1[3] + 104), a3, a2);
  physx::writeFloatBuffer(*(a1[3] + 24), 3 * *(a1[3] + 16), a3, a2);
  if ((v24 & 4) != 0)
  {
    v25 = a1[3];
    if (*(v25 + 104))
    {
      v27 = 0;
      do
      {
        v53[3] = *(v15 + 4 * v27);
        (**a2)(a2, &v53[3], 1);
        ++v27;
        v25 = a1[3];
      }

      while (v27 < (3 * *(v25 + 104)));
    }
  }

  else
  {
    v25 = a1[3];
    v26 = *(v25 + 104);
    if ((v24 & 8) != 0)
    {
      if (v26)
      {
        v28 = 0;
        do
        {
          v29 = *(v15 + 4 * v28);
          *&v53[3] = v29;
          if (a3)
          {
            *&v53[3] = bswap32(v29) >> 16;
          }

          (**a2)(a2, &v53[3], 2);
          ++v28;
          v25 = a1[3];
        }

        while (v28 < (3 * *(v25 + 104)));
      }
    }

    else
    {
      physx::writeFloatBuffer(v15, 3 * v26, a3, a2);
      v25 = a1[3];
    }
  }

  v30 = *(v25 + 128);
  if (v30)
  {
    physx::writeWordBuffer(v30, *(v25 + 104), a3, a2);
    v25 = a1[3];
  }

  v31 = *(v25 + 64);
  if (v31)
  {
    v32 = *(v25 + 104);
    if (v32)
    {
      LODWORD(v33) = 0;
      do
      {
        v35 = *v31++;
        v34 = v35;
        if (v35 <= v33)
        {
          v33 = v33;
        }

        else
        {
          v33 = v34;
        }

        --v32;
      }

      while (v32);
    }

    else
    {
      v33 = 0;
    }

    physx::writeDword(v33, a3, a2);
    physx::storeIndices(v33, *(a1[3] + 104), *(a1[3] + 64), a2, a3);
    v25 = a1[3];
  }

  v36 = *(v25 + 72);
  if (v36)
  {
    physx::writeFloatBuffer(v36, 3 * *(v25 + 104), a3, a2);
  }

  (*(*a1 + 32))(a1, a2, a3);
  physx::writeFloat(a3, a2, *(a1[3] + 56));
  physx::writeFloat(a3, a2, *(a1[3] + 32));
  physx::writeFloat(a3, a2, *(a1[3] + 36));
  physx::writeFloat(a3, a2, *(a1[3] + 40));
  physx::writeFloat(a3, a2, *(a1[3] + 44));
  physx::writeFloat(a3, a2, *(a1[3] + 48));
  physx::writeFloat(a3, a2, *(a1[3] + 52));
  v37 = a1[3];
  if (*(v37 + 120))
  {
    physx::writeDword(*(v37 + 104), a3, a2);
    (**a2)(a2, *(a1[3] + 120), *(a1[3] + 104));
  }

  else
  {
    *&v53[3] = 0;
    (**a2)(a2, &v53[3], 4);
  }

  if (*(a4 + 14) == 1)
  {
    v38 = a1[3];
    v39 = *(v38 + 80);
    if ((v24 & 4) != 0)
    {
      v40 = *(v38 + 104);
      if (v40)
      {
        v41 = 0;
        do
        {
          v53[3] = *(v39 + 4 * v41);
          (**a2)(a2, &v53[3], 1);
          ++v41;
          v38 = a1[3];
          v40 = *(v38 + 104);
        }

        while (v41 < (3 * v40));
      }
    }

    else
    {
      v40 = *(v38 + 104);
      if ((v24 & 8) != 0)
      {
        if (v40)
        {
          v42 = 0;
          do
          {
            v43 = *(v39 + 4 * v42);
            *&v53[3] = v43;
            if (a3)
            {
              *&v53[3] = bswap32(v43) >> 16;
            }

            (**a2)(a2, &v53[3], 2);
            ++v42;
            v38 = a1[3];
            v40 = *(v38 + 104);
          }

          while (v42 < (3 * v40));
        }
      }

      else
      {
        physx::writeFloatBuffer(*(v38 + 80), 3 * v40, a3, a2);
        v38 = a1[3];
        v40 = *(v38 + 104);
      }
    }

    physx::writeFloatBuffer(*(v38 + 88), 4 * v40, a3, a2);
    physx::writeFloatBuffer(*(a1[3] + 96), *(a1[3] + 104), a3, a2);
    v44 = *(a1[3] + 136);
    qmemcpy(v53, "23VB", 4);
    (**a2)(a2, &v53[3], 1);
    (**a2)(a2, &v53[2], 1);
    (**a2)(a2, &v53[1], 1);
    (**a2)(a2, v53, 1);
    if (a3)
    {
      v45 = -1;
    }

    else
    {
      v45 = 0;
    }

    v46 = vbsl_s8(vdup_n_s16(v45), 0x2000000000000, 2);
    *&v53[3] = vuzp1_s8(v46, v46).u32[0];
    (**a2)(a2, &v53[3], 4);
    physx::writeFloat(a3, a2, *(v44 + 8));
    physx::writeFloat(a3, a2, *(v44 + 12));
    physx::writeFloat(a3, a2, *(v44 + 16));
    physx::writeFloat(a3, a2, *(v44 + 20));
    physx::writeDword(*(v44 + 52), a3, a2);
    physx::writeDword(*(v44 + 48), a3, a2);
    if (*(v44 + 48))
    {
      v47 = 0;
      v48 = 0;
      do
      {
        v49 = *(v44 + 40) + v47;
        v50 = *(v49 + 1152);
        v51 = 4 * v50;
        physx::writeDword(v50, a3, a2);
        physx::writeFloatBuffer(v49 + 1024, *(v49 + 1152), a3, a2);
        physx::writeFloatBuffer(v49, v51, a3, a2);
        physx::writeFloatBuffer(v49 + 512, v51, a3, a2);
        ++v48;
        v47 += 1168;
      }

      while (v48 < *(v44 + 48));
    }
  }

  return v8;
}

uint64_t physx::TriangleMeshBuilder::checkMeshIndicesSize(uint64_t this)
{
  v1 = *(this + 24);
  if (*(v1 + 18) || (*(v1 + 12) & 2) != 0)
  {
    return this;
  }

  v2 = this;
  v3 = *(v1 + 104);
  v4 = *(v1 + 112);
  v5 = *(v1 + 80);
  *(v1 + 112) = 0;
  physx::Gu::TriangleMeshData::allocateTriangles(v1, v3, 0, v5 != 0);
  v6 = 3 * v3;
  if (v3)
  {
    v7 = *(v1 + 112);
    if (v6 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v6;
    }

    v9 = v4;
    do
    {
      v10 = *v9++;
      *v7++ = v10;
      --v8;
    }

    while (v8);
LABEL_12:
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v4);
    if (v5)
    {
      if (v3)
      {
        v11 = *(v1 + 80);
        if (v6 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v6;
        }

        v13 = v5;
        do
        {
          v14 = *v13++;
          *v11++ = v14;
          --v12;
        }

        while (v12);
      }

      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if (v4)
  {
    goto LABEL_12;
  }

  if (v5)
  {
LABEL_21:
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v5);
  }

LABEL_22:
  v15 = *(*v2 + 40);

  return v15(v2);
}

double physx::BV4TriangleMeshBuilder::BV4TriangleMeshBuilder(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
  *(a1 + 24) = a1 + 32;
  *a1 = &unk_1F5D231C0;
  *(a1 + 8) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = xmmword_1E3113BA0;
  *(a1 + 80) = vdup_n_s32(0xFE7FFFFF);
  *(a1 + 88) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 124) = 0u;
  *(a1 + 32) = &unk_1F5D21658;
  *(a1 + 176) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 286) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 236) = 0u;
  *(a1 + 40) = 1;
  return result;
}

void physx::BV4TriangleMeshBuilder::~BV4TriangleMeshBuilder(physx::BV4TriangleMeshBuilder *this)
{
  *this = &unk_1F5D231C0;
  physx::Gu::BV4TriangleData::~BV4TriangleData((this + 32));
  *this = &unk_1F5D23180;
  physx::TriangleMeshBuilder::releaseEdgeList(this);
}

{
  *this = &unk_1F5D231C0;
  physx::Gu::BV4TriangleData::~BV4TriangleData((this + 32));
  *this = &unk_1F5D23180;
  physx::TriangleMeshBuilder::releaseEdgeList(this);

  JUMPOUT(0x1E6906520);
}

void *physx::BV4TriangleMeshBuilder::onMeshIndexFormatChange(void *this)
{
  v1 = this[3];
  v2 = *(v1 + 112);
  if ((*(v1 + 12) & 2) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v1 + 112);
  }

  if ((*(v1 + 12) & 2) == 0)
  {
    v2 = 0;
  }

  v4 = *(v1 + 24);
  this[26] = v3;
  this[27] = v2;
  this[23] = v4;
  return this;
}

uint64_t physx::BV4TriangleMeshBuilder::createMidPhaseStructure(physx::BV4TriangleMeshBuilder *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = *(this + 3);
  *(this + 44) = *(v10 + 16);
  *(this + 50) = *(v10 + 104);
  v11 = *(v10 + 112);
  if ((*(v10 + 12) & 2) != 0)
  {
    v12 = *(v10 + 112);
  }

  else
  {
    v12 = 0;
  }

  if ((*(v10 + 12) & 2) != 0)
  {
    v11 = 0;
  }

  v13 = *(v10 + 24);
  *(this + 26) = v11;
  *(this + 27) = v12;
  *(this + 23) = v13;
  *(this + 24) = 0;
  v14 = *(this + 2);
  if (*(v14 + 40) == 1)
  {
    v15 = *(v14 + 32);
  }

  else
  {
    v15 = 4;
  }

  result = physx::Gu::BuildBV4Ex((this + 224), (this + 176), v15, 0.0002);
  if (result)
  {
    v20 = *(this + 24);
    v21 = *(this + 3);
    if (!*(v21 + 128))
    {
      goto LABEL_21;
    }

    result = physx::shdfnd::ReflectionAllocator<unsigned short>::allocate(&v36, 2 * *(v21 + 104), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/mesh/TriangleMeshBuilder.cpp", 1164);
    v22 = result;
    v21 = *(this + 3);
    v23 = *(v21 + 104);
    v24 = *(v21 + 128);
    if (v23)
    {
      v25 = v20;
      v26 = result;
      do
      {
        v27 = *v25++;
        *v26++ = *(v24 + 2 * v27);
        --v23;
      }

      while (v23);
    }

    else if (!v24)
    {
LABEL_20:
      *(v21 + 128) = v22;
LABEL_21:
      v29 = *(this + 2);
      if (*(v29 + 12) != 1 || *(v29 + 14) == 1)
      {
        result = physx::shdfnd::ReflectionAllocator<unsigned int>::allocate(&v35, 4 * *(v21 + 104), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/mesh/TriangleMeshBuilder.cpp", 1173);
        v30 = result;
        v31 = *(this + 3);
        v32 = *(v31 + 64);
        if (*(v31 + 104))
        {
          v33 = 0;
          do
          {
            v34 = v20;
            if (v32)
            {
              v34 = (v32 + 4 * *v20);
            }

            *(result + 4 * v33++) = *v34;
            ++v20;
          }

          while (v33 < *(v31 + 104));
        }

        if (v32)
        {
          result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
          v31 = *(this + 3);
        }

        *(v31 + 64) = v30;
      }

      if (*(this + 24))
      {
        result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      }

      *(this + 24) = 0;
      return result;
    }

    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    v21 = *(this + 3);
    goto LABEL_20;
  }

  v28 = physx::shdfnd::Foundation::mInstance;

  return physx::shdfnd::Foundation::error(v28, 32, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/mesh/TriangleMeshBuilder.cpp", 1155, "BV4 tree failed to build.", v17, v18, v19, a9);
}

uint64_t physx::BV4TriangleMeshBuilder::saveMidPhaseStructure(uint64_t a1, uint64_t (***a2)(void, unsigned int *, uint64_t), int a3)
{
  qmemcpy(v9, " 4VB", sizeof(v9));
  (**a2)(a2, &v9[3], 1);
  (**a2)(a2, &v9[2], 1);
  (**a2)(a2, &v9[1], 1);
  (**a2)(a2, v9, 1);
  if (a3)
  {
    v6 = -1;
  }

  else
  {
    v6 = 0;
  }

  v7 = vbsl_s8(vdup_n_s16(v6), 0x3000000000000, 3);
  v10 = vuzp1_s8(v7, v7).u32[0];
  (**a2)(a2, &v10, 4);
  physx::writeFloat(a3, a2, *(a1 + 232));
  physx::writeFloat(a3, a2, *(a1 + 236));
  physx::writeFloat(a3, a2, *(a1 + 240));
  physx::writeFloat(a3, a2, *(a1 + 244));
  physx::writeDword(*(a1 + 264), a3, a2);
  physx::writeFloat(a3, a2, *(a1 + 268));
  physx::writeFloat(a3, a2, *(a1 + 272));
  physx::writeFloat(a3, a2, *(a1 + 276));
  physx::writeFloat(a3, a2, *(a1 + 280));
  physx::writeFloat(a3, a2, *(a1 + 284));
  physx::writeFloat(a3, a2, *(a1 + 288));
  physx::writeDword(*(a1 + 293), a3, a2);
  physx::writeDword(*(a1 + 248), a3, a2);
  return (**a2)(a2, *(a1 + 256), (16 * *(a1 + 248)));
}

double physx::RTreeTriangleMeshBuilder::RTreeTriangleMeshBuilder(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
  *(a1 + 24) = a1 + 32;
  *a1 = &unk_1F5D23200;
  *(a1 + 8) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = xmmword_1E3113BA0;
  *(a1 + 80) = vdup_n_s32(0xFE7FFFFF);
  *(a1 + 88) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 124) = 0u;
  *(a1 + 32) = &unk_1F5D215B0;
  *(a1 + 260) = 0;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0;
  *(a1 + 240) = 4;
  *(a1 + 40) = 0;
  return result;
}

void physx::RTreeTriangleMeshBuilder::~RTreeTriangleMeshBuilder(physx::RTreeTriangleMeshBuilder *this)
{
  *this = &unk_1F5D23200;
  v2 = (this + 32);
  *(this + 4) = &unk_1F5D215B0;
  physx::Gu::RTree::~RTree((this + 176));
  physx::Gu::TriangleMeshData::~TriangleMeshData(v2);
  *this = &unk_1F5D23180;
  physx::TriangleMeshBuilder::releaseEdgeList(this);
}

{
  physx::RTreeTriangleMeshBuilder::~RTreeTriangleMeshBuilder(this);

  JUMPOUT(0x1E6906520);
}

_WORD *physx::RTreeTriangleMeshBuilder::createMidPhaseStructure(float32x2_t *this)
{
  v2 = this[2];
  v3 = this[3];
  v4 = *(*&v2 + 32);
  v5 = *(*&v2 + 36);
  __src = 0;
  v107 = 0;
  v6 = *(*&v3 + 104);
  v104 = &unk_1F5D23298;
  v105 = v6;
  v7 = *(*&v3 + 24);
  v8 = *(*&v3 + 12);
  v9 = *(*&v3 + 112);
  if ((v8 & 2) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if ((v8 & 2) != 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  v108 = 0;
  v109 = 0;
  if (v6)
  {
    physx::shdfnd::Array<physx::PxBounds3V,physx::shdfnd::ReflectionAllocator<physx::PxBounds3V>>::recreate(&v108, v6);
    v12 = 0;
    v13 = xmmword_1E3116F50;
    v14 = xmmword_1E31137A0;
    v15 = xmmword_1E31177A0;
    v16 = xmmword_1E31177B0;
    do
    {
      if (v10)
      {
        v17 = *(v10 + 2 * v12);
        v18 = *(v10 + 2 * (v12 + 1));
        v19 = *(v10 + 2 * (v12 + 2));
      }

      else
      {
        v17 = *(v11 + 4 * v12);
        v18 = *(v11 + 4 * (v12 + 1));
        v19 = *(v11 + 4 * (v12 + 2));
      }

      v20 = (v7 + 12 * v17);
      v21 = (v7 + 12 * v18);
      v22 = (v7 + 12 * v19);
      *v23.f32 = vand_s8(*v20, vceq_f32(*v20, *v20));
      v23.i64[1] = v20[1].u32[0];
      *v24.f32 = vand_s8(*v21, vceq_f32(*v21, *v21));
      v24.i64[1] = v21[1].u32[0];
      *v25.f32 = vand_s8(*v22, vceq_f32(*v22, *v22));
      v25.i64[1] = v22[1].u32[0];
      v26 = vaddq_f32(vminq_f32(vminq_f32(v23, v24), v25), v15);
      v27 = vaddq_f32(vmaxq_f32(vmaxq_f32(v23, v24), v25), v16);
      *v111 = v26;
      *&v111[16] = v27;
      v28 = v109;
      if ((HIDWORD(v109) & 0x7FFFFFFFu) <= v109)
      {
        v100 = v14;
        v102 = v13;
        v98 = v27;
        v99 = v26;
        physx::shdfnd::Array<physx::PxBounds3V,physx::shdfnd::ReflectionAllocator<physx::PxBounds3V>>::growAndPushBack(&v108, v111);
        v27 = v98;
        v26 = v99;
        v16 = xmmword_1E31177B0;
        v15 = xmmword_1E31177A0;
        v14 = v100;
        v13 = v102;
      }

      else
      {
        v29 = (v108 + 32 * v109);
        *v29 = *v111;
        v29[1] = *&v111[16];
        LODWORD(v109) = v28 + 1;
      }

      v14 = vminq_f32(v14, v26);
      v13 = vmaxq_f32(v13, v27);
      v12 += 3;
    }

    while (3 * v6 != v12);
    v101 = v14;
    v103 = v13;
    v30 = v108;
  }

  else
  {
    v30 = 0;
    v101 = xmmword_1E31137A0;
    v103 = xmmword_1E3116F50;
  }

  *v111 = 0;
  physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::resize(&__src, 0, v111);
  if ((HIDWORD(v107) & 0x7FFFFFFFu) < v6 + 1)
  {
    physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(&__src, v6 + 1);
  }

  *v111 = 0;
  if (v6)
  {
    v31 = 0;
    do
    {
      if ((HIDWORD(v107) & 0x7FFFFFFFu) <= v107)
      {
        physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(&__src, v111);
      }

      else
      {
        *(__src + v107) = v31;
        LODWORD(v107) = v107 + 1;
      }

      v31 = *v111 + 1;
      *v111 = v31;
    }

    while (v31 < v6);
  }

  v135 = -1412567295;
  if ((HIDWORD(v107) & 0x7FFFFFFFu) <= v107)
  {
    physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(&__src, &v135);
  }

  else
  {
    *(__src + v107) = -1412567295;
    LODWORD(v107) = v107 + 1;
  }

  v133 = 0;
  v134 = 0;
  if (2 * v6)
  {
    physx::shdfnd::Array<physx::RTreeNodeNQ,physx::shdfnd::ReflectionAllocator<physx::RTreeNodeNQ>>::recreate(&v133, 2 * v6);
  }

  v132 = 0;
  if (v5)
  {
    v32 = __src;
    v112 = 0;
    *&v111[8] = __src;
    *&v111[16] = v30;
    *v111 = __src + 4 * v6;
    if (v6)
    {
      physx::shdfnd::Array<physx::PxVec3,physx::shdfnd::ReflectionAllocator<physx::PxVec3>>::recreate(&v111[24], v6);
      v33 = 0;
      v34 = 32 * v6;
      do
      {
        v35 = vaddq_f32(*(*&v111[16] + v33), *(*&v111[16] + v33 + 16));
        v110[0].i64[0] = v35.i64[0];
        v110[0].i32[2] = v35.i32[2];
        v36 = v112;
        if ((HIDWORD(v112) & 0x7FFFFFFFu) <= v112)
        {
          physx::shdfnd::Array<physx::PxVec3,physx::shdfnd::ReflectionAllocator<physx::PxVec3>>::growAndPushBack(&v111[24], v110);
        }

        else
        {
          v37 = *&v111[24] + 12 * v112;
          *v37 = v35.i64[0];
          *(v37 + 8) = v35.i32[2];
          LODWORD(v112) = v36 + 1;
        }

        v33 += 32;
      }

      while (v34 != v33);
      v32 = __src;
    }

    v38 = 0.0;
    if (v4 >= 0.0)
    {
      v38 = v4;
    }

    v39 = (v38 * 9.0);
    if (v39 >= 8)
    {
      v39 = 8;
    }

    LODWORD(v113) = physx::SubSortQuick::stopAtTrisPerLeaf1[v39];
    physx::SubSortQuick::sort4(v111, v32, v107 - 1, &v133, &v132, v110, 0);
    if ((v112 & 0x8000000000000000) == 0 && (v112 & 0x7FFFFFFF00000000) != 0 && *&v111[24])
    {
      v40 = physx::shdfnd::Foundation::mInstance;
LABEL_101:
      (*(*(v40 + 24) + 24))();
    }
  }

  else
  {
    *v111 = 0;
    v110[0] = 0uLL;
    physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::resize(v110, v6, v111);
    *v111 = 0;
    v130 = 0;
    v131 = 0;
    physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::resize(&v130, v6, v111);
    *v111 = 0;
    v128 = 0;
    v129 = 0;
    physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::resize(&v128, v6, v111);
    *v111 = 0;
    v126 = 0;
    v127 = 0;
    physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::resize(&v126, v6, v111);
    *v111 = 0;
    v124 = 0;
    v125 = 0;
    physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::resize(&v124, v6, v111);
    *v111 = 0;
    v122 = 0;
    v123 = 0;
    physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::resize(&v122, v6, v111);
    memcpy(v126, __src, (4 * v6));
    memcpy(v124, __src, (4 * v6));
    memcpy(v122, __src, (4 * v6));
    *v111 = 0;
    *&v111[8] = v30;
    physx::shdfnd::sort<unsigned int,physx::SortBoundsPredicate,physx::shdfnd::ReflectionAllocator<unsigned int>>(v126, v127, v111);
    if (v6)
    {
      v41 = 0;
      v42 = v126;
      v43 = v110[0].i64[0];
      do
      {
        *(v43 + 4 * v42[v41]) = v41;
        ++v41;
      }

      while (v6 != v41);
      *v111 = 1;
      *&v111[8] = v30;
      physx::shdfnd::sort<unsigned int,physx::SortBoundsPredicate,physx::shdfnd::ReflectionAllocator<unsigned int>>(v124, v125, v111);
      v44 = 0;
      v45 = v124;
      v46 = v130;
      do
      {
        *(v46 + 4 * v45[v44]) = v44;
        ++v44;
      }

      while (v6 != v44);
    }

    else
    {
      *v111 = 1;
      *&v111[8] = v30;
      physx::shdfnd::sort<unsigned int,physx::SortBoundsPredicate,physx::shdfnd::ReflectionAllocator<unsigned int>>(v124, v125, v111);
    }

    *v111 = 2;
    *&v111[8] = v30;
    physx::shdfnd::sort<unsigned int,physx::SortBoundsPredicate,physx::shdfnd::ReflectionAllocator<unsigned int>>(v122, v123, v111);
    v47 = v122;
    v48 = v128;
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        *(v48 + 4 * v47[i]) = i;
      }

      v50 = 4 * v6;
    }

    else
    {
      v50 = 0;
    }

    *v111 = __src;
    *&v111[16] = v30;
    v113 = v126;
    v114 = v124;
    v115 = v47;
    v116 = v110[0].i64[0];
    v117 = v130;
    v118 = v48;
    v120 = v6;
    if (v6)
    {
      v51 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v50, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/mesh/RTreeCooking.cpp", 378);
      v52 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v50, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/mesh/RTreeCooking.cpp", 379);
    }

    else
    {
      v51 = 0;
      v52 = 0;
    }

    *&v111[24] = v51;
    v112 = v52;
    v53 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * ((2 * v6) | 1u), "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/mesh/RTreeCooking.cpp", 380);
    *&v111[8] = v53;
    if (v6)
    {
      v54 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v50, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/mesh/RTreeCooking.cpp", 381);
    }

    else
    {
      v54 = 0;
    }

    v55 = 0.0;
    if (v4 >= 0.0)
    {
      v55 = v4;
    }

    v56 = (v55 * 15.0);
    v119 = v54;
    if (v56 >= 0xE)
    {
      v56 = 14;
    }

    v121 = v56;
    physx::SubSortSAH::sort4(v111);
    if (v51)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v51);
    }

    if (v52)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v52);
    }

    if (v53)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v53);
    }

    if (v54)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v54);
    }

    if ((v123 & 0x8000000000000000) == 0 && (v123 & 0x7FFFFFFF00000000) != 0 && v122)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    if ((v125 & 0x8000000000000000) == 0 && (v125 & 0x7FFFFFFF00000000) != 0 && v124)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    if ((v127 & 0x8000000000000000) == 0 && (v127 & 0x7FFFFFFF00000000) != 0 && v126)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    if ((v129 & 0x8000000000000000) == 0 && (v129 & 0x7FFFFFFF00000000) != 0 && v128)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    if ((v131 & 0x8000000000000000) == 0 && (v131 & 0x7FFFFFFF00000000) != 0 && v130)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    if ((v110[0].i32[3] & 0x80000000) == 0 && (v110[0].i32[3] & 0x7FFFFFFF) != 0 && v110[0].i64[0])
    {
      v40 = physx::shdfnd::Foundation::mInstance;
      goto LABEL_101;
    }
  }

  LODWORD(v107) = v107 - 1;
  v110[0] = 0uLL;
  v57 = v134;
  if (v134)
  {
    physx::shdfnd::Array<physx::Gu::RTreeNodeQ,physx::shdfnd::ReflectionAllocator<physx::Gu::RTreeNodeQ>>::recreate(v110, v134);
    v58 = (v133 + 28);
    v59 = -1;
    while (1)
    {
      v60 = *(v58 - 1);
      if (v60 == -1)
      {
        break;
      }

      v61 = *v58;
      *v111 = *(v58 - 7);
      *&v111[16] = *(v58 - 3);
      if (v61 <= 0)
      {
        v62 = 28 * v60;
LABEL_111:
        *&v111[24] = v62;
        goto LABEL_112;
      }

      *&v111[24] = v60;
      v104[2](&v104, &v111[24]);
LABEL_112:
      v63 = v110[0].i32[2];
      if ((v110[0].i32[3] & 0x7FFFFFFFu) <= v110[0].i32[2])
      {
        physx::shdfnd::Array<physx::Gu::RTreeNodeQ,physx::shdfnd::ReflectionAllocator<physx::Gu::RTreeNodeQ>>::growAndPushBack(v110, v111);
      }

      else
      {
        v64 = (v110[0].i64[0] + 28 * v110[0].u32[2]);
        v65 = *&v111[12];
        *v64 = *v111;
        *(v64 + 12) = v65;
        v110[0].i32[2] = v63 + 1;
      }

      v58 += 8;
      if (!--v57)
      {
        v66 = v110[0].u32[2];
        v67 = v110[0].i64[0];
        goto LABEL_118;
      }
    }

    if (v59 == -1)
    {
      v59 = v110[0].i32[2];
    }

    *&v111[16] = 0x80000000800000;
    *v111 = xmmword_1E3116ED0;
    v62 = (28 * v59) | 1;
    goto LABEL_111;
  }

  v67 = 0;
  v66 = 0;
LABEL_118:
  __asm { FMOV            V0.4S, #1.0 }

  *this[26].f32 = _Q0;
  this[31].i32[1] = v66;
  this[32].i32[0] = v66 >> 2;
  result = physx::shdfnd::AlignedAllocator<128u,physx::shdfnd::NonTrackingAllocator>::allocate(v111, 112 * (v66 >> 2), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/mesh/RTreeCooking.cpp", 879);
  this[33] = result;
  this[22] = v101;
  this[23].i32[0] = DWORD2(v101);
  this[23].i32[1] = 0;
  this[24] = v103;
  this[25].i32[0] = DWORD2(v103);
  this[25].i32[1] = 0;
  this[28] = vmul_f32(vsub_f32(*&v103, *&v101), vdup_n_s32(0x37800080u));
  this[29].f32[0] = (*(&v103 + 2) - *(&v101 + 2)) * 0.000015259;
  this[29].i32[1] = 0;
  this[31].i32[0] = v132;
  this[30] = 0x100000004;
  if (this[32].i32[0])
  {
    v74 = 0;
    do
    {
      v75 = 0;
      v76 = (v67 + 12 + 112 * (v74 & 0x3FFFFFFF));
      do
      {
        v77 = &result[v75];
        v77[12] = *v76;
        v77[16] = v76[1];
        v77[20] = v76[2];
        *v77 = *(v76 - 3);
        v77[4] = *(v76 - 2);
        v77[8] = *(v76 - 1);
        v77[24] = v76[3];
        v75 += 2;
        v76 += 7;
      }

      while (v75 != 8);
      ++v74;
      result += 56;
    }

    while (v74 < this[32].u32[0]);
  }

  if ((v110[0].i32[3] & 0x80000000) == 0 && (v110[0].i32[3] & 0x7FFFFFFF) != 0 && v67)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v67);
  }

  if ((v134 & 0x8000000000000000) == 0 && (v134 & 0x7FFFFFFF00000000) != 0 && v133)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  if ((v109 & 0x8000000000000000) == 0 && (v109 & 0x7FFFFFFF00000000) != 0 && v30)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v30);
  }

  v78 = *(*&this[3] + 104);
  if (v78)
  {
    v79 = __src;
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 12 * v78, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/mesh/TriangleMeshBuilder.cpp", 108);
    v80 = result;
    v81 = this[3];
    if (*(*&v81 + 104))
    {
      v82 = 0;
      v83 = result;
      do
      {
        v84 = *(*&v81 + 112) + 12 * v79[v82];
        v85 = *v84;
        *(v83 + 8) = *(v84 + 8);
        *v83 = v85;
        v83 += 12;
        ++v82;
        v81 = this[3];
      }

      while (v82 < *(*&v81 + 104));
    }

    if (*(*&v81 + 112))
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      v81 = this[3];
    }

    *(*&v81 + 112) = v80;
    if (!*(*&v81 + 128))
    {
      goto LABEL_149;
    }

    result = physx::shdfnd::ReflectionAllocator<unsigned short>::allocate(v111, 2 * *(*&v81 + 104), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/mesh/TriangleMeshBuilder.cpp", 116);
    v86 = result;
    v81 = this[3];
    v87 = *(*&v81 + 104);
    v88 = *(*&v81 + 128);
    if (v87)
    {
      v89 = v79;
      v90 = result;
      do
      {
        v91 = *v89++;
        *v90++ = *(v88 + 2 * v91);
        --v87;
      }

      while (v87);
    }

    else if (!v88)
    {
LABEL_148:
      *(*&v81 + 128) = v86;
LABEL_149:
      v92 = this[2];
      if (*(*&v92 + 12) != 1 || *(*&v92 + 14) == 1)
      {
        result = physx::shdfnd::ReflectionAllocator<unsigned int>::allocate(v111, 4 * *(*&v81 + 104), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/mesh/TriangleMeshBuilder.cpp", 125);
        v93 = result;
        v94 = this[3];
        v95 = *(*&v94 + 64);
        if (*(*&v94 + 104))
        {
          v96 = 0;
          do
          {
            v97 = v79;
            if (v95)
            {
              v97 = (v95 + 4 * *v79);
            }

            *&result[2 * v96++] = *v97;
            ++v79;
          }

          while (v96 < *(*&v94 + 104));
        }

        if (v95)
        {
          result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
          v94 = this[3];
        }

        *(*&v94 + 64) = v93;
      }

      goto LABEL_159;
    }

    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    v81 = this[3];
    goto LABEL_148;
  }

LABEL_159:
  if ((v107 & 0x8000000000000000) == 0 && (v107 & 0x7FFFFFFF00000000) != 0)
  {
    if (__src)
    {
      return (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  return result;
}

uint64_t physx::RTreeTriangleMeshBuilder::saveMidPhaseStructure(uint64_t a1, uint64_t (***a2)(void, unsigned int *, uint64_t), int a3)
{
  qmemcpy(v11, "ERTR", sizeof(v11));
  (**a2)(a2, &v11[3], 1);
  (**a2)(a2, &v11[2], 1);
  (**a2)(a2, &v11[1], 1);
  (**a2)(a2, v11, 1);
  if (a3)
  {
    v6 = -1;
  }

  else
  {
    v6 = 0;
  }

  v7 = vbsl_s8(vdup_n_s16(v6), 0x2000000000000, 2);
  v12 = vuzp1_s8(v7, v7).u32[0];
  (**a2)(a2, &v12, 4);
  physx::writeFloatBuffer(a1 + 176, 4, a3, a2);
  physx::writeFloatBuffer(a1 + 192, 4, a3, a2);
  physx::writeFloatBuffer(a1 + 208, 4, a3, a2);
  physx::writeFloatBuffer(a1 + 224, 4, a3, a2);
  physx::writeDword(*(a1 + 240), a3, a2);
  physx::writeDword(*(a1 + 244), a3, a2);
  physx::writeDword(*(a1 + 248), a3, a2);
  physx::writeDword(*(a1 + 252), a3, a2);
  physx::writeDword(*(a1 + 256), a3, a2);
  v13 = 0;
  result = (**a2)(a2, &v13, 4);
  if (*(a1 + 256))
  {
    v9 = 0;
    v10 = 96;
    do
    {
      physx::writeFloatBuffer(*(a1 + 264) + v10 - 96, 4, a3, a2);
      physx::writeFloatBuffer(*(a1 + 264) + v10 - 80, 4, a3, a2);
      physx::writeFloatBuffer(*(a1 + 264) + v10 - 64, 4, a3, a2);
      physx::writeFloatBuffer(*(a1 + 264) + v10 - 48, 4, a3, a2);
      physx::writeFloatBuffer(*(a1 + 264) + v10 - 32, 4, a3, a2);
      physx::writeFloatBuffer(*(a1 + 264) + v10 - 16, 4, a3, a2);
      result = physx::writeFloatBuffer(*(a1 + 264) + v10, 4, a3, a2);
      ++v9;
      v10 += 112;
    }

    while (v9 < *(a1 + 256));
  }

  return result;
}

void physx::SubSortSAH::sort4(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v6 = v3;
  v8 = v7;
  v186 = *MEMORY[0x1E69E9840];
  v9 = *v4;
  v157 = v5 + 1;
  if (*v4 <= (v5 + 1))
  {
    v9 = v5 + 1;
  }

  if (!v5)
  {
    v9 = 1;
  }

  v158 = v4;
  *v4 = v9;
  v10 = xmmword_1E31177C0;
  v176 = xmmword_1E31177C0;
  v168 = v1;
  v155 = v2;
  if (v2 <= 3)
  {
    if (v2 != 3)
    {
      v114 = v2 + 1;
      v115 = &v176 + v2;
      do
      {
        *v115++ = v2;
        v109 = v114++ == 3;
      }

      while (!v109);
    }
  }

  else
  {
    v11 = 0;
    v173 = 1;
    v175 = 0x40000000001;
    v174 = v171;
    *v171 = v2 << 32;
    v12 = v171;
    v13 = 1;
    v156 = v3;
LABEL_7:
    v14 = 0;
    v15 = -1;
    v10.n128_u32[0] = -8388609;
    do
    {
      v16 = &v12[8 * v14];
      v17 = v16[1];
      if (v17 != 1)
      {
        v18 = *(v1 + 16);
        v19 = *v16;
        v20 = (v18 + 32 * *(v8 + 4 * v19));
        v21 = *v20;
        v22 = v20[1];
        if (v17)
        {
          v23 = v17 - 1;
          v24 = v19 + 1;
          do
          {
            v25 = (v18 + 32 * *(v8 + 4 * v24));
            v21 = vminq_f32(v21, *v25);
            v22 = vmaxq_f32(v22, v25[1]);
            ++v24;
            --v23;
          }

          while (v23);
        }

        v26 = vsubq_f32(v22, v21);
        v27 = vrev64_s32(*&vextq_s8(v26, v26, 8uLL));
        *v28.f32 = vext_s8(v27, *v26.f32, 4uLL);
        *&v28.u32[2] = vext_s8(*v26.f32, v27, 4uLL);
        v29 = vmulq_f32(v26, v28);
        v29.i64[0] = vpaddq_f32(v29, v29).u64[0];
        v30 = v17 * vpadd_f32(*v29.f32, *v29.f32).f32[0];
        if (v30 > v10.n128_f32[0])
        {
          v15 = v14;
          v10.n128_f32[0] = v30;
        }
      }

      ++v14;
    }

    while (v14 != v13);
    for (i = v15; ; i = 0xFFFFFFFFLL)
    {
      v32 = &v12[8 * i];
      v34 = *v32;
      v33 = v32[1];
      if (v33 >= 2)
      {
        if (v33 == 2)
        {
          v35 = 1;
        }

        else
        {
          v160 = i;
          v161 = v11;
          v36 = 0;
          v159 = *v32;
          v37 = (v8 + 4 * v34);
          v38 = v33 <= 3 ? -2 : -4;
          v39 = v33 <= 3 ? 1 : 2;
          v40 = v33 - v39;
          v179 = *(v1 + 64);
          v180 = *(v1 + 80);
          v177 = *(v1 + 40);
          v41 = v33 >> 1;
          v42 = v33 - 2;
          v43 = 4 * v33;
          v178 = *(v1 + 56);
          v44 = v33 - 1;
          v45 = v33 - v39 - v39;
          v46 = (v33 + v38 + 1);
          v162 = (v33 - v39);
          v47 = -(v33 >> 1);
          v167 = v33 >> 1;
          v166 = v42;
          v164 = v45;
          v165 = v33 - 1;
          v163 = v46;
          do
          {
            v48 = v177.i64[v36];
            if (*(v1 + 96) == v33)
            {
              v49 = 0;
              v50 = *(v1 + 8);
              do
              {
                v50[v49 / 4] = *(v48 + v49);
                v49 += 4;
              }

              while (v43 != v49);
            }

            else
            {
              v51 = 0;
              v52 = *(&v179 + v36);
              v53 = *(v1 + 88);
              do
              {
                *(v53 + v51) = *(v52 + 4 * v37[v51 / 4]);
                v51 += 4;
              }

              while (v43 != v51);
              v54 = v33;
              physx::shdfnd::sort<unsigned int,physx::shdfnd::Less<unsigned int>,physx::shdfnd::ReflectionAllocator<unsigned int>>(v53, v33, &v170, &v169, 32);
              v55 = 0;
              v1 = v168;
              v56 = *(v168 + 88);
              v50 = *(v168 + 8);
              do
              {
                v50[v55 / 4] = *(v48 + 4 * *(v56 + v55));
                v55 += 4;
              }

              while (v43 != v55);
              v33 = v54;
              v41 = v167;
              v42 = v166;
              v45 = v164;
              v44 = v165;
              v46 = v163;
            }

            v57 = *(v1 + 16);
            v58 = (v57 + 32 * *v50);
            v59 = *v58;
            v60 = v58[1];
            if (v33 >= 4)
            {
              v61 = (v57 + 32 * v50[1]);
              v59 = vminq_f32(v59, *v61);
              v60 = vmaxq_f32(v60, v61[1]);
            }

            if (v40 >= v39)
            {
              v62 = *(v1 + 24);
              v63 = &v50[v39];
              v64 = v46;
              do
              {
                v65 = *v63++;
                v66 = (v57 + 32 * v65);
                v59 = vminq_f32(v59, *v66);
                v60 = vmaxq_f32(v60, v66[1]);
                v67 = vsubq_f32(v60, v59);
                v68 = vrev64_s32(*&vextq_s8(v67, v67, 8uLL));
                *v69.f32 = vext_s8(v68, *v67.f32, 4uLL);
                *&v69.u32[2] = vext_s8(*v67.f32, v68, 4uLL);
                v70 = vmulq_f32(v67, v69);
                v70.i64[0] = vpaddq_f32(v70, v70).u64[0];
                *v62++ = vpadd_f32(*v70.f32, *v70.f32).u32[0];
                --v64;
              }

              while (v64);
            }

            v71 = (v57 + 32 * v50[v44]);
            v10 = *v71;
            v72 = *(v71 + 1);
            v73 = v42;
            if (v42 > v40)
            {
              do
              {
                v74 = (v57 + 32 * v50[v73]);
                v10 = vminq_f32(v10, *v74);
                v72 = vmaxq_f32(v72, v74[1]);
                --v73;
              }

              while (v73 > v40);
            }

            if (v40 >= v39)
            {
              v75 = *(v1 + 32);
              v76 = &v50[v162];
              v77 = v46;
              do
              {
                v78 = *v76--;
                v79 = (v57 + 32 * v78);
                v10 = vminq_f32(v10, *v79);
                v72 = vmaxq_f32(v72, v79[1]);
                v80 = vsubq_f32(v72, v10);
                v81 = vrev64_s32(*&vextq_s8(v80, v80, 8uLL));
                *v82.f32 = vext_s8(v81, *v80.f32, 4uLL);
                *&v82.u32[2] = vext_s8(*v80.f32, v81, 4uLL);
                v83 = vmulq_f32(v80, v82);
                v83.i64[0] = vpaddq_f32(v83, v83).u64[0];
                *v75++ = vpadd_f32(*v83.f32, *v83.f32).u32[0];
                --v77;
              }

              while (v77);
            }

            v84 = 0;
            v85 = 3.4028e38;
            if ((v45 & 0x80000000) == 0)
            {
              v86 = *(v1 + 24);
              v87 = v39;
              v88 = v40;
              v89 = v45;
              v90 = v46;
              do
              {
                v91 = *(*(v1 + 32) + 4 * v89) * v88;
                v92 = v91 + (v87 * *v86);
                if (v92 < v85)
                {
                  goto LABEL_49;
                }

                if (v92 <= v85)
                {
                  v93 = v47 + v87;
                  if ((v47 + v87) < 0)
                  {
                    v93 = -v93;
                  }

                  v94 = v84 - v41;
                  if ((v84 - v41) < 0)
                  {
                    v94 = v41 - v84;
                  }

                  if (v93 < v94)
                  {
LABEL_49:
                    v84 = v87;
                    v85 = v91 + (v87 * *v86);
                  }
                }

                ++v86;
                --v89;
                --v88;
                ++v87;
                --v90;
              }

              while (v90);
            }

            *(&v183 + v36 + 1) = v85;
            v181[v36++] = v84;
          }

          while (v36 != 3);
          v10.n128_f32[0] = v184;
          if (*(&v183 + 1) > v184 || *(&v183 + 1) > v185)
          {
            v97 = &v180;
            v98 = &v178;
            v96 = &v183;
            v6 = v156;
            i = v160;
            if (v184 <= v185)
            {
              v97 = &v179 + 1;
              v98 = &v177.u64[1];
              v96 = &v182;
            }
          }

          else
          {
            v96 = v181;
            v97 = &v179;
            v98 = &v177;
            v6 = v156;
            i = v160;
          }

          v99 = v98->i64[0];
          if (*(v1 + 96) == v33)
          {
            v100 = v33;
            do
            {
              v101 = *v99++;
              *v37++ = v101;
              --v100;
            }

            while (v100);
          }

          else
          {
            v102 = 0;
            v103 = *v97;
            v104 = *(v1 + 88);
            do
            {
              *(v104 + 4 * v102) = *(v103 + 4 * v37[v102]);
              ++v102;
            }

            while (v33 != v102);
            v105 = v33;
            physx::shdfnd::sort<unsigned int,physx::shdfnd::Less<unsigned int>,physx::shdfnd::ReflectionAllocator<unsigned int>>(v104, v33, &v170, &v169, 32);
            LODWORD(v33) = v105;
            v106 = *(v168 + 88);
            v107 = v105;
            do
            {
              v108 = *v106++;
              *v37++ = v99[v108];
              --v107;
            }

            while (v107);
          }

          v109 = !*v96 && v33 == 3;
          v35 = v109 ? 1 : *v96;
          v13 = v175;
          v11 = v161;
          LODWORD(v34) = v159;
        }
      }

      else
      {
        v35 = 0;
      }

      *&v179 = __PAIR64__(v35, v34);
      if ((HIDWORD(v175) & 0x7FFFFFFFu) <= v13)
      {
        v111 = v33;
        physx::shdfnd::Array<physx::Interval,physx::shdfnd::InlineAllocator<8192u,physx::shdfnd::ReflectionAllocator<physx::Interval>>>::growAndPushBack(v171, &v179);
        LODWORD(v33) = v111;
        v110 = v175;
      }

      else
      {
        *&v174[8 * v13] = v179;
        v110 = v175 + 1;
        LODWORD(v175) = v175 + 1;
      }

      v112 = v35 + v34;
      LODWORD(v179) = v112;
      DWORD1(v179) = v33 - v35;
      if ((HIDWORD(v175) & 0x7FFFFFFFu) <= v110)
      {
        physx::shdfnd::Array<physx::Interval,physx::shdfnd::InlineAllocator<8192u,physx::shdfnd::ReflectionAllocator<physx::Interval>>>::growAndPushBack(v171, &v179);
        v113 = v175 - 1;
      }

      else
      {
        *&v174[8 * v110] = v179;
        v113 = v175;
      }

      v1 = v168;
      LODWORD(v175) = v113;
      *&v174[8 * i] = *&v174[8 * v113];
      *(&v176 + v11++) = v112;
      if (v11 == 3)
      {
        break;
      }

      v13 = v175;
      v12 = v174;
      if (v175)
      {
        goto LABEL_7;
      }
    }

    if ((v175 & 0x8000000000000000) == 0 && (v175 & 0x7FFFFFFF00000000) != 0 && v174 != v171 && v174)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(v10);
    }
  }

  physx::shdfnd::sort<unsigned int,physx::shdfnd::Less<unsigned int>,physx::shdfnd::ReflectionAllocator<unsigned int>>(&v176, 3, v171, &v179, 32);
  HIDWORD(v176) = v155;
  LODWORD(v179) = 0;
  v116 = v176;
  v177.i32[0] = v176;
  *(&v179 + 4) = v176;
  HIDWORD(v179) = DWORD2(v176);
  for (j = 1; j != 4; ++j)
  {
    v118 = *(&v176 + j * 4);
    v177.i32[j] = v118 - v116;
    v116 = v118;
  }

  v119 = 0;
  v120 = v168;
  v121.i64[0] = 0x1000000010;
  v121.i64[1] = 0x1000000010;
  v122 = (*&physx::stopAtTrisPerPage[4 * *(v168 + 100)] >= v155) & ~vmaxv_u16(vmovn_s32(vcgtq_u32(v177, v121)));
  do
  {
    *v171 = 2122317823;
    v123 = v177.u32[v119];
    if (v123)
    {
      v124 = *(v120 + 16);
      v125 = *(&v179 + v119);
      v126 = (v124 + 32 * *(v8 + 4 * v125));
      v127 = *v126;
      v128 = v126[1];
      v129 = vsubq_f32(v128, *v126);
      v130 = vrev64_s32(*&vextq_s8(v129, v129, 8uLL));
      *v131.f32 = vext_s8(v130, *v129.f32, 4uLL);
      *&v131.u32[2] = vext_s8(*v129.f32, v130, 4uLL);
      v132 = vmulq_f32(v129, v131);
      v132.i64[0] = vpaddq_f32(v132, v132).u64[0];
      LODWORD(v133) = vpadd_f32(*v132.f32, *v132.f32).u32[0];
      if (v123 == 1)
      {
        v134 = v133;
      }

      else
      {
        v138 = v123 - 1;
        v139 = v125 + 1;
        v134 = v133;
        do
        {
          v140 = (v124 + 32 * *(v8 + 4 * v139));
          v141 = v140[1];
          v142 = vsubq_f32(v141, *v140);
          v143 = vrev64_s32(*&vextq_s8(v142, v142, 8uLL));
          *v144.f32 = vext_s8(v143, *v142.f32, 4uLL);
          *&v144.u32[2] = vext_s8(*v142.f32, v143, 4uLL);
          v145 = vmulq_f32(v142, v144);
          v145.i64[0] = vpaddq_f32(v145, v145).u64[0];
          v146 = vpadd_f32(*v145.f32, *v145.f32).f32[0];
          if (v134 >= v146)
          {
            v134 = v146;
          }

          if (v133 <= v146)
          {
            v133 = v146;
          }

          v127 = vminq_f32(v127, *v140);
          v128 = vmaxq_f32(v128, v141);
          ++v139;
          --v138;
        }

        while (v138);
      }

      v147 = v133 / v134;
      v148 = v123 == 3;
      v149 = v147 < 40.0;
      if (v147 >= 40.0)
      {
        v148 = 0;
      }

      v127.i32[3] = v128.i32[0];
      *v171 = v127;
      v137 = v128.i32[1];
      *&v171[16] = vextq_s8(v128, v128, 4uLL).u64[0];
      v136 = v128.i32[2];
      v122 &= v149;
      if (v123 < 3 || v148 || (v122 & 1) != 0 || v123 <= physx::stopAtTrisPerLeaf[*(v120 + 100)])
      {
        v135 = v125 + ((v8 - *v120) >> 2);
      }

      else
      {
        LODWORD(v123) = 0;
        v122 = 0;
        v135 = -1;
      }
    }

    else
    {
      v127 = xmmword_1E3113BA0;
      *&v171[4] = xmmword_1E31177D0;
      *&v171[20] = -25165825;
      v135 = -1;
      v136 = -25165825;
      v137 = -25165825;
      LODWORD(v123) = -1;
    }

    v172 = __PAIR64__(v123, v135);
    v150 = *(v6 + 8);
    if ((*(v6 + 12) & 0x7FFFFFFFu) <= v150)
    {
      physx::shdfnd::Array<physx::RTreeNodeNQ,physx::shdfnd::ReflectionAllocator<physx::RTreeNodeNQ>>::growAndPushBack(v6, v171);
      v120 = v168;
    }

    else
    {
      v151 = *v6 + 32 * v150;
      *v151 = v127;
      *(v151 + 16) = v137;
      *(v151 + 20) = v136;
      *(v151 + 24) = v172;
      ++*(v6 + 8);
    }

    ++v119;
  }

  while (v119 != 4);
  if ((v122 & 1) == 0)
  {
    v152 = 0;
    v153 = *(v6 + 8) - 4;
    do
    {
      v154 = *v6 + 32 * v153;
      if (!*(v154 + 28))
      {
        *(v154 + 24) = *(v6 + 8);
        physx::SubSortSAH::sort4(v168, v8 + 4 * *(&v179 + v152 * 4), v177.u32[v152], v6, v158, v157);
      }

      ++v152;
      ++v153;
    }

    while (v152 != 4);
  }
}

uint64_t physx::SubSortQuick::sort4(uint64_t a1, unsigned int *a2, unsigned int a3, uint64_t a4, int *a5, float32x4_t *a6, int a7)
{
  v72 = *MEMORY[0x1E69E9840];
  v11 = *a5;
  if (*a5 <= (a7 + 1))
  {
    v11 = a7 + 1;
  }

  if (!a7)
  {
    v11 = 1;
  }

  *a5 = v11;
  if (a3 >> 2 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = a3 >> 2;
  }

  v13 = *(a1 + 16);
  v14 = (v13 + 32 * *a2);
  v16 = *v14;
  v15 = v14[1];
  if (a3 >= 2)
  {
    v17 = a3 - 1;
    v18 = a2 + 1;
    do
    {
      v19 = *v18++;
      v20 = (v13 + 32 * v19);
      v15 = vmaxq_f32(v15, v20[1]);
      v16 = vminq_f32(v16, *v20);
      --v17;
    }

    while (v17);
  }

  v21 = vsubq_f32(v15, v16);
  v70 = v21.i64[0];
  v71 = v21.f32[2];
  if (v21.f32[1] > v21.f32[2])
  {
    v22 = 1;
  }

  else
  {
    v22 = 2;
  }

  if (v21.f32[0] > v21.f32[2] && v21.f32[0] > v21.f32[1])
  {
    v22 = 0;
  }

  v65 = v22;
  v64 = *(a1 + 24);
  v67 = *(a4 + 8);
  physx::shdfnd::Array<physx::RTreeNodeNQ,physx::shdfnd::ReflectionAllocator<physx::RTreeNodeNQ>>::resizeUninitialized(a4, v67 + 4);
  result = a1;
  v25 = 0;
  v26 = 0;
  v27 = 1;
  v28 = vdup_n_s32(0xFE7FFFFF);
  do
  {
    v29 = v25 * v12;
    if (v25 == 3)
    {
      v30 = (-3 * v12 + a3) & ~((-3 * v12 + a3) >> 31);
    }

    else
    {
      if (v29 <= a3 - 1)
      {
        v31 = v12;
        v32 = a3 - 1;
        v33 = v25 * v12;
        v34 = v64 + 4 * v65;
        while (1)
        {
          v35 = (v33 + v32) >> 1;
          v36 = a2[v35];
          v37 = v32;
          v38 = a2[v32];
          a2[v32] = v36;
          a2[v35] = v38;
          v39 = v33;
          if (v33 < v32)
          {
            v40 = *(v34 + 12 * v36);
            v41 = v32 - v33;
            v42 = &a2[v33];
            v39 = v33;
            do
            {
              if (*(v34 + 12 * *v42) <= v40)
              {
                v43 = a2[v39];
                a2[v39] = *v42;
                *v42 = v43;
                ++v39;
              }

              ++v42;
              --v41;
            }

            while (v41);
          }

          v44 = a2[v37];
          a2[v37] = a2[v39];
          a2[v39] = v44;
          v45 = v39 - v33 + 1;
          if (v45 == v31)
          {
            break;
          }

          v46 = v31 >= v45;
          if (v31 >= v45)
          {
            v47 = v39 - v33 + 1;
          }

          else
          {
            v47 = 0;
          }

          if (v31 >= v45)
          {
            v32 = v37;
          }

          else
          {
            v32 = v39 - 1;
          }

          if (v46)
          {
            v33 = v39 + 1;
          }

          v31 -= v47;
        }

        *(&v70 + v65) = physx::SubSortQuick::reductionFactors[v25] * *(&v70 + v65);
        if (*(&v70 + 1) > v71)
        {
          v48 = 1;
        }

        else
        {
          v48 = 2;
        }

        if (*&v70 > v71 && *&v70 > *(&v70 + 1))
        {
          v48 = 0;
        }

        v65 = v48;
      }

      v30 = v12;
    }

    v50 = (v67 + v25);
    v51 = *a4 + 32 * v50;
    v26 += v30;
    if (v30 <= *(result + 40))
    {
      if (v30 && v26 <= a3)
      {
        v52 = *(result + 16);
        *(v51 + 24) = ((a2 - *(result + 8)) >> 2) + v29;
        *(v51 + 28) = v30;
        v53 = (v52 + 32 * a2[v29]);
        v68 = *v53;
        v69 = v53[1];
        if (v30 >= 2)
        {
          v55 = *v53;
          v54 = v53[1];
          v56 = v30 - 1;
          v57 = v27;
          do
          {
            v58 = (v52 + 32 * a2[v57]);
            v55 = vminq_f32(v55, *v58);
            v54 = vmaxq_f32(v54, v58[1]);
            ++v57;
            --v56;
          }

          while (v56);
          v68 = v55;
          v69 = v54;
        }

        if (v25)
        {
LABEL_60:
          v59 = v68;
          v60 = v69;
          v61 = vminq_f32(*a6, v68);
          v62 = vmaxq_f32(a6[1], v69);
          goto LABEL_63;
        }
      }

      else
      {
        v68 = 0u;
        v69 = 0u;
        *v51 = xmmword_1E3113BA0;
        *(v51 + 16) = v28;
        *(v51 + 24) = -1;
        if (v25)
        {
          goto LABEL_60;
        }
      }
    }

    else
    {
      *(v51 + 24) = *(a4 + 8);
      physx::SubSortQuick::sort4();
      result = a1;
      if (v25)
      {
        goto LABEL_60;
      }
    }

    v61 = v68;
    v62 = v69;
    v59 = v68;
    v60 = v69;
LABEL_63:
    *a6 = v61;
    a6[1] = v62;
    v63 = *a4 + 32 * v50;
    v59.i32[3] = v60.i32[0];
    *v63 = v59;
    *(v63 + 16) = vextq_s8(v60, v60, 4uLL).u64[0];
    ++v25;
    v27 += v12;
  }

  while (v25 != 4);
  return result;
}

uint64_t physx::shdfnd::Array<physx::RTreeNodeNQ,physx::shdfnd::ReflectionAllocator<physx::RTreeNodeNQ>>::recreate(uint64_t a1, unsigned int a2)
{
  v4 = 32 * a2;
  v5 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v6 = "static const char *physx::shdfnd::ReflectionAllocator<physx::RTreeNodeNQ>::getName() [T = physx::RTreeNodeNQ]";
  }

  else
  {
    v6 = "<allocation names disabled>";
  }

  result = (*(*(v5 + 24) + 16))(v5 + 24, v4, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  v8 = result;
  v9 = *(a1 + 8);
  v10 = *a1;
  if (v9)
  {
    v11 = result + 32 * v9;
    v12 = result;
    do
    {
      *v12 = *v10;
      v12[1] = v10[1];
      v12[2] = v10[2];
      v12[3] = v10[3];
      v12 += 4;
      v10 += 4;
    }

    while (v12 < v11);
    v10 = *a1;
  }

  if ((*(a1 + 12) & 0x80000000) == 0 && v10)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *a1 = v8;
  *(a1 + 12) = a2;
  return result;
}

char *physx::shdfnd::sort<unsigned int,physx::SortBoundsPredicate,physx::shdfnd::ReflectionAllocator<unsigned int>>(char *result, int a2, unsigned int *a3)
{
  v56 = *MEMORY[0x1E69E9840];
  v52 = 0x2000000000;
  v53 = v55;
  v54 = 0;
  v3 = a2 - 1;
  if (a2 - 1 >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = result + 4;
    v8 = v55;
    memset(v55, 0, sizeof(v55));
    while (1)
    {
      if (v3 > v6)
      {
        if ((v3 - v6) < 5)
        {
LABEL_29:
          v38 = *(a3 + 1);
          v39 = v6;
          v40 = v6 + 1;
          do
          {
            v41 = v39++;
            v42 = v38 + 4 * *a3;
            v43 = v40;
            v44 = v41;
            v45 = v41;
            do
            {
              v46 = (v42 + 32 * *&v7[4 * v44]);
              v47 = *v46 + v46[4];
              v48 = (v42 + 32 * *&v5[4 * v45]);
              if (v47 < (*v48 + v48[4]))
              {
                v45 = v43;
              }

              ++v44;
              ++v43;
            }

            while (v44 < v3);
            if (v45 != v41)
            {
              v49 = *&v5[4 * v45];
              *&v5[4 * v45] = *&v5[4 * v41];
              *&v5[4 * v41] = v49;
            }

            ++v40;
          }

          while (v39 != v3);
        }

        else
        {
          while (1)
          {
            v9 = (v6 + v3 + ((v6 + v3) >> 31)) >> 1;
            v10 = *(a3 + 1);
            v11 = *&v5[4 * ((v6 + v3) / 2)];
            v12 = *a3;
            v13 = *&v5[4 * v6];
            v14 = *(v10 + 32 * v13 + 4 * v12) + *(v10 + 32 * v13 + 4 * v12 + 16);
            if ((*(v10 + 32 * v11 + 4 * v12) + *(v10 + 32 * v11 + 4 * v12 + 16)) >= v14)
            {
              v15 = *&v5[4 * v6];
            }

            else
            {
              *&v5[4 * v6] = v11;
              *&v5[4 * v9] = v13;
              v12 = *a3;
              v15 = *&v5[4 * v6];
              v14 = *(v10 + 32 * v15 + 4 * v12) + *(v10 + 32 * v15 + 4 * v12 + 16);
              v11 = v13;
              LODWORD(v13) = *&v5[4 * v6];
            }

            v16 = &v5[4 * v3];
            v17 = *v16;
            v18 = *(v10 + 32 * v17 + 4 * v12) + *(v10 + 32 * v17 + 4 * v12 + 16);
            if (v18 >= v14)
            {
              LODWORD(v13) = *v16;
            }

            else
            {
              *&v5[4 * v6] = v17;
              *v16 = v13;
              v12 = *a3;
              v19 = (v10 + 32 * v15 + 4 * v12);
              v20 = *v19;
              v21 = v19[4];
              v11 = *&v5[4 * v9];
              v18 = v20 + v21;
            }

            if (v18 < (*(v10 + 32 * v11 + 4 * v12) + *(v10 + 32 * v11 + 4 * v12 + 16)))
            {
              *&v5[4 * v9] = v13;
              *v16 = v11;
              v11 = *&v5[4 * v9];
            }

            *&v5[4 * v9] = *(v16 - 1);
            *(v16 - 1) = v11;
            v22 = v3 - 1;
            v23 = v6;
            LODWORD(v24) = v3 - 1;
            while (1)
            {
              v25 = 0;
              v26 = v10 + 4 * *a3;
              v27 = *(v26 + 32 * v11) + *(v26 + 32 * v11 + 16);
              v28 = v23;
              v29 = &v5[4 * v23];
              do
              {
                v31 = *(v29 + 1);
                v29 += 4;
                v30 = v31;
                ++v25;
              }

              while ((*(v26 + 32 * v31) + *(v26 + 32 * v31 + 16)) < v27);
              v24 = v24;
              do
              {
                v32 = &v5[4 * v24--];
                v33 = *(v32 - 1);
              }

              while (v27 < (*(v26 + 32 * v33) + *(v26 + 32 * v33 + 16)));
              if (v28 + v25 >= v24)
              {
                break;
              }

              *v29 = v33;
              *&v5[4 * v24] = v30;
              v11 = *&v5[4 * v22];
              v23 = v25 + v28;
            }

            *v29 = v11;
            *&v5[4 * v22] = v30;
            v34 = v52;
            v35 = HIDWORD(v52) - 1;
            if (v28 - v6 + v25 >= v3 - v28 - v25)
            {
              if (v52 >= v35)
              {
                result = physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<unsigned int>>::grow(v51);
                v34 = v52;
                v8 = v53;
              }

              LODWORD(v52) = v34 + 1;
              *(v8 + v34) = v25 + v28 + 1;
              v37 = v52;
              LODWORD(v52) = v52 + 1;
              *(v8 + v37) = v3;
              v3 = v28 + v25 - 1;
            }

            else
            {
              if (v52 >= v35)
              {
                result = physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<unsigned int>>::grow(v51);
                v34 = v52;
                v8 = v53;
              }

              LODWORD(v52) = v34 + 1;
              *(v8 + v34) = v6;
              v36 = v52;
              LODWORD(v52) = v52 + 1;
              *(v8 + v36) = v28 - 1 + v25;
              v6 = v28 + v25 + 1;
            }

            if (v3 <= v6)
            {
              break;
            }

            if ((v3 - v6) <= 4)
            {
              goto LABEL_29;
            }
          }
        }
      }

      v50 = v52;
      if (!v52)
      {
        break;
      }

      LODWORD(v52) = v52 - 1;
      v3 = *(v8 + (v50 - 1));
      LODWORD(v52) = v50 - 2;
      v6 = *(v8 + (v50 - 2));
    }

    if (v54)
    {
      if (v8)
      {
        return (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      }
    }
  }

  return result;
}

uint64_t physx::shdfnd::Array<physx::Interval,physx::shdfnd::InlineAllocator<8192u,physx::shdfnd::ReflectionAllocator<physx::Interval>>>::growAndPushBack(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 8212);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  if ((8 * v5) <= 0x2000 && (*(result + 0x2000) & 1) == 0)
  {
    *(result + 0x2000) = 1;
    v6 = result;
    goto LABEL_14;
  }

  if (8 * v5)
  {
    v7 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Interval>::getName() [T = physx::Interval]";
    }

    else
    {
      v8 = "<allocation names disabled>";
    }

    result = (*(*(v7 + 24) + 16))(v7 + 24, (8 * v5), v8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
LABEL_13:
    v6 = 0;
  }

LABEL_14:
  v9 = *(v3 + 8208);
  if (v9)
  {
    v10 = &v6[v9];
    v11 = *(v3 + 8200);
    v12 = v6;
    do
    {
      v13 = *v11++;
      *v12++ = v13;
    }

    while (v12 < v10);
    v14 = *(v3 + 8208);
  }

  else
  {
    v14 = 0;
  }

  v6[v14] = *a2;
  if ((*(v3 + 8212) & 0x80000000) == 0)
  {
    v15 = *(v3 + 8200);
    if (v15 == v3)
    {
      *(v3 + 0x2000) = 0;
    }

    else if (v15)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  *(v3 + 8200) = v6;
  *(v3 + 8212) = v5;
  ++*(v3 + 8208);
  return result;
}

uint64_t physx::shdfnd::Array<physx::RTreeNodeNQ,physx::shdfnd::ReflectionAllocator<physx::RTreeNodeNQ>>::growAndPushBack(uint64_t result, void *a2)
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
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::RTreeNodeNQ>::getName() [T = physx::RTreeNodeNQ]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    result = (*(*(v6 + 24) + 16))(v6 + 24, 32 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v3 + 8);
  if (v9)
  {
    v10 = &v8[4 * v9];
    v11 = *v3;
    v12 = v8;
    do
    {
      *v12 = *v11;
      v12[1] = v11[1];
      v12[2] = v11[2];
      v12[3] = v11[3];
      v12 += 4;
      v11 += 4;
    }

    while (v12 < v10);
    v13 = *(v3 + 8);
  }

  else
  {
    v13 = 0;
  }

  v14 = &v8[4 * v13];
  *v14 = *a2;
  v14[1] = a2[1];
  v14[2] = a2[2];
  v14[3] = a2[3];
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v8;
  ++*(v3 + 8);
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxVec3,physx::shdfnd::ReflectionAllocator<physx::PxVec3>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    result = physx::shdfnd::ReflectionAllocator<physx::PxVec3>::allocate(result, 12 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v4 = result;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v3 + 8);
  v6 = *v3;
  if (v5)
  {
    v7 = v4 + 12 * v5;
    v8 = *v3;
    v9 = v4;
    do
    {
      *v9 = *v8;
      *(v9 + 8) = *(v8 + 8);
      v9 += 12;
      v8 += 12;
    }

    while (v9 < v7);
  }

  if ((*(v3 + 12) & 0x80000000) == 0 && v6)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *v3 = v4;
  *(v3 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::RTreeNodeNQ,physx::shdfnd::ReflectionAllocator<physx::RTreeNodeNQ>>::resizeUninitialized(uint64_t result, unsigned int a2)
{
  v3 = result;
  if ((*(result + 12) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<physx::RTreeNodeNQ,physx::shdfnd::ReflectionAllocator<physx::RTreeNodeNQ>>::recreate(result, a2);
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Gu::RTreeNodeQ,physx::shdfnd::ReflectionAllocator<physx::Gu::RTreeNodeQ>>::recreate(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = 28 * a2;
  v5 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance, a2))
  {
    v6 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Gu::RTreeNodeQ>::getName() [T = physx::Gu::RTreeNodeQ]";
  }

  else
  {
    v6 = "<allocation names disabled>";
  }

  result = (*(*(v5 + 24) + 16))(v5 + 24, v4, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  v8 = result;
  v9 = *(a1 + 8);
  v10 = *a1;
  if (v9)
  {
    v11 = result + 28 * v9;
    v12 = result;
    do
    {
      v13 = *v10;
      *(v12 + 12) = *(v10 + 12);
      *v12 = v13;
      v12 = (v12 + 28);
      v10 = (v10 + 28);
    }

    while (v12 < v11);
    v10 = *a1;
  }

  if ((*(a1 + 12) & 0x80000000) == 0 && v10)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *a1 = v8;
  *(a1 + 12) = v2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Gu::RTreeNodeQ,physx::shdfnd::ReflectionAllocator<physx::Gu::RTreeNodeQ>>::growAndPushBack(uint64_t result, __int128 *a2)
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
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Gu::RTreeNodeQ>::getName() [T = physx::Gu::RTreeNodeQ]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    result = (*(*(v6 + 24) + 16))(v6 + 24, 28 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v3 + 8);
  if (v9)
  {
    v10 = v8 + 28 * v9;
    v11 = *v3;
    v12 = v8;
    do
    {
      v13 = *v11;
      *(v12 + 12) = *(v11 + 12);
      *v12 = v13;
      v12 = (v12 + 28);
      v11 = (v11 + 28);
    }

    while (v12 < v10);
    v14 = *(v3 + 8);
  }

  else
  {
    v14 = 0;
  }

  v15 = (v8 + 28 * v14);
  v16 = *a2;
  *(v15 + 12) = *(a2 + 12);
  *v15 = v16;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v8;
  ++*(v3 + 8);
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::findAdjacent(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5, unsigned int a6, float *a7, uint64_t a8, int a9)
{
  if (a5 >= a6)
  {
    v9 = a6;
  }

  else
  {
    v9 = a5;
  }

  if (a5 <= a6)
  {
    v10 = a6;
  }

  else
  {
    v10 = a5;
  }

  v11 = 3 * a4;
  if ((3 * a4) < 2)
  {
    v15 = 0;
  }

  else
  {
    v12 = 0;
    v13 = 3 * a4;
    do
    {
      v14 = (a8 + 12 * ((v13 + v12) >> 1));
      if (*v14 < v9 || *v14 == v9 && v14[1] <= v10)
      {
        v12 = (v13 + v12) >> 1;
      }

      else
      {
        v13 = (v13 + v12) >> 1;
      }
    }

    while (v13 - v12 > 1);
    v15 = v12;
  }

  v16 = (a8 + 12 * v15 - 12);
  while (v15 && *v16 == v9)
  {
    v17 = v16[1];
    v16 -= 3;
    --v15;
    if (v17 != v10)
    {
      LODWORD(v15) = v15 + 1;
      break;
    }
  }

  v18 = v15 - v11;
  if (v15 >= v11)
  {
    return 0xFFFFFFFFLL;
  }

  v19 = *a7;
  v20 = a7[1];
  v21 = a7[2];
  v22 = (a8 + 12 * v15 + 8);
  v23 = 0xFFFFFFFFLL;
  v24 = -3.4028e38;
  while (*(v22 - 2) == v9 && *(v22 - 1) == v10)
  {
    v25 = *v22;
    if (*v22 != a9)
    {
      v26 = (a1 + 12 * (*(a3 + 12 * v25) - (a6 + a5) + *(a3 + 12 * v25 + 4) + *(a3 + 12 * v25 + 8)));
      if ((a7[3] + (((v20 * v26[1]) + (*v26 * v19)) + (v26[2] * v21))) >= 0.0)
      {
        return v25 | 0x80000000;
      }

      if ((((v20 * *(a2 + 12 * v25 + 4)) + (v19 * *(a2 + 12 * v25))) + (v21 * *(a2 + 12 * v25 + 8))) > v24)
      {
        v24 = ((v20 * *(a2 + 12 * v25 + 4)) + (v19 * *(a2 + 12 * v25))) + (v21 * *(a2 + 12 * v25 + 8));
        v23 = *v22;
      }
    }

    v22 += 3;
    if (__CFADD__(v18++, 1))
    {
      return v23;
    }
  }

  return v23;
}

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::EdgeTriLookup>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  if (v2)
  {
    v3 = 4 * v2;
    v4 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v5 = "static const char *physx::shdfnd::ReflectionAllocator<physx::EdgeTriLookup>::getName() [T = physx::EdgeTriLookup]";
    }

    else
    {
      v5 = "<allocation names disabled>";
    }

    v6 = (*(*(v4 + 24) + 16))(v4 + 24, v3, v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  }

  else
  {
    v6 = 0;
  }

  result = memcpy(v6, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v6;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxBounds3V,physx::shdfnd::ReflectionAllocator<physx::PxBounds3V>>::recreate(uint64_t a1, unsigned int a2)
{
  v4 = 32 * a2;
  v5 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v6 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxBounds3V>::getName() [T = physx::PxBounds3V]";
  }

  else
  {
    v6 = "<allocation names disabled>";
  }

  result = (*(*(v5 + 24) + 16))(v5 + 24, v4, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  v8 = result;
  v9 = *(a1 + 8);
  v10 = *a1;
  if (v9)
  {
    v11 = result + 32 * v9;
    v12 = result;
    do
    {
      v13 = *v10;
      v14 = v10[1];
      v10 += 2;
      *v12 = v13;
      v12[1] = v14;
      v12 += 2;
    }

    while (v12 < v11);
    v10 = *a1;
  }

  if ((*(a1 + 12) & 0x80000000) == 0 && v10)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *a1 = v8;
  *(a1 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxBounds3V,physx::shdfnd::ReflectionAllocator<physx::PxBounds3V>>::growAndPushBack(uint64_t result, _OWORD *a2)
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
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxBounds3V>::getName() [T = physx::PxBounds3V]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    result = (*(*(v6 + 24) + 16))(v6 + 24, 32 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v3 + 8);
  if (v9)
  {
    v10 = &v8[2 * v9];
    v11 = *v3;
    v12 = v8;
    do
    {
      v13 = *v11;
      v14 = v11[1];
      v11 += 2;
      *v12 = v13;
      v12[1] = v14;
      v12 += 2;
    }

    while (v12 < v10);
    v15 = *(v3 + 8);
  }

  else
  {
    v15 = 0;
  }

  v16 = &v8[2 * v15];
  v17 = a2[1];
  *v16 = *a2;
  v16[1] = v17;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v8;
  ++*(v3 + 8);
  *(v3 + 12) = v5;
  return result;
}

void physx::ConvexHullBuilder::~ConvexHullBuilder(physx::ConvexHullBuilder *this)
{
  if (*(this + 5))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 5) = 0;
  if (*(this + 6))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 6) = 0;
  if (*this)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *this = 0;
  if (*(this + 1))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 1) = 0;
  if (*(this + 2))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 2) = 0;
  if (*(this + 3))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 3) = 0;
  if (*(this + 4))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 4) = 0;
}

uint64_t physx::ConvexHullBuilder::calculateVertexMapTable(physx::ConvexHullBuilder *this, int a2, char a3)
{
  v28 = *MEMORY[0x1E69E9840];
  *(this + 4) = physx::shdfnd::ReflectionAllocator<unsigned char>::allocate(v27, 3 * *(*(this + 7) + 38), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexHullBuilder.cpp", 486);
  v6 = *(*(this + 7) + 38);
  bzero(v27, *(*(this + 7) + 38));
  if (a2)
  {
    v10 = 0;
    do
    {
      v11 = *(this + 1) + 20 * v10;
      v12 = *(v11 + 18);
      if (v12)
      {
        v13 = 0;
        do
        {
          v14 = *(*(this + 2) + *(v11 + 16) + v13);
          v15 = v27[v14];
          if (v15 <= 2)
          {
            v16 = *(this + 4);
            v27[v14] = v15 + 1;
            *(v16 + 3 * v14 + v15) = v10;
            v12 = *(v11 + 18);
          }

          ++v13;
        }

        while (v13 < v12);
      }

      ++v10;
    }

    while (v10 != a2);
    v6 = *(*(this + 7) + 38);
  }

  if (!v6)
  {
    return 1;
  }

  v17 = 0;
  v18 = v6;
  v19 = v27;
  do
  {
    v20 = *v19++;
    v17 |= v20 != 3;
    --v18;
  }

  while (v18);
  if ((v17 & 1) == 0)
  {
    return 1;
  }

  if (a3)
  {
    v21 = "ConvexHullBuilder: convex hull does not have vertex-to-face info! Some of the vertices have less than 3 neighbor polygons. The vertex is most likely inside a polygon or on an edge between 2 polygons, please remove those vertices.";
    v22 = 517;
  }

  else
  {
    v21 = "ConvexHullBuilder: convex hull does not have vertex-to-face info! Try to use different convex mesh cooking settings.";
    v22 = 515;
  }

  physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 32, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexHullBuilder.cpp", v22, v21, v7, v8, v9, v26);
  if (*(*(this + 7) + 38))
  {
    v24 = 0;
    v25 = 0;
    do
    {
      *(*(this + 4) + v24) = -1;
      *(*(this + 4) + v24 + 1) = -1;
      *(*(this + 4) + v24 + 2) = -1;
      ++v25;
      v24 += 3;
    }

    while (v25 < *(*(this + 7) + 38));
  }

  return 0;
}

uint64_t physx::ConvexHullBuilder::checkHullPolygons(float **this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v74 = *MEMORY[0x1E69E9840];
  v8 = *this;
  v9 = this[1];
  if (*this)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = this[7];
    v12 = *(v11 + 39);
    if (v12 >= 4)
    {
      v14 = *v8;
      v13 = v8[1];
      v15 = v8[2];
      v16 = *(v11 + 38);
      if (v16)
      {
        v17 = v8 + 1;
        v18 = 0x80000000800000;
        v19 = -3.4028e38;
        v20 = v16;
        v21 = v8[2];
        v22 = v8[1];
        v23 = *v8;
        do
        {
          v24 = *(v17 - 1);
          v25 = fabsf(v24);
          if (v25 > v19)
          {
            v19 = v25;
          }

          v26 = *v17;
          v17 = (v17 + 12);
          v27 = v26;
          v28 = vabs_f32(v26);
          v18 = vbsl_s8(vcgt_f32(v28, v18), v28, v18);
          if (v24 < v14)
          {
            v29 = v24;
          }

          else
          {
            v29 = v14;
          }

          if (v24 > v23)
          {
            v23 = v24;
          }

          else
          {
            v14 = v29;
          }

          if (v27.f32[0] < v13)
          {
            v30 = v27.f32[0];
          }

          else
          {
            v30 = v13;
          }

          if (v27.f32[0] > v22)
          {
            v22 = v27.f32[0];
          }

          else
          {
            v13 = v30;
          }

          if (v27.f32[1] < v15)
          {
            v31 = v27.f32[1];
          }

          else
          {
            v31 = v15;
          }

          if (v27.f32[1] > v21)
          {
            v21 = v27.f32[1];
          }

          else
          {
            v15 = v31;
          }

          --v20;
        }

        while (v20);
        v32 = v19 + 0.02;
        v33 = vadd_f32(v18, vdup_n_s32(0x3CA3D70Au));
        v34 = v16;
      }

      else
      {
        v34 = 0;
        v33 = 0x80000000800000;
        v32 = -3.4028e38;
        v23 = *v8;
        v22 = v8[1];
        v21 = v8[2];
      }

      v35 = 0;
      v36 = this[2];
      v57 = 0;
      v58 = v32;
      v59 = v33;
      v37 = vneg_f32(v33);
      v60 = v32;
      v61 = v37;
      v62 = v32;
      v63 = __PAIR64__(v37.u32[1], v33.u32[0]);
      v64 = v32;
      v73 = v37;
      v37.i32[1] = v33.i32[1];
      v65 = v37;
      v66 = -v32;
      v67 = v33;
      v68 = -v32;
      v69 = v37;
      v70 = -v32;
      v71 = v63;
      v72 = -v32;
      v38 = fabsf(v23);
      v39 = fabsf(v14);
      if (v38 > v39)
      {
        v39 = v38;
      }

      v40 = fabsf(v22);
      v41 = fabsf(v13);
      if (v40 > v41)
      {
        v41 = v40;
      }

      v42 = v39 + v41;
      v43 = fabsf(v21);
      v44 = fabsf(v15);
      if (v43 > v44)
      {
        v44 = v43;
      }

      v45 = fmaxf((v42 + v44) * 0.02, 0.02);
      do
      {
        v46 = 0;
        v47 = &v9[5 * v35];
        v48 = &v59 + 1;
        do
        {
          v49 = *(&v57 + v46);
          if ((v49 & 1) == 0 && ((((*(v48 - 1) * v47[1]) + (*(v48 - 2) * *v47)) + (*v48 * v47[2])) + v47[3]) >= 0.0)
          {
            *(&v57 + v46) = 1;
          }

          ++v46;
          v48 += 3;
        }

        while (v46 != 8);
        if (v16)
        {
          for (i = 0; i != v34; ++i)
          {
            if (*(v47 + 18))
            {
              v49 = (v36 + *(v47 + 8));
              a7 = *(v47 + 18);
              while (1)
              {
                v51 = *v49;
                v49 = (v49 + 1);
                a8 = v51;
                if (v51 == i)
                {
                  break;
                }

                if (!--a7)
                {
                  goto LABEL_49;
                }
              }
            }

            else
            {
LABEL_49:
              v49 = &v8[3 * i];
              if (((((v49[1] * v47[1]) + (*v49 * *v47)) + (v49[2] * v47[2])) + v47[3]) > v45)
              {
                v54 = physx::shdfnd::Foundation::mInstance;
                v55 = "Gu::ConvexMesh::checkHullPolygons: Some hull vertices seems to be too far from hull planes.";
                v56 = 328;
                goto LABEL_57;
              }
            }
          }
        }

        ++v35;
      }

      while (v35 != v12);
      v52 = 0;
      while ((*(&v57 + v52) & 1) != 0)
      {
        if (++v52 == 8)
        {
          return 1;
        }
      }

      v54 = physx::shdfnd::Foundation::mInstance;
      v55 = "Gu::ConvexMesh::checkHullPolygons: Hull seems to have opened volume or do (some) faces have reversed winding?";
      v56 = 339;
LABEL_57:
      physx::shdfnd::Foundation::error(v54, 32, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexHullBuilder.cpp", v56, v55, v49, a7, a8, v57);
    }
  }

  return 0;
}

float physx::ConvexHullBuilder::computeGeomCenter(uint64_t a1, char a2, uint64_t a3, unsigned int a4, uint64_t a5, float result)
{
  if (a2 && a1)
  {
    v6 = 0;
    *a3 = 0;
    *(a3 + 8) = 0;
    if (a4)
    {
      v7 = (a5 + 8);
      v8 = 0.0;
      v9 = a4;
      v10 = vdup_n_s32(0x3EAAAAABu);
      v11 = 0.0;
      do
      {
        v12 = *(v7 - 2);
        v13 = *(v7 - 1);
        v14 = *v7;
        v7 += 3;
        v15 = (a1 + 12 * v12);
        v16 = (a1 + 12 * v13);
        v17 = (a1 + 12 * v14);
        v18 = v15[1].f32[0];
        v19 = v16[1].f32[0];
        v20 = v17[1].f32[0];
        v21 = v18 - v19;
        _S18 = v18 - v20;
        v23 = (v18 + v19) + v20;
        _D16 = vsub_f32(*v15, *v16);
        v25 = vsub_f32(*v15, *v17);
        __asm { FMLA            S19, S18, V16.S[1] }

        _D16.f32[0] = sqrtf(((((v21 * v25.f32[0]) - (_D16.f32[0] * _S18)) * ((v21 * v25.f32[0]) - (_D16.f32[0] * _S18))) + (_S19 * _S19)) + (((-_D16.f32[1] * v25.f32[0]) + (_D16.f32[0] * v25.f32[1])) * ((-_D16.f32[1] * v25.f32[0]) + (_D16.f32[0] * v25.f32[1])))) * 0.5;
        v6 = vadd_f32(v6, vmul_n_f32(vmul_f32(vadd_f32(vadd_f32(*v15, *v16), *v17), v10), _D16.f32[0]));
        *a3 = v6;
        v8 = v8 + ((v23 * 0.33333) * _D16.f32[0]);
        *(a3 + 8) = v8;
        v11 = v11 + _D16.f32[0];
        --v9;
      }

      while (v9);
    }

    else
    {
      v8 = 0.0;
      v11 = 0.0;
    }

    v31 = 1.0 / v11;
    *a3 = vmul_n_f32(v6, v31);
    result = v8 * v31;
    *(a3 + 8) = v8 * v31;
  }

  return result;
}

uint64_t physx::ConvexHullBuilder::save(uint64_t a1, void (***a2)(uint64_t (***)(void, unsigned int *, uint64_t), unsigned int *, uint64_t), int a3)
{
  v6 = physx::Gu::WriteHeader(67, 76, 72, 76, 9u, a3, a2);
  if (v6)
  {
    v7 = *(a1 + 56);
    v8 = *(v7 + 36) & 0x7FFF | (*(a1 + 64) << 15);
    physx::writeDword(*(v7 + 38), a3, a2);
    physx::writeDword(v8, a3, a2);
    physx::writeDword(*(*(a1 + 56) + 39), a3, a2);
    v9 = *(*(a1 + 56) + 39);
    if (*(*(a1 + 56) + 39))
    {
      v10 = 0;
      v11 = (*(a1 + 8) + 18);
      do
      {
        v12 = *v11;
        v11 += 20;
        v10 += v12;
        --v9;
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    physx::writeDword(v10, a3, a2);
    physx::writeFloatBuffer(*a1, 3 * *(*(a1 + 56) + 38), a3, a2);
    v13 = *(a1 + 56);
    if (*(v13 + 39))
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = (*(a1 + 8) + v14);
        v18 = *v16;
        v17 = v16[1];
        v24 = *v16;
        v25 = v17;
        v19 = v16[2];
        v20 = v16[3];
        v26 = v19;
        v27 = v20;
        v21 = v16[4];
        v28 = v21;
        if (a3)
        {
          LOBYTE(v24) = HIBYTE(v18);
          HIBYTE(v24) = v18;
          BYTE1(v24) = BYTE2(v18);
          BYTE2(v24) = BYTE1(v18);
          LOBYTE(v25) = HIBYTE(v17);
          HIBYTE(v25) = v17;
          BYTE1(v25) = BYTE2(v17);
          BYTE2(v25) = BYTE1(v17);
          LOBYTE(v26) = HIBYTE(v19);
          HIBYTE(v26) = v19;
          BYTE1(v26) = BYTE2(v19);
          BYTE2(v26) = BYTE1(v19);
          LOBYTE(v27) = HIBYTE(v20);
          HIBYTE(v27) = v20;
          BYTE1(v27) = BYTE2(v20);
          BYTE2(v27) = BYTE1(v20);
          LOBYTE(v28) = BYTE1(v21);
          BYTE1(v28) = v21;
        }

        (**a2)(a2, &v24, 20);
        ++v15;
        v13 = *(a1 + 56);
        v14 += 20;
      }

      while (v15 < *(v13 + 39));
    }

    if (v10)
    {
        ;
      }

      v13 = *(a1 + 56);
    }

    (**a2)(a2, *(a1 + 24), 2 * (*(v13 + 36) & 0x7FFFu));
    (**a2)(a2, *(a1 + 32), 3 * *(*(a1 + 56) + 38));
    if (*(a1 + 64))
    {
      physx::writeWordBuffer(*(a1 + 48), 2 * (*(*(a1 + 56) + 36) & 0x7FFF), a3, a2);
    }
  }

  return v6;
}

uint64_t physx::ConvexHullLib::cleanupVertices(physx *a1, uint64_t a2, float32x2_t *a3, uint64_t a4, unsigned int *a5, uint64_t a6, float32x2_t *a7, float32x2_t *a8)
{
  if (!a2)
  {
    return 0;
  }

  v14 = a2;
  if ((*(*(a1 + 1) + 72) & 8) != 0)
  {
    Quantizer = physx::createQuantizer(a1);
    v16 = v18;
    v53 = 0;
    v19 = (**v18)(v18, v14, a3, a4, 1, *(*(a1 + 1) + 76), &v53, Quantizer);
    if (v19)
    {
      LODWORD(v14) = v53;
      a3 = v19;
    }
  }

  else
  {
    v16 = 0;
  }

  v20 = *(*(a1 + 2) + 16);
  v21 = v20 * 0.000001;
  v22 = v20 * 0.01;
  *a5 = 0;
  __asm { FMOV            V10.2S, #1.0 }

  *a7 = _D10;
  a7[1].i32[0] = 1065353216;
  if (local::checkPointsAABBValidity(v14, a3, a4, a8, a7, a5, a6, 0, v20 * 0.000001, v20 * 0.01))
  {
    if (v16)
    {
      ((*v16)[3])(v16);
    }

    return 1;
  }

  v32 = vdiv_f32(_D10, *a7);
  v33 = 1.0 / a7[1].f32[0];
  v34 = v33 * a8[1].f32[0];
  *a8 = vmul_f32(v32, *a8);
  a8[1].f32[0] = v34;
  v35 = *a5;
  if (v14)
  {
    v36 = 0;
    v37 = vdup_n_s32(0x38D1B717u);
    do
    {
      v38 = vmul_f32(v32, *a3);
      v39 = v33 * a3[1].f32[0];
      if (v35)
      {
        v40 = 0;
        v41 = v35;
        v42 = (a6 + 8);
        while (1)
        {
          v43 = *(v42 - 2);
          v44 = vcgt_f32(v37, vabd_f32(v38, v43));
          if ((v44.i8[0] & 1) != 0 && (v44.i8[4] & 1) != 0 && vabds_f32(v39, *v42) < 0.0001)
          {
            break;
          }

          ++v40;
          v42 += 3;
          if (v35 == v40)
          {
            goto LABEL_24;
          }
        }

        v45 = a8->f32[1];
        v46 = a8[1].f32[0];
        if (((((v38.f32[1] - v45) * (v38.f32[1] - v45)) + ((v38.f32[0] - a8->f32[0]) * (v38.f32[0] - a8->f32[0]))) + ((v39 - v46) * (v39 - v46))) > ((((v43.f32[1] - v45) * (v43.f32[1] - v45)) + ((v43.f32[0] - a8->f32[0]) * (v43.f32[0] - a8->f32[0]))) + ((*v42 - v46) * (*v42 - v46))))
        {
          *(v42 - 1) = v38;
          *v42 = v39;
        }
      }

      else
      {
        LODWORD(v40) = 0;
      }

      if (v40 == v35)
      {
        v41 = v35;
LABEL_24:
        v47 = (a6 + 12 * v41);
        *v47 = v38;
        v47[1].f32[0] = v39;
        *a5 = ++v35;
      }

      a3 = (a3 + a4);
      ++v36;
    }

    while (v36 != v14);
  }

  if (v35 < 4)
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 32, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexHullLib.cpp", 277, "ConvexHullLib::cleanupVertices: Less than four valid vertices were found. Provide at least four valid (e.g. each at a different position) vertices.", v28, v29, v30, v52);
    return 0;
  }

  v48 = v35;
  v49 = (a6 + 8);
  do
  {
    v50 = *v49 * a7[1].f32[0];
    *(v49 - 1) = vmul_f32(*(v49 - 2), *a7);
    *v49 = v50;
    v49 += 3;
    --v48;
  }

  while (v48);
  v31 = 1;
  local::checkPointsAABBValidity(v35, a6, 0xCu, a8, a7, a5, a6, 1, v21, v22);
  if (v16)
  {
    ((*v16)[3])(v16);
  }

  return v31;
}

uint64_t local::checkPointsAABBValidity(unsigned int a1, uint64_t a2, unsigned int a3, float *a4, float *a5, unsigned int *a6, uint64_t a7, int a8, float a9, float a10)
{
  if (a1)
  {
    v10 = (a2 + 8);
    v11 = 8.5071e37;
    v12 = -8.5071e37;
    v13 = a1;
    v14 = -8.5071e37;
    v15 = -8.5071e37;
    v16 = 8.5071e37;
    v17 = 8.5071e37;
    do
    {
      v18 = *(v10 - 2);
      v19 = *(v10 - 1);
      if (v17 >= v18)
      {
        v17 = *(v10 - 2);
      }

      if (v16 >= v19)
      {
        v16 = *(v10 - 1);
      }

      if (v11 >= *v10)
      {
        v11 = *v10;
      }

      if (v15 <= v18)
      {
        v15 = *(v10 - 2);
      }

      if (v14 <= v19)
      {
        v14 = *(v10 - 1);
      }

      if (v12 <= *v10)
      {
        v12 = *v10;
      }

      v10 = (v10 + a3);
      --v13;
    }

    while (v13);
  }

  else
  {
    v15 = -8.5071e37;
    v17 = 8.5071e37;
    v16 = 8.5071e37;
    v11 = 8.5071e37;
    v14 = -8.5071e37;
    v12 = -8.5071e37;
  }

  v20 = v15 - v17;
  v21 = v14 - v16;
  v22 = v12 - v11;
  v23 = v11 + v12;
  v24 = (v17 + v15) * 0.5;
  v25 = (v16 + v14) * 0.5;
  v26 = v23 * 0.5;
  *a4 = v24;
  a4[1] = v25;
  a4[2] = v26;
  if (v20 < a9 || v21 < a9 || a1 < 3 || v22 < a9)
  {
    if (v20 >= 3.4028e38 || v20 <= a9)
    {
      v31 = 3.4028e38;
    }

    else
    {
      v31 = v20;
    }

    if (v21 < v31 && v21 > a9)
    {
      v31 = v21;
    }

    if (v22 >= v31 || v22 <= a9)
    {
      v34 = v31;
    }

    else
    {
      v34 = v22;
    }

    v35 = a10;
    v36 = a10;
    if (v34 != 3.4028e38)
    {
      a10 = v20 * 0.5;
      v36 = v34 * 0.05;
      if (v20 < a9)
      {
        a10 = v34 * 0.05;
      }

      v35 = v21 * 0.5;
      if (v21 < a9)
      {
        v35 = v34 * 0.05;
      }

      if (v22 >= a9)
      {
        v36 = v22 * 0.5;
      }
    }

    v37 = v24 - a10;
    v38 = *a6;
    v39 = v25 - v35;
    if (a8)
    {
      v38 = 0;
    }

    v40 = (a7 + 12 * v38);
    *v40 = v37;
    v40[1] = v39;
    v40[2] = v26 - v36;
    v41 = v24 + a10;
    v21 = v25 + v35;
    v42 = (a7 + 12 * (v38 + 1));
    *v42 = v41;
    v42[1] = v39;
    v22 = v26 + v36;
    v42[2] = v26 - v36;
    v43 = (a7 + 12 * (v38 + 2));
    *v43 = v41;
    v43[1] = v25 + v35;
    v43[2] = v26 - v36;
    v44 = (a7 + 12 * (v38 + 3));
    *v44 = v37;
    v44[1] = v25 + v35;
    v44[2] = v26 - v36;
    v45 = (a7 + 12 * (v38 + 4));
    *v45 = v37;
    v45[1] = v39;
    v45[2] = v26 + v36;
    v46 = (a7 + 12 * (v38 + 5));
    *v46 = v41;
    v46[1] = v39;
    v46[2] = v26 + v36;
    v47 = (a7 + 12 * (v38 + 6));
    *v47 = v41;
    v47[1] = v25 + v35;
    v47[2] = v26 + v36;
    *a6 = v38 + 8;
    a5 = (a7 + 12 * (v38 + 7));
    result = 1;
    *a5 = v37;
  }

  else
  {
    result = 0;
    *a5 = v20;
  }

  a5[1] = v21;
  a5[2] = v22;
  return result;
}