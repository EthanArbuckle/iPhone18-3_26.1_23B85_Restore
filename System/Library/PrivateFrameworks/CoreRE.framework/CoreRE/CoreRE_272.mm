uint64_t TestUnifiedNormals(int a1, uint64_t a2, unsigned int a3, uint64_t a4, char a5)
{
  LODWORD(v5) = a1;
  result = 0;
  if (v5 && a2 && a3 && a4)
  {
    v7 = 1.0 / v5;
    v5 = v5;
    v8 = (a2 + 8);
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    do
    {
      v9 = v9 + (*(v8 - 2) * v7);
      v10 = v10 + (*(v8 - 1) * v7);
      v12 = *v8;
      v8 += 3;
      v11 = v11 + (v12 * v7);
      --v5;
    }

    while (v5);
    v13 = (a4 + 8);
    LOBYTE(result) = 1;
    v14 = a3;
    do
    {
      v15 = *(v13 - 1);
      v16 = (a2 + 12 * *(v13 - 2));
      v17 = (a2 + 12 * v15);
      v18 = (a2 + 12 * *v13);
      v19 = v16[1];
      v20 = *v17 - *v16;
      v21 = v17[1] - v19;
      v22 = v16[2];
      v23 = v17[2] - v22;
      v24 = *v18 - *v16;
      v25 = v18[1] - v19;
      v26 = v18[2] - v22;
      v27 = (v21 * v26) - (v23 * v25);
      v28 = (v23 * v24) - (v20 * v26);
      v29 = (v20 * v25) - (v21 * v24);
      v30 = ((v28 * v28) + (v27 * v27)) + (v29 * v29);
      v31 = 0.0;
      v32 = 0.0;
      v33 = 0.0;
      if (v30 > 0.0)
      {
        v34 = 1.0 / sqrtf(v30);
        v31 = v27 * v34;
        v32 = v28 * v34;
        v33 = v29 * v34;
      }

      v35 = ((v19 * v32) + (*v16 * v31)) + (v22 * v33);
      v36 = ((v10 * v32) + (v9 * v31)) + (v11 * v33);
      if (v36 <= v35)
      {
        v37 = 1;
      }

      else
      {
        v37 = a5 ^ 1;
      }

      if (v37)
      {
        result = (v36 <= v35) & result;
      }

      else
      {
        result = 0;
        *(v13 - 1) = *v13;
        *v13 = v15;
      }

      v13 += 3;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t extractHullPolygons(unsigned int &,physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>> &,physx::ConvexPolygonsBuilder const&,physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>*,physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>> &)::Local::FloodFill(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v12 = a3;
  if ((*(a4 + a3) & 1) == 0)
  {
    v6 = result;
    v7 = a3;
    *(a4 + a3) = 1;
    v8 = *(result + 8);
    if ((*(result + 12) & 0x7FFFFFFFu) <= v8)
    {
      result = physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(result, &v12);
      v7 = v12;
    }

    else
    {
      *(*result + 4 * v8) = a3;
      ++*(result + 8);
    }

    v9 = (a2 + 12 * v7);
    if ((*v9 & 0x20000000) == 0)
    {
      result = extractHullPolygons(unsigned int &,physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>> &,physx::ConvexPolygonsBuilder const&,physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>*,physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>> &)::Local::FloodFill(v6, a2, *v9 & 0x1FFFFFFF, a4);
    }

    v10 = v9[1];
    if ((v10 & 0x20000000) == 0)
    {
      result = extractHullPolygons(unsigned int &,physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>> &,physx::ConvexPolygonsBuilder const&,physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>*,physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>> &)::Local::FloodFill(v6, a2, v10 & 0x1FFFFFFF, a4);
    }

    v11 = v9[2];
    if ((v11 & 0x20000000) == 0)
    {
      return extractHullPolygons(unsigned int &,physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>> &,physx::ConvexPolygonsBuilder const&,physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>*,physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>> &)::Local::FloodFill(v6, a2, v11 & 0x1FFFFFFF, a4);
    }
  }

  return result;
}

void checkRedundantVertices(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v77 = a4;
  v90 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  MEMORY[0x1EEE9AC00](a1);
  v79 = &v75[-((v9 + 15) & 0x1FFFFFFF0)];
  bzero(v79, v9);
  v10 = *(a5 + 2);
  MEMORY[0x1EEE9AC00](v11);
  v12 = &v75[-((v10 + 15) & 0x1FFFFFFF0)];
  bzero(v12, v10);
  v88 = 0;
  v89 = 0;
  if (!v10)
  {
    goto LABEL_122;
  }

  v13 = 0;
  while (2)
  {
    v76 = v13;
    v14 = v9;
    while (1)
    {
      --v10;
      LODWORD(v89) = 0;
      v15 = *a2;
      LODWORD(v86) = 0;
      if (v14)
      {
        break;
      }

LABEL_25:
      if (!v10)
      {
        if ((v76 & 1) == 0)
        {
          goto LABEL_122;
        }

        goto LABEL_34;
      }
    }

    v16 = 0;
    v17 = 0;
    do
    {
      v20 = *v15;
      v19 = (v15 + 1);
      v18 = v20;
      LODWORD(v84) = v20;
      if (v20)
      {
        v21 = v18;
        v22 = v19;
        while (1)
        {
          v23 = *v22++;
          if (*(*a5 + 4 * v10) == v23)
          {
            break;
          }

          if (!--v21)
          {
            goto LABEL_19;
          }
        }

        if ((HIDWORD(v89) & 0x7FFFFFFFu) <= v89)
        {
          physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(&v88, &v86);
          v24 = v89;
        }

        else
        {
          *(v88 + 4 * v89) = v17;
          v24 = v89 + 1;
          LODWORD(v89) = v89 + 1;
        }

        if ((HIDWORD(v89) & 0x7FFFFFFFu) <= v24)
        {
          physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(&v88, &v84);
          v18 = v84;
        }

        else
        {
          v18 = v84;
          *(v88 + 4 * v24) = v84;
          LODWORD(v89) = v89 + 1;
        }

        ++v16;
        v17 = v86;
        LODWORD(v9) = *a1;
      }

      else
      {
        v18 = 0;
      }

LABEL_19:
      v15 = &v19[v18];
      LODWORD(v86) = ++v17;
    }

    while (v17 < v9);
    if (!v16)
    {
      goto LABEL_24;
    }

    v25 = 0;
    v26 = 0;
    v27 = v88;
    do
    {
      v26 |= *(v88 + 4 * (v25 & 0xFFFFFFFE) + 4) == 3;
      v25 += 2;
    }

    while (2 * v16 != v25);
    if ((v26 & 1) == 0)
    {
LABEL_24:
      v14 = v9;
      goto LABEL_25;
    }

    v28 = 0;
    v12[v10] = 1;
    do
    {
      if (*(v27 + 4 * (v28 + 1)) != 3)
      {
        v79[*(v27 + 4 * v28)] = 1;
      }

      v28 += 2;
    }

    while (2 * v16 != v28);
    v13 = 1;
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_34:
  v29 = *(a5 + 2);
  if (v29)
  {
    v30 = *a5;
    LODWORD(v31) = *(a5 + 2);
    do
    {
      v32 = v29 - 1;
      if (v12[v29 - 1] == 1)
      {
        if (v29 < v31)
        {
          do
          {
            *(v30 + 4 * v29 - 4) = *(v30 + 4 * v29);
            ++v29;
            v31 = *(a5 + 2);
          }

          while (v29 < v31);
        }

        LODWORD(v31) = v31 - 1;
        *(a5 + 2) = v31;
      }

      v29 = v32;
    }

    while (v32);
    LODWORD(v9) = *a1;
  }

  v86 = 0;
  v87 = 0;
  v84 = 0;
  v85 = 0;
  if (v9)
  {
    v33 = 0;
    v34 = 0;
    v35 = *v77;
    v36 = *a2;
    v78 = a2;
    do
    {
      v39 = *v36;
      v38 = v36 + 1;
      v37 = v39;
      v83 = v39;
      v42 = *v35;
      v41 = v35 + 1;
      v40 = v42;
      v82 = v42;
      if (v79[v33] == 1)
      {
        if (v40)
        {
          v43 = 0;
          do
          {
            v44 = v41[v43];
            v80 = 3;
            v81 = v44;
            if ((HIDWORD(v87) & 0x7FFFFFFFu) <= v87)
            {
              physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(&v86, &v80);
              v45 = v87;
            }

            else
            {
              v86[v87] = 3;
              v45 = v87 + 1;
              LODWORD(v87) = v87 + 1;
            }

            v46 = (a3 + 4 * (3 * v81));
            if ((HIDWORD(v87) & 0x7FFFFFFFu) <= v45)
            {
              physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(&v86, v46);
              v47 = v87;
            }

            else
            {
              v86[v45] = *v46;
              v47 = v87 + 1;
              LODWORD(v87) = v87 + 1;
            }

            v48 = (a3 + 4 * (3 * v81 + 1));
            if ((HIDWORD(v87) & 0x7FFFFFFFu) <= v47)
            {
              physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(&v86, v48);
              v49 = v87;
            }

            else
            {
              v86[v47] = *v48;
              v49 = v87 + 1;
              LODWORD(v87) = v87 + 1;
            }

            v50 = (a3 + 4 * (3 * v81 + 2));
            if ((HIDWORD(v87) & 0x7FFFFFFFu) <= v49)
            {
              physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(&v86, v50);
            }

            else
            {
              v86[v49] = *v50;
              LODWORD(v87) = v87 + 1;
            }

            v80 = 1;
            if ((HIDWORD(v85) & 0x7FFFFFFFu) <= v85)
            {
              physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(&v84, &v80);
              v51 = v85;
            }

            else
            {
              v84[v85] = 1;
              v51 = v85 + 1;
              LODWORD(v85) = v85 + 1;
            }

            if ((HIDWORD(v85) & 0x7FFFFFFFu) <= v51)
            {
              physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(&v84, &v81);
            }

            else
            {
              v84[v51] = v81;
              LODWORD(v85) = v85 + 1;
            }

            ++v43;
            v52 = v82;
          }

          while (v43 < v82);
          v34 += v43;
        }

        else
        {
          v52 = 0;
        }
      }

      else
      {
        v53 = v34;
        if ((HIDWORD(v87) & 0x7FFFFFFFu) <= v87)
        {
          physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(&v86, &v83);
        }

        else
        {
          v86[v87] = v37;
          LODWORD(v87) = v87 + 1;
        }

        if (v83)
        {
          v54 = 0;
          for (i = 0; i < v83; ++i)
          {
            if ((HIDWORD(v87) & 0x7FFFFFFFu) <= v87)
            {
              physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(&v86, &v38[v54]);
            }

            else
            {
              v86[v87] = v38[i];
              LODWORD(v87) = v87 + 1;
            }

            ++v54;
          }
        }

        if ((HIDWORD(v85) & 0x7FFFFFFFu) <= v85)
        {
          physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(&v84, &v82);
          v56 = v82;
        }

        else
        {
          v56 = v82;
          v84[v85] = v82;
          LODWORD(v85) = v85 + 1;
        }

        v34 = v53 + 1;
        if (v56)
        {
          v57 = v53 + 1;
          v58 = 0;
          v59 = 0;
          do
          {
            if ((HIDWORD(v85) & 0x7FFFFFFFu) <= v85)
            {
              physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(&v84, &v41[v58]);
            }

            else
            {
              v84[v85] = v41[v59];
              LODWORD(v85) = v85 + 1;
            }

            ++v59;
            v52 = v82;
            ++v58;
          }

          while (v59 < v82);
          v34 = v57;
        }

        else
        {
          v52 = 0;
        }

        a2 = v78;
      }

      v36 = &v38[v83];
      v35 = &v41[v52];
      ++v33;
    }

    while (v33 < *a1);
  }

  else
  {
    v34 = 0;
  }

  *(a2 + 8) = 0;
  v60 = v77;
  *(v77 + 8) = 0;
  if (&v86 != a2)
  {
    *(a2 + 8) = 0;
    v61 = v87;
    if ((*(a2 + 12) & 0x7FFFFFFFu) < v87)
    {
      physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(a2, v87);
      v61 = v87;
    }

    if (v61)
    {
      v62 = *a2;
      v63 = *a2 + 4 * v61;
      v64 = v86;
      do
      {
        v65 = *v64++;
        *v62++ = v65;
      }

      while (v62 < v63);
      v66 = v87;
    }

    else
    {
      v66 = 0;
    }

    *(a2 + 8) = v66;
  }

  if (&v84 != v60)
  {
    *(v60 + 8) = 0;
    v67 = v85;
    if ((*(v60 + 12) & 0x7FFFFFFFu) < v85)
    {
      physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(v60, v85);
      v67 = v85;
    }

    if (v67)
    {
      v68 = *v60;
      v69 = *v60 + 4 * v67;
      v70 = v84;
      do
      {
        v71 = *v70++;
        *v68++ = v71;
      }

      while (v68 < v69);
      v72 = v85;
    }

    else
    {
      v72 = 0;
    }

    *(v60 + 8) = v72;
  }

  *a1 = v34;
  if ((v85 & 0x8000000000000000) == 0 && (v85 & 0x7FFFFFFF00000000) != 0 && v84 != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  if ((v87 & 0x8000000000000000) == 0 && (v87 & 0x7FFFFFFF00000000) != 0 && v86 != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

LABEL_122:
  if ((v89 & 0x8000000000000000) == 0 && (v89 & 0x7FFFFFFF00000000) != 0)
  {
    if (v88)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }
}

uint64_t extractHullPolygons(unsigned int &,physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>> &,physx::ConvexPolygonsBuilder const&,physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>*,physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>> &)::Local::GetNeighborFace(unsigned int a1, int a2, uint64_t a3, uint64_t a4, int *a5, unsigned int *a6)
{
  v6 = 1;
  v7 = a1;
  v8 = a1;
  while (1)
  {
LABEL_2:
    if (*(a4 + 12 * v8) == a2)
    {
      v9 = 0;
      v10 = 1;
    }

    else
    {
      v9 = *(a4 + 4 * (3 * v8 + 1)) != a2;
      v10 = 2;
    }

    v11 = a3 + 12 * v8;
    v12 = *(v11 + 4 * v9);
    v13 = *(v11 + 4 * v10);
    if ((v12 & 0x20000000) != 0)
    {
      v14 = *(v11 + 4 * v10);
      if ((v13 & 0x20000000) != 0)
      {
        return 0;
      }
    }

    else
    {
      v14 = *(v11 + 4 * v9);
      v12 = *(v11 + 4 * v10);
      if ((v13 & 0x20000000) == 0)
      {
        if (v8 != a1)
        {
          v15 = 0;
          while (1)
          {
            v16 = *(v11 + 4 * v9) & 0x1FFFFFFF;
            if (v16 == a1 && v7 != a1)
            {
              break;
            }

            v18 = v15 | (v16 != v7);
            v15 = 1;
            v9 = v10;
            if (v18)
            {
              if (v16 != v7)
              {
                v7 = v8;
                v8 = v16;
              }

              goto LABEL_2;
            }
          }
        }

        return 0;
      }
    }

    if ((v6 & 1) == 0)
    {
      break;
    }

    v6 = 0;
    v19 = v14 & 0x1FFFFFFF;
    if ((v14 & 0x1FFFFFFF) == a1)
    {
      v20 = v7;
    }

    else
    {
      v20 = v8;
    }

    if (v19 == a1)
    {
      v19 = v8;
    }

    if ((v14 & 0x20000000) == 0)
    {
      v7 = v20;
      v8 = v19;
    }
  }

  *a5 = v12 & 0x1FFFFFFF;
  *a6 = v8;
  return 1;
}

uint64_t physx::shdfnd::Array<Pair,physx::shdfnd::ReflectionAllocator<Pair>>::growAndPushBack(uint64_t result, void *a2)
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
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<Pair>::getName() [T = Pair]";
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
  if (v9)
  {
    v10 = &v8[v9];
    v11 = *v3;
    v12 = v8;
    do
    {
      v13 = *v11++;
      *v12++ = v13;
    }

    while (v12 < v10);
    v14 = *(v3 + 8);
  }

  else
  {
    v14 = 0;
  }

  v8[v14] = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v8;
  ++*(v3 + 8);
  *(v3 + 12) = v5;
  return result;
}

unint64_t physx::shdfnd::Array<Pair,physx::shdfnd::ReflectionAllocator<Pair>>::copy<physx::shdfnd::ReflectionAllocator<Pair>>(unint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 8);
  if (v3)
  {
    *(result + 8) = v3;
    *(result + 12) = v3;
    v5 = 8 * v3;
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<Pair>::getName() [T = Pair]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    result = (*(*(v6 + 24) + 16))(v6 + 24, v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    *v2 = result;
    v8 = *(v2 + 8);
    if (v8)
    {
      v9 = result + 8 * v8;
      v10 = *a2;
      do
      {
        v11 = *v10++;
        *result = v11;
        result += 8;
      }

      while (result < v9);
    }
  }

  else
  {
    *result = 0;
    *(result + 8) = 0;
  }

  return result;
}

uint64_t local::MemBlock<local::QuickHullHalfEdge,false>::getFreeItem(unsigned int *a1)
{
  v2 = a1[2];
  v3 = *a1;
  if (v2 >= v3)
  {
    if (v3)
    {
      v6 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 72 * v3, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/QuickHullConvexHullLib.cpp", 138);
    }

    else
    {
      v6 = 0;
    }

    v9 = v6;
    v7 = a1[1] + 1;
    a1[1] = v7;
    v8 = a1[6];
    if ((a1[7] & 0x7FFFFFFF) <= v8)
    {
      physx::shdfnd::Array<local::QuickHullHalfEdge *,physx::shdfnd::ReflectionAllocator<local::QuickHullHalfEdge *>>::growAndPushBack((a1 + 4), &v9);
      v7 = a1[1];
    }

    else
    {
      *(*(a1 + 2) + 8 * v8) = v6;
      a1[6] = v8 + 1;
    }

    result = *(*(a1 + 2) + 8 * v7);
    a1[2] = 1;
  }

  else
  {
    v4 = *(*(a1 + 2) + 8 * a1[1]);
    a1[2] = v2 + 1;
    return v4 + 72 * v2;
  }

  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<BOOL>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<BOOL>::getName() [T = BOOL]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::Array<physx::ConvexHull::HalfEdge,physx::shdfnd::ReflectionAllocator<physx::ConvexHull::HalfEdge>>::recreate(uint64_t a1, unsigned int a2)
{
  v4 = 4 * a2;
  v5 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v6 = "static const char *physx::shdfnd::ReflectionAllocator<physx::ConvexHull::HalfEdge>::getName() [T = physx::ConvexHull::HalfEdge]";
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
    v11 = result + 4 * v9;
    v12 = result;
    do
    {
      v13 = *v10++;
      *v12++ = v13;
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

uint64_t physx::shdfnd::Array<physx::PxPlane,physx::shdfnd::ReflectionAllocator<physx::PxPlane>>::growAndPushBack(uint64_t result, _OWORD *a2)
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
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxPlane>::getName() [T = physx::PxPlane]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    result = (*(*(v6 + 24) + 16))(v6 + 24, 16 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v3 + 8);
  v10 = &v8[v9];
  v11 = *v3;
  if (v9)
  {
    v12 = *v3;
    v13 = v8;
    do
    {
      v14 = *v12++;
      *v13++ = v14;
    }

    while (v13 < v10);
  }

  *v10 = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && v11)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    LODWORD(v9) = *(v3 + 8);
  }

  *v3 = v8;
  *(v3 + 8) = v9 + 1;
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::shdfnd::Array<physx::ConvexHull::HalfEdge,physx::shdfnd::ReflectionAllocator<physx::ConvexHull::HalfEdge>>::growAndPushBack(uint64_t result, _DWORD *a2)
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
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::ConvexHull::HalfEdge>::getName() [T = physx::ConvexHull::HalfEdge]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    result = (*(*(v6 + 24) + 16))(v6 + 24, 4 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v3 + 8);
  if (v9)
  {
    v10 = &v8[v9];
    v11 = *v3;
    v12 = v8;
    do
    {
      v13 = *v11++;
      *v12++ = v13;
    }

    while (v12 < v10);
    v14 = *(v3 + 8);
  }

  else
  {
    v14 = 0;
  }

  v8[v14] = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v8;
  ++*(v3 + 8);
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::HullTriangleData>::allocate(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v5 = "static const char *physx::shdfnd::ReflectionAllocator<physx::HullTriangleData>::getName() [T = physx::HullTriangleData]";
    }

    else
    {
      v5 = "<allocation names disabled>";
    }

    v6 = *(*(v4 + 24) + 16);

    return v6(v4 + 24, v3, v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexPolygonsBuilder.cpp", a2);
  }

  return result;
}

uint64_t physx::shdfnd::Array<local::QuickHullFace *,physx::shdfnd::ReflectionAllocator<local::QuickHullFace *>>::growAndPushBack(uint64_t result, void *a2)
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
    result = physx::shdfnd::ReflectionAllocator<local::QuickHullFace *>::allocate(8 * v5);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *v3;
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    LODWORD(v7) = *(v3 + 8);
  }

  *v3 = v6;
  *(v3 + 8) = v7 + 1;
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<local::QuickHullFace *>::allocate(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v3 = "static const char *physx::shdfnd::ReflectionAllocator<local::QuickHullFace *>::getName() [T = local::QuickHullFace *]";
    }

    else
    {
      v3 = "<allocation names disabled>";
    }

    v4 = *(*(v2 + 24) + 16);

    return v4(v2 + 24, v1, v3, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  }

  return result;
}

uint64_t physx::shdfnd::Array<local::QuickHullFace *,physx::shdfnd::ReflectionAllocator<local::QuickHullFace *>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    result = physx::shdfnd::ReflectionAllocator<local::QuickHullFace *>::allocate(8 * a2);
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
    v7 = &v4[v5];
    v8 = v4;
    do
    {
      v9 = *v6++;
      *v8++ = v9;
    }

    while (v8 < v7);
    v6 = *v3;
  }

  if ((*(v3 + 12) & 0x80000000) == 0 && v6)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *v3 = v4;
  *(v3 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<local::QuickHullVertex *,physx::shdfnd::ReflectionAllocator<local::QuickHullVertex *>>::recreate(uint64_t a1, unsigned int a2)
{
  v4 = 8 * a2;
  v5 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v6 = "static const char *physx::shdfnd::ReflectionAllocator<local::QuickHullVertex *>::getName() [T = local::QuickHullVertex *]";
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
    v11 = result + 8 * v9;
    v12 = result;
    do
    {
      v13 = *v10++;
      *v12++ = v13;
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

uint64_t physx::shdfnd::Array<local::QuickHullHalfEdge *,physx::shdfnd::ReflectionAllocator<local::QuickHullHalfEdge *>>::recreate(uint64_t a1, unsigned int a2)
{
  v4 = 8 * a2;
  v5 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v6 = "static const char *physx::shdfnd::ReflectionAllocator<local::QuickHullHalfEdge *>::getName() [T = local::QuickHullHalfEdge *]";
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
    v11 = result + 8 * v9;
    v12 = result;
    do
    {
      v13 = *v10++;
      *v12++ = v13;
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

uint64_t physx::shdfnd::Array<local::QuickHullVertex *,physx::shdfnd::ReflectionAllocator<local::QuickHullVertex *>>::growAndPushBack(uint64_t result, void *a2)
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
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<local::QuickHullVertex *>::getName() [T = local::QuickHullVertex *]";
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

uint64_t physx::shdfnd::Array<local::QuickHullHalfEdge *,physx::shdfnd::ReflectionAllocator<local::QuickHullHalfEdge *>>::growAndPushBack(uint64_t result, void *a2)
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
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<local::QuickHullHalfEdge *>::getName() [T = local::QuickHullHalfEdge *]";
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

uint64_t physx::shdfnd::Array<local::ExpandPoint,physx::shdfnd::ReflectionAllocator<local::ExpandPoint>>::growAndPushBack(uint64_t result, uint64_t a2)
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
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<local::ExpandPoint>::getName() [T = local::ExpandPoint]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    result = (*(*(v6 + 24) + 16))(v6 + 24, 60 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v3 + 8);
  if (v9)
  {
    v10 = v8 + 60 * v9;
    v11 = *v3;
    v12 = v8;
    do
    {
      for (i = 0; i != 48; i += 16)
      {
        *(v12 + i) = *(v11 + i);
      }

      v14 = *(v11 + 48);
      *(v12 + 56) = *(v11 + 56);
      *(v12 + 48) = v14;
      v12 += 60;
      v11 += 60;
    }

    while (v12 < v10);
    v15 = *(v3 + 8);
  }

  else
  {
    v15 = 0;
  }

  v16 = 0;
  v17 = v8 + 60 * v15;
  do
  {
    *(v17 + v16) = *(a2 + v16);
    v16 += 16;
  }

  while (v16 != 48);
  v18 = *(a2 + 48);
  *(v17 + 56) = *(a2 + 56);
  *(v17 + 48) = v18;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v8;
  ++*(v3 + 8);
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::shdfnd::Array<local::ExpandPoint,physx::shdfnd::ReflectionAllocator<local::ExpandPoint>>::recreate(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = 60 * a2;
  v5 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance, a2))
  {
    v6 = "static const char *physx::shdfnd::ReflectionAllocator<local::ExpandPoint>::getName() [T = local::ExpandPoint]";
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
    v11 = result + 60 * v9;
    v12 = result;
    do
    {
      for (i = 0; i != 48; i += 16)
      {
        *(v12 + i) = *(v10 + i);
      }

      v14 = *(v10 + 48);
      *(v12 + 56) = *(v10 + 56);
      *(v12 + 48) = v14;
      v12 += 60;
      v10 += 60;
    }

    while (v12 < v11);
    v10 = *a1;
  }

  if ((*(a1 + 3) & 0x80000000) == 0 && v10)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *a1 = v8;
  *(a1 + 3) = v2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxPlane,physx::shdfnd::ReflectionAllocator<physx::PxPlane>>::recreate(uint64_t a1, unsigned int a2)
{
  v4 = 16 * a2;
  v5 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v6 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxPlane>::getName() [T = physx::PxPlane]";
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
    v11 = result + 16 * v9;
    v12 = *a1;
    v13 = result;
    do
    {
      v14 = *v12++;
      *v13++ = v14;
    }

    while (v13 < v11);
  }

  if ((*(a1 + 12) & 0x80000000) == 0 && v10)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *a1 = v8;
  *(a1 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::Foundation::Foundation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F5D233A0;
  *(a1 + 8) = a3;
  *(a1 + 160) = 1;
  *(a1 + 168) = a1 + 32;
  *(a1 + 176) = 0x1000000000;
  *(a1 + 16) = a2;
  *(a1 + 24) = &unk_1F5D23440;
  *(a1 + 184) = a3;
  *(a1 + 192) = a2;
  *(a1 + 336) = 1;
  *(a1 + 208) = a2;
  *(a1 + 344) = a1 + 208;
  *(a1 + 352) = 0x1000000001;
  *(a1 + 200) = &unk_1F5D234D0;
  *(a1 + 360) = 0;
  *(a1 + 364) = -1;
  v4 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 72, &str_183, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsMutex.h", 138);
  *(a1 + 368) = v4;
  physx::shdfnd::MutexImpl::MutexImpl(v4);
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0;
  *(a1 + 416) = -3233808384;
  *(a1 + 424) = 0;
  v5 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 1216, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsHashInternals.h", 372);
  v6 = v5;
  v7 = v5 + 16;
  *&v8 = -1;
  *(&v8 + 1) = -1;
  *v5 = v8;
  v5[1] = v8;
  v9 = v5 + 28;
  v5[2] = v8;
  v5[3] = v8;
  v5[4] = v8;
  v5[5] = v8;
  v5[6] = v8;
  v5[7] = v8;
  v5[8] = v8;
  v5[9] = v8;
  v5[10] = v8;
  v5[11] = v8;
  v5[12] = v8;
  v5[13] = v8;
  v5[14] = v8;
  v5[15] = v8;
  if (*(a1 + 428))
  {
    v10 = 0;
    v11 = *(a1 + 384);
    do
    {
      v12 = *(v11 + 16 * v10);
      v13 = ~(*(v11 + 16 * v10) << 32) + *(v11 + 16 * v10);
      v14 = (v13 ^ (v13 >> 22)) + ~((v13 ^ (v13 >> 22)) << 13);
      v15 = (9 * (v14 ^ (v14 >> 8))) ^ ((9 * (v14 ^ (v14 >> 8))) >> 15);
      v16 = (((v15 + ~(v15 << 27)) >> 31) ^ (v15 - 1)) & 0x3F;
      *(v7 + v10) = *(v5 + v16);
      v7[v10 + 12] = v12;
      *(v5 + v16) = v10++;
    }

    while (v10 < *(a1 + 428));
  }

  if (*(a1 + 376))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(a1 + 392) = v7;
  *(a1 + 400) = v6;
  *(a1 + 376) = v6;
  *(a1 + 384) = v9;
  *(a1 + 408) = 0x4000000030;
  if (*(a1 + 420) == -1)
  {
    *(a1 + 420) = 0;
  }

  v17 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 72, &str_183, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsMutex.h", 138);
  *(a1 + 432) = v17;
  physx::shdfnd::MutexImpl::MutexImpl(v17);
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  v18 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 72, &str_183, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsMutex.h", 138);
  *(a1 + 456) = v18;
  physx::shdfnd::MutexImpl::MutexImpl(v18);
  v19 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 72, &str_183, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsMutex.h", 138);
  *(a1 + 464) = v19;
  physx::shdfnd::MutexImpl::MutexImpl(v19);
  return a1;
}

void physx::shdfnd::Foundation::~Foundation(physx::shdfnd::Foundation *this)
{
  *this = &unk_1F5D233A0;
  v2 = *(this + 112);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(this + 55) + 8 * i);
      if (v4)
      {
        do
        {
          v5 = *v4;
          (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
          v4 = v5;
        }

        while (v5);
        v2 = *(this + 112);
      }
    }
  }

  v7 = 0;
  physx::shdfnd::Array<physx::shdfnd::TempAllocatorChunk *,physx::shdfnd::Allocator>::resize(this + 440, 0, &v7);
  physx::shdfnd::Array<physx::shdfnd::TempAllocatorChunk *,physx::shdfnd::Allocator>::recreate(this + 440, *(this + 112));
  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this + 58);
  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this + 57);
  v6 = *(this + 113);
  if ((v6 & 0x80000000) == 0 && (v6 & 0x7FFFFFFF) != 0 && *(this + 55))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this + 54);
  if (*(this + 47))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this + 46);
  physx::shdfnd::BroadcastingErrorCallback::~BroadcastingErrorCallback((this + 200));
  physx::shdfnd::BroadcastingAllocator::~BroadcastingAllocator((this + 24));
}

{
  physx::shdfnd::Foundation::~Foundation(this);
  if (v1)
  {
    v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v2();
  }
}

void physx::shdfnd::BroadcastingErrorCallback::~BroadcastingErrorCallback(physx::shdfnd::BroadcastingErrorCallback *this)
{
  *(this + 38) = 0;
  *this = &unk_1F5D23538;
  v1 = *(this + 39);
  if ((v1 & 0x80000000) == 0 && (v1 & 0x7FFFFFFF) != 0)
  {
    v2 = *(this + 18);
    if (v2 == (this + 8))
    {
      *(this + 136) = 0;
    }

    else if (v2)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }
}

{
  physx::shdfnd::BroadcastingErrorCallback::~BroadcastingErrorCallback(this);

  JUMPOUT(0x1E6906520);
}

void physx::shdfnd::BroadcastingAllocator::~BroadcastingAllocator(physx::shdfnd::BroadcastingAllocator *this)
{
  *(this + 38) = 0;
  *this = &unk_1F5D234A0;
  v1 = *(this + 39);
  if ((v1 & 0x80000000) == 0 && (v1 & 0x7FFFFFFF) != 0)
  {
    v2 = *(this + 18);
    if (v2 == (this + 8))
    {
      *(this + 136) = 0;
    }

    else if (v2)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }
}

{
  physx::shdfnd::BroadcastingAllocator::~BroadcastingAllocator(this);

  JUMPOUT(0x1E6906520);
}

uint64_t physx::shdfnd::Foundation::errorImpl(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char *__format, va_list a6)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*(result + 364) & a2) != 0)
  {
    v11 = result;
    if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
    {
      pthread_mutex_lock(*(result + 368));
    }

    result = vsnprintf(__str, 0x400uLL, __format, a6);
    if (*(v11 + 352))
    {
      v12 = 0;
      do
      {
        v13 = *(*(v11 + 344) + 8 * v12);
        result = (*(*v13 + 16))(v13, a2, __str, a3, a4);
        ++v12;
      }

      while (v12 < *(v11 + 352));
    }

    if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
    {
      return pthread_mutex_unlock(*(v11 + 368));
    }
  }

  return result;
}

uint64_t physx::shdfnd::BroadcastingErrorCallback::reportError(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(result + 152))
  {
    v9 = result;
    v10 = 0;
    do
    {
      v11 = *(*(v9 + 144) + 8 * v10);
      result = (*(*v11 + 16))(v11, a2, a3, a4, a5);
      ++v10;
    }

    while (v10 < *(v9 + 152));
  }

  return result;
}

uint64_t physx::shdfnd::Foundation::createInstance(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 != 67174656)
  {
    operator new[]();
  }

  if (physx::shdfnd::Foundation::mInstance)
  {
    (*(*a2 + 16))(a2, 8, "Foundation object exists already. Only one instance per process can be created.", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/src/PsFoundation.cpp", 165);
    return 0;
  }

  v6 = (*(*a3 + 16))(a3, 472, "Foundation", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/src/PsFoundation.cpp", 141);
  physx::shdfnd::Foundation::mInstance = v6;
  if (!v6)
  {
    (*(*a2 + 16))(a2, 32, "Memory allocation for foundation object failed.", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/src/PsFoundation.cpp", 158);
    return 0;
  }

  physx::shdfnd::Foundation::Foundation(v6, a2, a3);
  physx::shdfnd::Foundation::mRefCount = 1;
  v7 = physx::shdfnd::Foundation::mWarnOnceTimestap + 1;
  if (physx::shdfnd::Foundation::mWarnOnceTimestap == -1)
  {
    v7 = 1;
  }

  physx::shdfnd::Foundation::mWarnOnceTimestap = v7;
  return physx::shdfnd::Foundation::mInstance;
}

uint64_t physx::shdfnd::Foundation::incRefCount(physx::shdfnd::Foundation *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (!physx::shdfnd::Foundation::mRefCount)
  {
    return physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/src/PsFoundation.cpp", 201, "Foundation: Invalid registration detected.", a6, a7, a8, a9);
  }

  ++physx::shdfnd::Foundation::mRefCount;
  return result;
}

uint64_t physx::shdfnd::Foundation::decRefCount(physx::shdfnd::Foundation *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (!physx::shdfnd::Foundation::mRefCount)
  {
    return physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/src/PsFoundation.cpp", 216, "Foundation: Invalid deregistration detected.", a6, a7, a8, a9);
  }

  --physx::shdfnd::Foundation::mRefCount;
  return result;
}

uint64_t physx::shdfnd::Foundation::release(physx::shdfnd::Foundation *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = physx::shdfnd::Foundation::mInstance;
  if (physx::shdfnd::Foundation::mRefCount == 1)
  {
    v10 = (*(*physx::shdfnd::Foundation::mInstance + 32))();
    (*(*physx::shdfnd::Foundation::mInstance + 56))(physx::shdfnd::Foundation::mInstance);
    result = (*(*v10 + 24))(v10, physx::shdfnd::Foundation::mInstance);
    physx::shdfnd::Foundation::mInstance = 0;
    physx::shdfnd::Foundation::mRefCount = 0;
  }

  else
  {

    return physx::shdfnd::Foundation::error(v9, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/src/PsFoundation.cpp", 185, "Foundation destruction failed due to pending module references. Close/release all depending modules first.", a6, a7, a8, a9);
  }

  return result;
}

float physx::PxShortestRotation@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *a2;
  v6 = a2[1];
  v7 = a1[2];
  v8 = a2[2];
  v9 = ((v3 * v6) + (*a1 * *a2)) + (v7 * v8);
  v10 = -v3;
  if (v9 <= -1.0)
  {
    v14 = fabsf(v4);
    v13 = 0.0;
    v15 = v14 < 0.1;
    v12 = 0.0;
    if (!v15)
    {
      v10 = 0.0;
      v7 = -*a1;
      v12 = a1[1];
    }
  }

  else
  {
    v10 = (v5 * v10) + (v4 * v6);
    v11 = -(v7 * v6);
    v7 = (v8 * -*a1) + (v7 * v5);
    v12 = v11 + (v3 * v8);
    v13 = v9 + 1.0;
  }

  v16 = sqrtf((((v7 * v7) + (v12 * v12)) + (v10 * v10)) + (v13 * v13));
  result = v10 / v16;
  *a3 = v12 / v16;
  a3[1] = v7 / v16;
  a3[2] = result;
  a3[3] = v13 / v16;
  return result;
}

unint64_t physx::PxDiagonalize@<X0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  v79 = *MEMORY[0x1E69E9840];
  v74 = a1[1];
  v75 = *a1;
  v3 = a1[3];
  v73 = a1[2];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v9 = 0.0;
  v10 = 24;
  v11 = 1.0;
  v12 = 0.0;
  v13 = 0.0;
  do
  {
    v14 = v12 * (v12 + v12);
    v15 = v9 * (v9 + v9);
    v16 = v12 * (v13 + v13);
    v17 = v9 * (v13 + v13);
    v18 = v11 * (v13 + v13);
    v19 = v9 * (v12 + v12);
    v20 = v11 * (v12 + v12);
    v21 = v11 * (v9 + v9);
    v22 = (1.0 - v14) - v15;
    v23 = v21 + v16;
    v24 = v17 - v20;
    v25 = v16 - v21;
    v26 = 1.0 - (v13 * (v13 + v13));
    v27 = v26 - v15;
    v28 = v19 + v18;
    v29 = v20 + v17;
    v30 = v19 - v18;
    v31 = v26 - v14;
    v32 = (v73 * (v17 - v20)) + ((v75 * v22) + (v74 * v23));
    v33 = (v73 * (v19 + v18)) + ((v75 * v25) + (v74 * v27));
    v34 = ((v75 * v29) + (v74 * v30)) + (v73 * v31);
    v35 = (v5 * v24) + ((v3 * v22) + (v4 * v23));
    v36 = (v5 * v28) + ((v3 * v25) + (v4 * v27));
    v37 = ((v3 * v29) + (v4 * v30)) + (v5 * v31);
    v38 = (v8 * v24) + ((v6 * v22) + (v7 * v23));
    v39 = (v8 * v28) + ((v6 * v25) + (v7 * v27));
    v40 = ((v6 * v29) + (v7 * v30)) + (v8 * v31);
    v41 = (v24 * v38) + ((v22 * v32) + (v23 * v35));
    v42 = (v24 * v39) + ((v22 * v33) + (v23 * v36));
    v43 = (v24 * v40) + ((v22 * v34) + (v23 * v37));
    v44 = (v28 * v40) + ((v25 * v34) + (v27 * v37));
    v45 = fabsf(v44);
    v46 = fabsf(v43);
    v47 = fabsf(v42);
    if (v46 > v47)
    {
      v48 = 1;
    }

    else
    {
      v48 = 2;
    }

    v49 = v45 <= v47 || v45 <= v46;
    v50 = (v28 * v38) + ((v25 * v32) + (v27 * v35));
    v51 = (v28 * v39) + ((v25 * v33) + (v27 * v36));
    v52 = (v31 * v38) + ((v29 * v32) + (v30 * v35));
    v53 = (v31 * v39) + ((v29 * v33) + (v30 * v36));
    v54 = (v31 * v40) + ((v29 * v34) + (v30 * v37));
    *&v76[1] = v42;
    *&v76[2] = v43;
    *&v76[3] = v50;
    *&v76[4] = v51;
    *&v76[5] = v44;
    *&v76[6] = v52;
    *v76 = v41;
    *&v76[7] = v53;
    *&v76[8] = v54;
    if (!v49)
    {
      v48 = 0;
    }

    result = (v48 + (v48 >> 1) + 1) & 3;
    v56 = &v76[3 * result];
    v57 = *&v56[(v48 + (v48 >> 1) + 1 + (((v48 + (v48 >> 1) + 1) & 3) >> 1) + 1) & 3];
    if (v57 == 0.0)
    {
      break;
    }

    v58 = *&v56[result];
    result = &v76[3 * ((v48 + (v48 >> 1) + 1 + (((v48 + (v48 >> 1) + 1) & 3) >> 1) + 1) & 3)];
    v59 = *(result + 4 * ((v48 + (v48 >> 1) + 1 + (((v48 + (v48 >> 1) + 1) & 3) >> 1) + 1) & 3));
    v60 = v57 + v57;
    if (vabds_f32(v58, v59) > (fabsf(v60) * 2000000.0))
    {
      break;
    }

    v61 = (v58 - v59) / v60;
    v62 = fabsf(v61);
    if (v62 <= 1000.0)
    {
      v65 = sqrtf((v61 * v61) + 1.0);
      v66 = 1.0 / sqrtf(((1.0 / (v62 + v65)) * (1.0 / (v62 + v65))) + 1.0);
      v67 = sqrtf((1.0 - v66) * 0.5);
      if (v61 < 0.0)
      {
        v67 = -v67;
      }

      v64 = sqrtf((v66 + 1.0) * 0.5);
      v78 = 0.0;
      v77 = 0;
      *(&v77 + v48) = v67;
    }

    else
    {
      v63 = v61 * 4.0;
      v64 = 1.0;
      v78 = 0.0;
      v77 = 0;
      *(&v77 + v48) = 1.0 / v63;
    }

    v68 = (((v13 * v64) + (v11 * *&v77)) + (v12 * v78)) - (*(&v77 + 1) * v9);
    v69 = (((v12 * v64) + (v11 * *(&v77 + 1))) + (v9 * *&v77)) - (v78 * v13);
    v70 = (((v9 * v64) + (v11 * v78)) + (v13 * *(&v77 + 1))) - (*&v77 * v12);
    v71 = (((v11 * v64) - (v13 * *&v77)) - (v12 * *(&v77 + 1))) - (v9 * v78);
    v72 = sqrtf((((v69 * v69) + (v68 * v68)) + (v70 * v70)) + (v71 * v71));
    v13 = v68 / v72;
    v12 = v69 / v72;
    v9 = v70 / v72;
    v11 = v71 / v72;
    --v10;
  }

  while (v10);
  *a2 = v13;
  a2[1] = v12;
  a2[2] = v9;
  a2[3] = v11;
  *a3 = v41;
  a3[1] = v51;
  a3[2] = v54;
  return result;
}

float *physx::shdfnd::optimizeBoundingBox@<X0>(float *result@<X0>, float *a2@<X8>)
{
  v2 = ((result[1] * result[1]) + (*result * *result)) + (result[2] * result[2]);
  v3 = ((result[4] * result[4]) + (result[3] * result[3])) + (result[5] * result[5]);
  v4 = ((result[7] * result[7]) + (result[6] * result[6])) + (result[8] * result[8]);
  *a2 = v2;
  a2[1] = v3;
  a2[2] = v4;
  v5 = v3 > v2;
  v6 = v3 <= v2;
  if (v3 <= v2)
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  if (v4 > a2[v3 <= v2])
  {
    v6 = 2;
  }

  v8 = a2[v3 > v2];
  v9 = a2[v6];
  if (v8 >= v9)
  {
    v10 = v6;
  }

  else
  {
    v10 = v5;
  }

  if (v8 >= v9)
  {
    v11 = v5;
  }

  else
  {
    v11 = v6;
  }

  v12 = v7 - v6;
  v13 = a2[v11];
  v14 = 1.0 / sqrtf(v13);
  v15 = v13 * v14;
  v16 = &result[3 * v11];
  v17 = v14 * v16[1].f32[0];
  v16[1].f32[0] = v17;
  v18 = &result[3 * v10];
  v19 = v18[1].f32[0];
  v20 = &result[3 * v12];
  v21 = vmul_n_f32(*v16, v14);
  *v16 = v21;
  v22 = (vmuls_lane_f32(v20->f32[1], v21, 1) + (v21.f32[0] * v20->f32[0])) + (v17 * v20[1].f32[0]);
  v23 = *v18;
  v24 = (COERCE_FLOAT(vmul_f32(v21, *v18).i32[1]) + (v21.f32[0] * COERCE_FLOAT(*v18))) + (v17 * v19);
  a2[v11] = v15 + (fabsf(v24) + fabsf(v22));
  *v18 = vsub_f32(v23, vmul_n_f32(v21, v24));
  v18[1].f32[0] = v19 - (v17 * v24);
  v25 = vsub_f32(*v20, vmul_n_f32(v21, v22));
  *v20 = v25;
  v26 = v20[1].f32[0] - (v17 * v22);
  v20[1].f32[0] = v26;
  v28 = v18->f32[0];
  v27 = v18->f32[1];
  v29 = v18[1].f32[0];
  v30 = sqrtf(((v27 * v27) + (v28 * v28)) + (v29 * v29));
  if (v30 <= 0.0)
  {
    v31 = v25.f32[1];
  }

  else
  {
    v28 = v28 * (1.0 / v30);
    v27 = v27 * (1.0 / v30);
    v18->f32[0] = v28;
    v18->f32[1] = v27;
    v29 = v29 * (1.0 / v30);
    v18[1].f32[0] = v29;
    v25.i32[0] = v20->i32[0];
    v31 = v20->f32[1];
    v26 = v20[1].f32[0];
  }

  v32 = ((v31 * v27) + (v28 * v25.f32[0])) + (v29 * v26);
  a2[v10] = v30 + fabsf(v32);
  v33 = v27 * v32;
  v34 = v25.f32[0] - (v28 * v32);
  v35 = v31 - v33;
  v20->f32[0] = v34;
  v20->f32[1] = v35;
  v36 = v26 - (v29 * v32);
  v20[1].f32[0] = v36;
  v37 = sqrtf(((v35 * v35) + (v34 * v34)) + (v36 * v36));
  if (v37 > 0.0)
  {
    v20->f32[0] = v34 * (1.0 / v37);
    v20->f32[1] = v35 * (1.0 / v37);
    v20[1].f32[0] = v36 * (1.0 / v37);
  }

  a2[v12] = v37;
  return result;
}

void physx::shdfnd::slerp(float32x2_t *a1@<X0>, float32x2_t *a2@<X1>, float32x2_t *a3@<X8>, float a4@<S0>)
{
  v7 = *a1;
  _D3 = a1[1];
  v8 = a2[1];
  v9 = vmul_f32(*a1, *a2);
  _S1 = v8.i32[1];
  __asm { FMLA            S11, S1, V3.S[1] }

  if (_S11 >= 0.0)
  {
    v16 = _S11;
  }

  else
  {
    v16 = -(((v9.f32[1] + (COERCE_FLOAT(*a1) * COERCE_FLOAT(*a2))) + (_D3.f32[0] * v8.f32[0])) + (COERCE_FLOAT(HIDWORD(*&a1[1])) * v8.f32[1]));
  }

  v17 = 1.0 - (v16 * v16);
  if (v17 >= 1.0e-16)
  {
    v18 = sqrtf(v17);
    v24 = *a1;
    v25 = *a2;
    v26 = a1[1];
    v27 = a2[1];
    v19 = atan2f(v18, v16);
    v20 = 1.0 / v18;
    v23 = v20 * sinf((1.0 - a4) * v19);
    v21 = v20 * sinf(v19 * a4);
    v22 = -v21;
    if (_S11 >= 0.0)
    {
      v22 = v21;
    }

    v7 = vadd_f32(vmul_n_f32(v24, v23), vmul_n_f32(v25, v22));
    _D3 = vadd_f32(vmul_n_f32(v26, v23), vmul_n_f32(v27, v22));
  }

  *a3 = v7;
  a3[1] = _D3;
}

uint64_t physx::shdfnd::BroadcastingAllocator::allocate(physx::shdfnd::BroadcastingAllocator *this, uint64_t a2, const char *a3, const char *a4, uint64_t a5)
{
  v10 = (*(**(this + 20) + 16))(*(this + 20));
  v11 = v10;
  if (v10)
  {
    if ((v10 & 0xF) != 0)
    {
      (*(**(this + 21) + 16))(*(this + 21), 64, "Allocations must be 16-byte aligned.", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsBroadcast.h", 205);
      return 0;
    }

    else if (*(this + 38))
    {
      v12 = 0;
      do
      {
        v13 = *(*(this + 18) + 8 * v12);
        (**v13)(v13, a2, a3, a4, a5, v11);
        ++v12;
      }

      while (v12 < *(this + 38));
    }
  }

  else
  {
    (*(**(this + 21) + 16))(*(this + 21), 64, "User allocator returned NULL.", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsBroadcast.h", 199);
  }

  return v11;
}

uint64_t physx::shdfnd::BroadcastingAllocator::deallocate(physx::shdfnd::BroadcastingAllocator *this, void *a2)
{
  if (*(this + 38))
  {
    v4 = 0;
    do
    {
      v5 = *(*(this + 18) + 8 * v4);
      (*(*v5 + 8))(v5, a2);
      ++v4;
    }

    while (v4 < *(this + 38));
  }

  v6 = *(**(this + 20) + 24);

  return v6();
}

uint64_t physx::shdfnd::Array<physx::shdfnd::TempAllocatorChunk *,physx::shdfnd::Allocator>::resize(uint64_t result, unsigned int a2, uint64_t *a3)
{
  v5 = result;
  if ((*(result + 12) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<physx::shdfnd::TempAllocatorChunk *,physx::shdfnd::Allocator>::recreate(result, a2);
  }

  v6 = *(v5 + 8);
  if (v6 < a2)
  {
    v7 = 0;
    v8 = (*v5 + 8 * v6 + 8);
    v9 = *v5 + 8 * a2;
    if (v8 > v9)
    {
      v9 = *v5 + 8 * v6 + 8;
    }

    v10 = *a3;
    v11 = (v9 + ~*v5 - 8 * v6) >> 3;
    v12 = vdupq_n_s64(v11);
    v13 = (v11 + 2) & 0x3FFFFFFFFFFFFFFELL;
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v7), xmmword_1E3049620)));
      if (v14.i8[0])
      {
        *(v8 - 1) = v10;
      }

      if (v14.i8[4])
      {
        *v8 = v10;
      }

      v7 += 2;
      v8 += 2;
    }

    while (v13 != v7);
  }

  *(v5 + 8) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::shdfnd::TempAllocatorChunk *,physx::shdfnd::Allocator>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 8 * a2, &str_183, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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
    v7 = &v4[v5];
    v8 = v4;
    do
    {
      v9 = *v6++;
      *v8++ = v9;
    }

    while (v8 < v7);
    v6 = *v3;
  }

  if ((*(v3 + 12) & 0x80000000) == 0 && v6)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v4;
  *(v3 + 12) = a2;
  return result;
}

pthread_mutex_t *physx::shdfnd::MutexImpl::MutexImpl(pthread_mutex_t *this)
{
  v4 = *MEMORY[0x1E69E9840];
  pthread_mutexattr_init(&v3);
  pthread_mutexattr_settype(&v3, 2);
  pthread_mutexattr_setprotocol(&v3, 1);
  pthread_mutex_init(this, &v3);
  pthread_mutexattr_destroy(&v3);
  return this;
}

physx::shdfnd::ReadWriteLock *physx::shdfnd::ReadWriteLock::ReadWriteLock(physx::shdfnd::ReadWriteLock *this)
{
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    v2 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 16, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/src/unix/PsUnixMutex.cpp", 202);
    *this = v2;
    v3 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v4 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>::getName() [T = physx::shdfnd::MutexImpl]";
    }

    else
    {
      v4 = "<allocation names disabled>";
    }

    v5 = (*(*(v3 + 24) + 16))(v3 + 24, 72, v4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsMutex.h", 138);
    *v2 = v5;
    physx::shdfnd::MutexImpl::MutexImpl(v5);
    *(*this + 8) = 0;
  }

  else
  {
    *this = 0;
  }

  return this;
}

void physx::shdfnd::ReadWriteLock::~ReadWriteLock(pthread_mutex_t ***this)
{
  v2 = *this;
  if (v2)
  {
    physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(v2);
    if (*this)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }
}

pthread_mutex_t ***physx::shdfnd::ReadWriteLock::lockReader(pthread_mutex_t ***this, int a2)
{
  v2 = *this;
  if (*this)
  {
    if (a2)
    {
      v3 = this;
      if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
      {
        this = pthread_mutex_lock(*v2);
        v2 = *v3;
      }

      atomic_fetch_add(v2 + 2, 1u);
      if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
      {
        v4 = **v3;

        return pthread_mutex_unlock(v4);
      }
    }

    else
    {
      atomic_fetch_add(v2 + 2, 1u);
    }
  }

  return this;
}

uint64_t *physx::shdfnd::ReadWriteLock::lockWriter(uint64_t *this)
{
  v1 = *this;
  if (*this)
  {
    v2 = this;
    if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
    {
      this = pthread_mutex_lock(*v1);
      v1 = *v2;
    }

      ;
    }
  }

  return this;
}

void *physx::shdfnd::SListImpl::pop(physx::shdfnd::SListImpl *this)
{
  pthread_mutex_lock((this + 8));
  v2 = *this;
  if (*this)
  {
    *this = *v2;
  }

  pthread_mutex_unlock((this + 8));
  return v2;
}

uint64_t physx::shdfnd::SyncImpl::set(physx::shdfnd::SyncImpl *this)
{
  pthread_mutex_lock(this);
  if ((*(this + 116) & 1) == 0)
  {
    *(this + 116) = 1;
    ++*(this + 28);
    pthread_cond_broadcast((this + 64));
  }

  return pthread_mutex_unlock(this);
}

BOOL physx::shdfnd::SyncImpl::wait(physx::shdfnd::SyncImpl *this, unsigned int a2)
{
  pthread_mutex_lock(this);
  v4 = *(this + 28);
  if ((*(this + 116) & 1) == 0)
  {
    if (a2 == -1)
    {
        ;
      }
    }

    else
    {
      gettimeofday(&v8, 0);
      v6 = v8.tv_usec + 1000 * (a2 % 0x3E8);
      v9.tv_sec = v8.tv_sec + a2 / 0x3E8uLL + v6 / 0xF4240uLL;
      v9.tv_nsec = 1000 * (v6 % 0xF4240);
        ;
      }
    }
  }

  v5 = (*(this + 116) & 1) != 0 || v4 != *(this + 28);
  pthread_mutex_unlock(this);
  return v5;
}

void *physx::shdfnd::TempAllocator::allocate(physx::shdfnd::TempAllocator *this, uint64_t a2, const char *a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v4 = 31 - __clz(a2 + 15);
  if (v4 <= 8)
  {
    v5 = 8;
  }

  else
  {
    v5 = v4;
  }

  if (v4 > 0x10)
  {
    v15 = a2 + 16;
    if (v15)
    {
      v13 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v15, "NonTrackedAlloc", a3, a4);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v6 = physx::shdfnd::Foundation::mInstance;
    if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (v7 = physx::shdfnd::Foundation::mInstance, (physx::shdfnd::g_isLockingEnabled))
    {
      pthread_mutex_lock(*(physx::shdfnd::Foundation::mInstance + 456));
      v7 = physx::shdfnd::Foundation::mInstance;
    }

    v8 = *(v7 + 440);
    v9 = v8 + 8 * v5;
    v10 = (v9 - 64);
    v11 = v9 - 40;
    if (v11 >= v8 + 8 * *(v7 + 448))
    {
      v11 = v8 + 8 * *(v7 + 448);
    }

    if (v10 >= v11)
    {
LABEL_15:
      v13 = (*(*(v7 + 24) + 16))();
    }

    else
    {
      v12 = v8 + 8 * v5 - 64;
      while (1)
      {
        v13 = *v10;
        if (*v10)
        {
          break;
        }

        ++v10;
        v12 += 8;
        if (v10 >= v11)
        {
          goto LABEL_15;
        }
      }

      *v10 = *v13;
      LODWORD(v5) = ((v12 - *(physx::shdfnd::Foundation::mInstance + 440)) >> 3) + 8;
    }

    if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
    {
      pthread_mutex_unlock(*(v6 + 456));
    }
  }

  *v13 = v5;
  return v13 + 2;
}

void physx::shdfnd::TempAllocator::deallocate(physx::shdfnd::TempAllocator *this, _DWORD *a2)
{
  if (a2)
  {
    v2 = a2 - 4;
    v3 = *(a2 - 4);
    v4 = physx::shdfnd::Foundation::mInstance;
    if (v3 < 0x11)
    {
      if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (v8 = physx::shdfnd::Foundation::mInstance, (physx::shdfnd::g_isLockingEnabled))
      {
        pthread_mutex_lock(*(physx::shdfnd::Foundation::mInstance + 456));
        v8 = physx::shdfnd::Foundation::mInstance;
      }

      v9 = v3 - 8;
      if (*(v8 + 448) <= v3 - 8)
      {
        v10 = 0;
        physx::shdfnd::Array<physx::shdfnd::TempAllocatorChunk *,physx::shdfnd::Allocator>::resize(v8 + 440, v3 - 7, &v10);
        v8 = physx::shdfnd::Foundation::mInstance;
      }

      *v2 = *(*(v8 + 440) + 8 * v9);
      *(*(physx::shdfnd::Foundation::mInstance + 440) + 8 * v9) = v2;
      if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
      {
        pthread_mutex_unlock(*(v4 + 456));
      }
    }

    else
    {
      v5 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);
      v6 = physx::shdfnd::Foundation::mInstance + 24;
      v7 = (a2 - 4);

      v5(v6, v7);
    }
  }
}

uint64_t physx::NpActor::exportExtraData(uint64_t *a1, uint64_t a2)
{
  v4 = (*(*a2 + 8))(a2);
  v5 = a1[1];
  if (!v5)
  {
    goto LABEL_24;
  }

  v6 = *(v5 + 80);
  if (v6)
  {
    v7 = v4;
    v8 = 0;
    v9 = 8;
    v10 = v6;
    do
    {
      v8 += (*(*v7 + 16))(v7, *(*(a1[1] + 72) + v9)) ^ 1;
      v9 += 16;
      --v10;
    }

    while (v10);
    if (v8)
    {
      v11 = physx::NpFactory::acquireConnectorArray(physx::NpFactory::mInstance);
      v5 = v11;
      if (v8 < v6)
      {
        if ((*&v11[1].__opaque[12] & 0x7FFFFFFFu) < v6 - v8)
        {
          physx::shdfnd::Array<physx::NpConnector,physx::shdfnd::InlineAllocator<64u,physx::shdfnd::ReflectionAllocator<physx::NpConnector>>>::recreate(v11, v6 - v8);
        }

        v12 = 0;
        do
        {
          v13 = *(a1[1] + 72) + v12;
          if ((*(*v7 + 16))(v7, *(v13 + 8)))
          {
            v14 = *(v5 + 80);
            if ((*(v5 + 84) & 0x7FFFFFFFu) <= v14)
            {
              physx::shdfnd::Array<physx::NpConnector,physx::shdfnd::InlineAllocator<64u,physx::shdfnd::ReflectionAllocator<physx::NpConnector>>>::growAndPushBack(v5, v13);
            }

            else
            {
              v15 = *(v5 + 72) + 16 * v14;
              *v15 = *v13;
              *(v15 + 8) = *(v13 + 8);
              *(v5 + 80) = v14 + 1;
            }
          }

          v12 += 16;
          --v6;
        }

        while (v6);
      }

      v16 = 0;
      goto LABEL_18;
    }

    v5 = a1[1];
  }

  v16 = 1;
LABEL_18:
  (*(*a2 + 24))(a2, 16);
  (*(*a2 + 16))(a2, v5, 88);
  if ((*(v5 + 64) & 1) == 0 && *(v5 + 72) && *(v5 + 80) | *(v5 + 84) & 0x7FFFFFFF)
  {
    (*(*a2 + 16))(a2);
  }

  if ((v16 & 1) == 0)
  {
    physx::NpFactory::releaseConnectorArray(physx::NpFactory::mInstance, v5);
  }

LABEL_24:
  v17 = *a1;
  v18 = *(*a2 + 32);

  return v18(a2, v17);
}

void *physx::NpActor::importExtraData(void *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (result[1])
  {
    v3 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
    v2 = (v3 + 88);
    result[1] = v3;
    v4 = *(v3 + 72);
    if (v4)
    {
      *(v3 + 84) |= 0x80000000;
    }

    if (*(v3 + 64) == 1)
    {
      *(v3 + 72) = v3;
      if (*(v3 + 80))
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    if (!*(v3 + 80))
    {
LABEL_10:
      result[1] = 0;
      goto LABEL_11;
    }

    if (v4)
    {
      v5 = *(v3 + 84) & 0x7FFFFFFF;
      *(v3 + 72) = v2;
      v2 += 4 * v5;
    }
  }

LABEL_11:
  v8 = *v2;
  v6 = v2 + 1;
  v7 = v8;
  *(a2 + 8) = v6;
  if (!v8)
  {
    v6 = 0;
  }

  *result = v6;
  *(a2 + 8) += v7;
  return result;
}

uint64_t physx::NpActor::resolveReferences(uint64_t result, uint64_t (***a2)(void, uint64_t))
{
  v2 = *(result + 8);
  if (v2)
  {
    v3 = *(v2 + 80);
    if (v3)
    {
      v5 = result;
      v6 = 8;
      do
      {
        v7 = *(*(v5 + 8) + 72);
        if (*(v7 + v6))
        {
          result = (**a2)(a2, 0x80000000);
          *(v7 + v6) = result;
        }

        v6 += 16;
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

uint64_t physx::NpActor::releaseConstraints(uint64_t this, physx::PxRigidActor *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    v3 = *(v2 + 80);
    if (v3)
    {
      v4 = a2;
      v5 = this;
      v6 = 0;
      do
      {
        v7 = *(*(v5 + 8) + 72) + 16 * v6;
        if (*v7)
        {
          ++v6;
        }

        else
        {
          v8 = *(v7 + 8);
          if (*(v8 + 16) == v4)
          {
            v9 = 16;
          }

          else
          {
            v9 = 24;
          }

          *(v8 + v9) = 0;
          if (((*(v8 + 40) >> 30) - 1) <= 1)
          {
            a2 = (v8 + 32);
            v10 = *(v8 + 32);
            if (v10)
            {
              physx::Scb::Scene::removeConstraint(*(v8 + 32), a2);
              v11 = v8;
              physx::shdfnd::internal::HashSetBase<physx::PxConstraint *,physx::shdfnd::Hash<physx::PxConstraint *>,physx::shdfnd::NonTrackingAllocator,true>::erase(v10 + 1134, &v11);
            }
          }

          this = physx::NpActor::removeConnector(v5, a2, v6);
        }

        --v3;
      }

      while (v3);
    }
  }

  return this;
}

uint64_t physx::NpActor::removeConnector(uint64_t this, physx::PxActor *a2, unsigned int a3)
{
  v3 = *(this + 8);
  v4 = *(v3 + 72);
  v5 = *(v3 + 80) - 1;
  *(v3 + 80) = v5;
  *(v4 + 16 * a3) = *(v4 + 16 * v5);
  v6 = *(this + 8);
  if (!*(v6 + 80))
  {
    v7 = this;
    if ((*(v6 + 84) & 0x80000000) == 0)
    {
      this = physx::NpFactory::releaseConnectorArray(physx::NpFactory::mInstance, v6);
    }

    *(v7 + 8) = 0;
  }

  return this;
}

BOOL physx::NpAggregate::removeActorAndReinsert(int32x2_t *this, physx::PxActor *a2, physx::PxActor *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = this[8].u32[0];
  if (!v8)
  {
LABEL_7:
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpAggregate.cpp", 204, "PxAggregate: can't remove actor, actor doesn't belong to aggregate", a6, a7, a8, v20);
    return 0;
  }

  v9 = a3;
  v12 = this[9];
  if (*v12 != a2)
  {
    v13 = 0;
    while (v8 - 1 != v13)
    {
      v14 = v12[++v13];
      if (v14 == a2)
      {
        v15 = v13 < v8;
        goto LABEL_9;
      }
    }

    goto LABEL_7;
  }

  v13 = 0;
  v15 = 1;
LABEL_9:
  v16 = v8 - 1;
  this[8].i32[0] = v16;
  v12[v13] = v12[v16];
  v17 = &physx::NpActor::sLazyInitOffsets + *(a2 + 4);
  v18 = v17[18];
  physx::NpActor::setAggregate(a2 + *v17, 0, a3);
  physx::Scb::Aggregate::removeActor(this + 2, a2 + v18, v9);
  return v15;
}

uint64_t physx::NpActor::addConnector(uint64_t result, char a2, uint64_t a3)
{
  v5 = result;
  v6 = *(result + 8);
  if (!v6)
  {
    result = physx::NpFactory::acquireConnectorArray(physx::NpFactory::mInstance);
    v6 = result;
    *(v5 + 8) = result;
  }

  v7 = *&v6[1].__opaque[12];
  if (v7 < 0 && *&v6[1].__opaque[8] == (v7 & 0x7FFFFFFF))
  {
    v6 = physx::NpFactory::acquireConnectorArray(physx::NpFactory::mInstance);
    v8 = *(v5 + 8);
    v9 = *(v8 + 72);
    result = physx::shdfnd::Array<physx::NpConnector,physx::shdfnd::InlineAllocator<64u,physx::shdfnd::ReflectionAllocator<physx::NpConnector>>>::resizeUninitialized(v6, *(v8 + 80));
    v10 = *&v6[1].__opaque[8];
    if (v10)
    {
      v11 = *v6[1].__opaque;
      v12 = v11 + 16 * v10;
      do
      {
        *v11 = *v9;
        *(v11 + 8) = *(v9 + 8);
        v11 += 16;
        v9 += 16;
      }

      while (v11 < v12);
    }

    v13 = *(v5 + 8);
    v14 = *(v13 + 84);
    if ((v14 & 0x80000000) == 0 && (v14 & 0x7FFFFFFF) != 0)
    {
      v15 = *(v13 + 72);
      if (v15 == v13)
      {
        *(v13 + 64) = 0;
      }

      else if (v15)
      {
        result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      }
    }

    *(v5 + 8) = v6;
    v7 = *&v6[1].__opaque[12];
  }

  v19[0] = a2;
  v20 = a3;
  v16 = v7 & 0x7FFFFFFF;
  v17 = *&v6[1].__opaque[8];
  if (v16 <= v17)
  {
    return physx::shdfnd::Array<physx::NpConnector,physx::shdfnd::InlineAllocator<64u,physx::shdfnd::ReflectionAllocator<physx::NpConnector>>>::growAndPushBack(v6, v19);
  }

  v18 = *v6[1].__opaque + 16 * v17;
  *v18 = a2;
  *(v18 + 8) = a3;
  *&v6[1].__opaque[8] = v17 + 1;
  return result;
}

uint64_t physx::NpActor::removeConnector(uint64_t result, physx::PxActor *a2, int a3, uint64_t a4)
{
  v4 = *(result + 8);
  if (v4)
  {
    v5 = *(v4 + 80);
    if (v5)
    {
      v7 = 0;
      v8 = (*(v4 + 72) + 8);
      while (*(v8 - 8) != a3 || *v8 != a4)
      {
        ++v7;
        v8 += 2;
        if (v5 == v7)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      LODWORD(v7) = -1;
    }

    return physx::NpActor::removeConnector(result, a2, v7);
  }

  return result;
}

uint64_t physx::NpActor::setAggregate(uint64_t this, physx::NpAggregate *a2, physx::PxActor *a3)
{
  v3 = *(this + 8);
  if (!v3)
  {
    return physx::NpActor::addConnector(this, 1, a2);
  }

  v4 = *(v3 + 80);
  if (!v4)
  {
    return physx::NpActor::addConnector(this, 1, a2);
  }

  v5 = 0;
  for (i = (*(v3 + 72) + 8); *(i - 8) != 1; i += 2)
  {
    if (v4 == ++v5)
    {
      return physx::NpActor::addConnector(this, 1, a2);
    }
  }

  if (!*i)
  {
    return physx::NpActor::addConnector(this, 1, a2);
  }

  if (!a2)
  {
    return physx::NpActor::removeConnector(this, 0, v5);
  }

  *i = a2;
  return this;
}

void physx::NpActor::removeConstraintsFromScene(physx::NpActor *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v2 = *(v1 + 72);
    v3 = *(v1 + 80);
  }

  else
  {
    v3 = 0;
    v2 = 0;
  }

  v4 = 0;
LABEL_5:
  if (v4 <= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  v6 = (v2 + 16 * v4);
  v7 = v5 - v4 + 1;
  while (--v7)
  {
    v8 = v6 + 16;
    ++v4;
    v9 = *v6;
    v6 += 16;
    if (!v9)
    {
      v10 = *(v8 - 1);
      if (!v10)
      {
        return;
      }

      if (((*(v10 + 40) >> 30) - 1) <= 1)
      {
        v11 = v10 + 32;
        v12 = *(v10 + 32);
        if (v12)
        {
          v13 = *(v8 - 1);
          physx::shdfnd::internal::HashSetBase<physx::PxConstraint *,physx::shdfnd::Hash<physx::PxConstraint *>,physx::shdfnd::NonTrackingAllocator,true>::erase(v12 + 1134, &v13);
          physx::Scb::Scene::removeConstraint(v12, v11);
        }
      }

      goto LABEL_5;
    }
  }
}

int32x2_t *physx::NpActor::addConstraintsToSceneInternal(int32x2_t *this)
{
  v1 = this[1];
  if (v1)
  {
    v2 = 0;
    v3 = *(*&v1 + 72);
    v4 = *(*&v1 + 80);
LABEL_3:
    if (v2 <= v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = v2;
    }

    v6 = (v3 + 16 * v2);
    v7 = v5 - v2 + 1;
    while (--v7)
    {
      v8 = v6 + 16;
      ++v2;
      v9 = *v6;
      v6 += 16;
      if (!v9)
      {
        v10 = *(v8 - 1);
        if (!v10)
        {
          return this;
        }

        (*(*v10 + 72))(*(v8 - 1));
        this = physx::NpConstraint::getSceneFromActors(v10);
        if (this)
        {
          v11 = this;
          v13 = v10;
          v14 = 0;
          v12 = physx::shdfnd::internal::HashBase<physx::PxConstraint *,physx::PxConstraint *,physx::shdfnd::Hash<physx::PxConstraint *>,physx::shdfnd::internal::HashSetBase<physx::PxConstraint *,physx::shdfnd::Hash<physx::PxConstraint *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create(this + 1136, &v13, &v14);
          if ((v14 & 1) == 0)
          {
            *v12 = v13;
          }

          this = physx::Scb::Scene::add<physx::Scb::Constraint>(v11 + 2, v10 + 32, v11 + 996);
        }

        goto LABEL_3;
      }
    }
  }

  return this;
}

float32x4_t physx::NpActor::getGlobalPose(float32x4_t *a1, uint64_t a2, uint64_t a3, float32x4_t a4)
{
  v4 = *(a2 + 16);
  if ((*(a2 + 8) & 4) == 0)
  {
    v4 = (a2 + 64);
  }

  v5 = *(a3 + 8);
  if ((v5 & 0xF000000) == 0x5000000)
  {
    v6 = (*(a3 + 16) + 176);
    if ((v5 & 0x40) == 0)
    {
      v6 = (a3 + 48);
    }

    v7.i64[0] = v6[1].i64[0];
    v7.i64[1] = v6[1].u32[2];
    *v8.f32 = v4[2];
    v8.i64[1] = v4[3].u32[0];
    v9 = vdupq_laneq_s32(*v6, 3).u64[0];
    v10 = *v6;
    v10.i32[3] = 0;
    v11 = *v4->i8;
    v11.i32[3] = 0;
    v12 = vmulq_f32(v10, v11);
    v12.i64[0] = vpaddq_f32(v12, v12).u64[0];
    v13 = vpadd_f32(*v12.f32, *v12.f32);
    v14 = vextq_s8(v10, v10, 8uLL).u64[0];
    v12.i64[0] = vextq_s8(v11, v11, 8uLL).u64[0];
    v15 = vext_s8(*v6->i8, v14, 4uLL);
    v16 = vmls_f32(vmul_f32(*v6->i8, vext_s8(*v4, *v12.f32, 4uLL)), v15, *v4);
    *v12.f32 = vext_s8(v16, vmls_f32(vmul_f32(v14, *v4), *v6->i8, *v12.f32), 4uLL);
    v12.i64[1] = v16.u32[0];
    v17 = vmlaq_laneq_f32(v12, v11, *v6, 3);
    v17.i64[1] = vextq_s8(v17, v17, 8uLL).u32[0];
    *v11.f32 = vsub_f32(vmul_f32(*&vextq_s8(*v6, *v6, 8uLL), *&vextq_s8(*v4->i8, *v4->i8, 8uLL)), v13);
    v18 = vmulq_n_f32(v8, vmla_f32(0xBF000000BF000000, v9, v9).f32[0]);
    v18.i32[3] = 0;
    v19 = vextq_s8(v8, v8, 8uLL).u64[0];
    v20 = vmls_f32(vmul_f32(*v6->i8, vext_s8(*v8.f32, v19, 4uLL)), v15, *v8.f32);
    *v21.f32 = vext_s8(v20, vmls_f32(vmul_f32(v14, *v8.f32), *v6->i8, v19), 4uLL);
    v21.i64[1] = v20.u32[0];
    v22 = vmlaq_laneq_f32(v18, v21, *v6, 3);
    v22.i64[1] = vextq_s8(v22, v22, 8uLL).u32[0];
    v23 = vmulq_f32(v10, v8);
    v23.i64[0] = vpaddq_f32(v23, v23).u64[0];
    v24 = vmlaq_n_f32(v22, v10, vpadd_f32(*v23.f32, *v23.f32).f32[0]);
    v25 = vmlaq_laneq_f32(v17, v10, *v4->i8, 3);
    v24.i64[1] = vextq_s8(v24, v24, 8uLL).u32[0];
    v26.i64[0] = 0x4000000040000000;
    v26.i64[1] = 0x4000000040000000;
    result = vmlaq_f32(v7, v26, v24);
    a1[1].i64[0] = result.i64[0];
    a1[1].i32[2] = result.i32[2];
    v25.i32[3] = v11.i32[1];
    *a1 = v25;
    return result;
  }

  v28 = *(a3 + 284);
  v29 = *(a3 + 16);
  v30 = &v29[21].n128_u8[12];
  if ((v28 & 0x4000) == 0)
  {
    v30 = (a3 + 76);
  }

  if ((~*v30 & 3) == 0)
  {
    if ((v28 & 0x8000) != 0)
    {
      a4 = v29[17];
      v71 = a4;
      v33 = &v29[18];
      v34 = &v29[18].n128_u32[1];
      v32 = &v29[18].n128_u32[2];
      goto LABEL_18;
    }

    if (v5 >> 30 != 3)
    {
      v31 = *(a3 + 208);
      if (v31)
      {
        if (v31[1].i8[15] == 1 && v31[1].i8[12])
        {
          v32 = &v31[1].u32[2];
          a4 = *v31;
          v71 = *v31;
          v33 = &v31[1];
          v34 = &v31[1].u32[1];
LABEL_18:
          v35 = &v71;
          goto LABEL_19;
        }
      }
    }
  }

  v35 = (a3 + 224);
  v33 = (a3 + 240);
  v34 = (a3 + 244);
  v32 = (a3 + 248);
LABEL_19:
  v36 = &v29[14];
  if ((v28 & 0x400) != 0)
  {
    v38 = v36;
  }

  else
  {
    v38 = (a3 + 80);
  }

  v39.i64[0] = v38[1].i64[0];
  v39.i64[1] = v38[1].u32[2];
  a4.i32[0] = *v33;
  a4.i32[1] = *v34;
  a4.i32[2] = *v32;
  v40 = vdupq_laneq_s32(*v38, 3).u64[0];
  v41 = *v38;
  v41.i32[3] = 0;
  v42 = *v4->i8;
  v42.i32[3] = 0;
  v43 = vmulq_f32(v42, v41);
  v43.i64[0] = vpaddq_f32(v43, v43).u64[0];
  *v43.f32 = vmla_f32(vpadd_f32(*v43.f32, *v43.f32), *&vdupq_laneq_s32(*v4->i8, 3), v40);
  v44 = vextq_s8(v42, v42, 8uLL).u64[0];
  v45 = vextq_s8(v41, v41, 8uLL).u64[0];
  v46 = vext_s8(*v38->i8, v45, 4uLL);
  v47 = vmls_f32(vmul_f32(*v4, v46), vext_s8(*v4, v44, 4uLL), *v38->i8);
  *v48.f32 = vext_s8(v47, vmls_f32(vmul_f32(v44, *v38->i8), *v4, v45), 4uLL);
  v48.i64[1] = v47.u32[0];
  v49 = vmlaq_laneq_f32(v48, v42, *v38, 3);
  v49.i64[1] = vextq_s8(v49, v49, 8uLL).u32[0];
  v50 = vmlsq_laneq_f32(v49, v41, *v4->i8, 3);
  v51 = *v35->i8;
  v51.i32[3] = 0;
  v52 = vextq_s8(v51, v51, 8uLL).u64[0];
  *v42.f32 = vext_s8(*v35, v52, 4uLL);
  v53 = vmls_f32(vmul_f32(*v35, *&vextq_s8(v50, v50, 4uLL)), *v42.f32, *v50.f32);
  v50.i64[1] = vextq_s8(v50, v50, 8uLL).u32[0];
  v37.i64[1] = v4[3].u32[0];
  *v37.f32 = v4[2];
  v54 = vsubq_f32(v37, v39);
  v55 = vmulq_n_f32(v54, vmla_f32(0xBF000000BF000000, v40, v40).f32[0]);
  v55.i32[3] = 0;
  v56 = vmls_f32(vmul_f32(*v54.f32, v46), *&vextq_s8(v54, v54, 4uLL), *v38->i8);
  *v57.f32 = vext_s8(v56, vmls_f32(vmul_f32(*v38->i8, *&vextq_s8(v54, v54, 8uLL)), *v54.f32, v45), 4uLL);
  v57.i64[1] = v56.u32[0];
  v58 = vmlaq_laneq_f32(v55, v57, *v38, 3);
  v58.i64[1] = vextq_s8(v58, v58, 8uLL).u32[0];
  v59 = vmulq_f32(v41, v54);
  v59.i64[0] = vpaddq_f32(v59, v59).u64[0];
  v60 = vmlaq_n_f32(v58, v41, vpadd_f32(*v59.f32, *v59.f32).f32[0]);
  v41.i64[0] = vextq_s8(v60, v60, 8uLL).u32[0];
  v61 = vadd_f32(*v60.f32, *v60.f32);
  v60.i64[1] = v41.u32[0];
  v62 = vaddq_f32(v60, v60);
  v63 = vdupq_laneq_s32(*v35->i8, 3).u64[0];
  v64 = vmulq_f32(v51, v50);
  v64.i64[0] = vpaddq_f32(v64, v64).u64[0];
  *v59.f32 = vsub_f32(vmul_f32(*&vextq_s8(*v35->i8, *v35->i8, 8uLL), *v43.f32), vpadd_f32(*v64.f32, *v64.f32));
  *v64.f32 = vext_s8(v53, vmls_f32(vmul_f32(v52, *v50.f32), *v35, *&v50.u32[2]), 4uLL);
  v64.i64[1] = v53.u32[0];
  v65 = vmlaq_laneq_f32(v64, v50, *v35->i8, 3);
  v65.i64[1] = vextq_s8(v65, v65, 8uLL).u32[0];
  v66 = vmulq_n_f32(v62, vmla_f32(0xBF000000BF000000, v63, v63).f32[0]);
  v66.i32[3] = 0;
  *v41.f32 = vadd_f32(*v41.f32, *v41.f32);
  *v57.f32 = vmls_f32(vmul_f32(*v35, vext_s8(v61, *v41.f32, 4uLL)), *v42.f32, v61);
  *v41.f32 = vext_s8(*v57.f32, vmls_f32(vmul_f32(v52, v61), *v35, *v41.f32), 4uLL);
  v41.i64[1] = v57.u32[0];
  v67 = vmlaq_laneq_f32(v66, v41, *v35->i8, 3);
  v67.i64[1] = vextq_s8(v67, v67, 8uLL).u32[0];
  v68 = vmulq_f32(v51, v62);
  v68.i64[0] = vpaddq_f32(v68, v68).u64[0];
  v69 = vmlaq_n_f32(v67, v51, vpadd_f32(*v68.f32, *v68.f32).f32[0]);
  v70 = vmlaq_n_f32(v65, v51, v43.f32[0]);
  v69.i64[1] = vextq_s8(v69, v69, 8uLL).u32[0];
  v43.i64[0] = 0x4000000040000000;
  v43.i64[1] = 0x4000000040000000;
  result = vmlaq_f32(a4, v43, v69);
  a1[1].i64[0] = result.i64[0];
  a1[1].i32[2] = result.i32[2];
  v70.i32[3] = v59.i32[1];
  *a1 = v70;
  return result;
}

physx::NpAggregate *physx::NpAggregate::NpAggregate(physx::NpAggregate *this, unsigned int a2, char a3)
{
  *(this + 2) = 196618;
  *this = &unk_1F5D23560;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = this;
  *(this + 12) = -1;
  *(this + 13) = a2;
  *(this + 56) = a3;
  *(this + 6) = 150994944;
  *(this + 16) = 0;
  if (a2)
  {
    v4 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 8 * a2, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpAggregate.cpp", 60);
  }

  else
  {
    v4 = 0;
  }

  *(this + 9) = v4;
  return this;
}

void physx::NpAggregate::~NpAggregate(physx::NpAggregate *this)
{
  *this = &unk_1F5D23560;
  physx::NpFactory::onAggregateRelease(physx::NpFactory::mInstance, this);
  if (*(this + 5))
  {
    if (*(this + 9))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }
}

{
  physx::NpAggregate::~NpAggregate(this);
  if (v1)
  {
    v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v2();
  }
}

uint64_t physx::NpAggregate::release(int32x2_t *this)
{
  physx::NpPhysics::notifyDeletionListeners(physx::NpPhysics::mInstance, this, 0, 1);
  if (this[8].i32[0])
  {
    v2 = 0;
    do
    {
      v3 = *(*&this[9] + 8 * v2);
      if ((*(*v3 + 48))(v3) == 2)
      {
        v5 = *(*(*&this[9] + 8 * v2) + 384);
        *((*(*v5 + 200))(v5) + 136) = 0;
      }

      v6 = *(*&this[9] + 8 * v2);
      v7 = &physx::NpActor::sLazyInitOffsets + *(v6 + 8);
      v8 = v7[18];
      physx::NpActor::setAggregate(v6 + *v7, 0, v4);
      physx::Scb::Aggregate::removeActor(this + 2, v6 + v8, 1);
      ++v2;
    }

    while (v2 < this[8].u32[0]);
  }

  if ((this[3].i32[0] >> 30) - 1 <= 1)
  {
    v9 = this[2];
    if (v9)
    {
      physx::Scb::Scene::removeAggregate(*&this[2], &this[2]);
      if (v9[1156].i32[1])
      {
        v10 = (this + ~(this << 32)) ^ ((this + ~(this << 32)) >> 22);
        v11 = 9 * ((v10 + ~(v10 << 13)) ^ ((v10 + ~(v10 << 13)) >> 8));
        v12 = (v11 ^ (v11 >> 15)) + ~((v11 ^ (v11 >> 15)) << 27);
        v13 = (*&v9[1153] + 4 * ((v9[1154].i32[1] - 1) & ((v12 >> 31) ^ v12)));
        v14 = *v13;
        if (v14 != -1)
        {
          v15 = v9[1151];
          v16 = v9[1152];
          if (*(*&v15 + 8 * v14) == this)
          {
LABEL_14:
            *v13 = *(*&v16 + 4 * v14);
            v18 = vadd_s32(v9[1156], 0xFFFFFFFF00000001);
            v9[1156] = v18;
            if (v14 != v18.i32[1])
            {
              *(*&v15 + 8 * v14) = *(*&v15 + 8 * v18.u32[1]);
              v19 = v9[1152];
              *(*&v19 + 4 * v14) = *(*&v19 + 4 * v18.u32[1]);
              v20 = *(*&v9[1151] + 8 * v14);
              v21 = (~(v20 << 32) + v20) ^ ((~(v20 << 32) + v20) >> 22);
              v22 = 9 * ((v21 + ~(v21 << 13)) ^ ((v21 + ~(v21 << 13)) >> 8));
              v23 = (v22 ^ (v22 >> 15)) + ~((v22 ^ (v22 >> 15)) << 27);
              v24 = (*&v9[1153] + 4 * ((v9[1154].i32[1] - 1) & ((v23 >> 31) ^ v23)));
              v25 = v9[1156].u32[1];
              v26 = *v24;
              if (v26 != v25)
              {
                do
                {
                  v27 = v26;
                  v26 = *(*&v19 + 4 * v26);
                }

                while (v26 != v25);
                v24 = (*&v19 + 4 * v27);
              }

              *v24 = v14;
            }

            --v9[1155].i32[1];
          }

          else
          {
            while (1)
            {
              v17 = v14;
              v14 = *(*&v16 + 4 * v14);
              if (v14 == -1)
              {
                break;
              }

              if (*(*&v15 + 8 * v14) == this)
              {
                v13 = (*&v16 + 4 * v17);
                goto LABEL_14;
              }
            }
          }
        }
      }
    }
  }

  return physx::Scb::Base::destroy(&this[2]);
}

void physx::NpAggregate::addActorInternal(physx::NpAggregate *this, int32x2_t *a2, int32x2_t *a3, const physx::PxBVHStructure *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((*(*a2 + 48))(a2) == 2)
  {
    if (!(*(*a2 + 56))(a2))
    {
      v13 = a2[48];
      if ((*(*v13 + 152))(v13))
      {
        v14 = 0;
        do
        {
          v20 = 0;
          (*(*v13 + 160))(v13, &v20, 1, v14);
          physx::Scb::Aggregate::addActor(this + 16, v20 + 96);
          v14 = (v14 + 1);
        }

        while (v14 < (*(*v13 + 152))(v13));
      }

      physx::NpScene::addArticulationInternal(a3, v13);
    }
  }

  else
  {
    physx::Scb::Aggregate::addActor(this + 16, a2 + *(&physx::NpActor::sLazyInitOffsets + a2[1].u16[0] + 18));

    physx::NpScene::addActorInternal(a3, a2, a4, v15, v16, v17, v18, v19, a9);
  }
}

uint64_t physx::NpAggregate::addActor(physx::NpAggregate *this, int32x2_t *a2, atomic_uint *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 16) == *(this + 13))
  {
    v8 = physx::shdfnd::Foundation::mInstance;
    v9 = "PxAggregate: can't add actor to aggregate, max number of actors reached";
    v10 = 146;
LABEL_9:
    physx::shdfnd::Foundation::error(v8, 2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpAggregate.cpp", v10, v9, a6, a7, a8, v24);
    return 0;
  }

  if ((*(*a2 + 144))(a2))
  {
    v8 = physx::shdfnd::Foundation::mInstance;
    v9 = "PxAggregate: can't add actor to aggregate, actor already belongs to an aggregate";
    v10 = 152;
    goto LABEL_9;
  }

  if ((*(*a2 + 56))(a2))
  {
    v8 = physx::shdfnd::Foundation::mInstance;
    v9 = "PxAggregate: can't add actor to aggregate, actor already belongs to a scene";
    v10 = 158;
    goto LABEL_9;
  }

  if ((*(*a2 + 48))(a2) == 2)
  {
    v8 = physx::shdfnd::Foundation::mInstance;
    v9 = "PxAggregate: can't add articulation link to aggregate, only whole articulations can be added";
    v10 = 164;
    goto LABEL_9;
  }

  physx::NpActor::setAggregate(a2 + *(&physx::NpActor::sLazyInitOffsets + a2[1].u16[0]), this, v14);
  v21 = *(this + 9);
  v22 = *(this + 16);
  *(this + 16) = v22 + 1;
  *(v21 + 8 * v22) = a2;
  if (((*(this + 6) >> 30) - 1) <= 1 && (v23 = *(this + 2)) != 0)
  {
    physx::NpAggregate::addActorInternal(this, a2, (v23 - 16), a3, v17, v18, v19, v20, v24);
    return 1;
  }

  else
  {
    v15 = 1;
    if (a3)
    {
      atomic_fetch_add(a3 + 6, 1u);
      physx::NpActor::addConnector(a2 + *(&physx::NpActor::sLazyInitOffsets + a2[1].u16[0]), 3, a3);
    }
  }

  return v15;
}

BOOL physx::NpAggregate::removeActor(int32x2_t *this, physx::PxActor *a2)
{
  if ((*(*a2 + 48))(a2) == 2)
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpAggregate.cpp", 215, "PxAggregate: can't remove articulation link, only whole articulations can be removed", v6, v7, v8, v13);
    return 0;
  }

  else
  {
    if ((this[3].i32[0] >> 30) - 1 > 1 || !*&this[2])
    {
      v10 = *(&physx::NpActor::sLazyInitOffsets + *(a2 + 4));
      v14 = 0;
      if (physx::NpActor::getConnectors<physx::Gu::BVHStructure>(a2 + v10, 3, &v14, 1u, 0))
      {
        physx::NpActor::removeConnector(a2 + v10, v11, 3, v14);
        v12 = v14;
        if (atomic_fetch_add((v14 + 24), 0xFFFFFFFF) == 1)
        {
          (*(*(v12 + 16) + 16))();
        }
      }
    }

    return physx::NpAggregate::removeActorAndReinsert(this, a2, 1, v4, v5, v6, v7, v8);
  }
}

unint64_t physx::NpActor::getConnectors<physx::Gu::BVHStructure>(uint64_t a1, int a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v5 = *(a1 + 8);
  if (!v5 || !*(v5 + 80))
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  do
  {
    v10 = *(v5 + 72);
    if (*(v10 + v6) != a2 || v8 >= a4)
    {
      v12 = v9;
    }

    else
    {
      v12 = (v9 + 1);
      if (v9 >= a5)
      {
        *(a3 + 8 * v8++) = *(v10 + v6 + 8);
        v5 = *(a1 + 8);
      }
    }

    ++v7;
    v6 += 16;
    v9 = v12;
  }

  while (v7 < *(v5 + 80));
  return v8;
}

uint64_t physx::NpAggregate::addArticulation(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  if ((*(*a2 + 152))(a2) + v4 > *(a1 + 52))
  {
    v8 = physx::shdfnd::Foundation::mInstance;
    v9 = "PxAggregate: can't add articulation links, max number of actors reached";
    v10 = 249;
LABEL_7:
    physx::shdfnd::Foundation::error(v8, 2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpAggregate.cpp", v10, v9, v5, v6, v7, v21);
    return 0;
  }

  if ((*(*a2 + 192))(a2))
  {
    v8 = physx::shdfnd::Foundation::mInstance;
    v9 = "PxAggregate: can't add articulation to aggregate, articulation already belongs to an aggregate";
    v10 = 255;
    goto LABEL_7;
  }

  if ((*(*a2 + 48))(a2))
  {
    v8 = physx::shdfnd::Foundation::mInstance;
    v9 = "PxAggregate: can't add articulation to aggregate, articulation already belongs to a scene";
    v10 = 261;
    goto LABEL_7;
  }

  v12 = (*(*a2 + 200))(a2);
  *(v12 + 136) = a1;
  if (*(v12 + 128))
  {
    v14 = v12;
    v15 = 0;
    v16 = *(v12 + 120);
    do
    {
      v17 = *(v16 + 8 * v15);
      physx::NpActor::setAggregate(v17 + *(&physx::NpActor::sLazyInitOffsets + *(v17 + 8)), a1, v13);
      v18 = *(a1 + 72);
      v19 = *(a1 + 64);
      *(a1 + 64) = v19 + 1;
      *(v18 + 8 * v19) = v17;
      physx::Scb::Aggregate::addActor(a1 + 16, v17 + 96);
      ++v15;
    }

    while (v15 < *(v14 + 128));
  }

  if (((*(a1 + 24) >> 30) - 1) <= 1)
  {
    v20 = *(a1 + 16);
    if (v20)
    {
      physx::NpScene::addArticulationInternal((v20 - 16), a2);
    }
  }

  return 1;
}

uint64_t physx::NpAggregate::removeArticulationAndReinsert(int32x2_t *a1, uint64_t a2, int a3)
{
  if (a1[8].i32[0])
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *(*&a1[9] + 8 * v7);
      if ((*(*v8 + 48))(v8) == 2 && (v10 = a1[9], v11 = *(*&v10 + 8 * v7), *(v11 + 384) == a2))
      {
        v12 = a1[8].i32[0] - 1;
        a1[8].i32[0] = v12;
        *(*&v10 + 8 * v7) = *(*&v10 + 8 * v12);
        v13 = &physx::NpActor::sLazyInitOffsets + *(v11 + 8);
        v14 = v13[18];
        physx::NpActor::setAggregate(v11 + *v13, 0, v9);
        physx::Scb::Aggregate::removeActor(a1 + 2, v11 + v14, a3);
        v6 = 1;
      }

      else
      {
        ++v7;
      }
    }

    while (v7 < a1[8].u32[0]);
  }

  else
  {
    v6 = 0;
  }

  *((*(*a2 + 200))(a2) + 136) = 0;
  if ((v6 & 1) == 0)
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpAggregate.cpp", 310, "PxAggregate: can't remove articulation, articulation doesn't belong to aggregate", v15, v16, v17, v19);
  }

  return v6 & 1;
}

uint64_t physx::NpAggregate::getActors(uint64_t a1, void *a2, unsigned int a3, unsigned int a4)
{
  v5 = (*(a1 + 64) - a4) & ~((*(a1 + 64) - a4) >> 31);
  if (v5 >= a3)
  {
    result = a3;
  }

  else
  {
    result = v5;
  }

  if (result)
  {
    v7 = (*(a1 + 72) + 8 * a4);
    v8 = result;
    do
    {
      v9 = *v7++;
      *a2++ = v9;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t physx::NpAggregate::getScene(physx::NpAggregate *this)
{
  if (((*(this + 6) >> 30) - 1) > 1)
  {
    return 0;
  }

  v1 = *(this + 2);
  if (v1)
  {
    return v1 - 16;
  }

  else
  {
    return 0;
  }
}

uint64_t physx::NpAggregate::exportExtraData(uint64_t result, uint64_t a2)
{
  if (*(result + 72))
  {
    v3 = result;
    (*(*a2 + 24))(a2, 16);
    v4 = *(v3 + 72);
    v5 = (8 * *(v3 + 64));
    v6 = *(*a2 + 16);

    return v6(a2, v4, v5);
  }

  return result;
}

uint64_t physx::NpAggregate::requiresObjects(uint64_t result, uint64_t a2)
{
  if (*(result + 64))
  {
    v3 = result;
    v4 = 0;
    do
    {
      v5 = *(*(v3 + 72) + 8 * v4);
      if (v5)
      {
        v6 = v5[4] == 13;
      }

      else
      {
        v6 = 0;
      }

      if (v6)
      {
        v5 = (*(*v5 + 496))(*(*(v3 + 72) + 8 * v4));
      }

      result = (*(*a2 + 16))(a2, v5);
      ++v4;
    }

    while (v4 < *(v3 + 64));
  }

  return result;
}

int32x2_t *physx::NpArticulationReducedCoordinate::setArticulationFlags(int32x2_t *result, __int8 *a2)
{
  v2 = result;
  v3 = *a2;
  result[12].i8[5] = *a2;
  v4 = result[4].i32[0] >> 30;
  if (v4 == 2)
  {
    result = result[3];
    if (result[961].i8[1])
    {
      goto LABEL_5;
    }
  }

  else if (v4 == 3)
  {
    result = result[3];
LABEL_5:
    result = physx::Scb::Scene::scheduleForUpdate(result, &v2[3]);
    v2[4].i32[0] |= 0x80000u;
    return result;
  }

  v2[11].i8[0] = v3;
  v5 = v2[6];
  if (v5)
  {
    if (*(*&v5 + 32))
    {
      *(*(*(*&v5 + 24) + 16) + 159) = v3 & 1;
    }
  }

  return result;
}

int32x2_t *physx::NpArticulationReducedCoordinate::setArticulationFlag(int32x2_t *result, char a2, int a3)
{
  v3 = result;
  v4 = result[12].i8[5];
  v5 = v4 | a2;
  v6 = v4 & ~a2;
  if (a3)
  {
    v6 = v5;
  }

  result[12].i8[5] = v6;
  v7 = result[4].i32[0] >> 30;
  if (v7 == 2)
  {
    result = result[3];
    if (result[961].i8[1])
    {
      goto LABEL_7;
    }
  }

  else if (v7 == 3)
  {
    result = result[3];
LABEL_7:
    result = physx::Scb::Scene::scheduleForUpdate(result, &v3[3]);
    v3[4].i32[0] |= 0x80000u;
    return result;
  }

  v3[11].i8[0] = v6;
  v8 = v3[6];
  if (v8)
  {
    if (*(*&v8 + 32))
    {
      *(*(*(*&v8 + 24) + 16) + 159) = v6 & 1;
    }
  }

  return result;
}

uint64_t physx::NpArticulationReducedCoordinate::getDofs(physx::NpArticulationReducedCoordinate *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    return (*(**v1 + 56))();
  }

  else
  {
    return 0;
  }
}

void *physx::NpArticulationReducedCoordinate::createCache(physx::Sc::ArticulationSim **this)
{
  result = physx::Sc::ArticulationSim::createCache(this[6]);
  *(result + 28) = *(this + 44);
  return result;
}

int32x2_t *physx::NpArticulationReducedCoordinate::applyCache(int32x2_t *a1, uint64_t a2, _BYTE *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*((*(*a1 + 48))(a1) + 7508))
  {
    v16 = physx::shdfnd::Foundation::mInstance;

    return physx::shdfnd::Foundation::error(v16, 2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpArticulationReducedCoordinate.cpp", 141, "NpArticulation::applyCache() not allowed while simulation is running.", v13, v14, v15, a9);
  }

  v18 = a1[6];
  if (v18)
  {
    LOBYTE(v46) = *a3;
    physx::Sc::ArticulationSim::applyCache(v18, a2, &v46);
  }

  v19 = *a3;
  if ((*a3 & 4) != 0)
  {
    v20 = a1[19].u32[0];
    if (v20)
    {
      v21 = 0;
      v22 = 8 * v20;
      while (1)
      {
        v23 = *(*&a1[18] + v21);
        v24 = *(v23 + 148);
        v46 = *(v23 + 144);
        v47 = v24;
        v26 = *(v23 + 156);
        v48 = *(v23 + 152);
        v25 = v48;
        v49 = v26;
        v28 = *(v23 + 164);
        v50 = *(v23 + 160);
        v27 = v50;
        v51 = v28;
        v52 = *(v23 + 168);
        v29 = v52;
        *(v23 + 320) = v46;
        *(v23 + 324) = v24;
        *(v23 + 328) = v25;
        *(v23 + 332) = v26;
        *(v23 + 336) = v27;
        *(v23 + 340) = v28;
        *(v23 + 344) = v29;
        v30 = *(v23 + 104) >> 30;
        if (v30 == 2)
        {
          v31 = *(v23 + 96);
          if ((v31[961].i8[1] & 1) == 0)
          {
LABEL_15:
            physx::Sc::BodyCore::setBody2World(v23 + 128, &v46);
            goto LABEL_16;
          }
        }

        else
        {
          if (v30 != 3)
          {
            goto LABEL_15;
          }

          v31 = *(v23 + 96);
        }

        *(v23 + 380) &= ~0x200000u;
        physx::Scb::Scene::scheduleForUpdate(v31, v23 + 96);
        *(v23 + 380) |= 0x100000u;
LABEL_16:
        v21 += 8;
        if (v22 == v21)
        {
          v19 = *a3;
          break;
        }
      }
    }
  }

  if ((v19 & 5) != 0)
  {
    v32 = a1[19].u32[0];
    if (v32)
    {
      v33 = 0;
      v34 = 8 * v32;
      do
      {
        v35 = *(*&a1[18] + v33);
        v36 = *(v35 + 212);
        v46 = *(v35 + 208);
        v47 = v36;
        v48 = *(v35 + 216);
        v37 = v48;
        v38 = *(v35 + 224);
        v39 = *(v35 + 228);
        v45[0] = v38;
        v45[1] = v39;
        v40 = *(v35 + 232);
        v45[2] = v40;
        *(v35 + 348) = v46;
        *(v35 + 352) = v36;
        *(v35 + 356) = v37;
        v41 = *(v35 + 104) >> 30;
        if (v41 == 2)
        {
          v42 = *(v35 + 96);
          if (v42[961].i8[1])
          {
            goto LABEL_25;
          }
        }

        else if (v41 == 3)
        {
          v42 = *(v35 + 96);
LABEL_25:
          physx::Scb::Scene::scheduleForUpdate(v42, v35 + 96);
          *(v35 + 380) |= 0x400000u;
          goto LABEL_27;
        }

        physx::Sc::BodyCore::setLinearVelocity(v35 + 128, &v46);
LABEL_27:
        *(v35 + 360) = v38;
        *(v35 + 364) = v39;
        *(v35 + 368) = v40;
        v43 = *(v35 + 104) >> 30;
        if (v43 == 2)
        {
          v44 = *(v35 + 96);
          if ((v44[961].i8[1] & 1) == 0)
          {
LABEL_32:
            physx::Sc::BodyCore::setAngularVelocity(v35 + 128, v45);
            goto LABEL_33;
          }
        }

        else
        {
          if (v43 != 3)
          {
            goto LABEL_32;
          }

          v44 = *(v35 + 96);
        }

        physx::Scb::Scene::scheduleForUpdate(v44, v35 + 96);
        *(v35 + 380) |= 0x800000u;
LABEL_33:
        v33 += 8;
      }

      while (v34 != v33);
    }
  }

  return physx::PxArticulationImpl::wakeUpInternal(a1 + 3, 0, a4);
}

int32x2_t *physx::PxArticulationImpl::wakeUpInternal(int32x2_t *this, int a2, int a3)
{
  v3 = this;
  v4 = this[1].u32[0];
  v5 = a2 | a3;
  if (!this[9].i8[4])
  {
    v5 = 0;
  }

  if ((a3 & (*this[9].i32 < *(*this + 8176))) != 0)
  {
    v6 = *(*this + 8176);
  }

  else
  {
    v6 = *this[9].i32;
  }

  if ((a3 & (*this[9].i32 < *(*this + 8176))) == 0 && !v5)
  {
    return this;
  }

  if (!this[16].i32[0])
  {
    goto LABEL_18;
  }

  v7 = 0;
  do
  {
    v8 = *(*(v3 + 120) + 8 * v7);
    v9 = *(v8 + 104) >> 30;
    if (v9 == 2)
    {
      v10 = *(v8 + 96);
      if (v10[961].i8[1])
      {
        goto LABEL_14;
      }
    }

    else if (v9 == 3)
    {
      v10 = *(v8 + 96);
LABEL_14:
      *(v8 + 376) = 0;
      *(v8 + 372) = v6;
      this = physx::Scb::Scene::scheduleForUpdate(v10, v8 + 96);
      *(v8 + 380) = *(v8 + 380) & 0xF8FFFFFF | 0x5000000;
      goto LABEL_16;
    }

    *(v8 + 376) = 0;
    *(v8 + 372) = v6;
    this = physx::Sc::BodyCore::setWakeCounter(v8 + 128, v6, 1);
LABEL_16:
    ++v7;
  }

  while (v7 < *(v3 + 128));
  v4 = *(v3 + 8);
LABEL_18:
  *(v3 + 72) = v6;
  *(v3 + 76) = 0;
  v11 = v4 >> 30;
  if (v11 == 2)
  {
    this = *v3;
    if ((*(*v3 + 7689) & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_22:
    this = physx::Scb::Scene::scheduleForUpdate(this, v3);
    *(v3 + 8) = *(v3 + 8) & 0xFFFFFC7F | 0x280;
  }

  else
  {
    if (v11 == 3)
    {
      this = *v3;
      goto LABEL_22;
    }

LABEL_23:
    *(v3 + 60) = v6;
  }

  return this;
}

uint64_t physx::NpArticulationReducedCoordinate::copyInternalStateToCache(uint64_t result, uint64_t a2, char *a3)
{
  v3 = *(result + 48);
  if (v3)
  {
    v4 = *v3;
    v5 = *a3;
    return (*(*v4 + 80))(v4, a2, &v5);
  }

  return result;
}

uint64_t physx::NpArticulationReducedCoordinate::releaseCache(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    return physx::Sc::ArticulationSim::releaseCache(a1, a2);
  }

  return a1;
}

uint64_t physx::NpArticulationReducedCoordinate::packJointData(uint64_t this, const float *a2, float *a3)
{
  v3 = *(this + 48);
  if (v3)
  {
    return (*(**v3 + 88))(*v3, a2, a3);
  }

  return this;
}

uint64_t physx::NpArticulationReducedCoordinate::unpackJointData(uint64_t this, const float *a2, float *a3)
{
  v3 = *(this + 48);
  if (v3)
  {
    return (*(**v3 + 96))(*v3, a2, a3);
  }

  return this;
}

uint64_t physx::NpArticulationReducedCoordinate::commonInit(uint64_t this)
{
  v1 = *(this + 48);
  if (v1)
  {
    return (*(**v1 + 104))();
  }

  return this;
}

uint64_t physx::NpArticulationReducedCoordinate::computeGeneralizedGravityForce(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48);
  if (v2)
  {
    return (*(**v2 + 112))(*v2, v2[1] + 1952, a2);
  }

  return result;
}

uint64_t physx::NpArticulationReducedCoordinate::computeCoriolisAndCentrifugalForce(uint64_t result)
{
  v1 = *(result + 48);
  if (v1)
  {
    return (*(**v1 + 120))();
  }

  return result;
}

uint64_t physx::NpArticulationReducedCoordinate::computeGeneralizedExternalForce(uint64_t result)
{
  v1 = *(result + 48);
  if (v1)
  {
    return (*(**v1 + 128))();
  }

  return result;
}

uint64_t physx::NpArticulationReducedCoordinate::computeJointAcceleration(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48);
  if (v2)
  {
    return (*(**v2 + 136))(*v2, v2[1] + 1952, a2);
  }

  return result;
}

uint64_t physx::NpArticulationReducedCoordinate::computeJointForce(uint64_t result)
{
  v1 = *(result + 48);
  if (v1)
  {
    return (*(**v1 + 144))();
  }

  return result;
}

uint64_t physx::NpArticulationReducedCoordinate::computeDenseJacobian(uint64_t result)
{
  v1 = *(result + 48);
  if (v1)
  {
    return (*(**v1 + 160))();
  }

  return result;
}

uint64_t physx::NpArticulationReducedCoordinate::computeCoefficientMatrix(uint64_t result)
{
  v1 = result;
  if (*(result + 192))
  {
    v2 = 0;
    do
    {
      v3 = *(*(v1 + 184) + 8 * v2);
      v4 = (*(*v3 + 208))(v3);
      result = physx::NpConstraint::updateConstants(v4);
      ++v2;
    }

    while (v2 < *(v1 + 192));
  }

  v5 = *(v1 + 48);
  if (v5)
  {
    v6 = *(**v5 + 168);

    return v6();
  }

  return result;
}

uint64_t physx::NpArticulationReducedCoordinate::computeLambda(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (((*(a1 + 32) >> 30) - 1) <= 1 && *(a1 + 24))
  {
    if (*(a2 + 112) == *(a1 + 176))
    {
      v12 = (a1 + 48);
      v13 = *(*(*a1 + 48))(a1);
      (*(v13 + 488))(&v19);
      return physx::Sc::ArticulationCore::computeLambda(v12, a2, a3, a4, &v19, a5);
    }

    v15 = physx::shdfnd::Foundation::mInstance;
    v16 = "PxArticulation::computeLambda : cache is invalid, articulation configuration has changed!";
    v17 = 308;
  }

  else
  {
    v15 = physx::shdfnd::Foundation::mInstance;
    v16 = "PxArticulation::computeLambda : object must be in a scened!";
    v17 = 300;
  }

  physx::shdfnd::Foundation::error(v15, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpArticulationReducedCoordinate.cpp", v17, v16, a6, a7, a8, v18);
  return 0;
}

uint64_t physx::NpArticulationReducedCoordinate::computeGeneralizedMassMatrix(uint64_t result)
{
  v1 = *(result + 48);
  if (v1)
  {
    return (*(**v1 + 192))();
  }

  return result;
}

uint64_t physx::NpArticulationReducedCoordinate::addLoopJoint(physx::NpArticulationReducedCoordinate *this, physx::PxJoint *a2)
{
  v9 = a2;
  v4 = *(this + 48);
  v5 = *(this + 49) & 0x7FFFFFFF;
  if (v4 >= v5 && v5 <= 2 * v4)
  {
    physx::shdfnd::Array<physx::PxJoint *,physx::shdfnd::ReflectionAllocator<physx::PxJoint *>>::recreate(this + 184, (2 * v4) | 1);
    v4 = *(this + 48);
    v5 = *(this + 49) & 0x7FFFFFFF;
  }

  if (v5 <= v4)
  {
    physx::shdfnd::Array<physx::PxJoint *,physx::shdfnd::ReflectionAllocator<physx::PxJoint *>>::growAndPushBack(this + 184, &v9);
  }

  else
  {
    *(*(this + 23) + 8 * v4) = a2;
    *(this + 48) = v4 + 1;
  }

  v6 = *(this + 6);
  result = (*(*a2 + 208))(a2);
  if (v6)
  {
    v8 = *(result + 136);

    return physx::Sc::ArticulationSim::addLoopConstraint(v6, v8);
  }

  return result;
}

__n128 physx::NpArticulationReducedCoordinate::removeLoopJoint(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 192);
  if (v2)
  {
    v3 = 0;
    while (*(*(a1 + 184) + 8 * v3) != a2)
    {
      if (v2 == ++v3)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (v3 != v2)
  {
    v4 = *(a1 + 184);
    v5 = v2 - 1;
    *(a1 + 192) = v5;
    *(v4 + 8 * v3) = *(v4 + 8 * v5);
  }

LABEL_9:
  v6 = *(a1 + 48);
  v7 = (*(*a2 + 208))(a2);
  v9 = *(v6 + 88);
  if (v9)
  {
    v10 = 0;
    for (i = (*(v6 + 80) + 8); *i != *(v7 + 136); i += 2)
    {
      if (v9 == ++v10)
      {
        return result;
      }
    }
  }

  else
  {
    LODWORD(v10) = 0;
  }

  if (v10 != v9)
  {
    v12 = *(v6 + 80);
    v13 = v9 - 1;
    *(v6 + 88) = v13;
    result = *(v12 + 16 * v13);
    *(v12 + 16 * v10) = result;
  }

  return result;
}

uint64_t physx::NpArticulationReducedCoordinate::getLoopJoints(uint64_t a1, void *a2, unsigned int a3, unsigned int a4)
{
  v5 = (*(a1 + 192) - a4) & ~((*(a1 + 192) - a4) >> 31);
  if (v5 >= a3)
  {
    result = a3;
  }

  else
  {
    result = v5;
  }

  if (result)
  {
    v7 = (*(a1 + 184) + 8 * a4);
    v8 = result;
    do
    {
      v9 = *v7++;
      *a2++ = v9;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t physx::NpArticulationReducedCoordinate::getCoefficientMatrixSize(physx::NpArticulationReducedCoordinate *this)
{
  v1 = *(this + 6);
  if (!v1)
  {
    return 0;
  }

  v2 = v1[22];
  return 4 * v2 * (*(**v1 + 56))();
}

uint64_t physx::NpArticulationLink::setGlobalPoseInternal(uint64_t a1, uint64_t a2, int a3, double a4, double a5, double a6, double a7, double a8, double a9, int32x4_t a10)
{
  v12 = *(a1 + 380);
  if ((v12 & 0x400) != 0)
  {
    v13 = *(a1 + 112) + 224;
  }

  else
  {
    v13 = a1 + 176;
  }

  v14 = *(a1 + *(&physx::NpActor::sLazyInitOffsets + *(a1 + 8) + 18));
  v15 = *(v13 + 24) + *(v13 + 24);
  LODWORD(a9) = *(a2 + 12);
  v16 = (*&a9 * *&a9) + -0.5;
  v17 = *v13;
  v18 = vextq_s8(vextq_s8(v17, v17, 0xCuLL), *v13, 8uLL);
  a10.i64[0] = *a2;
  v19.i64[0] = *a2;
  v19.i32[2] = *(a2 + 8);
  v19.f32[3] = -COERCE_FLOAT(*a2);
  v20 = vmlaq_n_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(*v13, 3), *v13, 4uLL), v19), *v13, *&a9);
  v21 = vuzp2q_s32(a10, vzip1q_s32(a10, a10));
  v21.i32[1] = v19.i32[2];
  v21.i32[3] = *(v13 + 8);
  v17.i32[3] = v19.i32[2];
  v22 = vadd_f32(*(v13 + 16), *(v13 + 16));
  v23 = (vmuls_lane_f32(v22.f32[1], *a2, 1) + (COERCE_FLOAT(*a2) * v22.f32[0])) + (v19.f32[2] * v15);
  v24 = *(a2 + 24) + (((*&a9 * ((-COERCE_FLOAT(HIDWORD(*a2)) * v22.f32[0]) + (COERCE_FLOAT(*a2) * v22.f32[1]))) + (v15 * v16)) + (v19.f32[2] * v23));
  v25.i32[0] = vdup_lane_s32(v22, 1).u32[0];
  v25.f32[1] = v15;
  v26.i32[0] = vdup_laneq_s32(vnegq_f32(v17), 3).u32[0];
  v26.f32[1] = v19.f32[3];
  v27 = vadd_f32(*(a2 + 16), vmla_n_f32(vmla_n_f32(vmul_f32(*&vdupq_lane_s32(*&a9, 0), vmla_f32(vmul_f32(v25, v26), vext_s8(v25, v22, 4uLL), *(a2 + 4))), v22, v16), *a2, v23));
  v19.f32[3] = -COERCE_FLOAT(HIDWORD(*a2));
  v28 = vmlsq_f32(vmlaq_f32(vuzp2q_s32(vextq_s8(v20, v20, 4uLL), v20), v18, v19), v21, v17);
  v52 = vzip2q_s32(vzip1q_s32(v28, vextq_s8(v28, v28, 0xCuLL)), v28);
  v53 = v27;
  v54 = v24;
  *(a1 + 320) = v52;
  *(a1 + 336) = v27;
  *(a1 + 344) = v24;
  v29 = *(a1 + 104) >> 30;
  if (v29 == 2)
  {
    v30 = *(a1 + 96);
    if (v30[961].i8[1])
    {
LABEL_8:
      *(a1 + 380) = v12 & 0xFFDFFFFF;
      result = physx::Scb::Scene::scheduleForUpdate(v30, a1 + 96);
      *(a1 + 380) |= 0x100000u;
      if (!v14)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }
  }

  else if (v29 == 3)
  {
    v30 = *(a1 + 96);
    goto LABEL_8;
  }

  result = physx::Sc::BodyCore::setBody2World(a1 + 128, &v52);
  if (!v14)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (a3)
  {
    v32 = (*(**(a1 + 384) + 200))(*(a1 + 384));
    physx::PxArticulationImpl::wakeUpInternal(v32, 0, 1);
    goto LABEL_14;
  }

LABEL_13:
  if (!v14)
  {
    return result;
  }

LABEL_14:
  v33 = (*(**(a1 + 384) + 200))(*(a1 + 384));
  v34 = v33;
  v35 = *(v33 + 8) >> 30;
  if (v35 == 2)
  {
    v36 = *v33;
    if (*(*v34 + 7689))
    {
      goto LABEL_18;
    }
  }

  else if (v35 == 3)
  {
    v36 = *v33;
LABEL_18:
    result = physx::Scb::Scene::scheduleForUpdate(v36, v34);
    v37 = *(v34 + 8) | 0x800;
    *(v34 + 8) = v37;
    goto LABEL_20;
  }

  result = physx::Sc::ArticulationCore::setGlobalPose((v34 + 24));
  v37 = *(v34 + 8);
LABEL_20:
  v38 = v37 >> 30;
  if (v38 != 3 && (v38 != 2 || (*(*v34 + 7689) & 1) == 0))
  {
    v39 = *(v34 + 128);
    if (v39 >= 2)
    {
      v40 = *(v34 + 120);
      v41 = v39 - 1;
      v42 = (v40 + 8);
      do
      {
        v43 = *v42;
        v44 = *(*v42 + 148);
        v55[0] = *(*v42 + 144);
        v55[1] = v44;
        v46 = *(v43 + 156);
        v56 = *(v43 + 152);
        v45 = v56;
        v57 = v46;
        v48 = *(v43 + 164);
        v58 = *(v43 + 160);
        v47 = v58;
        v59 = v48;
        v60 = *(v43 + 168);
        v49 = v60;
        *(v43 + 320) = v55[0];
        *(v43 + 324) = v44;
        *(v43 + 328) = v45;
        *(v43 + 332) = v46;
        *(v43 + 336) = v47;
        *(v43 + 340) = v48;
        v50 = *(v43 + 104) >> 30;
        *(v43 + 344) = v49;
        if (v50 == 2)
        {
          v51 = *(v43 + 96);
          if ((v51[961].i8[1] & 1) == 0)
          {
LABEL_30:
            result = physx::Sc::BodyCore::setBody2World(v43 + 128, v55);
            goto LABEL_31;
          }
        }

        else
        {
          if (v50 != 3)
          {
            goto LABEL_30;
          }

          v51 = *(v43 + 96);
        }

        *(v43 + 380) &= ~0x200000u;
        result = physx::Scb::Scene::scheduleForUpdate(v51, v43 + 96);
        *(v43 + 380) |= 0x100000u;
LABEL_31:
        ++v42;
        --v41;
      }

      while (v41);
    }
  }

  return result;
}

double physx::NpArticulationReducedCoordinate::getLinkVelocity@<D0>(physx::NpArticulationReducedCoordinate *this@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(this + 6);
  if (v2)
  {
    return physx::Sc::ArticulationSim::getLinkVelocity(v2, a2);
  }

  result = 0.0;
  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

double physx::NpArticulationReducedCoordinate::getLinkAcceleration@<D0>(physx::NpArticulationReducedCoordinate *this@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(this + 6);
  if (v2)
  {
    return physx::Sc::ArticulationSim::getLinkAcceleration(v2, a2);
  }

  result = 0.0;
  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

void physx::NpArticulationReducedCoordinate::~NpArticulationReducedCoordinate(physx::NpArticulationReducedCoordinate *this)
{
  *this = &unk_1F5D235F8;
  physx::NpFactory::onArticulationRelease(physx::NpFactory::mInstance, this);
  v2 = *(this + 49);
  if ((v2 & 0x80000000) == 0 && (v2 & 0x7FFFFFFF) != 0 && *(this + 23) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *this = &unk_1F5D24168;
  physx::NpFactory::onArticulationRelease(physx::NpFactory::mInstance, this);
  physx::PxArticulationImpl::~PxArticulationImpl((this + 24));
}

{
  physx::NpArticulationReducedCoordinate::~NpArticulationReducedCoordinate(this);
  if (v1)
  {
    v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v2();
  }
}

void physx::NpArticulation::~NpArticulation(physx::NpArticulation *this)
{
  *this = &unk_1F5D237F0;
  physx::NpFactory::onArticulationRelease(physx::NpFactory::mInstance, this);
  *this = &unk_1F5D24360;
  physx::NpFactory::onArticulationRelease(physx::NpFactory::mInstance, this);
  physx::PxArticulationImpl::~PxArticulationImpl((this + 24));
}

{
  physx::NpArticulation::~NpArticulation(this);
  if (v1)
  {
    v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v2();
  }
}

uint64_t physx::NpArticulation::getInternalDriveIterations(physx::NpArticulation *this)
{
  if (*(this + 32))
  {
    v1 = *(this + 5);
  }

  else
  {
    v1 = (this + 56);
  }

  return *v1;
}

int32x2_t *physx::NpArticulation::setInternalDriveIterations(int32x2_t *this, __int32 a2)
{
  v3 = this;
  v4 = this[4].u32[0];
  if (v4 >> 30 == 2)
  {
    this = this[3];
    if (this[961].i8[1])
    {
      goto LABEL_5;
    }

LABEL_8:
    v3[7].i32[0] = a2;
    return this;
  }

  if (v4 >> 30 != 3)
  {
    goto LABEL_8;
  }

  this = this[3];
LABEL_5:
  Stream = v3[5];
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(this, HIBYTE(v4) & 0xF);
    v3[5] = Stream;
    this = v3[3];
  }

  *Stream = a2;
  this = physx::Scb::Scene::scheduleForUpdate(this, &v3[3]);
  v3[4].i32[0] |= 1u;
  return this;
}

uint64_t physx::NpArticulation::getExternalDriveIterations(physx::NpArticulation *this)
{
  if ((*(this + 32) & 2) != 0)
  {
    v1 = (*(this + 5) + 4);
  }

  else
  {
    v1 = (this + 60);
  }

  return *v1;
}

int32x2_t *physx::NpArticulation::setExternalDriveIterations(int32x2_t *this, __int32 a2)
{
  v3 = this;
  v4 = this[4].u32[0];
  if (v4 >> 30 == 2)
  {
    this = this[3];
    if (this[961].i8[1])
    {
      goto LABEL_5;
    }

LABEL_8:
    v3[7].i32[1] = a2;
    return this;
  }

  if (v4 >> 30 != 3)
  {
    goto LABEL_8;
  }

  this = this[3];
LABEL_5:
  Stream = v3[5];
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(this, HIBYTE(v4) & 0xF);
    v3[5] = Stream;
    this = v3[3];
  }

  *(Stream + 4) = a2;
  this = physx::Scb::Scene::scheduleForUpdate(this, &v3[3]);
  v3[4].i32[0] |= 2u;
  return this;
}

uint64_t physx::NpArticulation::getMaxProjectionIterations(physx::NpArticulation *this)
{
  if ((*(this + 32) & 4) != 0)
  {
    v1 = (*(this + 5) + 8);
  }

  else
  {
    v1 = (this + 64);
  }

  return *v1;
}

int32x2_t *physx::NpArticulation::setMaxProjectionIterations(int32x2_t *this, __int32 a2)
{
  v3 = this;
  v4 = this[4].u32[0];
  if (v4 >> 30 == 2)
  {
    this = this[3];
    if (this[961].i8[1])
    {
      goto LABEL_5;
    }

LABEL_8:
    v3[8].i32[0] = a2;
    return this;
  }

  if (v4 >> 30 != 3)
  {
    goto LABEL_8;
  }

  this = this[3];
LABEL_5:
  Stream = v3[5];
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(this, HIBYTE(v4) & 0xF);
    v3[5] = Stream;
    this = v3[3];
  }

  *(Stream + 8) = a2;
  this = physx::Scb::Scene::scheduleForUpdate(this, &v3[3]);
  v3[4].i32[0] |= 4u;
  return this;
}

float physx::NpArticulation::getSeparationTolerance(physx::NpArticulation *this)
{
  if ((*(this + 32) & 8) != 0)
  {
    v1 = (*(this + 5) + 12);
  }

  else
  {
    v1 = this + 72;
  }

  return *v1;
}

int32x2_t *physx::NpArticulation::setSeparationTolerance(int32x2_t *this, float a2)
{
  v3 = this;
  v4 = this[4].u32[0];
  if (v4 >> 30 == 2)
  {
    this = this[3];
    if (this[961].i8[1])
    {
      goto LABEL_5;
    }

LABEL_8:
    *v3[9].i32 = a2;
    return this;
  }

  if (v4 >> 30 != 3)
  {
    goto LABEL_8;
  }

  this = this[3];
LABEL_5:
  Stream = v3[5];
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(this, HIBYTE(v4) & 0xF);
    v3[5] = Stream;
    this = v3[3];
  }

  *(Stream + 12) = a2;
  this = physx::Scb::Scene::scheduleForUpdate(this, &v3[3]);
  v3[4].i32[0] |= 8u;
  return this;
}

unsigned __int16 *physx::NpArticulation::createDriveCache(physx::NpArticulation *this, float a2, unsigned __int16 a3)
{
  result = *(this + 6);
  if (result)
  {
    return physx::Sc::ArticulationSim::createDriveCache(result, a2, a3);
  }

  return result;
}

void physx::NpArticulation::updateDriveCache(uint64_t a1, unsigned __int16 *a2, unsigned __int16 a3, float a4)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    physx::Sc::ArticulationSim::updateDriveCache(v4, a2, a3, a4);
  }
}

uint64_t physx::NpArticulation::releaseDriveCache(uint64_t result)
{
  if (*(result + 48))
  {
    return (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  return result;
}

void physx::NpArticulation::applyImpulse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 100))
  {
    physx::PxArticulationImpl::wakeUp((a1 + 24));
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    physx::Sc::ArticulationSim::applyImpulse(v5);
  }

  if (*(a1 + 152))
  {
    v6 = 0;
    do
    {
      v7 = *(*(a1 + 144) + 8 * v6);
      v12 = *(v7 + 208);
      v13 = *(v7 + 216);
      v10 = *(v7 + 224);
      v11 = *(v7 + 232);
      (*(*v7 + 320))(v7, &v12, 1, a4);
      v8 = *(*(a1 + 144) + 8 * v6);
      (*(*v8 + 336))(v8, &v10, 1, v9);
      ++v6;
    }

    while (v6 < *(a1 + 152));
  }
}

int32x2_t *physx::PxArticulationImpl::wakeUp(physx::PxArticulationImpl *this)
{
  v2 = *(this + 2);
  if ((v2 >> 30) - 1 > 1)
  {
    v3 = 0;
  }

  else if (*this)
  {
    v3 = *this - 16;
  }

  else
  {
    v3 = 0;
  }

  if (*(this + 32))
  {
    v4 = 0;
    while (1)
    {
      v5 = *(*(this + 15) + 8 * v4);
      v6 = *(v3 + 0x2000);
      v7 = *(v5 + 104) >> 30;
      if (v7 == 2)
      {
        v8 = *(v5 + 96);
        if ((v8[961].i8[1] & 1) == 0)
        {
LABEL_13:
          *(v5 + 376) = 0;
          *(v5 + 372) = v6;
          physx::Sc::BodyCore::setWakeCounter(v5 + 128, v6, 1);
          goto LABEL_14;
        }
      }

      else
      {
        if (v7 != 3)
        {
          goto LABEL_13;
        }

        v8 = *(v5 + 96);
      }

      *(v5 + 376) = 0;
      *(v5 + 372) = v6;
      physx::Scb::Scene::scheduleForUpdate(v8, v5 + 96);
      *(v5 + 380) = *(v5 + 380) & 0xF8FFFFFF | 0x5000000;
LABEL_14:
      if (++v4 >= *(this + 32))
      {
        v2 = *(this + 2);
        break;
      }
    }
  }

  result = *this;
  v10 = *(*this + 8176);
  *(this + 18) = v10;
  *(this + 76) = 0;
  v11 = v2 >> 30;
  if (v11 == 3 || v11 == 2 && (result[961].i8[1] & 1) != 0)
  {
    result = physx::Scb::Scene::scheduleForUpdate(result, this);
    *(this + 2) = *(this + 2) & 0xFFFFFC7F | 0x280;
  }

  else
  {
    *(this + 15) = v10;
  }

  return result;
}

double physx::NpArticulation::computeImpulseResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 48);
  if (v7)
  {
    *&result = physx::Sc::ArticulationSim::computeImpulseResponse(v7, (a2 + 128), a3, a4, a5, a6, a7).n128_u64[0];
  }

  return result;
}

uint64_t physx::NpArticulationJoint::resolveReferences(uint64_t result, uint64_t (***a2)(void, uint64_t))
{
  v3 = result;
  if (*(result + 424))
  {
    result = (**a2)(a2, 0x80000000);
    v3[53] = result;
  }

  if (v3[54])
  {
    result = (**a2)(a2, 0x80000000);
    v3[54] = result;
  }

  v3[52] = v3;
  return result;
}

uint64_t physx::NpArticulationJointTemplate<physx::PxArticulationJoint>::NpArticulationJointTemplate(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 8) = a2;
  *(a1 + 10) = 1;
  *a1 = &unk_1F5D244D0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
  physx::Sc::ArticulationJointCore::ArticulationJointCore(a1 + 40, a4, a6, a2 == 15);
  *(a1 + 24) = *(a1 + 24) & 0xF0FFFFFF | 0x8000000;
  *(a1 + 424) = a3;
  *(a1 + 432) = a5;
  *(a1 + 408) = (*(**(a3 + 384) + 200))(*(a3 + 384)) + 24;
  *(a1 + 416) = a1;
  return a1;
}

void physx::NpArticulationJoint::~NpArticulationJoint(physx::NpArticulationJoint *this)
{
  *this = &unk_1F5D244D0;
}

{
  *this = &unk_1F5D244D0;
  (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, this);
}

__n128 physx::NpArticulationJoint::setTargetOrientation(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 24);
  if (v4 >> 30 == 2)
  {
    v5 = *(a1 + 16);
    if (v5[961].i8[1])
    {
      goto LABEL_5;
    }

LABEL_8:
    result = *a2;
    *(a1 + 320) = *a2;
    return result;
  }

  if (v4 >> 30 != 3)
  {
    goto LABEL_8;
  }

  v5 = *(a1 + 16);
LABEL_5:
  Stream = *(a1 + 32);
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(v5, HIBYTE(v4) & 0xF);
    *(a1 + 32) = Stream;
    v5 = *(a1 + 16);
  }

  *(Stream + 56) = *a2;
  physx::Scb::Scene::scheduleForUpdate(v5, a1 + 16);
  *(a1 + 24) |= 4u;
  return result;
}

__n128 physx::NpArticulationJoint::getTargetOrientation@<Q0>(physx::NpArticulationJoint *this@<X0>, __n128 *a2@<X8>)
{
  if ((*(this + 24) & 4) != 0)
  {
    v2 = (*(this + 4) + 56);
  }

  else
  {
    v2 = (this + 320);
  }

  result = *v2;
  *a2 = *v2;
  return result;
}

float physx::NpArticulationJoint::setTargetVelocity(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  if (v4 >> 30 == 2)
  {
    v5 = *(a1 + 16);
    if (v5[961].i8[1])
    {
      goto LABEL_5;
    }

LABEL_8:
    *(a1 + 336) = *a2;
    result = *(a2 + 8);
    *(a1 + 344) = result;
    return result;
  }

  if (v4 >> 30 != 3)
  {
    goto LABEL_8;
  }

  v5 = *(a1 + 16);
LABEL_5:
  Stream = *(a1 + 32);
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(v5, HIBYTE(v4) & 0xF);
    *(a1 + 32) = Stream;
    v5 = *(a1 + 16);
  }

  *(Stream + 72) = *a2;
  *(Stream + 80) = *(a2 + 8);
  physx::Scb::Scene::scheduleForUpdate(v5, a1 + 16);
  *(a1 + 24) |= 8u;
  return result;
}

uint64_t physx::NpArticulationJoint::getDriveType(physx::NpArticulationJoint *this)
{
  if (*(this + 26))
  {
    return *(*(this + 4) + 132);
  }

  else
  {
    return *(this + 378);
  }
}

int32x2_t *physx::NpArticulationJoint::setDriveType(int32x2_t *result, int a2)
{
  v3 = result;
  v4 = result[3].u32[0];
  if (v4 >> 30 == 2)
  {
    result = result[2];
    if (result[961].i8[1])
    {
      goto LABEL_5;
    }

LABEL_8:
    v3[47].i8[2] = a2;
    return result;
  }

  if (v4 >> 30 != 3)
  {
    goto LABEL_8;
  }

  result = result[2];
LABEL_5:
  Stream = v3[4];
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(result, HIBYTE(v4) & 0xF);
    v3[4] = Stream;
    result = v3[2];
  }

  *(Stream + 132) = a2;
  result = physx::Scb::Scene::scheduleForUpdate(result, &v3[2]);
  v3[3].i32[0] |= 0x10000u;
  return result;
}

float physx::NpArticulationJoint::getTargetVelocity@<S0>(physx::NpArticulationJoint *this@<X0>, uint64_t a2@<X8>)
{
  if ((*(this + 24) & 8) != 0)
  {
    v2 = (*(this + 4) + 72);
  }

  else
  {
    v2 = (this + 336);
  }

  *a2 = *v2;
  result = v2[2];
  *(a2 + 8) = result;
  return result;
}

int32x2_t *physx::NpArticulationJoint::setStiffness(int32x2_t *this, float a2)
{
  v3 = this;
  v4 = this[3].u32[0];
  if (v4 >> 30 == 2)
  {
    this = this[2];
    if (this[961].i8[1])
    {
      goto LABEL_5;
    }

LABEL_8:
    *&v3[43].i32[1] = a2;
    return this;
  }

  if (v4 >> 30 != 3)
  {
    goto LABEL_8;
  }

  this = this[2];
LABEL_5:
  Stream = v3[4];
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(this, HIBYTE(v4) & 0xF);
    v3[4] = Stream;
    this = v3[2];
  }

  *(Stream + 84) = a2;
  this = physx::Scb::Scene::scheduleForUpdate(this, &v3[2]);
  v3[3].i32[0] |= 0x10u;
  return this;
}

float physx::NpArticulationJoint::getStiffness(physx::NpArticulationJoint *this)
{
  if ((*(this + 24) & 0x10) != 0)
  {
    v1 = (*(this + 4) + 84);
  }

  else
  {
    v1 = this + 348;
  }

  return *v1;
}

int32x2_t *physx::NpArticulationJoint::setDamping(int32x2_t *this, float a2)
{
  v3 = this;
  v4 = this[3].u32[0];
  if (v4 >> 30 == 2)
  {
    this = this[2];
    if (this[961].i8[1])
    {
      goto LABEL_5;
    }

LABEL_8:
    *v3[44].i32 = a2;
    return this;
  }

  if (v4 >> 30 != 3)
  {
    goto LABEL_8;
  }

  this = this[2];
LABEL_5:
  Stream = v3[4];
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(this, HIBYTE(v4) & 0xF);
    v3[4] = Stream;
    this = v3[2];
  }

  *(Stream + 88) = a2;
  this = physx::Scb::Scene::scheduleForUpdate(this, &v3[2]);
  v3[3].i32[0] |= 0x20u;
  return this;
}

float physx::NpArticulationJoint::getDamping(physx::NpArticulationJoint *this)
{
  if ((*(this + 24) & 0x20) != 0)
  {
    v1 = (*(this + 4) + 88);
  }

  else
  {
    v1 = this + 352;
  }

  return *v1;
}

void physx::NpArticulationJoint::setSwingLimitContactDistance(physx::NpArticulationJoint *this, float a2)
{
  v4 = *(this + 6);
  if (v4 >> 30 == 2)
  {
    v5 = *(this + 2);
    if (v5[961].i8[1])
    {
      goto LABEL_5;
    }

LABEL_8:
    *(this + 91) = a2;
    *(this + 98) = tanf(a2 * 0.25);
    return;
  }

  if (v4 >> 30 != 3)
  {
    goto LABEL_8;
  }

  v5 = *(this + 2);
LABEL_5:
  Stream = *(this + 4);
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(v5, HIBYTE(v4) & 0xF);
    *(this + 4) = Stream;
    v5 = *(this + 2);
  }

  *(Stream + 108) = a2;
  physx::Scb::Scene::scheduleForUpdate(v5, this + 16);
  *(this + 6) |= 0x400u;
}

float physx::NpArticulationJoint::getSwingLimitContactDistance(physx::NpArticulationJoint *this)
{
  if ((*(this + 25) & 4) != 0)
  {
    v1 = (*(this + 4) + 108);
  }

  else
  {
    v1 = this + 364;
  }

  return *v1;
}

void physx::NpArticulationJoint::setTwistLimitContactDistance(physx::NpArticulationJoint *this, float a2)
{
  v4 = *(this + 6);
  if (v4 >> 30 == 2)
  {
    v5 = *(this + 2);
    if (v5[961].i8[1])
    {
      goto LABEL_5;
    }

LABEL_8:
    *(this + 95) = a2;
    *(this + 101) = tanf(a2 * 0.25);
    return;
  }

  if (v4 >> 30 != 3)
  {
    goto LABEL_8;
  }

  v5 = *(this + 2);
LABEL_5:
  Stream = *(this + 4);
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(v5, HIBYTE(v4) & 0xF);
    *(this + 4) = Stream;
    v5 = *(this + 2);
  }

  *(Stream + 124) = a2;
  physx::Scb::Scene::scheduleForUpdate(v5, this + 16);
  *(this + 6) |= 0x4000u;
}

float physx::NpArticulationJoint::getTwistLimitContactDistance(physx::NpArticulationJoint *this)
{
  if ((*(this + 25) & 0x40) != 0)
  {
    v1 = (*(this + 4) + 124);
  }

  else
  {
    v1 = this + 380;
  }

  return *v1;
}

uint64_t physx::NpArticulationJoint::getJointType(physx::NpArticulationJoint *this)
{
  if ((*(this + 26) & 8) != 0)
  {
    return *(*(this + 4) + 136);
  }

  else
  {
    return *(this + 318);
  }
}

int32x2_t *physx::NpArticulationJoint::setJointType(uint64_t a1, int a2)
{
  v4 = *(a1 + 24);
  if (v4 >> 30 == 2)
  {
    v5 = *(a1 + 16);
    if (v5[961].i8[1])
    {
      goto LABEL_5;
    }
  }

  else if (v4 >> 30 == 3)
  {
    v5 = *(a1 + 16);
LABEL_5:
    Stream = *(a1 + 32);
    if (!Stream)
    {
      Stream = physx::Scb::Scene::getStream(v5, HIBYTE(v4) & 0xF);
      *(a1 + 32) = Stream;
      v5 = *(a1 + 16);
    }

    *(Stream + 136) = a2;
    result = physx::Scb::Scene::scheduleForUpdate(v5, a1 + 16);
    *(a1 + 24) |= 0x80000u;
    return result;
  }

  return physx::Sc::ArticulationJointCore::setJointType(a1 + 40, a2);
}

uint64_t physx::NpArticulationJoint::setMotion(uint64_t a1, unsigned int a2, int a3)
{
  physx::Scb::ArticulationJoint::setMotion(a1 + 16, a2, a3);
  v4 = (*(**(a1 + 432) + 496))();
  result = (*(*v4 + 200))(v4);
  ++*(result + 152);
  return result;
}

physx::Sc::ArticulationJointSim *physx::Scb::ArticulationJoint::setMotion(uint64_t a1, unsigned int a2, int a3)
{
  v6 = *(a1 + 8);
  if (v6 >> 30 == 3 || v6 >> 30 == 2 && (*(*a1 + 7689) & 1) != 0)
  {
    Stream = *(a1 + 16);
    if ((v6 & 0x800000) != 0)
    {
      v12 = *a1;
      if (Stream)
      {
LABEL_17:
        *(Stream + 4 * a2 + 348) = a3;
        result = physx::Scb::Scene::scheduleForUpdate(v12, a1);
        *(a1 + 8) |= 0x800000u;
        return result;
      }

      Stream = physx::Scb::Scene::getStream(*a1, *(a1 + 11) & 0xF);
      *(a1 + 16) = Stream;
    }

    else
    {
      if (!Stream)
      {
        Stream = physx::Scb::Scene::getStream(*a1, HIBYTE(v6) & 0xF);
        *(a1 + 16) = Stream;
      }

      v8 = (a1 + 290);
      for (i = 348; i != 372; i += 4)
      {
        v10 = *v8++;
        *(Stream + i) = v10;
      }
    }

    v12 = *a1;
    goto LABEL_17;
  }

  *(a1 + a2 + 290) = a3;
  *(a1 + 301) |= 1u;
  result = *(a1 + 24);
  if (result)
  {

    return physx::Sc::ArticulationJointSim::setDirty(result);
  }

  return result;
}

uint64_t physx::NpArticulationJoint::getMotion(uint64_t a1, unsigned int a2)
{
  if ((*(a1 + 26) & 0x80) != 0)
  {
    return *(*(a1 + 32) + 4 * a2 + 348);
  }

  else
  {
    return *(a1 + a2 + 306);
  }
}

int32x2_t *physx::NpArticulationJoint::setFrictionCoefficient(int32x2_t *this, float a2)
{
  v3 = this;
  v4 = this[3].u32[0];
  if (v4 >> 30 == 2)
  {
    this = this[2];
    if (this[961].i8[1])
    {
      goto LABEL_5;
    }

LABEL_8:
    *v3[37].i32 = a2;
    return this;
  }

  if (v4 >> 30 != 3)
  {
    goto LABEL_8;
  }

  this = this[2];
LABEL_5:
  Stream = v3[4];
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(this, HIBYTE(v4) & 0xF);
    v3[4] = Stream;
    this = v3[2];
  }

  *(Stream + 92) = a2;
  this = physx::Scb::Scene::scheduleForUpdate(this, &v3[2]);
  v3[3].i32[0] |= 0x40u;
  return this;
}

float physx::NpArticulationJoint::getFrictionCoefficient(physx::NpArticulationJoint *this)
{
  if ((*(this + 24) & 0x40) != 0)
  {
    v1 = (*(this + 4) + 92);
  }

  else
  {
    v1 = this + 296;
  }

  return *v1;
}

int32x2_t *physx::NpArticulationJoint::setInternalCompliance(int32x2_t *this, float a2)
{
  v3 = this;
  v4 = this[3].u32[0];
  if (v4 >> 30 == 2)
  {
    this = this[2];
    if (this[961].i8[1])
    {
      goto LABEL_5;
    }

LABEL_8:
    *&v3[44].i32[1] = a2;
    return this;
  }

  if (v4 >> 30 != 3)
  {
    goto LABEL_8;
  }

  this = this[2];
LABEL_5:
  Stream = v3[4];
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(this, HIBYTE(v4) & 0xF);
    v3[4] = Stream;
    this = v3[2];
  }

  *(Stream + 100) = a2;
  this = physx::Scb::Scene::scheduleForUpdate(this, &v3[2]);
  v3[3].i32[0] |= 0x100u;
  return this;
}

float physx::NpArticulationJoint::getInternalCompliance(physx::NpArticulationJoint *this)
{
  if (*(this + 25))
  {
    v1 = (*(this + 4) + 100);
  }

  else
  {
    v1 = this + 356;
  }

  return *v1;
}

int32x2_t *physx::NpArticulationJoint::setExternalCompliance(int32x2_t *this, float a2)
{
  v3 = this;
  v4 = this[3].u32[0];
  if (v4 >> 30 == 2)
  {
    this = this[2];
    if (this[961].i8[1])
    {
      goto LABEL_5;
    }

LABEL_8:
    *v3[45].i32 = a2;
    return this;
  }

  if (v4 >> 30 != 3)
  {
    goto LABEL_8;
  }

  this = this[2];
LABEL_5:
  Stream = v3[4];
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(this, HIBYTE(v4) & 0xF);
    v3[4] = Stream;
    this = v3[2];
  }

  *(Stream + 104) = a2;
  this = physx::Scb::Scene::scheduleForUpdate(this, &v3[2]);
  v3[3].i32[0] |= 0x200u;
  return this;
}

float physx::NpArticulationJoint::getExternalCompliance(physx::NpArticulationJoint *this)
{
  if ((*(this + 25) & 2) != 0)
  {
    v1 = (*(this + 4) + 104);
  }

  else
  {
    v1 = this + 360;
  }

  return *v1;
}

void physx::NpArticulationJoint::setSwingLimit(physx::NpArticulationJoint *this, float a2, float a3)
{
  v6 = *(this + 6);
  if (v6 >> 30 == 2)
  {
    v7 = *(this + 2);
    if (v7[961].i8[1])
    {
      goto LABEL_5;
    }

LABEL_8:
    *(this + 28) = a2;
    *(this + 30) = a3;
    *(this + 96) = tanf(a2 * 0.25);
    *(this + 97) = tanf(a3 * 0.25);
    return;
  }

  if (v6 >> 30 != 3)
  {
    goto LABEL_8;
  }

  v7 = *(this + 2);
LABEL_5:
  Stream = *(this + 4);
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(v7, HIBYTE(v6) & 0xF);
    *(this + 4) = Stream;
    v7 = *(this + 2);
  }

  *(Stream + 140) = a2;
  *(Stream + 144) = a3;
  physx::Scb::Scene::scheduleForUpdate(v7, this + 16);
  *(this + 6) |= 0x20000u;
}

float physx::NpArticulationJoint::getSwingLimit(physx::NpArticulationJoint *this, float *a2, float *a3)
{
  if ((*(this + 26) & 2) != 0)
  {
    v5 = *(this + 4);
    v3 = (v5 + 140);
    v4 = (v5 + 144);
  }

  else
  {
    v3 = (this + 112);
    v4 = (this + 120);
  }

  *a2 = *v3;
  result = *v4;
  *a3 = *v4;
  return result;
}

int32x2_t *physx::NpArticulationJoint::setTangentialStiffness(int32x2_t *this, float a2)
{
  v3 = this;
  v4 = this[3].u32[0];
  if (v4 >> 30 == 2)
  {
    this = this[2];
    if (this[961].i8[1])
    {
      goto LABEL_5;
    }

LABEL_8:
    *v3[46].i32 = a2;
    return this;
  }

  if (v4 >> 30 != 3)
  {
    goto LABEL_8;
  }

  this = this[2];
LABEL_5:
  Stream = v3[4];
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(this, HIBYTE(v4) & 0xF);
    v3[4] = Stream;
    this = v3[2];
  }

  *(Stream + 116) = a2;
  this = physx::Scb::Scene::scheduleForUpdate(this, &v3[2]);
  v3[3].i32[0] |= 0x1000u;
  return this;
}

float physx::NpArticulationJoint::getTangentialStiffness(physx::NpArticulationJoint *this)
{
  if ((*(this + 25) & 0x10) != 0)
  {
    v1 = (*(this + 4) + 116);
  }

  else
  {
    v1 = this + 368;
  }

  return *v1;
}

int32x2_t *physx::NpArticulationJoint::setTangentialDamping(int32x2_t *this, float a2)
{
  v3 = this;
  v4 = this[3].u32[0];
  if (v4 >> 30 == 2)
  {
    this = this[2];
    if (this[961].i8[1])
    {
      goto LABEL_5;
    }

LABEL_8:
    *&v3[46].i32[1] = a2;
    return this;
  }

  if (v4 >> 30 != 3)
  {
    goto LABEL_8;
  }

  this = this[2];
LABEL_5:
  Stream = v3[4];
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(this, HIBYTE(v4) & 0xF);
    v3[4] = Stream;
    this = v3[2];
  }

  *(Stream + 120) = a2;
  this = physx::Scb::Scene::scheduleForUpdate(this, &v3[2]);
  v3[3].i32[0] |= 0x2000u;
  return this;
}

float physx::NpArticulationJoint::getTangentialDamping(physx::NpArticulationJoint *this)
{
  if ((*(this + 25) & 0x20) != 0)
  {
    v1 = (*(this + 4) + 120);
  }

  else
  {
    v1 = this + 372;
  }

  return *v1;
}

int32x2_t *physx::NpArticulationJoint::setSwingLimitEnabled(int32x2_t *this, __int8 a2)
{
  v3 = this;
  v4 = this[3].u32[0];
  if (v4 >> 30 == 2)
  {
    this = this[2];
    if (this[961].i8[1])
    {
      goto LABEL_5;
    }

LABEL_8:
    v3[47].i8[0] = a2;
    return this;
  }

  if (v4 >> 30 != 3)
  {
    goto LABEL_8;
  }

  this = this[2];
LABEL_5:
  Stream = v3[4];
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(this, HIBYTE(v4) & 0xF);
    v3[4] = Stream;
    this = v3[2];
  }

  *(Stream + 112) = a2;
  this = physx::Scb::Scene::scheduleForUpdate(this, &v3[2]);
  v3[3].i32[0] |= 0x800u;
  return this;
}

uint64_t physx::NpArticulationJoint::getSwingLimitEnabled(physx::NpArticulationJoint *this)
{
  if ((*(this + 25) & 8) != 0)
  {
    v1 = (*(this + 4) + 112);
  }

  else
  {
    v1 = this + 376;
  }

  return *v1;
}

void physx::NpArticulationJoint::setTwistLimit(physx::NpArticulationJoint *this, float a2, float a3)
{
  v6 = *(this + 6);
  if (v6 >> 30 == 2)
  {
    v7 = *(this + 2);
    if (v7[961].i8[1])
    {
      goto LABEL_5;
    }

LABEL_8:
    *(this + 26) = a2;
    *(this + 27) = a3;
    *(this + 99) = tanf(a3 * 0.25);
    *(this + 100) = tanf(a2 * 0.25);
    return;
  }

  if (v6 >> 30 != 3)
  {
    goto LABEL_8;
  }

  v7 = *(this + 2);
LABEL_5:
  Stream = *(this + 4);
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(v7, HIBYTE(v6) & 0xF);
    *(this + 4) = Stream;
    v7 = *(this + 2);
  }

  *(Stream + 148) = a2;
  *(Stream + 152) = a3;
  physx::Scb::Scene::scheduleForUpdate(v7, this + 16);
  *(this + 6) |= 0x40000u;
}

float physx::NpArticulationJoint::getTwistLimit(physx::NpArticulationJoint *this, float *a2, float *a3)
{
  if ((*(this + 26) & 4) != 0)
  {
    v5 = *(this + 4);
    v3 = (v5 + 148);
    v4 = (v5 + 152);
  }

  else
  {
    v3 = (this + 104);
    v4 = (this + 108);
  }

  *a2 = *v3;
  result = *v4;
  *a3 = *v4;
  return result;
}

int32x2_t *physx::NpArticulationJoint::setTwistLimitEnabled(int32x2_t *this, __int8 a2)
{
  v3 = this;
  v4 = this[3].u32[0];
  if (v4 >> 30 == 2)
  {
    this = this[2];
    if (this[961].i8[1])
    {
      goto LABEL_5;
    }

LABEL_8:
    v3[47].i8[1] = a2;
    return this;
  }

  if (v4 >> 30 != 3)
  {
    goto LABEL_8;
  }

  this = this[2];
LABEL_5:
  Stream = v3[4];
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(this, HIBYTE(v4) & 0xF);
    v3[4] = Stream;
    this = v3[2];
  }

  *(Stream + 128) = a2;
  this = physx::Scb::Scene::scheduleForUpdate(this, &v3[2]);
  v3[3].i32[0] |= 0x8000u;
  return this;
}

uint64_t physx::NpArticulationJoint::getTwistLimitEnabled(physx::NpArticulationJoint *this)
{
  if ((*(this + 25) & 0x80) != 0)
  {
    v1 = (*(this + 4) + 128);
  }

  else
  {
    v1 = this + 377;
  }

  return *v1;
}

uint64_t physx::NpArticulationJointReducedCoordinate::resolveReferences(uint64_t result, uint64_t (***a2)(void, uint64_t))
{
  v3 = result;
  if (*(result + 424))
  {
    result = (**a2)(a2, 0x80000000);
    v3[53] = result;
  }

  if (v3[54])
  {
    result = (**a2)(a2, 0x80000000);
    v3[54] = result;
  }

  v3[52] = v3;
  return result;
}

uint64_t physx::NpArticulationJointTemplate<physx::PxArticulationJointReducedCoordinate>::NpArticulationJointTemplate(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 8) = a2;
  *(a1 + 10) = 1;
  *a1 = &unk_1F5D24640;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
  physx::Sc::ArticulationJointCore::ArticulationJointCore(a1 + 40, a4, a6, a2 == 15);
  *(a1 + 24) = *(a1 + 24) & 0xF0FFFFFF | 0x8000000;
  *(a1 + 424) = a3;
  *(a1 + 432) = a5;
  *(a1 + 408) = (*(**(a3 + 384) + 200))(*(a3 + 384)) + 24;
  *(a1 + 416) = a1;
  return a1;
}

void physx::NpArticulationJointReducedCoordinate::~NpArticulationJointReducedCoordinate(physx::NpArticulationJointReducedCoordinate *this)
{
  *this = &unk_1F5D24640;
}

{
  *this = &unk_1F5D24640;
  (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, this);
}

int32x2_t *physx::NpArticulationJointReducedCoordinate::setJointType(uint64_t a1, int a2)
{
  v4 = *(a1 + 24);
  if (v4 >> 30 == 2)
  {
    v5 = *(a1 + 16);
    if (v5[961].i8[1])
    {
      goto LABEL_5;
    }
  }

  else if (v4 >> 30 == 3)
  {
    v5 = *(a1 + 16);
LABEL_5:
    Stream = *(a1 + 32);
    if (!Stream)
    {
      Stream = physx::Scb::Scene::getStream(v5, HIBYTE(v4) & 0xF);
      *(a1 + 32) = Stream;
      v5 = *(a1 + 16);
    }

    *(Stream + 136) = a2;
    result = physx::Scb::Scene::scheduleForUpdate(v5, a1 + 16);
    *(a1 + 24) |= 0x80000u;
    return result;
  }

  return physx::Sc::ArticulationJointCore::setJointType(a1 + 40, a2);
}

uint64_t physx::NpArticulationJointReducedCoordinate::getJointType(physx::NpArticulationJointReducedCoordinate *this)
{
  if ((*(this + 26) & 8) != 0)
  {
    return *(*(this + 4) + 136);
  }

  else
  {
    return *(this + 318);
  }
}

uint64_t physx::NpArticulationJointReducedCoordinate::setMotion(uint64_t a1, unsigned int a2, int a3)
{
  physx::Scb::ArticulationJoint::setMotion(a1 + 16, a2, a3);
  v4 = (*(**(a1 + 432) + 496))();
  result = (*(*v4 + 200))(v4);
  ++*(result + 152);
  return result;
}

uint64_t physx::NpArticulationJointReducedCoordinate::getMotion(uint64_t a1, unsigned int a2)
{
  if ((*(a1 + 26) & 0x80) != 0)
  {
    return *(*(a1 + 32) + 4 * a2 + 348);
  }

  else
  {
    return *(a1 + a2 + 306);
  }
}

int32x2_t *physx::NpArticulationJointReducedCoordinate::setFrictionCoefficient(int32x2_t *this, float a2)
{
  v3 = this;
  v4 = this[3].u32[0];
  if (v4 >> 30 == 2)
  {
    this = this[2];
    if (this[961].i8[1])
    {
      goto LABEL_5;
    }

LABEL_8:
    *v3[37].i32 = a2;
    return this;
  }

  if (v4 >> 30 != 3)
  {
    goto LABEL_8;
  }

  this = this[2];
LABEL_5:
  Stream = v3[4];
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(this, HIBYTE(v4) & 0xF);
    v3[4] = Stream;
    this = v3[2];
  }

  *(Stream + 92) = a2;
  this = physx::Scb::Scene::scheduleForUpdate(this, &v3[2]);
  v3[3].i32[0] |= 0x40u;
  return this;
}

float physx::NpArticulationJointReducedCoordinate::getFrictionCoefficient(physx::NpArticulationJointReducedCoordinate *this)
{
  if ((*(this + 24) & 0x40) != 0)
  {
    v1 = (*(this + 4) + 92);
  }

  else
  {
    v1 = this + 296;
  }

  return *v1;
}

int32x2_t *physx::NpArticulationJointReducedCoordinate::setMaxJointVelocity(int32x2_t *this, float a2)
{
  v3 = this;
  v4 = this[3].u32[0];
  if (v4 >> 30 == 2)
  {
    this = this[2];
    if (this[961].i8[1])
    {
      goto LABEL_5;
    }

LABEL_8:
    *v3[39].i32 = a2;
    return this;
  }

  if (v4 >> 30 != 3)
  {
    goto LABEL_8;
  }

  this = this[2];
LABEL_5:
  Stream = v3[4];
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(this, HIBYTE(v4) & 0xF);
    v3[4] = Stream;
    this = v3[2];
  }

  *(Stream + 96) = a2;
  this = physx::Scb::Scene::scheduleForUpdate(this, &v3[2]);
  v3[3].i32[0] |= 0x80u;
  return this;
}

float physx::NpArticulationJointReducedCoordinate::getMaxJointVelocity(physx::NpArticulationJointReducedCoordinate *this)
{
  if ((*(this + 24) & 0x80) != 0)
  {
    v1 = (*(this + 4) + 96);
  }

  else
  {
    v1 = this + 312;
  }

  return *v1;
}

physx::Sc::ArticulationJointSim *physx::NpArticulationJointReducedCoordinate::setLimit(uint64_t a1, unsigned int a2, float a3, float a4)
{
  v8 = *(a1 + 24);
  if (v8 >> 30 == 3 || v8 >> 30 == 2 && (*(*(a1 + 16) + 7689) & 1) != 0)
  {
    Stream = *(a1 + 32);
    if ((v8 & 0x100000) != 0)
    {
      if (!Stream)
      {
        Stream = physx::Scb::Scene::getStream(*(a1 + 16), HIBYTE(v8) & 0xF);
        *(a1 + 32) = Stream;
      }
    }

    else
    {
      if (!Stream)
      {
        Stream = physx::Scb::Scene::getStream(*(a1 + 16), HIBYTE(v8) & 0xF);
        *(a1 + 32) = Stream;
      }

      v10 = 0;
      v11 = a1 + 104;
      do
      {
        v12 = Stream + v10;
        *(v12 + 156) = *(v11 + v10);
        *(v12 + 160) = *(v11 + v10 + 4);
        v10 += 8;
      }

      while (v10 != 48);
    }

    v15 = Stream + 8 * a2;
    *(v15 + 156) = a3;
    *(v15 + 160) = a4;
    result = physx::Scb::Scene::scheduleForUpdate(*(a1 + 16), a1 + 16);
    *(a1 + 24) |= 0x100000u;
  }

  else
  {
    v13 = a1 + 8 * a2;
    *(v13 + 104) = a3;
    *(v13 + 108) = a4;
    *(a1 + 317) |= 0x10u;
    result = *(a1 + 40);
    if (result)
    {

      return physx::Sc::ArticulationJointSim::setDirty(result);
    }
  }

  return result;
}

float physx::NpArticulationJointReducedCoordinate::getLimit(uint64_t a1, unsigned int a2, _DWORD *a3, _DWORD *a4)
{
  if ((*(a1 + 26) & 0x10) != 0)
  {
    v7 = *(a1 + 32) + 8 * a2;
    v5 = (v7 + 156);
    v6 = (v7 + 160);
  }

  else
  {
    v4 = a1 + 8 * a2;
    v5 = (v4 + 104);
    v6 = (v4 + 108);
  }

  *a3 = *v5;
  result = *v6;
  *a4 = *v6;
  return result;
}

physx::Sc::ArticulationJointSim *physx::NpArticulationJointReducedCoordinate::setDrive(uint64_t a1, unsigned int a2, int a3, float a4, float a5, float a6)
{
  v12 = *(a1 + 24);
  if (v12 >> 30 == 3 || v12 >> 30 == 2 && (*(*(a1 + 16) + 7689) & 1) != 0)
  {
    Stream = *(a1 + 32);
    if ((v12 & 0x200000) != 0)
    {
      if (!Stream)
      {
        Stream = physx::Scb::Scene::getStream(*(a1 + 16), HIBYTE(v12) & 0xF);
        *(a1 + 32) = Stream;
      }
    }

    else
    {
      if (!Stream)
      {
        Stream = physx::Scb::Scene::getStream(*(a1 + 16), HIBYTE(v12) & 0xF);
        *(a1 + 32) = Stream;
      }

      v14 = (a1 + 164);
      for (i = 152; i != 248; i += 16)
      {
        v16 = (Stream + i);
        v16[13] = *(v14 - 3);
        v16[14] = *(v14 - 2);
        v16[15] = *(v14 - 1);
        v17 = *v14;
        v14 += 4;
        v16[16] = v17;
      }
    }

    v20 = Stream + 16 * a2;
    *(v20 + 204) = a4;
    *(v20 + 208) = a5;
    *(v20 + 212) = a6;
    *(v20 + 216) = a3;
    result = physx::Scb::Scene::scheduleForUpdate(*(a1 + 16), a1 + 16);
    *(a1 + 24) |= 0x200000u;
  }

  else
  {
    v18 = a1 + 16 * a2;
    *(v18 + 152) = a4;
    *(v18 + 156) = a5;
    *(v18 + 160) = a6;
    *(v18 + 164) = a3;
    *(a1 + 317) |= 0x20u;
    result = *(a1 + 40);
    if (result)
    {

      return physx::Sc::ArticulationJointSim::setDirty(result);
    }
  }

  return result;
}

float physx::NpArticulationJointReducedCoordinate::getDrive(uint64_t a1, unsigned int a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6)
{
  if ((*(a1 + 26) & 0x20) != 0)
  {
    v11 = *(a1 + 32) + 16 * a2;
    v7 = (v11 + 204);
    v8 = (v11 + 208);
    v9 = (v11 + 212);
    v10 = (v11 + 216);
  }

  else
  {
    v6 = a1 + 16 * a2;
    v7 = (v6 + 152);
    v8 = (v6 + 156);
    v9 = (v6 + 160);
    v10 = (v6 + 164);
  }

  *a3 = *v7;
  *a4 = *v8;
  result = *v9;
  *a5 = *v9;
  *a6 = *v10;
  return result;
}

physx::Sc::ArticulationJointSim *physx::NpArticulationJointReducedCoordinate::setDriveTarget(uint64_t a1, unsigned int a2, float a3)
{
  v6 = *(a1 + 24);
  if (v6 >> 30 == 3 || v6 >> 30 == 2 && (*(*(a1 + 16) + 7689) & 1) != 0)
  {
    v7 = *(a1 + 32);
    if ((v6 & 0x400000) != 0)
    {
      v13 = *(a1 + 16);
      if (v7)
      {
LABEL_18:
        *(v7 + 4 * a2 + 300) = a3;
        result = physx::Scb::Scene::scheduleForUpdate(v13, a1 + 16);
        *(a1 + 24) |= 0x400000u;
        return result;
      }

      Stream = physx::Scb::Scene::getStream(*(a1 + 16), HIBYTE(v6) & 0xF);
      *(a1 + 32) = Stream;
    }

    else
    {
      Stream = *(a1 + 32);
      if (!v7)
      {
        Stream = physx::Scb::Scene::getStream(*(a1 + 16), HIBYTE(v6) & 0xF);
        v7 = Stream;
        *(a1 + 32) = Stream;
        if (!Stream)
        {
          Stream = physx::Scb::Scene::getStream(*(a1 + 16), *(a1 + 27) & 0xF);
          v7 = 0;
          *(a1 + 32) = Stream;
        }
      }

      v9 = (v7 + 300);
      v10 = (a1 + 248);
      for (i = 81; i != 87; ++i)
      {
        *v9++ = *v10;
        *(Stream + 4 * i) = v10[6];
        ++v10;
      }
    }

    v13 = *(a1 + 16);
    v7 = Stream;
    goto LABEL_18;
  }

  *(a1 + 4 * a2 + 248) = a3;
  *(a1 + 317) |= 4u;
  result = *(a1 + 40);
  if (result)
  {

    return physx::Sc::ArticulationJointSim::setDirty(result);
  }

  return result;
}

physx::Sc::ArticulationJointSim *physx::NpArticulationJointReducedCoordinate::setDriveVelocity(uint64_t a1, unsigned int a2, float a3)
{
  v6 = *(a1 + 24);
  if (v6 >> 30 == 3 || v6 >> 30 == 2 && (*(*(a1 + 16) + 7689) & 1) != 0)
  {
    v7 = *(a1 + 32);
    if ((v6 & 0x400000) != 0)
    {
      v13 = *(a1 + 16);
      if (v7)
      {
LABEL_18:
        *(v7 + 4 * a2 + 324) = a3;
        result = physx::Scb::Scene::scheduleForUpdate(v13, a1 + 16);
        *(a1 + 24) |= 0x400000u;
        return result;
      }

      Stream = physx::Scb::Scene::getStream(*(a1 + 16), HIBYTE(v6) & 0xF);
      *(a1 + 32) = Stream;
    }

    else
    {
      Stream = *(a1 + 32);
      if (!v7)
      {
        Stream = physx::Scb::Scene::getStream(*(a1 + 16), HIBYTE(v6) & 0xF);
        v7 = Stream;
        *(a1 + 32) = Stream;
        if (!Stream)
        {
          Stream = physx::Scb::Scene::getStream(*(a1 + 16), *(a1 + 27) & 0xF);
          v7 = 0;
          *(a1 + 32) = Stream;
        }
      }

      v9 = (v7 + 300);
      v10 = (a1 + 248);
      for (i = 81; i != 87; ++i)
      {
        *v9++ = *v10;
        *(Stream + 4 * i) = v10[6];
        ++v10;
      }
    }

    v13 = *(a1 + 16);
    v7 = Stream;
    goto LABEL_18;
  }

  *(a1 + 4 * a2 + 272) = a3;
  *(a1 + 317) |= 8u;
  result = *(a1 + 40);
  if (result)
  {

    return physx::Sc::ArticulationJointSim::setDirty(result);
  }

  return result;
}

float physx::NpArticulationJointReducedCoordinate::getDriveTarget(uint64_t a1, unsigned int a2)
{
  if ((*(a1 + 26) & 0x40) != 0)
  {
    v2 = *(a1 + 32) + 300;
  }

  else
  {
    v2 = a1 + 248;
  }

  return *(v2 + 4 * a2);
}

float physx::NpArticulationJointReducedCoordinate::getDriveVelocity(uint64_t a1, unsigned int a2)
{
  if ((*(a1 + 26) & 0x40) != 0)
  {
    v2 = *(a1 + 32) + 324;
  }

  else
  {
    v2 = a1 + 272;
  }

  return *(v2 + 4 * a2);
}

uint64_t physx::NpArticulationLink::requiresObjects(uint64_t a1, uint64_t a2)
{
  result = physx::NpRigidActorTemplate<physx::PxArticulationLink>::requiresObjects(a1, a2);
  if (*(a1 + 392))
  {
    v5 = *(*a2 + 16);

    return v5(a2);
  }

  return result;
}

uint64_t physx::NpRigidActorTemplate<physx::PxArticulationLink>::requiresObjects(uint64_t result, uint64_t a2)
{
  if (*(result + 48))
  {
    v3 = result;
    v4 = 0;
    v5 = (result + 40);
    v6 = 8 * *(result + 48);
    do
    {
      v7 = v5;
      if (*(v3 + 48) != 1)
      {
        v7 = *v5;
      }

      result = (*(*a2 + 16))(a2, v7[v4 / 8]);
      v4 += 8;
    }

    while (v6 != v4);
  }

  return result;
}

uint64_t physx::NpArticulationLink::exportExtraData(uint64_t a1, uint64_t a2)
{
  physx::NpShapeManager::exportExtraData(a1 + 40, a2);
  result = physx::NpActor::exportExtraData((a1 + 24), a2);
  if ((*(a1 + 440) & 1) == 0)
  {

    return physx::Cm::ArrayAccess<physx::NpArticulationLink *,physx::shdfnd::InlineAllocator<32u,physx::shdfnd::ReflectionAllocator<physx::NpArticulationLink *>>>::store(a1 + 408, a2);
  }

  return result;
}

uint64_t physx::NpRigidActorTemplate<physx::PxArticulationLink>::exportExtraData(uint64_t a1, uint64_t a2)
{
  physx::NpShapeManager::exportExtraData(a1 + 40, a2);

  return physx::NpActor::exportExtraData((a1 + 24), a2);
}

void *physx::NpArticulationLink::importExtraData(uint64_t a1, uint64_t a2)
{
  physx::NpShapeManager::importExtraData(a1 + 40, a2);
  result = physx::NpActor::importExtraData((a1 + 24), a2);
  if ((*(a1 + 440) & 1) == 0 && *(a1 + 448))
  {
    v5 = *(a1 + 460) & 0x7FFFFFFF;
    if (*(a1 + 456) | v5)
    {
      v6 = *(a2 + 8);
      *(a2 + 8) = v6 + 8 * v5;
      *(a1 + 448) = v6;
    }
  }

  return result;
}

void *physx::NpRigidActorTemplate<physx::PxArticulationLink>::importExtraData(uint64_t a1, uint64_t a2)
{
  physx::NpShapeManager::importExtraData(a1 + 40, a2);

  return physx::NpActor::importExtraData((a1 + 24), a2);
}

uint64_t physx::NpArticulationLink::resolveReferences(uint64_t a1, uint64_t (***a2)(void, uint64_t))
{
  if (*(a1 + 384))
  {
    *(a1 + 384) = (**a2)(a2, 0x80000000);
  }

  if (*(a1 + 392))
  {
    *(a1 + 392) = (**a2)(a2, 0x80000000);
  }

  if (*(a1 + 400))
  {
    *(a1 + 400) = (**a2)(a2, 0x80000000);
  }

  result = physx::NpRigidActorTemplate<physx::PxArticulationLink>::resolveReferences(a1, a2);
  v5 = *(a1 + 456);
  if (v5)
  {
    v6 = 0;
    v7 = 8 * v5;
    do
    {
      v8 = *(a1 + 448);
      if (*(v8 + v6))
      {
        result = (**a2)(a2, 0x80000000);
        *(v8 + v6) = result;
      }

      v6 += 8;
    }

    while (v7 != v6);
  }

  return result;
}

uint64_t physx::NpRigidActorTemplate<physx::PxArticulationLink>::resolveReferences(uint64_t a1, uint64_t (***a2)(void, uint64_t))
{
  v4 = (a1 + 40);
  v5 = *(a1 + 48);
  if (v5 != 1)
  {
    if (!*(a1 + 48))
    {
      goto LABEL_10;
    }

    v4 = *v4;
  }

  do
  {
    if (*v4)
    {
      v6 = (**a2)(a2, 0x80000000);
      *v4 = v6;
    }

    else
    {
      v6 = 0;
    }

    atomic_fetch_add((v6 + 32), 1u);
    if ((*(v6 + 264) & 0x80000000) != 0)
    {
      *(v6 + 40) = a1;
    }

    atomic_fetch_add((v6 + 264), 1u);
    ++v4;
    --v5;
  }

  while (v5);
LABEL_10:

  return physx::NpActor::resolveReferences(a1 + 24, a2);
}

uint64_t physx::NpArticulationLink::NpArticulationLink(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = 1;
  v7 = physx::NpRigidBodyTemplate<physx::PxArticulationLink>::NpRigidBodyTemplate(a1, 13, &v10, 2, a2);
  *v7 = &unk_1F5D23C30;
  *(v7 + 384) = a3;
  *(v7 + 392) = 0;
  *(v7 + 400) = a4;
  *(v7 + 440) = 1;
  *(v7 + 448) = v7 + 408;
  *(v7 + 456) = 0x400000000;
  *(v7 + 464) = -1;
  *(v7 + 104) = *(v7 + 104) & 0xF0FFFFFF | 0x4000000;
  if (a4)
  {
    v11 = a1;
    v8 = *(a4 + 456);
    if ((*(a4 + 460) & 0x7FFFFFFFu) <= v8)
    {
      physx::shdfnd::Array<physx::NpArticulationLink *,physx::shdfnd::InlineAllocator<32u,physx::shdfnd::ReflectionAllocator<physx::NpArticulationLink *>>>::growAndPushBack(a4 + 408, &v11);
    }

    else
    {
      *(*(a4 + 448) + 8 * v8) = a1;
      *(a4 + 456) = v8 + 1;
    }
  }

  return a1;
}

uint64_t physx::NpRigidBodyTemplate<physx::PxArticulationLink>::NpRigidBodyTemplate(uint64_t a1, __int16 a2, __int16 *a3, int a4, uint64_t a5)
{
  v6 = *a3;
  *(a1 + 8) = a2;
  *(a1 + 10) = v6;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0x10000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0x10000;
  *(a1 + 72) = -1;
  *(a1 + 80) = 0;
  *a1 = &unk_1F5D24740;
  *(a1 + 96) = 0;
  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  physx::Sc::BodyCore::BodyCore(a1 + 128, a4, a5);
  *(a1 + 104) = *(a1 + 104) & 0xF0FFFFFF | 0x3000000;
  *&v7 = *(a1 + 160);
  DWORD2(v7) = *(a1 + 168);
  HIDWORD(v7) = *(a1 + 208);
  *(a1 + 320) = *(a1 + 144);
  *(a1 + 336) = v7;
  *&v8 = *(a1 + 212);
  *(&v8 + 1) = *(a1 + 224);
  *(a1 + 352) = v8;
  *(a1 + 368) = *(a1 + 232);
  *(a1 + 372) = *(a1 + 284);
  *(a1 + 376) = 1;
  return a1;
}

void physx::NpArticulationLink::~NpArticulationLink(physx::NpArticulationLink *this)
{
  *this = &unk_1F5D23C30;
  v2 = *(this + 115);
  if ((v2 & 0x80000000) == 0 && (v2 & 0x7FFFFFFF) != 0)
  {
    v3 = *(this + 56);
    if (v3 == (this + 408))
    {
      *(this + 440) = 0;
    }

    else if (v3)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  *this = &unk_1F5D249A0;
  v4 = *(physx::NpFactory::mInstance + 832);
  physx::Cm::PtrTable::clear(this + 40, v4);
  physx::Cm::PtrTable::clear(this + 56, v4);
  *this = &unk_1F5D24C00;
  physx::NpFactory::onActorRelease(physx::NpFactory::mInstance, this);
}

{
  physx::NpArticulationLink::~NpArticulationLink(this);
  if (v1)
  {
    v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v2();
  }
}

uint64_t physx::NpArticulationLink::releaseInternal(physx::NpArticulationLink *this)
{
  physx::NpPhysics::notifyDeletionListeners(physx::NpPhysics::mInstance, this, *(this + 2), 1);
  physx::NpRigidActorTemplate<physx::PxArticulationLink>::release(this);
  v2 = (*(**(this + 48) + 200))(*(this + 48));
  v3 = v2;
  v4 = *(v2 + 128);
  if (v4)
  {
    v5 = 0;
    while (*(*(v2 + 120) + 8 * v5) != this)
    {
      if (v4 == ++v5)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 != v4)
  {
    v6 = *(v2 + 120);
    v7 = v4 - 1;
    *(v2 + 128) = v7;
    *(v6 + 8 * v5) = *(v6 + 8 * v7);
  }

LABEL_9:
  v8 = *(this + 50);
  if (v8)
  {
    v9 = *(v8 + 456);
    if (v9)
    {
      v10 = 0;
      while (*(*(v8 + 448) + 8 * v10) != this)
      {
        if (v9 == ++v10)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      LODWORD(v10) = 0;
    }

    if (v10 != v9)
    {
      v11 = *(v8 + 448);
      v12 = v9 - 1;
      *(v8 + 456) = v12;
      *(v11 + 8 * v10) = *(v11 + 8 * v12);
    }
  }

LABEL_18:
  v13 = *(this + 49);
  if (v13)
  {
    (**v13)(v13);
  }

  v14 = this + *(&physx::NpActor::sLazyInitOffsets + *(this + 4) + 18);
  if (((*(v14 + 2) >> 30) - 1) <= 1)
  {
    if (*v14)
    {
      physx::Scb::Scene::removeActor(*v14, (this + 96), 1, 0);
      v15 = *(v3 + 8) >> 30;
      if (v15 != 3 && (v15 != 2 || (*(*v3 + 7689) & 1) == 0))
      {
        v16 = *(v3 + 24);
        if (v16)
        {
          v17 = *(v3 + 128);
          if (v17 >= 2)
          {
            v18 = *(v3 + 120);
            v19 = *(v16 + 48);
            for (i = 1; i != v17; ++i)
            {
              v21 = *(v18 + 8 * i);
              if (v19)
              {
                v22 = 0;
                while (*(*(v16 + 40) + 8 * v22) != *(v21 + 128))
                {
                  if (v19 == ++v22)
                  {
                    goto LABEL_32;
                  }
                }
              }

              else
              {
LABEL_32:
                LODWORD(v22) = 0x80000000;
              }

              *(v21 + 464) = v22;
            }
          }
        }
      }
    }
  }

  return physx::Scb::Base::destroy(this + 96);
}

uint64_t physx::NpRigidActorTemplate<physx::PxArticulationLink>::release(physx::PxRigidActor *a1)
{
  physx::NpActor::releaseConstraints(a1 + 24, a1);
  v5 = a1 + *(&physx::NpActor::sLazyInitOffsets + *(a1 + 4) + 18);
  if (((*(v5 + 2) >> 30) - 1) > 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = *v5;
    if (v6)
    {
      v7 = (v6 - 16);
    }

    else
    {
      v7 = 0;
    }
  }

  if (*(a1 + 10))
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpRigidActorTemplate.h", 200, "PxRigidActor::release: Actor is part of a pruning structure, pruning structure is now invalid!", v2, v3, v4, v16);
    physx::Sq::PruningStructure::invalidate(*(a1 + 10), a1);
  }

  result = physx::NpShapeManager::detachAll((a1 + 40), v7, a1);
  v14 = *(a1 + 4);
  if (v14)
  {
    v15 = *(*(v14 + 72) + 8);

    return physx::NpAggregate::removeActorAndReinsert(v15, a1, 0, v9, v10, v11, v12, v13);
  }

  return result;
}

uint64_t physx::NpArticulationLink::release(physx::NpArticulationLink *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = (*(**(this + 48) + 200))(*(this + 48));
  if (*(v10 + 128))
  {
    v14 = **(v10 + 120);
  }

  else
  {
    v14 = 0;
  }

  if (v14 == this && *(this + *(&physx::NpActor::sLazyInitOffsets + *(this + 4) + 18)))
  {
    v15 = "PxArticulationLink::release(): root link may not be released while articulation is in a scene";
    v16 = physx::shdfnd::Foundation::mInstance;
    v17 = 141;
    goto LABEL_9;
  }

  if (*(this + 114))
  {
    v15 = "PxArticulationLink::release(): Only leaf articulation links can be released. Release call failed";
    v16 = physx::shdfnd::Foundation::mInstance;
    v17 = 154;
LABEL_9:

    return physx::shdfnd::Foundation::error(v16, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpArticulationLink.cpp", v17, v15, v11, v12, v13, a9);
  }

  return physx::NpArticulationLink::releaseInternal(this);
}

float physx::NpArticulationLink::getGlobalPose@<S0>(physx::NpArticulationLink *this@<X0>, float *a2@<X8>)
{
  if ((*(this + 381) & 4) != 0)
  {
    v2 = (*(this + 14) + 224);
  }

  else
  {
    v2 = (this + 176);
  }

  v3 = v2[4] * -2.0;
  v4 = v2[5] * -2.0;
  v5 = v2[6] * -2.0;
  v7 = v2[2];
  v6 = v2[3];
  v8 = (v6 * v6) + -0.5;
  v9 = v2[1];
  v10 = ((v4 * v9) + (*v2 * v3)) + (v7 * v5);
  v11 = ((v3 * v8) - (((v9 * v5) - (v7 * v4)) * v6)) + (*v2 * v10);
  v12 = ((v4 * v8) - (((v7 * v3) - (*v2 * v5)) * v6)) + (v9 * v10);
  v13 = ((v5 * v8) - (((*v2 * v4) - (v9 * v3)) * v6)) + (v7 * v10);
  v14 = v11 + v11;
  v15 = v12 + v12;
  v16 = v13 + v13;
  v17 = *(this + 83);
  v18 = (v17 * v17) + -0.5;
  v19 = *(this + 80);
  v20 = *(this + 81);
  v21 = *(this + 82);
  v22 = ((v20 * (v12 + v12)) + (v19 * v14)) + (v21 * v16);
  v23 = ((v17 * ((v20 * v16) - (v21 * v15))) + (v14 * v18)) + (v19 * v22);
  v24 = ((v17 * ((v21 * v14) - (v19 * v16))) + (v15 * v18)) + (v20 * v22);
  v25 = ((v17 * ((v19 * v15) - (v20 * v14))) + (v16 * v18)) + (v21 * v22);
  v26 = *(this + 84) + v23;
  v27 = *(this + 85) + v24;
  v28 = *(this + 86);
  v29 = (((v6 * v20) - (v17 * v9)) - (v21 * *v2)) + (v7 * v19);
  v30 = (((v6 * v21) - (v17 * v7)) - (v19 * v9)) + (*v2 * v20);
  v31 = *v2 * v19;
  *a2 = (((v6 * v19) - (v17 * *v2)) - (v20 * v7)) + (v9 * v21);
  a2[1] = v29;
  a2[2] = v30;
  a2[3] = ((v31 + (v17 * v6)) + (v20 * v9)) + (v21 * v7);
  result = v28 + v25;
  a2[4] = v26;
  a2[5] = v27;
  a2[6] = v28 + v25;
  return result;
}

float *physx::NpArticulationLink::setLinearDamping(physx::NpArticulationLink *this, float a2)
{
  v4 = *(this + 26);
  if (v4 >> 30 == 2)
  {
    v5 = *(this + 12);
    if (v5[961].i8[1])
    {
      goto LABEL_5;
    }
  }

  else if (v4 >> 30 == 3)
  {
    v5 = *(this + 12);
LABEL_5:
    Stream = *(this + 14);
    if (!Stream)
    {
      Stream = physx::Scb::Scene::getStream(v5, HIBYTE(v4) & 0xF);
      *(this + 14) = Stream;
      v5 = *(this + 12);
    }

    *(Stream + 180) = a2;
    result = physx::Scb::Scene::scheduleForUpdate(v5, this + 96);
    *(this + 95) |= 4u;
    return result;
  }

  return physx::Sc::BodyCore::setLinearDamping(this + 32, a2);
}

float physx::NpArticulationLink::getLinearDamping(physx::NpArticulationLink *this)
{
  if ((*(this + 380) & 4) != 0)
  {
    v2 = (*(this + 14) + 180);
  }

  else
  {
    v1 = *(this + 38);
    if (v1 && *(v1 + 31) == 1)
    {
      v2 = (v1 + 48);
    }

    else
    {
      v2 = this + 248;
    }
  }

  return *v2;
}

float *physx::NpArticulationLink::setAngularDamping(physx::NpArticulationLink *this, float a2)
{
  v4 = *(this + 26);
  if (v4 >> 30 == 2)
  {
    v5 = *(this + 12);
    if (v5[961].i8[1])
    {
      goto LABEL_5;
    }
  }

  else if (v4 >> 30 == 3)
  {
    v5 = *(this + 12);
LABEL_5:
    Stream = *(this + 14);
    if (!Stream)
    {
      Stream = physx::Scb::Scene::getStream(v5, HIBYTE(v4) & 0xF);
      *(this + 14) = Stream;
      v5 = *(this + 12);
    }

    *(Stream + 184) = a2;
    result = physx::Scb::Scene::scheduleForUpdate(v5, this + 96);
    *(this + 95) |= 8u;
    return result;
  }

  return physx::Sc::BodyCore::setAngularDamping(this + 32, a2);
}

float physx::NpArticulationLink::getAngularDamping(physx::NpArticulationLink *this)
{
  if ((*(this + 380) & 8) != 0)
  {
    v2 = (*(this + 14) + 184);
  }

  else
  {
    v1 = *(this + 38);
    if (v1 && *(v1 + 31) == 1)
    {
      v2 = (v1 + 52);
    }

    else
    {
      v2 = this + 252;
    }
  }

  return *v2;
}

uint64_t physx::NpArticulationLink::getChildren(uint64_t a1, void *a2, unsigned int a3, unsigned int a4)
{
  v5 = (*(a1 + 456) - a4) & ~((*(a1 + 456) - a4) >> 31);
  if (v5 >= a3)
  {
    result = a3;
  }

  else
  {
    result = v5;
  }

  if (result)
  {
    v7 = (*(a1 + 448) + 8 * a4);
    v8 = result;
    do
    {
      v9 = *v7++;
      *a2++ = v9;
      --v8;
    }

    while (v8);
  }

  return result;
}

void *physx::NpArticulationLink::setCMassLocalPose(uint64_t a1, float *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = sqrtf((((v3 * v3) + (*a2 * *a2)) + (v4 * v4)) + (v5 * v5));
  v7 = *a2 / v6;
  v8 = v3 / v6;
  v9 = v4 / v6;
  v10 = v5 / v6;
  v126[0] = v7;
  v126[1] = v3 / v6;
  v126[2] = v4 / v6;
  v126[3] = v5 / v6;
  v12 = a2[4];
  v11 = a2[5];
  v126[4] = v12;
  v126[5] = v11;
  v122 = v11;
  v118 = a2[6];
  v126[6] = v118;
  if ((*(a1 + 381) & 4) != 0)
  {
    v13 = (*(a1 + 112) + 224);
  }

  else
  {
    v13 = (a1 + 176);
  }

  v124 = v13[1];
  v14 = v13[3];
  v15 = v11;
  v16 = v118;
  v17 = (v13[4] - v12) + (v13[4] - v12);
  v18 = (v13[5] - v11) + (v13[5] - v11);
  v19 = (v13[6] - v118) + (v13[6] - v118);
  v105 = (v9 * v18) - (v8 * v19);
  v107 = -(v8 * v18);
  v109 = v19;
  v111 = v13[2];
  v113 = v18;
  v115 = v17;
  v103 = (v8 * v17) - (v7 * v18);
  v104 = (v7 * v19) - (v9 * v17);
  v101 = -(v8 * v14);
  v102 = -(v7 * v14);
  v120 = *v13;
  v99 = v7 * *v13;
  v100 = -(v9 * v14);
  (*(*a1 + 152))(&v127, a1);
  v20 = (v129 * v129) + -0.5;
  v21 = (((v15 + v15) * *(&v127 + 1)) + (*&v127 * (v12 + v12))) + (v128 * (v16 + v16));
  v22 = v130 + (((v129 * ((*(&v127 + 1) * (v16 + v16)) - (v128 * (v15 + v15)))) + ((v12 + v12) * v20)) + (*&v127 * v21));
  v23 = v131 + (((v129 * ((v128 * (v12 + v12)) - (*&v127 * (v16 + v16)))) + ((v15 + v15) * v20)) + (*(&v127 + 1) * v21));
  v24 = v132 + (((v129 * ((*&v127 * (v15 + v15)) - (*(&v127 + 1) * (v12 + v12)))) + ((v16 + v16) * v20)) + (v128 * v21));
  v25 = (((v10 * *(&v127 + 1)) + (v129 * v8)) + (v128 * v7)) - (v9 * *&v127);
  v26 = (((v10 * v128) + (v129 * v9)) + (*&v127 * v8)) - (v7 * *(&v127 + 1));
  v133 = (((v10 * *&v127) + (v129 * v7)) + (*(&v127 + 1) * v9)) - (v8 * v128);
  v134 = v25;
  v27 = (((v129 * v10) - (*&v127 * v7)) - (*(&v127 + 1) * v8)) - (v128 * v9);
  v135 = v26;
  v136 = v27;
  v137 = v22;
  v138 = v23;
  v139 = v24;
  *(a1 + 320) = v133;
  *(a1 + 324) = v25;
  *(a1 + 328) = v26;
  *(a1 + 332) = v27;
  *(a1 + 336) = v22;
  *(a1 + 340) = v23;
  *(a1 + 344) = v24;
  v28 = *(a1 + 104) >> 30;
  v98 = v12;
  if (v28 == 3 || v28 == 2 && (*(*(a1 + 96) + 7689) & 1) != 0)
  {
    v29 = *(a1 + 380);
    if ((v29 & 0x100000) == 0)
    {
      *(a1 + 380) = v29 | 0x200000;
    }

    physx::Scb::Scene::scheduleForUpdate(*(a1 + 96), a1 + 96);
    *(a1 + 380) |= 0x100000u;
  }

  else
  {
    physx::Sc::BodyCore::setBody2World(a1 + 128, &v133);
  }

  v30 = v115;
  v31 = (v10 * v10) + -0.5;
  v32 = v107 - (v7 * v115);
  v33 = *(a1 + 104);
  v116 = v99 + (v10 * v14);
  if (v33 >> 30 == 2)
  {
    v34 = *(a1 + 96);
    if (v34[961].i8[1])
    {
      goto LABEL_15;
    }
  }

  else if (v33 >> 30 == 3)
  {
    v34 = *(a1 + 96);
LABEL_15:
    v35 = v10 * v105;
    Stream = *(a1 + 112);
    if (!Stream)
    {
      Stream = physx::Scb::Scene::getStream(v34, HIBYTE(v33) & 0xF);
      *(a1 + 112) = Stream;
      v34 = *(a1 + 96);
    }

    *(Stream + 224) = v7;
    *(Stream + 228) = v8;
    *(Stream + 232) = v9;
    *(Stream + 236) = v10;
    *(Stream + 240) = v98;
    *(Stream + 244) = v122;
    *(Stream + 248) = v118;
    physx::Scb::Scene::scheduleForUpdate(v34, a1 + 96);
    *(a1 + 380) |= 0x400u;
    goto LABEL_19;
  }

  v35 = v10 * v105;
  physx::Sc::BodyCore::setBody2Actor(a1 + 128, v126);
LABEL_19:
  v37 = v32 - (v9 * v109);
  v38 = (v10 * v104) + (v113 * v31);
  v39 = (v100 + (v10 * v111)) - (v7 * v124);
  v40 = *(a1 + 32);
  v41 = v116 + (v8 * v124);
  if (v40)
  {
    v42 = *(v40 + 72);
    v43 = *(v40 + 80);
  }

  else
  {
    v43 = 0;
    v42 = 0;
  }

  v44 = 0;
  v119 = (v35 + (v30 * v31)) - (v7 * v37);
  v114 = ((v10 * v103) + (v109 * v31)) - (v9 * v37);
  v117 = v38 - (v8 * v37);
  v123 = ((v101 + (v10 * v124)) - (v9 * v120)) + (v111 * v7);
  v125 = ((v102 + (v10 * v120)) - (v8 * v111)) + (v124 * v9);
  v121 = v39 + (v120 * v8);
  v45 = v41 + (v9 * v111);
LABEL_23:
  if (v44 <= v43)
  {
    v46 = v43;
  }

  else
  {
    v46 = v44;
  }

  v47 = (v42 + 16 * v44);
  v48 = v46 - v44 + 1;
  while (--v48)
  {
    v49 = v47 + 16;
    ++v44;
    v50 = *v47;
    v47 += 16;
    if (!v50)
    {
      v51 = *(v49 - 1);
      if (!v51)
      {
        break;
      }

      physx::NpConstraint::comShift(v51, a1);
      goto LABEL_23;
    }
  }

  result = *(a1 + 392);
  if (result)
  {
    v53 = (*(*result + 96))(result);
    v54 = v53;
    v55 = *(v53 + 8);
    if ((v55 & 2) != 0)
    {
      v56 = (*(v53 + 16) + 28);
    }

    else
    {
      v56 = (v53 + 60);
    }

    v57 = v56[1];
    v58 = v56[2];
    v59 = v56[3];
    v60 = v56[4] + v56[4];
    v61 = v56[5] + v56[5];
    v62 = v56[6] + v56[6];
    v63 = (v45 * v45) + -0.5;
    v64 = ((v123 * v61) + (v125 * v60)) + (v121 * v62);
    v65 = v119 + (((v45 * ((v123 * v62) - (v121 * v61))) + (v60 * v63)) + (v125 * v64));
    v66 = v117 + (((v45 * ((v121 * v60) - (v125 * v62))) + (v61 * v63)) + (v123 * v64));
    v67 = v114 + (((v45 * ((v125 * v61) - (v123 * v60))) + (v62 * v63)) + (v121 * v64));
    v68 = (((v125 * v59) + (v45 * *v56)) + (v123 * v58)) - (v57 * v121);
    v69 = (((v123 * v59) + (v45 * v57)) + (v121 * *v56)) - (v58 * v125);
    v70 = (((v121 * v59) + (v45 * v58)) + (v125 * v57)) - (*v56 * v123);
    v71 = ((v45 * v59) - (v125 * *v56)) - (v123 * v57);
    v133 = v68;
    v134 = v69;
    v72 = v71 - (v121 * v58);
    v135 = v70;
    v136 = v72;
    v137 = v65;
    v138 = v66;
    v139 = v67;
    if (v55 >> 30 == 2)
    {
      v73 = *v53;
      if (*(*v54 + 7689))
      {
        goto LABEL_39;
      }
    }

    else if (v55 >> 30 == 3)
    {
      v73 = *v53;
LABEL_39:
      v74 = *(v54 + 16);
      if (!v74)
      {
        v74 = physx::Scb::Scene::getStream(v73, HIBYTE(v55) & 0xF);
        *(v54 + 16) = v74;
        v73 = *v54;
      }

      v74[7] = v68;
      v74[8] = v69;
      v74[9] = v70;
      v74[10] = v72;
      v74[11] = v65;
      v74[12] = v66;
      v74[13] = v67;
      result = physx::Scb::Scene::scheduleForUpdate(v73, v54);
      *(v54 + 8) |= 2u;
      goto LABEL_43;
    }

    result = physx::Sc::ArticulationJointCore::setChildPose(v54 + 24, &v133);
  }

LABEL_43:
  if (*(a1 + 456))
  {
    v75 = 0;
    v110 = -v121;
    v112 = (v45 * v45) + -0.5;
    v106 = -v123;
    v108 = -v125;
    do
    {
      v76 = *(*(a1 + 448) + 8 * v75);
      v77 = (*(*v76 + 504))(v76);
      v78 = v77;
      v79 = *(v77 + 24);
      if (v79)
      {
        v80 = *(v77 + 32);
      }

      else
      {
        v80 = (v77 + 48);
      }

      v81 = v80[1];
      v82 = v80[2];
      v83 = v80[3];
      v84 = v80[4] + v80[4];
      v85 = v80[5] + v80[5];
      v86 = v80[6] + v80[6];
      v87 = ((v123 * v85) + (v125 * v84)) + (v121 * v86);
      v88 = v119 + (((v45 * ((v85 * v110) + (v123 * v86))) + (v84 * v112)) + (v125 * v87));
      v89 = v117 + (((v45 * ((v86 * v108) + (v121 * v84))) + (v85 * v112)) + (v123 * v87));
      v90 = v114 + (((v45 * ((v84 * v106) + (v125 * v85))) + (v86 * v112)) + (v121 * v87));
      v91 = (((v125 * v83) + (v45 * *v80)) + (v123 * v82)) - (v81 * v121);
      v92 = (((v123 * v83) + (v45 * v81)) + (v121 * *v80)) - (v82 * v125);
      v93 = (((v121 * v83) + (v45 * v82)) + (v125 * v81)) - (*v80 * v123);
      v94 = ((*v80 * v108) + (v45 * v83)) + (v106 * v81);
      v133 = v91;
      v134 = v92;
      v95 = v94 + (v110 * v82);
      v135 = v93;
      v136 = v95;
      v137 = v88;
      v138 = v89;
      v139 = v90;
      if (v79 >> 30 == 2)
      {
        v96 = *(v77 + 16);
        if (v96[961].i8[1])
        {
          goto LABEL_52;
        }
      }

      else if (v79 >> 30 == 3)
      {
        v96 = *(v77 + 16);
LABEL_52:
        v97 = *(v78 + 32);
        if (!v97)
        {
          v97 = physx::Scb::Scene::getStream(v96, HIBYTE(v79) & 0xF);
          *(v78 + 32) = v97;
          v96 = *(v78 + 16);
        }

        *v97 = v91;
        v97[1] = v92;
        v97[2] = v93;
        v97[3] = v95;
        v97[4] = v88;
        v97[5] = v89;
        v97[6] = v90;
        result = physx::Scb::Scene::scheduleForUpdate(v96, v78 + 16);
        *(v78 + 24) |= 1u;
        goto LABEL_56;
      }

      result = physx::Sc::ArticulationJointCore::setParentPose(v78 + 40, &v133);
LABEL_56:
      ++v75;
    }

    while (v75 < *(a1 + 456));
  }

  return result;
}

int32x2_t *physx::NpArticulationLink::addForce(uint64_t a1, float32x2_t *a2, int a3, int a4)
{
  v7 = physx::NpRigidBodyTemplate<physx::PxArticulationLink>::addSpatialForce(a1, a2, 0, a3);
  v8 = (*(**(a1 + 384) + 200))(*(a1 + 384), v7);
  v9 = 1;
  if (a2->f32[0] == 0.0 && a2->f32[1] == 0.0)
  {
    v9 = a2[1].f32[0] != 0.0;
  }

  return physx::PxArticulationImpl::wakeUpInternal(v8, v9, a4);
}

float32_t physx::NpRigidBodyTemplate<physx::PxArticulationLink>::addSpatialForce(float32x4_t *a1, float32x2_t *a2, float32x2_t *a3, int a4)
{
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v10 = &a1[6];

      return physx::Scb::Body::addSpatialVelocity(v10, a2, a3);
    }

    else if (a4 == 3)
    {
      v6 = &a1[6];

      return physx::Scb::Body::addSpatialAcceleration(v6, a2, a3);
    }
  }

  else if (a4)
  {
    if (a4 == 1)
    {
      if (a2)
      {
        if (a1[23].i8[12])
        {
          v5 = (a1[7].i64[0] + 164);
        }

        else
        {
          v4 = a1[19].i64[0];
          if (v4 && *(v4 + 31) == 1)
          {
            v5 = (v4 + 44);
          }

          else
          {
            v5 = &a1[16].f32[3];
          }
        }

        v11 = *v5 * a2[1].f32[0];
        v83 = vmul_n_f32(*a2, *v5);
        v84 = v11;
        a2 = &v83;
      }

      if (a3)
      {
        if ((a1[23].i8[12] & 2) != 0)
        {
          f32 = (a1[7].i64[0] + 168);
        }

        else
        {
          v12 = a1[19].i64[0];
          if (v12 && *(v12 + 31) == 1)
          {
            f32 = (v12 + 32);
          }

          else
          {
            f32 = a1[16].f32;
          }
        }

        v14 = f32[1];
        v15 = f32[2];
        v16 = a1[20];
        v17 = vdup_lane_s32(*v16.f32, 1);
        v18 = vdup_laneq_s32(v16, 2);
        v19 = vdup_laneq_s32(v16, 3);
        _Q7 = vaddq_f32(v16, v16);
        *v16.f32 = vdup_lane_s32(vmul_f32(*v16.f32, *_Q7.f32), 0);
        v21 = vmul_lane_f32(v17, *_Q7.f32, 1);
        v22 = vmul_laneq_f32(v18, _Q7, 2);
        v23 = vmul_n_f32(v17, _Q7.f32[0]);
        v24 = vmul_n_f32(v18, _Q7.f32[0]);
        v25 = vmul_n_f32(v19, _Q7.f32[0]);
        v26 = vmul_lane_f32(v18, *_Q7.f32, 1);
        v27 = vmul_lane_f32(v19, *_Q7.f32, 1);
        v28 = vmul_laneq_f32(v19, _Q7, 2);
        __asm { FMOV            V7.2S, #1.0 }

        *v16.f32 = vsub_f32(*_Q7.f32, *v16.f32);
        *_Q7.f32 = vadd_f32(v23, v28);
        v33 = vsub_f32(v24, v27).f32[0];
        v34 = vsub_f32(v23, v28);
        v35 = vsub_f32(*v16.f32, v22);
        v36 = vadd_f32(v26, v25).f32[0];
        v37 = vadd_f32(v24, v27);
        v38 = vsub_f32(v26, v25);
        v16.f32[0] = vsub_f32(*v16.f32, v21).f32[0];
        v25.i32[0] = a3[1].i32[0];
        v39 = vdup_lane_s32(*_Q7.f32, 0);
        v22.f32[0] = v25.f32[0] * ((((v14 * v36) * v36) + ((*f32 * v33) * v33)) + ((v15 * v16.f32[0]) * v16.f32[0]));
        v39.f32[0] = (1.0 - v21.f32[1]) - v22.f32[1];
        v40 = vmul_n_f32(v39, *f32);
        v41 = vext_s8(v34, v35, 4uLL);
        v42 = vmul_n_f32(v41, v14);
        v43 = vext_s8(v37, v38, 4uLL);
        v44 = vmul_n_f32(v43, v15);
        v45 = vmla_f32(vmla_f32(vmul_f32(v41, v42), v39, v40), v43, v44);
        *v38.i32 = (vmul_f32(v42, v35).f32[0] + (v40.f32[0] * _Q7.f32[0])) + (v44.f32[0] * *v38.i32);
        v46 = vmla_n_f32(vmla_n_f32(vmul_n_f32(v42, v36), v40, v33), v44, v16.f32[0]);
        v47 = vadd_f32(vmul_n_f32(v46, v25.f32[0]), vadd_f32(vrev64_s32(vmul_n_f32(*a3, *v38.i32)), vmul_f32(*a3, v45)));
        v46.f32[0] = v22.f32[0] + vaddv_f32(vmul_f32(*a3, v46));
        v81 = v47;
        v82 = v46.f32[0];
        a3 = &v81;
      }

      return physx::Scb::Body::addSpatialVelocity(&a1[6], a2, a3);
    }
  }

  else
  {
    if (a2)
    {
      if (a1[23].i8[12])
      {
        v9 = (a1[7].i64[0] + 164);
      }

      else
      {
        v8 = a1[19].i64[0];
        if (v8 && *(v8 + 31) == 1)
        {
          v9 = (v8 + 44);
        }

        else
        {
          v9 = &a1[16].f32[3];
        }
      }

      v48 = *v9 * a2[1].f32[0];
      v83 = vmul_n_f32(*a2, *v9);
      v84 = v48;
      a2 = &v83;
    }

    if (a3)
    {
      if ((a1[23].i8[12] & 2) != 0)
      {
        v50 = (a1[7].i64[0] + 168);
      }

      else
      {
        v49 = a1[19].i64[0];
        if (v49 && *(v49 + 31) == 1)
        {
          v50 = (v49 + 32);
        }

        else
        {
          v50 = a1[16].f32;
        }
      }

      v51 = v50[1];
      v52 = v50[2];
      v53 = a1[20];
      v54 = vdup_lane_s32(*v53.f32, 1);
      v55 = vdup_laneq_s32(v53, 2);
      v56 = vdup_laneq_s32(v53, 3);
      _Q7 = vaddq_f32(v53, v53);
      *v53.f32 = vdup_lane_s32(vmul_f32(*v53.f32, *_Q7.f32), 0);
      v58 = vmul_lane_f32(v54, *_Q7.f32, 1);
      v59 = vmul_laneq_f32(v55, _Q7, 2);
      v60 = vmul_n_f32(v54, _Q7.f32[0]);
      v61 = vmul_n_f32(v55, _Q7.f32[0]);
      v62 = vmul_n_f32(v56, _Q7.f32[0]);
      v63 = vmul_lane_f32(v55, *_Q7.f32, 1);
      v64 = vmul_lane_f32(v56, *_Q7.f32, 1);
      v65 = vmul_laneq_f32(v56, _Q7, 2);
      __asm { FMOV            V7.2S, #1.0 }

      *v53.f32 = vsub_f32(*_Q7.f32, *v53.f32);
      *_Q7.f32 = vadd_f32(v60, v65);
      v66 = vsub_f32(v61, v64).f32[0];
      v67 = vsub_f32(v60, v65);
      v68 = vsub_f32(*v53.f32, v59);
      v69 = vadd_f32(v63, v62).f32[0];
      v70 = vadd_f32(v61, v64);
      v71 = vsub_f32(v63, v62);
      v53.f32[0] = vsub_f32(*v53.f32, v58).f32[0];
      v62.i32[0] = a3[1].i32[0];
      v72 = vdup_lane_s32(*_Q7.f32, 0);
      v59.f32[0] = v62.f32[0] * ((((v51 * v69) * v69) + ((*v50 * v66) * v66)) + ((v52 * v53.f32[0]) * v53.f32[0]));
      v72.f32[0] = (1.0 - v58.f32[1]) - v59.f32[1];
      v73 = vmul_n_f32(v72, *v50);
      v74 = vext_s8(v67, v68, 4uLL);
      v75 = vmul_n_f32(v74, v51);
      v76 = vext_s8(v70, v71, 4uLL);
      v77 = vmul_n_f32(v76, v52);
      v78 = vmla_f32(vmla_f32(vmul_f32(v74, v75), v72, v73), v76, v77);
      *v71.i32 = (vmul_f32(v75, v68).f32[0] + (v73.f32[0] * _Q7.f32[0])) + (v77.f32[0] * *v71.i32);
      v79 = vmla_n_f32(vmla_n_f32(vmul_n_f32(v75, v69), v73, v66), v77, v53.f32[0]);
      v80 = vadd_f32(vmul_n_f32(v79, v62.f32[0]), vadd_f32(vrev64_s32(vmul_n_f32(*a3, *v71.i32)), vmul_f32(*a3, v78)));
      v79.f32[0] = v59.f32[0] + vaddv_f32(vmul_f32(*a3, v79));
      v81 = v80;
      v82 = v79.f32[0];
      a3 = &v81;
    }

    return physx::Scb::Body::addSpatialAcceleration(&a1[6], a2, a3);
  }

  return result;
}

int32x2_t *physx::NpArticulationLink::addTorque(uint64_t a1, float32x2_t *a2, int a3, int a4)
{
  v7 = physx::NpRigidBodyTemplate<physx::PxArticulationLink>::addSpatialForce(a1, 0, a2, a3);
  v8 = (*(**(a1 + 384) + 200))(*(a1 + 384), v7);
  v9 = 1;
  if (a2->f32[0] == 0.0 && a2->f32[1] == 0.0)
  {
    v9 = a2[1].f32[0] != 0.0;
  }

  return physx::PxArticulationImpl::wakeUpInternal(v8, v9, a4);
}

int32x2_t *physx::NpArticulationLink::setForceAndTorque(uint64_t a1, uint64_t a2, int32x2_t *a3, int a4, __n128 a5)
{
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        v8 = *(a1 + 380);
        if (v8)
        {
          v10 = (*(a1 + 112) + 164);
        }

        else
        {
          v9 = *(a1 + 304);
          if (v9 && *(v9 + 31) == 1)
          {
            v10 = (v9 + 44);
          }

          else
          {
            v10 = (a1 + 268);
          }
        }

        v22 = *v10 * *(a2 + 8);
        *v113 = vmul_n_f32(*a2, *v10);
        *&v113[8] = v22;
        if ((v8 & 2) != 0)
        {
          v24 = *(a1 + 112) + 168;
        }

        else
        {
          v23 = *(a1 + 304);
          if (v23 && *(v23 + 31) == 1)
          {
            v24 = v23 + 32;
          }

          else
          {
            v24 = a1 + 256;
          }
        }

        v25 = *(v24 + 4);
        v26 = *(a1 + 96);
        v27 = *(a1 + 320);
        v28 = vdup_lane_s32(*v27.f32, 1);
        v29 = *(v24 + 8);
        v30 = vdup_laneq_s32(v27, 2);
        v31 = vdup_laneq_s32(v27, 3);
        _Q7 = vaddq_f32(v27, v27);
        *v27.f32 = vdup_lane_s32(vmul_f32(*v27.f32, *_Q7.f32), 0);
        v33 = vmul_lane_f32(v28, *_Q7.f32, 1);
        v34 = vmul_laneq_f32(v30, _Q7, 2);
        v35 = vmul_n_f32(v28, _Q7.f32[0]);
        v36 = vmul_n_f32(v30, _Q7.f32[0]);
        v37 = vmul_n_f32(v31, _Q7.f32[0]);
        v38 = vmul_lane_f32(v30, *_Q7.f32, 1);
        _D20 = vmul_lane_f32(v31, *_Q7.f32, 1);
        v40 = vmul_laneq_f32(v31, _Q7, 2);
        __asm { FMOV            V7.2S, #1.0 }

        *_Q7.f32 = vsub_f32(*_Q7.f32, *v27.f32);
        v45 = vadd_f32(v35, v40);
        *v27.f32 = vsub_f32(v36, _D20);
        _D3 = vsub_f32(v35, v40);
        v47 = vsub_f32(*_Q7.f32, v34);
        v48 = vadd_f32(v38, v37);
        _D18 = vadd_f32(v36, _D20);
        v50 = vsub_f32(v38, v37);
        *_Q7.f32 = vsub_f32(*_Q7.f32, v33);
        v37.f32[0] = vmuls_lane_f32(v25, _D3, 1);
        _D20.f32[0] = vmuls_lane_f32(v29, _D18, 1);
        __asm { FMLA            S3, S20, V18.S[1] }

        v33.f32[0] = ((v37.f32[0] * *v47.i32) + ((*v24 * ((1.0 - v33.f32[1]) - v34.f32[1])) * *v45.i32)) + (_D20.f32[0] * *v50.i32);
        _D18.i32[0] = a3[1].i32[0];
        v51 = vzip1_s32(v45, *v27.f32);
        v52 = vmul_n_f32(v51, *v24);
        v53 = vzip1_s32(v47, v48);
        v54 = vmul_n_f32(v53, v25);
        v55 = vzip1_s32(v50, *_Q7.f32);
        v56 = vmul_n_f32(v55, v29);
        v57 = vmul_n_f32(v54, *v48.i32);
        v54.i32[1] = v37.i32[0];
        v58 = vmla_n_f32(v57, v52, v27.f32[0]);
        v52.f32[1] = *v24 * ((1.0 - v33.f32[1]) - v34.f32[1]);
        v59 = vmla_n_f32(v58, v56, _Q7.f32[0]);
        v56.i32[1] = _D20.i32[0];
        v60 = vmla_f32(vmla_f32(vmul_f32(v53, v54), v51, v52), v55, v56);
        v61 = vdup_lane_s32(v59, 0);
        v61.i32[0] = v33.i32[0];
        *v27.f32 = vadd_f32(vmul_f32(vrev64_s32(*a3), v60), vmul_f32(*a3, v61));
        v62 = vmuls_lane_f32(_D18.f32[0], v60, 1) + ((_D3.f32[0] * COERCE_FLOAT(*a3)) + vmuls_lane_f32(v33.f32[0], *a3, 1));
        v63 = vadd_f32(vmul_n_f32(v59, _D18.f32[0]), *v27.f32);
        *v112 = v62;
        *&v112[4] = v63;
        v64 = *(a1 + 104);
        if (v64 >> 30 == 3 || v64 >> 30 == 2 && (*(v26 + 7689) & 1) != 0)
        {
          v65 = *(a1 + 112);
          if (!v65)
          {
            v111 = v62;
            Stream = physx::Scb::Scene::getStream(v26, HIBYTE(v64) & 0xF);
            v62 = v111;
            v65 = Stream;
            *(a1 + 112) = Stream;
            v26 = *(a1 + 96);
          }

          v67 = v65 + 324;
          v68.i64[0] = *v113;
          v68.i64[1] = __PAIR64__(LODWORD(v62), *&v113[8]);
          *v67 = vaddq_f32(v68, *v67);
          *(v67 + 16) = vadd_f32(v63, *(v67 + 16));
          physx::Scb::Scene::scheduleForUpdate(v26, a1 + 96);
          v69 = *(a1 + 380) | 0xC0000;
          goto LABEL_52;
        }

        a5.n128_f32[0] = physx::Sc::BodyCore::addSpatialVelocity((a1 + 128), *(v26 + 4384), v113, v112);
      }

      goto LABEL_55;
    }

    v15 = *(a1 + 380);
    if (v15)
    {
      v17 = (*(a1 + 112) + 164);
    }

    else
    {
      v16 = *(a1 + 304);
      if (v16 && *(v16 + 31) == 1)
      {
        v17 = (v16 + 44);
      }

      else
      {
        v17 = (a1 + 268);
      }
    }

    v70 = *v17 * *a2;
    v71 = vmul_n_f32(*(a2 + 4), *v17);
    *v113 = v70;
    *&v113[4] = v71;
    if ((v15 & 2) != 0)
    {
      v73 = (*(a1 + 112) + 168);
    }

    else
    {
      v72 = *(a1 + 304);
      if (v72 && *(v72 + 31) == 1)
      {
        v73 = (v72 + 32);
      }

      else
      {
        v73 = (a1 + 256);
      }
    }

    v74 = v73[1];
    v75 = v73[2];
    v11 = *(a1 + 96);
    v76 = *(a1 + 320);
    v77 = vdup_lane_s32(*v76.f32, 1);
    v78 = vdup_laneq_s32(v76, 2);
    v79 = vdup_laneq_s32(v76, 3);
    _Q7 = vaddq_f32(v76, v76);
    *v76.f32 = vdup_lane_s32(vmul_f32(*v76.f32, *_Q7.f32), 0);
    v81 = vmul_lane_f32(v77, *_Q7.f32, 1);
    v82 = vmul_laneq_f32(v78, _Q7, 2);
    v83 = vmul_n_f32(v77, _Q7.f32[0]);
    v84 = vmul_n_f32(v78, _Q7.f32[0]);
    v85 = vmul_n_f32(v79, _Q7.f32[0]);
    v86 = vmul_lane_f32(v78, *_Q7.f32, 1);
    v87 = vmul_lane_f32(v79, *_Q7.f32, 1);
    v88 = vmul_laneq_f32(v79, _Q7, 2);
    __asm { FMOV            V7.2S, #1.0 }

    *v76.f32 = vsub_f32(*_Q7.f32, *v76.f32);
    *_Q7.f32 = vadd_f32(v83, v88);
    v89 = vsub_f32(v84, v87).f32[0];
    v90 = vsub_f32(v83, v88);
    v91 = vsub_f32(*v76.f32, v82);
    v92 = vadd_f32(v86, v85).f32[0];
    v93 = vadd_f32(v84, v87);
    v94 = vsub_f32(v86, v85);
    v76.f32[0] = vsub_f32(*v76.f32, v81).f32[0];
    v85.i32[0] = a3[1].i32[0];
    v95 = vdup_lane_s32(*_Q7.f32, 0);
    v95.f32[0] = (1.0 - v81.f32[1]) - v82.f32[1];
    v81.f32[0] = v85.f32[0] * ((((v74 * v92) * v92) + ((*v73 * v89) * v89)) + ((v75 * v76.f32[0]) * v76.f32[0]));
    v96 = vmul_n_f32(v95, *v73);
    v97 = vext_s8(v90, v91, 4uLL);
    v98 = vmul_n_f32(v97, v74);
    v99 = vext_s8(v93, v94, 4uLL);
    v100 = vmul_n_f32(v99, v75);
    v101 = vmla_f32(vmla_f32(vmul_f32(v97, v98), v95, v96), v99, v100);
    *v94.i32 = (vmul_f32(v98, v91).f32[0] + (v96.f32[0] * _Q7.f32[0])) + (v100.f32[0] * *v94.i32);
    v102 = vmla_n_f32(vmla_n_f32(vmul_n_f32(v98, v92), v96, v89), v100, v76.f32[0]);
    v103 = vadd_f32(vmul_n_f32(v102, v85.f32[0]), vadd_f32(vrev64_s32(vmul_n_f32(*a3, *v94.i32)), vmul_f32(*a3, v101)));
    v104 = v81.f32[0] + vaddv_f32(vmul_f32(*a3, v102));
    *v112 = v103;
    *&v112[8] = v104;
    v105 = *(a1 + 104);
    if (v105 >> 30 == 3 || v105 >> 30 == 2 && (v11[961].i8[1] & 1) != 0)
    {
      v106 = *(a1 + 112);
      if (!v106)
      {
        v106 = physx::Scb::Scene::getStream(v11, HIBYTE(v105) & 0xF);
        *(a1 + 112) = v106;
        v11 = *(a1 + 96);
      }

      v106[37].f32[1] = v70;
      v107 = vadd_f32(v103, v106[39]);
      v106[38] = v71;
      v106[39] = v107;
      v106[40].f32[0] = v104 + v106[40].f32[0];
      v14 = a1 + 96;
LABEL_51:
      physx::Scb::Scene::scheduleForUpdate(v11, v14);
      v69 = *(a1 + 380) | 0x30000;
LABEL_52:
      *(a1 + 380) = v69;
      goto LABEL_55;
    }

    v18 = v11[548];
    v19 = (a1 + 128);
    v20 = v113;
    v21 = v112;
    goto LABEL_54;
  }

  if (a4 == 2)
  {
    a5.n128_f32[0] = physx::Scb::Body::addSpatialVelocity(a1 + 96, a2, a3);
    goto LABEL_55;
  }

  if (a4 == 3)
  {
    v11 = *(a1 + 96);
    v12 = *(a1 + 104);
    if (v12 >> 30 == 3 || v12 >> 30 == 2 && (v11[961].i8[1] & 1) != 0)
    {
      v13 = *(a1 + 112);
      if (!v13)
      {
        v13 = physx::Scb::Scene::getStream(v11, HIBYTE(v12) & 0xF);
        *(a1 + 112) = v13;
        v11 = *(a1 + 96);
      }

      *(v13 + 300) = *a2;
      *(v13 + 308) = *(a2 + 8);
      *(v13 + 312) = vadd_f32(*a3, *(v13 + 312));
      *(v13 + 320) = *a3[1].i32 + *(v13 + 320);
      v14 = a1 + 96;
      goto LABEL_51;
    }

    v18 = v11[548];
    v19 = (a1 + 128);
    v20 = a2;
    v21 = a3;
LABEL_54:
    a5.n128_f32[0] = physx::Sc::BodyCore::setSpatialAcceleration(v19, v18, v20, v21);
  }

LABEL_55:
  v108 = (*(**(a1 + 384) + 200))(*(a1 + 384), a5);
  v109 = 1;
  if (*a3->i32 == 0.0 && *&a3->i32[1] == 0.0)
  {
    v109 = *a3[1].i32 != 0.0;
  }

  return physx::PxArticulationImpl::wakeUpInternal(v108, v109, 1);
}

void physx::NpRigidBodyTemplate<physx::PxArticulationLink>::clearSpatialForce(uint64_t a1, int a2, int a3, int a4)
{
  if ((a2 - 1) < 2)
  {
    v11 = *(a1 + 104);
    if (v11 >> 30 == 3 || v11 >> 30 == 2 && (*(*(a1 + 96) + 7689) & 1) != 0)
    {
      Stream = *(a1 + 112);
      if (!Stream)
      {
        Stream = physx::Scb::Scene::getStream(*(a1 + 96), HIBYTE(v11) & 0xF);
        *(a1 + 112) = Stream;
      }

      v9 = *(a1 + 380);
      if (a3)
      {
        *(Stream + 324) = 0;
        *(Stream + 328) = 0;
        v9 &= ~0x40000u;
        v10 = 0x20000000;
        if (!a4)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v10 = 0;
        if (!a4)
        {
          goto LABEL_31;
        }
      }

      *(Stream + 336) = 0;
      v9 &= ~0x80000u;
      v10 |= 0x40000000u;
      *(Stream + 344) = 0;
      goto LABEL_31;
    }

    v14 = (a1 + 128);

    physx::Sc::BodyCore::clearSpatialVelocity(v14, a3, a4);
  }

  else
  {
    if (a2 != 3 && a2)
    {
      return;
    }

    v7 = *(a1 + 104);
    if (v7 >> 30 == 3 || v7 >> 30 == 2 && (*(*(a1 + 96) + 7689) & 1) != 0)
    {
      v8 = *(a1 + 112);
      if (!v8)
      {
        v8 = physx::Scb::Scene::getStream(*(a1 + 96), HIBYTE(v7) & 0xF);
        *(a1 + 112) = v8;
      }

      v9 = *(a1 + 380);
      if (a3)
      {
        *(v8 + 300) = 0;
        *(v8 + 304) = 0;
        v9 &= ~0x10000u;
        v10 = 0x8000000;
        if (!a4)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v10 = 0;
        if (!a4)
        {
LABEL_31:
          *(a1 + 380) = v10 | v9;
          v15 = *(a1 + 96);

          physx::Scb::Scene::scheduleForUpdate(v15, a1 + 96);
          return;
        }
      }

      *(v8 + 312) = 0;
      v9 &= ~0x20000u;
      v10 |= 0x10000000u;
      *(v8 + 320) = 0;
      goto LABEL_31;
    }

    v13 = (a1 + 128);

    physx::Sc::BodyCore::clearSpatialAcceleration(v13, a3, a4);
  }
}

int32x2_t *physx::NpArticulationLink::setLinearVelocity(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + *(&physx::NpActor::sLazyInitOffsets + *(a1 + 8) + 18));
  *(a1 + 348) = *a2;
  *(a1 + 356) = *(a2 + 8);
  v7 = *(a1 + 104) >> 30;
  if (v7 != 2)
  {
    if (v7 == 3)
    {
      v8 = *(a1 + 96);
      goto LABEL_5;
    }

LABEL_12:
    result = physx::Sc::BodyCore::setLinearVelocity(a1 + 128, a2);
    if (!v6)
    {
      return result;
    }

    goto LABEL_6;
  }

  v8 = *(a1 + 96);
  if ((v8[961].i8[1] & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  result = physx::Scb::Scene::scheduleForUpdate(v8, a1 + 96);
  *(a1 + 380) |= 0x400000u;
  if (!v6)
  {
    return result;
  }

LABEL_6:
  v10 = (*(**(a1 + 384) + 200))(*(a1 + 384));
  v11 = 1;
  if (*a2 == 0.0 && *(a2 + 4) == 0.0)
  {
    v11 = *(a2 + 8) != 0.0;
  }

  return physx::PxArticulationImpl::wakeUpInternal(v10, v11, a3);
}

int32x2_t *physx::NpArticulationLink::setAngularVelocity(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + *(&physx::NpActor::sLazyInitOffsets + *(a1 + 8) + 18));
  *(a1 + 360) = *a2;
  *(a1 + 368) = *(a2 + 8);
  v7 = *(a1 + 104) >> 30;
  if (v7 != 2)
  {
    if (v7 == 3)
    {
      v8 = *(a1 + 96);
      goto LABEL_5;
    }

LABEL_12:
    result = physx::Sc::BodyCore::setAngularVelocity(a1 + 128, a2);
    if (!v6)
    {
      return result;
    }

    goto LABEL_6;
  }

  v8 = *(a1 + 96);
  if ((v8[961].i8[1] & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  result = physx::Scb::Scene::scheduleForUpdate(v8, a1 + 96);
  *(a1 + 380) |= 0x800000u;
  if (!v6)
  {
    return result;
  }

LABEL_6:
  v10 = (*(**(a1 + 384) + 200))(*(a1 + 384));
  v11 = 1;
  if (*a2 == 0.0 && *(a2 + 4) == 0.0)
  {
    v11 = *(a2 + 8) != 0.0;
  }

  return physx::PxArticulationImpl::wakeUpInternal(v10, v11, a3);
}

float *physx::NpArticulationLink::setMaxAngularVelocity(physx::NpArticulationLink *this, float a2)
{
  v3 = a2 * a2;
  v4 = *(this + 26);
  if (v4 >> 30 == 2)
  {
    v5 = *(this + 12);
    if (v5[961].i8[1])
    {
      goto LABEL_5;
    }
  }

  else if (v4 >> 30 == 3)
  {
    v5 = *(this + 12);
LABEL_5:
    Stream = *(this + 14);
    if (!Stream)
    {
      Stream = physx::Scb::Scene::getStream(v5, HIBYTE(v4) & 0xF);
      *(this + 14) = Stream;
      v5 = *(this + 12);
    }

    *(Stream + 188) = v3;
    result = physx::Scb::Scene::scheduleForUpdate(v5, this + 96);
    *(this + 95) |= 0x10u;
    return result;
  }

  v8 = a2 * a2;

  return physx::Sc::BodyCore::setMaxAngVelSq(this + 32, v8);
}

float physx::NpArticulationLink::getMaxAngularVelocity(physx::NpArticulationLink *this)
{
  if ((*(this + 380) & 0x10) != 0)
  {
    v2 = (*(this + 14) + 188);
  }

  else
  {
    v1 = *(this + 38);
    if (v1 && *(v1 + 31) == 1)
    {
      v2 = (v1 + 56);
    }

    else
    {
      v2 = (this + 240);
    }
  }

  return sqrtf(*v2);
}

float *physx::NpArticulationLink::setMaxLinearVelocity(physx::NpArticulationLink *this, float a2)
{
  v3 = a2 * a2;
  v4 = *(this + 26);
  if (v4 >> 30 == 2)
  {
    v5 = *(this + 12);
    if (v5[961].i8[1])
    {
      goto LABEL_5;
    }
  }

  else if (v4 >> 30 == 3)
  {
    v5 = *(this + 12);
LABEL_5:
    Stream = *(this + 14);
    if (!Stream)
    {
      Stream = physx::Scb::Scene::getStream(v5, HIBYTE(v4) & 0xF);
      *(this + 14) = Stream;
      v5 = *(this + 12);
    }

    *(Stream + 192) = v3;
    result = physx::Scb::Scene::scheduleForUpdate(v5, this + 96);
    *(this + 95) |= 0x20u;
    return result;
  }

  v8 = a2 * a2;

  return physx::Sc::BodyCore::setMaxLinVelSq(this + 32, v8);
}

float physx::NpArticulationLink::getMaxLinearVelocity(physx::NpArticulationLink *this)
{
  if ((*(this + 380) & 0x20) != 0)
  {
    v2 = (*(this + 14) + 192);
  }

  else
  {
    v1 = *(this + 38);
    if (v1 && *(v1 + 31) == 1)
    {
      v2 = (v1 + 60);
    }

    else
    {
      v2 = (this + 244);
    }
  }

  return sqrtf(*v2);
}

void physx::NpArticulationLink::visualize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  physx::NpShapeManager::visualize((a1 + 40), a2, a3, a1);
  v6 = *(a1 + 104);
  if (v6)
  {
    v7 = *(a1 + 112);
  }

  else
  {
    v7 = (a1 + *(&physx::Scb::Actor::sLazyInitOffsets + ((v6 >> 24) & 0xF) + 3) + 108);
  }

  if ((*v7 & 1) == 0)
  {
    goto LABEL_34;
  }

  v8 = *(a3 + 8624);
  if ((v8 & 0x20) == 0)
  {
    v9 = *(a3 + 1872);
    v10 = *(v9 + 1792);
LABEL_13:
    v12 = (v9 + 1832);
    goto LABEL_14;
  }

  if (*(a3 + 8292))
  {
    v11 = (a3 + 8196);
  }

  else
  {
    v11 = (*(a3 + 1872) + 1792);
  }

  v10 = *v11;
  if (!*(a3 + 8302))
  {
    v9 = *(a3 + 1872);
    goto LABEL_13;
  }

  v12 = (a3 + 8236);
LABEL_14:
  v13 = v10 * *v12;
  if (v13 != 0.0)
  {
    (*(*a1 + 152))(v231, a1);
    v14 = physx::Cm::RenderOutput::operator<<(a2, v231);
    *v240 = v13;
    *&v240[4] = v13;
    *&v240[8] = v13;
    *&v240[12] = 0xFF00FF00FFFF0000;
    v241 = -1.7015e38;
    physx::Cm::operator<<(v14, v240);
    v8 = *(a3 + 8624);
  }

  v15 = v8 & 0x20;
  if (v15 && *(a3 + 8294))
  {
    v16 = (a3 + 8204);
  }

  else
  {
    v16 = (*(a3 + 1872) + 1800);
  }

  v17 = v10 * *v16;
  if (v17 != 0.0)
  {
    v18 = physx::Cm::RenderOutput::operator<<(a2, a1 + 320);
    *v231 = v17;
    *&v231[4] = v17;
    *&v231[8] = v17;
    *&v231[12] = 0xFF00FF00FFFF0000;
    LODWORD(v232) = -16776961;
    physx::Cm::operator<<(v18, v231);
    v15 = *(a3 + 8624) & 0x20;
  }

  if (v15 && *(a3 + 8296))
  {
    v19 = (a3 + 8212);
  }

  else
  {
    v19 = (*(a3 + 1872) + 1808);
  }

  v20 = v10 * *v19;
  if (v20 != 0.0)
  {
    *(a2 + 4) = 0xFFFFFF;
    *(a2 + 36) = 1065353216;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 1065353216;
    *(a2 + 68) = 0;
    *(a2 + 60) = 0;
    *(a2 + 76) = 1065353216;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 96) = 1065353216;
    v21 = v20 * *(a1 + 356);
    v22 = v20 * 0.2;
    *&v231[8] = *(a1 + 344);
    v23 = vmul_n_f32(*(a1 + 348), v20);
    *v231 = *(a1 + 336);
    *&v231[12] = vadd_f32(v23, *v231);
    *&v232 = v21 + *&v231[8];
    *(&v232 + 1) = v22;
    physx::Cm::operator<<(a2, v231);
    v15 = *(a3 + 8624) & 0x20;
  }

  if (v15 && *(a3 + 8297))
  {
    v24 = (a3 + 8216);
  }

  else
  {
    v24 = (*(a3 + 1872) + 1812);
  }

  v25 = v10 * *v24;
  if (v25 != 0.0)
  {
    *(a2 + 4) = 0;
    *(a2 + 36) = 1065353216;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 1065353216;
    *(a2 + 68) = 0;
    *(a2 + 60) = 0;
    *(a2 + 76) = 1065353216;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 96) = 1065353216;
    v26 = v25 * *(a1 + 368);
    v27 = v25 * 0.2;
    *&v231[8] = *(a1 + 344);
    v28 = vmul_n_f32(*(a1 + 360), v25);
    *v231 = *(a1 + 336);
    *&v231[12] = vadd_f32(v28, *v231);
    *&v232 = v26 + *&v231[8];
    *(&v232 + 1) = v27;
    physx::Cm::operator<<(a2, v231);
  }

LABEL_34:
  v29 = *(a1 + 104);
  if (v29)
  {
    v30 = *(a1 + 112);
  }

  else
  {
    v30 = (a1 + *(&physx::Scb::Actor::sLazyInitOffsets + ((v29 >> 24) & 0xF) + 3) + 108);
  }

  if (*v30)
  {
    v31 = (*(*a1 + 56))(a1);
    v32 = (*(*v31 + 560))(v31, 0);
    v33 = *(*(*a1 + 56))(a1);
    if ((v32 * (*(v33 + 560))()) != 0.0)
    {
      v34 = *(a1 + 380);
      if ((v34 & 2) != 0)
      {
        v36 = *(a1 + 112) + 168;
      }

      else
      {
        v35 = *(a1 + 304);
        if (v35 && *(v35 + 31) == 1)
        {
          v36 = v35 + 32;
        }

        else
        {
          v36 = a1 + 256;
        }
      }

      v37 = *(v36 + 8);
      v38 = vrev64_s32(*v36);
      __asm { FMOV            V3.2S, #1.0 }

      v43 = vbic_s8(vdiv_f32(_D3, v38), vceqz_f32(v38));
      v44 = 1.0 / v37;
      _ZF = v37 == 0.0;
      v45 = 0;
      if (!_ZF)
      {
        *v45.i32 = v44;
      }

      if (v34)
      {
        v47 = (*(a1 + 112) + 164);
      }

      else
      {
        v46 = *(a1 + 304);
        if (v46 && *(v46 + 31) == 1)
        {
          v47 = (v46 + 44);
        }

        else
        {
          v47 = (a1 + 268);
        }
      }

      *v45.i32 = *v45.i32 * (6.0 / (1.0 / *v47));
      v217 = 6.0 / (1.0 / *v47);
      v219 = v45;
      *(a2 + 4) = 0xFFFFFF;
      v48 = physx::Cm::RenderOutput::operator<<(a2, a1 + 320);
      v49 = vmul_n_f32(v43, v217);
      v50 = vmul_f32(vsqrt_f32(vabs_f32(vadd_f32(vdup_lane_s32(v219, 0), vsub_f32(v49, vrev64_s32(v49))))), 0x3F0000003F000000);
      v51 = sqrtf(vabds_f32(vaddv_f32(v49), *v219.i32)) * 0.5;
      *v231 = vneg_f32(v50);
      *&v231[8] = -v51;
      *&v231[12] = v50;
      *&v232 = v51;
      BYTE4(v232) = 1;
      physx::Cm::operator<<(v48, v231);
    }

    v52 = (*(*a1 + 56))(a1);
    v53 = v32 * (*(*v52 + 560))(v52, 20);
    v54 = *(*(*a1 + 56))(a1);
    v55 = v32 * (*(v54 + 560))();
    if (v53 != 0.0 || v55 != 0.0)
    {
      v222 = &unk_1F5D1E800;
      v223 = v53;
      v224 = v55;
      v225 = a2;
      v56 = *(a1 + 400);
      if (v56)
      {
        (*(*a1 + 152))(v231, a1);
        (*(**(a1 + 392) + 88))(v239);
        _S1 = *&v239[16] + *&v239[16];
        _S3 = *&v239[24] + *&v239[24];
        v59 = (*&v231[12] * *&v231[12]) + -0.5;
        v60.i32[0] = *v231;
        _Q7.i64[0] = *&v231[4];
        __asm
        {
          FMLA            S16, S3, V7.S[1]
          FMLA            S18, S1, V7.S[1]
          FMLA            S20, S16, V7.S[1]
        }

        v65 = *v239;
        v65.i32[3] = *&v231[8];
        v66 = vextq_s8(vextq_s8(v60, v60, 4uLL), _Q7, 0xCuLL);
        v66.f32[3] = -*v231;
        v67 = vmlaq_n_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(*v239, 3), *v239, 4uLL), v66), *v239, *&v231[12]);
        v66.f32[3] = -*&v231[4];
        _Q7.i64[1] = __PAIR64__(*&v239[8], *v231);
        v68 = vmlsq_f32(vmlaq_f32(vuzp2q_s32(vextq_s8(v67, v67, 4uLL), v67), vextq_s8(vextq_s8(*v239, *v239, 0xCuLL), *v239, 8uLL), v66), _Q7, v65);
        *v240 = vzip2q_s32(vzip1q_s32(v68, vextq_s8(v68, v68, 0xCuLL)), v68);
        *&v240[16] = *&v231[16] + (((*&v231[12] * (vmuls_lane_f32(*&v239[20] + *&v239[20], vnegq_f32(v65), 3) + (*&v231[4] * (*&v239[24] + *&v239[24])))) + ((*&v239[16] + *&v239[16]) * v59)) + (*v231 * _S16));
        v241 = *&v232 + (((*&v231[12] * _S18) + ((*&v239[20] + *&v239[20]) * v59)) + (*&v231[4] * _S16));
        v242 = *(&v232 + 1) + _S20;
        (*(*v56 + 152))(v231, v56);
        (*(**(a1 + 392) + 64))(&v235);
        _S2 = v236 + v236;
        _S3 = v238 + v238;
        v71 = (*&v231[12] * *&v231[12]) + -0.5;
        v72.i32[0] = *v231;
        _Q7.i64[0] = *&v231[4];
        __asm
        {
          FMLA            S16, S3, V7.S[1]
          FMLA            S18, S2, V7.S[1]
          FMLA            S20, S16, V7.S[1]
        }

        v77 = v235;
        v77.i32[3] = *&v231[8];
        v78 = vextq_s8(vextq_s8(v72, v72, 4uLL), _Q7, 0xCuLL);
        v78.f32[3] = -*v231;
        v79 = vmlaq_n_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(v235, 3), v235, 4uLL), v78), v235, *&v231[12]);
        v78.f32[3] = -*&v231[4];
        _Q7.i64[1] = __PAIR64__(v235.u32[2], *v231);
        v80 = vmlsq_f32(vmlaq_f32(vuzp2q_s32(vextq_s8(v79, v79, 4uLL), v79), vextq_s8(vextq_s8(v235, v235, 0xCuLL), v235, 8uLL), v78), _Q7, v77);
        *v239 = vzip2q_s32(vzip1q_s32(v80, vextq_s8(v80, v80, 0xCuLL)), v80);
        *&v239[16] = *&v231[16] + (((*&v231[12] * (vmuls_lane_f32(v237 + v237, vnegq_f32(v77), 3) + (*&v231[4] * (v238 + v238)))) + ((v236 + v236) * v71)) + (*v231 * _S16));
        *&v239[20] = *&v232 + (((*&v231[12] * _S18) + ((v237 + v237) * v71)) + (*&v231[4] * _S16));
        *&v239[24] = *(&v232 + 1) + _S20;
        (*(v222 + 2))(&v222, v240, v239);
        v81 = (*(**(a1 + 392) + 96))(*(a1 + 392));
        if (*((*(*a1 + 496))(a1) + 8) == 11)
        {
          v84 = *v239;
          *v231 = *v239;
          v85 = *&v239[4];
          *&v231[4] = *&v239[4];
          v232 = *&v239[20];
          v86 = *&v239[8];
          _S16 = *&v240[8];
          _S17 = *&v240[12];
          __asm { FMLA            S0, S16, V3.S[1] }

          v90 = *&v239[12];
          __asm { FMLA            S0, S17, V3.S[2] }

          if (_S0 < 0.0)
          {
            v84 = -*v239;
            *&v85 = -*&v239[4];
            v86 = -*&v239[8];
            *v239 = -*v239;
            *&v239[4] = -*&v239[4];
            v90 = -*(&v85 + 2);
            *&v239[8] = -*(&v85 + 1);
            *&v239[12] = -*(&v85 + 2);
          }

          v92 = (((*&v240[12] * v84) - (*v240 * v90)) - (*&v240[4] * v86)) + (*&v85 * *&v240[8]);
          v93 = (((*&v240[12] * *&v85) - (*&v240[4] * v90)) - (*&v240[8] * v84)) + (v86 * *v240);
          v94 = (((*&v240[12] * v86) - (*&v240[8] * v90)) - (*v240 * *&v85)) + (v84 * *&v240[4]);
          v95 = (((*v240 * v84) + (*&v240[12] * v90)) + (*&v240[4] * *&v85)) + (*&v240[8] * v86);
          if (v92 == 0.0)
          {
            v97 = 0.0;
            v98 = 0.0;
            v99 = 1.0;
          }

          else
          {
            v96 = sqrtf(((v92 * v92) + 0.0) + (v95 * v95));
            v97 = v92 / v96;
            v98 = 0.0 / v96;
            v99 = v95 / v96;
          }

          v140 = v97 / (v99 + 1.0);
          v141 = 1.8447e19;
          if (v97 < 0.0)
          {
            v141 = -1.8447e19;
          }

          if (v99 == -1.0)
          {
            v140 = v141;
          }

          v142 = *(v81 + 8);
          if ((v142 & 0x40000) != 0)
          {
            v145 = *(v81 + 16);
            v143 = (v145 + 148);
            v144 = (v145 + 152);
          }

          else
          {
            v143 = (v81 + 88);
            v144 = (v81 + 92);
          }

          v146 = (v93 * v99) - (v95 * v98);
          v147 = (v94 * v99) - (v95 * v98);
          v148 = (v92 * v97) + (v95 * v99);
          if ((v142 & 0x20000) != 0)
          {
            v151 = *(v81 + 16);
            v149 = (v151 + 140);
            v150 = (v151 + 144);
          }

          else
          {
            v149 = (v81 + 96);
            v150 = (v81 + 104);
          }

          v152 = v148 + (v93 * v98);
          if ((v142 & 0x400) != 0)
          {
            v153 = (*(v81 + 16) + 108);
          }

          else
          {
            v153 = (v81 + 348);
          }

          v154 = (v146 - (v94 * v97)) + (v98 * v92);
          v155 = (v147 - (v92 * v98)) + (v97 * v93);
          v156 = *v143;
          v157 = *v144;
          v158 = v152 + (v94 * v98);
          v159 = *v149;
          v160 = *v150;
          v221 = *v153;
          if ((v142 & 0x4000) != 0)
          {
            v161 = (*(v81 + 16) + 124);
          }

          else
          {
            v161 = (v81 + 364);
          }

          v162 = fabsf(v140) > tanf(v157 - *v161);
          (*(v222 + 4))(&v222, v231, v162, v156, v157);
          v163 = v154 / (v158 + 1.0);
          v164 = 1.8447e19;
          if (v155 >= 0.0)
          {
            v165 = 1.8447e19;
          }

          else
          {
            v165 = -1.8447e19;
          }

          if (v154 < 0.0)
          {
            v164 = -1.8447e19;
          }

          if (v158 == -1.0)
          {
            v166 = v165;
          }

          else
          {
            v166 = v155 / (v158 + 1.0);
          }

          if (v158 == -1.0)
          {
            v167 = v164;
          }

          else
          {
            v167 = v163;
          }

          v168 = tanf(v159 * 0.25);
          v169 = tanf(v160 * 0.25);
          v170 = tanf(v221 * 0.25);
          v171 = fabsf(v166);
          v172 = fabsf(v167);
          v173 = (((v170 + v171) / (1.0 - (v171 * v170))) / v168) * (((v170 + v171) / (1.0 - (v171 * v170))) / v168);
          v174 = ((v170 + v172) / (1.0 - (v172 * v170))) / v169;
          (*(v222 + 5))(&v222, v231, (v173 + (v174 * v174)) > 1.0, v168, v169);
        }

        else
        {
          v101 = *v240;
          v100 = *&v240[4];
          v102 = *&v240[8];
          v103 = v100 * (v100 + v100);
          *v83.i32 = v102 * (v102 + v102);
          v104 = (v101 + v101) * *&v240[4];
          v105 = (v101 + v101) * *&v240[8];
          v106 = (v101 + v101) * *&v240[12];
          v107 = (v100 + v100) * *&v240[8];
          v108 = (v100 + v100) * *&v240[12];
          v109 = (v102 + v102) * *&v240[12];
          v110 = 1.0;
          *v231 = (1.0 - v103) - *v83.i32;
          *&v231[4] = v104 + v109;
          *v82.i32 = 1.0 - (v101 * (v101 + v101));
          *&v231[8] = v105 - v108;
          *&v231[12] = v104 - v109;
          *&v231[16] = *v82.i32 - *v83.i32;
          *&v232 = v107 + v106;
          *(&v232 + 1) = v105 + v108;
          v233 = v107 - v106;
          v234 = *v82.i32 - v103;
          v83.i64[0] = *v239;
          v82.i32[0] = *&v239[8];
          v111 = *&v239[16];
          v112 = *&v239[24];
          v113 = *&v239[4];
          v215 = -*&v239[8];
          v216 = v82;
          v218 = v83;
          v220 = *&v239[12];
          v114 = *&v239[12];
          v115 = *&v239[4];
          v116.i32[0] = *v239;
          if ((((vmuls_lane_f32(*&v240[4], *v239, 1) + (*v240 * *v239)) + (*&v240[8] * *&v239[8])) + (*&v240[12] * *&v239[12])) < 0.0)
          {
            v114 = -*&v239[12];
            v116 = vneg_f32(*v239);
            *v239 = v116;
            *v82.i32 = -*&v239[8];
            *&v239[8] = -*&v239[8];
            *&v239[12] = -*&v239[12];
            v115 = v116.f32[1];
          }

          v117 = (*&v240[16] - *&v239[16]) + (*&v240[16] - *&v239[16]);
          v118 = (v241 - *&v239[20]) + (v241 - *&v239[20]);
          v119 = (v242 - *&v239[24]) + (v242 - *&v239[24]);
          v120 = (v114 * v114) + -0.5;
          v121 = (-(v115 * v118) - (v116.f32[0] * v117)) - (*v82.i32 * v119);
          v122 = ((v114 * ((*v82.i32 * v118) - (v115 * v119))) + (v117 * v120)) - (v116.f32[0] * v121);
          v123 = ((v114 * ((v116.f32[0] * v119) - (*v82.i32 * v117))) + (v118 * v120)) - (v115 * v121);
          v124 = ((v114 * ((v115 * v117) - (v116.f32[0] * v118))) + (v119 * v120)) - (*v82.i32 * v121);
          v125 = (((v114 * *v240) - (v116.f32[0] * *&v240[12])) - (v115 * *&v240[8])) + (*&v240[4] * *v82.i32);
          v126 = (((v114 * *&v240[4]) - (v115 * *&v240[12])) - (*v82.i32 * *v240)) + (*&v240[8] * v116.f32[0]);
          v127 = (((v114 * *&v240[8]) - (*v82.i32 * *&v240[12])) - (v116.f32[0] * *&v240[4])) + (*v240 * v115);
          v128 = (((*v240 * v116.f32[0]) + (v114 * *&v240[12])) + (v115 * *&v240[4])) + (*v82.i32 * *&v240[8]);
          *v235.i32 = v125;
          *&v235.i32[1] = v126;
          *&v235.i32[2] = v127;
          *&v235.i32[3] = v128;
          v236 = v122;
          v237 = v123;
          v238 = v124;
          v129 = 0.0;
          v130 = 0.0;
          v131 = 0.0;
          if (v125 != 0.0)
          {
            v132 = sqrtf(((v125 * v125) + 0.0) + (v128 * v128));
            v130 = v125 / v132;
            v131 = 0.0 / v132;
            v110 = v128 / v132;
          }

          v133 = (((v125 * v110) - (v128 * v130)) - (v126 * v131)) + (v131 * v127);
          v134 = (((v126 * v110) - (v128 * v131)) - (v127 * v130)) + (v131 * v125);
          v135 = (((v127 * v110) - (v128 * v131)) - (v125 * v131)) + (v130 * v126);
          v136 = (((v125 * v130) + (v128 * v110)) + (v126 * v131)) + (v127 * v131);
          if (v134 == 0.0)
          {
            v139 = 1.0;
            v138 = 0.0;
          }

          else
          {
            v137 = sqrtf((v134 * v134) + (v136 * v136));
            v129 = 0.0 / v137;
            v138 = v134 / v137;
            v139 = v136 / v137;
          }

          v175 = (((v135 * v139) - (v136 * v129)) - (v133 * v138)) + (v129 * v134);
          if (v175 == 0.0)
          {
            v178 = 2.0;
            v213 = 0.0;
          }

          else
          {
            v176 = (((v133 * v129) + (v136 * v139)) + (v134 * v138)) + (v135 * v129);
            v177 = sqrtf(((v175 * v175) + 0.0) + (v176 * v176));
            v213 = v175 / v177;
            v178 = (v176 / v177) + 1.0;
          }

          if (*(v81 + 290))
          {
            v179 = sqrtf((((v131 * v131) + (v130 * v130)) + (v131 * v131)) + (v110 * v110));
            if (v179 != 0.0)
            {
              v130 = v130 / v179;
              v110 = v110 / v179;
            }

            if (v110 < -1.0)
            {
              v110 = -1.0;
            }

            if (v110 > 1.0)
            {
              v110 = 1.0;
            }

            v180 = acosf(v110);
            v181 = v180 + v180;
            if (v130 >= 0.0)
            {
              v182 = v181;
            }

            else
            {
              v182 = -v181;
            }

            v183 = (v182 + 0.01) > *(v81 + 92) || (v182 + -0.01) < *(v81 + 88);
            v228.i64[0] = v218.i64[0];
            v228.i64[1] = __PAIR64__(LODWORD(v220), v216.u32[0]);
            v229 = v111;
            v230 = v112;
            (*(v222 + 4))(&v222, &v228, v183);
          }

          v214 = -v113;
          if (*(v81 + 291))
          {
            v184 = *(v81 + 96);
            v185 = *(v81 + 100);
            v186 = atan2f(v138, v139 + 1.0) * 4.0;
            v187 = (v186 + 0.01) > v185 || (v186 + -0.01) < v184;
            v229 = v111;
            v230 = v112;
            v188 = vextq_s8(vextq_s8(v216, v216, 4uLL), v218, 0xCuLL);
            v189 = vextq_s8(vextq_s8(v188, v188, 0xCuLL), v188, 8uLL);
            v188.i32[3] = v188.i32[1];
            v190 = vextq_s8(vextq_s8(v189, v189, 0xCuLL), v189, 8uLL);
            v189.f32[3] = v214;
            v190.f32[3] = v215;
            v191 = vmlaq_f32(vmlaq_f32(vmlaq_n_f32(vmulq_f32(v188, xmmword_1E3117B30), xmmword_1E3117B40, v220), xmmword_1E3117B50, v189), xmmword_1E3117B60, v190);
            v228 = vzip2q_s32(vzip1q_s32(v191, vextq_s8(v191, v191, 0xCuLL)), v191);
            (*(v222 + 4))(&v222, &v228, v187, -v185, -v184);
          }

          if (*(v81 + 292))
          {
            v192 = *(v81 + 104);
            v193 = *(v81 + 108);
            v194 = atan2f(v213, v178) * 4.0;
            v195 = (v194 + 0.01) > v193 || (v194 + -0.01) < v192;
            v229 = v111;
            v230 = v112;
            v196 = vextq_s8(vextq_s8(v216, v216, 4uLL), v218, 0xCuLL);
            v197 = vextq_s8(vextq_s8(v196, v196, 0xCuLL), v196, 8uLL);
            v196.i32[3] = v196.i32[1];
            v198 = vextq_s8(vextq_s8(v197, v197, 0xCuLL), v197, 8uLL);
            v197.f32[3] = v214;
            v198.f32[3] = v215;
            v199 = vmlaq_f32(vmlaq_f32(vmlaq_n_f32(vmulq_f32(v196, xmmword_1E3116090), xmmword_1E31160A0, v220), xmmword_1E31160B0, v197), xmmword_1E30714A0, v198);
            v228 = vzip2q_s32(vzip1q_s32(v199, vextq_s8(v199, v199, 0xCuLL)), v199);
            (*(v222 + 4))(&v222, &v228, v195, -v193, -v192);
          }

          v200 = 0;
          v201 = (v81 + 116);
          v202 = (v81 + 293);
          for (i = 4; i != 7; ++i)
          {
            v204 = *v202++;
            if (v204 == 1)
            {
              v205 = *(v201 - 1);
              v206 = *v201;
              v207 = *&v235.i32[i];
              v208 = &v231[v200];
              v209 = *&v231[v200 + 8];
              _NF = v207 > *v201 || v207 < v205;
              v211 = *v208;
              *v228.i8 = vadd_f32(*&v239[16], vmul_n_f32(*v208, v205));
              *&v228.i32[2] = *&v239[24] + (v205 * v209);
              v226 = vadd_f32(*&v239[16], vmul_n_f32(v211, v206));
              v227 = *&v239[24] + (v206 * v209);
              if (_NF)
              {
                v212 = 16711680;
              }

              else
              {
                v212 = 0xFFFFFFLL;
              }

              (*(v222 + 7))(&v222, &v228, &v226, v212);
            }

            v201 += 2;
            v200 += 12;
          }
        }
      }
    }
  }
}

BOOL physx::PxArticulationLink::isKindOf(physx::PxArticulationLink *this, const char *a2)
{
  if (!strcmp("PxArticulationLink", a2))
  {
    return 1;
  }

  return physx::PxRigidBody::isKindOf(this, a2);
}

uint64_t physx::NpActorTemplate<physx::PxArticulationLink>::getScene(uint64_t a1)
{
  v1 = (a1 + *(&physx::NpActor::sLazyInitOffsets + *(a1 + 8) + 18));
  if (((*(v1 + 2) >> 30) - 1) > 1)
  {
    return 0;
  }

  v2 = *v1;
  if (v2)
  {
    return v2 - 16;
  }

  else
  {
    return 0;
  }
}

float physx::NpRigidActorTemplate<physx::PxArticulationLink>::getWorldBounds@<S0>(physx::PxRigidActor *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  physx::NpShapeManager::getWorldBounds((a1 + 40), a1, &v11);
  v4 = (v12 + v14) * 0.5;
  v5 = ((v14 - v12) * 0.5) * a3;
  v6 = v4 - v5;
  result = v4 + v5;
  v8 = vmul_f32(vadd_f32(v11, v13), 0x3F0000003F000000);
  v9 = vmul_n_f32(vmul_f32(vsub_f32(v13, v11), 0x3F0000003F000000), a3);
  *a2 = vsub_f32(v8, v9);
  *(a2 + 8) = v6;
  *(a2 + 12) = vadd_f32(v8, v9);
  *(a2 + 20) = result;
  return result;
}

int32x2_t *physx::NpRigidActorTemplate<physx::PxArticulationLink>::setActorFlag(int32x2_t *result, int a2, int a3)
{
  v5 = result;
  if (a2 != 8)
  {
    goto LABEL_35;
  }

  v6 = *(&physx::NpActor::sLazyInitOffsets + result[1].u16[0] + 18);
  v7 = (result + v6);
  v8 = *(result[1].u32 + v6);
  if (v8)
  {
    v9 = v7[2];
  }

  else
  {
    v9 = (v7 + *(&physx::Scb::Actor::sLazyInitOffsets + ((v8 >> 24) & 0xF) + 3) + 12);
  }

  v10 = *v7;
  v11 = v9->u8[0];
  if (v11 & 8) == 0 || (a3)
  {
    if ((v11 & 8) != 0 || !a3)
    {
      goto LABEL_35;
    }

    if (v10)
    {
      physx::NpActor::removeConstraintsFromScene(&result[3]);
      v6 = *(&physx::NpActor::sLazyInitOffsets + v5[1].u16[0] + 18);
      LODWORD(v8) = *(v5[1].i32 + v6);
    }

    v17 = v11 | 8;
    v18 = v5 + v6;
    v19 = BYTE3(v8) & 0xF;
    v20 = *(&physx::Scb::Actor::sLazyInitOffsets + v19 + 3);
    v21 = v8 >> 30;
    if (v21 == 2)
    {
      v22 = *v18;
      if (*(*v18 + 7689))
      {
        goto LABEL_28;
      }
    }

    else if (v21 == 3)
    {
      v22 = *v18;
LABEL_28:
      Stream = *(v18 + 16);
      if (!Stream)
      {
        Stream = physx::Scb::Scene::getStream(v22, v19);
        *(v18 + 16) = Stream;
        v22 = *v18;
      }

      *Stream = v17;
      physx::Scb::Scene::scheduleForUpdate(v22, v18);
      *(v18 + 8) |= 1u;
LABEL_34:
      result = (*(*v5 + 576))(v5);
      goto LABEL_35;
    }

    v26 = (v20 + v18);
    if (v17 != *(v20 + v18 + 12))
    {
      v26[12] = v17;
      if (*v26)
      {
        (*(**v26 + 16))(*v26);
      }
    }

    goto LABEL_34;
  }

  result = (*(*result + 584))(result);
  v12 = v11 & 0xFFFFFFF7;
  v13 = v5 + *(&physx::NpActor::sLazyInitOffsets + v5[1].u16[0] + 18);
  v14 = *(v13 + 8);
  v15 = (v14 >> 24) & 0xF;
  v16 = v14 >> 30;
  if (v16 == 2)
  {
    result = *v13;
    if (*(*v13 + 7689))
    {
      goto LABEL_18;
    }

LABEL_21:
    v24 = *(&physx::Scb::Actor::sLazyInitOffsets + v15 + 3) + v13;
    if (v12 != *(v24 + 12))
    {
      *(v24 + 12) = v12;
      result = *v24;
      if (*v24)
      {
        result = (*(*result + 16))(result);
      }
    }

    goto LABEL_24;
  }

  if (v16 != 3)
  {
    goto LABEL_21;
  }

  result = *v13;
LABEL_18:
  v23 = *(v13 + 16);
  if (!v23)
  {
    v23 = physx::Scb::Scene::getStream(result, v15);
    *(v13 + 16) = v23;
    result = *v13;
  }

  *v23 = v12;
  result = physx::Scb::Scene::scheduleForUpdate(result, v13);
  *(v13 + 8) |= 1u;
LABEL_24:
  if (v10 && *&v5[4])
  {
    result = physx::NpActor::addConstraintsToSceneInternal(v5 + 3);
  }

LABEL_35:
  v27 = v5 + *(&physx::NpActor::sLazyInitOffsets + v5[1].u16[0] + 18);
  v28 = *(v27 + 8);
  if (a3)
  {
    if (v28)
    {
      v31 = *(v27 + 16);
      v29 = (v28 >> 24) & 0xF;
      v30 = *(&physx::Scb::Actor::sLazyInitOffsets + v29 + 3) + v27;
    }

    else
    {
      v29 = (v28 >> 24) & 0xF;
      v30 = *(&physx::Scb::Actor::sLazyInitOffsets + v29 + 3) + v27;
      v31 = (v30 + 12);
    }

    v33 = *v31 | a2;
  }

  else
  {
    if (v28)
    {
      v32 = *(v27 + 16);
      v29 = (v28 >> 24) & 0xF;
      v30 = *(&physx::Scb::Actor::sLazyInitOffsets + v29 + 3) + v27;
    }

    else
    {
      LODWORD(v29) = BYTE3(v28) & 0xF;
      v30 = *(&physx::Scb::Actor::sLazyInitOffsets + v29 + 3) + v27;
      v32 = (v30 + 12);
    }

    v33 = *v32 & ~a2;
  }

  v34 = v28 >> 30;
  if (v34 == 2)
  {
    result = *v27;
    if (*(*v27 + 7689))
    {
      goto LABEL_48;
    }
  }

  else if (v34 == 3)
  {
    result = *v27;
LABEL_48:
    v35 = *(v27 + 16);
    if (!v35)
    {
      v35 = physx::Scb::Scene::getStream(result, v29);
      *(v27 + 16) = v35;
      result = *v27;
    }

    *v35 = v33;
    result = physx::Scb::Scene::scheduleForUpdate(result, v27);
    *(v27 + 8) |= 1u;
    return result;
  }

  if (v33 != *(v30 + 12))
  {
    *(v30 + 12) = v33;
    result = *v30;
    if (*v30)
    {
      v36 = *(*result + 16);

      return v36();
    }
  }

  return result;
}

int32x2_t *physx::NpRigidActorTemplate<physx::PxArticulationLink>::setActorFlags(int32x2_t *result, _BYTE *a2)
{
  v3 = result;
  v4 = *(&physx::NpActor::sLazyInitOffsets + result[1].u16[0] + 18);
  v5 = (result + v4);
  v6 = *(result[1].u32 + v4);
  if (v6)
  {
    v7 = v5[2];
  }

  else
  {
    v7 = (v5 + *(&physx::Scb::Actor::sLazyInitOffsets + ((v6 >> 24) & 0xF) + 3) + 12);
  }

  v8 = *v5;
  v9 = v7->u8[0];
  if ((*a2 & 8) != 0 || (v9 & 8) == 0)
  {
    if ((*a2 & 8) == 0 || (v9 & 8) != 0)
    {
      goto LABEL_34;
    }

    if (v8)
    {
      physx::NpActor::removeConstraintsFromScene(&result[3]);
      v4 = *(&physx::NpActor::sLazyInitOffsets + v3[1].u16[0] + 18);
      LODWORD(v6) = *(v3[1].i32 + v4);
    }

    v15 = v9 | 8;
    v16 = v3 + v4;
    v17 = BYTE3(v6) & 0xF;
    v18 = *(&physx::Scb::Actor::sLazyInitOffsets + v17 + 3);
    v19 = v6 >> 30;
    if (v19 == 2)
    {
      v20 = *v16;
      if (*(*v16 + 7689))
      {
        goto LABEL_27;
      }
    }

    else if (v19 == 3)
    {
      v20 = *v16;
LABEL_27:
      Stream = *(v16 + 16);
      if (!Stream)
      {
        Stream = physx::Scb::Scene::getStream(v20, v17);
        *(v16 + 16) = Stream;
        v20 = *v16;
      }

      *Stream = v15;
      physx::Scb::Scene::scheduleForUpdate(v20, v16);
      *(v16 + 8) |= 1u;
LABEL_33:
      result = (*(*v3 + 576))(v3);
      goto LABEL_34;
    }

    v24 = (v18 + v16);
    if (v15 != *(v18 + v16 + 12))
    {
      v24[12] = v15;
      if (*v24)
      {
        (*(**v24 + 16))(*v24);
      }
    }

    goto LABEL_33;
  }

  result = (*(*result + 584))(result);
  v10 = v9 & 0xFFFFFFF7;
  v11 = v3 + *(&physx::NpActor::sLazyInitOffsets + v3[1].u16[0] + 18);
  v12 = *(v11 + 8);
  v13 = (v12 >> 24) & 0xF;
  v14 = v12 >> 30;
  if (v14 == 2)
  {
    result = *v11;
    if (*(*v11 + 7689))
    {
      goto LABEL_17;
    }

LABEL_20:
    v22 = *(&physx::Scb::Actor::sLazyInitOffsets + v13 + 3) + v11;
    if (v10 != *(v22 + 12))
    {
      *(v22 + 12) = v10;
      result = *v22;
      if (*v22)
      {
        result = (*(*result + 16))(result);
      }
    }

    goto LABEL_23;
  }

  if (v14 != 3)
  {
    goto LABEL_20;
  }

  result = *v11;
LABEL_17:
  v21 = *(v11 + 16);
  if (!v21)
  {
    v21 = physx::Scb::Scene::getStream(result, v13);
    *(v11 + 16) = v21;
    result = *v11;
  }

  *v21 = v10;
  result = physx::Scb::Scene::scheduleForUpdate(result, v11);
  *(v11 + 8) |= 1u;
LABEL_23:
  if (v8 && *&v3[4])
  {
    result = physx::NpActor::addConstraintsToSceneInternal(v3 + 3);
  }

LABEL_34:
  v25 = *a2;
  v26 = v3 + *(&physx::NpActor::sLazyInitOffsets + v3[1].u16[0] + 18);
  v27 = *(v26 + 8);
  v28 = (v27 >> 24) & 0xF;
  v29 = v27 >> 30;
  if (v29 == 2)
  {
    result = *v26;
    if (*(*v26 + 7689))
    {
      goto LABEL_38;
    }
  }

  else if (v29 == 3)
  {
    result = *v26;
LABEL_38:
    v30 = *(v26 + 16);
    if (!v30)
    {
      v30 = physx::Scb::Scene::getStream(result, v28);
      *(v26 + 16) = v30;
      result = *v26;
    }

    *v30 = v25;
    result = physx::Scb::Scene::scheduleForUpdate(result, v26);
    *(v26 + 8) |= 1u;
    return result;
  }

  v31 = *(&physx::Scb::Actor::sLazyInitOffsets + v28 + 3) + v26;
  if (v25 != *(v31 + 12))
  {
    *(v31 + 12) = v25;
    result = *v31;
    if (*v31)
    {
      v32 = *(*result + 16);

      return v32();
    }
  }

  return result;
}