uint64_t physx::Dy::BlockAllocator::reserveConstraintData(physx::Dy::BlockAllocator *this, int a2)
{
  **(this + 4) += a2;
  v2 = *(this + 2);
  v3 = (a2 + 15) & 0xFFFFFFF0;
  if (v3 <= 0x4000)
  {
    v6 = *(v2 + 8);
    if (v6 && (v7 = *(v2 + 16), v7 + v3 <= 0x4000))
    {
      result = v6 + v7;
      *(v2 + 16) = v7 + v3;
    }

    else
    {
      result = physx::PxcNpMemBlockPool::acquire(*v2, *(this + 1), (*v2 + 244), (*v2 + 240), 1);
      *(v2 + 8) = result;
      *(v2 + 16) = v3;
    }
  }

  else
  {
    v4 = *v2;

    return physx::PxcNpMemBlockPool::acquireExceptionalConstraintMemory(v4, (a2 + 15) & 0xFFFFFFF0);
  }

  return result;
}

uint64_t physx::Dy::BlockAllocator::reserveFrictionData(physx::Dy::BlockAllocator *this, unsigned int a2)
{
  if (a2 > 0x4000)
  {
    return -1;
  }

  v4 = *(this + 3);
  result = *(v4 + 8);
  if (!result || (v5 = *(v4 + 16), v5 + a2 > 0x4000))
  {
    result = physx::PxcNpMemBlockPool::acquire(*v4, *v4 + 16 * *(*v4 + 180) + 56, 0, 0, 0);
    *(v4 + 8) = result;
    *(v4 + 16) = 0;
    if (!result)
    {
      return result;
    }

    v5 = 0;
  }

  result += v5;
  *(v4 + 16) = v5 + a2;
  return result;
}

uint64_t physx::Dy::PxsSolverCreateFinalizeConstraintsTask::runInternal(physx::Dy::PxsSolverCreateFinalizeConstraintsTask *this)
{
  v2 = **(this + 6);
  v3 = *(v2 + 11896);
  v4 = *(v2 + 12024);
  v5 = *(v2 + 11908);
  v6 = v5 + v3;
  v75 = v3;
  if (v3)
  {
    v3 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = *(v2 + 11920);
    v11 = *v10;
    if (*(this + 72))
    {
      v12 = 1;
    }

    else
    {
      v12 = 4;
    }

    while (1)
    {
      if (v11 - v9 >= v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = v11 - v9;
      }

      if (v11 == v9)
      {
        v14 = 0;
        goto LABEL_40;
      }

      v15 = *(v2 + 12032);
      v16 = v15 + 48 * v9;
      if (*(v16 + 16) != -1 || *(v16 + 18) != 0xFFFF)
      {
        goto LABEL_14;
      }

      v18 = *(v16 + 30);
      if (v18 != 1)
      {
        break;
      }

      LOWORD(v14) = 1;
      if (v7 != -1 && v13 >= 2)
      {
        goto LABEL_27;
      }

LABEL_39:
      v28 = *(v2 + 12040) + 8 * v3++;
      *v28 = v9;
      *(v28 + 4) = v14;
      ++v8;
      v14 = v14;
LABEL_40:
      v9 += v14;
      if (v11 != v75 && v11 == v9)
      {
        v10[v7] = v8;
        v8 = 0;
        v11 = v10[++v7];
      }

      if (v9 >= v75)
      {
        v10[v7] = v8;
        goto LABEL_45;
      }
    }

    if (v18 == 2 && v7 != -1 && v13 > 1)
    {
LABEL_27:
      LOWORD(v14) = v13;
      if (v13 <= 2u)
      {
        LOWORD(v14) = 2;
      }

      v21 = v9 + 1;
      v22 = v13 - 1;
      v23 = -1;
      while (1)
      {
        v24 = v15 + 48 * v21;
        if (v18 != *(v24 + 30))
        {
          break;
        }

        v25 = *(v24 + 16);
        v26 = *(v24 + 18);
        if (v25 != -1 || v26 != 0xFFFF)
        {
          break;
        }

        --v23;
        ++v21;
        if (!--v22)
        {
          goto LABEL_39;
        }
      }

      v14 = -v23;
      goto LABEL_39;
    }

LABEL_14:
    LOWORD(v14) = 1;
    goto LABEL_39;
  }

LABEL_45:
  *(v2 + 11928) = *(v2 + 12232);
  v29 = v3;
  if (v4 != v6)
  {
    v30 = *(v2 + 12040);
    v31 = v4 - v5;
    v32 = v75;
    v33 = v3;
    do
    {
      v29 = v33 + 1;
      v34 = v30 + 8 * v33;
      *v34 = v32;
      *(v34 + 4) = 1;
      ++v32;
      v33 = v29;
    }

    while (v31 != v32);
  }

  *(v2 + 12192) = v3;
  *(v2 + 12196) = v29 - v3;
  *(v2 + 12048) = v29;
  v35 = v2;
  v36 = *(v2 + 12032);
  v37 = (*(**(this + 2) + 8))(*(this + 2));
  result = (*(*v37 + 8))(v37);
  if (v29 + 63 >= 0x40)
  {
    v39 = 0;
    v40 = (v29 + 63) >> 6;
    if (v40 >= result)
    {
      v41 = v40;
    }

    else
    {
      v41 = (v29 + 15) >> 4;
    }

    v42 = v41;
    v43 = (v29 + v41 - 1) / v41;
    v73 = v41;
    do
    {
      v74 = v42;
      v44 = v42;
      if (v42 >= 0x40uLL)
      {
        v44 = 64;
      }

      if (v44 <= 1)
      {
        v45 = 1;
      }

      else
      {
        v45 = v44;
      }

      v46 = v41 - v39;
      if ((v41 - v39) >= 0x40)
      {
        v46 = 64;
      }

      result = physx::Cm::FlushPool::allocate(*(*(this + 5) + 744), 88 * v46, 0x10u);
      if (v39 != v41)
      {
        v47 = result;
        v48 = 0;
        v49 = result;
        do
        {
          v50 = v43 * (v48 + v39);
          v51 = v50 + v43;
          if (v50 + v43 >= v29)
          {
            v51 = v29;
          }

          v52 = *(this + 5);
          v53 = *(v52 + 560);
          v54 = *(this + 8);
          v55 = *(v52 + 768);
          *(v49 + 16) = 0;
          *(v49 + 24) = 0;
          *(v49 + 32) = 0;
          v56 = &unk_1F5D1DB28;
          *v49 = &unk_1F5D1DB28;
          *(v49 + 8) = v55;
          *(v49 + 36) = v75;
          *(v49 + 40) = v36;
          *(v49 + 48) = v53;
          *(v49 + 56) = v35;
          *(v49 + 64) = v52;
          *(v49 + 72) = v54;
          *(v49 + 80) = v50;
          *(v49 + 84) = v51;
          v57 = *(this + 3);
          *(v49 + 32) = 1;
          *(v49 + 24) = v57;
          if (v57)
          {
            (*(*v57 + 32))(v57);
            *(v49 + 16) = *(*(v49 + 24) + 16);
            v56 = *v49;
          }

          result = v56[5](v49);
          ++v48;
          v49 += 88;
          v47 += 88;
          --v45;
        }

        while (v45);
      }

      v39 += 64;
      v42 = v74 - 64;
      v41 = v73;
    }

    while (v39 < v73);
  }

  v58 = *(*(this + 6) + 12);
  v59 = v58 & 0x7FFFFFFF;
  if ((v58 & 0x7FFFFFFF) != 0)
  {
    v60 = 0;
    v61 = 0;
    v62 = v58 & 0x7FFFFFFF;
    do
    {
      v63 = v62 - 32;
      if (v62 >= 0x20)
      {
        v64 = 32;
      }

      else
      {
        v64 = v62;
      }

      v65 = physx::Cm::FlushPool::allocate(*(*(this + 5) + 744), 88, 0x10u);
      v66 = *(v35 + 11984) + v60;
      v67 = *(this + 5);
      v68 = *(v67 + 560);
      v69 = *(this + 8);
      v70 = *(v67 + 768);
      *(v65 + 16) = 0;
      *(v65 + 24) = 0;
      *(v65 + 32) = 0;
      v71 = &unk_1F5D1DB98;
      *v65 = &unk_1F5D1DB98;
      *(v65 + 8) = v70;
      *(v65 + 40) = v66;
      *(v65 + 48) = v64;
      *(v65 + 56) = v68;
      *(v65 + 64) = v35;
      *(v65 + 72) = v67;
      *(v65 + 80) = v69;
      v72 = *(this + 3);
      *(v65 + 32) = 1;
      *(v65 + 24) = v72;
      if (v72)
      {
        (*(*v72 + 32))(v72);
        *(v65 + 16) = *(*(v65 + 24) + 16);
        v71 = *v65;
      }

      result = v71[5](v65);
      v61 += 32;
      v60 += 256;
      v62 = v63;
    }

    while (v61 < v59);
  }

  return result;
}

uint64_t physx::Dy::createContactPatches(uint64_t a1, uint64_t a2, unsigned int a3, float a4)
{
  v4 = *(a1 + 7684);
  if (v4 == 64)
  {
    return 0;
  }

  if (a3)
  {
    v6 = a1 + 44 * v4++;
    v7 = *(a2 + 44);
    v8 = *(a2 + 48);
    *v6 = 0;
    *(v6 + 5) = 1;
    *(v6 + 4) = v8;
    *(v6 + 8) = v7;
    *(v6 + 12) = *(a2 + 56);
    v10 = *(a2 + 16);
    v9 = *(a2 + 20);
    v11 = *(a2 + 24);
    if (a3 == 1)
    {
      v12 = *(a2 + 24);
      v13 = *(a2 + 20);
      v14 = *(a2 + 16);
    }

    else
    {
      v15 = 0;
      v16 = 1;
      do
      {
        v17 = (a2 + (v15 << 6));
        v18 = v16 + 1;
        v19 = a2 + 44 + (v16 << 6);
        v20 = 1;
        v12 = v11;
        v13 = v9;
        v14 = v10;
        while (1)
        {
          v21 = *v19;
          if (*v19 != v17[11] || *(v19 + 12) != v17[14] || *(v19 + 16) != v17[15] || (((*(v19 - 40) * v17[1]) + (*(v19 - 44) * *v17)) + (*(v19 - 36) * v17[2])) < a4)
          {
            break;
          }

          v22 = *(v19 - 28);
          v23 = *(v19 - 24);
          if (v14 >= v22)
          {
            v14 = *(v19 - 28);
          }

          if (v13 >= v23)
          {
            v13 = *(v19 - 24);
          }

          v24 = *(v19 - 20);
          if (v12 >= v24)
          {
            v12 = *(v19 - 20);
          }

          if (v10 <= v22)
          {
            v10 = *(v19 - 28);
          }

          if (v9 <= v23)
          {
            v9 = *(v19 - 24);
          }

          if (v11 <= v24)
          {
            v11 = *(v19 - 20);
          }

          ++v20;
          ++v18;
          v19 += 64;
          if (v18 - a3 == 1)
          {
            if (a3 != v16)
            {
              *(v6 + 5) = a3 + 1 - v16;
            }

            goto LABEL_31;
          }
        }

        if (v4 == 64)
        {
          return 0;
        }

        v15 = v18 - 1;
        *(v6 + 5) = v20;
        *(v6 + 20) = v14;
        *(v6 + 24) = v13;
        *(v6 + 28) = v12;
        *(v6 + 32) = v10;
        *(v6 + 36) = v9;
        *(v6 + 40) = v11;
        v6 = a1 + 44 * v4++;
        v25 = *(v19 + 4);
        *v6 = v18 - 1;
        *(v6 + 5) = 1;
        *(v6 + 2) = 0;
        *(v6 + 4) = v25;
        *(v6 + 8) = v21;
        *(v6 + 12) = *(v19 + 12);
        v10 = *(v19 - 28);
        v9 = *(v19 - 24);
        v16 = v18;
        v11 = *(v19 - 20);
        v12 = v11;
        v13 = v9;
        v14 = v10;
      }

      while (v18 != a3);
    }

LABEL_31:
    *(v6 + 20) = v14;
    *(v6 + 24) = v13;
    *(v6 + 28) = v12;
    *(v6 + 32) = v10;
    *(v6 + 36) = v9;
    *(v6 + 40) = v11;
  }

  *(a1 + 7684) = v4;
  return 1;
}

uint64_t physx::Dy::correlatePatches(uint64_t a1, uint64_t a2, float *a3, float *a4, unsigned int a5, unsigned int a6, float a7)
{
  v7 = *(a1 + 7688);
  v8 = *(a1 + 7684);
  if (v8 > a5)
  {
    v9 = 0;
    v10 = a1 + 6528;
    v11 = a1 + 7296;
    v12 = a1 + 7424;
    v13 = a5;
    while (1)
    {
      v14 = (a1 + 44 * v13);
      v15 = (a2 + (*v14 << 6));
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[2];
      v19 = a6;
      if (v7 > a6)
      {
        v20 = (a1 + 104 * a6 + 2828);
        v21 = (a1 + 12 * a6 + 6152);
        v19 = a6;
        while ((((v17 * *(v21 - 1)) + (v16 * *(v21 - 2))) + (v18 * *v21)) < a7 || *(v20 - 2) != *(v14 + 4) || *(v20 - 1) != *(v14 + 2) || *v20 != *(v14 + 3))
        {
          ++v19;
          v21 += 3;
          v20 += 26;
          if (v7 == v19)
          {
            goto LABEL_12;
          }
        }
      }

      if (v19 != v7)
      {
        break;
      }

LABEL_12:
      if (!(v9 & 1 | (v7 == 32)))
      {
        v9 = 0;
        v22 = a1 + 2816 + 104 * v7;
        v24 = a3[2];
        v23 = a3[3];
        v25 = (v23 * v23) + -0.5;
        v27 = *a3;
        v26 = a3[1];
        v28 = (((v17 + v17) * v26) + (*a3 * (v16 + v16))) + (v24 * (v18 + v18));
        v29 = (((v16 + v16) * v25) - (((v26 * (v18 + v18)) - (v24 * (v17 + v17))) * v23)) + (*a3 * v28);
        v30 = (((v17 + v17) * v25) - (((v24 * (v16 + v16)) - (*a3 * (v18 + v18))) * v23)) + (v26 * v28);
        v31 = (((v18 + v18) * v25) - (((*a3 * (v17 + v17)) - (v26 * (v16 + v16))) * v23)) + (v24 * v28);
        *(v22 + 16) = v29;
        *(v22 + 20) = v30;
        v33 = a4[2];
        v32 = a4[3];
        v34 = (v32 * v32) + -0.5;
        v35 = *a4;
        v36 = a4[1];
        v37 = *(v14 + 4);
        v38 = *(v14 + 4);
        v39 = (((v17 + v17) * v36) + (*a4 * (v16 + v16))) + (v33 * (v18 + v18));
        v40 = (((v16 + v16) * v34) - (((v36 * (v18 + v18)) - (v33 * (v17 + v17))) * v32)) + (*a4 * v39);
        v41 = (((v17 + v17) * v34) - (((v33 * (v16 + v16)) - (*a4 * (v18 + v18))) * v32)) + (v36 * v39);
        v42 = (((v18 + v18) * v34) - (((*a4 * (v17 + v17)) - (v36 * (v16 + v16))) * v32)) + (v33 * v39);
        *(v22 + 24) = v31;
        *(v22 + 28) = v40;
        *(v22 + 32) = v41;
        *(v22 + 36) = v42;
        *(v22 + 88) = (((v23 * v35) - (v27 * v32)) - (v26 * v33)) + (v36 * v24);
        *(v22 + 92) = (((v23 * v36) - (v26 * v32)) - (v24 * v35)) + (v33 * v27);
        *(v22 + 96) = (((v23 * v33) - (v24 * v32)) - (v27 * v36)) + (v35 * v26);
        *(v22 + 100) = (((v27 * v35) + (v23 * v32)) + (v26 * v36)) + (v24 * v33);
        *(v22 + 2) = 0;
        *v22 = 0;
        *(v22 + 8) = *(v14 + 1);
        *(v22 + 4) = v37;
        *(v22 + 1) = v38;
        v43 = (a1 + 6144 + 12 * v7);
        *v43 = v16;
        v43[1] = v17;
        v43[2] = v18;
        *(v11 + 4 * v7) = *(v14 + 5);
        v44 = (v10 + 24 * v7);
        *v44 = *(v14 + 10);
        v44[1] = *(v14 + 14);
        v44[2] = *(v14 + 18);
        v45 = (a1 + 7556 + 4 * v7);
        LOWORD(v46) = -1;
        *v45 = -1;
        v45[1] = -1;
        v47 = v7++;
LABEL_20:
        v14[1] = v46;
        *(v12 + 4 * v47) = v13;
        v8 = *(a1 + 7684);
        goto LABEL_21;
      }

      v9 = 1;
LABEL_21:
      if (++v13 >= v8)
      {
        goto LABEL_24;
      }
    }

    v47 = v19;
    v48 = v10 + 24 * v19;
    v49 = *(v48 + 8);
    if (v49 >= *(v14 + 7))
    {
      v49 = *(v14 + 7);
    }

    *v48 = vbsl_s8(vcgt_f32(*(v14 + 10), *v48), *v48, *(v14 + 10));
    *(v48 + 8) = v49;
    v50 = *(v48 + 20);
    if (v50 <= *(v14 + 10))
    {
      v50 = *(v14 + 10);
    }

    *(v48 + 12) = vbsl_s8(vcgt_f32(*(v48 + 12), *(v14 + 16)), *(v48 + 12), *(v14 + 16));
    *(v48 + 20) = v50;
    *(v11 + 4 * v19) += *(v14 + 5);
    v46 = *(v12 + 4 * v19);
    goto LABEL_20;
  }

  v9 = 0;
LABEL_24:
  *(a1 + 7688) = v7;
  return v9 & 1;
}

uint64_t physx::Dy::growPatches(uint64_t result, uint64_t a2, float *a3, float *a4, unsigned int a5, float a6, float a7)
{
  v86 = *MEMORY[0x1E69E9840];
  v8 = *(result + 7688);
  if (v8 > a5)
  {
    v9 = result + 7424;
    v11 = a3[2];
    v10 = a3[3];
    v12 = (v10 * v10) + -0.5;
    v13 = *a3;
    v14 = a3[1];
    v15 = -v11;
    v16 = -*a3;
    v17 = -v14;
    v18 = a6 * a6;
    v20 = a4[2];
    v19 = a4[3];
    v21 = (v19 * v19) + -0.5;
    v22 = *a4;
    v23 = a4[1];
    v24 = -*a4;
    v25 = a5;
    for (i = result + 104 * a5 + 2856; ; i += 104)
    {
      v27 = result + 2816 + 104 * v25;
      v28 = *(v27 + 2);
      if (v28 != 2)
      {
        v29 = *(v9 + 4 * v25);
        if (v29 != 0xFFFF)
        {
          break;
        }
      }

      if (!*(result + 7296 + 4 * v25))
      {
        goto LABEL_35;
      }

      v30 = (result + 6528 + 24 * v25);
      v31 = v30[4] - v30[1];
      v32 = v30[5] - v30[2];
      v7 = ((v31 * v31) + ((v30[3] - *v30) * (v30[3] - *v30))) + (v32 * v32);
      v33 = *(v27 + 40) - *(v27 + 52);
      v34 = *(v27 + 44) - *(v27 + 56);
      v35 = *(v27 + 48) - *(v27 + 60);
      if (((((v34 * v34) + (v33 * v33)) + (v35 * v35)) * 4.0) >= v7)
      {
        goto LABEL_35;
      }

      *(v27 + 2) = 0;
      v29 = *(v9 + 4 * v25);
      if (v29 != 0xFFFF)
      {
        goto LABEL_11;
      }

LABEL_33:
      LOWORD(v28) = 0;
      *(v27 + 64) = 0;
      *(v27 + 72) = 0;
      *(v27 + 40) = 0;
      *(v27 + 48) = 0;
LABEL_34:
      *(v27 + 2) = v28;
LABEL_35:
      if (++v25 == v8)
      {
        return result;
      }
    }

    if (v28 == 1)
    {
      v36 = *(v27 + 40) + *(v27 + 40);
      v37 = *(v27 + 44) + *(v27 + 44);
      v38 = *(v27 + 48) + *(v27 + 48);
      v39 = ((v14 * v37) + (v13 * v36)) + (v11 * v38);
      v40 = ((v10 * ((v37 * v15) + (v14 * v38))) + (v36 * v12)) + (v13 * v39);
      v41 = ((v10 * ((v38 * v16) + (v11 * v36))) + (v37 * v12)) + (v14 * v39);
      v42 = ((v10 * ((v36 * v17) + (v13 * v37))) + (v38 * v12)) + (v11 * v39);
      v7 = a3[4] + v40;
      v43 = a3[6] + v42;
      v81 = a3[5] + v41;
      v82 = v43;
    }

    else
    {
LABEL_11:
      v28 = 0;
    }

    v44 = (result + 7556 + 4 * v25);
    v46 = v81;
    v45 = v82;
    v47 = v83;
    v48 = v84;
    v49 = 0.0;
    v50 = v85;
    do
    {
      v51 = (result + 44 * v29);
      v52 = *(v51 + 5);
      if (*(v51 + 5))
      {
        v53 = 0;
        do
        {
          v54 = *v51;
          v55 = (a2 + ((v53 + v54) << 6));
          if (v55[3] < a7)
          {
            if (v28 == 1)
            {
              v56 = v55[4];
              v57 = v55[5];
              v58 = v55[6];
              v49 = (((v57 - v46) * (v57 - v46)) + ((v56 - v7) * (v56 - v7))) + ((v58 - v45) * (v58 - v45));
              if (v49 <= v18)
              {
                v28 = 1;
              }

              else
              {
                v44[1] = v54 + v53;
                v28 = 2;
                v50 = v58;
                v48 = v57;
                v47 = v56;
              }
            }

            else if (v28)
            {
              v59 = v55[4];
              v60 = v55[5];
              v61 = v55[6];
              v62 = (((v60 - v46) * (v60 - v46)) + ((v59 - v7) * (v59 - v7))) + ((v61 - v45) * (v61 - v45));
              v63 = (((v60 - v48) * (v60 - v48)) + ((v59 - v47) * (v59 - v47))) + ((v61 - v50) * (v61 - v50));
              if (v62 <= v63)
              {
                if (v63 > v49)
                {
                  *v44 = v54 + v53;
                  v45 = v61;
                  v46 = v60;
                  v7 = v59;
                  v49 = (((v60 - v48) * (v60 - v48)) + ((v59 - v47) * (v59 - v47))) + ((v61 - v50) * (v61 - v50));
                }
              }

              else if (v62 > v49)
              {
                v44[1] = v54 + v53;
                v50 = v61;
                v48 = v60;
                v47 = v59;
                v49 = (((v60 - v46) * (v60 - v46)) + ((v59 - v7) * (v59 - v7))) + ((v61 - v45) * (v61 - v45));
              }
            }

            else
            {
              *v44 = v53 + v54;
              v7 = v55[4];
              v46 = v55[5];
              v28 = 1;
              v45 = v55[6];
            }
          }

          ++v53;
        }

        while (v52 != v53);
      }

      v29 = v51[1];
    }

    while (v29 != 0xFFFF);
    v82 = v45;
    v83 = v47;
    v84 = v48;
    v85 = v50;
    v64 = *(v27 + 2);
    v80 = v7;
    v81 = v46;
    if (v64 < v28)
    {
      v65 = v28 - v64;
      v66 = 3 * v64;
      v67 = &v81;
      v68 = i;
      do
      {
        v69 = v67[v66 - 1];
        v70 = v67[v66];
        v71 = v67[v66 + 1];
        v72 = (v69 - a3[4]) + (v69 - a3[4]);
        v73 = (v70 - a3[5]) + (v70 - a3[5]);
        v74 = (v71 - a3[6]) + (v71 - a3[6]);
        v75 = ((v14 * v73) + (v13 * v72)) + (v11 * v74);
        v76 = (v68 + v66 * 4);
        *v76 = ((v72 * v12) - (((v73 * v15) + (v14 * v74)) * v10)) + (v13 * v75);
        v76[1] = ((v73 * v12) - (((v74 * v16) + (v11 * v72)) * v10)) + (v14 * v75);
        v76[2] = ((v74 * v12) - (((v72 * v17) + (v13 * v73)) * v10)) + (v11 * v75);
        v77 = (v69 - a4[4]) + (v69 - a4[4]);
        v78 = (v70 - a4[5]) + (v70 - a4[5]);
        v7 = (v71 - a4[6]) + (v71 - a4[6]);
        v79 = ((v23 * v78) + (v22 * v77)) + (v20 * v7);
        v76[6] = ((v77 * v21) - (((v78 * -v20) + (v23 * v7)) * v19)) + (v22 * v79);
        v76[7] = ((v78 * v21) - (((v7 * v24) + (v20 * v77)) * v19)) + (v23 * v79);
        v76[8] = ((v7 * v21) - (((v77 * -v23) + (v22 * v78)) * v19)) + (v20 * v79);
        v68 += 12;
        v67 += 3;
        --v65;
      }

      while (v65);
    }

    if (v28)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  return result;
}

float physx::Dy::copyToSolverBodyData(uint64_t a1, uint64_t a2, float *a3, uint64_t a4, int a5, uint64_t a6, int a7, float a8, float a9, float a10, float a11)
{
  *(a6 + 72) = a5;
  v11 = a3[1];
  v12 = sqrtf(*a3);
  v13 = 0.0;
  if (*a3 == 0.0)
  {
    v12 = 0.0;
  }

  v14 = sqrtf(v11);
  if (v11 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v14;
  }

  v16 = a3[2];
  v17 = sqrtf(v16);
  if (v16 != 0.0)
  {
    v13 = v17;
  }

  v18 = *a4;
  v19 = *(a4 + 4);
  v20 = *(a4 + 8);
  v21 = *(a4 + 12);
  v22 = v19 + v19;
  v23 = v20 + v20;
  v24 = v19 * (v19 + v19);
  v25 = v20 * (v20 + v20);
  v26 = (v18 + v18) * v19;
  v27 = (v18 + v18) * v20;
  v28 = (v18 + v18) * v21;
  v29 = v22 * v20;
  v30 = v22 * v21;
  v31 = v23 * v21;
  v32 = (1.0 - v24) - v25;
  v33 = v26 + v31;
  v34 = v27 - v30;
  v35 = v26 - v31;
  v36 = 1.0 - (v18 * (v18 + v18));
  v37 = v36 - v25;
  v38 = v29 + v28;
  v39 = v27 + v30;
  v40 = v29 - v28;
  v41 = v36 - v24;
  v42 = v12 * v32;
  v43 = v12 * v33;
  v44 = v15 * v35;
  v45 = v15 * v37;
  v46 = v13 * v39;
  v47 = v13 * v40;
  v48 = ((v35 * (v15 * v35)) + ((v12 * v32) * v32)) + ((v13 * v39) * v39);
  v49 = ((v37 * (v15 * v37)) + ((v12 * v33) * v33)) + ((v13 * v40) * v40);
  v50 = ((v38 * (v15 * v38)) + ((v12 * v34) * v34)) + ((v13 * v41) * v41);
  v51 = ((v37 * v44) + (v42 * v33)) + (v46 * v40);
  *(a6 + 32) = v48;
  *(a6 + 36) = v51;
  v52 = ((v38 * v44) + (v42 * v34)) + (v46 * v41);
  *(a6 + 40) = v52;
  *(a6 + 44) = v51;
  v53 = ((v38 * v45) + (v43 * v34)) + (v47 * v41);
  *(a6 + 48) = v49;
  *(a6 + 52) = v53;
  *(a6 + 56) = v52;
  *(a6 + 60) = v53;
  *(a6 + 64) = v50;
  *a6 = *a1;
  *(a6 + 8) = *(a1 + 8);
  *(a6 + 16) = *a2;
  *(a6 + 24) = *(a2 + 8);
  if (!a7)
  {
    goto LABEL_16;
  }

  if (a7)
  {
    *a6 = 0;
    if ((a7 & 2) == 0)
    {
LABEL_11:
      if ((a7 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_19;
    }
  }

  else if ((a7 & 2) == 0)
  {
    goto LABEL_11;
  }

  *(a6 + 4) = 0;
  if ((a7 & 4) == 0)
  {
LABEL_12:
    if ((a7 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(a6 + 8) = 0;
  if ((a7 & 8) == 0)
  {
LABEL_13:
    if ((a7 & 0x10) == 0)
    {
      goto LABEL_14;
    }

LABEL_21:
    *(a6 + 20) = 0;
    if ((a7 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_20:
  *(a6 + 16) = 0;
  if ((a7 & 0x10) != 0)
  {
    goto LABEL_21;
  }

LABEL_14:
  if ((a7 & 0x20) != 0)
  {
LABEL_15:
    *(a6 + 24) = 0;
  }

LABEL_16:
  *(a6 + 12) = a8;
  *(a6 + 68) = a9;
  *(a6 + 76) = a10;
  *(a6 + 80) = *a4;
  *(a6 + 96) = *(a4 + 16);
  result = *(a4 + 24);
  *(a6 + 104) = result;
  *(a6 + 108) = a7;
  *(a6 + 28) = a11;
  return result;
}

uint64_t **physx::Dy::solve1D(uint64_t **result, double a2, double a3, double a4, double a5, float32x2_t a6, float32x2_t a7, float32x2_t a8, float32x2_t a9)
{
  v9 = result[4];
  if (v9)
  {
    v11 = *result;
    v10 = result[1];
    v13.i64[0] = **result;
    v12 = *result + 1;
    v13.i64[1] = *v12;
    v14.i64[0] = *v10;
    v14.i64[1] = *(v10 + 2);
    v16.i64[0] = (*result)[2];
    v15 = *result + 3;
    v16.i64[1] = *v15;
    v17.i64[0] = v10[2];
    v17.i64[1] = *(v10 + 6);
    v18 = *(v9 + 1);
    if (*(v9 + 1))
    {
      a6.i32[0] = *(v9 + 3);
      a7.i32[0] = *(v9 + 7);
      a8.i32[0] = *(v9 + 9);
      _X15 = (v9 + 9);
      a9.i32[0] = *(v9 + 11);
      do
      {
        __asm { PRFM            #0, [X15,#0x48] }

        v25.i64[0] = *(_X15 - 3);
        v25.i64[1] = *(_X15 - 4);
        v26.i64[0] = *(_X15 - 1);
        v26.i64[1] = *_X15;
        v27.i64[0] = *(_X15 + 1);
        v27.i64[1] = _X15[4];
        v28.i64[0] = *(_X15 + 3);
        v28.i64[1] = _X15[8];
        v29 = (_X15 - 3);
        v30 = vld1_dup_f32(v29);
        v31 = (_X15 + 16);
        v32 = vld1_dup_f32(v31);
        v33 = (_X15 + 15);
        v34 = vld1_dup_f32(v33);
        v35 = (_X15 + 14);
        v36 = vld1_dup_f32(v35);
        v37 = vsubq_f32(vmlaq_f32(vmulq_f32(v16, v27), v25, v13), vmlaq_f32(vmulq_f32(v17, v28), v26, v14));
        v37.i64[0] = vpaddq_f32(v37, v37).u64[0];
        v38 = vmin_f32(v34, vmax_f32(v36, vmla_n_f32(vmla_n_f32(v30, vpadd_f32(*v37.f32, *v37.f32), *(_X15 + 5)), v32, *(_X15 + 9))));
        v39 = vsub_f32(v38, v32);
        v13 = vmlaq_n_f32(v13, v25, vmul_f32(a6, v39).f32[0]);
        v13.i64[1] = vextq_s8(v13, v13, 8uLL).u32[0];
        v14 = vmlsq_lane_f32(v14, v26, vmul_f32(a7, v39), 0);
        v14.i64[1] = vextq_s8(v14, v14, 8uLL).u32[0];
        v16 = vmlaq_n_f32(v16, v27, vmul_f32(a8, v39).f32[0]);
        _X15[16] = v38.i32[0];
        v16.i64[1] = vextq_s8(v16, v16, 8uLL).u32[0];
        v17 = vmlaq_n_f32(v17, v28, vmul_f32(a9, v39).f32[0]);
        v17.i64[1] = vextq_s8(v17, v17, 8uLL).u32[0];
        _X15 += 24;
        --v18;
      }

      while (v18);
    }

    *v11 = v13.i64[0];
    *v12 = v13.i32[2];
    v11[2] = v16.i64[0];
    *v15 = v16.i32[2];
    *v10 = v14.i64[0];
    *(v10 + 2) = v14.i32[2];
    v10[2] = v17.i64[0];
    *(v10 + 6) = v17.i32[2];
  }

  return result;
}

uint64_t **physx::Dy::solveContact(uint64_t **result, _BYTE *a2, double a3, double a4, double a5, double a6, double a7, float32x2_t a8, float32x2_t a9)
{
  v11 = *result;
  v10 = result[1];
  v13.i64[0] = **result;
  v12 = *result + 1;
  v13.i64[1] = *v12;
  v14.i64[0] = *v10;
  v14.i64[1] = *(v10 + 2);
  v16.i64[0] = (*result)[2];
  v15 = *result + 3;
  v16.i64[1] = *v15;
  v17.i64[0] = v10[2];
  v17.i64[1] = *(v10 + 6);
  if (*(result + 15))
  {
    _X15 = result[4];
    v19 = _X15 + 16 * *(result + 15);
    do
    {
      v20 = *(_X15 + 2);
      v21 = *(_X15 + 3);
      __asm { PRFM            #0, [X15,#0x50] }

      v27 = 3 * *(_X15 + 2);
      v28 = _X15 + 80 + 48 * *(_X15 + 2);
      a9.i32[0] = *(_X15 + 8);
      v29 = *(_X15 + 12);
      v30 = (_X15 + 48);
      a8.i32[0] = *(_X15 + 4);
      v31 = vld1q_dup_f32(v30);
      if (*(_X15 + 2))
      {
        v32 = *(_X15 + 32);
        v33 = vmulq_n_f32(v32, v29);
        v33.i32[3] = 0;
        v34 = vmulq_f32(v31, v32);
        v34.i32[3] = 0;
        v35 = vnegq_f32(v34);
        _X3 = (_X15 + 112);
        v37 = 0;
        v38 = (_X15 + 80 + 48 * *(_X15 + 2));
        v39 = *(_X15 + 2);
        v40 = v38;
        do
        {
          __asm { PRFM            #0, [X3,#0x60] }

          v43 = _X3[-2];
          v42 = _X3[-1];
          v44 = vld1_dup_f32(v40++);
          v9.i32[0] = _X3->i32[0];
          v45 = &_X3->f32[3];
          v46 = vld1_dup_f32(v45);
          v47 = vsubq_f32(vmlaq_f32(vmulq_f32(v16, v43), v32, v13), vmlaq_f32(vmulq_f32(v17, v42), v32, v14));
          v47.i64[0] = vpaddq_f32(v47, v47).u64[0];
          v48 = &_X3->f32[1];
          v49 = vld1_dup_f32(v48);
          *v9.i8 = vmin_f32(vadd_f32(v44, vmax_f32(vmls_lane_f32(v49, vpadd_f32(*v47.f32, *v47.f32), *v9.i8, 0), vneg_f32(v44))), v46);
          v50 = vsub_f32(*v9.i8, v44);
          v13 = vmlaq_n_f32(v13, v33, v50.f32[0]);
          v13.i64[1] = vextq_s8(v13, v13, 8uLL).u32[0];
          v14 = vmlaq_n_f32(v14, v35, v50.f32[0]);
          v14.i64[1] = vextq_s8(v14, v14, 8uLL).u32[0];
          v16 = vmlaq_n_f32(v16, v43, vmul_f32(a8, v50).f32[0]);
          v16.i64[1] = vextq_s8(v16, v16, 8uLL).u32[0];
          v17 = vmlsq_lane_f32(v17, v42, vmul_f32(a9, v50), 0);
          v17.i64[1] = vextq_s8(v17, v17, 8uLL).u32[0];
          *v38 = *v9.i32;
          v37 = vadd_f32(v37, *v9.i8);
          _X3 += 3;
          v38 = v40;
          --v39;
        }

        while (v39);
      }

      else
      {
        v37 = 0;
      }

      result = ((4 * v20 + 12) & 0x7F0);
      if (*a2 == 1 && v21)
      {
        v51 = *(_X15 + 16);
        if (a2[1])
        {
          _X3 = *(_X15 + 56);
          __asm { PRFM            #0, [X3] }
        }

        v54 = vmul_n_f32(v37, v51.f32[0]);
        v55 = vmul_lane_f32(v37, v51, 1);
        v56 = vneg_f32(v55);
        _X2 = (&result[2 * v27 + 14] + _X15);
        v58 = 0uLL;
        v59 = v21;
        do
        {
          __asm { PRFM            #0, [X2,#0x60] }

          v61 = _X2[-2];
          v62 = *_X2;
          v63 = v61;
          v63.i32[3] = 0;
          v64 = _X2[-1];
          v64.i32[3] = 0;
          v65 = vdup_laneq_s32(v61, 3);
          v62.i32[3] = 0;
          i32 = _X2[1].i32;
          v67 = vld1_dup_f32(i32);
          v68 = vmulq_n_f32(v63, v29);
          v68.i32[3] = 0;
          v69 = vmulq_f32(v31, v63);
          v69.i32[3] = 0;
          v70 = vsubq_f32(vmlaq_f32(vmulq_f32(v16, v64), v63, v13), vmlaq_f32(vmulq_f32(v17, v62), v63, v14));
          v70.i64[0] = vpaddq_f32(v70, v70).u64[0];
          v71 = vmls_laneq_f32(vmls_laneq_f32(v65, vsub_f32(vdup_laneq_s32(*_X2, 3), v67), _X2[-1], 3), vpadd_f32(*v70.f32, *v70.f32), _X2[-1], 3);
          v9 = vdupq_lane_s32(vcgt_f32(vabs_f32(v71), v54), 0);
          *v70.f32 = vbsl_s8(*v9.i8, vmin_f32(v55, vmax_f32(v56, v71)), v71);
          v72 = vsub_f32(*v70.f32, v65);
          v13 = vmlaq_n_f32(v13, v68, v72.f32[0]);
          v13.i64[1] = vextq_s8(v13, v13, 8uLL).u32[0];
          v14 = vmlsq_lane_f32(v14, v69, v72, 0);
          v14.i64[1] = vextq_s8(v14, v14, 8uLL).u32[0];
          v16 = vmlaq_n_f32(v16, v64, vmul_f32(a8, v72).f32[0]);
          v16.i64[1] = vextq_s8(v16, v16, 8uLL).u32[0];
          v17 = vmlsq_lane_f32(v17, v62, vmul_f32(a9, v72), 0);
          v17.i64[1] = vextq_s8(v17, v17, 8uLL).u32[0];
          v58 = vorrq_s8(v9, v58);
          v61.i32[3] = v70.i32[1];
          _X2[-2] = v61;
          _X2 += 4;
          --v59;
        }

        while (v59);
        *(_X15 + 52) = v58.i32[0];
      }

      _X15 = &result[8 * v21] + v28;
    }

    while (_X15 < v19);
  }

  *v11 = v13.i64[0];
  *v12 = v13.i32[2];
  *v10 = v14.i64[0];
  *(v10 + 2) = v14.i32[2];
  v11[2] = v16.i64[0];
  *v15 = v16.i32[2];
  v10[2] = v17.i64[0];
  *(v10 + 6) = v17.i32[2];
  return result;
}

int32x4_t *physx::Dy::solveContact_BStatic(int32x4_t *result, _BYTE *a2, double a3, double a4, double a5, float32x2_t a6)
{
  v7 = result->i64[0];
  v9.i64[0] = *result->i64[0];
  v8 = (result->i64[0] + 8);
  v9.i64[1] = *v8;
  v11.i64[0] = *(result->i64[0] + 16);
  v10 = (result->i64[0] + 24);
  v11.i64[1] = *v10;
  if (result[1].i16[7])
  {
    v12 = result[2].u64[0];
    v13 = v12 + 16 * result[1].u16[7];
    do
    {
      v14 = *(v12 + 2);
      v15 = 3 * *(v12 + 2);
      v16 = *(v12 + 3);
      v17 = v12 + 48 * *(v12 + 2) + 80;
      v18 = *(v12 + 12);
      a6.i32[0] = *(v12 + 4);
      if (*(v12 + 2))
      {
        v19 = *(v12 + 32);
        v20 = vmulq_n_f32(v19, v18);
        v20.i32[3] = 0;
        _X17 = (v12 + 112);
        v22 = 0;
        v23 = (v12 + 48 * *(v12 + 2) + 80);
        result = *(v12 + 2);
        v24 = v23;
        do
        {
          __asm { PRFM            #0, [X17,#0x60] }

          v30 = _X17[-2];
          v31 = vld1_dup_f32(v24++);
          v6.i32[0] = _X17->i32[0];
          v32 = &_X17->f32[3];
          v33 = vld1_dup_f32(v32);
          v34 = vmlaq_f32(vmulq_f32(v11, v30), v19, v9);
          v34.i64[0] = vpaddq_f32(v34, v34).u64[0];
          v35 = &_X17->f32[1];
          v36 = vld1_dup_f32(v35);
          *v6.i8 = vmin_f32(vadd_f32(v31, vmax_f32(vmls_lane_f32(v36, vpadd_f32(*v34.f32, *v34.f32), *v6.i8, 0), vneg_f32(v31))), v33);
          v37 = vsub_f32(*v6.i8, v31);
          v9 = vmlaq_n_f32(v9, v20, v37.f32[0]);
          v9.i64[1] = vextq_s8(v9, v9, 8uLL).u32[0];
          v11 = vmlaq_n_f32(v11, v30, vmul_f32(a6, v37).f32[0]);
          v11.i64[1] = vextq_s8(v11, v11, 8uLL).u32[0];
          *v23 = *v6.i32;
          v22 = vadd_f32(v22, *v6.i8);
          _X17 += 3;
          v23 = v24;
          result = (result - 1);
        }

        while (result);
      }

      else
      {
        v22 = 0;
      }

      v38 = (4 * v14 + 12) & 0x7F0;
      if (*a2 == 1 && v16)
      {
        v39 = *(v12 + 16);
        if (a2[1] == 1)
        {
          _X17 = *(v12 + 56);
          __asm { PRFM            #0, [X17] }
        }

        v42 = vmul_n_f32(v22, v39.f32[0]);
        v43 = vmul_lane_f32(v22, v39, 1);
        v44 = vneg_f32(v43);
        _X16 = (v12 + 16 * v15 + v38 + 112);
        v46 = 0uLL;
        v47 = v16;
        do
        {
          __asm { PRFM            #0, [X16,#0x60] }

          v49 = _X16[-2];
          v50 = v49;
          v50.i32[3] = 0;
          v51 = _X16[-1];
          v51.i32[3] = 0;
          v52 = vdup_laneq_s32(v49, 3);
          result = _X16 + 1;
          v53 = vld1_dup_f32(result->i32);
          v54 = vmulq_n_f32(v50, v18);
          v54.i32[3] = 0;
          v55 = vmlaq_f32(vmulq_f32(v11, v51), v50, v9);
          v50.i64[0] = vpaddq_f32(v55, v55).u64[0];
          v56 = vmls_laneq_f32(vmls_laneq_f32(v52, vsub_f32(vdup_laneq_s32(*_X16, 3), v53), _X16[-1], 3), vpadd_f32(*v50.f32, *v50.f32), _X16[-1], 3);
          v6 = vdupq_lane_s32(vcgt_f32(vabs_f32(v56), v42), 0);
          *v50.f32 = vbsl_s8(*v6.i8, vmin_f32(v43, vmax_f32(v44, v56)), v56);
          v57 = vsub_f32(*v50.f32, v52);
          v9 = vmlaq_n_f32(v9, v54, v57.f32[0]);
          v9.i64[1] = vextq_s8(v9, v9, 8uLL).u32[0];
          v11 = vmlaq_n_f32(v11, v51, vmul_f32(a6, v57).f32[0]);
          v11.i64[1] = vextq_s8(v11, v11, 8uLL).u32[0];
          v46 = vorrq_s8(v6, v46);
          v49.i32[3] = v50.i32[1];
          _X16[-2] = v49;
          _X16 += 4;
          --v47;
        }

        while (v47);
        *(v12 + 52) = v46.i32[0];
      }

      v12 = v17 + v38 + (v16 << 6);
    }

    while (v12 < v13);
  }

  *v7 = v9.i64[0];
  *v8 = v9.i32[2];
  v7[2] = v11.i64[0];
  *v10 = v11.i32[2];
  return result;
}

uint64_t physx::Dy::concludeContact(uint64_t result)
{
  if (*(result + 30))
  {
    _X14 = *(result + 32);
    v2 = &_X14[16 * *(result + 30)];
    do
    {
      v3 = _X14 + 80;
      v4 = _X14[2];
      v5 = _X14[3];
      __asm
      {
        PRFM            #0, [X14,#0xD0]
        PRFM            #0, [X14,#0x150]
        PRFM            #0, [X14,#0x1D0]
      }

      v13 = *_X14;
      if (v4)
      {
        if (v13 == 3)
        {
          result = 112;
        }

        else
        {
          result = 48;
        }

        v14 = v4;
        do
        {
          v15 = &v3[result];
          *(v3 + 9) = *(v3 + 10);
          v3 += result;
          --v14;
        }

        while (v14);
      }

      else
      {
        v15 = v3;
      }

      v16 = &v15[(4 * v4 + 12) & 0x7F0];
      if (v5)
      {
        if (v13 == 3)
        {
          v17 = 128;
        }

        else
        {
          v17 = 64;
        }

        do
        {
          _X14 = &v16[v17];
          *(v16 + 11) = 0;
          v16 += v17;
          --v5;
        }

        while (v5);
      }

      else
      {
        _X14 = v16;
      }
    }

    while (_X14 < v2);
  }

  return result;
}

uint64_t physx::Dy::writeBackContact(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 30))
  {
    _X14 = *(result + 32);
    v4 = *(result + 40);
    v6 = &_X14[16 * *(result + 30)];
    v7 = 0.0;
    do
    {
      v8 = _X14[1];
      v9 = _X14[2];
      v10 = _X14[3];
      __asm
      {
        PRFM            #0, [X14,#0x150]
        PRFM            #0, [X14,#0x1D0]
      }

      v17 = *_X14;
      if (v17 == 3)
      {
        v18 = 112;
      }

      else
      {
        v18 = 48;
      }

      v19 = &_X14[v18 * v9 + 80];
      if (v4 && _X14[2])
      {
        v20 = v19;
        v21 = _X14[2];
        do
        {
          v22 = *v20++;
          *v4++ = v22;
          v7 = v7 + v22;
          --v21;
        }

        while (v21);
      }

      if (*(_X14 + 13))
      {
        v23 = *(_X14 + 7);
        if (v23)
        {
          *v23 = 1;
        }
      }

      if (v17 == 3)
      {
        v24 = 7;
      }

      else
      {
        v24 = 6;
      }

      _X14 = (v19 + ((4 * v9 + 12) & 0x7F0) + (v10 << v24));
    }

    while (_X14 < v6);
    if ((v8 & 1) != 0 && *(result + 16) == 0xFFFF && *(result + 18) == -1 && v7 != 0.0)
    {
      v25 = *(a3 + 28);
      v26 = *(a4 + 28);
      if (v25 < 3.4028e38 || v26 < 3.4028e38)
      {
        if (v25 >= v26)
        {
          v25 = *(a4 + 28);
        }

        v27 = *(a3 + 72) << 7;
        v28 = *(a4 + 72) << 7;
        v29 = *(*(result + 32) + 64);
        if (v28 >= v27)
        {
          v30 = *(a3 + 72) << 7;
        }

        else
        {
          v30 = *(a4 + 72) << 7;
        }

        if (v28 > v27)
        {
          v27 = *(a4 + 72) << 7;
        }

        v31 = *(a2 + 8);
        v32 = *(a2 + 16);
        *(a2 + 16) = v32 + 1;
        v33 = v31 + 32 * v32;
        *v33 = v29;
        *(v33 + 8) = v7;
        *(v33 + 12) = v25;
        *(v33 + 16) = v30;
        *(v33 + 20) = v27;
      }
    }
  }

  return result;
}

uint64_t physx::Dy::writeBack1D(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = *(result + 32);
    v3 = *(v2 + 1);
    if (*(v2 + 1))
    {
      v4 = v2 + 112;
      v5 = 96;
      if (*v2 == 4)
      {
        v5 = 160;
      }

      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
      v9 = 0.0;
      v10 = 0.0;
      v11 = 0.0;
      do
      {
        if ((*(v4 + 28) & 2) != 0)
        {
          v12 = *(v4 + 24);
          v8 = v8 + (v12 * *(v4 - 64));
          v7 = v7 + (v12 * *(v4 - 60));
          v6 = v6 + (v12 * *(v4 - 56));
          v11 = v11 + (v12 * *v4);
          v10 = v10 + (v12 * *(v4 + 4));
          v9 = v9 + (v12 * *(v4 + 8));
        }

        v4 += v5;
        --v3;
      }

      while (v3);
    }

    else
    {
      v11 = 0.0;
      v10 = 0.0;
      v9 = 0.0;
      v8 = 0.0;
      v7 = 0.0;
      v6 = 0.0;
    }

    v14 = *(v2 + 20);
    v13 = *(v2 + 24);
    v15 = *(v2 + 16);
    v16 = v11 - ((v14 * v6) - (v13 * v7));
    v17 = v10 - ((v13 * v8) - (v15 * v6));
    v18 = v9 - ((v15 * v7) - (v14 * v8));
    *v1 = v8;
    *(v1 + 4) = v7;
    *(v1 + 8) = v6;
    *(v1 + 16) = v16;
    *(v1 + 20) = v17;
    *(v1 + 24) = v18;
    if (*(v2 + 3))
    {
      v19 = sqrtf(((v7 * v7) + (v8 * v8)) + (v6 * v6)) > *(v2 + 4) || sqrtf(((v17 * v17) + (v16 * v16)) + (v18 * v18)) > *(v2 + 8);
    }

    else
    {
      v19 = 0;
    }

    *(v1 + 12) = v19;
  }

  return result;
}

{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = *(result + 32);
    v3 = *(v2 + 1);
    if (*(v2 + 1))
    {
      v4 = 96;
      if (*v2 == 4)
      {
        v4 = 160;
      }

      v5 = (v2 + 260);
      v6 = 0;
      v7 = 0.0;
      v8 = 0.0;
      v9 = 0;
      do
      {
        if ((*v5 & 2) != 0)
        {
          v10 = *(v5 - 80);
          v11.i32[0] = vdup_lane_s32(v10, 1).u32[0];
          v12.i32[0] = v11.i32[0];
          v12.i32[1] = *(v5 - 2);
          v13 = *(v2 + 36);
          v14.i32[0] = v12.i32[1];
          v14.i32[1] = *(v5 - 21);
          v7 = v7 + (v12.f32[1] * v10.f32[0]);
          v9 = vadd_f32(v9, vmul_f32(v12, v14));
          v11.i32[1] = v14.i32[1];
          v15.i32[0] = vdup_lane_s32(v13, 1).u32[0];
          v15.i32[1] = *(v2 + 32);
          v6 = vadd_f32(v6, vmul_lane_f32(vadd_f32(*(v5 - 52), vmla_f32(vmul_f32(v13, vneg_f32(v11)), v15, v10)), v12, 1));
          v8 = v8 + (v12.f32[1] * (((v14.f32[1] * v13.f32[0]) - (v10.f32[0] * v15.f32[1])) + *(v5 - 11)));
        }

        v5 += v4;
        --v3;
      }

      while (v3);
    }

    else
    {
      v6 = 0;
      v8 = 0.0;
      v7 = 0.0;
      v9 = 0;
    }

    v16 = *(v2 + 16);
    v1->i32[0] = v9.i32[1];
    v17 = *(v2 + 20);
    v18.i32[0] = vdup_lane_s32(v17, 1).u32[0];
    v18.f32[1] = v16;
    v19 = vdup_lane_s32(v9, 0);
    v19.f32[0] = v7;
    v20 = vmla_f32(vmul_f32(v19, vneg_f32(v18)), v9, v17);
    v21 = vmuls_lane_f32(-v17.f32[0], v9, 1) + (v16 * v7);
    v22 = vsub_f32(v6, v20);
    v1->f32[1] = v7;
    v1[1].i32[0] = v9.i32[0];
    v1[2] = v22;
    v1[3].f32[0] = v8 - v21;
    if (*(v2 + 3))
    {
      v23 = sqrtf(((v7 * v7) + (v9.f32[1] * v9.f32[1])) + (v9.f32[0] * v9.f32[0])) > *(v2 + 4) || sqrtf((COERCE_FLOAT(vmul_f32(v22, v22).i32[1]) + (v22.f32[0] * v22.f32[0])) + ((v8 - v21) * (v8 - v21))) > *(v2 + 8);
    }

    else
    {
      v23 = 0;
    }

    v1[1].i32[1] = v23;
  }

  return result;
}

uint64_t **physx::Dy::solve1DBlock(uint64_t a1, unsigned int a2, double a3, double a4, double a5, double a6, float32x2_t a7, float32x2_t a8, float32x2_t a9, float32x2_t a10)
{
  if (a2 >= 2)
  {
    v12 = a2 - 1;
    v13 = a1;
    do
    {
      _X8 = *(v13 + 80);
      __asm
      {
        PRFM            #0, [X8]
        PRFM            #0, [X8,#0x80]
        PRFM            #0, [X8,#0x100]
      }

      physx::Dy::solve1D(v13, a3, a4, a5, a6, a7, a8, a9, a10);
      v13 += 48;
      --v12;
    }

    while (v12);
  }

  return physx::Dy::solve1D((a1 + 48 * (a2 - 1)), a3, a4, a5, a6, a7, a8, a9, a10);
}

float physx::Dy::solve1DConcludeBlock(uint64_t a1, unsigned int a2, double a3, double a4, double a5, double a6, float32x2_t a7, float32x2_t a8, float32x2_t a9, float32x2_t a10)
{
  if (a2 >= 2)
  {
    for (i = 1; i != a2; ++i)
    {
      v13 = a1 + 48 * i;
      _X8 = *(v13 + 32);
      __asm
      {
        PRFM            #0, [X8]
        PRFM            #0, [X8,#0x80]
        PRFM            #0, [X8,#0x100]
      }

      physx::Dy::solve1D((v13 - 48), a3, a4, a5, a6, a7, a8, a9, a10);
      v22 = *(v13 - 16);
      if (v22)
      {
        v23 = v22[1];
        if (v22[1])
        {
          v25 = *v22;
          v24 = v22 + 76;
          if (v25 == 4)
          {
            v26 = 160;
          }

          else
          {
            v26 = 96;
          }

          do
          {
            LODWORD(a3) = *v24;
            *(v24 - 4) = *v24;
            v24 = (v24 + v26);
            --v23;
          }

          while (v23);
        }
      }
    }
  }

  v27 = a1 + 48 * (a2 - 1);
  physx::Dy::solve1D(v27, a3, a4, a5, a6, a7, a8, a9, a10);
  v29 = *(v27 + 32);
  if (v29)
  {
    v30 = v29[1];
    if (v29[1])
    {
      v32 = *v29;
      v31 = (v29 + 76);
      v33 = 96;
      if (v32 == 4)
      {
        v33 = 160;
      }

      do
      {
        result = *v31;
        *(v31 - 4) = *v31;
        v31 = (v31 + v33);
        --v30;
      }

      while (v30);
    }
  }

  return result;
}

uint64_t physx::Dy::solve1DBlockWriteBack(uint64_t a1, unsigned int a2, double a3, double a4, double a5, double a6, float32x2_t a7, float32x2_t a8, float32x2_t a9, float32x2_t a10)
{
  if (a2 >= 2)
  {
    v12 = a2 - 1;
    v13 = a1;
    do
    {
      _X8 = *(v13 + 80);
      __asm
      {
        PRFM            #0, [X8]
        PRFM            #0, [X8,#0x80]
        PRFM            #0, [X8,#0x100]
      }

      physx::Dy::solve1D(v13, a3, a4, a5, a6, a7, a8, a9, a10);
      physx::Dy::writeBack1D(v13);
      v13 += 48;
      --v12;
    }

    while (v12);
  }

  v22 = (a1 + 48 * (a2 - 1));
  physx::Dy::solve1D(v22, a3, a4, a5, a6, a7, a8, a9, a10);

  return physx::Dy::writeBack1D(v22);
}

uint64_t **physx::Dy::solveContactBlock(uint64_t a1, unsigned int a2, _BYTE *a3, double a4, double a5, double a6, double a7, double a8, float32x2_t a9, float32x2_t a10)
{
  if (a2 >= 2)
  {
    v13 = a2 - 1;
    v14 = a1;
    do
    {
      _X8 = *(v14 + 80);
      __asm
      {
        PRFM            #0, [X8]
        PRFM            #0, [X8,#0x80]
        PRFM            #0, [X8,#0x100]
      }

      physx::Dy::solveContact(v14, a3, a4, a5, a6, a7, a8, a9, a10);
      v14 += 48;
      --v13;
    }

    while (v13);
  }

  return physx::Dy::solveContact((a1 + 48 * (a2 - 1)), a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t physx::Dy::solveContactConcludeBlock(uint64_t a1, unsigned int a2, _BYTE *a3, double a4, double a5, double a6, double a7, double a8, float32x2_t a9, float32x2_t a10)
{
  if (a2 >= 2)
  {
    v13 = a2 - 1;
    v14 = a1;
    do
    {
      _X8 = *(v14 + 80);
      __asm
      {
        PRFM            #0, [X8]
        PRFM            #0, [X8,#0x80]
        PRFM            #0, [X8,#0x100]
      }

      physx::Dy::solveContact(v14, a3, a4, a5, a6, a7, a8, a9, a10);
      physx::Dy::concludeContact(v14);
      v14 += 48;
      --v13;
    }

    while (v13);
  }

  v23 = (a1 + 48 * (a2 - 1));
  physx::Dy::solveContact(v23, a3, a4, a5, a6, a7, a8, a9, a10);

  return physx::Dy::concludeContact(v23);
}

uint64_t physx::Dy::solveContactBlockWriteBack(uint64_t a1, unsigned int a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, float32x2_t a9, float32x2_t a10)
{
  if (a2 >= 2)
  {
    v13 = a2 - 1;
    v14 = a1;
    do
    {
      _X8 = *(v14 + 80);
      __asm
      {
        PRFM            #0, [X8]
        PRFM            #0, [X8,#0x80]
        PRFM            #0, [X8,#0x100]
      }

      v23 = *(a3 + 24);
      v24 = v23 + 112 * *(v14 + 20);
      v25 = v23 + 112 * *(v14 + 24);
      physx::Dy::solveContact(v14, a3, a4, a5, a6, a7, a8, a9, a10);
      physx::Dy::writeBackContact(v14, a3, v24, v25);
      v14 += 48;
      --v13;
    }

    while (v13);
  }

  v26 = *(a3 + 24);
  v27 = a1 + 48 * (a2 - 1);
  v28 = v26 + 112 * *(v27 + 20);
  v29 = v26 + 112 * *(v27 + 24);
  physx::Dy::solveContact(v27, a3, a4, a5, a6, a7, a8, a9, a10);
  result = physx::Dy::writeBackContact(v27, a3, v28, v29);
  v31 = *(a3 + 16);
  if (v31 > *(a3 + 20) - 4)
  {
    add = atomic_fetch_add(*(a3 + 48), v31);
    v33 = *(a3 + 16);
    if (v33)
    {
      v34 = 0;
      v35 = 0;
      v36 = add + v31 - v33;
      do
      {
        v37 = (*(a3 + 8) + v34);
        v38 = (*(a3 + 32) + 32 * (v36 + v35));
        v39 = v37[1];
        *v38 = *v37;
        v38[1] = v39;
        ++v35;
        v34 += 32;
      }

      while (v35 < *(a3 + 16));
    }

    *(a3 + 16) = 0;
  }

  return result;
}

int32x4_t *physx::Dy::solveContact_BStaticBlock(int32x4_t *a1, unsigned int a2, _BYTE *a3, double a4, double a5, double a6, float32x2_t a7)
{
  if (a2 >= 2)
  {
    v10 = a2 - 1;
    v11 = a1;
    do
    {
      _X8 = v11[5].i64[0];
      __asm
      {
        PRFM            #0, [X8]
        PRFM            #0, [X8,#0x80]
        PRFM            #0, [X8,#0x100]
      }

      physx::Dy::solveContact_BStatic(v11, a3, a4, a5, a6, a7);
      v11 += 3;
      --v10;
    }

    while (v10);
  }

  return physx::Dy::solveContact_BStatic(&a1[3 * a2 - 3], a3, a4, a5, a6, a7);
}

uint64_t physx::Dy::solveContact_BStaticConcludeBlock(int32x4_t *a1, unsigned int a2, _BYTE *a3, double a4, double a5, double a6, float32x2_t a7)
{
  if (a2 >= 2)
  {
    v10 = a2 - 1;
    v11 = a1;
    do
    {
      _X8 = v11[5].i64[0];
      __asm
      {
        PRFM            #0, [X8]
        PRFM            #0, [X8,#0x80]
        PRFM            #0, [X8,#0x100]
      }

      physx::Dy::solveContact_BStatic(v11, a3, a4, a5, a6, a7);
      physx::Dy::concludeContact(v11);
      v11 += 3;
      --v10;
    }

    while (v10);
  }

  v20 = &a1[3 * a2 - 3];
  physx::Dy::solveContact_BStatic(v20, a3, a4, a5, a6, a7);

  return physx::Dy::concludeContact(v20);
}

uint64_t physx::Dy::solveContact_BStaticBlockWriteBack(int32x4_t *a1, unsigned int a2, uint64_t a3, double a4, double a5, double a6, float32x2_t a7)
{
  if (a2 >= 2)
  {
    v10 = a2 - 1;
    v11 = a1;
    do
    {
      _X8 = v11[5].i64[0];
      __asm
      {
        PRFM            #0, [X8]
        PRFM            #0, [X8,#0x80]
        PRFM            #0, [X8,#0x100]
      }

      v20 = *(a3 + 24);
      v21 = v20 + 112 * v11[1].u32[1];
      v22 = v20 + 112 * v11[1].u32[2];
      physx::Dy::solveContact_BStatic(v11, a3, a4, a5, a6, a7);
      physx::Dy::writeBackContact(v11, a3, v21, v22);
      v11 += 3;
      --v10;
    }

    while (v10);
  }

  v23 = *(a3 + 24);
  v24 = &a1[3 * a2 - 3];
  v25 = v23 + 112 * v24[1].u32[1];
  v26 = v23 + 112 * v24[1].u32[2];
  physx::Dy::solveContact_BStatic(v24, a3, a4, a5, a6, a7);
  result = physx::Dy::writeBackContact(v24, a3, v25, v26);
  v28 = *(a3 + 16);
  if (v28 > *(a3 + 20) - 4)
  {
    add = atomic_fetch_add(*(a3 + 48), v28);
    v30 = *(a3 + 16);
    if (v30)
    {
      v31 = 0;
      v32 = 0;
      v33 = add + v28 - v30;
      do
      {
        v34 = (*(a3 + 8) + v31);
        v35 = (*(a3 + 32) + 32 * (v33 + v32));
        v36 = v34[1];
        *v35 = *v34;
        v35[1] = v36;
        ++v32;
        v31 += 32;
      }

      while (v32 < *(a3 + 16));
    }

    *(a3 + 16) = 0;
  }

  return result;
}

float32x4_t physx::Dy::solveExt1D(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, float32x4_t *a7, float32x4_t *a8, float32x4_t *a9)
{
  v9 = *(a1 + 32);
  if (*(v9 + 1))
  {
    v10 = 0;
    v11 = *a5;
    _X11 = v9 + 128;
    do
    {
      __asm { PRFM            #0, [X11,#0x50] }

      v19 = *(_X11 - 80);
      v18 = *(_X11 - 64);
      v20 = vdup_laneq_s32(v19, 3);
      v19.i32[3] = 0;
      v18.i32[3] = 0;
      v21 = *(_X11 - 48);
      v21.i32[3] = 0;
      v22 = *(_X11 - 32);
      v22.i32[3] = 0;
      v23 = vsubq_f32(vmlaq_f32(vmulq_f32(v21, *a4), v19, *a2), vmlaq_f32(vmulq_f32(v11, v22), v18, *a3));
      v23.i64[0] = vpaddq_f32(v23, v23).u64[0];
      *v23.f32 = vmin_f32(vdup_lane_s32(*_X11, 1), vmax_f32(vdup_lane_s32(*_X11, 0), vmla_laneq_f32(vmla_laneq_f32(v20, vpadd_f32(*v23.f32, *v23.f32), *(_X11 - 48), 3), vdup_laneq_s32(*_X11, 2), *(_X11 - 32), 3)));
      v20.i32[0] = vsub_f32(*v23.f32, *&vextq_s8(*_X11, *_X11, 8uLL)).u32[0];
      *(_X11 + 8) = v23.i32[0];
      v24 = vmlaq_n_f32(*a6, v19, v20.f32[0]);
      v24.i64[1] = vextq_s8(v24, v24, 8uLL).u32[0];
      *a6 = v24;
      v25 = vmlaq_n_f32(*a8, v21, v20.f32[0]);
      v25.i64[1] = vextq_s8(v25, v25, 8uLL).u32[0];
      *a8 = v25;
      v26 = vmlaq_n_f32(*a7, v18, v20.f32[0]);
      v26.i64[1] = vextq_s8(v26, v26, 8uLL).u32[0];
      *a7 = v26;
      v27 = vmlaq_n_f32(*a9, v22, v20.f32[0]);
      v27.i64[1] = vextq_s8(v27, v27, 8uLL).u32[0];
      *a9 = v27;
      v28 = vmlaq_n_f32(*a2, *(_X11 + 16), v20.f32[0]);
      v28.i64[1] = vextq_s8(v28, v28, 8uLL).u32[0];
      *a2 = v28;
      v29 = vmlaq_n_f32(*a4, *(_X11 + 32), v20.f32[0]);
      v29.i64[1] = vextq_s8(v29, v29, 8uLL).u32[0];
      *a4 = v29;
      v30 = vmlaq_n_f32(*a3, *(_X11 + 48), v20.f32[0]);
      v30.i64[1] = vextq_s8(v30, v30, 8uLL).u32[0];
      *a3 = v30;
      v11 = vmlaq_n_f32(*a5, *(_X11 + 64), v20.f32[0]);
      v11.i64[1] = vextq_s8(v11, v11, 8uLL).u32[0];
      *a5 = v11;
      ++v10;
      _X11 += 160;
    }

    while (v10 < *(v9 + 1));
  }

  v31 = vmulq_n_f32(*a6, *(v9 + 32));
  v31.i32[3] = 0;
  *a6 = v31;
  v32 = vmulq_n_f32(*a7, *(v9 + 40));
  v32.i32[3] = 0;
  *a7 = v32;
  v33 = vmulq_n_f32(*a8, *(v9 + 36));
  v33.i32[3] = 0;
  *a8 = v33;
  result = vmulq_n_f32(*a9, *(v9 + 44));
  result.i32[3] = 0;
  *a9 = result;
  return result;
}

__n128 physx::Dy::solveExt1D(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (v4 == *(a1 + 8))
  {
    (*(*v4 + 304))(v4, *(a1 + 16), *(a1 + 18), &v25, v24);
    v29 = v26;
    v30 = v25;
    v7 = v24[0];
    v8 = v24[1];
LABEL_8:
    v27 = v8;
    v28 = v7;
    goto LABEL_10;
  }

  if (*(a1 + 16) == 0xFFFF)
  {
    v5.i64[0] = *v4;
    v5.i64[1] = v4[2];
    v6.i64[0] = *(v4 + 2);
    v6.i64[1] = v4[6];
  }

  else
  {
    (*(*v4 + 312))(&v25);
    v5 = v25;
    v6 = v26;
  }

  v29 = v6;
  v30 = v5;
  if (*(a1 + 18) != 0xFFFF)
  {
    (*(**(a1 + 8) + 312))(&v25);
    v7 = v25;
    v8 = v26;
    goto LABEL_8;
  }

  v9 = *(a1 + 8);
  v10.i64[0] = *v9;
  v10.i64[1] = *(v9 + 8);
  v28 = v10;
  v10.i64[0] = *(v9 + 16);
  v10.i64[1] = *(v9 + 24);
  v27 = v10;
LABEL_10:
  v25 = 0u;
  v23 = 0u;
  v24[0] = 0u;
  v22 = 0u;
  v11 = physx::Dy::solveExt1D(a1, &v30, &v28, &v29, &v27, &v25, v24, &v23, &v22);
  v12 = *a1;
  v13 = *(a1 + 16);
  if (*a1 == *(a1 + 8))
  {
    (*(*v12 + 264))(v12, v13, &v25, &v23, *(a1 + 18), v24, &v22, *(a2 + 56), v11, *(a2 + 64));
  }

  else
  {
    if (v13 == 0xFFFF)
    {
      v15 = v29;
      v16 = v30.i32[2];
      *v12 = v30.i64[0];
      v12[2] = v16;
      v17 = *a1;
      *(v17 + 2) = v15.i64[0];
      v17[6] = v15.i32[2];
    }

    else
    {
      (*(*v12 + 256))(v12, v13, *(a2 + 56), *(a2 + 64), v25, v23);
    }

    v18 = *(a1 + 18);
    v19 = *(a1 + 8);
    if (v18 == 0xFFFF)
    {
      result = v27;
      v20 = v28.i32[2];
      *v19 = v28.i64[0];
      v19[2] = v20;
      v21 = *(a1 + 8);
      *(v21 + 16) = result.n128_u64[0];
      *(v21 + 24) = result.n128_u32[2];
    }

    else
    {
      (*(*v19 + 256))(v19, v18, *(a2 + 56), *(a2 + 64), v24[0], v22);
    }
  }

  return result;
}

float32x2_t physx::Dy::solveExtContacts(float32x4_t *a1, unsigned int a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, float32x4_t *a7, float32x4_t *a8, double a9, double a10, double a11, double a12, float32x4_t *a13, float32x4_t *a14, float32x4_t *a15, float *a16)
{
  if (a2)
  {
    v16 = a16;
    v17 = a2;
    _X12 = a1 + 4;
    result = 0;
    v20 = a16;
    do
    {
      __asm { PRFM            #0, [X12,#0x30] }

      v27 = _X12[-4];
      v26 = _X12[-3];
      v28 = vld1_dup_f32(v20++);
      LODWORD(a12) = _X12[-2].i32[0];
      v29 = vsubq_f32(vmlaq_f32(vmulq_f32(v27, *a5), *a3, *a4), vmlaq_f32(vmulq_f32(v26, *a7), *a3, *a6));
      v29.i64[0] = vpaddq_f32(v29, v29).u64[0];
      v30 = &_X12[-2].f32[1];
      v31 = vld1_dup_f32(v30);
      a12 = COERCE_DOUBLE(vmax_f32(vmls_lane_f32(v31, vpadd_f32(*v29.f32, *v29.f32), *&a12, 0), vneg_f32(v28)));
      v32 = vmlaq_n_f32(*a4, _X12[-1], *&a12);
      v32.i64[1] = vextq_s8(v32, v32, 8uLL).u32[0];
      *a4 = v32;
      v33 = vmlaq_n_f32(*a5, *_X12, *&a12);
      v33.i64[1] = vextq_s8(v33, v33, 8uLL).u32[0];
      *a5 = v33;
      v34 = vmlaq_n_f32(*a6, _X12[1], *&a12);
      v34.i64[1] = vextq_s8(v34, v34, 8uLL).u32[0];
      *a6 = v34;
      v35 = vmlaq_n_f32(*a7, _X12[2], *&a12);
      v35.i64[1] = vextq_s8(v35, v35, 8uLL).u32[0];
      *a7 = v35;
      v36 = vmlaq_n_f32(*a8, *a3, *&a12);
      v36.i64[1] = vextq_s8(v36, v36, 8uLL).u32[0];
      *a8 = v36;
      v37 = vmlaq_n_f32(*a13, v27, *&a12);
      v37.i64[1] = vextq_s8(v37, v37, 8uLL).u32[0];
      *a13 = v37;
      v38 = vmlaq_n_f32(*a14, *a3, *&a12);
      v38.i64[1] = vextq_s8(v38, v38, 8uLL).u32[0];
      *a14 = v38;
      v39 = vmlaq_n_f32(*a15, v26, *&a12);
      v39.i64[1] = vextq_s8(v39, v39, 8uLL).u32[0];
      *a15 = v39;
      v40 = vadd_f32(v28, *&a12);
      *v16 = v40.f32[0];
      result = vadd_f32(result, v40);
      _X12 += 7;
      v16 = v20;
      --v17;
    }

    while (v17);
  }

  else
  {
    return 0;
  }

  return result;
}

double physx::Dy::solveExtContact(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, float32x4_t *a7, float32x4_t *a8, double result, __n128 a10, int8x16_t a11, int8x16_t a12, float32x4_t *a13, char a14)
{
  if (*(a1 + 30))
  {
    _X26 = *(a1 + 32);
    v63 = _X26 + 16 * *(a1 + 30);
    do
    {
      v19 = *(_X26 + 2);
      v20 = *(_X26 + 3);
      __asm { PRFM            #0, [X26,#0x50] }

      v26 = 112 * v19;
      v27 = (4 * v19 + 12) & 0x7F0;
      _X19 = _X26 + 80 + 112 * v19 + v27;
      v71 = 0u;
      v72[0] = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = *(_X26 + 32);
      v29 = v67;
      v29.i32[3] = 0;
      v68 = v29;
      v30 = physx::Dy::solveExtContacts((_X26 + 80), v19, &v68, a2, a4, a3, a5, v72, *v67.i64, a10.n128_f64[0], *a11.i64, *a12.i64, &v70, &v71, &v69, (_X26 + 80 + 112 * v19));
      v31 = v71;
      v32 = v72[0];
      a10 = v69;
      v33 = v70;
      if (a14 && v20)
      {
        v34 = vmax_f32(v30, vdup_laneq_s32(v67, 3));
        __asm { PRFM            #0, [X19] }

        v36 = *(_X26 + 16);
        v37 = vmul_n_f32(v34, v36.f32[0]);
        v38 = vmul_lane_f32(v34, v36, 1);
        v39 = vneg_f32(v38);
        v40 = vneg_f32(v37);
        _X8 = _X26 + v26 + v27 + 112;
        v42 = 0uLL;
        v43 = v20;
        do
        {
          __asm { PRFM            #0, [X8,#0x60] }

          v45 = *(_X8 - 32);
          v46 = *_X8;
          v47 = *(_X8 - 16);
          v47.i32[3] = 0;
          v48 = vdup_laneq_s32(v45, 3);
          v45.i32[3] = 0;
          v46.i32[3] = 0;
          v49 = (_X8 + 16);
          v50 = vld1_dup_f32(v49);
          v51 = vsubq_f32(vmlaq_f32(vmulq_f32(v47, *a4), v45, *a2), vmlaq_f32(vmulq_f32(v46, *a5), v45, *a3));
          v51.i64[0] = vpaddq_f32(v51, v51).u64[0];
          v52 = vmls_laneq_f32(vmls_laneq_f32(v48, vsub_f32(vdup_laneq_s32(*_X8, 3), v50), *(_X8 - 16), 3), vpadd_f32(*v51.f32, *v51.f32), *(_X8 - 16), 3);
          v53 = vcgt_f32(v40, v52);
          *v51.f32 = vcgt_f32(v52, v37);
          v54 = vbsl_s8(vdup_lane_s32(v53, 0), vmax_f32(v39, v52), vbsl_s8(vdup_lane_s32(*v51.f32, 0), vmin_f32(v38, v52), v52));
          v48.i32[0] = vsub_f32(v54, v48).u32[0];
          v55 = vmlaq_n_f32(*a2, *(_X8 + 32), v48.f32[0]);
          v55.i64[1] = vextq_s8(v55, v55, 8uLL).u32[0];
          *a2 = v55;
          v56 = vmlaq_n_f32(*a4, *(_X8 + 48), v48.f32[0]);
          v56.i64[1] = vextq_s8(v56, v56, 8uLL).u32[0];
          *a4 = v56;
          v57 = vmlaq_n_f32(*a3, *(_X8 + 64), v48.f32[0]);
          v57.i64[1] = vextq_s8(v57, v57, 8uLL).u32[0];
          *a3 = v57;
          v58 = vmlaq_n_f32(*a5, *(_X8 + 80), v48.f32[0]);
          v42 = vorrq_s8(vdupq_lane_s32(vorr_s8(v53, *v51.f32), 0), v42);
          v58.i64[1] = vextq_s8(v58, v58, 8uLL).u32[0];
          *a5 = v58;
          v32 = vmlaq_n_f32(v32, v45, v48.f32[0]);
          v32.i64[1] = vextq_s8(v32, v32, 8uLL).u32[0];
          v33 = vmlaq_n_f32(v33, v47, v48.f32[0]);
          v33.i64[1] = vextq_s8(v33, v33, 8uLL).u32[0];
          v31 = vmlaq_n_f32(v31, v45, v48.f32[0]);
          v31.i64[1] = vextq_s8(v31, v31, 8uLL).u32[0];
          a10 = vmlaq_n_f32(a10, v46, v48.f32[0]);
          a10.n128_u64[1] = vextq_s8(a10, a10, 8uLL).u32[0];
          v59 = *(_X8 - 32);
          HIDWORD(v59) = v54.i32[1];
          *(_X8 - 32) = v59;
          _X8 += 128;
          --v43;
        }

        while (v43);
        *(_X26 + 52) = v42.i32[0];
      }

      v60 = vmlaq_laneq_f32(*a6, v32, *(_X26 + 16), 2);
      v60.i64[1] = vextq_s8(v60, v60, 8uLL).u32[0];
      *a6 = v60;
      v61 = vmlaq_n_f32(*a8, v33, *(_X26 + 4));
      v61.i64[1] = vextq_s8(v61, v61, 8uLL).u32[0];
      *a8 = v61;
      a12 = vmlsq_laneq_f32(*a7, v31, *(_X26 + 16), 3);
      v62 = vextq_s8(a12, a12, 8uLL).u32[0];
      a12.i64[1] = v62.u32[0];
      *a7 = a12;
      v62.i32[0] = *(_X26 + 8);
      a11 = vmlsq_lane_f32(*a13, a10, v62, 0);
      *&result = vextq_s8(a11, a11, 8uLL).u32[0];
      a11.i64[1] = LODWORD(result);
      *a13 = a11;
      _X26 = _X19 + (v20 << 7);
    }

    while (_X26 < v63);
  }

  return result;
}

__n128 physx::Dy::solveExtContact(uint64_t a1, uint64_t a2, double a3, double a4, int8x16_t a5, int8x16_t a6)
{
  v8 = *a1;
  if (v8 == *(a1 + 8))
  {
    (*(*v8 + 304))(v8, *(a1 + 16), *(a1 + 18), &v28, v27);
    v32 = v29;
    v33 = v28;
    v11 = v27[0];
    v10 = v27[1];
LABEL_8:
    v30 = v10;
    v31 = v11;
    goto LABEL_10;
  }

  if (*(a1 + 16) == 0xFFFF)
  {
    v9.i64[0] = *v8;
    v9.i64[1] = v8[2];
    v10.n128_u64[0] = *(v8 + 2);
    v10.n128_u64[1] = v8[6];
  }

  else
  {
    (*(*v8 + 312))(&v28);
    v9 = v28;
    v10 = v29;
  }

  v32 = v10;
  v33 = v9;
  if (*(a1 + 18) != 0xFFFF)
  {
    (*(**(a1 + 8) + 312))(&v28);
    v11 = v28;
    v10 = v29;
    goto LABEL_8;
  }

  v12 = *(a1 + 8);
  v13.i64[0] = *v12;
  v13.i64[1] = *(v12 + 8);
  v31 = v13;
  v13.i64[0] = *(v12 + 16);
  v13.i64[1] = *(v12 + 24);
  v30 = v13;
LABEL_10:
  v28 = 0u;
  v26 = 0u;
  v27[0] = 0u;
  v25 = 0u;
  v14 = physx::Dy::solveExtContact(a1, &v33, &v31, &v32, &v30, &v28, v27, &v26, 0.0, v10, a5, a6, &v25, *a2);
  v15 = *a1;
  v16 = *(a1 + 16);
  if (*a1 == *(a1 + 8))
  {
    (*(*v15 + 264))(v15, v16, &v28, &v26, *(a1 + 18), v27, &v25, *(a2 + 56), v14, *(a2 + 64));
  }

  else
  {
    if (v16 == 0xFFFF)
    {
      v18 = v32;
      v19 = v33.i32[2];
      *v15 = v33.i64[0];
      v15[2] = v19;
      v20 = *a1;
      *(v20 + 2) = v18.i64[0];
      v20[6] = v18.i32[2];
    }

    else
    {
      (*(*v15 + 256))(v15, v16, *(a2 + 56), *(a2 + 64), v28, v26);
    }

    v21 = *(a1 + 18);
    v22 = *(a1 + 8);
    if (v21 == 0xFFFF)
    {
      result = v30;
      v23 = v31.i32[2];
      *v22 = v31.i64[0];
      v22[2] = v23;
      v24 = *(a1 + 8);
      *(v24 + 16) = result.n128_u64[0];
      *(v24 + 24) = result.n128_u32[2];
    }

    else
    {
      (*(*v22 + 256))(v22, v21, *(a2 + 56), *(a2 + 64), v27[0], v25);
    }
  }

  return result;
}

void physx::Dy::solveExtContactBlock(uint64_t a1, unsigned int a2, uint64_t a3, double a4, double a5, int8x16_t a6, int8x16_t a7)
{
  if (a2)
  {
    v9 = a2;
    do
    {
      *&a4 = physx::Dy::solveExtContact(a1, a3, a4, a5, a6, a7).n128_u64[0];
      a1 += 48;
      --v9;
    }

    while (v9);
  }
}

uint64_t physx::Dy::solveExtContactConcludeBlock(uint64_t result, unsigned int a2, uint64_t a3, double a4, double a5, int8x16_t a6, int8x16_t a7)
{
  if (a2)
  {
    v8 = result;
    v9 = a2;
    do
    {
      physx::Dy::solveExtContact(v8, a3, a4, a5, a6, a7);
      result = physx::Dy::concludeContact(v8);
      v8 += 48;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t physx::Dy::solveExtContactBlockWriteBack(uint64_t result, unsigned int a2, uint64_t a3, double a4, double a5, int8x16_t a6, int8x16_t a7)
{
  if (a2)
  {
    v8 = result;
    v9 = a2;
    do
    {
      if (*(v8 + 16) == -1)
      {
        v10 = *(v8 + 20);
      }

      else
      {
        v10 = 0;
      }

      if (*(v8 + 18) == -1)
      {
        v11 = *(v8 + 24);
      }

      else
      {
        v11 = 0;
      }

      v12 = *(a3 + 24);
      v13 = v12 + 112 * v10;
      v14 = v12 + 112 * v11;
      physx::Dy::solveExtContact(v8, a3, a4, a5, a6, a7);
      result = physx::Dy::writeBackContact(v8, a3, v13, v14);
      v8 += 48;
      --v9;
    }

    while (v9);
  }

  v15 = *(a3 + 16);
  if (v15)
  {
    add = atomic_fetch_add(*(a3 + 48), v15);
    v17 = *(a3 + 16);
    if (v17)
    {
      v18 = 0;
      v19 = 0;
      v20 = add + v15 - v17;
      do
      {
        v21 = (*(a3 + 8) + v18);
        v22 = (*(a3 + 32) + 32 * (v20 + v19));
        v23 = v21[1];
        *v22 = *v21;
        v22[1] = v23;
        ++v19;
        v18 += 32;
      }

      while (v19 < *(a3 + 16));
    }

    *(a3 + 16) = 0;
  }

  return result;
}

void physx::Dy::solveExt1DBlock(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = a2;
    do
    {
      physx::Dy::solveExt1D(a1, a3);
      a1 += 48;
      --v5;
    }

    while (v5);
  }
}

void physx::Dy::solveExt1DConcludeBlock(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = 0;
    v6 = a2;
    do
    {
      physx::Dy::solveExt1D(a1 + 48 * v5, a3);
      v7 = *(a1 + 48 * v5 + 32);
      if (v7)
      {
        v8 = v7[1];
        if (v7[1])
        {
          v10 = *v7;
          v9 = v7 + 76;
          if (v10 == 4)
          {
            v11 = 160;
          }

          else
          {
            v11 = 96;
          }

          do
          {
            *(v9 - 4) = *v9;
            v9 = (v9 + v11);
            --v8;
          }

          while (v8);
        }
      }

      ++v5;
    }

    while (v5 != v6);
  }
}

uint64_t physx::Dy::solveExt1DBlockWriteBack(uint64_t result, unsigned int a2, uint64_t a3)
{
  if (a2)
  {
    v4 = result;
    v5 = a2;
    do
    {
      physx::Dy::solveExt1D(v4, a3);
      result = physx::Dy::writeBack1D(v4);
      v4 += 48;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t physx::Dy::writeBackContact4_Block(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, double a5, float32x4_t a6)
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = *(result + 30);
  v8 = *(result + 32);
  v7 = *(result + 40);
  v9 = *(result + 88);
  v10 = *(result + 136);
  v11 = *(result + 184);
  if (*v8 == 7)
  {
    v12 = 144;
  }

  else
  {
    v12 = 96;
  }

  v37 = 0;
  v13 = 0uLL;
  if (v6)
  {
    v14 = v8 + 16 * v6;
    do
    {
      v15 = v8 + 208;
      v16 = *(v8 + 1);
      v17 = *(v8 + 2);
      if (*(v8 + 3))
      {
        v18 = 16 * v16;
      }

      else
      {
        v18 = 0;
      }

      if (*(v8 + 2))
      {
        v19 = 9;
      }

      else
      {
        v19 = 0;
      }

      a6.i32[0] = *(v8 + 4);
      *a6.f32 = vuzp1_s8((vmovl_u8(*a6.f32).u64[0] & 0xFF01FF01FF01FF01), *v13.f32);
      v37 = a6.i32[0];
      if (v16)
      {
        for (i = 0; i != v16; ++i)
        {
          a6 = *(v15 + 16 * i);
          if (v7 && i < *(v8 + 8))
          {
            *v7++ = a6.i32[0];
          }

          if (v9 && i < *(v8 + 9))
          {
            *v9++ = a6.i32[1];
          }

          if (v10 && i < *(v8 + 10))
          {
            *v10++ = a6.i32[2];
          }

          if (v11 && i < *(v8 + 11))
          {
            *v11++ = a6.i32[3];
          }

          v13 = vaddq_f32(v13, a6);
        }
      }

      v21 = (v15 + 16 * v16 + v18 + (v12 * v16));
      if (v17)
      {
        v22 = 0;
        a6 = *v21;
        v38 = *v21;
        v23 = v8 + 12;
        do
        {
          if (*(v23 + v22) && v38.i32[v22])
          {
            *v21[1].i64[v22] = 1;
          }

          ++v22;
        }

        while (v22 != 4);
      }

      v8 = &v21[v19 + v17] + (v12 * v17);
    }

    while (v8 < v14);
    v8 = *(result + 32);
  }

  v24 = 0;
  v38 = v13;
  v25 = (result + 18);
  do
  {
    if (*(&v37 + v24) == 1 && *(v25 - 1) == -1 && *v25 == -1)
    {
      v26 = v38.f32[v24];
      if (v26 != 0.0)
      {
        v27 = *(a3 + 8 * v24);
        v28 = *(v27 + 28);
        v29 = *(a4 + 8 * v24);
        v30 = *(v29 + 28);
        if (v28 < 3.4028e38 || v30 < 3.4028e38)
        {
          if (v28 >= v30)
          {
            v28 = *(v29 + 28);
          }

          v32 = *(v27 + 72) << 7;
          v33 = *(v29 + 72) << 7;
          v34 = *(v8 + 176 + 8 * v24);
          v35 = *(a2 + 16);
          *(a2 + 16) = v35 + 1;
          result = *(a2 + 8) + 32 * v35;
          *result = v34;
          if (v33 >= v32)
          {
            v36 = v32;
          }

          else
          {
            v36 = v33;
          }

          if (v33 <= v32)
          {
            v33 = v32;
          }

          *(result + 8) = v26;
          *(result + 12) = v28;
          *(result + 16) = v36;
          *(result + 20) = v33;
        }
      }
    }

    ++v24;
    v25 += 24;
  }

  while (v24 != 4);
  return result;
}

int32x4_t **physx::Dy::solveContact4_Block(int32x4_t **result, _BYTE *a2)
{
  v3 = *result;
  v2 = result[1];
  v5 = result[6];
  v4 = result[7];
  v7 = result[12];
  v6 = result[13];
  v8 = **result;
  v9 = (*result)[1];
  v10 = v7[1];
  v11 = vzip1q_s32(v8, *v7);
  v12 = vzip2q_s32(v8, *v7);
  v14 = result[18];
  v13 = result[19];
  v15 = v5[1];
  v16 = v14[1];
  v17 = vzip1q_s32(*v5, *v14);
  v18 = vzip2q_s32(*v5, *v14);
  v19 = vzip1q_s32(v11, v17);
  v20 = vzip2q_s32(v11, v17);
  v21 = vzip1q_s32(v12, v18);
  v149 = vzip2q_s32(v12, v18);
  v22 = v2[1];
  v23 = v6[1];
  v24 = vzip1q_s32(*v2, *v6);
  v25 = vzip2q_s32(*v2, *v6);
  v26 = v4[1];
  v27 = v13[1];
  v28 = vzip1q_s32(*v4, *v13);
  v29 = vzip2q_s32(*v4, *v13);
  v30 = vzip1q_s32(v24, v28);
  v31 = vzip2q_s32(v24, v28);
  v32 = vzip1q_s32(v25, v29);
  v151 = vzip2q_s32(v25, v29);
  v33 = vzip1q_s32(v9, v10);
  v34 = vzip2q_s32(v9, v10);
  v35 = vzip1q_s32(v15, v16);
  v36 = vzip2q_s32(v15, v16);
  v37 = vzip1q_s32(v33, v35);
  v38 = vzip2q_s32(v33, v35);
  v39 = vzip1q_s32(v34, v36);
  v148 = vzip2q_s32(v34, v36);
  v40 = vzip1q_s32(v22, v23);
  v41 = vzip2q_s32(v22, v23);
  v42 = vzip1q_s32(v26, v27);
  v43 = vzip2q_s32(v26, v27);
  v44 = vzip1q_s32(v40, v42);
  v45 = vzip2q_s32(v40, v42);
  v46 = vzip1q_s32(v41, v43);
  v150 = vzip2q_s32(v41, v43);
  v47 = result[4];
  v48 = *(result + 15);
  v43.i64[0] = 0x80000000800000;
  v43.i64[1] = 0x80000000800000;
  v155 = vnegq_f32(v43);
  if (v48)
  {
    v49 = &v47[v48];
    v50 = v47[4];
    v51 = v47[5];
    v52 = vaddq_f32(v50, v51);
    _X4 = v47 + 22;
    v152 = v52;
    do
    {
      v54 = v47->u8[1];
      v55 = v47->u8[2];
      v56 = v47->i8[3];
      if (v56)
      {
        v57 = &v47[9 * v47->u8[1] + 13 + v47->u8[1]];
      }

      else
      {
        v57 = &v155;
      }

      if (v47->i8[3])
      {
        v58 = v54;
      }

      else
      {
        v58 = 0;
      }

      if (v47->i8[2])
      {
        v59 = 9;
      }

      else
      {
        v59 = 0;
      }

      v60 = v47[6];
      v61 = v47[7];
      v62 = v47[8];
      v153 = v47[9];
      v154 = v47[10];
      if (v47->i8[1])
      {
        v63 = 0;
        v64 = vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v19, v62), v47[9], v20), v47[10], v21), vmlaq_f32(vmlaq_f32(vmulq_f32(v30, v62), v47[9], v31), v47[10], v32));
        v65 = &v47[v54 + 21];
        v66 = 0uLL;
        _X26 = _X4;
        v68 = 0uLL;
        do
        {
          __asm
          {
            PRFM            #0, [X26,#0x40]
            PRFM            #0, [X26,#0x80]
          }

          _X4 = _X26 + 12;
          __asm { PRFM            #0, [X26,#0xC0] }

          v76 = &v47[v63 + 21];
          if (v56)
          {
            v77 = v63;
          }

          else
          {
            v77 = 0;
          }

          v78 = v65[-8];
          v79 = v65[-7];
          v80 = v65[-2];
          v81 = v65[-1];
          v82 = v65[-6];
          v83 = *(v76 - 128);
          v84 = vminq_f32(vaddq_f32(v83, vmaxq_f32(vmlsq_f32(v65[-3], v65[-5], vaddq_f32(v64, vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v37, v78), v38, v79), v39, v82), vmlaq_f32(vmlaq_f32(vmulq_f32(v44, v80), v45, v81), v46, *v65)))), vnegq_f32(v83))), v57[v77]);
          v85 = vsubq_f32(v84, v83);
          v68 = vaddq_f32(v68, v85);
          v86 = vmulq_f32(v60, v85);
          v87 = vmulq_f32(v61, v85);
          v64 = vmlaq_f32(v64, v85, v52);
          v37 = vmlaq_f32(v37, v86, v78);
          v44 = vmlsq_f32(v44, v87, v80);
          v38 = vmlaq_f32(v38, v86, v79);
          v45 = vmlsq_f32(v45, v87, v81);
          v39 = vmlaq_f32(v39, v86, v82);
          v46 = vmlsq_f32(v46, v87, *v65);
          *(v76 - 128) = v84;
          v66 = vaddq_f32(v66, v84);
          ++v63;
          v65 += 9;
          _X26 = _X4;
        }

        while (v54 != v63);
      }

      else
      {
        v68 = 0uLL;
        v66 = 0uLL;
      }

      v88 = &v47[9 * v54 + 13 + v54 + v58];
      v89 = &v88[v59];
      v90 = &v89[v55];
      v91 = vmulq_f32(v50, v68);
      v92 = vmulq_f32(v51, v68);
      v19 = vmlaq_f32(v19, v91, v62);
      v30 = vmlsq_f32(v30, v92, v62);
      v20 = vmlaq_f32(v20, v91, v153);
      v31 = vmlsq_f32(v31, v92, v153);
      v21 = vmlaq_f32(v21, v91, v154);
      v32 = vmlsq_f32(v32, v92, v154);
      if (v55 && (*a2 & 1) != 0)
      {
        v93 = v47[2];
        v94 = v47[3];
        if (a2[1] == 1)
        {
          _X5 = v88[1].i64[0];
          __asm { PRFM            #0, [X5] }

          _X5 = v88[1].i64[1];
          __asm { PRFM            #0, [X5] }

          _X5 = v88[2].i64[0];
          __asm { PRFM            #0, [X5] }
        }

        v101 = 0;
        v102 = vmulq_f32(v66, v93);
        v103 = vmulq_f32(v66, v94);
        v104 = vnegq_f32(v103);
        v105 = 0uLL;
        v106 = &v89[v55];
        do
        {
          __asm
          {
            PRFM            #0, [X4,#0x40]
            PRFM            #0, [X4,#0x80]
            PRFM            #0, [X4,#0xC0]
            PRFM            #0, [X4,#0x100]
          }

          v111 = v101 & 1;
          v112 = v88[v111 + 3];
          v113 = v88[v111 + 5];
          v114 = v88[v111 + 7];
          v115 = v106[1];
          v116 = v106[6];
          v117 = v106[7];
          v118 = v106[2];
          v119 = v106[8];
          v120 = vmlsq_f32(vsubq_f32(*v89, v106[3]), v106[4], vsubq_f32(vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v19, v112), v113, v20), v114, v21), vmlaq_f32(vmlaq_f32(vmulq_f32(v37, *v106), v38, v115), v39, v118)), vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v30, v112), v113, v31), v114, v32), vmlaq_f32(vmlaq_f32(vmulq_f32(v44, v116), v45, v117), v46, v119))));
          v105 = vorrq_s8(v105, vcgtq_f32(vabsq_f32(v120), v102));
          v121 = vbslq_s8(v105, vminq_f32(v103, vmaxq_f32(v104, v120)), v120);
          v122 = vsubq_f32(v121, *v89);
          *v89++ = v121;
          v123 = vmulq_f32(v50, v122);
          v124 = vmulq_f32(v51, v122);
          v19 = vmlaq_f32(v19, v123, v112);
          v30 = vmlsq_f32(v30, v124, v112);
          v20 = vmlaq_f32(v20, v123, v113);
          v31 = vmlsq_f32(v31, v124, v113);
          v21 = vmlaq_f32(v21, v123, v114);
          v32 = vmlsq_f32(v32, v124, v114);
          v125 = vmulq_f32(v60, v122);
          v126 = *v106;
          v106 += 9;
          v37 = vmlaq_f32(v37, v125, v126);
          v38 = vmlaq_f32(v38, v125, v115);
          v39 = vmlaq_f32(v39, v125, v118);
          v127 = vmulq_f32(v61, v122);
          v44 = vmlsq_f32(v44, v127, v116);
          v45 = vmlsq_f32(v45, v127, v117);
          v46 = vmlsq_f32(v46, v127, v119);
          _X4 += 16;
          ++v101;
        }

        while (v55 != v101);
        *v88 = v105;
        v52 = v152;
      }

      v47 = &v90[9 * v55];
    }

    while (v47 < v49);
  }

  v128 = vzip1q_s32(v19, v21);
  v129 = vzip2q_s32(v19, v21);
  v130 = vzip1q_s32(v20, v149);
  v131 = vzip2q_s32(v20, v149);
  v132 = vzip1q_s32(v128, v130);
  v133 = vzip2q_s32(v128, v130);
  v134 = vzip1q_s32(v129, v131);
  v135 = vzip2q_s32(v129, v131);
  v136 = vzip1q_s32(v30, v32);
  v137 = vzip1q_s32(v31, v151);
  v138 = vzip1q_s32(v37, v39);
  v139 = vzip2q_s32(v37, v39);
  v140 = vzip1q_s32(v38, v148);
  *v3 = v132;
  v3[1] = vzip1q_s32(v138, v140);
  *v5 = v133;
  v5[1] = vzip2q_s32(v138, v140);
  v141 = vzip2q_s32(v38, v148);
  *v7 = v134;
  v7[1] = vzip1q_s32(v139, v141);
  *v14 = v135;
  v14[1] = vzip2q_s32(v139, v141);
  v142 = vzip1q_s32(v44, v46);
  v143 = vzip1q_s32(v45, v150);
  if (*(result + 6))
  {
    *v2 = vzip1q_s32(v136, v137);
    v2[1] = vzip1q_s32(v142, v143);
  }

  if (*(result + 18))
  {
    *v4 = vzip2q_s32(v136, v137);
    v4[1] = vzip2q_s32(v142, v143);
  }

  v144 = vzip2q_s32(v30, v32);
  v145 = vzip2q_s32(v31, v151);
  v146 = vzip2q_s32(v44, v46);
  v147 = vzip2q_s32(v45, v150);
  if (*(result + 30))
  {
    *v6 = vzip1q_s32(v144, v145);
    v6[1] = vzip1q_s32(v146, v147);
  }

  if (*(result + 42))
  {
    *v13 = vzip2q_s32(v144, v145);
    v13[1] = vzip2q_s32(v146, v147);
  }

  return result;
}

int32x4_t physx::Dy::solveContact4_StaticBlock(uint64_t a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *(a1 + 48);
  v4 = *(a1 + 96);
  v5 = *(a1 + 144);
  v6 = *(a1 + 32);
  v7 = *(a1 + 30);
  v8.i64[0] = 0x80000000800000;
  v8.i64[1] = 0x80000000800000;
  v114 = vnegq_f32(v8);
  v9 = v2[1];
  v10 = v3[1];
  v11 = v4[1];
  v12 = vzip1q_s32(*v2, *v4);
  v13 = vzip2q_s32(*v2, *v4);
  v14 = v5[1];
  v15 = vzip1q_s32(*v3, *v5);
  v16 = vzip2q_s32(*v3, *v5);
  v17 = vzip1q_s32(v12, v15);
  v18 = vzip2q_s32(v12, v15);
  v19 = vzip1q_s32(v13, v16);
  v20 = vzip1q_s32(v9, v11);
  v21 = vzip2q_s32(v9, v11);
  v22 = vzip1q_s32(v10, v14);
  v23 = vzip2q_s32(v10, v14);
  v24 = vzip1q_s32(v20, v22);
  v25 = vzip2q_s32(v20, v22);
  v26 = vzip1q_s32(v21, v23);
  if (v7)
  {
    v27 = *(v6 + 64);
    _X17 = v6 + 304;
    v29 = v6 + 16 * v7;
    do
    {
      v30 = *(v6 + 1);
      v31 = *(v6 + 2);
      v32 = *(v6 + 3);
      v33 = 16 * v30;
      v34 = v6 + 16 * v30 + 208;
      v35 = v34 + 96 * v30;
      if (v32)
      {
        v36 = (v34 + 96 * *(v6 + 1));
      }

      else
      {
        v36 = &v114;
      }

      if ((*(v6 + 3) & 1) == 0)
      {
        v33 = 0;
      }

      if (*(v6 + 2))
      {
        v37 = 144;
      }

      else
      {
        v37 = 0;
      }

      v38 = *(v6 + 96);
      v40 = *(v6 + 128);
      v39 = *(v6 + 144);
      v41 = *(v6 + 160);
      if (*(v6 + 1))
      {
        v42 = 0;
        v43 = vmlaq_f32(vmlaq_f32(vmulq_f32(v17, v40), v39, v18), v41, v19);
        v44 = 0uLL;
        _X23 = _X17;
        v46 = 0uLL;
        do
        {
          __asm
          {
            PRFM            #0, [X23,#0x40]
            PRFM            #0, [X23,#0x80]
          }

          _X17 = _X23 + 192;
          __asm { PRFM            #0, [X23,#0xC0] }

          v54 = v6 + 288 + 16 * v42;
          v55 = *(v54 - 80);
          if (v32)
          {
            v56 = v42;
          }

          else
          {
            v56 = 0;
          }

          v57 = *(v34 + 16);
          v58 = *(v34 + 32);
          v59 = vminq_f32(vaddq_f32(v55, vmaxq_f32(vmlsq_f32(*(v34 + 80), *(v34 + 48), vmlaq_f32(vmlaq_f32(vmlaq_f32(v43, v24, *v34), v25, v57), v26, v58)), vnegq_f32(v55))), v36[v56]);
          v60 = vsubq_f32(v59, v55);
          v61 = vmulq_f32(v38, v60);
          v46 = vaddq_f32(v46, v60);
          v43 = vmlaq_f32(v43, v60, v27);
          v24 = vmlaq_f32(v24, v61, *v34);
          v25 = vmlaq_f32(v25, v61, v57);
          v26 = vmlaq_f32(v26, v61, v58);
          *(v54 - 80) = v59;
          v44 = vaddq_f32(v44, v59);
          ++v42;
          v34 += 96;
          _X23 = _X17;
        }

        while (v30 != v42);
      }

      else
      {
        v46 = 0uLL;
        v44 = 0uLL;
      }

      v62 = (v35 + v33);
      v63 = (v35 + v33 + v37);
      v64 = vmulq_f32(v27, v46);
      v17 = vmlaq_f32(v17, v64, v40);
      v18 = vmlaq_f32(v18, v64, v39);
      v19 = vmlaq_f32(v19, v64, v41);
      if (v31 && (*a2 & 1) != 0)
      {
        if (a2[1] == 1)
        {
          _X19 = v62[1].i64[0];
          __asm { PRFM            #0, [X19] }

          _X19 = v62[1].i64[1];
          __asm { PRFM            #0, [X19] }

          _X19 = v62[2].i64[0];
          __asm { PRFM            #0, [X19] }

          _X19 = v62[2].i64[1];
          __asm { PRFM            #0, [X19] }
        }

        v73 = 0;
        v74 = vmulq_f32(v44, *(v6 + 32));
        v75 = vmulq_f32(v44, *(v6 + 48));
        v76 = vnegq_f32(v75);
        v77 = (v6 + 16 * v31 + v33 + v37 + 112 * v30 + 272);
        v78 = 0uLL;
        v79 = v63;
        do
        {
          __asm
          {
            PRFM            #0, [X17,#0x40]
            PRFM            #0, [X17,#0x80]
            PRFM            #0, [X17,#0xC0]
          }

          _X17 += 192;
          v83 = v73 & 1;
          v84 = v62[v83 + 3];
          v85 = v62[v83 + 5];
          v86 = v62[v83 + 7];
          v87 = v77[-4];
          v88 = v77[-3];
          v89 = v77[-2];
          v90 = vsubq_f32(*v79, v77[-1]);
          v91 = *v77;
          v77 += 6;
          v92 = vmlsq_f32(v90, v91, vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v17, v84), v85, v18), v86, v19), vmlaq_f32(vmlaq_f32(vmulq_f32(v24, v87), v25, v88), v26, v89)));
          v78 = vorrq_s8(v78, vcgtq_f32(vabsq_f32(v92), v74));
          v93 = vbslq_s8(v78, vminq_f32(v75, vmaxq_f32(v76, v92)), v92);
          v94 = vsubq_f32(v93, *v79);
          v95 = vmulq_f32(v27, v94);
          v96 = vmulq_f32(v38, v94);
          v17 = vmlaq_f32(v17, v95, v84);
          v24 = vmlaq_f32(v24, v96, v87);
          v18 = vmlaq_f32(v18, v95, v85);
          v25 = vmlaq_f32(v25, v96, v88);
          v19 = vmlaq_f32(v19, v95, v86);
          v26 = vmlaq_f32(v26, v96, v89);
          *v79++ = v93;
          ++v73;
        }

        while (v31 != v73);
        *v62 = v78;
      }

      v6 = &v63[6 * v31 + v31];
    }

    while (v6 < v29);
  }

  v97 = vzip2q_s32(v21, v23);
  v98 = vzip2q_s32(v13, v16);
  v99 = vzip1q_s32(v17, v19);
  v100 = vzip2q_s32(v17, v19);
  v101 = vzip1q_s32(v18, v98);
  v102 = vzip2q_s32(v18, v98);
  v103 = vzip1q_s32(v99, v101);
  v104 = vzip2q_s32(v99, v101);
  v105 = vzip1q_s32(v24, v26);
  v106 = vzip2q_s32(v24, v26);
  v107 = vzip1q_s32(v25, v97);
  *v2 = v103;
  *v3 = v104;
  v108 = vzip2q_s32(v25, v97);
  v109 = vzip1q_s32(v105, v107);
  v110 = vzip2q_s32(v105, v107);
  v111 = vzip1q_s32(v106, v108);
  vst2_f32(v4->i32, v100);
  v112 = v4 + 1;
  *v5 = vzip2q_s32(v100, v102);
  v2[1] = v109;
  v3[1] = v110;
  result = vzip2q_s32(v106, v108);
  *v112 = v111;
  v5[1] = result;
  return result;
}

uint64_t physx::Dy::solveContactPreBlock_Conclude(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  physx::Dy::solveContact4_Block(a1, a3);
  v4 = *(a1 + 32);
  v5 = *(a1 + 30);

  return physx::Dy::concludeContact4_Block(v5, v4, 0x90u, 0x90u);
}

uint64_t physx::Dy::concludeContact4_Block(uint64_t result, unsigned __int8 *a2, unsigned int a3, unsigned int a4)
{
  if (result)
  {
    v4 = &a2[16 * result];
    do
    {
      v5 = a2[1];
      v6 = a2[2];
      v7 = 16 * v5;
      v8 = v5 * a3;
      if (a2[3])
      {
        v9 = 16 * v5;
      }

      else
      {
        v9 = 0;
      }

      v10 = &a2[16 * v5 + 208 + v9 + v8];
      if (a2[2])
      {
        v10 += 16 * v6 + 144;
      }

      if (a2[1])
      {
        v11 = &a2[v7 + 288];
        do
        {
          *v11 = vsubq_f32(*v11, v11[-1]);
          v11 = (v11 + a3);
          LODWORD(v5) = v5 - 1;
        }

        while (v5);
      }

      if (v6)
      {
        v12 = &a2[16 * v6 + 432 + v9 + v7 + v8];
        v13 = v6;
        do
        {
          *(v12 - 2) = *v12;
          v12 += a4;
          --v13;
        }

        while (v13);
      }

      a2 = (v10 + v6 * a4);
    }

    while (a2 < v4);
  }

  return result;
}

uint64_t physx::Dy::solveContactPreBlock_ConcludeStatic(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  physx::Dy::solveContact4_StaticBlock(a1, a3);
  v4 = *(a1 + 32);
  v5 = *(a1 + 30);

  return physx::Dy::concludeContact4_Block(v5, v4, 0x60u, 0x60u);
}

uint64_t physx::Dy::solveContactPreBlock_WriteBack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27[4] = *MEMORY[0x1E69E9840];
  physx::Dy::solveContact4_Block(a1, a3);
  v5 = *(a3 + 24);
  v6 = v5 + 112 * *(a1 + 20);
  v7 = v5 + 112 * *(a1 + 68);
  v8 = v5 + 112 * *(a1 + 116);
  v9 = v5 + 112 * *(a1 + 164);
  v10 = v5 + 112 * *(a1 + 24);
  v11 = v5 + 112 * *(a1 + 72);
  v12 = v5 + 112 * *(a1 + 120);
  v13 = v5 + 112 * *(a1 + 168);
  v27[0] = v6;
  v27[1] = v7;
  v27[2] = v8;
  v27[3] = v9;
  v26[0] = v10;
  v26[1] = v11;
  v26[2] = v12;
  v26[3] = v13;
  result = physx::Dy::writeBackContact4_Block(a1, a3, v27, v26, v14, v15);
  v17 = *(a3 + 16);
  if (v17 > *(a3 + 20) - 4)
  {
    add = atomic_fetch_add(*(a3 + 48), v17);
    v19 = *(a3 + 16);
    if (v19)
    {
      v20 = 0;
      v21 = 0;
      v22 = add + v17 - v19;
      do
      {
        v23 = (*(a3 + 8) + v20);
        v24 = (*(a3 + 32) + 32 * (v22 + v21));
        v25 = v23[1];
        *v24 = *v23;
        v24[1] = v25;
        ++v21;
        v20 += 32;
      }

      while (v21 < *(a3 + 16));
    }

    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t physx::Dy::solveContactPreBlock_WriteBackStatic(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v27[4] = *MEMORY[0x1E69E9840];
  *&v5 = physx::Dy::solveContact4_StaticBlock(a1, a3).u64[0];
  v6 = *(a3 + 24);
  v7 = v6 + 112 * a1[5];
  v8 = v6 + 112 * a1[17];
  v9 = v6 + 112 * a1[29];
  v10 = v6 + 112 * a1[41];
  v11 = v6 + 112 * a1[6];
  v12 = v6 + 112 * a1[18];
  v13 = v6 + 112 * a1[30];
  v14 = v6 + 112 * a1[42];
  v27[0] = v7;
  v27[1] = v8;
  v27[2] = v9;
  v27[3] = v10;
  v26[0] = v11;
  v26[1] = v12;
  v26[2] = v13;
  v26[3] = v14;
  result = physx::Dy::writeBackContact4_Block(a1, a3, v27, v26, v5, v15);
  v17 = *(a3 + 16);
  if (v17 > *(a3 + 20) - 4)
  {
    add = atomic_fetch_add(*(a3 + 48), v17);
    v19 = *(a3 + 16);
    if (v19)
    {
      v20 = 0;
      v21 = 0;
      v22 = add + v17 - v19;
      do
      {
        v23 = (*(a3 + 8) + v20);
        v24 = (*(a3 + 32) + 32 * (v22 + v21));
        v25 = v23[1];
        *v24 = *v23;
        v24[1] = v25;
        ++v21;
        v20 += 32;
      }

      while (v21 < *(a3 + 16));
    }

    *(a3 + 16) = 0;
  }

  return result;
}

int32x4_t physx::Dy::solve1D4_Block(int32x4_t **a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[6];
  v3 = a1[7];
  v5 = a1[12];
  v6 = a1[13];
  v7 = **a1;
  v8 = (*a1)[1];
  v9 = v5[1];
  v10 = vzip1q_s32(v7, *v5);
  v12 = a1[18];
  v11 = a1[19];
  v14 = v2[1];
  v15 = v4[1];
  v16 = v3[1];
  v18 = v6[1];
  v19 = v12[1];
  v20 = v11[1];
  v21 = vzip2q_s32(v7, *v5);
  v22 = vzip1q_s32(*v4, *v12);
  v23 = vzip1q_s32(v10, v22);
  v24 = vzip2q_s32(v10, v22);
  v108 = vzip2q_s32(*v4, *v12);
  v109 = v21;
  v25 = vzip1q_s32(v21, v108);
  v26 = vzip1q_s32(*v2, *v6);
  v27 = vzip1q_s32(*v3, *v11);
  v28 = vzip1q_s32(v26, v27);
  v29 = vzip2q_s32(v26, v27);
  v106 = vzip2q_s32(*v3, *v11);
  v107 = vzip2q_s32(*v2, *v6);
  v30 = vzip1q_s32(v107, v106);
  v31 = vzip1q_s32(v8, v9);
  v32 = vzip2q_s32(v8, v9);
  v33 = vzip1q_s32(v15, v19);
  v34 = vzip1q_s32(v31, v33);
  v35 = vzip2q_s32(v31, v33);
  v104 = vzip2q_s32(v15, v19);
  v105 = v32;
  v36 = vzip1q_s32(v32, v104);
  v37 = vzip1q_s32(v14, v18);
  v38 = a1[4];
  v39 = vzip1q_s32(v16, v20);
  v40 = vzip2q_s32(v16, v20);
  v41 = vzip1q_s32(v37, v39);
  v42 = vzip2q_s32(v37, v39);
  v103 = vzip2q_s32(v14, v18);
  v43 = vzip1q_s32(v103, v40);
  v44 = v38->i32[1];
  if (v44)
  {
    v45 = v38[3];
    v46 = v38[4];
    _X1 = v38 + 25;
    v48 = v38[5];
    v49 = v38[6];
    do
    {
      __asm
      {
        PRFM            #0, [X1,#0x80]
        PRFM            #0, [X1,#0xC0]
        PRFM            #0, [X1,#0x100]
        PRFM            #0, [X1,#0x140]
        PRFM            #0, [X1,#0x180]
      }

      v59 = _X1[-15];
      v60 = _X1[-14];
      v61 = _X1[2];
      v62 = _X1[3];
      v64 = _X1[-13];
      v63 = _X1[-12];
      v66 = _X1[4];
      v65 = _X1[5];
      v67 = _X1[-11];
      v68 = _X1[-10];
      v69 = _X1[6];
      v70 = _X1[7];
      v71 = vmaxq_f32(_X1[-2], vminq_f32(_X1[-1], vmlaq_f32(vmlaq_f32(_X1[-6], _X1[-4], vsubq_f32(vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v23, v59), v24, v60), v25, v64), vmlaq_f32(vmlaq_f32(vmulq_f32(v34, v63), v35, v67), v36, v68)), vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v28, v61), v29, v62), v30, v66), vmlaq_f32(vmlaq_f32(vmulq_f32(v41, v65), v42, v69), v43, v70)))), _X1[-3], *_X1)));
      v72 = vsubq_f32(v71, *_X1);
      v73 = vmulq_f32(v45, v72);
      v23 = vmlaq_f32(v23, v73, v59);
      v24 = vmlaq_f32(v24, v73, v60);
      v25 = vmlaq_f32(v25, v73, v64);
      v74 = vmulq_f32(v46, v72);
      v28 = vmlsq_f32(v28, v74, v61);
      v29 = vmlsq_f32(v29, v74, v62);
      v30 = vmlsq_f32(v30, v74, v66);
      v75 = vmulq_f32(v48, v72);
      v34 = vmlaq_f32(v34, v75, v63);
      v35 = vmlaq_f32(v35, v75, v67);
      v36 = vmlaq_f32(v36, v75, v68);
      v76 = vmulq_f32(v49, v72);
      v41 = vmlsq_f32(v41, v76, v65);
      v42 = vmlsq_f32(v42, v76, v69);
      v43 = vmlsq_f32(v43, v76, v70);
      *_X1 = v71;
      _X1 += 23;
      --v44;
    }

    while (v44);
  }

  v77 = vzip2q_s32(v103, v40);
  v78 = vzip2q_s32(v105, v104);
  v79 = vzip2q_s32(v107, v106);
  v80 = vzip2q_s32(v109, v108);
  v81 = vzip1q_s32(v23, v25);
  v82 = vzip2q_s32(v23, v25);
  v83 = vzip1q_s32(v24, v80);
  v84 = vzip2q_s32(v24, v80);
  v85 = vzip1q_s32(v81, v83);
  v86 = vzip2q_s32(v81, v83);
  v87 = vzip1q_s32(v28, v30);
  v88 = vzip2q_s32(v28, v30);
  *v1 = v85;
  v89 = vzip1q_s32(v29, v79);
  *v4 = v86;
  v90 = vzip2q_s32(v29, v79);
  vst2_f32(v5->i32, v82);
  v91 = v5 + 1;
  *v12 = vzip2q_s32(v82, v84);
  vst2_f32(v2->i32, v87);
  v92 = vzip1q_s32(v34, v36);
  *v3 = vzip2q_s32(v87, v89);
  v93 = vzip2q_s32(v34, v36);
  v94 = vzip1q_s32(v35, v78);
  vst2_f32(v6->i32, v88);
  *v11 = vzip2q_s32(v88, v90);
  v95 = vzip2q_s32(v35, v78);
  v1[1] = vzip1q_s32(v92, v94);
  v4[1] = vzip2q_s32(v92, v94);
  v96 = vzip1q_s32(v93, v95);
  v97 = vzip2q_s32(v93, v95);
  *v91 = v96;
  v98 = vzip1q_s32(v41, v43);
  v12[1] = v97;
  v99 = vzip1q_s32(v42, v77);
  i32 = v2[1].i32;
  vst2_f32(i32, v98);
  v3[1] = vzip2q_s32(v98, v99);
  v100 = vzip2q_s32(v41, v43);
  v101 = vzip2q_s32(v42, v77);
  result = vzip2q_s32(v100, v101);
  v17 = v6[1].i32;
  vst2_f32(v17, v100);
  v11[1] = result;
  return result;
}

int32x4_t physx::Dy::solve1D4Block_Conclude(int32x4_t **a1)
{
  result.i64[0] = physx::Dy::solve1D4_Block(a1).u64[0];
  v3 = a1[4];
  if (v3->i32[1])
  {
    v4 = 0;
    v5 = 272;
    if (v3->i8[0] == 9)
    {
      v5 = 368;
    }

    v6 = v3 + 20;
    do
    {
      result = *v6;
      v6[-1] = *v6;
      ++v4;
      v6 = (v6 + v5);
    }

    while (v4 < v3->i32[1]);
  }

  return result;
}

void physx::Dy::solve1D4Block_WriteBack(uint64_t a1)
{
  physx::Dy::solve1D4_Block(a1);
  v2 = *(a1 + 40);
  v3 = *(a1 + 88);
  v4 = *(a1 + 136);
  v5 = *(a1 + 184);
  if (v2)
  {
    v6 = 0;
  }

  else
  {
    v6 = v3 == 0;
  }

  if (!v6 || v4 != 0 || v5 != 0)
  {
    v9 = *(a1 + 32);
    v10 = v9->i32[1];
    if (v10)
    {
      v11 = 0uLL;
      v12 = 272;
      if (v9->i8[0] == 9)
      {
        v12 = 368;
      }

      v13 = v9 + 16;
      v14.i64[0] = 0x200000002;
      v14.i64[1] = 0x200000002;
      v15 = 0uLL;
      v16 = 0uLL;
      v17 = 0uLL;
      v18 = 0uLL;
      v19 = 0uLL;
      do
      {
        v20 = vbicq_s8(v13[9], vceqzq_s32(vandq_s8(v13[10], v14)));
        v11 = vmlaq_f32(v11, v20, v13[-6]);
        v15 = vmlaq_f32(v15, v20, v13[-5]);
        v16 = vmlaq_f32(v16, v20, v13[-4]);
        v17 = vmlaq_f32(v17, v20, *v13);
        v19 = vmlaq_f32(v19, v20, v13[1]);
        v18 = vmlaq_f32(v18, v20, v13[2]);
        v13 = (v13 + v12);
        --v10;
      }

      while (v10);
    }

    else
    {
      v19 = 0uLL;
      v18 = 0uLL;
      v17 = 0uLL;
      v16 = 0uLL;
      v15 = 0uLL;
      v11 = 0uLL;
    }

    v22 = v9[8];
    v21 = v9[9];
    v23 = v9[7];
    v24 = vsubq_f32(v17, vmlsq_f32(vmulq_f32(v16, v22), v15, v21));
    v25 = vsubq_f32(v19, vmlsq_f32(vmulq_f32(v11, v21), v16, v23));
    v26 = vnegq_f32(v22);
    v27 = vmlaq_f32(vmlaq_f32(vmulq_f32(v11, v11), v15, v15), v16, v16);
    v28 = vmulq_f32(v24, v24);
    v29 = vrsqrteq_f32(v27);
    v30 = 4;
    do
    {
      v29 = vmulq_f32(v29, vrsqrtsq_f32(vmulq_f32(v29, v29), v27));
      --v30;
    }

    while (v30);
    v31 = vsubq_f32(v18, vmlaq_f32(vmulq_f32(v15, v23), v11, v26));
    v32 = vmlaq_f32(vmlaq_f32(v28, v25, v25), v31, v31);
    v33 = vrsqrteq_f32(v32);
    v34 = 4;
    do
    {
      v33 = vmulq_f32(v33, vrsqrtsq_f32(vmulq_f32(v33, v33), v32));
      --v34;
    }

    while (v34);
    v35 = vorrq_s8(vcgtq_f32(vbslq_s8(vceqzq_f32(v32), v32, vmulq_f32(v32, v33)), v9[2]), vcgtq_f32(vbslq_s8(vceqzq_f32(v27), v27, vmulq_f32(v27, v29)), v9[1]));
    if (v2)
    {
      *v2 = vzip1_s32(*v11.f32, *v15.f32);
      v2[1].i32[0] = v16.i32[0];
      v2[2] = vzip1_s32(*v24.f32, *v25.f32);
      v2[3].i32[0] = v31.i32[0];
      if (v9->i8[12])
      {
        v36 = v35.i32[0] == 0;
      }

      else
      {
        v36 = 1;
      }

      v37 = !v36;
      v2[1].i32[1] = v37;
    }

    if (v3)
    {
      *v3 = vzip2_s32(*v11.f32, *v15.f32);
      v3[1].i32[0] = v16.i32[1];
      v3[2] = vzip2_s32(*v24.f32, *v25.f32);
      v3[3].i32[0] = v31.i32[1];
      if (v9->i8[13])
      {
        v38 = v35.i32[1] == 0;
      }

      else
      {
        v38 = 1;
      }

      v39 = !v38;
      v3[1].i32[1] = v39;
    }

    v40 = vextq_s8(v15, v15, 8uLL).u64[0];
    v41 = vextq_s8(v11, v11, 8uLL).u64[0];
    v42 = vextq_s8(v25, v25, 8uLL).u64[0];
    v43 = vextq_s8(v24, v24, 8uLL).u64[0];
    if (v4)
    {
      *v4 = vzip1_s32(v41, v40);
      v4[1].i32[0] = v16.i32[2];
      v4[2] = vzip1_s32(v43, v42);
      v4[3].i32[0] = v31.i32[2];
      if (v9->i8[14])
      {
        v44 = v35.i32[2] == 0;
      }

      else
      {
        v44 = 1;
      }

      v45 = !v44;
      v4[1].i32[1] = v45;
    }

    if (v5)
    {
      *v5 = vzip2_s32(v41, v40);
      v5[1].i32[0] = v16.i32[3];
      v5[2] = vzip2_s32(v43, v42);
      v5[3].i32[0] = v31.i32[3];
      if (v9->i8[15])
      {
        v46 = v35.i32[3] == 0;
      }

      else
      {
        v46 = 1;
      }

      v47 = !v46;
      v5[1].i32[1] = v47;
    }
  }
}

void physx::Dy::SolverCoreRegisterArticulationFns(physx::Dy *this)
{
  qword_1EE188E58 = physx::Dy::solveExtContactBlock;
  qword_1EE188E60 = physx::Dy::solveExt1DBlock;
  qword_1EE188EA8 = physx::Dy::solveExtContactBlockWriteBack;
  qword_1EE188EB0 = physx::Dy::solveExt1DBlockWriteBack;
  qword_1EE188EF8 = physx::Dy::solveExtContactConcludeBlock;
  qword_1EE188F00 = physx::Dy::solveExt1DConcludeBlock;
}

uint64_t physx::Dy::SolverCoreGeneral::destroyV(physx::Dy::SolverCoreGeneral *this)
{
  (*(*this + 8))(this);
  v1 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

  return v1();
}

__n128 physx::Dy::SolverCoreGeneral::solveV_Blocks(uint64_t a1, int *a2)
{
  v91 = *MEMORY[0x1E69E9840];
  for (i = 16; i != 1040; i += 32)
  {
    *&v90[i] = 0x7F0000007FLL;
  }

  result = *(a2 + 58);
  v89 = result;
  v5 = a2[16];
  v6 = a2[6];
  v8 = *a2;
  v7 = a2[1];
  v88 = a2[10];
  v9 = *(a2 + 4);
  if (v5)
  {
    v84 = *(a2 + 11);
    v85 = *(a2 + 1);
    v86 = a2[1];
    v87 = *(a2 + 4);
    v11 = *(a2 + 6);
    for (j = *(a2 + 7); v8; --v8)
    {
      if (v8 == 1)
      {
        v12 = &unk_1EE188EE0;
      }

      else
      {
        v12 = &_MergedGlobals_9;
      }

      if (v5 >= 1)
      {
        for (k = 0; k != v5; ++k)
        {
          v14 = (j + 8 * k);
          _X10 = *(v11 + 48 * *v14 + 32);
          v16 = ~((_X10 + 383) >> 5) + (_X10 >> 5);
          do
          {
            __asm { PRFM            #0, [X10] }

            _X10 += 32;
            _CF = __CFADD__(v16++, 1);
          }

          while (!_CF);
          if (*(v14 + 2))
          {
            v22 = (v11 + 8 + 48 * *v14);
            v23 = *(v14 + 2);
            do
            {
              _X11 = *(v22 - 1);
              __asm { PRFM            #0, [X11] }

              v27 = *v22;
              v22 += 6;
              _X11 = v27;
              __asm { PRFM            #0, [X11] }

              --v23;
            }

            while (v23);
          }

          v12[*(v14 + 3)]();
        }
      }

      v29 = v87;
      v30 = v88;
      if (v88)
      {
        do
        {
          v31 = *v29;
          v29 += 12;
          (*(*v31 + 272))(v31, v89.n128_u64[0], v89.n128_u64[1], 0, 0, *(a2 + 38), *(a2 + 39), 0.0);
          --v30;
        }

        while (v30);
      }
    }

    if (v6)
    {
      v32 = v85 + 16;
      v33 = v84 + 16;
      do
      {
        *(v33 - 16) = *(v32 - 16);
        *(v33 - 8) = *(v32 - 8);
        result.n128_u64[0] = *v32;
        *v33 = *v32;
        result.n128_u32[0] = *(v32 + 8);
        *(v33 + 8) = result.n128_u32[0];
        v32 += 32;
        v33 += 32;
        --v6;
      }

      while (v6);
    }

    v35 = v87;
    v34 = v88;
    if (v88)
    {
      v36 = v87;
      do
      {
        v37 = physx::Dy::ArticulationPImpl::sSaveVelocity[*(*v36 + 40)];
        if (v37)
        {
          v37(v36, v89.n128_u64[1]);
        }

        v36 += 12;
        --v34;
      }

      while (v34);
    }

    if (v86 < 2)
    {
      v39 = 0;
    }

    else
    {
      v38 = 0;
      v39 = v86 - 1;
      do
      {
        if (v5 >= 1)
        {
          for (m = 0; m != v5; ++m)
          {
            v41 = (j + 8 * m);
            _X10 = *(v11 + 48 * *v41 + 32);
            v43 = ~((_X10 + 383) >> 5) + (_X10 >> 5);
            do
            {
              __asm { PRFM            #0, [X10] }

              _X10 += 32;
              _CF = __CFADD__(v43++, 1);
            }

            while (!_CF);
            if (*(v41 + 2))
            {
              v45 = (v11 + 8 + 48 * *v41);
              v46 = *(v41 + 2);
              do
              {
                _X11 = *(v45 - 1);
                __asm { PRFM            #0, [X11] }

                v50 = *v45;
                v45 += 6;
                _X11 = v50;
                __asm { PRFM            #0, [X11] }

                --v46;
              }

              while (v46);
            }

            (*(&_MergedGlobals_9 + *(v41 + 3)))();
          }
        }

        v52 = v35;
        v53 = v88;
        if (v88)
        {
          do
          {
            v54 = *v52;
            v52 += 12;
            (*(*v54 + 272))(v54, v89.n128_u64[0], v89.n128_u64[1], 1, 0, *(a2 + 38), *(a2 + 39), 0.0);
            --v53;
          }

          while (v53);
        }

        ++v38;
        v35 = v87;
      }

      while (v38 != v39);
    }

    if (v39 < v86)
    {
      if (v5 >= 1)
      {
        for (n = 0; n != v5; ++n)
        {
          v71 = (j + 8 * n);
          _X10 = *(v11 + 48 * *v71 + 32);
          v73 = ~((_X10 + 383) >> 5) + (_X10 >> 5);
          do
          {
            __asm { PRFM            #0, [X10] }

            _X10 += 32;
            _CF = __CFADD__(v73++, 1);
          }

          while (!_CF);
          if (*(v71 + 2))
          {
            v75 = (v11 + 8 + 48 * *v71);
            v76 = *(v71 + 2);
            do
            {
              _X11 = *(v75 - 1);
              __asm { PRFM            #0, [X11] }

              v80 = *v75;
              v75 += 6;
              _X11 = v80;
              __asm { PRFM            #0, [X11] }

              --v76;
            }

            while (v76);
          }

          (*(&_MergedGlobals_9 + *(v71 + 3) + 10))();
        }
      }

      v82 = v88;
      if (v88)
      {
        do
        {
          (*(**v35 + 272))(*v35, v89.n128_u64[0], v89.n128_u64[1], 1, 0, *(a2 + 38), *(a2 + 39), 0.0);
          v83 = *v35;
          v35 += 12;
          (*(*v83 + 280))();
          --v82;
        }

        while (v82);
      }
    }
  }

  else
  {
    if (v6)
    {
      v55 = *(a2 + 11) + 16;
      v56 = *(a2 + 1) + 16;
      do
      {
        *(v55 - 16) = *(v56 - 16);
        *(v55 - 8) = *(v56 - 8);
        result.n128_u64[0] = *v56;
        *v55 = *v56;
        result.n128_u32[0] = *(v56 + 8);
        *(v55 + 8) = result.n128_u32[0];
        v55 += 32;
        v56 += 32;
        --v6;
      }

      while (v6);
    }

    v57 = v88;
    if (v8)
    {
      for (ii = 0; ii != v8; ++ii)
      {
        v59 = v9;
        v60 = v88;
        if (v88)
        {
          do
          {
            v61 = *v59;
            v59 += 12;
            (*(*v61 + 272))(v61, v89.n128_u64[0], v89.n128_u64[1], 0, 0, *(a2 + 38), *(a2 + 39), 0.0);
            --v60;
          }

          while (v60);
        }
      }
    }

    if (v88)
    {
      v62 = v9;
      v63 = v88;
      do
      {
        v64 = physx::Dy::ArticulationPImpl::sSaveVelocity[*(*v62 + 40)];
        if (v64)
        {
          v64(v62, v89.n128_u64[1]);
        }

        v62 += 12;
        --v63;
      }

      while (v63);
    }

    if (v7)
    {
      for (jj = 0; jj != v7; ++jj)
      {
        v66 = v9;
        v67 = v88;
        if (v88)
        {
          do
          {
            v68 = *v66;
            v66 += 12;
            (*(*v68 + 272))(v68, v89.n128_u64[0], v89.n128_u64[1], 1, 0, *(a2 + 38), *(a2 + 39), 0.0);
            --v67;
          }

          while (v67);
        }
      }
    }

    if (v88)
    {
      do
      {
        v69 = *v9;
        v9 += 12;
        (*(*v69 + 280))(v69, 0);
        --v57;
      }

      while (v57);
    }
  }

  return result;
}

uint64_t physx::Dy::SolverCoreGeneral::solveVParallelAndWriteBack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v205 = *MEMORY[0x1E69E9840];
  v195 = *(a2 + 96);
  for (i = 16; i != 1040; i += 32)
  {
    *&v204[i] = 0x7F0000007FLL;
  }

  v178 = 0;
  v166 = 0;
  v6 = 0;
  v7 = 0;
  v171 = 0;
  v8 = 0;
  v9 = 0;
  v161 = 0;
  v10 = 0;
  v156 = *(a2 + 24);
  v170 = *(a2 + 40);
  v163 = *(a2 + 64);
  v164 = 0;
  v11 = *(a2 + 152);
  v12 = *(a2 + 156);
  v13 = *a2;
  v14 = *(a2 + 48);
  v172 = *(a2 + 32);
  v184 = *(a2 + 80);
  v15 = *(a2 + 72);
  add = atomic_fetch_add((a2 + 120), v195);
  v191 = v195;
  v201 = v14;
  v16 = v14 + 8;
  v17 = v13 - 1;
  v18 = 1;
  v19 = v17;
  v200 = *(a2 + 56);
  v177 = v15;
  v157 = v17;
  do
  {
    v20 = v18;
    if (v18)
    {
      v21 = &_MergedGlobals_9;
    }

    else
    {
      v21 = &unk_1EE188EE0;
    }

    if (v8 < v10 + v17)
    {
      v159 = v18;
      v160 = v19;
      v168 = v6;
      v158 = (v19 - v8) * v170;
      v167 = v170 + v164;
      v165 = v17 + v171 + v10 - v8;
      v175 = -v6;
      v180 = v164;
      v22 = v161;
      do
      {
        v173 = v22;
        if (*(v4 + 140) < v22)
        {
          v23 = 30000;
          while (*(v4 + 140) < v173)
          {
            if (!--v23)
            {
              sched_yield();
              v23 = 10000;
            }
          }
        }

        v183 = v8;
        if (v184)
        {
          v192 = 0;
          v197 = v171 * v163;
          do
          {
            if (*(v4 + 124) < v9)
            {
              v24 = 30000;
              while (*(v4 + 124) < v9)
              {
                if (!--v24)
                {
                  sched_yield();
                  v24 = 10000;
                }
              }
            }

            v7 = (*(v15 + 4 * v192) + v7);
            v25 = add;
            if (add >= v7)
            {
              v27 = v191;
            }

            else
            {
              v185 = v9;
              v26 = 0;
              v27 = v191;
              do
              {
                v28 = v25;
                v29 = v7 - v25;
                v30 = v27;
                if (v29 >= v27)
                {
                  v31 = v27;
                }

                else
                {
                  v31 = v29;
                }

                if (v31 >= 1)
                {
                  v32 = v28 - v197;
                  do
                  {
                    v33 = (v200 + 8 * v32);
                    _X10 = *(v201 + 48 * *v33 + 32);
                    v35 = ~((_X10 + 383) >> 5) + (_X10 >> 5);
                    do
                    {
                      __asm { PRFM            #0, [X10] }

                      _X10 += 32;
                      _CF = __CFADD__(v35++, 1);
                    }

                    while (!_CF);
                    if (*(v33 + 2))
                    {
                      v41 = (v16 + 48 * *v33);
                      v42 = *(v33 + 2);
                      do
                      {
                        _X11 = *(v41 - 1);
                        __asm { PRFM            #0, [X11] }

                        v46 = *v41;
                        v41 += 6;
                        _X11 = v46;
                        __asm { PRFM            #0, [X11] }

                        --v42;
                      }

                      while (v42);
                    }

                    v21[*(v33 + 3)]();
                    ++v32;
                  }

                  while (v32 < v31 + v28 - v197);
                }

                v27 = v30 - v31;
                if (v30 == v31)
                {
                  v48 = v195;
                  v25 = atomic_fetch_add((a2 + 120), v195);
                  v27 = v48;
                }

                else
                {
                  v25 = v31 + v28;
                }

                v26 += v31;
              }

              while (v25 < v7);
              add = v25;
              if (v26)
              {
                __dmb(0xBu);
                v4 = a2;
                atomic_fetch_add((a2 + 124), v26);
              }

              else
              {
                v4 = a2;
              }

              v9 = v185;
              v15 = v177;
              v8 = v183;
            }

            v191 = v27;
            v9 += *(v15 + 4 * v192++);
          }

          while (v192 != v184);
        }

        v49 = v180;
        if (*(v4 + 124) < v9)
        {
          v50 = 30000;
          while (*(v4 + 124) < v9)
          {
            if (!--v50)
            {
              sched_yield();
              v50 = 10000;
            }
          }
        }

        LODWORD(v51) = v178;
        v180 += v170;
        if (v178 >= v49 + v170)
        {
          v53 = v166;
        }

        else
        {
          v52 = v178;
          v53 = v166;
          v54 = v180;
          do
          {
            if (v53 >= v54)
            {
              v55 = v54;
            }

            else
            {
              v55 = v53;
            }

            if (v52 >= v55)
            {
              v51 = v52;
            }

            else
            {
              v56 = v7;
              if (v53 >= v167)
              {
                v57 = v167;
              }

              else
              {
                v57 = v53;
              }

              v179 = v57;
              v58 = v53;
              v59 = v53;
              if (v53 >= v167)
              {
                v59 = v167;
              }

              v60 = v59 - v52;
              v61 = (v172 + 96 * (v175 + v52));
              do
              {
                v62 = *v61;
                v61 += 12;
                (*(*v62 + 272))(v62, a3, a4, 0, 0, v11, v12, 0.0);
                --v60;
              }

              while (v60);
              v4 = a2;
              atomic_fetch_add((a2 + 140), v179 - v52);
              v51 = v179;
              v7 = v56;
              v53 = v58;
              v8 = v183;
            }

            if (v53 == v51)
            {
              v51 = atomic_fetch_add((v4 + 136), 2u);
              v53 = (v51 + 2);
            }

            v52 = v51;
            v54 = v180;
          }

          while (v51 < v180);
        }

        v166 = v53;
        v178 = v51;
        v168 += v170;
        ++v8;
        v167 += v170;
        v15 = v177;
        v175 -= v170;
        ++v171;
        v22 = v173 + v170;
      }

      while (v171 != v165);
      v17 = v157;
      v164 += v158;
      v19 = v160;
      v161 += v158;
      v171 = v165;
      v6 = v168;
      v20 = v159;
    }

    v18 = 0;
    ++v19;
    v10 = 1;
  }

  while ((v20 & 1) != 0);
  v63 = *(v4 + 8);
  v64 = *(v4 + 88);
  v65 = v4;
  v66 = atomic_fetch_add((v4 + 128), 0x20u);
  v67 = v170;
  if (*(v65 + 140) < v161 && *(a2 + 140) < v161)
  {
    v68 = 30000;
    while (*(a2 + 140) < v161)
    {
      if (!--v68)
      {
        sched_yield();
        v68 = 10000;
      }
    }
  }

  if (*(a2 + 124) < v9)
  {
    v69 = 30000;
    while (*(a2 + 124) < v9)
    {
      if (!--v69)
      {
        sched_yield();
        v69 = 10000;
      }
    }
  }

  v193 = v64;
  v186 = v9;
  if (v66 >= v170)
  {
    v70 = 0;
    v71 = 32;
  }

  else
  {
    v70 = 0;
    v71 = 32;
    do
    {
      if (v67 - v66 >= 32)
      {
        v72 = 32;
      }

      else
      {
        v72 = v67 - v66;
      }

      if (v67 - v66 >= 1)
      {
        if (v72 <= 1)
        {
          v73 = 1;
        }

        else
        {
          v73 = v72;
        }

        v74 = v172 + 96 * v66;
        v66 += v73;
        do
        {
          v75 = physx::Dy::ArticulationPImpl::sSaveVelocity[*(*v74 + 40)];
          if (v75)
          {
            v75(v74, a4);
          }

          v74 += 96;
          --v73;
        }

        while (v73);
      }

      v71 -= v72;
      if (!v71)
      {
        v71 = 32;
        v66 = atomic_fetch_add((a2 + 128), 0x20u);
      }

      v70 += v72;
      v67 = v170;
    }

    while (v66 < v170);
  }

  v76 = v66 - v67;
  if (v66 - v67 >= v156)
  {
    v77 = a2;
    v7 = v7;
    if (v70)
    {
LABEL_111:
      __dmb(0xBu);
      atomic_fetch_add(v77 + 33, v70);
    }
  }

  else
  {
    v77 = a2;
    v7 = v7;
    do
    {
      v78 = v156 - v76;
      if (v71 < v156 - v76)
      {
        v78 = v71;
      }

      if (v78 >= 1)
      {
        v79 = 32 * v76;
        v80 = v63;
        v81 = v78;
        v82 = v193;
        do
        {
          _X13 = v80 + v79;
          __asm { PRFM            #0, [X13,#0x100] }

          _X14 = v82 + v79;
          __asm { PRFM            #0, [X14,#0x100] }

          *_X14 = *(v80 + v79);
          *(_X14 + 8) = *(v80 + v79 + 8);
          *(_X14 + 16) = *(v80 + v79 + 16);
          *(_X14 + 24) = *(v80 + v79 + 24);
          v82 += 32;
          v80 += 32;
          --v81;
        }

        while (v81);
      }

      v70 += v78;
      v71 = 32;
      v76 = atomic_fetch_add((a2 + 128), 0x20u) - v67;
    }

    while (v76 < v156);
    if (v70)
    {
      goto LABEL_111;
    }
  }

  v87 = v186;
  if (v77[33] < v67 + v156)
  {
    v88 = 30000;
    while (v77[33] < v67 + v156)
    {
      if (!--v88)
      {
        sched_yield();
        v88 = 10000;
      }
    }
  }

  if (v77[1] < 2)
  {
    v194 = v166;
    v89 = v161;
  }

  else
  {
    v176 = v6;
    v169 = v67 + v164;
    v174 = 1;
    v194 = v166;
    v181 = -v6;
    v89 = v161;
    do
    {
      v162 = v89;
      if (v77[35] < v89)
      {
        v90 = 30000;
        while (v77[35] < v162)
        {
          if (!--v90)
          {
            sched_yield();
            v90 = 10000;
          }
        }
      }

      if (v184)
      {
        v91 = 0;
        v198 = v171 * v163;
        do
        {
          if (v77[31] < v87)
          {
            v92 = 30000;
            while (v77[31] < v87)
            {
              if (!--v92)
              {
                sched_yield();
                v92 = 10000;
              }
            }
          }

          v7 = (*(v177 + 4 * v91) + v7);
          v93 = add;
          if (add >= v7)
          {
            v95 = v191;
          }

          else
          {
            v187 = v87;
            v94 = 0;
            v95 = v191;
            do
            {
              v96 = v93;
              v97 = v7 - v93;
              v98 = v95;
              if (v97 >= v95)
              {
                v99 = v95;
              }

              else
              {
                v99 = v97;
              }

              if (v99 >= 1)
              {
                v100 = v96 - v198;
                do
                {
                  v101 = (v200 + 8 * v100);
                  _X10 = *(v201 + 48 * *v101 + 32);
                  v103 = ~((_X10 + 383) >> 5) + (_X10 >> 5);
                  do
                  {
                    __asm { PRFM            #0, [X10] }

                    _X10 += 32;
                    _CF = __CFADD__(v103++, 1);
                  }

                  while (!_CF);
                  if (*(v101 + 2))
                  {
                    v105 = (v201 + 8 + 48 * *v101);
                    v106 = *(v101 + 2);
                    do
                    {
                      _X11 = *(v105 - 1);
                      __asm { PRFM            #0, [X11] }

                      v110 = *v105;
                      v105 += 6;
                      _X11 = v110;
                      __asm { PRFM            #0, [X11] }

                      --v106;
                    }

                    while (v106);
                  }

                  (*(&_MergedGlobals_9 + *(v101 + 3)))();
                  ++v100;
                }

                while (v100 < v99 + v96 - v198);
              }

              v95 = v98 - v99;
              if (v98 == v99)
              {
                v77 = a2;
                v112 = v195;
                v93 = atomic_fetch_add((a2 + 120), v195);
                v95 = v112;
              }

              else
              {
                v93 = v99 + v96;
                v77 = a2;
              }

              v94 += v99;
            }

            while (v93 < v7);
            add = v93;
            if (v94)
            {
              __dmb(0xBu);
              atomic_fetch_add(v77 + 31, v94);
            }

            v87 = v187;
          }

          v191 = v95;
          v87 += *(v177 + 4 * v91++);
        }

        while (v91 != v184);
      }

      if (v77[31] < v87)
      {
        v113 = 30000;
        while (v77[31] < v87)
        {
          if (!--v113)
          {
            sched_yield();
            v113 = 10000;
          }
        }
      }

      LODWORD(v115) = v178;
      v164 += v170;
      v114 = v164;
      if (v178 < v164)
      {
        v116 = v178;
        v188 = v87;
        do
        {
          if (v194 < v114)
          {
            v114 = v194;
          }

          if (v116 >= v114)
          {
            v115 = v116;
          }

          else
          {
            v117 = v7;
            if (v194 >= v169)
            {
              v118 = v169;
            }

            else
            {
              v118 = v194;
            }

            v119 = v194;
            if (v194 >= v169)
            {
              v119 = v169;
            }

            v120 = v119 - v116;
            v121 = (v172 + 96 * (v181 + v116));
            do
            {
              v122 = *v121;
              v121 += 12;
              (*(*v122 + 272))(v122, a3, a4, 1, 0, v11, v12, 0.0);
              --v120;
            }

            while (v120);
            v77 = a2;
            atomic_fetch_add((a2 + 140), v118 - v116);
            v115 = v118;
            v87 = v188;
            v7 = v117;
          }

          if (v194 == v115)
          {
            v115 = atomic_fetch_add(v77 + 34, 2u);
            v194 = (v115 + 2);
          }

          v116 = v115;
          v114 = v164;
        }

        while (v115 < v164);
      }

      v178 = v115;
      v89 = v162 + v170;
      ++v171;
      v176 += v170;
      v169 += v170;
      v181 -= v170;
      ++v174;
    }

    while (v174 < v77[1]);
    v6 = v176;
  }

  if (v77[35] < v89)
  {
    v123 = v89;
    v124 = 30000;
    while (v77[35] < v123)
    {
      if (!--v124)
      {
        sched_yield();
        v124 = 10000;
      }
    }
  }

  v182 = v6;
  if (v184)
  {
    v125 = 0;
    v199 = v171 * v163;
    do
    {
      if (v77[31] < v87)
      {
        v126 = 30000;
        while (v77[31] < v87)
        {
          if (!--v126)
          {
            sched_yield();
            v126 = 10000;
          }
        }
      }

      v7 = (*(v177 + 4 * v125) + v7);
      v127 = add;
      if (add < v7)
      {
        v128 = v7;
        v189 = v87;
        v129 = 0;
        do
        {
          v7 = v128;
          v130 = v127;
          v131 = v128 - v127;
          if (v131 >= v191)
          {
            v132 = v191;
          }

          else
          {
            v132 = v131;
          }

          if (v132 >= 1)
          {
            v133 = v127 - v199;
            do
            {
              v134 = (v200 + 8 * v133);
              _X10 = *(v201 + 48 * *v134 + 32);
              v136 = ~((_X10 + 383) >> 5) + (_X10 >> 5);
              do
              {
                __asm { PRFM            #0, [X10] }

                _X10 += 32;
                _CF = __CFADD__(v136++, 1);
              }

              while (!_CF);
              if (*(v134 + 2))
              {
                v138 = (v201 + 8 + 48 * *v134);
                v139 = *(v134 + 2);
                do
                {
                  _X11 = *(v138 - 1);
                  __asm { PRFM            #0, [X11] }

                  v143 = *v138;
                  v138 += 6;
                  _X11 = v143;
                  __asm { PRFM            #0, [X11] }

                  --v139;
                }

                while (v139);
              }

              (*(&_MergedGlobals_9 + *(v134 + 3) + 10))();
              ++v133;
            }

            while (v133 < v132 + v130 - v199);
          }

          if (v191 == v132)
          {
            v145 = v195;
            v127 = atomic_fetch_add((a2 + 120), v195);
            v191 = v145;
          }

          else
          {
            v191 -= v132;
            v127 = v132 + v130;
          }

          v129 += v132;
          v128 = v7;
        }

        while (v127 < v7);
        add = v127;
        if (v129)
        {
          __dmb(0xBu);
          atomic_fetch_add((a2 + 124), v129);
        }

        v77 = a2;
        v87 = v189;
      }

      v87 += *(v177 + 4 * v125++);
    }

    while (v125 != v184);
  }

  if (v77[31] < v87)
  {
    v146 = 30000;
    while (v77[31] < v87)
    {
      if (!--v146)
      {
        sched_yield();
        v146 = 10000;
      }
    }
  }

  v147 = v164 + v170;
  v148 = v178;
  if (v178 < v164 + v170)
  {
    do
    {
      if (v194 >= v147)
      {
        v149 = v147;
      }

      else
      {
        v149 = v194;
      }

      v150 = v149 - v148;
      if (v149 <= v148)
      {
        v149 = v148;
      }

      else
      {
        v151 = (v172 - 96 * v182 + 96 * v148);
        v152 = v149 - v148;
        do
        {
          (*(**v151 + 272))(*v151, a3, a4, 0, 0, v11, v12, 0.0);
          v153 = *v151;
          v151 += 12;
          (*(*v153 + 280))();
          --v152;
        }

        while (v152);
        v77 = a2;
        atomic_fetch_add((a2 + 140), v150);
      }

      v154 = v194;
      if (v194 == v149)
      {
        v149 = atomic_fetch_add(v77 + 34, 2u);
        v154 = (v149 + 2);
      }

      v194 = v154;
      v148 = v149;
    }

    while (v149 < v147);
  }

  return v163 + v163 * v171;
}

uint64_t physx::Dy::SolverCoreGeneral::writeBackV(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, _DWORD *a8, uint64_t a9, uint64_t a10)
{
  if (a5)
  {
    v12 = a5;
    v13 = a4 + 4;
    do
    {
      v14 = *(a10 + 8 * **(a2 + 48 * *(v13 - 4) + 32));
      v13 += 8;
      result = v14();
      --v12;
    }

    while (v12);
  }

  *a8 = 0;
  return result;
}

void physx::Dy::SolverCoreRegisterArticulationFnsCoulomb(physx::Dy *this)
{
  qword_1EE188F48 = physx::Dy::solveExtContactCoulombBlock;
  qword_1EE188F50 = physx::Dy::solveExt1DBlock;
  qword_1EE188FC0 = physx::Dy::solveExtContactCoulombBlockWriteBack;
  qword_1EE188FC8 = physx::Dy::solveExt1DBlockWriteBack;
  qword_1EE189038 = physx::Dy::solveExtContactCoulombConcludeBlock;
  qword_1EE189040 = physx::Dy::solveExt1DConcludeBlock;
  qword_1EE188F90 = physx::Dy::solveExtFrictionBlock;
  qword_1EE189008 = physx::Dy::solveExtFrictionBlockWriteBack;
  qword_1EE189080 = physx::Dy::solveExtFrictionBlock;
}

void physx::Dy::solveExtContactCoulombBlock(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v3 = a2;
    do
    {
      physx::Dy::solveExtContactCoulomb(a1);
      a1 += 48;
      --v3;
    }

    while (v3);
  }
}

uint64_t physx::Dy::solveExtContactCoulombBlockWriteBack(uint64_t result, unsigned int a2, uint64_t a3)
{
  if (a2)
  {
    v4 = result;
    v5 = a2;
    do
    {
      if (*(v4 + 16) == -1)
      {
        v6 = *(v4 + 20);
      }

      else
      {
        v6 = 0;
      }

      if (*(v4 + 18) == -1)
      {
        v7 = *(v4 + 24);
      }

      else
      {
        v7 = 0;
      }

      v8 = *(a3 + 24);
      v9 = v8 + 112 * v6;
      v10 = v8 + 112 * v7;
      physx::Dy::solveExtContactCoulomb(v4);
      result = physx::Dy::writeBackContactCoulomb(v4, a3, v9, v10);
      v4 += 48;
      --v5;
    }

    while (v5);
  }

  v11 = *(a3 + 16);
  if (v11)
  {
    add = atomic_fetch_add(*(a3 + 48), v11);
    v13 = *(a3 + 16);
    if (v13)
    {
      v14 = 0;
      v15 = 0;
      v16 = add + v11 - v13;
      do
      {
        v17 = (*(a3 + 8) + v14);
        v18 = (*(a3 + 32) + 32 * (v16 + v15));
        v19 = v17[1];
        *v18 = *v17;
        v18[1] = v19;
        ++v15;
        v14 += 32;
      }

      while (v15 < *(a3 + 16));
    }

    *(a3 + 16) = 0;
  }

  return result;
}

unint64_t physx::Dy::solveExtContactCoulombConcludeBlock(unint64_t result, unsigned int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = a2;
    do
    {
      physx::Dy::solveExtContactCoulomb(v2);
      result = physx::Dy::concludeContactCoulomb(*(v2 + 32));
      v2 += 48;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t physx::Dy::solveExtFrictionBlock(uint64_t result, unsigned int a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, float32x2_t a10, float32x4_t a11)
{
  if (a2)
  {
    v12 = result;
    v13 = a2;
    do
    {
      result = physx::Dy::solveExtFriction(v12, a3, a4, a5, a6, a7, a8, a9, a10, a11);
      v12 += 48;
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t physx::Dy::solveExtFrictionBlockWriteBack(uint64_t result, unsigned int a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, float32x2_t a10, float32x4_t a11)
{
  if (a2)
  {
    v12 = result;
    v13 = a2;
    do
    {
      result = physx::Dy::solveExtFriction(v12, a3, a4, a5, a6, a7, a8, a9, a10, a11);
      v12 += 48;
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t physx::Dy::SolverCoreGeneralPF::destroyV(physx::Dy::SolverCoreGeneralPF *this)
{
  (*(*this + 8))(this);
  v1 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

  return v1();
}

uint64_t physx::Dy::SolverCoreGeneralPF::solveV_Blocks(uint64_t a1, int *a2)
{
  v133 = *MEMORY[0x1E69E9840];
  for (i = 16; i != 1040; i += 32)
  {
    *&v132[i] = 0x7F0000007FLL;
  }

  v3 = *(a2 + 1);
  v127 = *(a2 + 2);
  v125 = v132;
  v126 = 0x2000000000;
  v124 = 0;
  v131 = *(a2 + 58);
  v4 = a2[16];
  v5 = a2[6];
  v6 = a2[10];
  v7 = *(a2 + 4);
  if (v4)
  {
    v112 = *(a2 + 11);
    v113 = v3;
    v114 = a2[6];
    v115 = *(a2 + 4);
    v119 = a2[10];
    v118 = a2[1];
    v8 = a2[44];
    v10 = *(a2 + 6);
    v9 = *(a2 + 7);
    v11 = *(a2 + 20);
    v117 = *(a2 + 21);
    v120 = *a2;
    if (*a2)
    {
      v12 = *a2;
      do
      {
        if (v12 == 1)
        {
          v13 = &unk_1EE189020;
        }

        else
        {
          v13 = &unk_1EE188F30;
        }

        if (v4 >= 1)
        {
          for (j = 0; j != v4; ++j)
          {
            v15 = (v9 + 8 * j);
            _X10 = *(v10 + 48 * *v15 + 32);
            v17 = ~((_X10 + 383) >> 5) + (_X10 >> 5);
            do
            {
              __asm { PRFM            #0, [X10] }

              _X10 += 32;
              _CF = __CFADD__(v17++, 1);
            }

            while (!_CF);
            if (*(v15 + 2))
            {
              v23 = (v10 + 8 + 48 * *v15);
              v24 = *(v15 + 2);
              do
              {
                _X11 = *(v23 - 1);
                __asm { PRFM            #0, [X11] }

                v28 = *v23;
                v23 += 6;
                _X11 = v28;
                __asm { PRFM            #0, [X11] }

                --v24;
              }

              while (v24);
            }

            result = v13[*(v15 + 3)]();
          }
        }

        --v12;
      }

      while (v12);
    }

    if (v8 > 0)
    {
      v31 = 2 * v120;
      if (2 * v120)
      {
        do
        {
          v32 = 0;
          v121 = v31;
          if (v31 == 1)
          {
            v33 = &unk_1EE189020;
          }

          else
          {
            v33 = &unk_1EE188F30;
          }

          do
          {
            v34 = (v117 + 8 * v32);
            _X10 = *(v11 + 48 * *v34 + 32);
            v36 = ~((_X10 + 383) >> 5) + (_X10 >> 5);
            do
            {
              __asm { PRFM            #0, [X10] }

              _X10 += 32;
              _CF = __CFADD__(v36++, 1);
            }

            while (!_CF);
            if (*(v34 + 2))
            {
              v38 = (v11 + 8 + 48 * *v34);
              v39 = *(v34 + 2);
              do
              {
                _X11 = *(v38 - 1);
                __asm { PRFM            #0, [X11] }

                v43 = *v38;
                v38 += 6;
                _X11 = v43;
                __asm { PRFM            #0, [X11] }

                --v39;
              }

              while (v39);
            }

            result = v33[*(v34 + 3)]();
            ++v32;
          }

          while (v32 != v8);
          v31 = v121 - 1;
        }

        while (v121 != 1);
      }
    }

    v45 = v114;
    v46 = v115;
    if (v114)
    {
      v47 = v113 + 16;
      v48 = v112 + 16;
      do
      {
        *(v48 - 16) = *(v47 - 16);
        *(v48 - 8) = *(v47 - 8);
        *v48 = *v47;
        *(v48 + 8) = *(v47 + 8);
        v47 += 32;
        v48 += 32;
        --v45;
      }

      while (v45);
    }

    v49 = v119;
    if (v119)
    {
      do
      {
        v50 = physx::Dy::ArticulationPImpl::sSaveVelocity[*(*v46 + 40)];
        if (v50)
        {
          result = v50(v46, *(&v131 + 1));
        }

        v46 += 96;
        --v49;
      }

      while (v49);
    }

    if (v118 != 1)
    {
      v51 = 0;
      do
      {
        v122 = v51;
        if (v4 >= 1)
        {
          for (k = 0; k != v4; ++k)
          {
            v53 = (v9 + 8 * k);
            _X10 = *(v10 + 48 * *v53 + 32);
            v55 = ~((_X10 + 383) >> 5) + (_X10 >> 5);
            do
            {
              __asm { PRFM            #0, [X10] }

              _X10 += 32;
              _CF = __CFADD__(v55++, 1);
            }

            while (!_CF);
            if (*(v53 + 2))
            {
              v57 = (v10 + 8 + 48 * *v53);
              v58 = *(v53 + 2);
              do
              {
                _X11 = *(v57 - 1);
                __asm { PRFM            #0, [X11] }

                v62 = *v57;
                v57 += 6;
                _X11 = v62;
                __asm { PRFM            #0, [X11] }

                --v58;
              }

              while (v58);
            }

            result = (*(&_MergedGlobals_9 + *(v53 + 3) + 30))();
          }
        }

        if (v8 >= 1)
        {
          for (m = 0; m != v8; ++m)
          {
            v65 = (v117 + 8 * m);
            _X10 = *(v11 + 48 * *v65 + 32);
            v67 = ~((_X10 + 383) >> 5) + (_X10 >> 5);
            do
            {
              __asm { PRFM            #0, [X10] }

              _X10 += 32;
              _CF = __CFADD__(v67++, 1);
            }

            while (!_CF);
            if (*(v65 + 2))
            {
              v69 = (v11 + 8 + 48 * *v65);
              v70 = *(v65 + 2);
              do
              {
                _X11 = *(v69 - 1);
                __asm { PRFM            #0, [X11] }

                v74 = *v69;
                v69 += 6;
                _X11 = v74;
                __asm { PRFM            #0, [X11] }

                --v70;
              }

              while (v70);
            }

            result = (*(&_MergedGlobals_9 + *(v65 + 3) + 30))();
          }
        }

        v51 = v122 + 1;
      }

      while (v122 + 1 != v118 - 1);
    }

    v123 = *(a2 + 27);
    v76 = *(a2 + 25);
    v77 = a2[52];
    v124 = 1;
    v130 = v123;
    v129 = v77;
    v128 = v76;
    if (v118)
    {
      if (v4 >= 1)
      {
        for (n = 0; n != v4; ++n)
        {
          v79 = (v9 + 8 * n);
          _X10 = *(v10 + 48 * *v79 + 32);
          v81 = ~((_X10 + 383) >> 5) + (_X10 >> 5);
          do
          {
            __asm { PRFM            #0, [X10] }

            _X10 += 32;
            _CF = __CFADD__(v81++, 1);
          }

          while (!_CF);
          if (*(v79 + 2))
          {
            v83 = (v10 + 8 + 48 * *v79);
            v84 = *(v79 + 2);
            do
            {
              _X11 = *(v83 - 1);
              __asm { PRFM            #0, [X11] }

              v88 = *v83;
              v83 += 6;
              _X11 = v88;
              __asm { PRFM            #0, [X11] }

              --v84;
            }

            while (v84);
          }

          result = (*(&_MergedGlobals_9 + *(v79 + 3) + 45))();
        }
      }

      if (v8 >= 1)
      {
        for (ii = 0; ii != v8; ++ii)
        {
          v91 = (v117 + 8 * ii);
          _X10 = *(v11 + 48 * *v91 + 32);
          v93 = ~((_X10 + 383) >> 5) + (_X10 >> 5);
          do
          {
            __asm { PRFM            #0, [X10] }

            _X10 += 32;
            _CF = __CFADD__(v93++, 1);
          }

          while (!_CF);
          if (*(v91 + 2))
          {
            v95 = (v11 + 8 + 48 * *v91);
            v96 = *(v91 + 2);
            do
            {
              _X11 = *(v95 - 1);
              __asm { PRFM            #0, [X11] }

              v100 = *v95;
              v95 += 6;
              _X11 = v100;
              __asm { PRFM            #0, [X11] }

              --v96;
            }

            while (v96);
          }

          result = (*(&_MergedGlobals_9 + *(v91 + 3) + 45))();
        }
      }
    }

    v102 = v126;
    if (v126)
    {
      add = atomic_fetch_add(&v123, v126);
      if (v126)
      {
        v104 = 0;
        v105 = 0;
        v106 = add + v102 - v126;
        do
        {
          v107 = (v76 + 32 * (v106 + v105));
          v108 = *&v125[v104 + 16];
          *v107 = *&v125[v104];
          v107[1] = v108;
          ++v105;
          v104 += 32;
        }

        while (v105 < v126);
      }
    }
  }

  else
  {
    if (v5)
    {
      v109 = *(a2 + 11) + 16;
      v110 = v3 + 16;
      do
      {
        *(v109 - 16) = *(v110 - 16);
        *(v109 - 8) = *(v110 - 8);
        *v109 = *v110;
        *(v109 + 8) = *(v110 + 8);
        v109 += 32;
        v110 += 32;
        --v5;
      }

      while (v5);
    }

    if (v6)
    {
      do
      {
        v111 = physx::Dy::ArticulationPImpl::sSaveVelocity[*(*v7 + 40)];
        if (v111)
        {
          result = v111(v7, *(&v131 + 1));
        }

        v7 += 96;
        --v6;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t physx::Dy::SolverCoreGeneralPF::solveVParallelAndWriteBack(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v263 = *MEMORY[0x1E69E9840];
  v253 = a2[24];
  for (i = 16; i != 1040; i += 32)
  {
    *&v262[i] = 0x7F0000007FLL;
  }

  LODWORD(v6) = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v209 = a2[44];
  v210 = a2[16];
  v200 = a2[6];
  v201 = a2[1];
  v202 = a2[10];
  v203 = *a2;
  add = atomic_fetch_add(a2 + 30, v253);
  v211 = atomic_fetch_add(a2 + 49, v253);
  v11 = a2[20];
  v236 = *(a2 + 9);
  v237 = *(a2 + 23);
  v238 = a2[48];
  v257 = *(a2 + 7);
  v259 = *(a2 + 6);
  v12 = v203 - 1;
  v255 = *(a2 + 21);
  v256 = *(a2 + 20);
  v13 = 1;
  v14 = v203 - 1;
  v234 = v253;
  v221 = v11;
  do
  {
    v15 = v13;
    if (v13)
    {
      v16 = 240;
    }

    else
    {
      v16 = 480;
    }

    if (v9 < v10 + v12)
    {
      v206 = v15;
      v215 = v14;
      v219 = v8;
      v17 = &_MergedGlobals_9 + v16;
      v222 = v12 + v8 + v10 - v9;
      do
      {
        if (v11)
        {
          v18 = 0;
          v247 = v219 * v210;
          do
          {
            if (v4[31] < v7)
            {
              v19 = 30000;
              while (v4[31] < v7)
              {
                if (!--v19)
                {
                  sched_yield();
                  v19 = 10000;
                }
              }
            }

            v20 = *(v236 + 4 * v18);
            v6 = (v20 + v6);
            if (add < v6)
            {
              v225 = *(v236 + 4 * v18);
              v229 = v18;
              v241 = v7;
              v21 = 0;
              v22 = add;
              v23 = v234;
              do
              {
                v24 = v6;
                v25 = v22;
                v26 = v6 - v22;
                v27 = v23;
                if (v26 >= v23)
                {
                  v28 = v23;
                }

                else
                {
                  v28 = v26;
                }

                if (v28 >= 1)
                {
                  v29 = v25 - v247;
                  do
                  {
                    v30 = (v257 + 8 * v29);
                    _X10 = *(v259 + 48 * *v30 + 32);
                    v32 = ~((_X10 + 383) >> 5) + (_X10 >> 5);
                    do
                    {
                      __asm { PRFM            #0, [X10] }

                      _X10 += 32;
                      _CF = __CFADD__(v32++, 1);
                    }

                    while (!_CF);
                    if (*(v30 + 2))
                    {
                      v38 = (v259 + 8 + 48 * *v30);
                      v39 = *(v30 + 2);
                      do
                      {
                        _X11 = *(v38 - 1);
                        __asm { PRFM            #0, [X11] }

                        v43 = *v38;
                        v38 += 6;
                        _X11 = v43;
                        __asm { PRFM            #0, [X11] }

                        --v39;
                      }

                      while (v39);
                    }

                    (*&v17[8 * *(v30 + 3)])();
                    ++v29;
                  }

                  while (v29 < v28 + v25 - v247);
                }

                v23 = v27 - v28;
                if (v27 == v28)
                {
                  v23 = v253;
                  v22 = atomic_fetch_add(a2 + 30, v253);
                }

                else
                {
                  v22 = v28 + v25;
                }

                v21 += v28;
                v6 = v24;
              }

              while (v22 < v24);
              v234 = v23;
              add = v22;
              if (v21)
              {
                __dmb(0xBu);
                v4 = a2;
                atomic_fetch_add(a2 + 31, v21);
              }

              else
              {
                v4 = a2;
              }

              v7 = v241;
              v11 = v221;
              v18 = v229;
              v20 = v225;
            }

            v7 += v20;
            ++v18;
          }

          while (v18 != v11);
        }

        ++v219;
      }

      while (v219 != v222);
      v14 = v215;
      v9 = v215;
      v8 = v222;
      v12 = v203 - 1;
      v15 = v206;
    }

    v13 = 0;
    ++v14;
    v10 = 1;
  }

  while ((v15 & 1) != 0);
  v216 = 0;
  v220 = v8;
  LODWORD(v45) = 0;
  v46 = 0;
  v47 = 2 * v203 - 1;
  v48 = 1;
  v207 = v47;
  v49 = v253;
  v50 = v211;
  v204 = v47;
  do
  {
    v205 = v48;
    _ZF = (v48 & 1) == 0;
    v51 = 480;
    if (!_ZF)
    {
      v51 = 240;
    }

    if (v9 >= v46 + v47)
    {
      v77 = v207;
    }

    else
    {
      v223 = v6;
      v52 = &_MergedGlobals_9 + v51;
      v212 = v47 + v216 + v46 - v9;
      v53 = v216;
      do
      {
        v217 = v53;
        if (v238)
        {
          v54 = 0;
          v248 = v53 * v209;
          do
          {
            if (v4[31] < v7)
            {
              v55 = 30000;
              while (v4[31] < v7)
              {
                if (!--v55)
                {
                  sched_yield();
                  v55 = 10000;
                }
              }
            }

            v56 = *(v237 + 4 * v54);
            v45 = (v56 + v45);
            if (v50 >= v45)
            {
              v58 = v49;
            }

            else
            {
              v226 = *(v237 + 4 * v54);
              v230 = v54;
              v242 = v7;
              v57 = 0;
              LODWORD(v58) = v49;
              do
              {
                v59 = v50;
                v60 = v45;
                v61 = v58;
                if (v45 - v50 >= v58)
                {
                  v62 = v58;
                }

                else
                {
                  v62 = v45 - v50;
                }

                if (v62 >= 1)
                {
                  v63 = v50 - v248;
                  v64 = v50 - v248;
                  v65 = v62 + v63;
                  do
                  {
                    v66 = (v255 + 8 * v64);
                    _X10 = *(v256 + 48 * *v66 + 32);
                    v68 = ~((_X10 + 383) >> 5) + (_X10 >> 5);
                    do
                    {
                      __asm { PRFM            #0, [X10] }

                      _X10 += 32;
                      _CF = __CFADD__(v68++, 1);
                    }

                    while (!_CF);
                    if (*(v66 + 2))
                    {
                      v70 = (v256 + 8 + 48 * *v66);
                      v71 = *(v66 + 2);
                      do
                      {
                        _X11 = *(v70 - 1);
                        __asm { PRFM            #0, [X11] }

                        v75 = *v70;
                        v70 += 6;
                        _X11 = v75;
                        __asm { PRFM            #0, [X11] }

                        --v71;
                      }

                      while (v71);
                    }

                    (*&v52[8 * *(v66 + 3)])();
                    ++v64;
                  }

                  while (v64 < v65);
                }

                v58 = (v61 - v62);
                if (v61 == v62)
                {
                  v58 = v253;
                  v50 = atomic_fetch_add(a2 + 49, v253);
                }

                else
                {
                  v50 = v62 + v59;
                }

                v45 = v60;
                v57 += v62;
              }

              while (v50 < v60);
              if (v57)
              {
                __dmb(0xBu);
                v4 = a2;
                atomic_fetch_add(a2 + 31, v57);
              }

              else
              {
                v4 = a2;
              }

              v7 = v242;
              v54 = v230;
              v56 = v226;
            }

            v49 = v58;
            v7 += v56;
            ++v54;
          }

          while (v54 != v238);
        }

        v53 = v217 + 1;
      }

      while (v217 + 1 != v212);
      v77 = v207;
      v9 = v207;
      v216 = v212;
      LODWORD(v6) = v223;
      v47 = v204;
    }

    v48 = 0;
    v207 = v77 + 1;
    v46 = 1;
  }

  while ((v205 & 1) != 0);
  v78 = v202;
  if (v4[31] < v7)
  {
    v79 = 30000;
    while (v4[31] < v7)
    {
      if (!--v79)
      {
        sched_yield();
        v79 = 10000;
      }
    }
  }

  v243 = v7;
  v249 = v45;
  v224 = v6;
  v80 = *(v4 + 4);
  v227 = *(v4 + 11);
  v231 = *(v4 + 1);
  v81 = atomic_fetch_add(v4 + 32, 0x40u);
  if (v81 >= v202)
  {
    v82 = 0;
    v83 = 64;
  }

  else
  {
    v82 = 0;
    v83 = 64;
    do
    {
      if (v78 - v81 >= 64)
      {
        v84 = 64;
      }

      else
      {
        v84 = v78 - v81;
      }

      if (v78 - v81 >= 1)
      {
        if (v84 <= 1)
        {
          v85 = 1;
        }

        else
        {
          v85 = v84;
        }

        v86 = v80 + 96 * v81;
        v81 += v85;
        do
        {
          v87 = physx::Dy::ArticulationPImpl::sSaveVelocity[*(*v86 + 40)];
          if (v87)
          {
            v87(v86, a4);
          }

          v86 += 96;
          --v85;
        }

        while (v85);
        v78 = v202;
      }

      v83 -= v84;
      if (!v83)
      {
        v83 = 64;
        v81 = atomic_fetch_add(a2 + 32, 0x40u);
      }

      v82 += 2 * v84;
    }

    while (v81 < v78);
  }

  for (j = v81 - v78; j < v200; j = atomic_fetch_add(a2 + 32, 0x40u) - v78)
  {
    v89 = v200 - j;
    if (v83 < v200 - j)
    {
      v89 = v83;
    }

    if (v89 >= 1)
    {
      v90 = 32 * j;
      v91 = v231;
      v92 = v89;
      v93 = v227;
      do
      {
        _X13 = v91 + v90;
        __asm { PRFM            #0, [X13,#0x100] }

        _X14 = v93 + v90;
        __asm { PRFM            #0, [X14,#0x100] }

        *_X14 = *(v91 + v90);
        *(_X14 + 8) = *(v91 + v90 + 8);
        *(_X14 + 16) = *(v91 + v90 + 16);
        *(_X14 + 24) = *(v91 + v90 + 24);
        v93 += 32;
        v91 += 32;
        --v92;
      }

      while (v92);
    }

    v82 += v89;
    v83 = 64;
  }

  v98 = a2;
  if (v82)
  {
    __dmb(0xBu);
    atomic_fetch_add(a2 + 33, v82);
  }

  v99 = v243;
  v100 = v249;
  if (a2[33] < v78 + v200)
  {
    v101 = 30000;
    while (a2[33] < v78 + v200)
    {
      if (!--v101)
      {
        sched_yield();
        v101 = 10000;
      }
    }
  }

  if (v201 == 1)
  {
    v208 = v220;
    v150 = v216;
  }

  else
  {
    v208 = v220 + v201 - 1;
    v102 = v259 + 8;
    do
    {
      if (v221)
      {
        v103 = 0;
        v250 = v220 * v210;
        v213 = v50;
        do
        {
          if (v98[31] < v99)
          {
            v104 = 30000;
            while (v98[31] < v99)
            {
              if (!--v104)
              {
                sched_yield();
                v104 = 10000;
              }
            }
          }

          v105 = *(v236 + 4 * v103);
          v224 += v105;
          if (add < v224)
          {
            v228 = v103;
            v232 = *(v236 + 4 * v103);
            v244 = v99;
            v106 = 0;
            v107 = v224;
            v108 = add;
            v109 = v234;
            do
            {
              v110 = v100;
              v111 = v108;
              v112 = v107 - v108;
              v113 = v109;
              if (v112 >= v109)
              {
                v112 = v109;
              }

              v114 = v112;
              if (v112 >= 1)
              {
                v115 = v108 - v250;
                v116 = v112 + v108 - v250;
                do
                {
                  v117 = (v257 + 8 * v115);
                  _X10 = *(v259 + 48 * *v117 + 32);
                  v119 = ~((_X10 + 383) >> 5) + (_X10 >> 5);
                  do
                  {
                    __asm { PRFM            #0, [X10] }

                    _X10 += 32;
                    _CF = __CFADD__(v119++, 1);
                  }

                  while (!_CF);
                  if (*(v117 + 2))
                  {
                    v121 = (v102 + 48 * *v117);
                    v122 = *(v117 + 2);
                    do
                    {
                      _X11 = *(v121 - 1);
                      __asm { PRFM            #0, [X11] }

                      v126 = *v121;
                      v121 += 6;
                      _X11 = v126;
                      __asm { PRFM            #0, [X11] }

                      --v122;
                    }

                    while (v122);
                  }

                  (*(&_MergedGlobals_9 + *(v117 + 3) + 30))();
                  ++v115;
                }

                while (v115 < v116);
              }

              v109 = v113 - v114;
              if (v113 == v114)
              {
                v109 = v253;
                v108 = atomic_fetch_add(a2 + 30, v253);
              }

              else
              {
                v108 = v114 + v111;
              }

              v107 = v224;
              v100 = v110;
              v106 += v114;
            }

            while (v108 < v224);
            v234 = v109;
            add = v108;
            if (v106)
            {
              __dmb(0xBu);
              v98 = a2;
              atomic_fetch_add(a2 + 31, v106);
            }

            else
            {
              v98 = a2;
            }

            v99 = v244;
            v50 = v213;
            v105 = v232;
            v103 = v228;
          }

          v99 += v105;
          ++v103;
        }

        while (v103 != v221);
      }

      v128 = ++v220;
      if (v238)
      {
        v129 = 0;
        v130 = add - v128 * v210;
        do
        {
          v245 = v99;
          if (a2[31] < v99)
          {
            v131 = 30000;
            while (a2[31] < v99)
            {
              if (!--v131)
              {
                sched_yield();
                v131 = 10000;
              }
            }
          }

          v132 = *(v237 + 4 * v129);
          v100 = (v132 + v100);
          if (v50 >= v100)
          {
            v134 = v49;
          }

          else
          {
            v233 = *(v237 + 4 * v129);
            v251 = v129;
            v133 = 0;
            LODWORD(v134) = v49;
            do
            {
              v135 = v100;
              v136 = v134;
              if (v100 - v50 >= v134)
              {
                v137 = v134;
              }

              else
              {
                v137 = v100 - v50;
              }

              if (v137 >= 1)
              {
                v138 = v130;
                do
                {
                  v139 = (v257 + 8 * v138);
                  _X10 = *(v259 + 48 * *v139 + 32);
                  v141 = ~((_X10 + 383) >> 5) + (_X10 >> 5);
                  do
                  {
                    __asm { PRFM            #0, [X10] }

                    _X10 += 32;
                    _CF = __CFADD__(v141++, 1);
                  }

                  while (!_CF);
                  if (*(v139 + 2))
                  {
                    v143 = (v102 + 48 * *v139);
                    v144 = *(v139 + 2);
                    do
                    {
                      _X11 = *(v143 - 1);
                      __asm { PRFM            #0, [X11] }

                      v148 = *v143;
                      v143 += 6;
                      _X11 = v148;
                      __asm { PRFM            #0, [X11] }

                      --v144;
                    }

                    while (v144);
                  }

                  (*(&_MergedGlobals_9 + *(v139 + 3) + 30))();
                  ++v138;
                }

                while (v138 < v137 + v130);
              }

              v134 = (v136 - v137);
              if (v136 == v137)
              {
                v134 = v253;
                v50 = atomic_fetch_add(a2 + 49, v253);
              }

              else
              {
                v50 += v137;
              }

              v100 = v135;
              v133 += v137;
            }

            while (v50 < v135);
            if (v133)
            {
              __dmb(0xBu);
              atomic_fetch_add(a2 + 31, v133);
            }

            v129 = v251;
            v132 = v233;
          }

          v49 = v134;
          v99 = v132 + v245;
          ++v129;
        }

        while (v129 != v238);
      }

      v98 = a2;
    }

    while (v220 != v208);
    v150 = v216 + v201 - 1;
  }

  v252 = v100;
  v214 = v50;
  v218 = v150;
  v151 = v221;
  if (v221)
  {
    v152 = 0;
    v153 = add;
    v154 = v234;
    do
    {
      v246 = v99;
      v155 = v224;
      if (a2[31] < v99)
      {
        v156 = 30000;
        while (a2[31] < v99)
        {
          if (!--v156)
          {
            sched_yield();
            v156 = 10000;
          }
        }
      }

      v157 = *(v236 + 4 * v152);
      v224 += v157;
      if (v153 < v157 + v155)
      {
        v235 = *(v236 + 4 * v152);
        v240 = v152;
        v158 = 0;
        v159 = v224;
        do
        {
          v160 = v159 - v153;
          if (v160 >= v154)
          {
            v161 = v154;
          }

          else
          {
            v161 = v160;
          }

          if (v161 >= 1)
          {
            for (k = 0; k != v161; ++k)
            {
              v163 = (v257 + 8 * k);
              _X10 = *(v259 + 48 * *v163 + 32);
              v165 = ~((_X10 + 383) >> 5) + (_X10 >> 5);
              do
              {
                __asm { PRFM            #0, [X10] }

                _X10 += 32;
                _CF = __CFADD__(v165++, 1);
              }

              while (!_CF);
              if (*(v163 + 2))
              {
                v167 = (v259 + 8 + 48 * *v163);
                v168 = *(v163 + 2);
                do
                {
                  _X11 = *(v167 - 1);
                  __asm { PRFM            #0, [X11] }

                  v172 = *v167;
                  v167 += 6;
                  _X11 = v172;
                  __asm { PRFM            #0, [X11] }

                  --v168;
                }

                while (v168);
              }

              (*(&_MergedGlobals_9 + *(v163 + 3) + 45))();
            }
          }

          v174 = v154 - v161;
          if (v154 == v161)
          {
            v174 = v253;
            v153 = atomic_fetch_add(a2 + 30, v253);
          }

          else
          {
            v153 += v161;
          }

          v151 = v221;
          v158 += v161;
          v159 = v224;
          v154 = v174;
        }

        while (v153 < v224);
        if (v158)
        {
          __dmb(0xBu);
          atomic_fetch_add(a2 + 31, v158);
        }

        v152 = v240;
        v157 = v235;
      }

      v99 = v157 + v246;
      ++v152;
    }

    while (v152 != v151);
  }

  v175 = a2;
  if (v238)
  {
    v176 = v99;
    v177 = 0;
    v178 = v218 * v209;
    do
    {
      if (v175[31] < v176)
      {
        v179 = 30000;
        while (v175[31] < v176)
        {
          if (!--v179)
          {
            sched_yield();
            v179 = 10000;
          }
        }
      }

      v180 = *(v237 + 4 * v177);
      v252 += v180;
      if (v214 < v252)
      {
        v258 = *(v237 + 4 * v177);
        v260 = v177;
        v181 = 0;
        v182 = v214;
        v183 = v252;
        do
        {
          v184 = v182;
          v185 = v183 - v182;
          if (v185 >= v49)
          {
            v186 = v49;
          }

          else
          {
            v186 = v185;
          }

          if (v186 >= 1)
          {
            v187 = v184 - v178;
            do
            {
              v188 = (v255 + 8 * v187);
              _X10 = *(v256 + 48 * *v188 + 32);
              v190 = ~((_X10 + 383) >> 5) + (_X10 >> 5);
              do
              {
                __asm { PRFM            #0, [X10] }

                _X10 += 32;
                _CF = __CFADD__(v190++, 1);
              }

              while (!_CF);
              if (*(v188 + 2))
              {
                v192 = (v256 + 8 + 48 * *v188);
                v193 = *(v188 + 2);
                do
                {
                  _X11 = *(v192 - 1);
                  __asm { PRFM            #0, [X11] }

                  v197 = *v192;
                  v192 += 6;
                  _X11 = v197;
                  __asm { PRFM            #0, [X11] }

                  --v193;
                }

                while (v193);
              }

              (*(&_MergedGlobals_9 + *(v188 + 3) + 45))();
              ++v187;
            }

            while (v187 < v186 + v184 - v178);
          }

          LODWORD(v49) = v49 - v186;
          if (v49)
          {
            v182 = v186 + v184;
          }

          else
          {
            LODWORD(v49) = v253;
            v182 = atomic_fetch_add(a2 + 49, v253);
          }

          v181 += v186;
          v183 = v252;
        }

        while (v182 < v252);
        v214 = v182;
        if (v181)
        {
          __dmb(0xBu);
          v175 = a2;
          atomic_fetch_add(a2 + 31, v181);
        }

        else
        {
          v175 = a2;
        }

        v177 = v260;
        v180 = v258;
      }

      v176 += v180;
      ++v177;
    }

    while (v177 != v238);
  }

  return v210 + v210 * v208 + v209 + v209 * v218;
}

uint64_t physx::Dy::SolverCoreGeneralPF::writeBackV(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, _DWORD *a8, uint64_t a9, uint64_t a10)
{
  if (a5)
  {
    v12 = a5;
    v13 = a4 + 4;
    do
    {
      v14 = *(a10 + 8 * **(a2 + 48 * *(v13 - 4) + 32));
      v13 += 8;
      result = v14();
      --v12;
    }

    while (v12);
  }

  *a8 = 0;
  return result;
}

const float *physx::Dy::solveContactCoulomb(const float *result, double a2, double a3, double a4, double a5, double a6, float32x2_t a7, float32x2_t a8)
{
  v10 = *result;
  v9 = *(result + 1);
  v12.i64[0] = **result;
  v11 = (*result + 8);
  v12.i64[1] = *v11;
  v13.i64[0] = *v9;
  v13.i64[1] = *(v9 + 8);
  v15.i64[0] = *(*result + 16);
  v14 = (*result + 24);
  v15.i64[1] = *v14;
  v16.i64[0] = *(v9 + 16);
  v16.i64[1] = *(v9 + 24);
  v17 = *(result + 4);
  if (*(v17 + 2))
  {
    v18 = v17 + *(v17 + 2);
    do
    {
      v19 = *(v17 + 1);
      result = (v17 + *(v17 + 2));
      __asm { PRFM            #0, [X0,#0x20] }

      if (*(v17 + 1))
      {
        v25.i64[0] = *(v17 + 16);
        v25.i64[1] = *(v17 + 24);
        a7.i32[0] = *(v17 + 4);
        a8.i32[0] = *(v17 + 28);
        v26 = (result + 8);
        v27 = vmulq_n_f32(v25, *(v17 + 8));
        v27.i32[3] = 0;
        v28 = vmulq_n_f32(v25, *(v17 + 12));
        v28.i32[3] = 0;
        v29 = vnegq_f32(v28);
        result = (v17 + 92);
        v30 = *(v17 + 1);
        v31 = v26;
        do
        {
          __asm { PRFUM           #0, [X0,#0x54] }

          v33 = *(result - 11);
          v34 = *(result - 7);
          v35 = vld1_dup_f32(v31++);
          v36 = vld1_dup_f32(result);
          v8.f32[0] = *(result - 3);
          v37 = vsubq_f32(vmlaq_f32(vmulq_f32(v15, v33), v25, v12), vmlaq_f32(vmulq_f32(v16, v34), v25, v13));
          v37.i64[0] = vpaddq_f32(v37, v37).u64[0];
          v38 = result - 2;
          v39 = vld1_dup_f32(v38);
          v40 = vmin_f32(vadd_f32(v35, vmax_f32(vmls_lane_f32(v39, vpadd_f32(*v37.f32, *v37.f32), v8, 0), vneg_f32(v35))), v36);
          v41 = vsub_f32(v40, v35);
          v12 = vmlaq_n_f32(v12, v27, v41.f32[0]);
          v12.i64[1] = vextq_s8(v12, v12, 8uLL).u32[0];
          v13 = vmlaq_n_f32(v13, v29, v41.f32[0]);
          v13.i64[1] = vextq_s8(v13, v13, 8uLL).u32[0];
          v8 = vmul_f32(a7, v41);
          v15 = vmlaq_n_f32(v15, v33, v8.f32[0]);
          v15.i64[1] = vextq_s8(v15, v15, 8uLL).u32[0];
          v16 = vmlsq_lane_f32(v16, v34, vmul_f32(a8, v41), 0);
          v16.i64[1] = vextq_s8(v16, v16, 8uLL).u32[0];
          *v26 = v40.f32[0];
          result += 12;
          v26 = v31;
          --v30;
        }

        while (v30);
      }

      v17 += 48 * v19 + 48;
    }

    while (v17 < v18);
  }

  *v10 = v12.i64[0];
  *v11 = v12.i32[2];
  *v9 = v13.i64[0];
  *(v9 + 8) = v13.i32[2];
  v10[2] = v15.i64[0];
  *v14 = v15.i32[2];
  *(v9 + 16) = v16.i64[0];
  *(v9 + 24) = v16.i32[2];
  return result;
}

uint64_t **physx::Dy::solveFriction(uint64_t **result, double a2, double a3, double a4, double a5, double a6, float32x2_t a7, float32x2_t a8)
{
  v10 = *result;
  v9 = result[1];
  v12.i64[0] = **result;
  v11 = *result + 1;
  v12.i64[1] = *v11;
  v13.i64[0] = *v9;
  v13.i64[1] = *(v9 + 2);
  v15.i64[0] = (*result)[2];
  v14 = *result + 3;
  v15.i64[1] = *v14;
  v16.i64[0] = v9[2];
  v16.i64[1] = *(v9 + 6);
  if (*(result + 15))
  {
    v17 = result[4];
    v18 = v17 + 16 * *(result + 15);
    do
    {
      v19 = v17 + 32;
      result = *(v17 + 1);
      v20 = v17 + 32 + ((4 * result + 12) & 0x7F0);
      v21 = *(v17 + 2);
      if (*(v17 + 2))
      {
        v22 = 0;
        v23 = 0;
        v24 = *(v17 + 4);
        v25 = (v17 + 12);
        a7.i32[0] = *(v17 + 16);
        a8.i32[0] = *(v17 + 20);
        v26 = (v17 + 8);
        v27 = vld1q_dup_f32(v26);
        v28 = vld1q_dup_f32(v25);
        do
        {
          if (result <= v21)
          {
            v29 = 0;
            do
            {
              _X6 = v20 + (v22 << 6);
              __asm { PRFM            #0, [X6,#0x80] }

              v36 = *_X6;
              v37 = *_X6;
              v37.i32[3] = 0;
              v38 = *(_X6 + 16);
              v38.i32[3] = 0;
              v39 = *(_X6 + 32);
              v39.i32[3] = 0;
              v40 = vdup_laneq_s32(*_X6, 3);
              v41 = (_X6 + 48);
              v42 = vld1_dup_f32(v41);
              v8.f32[0] = v24 * *(v19 + 4 * v23);
              v8 = vdup_lane_s32(v8, 0);
              v43 = vmulq_f32(v12, v37);
              v43.i64[0] = vpaddq_f32(v43, v43).u64[0];
              v44 = vmulq_f32(v15, v38);
              v44.i64[0] = vpaddq_f32(v44, v44).u64[0];
              v45 = vmulq_f32(v13, v37);
              v45.i64[0] = vpaddq_f32(v45, v45).u64[0];
              v46 = vmulq_f32(v16, v39);
              v46.i64[0] = vpaddq_f32(v46, v46).u64[0];
              *v43.f32 = vadd_f32(vpadd_f32(*v43.f32, *v43.f32), vpadd_f32(*v44.f32, *v44.f32));
              *v44.f32 = vadd_f32(vpadd_f32(*v45.f32, *v45.f32), vpadd_f32(*v46.f32, *v46.f32));
              v47 = vmulq_f32(v27, v37);
              v47.i32[3] = 0;
              v48 = vmulq_f32(v28, v37);
              v48.i32[3] = 0;
              v49 = vmax_f32(vmin_f32(vmla_laneq_f32(vmls_laneq_f32(v40, v42, *(_X6 + 16), 3), vsub_f32(*v43.f32, *v44.f32), *(_X6 + 16), 3), v8), vneg_f32(v8));
              v50 = vsub_f32(v49, v40);
              v12 = vmlaq_n_f32(v12, v47, v50.f32[0]);
              v12.i64[1] = vextq_s8(v12, v12, 8uLL).u32[0];
              v13 = vmlsq_lane_f32(v13, v48, v50, 0);
              v13.i64[1] = vextq_s8(v13, v13, 8uLL).u32[0];
              v15 = vmlaq_n_f32(v15, v38, vmul_f32(a7, v50).f32[0]);
              v15.i64[1] = vextq_s8(v15, v15, 8uLL).u32[0];
              v16 = vmlsq_lane_f32(v16, v39, vmul_f32(a8, v50), 0);
              v16.i64[1] = vextq_s8(v16, v16, 8uLL).u32[0];
              v36.i32[3] = v49.i32[1];
              *_X6 = v36;
              ++v29;
              ++v22;
            }

            while (v29 < v21 / result);
          }

          ++v23;
        }

        while (v22 < v21);
      }

      v17 = v20 + (v21 << 6);
    }

    while (v17 < v18);
  }

  *v10 = v12.i64[0];
  *v11 = v12.i32[2];
  *v9 = v13.i64[0];
  *(v9 + 2) = v13.i32[2];
  v10[2] = v15.i64[0];
  *v14 = v15.i32[2];
  v9[2] = v16.i64[0];
  *(v9 + 6) = v16.i32[2];
  return result;
}

uint64_t physx::Dy::solveContactCoulomb_BStatic(uint64_t result, unint64_t _X1, double a3, double a4, double a5, float32x2_t a6, double a7, double a8, double a9, float32x2_t a10)
{
  v10.i64[0] = *result;
  v10.i64[1] = *(result + 8);
  v11.i64[0] = *(result + 16);
  v11.i64[1] = *(result + 24);
  if (*(_X1 + 2))
  {
    v12 = _X1 + *(_X1 + 2);
    do
    {
      v13 = *(_X1 + 1);
      __asm { PRFM            #0, [X1,#0x30] }

      _X13 = _X1 + *(_X1 + 2);
      __asm { PRFM            #0, [X13,#0x20] }

      if (*(_X1 + 1))
      {
        v21 = (_X13 + 32);
        v22.i64[0] = *(_X1 + 16);
        v22.i64[1] = *(_X1 + 24);
        a6.i32[0] = *(_X1 + 4);
        v23 = vmulq_n_f32(v22, *(_X1 + 8));
        v23.i32[3] = 0;
        _X14 = (_X1 + 92);
        v25 = *(_X1 + 1);
        v26 = v21;
        do
        {
          __asm { PRFUM           #0, [X14,#0x54] }

          v28 = *(_X14 - 11);
          v29 = vld1_dup_f32(v26++);
          a10.f32[0] = *(_X14 - 3);
          v30 = vld1_dup_f32(_X14);
          v31 = vmlaq_f32(vmulq_f32(v11, v28), v22, v10);
          v31.i64[0] = vpaddq_f32(v31, v31).u64[0];
          v32 = _X14 - 2;
          v33 = vld1_dup_f32(v32);
          a10 = vmin_f32(vadd_f32(v29, vmax_f32(vmls_lane_f32(v33, vpadd_f32(*v31.f32, *v31.f32), a10, 0), vneg_f32(v29))), v30);
          v34 = vsub_f32(a10, v29);
          v10 = vmlaq_n_f32(v10, v23, v34.f32[0]);
          v10.i64[1] = vextq_s8(v10, v10, 8uLL).u32[0];
          v11 = vmlaq_n_f32(v11, v28, vmul_f32(a6, v34).f32[0]);
          v11.i64[1] = vextq_s8(v11, v11, 8uLL).u32[0];
          *v21 = a10.f32[0];
          _X14 += 12;
          v21 = v26;
          --v25;
        }

        while (v25);
      }

      _X1 += 48 + 48 * v13;
    }

    while (_X1 < v12);
  }

  *result = v10.i64[0];
  *(result + 8) = v10.i32[2];
  *(result + 16) = v11.i64[0];
  *(result + 24) = v11.i32[2];
  return result;
}

unint64_t physx::Dy::solveFriction_BStatic(unint64_t result)
{
  v2 = *result;
  v4.i64[0] = **result;
  v3 = (*result + 8);
  v4.i64[1] = *v3;
  v6.i64[0] = *(*result + 16);
  v5 = (*result + 24);
  v6.i64[1] = *v5;
  v7 = *(result + 30);
  if (*(result + 30))
  {
    result = *(result + 32);
    v8 = result + 16 * v7;
    do
    {
      v9 = *(result + 2);
      v10 = *(result + 1);
      v11 = result + 32;
      v12 = result + 32 + ((4 * v10 + 12) & 0x7F0);
      if (*(result + 2))
      {
        LODWORD(v13) = 0;
        v14 = 0;
        v15 = *(result + 4);
        v16 = (result + 16);
        v17 = (result + 8);
        v18 = vld1q_dup_f32(v16);
        v19 = vld1q_dup_f32(v17);
        do
        {
          if (v10 <= v9)
          {
            v20 = 0;
            do
            {
              v21 = v12 + (v13 << 6);
              v13 = (v13 + 1);
              _X4 = v12 + (v13 << 6);
              __asm { PRFM            #0, [X4] }

              v28 = *v21;
              v29 = *v21;
              v29.i32[3] = 0;
              v30 = *(v21 + 16);
              v30.i32[3] = 0;
              v31 = vdup_laneq_s32(*v21, 3);
              v32 = (v21 + 48);
              v33 = vld1_dup_f32(v32);
              v1.f32[0] = v15 * *(v11 + 4 * v14);
              v1 = vdup_lane_s32(v1, 0);
              v34 = vmulq_f32(v4, v29);
              v34.i64[0] = vpaddq_f32(v34, v34).u64[0];
              v35 = vmulq_f32(v6, v30);
              v35.i64[0] = vpaddq_f32(v35, v35).u64[0];
              v36 = vmulq_f32(v18, v30);
              v36.i32[3] = 0;
              v37 = vmulq_f32(v19, v29);
              v37.i32[3] = 0;
              v38 = vmax_f32(vmin_f32(vmla_laneq_f32(vmls_laneq_f32(v31, v33, *(v21 + 16), 3), vadd_f32(vpadd_f32(*v34.f32, *v34.f32), vpadd_f32(*v35.f32, *v35.f32)), *(v21 + 16), 3), v1), vneg_f32(v1));
              v31.i32[0] = vsub_f32(v38, v31).u32[0];
              v4 = vmlaq_n_f32(v4, v37, v31.f32[0]);
              v4.i64[1] = vextq_s8(v4, v4, 8uLL).u32[0];
              v6 = vmlaq_n_f32(v6, v36, v31.f32[0]);
              v6.i64[1] = vextq_s8(v6, v6, 8uLL).u32[0];
              v28.i32[3] = v38.i32[1];
              *v21 = v28;
              ++v20;
            }

            while (v20 < v9 / v10);
          }

          ++v14;
        }

        while (v13 < v9);
      }

      result = v12 + (v9 << 6);
    }

    while (result < v8);
  }

  *v2 = v4.i64[0];
  *v3 = v4.i32[2];
  v2[2] = v6.i64[0];
  *v5 = v6.i32[2];
  return result;
}

unint64_t physx::Dy::concludeContactCoulomb(unint64_t result)
{
  if (*(result + 2))
  {
    v1 = result + *(result + 2);
    do
    {
      v2 = result + 48;
      v3 = *(result + 1);
      __asm
      {
        PRFM            #0, [X0,#0xB0]
        PRFM            #0, [X0,#0x130]
        PRFM            #0, [X0,#0x1B0]
      }

      if (*(result + 1))
      {
        if (*result == 3)
        {
          v11 = 112;
        }

        else
        {
          v11 = 48;
        }

        do
        {
          result = v2 + v11;
          *(v2 + 36) = *(v2 + 40);
          v2 += v11;
          --v3;
        }

        while (v3);
      }

      else
      {
        result += 48;
      }
    }

    while (result < v1);
  }

  return result;
}

uint64_t physx::Dy::writeBackContactCoulomb(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 32);
  v5 = 48;
  if (*v4 == 3)
  {
    v5 = 112;
  }

  if (*(v4 + 2))
  {
    v6 = v4 + *(v4 + 2);
    v7 = *(result + 40);
    v8 = 0.0;
    _X12 = *(result + 32);
    do
    {
      v10 = *(_X12 + 40);
      v11 = *(_X12 + 1);
      __asm
      {
        PRFM            #0, [X12,#0x130]
        PRFM            #0, [X12,#0x1B0]
      }

      if (v7 && *(_X12 + 1))
      {
        v18 = (_X12 + *(_X12 + 2) + 32);
        v19 = *(_X12 + 1);
        do
        {
          v20 = *v18++;
          *v7++ = v20;
          v8 = v8 + v20;
          --v19;
        }

        while (v19);
      }

      _X12 += 48 + v5 * v11;
    }

    while (_X12 < v6);
    if ((v10 & 1) != 0 && *(result + 16) == 0xFFFF && *(result + 18) == -1 && v8 != 0.0)
    {
      v21 = *(a3 + 28);
      v22 = *(a4 + 28);
      if (v21 < 3.4028e38 || v22 < 3.4028e38)
      {
        if (v21 >= v22)
        {
          v21 = *(a4 + 28);
        }

        v23 = *(a3 + 72) << 7;
        v24 = *(a4 + 72) << 7;
        v25 = *(v4 + 32);
        if (v24 >= v23)
        {
          v26 = *(a3 + 72) << 7;
        }

        else
        {
          v26 = *(a4 + 72) << 7;
        }

        if (v24 > v23)
        {
          v23 = *(a4 + 72) << 7;
        }

        v27 = *(a2 + 8);
        v28 = *(a2 + 16);
        *(a2 + 16) = v28 + 1;
        v29 = v27 + 32 * v28;
        *v29 = v25;
        *(v29 + 8) = v8;
        *(v29 + 12) = v21;
        *(v29 + 16) = v26;
        *(v29 + 20) = v23;
      }
    }
  }

  return result;
}

uint64_t **physx::Dy::solveFrictionBlock(uint64_t **result, unsigned int a2, double a3, double a4, double a5, double a6, double a7, float32x2_t a8, float32x2_t a9)
{
  if (a2)
  {
    v9 = result;
    v10 = a2;
    do
    {
      result = physx::Dy::solveFriction(v9, a3, a4, a5, a6, a7, a8, a9);
      v9 += 6;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t **physx::Dy::solveFrictionBlockWriteBack(uint64_t **result, unsigned int a2, double a3, double a4, double a5, double a6, double a7, float32x2_t a8, float32x2_t a9)
{
  if (a2)
  {
    v9 = result;
    v10 = a2;
    do
    {
      result = physx::Dy::solveFriction(v9, a3, a4, a5, a6, a7, a8, a9);
      v9 += 6;
      --v10;
    }

    while (v10);
  }

  return result;
}

unint64_t physx::Dy::solveFriction_BStaticBlock(unint64_t result, unsigned int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = a2;
    do
    {
      result = physx::Dy::solveFriction_BStatic(v2);
      v2 += 48;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t physx::Dy::solveFriction_BStaticBlockWriteBack(unint64_t result, unsigned int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = a2;
    do
    {
      result = physx::Dy::solveFriction_BStatic(v2);
      v2 += 48;
      --v3;
    }

    while (v3);
  }

  return result;
}

const float *physx::Dy::solveContactCoulombBlock(const float *result, unsigned int a2, double a3, double a4, double a5, double a6, double a7, float32x2_t a8, float32x2_t a9)
{
  if (a2)
  {
    v9 = result;
    v10 = a2;
    do
    {
      result = physx::Dy::solveContactCoulomb(v9, a3, a4, a5, a6, a7, a8, a9);
      v9 += 12;
      --v10;
    }

    while (v10);
  }

  return result;
}

unint64_t physx::Dy::solveContactCoulombConcludeBlock(unint64_t result, unsigned int a2, double a3, double a4, double a5, double a6, double a7, float32x2_t a8, float32x2_t a9)
{
  if (a2)
  {
    v9 = result;
    v10 = a2;
    do
    {
      physx::Dy::solveContactCoulomb(v9, a3, a4, a5, a6, a7, a8, a9);
      result = physx::Dy::concludeContactCoulomb(*(v9 + 32));
      v9 += 48;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t physx::Dy::solveContactCoulombBlockWriteBack(uint64_t result, unsigned int a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, float32x2_t a9, float32x2_t a10)
{
  if (a2)
  {
    v11 = result;
    v12 = a2;
    do
    {
      v13 = *(a3 + 24);
      v14 = v13 + 112 * *(v11 + 20);
      v15 = v13 + 112 * *(v11 + 24);
      physx::Dy::solveContactCoulomb(v11, a4, a5, a6, a7, a8, a9, a10);
      result = physx::Dy::writeBackContactCoulomb(v11, a3, v14, v15);
      v11 += 48;
      --v12;
    }

    while (v12);
  }

  v16 = *(a3 + 16);
  if (v16 > *(a3 + 20) - 4)
  {
    add = atomic_fetch_add(*(a3 + 48), v16);
    v18 = *(a3 + 16);
    if (v18)
    {
      v19 = 0;
      v20 = 0;
      v21 = add + v16 - v18;
      do
      {
        v22 = (*(a3 + 8) + v19);
        v23 = (*(a3 + 32) + 32 * (v21 + v20));
        v24 = v22[1];
        *v23 = *v22;
        v23[1] = v24;
        ++v20;
        v19 += 32;
      }

      while (v20 < *(a3 + 16));
    }

    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t physx::Dy::solveContactCoulomb_BStaticBlock(uint64_t result, unsigned int a2, double a3, double a4, double a5, float32x2_t a6, double a7, double a8, double a9, float32x2_t a10)
{
  if (a2)
  {
    v10 = a2;
    v11 = (result + 32);
    do
    {
      v12 = *(v11 - 4);
      v13 = *v11;
      v11 += 6;
      result = physx::Dy::solveContactCoulomb_BStatic(v12, v13, a3, a4, a5, a6, a7, a8, a9, a10);
      --v10;
    }

    while (v10);
  }

  return result;
}

unint64_t physx::Dy::solveContactCoulomb_BStaticConcludeBlock(unint64_t result, unsigned int a2, double a3, double a4, double a5, float32x2_t a6, double a7, double a8, double a9, float32x2_t a10)
{
  if (a2)
  {
    v10 = a2;
    v11 = (result + 32);
    do
    {
      physx::Dy::solveContactCoulomb_BStatic(*(v11 - 4), *v11, a3, a4, a5, a6, a7, a8, a9, a10);
      v12 = *v11;
      v11 += 6;
      result = physx::Dy::concludeContactCoulomb(v12);
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t physx::Dy::solveContactCoulomb_BStaticBlockWriteBack(uint64_t result, unsigned int a2, uint64_t a3, double a4, double a5, double a6, float32x2_t a7, double a8, double a9, double a10, float32x2_t a11)
{
  if (a2)
  {
    v12 = result;
    v13 = a2;
    do
    {
      v14 = *(a3 + 24);
      v15 = v14 + 112 * *(v12 + 20);
      v16 = v14 + 112 * *(v12 + 24);
      physx::Dy::solveContactCoulomb_BStatic(*v12, *(v12 + 32), a4, a5, a6, a7, a8, a9, a10, a11);
      result = physx::Dy::writeBackContactCoulomb(v12, a3, v15, v16);
      v12 += 48;
      --v13;
    }

    while (v13);
  }

  v17 = *(a3 + 16);
  if (v17 > *(a3 + 20) - 4)
  {
    add = atomic_fetch_add(*(a3 + 48), v17);
    v19 = *(a3 + 16);
    if (v19)
    {
      v20 = 0;
      v21 = 0;
      v22 = add + v17 - v19;
      do
      {
        v23 = (*(a3 + 8) + v20);
        v24 = (*(a3 + 32) + 32 * (v22 + v21));
        v25 = v23[1];
        *v24 = *v23;
        v24[1] = v25;
        ++v21;
        v20 += 32;
      }

      while (v21 < *(a3 + 16));
    }

    *(a3 + 16) = 0;
  }

  return result;
}

__n128 physx::Dy::solveExtContactCoulomb(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v5 = v1;
  v55 = *MEMORY[0x1E69E9840];
  if (v1[8] == 0xFFFF)
  {
    v6.i64[0] = **v1;
    v6.i64[1] = *(*v1 + 8);
    v7.i64[0] = *(*v1 + 16);
    v7.i64[1] = *(*v1 + 24);
  }

  else
  {
    (*(**v1 + 312))(&v53);
    v6 = v53;
    v7 = v54;
  }

  v50 = v7;
  v51 = v6;
  if (*(v5 + 9) == 0xFFFF)
  {
    v10 = v5[1];
    v8.i64[0] = *v10;
    v8.i64[1] = *(v10 + 8);
    v9.n128_u64[0] = *(v10 + 16);
    v9.n128_u64[1] = *(v10 + 24);
  }

  else
  {
    (*(*v5[1] + 312))(&v53);
    v8 = v53;
    v9 = v54;
  }

  v48 = v9;
  v49 = v8;
  _X25 = v5[4];
  if (_X25->i16[1])
  {
    v12 = _X25 + _X25->u16[1];
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    do
    {
      v39 = v15;
      v40 = v13;
      v41 = v14;
      v43 = v16;
      v17 = _X25->u8[1];
      _X9 = (_X25[2].f32 + _X25->u16[1]);
      __asm
      {
        PRFM            #0, [X8,#0x20]
        PRFM            #0, [X25,#0x30]
      }

      v25 = &_X25[7 * _X25->u8[1] + 3];
      v53 = 0u;
      v52[0] = 0u;
      v46 = 0u;
      v47 = 0u;
      v26.i64[0] = _X25[1].i64[0];
      v26.i64[1] = _X25[1].u32[2];
      v45 = v26;
      physx::Dy::solveExtContacts(_X25 + 3, v17, &v45, &v51, &v50, &v49, &v48, &v53, *v26.i64, v16.n128_f64[0], v2, v14.n128_f64[0], &v47, v52, &v46, _X9);
      v13 = vmlaq_n_f32(v40, v53, _X25->f32[2]);
      v13.n128_u64[1] = vextq_s8(v13, v13, 8uLL).u32[0];
      v15 = vmlaq_n_f32(v39, v47, _X25->f32[1]);
      v27 = vextq_s8(v15, v15, 8uLL).u32[0];
      v15.n128_u64[1] = v27.u32[0];
      v27.i32[0] = _X25->i32[3];
      v14 = vmlsq_lane_f32(v41, v52[0], v27, 0);
      v28 = vextq_s8(v14, v14, 8uLL).u32[0];
      v14.n128_u64[1] = v28.u32[0];
      v28.i32[0] = _X25[1].i32[3];
      v16 = vmlsq_lane_f32(v43, v46, v28, 0);
      *&v2 = vextq_s8(v16, v16, 8uLL).u32[0];
      v16.n128_u64[1] = LODWORD(v2);
      _X25 = v25;
    }

    while (v25 < v12);
  }

  else
  {
    v16 = 0uLL;
    v15 = 0uLL;
    v14 = 0uLL;
    v13 = 0uLL;
  }

  v29 = *(v5 + 8);
  if (v29 == 0xFFFF)
  {
    v30 = v50;
    v31 = v51.i32[2];
    v32 = *v5;
    *v32 = v51.i64[0];
    *(v32 + 8) = v31;
    v33 = *v5;
    *(v33 + 16) = v30.i64[0];
    *(v33 + 24) = v30.i32[2];
  }

  else
  {
    v42 = v14;
    v44 = v16;
    (*(**v5 + 256))(*v5, v29, &v53, v52, v13, v15);
    v14 = v42;
    v16 = v44;
  }

  v34 = *(v5 + 9);
  v35 = v5[1];
  if (v34 == 0xFFFF)
  {
    result = v48;
    v37 = v49.i32[2];
    *v35 = v49.i64[0];
    v35[2] = v37;
    v38 = v5[1];
    *(v38 + 16) = result.n128_u64[0];
    *(v38 + 24) = result.n128_u32[2];
  }

  else
  {
    (*(*v35 + 256))(v35, v34, *(v4 + 56), *(v4 + 64), v14, v16);
  }

  return result;
}

uint64_t physx::Dy::solveExtFriction(uint64_t result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, float32x2_t a9, float32x4_t a10)
{
  v12 = result;
  if (*(result + 16) == 0xFFFF)
  {
    v13.i64[0] = **result;
    v13.i64[1] = *(*result + 8);
    v14.i64[0] = *(*result + 16);
    v14.i64[1] = *(*result + 24);
  }

  else
  {
    result = (*(**result + 312))(&v66);
    v13 = v66;
    v14 = v67;
  }

  v62 = v14;
  v64 = v13;
  if (*(v12 + 9) == 0xFFFF)
  {
    v17 = v12[1];
    v15.i64[0] = *v17;
    v15.i64[1] = *(v17 + 8);
    v16.i64[0] = *(v17 + 16);
    v16.i64[1] = *(v17 + 24);
  }

  else
  {
    result = (*(*v12[1] + 312))(&v66);
    v15 = v66;
    v16 = v67;
  }

  if (*(v12 + 15))
  {
    v18 = v12[4];
    v19 = v18 + 16 * *(v12 + 15);
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v25 = v62;
    v24 = v64;
    do
    {
      v26 = *(v18 + 1);
      v27 = v18 + 32 + ((4 * v26 + 12) & 0x7F0);
      v28 = *(v18 + 2);
      if (*(v18 + 2))
      {
        v29 = 0;
        v30 = 0;
        v31 = *(v18 + 4);
        v32 = 0uLL;
        v33 = 0uLL;
        v34 = 0uLL;
        v35 = 0uLL;
        do
        {
          if (v26 <= v28)
          {
            v36 = 0;
            result = v29;
            do
            {
              v37 = v30 + v36;
              v38 = (v27 + (v37 << 7));
              _X2 = v27 + ((v37 + 1) << 7);
              __asm { PRFM            #0, [X2] }

              a10 = *v38;
              v45 = *v38;
              v45.i32[3] = 0;
              v46 = v38[1];
              v46.i32[3] = 0;
              v47 = v38[2];
              v47.i32[3] = 0;
              v48 = vdup_laneq_s32(*v38, 3);
              f32 = v38[3].f32;
              v50 = vld1_dup_f32(f32);
              v10.f32[0] = v31 * *(v18 + 32 + 4 * v29);
              v51 = vdup_lane_s32(*v10.f32, 0);
              v52 = vsubq_f32(vmlaq_f32(vmulq_f32(v25, v46), v45, v24), vmlaq_f32(vmulq_f32(v16, v47), v45, v15));
              v52.i64[0] = vpaddq_f32(v52, v52).u64[0];
              v53 = vmax_f32(vmin_f32(vsub_f32(v48, vmul_laneq_f32(vadd_f32(v50, vpadd_f32(*v52.f32, *v52.f32)), v38[1], 3)), v51), vneg_f32(v51));
              v48.i32[0] = vsub_f32(v53, v48).u32[0];
              v24 = vmlaq_n_f32(v24, v38[4], v48.f32[0]);
              v24.i64[1] = vextq_s8(v24, v24, 8uLL).u32[0];
              v25 = vmlaq_n_f32(v25, v38[5], v48.f32[0]);
              v25.i64[1] = vextq_s8(v25, v25, 8uLL).u32[0];
              v10 = v38[7];
              v15 = vmlaq_n_f32(v15, v38[6], v48.f32[0]);
              v15.i64[1] = vextq_s8(v15, v15, 8uLL).u32[0];
              v16 = vmlaq_n_f32(v16, v10, v48.f32[0]);
              v16.i64[1] = vextq_s8(v16, v16, 8uLL).u32[0];
              v32 = vmlaq_n_f32(v32, v45, v48.f32[0]);
              v32.i64[1] = vextq_s8(v32, v32, 8uLL).u32[0];
              v34 = vmlaq_n_f32(v34, v46, v48.f32[0]);
              v34.i64[1] = vextq_s8(v34, v34, 8uLL).u32[0];
              v33 = vmlaq_n_f32(v33, v45, v48.f32[0]);
              v33.i64[1] = vextq_s8(v33, v33, 8uLL).u32[0];
              v35 = vmlaq_n_f32(v35, v47, v48.f32[0]);
              v35.i64[1] = vextq_s8(v35, v35, 8uLL).u32[0];
              a10.i32[3] = v53.i32[1];
              *v38 = a10;
              ++v36;
            }

            while (v36 < v28 / v26);
            v30 += v36;
          }

          ++v29;
        }

        while (v30 < v28);
      }

      else
      {
        v35 = 0uLL;
        v34 = 0uLL;
        v33 = 0uLL;
        v32 = 0uLL;
      }

      a10.i32[0] = *(v18 + 12);
      v20 = vmlaq_n_f32(v20, v32, *(v18 + 8));
      a9.i32[0] = *(v18 + 20);
      v22 = vmlaq_n_f32(v22, v34, *(v18 + 16));
      v20.n128_u64[1] = vextq_s8(v20, v20, 8uLL).u32[0];
      v22.n128_u64[1] = vextq_s8(v22, v22, 8uLL).u32[0];
      v21 = vmlsq_lane_f32(v21, v33, *a10.f32, 0);
      v21.n128_u64[1] = vextq_s8(v21, v21, 8uLL).u32[0];
      v23 = vmlsq_lane_f32(v23, v35, a9, 0);
      v23.n128_u64[1] = vextq_s8(v23, v23, 8uLL).u32[0];
      v18 = v27 + (v28 << 7);
    }

    while (v18 < v19);
  }

  else
  {
    v23 = 0uLL;
    v22 = 0uLL;
    v21 = 0uLL;
    v20 = 0uLL;
    v25 = v62;
    v24 = v64;
  }

  v54 = *(v12 + 8);
  if (v54 == 0xFFFF)
  {
    v55 = *v12;
    *(*v12 + 8) = v24.i32[2];
    *v55 = v24.i64[0];
    v56 = *v12;
    *(v56 + 16) = v25.i64[0];
    *(v56 + 24) = v25.i32[2];
  }

  else
  {
    v63 = v16;
    v65 = v15;
    v60 = v21;
    v61 = v23;
    result = (*(**v12 + 256))(*v12, v54, *(a2 + 56), *(a2 + 64), v20, v22);
    v21 = v60;
    v23 = v61;
    v16 = v63;
    v15 = v65;
  }

  v57 = *(v12 + 9);
  if (v57 != 0xFFFF)
  {
    return (*(*v12[1] + 256))(v12[1], v57, *(a2 + 56), *(a2 + 64), v21, v23);
  }

  v58 = v12[1];
  *(v58 + 8) = v15.i32[2];
  *v58 = v15.i64[0];
  v59 = v12[1];
  *(v59 + 16) = v16.i64[0];
  *(v59 + 24) = v16.i32[2];
  return result;
}

uint64_t physx::Dy::createFinalizeSolverContacts4Step(uint64_t a1, void *a2, uint64_t a3, double a4, double a5, double a6, float a7, float a8, double a9, float a10, float a11)
{
  v733 = *&a6;
  v606 = *&a5;
  v13 = a2;
  LODWORD(v15) = 0;
  v16 = 0;
  v774 = *MEMORY[0x1E69E9840];
  v744 = a2 + 37;
  v756 = a1 + 7684;
  *(a1 + 7684) = 0;
  v17 = a1 + 7424;
  v18 = a1 + 7296;
  do
  {
    v19 = &v13[28 * v16];
    LODWORD(a5) = *(v19 + 1);
    v771.i32[v16] = *v19;
    LODWORD(a6) = *(v19 + 3);
    v770.i32[v16] = *(v19 + 2);
    v769.i32[v16] = LODWORD(a5);
    v768.i32[v16] = LODWORD(a6);
    *(v19 + 48) = v15;
    if ((*(v19 + 157) & 1) == 0 && !physx::Dy::getFrictionPatches(a1, v19[21], *(v19 + 176), v19 + 18, v19 + 25, a8, a5, a6, a7, a8, *&a9, a10, a11))
    {
      return 1;
    }

    *(v19 + 50) = *(a1 + 7684);
    if (!physx::Dy::createContactPatches(a1, v19[18], *(v19 + 38), 0.999))
    {
      return 1;
    }

    v20 = *(v19 + 50);
    *(v19 + 102) = *(a1 + 7684) - v20;
    if (physx::Dy::correlatePatches(a1, v19[18], v19 + 18, v19 + 25, v20, *(v19 + 48), 0.999))
    {
      return 1;
    }

    physx::Dy::growPatches(a1, v19[18], v19 + 18, v19 + 25, *(v19 + 48), a8, *(v19 + 40) + a7);
    LODWORD(v15) = *(a1 + 7688);
    v21 = *(v19 + 48);
    if (v15 > v21)
    {
      v22 = *(a1 + 7688);
      do
      {
        v23 = v22 - 1;
        if (*(v17 + 4 * (v22 - 1)) == 0xFFFF)
        {
          if (v22 < v15)
          {
            v24 = v22;
            do
            {
              v25 = v24 - 1;
              *(v17 + 4 * v25) = *(v17 + 4 * v24);
              *(v18 + 4 * v25) = *(v18 + 4 * v24++);
              v15 = *(a1 + 7688);
            }

            while (v24 < v15);
            v21 = *(v19 + 48);
          }

          LODWORD(v15) = v15 - 1;
          *(a1 + 7688) = v15;
        }

        v22 = v23;
      }

      while (v23 > v21);
    }

    *(v19 + 49) = v15 - v21;
    ++v16;
  }

  while (v16 != 4);
  v26 = 0;
  memset(v767, 0, sizeof(v767));
  do
  {
    v27 = &v13[28 * v26];
    v28 = *(v27 + 48);
    v29 = (*(v27 + 49) + v28);
    if (v28 >= v29)
    {
      v766[v26 + 4] = 0;
LABEL_29:
      *(v767 + v26) = 0;
      goto LABEL_30;
    }

    v30 = 0;
    v31 = v29 - v28;
    v32 = (a1 + 7424 + 4 * v28);
    do
    {
      v33 = *v32++;
      if (v33 != 0xFFFF)
      {
        ++v30;
      }

      --v31;
    }

    while (v31);
    v766[v26 + 4] = v30;
    v34 = 104 * v30 + 15;
    if ((v34 & 0xFFFFFFF0) == 0)
    {
      goto LABEL_29;
    }

    v35 = (*(*a3 + 8))(a3, v34 & 0xFFFFFFF0);
    if (v35 == -1)
    {
      v36 = 0;
    }

    else
    {
      v36 = v35;
    }

    *(v767 + v26) = v36;
    if (!v36)
    {
      return 0;
    }

LABEL_30:
    ++v26;
  }

  while (v26 != 4);
  v37 = 0;
  LODWORD(v38) = 0;
  v39 = 0;
  memset(v773, 0, sizeof(v773));
  memset(v772, 0, sizeof(v772));
  v40 = a1 + 2816;
  do
  {
    if (v39)
    {
      v39 = 1;
    }

    else
    {
      v39 = BYTE4(v13[28 * v37 + 19]);
    }

    v41 = &v13[28 * v37];
    v42 = *(v41 + 49);
    if (v42)
    {
      v43 = 0;
      v44 = *(v41 + 48);
      v45 = v772;
      v46 = v773;
      v47 = v42;
      do
      {
        v48 = v40 + 104 * v44;
        v49 = (*(v48 + 1) & 1) == 0 && *(v48 + 2) != 0;
        v50 = *(v18 + 4 * v44);
        if (v50)
        {
          v51 = *v46;
          if (v50 > *v46)
          {
            v51 = *(v18 + 4 * v44);
          }

          *v46 = v51;
          v43 += v50;
          if (v49)
          {
            v52 = *(v48 + 2);
            v53 = 2 * v52;
            if (2 * v52 <= *v45)
            {
              v53 = *v45;
            }

            *v45 = v53;
            v43 += 2 * v52;
          }
        }

        ++v45;
        ++v46;
        ++v44;
        --v47;
      }

      while (v47);
    }

    else
    {
      v43 = 0;
    }

    if (v42 <= v38)
    {
      v38 = v38;
    }

    else
    {
      v38 = v42;
    }

    v766[v37++] = v43;
  }

  while (v37 != 4);
  if (v38)
  {
    v54 = 0;
    v55 = 0;
    v56 = v772;
    v57 = v773;
    v58 = v38;
    do
    {
      v59 = *v57++;
      v55 += v59;
      v60 = *v56++;
      v54 += v60;
      --v58;
    }

    while (v58);
  }

  else
  {
    v55 = 0;
    v54 = 0;
  }

  if (v39)
  {
    v61 = v55;
  }

  else
  {
    v61 = 0;
  }

  v62 = 272 * v38 + 160 * v55 + 208 * v54 + 16 * (v54 + v55 + v61);
  if (v62)
  {
    if (v62 + 16 > 0x4000)
    {
      return 1;
    }

    v65 = (**a3)(a3);
    if ((v65 + 1) < 2)
    {
      return 0;
    }

    v64 = v65;
  }

  else
  {
    v64 = 0;
  }

  for (i = 0; i != 4; ++i)
  {
    _X0 = *(v767 + i);
    v68 = &v13[28 * i];
    v69 = v68[2];
    v68[21] = _X0;
    *(v68 + 176) = v766[i + 4];
    if (_X0)
    {
      __asm
      {
        PRFM            #0, [X0]
        PRFM            #0, [X0,#0x80]
        PRFM            #0, [X0,#0x100]
      }

      v77 = *(v68 + 49);
      if (v77)
      {
        for (j = 0; j < v77; ++j)
        {
          v79 = j + *(v68 + 48);
          if (*(v17 + 4 * v79) != 0xFFFF)
          {
            v80 = v40 + 104 * v79;
            v81 = *v80;
            v82 = *(v80 + 32);
            *(_X0 + 16) = *(v80 + 16);
            *(_X0 + 32) = v82;
            *_X0 = v81;
            v83 = *(v80 + 48);
            v84 = *(v80 + 64);
            v85 = *(v80 + 80);
            *(_X0 + 96) = *(v80 + 96);
            *(_X0 + 64) = v84;
            *(_X0 + 80) = v85;
            *(_X0 + 48) = v83;
            _X0 += 104;
            v77 = *(v68 + 49);
          }
        }
      }
    }

    *(v68 + 103) += v766[i];
    *(v69 + 32) = v64;
    *(v69 + 30) = v62 >> 4;
    *(v69 + 28) = *(v68 + 38);
    *(v69 + 40) = v68[23];
  }

  if (*(v13 + 156) & 1) != 0 || (*(v13 + 380) & 1) != 0 || (*(v13 + 604))
  {
    v86 = 1;
  }

  else
  {
    v86 = *(v13 + 828);
  }

  v87 = 0;
  LOBYTE(v88) = 0;
  LOBYTE(v706) = 0;
  v89 = v771;
  v90 = v769;
  v91 = v770;
  v702 = v768;
  v92 = vdupq_lane_s32(*&a9, 0);
  v602 = *(v13 + 382);
  v603 = *(v13 + 158);
  v93 = v13 + 33;
  v601 = *(v13 + 606);
  v600 = *(v13 + 830);
  do
  {
    v88 = v88 || *v93 == 1;
    v94 = v706 || *v93 == 4;
    v706 = v94;
    if (*(*(v93 - 27) + 62))
    {
      v95 = 1.0;
    }

    else
    {
      v95 = 0.0;
    }

    *(v773 + v87) = v95;
    if (*(*(v93 - 25) + 62))
    {
      v96 = 1.0;
    }

    else
    {
      v96 = 0.0;
    }

    *(v772 + v87) = v96;
    v87 += 4;
    v93 += 56;
  }

  while (v87 != 16);
  v604 = a1 + 2816;
  v666 = a1 + 7556;
  __asm { PRFM            #0, [X8] }

  _X8 = v756;
  __asm { PRFM            #0, [X8] }

  v100 = *(v13 + 49);
  v101 = *(v13 + 105);
  v102 = *(v13 + 161);
  if (v102 <= *(v13 + 217))
  {
    v102 = *(v13 + 217);
  }

  if (v101 <= v102)
  {
    v101 = v102;
  }

  if (v100 <= v101)
  {
    v100 = v101;
  }

  v599 = v100;
  if (v100)
  {
    v608 = 0;
    v609 = 0;
    v613 = 0;
    v612 = 0;
    v607 = 0;
    v103 = 0;
    v104 = 0;
    v691 = 0;
    v690 = 0;
    v689 = 0;
    v688 = 0;
    v105 = v13[91];
    v106 = v13[7];
    v107 = v13[8];
    v109 = v13[35];
    v108 = v13[36];
    v110.i32[0] = v106[1].i32[3];
    v111.i32[0] = v106[2].i32[0];
    v110.i32[1] = v109[1].i32[3];
    v113 = v13[63];
    v112 = v13[64];
    v110.i32[2] = v113[1].i32[3];
    v110.i32[3] = v105[1].i32[3];
    v115.i32[0] = v107[1].i32[3];
    v114.i32[0] = v107[2].i32[0];
    v115.i32[1] = v108[1].i32[3];
    v116 = v13[92];
    v115.i32[2] = v112[1].i32[3];
    v115.i32[3] = v116[1].i32[3];
    v596 = vmaxq_f32(v110, v115);
    v117 = v106[1];
    v118 = v109[1];
    v119 = v113[1];
    v120 = v105[1];
    v121 = v107[1];
    v122 = vzip1q_s32(*v106, *v113);
    v123 = v108[1];
    v124 = vzip1q_s32(*v109, *v105);
    v125 = vzip1q_s32(v122, v124);
    v126 = v112[1];
    v127 = vzip2q_s32(v122, v124);
    v128 = vzip1q_s32(vzip2q_s32(*v106, *v113), vzip2q_s32(*v109, *v105));
    v129 = vzip1q_s32(*v107, *v112);
    v130 = v116[1];
    v131 = vzip1q_s32(*v108, *v116);
    v132 = vzip1q_s32(v129, v131);
    v133 = vzip2q_s32(v129, v131);
    v134 = vzip1q_s32(vzip2q_s32(*v107, *v112), vzip2q_s32(*v108, *v116));
    v135 = vzip1q_s32(v117, v119);
    v136 = vzip1q_s32(v118, v120);
    v725 = vzip1q_s32(v135, v136);
    v724 = vzip2q_s32(v135, v136);
    v743 = vzip1q_s32(vzip2q_s32(v117, v119), vzip2q_s32(v118, v120));
    v137 = vzip1q_s32(v121, v126);
    v138 = vzip1q_s32(v123, v130);
    v731 = vzip1q_s32(v137, v138);
    v730 = vzip2q_s32(v137, v138);
    v729 = vzip1q_s32(vzip2q_s32(v121, v126), vzip2q_s32(v123, v130));
    v111.i32[1] = v109[2].i32[0];
    v111.i32[2] = v113[2].i32[0];
    v111.i32[3] = v105[2].i32[0];
    v114.i32[1] = v108[2].i32[0];
    v114.i32[2] = v112[2].i32[0];
    v114.i32[3] = v116[2].i32[0];
    v685 = vmulq_f32(v89, v111);
    v701 = vmulq_f32(v91, v114);
    v139 = v13[5];
    v140 = v13[6];
    v141 = *(v139 + 28);
    v142 = *(v139 + 40);
    v143 = v13[33];
    v144 = v13[34];
    v145 = v13[61];
    v146 = v13[62];
    v147 = *(v145 + 40);
    v111.i32[0] = vdupq_laneq_s32(v142, 3).u32[0];
    v111.i32[1] = v147.i32[3];
    v111.i32[2] = *(v139 + 56);
    v148 = v13[89];
    v111.i32[3] = *(v145 + 56);
    v149 = *(v145 + 28);
    v150 = vzip1q_s32(v141, v149);
    v151 = vzip2q_s32(v141, v149);
    v152 = *(v143 + 28);
    v153 = *(v148 + 28);
    v154 = vzip1q_s32(v152, v153);
    v155 = vzip2q_s32(v152, v153);
    v156 = *(v143 + 40);
    v684 = vzip1q_s32(v150, v154);
    v742 = vzip2q_s32(v150, v154);
    v157 = *(v148 + 40);
    v741 = vzip1q_s32(v151, v155);
    v158 = *(v140 + 28);
    v159 = vzip1q_s32(v142, v147);
    v160 = vzip2q_s32(v142, v147);
    v161 = vzip1q_s32(v156, v157);
    v740 = vzip1q_s32(v159, v161);
    v739 = vzip2q_s32(v159, v161);
    v161.i32[0] = vdupq_laneq_s32(v156, 3).u32[0];
    v161.i32[1] = v157.i32[3];
    v161.i32[2] = *(v143 + 56);
    v161.i32[3] = *(v148 + 56);
    v738 = vzip1q_s32(v160, vzip2q_s32(v156, v157));
    v737 = vzip1q_s32(v111, v161);
    v162 = *(v144 + 28);
    v163 = *(v146 + 28);
    v164 = v13[90];
    v165 = *(v164 + 28);
    v736 = vzip2q_s32(v111, v161);
    v166 = vzip1q_s32(v158, v163);
    v167 = vzip1q_s32(v162, v165);
    v700 = vzip1q_s32(v166, v167);
    v699 = vzip2q_s32(v166, v167);
    v698 = vzip1q_s32(vzip2q_s32(v158, v163), vzip2q_s32(v162, v165));
    v168 = *(v140 + 40);
    v169 = *(v146 + 40);
    v170 = vzip1q_s32(v168, v169);
    v171 = *(v144 + 40);
    v172 = *(v164 + 40);
    v173 = vzip1q_s32(v171, v172);
    v697 = vzip1q_s32(v170, v173);
    v696 = vzip2q_s32(v170, v173);
    v170.i32[0] = vdupq_laneq_s32(v168, 3).u32[0];
    v174 = vzip2q_s32(v168, v169);
    v170.i32[1] = v169.i32[3];
    v175 = vzip2q_s32(v171, v172);
    v171.i32[0] = vdupq_laneq_s32(v171, 3).u32[0];
    v695 = vzip1q_s32(v174, v175);
    v171.i32[1] = v172.i32[3];
    v170.i32[2] = *(v140 + 56);
    v170.i32[3] = *(v146 + 56);
    v171.i32[2] = *(v144 + 56);
    v171.i32[3] = *(v164 + 56);
    v694 = vzip1q_s32(v170, v171);
    v176 = vzip2q_s32(v170, v171);
    v693 = v176;
    v176.i64[0] = v13[11];
    v175.i64[0] = v13[67];
    v177 = vzip1q_s32(v176, v175);
    v175.i64[0] = v13[39];
    v170.i64[0] = v13[95];
    v178 = vzip1q_s32(v175, v170);
    v179 = vzip1q_s32(v177, v178);
    v712 = v179;
    v180 = vzip2q_s32(v177, v178);
    v711 = v180;
    v180.i64[0] = *(v13 + 116);
    v178.i64[0] = *(v744 + 268);
    v181 = vzip1q_s32(v180, v178);
    v178.i64[0] = *(v744 + 44);
    v179.i64[0] = *(v744 + 492);
    v182 = vzip1q_s32(v178, v179);
    v710 = vzip1q_s32(v181, v182);
    v709 = vzip2q_s32(v181, v182);
    v181.i32[0] = *(v13 + 40);
    v181.i32[1] = *(v13 + 96);
    v181.i32[2] = *(v13 + 152);
    v181.i32[3] = *(v13 + 208);
    v595 = v181;
    *v181.i32 = *&a4 * 0.8;
    v182.i32[0] = *(v139 + 60);
    v182.i32[1] = *(v143 + 60);
    v182.i32[2] = *(v145 + 60);
    v594 = vnegq_f32(vdupq_lane_s32(*v181.i8, 0));
    v182.i32[3] = *(v148 + 60);
    v735 = v182;
    v181.i32[0] = *(v140 + 60);
    v181.i32[1] = *(v144 + 60);
    v181.i32[2] = *(v146 + 60);
    v183 = *(v13 + 9);
    v663 = vdupq_laneq_s32(v183, 3);
    LODWORD(v665) = vmla_f32(0xBF000000BF000000, *v663.f32, *v663.f32).u32[0];
    v184 = vdupq_laneq_s32(*v744, 3);
    LODWORD(v660) = vmla_f32(0xBF000000BF000000, *v184.i8, *v184.i8).u32[0];
    v661 = v184;
    v185 = *(v744 + 14);
    v657 = vdupq_laneq_s32(v185, 3);
    LODWORD(v659) = vmla_f32(0xBF000000BF000000, *v657.f32, *v657.f32).u32[0];
    v186 = *(v744 + 28);
    v654 = vdupq_laneq_s32(v186, 3);
    LODWORD(v656) = vmla_f32(0xBF000000BF000000, *v654.f32, *v654.f32).u32[0];
    v187 = *(v13 + 100);
    v651 = vdupq_laneq_s32(v187, 3);
    LODWORD(v653) = vmla_f32(0xBF000000BF000000, *v651.f32, *v651.f32).u32[0];
    v188 = *(v744 + 28);
    v648 = vdupq_laneq_s32(v188, 3);
    LODWORD(v650) = vmla_f32(0xBF000000BF000000, *v648.f32, *v648.f32).u32[0];
    v181.i32[3] = *(v164 + 60);
    v692 = v181;
    v593 = vdupq_lane_s32(v733, 0);
    v189 = *(v744 + 252);
    v645 = vdupq_laneq_s32(v189, 3);
    LODWORD(v647) = vmla_f32(0xBF000000BF000000, *v645.f32, *v645.f32).u32[0];
    v181.i32[0] = *(v13 + 24);
    v181.i32[1] = *(v13 + 80);
    v181.i32[2] = *(v13 + 136);
    v181.i32[3] = *(v13 + 192);
    v708 = v181;
    v190 = *(v744 + 476);
    v642 = vdupq_laneq_s32(v190, 3);
    LODWORD(v644) = vmla_f32(0xBF000000BF000000, *v642.f32, *v642.f32).u32[0];
    v181.i32[0] = *(v13 + 31);
    v181.i32[1] = *(v13 + 87);
    v181.i32[2] = *(v13 + 143);
    v181.i32[3] = *(v13 + 199);
    v707 = v181;
    v191 = v183;
    v191.i32[3] = 0;
    v192 = *v744;
    v192.i32[3] = 0;
    v193 = v185;
    v193.i32[3] = 0;
    v194 = v186;
    v194.i32[3] = 0;
    v195 = v187;
    v195.i32[3] = 0;
    v196 = v188;
    v196.i32[3] = 0;
    v197 = v189;
    v197.i32[3] = 0;
    v198 = v190;
    v198.i32[3] = 0;
    v721 = vdupq_lane_s32(*&a4, 0);
    v592 = v86 & 1;
    v617 = v64;
    v728 = v125;
    v705 = v132;
    v590 = vsubq_f32(v125, v132);
    v727 = v127;
    v704 = v133;
    v726 = v128;
    v703 = v134;
    v588 = vsubq_f32(v128, v134);
    v589 = vsubq_f32(v127, v133);
    v640 = v192;
    v641 = v191;
    v664 = *v183.i8;
    v633 = vextq_s8(v191, v191, 8uLL).u64[0];
    v632 = vext_s8(*v183.i8, v633, 4uLL);
    v662 = *v744;
    v631 = vextq_s8(v192, v192, 8uLL).u64[0];
    v630 = vext_s8(*v744, v631, 4uLL);
    v638 = v194;
    v639 = v193;
    v658 = *v185.i8;
    v629 = vextq_s8(v193, v193, 8uLL).u64[0];
    v628 = vext_s8(*v185.i8, v629, 4uLL);
    v655 = *v186.i8;
    v627 = vextq_s8(v194, v194, 8uLL).u64[0];
    v626 = vext_s8(*v186.i8, v627, 4uLL);
    v636 = v196;
    v637 = v195;
    v652 = *v187.i8;
    v625 = vextq_s8(v195, v195, 8uLL).u64[0];
    v624 = vext_s8(*v187.i8, v625, 4uLL);
    v649 = *v188.i8;
    v623 = vextq_s8(v196, v196, 8uLL).u64[0];
    v622 = vext_s8(*v188.i8, v623, 4uLL);
    v634 = v198;
    v635 = v197;
    v646 = *v189.i8;
    v621 = vextq_s8(v197, v197, 8uLL).u64[0];
    v620 = vext_s8(*v189.i8, v621, 4uLL);
    v643 = *v190.i8;
    v619 = vextq_s8(v198, v198, 8uLL).u64[0];
    v618 = vext_s8(*v190.i8, v619, 4uLL);
    v734 = v773[0];
    v732 = v772[0];
    v597 = v86;
    v687 = v90;
    v686 = v92;
    v598 = v64;
    v591 = v13;
    while (1)
    {
      v199 = *(v13 + 49);
      if (v103 < v199)
      {
        HIDWORD(v613) = *(v13 + 48) + v103;
      }

      v200 = *(v13 + 105);
      if (v103 < v200)
      {
        LODWORD(v613) = *(v13 + 104) + v103;
      }

      v201 = *(v13 + 161);
      if (v103 < v201)
      {
        v612 = *(v13 + 160) + v103;
      }

      v757 = *(v13 + 217);
      if (v103 < v757)
      {
        v607 = *(v13 + 216) + v103;
      }

      v615 = v104;
      if (v103 < v199)
      {
        v202 = *(v18 + 4 * HIDWORD(v613));
      }

      else
      {
        v202 = 0;
      }

      if (v103 < v200)
      {
        v203 = *(v18 + 4 * v613);
      }

      else
      {
        v203 = 0;
      }

      if (v103 < v201)
      {
        v204 = *(v18 + 4 * v612);
      }

      else
      {
        v204 = 0;
      }

      if (v103 < v757)
      {
        v679 = 0;
        v205 = *(v18 + 4 * v607);
      }

      else
      {
        v205 = 0;
        v679 = 8;
      }

      v713 = *(v13 + 161);
      v678 = v103 >= v201;
      v716 = *(v13 + 105);
      v677 = v103 >= v200;
      v614 = v103;
      v752 = *(v13 + 49);
      v610 = *(v17 + 4 * HIDWORD(v613));
      v675 = v103 >= v199;
      v719 = (v13[18] + (*(a1 + 44 * v610) << 6));
      v667 = *(v17 + 4 * v613);
      v748 = v13[46] + (*(a1 + 44 * v667) << 6);
      v669 = *(v17 + 4 * v612);
      v722 = v13[74] + (*(a1 + 44 * v669) << 6);
      v671 = *(v17 + 4 * v607);
      v745 = v13[102] + (*(a1 + 44 * v671) << 6);
      v206.i32[0] = v719[3].i32[3];
      v206.i32[1] = *(v748 + 60);
      v206.i32[2] = *(v722 + 60);
      v206.i32[3] = *(v745 + 60);
      v680 = v206;
      v762 = vnegq_f32(v206);
      v617->i8[4] = v603;
      v617->i8[5] = v602;
      v617->i8[6] = v601;
      v617->i8[7] = v600;
      v617->i8[3] = v592;
      if (v204 <= v205)
      {
        v207 = v205;
      }

      else
      {
        v207 = v204;
      }

      if (v203 > v207)
      {
        v207 = v203;
      }

      if (v202 <= v207)
      {
        v208 = v207;
      }

      else
      {
        v208 = v202;
      }

      v682 = 16 * v208;
      v673 = &v617[17];
      bzero(&v617[17], 16 * v208);
      v209 = v208;
      v13 = v591;
      v617->i8[1] = v209;
      v617->i8[8] = v202;
      v617->i8[9] = v203;
      v617->i8[10] = v204;
      v617->i8[11] = v205;
      v617[4] = v685;
      v617[5] = v701;
      v617[6] = v687;
      v617[7] = v702;
      v617[12].i64[0] = v591[17];
      v617[12].i64[1] = v591[45];
      v617[13].i64[0] = v591[73];
      v617[13].i64[1] = v591[101];
      v617[1] = v762;
      v210 = vzip1q_s32(*v719, *v722);
      v211 = vzip1q_s32(*v748, *v745);
      v212 = vzip1q_s32(v210, v211);
      v213 = vzip2q_s32(v210, v211);
      v214 = vzip1q_s32(vzip2q_s32(*v719, *v722), vzip2q_s32(*v748, *v745));
      v617[8] = v212;
      v617[9] = v213;
      v617[10] = v214;
      v617[11] = v596;
      v215 = 0xFFFFLL;
      v216 = 0xFFFFLL;
      v217 = v615;
      if (v610 != 0xFFFF)
      {
        v216 = v610;
        while (1)
        {
          v218 = a1 + 44 * v216;
          if (*(v218 + 5))
          {
            break;
          }

          v216 = *(v218 + 2);
          if (v216 == 0xFFFF)
          {
            v216 = 0xFFFFLL;
            break;
          }
        }
      }

      if (v667 != 0xFFFF)
      {
        v215 = v667;
        while (1)
        {
          v219 = a1 + 44 * v215;
          if (*(v219 + 5))
          {
            break;
          }

          v215 = *(v219 + 2);
          if (v215 == 0xFFFF)
          {
            v215 = 0xFFFFLL;
            break;
          }
        }
      }

      v220 = 0xFFFFLL;
      v221 = 0xFFFFLL;
      if (v669 != 0xFFFF)
      {
        v221 = v669;
        while (1)
        {
          v222 = a1 + 44 * v221;
          if (*(v222 + 5))
          {
            break;
          }

          v221 = *(v222 + 2);
          if (v221 == 0xFFFF)
          {
            v221 = 0xFFFFLL;
            break;
          }
        }
      }

      if (v671 != 0xFFFF)
      {
        v220 = v671;
        while (1)
        {
          v223 = a1 + 44 * v220;
          if (*(v223 + 5))
          {
            break;
          }

          v220 = *(v223 + 2);
          if (v220 == 0xFFFF)
          {
            v220 = 0xFFFFLL;
            break;
          }
        }
      }

      if (v614 < v752)
      {
        LODWORD(v691) = 0xFFFF;
        if (v216 == 0xFFFF)
        {
          LODWORD(v689) = 0;
          v224 = 1;
LABEL_159:
          v216 = 0xFFFFLL;
        }

        else
        {
          v224 = 1;
          v225 = v216;
          while (1)
          {
            v226 = a1 + 44 * v225;
            if (v224 != *(v226 + 5))
            {
              break;
            }

            v224 = 0;
            v225 = *(v226 + 2);
            if (v225 == 0xFFFF)
            {
              LODWORD(v689) = 0;
              LODWORD(v691) = v216;
              goto LABEL_159;
            }
          }

          LODWORD(v689) = 0;
          LODWORD(v691) = v216;
          v216 = v225;
        }
      }

      else
      {
        v224 = 0;
      }

      if (v614 < v716)
      {
        HIDWORD(v690) = 0xFFFF;
        if (v215 == 0xFFFF)
        {
          v688 = 0;
          v227 = 1;
LABEL_169:
          v215 = 0xFFFFLL;
        }

        else
        {
          v227 = 1;
          v228 = v215;
          while (1)
          {
            v229 = a1 + 44 * v228;
            if (v227 != *(v229 + 5))
            {
              break;
            }

            v227 = 0;
            v228 = *(v229 + 2);
            if (v228 == 0xFFFF)
            {
              v688 = 0;
              HIDWORD(v690) = v215;
              goto LABEL_169;
            }
          }

          v688 = 0;
          HIDWORD(v690) = v215;
          v215 = v228;
        }
      }

      else
      {
        v227 = 0;
      }

      if (v614 < v713)
      {
        HIDWORD(v691) = 0xFFFF;
        if (v221 == 0xFFFF)
        {
          HIDWORD(v689) = 0;
          v230 = 1;
LABEL_179:
          v221 = 0xFFFFLL;
        }

        else
        {
          v230 = 1;
          v231 = v221;
          while (1)
          {
            v232 = a1 + 44 * v231;
            if (v230 != *(v232 + 5))
            {
              break;
            }

            v230 = 0;
            v231 = *(v232 + 2);
            if (v231 == 0xFFFF)
            {
              HIDWORD(v689) = 0;
              HIDWORD(v691) = v221;
              goto LABEL_179;
            }
          }

          HIDWORD(v689) = 0;
          HIDWORD(v691) = v221;
          v221 = v231;
        }
      }

      else
      {
        v230 = 0;
      }

      if (v614 < v757)
      {
        v217 = 0xFFFF;
        if (v220 == 0xFFFF)
        {
          LODWORD(v690) = 0;
          v233 = 1;
LABEL_189:
          v220 = 0xFFFFLL;
        }

        else
        {
          v233 = 1;
          v234 = v220;
          while (1)
          {
            v235 = a1 + 44 * v234;
            if (v233 != *(v235 + 5))
            {
              break;
            }

            v233 = 0;
            v234 = *(v235 + 2);
            if (v234 == 0xFFFF)
            {
              LODWORD(v690) = 0;
              v217 = v220;
              goto LABEL_189;
            }
          }

          LODWORD(v690) = 0;
          v217 = v220;
          v220 = v234;
        }
      }

      else
      {
        v233 = 0;
      }

      v236 = 1;
      if (v614 < v752 && v216 != 0xFFFF)
      {
        v236 = v224 >= *(a1 + 44 * v216 + 5);
      }

      v237 = 2;
      if (v614 < v716 && v215 != 0xFFFF)
      {
        v237 = 2 * (v227 >= *(a1 + 44 * v215 + 5));
      }

      v238 = 4;
      if (v614 < v713 && v221 != 0xFFFF)
      {
        v238 = 4 * (v230 >= *(a1 + 44 * v221 + 5));
      }

      v239 = 8;
      if (v614 < v757 && v220 != 0xFFFF)
      {
        v239 = 8 * (v233 >= *(a1 + 44 * v220 + 5));
      }

      _X2 = &v673[16 * v209];
      v241 = vmlaq_f32(vmlaq_f32(vmulq_f32(v728, v212), v727, v213), v726, v214);
      v242 = vmlaq_f32(vmlaq_f32(vmulq_f32(v705, v212), v704, v213), v703, v214);
      if ((v675 | (2 * v677) | (4 * v678) | v679) != 0xF)
      {
        break;
      }

      v243 = &v673[16 * v209];
LABEL_255:
      if (v597)
      {
        v331 = v682;
      }

      else
      {
        v331 = 0;
      }

      v332 = v604 + 104 * HIDWORD(v613);
      v333 = v604 + 104 * v613;
      v334 = *(v333 + 2);
      v335 = *(v604 + 104 * v612 + 2);
      v336 = *(v604 + 104 * v607 + 2);
      v337 = v614;
      v616 = v217;
      if (v614 < v752)
      {
        v339 = v719;
        if (v719[3].i8[0])
        {
          v338 = 0;
        }

        else
        {
          v338 = *(v332 + 2);
        }
      }

      else
      {
        v338 = 0;
        v339 = v719;
      }

      v340 = (v243 + v331);
      v341 = *(v748 + 48);
      if (v341)
      {
        v334 = 0;
      }

      if (v614 < v716)
      {
        v342 = v334;
      }

      else
      {
        v342 = 0;
      }

      v343 = *(v722 + 48);
      if (v343)
      {
        v335 = 0;
      }

      if (v614 < v713)
      {
        v344 = v335;
      }

      else
      {
        v344 = 0;
      }

      v345 = *(v745 + 48);
      if (v345)
      {
        v336 = 0;
      }

      if (v614 < v757)
      {
        v346 = v336;
      }

      else
      {
        v346 = 0;
      }

      if (v344 <= v346)
      {
        v347 = v346;
      }

      else
      {
        v347 = v344;
      }

      if (v342 > v347)
      {
        v347 = v342;
      }

      if (v338 <= v347)
      {
        v348 = v347;
      }

      else
      {
        v348 = v338;
      }

      v349 = 1.0;
      if (((v338 == 2) & (v339[3].u8[0] >> 2)) != 0)
      {
        v350 = 0.5;
      }

      else
      {
        v350 = 1.0;
      }

      if (((v342 == 2) & (v341 >> 2)) != 0)
      {
        v351 = 0.5;
      }

      else
      {
        v351 = 1.0;
      }

      v352 = *&v339[2].i32[3];
      v353 = *&v339[3].i32[2];
      v354 = *(v748 + 44);
      v355 = *(v748 + 56);
      if (((v344 == 2) & (v343 >> 2)) != 0)
      {
        v356 = 0.5;
      }

      else
      {
        v356 = 1.0;
      }

      v357 = *(v722 + 44);
      v358 = *(v722 + 56);
      v359 = *(v745 + 44);
      v360 = *(v745 + 56);
      v617->i8[2] = 2 * v348;
      v617->i8[12] = 2 * v338;
      if (((v346 == 2) & (v345 >> 2)) != 0)
      {
        v349 = 0.5;
      }

      v683 = v342;
      v617->i8[13] = 2 * v342;
      v617->i8[14] = 2 * v344;
      v617->i8[15] = 2 * v346;
      v617->i8[0] = 7;
      v676 = v348;
      if (v348)
      {
        v714 = v604 + 104 * v607;
        v717 = v604 + 104 * v612;
        v681 = v338;
        v361 = vsubq_f32(v241, v242);
        v362.f32[0] = v352 * v350;
        v363.f32[0] = v353 * v350;
        v362.f32[1] = v354 * v351;
        v362.f32[2] = v356 * v357;
        v362.f32[3] = v349 * v359;
        v611 = v362;
        v363.f32[1] = v351 * v355;
        v363.f32[2] = v356 * v358;
        v363.f32[3] = v349 * v360;
        v605 = v363;
        v364 = vcgtq_f32(vdupq_n_s32(0x3F3504F3u), vabsq_f32(v212));
        v365 = vnegq_f32(v213);
        v366 = vnegq_f32(v214);
        v367 = vnegq_f32(v212);
        v368 = vmlsq_f32(v590, v361, v212);
        v369 = vmlsq_f32(v589, v361, v213);
        v370 = vmlsq_f32(v588, v361, v214);
        v371 = vcgtq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v370, v370), v369, v369), v368, v368), vdupq_n_s32(0x38D1B717u));
        v372 = vorrq_s8(vbicq_s8(v365, vorrq_s8(v371, v364)), vandq_s8(v368, v371));
        v373 = vbslq_s8(v371, v369, vbslq_s8(v364, v366, v212));
        v374 = vorrq_s8(vandq_s8(v213, vbicq_s8(v364, v371)), vandq_s8(v370, v371));
        v375 = vmlaq_f32(vmlaq_f32(vmulq_f32(v372, v372), v373, v373), v374, v374);
        v376 = vrsqrteq_f32(v375);
        v377 = 4;
        do
        {
          v376 = vmulq_f32(v376, vrsqrtsq_f32(vmulq_f32(v376, v376), v375));
          --v377;
        }

        while (v377);
        v378 = vmulq_f32(v376, v372);
        v379 = vmulq_f32(v373, v376);
        v380 = vmulq_f32(v376, v374);
        v758 = vmlaq_f32(vmulq_f32(v213, v380), v379, v366);
        v746 = v380;
        v753 = vmlaq_f32(vmulq_f32(v214, v378), v380, v367);
        v749 = v379;
        v723 = v378;
        v763 = vmlaq_f32(vmulq_f32(v212, v379), v378, v365);
        v381 = v591[21] + 104 * HIDWORD(v609);
        v382 = v591[49] + 104 * v609;
        v383 = v591[77] + 104 * HIDWORD(v608);
        v384 = v591[105];
        v617[14].i64[0] = 0;
        v617[14].i64[1] = 0;
        v617[15].i64[0] = v381;
        v617[15].i64[1] = v382;
        v617[16].i64[0] = v383;
        v617[16].i64[1] = v384 + 104 * v608;
        _X26 = &v340[(2 * v348)];
        bzero(v340, 16 * (2 * v348));
        v386 = v763;
        v387 = v753;
        v388 = v758;
        v389 = 0;
        LODWORD(v390) = 0;
        LODWORD(v391) = 0;
        LODWORD(v392) = 0;
        LODWORD(v393) = 0;
        v394 = v332 + 40;
        v395 = v333 + 40;
        v396 = v717 + 40;
        v397 = v714 + 40;
        v398 = v333 + 64;
        v399 = v717 + 64;
        v400 = v714 + 64;
        v401 = v719 + 2;
        __asm { FMOV            V4.4S, #1.0 }

        v403 = v681;
        v404.i32[0] = v681;
        v674 = v404;
        v404.i32[0] = v683;
        v672 = v404;
        v404.i32[0] = v344;
        v670 = v404;
        v404.i32[0] = v346;
        v668 = v404;
        v405 = v687;
        v406 = v686;
        v407 = v685;
        v408 = v684;
        do
        {
          __asm
          {
            PRFM            #0, [X26,#0x180]
            PRFM            #0, [X26,#0x200]
            PRFM            #0, [X26,#0x280]
          }

          if (v389 >= v403)
          {
            v393 = v393;
          }

          else
          {
            v393 = v389;
          }

          if (v389 >= v683)
          {
            v392 = v392;
          }

          else
          {
            v392 = v389;
          }

          v412 = v393 + 2 * v393;
          if (v389 >= v344)
          {
            v391 = v391;
          }

          else
          {
            v391 = v389;
          }

          v413 = (v394 + 4 * v412);
          v414 = *v413;
          *v415.f32 = *v413;
          v415.i32[2] = v413[1].i32[0];
          v416 = v392 + 2 * v392;
          v417 = (v395 + 4 * v416);
          v418 = *v417;
          *v419.f32 = *v417;
          v419.i32[2] = v417[1].i32[0];
          if (v389 >= v346)
          {
            v390 = v390;
          }

          else
          {
            v390 = v389;
          }

          v420 = v391 + 2 * v391;
          v421 = (v396 + 4 * v420);
          v422 = *v421;
          *v423.f32 = *v421;
          v423.i32[2] = v421[1].i32[0];
          v424 = v390 + 2 * v390;
          v425 = (v397 + 4 * v424);
          v426 = *v425;
          *v427.f32 = *v425;
          v427.i32[2] = v425[1].i32[0];
          v428 = v604 + 104 * HIDWORD(v613) + 64 + 4 * v412;
          v429 = *v428;
          v430.i64[0] = *v428;
          v430.i32[2] = *(v428 + 8);
          v431 = (v398 + 4 * v416);
          v432 = *v431;
          *v433.f32 = *v431;
          v433.i32[2] = v431[1].i32[0];
          v434 = (v399 + 4 * v420);
          v435 = *v434;
          *v436.f32 = *v434;
          v436.i32[2] = v434[1].i32[0];
          v437 = (v400 + 4 * v424);
          v438 = *v437;
          *v439.f32 = *v437;
          v439.i32[2] = v437[1].i32[0];
          v440 = *(v666 + 4 * HIDWORD(v613) + 2 * v393);
          v441 = *(v666 + 4 * v613 + 2 * v392);
          v442 = *(v666 + 4 * v612 + 2 * v391);
          v443 = v401;
          v444 = *(v666 + 4 * v607 + 2 * v390);
          if (v440 != 0xFFFF)
          {
            v443 = (v591[18] + (v440 << 6) + 32);
          }

          v720 = *v443;
          v445 = v401;
          if (v441 != 0xFFFF)
          {
            v445 = (v591[46] + (v441 << 6) + 32);
          }

          v718 = *v445;
          v446 = v401;
          if (v442 != 0xFFFF)
          {
            v446 = (v591[74] + (v442 << 6) + 32);
          }

          v764 = v386;
          v754 = v387;
          v759 = v388;
          v447 = *v446;
          v715 = *v446;
          v448 = v401;
          if (v444 != 0xFFFF)
          {
            v448 = (v591[102] + (v444 << 6) + 32);
          }

          v447.i32[0] = v389;
          v449 = _Q4;
          v449.i32[0] = 0;
          v450 = vbslq_s8(vdupq_lane_s32(*&vcgtq_u32(v674, v447), 0), _Q4, v449);
          v451 = v450;
          v451.i32[1] = 0;
          v452 = vbslq_s8(vdupq_lane_s32(*&vcgtq_u32(v672, v447), 0), v450, v451);
          v453 = v452;
          v453.i32[2] = 0;
          v454 = vbslq_s8(vdupq_lane_s32(*&vcgtq_u32(v670, v447), 0), v452, v453);
          v455 = v454;
          v455.i32[3] = 0;
          _Q4 = vbslq_s8(vdupq_lane_s32(*&vcgtq_u32(v668, v447), 0), v454, v455);
          v456 = vmulq_f32(v723, _Q4);
          v457 = vmulq_f32(v749, _Q4);
          v458 = vmulq_f32(v746, _Q4);
          v415.i32[3] = 0;
          v419.i32[3] = 0;
          v423.i32[3] = 0;
          v427.i32[3] = 0;
          v459 = vmulq_n_f32(v415, v665);
          v459.i32[3] = 0;
          v455.i64[0] = vextq_s8(v415, v415, 8uLL).u64[0];
          *v449.i8 = vmls_f32(vmul_f32(v664, vext_s8(v414, *v455.i8, 4uLL)), v632, v414);
          *v460.f32 = vext_s8(*v449.i8, vmls_f32(vmul_f32(v633, v414), v664, *v455.i8), 4uLL);
          v460.i64[1] = v449.u32[0];
          v461 = vmlaq_f32(v459, v663, v460);
          v461.i64[1] = vextq_s8(v461, v461, 8uLL).u32[0];
          v462 = vmulq_f32(v641, v415);
          v462.i64[0] = vpaddq_f32(v462, v462).u64[0];
          v463 = vmlaq_n_f32(v461, v641, vpadd_f32(*v462.f32, *v462.f32).f32[0]);
          v464 = vmulq_n_f32(v419, v660);
          v464.i32[3] = 0;
          v460.i64[0] = vextq_s8(v419, v419, 8uLL).u64[0];
          *v455.i8 = vmls_f32(vmul_f32(*v662.i8, vext_s8(v418, *v460.f32, 4uLL)), v630, v418);
          *v465.f32 = vext_s8(*v455.i8, vmls_f32(vmul_f32(v631, v418), *v662.i8, *v460.f32), 4uLL);
          v465.i64[1] = v455.u32[0];
          v466 = vmlaq_f32(v464, v661, v465);
          v467 = vaddq_f32(v463, v463);
          v466.i64[1] = vextq_s8(v466, v466, 8uLL).u32[0];
          v468 = vmulq_f32(v640, v419);
          v468.i64[0] = vpaddq_f32(v468, v468).u64[0];
          v469 = vmlaq_n_f32(v466, v640, vpadd_f32(*v468.f32, *v468.f32).f32[0]);
          v470 = vaddq_f32(v469, v469);
          v471 = vmulq_n_f32(v423, v659);
          v471.i32[3] = 0;
          v469.i64[0] = vextq_s8(v423, v423, 8uLL).u64[0];
          *v460.f32 = vmls_f32(vmul_f32(v658, vext_s8(v422, *v469.f32, 4uLL)), v628, v422);
          *v472.f32 = vext_s8(*v460.f32, vmls_f32(vmul_f32(v629, v422), v658, *v469.f32), 4uLL);
          v472.i64[1] = v460.u32[0];
          v473 = vmlaq_f32(v471, v657, v472);
          v473.i64[1] = vextq_s8(v473, v473, 8uLL).u32[0];
          v474 = vmulq_f32(v639, v423);
          v474.i64[0] = vpaddq_f32(v474, v474).u64[0];
          v475 = vmlaq_n_f32(v473, v639, vpadd_f32(*v474.f32, *v474.f32).f32[0]);
          v476 = vaddq_f32(v475, v475);
          v477 = vmulq_n_f32(v427, v656);
          v477.i32[3] = 0;
          v475.i64[0] = vextq_s8(v427, v427, 8uLL).u64[0];
          *v469.f32 = vmls_f32(vmul_f32(v655, vext_s8(v426, *v475.f32, 4uLL)), v626, v426);
          *v478.f32 = vext_s8(*v469.f32, vmls_f32(vmul_f32(v627, v426), v655, *v475.f32), 4uLL);
          v478.i64[1] = v469.u32[0];
          v479 = vmlaq_f32(v477, v654, v478);
          v479.i64[1] = vextq_s8(v479, v479, 8uLL).u32[0];
          v480 = vmulq_f32(v638, v427);
          v480.i64[0] = vpaddq_f32(v480, v480).u64[0];
          v481 = vmlaq_n_f32(v479, v638, vpadd_f32(*v480.f32, *v480.f32).f32[0]);
          v482 = vaddq_f32(v481, v481);
          v483 = vzip1q_s32(v467, v476);
          v484 = vzip2q_s32(v467, v476);
          v485 = vzip1q_s32(v470, v482);
          v486 = vzip2q_s32(v470, v482);
          v487 = vzip1q_s32(v483, v485);
          v488 = vzip2q_s32(v483, v485);
          v489 = vzip1q_s32(v484, v486);
          v750 = vaddq_f32(v712, v487);
          v430.i32[3] = 0;
          v433.i32[3] = 0;
          v436.i32[3] = 0;
          v490 = vaddq_f32(v711, v488);
          v439.i32[3] = 0;
          v491 = vmulq_n_f32(v430, v653);
          v491.i32[3] = 0;
          v492 = vaddq_f32(v708, v489);
          v469.i64[0] = vextq_s8(v430, v430, 8uLL).u64[0];
          *v460.f32 = vmls_f32(vmul_f32(v652, vext_s8(v429, *v469.f32, 4uLL)), v624, v429);
          *v493.f32 = vext_s8(*v460.f32, vmls_f32(vmul_f32(v625, v429), v652, *v469.f32), 4uLL);
          v493.i64[1] = v460.u32[0];
          v494 = vmlaq_f32(v491, v651, v493);
          v494.i64[1] = vextq_s8(v494, v494, 8uLL).u32[0];
          v495 = vmulq_f32(v637, v430);
          v495.i64[0] = vpaddq_f32(v495, v495).u64[0];
          v496 = vmulq_n_f32(v433, v650);
          v496.i32[3] = 0;
          v497 = vmlaq_n_f32(v494, v637, vpadd_f32(*v495.f32, *v495.f32).f32[0]);
          v495.i64[0] = vextq_s8(v433, v433, 8uLL).u64[0];
          *v469.f32 = vmls_f32(vmul_f32(v649, vext_s8(v432, *v495.f32, 4uLL)), v622, v432);
          *v498.f32 = vext_s8(*v469.f32, vmls_f32(vmul_f32(v623, v432), v649, *v495.f32), 4uLL);
          v498.i64[1] = v469.u32[0];
          v499 = vmlaq_f32(v496, v648, v498);
          v499.i64[1] = vextq_s8(v499, v499, 8uLL).u32[0];
          v500 = vaddq_f32(v497, v497);
          v501 = vmulq_f32(v636, v433);
          v501.i64[0] = vpaddq_f32(v501, v501).u64[0];
          v502 = vmlaq_n_f32(v499, v636, vpadd_f32(*v501.f32, *v501.f32).f32[0]);
          v503 = vaddq_f32(v502, v502);
          v504 = vmulq_n_f32(v436, v647);
          v504.i32[3] = 0;
          v495.i64[0] = vextq_s8(v436, v436, 8uLL).u64[0];
          *v502.f32 = vmls_f32(vmul_f32(v646, vext_s8(v435, *v495.f32, 4uLL)), v620, v435);
          *v505.f32 = vext_s8(*v502.f32, vmls_f32(vmul_f32(v621, v435), v646, *v495.f32), 4uLL);
          v505.i64[1] = v502.u32[0];
          v506 = vmlaq_f32(v504, v645, v505);
          v506.i64[1] = vextq_s8(v506, v506, 8uLL).u32[0];
          v507 = vmulq_f32(v635, v436);
          v507.i64[0] = vpaddq_f32(v507, v507).u64[0];
          v508 = vmlaq_n_f32(v506, v635, vpadd_f32(*v507.f32, *v507.f32).f32[0]);
          v509 = vmulq_n_f32(v439, v644);
          v509.i32[3] = 0;
          v505.i64[0] = vextq_s8(v439, v439, 8uLL).u64[0];
          *v495.f32 = vmls_f32(vmul_f32(v643, vext_s8(v438, *v505.f32, 4uLL)), v618, v438);
          *v510.f32 = vext_s8(*v495.f32, vmls_f32(vmul_f32(v619, v438), v643, *v505.f32), 4uLL);
          v510.i64[1] = v495.u32[0];
          v511 = vmlaq_f32(v509, v642, v510);
          v512 = vaddq_f32(v508, v508);
          v511.i64[1] = vextq_s8(v511, v511, 8uLL).u32[0];
          v513 = vmulq_f32(v634, v439);
          v513.i64[0] = vpaddq_f32(v513, v513).u64[0];
          v514 = vmlaq_n_f32(v511, v634, vpadd_f32(*v513.f32, *v513.f32).f32[0]);
          v515 = vaddq_f32(v514, v514);
          v516 = vzip1q_s32(v500, v512);
          v517 = vzip1q_s32(v503, v515);
          v518 = vzip2q_s32(v503, v515);
          v519 = vzip1q_s32(v516, v517);
          v520 = vzip2q_s32(v516, v517);
          v521 = vzip1q_s32(vzip2q_s32(v500, v512), v518);
          v522 = vaddq_f32(v710, v519);
          v523 = vaddq_f32(v709, v520);
          v524 = vaddq_f32(v707, v521);
          v525 = vmlsq_f32(vmulq_f32(v458, v488), v457, v489);
          v526 = vmlsq_f32(vmulq_f32(v456, v489), v458, v487);
          v527 = vmlsq_f32(vmulq_f32(v457, v487), v456, v488);
          v528 = vbicq_s8(v525, vcgtq_f32(v406, vabsq_f32(v525)));
          v529 = vbicq_s8(v526, vcgtq_f32(v406, vabsq_f32(v526)));
          v530 = vbicq_s8(v527, vcgtq_f32(v406, vabsq_f32(v527)));
          v531 = vmlaq_f32(vmlaq_f32(vmulq_f32(v408, v528), v529, v742), v530, v741);
          v532 = vmlaq_f32(vmlaq_f32(vmulq_f32(v740, v528), v529, v739), v530, v738);
          v533 = vmlaq_f32(vmlaq_f32(vmulq_f32(v737, v528), v529, v736), v530, v735);
          v534 = vmlaq_f32(v407, v405, vmlaq_f32(vmlaq_f32(vmulq_f32(v531, v531), v532, v532), v533, v533));
          v535 = *v448;
          if (v88)
          {
            v536 = vmlsq_f32(vmulq_f32(v458, v520), v457, v521);
            v537 = vmlsq_f32(vmulq_f32(v456, v521), v458, v519);
            v538 = vmlsq_f32(vmulq_f32(v457, v519), v456, v520);
            v539 = vbicq_s8(v536, vcgtq_f32(v406, vabsq_f32(v536)));
            v540 = vbicq_s8(v537, vcgtq_f32(v406, vabsq_f32(v537)));
            v541 = vbicq_s8(v538, vcgtq_f32(v406, vabsq_f32(v538)));
            v542 = v457;
            v543 = vmlaq_f32(vmlaq_f32(vmulq_f32(v700, v539), v540, v699), v541, v698);
            v544 = vmlaq_f32(vmlaq_f32(vmulq_f32(v697, v539), v540, v696), v541, v695);
            v545 = vmlaq_f32(vmlaq_f32(vmulq_f32(v694, v539), v540, v693), v541, v692);
            v546 = v458;
            v534 = vaddq_f32(v534, vmlaq_f32(v701, v702, vmlaq_f32(vmlaq_f32(vmulq_f32(v543, v543), v544, v544), v545, v545)));
            v547 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v705, v456), v704, v457), v703, v458), v731, v539), v730, v540), v729, v541);
          }

          else
          {
            v543 = 0uLL;
            if (v706)
            {
              v542 = v457;
              v547 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v705, v456), v704, v457), v703, v458), v731, vmlsq_f32(vmulq_f32(v458, v520), v457, v521)), v730, vmlsq_f32(vmulq_f32(v456, v521), v458, v519)), v729, vmlsq_f32(vmulq_f32(v457, v519), v456, v520));
              v544 = 0uLL;
              v545 = 0uLL;
            }

            else
            {
              v544 = 0uLL;
              v545 = 0uLL;
              v547 = 0uLL;
              v542 = v457;
            }

            v546 = v458;
          }

          v548 = vsubq_f32(v750, v522);
          v549 = vsubq_f32(v490, v523);
          v550 = vsubq_f32(v492, v524);
          v551 = vzip1q_s32(v720, v715);
          v552 = vzip1q_s32(v718, v535);
          v553 = vzip2q_s32(v718, v535);
          v554 = vzip1q_s32(v551, v552);
          v555 = vzip2q_s32(v551, v552);
          v556 = vzip1q_s32(vzip2q_s32(v720, v715), v553);
          v746 = v546;
          v340 = _X26 + 26;
          v760 = vmulq_f32(v759, _Q4);
          v755 = vmulq_f32(v754, _Q4);
          v765 = vmulq_f32(v764, _Q4);
          v557 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v728, v456), v727, v542), v726, v546), v725, v528), v724, v529), v743, v530);
          v558 = vnegq_f32(v489);
          _X26[6] = v543;
          _X26[7] = v544;
          v559 = vnegq_f32(v487);
          v560 = vnegq_f32(v488);
          _X26[8] = v545;
          v561 = vrecpeq_f32(v534);
          v562 = 4;
          v563 = v542;
          do
          {
            v561 = vmulq_f32(v561, vrecpsq_f32(v561, v534));
            --v562;
          }

          while (v562);
          v564 = vdupq_n_s32(0x3F4CCCCDu);
          _X26[3] = v531;
          _X26[4] = v532;
          _X26[5] = v533;
          _X26[9] = vmlaq_f32(vmlaq_f32(vmulq_f32(v456, v548), v549, v563), v550, v746);
          _X26[10] = vmulq_f32(_Q4, vandq_s8(vmulq_f32(v561, v564), vcgtzq_f32(v534)));
          _X26[11] = vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v456, v554), v555, v563), v556, v746), v732, v547), v734, v557);
          v387 = v755;
          v565 = vmlaq_f32(vmulq_f32(v765, v488), v755, v558);
          v388 = v760;
          v566 = vmlaq_f32(vmulq_f32(v760, v489), v765, v559);
          v567 = vmlaq_f32(vmulq_f32(v755, v487), v760, v560);
          v749 = v563;
          v406 = v686;
          v568 = vbicq_s8(v565, vcgtq_f32(v686, vabsq_f32(v565)));
          v569 = vbicq_s8(v566, vcgtq_f32(v686, vabsq_f32(v566)));
          v570 = vbicq_s8(v567, vcgtq_f32(v686, vabsq_f32(v567)));
          v571 = vmlaq_f32(vmlaq_f32(vmulq_f32(v684, v568), v569, v742), v570, v741);
          v572 = vmlaq_f32(vmlaq_f32(vmulq_f32(v740, v568), v569, v739), v570, v738);
          v573 = vmlaq_f32(vmlaq_f32(vmulq_f32(v737, v568), v569, v736), v570, v735);
          v574 = vmlaq_f32(v685, v687, vmlaq_f32(vmlaq_f32(vmulq_f32(v571, v571), v572, v572), v573, v573));
          _X26[12] = v721;
          v723 = v456;
          *_X26 = v456;
          _X26[1] = v563;
          _X26[2] = v746;
          if (v88)
          {
            v575 = vmlsq_f32(vmulq_f32(v765, v520), v755, v521);
            v576 = vmlsq_f32(vmulq_f32(v760, v521), v765, v519);
            v577 = vmlsq_f32(vmulq_f32(v755, v519), v760, v520);
            v578 = vbicq_s8(v575, vcgtq_f32(v686, vabsq_f32(v575)));
            v579 = vbicq_s8(v576, vcgtq_f32(v686, vabsq_f32(v576)));
            v580 = vbicq_s8(v577, vcgtq_f32(v686, vabsq_f32(v577)));
            v581 = vmlaq_f32(vmlaq_f32(vmulq_f32(v700, v578), v579, v699), v580, v698);
            v582 = vmlaq_f32(vmlaq_f32(vmulq_f32(v697, v578), v579, v696), v580, v695);
            v583 = vmlaq_f32(vmlaq_f32(vmulq_f32(v694, v578), v579, v693), v580, v692);
            v574 = vaddq_f32(v574, vmlaq_f32(v701, v702, vmlaq_f32(vmlaq_f32(vmulq_f32(v581, v581), v582, v582), v583, v583)));
            v584 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v705, v760), v704, v755), v703, v765), v731, v578), v730, v579), v729, v580);
            v386 = v765;
          }

          else
          {
            v581 = 0uLL;
            if (v706)
            {
              v386 = v765;
              v584 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v705, v760), v704, v755), v703, v765), v731, vmlsq_f32(vmulq_f32(v765, v520), v755, v521)), v730, vmlsq_f32(vmulq_f32(v760, v521), v765, v519)), v729, vmlsq_f32(vmulq_f32(v755, v519), v760, v520));
              v582 = 0uLL;
              v583 = 0uLL;
            }

            else
            {
              v582 = 0uLL;
              v583 = 0uLL;
              v584 = 0uLL;
              v386 = v765;
            }
          }

          v407 = v685;
          v585 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v728, v760), v727, v755), v726, v386), v725, v568), v724, v569), v743, v570);
          _X26[19] = v581;
          _X26[20] = v582;
          _X26[21] = v583;
          v586 = vrecpeq_f32(v574);
          v587 = 4;
          do
          {
            v586 = vmulq_f32(v586, vrecpsq_f32(v586, v574));
            --v587;
          }

          while (v587);
          _X26[13] = v760;
          _X26[14] = v755;
          _X26[15] = v386;
          _X26[16] = v571;
          _X26[17] = v572;
          _X26[18] = v573;
          _X26[22] = vmlaq_f32(vmlaq_f32(vmulq_f32(v760, v548), v549, v755), v550, v386);
          _X26[23] = vmulq_f32(_Q4, vandq_s8(vmulq_f32(v586, v564), vcgtzq_f32(v574)));
          _X26[24] = vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v760, v554), v555, v755), v556, v386), v732, v584), v734, v585);
          _X26[25] = v721;
          ++v389;
          _X26 += 26;
          v403 = v681;
          v405 = v687;
          v408 = v684;
        }

        while (v389 != v676);
        v617[2] = v611;
        v617[3] = v605;
        LODWORD(v609) = v609 + 1;
        ++HIDWORD(v609);
        LODWORD(v608) = v608 + 1;
        ++HIDWORD(v608);
        v337 = v614;
      }

      v103 = v337 + 1;
      v617 = v340;
      v64 = v598;
      v104 = v616;
      if (v103 == v599)
      {
        goto LABEL_339;
      }
    }

    v244 = 0;
    v245 = &_X2[10 * v209];
    v246 = v237 | v236 | v238 | v239;
    while (2)
    {
      __asm
      {
        PRFM            #0, [X2,#0x180]
        PRFM            #0, [X2,#0x200]
        PRFM            #0, [X2,#0x280]
      }

      v250 = v591[18] + ((v689 + *(a1 + 44 * v691)) << 6);
      v251 = v591[46] + ((v688 + *(a1 + 44 * HIDWORD(v690))) << 6);
      v252 = v591[74] + ((HIDWORD(v689) + *(a1 + 44 * HIDWORD(v691))) << 6);
      v253 = v591[102] + ((v690 + *(a1 + 44 * v217)) << 6);
      v254 = *(v250 + 16);
      v255 = *(v251 + 16);
      v256 = *(v252 + 16);
      v257 = *(v253 + 16);
      v258 = vzip1q_s32(v254, v256);
      v259 = vzip2q_s32(v254, v256);
      v260 = vzip1q_s32(v255, v257);
      v261 = vzip2q_s32(v255, v257);
      v262 = vzip1q_s32(v258, v260);
      v263 = vzip2q_s32(v258, v260);
      v264 = vzip1q_s32(v259, v261);
      v265 = vsubq_f32(v262, v712);
      v266 = vsubq_f32(v263, v711);
      v267 = vsubq_f32(v264, v708);
      v268 = vsubq_f32(v262, v710);
      v269 = vsubq_f32(v263, v709);
      v270 = vsubq_f32(v264, v707);
      v271 = vmlsq_f32(vmulq_f32(v214, v266), v213, v267);
      v272 = vmlsq_f32(vmulq_f32(v212, v267), v214, v265);
      v273 = vmlsq_f32(vmulq_f32(v213, v265), v212, v266);
      v274 = vbicq_s8(v271, vcgtq_f32(v686, vabsq_f32(v271)));
      v275 = vbicq_s8(v272, vcgtq_f32(v686, vabsq_f32(v272)));
      v276 = vbicq_s8(v273, vcgtq_f32(v686, vabsq_f32(v273)));
      v277 = vmlaq_f32(vmlaq_f32(vmulq_f32(v684, v274), v275, v742), v276, v741);
      v278 = vmlaq_f32(vmlaq_f32(vmulq_f32(v740, v274), v275, v739), v276, v738);
      v279 = vmlaq_f32(vmlaq_f32(vmulq_f32(v737, v274), v275, v736), v276, v735);
      v280 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v279, v279), v278, v278), v277, v277), v687, v685);
      if (v88)
      {
        v281 = vmlsq_f32(vmulq_f32(v214, v269), v213, v270);
        v282 = vmlsq_f32(vmulq_f32(v212, v270), v214, v268);
        v283 = vmlsq_f32(vmulq_f32(v213, v268), v212, v269);
        v284 = vbicq_s8(v281, vcgtq_f32(v686, vabsq_f32(v281)));
        v285 = vbicq_s8(v282, vcgtq_f32(v686, vabsq_f32(v282)));
        v286 = vbicq_s8(v283, vcgtq_f32(v686, vabsq_f32(v283)));
        v287 = vmlaq_f32(vmlaq_f32(vmulq_f32(v700, v284), v285, v699), v286, v698);
        v288 = vmlaq_f32(vmlaq_f32(vmulq_f32(v697, v284), v285, v696), v286, v695);
        v289 = vmlaq_f32(vmlaq_f32(vmulq_f32(v694, v284), v285, v693), v286, v692);
        v280 = vaddq_f32(v280, vmlaq_f32(v701, v702, vmlaq_f32(vmlaq_f32(vmulq_f32(v289, v289), v288, v288), v287, v287)));
        v290 = vaddq_f32(v242, vmlaq_f32(vmlaq_f32(vmulq_f32(v731, v284), v730, v285), v729, v286));
      }

      else
      {
        v289 = 0uLL;
        if (v706)
        {
          v290 = vaddq_f32(v242, vmlaq_f32(vmlaq_f32(vmulq_f32(v731, vmlsq_f32(vmulq_f32(v214, v269), v213, v270)), v730, vmlsq_f32(vmulq_f32(v212, v270), v214, v268)), v729, vmlsq_f32(vmulq_f32(v213, v268), v212, v269)));
          v288 = 0uLL;
          v287 = 0uLL;
        }

        else
        {
          v288 = 0uLL;
          v287 = 0uLL;
          v290 = v242;
        }
      }

      v291 = v244 + 1;
      v243 = _X2 + 10;
      v292 = *(v250 + 32);
      v293 = *(v251 + 32);
      v294 = *(v252 + 32);
      v295 = *(v253 + 32);
      v296 = vzip1q_s32(v292, v294);
      v297 = vzip2q_s32(v292, v294);
      v298 = vzip1q_s32(v293, v295);
      v299 = vzip1q_s32(v297, vzip2q_s32(v293, v295));
      v300.i32[0] = *(v250 + 12);
      v300.i32[1] = *(v251 + 12);
      v300.i32[2] = *(v252 + 12);
      v300.i32[3] = *(v253 + 12);
      v301 = vmlaq_f32(vmlaq_f32(vmulq_f32(v214, v299), v213, vzip2q_s32(v296, v298)), v212, vzip1q_s32(v296, v298));
      v302 = vaddq_f32(v241, vmlaq_f32(vmlaq_f32(vmulq_f32(v725, v274), v724, v275), v743, v276));
      _X2[3] = v287;
      _X2[4] = v288;
      _X2[5] = v289;
      v303 = vrecpeq_f32(v280);
      v304 = 4;
      do
      {
        v303 = vmulq_f32(v303, vrecpsq_f32(v303, v280));
        --v304;
      }

      while (v304);
      v305 = vsubq_f32(v302, v290);
      v306 = vandq_s8(v303, vcgtzq_f32(v280));
      v307 = vsubq_f32(v300, v595);
      *_X2 = v277;
      _X2[1] = v278;
      _X2[2] = v279;
      _X2[6] = v307;
      _X2[7] = v306;
      v308 = vaddq_f32(v301, vmlsq_f32(vmlaq_f32(vandq_s8(vmulq_f32(v305, v762), vandq_s8(vandq_s8(vcgtq_f32(v593, v305), vcgtzq_f32(v680)), vcgtq_f32(vnegq_f32(v305), vmulq_n_f32(v307, v606)))), v732, v290), v734, v302));
      _X2[8] = v308;
      _X2[9] = v594;
      if (v597)
      {
        v308.i32[0] = *(v250 + 28);
        v278.i32[0] = *(v251 + 28);
        v279.i32[0] = *(v252 + 28);
        v306.i32[0] = *(v253 + 28);
        *v309.f32 = vext_s8(vdup_lane_s32(*v308.f32, 0), *v278.f32, 4uLL);
        *&v309.u32[2] = vext_s8(vdup_lane_s32(*v279.f32, 0), *v306.i8, 4uLL);
        v245[v244] = v309;
      }

      if (v246)
      {
        v313 = v246;
        if ((v246 & 2) == 0)
        {
          goto LABEL_226;
        }
      }

      else
      {
        v310 = v224 + 1;
        v311 = 0xFFFFLL;
        if (v216 == 0xFFFF)
        {
          v312 = 1;
        }

        else
        {
          v311 = v216;
          while (1)
          {
            v314 = a1 + 44 * v311;
            v315 = *(v314 + 5);
            if (v310 != v315)
            {
              break;
            }

            v310 = 0;
            v311 = *(v314 + 2);
            if (v311 == 0xFFFF)
            {
              v312 = 1;
              v311 = 0xFFFFLL;
              goto LABEL_225;
            }
          }

          v312 = v310 >= v315;
        }

LABEL_225:
        v313 = v312 | v246;
        LODWORD(v689) = v224;
        LODWORD(v691) = v216;
        v224 = v310;
        v216 = v311;
        if ((v246 & 2) == 0)
        {
LABEL_226:
          v316 = v227 + 1;
          v317 = 0xFFFFLL;
          if (v215 == 0xFFFF)
          {
            v318 = 2;
          }

          else
          {
            v317 = v215;
            while (1)
            {
              v319 = a1 + 44 * v317;
              v320 = *(v319 + 5);
              if (v316 != v320)
              {
                break;
              }

              v316 = 0;
              v317 = *(v319 + 2);
              if (v317 == 0xFFFF)
              {
                v318 = 2;
                v317 = 0xFFFFLL;
                goto LABEL_233;
              }
            }

            v318 = 2 * (v316 >= v320);
          }

LABEL_233:
          v313 = v318 | v313;
          v688 = v227;
          HIDWORD(v690) = v215;
          v227 = v316;
          v215 = v317;
        }
      }

      if ((v246 & 4) != 0)
      {
        if ((v246 & 8) != 0)
        {
          goto LABEL_253;
        }

LABEL_245:
        v326 = v233 + 1;
        v327 = 0xFFFFLL;
        if (v220 == 0xFFFF)
        {
          v328 = 8;
        }

        else
        {
          v327 = v220;
          while (1)
          {
            v329 = a1 + 44 * v327;
            v330 = *(v329 + 5);
            if (v326 != v330)
            {
              break;
            }

            v326 = 0;
            v327 = *(v329 + 2);
            if (v327 == 0xFFFF)
            {
              v328 = 8;
              v327 = 0xFFFFLL;
              goto LABEL_252;
            }
          }

          v328 = 8 * (v326 >= v330);
        }

LABEL_252:
        v313 = v328 | v313;
        LODWORD(v690) = v233;
        v217 = v220;
        v233 = v326;
        v220 = v327;
      }

      else
      {
        v321 = v230 + 1;
        v322 = 0xFFFFLL;
        if (v221 == 0xFFFF)
        {
          v323 = 4;
        }

        else
        {
          v322 = v221;
          while (1)
          {
            v324 = a1 + 44 * v322;
            v325 = *(v324 + 5);
            if (v321 != v325)
            {
              break;
            }

            v321 = 0;
            v322 = *(v324 + 2);
            if (v322 == 0xFFFF)
            {
              v323 = 4;
              v322 = 0xFFFFLL;
              goto LABEL_244;
            }
          }

          v323 = 4 * (v321 >= v325);
        }

LABEL_244:
        v313 = v323 | v313;
        HIDWORD(v689) = v230;
        HIDWORD(v691) = v221;
        v230 = v321;
        v221 = v322;
        if ((v246 & 8) == 0)
        {
          goto LABEL_245;
        }
      }

LABEL_253:
      _X2 = v243;
      v244 = v291;
      _ZF = v246 == 15;
      v246 = v313;
      if (_ZF)
      {
        goto LABEL_255;
      }

      continue;
    }
  }

LABEL_339:
  *(v64 + v62) = 0;
  return 2;
}