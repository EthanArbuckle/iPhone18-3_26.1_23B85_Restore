uint64_t re::DynamicArray<re::DeformationStackDefinition>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 40 * v4;
        do
        {
          re::DynamicArray<re::DeformationDefinition>::deinit(v3);
          v3 += 40;
          v5 -= 40;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::MeshDeformationIndex>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 48 * v4;
        v6 = (v3 + 24);
        do
        {
          re::StringID::destroyString(v6);
          re::StringID::destroyString((v6 - 16));
          v6 = (v6 + 48);
          v5 -= 48;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void re::MeshDeformationAsset::addDefaultModelStackDefinitionsForAllInstances(re::MeshDeformationAsset *this, const re::MeshAsset *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(a2 + 79))
  {
    v3 = *(a2 + 71);
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        v6 = *(a2 + 71);
        if (v6 <= i)
        {
          v11 = 0;
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v20 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v12 = 136315906;
          v13 = "operator[]";
          v14 = 1024;
          v15 = 797;
          v16 = 2048;
          v17 = i;
          v18 = 2048;
          v19 = v6;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v7 = re::DataArray<re::MeshInstance>::tryGet(*(a2 + 79) + 72, *(*(a2 + 73) + 8 * i));
        v8 = re::DataArray<re::MeshModel>::tryGet(*(a2 + 79) + 8, *(v7 + 16));
        re::StringID::StringID(&v10, v7);
        re::MeshDeformationAsset::addDefaultModelStackDefinitions(this, v8, 1, &v10, &re::MeshDeformationAsset::addDefaultModelStackDefinitionsForAllInstances(re::MeshAsset const&)::kDefaultDeformationOptions);
        if (*&v10.var0)
        {
          if (*&v10.var0)
          {
          }
        }

        *&v10.var0 = 0;
        v10.var1 = &str_67;
      }
    }
  }
}

uint64_t re::MeshDeformationAsset::addDefaultModelStackDefinitionForModel(re::MeshDeformationAsset *this, const re::MeshAsset *a2, unint64_t a3)
{
  if (*(a2 + 76) <= a3)
  {
    return 0;
  }

  v5 = *(a2 + 79);
  if (!v5)
  {
    return 0;
  }

  v11 = v3;
  v12 = v4;
  v7 = re::DataArray<re::MeshModel>::tryGet(v5 + 8, *(*(a2 + 78) + 8 * a3));
  re::StringID::StringID(&v10, v7);
  re::MeshDeformationAsset::addDefaultModelStackDefinitions(this, v7, 2, &v10, &re::MeshDeformationAsset::addDefaultModelStackDefinitionForModel(re::MeshAsset const&,unsigned long)::kDefaultDeformationOptions);
  if (*&v10.var0)
  {
    if (*&v10.var0)
    {
    }
  }

  return 1;
}

uint64_t re::MeshDeformationAsset::addDefaultModelStackDefinitionForInstance(re::MeshDeformationAsset *this, const re::MeshAsset *a2, unint64_t a3)
{
  if (*(a2 + 71) <= a3)
  {
    return 0;
  }

  v4 = *(a2 + 79);
  if (!v4)
  {
    return 0;
  }

  v6 = re::DataArray<re::MeshInstance>::tryGet(v4 + 72, *(*(a2 + 73) + 8 * a3));
  v7 = re::DataArray<re::MeshModel>::tryGet(*(a2 + 79) + 8, *(v6 + 16));
  re::StringID::StringID(&v11, v6);
  v8 = 1;
  re::MeshDeformationAsset::addDefaultModelStackDefinitions(this, v7, 1, &v11, &re::MeshDeformationAsset::addDefaultModelStackDefinitionForInstance(re::MeshAsset const&,unsigned long)::kDefaultDeformationOptions);
  if (*&v11.var0)
  {
    if (*&v11.var0)
    {
    }
  }

  return v8;
}

_anonymous_namespace_ *re::MeshDeformationAsset::addDefaultModelStackDefinitionsImpl<re::MeshModel>(_anonymous_namespace_ *result, void *a2, char a3, const StringID *a4, uint64_t a5)
{
  v81 = *MEMORY[0x1E69E9840];
  v6 = a2[7];
  if (v6)
  {
    v8 = a2;
    v9 = result;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v12 = 0;
    v13 = &v76;
    v65 = v9;
    v64 = v8;
    for (i = v6; i != v12; v48 = i)
    {
      v14 = v8[7];
      if (v14 <= v12)
      {
        *v73 = 0;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v76 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v71 = 136315906;
        *&v71[4] = "operator[]";
        *&v71[12] = 1024;
        *&v71[14] = 476;
        *&v71[18] = 2048;
        *&v71[20] = v12;
        *&v71[28] = 2048;
        *&v71[30] = v14;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_162:
        v70 = 0;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v76 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v73 = 136315906;
        *&v73[4] = "operator[]";
        *&v73[12] = 1024;
        *&v73[14] = 468;
        *&v73[18] = 2048;
        *&v73[20] = v12;
        v74 = 2048;
        v75 = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_163:
        *v73 = 0;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v76 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v71 = 136315906;
        *&v71[4] = "operator[]";
        *&v71[12] = 1024;
        *&v71[14] = 468;
        *&v71[18] = 2048;
        *&v71[20] = v5;
        *&v71[28] = 2048;
        *&v71[30] = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_164:
        *v73 = 0;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v76 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v71 = 136315906;
        *&v71[4] = "operator[]";
        *&v71[12] = 1024;
        *&v71[14] = 468;
        *&v71[18] = 2048;
        *&v71[20] = v5;
        *&v71[28] = 2048;
        *&v71[30] = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_165:
        v70 = 0;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v76 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v73 = 136315906;
        *&v73[4] = "operator[]";
        *&v73[12] = 1024;
        *&v73[14] = 476;
        *&v73[18] = 2048;
        *&v73[20] = v13;
        v74 = 2048;
        v75 = v10;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_166:
        v70 = 0;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v76 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v73 = 136315906;
        *&v73[4] = "operator[]";
        *&v73[12] = 1024;
        *&v73[14] = 476;
        *&v73[18] = 2048;
        *&v73[20] = v13;
        v74 = 2048;
        v75 = v10;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v15 = v8[8];
      *&v71[32] = 0;
      memset(v71, 0, 28);
      if (*a5 == 1 && (v16 = v8[18]) != 0 && *(v16 + 40) > v12 && *(*(v16 + 48) + 4 * v12) != -1)
      {
        memset(v73, 0, 24);
        v17 = *&v73[16];
        v18 = *(a5 + 8);
        *(*&v73[16] + 4) = *(a5 + 12);
        *v17 = v18;
        *&v76 = 0x1954B86F1FEF5A4;
        *(&v76 + 1) = "Blend Shape";
        v77 = *v73;
        memset(v73, 0, 24);
        *&v78 = *&v73[16];
        re::DynamicArray<re::DeformationDefinition>::add(v71, &v76);
        v19 = v77;
        if (v77)
        {
          if (*(&v77 + 1))
          {
            v19 = (*(*v77 + 40))(v77, v78);
            *(&v77 + 1) = 0;
            *&v78 = 0;
          }

          *&v77 = 0;
        }

        if (v76)
        {
          if (v76)
          {
          }
        }

        v11 = *v73;
        if (*v73 && *&v73[8])
        {
          v11 = (*(**v73 + 40))();
        }

        v20 = 1;
      }

      else
      {
        v20 = 0;
      }

      if (*(a5 + 6) == 1)
      {
        memset(v73, 0, 24);
        **&v73[16] = *(a5 + 18);
        *&v76 = 0x70EBDC9CD6B5D4E4;
        *(&v76 + 1) = "OffsetsDeformer";
        v77 = *v73;
        v21 = *&v73[16];
        memset(v73, 0, 24);
        *&v78 = v21;
        re::DynamicArray<re::DeformationDefinition>::add(v71, &v76);
        v22 = v77;
        if (v77)
        {
          if (*(&v77 + 1))
          {
            v22 = (*(*v77 + 40))(v77, v78);
            *(&v77 + 1) = 0;
            *&v78 = 0;
          }

          *&v77 = 0;
        }

        if (v76)
        {
          if (v76)
          {
          }
        }

        v11 = *v73;
        if (*v73 && *&v73[8])
        {
          v11 = (*(**v73 + 40))();
        }

        v20 = 1;
      }

      v23 = v15 + 544 * v12;
      if (*(a5 + 1) == 1 && (v24 = v8[28]) != 0 && *(v24 + 8) > v12 && *(*(v24 + 16) + 88 * v12 + 4) != -1)
      {
        v61 = *(a5 + 13);
        v25 = *(v23 + 336);
        if (v25)
        {
          v26 = 0;
          v27 = 0;
          v60 = *(a5 + 14);
          v28 = 16 * v25;
          v29 = (*(v23 + 344) + 8);
          do
          {
            v30 = *v29;
            v11 = strcmp(*v29, "vertexAdjacencies");
            if (v11)
            {
              v11 = strcmp(v30, "accumulatedVertexValence");
              v27 |= v11 == 0;
            }

            else
            {
              v26 = 1;
            }

            v29 += 2;
            v28 -= 16;
          }

          while (v28);
          v31 = v26 & v27;
          if (v26 & v27)
          {
            v32 = v60;
          }

          else
          {
            v32 = 1;
          }

          v8 = v64;
          v9 = v65;
        }

        else
        {
          v31 = 0;
          v32 = 1;
        }

        memset(v73, 0, 24);
        v49 = *&v73[16];
        **&v73[16] = v61;
        *(v49 + 1) = v32;
        *&v76 = 0x4550755B7A2;
        *(&v76 + 1) = "Skinning";
        v77 = *v73;
        v50 = *&v73[16];
        memset(v73, 0, 24);
        *&v78 = v50;
        re::DynamicArray<re::DeformationDefinition>::add(v71, &v76);
        v51 = v77;
        if (v77)
        {
          if (*(&v77 + 1))
          {
            v51 = (*(*v77 + 40))(v77, v78);
            *(&v77 + 1) = 0;
            *&v78 = 0;
          }

          *&v77 = 0;
        }

        if (v76)
        {
          if (v76)
          {
          }
        }

        v11 = *v73;
        if (*v73 && *&v73[8])
        {
          v11 = (*(**v73 + 40))();
        }

        v20 |= v31;
        v33 = 1;
      }

      else
      {
        v33 = 0;
      }

      if (*(a5 + 5) == 1)
      {
        *&v76 = a5 + 17;
        *(&v76 + 1) = 1;
        memset(v73, 0, 24);
        re::FixedArray<unsigned char>::copy(v73, &v76);
        *&v76 = 0x5ADE39698BF7F040;
        *(&v76 + 1) = "SmoothDeformer";
        v77 = *v73;
        v34 = *&v73[16];
        memset(v73, 0, 24);
        *&v78 = v34;
        re::DynamicArray<re::DeformationDefinition>::add(v71, &v76);
        v35 = v77;
        if (v77)
        {
          if (*(&v77 + 1))
          {
            v35 = (*(*v77 + 40))(v77, v78);
            *(&v77 + 1) = 0;
            *&v78 = 0;
          }

          *&v77 = 0;
        }

        if (v76)
        {
          if (v76)
          {
          }
        }

        v11 = *v73;
        if (*v73 && *&v73[8])
        {
          v11 = (*(**v73 + 40))();
        }

        v33 = 1;
        v20 = 1;
      }

      if (v20 & 1) != 0 && (*(a5 + 2))
      {
        memset(v73, 0, 24);
        **&v73[16] = *(a5 + 15);
        *&v76 = 0xABCEC87F22A13454;
        *(&v76 + 1) = "Renormalization";
        v77 = *v73;
        v36 = *&v73[16];
        memset(v73, 0, 24);
        *&v78 = v36;
        re::DynamicArray<re::DeformationDefinition>::add(v71, &v76);
        v37 = v77;
        if (v77)
        {
          if (*(&v77 + 1))
          {
            v37 = (*(*v77 + 40))(v77, v78);
            *(&v77 + 1) = 0;
            *&v78 = 0;
          }

          *&v77 = 0;
        }

        if (v76)
        {
          if (v76)
          {
          }
        }

        v11 = *v73;
        if (*v73 && *&v73[8])
        {
          v11 = (*(**v73 + 40))();
        }
      }

      if (*(a5 + 3) == 1 && *(v23 + 516))
      {
        *&v76 = 0xA6B838C1BF1BB512;
        *(&v76 + 1) = "OpenSubdivViewIndependentComputeStep";
        *&v78 = 0;
        v77 = 0uLL;
        re::DynamicArray<re::DeformationDefinition>::add(v71, &v76);
        v38 = v77;
        if (v77)
        {
          if (*(&v77 + 1))
          {
            v38 = (*(*v77 + 40))(v77, v78);
            *(&v77 + 1) = 0;
            *&v78 = 0;
          }

          *&v77 = 0;
        }

        if (v76)
        {
          if (v76)
          {
          }
        }

        *&v76 = 0xC6F7B7A81D0D03C8;
        *(&v76 + 1) = "OpenSubdivViewDependentComputeStep";
        *&v78 = 0;
        v77 = 0uLL;
        re::DynamicArray<re::DeformationDefinition>::add(v71, &v76);
        v11 = v77;
        if (v77)
        {
          if (*(&v77 + 1))
          {
            v11 = (*(*v77 + 40))(v77, v78);
            *(&v77 + 1) = 0;
            *&v78 = 0;
          }

          *&v77 = 0;
        }

        if (v76)
        {
          if (v76)
          {
          }
        }
      }

      if ((v33 & *(a5 + 4)) == 1)
      {
        memset(v73, 0, 24);
        **&v73[16] = *(a5 + 16);
        *&v76 = 0x32458CCC0A585AB0;
        *(&v76 + 1) = "Bounding Box Calculation";
        v77 = *v73;
        v39 = *&v73[16];
        memset(v73, 0, 24);
        *&v78 = v39;
        re::DynamicArray<re::DeformationDefinition>::add(v71, &v76);
        v40 = v77;
        if (v77)
        {
          if (*(&v77 + 1))
          {
            v40 = (*(*v77 + 40))(v77, v78);
            *(&v77 + 1) = 0;
            *&v78 = 0;
          }

          *&v77 = 0;
        }

        if (v76)
        {
          if (v76)
          {
          }
        }

        if (*v73 && *&v73[8])
        {
          (*(**v73 + 40))();
        }
      }

      if (*(a5 + 7) == 1)
      {
        v41 = *(v23 + 336);
        if (v41)
        {
          v42 = (*(v23 + 344) + 8);
          v43 = 16 * v41;
          while (1)
          {
            v44 = strcmp(*v42, "tension");
            if (!v44)
            {
              break;
            }

            v42 += 2;
            v43 -= 16;
            if (!v43)
            {
              goto LABEL_114;
            }
          }

          *&v76 = a5 + 19;
          *(&v76 + 1) = 1;
          memset(v73, 0, 24);
          re::FixedArray<unsigned char>::copy(v73, &v76);
          *&v76 = 0x241C51C064;
          *(&v76 + 1) = "Tension";
          v77 = *v73;
          v45 = *&v73[16];
          memset(v73, 0, 24);
          *&v78 = v45;
          re::DynamicArray<re::DeformationDefinition>::add(v71, &v76);
          v46 = v77;
          if (v77)
          {
            if (*(&v77 + 1))
            {
              v46 = (*(*v77 + 40))(v77, v78);
              *(&v77 + 1) = 0;
              *&v78 = 0;
            }

            *&v77 = 0;
          }

          if (v76)
          {
            if (v76)
            {
            }
          }

          if (*v73 && *&v73[8])
          {
            (*(**v73 + 40))();
          }
        }
      }

LABEL_114:
      v5 = v68;
      if (v68 <= v12)
      {
        goto LABEL_162;
      }

      v47 = v69;
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v69 + 40 * v12, v71);
      v11 = re::DynamicArray<re::DeformationDefinition>::deinit(v71);
      ++v12;
    }

    if (i != 1)
    {
      v52 = (v47 + 72);
      v13 = 1;
      while (1)
      {
        if (v5 == v13)
        {
          goto LABEL_163;
        }

        if (!re::DynamicArray<re::DeformationDefinition>::operator==(v47, *(v52 - 2), *v52))
        {
          break;
        }

        ++v13;
        v52 += 5;
        if (i == v13)
        {
          goto LABEL_134;
        }
      }

      v13 = 0;
      while (v13 != v5)
      {
        v54 = *(v47 + 40 * v13 + 16);
        if (v54)
        {
          v55 = *(v9 + 2);
          if (v55)
          {
            v56 = 0;
            v57 = *(v65 + 4);
            v58 = *(v47 + 40 * v13 + 32);
            while (!re::DynamicArray<re::DeformationDefinition>::operator==(v57, v54, v58))
            {
              ++v56;
              v57 += 40;
              if (v55 == v56)
              {
                goto LABEL_148;
              }
            }

            v71[0] = a3;
            re::StringID::StringID(&v71[8], a4);
            v10 = v64[7];
            if (v10 <= v13)
            {
              goto LABEL_166;
            }

            re::StringID::StringID(&v71[24], (v64[8] + 544 * v13 + 488));
            v72 = v56;
            v9 = v65;
          }

          else
          {
LABEL_148:
            v9 = v65;
            re::DynamicArray<re::DeformationStackDefinition>::add(v65, v47 + 40 * v13);
            v71[0] = a3;
            re::StringID::StringID(&v71[8], a4);
            v10 = v64[7];
            if (v10 <= v13)
            {
              goto LABEL_165;
            }

            re::StringID::StringID(&v71[24], (v64[8] + 544 * v13 + 488));
            v72 = *(v65 + 2) - 1;
          }

          v59 = re::DynamicArray<re::MeshDeformationIndex>::add(v9 + 5, v71);
          if (v71[24])
          {
            if (v71[24])
            {
            }
          }

          *&v71[24] = 0;
          *&v71[32] = &str_67;
          v48 = i;
          if (v71[8])
          {
            if (v71[8])
            {
            }
          }
        }

        if (++v13 == v48)
        {
          return re::FixedArray<re::DeformationStackDefinition>::deinit(&v67);
        }
      }

      goto LABEL_164;
    }

LABEL_134:
    if (*(v47 + 16))
    {
      re::DynamicArray<re::DeformationStackDefinition>::add(v9, v47);
      LOBYTE(v76) = a3;
      re::StringID::StringID((&v76 + 8), a4);
      *(&v77 + 1) = 0;
      *&v78 = &str_67;
      *(&v78 + 1) = *(v9 + 2) - 1;
      v53 = re::DynamicArray<re::MeshDeformationIndex>::add(v9 + 5, &v76);
      if (BYTE8(v77))
      {
        if (BYTE8(v77))
        {
        }
      }

      *(&v77 + 1) = 0;
      *&v78 = &str_67;
      if (BYTE8(v76))
      {
        if (BYTE8(v76))
        {
        }
      }
    }

    return re::FixedArray<re::DeformationStackDefinition>::deinit(&v67);
  }

  return result;
}

void re::MeshDeformationAsset::forceVertexFrameSkinning(re::MeshDeformationAsset *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return;
  }

  v2 = *(this + 4);
  v3 = v2 + 40 * v1;
  do
  {
    v4 = *(v2 + 16);
    if (!v4)
    {
      goto LABEL_24;
    }

    v5 = 0;
    v6 = 0;
    v7 = *(v2 + 32);
    v8 = 16;
    while (1)
    {
      v9 = *(v7 + v8 - 16) & 0xFFFFFFFFFFFFFFFELL;
      if (v5 && v9 == 0xABCEC87F22A13454)
      {
        break;
      }

      if (v9 == 0x4550755B7A2)
      {
        v11 = *(v7 + v8 - 8);
        v5 = v11 == "Skinning" || strcmp(v11, "Skinning") == 0;
        goto LABEL_14;
      }

LABEL_13:
      v5 = 0;
LABEL_14:
      ++v6;
      v8 += 40;
      if (v4 == v6)
      {
        goto LABEL_24;
      }
    }

    v10 = *(v7 + v8 - 8);
    if (v10 != "Renormalization" && strcmp(v10, "Renormalization"))
    {
      goto LABEL_13;
    }

    v12 = v3;
    if (v4 <= v6 - 1)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_27:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v13 = v7 + v8;
    if (*(v7 + v8 - 32) != 2)
    {
      v14 = re::FixedArray<CoreIKTransform>::deinit((v13 - 40));
      **(v13 - 24) = 0;
      v4 = *(v2 + 16);
    }

    *(*(v13 - 24) + 1) = 1;
    if (v4 <= v6)
    {
      goto LABEL_27;
    }

    v15 = *(v2 + 32);
    if (v4 - 1 > v6)
    {
      v16 = v15 + 40 * v4;
      v17 = (v15 + v8);
      re::StringID::operator=((v15 + v8 - 16), (v16 - 40));
      re::FixedArray<float>::operator=(v17, (v16 - 24));
      v4 = *(v2 + 16);
      v15 = *(v2 + 32);
    }

    v3 = v12;
    v18 = v15 + 40 * v4;
    v19 = (v18 - 40);
    re::FixedArray<CoreIKTransform>::deinit((v18 - 24));
    re::StringID::destroyString(v19);
    --*(v2 + 16);
    ++*(v2 + 24);
LABEL_24:
    v2 += 40;
  }

  while (v2 != v3);
}

void re::MeshDeformationAssetLoader::initializeUsedDeformers(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    os_unfair_lock_lock((a1 + 16));
    v4 = *(a2 + 16);
    if (v4)
    {
      v5 = *(a2 + 32);
      v6 = v5 + 40 * v4;
      do
      {
        v7 = *(v5 + 16);
        if (v7)
        {
          v8 = *(v5 + 32);
          v9 = 40 * v7;
          do
          {
            (*(**(a1 + 8) + 24))(&v10);
            if (v10 == 1)
            {
              (*(**(a1 + 8) + 16))(*(a1 + 8), BYTE1(v10));
            }

            v8 += 40;
            v9 -= 40;
          }

          while (v9);
        }

        v5 += 40;
      }

      while (v5 != v6);
    }

    os_unfair_lock_unlock((a1 + 16));
  }
}

re *re::internal::destroyPersistent<re::MeshDeformationAsset>(re *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::DynamicArray<re::MeshDeformationIndex>::deinit(a3 + 40);
    re::DynamicArray<re::DeformationStackDefinition>::deinit(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t re::MeshDeformationAssetLoader::introspectionType(re::MeshDeformationAssetLoader *this)
{
  if ((atomic_load_explicit(&qword_1EE1945A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1945A8))
  {
    qword_1EE1945A0 = re::internal::getOrCreateInfo("MeshDeformationAsset", re::allocInfo_MeshDeformationAsset, re::initInfo_MeshDeformationAsset, &unk_1EE194588, 0);
    __cxa_guard_release(&qword_1EE1945A8);
  }

  return qword_1EE1945A0;
}

void *re::IntrospectionDynamicArray<re::DeformationStackDefinition>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::DeformationStackDefinition>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::DeformationStackDefinition>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::DeformationStackDefinition>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::DeformationStackDefinition>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::DeformationStackDefinition>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::DeformationStackDefinition>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::DeformationStackDefinition>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::DeformationStackDefinition>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::DeformationStackDefinition>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  re::DynamicArray<re::DeformationStackDefinition>::add(this, v10);
  re::DynamicArray<re::DeformationDefinition>::deinit(v10);
  v8 = (*(this + 4) + 40 * *(this + 2) - 40);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<re::DeformationStackDefinition>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 40 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 40 * a3;
}

void *re::DynamicArray<re::DeformationStackDefinition>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 40 * a2;
    v9 = a2;
    do
    {
      result = re::DynamicArray<re::DeformationDefinition>::deinit(v3[4] + v8);
      ++v9;
      v8 += 40;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::DeformationStackDefinition>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 40 * v4;
      do
      {
        v7 = v3[4] + v6;
        *(v7 + 32) = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *v7 = 0;
        *(v7 + 24) = 0;
        v6 += 40;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::DynamicArray<re::DeformationStackDefinition>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::DeformationStackDefinition>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
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
        v10 = v8 + 40 * v9;
        v11 = v7 + 4;
        do
        {
          *v11 = 0;
          *(v11 - 3) = 0;
          *(v11 - 2) = 0;
          *(v11 - 4) = 0;
          *(v11 - 2) = 0;
          v12 = *(v8 + 8);
          *(v11 - 4) = *v8;
          *(v11 - 3) = v12;
          *v8 = 0;
          *(v8 + 8) = 0;
          v13 = *(v11 - 2);
          *(v11 - 2) = *(v8 + 16);
          *(v8 + 16) = v13;
          v14 = *v11;
          *v11 = *(v8 + 32);
          *(v8 + 32) = v14;
          ++*(v8 + 24);
          ++*(v11 - 2);
          re::DynamicArray<re::DeformationDefinition>::deinit(v8);
          v8 += 40;
          v11 += 5;
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

uint64_t re::DynamicArray<re::DeformationDefinition>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 40 * v4;
        do
        {
          re::FixedArray<CoreIKTransform>::deinit(v3 + 2);
          re::StringID::destroyString(v3);
          v3 += 5;
          v5 -= 40;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void *re::DynamicArray<re::DeformationStackDefinition>::add(void *this, uint64_t a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::DeformationStackDefinition>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = v3[4] + 40 * v4;
  *(v5 + 32) = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *v5 = 0;
  *(v5 + 24) = 0;
  v6 = *(a2 + 8);
  *v5 = *a2;
  *(v5 + 8) = v6;
  *a2 = 0;
  *(a2 + 8) = 0;
  v7 = *(v5 + 16);
  *(v5 + 16) = *(a2 + 16);
  *(a2 + 16) = v7;
  v8 = *(v5 + 32);
  *(v5 + 32) = *(a2 + 32);
  *(a2 + 32) = v8;
  ++*(a2 + 24);
  ++*(v5 + 24);
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

void *re::DynamicArray<re::DeformationStackDefinition>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::DeformationStackDefinition>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::DeformationStackDefinition>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::DeformationStackDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::DeformationStackDefinition>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::DeformationStackDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::DeformationStackDefinition>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::DeformationStackDefinition>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::DeformationStackDefinition>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  v8 = re::DynamicArray<re::DeformationStackDefinition>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 40 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 40;
        v11 -= 40;
      }

      while (v11);
    }
  }
}

uint64_t re::DynamicArray<re::DeformationStackDefinition>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = 40 * v2;
    do
    {
      result = re::DynamicArray<re::DeformationDefinition>::deinit(v3);
      v3 += 40;
      v4 -= 40;
    }

    while (v4);
  }

  ++*(v1 + 24);
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DeformationStackDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 40 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DeformationStackDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DeformationStackDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 40 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DeformationStackDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::MeshDeformationIndex>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MeshDeformationIndex>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MeshDeformationIndex>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MeshDeformationIndex>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MeshDeformationIndex>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MeshDeformationIndex>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::MeshDeformationIndex>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MeshDeformationIndex>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::MeshDeformationIndex>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MeshDeformationIndex>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11 = 0;
  v12 = 0;
  v13 = &str_67;
  v14 = 0;
  v15 = &str_67;
  v16 = 0;
  v8 = re::DynamicArray<re::MeshDeformationIndex>::add(this, &v11);
  if (v14)
  {
    if (v14)
    {
    }
  }

  v14 = 0;
  v15 = &str_67;
  if (v12)
  {
    if (v12)
    {
    }
  }

  v9 = (*(this + 4) + 48 * *(this + 2) - 48);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

uint64_t re::IntrospectionDynamicArray<re::MeshDeformationIndex>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 48 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 48 * a3;
}

void re::DynamicArray<re::MeshDeformationIndex>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 48 * a2 + 24;
    v9 = a2;
    do
    {
      v10 = (*(a1 + 32) + v8);
      re::StringID::destroyString(v10);
      re::StringID::destroyString((v10 - 16));
      ++v9;
      v8 += 48;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::MeshDeformationIndex>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 48 * v4;
      do
      {
        v7 = *(a1 + 32) + v6;
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = &str_67;
        *(v7 + 24) = 0;
        *(v7 + 32) = &str_67;
        *(v7 + 40) = 0;
        v6 += 48;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::DynamicArray<re::MeshDeformationIndex>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MeshDeformationIndex>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x30uLL))
        {
          v2 = 48 * a2;
          result = (*(*result + 32))(result, 48 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 48, a2);
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
        v10 = &v8[6 * v9];
        v11 = v7;
        do
        {
          *v11 = *v8;
          v13 = (v8 + 1);
          v12 = v8[1];
          v11[1] = v11[1] & 0xFFFFFFFFFFFFFFFELL | v8[1] & 1;
          v11[1] = v8[1] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[2] = v8[2];
          v8[2] = &str_67;
          v8[1] = 0;
          v15 = v8[3];
          v14 = (v8 + 3);
          v11[3] = v11[3] & 0xFFFFFFFFFFFFFFFELL | v15 & 1;
          v11[3] = *v14 & 0xFFFFFFFFFFFFFFFELL | v15 & 1;
          v16 = *(v14 + 2);
          v11[4] = *(v14 + 1);
          *v14 = 0;
          *(v14 + 1) = &str_67;
          v11[5] = v16;
          re::StringID::destroyString(v14);
          re::StringID::destroyString(v13);
          v11 += 6;
          v8 = (v14 + 24);
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

void *re::DynamicArray<re::MeshDeformationIndex>::add(void *this, uint64_t a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::MeshDeformationIndex>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = v3[4] + 48 * v4;
  *v5 = *a2;
  v6 = *(a2 + 8);
  *(v5 + 8) = *(v5 + 8) & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 8) = *(a2 + 8) & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = &str_67;
  v7 = *(a2 + 24);
  *(v5 + 24) = *(v5 + 24) & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  *(v5 + 24) = *(a2 + 24) & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  v8 = *(a2 + 40);
  *(v5 + 32) = *(a2 + 32);
  *(a2 + 24) = 0;
  *(a2 + 32) = &str_67;
  *(v5 + 40) = v8;
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

void *re::DynamicArray<re::MeshDeformationIndex>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::MeshDeformationIndex>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::MeshDeformationIndex>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MeshDeformationIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MeshDeformationIndex>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MeshDeformationIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::MeshDeformationIndex>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::MeshDeformationIndex>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MeshDeformationIndex>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::MeshDeformationIndex>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 48 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 48;
        v11 -= 48;
      }

      while (v11);
    }
  }
}

void re::DynamicArray<re::MeshDeformationIndex>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = 48 * v2;
    v4 = (*(a1 + 32) + 24);
    do
    {
      re::StringID::destroyString(v4);
      re::StringID::destroyString((v4 - 16));
      v4 = (v4 + 48);
      v3 -= 48;
    }

    while (v3);
  }

  ++*(a1 + 24);
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshDeformationIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 48 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshDeformationIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshDeformationIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 48 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshDeformationIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

uint64_t re::FixedArray<re::DeformationStackDefinition>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (a3 >= 0x666666666666667)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 40, a3);
    _os_crash();
    __break(1u);
    goto LABEL_7;
  }

  result = (*(*a2 + 32))(a2, 40 * a3, 8);
  a1[2] = result;
  if (!result)
  {
LABEL_7:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = a3 - 1;
  if (a3 != 1)
  {
    do
    {
      *(result + 32) = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = 0;
      *(result + 24) = 0;
      result += 40;
      --v7;
    }

    while (v7);
  }

  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 24) = 0;
  return result;
}

void *re::DynamicArray<re::DeformationDefinition>::add(void *this, uint64_t *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::DeformationDefinition>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = (v3[4] + 40 * v4);
  v6 = *a2;
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v5 = *a2 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  v5[1] = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = 0;
  v7 = a2[3];
  v5[2] = a2[2];
  v5[3] = v7;
  a2[2] = 0;
  a2[3] = 0;
  v8 = v5[4];
  v5[4] = a2[4];
  a2[4] = v8;
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

void *re::DynamicArray<re::DeformationDefinition>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::DeformationDefinition>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::DeformationDefinition>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::DeformationDefinition>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::DeformationDefinition>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
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
        v10 = &v8[5 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          v11[2] = 0;
          v11[3] = 0;
          v11[4] = 0;
          v11[2] = v8[2];
          v8[2] = 0;
          v13 = v11[4];
          v14 = v8[4];
          v11[3] = v8[3];
          v11[4] = v14;
          v8[3] = 0;
          v8[4] = v13;
          re::FixedArray<CoreIKTransform>::deinit(v8 + 2);
          re::StringID::destroyString(v8);
          v11 += 5;
          v8 += 5;
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

void *re::FixedArray<unsigned char>::copy(void *result, const void **a2)
{
  v4 = result[1];
  if (v4 == a2[1])
  {
    if (v4)
    {
      v5 = *a2;
      v6 = result[2];

      return memmove(v6, v5, v4);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

BOOL re::DynamicArray<re::DeformationDefinition>::operator==(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16) != a2)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v4 = *(a1 + 32);
  v5 = v4 + 40 * a2;
  while (1)
  {
    result = re::StringID::operator==(v4, a3);
    if (!result)
    {
      break;
    }

    v7 = *(v4 + 24);
    if (v7 != *(a3 + 24) || memcmp(*(v4 + 32), *(a3 + 32), v7))
    {
      return 0;
    }

    v4 += 40;
    a3 += 40;
    if (v4 == v5)
    {
      return 1;
    }
  }

  return result;
}

void *re::FixedArray<re::DeformationStackDefinition>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 40 * v2;
      do
      {
        re::DynamicArray<re::DeformationDefinition>::deinit(v4);
        v4 += 40;
        v5 -= 40;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

uint64_t *re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetType()
{
  {
    re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetType(void)::type = "AnimationScene";
    qword_1EE187828 = 0;
    re::AssetType::generateCompiledExtension(&re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetType(void)::type);
  }

  return &re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetType(void)::type;
}

void re::AnimationSceneEntityData::prepareEntityHierarchyForAnimationScene(re::AnimationSceneEntityData *this, re::ecs2::Entity *a2, re::ecs2::Entity *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 23);
  v7 = snprintf(__str, 0x2BuLL, "%s%p", "animationsceneintialized::", this);
  if (v7 >= 42)
  {
    v8 = 42;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;
  *&v14.var0 = 0;
  v14.var1 = &str_67;
  if (v6)
  {
    v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&v14.var0 >> 31) ^ (*&v14.var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&v14.var0 >> 31) ^ (*&v14.var0 >> 1))) >> 27));
    v11 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v6 + 88, &v14, v10 ^ (v10 >> 31), __str);
    if (v16 != 0x7FFFFFFF)
    {
      goto LABEL_9;
    }

    __str[0] = 1;
    v12 = (v6 + 32);
  }

  else
  {
    v13 = re::ecs2::EntityComponentCollection::add((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::KeyValueComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    __str[0] = 1;
    v12 = (v13 + 32);
  }

  re::KeyValueStore::addOrReplaceValue<BOOL>(v12, &v14, __str);
LABEL_9:
  if (*&v14.var0)
  {
    if (*&v14.var0)
    {
    }
  }
}

uint64_t re::KeyValueStore::addOrReplaceValue<BOOL>(re::KeyValueStore *a1, StringID *a2, _BYTE *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v17);
  if (v18 != 0x7FFFFFFF)
  {
    v7 = *(a1 + 3) + 32 * v18;
    v10 = *(v7 + 24);
    v9 = (v7 + 24);
    v8 = v10;
    {
      v16 = v8;
      v8 = v16;
      if (v14)
      {
        re::introspect<BOOL>(BOOL)::info = re::introspect_BOOL(0, v15);
        v8 = v16;
      }
    }

    if (v8 == re::introspect<BOOL>(BOOL)::info)
    {
      return re::HashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1 + 56, a2, a3);
    }

    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v17);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v17);
    re::KeyValueStore::removeValue(a1, *v9, a2);
  }

  {
    {
      re::introspect<BOOL>(BOOL)::info = re::introspect_BOOL(0, v13);
    }
  }

  v17 = re::introspect<BOOL>(BOOL)::info;
  re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v17);
  return re::HashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 56, a2, a3);
}

void anonymous namespace::doPrepareEntityHierarchyForAnimationScene(uint64_t this, const re::AnimationSceneEntityData *a2, re::ecs2::Entity *a3)
{
  v5 = this;
  v25 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 27);
  if (*(this + 56) == 1)
  {
    if (!*(a2 + 23))
    {
      this = re::ecs2::EntityComponentCollection::add((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::KeyValueComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    }

    v7 = *(a2 + 32);
    if (!v7)
    {
      this = re::ecs2::EntityComponentCollection::add((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      v7 = this;
    }

    if (a3 && v6)
    {
      re::ecs2::NetworkComponent::markDirty(v6, v7);
    }
  }

  if (v5[9])
  {
    if (!*(a2 + 23))
    {
      re::ecs2::EntityComponentCollection::add((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::KeyValueComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    }

    v8 = *(a2 + 31);
    if (!v8)
    {
      v8 = re::ecs2::EntityComponentCollection::add((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    }

    re::AssetHandle::operator=((v8 + 4), v5 + 8);
    this = re::AssetHandle::loadedAsset<re::SkeletalPoseDefinitionAsset>((v8 + 4));
    if (this)
    {
      v9 = this;
    }

    if (a3 && v6)
    {
      re::ecs2::NetworkComponent::markDirty(v6, v8);
    }
  }

  v10 = v5[4];
  if (v10)
  {
    v11 = v5[6];
    v12 = (v11 + 88 * v10);
    do
    {
      v13 = *(a2 + 43);
      if (!v13)
      {
        goto LABEL_28;
      }

      v14 = *(a2 + 45);
      v15 = 8 * v13;
      while (1)
      {
        v16 = *v14;
        this = re::StringID::operator==(*v14 + 36, v11);
        if (this)
        {
          break;
        }

        ++v14;
        v15 -= 8;
        if (!v15)
        {
          goto LABEL_28;
        }
      }

      if (v16)
      {
      }

      else
      {
LABEL_28:
        v18 = *re::assetTypesLogObjects(this);
        this = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        if (this)
        {
          v19 = *(a2 + 37);
          v20 = *(v11 + 1);
          *buf = 136315394;
          v22 = v19;
          v23 = 2080;
          v24 = v20;
          _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "Animation Scene entity (%s) could not locate expected child (%s).", buf, 0x16u);
        }
      }

      v11 = (v11 + 88);
    }

    while (v11 != v12);
  }
}

void re::AnimationSceneEntityData::markTargetEntityAsDirty(re::AnimationSceneEntityData *this, re::ecs2::Entity *a2, _BOOL4 a3)
{
  v6 = *(a2 + 27);
  if (v6 && (!*(v6 + 4) || RESyncableIsAuthoritative()))
  {
    if (*(this + 56) == 1)
    {
      if (!a3)
      {
        v7 = *(a2 + 32);
        if (!v7)
        {
          goto LABEL_12;
        }

LABEL_11:
        re::ecs2::NetworkComponent::markDirty(v6, v7);
        goto LABEL_12;
      }

LABEL_10:
      v7 = *(a2 + 23);
      if (!v7)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    if (!*(this + 9))
    {
      goto LABEL_12;
    }

    if (a3)
    {
      goto LABEL_10;
    }

    v7 = *(a2 + 31);
    if (v7)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v8 = *(this + 4);
  if (v8)
  {
    v9 = *(this + 6);
    v10 = (v9 + 88 * v8);
    do
    {
      v11 = *(a2 + 43);
      if (v11)
      {
        v12 = *(a2 + 45);
        v13 = 8 * v11;
        while (1)
        {
          v14 = *v12;
          if (re::StringID::operator==(*v12 + 36, v9))
          {
            break;
          }

          ++v12;
          v13 -= 8;
          if (!v13)
          {
            goto LABEL_21;
          }
        }

        if (v14)
        {
          re::AnimationSceneEntityData::markTargetEntityAsDirty(v9, v14, a3);
        }
      }

LABEL_21:
      v9 = (v9 + 88);
    }

    while (v9 != v10);
  }
}

void re::AnimationSceneEntityData::logAnimationSceneEntityData(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = re::animationLogObjects(a1);
  v5 = re::AnimationLogObjects::loggingEnabled(v4);
  if (v5)
  {
    v6 = re::animationLogObjects(v5);
    v7 = re::AnimationLogObjects::loggingEnabled(v6);
    if (v7)
    {
      v17 = *re::animationLogObjects(v7);
      v7 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (v7)
      {
        if (*(a2 + 8))
        {
          v18 = *(a2 + 16);
        }

        else
        {
          v18 = a2 + 9;
        }

        *buf = 136315138;
        v32 = v18;
        _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "ANIM: %s-------------------------\n", buf, 0xCu);
      }
    }

    v8 = re::animationLogObjects(v7);
    v9 = re::AnimationLogObjects::loggingEnabled(v8);
    if (v9)
    {
      v19 = *re::animationLogObjects(v9);
      v9 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (*(a2 + 8))
        {
          v20 = *(a2 + 16);
        }

        else
        {
          v20 = a2 + 9;
        }

        *buf = 136315138;
        v32 = v20;
        _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "ANIM: %sAnimationSceneEntityData:\n", buf, 0xCu);
      }
    }

    v10 = re::animationLogObjects(v9);
    v11 = re::AnimationLogObjects::loggingEnabled(v10);
    if (v11)
    {
      v21 = *re::animationLogObjects(v11);
      v11 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (*(a2 + 8))
        {
          v22 = *(a2 + 16);
        }

        else
        {
          v22 = a2 + 9;
        }

        v25 = *(a1 + 8);
        v26 = "false";
        if (*(a1 + 56))
        {
          v27 = "true";
        }

        else
        {
          v27 = "false";
        }

        v28 = *(a1 + 72);
        if (v28)
        {
          v29 = atomic_load((v28 + 896));
          if (v29 == 2)
          {
            v26 = "true";
          }
        }

        *buf = 136315906;
        v32 = v22;
        v33 = 2080;
        v34 = v25;
        v35 = 2080;
        v36 = v27;
        v37 = 2080;
        v38 = v26;
        _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, "ANIM: %s  Entity Name: %s, TransformAnim: %s, SkeletalPoseDefinition.isLoaded(): %s\n", buf, 0x2Au);
      }
    }

    v12 = re::animationLogObjects(v11);
    v13 = re::AnimationLogObjects::loggingEnabled(v12);
    if (v13)
    {
      v23 = *re::animationLogObjects(v13);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 8))
        {
          v24 = *(a2 + 16);
        }

        else
        {
          v24 = a2 + 9;
        }

        *buf = 136315138;
        v32 = v24;
        _os_log_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_DEFAULT, "ANIM: %s-------------------------\n", buf, 0xCu);
      }
    }

    v14 = *(a1 + 32);
    if (v14)
    {
      v15 = *(a1 + 48);
      v16 = 88 * v14;
      do
      {
        re::DynamicString::operator+(a2, "  ", v30);
        re::AnimationSceneEntityData::logAnimationSceneEntityData(v15, v30);
        if (*&v30[0])
        {
          if (BYTE8(v30[0]))
          {
            (*(**&v30[0] + 40))();
          }

          memset(v30, 0, sizeof(v30));
        }

        v15 += 88;
        v16 -= 88;
      }

      while (v16);
    }
  }
}

re *re::AnimationScene::debugLogAnimationSceneData(re::AnimationScene *this)
{
  v2 = re::animationLogObjects(this);
  result = re::AnimationLogObjects::loggingEnabled(v2);
  if (result)
  {
    v4 = re::animationLogObjects(result);
    v5 = re::AnimationLogObjects::loggingEnabled(v4);
    if (v5)
    {
      v10 = *re::animationLogObjects(v5);
      v5 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (v5)
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "ANIM: Logging Animation Scene...\n", buf, 2u);
      }
    }

    re::AnimationSceneEntityData::logAnimationSceneEntityData(this + 24, v14);
    v6 = *&v14[0];
    if (*&v14[0])
    {
      if (BYTE8(v14[0]))
      {
        v6 = (*(**&v14[0] + 40))();
      }

      memset(v14, 0, sizeof(v14));
    }

    v7 = re::animationLogObjects(v6);
    v8 = re::AnimationLogObjects::loggingEnabled(v7);
    if (v8)
    {
      v11 = *re::animationLogObjects(v8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "ANIM: Timeline Hierarchy...\n", buf, 2u);
      }
    }

    result = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(this);
    v9 = *(result + 2);
    if (v9)
    {
      (*(*v9 + 96))(v9, &v12);
      result = v12;
      if (v12)
      {
        if (v13)
        {
          return (*(*v12 + 40))();
        }
      }
    }
  }

  return result;
}

uint64_t re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(re::TimelineAsset *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = re::TimelineAsset::assetType(a1);
  v3 = re::AssetHandle::assetWithType(a1, v2, 0);
  if (!v3)
  {
    v4 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = re::AssetHandle::assetInfo(a1);
      if (v6[17])
      {
        v7 = v6[18];
      }

      else
      {
        v7 = v6 + 137;
      }

      v8 = 136315138;
      v9 = v7;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Invalid asset: '%s'", &v8, 0xCu);
    }
  }

  return v3;
}

void *re::allocInfo_AnimationSceneEntityData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194778, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194778))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE194838, "AnimationSceneEntityData");
    __cxa_guard_release(&qword_1EE194778);
  }

  return &unk_1EE194838;
}

void re::initInfo_AnimationSceneEntityData(re *this, re::IntrospectionBase *a2)
{
  v21[0] = 0xAD7EB69D45DE37AALL;
  v21[1] = "AnimationSceneEntityData";
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  *(this + 2) = v22;
  if ((atomic_load_explicit(&qword_1EE194780, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE194780);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::StringID>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "entityName";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1947D8 = v9;
      v10 = re::introspectionAllocator(v9);
      re::IntrospectionInfo<re::DynamicArray<re::AnimationSceneEntityData>>::get(v10);
      v11 = (*(*v10 + 32))(v10, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "childrenData";
      *(v11 + 16) = &qword_1EE1947F8;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x1000000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1947E0 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::introspect_BOOL(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "transformAnimation";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x3800000003;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1947E8 = v15;
      v16 = re::introspectionAllocator(v15);
      v18 = re::introspect_AssetHandle(1, v17);
      v19 = (*(*v16 + 32))(v16, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "skeletalPoseDefinition";
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x4000000004;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE1947F0 = v19;
      __cxa_guard_release(&qword_1EE194780);
    }
  }

  *(this + 2) = 0x5800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1947D8;
  *(this + 9) = re::internal::defaultConstruct<re::AnimationSceneEntityData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AnimationSceneEntityData>;
  *(this + 13) = re::internal::defaultConstructV2<re::AnimationSceneEntityData>;
  *(this + 14) = re::internal::defaultDestructV2<re::AnimationSceneEntityData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v20 = v22;
}

void re::IntrospectionInfo<re::DynamicArray<re::AnimationSceneEntityData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1947C0, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1947C0);
    if (a1)
    {
      re::IntrospectionDynamicArray<re::AnimationSceneEntityData>::IntrospectionDynamicArray();
      __cxa_guard_release(&qword_1EE1947C0);
    }
  }

  if ((_MergedGlobals_66 & 1) == 0)
  {
    v1 = qword_1EE194788;
    if (qword_1EE194788 || (v1 = re::allocInfo_AnimationSceneEntityData(a1), qword_1EE194788 = v1, re::initInfo_AnimationSceneEntityData(v1, v2), (_MergedGlobals_66 & 1) == 0))
    {
      _MergedGlobals_66 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1947F8, 0);
      qword_1EE194808 = 0x2800000003;
      dword_1EE194810 = v3;
      word_1EE194814 = 0;
      *&xmmword_1EE194818 = 0;
      *(&xmmword_1EE194818 + 1) = 0xFFFFFFFFLL;
      qword_1EE194828 = v1;
      qword_1EE194830 = 0;
      qword_1EE1947F8 = &unk_1F5CBE318;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE1947F8, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::AnimationSceneEntityData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::AnimationSceneEntityData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::AnimationSceneEntityData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AnimationSceneEntityData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::AnimationSceneEntityData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::AnimationSceneEntityData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AnimationSceneEntityData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AnimationSceneEntityData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE194818 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::internal::defaultConstruct<re::AnimationSceneEntityData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  *(a3 + 48) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = 0;
  *(a3 + 40) = 0;
  *(a3 + 56) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 64) = 0;
}

void re::internal::defaultDestruct<re::AnimationSceneEntityData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::AssetHandle::~AssetHandle((a3 + 64));
  re::DynamicArray<re::AnimationSceneEntityData>::deinit(a3 + 16);

  re::StringID::destroyString(a3);
}

uint64_t re::internal::defaultConstructV2<re::AnimationSceneEntityData>(uint64_t result)
{
  *result = 0;
  *(result + 8) = &str_67;
  *(result + 48) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  *(result + 56) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 64) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::AnimationSceneEntityData>(uint64_t a1)
{
  re::AssetHandle::~AssetHandle((a1 + 64));
  re::DynamicArray<re::AnimationSceneEntityData>::deinit(a1 + 16);

  re::StringID::destroyString(a1);
}

void *re::allocInfo_AnimationScene(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194790, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194790))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1948C8, "AnimationScene");
    __cxa_guard_release(&qword_1EE194790);
  }

  return &unk_1EE1948C8;
}

void re::initInfo_AnimationScene(re *this, re::IntrospectionBase *a2)
{
  v16[0] = 0xC56CB686DAA8D710;
  v16[1] = "AnimationScene";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE194798, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE194798);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_AssetHandle(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "rootTimeline";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1947C8 = v9;
      v10 = re::introspectionAllocator(v9);
      v11 = v10;
      v12 = qword_1EE194788;
      if (!qword_1EE194788)
      {
        v12 = re::allocInfo_AnimationSceneEntityData(v10);
        qword_1EE194788 = v12;
        re::initInfo_AnimationSceneEntityData(v12, v13);
      }

      v14 = (*(*v11 + 32))(v11, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "rootEntityData";
      *(v14 + 16) = v12;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x1800000002;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE1947D0 = v14;
      __cxa_guard_release(&qword_1EE194798);
    }
  }

  *(this + 2) = 0x7000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1947C8;
  *(this + 9) = re::internal::defaultConstruct<re::AnimationScene>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AnimationScene>;
  *(this + 13) = re::internal::defaultConstructV2<re::AnimationScene>;
  *(this + 14) = re::internal::defaultDestructV2<re::AnimationScene>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v15 = v17;
}

double re::internal::defaultConstruct<re::AnimationScene>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 72) = 0;
  *(a3 + 32) = &str_67;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 80) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 88) = 0;
  return result;
}

void re::internal::defaultDestruct<re::AnimationScene>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::AssetHandle::~AssetHandle((a3 + 88));
  re::DynamicArray<re::AnimationSceneEntityData>::deinit(a3 + 40);
  re::StringID::destroyString((a3 + 24));

  re::AssetHandle::~AssetHandle(a3);
}

double re::internal::defaultConstructV2<re::AnimationScene>(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 32) = &str_67;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::AnimationScene>(uint64_t a1)
{
  re::AssetHandle::~AssetHandle((a1 + 88));
  re::DynamicArray<re::AnimationSceneEntityData>::deinit(a1 + 40);
  re::StringID::destroyString((a1 + 24));

  re::AssetHandle::~AssetHandle(a1);
}

void *re::allocInfo_AnimationSceneAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1947A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1947A8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE194958, "AnimationSceneAsset");
    __cxa_guard_release(&qword_1EE1947A8);
  }

  return &unk_1EE194958;
}

void re::initInfo_AnimationSceneAsset(re *this, re::IntrospectionBase *a2)
{
  v12[0] = 0x36338DCE93270890;
  v12[1] = "AnimationSceneAsset";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE1947B8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1947B8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE1947A0;
      if (!qword_1EE1947A0)
      {
        v8 = re::allocInfo_AnimationScene(v6);
        qword_1EE1947A0 = v8;
        re::initInfo_AnimationScene(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "data";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 1;
      *(v10 + 40) = 0;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1947B0 = v10;
      __cxa_guard_release(&qword_1EE1947B8);
    }
  }

  *(this + 2) = 0x7000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1947B0;
  *(this + 9) = re::internal::defaultConstruct<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>;
  *(this + 13) = re::internal::defaultConstructV2<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>;
  *(this + 14) = re::internal::defaultDestructV2<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v11 = v13;
}

double re::internal::defaultConstruct<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 72) = 0;
  *(a3 + 32) = &str_67;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 80) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 88) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 32) = &str_67;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  return result;
}

uint64_t re::AssetHandle::loadedAsset<re::SkeletalPoseDefinitionAsset>(re::SkeletalPoseDefinitionAsset *a1)
{
  if (!*(a1 + 1))
  {
    return 0;
  }

  v2 = re::SkeletalPoseDefinitionAsset::assetType(a1);

  return re::AssetHandle::assetWithType(a1, v2, 1);
}

uint64_t re::HashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, _BYTE *a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v12);
  v7 = HIDWORD(v13);
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v13, v12);
    re::StringID::StringID((v8 + 8), a2);
    *(v8 + 24) = *a3;
    v9 = v8 + 24;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v10 = *(a1 + 16) + 32 * v7;
    *(v10 + 24) = *a3;
    return v10 + 24;
  }

  return v9;
}

uint64_t re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 24;
  }

  v7 = re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
  re::StringID::StringID((v7 + 8), a2);
  *(v7 + 24) = *a3;
  v8 = v7 + 24;
  ++*(a1 + 40);
  return v8;
}

uint64_t re::HashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, _BYTE *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 24;
  }

  v7 = re::HashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
  re::StringID::StringID((v7 + 8), a2);
  *(v7 + 24) = *a3;
  v8 = v7 + 24;
  ++*(a1 + 40);
  return v8;
}

uint64_t re::HashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 32 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 32 * v4;
}

void re::HashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 16);
    do
    {
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        result = re::HashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31)) % *(v4 + 24));
        v9 = *(a2 + 16) + v5;
        v10 = *(v9 + 8);
        *(result + 8) = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        *(result + 8) = *(v9 + 8) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        *(result + 16) = *(v9 + 16);
        *(v9 + 8) = 0;
        *(v9 + 16) = &str_67;
        v7 = *(a2 + 16);
        *(result + 24) = *(v7 + v5 + 24);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 32;
    }

    while (v6 < v2);
  }

  return result;
}

uint64_t re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 32 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 32 * v4;
}

void re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

void *re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(void *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        result = re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31)) % *(v4 + 6));
        v9 = *(a2 + 16) + v5;
        v10 = *(v9 + 8);
        result[1] = result[1] & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        result[1] = *(v9 + 8) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        result[2] = *(v9 + 16);
        *(v9 + 8) = 0;
        *(v9 + 16) = &str_67;
        result[3] = *(*(a2 + 16) + v5 + 24);
        v2 = *(a2 + 32);
      }

      v5 += 32;
    }
  }

  return result;
}

uint64_t re::IntrospectionDynamicArray<re::AnimationSceneEntityData>::IntrospectionDynamicArray()
{
  ArcSharedObject::ArcSharedObject(&qword_1EE1947F8, 0);
  *(&qword_1EE194808 + 6) = 0;
  qword_1EE194808 = 0;
  *&xmmword_1EE194818 = 0;
  *(&xmmword_1EE194818 + 1) = 0xFFFFFFFFLL;
  qword_1EE1947F8 = &unk_1F5CADA48;
  qword_1EE194830 = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(&qword_1EE194828);
  qword_1EE1947F8 = &unk_1F5CBE318;
  return result;
}

void *re::IntrospectionDynamicArray<re::AnimationSceneEntityData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::AnimationSceneEntityData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::AnimationSceneEntityData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::AnimationSceneEntityData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::AnimationSceneEntityData>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::AnimationSceneEntityData>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::AnimationSceneEntityData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::AnimationSceneEntityData>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::AnimationSceneEntityData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::AnimationSceneEntityData>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11[0] = 0;
  memset(v12, 0, sizeof(v12));
  v11[1] = &str_67;
  memset(v13, 0, 24);
  re::DynamicArray<re::AnimationSceneEntityData>::add(this, v11);
  re::AssetHandle::~AssetHandle(v13);
  v8 = re::DynamicArray<re::AnimationSceneEntityData>::deinit(v12);
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  v9 = (*(this + 4) + 88 * *(this + 2) - 88);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

uint64_t re::IntrospectionDynamicArray<re::AnimationSceneEntityData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 88 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 88 * a3;
}

uint64_t re::DynamicArray<re::AnimationSceneEntityData>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 88 * v4;
        do
        {
          re::AssetHandle::~AssetHandle((v3 + 64));
          re::DynamicArray<re::AnimationSceneEntityData>::deinit(v3 + 16);
          re::StringID::destroyString(v3);
          v3 += 88;
          v5 -= 88;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void *re::DynamicArray<re::AnimationSceneEntityData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::AnimationSceneEntityData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x58uLL))
        {
          v2 = 88 * a2;
          result = (*(*result + 32))(result, 88 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 88, a2);
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
        v10 = (v8 + 88 * v9);
        v11 = (v8 + 64);
        v12 = v7;
        do
        {
          v13 = *(v11 - 8);
          *v12 = *v12 & 0xFFFFFFFFFFFFFFFELL | *(v11 - 8) & 1;
          *v12 = *(v11 - 8) & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
          v12[1] = *(v11 - 7);
          *(v11 - 7) = &str_67;
          *(v11 - 8) = 0;
          v12[6] = 0;
          *(v12 + 10) = 0;
          v12[3] = 0;
          v12[4] = 0;
          v12[2] = 0;
          v14 = *(v11 - 5);
          v12[2] = *(v11 - 6);
          *(v11 - 6) = 0;
          v12[3] = v14;
          *(v11 - 5) = 0;
          v15 = v12[4];
          v12[4] = *(v11 - 4);
          *(v11 - 4) = v15;
          v16 = v12[6];
          v12[6] = *(v11 - 2);
          *(v11 - 2) = v16;
          ++*(v11 - 6);
          ++*(v12 + 10);
          *(v12 + 56) = *(v11 - 8);
          v12[9] = 0;
          v12[10] = 0;
          v12[8] = 0;
          v12[9] = v11[1];
          v11[1] = 0;
          v17 = v12[8];
          v12[8] = 0;
          v12[8] = *v11;
          *v11 = v17;
          v18 = v12[10];
          v12[10] = v11[2];
          v11[2] = v18;
          re::AssetHandle::~AssetHandle(v11);
          re::DynamicArray<re::AnimationSceneEntityData>::deinit((v11 - 6));
          re::StringID::destroyString((v11 - 8));
          v12 += 11;
          v19 = v11 + 3;
          v11 += 11;
        }

        while (v19 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void re::DynamicArray<re::AnimationSceneEntityData>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 88 * a2;
    v9 = a2;
    do
    {
      v10 = *(a1 + 32) + v8;
      re::AssetHandle::~AssetHandle((v10 + 64));
      re::DynamicArray<re::AnimationSceneEntityData>::deinit(v10 + 16);
      re::StringID::destroyString(v10);
      ++v9;
      v8 += 88;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::AnimationSceneEntityData>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 88 * v4;
      do
      {
        v7 = *(a1 + 32) + v6;
        *v7 = 0;
        *(v7 + 8) = &str_67;
        *(v7 + 48) = 0;
        *(v7 + 24) = 0;
        *(v7 + 32) = 0;
        *(v7 + 16) = 0;
        *(v7 + 40) = 0;
        *(v7 + 56) = 0;
        *(v7 + 72) = 0;
        *(v7 + 80) = 0;
        *(v7 + 64) = 0;
        v6 += 88;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::DynamicArray<re::AnimationSceneEntityData>::add(void *this, uint64_t *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::AnimationSceneEntityData>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = v3[4] + 88 * v4;
  v6 = *a2;
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v5 = *a2 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 8) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  *(v5 + 48) = 0;
  *(v5 + 40) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 16) = 0;
  v7 = a2[3];
  *(v5 + 16) = a2[2];
  *(v5 + 24) = v7;
  a2[2] = 0;
  a2[3] = 0;
  v8 = *(v5 + 32);
  *(v5 + 32) = a2[4];
  a2[4] = v8;
  v9 = *(v5 + 48);
  *(v5 + 48) = a2[6];
  a2[6] = v9;
  ++*(a2 + 10);
  ++*(v5 + 40);
  *(v5 + 56) = *(a2 + 56);
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = a2[9];
  a2[9] = 0;
  v10 = *(v5 + 64);
  *(v5 + 64) = 0;
  *(v5 + 64) = a2[8];
  a2[8] = v10;
  v11 = *(v5 + 80);
  *(v5 + 80) = a2[10];
  a2[10] = v11;
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

void *re::DynamicArray<re::AnimationSceneEntityData>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::AnimationSceneEntityData>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::AnimationSceneEntityData>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::AnimationSceneEntityData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::AnimationSceneEntityData>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::AnimationSceneEntityData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 88 * v8;
      do
      {
        re::AssetHandle::~AssetHandle((v9 + 64));
        re::DynamicArray<re::AnimationSceneEntityData>::deinit(v9 + 16);
        re::StringID::destroyString(v9);
        v9 += 88;
        v10 -= 88;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::AnimationSceneEntityData>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::AnimationSceneEntityData>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::AnimationSceneEntityData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 88 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 88;
        v14 -= 88;
      }

      while (v14);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AnimationSceneEntityData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 88 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AnimationSceneEntityData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AnimationSceneEntityData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 88 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AnimationSceneEntityData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::~BasicAsset(uint64_t a1)
{
  re::AssetHandle::~AssetHandle((a1 + 88));
  re::DynamicArray<re::AnimationSceneEntityData>::deinit(a1 + 40);
  re::StringID::destroyString((a1 + 24));

  re::AssetHandle::~AssetHandle(a1);
}

uint64_t *re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>::assetType()
{
  {
    re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>::assetType(void)::type = "AssignedMeshDeformation";
    qword_1EE1877F8 = 0;
    re::AssetType::generateCompiledExtension(&re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>::assetType(void)::type);
  }

  return &re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>::assetType(void)::type;
}

void *re::allocInfo_AssignedMeshDeformation(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1949F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1949F0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE194A70, "AssignedMeshDeformation");
    __cxa_guard_release(&qword_1EE1949F0);
  }

  return &unk_1EE194A70;
}

void re::initInfo_AssignedMeshDeformation(re *this, re::IntrospectionBase *a2)
{
  v9[0] = 0x100A83A7AE6FEAAALL;
  v9[1] = "AssignedMeshDeformation";
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  *(this + 2) = v10;
  if ((atomic_load_explicit(&qword_1EE194A00, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE194A00);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<re::DynamicArray<re::MeshIdentifierAsset>>::get();
      v7 = (*(*v6 + 32))(v6, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "deformedMeshAssets";
      *(v7 + 16) = &qword_1EE194A30;
      *(v7 + 24) = 0;
      *(v7 + 32) = 1;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE1949F8 = v7;
      __cxa_guard_release(&qword_1EE194A00);
    }
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1949F8;
  *(this + 9) = re::internal::defaultConstruct<re::AssignedMeshDeformation>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AssignedMeshDeformation>;
  *(this + 13) = re::internal::defaultConstructV2<re::AssignedMeshDeformation>;
  *(this + 14) = re::internal::defaultDestructV2<re::AssignedMeshDeformation>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v8 = v10;
}

void re::IntrospectionInfo<re::DynamicArray<re::MeshIdentifierAsset>>::get()
{
  if ((atomic_load_explicit(&qword_1EE194A28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194A28))
  {
    re::IntrospectionDynamicArray<re::MeshIdentifierAsset>::IntrospectionDynamicArray();
    __cxa_guard_release(&qword_1EE194A28);
  }

  if ((_MergedGlobals_67 & 1) == 0)
  {
    v0 = re::introspect_MeshIdentifierAsset(1);
    if ((_MergedGlobals_67 & 1) == 0)
    {
      v1 = v0;
      _MergedGlobals_67 = 1;
      v2 = *(v0 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE194A30, 0);
      qword_1EE194A40 = 0x2800000003;
      dword_1EE194A48 = v2;
      word_1EE194A4C = 0;
      *&xmmword_1EE194A50 = 0;
      *(&xmmword_1EE194A50 + 1) = 0xFFFFFFFFLL;
      qword_1EE194A60 = v1;
      qword_1EE194A68 = 0;
      qword_1EE194A30 = &unk_1F5CBE3B0;
      re::IntrospectionRegistry::add(v3, v4);
      re::getPrettyTypeName(&qword_1EE194A30, &v12);
      if (v13)
      {
        v5 = *&v14[7];
      }

      else
      {
        v5 = v14;
      }

      if (v12 && (v13 & 1) != 0)
      {
        (*(*v12 + 40))();
      }

      v9 = *(v1 + 32);
      if (v16)
      {
        v8 = v16;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v15);
        re::TypeBuilder::TypeBuilder(&v12, v15);
        v11 = v9;
        re::TypeBuilder::beginListType(&v12, &v10, 1, 0x28uLL, 8uLL, &v11);
        re::TypeBuilder::setConstructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::MeshIdentifierAsset>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::MeshIdentifierAsset>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v12, 1);
        re::TypeBuilder::setListAccessors(&v12, re::TypeBuilderHelper::registerDynamicArray<re::MeshIdentifierAsset>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshIdentifierAsset>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v12, re::TypeBuilderHelper::registerDynamicArray<re::MeshIdentifierAsset>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v12, re::TypeBuilderHelper::registerDynamicArray<re::MeshIdentifierAsset>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshIdentifierAsset>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshIdentifierAsset>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v12, v7);
        re::StackScratchAllocator::~StackScratchAllocator(v15);
      }

      xmmword_1EE194A50 = v8;
      if (v10)
      {
        if (v10)
        {
        }
      }
    }
  }
}

void re::internal::defaultConstruct<re::AssignedMeshDeformation>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
}

uint64_t re::internal::defaultConstructV2<re::AssignedMeshDeformation>(uint64_t result)
{
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 24) = 0;
  return result;
}

void *re::allocInfo_AssignedMeshDeformationAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194A10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194A10))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE194B00, "AssignedMeshDeformationAsset");
    __cxa_guard_release(&qword_1EE194A10);
  }

  return &unk_1EE194B00;
}

void re::initInfo_AssignedMeshDeformationAsset(re *this, re::IntrospectionBase *a2)
{
  v12[0] = 0xF3256EF769E2536;
  v12[1] = "AssignedMeshDeformationAsset";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE194A20, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE194A20);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE194A08;
      if (!qword_1EE194A08)
      {
        v8 = re::allocInfo_AssignedMeshDeformation(v6);
        qword_1EE194A08 = v8;
        re::initInfo_AssignedMeshDeformation(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "data";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 1;
      *(v10 + 40) = 0;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE194A18 = v10;
      __cxa_guard_release(&qword_1EE194A20);
    }
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE194A18;
  *(this + 9) = re::internal::defaultConstruct<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>>;
  *(this + 13) = re::internal::defaultConstructV2<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>>;
  *(this + 14) = re::internal::defaultDestructV2<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v11 = v13;
}

void re::internal::defaultConstruct<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
}

uint64_t re::internal::defaultConstructV2<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>>(uint64_t result)
{
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t re::DeformedMeshAssetsMap::deformedIndex(re::DeformedMeshAssetsMap *this, unsigned int a2, int a3)
{
  v3 = *(this + 3);
  if (v3)
  {
    if (*(this + 6) <= a2)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      v4 = (*(*(this + 7) + 4 * a2) + a3);
      if (v3 > v4)
      {
        return *(*(this + 4) + 4 * v4);
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return 0xFFFFFFFFLL;
}

void *re::DynamicArray<re::MeshIdentifierAsset>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MeshIdentifierAsset>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
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
        v10 = &v8[5 * v9];
        v11 = v7;
        do
        {
          *v11 = *v8;
          v13 = (v8 + 1);
          v12 = v8[1];
          v11[1] = v11[1] & 0xFFFFFFFFFFFFFFFELL | v8[1] & 1;
          v11[1] = v8[1] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[2] = v8[2];
          v8[2] = &str_67;
          v8[1] = 0;
          v15 = v8[3];
          v14 = (v8 + 3);
          v11[3] = v11[3] & 0xFFFFFFFFFFFFFFFELL | v15 & 1;
          v11[3] = *v14 & 0xFFFFFFFFFFFFFFFELL | v15 & 1;
          v11[4] = *(v14 + 1);
          *v14 = 0;
          *(v14 + 1) = &str_67;
          re::StringID::destroyString(v14);
          re::StringID::destroyString(v13);
          v11 += 5;
          v8 = (v14 + 16);
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

uint64_t re::IntrospectionDynamicArray<re::MeshIdentifierAsset>::IntrospectionDynamicArray()
{
  ArcSharedObject::ArcSharedObject(&qword_1EE194A30, 0);
  *(&qword_1EE194A40 + 6) = 0;
  qword_1EE194A40 = 0;
  *&xmmword_1EE194A50 = 0;
  *(&xmmword_1EE194A50 + 1) = 0xFFFFFFFFLL;
  qword_1EE194A30 = &unk_1F5CADA48;
  qword_1EE194A68 = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(&qword_1EE194A60);
  qword_1EE194A30 = &unk_1F5CBE3B0;
  return result;
}

void *re::IntrospectionDynamicArray<re::MeshIdentifierAsset>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MeshIdentifierAsset>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MeshIdentifierAsset>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MeshIdentifierAsset>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MeshIdentifierAsset>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MeshIdentifierAsset>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::MeshIdentifierAsset>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MeshIdentifierAsset>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::MeshIdentifierAsset>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MeshIdentifierAsset>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11 = 0;
  v12 = 0;
  v13 = &str_67;
  v14 = 0;
  v15 = &str_67;
  v8 = re::DynamicArray<re::MeshIdentifierAsset>::add(this, &v11);
  if (v14)
  {
    if (v14)
    {
    }
  }

  v14 = 0;
  v15 = &str_67;
  if (v12)
  {
    if (v12)
    {
    }
  }

  v9 = (*(this + 4) + 40 * *(this + 2) - 40);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

uint64_t re::IntrospectionDynamicArray<re::MeshIdentifierAsset>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 40 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 40 * a3;
}

uint64_t re::DynamicArray<re::MeshIdentifierAsset>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 40 * v4;
        v6 = (v3 + 24);
        do
        {
          re::StringID::destroyString(v6);
          re::StringID::destroyString((v6 - 16));
          v6 = (v6 + 40);
          v5 -= 40;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void re::DynamicArray<re::MeshIdentifierAsset>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 40 * a2 + 24;
    v9 = a2;
    do
    {
      v10 = (*(a1 + 32) + v8);
      re::StringID::destroyString(v10);
      re::StringID::destroyString((v10 - 16));
      ++v9;
      v8 += 40;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::MeshIdentifierAsset>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 40 * v4;
      do
      {
        v7 = *(a1 + 32) + v6;
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = &str_67;
        *(v7 + 24) = 0;
        *(v7 + 32) = &str_67;
        v6 += 40;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::DynamicArray<re::MeshIdentifierAsset>::add(void *this, uint64_t a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::MeshIdentifierAsset>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = v3[4] + 40 * v4;
  *v5 = *a2;
  v6 = *(a2 + 8);
  *(v5 + 8) = *(v5 + 8) & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 8) = *(a2 + 8) & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = &str_67;
  v7 = *(a2 + 24);
  *(v5 + 24) = *(v5 + 24) & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  *(v5 + 24) = *(a2 + 24) & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  *(v5 + 32) = *(a2 + 32);
  *(a2 + 24) = 0;
  *(a2 + 32) = &str_67;
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

void *re::DynamicArray<re::MeshIdentifierAsset>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::MeshIdentifierAsset>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::MeshIdentifierAsset>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MeshIdentifierAsset>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MeshIdentifierAsset>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MeshIdentifierAsset>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = 40 * v8;
      v10 = (*(a1 + 32) + 24);
      do
      {
        re::StringID::destroyString(v10);
        re::StringID::destroyString((v10 - 16));
        v10 = (v10 + 40);
        v9 -= 40;
      }

      while (v9);
    }
  }

  else
  {
    re::DynamicArray<re::MeshIdentifierAsset>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MeshIdentifierAsset>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::MeshIdentifierAsset>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 40 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 40;
        v14 -= 40;
      }

      while (v14);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshIdentifierAsset>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 40 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshIdentifierAsset>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshIdentifierAsset>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 40 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshIdentifierAsset>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::AudioAssetLoadStrategyFactory::getCurrentLoadStrategy(re::AudioAssetLoadStrategyFactory *this, re::AudioService *a2)
{
  if (this)
  {
    (*(*this + 568))(this, a2);
    operator new();
  }

  operator new();
}

uint64_t *re::ShaderLibraryAsset::assetType(re::ShaderLibraryAsset *this)
{
  {
    re::ShaderLibraryAsset::assetType(void)::type = "ShaderLibrary";
    qword_1EE1C6D38 = 0;
    re::AssetType::generateCompiledExtension(&re::ShaderLibraryAsset::assetType(void)::type);
  }

  return &re::ShaderLibraryAsset::assetType(void)::type;
}

uint64_t re::ShaderLibraryAsset::ShaderLibraryAsset(uint64_t a1, id *a2)
{
  *a1 = &unk_1F5CBE448;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  v5 = re::DynamicString::setCapacity(v4, 0);
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  re::DynamicString::setCapacity((a1 + 40), 0);
  *(a1 + 80) = 0;
  re::ObjCObject::operator=((a1 + 80), a2);
  return a1;
}

uint64_t re::ShaderLibraryAssetLoaderNameRemapper::remapLibraryName@<X0>(re::ShaderLibraryAssetLoaderNameRemapper *this@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  v5 = *(this + 1);
  re::AssetManager::lookupAssetPathString(v5, a2, v7, v12);
  if (v10)
  {
    if (BYTE8(v10))
    {
      (*(*v10 + 40))();
    }

    v11 = 0u;
    v10 = 0u;
  }

  if (v8 && (v9 & 1) != 0)
  {
    (*(*v8 + 40))();
  }

  if (v12[0] == 1)
  {
    v7[0] = 1;
    re::DynamicString::DynamicString(&v8, &v13);
    re::Optional<re::DynamicString>::operator=(a3, v7);
    if (v7[0] == 1 && v8 && (v9 & 1) != 0)
    {
      (*(*v8 + 40))();
    }
  }

  result = v13;
  if (v13)
  {
    if (v14)
    {
      return (*(*v13 + 40))(v13, v15);
    }
  }

  return result;
}

void sub_1E1F9C998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17)
{
  if (a15)
  {
    if (a16)
    {
      (*(*a15 + 40))();
    }

    *(v17 + 56) = 0u;
    *(v17 + 40) = 0u;
  }

  if (a11)
  {
    if (a12)
    {
      (*(*a11 + 40))();
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t re::ShaderLibraryAssetLoader::registerAsset(re::ShaderLibraryAssetLoader *this, char *a2, const re::ExistingAssetInformation *a3)
{
  v56 = *MEMORY[0x1E69E9840];
  result = re::ServiceLocator::serviceOrNull<re::RenderManager>(*(this + 1));
  if (!result)
  {
    return result;
  }

  v7 = result;
  if (!*(result + 208))
  {
    return 0;
  }

  if (!*(this + 6))
  {
    v8 = re::ServiceLocator::serviceOrNull<re::AssetService>(*(this + 1));
    if (v8)
    {
      *(this + 6) = v8;
      *(*(v7 + 48) + 424) = this + 40;
    }
  }

  v9 = *(a2 + 10);
  if (v9)
  {
    re::DynamicString::format("memorylib_%lu", &v55, [v9 hash]);
    if (v55.st_ino)
    {
      v10 = *&v55.st_uid;
    }

    else
    {
      v10 = &v55.st_ino + 1;
    }

    *&buf = v10;
    *(&buf + 1) = strlen(v10);
    re::DynamicString::operator=((a2 + 40), &buf);
    v11 = *(v7 + 48);
    *&buf = re::ShaderManager::getLibraryHash(v11, v10);
    v12 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v11 + 376, &buf);
    if (v12)
    {
      v13 = *re::assetTypesLogObjects(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v10;
        _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Registering library (%s) that already exists in shader manager. Library will be overwritten.", &buf, 0xCu);
      }
    }

    v14 = *(v7 + 48);
    LibraryHash = re::ShaderManager::getLibraryHash(v14, v10);
    re::ShaderManager::installLibrary(v14, LibraryHash, a2 + 10);
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(this + 104, (a2 + 8), &v55);
    v16 = *&v55.st_dev;
    if (*&v55.st_dev && (v55.st_ino & 1) != 0)
    {
      v17 = *&v55.st_uid;
LABEL_16:
      (*(*v16 + 40))(v16, v17);
    }
  }

  else
  {
    v18 = *(a2 + 2);
    if (v18)
    {
      v19 = v18 >> 1;
    }

    else
    {
      v19 = v18 >> 1;
    }

    if (v19)
    {
      v20 = re::Hash<re::DynamicString>::operator()(&v55, (a2 + 8));
      v21 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(this + 104, (a2 + 8), v20, &v55);
      if (HIDWORD(v55.st_ino) == 0x7FFFFFFF)
      {
        v22 = *re::assetTypesLogObjects(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v47 = *(a3 + 18);
          if ((*(a3 + 136) & 1) == 0)
          {
            v47 = a3 + 137;
          }

          if (a2[16])
          {
            v48 = *(a2 + 3);
          }

          else
          {
            v48 = a2 + 17;
          }

          v55.st_dev = 136315394;
          *&v55.st_mode = v47;
          WORD2(v55.st_ino) = 2080;
          *(&v55.st_ino + 6) = v48;
          _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "Registration failed for asset '%s'. Could not find library key for %s.", &v55, 0x16u);
        }

        return 2;
      }

      v26 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](this + 104, (a2 + 8));
      if (*(v26 + 8))
      {
        v27 = *(v26 + 16);
      }

      else
      {
        v27 = (v26 + 9);
      }

      v28 = strlen(v27);
      *&v55.st_dev = v27;
      v55.st_ino = v28;
      re::DynamicString::operator=((a2 + 40), &v55);
    }

    else
    {
      v23 = *(a2 + 6);
      v24 = v23 >> 1;
      if ((v23 & 1) == 0)
      {
        v24 = v23 >> 1;
      }

      if (!v24)
      {
        v29 = *re::assetTypesLogObjects(0);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          if (*(a3 + 17))
          {
            v49 = *(a3 + 18);
          }

          else
          {
            v49 = a3 + 137;
          }

          v55.st_dev = 136315138;
          *&v55.st_mode = v49;
          _os_log_error_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_ERROR, "Registration failed for asset '%s', currentMetallibPath is Empty!", &v55, 0xCu);
        }

        return 2;
      }

      if (v23)
      {
        v25 = *(a2 + 7);
      }

      else
      {
        v25 = a2 + 49;
      }

      v30 = *(v7 + 48);
      *&v55.st_dev = re::ShaderManager::getLibraryHash(v30, v25);
      if (!re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v30 + 376, &v55))
      {
        re::ShaderManager::makeLibraryWithURL(*(v7 + 48), v25, v25, v25);
        v40 = re::DynamicString::rfind((a2 + 40), 46, v50);
        if (v50[0] == 1)
        {
          v41 = v51;
          if (v51)
          {
            v53 = 0;
            v54 = 0;
            *(&buf + 1) = 0;
            re::DynamicString::setCapacity(&buf, v41 + 25);
            if (a2[48])
            {
              v42 = *(a2 + 7);
            }

            else
            {
              v42 = a2 + 49;
            }

            re::DynamicString::append(&buf, v42, v41);
            re::DynamicString::append(&buf, "-binaryarchive.metallib", 0x18uLL);
            if (BYTE8(buf))
            {
              v45 = v53;
            }

            else
            {
              v45 = &buf + 9;
            }

            if (!stat(v45, &v55))
            {
              if (BYTE8(buf))
              {
                v46 = v53;
              }

              else
              {
                v46 = &buf + 9;
              }

              re::ShaderManager::makeAndAddBinaryArchive(*(v7 + 48), v46, v46);
            }

            v16 = buf;
            if (buf)
            {
              if (BYTE8(buf))
              {
                v17 = v53;
                goto LABEL_16;
              }
            }
          }
        }
      }
    }
  }

  v31 = *(v7 + 48);
  if (a2[48])
  {
    v32 = *(a2 + 7);
  }

  else
  {
    v32 = a2 + 49;
  }

  *&v55.st_dev = re::ShaderManager::getLibraryHash(v31, v32);
  v33 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v31 + 376, &v55);
  v34 = *&v55.st_dev;
  if (v33)
  {
    v35 = *&v55.st_dev;
  }

  else
  {
    v35 = 0;
  }

  *(a2 + 9) = v35;
  if (!v35)
  {
    v37 = *re::assetTypesLogObjects(v33);
    v33 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
    if (v33)
    {
      if (a2[48])
      {
        v43 = *(a2 + 7);
      }

      else
      {
        v43 = a2 + 49;
      }

      v55.st_dev = 136315138;
      *&v55.st_mode = v43;
      _os_log_error_impl(&dword_1E1C61000, v37, OS_LOG_TYPE_ERROR, "Unable to get a library hash for %s", &v55, 0xCu);
    }

    if (*(a2 + 9))
    {
      goto LABEL_45;
    }

    goto LABEL_50;
  }

  if (!v34)
  {
LABEL_50:
    v38 = *re::assetTypesLogObjects(v33);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      if (*(a3 + 17))
      {
        v44 = *(a3 + 18);
      }

      else
      {
        v44 = a3 + 137;
      }

      v55.st_dev = 136315138;
      *&v55.st_mode = v44;
      _os_log_error_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_ERROR, "Registration failed for asset '%s'", &v55, 0xCu);
    }

    return 2;
  }

LABEL_45:
  v36 = re::Hash<re::DynamicString>::operator()(&v55, (a2 + 40));
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(this + 56, (a2 + 40), v36, &v55);
  if (HIDWORD(v55.st_ino) == 0x7FFFFFFF)
  {
    v55.st_dev = 1;
    re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(this + 56, (a2 + 40), &v55);
    return 0;
  }

  v39 = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](this + 56, (a2 + 40));
  result = 0;
  ++*v39;
  return result;
}

void sub_1E1F9D038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19)
{
  if (a13)
  {
    if (a14)
    {
      (*(*a13 + 40))();
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](uint64_t a1, uint64_t a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v4, v6);
  return *(a1 + 16) + 80 * v7 + 40;
}

uint64_t re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(uint64_t a1, const re::DynamicString *a2, _DWORD *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v13, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 56 * HIDWORD(v11) + 40;
  }

  v7 = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v11, v10);
  re::DynamicString::DynamicString((v7 + 8), a2);
  *(v7 + 40) = *a3;
  v8 = v7 + 40;
  ++*(a1 + 40);
  return v8;
}

uint64_t re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](uint64_t a1, uint64_t a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v4, v6);
  return *(a1 + 16) + 56 * v7 + 40;
}

void re::ShaderLibraryAssetLoader::preloadAssets(re::ShaderLibraryAssetLoader *this)
{
  v2 = re::ServiceLocator::service<re::AssetService>(*(this + 1));
  (*(*v2 + 8))(&v6);
  v4 = *(this + 1);
  v3 = (this + 16);
  *v3 = v6;
  v6 = v4;
  v5 = *(v3 + 2);
  *(v3 + 2) = v7;
  v7 = v5;
  re::AssetHandle::~AssetHandle(&v6);
  if ((*(*v2 + 360))(v2))
  {
    re::AssetHandle::loadAsync(v3);
  }
}

uint64_t re::ShaderLibraryAssetLoader::unregisterAsset(re::ShaderLibraryAssetLoader *this, void *a2, const re::ExistingAssetInformation *a3)
{
  result = re::ServiceLocator::serviceOrNull<re::RenderManager>(*(this + 1));
  if (result)
  {
    v6 = result;
    if (*(result + 208))
    {
      v7 = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](this + 56, a2 + 40);
      --*v7;
      result = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](this + 56, a2 + 40);
      if (*result <= 0)
      {
        v22 = 0;
        v19[1] = 0;
        v20 = 0;
        v19[0] = 0;
        v21 = 0;
        v8 = *(this + 34);
        if (v8)
        {
          v9 = 0;
          v10 = *(this + 15);
          while (1)
          {
            v11 = *v10;
            v10 += 20;
            if (v11 < 0)
            {
              break;
            }

            if (v8 == ++v9)
            {
              LODWORD(v9) = *(this + 34);
              break;
            }
          }
        }

        else
        {
          LODWORD(v9) = 0;
        }

        if (v9 != v8)
        {
          v12 = *(this + 34);
          do
          {
            v13 = *(this + 15);
            if (re::DynamicString::operator==(v13 + 80 * v9 + 40, a2 + 40))
            {
              re::DynamicArray<re::DynamicString>::add(v19, (v13 + 80 * v9 + 8));
              v12 = *(this + 34);
            }

            if (v12 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = v12;
            }

            while (v14 - 1 != v9)
            {
              LODWORD(v9) = v9 + 1;
              if ((*(*(this + 15) + 80 * v9) & 0x80000000) != 0)
              {
                goto LABEL_21;
              }
            }

            LODWORD(v9) = v14;
LABEL_21:
            ;
          }

          while (v9 != v8);
          if (v20)
          {
            v15 = v22;
            v16 = 32 * v20;
            do
            {
              re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(this + 104, v15);
              v15 += 32;
              v16 -= 32;
            }

            while (v16);
          }
        }

        v17 = *(v6 + 48);
        v18 = re::Hash<re::DynamicString>::operator()(&v23, a2 + 40);
        re::ShaderManager::releaseLibrary(v17, v18);
        return re::DynamicArray<re::DynamicString>::deinit(v19);
      }
    }
  }

  return result;
}

re *re::internal::destroyPersistent<re::ShaderLibraryAsset>(re *result, uint64_t a2, void (***a3)(void))
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    (**a3)(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

void re::ShaderLibraryAssetLoader::findDependencies(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
}

uint64_t re::ShaderLibraryAssetLoader::introspectionType(re::ShaderLibraryAssetLoader *this)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::ShaderLibraryAsset>(BOOL)::info = re::internal::getOrCreateInfo("ShaderLibraryAsset", re::allocInfo_ShaderLibraryAsset, re::initInfo_ShaderLibraryAsset, &re::internal::introspectionInfoStorage<re::ShaderLibraryAsset>, 0);
      v1 = &unk_1EE187000;
    }
  }

  return v1[208];
}

uint64_t re::ShaderLibraryAssetLoader::allocateSampleAsset(re::ShaderLibraryAssetLoader *this)
{
  v1 = re::AssetHandle::blockUntilLoaded<re::ShaderLibraryAsset>((this + 16));
  v2 = re::globalAllocators(v1);
  v3 = (*(*v2[2] + 32))(v2[2], 88, 8);
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *v3 = &unk_1F5CBE448;
  *(v3 + 24) = 0u;
  *(v3 + 8) = 0u;
  v4 = re::DynamicString::setCapacity((v3 + 8), 0);
  *(v3 + 56) = 0u;
  *(v3 + 40) = 0u;
  re::DynamicString::setCapacity((v3 + 40), 0);
  *(v3 + 80) = 0;
  if (*(v1 + 48))
  {
    v5 = *(v1 + 56);
  }

  else
  {
    v5 = (v1 + 49);
  }

  v7[0] = v5;
  v7[1] = strlen(v5);
  re::DynamicString::operator=((v3 + 40), v7);
  return v3;
}

uint64_t re::AssetHandle::blockUntilLoaded<re::ShaderLibraryAsset>(re::ShaderLibraryAsset *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  re::ShaderLibraryAsset::assetType(a1);
  v2 = re::AssetHandle::assetWithType(a1, &re::ShaderLibraryAsset::assetType(void)::type, 0);
  if (!v2)
  {
    v3 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = re::AssetHandle::assetInfo(a1);
      if (v5[17])
      {
        v6 = v5[18];
      }

      else
      {
        v6 = v5 + 137;
      }

      v7 = 136315138;
      v8 = v6;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Invalid asset: '%s'", &v7, 0xCu);
    }
  }

  return v2;
}

void *re::allocInfo_ShaderLibraryAsset(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_68))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE194BB0, "ShaderLibraryAsset");
    __cxa_guard_release(&_MergedGlobals_68);
  }

  return &unk_1EE194BB0;
}

void re::initInfo_ShaderLibraryAsset(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0xEC9A67660EC0D734;
  v15[1] = "ShaderLibraryAsset";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE194B98, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE194B98);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicString>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "networkIdentifier";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0x800000001;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE194BA0 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::DynamicString>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "serializedLibraryPath";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x2800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE194BA8 = v13;
      __cxa_guard_release(&qword_1EE194B98);
    }
  }

  *(this + 2) = 0x5800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE194BA0;
  *(this + 9) = re::internal::defaultConstruct<re::ShaderLibraryAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ShaderLibraryAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::ShaderLibraryAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::ShaderLibraryAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

void *re::internal::defaultConstruct<re::ShaderLibraryAsset>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  *a3 = &unk_1F5CBE448;
  *(a3 + 24) = 0u;
  *(a3 + 8) = 0u;
  v4 = (a3 + 8);
  v5 = re::DynamicString::setCapacity(v4, 0);
  *(v3 + 40) = 0u;
  v3 += 40;
  *(v3 + 16) = 0u;
  result = re::DynamicString::setCapacity(v3, 0);
  *(v3 + 40) = 0;
  return result;
}

void *re::internal::defaultConstructV2<re::ShaderLibraryAsset>(uint64_t a1)
{
  v1 = a1;
  *a1 = &unk_1F5CBE448;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  v2 = (a1 + 8);
  v3 = re::DynamicString::setCapacity(v2, 0);
  *(v1 + 40) = 0u;
  v1 += 40;
  *(v1 + 16) = 0u;
  result = re::DynamicString::setCapacity(v1, 0);
  *(v1 + 40) = 0;
  return result;
}

void re::ShaderLibraryAssetLoader::~ShaderLibraryAssetLoader(re::ShaderLibraryAssetLoader *this)
{
  *this = &unk_1F5CBE4A8;
  v2 = (this + 16);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 13);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 7);
  re::AssetHandle::~AssetHandle(v2);
}

{
  *this = &unk_1F5CBE4A8;
  v2 = (this + 16);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 13);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 7);
  re::AssetHandle::~AssetHandle(v2);

  JUMPOUT(0x1E6906520);
}

void re::ShaderLibraryAsset::~ShaderLibraryAsset(id *this)
{
  re::ShaderLibraryAsset::~ShaderLibraryAsset(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5CBE448;

  re::DynamicString::deinit((this + 5));
  re::DynamicString::deinit((this + 1));
}

uint64_t re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 56 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 48) = a3;
  ++*(a1 + 28);
  return v7 + 56 * v5;
}

void re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, v9);
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 16);
    do
    {
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + v5 + 48) % *(v4 + 24));
        v8 = (*(a2 + 16) + v5);
        *(result + 24) = 0u;
        *(result + 8) = 0u;
        *(result + 32) = v8[4];
        v9 = v8[2];
        *(result + 8) = v8[1];
        v8[1] = 0;
        v10 = v8[3];
        v8[4] = 0;
        v12 = *(result + 16);
        v11 = *(result + 24);
        *(result + 16) = v9;
        *(result + 24) = v10;
        v8[2] = v12;
        v8[3] = v11;
        v7 = *(a2 + 16);
        *(result + 40) = *(v7 + v5 + 40);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 56;
    }

    while (v6 < v2);
  }

  return result;
}

void re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 56 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_27_0, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash();
    __break(1u);
  }
}

void sub_1E1F9F054(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void re::SharedTexturePayload::make(id *a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, RESharedTexturePayload **a5@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v10 = [*a1 isShareable];
  if (v10)
  {
    v11 = [RESharedTexturePayload alloc];
    log = *a1;
    if (*(a4 + 8))
    {
      v12 = *(a4 + 16);
    }

    else
    {
      v12 = a4 + 9;
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
    v15 = [(RESharedTexturePayload *)v11 initWithTexture:log isLimitedRenderAsset:a2 semantic:a3 colorSpace:v14];
    *a5 = v15;
  }

  else
  {
    loga = *re::assetTypesLogObjects(v10);
    if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [objc_msgSend(*a1 label)];
      *buf = 136315138;
      v19 = v13;
      _os_log_impl(&dword_1E1C61000, loga, OS_LOG_TYPE_DEFAULT, "Attempted to share an unshareable texture '%s'", buf, 0xCu);
    }

    *a5 = 0;
  }
}

void re::SharedTexturePayload::dynamicCast(id *this@<X0>, void *a2@<X8>)
{
  v7 = *this;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = v7;
  if (isKindOfClass)
  {
    v6 = v7;
    v5 = v7;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
}

void *re::SharedTexturePayload::handle(id *this)
{
  v1 = [*this handle];

  return v1;
}

void re::SharedTexturePayload::colorSpace(id *this@<X0>, re::DynamicString *a2@<X8>)
{
  v4 = [*this colorSpace];
  v3 = [v4 UTF8String];
}

void re::IOSurfaceTexturePayload::make(id *a1@<X0>, REIOSurfaceTexturePayload **a2@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [*a1 iosurface];
  if (v4)
  {
    v5 = -[REIOSurfaceTexturePayload initWithIOSurface:plane:pixelFormat:]([REIOSurfaceTexturePayload alloc], "initWithIOSurface:plane:pixelFormat:", v4, [*a1 iosurfacePlane], objc_msgSend(*a1, sel_pixelFormat));
    *a2 = v5;
  }

  else
  {
    v6 = *re::assetTypesLogObjects(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [objc_msgSend(*a1 label)];
      v8 = 136315138;
      v9 = v7;
      _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "Attempted to share an unshareable texture '%s'", &v8, 0xCu);
    }

    *a2 = 0;
  }
}

void re::IOSurfaceTexturePayload::dynamicCast(id *this@<X0>, void *a2@<X8>)
{
  v7 = *this;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = v7;
  if (isKindOfClass)
  {
    v6 = v7;
    v5 = v7;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
}

void re::IOSurfaceTexturePayload::makeTextureWithDevice(id *this@<X0>, id *a2@<X1>, void *a3@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = *this;
  v6 = [v5 ioSurface];
  v7 = [v5 planeIndex];
  if ([v6 planeCount])
  {
    v8 = [v6 widthOfPlaneAtIndex:v7];
    v9 = [v6 heightOfPlaneAtIndex:v7];
  }

  else
  {
    v8 = [v6 width];
    v9 = [v6 height];
  }

  v10 = v9;
  if (v8 && v9)
  {
    v11 = [v5 pixelFormat];
    v12 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
    [v12 setTextureType_];
    [v12 setWidth_];
    [v12 setHeight_];
    [v12 setPixelFormat_];
    [v12 setMipmapLevelCount_];
    [v12 setUsage_];
    [v12 setStorageMode_];
    re::mtl::Device::makeTextureWithIOSurface(v12, a2, v6, v7, a3);
    if (v12)
    {
    }
  }

  else
  {
    v13 = *re::assetTypesLogObjects(v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14[0] = 67109376;
      v14[1] = v8;
      v15 = 1024;
      v16 = v10;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Attempted to create an IOSurfaceTexturePayload with invalid size: [%d, %d]", v14, 0xEu);
    }

    *a3 = 0;
  }
}

void re::DrawableQueueTexturePayload::make(id *a1@<X0>, REDrawableQueueTexturePayload **a2@<X8>)
{
  v4 = [REDrawableQueueTexturePayload alloc];
  v6 = *a1;
  v5 = [REDrawableQueueTexturePayload initWithDrawableQueue:v4 placeholderTexture:"initWithDrawableQueue:placeholderTexture:"];
  *a2 = v5;
}

void re::DrawableQueueTexturePayload::dynamicCast(id *this@<X0>, void *a2@<X8>)
{
  v7 = *this;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = v7;
  if (isKindOfClass)
  {
    v6 = v7;
    v5 = v7;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
}

void re::DrawableQueueTexturePayload::drawableQueue(id *this@<X0>, void *a2@<X8>)
{
  v3 = [*this drawableQueue];
  *a2 = v3;
}

void re::DrawableQueueTexturePayload::placeholderTexture(id *this@<X0>, void *a2@<X8>)
{
  v3 = [*this placeholderTexture];
  *a2 = v3;
}

uint64_t re::bufferIdentifierForMeshAttribute(re *this, const re::StringID *a2)
{
  if (re::StringID::operator==(this, re::MeshAttributeNames::kIndexTriangles))
  {
    return 4;
  }

  if (re::StringID::operator==(this, re::MeshAttributeNames::kVertexAdjacentFaces) || re::StringID::operator==(this, re::MeshAttributeNames::kAccumulatedVertexValence) || re::StringID::operator==(this, re::MeshAttributeNames::kSimplifiedAnimationJointIndices) || re::StringID::operator==(this, re::MeshAttributeNames::kSimplifiedAnimationInfluenceEndIndices) || re::StringID::operator==(this, re::MeshAttributeNames::kSimplifiedAnimationSkinningInfluences))
  {
    return 5;
  }

  if (re::StringID::operator==(this, re::MeshAttributeNames::kPatchControlHullIndices) || re::StringID::operator==(this, re::MeshAttributeNames::kOpenSubdivStencilSizes) || re::StringID::operator==(this, re::MeshAttributeNames::kOpenSubdivStencilIndices) || re::StringID::operator==(this, re::MeshAttributeNames::kOpenSubdivStencilOffsets) || re::StringID::operator==(this, re::MeshAttributeNames::kOpenSubdivUVIndices) || re::StringID::operator==(this, re::MeshAttributeNames::kPatchTessellationFactors) || re::StringID::operator==(this, re::MeshAttributeNames::kPatchTessellationPatchVertexOffsets) || re::StringID::operator==(this, re::MeshAttributeNames::kPatchTessellationPatchIndexOffsets))
  {
    return 7;
  }

  v4 = re::StringID::operator==(this, re::MeshAttributeNames::kPostTessellationVertexPatchIDs);
  result = 7;
  if (!v4)
  {
    if (re::StringID::operator==(this, re::MeshAttributeNames::kPostTessellationIndices))
    {
      return 7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re::MeshPayloadBuffers::areValid(re::MeshPayloadBuffers *this)
{
  v1 = *(this + 48);
  if (v1 == -1)
  {
    v3 = std::__throw_bad_variant_access[abi:nn200100]();
    return re::MeshPayloadBuffers::length(v3, v4);
  }

  else
  {
    v6 = &v5;
    return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNKS6_18MeshPayloadBuffers8areValidEvE3__0ZNKS9_8areValidEvE3__1EEEEEJRKNS0_6__implIJNS6_16FixedInlineArrayIN2NS9SharedPtrIN3MTL6BufferEEELm8EEENSF_INS6_20BufferSliceSourceCPUELm8EEEEEEEEEDcOT_DpOT0____fmatrix[v1])(&v6, this);
  }
}

uint64_t re::MeshPayloadBuffers::length(re::MeshPayloadBuffers *this, int a2)
{
  v8 = a2;
  v9[0] = &v8;
  v9[1] = &v8;
  v2 = *(this + 48);
  if (v2 == -1)
  {
    v4 = std::__throw_bad_variant_access[abi:nn200100]();
    return re::MeshPayloadBuffers::slice(v4, v5, v6, v7);
  }

  else
  {
    v10 = v9;
    return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNKS6_18MeshPayloadBuffers6lengthEjE3__0ZNKS9_6lengthEjE3__1EEEEEJRKNS0_6__implIJNS6_16FixedInlineArrayIN2NS9SharedPtrIN3MTL6BufferEEELm8EEENSF_INS6_20BufferSliceSourceCPUELm8EEEEEEEEEDcOT_DpOT0____fmatrix[v2])(&v10, this);
  }
}

uint64_t re::MeshPayloadBuffers::slice(re::MeshPayloadBuffers *this, int a2, uint64_t a3, uint64_t a4)
{
  v10 = a2;
  v8 = a4;
  v9 = a3;
  v11[0] = &v10;
  v11[1] = &v9;
  v11[2] = &v8;
  v11[3] = &v10;
  v11[4] = &v9;
  v11[5] = &v8;
  v4 = *(this + 48);
  if (v4 == -1)
  {
    v6 = std::__throw_bad_variant_access[abi:nn200100]();
    return std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::MeshPayloadBuffers::areValid(void)::$_0,re::MeshPayloadBuffers::areValid(void)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::FixedInlineArray<NS::SharedPtr<MTL::Buffer>,8ul>,std::__variant_detail::_Trait<re::BufferSliceSourceCPU,8ul>> const&>(v6, v7);
  }

  else
  {
    v12 = v11;
    return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNKS6_18MeshPayloadBuffers5sliceEjmmE3__0ZNKS9_5sliceEjmmE3__1EEEEEJRKNS0_6__implIJNS6_16FixedInlineArrayIN2NS9SharedPtrIN3MTL6BufferEEELm8EEENSF_INS6_20BufferSliceSourceCPUELm8EEEEEEEEEDcOT_DpOT0____fmatrix[v4])(&v12, this);
  }
}

id std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::MeshPayloadBuffers::length(unsigned int)::$_0,re::MeshPayloadBuffers::length(unsigned int)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::FixedInlineArray<NS::SharedPtr<MTL::Buffer>,8ul>,std::__variant_detail::_Trait<re::BufferSliceSourceCPU,8ul>> const&>(unsigned int ***a1, uint64_t a2)
{
  v4 = ***a1;
  if (v4 >= 8)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 181, v4, 8, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 8 * v4);

    return [v5 length];
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::MeshPayloadBuffers::length(unsigned int)::$_0,re::MeshPayloadBuffers::length(unsigned int)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::FixedInlineArray<NS::SharedPtr<MTL::Buffer>,8ul>,std::__variant_detail::_Trait<re::BufferSliceSourceCPU,8ul>> const&>(uint64_t a1, uint64_t a2)
{
  v4 = **(*a1 + 8);
  if (v4 < 8)
  {
    return *(a2 + 24 * v4);
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 181, v4, 8, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

id std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::MeshPayloadBuffers::slice(unsigned int,unsigned long,unsigned long)::$_0,re::MeshPayloadBuffers::slice(unsigned int,unsigned long,unsigned long)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::FixedInlineArray<NS::SharedPtr<MTL::Buffer>,8ul>,std::__variant_detail::_Trait<re::BufferSliceSourceCPU,8ul>> const&>@<X0>(unsigned int ***a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = ***a1;
  if (v5 >= 8)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 181, ***a1, 8);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v6 = *v4[1];
    v7 = *v4[2];
    result = *(a2 + 8 * v5);
    *a3 = result;
    *(a3 + 24) = 0;
    *(a3 + 32) = v6;
    *(a3 + 36) = v7;
  }

  return result;
}

id std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::MeshPayloadBuffers::slice(unsigned int,unsigned long,unsigned long)::$_0,re::MeshPayloadBuffers::slice(unsigned int,unsigned long,unsigned long)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::FixedInlineArray<NS::SharedPtr<MTL::Buffer>,8ul>,std::__variant_detail::_Trait<re::BufferSliceSourceCPU,8ul>> const&>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = **(*a1 + 24);
  if (v5 >= 8)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 181, **(*a1 + 24), 8);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v6 = a2 + 24 * v5;
    v7 = **(v4 + 32);
    v8 = **(v4 + 40);
    *a3 = *v6;
    result = *(v6 + 16);
    *(a3 + 16) = result;
    *(a3 + 24) = 1;
    *(a3 + 32) = v7;
    *(a3 + 36) = v8;
  }

  return result;
}

void re::VideoChannelTextureHandles::invalidate(const void **this)
{
  re::TextureHandle::invalidate(this);
  re::TextureHandle::invalidate((this + 2));
  re::TextureHandle::invalidate((this + 4));
  re::TextureHandle::invalidate((this + 6));
  re::TextureHandle::invalidate((this + 8));
  re::TextureHandle::invalidate((this + 10));
  re::TextureHandle::invalidate((this + 12));
  v2 = this[18];
  *(this + 34) = 0;
  this[14] = 0;
  this[15] = 0;
  *(this + 32) = 0;
  *(this + 35) = 0x10000;
  if (v2)
  {
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(this + 18);
  }

  this[18] = 0;
  *(this + 76) = 512;
  *(this + 154) = 2;
}

void anonymous namespace::registerOrSetTexture(uint64_t a1, const re::TextureHandle *a2, void **a3)
{
  if (*a3)
  {
    if (*(a2 + 1))
    {
      v4 = *a2 == 0;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (a1)
      {
        re::TextureManager::registerTexture(a1, a3, v5);
        re::TextureHandle::operator=(a2, v5);
        re::TextureHandle::invalidate(v5);
      }
    }

    else
    {

      re::TextureHandle::setMetalTexture(a2, a3);
    }
  }
}

void re::VideoChannelTextureHandles::setTextures(uint64_t a1, uint64_t a2, CVPixelBufferRef *a3, char a4, char a5, char a6, CFTypeRef *a7, __int16 *a8, char a9)
{
  v24 = 0;
  re::VideoObject<re::VideoPixelBufferBase>::setRef(&v24, &v24, a3[13]);
  if (v24)
  {
    v23 = re::VideoPixelBufferTextureBase::asMetalTexture(&v24);
    v17 = v23;
  }

  else
  {
    v23 = *(a2 + 16);
  }

  *(a1 + 112) = [v23 pixelFormat];
  if (v23)
  {
  }

  v23 = 0;
  re::VideoObject<re::VideoPixelBufferBase>::setRef(&v23, &v23, a3[14]);
  if (v23)
  {
    v22 = re::VideoPixelBufferTextureBase::asMetalTexture(&v23);
    v18 = v22;

    *(a1 + 116) = [v22 pixelFormat];
    if (v22)
    {
    }
  }

  else
  {
    re::TextureHandle::invalidate((a1 + 16));
    *(a1 + 116) = 0;
  }

  v22 = 0;
  re::VideoObject<re::VideoPixelBufferBase>::setRef(&v22, &v22, a3[15]);
  if (v22)
  {
    v21 = re::VideoPixelBufferTextureBase::asMetalTexture(&v22);
    v19 = v21;

    *(a1 + 120) = [v21 pixelFormat];
    if (v21)
    {
    }
  }

  else
  {
    re::TextureHandle::invalidate((a1 + 32));
    *(a1 + 120) = 0;
  }

  *(a1 + 140) = a4;
  *(a1 + 143) = a5;
  *(a1 + 141) = a6;
  re::VideoObject<re::VideoColorTransformBase>::setRef(a1 + 144, (a1 + 144), *a7);
  v20 = *a8;
  *(a1 + 154) = *(a8 + 2);
  *(a1 + 152) = v20;
  *(a1 + 142) = a9;
  if (v22)
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v22);
  }

  if (v23)
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v23);
  }

  if (v24)
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v24);
  }
}

void sub_1E1FA075C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, id a10, id a11, uint64_t a12)
{
  if (a11)
  {
  }

  if (a12)
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&a12);
  }

  _Unwind_Resume(exception_object);
}

void re::VideoChannelTextureHandles::setPlane0AndLoadingFallbackTextures(uint64_t a1, uint64_t a2, void **a3)
{
  if (*(a1 + 24) && *(a1 + 16))
  {
    re::TextureHandle::invalidate((a1 + 16));
    *(a1 + 116) = 0;
  }

  if (*(a1 + 40) && *(a1 + 32))
  {
    re::TextureHandle::invalidate((a1 + 32));
    *(a1 + 120) = 0;
  }

  *(a1 + 112) = [*a3 pixelFormat];
  v6 = [*a3 pixelFormat];
  v8 = *(a1 + 144);
  v7 = (a1 + 144);
  *(v7 - 2) = v6;
  *(v7 - 4) = 0;
  *(v7 - 1) = 0;
  if (v8)
  {
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v7);
  }

  *v7 = 0;
}

void re::VideoChannelTextureHandles::setScreenFallbackTextures(re::VideoChannelTextureHandles *this, id *a2)
{
  v9 = a2[2];
  v8 = a2[2];
  v7 = a2[3];
  *(this + 28) = [v9 pixelFormat];
  *(this + 29) = [v8 pixelFormat];
  v4 = [v7 pixelFormat];
  v6 = *(this + 18);
  v5 = (this + 144);
  *(v5 - 6) = v4;
  *(v5 - 4) = 0;
  *(v5 - 1) = 0;
  if (v6)
  {
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v5);
  }

  *v5 = 0;
  if (v7)
  {
  }

  if (v8)
  {
  }

  if (v9)
  {
  }
}

void sub_1E1FA09B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, id a11, id a12)
{
  if (a10)
  {
  }

  if (a11)
  {
  }

  if (a12)
  {
  }

  _Unwind_Resume(exception_object);
}

void re::VideoChannelTextureHandles::setTextures(uint64_t a1, uint64_t a2, id *a3, char a4, char a5, char a6, CFTypeRef *a7, __int16 *a8, char a9)
{
  v25 = a3[13];
  v17 = v25;

  if (v25)
  {
    *(a1 + 112) = [v25 pixelFormat];
    v18 = v25;
    if (!v25)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v24 = *(a2 + 16);
  *(a1 + 112) = [v24 pixelFormat];
  v18 = v24;
  if (v24)
  {
LABEL_3:
  }

LABEL_4:
  v19 = a3[14];
  v25 = v19;
  v20 = v19;

  if (v19)
  {
    *(a1 + 116) = [v25 pixelFormat];
    if (v25)
    {
    }
  }

  else
  {
    re::TextureHandle::invalidate((a1 + 16));
    *(a1 + 116) = 0;
  }

  v21 = a3[15];
  v25 = v21;
  v22 = v21;

  if (v21)
  {
    *(a1 + 120) = [v25 pixelFormat];
    if (v25)
    {
    }
  }

  else
  {
    re::TextureHandle::invalidate((a1 + 32));
    *(a1 + 120) = 0;
  }

  *(a1 + 140) = a4;
  *(a1 + 143) = a5;
  *(a1 + 141) = a6;
  re::VideoObject<re::VideoColorTransformBase>::setRef(a1 + 144, (a1 + 144), *a7);
  v23 = *a8;
  *(a1 + 154) = *(a8 + 2);
  *(a1 + 152) = v23;
  *(a1 + 142) = a9;
}

void sub_1E1FA0BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10)
{
  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

void re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(__CVBuffer **a1)
{
  v3 = *a1;
  if (v3)
  {

    CVPixelBufferRelease(v3);
  }

  else
  {
    v6 = v1;
    v7 = v2;
    v4 = *re::videoLogObjects(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Video m_object is NULL", v5, 2u);
    }
  }
}

void re::VideoObject<re::VideoColorTransformBase>::setRef(int a1, const void **a2, CFTypeRef cf)
{
  if (*a2)
  {
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(a2);
  }

  *a2 = cf;
  if (cf)
  {

    CFRetain(cf);
  }
}

void re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(const void **a1)
{
  v3 = *a1;
  if (v3)
  {

    CFRelease(v3);
  }

  else
  {
    v6 = v1;
    v7 = v2;
    v4 = *re::videoLogObjects(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Video m_object is NULL", v5, 2u);
    }
  }
}

void *re::TimelineGroupAssetData::findDependencies(void *result, _anonymous_namespace_ *this)
{
  v3 = result;
  v4 = *(result + 11);
  v5 = *(this + 1);
  v6 = v4 + *(this + 2);
  if (v5 < v6)
  {
    result = re::DynamicArray<re::AssetHandle>::setCapacity(this, v6);
    v4 = *(v3 + 11);
  }

  if (v4)
  {
    v7 = *(v3 + 13);
    v8 = 24 * v4;
    do
    {
      result = re::DynamicArray<re::AssetHandle>::add(this, v7);
      v7 = (v7 + 24);
      v8 -= 24;
    }

    while (v8);
  }

  return result;
}

void *re::TimelineGroupAssetData::findAssetHandleFields(void *result, _anonymous_namespace_ *this)
{
  v3 = result;
  v4 = result[11];
  v5 = *(this + 1);
  v6 = v4 + *(this + 2);
  if (v5 < v6)
  {
    result = re::DynamicArray<float *>::setCapacity(this, v6);
    v4 = v3[11];
  }

  if (v4)
  {
    v7 = v3[13];
    v8 = 24 * v4;
    do
    {
      v9 = v7;
      result = re::DynamicArray<re::TransitionCondition *>::add(this, &v9);
      v7 += 24;
      v8 -= 24;
    }

    while (v8);
  }

  return result;
}

void re::introspectionTable_TimelineAssetData(re *this)
{
  if ((_MergedGlobals_69 & 1) == 0)
  {
    _MergedGlobals_69 = 1;
    if ((atomic_load_explicit(&qword_1EE194C50, memory_order_acquire) & 1) == 0)
    {
      inited = __cxa_guard_acquire(&qword_1EE194C50);
      if (inited)
      {
        qword_1EE18AC80 = "TimelineClipAssetData";
        v2 = qword_1EE194C80;
        if (!qword_1EE194C80)
        {
          v2 = re::allocInfo_TimelineClipAssetData(inited);
          qword_1EE194C80 = v2;
          re::initInfo_TimelineClipAssetData(v2, v3);
        }

        qword_1EE18AC88 = v2;
        unk_1EE18AC90 = 0;
        qword_1EE18AC98 = 1;
        dword_1EE18ACA0 = 0;
        qword_1EE18ACA8 = "TimelineGroupAssetData";
        v4 = qword_1EE194CD0;
        if (!qword_1EE194CD0)
        {
          v4 = re::allocInfo_TimelineGroupAssetData(inited);
          qword_1EE194CD0 = v4;
          re::initInfo_TimelineGroupAssetData(v4, v5);
        }

        qword_1EE18ACB0 = v4;
        *algn_1EE18ACB8 = 0;
        qword_1EE18ACC0 = 2;
        dword_1EE18ACC8 = 0;
        qword_1EE18ACD0 = "FloatAnimationClipAssetData";
        v6 = qword_1EE194CE8;
        if (!qword_1EE194CE8)
        {
          v6 = re::allocInfo_FloatAnimationClipAssetData(inited);
          qword_1EE194CE8 = v6;
          re::initInfo_FloatAnimationClipAssetData(v6, v7);
        }

        qword_1EE18ACD8 = v6;
        unk_1EE18ACE0 = 0;
        qword_1EE18ACE8 = 3;
        dword_1EE18ACF0 = 0;
        qword_1EE18ACF8 = "DoubleAnimationClipAssetData";
        v8 = qword_1EE194D00;
        if (!qword_1EE194D00)
        {
          v8 = re::allocInfo_DoubleAnimationClipAssetData(inited);
          qword_1EE194D00 = v8;
          re::initInfo_DoubleAnimationClipAssetData(v8, v9);
        }

        qword_1EE18AD00 = v8;
        *algn_1EE18AD08 = 0;
        qword_1EE18AD10 = 4;
        dword_1EE18AD18 = 0;
        qword_1EE18AD20 = "Vector2FAnimationClipAssetData";
        v10 = qword_1EE194D18;
        if (!qword_1EE194D18)
        {
          v10 = re::allocInfo_Vector2FAnimationClipAssetData(inited);
          qword_1EE194D18 = v10;
          re::initInfo_Vector2FAnimationClipAssetData(v10, v11);
        }

        qword_1EE18AD28 = v10;
        unk_1EE18AD30 = 0;
        qword_1EE18AD38 = 5;
        dword_1EE18AD40 = 0;
        qword_1EE18AD48 = "Vector3FAnimationClipAssetData";
        v12 = qword_1EE194D30;
        if (!qword_1EE194D30)
        {
          v12 = re::allocInfo_Vector3FAnimationClipAssetData(inited);
          qword_1EE194D30 = v12;
          re::initInfo_Vector3FAnimationClipAssetData(v12, v13);
        }

        qword_1EE18AD50 = v12;
        *algn_1EE18AD58 = 0;
        qword_1EE18AD60 = 6;
        dword_1EE18AD68 = 0;
        qword_1EE18AD70 = "Vector4FAnimationClipAssetData";
        v14 = qword_1EE194D48;
        if (!qword_1EE194D48)
        {
          v14 = re::allocInfo_Vector4FAnimationClipAssetData(inited);
          qword_1EE194D48 = v14;
          re::initInfo_Vector4FAnimationClipAssetData(v14, v15);
        }

        qword_1EE18AD78 = v14;
        unk_1EE18AD80 = 0;
        qword_1EE18AD88 = 7;
        dword_1EE18AD90 = 0;
        qword_1EE18AD98 = "QuaternionFAnimationClipAssetData";
        v16 = qword_1EE194D60;
        if (!qword_1EE194D60)
        {
          v16 = re::allocInfo_QuaternionFAnimationClipAssetData(inited);
          qword_1EE194D60 = v16;
          re::initInfo_QuaternionFAnimationClipAssetData(v16, v17);
        }

        qword_1EE18ADA0 = v16;
        *algn_1EE18ADA8 = 0;
        qword_1EE18ADB0 = 8;
        dword_1EE18ADB8 = 0;
        qword_1EE18ADC0 = "SRTAnimationClipAssetData";
        v18 = qword_1EE194D78;
        if (!qword_1EE194D78)
        {
          v18 = re::allocInfo_SRTAnimationClipAssetData(inited);
          qword_1EE194D78 = v18;
          re::initInfo_SRTAnimationClipAssetData(v18, v19);
        }

        qword_1EE18ADC8 = v18;
        unk_1EE18ADD0 = 0;
        qword_1EE18ADD8 = 9;
        dword_1EE18ADE0 = 0;
        qword_1EE18ADE8 = "SkeletalPoseAnimationClipAssetData";
        v20 = qword_1EE194D90;
        if (!qword_1EE194D90)
        {
          v20 = re::allocInfo_SkeletalPoseAnimationClipAssetData(inited);
          qword_1EE194D90 = v20;
          re::initInfo_SkeletalPoseAnimationClipAssetData(v20, v21);
        }

        qword_1EE18ADF0 = v20;
        *algn_1EE18ADF8 = 0;
        qword_1EE18AE00 = 10;
        dword_1EE18AE08 = 0;
        qword_1EE18AE10 = "FloatAnimationAssetData";
        v22 = qword_1EE194DC0;
        if (!qword_1EE194DC0)
        {
          v22 = re::allocInfo_FloatAnimationAssetData(inited);
          qword_1EE194DC0 = v22;
          re::initInfo_FloatAnimationAssetData(v22, v23);
        }

        qword_1EE18AE18 = v22;
        unk_1EE18AE20 = 0;
        qword_1EE18AE28 = 11;
        dword_1EE18AE30 = 0;
        qword_1EE18AE38 = "DoubleAnimationAssetData";
        v24 = qword_1EE194DD8;
        if (!qword_1EE194DD8)
        {
          v24 = re::allocInfo_DoubleAnimationAssetData(inited);
          qword_1EE194DD8 = v24;
          re::initInfo_DoubleAnimationAssetData(v24, v25);
        }

        qword_1EE18AE40 = v24;
        *algn_1EE18AE48 = 0;
        qword_1EE18AE50 = 12;
        dword_1EE18AE58 = 0;
        qword_1EE18AE60 = "Vector2FAnimationAssetData";
        v26 = qword_1EE194DF0;
        if (!qword_1EE194DF0)
        {
          v26 = re::allocInfo_Vector2FAnimationAssetData(inited);
          qword_1EE194DF0 = v26;
          re::initInfo_Vector2FAnimationAssetData(v26, v27);
        }

        qword_1EE18AE68 = v26;
        unk_1EE18AE70 = 0;
        qword_1EE18AE78 = 13;
        dword_1EE18AE80 = 0;
        qword_1EE18AE88 = "Vector3FAnimationAssetData";
        v28 = qword_1EE194E08;
        if (!qword_1EE194E08)
        {
          v28 = re::allocInfo_Vector3FAnimationAssetData(inited);
          qword_1EE194E08 = v28;
          re::initInfo_Vector3FAnimationAssetData(v28, v29);
        }

        qword_1EE18AE90 = v28;
        *algn_1EE18AE98 = 0;
        qword_1EE18AEA0 = 14;
        dword_1EE18AEA8 = 0;
        qword_1EE18AEB0 = "Vector4FAnimationAssetData";
        v30 = qword_1EE194E20;
        if (!qword_1EE194E20)
        {
          v30 = re::allocInfo_Vector4FAnimationAssetData(inited);
          qword_1EE194E20 = v30;
          re::initInfo_Vector4FAnimationAssetData(v30, v31);
        }

        qword_1EE18AEB8 = v30;
        unk_1EE18AEC0 = 0;
        qword_1EE18AEC8 = 15;
        dword_1EE18AED0 = 0;
        qword_1EE18AED8 = "QuaternionFAnimationAssetData";
        v32 = qword_1EE194E38;
        if (!qword_1EE194E38)
        {
          v32 = re::allocInfo_QuaternionFAnimationAssetData(inited);
          qword_1EE194E38 = v32;
          re::initInfo_QuaternionFAnimationAssetData(v32, v33);
        }

        qword_1EE18AEE0 = v32;
        *algn_1EE18AEE8 = 0;
        qword_1EE18AEF0 = 16;
        dword_1EE18AEF8 = 0;
        qword_1EE18AF00 = "SRTAnimationAssetData";
        v34 = qword_1EE194E50;
        if (!qword_1EE194E50)
        {
          v34 = re::allocInfo_SRTAnimationAssetData(inited);
          qword_1EE194E50 = v34;
          inited = re::initInfo_SRTAnimationAssetData(v34, v35);
        }

        qword_1EE18AF08 = v34;
        unk_1EE18AF10 = 0;
        qword_1EE18AF18 = 17;
        dword_1EE18AF20 = 0;
        qword_1EE18AF28 = "SkeletalPoseAnimationAssetData";
        v36 = qword_1EE194E68;
        if (!qword_1EE194E68)
        {
          v36 = re::allocInfo_SkeletalPoseAnimationAssetData(inited);
          qword_1EE194E68 = v36;
          re::initInfo_SkeletalPoseAnimationAssetData(v36, v37);
        }

        qword_1EE18AF30 = v36;
        *algn_1EE18AF38 = 0;
        qword_1EE18AF40 = 18;
        dword_1EE18AF48 = 0;
        qword_1EE18AF50 = "FloatKeyframeAnimationAssetData";
        v38 = qword_1EE194E98;
        if (!qword_1EE194E98)
        {
          v38 = re::allocInfo_FloatKeyframeAnimationAssetData(inited);
          qword_1EE194E98 = v38;
          re::initInfo_FloatKeyframeAnimationAssetData(v38, v39);
        }

        qword_1EE18AF58 = v38;
        unk_1EE18AF60 = 0;
        qword_1EE18AF68 = 19;
        dword_1EE18AF70 = 0;
        qword_1EE18AF78 = "DoubleKeyframeAnimationAssetData";
        v40 = qword_1EE194EB0;
        if (!qword_1EE194EB0)
        {
          v40 = re::allocInfo_DoubleKeyframeAnimationAssetData(inited);
          qword_1EE194EB0 = v40;
          re::initInfo_DoubleKeyframeAnimationAssetData(v40, v41);
        }

        qword_1EE18AF80 = v40;
        *algn_1EE18AF88 = 0;
        qword_1EE18AF90 = 20;
        dword_1EE18AF98 = 0;
        qword_1EE18AFA0 = "Vector2FKeyframeAnimationAssetData";
        v42 = qword_1EE194EC8;
        if (!qword_1EE194EC8)
        {
          v42 = re::allocInfo_Vector2FKeyframeAnimationAssetData(inited);
          qword_1EE194EC8 = v42;
          re::initInfo_Vector2FKeyframeAnimationAssetData(v42, v43);
        }

        qword_1EE18AFA8 = v42;
        unk_1EE18AFB0 = 0;
        qword_1EE18AFB8 = 21;
        dword_1EE18AFC0 = 0;
        qword_1EE18AFC8 = "Vector3FKeyframeAnimationAssetData";
        v44 = qword_1EE194EE0;
        if (!qword_1EE194EE0)
        {
          v44 = re::allocInfo_Vector3FKeyframeAnimationAssetData(inited);
          qword_1EE194EE0 = v44;
          re::initInfo_Vector3FKeyframeAnimationAssetData(v44, v45);
        }

        qword_1EE18AFD0 = v44;
        *algn_1EE18AFD8 = 0;
        qword_1EE18AFE0 = 22;
        dword_1EE18AFE8 = 0;
        qword_1EE18AFF0 = "Vector4FKeyframeAnimationAssetData";
        v46 = qword_1EE194EF8;
        if (!qword_1EE194EF8)
        {
          v46 = re::allocInfo_Vector4FKeyframeAnimationAssetData(inited);
          qword_1EE194EF8 = v46;
          re::initInfo_Vector4FKeyframeAnimationAssetData(v46, v47);
        }

        qword_1EE18AFF8 = v46;
        unk_1EE18B000 = 0;
        qword_1EE18B008 = 23;
        dword_1EE18B010 = 0;
        qword_1EE18B018 = "QuaternionFKeyframeAnimationAssetData";
        v48 = qword_1EE194F10;
        if (!qword_1EE194F10)
        {
          v48 = re::allocInfo_QuaternionFKeyframeAnimationAssetData(inited);
          qword_1EE194F10 = v48;
          re::initInfo_QuaternionFKeyframeAnimationAssetData(v48, v49);
        }

        qword_1EE18B020 = v48;
        *algn_1EE18B028 = 0;
        qword_1EE18B030 = 24;
        dword_1EE18B038 = 0;
        qword_1EE18B040 = "SRTKeyframeAnimationAssetData";
        v50 = qword_1EE194F28;
        if (!qword_1EE194F28)
        {
          v50 = re::allocInfo_SRTKeyframeAnimationAssetData(inited);
          qword_1EE194F28 = v50;
          re::initInfo_SRTKeyframeAnimationAssetData(v50, v51);
        }

        qword_1EE18B048 = v50;
        unk_1EE18B050 = 0;
        qword_1EE18B058 = 25;
        dword_1EE18B060 = 0;
        qword_1EE18B068 = "SkeletalPoseKeyframeAnimationAssetData";
        v52 = qword_1EE194F40;
        if (!qword_1EE194F40)
        {
          v52 = re::allocInfo_SkeletalPoseKeyframeAnimationAssetData(inited);
          qword_1EE194F40 = v52;
          re::initInfo_SkeletalPoseKeyframeAnimationAssetData(v52, v53);
        }

        qword_1EE18B070 = v52;
        *algn_1EE18B078 = 0;
        qword_1EE18B080 = 26;
        dword_1EE18B088 = 0;
        qword_1EE18B090 = "FloatSampledAnimationAssetData";
        v54 = qword_1EE194F70;
        if (!qword_1EE194F70)
        {
          v54 = re::allocInfo_FloatSampledAnimationAssetData(inited);
          qword_1EE194F70 = v54;
          re::initInfo_FloatSampledAnimationAssetData(v54, v55);
        }

        qword_1EE18B098 = v54;
        unk_1EE18B0A0 = 0;
        qword_1EE18B0A8 = 27;
        dword_1EE18B0B0 = 0;
        qword_1EE18B0B8 = "DoubleSampledAnimationAssetData";
        v56 = qword_1EE194F88;
        if (!qword_1EE194F88)
        {
          v56 = re::allocInfo_DoubleSampledAnimationAssetData(inited);
          qword_1EE194F88 = v56;
          re::initInfo_DoubleSampledAnimationAssetData(v56, v57);
        }

        qword_1EE18B0C0 = v56;
        *algn_1EE18B0C8 = 0;
        qword_1EE18B0D0 = 28;
        dword_1EE18B0D8 = 0;
        qword_1EE18B0E0 = "Vector2FSampledAnimationAssetData";
        v58 = qword_1EE194FA0;
        if (!qword_1EE194FA0)
        {
          v58 = re::allocInfo_Vector2FSampledAnimationAssetData(inited);
          qword_1EE194FA0 = v58;
          re::initInfo_Vector2FSampledAnimationAssetData(v58, v59);
        }

        qword_1EE18B0E8 = v58;
        unk_1EE18B0F0 = 0;
        qword_1EE18B0F8 = 29;
        dword_1EE18B100 = 0;
        qword_1EE18B108 = "Vector3FSampledAnimationAssetData";
        v60 = qword_1EE194FB8;
        if (!qword_1EE194FB8)
        {
          v60 = re::allocInfo_Vector3FSampledAnimationAssetData(inited);
          qword_1EE194FB8 = v60;
          re::initInfo_Vector3FSampledAnimationAssetData(v60, v61);
        }

        qword_1EE18B110 = v60;
        *algn_1EE18B118 = 0;
        qword_1EE18B120 = 30;
        dword_1EE18B128 = 0;
        qword_1EE18B130 = "Vector4FSampledAnimationAssetData";
        v62 = qword_1EE194FD0;
        if (!qword_1EE194FD0)
        {
          v62 = re::allocInfo_Vector4FSampledAnimationAssetData(inited);
          qword_1EE194FD0 = v62;
          re::initInfo_Vector4FSampledAnimationAssetData(v62, v63);
        }

        qword_1EE18B138 = v62;
        unk_1EE18B140 = 0;
        qword_1EE18B148 = 31;
        dword_1EE18B150 = 0;
        qword_1EE18B158 = "QuaternionFSampledAnimationAssetData";
        v64 = qword_1EE194FE8;
        if (!qword_1EE194FE8)
        {
          v64 = re::allocInfo_QuaternionFSampledAnimationAssetData(inited);
          qword_1EE194FE8 = v64;
          re::initInfo_QuaternionFSampledAnimationAssetData(v64, v65);
        }

        qword_1EE18B160 = v64;
        *algn_1EE18B168 = 0;
        qword_1EE18B170 = 32;
        dword_1EE18B178 = 0;
        qword_1EE18B180 = "SRTSampledAnimationAssetData";
        v66 = qword_1EE195000;
        if (!qword_1EE195000)
        {
          v66 = re::allocInfo_SRTSampledAnimationAssetData(inited);
          qword_1EE195000 = v66;
          re::initInfo_SRTSampledAnimationAssetData(v66, v67);
        }

        qword_1EE18B188 = v66;
        unk_1EE18B190 = 0;
        qword_1EE18B198 = 33;
        dword_1EE18B1A0 = 0;
        qword_1EE18B1A8 = "SkeletalPoseSampledAnimationAssetData";
        v68 = qword_1EE195018;
        if (!qword_1EE195018)
        {
          v68 = re::allocInfo_SkeletalPoseSampledAnimationAssetData(inited);
          qword_1EE195018 = v68;
          re::initInfo_SkeletalPoseSampledAnimationAssetData(v68, v69);
        }

        qword_1EE18B1B0 = v68;
        *algn_1EE18B1B8 = 0;
        qword_1EE18B1C0 = 34;
        dword_1EE18B1C8 = 0;
        qword_1EE18B1D0 = "OrbitAnimationAssetData";
        v70 = qword_1EE195048;
        if (!qword_1EE195048)
        {
          v70 = re::allocInfo_OrbitAnimationAssetData(inited);
          qword_1EE195048 = v70;
          re::initInfo_OrbitAnimationAssetData(v70, v71);
        }

        qword_1EE18B1D8 = v70;
        unk_1EE18B1E0 = 0;
        qword_1EE18B1E8 = 37;
        dword_1EE18B1F0 = 0;
        qword_1EE18B1F8 = "AnimationStateTimelineAssetData";
        v72 = qword_1EE195060;
        if (!qword_1EE195060)
        {
          v72 = re::allocInfo_AnimationStateTimelineAssetData(inited);
          qword_1EE195060 = v72;
          re::initInfo_AnimationStateTimelineAssetData(v72, v73);
        }

        qword_1EE18B200 = v72;
        *algn_1EE18B208 = 0;
        qword_1EE18B210 = 38;
        dword_1EE18B218 = 0;
        qword_1EE18B220 = "FloatAnimationBlendTreeAssetData";
        v74 = qword_1EE195078;
        if (!qword_1EE195078)
        {
          v74 = re::allocInfo_FloatAnimationBlendTreeAssetData(inited);
          qword_1EE195078 = v74;
          re::initInfo_FloatAnimationBlendTreeAssetData(v74, v75);
        }

        qword_1EE18B228 = v74;
        unk_1EE18B230 = 0;
        qword_1EE18B238 = 39;
        dword_1EE18B240 = 0;
        qword_1EE18B248 = "DoubleAnimationBlendTreeAssetData";
        v76 = qword_1EE195090;
        if (!qword_1EE195090)
        {
          v76 = re::allocInfo_DoubleAnimationBlendTreeAssetData(inited);
          qword_1EE195090 = v76;
          re::initInfo_DoubleAnimationBlendTreeAssetData(v76, v77);
        }

        qword_1EE18B250 = v76;
        *algn_1EE18B258 = 0;
        qword_1EE18B260 = 40;
        dword_1EE18B268 = 0;
        qword_1EE18B270 = "Vector2FAnimationBlendTreeAssetData";
        v78 = qword_1EE1950A8;
        if (!qword_1EE1950A8)
        {
          v78 = re::allocInfo_Vector2FAnimationBlendTreeAssetData(inited);
          qword_1EE1950A8 = v78;
          re::initInfo_Vector2FAnimationBlendTreeAssetData(v78, v79);
        }

        qword_1EE18B278 = v78;
        unk_1EE18B280 = 0;
        qword_1EE18B288 = 41;
        dword_1EE18B290 = 0;
        qword_1EE18B298 = "Vector3FAnimationBlendTreeAssetData";
        v80 = qword_1EE1950C0;
        if (!qword_1EE1950C0)
        {
          v80 = re::allocInfo_Vector3FAnimationBlendTreeAssetData(inited);
          qword_1EE1950C0 = v80;
          re::initInfo_Vector3FAnimationBlendTreeAssetData(v80, v81);
        }

        qword_1EE18B2A0 = v80;
        *algn_1EE18B2A8 = 0;
        qword_1EE18B2B0 = 42;
        dword_1EE18B2B8 = 0;
        qword_1EE18B2C0 = "Vector4FAnimationBlendTreeAssetData";
        v82 = qword_1EE1950D8;
        if (!qword_1EE1950D8)
        {
          v82 = re::allocInfo_Vector4FAnimationBlendTreeAssetData(inited);
          qword_1EE1950D8 = v82;
          re::initInfo_Vector4FAnimationBlendTreeAssetData(v82, v83);
        }

        qword_1EE18B2C8 = v82;
        unk_1EE18B2D0 = 0;
        qword_1EE18B2D8 = 43;
        dword_1EE18B2E0 = 0;
        qword_1EE18B2E8 = "QuaternionFAnimationBlendTreeAssetData";
        v84 = qword_1EE1950F0;
        if (!qword_1EE1950F0)
        {
          v84 = re::allocInfo_QuaternionFAnimationBlendTreeAssetData(inited);
          qword_1EE1950F0 = v84;
          re::initInfo_QuaternionFAnimationBlendTreeAssetData(v84, v85);
        }

        qword_1EE18B2F0 = v84;
        *algn_1EE18B2F8 = 0;
        qword_1EE18B300 = 44;
        dword_1EE18B308 = 0;
        qword_1EE18B310 = "SRTAnimationBlendTreeAssetData";
        v86 = qword_1EE195108;
        if (!qword_1EE195108)
        {
          v86 = re::allocInfo_SRTAnimationBlendTreeAssetData(inited);
          qword_1EE195108 = v86;
          re::initInfo_SRTAnimationBlendTreeAssetData(v86, v87);
        }

        qword_1EE18B318 = v86;
        unk_1EE18B320 = 0;
        qword_1EE18B328 = 45;
        dword_1EE18B330 = 0;
        qword_1EE18B338 = "SkeletalPoseAnimationBlendTreeAssetData";
        v88 = qword_1EE195120;
        if (!qword_1EE195120)
        {
          v88 = re::allocInfo_SkeletalPoseAnimationBlendTreeAssetData(inited);
          qword_1EE195120 = v88;
          re::initInfo_SkeletalPoseAnimationBlendTreeAssetData(v88, v89);
        }

        qword_1EE18B340 = v88;
        *algn_1EE18B348 = 0;
        qword_1EE18B350 = 46;
        dword_1EE18B358 = 0;
        qword_1EE18B360 = "EventTimelineAssetData";
        v90 = qword_1EE1951F0;
        if (!qword_1EE1951F0)
        {
          v90 = re::allocInfo_EventTimelineAssetData(inited);
          qword_1EE1951F0 = v90;
          re::initInfo_EventTimelineAssetData(v90, v91);
        }

        qword_1EE18B368 = v90;
        unk_1EE18B370 = 0;
        qword_1EE18B378 = 48;
        dword_1EE18B380 = 0;
        qword_1EE18B388 = "BlendShapeWeightsAnimationAssetData";
        v92 = qword_1EE194E80;
        if (!qword_1EE194E80)
        {
          v92 = re::allocInfo_BlendShapeWeightsAnimationAssetData(inited);
          qword_1EE194E80 = v92;
          re::initInfo_BlendShapeWeightsAnimationAssetData(v92, v93);
        }

        qword_1EE18B390 = v92;
        *algn_1EE18B398 = 0;
        qword_1EE18B3A0 = 50;
        dword_1EE18B3A8 = 0;
        qword_1EE18B3B0 = "BlendShapeWeightsSampledAnimationAssetData";
        v94 = qword_1EE195030;
        if (!qword_1EE195030)
        {
          v94 = re::allocInfo_BlendShapeWeightsSampledAnimationAssetData(inited);
          qword_1EE195030 = v94;
          re::initInfo_BlendShapeWeightsSampledAnimationAssetData(v94, v95);
        }

        qword_1EE18B3B8 = v94;
        unk_1EE18B3C0 = 0;
        qword_1EE18B3C8 = 59;
        dword_1EE18B3D0 = 0;
        qword_1EE18B3D8 = "BlendShapeWeightsAnimationClipAssetData";
        v96 = qword_1EE194DA8;
        if (!qword_1EE194DA8)
        {
          v96 = re::allocInfo_BlendShapeWeightsAnimationClipAssetData(inited);
          qword_1EE194DA8 = v96;
          re::initInfo_BlendShapeWeightsAnimationClipAssetData(v96, v97);
        }

        qword_1EE18B3E0 = v96;
        *algn_1EE18B3E8 = 0;
        qword_1EE18B3F0 = 60;
        dword_1EE18B3F8 = 0;
        qword_1EE18B400 = "BlendShapeWeightsKeyframeAnimationAssetData";
        v98 = qword_1EE194F58;
        if (!qword_1EE194F58)
        {
          v98 = re::allocInfo_BlendShapeWeightsKeyframeAnimationAssetData(inited);
          qword_1EE194F58 = v98;
          re::initInfo_BlendShapeWeightsKeyframeAnimationAssetData(v98, v99);
        }

        qword_1EE18B408 = v98;
        unk_1EE18B410 = 0;
        qword_1EE18B418 = 61;
        dword_1EE18B420 = 0;
        __cxa_guard_release(&qword_1EE194C50);
      }
    }

    dword_1EE195258 = 49;
    qword_1EE195260 = &qword_1EE18AC80;
  }
}

void *re::allocInfo_TimelineAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194C58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194C58))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18C998, "TimelineAssetData");
    __cxa_guard_release(&qword_1EE194C58);
  }

  return &unk_1EE18C998;
}

void re::initInfo_TimelineAssetData(re *this, re::IntrospectionBase *a2)
{
  v29[0] = 0x113B1170876036B2;
  v29[1] = "TimelineAssetData";
  if (v29[0])
  {
    if (v29[0])
    {
    }
  }

  *(this + 2) = v30;
  if ((atomic_load_explicit(&qword_1EE194C60, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE194C60);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_TimelineType(1, v7);
      v9 = (*(*v6 + 32))(v6, 32, 8);
      *v9 = 3;
      *(v9 + 8) = v8;
      *(v9 + 16) = 0;
      *(v9 + 24) = 8;
      qword_1EE195530 = v9;
      v10 = re::introspectionAllocator(v9);
      re::introspectionTable_TimelineAssetData(v10);
      v11 = (*(*v10 + 32))(v10, 16, 8);
      *v11 = 2;
      *(v11 + 1) = &dword_1EE195258;
      qword_1EE195538 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::introspect_int(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "animationLayer";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0xC00000001;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE195540 = v15;
      v16 = re::introspectionAllocator(v15);
      v18 = re::introspect_FillMode(1, v17);
      v19 = (*(*v16 + 32))(v16, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "fillMode";
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x1000000002;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE195548 = v19;
      v20 = re::introspectionAllocator(v19);
      v22 = re::IntrospectionInfo<re::StringID>::get(1, v21);
      v23 = (*(*v20 + 32))(v20, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "name";
      *(v23 + 16) = v22;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0x1800000003;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1EE195550 = v23;
      v24 = re::introspectionAllocator(v23);
      v26 = re::IntrospectionInfo<re::DynamicString>::get(1, v25);
      v27 = (*(*v24 + 32))(v24, 72, 8);
      *v27 = 1;
      *(v27 + 8) = "targetPath";
      *(v27 + 16) = v26;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0x2800000004;
      *(v27 + 40) = 0;
      *(v27 + 48) = 0;
      *(v27 + 56) = 0;
      *(v27 + 64) = 0;
      qword_1EE195558 = v27;
      __cxa_guard_release(&qword_1EE194C60);
    }
  }

  *(this + 2) = 0x4800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE195530;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v28 = v30;
}

void *re::allocInfo_TimelineClipAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194C70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194C70))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18CA28, "TimelineClipAssetData");
    __cxa_guard_release(&qword_1EE194C70);
  }

  return &unk_1EE18CA28;
}

void re::initInfo_TimelineClipAssetData(re *this, re::IntrospectionBase *a2)
{
  v48[0] = 0x180D6CB9D5D9D4D2;
  v48[1] = "TimelineClipAssetData";
  if (v48[0])
  {
    if (v48[0])
    {
    }
  }

  *(this + 2) = v49;
  if ((atomic_load_explicit(&qword_1EE194C78, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE194C78);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE194C68;
      if (!qword_1EE194C68)
      {
        v8 = re::allocInfo_TimelineAssetData(v6);
        qword_1EE194C68 = v8;
        re::initInfo_TimelineAssetData(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "TimelineAssetData";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE18C478 = v10;
      v11 = re::introspectionAllocator(v10);
      v13 = re::introspect_AssetHandle(1, v12);
      v14 = (*(*v11 + 32))(v11, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "clipSource";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x4800000001;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE18C480 = v14;
      v15 = re::introspectionAllocator(v14);
      v17 = re::IntrospectionInfo<re::Optional<double>>::get(1, v16);
      v18 = (*(*v15 + 32))(v15, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "clipStart";
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x6000000002;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE18C488 = v18;
      v19 = re::introspectionAllocator(v18);
      v21 = re::IntrospectionInfo<re::Optional<double>>::get(1, v20);
      v22 = (*(*v19 + 32))(v19, 72, 8);
      *v22 = 1;
      *(v22 + 8) = "clipEnd";
      *(v22 + 16) = v21;
      *(v22 + 24) = 0;
      *(v22 + 32) = 0x7000000003;
      *(v22 + 40) = 0;
      *(v22 + 48) = 0;
      *(v22 + 56) = 0;
      *(v22 + 64) = 0;
      qword_1EE18C490 = v22;
      v23 = re::introspectionAllocator(v22);
      v25 = re::introspect_double(1, v24);
      v26 = (*(*v23 + 32))(v23, 72, 8);
      *v26 = 1;
      *(v26 + 8) = "clipOffset";
      *(v26 + 16) = v25;
      *(v26 + 24) = 0;
      *(v26 + 32) = 0x8000000004;
      *(v26 + 40) = 0;
      *(v26 + 48) = 0;
      *(v26 + 56) = 0;
      *(v26 + 64) = 0;
      qword_1EE18C498 = v26;
      v27 = re::introspectionAllocator(v26);
      v29 = re::introspect_BOOL(1, v28);
      v30 = (*(*v27 + 32))(v27, 72, 8);
      *v30 = 1;
      *(v30 + 8) = "clipReversed";
      *(v30 + 16) = v29;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0x8800000005;
      *(v30 + 40) = 0;
      *(v30 + 48) = 0;
      *(v30 + 56) = 0;
      *(v30 + 64) = 0;
      qword_1EE18C4A0 = v30;
      v31 = re::introspectionAllocator(v30);
      v33 = re::introspect_double(1, v32);
      v34 = (*(*v31 + 32))(v31, 72, 8);
      *v34 = 1;
      *(v34 + 8) = "delay";
      *(v34 + 16) = v33;
      *(v34 + 24) = 0;
      *(v34 + 32) = 0x9000000006;
      *(v34 + 40) = 0;
      *(v34 + 48) = 0;
      *(v34 + 56) = 0;
      *(v34 + 64) = 0;
      qword_1EE18C4A8 = v34;
      v35 = re::introspectionAllocator(v34);
      v37 = re::IntrospectionInfo<re::Optional<double>>::get(1, v36);
      v38 = (*(*v35 + 32))(v35, 72, 8);
      *v38 = 1;
      *(v38 + 8) = "duration";
      *(v38 + 16) = v37;
      *(v38 + 24) = 0;
      *(v38 + 32) = 0x9800000007;
      *(v38 + 40) = 0;
      *(v38 + 48) = 0;
      *(v38 + 56) = 0;
      *(v38 + 64) = 0;
      qword_1EE18C4B0 = v38;
      v39 = re::introspectionAllocator(v38);
      v41 = re::introspect_float(1, v40);
      v42 = (*(*v39 + 32))(v39, 72, 8);
      *v42 = 1;
      *(v42 + 8) = "speed";
      *(v42 + 16) = v41;
      *(v42 + 24) = 0;
      *(v42 + 32) = 0xA800000008;
      *(v42 + 40) = 0;
      *(v42 + 48) = 0;
      *(v42 + 56) = 0;
      *(v42 + 64) = 0;
      qword_1EE18C4B8 = v42;
      v43 = re::introspectionAllocator(v42);
      v45 = re::introspect_LoopBehavior(1, v44);
      v46 = (*(*v43 + 32))(v43, 72, 8);
      *v46 = 1;
      *(v46 + 8) = "loopBehavior";
      *(v46 + 16) = v45;
      *(v46 + 24) = 0;
      *(v46 + 32) = 0xAC00000009;
      *(v46 + 40) = 0;
      *(v46 + 48) = 0;
      *(v46 + 56) = 0;
      *(v46 + 64) = 0;
      qword_1EE18C4C0 = v46;
      __cxa_guard_release(&qword_1EE194C78);
    }
  }

  *(this + 2) = 0xB000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 10;
  *(this + 8) = &qword_1EE18C478;
  *(this + 9) = re::internal::defaultConstruct<re::TimelineClipAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::TimelineClipAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::TimelineClipAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::TimelineClipAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v47 = v49;
}

uint64_t *re::IntrospectionInfo<re::Optional<double>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionOptionalBase::IntrospectionOptionalBase(&re::IntrospectionInfo<re::Optional<double>>::get(BOOL)::info) = &unk_1F5CBE710;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::Optional<double>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::Optional<double>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::Optional<double>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::Optional<double>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::introspect_double(1, a2);
  if ((re::IntrospectionInfo<re::Optional<double>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::Optional<double>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::Optional<double>>::get(BOOL)::info, 0);
    qword_1EE1864E0 = 0x100000000DLL;
    dword_1EE1864E8 = v8;
    word_1EE1864EC = 0;
    *&xmmword_1EE1864F0 = 0;
    *(&xmmword_1EE1864F0 + 1) = 0xFFFFFFFFLL;
    qword_1EE186500 = v7;
    unk_1EE186508 = 0;
    re::IntrospectionInfo<re::Optional<double>>::get(BOOL)::info = &unk_1F5CBE710;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::Optional<double>>::get(BOOL)::info, &v15);
    if (BYTE8(v15))
    {
      v11 = v16;
    }

    else
    {
      v11 = &v15 + 9;
    }

    if (v15 && (BYTE8(v15) & 1) != 0)
    {
      (*(*v15 + 40))();
    }

    v15 = *(v7 + 32);
    xmmword_1EE1864F0 = v14;
    if (v17)
    {
      if (v17)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v12 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v12);
  }

  return &re::IntrospectionInfo<re::Optional<double>>::get(BOOL)::info;
}

uint64_t re::internal::defaultConstruct<re::TimelineClipAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::TimelineAssetData::TimelineAssetData(a3, 1);
  *result = &unk_1F5CBE660;
  *(result + 112) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 72) = 0;
  *(result + 96) = 0;
  *(result + 168) = 1065353216;
  *(result + 172) = 0;
  return result;
}

void re::internal::defaultDestruct<re::TimelineClipAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  re::AssetHandle::~AssetHandle((a3 + 9));
  *a3 = &unk_1F5CC3608;
  re::DynamicString::deinit((a3 + 5));

  re::StringID::destroyString((a3 + 3));
}

uint64_t re::internal::defaultConstructV2<re::TimelineClipAssetData>(uint64_t a1)
{
  result = re::TimelineAssetData::TimelineAssetData(a1, 1);
  *result = &unk_1F5CBE660;
  *(result + 112) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 72) = 0;
  *(result + 96) = 0;
  *(result + 168) = 1065353216;
  *(result + 172) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::TimelineClipAssetData>(void *a1)
{
  re::AssetHandle::~AssetHandle((a1 + 9));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit((a1 + 5));

  re::StringID::destroyString((a1 + 3));
}

void *re::allocInfo_SkeletalPoseAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194C88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194C88))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18CAB8, "SkeletalPoseAssetData");
    __cxa_guard_release(&qword_1EE194C88);
  }

  return &unk_1EE18CAB8;
}

void re::initInfo_SkeletalPoseAssetData(re *this, re::IntrospectionBase *a2)
{
  v13[0] = 0x1C1B4EE87EA175E0;
  v13[1] = "SkeletalPoseAssetData";
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  *(this + 2) = v14;
  if ((atomic_load_explicit(&qword_1EE194C90, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE194C90);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::IntrospectionInfo<re::FixedArray<re::GenericSRT<float>>>::get(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "jointTransforms";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE195268 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::introspect_SkeletalPose(1);
      v11 = (*(*v9 + 32))(v9, 64, 8);
      *v11 = 6;
      *(v11 + 8) = 2;
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = re::skeletalPoseAssetDataUpgrade;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      qword_1EE195270 = v11;
      __cxa_guard_release(&qword_1EE194C90);
    }
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE195268;
  *(this + 9) = re::internal::defaultConstruct<re::SkeletalPoseAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SkeletalPoseAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::SkeletalPoseAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::SkeletalPoseAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v12 = v14;
}

void re::internal::defaultConstruct<re::SkeletalPoseAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
}

void *re::internal::defaultConstructV2<re::SkeletalPoseAssetData>(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void *re::allocInfo_BlendShapeWeightsAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194CA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194CA0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18CB48, "BlendShapeWeightsAssetData");
    __cxa_guard_release(&qword_1EE194CA0);
  }

  return &unk_1EE18CB48;
}

void re::initInfo_BlendShapeWeightsAssetData(re *this, re::IntrospectionBase *a2)
{
  v11[0] = 0x881012FFB378BC1ELL;
  v11[1] = "BlendShapeWeightsAssetData";
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  *(this + 2) = v12;
  if ((atomic_load_explicit(&qword_1EE194CB0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE194CB0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::FixedArray<float>>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "weights";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE194CA8 = v9;
      __cxa_guard_release(&qword_1EE194CB0);
    }
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE194CA8;
  *(this + 9) = re::internal::defaultConstruct<re::BlendShapeWeightsAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BlendShapeWeightsAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::BlendShapeWeightsAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::BlendShapeWeightsAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v10 = v12;
}

void re::internal::defaultConstruct<re::BlendShapeWeightsAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
}

void *re::internal::defaultConstructV2<re::BlendShapeWeightsAssetData>(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void *re::allocInfo_TimelineGroupAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194CC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194CC0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18CBD8, "TimelineGroupAssetData");
    __cxa_guard_release(&qword_1EE194CC0);
  }

  return &unk_1EE18CBD8;
}

void re::initInfo_TimelineGroupAssetData(re *this, re::IntrospectionBase *a2)
{
  v16[0] = 0x81187C4B31D4B78;
  v16[1] = "TimelineGroupAssetData";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE194CC8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE194CC8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE194C68;
      if (!qword_1EE194C68)
      {
        v8 = re::allocInfo_TimelineAssetData(v6);
        qword_1EE194C68 = v8;
        re::initInfo_TimelineAssetData(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "TimelineAssetData";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE195278 = v10;
      v11 = re::introspectionAllocator(v10);
      v13 = re::IntrospectionInfo<re::DynamicArray<re::AssetHandle>>::get(1, v12);
      v14 = (*(*v11 + 32))(v11, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "timelines";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x4800000001;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE195280 = v14;
      __cxa_guard_release(&qword_1EE194CC8);
    }
  }

  *(this + 2) = 0x7000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE195278;
  *(this + 9) = re::internal::defaultConstruct<re::TimelineGroupAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::TimelineGroupAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::TimelineGroupAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::TimelineGroupAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v15 = v17;
}

uint64_t re::internal::defaultConstruct<re::TimelineGroupAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::TimelineAssetData::TimelineAssetData(a3, 2);
  *result = &unk_1F5CBE6B8;
  *(result + 104) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 72) = 0;
  *(result + 96) = 0;
  return result;
}

void re::internal::defaultDestruct<re::TimelineGroupAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  re::DynamicArray<re::AssetHandle>::deinit((a3 + 9));
  *a3 = &unk_1F5CC3608;
  re::DynamicString::deinit((a3 + 5));

  re::StringID::destroyString((a3 + 3));
}

uint64_t re::internal::defaultConstructV2<re::TimelineGroupAssetData>(uint64_t a1)
{
  result = re::TimelineAssetData::TimelineAssetData(a1, 2);
  *result = &unk_1F5CBE6B8;
  *(result + 104) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 72) = 0;
  *(result + 96) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::TimelineGroupAssetData>(void *a1)
{
  re::DynamicArray<re::AssetHandle>::deinit((a1 + 9));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit((a1 + 5));

  re::StringID::destroyString((a1 + 3));
}

void *re::allocInfo_FloatAnimationClipAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194CD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194CD8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18CC68, "FloatAnimationClipAssetData");
    __cxa_guard_release(&qword_1EE194CD8);
  }

  return &unk_1EE18CC68;
}

void re::initInfo_FloatAnimationClipAssetData(re *this, re::IntrospectionBase *a2)
{
  v52[0] = 0x81043F4DEFE98304;
  v52[1] = "FloatAnimationClipAssetData";
  if (v52[0])
  {
    if (v52[0])
    {
    }
  }

  *(this + 2) = v53;
  if ((atomic_load_explicit(&qword_1EE194CE0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE194CE0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE194C68;
      if (!qword_1EE194C68)
      {
        v8 = re::allocInfo_TimelineAssetData(v6);
        qword_1EE194C68 = v8;
        re::initInfo_TimelineAssetData(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "TimelineAssetData";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE18C568 = v10;
      v11 = re::introspectionAllocator(v10);
      v13 = re::introspect_BOOL(1, v12);
      v14 = (*(*v11 + 32))(v11, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "isAdditive";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x4800000001;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE18C570 = v14;
      v15 = re::introspectionAllocator(v14);
      v17 = re::introspect_AssetHandle(1, v16);
      v18 = (*(*v15 + 32))(v15, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "clipSource";
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x5000000002;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE18C578 = v18;
      v19 = re::introspectionAllocator(v18);
      v21 = re::IntrospectionInfo<re::Optional<double>>::get(1, v20);
      v22 = (*(*v19 + 32))(v19, 72, 8);
      *v22 = 1;
      *(v22 + 8) = "clipStart";
      *(v22 + 16) = v21;
      *(v22 + 24) = 0;
      *(v22 + 32) = 0x6800000003;
      *(v22 + 40) = 0;
      *(v22 + 48) = 0;
      *(v22 + 56) = 0;
      *(v22 + 64) = 0;
      qword_1EE18C580 = v22;
      v23 = re::introspectionAllocator(v22);
      v25 = re::IntrospectionInfo<re::Optional<double>>::get(1, v24);
      v26 = (*(*v23 + 32))(v23, 72, 8);
      *v26 = 1;
      *(v26 + 8) = "clipEnd";
      *(v26 + 16) = v25;
      *(v26 + 24) = 0;
      *(v26 + 32) = 0x7800000004;
      *(v26 + 40) = 0;
      *(v26 + 48) = 0;
      *(v26 + 56) = 0;
      *(v26 + 64) = 0;
      qword_1EE18C588 = v26;
      v27 = re::introspectionAllocator(v26);
      v29 = re::introspect_double(1, v28);
      v30 = (*(*v27 + 32))(v27, 72, 8);
      *v30 = 1;
      *(v30 + 8) = "clipOffset";
      *(v30 + 16) = v29;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0x8800000005;
      *(v30 + 40) = 0;
      *(v30 + 48) = 0;
      *(v30 + 56) = 0;
      *(v30 + 64) = 0;
      qword_1EE18C590 = v30;
      v31 = re::introspectionAllocator(v30);
      v33 = re::introspect_BOOL(1, v32);
      v34 = (*(*v31 + 32))(v31, 72, 8);
      *v34 = 1;
      *(v34 + 8) = "clipReversed";
      *(v34 + 16) = v33;
      *(v34 + 24) = 0;
      *(v34 + 32) = 0x9000000006;
      *(v34 + 40) = 0;
      *(v34 + 48) = 0;
      *(v34 + 56) = 0;
      *(v34 + 64) = 0;
      qword_1EE18C598 = v34;
      v35 = re::introspectionAllocator(v34);
      v37 = re::introspect_double(1, v36);
      v38 = (*(*v35 + 32))(v35, 72, 8);
      *v38 = 1;
      *(v38 + 8) = "delay";
      *(v38 + 16) = v37;
      *(v38 + 24) = 0;
      *(v38 + 32) = 0x9800000007;
      *(v38 + 40) = 0;
      *(v38 + 48) = 0;
      *(v38 + 56) = 0;
      *(v38 + 64) = 0;
      qword_1EE18C5A0 = v38;
      v39 = re::introspectionAllocator(v38);
      v41 = re::IntrospectionInfo<re::Optional<double>>::get(1, v40);
      v42 = (*(*v39 + 32))(v39, 72, 8);
      *v42 = 1;
      *(v42 + 8) = "duration";
      *(v42 + 16) = v41;
      *(v42 + 24) = 0;
      *(v42 + 32) = 0xA000000008;
      *(v42 + 40) = 0;
      *(v42 + 48) = 0;
      *(v42 + 56) = 0;
      *(v42 + 64) = 0;
      qword_1EE18C5A8 = v42;
      v43 = re::introspectionAllocator(v42);
      v45 = re::introspect_float(1, v44);
      v46 = (*(*v43 + 32))(v43, 72, 8);
      *v46 = 1;
      *(v46 + 8) = "speed";
      *(v46 + 16) = v45;
      *(v46 + 24) = 0;
      *(v46 + 32) = 0xB000000009;
      *(v46 + 40) = 0;
      *(v46 + 48) = 0;
      *(v46 + 56) = 0;
      *(v46 + 64) = 0;
      qword_1EE18C5B0 = v46;
      v47 = re::introspectionAllocator(v46);
      v49 = re::introspect_LoopBehavior(1, v48);
      v50 = (*(*v47 + 32))(v47, 72, 8);
      *v50 = 1;
      *(v50 + 8) = "loopBehavior";
      *(v50 + 16) = v49;
      *(v50 + 24) = 0;
      *(v50 + 32) = 0xB40000000ALL;
      *(v50 + 40) = 0;
      *(v50 + 48) = 0;
      *(v50 + 56) = 0;
      *(v50 + 64) = 0;
      qword_1EE18C5B8 = v50;
      __cxa_guard_release(&qword_1EE194CE0);
    }
  }

  *(this + 2) = 0xB800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 11;
  *(this + 8) = &qword_1EE18C568;
  *(this + 9) = re::internal::defaultConstruct<re::FloatAnimationClipAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::FloatAnimationClipAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::FloatAnimationClipAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::FloatAnimationClipAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v51 = v53;
}

uint64_t re::internal::defaultConstruct<re::FloatAnimationClipAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::TimelineAssetData::TimelineAssetData(a3, 3);
  *(result + 72) = 0;
  *(result + 120) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  *(result + 104) = 0;
  *(result + 176) = 1065353216;
  *(result + 180) = 0;
  *result = &unk_1F5CBE790;
  return result;
}

void re::internal::defaultDestruct<re::FloatAnimationClipAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CBE800;
  v4 = (a3 + 5);
  re::AssetHandle::~AssetHandle((a3 + 10));
  *a3 = &unk_1F5CC3608;
  re::DynamicString::deinit(v4);

  re::StringID::destroyString((a3 + 3));
}

uint64_t re::internal::defaultConstructV2<re::FloatAnimationClipAssetData>(uint64_t a1)
{
  result = re::TimelineAssetData::TimelineAssetData(a1, 3);
  *(result + 72) = 0;
  *(result + 120) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  *(result + 104) = 0;
  *(result + 176) = 1065353216;
  *(result + 180) = 0;
  *result = &unk_1F5CBE790;
  return result;
}

void re::internal::defaultDestructV2<re::FloatAnimationClipAssetData>(void *a1)
{
  *a1 = &unk_1F5CBE800;
  v2 = (a1 + 5);
  re::AssetHandle::~AssetHandle((a1 + 10));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);

  re::StringID::destroyString((a1 + 3));
}

void *re::allocInfo_DoubleAnimationClipAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194CF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194CF0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18CCF8, "DoubleAnimationClipAssetData");
    __cxa_guard_release(&qword_1EE194CF0);
  }

  return &unk_1EE18CCF8;
}

void re::initInfo_DoubleAnimationClipAssetData(re *this, re::IntrospectionBase *a2)
{
  v52[0] = 0x85C7595DE59F22EELL;
  v52[1] = "DoubleAnimationClipAssetData";
  if (v52[0])
  {
    if (v52[0])
    {
    }
  }

  *(this + 2) = v53;
  if ((atomic_load_explicit(&qword_1EE194CF8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE194CF8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE194C68;
      if (!qword_1EE194C68)
      {
        v8 = re::allocInfo_TimelineAssetData(v6);
        qword_1EE194C68 = v8;
        re::initInfo_TimelineAssetData(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "TimelineAssetData";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE18C5C0 = v10;
      v11 = re::introspectionAllocator(v10);
      v13 = re::introspect_BOOL(1, v12);
      v14 = (*(*v11 + 32))(v11, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "isAdditive";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x4800000001;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE18C5C8 = v14;
      v15 = re::introspectionAllocator(v14);
      v17 = re::introspect_AssetHandle(1, v16);
      v18 = (*(*v15 + 32))(v15, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "clipSource";
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x5000000002;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE18C5D0 = v18;
      v19 = re::introspectionAllocator(v18);
      v21 = re::IntrospectionInfo<re::Optional<double>>::get(1, v20);
      v22 = (*(*v19 + 32))(v19, 72, 8);
      *v22 = 1;
      *(v22 + 8) = "clipStart";
      *(v22 + 16) = v21;
      *(v22 + 24) = 0;
      *(v22 + 32) = 0x6800000003;
      *(v22 + 40) = 0;
      *(v22 + 48) = 0;
      *(v22 + 56) = 0;
      *(v22 + 64) = 0;
      qword_1EE18C5D8 = v22;
      v23 = re::introspectionAllocator(v22);
      v25 = re::IntrospectionInfo<re::Optional<double>>::get(1, v24);
      v26 = (*(*v23 + 32))(v23, 72, 8);
      *v26 = 1;
      *(v26 + 8) = "clipEnd";
      *(v26 + 16) = v25;
      *(v26 + 24) = 0;
      *(v26 + 32) = 0x7800000004;
      *(v26 + 40) = 0;
      *(v26 + 48) = 0;
      *(v26 + 56) = 0;
      *(v26 + 64) = 0;
      qword_1EE18C5E0 = v26;
      v27 = re::introspectionAllocator(v26);
      v29 = re::introspect_double(1, v28);
      v30 = (*(*v27 + 32))(v27, 72, 8);
      *v30 = 1;
      *(v30 + 8) = "clipOffset";
      *(v30 + 16) = v29;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0x8800000005;
      *(v30 + 40) = 0;
      *(v30 + 48) = 0;
      *(v30 + 56) = 0;
      *(v30 + 64) = 0;
      qword_1EE18C5E8 = v30;
      v31 = re::introspectionAllocator(v30);
      v33 = re::introspect_BOOL(1, v32);
      v34 = (*(*v31 + 32))(v31, 72, 8);
      *v34 = 1;
      *(v34 + 8) = "clipReversed";
      *(v34 + 16) = v33;
      *(v34 + 24) = 0;
      *(v34 + 32) = 0x9000000006;
      *(v34 + 40) = 0;
      *(v34 + 48) = 0;
      *(v34 + 56) = 0;
      *(v34 + 64) = 0;
      qword_1EE18C5F0 = v34;
      v35 = re::introspectionAllocator(v34);
      v37 = re::introspect_double(1, v36);
      v38 = (*(*v35 + 32))(v35, 72, 8);
      *v38 = 1;
      *(v38 + 8) = "delay";
      *(v38 + 16) = v37;
      *(v38 + 24) = 0;
      *(v38 + 32) = 0x9800000007;
      *(v38 + 40) = 0;
      *(v38 + 48) = 0;
      *(v38 + 56) = 0;
      *(v38 + 64) = 0;
      qword_1EE18C5F8 = v38;
      v39 = re::introspectionAllocator(v38);
      v41 = re::IntrospectionInfo<re::Optional<double>>::get(1, v40);
      v42 = (*(*v39 + 32))(v39, 72, 8);
      *v42 = 1;
      *(v42 + 8) = "duration";
      *(v42 + 16) = v41;
      *(v42 + 24) = 0;
      *(v42 + 32) = 0xA000000008;
      *(v42 + 40) = 0;
      *(v42 + 48) = 0;
      *(v42 + 56) = 0;
      *(v42 + 64) = 0;
      qword_1EE18C600 = v42;
      v43 = re::introspectionAllocator(v42);
      v45 = re::introspect_float(1, v44);
      v46 = (*(*v43 + 32))(v43, 72, 8);
      *v46 = 1;
      *(v46 + 8) = "speed";
      *(v46 + 16) = v45;
      *(v46 + 24) = 0;
      *(v46 + 32) = 0xB000000009;
      *(v46 + 40) = 0;
      *(v46 + 48) = 0;
      *(v46 + 56) = 0;
      *(v46 + 64) = 0;
      qword_1EE18C608 = v46;
      v47 = re::introspectionAllocator(v46);
      v49 = re::introspect_LoopBehavior(1, v48);
      v50 = (*(*v47 + 32))(v47, 72, 8);
      *v50 = 1;
      *(v50 + 8) = "loopBehavior";
      *(v50 + 16) = v49;
      *(v50 + 24) = 0;
      *(v50 + 32) = 0xB40000000ALL;
      *(v50 + 40) = 0;
      *(v50 + 48) = 0;
      *(v50 + 56) = 0;
      *(v50 + 64) = 0;
      qword_1EE18C610 = v50;
      __cxa_guard_release(&qword_1EE194CF8);
    }
  }

  *(this + 2) = 0xB800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 11;
  *(this + 8) = &qword_1EE18C5C0;
  *(this + 9) = re::internal::defaultConstruct<re::DoubleAnimationClipAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::DoubleAnimationClipAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::DoubleAnimationClipAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::DoubleAnimationClipAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v51 = v53;
}

uint64_t re::internal::defaultConstruct<re::DoubleAnimationClipAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::TimelineAssetData::TimelineAssetData(a3, 4);
  *(result + 72) = 0;
  *(result + 120) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  *(result + 104) = 0;
  *(result + 176) = 1065353216;
  *(result + 180) = 0;
  *result = &unk_1F5CBE880;
  return result;
}

void re::internal::defaultDestruct<re::DoubleAnimationClipAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CBE908;
  v4 = (a3 + 5);
  re::AssetHandle::~AssetHandle((a3 + 10));
  *a3 = &unk_1F5CC3608;
  re::DynamicString::deinit(v4);

  re::StringID::destroyString((a3 + 3));
}

uint64_t re::internal::defaultConstructV2<re::DoubleAnimationClipAssetData>(uint64_t a1)
{
  result = re::TimelineAssetData::TimelineAssetData(a1, 4);
  *(result + 72) = 0;
  *(result + 120) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  *(result + 104) = 0;
  *(result + 176) = 1065353216;
  *(result + 180) = 0;
  *result = &unk_1F5CBE880;
  return result;
}

void re::internal::defaultDestructV2<re::DoubleAnimationClipAssetData>(void *a1)
{
  *a1 = &unk_1F5CBE908;
  v2 = (a1 + 5);
  re::AssetHandle::~AssetHandle((a1 + 10));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);

  re::StringID::destroyString((a1 + 3));
}

void *re::allocInfo_Vector2FAnimationClipAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194D08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194D08))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18CD88, "Vector2FAnimationClipAssetData");
    __cxa_guard_release(&qword_1EE194D08);
  }

  return &unk_1EE18CD88;
}

void re::initInfo_Vector2FAnimationClipAssetData(re *this, re::IntrospectionBase *a2)
{
  v52[0] = 0xF3DCDF9C9990FFALL;
  v52[1] = "Vector2FAnimationClipAssetData";
  if (v52[0])
  {
    if (v52[0])
    {
    }
  }

  *(this + 2) = v53;
  if ((atomic_load_explicit(&qword_1EE194D10, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE194D10);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE194C68;
      if (!qword_1EE194C68)
      {
        v8 = re::allocInfo_TimelineAssetData(v6);
        qword_1EE194C68 = v8;
        re::initInfo_TimelineAssetData(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "TimelineAssetData";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE18C618 = v10;
      v11 = re::introspectionAllocator(v10);
      v13 = re::introspect_BOOL(1, v12);
      v14 = (*(*v11 + 32))(v11, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "isAdditive";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x4800000001;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE18C620 = v14;
      v15 = re::introspectionAllocator(v14);
      v17 = re::introspect_AssetHandle(1, v16);
      v18 = (*(*v15 + 32))(v15, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "clipSource";
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x5000000002;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE18C628 = v18;
      v19 = re::introspectionAllocator(v18);
      v21 = re::IntrospectionInfo<re::Optional<double>>::get(1, v20);
      v22 = (*(*v19 + 32))(v19, 72, 8);
      *v22 = 1;
      *(v22 + 8) = "clipStart";
      *(v22 + 16) = v21;
      *(v22 + 24) = 0;
      *(v22 + 32) = 0x6800000003;
      *(v22 + 40) = 0;
      *(v22 + 48) = 0;
      *(v22 + 56) = 0;
      *(v22 + 64) = 0;
      qword_1EE18C630 = v22;
      v23 = re::introspectionAllocator(v22);
      v25 = re::IntrospectionInfo<re::Optional<double>>::get(1, v24);
      v26 = (*(*v23 + 32))(v23, 72, 8);
      *v26 = 1;
      *(v26 + 8) = "clipEnd";
      *(v26 + 16) = v25;
      *(v26 + 24) = 0;
      *(v26 + 32) = 0x7800000004;
      *(v26 + 40) = 0;
      *(v26 + 48) = 0;
      *(v26 + 56) = 0;
      *(v26 + 64) = 0;
      qword_1EE18C638 = v26;
      v27 = re::introspectionAllocator(v26);
      v29 = re::introspect_double(1, v28);
      v30 = (*(*v27 + 32))(v27, 72, 8);
      *v30 = 1;
      *(v30 + 8) = "clipOffset";
      *(v30 + 16) = v29;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0x8800000005;
      *(v30 + 40) = 0;
      *(v30 + 48) = 0;
      *(v30 + 56) = 0;
      *(v30 + 64) = 0;
      qword_1EE18C640 = v30;
      v31 = re::introspectionAllocator(v30);
      v33 = re::introspect_BOOL(1, v32);
      v34 = (*(*v31 + 32))(v31, 72, 8);
      *v34 = 1;
      *(v34 + 8) = "clipReversed";
      *(v34 + 16) = v33;
      *(v34 + 24) = 0;
      *(v34 + 32) = 0x9000000006;
      *(v34 + 40) = 0;
      *(v34 + 48) = 0;
      *(v34 + 56) = 0;
      *(v34 + 64) = 0;
      qword_1EE18C648 = v34;
      v35 = re::introspectionAllocator(v34);
      v37 = re::introspect_double(1, v36);
      v38 = (*(*v35 + 32))(v35, 72, 8);
      *v38 = 1;
      *(v38 + 8) = "delay";
      *(v38 + 16) = v37;
      *(v38 + 24) = 0;
      *(v38 + 32) = 0x9800000007;
      *(v38 + 40) = 0;
      *(v38 + 48) = 0;
      *(v38 + 56) = 0;
      *(v38 + 64) = 0;
      qword_1EE18C650 = v38;
      v39 = re::introspectionAllocator(v38);
      v41 = re::IntrospectionInfo<re::Optional<double>>::get(1, v40);
      v42 = (*(*v39 + 32))(v39, 72, 8);
      *v42 = 1;
      *(v42 + 8) = "duration";
      *(v42 + 16) = v41;
      *(v42 + 24) = 0;
      *(v42 + 32) = 0xA000000008;
      *(v42 + 40) = 0;
      *(v42 + 48) = 0;
      *(v42 + 56) = 0;
      *(v42 + 64) = 0;
      qword_1EE18C658 = v42;
      v43 = re::introspectionAllocator(v42);
      v45 = re::introspect_float(1, v44);
      v46 = (*(*v43 + 32))(v43, 72, 8);
      *v46 = 1;
      *(v46 + 8) = "speed";
      *(v46 + 16) = v45;
      *(v46 + 24) = 0;
      *(v46 + 32) = 0xB000000009;
      *(v46 + 40) = 0;
      *(v46 + 48) = 0;
      *(v46 + 56) = 0;
      *(v46 + 64) = 0;
      qword_1EE18C660 = v46;
      v47 = re::introspectionAllocator(v46);
      v49 = re::introspect_LoopBehavior(1, v48);
      v50 = (*(*v47 + 32))(v47, 72, 8);
      *v50 = 1;
      *(v50 + 8) = "loopBehavior";
      *(v50 + 16) = v49;
      *(v50 + 24) = 0;
      *(v50 + 32) = 0xB40000000ALL;
      *(v50 + 40) = 0;
      *(v50 + 48) = 0;
      *(v50 + 56) = 0;
      *(v50 + 64) = 0;
      qword_1EE18C668 = v50;
      __cxa_guard_release(&qword_1EE194D10);
    }
  }

  *(this + 2) = 0xB800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 11;
  *(this + 8) = &qword_1EE18C618;
  *(this + 9) = re::internal::defaultConstruct<re::Vector2FAnimationClipAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Vector2FAnimationClipAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::Vector2FAnimationClipAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::Vector2FAnimationClipAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v51 = v53;
}

uint64_t re::internal::defaultConstruct<re::Vector2FAnimationClipAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::TimelineAssetData::TimelineAssetData(a3, 5);
  *(result + 72) = 0;
  *(result + 120) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  *(result + 104) = 0;
  *(result + 176) = 1065353216;
  *(result + 180) = 0;
  *result = &unk_1F5CBE988;
  return result;
}

void re::internal::defaultDestruct<re::Vector2FAnimationClipAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CBEA10;
  v4 = (a3 + 5);
  re::AssetHandle::~AssetHandle((a3 + 10));
  *a3 = &unk_1F5CC3608;
  re::DynamicString::deinit(v4);

  re::StringID::destroyString((a3 + 3));
}

uint64_t re::internal::defaultConstructV2<re::Vector2FAnimationClipAssetData>(uint64_t a1)
{
  result = re::TimelineAssetData::TimelineAssetData(a1, 5);
  *(result + 72) = 0;
  *(result + 120) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  *(result + 104) = 0;
  *(result + 176) = 1065353216;
  *(result + 180) = 0;
  *result = &unk_1F5CBE988;
  return result;
}

void re::internal::defaultDestructV2<re::Vector2FAnimationClipAssetData>(void *a1)
{
  *a1 = &unk_1F5CBEA10;
  v2 = (a1 + 5);
  re::AssetHandle::~AssetHandle((a1 + 10));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);

  re::StringID::destroyString((a1 + 3));
}

void *re::allocInfo_Vector3FAnimationClipAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194D20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194D20))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18CE18, "Vector3FAnimationClipAssetData");
    __cxa_guard_release(&qword_1EE194D20);
  }

  return &unk_1EE18CE18;
}

void re::initInfo_Vector3FAnimationClipAssetData(re *this, re::IntrospectionBase *a2)
{
  v52[0] = 0x447BD129C19C2DB8;
  v52[1] = "Vector3FAnimationClipAssetData";
  if (v52[0])
  {
    if (v52[0])
    {
    }
  }

  *(this + 2) = v53;
  if ((atomic_load_explicit(&qword_1EE194D28, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE194D28);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE194C68;
      if (!qword_1EE194C68)
      {
        v8 = re::allocInfo_TimelineAssetData(v6);
        qword_1EE194C68 = v8;
        re::initInfo_TimelineAssetData(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "TimelineAssetData";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE18C670 = v10;
      v11 = re::introspectionAllocator(v10);
      v13 = re::introspect_BOOL(1, v12);
      v14 = (*(*v11 + 32))(v11, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "isAdditive";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x4800000001;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE18C678 = v14;
      v15 = re::introspectionAllocator(v14);
      v17 = re::introspect_AssetHandle(1, v16);
      v18 = (*(*v15 + 32))(v15, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "clipSource";
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x5000000002;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE18C680 = v18;
      v19 = re::introspectionAllocator(v18);
      v21 = re::IntrospectionInfo<re::Optional<double>>::get(1, v20);
      v22 = (*(*v19 + 32))(v19, 72, 8);
      *v22 = 1;
      *(v22 + 8) = "clipStart";
      *(v22 + 16) = v21;
      *(v22 + 24) = 0;
      *(v22 + 32) = 0x6800000003;
      *(v22 + 40) = 0;
      *(v22 + 48) = 0;
      *(v22 + 56) = 0;
      *(v22 + 64) = 0;
      qword_1EE18C688 = v22;
      v23 = re::introspectionAllocator(v22);
      v25 = re::IntrospectionInfo<re::Optional<double>>::get(1, v24);
      v26 = (*(*v23 + 32))(v23, 72, 8);
      *v26 = 1;
      *(v26 + 8) = "clipEnd";
      *(v26 + 16) = v25;
      *(v26 + 24) = 0;
      *(v26 + 32) = 0x7800000004;
      *(v26 + 40) = 0;
      *(v26 + 48) = 0;
      *(v26 + 56) = 0;
      *(v26 + 64) = 0;
      qword_1EE18C690 = v26;
      v27 = re::introspectionAllocator(v26);
      v29 = re::introspect_double(1, v28);
      v30 = (*(*v27 + 32))(v27, 72, 8);
      *v30 = 1;
      *(v30 + 8) = "clipOffset";
      *(v30 + 16) = v29;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0x8800000005;
      *(v30 + 40) = 0;
      *(v30 + 48) = 0;
      *(v30 + 56) = 0;
      *(v30 + 64) = 0;
      qword_1EE18C698 = v30;
      v31 = re::introspectionAllocator(v30);
      v33 = re::introspect_BOOL(1, v32);
      v34 = (*(*v31 + 32))(v31, 72, 8);
      *v34 = 1;
      *(v34 + 8) = "clipReversed";
      *(v34 + 16) = v33;
      *(v34 + 24) = 0;
      *(v34 + 32) = 0x9000000006;
      *(v34 + 40) = 0;
      *(v34 + 48) = 0;
      *(v34 + 56) = 0;
      *(v34 + 64) = 0;
      qword_1EE18C6A0 = v34;
      v35 = re::introspectionAllocator(v34);
      v37 = re::introspect_double(1, v36);
      v38 = (*(*v35 + 32))(v35, 72, 8);
      *v38 = 1;
      *(v38 + 8) = "delay";
      *(v38 + 16) = v37;
      *(v38 + 24) = 0;
      *(v38 + 32) = 0x9800000007;
      *(v38 + 40) = 0;
      *(v38 + 48) = 0;
      *(v38 + 56) = 0;
      *(v38 + 64) = 0;
      qword_1EE18C6A8 = v38;
      v39 = re::introspectionAllocator(v38);
      v41 = re::IntrospectionInfo<re::Optional<double>>::get(1, v40);
      v42 = (*(*v39 + 32))(v39, 72, 8);
      *v42 = 1;
      *(v42 + 8) = "duration";
      *(v42 + 16) = v41;
      *(v42 + 24) = 0;
      *(v42 + 32) = 0xA000000008;
      *(v42 + 40) = 0;
      *(v42 + 48) = 0;
      *(v42 + 56) = 0;
      *(v42 + 64) = 0;
      qword_1EE18C6B0 = v42;
      v43 = re::introspectionAllocator(v42);
      v45 = re::introspect_float(1, v44);
      v46 = (*(*v43 + 32))(v43, 72, 8);
      *v46 = 1;
      *(v46 + 8) = "speed";
      *(v46 + 16) = v45;
      *(v46 + 24) = 0;
      *(v46 + 32) = 0xB000000009;
      *(v46 + 40) = 0;
      *(v46 + 48) = 0;
      *(v46 + 56) = 0;
      *(v46 + 64) = 0;
      qword_1EE18C6B8 = v46;
      v47 = re::introspectionAllocator(v46);
      v49 = re::introspect_LoopBehavior(1, v48);
      v50 = (*(*v47 + 32))(v47, 72, 8);
      *v50 = 1;
      *(v50 + 8) = "loopBehavior";
      *(v50 + 16) = v49;
      *(v50 + 24) = 0;
      *(v50 + 32) = 0xB40000000ALL;
      *(v50 + 40) = 0;
      *(v50 + 48) = 0;
      *(v50 + 56) = 0;
      *(v50 + 64) = 0;
      qword_1EE18C6C0 = v50;
      __cxa_guard_release(&qword_1EE194D28);
    }
  }

  *(this + 2) = 0xB800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 11;
  *(this + 8) = &qword_1EE18C670;
  *(this + 9) = re::internal::defaultConstruct<re::Vector3FAnimationClipAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Vector3FAnimationClipAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::Vector3FAnimationClipAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::Vector3FAnimationClipAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v51 = v53;
}

uint64_t re::internal::defaultConstruct<re::Vector3FAnimationClipAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::TimelineAssetData::TimelineAssetData(a3, 6);
  *(result + 72) = 0;
  *(result + 120) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  *(result + 104) = 0;
  *(result + 176) = 1065353216;
  *(result + 180) = 0;
  *result = &unk_1F5CBEA90;
  return result;
}

void re::internal::defaultDestruct<re::Vector3FAnimationClipAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CBEB18;
  v4 = (a3 + 5);
  re::AssetHandle::~AssetHandle((a3 + 10));
  *a3 = &unk_1F5CC3608;
  re::DynamicString::deinit(v4);

  re::StringID::destroyString((a3 + 3));
}

uint64_t re::internal::defaultConstructV2<re::Vector3FAnimationClipAssetData>(uint64_t a1)
{
  result = re::TimelineAssetData::TimelineAssetData(a1, 6);
  *(result + 72) = 0;
  *(result + 120) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  *(result + 104) = 0;
  *(result + 176) = 1065353216;
  *(result + 180) = 0;
  *result = &unk_1F5CBEA90;
  return result;
}

void re::internal::defaultDestructV2<re::Vector3FAnimationClipAssetData>(void *a1)
{
  *a1 = &unk_1F5CBEB18;
  v2 = (a1 + 5);
  re::AssetHandle::~AssetHandle((a1 + 10));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);

  re::StringID::destroyString((a1 + 3));
}

void *re::allocInfo_Vector4FAnimationClipAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194D38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194D38))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18CEA8, "Vector4FAnimationClipAssetData");
    __cxa_guard_release(&qword_1EE194D38);
  }

  return &unk_1EE18CEA8;
}

void re::initInfo_Vector4FAnimationClipAssetData(re *this, re::IntrospectionBase *a2)
{
  v52[0] = 0x79B9D459B99F4B76;
  v52[1] = "Vector4FAnimationClipAssetData";
  if (v52[0])
  {
    if (v52[0])
    {
    }
  }

  *(this + 2) = v53;
  if ((atomic_load_explicit(&qword_1EE194D40, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE194D40);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE194C68;
      if (!qword_1EE194C68)
      {
        v8 = re::allocInfo_TimelineAssetData(v6);
        qword_1EE194C68 = v8;
        re::initInfo_TimelineAssetData(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "TimelineAssetData";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE18C6C8 = v10;
      v11 = re::introspectionAllocator(v10);
      v13 = re::introspect_BOOL(1, v12);
      v14 = (*(*v11 + 32))(v11, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "isAdditive";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x4800000001;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE18C6D0 = v14;
      v15 = re::introspectionAllocator(v14);
      v17 = re::introspect_AssetHandle(1, v16);
      v18 = (*(*v15 + 32))(v15, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "clipSource";
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x5000000002;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE18C6D8 = v18;
      v19 = re::introspectionAllocator(v18);
      v21 = re::IntrospectionInfo<re::Optional<double>>::get(1, v20);
      v22 = (*(*v19 + 32))(v19, 72, 8);
      *v22 = 1;
      *(v22 + 8) = "clipStart";
      *(v22 + 16) = v21;
      *(v22 + 24) = 0;
      *(v22 + 32) = 0x6800000003;
      *(v22 + 40) = 0;
      *(v22 + 48) = 0;
      *(v22 + 56) = 0;
      *(v22 + 64) = 0;
      qword_1EE18C6E0 = v22;
      v23 = re::introspectionAllocator(v22);
      v25 = re::IntrospectionInfo<re::Optional<double>>::get(1, v24);
      v26 = (*(*v23 + 32))(v23, 72, 8);
      *v26 = 1;
      *(v26 + 8) = "clipEnd";
      *(v26 + 16) = v25;
      *(v26 + 24) = 0;
      *(v26 + 32) = 0x7800000004;
      *(v26 + 40) = 0;
      *(v26 + 48) = 0;
      *(v26 + 56) = 0;
      *(v26 + 64) = 0;
      qword_1EE18C6E8 = v26;
      v27 = re::introspectionAllocator(v26);
      v29 = re::introspect_double(1, v28);
      v30 = (*(*v27 + 32))(v27, 72, 8);
      *v30 = 1;
      *(v30 + 8) = "clipOffset";
      *(v30 + 16) = v29;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0x8800000005;
      *(v30 + 40) = 0;
      *(v30 + 48) = 0;
      *(v30 + 56) = 0;
      *(v30 + 64) = 0;
      qword_1EE18C6F0 = v30;
      v31 = re::introspectionAllocator(v30);
      v33 = re::introspect_BOOL(1, v32);
      v34 = (*(*v31 + 32))(v31, 72, 8);
      *v34 = 1;
      *(v34 + 8) = "clipReversed";
      *(v34 + 16) = v33;
      *(v34 + 24) = 0;
      *(v34 + 32) = 0x9000000006;
      *(v34 + 40) = 0;
      *(v34 + 48) = 0;
      *(v34 + 56) = 0;
      *(v34 + 64) = 0;
      qword_1EE18C6F8 = v34;
      v35 = re::introspectionAllocator(v34);
      v37 = re::introspect_double(1, v36);
      v38 = (*(*v35 + 32))(v35, 72, 8);
      *v38 = 1;
      *(v38 + 8) = "delay";
      *(v38 + 16) = v37;
      *(v38 + 24) = 0;
      *(v38 + 32) = 0x9800000007;
      *(v38 + 40) = 0;
      *(v38 + 48) = 0;
      *(v38 + 56) = 0;
      *(v38 + 64) = 0;
      qword_1EE18C700 = v38;
      v39 = re::introspectionAllocator(v38);
      v41 = re::IntrospectionInfo<re::Optional<double>>::get(1, v40);
      v42 = (*(*v39 + 32))(v39, 72, 8);
      *v42 = 1;
      *(v42 + 8) = "duration";
      *(v42 + 16) = v41;
      *(v42 + 24) = 0;
      *(v42 + 32) = 0xA000000008;
      *(v42 + 40) = 0;
      *(v42 + 48) = 0;
      *(v42 + 56) = 0;
      *(v42 + 64) = 0;
      qword_1EE18C708 = v42;
      v43 = re::introspectionAllocator(v42);
      v45 = re::introspect_float(1, v44);
      v46 = (*(*v43 + 32))(v43, 72, 8);
      *v46 = 1;
      *(v46 + 8) = "speed";
      *(v46 + 16) = v45;
      *(v46 + 24) = 0;
      *(v46 + 32) = 0xB000000009;
      *(v46 + 40) = 0;
      *(v46 + 48) = 0;
      *(v46 + 56) = 0;
      *(v46 + 64) = 0;
      qword_1EE18C710 = v46;
      v47 = re::introspectionAllocator(v46);
      v49 = re::introspect_LoopBehavior(1, v48);
      v50 = (*(*v47 + 32))(v47, 72, 8);
      *v50 = 1;
      *(v50 + 8) = "loopBehavior";
      *(v50 + 16) = v49;
      *(v50 + 24) = 0;
      *(v50 + 32) = 0xB40000000ALL;
      *(v50 + 40) = 0;
      *(v50 + 48) = 0;
      *(v50 + 56) = 0;
      *(v50 + 64) = 0;
      qword_1EE18C718 = v50;
      __cxa_guard_release(&qword_1EE194D40);
    }
  }

  *(this + 2) = 0xB800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 11;
  *(this + 8) = &qword_1EE18C6C8;
  *(this + 9) = re::internal::defaultConstruct<re::Vector4FAnimationClipAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Vector4FAnimationClipAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::Vector4FAnimationClipAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::Vector4FAnimationClipAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v51 = v53;
}

uint64_t re::internal::defaultConstruct<re::Vector4FAnimationClipAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::TimelineAssetData::TimelineAssetData(a3, 7);
  *(result + 72) = 0;
  *(result + 120) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  *(result + 104) = 0;
  *(result + 176) = 1065353216;
  *(result + 180) = 0;
  *result = &unk_1F5CBEB98;
  return result;
}

void re::internal::defaultDestruct<re::Vector4FAnimationClipAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CBEC20;
  v4 = (a3 + 5);
  re::AssetHandle::~AssetHandle((a3 + 10));
  *a3 = &unk_1F5CC3608;
  re::DynamicString::deinit(v4);

  re::StringID::destroyString((a3 + 3));
}

uint64_t re::internal::defaultConstructV2<re::Vector4FAnimationClipAssetData>(uint64_t a1)
{
  result = re::TimelineAssetData::TimelineAssetData(a1, 7);
  *(result + 72) = 0;
  *(result + 120) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  *(result + 104) = 0;
  *(result + 176) = 1065353216;
  *(result + 180) = 0;
  *result = &unk_1F5CBEB98;
  return result;
}

void re::internal::defaultDestructV2<re::Vector4FAnimationClipAssetData>(void *a1)
{
  *a1 = &unk_1F5CBEC20;
  v2 = (a1 + 5);
  re::AssetHandle::~AssetHandle((a1 + 10));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);

  re::StringID::destroyString((a1 + 3));
}

void *re::allocInfo_QuaternionFAnimationClipAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194D50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194D50))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18CF38, "QuaternionFAnimationClipAssetData");
    __cxa_guard_release(&qword_1EE194D50);
  }

  return &unk_1EE18CF38;
}

void re::initInfo_QuaternionFAnimationClipAssetData(re *this, re::IntrospectionBase *a2)
{
  v52[0] = 0xAA4CD8A06333BE1CLL;
  v52[1] = "QuaternionFAnimationClipAssetData";
  if (v52[0])
  {
    if (v52[0])
    {
    }
  }

  *(this + 2) = v53;
  if ((atomic_load_explicit(&qword_1EE194D58, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE194D58);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE194C68;
      if (!qword_1EE194C68)
      {
        v8 = re::allocInfo_TimelineAssetData(v6);
        qword_1EE194C68 = v8;
        re::initInfo_TimelineAssetData(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "TimelineAssetData";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE18C720 = v10;
      v11 = re::introspectionAllocator(v10);
      v13 = re::introspect_BOOL(1, v12);
      v14 = (*(*v11 + 32))(v11, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "isAdditive";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x4800000001;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE18C728 = v14;
      v15 = re::introspectionAllocator(v14);
      v17 = re::introspect_AssetHandle(1, v16);
      v18 = (*(*v15 + 32))(v15, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "clipSource";
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x5000000002;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE18C730 = v18;
      v19 = re::introspectionAllocator(v18);
      v21 = re::IntrospectionInfo<re::Optional<double>>::get(1, v20);
      v22 = (*(*v19 + 32))(v19, 72, 8);
      *v22 = 1;
      *(v22 + 8) = "clipStart";
      *(v22 + 16) = v21;
      *(v22 + 24) = 0;
      *(v22 + 32) = 0x6800000003;
      *(v22 + 40) = 0;
      *(v22 + 48) = 0;
      *(v22 + 56) = 0;
      *(v22 + 64) = 0;
      qword_1EE18C738 = v22;
      v23 = re::introspectionAllocator(v22);
      v25 = re::IntrospectionInfo<re::Optional<double>>::get(1, v24);
      v26 = (*(*v23 + 32))(v23, 72, 8);
      *v26 = 1;
      *(v26 + 8) = "clipEnd";
      *(v26 + 16) = v25;
      *(v26 + 24) = 0;
      *(v26 + 32) = 0x7800000004;
      *(v26 + 40) = 0;
      *(v26 + 48) = 0;
      *(v26 + 56) = 0;
      *(v26 + 64) = 0;
      qword_1EE18C740 = v26;
      v27 = re::introspectionAllocator(v26);
      v29 = re::introspect_double(1, v28);
      v30 = (*(*v27 + 32))(v27, 72, 8);
      *v30 = 1;
      *(v30 + 8) = "clipOffset";
      *(v30 + 16) = v29;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0x8800000005;
      *(v30 + 40) = 0;
      *(v30 + 48) = 0;
      *(v30 + 56) = 0;
      *(v30 + 64) = 0;
      qword_1EE18C748 = v30;
      v31 = re::introspectionAllocator(v30);
      v33 = re::introspect_BOOL(1, v32);
      v34 = (*(*v31 + 32))(v31, 72, 8);
      *v34 = 1;
      *(v34 + 8) = "clipReversed";
      *(v34 + 16) = v33;
      *(v34 + 24) = 0;
      *(v34 + 32) = 0x9000000006;
      *(v34 + 40) = 0;
      *(v34 + 48) = 0;
      *(v34 + 56) = 0;
      *(v34 + 64) = 0;
      qword_1EE18C750 = v34;
      v35 = re::introspectionAllocator(v34);
      v37 = re::introspect_double(1, v36);
      v38 = (*(*v35 + 32))(v35, 72, 8);
      *v38 = 1;
      *(v38 + 8) = "delay";
      *(v38 + 16) = v37;
      *(v38 + 24) = 0;
      *(v38 + 32) = 0x9800000007;
      *(v38 + 40) = 0;
      *(v38 + 48) = 0;
      *(v38 + 56) = 0;
      *(v38 + 64) = 0;
      qword_1EE18C758 = v38;
      v39 = re::introspectionAllocator(v38);
      v41 = re::IntrospectionInfo<re::Optional<double>>::get(1, v40);
      v42 = (*(*v39 + 32))(v39, 72, 8);
      *v42 = 1;
      *(v42 + 8) = "duration";
      *(v42 + 16) = v41;
      *(v42 + 24) = 0;
      *(v42 + 32) = 0xA000000008;
      *(v42 + 40) = 0;
      *(v42 + 48) = 0;
      *(v42 + 56) = 0;
      *(v42 + 64) = 0;
      qword_1EE18C760 = v42;
      v43 = re::introspectionAllocator(v42);
      v45 = re::introspect_float(1, v44);
      v46 = (*(*v43 + 32))(v43, 72, 8);
      *v46 = 1;
      *(v46 + 8) = "speed";
      *(v46 + 16) = v45;
      *(v46 + 24) = 0;
      *(v46 + 32) = 0xB000000009;
      *(v46 + 40) = 0;
      *(v46 + 48) = 0;
      *(v46 + 56) = 0;
      *(v46 + 64) = 0;
      qword_1EE18C768 = v46;
      v47 = re::introspectionAllocator(v46);
      v49 = re::introspect_LoopBehavior(1, v48);
      v50 = (*(*v47 + 32))(v47, 72, 8);
      *v50 = 1;
      *(v50 + 8) = "loopBehavior";
      *(v50 + 16) = v49;
      *(v50 + 24) = 0;
      *(v50 + 32) = 0xB40000000ALL;
      *(v50 + 40) = 0;
      *(v50 + 48) = 0;
      *(v50 + 56) = 0;
      *(v50 + 64) = 0;
      qword_1EE18C770 = v50;
      __cxa_guard_release(&qword_1EE194D58);
    }
  }

  *(this + 2) = 0xB800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 11;
  *(this + 8) = &qword_1EE18C720;
  *(this + 9) = re::internal::defaultConstruct<re::QuaternionFAnimationClipAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::QuaternionFAnimationClipAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::QuaternionFAnimationClipAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::QuaternionFAnimationClipAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v51 = v53;
}

uint64_t re::internal::defaultConstruct<re::QuaternionFAnimationClipAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::TimelineAssetData::TimelineAssetData(a3, 8);
  *(result + 72) = 0;
  *(result + 120) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  *(result + 104) = 0;
  *(result + 176) = 1065353216;
  *(result + 180) = 0;
  *result = &unk_1F5CBECA0;
  return result;
}

void re::internal::defaultDestruct<re::QuaternionFAnimationClipAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CBED28;
  v4 = (a3 + 5);
  re::AssetHandle::~AssetHandle((a3 + 10));
  *a3 = &unk_1F5CC3608;
  re::DynamicString::deinit(v4);

  re::StringID::destroyString((a3 + 3));
}