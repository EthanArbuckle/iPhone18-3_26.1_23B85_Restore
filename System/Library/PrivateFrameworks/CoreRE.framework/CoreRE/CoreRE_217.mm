_OWORD *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::RenderGraphMeshNodeBase::focusSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::$_1 &,re::RenderGraphMeshNodeBase::focusSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::FocusSortKey *,0>(_OWORD *result, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v6 = 32;
  while (1)
  {
    v7 = *(a2 + v6);
    v8 = *(result + v6);
    if (v7 != v8)
    {
      break;
    }

    v6 -= 8;
    if (v6 == -8)
    {
      goto LABEL_6;
    }
  }

  v4 = v7 < v8;
LABEL_6:
  v9 = v7 != v8 && v4;
  v10 = 32;
  while (1)
  {
    v11 = *(a3 + v10);
    v12 = *(a2 + v10);
    if (v11 != v12)
    {
      break;
    }

    v10 -= 8;
    if (v10 == -8)
    {
      goto LABEL_11;
    }
  }

  v5 = v11 < v12;
LABEL_11:
  if (v9)
  {
    if (v11 != v12 && v5)
    {
      v13 = result[2];
      v73 = result[3];
      v14 = *result;
      v15 = result[1];
      v17 = a3[1];
      v16 = a3[2];
      v18 = *a3;
      *(result + 12) = *(a3 + 12);
      result[1] = v17;
      result[2] = v16;
      *result = v18;
LABEL_27:
      a3[1] = v15;
      a3[2] = v13;
      *a3 = v14;
      *(a3 + 12) = v73;
      goto LABEL_28;
    }

    v28 = result[2];
    v75 = result[3];
    v29 = *result;
    v30 = result[1];
    v32 = a2[1];
    v31 = a2[2];
    v33 = *a2;
    *(result + 12) = *(a2 + 12);
    result[1] = v32;
    result[2] = v31;
    *result = v33;
    a2[1] = v30;
    a2[2] = v28;
    *a2 = v29;
    *(a2 + 12) = v75;
    v34 = 32;
    while (1)
    {
      v35 = *(a3 + v34);
      v36 = *(a2 + v34);
      if (v35 != v36)
      {
        break;
      }

      v34 -= 8;
      if (v34 == -8)
      {
        goto LABEL_28;
      }
    }

    if (v35 < v36)
    {
      v13 = a2[2];
      v73 = a2[3];
      v14 = *a2;
      v15 = a2[1];
      v44 = a3[1];
      v43 = a3[2];
      v45 = *a3;
      *(a2 + 12) = *(a3 + 12);
      a2[1] = v44;
      a2[2] = v43;
      *a2 = v45;
      goto LABEL_27;
    }
  }

  else if (v11 != v12 && v5)
  {
    v19 = a2[2];
    v74 = a2[3];
    v20 = *a2;
    v21 = a2[1];
    v23 = a3[1];
    v22 = a3[2];
    v24 = *a3;
    *(a2 + 12) = *(a3 + 12);
    a2[1] = v23;
    a2[2] = v22;
    *a2 = v24;
    a3[1] = v21;
    a3[2] = v19;
    *a3 = v20;
    *(a3 + 12) = v74;
    v25 = 32;
    while (1)
    {
      v26 = *(a2 + v25);
      v27 = *(result + v25);
      if (v26 != v27)
      {
        break;
      }

      v25 -= 8;
      if (v25 == -8)
      {
        goto LABEL_28;
      }
    }

    if (v26 < v27)
    {
      v37 = result[2];
      v76 = result[3];
      v38 = *result;
      v39 = result[1];
      v41 = a2[1];
      v40 = a2[2];
      v42 = *a2;
      *(result + 12) = *(a2 + 12);
      result[1] = v41;
      result[2] = v40;
      *result = v42;
      a2[1] = v39;
      a2[2] = v37;
      *a2 = v38;
      *(a2 + 12) = v76;
    }
  }

LABEL_28:
  v46 = 32;
  while (1)
  {
    v47 = *(a4 + v46);
    v48 = *(a3 + v46);
    if (v47 != v48)
    {
      break;
    }

    v46 -= 8;
    if (v46 == -8)
    {
      return result;
    }
  }

  if (v47 < v48)
  {
    v49 = a3[2];
    v77 = a3[3];
    v50 = *a3;
    v51 = a3[1];
    v53 = a4[1];
    v52 = a4[2];
    v54 = *a4;
    *(a3 + 12) = *(a4 + 12);
    a3[1] = v53;
    a3[2] = v52;
    *a3 = v54;
    a4[1] = v51;
    a4[2] = v49;
    *a4 = v50;
    *(a4 + 12) = v77;
    v55 = 32;
    while (1)
    {
      v56 = *(a3 + v55);
      v57 = *(a2 + v55);
      if (v56 != v57)
      {
        break;
      }

      v55 -= 8;
      if (v55 == -8)
      {
        return result;
      }
    }

    if (v56 < v57)
    {
      v58 = a2[2];
      v78 = a2[3];
      v59 = *a2;
      v60 = a2[1];
      v62 = a3[1];
      v61 = a3[2];
      v63 = *a3;
      *(a2 + 12) = *(a3 + 12);
      a2[1] = v62;
      a2[2] = v61;
      *a2 = v63;
      a3[1] = v60;
      a3[2] = v58;
      *a3 = v59;
      *(a3 + 12) = v78;
      v64 = 32;
      while (1)
      {
        v65 = *(a2 + v64);
        v66 = *(result + v64);
        if (v65 != v66)
        {
          break;
        }

        v64 -= 8;
        if (v64 == -8)
        {
          return result;
        }
      }

      if (v65 < v66)
      {
        v67 = result[2];
        v79 = result[3];
        v68 = *result;
        v69 = result[1];
        v71 = a2[1];
        v70 = a2[2];
        v72 = *a2;
        *(result + 12) = *(a2 + 12);
        result[1] = v71;
        result[2] = v70;
        *result = v72;
        a2[1] = v69;
        a2[2] = v67;
        *a2 = v68;
        *(a2 + 12) = v79;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::RenderGraphMeshNodeBase::focusSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::$_1 &,re::RenderGraphMeshNodeBase::focusSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::FocusSortKey *>(char *a1, char *a2)
{
  v7 = (a2 - a1) >> 6;
  if (v7 > 2)
  {
    switch(v7)
    {
      case 3:
        v18 = 0;
        v9 = a2 - 64;
        while (1)
        {
          v19 = *&a1[v18 + 96];
          v20 = *&a1[v18 + 32];
          if (v19 != v20)
          {
            break;
          }

          v18 -= 8;
          if (v18 == -40)
          {
            goto LABEL_25;
          }
        }

        v2 = v19 < v20;
LABEL_25:
        v25 = v19 != v20 && v2;
        v26 = 12;
        v27 = (a2 - 32);
        while (1)
        {
          v29 = *v27--;
          v28 = v29;
          v30 = *&a1[8 * v26];
          v31 = v29 >= v30;
          if (v29 != v30)
          {
            break;
          }

          if (--v26 == 7)
          {
            goto LABEL_32;
          }
        }

        v4 = !v31;
LABEL_32:
        if (v25)
        {
          if (((v28 != v30) & v4) == 0)
          {
            v32 = 0;
            v33 = *(a1 + 2);
            v134 = *(a1 + 3);
            v35 = *a1;
            v34 = *(a1 + 1);
            v36 = *(a1 + 5);
            *a1 = *(a1 + 4);
            *(a1 + 1) = v36;
            *(a1 + 2) = *(a1 + 6);
            *(a1 + 12) = *(a1 + 28);
            *(a1 + 4) = v35;
            *(a1 + 5) = v34;
            *(a1 + 6) = v33;
            *(a1 + 28) = v134;
            result = 1;
            while (1)
            {
              v38 = *&a2[v32 - 32];
              v39 = *&a1[v32 + 96];
              if (v38 != v39)
              {
                break;
              }

              v32 -= 8;
              if (v32 == -40)
              {
                return result;
              }
            }

            if (v38 >= v39)
            {
              return 1;
            }

            v48 = *(a1 + 6);
            v136 = *(a1 + 7);
            v49 = *(a1 + 4);
            v50 = *(a1 + 5);
            v95 = *(a2 - 3);
            v94 = *(a2 - 2);
            v96 = *v9;
            *(a1 + 28) = *(a2 - 4);
            *(a1 + 5) = v95;
            *(a1 + 6) = v94;
            *(a1 + 4) = v96;
            goto LABEL_49;
          }

LABEL_48:
          v48 = *(a1 + 2);
          v136 = *(a1 + 3);
          v49 = *a1;
          v50 = *(a1 + 1);
          v52 = *(v9 + 1);
          v51 = *(v9 + 2);
          v53 = *v9;
          *(a1 + 12) = *(v9 + 12);
          *(a1 + 1) = v52;
          *(a1 + 2) = v51;
          *a1 = v53;
LABEL_49:
          *(v9 + 1) = v50;
          *(v9 + 2) = v48;
          *v9 = v49;
          *(v9 + 12) = v136;
          return 1;
        }

        if (((v28 != v30) & v4) == 0)
        {
          return 1;
        }

        v63 = 0;
        v64 = *(a1 + 6);
        v138 = *(a1 + 7);
        v65 = *(a1 + 4);
        v66 = *(a1 + 5);
        v68 = *(a2 - 3);
        v67 = *(a2 - 2);
        v69 = *v9;
        *(a1 + 28) = *(a2 - 4);
        *(a1 + 5) = v68;
        *(a1 + 6) = v67;
        *(a1 + 4) = v69;
        *(a2 - 4) = v138;
        *(a2 - 3) = v66;
        *(a2 - 2) = v64;
        *v9 = v65;
        result = 1;
        while (1)
        {
          v70 = *&a1[v63 + 96];
          v71 = *&a1[v63 + 32];
          v72 = v70 >= v71;
          if (v70 != v71)
          {
            break;
          }

          v63 -= 8;
          if (v63 == -40)
          {
            return result;
          }
        }

        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::RenderGraphMeshNodeBase::focusSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::$_1 &,re::RenderGraphMeshNodeBase::focusSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::FocusSortKey *,0>(a1, a1 + 4, a1 + 8, a2 - 4);
        return 1;
      case 5:
        v12 = (a2 - 64);
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::RenderGraphMeshNodeBase::focusSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::$_1 &,re::RenderGraphMeshNodeBase::focusSort(re::MeshSortMode,re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::SortMeshPartsArgs const&,re::Allocator *)::FocusSortKey *,0>(a1, a1 + 4, a1 + 8, a1 + 12);
        v13 = (a2 - 32);
        v14 = 28;
        while (1)
        {
          v15 = *v13--;
          v16 = *&a1[8 * v14];
          v17 = v15 >= v16;
          if (v15 != v16)
          {
            break;
          }

          if (--v14 == 23)
          {
            return 1;
          }
        }

        if (v17)
        {
          return 1;
        }

        v54 = 0;
        v55 = *(a1 + 14);
        v137 = *(a1 + 15);
        v56 = *(a1 + 12);
        v57 = *(a1 + 13);
        v59 = *(a2 - 3);
        v58 = *(a2 - 2);
        v60 = *v12;
        *(a1 + 60) = *(a2 - 4);
        *(a1 + 13) = v59;
        *(a1 + 14) = v58;
        *(a1 + 12) = v60;
        *(a2 - 4) = v137;
        *(a2 - 3) = v57;
        *(a2 - 2) = v55;
        *v12 = v56;
        result = 1;
        while (1)
        {
          v61 = *&a1[v54 + 224];
          v62 = *&a1[v54 + 160];
          if (v61 != v62)
          {
            break;
          }

          v54 -= 8;
          if (v54 == -40)
          {
            return result;
          }
        }

        if (v61 >= v62)
        {
          return 1;
        }

        v87 = 0;
        v88 = *(a1 + 10);
        v141 = *(a1 + 11);
        *(a1 + 44) = *(a1 + 60);
        *(a1 + 60) = v141;
        v90 = *(a1 + 8);
        v89 = *(a1 + 9);
        v91 = *(a1 + 13);
        *(a1 + 8) = *(a1 + 12);
        *(a1 + 9) = v91;
        *(a1 + 10) = *(a1 + 14);
        *(a1 + 12) = v90;
        *(a1 + 13) = v89;
        *(a1 + 14) = v88;
        result = 1;
        while (1)
        {
          v92 = *&a1[v87 + 160];
          v93 = *&a1[v87 + 96];
          if (v92 != v93)
          {
            break;
          }

          v87 -= 8;
          if (v87 == -40)
          {
            return result;
          }
        }

        if (v92 >= v93)
        {
          return 1;
        }

        v120 = 0;
        v121 = *(a1 + 6);
        v144 = *(a1 + 7);
        *(a1 + 28) = *(a1 + 44);
        *(a1 + 44) = v144;
        v123 = *(a1 + 4);
        v122 = *(a1 + 5);
        v124 = *(a1 + 9);
        *(a1 + 4) = *(a1 + 8);
        *(a1 + 5) = v124;
        *(a1 + 6) = *(a1 + 10);
        *(a1 + 8) = v123;
        *(a1 + 9) = v122;
        *(a1 + 10) = v121;
        result = 1;
        while (1)
        {
          v125 = *&a1[v120 + 96];
          v126 = *&a1[v120 + 32];
          v72 = v125 >= v126;
          if (v125 != v126)
          {
            break;
          }

          v120 -= 8;
          if (v120 == -40)
          {
            return result;
          }
        }

        break;
      default:
        goto LABEL_19;
    }

    if (!v72)
    {
      v127 = *(a1 + 2);
      v145 = *(a1 + 3);
      v129 = *a1;
      v128 = *(a1 + 1);
      v130 = *(a1 + 5);
      *a1 = *(a1 + 4);
      *(a1 + 1) = v130;
      *(a1 + 2) = *(a1 + 6);
      *(a1 + 12) = *(a1 + 28);
      *(a1 + 4) = v129;
      *(a1 + 5) = v128;
      *(a1 + 6) = v127;
      *(a1 + 28) = v145;
    }

    return 1;
  }

  if (v7 >= 2)
  {
    if (v7 == 2)
    {
      v8 = 0;
      v9 = a2 - 64;
      while (1)
      {
        v10 = *&a2[v8 - 32];
        v11 = *&a1[v8 + 32];
        if (v10 != v11)
        {
          break;
        }

        v8 -= 8;
        if (v8 == -40)
        {
          return 1;
        }
      }

      if (v10 >= v11)
      {
        return 1;
      }

      goto LABEL_48;
    }

LABEL_19:
    v21 = 0;
    v22 = a1 + 128;
    while (1)
    {
      v23 = *&a1[v21 + 96];
      v24 = *&a1[v21 + 32];
      if (v23 != v24)
      {
        break;
      }

      v21 -= 8;
      if (v21 == -40)
      {
        goto LABEL_39;
      }
    }

    v3 = v23 < v24;
LABEL_39:
    v40 = 0;
    v41 = v23 != v24 && v3;
    while (1)
    {
      v42 = *&a1[v40 + 160];
      v43 = *&a1[v40 + 96];
      if (v42 != v43)
      {
        break;
      }

      v40 -= 8;
      if (v40 == -40)
      {
        goto LABEL_44;
      }
    }

    v3 = v42 < v43;
LABEL_44:
    if (!v41)
    {
      if (v42 != v43 && v3)
      {
        v73 = 0;
        v74 = *(a1 + 6);
        v139 = *(a1 + 7);
        *(a1 + 28) = *(a1 + 44);
        *(a1 + 44) = v139;
        v76 = *(a1 + 4);
        v75 = *(a1 + 5);
        v77 = *(a1 + 9);
        *(a1 + 4) = *v22;
        *(a1 + 5) = v77;
        *(a1 + 6) = *(a1 + 10);
        *v22 = v76;
        *(a1 + 9) = v75;
        *(a1 + 10) = v74;
        while (1)
        {
          v78 = *&a1[v73 + 96];
          v79 = *&a1[v73 + 32];
          if (v78 != v79)
          {
            break;
          }

          v73 -= 8;
          if (v73 == -40)
          {
            goto LABEL_82;
          }
        }

        if (v78 < v79)
        {
          v97 = *(a1 + 2);
          v142 = *(a1 + 3);
          v99 = *a1;
          v98 = *(a1 + 1);
          v100 = *(a1 + 5);
          *a1 = *(a1 + 4);
          *(a1 + 1) = v100;
          *(a1 + 2) = *(a1 + 6);
          *(a1 + 12) = *(a1 + 28);
          *(a1 + 4) = v99;
          *(a1 + 5) = v98;
          *(a1 + 6) = v97;
          *(a1 + 28) = v142;
        }
      }

      goto LABEL_82;
    }

    if (v42 != v43 && v3)
    {
      v44 = *(a1 + 2);
      v135 = *(a1 + 3);
      v46 = *a1;
      v45 = *(a1 + 1);
      v47 = *(a1 + 9);
      *a1 = *v22;
      *(a1 + 1) = v47;
      *(a1 + 2) = *(a1 + 10);
      *(a1 + 12) = *(a1 + 44);
    }

    else
    {
      v80 = *(a1 + 2);
      v140 = *(a1 + 3);
      v82 = *a1;
      v81 = *(a1 + 1);
      v83 = *(a1 + 5);
      *a1 = *(a1 + 4);
      *(a1 + 1) = v83;
      *(a1 + 2) = *(a1 + 6);
      *(a1 + 12) = *(a1 + 28);
      *(a1 + 4) = v82;
      *(a1 + 5) = v81;
      *(a1 + 6) = v80;
      *(a1 + 28) = v140;
      v84 = (a1 + 160);
      v85 = -5;
      while (1)
      {
        v86 = *(v84 - 8);
        if (*v84 != v86)
        {
          break;
        }

        --v84;
        v17 = __CFADD__(v85++, 1);
        if (v17)
        {
          goto LABEL_82;
        }
      }

      if (*v84 >= v86)
      {
        goto LABEL_82;
      }

      v44 = *(a1 + 6);
      v135 = *(a1 + 7);
      v46 = *(a1 + 4);
      v45 = *(a1 + 5);
      v101 = *(a1 + 9);
      *(a1 + 4) = *v22;
      *(a1 + 5) = v101;
      *(a1 + 6) = *(a1 + 10);
      *(a1 + 28) = *(a1 + 44);
    }

    *v22 = v46;
    *(a1 + 9) = v45;
    *(a1 + 10) = v44;
    *(a1 + 44) = v135;
LABEL_82:
    v102 = a1 + 192;
    if (a1 + 192 != a2)
    {
      v103 = 0;
      v104 = (a1 + 224);
      v105 = (a1 + 96);
      while (2)
      {
        v106 = -5;
        v107 = v104;
        while (1)
        {
          v108 = *(v107 - 8);
          if (*v107 != v108)
          {
            break;
          }

          --v107;
          v17 = __CFADD__(v106++, 1);
          if (v17)
          {
            goto LABEL_100;
          }
        }

        if (*v107 < v108)
        {
          v109 = *(v102 + 1);
          v131 = *v102;
          v132 = v109;
          v110 = *(v102 + 3);
          vars0 = *(v102 + 2);
          v143 = v110;
          v111 = v105;
          v112 = v102;
          while (1)
          {
            v113 = v112;
            v112 = v22;
            v114 = *(v22 + 1);
            *v113 = *v22;
            *(v113 + 1) = v114;
            *(v113 + 2) = *(v22 + 2);
            *(v113 + 12) = *(v22 + 12);
            if (v22 == a1)
            {
              break;
            }

            v115 = 0;
            v22 -= 64;
            while (1)
            {
              v116 = *((&v131 | 0x20) + v115);
              v117 = *(v111 + v115);
              if (v116 != v117)
              {
                break;
              }

              v115 -= 8;
              if (v115 == -40)
              {
                goto LABEL_99;
              }
            }

            v111 -= 4;
            if (v116 >= v117)
            {
              goto LABEL_99;
            }
          }

          v112 = a1;
LABEL_99:
          v118 = vars0;
          *(v112 + 1) = v132;
          *(v112 + 2) = v118;
          v119 = v131;
          *(v112 + 12) = v143;
          *v112 = v119;
          if (++v103 == 8)
          {
            return v102 + 64 == a2;
          }
        }

LABEL_100:
        v22 = v102;
        v104 += 8;
        v105 += 4;
        v102 += 64;
        if (v102 != a2)
        {
          continue;
        }

        break;
      }
    }
  }

  return 1;
}

void *re::DynamicArray<re::RenderGraphMeshNodeBase::techniqueSort(re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::Allocator *)::TechniqueSortKey>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (a2 >> 59)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 32, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 32 * a2;
          result = (*(*result + 32))(result, 32 * a2, 32);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 32 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::RenderGraphMeshNodeBase::techniqueSort(re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::Allocator *)::TechniqueSortKey>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

double std::__introsort<std::_ClassicAlgPolicy,re::RenderGraphMeshNodeBase::techniqueSort(re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::Allocator *)::$_0 &,re::RenderGraphMeshNodeBase::techniqueSort(re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::Allocator *)::TechniqueSortKey *,false>(unint64_t n128_u64, unint64_t a2, unint64_t a3, uint64_t a4, __n128 a5, uint64_t a6, unint64_t a7, unsigned __int8 a8, uint64_t a9, __n128 a10, __n128 a11)
{
LABEL_1:
  v352 = (a2 - 64);
  v353 = (a2 - 32);
  v351 = (a2 - 96);
  v20 = (a2 - 16);
  v21 = a2 - 48;
  v22 = a2 - 80;
LABEL_2:
  v354 = a4;
  while (1)
  {
    v23 = n128_u64;
    v24 = (a2 - n128_u64) >> 5;
    if (v24 <= 2)
    {
      if (v24 < 2)
      {
        return a5.n128_f64[0];
      }

      if (v24 == 2)
      {
        v245 = 0;
        while (1)
        {
          v246 = v20[v245];
          v247 = *(n128_u64 + v245 * 8 + 16);
          if (v246 != v247)
          {
            break;
          }

          if (--v245 == -3)
          {
            return a5.n128_f64[0];
          }
        }

        if (v246 >= v247)
        {
          return a5.n128_f64[0];
        }

        goto LABEL_401;
      }

      goto LABEL_10;
    }

    if (v24 == 3)
    {
      v242 = 0;
      while (1)
      {
        v243 = *(n128_u64 + v242 + 48);
        v244 = *(n128_u64 + v242 + 16);
        if (v243 != v244)
        {
          break;
        }

        v242 -= 8;
        if (v242 == -24)
        {
          goto LABEL_387;
        }
      }

      LOBYTE(v11) = v243 < v244;
LABEL_387:
      v314 = (v243 != v244) & v11;
      v315 = 6;
      v316 = (a2 - 16);
      while (1)
      {
        v318 = *v316--;
        v317 = v318;
        v319 = *(n128_u64 + 8 * v315);
        v320 = v318 >= v319;
        if (v318 != v319)
        {
          break;
        }

        if (--v315 == 3)
        {
          goto LABEL_394;
        }
      }

      LOBYTE(v13) = !v320;
LABEL_394:
      if ((v314 & 1) == 0)
      {
        if (((v317 != v319) & v13) != 0)
        {
          v326 = 0;
          v327 = *(n128_u64 + 48);
          a10 = *(n128_u64 + 32);
          v328 = a10;
          a11 = v327;
          a5 = *(a2 - 17);
          *(n128_u64 + 32) = *v353;
          *(n128_u64 + 47) = a5;
          a5.n128_u64[0] = *(&a10.n128_u64[1] + 7);
          *(a2 - 17) = *(&a10 + 15);
          *v353 = v328;
          while (1)
          {
            v329 = *(n128_u64 + v326 + 48);
            v330 = *(n128_u64 + v326 + 16);
            if (v329 != v330)
            {
              break;
            }

            v326 -= 8;
            if (v326 == -24)
            {
              return a5.n128_f64[0];
            }
          }

          if (v329 < v330)
          {
            goto LABEL_437;
          }
        }

        return a5.n128_f64[0];
      }

      if (((v317 != v319) & v13) == 0)
      {
        v321 = 0;
        a5 = *(n128_u64 + 16);
        a10 = *n128_u64;
        a11 = a5;
        *n128_u64 = *(n128_u64 + 32);
        *(n128_u64 + 15) = *(n128_u64 + 47);
        *(n128_u64 + 32) = a10;
        a5.n128_u64[0] = *(&a10.n128_u64[1] + 7);
        *(n128_u64 + 47) = *(&a10 + 15);
        while (1)
        {
          v322 = v20[v321];
          v323 = *(n128_u64 + 48 + v321 * 8);
          if (v322 != v323)
          {
            break;
          }

          if (--v321 == -3)
          {
            return a5.n128_f64[0];
          }
        }

        if (v322 < v323)
        {
          v344 = *(n128_u64 + 48);
          a10 = *(n128_u64 + 32);
          v345 = a10;
          a11 = v344;
          a5 = *(a2 - 17);
          *(n128_u64 + 32) = *v353;
          *(n128_u64 + 47) = a5;
          a5.n128_u64[0] = *(&a10.n128_u64[1] + 7);
          *(a2 - 17) = *(&a10 + 15);
          *v353 = v345;
        }

        return a5.n128_f64[0];
      }

LABEL_401:
      v324 = *(n128_u64 + 16);
      a10 = *n128_u64;
      a11 = v324;
      v325 = *v353;
      *(n128_u64 + 15) = *(a2 - 17);
      *n128_u64 = v325;
      a5 = a10;
      *(a2 - 17) = *(&a10 + 15);
      *v353 = a5;
      return a5.n128_f64[0];
    }

    if (v24 == 4)
    {

      a5.n128_f64[0] = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::RenderGraphMeshNodeBase::techniqueSort(re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::Allocator *)::$_0 &,re::RenderGraphMeshNodeBase::techniqueSort(re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::Allocator *)::TechniqueSortKey *,0>(n128_u64, (n128_u64 + 32), (n128_u64 + 64), v353, a5.n128_f64[0]);
      return a5.n128_f64[0];
    }

    if (v24 == 5)
    {
      break;
    }

LABEL_10:
    if (v24 <= 23)
    {
      v248 = (n128_u64 + 32);
      v250 = n128_u64 == a2 || v248 == a2;
      if (a4)
      {
        if (!v250)
        {
          v251 = n128_u64;
          do
          {
            v252 = 0;
            while (1)
            {
              v253 = *(v251 + v252 + 48);
              v254 = *(v251 + v252 + 16);
              if (v253 != v254)
              {
                break;
              }

              v252 -= 8;
              if (v252 == -24)
              {
                goto LABEL_308;
              }
            }

            if (v253 < v254)
            {
              a11 = v248[1];
              a10 = *v248;
              v255 = v251;
              v256 = v248;
              while (1)
              {
                *v256 = *v255;
                *(v256 + 15) = *(v255 + 15);
                if (v255 == n128_u64)
                {
                  break;
                }

                v256 = v255;
                v255 -= 2;
                v257 = -2;
                v258 = (&a10 | 0x10);
                while (1)
                {
                  v259 = *v258--;
                  v260 = *(v256 + v257);
                  v261 = v259 >= v260;
                  if (v259 != v260)
                  {
                    break;
                  }

                  if (--v257 == -5)
                  {
                    goto LABEL_307;
                  }
                }

                if (v261)
                {
                  goto LABEL_307;
                }
              }

              v256 = n128_u64;
LABEL_307:
              a5 = a10;
              *(v256 + 15) = *(&a10 + 15);
              *v256 = a5;
            }

LABEL_308:
            v248 += 2;
            v251 += 2;
          }

          while (v248 != a2);
        }
      }

      else if (!v250)
      {
        do
        {
          v331 = 0;
          while (1)
          {
            v332 = v23[3].n128_u64[v331];
            v333 = v23[1].n128_u64[v331];
            if (v332 != v333)
            {
              break;
            }

            if (--v331 == -3)
            {
              goto LABEL_420;
            }
          }

          if (v332 < v333)
          {
            a11 = v248[1];
            a10 = *v248;
            v334 = v23;
            v335 = v248;
            do
            {
              v336 = 0;
              v337 = v335;
              v335 = v334;
              *v337 = *v334;
              *(v337 + 15) = *(v334 + 15);
              v334 -= 2;
              while (1)
              {
                v338 = *(&a10 + v336 * 8 + 16);
                v339 = v335[-1].n128_u64[v336];
                if (v338 != v339)
                {
                  break;
                }

                if (--v336 == -3)
                {
                  goto LABEL_419;
                }
              }
            }

            while (v338 < v339);
LABEL_419:
            a5 = a10;
            *(v335 + 15) = *(&a10 + 15);
            *v335 = a5;
          }

LABEL_420:
          v248 += 2;
          v23 += 2;
        }

        while (v248 != a2);
      }

      return a5.n128_f64[0];
    }

    if (!a3)
    {
      if (n128_u64 != a2)
      {
        v262 = (v24 - 2) >> 1;
        v263 = n128_u64 + 80 + (v262 << 6);
        v264 = v262;
        v265 = n128_u64 + 32 * v262;
        do
        {
          v266 = v264;
          if (v262 >= v264)
          {
            v267 = (2 * v264) | 1;
            v268 = (n128_u64 + 32 * v267);
            if (2 * v266 + 2 < v24)
            {
              a8 = v268 + 32;
              v269 = -3;
              a4 = v263;
              while (1)
              {
                v270 = *(a4 - 32);
                v271 = *a4;
                if (v270 != *a4)
                {
                  break;
                }

                a4 -= 8;
                v172 = __CFADD__(v269++, 1);
                if (v172)
                {
                  goto LABEL_320;
                }
              }

              LOBYTE(a7) = v270 < *a4;
LABEL_320:
              if (((v270 != v271) & a7) != 0)
              {
                v268 += 2;
                v267 = 2 * v266 + 2;
              }
            }

            v272 = (n128_u64 + 32 * v266);
            v273 = 16;
            while (1)
            {
              v274 = *(v268 + v273);
              a3 = *(v265 + v273);
              if (v274 != a3)
              {
                break;
              }

              v273 -= 8;
              if (v273 == -8)
              {
                goto LABEL_327;
              }
            }

            if (v274 < a3)
            {
              goto LABEL_348;
            }

LABEL_327:
            a11 = v272[1];
            a10 = *v272;
            while (1)
            {
              v275 = v268;
              v276 = *v268;
              *(v272 + 15) = *(v268 + 15);
              *v272 = v276;
              if (v262 < v267)
              {
                break;
              }

              v277 = (2 * v267) | 1;
              v268 = (n128_u64 + 32 * v277);
              v278 = 2 * v267 + 2;
              if (v278 >= v24)
              {
                v267 = (2 * v267) | 1;
              }

              else
              {
                v279 = (n128_u64 + 80 + (v267 << 6));
                a4 = -3;
                while (1)
                {
                  v280 = *(v279 - 4);
                  a7 = *v279;
                  if (v280 != *v279)
                  {
                    break;
                  }

                  --v279;
                  v172 = __CFADD__(a4++, 1);
                  if (v172)
                  {
                    goto LABEL_337;
                  }
                }

                a8 = v280 < *v279;
LABEL_337:
                if (((v280 != a7) & a8) != 0)
                {
                  v268 += 2;
                  v267 = v278;
                }

                else
                {
                  v267 = v277;
                }
              }

              v281 = 2;
              while (1)
              {
                v282 = *(v268 + v281 * 8);
                a3 = a10.n128_u64[v281];
                if (v282 != a3)
                {
                  break;
                }

                if (--v281 == -1)
                {
                  goto LABEL_345;
                }
              }

              LOBYTE(a4) = v282 < a3;
LABEL_345:
              v272 = v275;
              if (v282 != a3)
              {
                v272 = v275;
                if (a4)
                {
                  break;
                }
              }
            }

            v283 = a10;
            *(v275 + 15) = *(&a10 + 15);
            *v275 = v283;
          }

LABEL_348:
          v264 = v266 - 1;
          v263 -= 64;
          v265 -= 32;
        }

        while (v266);
        do
        {
          v284 = 0;
          *&var10[16] = *(n128_u64 + 16);
          *var10 = *n128_u64;
          v285 = n128_u64;
          do
          {
            v286 = &v285[2 * v284];
            v287 = v286 + 2;
            v288 = (2 * v284) | 1;
            v284 = 2 * v284 + 2;
            if (v284 >= v24)
            {
              v284 = v288;
            }

            else
            {
              v289 = v286 + 4;
              v290 = v286 + 5;
              v291 = -3;
              while (1)
              {
                v292 = v290[-2].n128_u64[0];
                v293 = v290->n128_u64[0];
                if (v292 != v290->n128_u64[0])
                {
                  break;
                }

                v290 = (v290 - 8);
                v172 = __CFADD__(v291++, 1);
                if (v172)
                {
                  goto LABEL_358;
                }
              }

              LOBYTE(a3) = v292 < v290->n128_u64[0];
LABEL_358:
              if (((v292 != v293) & a3) != 0)
              {
                v287 = v289;
              }

              else
              {
                v284 = v288;
              }
            }

            v294 = *v287;
            *(v285 + 15) = *(v287 + 15);
            *v285 = v294;
            v285 = v287;
          }

          while (v284 <= ((v24 - 2) >> 1));
          a2 -= 32;
          if (v287 == a2)
          {
            a5 = *var10;
            *(v287 + 15) = *&var10[15];
            *v287 = a5;
          }

          else
          {
            v295 = *a2;
            *(v287 + 15) = *(a2 + 15);
            *v287 = v295;
            a5 = *var10;
            *(a2 + 15) = *&var10[15];
            *a2 = a5;
            v296 = (&v287[2] - n128_u64) >> 5;
            v297 = v296 < 2;
            v298 = v296 - 2;
            if (!v297)
            {
              v299 = v298 >> 1;
              v300 = (n128_u64 + 32 * v299);
              v301 = 2;
              while (1)
              {
                v302 = *(v300 + v301 * 8);
                v303 = v287->n128_u64[v301];
                if (v302 != v303)
                {
                  break;
                }

                if (--v301 == -1)
                {
                  goto LABEL_369;
                }
              }

              if (v302 < v303)
              {
                a11 = v287[1];
                a10 = *v287;
                do
                {
                  v304 = v300;
                  v305 = *v300;
                  *(v287 + 15) = *(v300 + 15);
                  *v287 = v305;
                  if (!v299)
                  {
                    break;
                  }

                  v299 = (v299 - 1) >> 1;
                  v300 = (n128_u64 + 32 * v299);
                  v306 = 2;
                  while (1)
                  {
                    v307 = *(v300 + v306 * 8);
                    v308 = a10.n128_u64[v306];
                    if (v307 != v308)
                    {
                      break;
                    }

                    if (--v306 == -1)
                    {
                      goto LABEL_380;
                    }
                  }

                  v287 = v304;
                }

                while (v307 < v308);
LABEL_380:
                a5 = a10;
                *(v304 + 15) = *(&a10 + 15);
                *v304 = a5;
              }
            }
          }

LABEL_369:
          v297 = v24-- <= 2;
        }

        while (!v297);
      }

      return a5.n128_f64[0];
    }

    v25 = v24 >> 1;
    v26 = (n128_u64 + 32 * (v24 >> 1));
    if (v24 > 0x80)
    {
      v27 = 16;
      while (1)
      {
        v28 = *(v26 + v27);
        v29 = *(n128_u64 + v27);
        if (v28 != v29)
        {
          break;
        }

        v27 -= 8;
        if (v27 == -8)
        {
          goto LABEL_22;
        }
      }

      LOBYTE(v13) = v28 < v29;
LABEL_22:
      v33 = 0;
      v34 = (v28 != v29) & v13;
      while (1)
      {
        v35 = v20[v33];
        v36 = *(v26 + v33 * 8 + 16);
        if (v35 != v36)
        {
          break;
        }

        if (--v33 == -3)
        {
          goto LABEL_32;
        }
      }

      LOBYTE(v15) = v35 < v36;
LABEL_32:
      if (v34)
      {
        if (((v35 != v36) & v15) != 0)
        {
          v39 = *(n128_u64 + 16);
          a10 = *n128_u64;
          a11 = v39;
          v40 = (a2 - 32);
          v41 = *v353;
          *(n128_u64 + 15) = *(a2 - 17);
          *n128_u64 = v41;
LABEL_63:
          v76 = a10;
          *(v40 + 15) = *(&a10 + 15);
          *v40 = v76;
          goto LABEL_64;
        }

        v56 = 0;
        v57 = *(n128_u64 + 16);
        a10 = *n128_u64;
        a11 = v57;
        v58 = *v26;
        *(n128_u64 + 15) = *(v26 + 15);
        *n128_u64 = v58;
        v59 = a10;
        *(v26 + 15) = *(&a10 + 15);
        *v26 = v59;
        while (1)
        {
          v60 = v20[v56];
          v61 = *(n128_u64 + 16 + 32 * v25 + v56 * 8);
          if (v60 != v61)
          {
            break;
          }

          if (--v56 == -3)
          {
            goto LABEL_64;
          }
        }

        if (v60 < v61)
        {
          v74 = v26[1];
          a10 = *v26;
          a11 = v74;
          v40 = (a2 - 32);
          v75 = *v353;
          *(v26 + 15) = *(a2 - 17);
          *v26 = v75;
          goto LABEL_63;
        }
      }

      else if (((v35 != v36) & v15) != 0)
      {
        v45 = v26[1];
        a10 = *v26;
        a11 = v45;
        v46 = *v353;
        *(v26 + 15) = *(a2 - 17);
        *v26 = v46;
        v47 = a10;
        *(a2 - 17) = *(&a10 + 15);
        *v353 = v47;
        v48 = 16;
        while (1)
        {
          v49 = *(v26 + v48);
          v50 = *(n128_u64 + v48);
          if (v49 != v50)
          {
            break;
          }

          v48 -= 8;
          if (v48 == -8)
          {
            goto LABEL_64;
          }
        }

        if (v49 < v50)
        {
          v68 = *(n128_u64 + 16);
          a10 = *n128_u64;
          a11 = v68;
          v69 = *v26;
          *(n128_u64 + 15) = *(v26 + 15);
          *n128_u64 = v69;
          v70 = a10;
          *(v26 + 15) = *(&a10 + 15);
          *v26 = v70;
        }
      }

LABEL_64:
      v77 = (v26 - 2);
      v78 = 32 * v25;
      v79 = v78 - 16;
      v80 = 48;
      while (1)
      {
        v81 = *(n128_u64 + v79);
        v82 = *(n128_u64 + v80);
        if (v81 != v82)
        {
          break;
        }

        v80 -= 8;
        v79 -= 8;
        if (v80 == 24)
        {
          goto LABEL_69;
        }
      }

      LOBYTE(v15) = v81 < v82;
LABEL_69:
      v83 = 0;
      v84 = (v81 != v82) & v15;
      while (1)
      {
        v85 = *(v21 + v83);
        v86 = *(n128_u64 + v78 - 16 + v83);
        if (v85 != v86)
        {
          break;
        }

        v83 -= 8;
        if (v83 == -24)
        {
          goto LABEL_74;
        }
      }

      LOBYTE(v16) = v85 < v86;
LABEL_74:
      if (v84)
      {
        if (((v85 != v86) & v16) != 0)
        {
          v87 = *(n128_u64 + 48);
          a10 = *(n128_u64 + 32);
          v88 = a10;
          a11 = v87;
          v89 = *(a2 - 49);
          *(n128_u64 + 32) = *v352;
          *(n128_u64 + 47) = v89;
          *(a2 - 49) = *(&a10 + 15);
          *v352 = v88;
        }

        else
        {
          v95 = 0;
          v96 = *(n128_u64 + 48);
          a10 = *(n128_u64 + 32);
          v97 = a10;
          a11 = v96;
          v98 = *(v26 - 17);
          *(n128_u64 + 32) = *v77;
          *(n128_u64 + 47) = v98;
          *(v26 - 17) = *(&a10 + 15);
          *v77 = v97;
          while (1)
          {
            v99 = *(v21 + v95);
            v100 = *(n128_u64 + v78 - 16 + v95);
            if (v99 != v100)
            {
              break;
            }

            v95 -= 8;
            if (v95 == -24)
            {
              goto LABEL_92;
            }
          }

          if (v99 < v100)
          {
            v105 = *(v26 - 1);
            a10 = *v77;
            a11 = v105;
            v106 = *v352;
            *(v26 - 17) = *(a2 - 49);
            *v77 = v106;
            v107 = a10;
            *(a2 - 49) = *(&a10 + 15);
            *v352 = v107;
          }
        }
      }

      else if (((v85 != v86) & v16) != 0)
      {
        v90 = 0;
        v91 = *(v26 - 1);
        a10 = *v77;
        a11 = v91;
        v92 = *v352;
        *(v26 - 17) = *(a2 - 49);
        *v77 = v92;
        v93 = a10;
        *(a2 - 49) = *(&a10 + 15);
        *v352 = v93;
        while (1)
        {
          v94 = *(n128_u64 + v78 - 16 + v90);
          v86 = *(n128_u64 + 48 + v90);
          if (v94 != v86)
          {
            break;
          }

          v90 -= 8;
          if (v90 == -24)
          {
            goto LABEL_92;
          }
        }

        if (v94 < v86)
        {
          v102 = *(n128_u64 + 48);
          a10 = *(n128_u64 + 32);
          v103 = a10;
          a11 = v102;
          v104 = *(v26 - 17);
          *(n128_u64 + 32) = *v77;
          *(n128_u64 + 47) = v104;
          *(v26 - 17) = *(&a10 + 15);
          *v77 = v103;
        }
      }

LABEL_92:
      v108 = v78 + 48;
      v109 = 80;
      while (1)
      {
        v110 = *(n128_u64 + v108);
        v111 = *(n128_u64 + v109);
        if (v110 != v111)
        {
          break;
        }

        v109 -= 8;
        v108 -= 8;
        if (v109 == 56)
        {
          goto LABEL_97;
        }
      }

      LOBYTE(v86) = v110 < v111;
LABEL_97:
      v112 = 0;
      v113 = (v110 != v111) & v86;
      while (1)
      {
        v114 = *(v22 + v112);
        v115 = *(n128_u64 + v78 + 48 + v112);
        if (v114 != v115)
        {
          break;
        }

        v112 -= 8;
        if (v112 == -24)
        {
          goto LABEL_102;
        }
      }

      LOBYTE(v16) = v114 < v115;
LABEL_102:
      if (v113)
      {
        if (((v114 != v115) & v16) != 0)
        {
          v116 = *(n128_u64 + 80);
          a10 = *(n128_u64 + 64);
          v117 = a10;
          a11 = v116;
          v118 = *(a2 - 81);
          *(n128_u64 + 64) = *v351;
          *(n128_u64 + 79) = v118;
          *(a2 - 81) = *(&a10 + 15);
          *v351 = v117;
        }

        else
        {
          v125 = 0;
          v126 = *(n128_u64 + 80);
          a10 = *(n128_u64 + 64);
          v127 = a10;
          a11 = v126;
          v128 = *(v26 + 47);
          *(n128_u64 + 64) = v26[2];
          *(n128_u64 + 79) = v128;
          *(v26 + 47) = *(&a10 + 15);
          v26[2] = v127;
          while (1)
          {
            v129 = *(v22 + v125);
            v130 = *(n128_u64 + v78 + 48 + v125);
            if (v129 != v130)
            {
              break;
            }

            v125 -= 8;
            if (v125 == -24)
            {
              goto LABEL_118;
            }
          }

          if (v129 < v130)
          {
            v134 = v26[3];
            a10 = v26[2];
            a11 = v134;
            v135 = *v351;
            *(v26 + 47) = *(a2 - 81);
            v26[2] = v135;
            v136 = a10;
            *(a2 - 81) = *(&a10 + 15);
            *v351 = v136;
          }
        }
      }

      else if (((v114 != v115) & v16) != 0)
      {
        v119 = 0;
        v120 = v26[3];
        a10 = v26[2];
        a11 = v120;
        v121 = *v351;
        *(v26 + 47) = *(a2 - 81);
        v26[2] = v121;
        v122 = a10;
        *(a2 - 81) = *(&a10 + 15);
        *v351 = v122;
        while (1)
        {
          v123 = *(n128_u64 + v78 + 48 + v119);
          v124 = *(n128_u64 + 80 + v119);
          if (v123 != v124)
          {
            break;
          }

          v119 -= 8;
          if (v119 == -24)
          {
            goto LABEL_118;
          }
        }

        if (v123 < v124)
        {
          v131 = *(n128_u64 + 80);
          a10 = *(n128_u64 + 64);
          v132 = a10;
          a11 = v131;
          v133 = *(v26 + 47);
          *(n128_u64 + 64) = v26[2];
          *(n128_u64 + 79) = v133;
          *(v26 + 47) = *(&a10 + 15);
          v26[2] = v132;
        }
      }

LABEL_118:
      v11 = n128_u64 + v78 + 16;
      v137 = -3;
      v138 = v11;
      while (1)
      {
        v139 = *v138;
        v140 = *(v138 - 4);
        if (*v138 != v140)
        {
          break;
        }

        --v138;
        v172 = __CFADD__(v137++, 1);
        if (v172)
        {
          goto LABEL_124;
        }
      }

      LOBYTE(v16) = *v138 < v140;
LABEL_124:
      LOBYTE(v12) = (v139 != v140) & v16;
      v141 = (n128_u64 + v78 + 48);
      v142 = -3;
      v15 = v141;
      while (1)
      {
        v14 = *v15;
        v16 = *(v15 - 4);
        if (*v15 != v16)
        {
          break;
        }

        --v15;
        v172 = __CFADD__(v142++, 1);
        if (v172)
        {
          goto LABEL_130;
        }
      }

      v17 = *v15 < v16;
LABEL_130:
      LOBYTE(v13) = v14 != v16 && v17;
      if ((v12 & 1) == 0)
      {
        if (v14 != v16 && v17)
        {
          v144 = v26[1];
          a10 = *v26;
          a11 = v144;
          *v26 = v26[2];
          *(v26 + 15) = *(v26 + 47);
          v145 = a10;
          *(v26 + 47) = *(&a10 + 15);
          v26[2] = v145;
          v146 = -3;
          while (1)
          {
            v12 = *v11;
            v13 = *(v11 - 32);
            if (*v11 != v13)
            {
              break;
            }

            v11 -= 8;
            v172 = __CFADD__(v146++, 1);
            if (v172)
            {
              goto LABEL_149;
            }
          }

          if (*v11 < v13)
          {
            v150 = *(v26 - 1);
            a10 = *v77;
            a11 = v150;
            *v77 = *v26;
            *(v26 - 17) = *(v26 + 15);
            v151 = a10;
            *(v26 + 15) = *(&a10 + 15);
            *v26 = v151;
          }
        }

        goto LABEL_149;
      }

      if (v14 != v16 && v17)
      {
        v143 = *(v26 - 1);
        a10 = *v77;
        a11 = v143;
        *v77 = v26[2];
        *(v26 - 17) = *(v26 + 47);
      }

      else
      {
        v147 = *(v26 - 1);
        a10 = *v77;
        a11 = v147;
        *v77 = *v26;
        *(v26 - 17) = *(v26 + 15);
        v148 = a10;
        *(v26 + 15) = *(&a10 + 15);
        *v26 = v148;
        v149 = -3;
        while (1)
        {
          v11 = *v141;
          v12 = *(v141 - 4);
          if (*v141 != v12)
          {
            break;
          }

          --v141;
          v172 = __CFADD__(v149++, 1);
          if (v172)
          {
            goto LABEL_149;
          }
        }

        if (*v141 >= v12)
        {
          goto LABEL_149;
        }

        v152 = v26[1];
        a10 = *v26;
        a11 = v152;
        *v26 = v26[2];
        *(v26 + 15) = *(v26 + 47);
      }

      v153 = a10;
      *(v26 + 47) = *(&a10 + 15);
      v26[2] = v153;
LABEL_149:
      v154 = *(n128_u64 + 16);
      a10 = *n128_u64;
      a11 = v154;
      goto LABEL_150;
    }

    v30 = 16;
    while (1)
    {
      v31 = *(n128_u64 + v30);
      v32 = *(v26 + v30);
      if (v31 != v32)
      {
        break;
      }

      v30 -= 8;
      if (v30 == -8)
      {
        goto LABEL_27;
      }
    }

    LOBYTE(v12) = v31 < v32;
LABEL_27:
    v37 = 0;
    v38 = (v31 != v32) & v12;
    while (1)
    {
      v11 = v20[v37];
      v12 = *(n128_u64 + v37 * 8 + 16);
      if (v11 != v12)
      {
        break;
      }

      if (--v37 == -3)
      {
        goto LABEL_36;
      }
    }

    LOBYTE(v13) = v11 < v12;
LABEL_36:
    if (v38)
    {
      if (((v11 != v12) & v13) != 0)
      {
        v42 = v26[1];
        a10 = *v26;
        a11 = v42;
        v43 = *v353;
        *(v26 + 15) = *(a2 - 17);
        *v26 = v43;
        v44 = a10;
        *(a2 - 17) = *(&a10 + 15);
        *v353 = v44;
        goto LABEL_151;
      }

      v62 = 0;
      v63 = v26[1];
      a10 = *v26;
      a11 = v63;
      v64 = *n128_u64;
      *(v26 + 15) = *(n128_u64 + 15);
      *v26 = v64;
      v65 = a10;
      *(n128_u64 + 15) = *(&a10 + 15);
      *n128_u64 = v65;
      while (1)
      {
        v66 = v20[v62];
        v67 = *(n128_u64 + v62 * 8 + 16);
        if (v66 != v67)
        {
          break;
        }

        if (--v62 == -3)
        {
          goto LABEL_151;
        }
      }

      if (v66 < v67)
      {
        v101 = *(n128_u64 + 16);
        a10 = *n128_u64;
        a11 = v101;
        v26 = (a2 - 32);
LABEL_150:
        v155 = *v26;
        *(n128_u64 + 15) = *(v26 + 15);
        *n128_u64 = v155;
        v156 = a10;
        *(v26 + 15) = *(&a10 + 15);
        *v26 = v156;
      }
    }

    else if (((v11 != v12) & v13) != 0)
    {
      v51 = *(n128_u64 + 16);
      a10 = *n128_u64;
      a11 = v51;
      v52 = *v353;
      *(n128_u64 + 15) = *(a2 - 17);
      *n128_u64 = v52;
      v53 = a10;
      *(a2 - 17) = *(&a10 + 15);
      *v353 = v53;
      v54 = 16;
      while (1)
      {
        v55 = *(n128_u64 + v54);
        v11 = *(v26 + v54);
        if (v55 != v11)
        {
          break;
        }

        v54 -= 8;
        if (v54 == -8)
        {
          goto LABEL_151;
        }
      }

      if (v55 < v11)
      {
        v71 = v26[1];
        a10 = *v26;
        a11 = v71;
        v72 = *n128_u64;
        *(v26 + 15) = *(n128_u64 + 15);
        *v26 = v72;
        v73 = a10;
        *(n128_u64 + 15) = *(&a10 + 15);
        *n128_u64 = v73;
      }
    }

LABEL_151:
    --a3;
    if ((a4 & 1) == 0)
    {
      v157 = 0;
      while (1)
      {
        v158 = *(n128_u64 + v157 - 16);
        v159 = *(n128_u64 + v157 + 16);
        if (v158 != v159)
        {
          break;
        }

        v157 -= 8;
        if (v157 == -24)
        {
          goto LABEL_212;
        }
      }

      if (v158 < v159)
      {
        goto LABEL_157;
      }

LABEL_212:
      v203 = 0;
      *&var10[16] = *(n128_u64 + 16);
      *var10 = *n128_u64;
      while (1)
      {
        v204 = *&var10[v203 + 16];
        v205 = *(a2 + v203 - 16);
        v206 = v204 >= v205;
        if (v204 != v205)
        {
          break;
        }

        v203 -= 8;
        if (v203 == -24)
        {
          v207 = n128_u64;
          while (1)
          {
LABEL_227:
            n128_u64 = v207 + 32;
            if (v207 + 32 >= a2)
            {
              goto LABEL_237;
            }

            v11 = var10 | 0x10;
            v12 = 6;
            while (1)
            {
              v214 = *v11;
              v11 -= 8;
              v213 = v214;
              v215 = *(v207 + 8 * v12);
              v216 = v214 >= v215;
              if (v214 != v215)
              {
                break;
              }

              if (--v12 == 3)
              {
                goto LABEL_235;
              }
            }

            LOBYTE(v13) = !v216;
LABEL_235:
            v207 += 32;
            if (v213 != v215)
            {
              v207 = n128_u64;
              if (v13)
              {
                goto LABEL_237;
              }
            }
          }
        }
      }

      v208 = n128_u64;
      v207 = n128_u64;
      if (v206)
      {
        goto LABEL_227;
      }

      while (1)
      {
        n128_u64 = v208 + 32;
        v11 = var10 | 0x10;
        v12 = 6;
        while (1)
        {
          v210 = *v11;
          v11 -= 8;
          v209 = v210;
          v211 = *(v208 + 8 * v12);
          v212 = v210 >= v211;
          if (v210 != v211)
          {
            break;
          }

          if (--v12 == 3)
          {
            goto LABEL_224;
          }
        }

        LOBYTE(v13) = !v212;
LABEL_224:
        v208 += 32;
        if (v209 != v211)
        {
          v208 = n128_u64;
          if (v13)
          {
            break;
          }
        }
      }

LABEL_237:
      v217 = a2;
      if (n128_u64 < a2)
      {
        v218 = a2;
        do
        {
          v217 = (v218 - 32);
          v219 = -2;
          v11 = var10 | 0x10;
          while (1)
          {
            v220 = *v11;
            v11 -= 8;
            LOBYTE(v12) = v220;
            v13 = *(v218 + 8 * v219);
            v221 = v220 >= v13;
            if (v220 != v13)
            {
              break;
            }

            if (--v219 == -5)
            {
              goto LABEL_263;
            }
          }

          v218 -= 32;
        }

        while (!v221);
      }

LABEL_263:
      while (n128_u64 < v217)
      {
        v222 = *(n128_u64 + 16);
        a10 = *n128_u64;
        a11 = v222;
        v223 = *v217;
        *(n128_u64 + 15) = *(v217 + 15);
        *n128_u64 = v223;
        v224 = a10;
        *(v217 + 15) = *(&a10 + 15);
        *v217 = v224;
        v225 = n128_u64;
        while (1)
        {
          n128_u64 = v225 + 32;
          v226 = (var10 | 0x10);
          v227 = 6;
          while (1)
          {
            v229 = *v226--;
            v228 = v229;
            v230 = *(v225 + 8 * v227);
            v231 = v229 >= v230;
            if (v229 != v230)
            {
              break;
            }

            if (--v227 == 3)
            {
              goto LABEL_254;
            }
          }

          LOBYTE(v14) = !v231;
LABEL_254:
          v225 += 32;
          if (v228 != v230)
          {
            v225 = n128_u64;
            if (v14)
            {
              break;
            }
          }
        }

        v232 = v217;
        do
        {
          v217 = v232 - 2;
          v233 = -2;
          v11 = var10 | 0x10;
          while (1)
          {
            v234 = *v11;
            v11 -= 8;
            LOBYTE(v12) = v234;
            v13 = *(v232 + v233);
            v235 = v234 >= v13;
            if (v234 != v13)
            {
              break;
            }

            if (--v233 == -5)
            {
              goto LABEL_263;
            }
          }

          v232 -= 2;
        }

        while (!v235);
      }

      v236 = (n128_u64 - 32);
      if ((n128_u64 - 32) != v23)
      {
        v237 = *v236;
        *(v23 + 15) = *(n128_u64 - 17);
        *v23 = v237;
      }

      LODWORD(a4) = 0;
      a5 = *var10;
      *(n128_u64 - 17) = *&var10[15];
      *v236 = a5;
      goto LABEL_2;
    }

LABEL_157:
    *&var10[16] = *(n128_u64 + 16);
    *var10 = *n128_u64;
    v160 = n128_u64;
    do
    {
      v161 = 0;
      v162 = v160;
      v160 += 2;
      while (1)
      {
        v163 = v162[3].n128_u64[v161];
        v164 = *&var10[v161 * 8 + 16];
        if (v163 != v164)
        {
          break;
        }

        if (--v161 == -3)
        {
          goto LABEL_163;
        }
      }
    }

    while (v163 < v164);
LABEL_163:
    v165 = a2;
    if (v162 == n128_u64)
    {
      v173 = a2;
      while (v160 < v173)
      {
        v166 = (v173 - 32);
        v174 = -2;
        v175 = (var10 | 0x10);
        while (1)
        {
          v176 = *(v173 + 8 * v174);
          v178 = *v175--;
          v177 = v178;
          v179 = v176 >= v178;
          if (v176 != v178)
          {
            break;
          }

          if (--v174 == -5)
          {
            goto LABEL_183;
          }
        }

        LOBYTE(v15) = !v179;
LABEL_183:
        v173 -= 32;
        if (v176 != v177)
        {
          v173 = v166;
          if (v15)
          {
            goto LABEL_187;
          }
        }
      }

      v166 = v173;
    }

    else
    {
      while (1)
      {
        v166 = (v165 - 32);
        v167 = -2;
        v168 = (var10 | 0x10);
        while (1)
        {
          v169 = *(v165 + 8 * v167);
          v171 = *v168--;
          v170 = v171;
          v172 = v169 >= v171;
          if (v169 != v171)
          {
            break;
          }

          if (--v167 == -5)
          {
            goto LABEL_171;
          }
        }

        LOBYTE(v15) = !v172;
LABEL_171:
        v165 -= 32;
        if (v169 != v170)
        {
          v165 = v166;
          if (v15)
          {
            break;
          }
        }
      }
    }

LABEL_187:
    if (v160 < v166)
    {
      v180 = v160;
      v181 = v166;
      do
      {
        v182 = v180[1];
        a10 = *v180;
        v183 = a10;
        a11 = v182;
        v184 = *(v181 + 15);
        *v180 = *v181;
        *(v180 + 15) = v184;
        *(v181 + 15) = *(&a10 + 15);
        *v181 = v183;
        do
        {
          v162 = v180;
          v180 += 2;
          v185 = (var10 | 0x10);
          v186 = 6;
          while (1)
          {
            v187 = v162->n128_u64[v186];
            v188 = *v185--;
            v189 = v187 >= v188;
            if (v187 != v188)
            {
              break;
            }

            if (--v186 == 3)
            {
              goto LABEL_196;
            }
          }
        }

        while (!v189);
        while (1)
        {
LABEL_196:
          v190 = v181 - 2;
          v191 = -2;
          v192 = (var10 | 0x10);
          while (1)
          {
            v193 = v181->n128_u64[v191];
            v195 = *v192--;
            v194 = v195;
            v196 = v193 >= v195;
            if (v193 != v195)
            {
              break;
            }

            if (--v191 == -5)
            {
              goto LABEL_203;
            }
          }

          v17 = !v196;
LABEL_203:
          v181 -= 2;
          if (v193 != v194)
          {
            v181 = v190;
            if (v17)
            {
              break;
            }
          }
        }

        v181 = v190;
      }

      while (v180 < v190);
    }

    if (v162 != n128_u64)
    {
      v197 = *v162;
      *(n128_u64 + 15) = *(v162 + 15);
      *n128_u64 = v197;
    }

    v198 = *var10;
    *(v162 + 15) = *&var10[15];
    *v162 = v198;
    if (v160 < v166)
    {
LABEL_211:
      v202 = a3;
      std::__introsort<std::_ClassicAlgPolicy,re::RenderGraphMeshNodeBase::techniqueSort(re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::Allocator *)::$_0 &,re::RenderGraphMeshNodeBase::techniqueSort(re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::Allocator *)::TechniqueSortKey *,false>(v23, v162);
      a3 = v202;
      LODWORD(a4) = 0;
      n128_u64 = v162[2].n128_u64;
      goto LABEL_2;
    }

    v199 = a3;
    v355 = n128_u64;
    v200 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::RenderGraphMeshNodeBase::techniqueSort(re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::Allocator *)::$_0 &,re::RenderGraphMeshNodeBase::techniqueSort(re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::Allocator *)::TechniqueSortKey *>(n128_u64, v162, v198.n128_f64[0]);
    n128_u64 = v162[2].n128_u64;
    if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::RenderGraphMeshNodeBase::techniqueSort(re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::Allocator *)::$_0 &,re::RenderGraphMeshNodeBase::techniqueSort(re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::Allocator *)::TechniqueSortKey *>(&v162[2], a2, v201))
    {
      a2 = v162;
      a3 = v199;
      n128_u64 = v355;
      LODWORD(a4) = v354;
      if (!v200)
      {
        goto LABEL_1;
      }

      return a5.n128_f64[0];
    }

    a3 = v199;
    v23 = v355;
    LOBYTE(a4) = v354;
    if (!v200)
    {
      goto LABEL_211;
    }
  }

  a5.n128_f64[0] = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::RenderGraphMeshNodeBase::techniqueSort(re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::Allocator *)::$_0 &,re::RenderGraphMeshNodeBase::techniqueSort(re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::Allocator *)::TechniqueSortKey *,0>(n128_u64, (n128_u64 + 32), (n128_u64 + 64), (n128_u64 + 96), a5.n128_f64[0]);
  v238 = 14;
  while (1)
  {
    v239 = *v20--;
    v240 = *(n128_u64 + 8 * v238);
    v241 = v239 >= v240;
    if (v239 != v240)
    {
      break;
    }

    if (--v238 == 11)
    {
      return a5.n128_f64[0];
    }
  }

  if (!v241)
  {
    v309 = 0;
    v310 = *(n128_u64 + 112);
    a10 = *(n128_u64 + 96);
    v311 = a10;
    a11 = v310;
    a5 = *(a2 - 17);
    *(n128_u64 + 96) = *v353;
    *(n128_u64 + 111) = a5;
    a5.n128_u64[0] = *(&a10.n128_u64[1] + 7);
    *(a2 - 17) = *(&a10 + 15);
    *v353 = v311;
    while (1)
    {
      v312 = *(n128_u64 + v309 + 112);
      v313 = *(n128_u64 + v309 + 80);
      if (v312 != v313)
      {
        break;
      }

      v309 -= 8;
      if (v309 == -24)
      {
        return a5.n128_f64[0];
      }
    }

    if (v312 < v313)
    {
      v340 = 0;
      v341 = *(n128_u64 + 80);
      a10 = *(n128_u64 + 64);
      a5 = a10;
      a11 = v341;
      *(n128_u64 + 64) = *(n128_u64 + 96);
      *(n128_u64 + 79) = *(n128_u64 + 111);
      *(n128_u64 + 96) = a5;
      a5.n128_u64[0] = *(&a10.n128_u64[1] + 7);
      *(n128_u64 + 111) = *(&a10 + 15);
      while (1)
      {
        v342 = *(n128_u64 + v340 + 80);
        v343 = *(n128_u64 + v340 + 48);
        if (v342 != v343)
        {
          break;
        }

        v340 -= 8;
        if (v340 == -24)
        {
          return a5.n128_f64[0];
        }
      }

      if (v342 < v343)
      {
        v346 = 0;
        v347 = *(n128_u64 + 48);
        a10 = *(n128_u64 + 32);
        a5 = a10;
        a11 = v347;
        *(n128_u64 + 32) = *(n128_u64 + 64);
        *(n128_u64 + 47) = *(n128_u64 + 79);
        *(n128_u64 + 64) = a5;
        a5.n128_u64[0] = *(&a10.n128_u64[1] + 7);
        *(n128_u64 + 79) = *(&a10 + 15);
        while (1)
        {
          v348 = *(n128_u64 + v346 + 48);
          v349 = *(n128_u64 + v346 + 16);
          if (v348 != v349)
          {
            break;
          }

          v346 -= 8;
          if (v346 == -24)
          {
            return a5.n128_f64[0];
          }
        }

        if (v348 < v349)
        {
LABEL_437:
          a5 = *(n128_u64 + 16);
          a10 = *n128_u64;
          a11 = a5;
          *n128_u64 = *(n128_u64 + 32);
          *(n128_u64 + 15) = *(n128_u64 + 47);
          *(n128_u64 + 32) = a10;
          a5.n128_u64[0] = *(&a10.n128_u64[1] + 7);
          *(n128_u64 + 47) = *(&a10 + 15);
        }
      }
    }
  }

  return a5.n128_f64[0];
}

double std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::RenderGraphMeshNodeBase::techniqueSort(re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::Allocator *)::$_0 &,re::RenderGraphMeshNodeBase::techniqueSort(re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::Allocator *)::TechniqueSortKey *,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, double result)
{
  v7 = 16;
  while (1)
  {
    v8 = *(a2 + v7);
    v9 = *(a1 + v7);
    if (v8 != v9)
    {
      break;
    }

    v7 -= 8;
    if (v7 == -8)
    {
      goto LABEL_6;
    }
  }

  v5 = v8 < v9;
LABEL_6:
  v10 = v8 != v9 && v5;
  v11 = 16;
  while (1)
  {
    v12 = *(a3 + v11);
    v13 = *(a2 + v11);
    if (v12 != v13)
    {
      break;
    }

    v11 -= 8;
    if (v11 == -8)
    {
      goto LABEL_11;
    }
  }

  v6 = v12 < v13;
LABEL_11:
  if (v10)
  {
    if (v12 != v13 && v6)
    {
      v14 = *a1;
      v44 = *a1;
      v15 = *(a3 + 15);
      *a1 = *a3;
      *(a1 + 15) = v15;
LABEL_27:
      *a3 = v14;
      result = *(&v44 + 15);
      *(a3 + 15) = *(&v44 + 15);
      goto LABEL_28;
    }

    *var10b = *a1;
    v21 = *a1;
    *&var10b[16] = a1[1];
    v22 = *(a2 + 15);
    *a1 = *a2;
    *(a1 + 15) = v22;
    *a2 = v21;
    result = *&var10b[15];
    *(a2 + 15) = *&var10b[15];
    v23 = 16;
    while (1)
    {
      v24 = *(a3 + v23);
      v25 = *(a2 + v23);
      if (v24 != v25)
      {
        break;
      }

      v23 -= 8;
      if (v23 == -8)
      {
        goto LABEL_28;
      }
    }

    if (v24 < v25)
    {
      v14 = *a2;
      v44 = *a2;
      v28 = *(a3 + 15);
      *a2 = *a3;
      *(a2 + 15) = v28;
      goto LABEL_27;
    }
  }

  else if (v12 != v13 && v6)
  {
    *var10a = *a2;
    v16 = *a2;
    *&var10a[16] = a2[1];
    v17 = *(a3 + 15);
    *a2 = *a3;
    *(a2 + 15) = v17;
    *a3 = v16;
    result = *&var10a[15];
    *(a3 + 15) = *&var10a[15];
    v18 = 16;
    while (1)
    {
      v19 = *(a2 + v18);
      v20 = *(a1 + v18);
      if (v19 != v20)
      {
        break;
      }

      v18 -= 8;
      if (v18 == -8)
      {
        goto LABEL_28;
      }
    }

    if (v19 < v20)
    {
      *var10c = *a1;
      v26 = *a1;
      *&var10c[16] = a1[1];
      v27 = *(a2 + 15);
      *a1 = *a2;
      *(a1 + 15) = v27;
      *a2 = v26;
      result = *&var10c[15];
      *(a2 + 15) = *&var10c[15];
    }
  }

LABEL_28:
  v29 = 16;
  while (1)
  {
    v30 = *(a4 + v29);
    v31 = *(a3 + v29);
    if (v30 != v31)
    {
      break;
    }

    v29 -= 8;
    if (v29 == -8)
    {
      return result;
    }
  }

  if (v30 < v31)
  {
    *var10d = *a3;
    v32 = *a3;
    *&var10d[16] = a3[1];
    v33 = *(a4 + 15);
    *a3 = *a4;
    *(a3 + 15) = v33;
    *a4 = v32;
    result = *&var10d[15];
    *(a4 + 15) = *&var10d[15];
    v34 = 16;
    while (1)
    {
      v35 = *(a3 + v34);
      v36 = *(a2 + v34);
      if (v35 != v36)
      {
        break;
      }

      v34 -= 8;
      if (v34 == -8)
      {
        return result;
      }
    }

    if (v35 < v36)
    {
      *var10e = *a2;
      v37 = *a2;
      *&var10e[16] = a2[1];
      v38 = *(a3 + 15);
      *a2 = *a3;
      *(a2 + 15) = v38;
      *a3 = v37;
      result = *&var10e[15];
      *(a3 + 15) = *&var10e[15];
      v39 = 16;
      while (1)
      {
        v40 = *(a2 + v39);
        v41 = *(a1 + v39);
        if (v40 != v41)
        {
          break;
        }

        v39 -= 8;
        if (v39 == -8)
        {
          return result;
        }
      }

      if (v40 < v41)
      {
        *var10f = *a1;
        v42 = *a1;
        *&var10f[16] = a1[1];
        v43 = *(a2 + 15);
        *a1 = *a2;
        *(a1 + 15) = v43;
        *a2 = v42;
        result = *&var10f[15];
        *(a2 + 15) = *&var10f[15];
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::RenderGraphMeshNodeBase::techniqueSort(re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::Allocator *)::$_0 &,re::RenderGraphMeshNodeBase::techniqueSort(re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::Allocator *)::TechniqueSortKey *>(__int128 *a1, char *a2, double a3)
{
  v8 = (a2 - a1) >> 5;
  if (v8 > 2)
  {
    switch(v8)
    {
      case 3:
        v19 = 0;
        v10 = (a2 - 32);
        while (1)
        {
          v20 = *(a1 + v19 + 48);
          v21 = *(a1 + v19 + 16);
          if (v20 != v21)
          {
            break;
          }

          v19 -= 8;
          if (v19 == -24)
          {
            goto LABEL_25;
          }
        }

        v3 = v20 < v21;
LABEL_25:
        v26 = v20 != v21 && v3;
        v27 = 6;
        v28 = a2 - 16;
        while (1)
        {
          v30 = *v28;
          v28 -= 8;
          v29 = v30;
          v31 = *(a1 + v27);
          v32 = v30 >= v31;
          if (v30 != v31)
          {
            break;
          }

          if (--v27 == 3)
          {
            goto LABEL_32;
          }
        }

        v5 = !v32;
LABEL_32:
        if (v26)
        {
          if (((v29 != v31) & v5) == 0)
          {
            v33 = 0;
            v35 = a1[1];
            *v102 = *a1;
            v34 = *v102;
            *&v102[16] = v35;
            *a1 = a1[2];
            *(a1 + 15) = *(a1 + 47);
            a1[2] = v34;
            *(a1 + 47) = *&v102[15];
            result = 1;
            while (1)
            {
              v37 = *&a2[v33 - 16];
              v38 = *(a1 + v33 + 48);
              if (v37 != v38)
              {
                break;
              }

              v33 -= 8;
              if (v33 == -24)
              {
                return result;
              }
            }

            if (v37 >= v38)
            {
              return 1;
            }

            v45 = a1[2];
            v76 = a1[3];
            *v102 = v45;
            *&v102[16] = v76;
            v77 = *(a2 - 17);
            a1[2] = *v10;
            *(a1 + 47) = v77;
            goto LABEL_49;
          }

LABEL_48:
          v45 = *a1;
          v46 = a1[1];
          *v102 = *a1;
          *&v102[16] = v46;
          v47 = *(v10 + 15);
          *a1 = *v10;
          *(a1 + 15) = v47;
LABEL_49:
          *v10 = v45;
          *(v10 + 15) = *&v102[15];
          return 1;
        }

        if (((v29 != v31) & v5) == 0)
        {
          return 1;
        }

        v54 = 0;
        v56 = a1[3];
        *v102 = a1[2];
        v55 = *v102;
        *&v102[16] = v56;
        v57 = *(a2 - 17);
        a1[2] = *v10;
        *(a1 + 47) = v57;
        *v10 = v55;
        *(a2 - 17) = *&v102[15];
        result = 1;
        while (1)
        {
          v58 = *(a1 + v54 + 48);
          v59 = *(a1 + v54 + 16);
          v60 = v58 >= v59;
          if (v58 != v59)
          {
            break;
          }

          v54 -= 8;
          if (v54 == -24)
          {
            return result;
          }
        }

        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::RenderGraphMeshNodeBase::techniqueSort(re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::Allocator *)::$_0 &,re::RenderGraphMeshNodeBase::techniqueSort(re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::Allocator *)::TechniqueSortKey *,0>(a1, a1 + 2, a1 + 4, a2 - 2, a3);
        return 1;
      case 5:
        v13 = (a2 - 32);
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::RenderGraphMeshNodeBase::techniqueSort(re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::Allocator *)::$_0 &,re::RenderGraphMeshNodeBase::techniqueSort(re::Slice<re::FilteredMeshPass> const&,re::RenderGraphContext &,re::DynamicArray<re::MeshPartSortResult> &,re::DrawCallRecorderGroup *,re::Allocator *)::TechniqueSortKey *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a3);
        v14 = a2 - 16;
        v15 = 14;
        while (1)
        {
          v16 = *v14;
          v14 -= 8;
          v17 = *(a1 + v15);
          v18 = v16 >= v17;
          if (v16 != v17)
          {
            break;
          }

          if (--v15 == 11)
          {
            return 1;
          }
        }

        if (v18)
        {
          return 1;
        }

        v48 = 0;
        v50 = a1[7];
        *v102 = a1[6];
        v49 = *v102;
        *&v102[16] = v50;
        v51 = *(a2 - 17);
        a1[6] = *v13;
        *(a1 + 111) = v51;
        *v13 = v49;
        *(a2 - 17) = *&v102[15];
        result = 1;
        while (1)
        {
          v52 = *(a1 + v48 + 112);
          v53 = *(a1 + v48 + 80);
          if (v52 != v53)
          {
            break;
          }

          v48 -= 8;
          if (v48 == -24)
          {
            return result;
          }
        }

        if (v52 >= v53)
        {
          return 1;
        }

        v71 = 0;
        v73 = a1[5];
        *v102 = a1[4];
        v72 = *v102;
        *&v102[16] = v73;
        a1[4] = a1[6];
        *(a1 + 79) = *(a1 + 111);
        a1[6] = v72;
        *(a1 + 111) = *&v102[15];
        result = 1;
        while (1)
        {
          v74 = *(a1 + v71 + 80);
          v75 = *(a1 + v71 + 48);
          if (v74 != v75)
          {
            break;
          }

          v71 -= 8;
          if (v71 == -24)
          {
            return result;
          }
        }

        if (v74 >= v75)
        {
          return 1;
        }

        v95 = 0;
        v97 = a1[3];
        *v102 = a1[2];
        v96 = *v102;
        *&v102[16] = v97;
        a1[2] = a1[4];
        *(a1 + 47) = *(a1 + 79);
        a1[4] = v96;
        *(a1 + 79) = *&v102[15];
        result = 1;
        while (1)
        {
          v98 = *(a1 + v95 + 48);
          v99 = *(a1 + v95 + 16);
          v60 = v98 >= v99;
          if (v98 != v99)
          {
            break;
          }

          v95 -= 8;
          if (v95 == -24)
          {
            return result;
          }
        }

        break;
      default:
        goto LABEL_19;
    }

    if (!v60)
    {
      v101 = a1[1];
      *v102 = *a1;
      v100 = *v102;
      *&v102[16] = v101;
      *a1 = a1[2];
      *(a1 + 15) = *(a1 + 47);
      a1[2] = v100;
      *(a1 + 47) = *&v102[15];
    }

    return 1;
  }

  if (v8 >= 2)
  {
    if (v8 == 2)
    {
      v9 = 0;
      v10 = (a2 - 32);
      while (1)
      {
        v11 = *&a2[v9 - 16];
        v12 = *(a1 + v9 + 16);
        if (v11 != v12)
        {
          break;
        }

        v9 -= 8;
        if (v9 == -24)
        {
          return 1;
        }
      }

      if (v11 >= v12)
      {
        return 1;
      }

      goto LABEL_48;
    }

LABEL_19:
    v22 = 0;
    v23 = a1 + 4;
    while (1)
    {
      v24 = *(a1 + v22 + 48);
      v25 = *(a1 + v22 + 16);
      if (v24 != v25)
      {
        break;
      }

      v22 -= 8;
      if (v22 == -24)
      {
        goto LABEL_39;
      }
    }

    v4 = v24 < v25;
LABEL_39:
    v39 = 0;
    v40 = v24 != v25 && v4;
    while (1)
    {
      v41 = *(a1 + v39 + 80);
      v42 = *(a1 + v39 + 48);
      if (v41 != v42)
      {
        break;
      }

      v39 -= 8;
      if (v39 == -24)
      {
        goto LABEL_44;
      }
    }

    v4 = v41 < v42;
LABEL_44:
    if (!v40)
    {
      if (v41 != v42 && v4)
      {
        v61 = 0;
        v63 = a1[3];
        *v102 = a1[2];
        v62 = *v102;
        *&v102[16] = v63;
        a1[2] = *v23;
        *(a1 + 47) = *(a1 + 79);
        *v23 = v62;
        *(a1 + 79) = *&v102[15];
        while (1)
        {
          v64 = *(a1 + v61 + 48);
          v65 = *(a1 + v61 + 16);
          if (v64 != v65)
          {
            break;
          }

          v61 -= 8;
          if (v61 == -24)
          {
            goto LABEL_82;
          }
        }

        if (v64 < v65)
        {
          v79 = a1[1];
          *v102 = *a1;
          v78 = *v102;
          *&v102[16] = v79;
          *a1 = a1[2];
          *(a1 + 15) = *(a1 + 47);
          a1[2] = v78;
          *(a1 + 47) = *&v102[15];
        }
      }

      goto LABEL_82;
    }

    if (v41 != v42 && v4)
    {
      v43 = *a1;
      v44 = a1[1];
      *v102 = *a1;
      *&v102[16] = v44;
      *a1 = *v23;
      *(a1 + 15) = *(a1 + 79);
    }

    else
    {
      v67 = a1[1];
      *v102 = *a1;
      v66 = *v102;
      *&v102[16] = v67;
      *a1 = a1[2];
      *(a1 + 15) = *(a1 + 47);
      a1[2] = v66;
      *(a1 + 47) = *&v102[15];
      v68 = (a1 + 5);
      v69 = -3;
      while (1)
      {
        v70 = *(v68 - 4);
        if (*v68 != v70)
        {
          break;
        }

        --v68;
        v18 = __CFADD__(v69++, 1);
        if (v18)
        {
          goto LABEL_82;
        }
      }

      if (*v68 >= v70)
      {
        goto LABEL_82;
      }

      v43 = a1[2];
      v80 = a1[3];
      *v102 = v43;
      *&v102[16] = v80;
      a1[2] = *v23;
      *(a1 + 47) = *(a1 + 79);
    }

    *v23 = v43;
    *(a1 + 79) = *&v102[15];
LABEL_82:
    v81 = a1 + 6;
    if (a1 + 6 != a2)
    {
      v82 = 0;
      v83 = a1 + 7;
      v84 = a1 + 3;
      while (2)
      {
        v85 = -3;
        v86 = v83;
        while (1)
        {
          v87 = *(v86 - 4);
          if (*v86 != v87)
          {
            break;
          }

          v86 = (v86 - 8);
          v18 = __CFADD__(v85++, 1);
          if (v18)
          {
            goto LABEL_100;
          }
        }

        if (*v86 < v87)
        {
          v88 = v81[1];
          *v102 = *v81;
          *&v102[16] = v88;
          v89 = v84;
          v90 = v81;
          while (1)
          {
            *v90 = *v23;
            *(v90 + 15) = *(v23 + 15);
            if (v23 == a1)
            {
              break;
            }

            v90 = v23;
            v91 = 0;
            v23 -= 2;
            while (1)
            {
              v92 = *((v102 | 0x10) + v91);
              v93 = *(v89 + v91);
              if (v92 != v93)
              {
                break;
              }

              v91 -= 8;
              if (v91 == -24)
              {
                goto LABEL_99;
              }
            }

            v89 -= 2;
            if (v92 >= v93)
            {
              goto LABEL_99;
            }
          }

          v90 = a1;
LABEL_99:
          v94 = *v102;
          *(v90 + 15) = *&v102[15];
          *v90 = v94;
          if (++v82 == 8)
          {
            return v81 + 2 == a2;
          }
        }

LABEL_100:
        v23 = v81;
        v83 += 2;
        v84 += 2;
        v81 += 2;
        if (v81 != a2)
        {
          continue;
        }

        break;
      }
    }
  }

  return 1;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::Matrix4x4<float>,2ul>::ensureCapacity(_anonymous_namespace_ *result)
{
  v1 = result;
  if (*result)
  {
    v2 = *(result + 1);
    if (*(result + 16))
    {
      v3 = 2;
    }

    else
    {
      v3 = *(result + 4);
    }

    if (v2 >= v3)
    {

      return re::DynamicOverflowArray<re::Matrix4x4<float>,2ul>::growCapacity(result, v2 + 1);
    }
  }

  else
  {
    v4 = *(v1 + 1);
    result = re::DynamicOverflowArray<re::Matrix4x4<float>,2ul>::setCapacity(v1, v4 + 1);
    *(v1 + 4) += 2;
  }

  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::Matrix4x4<float>,2ul>::growCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  if (!*result)
  {
    result = re::DynamicOverflowArray<re::Matrix4x4<float>,2ul>::setCapacity(v3, v2);
    *(v3 + 4) += 2;
    return result;
  }

  if (*(result + 16))
  {
    if (a2 <= 2)
    {
      return result;
    }

    v5 = 4;
  }

  else
  {
    v4 = *(result + 4);
    if (v4 >= a2)
    {
      return result;
    }

    v5 = 2 * v4;
  }

  if (v5 > a2)
  {
    a2 = v5;
  }

  return re::DynamicOverflowArray<re::Matrix4x4<float>,2ul>::setCapacity(result, a2);
}

void *re::DynamicOverflowArray<re::Matrix4x4<float>,2ul>::setCapacity(void *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (a2 && !v5)
  {
    result = re::DynamicOverflowArray<re::Matrix4x4<float>,2ul>::setCapacity(v4, a2);
    v6 = *(v4 + 4) + 2;
LABEL_4:
    *(v4 + 4) = v6;
    return result;
  }

  v7 = *(result + 4);
  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = result[4];
  }

  if (v8 != a2)
  {
    v9 = result[1];
    if (v9 <= a2 && (a2 > 2 || (v7 & 1) == 0))
    {
      if (a2 < 3)
      {
        v14 = result + 4;
        v15 = v4[5];
        if (v7)
        {
          v16 = v4 + 4;
        }

        else
        {
          v16 = v4[5];
        }

        memcpy(v14, v16, v9 << 6);
        result = (*(*v5 + 40))(v5, v15);
        v6 = *(v4 + 4) | 1;
        goto LABEL_4;
      }

      if (a2 >> 58)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 64, a2);
        _os_crash();
        __break(1u);
      }

      else
      {
        v2 = a2 << 6;
        v10 = (*(*v5 + 32))(*result, a2 << 6, 16);
        if (v10)
        {
          v12 = v10;
          if (v4[2])
          {
            v13 = v4 + 4;
          }

          else
          {
            v13 = v4[5];
          }

          result = memcpy(v10, v13, v4[1] << 6);
          v17 = *(v4 + 4);
          if ((v17 & 1) == 0)
          {
            result = (*(**v4 + 40))(*v4, v4[5]);
            v17 = *(v4 + 4);
          }

          *(v4 + 4) = v17 & 0xFFFFFFFE;
          v4[4] = a2;
          v4[5] = v12;
          return result;
        }
      }

      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*v4 + 8));
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(uint64_t result, uint64_t *a2)
{
  v3 = result;
  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  v7 = *(result + 24);
  if (v7)
  {
    v8 = v6 % v7;
    v9 = *(*(result + 8) + 4 * (v6 % v7));
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(result + 16);
      if (*(v10 + 24 * v9 + 16) == v4)
      {
        return result;
      }

      while (1)
      {
        LODWORD(v9) = *(v10 + 24 * v9 + 8) & 0x7FFFFFFF;
        if (v9 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v10 + 24 * v9 + 16) == v4)
        {
          return result;
        }
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  result = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addAsCopy(result, v8, v6, a2, a2);
  ++*(v3 + 40);
  return result;
}

uint64_t re::RenderGraphDataStore::tryGet<re::DepthPatchData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re14DepthPatchDataE";
  if (("N2re14DepthPatchDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re14DepthPatchDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

void re::DepthPatchData::~DepthPatchData(re::DepthPatchData *this)
{
  re::DynamicArray<unsigned long>::deinit(this + 48);
  re::DynamicArray<unsigned long>::deinit(this + 8);
}

{
  re::DynamicArray<unsigned long>::deinit(this + 48);
  re::DynamicArray<unsigned long>::deinit(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphMipmapGenerationNode::execute(char **this, re::RenderGraphContext *a2)
{
  v3 = re::RenderGraphDataStore::tryGet<re::MipmapGenerationContext>(*(a2 + 146), "MipmapGenerationContext", this[4]);
  if (v3)
  {
    v4 = v3;
    re::RenderGraphContext::makeBlitCommandEncoder(a2, 0, &v9);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = *(v4 + 32);
      v7 = 8 * v5;
      do
      {
        v8 = *v6++;
        re::mtl::BlitCommandEncoder::generateMipmaps(&v9, v8);
        v7 -= 8;
      }

      while (v7);
    }

    re::RenderGraphContext::finishEncoding<re::mtl::BlitCommandEncoder &>(a2, &v9, 1);
  }
}

void re::RenderGraphMipmapGenerationNode::~RenderGraphMipmapGenerationNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

re::RenderGraphMRCNode *re::RenderGraphMRCNode::RenderGraphMRCNode(re::RenderGraphMRCNode *this, const char *a2)
{
  v3 = re::RenderGraphNode::RenderGraphNode(this, a2);
  *v3 = &unk_1F5D14908;
  *(v3 + 264) = 0u;
  *(v3 + 280) = 0u;
  *(v3 + 296) = 0u;
  *(v3 + 39) = 0;
  re::DynamicString::setCapacity(this + 36, 0);
  *(this + 40) = 0;
  *(this + 41) = 0;
  *(this + 42) = 0;
  *(this + 344) = 1;
  *(this + 45) = 0;
  *(this + 46) = 0;
  *(this + 44) = 0;
  *(this + 94) = 0;
  *(this + 54) = 0;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 412) = 0u;
  return this;
}

void re::RenderGraphMRCNode::configure(re::RenderGraphMRCNode *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  re::AssetHandle::loadNow(*(this + 34), 0);

  re::RenderGraphNode::configure(this, a2, a3, a4);
}

void re::RenderGraphMRCNode::setup(re::RenderGraphMRCNode *this, re::RenderGraphBuilder *a2, re::RenderGraphDataStore *a3)
{
  if (*(this + 344) == 1)
  {
    v6 = re::RenderGraphDataStore::tryGet<re::ThreadGroupMemoryData>(a3, *(this + 6));
    if (v6)
    {
      if (*(v6 + 8) == 1)
      {
        *(this + 9) = *(v6 + 16);
      }
    }
  }

  re::RenderGraphNode::setup(this, a2, a3);
}

uint64_t re::RenderGraphDataStore::tryGet<re::ThreadGroupMemoryData>(uint64_t a1, uint64_t a2)
{
  v8[2] = *MEMORY[0x1E69E9840];
  {
    re::introspect<re::ThreadGroupMemoryData>(BOOL)::info = re::introspect_ThreadGroupMemoryData(0);
  }

  v4 = strlen(*(re::introspect<re::ThreadGroupMemoryData>(BOOL)::info + 6));
  if (v4)
  {
    MurmurHash3_x64_128(*(re::introspect<re::ThreadGroupMemoryData>(BOOL)::info + 6), v4, 0, v8);
    v5 = (v8[1] - 0x61C8864680B583E9 + (v8[0] << 6) + (v8[0] >> 2)) ^ v8[0];
  }

  else
  {
    v5 = 0;
  }

  v8[0] = (a2 - 0x61C8864680B583E9 + (v5 << 6) + (v5 >> 2)) ^ v5;
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 112), v8);
  if (v6 == -1)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 120) + 16 * v6 + 8);
  }
}

void re::RenderGraphMRCNode::execute(re::RenderGraphMRCNode *this, re::RenderGraphContext *a2)
{
  v80 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v59, 5036, 0);
  v4 = (*(*this + 136))(this, a2);
  if (v4)
  {
    *v66 = 0u;
    v67[0] = 0u;
    re::DynamicString::setCapacity(v66, 0);
    LOBYTE(v67[1]) = 0;
    BYTE8(v67[3]) = 0;
    memset(v70, 0, sizeof(v70));
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v77 = 0;
    v75 = 0u;
    memset(v76, 0, 29);
    v78 = [objc_msgSend(MEMORY[0x1E6974100] alloc)];
    v79 = 1;
    re::DynamicString::operator=(v66, (this + 288));
    re::DynamicArray<re::TechniqueFunctionConstant>::operator=(v70, this + 50);
    re::RenderGraphContext::rtInfo(a2, this, v64);
    v75 = *v64;
    v76[0] = *&v64[16];
    v76[1] = *&v64[32];
    v77 = v65;
    if (*(this + 34))
    {
      v5 = re::AssetHandle::loadedAsset<re::ShaderLibraryAsset>((this + 264));
      v64[0] = 1;
      re::DynamicString::DynamicString(&v64[8], (v5 + 40));
      re::Optional<re::DynamicString>::operator=(&v67[1], v64);
      if (v64[0] == 1 && *&v64[8] && (v64[16] & 1) != 0)
      {
        (*(**&v64[8] + 40))();
      }
    }

    if (*(this + 84))
    {
      v6 = *(this + 85) == 0;
    }

    else
    {
      v6 = 1;
    }

    v79 = v6;
    TileRenderPipelineState = re::getOrCreateTileRenderPipelineState(*(a2 + 1), v66);
    NS::SharedPtr<MTL::Buffer>::operator=(this + 49, TileRenderPipelineState);
    if (v78)
    {

      v78 = 0;
    }

    re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v70);
    if (BYTE8(v67[3]) == 1 && v68)
    {
      if (BYTE8(v68))
      {
        (*(*v68 + 40))();
      }

      v68 = 0u;
      v69 = 0u;
    }

    if (LOBYTE(v67[1]) == 1 && *(&v67[1] + 1))
    {
      if (v67[2])
      {
        (*(**(&v67[1] + 1) + 40))();
      }

      memset(&v67[1] + 8, 0, 32);
    }

    if (v66[0] && (v66[1] & 1) != 0)
    {
      (*(*v66[0] + 40))();
    }
  }

  re::RenderGraphContext::acquireManagedRenderCommandEncoder(&v57, a2, 0);
  (v58[20])(*v58, sel_pushDebugGroup_, [MEMORY[0x1E696AEC0] stringWithCString:*(this + 2) encoding:4]);
  (v58[7])(*v58, sel_setRenderPipelineState_, *(this + 49));
  v8 = *(this + 46);
  if (v8)
  {
    v9 = 0;
    v10 = 8 * v8;
    v11 = (*(this + 48) + 4);
    do
    {
      [v57 setThreadgroupMemoryLength:*v11 offset:v9 atIndex:*(v11 - 1)];
      v12 = *v11;
      v11 += 2;
      v9 += v12;
      v10 -= 8;
    }

    while (v10);
  }

  v13 = *(this + 15);
  if (v13)
  {
    v14 = *(this + 17);
    v15 = 32 * v13;
    do
    {
      if (*(v14 + 20) != 1 || *(v14 + 8) != -1 && *(v14 + 12) != -1)
      {
        v16 = re::RenderGraphContext::metalBuffer(a2, v14);
        v18 = re::BufferSlice::buffer(v16, v17);
        [v57 setTileBuffer:*v18 offset:*(v18 + 32) atIndex:*(v14 + 16)];
      }

      v14 += 32;
      v15 -= 32;
    }

    while (v15);
  }

  v19 = *(this + 20);
  if (v19)
  {
    v20 = *(this + 22);
    v21 = v19 << 6;
    do
    {
      if (*(v20 + 49) != 1 || *(v20 + 8) != -1 && *(v20 + 12) != -1)
      {
        v22 = re::RenderGraphContext::metalBuffer(a2, v20);
        v24 = re::BufferSlice::buffer(v22, v23);
        [v57 setTileBuffer:*v24 offset:*(v24 + 32) atIndex:*(v20 + 16)];
      }

      v20 += 64;
      v21 -= 64;
    }

    while (v21);
  }

  v25 = *(this + 25);
  if (v25)
  {
    v26 = *(this + 27);
    v27 = 32 * v25;
    do
    {
      if (*(v26 + 20) != 1 || *(v26 + 8) != -1 && *(v26 + 12) != -1)
      {
        re::RenderGraphContext::metalTexture(a2, v26, *(v26 + 21), *(v26 + 22), v66);
        [v57 setTileTexture:v66[0] atIndex:*(v26 + 16)];
        if (v66[0])
        {
        }
      }

      v26 += 32;
      v27 -= 32;
    }

    while (v27);
  }

  v28 = *(this + 30);
  if (v28)
  {
    v29 = *(this + 32);
    v30 = v28 << 6;
    do
    {
      if (*(v29 + 49) != 1 || *(v29 + 8) != -1 && *(v29 + 12) != -1)
      {
        re::RenderGraphContext::metalTexture(a2, v29, 0, 0, v66);
        [v57 setTileTexture:v66[0] atIndex:*(v29 + 16)];
        if (v66[0])
        {
        }
      }

      v29 += 64;
      v30 -= 64;
    }

    while (v30);
  }

  (*(*this + 128))(this, a2, &v57);
  v31 = *(this + 84);
  if (!v31 || (v32 = *(this + 85)) == 0)
  {
    v31 = [v57 tileWidth];
    v32 = [v57 tileHeight];
  }

  v33 = re::RenderGraphDataStore::tryGet<re::CameraData>(*(a2 + 146), *(*(a2 + 5) + 48));
  if (v33)
  {
    v35 = v33;
    v36 = v32;
    v37 = v31;
    v38 = vceqzq_f32(*(this + 20));
    v38.i32[3] = v38.i32[2];
    if ((vminvq_u32(v38) & 0x80000000) != 0)
    {
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v50 = *(*a2 + 32);
      v66[0] = 0;
      v66[1] = 0;
      *&v67[0] = 0;
      v51 = re::RenderGraphDataStore::tryGet<re::ViewportPercentData>(*(a2 + 146), *(*(a2 + 5) + 48));
      if (v51)
      {
        v52 = *(v51 + 64);
      }

      else
      {
        v52 = 1;
      }

      re::FixedArray<re::mtl::Viewport>::init<>(&v61, v50, v52);
      re::FixedArray<re::Vector4<float>>::init<>(v66, v50, v52);
      v53 = re::RenderGraphDataStore::tryGet<re::ViewportData>(*(a2 + 146), *(*(a2 + 5) + 48));
      re::RenderGraphContext::selectViewport(a2, v53, &v61, v66, 0);
      if (v66[0] && v66[1])
      {
        (*(*v66[0] + 40))();
      }

      if (*(v35 + 890))
      {
        v54 = 0;
        a2 = 0;
        while (1)
        {
          v41 = v62;
          if (v62 <= a2)
          {
            break;
          }

          v55 = vcvtq_u64_f64(vcvtq_f64_f32(*(v63 + v54)));
          v56 = vcvtq_u64_f64(vcvtq_f64_f32(*(v63 + v54 + 8)));
          *v64 = v37;
          *&v64[8] = v32;
          *&v64[16] = 1;
          *v66 = v55;
          *(v67 + 8) = v56;
          *&v67[0] = 0;
          *(&v67[1] + 1) = 1;
          [v57 dispatchThreadsPerTile:v64 inRegion:v66 withRenderTargetArrayIndex:a2];
          a2 = (a2 + 1);
          v54 += 24;
          if (a2 >= *(v35 + 890))
          {
            goto LABEL_84;
          }
        }

LABEL_90:
        v60 = 0;
        memset(v67, 0, sizeof(v67));
        *v66 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v64 = 136315906;
        *&v64[4] = "operator[]";
        *&v64[12] = 1024;
        *&v64[14] = 468;
        *&v64[18] = 2048;
        *&v64[20] = a2;
        *&v64[28] = 2048;
        *&v64[30] = v41;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

LABEL_84:
      if (v61 && v62)
      {
        (*(*v61 + 40))();
      }
    }

    else if (*(v33 + 890))
    {
      v39 = 0;
      v40 = (v33 + 144);
      v41 = (v33 + 64);
      while (1)
      {
        v42 = *(v35 + 128);
        if (v42 <= v39)
        {
          break;
        }

        v43 = *(v35 + 48);
        if (v43 <= v39)
        {
          goto LABEL_89;
        }

        re::RenderCamera::transformWorldBoundsToScreen(v41, a2 + 4, v40, v64);
        v44 = *(this + 20);
        v45 = vmulq_f32(*v64, v44);
        *v64 = v45;
        *&v64[16] = vmulq_f32(v44, *&v64[16]);
        v46 = vsubq_f32(*&v64[16], v45);
        v47 = v46;
        v47.i32[3] = 0;
        v48 = vmaxnmq_f32(v47, 0).u64[0];
        if (*&v48 >= 1.0 && *(&v48 + 1) >= 1.0)
        {
          v61 = v37;
          v62 = v36;
          v63 = 1;
          *v66 = vcvtq_u64_f64(vcvtq_f64_f32(*v45.f32));
          *(v67 + 8) = vcvtq_u64_f64(vcvtq_f64_f32(vrndp_f32(*v46.f32)));
          *&v67[0] = 0;
          *(&v67[1] + 1) = 1;
          [v57 dispatchThreadsPerTile:&v61 inRegion:v66 withRenderTargetArrayIndex:v39];
        }

        ++v39;
        v40 += 15;
        v41 += 2;
        if (v39 >= *(v35 + 890))
        {
          goto LABEL_87;
        }
      }

      re::internal::assertLog(6, v34, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v39, v42);
      _os_crash();
      __break(1u);
LABEL_89:
      re::internal::assertLog(6, v34, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v39, v43);
      _os_crash();
      __break(1u);
      goto LABEL_90;
    }
  }

LABEL_87:
  (v58[21])(*v58, sel_popDebugGroup);
  re::mtl::RenderCommandEncoder::~RenderCommandEncoder(&v57);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v59);
}

void *re::allocInfo_RenderGraphMRCNode(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_527, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_527))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C06C8, "RenderGraphMRCNode");
    __cxa_guard_release(&_MergedGlobals_527);
  }

  return &unk_1EE1C06C8;
}

void re::initInfo_RenderGraphMRCNode(re *this, re::IntrospectionBase *a2)
{
  v21[0] = 0xA5BAE2AB5AB1D450;
  v21[1] = "RenderGraphMRCNode";
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  *(this + 2) = v22;
  if ((atomic_load_explicit(&qword_1EE1C06A0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C06A0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphNode(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphNode";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1C06A8 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_AssetHandle(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "library";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x10800000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1C06B0 = v12;
      v13 = re::introspectionAllocator(v12);
      v14 = re::IntrospectionInfo<re::DynamicArray<re::ThreadGroupMemorySetting>>::get(1);
      v15 = (*(*v13 + 32))(v13, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "threadGroupMemorySettings";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x16000000003;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1C06B8 = v15;
      v16 = re::introspectionAllocator(v15);
      v18 = re::IntrospectionInfo<re::DynamicString>::get(1, v17);
      v19 = (*(*v16 + 32))(v16, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "tileFunction";
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x12000000004;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE1C06C0 = v19;
      __cxa_guard_release(&qword_1EE1C06A0);
    }
  }

  *(this + 2) = 0x1C000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1C06A8;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphMRCNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphMRCNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphMRCNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphMRCNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v20 = v22;
}

re::RenderGraphMRCNode *re::RenderGraphMRCNode::RenderGraphMRCNode(re::RenderGraphMRCNode *this)
{
  v2 = re::RenderGraphNode::RenderGraphNode(this);
  *v2 = &unk_1F5D14908;
  *(v2 + 264) = 0u;
  *(v2 + 280) = 0u;
  *(v2 + 296) = 0u;
  *(v2 + 39) = 0;
  re::DynamicString::setCapacity(this + 36, 0);
  *(this + 40) = 0;
  *(this + 41) = 0;
  *(this + 42) = 0;
  *(this + 344) = 1;
  *(this + 45) = 0;
  *(this + 46) = 0;
  *(this + 44) = 0;
  *(this + 94) = 0;
  *(this + 54) = 0;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 412) = 0u;
  return this;
}

void re::RenderGraphCommitCommandBufferNode::execute(re::RenderGraphCommitCommandBufferNode *this, re::RenderGraphContext *a2)
{
  v2 = *(*(a2 + 1) + 112);
  if (v2)
  {
    re::DrawingManager::commitQueuedCommandBuffers(v2, *(*a2 + 40));
  }
}

void *re::allocInfo_RenderGraphCommitCommandBufferNode(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_528))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C0770, "RenderGraphCommitCommandBufferNode");
    __cxa_guard_release(&_MergedGlobals_528);
  }

  return &unk_1EE1C0770;
}

void re::initInfo_RenderGraphCommitCommandBufferNode(re *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x292463081C40DE7CLL;
  v10[1] = "RenderGraphCommitCommandBufferNode";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1C0768, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C0768);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphNode(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphNode";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1C0760 = v8;
      __cxa_guard_release(&qword_1EE1C0768);
    }
  }

  *(this + 2) = 0x10800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1C0760;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphCommitCommandBufferNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphCommitCommandBufferNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphCommitCommandBufferNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphCommitCommandBufferNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v9 = v11;
}

re::RenderGraphNode *re::internal::defaultConstruct<re::RenderGraphCommitCommandBufferNode>(int a1, int a2, re::RenderGraphNode *this)
{
  result = re::RenderGraphNode::RenderGraphNode(this);
  *result = &unk_1F5D149C0;
  return result;
}

re::RenderGraphNode *re::internal::defaultConstructV2<re::RenderGraphCommitCommandBufferNode>(re::RenderGraphNode *a1)
{
  result = re::RenderGraphNode::RenderGraphNode(a1);
  *result = &unk_1F5D149C0;
  return result;
}

void re::RenderGraphCommitCommandBufferNode::~RenderGraphCommitCommandBufferNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphMPSImageAreaMaxNode::configure(id *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  re::RenderGraphNode::configure(this, a2, a3, a4);
  v6 = *(*(a4 + 1) + 208);
  v17 = v6;
  v7 = this + 34;
  v8 = this[34];
  if (!v8)
  {
    re::mtl::mps::ImageAreaMax::ImageAreaMax(&v16, &v17, *(this + 66), *(this + 66));
    if (v7 != &v16)
    {
      v9 = v16;
      v16 = 0;
      v10 = *v7;
      *v7 = v9;
    }

    v8 = *v7;
  }

  v11 = [v8 kernelWidth];
  v12 = *(this + 66);
  if (v11 != v12 || (v13 = [this[34] kernelHeight], v12 = *(this + 66), v13 != v12))
  {
    re::mtl::mps::ImageAreaMax::ImageAreaMax(&v16, &v17, v12, v12);
    if (v7 != &v16)
    {
      v14 = v16;
      v16 = 0;
      v15 = *v7;
      *v7 = v14;
    }
  }
}

void re::RenderGraphMPSImageAreaMaxNode::execute(id *this, re::RenderGraphContext *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v32, 5093, 0);
  v4 = *a2;
  re::RenderGraphMPSNodeBase::getCommandBufferWithProtectionOptions(this, a2, &v31);
  v25 = *v4;
  v24 = v31;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  location = 0;
  v29 = 0;
  re::ObjCObject::operator=(&v27, &v24);
  re::ObjCObject::operator=(&location, &v25);

  [this[34] setEdgeMode:*(this + 268)];
  if (!this[25])
  {
LABEL_26:
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_27;
  }

  v6 = this[27];
  v23[0] = *v6;
  v23[1] = v6[1];
  if (!this[30])
  {
LABEL_27:
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_28;
  }

  v4 = v34;
  v7 = this[32];
  v22[0] = *v7;
  v22[1] = v7[1];
  re::RenderGraphContext::metalTexture(a2, v23, 0, 0, &v21);
  re::RenderGraphContext::metalTexture(a2, v22, 0, 0, &v20);
  re::SyncMechanism::sync(&location);
  *&v41[0] = [v21 width];
  *v34 = [v21 height];
  re::RenderGraphMPSNodeBase::getViewports(a2, v41, v34, &v17);
  if ([v21 textureType] == 2)
  {
    if (v18)
    {
      v8 = this[34];
      v9 = vcvtq_u64_f64(vcvtq_f64_f32(v19[1]));
      v41[0] = vcvtq_u64_f64(vcvtq_f64_f32(*v19));
      *(&v41[1] + 8) = v9;
      *&v41[1] = 0;
      *(&v41[2] + 1) = 1;
      [v8 setClipRect:v41];
      re::mtl::mps::UnaryImageKernel::encodeToCommandBuffer(this + 34, &v31, &v21, &v20);
      goto LABEL_15;
    }

LABEL_28:
    v33 = 0;
    *(v4 + 6) = 0u;
    *(v4 + 7) = 0u;
    *(v4 + 4) = 0u;
    *(v4 + 5) = 0u;
    *(v4 + 3) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v34 = 136315906;
    *(v4 + 4) = "operator[]";
    v35 = 1024;
    *(v4 + 14) = 468;
    v37 = 2048;
    *(v4 + 20) = 0;
    v39 = 2048;
    *(v4 + 30) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if ([v21 textureType] != 3)
  {
    [v21 textureType];
    v15 = [v21 textureType];
    re::internal::assertLog(5, v16, "assertion failure: '%s' (%s:line %i) Unsupported texture type %lu.", "false", "execute", 66, v15);
    _os_crash();
    __break(1u);
    return;
  }

  if ([v21 arrayLength])
  {
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = v18;
      if (v18 <= v11)
      {
        break;
      }

      v13 = this[34];
      v14 = vcvtq_u64_f64(vcvtq_f64_f32(v19[v10 + 1]));
      v41[0] = vcvtq_u64_f64(vcvtq_f64_f32(v19[v10]));
      *(&v41[1] + 8) = v14;
      *&v41[1] = 0;
      *(&v41[2] + 1) = 1;
      [v13 setClipRect:v41];
      re::makeView2DArrayTo2D(&v21, v11, v41);
      re::makeView2DArrayTo2D(&v20, v11, v34);
      re::mtl::mps::UnaryImageKernel::encodeToCommandBuffer(this + 34, &v31, v41, v34);
      if (*v34)
      {
      }

      if (*&v41[0])
      {
      }

      ++v11;
      v10 += 3;
      if (v11 >= [v21 arrayLength])
      {
        goto LABEL_15;
      }
    }

    v33 = 0;
    memset(v41, 0, sizeof(v41));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v34 = 136315906;
    *&v34[4] = "operator[]";
    v35 = 1024;
    v36 = 468;
    v37 = 2048;
    v38 = v11;
    v39 = 2048;
    v40 = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_26;
  }

LABEL_15:
  re::SyncMechanism::sync(&location);
  if (v17 && v18)
  {
    (*(*v17 + 40))();
  }

  if (v20)
  {
  }

  if (v21)
  {
  }

  if (v28)
  {

    v28 = 0;
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v32);
}

void *re::allocInfo_RenderGraphMPSImageAreaMaxNode(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_529, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_529))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C0828, "RenderGraphMPSImageAreaMaxNode");
    __cxa_guard_release(&_MergedGlobals_529);
  }

  return &unk_1EE1C0828;
}

void re::initInfo_RenderGraphMPSImageAreaMaxNode(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0x265369E83F9AD5ACLL;
  v18[1] = "RenderGraphMPSImageAreaMaxNode";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1C0808, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C0808);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphNode(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphNode";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1C0810 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_int(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "dilation";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x10800000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1C0818 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_MPSImageEdgeModeType(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "edgeMode";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x10C00000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1C0820 = v16;
      __cxa_guard_release(&qword_1EE1C0808);
    }
  }

  *(this + 2) = 0x11800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1C0810;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphMPSImageAreaMaxNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphMPSImageAreaMaxNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphMPSImageAreaMaxNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphMPSImageAreaMaxNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

re::RenderGraphNode *re::internal::defaultConstruct<re::RenderGraphMPSImageAreaMaxNode>(int a1, int a2, re::RenderGraphNode *this)
{
  result = re::RenderGraphNode::RenderGraphNode(this);
  *result = &unk_1F5D14A68;
  *(result + 268) = 0;
  *(result + 34) = 0;
  return result;
}

void re::internal::defaultDestruct<re::RenderGraphMPSImageAreaMaxNode>(uint64_t a1, uint64_t a2, id *a3)
{

  re::RenderGraphNode::~RenderGraphNode(a3);
}

re::RenderGraphNode *re::internal::defaultConstructV2<re::RenderGraphMPSImageAreaMaxNode>(re::RenderGraphNode *a1)
{
  result = re::RenderGraphNode::RenderGraphNode(a1);
  *result = &unk_1F5D14A68;
  *(result + 268) = 0;
  *(result + 34) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::RenderGraphMPSImageAreaMaxNode>(id *a1)
{

  re::RenderGraphNode::~RenderGraphNode(a1);
}

void re::RenderGraphMPSImageAreaMaxNode::~RenderGraphMPSImageAreaMaxNode(id *this)
{

  re::RenderGraphNode::~RenderGraphNode(this);
}

{

  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void *re::allocInfo_DummyEnvironmentNode(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_530, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_530))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C08D0, "DummyEnvironmentNode");
    __cxa_guard_release(&_MergedGlobals_530);
  }

  return &unk_1EE1C08D0;
}

void re::initInfo_DummyEnvironmentNode(re *this, re::IntrospectionBase *a2)
{
  v10[0] = 0xE867E250ADF42A1ALL;
  v10[1] = "DummyEnvironmentNode";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1C08C8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C08C8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphNode(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphNode";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1C08C0 = v8;
      __cxa_guard_release(&qword_1EE1C08C8);
    }
  }

  *(this + 2) = 0x10800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1C08C0;
  *(this + 9) = re::internal::defaultConstruct<re::DummyEnvironmentNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::DummyEnvironmentNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::DummyEnvironmentNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::DummyEnvironmentNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v9 = v11;
}

re::RenderGraphNode *re::internal::defaultConstruct<re::DummyEnvironmentNode>(int a1, int a2, re::RenderGraphNode *this)
{
  result = re::RenderGraphNode::RenderGraphNode(this);
  *result = &unk_1F5CB47E0;
  return result;
}

re::RenderGraphNode *re::internal::defaultConstructV2<re::DummyEnvironmentNode>(re::RenderGraphNode *a1)
{
  result = re::RenderGraphNode::RenderGraphNode(a1);
  *result = &unk_1F5CB47E0;
  return result;
}

void *re::LightContextBuilder::addAmbientLights(void *result, unsigned __int16 a2, uint64_t a3)
{
  v63 = *MEMORY[0x1E69E9840];
  v20 = a2;
  if (*(a3 + 16))
  {
    v3 = result;
    v19 = 0;
    v16 = 0;
    v17 = 0;
    v15 = 0;
    v18 = 0;
    re::DynamicArray<re::AmbientLightInfo>::operator=(&v15, a3);
    memset(v25, 0, 24);
    v22 = 0u;
    v23 = 1uLL;
    v24 = 0uLL;
    *(&v25[1] + 1) = 1;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v31 = 1;
    v30 = 0u;
    v29 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v37 = 1;
    v36 = 0u;
    v35 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v43 = 1;
    v42 = 0u;
    v41 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v49 = 1;
    v48 = 0u;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v4 = re::SmallHashTable<unsigned short,re::LightContextBuilder::LightArrays,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true>::add((v3 + 8), &v20, &v22);
    re::BucketArray<re::LightContextBuilder::RectAreaLightBucket,4ul>::deinit(&v48);
    if (v48)
    {
      v5 = v49;
      if ((v49 & 1) == 0)
      {
        (*(*v48 + 40))();
        v5 = v49;
      }

      v48 = 0uLL;
      LODWORD(v49) = (v5 | 1) + 2;
    }

    re::BucketArray<re::LightContextBuilder::PointLightBucket,4ul>::deinit(&v42);
    if (v42)
    {
      v6 = v43;
      if ((v43 & 1) == 0)
      {
        (*(*v42 + 40))();
        v6 = v43;
      }

      v42 = 0uLL;
      LODWORD(v43) = (v6 | 1) + 2;
    }

    re::BucketArray<re::LightContextBuilder::SpotLightBucket,4ul>::deinit(&v36);
    if (v36)
    {
      v7 = v37;
      if ((v37 & 1) == 0)
      {
        (*(*v36 + 40))();
        v7 = v37;
      }

      v36 = 0uLL;
      LODWORD(v37) = (v7 | 1) + 2;
    }

    re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::deinit(&v30);
    if (v30)
    {
      v8 = v31;
      if ((v31 & 1) == 0)
      {
        (*(*v30 + 40))();
        v8 = v31;
      }

      v30 = 0uLL;
      LODWORD(v31) = (v8 | 1) + 2;
    }

    re::BucketArray<re::LightContextBuilder::DirectionalLightBucket,4ul>::deinit(v25 + 8);
    if (*(&v25[0] + 1))
    {
      v9 = DWORD2(v25[1]);
      if ((BYTE8(v25[1]) & 1) == 0)
      {
        (*(**(&v25[0] + 1) + 40))();
        v9 = DWORD2(v25[1]);
      }

      *(&v25[0] + 1) = 0;
      *&v25[1] = 0;
      DWORD2(v25[1]) = (v9 | 1) + 2;
    }

    re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::deinit(&v22);
    result = v22;
    if (v22 && (v23 & 1) == 0)
    {
      result = (*(*v22 + 40))();
    }

    v10 = *(v4 + 5);
    v11 = *(v4 + 1);
    if (v10 + 1 > 4 * v11)
    {
      result = re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::setBucketsCapacity(v4, (v10 + 4) >> 2);
      v11 = *(v4 + 1);
    }

    if (v11 <= v10 >> 2)
    {
      v21 = 0;
      memset(v25, 0, sizeof(v25));
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v55 = 136315906;
      v56 = "operator[]";
      v57 = 1024;
      v58 = 858;
      v59 = 2048;
      v60 = v10 >> 2;
      v61 = 2048;
      v62 = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v12 = *(v4 + 4);
    if (*(v4 + 4))
    {
      v12 = v4 + 24;
    }

    v13 = *&v12[8 * (v10 >> 2)];
    ++*(v4 + 5);
    ++*(v4 + 12);
    v14 = v13 + 40 * (v10 & 3);
    *(v14 + 32) = 0;
    *(v14 + 24) = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *v14 = 0;
    *v14 = v15;
    *(v14 + 8) = v16;
    *(v14 + 16) = v17;
    *(v14 + 32) = v19;
    ++v18;
    ++*(v14 + 24);
    *(v3 + 2968) = 0;
  }

  return result;
}

uint64_t re::LightContextBuilder::addDirectionalLights(uint64_t result, unsigned __int16 a2, uint64_t a3)
{
  v63 = *MEMORY[0x1E69E9840];
  v23 = a2;
  if (*(a3 + 16))
  {
    v3 = result;
    v18 = 0;
    v19 = 0uLL;
    v20 = 0;
    v21 = 0u;
    v22 = 0u;
    v4 = re::DynamicArray<re::AmbientLightInfo>::operator=(&v18, a3);
    v5 = *(&v19 + 1);
    if ((atomic_load_explicit(&qword_1EE1C0968, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0968))
    {
      _MergedGlobals_531 = dyld_program_sdk_at_least();
      __cxa_guard_release(&qword_1EE1C0968);
    }

    v6 = 0;
    if (v5)
    {
      v7 = *(&v19 + 1);
      v8 = (v21 + 134);
      v9 = *(&v19 + 1);
      do
      {
        if (!v9)
        {
          v24 = 0;
          memset(v28, 0, sizeof(v28));
          v26 = 0u;
          v27 = 0u;
          v25 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v55 = 136315906;
          v56 = "operator[]";
          v57 = 1024;
          v58 = 789;
          v59 = 2048;
          v60 = v7;
          v61 = 2048;
          v62 = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        if (*v8 == 1)
        {
          if (_MergedGlobals_531 == 1 && v6 >= 8)
          {
            *v8 = 0;
          }

          else
          {
            ++v6;
          }
        }

        v8 += 160;
        --v9;
        --v5;
      }

      while (v5);
    }

    v25 = 0u;
    v26 = 1uLL;
    v27 = 0uLL;
    *(&v28[1] + 1) = 1;
    memset(v28, 0, 24);
    v31 = 0;
    v32 = 0;
    v29 = 0;
    v30 = 0;
    v33 = 0u;
    v34 = 1uLL;
    v35 = 0uLL;
    v38 = 1;
    v37 = 0u;
    v36 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v46 = 0;
    v43 = 0u;
    v44 = 1uLL;
    v45 = 0uLL;
    v49 = 0;
    v47 = 0u;
    v48 = 1;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v11 = re::SmallHashTable<unsigned short,re::LightContextBuilder::LightArrays,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true>::add(v3 + 64, &v23, &v25);
    re::BucketArray<re::LightContextBuilder::RectAreaLightBucket,4ul>::deinit(&v47);
    if (v47)
    {
      v12 = v48;
      if ((v48 & 1) == 0)
      {
        (*(*v47 + 40))();
        v12 = v48;
      }

      v47 = 0uLL;
      v48 = (v12 | 1) + 2;
    }

    re::BucketArray<re::LightContextBuilder::PointLightBucket,4ul>::deinit(&v43);
    if (v43)
    {
      v13 = v44;
      if ((v44 & 1) == 0)
      {
        (*(*v43 + 40))();
        v13 = v44;
      }

      v43 = 0uLL;
      LODWORD(v44) = (v13 | 1) + 2;
    }

    re::BucketArray<re::LightContextBuilder::SpotLightBucket,4ul>::deinit(&v37);
    if (v37)
    {
      v14 = v38;
      if ((v38 & 1) == 0)
      {
        (*(*v37 + 40))();
        v14 = v38;
      }

      v37 = 0uLL;
      LODWORD(v38) = (v14 | 1) + 2;
    }

    re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::deinit(&v33);
    if (v33)
    {
      v15 = v34;
      if ((v34 & 1) == 0)
      {
        (*(*v33 + 40))();
        v15 = v34;
      }

      v33 = 0uLL;
      LODWORD(v34) = (v15 | 1) + 2;
    }

    re::BucketArray<re::LightContextBuilder::DirectionalLightBucket,4ul>::deinit(v28 + 8);
    if (*(&v28[0] + 1))
    {
      v16 = DWORD2(v28[1]);
      if ((BYTE8(v28[1]) & 1) == 0)
      {
        (*(**(&v28[0] + 1) + 40))();
        v16 = DWORD2(v28[1]);
      }

      *(&v28[0] + 1) = 0;
      *&v28[1] = 0;
      DWORD2(v28[1]) = (v16 | 1) + 2;
    }

    re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::deinit(&v25);
    if (v25)
    {
      if ((v26 & 1) == 0)
      {
        (*(*v25 + 40))();
      }
    }

    v17 = re::BucketArray<re::LightContextBuilder::DirectionalLightBucket,4ul>::addUninitialized(v11 + 56);
    *(v17 + 32) = 0;
    *(v17 + 24) = 0;
    *(v17 + 8) = 0u;
    *v17 = 0;
    *v17 = v18;
    v18 = 0;
    *(v17 + 8) = v19;
    v19 = 0u;
    *(v17 + 32) = v21;
    ++v20;
    ++*(v17 + 24);
    *(v17 + 56) = 0;
    *(v17 + 40) = 0u;
    *(v17 + 40) = *(&v21 + 1);
    v21 = 0u;
    *(v17 + 48) = v22;
    v22 = 0uLL;
    *(v11 + 42) = v6;
    *(v3 + 2968) = 0;
    re::FixedArray<re::FixedArray<unsigned int>>::deinit(&v21 + 1);
    return re::DynamicArray<re::DirectionalLightInfo>::deinit(&v18);
  }

  return result;
}

uint64_t re::LightContextBuilder::addGlobalDirectionalLight(re::LightContextBuilder *this, float a2)
{
  v3 = this;
  v28 = *MEMORY[0x1E69E9840];
  {
    if (this)
    {
      re::Defaults::BOOLValue("enableCalculateIBLShadowProjectionBoundsFromScene", v11, v19);
      if (LOBYTE(v19[0]))
      {
        v12 = BYTE1(v19[0]);
      }

      else
      {
        v12 = 1;
      }

      re::LightContextBuilder::addGlobalDirectionalLight(float)::enableCalculateIBLShadowProjectionBoundsFromScene = v12;
    }
  }

  *(v3 + 3008) = re::LightContextBuilder::addGlobalDirectionalLight(float)::enableCalculateIBLShadowProjectionBoundsFromScene;
  memset(v19, 0, 32);
  re::DynamicString::setCapacity(v19, 0);
  v21 = 1092616192;
  v24 = 0;
  v26 = 1065353216;
  v27 = 0;
  v19[2] = xmmword_1E3047670;
  v19[3] = xmmword_1E3108260;
  v19[4] = xmmword_1E3108270;
  v19[5] = xmmword_1E30474D0;
  v20 = 0x3C23D70A3F800000;
  __asm { FMOV            V0.4S, #1.0 }

  v19[6] = _Q0;
  v22 = a2;
  v23 = 1056964608;
  v25 = 16843009;
  v18 = 0;
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  re::DynamicArray<re::DirectionalLightInfo>::add(v16, v19);
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  memset(v15, 0, sizeof(v15));
  v9 = re::DynamicArray<re::DirectionalLightInfo>::operator=(v13, v16);
  re::DynamicArray<re::AmbientLightInfo>::operator=(v3, v13);
  re::FixedArray<re::FixedArray<re::LightContextBuilder::ShadowTileInfo>>::operator=(v3 + 5, v15 + 1);
  *(v3 + 2968) = 0;
  re::FixedArray<re::FixedArray<unsigned int>>::deinit(v15 + 1);
  re::DynamicArray<re::DirectionalLightInfo>::deinit(v13);
  re::DynamicArray<re::DirectionalLightInfo>::deinit(v16);
  result = *&v19[0];
  if (*&v19[0])
  {
    if (BYTE8(v19[0]))
    {
      return (*(**&v19[0] + 40))();
    }
  }

  return result;
}

__n128 re::DynamicArray<re::DirectionalLightInfo>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::DirectionalLightInfo>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 160 * v4;
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
  v10 = *(a2 + 64);
  v11 = *(a2 + 80);
  v12 = *(a2 + 96);
  *(v5 + 108) = *(a2 + 108);
  *(v5 + 80) = v11;
  *(v5 + 96) = v12;
  *(v5 + 64) = v10;
  v13 = *(a2 + 48);
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 48) = v13;
  *(v5 + 124) = *(a2 + 124);
  LODWORD(v7) = *(a2 + 132);
  *(v5 + 132) = v7;
  if (v7 == 1)
  {
    *(v5 + 133) = *(a2 + 133);
  }

  result = *(a2 + 134);
  *(v5 + 150) = *(a2 + 150);
  *(v5 + 134) = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::DynamicArray<re::DirectionalLightInfo>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::DirectionalLightInfo>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::DirectionalLightInfo>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::DirectionalLightInfo>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::DirectionalLightInfo>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::LightContextBuilder::addRealWorldProxyLights(uint64_t result, unsigned __int16 a2, uint64_t a3)
{
  v71 = *MEMORY[0x1E69E9840];
  v31 = a2;
  if (*(a3 + 16))
  {
    v4 = result;
    v21 = 0;
    v22 = 0;
    v24 = 0;
    v23 = 0;
    v25 = 0u;
    v26 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v5 = re::DynamicArray<re::AmbientLightInfo>::operator=(&v21, a3);
    v6 = v23;
    if (v6)
    {
      v8 = 0;
      while (1)
      {
        v9 = re::TextureAtlas::requestTile(*(v4 + 2960), 1024, 1024, 0.0);
        v10 = v30;
        if (v30 <= v8)
        {
          break;
        }

        *(*(&v30 + 1) + 8 * v8++) = v9;
        if (v6 == v8)
        {
          goto LABEL_6;
        }
      }

      v32 = 0;
      memset(v36, 0, 32);
      v34 = 0u;
      v35 = 0u;
      v33 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v63 = 136315906;
      v64 = "operator[]";
      v65 = 1024;
      v66 = 468;
      v67 = 2048;
      v68 = v8;
      v69 = 2048;
      v70 = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_37:
      v32 = 0;
      memset(v36, 0, 32);
      v34 = 0u;
      v35 = 0u;
      v33 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v63 = 136315906;
      v64 = "operator[]";
      v65 = 1024;
      v66 = 858;
      v67 = 2048;
      v68 = v3;
      v69 = 2048;
      v70 = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

LABEL_6:
    v34 = 1uLL;
    v33 = 0u;
    v35 = 0uLL;
    v36[3] = 1;
    memset(v36, 0, 24);
    memset(&v36[4], 0, 32);
    v38 = 1;
    v37 = 0u;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v44 = 1;
    v43 = 0u;
    v42 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v50 = 1;
    v49 = 0u;
    v48 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v57 = 0;
    v55 = 0u;
    v56 = 1;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v11 = re::SmallHashTable<unsigned short,re::LightContextBuilder::LightArrays,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true>::add(v4 + 64, &v31, &v33);
    re::BucketArray<re::LightContextBuilder::RectAreaLightBucket,4ul>::deinit(&v55);
    if (v55)
    {
      v12 = v56;
      if ((v56 & 1) == 0)
      {
        (*(*v55 + 40))();
        v12 = v56;
      }

      v55 = 0uLL;
      v56 = (v12 | 1) + 2;
    }

    re::BucketArray<re::LightContextBuilder::PointLightBucket,4ul>::deinit(&v49);
    if (v49)
    {
      v13 = v50;
      if ((v50 & 1) == 0)
      {
        (*(*v49 + 40))();
        v13 = v50;
      }

      v49 = 0uLL;
      LODWORD(v50) = (v13 | 1) + 2;
    }

    re::BucketArray<re::LightContextBuilder::SpotLightBucket,4ul>::deinit(&v43);
    if (v43)
    {
      v14 = v44;
      if ((v44 & 1) == 0)
      {
        (*(*v43 + 40))();
        v14 = v44;
      }

      v43 = 0uLL;
      LODWORD(v44) = (v14 | 1) + 2;
    }

    re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::deinit(&v37);
    if (v37)
    {
      v15 = v38;
      if ((v38 & 1) == 0)
      {
        (*(*v37 + 40))();
        v15 = v38;
      }

      v37 = 0uLL;
      LODWORD(v38) = (v15 | 1) + 2;
    }

    re::BucketArray<re::LightContextBuilder::DirectionalLightBucket,4ul>::deinit(&v36[1]);
    if (v36[1])
    {
      v16 = v36[3];
      if ((v36[3] & 1) == 0)
      {
        (*(*v36[1] + 40))();
        v16 = v36[3];
      }

      v36[1] = 0;
      v36[2] = 0;
      LODWORD(v36[3]) = (v16 | 1) + 2;
    }

    re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::deinit(&v33);
    if (v33 && (v34 & 1) == 0)
    {
      (*(*v33 + 40))();
    }

    v17 = *(v11 + 19);
    v10 = *(v11 + 15);
    if (v17 + 1 > 4 * v10)
    {
      re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::setBucketsCapacity(v11 + 14, (v17 + 4) >> 2);
      v10 = *(v11 + 15);
    }

    v3 = v17 >> 2;
    if (v10 <= v17 >> 2)
    {
      goto LABEL_37;
    }

    v18 = *(v11 + 18);
    if (*(v11 + 32))
    {
      v18 = v11 + 136;
    }

    v19 = *&v18[8 * v3];
    ++*(v11 + 19);
    ++*(v11 + 40);
    v20 = v19 + 120 * (v17 & 3);
    *(v20 + 32) = 0;
    *(v20 + 24) = 0;
    *(v20 + 8) = 0;
    *(v20 + 16) = 0;
    *v20 = 0;
    *v20 = v21;
    v21 = 0;
    *(v20 + 8) = v22;
    v22 = 0;
    *(v20 + 16) = v23;
    v23 = 0;
    *(v20 + 32) = v25;
    *&v25 = 0;
    ++v24;
    ++*(v20 + 24);
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    *(v20 + 40) = 0;
    *(v20 + 40) = *(&v25 + 1);
    *(&v25 + 1) = 0;
    *(v20 + 48) = v26;
    *&v26 = 0;
    *(v20 + 56) = *(&v26 + 1);
    *(&v26 + 1) = 0;
    *(v20 + 64) = v27;
    *(v20 + 72) = 0;
    *(v20 + 80) = 0;
    *(v20 + 88) = 0;
    *(v20 + 72) = v28;
    *&v28 = 0;
    *(v20 + 80) = *(&v28 + 1);
    *(&v28 + 1) = 0;
    *(v20 + 88) = v29;
    *&v29 = 0;
    *(v20 + 96) = 0;
    *(v20 + 104) = 0;
    *(v20 + 112) = 0;
    *(v20 + 96) = *(&v29 + 1);
    *(&v29 + 1) = 0;
    *(v20 + 104) = v30;
    *&v30 = 0;
    *(v20 + 112) = *(&v30 + 1);
    *(&v30 + 1) = 0;
    *(v11 + 42) += v6;
    *(v4 + 2968) = 0;
    return re::DynamicArray<re::RectAreaLightInfo>::deinit(&v21);
  }

  return result;
}

uint64_t re::LightContextBuilder::addSpotLights(uint64_t result, unsigned int a2, uint64_t a3)
{
  v82 = *MEMORY[0x1E69E9840];
  v42 = a2;
  if (!*(a3 + 16))
  {
    return result;
  }

  v5 = result;
  v32 = 0;
  v33 = 0;
  v35 = 0;
  v34 = 0;
  v36 = 0u;
  v37 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v6 = re::DynamicArray<re::AmbientLightInfo>::operator=(&v32, a3);
  v7 = v34;
  if (*(v5 + 2940))
  {
    v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * a2) ^ ((0xBF58476D1CE4E5B9 * a2) >> 27));
    re::HashTable<unsigned short,re::LightContextBuilder::LightArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,true>::findEntry<unsigned short>(&v44, v5 + 2912, v10 ^ (v10 >> 31));
    if (HIDWORD(v44) != 0x7FFFFFFF)
    {
      v11 = *(v5 + 2928) + 352 * HIDWORD(v44) + 8;
LABEL_5:
      v12 = *(v11 + 336);
      goto LABEL_11;
    }
  }

  else
  {
    v13 = *(v5 + 80);
    if (v13)
    {
      v14 = 352 * v13;
      v11 = v5 + 104;
      while (*(v11 - 8) != a2)
      {
        v11 += 352;
        v14 -= 352;
        if (!v14)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_5;
    }
  }

LABEL_10:
  v12 = 0;
LABEL_11:
  if ((atomic_load_explicit(&qword_1EE1C0970, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0970))
  {
    byte_1EE1C0961 = dyld_program_sdk_at_least();
    __cxa_guard_release(&qword_1EE1C0970);
  }

  if (v7)
  {
    v15 = 0;
    v16 = 0;
    while (1)
    {
      v17 = v34;
      if (v34 <= v16)
      {
        v43 = 0;
        memset(v47, 0, 32);
        v45 = 0u;
        v46 = 0u;
        v44 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v74 = 136315906;
        v75 = "operator[]";
        v76 = 1024;
        v77 = 789;
        v78 = 2048;
        v79 = v16;
        v80 = 2048;
        v81 = v17;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_58:
        v43 = 0;
        memset(v47, 0, 32);
        v45 = 0u;
        v46 = 0u;
        v44 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v74 = 136315906;
        v75 = "operator[]";
        v76 = 1024;
        v77 = 468;
        v78 = 2048;
        v79 = v16;
        v80 = 2048;
        v81 = v17;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_59:
        v43 = 0;
        memset(v47, 0, 32);
        v45 = 0u;
        v46 = 0u;
        v44 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v74 = 136315906;
        v75 = "operator[]";
        v76 = 1024;
        v77 = 468;
        v78 = 2048;
        v79 = v16;
        v80 = 2048;
        v81 = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_60:
        v43 = 0;
        memset(v47, 0, 32);
        v45 = 0u;
        v46 = 0u;
        v44 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v74 = 136315906;
        v75 = "operator[]";
        v76 = 1024;
        v77 = 858;
        v78 = 2048;
        v79 = v15;
        v80 = 2048;
        v81 = v16;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v18 = v36 + v15;
      if (*(v36 + v15 + 224) != 1)
      {
        goto LABEL_22;
      }

      if (byte_1EE1C0961 != 1 || v12 < 8)
      {
        break;
      }

      *(v18 + 224) = 0;
LABEL_26:
      ++v16;
      v15 += 240;
      if (v7 == v16)
      {
        goto LABEL_27;
      }
    }

    v20 = re::TextureAtlas::requestTile(*(v5 + 2960), 512, 512, 1.0);
    v3 = v41;
    if (v41 <= v16)
    {
      goto LABEL_59;
    }

    *(*(&v41 + 1) + 8 * v16) = v20;
    ++v12;
LABEL_22:
    if (*(v18 + 223) == 1)
    {
      v21 = re::TextureAtlas::requestTile((*(v5 + 2960) + 96), 512, 512, 1.0);
      v17 = *(&v39 + 1);
      if (*(&v39 + 1) <= v16)
      {
        goto LABEL_58;
      }

      *(v40 + 8 * v16) = v21;
    }

    goto LABEL_26;
  }

LABEL_27:
  v45 = 1uLL;
  v44 = 0u;
  v46 = 0uLL;
  v47[3] = 1;
  memset(v47, 0, 24);
  memset(&v47[4], 0, 32);
  v49 = 1;
  v48 = 0u;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v55 = 1;
  v54 = 0u;
  v53 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v61 = 1;
  v60 = 0u;
  v59 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v68 = 0;
  v66 = 0u;
  v67 = 1;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v22 = re::SmallHashTable<unsigned short,re::LightContextBuilder::LightArrays,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true>::add(v5 + 64, &v42, &v44);
  re::BucketArray<re::LightContextBuilder::RectAreaLightBucket,4ul>::deinit(&v66);
  if (v66)
  {
    v23 = v67;
    if ((v67 & 1) == 0)
    {
      (*(*v66 + 40))();
      v23 = v67;
    }

    v66 = 0uLL;
    v67 = (v23 | 1) + 2;
  }

  re::BucketArray<re::LightContextBuilder::PointLightBucket,4ul>::deinit(&v60);
  if (v60)
  {
    v24 = v61;
    if ((v61 & 1) == 0)
    {
      (*(*v60 + 40))();
      v24 = v61;
    }

    v60 = 0uLL;
    LODWORD(v61) = (v24 | 1) + 2;
  }

  re::BucketArray<re::LightContextBuilder::SpotLightBucket,4ul>::deinit(&v54);
  if (v54)
  {
    v25 = v55;
    if ((v55 & 1) == 0)
    {
      (*(*v54 + 40))();
      v25 = v55;
    }

    v54 = 0uLL;
    LODWORD(v55) = (v25 | 1) + 2;
  }

  re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::deinit(&v48);
  if (v48)
  {
    v26 = v49;
    if ((v49 & 1) == 0)
    {
      (*(*v48 + 40))();
      v26 = v49;
    }

    v48 = 0uLL;
    LODWORD(v49) = (v26 | 1) + 2;
  }

  re::BucketArray<re::LightContextBuilder::DirectionalLightBucket,4ul>::deinit(&v47[1]);
  if (v47[1])
  {
    v27 = v47[3];
    if ((v47[3] & 1) == 0)
    {
      (*(*v47[1] + 40))();
      v27 = v47[3];
    }

    v47[1] = 0;
    v47[2] = 0;
    LODWORD(v47[3]) = (v27 | 1) + 2;
  }

  re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::deinit(&v44);
  if (v44 && (v45 & 1) == 0)
  {
    (*(*v44 + 40))();
  }

  v28 = *(v22 + 26);
  v16 = *(v22 + 22);
  if (v28 + 1 > 4 * v16)
  {
    re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::setBucketsCapacity(v22 + 21, (v28 + 4) >> 2);
    v16 = *(v22 + 22);
  }

  v15 = v28 >> 2;
  if (v16 <= v28 >> 2)
  {
    goto LABEL_60;
  }

  v29 = *(v22 + 25);
  if (*(v22 + 46))
  {
    v29 = v22 + 192;
  }

  v30 = *&v29[8 * v15];
  ++*(v22 + 26);
  ++*(v22 + 54);
  v31 = v30 + 120 * (v28 & 3);
  *(v31 + 32) = 0;
  *(v31 + 24) = 0;
  *(v31 + 8) = 0;
  *(v31 + 16) = 0;
  *v31 = 0;
  *v31 = v32;
  v32 = 0;
  *(v31 + 8) = v33;
  v33 = 0;
  *(v31 + 16) = v34;
  v34 = 0;
  *(v31 + 32) = v36;
  *&v36 = 0;
  ++v35;
  ++*(v31 + 24);
  *(v31 + 48) = 0;
  *(v31 + 56) = 0;
  *(v31 + 40) = 0;
  *(v31 + 40) = *(&v36 + 1);
  *(&v36 + 1) = 0;
  *(v31 + 48) = v37;
  *&v37 = 0;
  *(v31 + 56) = *(&v37 + 1);
  *(&v37 + 1) = 0;
  *(v31 + 64) = v38;
  *(v31 + 72) = 0;
  *(v31 + 80) = 0;
  *(v31 + 88) = 0;
  *(v31 + 72) = v39;
  *&v39 = 0;
  *(v31 + 80) = *(&v39 + 1);
  *(&v39 + 1) = 0;
  *(v31 + 88) = v40;
  *&v40 = 0;
  *(v31 + 96) = 0;
  *(v31 + 104) = 0;
  *(v31 + 112) = 0;
  *(v31 + 96) = *(&v40 + 1);
  *(&v40 + 1) = 0;
  *(v31 + 104) = v41;
  *&v41 = 0;
  *(v31 + 112) = *(&v41 + 1);
  *(&v41 + 1) = 0;
  *(v22 + 42) = v12;
  *(v5 + 2968) = 0;
  return re::DynamicArray<re::SpotLightInfo>::deinit(&v32);
}

uint64_t re::LightContextBuilder::addPointLights(uint64_t result, unsigned __int16 a2, uint64_t a3)
{
  v83 = *MEMORY[0x1E69E9840];
  v43 = a2;
  if (*(a3 + 16))
  {
    v3 = result;
    v33 = 0;
    v34 = 0;
    v36 = 0;
    v35 = 0;
    v37 = 0u;
    v38 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v4 = re::DynamicArray<re::AmbientLightInfo>::operator=(&v33, a3);
    v5 = v35;
    *&v42 = v5;
    if (v5)
    {
      if (v5 >= 0x555555555555556)
      {
LABEL_62:
        re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 48, v5);
        _os_crash();
        __break(1u);
        goto LABEL_63;
      }

      *(&v42 + 1) = v8;
      if (!v8)
      {
LABEL_63:
        re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
        _os_crash();
        __break(1u);
        goto LABEL_64;
      }

      v10 = v5 - 1;
      if (v5 != 1)
      {
        v11 = 0;
        do
        {
          v12 = 0;
          *(v8 + 1) = 0uLL;
          *(v8 + 2) = 0uLL;
          *v8 = 0uLL;
          do
          {
            *(v8 + v12) = 0xFFFFFFFFLL;
            v12 += 8;
          }

          while (v12 != 48);
          v8 = (v8 + 48);
          ++v11;
        }

        while (v11 != v10);
      }

      v13 = 0;
      *(v8 + 1) = 0u;
      *(v8 + 2) = 0u;
      *v8 = 0u;
      do
      {
        *(v8 + v13) = 0xFFFFFFFFLL;
        v13 += 8;
      }

      while (v13 != 48);
      *(&v40 + 1) = v5;
      *&v41 = v14;
      if (!v14)
      {
LABEL_64:
        re::internal::assertLog(4, v15, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
        _os_crash();
        __break(1u);
      }

      if (v5 != 1)
      {
        do
        {
          *v14 = 0xFFFFFFFFLL;
          v14 = (v14 + 8);
          --v10;
        }

        while (v10);
      }

      *v14 = 0xFFFFFFFFLL;
    }

    else
    {
    }

    if (v5)
    {
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v18 = v35;
        if (v35 <= v17)
        {
          break;
        }

        v19 = v37 + 224 * v17;
        if (*(v19 + 215) == 1)
        {
          v18 = v42;
          if (v42 <= v17)
          {
            goto LABEL_59;
          }

          v20 = 0;
          v21 = *(v3 + 2960);
          v22 = *(&v42 + 1) + v16;
          do
          {
            *(v22 + v20) = re::TextureAtlas::requestTile(v21, 256, 256, 2.0);
            v20 += 8;
          }

          while (v20 != 48);
        }

        if (*(v19 + 214) == 1)
        {
          v18 = *(&v40 + 1);
          if (*(&v40 + 1) <= v17)
          {
            goto LABEL_60;
          }

          v23 = v41;
          *(v23 + 8 * v17) = re::TextureAtlas::requestTile((*(v3 + 2960) + 96), 512, 256, 2.0);
        }

        ++v17;
        v16 += 48;
        if (v17 == v5)
        {
          goto LABEL_28;
        }
      }

      v44 = 0;
      memset(v48, 0, 32);
      v46 = 0u;
      v47 = 0u;
      v45 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v75 = 136315906;
      v76 = "operator[]";
      v77 = 1024;
      v78 = 789;
      v79 = 2048;
      v80 = v17;
      v81 = 2048;
      v82 = v18;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_59:
      v44 = 0;
      memset(v48, 0, 32);
      v46 = 0u;
      v47 = 0u;
      v45 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v75 = 136315906;
      v76 = "operator[]";
      v77 = 1024;
      v78 = 468;
      v79 = 2048;
      v80 = v17;
      v81 = 2048;
      v82 = v18;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_60:
      v44 = 0;
      memset(v48, 0, 32);
      v46 = 0u;
      v47 = 0u;
      v45 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v75 = 136315906;
      v76 = "operator[]";
      v77 = 1024;
      v78 = 468;
      v79 = 2048;
      v80 = v17;
      v81 = 2048;
      v82 = v18;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_61;
    }

LABEL_28:
    v46 = 1uLL;
    v45 = 0u;
    v47 = 0uLL;
    v48[3] = 1;
    memset(v48, 0, 24);
    memset(&v48[4], 0, 32);
    v50 = 1;
    v49 = 0u;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v56 = 1;
    v55 = 0u;
    v54 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v62 = 1;
    v61 = 0u;
    v60 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v69 = 0;
    v67 = 0u;
    v68 = 1;
    v70 = 0;
    v71 = 0;
    v73 = 0;
    v72 = 0;
    v74 = 0;
    v5 = re::SmallHashTable<unsigned short,re::LightContextBuilder::LightArrays,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true>::add(v3 + 64, &v43, &v45);
    re::BucketArray<re::LightContextBuilder::RectAreaLightBucket,4ul>::deinit(&v67);
    if (v67)
    {
      v24 = v68;
      if ((v68 & 1) == 0)
      {
        (*(*v67 + 40))();
        v24 = v68;
      }

      v67 = 0uLL;
      v68 = (v24 | 1) + 2;
    }

    re::BucketArray<re::LightContextBuilder::PointLightBucket,4ul>::deinit(&v61);
    if (v61)
    {
      v25 = v62;
      if ((v62 & 1) == 0)
      {
        (*(*v61 + 40))();
        v25 = v62;
      }

      v61 = 0uLL;
      LODWORD(v62) = (v25 | 1) + 2;
    }

    re::BucketArray<re::LightContextBuilder::SpotLightBucket,4ul>::deinit(&v55);
    if (v55)
    {
      v26 = v56;
      if ((v56 & 1) == 0)
      {
        (*(*v55 + 40))();
        v26 = v56;
      }

      v55 = 0uLL;
      LODWORD(v56) = (v26 | 1) + 2;
    }

    re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::deinit(&v49);
    if (v49)
    {
      v27 = v50;
      if ((v50 & 1) == 0)
      {
        (*(*v49 + 40))();
        v27 = v50;
      }

      v49 = 0uLL;
      LODWORD(v50) = (v27 | 1) + 2;
    }

    re::BucketArray<re::LightContextBuilder::DirectionalLightBucket,4ul>::deinit(&v48[1]);
    if (v48[1])
    {
      v28 = v48[3];
      if ((v48[3] & 1) == 0)
      {
        (*(*v48[1] + 40))();
        v28 = v48[3];
      }

      v48[1] = 0;
      v48[2] = 0;
      LODWORD(v48[3]) = (v28 | 1) + 2;
    }

    re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::deinit(&v45);
    if (v45 && (v46 & 1) == 0)
    {
      (*(*v45 + 40))();
    }

    v29 = *(v5 + 264);
    v18 = *(v5 + 232);
    if (v29 + 1 > 4 * v18)
    {
      re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::setBucketsCapacity((v5 + 224), (v29 + 4) >> 2);
      v18 = *(v5 + 232);
    }

    v17 = v29 >> 2;
    if (v18 <= v29 >> 2)
    {
LABEL_61:
      v44 = 0;
      memset(v48, 0, 32);
      v46 = 0u;
      v47 = 0u;
      v45 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v75 = 136315906;
      v76 = "operator[]";
      v77 = 1024;
      v78 = 858;
      v79 = 2048;
      v80 = v17;
      v81 = 2048;
      v82 = v18;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_62;
    }

    v30 = *(v5 + 256);
    if (*(v5 + 240))
    {
      v30 = v5 + 248;
    }

    v31 = *(v30 + 8 * v17);
    ++*(v5 + 264);
    ++*(v5 + 272);
    v32 = v31 + 120 * (v29 & 3);
    *(v32 + 32) = 0;
    *(v32 + 24) = 0;
    *(v32 + 8) = 0;
    *(v32 + 16) = 0;
    *v32 = 0;
    *v32 = v33;
    v33 = 0;
    *(v32 + 8) = v34;
    v34 = 0;
    *(v32 + 16) = v35;
    v35 = 0;
    *(v32 + 32) = v37;
    *&v37 = 0;
    ++v36;
    ++*(v32 + 24);
    *(v32 + 48) = 0;
    *(v32 + 56) = 0;
    *(v32 + 40) = 0;
    *(v32 + 40) = *(&v37 + 1);
    *(&v37 + 1) = 0;
    *(v32 + 48) = v38;
    *&v38 = 0;
    *(v32 + 56) = *(&v38 + 1);
    *(&v38 + 1) = 0;
    *(v32 + 64) = v39;
    *(v32 + 72) = 0;
    *(v32 + 80) = 0;
    *(v32 + 88) = 0;
    *(v32 + 72) = v40;
    *&v40 = 0;
    *(v32 + 80) = *(&v40 + 1);
    *(&v40 + 1) = 0;
    *(v32 + 88) = v41;
    *&v41 = 0;
    *(v32 + 96) = 0;
    *(v32 + 104) = 0;
    *(v32 + 112) = 0;
    *(v32 + 96) = *(&v41 + 1);
    *(&v41 + 1) = 0;
    *(v32 + 104) = v42;
    *&v42 = 0;
    *(v32 + 112) = *(&v42 + 1);
    *(&v42 + 1) = 0;
    *(v3 + 2968) = 0;
    return re::DynamicArray<re::DynamicLightShadowInfo>::deinit(&v33);
  }

  return result;
}

uint64_t re::LightContextBuilder::addRectAreaLights(uint64_t result, unsigned __int16 a2, uint64_t a3)
{
  v63 = *MEMORY[0x1E69E9840];
  v20 = a2;
  if (*(a3 + 16))
  {
    v3 = result;
    v19 = 0;
    v16 = 0;
    v17 = 0;
    v15 = 0;
    v18 = 0;
    re::DynamicArray<re::AmbientLightInfo>::operator=(&v15, a3);
    memset(v25, 0, 24);
    v22 = 0u;
    v23 = 1uLL;
    v24 = 0uLL;
    *(&v25[1] + 1) = 1;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v31 = 1;
    v30 = 0u;
    v29 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v37 = 1;
    v36 = 0u;
    v35 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v43 = 1;
    v42 = 0u;
    v41 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v49 = 1;
    v48 = 0u;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v4 = re::SmallHashTable<unsigned short,re::LightContextBuilder::LightArrays,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true>::add(v3 + 64, &v20, &v22);
    re::BucketArray<re::LightContextBuilder::RectAreaLightBucket,4ul>::deinit(&v48);
    if (v48)
    {
      v5 = v49;
      if ((v49 & 1) == 0)
      {
        (*(*v48 + 40))();
        v5 = v49;
      }

      v48 = 0uLL;
      LODWORD(v49) = (v5 | 1) + 2;
    }

    re::BucketArray<re::LightContextBuilder::PointLightBucket,4ul>::deinit(&v42);
    if (v42)
    {
      v6 = v43;
      if ((v43 & 1) == 0)
      {
        (*(*v42 + 40))();
        v6 = v43;
      }

      v42 = 0uLL;
      LODWORD(v43) = (v6 | 1) + 2;
    }

    re::BucketArray<re::LightContextBuilder::SpotLightBucket,4ul>::deinit(&v36);
    if (v36)
    {
      v7 = v37;
      if ((v37 & 1) == 0)
      {
        (*(*v36 + 40))();
        v7 = v37;
      }

      v36 = 0uLL;
      LODWORD(v37) = (v7 | 1) + 2;
    }

    re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::deinit(&v30);
    if (v30)
    {
      v8 = v31;
      if ((v31 & 1) == 0)
      {
        (*(*v30 + 40))();
        v8 = v31;
      }

      v30 = 0uLL;
      LODWORD(v31) = (v8 | 1) + 2;
    }

    re::BucketArray<re::LightContextBuilder::DirectionalLightBucket,4ul>::deinit(v25 + 8);
    if (*(&v25[0] + 1))
    {
      v9 = DWORD2(v25[1]);
      if ((BYTE8(v25[1]) & 1) == 0)
      {
        (*(**(&v25[0] + 1) + 40))();
        v9 = DWORD2(v25[1]);
      }

      *(&v25[0] + 1) = 0;
      *&v25[1] = 0;
      DWORD2(v25[1]) = (v9 | 1) + 2;
    }

    re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::deinit(&v22);
    if (v22 && (v23 & 1) == 0)
    {
      (*(*v22 + 40))();
    }

    v10 = *(v4 + 40);
    v11 = *(v4 + 36);
    if (v10 + 1 > 4 * v11)
    {
      re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::setBucketsCapacity(v4 + 35, (v10 + 4) >> 2);
      v11 = *(v4 + 36);
    }

    if (v11 <= v10 >> 2)
    {
      v21 = 0;
      memset(v25, 0, sizeof(v25));
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v55 = 136315906;
      v56 = "operator[]";
      v57 = 1024;
      v58 = 858;
      v59 = 2048;
      v60 = v10 >> 2;
      v61 = 2048;
      v62 = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v12 = *(v4 + 39);
    if (*(v4 + 74))
    {
      v12 = v4 + 304;
    }

    v13 = *&v12[8 * (v10 >> 2)];
    ++*(v4 + 40);
    ++*(v4 + 82);
    v14 = v13 + 40 * (v10 & 3);
    *(v14 + 32) = 0;
    *(v14 + 24) = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *v14 = 0;
    *v14 = v15;
    v15 = 0;
    *(v14 + 8) = v16;
    v16 = 0;
    *(v14 + 16) = v17;
    v17 = 0;
    *(v14 + 32) = v19;
    v19 = 0;
    ++v18;
    ++*(v14 + 24);
    *(v3 + 2968) = 0;
    return re::DynamicArray<re::RectAreaLightInfo>::deinit(&v15);
  }

  return result;
}

void re::LightContextBuilder::calculateDirectionalLightBoundsForViewFrustum(uint64_t a1, re::Projection *this, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, int a6, int a7, int a8)
{
  *(this + 28) = 0;
  if ((atomic_load_explicit(&qword_1EE1C0978, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0978))
  {
    re::Defaults::BOOLValue("minimalBoundingSphereForShadowFrustum", v97, v103);
    if (v103[0].i8[0])
    {
      v98 = v103[0].i8[1];
    }

    else
    {
      v98 = 0;
    }

    byte_1EE1C0962 = v98;
    __cxa_guard_release(&qword_1EE1C0978);
  }

  if (byte_1EE1C0962 != 1 || (a6 & 1) != 0 || (a8 & 1) != 0)
  {
    re::Projection::cullingProjectionMatrix(this, v103);
    if (*(this + 12) == 1)
    {
      v27 = 1.0;
    }

    else
    {
      v27 = 0.0;
    }

    v102 = LODWORD(v27);
    v28.i64[0] = re::Projection::unprojectPoint(v103, __SPAIR64__(1.0, -1.0), SLODWORD(v27));
    v28.i64[1] = v29;
    v101 = v28;
    __asm { FMOV            V0.4S, #1.0 }

    v35.i64[0] = re::Projection::unprojectPoint(v103, _Q0, v102);
    v35.i64[1] = v36;
    v100 = v35;
    __asm { FMOV            V0.4S, #-1.0 }

    v38.i64[0] = re::Projection::unprojectPoint(v103, _Q0, v102);
    v38.i64[1] = v39;
    v99 = v38;
    v41.i64[0] = re::Projection::unprojectPoint(v103, __SPAIR64__(-1.0, 1.0), v102);
    v41.i64[1] = v40;
    v42 = vmulq_f32(v101, xmmword_1E306DD20);
    v43 = *(this + 2) + 0.0;
    v44 = vmulq_n_f32(v101, v43 / (v42.f32[2] + vaddv_f32(*v42.f32)));
    v45 = vmulq_f32(v100, xmmword_1E306DD20);
    v46 = vmulq_n_f32(v100, v43 / (v45.f32[2] + vaddv_f32(*v45.f32)));
    v47 = vmulq_f32(v99, xmmword_1E306DD20);
    v48 = vmulq_n_f32(v99, v43 / (v47.f32[2] + vaddv_f32(*v47.f32)));
    v49 = vmulq_f32(v41, xmmword_1E306DD20);
    v50 = vmulq_n_f32(v41, v43 / (v49.f32[2] + vaddv_f32(*v49.f32)));
    v51.i64[0] = 0x3F0000003F000000;
    v51.i64[1] = 0x3F0000003F000000;
    v25 = vmulq_f32(vaddq_f32(vmulq_f32(vaddq_f32(v100, v99), v51), vmulq_f32(vaddq_f32(v46, v48), v51)), v51);
    if (a6)
    {
      if (a7)
      {
        v52 = vabdq_f32(v46, v25);
        v26 = fmaxf(fmaxf(v52.f32[0], v52.f32[2]), v52.f32[1]);
      }

      else
      {
        v64 = vsubq_f32(v50, v101);
        v65 = vmulq_f32(v64, v64);
        v66 = vsubq_f32(v48, v100);
        v67 = vmulq_f32(v66, v66);
        v68 = vadd_f32(vzip1_s32(*&vextq_s8(v65, v65, 8uLL), *&vextq_s8(v67, v67, 8uLL)), vadd_f32(vzip1_s32(*v65.i8, *v67.i8), vzip2_s32(*v65.i8, *v67.i8)));
        v69 = vsubq_f32(v46, v99);
        v70 = vmulq_f32(v69, v69);
        v71 = vaddv_f32(*v70.f32);
        v72 = vsubq_f32(v44, v41);
        v73 = vmulq_f32(v72, v72);
        v74 = v73.f32[2] + vaddv_f32(*v73.f32);
        v75 = v68.f32[1];
        if (v68.f32[0] >= v68.f32[1])
        {
          v75 = v68.f32[0];
        }

        if ((v70.f32[2] + v71) >= v75)
        {
          v75 = v70.f32[2] + v71;
        }

        if (v74 < v75)
        {
          v74 = v75;
        }

        v26 = sqrtf(v74) * 0.5;
      }
    }

    else
    {
      if (a8)
      {
        v53 = vsubq_f32(v50, v101);
        v54 = vmulq_f32(v53, v53);
        v55 = vsubq_f32(v48, v100);
        v56 = vmulq_f32(v55, v55);
        v57 = vadd_f32(vzip1_s32(*&vextq_s8(v54, v54, 8uLL), *&vextq_s8(v56, v56, 8uLL)), vadd_f32(vzip1_s32(*v54.i8, *v56.i8), vzip2_s32(*v54.i8, *v56.i8)));
        v58 = vsubq_f32(v46, v99);
        v59 = vmulq_f32(v58, v58);
        v60 = vaddv_f32(*v59.f32);
        v61 = vsubq_f32(v44, v41);
        v62 = vmulq_f32(v61, v61);
        *v62.i32 = *&v62.i32[2] + vaddv_f32(*v62.i8);
        v63 = v57.f32[1];
        if (v57.f32[0] >= v57.f32[1])
        {
          v63 = v57.f32[0];
        }

        if ((v59.f32[2] + v60) >= v63)
        {
          v63 = v59.f32[2] + v60;
        }

        if (*v62.i32 < v63)
        {
          *v62.i32 = v63;
        }
      }

      else
      {
        v76 = vsubq_f32(v50, v25);
        v77 = vmulq_f32(v76, v76);
        v78 = v77.f32[2] + vaddv_f32(*v77.f32);
        v79 = vsubq_f32(v48, v25);
        v80 = vmulq_f32(v79, v79);
        v81 = v80.f32[2] + vaddv_f32(*v80.f32);
        v82 = vsubq_f32(v46, v25);
        v83 = vmulq_f32(v82, v82);
        v84 = vsubq_f32(v44, v25);
        v62 = vmulq_f32(v84, v84);
        *v62.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v83, v83, 8uLL), *&vextq_s8(v62, v62, 8uLL)), vadd_f32(vzip1_s32(*v83.i8, *v62.i8), vzip2_s32(*v83.i8, *v62.i8)));
        if (*v62.i32 < *&v62.i32[1])
        {
          v62.i32[0] = v62.i32[1];
        }

        if (v81 >= *v62.i32)
        {
          *v62.i32 = v81;
        }

        if (v78 >= *v62.i32)
        {
          *v62.i32 = v78;
        }
      }

      v26 = sqrtf(*v62.i32);
    }
  }

  else
  {
    v16 = *(this + 4) - *(this + 3);
    v17 = *(this + 5) - *(this + 6);
    v18 = *(this + 1);
    v19 = *(this + 2);
    v20 = v18 + v19;
    v21 = sqrtf(((v17 * v17) / (v16 * v16)) + 1.0);
    v22 = atan2f(v16 * 0.5, v18);
    v23 = v21 * tanf((v22 + v22) * 0.5);
    v24 = v23 * v23;
    v25.i64[0] = 0;
    v25.i32[3] = 0;
    if ((v23 * v23) >= ((v19 - v18) / (v18 + v19)))
    {
      v25.f32[2] = -v19;
      v26 = v19 * v23;
    }

    else
    {
      v25.f32[2] = (v20 * -0.5) * (v24 + 1.0);
      v26 = sqrtf((((((v18 * v18) + (v19 * v19)) + ((v18 * v18) + (v19 * v19))) * v24) + ((v19 - v18) * (v19 - v18))) + (((v20 * v20) * v24) * v24)) * 0.5;
    }
  }

  v85 = vaddq_f32(a3[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a3, v25.f32[0]), a3[1], *v25.f32, 1), a3[2], v25, 2));
  v86 = vmulq_f32(*a4, *a4);
  if (fabsf(v86.f32[2] + vaddv_f32(*v86.f32)) >= 1.0e-10)
  {
    v88 = 0;
    v89 = a5[2];
    v90 = vmulq_f32(v89, v89);
    *&v91 = v90.f32[2] + vaddv_f32(*v90.f32);
    *v90.f32 = vrsqrte_f32(v91);
    v87 = vmul_f32(*v90.f32, vrsqrts_f32(v91, vmul_f32(*v90.f32, *v90.f32)));
    LODWORD(v92) = vmul_f32(v87, vrsqrts_f32(v91, vmul_f32(v87, v87))).u32[0];
    v93 = -INFINITY;
    v87.i32[0] = 2139095040;
    v94 = vmulq_n_f32(vnegq_f32(v89), v92);
    do
    {
      v95 = vmulq_f32(vsubq_f32(a4[v88], v85), v94);
      v96 = vaddv_f32(*v95.f32);
      if (v87.f32[0] > (v95.f32[2] + v96))
      {
        v87.f32[0] = v95.f32[2] + v96;
      }

      if (v93 < (v95.f32[2] + v96))
      {
        v93 = v95.f32[2] + v96;
      }

      v88 += 2;
    }

    while (v88 != 16);
    v87.f32[1] = v93;
  }

  else
  {
    v87 = 0x412000003C23D70ALL;
  }

  *a1 = v85;
  *(a1 + 16) = v26;
  *(a1 + 20) = v87;
}

__n128 re::LightContextBuilder::computeProjectionForGlobalDirectionalLight(_OWORD *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4)
{
  v4 = *a2;
  v5 = vmulq_f32(v4, v4);
  v6 = fabsf(v5.f32[2] + vaddv_f32(*v5.f32));
  v7 = a3[1].f32[0];
  if (v6 >= 1.0e-10)
  {
    v11 = 0;
    v12 = *a3;
    v13 = 1;
LABEL_4:
    v14 = vsubq_f32(a2[2 * v11], v12);
    v15 = vmulq_f32(v14, v14);
    if (sqrtf(v15.f32[2] + vaddv_f32(*v15.f32)) > v7)
    {
LABEL_9:
      v19 = &a2[2 * v11++ + 2];
      while (1)
      {
        v19[-1].i8[0] = 1;
        if (v11 == 8)
        {
          break;
        }

        v20 = *v19;
        v19 += 2;
        v12 = *a3;
        v21 = vsubq_f32(v20, *a3);
        v22 = vmulq_f32(v21, v21);
        ++v11;
        if (sqrtf(v22.f32[2] + vaddv_f32(*v22.f32)) <= v7)
        {
          v13 = 0;
          if (v11 != 8)
          {
            goto LABEL_4;
          }

          goto LABEL_18;
        }
      }

      if ((v13 & 1) == 0)
      {
        goto LABEL_18;
      }

      v23 = *a3;
      *a4 = *a3;
      v7 = a3[1].f32[0];
      v10 = v7;
    }

    else
    {
      v16 = 32 * v11 + 32;
      while (v11 != 7)
      {
        v17 = vsubq_f32(*(a2 + v16), v12);
        v18 = vmulq_f32(v17, v17);
        v16 += 32;
        ++v11;
        if (sqrtf(v18.f32[2] + vaddv_f32(*v18.f32)) > v7)
        {
          v13 = 0;
          goto LABEL_9;
        }
      }

      if (v13)
      {
        v24 = vaddq_f32(v4, a2[14]);
        v25.i64[0] = 0x3F0000003F000000;
        v25.i64[1] = 0x3F0000003F000000;
        v23 = vmulq_f32(v24, v25);
        *a4 = v23;
        v10 = vabds_f32(v23.f32[0], a2->f32[0]);
        v7 = vabds_f32(v23.f32[2], a2->f32[2]);
      }

      else
      {
LABEL_18:
        v26 = 0uLL;
        v27 = 8;
        v28 = a2;
        do
        {
          v29 = *v28;
          if (v28[1].i8[0] == 1)
          {
            v30 = vsubq_f32(v29, *a3);
            v31 = vmulq_f32(v30, v30);
            *&v32 = v31.f32[2] + vaddv_f32(*v31.f32);
            v33 = vrsqrte_f32(v32);
            v34 = vmul_f32(v33, vrsqrts_f32(v32, vmul_f32(v33, v33)));
            v29 = vaddq_f32(*a3, vmulq_n_f32(vmulq_n_f32(v30, vmul_f32(v34, vrsqrts_f32(v32, vmul_f32(v34, v34))).f32[0]), COERCE_FLOAT(*&a3[1])));
            *v28 = v29;
          }

          v26 = vaddq_f32(v26, v29);
          v28 += 2;
          --v27;
        }

        while (v27);
        v35.i64[0] = 0x3E0000003E000000;
        v35.i64[1] = 0x3E0000003E000000;
        v23 = vmulq_f32(v26, v35);
        *a4 = v23;
        v36 = &a2->f32[2];
        v7 = 0.0;
        v37 = 8;
        v10 = 0.0;
        do
        {
          v38 = vabds_f32(*(v36 - 2), v23.f32[0]);
          v39 = *v36;
          v36 += 8;
          v40 = vabds_f32(v39, v23.f32[2]);
          if (v38 >= v10)
          {
            v10 = v38;
          }

          if (v40 >= v7)
          {
            v7 = v40;
          }

          --v37;
        }

        while (v37);
      }
    }

    v41 = a3[1].f32[0];
    v42 = v23.f32[1] - a3->f32[1];
    v9 = v42 - v41;
    v8 = v41 + v42;
  }

  else
  {
    v8 = 10.0;
    v9 = 0.01;
    v10 = a3[1].f32[0];
  }

  v43 = v8 + (fabsf(v8) * 0.3);
  v44 = v43 - (v9 - (fabsf(v9) * 0.3));
  *&v45 = 2.0 / (v10 + v10);
  LODWORD(v46) = 0;
  *(&v46 + 1) = 2.0 / (v7 + v7);
  *&v47 = 0;
  HIDWORD(v47) = 0;
  *(&v47 + 2) = 1.0 / v44;
  *&v48 = v43 / v44;
  *&v49 = 0;
  *(&v49 + 1) = __PAIR64__(1.0, v48);
  *a1 = v45;
  a1[1] = v46;
  a1[2] = v47;
  a1[3] = v49;
  result.n128_u64[0] = v47;
  result.n128_u32[2] = DWORD2(v47);
  return result;
}

float32x4_t re::LightContextBuilder::snapDirectionalLightProjectionToTexel(float32x4_t *a1, simd_float4x4 *a2)
{
  v13 = __invert_f4(*a2);
  v3 = 0;
  v4 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v10 = v13;
  do
  {
    v11[v3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(*&v10.columns[v3])), v5, *v10.columns[v3].f32, 1), v7, v10.columns[v3], 2), v6, v10.columns[v3], 3);
    ++v3;
  }

  while (v3 != 4);
  v8 = vmul_f32(vadd_f32(*&v12, *&vmlaq_f32(vmlaq_f32(vmulq_f32(v11[0], 0), 0, v11[1]), 0, v11[2])), vdup_n_s32(0x43FE8000u));
  *result.f32 = vadd_f32(*v6.f32, vmul_f32(vsub_f32(vrnda_f32(v8), v8), vdup_n_s32(0x3B00C122u)));
  result.i64[1] = vextq_s8(v6, v6, 8uLL).u64[0];
  a1[3] = result;
  return result;
}

double re::LightContextBuilder::computeDirectionalLightProjections(re::PerFrameAllocator *,re::CameraView const&,re::LightContextBuilder::LightArrays &,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul> const&,re::FixedInlineArray<re::LightContextBuilder::SceneBoundingBoxCorner,8ul>&)const::$_0::operator()<re::DirectionalLightInfo>(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, float32x4_t *a5, uint64_t a6)
{
  if (!a4)
  {
    if (*(a3 + 136) == 1)
    {
      v17 = *(a6 + 48);
      v37[2] = *(a6 + 32);
      v37[3] = v17;
      v38 = *(a6 + 64);
      v18 = *(a6 + 16);
      v37[0] = *a6;
      v37[1] = v18;
      v39 = *(a6 + 80);
      if (v39 == 1)
      {
        v19 = *(a6 + 112);
        v40 = *(a6 + 96);
        v41 = v19;
        v20 = *(a6 + 144);
        v42 = *(a6 + 128);
        v43 = v20;
      }

      v44 = *(a6 + 160);
      if (v44 == 1)
      {
        v21 = *(a6 + 192);
        v45 = *(a6 + 176);
        v46 = v21;
        v22 = *(a6 + 224);
        v47 = *(a6 + 208);
        v48 = v22;
      }

      re::LightContextBuilder::calculateDirectionalLightBoundsForViewFrustum(v34, v37, a2[1], a2[2], (a3 + 32), 0, 0, *(a3 + 137));
      *v61 = v34[0];
      *&v61[12] = *(v34 + 12);
    }

    else
    {
      v23 = *(a3 + 140) * 0.5;
      *v61 = *(a3 + 80);
      *&v61[16] = v23;
      *&v61[20] = *(a3 + 116);
    }

    goto LABEL_15;
  }

  v10 = *a2;
  v11 = *(a6 + 48);
  v49[2] = *(a6 + 32);
  v49[3] = v11;
  v50 = *(a6 + 64);
  v12 = *(a6 + 16);
  v49[0] = *a6;
  v49[1] = v12;
  v51 = *(a6 + 80);
  if (v51 == 1)
  {
    v13 = *(a6 + 112);
    v52 = *(a6 + 96);
    v53 = v13;
    v14 = *(a6 + 144);
    v54 = *(a6 + 128);
    v55 = v14;
  }

  v56 = *(a6 + 160);
  if (v56 == 1)
  {
    v15 = *(a6 + 192);
    v57 = *(a6 + 176);
    v58 = v15;
    v16 = *(a6 + 224);
    v59 = *(a6 + 208);
    v60 = v16;
  }

  re::LightContextBuilder::calculateDirectionalLightBoundsForViewFrustum(v34, v49, a2[1], a2[3], (a3 + 32), 1, *(v10 + 3008), 1);
  *v61 = v34[0];
  *&v61[12] = *(v34 + 12);
  v35 = 0u;
  v36 = 0u;
  memset(v34, 0, sizeof(v34));
  if (*(v10 + 3008) != 1)
  {
LABEL_15:
    *&v24 = 0;
    LODWORD(v25) = 0;
    *(&v25 + 1) = 2.0 / (*&v61[16] + *&v61[16]);
    *(&v24 + 1) = COERCE_UNSIGNED_INT(1.0 / (*&v61[24] - *&v61[20]));
    *&v26 = 0;
    *(&v26 + 1) = __PAIR64__(1.0, *&v61[24] / (*&v61[24] - *&v61[20]));
    v34[0] = HIDWORD(v25);
    v34[1] = v25;
    v35 = v24;
    v36 = v26;
    *a5 = *v61;
    goto LABEL_16;
  }

  re::LightContextBuilder::computeProjectionForGlobalDirectionalLight(v34, a2[3], v61, a5);
LABEL_16:
  v27 = *(a3 + 48);
  v33.columns[0] = *(a3 + 32);
  v33.columns[1] = v27;
  v28 = *(a3 + 80);
  v33.columns[2] = *(a3 + 64);
  v33.columns[3] = v28;
  v29 = *a5;
  v29.i32[3] = v33.columns[3].i32[3];
  v33.columns[3] = v29;
  re::LightContextBuilder::snapDirectionalLightProjectionToTexel(v34, &v33);
  v30 = v34[1];
  *a1 = v34[0];
  *(a1 + 16) = v30;
  result = *&v35;
  v32 = v36;
  *(a1 + 32) = v35;
  *(a1 + 48) = v32;
  return result;
}

void re::LightContextBuilder::buildShadowViews(re::PerFrameAllocator *)const::$_0::operator()(re::Allocator *a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, char a6, int a7, _BYTE *a8, _anonymous_namespace_ *a9)
{
  v84 = *MEMORY[0x1E69E9840];
  if (*(a3 + 20) != -1)
  {
    re::ShadowView::ShadowView(buf, a1);
    if (*(a2 + 8))
    {
      v17 = *(a2 + 16);
    }

    else
    {
      v17 = (a2 + 9);
    }

    re::DynamicString::DynamicString(&v66, v17, a1);
    re::DynamicString::operator=(buf, &v66);
    if (v66 && (v67 & 1) != 0)
    {
      (*(*v66 + 40))();
    }

    *(&v78[1] + 6) = *(a3 + 14);
    *v78[0].i8 = *a3;
    v19 = *(a2 + 32);
    v18 = *(a2 + 36);
    v20 = *(a2 + 40);
    v21 = *(a2 + 48);
    v22 = *(a2 + 52);
    v23 = *(a2 + 56);
    v24 = *(a2 + 64);
    v25 = *(a2 + 68);
    v26 = *(a2 + 72);
    v27 = (v19 + v22) + v26;
    if (v27 >= 0.0)
    {
      v38 = sqrtf(v27 + 1.0);
      v39 = v38 + v38;
      v40 = vrecpe_f32(COERCE_UNSIGNED_INT(v38 + v38));
      v41 = vmul_f32(v40, vrecps_f32(COERCE_UNSIGNED_INT(v38 + v38), v40));
      v42 = vmul_f32(v41, vrecps_f32(COERCE_UNSIGNED_INT(v38 + v38), v41)).f32[0];
      *&v32 = (v23 - v25) * v42;
      v33 = (v24 - v20) * v42;
      v34 = (v18 - v21) * v42;
      v35 = v39 * 0.25;
    }

    else if (v19 < v22 || v19 < v26)
    {
      v43 = 1.0 - v19;
      v44 = v22 < v26;
      v45 = v22 < v26;
      v46 = sqrtf((v43 - v22) + v26);
      *&v47 = v46 + v46;
      v48 = vrecpe_f32(v47);
      v49 = vmul_f32(v48, vrecps_f32(v47, v48));
      v50 = vmul_f32(v49, vrecps_f32(v47, v49)).f32[0];
      v51 = (v20 + v24) * v50;
      v52 = v23 + v25;
      v53 = v52 * v50;
      v54 = *&v47 * 0.25;
      v55 = (v18 - v21) * v50;
      v56 = sqrtf(v22 + (v43 - v26));
      *&v57 = v56 + v56;
      v58 = vrecpe_f32(v57);
      v59 = vmul_f32(v58, vrecps_f32(v57, v58));
      v59.f32[0] = vmul_f32(v59, vrecps_f32(v57, v59)).f32[0];
      v60 = (v18 + v21) * v59.f32[0];
      v61 = *&v57 * 0.25;
      v62 = v52 * v59.f32[0];
      v35 = (v24 - v20) * v59.f32[0];
      if (v44)
      {
        *&v32 = v51;
      }

      else
      {
        *&v32 = v60;
      }

      if (v45)
      {
        v33 = v53;
      }

      else
      {
        v33 = v61;
      }

      if (v45)
      {
        v34 = v54;
      }

      else
      {
        v34 = v62;
      }

      if (v45)
      {
        v35 = v55;
      }
    }

    else
    {
      v28 = sqrtf(v19 + ((1.0 - v22) - v26));
      *&v29 = v28 + v28;
      v30 = vrecpe_f32(v29);
      v31 = vmul_f32(v30, vrecps_f32(v29, v30));
      v31.f32[0] = vmul_f32(v31, vrecps_f32(v29, v31)).f32[0];
      *&v32 = *&v29 * 0.25;
      v33 = (v18 + v21) * v31.f32[0];
      v34 = (v20 + v24) * v31.f32[0];
      v35 = (v23 - v25) * v31.f32[0];
    }

    *(&v32 + 1) = v33;
    *(&v32 + 1) = __PAIR64__(LODWORD(v35), LODWORD(v34));
    v69 = *(a2 + 80);
    v70 = v32;
    if ((v72 & 1) == 0)
    {
      v72 = 1;
    }

    v63 = a4[1];
    v73 = *a4;
    v74 = v63;
    v64 = a4[3];
    v75 = a4[2];
    v76 = v64;
    if ((v77 & 1) == 0)
    {
      re::Projection::decompose(&v71, a4);
    }

    if (*a5 == 1)
    {
      v65 = *(a5 + 24);
      *&v69 = *(a5 + 16);
      *(&v69 + 1) = v65;
    }

    *(&v78[1] + 4) = vadd_s32(*(&v78[1] + 4), 0x300000003);
    v78[0] = vadd_s32(v78[0], 0x500000005);
    v83 = a6;
    if (v79)
    {
      if ((*a8 & 1) == 0)
      {
        v79 = 0;
LABEL_41:
        if ((v81 & 1) == 0)
        {
          v81 = 1;
        }

        v82 = a7;
        re::DynamicArray<re::ShadowView>::add(a9, buf);
        if (*buf)
        {
          if (buf[8])
          {
            (*(**buf + 40))();
          }
        }

        return;
      }
    }

    else
    {
      if ((*a8 & 1) == 0)
      {
        goto LABEL_41;
      }

      v79 = 1;
    }

    v80 = a8[1];
    goto LABEL_41;
  }

  v36 = *re::graphicsLogObjects(a1);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 8))
    {
      v37 = *(a2 + 16);
    }

    else
    {
      v37 = a2 + 9;
    }

    *buf = 136315138;
    *&buf[4] = v37;
    _os_log_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_DEFAULT, "Failed to allocate shadow map for light %s: not enough free space in shadow map atlas.", buf, 0xCu);
  }
}

BOOL re::LightContextBuilder::checkIfMeshBoundingBoxIsInsideSpotLightCone(uint64_t a1, float32x4_t *a2, float32_t a3, float a4)
{
  v5 = 0;
  v7 = a2[2];
  v6 = a2[3];
  v55 = *a2;
  v56 = a2[1];
  v54 = vmulq_f32(*a2, 0);
  v8 = vmlaq_f32(v54, 0, v56);
  v9 = vmlaq_f32(v8, 0, v7);
  __asm { FMOV            V0.4S, #-1.0 }

  v57 = v7;
  v15 = vmlaq_f32(v8, _Q0, v7);
  v16 = vmulq_f32(v15, v15);
  v7.f32[0] = v16.f32[2] + vaddv_f32(*v16.f32);
  *v16.f32 = vrsqrte_f32(v7.u32[0]);
  *v16.f32 = vmul_f32(*v16.f32, vrsqrts_f32(v7.u32[0], vmul_f32(*v16.f32, *v16.f32)));
  LODWORD(v17) = vmul_f32(*v16.f32, vrsqrts_f32(v7.u32[0], vmul_f32(*v16.f32, *v16.f32))).u32[0];
  v18 = a4 * 0.5;
  do
  {
    v19 = &v59[v5];
    *v19 = 0;
    *(v19 + 1) = 0;
    v19[16] = 0;
    v5 += 32;
  }

  while (v5 != 256);
  v20 = 0;
  v21 = 0;
  v22 = vaddq_f32(v6, v9);
  v23 = vmulq_n_f32(v15, v17);
  v24 = &v60;
  v25 = 1;
  v26 = 1;
  do
  {
    if ((v21 & 2) != 0)
    {
      v27 = 20;
    }

    else
    {
      v27 = 4;
    }

    v28 = (a1 + v27);
    if (v21 >= 4)
    {
      v29 = 24;
    }

    else
    {
      v29 = 8;
    }

    v6.i32[0] = *(a1 + (v20 & 0x10));
    v6.i32[1] = *v28;
    v6.i32[2] = *(a1 + v29);
    v24[-1] = v6;
    v6 = vmulq_f32(v23, vsubq_f32(v6, v22));
    v6.f32[0] = v6.f32[2] + vaddv_f32(*v6.f32);
    if (v6.f32[0] > a3)
    {
      v25 = 0;
LABEL_13:
      v24->i8[0] = 1;
      goto LABEL_15;
    }

    v26 = 0;
    if (v6.f32[0] < 0.0)
    {
      goto LABEL_13;
    }

    v25 = 0;
    v24->i8[0] = 0;
LABEL_15:
    ++v21;
    v24 += 2;
    v20 += 16;
  }

  while (v21 != 8);
  v58 = v22;
  v30 = tanf(v18);
  v31 = 0;
  v32 = v30 * a3;
  v33 = vmlaq_f32(vmlaq_f32(v55, 0, v56), 0, v57);
  v34 = vmulq_f32(v33, v33);
  v35 = vaddv_f32(*v34.f32);
  *v34.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v34.f32[2] + v35));
  *v34.f32 = vmul_f32(*v34.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v34.f32[2] + v35), vmul_f32(*v34.f32, *v34.f32)));
  v36 = vmulq_n_f32(v33, vmul_f32(*v34.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v34.f32[2] + v35), vmul_f32(*v34.f32, *v34.f32))).f32[0]);
  v37 = vmlaq_f32(vaddq_f32(v54, v56), 0, v57);
  v38 = vmulq_f32(v37, v37);
  *&v39 = v38.f32[2] + vaddv_f32(*v38.f32);
  *v38.f32 = vrsqrte_f32(v39);
  *v38.f32 = vmul_f32(*v38.f32, vrsqrts_f32(v39, vmul_f32(*v38.f32, *v38.f32)));
  v40 = vmulq_n_f32(v37, vmul_f32(*v38.f32, vrsqrts_f32(v39, vmul_f32(*v38.f32, *v38.f32))).f32[0]);
  v41 = 1;
  v42 = -(v30 * a3);
  v43 = 1;
  v44 = 1;
  v45 = 1;
  do
  {
    v46 = vsubq_f32(*&v59[v31], v58);
    v47 = vmulq_f32(v36, v46);
    v48 = vmulq_f32(v46, v46);
    v49 = sqrtf(v48.f32[2] + vaddv_f32(*v48.f32));
    v50 = (v47.f32[2] + vaddv_f32(*v47.f32)) / v49;
    v51 = vmulq_f32(v40, v46);
    v52 = (v51.f32[2] + vaddv_f32(*v51.f32)) / v49;
    v45 &= v50 < v42;
    if (v50 <= v32)
    {
      v44 = 0;
    }

    else
    {
      v45 = 0;
    }

    v43 &= v50 < v42;
    if (v52 <= v32)
    {
      v41 = 0;
    }

    else
    {
      v43 = 0;
    }

    v31 += 32;
  }

  while (v31 != 256);
  return (((v44 | v45 | v41 | v43) | (v26 | v25)) & 1) == 0;
}

BOOL re::LightContextBuilder::checkIfMeshBoundingBoxIsInsidePointLightSphere(uint64_t a1, float32x4_t *a2, float32_t a3)
{
  v3 = 0;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = vmlaq_f32(vmulq_f32(*a2, 0), 0, v4);
  do
  {
    v8 = &v44[v3];
    v8->i64[0] = 0;
    v8->i64[1] = 0;
    v8[1].i8[0] = 0;
    v3 += 2;
  }

  while (v3 != 16);
  v9 = 0;
  v10 = 0;
  v11 = v44;
  do
  {
    if ((v10 & 2) != 0)
    {
      v12 = 20;
    }

    else
    {
      v12 = 4;
    }

    v13 = (a1 + v12);
    if (v10 >= 4)
    {
      v14 = 24;
    }

    else
    {
      v14 = 8;
    }

    v4.i32[0] = *(a1 + (v9 & 0x10));
    v4.i32[1] = *v13;
    v4.i32[2] = *(a1 + v14);
    *v11 = v4;
    v11 += 2;
    ++v10;
    v9 += 16;
  }

  while (v10 != 8);
  v15 = 0;
  v16 = vaddq_f32(v6, vmlaq_f32(v7, 0, v5));
  v17 = vsubq_f32(v44[2], v44[0]);
  v18 = vmulq_f32(v17, v17);
  *&v19 = v18.f32[2] + vaddv_f32(*v18.f32);
  *v18.f32 = vrsqrte_f32(v19);
  *v18.f32 = vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32)));
  v20 = vmulq_n_f32(v17, vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32))).f32[0]);
  v21 = vsubq_f32(v44[4], v44[0]);
  v22 = vmulq_f32(v21, v21);
  *&v23 = v22.f32[2] + vaddv_f32(*v22.f32);
  *v22.f32 = vrsqrte_f32(v23);
  *v22.f32 = vmul_f32(*v22.f32, vrsqrts_f32(v23, vmul_f32(*v22.f32, *v22.f32)));
  v24 = vmulq_n_f32(v21, vmul_f32(*v22.f32, vrsqrts_f32(v23, vmul_f32(*v22.f32, *v22.f32))).f32[0]);
  v25 = vsubq_f32(v44[8], v44[0]);
  v26 = vmulq_f32(v25, v25);
  *&v27 = v26.f32[2] + vaddv_f32(*v26.f32);
  *v26.f32 = vrsqrte_f32(v27);
  *v26.f32 = vmul_f32(*v26.f32, vrsqrts_f32(v27, vmul_f32(*v26.f32, *v26.f32)));
  v29 = vmul_f32(*v26.f32, vrsqrts_f32(v27, vmul_f32(*v26.f32, *v26.f32)));
  v28 = vmulq_n_f32(v25, *v29.i32);
  *v29.i32 = -a3;
  v30 = 1;
  v31 = 1;
  v32 = vdup_lane_s32(v29, 0);
  v33 = 1;
  v34 = 1;
  v35 = 1;
  v36 = 1;
  do
  {
    v37 = vsubq_f32(v44[v15], v16);
    v38 = vmulq_f32(v20, v37);
    v39 = vmulq_f32(v24, v37);
    v40 = vmulq_f32(v28, v37);
    v38.f32[0] = v38.f32[2] + vaddv_f32(*v38.f32);
    v41 = vadd_f32(vzip1_s32(*&vextq_s8(v40, v40, 8uLL), *&vextq_s8(v39, v39, 8uLL)), vadd_f32(vzip1_s32(*v40.i8, *v39.i8), vzip2_s32(*v40.i8, *v39.i8)));
    v31 &= v38.f32[0] < *v29.i32;
    if (v38.f32[0] <= a3)
    {
      v30 = 0;
    }

    else
    {
      v31 = 0;
    }

    v42 = vcgt_f32(v32, v41);
    v36 &= v41.f32[1] > a3;
    v35 &= v42.i8[4] & (v41.f32[1] <= a3);
    v34 &= v41.f32[0] > a3;
    v33 &= v42.i8[0] & (v41.f32[0] <= a3);
    v15 += 2;
  }

  while (v15 != 16);
  return (((v30 | v31 | v36 | v34 | v35) | v33) & 1) == 0;
}

uint64_t re::LightContextBuilder::buildLightContext(uint64_t result, uint64_t a2, unint64_t a3, void *a4, uint64_t a5)
{
  v5 = a4;
  v7 = result;
  v141 = *MEMORY[0x1E69E9840];
  v8 = a4[12];
  if (v8)
  {
    v9 = 0;
    for (i = 0; i != v8; ++i)
    {
      result = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[]((v5 + 7), i);
      v9 += *(result + 16);
    }
  }

  else
  {
    v9 = 0;
  }

  v121 = v5;
  v122 = v7;
  v11 = v5[33];
  v12 = 0;
  if (v11)
  {
    v13 = 0;
    while (1)
    {
      result = re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::operator[]((v5 + 28), v13);
      v14 = *(result + 16);
      if (v14)
      {
        break;
      }

LABEL_14:
      ++v13;
      v5 = v121;
      if (v13 == v11)
      {
        goto LABEL_15;
      }
    }

    v15 = 0;
    v16 = *(result + 48);
    v17 = *(result + 56);
    v18 = *(result + 32) + 200;
    while (v16 != v15)
    {
      if (*(v17 + v15) == 1)
      {
        result = re::LightContextBuilder::checkIfMeshBoundingBoxIsInsidePointLightSphere(a5, (v18 - 168), *v18);
        v12 += result;
      }

      ++v15;
      v18 += 224;
      if (v14 == v15)
      {
        goto LABEL_14;
      }
    }

    *v134 = 0;
    memset(&__src[3], 0, 32);
    if (v16 >= v14 - 1)
    {
      v105 = v14 - 1;
    }

    else
    {
      v105 = v16;
    }

    memset(__src, 0, 48);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v129[0]) = 136315906;
    *(v129 + 4) = "operator[]";
    WORD6(v129[0]) = 1024;
    *(v129 + 14) = 476;
    WORD1(v129[1]) = 2048;
    *(&v129[1] + 4) = v105;
    WORD6(v129[1]) = 2048;
    *(&v129[1] + 14) = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_184;
  }

LABEL_15:
  v117 = v5[26];
  v18 = 0;
  if (v117)
  {
    v13 = 0;
    while (1)
    {
      result = re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::operator[]((v5 + 21), v13);
      v14 = *(result + 16);
      if (v14)
      {
        break;
      }

LABEL_23:
      ++v13;
      v5 = v121;
      if (v13 == v117)
      {
        goto LABEL_24;
      }
    }

    v15 = 0;
    v16 = *(result + 48);
    v17 = *(result + 56);
    v19 = (*(result + 32) + 208);
    while (v16 != v15)
    {
      if (*(v17 + v15) == 1)
      {
        result = re::LightContextBuilder::checkIfMeshBoundingBoxIsInsideSpotLightCone(a5, v19 - 11, *(v19 - 2), *v19);
        v18 += result;
      }

      ++v15;
      v19 += 60;
      if (v14 == v15)
      {
        goto LABEL_23;
      }
    }

LABEL_184:
    *v134 = 0;
    memset(&__src[3], 0, 32);
    if (v16 >= v14 - 1)
    {
      v106 = v14 - 1;
    }

    else
    {
      v106 = v16;
    }

    memset(__src, 0, 48);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v129[0]) = 136315906;
    *(v129 + 4) = "operator[]";
    WORD6(v129[0]) = 1024;
    *(v129 + 14) = 476;
    WORD1(v129[1]) = 2048;
    *(&v129[1] + 4) = v106;
    WORD6(v129[1]) = 2048;
    *(&v129[1] + 14) = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_188:
    *v134 = 0;
    memset(__src, 0, 80);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v129[0]) = 136315906;
    *(v129 + 4) = "operator[]";
    WORD6(v129[0]) = 1024;
    *(v129 + 14) = 476;
    WORD1(v129[1]) = 2048;
    *(&v129[1] + 4) = v14;
    WORD6(v129[1]) = 2048;
    *(&v129[1] + 14) = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_189:
    v130 = 0u;
    v131 = 0u;
    memset(v129, 0, sizeof(v129));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v134 = 136315906;
    *&v134[4] = "operator[]";
    v135 = 1024;
    v136 = 468;
    v137 = 2048;
    v138 = v13;
    v139 = 2048;
    v140 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_190;
  }

LABEL_24:
  v20 = v5[5];
  if (v20)
  {
    v17 = 0;
    for (j = 0; j != v20; ++j)
    {
      result = re::BucketArray<re::DynamicArray<re::CameraView>,4ul>::operator[](v5, j);
      v17 += *(result + 16);
    }
  }

  else
  {
    v17 = 0;
  }

  v22 = v5[40];
  if (v22)
  {
    v15 = 0;
    for (k = 0; k != v22; ++k)
    {
      result = re::BucketArray<re::DynamicArray<re::CameraView>,4ul>::operator[]((v5 + 35), k);
      v15 += *(result + 16);
    }
  }

  else
  {
    v15 = 0;
  }

  v24 = v5[19];
  if (v24)
  {
    v14 = 0;
    for (m = 0; m != v24; ++m)
    {
      result = re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::operator[]((v5 + 14), m);
      v14 += *(result + 64);
    }
  }

  else
  {
    v14 = 0;
  }

  v118 = *(a2 + 72);
  v110 = *(a2 + 168);
  *(v122 + 8) = v9;
  *(v122 + 16) = 0;
  v13 = a3;
  *v122 = a3;
  if (v9)
  {
    if (v9 >= 0x13B13B13B13B13CLL)
    {
LABEL_204:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 208, v9);
      _os_crash();
      __break(1u);
      goto LABEL_205;
    }

    result = (*(*a3 + 32))(a3, 208 * v9, 16);
    *(v122 + 16) = result;
    if (!result)
    {
LABEL_205:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
      goto LABEL_206;
    }

    v26 = v9 - 1;
    if (v9 != 1)
    {
      do
      {
        *(result + 176) = 0;
        *(result + 144) = 0uLL;
        *(result + 160) = 0uLL;
        *(result + 112) = 0uLL;
        *(result + 128) = 0uLL;
        *(result + 80) = 0uLL;
        *(result + 96) = 0uLL;
        *(result + 48) = 0uLL;
        *(result + 64) = 0uLL;
        *(result + 16) = 0uLL;
        *(result + 32) = 0uLL;
        *result = 0uLL;
        *(result + 180) = -1;
        *(result + 192) = 0;
        *(result + 198) = 0;
        result += 208;
        --v26;
      }

      while (v26);
    }

    *(result + 176) = 0;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *(result + 180) = -1;
    *(result + 192) = 0;
    *(result + 198) = 0;
  }

  *(v122 + 32) = v12;
  *(v122 + 40) = 0;
  *(v122 + 24) = a3;
  if (v12)
  {
    if (v12 >= 0xBA2E8BA2E8BA2FLL)
    {
LABEL_206:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 352, v12);
      _os_crash();
      __break(1u);
      goto LABEL_207;
    }

    result = (*(*a3 + 32))(a3, 352 * v12, 16);
    *(v122 + 40) = result;
    if (!result)
    {
LABEL_207:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
      goto LABEL_208;
    }

    if (v12 != 1)
    {
      v27 = 0;
      do
      {
        v28 = 0;
        *(result + 272) = 0uLL;
        *(result + 288) = 0uLL;
        *(result + 300) = 0uLL;
        *(result + 240) = 0uLL;
        *(result + 256) = 0uLL;
        *(result + 208) = 0uLL;
        *(result + 224) = 0uLL;
        *(result + 176) = 0uLL;
        *(result + 192) = 0uLL;
        *(result + 144) = 0uLL;
        *(result + 160) = 0uLL;
        *(result + 112) = 0uLL;
        *(result + 128) = 0uLL;
        *(result + 80) = 0uLL;
        *(result + 96) = 0uLL;
        *(result + 48) = 0uLL;
        *(result + 64) = 0uLL;
        *(result + 16) = 0uLL;
        *(result + 32) = 0uLL;
        *result = 0uLL;
        do
        {
          v29 = result + v28;
          *(v29 + 180) = 0;
          *(v29 + 172) = 0;
          *(v29 + 188) = 0;
          *(v29 + 192) = -1;
          v28 += 24;
        }

        while (v28 != 144);
        v30 = (result + 316);
        *(result + 332) = 0;
        *(result + 324) = 0;
        *(result + 336) = -1;
        *(result + 340) = 0;
        *(result + 342) = 0;
        result += 352;
        ++v27;
        *v30 = 0;
      }

      while (v27 != v12 - 1);
    }

    *(result + 272) = 0u;
    *(result + 288) = 0u;
    *(result + 240) = 0u;
    *(result + 256) = 0u;
    *(result + 208) = 0u;
    *(result + 224) = 0u;
    *(result + 176) = 0u;
    *(result + 192) = 0u;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *(result + 300) = 0u;
    v31 = result + 172;
    v32 = 144;
    *result = 0u;
    do
    {
      *v31 = 0;
      *(v31 + 8) = 0;
      *(v31 + 16) = 0;
      *(v31 + 20) = -1;
      v31 += 24;
      v32 -= 24;
    }

    while (v32);
    *(result + 332) = 0;
    *(result + 324) = 0;
    *(result + 316) = 0;
    *(result + 336) = -1;
    *(result + 340) = 0;
    *(result + 342) = 0;
  }

  *(v122 + 56) = v18;
  *(v122 + 64) = 0;
  *(v122 + 48) = a3;
  if (v18)
  {
    if (v18 >= 0x111111111111112)
    {
LABEL_208:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 240, v18);
      _os_crash();
      __break(1u);
      goto LABEL_209;
    }

    result = (*(*a3 + 32))(a3, 240 * v18, 16);
    *(v122 + 64) = result;
    if (!result)
    {
LABEL_209:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
      goto LABEL_210;
    }

    v33 = (v18 - 1);
    if (v18 != 1)
    {
      do
      {
        *(result + 188) = 0uLL;
        *(result + 160) = 0uLL;
        *(result + 176) = 0uLL;
        *(result + 128) = 0uLL;
        *(result + 144) = 0uLL;
        *(result + 96) = 0uLL;
        *(result + 112) = 0uLL;
        *(result + 64) = 0uLL;
        *(result + 80) = 0uLL;
        *(result + 32) = 0uLL;
        *(result + 48) = 0uLL;
        *result = 0uLL;
        *(result + 16) = 0uLL;
        *(result + 200) = -1;
        *(result + 220) = 0;
        *(result + 204) = 0;
        *(result + 212) = 0;
        *(result + 224) = -1;
        *(result + 228) = 0;
        *(result + 230) = 0;
        result += 240;
        --v33;
      }

      while (v33);
    }

    *(result + 188) = 0u;
    *(result + 160) = 0u;
    *(result + 176) = 0u;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *(result + 200) = -1;
    *(result + 220) = 0;
    *(result + 204) = 0;
    *(result + 212) = 0;
    *(result + 224) = -1;
    *(result + 228) = 0;
    *(result + 230) = 0;
  }

  v18 = v122;
  *(v122 + 80) = v17;
  *(v122 + 88) = 0;
  *(v122 + 72) = a3;
  if (v17)
  {
    if (v17 >> 59)
    {
LABEL_210:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 32, v17);
      _os_crash();
      __break(1u);
      goto LABEL_211;
    }

    result = (*(*a3 + 32))(a3, 32 * v17, 16);
    *(v122 + 88) = result;
    if (!result)
    {
LABEL_211:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
      goto LABEL_212;
    }

    v34 = result;
    v35 = result;
    v36 = (v17 - 1);
    if (v17 != 1)
    {
      v35 = result;
      do
      {
        *v35 = 0;
        *(v35 + 8) = 0;
        *(v35 + 16) = 0;
        v35 += 32;
        --v36;
      }

      while (v36);
    }

    *v35 = 0;
    *(v35 + 8) = 0;
    *(v35 + 16) = 0;
  }

  else
  {
    v34 = 0;
  }

  *(v122 + 104) = v15;
  *(v122 + 112) = 0;
  *(v122 + 96) = a3;
  if (v15)
  {
    if (v15 >= 0x24924924924924ALL)
    {
LABEL_212:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 112, v15);
      _os_crash();
      __break(1u);
      goto LABEL_213;
    }

    result = (*(*a3 + 32))(a3, 112 * v15, 16);
    *(v122 + 112) = result;
    if (!result)
    {
LABEL_213:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
      goto LABEL_214;
    }

    v37 = v15 - 1;
    if (v15 != 1)
    {
      do
      {
        *(result + 88) = 0;
        *(result + 96) = 0;
        *result = 0uLL;
        *(result + 16) = 0uLL;
        *(result + 32) = 0uLL;
        *(result + 48) = 0uLL;
        *(result + 64) = 0uLL;
        *(result + 80) = 0;
        result += 112;
        --v37;
      }

      while (v37);
    }

    *(result + 88) = 0;
    *(result + 96) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0;
  }

  *(v122 + 128) = v14;
  *(v122 + 136) = 0;
  *(v122 + 120) = a3;
  v112 = v14;
  v107 = v34;
  if (v14)
  {
    if (v14 >= 0x155555555555556)
    {
LABEL_214:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 192, v14);
      _os_crash();
      __break(1u);
LABEL_215:
      re::internal::assertLog(4, v38, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
    }

    result = (*(*a3 + 32))(a3, 192 * v14, 16);
    *(v122 + 136) = result;
    if (!result)
    {
      goto LABEL_215;
    }

    v39 = result;
    v40 = v14 - 1;
    if (v14 != 1)
    {
      v39 = result;
      do
      {
        *(v39 + 176) = 0;
        *(v39 + 144) = 0uLL;
        *(v39 + 160) = 0uLL;
        *(v39 + 112) = 0uLL;
        *(v39 + 128) = 0uLL;
        *(v39 + 80) = 0uLL;
        *(v39 + 96) = 0uLL;
        *(v39 + 48) = 0uLL;
        *(v39 + 64) = 0uLL;
        *(v39 + 16) = 0uLL;
        *(v39 + 32) = 0uLL;
        *v39 = 0uLL;
        *(v39 + 176) = -1;
        v39 += 192;
        --v40;
      }

      while (v40);
    }

    v111 = result;
    *(v39 + 176) = 0;
    *(v39 + 144) = 0u;
    *(v39 + 160) = 0u;
    *(v39 + 112) = 0u;
    *(v39 + 128) = 0u;
    *(v39 + 80) = 0u;
    *(v39 + 96) = 0u;
    *(v39 + 48) = 0u;
    *(v39 + 64) = 0u;
    *(v39 + 16) = 0u;
    *(v39 + 32) = 0u;
    *v39 = 0u;
    *(v39 + 176) = -1;
  }

  else
  {
    v111 = 0;
  }

  *&v41 = v110;
  *(&v41 + 1) = v118;
  *(v122 + 144) = v41;
  *(v122 + 160) = 0;
  v114 = v5[12];
  if (v114)
  {
    v13 = 0;
    v42 = 0;
    v12 = v129;
    while (1)
    {
      v119 = v42;
      result = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[]((v5 + 7), v42);
      if (*(result + 16))
      {
        break;
      }

      v52 = v13;
LABEL_105:
      v42 = v119 + 1;
      v13 = v52;
      v5 = v121;
      if (v119 + 1 == v114)
      {
        goto LABEL_106;
      }
    }

    v17 = result;
    v14 = 0;
    while (1)
    {
      v16 = *(v17 + 48);
      if (v16 <= v14)
      {
        goto LABEL_188;
      }

      v43 = *(v17 + 32) + 160 * v14;
      v44 = *(v17 + 56) + 24 * v14;
      __src[0] = *(v43 + 32);
      __src[1] = *(v43 + 48);
      __src[2] = *(v43 + 64);
      __src[3] = *(v43 + 80);
      memset(&__src[5], 0, 100);
      __src[4] = *(v43 + 96);
      v45 = *(v43 + 112);
      v46 = *(v43 + 128);
      v9 = *(v43 + 135);
      v16 = *(v43 + 134);
      v47 = *(v44 + 8);
      if (v47)
      {
        v48 = *(v44 + 16);
        v49 = v48 + 96 * v47;
        do
        {
          while (1)
          {
            v50 = *(v48 + 16);
            v129[0] = *v48;
            v129[1] = v50;
            v129[2] = *(v48 + 32);
            v130 = *(v48 + 48);
            v131 = *(v48 + 64);
            if (v16)
            {
              break;
            }

            v132 = 0uLL;
            v133 = 0;
            __src[5] = v129[0];
            __src[6] = v129[1];
            __src[7] = v129[2];
            __src[8] = v130;
            __src[9] = v131;
            memset(&__src[10], 0, 20);
            v48 += 96;
            if (v48 == v49)
            {
              v51 = -1;
              v18 = v122;
              goto LABEL_99;
            }
          }

          result = re::DataArray<re::TextureAtlasTile>::get(a2 + 8, *(v48 + 80));
          v132 = *result;
          v133 = *(result + 16);
          v51 = *(result + 20);
          __src[5] = v129[0];
          __src[6] = v129[1];
          __src[7] = v129[2];
          __src[8] = v130;
          __src[9] = v131;
          __src[10] = v132;
          LODWORD(__src[11]) = v133;
          v48 += 96;
        }

        while (v48 != v49);
        v18 = v122;
        if (v9)
        {
          goto LABEL_99;
        }
      }

      else
      {
        v51 = -1;
        if (v16 & 1) == 0 || (v9)
        {
          goto LABEL_99;
        }
      }

      *(v18 + 160) = 1;
LABEL_99:
      v15 = *(v18 + 8);
      if (v15 <= v13)
      {
        goto LABEL_189;
      }

      v52 = v13 + 1;
      v53 = *(v18 + 16) + 208 * v13;
      *(v53 + 128) = __src[8];
      *(v53 + 144) = __src[9];
      *(v53 + 160) = __src[10];
      *(v53 + 176) = __src[11];
      *(v53 + 64) = __src[4];
      *(v53 + 80) = __src[5];
      *(v53 + 96) = __src[6];
      *(v53 + 112) = __src[7];
      *v53 = __src[0];
      *(v53 + 16) = __src[1];
      *(v53 + 32) = __src[2];
      *(v53 + 48) = __src[3];
      *(v53 + 180) = v51;
      *(v53 + 182) = 0;
      *(v53 + 192) = v45;
      *(v53 + 196) = v46;
      *(v53 + 200) = 3;
      *(v53 + 204) = v16;
      *(v53 + 205) = v9;
      ++v14;
      ++v13;
      if (v14 >= *(v17 + 16))
      {
        goto LABEL_105;
      }
    }
  }

LABEL_106:
  v108 = v5[33];
  if (v108)
  {
    v9 = 0;
    v54 = 0;
    v13 = __src;
    v12 = 0xFFFFLL;
    while (1)
    {
      v109 = v54;
      result = re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::operator[]((v5 + 28), v54);
      v15 = *(result + 16);
      if (v15)
      {
        break;
      }

LABEL_126:
      v54 = v109 + 1;
      v5 = v121;
      if (v109 + 1 == v108)
      {
        goto LABEL_127;
      }
    }

    v17 = result;
    v14 = 0;
    v18 = 0;
    while (1)
    {
      v16 = *(v17 + 48);
      if (v16 <= v18)
      {
        break;
      }

      if (*(*(v17 + 56) + v18) == 1)
      {
        v55 = *(v17 + 32) + 224 * v18;
        v56 = *(v55 + 200);
        result = re::LightContextBuilder::checkIfMeshBoundingBoxIsInsidePointLightSphere(a5, (v55 + 32), v56);
        if (result)
        {
          for (n = 0; n != 144; n += 24)
          {
            v58 = __src + n;
            *(v58 + 180) = 0;
            *(v58 + 172) = 0;
            *(v58 + 47) = 0;
            *(v58 + 96) = -1;
          }

          *(&__src[19] + 12) = 0;
          *(&__src[20] + 4) = 0;
          HIDWORD(__src[20]) = 0;
          LOWORD(__src[21]) = -1;
          __src[0] = *(v55 + 32);
          __src[1] = *(v55 + 48);
          __src[2] = *(v55 + 64);
          __src[3] = *(v55 + 80);
          __src[7] = *(v55 + 176);
          __src[6] = *(v55 + 160);
          __src[5] = *(v55 + 144);
          __src[4] = *(v55 + 128);
          __src[8] = *(v55 + 96);
          *&__src[9] = *(v55 + 112);
          *(&__src[9] + 2) = v56;
          *(&__src[9] + 12) = *(v55 + 204);
          *(&__src[10] + 4) = 0x300000003;
          if (*(v55 + 215) == 1)
          {
            v15 = *(v17 + 104);
            if (v15 <= v18)
            {
              goto LABEL_200;
            }

            v115 = v9;
            v15 = 0;
            v59 = *(v17 + 112) + v14;
            v60 = &__src[10] + 12;
            do
            {
              v61 = re::DataArray<re::TextureAtlasTile>::get(a2 + 8, *(v59 + v15));
              *v60 = *v61;
              *(v60 + 14) = *(v61 + 14);
              v15 += 8;
              v60 += 24;
            }

            while (v15 != 48);
            *(v122 + 160) = 1;
            v9 = v115;
          }

          v62 = *(v55 + 214);
          if (v62 == 1)
          {
            v15 = *(v17 + 80);
            if (v15 <= v18)
            {
              goto LABEL_201;
            }

            v63 = re::DataArray<re::TextureAtlasTile>::get(a2 + 104, *(*(v17 + 88) + 8 * v18));
            *(&__src[19] + 12) = *v63;
            *(&__src[20] + 10) = *(v63 + 14);
            LOBYTE(v62) = *(v55 + 214);
          }

          BYTE4(__src[21]) = 0;
          BYTE5(__src[21]) = *(v55 + 215);
          BYTE6(__src[21]) = v62;
          v16 = *(v122 + 32);
          if (v16 <= v9)
          {
            goto LABEL_195;
          }

          result = memcpy((*(v122 + 40) + 352 * v9), __src, 0x157uLL);
          v15 = *(v17 + 16);
          ++v9;
        }
      }

      ++v18;
      v14 += 48;
      if (v18 >= v15)
      {
        goto LABEL_126;
      }
    }

LABEL_190:
    *v134 = 0;
    memset(__src, 0, 80);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v129[0]) = 136315906;
    *(v129 + 4) = "operator[]";
    WORD6(v129[0]) = 1024;
    *(v129 + 14) = 476;
    WORD1(v129[1]) = 2048;
    *(&v129[1] + 4) = v18;
    WORD6(v129[1]) = 2048;
    *(&v129[1] + 14) = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_191:
    *v134 = 0;
    memset(__src, 0, 80);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v129[0]) = 136315906;
    *(v129 + 4) = "operator[]";
    WORD6(v129[0]) = 1024;
    *(v129 + 14) = 476;
    WORD1(v129[1]) = 2048;
    *(&v129[1] + 4) = v9;
    WORD6(v129[1]) = 2048;
    *(&v129[1] + 14) = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_192:
    *v134 = 0;
    memset(__src, 0, 80);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v129[0]) = 136315906;
    *(v129 + 4) = "operator[]";
    WORD6(v129[0]) = 1024;
    *(v129 + 14) = 468;
    WORD1(v129[1]) = 2048;
    *(&v129[1] + 4) = v13;
    WORD6(v129[1]) = 2048;
    *(&v129[1] + 14) = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_193:
    memset(__src, 0, 80);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v134 = 136315906;
    *&v134[4] = "operator[]";
    v135 = 1024;
    v136 = 468;
    v137 = 2048;
    v138 = v13;
    v139 = 2048;
    v140 = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_194;
  }

LABEL_127:
  v18 = v122;
  v116 = v5[26];
  if (v116)
  {
    v64 = 0;
    v65 = 0;
    v12 = __src;
    while (1)
    {
      v120 = v65;
      result = re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::operator[]((v5 + 21), v65);
      v15 = *(result + 16);
      if (v15)
      {
        break;
      }

LABEL_146:
      v65 = v120 + 1;
      v5 = v121;
      if (v120 + 1 == v116)
      {
        goto LABEL_147;
      }
    }

    v17 = result;
    v9 = 0;
    v14 = 224;
    while (1)
    {
      v16 = *(v17 + 48);
      if (v16 <= v9)
      {
        goto LABEL_191;
      }

      if (*(*(v17 + 56) + v9) == 1)
      {
        v66 = *(v17 + 32);
        v13 = v66 + v14;
        v18 = v66 + v14 - 192;
        v67 = *(v66 + v14 - 24);
        v68 = *(v66 + v14 - 16);
        result = re::LightContextBuilder::checkIfMeshBoundingBoxIsInsideSpotLightCone(a5, v18, v67, v68);
        if (result)
        {
          v125 = 0uLL;
          v126 = 0;
          memset(v127 + 2, 0, 20);
          __src[0] = *v18;
          __src[1] = *(v66 + v14 - 176);
          __src[2] = *(v66 + v14 - 160);
          __src[3] = *(v66 + v14 - 144);
          v69 = *(v13 - 96);
          v70 = *(v13 - 80);
          v71 = *(v13 - 48);
          __src[6] = *(v13 - 64);
          __src[7] = v71;
          __src[4] = v69;
          __src[5] = v70;
          __src[8] = *(v13 - 128);
          v72 = *(v13 - 112);
          v73 = *(v13 - 20);
          v74 = *(v13 - 12);
          if (*v13 == 1)
          {
            v13 = *(v17 + 104);
            if (v13 <= v9)
            {
              goto LABEL_202;
            }

            result = re::DataArray<re::TextureAtlasTile>::get(a2 + 8, *(*(v17 + 112) + 8 * v9));
            v125 = *result;
            v126 = *(result + 16);
            v18 = *(result + 20);
            *(v122 + 160) = 1;
          }

          else
          {
            v18 = 0xFFFFLL;
          }

          v15 = v66 + v14;
          if (*(v66 + v14 - 1) == 1)
          {
            v13 = *(v17 + 80);
            if (v13 <= v9)
            {
              goto LABEL_203;
            }

            result = re::DataArray<re::TextureAtlasTile>::get(a2 + 104, *(*(v17 + 88) + 8 * v9));
            *(v127 + 2) = *result;
            *(&v127[1] + 2) = *(result + 16);
            v75 = *(result + 20);
          }

          else
          {
            v75 = -1;
          }

          v13 = *(v122 + 56);
          if (v13 <= v64)
          {
            goto LABEL_196;
          }

          v76 = *(v122 + 64) + 240 * v64++;
          v77 = *(v15 - 1);
          v78 = *(v66 + v14);
          v79 = *(v66 + v14 - 2);
          *(v76 + 80) = __src[5];
          *(v76 + 96) = __src[6];
          *(v76 + 112) = __src[7];
          *(v76 + 128) = __src[8];
          *(v76 + 16) = __src[1];
          *(v76 + 32) = __src[2];
          *(v76 + 48) = __src[3];
          *(v76 + 64) = __src[4];
          *v76 = __src[0];
          *(v76 + 144) = v72;
          *(v76 + 152) = v67;
          *(v76 + 156) = v73;
          *(v76 + 160) = v68;
          *(v76 + 164) = v74;
          *(v76 + 172) = 0x300000003;
          *(v76 + 180) = v125;
          *(v76 + 196) = v126;
          *(v76 + 200) = v18;
          *(v76 + 202) = v127[0];
          *(v76 + 216) = *(v127 + 14);
          *(v76 + 224) = v75;
          *(v76 + 228) = v79;
          *(v76 + 229) = v78;
          *(v76 + 230) = v77;
          v15 = *(v17 + 16);
          v18 = v122;
        }

        else
        {
          v18 = v122;
        }
      }

      ++v9;
      v14 += 240;
      if (v9 >= v15)
      {
        goto LABEL_146;
      }
    }
  }

LABEL_147:
  v80 = v5[5];
  if (v80)
  {
    v12 = 0;
    v14 = 0;
    v15 = v107 + 16;
    while (1)
    {
      result = re::BucketArray<re::DynamicArray<re::CameraView>,4ul>::operator[](v5, v14);
      v81 = *(result + 16);
      if (v81)
      {
        break;
      }

LABEL_156:
      ++v14;
      v5 = v121;
      if (v14 == v80)
      {
        goto LABEL_157;
      }
    }

    v16 = *(v18 + 80);
    if (v12 <= v16)
    {
      v13 = *(v18 + 80);
    }

    else
    {
      v13 = v12;
    }

    v82 = 32 * v81;
    v83 = (*(result + 32) + 16);
    v84 = (v15 + 32 * v12);
    while (v13 != v12)
    {
      v85 = v83 - 4;
      v86 = *v83;
      v83 += 8;
      ++v12;
      *(v84 - 1) = *v85;
      *v84 = v86;
      v84 += 8;
      v82 -= 32;
      if (!v82)
      {
        goto LABEL_156;
      }
    }

    goto LABEL_192;
  }

LABEL_157:
  v87 = v5[40];
  if (v87)
  {
    v12 = 0;
    v14 = 0;
    v15 = v129;
    while (1)
    {
      result = re::BucketArray<re::DynamicArray<re::CameraView>,4ul>::operator[]((v5 + 35), v14);
      v88 = *(result + 16);
      if (v88)
      {
        break;
      }

LABEL_166:
      ++v14;
      v5 = v121;
      if (v14 == v87)
      {
        goto LABEL_167;
      }
    }

    v89 = 0;
    v90 = *(result + 32);
    v16 = *(v18 + 104);
    if (v12 <= v16)
    {
      v13 = *(v18 + 104);
    }

    else
    {
      v13 = v12;
    }

    v91 = 144 * v88;
    v92 = 112 * v12;
    while (1)
    {
      v93 = v90 + v89;
      v129[0] = *(v90 + v89 + 32);
      v129[1] = *(v90 + v89 + 48);
      v129[2] = *(v90 + v89 + 64);
      v130 = *(v90 + v89 + 80);
      v131 = *(v90 + v89 + 96);
      if (v13 == v12)
      {
        goto LABEL_193;
      }

      ++v12;
      v94 = *(v93 + 136);
      v95 = *(v93 + 128);
      v96 = *(v93 + 112);
      v97 = *(v18 + 112) + v92;
      *(v97 + 16) = v129[1];
      *(v97 + 32) = v129[2];
      *(v97 + 48) = v130;
      *(v97 + 64) = v131;
      *v97 = v129[0];
      *(v97 + 80) = v96;
      *(v97 + 88) = v95;
      *(v97 + 96) = v94;
      v89 += 144;
      v92 += 112;
      if (v91 == v89)
      {
        goto LABEL_166;
      }
    }
  }

LABEL_167:
  v124 = v5[19];
  if (v124)
  {
    v15 = 0;
    v14 = 0;
    v17 = __src;
    while (1)
    {
      result = re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::operator[]((v5 + 14), v14);
      v98 = *(result + 16);
      if (v98)
      {
        break;
      }

LABEL_178:
      ++v14;
      v5 = v121;
      if (v14 == v124)
      {
        return result;
      }
    }

    v13 = result;
    v16 = 0;
    v18 = 0;
    v12 = 0;
    while (1)
    {
      v9 = *(v13 + 48);
      if (v9 <= v12)
      {
        break;
      }

      if (*(*(v13 + 56) + v12) == 1)
      {
        v99 = *(v13 + 32) + v16;
        __src[0] = *(v99 + 32);
        __src[1] = *(v99 + 48);
        __src[2] = *(v99 + 64);
        __src[3] = *(v99 + 80);
        v9 = *(v13 + 80);
        if (v9 <= v12)
        {
          goto LABEL_197;
        }

        v100 = (*(v13 + 88) + v18);
        __src[4] = *v100;
        __src[5] = v100[1];
        __src[6] = v100[2];
        __src[7] = v100[3];
        __src[8] = *(v99 + 96);
        v9 = *(v13 + 104);
        if (v9 <= v12)
        {
          goto LABEL_198;
        }

        v101 = *(v99 + 112);
        v102 = *(v99 + 128);
        result = re::DataArray<re::TextureAtlasTile>::get(a2 + 8, *(*(v13 + 112) + 8 * v12));
        v127[0] = *result;
        LODWORD(v127[1]) = *(result + 16);
        v103 = *(result + 20);
        *(v122 + 160) = 1;
        if (v112 <= v15)
        {
          goto LABEL_199;
        }

        v104 = v111 + 192 * v15++;
        *(v104 + 80) = __src[5];
        *(v104 + 96) = __src[6];
        *(v104 + 112) = __src[7];
        *(v104 + 128) = __src[8];
        *(v104 + 16) = __src[1];
        *(v104 + 32) = __src[2];
        *(v104 + 48) = __src[3];
        *(v104 + 64) = __src[4];
        *v104 = __src[0];
        *(v104 + 144) = v101;
        *(v104 + 148) = v102;
        *(v104 + 152) = 3;
        *(v104 + 156) = v127[0];
        *(v104 + 172) = v127[1];
        *(v104 + 176) = v103;
        v98 = *(v13 + 16);
      }

      ++v12;
      v18 += 64;
      v16 += 144;
      if (v12 >= v98)
      {
        goto LABEL_178;
      }
    }

LABEL_194:
    *v134 = 0;
    memset(__src, 0, 80);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v129[0]) = 136315906;
    *(v129 + 4) = "operator[]";
    WORD6(v129[0]) = 1024;
    *(v129 + 14) = 476;
    WORD1(v129[1]) = 2048;
    *(&v129[1] + 4) = v12;
    WORD6(v129[1]) = 2048;
    *(&v129[1] + 14) = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_195:
    v130 = 0u;
    v131 = 0u;
    memset(v129, 0, sizeof(v129));
    v64 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v134 = 136315906;
    *&v134[4] = "operator[]";
    v135 = 1024;
    v136 = 468;
    v137 = 2048;
    v138 = v9;
    v139 = 2048;
    v140 = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_196:
    v130 = 0u;
    v131 = 0u;
    memset(v129, 0, sizeof(v129));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v134 = 136315906;
    *&v134[4] = "operator[]";
    v135 = 1024;
    v136 = 468;
    v137 = 2048;
    v138 = v64;
    v139 = 2048;
    v140 = v13;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_197:
    v130 = 0u;
    v131 = 0u;
    memset(v129, 0, sizeof(v129));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v134 = 136315906;
    *&v134[4] = "operator[]";
    v135 = 1024;
    v136 = 476;
    v137 = 2048;
    v138 = v12;
    v139 = 2048;
    v140 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_198:
    v130 = 0u;
    v131 = 0u;
    memset(v129, 0, sizeof(v129));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v134 = 136315906;
    *&v134[4] = "operator[]";
    v135 = 1024;
    v136 = 476;
    v137 = 2048;
    v138 = v12;
    v139 = 2048;
    v140 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_199:
    v130 = 0u;
    v131 = 0u;
    memset(v129, 0, sizeof(v129));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v134 = 136315906;
    *&v134[4] = "operator[]";
    v135 = 1024;
    v136 = 468;
    v137 = 2048;
    v138 = v15;
    v139 = 2048;
    v140 = v112;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_200:
    v130 = 0u;
    v131 = 0u;
    memset(v129, 0, sizeof(v129));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v134 = 136315906;
    *&v134[4] = "operator[]";
    v135 = 1024;
    v136 = 476;
    v137 = 2048;
    v138 = v18;
    v139 = 2048;
    v140 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_201:
    v130 = 0u;
    v131 = 0u;
    memset(v129, 0, sizeof(v129));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v134 = 136315906;
    *&v134[4] = "operator[]";
    v135 = 1024;
    v136 = 476;
    v137 = 2048;
    v138 = v18;
    v139 = 2048;
    v140 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_202:
    v130 = 0u;
    v131 = 0u;
    memset(v129, 0, sizeof(v129));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v134 = 136315906;
    *&v134[4] = "operator[]";
    v135 = 1024;
    v136 = 476;
    v137 = 2048;
    v138 = v9;
    v139 = 2048;
    v140 = v13;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_203:
    v130 = 0u;
    v131 = 0u;
    memset(v129, 0, sizeof(v129));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v134 = 136315906;
    *&v134[4] = "operator[]";
    v135 = 1024;
    v136 = 476;
    v137 = 2048;
    v138 = v9;
    v139 = 2048;
    v140 = v13;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_204;
  }

  return result;
}

uint64_t re::SmallHashTable<unsigned short,re::LightContextBuilder::LightArrays,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true>::tryGet(uint64_t a1, unsigned __int16 a2)
{
  if (*(a1 + 2876))
  {
    v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * a2) ^ ((0xBF58476D1CE4E5B9 * a2) >> 27));
    re::HashTable<unsigned short,re::LightContextBuilder::LightArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,true>::findEntry<unsigned short>(v7, a1 + 2848, v3 ^ (v3 >> 31));
    if (v8 != 0x7FFFFFFF)
    {
      return *(a1 + 2864) + 352 * v8 + 8;
    }

    return 0;
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    return 0;
  }

  v6 = 352 * v5;
  for (result = a1 + 40; *(result - 8) != a2; result += 352)
  {
    v6 -= 352;
    if (!v6)
    {
      return 0;
    }
  }

  return result;
}

uint64_t re::LightContexts::addPerMeshLightContext(uint64_t a1, unsigned int a2, unint64_t a3, __n128 *a4)
{
  v16 = a2;
  v15 = a3;
  v7 = a4[10].n128_u8[0];
  v8 = *(a1 + 40);
  re::BucketArray<re::LightContext,16ul>::add(a1, a4);
  *(a1 + 288) = (*(a1 + 288) | v7) & 1;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * a2) ^ ((0xBF58476D1CE4E5B9 * a2) >> 27));
  re::HashTable<unsigned short,re::LightContexts::LightContextContents,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::findEntry<unsigned short>(a1 + 56, &v16, v9 ^ (v9 >> 31), &v17);
  if (HIDWORD(v18) == 0x7FFFFFFF)
  {
    v10 = re::HashTable<unsigned short,re::LightContexts::LightContextContents,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::allocEntry(a1 + 56, v18, v17);
    v11 = v16;
    *(v10 + 8) = 0u;
    v12 = v10 + 8;
    *(v10 + 4) = v11;
    *(v10 + 24) = 0u;
    *(v10 + 40) = 0u;
    *(v10 + 56) = 0;
    *(v10 + 52) = 0x7FFFFFFF;
    ++*(a1 + 96);
  }

  else
  {
    v12 = *(a1 + 72) + 72 * HIDWORD(v18) + 8;
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
  result = re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v12 + 8, &v15, v13 ^ (v13 >> 31), &v17);
  if (HIDWORD(v18) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long long,unsigned int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v12 + 8, v18, v17);
    *(result + 8) = v15;
    *(result + 16) = v8;
    ++*(v12 + 48);
  }

  return result;
}

uint64_t re::LightContextBuilder::getMainCameraView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = 0;
      do
      {
        v8 = re::BucketArray<re::DynamicArray<re::CameraView>,4ul>::operator[](a1, v7);
        if (*(v8 + 16))
        {
          return *(v8 + 32);
        }
      }

      while (v6 != ++v7);
    }
  }

  if (a2)
  {
    v9 = *(a2 + 40);
    if (v9)
    {
      v10 = 0;
      do
      {
        v8 = re::BucketArray<re::DynamicArray<re::CameraView>,4ul>::operator[](a2, v10);
        if (*(v8 + 16))
        {
          return *(v8 + 32);
        }
      }

      while (v9 != ++v10);
    }
  }

  if (*(a3 + 40))
  {
    v11 = re::BucketArray<re::DynamicArray<re::CameraView> const*,4ul>::operator[](a3, 0);
LABEL_15:
    v8 = *v11;
    return *(v8 + 32);
  }

  if (*(a3 + 96))
  {
    v11 = re::BucketArray<re::DynamicArray<re::CameraView> const*,4ul>::operator[](a3 + 56, 0);
    goto LABEL_15;
  }

  return 0;
}

__n128 re::DynamicArray<re::SingleCullingFrustum>::add(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*a1)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        re::DynamicArray<re::SingleCullingFrustum>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::SingleCullingFrustum>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + 240 * v5;
  *v11 = 0;
  *(v11 + 8) = 0;
  re::DynamicInlineArray<re::PlaneF,6ul>::move(v11, a2);
  v12 = *(a2 + 112);
  v13 = *(a2 + 128);
  v14 = *(a2 + 160);
  *(v11 + 144) = *(a2 + 144);
  *(v11 + 160) = v14;
  *(v11 + 112) = v12;
  *(v11 + 128) = v13;
  result = *(a2 + 176);
  v16 = *(a2 + 192);
  v17 = *(a2 + 224);
  *(v11 + 208) = *(a2 + 208);
  *(v11 + 224) = v17;
  *(v11 + 176) = result;
  *(v11 + 192) = v16;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}