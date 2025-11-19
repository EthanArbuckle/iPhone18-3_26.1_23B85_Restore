void re::anonymous namespace::traverseTransformHierarchy(void *a1, uint64_t a2, uint64_t *a3, float32x4_t *a4, uint64_t a5, re::DynamicString *a6, int a7)
{
  v148 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v136 = 0;
  v137 = 0;
  v138 = 0;
  re::DynamicString::setCapacity(&v135, 0);
  v13 = [(_anonymous_namespace_ *)v12 name];
  v14 = [v13 UTF8String];

  if (v14)
  {
    v15 = [(_anonymous_namespace_ *)v12 name];
    v121.i64[0] = [v15 UTF8String];
    v121.i64[1] = strlen(v121.i64[0]);
    re::DynamicString::operator=(&v135, &v121);
  }

  else
  {
    v15 = [MEMORY[0x1E696AFB0] UUID];
    v16 = [v15 UUIDString];
    re::DynamicString::assignf(&v135, "Untitled MDLObject %s", [v16 UTF8String]);
  }

  v17 = re::DynamicArray<MDLObject * {__strong}>::DynamicArray(&v130, a3);
  v18 = v132;
  if (v132 >= v131)
  {
    v19 = v132 + 1;
    if (v131 < v132 + 1)
    {
      if (v130)
      {
        v20 = 8;
        if (v131)
        {
          v20 = 2 * v131;
        }

        if (v20 <= v19)
        {
          v21 = v132 + 1;
        }

        else
        {
          v21 = v20;
        }

        re::DynamicArray<REResourceSharingClientObject * {__strong}>::setCapacity(&v130, v21);
      }

      else
      {
        re::DynamicArray<REResourceSharingClientObject * {__strong}>::setCapacity(&v130, v19);
        ++v133;
      }
    }

    v18 = v132;
  }

  v22 = v134;
  v23 = v12;
  *(v22 + 8 * v18) = v23;
  ++v132;
  ++v133;
  v24 = [(_anonymous_namespace_ *)v23 transform];
  v25 = v24;
  if (v24)
  {
    [v24 matrix];
    v26 = 0;
    v27 = *a4;
    v28 = a4[1];
    v29 = a4[2];
    v30 = a4[3];
    v139 = v31;
    v140 = v32;
    v141 = v33;
    v142 = v34;
    do
    {
      *(&v121 + v26) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, COERCE_FLOAT(*(&v139 + v26))), v28, *&v139.f32[v26 / 4], 1), v29, *(&v139 + v26), 2), v30, *(&v139 + v26), 3);
      v26 += 16;
    }

    while (v26 != 64);
    v139 = v121;
    v140 = v122;
    v141 = *v123;
    v142 = v124;
  }

  else
  {
    v35 = a4[1];
    v139 = *a4;
    v140 = v35;
    v36 = a4[3];
    v141 = a4[2];
    v142 = v36;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v110 = v25;
    v38 = v23;
    v109 = v38;
    if (v121.i32[3] == 0x7FFFFFFF)
    {
      v123[0] = 0;
      *&v122 = 0;
      v121 = 0uLL;
      DWORD2(v122) = 0;
      v143 = 0;
      v144 = 0;
      v145 = 0;
      if (HIDWORD(v144) == 0x7FFFFFFF)
      {
        v41 = v38;
        *(v40 + 16) = 0;
        v42 = v40 + 16;
        *(v40 + 8) = v41;
        *(v40 + 48) = 0;
        *(v40 + 24) = 0;
        *(v40 + 32) = 0;
        *(v40 + 40) = 0;
        if (v121.i64[0])
        {
          v43 = v122;
          *(v40 + 16) = v121.i64[0];
          ++*(v40 + 40);
          v44 = v122;
          v45 = *(v40 + 32);
          v106 = v40;
          v107 = v23;
          v108 = v122;
          if (v122 >= v45)
          {
            v55 = v123[0];
            v56 = *(v40 + 32);
            v57 = *(v40 + 48);
            if (v56)
            {
              v58 = 144 * v56;
              do
              {
                re::DynamicString::operator=(v57, v55);
                re::DynamicArray<MDLObject * {__strong}>::operator=(v57 + 32, v55 + 4);
                v59 = *(v55 + 5);
                v60 = *(v55 + 6);
                v61 = *(v55 + 8);
                *(v57 + 7) = *(v55 + 7);
                *(v57 + 8) = v61;
                *(v57 + 5) = v59;
                *(v57 + 6) = v60;
                v55 = (v55 + 144);
                v57 = (v57 + 144);
                v58 -= 144;
              }

              while (v58);
              v57 = *(v40 + 48);
              v56 = *(v40 + 32);
              v55 = v123[0];
            }

            if (v56 != v44)
            {
              v62 = 144 * v56;
              v63 = 144 * v108;
              do
              {
                v64 = (v57 + v62);
                re::DynamicString::DynamicString((v57 + v62), (v55 + v62));
                re::DynamicArray<MDLObject * {__strong}>::DynamicArray(v57 + v62 + 32, (v55 + v62 + 32));
                v65 = *(v55 + v62 + 80);
                v66 = *(v55 + v62 + 96);
                v67 = *(v55 + v62 + 128);
                v64[7] = *(v55 + v62 + 112);
                v64[8] = v67;
                v64[5] = v65;
                v64[6] = v66;
                v55 = (v55 + 144);
                v63 -= 144;
                v57 = (v57 + 144);
              }

              while (v62 != v63);
            }
          }

          else
          {
            v46 = *(v40 + 48);
            if (v122)
            {
              v47 = v123[0];
              v48 = 144 * v122;
              do
              {
                re::DynamicString::operator=(v46, v47);
                re::DynamicArray<MDLObject * {__strong}>::operator=(v46 + 32, v47 + 4);
                v49 = *(v47 + 5);
                v50 = *(v47 + 6);
                v51 = *(v47 + 8);
                *(v46 + 7) = *(v47 + 7);
                *(v46 + 8) = v51;
                *(v46 + 5) = v49;
                *(v46 + 6) = v50;
                v47 = (v47 + 144);
                v46 = (v46 + 144);
                v48 -= 144;
              }

              while (v48);
              v46 = *(v40 + 48);
              v45 = *(v40 + 32);
            }

            if (v44 != v45)
            {
              v52 = (v46 + 144 * v108);
              v53 = 144 * v45 - 144 * v108;
              do
              {
                re::DynamicArray<re::ObjCObject>::deinit(v52 + 32);
                re::DynamicString::deinit(v52);
                v52 = (v52 + 144);
                v53 -= 144;
              }

              while (v53);
            }
          }

          v23 = v107;
          *(v106 + 32) = v108;
        }

        v54 = v23;
        ++*(a2 + 40);
      }

      else
      {
        v54 = v23;
        v42 = *(a2 + 16) + (HIDWORD(v144) << 6) + 16;
      }
    }

    else
    {
      v54 = v23;
      v42 = *(a2 + 16) + (v121.u32[3] << 6) + 16;
    }

    v121 = 0u;
    v122 = 0u;
    re::DynamicString::setCapacity(&v121, 0);
    v125 = 0;
    v123[1] = 0;
    v124.i64[0] = 0;
    v123[0] = 0;
    v124.i32[2] = 0;
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    re::DynamicArray<MDLObject * {__strong}>::operator=(v123, &v130);
    re::DynamicString::operator=(&v121, a6);
    v126 = v139;
    v127 = v140;
    v128 = v141;
    v129 = v142;
    v68 = *(a5 + 8);
    v69 = *(a5 + 16);
    v70 = v68 & 1;
    if (v68)
    {
      v71 = *(a5 + 16);
    }

    else
    {
      v71 = (a5 + 9);
    }

    v72 = strncmp(v71, "mdl__", 5uLL);
    if (v72 || ((v121.i8[8] & 1) != 0 ? (v76 = v121.i64[1] >> 1) : (v76 = v121.i8[8] >> 1), !v76))
    {
      if (v121.i8[8])
      {
        v73 = v121.i64[1] >> 1;
      }

      else
      {
        v73 = v121.i8[8] >> 1;
      }

      if (v73)
      {
        re::DynamicString::append(&v121, ":", 1uLL);
        v68 = *(a5 + 8);
        v69 = *(a5 + 16);
        v70 = v68 & 1;
      }

      if (v70)
      {
        v74 = v69;
      }

      else
      {
        v74 = (a5 + 9);
      }

      if (v70)
      {
        v75 = v68 >> 1;
      }

      else
      {
        v75 = v68 >> 1;
      }

      v72 = re::DynamicString::append(&v121, v74, v75);
    }

    v77 = *(v42 + 8);
    v78 = *(v42 + 16);
    v23 = v54;
    v25 = v110;
    if (v78 >= v77)
    {
      v79 = v78 + 1;
      if (v77 < v78 + 1)
      {
        if (*v42)
        {
          v80 = 2 * v77;
          v81 = v77 == 0;
          v82 = 8;
          if (!v81)
          {
            v82 = v80;
          }

          if (v82 <= v79)
          {
            v83 = v79;
          }

          else
          {
            v83 = v82;
          }
        }

        else
        {
          ++*(v42 + 24);
        }
      }
    }

    v84 = (*(v42 + 32) + 144 * *(v42 + 16));
    re::DynamicString::DynamicString(v84, &v121);
    re::DynamicArray<MDLObject * {__strong}>::DynamicArray(v84 + 32, v123);
    v85 = v126;
    v86 = v127;
    v87 = v129;
    *(v84 + 7) = v128;
    *(v84 + 8) = v87;
    *(v84 + 5) = v85;
    *(v84 + 6) = v86;
    ++*(v42 + 16);
    ++*(v42 + 24);
    re::DynamicArray<re::ObjCObject>::deinit(v123);
    if (v121.i64[0] && (v121.i8[8] & 1) != 0)
    {
      (*(*v121.i64[0] + 40))();
    }
  }

  if (!re::objectIsBlendShapeRoot(v23, v37))
  {
    v88 = [(_anonymous_namespace_ *)v23 instance];
    if (v88)
    {
      re::DynamicString::DynamicString(&v121, a6);
      if (v121.i8[8])
      {
        v89 = v121.i64[1] >> 1;
      }

      else
      {
        v89 = v121.i8[8] >> 1;
      }

      if (v89)
      {
        re::DynamicString::append(&v121, ":", 1uLL);
      }

      v90 = *(a5 + 8);
      if (v90)
      {
        v91 = *(a5 + 16);
      }

      else
      {
        v91 = (a5 + 9);
      }

      v92 = v90 >> 1;
      v93 = v90 >> 1;
      if (*(a5 + 8))
      {
        v94 = v92;
      }

      else
      {
        v94 = v93;
      }

      re::DynamicString::append(&v121, v91, v94);
      if (v121.i64[0] && (v121.i8[8] & 1) != 0)
      {
        (*(*v121.i64[0] + 40))();
      }
    }

    else
    {
      v111 = v25;
      v95 = [(_anonymous_namespace_ *)v23 componentConformingToProtocol:&unk_1F5D59140];
      v96 = v95;
      if (v95)
      {
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v97 = [v95 countByEnumeratingWithState:&v117 objects:v147 count:16];
        if (v97)
        {
          v98 = v97;
          v99 = *v118;
          do
          {
            for (i = 0; i != v98; ++i)
            {
              if (*v118 != v99)
              {
                objc_enumerationMutation(v96);
              }
            }

            v98 = [v96 countByEnumeratingWithState:&v117 objects:v147 count:16];
          }

          while (v98);
        }
      }

      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v101 = [(_anonymous_namespace_ *)v23 children];
      v102 = [v101 countByEnumeratingWithState:&v113 objects:v146 count:16];
      if (v102)
      {
        v103 = v102;
        v104 = *v114;
        do
        {
          for (j = 0; j != v103; ++j)
          {
            if (*v114 != v104)
            {
              objc_enumerationMutation(v101);
            }
          }

          v103 = [v101 countByEnumeratingWithState:&v113 objects:v146 count:16];
        }

        while (v103);
      }

      v25 = v111;
    }
  }

  re::DynamicArray<re::ObjCObject>::deinit(&v130);
  if (v135 && (v136 & 1) != 0)
  {
    (*(*v135 + 40))();
  }
}

void re::collectMeshMaterialsFromMDLMesh(id *a1, uint64_t a2, int a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = [*a1 subdivisionScheme] == 1;
  }

  else
  {
    v5 = 0;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [*a1 submeshes];
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v24 + 1) + 8 * i) material];
        v12 = v11;
        if (v11)
        {
          v13 = [v11 name];

          if (v13)
          {
            v14 = [v12 name];
            v15 = [v14 UTF8String];
          }

          else
          {
            v15 = "missingMaterial.rematerialdefinition";
          }

          v21 = 0;
          v23 = 0;
          v16 = re::ObjCObject::operator=(&v21, v12);
          v22 = *(a2 + 28);
          v23 = v5;
          v19[0] = v5;
          re::DynamicString::DynamicString(v20, &v17);
          re::HashTable<re::ImportMaterialSignature,re::MaterialInfo,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::add(a2, v19, &v21);
          if (v20[0])
          {
            if (v20[1])
            {
              (*(*v20[0] + 40))();
            }

            memset(v20, 0, sizeof(v20));
          }

          if (v17 && (v18 & 1) != 0)
          {
            (*(*v17 + 40))();
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }
}

uint64_t *re::HashTable<MDLMesh * {__strong},re::DynamicArray<re::anonymous namespace::Instance>,re::Hash<MDLMesh * {__strong}>,re::EqualTo<MDLMesh * {__strong}>,true,false>::~HashTable(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          v8 = v6 + v4;
          *(v6 + v4) = v7 & 0x7FFFFFFF;

          v3 = *(a1 + 8);
        }

        v4 += 64;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return a1;
}

uint64_t re::GeomScene::setSkeletons(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (*(result + 88) < v4)
  {
    result = re::DynamicArray<re::GeomSkeleton>::setCapacity((result + 80), v4);
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    v5 = *a2;
    v6 = 168 * v4;
    do
    {
      re::GeomSkeleton::fromSkeleton(v5, v9);
      re::DynamicArray<re::GeomSkeleton>::add((v3 + 80), v9);
      v7.n128_f64[0] = re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v20);
      if (v17)
      {
        if (v18)
        {
          (*(*v17 + 40))(v7.n128_f64[0]);
          v18 = 0;
          v19 = 0;
        }

        v17 = 0;
      }

      if (v14)
      {
        if (v15)
        {
          (*(*v14 + 40))(v7);
          v15 = 0;
          v16 = 0;
        }

        v14 = 0;
      }

      if (v11)
      {
        if (v12)
        {
          (*(*v11 + 40))(v7);
          v12 = 0;
          v13 = 0;
        }

        v11 = 0;
      }

      v8 = re::FixedArray<re::StringID>::deinit(v10);
      if (v9[0])
      {
        if (v9[0])
        {
        }
      }

      LODWORD(v9[0]) = *(v3 + 96) - 1;
      result = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v3 + 120, v5, v9);
      v5 = (v5 + 168);
      v6 -= 168;
    }

    while (v6);
  }

  return result;
}

void re::anonymous namespace::convertMdlMeshToGeomModel(re::GeomModel *a1, id *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = a1;
  v105 = *MEMORY[0x1E69E9840];
  re::GeomModel::GeomModel(a1);
  v12 = *a2;
  v13 = [v12 name];

  v85 = v11;
  v86 = v12;
  if (!v13)
  {
    goto LABEL_15;
  }

  v14 = [v12 name];
  v15 = [v14 UTF8String];
  re::DynamicString::rfind(buf, "_blendShape", &v94);
  if (*buf)
  {
    if (buf[8])
    {
      (*(**buf + 40))();
    }

    *buf = 0u;
    v101 = 0u;
  }

  if (v94 != 1)
  {
LABEL_15:
    v89 = 0;
    goto LABEL_30;
  }

  v16 = [v12 children];
  v17 = [v16 count];

  if (v17)
  {
    v87 = a6;
    v81 = a5;
    v83 = a3;
    v18 = 0;
    while (1)
    {
      v19 = [v86 children];
      v20 = [v19 objectAtIndexedSubscript:v18];
      v21 = [v20 name];
      v22 = [v21 UTF8String];

      re::DynamicString::rfind(buf, "_blendTargets", &v94);
      if (v94)
      {
        break;
      }

      if (*buf && (buf[8] & 1) != 0)
      {
        (*(**buf + 40))();
      }

      if (v17 == ++v18)
      {
        v17 = 0;
        a3 = v83;
        a6 = v87;
        goto LABEL_28;
      }
    }

    v23 = [v86 children];
    v17 = [v23 objectAtIndexedSubscript:v18];

    if (*buf && (buf[8] & 1) != 0)
    {
      (*(**buf + 40))();
    }

    a3 = v83;
    a6 = v87;
    if (v17)
    {
      v79 = [v86 vertexCount];
      v24 = [v86 submeshes];
      v90 = [v24 count];

      v25 = [v17 children];
      v26 = [v25 count];

      if (v26)
      {
        v27 = 0;
        while (1)
        {
          v28 = [v17 children];
          v29 = [v28 objectAtIndexedSubscript:v27];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            break;
          }

          v32 = [v17 children];
          v33 = [v32 objectAtIndexedSubscript:v27];

          v34 = [v33 submeshes];
          v35 = [v34 count];

          if (v35 != v90)
          {
            v75 = *re::pipelineLogObjects(v36);
            if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
            {
LABEL_95:

              v89 = 0;
              a5 = v81;
              a3 = v83;
              a6 = v87;
              goto LABEL_29;
            }

            *buf = 0;
            v76 = "Invalid blend shape definition: Submesh count does not match between target and base.";
LABEL_97:
            _os_log_error_impl(&dword_1E1C61000, v75, OS_LOG_TYPE_ERROR, v76, buf, 2u);
            goto LABEL_95;
          }

          v37 = [v33 vertexCount];
          if (v37 != v79)
          {
            v75 = *re::pipelineLogObjects(v37);
            if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_95;
            }

            *buf = 0;
            v76 = "Invalid blend shape definition: Vertex count does not match between target and base.";
            goto LABEL_97;
          }

          ++v27;
          a6 = v87;
          if (v26 == v27)
          {
            a3 = v83;
            goto LABEL_27;
          }
        }

        v74 = *re::pipelineLogObjects(v31);
        if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E1C61000, v74, OS_LOG_TYPE_ERROR, "Blend shape targets must be meshes.", buf, 2u);
        }

        v89 = 0;
        a5 = v81;
        a3 = v83;
        goto LABEL_29;
      }
    }

LABEL_27:
    a5 = v81;
  }

LABEL_28:
  v17 = v17;
  v89 = v17;
LABEL_29:

  v11 = v85;
  v12 = v86;
LABEL_30:

  v38 = [v12 name];
  if (v38)
  {
    v39 = [v12 name];
    v40 = [v39 UTF8String];
    v41 = strlen(v40);
    *buf = v40;
    *&buf[8] = v41;
    re::DynamicString::operator=(v11, buf);
  }

  else
  {
    *buf = "";
    *&buf[8] = 0;
    re::DynamicString::operator=(v11, buf);
  }

  v42 = [v12 submeshes];
  v43 = [v42 count];

  if (v43 <= 1)
  {
    v44 = 1;
  }

  else
  {
    v44 = v43;
  }

  if (*(v11 + 5) < v44)
  {
    re::DynamicArray<re::GeomMesh>::setCapacity(v11 + 4, v44);
  }

  if (a4)
  {
    if (a5)
    {
      v45 = *(a4 + 16) == 0;
    }

    else
    {
      v45 = 1;
    }

    v46 = !v45;
    if (a6)
    {
LABEL_46:
      v88 = [*a2 subdivisionScheme] == 1;
      if (!v46)
      {
        goto LABEL_59;
      }

      goto LABEL_50;
    }
  }

  else
  {
    v46 = 0;
    if (a6)
    {
      goto LABEL_46;
    }
  }

  v88 = 0;
  if (!v46)
  {
LABEL_59:
    v52 = 0;
    v78 = 0xFFFFFFFFLL;
    v80 = 0;
    goto LABEL_60;
  }

LABEL_50:
  v47 = *(a5 + 16);
  if (!v47)
  {
    goto LABEL_59;
  }

  v48 = 0;
  v49 = *(a5 + 32);
  if (*(v11 + 8))
  {
    v50 = *(v11 + 2);
  }

  else
  {
    v50 = v11 + 9;
  }

  while (1)
  {
    v51 = (*(v49 + 80) & 1) != 0 ? *(v49 + 88) : (v49 + 81);
    if (!strcmp(v51, v50))
    {
      break;
    }

    ++v48;
    v49 += 224;
    if (v47 == v48)
    {
      goto LABEL_59;
    }
  }

  if (v47 <= v48)
  {
    v91 = 0;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v94 = 136315906;
    *v95 = "operator[]";
    *&v95[8] = 1024;
    *&v95[10] = 789;
    v96 = 2048;
    v97 = v48;
    v98 = 2048;
    v99 = v47;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_99:
    v91 = 0;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v94 = 136315906;
    *v95 = "operator[]";
    *&v95[8] = 1024;
    *&v95[10] = 789;
    v96 = 2048;
    v97 = v48;
    v98 = 2048;
    v99 = v47;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v48 = *(v49 + 64);
  v47 = *(a4 + 16);
  if (v47 <= v48)
  {
    goto LABEL_99;
  }

  v78 = *(v49 + 64);
  v80 = v49;
  v52 = *(a4 + 32) + 168 * v48;
LABEL_60:
  v77 = [v12 submeshes];
  v84 = [v77 count];
  if (v84)
  {
    v53 = 0;
    v82 = v52;
    do
    {
      v54 = a3;
      v55 = [v12 submeshes];
      v56 = [v55 objectAtIndexedSubscript:v53];

      v57 = [v56 name];
      if (v57)
      {
        v58 = [v56 name];
        v59 = [v58 UTF8String];
      }

      else
      {
        v59 = "";
      }

      v60 = [v56 material];
      v61 = [v60 name];
      if (v61)
      {
        v62 = [v60 name];
        v63 = [v62 UTF8String];
      }

      else
      {
        v63 = "missingMaterial.rematerialdefinition";
      }

      v64 = v12;
      v65 = v89;
      v66 = [v64 submeshes];
      v67 = [v66 objectAtIndexedSubscript:v53];

      re::internal::createGeomMeshFromMDLSubmesh(v64, v67, buf);
      v69 = v82;
      if (v82)
      {
        re::internal::attachSkinningDataToMesh(v64, v67, v82, v78, v80, buf);
      }

      if (v89)
      {
        re::internal::attachNewBlendShapeDataIfItExistsToGeomMesh(v64, v65, v53, buf, v68);
      }

      else
      {
        re::internal::attachBlendShapeDataIfItExistsToGeomMesh(v64, buf, v69);
      }

      if (v88)
      {
        re::internal::attachOpenSubdivDataToMesh(v64, v67, buf, v70);
      }

      LOBYTE(v94) = v88;
      re::DynamicString::DynamicString(&v95[4], &v91);
      if (v91 && (v92 & 1) != 0)
      {
        (*(*v91 + 40))();
      }

      re::GeomMesh::setName(buf, v59);
      v72 = re::Hash<re::ImportMaterialSignature>::operator()(&v91, &v94);
      a3 = v54;
      re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::findEntry<re::ImportMaterialSignature>(v54, &v94, v72, &v91);
      v12 = v86;
      if (v93 == 0x7FFFFFFF)
      {
        LODWORD(v91) = 0;
        re::DynamicArray<int>::add(v85 + 9, &v91);
      }

      else
      {
        v73 = re::Hash<re::ImportMaterialSignature>::operator()(&v91, &v94);
        re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::findEntry<re::ImportMaterialSignature>(v54, &v94, v73, &v91);
        re::DynamicArray<int>::add(v85 + 9, (*(v54 + 16) + 72 * v93 + 56));
      }

      re::DynamicArray<re::GeomMesh>::add(v85 + 32, buf);
      if (*&v95[4] && (v95[12] & 1) != 0)
      {
        (*(**&v95[4] + 40))();
      }

      re::GeomMesh::~GeomMesh(buf);

      v53 = (v53 + 1);
    }

    while (v84 != v53);
  }
}

uint64_t re::anonymous namespace::consolidateMeshPartsWithSameMaterial<re::HashTable<re::ImportMaterialSignature,re::MaterialInfo,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v8 = a1;
  v74 = *MEMORY[0x1E69E9840];
  v9 = *(a3 + 28);
  v10 = *(a1 + 16);
  v59 = 0;
  v56[1] = 0;
  v57 = 0;
  v55 = 0;
  v56[0] = 0;
  v58 = 0;
  memset(v53, 0, sizeof(v53));
  v54 = 0;
  if (v9 && v10)
  {
    v51 = 0;
    memset(v50, 0, sizeof(v50));
    v52 = 0x7FFFFFFFLL;
    v12 = re::DynamicArray<re::GeomMesh>::setCapacity(v56, v10);
    v13 = v9;
    if (!v14)
    {
      goto LABEL_62;
    }

    v16 = v14;
    v17 = v14;
    if (v9 != 1)
    {
      bzero(v14, v13 * 8 - 8);
      v17 = &v16[v13 - 1];
    }

    *v17 = 0;
    v18 = *(a3 + 32);
    if (v18)
    {
      v19 = 0;
      v20 = *(a3 + 16);
      do
      {
        v21 = *v20;
        v20 += 18;
        if (v21 < 0)
        {
          goto LABEL_13;
        }

        ++v19;
      }

      while (v18 != v19);
      LODWORD(v19) = *(a3 + 32);
    }

    else
    {
      LODWORD(v19) = 0;
    }

LABEL_13:
    if (v19 != v18)
    {
      v22 = *(a3 + 16);
      do
      {
        v23 = *(v22 + 72 * v19 + 56);
        if (v23 >= v9)
        {
          goto LABEL_59;
        }

        v24 = v22 + 72 * v19;
        if (*(v24 + 24))
        {
          v25 = *(v24 + 32);
        }

        else
        {
          v25 = v24 + 25;
        }

        v16[v23] = v25;
        if (v18 <= v19 + 1)
        {
          v26 = v19 + 1;
        }

        else
        {
          v26 = v18;
        }

        v22 = *(a3 + 16);
        while (v26 - 1 != v19)
        {
          LODWORD(v19) = v19 + 1;
          if ((*(v22 + 72 * v19) & 0x80000000) != 0)
          {
            goto LABEL_27;
          }
        }

        LODWORD(v19) = v26;
LABEL_27:
        ;
      }

      while (v19 != v18);
    }

    v46 = a5;
    v47 = v9;
    v45 = a4;
    v27 = 0;
    v48 = v16;
    while (1)
    {
      a4 = *(v8 + 16);
      if (a4 <= v27)
      {
        v60 = 0;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v69 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v61 = 136315906;
        v62 = "operator[]";
        v63 = 1024;
        v64 = 789;
        v65 = 2048;
        v66 = v27;
        v67 = 2048;
        v68 = a4;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_58:
        v9 = v56;
        v60 = 0;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v69 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v61 = 136315906;
        v62 = "operator[]";
        v63 = 1024;
        v64 = 789;
        v65 = 2048;
        v66 = v27;
        v67 = 2048;
        v68 = a4;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_59:
        re::internal::assertLog(4, v15, "assertion failure: '%s' (%s:line %i) ", "(*it).value.index < materialCount", "consolidateMeshPartsWithSameMaterial", 436);
        _os_crash();
        __break(1u);
LABEL_60:
        v60 = 0;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v69 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v61 = 136315906;
        v62 = "operator[]";
        v63 = 1024;
        v64 = 789;
        v65 = 2048;
        v66 = a4;
        v67 = 2048;
        v68 = v9;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_61:
        v60 = 0;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v69 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v61 = 136315906;
        v62 = "operator[]";
        v63 = 1024;
        v64 = 468;
        v65 = 2048;
        v66 = a4;
        v67 = 2048;
        v68 = v47;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_62:
        re::internal::assertLog(4, v15, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
        _os_crash();
        __break(1u);
      }

      a4 = *(a2 + 16);
      if (a4 <= v27)
      {
        goto LABEL_58;
      }

      v28 = (*(v8 + 32) + 736 * v27);
      v49 = *(*(a2 + 32) + 4 * v27);
      v30 = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(v50, &v49);
      v31 = v28[50];
      if (v31)
      {
        v32 = v10;
        v33 = v8;
        v34 = a2;
        v35 = 0;
        v36 = 1;
        do
        {
          v37 = re::internal::GeomAttributeContainer::attributeByIndex((v28 + 44), v35);
          if (*(v37 + 17) == 7)
          {
            v38 = *(v37 + 8);
            v39 = strlen(v38);
            if (v39 >= 0x15)
            {
              v40 = *&v38[v39 - 21] == 0x6154646E656C627CLL && *&v38[v39 - 13] == 0x44736F5074656772;
              if (v40 && *&v38[v39 - 8] == 0x7361746C6544736FLL)
              {
                break;
              }
            }
          }

          v36 = ++v35 < v31;
        }

        while (v31 != v35);
        a2 = v34;
        v8 = v33;
        v10 = v32;
        v16 = v48;
        if (v36)
        {
          goto LABEL_50;
        }
      }

      if (!v30)
      {
        break;
      }

      a4 = *v30;
      v9 = v57;
      if (v57 <= a4)
      {
        goto LABEL_60;
      }

      v42 = (v59 + 736 * a4);
      if (!re::internal::canAppendGeomMeshToGeomMesh(v28, v42, v29))
      {
        goto LABEL_50;
      }

      re::internal::appendGeomMeshToGeomMesh(v28, v42);
LABEL_51:
      if (++v27 == v10)
      {
        v43 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v50);
        a4 = v45;
        a5 = v46;
        goto LABEL_53;
      }
    }

    a4 = v49;
    if (v47 <= v49)
    {
      goto LABEL_61;
    }

    re::GeomMesh::setName(v28, v16[v49]);
    LODWORD(v69) = v57;
    re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::add(v50, &v49, &v69);
LABEL_50:
    re::DynamicArray<re::GeomMesh>::add(v56, v28);
    re::DynamicArray<int>::add(v53, &v49);
    goto LABEL_51;
  }

  re::DynamicArray<re::GeomMesh>::operator=(v56, a1);
  re::DynamicArray<re::RigComponentConstraint>::operator=(v53, a2);
LABEL_53:
  re::DynamicArray<re::GeomMesh>::operator=(a4, v56);
  re::DynamicArray<re::RigComponentConstraint>::operator=(a5, v53);
  if (v53[0] && v55)
  {
    (*(*v53[0] + 40))();
  }

  return re::DynamicArray<re::GeomMesh>::deinit(v56);
}

uint64_t re::convertMDLMeshToGeomModel(id *a1, re::DynamicString *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v30 = 0x7FFFFFFFLL;
  re::collectMeshMaterialsFromMDLMesh(a1, v28, a5[4]);
  v10 = [*a1 vertexAttributeDataForAttributeNamed:@"textureCoordinate"];

  if (v10 && *a5 == 1)
  {
    [*a1 addTangentBasisForTextureCoordinateAttributeNamed:@"textureCoordinate" tangentAttributeNamed:@"tangent" bitangentAttributeNamed:@"bitangent"];
  }

  re::DynamicString::operator=(a2, &v15);
  re::DynamicArray<re::GeomMesh>::operator=(a2 + 32, v19);
  re::DynamicArray<re::RigComponentConstraint>::operator=(a2 + 72, v20);
  re::Optional<re::DynamicArray<re::GeomIndexMap>>::operator=(a2 + 112, v23);
  re::Optional<re::DynamicArray<re::GeomIndexMap>>::operator=(a2 + 160, v25);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a2 + 208, v27);
  re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(v27);
  if (v25[0] == 1)
  {
    re::DynamicArray<re::GeomIndexMap>::deinit(&v26);
  }

  if (v23[0] == 1)
  {
    re::DynamicArray<re::GeomIndexMap>::deinit(&v24);
  }

  if (v20[0])
  {
    if (v22)
    {
      (*(*v20[0] + 40))();
    }

    v22 = 0;
    memset(v20, 0, sizeof(v20));
    ++v21;
  }

  re::DynamicArray<re::GeomMesh>::deinit(v19);
  if (v15 && (v16 & 1) != 0)
  {
    (*(*v15 + 40))();
  }

  if (a5[3] == 1)
  {
    v19[0] = 0;
    v16 = 0;
    v17 = 0;
    v14 = 0;
    v15 = 0;
    v18 = 0;
    memset(v12, 0, sizeof(v12));
    v13 = 0;
    re::DynamicArray<re::GeomMesh>::operator=(a2 + 32, &v15);
    re::DynamicArray<re::RigComponentConstraint>::operator=(a2 + 72, v12);
    if (v12[0] && v14)
    {
      (*(*v12[0] + 40))();
    }

    re::DynamicArray<re::GeomMesh>::deinit(&v15);
  }

  re::HashTable<re::ImportMaterialSignature,re::MaterialInfo,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::deinit(v28);
  return 1;
}

uint64_t re::HashTable<re::ImportMaterialSignature,re::MaterialInfo,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::add(uint64_t a1, char *a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = re::Hash<re::ImportMaterialSignature>::operator()(&v11, a2);
  re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::findEntry<re::ImportMaterialSignature>(a1, a2, v6, &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::ImportMaterialSignature,re::MaterialInfo,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::addInternal<re::ImportMaterialSignature,re::MaterialInfo const&>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 72 * HIDWORD(v9) + 48;
  }
}

uint64_t *re::DynamicArray<re::anonymous namespace::Instance>::~DynamicArray(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = a1[4];
    if (v3)
    {
      v4 = a1[2];
      if (v4)
      {
        v5 = 144 * v4;
        do
        {
          re::DynamicArray<re::ObjCObject>::deinit(v3 + 32);
          re::DynamicString::deinit(v3);
          v3 = (v3 + 144);
          v5 -= 144;
        }

        while (v5);
        v2 = *a1;
        v3 = a1[4];
      }

      (*(*v2 + 40))(v2, v3);
    }

    a1[4] = 0;
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    ++*(a1 + 6);
  }

  return a1;
}

uint64_t re::DynamicArray<MDLObject * {__strong}>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<MDLObject * {__strong}>::copy(a1, a2);
      }

      else
      {
        v6 = *(a1 + 16);
        *(a1 + 16) = 0;
        if (v6)
        {
          v7 = *(a1 + 32);
          v8 = 8 * v6;
          do
          {
            v9 = *v7++;

            v8 -= 8;
          }

          while (v8);
        }
      }

      ++*(a1 + 24);
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<REResourceSharingClientObject * {__strong}>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<MDLObject * {__strong}>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<MDLObject * {__strong}>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<REResourceSharingClientObject * {__strong}>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<MDLObject * {__strong}>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<MDLObject * {__strong}>::copy(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= *(a1 + 16))
  {
    re::DynamicArray<REResourceSharingClientObject * {__strong}>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<MDLObject * {__strong}*,MDLObject * {__strong}*,MDLObject * {__strong}*>(*(a2 + 32), (*(a2 + 32) + 8 * *(a1 + 16)), *(a1 + 32));
    v9 = *(a1 + 16);
    if (v9 != v4)
    {
      v10 = (*(a2 + 32) + 8 * v9);
      v11 = (*(a1 + 32) + 8 * v9);
      v12 = 8 * v4 - 8 * v9;
      do
      {
        v13 = *v10++;
        *v11++ = v13;
        v12 -= 8;
      }

      while (v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<MDLObject * {__strong}*,MDLObject * {__strong}*,MDLObject * {__strong}*>(*(a2 + 32), (*(a2 + 32) + 8 * v4), *(a1 + 32));
    v5 = *(a1 + 16);
    if (v4 != v5)
    {
      v6 = (*(a1 + 32) + 8 * v4);
      v7 = 8 * v5 - 8 * v4;
      do
      {
        v8 = *v6++;

        v7 -= 8;
      }

      while (v7);
    }
  }

  *(a1 + 16) = v4;
}

void std::__copy_impl::operator()[abi:nn200100]<MDLObject * {__strong}*,MDLObject * {__strong}*,MDLObject * {__strong}*>(void **a1, void **a2, id *location)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *v5++;
      objc_storeStrong(location++, v6);
    }

    while (v5 != a2);
  }
}

uint64_t re::HashTable<MDLMesh * {__strong},re::DynamicArray<re::anonymous namespace::Instance>,re::Hash<MDLMesh * {__strong}>,re::EqualTo<MDLMesh * {__strong}>,true,false>::findEntry<MDLMesh * {__strong}>(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
  v4 = v3 ^ (v3 >> 31);
  v5 = *a2;
  LODWORD(v6) = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v7) = 0x7FFFFFFF;
    goto LABEL_9;
  }

  v5 = v4 % *(a2 + 24);
  v7 = *(*(a2 + 8) + 4 * v5);
  if (v7 == 0x7FFFFFFF)
  {
LABEL_8:
    LODWORD(v7) = 0x7FFFFFFF;
    goto LABEL_9;
  }

  v8 = *(a2 + 16);
  if (*(v8 + (v7 << 6) + 8) == a3)
  {
    LODWORD(v6) = *(*(a2 + 8) + 4 * v5);
    goto LABEL_8;
  }

  v6 = *(v8 + (v7 << 6)) & 0x7FFFFFFF;
  if (v6 == 0x7FFFFFFF)
  {
    LODWORD(v6) = 0x7FFFFFFF;
  }

  else if (*(v8 + (v6 << 6) + 8) != a3)
  {
    LODWORD(v9) = *(v8 + (v7 << 6)) & 0x7FFFFFFF;
    while (1)
    {
      LODWORD(v7) = v9;
      v9 = *(v8 + (v6 << 6)) & 0x7FFFFFFF;
      LODWORD(v6) = 0x7FFFFFFF;
      if (v9 == 0x7FFFFFFF)
      {
        break;
      }

      v6 = v9;
      if (*(v8 + (v9 << 6) + 8) == a3)
      {
        LODWORD(v6) = v9;
        break;
      }
    }
  }

LABEL_9:
  *result = v4;
  *(result + 8) = v5;
  *(result + 12) = v6;
  *(result + 16) = v7;
  return result;
}

uint64_t re::HashTable<MDLMesh * {__strong},re::DynamicArray<re::anonymous namespace::Instance>,re::Hash<MDLMesh * {__strong}>,re::EqualTo<MDLMesh * {__strong}>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v32, 0, 36);
          *&v32[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v32, v9, v8);
          v11 = *v32;
          *v32 = *a1;
          *a1 = v11;
          v12 = *&v32[16];
          v13 = *(a1 + 16);
          *&v32[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v32[24];
          *&v32[24] = *(a1 + 24);
          v14 = *&v32[32];
          *(a1 + 24) = v15;
          ++*&v32[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = v13 + v17;
                v21 = *(v19 + 8);
                *(v19 + 8) = 0;
                v13 = *&v32[16];
                v22 = *&v32[16] + v17;
                *(v20 + 48) = 0;
                *(v20 + 24) = 0;
                *(v20 + 32) = 0;
                *(v20 + 40) = 0;
                *(v20 + 8) = v21;
                *(v20 + 16) = 0;
                v23 = *(v22 + 24);
                *(v20 + 16) = *(v22 + 16);
                *(v20 + 24) = v23;
                *(v22 + 16) = 0;
                *(v22 + 24) = 0;
                v24 = *(v20 + 32);
                *(v20 + 32) = *(v22 + 32);
                *(v22 + 32) = v24;
                v25 = *(v20 + 48);
                *(v20 + 48) = *(v22 + 48);
                *(v22 + 48) = v25;
                ++*(v22 + 40);
                ++*(v20 + 40);
                v16 = *&v32[32];
              }

              ++v18;
              v17 += 64;
            }

            while (v18 < v16);
          }
        }
      }

      else
      {
        if (v8)
        {
          v28 = 2 * v7;
        }

        else
        {
          v28 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v26 = *(a1 + 16);
    v27 = *(v26 + (v5 << 6));
  }

  else
  {
    v26 = *(a1 + 16);
    v27 = *(v26 + (v5 << 6));
    *(a1 + 36) = v27 & 0x7FFFFFFF;
  }

  v29 = v26 + (v5 << 6);
  *v29 = v27 | 0x80000000;
  v30 = *(a1 + 8);
  *v29 = *(v30 + 4 * a2) | 0x80000000;
  *(v29 + 56) = a3;
  *(v30 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v26 + (v5 << 6);
}

void *re::DynamicArray<re::anonymous namespace::Instance>::setCapacity(void *result, unint64_t a2)
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
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x90uLL))
        {
          v2 = 144 * a2;
          result = (*(*result + 32))(result, 144 * a2, 16);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 144, a2);
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
        v10 = v8 + 144 * v9;
        v11 = v7;
        do
        {
          *v11 = 0u;
          *(v11 + 1) = 0u;
          v11[3] = *(v8 + 24);
          v12 = *(v8 + 8);
          *v11 = *v8;
          *v8 = 0;
          v13 = *(v8 + 16);
          *(v8 + 24) = 0;
          v15 = v11[1];
          v14 = v11[2];
          v11[1] = v12;
          v11[2] = v13;
          *(v8 + 8) = v15;
          *(v8 + 16) = v14;
          v11[8] = 0;
          *(v11 + 14) = 0;
          v11[5] = 0;
          v11[6] = 0;
          v11[4] = 0;
          v16 = *(v8 + 40);
          v11[4] = *(v8 + 32);
          *(v8 + 32) = 0;
          v11[5] = v16;
          *(v8 + 40) = 0;
          v17 = v11[6];
          v11[6] = *(v8 + 48);
          *(v8 + 48) = v17;
          v18 = v11[8];
          v11[8] = *(v8 + 64);
          *(v8 + 64) = v18;
          ++*(v8 + 56);
          ++*(v11 + 14);
          v19 = *(v8 + 80);
          v20 = *(v8 + 96);
          v21 = *(v8 + 128);
          *(v11 + 7) = *(v8 + 112);
          *(v11 + 8) = v21;
          *(v11 + 5) = v19;
          *(v11 + 6) = v20;
          re::DynamicArray<re::ObjCObject>::deinit(v8 + 32);
          re::DynamicString::deinit(v8);
          v11 += 18;
          v8 += 144;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t *re::DynamicArray<re::GeomSkeleton>::add(_anonymous_namespace_ *this, uint64_t *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::GeomSkeleton>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 160 * v4;
  v6 = *a2;
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v5 = *a2 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 8) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  v7 = a2[3];
  *(v5 + 16) = a2[2];
  *(v5 + 24) = v7;
  a2[2] = 0;
  a2[3] = 0;
  v8 = *(v5 + 32);
  *(v5 + 32) = a2[4];
  a2[4] = v8;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  v9 = a2[6];
  *(v5 + 40) = a2[5];
  *(v5 + 48) = v9;
  a2[5] = 0;
  a2[6] = 0;
  v10 = *(v5 + 56);
  *(v5 + 56) = a2[7];
  a2[7] = v10;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  v11 = a2[9];
  *(v5 + 64) = a2[8];
  *(v5 + 72) = v11;
  a2[8] = 0;
  a2[9] = 0;
  v12 = *(v5 + 80);
  *(v5 + 80) = a2[10];
  a2[10] = v12;
  *(v5 + 88) = 0;
  *(v5 + 96) = 0;
  *(v5 + 104) = 0;
  v13 = a2[12];
  *(v5 + 88) = a2[11];
  *(v5 + 96) = v13;
  a2[11] = 0;
  a2[12] = 0;
  v14 = *(v5 + 104);
  *(v5 + 104) = a2[13];
  a2[13] = v14;
  *(v5 + 112) = 0u;
  v5 += 112;
  *(v5 + 32) = 0;
  *(v5 + 16) = 0u;
  *(v5 + 36) = 0x7FFFFFFFLL;
  result = re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v5, a2 + 14);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::GeomSkeleton::fromSkeleton@<X0>(StringID *a1@<X0>, void *a2@<X8>)
{
  re::StringID::StringID(a2, a1);
  re::FixedArray<re::StringID>::FixedArray(a2 + 2, &a1[4].var1);
  re::FixedArray<unsigned int>::FixedArray(a2 + 5, &a1[6]);
  re::FixedArray<re::GenericSRT<float>>::FixedArray(a2 + 8, &a1[3]);
  re::FixedArray<re::Matrix4x4<float>>::FixedArray(a2 + 11, &a1[1].var1);

  return re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::HashTable((a2 + 14), &a1[7].var1);
}

void *re::DynamicArray<re::GeomSkeleton>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::GeomSkeleton>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::GeomSkeleton>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t re::Optional<re::DynamicArray<re::GeomIndexMap>>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v3 = a1 + 8;
    if (*a2)
    {
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v3, a2 + 8);
    }

    else
    {
      re::DynamicArray<re::GeomIndexMap>::deinit(v3);
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    *(a1 + 40) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *(a1 + 32) = 0;
    v4 = *(a2 + 16);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v4;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = *(a1 + 24);
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 24) = v5;
    v6 = *(a1 + 40);
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 40) = v6;
    ++*(a2 + 32);
    ++*(a1 + 32);
  }

  return a1;
}

uint64_t re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(uint64_t a1, _DWORD *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 24 * v6 + 8;
  }
}

uint64_t re::HashTable<re::ImportMaterialSignature,re::MaterialInfo,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::addInternal<re::ImportMaterialSignature,re::MaterialInfo const&>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = re::HashTable<re::ImportMaterialSignature,re::MaterialInfo,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  *(v7 + 8) = *a3;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 40) = *(a3 + 32);
  v8 = *(a3 + 16);
  *(v7 + 16) = *(a3 + 8);
  *(a3 + 8) = 0;
  v9 = *(a3 + 24);
  *(a3 + 32) = 0;
  v11 = *(v7 + 24);
  v10 = *(v7 + 32);
  *(v7 + 24) = v8;
  *(v7 + 32) = v9;
  *(a3 + 16) = v11;
  *(a3 + 24) = v10;
  *(v7 + 48) = *a4;
  v7 += 48;
  v12 = *(a4 + 12);
  *(v7 + 8) = *(a4 + 8);
  *(v7 + 12) = v12;
  ++*(a1 + 40);
  return v7;
}

uint64_t re::HashTable<re::ImportMaterialSignature,re::MaterialInfo,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v33, 0, 36);
          *&v33[36] = 0x7FFFFFFFLL;
          re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(v33, v9, v8);
          v11 = *v33;
          *v33 = *a1;
          *a1 = v11;
          v12 = *&v33[16];
          v13 = *(a1 + 16);
          *&v33[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v33[24];
          *&v33[24] = *(a1 + 24);
          v14 = *&v33[32];
          *(a1 + 24) = v15;
          ++*&v33[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 32;
            do
            {
              v19 = (v13 + v18);
              if ((*(v13 + v18 - 32) & 0x80000000) != 0)
              {
                v20 = re::HashTable<re::ImportMaterialSignature,re::MaterialInfo,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::allocEntry(a1, v19[4] % *(a1 + 24));
                *(v20 + 8) = *(v19 - 24);
                *(v20 + 16) = 0u;
                *(v20 + 32) = 0u;
                *(v20 + 40) = v19[1];
                v21 = *(v19 - 1);
                *(v20 + 16) = *(v19 - 2);
                *(v19 - 2) = 0;
                v22 = *v19;
                v19[1] = 0;
                v24 = *(v20 + 24);
                v23 = *(v20 + 32);
                *(v20 + 24) = v21;
                *(v20 + 32) = v22;
                *(v19 - 1) = v24;
                *v19 = v23;
                v13 = *&v33[16];
                v25 = *&v33[16] + v18;
                v26 = *(*&v33[16] + v18 + 16);
                *(v25 + 16) = 0;
                *(v20 + 48) = v26;
                LODWORD(v26) = *(v25 + 24);
                *(v20 + 60) = *(v25 + 28);
                *(v20 + 56) = v26;
              }

              ++v17;
              v18 += 72;
            }

            while (v17 < v16);
          }

          re::HashTable<re::ImportMaterialSignature,re::MaterialInfo,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::deinit(v33);
        }
      }

      else
      {
        if (v8)
        {
          v29 = 2 * v7;
        }

        else
        {
          v29 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v27 = *(a1 + 16);
    v28 = *(v27 + 72 * v5);
  }

  else
  {
    v27 = *(a1 + 16);
    v28 = *(v27 + 72 * v5);
    *(a1 + 36) = v28 & 0x7FFFFFFF;
  }

  v30 = v27 + 72 * v5;
  *v30 = v28 | 0x80000000;
  v31 = *(a1 + 8);
  *v30 = *(v31 + 4 * a2) | 0x80000000;
  *(v31 + 4 * a2) = v5;
  *(v30 + 64) = a3;
  ++*(a1 + 28);
  return v27 + 72 * v5;
}

void re::importPhysicsMaterial(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = [v3 property:@"preliminary:physics:material:restitution"];
  v5 = v4;
  if (v4 && ([(_anonymous_namespace_ *)v4 data], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [v3 property:@"preliminary:physics:material:friction:static"];
    v8 = v7;
    if (v7 && ([(_anonymous_namespace_ *)v7 data], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
    {
      v10 = [v3 property:@"preliminary:physics:material:friction:dynamic"];
      v11 = v10;
      if (v10 && ([(re::PhysicsFactory *)v10 data], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
      {
        v14 = re::PhysicsFactory::defaultFactory(v10, v13);
        v15 = re::PhysicsFactory::m_defaultAllocator;
        [(_anonymous_namespace_ *)v5 doubleValue];
        v17 = v16;
        [(_anonymous_namespace_ *)v8 doubleValue];
        v19 = v18;
        [(re::PhysicsFactory *)v11 doubleValue];
        v21 = v20;
        v22 = (*(*v14 + 16))(v14, v15, v17, v19, v21);
        *a2 = 1;
        *(a2 + 8) = v22;
      }

      else
      {
        v29 = v32;
        v30 = v33;
        v31 = v34;
        *a2 = 0;
        *(a2 + 8) = 1003;
        *(a2 + 16) = &re::PhysicsErrorCategory(void)::instance;
        *(a2 + 24) = v29;
        *(a2 + 40) = v30;
        *(a2 + 48) = v31;
      }
    }

    else
    {
      v26 = v32;
      v27 = v33;
      v28 = v34;
      *a2 = 0;
      *(a2 + 8) = 1002;
      *(a2 + 16) = &re::PhysicsErrorCategory(void)::instance;
      *(a2 + 24) = v26;
      *(a2 + 40) = v27;
      *(a2 + 48) = v28;
    }
  }

  else
  {
    v23 = v32;
    v24 = v33;
    v25 = v34;
    *a2 = 0;
    *(a2 + 8) = 1001;
    *(a2 + 16) = &re::PhysicsErrorCategory(void)::instance;
    *(a2 + 24) = v23;
    *(a2 + 40) = v24;
    *(a2 + 48) = v25;
  }
}

void re::importPhysicsCollider(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 property:@"preliminary:physics:collider:convexShape"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 data];

    if (v5)
    {
      v6 = [v4 targetObject];
      if (v6)
      {
        if (v21.u8[0] != 1)
        {
          v15 = v18;
          v16 = v19;
          v17 = v20;
          *a2 = 0;
          *(a2 + 16) = 3004;
          *(a2 + 24) = &re::PhysicsErrorCategory(void)::instance;
          *(a2 + 32) = v15;
          *(a2 + 48) = v16;
          *(a2 + 56) = v17;
          if (v23 && (BYTE8(v23) & 1) != 0)
          {
            (*(*v23 + 40))();
          }

          goto LABEL_9;
        }

        v8 = v22;
        v9 = v23;
        v10 = v24;
        v11 = v25;
        *a2 = 1;
        *(a2 + 16) = v8;
        *(a2 + 32) = v9;
      }

      else
      {
        v14 = v21;
        v11 = *(&v22 + 1);
        v10 = v22;
        *a2 = 0;
        *(a2 + 16) = 3000;
        *(a2 + 24) = &re::PhysicsErrorCategory(void)::instance;
        *(a2 + 32) = v14;
      }

      *(a2 + 48) = v10;
      *(a2 + 56) = v11;
LABEL_9:

      goto LABEL_10;
    }
  }

  v12 = v21;
  v13 = v22;
  *a2 = 0;
  *(a2 + 16) = 3001;
  *(a2 + 24) = &re::PhysicsErrorCategory(void)::instance;
  *(a2 + 32) = v12;
  *(a2 + 48) = v13;
LABEL_10:
}

void re::anonymous namespace::createCollisionShapeFromNode(float32x4_t *a1, void *a2)
{
  v3 = a2;
  [MEMORY[0x1E69DED88] localTransformWithNode:v3 time:0.0];
  v113 = v4;
  v114 = v5;
  v115 = v6;
  v116 = v7;
  v106.i64[0] = 0x3F8000003F800000;
  v106.i64[1] = 1065353216;
  v107.i64[0] = 0;
  v107.i64[1] = 0x3F80000000000000;
  v108 = 0uLL;
  re::decomposeScaleRotationTranslation<float>(&v113, &v106, &v107, &v108);
  v104 = v107;
  v105 = v108;
  v8 = [v3 type];
  v9 = *MEMORY[0x1E69DEE48];

  if (v8 == v9)
  {
    v34 = [v3 property:@"height"];
    if (!v34)
    {
      v57 = v113;
      v59 = *(&v114 + 1);
      v58 = v114;
      a1->i8[0] = 0;
      v60 = 3005;
      goto LABEL_30;
    }

    v35 = v34;
    v36 = [v3 property:@"radius"];
    v37 = [v3 property:@"axis"];
    v38 = v37;
    if (v37)
    {
      v39 = [v37 stringValue];
      v40 = [v39 isEqualToString:@"X"];

      if (v40)
      {
        _Q5 = v104;
        v42 = vextq_s8(vuzp1q_s32(_Q5, _Q5), v104, 0xCuLL);
        v43.i64[0] = 0x8000000080000000;
        v43.i64[1] = 0x8000000080000000;
        v44 = vmlaq_f32(vmulq_f32(v104, v43), 0, v42);
        v45 = vaddq_f32(v44, v44);
        v46 = vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL);
        v47 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL), vnegq_f32(v104)), v46, v42);
        v105 = vaddq_f32(v105, vaddq_f32(vaddq_f32(vmulq_laneq_f32(v46, v104, 3), 0), vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL)));
        v48 = vmulq_f32(v104, xmmword_1E30714C0);
        v49 = xmmword_1E30714D0;
LABEL_25:
        _Q1 = vmlaq_f32(v48, v49, v42);
        v71 = vmlaq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL), v49, _Q5, 3), vdupq_n_s32(0x3F3504F3u), _Q5);
        _S2 = 1060439283;
        __asm { FMLA            S1, S2, V5.S[3] }

        v71.i32[3] = _Q1.i32[0];
        v104 = v71;
        goto LABEL_26;
      }

      v63 = [v38 stringValue];
      v64 = [v63 isEqualToString:@"Z"];

      if (!v64)
      {
LABEL_26:
        v77 = re::globalAllocators(v37);
        v52 = (*(*v77[2] + 32))(v77[2], 24, 8);
        *(v52 + 8) = 4;
        *v52 = &unk_1F5CC9468;
        [v36 doubleValue];
        *&v78 = v78;
        *(v52 + 16) = LODWORD(v78);
        [v35 doubleValue];
        *&v79 = v79 + (*(v52 + 16) + *(v52 + 16));
        *(v52 + 12) = LODWORD(v79);

        goto LABEL_27;
      }
    }

    _Q5 = v104;
    v42 = vextq_s8(vuzp1q_s32(_Q5, _Q5), v104, 0xCuLL);
    v65.i64[0] = 0x8000000080000000;
    v65.i64[1] = 0x8000000080000000;
    v66 = vmlaq_f32(vmulq_f32(v104, v65), 0, v42);
    v67 = vaddq_f32(v66, v66);
    v68 = vextq_s8(vuzp1q_s32(v67, v67), v67, 0xCuLL);
    v69 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v68, v68), v68, 0xCuLL), vnegq_f32(v104)), v68, v42);
    v105 = vaddq_f32(v105, vaddq_f32(vaddq_f32(vmulq_laneq_f32(v68, v104, 3), 0), vextq_s8(vuzp1q_s32(v69, v69), v69, 0xCuLL)));
    v48 = vmulq_f32(v104, xmmword_1E30714A0);
    v49 = xmmword_1E30714B0;
    goto LABEL_25;
  }

  v10 = [v3 type];
  v11 = *MEMORY[0x1E69DEE90];

  if (v10 == v11)
  {
    v50 = [v3 property:@"radius"];
    if (v50)
    {
      v35 = v50;
      v51 = re::globalAllocators(v50);
      v52 = (*(*v51[2] + 32))(v51[2], 16, 8);
      *(v52 + 8) = 2;
      *v52 = &unk_1F5CC9628;
      [v35 doubleValue];
      *&v53 = v53;
      *(v52 + 12) = LODWORD(v53);
LABEL_27:

LABEL_28:
      a1->i8[0] = 1;
      a1[1].i64[0] = v52;
      a1[2] = v105;
      a1[3] = v104;
LABEL_31:

      return;
    }

    v57 = v113;
    v59 = *(&v114 + 1);
    v58 = v114;
    a1->i8[0] = 0;
    v60 = 3007;
LABEL_30:
    a1[1].i64[0] = v60;
    a1[1].i64[1] = &re::PhysicsErrorCategory(void)::instance;
    a1[2] = v57;
    a1[3].i64[0] = v58;
    a1[3].i64[1] = v59;
    goto LABEL_31;
  }

  v12 = [v3 type];
  v13 = *MEMORY[0x1E69DEE58];

  if (v12 == v13)
  {
    v54 = [v3 property:@"size"];
    if (v54)
    {
      v35 = v54;
      v55 = re::globalAllocators(v54);
      v52 = (*(*v55[2] + 32))(v55[2], 32, 16);
      *(v52 + 8) = 3;
      *v52 = &unk_1F5CC9400;
      *(v52 + 16) = 0u;
      [v35 doubleValue];
      *&v56 = v56;
      *(v52 + 16) = vmulq_n_f32(v106, *&v56);
      goto LABEL_27;
    }

    v57 = v113;
    v59 = *(&v114 + 1);
    v58 = v114;
    a1->i8[0] = 0;
    v60 = 3009;
    goto LABEL_30;
  }

  v14 = [v3 typeName];
  v15 = [v14 stringValue];
  if ([v15 isEqualToString:@"Preliminary_InfiniteColliderPlane"])
  {

LABEL_6:
    v16 = v3;
    [MEMORY[0x1E69DED88] localTransformWithNode:v16 time:0.0];
    v113 = v17;
    v114 = v18;
    v115 = v19;
    v116 = v20;
    v109.i64[0] = 0x3F8000003F800000;
    v109.i64[1] = 1065353216;
    v110 = 0;
    v111 = 0x3F80000000000000;
    __src = 0uLL;
    v21 = re::decomposeScaleRotationTranslation<float>(&v113, &v109, &v110, &__src);
    v22 = __src;
    v24 = v110;
    v23 = v111;
    v25 = re::globalAllocators(v21);
    v26 = (*(*v25[2] + 32))(v25[2], 48, 16);
    *(v26 + 8) = 6;
    *v26 = &unk_1F5CC95B8;
    *(v26 + 16) = 0u;
    v27 = [v16 property:@"position"];
    v28 = v27;
    if (v27)
    {
      [v27 float3Value];
      v30 = vmulq_f32(v29, v29);
      *(v26 + 32) = sqrtf(v30.f32[2] + vaddv_f32(*v30.f32));
    }

    v31 = [v16 property:@"normal"];
    v32 = v31;
    if (v31)
    {
      [v31 float3Value];
      *(v26 + 16) = v33;
    }

    a1->i8[0] = 1;
    a1[1].i64[0] = v26;
    a1[2] = v22;
    a1[3].i64[0] = v24;
    a1[3].i64[1] = v23;

    goto LABEL_31;
  }

  v61 = [v3 type];
  v62 = v61;
  if (v61 == *MEMORY[0x1E69DEE70])
  {
    IsSceneGroundPlane = re::importPhysicsIsSceneGroundPlane(v3);

    if (IsSceneGroundPlane)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v81 = [v3 type];
  v82 = *MEMORY[0x1E69DEE98];

  v84 = *(*re::globalAllocators(v83)[2] + 32);
  if (v81 != v82)
  {
    v52 = v84();
    *(v52 + 8) = 1;
    *v52 = &unk_1F5CC9580;
    goto LABEL_28;
  }

  v52 = v84();
  *(v52 + 8) = 7;
  *v52 = &unk_1F5D0B9F0;
  *(v52 + 16) = 0;
  *(v52 + 24) = 0;
  *(v52 + 32) = 0;
  __src.i64[0] = 0;
  v109.i64[1] = 0;
  v110 = 0;
  LODWORD(v111) = 0;
  re::DynamicArray<re::Pair<re::AABB,unsigned int,true>>::setCapacity(&v109, 1uLL);
  v85 = v111 + 1;
  LODWORD(v111) = v111 + 1;
  v86 = [v3 loadedChildIterator];
  v87 = [v86 nextObject];
  if (v87)
  {
    v89 = v87;
    do
    {
      if (v113.u8[0] == 1)
      {
        v91 = v110;
        if (v110 >= v109.i64[1])
        {
          v92 = v110 + 1;
          if (v109.i64[1] < v110 + 1)
          {
            if (v109.i64[0])
            {
              v93 = 2 * v109.i64[1];
              if (!v109.i64[1])
              {
                v93 = 8;
              }

              if (v93 <= v92)
              {
                v94 = v110 + 1;
              }

              else
              {
                v94 = v93;
              }

              re::DynamicArray<re::Pair<re::AABB,unsigned int,true>>::setCapacity(&v109, v94);
              v85 = v111;
            }

            else
            {
              re::DynamicArray<re::Pair<re::AABB,unsigned int,true>>::setCapacity(&v109, v92);
              v85 = v111 + 1;
            }
          }

          v91 = v110;
        }

        v95 = (__src.i64[0] + 48 * v91);
        *v95 = v114;
        v95[1] = v115;
        v95[2] = v116;
        v110 = v91 + 1;
        LODWORD(v111) = ++v85;
      }

      else if (v115 && (BYTE8(v115) & 1) != 0)
      {
        (*(*v115 + 40))(v115, v116);
      }

      v96 = [v86 nextObject];

      v89 = v96;
    }

    while (v96);
  }

  v97 = __src.i64[0];
  v98 = v110;
  if (*(v52 + 16))
  {
    goto LABEL_61;
  }

  if (!v110)
  {
    goto LABEL_64;
  }

  *(v52 + 24) = v98;
  if (v98 >= 0x555555555555556)
  {
LABEL_69:
    re::internal::assertLog(6, v99, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 48, v98);
    _os_crash();
    __break(1u);
    goto LABEL_70;
  }

  *(v52 + 32) = v100;
  if (v100)
  {
    v101 = v98 - 1;
    if (v98 != 1)
    {
      do
      {
        *v100 = 0;
        v100[2] = 0;
        v100[3] = 0;
        v100[4] = 0;
        v100[5] = 0x3F80000000000000;
        v100 += 6;
        --v101;
      }

      while (v101);
    }

    *v100 = 0;
    v100[2] = 0;
    v100[3] = 0;
    v100[4] = 0;
    v100[5] = 0x3F80000000000000;
LABEL_61:
    if (*(v52 + 24) == v98)
    {
      if (v98)
      {
        memmove(*(v52 + 32), v97, 48 * v98);
LABEL_65:

        if (v109.i64[0] && __src.i64[0])
        {
          (*(*v109.i64[0] + 40))();
        }

        goto LABEL_28;
      }

LABEL_64:
      v102 = re::internal::destroyPersistent<re::CompoundShapeDataWorkaround>(v52);
      v103 = re::globalAllocators(v102);
      v52 = (*(*v103[2] + 32))(v103[2], 16, 8);
      *(v52 + 8) = 1;
      *v52 = &unk_1F5CC9580;
      goto LABEL_65;
    }

    re::internal::assertLog(4, v88, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
    _os_crash();
    __break(1u);
    goto LABEL_69;
  }

LABEL_70:
  re::internal::assertLog(4, v88, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
  _os_crash();
  __break(1u);
}

void re::importPhysicsRigidBody(void *a1@<X0>, int32x4_t *a2@<X8>)
{
  v3 = [a1 property:@"preliminary:physics:rigidBody:mass"];
  v4 = v3;
  if (v3 && ([(_anonymous_namespace_ *)v3 data], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    [(_anonymous_namespace_ *)v4 floatValue];
    a2[1].i64[0] = 0;
    a2[1].i64[1] = 0;
    a2[2].i64[0] = 0;
    a2[2].i64[1] = 0x3F80000000000000;
    a2[3] = vdupq_n_s32(0x3DCCCCCDu);
    a2[4].i32[0] = v6;
    a2->i8[0] = 1;
  }

  else
  {
    v7 = v10;
    v8 = v11;
    v9 = v12;
    a2->i8[0] = 0;
    a2[1].i64[0] = 4001;
    a2[1].i64[1] = &re::PhysicsErrorCategory(void)::instance;
    a2[2] = v7;
    a2[3].i64[0] = v8;
    a2[3].i64[1] = v9;
  }
}

uint64_t re::importPhysicsIsSceneGroundPlane(void *a1)
{
  v1 = a1;
  v2 = [v1 metadataWithKey:@"preliminary_isSceneGroundPlane"];
  if (v2 || ([v1 customMetadataWithKey:@"preliminary_isSceneGroundPlane"], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = v2;
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t re::importPhysicsCollidesWithEnvironment(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
    while (1)
    {
      v4 = [v2 metadataWithKey:@"kind"];
      v5 = [v4 stringValue];
      v6 = [v5 isEqual:@"sceneLibrary"];

      if (v6)
      {
LABEL_7:
        v11 = 0;
        goto LABEL_11;
      }

      v7 = [v3 metadataWithKey:@"preliminary_collidesWithEnvironment"];
      if ([v7 BOOLValue])
      {
        break;
      }

      v8 = [v3 customMetadataWithKey:@"preliminary_collidesWithEnvironment"];
      v9 = [v8 BOOLValue];

      if (v9)
      {
        goto LABEL_10;
      }

      v10 = [v3 parent];

      v3 = v10;
      if (!v10)
      {
        goto LABEL_7;
      }
    }

LABEL_10:
    v11 = 1;
LABEL_11:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

re *re::internal::destroyPersistent<re::CompoundShapeDataWorkaround>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    re::CompoundShapeDataWorkaround::~CompoundShapeDataWorkaround(v1);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

void re::CompoundShapeDataWorkaround::~CompoundShapeDataWorkaround(re::CompoundShapeDataWorkaround *this)
{
  re::CompoundShapeDataWorkaround::~CompoundShapeDataWorkaround(this);

  JUMPOUT(0x1E6906520);
}

{
  v3 = (this + 24);
  v2 = *(this + 3);
  if (v2)
  {
    v4 = *(this + 4);
    v5 = 48 * v2;
    do
    {
      v6 = *v4;
      v4 += 6;
      re::internal::destroyPersistent<re::CollisionShapeData>("~CompoundShapeDataWorkaround", 47, v6);
      v5 -= 48;
    }

    while (v5);
  }

  v7 = *(this + 2);
  if (v7)
  {
    if (*v3)
    {
      (*(*v7 + 40))(v7, *(this + 4));
      *v3 = 0;
      v3[1] = 0;
    }

    *(this + 2) = 0;
  }
}

const char *re::getColorGamutName(const char *this, const __CFString *a2)
{
  if (this)
  {
    v2 = this;
    if (CFEqual(this, *MEMORY[0x1E695F1B0]) || CFEqual(v2, *MEMORY[0x1E695F108]) || CFEqual(v2, *MEMORY[0x1E695F110]) || CFEqual(v2, *MEMORY[0x1E695F1C0]))
    {
      return "sRGB";
    }

    else if (CFEqual(v2, *MEMORY[0x1E695F0B8]) || CFEqual(v2, *MEMORY[0x1E695F198]) || CFEqual(v2, *MEMORY[0x1E695F0D8]) || CFEqual(v2, *MEMORY[0x1E695F0F0]) || CFEqual(v2, *MEMORY[0x1E695F0C8]) || CFEqual(v2, *MEMORY[0x1E695F0C0]))
    {
      return "DisplayP3";
    }

    else if (CFEqual(v2, *MEMORY[0x1E695F098]))
    {
      return "ACEScg";
    }

    else if (CFEqual(v2, *MEMORY[0x1E695F180]))
    {
      return "BT709";
    }

    else if (CFEqual(v2, *MEMORY[0x1E695F150]) || CFEqual(v2, *MEMORY[0x1E695F0E8]) || CFEqual(v2, *MEMORY[0x1E695F100]))
    {
      return "BT2020";
    }

    else if (CFEqual(v2, *MEMORY[0x1E695F0B0]))
    {
      return "DCIP3";
    }

    else if (CFEqual(v2, *MEMORY[0x1E695F178]) || CFEqual(v2, *MEMORY[0x1E695F170]))
    {
      return "BT2100";
    }

    else if (CFEqual(v2, *MEMORY[0x1E695F0A0]))
    {
      return "Adobe-RGB-1998";
    }

    else if (CFEqual(v2, *MEMORY[0x1E695F148]))
    {
      return "CIE-1931-XYZ";
    }

    else
    {
      return 0;
    }
  }

  return this;
}

const char *re::getColorTransferName(const char *this, const __CFString *a2)
{
  if (this)
  {
    v2 = this;
    if (CFEqual(this, *MEMORY[0x1E695F110]) || CFEqual(v2, *MEMORY[0x1E695F1C0]) || CFEqual(v2, *MEMORY[0x1E695F0B8]) || CFEqual(v2, *MEMORY[0x1E695F0D8]))
    {
      return "sRGB";
    }

    else if (CFEqual(v2, *MEMORY[0x1E695F1B0]) || CFEqual(v2, *MEMORY[0x1E695F108]) || CFEqual(v2, *MEMORY[0x1E695F198]) || CFEqual(v2, *MEMORY[0x1E695F0F0]) || CFEqual(v2, *MEMORY[0x1E695F098]) || CFEqual(v2, *MEMORY[0x1E695F100]))
    {
      return "linear";
    }

    else if (CFEqual(v2, *MEMORY[0x1E695F180]) || CFEqual(v2, *MEMORY[0x1E695F150]) || CFEqual(v2, *MEMORY[0x1E695F0E8]))
    {
      return "ITU";
    }

    else if (CFEqual(v2, *MEMORY[0x1E695F178]) || CFEqual(v2, *MEMORY[0x1E695F0C8]))
    {
      return "PQ";
    }

    else
    {
      v3 = CFEqual(v2, *MEMORY[0x1E695F170]);
      this = "HLG";
      if (!v3)
      {
        v4 = CFEqual(v2, *MEMORY[0x1E695F0C0]);
        this = "HLG";
        if (!v4)
        {
          return 0;
        }
      }
    }
  }

  return this;
}

uint64_t re::getColorSpaceName(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *a1;
  v5 = *(a1 + 8);
  {
    {
      {
        v19 = *(a2 + 8);
        v20 = MEMORY[0x1E695F0B0];
LABEL_57:
        v21 = *v20;
        v22 = v19 == 0;
        goto LABEL_64;
      }

      {
        {
          v19 = *(a2 + 8);
          v20 = MEMORY[0x1E695F0A0];
        }

        else
        {
          {
            {
              v7 = *(a2 + 8);
              {
                v8 = MEMORY[0x1E695F098];
                return *v8;
              }
            }

            return 0;
          }

          v19 = *(a2 + 8);
          v20 = MEMORY[0x1E695F148];
        }

        goto LABEL_57;
      }

      v13 = *(a2 + 8);
      if (v13)
      {
        v14 = *a2;
        {
          {
            {
              v8 = MEMORY[0x1E695F178];
              return *v8;
            }

            if (strncmp(v14, "HLG", v13))
            {
              return 0;
            }

            v12 = MEMORY[0x1E695F170];
            goto LABEL_63;
          }

          v8 = MEMORY[0x1E695F100];
          v18 = MEMORY[0x1E695F1A8];
LABEL_72:
          if (!a3)
          {
            v8 = v18;
          }

          return *v8;
        }

        v8 = MEMORY[0x1E695F0E8];
      }

      else
      {
        v8 = MEMORY[0x1E695F100];
      }

      v18 = MEMORY[0x1E695F150];
      goto LABEL_72;
    }

    v15 = *(a2 + 8);
    if (v15)
    {
      v16 = *a2;
      {
        v8 = MEMORY[0x1E695F0F0];
        v18 = MEMORY[0x1E695F198];
        goto LABEL_72;
      }

      {
        {
          v8 = MEMORY[0x1E695F0C8];
          return *v8;
        }

        if (strncmp(v16, "HLG", v15))
        {
          return 0;
        }

        v12 = MEMORY[0x1E695F0C0];
        goto LABEL_63;
      }

      v8 = MEMORY[0x1E695F0D8];
    }

    else
    {
      v8 = MEMORY[0x1E695F0F0];
    }

    v18 = MEMORY[0x1E695F0B8];
    goto LABEL_72;
  }

  v9 = *(a2 + 8);
  if (!v9)
  {
    {
      v8 = MEMORY[0x1E695F180];
      return *v8;
    }

    v8 = MEMORY[0x1E695F108];
    goto LABEL_51;
  }

  v10 = *a2;
  {
    v8 = MEMORY[0x1E695F108];
    v18 = MEMORY[0x1E695F1B0];
    goto LABEL_72;
  }

  {
    v8 = MEMORY[0x1E695F110];
LABEL_51:
    v18 = MEMORY[0x1E695F1C0];
    goto LABEL_72;
  }

  if (strncmp(v10, "ITU", v9))
  {
    return 0;
  }

  v12 = MEMORY[0x1E695F180];
LABEL_63:
  v21 = *v12;
  v22 = v11 == 0;
LABEL_64:
  if (v22)
  {
    return v21;
  }

  else
  {
    return 0;
  }
}

uint64_t re::readStandardKTXMetadata(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = *MEMORY[0x1E69E9840];
  memset(__n_4, 0, 39);
  *a3 = 0;
  *(a3 + 8) = 0;
  v5 = *&__n_4[23];
  *(a3 + 16) = *&__n_4[7];
  *(a3 + 32) = v5;
  if (*(a3 + 48) == 1)
  {
    *(a3 + 48) = 0;
  }

  *&__n_4[32] = 0;
  memset(__n_4, 0, 28);
  v6 = (*(*a1 + 40))(a1) + a2;
  if ((*(*a1 + 40))(a1) >= v6 - 4)
  {
LABEL_41:
    if ((*(*a1 + 40))(a1) != v6)
    {
      v25 = (*(*a1 + 40))(a1);
      (*(*a1 + 32))(a1, (v6 - v25));
    }

    v26 = 1;
    goto LABEL_53;
  }

  while (1)
  {
    __n = 0;
    if (!(*(*a1 + 104))(a1, 4, &__n))
    {
      v27 = *re::pipelineLogObjects(0);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_52;
      }

      *buf = 0;
      v28 = "Failed to parse KTX metadata: Could not read key/value length";
LABEL_51:
      _os_log_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 2u);
      goto LABEL_52;
    }

    v7 = (*(*a1 + 40))(a1);
    if (v7 + __n > v6)
    {
      break;
    }

    if (__n)
    {
      __s1 = 0;
      v8 = (__n + 3) & 0x1FFFFFFFCLL;
      v9 = (*(*a1 + 96))(a1, v8, __n_4, &__s1);
      if (v9 != v8)
      {
        v27 = *re::pipelineLogObjects(v9);
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_52;
        }

        *buf = 0;
        v28 = "Failed to parse KTX metadata: Truncated data";
        goto LABEL_51;
      }

      v10 = __s1;
      v11 = __n;
      v12 = strnlen(__s1, __n);
      if (v12 == v11)
      {
        v13 = *re::pipelineLogObjects(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v14 = v13;
          v15 = "Failed to parse KTX metadata: Missing value for key";
          v16 = 2;
          goto LABEL_25;
        }
      }

      else
      {
        v17 = v12 + 1;
        v18 = v11 - (v12 + 1);
        v19 = strncmp("KTXmetalPixelFormat", v10, v12 + 1);
        if (v19)
        {
          v19 = strncmp("MTLPixelFormat", v10, v17);
          if (v19)
          {
            v20 = strncmp("com.apple.image.premultipliedAlpha", v10, v17);
            if (v20)
            {
              if (!strncmp("com.apple.image.colorGamut", v10, v17))
              {
                v22 = v18 - 1;
                if (v10[v17 - 1 + v18])
                {
                  v22 = v18;
                }

                *(a3 + 16) = &v10[v17];
                *(a3 + 24) = v22;
              }

              else if (!strncmp("com.apple.image.colorTransfer", v10, v17))
              {
                v23 = v18 - 1;
                if (v10[v17 - 1 + v18])
                {
                  v23 = v18;
                }

                *(a3 + 32) = &v10[v17];
                *(a3 + 40) = v23;
              }

              else if (!strncmp("ToolVersion", v10, v17))
              {
                if (v18 < 3)
                {
                  v24 = atoi(&v10[v17]);
                  if ((*(a3 + 48) & 1) == 0)
                  {
                    *(a3 + 48) = 1;
                  }

                  *(a3 + 50) = v24;
                }

                else
                {
                  if ((*(a3 + 48) & 1) == 0)
                  {
                    *(a3 + 48) = 1;
                  }

                  *(a3 + 50) = 0;
                }
              }

              goto LABEL_26;
            }

            if (v18 == 4)
            {
              *(a3 + 8) = *&v10[v17] != 0;
              goto LABEL_26;
            }

            v21 = *re::pipelineLogObjects(v20);
            if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_26;
            }

LABEL_24:
            *buf = 134218498;
            v36 = v18;
            v37 = 2048;
            v38 = 4;
            v39 = 2080;
            v40 = v10;
            v14 = v21;
            v15 = "Unexpected size (%lu != %lu) for key %s";
            v16 = 32;
LABEL_25:
            _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, v16);
            goto LABEL_26;
          }
        }

        if (v18 == 4)
        {
          *a3 = *&v10[v17];
        }

        else
        {
          v21 = *re::pipelineLogObjects(v19);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_24;
          }
        }
      }
    }

LABEL_26:
    if ((*(*a1 + 40))(a1) >= v6 - 4)
    {
      goto LABEL_41;
    }
  }

  v29 = *re::pipelineLogObjects(v7);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_DEFAULT, "Failed to parse KTX metadata: Key value pair overflowed available data", buf, 2u);
  }

  v30 = (*(*a1 + 40))(a1);
  (*(*a1 + 32))(a1, (v6 - v30));
LABEL_52:
  v26 = 0;
LABEL_53:
  if (*__n_4 && *&__n_4[32])
  {
    (*(**__n_4 + 40))();
  }

  return v26;
}

size_t re::makeStandardKtxMetadata(int a1, re *this, int a3, uint64_t a4, void *a5)
{
  ColorGamutName = re::getColorGamutName(this, this);
  ColorTransferName = re::getColorTransferName(this, v10);
  v12 = ColorTransferName;
  if (ColorGamutName)
  {
    v13 = (strlen(ColorGamutName) + 1);
    if (v12)
    {
LABEL_3:
      v14 = (strlen(v12) + 1);
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (ColorTransferName)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_6:
  v15 = ((v13 + 34) & 0xFFFFFFFC) + 28;
  if (!ColorGamutName)
  {
    v15 = 28;
  }

  v16 = (v14 + 37) & 0xFFFFFFFC;
  if (!v12)
  {
    v16 = 0;
  }

  v17 = v16 + v15;
  if (a3)
  {
    v17 += 44;
  }

  v18 = v17 & 0xFFFFFFFC;
  if ((v17 & 0xFFFFFFFC) != 0)
  {
    v19 = 4;
  }

  else
  {
    v19 = 0;
  }

  v20 = (*(*a4 + 32))(a4, v17 & 0xFFFFFFFC, 0);
  v34 = &unk_1F5D0ADB8;
  v35 = v20;
  v36 = v18;
  v33 = a1;
  __src = 24;
  memcpy(v20, &__src, v19);
  if (v18 - v19 >= 0x14)
  {
    v21 = 20;
  }

  else
  {
    v21 = v18 - v19;
  }

  memcpy(&v20[v19], "KTXmetalPixelFormat", v21);
  v22 = v19 + v21;
  if (v18 - v22 >= 4)
  {
    v23 = 4;
  }

  else
  {
    v23 = v18 - v22;
  }

  memcpy(&v20[v22], &v33, v23);
  v25 = v22 + v23;
  v37 = v25;
  if (ColorGamutName)
  {
  }

  if (v12)
  {
  }

  if (a3)
  {
    v32 = 1;
    __src = 24;
    if (v36 - v37 >= 4)
    {
      v26 = 4;
    }

    else
    {
      v26 = v36 - v37;
    }

    memcpy(&v35[v37], &__src, v26);
    v27 = v37 + v26;
    v37 = v27;
    if (v36 - v27 >= 0x14)
    {
      v28 = 20;
    }

    else
    {
      v28 = v36 - v27;
    }

    memcpy(&v35[v27], "KTXmetalPixelFormat", v28);
    if (v36 - (v37 + v28) >= 4)
    {
      v29 = 4;
    }

    else
    {
      v29 = v36 - (v37 + v28);
    }

    memcpy(&v35[v37 + v28], &v32, v29);
    v25 += v26 + v28 + v29;
  }

  *a5 = v20;
  return v25;
}

char *re::anonymous namespace::writeKeyValueMetadataPair(re::_anonymous_namespace_ *this, char *a2, const void *a3, char *a4, void *a5, re::MemoryStreamWriter *a6)
{
  v7 = a4;
  v9 = a2;
  v11 = a4 + a2;
  __src = a4 + a2;
  v12 = a5[3];
  if ((a5[2] - v12) >= 4)
  {
    v13 = 4;
  }

  else
  {
    v13 = a5[2] - v12;
  }

  memcpy((a5[1] + v12), &__src, v13);
  v14 = a5[2];
  v15 = a5[3] + v13;
  a5[3] = v15;
  v16 = (v14 - v15);
  if (v16 < v9)
  {
    v9 = v16;
  }

  memcpy((a5[1] + v15), this, v9);
  v17 = a5[2];
  v18 = &v9[a5[3]];
  a5[3] = v18;
  v19 = &v9[v13];
  v20 = (v17 - v18);
  if (v20 < v7)
  {
    v7 = v20;
  }

  memcpy(&v18[a5[1]], a3, v7);
  v21 = &v7[a5[3]];
  a5[3] = v21;
  v22 = &v7[v19];
  if ((-v11 & 3) != 0)
  {
    v25 = 0;
    if (a5[2] - v21 >= (-v11 & 3))
    {
      v23 = -v11 & 3;
    }

    else
    {
      v23 = a5[2] - v21;
    }

    memcpy(&v21[a5[1]], &v25, v23);
    a5[3] += v23;
    v22 += v23;
  }

  return v22;
}

uint64_t re::internal::loadUSKMeshNodes(void *a1, uint64_t a2)
{
  v3 = a1;
  if (![MEMORY[0x1E69DED88] isSceneGraphNode:v3])
  {
    goto LABEL_23;
  }

  if (![MEMORY[0x1E69DED88] isTransformNode:v3])
  {
    goto LABEL_23;
  }

  v4 = [v3 type];
  v5 = *MEMORY[0x1E69DEE70];

  if (v4 != v5)
  {
    goto LABEL_23;
  }

  re::internal::createGeomMeshFromUSKNode(v3, &v16, 0, 0, 1, v17);
  if (v16.__r_.__value_.__r.__words[0] && (v16.__r_.__value_.__s.__data_[8] & 1) != 0)
  {
    (*(*v16.__r_.__value_.__l.__data_ + 40))();
  }

  v7 = v17[0];
  if (v17[0] == 1)
  {
    re::DynamicArray<re::GeomMesh>::add(a2, &v18);
  }

  else
  {
    std::error_code::message(&v16, &v18);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v16;
    }

    else
    {
      v8 = v16.__r_.__value_.__r.__words[0];
    }

    if (v20)
    {
      v9 = *&v21[7];
    }

    else
    {
      v9 = v21;
    }

    printf("Error: %s\nDetails:\n%s", v8, v9);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }

  if (v17[0] == 1)
  {
    re::GeomMesh::~GeomMesh(&v18);
  }

  else if (v19 && (v20 & 1) != 0)
  {
    (*(*v19 + 40))();
  }

  if (!v7)
  {
    USKMeshNodes = 0;
  }

  else
  {
LABEL_23:
    v10 = [v3 childIterator];
    v11 = [v10 nextObject];
    if (v11)
    {
      v12 = v11;
      do
      {
        USKMeshNodes = re::internal::loadUSKMeshNodes(v12, a2);
        if (!USKMeshNodes)
        {
          break;
        }

        v14 = [v10 nextObject];

        v12 = v14;
      }

      while (v14);
    }

    else
    {
      USKMeshNodes = 1;
    }
  }

  return USKMeshNodes;
}

uint64_t re::internal::importGeomMeshesFromFile@<X0>(re::internal *this@<X0>, uint64_t a2@<X8>)
{
  v24 = 0;
  v22 = 0uLL;
  v21 = 0;
  v23 = 0;
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:this];
  v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4];
  v6 = [objc_alloc(MEMORY[0x1E69DED78]) initSceneFromURL:v5];
  v7 = v6;
  if (v6 && ([v6 rootNode], v8 = objc_claimAutoreleasedReturnValue(), USKMeshNodes = re::internal::loadUSKMeshNodes(v8, &v21), v8, USKMeshNodes))
  {
    v10 = v21;
    v20 = 0;
    v21 = 0;
    v11 = v24;
    v24 = 0;
    ++v23;
    *a2 = 1;
    *(a2 + 8) = v10;
    *v18 = 0;
    v12 = v22;
    v22 = 0u;
    *(a2 + 16) = v12;
    *&v18[8] = 0u;
    *(a2 + 40) = v11;
    LODWORD(v19) = 2;
    *(a2 + 32) = 1;
    re::DynamicArray<re::GeomMesh>::deinit(v18);
  }

  else
  {
    v13 = std::system_category();
    v14 = *v18;
    v15 = *&v18[16];
    v16 = v19;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = v13;
    *(a2 + 24) = v14;
    *(a2 + 40) = v15;
    *(a2 + 48) = v16;
  }

  return re::DynamicArray<re::GeomMesh>::deinit(&v21);
}

void re::internal::anonymous namespace::addPropertyToUSKMeshNodeFromGeomAttributeHelper(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6)
{
  v131 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a6;
  if (!a2)
  {
    goto LABEL_133;
  }

  if (!a5)
  {
    goto LABEL_133;
  }

  v12 = re::internal::GeomAttributeManager::attributeByName((a1 + 64), a2);
  if (!v12)
  {
    goto LABEL_133;
  }

  v14 = v12;
  v15 = v12[16];
  v16 = v15;
  if (v15 == 3)
  {
    if (*(re::internal::accessFaceVaryingAttributeSubmesh(v12, v13) + 24) != *(a1 + 40))
    {
LABEL_133:

      return;
    }

    v16 = v14[16];
  }

  if (!v16)
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Currently don't support mesh rate attributes", "!Unreachable code", "addPropertyToUSKMeshNodeFromGeomAttributeHelper", 314);
    _os_crash();
    __break(1u);
LABEL_199:
    re::internal::assertLog(4, v89, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash();
    __break(1u);
    goto LABEL_200;
  }

  v17 = v14[17];
  if (v17 <= 4)
  {
    if (v14[17] <= 1u)
    {
      if (v14[17])
      {
        v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a5];
        a1 = [v10 newPropertyWithName:v31 type:*MEMORY[0x1E69DEDF8] role:v11];

        v28 = (*(*v14 + 16))(v14);
        v32 = (*(*v14 + 16))(v14);
        if (v32)
        {
          v33 = re::DynamicArray<signed char>::operator[]((v14 + 24));
          v32 = (*(*v14 + 16))(v14);
          v22 = v32;
        }

        else
        {
          v22 = 0;
          v33 = 0;
        }

        v114 = 0;
        v115 = 0;
        v116 = 0;
        if (v28)
        {
          v80 = 0;
          a6 = v115;
          v81 = v116;
          while (v22 != v80)
          {
            if (a6 == v80)
            {
              goto LABEL_196;
            }

            *(v81 + 4 * v80) = *(v33 + 2 * v80);
            if (v28 == ++v80)
            {
              goto LABEL_120;
            }
          }

          goto LABEL_185;
        }
      }

      else
      {
        v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a5];
        a1 = [v10 newPropertyWithName:v44 type:*MEMORY[0x1E69DEDF8] role:v11];

        v28 = (*(*v14 + 16))(v14);
        v45 = (*(*v14 + 16))(v14);
        if (v45)
        {
          v46 = re::DynamicArray<signed char>::operator[]((v14 + 24));
          v45 = (*(*v14 + 16))(v14);
          v22 = v45;
        }

        else
        {
          v22 = 0;
          v46 = 0;
        }

        v114 = 0;
        v115 = 0;
        v116 = 0;
        if (v28)
        {
          v71 = 0;
          a6 = v115;
          v72 = v116;
          while (v22 != v71)
          {
            if (a6 == v71)
            {
              goto LABEL_192;
            }

            *(v72 + 4 * v71) = *(v46 + 2 * v71);
            if (v28 == ++v71)
            {
              goto LABEL_120;
            }
          }

          goto LABEL_181;
        }
      }
    }

    else
    {
      switch(v17)
      {
        case 2u:
          v55 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a5];
          a1 = [v10 newPropertyWithName:v55 type:*MEMORY[0x1E69DEDF8] role:v11];

          v28 = (*(*v14 + 16))(v14);
          v56 = (*(*v14 + 16))(v14);
          if (v56)
          {
            v57 = re::DynamicArray<signed char>::operator[]((v14 + 24));
            v56 = (*(*v14 + 16))(v14);
            v22 = v56;
          }

          else
          {
            v22 = 0;
            v57 = 0;
          }

          v114 = 0;
          v115 = 0;
          v116 = 0;
          if (v28)
          {
            v78 = 0;
            a6 = v115;
            v79 = v116;
            while (v22 != v78)
            {
              if (a6 == v78)
              {
                goto LABEL_195;
              }

              *(v79 + 4 * v78) = *(v57 + 4 * v78);
              if (v28 == ++v78)
              {
                goto LABEL_120;
              }
            }

            goto LABEL_184;
          }

          break;
        case 3u:
          v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a5];
          a1 = [v10 newPropertyWithName:v41 type:*MEMORY[0x1E69DEDF8] role:v11];

          v28 = (*(*v14 + 16))(v14);
          v42 = (*(*v14 + 16))(v14);
          if (v42)
          {
            v43 = re::DynamicArray<signed char>::operator[]((v14 + 24));
            v42 = (*(*v14 + 16))(v14);
            v22 = v42;
          }

          else
          {
            v22 = 0;
            v43 = 0;
          }

          v114 = 0;
          v115 = 0;
          v116 = 0;
          if (v28)
          {
            v62 = 0;
            a6 = v115;
            v63 = v116;
            while (v22 != v62)
            {
              if (a6 == v62)
              {
                goto LABEL_188;
              }

              *(v63 + 4 * v62) = *(v43 + 4 * v62);
              if (v28 == ++v62)
              {
                goto LABEL_120;
              }
            }

            goto LABEL_177;
          }

          break;
        case 4u:
          v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a5];
          a1 = [v10 newPropertyWithName:v23 type:*MEMORY[0x1E69DEDE8] role:v11];

          v24 = (*(*v14 + 16))(v14);
          v25 = (*(*v14 + 16))(v14);
          if (v25)
          {
            v26 = re::DynamicArray<signed char>::operator[]((v14 + 24));
            v25 = (*(*v14 + 16))(v14);
            v22 = v25;
          }

          else
          {
            v22 = 0;
            v26 = 0;
          }

          v114 = 0;
          v115 = 0;
          v116 = 0;
          if (v24)
          {
            v67 = 0;
            a6 = v115;
            v68 = v116;
            while (v22 != v67)
            {
              if (a6 == v67)
              {
                goto LABEL_191;
              }

              *(v68 + 4 * v67) = *(v26 + 4 * v67);
              if (v24 == ++v67)
              {
                goto LABEL_84;
              }
            }

            goto LABEL_180;
          }

LABEL_84:
          v69 = objc_alloc(MEMORY[0x1E69DED58]);
          v70 = [v69 initWithFloatArray:v116 count:v24];
LABEL_121:
          v77 = v70;
          goto LABEL_122;
        default:
          goto LABEL_200;
      }
    }

LABEL_120:
    v82 = objc_alloc(MEMORY[0x1E69DED58]);
    v70 = [v82 initWithIntArray:v116 count:v28];
    goto LABEL_121;
  }

  if (v14[17] > 7u)
  {
    switch(v17)
    {
      case 8u:
        v51 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a5];
        v112 = [v10 newPropertyWithName:v51 type:*MEMORY[0x1E69DEDD8] role:v11];

        v52 = (*(*v14 + 16))(v14);
        v53 = (*(*v14 + 16))(v14);
        if (v53)
        {
          v54 = re::DynamicArray<signed char>::operator[]((v14 + 24));
          v53 = (*(*v14 + 16))(v14);
          v22 = v53;
        }

        else
        {
          v22 = 0;
          v54 = 0;
        }

        v114 = 0;
        v115 = 0;
        v116 = 0;
        if (v52)
        {
          a6 = 0;
          while (v22 != a6)
          {
            a1 = v115;
            if (v115 <= a6)
            {
              goto LABEL_194;
            }

            *(v116 + 16 * a6) = *(v54 + 16 * a6);
            if (v52 == ++a6)
            {
              goto LABEL_105;
            }
          }

          goto LABEL_183;
        }

LABEL_105:
        v76 = objc_alloc(MEMORY[0x1E69DED58]);
        v59 = [v76 initWithFloat4Array:v116 count:v52];
LABEL_106:
        v77 = v59;
        a1 = v112;
LABEL_122:
        [a1 setData:v77];

        if (v114 && v115)
        {
          (*(*v114 + 40))();
        }

        if (!a1)
        {
          goto LABEL_132;
        }

        switch(v15)
        {
          case 2:
            v83 = objc_alloc(MEMORY[0x1E69DED58]);
            v84 = @"uniform";
            goto LABEL_130;
          case 1:
            v83 = objc_alloc(MEMORY[0x1E69DED58]);
            v84 = @"vertex";
LABEL_130:
            v77 = [v83 initWithString:v84];
            [a1 setMetadataWithKey:@"interpolation" value:v77];
LABEL_131:

LABEL_132:
            goto LABEL_133;
          case 3:
            v111 = v11;
            v22 = 0x1E69DE000uLL;
            v77 = [objc_alloc(MEMORY[0x1E69DED58]) initWithString:@"faceVarying"];
            v112 = a1;
            [a1 setMetadataWithKey:@"interpolation" value:v77];
            v85 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:indices", a5];
            a6 = [v10 newPropertyWithName:v85 type:*MEMORY[0x1E69DEDF8] role:*MEMORY[0x1E69DEEA8]];

            v87 = re::internal::accessFaceVaryingAttributeSubmesh(v14, v86);
            v88 = *(a3 + 16);
            v114 = 0;
            v115 = 0;
            v116 = 0;
            a1 = v88;
            if (v88)
            {
              v109 = a6;
              v110 = v10;
              v90 = 0;
              LODWORD(v91) = 0;
              v10 = v115;
              v92 = v116;
              v22 = 3;
              v93 = a3;
              while (1)
              {
                LODWORD(v126) = v90;
                v94 = *(v87 + 140);
                if (v94 == 2)
                {
                  v96 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v87 + 144), &v126);
                  v95 = v96 == -1 ? -1 : *(*(v87 + 152) + 8 * v96 + 4);
                  v93 = a3;
                }

                else if (v94 == 1)
                {
                  v95 = *(v87 + 160) <= v90 ? -1 : *(*(v87 + 176) + 4 * v90);
                }

                else
                {
                  if (*(v87 + 140))
                  {
                    goto LABEL_199;
                  }

                  v95 = v90 >= *(v87 + 144) ? -1 : v90;
                }

                v97 = v95;
                v98 = *(v87 + 24);
                if (v98 <= v95)
                {
                  break;
                }

                v98 = *(v93 + 16);
                if (v98 <= v90)
                {
                  goto LABEL_171;
                }

                v98 = *(*(v93 + 32) + 4 * v90);
                if (v10 <= v98)
                {
                  goto LABEL_172;
                }

                v99 = (*(v87 + 40) + 16 * v95);
                v101 = *v99;
                v100 = v99[1];
                v103 = v99[2];
                v102 = v99[3];
                *(v92 + 4 * v98) = v101;
                v104 = (v98 + 1);
                if (v10 <= v104)
                {
                  goto LABEL_173;
                }

                *(v92 + 4 * v104) = v100;
                v104 = (v98 + 2);
                if (v10 <= v104)
                {
                  goto LABEL_174;
                }

                *(v92 + 4 * v104) = v103;
                if (v102 == -1)
                {
                  v105 = 3;
                }

                else
                {
                  v105 = 4;
                }

                if (v102 != -1)
                {
                  a6 = (v98 + 3);
                  if (v10 <= a6)
                  {
                    goto LABEL_197;
                  }

                  *(v92 + 4 * a6) = v102;
                }

                v91 = (v105 + v91);
                if (a1 == ++v90)
                {
                  v106 = 0;
                  a6 = v109;
                  v10 = v110;
                  v22 = 0x1E69DE000;
                  goto LABEL_166;
                }
              }

              v117 = 0;
              v129 = 0u;
              v130 = 0u;
              v127 = 0u;
              v128 = 0u;
              v126 = 0u;
              v22 = MEMORY[0x1E69E9C10];
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v118 = 136315906;
              v119 = "operator[]";
              v120 = 1024;
              v121 = 797;
              v122 = 2048;
              v123 = v97;
              v124 = 2048;
              v125 = v98;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_171:
              v117 = 0;
              v129 = 0u;
              v130 = 0u;
              v127 = 0u;
              v128 = 0u;
              v126 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v118 = 136315906;
              v119 = "operator[]";
              v120 = 1024;
              v121 = 797;
              v122 = 2048;
              v123 = v90;
              v124 = 2048;
              v125 = v98;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_172:
              v117 = 0;
              v129 = 0u;
              v130 = 0u;
              v127 = 0u;
              v128 = 0u;
              v126 = 0u;
              v104 = MEMORY[0x1E69E9C10];
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v118 = 136315906;
              v119 = "operator[]";
              v120 = 1024;
              v121 = 468;
              v122 = 2048;
              v123 = v98;
              v124 = 2048;
              v125 = v10;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_173:
              v117 = 0;
              v129 = 0u;
              v130 = 0u;
              v127 = 0u;
              v128 = 0u;
              v126 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v118 = 136315906;
              v119 = "operator[]";
              v120 = 1024;
              v121 = 468;
              v122 = 2048;
              v123 = v104;
              v124 = 2048;
              v125 = v10;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_174:
              v117 = 0;
              v129 = 0u;
              v130 = 0u;
              v127 = 0u;
              v128 = 0u;
              v126 = 0u;
              a6 = MEMORY[0x1E69E9C10];
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v118 = 136315906;
              v119 = "operator[]";
              v120 = 1024;
              v121 = 468;
              v122 = 2048;
              v123 = v104;
              v124 = 2048;
              v125 = v10;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_175:
              v117 = 0;
              v129 = 0u;
              v130 = 0u;
              v127 = 0u;
              v128 = 0u;
              v126 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v118 = 136315906;
              v119 = "operator[]";
              v120 = 1024;
              v121 = 613;
              v122 = 2048;
              v123 = v22;
              v124 = 2048;
              v125 = v22;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_176:
              v117 = 0;
              v129 = 0u;
              v130 = 0u;
              v127 = 0u;
              v128 = 0u;
              v126 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v118 = 136315906;
              v119 = "operator[]";
              v120 = 1024;
              v121 = 613;
              v122 = 2048;
              v123 = v22;
              v124 = 2048;
              v125 = v22;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_177:
              v117 = 0;
              v129 = 0u;
              v130 = 0u;
              v127 = 0u;
              v128 = 0u;
              v126 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v118 = 136315906;
              v119 = "operator[]";
              v120 = 1024;
              v121 = 613;
              v122 = 2048;
              v123 = v22;
              v124 = 2048;
              v125 = v22;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_178:
              v117 = 0;
              v129 = 0u;
              v130 = 0u;
              v127 = 0u;
              v128 = 0u;
              v126 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v118 = 136315906;
              v119 = "operator[]";
              v120 = 1024;
              v121 = 613;
              v122 = 2048;
              v123 = v22;
              v124 = 2048;
              v125 = v22;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_179:
              v117 = 0;
              v129 = 0u;
              v130 = 0u;
              v127 = 0u;
              v128 = 0u;
              v126 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v118 = 136315906;
              v119 = "operator[]";
              v120 = 1024;
              v121 = 613;
              v122 = 2048;
              v123 = v22;
              v124 = 2048;
              v125 = v22;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_180:
              v117 = 0;
              v129 = 0u;
              v130 = 0u;
              v127 = 0u;
              v128 = 0u;
              v126 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v118 = 136315906;
              v119 = "operator[]";
              v120 = 1024;
              v121 = 613;
              v122 = 2048;
              v123 = v22;
              v124 = 2048;
              v125 = v22;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_181:
              v117 = 0;
              v129 = 0u;
              v130 = 0u;
              v127 = 0u;
              v128 = 0u;
              v126 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v118 = 136315906;
              v119 = "operator[]";
              v120 = 1024;
              v121 = 613;
              v122 = 2048;
              v123 = v22;
              v124 = 2048;
              v125 = v22;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_182:
              v117 = 0;
              v129 = 0u;
              v130 = 0u;
              v127 = 0u;
              v128 = 0u;
              v126 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v118 = 136315906;
              v119 = "operator[]";
              v120 = 1024;
              v121 = 613;
              v122 = 2048;
              v123 = v22;
              v124 = 2048;
              v125 = v22;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_183:
              v117 = 0;
              v129 = 0u;
              v130 = 0u;
              v127 = 0u;
              v128 = 0u;
              v126 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v118 = 136315906;
              v119 = "operator[]";
              v120 = 1024;
              v121 = 613;
              v122 = 2048;
              v123 = v22;
              v124 = 2048;
              v125 = v22;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_184:
              v117 = 0;
              v129 = 0u;
              v130 = 0u;
              v127 = 0u;
              v128 = 0u;
              v126 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v118 = 136315906;
              v119 = "operator[]";
              v120 = 1024;
              v121 = 613;
              v122 = 2048;
              v123 = v22;
              v124 = 2048;
              v125 = v22;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_185:
              v117 = 0;
              v129 = 0u;
              v130 = 0u;
              v127 = 0u;
              v128 = 0u;
              v126 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v118 = 136315906;
              v119 = "operator[]";
              v120 = 1024;
              v121 = 613;
              v122 = 2048;
              v123 = v22;
              v124 = 2048;
              v125 = v22;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_186:
              v117 = 0;
              v129 = 0u;
              v130 = 0u;
              v127 = 0u;
              v128 = 0u;
              v126 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v118 = 136315906;
              v119 = "operator[]";
              v120 = 1024;
              v121 = 468;
              v122 = 2048;
              v123 = a6;
              v124 = 2048;
              v125 = a1;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_187:
              v117 = 0;
              v129 = 0u;
              v130 = 0u;
              v127 = 0u;
              v128 = 0u;
              v126 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v118 = 136315906;
              v119 = "operator[]";
              v120 = 1024;
              v121 = 468;
              v122 = 2048;
              v123 = a6;
              v124 = 2048;
              v125 = a6;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_188:
              v117 = 0;
              v129 = 0u;
              v130 = 0u;
              v127 = 0u;
              v128 = 0u;
              v126 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v118 = 136315906;
              v119 = "operator[]";
              v120 = 1024;
              v121 = 468;
              v122 = 2048;
              v123 = a6;
              v124 = 2048;
              v125 = a6;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_189:
              v117 = 0;
              v129 = 0u;
              v130 = 0u;
              v127 = 0u;
              v128 = 0u;
              v126 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v118 = 136315906;
              v119 = "operator[]";
              v120 = 1024;
              v121 = 468;
              v122 = 2048;
              v123 = a6;
              v124 = 2048;
              v125 = a1;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_190:
              v117 = 0;
              v129 = 0u;
              v130 = 0u;
              v127 = 0u;
              v128 = 0u;
              v126 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v118 = 136315906;
              v119 = "operator[]";
              v120 = 1024;
              v121 = 468;
              v122 = 2048;
              v123 = a6;
              v124 = 2048;
              v125 = a6;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_191:
              v117 = 0;
              v129 = 0u;
              v130 = 0u;
              v127 = 0u;
              v128 = 0u;
              v126 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v118 = 136315906;
              v119 = "operator[]";
              v120 = 1024;
              v121 = 468;
              v122 = 2048;
              v123 = a6;
              v124 = 2048;
              v125 = a6;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_192:
              v117 = 0;
              v129 = 0u;
              v130 = 0u;
              v127 = 0u;
              v128 = 0u;
              v126 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v118 = 136315906;
              v119 = "operator[]";
              v120 = 1024;
              v121 = 468;
              v122 = 2048;
              v123 = a6;
              v124 = 2048;
              v125 = a6;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_193:
              v117 = 0;
              v129 = 0u;
              v130 = 0u;
              v127 = 0u;
              v128 = 0u;
              v126 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v118 = 136315906;
              v119 = "operator[]";
              v120 = 1024;
              v121 = 468;
              v122 = 2048;
              v123 = a6;
              v124 = 2048;
              v125 = a6;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_194:
              v117 = 0;
              v129 = 0u;
              v130 = 0u;
              v127 = 0u;
              v128 = 0u;
              v126 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v118 = 136315906;
              v119 = "operator[]";
              v120 = 1024;
              v121 = 468;
              v122 = 2048;
              v123 = a6;
              v124 = 2048;
              v125 = a1;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_195:
              v117 = 0;
              v129 = 0u;
              v130 = 0u;
              v127 = 0u;
              v128 = 0u;
              v126 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v118 = 136315906;
              v119 = "operator[]";
              v120 = 1024;
              v121 = 468;
              v122 = 2048;
              v123 = a6;
              v124 = 2048;
              v125 = a6;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_196:
              v117 = 0;
              v129 = 0u;
              v130 = 0u;
              v127 = 0u;
              v128 = 0u;
              v126 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v118 = 136315906;
              v119 = "operator[]";
              v120 = 1024;
              v121 = 468;
              v122 = 2048;
              v123 = a6;
              v124 = 2048;
              v125 = a6;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_197:
              v117 = 0;
              v129 = 0u;
              v130 = 0u;
              v127 = 0u;
              v128 = 0u;
              v126 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v118 = 136315906;
              v119 = "operator[]";
              v120 = 1024;
              v121 = 468;
              v122 = 2048;
              v123 = a6;
              v124 = 2048;
              v125 = v10;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }

            break;
          default:
            if (v15)
            {
              goto LABEL_132;
            }

            [a1 setMetadataWithKey:@"interpolation" value:{objc_msgSend(objc_alloc(MEMORY[0x1E69DED58]), "initWithString:", @"constant"}];
            re::internal::assertLog(4, v107, "assertion failure: '%s' (%s:line %i) Mesh rate attributes are currently not handled", "!Unreachable code", "addPropertyToUSKMeshNodeFromGeomAttributeHelper", 345);
            _os_crash();
            __break(1u);
            break;
        }

        v91 = 0;
        v92 = v116;
        v106 = v115 == 0;
LABEL_166:
        v108 = [objc_alloc(*(v22 + 3416)) initWithIntArray:v92 count:v91];
        if (v114)
        {
          if (!v106)
          {
            (*(*v114 + 40))();
          }
        }

        [a6 setData:v108];

        v11 = v111;
        a1 = v112;
        goto LABEL_131;
      case 9u:
        v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a5];
        a1 = [v10 newPropertyWithName:v38 type:*MEMORY[0x1E69DEDF8] role:v11];

        v28 = (*(*v14 + 16))(v14);
        v39 = (*(*v14 + 16))(v14);
        if (v39)
        {
          v40 = re::DynamicArray<signed char>::operator[]((v14 + 24));
          v39 = (*(*v14 + 16))(v14);
          v22 = v39;
        }

        else
        {
          v22 = 0;
          v40 = 0;
        }

        v114 = 0;
        v115 = 0;
        v116 = 0;
        if (v28)
        {
          v60 = 0;
          a6 = v115;
          v61 = v116;
          while (v22 != v60)
          {
            if (a6 == v60)
            {
              goto LABEL_187;
            }

            *(v61 + 4 * v60) = *(v40 + v60);
            if (v28 == ++v60)
            {
              goto LABEL_120;
            }
          }

          goto LABEL_176;
        }

        break;
      case 0xAu:
        v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a5];
        a1 = [v10 newPropertyWithName:v27 type:*MEMORY[0x1E69DEDF8] role:v11];

        v28 = (*(*v14 + 16))(v14);
        v29 = (*(*v14 + 16))(v14);
        if (v29)
        {
          v30 = re::DynamicArray<signed char>::operator[]((v14 + 24));
          v29 = (*(*v14 + 16))(v14);
          v22 = v29;
        }

        else
        {
          v22 = 0;
          v30 = 0;
        }

        v114 = 0;
        v115 = 0;
        v116 = 0;
        if (v28)
        {
          v65 = 0;
          a6 = v115;
          v66 = v116;
          while (v22 != v65)
          {
            if (a6 == v65)
            {
              goto LABEL_190;
            }

            *(v66 + 4 * v65) = *(v30 + v65);
            if (v28 == ++v65)
            {
              goto LABEL_120;
            }
          }

          goto LABEL_179;
        }

        break;
      default:
        goto LABEL_200;
    }

    goto LABEL_120;
  }

  switch(v17)
  {
    case 5u:
      v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a5];
      a1 = [v10 newPropertyWithName:v47 type:*MEMORY[0x1E69DEDB0] role:v11];

      v48 = (*(*v14 + 16))(v14);
      v49 = (*(*v14 + 16))(v14);
      if (v49)
      {
        v50 = re::DynamicArray<signed char>::operator[]((v14 + 24));
        v49 = (*(*v14 + 16))(v14);
        v22 = v49;
      }

      else
      {
        v22 = 0;
        v50 = 0;
      }

      v114 = 0;
      v115 = 0;
      v116 = 0;
      if (v48)
      {
        v73 = 0;
        a6 = v115;
        v74 = v116;
        while (v22 != v73)
        {
          if (a6 == v73)
          {
            goto LABEL_193;
          }

          *(v74 + 8 * v73) = *(v50 + 8 * v73);
          if (v48 == ++v73)
          {
            goto LABEL_98;
          }
        }

        goto LABEL_182;
      }

LABEL_98:
      v75 = objc_alloc(MEMORY[0x1E69DED58]);
      v70 = [v75 initWithDoubleArray:v116 count:v48];
      goto LABEL_121;
    case 6u:
      v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a5];
      v112 = [v10 newPropertyWithName:v34 type:*MEMORY[0x1E69DEDC0] role:v11];

      v35 = (*(*v14 + 16))(v14);
      v36 = (*(*v14 + 16))(v14);
      if (v36)
      {
        v37 = re::DynamicArray<signed char>::operator[]((v14 + 24));
        v36 = (*(*v14 + 16))(v14);
        v22 = v36;
      }

      else
      {
        v22 = 0;
        v37 = 0;
      }

      v114 = 0;
      v115 = 0;
      v116 = 0;
      if (v35)
      {
        a6 = 0;
        while (v22 != a6)
        {
          a1 = v115;
          if (v115 <= a6)
          {
            goto LABEL_186;
          }

          *(v116 + 8 * a6) = *(v37 + 8 * a6);
          if (v35 == ++a6)
          {
            goto LABEL_49;
          }
        }

        goto LABEL_175;
      }

LABEL_49:
      v58 = objc_alloc(MEMORY[0x1E69DED58]);
      v59 = [v58 initWithFloat2Array:v116 count:v35];
      goto LABEL_106;
    case 7u:
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a5];
      v112 = [v10 newPropertyWithName:v18 type:*MEMORY[0x1E69DEDD0] role:v11];

      v19 = (*(*v14 + 16))(v14);
      v20 = (*(*v14 + 16))(v14);
      if (v20)
      {
        v21 = re::DynamicArray<signed char>::operator[]((v14 + 24));
        v20 = (*(*v14 + 16))(v14);
        v22 = v20;
      }

      else
      {
        v22 = 0;
        v21 = 0;
      }

      v114 = 0;
      v115 = 0;
      v116 = 0;
      if (v19)
      {
        a6 = 0;
        while (v22 != a6)
        {
          a1 = v115;
          if (v115 <= a6)
          {
            goto LABEL_189;
          }

          *(v116 + 16 * a6) = *(v21 + 16 * a6);
          if (v19 == ++a6)
          {
            goto LABEL_70;
          }
        }

        goto LABEL_178;
      }

LABEL_70:
      v64 = objc_alloc(MEMORY[0x1E69DED58]);
      v59 = [v64 initWithFloat3Array:v116 count:v19];
      goto LABEL_106;
  }

LABEL_200:
  re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Unhandled type", "!Unreachable code", "addPropertyToUSKMeshNodeFromGeomAttributeHelper", 310);
  _os_crash();
  __break(1u);
}

void re::internal::exportGeomMeshesToUSDFile(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v148 = *MEMORY[0x1E69E9840];
  v93 = [MEMORY[0x1E696AC08] defaultManager];
  v94 = NSTemporaryDirectory();
  v5 = 0x1E696A000uLL;
  v89 = a1;
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
  v7 = [v6 pathExtension];

  v95 = v7;
  if (([(__CFString *)v7 isEqualToString:@"usd"]& 1) == 0 && ([(__CFString *)v7 isEqualToString:@"usda"]& 1) == 0 && ([(__CFString *)v7 isEqualToString:@"usdc"]& 1) == 0 && ([(__CFString *)v7 isEqualToString:@"usdz"]& 1) == 0)
  {

    v95 = @"usda";
  }

  v8 = [MEMORY[0x1E696AFB0] UUID];
  v9 = MEMORY[0x1E696AEC0];
  v90 = v8;
  v10 = [v8 UUIDString];
  v11 = [v9 stringWithFormat:@"%@/%@.%@", v94, v10, v95];

  context = objc_autoreleasePoolPush();
  v12 = MEMORY[0x1E69DED78];
  v92 = v11;
  v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11];
  v104 = [v12 newSceneWithURL:v13];

  v121 = 0;
  memset(v120, 0, sizeof(v120));
  v122 = 0x7FFFFFFFLL;
  v103 = a2[1];
  if (!v103)
  {
    goto LABEL_79;
  }

  v16 = 0;
  v102 = *MEMORY[0x1E69DEE70];
  v100 = a2;
  v101 = *MEMORY[0x1E69DEE28];
  v111 = *MEMORY[0x1E69DEEA8];
  v98 = *MEMORY[0x1E69DEEB8];
  v99 = *MEMORY[0x1E69DEDF8];
  v96 = *MEMORY[0x1E69DEEB0];
  v97 = *MEMORY[0x1E69DEEC0];
  do
  {
    v17 = a2[1];
    if (v17 <= v16)
    {
      re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v16, v17);
      _os_crash();
      __break(1u);
LABEL_103:
      re::internal::assertLog(6, v27, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v16, v28);
      _os_crash();
      __break(1u);
    }

    if (*(*a2 + 736 * v16))
    {
      v18 = *(*a2 + 736 * v16);
    }

    else
    {
      v18 = "unnamed";
    }

    v19 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(v120, &v116);
    if (v19)
    {
      v20 = (*v19 + 1);
      *v19 = v20;
      if (v117)
      {
        v21 = v119;
      }

      else
      {
        v21 = v118;
      }

      re::DynamicString::format("%s_%d", &v143, v21, v20);
      re::DynamicString::operator=(&v116, &v143);
      v22 = v143;
      if (v143 && (BYTE8(v143) & 1) != 0)
      {
        v22 = (*(*v143 + 40))(v143, v144);
      }
    }

    else
    {
      LODWORD(v143) = 0;
      v22 = re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v120, &v116, &v143);
    }

    re::DynamicString::operator+(&v123, &v116, &v143);
    re::DynamicString::operator=(&v116, &v143);
    if (v143)
    {
      if (BYTE8(v143))
      {
        (*(*v143 + 40))(v143, v144);
      }

      v143 = 0u;
      v144 = 0u;
    }

    if (v123 && (v124 & 1) != 0)
    {
      (*(*v123 + 40))();
    }

    v23 = objc_alloc(MEMORY[0x1E69DED68]);
    if (v117)
    {
      v24 = v119;
    }

    else
    {
      v24 = v118;
    }

    v25 = [*(v5 + 3776) stringWithUTF8String:v24];
    v26 = [v23 initWithString:v25];

    v28 = a2[1];
    if (v28 <= v16)
    {
      goto LABEL_103;
    }

    v29 = *a2;
    v30 = v104;
    v31 = v26;
    v127 = 0;
    v124 = 0;
    v125 = 0;
    v123 = 0;
    v126 = 0;
    v32 = [v30 newNodeAtPath:v31 type:v102];
    v33 = v32;
    if (!v32)
    {
      goto LABEL_72;
    }

    v108 = v30;
    v109 = v31;
    v110 = v16;
    v34 = v29 + 736 * v16;
    v35 = [v32 newPropertyWithName:@"subdivisionScheme" type:v101 role:v111];
    v105 = [objc_alloc(MEMORY[0x1E69DED80]) initWithString:@"none"];
    v106 = v35;
    [v35 setTokenValue:v105];
    v107 = v33;
    v36 = v33;
    v37 = *(v34 + 40);
    v131 = 0;
    v132 = 0;
    v133 = 0;
    v128 = 0;
    v129 = 0;
    v130 = 0;
    v39 = v37;
    LODWORD(v143) = 0;
    v125 = 0;
    ++v126;
    LODWORD(v143) = 0;
    re::DynamicArray<unsigned int>::resize(&v123, v37, &v143);
    if (!v37)
    {
      v42 = 0;
      v48 = v133;
      goto LABEL_47;
    }

    v40 = v5;
    v41 = 0;
    LODWORD(v42) = 0;
    v43 = *(v34 + 40);
    v44 = v125;
    v45 = v127;
    v47 = v129;
    v46 = v130;
    v49 = v132;
    v48 = v133;
    v50 = (*(v34 + 56) + 8);
    do
    {
      if (v43 == v41)
      {
        v134 = 0;
        v146 = 0u;
        v147 = 0u;
        v144 = 0u;
        v145 = 0u;
        v143 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v135 = 136315906;
        v136 = "operator[]";
        v137 = 1024;
        v138 = 797;
        v139 = 2048;
        v140 = v43;
        v141 = 2048;
        v142 = v43;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_91:
        v134 = 0;
        v146 = 0u;
        v147 = 0u;
        v144 = 0u;
        v145 = 0u;
        v143 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v135 = 136315906;
        v136 = "operator[]";
        v137 = 1024;
        v138 = 789;
        v139 = 2048;
        v140 = v44;
        v141 = 2048;
        v142 = v44;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_92:
        v134 = 0;
        v146 = 0u;
        v147 = 0u;
        v144 = 0u;
        v145 = 0u;
        v143 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v135 = 136315906;
        v136 = "operator[]";
        v137 = 1024;
        v138 = 468;
        v139 = 2048;
        v140 = v47;
        v141 = 2048;
        v142 = v47;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_93:
        v134 = 0;
        v146 = 0u;
        v147 = 0u;
        v144 = 0u;
        v145 = 0u;
        v143 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v135 = 136315906;
        v136 = "operator[]";
        v137 = 1024;
        v138 = 468;
        v139 = 2048;
        v140 = v33;
        v141 = 2048;
        v142 = v49;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_94:
        v134 = 0;
        v146 = 0u;
        v147 = 0u;
        v144 = 0u;
        v145 = 0u;
        v143 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v135 = 136315906;
        v136 = "operator[]";
        v137 = 1024;
        v138 = 468;
        v139 = 2048;
        v140 = v33;
        v141 = 2048;
        v142 = v49;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_95:
        v134 = 0;
        v146 = 0u;
        v147 = 0u;
        v144 = 0u;
        v145 = 0u;
        v143 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v135 = 136315906;
        v136 = "operator[]";
        v137 = 1024;
        v138 = 468;
        v139 = 2048;
        v140 = v33;
        v141 = 2048;
        v142 = v49;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_96:
        v134 = 0;
        v146 = 0u;
        v147 = 0u;
        v144 = 0u;
        v145 = 0u;
        v143 = 0u;
        v68 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v135 = 136315906;
        v136 = "operator[]";
        v137 = 1024;
        v138 = 468;
        v139 = 2048;
        v140 = v33;
        v141 = 2048;
        v142 = v49;
        LODWORD(v87) = 38;
        v86 = &v135;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_97;
      }

      if (v44 == v41)
      {
        goto LABEL_91;
      }

      v52 = *(v50 - 2);
      v51 = *(v50 - 1);
      v54 = *v50;
      v53 = v50[1];
      *(v45 + 4 * v41) = v42;
      if (v53 == -1)
      {
        v55 = 3;
      }

      else
      {
        v55 = 4;
      }

      if (v47 == v41)
      {
        goto LABEL_92;
      }

      *(v46 + 4 * v41) = v55;
      v33 = v42;
      if (v49 <= v42)
      {
        goto LABEL_93;
      }

      *(v48 + 4 * v42) = v52;
      v33 = (v42 + 1);
      if (v49 <= v33)
      {
        goto LABEL_94;
      }

      *(v48 + 4 * v33) = v51;
      v33 = (v42 + 2);
      if (v49 <= v33)
      {
        goto LABEL_95;
      }

      *(v48 + 4 * v33) = v54;
      v33 = (v42 + 3);
      if (v49 <= v33)
      {
        goto LABEL_96;
      }

      *(v48 + 4 * v33) = v53;
      v42 = (v55 + v42);
      v41 = v41 + 1;
      v50 += 4;
    }

    while (v39 != v41);
    v5 = v40;
LABEL_47:
    v56 = [(_anonymous_namespace_ *)v36 newPropertyWithName:@"faceVertexIndices" type:v99 role:v111];
    v57 = [(_anonymous_namespace_ *)v36 newPropertyWithName:@"faceVertexCounts" type:v99 role:v111];
    v58 = [objc_alloc(MEMORY[0x1E69DED58]) initWithIntArray:v48 count:v42];
    [v56 setData:v58];

    v59 = objc_alloc(MEMORY[0x1E69DED58]);
    v60 = [v59 initWithIntArray:v130 count:v39];
    [v57 setData:v60];

    if (v128 && v129)
    {
      (*(*v128 + 40))();
    }

    if (v131 && v132)
    {
      (*(*v131 + 40))();
    }

    v16 = v110;
    if (re::internal::GeomAttributeManager::attributeByName((v34 + 64), "vertexUV"))
    {
    }

    if (re::internal::GeomAttributeManager::attributeByName((v34 + 64), "vertexNormal"))
    {
    }

    if (re::internal::GeomAttributeManager::attributeByName((v34 + 64), "vertexTangent"))
    {
    }

    if (re::internal::GeomAttributeManager::attributeByName((v34 + 64), "vertexBitangent"))
    {
    }

    v61 = *(v34 + 640);
    if (v61)
    {
      for (i = 0; i != v61; ++i)
      {
        v63 = re::internal::GeomAttributeManager::attributeByIndex((v34 + 64), i);
        if (*(v63 + 16))
        {
          v64 = *(v63 + 8);
          if (strcmp(v64, "vertexPosition"))
          {
            if (strcmp(v64, "vertexUV") && strcmp(v64, "vertexNormal") && strcmp(v64, "vertexTangent") && strcmp(v64, "vertexBitangent"))
            {
            }
          }
        }
      }
    }

    v65 = v36;

    a2 = v100;
    v30 = v108;
    v31 = v109;
    v33 = v107;
LABEL_72:

    if (v123 && v127)
    {
      (*(*v123 + 40))();
    }

    v14 = v116;
    if (v116)
    {
      if (v117)
      {
        v14 = (*(*v116 + 40))();
      }
    }

    ++v16;
  }

  while (v16 != v103);
LABEL_79:
  [v104 save];
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v120);

  objc_autoreleasePoolPop(context);
  v66 = [*(v5 + 3776) stringWithUTF8String:v89];
  v67 = [v66 stringByDeletingPathExtension];

  v68 = [v67 stringByAppendingPathExtension:v95];

  v39 = v93;
  if (([v93 fileExistsAtPath:v68] & 1) == 0)
  {
    v112 = 0;
    v75 = [v93 moveItemAtPath:v92 toPath:v68 error:&v112];
    v47 = v112;
    if ((v75 & 1) == 0)
    {
      v77 = std::system_category();
      v78 = v143;
      v79 = v144;
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = v77;
      *(a3 + 24) = v78;
      *(a3 + 40) = v79;
LABEL_100:
      v39 = v93;
      v76 = v95;
      goto LABEL_101;
    }

    v39 = v93;
LABEL_87:
    v76 = v95;
    *a3 = 1;
    *(a3 + 8) = 1;
LABEL_101:

    return;
  }

  if (![v93 isDeletableFileAtPath:v68])
  {
    v47 = 0;
    goto LABEL_87;
  }

  v69 = *(v5 + 3776);
  v70 = [MEMORY[0x1E696AFB0] UUID];
  v71 = [v70 UUIDString];
  v44 = [v69 stringWithFormat:@"%@/%@.%@", v94, v71, v95];

  v115 = 0;
  LOBYTE(v71) = [v93 moveItemAtPath:v68 toPath:v44 error:&v115];
  v72 = v115;
  v73 = v72;
  if ((v71 & 1) == 0)
  {
    v80 = std::system_category();
    v81 = "Could not backup original file";
LABEL_99:
    v84 = v143;
    v85 = v144;
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = v80;
    *(a3 + 24) = v84;
    *(a3 + 40) = v85;

    v47 = v73;
    goto LABEL_100;
  }

  v114 = v72;
  v74 = [v93 moveItemAtPath:v92 toPath:v68 error:&v114];
  v47 = v114;

  if (v74)
  {

    goto LABEL_87;
  }

LABEL_97:
  v113 = v47;
  v82 = [v39 moveItemAtPath:v44 toPath:v68 error:{&v113, v86, v87}];
  v73 = v113;

  if (v82)
  {
    v80 = std::system_category();
    v81 = "Failed to write file.";
    goto LABEL_99;
  }

  re::internal::assertLog(4, v83, "assertion failure: '%s' (%s:line %i) We failed to attempting to replace a file", "!Unreachable code", "exportGeomMeshesToUSDFile", 497);
  _os_crash();
  __break(1u);
}

void *re::FixedArray<int>::init<unsigned int const&>(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (a3)
  {
    v4 = result;
    v5 = 4 * a3;
    result = (*(*a2 + 32))(a2, 4 * a3, 4);
    v4[2] = result;
    if (result)
    {
      v7 = result;
      if (a3 != 1)
      {
        result = memset(result, 255, v5 - 4);
        v7 = (v7 + v5 - 4);
      }

      *v7 = -1;
    }

    else
    {
      re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::DynamicArray<signed char>::operator[](uint64_t a1)
{
  if (!*(a1 + 16))
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32);
}

void re::internal::BlitCommandQueue::init(id *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  re::ImportGraphicsContext::getOrCreateCommandQueue(a2, a3, 1, &v15);
  if (&v15 != a1)
  {
    v7 = v15;
    v15 = 0;
    v8 = *a1;
    *a1 = v7;
  }

  re::mtl::CommandQueue::makeCommandBuffer(a1, &v15);
  v9 = a1 + 1;
  if (a1 + 1 != &v15)
  {
    v10 = v15;
    v15 = 0;
    v11 = *v9;
    *v9 = v10;
  }

  re::mtl::CommandBuffer::makeBlitCommandEncoder(a1 + 1, &v15);
  v12 = a1 + 2;
  if (a1 + 2 != &v15)
  {
    v13 = v15;
    v15 = 0;
    v14 = *v12;
    *v12 = v13;
  }

  objc_autoreleasePoolPop(v6);
}

void re::internal::BlitCommandQueue::~BlitCommandQueue(re::internal::BlitCommandQueue *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    [v2 endEncoding];
    v3 = *(this + 2);
  }

  else
  {
    v3 = 0;
  }
}

id *re::internal::BlitCommandQueue::blitCommandEncoder(id *this)
{
  v2 = this + 1;
  if (!this[1])
  {
    re::mtl::CommandQueue::makeCommandBuffer(this, &v9);
    if (v2 != &v9)
    {
      v3 = v9;
      v9 = 0;
      v4 = *v2;
      *v2 = v3;
    }

    re::mtl::CommandBuffer::makeBlitCommandEncoder(v2, &v9);
    v5 = this + 2;
    if (this + 2 != &v9)
    {
      v6 = v9;
      v9 = 0;
      v7 = *v5;
      *v5 = v6;
    }
  }

  return this + 2;
}

void re::internal::BlitCommandQueue::commit(re::internal::BlitCommandQueue *this)
{
  if (*this)
  {
    v1 = this;
    v2 = objc_autoreleasePoolPush();
    v3 = *(v1 + 2);
    v1 = (v1 + 16);
    [v3 endEncoding];
    [*(v1 - 1) commit];
    re::ObjCObject::operator=(v1, 0);

    objc_autoreleasePoolPop(v2);
  }
}

void re::internal::BlitCommandQueue::waitUntilCompleted(re::internal::BlitCommandQueue *this@<X0>, _BYTE *a2@<X8>)
{
  if (*this)
  {
    v3 = this;
    v4 = objc_autoreleasePoolPush();
    v5 = *(v3 + 1);
    v3 = (v3 + 8);
    [v5 waitUntilCompleted];
    re::internal::getCommandBufferError(v3, a2);
    re::ObjCObject::operator=(v3, 0);

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    *a2 = 1;
  }
}

void re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(re::internal::TextureInMetalBuffers *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  re::DynamicArray<unsigned long>::deinit(this + 136);
  re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::deinit(this + 2);
}

uint64_t re::internal::TextureInMetalBuffers::allocate(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, void *a6, unint64_t a7, void *a8)
{
  v9 = a6;
  v10 = a3;
  v11 = a1;
  v94 = *MEMORY[0x1E69E9840];
  if (*(a1 + 192) == 1)
  {
    *(a1 + 192) = 0;
  }

  *(a1 + 152) = 0;
  ++*(a1 + 160);
  if (!a2)
  {
    return 1;
  }

  *(a1 + 176) = a3;
  v12 = a6[1];
  *(a1 + 184) = a7 > 1;
  v13 = *a1;
  if (*v11)
  {
    v14 = [v13 maxBufferLength];
    v15 = v9[1];
  }

  else
  {
    v14 = -1;
    v15 = v12;
  }

  v85 = a4 - 1;
  v17 = v14 / v10;
  v18 = v14 / v10 * a4;
  v19 = v9[2];
  if (v19 <= a7)
  {
    v20 = a7;
  }

  else
  {
    v20 = v9[2];
  }

  v21 = 1;
  if (v19 >= 2 && v18 > v15)
  {
    v21 = v18 / v15;
    v18 = v18 / v15 * v15;
  }

  v22 = v12 + v85;
  v71 = v15 + v18 - 1;
  v23 = v20 + v21 - 1;
  v24 = *(v11 + 24);
  v83 = v71 / v18;
  v70 = v23 / v21;
  v25 = v23 / v21 * (v71 / v18);
  if (v24 < v25)
  {
    re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::resize(v11 + 16, v23 / v21 * (v71 / v18));
    v24 = *(v11 + 24);
  }

  for (; v25 < v24; ++v25)
  {
    v26 = v11 + 40;
    if ((*(v11 + 32) & 1) == 0)
    {
      v26 = *(v11 + 48);
    }

    *(v26 + 96 * v25 + 88) = 0;
  }

  v69 = v22 / a4;
  if (v17 >= v22 / a4)
  {
    v27 = v22 / a4;
  }

  else
  {
    v27 = v17;
  }

  if (v21 <= v23)
  {
    v52 = 0;
    v75 = v27 * v10;
    v76 = v18;
    v80 = v11 + 40;
    v73 = v11;
    v67 = v21;
    v68 = v20;
    do
    {
      v72 = v52;
      v84 = v52 * v21;
      v53 = v52 * v21 + v21;
      if (v53 >= v20)
      {
        v53 = v20;
      }

      if (v18 <= v71)
      {
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v79 = v53 - v84;
        v81 = (v53 - v84) * v10;
        v82 = v52 * v83;
        v57 = v18;
        while (1)
        {
          v58 = v9[1];
          if (v58 >= v57)
          {
            v58 = v57;
          }

          if (*(v11 + 24) <= v56 + v82)
          {
            v92 = 0u;
            v93 = 0u;
            v90 = 0u;
            v91 = 0u;
            *buf = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_96;
          }

          v59 = v80;
          if ((*(v11 + 32) & 1) == 0)
          {
            v59 = *(v11 + 48);
          }

          v60 = v58 + v54;
          v61 = v81 * ((v58 + v54 + v85) / a4);
          v62 = v59 + 96 * (v56 + v82);
          *(v62 + 80) = (v55 / a4 + v84 * v69) * v10;
          *(v62 + 88) = v61;
          if (!*v62 || [*v62 length] < v61)
          {
            *buf = [*v11 newBufferWithLength:v61 options:0];
            NS::SharedPtr<MTL::Texture>::operator=(v62, buf);
            if (*buf)
            {
            }
          }

          if (!*v62)
          {
            break;
          }

          if (*(v11 + 8))
          {
            [*v62 setLabel_];
          }

          if (a5 && !a8[2])
          {
            v63 = v9;
            v64 = v10;
            if (v61 >= a2 - *(v62 + 80))
            {
              v65 = a2 - *(v62 + 80);
            }

            else
            {
              LODWORD(v65) = v61;
            }

            v51 = (*(*a5 + 104))(a5, v65, [*v62 contents]) == v65;
            v10 = v64;
            v9 = v63;
            v11 = v73;
            if (!v51)
            {
              return 0;
            }
          }

          *(v62 + 8) = 0;
          *(v62 + 16) = v10;
          v18 = v76;
          *(v62 + 24) = v75;
          *(v62 + 32) = *v9;
          *(v62 + 40) = v60;
          *(v62 + 48) = v79;
          *(v62 + 56) = 0;
          ++v56;
          *(v62 + 64) = v55;
          *(v62 + 72) = v84;
          v55 += v76;
          v54 -= v76;
          v57 += v76;
          if (v56 >= v83)
          {
            goto LABEL_88;
          }
        }

        v66 = *re::pipelineLogObjects(0);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v61;
          _os_log_error_impl(&dword_1E1C61000, v66, OS_LOG_TYPE_ERROR, "Failed to allocate a buffer of size %d", buf, 8u);
        }

        re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::resize(v11 + 16, 0);
        return 0;
      }

LABEL_88:
      v52 = v72 + 1;
      v21 = v67;
      v20 = v68;
    }

    while (v72 + 1 < v70);
  }

  result = 1;
  if (!a5)
  {
    return result;
  }

  if (!a8[2])
  {
    return result;
  }

  v28 = v10;
  v29 = *a8;
  v78 = a8 + 1;
  if (v29 == v78)
  {
    return result;
  }

  v30 = 0;
  v31 = v69 * v28;
  do
  {
    v32 = v29[4];
    if ((v32 & 0x8000000000000000) == 0 && v32 != v30)
    {
      (*(*a5 + 32))(a5, ((v32 - v30) * v31));
    }

    v33 = *(v11 + 24);
    if (!v33)
    {
      goto LABEL_97;
    }

    v34 = 0;
    v35 = 0;
    v36 = v29[5] * v31;
    v37 = (v11 + 128);
    v87 = v30;
    while ((*(v11 + 32) & 1) == 0)
    {
      v38 = *(v11 + 48) + v34;
      v39 = *(v38 + 80);
      if (v39 <= v36)
      {
        v40 = *(v38 + 88);
        goto LABEL_38;
      }

LABEL_39:
      ++v35;
      v37 += 12;
      v34 += 96;
      if (v33 == v35)
      {
        goto LABEL_97;
      }
    }

    v39 = *(v37 - 1);
    if (v39 > v36)
    {
      goto LABEL_39;
    }

    v40 = *v37;
LABEL_38:
    if (v36 >= v40 + v39)
    {
      goto LABEL_39;
    }

    v41 = v31;
    if (v31)
    {
      v42 = v36 - v39;
      v43 = v31;
      while (*(v11 + 24) > v35)
      {
        v44 = v11 + 40;
        if ((*(v11 + 32) & 1) == 0)
        {
          v44 = *(v11 + 48);
        }

        v45 = v44 + v34;
        if (*(v45 + 88) - v42 >= v43)
        {
          v46 = v43;
        }

        else
        {
          v46 = *(v45 + 88) - v42;
        }

        v47 = [*v45 contents];
        if ((v29[4] & 0x8000000000000000) != 0)
        {
          memset_pattern16(&v47[v42], &re::internal::AstcVoidExtentMagenta, v46);
        }

        else if ((*(*a5 + 104))(a5, v46, &v47[v42]) != v46)
        {
          return 0;
        }

        v42 = 0;
        ++v35;
        v34 += 96;
        v43 -= v46;
        if (!v43)
        {
          goto LABEL_54;
        }
      }

LABEL_96:
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_97:
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

LABEL_54:
    v48 = v29[4];
    v30 = v87;
    if (v48 >= 0)
    {
      v30 = v48 + 1;
    }

    v49 = v29[1];
    if (v49)
    {
      do
      {
        v50 = v49;
        v49 = *v49;
      }

      while (v49);
    }

    else
    {
      do
      {
        v50 = v29[2];
        v51 = *v50 == v29;
        v29 = v50;
      }

      while (!v51);
    }

    result = 1;
    v29 = v50;
    v31 = v41;
  }

  while (v50 != v78);
  return result;
}

void re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 < a2)
  {
    if (*a1)
    {
      if ((*(a1 + 16) & 1) == 0)
      {
LABEL_4:
        v5 = *(a1 + 24);
LABEL_15:
        if (v5 < a2)
        {
          re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::setCapacity(a1, a2);
        }

        v11 = *(a1 + 8);
        v12 = a2 - v11;
        if (a2 > v11)
        {
          v13 = 96 * v11;
          do
          {
            v14 = a1 + 24;
            if ((*(a1 + 16) & 1) == 0)
            {
              v14 = *(a1 + 32);
            }

            v15 = (v14 + v13);
            v15[4] = 0uLL;
            v15[5] = 0uLL;
            v15[2] = 0uLL;
            v15[3] = 0uLL;
            v13 += 96;
            *v15 = 0uLL;
            v15[1] = 0uLL;
            --v12;
          }

          while (v12);
        }

        goto LABEL_22;
      }
    }

    else
    {
      re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::setCapacity(a1, a2);
      v10 = *(a1 + 16) + 2;
      *(a1 + 16) = v10;
      if ((v10 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v5 = 1;
    goto LABEL_15;
  }

  if (v4 <= a2)
  {
    return;
  }

  v6 = 96 * a2;
  v7 = a2;
  do
  {
    v8 = a1 + 24;
    if ((*(a1 + 16) & 1) == 0)
    {
      v8 = *(a1 + 32);
    }

    v9 = *(v8 + v6);
    if (v9)
    {

      *(v8 + v6) = 0;
      v4 = *(a1 + 8);
    }

    ++v7;
    v6 += 96;
  }

  while (v7 < v4);
LABEL_22:
  *(a1 + 8) = a2;
  *(a1 + 16) += 2;
}

void re::internal::TextureInMetalBuffers::replaceTextureSlice(uint64_t a1, id *a2, uint64_t a3, unint64_t a4, void **a5, uint64_t a6)
{
  if (*(a1 + 32))
  {
    v12 = a1 + 40;
  }

  else
  {
    v12 = *(a1 + 48);
  }

  v13 = *(a1 + 24);
  if (v13)
  {
    v14 = 96 * v13;
    while (!*(v12 + 88))
    {
LABEL_19:
      v12 += 96;
      v14 -= 96;
      if (!v14)
      {
        return;
      }
    }

    v15 = objc_autoreleasePoolPush();
    v28 = *(v12 + 56);
    v29 = *(v12 + 72);
    if (*a6 == 1)
    {
      v28 = vcvtq_u64_f64(vaddq_f64(*(a6 + 8), vcvtq_f64_u64(v28)));
    }

    if ([*a2 textureType] == 7)
    {
      v16 = *a2;
      v26 = v28;
      v27 = v29 + a4;
      v17 = (v12 + 8);
      v18 = (v12 + 32);
      v19 = &v26;
      v20 = a5;
      v21 = v12;
      v22 = 0;
    }

    else
    {
      v26 = *(v12 + 32);
      v27 = *(v12 + 48);
      v23 = *(v12 + 8);
      v25 = *(v12 + 24);
      v24 = v23;
      if (*(a1 + 184) == 1)
      {
        if (v27 + v29 <= a4)
        {
LABEL_18:
          objc_autoreleasePoolPop(v15);
          goto LABEL_19;
        }

        if (a4 < v29)
        {
          objc_autoreleasePoolPop(v15);
          return;
        }

        *&v24 = v25 * (a4 - v29);
        v29 = 0;
        v27 = 1;
      }

      v16 = *a2;
      v17 = &v24;
      v18 = &v26;
      v19 = &v28;
      v20 = a5;
      v21 = v12;
      v22 = a4;
    }

    re::mtl::BlitCommandEncoder::copyFromBufferToTexture(v20, v21, v17, v18->i64, v16, v22, a3, v19->i64);
    goto LABEL_18;
  }
}

uint64_t re::internal::TextureInMetalBuffers::addTextureToBufferCommands(uint64_t a1, id *a2, uint64_t a3, void **a4, uint64_t *a5, unint64_t *a6, int a7)
{
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v11 = *a2;
  v12 = *a1;
  [v11 pixelFormat];
  [*a2 width];
  [*a2 height];
  [*a2 depth];
  [*a2 sampleCount];
  MTLGetTextureLevelInfoForDeviceWithOptions();

  if (a6)
  {
    v13 = *a6;
  }

  else
  {
    v13 = v42;
  }

  v14 = v39 * v13;
  v35 = v37;
  v36 = v38;
  if ([*a2 textureType] == 7)
  {
    v15 = &selRef_isLimitedRenderAsset;
    if (a5)
    {
      v36 = 1;
    }

    else
    {
      v14 *= v38;
    }
  }

  else
  {
    if ([*a2 textureType] != 3 && objc_msgSend(*a2, sel_textureType) != 5)
    {
      [*a2 textureType];
    }

    v15 = &selRef_isLimitedRenderAsset;
  }

  [*a2 v15[204]];
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  MTLPixelFormatGetInfoForDevice();
  v16.i32[0] = 0;
  v17.i32[0] = 0;
  *&v45 = 0;
  v44 = &v44 + 8;
  v18 = re::internal::TextureInMetalBuffers::allocate(a1, v14, v13, vbsl_s8(vdup_lane_s32(vceq_s32(v17, v16), 0), 0x100000001, vmovn_s64(0)).u32[1], 0, &v35, 1uLL, &v44);
  std::__tree<unsigned long long>::destroy(&v44, *(&v44 + 1));
  if (v18)
  {
    v19 = (*(a1 + 32) & 1) != 0 ? a1 + 40 : *(a1 + 48);
    v20 = *(a1 + 24);
    if (v20)
    {
      v21 = 0;
      v22 = 96 * v20;
      do
      {
        if (*(v19 + v21 + 88))
        {
          v23 = objc_autoreleasePoolPush();
          if (a7)
          {
            bzero([*(v19 + v21) contents], *(v19 + v21 + 88));
          }

          v24 = [*a2 &selRef_updateCommandQueue];
          if (a5 && v24 == 7)
          {
            v44 = *(v19 + v21 + 56);
            *&v45 = *a5 + *(v19 + v21 + 72);
            v25 = *a2;
            v26 = &v44;
            v27 = (v19 + v21 + 32);
            v28 = (v19 + v21 + 8);
            v29 = a4;
            v30 = 0;
          }

          else
          {
            if (a5)
            {
              v30 = *a5;
            }

            else
            {
              v30 = 0;
            }

            v25 = *a2;
            v26 = (v19 + v21 + 56);
            v27 = (v19 + v21 + 32);
            v28 = (v19 + v21 + 8);
            v29 = a4;
          }

          re::mtl::BlitCommandEncoder::copyFromTextureToBuffer(v29, v25, v30, a3, v26, v27, (v19 + v21), v28);
          objc_autoreleasePoolPop(v23);
        }

        v21 += 96;
      }

      while (v22 != v21);
    }
  }

  return v18;
}

__n128 re::internal::TextureInMetalBuffers::copyTextureSliceToBuffer@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, id *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  if (*(a1 + 192) == 1)
  {
    *(a1 + 192) = 0;
  }

  *(a1 + 152) = 0;
  ++*(a1 + 160);
  if ([*a3 storageMode] == 2)
  {
    *&v41 = 0x62DBC07062F30FA3;
    *(&v41 + 1) = "copyTextureSliceToBuffer command queue";
    memset(v48, 0, sizeof(v48));
    re::internal::BlitCommandQueue::init(v48, a2, &v41);
    v14 = re::internal::BlitCommandQueue::blitCommandEncoder(v48);
    v15 = re::internal::TextureInMetalBuffers::addTextureToBufferCommands(a1, a3, a4, v14, a5, 0, 0);
    if (v15)
    {
      re::internal::BlitCommandQueue::commit(v48);
      re::internal::BlitCommandQueue::waitUntilCompleted(v48, &v41);
      if (v41)
      {
        re::internal::BlitCommandQueue::~BlitCommandQueue(v48);
LABEL_26:
        *a7 = 1;
        return result;
      }

      v35 = [objc_msgSend(*a3 label)];
      if (v42)
      {
        v36 = *(&v42 + 1);
      }

      else
      {
        v36 = &v42 + 1;
      }

      v37 = v49;
      v38 = v50;
      v39 = v51;
      *a7 = 0;
      *(a7 + 8) = v37;
      *(a7 + 24) = v38;
      *(a7 + 32) = v39;
      if (v41 & 1) == 0 && *(&v41 + 1) && (v42)
      {
        (*(**(&v41 + 1) + 40))();
      }
    }

    else
    {
      v20 = v41;
      v21 = v42;
      *a7 = 0;
      *(a7 + 8) = v20;
      *(a7 + 24) = v21;
    }

    re::internal::BlitCommandQueue::~BlitCommandQueue(v48);
    return result;
  }

  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v17 = *a3;
  v18 = *a1;
  [v17 pixelFormat];
  [*a3 width];
  [*a3 height];
  [*a3 depth];
  [*a3 sampleCount];
  MTLGetTextureLevelInfoForDeviceWithOptions();

  if (a6)
  {
    v19 = *a6;
  }

  else
  {
    v19 = v46;
  }

  v22 = v43 * v19;
  if (a5)
  {
    v23 = *a5;
  }

  else
  {
    v23 = 0;
  }

  v40 = v41;
  v24 = a5 != 0;
  v25 = [*a3 textureType] == 7;
  v26 = v24 && v25;
  if (v24 && v25)
  {
    v27 = 1;
  }

  else
  {
    v27 = v42;
  }

  *(a1 + 185) = 1;
  re::DynamicArray<BOOL>::resize(a1 + 136, v27 * v22);
  if (*(a1 + 152) == v27 * v22)
  {
    if (v26)
    {
      v29 = 0;
    }

    else
    {
      v29 = v23;
    }

    if (v26)
    {
      v30 = v23;
    }

    else
    {
      v30 = 0;
    }

    v31 = *a3;
    v32 = *(a1 + 168);
    v49 = 0uLL;
    v50 = v30;
    v51 = v40;
    v52 = v27;
    [v31 getBytes:v32 bytesPerRow:v19 bytesPerImage:v22 fromRegion:&v49 mipmapLevel:a4 slice:v29];
    goto LABEL_26;
  }

  result = v49;
  v33 = v50;
  v34 = v51;
  *a7 = 0;
  *(a7 + 8) = result;
  *(a7 + 24) = v33;
  *(a7 + 32) = v34;
  return result;
}

void re::internal::TextureInMetalBuffers::iterateTextureData(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 185) == 1)
  {
    if (!*(a1 + 152))
    {
      return;
    }

    v3 = *(a1 + 32);
  }

  else
  {
    if (!*(a1 + 24))
    {
      return;
    }

    v3 = *(a1 + 32);
    v4 = (v3 & 1) != 0 ? (a1 + 40) : *(a1 + 48);
    if (!*v4)
    {
      return;
    }
  }

  if (v3)
  {
    v5 = a1 + 40;
  }

  else
  {
    v5 = *(a1 + 48);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = v5 + 96 * v6;
    do
    {
      v8 = *v5;
      v9 = v8;
      v10 = *(v5 + 88);
      if (v10)
      {
        std::function<void ()(void const*,unsigned long)>::operator()(a2, [v8 contents], v10);
      }

      if (v9)
      {
      }

      v5 += 96;
    }

    while (v5 != v7);
  }
}

void std::function<void ()(void const*,unsigned long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  v7 = a2;
  v3 = *(a1 + 24);
  if (v3)
  {
    (*(*v3 + 48))(v3, &v7, &v6);
  }

  else
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();
    re::internal::TextureInMetalBuffers::createTextureData(v4, v5);
  }
}

void re::internal::TextureInMetalBuffers::createTextureData(re::internal::TextureInMetalBuffers *this, char a2)
{
  v3 = *(this + 22);
  if (*(this + 185) == 1)
  {
    v4 = *(this + 19);
    if (v4)
    {
      v5 = *(this + 21);
      if ((*(this + 192) & 1) == 0)
      {
        *(this + 192) = 1;
      }

      *(this + 25) = v3;
      v6 = 208;
      v3 = v4;
      goto LABEL_39;
    }

    goto LABEL_17;
  }

  v7 = *(this + 3);
  if (!v7)
  {
    goto LABEL_17;
  }

  if (*(this + 32))
  {
    v9 = this + 40;
    if (*(this + 5))
    {
      goto LABEL_9;
    }

LABEL_17:
    v5 = 0;
    if ((*(this + 192) & 1) == 0)
    {
      *(this + 192) = 1;
    }

    v6 = 200;
    goto LABEL_39;
  }

  v9 = *(this + 6);
  if (!*v9)
  {
    goto LABEL_17;
  }

LABEL_9:
  v10 = 0;
  v11 = &v9[96 * v7];
  do
  {
    v12 = *v9;
    v13 = *(v9 + 11);
    if (v12)
    {
    }

    v10 += v13;
    v9 += 96;
  }

  while (v9 != v11);
  if (*(this + 32))
  {
    if (*(this + 16) == v10)
    {
      *(this + 19) = 0;
      ++*(this + 40);
      v14 = this + 40;
      goto LABEL_22;
    }
  }

  else
  {
    v14 = *(this + 6);
    if (*(v14 + 11) == v10)
    {
      *(this + 19) = 0;
      ++*(this + 40);
LABEL_22:
      v5 = [*v14 contents];
      goto LABEL_36;
    }
  }

  re::DynamicArray<BOOL>::resize(this + 136, v10);
  if (*(this + 19) == v10)
  {
    if (*(this + 32))
    {
      v15 = this + 40;
    }

    else
    {
      v15 = *(this + 6);
    }

    v16 = *(this + 3);
    if (v16)
    {
      v17 = &v15[96 * v16];
      do
      {
        v18 = *v15;
        memcpy((*(this + 21) + *(v15 + 10)), [v18 contents], *(v15 + 11));
        if (v18)
        {
        }

        v15 += 96;
      }

      while (v15 != v17);
    }

    v5 = *(this + 21);
    if (a2)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_36;
    }
  }

  re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::resize(this + 16, 0);
LABEL_36:
  if ((*(this + 192) & 1) == 0)
  {
    *(this + 192) = 1;
  }

  *(this + 25) = v3;
  v6 = 208;
  v3 = v10;
LABEL_39:
  *(this + v6) = v3;
  *(this + 27) = v5;
}

void re::internal::TextureInMetalBuffers::updateBuffersFromTextureData(re::internal::TextureInMetalBuffers *this)
{
  if (*(this + 19))
  {
    v2 = (*(this + 32) & 1) != 0 ? (this + 40) : *(this + 6);
    v3 = *(this + 3);
    if (v3)
    {
      v4 = (v2 + 96 * v3);
      do
      {
        v5 = *v2;
        memcpy([v5 contents], (*(this + 21) + *(v2 + 10)), *(v2 + 11));
        if (v5)
        {
        }

        v2 = (v2 + 96);
      }

      while (v2 != v4);
    }
  }
}

void re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::deinit(void *a1)
{
  if (*a1)
  {
    v2 = a1[1];
    if (v2)
    {
      if (a1[2])
      {
        v3 = (a1 + 3);
      }

      else
      {
        v3 = a1[4];
      }

      v4 = 96 * v2;
      do
      {
        if (*v3)
        {

          *v3 = 0;
        }

        v3 += 12;
        v4 -= 96;
      }

      while (v4);
    }

    v5 = *(a1 + 4);
    if ((v5 & 1) == 0)
    {
      (*(**a1 + 40))(*a1, a1[4]);
      v5 = *(a1 + 4);
    }

    *a1 = 0;
    a1[1] = 0;
    *(a1 + 4) = (v5 | 1) + 2;
  }
}

uint64_t re::ImportGraphicsContext::ImportGraphicsContext(uint64_t a1, id *a2, id *a3, int a4, unsigned __int8 *a5, char a6)
{
  *a1 = *a2;
  *(a1 + 8) = *a3;
  *(a1 + 18) = BYTE2(a4);
  *(a1 + 16) = a4;
  v11 = *a5;
  *(a1 + 19) = v11;
  if (v11 == 1)
  {
    *(a1 + 20) = a5[1];
  }

  *(a1 + 21) = a6;
  *(a1 + 24) = 0;
  return a1;
}

uint64_t re::ImportGraphicsContext::ImportGraphicsContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 16) = v4;
  v5 = *(a2 + 24);
  if (v5)
  {
    LOBYTE(v5) = *v5;
  }

  *(a1 + 19) = 1;
  *(a1 + 20) = v5;
  *(a1 + 21) = *(a2 + 19);
  *(a1 + 24) = a2;
  return a1;
}

void re::ImportGraphicsContext::getOrCreateCommandQueue(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, id *a4@<X8>)
{
  if (*(a1 + 24))
  {
    re::ImportGraphicsResources::getOrCreateCommandQueue(*(a1 + 24), a2, a3, a4);
  }

  else
  {
    re::ImportGraphicsResources::createCommandQueue(a1, *(a2 + 8), a3, a4);
  }
}

uint64_t re::ImportGraphicsContext::createFromRenderManager@<X0>(re::ImportGraphicsContext *this@<X0>, uint64_t a2@<X8>)
{
  v7 = *(this + 13);
  if (v7)
  {

    return re::ImportGraphicsContext::ImportGraphicsContext(a2, v7);
  }

  else
  {
    v9 = *(this + 20);
    v10 = *(this + 6);
    v11 = *(this + 168) | (*(this + 338) << 16);
    if (v9)
    {
      LOBYTE(v9) = *v9;
    }

    v13 = v3;
    v14 = v4;
    v12[0] = 1;
    v12[1] = v9;
    return re::ImportGraphicsContext::ImportGraphicsContext(a2, this + 26, (v10 + 360), v11 & 0xFFFFFF, v12, 1);
  }
}

void re::ImportGraphicsContext::createFromAvailableManagers(re::ImportGraphicsContext *this@<X0>, const re::RenderManager *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2;
  if (!this || a2)
  {
    if (!this)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v4 = *(this + 20);
  }

  if (*(this + 26))
  {

    re::ImportGraphicsContext::createFromRenderManager(this, a3);
    return;
  }

LABEL_9:
  v8 = 0;
  v9 = 0;
  if (v4)
  {
    v6 = *v4;
  }

  else
  {
    v6 = 0;
  }

  v7[0] = 1;
  v7[1] = v6;
  re::ImportGraphicsContext::ImportGraphicsContext(a3, &v9, &v8, 65793, v7, 1);
}

void *re::UTTypes::HEIC(re::UTTypes *this)
{
  v1 = [*MEMORY[0x1E6982E00] identifier];

  return v1;
}

void *re::UTTypes::JPEG(re::UTTypes *this)
{
  v1 = [*MEMORY[0x1E6982E58] identifier];

  return v1;
}

uint64_t re::internal::getFaceOrArrayLength(id *a1)
{
  if ([*a1 textureType] == 5)
  {
    return 6;
  }

  v3 = [*a1 textureType];
  v4 = *a1;
  if (v3 == 6)
  {
    return 6 * [v4 arrayLength];
  }

  if ([v4 textureType] == 3)
  {
    return [*a1 arrayLength];
  }

  return 1;
}

uint64_t re::internal::getFaceOrArrayLength(re::internal *this, const re::TextureData *a2)
{
  if (re::TextureData::textureType(this) == 5)
  {
    return 6;
  }

  if (re::TextureData::textureType(this) == 6)
  {
    return 6 * re::TextureData::arrayLength(this);
  }

  if (re::TextureData::textureType(this) == 3)
  {
    return re::TextureData::arrayLength(this);
  }

  return 1;
}

uint64_t re::internal::getFaceOrArrayLength(id *this, const re::CPUTexture *a2)
{
  if ([this[3] textureType] == 5)
  {
    return 6;
  }

  v4 = [this[3] textureType];
  v5 = this[3];
  if (v4 == 6)
  {
    return 6 * [v5 arrayLength];
  }

  if ([v5 textureType] == 3)
  {
    return [this[3] arrayLength];
  }

  return 1;
}

void re::internal::synchronizeTextureMipmaps(id *this, const re::TextureData *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!*(this + 2))
  {
    v3 = *this;
    if ([v3 storageMode] == 1)
    {
      re::TextureData::mipmapLevelCount(this);
      re::internal::getFaceOrArrayLength(this, v4);
      v8 = [v3 device];
      re::ImportGraphicsResources::createCommandQueue(&v8, "blitMipmapsQueue", 1, &v13);

      re::mtl::CommandQueue::makeCommandBuffer(&v13, &v12);
      re::mtl::CommandBuffer::makeBlitCommandEncoder(&v12, &v11);
      [v11 endEncoding];
      [v12 commit];
      [v12 waitUntilCompleted];
      re::internal::getCommandBufferError(&v12, &v8);
      if ((v8 & 1) == 0)
      {
        v6 = *re::pipelineLogObjects(v5);
        {
          if (v9)
          {
            if (BYTE8(v9))
            {
              (*(*v9 + 40))();
            }

            v10 = 0u;
            v9 = 0u;
          }
        }
      }
    }

    if (v3)
    {
    }
  }
}

void re::internal::getCommandBufferError(id *this@<X0>, uint64_t a2@<X8>)
{
  v5 = *this;
  if (v5 && [v5 status] == 5)
  {
    re::mtl::CommandBuffer::error(this, v16);
    v6 = v16[0];

    if (v6)
    {
      v8 = [v6 localizedDescription];
      v9 = [v8 UTF8String];
      v10 = *v16;
      v16[0] = 0;
      v16[1] = 0;
      v11 = v17;
      v12 = v18;
      v17 = 0;
      v18 = 0;
      *a2 = 0;
      *(a2 + 8) = v10;
      *(a2 + 24) = v11;
      *(a2 + 32) = v12;
    }

    else
    {
      v13 = *v16;
      v14 = v17;
      v15 = v18;
      *a2 = 0;
      *(a2 + 8) = v13;
      *(a2 + 24) = v14;
      *(a2 + 32) = v15;
    }
  }

  else
  {
    *a2 = 1;
  }
}

double re::internal::ensureImageArrayConsistency@<D0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (!a2)
  {
    v5 = "Image array is empty";
    goto LABEL_9;
  }

  if (a2 != 1 && a3 == 2)
  {
    v5 = "Texture2D must have an image array of size 1";
LABEL_9:
    v6 = v26;
    v7 = v27;
    v8 = v28;
    *a4 = 0;
    *(a4 + 8) = v6;
    *(a4 + 24) = v7;
    *(a4 + 32) = v8;
    return *&v6;
  }

  if (a2 != 6 && a3 == 5)
  {
    v5 = "TextureCube must have an image array of size 6";
    goto LABEL_9;
  }

  v9 = a2 - 1;
  if (a2 == 1)
  {
LABEL_11:
    *a4 = 1;
  }

  else
  {
    v10 = (a1 + 8);
    while (1)
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      BitmapInfo = CGImageGetBitmapInfo(v12);
      v14 = CGImageGetBitmapInfo(v11);
      if (BitmapInfo != v14)
      {
        v22 = "Inconsistent image CGBitmapInfo";
        goto LABEL_25;
      }

      CGImageGetColorSpace(v12);
      CGImageGetColorSpace(v11);
      v15 = CGColorSpaceEqualToColorSpace();
      if ((v15 & 1) == 0)
      {
        break;
      }

      BitsPerPixel = CGImageGetBitsPerPixel(v12);
      v17 = CGImageGetBitsPerPixel(v11);
      if (BitsPerPixel != v17 || (BitsPerComponent = CGImageGetBitsPerComponent(v12), v17 = CGImageGetBitsPerComponent(v11), BitsPerComponent != v17))
      {
        v22 = "Inconsistent image pixel format";
        goto LABEL_25;
      }

      Width = CGImageGetWidth(v12);
      v20 = CGImageGetWidth(v11);
      if (Width != v20 || (Height = CGImageGetHeight(v12), v20 = CGImageGetHeight(v11), Height != v20))
      {
        v22 = "Inconsistent image size";
        goto LABEL_25;
      }

      ++v10;
      if (!--v9)
      {
        goto LABEL_11;
      }
    }

    v22 = "Inconsistent image CGColorSpace";
LABEL_25:
    *&v6 = v26;
    v23 = v27;
    v24 = v28;
    *(a4 + 8) = v26;
    *(a4 + 24) = v23;
    *(a4 + 32) = v24;
    *a4 = 0;
  }

  return *&v6;
}

uint64_t re::internal::getDestinationTransferFunctionFromOptions(re::internal *this, const re::TextureFromImageOptions *a2, CGColorSpace *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(this + 12);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  if (v3 || (a3 & 1) != 0)
  {
    return v4;
  }

  if ((*(this + 14) - 3) > 1)
  {
    return 0;
  }

  v6 = *(this + 8);
  v7 = v6;
  if (!v6)
  {
LABEL_11:
    if (a2)
    {
      v10 = 0;
      v9 = a2;
      goto LABEL_13;
    }

    return 0;
  }

  v9 = CGColorSpaceCreateWithName(v6);
  v10 = v9;
  if (!v9)
  {
    v11 = *re::pipelineLogObjects(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v16 = 136315138;
      CStringPtr = CFStringGetCStringPtr(v6, 0x8000100u);
      _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "Invalid colorSpaceNameOverride: %s", &v16, 0xCu);
    }

    goto LABEL_11;
  }

LABEL_13:
  ColorSpaceTransferFunction = re::getColorSpaceTransferFunction(v9, v8);
  if (re::internal::colorSpaceIsExtendedOrHDR(v9, v14))
  {
    v4 = 1;
  }

  else
  {
    v4 = ColorSpaceTransferFunction;
  }

  if (v10)
  {
    CGColorSpaceRelease(v10);
  }

  return v4;
}

uint64_t re::internal::broadcastRToRGB(unsigned __int8 *a1)
{
  v1 = *a1;
  if ((v1 - 2) < 3)
  {
    v1 = 2;
  }

  v2 = a1[1];
  if ((v2 - 2) < 3)
  {
    v2 = 2;
  }

  v3 = a1[2];
  if ((v3 - 2) < 3)
  {
    v3 = 2;
  }

  if (a1[3] - 2 >= 3)
  {
    v4 = a1[3];
  }

  else
  {
    v4 = 2;
  }

  return (v3 << 16) | (v4 << 24) | (v2 << 8) | v1;
}

uint64_t re::internal::downsampleFactorToFitDeviceLimits(id *a1, int a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v6 = *a1;
  if (!v6)
  {
    return 1;
  }

  if (a3 <= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = a3;
  }

  if (v7 <= a5)
  {
    v8 = a5;
  }

  else
  {
    v8 = v7;
  }

  if (a2 == 7)
  {
    v9 = 2048;
  }

  else
  {
    v9 = 0x4000;
    if (([v6 supportsFamily:1003] & 1) == 0)
    {
      if ([*a1 supportsFamily:2002])
      {
        v9 = 0x4000;
      }

      else
      {
        v9 = 0x2000;
      }
    }
  }

  result = 1;
  if (v9 < v8)
  {
    v11 = __clz(v8);
    v12 = (0x80000000 >> v11) - 1;
    v13 = 32 - v11;
    v14 = v11 ^ 0x1F;
    if ((v12 & v8) != 0)
    {
      v14 = v13;
    }

    v15 = __clz(v9);
    v16 = (0x80000000 >> v15) - 1;
    v17 = v15 | 0xE0;
    v18 = v15 - 31;
    if ((v16 & v9) != 0)
    {
      v19 = v17;
    }

    else
    {
      v19 = v18;
    }

    return (1 << (v19 + v14));
  }

  return result;
}

void re::TextureFromImageOptions::setColorSpace(re::TextureFromImageOptions *this, __CFString *a2)
{
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = *(this + 8);
  *(this + 8) = a2;
}

uint64_t *re::internal::applySemanticToOptions@<X0>(re::internal *this@<X0>, uint64_t a2@<X8>)
{
  v5 = *(this + 1);
  *a2 = *this;
  *(a2 + 16) = v5;
  *(a2 + 32) = *(this + 2);
  *(a2 + 44) = *(this + 44);
  *(a2 + 64) = *(this + 8);
  *(a2 + 72) = *(this + 72);
  *(a2 + 88) = *(this + 22);
  result = re::FixedArray<short>::FixedArray((a2 + 96), this + 12);
  *(a2 + 120) = *(this + 120);
  if (*a2 == 2)
  {
    *a2 = 0;
  }

  if (*(a2 + 4) == 3)
  {
    v7 = *(a2 + 56);
    if (v7)
    {
      if (v7 == 2)
      {
        v8 = 1;
      }

      else
      {
        v8 = 2 * ((v7 - 3) < 2);
      }
    }

    else
    {
      v8 = 2;
    }

    *(a2 + 4) = v8;
  }

  return result;
}

void re::internal::createRepackedTexture(id *a1@<X0>, id *a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = [*a2 textureType];
  if (v8 > 7 || ((1 << v8) & 0xAC) == 0)
  {
    v26 = *re::pipelineLogObjects(v8);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v30 = *a2;
      v31 = v26;
      *v37 = 67109120;
      *&v37[4] = [v30 textureType];
      _os_log_error_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_ERROR, "Unable to repack texture type %d", v37, 8u);
    }

    *a4 = 0;
  }

  else
  {
    v10 = [*a2 pixelFormat];
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    *v37 = 0u;
    MTLPixelFormatGetInfoForDevice();
    isHDR = re::isHDR(v10);
    v12 = 0 / 0uLL;
    v13 = 10;
    if (0 / 0uLL <= 0x1F)
    {
      v14 = 25;
    }

    else
    {
      v14 = 55;
    }

    if (isHDR)
    {
      v13 = v14;
    }

    if (v12 <= 0x1F)
    {
      v15 = 115;
    }

    else
    {
      v15 = 125;
    }

    if (!isHDR)
    {
      v15 = 70;
    }

    if (v39 == 1)
    {
      v16 = v13;
    }

    else
    {
      v16 = v15;
    }

    v17 = 8;
    if (isHDR)
    {
      v17 = 16;
    }

    if (v12 <= 0x1F)
    {
      v18 = v17;
    }

    else
    {
      v18 = 32;
    }

    if (v12 > v18)
    {
      v19 = *re::pipelineLogObjects(isHDR);
      isHDR = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      if (isHDR)
      {
        *buf = 134218240;
        *&buf[4] = 8 * *(&v38 + 1) / v39;
        v35 = 2048;
        v36 = v18;
        _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "Texture repack lost precision (before: %zu bpc, after: %zu bpc)", buf, 0x16u);
      }
    }

    v20 = *re::pipelineLogObjects(isHDR);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v32 = re::swizzleToChar(a3);
      v27 = re::swizzleToChar(BYTE1(a3));
      v28 = re::swizzleToChar(BYTE2(a3));
      v29 = re::swizzleToChar(HIBYTE(a3));
      *v37 = 67110144;
      *&v37[4] = v16;
      *&v37[8] = 1024;
      *&v37[10] = v32;
      *&v37[14] = 1024;
      LODWORD(v38) = v27;
      WORD2(v38) = 1024;
      *(&v38 + 6) = v28;
      WORD5(v38) = 1024;
      HIDWORD(v38) = v29;
      _os_log_debug_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_DEBUG, "Repacking texture to pixel format %d to bake in texture swizzle '%c%c%c%c'", v37, 0x20u);
    }

    *v37 = *a1;
    v21 = [*a2 usage];
    v22 = [*a2 storageMode];
    v23 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
    [v23 setStorageMode_];
    [v23 setTextureType_];
    [v23 setWidth_];
    [v23 setHeight_];
    [v23 setDepth_];
    [v23 setArrayLength_];
    [v23 setPixelFormat_];
    [v23 setMipmapLevelCount_];
    [v23 setSampleCount_];
    [v23 setUsage_];
    [v23 setCpuCacheMode_];
    *buf = 0;
    if ([*a2 isShareable])
    {
      re::mtl::Device::makeSharedTexture(v23, v37, v33);
    }

    else
    {
      re::mtl::Device::makeTexture(v23, v37, v33);
    }

    NS::SharedPtr<MTL::Texture>::operator=(buf, v33);
    v24 = v33[0];
    if (v33[0])
    {
    }

    if (*buf)
    {
      re::copyTexture(a1, a2, buf, a3, 0);
      *a4 = *buf;
    }

    else
    {
      v25 = *re::pipelineLogObjects(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v33[0]) = 0;
        _os_log_fault_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_FAULT, "Failed to create repacked texture", v33, 2u);
      }

      *a4 = 0;
      if (*buf)
      {
      }
    }

    if (v23)
    {
    }
  }
}

unint64_t re::swizzleToChar(unsigned int a1)
{
  v1 = 0x616267723130uLL >> (8 * a1);
  if (a1 >= 6)
  {
    LOBYTE(v1) = 63;
  }

  return v1 & 0x7F;
}

void re::copyTexture(id *a1, id *a2, id *a3, unint64_t a4, int a5)
{
  v6 = a4;
  v10 = a4 >> 8;
  v52 = *MEMORY[0x1E69E9840];
  v11 = a4 >> 16;
  v12 = a4 >> 24;
  v13 = *re::pipelineLogObjects(a1);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v34 = *a2;
    loga = v13;
    LODWORD(v34) = [v34 pixelFormat];
    v32 = [*a3 pixelFormat];
    *buf = 67110400;
    *&buf[4] = v34;
    *&buf[8] = 1024;
    *&buf[10] = v32;
    *&buf[14] = 1024;
    LODWORD(v49) = re::swizzleToChar(v6);
    WORD2(v49) = 1024;
    *(&v49 + 6) = re::swizzleToChar(v10);
    WORD5(v49) = 1024;
    HIDWORD(v49) = re::swizzleToChar(v11);
    LOWORD(v50) = 1024;
    *(&v50 + 2) = re::swizzleToChar(v12);
    _os_log_debug_impl(&dword_1E1C61000, loga, OS_LOG_TYPE_DEBUG, "Copying texture from pixel format %d to pixel format %d to bake in texture swizzle '%c%c%c%c'", buf, 0x26u);
  }

  v43[0] = v6;
  v43[1] = v10;
  v43[2] = v11;
  v43[3] = v12;
  v14 = [*a2 textureType];
  if ((v14 - 2) >= 2)
  {
    if (v14 == 7)
    {
      v33 = a5;
      if (a5)
      {
        v15 = "repack3DTextureWithSRGBToLinear";
      }

      else
      {
        v15 = "repack3DTexture";
      }

      v16 = 7;
      goto LABEL_14;
    }

    if (v14 != 5)
    {
      return;
    }
  }

  v33 = a5;
  if (a5)
  {
    v15 = "repack2DTextureWithSRGBToLinear";
  }

  else
  {
    v15 = "repack2DTexture";
  }

  v16 = 2;
LABEL_14:
  log = v16;
  v17 = [objc_msgSend(MEMORY[0x1E6974070] alloc)];
  [v17 setName_];
  re::mtl::Library::makeFunctionWithDescriptor(a1 + 1, v17, &v42);
  v18 = [objc_msgSend(MEMORY[0x1E6974030] alloc)];
  v41 = v18;
  v19 = v42;
  [v18 setComputeFunction_];
  re::mtl::Device::makeComputePipelineState(a1, &v41, &v40);
  re::ImportGraphicsContext::getOrCreateCommandQueue(a1, &re::internal::copyTextureQueueName(void)::queueName, 1, &v39);
  re::mtl::CommandQueue::makeCommandBuffer(&v39, &v38);
  re::mtl::CommandBuffer::makeComputeCommandEncoder(&v38, &v37);
  v20 = v40;
  [v37 setComputePipelineState:v40];
  [v37 setBytes:v43 length:4 atIndex:0];
  v21 = [*a2 pixelFormat];
  v22 = [*a3 pixelFormat];
  [*a3 pixelFormat];
  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  *buf = 0u;
  MTLPixelFormatGetInfoForDevice();
  if ((*&buf[8] & 0x800) != 0)
  {
    if ((v33 & 1) == 0)
    {
      v51 = 0;
      v49 = 0u;
      v50 = 0u;
      *buf = 0u;
      InfoForDevice = MTLPixelFormatGetInfoForDevice();
      if ((*&buf[8] & 0x800) != 0)
      {
        v21 = re::translateSRGBPixelFormatToLinear(v21);
      }

      else
      {
        v25 = *re::pipelineLogObjects(InfoForDevice);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_ERROR, "Copying from a linear to an sRGB texture will result if wrong gamma values.", buf, 2u);
        }
      }
    }

    v23 = log;
    v22 = re::translateSRGBPixelFormatToLinear(v22);
  }

  else
  {
    v23 = log;
  }

  re::encodeProcessTextureCommands(a1, &v40, &v37, a2, a3, v21, v22, v23);
  [v37 endEncoding];
  [v38 commit];
  [v38 waitUntilCompleted];
  re::internal::getCommandBufferError(&v38, buf);
  if ((buf[0] & 1) == 0)
  {
    v27 = *re::pipelineLogObjects(v26);
    {
      if (*&buf[8] && (v49 & 1) != 0)
      {
        (*(**&buf[8] + 40))();
      }
    }
  }

  if (v20)
  {
  }

  if (v18)
  {
  }

  if (v19)
  {
  }

  if (v17)
  {
  }
}

uint64_t re::TextureFromImageOptions::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  v5 = v4;
  v6 = *(a2 + 64);
  v7 = v6;
  if (v4)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (v4 | v6)
    {
      return 0;
    }

LABEL_9:
    if (*a1 == *a2 && *(a1 + 4) == *(a2 + 4) && *(a1 + 8) == *(a2 + 8) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16) && *(a1 + 20) == *(a2 + 20) && *(a1 + 24) == *(a2 + 24) && *(a1 + 44) == *(a2 + 44) && *(a1 + 48) == *(a2 + 48) && *(a1 + 52) == *(a2 + 52) && *(a1 + 56) == *(a2 + 56) && *(a1 + 72) == *(a2 + 72) && *(a1 + 76) == *(a2 + 76) && *(a1 + 80) == *(a2 + 80) && *(a1 + 28) == *(a2 + 28) && *(a1 + 32) == *(a2 + 32) && *(a1 + 36) == *(a2 + 36) && *(a1 + 40) == *(a2 + 40) && *(a1 + 84) == *(a2 + 84) && *(a1 + 88) == *(a2 + 88) && *(a1 + 90) == *(a2 + 90))
    {
      return *(a1 + 120) == *(a2 + 120);
    }

    return 0;
  }

  result = CFEqual(v4, v6);
  if (result)
  {
    goto LABEL_9;
  }

  return result;
}

BOOL re::canLoadTextureFileWithExtension(re *this, const char *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  LOBYTE(v2) = *this;
  if (*this)
  {
    v3 = this + 1;
    v4 = __s1;
    v5 = 30;
    do
    {
      if ((v2 - 65) < 0x1Au)
      {
        LOBYTE(v2) = v2 + 32;
      }

      *v4++ = v2;
      v6 = *v3++;
      v2 = v6;
      v8 = v5-- != 0;
    }

    while (v2 && v8);
  }

  else
  {
    v4 = __s1;
  }

  v9 = 0;
  *v4 = 0;
  do
  {
    v10 = strcmp(__s1, re::canLoadTextureFileWithExtension(char const*)::supported[v9]);
    if (!v10)
    {
      break;
    }
  }

  while (v9++ != 15);
  return v10 == 0;
}

void re::loadMetalTextureWithReleasedCGImageSource(re::internal *this@<X4>, CGImageSource *a2@<X0>, id *a3@<X1>, id *a4@<X2>, const char *a5@<X3>, re::Allocator *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v50[3] = *MEMORY[0x1E69E9840];
  *a8 = 0;
  *(a8 + 8) = 0;
  *(a8 + 16) &= 0xFC00u;
  *(a8 + 24) = 0;
  v16 = (a8 + 24);
  *(a8 + 32) = 0;
  *(a8 + 40) = 0;
  *(a8 + 56) = 0u;
  *(a8 + 72) = 0u;
  *(a8 + 84) = 0u;
  *(a8 + 104) = 0;
  *(a8 + 112) = 0;
  v49 = 0;
  v48 = 84148994;
  re::internal::applySemanticToOptions(this, v43);
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  *v34 = 0u;
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(0);
  Model = CGColorSpaceGetModel(0);
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v17 = objc_autoreleasePoolPush();
  re::createCGImagePtrFromCGImageSource(a3, a2, v43, 0, image);
  CGImagePtr::swap(image, v34);
  CGImageRelease(image[0]);
  image[0] = 0;

  CGColorSpaceRelease(space);
  space = 0;
  CFRelease(a2);
  objc_autoreleasePoolPop(v17);
  re::createTextureDescriptorForCGImagePtr(v34, a3, a4, v43, 0, v50, &v49, &v48, &v30);
  re::getDestinationColorSpace(v34, a3, &v30, this, v29);
  v18 = objc_autoreleasePoolPush();
  re::createTextureFromCGImagePtr(v34, a3, &v30, a5, this, a6, v29, v50, &v23, v49, &v48, a7);
  if (v23 == 1)
  {
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(a8, v24);
    *(a8 + 16) = v24[8];
    *v16 = v25[0];
    *(v16 + 12) = *(v25 + 12);
    v19 = *(a8 + 56);
    *(a8 + 56) = v26;
    v26 = v19;
    v20 = (a8 + 64);
    if ((a8 + 64) != &v27)
    {
      v21 = v27;
      v27 = 0;
      v22 = *v20;
      *v20 = v21;
    }

    re::DynamicArray<short>::operator=(a8 + 72, v28);
    *(a8 + 112) = v28[5];
  }

  if (re::TextureData::isValid(a8) && (*(this + 14) - 3) <= 1 && v29[0])
  {
    CGColorSpaceGetName(v29[0]);
  }

  re::Result<re::TextureImportData,re::DynamicString>::~Result(&v23);
  objc_autoreleasePoolPop(v18);
  CGColorSpaceRelease(v29[0]);
  if (v30)
  {
  }

  CGImageRelease(v34[0]);
  v34[0] = 0;

  CGColorSpaceRelease(v37);
  if (v45)
  {
    if (v46)
    {
      (*(*v45 + 40))();
      v46 = 0;
      v47 = 0;
    }

    v45 = 0;
  }
}

void re::loadMetalTextureWithReleasedCGImage(re::internal *this@<X4>, const re::ImportGraphicsContext *a2@<X0>, re *a3@<X1>, id *a4@<X2>, const char *a5@<X3>, re::Allocator *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v39[3] = *MEMORY[0x1E69E9840];
  *a8 = 0;
  *(a8 + 8) = 0;
  *(a8 + 16) &= 0xFC00u;
  *(a8 + 24) = 0;
  v16 = (a8 + 24);
  *(a8 + 32) = 0;
  *(a8 + 40) = 0;
  *(a8 + 56) = 0u;
  *(a8 + 72) = 0u;
  *(a8 + 84) = 0u;
  *(a8 + 104) = 0;
  *(a8 + 112) = 0;
  v38 = 0;
  v37 = 84148994;
  re::internal::applySemanticToOptions(this, v32);
  CGImageRefWithColorSpace = re::createCGImageRefWithColorSpace(a3, a2, v32, 1);
  CGImagePtr::CGImagePtr(image, CGImageRefWithColorSpace);
  re::createTextureDescriptorForCGImagePtr(image, a3, a4, v32, 0, v39, &v38, &v37, &v30);
  re::getDestinationColorSpace(image, a3, &v30, v32, space);
  v18 = objc_autoreleasePoolPush();
  re::createTextureFromCGImagePtr(image, a3, &v30, a5, v32, a6, space, v39, &v23, v38, &v37, a7);
  if (v23 == 1)
  {
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(a8, v24);
    *(a8 + 16) = v24[8];
    *v16 = v25[0];
    *(v16 + 12) = *(v25 + 12);
    v19 = *(a8 + 56);
    *(a8 + 56) = v26;
    v26 = v19;
    v20 = (a8 + 64);
    if ((a8 + 64) != &v27)
    {
      v21 = v27;
      v27 = 0;
      v22 = *v20;
      *v20 = v21;
    }

    re::DynamicArray<short>::operator=(a8 + 72, v28);
    *(a8 + 112) = v28[5];
  }

  if (re::TextureData::isValid(a8) && (*(this + 14) - 3) <= 1 && space[0])
  {
    CGColorSpaceGetName(space[0]);
  }

  re::Result<re::TextureImportData,re::DynamicString>::~Result(&v23);
  objc_autoreleasePoolPop(v18);
  CGColorSpaceRelease(space[0]);
  if (v30)
  {
  }

  CGImageRelease(image[0]);
  image[0] = 0;

  CGColorSpaceRelease(image[6]);
  if (v34)
  {
    if (v35)
    {
      (*(*v34 + 40))();
      v35 = 0;
      v36 = 0;
    }

    v34 = 0;
  }
}

void re::loadTextureWithContentsOfFile(const char *a1@<X0>, id *a2@<X1>, id *a3@<X2>, const char *a4@<X3>, uint64_t a5@<X4>, re::Allocator *a6@<X5>, uint64_t a7@<X8>)
{
  v82 = *MEMORY[0x1E69E9840];
  v14 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:a1 isDirectory:0 relativeToURL:0];
  v15 = [v14 pathExtension];
  v16 = [v15 isEqual:@"ktx"];

  if (!v16)
  {
LABEL_11:
    v19 = *MEMORY[0x1E696E008];
    v58[0] = *MEMORY[0x1E696E0A8];
    v58[1] = v19;
    v59[0] = MEMORY[0x1E695E110];
    v59[1] = MEMORY[0x1E695E118];
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:2];
    v21 = CGImageSourceCreateWithURL(v14, v20);
    if (v21)
    {
      re::loadMetalTextureWithReleasedCGImageSource(a5, v21, a2, a3, a4, a6, 0, a7);
    }

    else
    {
      v22 = *re::pipelineLogObjects(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v74 = a1;
        _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "Failed to create texture from path: %s", buf, 0xCu);
      }

      *a7 = 0;
      *(a7 + 8) = 0;
      *(a7 + 16) &= 0xFC00u;
      *(a7 + 32) = 0;
      *(a7 + 40) = 0;
      *(a7 + 24) = 0;
      *(a7 + 56) = 0u;
      *(a7 + 72) = 0u;
      *(a7 + 84) = 0u;
      *(a7 + 104) = 0;
      *(a7 + 112) = 0;
    }

    goto LABEL_44;
  }

  v17 = re::FileSeekableInputStream::FileSeekableInputStream(buf, a1, 0, -1);
  if (v77 != -1)
  {
    v56 = 0;
    v55 = 0;
      ;
    }

    if (v56)
    {
      v18 = v55 >= 0xC;
    }

    else
    {
      v18 = 0;
    }

    if (v18)
    {
      v24 = 0;
      {
        if (++v24 == 12)
        {
          v25 = v80[3] - v81;
          if (v25 <= v79 + v78)
          {
            v26 = 0;
          }

          else
          {
            v26 = v25 - (v79 + v78);
          }

          v27 = v26 + v55;
          v28 = v25 - (v26 + v55);
          v29 = v25 - v78;
          if (v28 >= v78)
          {
            v30 = v27;
          }

          else
          {
            v30 = v29;
          }

          google::protobuf::io::CopyingInputStreamAdaptor::BackUp(v80, v30);
          v31 = *(a5 + 16);
          v45 = *a5;
          v46 = v31;
          v47[0] = *(a5 + 32);
          *(v47 + 12) = *(a5 + 44);
          v48 = *(a5 + 64);
          v49 = *(a5 + 72);
          v50 = *(a5 + 88);
          re::FixedArray<short>::FixedArray(&v51, (a5 + 96));
          v54 = *(a5 + 120);
          if (DWORD1(v46) != 1)
          {
            DWORD1(v46) = 2;
          }

          v32 = [*a3 swizzle];
          v36[0] = v45;
          v36[1] = v46;
          v37[0] = v47[0];
          *(v37 + 12) = *(v47 + 12);
          v38 = v48;
          v39 = v49;
          v40 = v50;
          re::FixedArray<short>::FixedArray(&v41, &v51);
          v44 = v54;
          re::createTextureWithKTXData(a2, buf, v32, a4, v36, a6, 0, 0, v60, 0, 0, 0);
          *a7 = 0;
          *(a7 + 8) = -1;
          std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(a7, &v64);
          v33 = v68;
          *(a7 + 24) = v67[0];
          *(a7 + 36) = *(v67 + 12);
          *(a7 + 16) = v66;
          v68 = 0u;
          *(a7 + 56) = v33;
          *(a7 + 72) = v69;
          v69 = 0;
          *(a7 + 80) = v70;
          v70 = 0u;
          ++v71;
          *(a7 + 96) = 1;
          v34 = v72;
          *&v72 = 0;
          *(a7 + 104) = v34;
          if (v68)
          {

            *&v68 = 0;
          }

          if (v65 != -1)
          {
            (off_1F5D0BA18[v65])(&v57, &v64);
          }

          v65 = -1;
          if (v41)
          {
            if (v42)
            {
              (*(*v41 + 40))();
              v42 = 0;
              v43 = 0;
            }

            v41 = 0;
          }

          if (v51)
          {
            if (v52)
            {
              (*(*v51 + 40))();
              v52 = 0;
              v53 = 0;
            }

            v51 = 0;
          }

          goto LABEL_43;
        }
      }
    }

    re::FileSeekableInputStream::~FileSeekableInputStream(buf);
    goto LABEL_11;
  }

  v23 = *re::pipelineLogObjects(v17);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    if (v75)
    {
      v35 = *&v76[7];
    }

    else
    {
      v35 = v76;
    }

    *v60 = 136315394;
    v61 = a1;
    v62 = 2080;
    v63 = v35;
    _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, "Failed to create texture from path: %s: %s", v60, 0x16u);
  }

  *a7 = 0;
  *(a7 + 8) = 0;
  *(a7 + 16) &= 0xFC00u;
  *(a7 + 32) = 0;
  *(a7 + 40) = 0;
  *(a7 + 24) = 0;
  *(a7 + 56) = 0u;
  *(a7 + 72) = 0u;
  *(a7 + 84) = 0u;
  *(a7 + 104) = 0;
  *(a7 + 112) = 0;
LABEL_43:
  re::FileSeekableInputStream::~FileSeekableInputStream(buf);
LABEL_44:
}

void re::loadTextureWithData(id *a1@<X0>, id *a2@<X1>, id *a3@<X2>, const char *a4@<X3>, uint64_t a5@<X4>, re::Allocator *a6@<X5>, uint64_t a7@<X8>)
{
  v57 = *MEMORY[0x1E69E9840];
  v14 = [*a1 bytes];
  if ([*a1 length] >= 0xC)
  {
    v17 = 0;
    {
      if (++v17 == 12)
      {
        v18 = *(a5 + 16);
        v35 = *a5;
        v36 = v18;
        v37[0] = *(a5 + 32);
        *(v37 + 12) = *(a5 + 44);
        v38 = *(a5 + 64);
        v39 = *(a5 + 72);
        v40 = *(a5 + 88);
        re::FixedArray<short>::FixedArray(&v41, (a5 + 96));
        v44 = *(a5 + 120);
        DWORD1(v36) = 2;
        v32 = *a1;
        re::DataSeekableInputStream::DataSeekableInputStream(v33, &v32, 0, 0);

        v19 = [*a3 swizzle];
        v23[0] = v35;
        v23[1] = v36;
        v24[0] = v37[0];
        *(v24 + 12) = *(v37 + 12);
        v25 = v38;
        v26 = v39;
        v27 = v40;
        re::FixedArray<short>::FixedArray(&v28, &v41);
        v31 = v44;
        re::createTextureWithKTXData(a2, v33, v19, a4, v23, a6, 0, 0, buf, 0, 0, 0);
        *a7 = 0;
        *(a7 + 8) = -1;
        std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(a7, &v48);
        v20 = v52;
        *(a7 + 24) = v51[0];
        *(a7 + 36) = *(v51 + 12);
        *(a7 + 16) = v50;
        v52 = 0u;
        *(a7 + 56) = v20;
        *(a7 + 72) = v53;
        v53 = 0;
        *(a7 + 80) = v54;
        v54 = 0u;
        ++v55;
        *(a7 + 96) = 1;
        v21 = v56;
        *&v56 = 0;
        *(a7 + 104) = v21;
        if (v52)
        {

          *&v52 = 0;
        }

        if (v49 != -1)
        {
          (off_1F5D0BA18[v49])(&v45, &v48);
        }

        v49 = -1;
        if (v28)
        {
          if (v29)
          {
            (*(*v28 + 40))();
            v29 = 0;
            v30 = 0;
          }

          v28 = 0;
        }

        v33[0] = &unk_1F5D0A4F8;
        v33[0] = &unk_1F5D0A468;
        re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(v34);
        if (v41)
        {
          if (v42)
          {
            (*(*v41 + 40))();
            v42 = 0;
            v43 = 0;
          }

          v41 = 0;
        }

        return;
      }
    }
  }

  v15 = CGImageSourceCreateWithData(*a1, 0);
  re::loadMetalTextureWithReleasedCGImageSource(a5, v15, a2, a3, a4, a6, 0, a7);
  isValid = re::TextureData::isValid(a7);
  if (isValid)
  {

    re::TextureData::setLabel(a7, a4);
  }

  else
  {
    v22 = *re::pipelineLogObjects(isValid);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v47 = a4;
      _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "Failed to create texture from data labeled '%s'", buf, 0xCu);
    }
  }
}

void re::loadTextureDataWithProvider(re *this@<X0>, re::TextureProvider *a2@<X1>, re::Allocator *a3@<X2>, uint64_t a4@<X8>)
{
  v106 = *MEMORY[0x1E69E9840];
  if (*(this + 2))
  {
    v7 = *(this + 3);
  }

  else
  {
    v7 = this + 17;
  }

  v8 = (*(*this + 64))(this, a2, a3);
  v57 = v8;
  if (!v8)
  {
    goto LABEL_38;
  }

  v95 = &unk_1F5D0BA38;
  v96 = &v57;
  v97 = this;
  *&v98[0] = &v95;
  re::loadMetalTextureWithReleasedCGImage((this + 48), v8, (this + 184), this + 5, v7, a2, &v95, &v85);
  if (!*&v98[0])
  {
    goto LABEL_143;
  }

  (*(**&v98[0] + 48))(*&v98[0]);
  if (DWORD2(v85))
  {
    if (DWORD2(v85) != 1)
    {
      goto LABEL_144;
    }

    if (!*(v85 + 48))
    {
      goto LABEL_29;
    }

    v9 = (v85 + 24);
  }

  else
  {
    v9 = &v85;
  }

  if (*v9)
  {
    re::Ok<re::TextureImportData &,re::TextureImportData>(&v85, v62);
    re::Result<re::TextureImportData,re::DynamicString>::Result(a4, v62);
    if (v63)
    {
      if (v66)
      {
        (*(*v63 + 40))();
      }

      v66 = 0;
      v64 = 0;
      v63 = 0uLL;
      LODWORD(v65) = v65 + 1;
    }

    if (*&v62[56])
    {

      *&v62[56] = 0;
    }

    if (*&v62[8] != -1)
    {
      (off_1F5D0BA18[*&v62[8]])(&v78, v62);
    }

    if (*v89)
    {
      if (*&v89[32])
      {
        (*(**v89 + 40))();
      }

      *&v89[32] = 0;
      memset(v89, 0, 24);
      ++*&v89[24];
    }

    if (v88)
    {

      *&v88 = 0;
    }

    if (DWORD2(v85) != -1)
    {
      (off_1F5D0BA18[DWORD2(v85)])(v62, &v85);
    }

    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](&v95);
    return;
  }

LABEL_29:
  if (*v89)
  {
    if (*&v89[32])
    {
      (*(**v89 + 40))();
    }

    *&v89[32] = 0;
    memset(v89, 0, 24);
    ++*&v89[24];
  }

  if (v88)
  {

    *&v88 = 0;
  }

  if (DWORD2(v85) != -1)
  {
    (off_1F5D0BA18[DWORD2(v85)])(v62, &v85);
  }

  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](&v95);
LABEL_38:
  (*(*this + 80))(&v78, this);
  if (v78 != 1)
  {
    v14 = (*(*this + 72))(&v74, this);
    if (v74 == 1)
    {
      *&v62[32] = 0;
      memset(v62, 0, 28);
      if (v76)
      {
        re::DynamicArray<CGImagePtr>::setCapacity(v62, v76);
        if (v76)
        {
          v15 = v77;
          v16 = 8 * v76;
          do
          {
            v17 = *v15++;
            CFRetain(v17);
            CGImagePtr::CGImagePtr(&v85, v17);
            re::DynamicArray<CGImagePtr>::add(v62, &v85);
            CGImageRelease(v85);
            *&v85 = 0;

            CGColorSpaceRelease(*(&v87[1] + 1));
            v16 -= 8;
          }

          while (v16);
        }
      }

      (*(*this + 88))(&v85, this);
      re::DynamicArray<CGImagePtr>::deinit(v62);
LABEL_112:
      if (v74 == 1 && v75 && v77)
      {
        (*(*v75 + 40))();
      }

      goto LABEL_116;
    }

    MEMORY[0x1EEE9AC00](v14);
    v18 = (*(*this + 16))(&v70, this, v45, 12);
    if (v70)
    {
      if (v71 >= 0xC)
      {
        for (i = 0; i != 12; ++i)
        {
          {
            goto LABEL_72;
          }
        }

        v69 = (*(*this + 48))(this);
        if (v69)
        {
          v104[0] = &unk_1F5D0BAB8;
          v104[1] = &v69;
          v104[2] = this;
          v105 = v104;
          v20 = *(this + 4);
          *v62 = *(this + 3);
          *&v62[16] = v20;
          *&v62[32] = *(this + 5);
          *&v62[44] = *(this + 92);
          *&v62[64] = *(this + 14);
          v63 = *(this + 120);
          LODWORD(v64) = *(this + 34);
          re::FixedArray<short>::FixedArray(&v65, this + 18);
          v68 = *(this + 168);
          *&v62[20] = 2;
          BytePtr = CFDataGetBytePtr(v69);
          Length = CFDataGetLength(v69);
          v47 = &unk_1F5D0A468;
          v57 = &unk_1F5D0A468;
          v58 = 0;
          v59 = BytePtr;
          v60 = Length;
          re::FixedArrayInputStream::FixedArrayInputStream(v61, BytePtr, Length, -1);
          LODWORD(BytePtr) = [*(this + 5) swizzle];
          v48[0] = *v62;
          v48[1] = *&v62[16];
          v49[0] = *&v62[32];
          *(v49 + 12) = *&v62[44];
          v50 = *&v62[64];
          v51 = v63;
          v52 = v64;
          re::FixedArray<short>::FixedArray(&v53, &v65);
          v56 = v68;
          re::createTextureWithKTXData(this + 184, &v57, BytePtr, v7, v48, a2, 0, 0, &v85, v104, 0, 0);
          LOBYTE(v95) = 0;
          LODWORD(v96) = -1;
          std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v95, v89);
          v23 = v90;
          v98[0] = *&v89[24];
          *(v98 + 12) = *&v89[36];
          LOWORD(v97) = *&v89[16];
          v90 = 0u;
          v99 = v23;
          v100 = v91;
          v91 = 0;
          v101 = v92;
          v92 = 0u;
          ++v93;
          v102 = 1;
          v24 = v94;
          *&v94 = 0;
          v103 = v24;
          if (*&v89[8] != -1)
          {
            (off_1F5D0BA18[*&v89[8]])(&v82, v89);
          }

          *&v89[8] = -1;
          if (v53)
          {
            if (v54)
            {
              (*(*v53 + 40))();
              v54 = 0;
              v55 = 0;
            }

            v53 = 0;
          }

          if (v105)
          {
            v25 = (*(*v105 + 48))(v105);
            if (v96)
            {
              if (v96 != 1)
              {
                goto LABEL_144;
              }

              if (!*(v95 + 6))
              {
                goto LABEL_124;
              }

              v26 = (v95 + 24);
            }

            else
            {
              v26 = &v95;
            }

            if (*v26)
            {
              re::Ok<re::TextureImportData &,re::TextureImportData>(&v95, &v85);
              re::Result<re::TextureImportData,re::DynamicString>::Result(a4, &v85);
              re::types::Ok<re::TextureImportData>::~Ok(&v85);
LABEL_125:
              if (v100)
              {
                if (v103)
                {
                  (*(*v100 + 40))();
                }

                *&v103 = 0;
                v101 = 0uLL;
                v100 = 0;
                ++v102;
              }

              if (v99)
              {

                *&v99 = 0;
              }

              if (v96 != -1)
              {
                (off_1F5D0BA18[v96])(&v85, &v95);
              }

              v57 = v47;
              re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(v61);
              if (v65)
              {
                if (v66)
                {
                  (*(*v65 + 40))();
                  v66 = 0;
                  v67 = 0;
                }

                v65 = 0;
              }

              std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v104);
              goto LABEL_108;
            }

LABEL_124:
            v39 = v85;
            v40 = v86;
            v41 = *&v87[0];
            *a4 = 0;
            *(a4 + 8) = v39;
            *(a4 + 24) = v40;
            *(a4 + 32) = v41;
            goto LABEL_125;
          }

          goto LABEL_143;
        }

        v27 = *re::pipelineLogObjects(0);
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_72;
        }

        LODWORD(v85) = 136315138;
        *(&v85 + 4) = v7;
        v38 = "Failed to get texture ktx data for data labeled '%s'";
        goto LABEL_142;
      }
    }

    else
    {
      v27 = *re::pipelineLogObjects(v18);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        if (v72)
        {
          v42 = *&v73[7];
        }

        else
        {
          v42 = v73;
        }

        LODWORD(v85) = 136315138;
        *(&v85 + 4) = v42;
        v38 = "%s";
LABEL_142:
        _os_log_error_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_ERROR, v38, &v85, 0xCu);
      }
    }

LABEL_72:
    *&v85 = 0;
    DWORD2(v85) = 0;
    LOWORD(v86) = v86 & 0xFC00;
    memset(v87, 0, 24);
    v88 = 0u;
    memset(v89, 0, 28);
    *&v89[40] = 0;
    *&v89[32] = 0;
    v28 = objc_autoreleasePoolPush();
    v83 = *MEMORY[0x1E696E0A8];
    v84 = MEMORY[0x1E695E110];
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
    v30 = (*(*this + 32))(this, v29);
    v57 = v30;
    if (!v30)
    {
LABEL_83:

      objc_autoreleasePoolPop(v28);
      if (!DWORD2(v85))
      {
        v33 = &v85;
        goto LABEL_88;
      }

      if (DWORD2(v85) == 1)
      {
        if (!*(v85 + 48))
        {
          goto LABEL_97;
        }

        v33 = (v85 + 24);
LABEL_88:
        if (*v33)
        {
          re::Ok<re::TextureImportData &,re::TextureImportData>(&v85, v62);
          re::Result<re::TextureImportData,re::DynamicString>::Result(a4, v62);
          if (v63)
          {
            if (v66)
            {
              (*(*v63 + 40))();
            }

            v66 = 0;
            v64 = 0;
            v63 = 0uLL;
            LODWORD(v65) = v65 + 1;
          }

          if (*&v62[56])
          {

            *&v62[56] = 0;
          }

          if (*&v62[8] != -1)
          {
            (off_1F5D0BA18[*&v62[8]])(&v95, v62);
          }

LABEL_100:
          if (*v89)
          {
            if (*&v89[32])
            {
              (*(**v89 + 40))();
            }

            *&v89[32] = 0;
            memset(v89, 0, 24);
            ++*&v89[24];
          }

          if (v88)
          {

            *&v88 = 0;
          }

          if (DWORD2(v85) != -1)
          {
            (off_1F5D0BA18[DWORD2(v85)])(v62, &v85);
          }

LABEL_108:
          if (v70 & 1) == 0 && v71 && (v72)
          {
            (*(*v71 + 40))();
          }

          goto LABEL_112;
        }

LABEL_97:
        if (v70)
        {
          re::DynamicString::format("Failed to create texture data from data labeled '%s'", v62, v7);
          v34 = *v62;
          v35 = *&v62[16];
          v36 = *&v62[24];
          *a4 = 0;
          *(a4 + 8) = v34;
          *(a4 + 24) = v35;
          *(a4 + 32) = v36;
        }

        else
        {
          re::DynamicString::DynamicString(v62, &v71);
          *a4 = 0;
          v37 = *&v62[24];
          *(a4 + 8) = *v62;
          *(a4 + 32) = v37;
          *(a4 + 16) = *&v62[8];
        }

        goto LABEL_100;
      }

LABEL_144:
      v43 = std::__throw_bad_variant_access[abi:nn200100]();
      re::Ok<re::TextureImportData &,re::TextureImportData>(v43, v44);
      return;
    }

    v47 = &v46;
    v95 = &unk_1F5D0BB38;
    v96 = &v57;
    v97 = this;
    *&v98[0] = &v95;
    re::loadMetalTextureWithReleasedCGImageSource((this + 48), v30, this + 23, this + 5, v7, a2, &v95, v62);
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v85, v62);
    LOWORD(v86) = *&v62[16];
    v87[0] = *&v62[24];
    *(v87 + 12) = *&v62[36];
    v31 = *(&v88 + 1);
    v32 = *&v62[56];
    *&v62[56] = v88;
    *&v62[64] = 0;
    v88 = v32;

    re::DynamicArray<short>::operator=(v89, &v63);
    *&v89[40] = v67;
    if (v63)
    {
      if (v66)
      {
        (*(*v63 + 40))();
      }

      v66 = 0;
      v64 = 0;
      v63 = 0uLL;
      LODWORD(v65) = v65 + 1;
    }

    if (*&v62[56])
    {

      *&v62[56] = 0;
    }

    if (*&v62[8] != -1)
    {
      (off_1F5D0BA18[*&v62[8]])(v104, v62);
    }

    if (*&v98[0])
    {
      (*(**&v98[0] + 48))(*&v98[0]);
      std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](&v95);
      goto LABEL_83;
    }

LABEL_143:
    std::__throw_bad_function_call[abi:nn200100]();
    goto LABEL_144;
  }

  *&v62[32] = 0;
  memset(v62, 0, 28);
  if (v80)
  {
    re::DynamicArray<CGImagePtr>::setCapacity(v62, v80);
    if (v80)
    {
      v10 = v81;
      v11 = v81 + 16 * v80;
      do
      {
        v12 = *v10;
        v13 = *(v10 + 8);
        if (*v10)
        {
          CFRetain(*v10);
        }

        re::createCGImagePtrFromCGImageSource(this + 184, v12, this + 48, v13, &v85);
        re::DynamicArray<CGImagePtr>::add(v62, &v85);
        CGImageRelease(v85);
        *&v85 = 0;

        CGColorSpaceRelease(*(&v87[1] + 1));
        if (v12)
        {
          CFRelease(v12);
        }

        v10 += 16;
      }

      while (v10 != v11);
    }
  }

  (*(*this + 88))(&v85, this);
  re::DynamicArray<CGImagePtr>::deinit(v62);
LABEL_116:
  if (v78 == 1)
  {
    re::DynamicArray<re::ImageSourceAndIndex>::deinit(&v79);
  }
}

uint64_t re::Ok<re::TextureImportData &,re::TextureImportData>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> const&>(a2, a1);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 36) = *(a1 + 36);
  v4 = *(a1 + 56);
  *(a2 + 56) = v4;
  if (v4)
  {
    v5 = (v4 + 8);
  }

  *(a2 + 64) = *(a1 + 64);
  result = re::DynamicArray<short>::DynamicArray(a2 + 72, (a1 + 72));
  *(a2 + 112) = *(a1 + 112);
  return result;
}

uint64_t re::Result<re::TextureImportData,re::DynamicString>::Result(uint64_t a1, uint64_t a2)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(a1 + 8, a2);
  *(a1 + 24) = *(a2 + 16);
  v4 = *(a2 + 24);
  *(a1 + 44) = *(a2 + 36);
  *(a1 + 32) = v4;
  *(a1 + 64) = *(a2 + 56);
  v5 = *(a2 + 64);
  *(a2 + 56) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 72) = v5;
  *(a1 + 80) = 0;
  v6 = *(a2 + 80);
  *(a1 + 80) = *(a2 + 72);
  *(a1 + 88) = v6;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  v7 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 88);
  *(a2 + 88) = v7;
  v8 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 104);
  *(a2 + 104) = v8;
  ++*(a2 + 96);
  ++*(a1 + 104);
  *(a1 + 120) = *(a2 + 112);
  return a1;
}

uint64_t re::DynamicArray<CGImagePtr>::add(uint64_t a1, uint64_t *a2)
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

        re::DynamicArray<CGImagePtr>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<CGImagePtr>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  result = CGImagePtr::CGImagePtr(*(a1 + 32) + 112 * v5, a2);
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

void re::anonymous namespace::loadFromCGImageArray(uint64_t a1, uint64_t a2, uint64_t a3, re *a4, id *a5, const char *a6, CGImage *a7, re::Allocator *a8)
{
  v42[3] = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {
    v18 = v32;
    v19 = v33;
    v20 = v34;
    *a1 = 0;
    *(a1 + 8) = v18;
    *(a1 + 24) = v19;
    *(a1 + 32) = v20;
    return;
  }

  v16 = CGImageRetain(**(a2 + 32));
  CGImageRefWithColorSpace = re::createCGImageRefWithColorSpace(a4, v16, a7, 0);
  CGImagePtr::CGImagePtr(v41, CGImageRefWithColorSpace);
  v40 = 0;
  v39 = 84148994;
  re::internal::applySemanticToOptions(a7, &v32);
  re::createTextureDescriptorForCGImagePtr(v41, a4, a5, &v32, 0, v42, &v40, &v39, &v31);
  re::getDestinationColorSpace(v41, a4, &v31, a7, space);
  if (a3 == 3)
  {
    v21 = &selRef_setArrayLength_;
    goto LABEL_10;
  }

  if (a3 == 7)
  {
    v21 = &selRef_setDepth_;
LABEL_10:
    [v31 *v21];
    goto LABEL_11;
  }

  if (a3 != 5)
  {
    re::DynamicString::format("Unsupported texture type for image array import: %d", &v27, a3);
    goto LABEL_21;
  }

  if (*(a2 + 16) != 6)
  {
    re::DynamicString::format("Image array size is expected to be 6 for a cube, but is %d", &v27, *(a2 + 16));
LABEL_21:
    re::DynamicString::DynamicString(&v24, &v27);
    *a1 = 0;
    *(a1 + 8) = v24;
    v23 = v27;
    *(a1 + 32) = v26;
    *(a1 + 16) = v25;
    if (v23 && (v28 & 1) != 0)
    {
      (*(*v23 + 40))(v23, v29);
    }

    goto LABEL_12;
  }

LABEL_11:
  [v31 setTextureType_];
  v22 = objc_autoreleasePoolPush();
  re::createTextureFromCGImagePtrs(*(a2 + 32), *(a2 + 16), a4, &v31, a6, a7, a8, space, a1, v42, v40, &v39, 0);
  objc_autoreleasePoolPop(v22);
LABEL_12:
  CGColorSpaceRelease(space[0]);
  if (v31)
  {
  }

  if (v36)
  {
    if (v37)
    {
      (*(*v36 + 40))();
      v37 = 0;
      v38 = 0;
    }

    v36 = 0;
  }

  CGImageRelease(v41[0]);
  v41[0] = 0;

  CGColorSpaceRelease(v41[6]);
}

void re::internal::createTextureProviderProperties(id *this@<X0>, const re::TextureProvider *a2@<X1>, uint64_t a3@<X8>)
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = this + 5;
  v6 = (*(*this + 7))(this, a2);
  if (v6)
  {
    v7 = v6;
    *a3 = 0;
    *(a3 + 8) = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
    *(a3 + 16) = 0;
    v8 = CGImageRetain(v7);
    CGImageRefWithColorSpace = re::createCGImageRefWithColorSpace((this + 23), v8, (this + 6), 0);
    CGImagePtr::CGImagePtr(&v33, CGImageRefWithColorSpace);
    re::internal::applySemanticToOptions((this + 6), v42);
    re::createTextureDescriptorForCGImagePtr(&v33, this + 23, v5, v42, 1, 0, 0, 0, v41);
    NS::SharedPtr<MTL::Texture>::operator=((a3 + 8), v41);
    if (*v41)
    {

      *v41 = 0;
    }

    if (v45)
    {
      if (v46)
      {
        (*(*v45 + 40))();
        v46 = 0;
        v47 = 0;
      }

      v45 = 0;
    }

    Width = CGImageGetWidth(v7);
    CGImageGetHeight(v7);
    AlphaInfo = CGImageGetAlphaInfo(v7);
    CGImageRelease(v33);
    v33 = 0;

    CGColorSpaceRelease(v37);
  }

  else
  {
    (*(*this + 9))(v42, this);
    if (v42[0])
    {
      goto LABEL_13;
    }

    v12 = (*(*this + 10))(&v33, this);
    if (v33 == 1)
    {
      v12 = re::DynamicArray<re::ImageSourceAndIndex>::deinit(&v34);
    }

    if (v42[0])
    {
LABEL_13:
      v12 = *(&v42[0] + 1);
      if (*(&v42[0] + 1) && v43)
      {
        v12 = (*(**(&v42[0] + 1) + 40))();
      }
    }

    v13 = MEMORY[0x1EEE9AC00](v12);
    v14 = (*(*this + 2))(&v33, this, v31, 12, v13);
    if (v33)
    {
      v32 = 0;
      if (v34 >= 0xC)
      {
        v15 = 0;
        {
          if (++v15 == 12)
          {
            v16 = (*(*this + 5))(this);
            if (v16)
            {
              v17 = v16;
              *a3 = 0;
              *(a3 + 8) = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
              *(a3 + 16) = 0;
              BytePtr = CFDataGetBytePtr(v17);
              Length = CFDataGetLength(v17);
              v20 = [this[5] swizzle];
              if (this[2])
              {
                v21 = this[3];
              }

              else
              {
                v21 = this + 17;
              }

              re::createTextureDescriptorForKTXData(this + 23, BytePtr, Length, v20, v21, (this + 6), v42, &v32, v41, 0);
              NS::SharedPtr<MTL::Texture>::operator=((a3 + 8), v41);
              if (*v41)
              {
              }

              *(a3 + 16) = @"org.khronos.ktx";
              CFRelease(v17);
              goto LABEL_38;
            }

            v22 = *re::pipelineLogObjects(0);
            if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              break;
            }

            if (this[2])
            {
              v27 = this[3];
            }

            else
            {
              v27 = this + 17;
            }

            *v41 = 136315138;
            *&v41[4] = v27;
            v28 = "Failed to get texture ktx data for data labeled '%s'";
            v29 = v41;
            goto LABEL_52;
          }
        }
      }
    }

    else
    {
      v22 = *re::pipelineLogObjects(v14);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        if (v35)
        {
          v30 = *&v36[7];
        }

        else
        {
          v30 = v36;
        }

        LODWORD(v42[0]) = 136315138;
        *(v42 + 4) = v30;
        v28 = "%s";
        v29 = v42;
LABEL_52:
        _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, v28, v29, 0xCu);
      }
    }

    *a3 = 0;
    *(a3 + 8) = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
    *(a3 + 16) = 0;
    v23 = objc_autoreleasePoolPush();
    v39 = *MEMORY[0x1E696E0A8];
    v40 = MEMORY[0x1E695E110];
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v25 = (*(*this + 3))(this, v24);
    if (v25)
    {
      v26 = v25;
      re::internal::applySemanticToOptions((this + 6), v42);
      re::createTextureDescriptorForCGImageSource(v26, (this + 23), v5, v42, 0, 0, 1, v41);
      NS::SharedPtr<MTL::Texture>::operator=((a3 + 8), v41);
      if (*v41)
      {

        *v41 = 0;
      }

      if (v45)
      {
        if (v46)
        {
          (*(*v45 + 40))();
          v46 = 0;
          v47 = 0;
        }

        v45 = 0;
      }

      *a3 = CGImageSourceCopyPropertiesAtIndex(v26, 0, 0);
      *(a3 + 16) = CGImageSourceGetType(v26);
      CFRelease(v26);
    }

    objc_autoreleasePoolPop(v23);
LABEL_38:
    if (v33 & 1) == 0 && v34 && (v35)
    {
      (*(*v34 + 40))();
    }
  }
}