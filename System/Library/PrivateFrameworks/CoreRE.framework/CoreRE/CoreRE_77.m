void re::loadUSKPhysicsNodes(void *a1, uint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!re::hasColliderAPI(v3))
  {
    goto LABEL_13;
  }

  re::importPhysicsCollider(v3, &v42);
  if (v42.i8[0])
  {
    v5 = [v3 path];
    v6 = [v5 stringValue];
    v7 = [v6 UTF8String];
    *buf = 0;
    *&buf[8] = &str_67;
    v8 = v43;
    IsSceneGroundPlane = re::importPhysicsIsSceneGroundPlane(v3);
    v10 = re::importPhysicsCollidesWithEnvironment(v3);
    re::USDImportContext::addPhysicsCollider(a2, buf, v8, &v44, IsSceneGroundPlane, v10);
    if (buf[0])
    {
      if (buf[0])
      {
      }
    }

    *buf = 0;
    *&buf[8] = &str_67;
  }

  else
  {
    v12 = *re::pipelineLogObjects(v4);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v34 = v12;
    v5 = [v3 path];
    v35 = [v5 stringValue];
    v36 = [v35 UTF8String];
    if (BYTE8(v44))
    {
      v37 = v45;
    }

    else
    {
      v37 = &v44 + 9;
    }

    *buf = 136315394;
    *&buf[4] = v36;
    *&buf[12] = 2080;
    *&buf[14] = v37;
    _os_log_error_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_ERROR, "Physics collider (%s) import error: %s.", buf, 0x16u);
  }

LABEL_9:
  if (v42.i8[0] & 1) == 0 && v44 && (BYTE8(v44))
  {
    (*(*v44 + 40))();
  }

LABEL_13:
  v13 = v3;
  if (re::isRootNodeByPath(v13))
  {

    goto LABEL_34;
  }

  v14 = [v13 property:@"preliminary:physics:rigidBody:mass"];

  if (v14)
  {
    re::importPhysicsRigidBody(v13, &v42);
    if (v42.i8[0])
    {
      hasColliderAPI = re::hasColliderAPI(v13);
      if (!hasColliderAPI)
      {
        v26 = *re::pipelineLogObjects(hasColliderAPI);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v38 = v26;
          v39 = [v13 path];
          v40 = [v39 stringValue];
          v41 = [v40 UTF8String];
          *buf = 136315394;
          *&buf[4] = v41;
          *&buf[12] = 2080;
          *&buf[14] = "Rigid body is required to have a collider associated to it.";
          _os_log_error_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_ERROR, "Physics rigid body (%s) import error: %s.", buf, 0x16u);
        }

        goto LABEL_30;
      }

      v17 = [v13 path];
      v18 = [v17 stringValue];
      v19 = [v18 UTF8String];
      *buf = 0;
      *&buf[8] = &str_67;
      re::USDImportContext::addPhysicsRigidBody(a2, buf, &v43);
      if (buf[0])
      {
        if (buf[0])
        {
        }
      }

      *buf = 0;
      *&buf[8] = &str_67;
    }

    else
    {
      v21 = *re::pipelineLogObjects(v15);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

      v22 = v21;
      v17 = [v13 path];
      v23 = [v17 stringValue];
      v24 = [v23 UTF8String];
      if (BYTE8(v44))
      {
        v25 = v45;
      }

      else
      {
        v25 = &v44 + 9;
      }

      *buf = 136315394;
      *&buf[4] = v24;
      *&buf[12] = 2080;
      *&buf[14] = v25;
      _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "Physics rigid body (%s) import error: %s.", buf, 0x16u);
    }

LABEL_30:
    if (v42.i8[0] & 1) == 0 && v44 && (BYTE8(v44))
    {
      (*(*v44 + 40))();
    }
  }

LABEL_34:
  v27 = [v13 childIterator];
  v28 = [v27 nextObject];
  if (v28)
  {
    v29 = v28;
    do
    {
      v30 = [v13 metadataWithKey:@"kind"];
      v31 = [v30 stringValue];
      v32 = [v31 isEqual:@"sceneLibrary"];

      if ((v32 & 1) == 0)
      {
        re::loadUSKPhysicsNodes(v29, a2);
      }

      v33 = [v27 nextObject];

      v29 = v33;
    }

    while (v33);
  }
}

void re::loadUSKDeformerAttributes(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v225 = *MEMORY[0x1E69E9840];
  v197 = a1;
  v196 = a2;
  v9 = [v196 propertyList];
  v10 = [v9 nextObject];
  if (v10)
  {
    v12 = v10;
    v13 = *MEMORY[0x1E69DEDF0];
    v200 = *MEMORY[0x1E69DED90];
    v198 = *MEMORY[0x1E69DEDB8];
    v194 = *MEMORY[0x1E69DEDF8];
    v192 = *MEMORY[0x1E69DEDD0];
    v190 = *MEMORY[0x1E69DEDE8];
    v189 = *MEMORY[0x1E69DEE00];
    v188 = *MEMORY[0x1E69DEE20];
    v187 = *MEMORY[0x1E69DEE18];
    *&v11 = 136315394;
    v201 = v11;
    v185 = *MEMORY[0x1E69DEDE0];
    v186 = *MEMORY[0x1E69DEDA8];
    v193 = v9;
    v195 = *MEMORY[0x1E69DEDF0];
    while (1)
    {
      v14 = [v12 name];
      v15 = [v14 stringValue];
      v16 = [v15 containsString:@"info:"];

      if ((v16 & 1) == 0)
      {
        break;
      }

LABEL_76:
      v117 = [v9 nextObject];

      v12 = v117;
      if (!v117)
      {
        goto LABEL_110;
      }
    }

    v17 = [v12 name];
    v18 = [v17 stringValue];
    v19 = [v18 UTF8String];
    buf[0].f64[0] = 0.0;
    *&buf[0].f64[1] = &str_67;
    v20 = buf[0];
    buf[0].f64[0] = 0.0;
    *&buf[0].f64[1] = &str_67;

    v21 = [v12 type];
    LODWORD(v18) = [v21 isEqualToString:v13];

    if (v18)
    {
      v22 = [v12 intValue];
      v23 = v201;
      LODWORD(v23) = v22;
      v5 = 1;
LABEL_6:
      v6 = 1;
LABEL_63:
      v109 = *(a4 + 8);
      v110 = *(a4 + 16);
      v201 = v23;
      if (v110 >= v109)
      {
        v111 = v110 + 1;
        if (v109 < v110 + 1)
        {
          if (*a4)
          {
            v112 = 2 * v109;
            v113 = v109 == 0;
            v114 = 8;
            if (!v113)
            {
              v114 = v112;
            }

            if (v114 <= v111)
            {
              v115 = v111;
            }

            else
            {
              v115 = v114;
            }

            re::DynamicArray<re::GeomDeformer::Attribute>::setCapacity(a4, v115);
          }

          else
          {
            re::DynamicArray<re::GeomDeformer::Attribute>::setCapacity(a4, v111);
            ++*(a4 + 24);
          }

          *&v23 = v201;
        }

        v110 = *(a4 + 16);
      }

      v116 = *(a4 + 32) + 40 * v110;
      *v116 = v6;
      *(v116 + 8) = v20;
      *(v116 + 24) = v5;
      *(v116 + 32) = v23;
      ++*(a4 + 16);
      ++*(a4 + 24);
      goto LABEL_76;
    }

    v24 = [v12 type];
    v25 = [v24 isEqualToString:v200];

    if (v25)
    {
      v22 = [v12 BOOLValue];
      v23 = v201;
      LODWORD(v23) = v22;
      v6 = 1;
      v5 = 1;
      goto LABEL_63;
    }

    v26 = [v12 type];
    v27 = [v26 isEqualToString:v198];

    if (v27)
    {
      v22 = [v12 floatValue];
      v5 = 0;
      v28 = v201;
      LODWORD(v28) = v29;
      v23 = v28;
      goto LABEL_6;
    }

    v30 = [v12 type];
    v31 = [v30 isEqualToString:v194];

    if (v31)
    {
      *&v32 = *(a3 + 152);
      v201 = v32;
      v33 = [v12 data];
      v34 = [v33 dataNoCopy];
      v35 = [v34 bytes];

      v36 = [v33 dataNoCopy];
      v37 = [v36 length];
      v38 = [v33 arraySize];

      if (v37 == 4 * v38)
      {
        v40 = v35;
        v41 = [v33 arraySize];
        v204.var1 = 0;
        *&v205 = 0;
        *&v204.var0 = 0;
        v43 = *(a3 + 152);
        v5 = *(a3 + 120);
        if (v43 + 1 > 8 * v5)
        {
          re::BucketArray<re::FixedArray<int>,8ul>::setBucketsCapacity((a3 + 112), (v43 + 8) >> 3);
          v5 = *(a3 + 120);
        }

        v44 = v43 >> 3;
        v9 = v193;
        if (v5 <= v43 >> 3)
        {
          v209 = 0;
          v212 = 0u;
          v213 = 0u;
          v211 = 0u;
          memset(buf, 0, sizeof(buf));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v217 = 136315906;
          v218 = "operator[]";
          v219 = 1024;
          v220 = 858;
          v221 = 2048;
          v222 = v43 >> 3;
          v223 = 2048;
          v224 = v5;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_112:
          re::internal::assertLog(4, v42, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
          _os_crash();
          __break(1u);
LABEL_113:
          v209 = 0;
          v212 = 0u;
          v213 = 0u;
          v211 = 0u;
          memset(buf, 0, sizeof(buf));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v217 = 136315906;
          v218 = "operator[]";
          v219 = 1024;
          v220 = 858;
          v221 = 2048;
          v222 = v44;
          v223 = 2048;
          v224 = v5;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_114:
          re::internal::assertLog(4, v60, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
          _os_crash();
          __break(1u);
LABEL_115:
          *&v204.var0 = 0;
          v212 = 0u;
          v213 = 0u;
          v211 = 0u;
          memset(buf, 0, sizeof(buf));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v217 = 136315906;
          v218 = "operator[]";
          v219 = 1024;
          v220 = 789;
          v221 = 2048;
          v222 = 0;
          v223 = 2048;
          v224 = 0;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_116:
          v209 = 0;
          v212 = 0u;
          v213 = 0u;
          v211 = 0u;
          memset(buf, 0, sizeof(buf));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v217 = 136315906;
          v218 = "operator[]";
          v219 = 1024;
          v220 = 858;
          v221 = 2048;
          v222 = v44;
          v223 = 2048;
          v224 = v5;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_117:
          re::internal::assertLog(4, v94, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
          _os_crash();
          __break(1u);
LABEL_118:
          v209 = 0;
          v212 = 0u;
          v213 = 0u;
          v211 = 0u;
          memset(buf, 0, sizeof(buf));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v217 = 136315906;
          v218 = "operator[]";
          v219 = 1024;
          v220 = 858;
          v221 = 2048;
          v222 = v40;
          v223 = 2048;
          v224 = v44;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v45 = *(a3 + 144);
        if (*(a3 + 128))
        {
          v45 = a3 + 136;
        }

        v46 = *(v45 + 8 * v44);
        ++*(a3 + 152);
        ++*(a3 + 160);
        v47 = (v46 + 24 * (v43 & 7));
        *v47 = 0;
        v47[1] = 0;
        v47[2] = 0;
        *v47 = *&v204.var0;
        *&v204.var0 = 0;
        v47[1] = v204.var1;
        v47[2] = v205;
        v48 = *(a3 + 152);
        if (!v48)
        {
          goto LABEL_112;
        }

        v49 = *(re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::operator[](a3 + 112, v48 - 1) + 16);
        memcpy(v49, v40, 4 * [v33 arraySize]);
        v6 = [v33 arraySize];
        v13 = v195;
      }

      else
      {
        v67 = *re::pipelineLogObjects(v39);
        v9 = v193;
        v13 = v195;
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          v155 = v67;
          v156 = [v33 arraySize];
          LODWORD(buf[0].f64[0]) = 134217984;
          *(buf[0].f64 + 4) = v156;
          _os_log_error_impl(&dword_1E1C61000, v155, OS_LOG_TYPE_ERROR, "Invalid array size (%lu)", buf, 0xCu);
        }
      }

      v5 = 2;
      goto LABEL_62;
    }

    v50 = [v12 type];
    v51 = [v50 isEqualToString:v192];

    if (v51)
    {
      *&v52 = *(a3 + 264);
      v201 = v52;
      v53 = [v12 data];
      v54 = [v53 dataNoCopy];
      v55 = [v54 bytes];

      v56 = [v53 dataNoCopy];
      v40 = [v56 length];
      v57 = 3 * [v53 arraySize];

      if (v40 == 4 * v57)
      {
        v59 = [v53 arraySize];
        v204.var1 = 0;
        *&v205 = 0;
        *&v204.var0 = 0;
        v61 = *(a3 + 264);
        v5 = *(a3 + 232);
        if (v61 + 1 > 8 * v5)
        {
          re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::setBucketsCapacity((a3 + 224), (v61 + 8) >> 3);
          v5 = *(a3 + 232);
        }

        v44 = v61 >> 3;
        v9 = v193;
        if (v5 <= v61 >> 3)
        {
          goto LABEL_113;
        }

        v62 = *(a3 + 256);
        if (*(a3 + 240))
        {
          v62 = a3 + 248;
        }

        v63 = *(v62 + 8 * v44);
        ++*(a3 + 264);
        ++*(a3 + 272);
        v64 = (v63 + 24 * (v61 & 7));
        *v64 = 0;
        v64[1] = 0;
        v64[2] = 0;
        *v64 = *&v204.var0;
        *&v204.var0 = 0;
        v64[1] = v204.var1;
        v64[2] = v205;
        v65 = *(a3 + 264);
        if (!v65)
        {
          goto LABEL_114;
        }

        v66 = *(re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::operator[](a3 + 224, v65 - 1) + 16);
        memcpy(v66, v55, 12 * [v53 arraySize]);
        v6 = [v53 arraySize];
        v13 = v195;
      }

      else
      {
        v78 = *re::pipelineLogObjects(v58);
        v13 = v195;
        if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          v168 = v78;
          v169 = [v53 arraySize];
          LODWORD(buf[0].f64[0]) = 134217984;
          *(buf[0].f64 + 4) = v169;
          _os_log_error_impl(&dword_1E1C61000, v168, OS_LOG_TYPE_ERROR, "Invalid array size (%lu)", buf, 0xCu);
        }

        v9 = v193;
      }

      v5 = 4;
LABEL_62:
      v23 = v201;
      goto LABEL_63;
    }

    v68 = [v12 type];
    v69 = [v68 isEqualToString:v190];

    if (v69)
    {
      v70 = [v12 name];
      v71 = [v70 stringValue];
      v72 = [v71 componentsSeparatedByString:@":"];

      v181 = v72;
      v73 = [v72 objectAtIndexedSubscript:0];
      LODWORD(v71) = [v73 isEqualToString:@"primvars"];

      if (v71)
      {
        v75 = MEMORY[0x1E696AEC0];
        v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(a3 + 24)];
        v40 = [v12 name];
        v76 = [v40 stringValue];
        v77 = [v75 stringWithFormat:@"%@:%@", v44, v76];

        if (!*(a5 + 304))
        {
          goto LABEL_115;
        }

        re::addPropertyToGeomModelDescriptor(v12, 0, @"vertex", (**(a5 + 320) + 24), [v77 UTF8String], 0, v206);
        v9 = v193;
        v13 = v195;
        if ((v206[0] & 1) == 0 && v207)
        {
          if (BYTE8(v207))
          {
            (*(*v207 + 40))();
          }

          v208 = 0u;
          v207 = 0u;
        }
      }

      else
      {
        *&v74 = *(a3 + 208);
        v201 = v74;
        v77 = [v12 data];
        v87 = [v77 dataNoCopy];
        v88 = [v87 bytes];

        v89 = [v77 dataNoCopy];
        v90 = [v89 length];
        v91 = [v77 arraySize];

        if (v90 == 4 * v91)
        {
          v40 = v88;
          v93 = [v77 arraySize];
          v204.var1 = 0;
          *&v205 = 0;
          *&v204.var0 = 0;
          v95 = *(a3 + 208);
          v5 = *(a3 + 176);
          v9 = v193;
          if (v95 + 1 > 8 * v5)
          {
            re::BucketArray<re::FixedArray<float>,8ul>::setBucketsCapacity((a3 + 168), (v95 + 8) >> 3);
            v5 = *(a3 + 176);
          }

          v44 = v95 >> 3;
          if (v5 <= v95 >> 3)
          {
            goto LABEL_116;
          }

          v96 = *(a3 + 200);
          if (*(a3 + 184))
          {
            v96 = a3 + 192;
          }

          v97 = *(v96 + 8 * v44);
          ++*(a3 + 208);
          ++*(a3 + 216);
          v98 = (v97 + 24 * (v95 & 7));
          *v98 = 0;
          v98[1] = 0;
          v98[2] = 0;
          *v98 = *&v204.var0;
          *&v204.var0 = 0;
          v98[1] = v204.var1;
          v98[2] = v205;
          v99 = *(a3 + 208);
          if (!v99)
          {
            goto LABEL_117;
          }

          v100 = *(re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::operator[](a3 + 168, v99 - 1) + 16);
          memcpy(v100, v40, 4 * [v77 arraySize]);
          v6 = [v77 arraySize];
          v5 = 3;
          v13 = v195;
        }

        else
        {
          v108 = *re::pipelineLogObjects(v92);
          v9 = v193;
          v13 = v195;
          if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
          {
            v176 = v108;
            v177 = [v77 arraySize];
            LODWORD(buf[0].f64[0]) = 134217984;
            *(buf[0].f64 + 4) = v177;
            _os_log_error_impl(&dword_1E1C61000, v176, OS_LOG_TYPE_ERROR, "Invalid array size (%lu)", buf, 0xCu);
          }

          v5 = 3;
        }
      }

      goto LABEL_62;
    }

    v79 = [v12 type];
    v80 = [v79 isEqualToString:v189];

    if (!v80)
    {
      v101 = [v12 type];
      v102 = [v101 isEqualToString:v188];

      if (v102)
      {
        *&v103 = *(a3 + 376);
        v202 = v103;
        v104 = [v12 stringValue];
        v105 = [v104 UTF8String];
        buf[0].f64[0] = 0.0;
        *&buf[0].f64[1] = &str_67;
        v106 = re::BucketArray<re::StringID,8ul>::addUninitialized(a3 + 336);
        v107 = LOBYTE(buf[0].f64[0]);
        *v106 = *v106 & 0xFFFFFFFFFFFFFFFELL | LOBYTE(buf[0].f64[0]) & 1;
        *v106 = *&buf[0].f64[0] & 0xFFFFFFFFFFFFFFFELL | v107 & 1;
        *(v106 + 8) = buf[0].f64[1];
        buf[0].f64[0] = 0.0;
        *&buf[0].f64[1] = &str_67;

        v23 = v202;
      }

      else
      {
        v118 = [v12 type];
        v119 = [v118 isEqualToString:v187];

        if (!v119)
        {
          v154 = [v12 type];
          if ([v154 isEqualToString:v186])
          {

            v13 = v195;
          }

          else
          {
            v164 = [v12 type];
            v165 = [v164 isEqualToString:v185];

            v13 = v195;
            if (!v165)
            {
              v170 = *re::pipelineLogObjects(v166);
              v153 = os_log_type_enabled(v170, OS_LOG_TYPE_DEFAULT);
              if (v153)
              {
                v171 = v170;
                v184 = [v12 name];
                v172 = [v184 stringValue];
                v173 = [v172 UTF8String];
                v174 = [v12 type];
                v175 = [v174 UTF8String];
                LODWORD(buf[0].f64[0]) = 136315394;
                *(buf[0].f64 + 4) = v173;
                v13 = v195;
                WORD2(buf[0].f64[1]) = 2080;
                *(&buf[0].f64[1] + 6) = v175;
                _os_log_impl(&dword_1E1C61000, v171, OS_LOG_TYPE_DEFAULT, "Deformer attribute [%s] has an invalid type [%s], skipping.", buf, 0x16u);
              }

              goto LABEL_91;
            }
          }

          v215 = 0u;
          v216 = 0u;
          v213 = 0u;
          v214 = 0u;
          v211 = 0u;
          v212 = 0u;
          memset(buf, 0, sizeof(buf));
          [v12 double4x4Value];
          *&v167 = *(a3 + 432);
          v203 = v167;
          v183 = vcvt_hight_f32_f64(vcvt_f32_f64(buf[0]), buf[1]);
          v180 = vcvt_hight_f32_f64(vcvt_f32_f64(v211), v212);
          v179 = vcvt_hight_f32_f64(vcvt_f32_f64(v213), v214);
          v178 = vcvt_hight_f32_f64(vcvt_f32_f64(v215), v216);
          v22 = re::BucketArray<re::Matrix4x4<float>,8ul>::addUninitialized(a3 + 392);
          v23 = v203;
          *v22 = v183;
          *(v22 + 1) = v180;
          *(v22 + 2) = v179;
          *(v22 + 3) = v178;
          v5 = 7;
          goto LABEL_6;
        }

        v120 = [v12 resourcePath];
        v121 = [v120 resolvedPath];
        re::StringID::StringID(buf, [v121 UTF8String]);
        v122 = re::BucketArray<re::StringID,8ul>::addUninitialized(a3 + 336);
        v123 = LOBYTE(buf[0].f64[0]);
        *v122 = *v122 & 0xFFFFFFFFFFFFFFFELL | LOBYTE(buf[0].f64[0]) & 1;
        *v122 = *&buf[0].f64[0] & 0xFFFFFFFFFFFFFFFELL | v123 & 1;
        *(v122 + 8) = buf[0].f64[1];
        buf[0].f64[0] = 0.0;
        *&buf[0].f64[1] = &str_67;
        re::StringID::destroyString(buf);

        *&v23 = *(a3 + 376);
      }

      v5 = 6;
      v6 = 1;
      v13 = v195;
      goto LABEL_63;
    }

    *&v81 = *(a3 + 320);
    v201 = v81;
    *&v205 = 0;
    *(&v205 + 1) = &str_67;
    v82 = [v12 objectPath];
    v83 = [v197 nodeAtPath:v82];

    if (!v83)
    {
      v124 = *re::pipelineLogObjects(v84);
      if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
      {
        v125 = v124;
        v126 = [v12 objectPath];
        v127 = [v126 stringValue];
        v128 = [v127 UTF8String];
        LODWORD(buf[0].f64[0]) = 136315138;
        *(buf[0].f64 + 4) = v128;
        v129 = v125;
        v130 = "Failed to find target at path: %s";
        goto LABEL_89;
      }

LABEL_90:

      v5 = 5;
      v13 = v195;
LABEL_91:
      if (LOBYTE(v20.f64[0]))
      {
      }

      goto LABEL_76;
    }

    v85 = [v83 typeName];
    v86 = [v85 stringValue];
    if ([v86 isEqualToString:@"Preliminary_Deformer"])
    {
    }

    else
    {
      v131 = [v83 typeName];
      v132 = [v131 stringValue];
      v133 = [v132 isEqualToString:@"Deformer"];

      v134 = a3;
      if (!v133)
      {
        v182 = v83;
        v157 = [v83 path];
        v158 = [v157 stringValue];
        re::StringID::StringID(buf, [v158 UTF8String]);
        v159 = buf[0].f64[1];
        v145 = buf[0].f64[0];
        buf[0].f64[0] = 0.0;
        *&buf[0].f64[1] = &str_67;
        v204 = __PAIR128__(*&v159, *&v145);
        re::StringID::destroyString(buf);

        LOBYTE(v150) = 0;
LABEL_96:
        v160 = v134[40];
        v44 = v134[36];
        if (v160 + 1 > 8 * v44)
        {
          re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::setBucketsCapacity(v134 + 35, (v160 + 8) >> 3);
          v44 = v134[36];
        }

        v40 = v160 >> 3;
        if (v44 <= v160 >> 3)
        {
          goto LABEL_118;
        }

        v161 = *(a3 + 312);
        if (*(a3 + 296))
        {
          v161 = a3 + 304;
        }

        v162 = *(v161 + 8 * v40);
        ++*(a3 + 320);
        ++*(a3 + 328);
        v163 = re::StringID::StringID((v162 + 32 * (v160 & 7)), &v204);
        re::StringID::StringID((v163 + 16), &v205);

        if (LOBYTE(v150))
        {
        }

        v9 = v193;
        v13 = v195;
        if (LOBYTE(v145))
        {
        }

        v5 = 5;
        v6 = 1;
        goto LABEL_62;
      }
    }

    v135 = [v83 parent];
    if (!v135 || (v136 = v135, [v83 parent], v137 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v137, "parent"), v138 = objc_claimAutoreleasedReturnValue(), v138, v137, v136, !v138))
    {
      v151 = *re::pipelineLogObjects(v135);
      v9 = v193;
      if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
      {
        v125 = v151;
        v126 = [v12 objectPath];
        v127 = [v126 stringValue];
        v152 = [v127 UTF8String];
        LODWORD(buf[0].f64[0]) = 136315138;
        *(buf[0].f64 + 4) = v152;
        v129 = v125;
        v130 = "Invalid path: %s";
LABEL_89:
        _os_log_impl(&dword_1E1C61000, v129, OS_LOG_TYPE_DEFAULT, v130, buf, 0xCu);
      }

      goto LABEL_90;
    }

    v139 = [v83 parent];
    v140 = [v139 parent];
    v141 = [v140 path];
    v142 = [v141 stringValue];
    re::StringID::StringID(buf, [v142 UTF8String]);
    v143 = v83;
    v144 = buf[0].f64[1];
    v145 = buf[0].f64[0];
    buf[0].f64[0] = 0.0;
    *&buf[0].f64[1] = &str_67;
    v204 = __PAIR128__(*&v144, *&v145);
    re::StringID::destroyString(buf);

    v182 = v143;
    v146 = [v143 properties];
    v147 = [v146 objectForKeyedSubscript:@"info:id"];
    v148 = [v147 stringValue];
    re::StringID::StringID(buf, [v148 UTF8String]);
    v149 = buf[0].f64[1];
    v150 = buf[0].f64[0];
    buf[0].f64[0] = 0.0;
    *&buf[0].f64[1] = &str_67;
    v205 = __PAIR128__(*&v149, *&v150);
    re::StringID::destroyString(buf);

    v134 = a3;
    goto LABEL_96;
  }

LABEL_110:
}

uint64_t re::BucketArray<re::StringID,8ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 8 * v3)
  {
    re::BucketArray<re::StringID,8ul>::setBucketsCapacity(a1, (v2 + 8) >> 3);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = *(v4 + 8 * (v2 >> 3));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 16 * (v2 & 7);
}

uint64_t re::BucketArray<re::Matrix4x4<float>,8ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 8 * v3)
  {
    re::BucketArray<re::Matrix4x4<float>,8ul>::setBucketsCapacity(a1, (v2 + 8) >> 3);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = *(v4 + 8 * (v2 >> 3));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + ((v2 & 7) << 6);
}

BOOL re::hasColliderAPI(void *a1)
{
  v1 = a1;
  if (re::isRootNodeByPath(v1))
  {
    v2 = 0;
  }

  else
  {
    v3 = [v1 property:@"preliminary:physics:collider:convexShape"];
    v2 = v3 != 0;
  }

  return v2;
}

uint64_t re::createEntityFromImportContext(_anonymous_namespace_ *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t *a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = a4;
  v750 = *MEMORY[0x1E69E9840];
  v11 = *(a7 + 8);
  if (v11 <= a4)
  {
LABEL_716:
    *&v640 = 0;
    *v724 = 0u;
    v723 = 0u;
    v722 = 0u;
    v721 = 0u;
    v720 = 0u;
    v328 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v702[0].n128_u32[0] = 136315906;
    *(v702[0].n128_u64 + 4) = "operator[]";
    v702[0].n128_u16[6] = 1024;
    *(&v702[0].n128_u32[3] + 2) = 468;
    v702[1].n128_u16[1] = 2048;
    *(v702[1].n128_u64 + 4) = v10;
    v702[1].n128_u16[6] = 2048;
    *(&v702[1].n128_u64[1] + 6) = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_717;
  }

  *(*(a7 + 16) + a4) = 1;
  v690 = 0;
  v689 = 0;
  v691 = 1;
  v694 = 0;
  v692 = 0;
  v693 = 0;
  v695 = 0;
  v679 = 0u;
  v680 = 1;
  v681 = 0;
  v682 = 0u;
  v683 = 0;
  v684 = 0;
  v685 = 0u;
  v686 = 0;
  memset(v687, 0, sizeof(v687));
  v688 = 0x7FFFFFFFLL;
  v15 = re::DynamicArray<re::DynamicString>::setCapacity(&v684, 0x40uLL);
  ++v686;
  v17 = *(a2 + 720);
  v678 = 0;
  v676 = 0;
  v677 = 0;
  v19 = *(a2 + 720);
  *&v720 = -1;
  v675 = 0;
  v673 = 0;
  v674 = 0;
  LOBYTE(v720) = 0;
  *(&v720 + 1) = *re::BucketArray<unsigned long,32ul>::operator[](a2 + 680, v10);
  v721 = xmmword_1E3047670;
  v722 = xmmword_1E3047680;
  v723 = xmmword_1E30476A0;
  *v724 = xmmword_1E30474D0;
  re::BucketArray<re::createEntityFromImportContext(re::USDImportContext &,re::SceneImportOperation &,unsigned long,re::BucketArray<re::TimelineGroupBuilder *,8ul> &,re::AnimationSceneEntityData &,re::FixedArray<BOOL> &,re::HashTable<re::StringID,re::Pair<re::StringID,re::StringID,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false> *,BOOL)::TransformedMeshItem,8ul>::add(&v689, &v720);
  v664 = 0;
  v663 = 0;
  v665 = &str_67;
  v666 = 1;
  v668 = 0;
  v667[0] = 0;
  v667[1] = 0;
  v669 = 0;
  v672 = 0;
  memset(v670, 0, sizeof(v670));
  v671 = 0;
  v580 = v10;
  v20 = re::BucketArray<unsigned long,32ul>::operator[](a2 + 680, v10);
  v584 = a2;
  Asset = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](a2 + 624, *v20);
  re::StringID::operator=(&v664, (Asset + 8));
  v21 = re::ecs2::EntityAssetData::addComponent<re::ecs2::TransformComponent>(&v663);
  v22 = *(Asset + 464);
  v23 = *(Asset + 432);
  *(v21 + 3) = *(Asset + 448);
  *(v21 + 4) = v22;
  *(v21 + 2) = v23;
  v24 = *(Asset + 32);
  v10 = strlen(v24);
  v661 = v24;
  v662 = v10;
  v25 = a6;
  if ((a9 & 1) == 0)
  {
    *&v720 = 0;
    v723 = 0u;
    *(&v720 + 1) = &str_67;
    v721 = 0uLL;
    v722 = 0uLL;
    memset(v724, 0, 24);
    re::DynamicArray<re::AnimationSceneEntityData>::add(a6 + 2, &v720);
    re::AssetHandle::~AssetHandle(v724);
    v26 = re::DynamicArray<re::AnimationSceneEntityData>::deinit(&v721);
    if (v720)
    {
      if (v720)
      {
      }
    }

    v25 = (a6[6] + 88 * a6[4] - 88);
  }

  v576 = v25;
  v27 = re::StringID::operator=(v25, &v664);
  v655 = 0;
  v654 = 0;
  v656 = 1;
  v659 = 0;
  v657 = 0;
  v658 = 0;
  v660 = 0;
  v720 = 0uLL;
  DWORD2(v721) = 0;
  *&v721 = 0;
  v741 = 0;
  v722 = 0u;
  v723 = 0u;
  memset(&v724[8], 0, 32);
  *v724 = 0;
  v725 = 0;
  v726 = 0u;
  v727 = 0u;
  v729 = 0u;
  v730 = 0u;
  v728 = 0;
  v731 = 0;
  v732 = 0u;
  v733 = 0u;
  v734 = 0;
  v737 = 0;
  v736 = 0u;
  v735 = 0u;
  v740 = 0;
  v739 = 0u;
  v738 = 0u;
  v28 = *(v584 + 200);
  v702[0].n128_u32[0] = -1;
  v653 = 0;
  v651 = 0;
  v652 = 0;
  v29 = v702;
  v641 = 0;
  v640 = 0u;
  v643 = 0u;
  v644 = 0u;
  v642 = 0;
  v645 = 0;
  v646 = 0u;
  v647 = 0u;
  v648 = 0;
  memset(v649, 0, sizeof(v649));
  v650 = 0x7FFFFFFFLL;
  v634 = 0;
  v633 = 0;
  v635 = 1;
  v638 = 0;
  v636 = 0;
  v637 = 0;
  v639 = 0;
  v627 = 0;
  v626 = 0;
  v628 = 1;
  v571 = &v636;
  v631 = 0;
  v629 = 0;
  v630 = 0;
  v632 = 0;
  v620 = 0;
  v619 = 0;
  v621 = 1;
  v624 = 0;
  v622 = 0;
  v623 = 0;
  v625 = 0;
  v30 = re::TimelineGroupBuilder::TimelineGroupBuilder(v614, *(a3 + 104), v24, v10);
  v33 = v694;
  if (v694)
  {
    v585 = 0;
    v34 = buf;
    v10 = 1;
    v35 = v584;
    while (1)
    {
      v37 = v33 - 1;
      v38 = re::BucketArray<re::USDImportContextPhysicsColliderData,8ul>::operator[](&v689, v33 - 1);
      v39 = v38->u8[0];
      Asset = v38->u64[1];
      v604 = v38[2];
      v605 = v38[1];
      v600 = v38[4];
      v601 = v38[3];
      re::BucketArray<re::USDImportContextPhysicsColliderData,8ul>::operator[](&v689, v37);
      v694 = v37;
      ++v695;
      v30 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](v35 + 624, Asset);
      v40 = v30;
      v589 = v39;
      if (v39)
      {
        break;
      }

      v41 = *(v30 + 160);
      _ZF = v41 == -1 || v41 == v580;
      if (_ZF)
      {
        break;
      }

      *re::BucketArray<re::TimelineGroupBuilder *,8ul>::addUninitialized(a5) = v614;
      LOBYTE(v566) = 0;
      re::createEntityFromImportContext(v702, v35, a3, *(v40 + 160), a5, v576, a7, a8, v566);
      v30 = re::BucketArray<unsigned long,8ul>::operator[](a5, *(a5 + 40) - 1);
      --*(a5 + 40);
      ++*(a5 + 48);
      if (v702[0].n128_u8[0] == 1)
      {
        v30 = re::DynamicArray<re::ecs2::EntityAssetData>::add(v670 + 8, &v702[0].n128_i64[1]);
        if (v702[0].n128_u8[0])
        {
          re::ecs2::EntityAssetData::~EntityAssetData(&v702[0].n128_i8[8]);
        }
      }

LABEL_345:
      v33 = v694;
      if (!v694)
      {
        goto LABEL_348;
      }
    }

    v43 = *(v30 + 624);
    if (v43)
    {
      v44 = v43 >> 1;
    }

    else
    {
      v44 = v43 >> 1;
    }

    if (!v44)
    {
      v45 = *(v30 + 656);
      if (!((v45 & 1) != 0 ? v45 >> 1 : v45 >> 1))
      {
        goto LABEL_123;
      }
    }

    v591 = *(v30 + 688);
    v702[1].n128_u8[8] = 1;
    v702[2] = 0uLL;
    v703.n128_u64[0] = 0;
    v703.n128_u32[2] = 0;
    *&v707 = 0;
    v704 = 0u;
    v705 = 0u;
    v706 = 0;
    v702[1].n128_u64[0] = "Text";
    v702[0].n128_u64[0] = 0;
    v702[0].n128_u64[1] = 5206682;
    re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v702[2].n128_u64, 0);
    ++v703.n128_u32[2];
    v47 = (*(**(re::ecs2::ComponentImpl<re::ecs2::Static3DTextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::Static3DTextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7), 288, 0);
    *v47 = 0u;
    *(v47 + 16) = 0u;
    *(v47 + 32) = 0u;
    *(v47 + 48) = 0u;
    *(v47 + 64) = 0u;
    *(v47 + 80) = 0u;
    *(v47 + 112) = 0u;
    *(v47 + 144) = 0u;
    *(v47 + 160) = 0u;
    *(v47 + 176) = 0u;
    *(v47 + 192) = 0u;
    *(v47 + 208) = 0u;
    *(v47 + 224) = 0u;
    *(v47 + 240) = 0u;
    *(v47 + 256) = 0u;
    *(v47 + 272) = 0u;
    *(v47 + 128) = 0u;
    v48 = (v47 + 128);
    *(v47 + 96) = 0u;
    ArcSharedObject::ArcSharedObject(v47, 0);
    *(v49 + 16) = 0;
    *(v49 + 24) = 0;
    *v49 = &unk_1F5CD0840;
    *(v49 + 28) = 0x3F8000003E800000;
    *(v49 + 36) = 1029;
    *(v49 + 40) = 0;
    *(v49 + 41) = 16843009;
    v50.i64[0] = 0x7F0000007FLL;
    v50.i64[1] = 0x7F0000007FLL;
    v596 = vnegq_f32(v50);
    *(v49 + 48) = v596;
    *(v49 + 64) = v50;
    *(v49 + 80) = 0u;
    *(v47 + 96) = 0u;
    *(v49 + 112) = 0u;
    v51 = re::DynamicString::setCapacity((v47 + 96), 0);
    *(v47 + 144) = 0u;
    *(v47 + 128) = 0u;
    v52 = re::DynamicString::setCapacity((v47 + 128), 0);
    *(v47 + 176) = 0;
    *(v47 + 160) = 0u;
    *(v47 + 184) = 0x3F8000003E800000;
    *(v47 + 192) = 0x101010000000405;
    *(v47 + 200) = 0u;
    *(v47 + 232) = 0u;
    *(v47 + 216) = 0u;
    v53 = re::DynamicString::setCapacity((v47 + 216), 0);
    *(v47 + 248) = 0u;
    *(v47 + 264) = 0u;
    re::DynamicString::setCapacity((v47 + 248), 0);
    buf[0].n128_u64[0] = *(re::ecs2::ComponentImpl<re::ecs2::Static3DTextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 3) >> 1;
    buf[0].n128_u64[1] = v47;
    buf[1].n128_u8[0] = 1;
    re::DynamicArray<re::BufferView>::add(&v702[2], buf);
    if (!re::DynamicString::operator==(v47 + 96, v40 + 648))
    {
      re::DynamicString::operator=((v47 + 96), (v40 + 648));
      *&v54 = 0x7F0000007FLL;
      *(&v54 + 1) = 0x7F0000007FLL;
      *(v47 + 48) = v596;
      *(v47 + 64) = v54;
      *(v47 + 44) = 1;
    }

    if (!re::DynamicString::operator==(v48, v40 + 616))
    {
      re::DynamicString::operator=(v48, (v40 + 616));
      *&v55 = 0x7F0000007FLL;
      *(&v55 + 1) = 0x7F0000007FLL;
      *(v47 + 48) = v596;
      *(v47 + 64) = v55;
      *(v47 + 44) = 1;
    }

    v56 = *(v40 + 680);
    if (*(v47 + 32) != v56)
    {
      *(v47 + 32) = v56;
      *&v57 = 0x7F0000007FLL;
      *(&v57 + 1) = 0x7F0000007FLL;
      *(v47 + 48) = v596;
      *(v47 + 64) = v57;
      *(v47 + 44) = 1;
    }

    v58 = *(v40 + 704);
    if (*(v47 + 28) != v58)
    {
      *(v47 + 28) = v58;
      *&v59 = 0x7F0000007FLL;
      *(&v59 + 1) = 0x7F0000007FLL;
      *(v47 + 48) = v596;
      *(v47 + 64) = v59;
      *(v47 + 44) = 1;
    }

    v60 = vcvt_f32_f64(v591);
    v61 = vceq_f32(*(v47 + 88), v60);
    if ((vpmin_u32(v61, v61).u32[0] & 0x80000000) == 0)
    {
      *(v47 + 88) = v60;
      *&v62 = 0x7F0000007FLL;
      *(&v62 + 1) = 0x7F0000007FLL;
      *(v47 + 48) = v596;
      *(v47 + 64) = v62;
      *(v47 + 44) = 1;
    }

    if (*(v40 + 752))
    {
      v63 = *(v40 + 760);
    }

    else
    {
      v63 = (v40 + 753);
    }

    v592 = 0u;
    if (!strcmp(v63, "left"))
    {
      goto LABEL_45;
    }

    if (!strcmp(v63, "right"))
    {
      v68 = *(v40 + 688);
      v592 = COERCE_UNSIGNED_INT(-v68);
      v67 = 1;
    }

    else if (!strcmp(v63, "center"))
    {
      *&v69 = *(v40 + 688) * -0.5;
      v592 = v69;
      v67 = 2;
    }

    else
    {
      v64 = strcmp(v63, "justified");
      if (v64)
      {
        v65 = *re::pipelineLogObjects(v64);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v40 + 752))
          {
            v66 = *(v40 + 760);
          }

          else
          {
            v66 = v40 + 753;
          }

          buf[0].n128_u32[0] = 136315138;
          *(buf[0].n128_u64 + 4) = v66;
          _os_log_impl(&dword_1E1C61000, v65, OS_LOG_TYPE_DEFAULT, "Invalid text horizontal alignment value %s", buf, 0xCu);
        }

LABEL_45:
        v67 = 0;
        goto LABEL_52;
      }

      v67 = 3;
    }

LABEL_52:
    if (*(v47 + 37) != v67)
    {
      *(v47 + 37) = v67;
      *&v70 = 0x7F0000007FLL;
      *(&v70 + 1) = 0x7F0000007FLL;
      *(v47 + 48) = v596;
      *(v47 + 64) = v70;
      *(v47 + 44) = 1;
    }

    if (*(v40 + 720))
    {
      v71 = *(v40 + 728);
    }

    else
    {
      v71 = (v40 + 721);
    }

    if (strcmp(v71, "singleLine"))
    {
      v593 = *(v40 + 688);
      if (!strcmp(v71, "hardBreaks"))
      {
        v75 = 2;
      }

      else
      {
        v72 = strcmp(v71, "flowing");
        if (v72)
        {
          v73 = *re::pipelineLogObjects(v72);
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v40 + 720))
            {
              v74 = *(v40 + 728);
            }

            else
            {
              v74 = v40 + 721;
            }

            buf[0].n128_u32[0] = 136315138;
            *(buf[0].n128_u64 + 4) = v74;
            _os_log_impl(&dword_1E1C61000, v73, OS_LOG_TYPE_DEFAULT, "Invalid text word wrap value %s", buf, 0xCu);
          }
        }

        v75 = 0;
      }

      if (*(v47 + 38) != v75)
      {
        *(v47 + 38) = v75;
        *&v84 = 0x7F0000007FLL;
        *(&v84 + 1) = 0x7F0000007FLL;
        *(v47 + 48) = v596;
        *(v47 + 64) = v84;
        *(v47 + 44) = 1;
      }

      if (*(v40 + 784))
      {
        v85 = *(v40 + 792);
      }

      else
      {
        v85 = (v40 + 785);
      }

      if (!strcmp(v85, "top"))
      {
        v89 = 0;
      }

      else if (!strcmp(v85, "middle"))
      {
        v89 = 2;
      }

      else
      {
        v86 = strcmp(v85, "bottom");
        if (v86)
        {
          v87 = *re::pipelineLogObjects(v86);
          if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v40 + 784))
            {
              v88 = *(v40 + 792);
            }

            else
            {
              v88 = v40 + 785;
            }

            buf[0].n128_u32[0] = 136315138;
            *(buf[0].n128_u64 + 4) = v88;
            _os_log_impl(&dword_1E1C61000, v87, OS_LOG_TYPE_DEFAULT, "Invalid text vertical alignment value %s", buf, 0xCu);
          }
        }

        v89 = 1;
      }

      __asm { FMOV            V0.2D, #-0.5 }

      v94 = vmulq_f64(v593, _Q0);
      *&v94.f64[0] = vcvt_f32_f64(v94);
      LODWORD(v94.f64[1]) = 0;
      v592 = v94;
      goto LABEL_110;
    }

    if (*(v47 + 38) != 2)
    {
      *(v47 + 38) = 2;
      *&v76 = 0x7F0000007FLL;
      *(&v76 + 1) = 0x7F0000007FLL;
      *(v47 + 48) = v596;
      *(v47 + 64) = v76;
      *(v47 + 44) = 1;
    }

    if (*(v40 + 784))
    {
      v77 = *(v40 + 792);
    }

    else
    {
      v77 = (v40 + 785);
    }

    if (!strcmp(v77, "top"))
    {
      v89 = 0;
      v95 = *(v40 + 696);
      v96 = v592;
      *(v96.f64 + 1) = -v95;
      v592 = v96;
    }

    else
    {
      if (strcmp(v77, "middle"))
      {
        if (!strcmp(v77, "bottom"))
        {
          v99 = v592;
          HIDWORD(v99.f64[0]) = 0;
          v592 = v99;
LABEL_108:
          v89 = 1;
          goto LABEL_109;
        }

        v78 = strcmp(v77, "lowerMiddle");
        if (v78)
        {
          v79 = strcmp(v77, "baseline");
          v80 = v79;
          v81 = *re::pipelineLogObjects(v79);
          v82 = os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT);
          if (v80)
          {
            if (v82)
            {
              if (*(v40 + 784))
              {
                v83 = *(v40 + 792);
              }

              else
              {
                v83 = v40 + 785;
              }

              buf[0].n128_u32[0] = 136315138;
              *(buf[0].n128_u64 + 4) = v83;
              _os_log_impl(&dword_1E1C61000, v81, OS_LOG_TYPE_DEFAULT, "Invalid text vertical alignment value %s", buf, 0xCu);
            }

            goto LABEL_108;
          }

          if (!v82)
          {
            goto LABEL_107;
          }

          buf[0].n128_u16[0] = 0;
          v101 = v81;
          v102 = "Single line vertical alignment value baseline not supported, falling back to bottom";
        }

        else
        {
          v100 = *re::pipelineLogObjects(v78);
          if (!os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
          {
LABEL_107:
            v103 = *(v40 + 696) * -0.5;
            v104 = v592;
            *(v104.f64 + 1) = v103;
            v592 = v104;
            goto LABEL_108;
          }

          buf[0].n128_u16[0] = 0;
          v101 = v100;
          v102 = "Single line vertical alignment value lowerMiddle not supported, falling back to bottom";
        }

        _os_log_impl(&dword_1E1C61000, v101, OS_LOG_TYPE_DEFAULT, v102, buf, 2u);
        goto LABEL_107;
      }

      v97 = *(v40 + 696) * -0.5;
      v98 = v592;
      *(v98.f64 + 1) = v97;
      v592 = v98;
      v89 = 2;
    }

LABEL_109:
    LOBYTE(v75) = 0;
LABEL_110:
    if (*(v47 + 39) != v89)
    {
      *(v47 + 39) = v89;
      *&v105 = 0x7F0000007FLL;
      *(&v105 + 1) = 0x7F0000007FLL;
      *(v47 + 48) = v596;
      *(v47 + 64) = v105;
      *(v47 + 44) = 1;
    }

    *(re::ecs2::EntityAssetData::addComponent<re::ecs2::TransformComponent>(v702) + 4) = v592;
    v106 = re::ecs2::EntityAssetData::addComponent<re::ecs2::MeshComponent>(v702);
    v107 = re::DynamicArray<re::AssetHandle>::operator=((v106 + 7), (v40 + 808));
    memset(buf, 0, 32);
    v108 = re::DynamicString::setCapacity(buf, 0);
    memset(&buf[2], 0, 32);
    re::DynamicString::setCapacity(buf[2].n128_u64, 0);
    __asm { FMOV            V0.2S, #1.0 }

    buf[4].n128_u64[0] = _D0;
    buf[4].n128_u8[8] = 5;
    v743 = 0;
    v744 = 0;
    v745[0] = 0x1010101000400;
    re::DynamicString::operator=(&buf[2], (v40 + 648));
    re::DynamicString::operator=(buf, (v40 + 616));
    *&v110 = *(v40 + 680);
    *&v111 = *(v40 + 704);
    buf[4].n128_u64[0] = __PAIR64__(v111, v110);
    buf[4].n128_u8[8] = 5;
    v743 = 0;
    v744 = v60;
    LOBYTE(v745[0]) = v75;
    BYTE1(v745[0]) = v67;
    BYTE2(v745[0]) = v89;
    *(v745 + 3) = 257;
    HIBYTE(v745[0]) = 1;
    Asset = re::MeshPrimitiveProvider::makeAsset(buf, 0);
    v112 = *(v40 + 32);
    v113 = *(a3 + 104);
    v10 = strlen(v112);
    v114 = re::MeshAsset::assetType(v10);
    v115 = re::ImportAssetTable::addAsset(v113, v112, v10, Asset, v114);
    memset(v713, 0, 24);
    if (*(v115 + 8))
    {
      v116 = *(v115 + 16);
    }

    else
    {
      v116 = (v115 + 9);
    }

    v35 = v584;
    re::AssetHandle::setSerializationString(v713, v116, *a3);
    re::AssetHandle::operator=((v106 + 4), v713);
    re::AssetHandle::~AssetHandle(v713);
    if (buf[2].n128_u64[0])
    {
      if (buf[2].n128_u8[8])
      {
        (*(*buf[2].n128_u64[0] + 40))();
      }

      memset(&buf[2], 0, 32);
    }

    if (buf[0].n128_u64[0] && (buf[0].n128_u8[8] & 1) != 0)
    {
      (*(*buf[0].n128_u64[0] + 40))();
    }

    re::DynamicArray<re::ecs2::EntityAssetData>::add(v670 + 8, v702);
    re::ecs2::EntityAssetData::~EntityAssetData(v702);
LABEL_123:
    if (*(v40 + 240) != 255)
    {
    }

    v117 = *(v40 + 344);
    v118 = *(v40 + 304);
    if (v117)
    {
      if (v118)
      {
        v119 = 0;
        v120 = v118 - 1;
        while (v117 != v119)
        {
          v121 = *(*(v40 + 360) + 8 * v119);
          _ZF = v121 == -1;
          v122 = v121 == -1;
          if (!_ZF || v120 == v119++)
          {
            goto LABEL_136;
          }
        }

        *v713 = 0;
        v704 = 0u;
        v703 = 0u;
        memset(v702, 0, sizeof(v702));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        buf[0].n128_u32[0] = 136315906;
        *(buf[0].n128_u64 + 4) = "operator[]";
        buf[0].n128_u16[6] = 1024;
        *(&buf[0].n128_u32[3] + 2) = 789;
        buf[1].n128_u16[1] = 2048;
        *(buf[1].n128_u64 + 4) = v117;
        buf[1].n128_u16[6] = 2048;
        *(&buf[1].n128_u64[1] + 6) = v117;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_475:
        *v746 = 0;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v717 = 136315906;
        *&v717[4] = "operator[]";
        *&v717[12] = 1024;
        *v718 = 789;
        *&v718[4] = 2048;
        *&v718[6] = v36;
        *&v718[14] = 2048;
        *&v718[16] = v117;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_476:
        v701 = 0;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v747 = 136315906;
        *&v747[4] = "operator[]";
        *&v747[12] = 1024;
        *&v747[14] = 797;
        *&v747[18] = 2048;
        *&v747[20] = v36;
        v748 = 2048;
        v749 = v117;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_477:
        *v746 = 0;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v717 = 136315906;
        *&v717[4] = "operator[]";
        *&v717[12] = 1024;
        *v718 = 789;
        *&v718[4] = 2048;
        *&v718[6] = v36;
        *&v718[14] = 2048;
        *&v718[16] = v117;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_478:
        v608 = 0;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v717 = 136315906;
        *&v717[4] = "operator[]";
        *&v717[12] = 1024;
        *v718 = 468;
        *&v718[4] = 2048;
        *&v718[6] = v36;
        *&v718[14] = 2048;
        *&v718[16] = v117;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_479:
        *v747 = 0;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v746 = 136315906;
        *&v746[4] = "operator[]";
        *&v746[12] = 1024;
        *&v746[14] = 797;
        *&v746[18] = 2048;
        *&v746[20] = Asset;
        *&v746[28] = 2048;
        *&v746[30] = v117;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_480:
        *v747 = 0;
        memset(buf, 0, sizeof(buf));
        v327 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v746 = 136315906;
        *&v746[4] = "operator[]";
        *&v746[12] = 1024;
        *&v746[14] = 468;
        *&v746[18] = 2048;
        *&v746[20] = Asset;
        *&v746[28] = 2048;
        *&v746[30] = v10;
        LODWORD(v567) = 38;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_481;
      }

      goto LABEL_309;
    }

    v124 = v118 != 0;
    v122 = 1;
    if (!v124)
    {
      goto LABEL_309;
    }

LABEL_136:
    if (((v122 | v589) & 1) == 0)
    {
LABEL_309:
      v32.n128_u32[0] = *(v40 + 564);
      if (v32.n128_f32[0] != 0.0 && *(*(v35 + 40) + 96) == 1)
      {
        if (!v585)
        {
          v244 = re::globalAllocators(v30);
          v245 = (*(*v244[2] + 32))(v244[2], 224, 8);
          *(v245 + 176) = 0u;
          *(v245 + 192) = 0u;
          *v245 = 0u;
          *(v245 + 16) = 0u;
          *(v245 + 32) = 0u;
          *(v245 + 48) = 0u;
          *(v245 + 64) = 0u;
          *(v245 + 80) = 0u;
          *(v245 + 96) = 0u;
          *(v245 + 112) = 0u;
          *(v245 + 128) = 0u;
          *(v245 + 144) = 0u;
          *(v245 + 160) = 0u;
          *(v245 + 196) = 0x7FFFFFFF;
          *(v245 + 208) = 0;
          *(v245 + 216) = &str_67;
          v585 = v245;
        }

        v246 = *(v40 + 608);
        v247 = re::globalAllocators(v30);
        v248 = (*(*v247[2] + 32))(v247[2], 128, 8);
        re::SampledAnimationAssetData<re::GenericSRT<float>>::SampledAnimationAssetData(v248, v40 + 480);
        *v249 = &unk_1F5CC0788;
        v702[0].n128_u64[0] = "Transform.transform";
        v702[0].n128_u64[1] = 19;
        re::DynamicString::operator=((v249 + 5), v702);
        TimelineAsset = re::AssetHelper::makeTimelineAsset(v248, v250);
        re::StringID::StringID(v702, (v40 + 24));
        v252 = re::StringID::operator=((TimelineAsset[2] + 24), v702);
        if (v702[0].n128_u8[0])
        {
          if (v702[0].n128_u8[0])
          {
          }
        }

        v253 = *(a3 + 104);
        v254 = *(v40 + 32);
        v255 = strlen(v254);
        v256 = re::TimelineAsset::assetType(v255);
        v257 = re::ImportAssetTable::addAsset(v253, v254, v255, TimelineAsset, v256);
        memset(v702, 0, 24);
        re::DynamicArray<re::AssetHandle>::add(v585 + 15, v702);
        re::AssetHandle::~AssetHandle(v702);
        if (*(v257 + 8))
        {
          v259 = *(v257 + 16);
        }

        else
        {
          v259 = (v257 + 9);
        }

        v260 = (*(v585 + 19) + 24 * *(v585 + 17) - 24);
        v261 = v259;
        v702[0].n128_u64[0] = 0;
        v702[0].n128_u64[1] = &str_67;
        memset(&v702[1], 0, 24);
        re::DynamicArray<re::NamedAnimationLibraryEntry>::add(v585 + 5, v702);
        re::AssetHandle::~AssetHandle(&v702[1]);
        if (v702[0].n128_u8[0])
        {
          if (v702[0].n128_u8[0])
          {
          }
        }

        v263 = *(v585 + 9) + 40 * *(v585 + 7);
        v264 = re::StringID::operator=((v263 - 40), (v40 + 24));
        if (*(v257 + 8))
        {
          Asset = *(v257 + 16);
        }

        else
        {
          Asset = v257 + 9;
        }

        v265 = (v248[21] - v248[20]);
        v702[0].n128_u64[0] = v246;
        v702[0].n128_f64[1] = v265;
        re::AssetHandle::AssetHandle(&v702[1], (*(v585 + 19) + 24 * *(v585 + 17) - 24));
        re::AssetHandle::~AssetHandle(&v702[1]);
        *(v35 + 48) = 1;
      }

      v266 = *(v40 + 968);
      if (v266)
      {
        v267 = *(v40 + 608);
        v268 = *(v40 + 984);
        v269 = 8 * v266;
        do
        {
          v270 = *v268;
          v271 = re::globalAllocators(v30)[2];
          memset(v702, 0, 36);
          *(v702[2].n128_u64 + 4) = 0x7FFFFFFFLL;
          v272 = re::internal::convertToAssetData(v270, v702, v271);
          v273 = re::globalAllocators(v272);
          v274 = (*(*v273[2] + 32))(v273[2], 24, 8);
          *v274 = v270;
          v274[1] = v272;
          v274[2] = v270;
          v275 = *(a3 + 104);
          v276 = *(v40 + 32);
          v277 = strlen(v276);
          v278 = re::TimelineAsset::assetType(v277);
          v279 = re::ImportAssetTable::addAsset(v275, v276, v277, v274, v278);
          memset(v713, 0, 24);
          if (*(v279 + 8))
          {
            Asset = *(v279 + 16);
          }

          else
          {
            Asset = v279 + 9;
          }

          buf[0].n128_u64[0] = v267;
          buf[0].n128_u64[1] = (*(*v270 + 40))(v270);
          re::AssetHandle::AssetHandle(&buf[1], v713);
          re::AssetHandle::~AssetHandle(&buf[1]);
          re::AssetHandle::~AssetHandle(v713);
          v32.n128_f64[0] = re::HashTable<unsigned long long,re::internal::PushLoadManager::PushLoadedAsset,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v702);
          ++v268;
          v269 -= 8;
        }

        while (v269);
      }

      if (v589)
      {
        v35 = v584;
        v10 = 1;
      }

      else
      {
        v280 = *(v40 + 920);
        v35 = v584;
        if (v280)
        {
          for (i = 0; i != v280; ++i)
          {
            v282 = re::BucketArray<unsigned long,8ul>::operator[](v40 + 880, v280 + ~i);
            v283 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](v584 + 624, *v282);
            v284 = 0;
            v285 = *(v283 + 448);
            v286 = v285 + v285;
            v287 = *(v283 + 452);
            v288 = v287 + v287;
            v289 = *(v283 + 456);
            v290 = v289 + v289;
            v291 = v285 * (v285 + v285);
            v292 = v287 * (v287 + v287);
            v293 = v289 * (v289 + v289);
            v294 = v286 * v287;
            v295 = v286 * v289;
            v296 = v288 * v289;
            v297 = *(v283 + 460);
            v298 = v286 * v297;
            v299 = v288 * v297;
            v300 = v290 * v297;
            v301.i32[3] = 0;
            v301.f32[0] = 1.0 - (v292 + v293);
            v301.f32[1] = v294 + v300;
            v301.f32[2] = v295 - v299;
            v302.i32[3] = 0;
            v302.i64[0] = __PAIR64__(1.0 - (v291 + v293), v294 - v300);
            v302.f32[2] = v296 + v298;
            v303.i32[3] = 0;
            v303.f32[0] = v295 + v299;
            v303.f32[1] = v296 - v298;
            v303.f32[2] = 1.0 - (v291 + v292);
            v304 = *(v283 + 432);
            v305 = vmulq_n_f32(v301, v304.f32[0]);
            v306 = vmulq_laneq_f32(v303, v304, 2);
            v307 = *(v283 + 464);
            v307.n128_u32[3] = 1.0;
            v308 = vmulq_n_f32(v302, COERCE_FLOAT(HIDWORD(*(v283 + 432))));
            buf[0] = v305;
            buf[1] = v308;
            buf[2] = v306;
            buf[3] = v307;
            do
            {
              v702[v284] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v605, COERCE_FLOAT(*&buf[v284])), v604, buf[v284].n128_u64[0], 1), v601, buf[v284], 2), v600, buf[v284], 3);
              ++v284;
            }

            while (v284 != 4);
            v595 = v702[1];
            v598 = v702[0];
            v588 = v703;
            v590 = v702[2];
            v702[0].n128_u8[0] = 0;
            v702[0].n128_u64[1] = *re::BucketArray<unsigned long,8ul>::operator[](v40 + 880, *(v40 + 920) + ~i);
            v702[1] = v598;
            v702[2] = v595;
            v703 = v590;
            v704 = v588;
            v32.n128_u64[0] = re::BucketArray<re::createEntityFromImportContext(re::USDImportContext &,re::SceneImportOperation &,unsigned long,re::BucketArray<re::TimelineGroupBuilder *,8ul> &,re::AnimationSceneEntityData &,re::FixedArray<BOOL> &,re::HashTable<re::StringID,re::Pair<re::StringID,re::StringID,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false> *,BOOL)::TransformedMeshItem,8ul>::add(&v689, v702).n128_u64[0];
            v280 = *(v40 + 920);
          }
        }

        v309 = *(v40 + 144);
        v10 = 1;
        if (v309)
        {
          for (j = 0; j != v309; ++j)
          {
            v311 = re::BucketArray<unsigned long,4ul>::operator[](v40 + 104, v309 + ~j);
            v30 = re::BucketArray<re::USDImportContextSkeletonData,4ul>::operator[](v584 + 56, *v311);
            v312 = *(v30 + 392);
            v313 = v604;
            v32 = v605;
            v315 = v600;
            v314 = v601;
            if (v312)
            {
              v316 = 8 * v312;
              Asset = *(v30 + 408) - 8;
              do
              {
                v702[0].n128_u8[0] = 1;
                v702[0].n128_u64[1] = *(Asset + v316);
                v702[1] = v32;
                v702[2] = v313;
                v703 = v314;
                v704 = v315;
                re::BucketArray<re::createEntityFromImportContext(re::USDImportContext &,re::SceneImportOperation &,unsigned long,re::BucketArray<re::TimelineGroupBuilder *,8ul> &,re::AnimationSceneEntityData &,re::FixedArray<BOOL> &,re::HashTable<re::StringID,re::Pair<re::StringID,re::StringID,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false> *,BOOL)::TransformedMeshItem,8ul>::add(&v689, v702);
                v315 = v600;
                v314 = v601;
                v313 = v604;
                v32 = v605;
                v316 -= 8;
              }

              while (v316);
            }

            v309 = *(v40 + 144);
          }
        }
      }

      goto LABEL_345;
    }

    v10 = *(v40 + 416);
    *&v715[2] = 0;
    memset(v713, 0, sizeof(v713));
    memset(v702, 0, 32);
    v125 = re::DynamicString::setCapacity(v702, 0);
    v702[2] = 0uLL;
    v703.n128_u32[2] = 0;
    v703.n128_u64[0] = 0;
    v710 = 0;
    v704 = 0u;
    v705 = 0u;
    v706 = 0;
    v707 = 0u;
    v708 = 0u;
    v709 = 0;
    v126 = *(v40 + 32);
    re::DynamicString::operator=(v702, buf);
    if (buf[0].n128_u64[0] && (buf[0].n128_u8[8] & 1) != 0)
    {
      (*(*buf[0].n128_u64[0] + 40))();
    }

    v127 = *(v40 + 304);
    v128 = v127;
    if (v702[2].n128_u64[1] < v127)
    {
      re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v702[2].n128_u64, v127);
    }

    if (*&v713[8] < v127)
    {
    }

    if (!v127)
    {
LABEL_255:
      if (v703.n128_u64[0])
      {
        v217 = v638;
        v11 = v634;
        if (v638 + 1 > 8 * v634)
        {
          v11 = v634;
        }

        Asset = v217 >> 3;
        if (v11 <= v217 >> 3)
        {
          goto LABEL_710;
        }

        v218 = v637;
        if (v635)
        {
          v218 = &v636;
        }

        v219 = v218[Asset];
        ++v638;
        ++v639;
        v220 = v219 + 40 * (v217 & 7);
        *(v220 + 32) = 0;
        *(v220 + 8) = 0;
        *(v220 + 16) = 0;
        *v220 = 0;
        *(v220 + 24) = 0;
        *v220 = *v713;
        *v713 = 0;
        *(v220 + 8) = *&v713[8];
        *&v713[8] = 0;
        v221 = *(v220 + 16);
        *(v220 + 16) = *&v713[16];
        *&v713[16] = v221;
        v222 = *(v220 + 32);
        *(v220 + 32) = *&v715[2];
        *&v715[2] = v222;
        ++*&v713[24];
        ++*(v220 + 24);
        re::DynamicArray<re::ModelWithLodsDescriptor>::add(&v640, v702);
        buf[0] = v605;
        buf[1] = v604;
        buf[2] = v601;
        buf[3] = v600;
        buf[4].n128_u32[0] = v641 - 1;
        re::make::shared::object<re::ShareableInternal<re::GeomInstance>,re::GeomInstance>(buf, v717);
        v223 = re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(&v643 + 1, v717);
        if (*v717)
        {
        }

        v224 = *(v40 + 824);
        memset(v746, 0, 24);
        v225 = *(&v682 + 1);
        v11 = *(&v679 + 1);
        if (*(&v682 + 1) + 1 > (16 * *(&v679 + 1)))
        {
          re::BucketArray<re::FixedArray<unsigned short>,16ul>::setBucketsCapacity(&v679, (*(&v682 + 1) + 16) >> 4);
          v11 = *(&v679 + 1);
        }

        Asset = v225 >> 4;
        if (v11 <= v225 >> 4)
        {
          goto LABEL_711;
        }

        v226 = v682;
        if (v680)
        {
          v226 = &v681;
        }

        v227 = v226[Asset];
        ++*(&v682 + 1);
        ++v683;
        v228 = (v227 + 24 * (v225 & 0xF));
        *v228 = 0;
        v228[1] = 0;
        v228[2] = 0;
        *v228 = *v746;
        v228[1] = *&v746[8];
        v228[2] = *&v746[16];
        v35 = v584;
        if (v224)
        {
          v36 = 0;
          Asset = *(&v682 + 1) - 1;
          do
          {
            v117 = *(v40 + 824);
            if (v117 <= v36)
            {
              goto LABEL_477;
            }

            re::AssetHandle::serializationString((*(v40 + 840) + 24 * v36), v746);
            v229 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(&v687[8], v746);
            if (v229)
            {
              v35 = *v229;
            }

            else
            {
              re::DynamicArray<re::DynamicString>::add(&v684, v746);
              v230 = WORD4(v685);
              memset(buf, 0, 24);
              v231 = re::Hash<re::DynamicString>::operator()(v717, v746);
              v10 = &v679;
              re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v687[8], v746, v231, buf);
              if (buf[0].n128_u32[3] == 0x7FFFFFFF)
              {
                v232 = v230 - 1;
                v233 = re::HashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(&v687[8], buf[0].n128_u32[2], buf[0].n128_u64[0]);
                re::DynamicString::DynamicString((v233 + 8), v746);
                *(v233 + 40) = v232;
                ++HIDWORD(v688);
              }

              v35 = WORD4(v685) - 1;
            }

            v234 = re::BucketArray<re::FixedArray<unsigned short>,16ul>::operator[](&v679, Asset);
            v117 = *(v234 + 8);
            if (v117 <= v36)
            {
              goto LABEL_478;
            }

            *(*(v234 + 16) + 2 * v36) = v35;
            if (*v746 && (v746[8] & 1) != 0)
            {
              (*(**v746 + 40))();
            }

            ++v36;
            v35 = v584;
          }

          while (v36 != v224);
        }

        v235 = v631;
        v11 = v627;
        if (v631 + 1 > 8 * v627)
        {
          v11 = v627;
        }

        Asset = v235 >> 3;
        if (v11 <= v235 >> 3)
        {
          goto LABEL_712;
        }

        v236 = v630;
        if (v628)
        {
          v236 = &v629;
        }

        v237 = v236[Asset];
        ++v631;
        ++v632;
        re::DynamicArray<re::GeomDeformer>::DynamicArray(*&v237 + 40 * (v235 & 7), (v40 + 1024));
        v238 = v624;
        v11 = v620;
        if (v624 + 1 > 8 * v620)
        {
          re::BucketArray<re::TimelineGroupBuilder *,8ul>::setBucketsCapacity(&v619, (v624 + 8) >> 3);
          v11 = v620;
        }

        Asset = v238 >> 3;
        if (v11 <= v238 >> 3)
        {
          goto LABEL_713;
        }

        v239 = v623;
        if (v621)
        {
          v239 = &v622;
        }

        v240 = v239[Asset];
        ++v624;
        ++v625;
        *(v240 + 8 * (v238 & 7)) = v40 + 992;
      }

      v241 = *(v40 + 304);
      *(v40 + 304) = 0;
      if (v241)
      {
        v242 = *(v40 + 320);
        v243 = 8 * v241;
        do
        {
          if (*v242)
          {

            *v242 = 0;
          }

          v242 += 8;
          v243 -= 8;
        }

        while (v243);
      }

      ++*(v40 + 312);
      *(v40 + 344) = 0;
      ++*(v40 + 352);
      *(v40 + 384) = 0;
      ++*(v40 + 392);
      re::FixedArray<CoreIKTransform>::deinit((v40 + 408));
      if (*(&v707 + 1))
      {
        if (v710)
        {
          (*(**(&v707 + 1) + 40))();
        }

        v710 = 0;
        v708 = 0uLL;
        *(&v707 + 1) = 0;
        ++v709;
      }

      if (v704.i64[1])
      {
        if (v707)
        {
          (*(*v704.i64[1] + 40))();
        }

        *&v707 = 0;
        v705 = 0uLL;
        v704.i64[1] = 0;
        ++v706;
      }

      re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(&v702[2]);
      if (v702[0].n128_u64[0] && (v702[0].n128_u8[8] & 1) != 0)
      {
        (*(*v702[0].n128_u64[0] + 40))();
      }

      goto LABEL_309;
    }

    v36 = 0;
    v582 = (v127 - 1);
    v129 = v127 == 1;
    if (v127 == 1)
    {
      v130 = INFINITY;
    }

    else
    {
      v130 = (100 * (v127 + 1) - 500);
    }

    if (v127 > 5)
    {
      v129 = 1;
    }

    v594 = v129;
    v587 = v10;
    v597 = v127;
    while (1)
    {
      v117 = *(v40 + 304);
      if (v117 <= v36)
      {
        goto LABEL_475;
      }

      v131 = *(v40 + 320);
      v132 = *(v131 + 8 * v36);
      if (*(v132 + 48))
      {
        break;
      }

LABEL_175:
      if (++v36 == v128)
      {
        goto LABEL_255;
      }
    }

    v133 = v703.n128_u64[0];
    if (v703.n128_u64[0] >= v702[2].n128_u64[1])
    {
      re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::growCapacity(v702[2].n128_u64, v703.n128_u64[0] + 1);
      v133 = v703.n128_u64[0];
      v132 = *(v131 + 8 * v36);
    }

    *(v704.i64[0] + 8 * v133) = v132;
    *(v131 + 8 * v36) = 0;
    v703.n128_u64[0] = v133 + 1;
    ++v703.n128_u32[2];
    if (v10 && v36)
    {
      v134 = v36 - 1;
      Asset = *(v40 + 416);
      if (Asset <= v36 - 1)
      {
        *v746 = 0;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v717 = 136315906;
        *&v717[4] = "operator[]";
        *&v717[12] = 1024;
        *v718 = 468;
        *&v718[4] = 2048;
        *&v718[6] = v36 - 1;
        *&v718[14] = 2048;
        *&v718[16] = Asset;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_486:
        *v746 = 0;
        memset(buf, 0, sizeof(buf));
        v343 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v717 = 136315906;
        *&v717[4] = "operator[]";
        *&v717[12] = 1024;
        *v718 = 468;
        *&v718[4] = 2048;
        *&v718[6] = v36 - 1;
        *&v718[14] = 2048;
        *&v718[16] = Asset;
        LODWORD(v567) = 38;
        _os_log_send_and_compose_impl();
        v318 = _os_crash_msg();
        __break(1u);
        goto LABEL_487;
      }

      v135 = 1.0 - *(*(v40 + 424) + 4 * v134);
      if (v135 < 0.0)
      {
        v135 = 0.0;
      }

      buf[0].n128_f32[0] = v135 * v135;
      re::DynamicArray<float>::add((&v707 + 8), buf);
      Asset = *(v40 + 416);
      if (Asset <= v134)
      {
        goto LABEL_486;
      }

      v136 = v130;
      if (!v594)
      {
        v136 = __const__ZN2re29computeDefaultLodMaxViewDepthEjj_kViewDepthTable[v582];
      }

      buf[0].n128_f32[0] = v136 * *(*(v40 + 424) + 4 * v134);
      re::DynamicArray<float>::add(&v704.u32[2], buf);
    }

    if (*(v40 + 344) > v36)
    {
      v137 = *(v40 + 360);
      v138 = *(v137 + 8 * v36);
      if (v138 != -1)
      {
        v139 = re::BucketArray<re::USDImportContextSkeletonData,4ul>::operator[](v35 + 56, *(v137 + 8 * v36));
        v140 = *(a3 + 104);
        var1 = v139->var1;
        v142 = strlen(var1);
        v143 = re::SkeletonAsset::assetType(v142);
        v144 = re::ImportAssetTable::importedAsset(v140, var1, v142, v143);
        if (v144)
        {
          buf[0].n128_u32[0] = 0;
          memset(&buf[0].n128_i8[8], 0, 24);
          if (*(v144 + 8))
          {
            Asset = *(v144 + 16);
          }

          else
          {
            Asset = v144 + 9;
          }

          v145 = 0xBF58476D1CE4E5B9 * ((*&v139->var0 >> 31) ^ (*&v139->var0 >> 1));
          re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v649[8], v139, (0x94D049BB133111EBLL * (v145 ^ (v145 >> 27))) ^ ((0x94D049BB133111EBLL * (v145 ^ (v145 >> 27))) >> 31), v746);
          if (*&v746[12] == 0x7FFFFFFF)
          {
            Asset = re::BucketArray<re::USDImportContextSkeletonData,4ul>::operator[](v35 + 56, v138);
            buf[0].n128_u32[0] = DWORD2(v647);
            v146 = re::globalAllocators(Asset);
            v147 = (*(*v146[2] + 32))(v146[2], 184, 8);
            ArcSharedObject::ArcSharedObject(v147, 0);
            *v147 = &unk_1F5CD0DA0;
            re::StringID::StringID((v147 + 3), (Asset + 16));
            re::FixedArray<re::StringID>::FixedArray(v147 + 5, Asset + 32);
            re::FixedArray<unsigned int>::FixedArray(v147 + 8, Asset + 56);
            re::FixedArray<re::GenericSRT<float>>::FixedArray(v147 + 11, Asset + 80);
            re::FixedArray<re::Matrix4x4<float>>::FixedArray(v147 + 14, Asset + 104);
            re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::HashTable((v147 + 17), Asset + 128);
            *v746 = v147;
            re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(&v646 + 1, v746);
            if (*v746)
            {
            }

            re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(&v649[8], v139, buf);
            re::StringID::StringID(v747, (Asset + 16));
            v148 = *(Asset + 40);
            *v746 = *(Asset + 48);
            *&v746[8] = v148;
            v149 = *(Asset + 88);
            v696 = *(Asset + 96);
            v697 = v149;
            re::AssetHandle::AssetHandle(&v608, &buf[0].n128_i8[8]);
            re::AssetHandle::~AssetHandle(&v608);
            v10 = v587;
            if (v747[0])
            {
              if (v747[0])
              {
              }
            }

            *v747 = 0;
            *&v747[8] = &str_67;
            v151 = buf[0].n128_u32[0];
          }

          else
          {
            v151 = *(*&v649[24] + 32 * *&v746[12] + 24);
            buf[0].n128_u32[0] = v151;
            v10 = v587;
          }

          v717[0] = 1;
          *&v717[8] = v151;
          *&v718[2] = *(buf + 8);
          memset(&buf[0].n128_i8[8], 0, 24);
          *&v718[18] = buf[1].n128_u64[1];
          re::AssetHandle::~AssetHandle(&buf[0].n128_i8[8]);
          if (v717[0])
          {
            buf[0].n128_u64[0] = 0xFFFFFFFFLL;
            buf[0].n128_u64[1] = -1;
            buf[1].n128_u64[0] = -1;
            Asset = -1;
            memset(&buf[1].n128_i8[8], 0, 48);
            if (*&v713[16] >= *&v713[8])
            {
              v153 = *&v713[16] + 1;
              if (*&v713[8] < (*&v713[16] + 1))
              {
                if (*v713)
                {
                  v154 = 8;
                  if (*&v713[8])
                  {
                    v154 = 2 * *&v713[8];
                  }

                  if (v154 <= v153)
                  {
                    v155 = *&v713[16] + 1;
                  }

                  else
                  {
                    v155 = v154;
                  }
                }

                else
                {
                  ++*&v713[24];
                }
              }
            }

            v156 = (*&v715[2] + 72 * *&v713[16]);
            v157 = buf[1].n128_u64[0];
            *v156 = buf[0];
            v156[1].n128_u64[0] = v157;
            v156[1].n128_u64[1] = 0;
            v156[2].n128_u64[0] = 0;
            v156[2].n128_u64[1] = 0;
            v156[2].n128_u64[0] = buf[2].n128_u64[0];
            buf[2].n128_u64[0] = 0;
            v158 = v156[1].n128_u64[1];
            v156[1].n128_u64[1] = 0;
            v156[1].n128_u64[1] = buf[1].n128_u64[1];
            buf[1].n128_u64[1] = v158;
            v159 = v156[2].n128_u64[1];
            v156[2].n128_u64[1] = buf[2].n128_u64[1];
            buf[2].n128_u64[1] = v159;
            v156[3].n128_u64[0] = 0;
            v156[3].n128_u64[1] = 0;
            v156[4].n128_u64[0] = 0;
            v156[3].n128_u64[1] = buf[3].n128_u64[1];
            buf[3].n128_u64[1] = 0;
            v160 = v156[3].n128_u64[0];
            v156[3].n128_u64[0] = 0;
            v156[3].n128_u64[0] = buf[3].n128_u64[0];
            buf[3].n128_u64[0] = v160;
            v161 = v156[4].n128_u64[0];
            v156[4].n128_u64[0] = buf[4].n128_u64[0];
            buf[4].n128_u64[0] = v161;
            ++*&v713[16];
            ++*&v713[24];
            re::AssetHandle::~AssetHandle(&buf[3]);
            re::AssetHandle::~AssetHandle(&buf[1].n128_i8[8]);
            v162 = *&v715[2] + 72 * *&v713[16];
            *(v162 - 64) = v138;
            v163 = re::AssetHandle::operator=(v162 - 48, &v718[2]);
            v11 = *(v40 + 384);
            if (v11)
            {
              if (v11 <= v36)
              {
                goto LABEL_709;
              }

              v164 = *(*(v40 + 400) + 8 * v36);
              *(v162 - 56) = v164;
              v165 = *&v717[8];
              *(v162 - 72) = *&v717[8];
              v128 = v597;
              if (v164 != -1)
              {
                v572 = v162;
                if (v585)
                {
                  v166 = v165;
                }

                else
                {
                  v167 = re::globalAllocators(v163);
                  v168 = (*(*v167[2] + 32))(v167[2], 224, 8);
                  *(v168 + 176) = 0u;
                  *(v168 + 192) = 0u;
                  *v168 = 0u;
                  *(v168 + 16) = 0u;
                  *(v168 + 32) = 0u;
                  *(v168 + 48) = 0u;
                  *(v168 + 64) = 0u;
                  *(v168 + 80) = 0u;
                  *(v168 + 96) = 0u;
                  *(v168 + 112) = 0u;
                  *(v168 + 128) = 0u;
                  *(v168 + 144) = 0u;
                  *(v168 + 160) = 0u;
                  *(v168 + 196) = 0x7FFFFFFF;
                  *(v168 + 208) = 0;
                  *(v168 + 216) = &str_67;
                  v585 = v168;
                  v169 = v168;
                  v162 = v572;
                  v164 = *(v572 - 56);
                  v166 = *&v717[8];
                }

                v170 = *(v162 - 64);
                re::AssetHandle::AssetHandle(v613, &v718[2]);
                v573 = v164;
                v171 = *(re::BucketArray<re::USDImportContextSkeletalAnimationData,8ul>::operator[](v35 + 160, v164) + 8);
                v172 = "";
                if (*(*(v35 + 40) + 160))
                {
                  v172 = "_additive";
                }

                v570 = v166;
                v173 = re::DynamicString::format("%s_skeleton[%u]%s", &v608, v171, v166, v172);
                v174 = *(a3 + 104);
                if (v609)
                {
                  v175 = v610;
                }

                else
                {
                  v175 = &v609 + 1;
                }

                if (v609)
                {
                  v10 = v609 >> 1;
                }

                else
                {
                  v10 = v609 >> 1;
                }

                v176 = re::TimelineAsset::assetType(v173);
                v177 = re::ImportAssetTable::importedAsset(v174, v175, v10, v176);
                v178 = v177;
                if (!v177)
                {
                  v179 = re::globalAllocators(0);
                  v180 = (*(*v179[2] + 32))(v179[2], 200, 8);
                  v181 = re::BucketArray<re::USDImportContextSkeletalAnimationData,8ul>::operator[](v35 + 160, v573);
                  re::SampledAnimationAssetData<re::SkeletalPoseAssetData>::SampledAnimationAssetData(v180, v181 + 32);
                  *v180 = &unk_1F5CC0838;
                  re::AssetHandle::AssetHandle((v180 + 128), (v181 + 160));
                  re::DynamicArray<re::StringID>::DynamicArray(v180 + 152, (v181 + 184));
                  v182 = *(v181 + 224);
                  *(v180 + 194) = *(v181 + 226);
                  *(v180 + 192) = v182;
                  re::DynamicString::format("SkeletalPose.SkeletalPoses[%u]", buf, v570);
                  v579 = v180;
                  re::DynamicString::operator=((v180 + 40), buf);
                  if (buf[0].n128_u64[0] && (buf[0].n128_u8[8] & 1) != 0)
                  {
                    (*(*buf[0].n128_u64[0] + 40))();
                  }

                  re::AssetHandle::operator=(v180 + 128, v613);
                  if (*(*(v35 + 40) + 160) == 1)
                  {
                    v578 = re::BucketArray<re::USDImportContextSkeletonData,4ul>::operator[](v35 + 56, v170);
                    memset(v747, 0, 24);
                    v184 = *(v180 + 168);
                    v185 = v180;
                    v577 = *(v180 + 168);
                    if (v577)
                    {
                      v186 = 0;
                      Asset = 0;
                      v187 = 0;
                      do
                      {
                        v188 = *(v185 + 168);
                        v581 = v187;
                        if (v188 <= v187)
                        {
                          goto LABEL_703;
                        }

                        v35 = *(v185 + 184);
                        v189 = 0xBF58476D1CE4E5B9 * ((*(v35 + v186) >> 31) ^ (*(v35 + v186) >> 1));
                        v10 = v578;
                        v190 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v578 + 128, (v35 + v186), (0x94D049BB133111EBLL * (v189 ^ (v189 >> 27))) ^ ((0x94D049BB133111EBLL * (v189 ^ (v189 >> 27))) >> 31), buf);
                        if (buf[0].n128_u32[3] == 0x7FFFFFFF)
                        {
                          v191 = *re::pipelineLogObjects(v190);
                          if (os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
                          {
                            if (v609)
                            {
                              v10 = v610;
                            }

                            else
                            {
                              v10 = &v609 + 1;
                            }

                            v192 = v191;
                            v193 = *(v35 + v186 + 8);
                            buf[0].n128_u32[0] = 136315394;
                            *(buf[0].n128_u64 + 4) = v10;
                            buf[0].n128_u16[6] = 2080;
                            *(&buf[0].n128_u64[1] + 6) = v193;
                            _os_log_impl(&dword_1E1C61000, v192, OS_LOG_TYPE_DEFAULT, "[%s] Unknown animated joint: %s\n", buf, 0x16u);
                          }

                          v194 = *&v747[8];
                          v195 = v581;
                          v128 = v597;
                          if (*&v747[8] <= v581)
                          {
                            goto LABEL_707;
                          }

                          v196 = (*&v747[16] + Asset);
                          v196[1] = 1065353216;
                          v196[2] = 0;
                          *v196 = 0x3F8000003F800000;
                          v196[3] = 0x3F80000000000000;
                          v196[4] = 0;
                          v196[5] = 0;
                        }

                        else
                        {
                          v194 = *(*(v578 + 18) + 32 * buf[0].n128_u32[3] + 24);
                          v35 = *(v578 + 11);
                          if (v35 <= v194)
                          {
                            goto LABEL_706;
                          }

                          v35 = *&v747[8];
                          v195 = v581;
                          if (*&v747[8] <= v581)
                          {
                            goto LABEL_708;
                          }

                          v197 = (*(v578 + 12) + 48 * v194);
                          v198 = (*&v747[16] + Asset);
                          v199 = v197[2];
                          v200 = *v197;
                          v198[1] = v197[1];
                          v198[2] = v199;
                          *v198 = v200;
                        }

                        v187 = v195 + 1;
                        Asset += 48;
                        v186 += 16;
                        v35 = v584;
                        v185 = v579;
                      }

                      while (v577 != v187);
                    }

                    v201 = *(v185 + 104);
                    *v746 = *(v185 + 120);
                    *&v746[8] = v201;
                    buf[0].n128_u64[0] = v747;
                    buf[0].n128_u64[1] = 1;
                    *(v185 + 72) = re::AnimationHelper::makeAdditiveForValues<re::SkeletalPoseAssetData>(v746, buf, *v746, v201);
                    if (*v747 && *&v747[8])
                    {
                      (*(**v747 + 40))();
                    }

                    v180 = v579;
                  }

                  v202 = *(a3 + 104);
                  if (v609)
                  {
                    v203 = v610;
                  }

                  else
                  {
                    v203 = &v609 + 1;
                  }

                  if (v609)
                  {
                    v204 = v609 >> 1;
                  }

                  else
                  {
                    v204 = v609 >> 1;
                  }

                  v205 = re::AssetHelper::makeTimelineAsset(v180, v183);
                  v206 = re::TimelineAsset::assetType(v205);
                  v177 = re::ImportAssetTable::addAsset(v202, v203, v204, v205, v206);
                  v178 = v177;
                }

                memset(v747, 0, 24);
                if (*(v178 + 8))
                {
                  v207 = *(v178 + 2);
                }

                else
                {
                  v207 = (v178 + 9);
                }

                v10 = v587;
                v11 = v652;
                Asset = v573;
                if (v652 <= v573)
                {
                  goto LABEL_715;
                }

                if (*(v653 + 4 * v573) == -1)
                {
                  v208 = *(*(v178 + 5) + 8);
                  if (*(v208 + 104))
                  {
                    v209 = re::BucketArray<re::USDImportContextSkeletalAnimationData,8ul>::operator[](v35 + 160, v573);
                    v210 = (*(v208 + 84) - *(v208 + 80));
                    buf[0].n128_u64[0] = *(v209 + 232);
                    buf[0].n128_f64[1] = v210;
                    re::AssetHandle::AssetHandle(&buf[1], v747);
                    re::AssetHandle::~AssetHandle(&buf[1]);
                    v211 = v652;
                    if (v652 <= v573)
                    {
                      goto LABEL_718;
                    }

                    *(v653 + 4 * v573) = v570;
                  }
                }

                if (v608 && (v609 & 1) != 0)
                {
                  (*(*v608 + 40))();
                }

                v212 = *(v572 - 16);
                *(v572 - 16) = *&v747[8];
                *&v747[8] = v212;
                v213 = *(v572 - 24);
                *(v572 - 24) = 0;
                *(v572 - 24) = *v747;
                *v747 = v213;
                v214 = *(v572 - 8);
                *(v572 - 8) = *&v747[16];
                *&v747[16] = v214;
                re::AssetHandle::~AssetHandle(v747);
                re::AssetHandle::~AssetHandle(v613);
              }

              goto LABEL_173;
            }

            *(v162 - 56) = -1;
            *(v162 - 72) = *&v717[8];
          }

LABEL_172:
          v128 = v597;
LABEL_173:
          if (v717[0] == 1)
          {
            re::AssetHandle::~AssetHandle(&v718[2]);
          }

          goto LABEL_175;
        }

        Asset = *re::pipelineLogObjects(0);
        v10 = v587;
        if (os_log_type_enabled(Asset, OS_LOG_TYPE_ERROR))
        {
          v215 = Asset;
          v216 = v139->var1;
          buf[0].n128_u32[0] = 136315138;
          *(buf[0].n128_u64 + 4) = v216;
          _os_log_error_impl(&dword_1E1C61000, v215, OS_LOG_TYPE_ERROR, "Could not locate skeleton asset: %s", buf, 0xCu);
        }
      }
    }

    v717[0] = 0;
    goto LABEL_172;
  }

  v585 = 0;
  v35 = v584;
LABEL_348:
  v34 = a3;
  v117 = v585;
  if (*(&v644 + 1))
  {
    v717[0] = 0;
    *&v717[2] = 257;
    v717[4] = 1;
    *&v717[5] = 0x101000000000000;
    v717[13] = 1;
    v29 = v717;
    v719 = 0u;
    memset(&v718[2], 0, 32);
    DWORD1(v719) = 0x7FFFFFFF;
    v717[1] = *(a3 + 161);
    v717[6] = *(a3 + 164);
    v718[0] = v717[6];
    re::USDImportContext::generatePerMeshCompileOptions(v35, v717, v713);
    MeshAssetDataFromDescriptor = re::makeMeshAssetDataFromDescriptor(&v640, v713, v702);
    if (v702[0].n128_u8[0] == 1)
    {
      v612 = 0;
      v609 = 0;
      v610 = 0;
      v608 = 0;
      v611 = 0;
      re::DynamicArray<re::AssetHandle>::resize(&v608, v707);
      v117 = v702[1].n128_u64[1];
      if (v702[1].n128_u64[1])
      {
        v319 = 0;
        v29 = WORD4(v685);
        do
        {
          Asset = v702[1].n128_u64[1];
          if (v702[1].n128_u64[1] <= v319)
          {
            goto LABEL_705;
          }

          v320 = v702[2].n128_u64[1] + (v319 << 9);
          v321 = *(v320 + 208);
          if (v321)
          {
            v35 = v321 << 8;
            v36 = *(v320 + 224) + 56;
            do
            {
              Asset = *v36;
              v318 = re::BucketArray<re::FixedArray<unsigned short>,16ul>::operator[](&v679, v319);
              v322 = v29;
              if (*(v318 + 1) > Asset)
              {
                v318 = re::BucketArray<re::FixedArray<unsigned short>,16ul>::operator[](&v679, v319);
                v10 = *(v318 + 1);
                if (v10 <= Asset)
                {
                  goto LABEL_480;
                }

                v322 = *(*(v318 + 2) + 2 * Asset);
              }

              *v36 = v322;
              v36 += 256;
              v35 -= 256;
            }

            while (v35);
          }
        }

        while (++v319 != v117);
      }

      v323 = *&v649[40];
      if (*&v649[40])
      {
        v324 = 0;
        v325 = *&v649[24];
        while (1)
        {
          v326 = *v325;
          v325 += 8;
          if (v326 < 0)
          {
            break;
          }

          if (*&v649[40] == ++v324)
          {
            LODWORD(v324) = *&v649[40];
            break;
          }
        }
      }

      else
      {
        LODWORD(v324) = 0;
      }

      if (v324 != *&v649[40])
      {
        v347 = *&v649[24];
        v605.i64[0] = 136315138;
        Asset = "Could not locate skeleton asset: %s";
        do
        {
          v348 = *(a3 + 104);
          v349 = v347 + 32 * v324;
          v350 = *(v349 + 16);
          v351 = strlen(v350);
          v352 = re::SkeletonAsset::assetType(v351);
          v353 = re::ImportAssetTable::importedAsset(v348, v350, v351, v352);
          if (v353)
          {
            v11 = *(v349 + 24);
            v10 = v610;
            if (v610 <= v11)
            {
              goto LABEL_714;
            }

            if (*(v353 + 8))
            {
              v354 = *(v353 + 16);
            }

            else
            {
              v354 = (v353 + 9);
            }

            v356 = (v612 + 24 * v11);
          }

          else
          {
            v355 = *re::pipelineLogObjects(0);
            if (os_log_type_enabled(v355, OS_LOG_TYPE_ERROR))
            {
              v358 = *(v349 + 16);
              buf[0].n128_u32[0] = 136315138;
              *(buf[0].n128_u64 + 4) = v358;
              _os_log_error_impl(&dword_1E1C61000, v355, OS_LOG_TYPE_ERROR, "Could not locate skeleton asset: %s", buf, 0xCu);
            }
          }

          if (*&v649[40] <= (v324 + 1))
          {
            v357 = v324 + 1;
          }

          else
          {
            v357 = *&v649[40];
          }

          v347 = *&v649[24];
          while (v357 - 1 != v324)
          {
            LODWORD(v324) = v324 + 1;
            if ((*(*&v649[24] + 32 * v324) & 0x80000000) != 0)
            {
              goto LABEL_472;
            }
          }

          LODWORD(v324) = v357;
LABEL_472:
          ;
        }

        while (v324 != v323);
      }

      v35 = v584;
      if (v585)
      {
        if (v638)
        {
          v602 = v702[1].n128_u64[1];
          if (v702[1].n128_u64[1])
          {
            v10 = 0;
            v34 = v746;
            while (1)
            {
              v328 = v702[1].n128_u64[1];
              if (v702[1].n128_u64[1] <= v10)
              {
                break;
              }

              v329 = (v702[2].n128_u64[1] + (v10 << 9));
              v29 = v329[36];
              if (v29)
              {
                v330 = v29;
              }

              else
              {
                v330 = 1;
              }

              v318 = re::BucketArray<re::BufferSlice,8ul>::operator[](&v633, v10);
              v605.i64[0] = v330;
              if (v330)
              {
                v331 = *(v318 + 2) == v330;
              }

              else
              {
                v331 = 0;
              }

              if (v331)
              {
                Asset = 0;
                v604.i64[0] = v10;
                do
                {
                  v318 = re::BucketArray<re::BufferSlice,8ul>::operator[](&v633, v10);
                  v188 = *(v318 + 2);
                  if (v188 <= Asset)
                  {
                    goto LABEL_704;
                  }

                  v10 = *(v318 + 4) + 72 * Asset;
                  v332 = *(v10 + 8);
                  if (v332 != -1 && *(v10 + 16) != -1)
                  {
                    v333 = re::BucketArray<re::USDImportContextSkeletonData,4ul>::operator[](v35 + 56, v332);
                    re::StringID::StringID(&v700, v333 + 1);
                    v334 = re::BucketArray<re::USDImportContextSkeletalAnimationData,8ul>::operator[](v35 + 160, *(v10 + 16));
                    v318 = re::StringID::StringID(&v699, v334 + 1);
                    v35 = 0;
                    if (v29)
                    {
LABEL_388:
                      v117 = v329[36];
                      if (v117 <= Asset)
                      {
                        goto LABEL_479;
                      }

                      v335 = v329[38];
                      if (v35 < *(v335 + 48 * Asset + 24))
                      {
                        v36 = *(*(v335 + 48 * Asset + 40) + 8 * v35);
                        goto LABEL_392;
                      }
                    }

                    else
                    {
                      while (1)
                      {
                        v36 = v35;
                        if (v35 >= v329[26])
                        {
                          break;
                        }

LABEL_392:
                        v746[0] = 1;
                        v336 = re::DynamicString::format("%s-0", &v696, v329[1]);
                        if (v697)
                        {
                          v337 = v698;
                        }

                        else
                        {
                          v337 = &v697 + 1;
                        }

                        *&v746[8] = 0;
                        *&v746[16] = &str_67;
                        v117 = v329[26];
                        if (v117 <= v36)
                        {
                          goto LABEL_476;
                        }

                        v338 = v329[28] + (v36 << 8);
                        if (*(v338 + 80))
                        {
                          re::StringID::StringID(&v746[24], (v338 + 72));
                          v36 = &str_67;
                        }

                        else
                        {
                          v36 = &str_67;
                          *&v746[24] = 0;
                          *&v746[32] = &str_67;
                        }

                        if (v696 && (v697 & 1) != 0)
                        {
                          (*(*v696 + 40))();
                        }

                        buf[0].n128_u8[0] = v746[0];
                        re::StringID::StringID(&buf[0].n128_i8[8], &v746[8]);
                        re::StringID::StringID(&buf[1].n128_i8[8], &v746[24]);
                        re::StringID::StringID(&buf[2].n128_i8[8], &v700);
                        re::StringID::StringID(&buf[3].n128_i8[8], &v699);
                        re::AssetHandle::AssetHandle(&buf[4].n128_i8[8], (v10 + 48));
                        memset(v745, 0, 24);
                        re::DynamicArray<re::SkeletalAnimationLibraryEntry>::add(v585, buf);
                        re::AssetHandle::~AssetHandle(v745);
                        re::AssetHandle::~AssetHandle(&buf[4].n128_i8[8]);
                        if (buf[3].n128_u8[8])
                        {
                          if (buf[3].n128_u8[8])
                          {
                          }
                        }

                        buf[4].n128_u64[0] = &str_67;
                        buf[3].n128_u64[1] = 0;
                        if (buf[2].n128_u8[8])
                        {
                          if (buf[2].n128_u8[8])
                          {
                          }
                        }

                        buf[3].n128_u64[0] = &str_67;
                        buf[2].n128_u64[1] = 0;
                        if (buf[1].n128_u8[8])
                        {
                          if (buf[1].n128_u8[8])
                          {
                          }
                        }

                        buf[2].n128_u64[0] = &str_67;
                        buf[1].n128_u64[1] = 0;
                        if (buf[0].n128_u8[8])
                        {
                          if (buf[0].n128_u8[8])
                          {
                          }
                        }

                        re::DynamicArray<re::AssetHandle>::add((v585 + 120), (v10 + 48));
                        buf[0].n128_u8[0] = v746[0];
                        re::StringID::StringID(&buf[0].n128_i8[8], &v746[8]);
                        re::StringID::StringID(&buf[1].n128_i8[8], &v746[24]);
                        re::StringID::StringID(&buf[2].n128_i8[8], &v700);
                        buf[3].n128_u8[8] = 0;
                        buf[3].n128_u32[3] = *v10;
                        v318 = re::DynamicArray<re::SkeletalPoseMeshMap>::add(&v738 + 1, buf);
                        if (buf[2].n128_u8[8])
                        {
                          if (buf[2].n128_u8[8])
                          {
                          }
                        }

                        buf[3].n128_u64[0] = &str_67;
                        buf[2].n128_u64[1] = 0;
                        if (buf[1].n128_u8[8])
                        {
                          if (buf[1].n128_u8[8])
                          {
                          }
                        }

                        buf[2].n128_u64[0] = &str_67;
                        buf[1].n128_u64[1] = 0;
                        if (buf[0].n128_u8[8])
                        {
                          if (buf[0].n128_u8[8])
                          {
                          }
                        }

                        if (v746[24])
                        {
                          if (v746[24])
                          {
                          }
                        }

                        *&v746[24] = 0;
                        *&v746[32] = &str_67;
                        if (v746[8])
                        {
                          if (v746[8])
                          {
                          }
                        }

                        ++v35;
                        if (v29)
                        {
                          goto LABEL_388;
                        }
                      }
                    }

                    if (*&v699.var0)
                    {
                      if (*&v699.var0)
                      {
                      }
                    }

                    v35 = v584;
                    if (*&v700.var0)
                    {
                      if (*&v700.var0)
                      {
                      }
                    }
                  }

                  ++Asset;
                  v10 = v604.i64[0];
                }

                while (Asset != v605.i64[0]);
              }

              if (++v10 == v602)
              {
                goto LABEL_439;
              }
            }

LABEL_717:
            *v747 = 0;
            memset(buf, 0, sizeof(buf));
            v211 = MEMORY[0x1E69E9C10];
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v746 = 136315906;
            *&v746[4] = "operator[]";
            *&v746[12] = 1024;
            *&v746[14] = 797;
            *&v746[18] = 2048;
            *&v746[20] = v10;
            *&v746[28] = 2048;
            *&v746[30] = v328;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_718:
            v696 = 0;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v746 = 136315906;
            *&v746[4] = "operator[]";
            *&v746[12] = 1024;
            *&v746[14] = 468;
            *&v746[18] = 2048;
            *&v746[20] = Asset;
            *&v746[28] = 2048;
            *&v746[30] = v211;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_719;
          }
        }
      }

LABEL_439:
      v34 = a3;
      Asset = v702;
      if (a8 && v631)
      {
      }

      if (v624)
      {
        v340 = *v35;
      }

      if (*(a3 + 360) == 1)
      {
        v134 = *(a3 + 104);
        v341 = *(v134 + 112);
        v342 = *(v134 + 120);
        if (v342 >= v341)
        {
          v343 = v342 + 1;
          if (v341 < v342 + 1)
          {
            if (*(v134 + 104))
            {
              v344 = 2 * v341;
              _ZF = v341 == 0;
              v345 = 8;
              if (!_ZF)
              {
                v345 = v344;
              }

              if (v345 <= v343)
              {
                v346 = v343;
              }

              else
              {
                v346 = v345;
              }

              re::DynamicArray<re::MeshAssetData>::setCapacity((v134 + 104), v346);
            }

            else
            {
LABEL_487:
              *(v134 + 104) = v36;
              re::DynamicArray<re::MeshAssetData>::setCapacity((v134 + 104), v343);
              ++*(v134 + 128);
            }
          }

          v342 = *(v134 + 120);
        }

        v360 = *(v134 + 136) + 208 * v342;
        re::DynamicArray<re::MeshAssetModel>::DynamicArray(v360, (Asset + 8));
        re::DynamicArray<re::MeshAssetInstance>::DynamicArray(v360 + 40, &v703);
        re::DynamicArray<re::MeshAssetSkeleton>::DynamicArray(v360 + 80, &v705 + 1);
        re::DynamicArray<float>::DynamicArray(v360 + 120, &v708 + 1);
        *(v360 + 160) = v711;
        v318 = re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::DynamicArray(v360 + 168, v712);
        ++*(v134 + 120);
        ++*(v134 + 128);
      }

      v361 = re::globalAllocators(v318);
      v362 = (*(*v361[2] + 32))(v361[2], 1272, 8);
      v363 = re::MeshAsset::MeshAsset(v362, Asset + 8);
      re::DynamicArray<re::AssetHandle>::operator=(v363 + 264, &v608);
      v364 = re::ecs2::EntityAssetData::addComponent<re::ecs2::MeshComponent>(&v663);
      v365 = v34[6].n128_u64[1];
      v366 = v661;
      v10 = v662;
      v367 = re::MeshAsset::assetType(v364);
      v368 = re::ImportAssetTable::addAsset(v365, v366, v10, v362, v367);
      if (*(v368 + 8))
      {
        v369 = *(v368 + 16);
      }

      else
      {
        v369 = (v368 + 9);
      }

      v371 = *(&v685 + 1);
      if (v364[8] < *(&v685 + 1))
      {
        v370 = re::DynamicArray<re::AssetHandle>::setCapacity(v364 + 7, *(&v685 + 1));
        v371 = *(&v685 + 1);
      }

      if (v371)
      {
        v372 = 32 * v371;
        v373 = (*v687 + 16);
        do
        {
          memset(buf, 0, 24);
          if (*(v373 - 1))
          {
            v374 = *v373;
          }

          else
          {
            v374 = (v373 - 7);
          }

          re::DynamicArray<re::AssetHandle>::add((v364 + 7), buf);
          re::AssetHandle::~AssetHandle(buf);
          v373 += 4;
          v372 -= 32;
        }

        while (v372);
      }

      re::DynamicArray<re::AssetHandle>::deinit(&v608);
      v117 = v585;
      v29 = v717;
      goto LABEL_502;
    }

    v327 = *re::pipelineLogObjects(MeshAssetDataFromDescriptor);
    if (!os_log_type_enabled(v327, OS_LOG_TYPE_ERROR))
    {
LABEL_367:

LABEL_502:
      re::Result<re::MeshAssetData,re::DetailedError>::~Result(v702);
      re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v716);
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v713[16]);
      v32.n128_f64[0] = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v29[1]);
      goto LABEL_503;
    }

LABEL_481:
    if (v702[2].n128_u8[0])
    {
      v359 = v702[2].n128_u64[1];
    }

    else
    {
      v359 = &v702[2].n128_i8[1];
    }

    buf[0].n128_u32[0] = 136315394;
    *(buf[0].n128_u64 + 4) = v665;
    buf[0].n128_u16[6] = 2080;
    *(&buf[0].n128_u64[1] + 6) = v359;
    _os_log_error_impl(&dword_1E1C61000, v327, OS_LOG_TYPE_ERROR, "Skipping mesh for entity '%s' due to error: %s", buf, 0x16u);
    goto LABEL_367;
  }

LABEL_503:
  v604.i64[0] = &v657;
  Asset = v659;
  if (!v117)
  {
    if (!v659)
    {
      v406 = 0;
      v407 = a5;
      if (!a9)
      {
        goto LABEL_621;
      }

      goto LABEL_611;
    }

    v375 = re::globalAllocators(v30);
    v117 = (*(*v375[2] + 32))(v375[2], 224, 8);
    *(v117 + 176) = 0u;
    *(v117 + 192) = 0u;
    *v117 = 0u;
    *(v117 + 16) = 0u;
    *(v117 + 32) = 0u;
    *(v117 + 48) = 0u;
    *(v117 + 64) = 0u;
    *(v117 + 80) = 0u;
    *(v117 + 96) = 0u;
    *(v117 + 112) = 0u;
    *(v117 + 128) = 0u;
    *(v117 + 144) = 0u;
    *(v117 + 160) = 0u;
    *(v117 + 196) = 0x7FFFFFFF;
    *(v117 + 208) = 0;
    *(v117 + 216) = &str_67;
  }

  v586 = v117;
  v603 = *(v35 + 48);
  v376 = v661;
  re::TimelineGroupBuilder::TimelineGroupBuilder(v702, v34[6].n128_i64[1], v661, v662);
  if (Asset)
  {
    v377 = 0;
    v605.i64[0] = v655;
    if (v656)
    {
      v35 = &v657;
    }

    else
    {
      v35 = v658;
    }

    while (1)
    {
      v188 = v377 >> 3;
      if (v605.i64[0] <= v377 >> 3)
      {
        break;
      }

      v378 = Asset;
      v379 = (*(v35 + 8 * v188) + 40 * (v377 & 7));
      v380 = *v379;
      v381 = *v379 + v379[1];
      re::AssetHandle::AssetHandle(v746, (v379 + 2));
      v382 = strlen(v376);
      re::TimelineGroupBuilder::addTimeline(v702, v746, v376, v382, "entitySceneClip", v380, v381);
      re::AssetHandle::~AssetHandle(v746);
      v383 = *v379;
      v384 = *v379 + v379[1];
      re::AssetHandle::AssetHandle(&v608, (v379 + 2));
      v385 = strlen(v376);
      re::TimelineGroupBuilder::addTimeline(v614, &v608, v376, v385, "defaultSceneClip", v383, v384);
      re::AssetHandle::~AssetHandle(&v608);
      v10 = a5;
      v36 = *(a5 + 40);
      if (v36)
      {
        for (k = 0; k != v36; ++k)
        {
          v387 = *re::BucketArray<unsigned long,8ul>::operator[](a5, k);
          v388 = *v379;
          v389 = *v379 + v379[1];
          re::AssetHandle::AssetHandle(v747, (v379 + 2));
          v390 = strlen(v376);
          re::TimelineGroupBuilder::addTimeline(v387, v747, v376, v390, "childSceneClip", v388, v389);
          re::AssetHandle::~AssetHandle(v747);
        }
      }

      ++v377;
      Asset = v378;
      if (v377 == v378)
      {
        goto LABEL_515;
      }
    }

LABEL_702:
    *v717 = 0;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v713 = 136315906;
    *&v713[4] = "operator[]";
    *&v713[12] = 1024;
    *&v713[14] = 866;
    *&v713[18] = 2048;
    *&v713[20] = v188;
    v714 = 2048;
    *v715 = v605.i64[0];
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_703:
    v696 = 0;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v746 = 136315906;
    *&v746[4] = "operator[]";
    *&v746[12] = 1024;
    *&v746[14] = 789;
    *&v746[18] = 2048;
    *&v746[20] = v581;
    *&v746[28] = 2048;
    *&v746[30] = v188;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_704:
    *v747 = 0;
    memset(buf, 0, sizeof(buf));
    v319 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v746 = 136315906;
    *&v746[4] = "operator[]";
    *&v746[12] = 1024;
    *&v746[14] = 797;
    *&v746[18] = 2048;
    *&v746[20] = Asset;
    *&v746[28] = 2048;
    *&v746[30] = v188;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_705:
    *v747 = 0;
    memset(buf, 0, sizeof(buf));
    v194 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v746 = 136315906;
    *&v746[4] = "operator[]";
    *&v746[12] = 1024;
    *&v746[14] = 789;
    *&v746[18] = 2048;
    *&v746[20] = v319;
    *&v746[28] = 2048;
    *&v746[30] = Asset;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_706:
    v696 = 0;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v746 = 136315906;
    *&v746[4] = "operator[]";
    *&v746[12] = 1024;
    *&v746[14] = 476;
    *&v746[18] = 2048;
    *&v746[20] = v194;
    *&v746[28] = 2048;
    *&v746[30] = v35;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_707:
    v696 = 0;
    memset(buf, 0, sizeof(buf));
    v551 = v195;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v746 = 136315906;
    *&v746[4] = "operator[]";
    *&v746[12] = 1024;
    *&v746[14] = 468;
    *&v746[18] = 2048;
    *&v746[20] = v551;
    *&v746[28] = 2048;
    *&v746[30] = v194;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_708:
    v696 = 0;
    memset(buf, 0, sizeof(buf));
    v11 = v195;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v746 = 136315906;
    *&v746[4] = "operator[]";
    *&v746[12] = 1024;
    *&v746[14] = 468;
    *&v746[18] = 2048;
    *&v746[20] = v11;
    *&v746[28] = 2048;
    *&v746[30] = v35;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_709:
    v608 = 0;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v746 = 136315906;
    *&v746[4] = "operator[]";
    *&v746[12] = 1024;
    *&v746[14] = 789;
    *&v746[18] = 2048;
    *&v746[20] = v36;
    *&v746[28] = 2048;
    *&v746[30] = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_710:
    *v746 = 0;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v717 = 136315906;
    *&v717[4] = "operator[]";
    *&v717[12] = 1024;
    *v718 = 858;
    *&v718[4] = 2048;
    *&v718[6] = Asset;
    *&v718[14] = 2048;
    *&v718[16] = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_711:
    v608 = 0;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v717 = 136315906;
    *&v717[4] = "operator[]";
    *&v717[12] = 1024;
    *v718 = 858;
    *&v718[4] = 2048;
    *&v718[6] = Asset;
    *&v718[14] = 2048;
    *&v718[16] = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_712:
    *v746 = 0;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v717 = 136315906;
    *&v717[4] = "operator[]";
    *&v717[12] = 1024;
    *v718 = 858;
    *&v718[4] = 2048;
    *&v718[6] = Asset;
    *&v718[14] = 2048;
    *&v718[16] = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_713:
    *v746 = 0;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v717 = 136315906;
    *&v717[4] = "operator[]";
    *&v717[12] = 1024;
    *v718 = 858;
    *&v718[4] = 2048;
    *&v718[6] = Asset;
    *&v718[14] = 2048;
    *&v718[16] = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_714:
    *v747 = 0;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v746 = 136315906;
    *&v746[4] = "operator[]";
    *&v746[12] = 1024;
    *&v746[14] = 789;
    *&v746[18] = 2048;
    *&v746[20] = v11;
    *&v746[28] = 2048;
    *&v746[30] = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_715:
    v696 = 0;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v746 = 136315906;
    *&v746[4] = "operator[]";
    *&v746[12] = 1024;
    *&v746[14] = 468;
    *&v746[18] = 2048;
    *&v746[20] = Asset;
    *&v746[28] = 2048;
    *&v746[30] = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_716;
  }

LABEL_515:
  v697 = 0;
  v696 = 0;
  v698 = 0;
  v34 = a3;
  if (*(&v727 + 1) | *(&v730 + 1))
  {
    re::DynamicString::format("%s_defaultTimelineGroupPoses", buf, v376);
    v391 = *(a3 + 104);
    if (buf[0].n128_u8[8])
    {
      v392 = buf[1].n128_u64[0];
    }

    else
    {
      v392 = &buf[0].n128_i8[9];
    }

    v393 = strlen(v392);
    v394 = re::globalAllocators(v393);
    v395 = (*(*v394[2] + 32))(v394[2], 320, 8);
    v396 = re::DynamicArray<re::AssetHandle>::DynamicArray(v395, &v720);
    re::DynamicArray<re::StringID>::DynamicArray(v396 + 40, &v722 + 1);
    re::DynamicArray<re::StringID>::DynamicArray(v395 + 80, &v724[16]);
    re::DynamicArray<re::FixedArray<re::StringID>>::DynamicArray(v395 + 120, &v726 + 1);
    v397 = re::DynamicArray<re::FixedArray<re::StringID>>::DynamicArray(v395 + 160, &v729 + 1);
    *(v395 + 200) = 0;
    *(v395 + 232) = 0;
    *(v395 + 208) = 0;
    *(v395 + 216) = 0;
    *(v395 + 224) = 0;
    if (*(&v732 + 1))
    {
      v398 = *(&v733 + 1);
      *(v395 + 200) = *(&v732 + 1);
      v397 = re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity((v395 + 200), v398);
      ++*(v395 + 224);
      v399 = *(&v733 + 1);
      v400 = *(v395 + 216);
      if (*(&v733 + 1) >= v400)
      {
        v397 = re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity((v395 + 200), *(&v733 + 1));
        v408 = v735;
        v409 = *(v395 + 216);
        v410 = *(v395 + 232);
        if (v409)
        {
          v411 = 24 * v409;
          do
          {
            v397 = re::FixedArray<re::GenericSRT<float>>::operator=(v410, v408);
            v408 += 24;
            v410 += 3;
            v411 -= 24;
          }

          while (v411);
          v410 = *(v395 + 232);
          v409 = *(v395 + 216);
          v408 = v735;
        }

        if (v409 != v399)
        {
          v412 = 3 * v409;
          v413 = v408 + 8 * v412;
          v397 = &v410[v412];
          v414 = 24 * v399 - 8 * v412;
          do
          {
            v415 = re::FixedArray<re::GenericSRT<float>>::FixedArray(v397, v413);
            v413 += 24;
            v397 = v415 + 3;
            v414 -= 24;
          }

          while (v414);
        }
      }

      else
      {
        v401 = *(v395 + 232);
        if (*(&v733 + 1))
        {
          v402 = v735;
          v403 = 24 * *(&v733 + 1);
          do
          {
            v397 = re::FixedArray<re::GenericSRT<float>>::operator=(v401, v402);
            v402 += 24;
            v401 += 3;
            v403 -= 24;
          }

          while (v403);
          v401 = *(v395 + 232);
          v400 = *(v395 + 216);
        }

        if (v399 != v400)
        {
          v404 = &v401[3 * v399];
          v405 = 24 * v400 - 24 * v399;
          do
          {
            v397 = re::FixedArray<CoreIKTransform>::deinit(v404);
            v404 += 3;
            v405 -= 24;
          }

          while (v405);
        }
      }

      *(v395 + 216) = v399;
    }

    *(v395 + 240) = 0;
    *(v395 + 272) = 0;
    *(v395 + 248) = 0;
    *(v395 + 256) = 0;
    *(v395 + 264) = 0;
    if (*(&v735 + 1))
    {
      v416 = *(&v736 + 1);
      *(v395 + 240) = *(&v735 + 1);
      v397 = re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity((v395 + 240), v416);
      ++*(v395 + 264);
      v417 = *(&v736 + 1);
      v418 = *(v395 + 256);
      if (*(&v736 + 1) >= v418)
      {
        v397 = re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity((v395 + 240), *(&v736 + 1));
        v424 = v738;
        v425 = *(v395 + 256);
        v426 = *(v395 + 272);
        if (v425)
        {
          v427 = 24 * v425;
          do
          {
            v397 = re::FixedArray<re::Matrix4x4<float>>::operator=(v426, v424);
            v424 += 24;
            v426 += 3;
            v427 -= 24;
          }

          while (v427);
          v426 = *(v395 + 272);
          v425 = *(v395 + 256);
          v424 = v738;
        }

        if (v425 != v417)
        {
          v428 = 3 * v425;
          v429 = v424 + 8 * v428;
          v397 = &v426[v428];
          v430 = 24 * v417 - 8 * v428;
          do
          {
            v431 = re::FixedArray<re::Matrix4x4<float>>::FixedArray(v397, v429);
            v429 += 24;
            v397 = v431 + 3;
            v430 -= 24;
          }

          while (v430);
        }
      }

      else
      {
        v419 = *(v395 + 272);
        if (*(&v736 + 1))
        {
          v420 = v738;
          v421 = 24 * *(&v736 + 1);
          do
          {
            v397 = re::FixedArray<re::Matrix4x4<float>>::operator=(v419, v420);
            v420 += 24;
            v419 += 3;
            v421 -= 24;
          }

          while (v421);
          v419 = *(v395 + 272);
          v418 = *(v395 + 256);
        }

        if (v417 != v418)
        {
          v422 = &v419[3 * v417];
          v423 = 24 * v418 - 24 * v417;
          do
          {
            v397 = re::FixedArray<CoreIKTransform>::deinit(v422);
            v422 += 3;
            v423 -= 24;
          }

          while (v423);
        }
      }

      *(v395 + 256) = v417;
    }

    *(v395 + 312) = 0;
    *(v395 + 288) = 0;
    *(v395 + 296) = 0;
    *(v395 + 280) = 0;
    *(v395 + 304) = 0;
    if (*(&v738 + 1))
    {
      v605.i64[0] = v392;
      v432 = v393;
      v433 = v391;
      v434 = *(&v739 + 1);
      *(v395 + 280) = *(&v738 + 1);
      re::DynamicArray<re::SkeletalPoseMeshMap>::setCapacity((v395 + 280), v434);
      ++*(v395 + 304);
      v435 = *(&v739 + 1);
      if (*(&v739 + 1) >= *(v395 + 296))
      {
        re::DynamicArray<re::SkeletalPoseMeshMap>::setCapacity((v395 + 280), *(&v739 + 1));
        v397 = std::__copy_impl::operator()[abi:nn200100]<re::SkeletalPoseMeshMap *,re::SkeletalPoseMeshMap *,re::SkeletalPoseMeshMap *>(v741, &v741[8 * *(v395 + 296)], *(v395 + 312));
        v439 = *(v395 + 296);
        if (v439 != v435)
        {
          v440 = v741;
          v441 = &v741[8 * v435];
          v442 = *(v395 + 312);
          v443 = v439 << 6;
          do
          {
            v444 = v440 + v443;
            *(v442 + v443) = *(v440 + v443);
            re::StringID::StringID((v442 + v443 + 8), (v440 + v443 + 8));
            re::StringID::StringID((v442 + v443 + 24), (v440 + v443 + 24));
            v397 = re::StringID::StringID((v442 + v443 + 40), (v440 + v443 + 40));
            *(v442 + v443 + 56) = *(v440 + v443 + 56);
            v440 += 8;
            v442 += 64;
          }

          while (v444 + 64 != v441);
        }
      }

      else
      {
        v397 = std::__copy_impl::operator()[abi:nn200100]<re::SkeletalPoseMeshMap *,re::SkeletalPoseMeshMap *,re::SkeletalPoseMeshMap *>(v741, &v741[8 * *(&v739 + 1)], *(v395 + 312));
        v436 = *(v395 + 296);
        if (v435 != v436)
        {
          v437 = (v436 << 6) - (v435 << 6);
          v438 = (*(v395 + 312) + (v435 << 6) + 40);
          do
          {
            re::StringID::destroyString(v438);
            re::StringID::destroyString((v438 - 16));
            re::StringID::destroyString((v438 - 32));
            v438 = (v438 + 64);
            v437 -= 64;
          }

          while (v437);
        }
      }

      *(v395 + 296) = v435;
      v34 = a3;
      v391 = v433;
      v393 = v432;
      v392 = v605.i64[0];
    }

    v445 = re::SkeletalPoseDefinitionAsset::assetType(v397);
    v446 = re::ImportAssetTable::addAsset(v391, v392, v393, v395, v445);
    if (*(v446 + 8))
    {
      v447 = *(v446 + 16);
    }

    else
    {
      v447 = (v446 + 9);
    }

    if (buf[0].n128_u64[0] && (buf[0].n128_u8[8] & 1) != 0)
    {
      (*(*buf[0].n128_u64[0] + 40))();
    }
  }

  *(v576 + 56) = v603;
  v448 = re::AssetHandle::operator=((v576 + 8), &v696);
  v449 = re::globalAllocators(v448);
  v450 = (*(*v449[2] + 32))(v449[2], 112, 8);
  *(v450 + 32) = 0u;
  *(v450 + 48) = 0u;
  *(v450 + 64) = 0u;
  *v450 = 0u;
  *(v450 + 16) = 0u;
  *(v450 + 80) = 0;
  *(v450 + 88) = 0;
  *(v450 + 32) = &str_67;
  *(v450 + 40) = 0;
  *(v450 + 48) = 0;
  *(v450 + 56) = 0;
  *(v450 + 64) = 0;
  *(v450 + 96) = 0;
  *(v450 + 104) = 0;
  re::TimelineGroupBuilder::createTimelineAsset(buf, v702, "default scene animation");
  v451 = *(v450 + 8);
  v452 = *(v450 + 16);
  *(v450 + 8) = buf[0].n128_u64[1];
  buf[0].n128_u64[1] = v451;
  v453 = *v450;
  *v450 = 0;
  *v450 = buf[0].n128_u64[0];
  *(v450 + 16) = buf[1].n128_u64[0];
  buf[0].n128_u64[0] = v453;
  buf[1].n128_u64[0] = v452;
  re::AssetHandle::~AssetHandle(buf);
  re::StringID::operator=((v450 + 24), &v664);
  *(v450 + 80) = v603;
  re::AssetHandle::operator=(v450 + 88, &v696);
  re::DynamicString::format("%s_defaultEntityScene", v713, v661);
  v454 = v34[6].n128_u64[1];
  if (v713[8])
  {
    v455 = *&v713[16];
  }

  else
  {
    v455 = &v713[9];
  }

  v456 = strlen(v455);
  v457 = re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetType();
  v458 = re::ImportAssetTable::addAsset(v454, v455, v456, v450, v457);
  buf[0].n128_u64[0] = 0;
  buf[0].n128_u64[1] = &str_67;
  memset(&buf[1], 0, 24);
  re::DynamicArray<re::NamedAnimationLibraryEntry>::add(v586 + 10, buf);
  re::AssetHandle::~AssetHandle(&buf[1]);
  if (buf[0].n128_u8[0])
  {
    if (buf[0].n128_u8[0])
    {
    }
  }

  v460 = *(v586 + 14) + 40 * *(v586 + 12);
  re::StringID::destroyString((v460 - 40));
  *(v460 - 40) = 0x7AAA0A2456EA1222;
  *(v460 - 32) = "default scene animation";
  if (*(v458 + 8))
  {
    v462 = *(v458 + 16);
  }

  else
  {
    v462 = (v458 + 9);
  }

  v35 = v584;
  memset(buf, 0, 24);
  re::DynamicArray<re::AssetHandle>::add(v586 + 15, buf);
  re::AssetHandle::~AssetHandle(buf);
  v464 = (*(v586 + 19) + 24 * *(v586 + 17) - 24);
  if (*(v458 + 8))
  {
    v465 = *(v458 + 16);
  }

  else
  {
    v465 = (v458 + 9);
  }

  v467 = re::globalAllocators(v466);
  v468 = (*(*v467[2] + 32))(v467[2], 112, 8);
  *(v468 + 32) = 0u;
  *(v468 + 48) = 0u;
  *(v468 + 64) = 0u;
  *v468 = 0u;
  *(v468 + 16) = 0u;
  *(v468 + 80) = 0;
  *(v468 + 88) = 0;
  *(v468 + 32) = &str_67;
  *(v468 + 48) = 0;
  *(v468 + 56) = 0;
  *(v468 + 64) = 0;
  *(v468 + 40) = 0;
  *(v468 + 96) = 0;
  *(v468 + 104) = 0;
  re::TimelineGroupBuilder::createTimelineAsset(buf, v614, "default subtree animation");
  v469 = *(v468 + 8);
  v470 = *(v468 + 16);
  *(v468 + 8) = buf[0].n128_u64[1];
  buf[0].n128_u64[1] = v469;
  v471 = *v468;
  *v468 = 0;
  *v468 = buf[0].n128_u64[0];
  *(v468 + 16) = buf[1].n128_u64[0];
  buf[0].n128_u64[0] = v471;
  buf[1].n128_u64[0] = v470;
  re::AssetHandle::~AssetHandle(buf);
  re::StringID::operator=((v468 + 24), v576);
  re::DynamicArray<re::AnimationSceneEntityData>::operator=(v468 + 40, v576 + 2);
  *(v468 + 80) = *(v576 + 56);
  re::AssetHandle::operator=(v468 + 88, v576 + 8);
  re::DynamicString::format("%s_defaultAnimationScene", v717, v661);
  v472 = v34[6].n128_u64[1];
  if (v717[8])
  {
    v473 = *&v718[2];
  }

  else
  {
    v473 = &v717[9];
  }

  v10 = strlen(v473);
  v474 = re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetType();
  v475 = re::ImportAssetTable::addAsset(v472, v473, v10, v468, v474);
  memset(buf, 0, 24);
  v406 = v586;
  re::DynamicArray<re::AssetHandle>::add(v586 + 15, buf);
  re::AssetHandle::~AssetHandle(buf);
  v477 = (*(v406 + 152) + 24 * *(v406 + 136) - 24);
  if (*(v475 + 8))
  {
    v478 = *(v475 + 16);
  }

  else
  {
    v478 = (v475 + 9);
  }

  buf[0].n128_u64[0] = 0;
  buf[0].n128_u64[1] = &str_67;
  memset(&buf[1], 0, 24);
  re::DynamicArray<re::NamedAnimationLibraryEntry>::add(v586 + 10, buf);
  re::AssetHandle::~AssetHandle(&buf[1]);
  if (buf[0].n128_u8[0])
  {
    if (buf[0].n128_u8[0])
    {
    }
  }

  v480 = *(v586 + 14) + 40 * *(v586 + 12);
  re::StringID::destroyString((v480 - 40));
  *(v480 - 40) = 0x68ABFF436306FF46;
  *(v480 - 32) = "default subtree animation";
  if (*(v475 + 8))
  {
    Asset = *(v475 + 16);
  }

  else
  {
    Asset = v475 + 9;
  }

  if (*v717 && (v717[8] & 1) != 0)
  {
    (*(**v717 + 40))();
  }

  if (*v713 && (v713[8] & 1) != 0)
  {
    (*(**v713 + 40))();
  }

  re::AssetHandle::~AssetHandle(&v696);
  re::BucketArray<re::TimelineGroupBuilder::TimelineData,8ul>::deinit(&v703.n128_i64[1]);
  if (v703.n128_u64[1])
  {
    v482 = v704.i32[2];
    if ((v704.i8[8] & 1) == 0)
    {
      (*(*v703.n128_u64[1] + 40))();
      v482 = v704.i32[2];
    }

    v703.n128_u64[1] = 0;
    v704.i64[0] = 0;
    v704.i32[2] = (v482 | 1) + 2;
  }

  if (v702[0].n128_u64[1] && (v702[1].n128_u8[0] & 1) != 0)
  {
    (*(*v702[0].n128_u64[1] + 40))();
  }

  v407 = a5;
  if (!a9)
  {
LABEL_621:
    if (!v406)
    {
LABEL_655:
      v531 = re::BucketArray<unsigned long,32ul>::operator[](v35 + 680, v580);
      v532 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](v35 + 624, *v531);
      v533 = v532;
      if (*(v532 + 117))
      {
        v534 = re::ecs2::EntityAssetData::addComponent<re::ecs2::AudioPlayerComponent>(&v663);
        Asset = v534;
        if (!v667[0])
        {
          v667[0] = v36;
          re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v667, 0);
          ++v669;
        }

        v35 = (*(**(re::ecs2::ComponentImpl<re::ecs2::AudioAnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::AudioAnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7), 248, 0);
        v535 = re::ecs2::AudioAnimationComponent::AudioAnimationComponent(v35);
        v702[0].n128_u64[0] = *((*(*v536 + 40))(v536, v535) + 24) >> 1;
        v702[0].n128_u64[1] = v35;
        v702[1].n128_u8[0] = 1;
        re::DynamicArray<re::BufferView>::add(v667, v702);
        v537 = *(v533 + 117);
        *(v35 + 56) = vrev64_s32(v537[2]);
        if (*(*(v584 + 40) + 96) == 1)
        {
          re::AssetHandle::AssetHandle(v702, &v537[6]);
          re::AssetHandle::AssetHandle(v607, v702);
          re::ecs2::AudioPlayerComponent::registerAudioAsset(Asset, v607);
          re::AssetHandle::~AssetHandle(v607);
          re::AssetHandle::operator=(v35 + 72, v702);
          re::AssetHandle::~AssetHandle(v702);
        }
      }

      v538 = *(v533 + 6);
      v539 = re::HashTable<re::DynamicString,re::DynamicArray<re::AssetHandle>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(&v34[19].n128_i64[1], v702);
      if (v539)
      {
        v540 = v539;
        if (!v667[0] || !v668)
        {
          goto LABEL_668;
        }

        v541 = (*&v670[0] + 8);
        v542 = 24 * v668;
        while (*(v541 - 1) != (*(re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 3) >> 1))
        {
          v541 += 3;
          v542 -= 24;
          if (!v542)
          {
            goto LABEL_668;
          }
        }

        v543 = *v541;
        if (!*v541)
        {
LABEL_668:
          v543 = re::ecs2::EntityAssetData::addComponent<re::ecs2::AudioPlayerComponent>(&v663);
        }

        v544 = *(v540 + 16);
        if (v544)
        {
          v545 = *(v540 + 32);
          v546 = 24 * v544;
          do
          {
            re::AssetHandle::AssetHandle(v606, v545);
            re::ecs2::AudioPlayerComponent::registerAudioAsset(v543, v606);
            re::AssetHandle::~AssetHandle(v606);
            v545 = (v545 + 24);
            v546 -= 24;
          }

          while (v546);
        }
      }

      if (v702[0].n128_u64[0] && (v702[0].n128_u8[8] & 1) != 0)
      {
        (*(*v702[0].n128_u64[0] + 40))(v702[0].n128_u64[0]);
      }

      *a1 = 1;
      re::ecs2::EntityAssetData::EntityAssetData(a1 + 8, &v663);
      re::BucketArray<re::TimelineGroupBuilder::TimelineData,8ul>::deinit(v617);
      if (v617[0])
      {
        v547 = v618;
        if ((v618 & 1) == 0)
        {
          (*(*v617[0] + 40))(v617[0]);
          v547 = v618;
        }

        v617[0] = 0;
        v617[1] = 0;
        v618 = (v547 | 1) + 2;
      }

      if (v615 && (v616 & 1) != 0)
      {
        (*(*v615 + 40))(v615);
      }

      v188 = v620;
      if (v624)
      {
        v548 = 0;
        while (v620 > v548 >> 3)
        {
          if (v624 == ++v548)
          {
            goto LABEL_688;
          }
        }

        v550 = v548 >> 3;
        *v614 = 0;
        v704 = 0u;
        v703 = 0u;
        memset(v702, 0, sizeof(v702));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        buf[0].n128_u32[0] = 136315906;
        *(buf[0].n128_u64 + 4) = "operator[]";
        buf[0].n128_u16[6] = 1024;
        *(&buf[0].n128_u32[3] + 2) = 858;
        buf[1].n128_u16[1] = 2048;
        *(buf[1].n128_u64 + 4) = v550;
        buf[1].n128_u16[6] = 2048;
        *(&buf[1].n128_u64[1] + 6) = v188;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      else
      {
        while (v620)
        {
LABEL_688:
          re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v619);
        }

        if (v619 && (v621 & 1) == 0)
        {
          (*(*v619 + 40))(v619);
        }

        v549 = v631;
        if (!v631)
        {
          goto LABEL_723;
        }

        Asset = 0;
        v188 = v627;
        if (v628)
        {
          v35 = &v629;
        }

        else
        {
          v35 = v630;
        }

        v36 = 40;
        while (1)
        {
          v550 = Asset >> 3;
          if (v188 <= Asset >> 3)
          {
            break;
          }

          re::DynamicArray<re::GeomDeformer>::deinit(*(v35 + 8 * v550) + 40 * (Asset++ & 7));
          if (v549 == Asset)
          {
            goto LABEL_722;
          }
        }
      }

      *v614 = 0;
      v704 = 0u;
      v703 = 0u;
      memset(v702, 0, sizeof(v702));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      buf[0].n128_u32[0] = 136315906;
      *(buf[0].n128_u64 + 4) = "operator[]";
      buf[0].n128_u16[6] = 1024;
      *(&buf[0].n128_u32[3] + 2) = 858;
      buf[1].n128_u16[1] = 2048;
      *(buf[1].n128_u64 + 4) = v550;
      buf[1].n128_u16[6] = 2048;
      *(&buf[1].n128_u64[1] + 6) = v188;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_702;
    }

LABEL_643:
    v10 = v406;
    re::DynamicString::format("%s_animationlibrary", v702, v661, v567);
    v524 = re::ecs2::EntityAssetData::addComponent<re::ecs2::AnimationLibraryComponent>(&v663);
    v525 = v524;
    v526 = v34[6].n128_u64[1];
    if (v702[0].n128_u8[8])
    {
      v527 = v702[1].n128_u64[0];
    }

    else
    {
      v527 = &v702[0].n128_i8[9];
    }

    if (v702[0].n128_u8[8])
    {
      v528 = v702[0].n128_u64[1] >> 1;
    }

    else
    {
      v528 = v702[0].n128_u8[8] >> 1;
    }

    v529 = re::AnimationLibraryAsset::assetType(v524);
    v530 = re::ImportAssetTable::addAsset(v526, v527, v528, v406, v529);
    if (*(v530 + 8))
    {
      Asset = *(v530 + 16);
    }

    else
    {
      Asset = v530 + 9;
    }

    re::ecs2::EntityAssetData::addComponent<re::ecs2::AnimationComponent>(&v663);
    if (v702[0].n128_u64[0] && (v702[0].n128_u8[8] & 1) != 0)
    {
      (*(*v702[0].n128_u64[0] + 40))();
    }

    goto LABEL_655;
  }

LABEL_611:
  if (!*(v407 + 40))
  {
LABEL_719:
    re::internal::assertLog(4, v31, v32.n128_f64[0], "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "first", 754);
    _os_crash();
    __break(1u);
    goto LABEL_720;
  }

  if (!*(*re::BucketArray<unsigned long,8ul>::operator[](v407, 0) + 96))
  {
    goto LABEL_621;
  }

  if (*(v407 + 40))
  {
    v484 = re::BucketArray<unsigned long,8ul>::operator[](v407, 0);
    v485 = *v484;
    if (!v406)
    {
      v486 = re::globalAllocators(v484);
      v406 = (*(*v486[2] + 32))(v486[2], 224, 8);
      *(v406 + 176) = 0u;
      *(v406 + 192) = 0u;
      *v406 = 0u;
      *(v406 + 16) = 0u;
      *(v406 + 32) = 0u;
      *(v406 + 48) = 0u;
      *(v406 + 64) = 0u;
      *(v406 + 80) = 0u;
      *(v406 + 96) = 0u;
      *(v406 + 112) = 0u;
      *(v406 + 128) = 0u;
      *(v406 + 144) = 0u;
      *(v406 + 160) = 0u;
      *(v406 + 196) = 0x7FFFFFFF;
      *(v406 + 208) = 0;
      *(v406 + 216) = &str_67;
    }

    v487 = re::globalAllocators(v484);
    v488 = (*(*v487[2] + 32))(v487[2], 112, 8);
    *(v488 + 32) = 0u;
    *(v488 + 48) = 0u;
    *(v488 + 64) = 0u;
    *v488 = 0u;
    *(v488 + 16) = 0u;
    *(v488 + 80) = 0;
    *(v488 + 88) = 0;
    *(v488 + 32) = &str_67;
    *(v488 + 48) = 0;
    *(v488 + 56) = 0;
    *(v488 + 64) = 0;
    *(v488 + 40) = 0;
    *(v488 + 96) = 0;
    *(v488 + 104) = 0;
    re::TimelineGroupBuilder::createTimelineAsset(v702, v485, "global scene animation");
    v489 = *(v488 + 8);
    v490 = *(v488 + 16);
    *(v488 + 8) = v702[0].n128_u64[1];
    v702[0].n128_u64[1] = v489;
    v491 = *v488;
    *v488 = 0;
    *v488 = v702[0].n128_u64[0];
    *(v488 + 16) = v702[1].n128_u64[0];
    v702[0].n128_u64[0] = v491;
    v702[1].n128_u64[0] = v490;
    re::AssetHandle::~AssetHandle(v702);
    v492 = v406;
    re::StringID::operator=((v488 + 24), a6);
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v488 + 40, (a6 + 2));
    *(v488 + 80) = *(a6 + 56);
    v493 = *(v488 + 96);
    *(v488 + 96) = a6[9];
    a6[9] = v493;
    v494 = *(v488 + 88);
    *(v488 + 88) = 0;
    *(v488 + 88) = a6[8];
    a6[8] = v494;
    v495 = *(v488 + 104);
    *(v488 + 104) = a6[10];
    a6[10] = v495;
    re::DynamicString::format("%s_globalAnimationScene", v717, v661);
    v496 = v34[6].n128_u64[1];
    if (v717[8])
    {
      v497 = *&v718[2];
    }

    else
    {
      v497 = &v717[9];
    }

    v498 = strlen(v497);
    v499 = re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetType();
    v500 = re::ImportAssetTable::addAsset(v496, v497, v498, v488, v499);
    memset(v702, 0, 24);
    re::DynamicArray<re::AssetHandle>::insert((v406 + 120), 0, v702);
    re::AssetHandle::~AssetHandle(v702);
    v502 = *(v406 + 152);
    if (*(v500 + 8))
    {
      v503 = *(v500 + 16);
    }

    else
    {
      v503 = (v500 + 9);
    }

    buf[0].n128_u64[0] = 0;
    buf[0].n128_u64[1] = &str_67;
    memset(&buf[1], 0, 24);
    v504 = *(v406 + 96);
    if (v504 == -1)
    {
      goto LABEL_721;
    }

    if (v504 >= *(v406 + 88))
    {
      re::DynamicArray<re::NamedAnimationLibraryEntry>::growCapacity((v406 + 80), v504 + 1);
      v504 = *(v406 + 96);
    }

    v505 = *(v406 + 112) + 40 * v504;
    if (v504)
    {
      v506 = *(v505 - 40);
      v507 = *(v505 - 32);
      *(v505 - 40) = 0;
      *(v505 - 32) = &str_67;
      *(v505 + 8) = v507;
      v508 = *(v505 - 16);
      v509 = *(v505 - 8);
      *(v505 - 24) = 0;
      *(v505 - 16) = 0;
      *(v505 + 24) = v508;
      *(v505 + 32) = v509;
      *(v505 - 8) = 0;
      *v505 = v506;
      v505 = *(v406 + 112);
      v510 = *(v406 + 96);
      if (v505 + 40 * v510 - 40 != v505)
      {
        v511 = 40 * v510;
        v512 = 40;
        do
        {
          v513 = v505 + v511;
          re::StringID::operator=((v505 + v511 - 40), (v505 + v511 - 80));
          v514 = *(v505 + v511 - 24);
          *(v513 - 24) = *(v513 - 64);
          *(v513 - 64) = v514;
          v515 = *(v505 + v511 - 8);
          *(v513 - 8) = *(v513 - 48);
          *(v513 - 48) = v515;
          v505 -= 40;
          v512 += 40;
        }

        while (v511 != v512);
        v406 = v492;
        v505 = *(v492 + 112);
        v35 = v584;
      }

      re::StringID::operator=(v505, buf);
      v516 = *(v505 + 24);
      *(v505 + 24) = buf[1].n128_u64[1];
      buf[1].n128_u64[1] = v516;
    }

    else
    {
      v517 = buf[0].n128_u8[0];
      *v505 = *v505 & 0xFFFFFFFFFFFFFFFELL | buf[0].n128_u8[0] & 1;
      *v505 = buf[0].n128_u64[0] & 0xFFFFFFFFFFFFFFFELL | v517 & 1;
      *(v505 + 8) = buf[0].n128_u64[1];
      buf[0].n128_u64[1] = &str_67;
      buf[0].n128_u64[0] = 0;
      *(v505 + 16) = 0;
      *(v505 + 24) = 0;
      *(v505 + 32) = 0;
      *(v505 + 24) = buf[1].n128_u64[1];
      buf[1].n128_u64[1] = 0;
    }

    v518 = *(v505 + 16);
    *(v505 + 16) = 0;
    *(v505 + 16) = buf[1].n128_u64[0];
    v519 = *(v505 + 32);
    *(v505 + 32) = buf[2].n128_u64[0];
    buf[1].n128_u64[0] = v518;
    buf[2].n128_u64[0] = v519;
    ++*(v406 + 96);
    ++*(v406 + 104);
    re::AssetHandle::~AssetHandle(&buf[1]);
    if (buf[0].n128_u8[0])
    {
      if (buf[0].n128_u8[0])
      {
      }
    }

    v521 = *(v406 + 112);
    re::StringID::destroyString(v521);
    *v521 = 0x7802B65BF0AE64E6;
    v521[1] = "global scene animation";
    if (*(v500 + 8))
    {
      v523 = *(v500 + 16);
    }

    else
    {
      v523 = (v500 + 9);
    }

    v34 = a3;
    if (*v717 && (v717[8] & 1) != 0)
    {
      (*(**v717 + 40))();
    }

    goto LABEL_643;
  }

LABEL_720:
  re::internal::assertLog(4, v483, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "first", 754);
  _os_crash();
  __break(1u);
LABEL_721:
  *v746 = 0;
  v704 = 0u;
  v703 = 0u;
  memset(v702, 0, sizeof(v702));
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v713 = 136315906;
  *&v713[4] = "insert";
  *&v713[12] = 1024;
  *&v713[14] = 887;
  *&v713[18] = 2048;
  *&v713[20] = 0;
  v714 = 2048;
  *v715 = 0;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
  do
  {
LABEL_722:
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v626);
LABEL_723:
    ;
  }

  while (v627);
  if (v626 && (v628 & 1) == 0)
  {
    (*(*v626 + 40))(v626);
  }

  v552 = v638;
  if (!v638)
  {
    goto LABEL_736;
  }

  v553 = 0;
  v554 = v634;
  if (v635)
  {
    v555 = v571;
  }

  else
  {
    v555 = v637;
  }

  while (v554 > v553 >> 3)
  {
    if (v552 == ++v553)
    {
      goto LABEL_735;
    }
  }

  *v614 = 0;
  v704 = 0u;
  v703 = 0u;
  memset(v702, 0, sizeof(v702));
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  buf[0].n128_u32[0] = 136315906;
  *(buf[0].n128_u64 + 4) = "operator[]";
  buf[0].n128_u16[6] = 1024;
  *(&buf[0].n128_u32[3] + 2) = 858;
  buf[1].n128_u16[1] = 2048;
  *(buf[1].n128_u64 + 4) = v553 >> 3;
  buf[1].n128_u16[6] = 2048;
  *(&buf[1].n128_u64[1] + 6) = v554;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
  do
  {
LABEL_735:
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v633);
LABEL_736:
    ;
  }

  while (v634);
  if (v633 && (v635 & 1) == 0)
  {
    (*(*v633 + 40))(v633);
  }

  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v649[8]);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(&v646 + 8);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(&v643 + 8);
  re::DynamicArray<re::ModelWithLodsDescriptor>::deinit(&v640);
  if (v651 && v652)
  {
    (*(*v651 + 40))(v651);
  }

  re::DynamicArray<re::MeshRigGraphIndex>::deinit(&v738 + 8);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(&v735 + 8);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(&v732 + 8);
  re::DynamicArray<re::FixedArray<re::StringID>>::deinit(&v729 + 8);
  re::DynamicArray<re::FixedArray<re::StringID>>::deinit(&v726 + 8);
  re::DynamicArray<re::StringID>::deinit(&v724[16]);
  re::DynamicArray<re::StringID>::deinit(&v722 + 8);
  re::DynamicArray<re::AssetHandle>::deinit(&v720);
  v556 = v659;
  if (!v659)
  {
    goto LABEL_752;
  }

  v557 = 0;
  v558 = v655;
  if (v656)
  {
    v559 = v604.i64[0];
  }

  else
  {
    v559 = v658;
  }

  while (v558 > v557 >> 3)
  {
    re::AssetHandle::~AssetHandle((*(v559 + 8 * (v557 >> 3)) + 40 * (v557 & 7) + 16));
    if (v556 == ++v557)
    {
      goto LABEL_751;
    }
  }

  *&v640 = 0;
  *v724 = 0u;
  v723 = 0u;
  v722 = 0u;
  v721 = 0u;
  v720 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v702[0].n128_u32[0] = 136315906;
  *(v702[0].n128_u64 + 4) = "operator[]";
  v702[0].n128_u16[6] = 1024;
  *(&v702[0].n128_u32[3] + 2) = 858;
  v702[1].n128_u16[1] = 2048;
  *(v702[1].n128_u64 + 4) = v557 >> 3;
  v702[1].n128_u16[6] = 2048;
  *(&v702[1].n128_u64[1] + 6) = v558;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
  do
  {
LABEL_751:
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v654);
LABEL_752:
    ;
  }

  while (v655);
  if (v654 && (v656 & 1) == 0)
  {
    (*(*v654 + 40))(v654);
  }

  re::ecs2::EntityAssetData::~EntityAssetData(&v663);
  if (v673 && v674)
  {
    (*(*v673 + 40))(v673);
  }

  if (v676 && v677)
  {
    (*(*v676 + 40))(v676);
  }

  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v687[8]);
  re::DynamicArray<re::DynamicString>::deinit(&v684);
  v560 = *(&v682 + 1);
  if (*(&v682 + 1))
  {
    v561 = 0;
    do
    {
      v562 = re::BucketArray<re::FixedArray<unsigned short>,16ul>::operator[](&v679, v561);
      re::FixedArray<CoreIKTransform>::deinit(v562);
      ++v561;
    }

    while (v560 != v561);
  }

  while (*(&v679 + 1))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v679);
  }

  if (v679 && (v680 & 1) == 0)
  {
    (*(*v679 + 40))(v679);
  }

  v563 = v694;
  if (v694)
  {
    v564 = 0;
    do
    {
      re::BucketArray<re::USDImportContextPhysicsColliderData,8ul>::operator[](&v689, v564++);
    }

    while (v563 != v564);
  }

  while (v690)
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v689);
  }

  result = v689;
  if (v689)
  {
    if ((v691 & 1) == 0)
    {
      return (*(*v689 + 40))(v689);
    }
  }

  return result;
}

uint64_t re::addPhysicsFromImportContext(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v94 = *MEMORY[0x1E69E9840];
  if (!*(result + 664))
  {
    goto LABEL_63;
  }

  v6 = 0;
  v7 = -1;
  do
  {
    v8 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](v5 + 624, v6);
    result = re::StringID::operator==((v8 + 8), (a3 + 8));
    if (result)
    {
      v7 = v6;
    }

    ++v6;
  }

  while (v6 < *(v5 + 83));
  if (v7 == -1)
  {
    goto LABEL_63;
  }

  v9 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](v5 + 624, v7);
  v85[0] = 0;
  PhysicsColliderData = re::USDImportContext::getPhysicsColliderData(v5, v7);
  v12 = re::cloneCollisionShapeData(PhysicsColliderData, v11);
  CollidesWithEnvironment = re::USDImportContext::getCollidesWithEnvironment(v5, v7);
  if (v12)
  {
    v14 = CollidesWithEnvironment;
    v15 = re::globalAllocators(CollidesWithEnvironment);
    v16 = *(v12 + 8);
    v76 = v14;
    if (v16 == 7)
    {
      v18 = re::convertCompoundToCollisionShape(v12, v5, a2, v7);
      v12 = v18;
      v85[0] = v19;
      goto LABEL_33;
    }

    v17 = v15[2];
    if (v16 == 6)
    {
      v18 = re::convertFromSerializable(v12, v85, v17, v17, 1);
LABEL_33:
      v39 = re::globalAllocators(v18);
      v40 = (*(*v39[2] + 32))(v39[2], 16, 8);
      v41 = v85[0];
      *v40 = v12;
      v40[1] = v41;
      v42 = *(a2 + 104);
      v43 = *(v9 + 16);
      v44 = strlen(v43);
      v45 = re::CollisionShapeAsset::assetType(v44);
      v46 = re::ImportAssetTable::addAsset(v42, v43, v44, v40, v45);
      memset(v86, 0, 24);
      if (*(v46 + 8))
      {
        v47 = *(v46 + 16);
      }

      else
      {
        v47 = (v46 + 9);
      }

      v49 = (a3 + 32);
      if (!*(a3 + 32))
      {
        re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity((a3 + 32), 0);
        ++*(a3 + 56);
      }

      v50 = (*(**(re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7), 168, 0);
      *v50 = 0u;
      *(v50 + 16) = 0u;
      *(v50 + 48) = 0u;
      *(v50 + 64) = 0u;
      *(v50 + 80) = 0u;
      *(v50 + 96) = 0u;
      *(v50 + 112) = 0u;
      *(v50 + 128) = 0u;
      *(v50 + 144) = 0u;
      *(v50 + 160) = 0;
      *(v50 + 32) = 0u;
      ArcSharedObject::ArcSharedObject(v50, 0);
      *(v51 + 16) = 0;
      *(v51 + 24) = 0;
      *v51 = &unk_1F5CD1300;
      *(v50 + 32) = 0;
      *(v51 + 40) = 0;
      *(v51 + 48) = 0;
      *(v51 + 56) = 0;
      *(v51 + 60) = 0x100000000;
      *(v51 + 68) = -1;
      *(v51 + 152) = 0;
      *(v51 + 72) = 0u;
      *(v51 + 88) = 0u;
      *(v51 + 104) = 0u;
      *(v51 + 120) = 0;
      objc_initWeak((v50 + 160), 0);
      v89.n128_u64[0] = *((*(*v50 + 40))(v50) + 24) >> 1;
      v89.n128_u64[1] = v50;
      LOBYTE(v90) = 1;
      re::DynamicArray<re::BufferView>::add((a3 + 32), &v89);
      re::AssetHandle::operator=(v50 + 32, v86);
      if ((v76 & 1) == 0)
      {
        *(v50 + 64) = 0x100000001;
      }

      v52 = re::ecs2::EntityAssetData::addComponent<re::ecs2::RigidBodyComponent>(a3);
      *(v52 + 120) = 0;
      re::AssetHandle::operator=(v52 + 96, (v9 + 848));
      if ((*(*v85[0] + 24))(v85[0]) == 6)
      {
        isTaggedAsSceneGroundPlane = re::USDImportContext::isTaggedAsSceneGroundPlane(v5, v7);
        if (isTaggedAsSceneGroundPlane)
        {
          if (!*v49)
          {
            re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity((a3 + 32), 0);
            ++*(a3 + 56);
          }

          re::ecs2::ComponentImpl<re::ecs2::GroundPlaneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::create(&v81);
          v54 = v81;
          v55 = *((*(*v81 + 40))(v81) + 24) >> 1;
          v56 = v81;
          v81 = 0;
          v89.n128_u64[0] = v55;
          v89.n128_u64[1] = v56;
          LOBYTE(v90) = 1;
          re::DynamicArray<re::BufferView>::add((a3 + 32), &v89);
          if (v81)
          {
          }

          *(v54 + 25) = v76;
          if (!*v49)
          {
            re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity((a3 + 32), 0);
            ++*(a3 + 56);
          }

          re::ecs2::ComponentImpl<re::ecs2::PhysicsOriginComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::create(&v81);
          v58 = *((*(*v81 + 40))(v81) + 24) >> 1;
          v59 = v81;
          v81 = 0;
          v89.n128_u64[0] = v58;
          v89.n128_u64[1] = v59;
          LOBYTE(v90) = 1;
          re::DynamicArray<re::BufferView>::add((a3 + 32), &v89);
          if (v81)
          {
          }
        }
      }

      re::AssetHandle::~AssetHandle(v86);
      goto LABEL_51;
    }

    v84 = 0;
    v20 = re::convertFromSerializable(v12, &v84, v17, v17, 1);
    v21 = re::globalAllocators(v20);
    v22 = (*(*v21[2] + 32))(v21[2], 16, 8);
    v23 = v84;
    *v22 = v12;
    v22[1] = v23;
    v75 = v9;
    v24 = re::DynamicString::format("%s_primitive", &v81, *(v9 + 16));
    v25 = *(a2 + 104);
    if (v82)
    {
      v26 = *&v83[7];
    }

    else
    {
      v26 = v83;
    }

    v89.n128_u64[0] = 0;
    v89.n128_u64[1] = &str_67;
    v27 = v89.n128_i64[1];
    v28 = strlen(v89.n128_u64[1]);
    v29 = re::CollisionShapeAsset::assetType(v28);
    v30 = re::ImportAssetTable::addAsset(v25, v27, v28, v22, v29);
    v31 = v30;
    if (v89.n128_u8[0])
    {
      if (v89.n128_u8[0])
      {
      }
    }

    memset(v80, 0, sizeof(v80));
    if (*(v31 + 8))
    {
      v32 = *(v31 + 2);
    }

    else
    {
      v32 = (v31 + 9);
    }

    v9 = v75;
    v34 = re::globalAllocators(v33);
    v12 = (*(*v34[2] + 32))(v34[2], 72, 8);
    *(v12 + 8) = 7;
    *v12 = &unk_1F5CC94A0;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    *(v12 + 16) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    *(v12 + 48) = 0;
    if (*(v12 + 24))
    {
      re::AssetHandle::operator=(*(v12 + 32) + 48, v80);
      if (*(v12 + 24))
      {
        v35 = *(v12 + 32);
        v35[2] = 0;
        v35[3] = 0;
        v35[4] = 0;
        v35[5] = 0x3F80000000000000;
        PhysicsColliderPose = re::USDImportContext::getPhysicsColliderPose(v5, v7);
        if (PhysicsColliderPose)
        {
          if (!*(v12 + 24))
          {
            goto LABEL_70;
          }

          v37 = *(v12 + 32);
          v38 = PhysicsColliderPose[1];
          *(v37 + 16) = *PhysicsColliderPose;
          *(v37 + 32) = v38;
        }

        *(v12 + 40) = 1;
        v77 = 0;
        v78 = 0;
        v79 = 0;
        re::FixedArray<unsigned long>::init<>(&v77, v17, 1uLL);
        if (v78)
        {
          *v79 = v84;
          v85[0] = re::convertToCompoundPrimitiveCollisionShape(v12, &v77, v17, v17);
          if (v77 && v78)
          {
            (*(*v77 + 40))();
          }

          re::AssetHandle::~AssetHandle(v80);
          v18 = v81;
          if (v81 && (v82 & 1) != 0)
          {
            v18 = (*(*v81 + 40))();
          }

          goto LABEL_33;
        }

LABEL_69:
        v85[1] = 0;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v89 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v86 = 136315906;
        *&v86[4] = "operator[]";
        *&v86[12] = 1024;
        *&v86[14] = 468;
        *&v86[18] = 2048;
        *&v86[20] = 0;
        v87 = 2048;
        v88 = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_70:
        v77 = 0;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v89 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v86 = 136315906;
        *&v86[4] = "operator[]";
        *&v86[12] = 1024;
        *&v86[14] = 468;
        *&v86[18] = 2048;
        *&v86[20] = 0;
        v87 = 2048;
        v88 = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }
    }

    else
    {
      v77 = 0;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v89 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v86 = 136315906;
      *&v86[4] = "operator[]";
      *&v86[12] = 1024;
      *&v86[14] = 468;
      *&v86[18] = 2048;
      *&v86[20] = 0;
      v87 = 2048;
      v88 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v77 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v86 = 136315906;
    *&v86[4] = "operator[]";
    *&v86[12] = 1024;
    *&v86[14] = 468;
    *&v86[18] = 2048;
    *&v86[20] = 0;
    v87 = 2048;
    v88 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_69;
  }

LABEL_51:
  result = re::USDImportContext::getPhysicsRigidBodyProperties(v5, v7);
  if (result)
  {
    v61 = result;
    if (!*(a3 + 32))
    {
      goto LABEL_59;
    }

    v62 = *(a3 + 48);
    if (!v62)
    {
      goto LABEL_59;
    }

    v63 = (*(a3 + 64) + 8);
    v64 = 24 * v62;
    while (*(v63 - 1) != *(re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 3) >> 1)
    {
      v63 += 3;
      v64 -= 24;
      if (!v64)
      {
        goto LABEL_59;
      }
    }

    v65 = *v63;
    if (!*v63)
    {
LABEL_59:
      v65 = re::ecs2::EntityAssetData::addComponent<re::ecs2::RigidBodyComponent>(a3);
    }

    v66 = *v61;
    v67 = *(v61 + 16);
    v68 = *(v61 + 32);
    *(v65 + 80) = *(v61 + 48);
    *(v65 + 48) = v67;
    *(v65 + 64) = v68;
    *(v65 + 32) = v66;
    result = v85[0];
    if (v85[0])
    {
      result = re::MassFrame::makeFromShapeAndMass(v85[0], v60, *(v61 + 48), &v89);
      v69 = v92;
      v71 = v90;
      v70 = v91;
      *(v65 + 32) = v89;
      *(v65 + 48) = v71;
      *(v65 + 64) = v70;
      *(v65 + 80) = v69;
    }

    *(v65 + 120) = 2;
  }

LABEL_63:
  v72 = *(a3 + 88);
  if (v72)
  {
    v73 = *(a3 + 104);
    v74 = 112 * v72;
    do
    {
      result = re::addPhysicsFromImportContext(v5, a2, v73);
      v73 += 112;
      v74 -= 112;
    }

    while (v74);
  }

  return result;
}

uint64_t re::BucketArray<unsigned long,32ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 5)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 5)) + 8 * (a2 & 0x1F);
}

uint64_t re::BucketArray<re::TimelineGroupBuilder *,8ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 8 * v3)
  {
    re::BucketArray<re::TimelineGroupBuilder *,8ul>::setBucketsCapacity(a1, (v2 + 8) >> 3);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = *(v4 + 8 * (v2 >> 3));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 8 * (v2 & 7);
}

void *re::BucketArray<re::TimelineGroupBuilder *,8ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 8 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = v3 + 3;
        do
        {
          result = (*(**v3 + 32))(*v3, 64, 0);
          v6 = result;
          if (*v3)
          {
            v7 = v3[1];
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = v3[1];
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_22:
          v15 = v3 + 3;
          if ((v8 & 1) == 0)
          {
            v15 = v3[4];
          }

          v16 = v3[1];
          v15[v16++] = v6;
          v3[1] = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    v3[5] = 0;
    result = re::BucketArray<re::TimelineGroupBuilder *,8ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

__n128 re::BucketArray<re::createEntityFromImportContext(re::USDImportContext &,re::SceneImportOperation &,unsigned long,re::BucketArray<re::TimelineGroupBuilder *,8ul> &,re::AnimationSceneEntityData &,re::FixedArray<BOOL> &,re::HashTable<re::StringID,re::Pair<re::StringID,re::StringID,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false> *,BOOL)::TransformedMeshItem,8ul>::add(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 8);
  if (v4 + 1 > 8 * v5)
  {
    re::BucketArray<re::createEntityFromImportContext(re::USDImportContext &,re::SceneImportOperation &,unsigned long,re::BucketArray<re::TimelineGroupBuilder *,8ul> &,re::AnimationSceneEntityData &,re::FixedArray<BOOL> &,re::HashTable<re::StringID,re::Pair<re::StringID,re::StringID,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false> *,BOOL)::TransformedMeshItem,8ul>::setBucketsCapacity(a1, (v4 + 8) >> 3);
    v5 = *(a1 + 8);
  }

  if (v5 <= v4 >> 3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v6 = a1 + 24;
  }

  else
  {
    v6 = *(a1 + 32);
  }

  v7 = *(v6 + 8 * (v4 >> 3));
  ++*(a1 + 40);
  ++*(a1 + 48);
  v8 = (v7 + 80 * (v4 & 7));
  v9 = *(a2 + 64);
  v11 = *(a2 + 16);
  v10 = *(a2 + 32);
  v8[3] = *(a2 + 48);
  v8[4] = v9;
  v8[1] = v11;
  v8[2] = v10;
  result = *a2;
  *v8 = *a2;
  return result;
}

void re::anonymous namespace::wireupPrimitiveShapeHelper(_anonymous_namespace_ *a1, re::Allocator **a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v184 = *MEMORY[0x1E69E9840];
  v7 = *a3;
  if (v7 <= 1)
  {
    if (!*a3)
    {
      v159 = 1;
      v162 = 0;
      v161 = 0;
      v163 = 0;
      v167 = 0;
      v164 = 0u;
      v165 = 0u;
      v166 = 0;
      v158 = "PrimitiveShape";
      v156 = 0;
      v157 = 0xD2B975F2D13A2E34;
      re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(&v160, 0);
      ++v163;
      v46 = (*(**(re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 144, 0);
      *v46 = 0u;
      v46[1] = 0u;
      v46[2] = 0u;
      v46[3] = 0u;
      v46[4] = 0u;
      v46[5] = 0u;
      v46[6] = 0u;
      v46[7] = 0u;
      v46[8] = 0u;
      ArcSharedObject::ArcSharedObject(v46, 0);
      *(v47 + 16) = 0;
      *(v47 + 24) = 0;
      *(v47 + 28) = 0x1000100010001;
      *(v47 + 36) = xmmword_1E305B4C0;
      *(v47 + 52) = 257;
      *(v47 + 54) = 0;
      *(v47 + 56) = 0;
      *(v47 + 58) = 1;
      *(v47 + 64) = 0u;
      *(v47 + 80) = 0u;
      *(v47 + 96) = 0u;
      *(v47 + 112) = 0x1000100010001;
      *(v47 + 120) = xmmword_1E305B4C0;
      *(v47 + 136) = 257;
      *(v47 + 138) = 0;
      *(v47 + 140) = 1;
      *v47 = &unk_1F5CD08C8;
      v116.n128_u64[0] = *(re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 3) >> 1;
      v116.n128_u64[1] = v47;
      v117 = 1;
      re::DynamicArray<re::BufferView>::add(&v160, &v116);
      v48 = *(a3 + 4);
      *(v46 + 39) = *(a3 + 15);
      *(v46 + 28) = v48;
      v49 = re::ecs2::EntityAssetData::addComponent<re::ecs2::TransformComponent>(&v156);
      if ((vmaxvq_u32(vmvnq_s8(vceqq_f32(*(a3 + 2), xmmword_1E30474D0))) & 0x80000000) != 0)
      {
        *(v49 + 3) = *(a3 + 2);
      }

      v145 = 0;
      v144 = 0u;
      v147 = 0u;
      v148 = 0u;
      v146 = 0;
      v149 = 0;
      v150 = 0u;
      v151 = 0u;
      v152 = 0;
      v153 = 0u;
      memset(v154, 0, sizeof(v154));
      v155 = 0x7FFFFFFFLL;
      re::GeomModelWithLods::GeomModelWithLods(&v131);
      re::GeomModel::GeomModel(&v118);
      re::GeomMesh::GeomMesh(&v116, 0);
      re::internal::buildBoxHelper(&v116, &v168, a3 + 2);
      re::DynamicArray<re::GeomMesh>::add(v120, &v116);
      re::DynamicArray<re::GeomModel>::add(v133, &v118);
      re::DynamicArray<re::GeomModelWithLods>::add(&v144, &v131);
      v168 = xmmword_1E3047670;
      v169 = xmmword_1E3047680;
      *v170 = xmmword_1E30476A0;
      *&v170[16] = xmmword_1E30474D0;
      *&v170[32] = 0;
      re::DynamicArray<re::GeomInstance>::add((&v147 + 8), &v168);
      v108 = 16842752;
      v109 = 1;
      v110 = 0;
      v111 = 0;
      v112 = 65793;
      v114 = 0u;
      v115 = 0u;
      v113 = 0u;
      DWORD1(v115) = 0x7FFFFFFF;
      re::makeMeshAssetDataFromGeomScene(&v144, &v108, &v168);
      v51 = re::globalAllocators(v50);
      v52 = (*(*v51[2] + 32))(v51[2], 1272, 8);
      v53 = v52;
      if (v168 == 1)
      {
        *&v98[0] = *(&v168 + 1);
        *(&v168 + 1) = 0;
        *(v98 + 8) = v169;
        v169 = 0u;
        DWORD2(v98[1]) = 1;
        v54 = *&v170[8];
        memset(&v170[8], 0, 32);
        v99 = v54;
        v100 = *&v170[24];
        ++*v170;
        ++v171;
        LODWORD(v101[0]) = 1;
        *(v101 + 8) = v172;
        *(&v101[1] + 8) = v173;
        v172 = 0u;
        v173 = 0u;
        *(&v104 + 1) = v178;
        DWORD2(v101[2]) = 1;
        v55 = v175;
        v175 = 0u;
        v102 = v55;
        v103 = v176;
        v176 = 0u;
        ++v174;
        ++v177;
        LODWORD(v104) = 1;
        LODWORD(v105) = v179;
        *(&v105 + 1) = v180;
        v178 = 0;
        v180 = 0;
        v106 = v181;
        v181 = 0u;
        *(&v107 + 1) = v183;
        v183 = 0;
        ++v182;
        LODWORD(v107) = 1;
      }

      else
      {
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        memset(v101, 0, sizeof(v101));
        v99 = 0u;
        memset(v98, 0, sizeof(v98));
      }

      re::MeshAsset::MeshAsset(v52, v98);
      re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(&v105 + 8);
      if (*(&v102 + 1))
      {
        if (*(&v104 + 1))
        {
          (*(**(&v102 + 1) + 40))();
        }

        *(&v104 + 1) = 0;
        v103 = 0uLL;
        *(&v102 + 1) = 0;
        LODWORD(v104) = v104 + 1;
      }

      re::DynamicArray<re::MeshAssetSkeleton>::deinit(&v101[1]);
      re::DynamicArray<re::MeshAssetInstance>::deinit(&v99 + 8);
      re::DynamicArray<re::MeshAssetModel>::deinit(v98);
      v56 = *(a4 + 8);
      v57 = a2[13];
      v58 = strlen(v56);
      v59 = re::MeshAsset::assetType(v58);
      v60 = re::ImportAssetTable::addAsset(v57, v56, v58, v53, v59);
      v96 = 0;
      v97 = 0;
      v95 = 0;
      if (*(v60 + 8))
      {
        v61 = *(v60 + 16);
      }

      else
      {
        v61 = (v60 + 9);
      }

      re::AssetHandle::setSerializationString(&v95, v61, *a2);
      v62 = re::ecs2::EntityAssetData::addComponent<re::ecs2::MeshComponent>(&v156);
      re::AssetHandle::operator=((v62 + 4), &v95);
      if (*(a5 + 16))
      {
        v92 = 0;
        v93 = 0;
        v94 = 0;
        v63 = re::AssetHandle::serializationString(*(a5 + 32), v98);
        if (BYTE8(v98[0]))
        {
          v64 = *&v98[1];
        }

        else
        {
          v64 = (v98 + 9);
        }

        if (*&v98[0] && (BYTE8(v98[0]) & 1) != 0)
        {
          (*(**&v98[0] + 40))();
        }

        re::DynamicArray<re::AssetHandle>::add((v62 + 7), &v92);
        re::AssetHandle::~AssetHandle(&v92);
      }

      re::DynamicArray<re::ecs2::EntityAssetData>::add(a1 + 72, &v156);
      re::AssetHandle::~AssetHandle(&v95);
      re::Result<re::MeshAssetData,re::DetailedError>::~Result(&v168);
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v113);
      re::GeomMesh::~GeomMesh(&v116);
      re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(v130);
      if (v128 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::deinit(v129);
      }

      if (v126 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::deinit(v127);
      }

      if (v121)
      {
        if (v125)
        {
          (*(*v121 + 40))();
        }

        v125 = 0;
        v122 = 0;
        v123 = 0;
        v121 = 0;
        ++v124;
      }

      re::DynamicArray<re::GeomMesh>::deinit(v120);
      if (v118 && (v119 & 1) != 0)
      {
        (*(*v118 + 40))();
      }

      if (v139)
      {
        if (v143)
        {
          (*(*v139 + 40))();
        }

        v143 = 0;
        v140 = 0;
        v141 = 0;
        v139 = 0;
        ++v142;
      }

      if (v134)
      {
        if (v138)
        {
          (*(*v134 + 40))();
        }

        v138 = 0;
        v135 = 0;
        v136 = 0;
        v134 = 0;
        ++v137;
      }

      goto LABEL_144;
    }

    if (v7 != 1)
    {
      return;
    }

    v87 = a5;
    v90 = a1;
    v18 = a4;
    v159 = 1;
    v162 = 0;
    v161 = 0;
    v163 = 0;
    v167 = 0;
    v164 = 0u;
    v165 = 0u;
    v166 = 0;
    v158 = "PrimitiveShape";
    v156 = 0;
    v157 = 0xD2B975F2D13A2E34;
    re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(&v160, 0);
    ++v163;
    v19 = (*(**(re::ecs2::ComponentImpl<re::ecs2::PrimitiveConeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::PrimitiveConeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 120, 0);
    *v19 = 0u;
    *(v19 + 16) = 0u;
    *(v19 + 32) = 0u;
    *(v19 + 48) = 0u;
    *(v19 + 64) = 0u;
    *(v19 + 80) = 0u;
    *(v19 + 96) = 0u;
    *(v19 + 112) = 0;
    ArcSharedObject::ArcSharedObject(v19, 0);
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    *(v20 + 28) = 65544;
    *(v20 + 32) = 0x3F0000003F800000;
    *(v20 + 40) = 65793;
    *(v20 + 44) = 0;
    *(v20 + 46) = 1;
    *(v20 + 48) = 0u;
    *(v20 + 64) = 0u;
    *(v20 + 80) = 0u;
    *(v20 + 96) = 65544;
    *(v20 + 100) = 0x3F0000003F800000;
    *(v20 + 108) = 65793;
    *(v20 + 112) = 1;
    *v20 = &unk_1F5CD0AB8;
    v116.n128_u64[0] = *(re::ecs2::ComponentImpl<re::ecs2::PrimitiveConeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 3) >> 1;
    v116.n128_u64[1] = v20;
    v117 = 1;
    re::DynamicArray<re::BufferView>::add(&v160, &v116);
    *(v19 + 28) = *(a3 + 4);
    v21 = re::ecs2::EntityAssetData::addComponent<re::ecs2::TransformComponent>(&v156);
    if ((vmaxvq_u32(vmvnq_s8(vceqq_f32(*(a3 + 2), xmmword_1E30474D0))) & 0x80000000) != 0)
    {
      *(v21 + 3) = *(a3 + 2);
    }

    v145 = 0;
    v144 = 0u;
    v147 = 0u;
    v148 = 0u;
    v146 = 0;
    v149 = 0;
    v150 = 0u;
    v151 = 0u;
    v152 = 0;
    v153 = 0u;
    memset(v154, 0, sizeof(v154));
    v155 = 0x7FFFFFFFLL;
    re::GeomModelWithLods::GeomModelWithLods(&v131);
    re::GeomModel::GeomModel(&v118);
    re::GeomMesh::GeomMesh(&v116, 0);
    re::buildCone(&v116, a3 + 2);
    re::DynamicArray<re::GeomMesh>::add(v120, &v116);
    re::DynamicArray<re::GeomModel>::add(v133, &v118);
    re::DynamicArray<re::GeomModelWithLods>::add(&v144, &v131);
    v168 = xmmword_1E3047670;
    v169 = xmmword_1E3047680;
    *v170 = xmmword_1E30476A0;
    *&v170[16] = xmmword_1E30474D0;
    *&v170[32] = 0;
    re::DynamicArray<re::GeomInstance>::add((&v147 + 8), &v168);
    v108 = 16842752;
    v109 = 1;
    v110 = 0;
    v111 = 0;
    v112 = 65793;
    v114 = 0u;
    v115 = 0u;
    v113 = 0u;
    DWORD1(v115) = 0x7FFFFFFF;
    re::makeMeshAssetDataFromGeomScene(&v144, &v108, &v168);
    v23 = re::globalAllocators(v22);
    v24 = (*(*v23[2] + 32))(v23[2], 1272, 8);
    if (v168 == 1)
    {
      *&v98[0] = *(&v168 + 1);
      *(&v168 + 1) = 0;
      *(v98 + 8) = v169;
      v169 = 0u;
      DWORD2(v98[1]) = 1;
      v25 = *&v170[8];
      memset(&v170[8], 0, 32);
      v99 = v25;
      v100 = *&v170[24];
      ++*v170;
      ++v171;
      LODWORD(v101[0]) = 1;
      *(v101 + 8) = v172;
      *(&v101[1] + 8) = v173;
      v172 = 0u;
      v173 = 0u;
      *(&v104 + 1) = v178;
      DWORD2(v101[2]) = 1;
      v26 = v175;
      v175 = 0u;
      v102 = v26;
      v103 = v176;
      v176 = 0u;
      ++v174;
      ++v177;
      LODWORD(v104) = 1;
      LODWORD(v105) = v179;
      *(&v105 + 1) = v180;
      v178 = 0;
      v180 = 0;
      v106 = v181;
      v181 = 0u;
      *(&v107 + 1) = v183;
      v183 = 0;
      ++v182;
      LODWORD(v107) = 1;
    }

    else
    {
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      memset(v101, 0, sizeof(v101));
      v99 = 0u;
      memset(v98, 0, sizeof(v98));
    }

LABEL_110:
    re::MeshAsset::MeshAsset(v24, v98);
    re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(&v105 + 8);
    if (*(&v102 + 1))
    {
      if (*(&v104 + 1))
      {
        (*(**(&v102 + 1) + 40))();
      }

      *(&v104 + 1) = 0;
      v103 = 0uLL;
      *(&v102 + 1) = 0;
      LODWORD(v104) = v104 + 1;
    }

    re::DynamicArray<re::MeshAssetSkeleton>::deinit(&v101[1]);
    re::DynamicArray<re::MeshAssetInstance>::deinit(&v99 + 8);
    re::DynamicArray<re::MeshAssetModel>::deinit(v98);
    v74 = *(v18 + 8);
    v75 = a2[13];
    v76 = strlen(v74);
    v77 = re::MeshAsset::assetType(v76);
    v78 = re::ImportAssetTable::addAsset(v75, v74, v76, v24, v77);
    v96 = 0;
    v97 = 0;
    v95 = 0;
    if (*(v78 + 8))
    {
      v79 = *(v78 + 16);
    }

    else
    {
      v79 = (v78 + 9);
    }

    re::AssetHandle::setSerializationString(&v95, v79, *a2);
    v80 = re::ecs2::EntityAssetData::addComponent<re::ecs2::MeshComponent>(&v156);
    re::AssetHandle::operator=((v80 + 4), &v95);
    if (*(v87 + 16))
    {
      v92 = 0;
      v93 = 0;
      v94 = 0;
      v81 = re::AssetHandle::serializationString(*(v87 + 32), v98);
      if (BYTE8(v98[0]))
      {
        v82 = *&v98[1];
      }

      else
      {
        v82 = (v98 + 9);
      }

      if (*&v98[0] && (BYTE8(v98[0]) & 1) != 0)
      {
        (*(**&v98[0] + 40))();
      }

      re::DynamicArray<re::AssetHandle>::add((v80 + 7), &v92);
      re::AssetHandle::~AssetHandle(&v92);
    }

    re::DynamicArray<re::ecs2::EntityAssetData>::add(v90 + 72, &v156);
    re::AssetHandle::~AssetHandle(&v95);
    re::Result<re::MeshAssetData,re::DetailedError>::~Result(&v168);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v113);
    re::GeomMesh::~GeomMesh(&v116);
    re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(v130);
    if (v128 == 1)
    {
      re::DynamicArray<re::GeomIndexMap>::deinit(v129);
    }

    if (v126 == 1)
    {
      re::DynamicArray<re::GeomIndexMap>::deinit(v127);
    }

    if (v121)
    {
      if (v125)
      {
        (*(*v121 + 40))();
      }

      v125 = 0;
      v122 = 0;
      v123 = 0;
      v121 = 0;
      ++v124;
    }

    re::DynamicArray<re::GeomMesh>::deinit(v120);
    if (v118 && (v119 & 1) != 0)
    {
      (*(*v118 + 40))();
    }

    if (v139)
    {
      if (v143)
      {
        (*(*v139 + 40))();
      }

      v143 = 0;
      v140 = 0;
      v141 = 0;
      v139 = 0;
      ++v142;
    }

    if (v134)
    {
      if (v138)
      {
        (*(*v134 + 40))();
      }

      v138 = 0;
      v135 = 0;
      v136 = 0;
      v134 = 0;
      ++v137;
    }

LABEL_144:
    re::DynamicArray<re::GeomModel>::deinit(v133);
    if (v131 && (v132 & 1) != 0)
    {
      (*(*v131 + 40))();
    }

    re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v153 + 1);
    re::DynamicArray<re::GeomSkeleton>::deinit(&v150 + 8);
    if (!*(&v147 + 1))
    {
      goto LABEL_152;
    }

    if (v150)
    {
      (*(**(&v147 + 1) + 40))();
    }

    *&v150 = 0;
    v148 = 0uLL;
    *(&v147 + 1) = 0;
    goto LABEL_151;
  }

  if (v7 != 2)
  {
    if (v7 != 3)
    {
      if (v7 != 4)
      {
        return;
      }

      v86 = a5;
      v89 = a1;
      v8 = a4;
      v159 = 1;
      v162 = 0;
      v161 = 0;
      v163 = 0;
      v167 = 0;
      v164 = 0u;
      v165 = 0u;
      v166 = 0;
      v158 = "PrimitiveShape";
      v156 = 0;
      v157 = 0xD2B975F2D13A2E34;
      re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(&v160, 0);
      ++v163;
      v9 = (*(**(re::ecs2::ComponentImpl<re::ecs2::PrimitiveCapsuleComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::PrimitiveCapsuleComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 128, 0);
      *v9 = 0u;
      *(v9 + 16) = 0u;
      *(v9 + 32) = 0u;
      *(v9 + 48) = 0u;
      *(v9 + 64) = 0u;
      *(v9 + 80) = 0u;
      *(v9 + 96) = 0u;
      *(v9 + 112) = 0u;
      ArcSharedObject::ArcSharedObject(v9, 0);
      *(v10 + 16) = 0;
      *(v10 + 24) = 0;
      *(v10 + 28) = 65544;
      *(v10 + 32) = 4;
      *(v10 + 36) = 0x400000003F000000;
      *(v10 + 44) = 257;
      *(v10 + 46) = 0;
      *(v10 + 48) = 0;
      *(v10 + 50) = 1;
      *(v10 + 56) = 0u;
      *(v10 + 72) = 0u;
      *(v10 + 88) = 0u;
      *(v10 + 104) = 65544;
      *(v10 + 108) = 4;
      *(v10 + 112) = 0x400000003F000000;
      *(v10 + 120) = 257;
      *(v10 + 122) = 0;
      *(v10 + 124) = 1;
      *v10 = &unk_1F5CD0CA8;
      v116.n128_u64[0] = *(re::ecs2::ComponentImpl<re::ecs2::PrimitiveCapsuleComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 3) >> 1;
      v116.n128_u64[1] = v10;
      v117 = 1;
      re::DynamicArray<re::BufferView>::add(&v160, &v116);
      v11 = *(a3 + 4);
      *(v9 + 43) = *(a3 + 19);
      *(v9 + 28) = v11;
      v12 = re::ecs2::EntityAssetData::addComponent<re::ecs2::TransformComponent>(&v156);
      if ((vmaxvq_u32(vmvnq_s8(vceqq_f32(*(a3 + 2), xmmword_1E30474D0))) & 0x80000000) != 0)
      {
        *(v12 + 3) = *(a3 + 2);
      }

      v145 = 0;
      v144 = 0u;
      v147 = 0u;
      v148 = 0u;
      v146 = 0;
      v149 = 0;
      v150 = 0u;
      v151 = 0u;
      v152 = 0;
      v153 = 0u;
      memset(v154, 0, sizeof(v154));
      v155 = 0x7FFFFFFFLL;
      re::GeomModelWithLods::GeomModelWithLods(&v131);
      re::GeomModel::GeomModel(&v118);
      re::GeomMesh::GeomMesh(&v116, 0);
      re::buildCapsule(&v116, a3 + 2);
      re::DynamicArray<re::GeomMesh>::add(v120, &v116);
      re::DynamicArray<re::GeomModel>::add(v133, &v118);
      re::DynamicArray<re::GeomModelWithLods>::add(&v144, &v131);
      v168 = xmmword_1E3047670;
      v169 = xmmword_1E3047680;
      *v170 = xmmword_1E30476A0;
      *&v170[16] = xmmword_1E30474D0;
      *&v170[32] = 0;
      re::DynamicArray<re::GeomInstance>::add((&v147 + 8), &v168);
      v108 = 16842752;
      v109 = 1;
      v110 = 0;
      v111 = 0;
      v112 = 65793;
      v114 = 0u;
      v115 = 0u;
      v113 = 0u;
      DWORD1(v115) = 0x7FFFFFFF;
      re::makeMeshAssetDataFromGeomScene(&v144, &v108, &v168);
      v14 = re::globalAllocators(v13);
      v15 = (*(*v14[2] + 32))(v14[2], 1272, 8);
      if (v168 == 1)
      {
        *&v98[0] = *(&v168 + 1);
        *(&v168 + 1) = 0;
        *(v98 + 8) = v169;
        v169 = 0u;
        DWORD2(v98[1]) = 1;
        v16 = *&v170[8];
        memset(&v170[8], 0, 32);
        v99 = v16;
        v100 = *&v170[24];
        ++*v170;
        ++v171;
        LODWORD(v101[0]) = 1;
        *(v101 + 8) = v172;
        *(&v101[1] + 8) = v173;
        v172 = 0u;
        v173 = 0u;
        *(&v104 + 1) = v178;
        DWORD2(v101[2]) = 1;
        v17 = v175;
        v175 = 0u;
        v102 = v17;
        v103 = v176;
        v176 = 0u;
        ++v174;
        ++v177;
        LODWORD(v104) = 1;
        LODWORD(v105) = v179;
        *(&v105 + 1) = v180;
        v178 = 0;
        v180 = 0;
        v106 = v181;
        v181 = 0u;
        *(&v107 + 1) = v183;
        v183 = 0;
        ++v182;
        LODWORD(v107) = 1;
      }

      else
      {
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        memset(v101, 0, sizeof(v101));
        v99 = 0u;
        memset(v98, 0, sizeof(v98));
      }

      goto LABEL_68;
    }

    v87 = a5;
    v90 = a1;
    v159 = 1;
    v162 = 0;
    v161 = 0;
    v163 = 0;
    v167 = 0;
    v164 = 0u;
    v165 = 0u;
    v166 = 0;
    v158 = "PrimitiveShape";
    v156 = 0;
    v157 = 0xD2B975F2D13A2E34;
    re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(&v160, 0);
    ++v163;
    v35 = (*(**(re::ecs2::ComponentImpl<re::ecs2::PrimitiveSphereComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::PrimitiveSphereComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 112, 0);
    *v35 = 0u;
    *(v35 + 16) = 0u;
    *(v35 + 32) = 0u;
    *(v35 + 48) = 0u;
    *(v35 + 64) = 0u;
    *(v35 + 80) = 0u;
    *(v35 + 96) = 0u;
    ArcSharedObject::ArcSharedObject(v35, 0);
    *(v36 + 16) = 0;
    *(v36 + 24) = 0;
    *(v36 + 28) = 8;
    *(v36 + 32) = 1056964608;
    *(v36 + 36) = 257;
    *(v36 + 38) = 0;
    *(v36 + 40) = 0;
    *(v36 + 42) = 1;
    *(v36 + 48) = 0u;
    *(v36 + 64) = 0u;
    *(v36 + 80) = 0u;
    *(v36 + 96) = 8;
    *(v36 + 100) = 1056964608;
    *(v36 + 104) = 257;
    *(v36 + 106) = 0;
    *(v36 + 108) = 1;
    *v36 = &unk_1F5CD0BB0;
    v116.n128_u64[0] = *(re::ecs2::ComponentImpl<re::ecs2::PrimitiveSphereComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 3) >> 1;
    v116.n128_u64[1] = v36;
    v117 = 1;
    re::DynamicArray<re::BufferView>::add(&v160, &v116);
    v38 = (a3 + 4);
    v37 = *(a3 + 4);
    *(v35 + 35) = *(a3 + 11);
    *(v35 + 28) = v37;
    v39 = re::ecs2::EntityAssetData::addComponent<re::ecs2::TransformComponent>(&v156);
    v41 = *(a3 + 2);
    v40 = a3 + 32;
    if ((vmaxvq_u32(vmvnq_s8(vceqq_f32(v41, xmmword_1E30474D0))) & 0x80000000) != 0)
    {
      *(v39 + 3) = *v40;
    }

    v145 = 0;
    v144 = 0u;
    v147 = 0u;
    v148 = 0u;
    v146 = 0;
    v149 = 0;
    v150 = 0u;
    v151 = 0u;
    v152 = 0;
    v153 = 0u;
    memset(v154, 0, sizeof(v154));
    v155 = 0x7FFFFFFFLL;
    re::GeomModelWithLods::GeomModelWithLods(&v131);
    re::GeomModel::GeomModel(&v118);
    re::GeomMesh::GeomMesh(&v116, 0);
    re::buildSphere(&v116, v38);
    re::DynamicArray<re::GeomMesh>::add(v120, &v116);
    re::DynamicArray<re::GeomModel>::add(v133, &v118);
    re::DynamicArray<re::GeomModelWithLods>::add(&v144, &v131);
    v168 = xmmword_1E3047670;
    v169 = xmmword_1E3047680;
    *v170 = xmmword_1E30476A0;
    *&v170[16] = xmmword_1E30474D0;
    *&v170[32] = 0;
    re::DynamicArray<re::GeomInstance>::add((&v147 + 8), &v168);
    v108 = 16842752;
    v109 = 1;
    v110 = 0;
    v111 = 0;
    v112 = 65793;
    v114 = 0u;
    v115 = 0u;
    v113 = 0u;
    DWORD1(v115) = 0x7FFFFFFF;
    re::makeMeshAssetDataFromGeomScene(&v144, &v108, &v168);
    v43 = re::globalAllocators(v42);
    v24 = (*(*v43[2] + 32))(v43[2], 1272, 8);
    if (v168 == 1)
    {
      *&v98[0] = *(&v168 + 1);
      *(&v168 + 1) = 0;
      *(v98 + 8) = v169;
      v169 = 0u;
      DWORD2(v98[1]) = 1;
      v44 = *&v170[8];
      memset(&v170[8], 0, 32);
      v99 = v44;
      v100 = *&v170[24];
      ++*v170;
      ++v171;
      LODWORD(v101[0]) = 1;
      *(v101 + 8) = v172;
      *(&v101[1] + 8) = v173;
      v172 = 0u;
      v173 = 0u;
      *(&v104 + 1) = v178;
      DWORD2(v101[2]) = 1;
      v45 = v175;
      v175 = 0u;
      v102 = v45;
      v103 = v176;
      v176 = 0u;
      ++v174;
      ++v177;
      LODWORD(v104) = 1;
      LODWORD(v105) = v179;
      *(&v105 + 1) = v180;
      v178 = 0;
      v180 = 0;
      v106 = v181;
      v181 = 0u;
      *(&v107 + 1) = v183;
      v183 = 0;
      ++v182;
      LODWORD(v107) = 1;
    }

    else
    {
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      memset(v101, 0, sizeof(v101));
      v99 = 0u;
      memset(v98, 0, sizeof(v98));
    }

    v18 = a4;
    goto LABEL_110;
  }

  v86 = a5;
  v89 = a1;
  v159 = 1;
  v162 = 0;
  v161 = 0;
  v163 = 0;
  v167 = 0;
  v164 = 0u;
  v165 = 0u;
  v166 = 0;
  v158 = "PrimitiveShape";
  v156 = 0;
  v157 = 0xD2B975F2D13A2E34;
  re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(&v160, 0);
  ++v163;
  v27 = (*(**(re::ecs2::ComponentImpl<re::ecs2::PrimitiveCylinderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::PrimitiveCylinderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 136, 0);
  *v27 = 0u;
  *(v27 + 16) = 0u;
  *(v27 + 32) = 0u;
  *(v27 + 48) = 0u;
  *(v27 + 64) = 0u;
  *(v27 + 80) = 0u;
  *(v27 + 96) = 0u;
  *(v27 + 112) = 0u;
  *(v27 + 128) = 0;
  ArcSharedObject::ArcSharedObject(v27, 0);
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 28) = 65544;
  *(v28 + 32) = 0x3F0000003F800000;
  *(v28 + 40) = 0x10101013F000000;
  *(v28 + 48) = 0;
  *(v28 + 52) = 0;
  *(v28 + 54) = 1;
  *(v28 + 56) = 0u;
  *(v28 + 72) = 0u;
  *(v28 + 88) = 0u;
  *(v28 + 104) = 65544;
  *(v28 + 108) = 0x3F0000003F800000;
  *(v28 + 116) = 0x10101013F000000;
  *(v28 + 124) = 0;
  *(v28 + 128) = 1;
  *v28 = &unk_1F5CD09C0;
  v116.n128_u64[0] = *(re::ecs2::ComponentImpl<re::ecs2::PrimitiveCylinderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 3) >> 1;
  v116.n128_u64[1] = v28;
  v117 = 1;
  re::DynamicArray<re::BufferView>::add(&v160, &v116);
  v29 = *(a3 + 4);
  *(v27 + 41) = *(a3 + 17);
  *(v27 + 28) = v29;
  v30 = re::ecs2::EntityAssetData::addComponent<re::ecs2::TransformComponent>(&v156);
  if ((vmaxvq_u32(vmvnq_s8(vceqq_f32(*(a3 + 2), xmmword_1E30474D0))) & 0x80000000) != 0)
  {
    *(v30 + 3) = *(a3 + 2);
  }

  v145 = 0;
  v144 = 0u;
  v147 = 0u;
  v148 = 0u;
  v146 = 0;
  v149 = 0;
  v150 = 0u;
  v151 = 0u;
  v152 = 0;
  v153 = 0u;
  memset(v154, 0, sizeof(v154));
  v155 = 0x7FFFFFFFLL;
  re::GeomModelWithLods::GeomModelWithLods(&v131);
  re::GeomModel::GeomModel(&v118);
  re::GeomMesh::GeomMesh(&v116, 0);
  re::buildCylinder(&v116, a3 + 2);
  re::DynamicArray<re::GeomMesh>::add(v120, &v116);
  re::DynamicArray<re::GeomModel>::add(v133, &v118);
  re::DynamicArray<re::GeomModelWithLods>::add(&v144, &v131);
  v168 = xmmword_1E3047670;
  v169 = xmmword_1E3047680;
  *v170 = xmmword_1E30476A0;
  *&v170[16] = xmmword_1E30474D0;
  *&v170[32] = 0;
  re::DynamicArray<re::GeomInstance>::add((&v147 + 8), &v168);
  v108 = 16842752;
  v109 = 1;
  v110 = 0;
  v111 = 0;
  v112 = 65793;
  v114 = 0u;
  v115 = 0u;
  v113 = 0u;
  DWORD1(v115) = 0x7FFFFFFF;
  re::makeMeshAssetDataFromGeomScene(&v144, &v108, &v168);
  v32 = re::globalAllocators(v31);
  v15 = (*(*v32[2] + 32))(v32[2], 1272, 8);
  if (v168 == 1)
  {
    *&v98[0] = *(&v168 + 1);
    *(&v168 + 1) = 0;
    *(v98 + 8) = v169;
    v169 = 0u;
    DWORD2(v98[1]) = 1;
    v33 = *&v170[8];
    memset(&v170[8], 0, 32);
    v99 = v33;
    v100 = *&v170[24];
    ++*v170;
    ++v171;
    LODWORD(v101[0]) = 1;
    *(v101 + 8) = v172;
    *(&v101[1] + 8) = v173;
    v172 = 0u;
    v173 = 0u;
    *(&v104 + 1) = v178;
    DWORD2(v101[2]) = 1;
    v34 = v175;
    v175 = 0u;
    v102 = v34;
    v103 = v176;
    v176 = 0u;
    ++v174;
    ++v177;
    LODWORD(v104) = 1;
    LODWORD(v105) = v179;
    *(&v105 + 1) = v180;
    v178 = 0;
    v180 = 0;
    v106 = v181;
    v181 = 0u;
    *(&v107 + 1) = v183;
    v183 = 0;
    ++v182;
    LODWORD(v107) = 1;
  }

  else
  {
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    memset(v101, 0, sizeof(v101));
    v99 = 0u;
    memset(v98, 0, sizeof(v98));
  }

  v8 = a4;
LABEL_68:
  re::MeshAsset::MeshAsset(v15, v98);
  re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(&v105 + 8);
  if (*(&v102 + 1))
  {
    if (*(&v104 + 1))
    {
      (*(**(&v102 + 1) + 40))();
    }

    *(&v104 + 1) = 0;
    v103 = 0uLL;
    *(&v102 + 1) = 0;
    LODWORD(v104) = v104 + 1;
  }

  re::DynamicArray<re::MeshAssetSkeleton>::deinit(&v101[1]);
  re::DynamicArray<re::MeshAssetInstance>::deinit(&v99 + 8);
  re::DynamicArray<re::MeshAssetModel>::deinit(v98);
  v65 = *(v8 + 8);
  v66 = a2[13];
  v67 = strlen(v65);
  v68 = re::MeshAsset::assetType(v67);
  v69 = re::ImportAssetTable::addAsset(v66, v65, v67, v15, v68);
  v96 = 0;
  v97 = 0;
  v95 = 0;
  if (*(v69 + 8))
  {
    v70 = *(v69 + 16);
  }

  else
  {
    v70 = (v69 + 9);
  }

  re::AssetHandle::setSerializationString(&v95, v70, *a2);
  v71 = re::ecs2::EntityAssetData::addComponent<re::ecs2::MeshComponent>(&v156);
  re::AssetHandle::operator=((v71 + 4), &v95);
  if (*(v86 + 16))
  {
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v72 = re::AssetHandle::serializationString(*(v86 + 32), v98);
    if (BYTE8(v98[0]))
    {
      v73 = *&v98[1];
    }

    else
    {
      v73 = (v98 + 9);
    }

    if (*&v98[0] && (BYTE8(v98[0]) & 1) != 0)
    {
      (*(**&v98[0] + 40))();
    }

    re::DynamicArray<re::AssetHandle>::add((v71 + 7), &v92);
    re::AssetHandle::~AssetHandle(&v92);
  }

  re::DynamicArray<re::ecs2::EntityAssetData>::add(v89 + 72, &v156);
  re::AssetHandle::~AssetHandle(&v95);
  re::Result<re::MeshAssetData,re::DetailedError>::~Result(&v168);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v113);
  re::GeomMesh::~GeomMesh(&v116);
  re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(v130);
  if (v128 == 1)
  {
    re::DynamicArray<re::GeomIndexMap>::deinit(v129);
  }

  if (v126 == 1)
  {
    re::DynamicArray<re::GeomIndexMap>::deinit(v127);
  }

  if (v121)
  {
    if (v125)
    {
      (*(*v121 + 40))();
    }

    v125 = 0;
    v122 = 0;
    v123 = 0;
    v121 = 0;
    ++v124;
  }

  re::DynamicArray<re::GeomMesh>::deinit(v120);
  if (v118 && (v119 & 1) != 0)
  {
    (*(*v118 + 40))();
  }

  if (v139)
  {
    if (v143)
    {
      (*(*v139 + 40))();
    }

    v143 = 0;
    v140 = 0;
    v141 = 0;
    v139 = 0;
    ++v142;
  }

  if (v134)
  {
    if (v138)
    {
      (*(*v134 + 40))();
    }

    v138 = 0;
    v135 = 0;
    v136 = 0;
    v134 = 0;
    ++v137;
  }

  re::DynamicArray<re::GeomModel>::deinit(v133);
  if (v131 && (v132 & 1) != 0)
  {
    (*(*v131 + 40))();
  }

  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v153 + 1);
  re::DynamicArray<re::GeomSkeleton>::deinit(&v150 + 8);
  if (!*(&v147 + 1))
  {
    goto LABEL_152;
  }

  if (v150)
  {
    (*(**(&v147 + 1) + 40))();
  }

  *&v150 = 0;
  v148 = 0uLL;
  *(&v147 + 1) = 0;
LABEL_151:
  ++v149;
LABEL_152:
  re::DynamicArray<re::GeomModelWithLods>::deinit(&v144);
  re::ecs2::EntityAssetData::~EntityAssetData(&v156);
}

double re::DynamicArray<re::ModelWithLodsDescriptor>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::ModelWithLodsDescriptor>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 152 * v4;
  result = 0.0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 24) = *(a2 + 24);
  v7 = *(a2 + 8);
  *v5 = *a2;
  *a2 = 0;
  v8 = *(a2 + 16);
  *(a2 + 24) = 0;
  v10 = *(v5 + 8);
  v9 = *(v5 + 16);
  *(v5 + 8) = v7;
  *(v5 + 16) = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v9;
  *(v5 + 64) = 0;
  *(v5 + 56) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 32) = 0;
  v11 = *(a2 + 40);
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 40) = v11;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v12 = *(v5 + 48);
  *(v5 + 48) = *(a2 + 48);
  *(a2 + 48) = v12;
  v13 = *(v5 + 64);
  *(v5 + 64) = *(a2 + 64);
  *(a2 + 64) = v13;
  ++*(a2 + 56);
  ++*(v5 + 56);
  *(v5 + 104) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  *(v5 + 72) = 0;
  *(v5 + 96) = 0;
  v14 = *(a2 + 80);
  *(v5 + 72) = *(a2 + 72);
  *(v5 + 80) = v14;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  v15 = *(v5 + 88);
  *(v5 + 88) = *(a2 + 88);
  *(a2 + 88) = v15;
  v16 = *(v5 + 104);
  *(v5 + 104) = *(a2 + 104);
  *(a2 + 104) = v16;
  ++*(a2 + 96);
  ++*(v5 + 96);
  *(v5 + 144) = 0;
  *(v5 + 120) = 0;
  *(v5 + 128) = 0;
  *(v5 + 112) = 0;
  *(v5 + 136) = 0;
  v17 = *(a2 + 120);
  *(v5 + 112) = *(a2 + 112);
  *(v5 + 120) = v17;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  v18 = *(v5 + 128);
  *(v5 + 128) = *(a2 + 128);
  *(a2 + 128) = v18;
  v19 = *(v5 + 144);
  *(v5 + 144) = *(a2 + 144);
  *(a2 + 144) = v19;
  ++*(a2 + 136);
  ++*(v5 + 136);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t *re::DynamicArray<re::anonymous namespace::SkeletonAndAnimationInfoPerLodLevel>::~DynamicArray(uint64_t *a1)
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
        v5 = 72 * v4;
        v6 = v3 + 24;
        do
        {
          re::AssetHandle::~AssetHandle((v6 + 24));
          re::AssetHandle::~AssetHandle(v6);
          v6 += 72;
          v5 -= 72;
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

uint64_t re::DynamicArray<re::MeshAssetModel>::operator[](unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return a2 + (a3 << 9);
}

uint64_t re::BucketArray<re::FixedArray<unsigned short>,16ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 4)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 4)) + 24 * (a2 & 0xF);
}

uint64_t *re::anonymous namespace::wireupDeformers(re *a1, _BYTE *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = buf;
  v367[4] = *MEMORY[0x1E69E9840];
  v11 = re::globalAllocators(a1);
  v12 = (*(*v11[2] + 32))(v11[2], 80, 8);
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  buf[0].n128_u64[0] = &unk_1F5CD0E30;
  buf[1].n128_u64[1] = buf;
  v367[3] = v367;
  v366 = v12;
  v367[0] = &unk_1F5CD0E30;
  v13 = std::__function::__value_func<void ()(re::MeshDeformationAsset *)>::~__value_func[abi:nn200100](buf);
  v14 = v366;
  v327 = 0;
  v325 = 0u;
  v326 = 0u;
  v328 = 0x7FFFFFFFLL;
  v294 = a4;
  if (!a4[7])
  {
    goto LABEL_551;
  }

  v284 = a2;
  v16 = 0;
  v17 = 0;
  a2 = v360;
  v288 = a5 + 24;
  v287 = a5;
  while (1)
  {
    v18 = a4[9] + 96 * v16;
    v19 = *(v18 + 80);
    v297 = (v18 + 80);
    v20 = *(a5 + 40);
    if (v20 <= v19)
    {
      goto LABEL_579;
    }

    v10 = v19 >> 3;
    v6 = *(a5 + 8);
    if (v6 <= v19 >> 3)
    {
      goto LABEL_580;
    }

    v289 = v17;
    v293 = v16;
    v21 = *(a5 + 32);
    if (*(a5 + 16))
    {
      v21 = v288;
    }

    v292 = *(v21 + 8 * v10) + 40 * (v19 & 7);
    v22 = a1;
    if (*(v292 + 16))
    {
      v10 = a4[2];
      if (v10 <= v19)
      {
        goto LABEL_585;
      }

      v23 = a4[4] + (v19 << 9);
      if (*(v23 + 208))
      {
        break;
      }
    }

LABEL_519:
    v16 = (v289 + 1);
    v17 = v289 + 1;
    a5 = v287;
    if (a4[7] <= v16)
    {
      a2 = v284;
      if (HIDWORD(v326))
      {
        LODWORD(v23) = v327;
        if (!v327)
        {
          goto LABEL_529;
        }

        v235 = 0;
        v236 = v326;
        while (1)
        {
          v237 = *v236;
          v236 += 14;
          if (v237 < 0)
          {
            goto LABEL_530;
          }

          if (v327 == ++v235)
          {
            LODWORD(v235) = v327;
            goto LABEL_530;
          }
        }
      }

      goto LABEL_551;
    }
  }

  v24 = 0;
  v296 = 0;
  while (1)
  {
    v295 = v24;
    v324 = 0;
    v322 = 0;
    v320 = 0;
    v321 = 0;
    v323 = 0;
    v25 = *(v292 + 16);
    if (v25)
    {
      break;
    }

LABEL_509:
    re::DynamicArray<re::DeformationStackDefinition>::add(v366, &v320);
    v230 = v366;
    __dst[0] = 1;
    v19 = a4[7];
    v231 = v293;
    if (v19 <= v293)
    {
      goto LABEL_574;
    }

    re::StringID::StringID(&__dst[8], (a4[9] + 96 * v293));
    v19 = *v297;
    v10 = a4[2];
    if (v10 <= v19)
    {
      goto LABEL_575;
    }

    v232 = a4[4] + (v19 << 9);
    v19 = *(v232 + 208);
    v233 = v295;
    if (v19 <= v295)
    {
      goto LABEL_576;
    }

    re::StringID::StringID(&__dst[24], (*(v232 + 224) + (v295 << 8) + 72));
    *&__dst[40] = *(v366 + 2) - 1;
    v234 = re::DynamicArray<re::MeshDeformationIndex>::add(v230 + 5, __dst);
    if (__dst[24])
    {
      if (__dst[24])
      {
      }
    }

    *&__dst[32] = &str_67;
    *&__dst[24] = 0;
    if (__dst[8])
    {
      if (__dst[8])
      {
      }
    }

    re::DynamicArray<re::DeformationDefinition>::deinit(&v320);
    v24 = ++v296;
    if (*(v23 + 208) <= v296)
    {
      goto LABEL_519;
    }
  }

  v6 = *(v292 + 32);
  v298 = &v6[28 * v25];
  while (1)
  {
    v26 = *(v6 + 3);
    v27 = strcmp(v26, "BlendShape");
    if (!v27)
    {
LABEL_19:
      v360[4] = 0;
      *v360 = 0;
      buf[0].n128_u64[0] = 0x1954B86F1FEF5A4;
      buf[0].n128_u64[1] = "Blend Shape";
      *__dst = v360;
      *&__dst[8] = 5;
      *&v345 = 0;
      buf[1] = 0uLL;
      re::FixedArray<unsigned char>::copy(buf[1].n128_u64, __dst);
      re::DynamicArray<re::DeformationDefinition>::add(&v320, buf);
      v30 = buf[1].n128_u64[0];
      if (buf[1].n128_u64[0])
      {
        if (buf[1].n128_u64[1])
        {
          v30 = (*(*buf[1].n128_u64[0] + 40))();
          buf[1].n128_u64[1] = 0;
          *&v345 = 0;
        }

        buf[1].n128_u64[0] = 0;
      }

      if (buf[0].n128_u8[0])
      {
        if (buf[0].n128_u8[0])
        {
        }
      }

      if (!*(v22 + 4))
      {
        goto LABEL_56;
      }

      v31 = *(v22 + 6);
      if (!v31)
      {
        goto LABEL_56;
      }

      v32 = (*(v22 + 8) + 8);
      v33 = 24 * v31;
      while (*(v32 - 1) != *(re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 3) >> 1)
      {
        v32 += 3;
        v33 -= 24;
        if (!v33)
        {
          goto LABEL_56;
        }
      }

      if (!*v32)
      {
LABEL_56:
        re::ecs2::EntityAssetData::addComponent<re::ecs2::BlendShapeWeightsComponent>(v22);
      }

      goto LABEL_57;
    }

    v28 = *(v6 + 2) >> 1;
    if (v28 == 0xCAA5C378FF7AD2)
    {
      if (v26 == "Blend Shape")
      {
        goto LABEL_19;
      }

      v27 = strcmp(v26, "Blend Shape");
      if (!v27)
      {
        goto LABEL_19;
      }

      v29 = strcmp(v26, "Skinning");
      if (!v29)
      {
LABEL_37:
        *v360 = 0;
        v35 = *(v6 + 6);
        if (v35)
        {
          v36 = *(v6 + 8);
          v37 = 40 * v35;
          do
          {
            v29 = strcmp(*(v36 + 16), "deformUserTangentsAndNormals");
            if (!v29)
            {
              if (*(v36 + 24) == 1)
              {
                v360[1] = *(v36 + 32) != 0;
              }

              else
              {
              }
            }

            v36 += 40;
            v37 -= 40;
          }

          while (v37);
        }

        buf[0].n128_u64[0] = 0x4550755B7A2;
        buf[0].n128_u64[1] = "Skinning";
        *__dst = v360;
        *&__dst[8] = 2;
        *&v345 = 0;
        buf[1] = 0uLL;
        re::FixedArray<unsigned char>::copy(buf[1].n128_u64, __dst);
        re::DynamicArray<re::DeformationDefinition>::add(&v320, buf);
        v38 = buf[1].n128_u64[0];
        if (buf[1].n128_u64[0])
        {
          if (buf[1].n128_u64[1])
          {
            v38 = (*(*buf[1].n128_u64[0] + 40))();
            buf[1].n128_u64[1] = 0;
            *&v345 = 0;
          }

          buf[1].n128_u64[0] = 0;
        }

        if (buf[0].n128_u8[0])
        {
          if (buf[0].n128_u8[0])
          {
          }
        }

        if (!re::ecs2::EntityAssetData::tryGetComponent<re::ecs2::SkeletalPoseComponent>(v22))
        {
          re::ecs2::EntityAssetData::addComponent<re::ecs2::SkeletalPoseComponent>(v22);
        }

        if (!re::ecs2::EntityAssetData::tryGetComponent<re::ecs2::RigComponent>(v22))
        {
          re::ecs2::EntityAssetData::addComponent<re::ecs2::RigComponent>(v22);
        }

        goto LABEL_57;
      }

LABEL_35:
      v34 = strcmp(v26, "SmoothDeformer");
      if (!v34)
      {
        goto LABEL_69;
      }

LABEL_64:
      v39 = strcmp(v26, "WrapDeformer");
      if (!v39)
      {
        goto LABEL_109;
      }

      if (v28 == 0x2002D25A84007EBCLL)
      {
        if (v26 != "WrapDeformer")
        {
          goto LABEL_67;
        }

LABEL_109:
        v319 = 0;
        *&v315.var0 = 0;
        v315.var1 = &str_67;
        v317 = 0;
        v318 = 0;
        v316 = 0;
        if (*(v6 + 11))
        {
          v61 = *(v6 + 13);
          *v360 = 0;
          *&v360[8] = &str_67;
          *&v360[16] = 0;
          *&v360[24] = &str_67;
          *&v360[32] = 0u;
          v361 = 0u;
          v362 = 0u;
          v363 = 0u;
          v364 = 0;
          v365 = v296;
          v62 = *(v61 + 16);
          if (v62)
          {
            v63 = *(v61 + 32);
            v64 = v63 + 40 * v62;
            do
            {
              v65 = *(v63 + 16);
              if (!strcmp(v65, "faceIndices"))
              {
                if (*(v63 + 24) != 2)
                {
                  v104 = v63;
                  v105 = 2;
LABEL_188:
                  goto LABEL_189;
                }

                v93 = re::BucketArray<re::FixedArray<int>,8ul>::operator[]((v6 + 7), *(v63 + 32));
                v94 = *(v93 + 2);
                v95 = *v63;
                memcpy(v361, v94, 4 * v95);
              }

              else
              {
                if (!strcmp(v65, "faceCoordinates"))
                {
                  if (*(v63 + 24) == 4)
                  {
                    v96 = re::BucketArray<re::FixedArray<int>,8ul>::operator[]((v6 + 14), *(v63 + 32));
                    v97 = *(v96 + 2);
                    v98 = *v63;
                    if (v98)
                    {
                      v99 = (*(&v362 + 1) + 8);
                      v100 = (v97 + 8);
                      v101 = 1;
                      do
                      {
                        *(v99 - 2) = *(v100 - 2);
                        *(v99 - 1) = *(v100 - 1);
                        v102 = *v100;
                        v100 += 3;
                        *v99 = v102;
                        v99 += 4;
                        v103 = v98 > v101++;
                      }

                      while (v103);
                    }

                    goto LABEL_189;
                  }

LABEL_187:
                  v104 = v63;
                  v105 = 4;
                  goto LABEL_188;
                }

                if (!strcmp(v65, "offsets"))
                {
                  if (*(v63 + 24) == 4)
                  {
                    v106 = re::BucketArray<re::FixedArray<int>,8ul>::operator[]((v6 + 14), *(v63 + 32));
                    v107 = *(v106 + 2);
                    v108 = *v63;
                    if (v108)
                    {
                      v109 = (v364 + 8);
                      v110 = (v107 + 8);
                      v111 = 1;
                      do
                      {
                        *(v109 - 2) = *(v110 - 2);
                        *(v109 - 1) = *(v110 - 1);
                        v112 = *v110;
                        v110 += 3;
                        *v109 = v112;
                        v109 += 4;
                        v103 = v108 > v111++;
                      }

                      while (v103);
                    }

                    goto LABEL_189;
                  }

                  goto LABEL_187;
                }

                if (!strcmp(v65, "target"))
                {
                  if (*(v63 + 24) == 5)
                  {
                    v66 = re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::operator[](v6 + 280, *(v63 + 32));
                    LOBYTE(v312) = 1;
                    re::StringID::StringID(&v313, v66);
                    re::StringID::StringID(&v314, v66 + 1);
                    if (v312)
                    {
                      re::StringID::StringID(&v309, &v313);
                      re::StringID::StringID(&v311, &v314);
                      v67 = re::DynamicString::format("%s-0", buf, v310);
                      if (buf[0].n128_u8[8])
                      {
                        v68 = buf[1].n128_u64[0];
                      }

                      else
                      {
                        v68 = &buf[0].n128_i8[9];
                      }

                      *__dst = 0;
                      *&__dst[8] = &str_67;
                      v70 = *__dst;
                      v71 = *&__dst[8];
                      *&__dst[8] = &str_67;
                      *__dst = 0;
                      v72 = v360[0];
                      *v360 = v70;
                      *&v360[8] = v71;
                      if (v72)
                      {
                        if (__dst[0])
                        {
                          if (__dst[0])
                          {
                          }
                        }
                      }

                      *&__dst[8] = &str_67;
                      *__dst = 0;
                      v74 = a6;
                      if (buf[0].n128_u64[0] && (buf[0].n128_u8[8] & 1) != 0)
                      {
                        (*(*buf[0].n128_u64[0] + 40))();
                      }

                      re::DynamicString::format("%s", &v306, *&v360[8]);
                      if (v307 >= 0x100 && (v307 & 1) != 0)
                      {
                        re::DynamicString::DynamicString(__dst, &v306);
                        re::DynamicString::substr(&v306, 0, 0x7FuLL, buf);
                        re::DynamicString::operator=(&v306, buf);
                        v75 = buf[0].n128_u64[0];
                        if (buf[0].n128_u64[0] && (buf[0].n128_u8[8] & 1) != 0)
                        {
                          v75 = (*(*buf[0].n128_u64[0] + 40))();
                        }

                        v76 = *re::pipelineLogObjects(v75);
                        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
                        {
                          v77 = *&__dst[16];
                          if ((__dst[8] & 1) == 0)
                          {
                            v77 = &__dst[9];
                          }

                          v78 = __dst[8] >> 1;
                          if (__dst[8])
                          {
                            v78 = *&__dst[8] >> 1;
                          }

                          v79 = &v307 + 1;
                          if (v307)
                          {
                            v79 = v308;
                          }

                          buf[0].n128_u32[0] = 136315906;
                          *(buf[0].n128_u64 + 4) = v77;
                          buf[0].n128_u16[6] = 2048;
                          *(&buf[0].n128_u64[1] + 6) = v78;
                          buf[1].n128_u16[3] = 2048;
                          buf[1].n128_u64[1] = 127;
                          LOWORD(v345) = 2080;
                          *(&v345 + 2) = v79;
                          _os_log_impl(&dword_1E1C61000, v76, OS_LOG_TYPE_DEFAULT, "Name '%s' was too long (%zu characters, max %zu), shortened into '%s' for wait fence ID name. This may cause conflicts.", buf, 0x2Au);
                        }

                        if (*__dst && (__dst[8] & 1) != 0)
                        {
                          (*(**__dst + 40))();
                        }
                      }

                      v80 = re::DynamicString::format("%s-0", &v303, *(v23 + 8));
                      if (v304 >= 0x100 && (v304 & 1) != 0)
                      {
                        v81 = *(v23 + 8);
                        re::DynamicString::substr(buf, 0, 0x7DuLL, __dst);
                        if (buf[0].n128_u64[0] && (buf[0].n128_u8[8] & 1) != 0)
                        {
                          (*(*buf[0].n128_u64[0] + 40))();
                        }

                        v82 = &__dst[9];
                        if (__dst[8])
                        {
                          v82 = *&__dst[16];
                        }

                        re::DynamicString::format("%s-0", buf, v82);
                        re::DynamicString::operator=(&v303, buf);
                        v83 = buf[0].n128_u64[0];
                        if (buf[0].n128_u64[0] && (buf[0].n128_u8[8] & 1) != 0)
                        {
                          v83 = (*(*buf[0].n128_u64[0] + 40))();
                        }

                        v84 = *re::pipelineLogObjects(v83);
                        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
                        {
                          v85 = v84;
                          v86 = *(v23 + 8);
                          v87 = strlen(v86);
                          v88 = &__dst[9];
                          if (__dst[8])
                          {
                            v88 = *&__dst[16];
                          }

                          buf[0].n128_u32[0] = 136315906;
                          *(buf[0].n128_u64 + 4) = v86;
                          buf[0].n128_u16[6] = 2048;
                          *(&buf[0].n128_u64[1] + 6) = v87;
                          buf[1].n128_u16[3] = 2048;
                          buf[1].n128_u64[1] = 125;
                          LOWORD(v345) = 2080;
                          *(&v345 + 2) = v88;
                          _os_log_impl(&dword_1E1C61000, v85, OS_LOG_TYPE_DEFAULT, "Name '%s' was too long (%zu characters, max %zu), shortened into '%s' for fence ID name. This may cause conflicts.", buf, 0x2Au);
                        }

                        if (*__dst && (__dst[8] & 1) != 0)
                        {
                          (*(**__dst + 40))();
                        }
                      }

                      v357 = 0u;
                      v358 = 0u;
                      v355 = 0u;
                      v356 = 0u;
                      v353 = 0u;
                      v354 = 0u;
                      v351 = 0u;
                      v352 = 0u;
                      v349 = 0u;
                      v350 = 0u;
                      v347 = 0u;
                      v348 = 0u;
                      v345 = 0u;
                      v346 = 0u;
                      memset(buf, 0, sizeof(buf));
                      if (v307)
                      {
                        v89 = v308;
                      }

                      else
                      {
                        v89 = &v307 + 1;
                      }

                      v359 = -1;
                      v90 = strlcpy(&v351, v89, 0x80uLL);
                      v359 = 13;
                      *__dst = 0x4425D6C2BB3546C6;
                      *&__dst[8] = "FenceDeformer";
                      v300 = buf;
                      v301 = 257;
                      memset(&__dst[16], 0, 24);
                      re::FixedArray<unsigned char>::copy(&__dst[16], &v300);
                      re::DynamicArray<re::DeformationDefinition>::add(&v320, __dst);
                      v91 = *&__dst[16];
                      if (*&__dst[16])
                      {
                        if (*&__dst[24])
                        {
                          v91 = (*(**&__dst[16] + 40))();
                          *&__dst[24] = 0;
                          *&__dst[32] = 0;
                        }

                        *&__dst[16] = 0;
                      }

                      if (__dst[0])
                      {
                        if (__dst[0])
                        {
                        }
                      }

                      if (*&v311.var0 >= 0xFFFFFFFFFFFFFFFELL && (*&v311.var0 & 1) == 0)
                      {
                        var1 = v311.var1;
                        goto LABEL_202;
                      }

                      if (*&v311.var0 <= 1uLL && (var1 = v311.var1) != 0)
                      {
LABEL_202:
                        if (*var1)
                        {
                          goto LABEL_203;
                        }
                      }

                      else
                      {
LABEL_203:
                        v341 = 0u;
                        v342 = 0u;
                        v339 = 0u;
                        v340 = 0u;
                        v337 = 0u;
                        v338 = 0u;
                        v335 = 0u;
                        v336 = 0u;
                        v333 = 0u;
                        v334 = 0u;
                        v331 = 0u;
                        v332 = 0u;
                        v330 = 0u;
                        memset(__dst, 0, sizeof(__dst));
                        if (v304)
                        {
                          v114 = v305;
                        }

                        else
                        {
                          v114 = &v304 + 1;
                        }

                        v343 = -1;
                        v115 = strlcpy(__dst, v114, 0x80uLL);
                        if (*&v315.var0)
                        {
                          if (*&v315.var0)
                          {
                          }
                        }

                        *&v315.var0 = 0x4425D6C2BB3546C6;
                        v315.var1 = "FenceDeformer";
                        v299[0] = __dst;
                        v299[1] = 257;
                        v300 = 0;
                        v301 = 0;
                        v302 = 0;
                        re::FixedArray<unsigned char>::copy(&v300, v299);
                        re::FixedArray<float>::operator=(&v316, &v300);
                        v91 = v300;
                        if (v300 && v301)
                        {
                          v91 = (*(v300->n128_u64[0] + 40))();
                        }
                      }

                      if (v304)
                      {
                        v116 = v305;
                      }

                      else
                      {
                        v116 = &v304 + 1;
                      }

                      v300 = 0;
                      v301 = &str_67;
                      *__dst = v300;
                      *&__dst[8] = v301;
                      v300 = 0;
                      v301 = &str_67;
                      re::StringID::StringID(&__dst[16], &v311);
                      v117 = *v360;
                      v118 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v117 >> 31) ^ (v117 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v117 >> 31) ^ (v117 >> 1))) >> 27));
                      v119 = v118 ^ (v118 >> 31);
                      if (*a6)
                      {
                        v120 = v119 % *(a6 + 24);
                        v121 = *(*(a6 + 8) + 4 * v120);
                        if (v121 != 0x7FFFFFFF)
                        {
                          v286 = v119 % *(a6 + 24);
                          v122 = *(a6 + 16);
                          v123 = v122 + 56 * v121;
                          v125 = *(v123 + 8);
                          v124 = v123 + 8;
                          if ((v125 ^ *v360) <= 1)
                          {
                            v126 = *(v124 + 8);
                            if (v126 == *&v360[8])
                            {
                              goto LABEL_229;
                            }

                            v126 = strcmp(v126, *&v360[8]);
                            if (!v126)
                            {
                              goto LABEL_229;
                            }
                          }

                          v127 = *(v122 + 56 * v121) & 0x7FFFFFFF;
                          if (v127 != 0x7FFFFFFF)
                          {
                            v128 = *&v360[8];
                            while (1)
                            {
                              v129 = v122 + 56 * v127;
                              v131 = *(v129 + 8);
                              v130 = v129 + 8;
                              if ((v131 ^ v117) <= 1)
                              {
                                v126 = *(v130 + 8);
                                if (v126 == v128)
                                {
                                  break;
                                }

                                v126 = strcmp(v126, v128);
                                if (!v126)
                                {
                                  break;
                                }
                              }

                              v127 = *(v122 + 56 * v127) & 0x7FFFFFFF;
                              if (v127 == 0x7FFFFFFF)
                              {
                                goto LABEL_226;
                              }
                            }

LABEL_229:
                            if (__dst[16])
                            {
                              if (__dst[16])
                              {
                              }
                            }

                            *&__dst[24] = &str_67;
                            *&__dst[16] = 0;
                            a2 = v360;
                            v22 = a1;
                            if (__dst[0])
                            {
                              if (__dst[0])
                              {
                              }
                            }

                            *&__dst[8] = &str_67;
                            *__dst = 0;
                            if (v300)
                            {
                              if (v300)
                              {
                              }
                            }

                            if (v303 && (v304 & 1) != 0)
                            {
                              (*(*v303 + 40))();
                            }

                            v113 = v306;
                            if (v306 && (v307 & 1) != 0)
                            {
                              v113 = (*(*v306 + 40))();
                            }

                            if (*&v311.var0)
                            {
                              if (*&v311.var0)
                              {
                              }
                            }

                            *&v311.var0 = 0;
                            v311.var1 = &str_67;
                            if (v309)
                            {
                              if (v309)
                              {
                              }
                            }

LABEL_193:
                            if (v312 == 1)
                            {
                              if (*&v314.var0)
                              {
                                if (*&v314.var0)
                                {
                                }
                              }

                              *&v314.var0 = 0;
                              v314.var1 = &str_67;
                              if (*&v313.var0)
                              {
                                if (*&v313.var0)
                                {
                                }
                              }
                            }

                            goto LABEL_189;
                          }

LABEL_226:
                          v74 = a6;
                          LODWORD(v120) = v286;
                        }
                      }

                      else
                      {
                        LODWORD(v120) = 0;
                      }

                      v132 = re::HashTable<re::StringID,re::Pair<re::StringID,re::StringID,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v74, v120, v119);
                      v126 = re::StringID::StringID((v132 + 8), v360);
                      *(v132 + 24) = *__dst;
                      *(v132 + 32) = *&__dst[8];
                      *&__dst[8] = &str_67;
                      *__dst = 0;
                      *(v132 + 48) = *&__dst[24];
                      *&__dst[24] = &str_67;
                      *&__dst[16] = 0;
                      ++*(v74 + 40);
                      goto LABEL_229;
                    }
                  }

                  else
                  {
                    LOBYTE(v312) = 0;
                  }

                  goto LABEL_193;
                }
              }

LABEL_189:
              v63 += 40;
            }

            while (v63 != v64);
          }

          v133 = *(v6 + 6);
          a4 = v294;
          if (v133)
          {
            v134 = *(v6 + 8);
            v135 = 40 * v133;
            while (strcmp(*(v134 + 16), "envelopeVarName"))
            {
LABEL_262:
              v134 += 40;
              v135 -= 40;
              if (!v135)
              {
                goto LABEL_263;
              }
            }

            if (*(v134 + 24) == 6)
            {
              v136 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v6 + 21), *(v134 + 32));
              buf[0].n128_u8[0] = 1;
              re::StringID::StringID(&buf[0].n128_i8[8], v136);
              if (buf[0].n128_u8[0])
              {
                v137 = re::StringID::operator=(&v360[16], &buf[0].n128_i64[1]);
LABEL_258:
                if (buf[0].n128_u8[0] == 1 && (buf[0].n128_u8[8] & 1) != 0)
                {
                  if (buf[0].n128_u8[8])
                  {
                  }
                }

                goto LABEL_262;
              }
            }

            else
            {
              buf[0].n128_u8[0] = 0;
            }

            goto LABEL_258;
          }

LABEL_263:
          v19 = *v297;
          v10 = v294[2];
          if (v10 <= v19)
          {
            goto LABEL_577;
          }

          re::DynamicArray<re::MeshAssetWrapDeformerData>::add((v294[4] + (v19 << 9) + 392), v360);
          if (v363)
          {
            if (*(&v363 + 1))
            {
              (*(*v363 + 40))(v363, v364);
              *(&v363 + 1) = 0;
              v364 = 0;
            }

            *&v363 = 0;
          }

          if (*(&v361 + 1))
          {
            if (v362)
            {
              (*(**(&v361 + 1) + 40))(*(&v361 + 1), *(&v362 + 1));
              v362 = 0uLL;
            }

            *(&v361 + 1) = 0;
          }

          v39 = *&v360[32];
          if (*&v360[32])
          {
            if (*&v360[40])
            {
              v39 = (*(**&v360[32] + 40))(*&v360[32], v361);
              *&v360[40] = 0;
              *&v361 = 0;
            }

            *&v360[32] = 0;
          }

          if (v360[16])
          {
            if (v360[16])
            {
            }
          }

          *&v360[16] = 0;
          *&v360[24] = &str_67;
          if (v360[0])
          {
            if (v360[0])
            {
            }
          }
        }

        buf[0].n128_u64[0] = 0x4005A4B50800FD78;
        buf[0].n128_u64[1] = "WrapDeformer";
        *__dst = &v319;
        *&__dst[8] = 1;
        *&v345 = 0;
        buf[1] = 0uLL;
        re::FixedArray<unsigned char>::copy(buf[1].n128_u64, __dst);
        re::DynamicArray<re::DeformationDefinition>::add(&v320, buf);
        v138 = buf[1].n128_u64[0];
        if (buf[1].n128_u64[0])
        {
          if (buf[1].n128_u64[1])
          {
            v138 = (*(*buf[1].n128_u64[0] + 40))();
            buf[1].n128_u64[1] = 0;
            *&v345 = 0;
          }

          buf[1].n128_u64[0] = 0;
        }

        if (buf[0].n128_u8[0])
        {
          if (buf[0].n128_u8[0])
          {
          }
        }

        if (*&v315.var0 > 1uLL || !v315.var1 || *v315.var1)
        {
          v139 = v322;
          if (v322 >= v321)
          {
            re::DynamicArray<re::DeformationDefinition>::growCapacity(&v320, v322 + 1);
            v139 = v322;
          }

          v140 = re::StringID::StringID((v324 + 40 * v139), &v315);
          re::FixedArray<unsigned char>::FixedArray(v140 + 2, &v316);
          ++v322;
          ++v323;
        }

        v141 = v316;
        if (v316)
        {
          if (v317)
          {
            v141 = (*(*v316 + 40))();
            v317 = 0;
            v318 = 0;
          }

          v316 = 0;
        }

        goto LABEL_310;
      }

      v40 = strcmp(v26, "ContactDeformer");
      if (!v40)
      {
        goto LABEL_323;
      }

      if (v28 == 0x1179C3D2A9790052)
      {
        if (v26 == "ContactDeformer")
        {
          goto LABEL_323;
        }

        v146 = strcmp(v26, "Renormalization");
        if (v146)
        {
          goto LABEL_321;
        }

        goto LABEL_373;
      }

LABEL_318:
      v146 = strcmp(v26, "Renormalization");
      if (v146)
      {
        if (v28 != 0x55E7643F91509A2ALL)
        {
          v147 = strcmp(v26, "OffsetsDeformer");
          if (!v147)
          {
            goto LABEL_386;
          }

          if (v28 == 0x3875EE4E6B5AEA72)
          {
            if (v26 == "OffsetsDeformer")
            {
              goto LABEL_386;
            }

            v167 = v26;
            v168 = "TensionDeformer";
LABEL_382:
            v146 = strcmp(v167, v168);
            if (v146)
            {
              v169 = v26;
              v170 = "BoundingBoxCalculation";
LABEL_384:
              v146 = strcmp(v169, v170);
              if (v146)
              {
                goto LABEL_464;
              }

              goto LABEL_455;
            }

LABEL_433:
            v360[0] = 0;
            buf[0].n128_u64[0] = 0x241C51C064;
            v200 = "Tension";
LABEL_456:
            buf[0].n128_u64[1] = v200;
LABEL_457:
            *__dst = v360;
            *&__dst[8] = 1;
            *&v345 = 0;
            buf[1] = 0uLL;
            re::FixedArray<unsigned char>::copy(buf[1].n128_u64, __dst);
            re::DynamicArray<re::DeformationDefinition>::add(&v320, buf);
            v216 = buf[1].n128_u64[0];
            if (buf[1].n128_u64[0])
            {
              if (buf[1].n128_u64[1])
              {
                v216 = (*(*buf[1].n128_u64[0] + 40))();
                buf[1].n128_u64[1] = 0;
                *&v345 = 0;
              }

              buf[1].n128_u64[0] = 0;
            }

            if ((buf[0].n128_u8[0] & 1) == 0)
            {
              goto LABEL_57;
            }

            if ((buf[0].n128_u8[0] & 1) == 0)
            {
              goto LABEL_57;
            }

            goto LABEL_312;
          }

          goto LABEL_378;
        }

        if (v26 != "Renormalization")
        {
LABEL_321:
          v147 = strcmp(v26, "OffsetsDeformer");
          if (!v147)
          {
LABEL_386:
            LOBYTE(v309) = 0;
            buf[0].n128_u64[0] = 0x70EBDC9CD6B5D4E4;
            buf[0].n128_u64[1] = "OffsetsDeformer";
            *__dst = &v309;
            *&__dst[8] = 1;
            *&v345 = 0;
            buf[1] = 0uLL;
            re::FixedArray<unsigned char>::copy(buf[1].n128_u64, __dst);
            re::DynamicArray<re::DeformationDefinition>::add(&v320, buf);
            v171 = buf[1].n128_u64[0];
            if (buf[1].n128_u64[0])
            {
              if (buf[1].n128_u64[1])
              {
                v171 = (*(*buf[1].n128_u64[0] + 40))();
                buf[1].n128_u64[1] = 0;
                *&v345 = 0;
              }

              buf[1].n128_u64[0] = 0;
            }

            if (buf[0].n128_u8[0])
            {
              if (buf[0].n128_u8[0])
              {
              }
            }

            if (!re::ecs2::EntityAssetData::tryGetComponent<re::ecs2::MeshOffsetsComponent>(v22))
            {
              if (!*(v22 + 4))
              {
                re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v22 + 4, 0);
                ++*(v22 + 14);
              }

              v172 = (*(**(re::ecs2::ComponentImpl<re::ecs2::MeshOffsetsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::MeshOffsetsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 216, 0);
              *v172 = 0u;
              *(v172 + 16) = 0u;
              *(v172 + 32) = 0u;
              *(v172 + 48) = 0u;
              *(v172 + 64) = 0u;
              *(v172 + 80) = 0u;
              *(v172 + 96) = 0u;
              *(v172 + 112) = 0u;
              *(v172 + 128) = 0u;
              *(v172 + 144) = 0u;
              *(v172 + 176) = 0u;
              *(v172 + 192) = 0u;
              *(v172 + 208) = 0;
              *(v172 + 160) = 0u;
              ArcSharedObject::ArcSharedObject(v172, 0);
              *(v173 + 16) = 0;
              *(v173 + 24) = 0;
              *v173 = &unk_1F5CD1030;
              *(v173 + 40) = 0;
              *(v173 + 48) = 0;
              *(v173 + 32) = 0;
              *(v173 + 56) = 0;
              *(v173 + 64) = 0u;
              *(v173 + 80) = 0u;
              *(v173 + 96) = 0;
              *(v173 + 104) = -1;
              *(v173 + 112) = 0u;
              *(v173 + 128) = 0u;
              *(v173 + 144) = 0u;
              inited = objc_initWeak((v172 + 160), 0);
              *(v172 + 168) = 0;
              *(v172 + 200) = re::globalAllocators(inited)[2];
              *(v172 + 208) = 0;
              buf[0].n128_u64[0] = *((*(*v172 + 40))(v172) + 24) >> 1;
              buf[0].n128_u64[1] = v172;
              buf[1].n128_u8[0] = 1;
              re::DynamicArray<re::BufferView>::add((v22 + 32), buf);
              v360[0] = 9;
              v176 = re::globalAllocators(v175);
              v177 = (*(*v176[2] + 32))(v176[2], 40, 8);
              *v177 = 0u;
              *(v177 + 16) = 0u;
              *(v177 + 32) = 0;
              *__dst = &unk_1F5CD1110;
              *&__dst[24] = __dst;
              buf[0].n128_u64[0] = v177;
              *&v345 = &buf[0].n128_u64[1];
              buf[0].n128_u64[1] = &unk_1F5CD1110;
              re::HashTable<unsigned char,std::unique_ptr<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>,std::function<void ()(re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>*)>>,re::Hash<unsigned char>,re::EqualTo<unsigned char>,true,false>::add(&v325, v360, buf);
              std::unique_ptr<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>,std::function<void ()(re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>*)>>::~unique_ptr[abi:nn200100](buf);
              std::__function::__value_func<void ()(re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension> *)>::~__value_func[abi:nn200100](__dst);
              a4 = v294;
            }

            *&v315.var0 = 0;
            v315.var1 = &str_67;
            LOWORD(v316) = v296;
            v178 = re::ecs2::EntityAssetData::tryGetComponent<re::ecs2::MeshOffsetsComponent>(v22);
            if (*(v6 + 6))
            {
              *&v345 = 0;
              memset(buf, 0, 28);
              v346 = xmmword_1E3047670;
              v347 = xmmword_1E3047680;
              v348 = xmmword_1E30476A0;
              v349 = xmmword_1E30474D0;
              v350 = xmmword_1E3047670;
              v351 = xmmword_1E3047680;
              v352 = xmmword_1E30476A0;
              v353 = xmmword_1E30474D0;
              LODWORD(v354) = 0;
              v19 = *v297;
              v10 = a4[2];
              v179 = v295;
              if (v10 <= v19)
              {
                goto LABEL_586;
              }

              v180 = a4[4] + (v19 << 9);
              v19 = *(v180 + 208);
              if (v19 <= v295)
              {
                goto LABEL_587;
              }

              v181 = v178;
              re::DynamicArray<float>::resize(buf, (3 * *(*(v180 + 224) + (v295 << 8) + 48)));
              v182 = *(v6 + 6);
              if (v182)
              {
                v183 = *(v6 + 8);
                for (i = 40 * v182; i; i -= 40)
                {
                  v185 = *(v183 + 16);
                  if (!strcmp(v185, "preTransform"))
                  {
                    if (*(v183 + 24) != 7)
                    {
                      goto LABEL_415;
                    }

                    v188 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6 + 392, *(v183 + 32));
                    v189 = v188[3];
                    v191 = *v188;
                    v190 = v188[1];
                    v348 = v188[2];
                    v349 = v189;
                    v346 = v191;
                    v347 = v190;
                  }

                  else if (!strcmp(v185, "postTransform"))
                  {
                    if (*(v183 + 24) != 7)
                    {
LABEL_415:
                      v196 = v183;
                      v197 = 7;
LABEL_416:
                      goto LABEL_417;
                    }

                    v192 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6 + 392, *(v183 + 32));
                    v193 = v192[3];
                    v195 = *v192;
                    v194 = v192[1];
                    v352 = v192[2];
                    v353 = v193;
                    v350 = v195;
                    v351 = v194;
                  }

                  else
                  {
                    if (!strcmp(v185, "blendingMode"))
                    {
                      if (*(v183 + 24) == 1)
                      {
                        LODWORD(v354) = *(v183 + 32);
                        goto LABEL_417;
                      }

                      v196 = v183;
                      v197 = 1;
                      goto LABEL_416;
                    }

                    if (!strcmp(v185, "envelopeVarName"))
                    {
                      if (*(v183 + 24) == 6)
                      {
                        v198 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v6 + 21), *(v183 + 32));
                        __dst[0] = 1;
                        re::StringID::StringID(&__dst[8], v198);
                        if (__dst[0])
                        {
                          v199 = re::StringID::operator=(&v315, &__dst[8]);
LABEL_427:
                          if (__dst[0] == 1 && (__dst[8] & 1) != 0)
                          {
                            if (__dst[8])
                            {
                            }
                          }

                          goto LABEL_417;
                        }
                      }

                      else
                      {
                        __dst[0] = 0;
                      }

                      goto LABEL_427;
                    }

                    if (!strcmp(v185, "offsets"))
                    {
                      if (*(v183 + 24) == 4)
                      {
                        v186 = re::BucketArray<re::FixedArray<int>,8ul>::operator[]((v6 + 14), *(v183 + 32));
                        if (3 * *v183 <= buf[1].n128_u64[0])
                        {
                          memcpy(v345, v186[2], 12 * *v183);
                        }

                        else
                        {
                          v187 = *re::pipelineLogObjects(v186);
                          if (os_log_type_enabled(v187, OS_LOG_TYPE_DEFAULT))
                          {
                            *__dst = 0;
                            _os_log_impl(&dword_1E1C61000, v187, OS_LOG_TYPE_DEFAULT, "Invalid number of offsets specified.", __dst, 2u);
                          }
                        }

                        goto LABEL_417;
                      }

                      v196 = v183;
                      v197 = 4;
                      goto LABEL_416;
                    }
                  }

LABEL_417:
                  v183 += 40;
                }
              }

              v201 = *(v181 + 48);
              if (v201 >= *(v181 + 40))
              {
                re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::growCapacity((v181 + 32), v201 + 1);
                v201 = *(v181 + 48);
              }

              v202 = re::DynamicArray<float>::DynamicArray(*(v181 + 64) + 192 * v201, buf);
              *(v202 + 48) = v346;
              v203 = v347;
              v204 = v348;
              v205 = v350;
              *(v202 + 96) = v349;
              *(v202 + 112) = v205;
              *(v202 + 64) = v203;
              *(v202 + 80) = v204;
              v206 = v351;
              v207 = v352;
              v208 = v353;
              *(v202 + 176) = v354;
              *(v202 + 144) = v207;
              *(v202 + 160) = v208;
              *(v202 + 128) = v206;
              ++*(v181 + 48);
              ++*(v181 + 56);
              a4 = v294;
              if (buf[0].n128_u64[0] && v345)
              {
                (*(*buf[0].n128_u64[0] + 40))();
              }
            }

            v209 = *v297;
            v10 = a4[2];
            if (v10 <= v209)
            {
              goto LABEL_581;
            }

            re::DynamicArray<re::MeshAssetSmoothDeformerData>::add((a4[4] + (v209 << 9) + 432), &v315);
            if (v325)
            {
              v210 = v326;
              v211 = *(*(&v325 + 1) + 4 * (0x826C6ABF7FDD5AD7 % DWORD2(v326)));
              v212 = v293;
              if (v211 == 0x7FFFFFFF)
              {
LABEL_444:
                v211 = 0x7FFFFFFFLL;
              }

              else
              {
                while (*(v326 + 56 * v211 + 4) != 9)
                {
                  v211 = *(v326 + 56 * v211) & 0x7FFFFFFF;
                  if (v211 == 0x7FFFFFFF)
                  {
                    goto LABEL_444;
                  }
                }
              }
            }

            else
            {
              v210 = v326;
              v211 = 0x7FFFFFFFLL;
              v212 = v293;
            }

            v142 = *(v210 + 56 * v211 + 8);
            __dst[0] = 1;
            v10 = a4[7];
            if (v10 <= v212)
            {
              goto LABEL_582;
            }

            re::StringID::StringID(&__dst[8], (a4[9] + 96 * v212));
            v10 = *v297;
            v213 = a4;
            a4 = a4[2];
            if (a4 <= v10)
            {
              goto LABEL_583;
            }

            v214 = v213[4] + (v10 << 9);
            v10 = *(v214 + 208);
            v215 = v295;
            if (v10 <= v295)
            {
              goto LABEL_584;
            }

            a4 = v213;
            v145 = *(v214 + 224) + (v295 << 8);
            goto LABEL_304;
          }

LABEL_378:
          v146 = strcmp(v26, "TensionDeformer");
          if (!v146)
          {
            goto LABEL_433;
          }

          if (v28 == 0x120E28E032)
          {
            if (v26 == "Tension")
            {
              goto LABEL_433;
            }

            v167 = v26;
            v168 = "Tension";
            goto LABEL_382;
          }

          v146 = strcmp(v26, "BoundingBoxCalculation");
          if (!v146)
          {
LABEL_455:
            v360[0] = 0;
            buf[0].n128_u64[0] = 0x32458CCC0A585AB0;
            v200 = "Bounding Box Calculation";
            goto LABEL_456;
          }

          if (v28 != 0x535C1C60DF8DDA89)
          {
            if (v28 != 0x1922C666052C2D58)
            {
              goto LABEL_464;
            }

            if (v26 == "Bounding Box Calculation")
            {
              goto LABEL_455;
            }

            v169 = v26;
            v170 = "Bounding Box Calculation";
            goto LABEL_384;
          }

          if (v26 == "OpenSubdivViewIndependentComputeStep" || !strcmp(v26, "OpenSubdivViewIndependentComputeStep"))
          {
            goto LABEL_502;
          }

LABEL_464:
          buf[0].n128_u64[0] = 0x637BDBD40E8681E4;
          buf[0].n128_u64[1] = "OpenSubdivViewDependentComputeStep";
          if (re::StringID::operator==(v6 + 2, buf) || (*__dst = 0x10444A02DC81C1ELL, *&__dst[8] = "VertexCache", re::StringID::operator==(v6 + 2, __dst)))
          {
LABEL_502:
            re::StringID::StringID(buf, v6 + 1);
            buf[1] = 0uLL;
            *&v345 = 0;
            re::DynamicArray<re::DeformationDefinition>::add(&v320, buf);
            if (buf[1].n128_u64[0])
            {
              if (buf[1].n128_u64[1])
              {
                (*(*buf[1].n128_u64[0] + 40))();
                buf[1].n128_u64[1] = 0;
                *&v345 = 0;
              }

              buf[1].n128_u64[0] = 0;
            }

            goto LABEL_506;
          }

          if (strcmp(v26, "JiggleDeformer"))
          {
            buf[0].n128_u64[0] = 0x150A9604D758308ALL;
            buf[0].n128_u64[1] = "JiggleDeformer";
            v217 = re::StringID::operator==(v6 + 2, buf);
            if (!v217)
            {
              v227 = *re::pipelineLogObjects(v217);
              if (os_log_type_enabled(v227, OS_LOG_TYPE_DEFAULT))
              {
                v228 = v227;
                v229 = *(v6 + 3);
                buf[0].n128_u32[0] = 136315138;
                *(buf[0].n128_u64 + 4) = v229;
                _os_log_impl(&dword_1E1C61000, v228, OS_LOG_TYPE_DEFAULT, "Unsupported deformer type: %s", buf, 0xCu);
              }

              goto LABEL_57;
            }
          }

          buf[0].n128_u64[0] = 0x2A152C09AEB06114;
          buf[0].n128_u64[1] = "JiggleDeformer";
          *&v345 = 0;
          buf[1] = 0uLL;
          re::DynamicArray<re::DeformationDefinition>::add(&v320, buf);
          if (buf[1].n128_u64[0])
          {
            if (buf[1].n128_u64[1])
            {
              (*(*buf[1].n128_u64[0] + 40))();
              buf[1].n128_u64[1] = 0;
              *&v345 = 0;
            }

            buf[1].n128_u64[0] = 0;
          }

          re::StringID::destroyString(buf);
          buf[0].n128_u64[0] = 0;
          buf[0].n128_u64[1] = &str_67;
          buf[1].n128_u64[0] = 0;
          buf[1].n128_u64[1] = &str_67;
          WORD4(v345) = v296;
          v218 = *(v6 + 6);
          if (!v218)
          {
LABEL_501:
            v226 = re::DynamicArray<re::MeshAssetModel>::operator[](a4[2], a4[4], *v297);
            re::DynamicArray<re::MeshAssetJiggleDeformerData>::add((v226 + 472), buf);
            re::StringID::destroyString(&buf[1]);
LABEL_506:
            re::StringID::destroyString(buf);
            goto LABEL_57;
          }

          v219 = *(v6 + 8);
          v220 = 40 * v218;
          while (1)
          {
            v221 = *(v219 + 16);
            if (!strcmp(v221, "envelopeVarName"))
            {
              break;
            }

            if (!strcmp(v221, "massVarName"))
            {
              if (*(v219 + 24) == 6)
              {
                v225 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v6 + 21), *(v219 + 32));
                __dst[0] = 1;
                re::StringID::StringID(&__dst[8], v225);
                a4 = v294;
                if (__dst[0])
                {
                  v224 = buf;
LABEL_486:
                  re::StringID::operator=(v224->n128_u64, &__dst[8]);
LABEL_489:
                  if (__dst[0] == 1)
                  {
                    re::StringID::destroyString(&__dst[8]);
                  }

                  goto LABEL_495;
                }

LABEL_488:
                goto LABEL_489;
              }

LABEL_487:
              __dst[0] = 0;
              a4 = v294;
              goto LABEL_488;
            }

            if (!strcmp(v221, "stiffness"))
            {
              if (*(v219 + 24))
              {
              }

              else
              {
                LODWORD(v345) = *(v219 + 32);
              }

              a4 = v294;
            }

            else
            {
              v222 = strcmp(v221, "damping");
              a4 = v294;
              if (!v222)
              {
                if (*(v219 + 24))
                {
                }

                else
                {
                  DWORD1(v345) = *(v219 + 32);
                }
              }
            }

LABEL_495:
            v219 += 40;
            v220 -= 40;
            if (!v220)
            {
              goto LABEL_501;
            }
          }

          if (*(v219 + 24) == 6)
          {
            v223 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v6 + 21), *(v219 + 32));
            __dst[0] = 1;
            re::StringID::StringID(&__dst[8], v223);
            a4 = v294;
            if (__dst[0])
            {
              v224 = &buf[1];
              goto LABEL_486;
            }

            goto LABEL_488;
          }

          goto LABEL_487;
        }
      }

LABEL_373:
      v360[0] = 0;
      buf[0].n128_u64[0] = 0xABCEC87F22A13454;
      buf[0].n128_u64[1] = "Renormalization";
      goto LABEL_457;
    }

    v29 = strcmp(v26, "Skinning");
    if (!v29)
    {
      goto LABEL_37;
    }

    if (v28 == 0x22A83AADBD1)
    {
      if (v26 == "Skinning")
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    v34 = strcmp(v26, "SmoothDeformer");
    if (!v34)
    {
      goto LABEL_69;
    }

    if (v28 != 0x2D6F1CB4C5FBF820)
    {
      goto LABEL_64;
    }

    if (v26 == "SmoothDeformer")
    {
LABEL_69:
      LOBYTE(v309) = 0;
      buf[0].n128_u64[0] = 0x5ADE39698BF7F040;
      buf[0].n128_u64[1] = "SmoothDeformer";
      *__dst = &v309;
      *&__dst[8] = 1;
      *&v345 = 0;
      buf[1] = 0uLL;
      re::FixedArray<unsigned char>::copy(buf[1].n128_u64, __dst);
      re::DynamicArray<re::DeformationDefinition>::add(&v320, buf);
      v41 = buf[1].n128_u64[0];
      if (buf[1].n128_u64[0])
      {
        if (buf[1].n128_u64[1])
        {
          v41 = (*(*buf[1].n128_u64[0] + 40))();
          buf[1].n128_u64[1] = 0;
          *&v345 = 0;
        }

        buf[1].n128_u64[0] = 0;
      }

      if (buf[0].n128_u8[0])
      {
        if (buf[0].n128_u8[0])
        {
        }
      }

      if (!re::ecs2::EntityAssetData::tryGetComponent<re::ecs2::MeshSmoothComponent>(v22))
      {
        if (!*(v22 + 4))
        {
          re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v22 + 4, 0);
          ++*(v22 + 14);
        }

        v42 = (*(**(re::ecs2::ComponentImpl<re::ecs2::MeshSmoothComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::MeshSmoothComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 336, 0);
        *v42 = 0u;
        *(v42 + 16) = 0u;
        *(v42 + 32) = 0u;
        *(v42 + 48) = 0u;
        *(v42 + 64) = 0u;
        *(v42 + 80) = 0u;
        *(v42 + 96) = 0u;
        *(v42 + 112) = 0u;
        *(v42 + 128) = 0u;
        *(v42 + 144) = 0u;
        *(v42 + 160) = 0u;
        *(v42 + 176) = 0u;
        *(v42 + 192) = 0u;
        *(v42 + 208) = 0u;
        *(v42 + 224) = 0u;
        *(v42 + 240) = 0u;
        *(v42 + 256) = 0u;
        *(v42 + 272) = 0u;
        *(v42 + 288) = 0u;
        *(v42 + 304) = 0u;
        *(v42 + 320) = 0u;
        ArcSharedObject::ArcSharedObject(v42, 0);
        *(v43 + 16) = 0;
        *(v43 + 24) = 0;
        *v43 = &unk_1F5CD0EC0;
        *(v43 + 40) = 0;
        *(v43 + 48) = 0;
        *(v43 + 32) = 0;
        *(v43 + 56) = 0;
        *(v43 + 64) = 0u;
        *(v43 + 80) = 0u;
        *(v43 + 96) = 0;
        *(v43 + 104) = 0u;
        *(v43 + 120) = 0u;
        v44 = objc_initWeak((v43 + 136), 0);
        *(v42 + 144) = 0;
        *(v42 + 176) = re::globalAllocators(v44)[2];
        *(v42 + 256) = 0;
        *(v42 + 224) = 0u;
        *(v42 + 240) = 0u;
        *(v42 + 216) = 0;
        *(v42 + 200) = 0u;
        *(v42 + 184) = 0u;
        *(v42 + 264) = 0;
        *(v42 + 272) = 0;
        *(v42 + 280) = -1;
        *(v42 + 304) = 0u;
        *(v42 + 320) = 0u;
        *(v42 + 288) = 0u;
        buf[0].n128_u64[0] = *((*(*v42 + 40))(v42) + 24) >> 1;
        buf[0].n128_u64[1] = v42;
        buf[1].n128_u8[0] = 1;
        re::DynamicArray<re::BufferView>::add((v22 + 32), buf);
        v360[0] = 10;
        v46 = re::globalAllocators(v45);
        v47 = (*(*v46[2] + 32))(v46[2], 40, 8);
        *v47 = 0u;
        *(v47 + 16) = 0u;
        *(v47 + 32) = 0;
        *__dst = &unk_1F5CD0FA0;
        *&__dst[24] = __dst;
        buf[0].n128_u64[0] = v47;
        *&v345 = &buf[0].n128_u64[1];
        buf[0].n128_u64[1] = &unk_1F5CD0FA0;
        re::HashTable<unsigned char,std::unique_ptr<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>,std::function<void ()(re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>*)>>,re::Hash<unsigned char>,re::EqualTo<unsigned char>,true,false>::add(&v325, v360, buf);
        std::unique_ptr<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>,std::function<void ()(re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>*)>>::~unique_ptr[abi:nn200100](buf);
        std::__function::__value_func<void ()(re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension> *)>::~__value_func[abi:nn200100](__dst);
      }

      *&v315.var0 = 0;
      v315.var1 = &str_67;
      LOWORD(v316) = v296;
      v48 = *(v6 + 6);
      if (v48)
      {
        v49 = *(v6 + 8);
        a4 = re::ecs2::EntityAssetData::tryGetComponent<re::ecs2::MeshSmoothComponent>(v22);
        for (j = 40 * v48; j; j -= 40)
        {
          v51 = *(v49 + 16);
          if (!strcmp(v51, "lambda"))
          {
            if (*(v49 + 24))
            {
              buf[0].n128_u8[0] = 0;
              v54 = v49;
              v55 = 0;
LABEL_94:
              goto LABEL_95;
            }

            buf[0].n128_u32[1] = *(v49 + 32);
            buf[0].n128_u8[0] = 1;
            re::DynamicArray<float>::add((a4 + 9), &buf[0].n128_f32[1]);
          }

          else if (!strcmp(v51, "iterations"))
          {
            if (*(v49 + 24) != 1)
            {
              v54 = v49;
              v55 = 1;
              goto LABEL_94;
            }

            buf[0].n128_u32[0] = *(v49 + 32);
            re::DynamicArray<int>::add(a4 + 4, buf);
          }

          else if (!strcmp(v51, "envelopeVarName"))
          {
            if (*(v49 + 24) == 6)
            {
              v52 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v6 + 21), *(v49 + 32));
              buf[0].n128_u8[0] = 1;
              re::StringID::StringID(&buf[0].n128_i8[8], v52);
              if (buf[0].n128_u8[0])
              {
                v53 = re::StringID::operator=(&v315, &buf[0].n128_i64[1]);
LABEL_99:
                if (buf[0].n128_u8[0] == 1 && (buf[0].n128_u8[8] & 1) != 0)
                {
                  if (buf[0].n128_u8[8])
                  {
                  }
                }

                goto LABEL_95;
              }
            }

            else
            {
              buf[0].n128_u8[0] = 0;
            }

            goto LABEL_99;
          }

LABEL_95:
          v49 += 40;
        }
      }

      v56 = *v297;
      v57 = v294[2];
      if (v57 <= v56)
      {
        *v360 = 0;
        v6 = &v325;
        v346 = 0u;
        v347 = 0u;
        v345 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *__dst = 136315906;
        *&__dst[4] = "operator[]";
        *&__dst[12] = 1024;
        *&__dst[14] = 789;
        *&__dst[18] = 2048;
        *&__dst[20] = v56;
        *&__dst[28] = 2048;
        *&__dst[30] = v57;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_571:
        v312 = 0;
        v346 = 0u;
        v347 = 0u;
        v345 = 0u;
        memset(buf, 0, sizeof(buf));
        v281 = v60;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v360 = 136315906;
        *&v360[4] = "operator[]";
        *&v360[12] = 1024;
        *&v360[14] = 789;
        *&v360[18] = 2048;
        *&v360[20] = v281;
        *&v360[28] = 2048;
        *&v360[30] = v57;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_572:
        v312 = 0;
        v346 = 0u;
        v347 = 0u;
        v345 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v360 = 136315906;
        *&v360[4] = "operator[]";
        *&v360[12] = 1024;
        *&v360[14] = 789;
        *&v360[18] = 2048;
        *&v360[20] = v57;
        *&v360[28] = 2048;
        *&v360[30] = a4;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_573:
        v312 = 0;
        v346 = 0u;
        v347 = 0u;
        v345 = 0u;
        memset(buf, 0, sizeof(buf));
        v19 = v144;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v360 = 136315906;
        *&v360[4] = "operator[]";
        *&v360[12] = 1024;
        *&v360[14] = 789;
        *&v360[18] = 2048;
        *&v360[20] = v19;
        *&v360[28] = 2048;
        *&v360[30] = v57;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_574:
        *&v315.var0 = 0;
        v346 = 0u;
        v347 = 0u;
        v345 = 0u;
        memset(buf, 0, sizeof(buf));
        v10 = v231;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v360 = 136315906;
        *&v360[4] = "operator[]";
        *&v360[12] = 1024;
        *&v360[14] = 789;
        *&v360[18] = 2048;
        *&v360[20] = v10;
        *&v360[28] = 2048;
        *&v360[30] = v19;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_575:
        *&v315.var0 = 0;
        v346 = 0u;
        v347 = 0u;
        v345 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v360 = 136315906;
        *&v360[4] = "operator[]";
        *&v360[12] = 1024;
        *&v360[14] = 789;
        *&v360[18] = 2048;
        *&v360[20] = v19;
        *&v360[28] = 2048;
        *&v360[30] = v10;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_576:
        *&v315.var0 = 0;
        v346 = 0u;
        v347 = 0u;
        v345 = 0u;
        memset(buf, 0, sizeof(buf));
        v10 = v233;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v360 = 136315906;
        *&v360[4] = "operator[]";
        *&v360[12] = 1024;
        *&v360[14] = 789;
        *&v360[18] = 2048;
        *&v360[20] = v10;
        *&v360[28] = 2048;
        *&v360[30] = v19;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_577:
        v312 = 0;
        v346 = 0u;
        v347 = 0u;
        v345 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *__dst = 136315906;
        *&__dst[4] = "operator[]";
        *&__dst[12] = 1024;
        *&__dst[14] = 789;
        *&__dst[18] = 2048;
        *&__dst[20] = v19;
        *&__dst[28] = 2048;
        *&__dst[30] = v10;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_578:
        *&v315.var0 = 0;
        v346 = 0u;
        v347 = 0u;
        v345 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v360 = 136315906;
        *&v360[4] = "operator[]";
        *&v360[12] = 1024;
        *&v360[14] = 789;
        *&v360[18] = 2048;
        *&v360[20] = v19;
        *&v360[28] = 2048;
        *&v360[30] = v10;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_579:
        re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, v19, v20);
        _os_crash();
        __break(1u);
LABEL_580:
        *v360 = 0;
        v209 = &v325;
        v346 = 0u;
        v347 = 0u;
        v345 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *__dst = 136315906;
        *&__dst[4] = "operator[]";
        *&__dst[12] = 1024;
        *&__dst[14] = 866;
        *&__dst[18] = 2048;
        *&__dst[20] = v10;
        *&__dst[28] = 2048;
        *&__dst[30] = v6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_581:
        *v360 = 0;
        v346 = 0u;
        v347 = 0u;
        v345 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *__dst = 136315906;
        *&__dst[4] = "operator[]";
        *&__dst[12] = 1024;
        *&__dst[14] = 789;
        *&__dst[18] = 2048;
        *&__dst[20] = v209;
        *&__dst[28] = 2048;
        *&__dst[30] = v10;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_582:
        v312 = 0;
        v346 = 0u;
        v347 = 0u;
        v345 = 0u;
        memset(buf, 0, sizeof(buf));
        v282 = v212;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v360 = 136315906;
        *(a2 + 4) = "operator[]";
        *&v360[12] = 1024;
        *(a2 + 14) = 789;
        *&v360[18] = 2048;
        *(a2 + 20) = v282;
        *&v360[28] = 2048;
        *(a2 + 30) = v10;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_583:
        v312 = 0;
        v346 = 0u;
        v347 = 0u;
        v345 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v360 = 136315906;
        *(a2 + 4) = "operator[]";
        *&v360[12] = 1024;
        *(a2 + 14) = 789;
        *&v360[18] = 2048;
        *(a2 + 20) = v10;
        *&v360[28] = 2048;
        *(a2 + 30) = a4;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_584:
        v312 = 0;
        v346 = 0u;
        v347 = 0u;
        v345 = 0u;
        memset(buf, 0, sizeof(buf));
        v19 = v215;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v360 = 136315906;
        *(a2 + 4) = "operator[]";
        *&v360[12] = 1024;
        *(a2 + 14) = 789;
        *&v360[18] = 2048;
        *(a2 + 20) = v19;
        *&v360[28] = 2048;
        *(a2 + 30) = v10;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_585:
        *v360 = 0;
        v346 = 0u;
        v347 = 0u;
        v345 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *__dst = 136315906;
        *&__dst[4] = "operator[]";
        *&__dst[12] = 1024;
        *&__dst[14] = 789;
        *&__dst[18] = 2048;
        *&__dst[20] = v19;
        *&__dst[28] = 2048;
        *&__dst[30] = v10;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_586:
        v312 = 0;
        v330 = 0u;
        v331 = 0u;
        memset(__dst, 0, sizeof(__dst));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v360 = 136315906;
        *(a2 + 4) = "operator[]";
        *&v360[12] = 1024;
        *(a2 + 14) = 789;
        *&v360[18] = 2048;
        *(a2 + 20) = v19;
        *&v360[28] = 2048;
        *(a2 + 30) = v10;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_587:
        v312 = 0;
        v330 = 0u;
        v331 = 0u;
        memset(__dst, 0, sizeof(__dst));
        v283 = v179;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v360 = 136315906;
        *(a2 + 4) = "operator[]";
        *&v360[12] = 1024;
        *(a2 + 14) = 789;
        *&v360[18] = 2048;
        *(a2 + 20) = v283;
        *&v360[28] = 2048;
        *(a2 + 30) = v19;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      re::DynamicArray<re::MeshAssetSmoothDeformerData>::add((v294[4] + (v56 << 9) + 352), &v315);
      if (v325)
      {
        v58 = v326;
        v59 = *(*(&v325 + 1) + 4 * (0x75C8519A9320579uLL % DWORD2(v326)));
        v60 = v293;
        if (v59 == 0x7FFFFFFF)
        {
LABEL_108:
          v59 = 0x7FFFFFFFLL;
        }

        else
        {
          while (*(v326 + 56 * v59 + 4) != 10)
          {
            v59 = *(v326 + 56 * v59) & 0x7FFFFFFF;
            if (v59 == 0x7FFFFFFF)
            {
              goto LABEL_108;
            }
          }
        }
      }

      else
      {
        v58 = v326;
        v59 = 0x7FFFFFFFLL;
        v60 = v293;
      }

      v142 = *(v58 + 56 * v59 + 8);
      __dst[0] = 1;
      v57 = v294[7];
      if (v57 <= v60)
      {
        goto LABEL_571;
      }

      re::StringID::StringID(&__dst[8], (v294[9] + 96 * v60));
      v57 = *v297;
      a4 = v294[2];
      if (a4 <= v57)
      {
        goto LABEL_572;
      }

      v143 = v294[4] + (v57 << 9);
      v57 = *(v143 + 208);
      v144 = v295;
      if (v57 <= v295)
      {
        goto LABEL_573;
      }

      a4 = v294;
      v145 = *(v143 + 224) + (v295 << 8);
LABEL_304:
      re::StringID::StringID(&__dst[24], (v145 + 72));
      v141 = re::DynamicArray<re::MeshIdentifierAsset>::add(v142, __dst);
      if (__dst[24])
      {
        if (__dst[24])
        {
        }
      }

      *&__dst[32] = &str_67;
      *&__dst[24] = 0;
      if (__dst[8])
      {
        if (__dst[8])
        {
        }
      }

LABEL_310:
      if ((*&v315.var0 & 1) == 0)
      {
        goto LABEL_57;
      }

      if ((*&v315.var0 & 1) == 0)
      {
        goto LABEL_57;
      }

LABEL_312:
      goto LABEL_57;
    }

    v39 = strcmp(v26, "WrapDeformer");
    if (!v39)
    {
      goto LABEL_109;
    }

LABEL_67:
    v40 = strcmp(v26, "ContactDeformer");
    if (v40)
    {
      goto LABEL_318;
    }

LABEL_323:
    LOBYTE(v309) = 0;
    buf[0].n128_u64[0] = 0x22F387A552F200A4;
    buf[0].n128_u64[1] = "ContactDeformer";
    *__dst = &v309;
    *&__dst[8] = 1;
    *&v345 = 0;
    buf[1] = 0uLL;
    re::FixedArray<unsigned char>::copy(buf[1].n128_u64, __dst);
    re::DynamicArray<re::DeformationDefinition>::add(&v320, buf);
    v148 = buf[1].n128_u64[0];
    if (buf[1].n128_u64[0])
    {
      if (buf[1].n128_u64[1])
      {
        v148 = (*(*buf[1].n128_u64[0] + 40))();
        buf[1].n128_u64[1] = 0;
        *&v345 = 0;
      }

      buf[1].n128_u64[0] = 0;
    }

    if (buf[0].n128_u8[0])
    {
      if (buf[0].n128_u8[0])
      {
      }
    }

    *__dst = 0;
    *&__dst[8] = &str_67;
    memset(&__dst[16], 0, 24);
    *&__dst[40] = v296;
    v149 = *(v6 + 11);
    v150 = *(v6 + 6);
    if (v150)
    {
      v151 = *(v6 + 8);
      v152 = 40 * v150;
      while (strcmp(*(v151 + 16), "offsetsVarName"))
      {
LABEL_342:
        v151 += 40;
        v152 -= 40;
        if (!v152)
        {
          goto LABEL_343;
        }
      }

      if (*(v151 + 24) == 6)
      {
        v153 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v6 + 21), *(v151 + 32));
        buf[0].n128_u8[0] = 1;
        re::StringID::StringID(&buf[0].n128_i8[8], v153);
        if (buf[0].n128_u8[0])
        {
          v154 = re::StringID::operator=(__dst, &buf[0].n128_i64[1]);
LABEL_338:
          if (buf[0].n128_u8[0] == 1 && (buf[0].n128_u8[8] & 1) != 0)
          {
            if (buf[0].n128_u8[8])
            {
            }
          }

          goto LABEL_342;
        }
      }

      else
      {
        buf[0].n128_u8[0] = 0;
      }

      goto LABEL_338;
    }

LABEL_343:
    v155 = *(v6 + 11);
    if (v155)
    {
      break;
    }

LABEL_365:
    v19 = *v297;
    a4 = v294;
    v10 = v294[2];
    if (v10 <= v19)
    {
      goto LABEL_578;
    }

    re::DynamicArray<re::MeshAssetContactDeformerData>::add((v294[4] + (v19 << 9) + 312), __dst);
    v22 = a1;
    a2 = v360;
    if (!re::ecs2::EntityAssetData::tryGetComponent<re::ecs2::SkeletalPoseComponent>(a1))
    {
      re::ecs2::EntityAssetData::addComponent<re::ecs2::SkeletalPoseComponent>(a1);
    }

    if (!re::ecs2::EntityAssetData::tryGetComponent<re::ecs2::RigComponent>(a1))
    {
      re::ecs2::EntityAssetData::addComponent<re::ecs2::RigComponent>(a1);
    }

    v166 = re::FixedArray<re::MeshAssetContactDeformerTarget>::deinit(&__dst[16]);
    if (__dst[0])
    {
      if (__dst[0])
      {
        goto LABEL_312;
      }
    }

LABEL_57:
    v6 += 28;
    if (v6 == v298)
    {
      goto LABEL_509;
    }
  }

  v156 = 0;
  v157 = *(v6 + 13);
  a2 = (v157 + 40 * v155);
  while (1)
  {
    v158 = *(v157 + 16);
    if (v158)
    {
      break;
    }

LABEL_364:
    ++v156;
    v157 += 40;
    if (v157 == a2)
    {
      goto LABEL_365;
    }
  }

  v159 = *(v157 + 32);
  v160 = 40 * v158;
  while (2)
  {
    v161 = *(v159 + 16);
    if (strcmp(v161, "jointIndex"))
    {
      if (!strcmp(v161, "radius"))
      {
        if (!*(v159 + 24))
        {
          a4 = *&__dst[24];
          if (*&__dst[24] <= v156)
          {
            goto LABEL_527;
          }

          *(*&__dst[32] + 32 * v156 + 4) = *(v159 + 32);
LABEL_363:
          v159 += 40;
          v160 -= 40;
          if (!v160)
          {
            goto LABEL_364;
          }

          continue;
        }

        v164 = v159;
        v165 = 0;
      }

      else
      {
        if (strcmp(v161, "heightMap"))
        {
          goto LABEL_363;
        }

        if (*(v159 + 24) == 3)
        {
          v162 = re::BucketArray<re::FixedArray<int>,8ul>::operator[](v6 + 168, *(v159 + 32));
          v163 = *v159;
          v315.var1 = *(v162 + 16);
          v316 = v163;
          *&v315.var0 = 1;
          a4 = *&__dst[24];
          if (*&__dst[24] <= v156)
          {
            goto LABEL_528;
          }

          re::FixedArray<int>::operator=((*&__dst[32] + 32 * v156 + 8), &v315.var1);
          goto LABEL_363;
        }

        *&v315.var0 = 0;
        v164 = v159;
        v165 = 3;
      }

LABEL_362:
      goto LABEL_363;
    }

    break;
  }

  if (*(v159 + 24) != 1)
  {
    v164 = v159;
    v165 = 1;
    goto LABEL_362;
  }

  a4 = *&__dst[24];
  if (*&__dst[24] > v156)
  {
    *(*&__dst[32] + 32 * v156) = *(v159 + 32);
    goto LABEL_363;
  }

  *&v315.var0 = 0;
  v346 = 0u;
  v347 = 0u;
  v345 = 0u;
  memset(buf, 0, sizeof(buf));
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v360 = 136315906;
  *&v360[4] = "operator[]";
  *&v360[12] = 1024;
  *&v360[14] = 468;
  *&v360[18] = 2048;
  *&v360[20] = v156;
  *&v360[28] = 2048;
  *&v360[30] = a4;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_527:
  *&v315.var0 = 0;
  v346 = 0u;
  v347 = 0u;
  v345 = 0u;
  memset(buf, 0, sizeof(buf));
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v360 = 136315906;
  *&v360[4] = "operator[]";
  *&v360[12] = 1024;
  *&v360[14] = 468;
  *&v360[18] = 2048;
  *&v360[20] = v156;
  *&v360[28] = 2048;
  *&v360[30] = a4;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_528:
  v312 = 0;
  v346 = 0u;
  v347 = 0u;
  v345 = 0u;
  memset(buf, 0, sizeof(buf));
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v360 = 136315906;
  *&v360[4] = "operator[]";
  *&v360[12] = 1024;
  *&v360[14] = 468;
  *&v360[18] = 2048;
  *&v360[20] = v156;
  *&v360[28] = 2048;
  *&v360[30] = a4;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_529:
  LODWORD(v235) = 0;
LABEL_530:
  if (v235 != v23)
  {
    v238 = v326;
    while (1)
    {
      v239 = v238 + 56 * v235;
      v240 = *(v239 + 4);
      if (v240 == 9)
      {
        break;
      }

      if (v240 == 10)
      {
        v241 = re::ecs2::EntityAssetData::tryGetComponent<re::ecs2::MeshSmoothComponent>(a1);
        v242 = *(a3 + 104);
        v243 = *a2;
        v244 = *(a2 + 1);
        v245 = *(v239 + 8);
        *(v239 + 8) = 0;
        v246 = re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>::assetType();
        v247 = re::ImportAssetTable::addAsset(v242, v243, v244, v245, v246);
        if (*(v247 + 8))
        {
          v248 = *(v247 + 16);
        }

        else
        {
          v248 = (v247 + 9);
        }

        v256 = (v241 + 112);
LABEL_542:
        a4 = v294;
        a2 = v284;
      }

      if (v23 <= v235 + 1)
      {
        v257 = v235 + 1;
      }

      else
      {
        v257 = v23;
      }

      while (v257 - 1 != v235)
      {
        LODWORD(v235) = v235 + 1;
        if ((*(v238 + 56 * v235) & 0x80000000) != 0)
        {
          goto LABEL_550;
        }
      }

      LODWORD(v235) = v257;
LABEL_550:
      if (v235 == v23)
      {
        goto LABEL_551;
      }
    }

    v249 = re::ecs2::EntityAssetData::tryGetComponent<re::ecs2::MeshOffsetsComponent>(a1);
    v250 = *(a3 + 104);
    v251 = *a2;
    v252 = *(a2 + 1);
    v253 = *(v239 + 8);
    *(v239 + 8) = 0;
    v254 = re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>::assetType();
    v255 = re::ImportAssetTable::addAsset(v250, v251, v252, v253, v254);
    if (*(v255 + 8))
    {
      v248 = *(v255 + 16);
    }

    else
    {
      v248 = (v255 + 9);
    }

    v256 = (v249 + 72);
    goto LABEL_542;
  }

LABEL_551:
  v258 = v366;
  if (*(v366 + 7))
  {
    v259 = re::ecs2::EntityAssetData::addComponent<re::ecs2::MeshDeformationComponent>(a1);
    v260 = *(a3 + 104);
    v261 = *a2;
    v262 = *(a2 + 1);
    v263 = v366;
    v366 = 0;
    v264 = re::MeshDeformationAsset::assetType(v259);
    v265 = re::ImportAssetTable::addAsset(v260, v261, v262, v263, v264);
    if (*(v265 + 8))
    {
      v266 = *(v265 + 16);
    }

    else
    {
      v266 = (v265 + 9);
    }
  }

  else
  {
    re::DynamicArray<re::DeformationStackDefinition>::deinit(v366);
    v267 = re::DynamicArray<re::MeshDeformationIndex>::deinit(v258 + 40);
    v268 = v366;
    if (*(v366 + 7))
    {
      v269 = re::ecs2::EntityAssetData::addComponent<re::ecs2::MeshDeformationComponent>(a1);
      v270 = *(a3 + 104);
      v271 = *a2;
      v272 = *(a2 + 1);
      v273 = v366;
      v366 = 0;
      v274 = re::MeshDeformationAsset::assetType(v269);
      v275 = re::ImportAssetTable::addAsset(v270, v271, v272, v273, v274);
      if (*(v275 + 8))
      {
        v276 = *(v275 + 16);
      }

      else
      {
        v276 = (v275 + 9);
      }

      a4 = v294;
    }

    if (a4[12])
    {
      re::ecs2::EntityAssetData::addComponent<re::ecs2::SkeletalPoseComponent>(a1);
      re::ecs2::EntityAssetData::addComponent<re::ecs2::RigComponent>(a1);
    }

    v278 = a4[2];
    if (v278)
    {
      v279 = (a4[4] + 128);
      v280 = v278 << 9;
      while (!*v279)
      {
        v279 += 64;
        v280 -= 512;
        if (!v280)
        {
          goto LABEL_559;
        }
      }

      re::ecs2::EntityAssetData::addComponent<re::ecs2::BlendShapeWeightsComponent>(a1);
    }
  }

LABEL_559:
  re::HashTable<unsigned char,std::unique_ptr<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>,std::function<void ()(re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>*)>>,re::Hash<unsigned char>,re::EqualTo<unsigned char>,true,false>::deinit(&v325);
  return std::unique_ptr<re::MeshDeformationAsset,std::function<void ()(re::MeshDeformationAsset*)>>::~unique_ptr[abi:nn200100](&v366);
}