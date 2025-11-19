double re::makeMeshAssetDataFromGeomScene@<D0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  memset(v7, 0, sizeof(v7));
  v8 = 0u;
  memset(v9, 0, sizeof(v9));
  DWORD1(v8) = 0x7FFFFFFF;
  v10 = 0;
  v11 = 0x7FFFFFFFLL;
  v6[0] = *a2;
  *(v6 + 7) = *(a2 + 7);
  re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(v7, (a2 + 2));
  re::makeMeshAssetDataFromGeomScene(a1, v6, a3);
  re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
  return re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v7);
}

void *re::createMeshCollectionFromMeshAsset@<X0>(re *this@<X0>, const re::mtl::Device *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2;
  v115 = *MEMORY[0x1E69E9840];
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  v7 = *(a2 + 2);
  v72 = re::globalAllocators(this)[2];
  *a3 = v72;
  v69 = v7;
  re::DynamicArray<re::MeshModel>::setCapacity(a3, v7);
  v66 = a3;
  ++*(a3 + 24);
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v8 = *(v5 + 12);
  if (v8)
  {
    re::FixedArray<re::BufferSlice>::init<>(&v75, v72, *(v5 + 12));
    v9 = 0;
    v10 = 0;
    v11 = 32;
    do
    {
      v12 = *(v5 + 12);
      if (v12 <= v10)
      {
        goto LABEL_95;
      }

      v13 = [*this newBufferWithBytes:*(*(v5 + 14) + v9 + 104) length:*(*(v5 + 14) + v9 + 96) << 6 options:0];
      *&v92[0] = v13;
      DWORD2(v92[1]) = 0;
      LODWORD(v92[2]) = 0;
      DWORD1(v92[2]) = [v13 length];
      v4 = v76;
      if (v76 <= v10)
      {
LABEL_96:
        *v90 = 0;
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v79 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v112[0]) = 136315906;
        *(v112 + 4) = "operator[]";
        WORD6(v112[0]) = 1024;
        *(v112 + 14) = 468;
        WORD1(v112[1]) = 2048;
        *(&v112[1] + 4) = v10;
        WORD6(v112[1]) = 2048;
        *(&v112[1] + 14) = v4;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_97:
        *&v112[0] = 0;
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v79 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v92[0]) = 136315906;
        *(v92 + 4) = "operator[]";
        WORD6(v92[0]) = 1024;
        *(v92 + 14) = 797;
        WORD1(v92[1]) = 2048;
        *(&v92[1] + 4) = v11;
        WORD6(v92[1]) = 2048;
        *(&v92[1] + 14) = v10;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_98:
        re::internal::assertLog(4, v57, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
        _os_crash();
        __break(1u);
      }

      v4 = (v77 + v11);
      std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v77 + v11 - 32, v92);
      *v4 = *&v92[2];
      if (DWORD2(v92[1]) != -1)
      {
        (off_1F5D0BCB8[DWORD2(v92[1])])(&v79, v92);
      }

      DWORD2(v92[1]) = -1;
      if (v13)
      {
      }

      ++v10;
      v11 += 40;
      v9 += 112;
    }

    while (v8 != v10);
  }

  v14 = this;
  if (v69)
  {
    v11 = 0;
    v15 = &v79;
    v16.i64[0] = 0x7F0000007FLL;
    v16.i64[1] = 0x7F0000007FLL;
    v68 = vnegq_f32(v16);
    v67 = v5;
    while (1)
    {
      v10 = *(v5 + 2);
      if (v10 <= v11)
      {
        goto LABEL_97;
      }

      v17 = 0;
      v18 = *(v5 + 4);
      *&v79 = 0;
      *(&v79 + 1) = &str_67;
      *&v19 = 0x7F0000007FLL;
      *(&v19 + 1) = 0x7F0000007FLL;
      v80 = v68;
      v81 = v19;
      *&v83 = 0;
      v82 = 0uLL;
      v84 = v68;
      v85 = v19;
      v87 = 0;
      v88 = 0;
      v86 = 0;
      do
      {
        v20 = &v79 + v17;
        *(v20 + 18) = 0;
        *(v20 + 22) = 0;
        v17 += 40;
      }

      while (v17 != 720);
      v70 = v11;
      v12 = v18 + (v11 << 9);
      v21 = re::StringID::operator=(&v79, v12);
      v22 = *(v12 + 208);
      v73 = v22;
      v4 = *(v12 + 128);
      if (v4)
      {
        break;
      }

LABEL_20:
      if (*(v12 + 168) && v76)
      {
        *&v92[2] = 0;
        *&v94 = 0;
        v93 = 0uLL;
        DWORD2(v94) = 0;
        v95 = 0;
        v96 = 0;
        DWORD2(v92[2]) = 1;
        v97 = 1;
        v99 = 0;
        v100 = 0;
        v98 = 0;
        v101 = 0;
        *&v92[0] = v72;
        *(&v92[0] + 1) = v77;
        v92[1] = v76;
        re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::init(&v92[1] + 8, v72, 1uLL);
        re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::init(&v95, v72, 1uLL);
        if (v73 && *(v12 + 168))
        {
          v26 = 0;
          v27 = 1;
          do
          {
            v28 = (*(v12 + 184) + v26);
            v11 = *v28;
            v30 = v28[2];
            v29 = v28[3];
            v32 = v28[5];
            v31 = v28[6];
            v33 = v28[9];
            v74 = v28[8];
            v34 = re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::addUninitialized(&v92[1] + 8);
            *v34 = v11;
            *(v34 + 8) = v29;
            *(v34 + 16) = v30;
            *(v34 + 24) = v31;
            *(v34 + 32) = v32;
            *(v34 + 40) = v33;
            *(v34 + 48) = v74;
            if (v27 >= v73)
            {
              break;
            }

            v26 += 144;
          }

          while (v27++ < *(v12 + 168));
        }

        v15 = &v79;
        v14 = this;
        re::SkinningModelBuilder::buildDeformationModel(v92, this, &v89);
        re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::deinit(&v95);
        if (v95)
        {
          v36 = v97;
          if ((v97 & 1) == 0)
          {
            (*(*v95 + 40))();
            v36 = v97;
          }

          v95 = 0;
          v96 = 0;
          v97 = (v36 | 1) + 2;
        }

        re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::deinit(&v92[1] + 8);
        inited = *(&v92[1] + 1);
        v5 = v67;
        if (*(&v92[1] + 1) && (BYTE8(v92[2]) & 1) == 0)
        {
          inited = (*(**(&v92[1] + 1) + 40))();
        }
      }

      v4 = *(v12 + 408);
      if (v4)
      {
        re::WrapDeformerModelBuilder::WrapDeformerModelBuilder(v90, v72, v14, v73, *(v12 + 408), &v89);
        v25 = 0;
        v37 = 64;
        do
        {
          v10 = *(v12 + 408);
          if (v10 <= v25)
          {
            goto LABEL_85;
          }

          v38 = *(v12 + 424) + v37;
          v11 = *(v38 + 40);
          v39 = strlen(*(v38 - 56));
          *&v92[0] = *(v38 - 56);
          *(&v92[0] + 1) = v39;
          v40 = *(v38 - 24);
          *&v92[1] = *(v38 - 16);
          *(&v92[1] + 1) = v40;
          v41 = *v38;
          *&v92[2] = *(v38 + 8);
          *(&v92[2] + 1) = v41;
          v42 = *(v38 + 24);
          *&v93 = *(v38 + 32);
          *(&v93 + 1) = v42;
          re::WrapDeformerModelBuilder::addWrapTarget(v90, v11, v25, v92);
          inited = re::WrapDeformerModelBuilder::setEnvelopeBufferName(v90, *(v38 + 40), v25++, (v38 - 48));
          v37 += 112;
        }

        while (v4 != v25);
        v5 = v67;
      }

      v4 = *(v12 + 328);
      if (v4)
      {
        re::ContactDeformerModelBuilder::ContactDeformerModelBuilder(v90, v72, v14, v73, *(v12 + 328), &v89);
        v25 = 0;
        do
        {
          v10 = *(v12 + 328);
          if (v10 <= v25)
          {
            goto LABEL_86;
          }

          v11 = *(v12 + 344) + 48 * v25;
          inited = re::ContactDeformerModelBuilder::initTargetsForMeshPart(v90, *(v11 + 40), v25, *(v11 + 24), v11);
          v43 = *(v11 + 24);
          if (v43)
          {
            v44 = *(v11 + 32);
            v45 = &v44[4 * v43];
            do
            {
              v92[0] = *v44;
              *&v92[1] = 0;
              v46 = v44[2];
              *(&v92[0] + 1) = v44[3];
              *&v92[1] = v46;
              re::ContactDeformerModelBuilder::addContactTarget(v90, v25, v92);
              v44 += 4;
            }

            while (v44 != v45);
          }
        }

        while (++v25 != v4);
      }

      v4 = *(v12 + 368);
      if (v4)
      {
        re::SmoothDeformerModelBuilder::SmoothDeformerModelBuilder(v105, v72, v73, *(v12 + 368), &v89);
        v47 = 0;
        v25 = 0;
        do
        {
          v10 = *(v12 + 368);
          if (v10 <= v25)
          {
            goto LABEL_87;
          }

          inited = re::SmoothDeformerModelBuilder::setEnvelopeBufferName(v105, *(*(v12 + 384) + v47 + 16), v25++, (*(v12 + 384) + v47));
          v47 += 24;
        }

        while (v4 != v25);
      }

      v48 = *(v12 + 488);
      v4 = &str_67;
      if (v48)
      {
        re::JiggleDeformerModelBuilder::JiggleDeformerModelBuilder(v105, v72, v73, *(v12 + 488), &v89);
        v25 = 0;
        v10 = 0;
        do
        {
          v11 = *(v12 + 488);
          if (v11 <= v10)
          {
            goto LABEL_88;
          }

          v49 = *(v12 + 504) + v25;
          inited = re::JiggleDeformerModelBuilder::setData(v105, *(v49 + 40), v10++, v49, (v49 + 16), *(v49 + 32), *(v49 + 36));
          v25 += 48;
        }

        while (v48 != v10);
      }

      v25 = *(v12 + 448);
      if (v25)
      {
        re::OffsetsDeformerModelBuilder::OffsetsDeformerModelBuilder(v105, v72, v73, *(v12 + 448), &v89);
        v50 = 0;
        v15 = 0;
        do
        {
          v10 = *(v12 + 448);
          if (v10 <= v15)
          {
            goto LABEL_89;
          }

          inited = re::OffsetsDeformerModelBuilder::setEnvelopeBufferName(v105, *(*(v12 + 464) + v50 + 16), v15++, (*(v12 + 464) + v50));
          v50 += 24;
        }

        while (v25 != v15);
      }

      v10 = *(v12 + 208);
      if (*(v12 + 168))
      {
        if (v10)
        {
          v15 = 0;
          v11 = 1;
          while (1)
          {
            v25 = *(v12 + 208);
            if (v25 <= v15)
            {
              break;
            }

            v25 = *(v12 + 168);
            if (v25 <= v15)
            {
              goto LABEL_91;
            }

            v25 = *(&v82 + 1);
            if (*(&v82 + 1) <= v15)
            {
              goto LABEL_92;
            }

            v51 = re::MeshPart::operator=(v83 + 544 * v15, v92);
            if (v103)
            {
              if (v103)
              {
              }
            }

            v104 = &str_67;
            v103 = 0;
            re::FixedArray<re::StringID>::deinit(v102);
            re::AttributeTable::~AttributeTable(v92);
            v15 = v11;
            v52 = v10 > v11;
            v11 = (v11 + 1);
            if (!v52)
            {
              goto LABEL_78;
            }
          }

LABEL_90:
          *v90 = 0;
          v94 = 0u;
          v93 = 0u;
          memset(v92, 0, sizeof(v92));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v112[0]) = 136315906;
          *(v112 + 4) = "operator[]";
          WORD6(v112[0]) = 1024;
          *(v112 + 14) = 797;
          WORD1(v112[1]) = 2048;
          *(&v112[1] + 4) = v15;
          WORD6(v112[1]) = 2048;
          *(&v112[1] + 14) = v25;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_91:
          *v105 = 0;
          v113 = 0u;
          v114 = 0u;
          memset(v112, 0, sizeof(v112));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v90 = 136315906;
          *&v90[4] = "operator[]";
          *&v90[12] = 1024;
          *&v90[14] = 797;
          *&v90[18] = 2048;
          *&v90[20] = v15;
          *&v90[28] = 2048;
          *&v90[30] = v25;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_92:
          *v105 = 0;
          v113 = 0u;
          v114 = 0u;
          memset(v112, 0, sizeof(v112));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v90 = 136315906;
          *&v90[4] = "operator[]";
          *&v90[12] = 1024;
          *&v90[14] = 468;
          *&v90[18] = 2048;
          *&v90[20] = v15;
          *&v90[28] = 2048;
          *&v90[30] = v25;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_93;
        }
      }

      else
      {
        *v90 = xmmword_1E3047670;
        *&v90[16] = xmmword_1E3047680;
        *&v90[32] = xmmword_1E30476A0;
        v91 = xmmword_1E30474D0;
        if (v10)
        {
          v15 = 0;
          v11 = 1;
          while (1)
          {
            v25 = *(v12 + 208);
            if (v25 <= v15)
            {
              break;
            }

            v25 = *(&v82 + 1);
            if (*(&v82 + 1) <= v15)
            {
              goto LABEL_94;
            }

            v53 = re::MeshPart::operator=(v83 + 544 * v15, v92);
            if (v103)
            {
              if (v103)
              {
              }
            }

            v104 = &str_67;
            v103 = 0;
            re::FixedArray<re::StringID>::deinit(v102);
            re::AttributeTable::~AttributeTable(v92);
            v15 = v11;
            v52 = v10 > v11;
            v11 = (v11 + 1);
            if (!v52)
            {
              goto LABEL_78;
            }
          }

LABEL_93:
          *v105 = 0;
          v94 = 0u;
          v93 = 0u;
          memset(v92, 0, sizeof(v92));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v112[0]) = 136315906;
          *(v112 + 4) = "operator[]";
          WORD6(v112[0]) = 1024;
          *(v112 + 14) = 797;
          WORD1(v112[1]) = 2048;
          *(&v112[1] + 4) = v15;
          WORD6(v112[1]) = 2048;
          *(&v112[1] + 14) = v25;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_94:
          v78 = 0;
          v113 = 0u;
          v114 = 0u;
          memset(v112, 0, sizeof(v112));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v105 = 136315906;
          *&v105[4] = "operator[]";
          v106 = 1024;
          v107 = 468;
          v108 = 2048;
          v109 = v15;
          v110 = 2048;
          v111 = v25;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_95:
          *&v112[0] = 0;
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          v79 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v92[0]) = 136315906;
          *(v92 + 4) = "operator[]";
          WORD6(v92[0]) = 1024;
          *(v92 + 14) = 797;
          WORD1(v92[1]) = 2048;
          *(&v92[1] + 4) = v10;
          WORD6(v92[1]) = 2048;
          *(&v92[1] + 14) = v12;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_96;
        }
      }

LABEL_78:
      v54 = *(v12 + 32);
      v15 = &v79;
      v80 = *(v12 + 16);
      v81 = v54;
      v55 = *(v12 + 32);
      v84 = *(v12 + 16);
      v85 = v55;
      v56 = *(v12 + 288);
      v58 = *(v12 + 288);
      if (v87 != v58)
      {
        goto LABEL_98;
      }

      if (v58)
      {
        v59 = *(v12 + 304);
        v60 = &v59[6 * v58];
        v61 = v88;
        v62 = v59;
        v63 = v88;
        do
        {
          v64 = *v62;
          v62 += 6;
          *v63 = v64;
          v63 += 6;
          re::DynamicArray<unsigned long long>::operator=((v61 + 1), v59 + 1);
          v61 = v63;
          v59 = v62;
        }

        while (v62 != v60);
      }

      re::DynamicArray<re::MeshModel>::add(v66, &v79);
      re::MeshModel::~MeshModel(&v79);
      v11 = v70 + 1;
      if (v70 + 1 == v69)
      {
        return re::FixedArray<re::BufferSlice>::deinit(&v75);
      }
    }

    re::BlendShapeModelBuilder::BlendShapeModelBuilder(v90, v72, v14, v22, *(v12 + 128), &v89);
    v24 = 0;
    v25 = 0;
    while (1)
    {
      v10 = *(v12 + 128);
      if (v10 <= v25)
      {
        break;
      }

      re::BlendShapeModelBuilder::addBlendShapeGroup(v90, *(v12 + 144) + v24, *(*(v12 + 144) + v24 + 48), v25++, 0);
      v24 += 56;
      if (v4 == v25)
      {

        goto LABEL_20;
      }
    }

    *v105 = 0;
    v94 = 0u;
    v93 = 0u;
    memset(v92, 0, sizeof(v92));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v112[0]) = 136315906;
    *(v112 + 4) = "operator[]";
    WORD6(v112[0]) = 1024;
    *(v112 + 14) = 797;
    WORD1(v112[1]) = 2048;
    *(&v112[1] + 4) = v25;
    WORD6(v112[1]) = 2048;
    *(&v112[1] + 14) = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_85:
    *v105 = 0;
    v94 = 0u;
    v93 = 0u;
    memset(v92, 0, sizeof(v92));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v112[0]) = 136315906;
    *(v112 + 4) = "operator[]";
    WORD6(v112[0]) = 1024;
    *(v112 + 14) = 797;
    WORD1(v112[1]) = 2048;
    *(&v112[1] + 4) = v25;
    WORD6(v112[1]) = 2048;
    *(&v112[1] + 14) = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_86:
    *v105 = 0;
    v94 = 0u;
    v93 = 0u;
    memset(v92, 0, sizeof(v92));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v112[0]) = 136315906;
    *(v112 + 4) = "operator[]";
    WORD6(v112[0]) = 1024;
    *(v112 + 14) = 797;
    WORD1(v112[1]) = 2048;
    *(&v112[1] + 4) = v25;
    WORD6(v112[1]) = 2048;
    *(&v112[1] + 14) = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_87:
    *v90 = 0;
    v94 = 0u;
    v93 = 0u;
    memset(v92, 0, sizeof(v92));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v112[0]) = 136315906;
    *(v112 + 4) = "operator[]";
    WORD6(v112[0]) = 1024;
    *(v112 + 14) = 797;
    WORD1(v112[1]) = 2048;
    *(&v112[1] + 4) = v25;
    WORD6(v112[1]) = 2048;
    *(&v112[1] + 14) = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_88:
    *v90 = 0;
    v94 = 0u;
    v93 = 0u;
    memset(v92, 0, sizeof(v92));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v112[0]) = 136315906;
    *(v112 + 4) = "operator[]";
    WORD6(v112[0]) = 1024;
    *(v112 + 14) = 797;
    WORD1(v112[1]) = 2048;
    *(&v112[1] + 4) = v10;
    WORD6(v112[1]) = 2048;
    *(&v112[1] + 14) = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_89:
    *v90 = 0;
    v94 = 0u;
    v93 = 0u;
    memset(v92, 0, sizeof(v92));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v112[0]) = 136315906;
    *(v112 + 4) = "operator[]";
    WORD6(v112[0]) = 1024;
    *(v112 + 14) = 797;
    WORD1(v112[1]) = 2048;
    *(&v112[1] + 4) = v15;
    WORD6(v112[1]) = 2048;
    *(&v112[1] + 14) = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_90;
  }

  return re::FixedArray<re::BufferSlice>::deinit(&v75);
}

uint64_t re::makeMeshAssetDataFromDescriptor@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X8>)
{
  v4 = a2;
  v87 = *MEMORY[0x1E69E9840];
  v7 = &v55;
  v33 = 0;
  v32 = 0;
  v31 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0;
  v37 = 0u;
  v38 = 0u;
  v39 = 0;
  memset(v40, 0, sizeof(v40));
  v41 = 0x7FFFFFFFLL;
  v8 = a1[2];
  v24 = v8;
  if (!v8)
  {
LABEL_50:
    v20 = a1[12];
    if (v8 >= v20)
    {
      if (!v20)
      {
LABEL_67:
        re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=(&v40[8], (a1 + 15));
        v21 = a1[7];
        if (v35 >= v21)
        {
          if (!v21)
          {
LABEL_73:
            re::makeMeshAssetDataFromGeomScene(&v31, v4, a3);
            goto LABEL_74;
          }
        }

        else
        {
          re::DynamicArray<re::RigSplineIKJoint>::setCapacity(&v34 + 1, a1[7]);
        }

        v9 = 0;
        while (1)
        {
          v10 = a1[7];
          if (v10 <= v9)
          {
            goto LABEL_82;
          }

          re::DynamicArray<re::GeomInstance>::add((&v34 + 8), *(a1[9] + 8 * v9++) + 32);
          if (v21 == v9)
          {
            goto LABEL_73;
          }
        }
      }
    }

    else
    {
      re::DynamicArray<re::GeomSkeleton>::setCapacity(&v37 + 1, a1[12]);
    }

    v9 = 0;
    while (1)
    {
      v10 = a1[12];
      if (v10 <= v9)
      {
        break;
      }

      re::DynamicArray<re::GeomSkeleton>::add((&v37 + 8), (*(a1[14] + 8 * v9++) + 24));
      if (v20 == v9)
      {
        goto LABEL_67;
      }
    }

LABEL_81:
    *&v82 = 0;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    memset(v43, 0, sizeof(v43));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v55) = 136315906;
    *(v7 + 4) = "operator[]";
    v57 = 1024;
    *(v7 + 14) = 797;
    WORD1(v58) = 2048;
    *(v7 + 20) = v9;
    v59 = 2048;
    *(v7 + 30) = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_82:
    *&v82 = 0;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    memset(v43, 0, sizeof(v43));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v55) = 136315906;
    *(v7 + 4) = "operator[]";
    v57 = 1024;
    *(v7 + 14) = 797;
    WORD1(v58) = 2048;
    *(v7 + 20) = v9;
    v59 = 2048;
    *(v7 + 30) = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_83:
    *(v30 + 40) = v25;
    *(v30 + 48) = v27;
    *(v30 + 24) = v26;
    *(v30 + 32) = v28;
    *v30 = v29;
    *v75 = 0;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    memset(v43, 0, sizeof(v43));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v82) = 136315906;
    *(v7 + 212) = "operator[]";
    WORD6(v82) = 1024;
    *(v7 + 222) = 797;
    WORD1(v83) = 2048;
    *(v7 + 228) = v3;
    WORD6(v83) = 2048;
    *(v7 + 238) = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_84:
    *(v30 + 40) = v25;
    *(v30 + 48) = v27;
    *(v30 + 24) = v26;
    *(v30 + 32) = v28;
    *v30 = v29;
    *v75 = 0;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    memset(v43, 0, sizeof(v43));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v82) = 136315906;
    *(v7 + 212) = "operator[]";
    WORD6(v82) = 1024;
    *(v7 + 222) = 797;
    WORD1(v83) = 2048;
    *(v7 + 228) = v3;
    WORD6(v83) = 2048;
    *(v7 + 238) = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_85:
    *(v30 + 40) = v25;
    *(v30 + 48) = v27;
    *(v30 + 24) = v26;
    *(v30 + 32) = v28;
    *v30 = v29;
    *v75 = 0;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    memset(v43, 0, sizeof(v43));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v82) = 136315906;
    *(v7 + 212) = "operator[]";
    WORD6(v82) = 1024;
    *(v7 + 222) = 797;
    WORD1(v83) = 2048;
    *(v7 + 228) = v3;
    WORD6(v83) = 2048;
    *(v7 + 238) = a3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_86:
    *(v30 + 40) = v25;
    *(v30 + 48) = v27;
    *(v30 + 24) = v26;
    *(v30 + 32) = v28;
    *v30 = v29;
    *v75 = 0;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    memset(v43, 0, sizeof(v43));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v82) = 136315906;
    *(v7 + 212) = "operator[]";
    WORD6(v82) = 1024;
    *(v7 + 222) = 797;
    WORD1(v83) = 2048;
    *(v7 + 228) = v3;
    WORD6(v83) = 2048;
    *(v7 + 238) = a3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_87:
    *(v30 + 40) = v25;
    *(v30 + 48) = v27;
    *(v30 + 24) = v26;
    *(v30 + 32) = v28;
    *v30 = v29;
    *v75 = 0;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    memset(v43, 0, sizeof(v43));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v82) = 136315906;
    *(v7 + 212) = "operator[]";
    WORD6(v82) = 1024;
    *(v7 + 222) = 797;
    WORD1(v83) = 2048;
    *(v7 + 228) = v3;
    WORD6(v83) = 2048;
    *(v7 + 238) = a3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_88:
    *(v30 + 40) = v25;
    *(v30 + 48) = v27;
    *(v30 + 24) = v26;
    *(v30 + 32) = v28;
    *v30 = v29;
    *v75 = 0;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    memset(v43, 0, sizeof(v43));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v82) = 136315906;
    *(v7 + 212) = "operator[]";
    WORD6(v82) = 1024;
    *(v7 + 222) = 797;
    WORD1(v83) = 2048;
    *(v7 + 228) = v3;
    WORD6(v83) = 2048;
    *(v7 + 238) = a3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = 0;
  v9 = v43;
  v10 = &v43[1] + 8;
  v29 = *a3;
  v25 = *(a3 + 40);
  v26 = *(a3 + 24);
  v30 = a3;
  v27 = *(a3 + 48);
  v28 = *(a3 + 32);
  while (1)
  {
    re::GeomModelWithLods::GeomModelWithLods(&v55);
    v4 = a1[2];
    if (v4 <= v3)
    {
      goto LABEL_83;
    }

    a3 = *(a1[4] + 152 * v3 + 48);
    if (v61 < a3)
    {
      break;
    }

    if (a3)
    {
      goto LABEL_7;
    }

LABEL_32:
    if (v4 <= v3)
    {
      goto LABEL_84;
    }

    re::DynamicString::operator=(&v55, (a1[4] + 152 * v3));
    a3 = a1[2];
    if (a3 <= v3)
    {
      goto LABEL_85;
    }

    re::DynamicArray<float>::resize(&v70, *(a1[4] + 152 * v3 + 128));
    a3 = a1[2];
    if (a3 <= v3)
    {
      goto LABEL_86;
    }

    re::DynamicArray<float>::resize(&v65, *(a1[4] + 152 * v3 + 88));
    a3 = a1[2];
    if (a3 <= v3)
    {
      goto LABEL_87;
    }

    memcpy(__dst, *(a1[4] + 152 * v3 + 144), 4 * *(a1[4] + 152 * v3 + 128));
    a3 = a1[2];
    if (a3 <= v3)
    {
      goto LABEL_88;
    }

    memcpy(v69, *(a1[4] + 152 * v3 + 104), 4 * *(a1[4] + 152 * v3 + 88));
    v19.n128_f64[0] = re::DynamicArray<re::GeomModelWithLods>::add(&v31, &v55);
    if (v70)
    {
      if (__dst)
      {
        (*(*v70 + 40))(v19.n128_f64[0]);
      }

      __dst = 0;
      v71 = 0;
      v72 = 0;
      v70 = 0;
      ++v73;
    }

    if (v65)
    {
      if (v69)
      {
        (*(*v65 + 40))(v19);
      }

      v69 = 0;
      v66 = 0;
      v67 = 0;
      v65 = 0;
      ++v68;
    }

    re::DynamicArray<re::GeomModel>::deinit(&v60);
    if (v55 && (v56 & 1) != 0)
    {
      (*(*v55 + 40))();
    }

    if (++v3 == v24)
    {
      a3 = v30;
      *(v30 + 40) = v25;
      *(v30 + 48) = v27;
      *(v30 + 24) = v26;
      *(v30 + 32) = v28;
      *v30 = v29;
      v8 = v38;
      v4 = a2;
      goto LABEL_50;
    }
  }

  re::DynamicArray<re::GeomModel>::setCapacity(&v60, *(a1[4] + 152 * v3 + 48));
LABEL_7:
  v7 = 0;
  while (1)
  {
    v4 = a1[2];
    if (v4 <= v3)
    {
      *(v30 + 40) = v25;
      *(v30 + 48) = v27;
      *(v30 + 24) = v26;
      *(v30 + 32) = v28;
      *v30 = v29;
      v42 = 0;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v82 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v75 = 136315906;
      *&v75[4] = "operator[]";
      v76 = 1024;
      v77 = 797;
      v78 = 2048;
      v79 = v3;
      v80 = 2048;
      v81 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_80:
      *(v30 + 40) = v25;
      *(v30 + 48) = v27;
      *(v30 + 24) = v26;
      *(v30 + 32) = v28;
      *v30 = v29;
      v42 = 0;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v82 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v75 = 136315906;
      *&v75[4] = "operator[]";
      v76 = 1024;
      v77 = 797;
      v78 = 2048;
      v79 = v7;
      v80 = 2048;
      v81 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_81;
    }

    v11 = a1[4] + 152 * v3;
    v4 = *(v11 + 48);
    if (v4 <= v7)
    {
      goto LABEL_80;
    }

    re::makeGeomModelFromModelDescriptor((*(*(v11 + 64) + 8 * v7) + 24), v43);
    v12 = LOBYTE(v43[0]);
    if (LOBYTE(v43[0]) == 1)
    {
      v13 = v62;
      if (v62 >= v61)
      {
        re::DynamicArray<re::GeomModel>::growCapacity(&v60, v62 + 1);
        v13 = v62;
      }

      v14 = (v64 + 248 * v13);
      re::DynamicString::DynamicString(v14, (v43 + 8));
      re::DynamicArray<re::GeomMesh>::DynamicArray(v14 + 32, &v44 + 1);
      re::DynamicArray<float>::DynamicArray(v14 + 72, v47);
      v15 = v50;
      *(v14 + 112) = v50;
      if (v15 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::DynamicArray(v14 + 120, v51);
      }

      v16 = v52;
      *(v14 + 160) = v52;
      if (v16 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::DynamicArray(v14 + 168, v53);
      }

      re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::DynamicArray(v14 + 208, v54);
      ++v62;
      ++v63;
    }

    else
    {
      v82 = *(v43 + 8);
      re::DynamicString::DynamicString(&v83, (&v43[1] + 8));
      v29 = 0;
      *(v30 + 8) = v82;
      v25 = v84;
      v26 = v83;
      v27 = *(&v84 + 1);
      v28 = *(&v83 + 1);
    }

    v17 = (&v43[1] + 8);
    if (LOBYTE(v43[0]) == 1)
    {
      re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(v54);
      if (v52 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::deinit(v53);
      }

      if (v50 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::deinit(v51);
      }

      if (v47[0])
      {
        if (v49)
        {
          (*(*v47[0] + 40))();
        }

        v49 = 0;
        memset(v47, 0, sizeof(v47));
        ++v48;
      }

      re::DynamicArray<re::GeomMesh>::deinit(&v44 + 8);
      v17 = (v43 + 8);
    }

    v18.n128_f64[0] = re::DynamicString::deinit(v17);
    if (!v12)
    {
      break;
    }

    v7 = (v7 + 1);
    if (a3 == v7)
    {
      v4 = a1[2];
      v7 = &v55;
      goto LABEL_32;
    }
  }

  *(v30 + 40) = v25;
  *(v30 + 48) = v27;
  *(v30 + 24) = v26;
  *(v30 + 32) = v28;
  *v30 = v29;
  if (v70)
  {
    if (__dst)
    {
      (*(*v70 + 40))(v18.n128_f64[0]);
    }

    __dst = 0;
    v71 = 0;
    v72 = 0;
    v70 = 0;
    ++v73;
  }

  if (v65)
  {
    if (v69)
    {
      (*(*v65 + 40))(v18);
    }

    v69 = 0;
    v66 = 0;
    v67 = 0;
    v65 = 0;
    ++v68;
  }

  re::DynamicArray<re::GeomModel>::deinit(&v60);
  if (v55 && (v56 & 1) != 0)
  {
    (*(*v55 + 40))();
  }

LABEL_74:
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v40[8]);
  re::DynamicArray<re::GeomSkeleton>::deinit(&v37 + 8);
  if (*(&v34 + 1))
  {
    if (v37)
    {
      (*(**(&v34 + 1) + 40))();
    }

    *&v37 = 0;
    v35 = 0uLL;
    *(&v34 + 1) = 0;
    ++v36;
  }

  return re::DynamicArray<re::GeomModelWithLods>::deinit(&v31);
}

uint64_t re::DynamicArray<re::GeomSkeleton>::add(_anonymous_namespace_ *this, StringID *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::GeomSkeleton>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 160 * v4);
  re::StringID::StringID(v5, a2);
  re::FixedArray<re::StringID>::FixedArray(v5 + 2, &a2[1]);
  re::FixedArray<unsigned int>::FixedArray(v5 + 5, &a2[2].var1);
  re::FixedArray<re::GenericSRT<float>>::FixedArray(v5 + 8, &a2[4]);
  re::FixedArray<re::Matrix4x4<float>>::FixedArray(v5 + 11, &a2[5].var1);
  result = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::HashTable((v5 + 14), &a2[7]);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::makeMeshAssetDataWithGeomModel@<X0>(re::DynamicString *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  re::GeomScene::makeSceneWithSingleInstanceModel(a1, v13);
  if (a2)
  {
    v7 = *(a2 + 16);
    *&v10 = *(a2 + 32);
    *(&v10 + 1) = v7;
    re::GeomScene::setSkeletons(v13, &v10);
  }

  LODWORD(v10) = 16842752;
  BYTE4(v10) = 1;
  *(&v10 + 5) = 0;
  *(&v10 + 9) = 0;
  *(&v10 + 11) = 65793;
  v12 = 0u;
  memset(v11, 0, sizeof(v11));
  DWORD1(v12) = 0x7FFFFFFF;
  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = &v10;
  }

  re::makeMeshAssetDataFromGeomScene(v13, v8, a4);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v11);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v20);
  re::DynamicArray<re::GeomSkeleton>::deinit(&v19);
  if (v14)
  {
    if (v18)
    {
      (*(*v14 + 40))();
    }

    v18 = 0;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    ++v17;
  }

  return re::DynamicArray<re::GeomModelWithLods>::deinit(v13);
}

uint64_t re::GeomScene::makeSceneWithSingleInstanceModel@<X0>(re::DynamicString *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  re::GeomModelWithLods::GeomModelWithLods(&v6);
  re::DynamicString::operator=(&v6, a1);
  re::DynamicArray<re::GeomModel>::add(v8, a1);
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  *a2 = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 140) = 0u;
  *(a2 + 156) = 0x7FFFFFFFLL;
  re::DynamicArray<re::GeomModelWithLods>::add(a2, &v6);
  v19[0] = xmmword_1E3047670;
  v19[1] = xmmword_1E3047680;
  v19[2] = xmmword_1E30476A0;
  v19[3] = xmmword_1E30474D0;
  v20 = 0;
  v4 = re::DynamicArray<re::GeomInstance>::add((a2 + 40), v19);
  if (v14)
  {
    if (v18)
    {
      (*(*v14 + 40))(v4);
    }

    v18 = 0;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    ++v17;
  }

  if (v9)
  {
    if (v13)
    {
      (*(*v9 + 40))(v4);
    }

    v13 = 0;
    v10 = 0;
    v11 = 0;
    v9 = 0;
    ++v12;
  }

  re::DynamicArray<re::GeomModel>::deinit(v8);
  result = v6;
  if (v6)
  {
    if (v7)
    {
      return (*(*v6 + 40))();
    }
  }

  return result;
}

uint64_t re::makeMeshAssetDataWithGeomMeshArray@<X0>(_anonymous_namespace_ *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, int *a4@<X3>, uint64_t a5@<X8>)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v12 = 0;
  re::makeMeshAssetDataWithGeomMeshArray(a1, a2, v15, v14, a3, a4, a5);
  result = v13;
  if (v13)
  {
    v11 = v14 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    return (*(*v13 + 40))();
  }

  return result;
}

uint64_t re::makeMeshAssetDataWithGeomMeshArray@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int *a6@<X5>, uint64_t a7@<X8>)
{
  v65[5] = *MEMORY[0x1E69E9840];
  v39 = 0;
  v38 = 0u;
  v41 = 0u;
  v42 = 0u;
  v40 = 0;
  v43 = 0;
  v44 = 0u;
  v45 = 0u;
  v46 = 0;
  memset(v47, 0, sizeof(v47));
  v48 = 0x7FFFFFFFLL;
  re::GeomModelWithLods::GeomModelWithLods(&v25);
  re::GeomModel::GeomModel(&v53);
  re::DynamicArray<re::GeomModel>::add(v27, &v53);
  re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(v65);
  if (v63[40] == 1)
  {
    re::DynamicArray<re::GeomIndexMap>::deinit(&v64);
  }

  if (v62 == 1)
  {
    re::DynamicArray<re::GeomIndexMap>::deinit(v63);
  }

  if (*(&v57 + 1))
  {
    if (v61)
    {
      (*(**(&v57 + 1) + 40))();
    }

    v61 = 0;
    v58 = 0;
    v59 = 0;
    *(&v57 + 1) = 0;
    ++v60;
  }

  re::DynamicArray<re::GeomMesh>::deinit(&v55);
  if (v53 && (BYTE8(v53) & 1) != 0)
  {
    (*(*v53 + 40))();
  }

  re::DynamicArray<re::GeomModelWithLods>::add(&v38, &v25);
  if (!v39)
  {
LABEL_51:
    v49 = 0;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v53 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v50 = 136315906;
    *v51 = "operator[]";
    *&v51[8] = 1024;
    *&v51[10] = 789;
    *&v51[14] = 2048;
    *&v51[16] = 0;
    *&v51[24] = 2048;
    *&v51[26] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_52:
    v49 = 0;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v53 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v50 = 136315906;
    *v51 = "operator[]";
    *&v51[8] = 1024;
    *&v51[10] = 789;
    *&v51[14] = 2048;
    *&v51[16] = 0;
    *&v51[24] = 2048;
    *&v51[26] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (!*(v41 + 48))
  {
    goto LABEL_52;
  }

  v14 = *(v41 + 64);
  v15 = a2;
  if (v14[5] < a2)
  {
    re::DynamicArray<re::GeomMesh>::setCapacity(v14 + 4, a2);
  }

  LODWORD(v53) = 0;
  re::DynamicArray<unsigned int>::resize(v14 + 9, a2, &v53);
  if (a2)
  {
    v16 = 736 * a2;
    do
    {
      re::DynamicArray<re::GeomMesh>::add((v14 + 4), a1);
      a1 += 92;
      v16 -= 736;
    }

    while (v16);
  }

  if (a4)
  {
    for (i = 0; a4 != i; ++i)
    {
      if (i < v15)
      {
        v18 = v14[11];
        if (v18 <= i)
        {
          v49 = 0;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v53 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v50 = 136315906;
          *v51 = "operator[]";
          *&v51[8] = 1024;
          *&v51[10] = 789;
          *&v51[14] = 2048;
          *&v51[16] = i;
          *&v51[24] = 2048;
          *&v51[26] = v18;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_51;
        }

        *(v14[13] + 4 * i) = *(a3 + 4 * i);
      }
    }
  }

  if (a5)
  {
    v19 = *(a5 + 32);
    v20 = *(a5 + 16);
    if (v45 < v20)
    {
      re::DynamicArray<re::GeomSkeleton>::setCapacity(&v44 + 1, v20);
      goto LABEL_29;
    }

    if (v20)
    {
LABEL_29:
      v21 = 160 * v20;
      do
      {
        re::DynamicArray<re::GeomSkeleton>::add((&v44 + 8), v19);
        LODWORD(v53) = DWORD2(v45) - 1;
        re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(&v47[8], v19, &v53);
        v19 += 10;
        v21 -= 160;
      }

      while (v21);
    }
  }

  v53 = xmmword_1E3047670;
  v54 = xmmword_1E3047680;
  v55 = xmmword_1E30476A0;
  v56 = xmmword_1E30474D0;
  LODWORD(v57) = 0;
  re::DynamicArray<re::GeomInstance>::add((&v41 + 8), &v53);
  v50 = 16842752;
  v51[0] = 1;
  *&v51[1] = 0;
  *&v51[5] = 0;
  *&v51[7] = 65793;
  v52 = 0u;
  memset(&v51[12], 0, 32);
  DWORD1(v52) = 0x7FFFFFFF;
  if (a6)
  {
    v22 = a6;
  }

  else
  {
    v22 = &v50;
  }

  re::makeMeshAssetDataFromGeomScene(&v38, v22, a7);
  v23.n128_f64[0] = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v51[12]);
  if (v33)
  {
    if (v37)
    {
      (*(*v33 + 40))(v23.n128_f64[0]);
    }

    v37 = 0;
    v34 = 0;
    v35 = 0;
    v33 = 0;
    ++v36;
  }

  if (v28)
  {
    if (v32)
    {
      (*(*v28 + 40))(v23);
    }

    v32 = 0;
    v29 = 0;
    v30 = 0;
    v28 = 0;
    ++v31;
  }

  re::DynamicArray<re::GeomModel>::deinit(v27);
  if (v25 && (v26 & 1) != 0)
  {
    (*(*v25 + 40))();
  }

  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v47[8]);
  re::DynamicArray<re::GeomSkeleton>::deinit(&v44 + 8);
  if (*(&v41 + 1))
  {
    if (v44)
    {
      (*(**(&v41 + 1) + 40))();
    }

    *&v44 = 0;
    v42 = 0uLL;
    *(&v41 + 1) = 0;
    ++v43;
  }

  return re::DynamicArray<re::GeomModelWithLods>::deinit(&v38);
}

void re::anonymous namespace::populateAssetPartFromGeomMesh(unint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t *a4, __int16 a5, uint64_t a6, uint64_t a7, re::UniqueNameGenerator *a8, uint64_t *a9, unint64_t a10)
{
  v250 = *MEMORY[0x1E69E9840];
  re::GeomMesh::GeomMesh(&v214, 0);
  v181 = (a2 + 5);
  v17 = *(a2 + 2) == *(a2 + 10) && *(a2 + 106) == 0;
  v175 = a5;
  if (!v17 || (*a1 & 1) != 0 || (*(a1 + 8) & 1) != 0 || (*(a1 + 1) & 1) != 0 || (*(a1 + 2) & 1) != 0 || (*(a1 + 3) & 1) != 0 || (v18 = re::internal::GeomAttributeManager::attributeByName((a2 + 8), "vertexNormal")) == 0 || *(v18 + 16) != 1 || (v19 = re::internal::GeomAttributeManager::attributeByName((a2 + 8), "vertexTangent")) == 0 || *(v19 + 16) != 1)
  {
    v20 = (a2 + 8);
  }

  else
  {
    v20 = (a2 + 8);
    v21 = re::internal::GeomAttributeManager::attributeByName((a2 + 8), "vertexBitangent");
    if (!v21 || *(v21 + 16) == 1)
    {
      v22 = v21 != 0;
      goto LABEL_20;
    }
  }

  v22 = 0;
LABEL_20:
  v209 = *a3;
  v210 = *(a3 + 2);
  v211 = *(a3 + 12);
  if (v211 == 2)
  {
    re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrown(v212, (a3 + 2));
  }

  else if (v211 == 1)
  {
    re::DynamicArray<float>::DynamicArray(v212, a3 + 2);
  }

  else
  {
    if (v211)
    {
      re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "GeomIndexMap", 433);
      _os_crash();
      __break(1u);
      goto LABEL_472;
    }

    LODWORD(v212[0]) = *(a3 + 4);
  }

  v204 = *a4;
  v205 = *(a4 + 2);
  v206 = *(a4 + 12);
  switch(v206)
  {
    case 2:
      re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrown(v207, (a4 + 2));
      break;
    case 1:
      re::DynamicArray<float>::DynamicArray(v207, a4 + 2);
      break;
    case 0:
      LODWORD(v207[0]) = *(a4 + 4);
      break;
    default:
LABEL_472:
      re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "GeomIndexMap", 433);
      _os_crash();
      __break(1u);
      goto LABEL_473;
  }

  v199 = *a3;
  v200 = *(a3 + 2);
  v201 = *(a3 + 12);
  if (v201 == 2)
  {
    re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrown(v202, (a3 + 2));
    goto LABEL_38;
  }

  if (v201 == 1)
  {
    re::DynamicArray<float>::DynamicArray(v202, a3 + 2);
    goto LABEL_38;
  }

  if (v201)
  {
LABEL_473:
    re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "GeomIndexMap", 433);
    _os_crash();
    __break(1u);
    goto LABEL_474;
  }

  LODWORD(v202[0]) = *(a3 + 4);
LABEL_38:
  v178 = a2;
  v173 = a8;
  v174 = a2 + 2;
  if (v22)
  {
    v176 = (a2 + 1);
    v172 = (a2 + 2);
    v23 = v20;
  }

  else
  {
    *buf = 0xFFFFFFFF00000000;
    *&buf[8] = -1;
    buf[12] = 0;
    LODWORD(v246) = 0;
    re::makeConditionedMeshForGPU(a2, a1, &v214, &v199, buf, v226);
    re::remapIndexMap(&v199, a3, v233);
    re::GeomIndexMap::operator=(&v209, v233);
    if (v233[12])
    {
      if (v233[12] == 2)
      {
        re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v233[16]);
      }

      else
      {
        if (v233[12] != 1)
        {
          goto LABEL_477;
        }

        if (*&v233[16] && *(&v234 + 1))
        {
          (*(**&v233[16] + 40))();
        }
      }
    }

    re::remapIndexMap(buf, a4, v233);
    re::GeomIndexMap::operator=(&v204, v233);
    if (v233[12])
    {
      if (v233[12] == 2)
      {
        v26.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v233[16]);
      }

      else
      {
        if (v233[12] != 1)
        {
          goto LABEL_478;
        }

        if (*&v233[16])
        {
          v25 = *(&v234 + 1);
          if (*(&v234 + 1))
          {
            (*(**&v233[16] + 40))();
          }
        }
      }
    }

    if (v226[0] & 1) == 0 && *(&v226[1] + 1) && (v227)
    {
      (*(**(&v226[1] + 1) + 40))(v26);
    }

    if (buf[12])
    {
      if (buf[12] == 2)
      {
        re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v246);
      }

      else
      {
        if (buf[12] != 1)
        {
          goto LABEL_479;
        }

        if (v246 && v248)
        {
          (*(*v246 + 40))(v26);
        }
      }
    }

    v172 = &v216;
    v23 = &v218;
    v181 = &v217;
    v176 = &v215;
    a2 = &v214;
  }

  v184 = *(a2 + 4);
  v186 = a2;
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v220, 4508, v23[144]);
  v191[0] = 0;
  v189 = 0uLL;
  v187 = v23;
  v188 = 0;
  v190 = 0;
  v27 = *(v23 + 72);
  v182 = a1;
  if (v27)
  {
    re::DynamicArray<re::MeshAssetBuffer>::setCapacity(&v188, v27);
    v28 = 0;
    v20 = "skinnedAnimationRemappedJointIndices";
    while (1)
    {
      v29 = re::internal::GeomAttributeManager::attributeByIndex(v23, v28);
      v30 = *(v29 + 8);
      if (strcmp("skinnedAnimationGeometryBindTransform", v30))
      {
        if (strcmp("skinnedAnimationWeights", v30) && strcmp("skinnedAnimationJointIndices", v30) && strcmp("skinnedAnimationRemappedJointIndices", v30) && strcmp("skinnedAnimationInfluenceEndIndices", v30) && strcmp("skeletonPath", v30))
        {
          break;
        }
      }

LABEL_247:
      if (++v28 == v27)
      {
        goto LABEL_248;
      }
    }

    *&v226[0] = v30;
    v31 = re::Hash<re::DynamicString>::operator()(buf, v30);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1 + 16, v226, v31, buf);
    LODWORD(v20) = *&buf[12];
    a1 = *(a1 + 32) + 56 * *&buf[12] + 40;
    v32 = *(v29 + 16);
    v33 = (*(*v29 + 16))(v29);
    LODWORD(v183) = v33;
    v35 = *(v29 + 17);
    LOBYTE(v36) = 30;
    if (v35 <= 4)
    {
      if (*(v29 + 17) <= 1u)
      {
        if (*(v29 + 17))
        {
          if (v20 != 0x7FFFFFFF)
          {
            v41 = *re::pipelineLogObjects(v33);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1E1C61000, v41, OS_LOG_TYPE_DEFAULT, "Mesh attribute type kUInt16 is not supported for compression.", buf, 2u);
            }
          }

          LOBYTE(v36) = 49;
        }

        else
        {
          if (v20 != 0x7FFFFFFF)
          {
            v42 = *re::pipelineLogObjects(v33);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1E1C61000, v42, OS_LOG_TYPE_DEFAULT, "Mesh attribute type kInt16 is not supported for compression.", buf, 2u);
            }
          }

          LOBYTE(v36) = 50;
        }

        goto LABEL_131;
      }

      if (v35 == 2)
      {
        if (v20 != 0x7FFFFFFF)
        {
          v46 = *re::pipelineLogObjects(v33);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E1C61000, v46, OS_LOG_TYPE_DEFAULT, "Mesh attribute type kInt32 is not supported for compression.", buf, 2u);
          }
        }

        LOBYTE(v36) = 32;
        goto LABEL_131;
      }

      if (v35 == 3)
      {
        if (v20 != 0x7FFFFFFF)
        {
          v43 = *re::pipelineLogObjects(v33);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E1C61000, v43, OS_LOG_TYPE_DEFAULT, "Mesh attribute type kUInt32 is not supported for compression.", buf, 2u);
          }
        }

        LOBYTE(v36) = 36;
        goto LABEL_131;
      }

      if (v35 != 4)
      {
        goto LABEL_131;
      }

      if (v20 != 0x7FFFFFFF)
      {
        if (*a1)
        {
          LOBYTE(v36) = 28;
        }

        else
        {
          LOBYTE(v36) = 53;
        }

        goto LABEL_131;
      }
    }

    else
    {
      if (*(v29 + 17) > 7u)
      {
        switch(v35)
        {
          case 8u:
            if (v20 != 0x7FFFFFFF)
            {
              v48 = *a1;
              if (v48 < 3)
              {
                v38 = 8 * (v48 & 0x1F);
                v39 = 788763;
                goto LABEL_128;
              }
            }

            LOBYTE(v36) = 31;
            break;
          case 9u:
            if (v20 != 0x7FFFFFFF)
            {
              v45 = *re::pipelineLogObjects(v33);
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1E1C61000, v45, OS_LOG_TYPE_DEFAULT, "Mesh attribute type kUInt8 is not supported for compression.", buf, 2u);
              }
            }

            LOBYTE(v36) = 45;
            break;
          case 0xAu:
            if (v20 != 0x7FFFFFFF)
            {
              v40 = *re::pipelineLogObjects(v33);
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_DEFAULT, "Mesh attribute type kInt8 is not supported for compression.", buf, 2u);
              }
            }

            LOBYTE(v36) = 46;
            break;
        }

LABEL_131:
        v227 = 0;
        memset(v226, 0, 28);
        v49 = re::sizeFromVertexFormat(v36, v34);
        LODWORD(v50) = v49;
        if (v32 == 1)
        {
          v51 = (v49 + 3) & 0x1FC;
        }

        else
        {
          v51 = v49;
        }

        re::DynamicArray<BOOL>::resize(v226, v183 * v51);
        v53 = *(v29 + 17);
        v179 = v36;
        v180 = v32;
        if (v20 == 0x7FFFFFFF)
        {
          if (*(v29 + 17) > 4u)
          {
            if (*(v29 + 17) <= 7u)
            {
              v54 = v51;
              if (v53 != 5)
              {
                if (v53 == 6)
                {
                  v72 = v227;
                  if ((*(*v29 + 16))(v29))
                  {
                    if (!*(v29 + 40))
                    {
                      goto LABEL_470;
                    }

                    v20 = *(v29 + 56);
                    v56 = (*(*v29 + 16))(v29);
                  }

                  else
                  {
                    v56 = 0;
                    v20 = 0;
                  }

                  v52 = (*(*v29 + 16))(v29);
                  if (v52)
                  {
                    v85 = 0;
                    v86 = v54;
                    v87 = v52;
                    do
                    {
                      if (v56 == v85)
                      {
                        goto LABEL_459;
                      }

                      v52 = memcpy(v72, (v20 + 8 * v85++), v50);
                      v72 = (v72 + v86);
                    }

                    while (v87 != v85);
                  }
                }

                else
                {
                  v55 = v227;
                  if ((*(*v29 + 16))(v29))
                  {
                    if (!*(v29 + 40))
                    {
                      goto LABEL_469;
                    }

                    v20 = *(v29 + 56);
                    v183 = (*(*v29 + 16))(v29);
                  }

                  else
                  {
                    v183 = 0;
                    v20 = 0;
                  }

                  v52 = (*(*v29 + 16))(v29);
                  if (v52)
                  {
                    v88 = v183;
                    v56 = v52;
                    do
                    {
                      if (!v88)
                      {
                        goto LABEL_458;
                      }

                      v52 = memcpy(v55, v20, v50);
                      v55 = (v55 + v54);
                      v20 += 16;
                      --v88;
                      --v56;
                    }

                    while (v56);
                  }
                }

                goto LABEL_240;
              }

              goto LABEL_146;
            }

            if (v53 != 8)
            {
LABEL_168:
              if (v53 == 9)
              {
                a1 = v227;
                if ((*(*v29 + 16))(v29))
                {
                  if (!*(v29 + 40))
                  {
                    goto LABEL_468;
                  }

                  v71 = v51;
                  v20 = *(v29 + 56);
                  v56 = (*(*v29 + 16))(v29);
                }

                else
                {
                  v71 = v51;
                  v56 = 0;
                  v20 = 0;
                }

                v52 = (*(*v29 + 16))(v29);
                if (v52)
                {
                  v32 = 0;
                  v50 = v50;
                  v84 = v71;
                  v54 = v52;
                  do
                  {
                    if (v56 == v32)
                    {
                      goto LABEL_450;
                    }

                    v52 = memcpy(a1, (v20 + v32++), v50);
                    a1 += v84;
                  }

                  while (v54 != v32);
                }
              }

              else
              {
                v64 = v51;
                if (v53 == 10)
                {
                  a1 = v227;
                  if ((*(*v29 + 16))(v29))
                  {
                    if (!*(v29 + 40))
                    {
                      goto LABEL_465;
                    }

                    v20 = *(v29 + 56);
                    v56 = (*(*v29 + 16))(v29);
                  }

                  else
                  {
                    v56 = 0;
                    v20 = 0;
                  }

                  v52 = (*(*v29 + 16))(v29);
                  if (v52)
                  {
                    v32 = 0;
                    v50 = v50;
                    v80 = v64;
                    v54 = v52;
                    do
                    {
                      if (v56 == v32)
                      {
                        goto LABEL_451;
                      }

                      v52 = memcpy(a1, (v20 + v32++), v50);
                      a1 += v80;
                    }

                    while (v54 != v32);
                  }
                }
              }

              goto LABEL_240;
            }

            v20 = v227;
            v73 = re::GeomAttribute::accessValues<int>(v29);
            v75 = v74;
            v52 = (*(*v29 + 16))(v29);
            if (v52)
            {
              v76 = v51;
              v54 = v75;
              v77 = v52;
              v56 = v54;
              do
              {
                if (!v56)
                {
                  goto LABEL_457;
                }

                v52 = memcpy(v20, v73, v50);
                v20 += v76;
                v73 += 16;
                --v56;
                --v77;
              }

              while (v77);
            }

LABEL_240:
            *&v233[32] = *&v226[0];
            v234 = *(v226 + 8);
            v236 = v227;
            v235 = 1;
            LOBYTE(v237) = v179;
            HIBYTE(v237) = v180 == 1;
            v89.n128_f64[0] = re::DynamicArray<re::MeshAssetBuffer>::add(&v188, v233);
            a1 = v182;
            v23 = v187;
            v20 = "skinnedAnimationRemappedJointIndices";
            if (*&v233[32])
            {
              if (v236)
              {
                (*(**&v233[32] + 40))(v89.n128_f64[0]);
              }

              v236 = 0;
              v234 = 0uLL;
              *&v233[32] = 0;
              ++v235;
            }

            if (*v233 && (v233[8] & 1) != 0)
            {
              (*(**v233 + 40))(v89);
            }

            goto LABEL_247;
          }

          if (*(v29 + 17) > 1u)
          {
            if (v53 != 2)
            {
              LOBYTE(v54) = v51;
              if (v53 != 3)
              {
                v20 = v227;
                v57 = re::GeomAttribute::accessValues<int>(v29);
                v59 = v58;
                v52 = (*(*v29 + 16))(v29);
                if (v52)
                {
                  v60 = v51;
                  v54 = v59;
                  v61 = v52;
                  v56 = v54;
                  do
                  {
                    if (!v56)
                    {
                      goto LABEL_456;
                    }

                    v52 = memcpy(v20, v57, v50);
                    v20 += v60;
                    v57 += 4;
                    --v56;
                    --v61;
                  }

                  while (v61);
                }

                goto LABEL_240;
              }

              goto LABEL_176;
            }

LABEL_181:
            v20 = v227;
            a1 = re::GeomAttribute::accessValues<int>(v29);
            v69 = v68;
            v52 = (*(*v29 + 16))(v29);
            if (v52)
            {
              v50 = v50;
              v70 = v51;
              v54 = v69;
              v32 = v52;
              v56 = v54;
              do
              {
                if (!v56)
                {
                  goto LABEL_447;
                }

                v52 = memcpy(v20, a1, v50);
                v20 += v70;
                a1 += 4;
                --v56;
                --v32;
              }

              while (v32);
            }

            goto LABEL_240;
          }

LABEL_164:
          if (*(v29 + 17))
          {
            a1 = v227;
            if ((*(*v29 + 16))(v29))
            {
              v20 = re::internal::GeomTypedAttribute<unsigned short>::operator[](v29);
              v54 = (*(*v29 + 16))(v29);
            }

            else
            {
              v54 = 0;
              v20 = 0;
            }

            v52 = (*(*v29 + 16))(v29);
            if (v52)
            {
              v50 = v50;
              v32 = v51;
              v79 = v54;
              v56 = v52;
              do
              {
                if (!v79)
                {
                  goto LABEL_448;
                }

                v52 = memcpy(a1, v20, v50);
                a1 += v32;
                v20 += 2;
                --v79;
                --v56;
              }

              while (v56);
            }
          }

          else
          {
            a1 = v227;
            if ((*(*v29 + 16))(v29))
            {
              if (!*(v29 + 40))
              {
                goto LABEL_466;
              }

              v20 = *(v29 + 56);
              v54 = (*(*v29 + 16))(v29);
            }

            else
            {
              v54 = 0;
              v20 = 0;
            }

            v52 = (*(*v29 + 16))(v29);
            if (v52)
            {
              v50 = v50;
              v32 = v51;
              v78 = v54;
              v56 = v52;
              do
              {
                if (!v78)
                {
                  goto LABEL_452;
                }

                v52 = memcpy(a1, v20, v50);
                a1 += v32;
                v20 += 2;
                --v78;
                --v56;
              }

              while (v56);
            }
          }

          goto LABEL_240;
        }

        if (*(v29 + 17) <= 4u)
        {
          if (*(v29 + 17) <= 1u)
          {
            goto LABEL_164;
          }

          if (v53 == 2)
          {
            goto LABEL_181;
          }

          LOBYTE(v54) = v51;
          if (v53 == 3)
          {
LABEL_176:
            v20 = v227;
            a1 = re::GeomAttribute::accessValues<int>(v29);
            v66 = v65;
            v52 = (*(*v29 + 16))(v29);
            if (v52)
            {
              v50 = v50;
              v67 = v54;
              v54 = v66;
              v32 = v52;
              v56 = v54;
              do
              {
                if (!v56)
                {
                  goto LABEL_449;
                }

                v52 = memcpy(v20, a1, v50);
                v20 += v67;
                a1 += 4;
                --v56;
                --v32;
              }

              while (v32);
            }

            goto LABEL_240;
          }
        }

        else
        {
          if (*(v29 + 17) > 8u)
          {
            goto LABEL_168;
          }

          v54 = v51;
          if ((v53 - 6) >= 3)
          {
            if (v53 == 5)
            {
LABEL_146:
              v52 = (*(*v29 + 16))(v29);
              if (v52)
              {
                if (!*(v29 + 40))
                {
                  goto LABEL_467;
                }

                v56 = *(v29 + 56);
                v52 = (*(*v29 + 16))(v29);
                v50 = v52;
              }

              else
              {
                v50 = 0;
                v56 = 0;
              }

              if (v183)
              {
                v81 = 0;
                v82 = v227;
                do
                {
                  if (v50 == v81)
                  {
                    goto LABEL_453;
                  }

                  v83 = *(v56 + 8 * v81);
                  *v82 = v83;
                  ++v81;
                  v82 = (v82 + v54);
                }

                while (v183 != v81);
              }

              goto LABEL_240;
            }

            goto LABEL_240;
          }
        }

        v62 = *(a1 + 4);
        v63 = *a1;
        if (v63 == 2)
        {
          v52 = re::fillStreamSN8(v29, v227, v54, 0, v62);
        }

        else if (v63 == 1)
        {
          v52 = re::fillStreamUN8(v29, v227, v54, 0, v62);
        }

        else if (!*a1)
        {
          v52 = re::fillStreamFP16(v29, v227, v54, 0, v62);
        }

        goto LABEL_240;
      }

      if (v35 != 5)
      {
        if (v35 != 6)
        {
          if (v35 != 7)
          {
            goto LABEL_131;
          }

          if (v20 == 0x7FFFFFFF)
          {
            goto LABEL_131;
          }

          v37 = *a1;
          if (v37 >= 3)
          {
            goto LABEL_131;
          }

          v38 = 8 * (v37 & 0x1F);
          v39 = 722970;
          goto LABEL_128;
        }

        if (v20 != 0x7FFFFFFF)
        {
          v44 = *a1;
          if (v44 < 3)
          {
            v38 = 8 * (v44 & 0x1F);
            v39 = 657177;
LABEL_128:
            v36 = v39 >> v38;
            goto LABEL_131;
          }
        }

        LOBYTE(v36) = 29;
        goto LABEL_131;
      }

      if (v20 != 0x7FFFFFFF)
      {
        v47 = *re::pipelineLogObjects(v33);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E1C61000, v47, OS_LOG_TYPE_DEFAULT, "Mesh attribute type kDouble is not supported for compression.", buf, 2u);
        }
      }
    }

    LOBYTE(v36) = 28;
    goto LABEL_131;
  }

LABEL_248:
  v90 = a9;
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v220);
  v54 = v181;
  if (&v188 != a9)
  {
    v92 = *a9;
    if (*a9 && v188 && v92 != v188)
    {
LABEL_464:
      re::internal::assertLog(4, v91, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
      _os_crash();
      __break(1u);
LABEL_465:
      *v238 = 0;
      v248 = 0u;
      v249 = 0u;
      v246 = 0u;
      v247 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v223 = 136315906;
      *&v223[4] = "operator[]";
      *&v223[12] = 1024;
      *&v223[14] = 797;
      *&v223[18] = 2048;
      *&v223[20] = 0;
      v224 = 2048;
      *v225 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_466:
      *v238 = 0;
      v248 = 0u;
      v249 = 0u;
      v246 = 0u;
      v247 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v223 = 136315906;
      *&v223[4] = "operator[]";
      *&v223[12] = 1024;
      *&v223[14] = 797;
      *&v223[18] = 2048;
      *&v223[20] = 0;
      v224 = 2048;
      *v225 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_467:
      *v238 = 0;
      v248 = 0u;
      v249 = 0u;
      v246 = 0u;
      v247 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v223 = 136315906;
      *&v223[4] = "operator[]";
      *&v223[12] = 1024;
      *&v223[14] = 797;
      *&v223[18] = 2048;
      *&v223[20] = 0;
      v224 = 2048;
      *v225 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_468:
      *v238 = 0;
      v248 = 0u;
      v249 = 0u;
      v246 = 0u;
      v247 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v223 = 136315906;
      *&v223[4] = "operator[]";
      *&v223[12] = 1024;
      *&v223[14] = 797;
      *&v223[18] = 2048;
      *&v223[20] = 0;
      v224 = 2048;
      *v225 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_469:
      *v238 = 0;
      v248 = 0u;
      v249 = 0u;
      v246 = 0u;
      v247 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v223 = 136315906;
      *&v223[4] = "operator[]";
      *&v223[12] = 1024;
      *&v223[14] = 797;
      *&v223[18] = 2048;
      *&v223[20] = 0;
      v224 = 2048;
      *v225 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_470:
      *v238 = 0;
      v248 = 0u;
      v249 = 0u;
      v246 = 0u;
      v247 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v223 = 136315906;
      *&v223[4] = "operator[]";
      *&v223[12] = 1024;
      *&v223[14] = 797;
      *&v223[18] = 2048;
      *&v223[20] = 0;
      v224 = 2048;
      *v225 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *a9 = v188;
    v188 = v92;
    v93 = *(a9 + 1);
    *(a9 + 1) = v189;
    v189 = v93;
    v94 = a9[4];
    a9[4] = v191[0];
    v191[0] = v94;
    ++v190;
    ++*(a9 + 6);
  }

  re::DynamicArray<re::MeshAssetBuffer>::deinit(&v188);
  v95 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((a9 + 25), a7);
  v96 = v176;
  if (v211 && v209)
  {
    if (v248)
    {
      v97.n128_f64[0] = re::DynamicArray<re::MeshAssetBuffer>::add(a9, buf);
    }

    if (v247)
    {
      if (v249)
      {
        (*(*v247 + 40))(v97);
      }

      *&v249 = 0;
      *&v248 = 0;
      v247 = 0uLL;
      ++DWORD2(v248);
    }

    v95 = *buf;
    if (*buf && (buf[8] & 1) != 0)
    {
      v95 = (*(**buf + 40))(v97);
    }
  }

  v98 = v186;
  if (v206 && v204)
  {
    if (v248)
    {
      v99.n128_f64[0] = re::DynamicArray<re::MeshAssetBuffer>::add(a9, buf);
    }

    if (v247)
    {
      if (v249)
      {
        (*(*v247 + 40))(v99);
      }

      *&v249 = 0;
      *&v248 = 0;
      v247 = 0uLL;
      ++DWORD2(v248);
    }

    v95 = *buf;
    if (*buf && (buf[8] & 1) != 0)
    {
      v95 = (*(**buf + 40))(v99);
    }
  }

  if (v201 && v199)
  {
    if (v248)
    {
      v100.n128_f64[0] = re::DynamicArray<re::MeshAssetBuffer>::add(a9, buf);
    }

    if (v247)
    {
      if (v249)
      {
        (*(*v247 + 40))(v100);
      }

      *&v249 = 0;
      *&v248 = 0;
      v247 = 0uLL;
      ++DWORD2(v248);
    }

    v95 = *buf;
    if (*buf && (buf[8] & 1) != 0)
    {
      v95 = (*(**buf + 40))(v100);
    }
  }

  v32 = *v181;
  v56 = (3 * *v176);
  v196 = 0;
  v197 = 0;
  v198 = 0;
  if (v32 <= 0)
  {
    v50 = v197;
    v54 = v198;
    goto LABEL_295;
  }

  v101 = 0;
  v102 = 0;
  v103 = *v181;
  v50 = v197;
  do
  {
    if (v102 == v103)
    {
      goto LABEL_433;
    }

    v226[0] = *(*(v186 + 7) + 16 * v102);
    v104 = v226;
    v54 = v198;
    v20 = v101;
    v105 = 3;
    do
    {
      if (v50 <= v20)
      {
        v188 = 0;
        v248 = 0u;
        v249 = 0u;
        v246 = 0u;
        v247 = 0u;
        *buf = 0u;
        v90 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v233 = 136315906;
        *&v233[4] = "operator[]";
        *&v233[12] = 1024;
        *&v233[14] = 468;
        *&v233[18] = 2048;
        *&v233[20] = v20;
        *&v233[28] = 2048;
        *&v233[30] = v50;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_339;
      }

      v106 = *v104++;
      *(v54 + 4 * v20++) = v106;
      --v105;
    }

    while (v105);
    ++v102;
    v101 += 3;
  }

  while (v102 != (v32 & 0x7FFFFFFF));
LABEL_295:
  v107 = 1;
  *&v247 = 0;
  if (HIWORD(v184))
  {
    v107 = 2;
  }

  *&v246 = 0;
  memset(buf, 0, sizeof(buf));
  DWORD2(v246) = 0;
  re::DynamicArray<BOOL>::resize(buf, ((v50 << v107) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v109 = v247;
  if (HIWORD(v184))
  {
    for (; v50; --v50)
    {
      v110 = *v54;
      v54 += 4;
      *v109++ = v110;
    }

    v111 = 36;
  }

  else
  {
    for (; v50; --v50)
    {
      v112 = *v54;
      v54 += 4;
      *v109 = v112;
      v109 = (v109 + 2);
    }

    v111 = 49;
  }

  re::DynamicArray<BOOL>::DynamicArray(v191, buf);
  v194 = v111;
  v195 = 0;
  if (*buf && v247)
  {
    (*(**buf + 40))();
  }

  v113 = re::DynamicArray<re::MeshAssetBuffer>::add(a9, &v188);
  *(a9 + 10) = v56;
  *(a9 + 44) = HIWORD(v184) != 0;
  *(a9 + 12) = v184;
  *(a9 + 15) = *v174;
  *(a9 + 28) = v175;
  if ((*(a1 + 9) & 1) == 0)
  {
    goto LABEL_360;
  }

  v50 = *v172;
  v114 = v197;
  memset(v233, 0, 32);
  v54 = v233;
  re::DynamicString::setCapacity(v233, 0);
  v236 = 0;
  *&v233[32] = 0;
  v234 = 0uLL;
  v235 = 0;
  v237 = 256;
  *buf = "tension";
  *&buf[8] = 7;
  re::DynamicString::operator=(v233, buf);
  v237 = 284;
  re::DynamicArray<BOOL>::resize(&v233[32], 4 * v50);
  re::DynamicArray<re::MeshAssetBuffer>::add(a9, v233);
  if (!re::internal::GeomAttributeManager::attributeByName(v187, "vertexAdjacencies"))
  {
    goto LABEL_353;
  }

  v115 = re::internal::GeomAttributeManager::attributeByName(v187, "accumulatedVertexValence");
  if (!v115)
  {
    goto LABEL_353;
  }

  memset(v226, 0, sizeof(v226));
  v32 = v226;
  re::DynamicString::setCapacity(v226, 0);
  __dst = 0;
  __n = 0;
  v227 = 0;
  v228 = 0;
  v230 = 0;
  v232 = 256;
  *buf = "adjacentFaceArea";
  *&buf[8] = 16;
  re::DynamicString::operator=(v226, buf);
  v232 = 284;
  re::DynamicArray<BOOL>::resize(&v227, 4 * v50);
  *&v225[2] = 0;
  memset(v223, 0, sizeof(v223));
  v116 = *v176;
  if (v116)
  {
    re::DynamicArray<int>::setCapacity(v223, v116);
  }

  v117 = re::GeomMesh::accessVertexPositions(v186);
  if (v114)
  {
    v20 = v117;
    v103 = v118;
    v56 = 0;
    while (1)
    {
      a1 = v197;
      if (v197 <= v56)
      {
        goto LABEL_439;
      }

      v54 = *(v198 + v56);
      if (v54 >= v103)
      {
        break;
      }

      v96 = v56 + 1;
      if (v197 <= v56 + 1)
      {
        goto LABEL_441;
      }

      v119 = v198 + 4 * v56;
      v96 = *(v119 + 1);
      if (v96 >= v103)
      {
        goto LABEL_442;
      }

      v32 = v56 + 2;
      if (v197 <= v56 + 2)
      {
        goto LABEL_443;
      }

      a1 = *(v119 + 2);
      if (a1 >= v103)
      {
        goto LABEL_444;
      }

      v120 = *(v20 + 16 * v54);
      v121 = vsubq_f32(*(v20 + 16 * v96), v120);
      v122 = vsubq_f32(*(v20 + 16 * a1), v120);
      v123 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v122, v122), v122, 0xCuLL), vnegq_f32(v121)), v122, vextq_s8(vuzp1q_s32(v121, v121), v121, 0xCuLL));
      v124 = vmulq_f32(v123, v123);
      *buf = sqrtf(v124.f32[1] + (v124.f32[2] + v124.f32[0])) * 0.5;
      re::DynamicArray<float>::add(v223, buf);
      v56 += 3;
      if (v56 >= v114)
      {
        goto LABEL_321;
      }
    }

LABEL_440:
    *v238 = 0;
    v248 = 0u;
    v249 = 0u;
    v246 = 0u;
    v247 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v220 = 136315906;
    *&v220[4] = "operator[]";
    *&v220[12] = 1024;
    *&v220[14] = 613;
    *&v220[18] = 2048;
    *&v220[20] = v54;
    v221 = 2048;
    *v222 = v103;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_441:
    *v238 = 0;
    v248 = 0u;
    v249 = 0u;
    v246 = 0u;
    v247 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v220 = 136315906;
    *&v220[4] = "operator[]";
    *&v220[12] = 1024;
    *&v220[14] = 476;
    *&v220[18] = 2048;
    *&v220[20] = v96;
    v221 = 2048;
    *v222 = a1;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_442:
    *v238 = 0;
    v248 = 0u;
    v249 = 0u;
    v246 = 0u;
    v247 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v220 = 136315906;
    *&v220[4] = "operator[]";
    *&v220[12] = 1024;
    *&v220[14] = 613;
    *&v220[18] = 2048;
    *&v220[20] = v96;
    v221 = 2048;
    *v222 = v103;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_443:
    *v238 = 0;
    v248 = 0u;
    v249 = 0u;
    v246 = 0u;
    v247 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v220 = 136315906;
    *&v220[4] = "operator[]";
    *&v220[12] = 1024;
    *&v220[14] = 476;
    *&v220[18] = 2048;
    *&v220[20] = v32;
    v221 = 2048;
    *v222 = a1;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_444:
    *v238 = 0;
    v248 = 0u;
    v249 = 0u;
    v246 = 0u;
    v247 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v220 = 136315906;
    *&v220[4] = "operator[]";
    *&v220[12] = 1024;
    *&v220[14] = 613;
    *&v220[18] = 2048;
    *&v220[20] = a1;
    v221 = 2048;
    *v222 = v103;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_445;
  }

LABEL_321:
  v125 = re::internal::GeomAttributeManager::attributeByName(v187, "vertexAdjacencies");
  v185 = re::GeomAttribute::accessValues<int>(v125);
  v103 = v126;
  v127 = re::internal::GeomAttributeManager::attributeByName(v187, "accumulatedVertexValence");
  v128 = re::GeomAttribute::accessValues<int>(v127);
  *&v222[2] = 0;
  memset(v220, 0, sizeof(v220));
  if (!v50)
  {
LABEL_339:
    v136 = 0;
    goto LABEL_340;
  }

  v98 = v128;
  LODWORD(a1) = v129;
  v32 = v238;
  re::DynamicArray<int>::setCapacity(v220, v50);
  v56 = 0;
  a1 = a1;
  do
  {
    if (v56)
    {
      v54 = v56 - 1;
      if (v56 - 1 >= a1)
      {
        goto LABEL_455;
      }

      v130 = *(v98 + 4 * v54);
    }

    else
    {
      v130 = 0;
    }

    if (v56 == a1)
    {
      goto LABEL_454;
    }

    v131 = *(v98 + 4 * v56);
    v132 = 0.0;
    v133 = v131 - v130;
    if (v131 > v130)
    {
      v96 = *&v223[16];
      if (v130 <= v103)
      {
        v54 = v103;
      }

      else
      {
        v54 = v130;
      }

      v134 = (v185 + 4 * v130);
      v135 = (v54 - v130);
      while (v135)
      {
        v20 = *v134;
        if (*&v223[16] <= v20)
        {
          goto LABEL_432;
        }

        v132 = v132 + *(*&v225[2] + 4 * v20);
        ++v134;
        ++v130;
        --v135;
        if (v131 <= v130)
        {
          goto LABEL_336;
        }
      }

      v219 = 0;
      v248 = 0u;
      v249 = 0u;
      v246 = 0u;
      v247 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v238 = 136315906;
      *&v238[4] = "operator[]";
      v239 = 1024;
      v240 = 613;
      v241 = 2048;
      v242 = v54;
      v243 = 2048;
      v244 = v103;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_432:
      v219 = 0;
      v248 = 0u;
      v249 = 0u;
      v246 = 0u;
      v247 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v238 = 136315906;
      *&v238[4] = "operator[]";
      v239 = 1024;
      v240 = 789;
      v241 = 2048;
      v242 = v20;
      v243 = 2048;
      v244 = v96;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_433:
      *&v226[0] = 0;
      v248 = 0u;
      v249 = 0u;
      v246 = 0u;
      v247 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v233 = 136315906;
      *&v233[4] = "operator[]";
      *&v233[12] = 1024;
      *&v233[14] = 797;
      *&v233[18] = 2048;
      *&v233[20] = v103;
      *&v233[28] = 2048;
      *&v233[30] = v103;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_434;
    }

LABEL_336:
    *buf = v132 / v133;
    re::DynamicArray<float>::add(v220, buf);
    ++v56;
  }

  while (v56 != v50);
  v136 = *&v222[2];
LABEL_340:
  memcpy(__dst, v136, __n);
  re::DynamicArray<re::MeshAssetBuffer>::add(v90, v226);
  a1 = v182;
  if (*v220 && *&v222[2])
  {
    (*(**v220 + 40))(*v220, *&v222[2]);
  }

  if (*v223 && *&v225[2])
  {
    (*(**v223 + 40))(*v223, *&v225[2]);
  }

  if (v227)
  {
    if (__dst)
    {
      (*(*v227 + 40))(v227, __dst);
    }

    __dst = 0;
    v228 = 0;
    __n = 0;
    v227 = 0;
    ++v230;
  }

  if (*&v226[0] && (BYTE8(v226[0]) & 1) != 0)
  {
    (*(**&v226[0] + 40))(*&v226[0], *&v226[1]);
  }

LABEL_353:
  v98 = v186;
  if (*&v233[32])
  {
    if (v236)
    {
      (*(**&v233[32] + 40))(*&v233[32], v236);
    }

    v236 = 0;
    v234 = 0uLL;
    *&v233[32] = 0;
    ++v235;
  }

  if (*v233 && (v233[8] & 1) != 0)
  {
    (*(**v233 + 40))(*v233, *&v233[16]);
  }

LABEL_360:
  v56 = a10;
  re::UniqueNameGenerator::uniqueName(v173, *v178, "MeshPart", buf);
  v137 = re::StringID::operator=((v90 + 9), buf);
  if (buf[0])
  {
    if (buf[0])
    {
    }
  }

  if (!a10 || !re::meshHasSkinningData(v98, v138))
  {
    goto LABEL_397;
  }

  v140 = re::internal::GeomAttributeManager::attributeByName(v187, "skeletonPath");
  v20 = re::internal::GeomAttributeManager::attributeByName(v187, "skinnedAnimationGeometryBindTransform");
  v141 = re::internal::GeomAttributeManager::attributeByName(v187, "skinnedAnimationWeights");
  v142 = re::internal::GeomAttributeManager::attributeByName(v187, "skinnedAnimationJointIndices");
  v50 = re::internal::GeomAttributeManager::attributeByName(v187, "skinnedAnimationInfluenceEndIndices");
  v143 = re::internal::GeomTypedAttribute<unsigned short>::operator[](v140);
  *v233 = 0;
  *&v233[8] = &str_67;
  v144 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v233 >> 31) ^ (*v233 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v233 >> 31) ^ (*v233 >> 1))) >> 27));
  v32 = a6;
  v145 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a6, v233, v144 ^ (v144 >> 31), buf);
  if (*&buf[12] == 0x7FFFFFFF)
  {
    if (v233[0])
    {
      if (v233[0])
      {
      }
    }

    v146 = 0;
  }

  else
  {
    v32 = *(a6 + 16) + 32 * *&buf[12];
    if (v233[0])
    {
      if (v233[0])
      {
      }
    }

    v146 = *(v32 + 24);
  }

  *a10 = v146;
  v147 = re::GeomAttribute::accessValues<int>(v20);
  LOBYTE(v20) = v148;
  if (!v148)
  {
    goto LABEL_460;
  }

  if (v148 == 1)
  {
LABEL_461:
    *&v226[0] = 0;
    v248 = 0u;
    v249 = 0u;
    v246 = 0u;
    v247 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v233 = 136315906;
    *&v233[4] = "operator[]";
    *&v233[12] = 1024;
    *&v233[14] = 613;
    *&v233[18] = 2048;
    *&v233[20] = 1;
    *&v233[28] = 2048;
    *&v233[30] = 1;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_462;
  }

  if (v148 <= 2)
  {
LABEL_462:
    *&v226[0] = 0;
    v248 = 0u;
    v249 = 0u;
    v246 = 0u;
    v247 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v233 = 136315906;
    *&v233[4] = "operator[]";
    *&v233[12] = 1024;
    *&v233[14] = 613;
    *&v233[18] = 2048;
    *&v233[20] = 2;
    *&v233[28] = 2048;
    *&v233[30] = v20 & 3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_463;
  }

  if (v148 == 3)
  {
LABEL_463:
    *&v226[0] = 0;
    v248 = 0u;
    v249 = 0u;
    v246 = 0u;
    v247 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v233 = 136315906;
    *&v233[4] = "operator[]";
    *&v233[12] = 1024;
    *&v233[14] = 613;
    *&v233[18] = 2048;
    *&v233[20] = 3;
    *&v233[28] = 2048;
    *&v233[30] = 3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_464;
  }

  v149 = v147[1];
  v150 = v147[2];
  v151 = v147[3];
  *(a10 + 80) = *v147;
  *(a10 + 96) = v149;
  *(a10 + 112) = v150;
  *(a10 + 128) = v151;
  v96 = (*(*v141 + 16))(v141);
  (*(*v142 + 16))(v142);
  v54 = re::GeomAttribute::accessValues<int>(v141);
  LODWORD(v98) = v152;
  v103 = re::GeomAttribute::accessValues<int>(v142);
  LODWORD(a1) = v153;
  v20 = v96;
  if (v96)
  {
    v154 = 0;
    v96 = *(a10 + 16);
    v98 = v98;
    a1 = a1;
    v155 = (*(a10 + 24) + 4);
    while (v98 != v154)
    {
      if (a1 == v154)
      {
        goto LABEL_435;
      }

      if (v96 == v154)
      {
        goto LABEL_436;
      }

      v156 = *(v54 + 4 * v154);
      *(v155 - 1) = *(v103 + 4 * v154);
      *v155 = v156;
      v155 += 2;
      if (v20 == ++v154)
      {
        goto LABEL_384;
      }
    }

LABEL_434:
    *&v226[0] = 0;
    v248 = 0u;
    v249 = 0u;
    v246 = 0u;
    v247 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v233 = 136315906;
    *&v233[4] = "operator[]";
    *&v233[12] = 1024;
    *&v233[14] = 613;
    *&v233[18] = 2048;
    *&v233[20] = v98;
    *&v233[28] = 2048;
    *&v233[30] = v98;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_435:
    *&v226[0] = 0;
    v248 = 0u;
    v249 = 0u;
    v246 = 0u;
    v247 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v233 = 136315906;
    *&v233[4] = "operator[]";
    *&v233[12] = 1024;
    *&v233[14] = 613;
    *&v233[18] = 2048;
    *&v233[20] = a1;
    *&v233[28] = 2048;
    *&v233[30] = a1;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_436:
    *&v226[0] = 0;
    v248 = 0u;
    v249 = 0u;
    v246 = 0u;
    v247 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v233 = 136315906;
    *&v233[4] = "operator[]";
    *&v233[12] = 1024;
    *&v233[14] = 468;
    *&v233[18] = 2048;
    *&v233[20] = v96;
    *&v233[28] = 2048;
    *&v233[30] = v96;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_437:
    *&v226[0] = 0;
    v248 = 0u;
    v249 = 0u;
    v246 = 0u;
    v247 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v233 = 136315906;
    *&v233[4] = "operator[]";
    *&v233[12] = 1024;
    *&v233[14] = 613;
    *&v233[18] = 2048;
    *&v233[20] = v20;
    *&v233[28] = 2048;
    *&v233[30] = v20;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_438:
    *&v226[0] = 0;
    v248 = 0u;
    v249 = 0u;
    v246 = 0u;
    v247 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v233 = 136315906;
    *&v233[4] = "operator[]";
    *&v233[12] = 1024;
    *&v233[14] = 468;
    *&v233[18] = 2048;
    *&v233[20] = v98;
    *&v233[28] = 2048;
    *&v233[30] = v98;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_439:
    *v238 = 0;
    v248 = 0u;
    v249 = 0u;
    v246 = 0u;
    v247 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v220 = 136315906;
    *&v220[4] = "operator[]";
    *&v220[12] = 1024;
    *&v220[14] = 476;
    *&v220[18] = 2048;
    *&v220[20] = v56;
    v221 = 2048;
    *v222 = a1;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_440;
  }

LABEL_384:
  v157 = (*(*v50 + 16))(v50);
  v54 = re::GeomAttribute::accessValues<int>(v50);
  LODWORD(v20) = v158;
  v103 = v157;
  a1 = v182;
  if (v157)
  {
    v159 = 0;
    v98 = *(a10 + 40);
    v160 = *(a10 + 48);
    v20 = v20;
    while (v20 != v159)
    {
      if (v98 == v159)
      {
        goto LABEL_438;
      }

      *(v160 + 4 * v159) = *(v54 + 4 * v159);
      v159 = (v159 + 1);
      if (v103 == v159)
      {
        goto LABEL_389;
      }
    }

    goto LABEL_437;
  }

LABEL_389:
  v161 = re::internal::GeomAttributeManager::attributeByName(v187, "skinnedAnimationRemappedJointIndices");
  if (v161)
  {
    v162 = v161;
    v163 = (*(*v161 + 16))(v161);
    v50 = re::GeomAttribute::accessValues<int>(v162);
    LODWORD(v54) = v164;
    v32 = v163;
    v98 = v186;
    if (v163)
    {
      v165 = 0;
      v103 = *(a10 + 64);
      v166 = *(a10 + 72);
      v54 = v54;
      while (v54 != v165)
      {
        if (v103 == v165)
        {
          goto LABEL_446;
        }

        *(v166 + 4 * v165) = *(v50 + 4 * v165);
        if (v32 == ++v165)
        {
          goto LABEL_397;
        }
      }

LABEL_445:
      *&v226[0] = 0;
      v248 = 0u;
      v249 = 0u;
      v246 = 0u;
      v247 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v233 = 136315906;
      *&v233[4] = "operator[]";
      *&v233[12] = 1024;
      *&v233[14] = 613;
      *&v233[18] = 2048;
      *&v233[20] = v54;
      *&v233[28] = 2048;
      *&v233[30] = v54;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_446:
      *&v226[0] = 0;
      v248 = 0u;
      v249 = 0u;
      v246 = 0u;
      v247 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v233 = 136315906;
      *&v233[4] = "operator[]";
      *&v233[12] = 1024;
      *&v233[14] = 468;
      *&v233[18] = 2048;
      *&v233[20] = v103;
      *&v233[28] = 2048;
      *&v233[30] = v103;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_447:
      *v238 = 0;
      v248 = 0u;
      v249 = 0u;
      v246 = 0u;
      v247 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v223 = 136315906;
      *&v223[4] = "operator[]";
      *&v223[12] = 1024;
      *&v223[14] = 613;
      *&v223[18] = 2048;
      *&v223[20] = v54;
      v224 = 2048;
      *v225 = v54;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_448:
      *v238 = 0;
      v248 = 0u;
      v249 = 0u;
      v246 = 0u;
      v247 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v223 = 136315906;
      *&v223[4] = "operator[]";
      *&v223[12] = 1024;
      *&v223[14] = 613;
      *&v223[18] = 2048;
      *&v223[20] = v54;
      v224 = 2048;
      *v225 = v54;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_449:
      *v238 = 0;
      v248 = 0u;
      v249 = 0u;
      v246 = 0u;
      v247 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v223 = 136315906;
      *&v223[4] = "operator[]";
      *&v223[12] = 1024;
      *&v223[14] = 613;
      *&v223[18] = 2048;
      *&v223[20] = v54;
      v224 = 2048;
      *v225 = v54;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_450:
      *v238 = 0;
      v248 = 0u;
      v249 = 0u;
      v246 = 0u;
      v247 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v223 = 136315906;
      *&v223[4] = "operator[]";
      *&v223[12] = 1024;
      *&v223[14] = 613;
      *&v223[18] = 2048;
      *&v223[20] = v56;
      v224 = 2048;
      *v225 = v56;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_451:
      *v238 = 0;
      v248 = 0u;
      v249 = 0u;
      v246 = 0u;
      v247 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v223 = 136315906;
      *&v223[4] = "operator[]";
      *&v223[12] = 1024;
      *&v223[14] = 613;
      *&v223[18] = 2048;
      *&v223[20] = v56;
      v224 = 2048;
      *v225 = v56;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_452:
      *v238 = 0;
      v248 = 0u;
      v249 = 0u;
      v246 = 0u;
      v247 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v223 = 136315906;
      *&v223[4] = "operator[]";
      *&v223[12] = 1024;
      *&v223[14] = 613;
      *&v223[18] = 2048;
      *&v223[20] = v54;
      v224 = 2048;
      *v225 = v54;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_453:
      *v238 = 0;
      v248 = 0u;
      v249 = 0u;
      v246 = 0u;
      v247 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v223 = 136315906;
      *&v223[4] = "operator[]";
      *&v223[12] = 1024;
      *&v223[14] = 613;
      *&v223[18] = 2048;
      *&v223[20] = v50;
      v224 = 2048;
      *v225 = v50;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_454:
      v219 = 0;
      v248 = 0u;
      v249 = 0u;
      v246 = 0u;
      v247 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v238 = 136315906;
      *(v32 + 4) = "operator[]";
      v239 = 1024;
      *(v32 + 14) = 613;
      v241 = 2048;
      *(v32 + 20) = a1;
      v243 = 2048;
      *(v32 + 30) = a1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_455:
      v219 = 0;
      v248 = 0u;
      v249 = 0u;
      v246 = 0u;
      v247 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v238 = 136315906;
      *(v32 + 4) = "operator[]";
      v239 = 1024;
      *(v32 + 14) = 613;
      v241 = 2048;
      *(v32 + 20) = v54;
      v243 = 2048;
      *(v32 + 30) = a1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_456:
      *v238 = 0;
      v248 = 0u;
      v249 = 0u;
      v246 = 0u;
      v247 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v223 = 136315906;
      *&v223[4] = "operator[]";
      *&v223[12] = 1024;
      *&v223[14] = 613;
      *&v223[18] = 2048;
      *&v223[20] = v54;
      v224 = 2048;
      *v225 = v54;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_457:
      *v238 = 0;
      v248 = 0u;
      v249 = 0u;
      v246 = 0u;
      v247 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v223 = 136315906;
      *&v223[4] = "operator[]";
      *&v223[12] = 1024;
      *&v223[14] = 613;
      *&v223[18] = 2048;
      *&v223[20] = v54;
      v224 = 2048;
      *v225 = v54;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_458:
      *v238 = 0;
      v248 = 0u;
      v249 = 0u;
      v246 = 0u;
      v247 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v223 = 136315906;
      *&v223[4] = "operator[]";
      *&v223[12] = 1024;
      *&v223[14] = 613;
      *&v223[18] = 2048;
      *&v223[20] = v183;
      v224 = 2048;
      *v225 = v183;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_459:
      *v238 = 0;
      v248 = 0u;
      v249 = 0u;
      v246 = 0u;
      v247 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v223 = 136315906;
      *&v223[4] = "operator[]";
      *&v223[12] = 1024;
      *&v223[14] = 613;
      *&v223[18] = 2048;
      *&v223[20] = v56;
      v224 = 2048;
      *v225 = v56;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_460:
      *&v226[0] = 0;
      v248 = 0u;
      v249 = 0u;
      v246 = 0u;
      v247 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v233 = 136315906;
      *&v233[4] = "operator[]";
      *&v233[12] = 1024;
      *&v233[14] = 613;
      *&v233[18] = 2048;
      *&v233[20] = 0;
      *&v233[28] = 2048;
      *&v233[30] = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_461;
    }
  }

  else
  {
    *(a10 + 64) = 0;
    v98 = v186;
  }

LABEL_397:
  if (*(a1 + 6) == 1)
  {
    re::internal::makeOpenSubdivAssetBuffersAndAppendToAssetPart(v178, v90, v139);
  }

  re::computeAABB(v98, buf);
  v167 = v246;
  *(v90 + 6) = *buf;
  *(v90 + 7) = v167;
  re::computeOrientedBoundingBox(v98, buf);
  v169 = v246;
  *(v90 + 8) = *buf;
  *(v90 + 9) = v169;
  v170 = v248;
  *(v90 + 10) = v247;
  *(v90 + 11) = v170;
  if (v191[0])
  {
    v168 = v193;
    if (v193)
    {
      (*(*v191[0] + 40))(v191[0], v193);
    }

    v193 = 0;
    memset(v191, 0, sizeof(v191));
    ++v192;
  }

  if (v188 && (v189 & 1) != 0)
  {
    (*(*v188 + 40))(v188, *(&v189 + 1));
  }

  if (v196 && v197)
  {
    (*(*v196 + 40))(v196, v198);
  }

  if (v201)
  {
    if (v201 == 2)
    {
      re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v202);
      goto LABEL_416;
    }

    if (v201 == 1)
    {
      if (v202[0])
      {
        v168 = v203;
        if (v203)
        {
          (*(*v202[0] + 40))(v202[0], v203);
        }
      }

      goto LABEL_416;
    }

LABEL_474:
    re::internal::assertLog(4, v168, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
    _os_crash();
    __break(1u);
LABEL_475:
    re::internal::assertLog(4, v168, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
    _os_crash();
    __break(1u);
LABEL_476:
    re::internal::assertLog(4, v168, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
    _os_crash();
    __break(1u);
LABEL_477:
    re::internal::assertLog(4, v24, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
    _os_crash();
    __break(1u);
LABEL_478:
    re::internal::assertLog(4, v25, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
    _os_crash();
    __break(1u);
LABEL_479:
    re::internal::assertLog(4, v25, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
    _os_crash();
    __break(1u);
  }

  else
  {
LABEL_416:
    if (v206)
    {
      if (v206 == 2)
      {
        re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v207);
      }

      else
      {
        if (v206 != 1)
        {
          goto LABEL_475;
        }

        if (v207[0])
        {
          v168 = v208;
          if (v208)
          {
            (*(*v207[0] + 40))(v207[0], v208);
          }
        }
      }
    }

    if (v211)
    {
      if (v211 == 2)
      {
        re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v212);
      }

      else
      {
        if (v211 != 1)
        {
          goto LABEL_476;
        }

        if (v212[0])
        {
          if (v213)
          {
            (*(*v212[0] + 40))(v212[0], v213);
          }
        }
      }
    }

    re::GeomMesh::~GeomMesh(&v214);
  }
}

uint64_t re::DynamicArray<re::MeshAssetBuffer>::add(_anonymous_namespace_ *this, re::DynamicString *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::MeshAssetBuffer>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 80 * v4);
  re::DynamicString::DynamicString(v5, a2);
  result = re::DynamicArray<BOOL>::DynamicArray(v5 + 32, a2 + 4);
  *(v5 + 36) = *(a2 + 36);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::internal::GeomTypedAttribute<unsigned short>::operator[](uint64_t a1)
{
  if (!*(a1 + 40))
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 56);
}

{
  if (!*(a1 + 40))
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 56);
}

void re::anonymous namespace::anonymous namespace::makePartToModelIndexMappingHelper(uint64_t a1, uint64_t a2, char a3, unsigned int *a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  re::DynamicString::setCapacity(a1, 0);
  *(a1 + 64) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 32) = 0;
  *(a1 + 72) = 256;
  v15[0] = *(a2 + 8);
  v15[1] = strlen(v15[0]);
  re::DynamicString::operator=(a1, v15);
  re::DynamicArray<BOOL>::resize(a1 + 32, 4 * *a4);
  *(a1 + 73) = a3;
  *(a1 + 72) = 36;
  v9 = *a4;
  if (v9)
  {
    v10 = 0;
    v11 = *(a1 + 64);
    do
    {
      LODWORD(v15[0]) = v10;
      v12 = *(a4 + 12);
      if (v12 == 2)
      {
        v14 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(a4 + 2, v15);
        if (v14 == -1)
        {
LABEL_13:
          v13 = -1;
          goto LABEL_14;
        }

        v13 = *(*(a4 + 3) + 8 * v14 + 4);
      }

      else if (v12 == 1)
      {
        if (*(a4 + 4) <= v10)
        {
          goto LABEL_13;
        }

        v13 = *(*(a4 + 6) + 4 * v10);
      }

      else
      {
        if (*(a4 + 12))
        {
          re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680, v15[0]);
          _os_crash();
          __break(1u);
          return;
        }

        if (v10 >= a4[4])
        {
          v13 = -1;
        }

        else
        {
          v13 = v10;
        }
      }

LABEL_14:
      *(v11 + 4 * v10++) = v13;
    }

    while (v9 != v10);
  }
}

uint64_t re::anonymous namespace::loadMeshPartFromAssetPart(_anonymous_namespace_ *a1, id *a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 16);
  v34 = 0;
  v31[1] = 0;
  v32 = 0;
  v31[0] = 0;
  v33 = 0;
  memset(v30, 0, sizeof(v30));
  v9 = v8 + *(a3 + 228);
  if (v9)
  {
    re::DynamicArray<re::NamedVertexBuffer>::setCapacity(v31, v9);
  }

  if (v8)
  {
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = *(a3 + 16);
      if (v12 <= v11)
      {
        v35 = 0;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v36 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v42 = 136315906;
        v43 = "operator[]";
        v44 = 1024;
        v45 = 797;
        v46 = 2048;
        v47 = v11;
        v48 = 2048;
        v49 = v12;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_49:
        v35 = 0;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v36 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v42 = 136315906;
        v43 = "operator[]";
        v44 = 1024;
        v45 = 797;
        v46 = 2048;
        v47 = 0;
        v48 = 2048;
        v49 = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_50:
        v35 = 0;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v36 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v42 = 136315906;
        v43 = "operator[]";
        v44 = 1024;
        v45 = 789;
        v46 = 2048;
        v47 = v5;
        v48 = 2048;
        v49 = v12;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v12 = *(a3 + 32) + v10;
      v5 = *(v12 + 48);
      v13 = [*a2 newBufferWithLength:v5 options:0];
      v14 = [v13 contents];
      if (!*(v12 + 48))
      {
        goto LABEL_49;
      }

      memcpy(v14, *(v12 + 64), v5);
      re::DynamicString::DynamicString(&v36, v12);
      LOWORD(v38) = *(v12 + 72);
      *(&v38 + 1) = v13;
      LODWORD(v40) = 0;
      DWORD2(v40) = 0;
      HIDWORD(v40) = [v13 length];
      v41 = 0xFFFFFFFF00000000;
      re::DynamicArray<re::NamedVertexBuffer>::add(v31, &v36);
      if (v40 != -1)
      {
        (off_1F5D0BCB8[v40])(&v42, &v38 + 8);
      }

      LODWORD(v40) = -1;
      if (v36 && (BYTE8(v36) & 1) != 0)
      {
        (*(*v36 + 40))();
      }

      *&v36 = v11;
      if (re::HashBrown<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::find(v30, v12) == -1)
      {
        break;
      }

      if (v13)
      {
        goto LABEL_14;
      }

LABEL_15:
      ++v11;
      v10 += 80;
      if (v8 == v11)
      {
        goto LABEL_19;
      }
    }

    re::HashBrown<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::internalAdd(v30, v12, &v36);
    if (!v13)
    {
      goto LABEL_15;
    }

LABEL_14:

    goto LABEL_15;
  }

LABEL_19:
  v15 = *(a3 + 232);
  if (v15)
  {
    v16 = 0;
    v17 = *(a3 + 216);
    while (1)
    {
      v18 = *v17;
      v17 += 20;
      if (v18 < 0)
      {
        break;
      }

      if (v15 == ++v16)
      {
        LODWORD(v16) = *(a3 + 232);
        break;
      }
    }
  }

  else
  {
    LODWORD(v16) = 0;
  }

  if (v16 != v15)
  {
    v19 = *(a3 + 216);
    do
    {
      v20 = v19 + 80 * v16;
      v21 = re::HashBrown<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::find(v30, v20 + 40);
      if (v21 != -1)
      {
        v5 = *(*(&v30[0] + 1) + 40 * v21 + 32);
        if (v5 < v8)
        {
          v12 = v32;
          if (v32 <= v5)
          {
            goto LABEL_50;
          }

          v22 = v34 + 88 * v5;
          re::DynamicString::DynamicString(&v36, (v20 + 8));
          LOWORD(v38) = *(v22 + 32);
          BYTE8(v38) = 0;
          LODWORD(v40) = -1;
          std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(&v38 + 8, v22 + 40);
          *(&v40 + 1) = *(v22 + 72);
          v41 = 0xFFFFFFFF00000000;
          re::DynamicArray<re::NamedVertexBuffer>::add(v31, &v36);
          if (v40 != -1)
          {
            (off_1F5D0BCB8[v40])(&v42, &v38 + 8);
          }

          LODWORD(v40) = -1;
          if (v36 && (BYTE8(v36) & 1) != 0)
          {
            (*(*v36 + 40))();
          }
        }
      }

      if (*(a3 + 232) <= (v16 + 1))
      {
        v23 = v16 + 1;
      }

      else
      {
        v23 = *(a3 + 232);
      }

      v19 = *(a3 + 216);
      while (v23 - 1 != v16)
      {
        LODWORD(v16) = v16 + 1;
        if ((*(v19 + 80 * v16) & 0x80000000) != 0)
        {
          goto LABEL_43;
        }
      }

      LODWORD(v16) = v23;
LABEL_43:
      ;
    }

    while (v16 != v15);
  }

  re::StringID::StringID(v29, (a3 + 72));
  v24 = re::MeshPart::MeshPart(a1, v29, *(a3 + 56), v34, v32, *(a3 + 40), *(a3 + 48), *(a3 + 52), (a3 + 96), a5, a4, (a3 + 192), *(a3 + 60), *(a3 + 64));
  if (v29[0])
  {
    if (v29[0])
    {
    }
  }

  v29[0] = 0;
  v29[1] = &str_67;
  re::HashBrown<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(v30);
  return re::DynamicArray<re::NamedVertexBuffer>::deinit(v31);
}

uint64_t re::HashBrown<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::find(uint64_t *a1, uint64_t a2)
{
  if (!a1[7] || a1[2] < 0x10 || !a1[3])
  {
    return -1;
  }

  v4 = re::Hash<re::DynamicString>::operator()(&v15, a2) % (a1[2] >> 4);
  while (1)
  {
    v5 = *a1;
    v6 = re::Hash<re::DynamicString>::operator()(&v16, a2);
    v14 = *(v5 + 16 * v4);
    v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(vdupq_n_s8(v6 & 0x7F), v14), xmmword_1E304FAD0)))), 0x3830282018100800);
    v8 = __clz(__rbit64(v7));
    if (v8 <= 0x3F)
    {
      break;
    }

LABEL_10:
    v12.i64[0] = -1;
    v12.i64[1] = -1;
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v14, v12), xmmword_1E304FAD0)))), 0x3830282018100800))
    {
      return -1;
    }

    if (++v4 == a1[2] >> 4)
    {
      v4 = 0;
    }

    v11 = -1;
    if (v4 == re::Hash<re::DynamicString>::operator()(&v17, a2) % (a1[2] >> 4))
    {
      return v11;
    }
  }

  v9 = 16 * v4;
  v10 = a1[1];
  while (1)
  {
    v11 = v8 + v9;
    if (re::DynamicString::operator==(a2, v10 + 40 * (v8 + v9)))
    {
      return v11;
    }

    if (v8 <= 0x3E)
    {
      v8 = __clz(__rbit64((-2 << v8) & v7));
      if (v8 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_10;
  }
}

unint64_t re::HashBrown<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::internalAdd(uint64_t a1, const re::DynamicString *a2, void *a3)
{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || *(a1 + 16) > (8 * v6))
  {
    re::HashBrown<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::resize(a1);
  }

  v7 = re::Hash<re::DynamicString>::operator()(&v19, a2) % (*(a1 + 16) >> 4);
  v8 = *a1;
  v9 = re::Hash<re::DynamicString>::operator()(&v20, a2);
  v10 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v8 + 16 * v7)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v10 >= 0x40)
  {
    do
    {
      if (v7 + 1 == *(a1 + 16) >> 4)
      {
        v7 = 0;
      }

      else
      {
        ++v7;
      }

      v8 = *a1;
      v9 = re::Hash<re::DynamicString>::operator()(&v20, a2);
      v10 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v8 + 16 * v7)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v10 > 0x3F);
  }

  v11 = v8 + 16 * v7;
  v12 = *(v11 + v10);
  *(v11 + v10) = v9 & 0x7F;
  v13 = v10 + 16 * v7;
  v14 = 5 * v13;
  re::DynamicString::DynamicString((*(a1 + 8) + 40 * v13), a2);
  v15 = *(a1 + 8) + 8 * v14;
  *(v15 + 32) = *a3;
  if (v12 == 255)
  {
    v16 = -1;
  }

  else
  {
    v16 = 0;
  }

  v17.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v17.i64[1] = v16;
  *(a1 + 24) = vaddq_s64(*(a1 + 24), v17);
  result = re::Hash<re::DynamicString>::operator()(&v21, v15);
  *(a1 + 40) ^= result;
  return result;
}

double re::HashBrown<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::resize(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + 1;
  v4 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v4 > v2)
  {
    v5 = 3 * v2;
    v6 = v5 << 6;
    v7 = (v5 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v4 > v6 >> 7)
    {
      v7 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v3 = (v7 << 7) / 0x97;
  }

  v8 = *(a1 + 56);
  memset(v27, 0, sizeof(v27));
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::init(v27, v8, v3);
  v25[0] = a1;
  v10 = *(a1 + 16);
  if (v10 >= 0x10)
  {
    v11 = 0;
    v12 = *a1;
    v13 = v10 >> 4;
    v14 = xmmword_1E304FAD0;
    v9.n128_u64[0] = 0x3830282018100800;
    while (1)
    {
      v15 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v12), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v25[1] = v15 ^ 0xFFFFLL;
      if (v15 != 0xFFFFLL)
      {
        break;
      }

      v11 -= 16;
      ++v12;
      if (!--v13)
      {
        goto LABEL_13;
      }
    }

    v16 = __clz(__rbit64(v15 ^ 0xFFFFLL));
    v17 = v16 - v11;
    v26 = v16 - v11;
    if (v16 + 1 != v11)
    {
      do
      {
        re::HashBrown<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::internalAdd(v27, *(v25[0] + 8) + 40 * v17, *(v25[0] + 8) + 40 * v17 + 32, v14, v9);
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v25);
        v17 = v26;
      }

      while (v26 != -1);
      v10 = *(a1 + 16);
    }
  }

LABEL_13:
  v18 = *(&v27[3] + 1);
  *(&v27[3] + 1) = *(a1 + 56);
  v19 = v27[0];
  v20 = v27[1];
  v27[0] = *a1;
  *&v27[1] = v10;
  v21 = v27[2];
  v22 = *(a1 + 40);
  *(a1 + 48) = *&v27[3];
  *(a1 + 56) = v18;
  *(&v27[2] + 8) = v22;
  v23 = *(a1 + 24);
  *a1 = v19;
  *(a1 + 16) = v20;
  *(a1 + 32) = v21;
  *(&v27[1] + 8) = v23;
  return re::HashBrown<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(v27);
}

double re::HashBrown<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(uint64_t a1)
{
  if (*(a1 + 56))
  {
    if (*(a1 + 8))
    {
      v10[0] = a1;
      v2 = *(a1 + 16);
      if (v2 >= 0x10)
      {
        v3 = 0;
        v4 = *a1;
        v5 = v2 >> 4;
        while (1)
        {
          v6 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v4), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v10[1] = v6 ^ 0xFFFFLL;
          if (v6 != 0xFFFFLL)
          {
            break;
          }

          v3 -= 16;
          ++v4;
          if (!--v5)
          {
            goto LABEL_10;
          }
        }

        v7 = __clz(__rbit64(v6 ^ 0xFFFFLL));
        v8 = v7 - v3;
        v11 = v7 - v3;
        if (v7 + 1 != v3)
        {
          do
          {
            re::DynamicString::deinit((*(a1 + 8) + 40 * v8));
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v10);
            v8 = v11;
          }

          while (v11 != -1);
        }
      }

LABEL_10:
      *(a1 + 8) = 0;
    }

    if (*a1)
    {
      (*(**(a1 + 56) + 40))(*(a1 + 56));
      *a1 = 0;
    }

    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

BOOL re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(_BOOL8 result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = result;
  v6 = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v7) = 0;
    goto LABEL_6;
  }

  v7 = a4 % *(a2 + 24);
  v8 = *(*(a2 + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_6:
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v10 = *(a2 + 16);
  result = re::DynamicString::operator==(v10 + 112 * v8 + 8, a3);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + 112 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::DynamicString::operator==(v10 + 112 * v11 + 8, a3);
      if (result)
      {
        break;
      }

      v11 = *(v10 + 112 * v12) & 0x7FFFFFFF;
      v8 = v12;
      if (v11 == 0x7FFFFFFF)
      {
        v8 = v12;
        goto LABEL_7;
      }
    }

    v6 = v12;
  }

LABEL_7:
  *v5 = a4;
  *(v5 + 8) = v7;
  *(v5 + 12) = v6;
  *(v5 + 16) = v8;
  return result;
}

void re::gatherMaterialConstants(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = [MEMORY[0x1E69DED88] USDPreviewSurfaceDefaults];
  v12 = [v11 objectForKeyedSubscript:@"opacityThreshold"];
  [v12 floatValue];
  HIDWORD(v94) = v13;

  v14 = [v11 objectForKeyedSubscript:@"emissiveColor"];
  [v14 float3Value];
  v97 = v15;

  v16 = [v11 objectForKeyedSubscript:@"metallic"];
  [v16 floatValue];
  HIDWORD(v96) = v17;

  v18 = [v11 objectForKeyedSubscript:@"roughness"];
  [v18 floatValue];
  LODWORD(v96) = v19;

  v20 = [v11 objectForKeyedSubscript:@"clearcoat"];
  [v20 floatValue];
  HIDWORD(v95) = v21;

  v22 = [v11 objectForKeyedSubscript:@"clearcoatRoughness"];
  [v22 floatValue];
  LODWORD(v95) = v23;

  v24 = [v11 objectForKeyedSubscript:@"textureFallback"];
  [v24 float4Value];
  v73 = v25;

  v26 = [v11 objectForKeyedSubscript:@"ior"];
  [v26 floatValue];
  LODWORD(v94) = v27;

  re::DynamicString::appendf(&v91, "[%f, %f, %f, %f, srgb]", BaseColorTintAndOpacity.n128_f32[0], BaseColorTintAndOpacity.n128_f32[1], BaseColorTintAndOpacity.n128_f32[2], BaseColorTintAndOpacity.n128_f32[3]);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1, "baseColorTint", &v91);
  v30 = [v9 path];
  v31 = [v30 stringValue];
  v32 = [v31 hash];
  v90.__x_[0] = v32;
  for (i = 1; i != 624; ++i)
  {
    v32 = i + 1812433253 * (v32 ^ (v32 >> 30));
    v90.__x_[i] = v32;
  }

  v90.__i_ = 0;

  v35 = (vcvts_n_f32_u32(std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v90), 0x20uLL) + 0.0);
  v36 = (vcvts_n_f32_u32(std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v90), 0x20uLL) + 0.0);
  v37 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v90);
  re::DynamicString::appendf(&v88, "[%f, %f, %f, srgb]", v35, v36, (vcvts_n_f32_u32(v37, 0x20uLL) + 0.0));
  v38 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1, "partDebugColor", &v88);
  if (re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a4, "textureEmissive"))
  {
    v39 = *re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[]<void>(a4, "textureEmissive");
    v40 = re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a5, "textureEmissive");
    TextureScaleFloat3 = re::getTextureScaleFloat3(v39, v40, v73);
    v42 = re::DynamicString::appendf(&v86, "[%f, %f, %f, 1.0]", TextureScaleFloat3.n128_f32[0], TextureScaleFloat3.n128_f32[1], TextureScaleFloat3.n128_f32[2]);
  }

  else
  {
    re::getConstantFloat3(v10, @"inputs:emissiveColor", &v97);
    re::DynamicString::appendf(&v84, "[%f, %f, %f, srgb]", *&v97, *(&v97 + 1), *(&v97 + 2));
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1, "emissiveColor", &v84);
    re::DynamicString::appendf(&v86, "[1,1,1,1]");
    v42 = v84;
    if (v84 && (v85 & 1) != 0)
    {
      v42 = (*(*v84 + 40))();
    }
  }

  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew<void>(a1, "emissiveScale", &v84);
  if (v84 && (v85 & 1) != 0)
  {
    (*(*v84 + 40))();
  }

  v44 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1, "emissiveScaleRGBA", &v86);
  v47 = v46;
  v48 = v84;
  if (v84 && (v85 & 1) != 0)
  {
    v48 = (*(*v84 + 40))();
  }

  if (v45)
  {
    LODWORD(v50) = re::getTextureScaleFloat(v45, v47 & 1, v73).n128_u32[0];
  }

  else
  {
    re::getConstantFloat(v10, @"inputs:metallic", (&v96 + 4), v49);
    v50 = *(&v96 + 1);
  }

  re::DynamicString::appendf(&v84, "%f", v50);
  v51 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1, "metallicScale", &v84);
  v54 = v53;
  v55 = v82;
  if (v82 && (v83 & 1) != 0)
  {
    v55 = (*(*v82 + 40))();
  }

  if (v52)
  {
    LODWORD(v57) = re::getTextureScaleFloat(v52, v54 & 1, v73).n128_u32[0];
  }

  else
  {
    re::getConstantFloat(v10, @"inputs:roughness", &v96, v56);
    v57 = *&v96;
  }

  re::DynamicString::appendf(&v82, "%f", v57);
  v58 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1, "roughnessScale", &v82);
  if (re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a4, "textureClearcoat"))
  {
    v60 = *re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[]<void>(a4, "textureClearcoat");
    v61 = re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a5, "textureClearcoat");
    LODWORD(v62) = re::getTextureScaleFloat(v60, v61, v73).n128_u32[0];
  }

  else
  {
    re::getConstantFloat(v10, @"inputs:clearcoat", (&v95 + 4), v59);
    v62 = *(&v95 + 1);
  }

  re::DynamicString::appendf(&v80, "%f", v62);
  v63 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1, "clearcoatScale", &v80);
  if (re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a4, "textureClearcoatRoughness"))
  {
    v65 = *re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[]<void>(a4, "textureClearcoatRoughness");
    v66 = re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a5, "textureClearcoatRoughness");
    LODWORD(v67) = re::getTextureScaleFloat(v65, v66, v73).n128_u32[0];
  }

  else
  {
    re::getConstantFloat(v10, @"inputs:clearcoatRoughness", &v95, v64);
    v67 = *&v95;
  }

  re::DynamicString::appendf(&v78, "%f", v67);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1, "clearcoatRoughnessScale", &v78);
  ConstantFloat = re::getConstantFloat(v10, @"inputs:opacityThreshold", (&v94 + 4), v68);
  re::DynamicString::appendf(&v76, "%f", *(&v94 + 1));
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1, "opacityThreshold", &v76);
  v71 = re::getConstantFloat(v10, @"inputs:ior", &v94, v70);
  if (((((1.0 - *&v94) / (*&v94 + 1.0)) * ((1.0 - *&v94) / (*&v94 + 1.0))) / 0.08) <= 1.0)
  {
    v72 = (((1.0 - *&v94) / (*&v94 + 1.0)) * ((1.0 - *&v94) / (*&v94 + 1.0))) / 0.08;
  }

  else
  {
    v72 = 1.0;
  }

  re::DynamicString::appendf(&v74, "%f", v72);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1, "specularScale", &v74);
  if (v74 && (v75 & 1) != 0)
  {
    (*(*v74 + 40))();
  }

  if (v76 && (v77 & 1) != 0)
  {
    (*(*v76 + 40))();
  }

  if (v78 && (v79 & 1) != 0)
  {
    (*(*v78 + 40))();
  }

  if (v80 && (v81 & 1) != 0)
  {
    (*(*v80 + 40))();
  }

  if (v82 && (v83 & 1) != 0)
  {
    (*(*v82 + 40))();
  }

  if (v84 && (v85 & 1) != 0)
  {
    (*(*v84 + 40))();
  }

  if (v86 && (v87 & 1) != 0)
  {
    (*(*v86 + 40))();
  }

  if (v88 && (v89 & 1) != 0)
  {
    (*(*v88 + 40))();
  }

  if (v91 && (v92 & 1) != 0)
  {
    (*(*v91 + 40))(v91, v93);
  }
}

__n128 re::anonymous namespace::getBaseColorTintAndOpacity(void *a1, uint64_t a2, uint64_t a3)
{
  __asm { FMOV            V0.4S, #1.0 }

  *&v34[4] = _Q0;
  v10 = MEMORY[0x1E69DED88];
  v11 = a1;
  v12 = [v10 USDPreviewSurfaceDefaults];
  v13 = [v12 objectForKeyedSubscript:@"diffuseColor"];
  [v13 float3Value];
  v35 = v14;

  v15 = [v12 objectForKeyedSubscript:@"opacity"];
  [v15 floatValue];
  *v34 = v16;

  v17 = [v12 objectForKeyedSubscript:@"textureFallback"];
  [v17 float4Value];
  v31 = v18;

  re::getConstantFloat3(v11, @"inputs:diffuseColor", &v35);
  re::getConstantFloat(v11, @"inputs:opacity", v34, v19);
  re::getConstantFloat3(v11, @"inputs:realitykit:tint", &v34[4]);

  v30 = *&v34[4];
  v32 = vmulq_f32(*&v34[4], v35);
  if (!re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a2, "textureBaseColor") && !re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a2, "textureOpacity"))
  {
    v26 = v32;
LABEL_11:
    v26.i32[3] = *v34;
    v33 = v26;
    goto LABEL_12;
  }

  if (!re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a2, "textureBaseColor") && re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a2, "textureOpacity"))
  {
    goto LABEL_8;
  }

  if (re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a2, "textureBaseColor") && !re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a2, "textureOpacity"))
  {
    v27 = *re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[]<void>(a2, "textureBaseColor");
    v28 = re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a3, "textureBaseColor");
    v26 = vmulq_f32(v30, re::getTextureScaleFloat3(v27, v28, v31));
    goto LABEL_11;
  }

  v20 = *re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[]<void>(a2, "textureBaseColor");
  v21 = re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a3, "textureBaseColor");
  v32 = vmulq_f32(v30, re::getTextureScaleFloat3(v20, v21, v31));
LABEL_8:
  v22 = *re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[]<void>(a2, "textureOpacity");
  v23 = re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a3, "textureOpacity");
  v24 = re::getTextureScaleFloat(v22, v23, v31).n128_u32[0];
  v25 = v32;
  v25.i32[3] = v24;
  v33 = v25;
LABEL_12:

  return v33;
}

void re::getConstantFloat3(void *a1, uint64_t a2, _OWORD *a3)
{
  v4 = [a1 objectForKey:a2];
  if (v4)
  {
    v8 = v4;
    v5 = [v4 type];
    v6 = *MEMORY[0x1E69DEDC8];

    v4 = v8;
    if (v5 == v6)
    {
      [v8 float3Value];
      v4 = v8;
      *a3 = v7;
    }
  }
}

__n128 re::getTextureScaleFloat3(void *a1, int a2, __n128 a3)
{
  v4 = a1;
  __asm { FMOV            V0.4S, #1.0 }

  PropertyValueWithOutputProperty = re::getPropertyValueWithOutputProperty(v4, @"inputs:scale", _Q0);
  v11 = re::getDataComponentWithPropertyOutput(&v24, PropertyValueWithOutputProperty);
  if (v24)
  {
    if (BYTE8(v24))
    {
      (*(*v24 + 40))(v24, v25);
    }

    v24 = 0u;
    v25 = 0u;
  }

  if (a2)
  {
    [v11 float3Value];
    v20 = v12;
  }

  else
  {
    v21 = re::getPropertyValueWithOutputProperty(v4, @"inputs:fallback", a3);
    v14 = re::getDataComponentWithPropertyOutput(v23, v21);
    if (*&v23[0])
    {
      if (BYTE8(v23[0]))
      {
        (*(**&v23[0] + 40))();
      }

      memset(v23, 0, sizeof(v23));
    }

    [v11 float3Value];
    v22 = v15;
    [v14 float3Value];
    v20 = vmulq_f32(v22, v16);
  }

  return v20;
}

uint64_t re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[]<void>(uint64_t a1, char *a2)
{
  v6 = a2;
  v3 = re::Hash<re::DynamicString>::operator()(v5, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1, &v6, v3, v5);
  return *(a1 + 16) + 56 * v5[3] + 40;
}

id re::anonymous namespace::resolveTextureConnection(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = re::Hash<re::DynamicString>::operator()(v13, a3);
  re::HashTable<re::DynamicString,std::__list_iterator<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,void *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v13, a1, a3, v8);
  if (v14 == 0x7FFFFFFF)
  {
    if (v7 && re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a1, "textureRMAS"))
    {
      v9 = v7;
      re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a2, "textureRMAS");
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = re::Hash<re::DynamicString>::operator()(v13, a3);
    re::HashTable<re::DynamicString,std::__list_iterator<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,void *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v13, a1, a3, v10);
    v9 = *(*(a1 + 16) + 56 * v14 + 40);
    v11 = re::Hash<re::DynamicString>::operator()(v13, a3);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a2, a3, v11, v13);
  }

  return v9;
}

uint64_t re::getConstantFloat(re *this, NSDictionary *a2, NSString *a3, float *a4)
{
  v5 = [(re *)this objectForKey:a2, a4];
  v6 = v5;
  if (v5 && ([v5 type], v7 = objc_claimAutoreleasedReturnValue(), v8 = *MEMORY[0x1E69DEDB8], v7, v7 == v8))
  {
    [v6 floatValue];
    *a3 = v10;
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

__n128 re::getTextureScaleFloat(void *a1, int a2, __n128 a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a1;
  __asm { FMOV            V0.4S, #1.0 }

  PropertyValueWithOutputProperty = re::getPropertyValueWithOutputProperty(v4, @"inputs:scale", _Q0);
  v10 = [v4 name];
  v11 = [v10 stringValue];
  v12 = [v11 componentsSeparatedByString:@":"];

  v13 = [v12 lastObject];
  v14 = [v13 UTF8String];

  if (v36)
  {
    v16 = v39;
  }

  else
  {
    v16 = &v37;
  }

  v17 = *v16;
  if (v17 > 102)
  {
    if (v17 != 103 && v17 != 114)
    {
      goto LABEL_14;
    }
  }

  else if (v17 != 97 && v17 != 98)
  {
    goto LABEL_14;
  }

  if (v36)
  {
    v18 = v39 + 1;
  }

  else
  {
    v18 = v38;
  }

  if (*v18)
  {
LABEL_14:
    v19 = *re::pipelineLogObjects(v15);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      if (v36)
      {
        v20 = v39;
      }

      else
      {
        v20 = &v37;
      }

      *buf = 136315138;
      v41 = v20;
      _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, "Invalid USD texture shader node output %s for single texture component.", buf, 0xCu);
    }

    goto LABEL_31;
  }

  re::DynamicString::DynamicString(&v33, &v35);
  v21 = re::getDataComponentWithPropertyOutput(&v33, PropertyValueWithOutputProperty);
  if (v33)
  {
    if (BYTE8(v33))
    {
      (*(*v33 + 40))(v33, v34);
    }

    v33 = 0u;
    v34 = 0u;
  }

  if (a2)
  {
    [v21 floatValue];
    PropertyValueWithOutputProperty = v22;
  }

  else
  {
    v31 = re::getPropertyValueWithOutputProperty(v4, @"inputs:fallback", a3);
    re::DynamicString::DynamicString(v32, &v35);
    v23 = re::getDataComponentWithPropertyOutput(v32, v31);
    if (*&v32[0])
    {
      if (BYTE8(v32[0]))
      {
        (*(**&v32[0] + 40))();
      }

      memset(v32, 0, sizeof(v32));
    }

    [v21 floatValue];
    v25 = v24;
    [v23 floatValue];
    v27.n128_f32[0] = v25 * v26;
    PropertyValueWithOutputProperty = v27;
  }

LABEL_31:
  if (v35 && (v36 & 1) != 0)
  {
    (*(*v35 + 40))();
  }

  return PropertyValueWithOutputProperty;
}

void re::gatherMaterialTextureProperties(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DED88] textureMaterialPropertiesWithMaterial:a1];
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0;
  v72 = [v3 objectForKey:@"inputs:diffuseColor"];
  v58 = v72;
  if (v72)
  {
    re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a2, "textureBaseColor", &v72);
  }

  v71 = [v3 objectForKey:@"inputs:normal"];
  v59 = v71;
  if (v71)
  {
    re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a2, "textureNormal", &v71);
  }

  v4 = [v3 objectForKey:@"inputs:metallic"];
  v70 = v4;
  v5 = [v3 objectForKey:@"inputs:roughness"];
  v69 = v5;
  v6 = [v3 objectForKey:@"inputs:specularColor"];
  v68 = v6;
  v63 = [v3 objectForKey:@"inputs:occlusion"];
  v67 = v63;
  if (v4)
  {
    v7 = [v4 parentNode];
    v8 = [v7 property:@"inputs:file"];
    v9 = [v8 stringValue];

    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    v12 = 0;
    if (v6)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v9 = 0;
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_7:
  v10 = [v5 parentNode];
  v11 = [v10 property:@"inputs:file"];
  v12 = [v11 stringValue];

  if (v6)
  {
LABEL_8:
    v13 = [v6 parentNode];
    v14 = [v13 property:@"inputs:file"];
    v15 = [v14 stringValue];

    goto LABEL_12;
  }

LABEL_11:
  v15 = 0;
LABEL_12:
  v62 = v6;
  if (v63)
  {
    v16 = [v63 parentNode];
    v17 = [v16 property:@"inputs:file"];
    v18 = [v17 stringValue];
  }

  else
  {
    v18 = 0;
  }

  v19 = v9;
  v20 = v19;
  if (!v19)
  {
    v21 = v12;
    if (!v21)
    {
      v21 = v15;
      if (!v21)
      {
        v21 = v18;
      }
    }

    v20 = v21;
  }

  if (v18 && ([v18 isEqualToString:v20] & 1) == 0)
  {
    re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a2, "textureAmbientOcclusion", &v67);
    v67 = 0;

    v63 = 0;
    v18 = 0;
  }

  v22 = [MEMORY[0x1E695DFA8] set];
  v60 = v5;
  v61 = v4;
  if (v19 && [v19 isEqualToString:v20])
  {
    v23 = [v4 name];
    v24 = [v23 stringValue];
    [v22 addObject:v24];

    v5 = v60;
    v4 = v61;
  }

  if (v12 && [v12 isEqualToString:v20])
  {
    v25 = [v5 name];
    v26 = [v25 stringValue];
    [v22 addObject:v26];

    v5 = v60;
    v4 = v61;
  }

  if (v15 && [v15 isEqualToString:v20])
  {
    v27 = [v62 name];
    v28 = [v27 stringValue];
    [v22 addObject:v28];

    v5 = v60;
    v4 = v61;
  }

  if (v18 && [v18 isEqualToString:v20])
  {
    v29 = [v63 name];
    v30 = [v29 stringValue];
    [v22 addObject:v30];

    v5 = v60;
    v4 = v61;
  }

  if ([v22 count] < 2 || v19 && !objc_msgSend(v19, "isEqualToString:", v20) || v12 && !objc_msgSend(v12, "isEqualToString:", v20))
  {
    goto LABEL_52;
  }

  if (v15)
  {
    v31 = [v15 isEqualToString:v20];
    if (!v18 || (v31 & 1) == 0)
    {
      if (!v31)
      {
        goto LABEL_52;
      }

      goto LABEL_47;
    }
  }

  else if (!v18)
  {
    goto LABEL_47;
  }

  if (([v18 isEqualToString:v20] & 1) == 0)
  {
LABEL_52:
    if (v4)
    {
      re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a2, "textureMetallic", &v70);
    }

    if (v5)
    {
      re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a2, "textureRoughness", &v69);
    }

    if (v62)
    {
      re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a2, "textureSpecular", &v68);
    }

    if (v63)
    {
      re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a2, "textureAmbientOcclusion", &v67);
    }

    goto LABEL_60;
  }

LABEL_47:
  v57 = v15;
  v32 = v4;
  v33 = v32;
  *buf = v32;
  if (!v4)
  {
    v32 = v5;
    *buf = v32;
    if (!v5)
    {
      v32 = v62;
      *buf = v32;
      if (!v62)
      {
        v32 = v63;
        *buf = v32;
      }
    }
  }

  v56 = v32;
  re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a2, "textureRMAS", buf);
  v34 = v5;
  v35 = v33;
  v55 = v63;
  v36 = v62;
  v37 = *(a2 + 48);
  *(a2 + 48) = v34;
  v4 = v61;

  v38 = *(a2 + 56);
  *(a2 + 56) = v35;
  v5 = v60;

  v39 = *(a2 + 64);
  *(a2 + 64) = v55;

  v40 = *(a2 + 72);
  *(a2 + 72) = v36;

  v15 = v57;
LABEL_60:

  v41 = [v3 objectForKey:@"inputs:emissiveColor"];
  v66 = v41;
  if (v41)
  {
    re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a2, "textureEmissive", &v66);
  }

  v42 = v58;
  v43 = [v3 objectForKey:@"inputs:opacity"];
  v65 = v43;
  if (v43)
  {
    v44 = re::gatherMaterialTextureProperties(USKNode *)::$_0::operator()(v42, v43);
    *(a2 + 80) = v44;
    if ((v44 & 1) == 0)
    {
      re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a2, "textureOpacity", &v65);
    }
  }

  v45 = [v3 objectForKey:{@"inputs:realitykit:tintMask", v55}];
  if (v45)
  {
    v46 = re::gatherMaterialTextureProperties(USKNode *)::$_0::operator()(v42, v45);
    if (v46)
    {
      *(a2 + 81) = 1;
    }

    else
    {
      v47 = *re::pipelineLogObjects(v46);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v51 = v47;
        v52 = [v45 objectPath];
        v53 = [v52 stringValue];
        v54 = [v53 UTF8String];
        *buf = 136315138;
        *&buf[4] = v54;
        _os_log_error_impl(&dword_1E1C61000, v51, OS_LOG_TYPE_ERROR, "Unsupported connection to the tintMask at %s: only connections to the alpha channel of the diffuseColor texture are supported.", buf, 0xCu);

        v4 = v61;
        v5 = v60;
      }
    }
  }

  v48 = [v3 objectForKey:@"inputs:clearcoatRoughness"];
  *buf = v48;
  if (v48)
  {
    re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a2, "textureClearcoatRoughness", buf);
  }

  v49 = [v3 objectForKey:@"inputs:clearcoat"];
  v64 = v49;
  if (v49)
  {
    v50 = v49;
    re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a2, "textureClearcoat", &v64);
  }
}

id re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(uint64_t a1, char *a2, id *a3)
{
  v11 = 0;
  v12 = a2;
  v9 = 0;
  v10 = 0;
  v5 = re::Hash<re::DynamicString>::operator()(&v13, a2);
  result = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1, &v12, v5, &v9);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    v7 = re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v10, v9);
    v8 = v12;
    result = *a3;
    v7[5] = result;
    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::gatherMaterialTextureProperties(USKNode *)::$_0::operator()(void *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a2;
  v4 = [a1 parentNode];
  v5 = [v4 property:@"inputs:file"];
  v6 = [v5 stringValue];

  v7 = [v3 parentNode];
  v8 = [v7 property:@"inputs:file"];
  v9 = [v8 stringValue];

  LODWORD(v7) = [v6 isEqualToString:v9];
  v10 = [v3 name];

  v11 = [v10 stringValue];
  v12 = [v11 isEqualToString:@"outputs:a"];

  v13 = v7 & v12;
  return v13;
}

uint64_t re::isMaterialTransparent(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (*(a2 + 80) != 1 || !re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a2, "textureBaseColor"))
  {
    if (re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a2, "textureOpacity") && re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a3, "textureOpacity"))
    {
      goto LABEL_8;
    }

LABEL_9:
    goto LABEL_10;
  }

  v6 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(a3, "textureBaseColor");
  if (!v6)
  {
    goto LABEL_9;
  }

  v8 = *v6;
  if (!v8)
  {
LABEL_8:
    HaveAlpha = 1;
    goto LABEL_10;
  }

  HaveAlpha = re::TextureProvider::canHaveAlpha(v8, v7);
LABEL_10:

  return HaveAlpha;
}

uint64_t re::isMaterialAlphaCutout(re *this, NSDictionary *a2, uint64_t a3, float *a4)
{
  LODWORD(var4) = 0;
  LODWORD(result) = re::getConstantFloat(this, @"inputs:opacityThreshold", &var4, a4);
  if (*&var4 > 0.0)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

__n128 re::getPropertyValueWithOutputProperty(void *a1, void *a2, __n128 a3)
{
  v4 = a2;
  if (a1)
  {
    v5 = [a1 parentNode];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 property:v4];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 data];

        if (v9)
        {
          [v8 float4Value];
          a3 = v10;
        }
      }
    }
  }

  return a3;
}

id re::getDataComponentWithPropertyOutput(uint64_t a1, __n128 a2)
{
  if (*(a1 + 8))
  {
    v2 = *(a1 + 16);
  }

  else
  {
    v2 = (a1 + 9);
  }

  v3 = *v2;
  if (v3 > 0x66)
  {
    if (v3 == 103)
    {
      if (!v2[1])
      {
        v4 = objc_alloc(MEMORY[0x1E69DED58]);
        HIDWORD(v5) = a2.n128_u32[1];
        LODWORD(v5) = a2.n128_u32[1];
        goto LABEL_20;
      }
    }

    else if (v3 == 114 && !v2[1])
    {
      v4 = objc_alloc(MEMORY[0x1E69DED58]);
      v5 = a2.n128_u64[0];
      goto LABEL_20;
    }
  }

  else if (v3 == 97)
  {
    if (!v2[1])
    {
      v4 = objc_alloc(MEMORY[0x1E69DED58]);
      v5 = __PAIR64__(a2.n128_u32[1], a2.n128_u32[3]);
      goto LABEL_20;
    }
  }

  else if (v3 == 98 && !v2[1])
  {
    v4 = objc_alloc(MEMORY[0x1E69DED58]);
    v5 = __PAIR64__(a2.n128_u32[1], a2.n128_u32[2]);
LABEL_20:
    v8 = [v4 initWithFloat:{*&v5, *&a2}];
    goto LABEL_21;
  }

  v6 = strcmp(v2, "rgb");
  v7 = objc_alloc(MEMORY[0x1E69DED58]);
  if (v6)
  {
    v8 = [v7 initWithFloat4:a2.n128_f64[0]];
  }

  else
  {
    v8 = [v7 initWithFloat3:a2.n128_f64[0]];
  }

LABEL_21:

  return v8;
}

uint64_t re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v32, v9, v8);
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
                v19 = (v13 + v17);
                v20 = re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(v13 + v17 + 48) % *(a1 + 24));
                *(v20 + 24) = 0u;
                *(v20 + 8) = 0u;
                *(v20 + 32) = v19[4];
                v21 = v19[2];
                *(v20 + 8) = v19[1];
                v19[1] = 0;
                v22 = v19[3];
                v19[4] = 0;
                v24 = *(v20 + 16);
                v23 = *(v20 + 24);
                *(v20 + 16) = v21;
                *(v20 + 24) = v22;
                v19[2] = v24;
                v19[3] = v23;
                v13 = *&v32[16];
                v25 = *(*&v32[16] + v17 + 40);
                *(*&v32[16] + v17 + 40) = 0;
                *(v20 + 40) = v25;
              }

              ++v18;
              v17 += 56;
            }

            while (v18 < v16);
          }

          re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v32);
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
    v27 = *(v26 + 56 * v5);
  }

  else
  {
    v26 = *(a1 + 16);
    v27 = *(v26 + 56 * v5);
    *(a1 + 36) = v27 & 0x7FFFFFFF;
  }

  v29 = v26 + 56 * v5;
  *v29 = v27 | 0x80000000;
  v30 = *(a1 + 8);
  *v29 = *(v30 + 4 * a2) | 0x80000000;
  *(v30 + 4 * a2) = v5;
  *(v29 + 48) = a3;
  ++*(a1 + 28);
  return v26 + 56 * v5;
}

void **re::internal::makeOpenSubdivAssetBuffersAndAppendToAssetPartInternal(re::internal *this, const re::GeomMesh *a2, MeshAssetPart *a3)
{
  v6 = this;
  v132 = *MEMORY[0x1E69E9840];
  result = re::internal::GeomAttributeManager::attributeByName((this + 64), "osdSubdivisionScheme");
  if (result)
  {
    if (!result[5])
    {
      goto LABEL_114;
    }

    if (*result[7] == 1)
    {
      v101 = 0;
      v99 = 0;
      v98[0] = 0;
      v98[1] = 0;
      v100 = 0;
      v8 = *(v6 + 200);
      if (v8)
      {
        for (i = 0; i != v8; ++i)
        {
          result = re::internal::GeomAttributeContainer::attributeByIndex((v6 + 176), i);
          if (*(result + 17) == 6)
          {
            v111[0] = result[1];
            result = re::DynamicArray<re::TransitionCondition *>::add(v98, v111);
          }
        }
      }

      v4 = v111;
      v10 = *(v6 + 424);
      if (v10)
      {
        for (j = 0; j != v10; ++j)
        {
          v12 = re::internal::GeomAttributeContainer::attributeByIndex((v6 + 400), j);
          result = re::internal::accessFaceVaryingAttributeSubmesh(v12, v13);
          if (*(result + 6) == *(v6 + 40) && *(v12 + 17) == 6)
          {
            v111[0] = *(v12 + 8);
            result = re::DynamicArray<re::TransitionCondition *>::add(v98, v111);
          }
        }
      }

      v90 = v101;
      v5 = v99;
      v113 = 0u;
      memset(&__src[8], 0, 64);
      v88 = (v6 + 16);
      v14 = *(v6 + 40);
      LODWORD(v111[0]) = *(v6 + 16);
      HIDWORD(v111[0]) = v14;
      v106 = 0;
      v105 = 0;
      v107 = 0;
      if (v14 >= 1)
      {
        v16 = 0;
        LODWORD(v17) = 0;
        v18 = *(v6 + 40);
        v3 = v106;
        v19 = v107;
        v20 = v14 & 0x7FFFFFFF;
        if ((v14 & 0x7FFFFFFE) == 0)
        {
          v20 = 1;
        }

        v21 = (*(v6 + 56) + 12);
        while (1)
        {
          if (v18 == v16)
          {
            goto LABEL_101;
          }

          if (v3 == v16)
          {
            break;
          }

          v22 = *v21;
          v21 += 4;
          if (v22 == -1)
          {
            v23 = 3;
          }

          else
          {
            v23 = 4;
          }

          v19[v16] = v23;
          v17 = (v23 + v17);
          v16 = v16 + 1;
          if (v20 == v16)
          {
            goto LABEL_27;
          }
        }

LABEL_102:
        v102 = 0;
        v130 = 0u;
        v131 = 0u;
        memset(v129, 0, sizeof(v129));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v114 = 136315906;
        *(v4 + 196) = "operator[]";
        v115 = 1024;
        *(v4 + 206) = 468;
        v117 = 2048;
        *(v4 + 212) = v3;
        v119 = 2048;
        *(v4 + 222) = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_103:
        *&v109 = 0;
        v130 = 0u;
        v131 = 0u;
        memset(v129, 0, sizeof(v129));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v114 = 136315906;
        *(v4 + 196) = "operator[]";
        v115 = 1024;
        *(v4 + 206) = 797;
        v117 = 2048;
        *(v4 + 212) = v18;
        v119 = 2048;
        *(v4 + 222) = v18;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        *v114 = 0;
        memset(__src, 0, 64);
        *v111 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v129[0]) = 136315906;
        *(v129 + 4) = "operator[]";
        WORD6(v129[0]) = 1024;
        *(v129 + 14) = 468;
        WORD1(v129[1]) = 2048;
        *(&v129[1] + 4) = v3;
        WORD6(v129[1]) = 2048;
        *(&v129[1] + 14) = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        v105 = 0;
        v130 = 0u;
        v131 = 0u;
        memset(v129, 0, sizeof(v129));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v114 = 136315906;
        *&v114[4] = "operator[]";
        v115 = 1024;
        v116 = 789;
        v117 = 2048;
        v118 = v18;
        v119 = 2048;
        v120 = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        v108 = 0;
        v130 = 0u;
        v131 = 0u;
        memset(v129, 0, sizeof(v129));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v121 = 136315906;
        v122 = "operator[]";
        v123 = 1024;
        v124 = 797;
        v125 = 2048;
        v126 = 0;
        v127 = 2048;
        v128 = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_104;
      }

      v17 = 0;
LABEL_27:
      v103 = 0;
      v102 = 0;
      v104 = 0;
      if (!v14)
      {
        v29 = v104;
        goto LABEL_39;
      }

      v25 = 0;
      v26 = 0;
      v18 = *(v6 + 40);
      v27 = *(v6 + 56);
      v28 = v103;
      do
      {
        if (v25 == v18)
        {
          goto LABEL_103;
        }

        v109 = *(v27 + 16 * v25);
        v29 = v104;
        if (HIDWORD(v109) == -1)
        {
          v30 = 3;
        }

        else
        {
          v30 = 4;
        }

        v31 = &v109;
        do
        {
          v3 = v26;
          if (v28 <= v26)
          {
            *&v96 = 0;
            v130 = 0u;
            v131 = 0u;
            memset(v129, 0, sizeof(v129));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v114 = 136315906;
            *&v114[4] = "operator[]";
            v115 = 1024;
            v116 = 468;
            v117 = 2048;
            v118 = v3;
            v119 = 2048;
            v120 = v28;
            _os_log_send_and_compose_impl();
            v55 = _os_crash_msg();
            __break(1u);
            v4 = v18;
            v3 = 0;
            v14 = 0;
LABEL_64:
            v18 = 0;
            DWORD1(v113) = v5;
            *(&v113 + 1) = v3;
            while (1)
            {
              if (v18 == v5)
              {
                goto LABEL_115;
              }

              v59 = v3;
              v60 = re::internal::GeomAttributeManager::attributeByName((v6 + 64), *(v90 + v18));
              v62 = v88;
              if (*(v60 + 16) == 3)
              {
                v60 = re::internal::accessFaceVaryingAttributeSubmesh(v60, v61);
                v62 = v60;
              }

              if (v18 == v4)
              {
                goto LABEL_116;
              }

              v5 = (v14 + 24 * v18);
              v63 = 4 * (*(v62 + 3) & 0x3FFFFFFFLL);
              v64 = HIDWORD(v111[0]);
              if (!HIDWORD(v111[0]))
              {
                v71 = v5[2];
                goto LABEL_81;
              }

              v65 = 0;
              v66 = 0;
              v6 = *(v62 + 3);
              do
              {
                if (v65 == v6)
                {
                  *&v109 = 0;
                  v130 = 0u;
                  v131 = 0u;
                  memset(v129, 0, sizeof(v129));
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v114 = 136315906;
                  *&v114[4] = "operator[]";
                  v115 = 1024;
                  v116 = 797;
                  v117 = 2048;
                  v118 = v6;
                  v119 = 2048;
                  v120 = v6;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_101:
                  v102 = 0;
                  v130 = 0u;
                  v131 = 0u;
                  memset(v129, 0, sizeof(v129));
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v114 = 136315906;
                  *(v4 + 196) = "operator[]";
                  v115 = 1024;
                  *(v4 + 206) = 797;
                  v117 = 2048;
                  *(v4 + 212) = v18;
                  v119 = 2048;
                  *(v4 + 222) = v18;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
                  goto LABEL_102;
                }

                v109 = *(*(v62 + 5) + 16 * v65);
                v3 = v5[1];
                if (HIDWORD(v109) == -1)
                {
                  v67 = 3;
                }

                else
                {
                  v67 = 4;
                }

                v68 = &v109;
                do
                {
                  v69 = v66;
                  if (v3 <= v66)
                  {
                    *&v96 = 0;
                    v130 = 0u;
                    v131 = 0u;
                    memset(v129, 0, sizeof(v129));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v114 = 136315906;
                    *&v114[4] = "operator[]";
                    v115 = 1024;
                    v116 = 468;
                    v117 = 2048;
                    v118 = v69;
                    v119 = 2048;
                    v120 = v3;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
                    goto LABEL_84;
                  }

                  v70 = *v68++;
                  v71 = v5[2];
                  *(v71 + 4 * v66++) = v70;
                  --v67;
                }

                while (v67);
                v65 = (v65 + 1);
              }

              while (v65 != v64);
LABEL_81:
              v3 = v59;
              v72 = v59 + 16 * v18;
              *v72 = *v62;
              *(v72 + 8) = v71;
              ++v18;
              v6 = v91;
              v5 = v89;
              if (v18 == v4)
              {
                goto LABEL_46;
              }
            }
          }

          v32 = *v31++;
          *(v29 + 4 * v26++) = v32;
          --v30;
        }

        while (v30);
        v25 = v25 + 1;
      }

      while (v25 != v14);
LABEL_39:
      v111[1] = v107;
      *__src = v29;
      v91 = v6;
      v89 = v5;
      if (v5)
      {
        if (v33)
        {
          v3 = v33;
          v35 = v5 - 1;
          if (v5 == 1)
          {
            *v33 = 0;
            v36 = (v33 + 8);
          }

          else
          {
            v36 = (v33 + 8);
            do
            {
              *(v36 - 2) = 0;
              *v36 = 0;
              v36 += 2;
              --v35;
            }

            while (v35);
            *(v36 - 2) = 0;
          }

          *v36 = 0;
          if (v57)
          {
            v14 = v57;
            v58 = v57;
            v4 = v5;
            if (v5 != 1)
            {
              bzero(v57, 24 * v5 - 24);
              v58 = (v14 + 24 * v5 - 24);
            }

            *v58 = 0;
            v58[1] = 0;
            v58[2] = 0;
            goto LABEL_64;
          }

LABEL_118:
          re::internal::assertLog(4, v56, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
          _os_crash();
          __break(1u);
        }

LABEL_117:
        re::internal::assertLog(4, v34, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
        _os_crash();
        __break(1u);
        goto LABEL_118;
      }

      v4 = 0;
      v3 = 0;
LABEL_46:
      v37 = re::internal::GeomAttributeManager::attributeByName((v6 + 64), "osdEdgeCreaseIndices");
      v38 = re::internal::GeomAttributeManager::attributeByName((v6 + 64), "osdEdgeCreaseWeights");
      v109 = 0uLL;
      *&v110 = 0;
      v96 = 0uLL;
      *&v97 = 0;
      if (v38 && v37)
      {
        v39 = v38;
        v40 = (*(*v38 + 16))(v38);
        v41 = v40;
        *&__src[8] = v40;
        v42 = v40;
        v5 = re::GeomAttribute::accessValues<int>(v37);
        v45 = v44;
        v46 = re::GeomAttribute::accessValues<int>(v39);
        v48 = v97;
        if (v41)
        {
          v49 = 0;
          v18 = 0;
          v14 = *(&v96 + 1);
          v50 = *(&v109 + 1);
          v51 = v110;
          v52 = v45;
          v6 = v47;
          v53 = (v97 + 4);
          v54 = v5 + 1;
          while (((v45 + 1) >> 1) != v49)
          {
            if (v14 <= v18)
            {
              goto LABEL_108;
            }

            *(v53 - 1) = *(v54 - 1);
            v3 = v18 + 1;
            if ((v45 >> 1) == v49)
            {
              goto LABEL_110;
            }

            if (v14 <= v3)
            {
              goto LABEL_111;
            }

            *v53 = *v54;
            if (v47 == v49)
            {
              goto LABEL_112;
            }

            if (v50 == v49)
            {
              goto LABEL_113;
            }

            *(v51 + 4 * v49) = *(v46 + 4 * v49);
            v49 = (v49 + 1);
            v18 += 2;
            v53 += 2;
            v54 += 2;
            if (v41 == v49)
            {
              goto LABEL_85;
            }
          }

          goto LABEL_106;
        }

LABEL_84:
        v51 = v110;
LABEL_85:
        *&__src[24] = v51;
        *&__src[16] = v48;
      }

      v73 = re::internal::GeomAttributeManager::attributeByName((v91 + 64), "osdVertexCreaseIndices");
      v74 = re::internal::GeomAttributeManager::attributeByName((v91 + 64), "osdVertexCreaseWeights");
      v94 = 0uLL;
      *&v95 = 0;
      v92 = 0uLL;
      *&v93 = 0;
      if (v74 && v73)
      {
        v6 = v74;
        v75 = (*(*v74 + 16))(v74);
        v76 = v75;
        *&__src[32] = v75;
        v77 = v75;
        v79 = re::GeomAttribute::accessValues<int>(v73);
        v81 = v80;
        v82 = re::GeomAttribute::accessValues<int>(v6);
        v84 = v93;
        if (v76)
        {
          v85 = 0;
          v3 = *(&v92 + 1);
          v18 = v81;
          v14 = v83;
          v86 = v76;
          v5 = *(&v94 + 1);
          v87 = v95;
          while (v81 != v85)
          {
            if (v3 == v85)
            {
              goto LABEL_105;
            }

            *(v84 + 4 * v85) = *(v79 + 4 * v85);
            if (v83 == v85)
            {
              goto LABEL_107;
            }

            if (v5 == v85)
            {
              goto LABEL_109;
            }

            *(v87 + 4 * v85) = *(v82 + 4 * v85);
            v85 = (v85 + 1);
            if (v86 == v85)
            {
              goto LABEL_97;
            }
          }

LABEL_104:
          v130 = 0u;
          v131 = 0u;
          memset(v129, 0, sizeof(v129));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v114 = 136315906;
          *&v114[4] = "operator[]";
          v115 = 1024;
          v116 = 613;
          v117 = 2048;
          v118 = v18;
          v119 = 2048;
          v120 = v18;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_105:
          v130 = 0u;
          v131 = 0u;
          memset(v129, 0, sizeof(v129));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v114 = 136315906;
          *&v114[4] = "operator[]";
          v115 = 1024;
          v116 = 468;
          v117 = 2048;
          v118 = v3;
          v119 = 2048;
          v120 = v3;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_106:
          *&v94 = 0;
          v130 = 0u;
          v131 = 0u;
          memset(v129, 0, sizeof(v129));
          v3 = v52;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v114 = 136315906;
          *&v114[4] = "operator[]";
          v115 = 1024;
          v116 = 613;
          v117 = 2048;
          v118 = v18;
          v119 = 2048;
          v120 = v3;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_107:
          v130 = 0u;
          v131 = 0u;
          memset(v129, 0, sizeof(v129));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v114 = 136315906;
          *&v114[4] = "operator[]";
          v115 = 1024;
          v116 = 613;
          v117 = 2048;
          v118 = v14;
          v119 = 2048;
          v120 = v14;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_108:
          *&v94 = 0;
          v130 = 0u;
          v131 = 0u;
          memset(v129, 0, sizeof(v129));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v114 = 136315906;
          *&v114[4] = "operator[]";
          v115 = 1024;
          v116 = 468;
          v117 = 2048;
          v118 = v18;
          v119 = 2048;
          v120 = v14;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_109:
          v130 = 0u;
          v131 = 0u;
          memset(v129, 0, sizeof(v129));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v114 = 136315906;
          *&v114[4] = "operator[]";
          v115 = 1024;
          v116 = 468;
          v117 = 2048;
          v118 = v5;
          v119 = 2048;
          v120 = v5;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_110:
          *&v94 = 0;
          v130 = 0u;
          v131 = 0u;
          memset(v129, 0, sizeof(v129));
          v18 = v52;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v114 = 136315906;
          *&v114[4] = "operator[]";
          v115 = 1024;
          v116 = 613;
          v117 = 2048;
          v118 = v3;
          v119 = 2048;
          v120 = v18;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_111:
          *&v94 = 0;
          v130 = 0u;
          v131 = 0u;
          memset(v129, 0, sizeof(v129));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v114 = 136315906;
          *&v114[4] = "operator[]";
          v115 = 1024;
          v116 = 468;
          v117 = 2048;
          v118 = (v18 + 1);
          v119 = 2048;
          v120 = v14;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_112:
          *&v94 = 0;
          v130 = 0u;
          v131 = 0u;
          memset(v129, 0, sizeof(v129));
          v50 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v114 = 136315906;
          *&v114[4] = "operator[]";
          v115 = 1024;
          v116 = 613;
          v117 = 2048;
          v118 = v6;
          v119 = 2048;
          v120 = v6;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_113:
          *&v94 = 0;
          v130 = 0u;
          v131 = 0u;
          memset(v129, 0, sizeof(v129));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v114 = 136315906;
          *&v114[4] = "operator[]";
          v115 = 1024;
          v116 = 468;
          v117 = 2048;
          v118 = v50;
          v119 = 2048;
          v120 = v50;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_114:
          *v114 = 0;
          memset(__src, 0, 64);
          *v111 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v129[0]) = 136315906;
          *(v129 + 4) = "operator[]";
          WORD6(v129[0]) = 1024;
          *(v129 + 14) = 797;
          WORD1(v129[1]) = 2048;
          *(&v129[1] + 4) = 0;
          WORD6(v129[1]) = 2048;
          *(&v129[1] + 14) = 0;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_115:
          re::internal::assertLog(6, v56, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v5, v5);
          _os_crash();
          __break(1u);
LABEL_116:
          *&v109 = 0;
          v130 = 0u;
          v131 = 0u;
          memset(v129, 0, sizeof(v129));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v114 = 136315906;
          *&v114[4] = "operator[]";
          v115 = 1024;
          v116 = 468;
          v117 = 2048;
          v118 = v4;
          v119 = 2048;
          v120 = v4;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          v105 = 0;
          v130 = 0u;
          v131 = 0u;
          memset(v129, 0, sizeof(v129));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v114 = 136315906;
          *&v114[4] = "operator[]";
          v115 = 1024;
          v116 = 789;
          v117 = 2048;
          v118 = 0;
          v119 = 2048;
          v120 = 0;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_117;
        }

        v87 = v95;
LABEL_97:
        *&__src[48] = v87;
        *&__src[40] = v84;
      }

      operator new();
    }
  }

  return result;
}

void re::internal::makeOpenSubdivAssetBuffersAndAppendToAssetPart(uint64_t **this, const re::GeomMesh *a2, MeshAssetPart *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!re::internal::GeomAttributeManager::attributeByName((this + 8), "vertexUV"))
  {
    v17 = 0;
    v18 = 0;
    bzero(v19, 0x2C8uLL);
    re::internal::GeomBaseMesh::GeomBaseMesh(v19);
    v19[89] = 0;
    re::GeomMesh::copy(this, &v17);
    v7 = re::addVertexUVs(&v17, v6);
    v8 = re::GeomMesh::accessVertexPositions(this);
    v10 = v9;
    if ((*(*v7 + 16))(v7))
    {
      if (!v7[5])
      {
        goto LABEL_17;
      }

      v12 = v7[7];
      v13 = (*(*v7 + 16))(v7);
    }

    else
    {
      v13 = 0;
      v12 = 0;
    }

    v14 = *(this + 4);
    if (!v14)
    {
LABEL_14:
      re::internal::makeOpenSubdivAssetBuffersAndAppendToAssetPartInternal(&v17, a2, v11);
      re::GeomMesh::~GeomMesh(&v17);
      return;
    }

    v15 = 0;
    while (v10 != v15)
    {
      if (v13 == v15)
      {
        goto LABEL_16;
      }

      v16 = *v8;
      v8 += 2;
      *(v12 + 8 * v15++) = v16;
      if (v14 == v15)
      {
        goto LABEL_14;
      }
    }

    v20 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v21 = 136315906;
    v22 = "operator[]";
    v23 = 1024;
    v24 = 613;
    v25 = 2048;
    v26 = v10;
    v27 = 2048;
    v28 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_16:
    v20 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v21 = 136315906;
    v22 = "operator[]";
    v23 = 1024;
    v24 = 621;
    v25 = 2048;
    v26 = v13;
    v27 = 2048;
    v28 = v13;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_17:
    v20 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v21 = 136315906;
    v22 = "operator[]";
    v23 = 1024;
    v24 = 789;
    v25 = 2048;
    v26 = 0;
    v27 = 2048;
    v28 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  re::internal::makeOpenSubdivAssetBuffersAndAppendToAssetPartInternal(this, a2, v5);
}

uint64_t re::ASTCCompressor::initializeContext@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v7 = result;
  v9 = (result + 32);
  if (!*(result + 32))
  {
    if (!a3)
    {
      v10 = "Invalid input ASTC pixel format";
      goto LABEL_9;
    }

    if (!*(a2 + 4))
    {
      v10 = "Invalid ASTC mode";
      goto LABEL_9;
    }

    if (!*a2)
    {
      v10 = "Invalid ASTC block size";
      goto LABEL_9;
    }

    *result = a3;
    *(result + 4) = a4;
    *(result + 16) = *a2;
    v14 = *(a2 + 4);
    if (v14 != 1)
    {
      if (v14 == 3)
      {
        if (a3 - 6 >= 5)
        {
          v15 = 0;
          v14 = 3;
LABEL_30:
          if ((a4 - 3) >= 2)
          {
            v16 = v15;
          }

          else
          {
            v16 = v15 | 8;
          }

          v17 = re::blockToSize(*a2);
          v33 = 0;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v26 = 0u;
          v18 = astcenc_config_init(v14, SLODWORD(v17), SHIDWORD(v17), 1u, v16, &v26, *(a2 + 12));
          DWORD1(v27) = 1065353216;
          v20 = 1.0;
          if (isSingleChannel)
          {
            v21 = 0.0;
          }

          else
          {
            v21 = 1.0;
          }

          *(&v27 + 2) = v21;
          *(&v27 + 3) = v21;
          if (a3 - 6 >= 5)
          {
            v20 = 0.0;
          }

          *&v28 = v20;
          if (v18)
          {
            LODWORD(result) = v18;
          }

          else
          {
            result = astcenc_context_alloc(&v26, *(v7 + 8));
            if (!result)
            {
LABEL_43:
              *a5 = 1;
              return result;
            }

            *v9 = 0;
          }

          error_string = astcenc_get_error_string(result);
          v11 = v23;
          v12 = v24;
          v13 = v25;
          goto LABEL_10;
        }

        v14 = 2;
LABEL_26:
        if (*(a2 + 8))
        {
          v15 = 0;
        }

        else
        {
          v15 = 4;
        }

        goto LABEL_30;
      }

      if (v14 != 2)
      {
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "initializeContext", 204);
        result = _os_crash();
        __break(1u);
        return result;
      }

      v14 = 0;
    }

    if (a3 - 6 > 4)
    {
      v15 = 0;
      goto LABEL_30;
    }

    goto LABEL_26;
  }

  if (*a2 == *(result + 16) && *(a2 + 4) == *(result + 20) && *(a2 + 8) == *(result + 24) && *(a2 + 12) == *(result + 28) && *result == a3 && *(result + 4) == a4)
  {
    goto LABEL_43;
  }

  v10 = "ASTCCompressor::initializeContext cannot be called with different options";
LABEL_9:
  v11 = v26;
  v13 = *(&v27 + 1);
  v12 = v27;
LABEL_10:
  *a5 = 0;
  *(a5 + 8) = v11;
  *(a5 + 24) = v12;
  *(a5 + 32) = v13;
  return result;
}

double re::blockToSize(int a1)
{
  *&result = 0x400000004;
  switch(a1)
  {
    case 0:
      result = 0.0;
      break;
    case 2:
      *&result = 0x400000005;
      break;
    case 3:
      *&result = 0x500000005;
      break;
    case 4:
      *&result = 0x500000006;
      break;
    case 5:
      *&result = 0x600000006;
      break;
    case 6:
      *&result = 0x500000008;
      break;
    case 7:
      *&result = 0x600000008;
      break;
    case 8:
      *&result = 0x800000008;
      break;
    case 9:
      *&result = 0x50000000ALL;
      break;
    case 10:
      *&result = 0x60000000ALL;
      break;
    case 11:
      *&result = 0x80000000ALL;
      break;
    case 12:
      *&result = 0xA0000000ALL;
      break;
    case 13:
      *&result = 0xA0000000CLL;
      break;
    case 14:
      *&result = 0xC0000000CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t re::ASTCCompressor::compress@<X0>(re::ASTCCompressor *this@<X0>, const vImage_Buffer *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *this;
  if (*this <= 8)
  {
    if (v8 == 2 || v8 == 5)
    {
      v11 = isSingleChannel ^ 1;
      if (isSingleChannel)
      {
        v12 = 0;
      }

      else
      {
        v12 = 2;
      }

      v13 = 1;
      goto LABEL_11;
    }

LABEL_16:
    v13 = 0;
    v11 = v18 ^ 1;
    if (v18)
    {
      v12 = 0;
    }

    else
    {
      v12 = 2;
    }

    v14 = 3;
    if (v8 - 6 < 2)
    {
      v15 = 0;
      goto LABEL_24;
    }

    if (v8 == 8)
    {
LABEL_23:
      v15 = v12;
      v12 = 0;
      goto LABEL_24;
    }

LABEL_11:
    v14 = 5;
    if (((v8 - 4) & 0xFFFFFFFB) != 0)
    {
      v15 = 0;
LABEL_24:
      v43 = v13;
      if (v8 != 10 && v8 != 7)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (v8 != 10)
  {
    if (v8 == 9)
    {
      p_width = &a2->width;
      width = a2->width;
      v40 = 0;
      v41 = 3;
      v11 = 1;
      v42 = 2;
      v43 = 1;
LABEL_31:
      v21 = 8;
      goto LABEL_36;
    }

    goto LABEL_16;
  }

  v15 = 0;
  v14 = 3;
  v43 = 1;
  v12 = 2;
  v11 = 1;
LABEL_26:
  v19 = v11;
  v20 = v12;
  v12 = v14;
  v11 = v20;
  v14 = v15;
  v15 = v19;
LABEL_27:
  p_width = &a2->width;
  width = a2->width;
  v21 = 1;
  v41 = v14;
  v42 = v12;
  v40 = v15;
  if (v8 > 0xA)
  {
    goto LABEL_34;
  }

  if (((1 << v8) & 0x1D8) != 0)
  {
    v21 = 4;
    goto LABEL_36;
  }

  if (((1 << v8) & 0x620) != 0)
  {
    goto LABEL_31;
  }

  if (v8 == 2)
  {
    v21 = 2;
  }

  else
  {
LABEL_34:
    if (!v8)
    {
      v21 = 0;
    }
  }

LABEL_36:
  v22 = v21 * width;
  v64 = 0;
  v63 = 0;
  data = a2->data;
  height = a2->height;
  v61 = a2->data;
  memset(v62, 0, sizeof(v62));
  if (a2->rowBytes != v21 * width)
  {
    re::DynamicArray<BOOL>::resize(v62, height * v22);
    v25 = v64;
    if (a2->height)
    {
      v39 = v11;
      v26 = a3;
      v27 = a4;
      v28 = 0;
      do
      {
        memcpy(v25, data, v22);
        v25 += v22;
        data += a2->rowBytes;
        ++v28;
        height = a2->height;
      }

      while (v28 < height);
      v25 = v64;
      a4 = v27;
      a3 = v26;
      v11 = v39;
    }

    else
    {
      height = 0;
    }

    v61 = v25;
    width = *p_width;
  }

  v29 = re::blockToSize(*(this + 4));
  v60 = 0;
  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x2020000000;
  v59[3] = &v60;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZN2re14ASTCCompressor8compressERK13vImage_BufferPh_block_invoke;
  aBlock[3] = &unk_1E87214C8;
  v48 = width;
  v49 = height;
  v50 = 1;
  v51 = v43;
  v55 = v40;
  v56 = v11;
  v57 = v42;
  v58 = v41;
  v52 = &v61;
  v53 = a3;
  v54 = 16 * (width + LODWORD(v29) - 1) / LODWORD(v29) * ((height + HIDWORD(v29) - 1) / HIDWORD(v29));
  aBlock[4] = v59;
  aBlock[5] = this;
  v30 = _Block_copy(aBlock);
  v31 = *(this + 1);
  if (v31 < 2)
  {
    v30[2](v30, 0);
  }

  else
  {
    dispatch_apply(v31, *(this + 5), v30);
  }

  astcenc_compress_reset(*(this + 4));
  if (atomic_load(&v60))
  {
    v33 = atomic_load(&v60);
    error_string = astcenc_get_error_string(v33);
    v35 = v44;
    v36 = v45;
    v37 = v46;
    *a4 = 0;
    *(a4 + 8) = v35;
    *(a4 + 24) = v36;
    *(a4 + 32) = v37;
  }

  else
  {
    *a4 = 1;
  }

  _Block_object_dispose(v59, 8);
  result = v62[0];
  if (v62[0])
  {
    if (v64)
    {
      return (*(*v62[0] + 40))(v62[0]);
    }
  }

  return result;
}

uint64_t ___ZN2re14ASTCCompressor8compressERK13vImage_BufferPh_block_invoke(uint64_t a1)
{
  result = astcenc_compress_image(*(*(a1 + 40) + 32));
  if (result)
  {
    atomic_store(result, *(*(*(a1 + 32) + 8) + 24));
  }

  return result;
}

uint64_t re::getASTCBlockSize(int a1)
{
  if ((a1 - 186) > 0x32)
  {
    return 0;
  }

  else
  {
    return dword_1E30FF998[a1 - 186];
  }
}

uint64_t re::getASTCDefaultMode(int a1)
{
  if (re::isHDR(a1))
  {
    return 3;
  }

  MTLPixelFormatGetInfoForDevice();
  return 1;
}

uint64_t re::getMTLPixelFormat(unsigned int a1, int a2)
{
  if (a2 == 3)
  {
    if (a1 <= 0xE)
    {
      v2 = &unk_1E30FFADC;
      return v2[a1];
    }
  }

  else if (a2 == 2)
  {
    if (a1 < 0xF)
    {
      v2 = &unk_1E30FFAA0;
      return v2[a1];
    }
  }

  else if (a2 == 1 && a1 < 0xF)
  {
    v2 = &unk_1E30FFA64;
    return v2[a1];
  }

  return 0;
}

uint64_t re::MTLToASTCPixelFormat(int a1, int a2)
{
  if (a1 <= 69)
  {
    if ((a1 - 10) < 2)
    {
      return 1;
    }

    if (a1 == 25)
    {
      return 2;
    }

    return 0;
  }

  if ((a1 - 70) >= 2)
  {
    if (a1 != 115)
    {
      return 0;
    }

    v3 = a2 == 0;
    v4 = 5;
    v5 = 9;
  }

  else
  {
    v3 = a2 == 0;
    v4 = 3;
    v5 = 6;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

void re::internalLogTextureCompressionInfo(re *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned int *a9)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a7 != 7)
  {
    a5 = a4;
  }

  if (a7 == 5)
  {
    v15 = 6;
  }

  else
  {
    v15 = a5;
  }

  v16 = *re::pipelineLogObjects(a1);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    if (a8 > 69)
    {
      if ((a8 - 70) < 2)
      {
        v17 = "rgba8";
        goto LABEL_18;
      }

      if (a8 == 115)
      {
        v17 = "rgbaFloat16";
        goto LABEL_18;
      }
    }

    else
    {
      if ((a8 - 10) < 2)
      {
        v17 = "r8";
LABEL_18:
        v18 = *(a9 + 8);
        v19 = *a9;
        if (v19 > 0xE)
        {
          v20 = "4x4";
        }

        else
        {
          v20 = off_1E87214E8[v19];
        }

        v21 = 136316930;
        v22 = a1;
        v23 = 1024;
        v24 = a2;
        v25 = 1024;
        v26 = a3;
        v27 = 1024;
        v28 = v15;
        v29 = 1024;
        v30 = a6;
        v31 = 2080;
        v32 = v17;
        v33 = 1024;
        v34 = v18;
        v35 = 2080;
        v36 = v20;
        _os_log_debug_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEBUG, "%s - Texture compression requested on texture import:\nInput: %ux%ux%u. mips: %u, texel format: %s, premult if alpha: %d, block format: %s", &v21, 0x3Eu);
        return;
      }

      if (a8 == 25)
      {
        v17 = "rFloat16";
        goto LABEL_18;
      }
    }

    v17 = "Invalid";
    goto LABEL_18;
  }
}

void re::logTextureCompressionInfo(re *a1, re::TextureData *this, unsigned int *a3)
{
  v6 = re::TextureData::width(this);
  v7 = re::TextureData::height(this);
  v8 = re::TextureData::arrayLength(this);
  v9 = re::TextureData::depth(this);
  v10 = re::TextureData::mipmapLevelCount(this);
  v11 = re::TextureData::textureType(this);
  v12 = re::TextureData::pixelFormat(this);
  re::internalLogTextureCompressionInfo(a1, v6, v7, v8, v9, v10, v11, v12, a3);
}

void *re::parseAnimationBVH@<X0>(re *this@<X0>, uint64_t a2@<X8>)
{
  v118 = *MEMORY[0x1E69E9840];
  v95 = 0.0;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v108 = this;
  v109[64] = v109;
  v109[65] = v109;
  v94 = 0;
  v91[1] = 0;
  v92 = 0;
  v91[0] = 0;
  v93 = 0;
  v6 = 0;
  v7 = v5 - NextToken;
  if (v5 != NextToken)
  {
    v8 = 0;
    if (v7 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5 - NextToken;
    }

    while (v8 != 9)
    {
      if (aHierarchy[v8] != *(NextToken + v8))
      {
        goto LABEL_41;
      }

      if (v6 == ++v8)
      {
        goto LABEL_10;
      }
    }

    v6 = 9;
  }

LABEL_10:
  if (v6 != v7)
  {
    goto LABEL_41;
  }

  if (!NextToken)
  {
    goto LABEL_41;
  }

  __endptr[0].n128_u64[0] = 0;
  memset(&__endptr[1], 0, 32);
  __endptr[0].n128_u64[1] = &str_67;
  *v105 = 0;
  *&v105[8] = 0xFFFFFFFFLL;
  v10 = __endptr[2].n128_u64[0];
  if (__endptr[2].n128_u64[0] && __endptr[2].n128_u64[1])
  {
    v10 = (*(*__endptr[2].n128_u64[0] + 40))(v9);
  }

  if (__endptr[0].n128_u8[0])
  {
  }

  v11 = v94;
  v12 = v92;
  v14 = v13 - NextToken;
  if (v13 == NextToken)
  {
    v15 = 0;
  }

  else
  {
    v16 = 0;
    v15 = v14 <= 1 ? 1 : v13 - NextToken;
    while (v16 != 4)
    {
      if (aRoot_1[v16] != *(NextToken + v16))
      {
        goto LABEL_41;
      }

      if (v15 == ++v16)
      {
        goto LABEL_27;
      }
    }

    v15 = 4;
  }

LABEL_27:
  {
LABEL_41:
    v34 = "Unable to parse hierarchy.";
LABEL_42:
    v35 = __endptr[0];
    v36 = __endptr[1];
    *a2 = 0;
    *(a2 + 8) = 100;
    *(a2 + 16) = re::AssetErrorCategory(void)::instance;
    *(a2 + 24) = v35;
    *(a2 + 40) = v36;
LABEL_43:
    v37 = v91[0];
    if (v91[0])
    {
      v38 = v94;
      if (v94)
      {
        if (v92)
        {
          v39 = v92 << 6;
          v40 = v94;
          do
          {
            v41 = *(v40 + 4);
            if (v41)
            {
              if (*(v40 + 5))
              {
                (*(*v41 + 40))(v41, *(v40 + 6));
                *(v40 + 5) = 0;
                *(v40 + 6) = 0;
              }

              *(v40 + 4) = 0;
            }

            re::StringID::destroyString(v40);
            v40 = (v40 + 64);
            v39 -= 64;
          }

          while (v39);
        }

        (*(*v37 + 40))(v37, v38);
      }
    }

    re::FixedArray<re::FixedArray<unsigned int>>::deinit(&v100 + 1);
    if (v99)
    {
      if (*(&v99 + 1))
      {
        (*(*v99 + 40))(v99, v100);
        *(&v99 + 1) = 0;
        *&v100 = 0;
      }

      *&v99 = 0;
    }

    if (*(&v97 + 1))
    {
      if (v98)
      {
        (*(**(&v97 + 1) + 40))(*(&v97 + 1), *(&v98 + 1));
        v98 = 0uLL;
      }

      *(&v97 + 1) = 0;
    }

    return re::FixedArray<re::StringID>::deinit(&v96);
  }

  v21 = 0;
  v22 = 0;
  v23 = v94;
  v24 = v94;
  do
  {
    v25 = *(&v96 + 1);
    if (*(&v96 + 1) <= v22)
    {
      v102.i64[0] = 0;
      memset(v105, 0, 32);
      memset(__endptr, 0, sizeof(__endptr));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v110 = 136315906;
      v111 = "operator[]";
      v112 = 1024;
      v113 = 468;
      v114 = 2048;
      v115 = v22;
      v116 = 2048;
      v117 = v25;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_89:
      v102.i64[0] = 0;
      memset(v105, 0, 32);
      memset(__endptr, 0, sizeof(__endptr));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v110 = 136315906;
      v111 = "operator[]";
      v112 = 1024;
      v113 = 468;
      v114 = 2048;
      v115 = v22;
      v116 = 2048;
      v117 = v25;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_90:
      v102.i64[0] = 0;
      memset(v105, 0, 32);
      memset(__endptr, 0, sizeof(__endptr));
      a2 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v110 = 136315906;
      v111 = "operator[]";
      v112 = 1024;
      v113 = 468;
      v114 = 2048;
      v115 = v24;
      v116 = 2048;
      v117 = v22;
      _os_log_send_and_compose_impl();
      v30 = _os_crash_msg();
      __break(1u);
      goto LABEL_91;
    }

    v26 = re::StringID::operator=((v97 + v21), v24);
    v25 = v98;
    if (v98 <= v22)
    {
      goto LABEL_89;
    }

    *(*(&v98 + 1) + 4 * v22++) = *(v24 + 14);
    v24 = (v24 + 64);
    v21 += 16;
  }

  while (v19 != v22);
  v25 = &v95;
  v24 = 0;
  v27 = (v23 + 16);
  v28 = 32;
  do
  {
    v22 = *(&v99 + 1);
    if (*(&v99 + 1) <= v24)
    {
      goto LABEL_90;
    }

    v29 = *v27;
    v27 += 4;
    *(v100 + v28) = v29;
    v24 = (v24 + 1);
    v28 += 48;
  }

  while (v19 != v24);
  v32 = v31 - v30;
  if (v31 == v30)
  {
    v33 = 0;
  }

  else
  {
    v43 = 0;
    if (v32 <= 1)
    {
      v33 = 1;
    }

    else
    {
      v33 = v31 - v30;
    }

    while (v43 != 6)
    {
      if (aMotion[v43] != *(v30 + v43))
      {
        goto LABEL_166;
      }

      if (v33 == ++v43)
      {
        goto LABEL_70;
      }
    }

    v33 = 6;
  }

LABEL_70:
  if (v33 != v32)
  {
    goto LABEL_166;
  }

  if (!v30)
  {
    goto LABEL_166;
  }

  v45 = v44 - v30;
  if (v44 == v30)
  {
    v46 = 0;
  }

  else
  {
    v47 = 0;
    v46 = v45 <= 1 ? 1 : v44 - v30;
    while (v47 != 7)
    {
      if (aFrames[v47] != *(v30 + v47))
      {
        goto LABEL_166;
      }

      if (v46 == ++v47)
      {
        goto LABEL_82;
      }
    }

    v46 = 7;
  }

LABEL_82:
  if (v46 != v45)
  {
    goto LABEL_166;
  }

  if (v48 == v30)
  {
    goto LABEL_166;
  }

  v49 = v48;
  __endptr[0].n128_u64[0] = 0;
  v30 = strtol(v30, __endptr, 10);
  if (__endptr[0].n128_u64[0] != v49)
  {
    goto LABEL_166;
  }

  LODWORD(v24) = v30;
  if (!v30)
  {
    goto LABEL_166;
  }

  v51 = v50 - v30;
  if (v50 == v30)
  {
    v52 = 0;
    goto LABEL_99;
  }

LABEL_91:
  v53 = 0;
  v52 = v51 <= 1 ? 1 : v51;
  while (v53 != 5)
  {
    if (aFrame[v53] != *(v30 + v53))
    {
      goto LABEL_166;
    }

    if (v52 == ++v53)
    {
      goto LABEL_99;
    }
  }

  v52 = 5;
LABEL_99:
  if (v52 != v51)
  {
    goto LABEL_166;
  }

  v55 = v54 - v30;
  if (v54 == v30)
  {
    v56 = 0;
  }

  else
  {
    v57 = 0;
    v56 = v55 <= 1 ? 1 : v54 - v30;
    while (v57 != 5)
    {
      if (aTime_0[v57] != *(v30 + v57))
      {
        goto LABEL_166;
      }

      if (v56 == ++v57)
      {
        goto LABEL_110;
      }
    }

    v56 = 5;
  }

LABEL_110:
  {
LABEL_166:
    v34 = "Unable to parse motion frames.";
    goto LABEL_42;
  }

  if (v24 < 1)
  {
LABEL_157:
    __endptr[0].n128_f32[0] = v95;
    re::FixedArray<re::StringID>::FixedArray(&__endptr[0].n128_u64[1], &v96);
    re::FixedArray<unsigned int>::FixedArray(&__endptr[2], &v97 + 8);
    re::FixedArray<re::GenericSRT<float>>::FixedArray(&v105[8], (v25 + 14));
    re::FixedArray<re::FixedArray<re::GenericSRT<float>>>::FixedArray(&v105[32], &v100 + 8);
    *a2 = 1;
    *(a2 + 8) = __endptr[0].n128_u32[0];
    v82 = __endptr[1].n128_u64[0];
    *(a2 + 16) = __endptr[0].n128_u64[1];
    *(a2 + 24) = v82;
    *(a2 + 32) = *(&__endptr[1] + 8);
    memset(&__endptr[0].n128_i8[8], 0, 32);
    *(a2 + 48) = __endptr[2].n128_u64[1];
    __endptr[2].n128_u64[1] = 0;
    *(a2 + 56) = *v105;
    *v105 = 0u;
    *(a2 + 72) = *&v105[16];
    *(a2 + 80) = *&v105[24];
    memset(&v105[16], 0, 24);
    v83 = v107;
    *(a2 + 96) = v106;
    *(a2 + 104) = v83;
    v106 = 0;
    v107 = 0;
    re::FixedArray<re::FixedArray<unsigned int>>::deinit(&v105[32]);
    if (*&v105[8])
    {
      if (*&v105[16])
      {
        (*(**&v105[8] + 40))(*&v105[8], *&v105[24]);
        *&v105[16] = 0uLL;
      }

      *&v105[8] = 0;
    }

    if (__endptr[2].n128_u64[0])
    {
      if (__endptr[2].n128_u64[1])
      {
        (*(*__endptr[2].n128_u64[0] + 40))(__endptr[2].n128_u64[0], *v105);
        __endptr[2].n128_u64[1] = 0;
        *v105 = 0;
      }

      __endptr[2].n128_u64[0] = 0;
    }

    re::FixedArray<re::StringID>::deinit(&__endptr[0].n128_u64[1]);
    goto LABEL_43;
  }

  v86 = 0;
  v84 = v24 & 0x7FFFFFFF;
  v85 = vdupq_n_s32(0x3C8EFA35u);
  v60 = v19;
  while (1)
  {
    i = v101;
    if (v101 <= v86)
    {
      goto LABEL_170;
    }

    v62 = (*(&v101 + 1) + 24 * v86);
    v89 = v62;
    if (v60)
    {
      break;
    }

LABEL_155:
    if ((v30 & 1) == 0)
    {
      goto LABEL_166;
    }

    if (++v86 == v84)
    {
      goto LABEL_157;
    }
  }

  v90 = 0;
  while (1)
  {
    i = v89[1];
    if (i <= v90)
    {
      break;
    }

    v63 = v23 + 64 * v90;
    *(v89[2] + 48 * v90 + 32) = *(v63 + 1);
    if (v90 == v19)
    {
      goto LABEL_169;
    }

    if (*(v63 + 5))
    {
      for (i = 0; i < *(v63 + 5); ++i)
      {
        if (v64 == v30)
        {
          goto LABEL_166;
        }

        v65 = v64;
        __endptr[0].n128_u64[0] = 0;
        v66.f32[0] = strtof(v30, __endptr);
        v88 = v66;
        if (__endptr[0].n128_u64[0] != v65)
        {
          goto LABEL_166;
        }

        if (v67 == v30)
        {
          goto LABEL_166;
        }

        v68 = v67;
        __endptr[0].n128_u64[0] = 0;
        v69.f32[0] = strtof(v30, __endptr);
        v87 = v69;
        if (__endptr[0].n128_u64[0] != v68)
        {
          goto LABEL_166;
        }

        if (v70 == v30)
        {
          goto LABEL_166;
        }

        v71 = v70;
        __endptr[0].n128_u64[0] = 0;
        v73.f32[0] = strtof(v30, __endptr);
        if (__endptr[0].n128_u64[0] != v71)
        {
          goto LABEL_166;
        }

        v60 = *(v63 + 5);
        if (v60 <= i)
        {
          v102.i64[0] = 0;
          memset(v105, 0, 32);
          memset(__endptr, 0, sizeof(__endptr));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v110 = 136315906;
          v111 = "operator[]";
          v112 = 1024;
          v113 = 476;
          v114 = 2048;
          v115 = i;
          v116 = 2048;
          v117 = v60;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_168;
        }

        v74 = *(*(v63 + 6) + 4 * i);
        if (v74 <= 2)
        {
          switch(v74)
          {
            case 0:
              v60 = v89[1];
              if (v60 <= v90)
              {
                goto LABEL_173;
              }

              v76 = v88;
              v76.i32[1] = v87.i32[0];
              v76.i32[2] = v73.i32[0];
              *(v89[2] + 48 * v90 + 32) = v76;
              continue;
            case 1:
              v77 = v88;
              v77.i32[1] = v87.i32[0];
              v77.i32[2] = v73.i32[0];
              v102 = vmulq_f32(v77, v85);
              __endptr[0] = xmmword_1E30474D0;
              re::convertIntrinsicEulersToQuaternions<float>(&v102, 1, 0, __endptr, 1);
              v60 = v89[1];
              if (v60 <= v90)
              {
                goto LABEL_174;
              }

              break;
            case 2:
              v73.i32[1] = v88.i32[0];
              v73.i32[2] = v87.i32[0];
              v102 = vmulq_f32(v73, v85);
              __endptr[0] = xmmword_1E30474D0;
              re::convertIntrinsicEulersToQuaternions<float>(&v102, 1, 1, __endptr, 1);
              v60 = v89[1];
              if (v60 <= v90)
              {
                goto LABEL_172;
              }

              break;
            default:
              goto LABEL_178;
          }
        }

        else if (v74 > 4)
        {
          if (v74 == 5)
          {
            v79 = v87;
            v79.i32[1] = v88.i32[0];
            v79.i32[2] = v73.i32[0];
            v102 = vmulq_f32(v79, v85);
            __endptr[0] = xmmword_1E30474D0;
            re::convertIntrinsicEulersToQuaternions<float>(&v102, 1, 4, __endptr, 1);
            v60 = v89[1];
            if (v60 <= v90)
            {
              goto LABEL_177;
            }
          }

          else
          {
            if (v74 != 6)
            {
              goto LABEL_178;
            }

            v73.i32[1] = v87.i32[0];
            v73.i32[2] = v88.i32[0];
            v102 = vmulq_f32(v73, v85);
            __endptr[0] = xmmword_1E30474D0;
            re::convertIntrinsicEulersToQuaternions<float>(&v102, 1, 5, __endptr, 1);
            v60 = v89[1];
            if (v60 <= v90)
            {
              goto LABEL_175;
            }
          }
        }

        else if (v74 == 3)
        {
          v78 = v87;
          v78.i32[1] = v73.i32[0];
          v78.i32[2] = v88.i32[0];
          v102 = vmulq_f32(v78, v85);
          __endptr[0] = xmmword_1E30474D0;
          re::convertIntrinsicEulersToQuaternions<float>(&v102, 1, 2, __endptr, 1);
          v60 = v89[1];
          if (v60 <= v90)
          {
            goto LABEL_176;
          }
        }

        else
        {
          v75 = v88;
          v75.i32[1] = v87.i32[0];
          v75.i32[2] = v73.i32[0];
          v102 = vmulq_f32(v75, v85);
          __endptr[0] = xmmword_1E30474D0;
          re::convertIntrinsicEulersToQuaternions<float>(&v102, 1, 3, __endptr, 1);
          v60 = v89[1];
          if (v60 <= v90)
          {
            goto LABEL_171;
          }
        }

        v80 = __endptr[0].n128_u64[1];
        v81 = v89[2] + 48 * v90;
        *(v81 + 16) = __endptr[0].n128_u64[0];
        *(v81 + 24) = v80;
      }
    }

    if (++v90 == v19)
    {
      v60 = v19;
      goto LABEL_155;
    }
  }

LABEL_168:
  v102.i64[0] = 0;
  memset(v105, 0, 32);
  memset(__endptr, 0, sizeof(__endptr));
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v110 = 136315906;
  v111 = "operator[]";
  v112 = 1024;
  v113 = 468;
  v114 = 2048;
  v115 = v90;
  v116 = 2048;
  v117 = i;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_169:
  v102.i64[0] = 0;
  memset(v105, 0, 32);
  memset(__endptr, 0, sizeof(__endptr));
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v110 = 136315906;
  v111 = "operator[]";
  v112 = 1024;
  v113 = 797;
  v114 = 2048;
  v115 = v19;
  v116 = 2048;
  v117 = v19;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_170:
  v102.i64[0] = 0;
  memset(v105, 0, 32);
  memset(__endptr, 0, sizeof(__endptr));
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v110 = 136315906;
  v111 = "operator[]";
  v112 = 1024;
  v113 = 468;
  v114 = 2048;
  v115 = v86;
  v116 = 2048;
  v117 = i;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_171:
  v103 = 0;
  memset(v105, 0, 32);
  memset(__endptr, 0, sizeof(__endptr));
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v110 = 136315906;
  v111 = "operator[]";
  v112 = 1024;
  v113 = 468;
  v114 = 2048;
  v115 = v90;
  v116 = 2048;
  v117 = v60;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_172:
  v103 = 0;
  memset(v105, 0, 32);
  memset(__endptr, 0, sizeof(__endptr));
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v110 = 136315906;
  v111 = "operator[]";
  v112 = 1024;
  v113 = 468;
  v114 = 2048;
  v115 = v90;
  v116 = 2048;
  v117 = v60;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_173:
  v102.i64[0] = 0;
  memset(v105, 0, 32);
  memset(__endptr, 0, sizeof(__endptr));
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v110 = 136315906;
  v111 = "operator[]";
  v112 = 1024;
  v113 = 468;
  v114 = 2048;
  v115 = v90;
  v116 = 2048;
  v117 = v60;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_174:
  v103 = 0;
  memset(v105, 0, 32);
  memset(__endptr, 0, sizeof(__endptr));
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v110 = 136315906;
  v111 = "operator[]";
  v112 = 1024;
  v113 = 468;
  v114 = 2048;
  v115 = v90;
  v116 = 2048;
  v117 = v60;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_175:
  v103 = 0;
  memset(v105, 0, 32);
  memset(__endptr, 0, sizeof(__endptr));
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v110 = 136315906;
  v111 = "operator[]";
  v112 = 1024;
  v113 = 468;
  v114 = 2048;
  v115 = v90;
  v116 = 2048;
  v117 = v60;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_176:
  v103 = 0;
  memset(v105, 0, 32);
  memset(__endptr, 0, sizeof(__endptr));
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v110 = 136315906;
  v111 = "operator[]";
  v112 = 1024;
  v113 = 468;
  v114 = 2048;
  v115 = v90;
  v116 = 2048;
  v117 = v60;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_177:
  v103 = 0;
  memset(v105, 0, 32);
  memset(__endptr, 0, sizeof(__endptr));
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v110 = 136315906;
  v111 = "operator[]";
  v112 = 1024;
  v113 = 468;
  v114 = 2048;
  v115 = v90;
  v116 = 2048;
  v117 = v60;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_178:
  re::internal::assertLog(4, v72, "assertion failure: '%s' (%s:line %i) Invalid Joint Channel value.", "!Unreachable code", "parseFrameNumbersLine", 507);
  result = _os_crash();
  __break(1u);
  return result;
}

__n128 re::DynamicArray<re::anonymous namespace::BVHJointData>::add(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v5 + 1;
  if (v5 >= v4 && v4 < v6)
  {
    if (*a1)
    {
      v13 = 2 * v4;
      v14 = v4 == 0;
      v15 = 8;
      if (!v14)
      {
        v15 = v13;
      }

      if (v15 <= v6)
      {
        v16 = v6;
      }

      else
      {
        v16 = v15;
      }
    }

    else
    {
      ++*(a1 + 24);
    }
  }

  v8 = (*(a1 + 32) + (*(a1 + 16) << 6));
  v9 = a2->n128_u64[0];
  v8->n128_u64[0] = v8->n128_u64[0] & 0xFFFFFFFFFFFFFFFELL | a2->n128_u64[0] & 1;
  v8->n128_u64[0] = a2->n128_u64[0] & 0xFFFFFFFFFFFFFFFELL | v9 & 1;
  v8->n128_u64[1] = a2->n128_u64[1];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = &str_67;
  result = a2[1];
  v8[1] = result;
  v8[2].n128_u64[1] = 0;
  v8[3].n128_u64[0] = 0;
  v8[2].n128_u64[0] = 0;
  v11 = a2[2].n128_u64[1];
  v8[2].n128_u64[0] = a2[2].n128_u64[0];
  v8[2].n128_u64[1] = v11;
  a2[2].n128_u64[0] = 0;
  a2[2].n128_u64[1] = 0;
  v12 = v8[3].n128_u64[0];
  v8[3].n128_u64[0] = a2[3].n128_u64[0];
  a2[3].n128_u64[0] = v12;
  v8[3].n128_u32[2] = a2[3].n128_u32[2];
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

uint64_t re::anonymous namespace::parseJointDescription(re::_anonymous_namespace_::TokenStream *a1, int a2, uint64_t a3)
{
  v86 = *MEMORY[0x1E69E9840];
  {
    return 0;
  }

  v7 = *(a3 + 32);
  v8 = *(a3 + 16);
  v11 = v10 - NextToken;
  if (v10 == NextToken)
  {
    v12 = 0;
  }

  else
  {
    v13 = 0;
    v12 = v11 <= 1 ? 1 : v10 - NextToken;
    while (v13 != 8)
    {
      if (aChannels[v13] != NextToken[v13])
      {
        return 0;
      }

      if (v12 == ++v13)
      {
        goto LABEL_13;
      }
    }

    v12 = 8;
  }

LABEL_13:
  if (v12 != v11)
  {
    return 0;
  }

  if (v15 == v14)
  {
    return 0;
  }

  v17 = v15;
  __endptr[0].n128_u64[0] = 0;
  v18 = strtol(v14, __endptr, 10);
  if (__endptr[0].n128_u64[0] != v17)
  {
    return 0;
  }

  v19 = v18;
  if (v18 < 1)
  {
    return 0;
  }

  v20 = v18 / 3uLL;
  if (v18 % 3)
  {
    return 0;
  }

  v21 = v7 + (v8 << 6);
  *(v21 - 24) = v20;
  if (v19 > 2)
  {
    v37 = 4 * v20;
    *(v21 - 16) = v38;
    if (v38)
    {
      v40 = v38;
      if (v19 - 3 >= 3)
      {
        bzero(v38, v37 - 4);
        v40 = (v40 + v37 - 4);
      }

      v3 = 0;
      *v40 = 0;
      if (v20 <= 1)
      {
        v41 = 1;
      }

      else
      {
        v41 = v20;
      }

      while (1)
      {
        v44 = v43 - v42;
        if ((v43 - v42 + 1) > 0x20)
        {
          return 0;
        }

        memcpy(__endptr, v42, v44);
        __endptr[0].n128_u8[v44] = 0;
        v47 = v46 - v45;
        if ((v46 - v45 + 1) > 0x20)
        {
          return 0;
        }

        memcpy(&v69, v45, v47);
        *(&v69 + v47) = 0;
        v50 = v49 - v48;
        if ((v49 - v48 + 1) > 0x20)
        {
          return 0;
        }

        memcpy(v72, v48, v50);
        v72[v50] = 0;
        v51 = *(v21 - 24);
        if (v51 <= v3)
        {
          break;
        }

        v52 = 0;
        *(*(v21 - 16) + 4 * v3) = -1;
        v20 = off_1E8721570;
        while (strcmp(__endptr, *(v20 - 16)) || strcmp(&v69, *(v20 - 8)) || strcmp(v72, *v20))
        {
          ++v52;
          v20 += 24;
          if (v52 == 7)
          {
            goto LABEL_66;
          }
        }

        v20 = *(v21 - 24);
        if (v20 <= v3)
        {
          goto LABEL_115;
        }

        *(*(v21 - 16) + 4 * v3) = v52;
LABEL_66:
        v51 = *(v21 - 24);
        if (v51 <= v3)
        {
          goto LABEL_113;
        }

        if (*(*(v21 - 16) + 4 * v3) == -1)
        {
          return 0;
        }

        if (++v3 == v41)
        {
          goto LABEL_20;
        }
      }

      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v81 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v73 = 136315906;
      v74 = "operator[]";
      v75 = 1024;
      v76 = 468;
      v77 = 2048;
      v78 = v3;
      v79 = 2048;
      v80 = v51;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_113:
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v81 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v73 = 136315906;
      v74 = "operator[]";
      v75 = 1024;
      v76 = 468;
      v77 = 2048;
      v78 = v3;
      v79 = 2048;
      v80 = v51;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    re::internal::assertLog(4, v39, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
LABEL_115:
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v81 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v73 = 136315906;
    v74 = "operator[]";
    v75 = 1024;
    v76 = 468;
    v77 = 2048;
    v78 = v3;
    v79 = 2048;
    v80 = v20;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_20:
  {
    return 0;
  }

  while (1)
  {
    v24 = v23 - v22;
    if (v23 == v22)
    {
      v25 = 0;
    }

    else
    {
      v26 = 0;
      v25 = v24 <= 1 ? 1 : v23 - v22;
      while (v26 != 5)
      {
        if (aJoint_0[v26] != v22[v26])
        {
          goto LABEL_72;
        }

        if (v25 == ++v26)
        {
          goto LABEL_31;
        }
      }

      v25 = 5;
    }

LABEL_31:
    if (v25 != v24)
    {
      break;
    }

    __endptr[0].n128_u64[0] = 0;
    __endptr[0].n128_u64[1] = &str_67;
    __endptr[1] = 0u;
    v69 = 0u;
    v70 = 0;
    v71 = a2;
    if (v69)
    {
      if (*(&v69 + 1))
      {
        (*(*v69 + 40))(v27);
        *(&v69 + 1) = 0;
        v70 = 0;
      }

      *&v69 = 0;
    }

    re::StringID::destroyString(__endptr);
    v28 = *(a3 + 32);
    v29 = *(a3 + 16);
    v32 = v31 - v30;
    if (v31 == v30)
    {
      v33 = 0;
    }

    else
    {
      v34 = 0;
      if (v32 <= 1)
      {
        v33 = 1;
      }

      else
      {
        v33 = v31 - v30;
      }

      while (v34 != 5)
      {
        if (aJoint_0[v34] != v30[v34])
        {
          return 0;
        }

        if (v33 == ++v34)
        {
          goto LABEL_46;
        }
      }

      v33 = 5;
    }

LABEL_46:
    if (v33 == v32)
    {
      {
        {
          continue;
        }
      }
    }

    return 0;
  }

LABEL_72:
  v55 = v54 - v53;
  if (v54 == v53)
  {
    v56 = 0;
  }

  else
  {
    v57 = 0;
    v56 = v55 <= 1 ? 1 : v54 - v53;
    while (v57 != 3)
    {
      if (aEnd_0[v57] != v53[v57])
      {
        goto LABEL_109;
      }

      if (v56 == ++v57)
      {
        goto LABEL_82;
      }
    }

    v56 = 3;
  }

LABEL_82:
  if (v56 == v55)
  {
    v60 = v59 - v58;
    if (v59 == v58)
    {
      v61 = 0;
    }

    else
    {
      v62 = 0;
      v61 = v60 <= 1 ? 1 : v59 - v58;
      while (v62 != 3)
      {
        if (aEnd_0[v62] != v58[v62])
        {
          return 0;
        }

        if (v61 == ++v62)
        {
          goto LABEL_93;
        }
      }

      v61 = 3;
    }

LABEL_93:
    if (v61 != v60)
    {
      return 0;
    }

    v65 = v64 - v63;
    if (v64 == v63)
    {
      v66 = 0;
    }

    else
    {
      v67 = 0;
      v66 = v65 <= 1 ? 1 : v64 - v63;
      while (v67 != 4)
      {
        if (aSite[v67] != v63[v67])
        {
          return 0;
        }

        if (v66 == ++v67)
        {
          goto LABEL_104;
        }
      }

      v66 = 4;
    }

LABEL_104:
    {
      return 0;
    }
  }

LABEL_109:
}

char *re::anonymous namespace::TokenStream::getNextToken(re::_anonymous_namespace_::TokenStream *this, char a2)
{
  v4 = *(this + 65);
  v5 = *(this + 66);
  if (v4 < v5)
  {
    v6 = MEMORY[0x1E69E9830];
    do
    {
      v7 = *v4;
      if ((v7 & 0x80000000) != 0)
      {
        v8 = __maskrune(v7, 0x4000uLL);
        v5 = *(this + 66);
        if (!v8)
        {
          break;
        }
      }

      else if ((*(v6 + 4 * v7 + 60) & 0x4000) == 0)
      {
        break;
      }

      ++v4;
    }

    while (v4 < v5);
  }

  if (v4 >= v5)
  {
    v10 = v4;
  }

  else
  {
    v9 = MEMORY[0x1E69E9830];
    v10 = v4;
    do
    {
      v11 = *v10;
      if ((v11 & 0x80000000) != 0)
      {
        v12 = __maskrune(v11, 0x4000uLL);
        v5 = *(this + 66);
        if (v12)
        {
          break;
        }
      }

      else if ((*(v9 + 4 * v11 + 60) & 0x4000) != 0)
      {
        break;
      }

      ++v10;
    }

    while (v10 < v5);
  }

  if (v10 == v5)
  {
    v4 = *(this + 65);
    v13 = *(this + 66);
    v14 = MEMORY[0x1E69E9830];
    while (v4 < v13)
    {
      v15 = *v4;
      if ((v15 & 0x80000000) != 0)
      {
        v16 = __maskrune(v15, 0x4000uLL);
        v13 = *(this + 66);
        if (!v16)
        {
          break;
        }
      }

      else if ((*(v14 + 4 * v15 + 60) & 0x4000) == 0)
      {
        break;
      }

      ++v4;
    }

    v10 = v4;
    if (v4 < v13)
    {
      do
      {
        v17 = *v10;
        if ((v17 & 0x80000000) != 0)
        {
          if (__maskrune(v17, 0x4000uLL))
          {
            break;
          }
        }

        else if ((*(v14 + 4 * v17 + 60) & 0x4000) != 0)
        {
          break;
        }

        ++v10;
      }

      while (v10 < *(this + 66));
    }
  }

  if ((a2 & 1) == 0)
  {
    *(this + 65) = v10;
  }

  return v4;
}

uint64_t re::anonymous namespace::TokenStream::endLine(re::_anonymous_namespace_::TokenStream *this)
{
  v2 = *(this + 65);
  v3 = MEMORY[0x1E69E9830];
  do
  {
    while (1)
    {
      v4 = *(this + 66);
      if (v2 >= v4)
      {
        break;
      }

      v5 = *v2;
      if ((v5 & 0x80000000) != 0)
      {
        v7 = __maskrune(v5, 0x4000uLL);
        v2 = *(this + 65);
        if (v7)
        {
          goto LABEL_5;
        }

LABEL_8:
        v4 = *(this + 66);
        break;
      }

      if ((*(v3 + 4 * v5 + 60) & 0x4000) == 0)
      {
        goto LABEL_8;
      }

LABEL_5:
      v6 = *v2++;
      *(this + 65) = v2;
      if (v6 == 10)
      {
        return 1;
      }
    }

    if (v2 != v4)
    {
      break;
    }

    v2 = *(this + 65);
  }

  while (v2 < *(this + 66));
  return 0;
}

uint64_t re::anonymous namespace::TokenStream::readFromStream(re::_anonymous_namespace_::TokenStream *this)
{
  v2 = *(this + 66);
  v3 = *(this + 65);
  v4 = v2 - v3;
  v5 = this + 8;
  if (v3 != this + 8)
  {
    memmove(this + 8, v3, v2 - v3);
    *(this + 65) = v5;
    *(this + 66) = &v5[v4];
  }

  result = (*(**this + 16))(*this, &v5[v4], 512 - v4);
  *(this + 66) += result;
  return result;
}

void *re::DynamicArray<re::anonymous namespace::BVHJointData>::setCapacity(void *result, unint64_t a2)
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
        if (a2 >> 58)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 64, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = a2 << 6;
          result = (*(*result + 32))(result, a2 << 6, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_18:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v9 << 6;
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          *(v11 + 1) = *(v8 + 1);
          v11[5] = 0;
          v11[6] = 0;
          v11[4] = 0;
          v13 = v8[5];
          v11[4] = v8[4];
          v11[5] = v13;
          v8[4] = 0;
          v8[5] = 0;
          v14 = v11[6];
          v11[6] = v8[6];
          v8[6] = v14;
          *(v11 + 14) = *(v8 + 14);
          if (v8[4])
          {
            v8[4] = 0;
          }

          re::StringID::destroyString(v8);
          v8 += 8;
          v11 += 8;
          v10 -= 64;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t re::anonymous namespace::Token::getSID(re::_anonymous_namespace_::Token *this, re::StringID *a2, _anonymous_namespace_ *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2 - this;
  if (a2 == this)
  {
    return a2 != this;
  }

  if (v5 + 1 < 0x81)
  {
    v7 = memcpy(__dst, this, v5);
    __dst[v5] = 0;
    v11 = 0;
    v12 = &str_67;
    v8 = strlen(__dst);
    v9 = re::StringID::operator=(a3, &v11);
    if (v11)
    {
      if (v11)
      {
      }
    }

    return a2 != this;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "getString(buffer, sizeof(buffer))", "getSID", 156);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::anonymous namespace::parseLeftBraceLine(re::_anonymous_namespace_::TokenStream *a1)
{
  if (v3 == NextToken)
  {
    v4 = 0;
  }

  else
  {
    if (*NextToken != 123)
    {
      return 0;
    }

    v4 = 1;
  }

  if (v4 != v3 - NextToken)
  {
    return 0;
  }
}

uint64_t re::anonymous namespace::parseOffsetLine(re::_anonymous_namespace_::TokenStream *a1, float *a2)
{
  v6 = v5 - NextToken;
  if (v5 == NextToken)
  {
    v7 = 0;
  }

  else
  {
    v8 = 0;
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v5 - NextToken;
    }

    while (v8 != 6)
    {
      if (aOffset_0[v8] != NextToken[v8])
      {
        return 0;
      }

      if (v7 == ++v8)
      {
        goto LABEL_11;
      }
    }

    v7 = 6;
  }

LABEL_11:
  {
  }

  else
  {
    return 0;
  }
}

uint64_t re::anonymous namespace::parseRightBraceLine(re::_anonymous_namespace_::TokenStream *a1)
{
  if (v3 == NextToken)
  {
    v4 = 0;
  }

  else
  {
    if (*NextToken != 125)
    {
      return 0;
    }

    v4 = 1;
  }

  if (v4 != v3 - NextToken)
  {
    return 0;
  }
}

uint64_t re::fillStreamFP16(re *this, const re::GeomAttribute *a2, char *a3, uint64_t a4, float a5)
{
  v6 = a3;
  v7 = (a2 + a4);
  v8 = *(this + 17);
  if (v8 <= 5)
  {
    if (v8 == 4)
    {
      v55 = re::GeomAttribute::accessValues<int>(this);
      v25 = v56;
      if (v56)
      {
        _S1 = *v55;
        __asm
        {
          FCVT            H0, S1
          FCVT            S2, H0
        }

        v60 = vabds_f32(*v55, _S2);
        if (*v55 == _S2 || v60 <= a5)
        {
          v31 = 0;
          while (1)
          {
            *v7 = _H0;
            if (v56 - 1 == v31)
            {
              goto LABEL_54;
            }

            v7 = (v7 + v6);
            _S1 = v55[v31 + 1];
            __asm
            {
              FCVT            H0, S1
              FCVT            S2, H0
            }

            v64 = vabds_f32(_S1, _S2);
            ++v31;
            if (_S1 != _S2 && v64 > a5)
            {
              return v31 >= v25;
            }
          }
        }

        return 0;
      }
    }

    else
    {
      if (v8 != 5)
      {
        goto LABEL_57;
      }

      v23 = re::GeomAttribute::accessValues<int>(this);
      v25 = v24;
      if (v24)
      {
        _D1 = *v23;
        __asm { FCVT            H0, D1 }

        *&_D1 = *v23;
        __asm { FCVT            S2, H0 }

        v29 = vabds_f32(*&_D1, _S2);
        if (*&_D1 == _S2 || v29 <= a5)
        {
          v31 = 0;
          while (1)
          {
            *v7 = _H0;
            if (v24 - 1 == v31)
            {
              break;
            }

            v7 = (v7 + v6);
            _D1 = v23[v31 + 1];
            __asm { FCVT            H0, D1 }

            *&_D1 = _D1;
            __asm { FCVT            S2, H0 }

            v34 = vabds_f32(*&_D1, _S2);
            ++v31;
            if (*&_D1 != _S2 && v34 > a5)
            {
              return v31 >= v25;
            }
          }

LABEL_54:
          v31 = v25;
          return v31 >= v25;
        }

        return 0;
      }
    }

    return 1;
  }

  switch(v8)
  {
    case 6u:
      v38 = re::GeomAttribute::accessValues<int>(this);
      if (v39)
      {
        v12 = 0;
        v41 = (a2 + a4 + 2);
        v42 = 1;
        v43 = v39;
        do
        {
          _D1.i32[0] = v38->i32[0];
          __asm { FCVT            H1, S1 }

          *(v41 - 1) = _D1.i16[0];
          _S2 = v38->i32[1];
          __asm { FCVT            H2, S2 }

          *v41 = _S2;
          _D1.i16[1] = _S2;
          v45 = vsub_f32(*v38, *&vcvtq_f32_f16(_D1));
          _D1 = vmul_f32(v45, v45);
          if (vaddv_f32(_D1) > (a5 * a5))
          {
            break;
          }

          v12 = v42++ >= v39;
          ++v38;
          v41 = (v41 + v6);
          --v43;
        }

        while (v43);
        return v12;
      }

      return 1;
    case 7u:
      v46 = re::GeomAttribute::accessValues<int>(this);
      if (v47)
      {
        v48 = 0;
        v12 = 0;
        v49 = v46;
        do
        {
          v50 = 0;
          v67 = 0uLL;
          do
          {
            _S2 = *(v49 + 4 * v50);
            __asm
            {
              FCVT            H2, S2
              FCVT            S3, H2
            }

            v67.i32[v50] = _S3;
            v7[v50++] = _S2;
          }

          while (v50 != 3);
          v53 = vsubq_f32(*(v46 + 16 * v48), v67);
          v54 = vmulq_f32(v53, v53);
          if ((v54.f32[2] + vaddv_f32(*v54.f32)) > (a5 * a5))
          {
            break;
          }

          ++v48;
          v7 = (v7 + v6);
          v49 += 16;
          v12 = v48 >= v47;
        }

        while (v48 != v47);
        return v12;
      }

      return 1;
    case 8u:
      v9 = re::GeomAttribute::accessValues<int>(this);
      if (v10)
      {
        v11 = 0;
        v12 = 0;
        v13 = v9;
        do
        {
          v14 = 0;
          v67 = 0uLL;
          do
          {
            _S1 = *(v13 + 4 * v14);
            __asm
            {
              FCVT            H1, S1
              FCVT            S2, H1
            }

            v67.i32[v14] = _S2;
            v7[v14++] = _S1;
          }

          while (v14 != 4);
          v21 = vsubq_f32(*(v9 + 16 * v11), v67);
          v22 = vmulq_f32(v21, v21);
          if (vaddv_f32(vadd_f32(*v22.i8, *&vextq_s8(v22, v22, 8uLL))) > (a5 * a5))
          {
            break;
          }

          ++v11;
          v7 = (v7 + v6);
          v13 += 16;
          v12 = v11 >= v10;
        }

        while (v11 != v10);
        return v12;
      }

      return 1;
  }

LABEL_57:
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Attempt to convert a non-numeric type into a half-float stream.", "!Unreachable code", "fillStreamFP16", 215);
  result = _os_crash();
  __break(1u);
  return result;
}