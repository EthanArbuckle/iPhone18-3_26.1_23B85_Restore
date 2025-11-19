unsigned int *re::snapshotMapFields<re::snapshot::EncoderOPACK>(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 16);
  if (v4 >= *(a1 + 20))
  {
    re::snapshot::EncoderOPACK::writeInteger(a1, 1);
  }

  else
  {
    v5 = *(a1 + 8);
    *(a1 + 16) = v4 + 1;
    *(v5 + v4) = 9;
  }

  re::snapshot::EncoderOPACK::writeInteger(a1, *a2);
  v6 = *(a1 + 16);
  if (v6 >= *(a1 + 20))
  {
    re::snapshot::EncoderOPACK::writeInteger(a1, 2);
  }

  else
  {
    v7 = *(a1 + 8);
    *(a1 + 16) = v6 + 1;
    *(v7 + v6) = 10;
  }

  re::snapshot::EncoderOPACK::writeInteger(a1, a2[1]);
  v8 = *(a1 + 16);
  if (v8 >= *(a1 + 20))
  {
    re::snapshot::EncoderOPACK::writeInteger(a1, 3);
  }

  else
  {
    v9 = *(a1 + 8);
    *(a1 + 16) = v8 + 1;
    *(v9 + v8) = 11;
  }

  re::snapshot::EncoderOPACK::writeInteger(a1, a2[2]);
  v10 = *(a1 + 16);
  if (v10 >= *(a1 + 20))
  {
    re::snapshot::EncoderOPACK::writeInteger(a1, 4);
  }

  else
  {
    v11 = *(a1 + 8);
    *(a1 + 16) = v10 + 1;
    *(v11 + v10) = 12;
  }

  v12 = strlen(*(a2 + 3));
  re::snapshot::EncoderOPACK::serializeString(a1, *(a2 + 3), v12);
  v13 = *(a1 + 16);
  if (v13 >= *(a1 + 20))
  {
    re::snapshot::EncoderOPACK::writeInteger(a1, 5);
  }

  else
  {
    v14 = *(a1 + 8);
    *(a1 + 16) = v13 + 1;
    *(v14 + v13) = 13;
  }

  re::snapshot::EncoderOPACK::writeInteger(a1, a2[8]);
  v15 = *(a1 + 16);
  if (v15 >= *(a1 + 20))
  {
    re::snapshot::EncoderOPACK::writeInteger(a1, 6);
  }

  else
  {
    v16 = *(a1 + 8);
    *(a1 + 16) = v15 + 1;
    *(v16 + v15) = 14;
  }

  re::snapshot::EncoderOPACK::writeInteger(a1, *(a2 + 18));
  v17 = *(a1 + 16);
  if (v17 >= *(a1 + 20))
  {
    re::snapshot::EncoderOPACK::writeInteger(a1, 7);
  }

  else
  {
    v18 = *(a1 + 8);
    *(a1 + 16) = v17 + 1;
    *(v18 + v17) = 15;
  }

  re::snapshot::EncoderOPACK::writeInteger(a1, a2[16]);
  v19 = *(a1 + 16);
  if (v19 >= *(a1 + 20))
  {
    re::snapshot::EncoderOPACK::writeInteger(a1, 8);
  }

  else
  {
    v20 = *(a1 + 8);
    *(a1 + 16) = v19 + 1;
    *(v20 + v19) = 16;
  }

  v21 = *(a2 + 6);
  re::snapshot::EncoderOPACK::beginArray(a1, v21);
  v22 = *(a2 + 6);
  if (v22)
  {
    v23 = *(a2 + 7);
    v24 = 80 * v22;
    do
    {
      re::snapshot::EncoderOPACK::beginObject(a1);
      re::snapshotMapFields<re::snapshot::EncoderOPACK>(a1, v23);
      re::snapshot::EncoderOPACK::endObject(a1);
      v23 += 80;
      v24 -= 80;
    }

    while (v24);
  }

  re::snapshot::EncoderOPACK::endArray(a1, v21);
  v25 = *(a1 + 16);
  if (v25 >= *(a1 + 20))
  {
    re::snapshot::EncoderOPACK::writeInteger(a1, 9);
  }

  else
  {
    v26 = *(a1 + 8);
    *(a1 + 16) = v25 + 1;
    *(v26 + v25) = 17;
  }

  re::snapshot::EncoderOPACK::operator<<(a1, *(a2 + 68));
  v27 = *(a1 + 16);
  if (v27 >= *(a1 + 20))
  {
    re::snapshot::EncoderOPACK::writeInteger(a1, 10);
  }

  else
  {
    v28 = *(a1 + 8);
    *(a1 + 16) = v27 + 1;
    *(v28 + v27) = 18;
  }

  re::snapshot::EncoderOPACK::writeInteger(a1, a2[18]);
  v29 = *(a1 + 16);
  if (v29 >= *(a1 + 20))
  {
    re::snapshot::EncoderOPACK::writeInteger(a1, 11);
  }

  else
  {
    v30 = *(a1 + 8);
    *(a1 + 16) = v29 + 1;
    *(v30 + v29) = 19;
  }

  re::snapshot::EncoderOPACK::operator<<(a1, *(a2 + 76));
  v31 = *(a1 + 16);
  if (v31 >= *(a1 + 20))
  {
    re::snapshot::EncoderOPACK::writeInteger(a1, 12);
  }

  else
  {
    v32 = *(a1 + 8);
    *(a1 + 16) = v31 + 1;
    *(v32 + v31) = 20;
  }

  v33 = *(a2 + 77);

  return re::snapshot::EncoderOPACK::operator<<(a1, v33);
}

void re::sg::Material::getCustomUniformsArgument(id *this@<X0>, uint64_t a2@<X8>)
{
  v64 = *MEMORY[0x1E69E9840];
  v3 = [*this customUniformsType];
  v4 = v3;
  if (v3 && ([v3 properties], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6))
  {
    v38[0] = 2330;
    v38[1] = "$1";
    v36 = v4;
    v7 = v4;
    *a2 = 0;
    *(a2 + 8) = &str_67;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 1;
    *(a2 + 40) = 0;
    *(a2 + 56) = 0;
    *(a2 + 48) = &str_67;
    *(a2 + 60) = 0;
    *(a2 + 64) = 0;
    *(a2 + 96) = 0;
    *(a2 + 100) = 256;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 85) = 0;
    *(a2 + 104) = 0;
    re::StringID::operator=(a2, v38);
    v8 = [v7 properties];
    v9 = [v8 count];

    v42 = 0;
    v43 = 1;
    v44[0] = 0;
    v44[1] = &str_67;
    v45 = 0;
    *&v49[16] = 0;
    *&v49[20] = 256;
    v48 = 0;
    *v49 = 0;
    v47 = 0;
    *&v49[5] = 0;
    v46 = 1;
    if (v9)
    {
      v12 = 0;
      v37 = 0;
      v13 = 0;
      v14 = 77;
      while (1)
      {
        v15 = [v7 properties];
        v16 = [v15 objectAtIndexedSubscript:v12];

        v17 = [v16 name];
        v18 = [v17 UTF8String];
        v40 = 0;
        v41 = &str_67;
        v19 = v48;
        if (v48 <= v12)
        {
          break;
        }

        v20 = re::StringID::operator=((*v49 + v14 - 61), &v40);
        if (v40)
        {
          if (v40)
          {
          }
        }

        v40 = 0;
        v41 = &str_67;

        v50 = 0;
        v21 = [v16 type];
        v22 = [v21 getMTLDataType:&v50];

        if (v22)
        {
          v19 = v48;
          if (v48 <= v12)
          {
            goto LABEL_41;
          }

          v23 = v50;
          *(*v49 + v14 - 41) = v50;
        }

        else
        {
          v23 = v50;
        }

        if (v23 == 58)
        {
          v39 = 0;
          v24 = [v16 type];
          v25 = [v24 getMTLTextureType:&v39];

          if (v25)
          {
            v19 = v48;
            if (v48 <= v12)
            {
              goto LABEL_42;
            }

            *(*v49 + v14 - 13) = v39;
          }

          v37 = 1;
        }

        v19 = v48;
        if (v48 <= v12)
        {
          goto LABEL_36;
        }

        *(*v49 + v14 - 5) = v12;
        v26 = [v16 type];
        v27 = [v26 size];
        v19 = v48;
        if (v48 <= v12)
        {
          goto LABEL_37;
        }

        *(*v49 + v14 - 73) = v27;

        v28 = [v16 type];
        v29 = [v28 alignment];
        v19 = v48;
        if (v48 <= v12)
        {
          goto LABEL_38;
        }

        *(*v49 + v14 - 69) = v29;

        v30 = [v16 type];
        v31 = [v30 offset];
        v19 = v48;
        if (v48 <= v12)
        {
          goto LABEL_39;
        }

        *(*v49 + v14 - 77) = v31;

        v32 = [v16 visible];
        v19 = v48;
        if (v48 <= v12)
        {
          goto LABEL_40;
        }

        v33 = (*v49 + v14);
        *v33 = v32;
        v34 = *(v33 - 69);
        if (v34 > v13)
        {
          v13 = v34;
        }

        ++v12;
        v14 += 80;
        if (v9 == v12)
        {
          goto LABEL_29;
        }
      }

      v50 = 0;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v59 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v51 = 136315906;
      v52 = "operator[]";
      v53 = 1024;
      v54 = 468;
      v55 = 2048;
      v56 = v12;
      v57 = 2048;
      v58 = v19;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_36:
      v40 = 0;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v59 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v51 = 136315906;
      v52 = "operator[]";
      v53 = 1024;
      v54 = 468;
      v55 = 2048;
      v56 = v12;
      v57 = 2048;
      v58 = v19;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_37:
      v40 = 0;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v59 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v51 = 136315906;
      v52 = "operator[]";
      v53 = 1024;
      v54 = 468;
      v55 = 2048;
      v56 = v12;
      v57 = 2048;
      v58 = v19;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_38:
      v40 = 0;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v59 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v51 = 136315906;
      v52 = "operator[]";
      v53 = 1024;
      v54 = 468;
      v55 = 2048;
      v56 = v12;
      v57 = 2048;
      v58 = v19;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_39:
      v40 = 0;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v59 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v51 = 136315906;
      v52 = "operator[]";
      v53 = 1024;
      v54 = 468;
      v55 = 2048;
      v56 = v12;
      v57 = 2048;
      v58 = v19;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_40:
      v40 = 0;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v59 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v51 = 136315906;
      v52 = "operator[]";
      v53 = 1024;
      v54 = 468;
      v55 = 2048;
      v56 = v12;
      v57 = 2048;
      v58 = v19;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_41:
      v40 = 0;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v59 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v51 = 136315906;
      v52 = "operator[]";
      v53 = 1024;
      v54 = 468;
      v55 = 2048;
      v56 = v12;
      v57 = 2048;
      v58 = v19;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_42:
      v40 = 0;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v59 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v51 = 136315906;
      v52 = "operator[]";
      v53 = 1024;
      v54 = 468;
      v55 = 2048;
      v56 = v12;
      v57 = 2048;
      v58 = v19;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_43:
      re::internal::assertLog(4, v11, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 454);
      _os_crash();
      __break(1u);
    }

    v13 = 0;
    v37 = 0;
LABEL_29:
    v49[20] = v37;
    v43 = v13;
    if (!v48)
    {
      goto LABEL_43;
    }

    HIDWORD(v42) = *(*v49 + 80 * v48 - 76) + *(*v49 + 80 * v48 - 80);
    *(a2 + 32) = v43;
    *(a2 + 24) = v42;
    re::StringID::operator=((a2 + 40), v44);
    *(a2 + 56) = v45;
    *(a2 + 60) = v46;
    re::FixedArray<re::MetalTypeInfo>::operator=((a2 + 64), &v47);
    *(a2 + 88) = *&v49[8];
    *(a2 + 94) = *&v49[14];
    v35 = re::FixedArray<re::MetalTypeInfo>::deinit(&v47);
    if (v44[0])
    {
      if (v44[0])
      {
      }
    }

    *(a2 + 16) = 1;
    v4 = v36;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = &str_67;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 32) = 1;
    *(a2 + 48) = &str_67;
    *(a2 + 60) = 0;
    *(a2 + 100) = 256;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 85) = 0;
    *(a2 + 104) = 0;
  }
}

void re::sg::Material::getPublicUniforms(id *this@<X0>, uint64_t *a2@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v10 = [*this uniforms];
  v3 = [v10 count];
  if ([v10 count])
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = [v10 objectAtIndex:v5];
      v7 = [v6 name];
      v8 = v7;
      v11[0] = v8;

      v9 = a2[1];
      if (v9 <= v5)
      {
        v11[1] = 0;
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v20 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v12 = 136315906;
        v13 = "operator[]";
        v14 = 1024;
        v15 = 468;
        v16 = 2048;
        v17 = v5;
        v18 = 2048;
        v19 = v9;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      NS::SharedPtr<MTL::Buffer>::operator=((a2[2] + v4), v11);
      if (v8)
      {
      }

      ++v5;
      v4 += 8;
    }

    while (v5 < [v10 count]);
  }
}

uint64_t re::sg::Material::hasConnectedLightSpillNodesWithRoughness(void **this)
{
  v1 = *this;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v1 hasConnectedLightSpillNodesWithRoughness];
}

const char *re::sg::Material::materialDefinitionPath(id *this)
{
  v2 = [*this lightingModel];
  v3 = [*this blending];
  v4 = "engine:surfaceShader.rematerialdefinition";
  v5 = "engine:surfaceShaderClearcoatTransparent.rematerialdefinition";
  if (v3 != 1)
  {
    v5 = "engine:surfaceShader.rematerialdefinition";
  }

  if (!v3)
  {
    v5 = "engine:surfaceShaderClearcoat.rematerialdefinition";
  }

  if (v3 == 1)
  {
    v6 = "engine:surfaceShaderUnlitTransparent.rematerialdefinition";
  }

  else
  {
    v6 = "engine:surfaceShader.rematerialdefinition";
  }

  if (!v3)
  {
    v6 = "engine:surfaceShaderUnlit.rematerialdefinition";
  }

  v7 = "engine:surfaceShaderTransparent.rematerialdefinition";
  if (v3 != 1)
  {
    v7 = "engine:surfaceShader.rematerialdefinition";
  }

  if (v2 == 1)
  {
    v4 = v7;
  }

  if (v2 == 2)
  {
    v4 = v6;
  }

  if (v2 == 3)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

uint64_t re::sg::Material::hasGeometryModifierWithModelPositionOffset(id *this)
{
  v1 = *this;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 hasGeometryModifierOffset];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t re::sg::CachedCompilationMaterial::CachedCompilationMaterial(uint64_t a1, uint64_t *a2, id *a3, id *a4)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5D08D78;
  *(a1 + 24) = *a4;
  *(a1 + 32) = *a3;
  v8 = *a2;
  *a2 = 0;
  *(a1 + 40) = v8;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0x7FFFFFFFLL;
  *(a1 + 104) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = &str_67;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 1;
  *(a1 + 176) = 0;
  *(a1 + 184) = &str_67;
  *(a1 + 192) = 0;
  *(a1 + 196) = 0;
  *(a1 + 232) = 0;
  *(a1 + 236) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 221) = 0;
  *(a1 + 216) = 0;
  *(a1 + 237) = 1;
  *(a1 + 240) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0;
  v9 = re::sg::Material::materialDefinitionPath((a1 + 40));
  *(a1 + 272) = 0;
  *(a1 + 280) = &str_67;
  v10 = [*(a1 + 40) hasBackgroundBlur];
  *(a1 + 288) = 1;
  *(a1 + 289) = v10;
  *(a1 + 290) = 0;
  *(a1 + 328) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 296) = 0;
  *(a1 + 320) = 0;
  *(a1 + 336) = 0;
  v11 = [*a3 config];
  v12 = [v11 functionConstantInputs];

  if ([v12 count])
  {
    v13 = 0;
    do
    {
      v14 = [v12 objectAtIndexedSubscript:{v13, *&v19[0]}];
      v15 = [v14 name];
      v16 = [v15 UTF8String];
      v17 = re::DynamicArray<re::DynamicString>::add((a1 + 296), v19);
      if (*&v19[0])
      {
        if (BYTE8(v19[0]))
        {
          (*(**&v19[0] + 40))(v17);
        }

        memset(v19, 0, sizeof(v19));
      }

      ++v13;
    }

    while (v13 < [v12 count]);
  }

  return a1;
}

uint64_t re::sg::CachedCompilationMaterial::CachedCompilationMaterial(uint64_t a1, const __CFData *a2, id *a3, id *a4)
{
  v79 = *MEMORY[0x1E69E9840];
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5D08D78;
  v8 = *a4;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = v8;
  *(a1 + 48) = 0;
  *(a1 + 92) = 0x7FFFFFFFLL;
  *(a1 + 104) = *a3;
  *(a1 + 120) = 0;
  *(a1 + 136) = 0;
  v9 = (a1 + 136);
  *(a1 + 128) = 0;
  *(a1 + 144) = &str_67;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 164) = 0;
  *(a1 + 168) = 1;
  *(a1 + 176) = 0;
  *(a1 + 184) = &str_67;
  *(a1 + 192) = 0;
  *(a1 + 196) = 0;
  *(a1 + 232) = 0;
  *(a1 + 236) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0;
  *(a1 + 221) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 237) = 1;
  *(a1 + 240) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = &str_67;
  *(a1 + 288) = 0;
  *(a1 + 290) = 0;
  *(a1 + 328) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 296) = 0;
  *(a1 + 336) = 0;
  BytePtr = CFDataGetBytePtr(a2);
  Length = CFDataGetLength(a2);
  *&v64[8] = BytePtr;
  *&v64[16] = Length;
  v65 = -1;
  v66 = 0;
  v67 = 0;
  v69 = 0;
  *&v64[24] = BytePtr;
  *&v64[32] = Length + BytePtr;
  *v64 = &unk_1F5D17190;
  v12 = re::snapshot::DecoderOPACK::beginObject(v64, 0);
  if (v12)
  {
    if (re::snapshot::DecoderOPACK::beginField<1>(v64))
    {
      v62 = 0;
      *buf = *(a1 + 56);
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      *&v76[0] = *(a1 + 72);
      *(a1 + 72) = 0;
      *(v76 + 8) = *(a1 + 80);
      *(a1 + 80) = xmmword_1E3058120;
      DWORD2(v76[1]) = 1;
      re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1 + 56);
      if (re::snapshot::DecoderOPACK::beginDictionary(v64, &v62))
      {
        if (v62 != -1)
        {
          re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1 + 56, v62);
        }

        *&v61.var0 = 0;
        v61.var1 = &str_67;
        if (!re::snapshot::DecoderOPACK::endDictionary(v64, &v62))
        {
          v13 = 0xBF58476D1CE4E5B9;
          do
          {
            v63 = 0;
            v14 = re::snapshot::DecoderOPACK::beginString(v64, &v63);
            if (v14)
            {
              v15 = v13;
              v16 = v63;
              v17 = *&v64[24];
              v18 = *&v64[32] - *&v64[24];
              if (*&v64[32] - *&v64[24] >= v63)
              {
                v18 = v63;
              }

              *&v64[24] += v18;
              *v70 = 0;
              *&v70[8] = &str_67;
              v20 = *v70;
              v21 = *&v70[8];
              *v70 = 0;
              *&v70[8] = &str_67;
              var0 = v61.var0;
              var1 = v61.var1;
              *&v61.var0 = v20;
              v61.var1 = v21;
              if (var0)
              {
                if (v70[0])
                {
                  if (v70[0])
                  {
                  }
                }
              }

              v13 = v15;
            }

            v25 = 0x94D049BB133111EBLL * ((((*&v61.var0 >> 31) ^ (*&v61.var0 >> 1)) * v13) ^ ((((*&v61.var0 >> 31) ^ (*&v61.var0 >> 1)) * v13) >> 27));
            re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(buf, &v61, v25 ^ (v25 >> 31), v70);
            if (*&v70[12] == 0x7FFFFFFF)
            {
              *v70 = 0;
              *v70 = re::snapshot::DecoderOPACK::readInteger(v64, 0);
              re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 56, &v61, v70);
            }

            else
            {
              v26 = *&v76[0] + 32 * *&v70[12];
              *(v26 + 24) = re::snapshot::DecoderOPACK::readInteger(v64, 0);
              re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 56, &v61, (v26 + 24));
            }

            v27 = re::snapshot::DecoderOPACK::endDictionary(v64, &v62);
          }

          while (!v27);
          v9 = (a1 + 136);
          if (*&v61.var0)
          {
            if (*&v61.var0)
            {
            }
          }
        }
      }

      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(buf);
      re::snapshot::DecoderOPACK::endField(v64);
    }

    if (re::snapshot::DecoderOPACK::beginField<2>(v64))
    {
      if (re::snapshot::DecoderOPACK::beginObject(v64, 0))
      {
        if (re::snapshot::DecoderOPACK::beginField<1>(v64))
        {
          *v70 = 0;
          v28 = re::snapshot::DecoderOPACK::beginString(v64, v70);
          if (v28)
          {
            v29 = *v70;
            v30 = *&v64[24];
            v31 = *&v64[32] - *&v64[24];
            if (*&v64[32] - *&v64[24] >= *v70)
            {
              v31 = *v70;
            }

            *&v64[24] += v31;
            *buf = 0;
            *&buf[8] = &str_67;
            v32 = re::StringID::operator=(v9, buf);
            if (buf[0])
            {
              if (buf[0])
              {
              }
            }
          }

          re::snapshot::DecoderOPACK::endField(v64);
        }

        if (re::snapshot::DecoderOPACK::beginField<2>(v64))
        {
          *(a1 + 152) = re::snapshot::DecoderOPACK::readInteger(v64, 0);
          re::snapshot::DecoderOPACK::endField(v64);
        }

        if (re::snapshot::DecoderOPACK::beginField<3>(v64))
        {
          if (re::snapshot::DecoderOPACK::beginObject(v64, 0))
          {
            re::snapshotMapFields<re::snapshot::DecoderOPACK>(v64, a1 + 160);
            re::snapshot::DecoderOPACK::endObject(v64, 0);
          }

          re::snapshot::DecoderOPACK::endField(v64);
        }

        re::snapshot::DecoderOPACK::endObject(v64, 0);
      }

      re::snapshot::DecoderOPACK::endField(v64);
    }

    re::snapshot::DecoderOPACK::beginField(v64, 3, 0);
    *v70 = 0;
    v33 = re::snapshot::DecoderOPACK::beginString(v64, v70);
    if (v33)
    {
      v34 = *v70;
      v35 = *&v64[24];
      v36 = *&v64[32] - *&v64[24];
      if (*&v64[32] - *&v64[24] >= *v70)
      {
        v36 = *v70;
      }

      *&v64[24] += v36;
      *buf = 0;
      *&buf[8] = &str_67;
      v37 = re::StringID::operator=((a1 + 272), buf);
      if (buf[0])
      {
        if (buf[0])
        {
        }
      }
    }

    re::snapshot::DecoderOPACK::endField(v64);
    re::snapshot::DecoderOPACK::beginField(v64, 4, 0);
    LOBYTE(v62) = 0;
    re::snapshot::DecoderOPACK::operator>>(v64, &v62);
    v38 = v62;
    if ((*(a1 + 288) & 1) == 0)
    {
      *(a1 + 288) = 1;
    }

    *(a1 + 289) = v38;
    re::snapshot::DecoderOPACK::endField(v64);
    re::snapshot::DecoderOPACK::beginField(v64, 5, 0);
    v63 = 0;
    if (re::snapshot::DecoderOPACK::beginArray(v64, &v63))
    {
      v39 = v63;
      re::DynamicArray<re::DynamicString>::resize((a1 + 296), v63);
      if (v39)
      {
        v40 = 0;
        v41 = 0;
        while (1)
        {
          v42 = *(a1 + 312);
          if (v42 <= v41)
          {
            break;
          }

          v43 = *(a1 + 328);
          *buf = 0;
          if (re::snapshot::DecoderOPACK::beginString(v64, buf))
          {
            v44 = (v43 + v40);
            v45 = *buf;
            re::DynamicString::resize(v44, *buf, 0);
            if (v44[1])
            {
              v46 = v44[2];
            }

            else
            {
              v46 = v44 + 9;
            }

            re::snapshot::BufferDecoder::readRaw(v64, v46, v45);
          }

          ++v41;
          v40 += 32;
          if (v39 == v41)
          {
            goto LABEL_60;
          }
        }

LABEL_98:
        *&v61.var0 = 0;
        v77 = 0u;
        v78 = 0u;
        memset(v76, 0, sizeof(v76));
        *buf = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v70 = 136315906;
        *&v70[4] = "operator[]";
        *&v70[12] = 1024;
        *&v70[14] = 789;
        v71 = 2048;
        v72 = v41;
        v73 = 2048;
        v74 = v42;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

LABEL_60:
      re::snapshot::DecoderOPACK::endArray(v64, &v63);
    }

    re::snapshot::DecoderOPACK::endField(v64);
    v12 = re::snapshot::DecoderOPACK::endObject(v64, 0);
  }

  if (v66 == 1)
  {
    v47 = *re::graphicsLogObjects(v12);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v47, OS_LOG_TYPE_ERROR, "Error decoding shader graph info. ", buf, 2u);
    }

    re::snapshot::BufferDecoder::logInput(v64);
  }

  v48 = *v9;
  if (*v9 >= 0xFFFFFFFFFFFFFFFELL && (v48 & 1) == 0)
  {
    v49 = *(a1 + 144);
    goto LABEL_71;
  }

  if (v48 <= 1)
  {
    v49 = *(a1 + 144);
    if (v49)
    {
LABEL_71:
      if (!*v49)
      {
        v50 = *re::graphicsLogObjects(v12);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v51 = *(a1 + 208);
          *buf = 134217984;
          *&buf[4] = v51;
          _os_log_impl(&dword_1E1C61000, v50, OS_LOG_TYPE_DEFAULT, "No name on TypedArgument with %zu members", buf, 0xCu);
        }

        re::StringID::destroyString(v9);
        *(a1 + 136) = 0x1A31080F9ALL;
        *(a1 + 144) = "<empty>";
      }
    }
  }

  v52 = v66;
  *(a1 + 336) = v66 ^ 1;
  if ((v52 & 1) == 0)
  {
    v41 = *(a1 + 84);
    v53 = *(a1 + 88);
    if (v53)
    {
      v42 = 0;
      v54 = *(a1 + 72);
      while (1)
      {
        v55 = *v54;
        v54 += 8;
        if (v55 < 0)
        {
          break;
        }

        if (v53 == ++v42)
        {
          v42 = *(a1 + 88);
          break;
        }
      }
    }

    else
    {
      v42 = 0;
    }

    if (v42 != v53)
    {
      v56 = 0;
      while (1)
      {
        v57 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(*(a1 + 72) + 32 * v42 + 16)];
        *&v61.var0 = v57;
        v58 = *(a1 + 256);
        if (v58 <= v56)
        {
          break;
        }

        v41 = v57;
        NS::SharedPtr<MTL::Buffer>::operator=((*(a1 + 264) + 8 * v56), &v61);
        if (v41)
        {
        }

        ++v56;
        LODWORD(v59) = *(a1 + 88);
        if (v59 <= v42 + 1)
        {
          v59 = (v42 + 1);
        }

        else
        {
          v59 = v59;
        }

        while (v59 - 1 != v42)
        {
          v42 = (v42 + 1);
          if ((*(*(a1 + 72) + 32 * v42) & 0x80000000) != 0)
          {
            goto LABEL_95;
          }
        }

        v42 = v59;
LABEL_95:
        if (v42 == v53)
        {
          return a1;
        }
      }

      *v70 = 0;
      v77 = 0u;
      v78 = 0u;
      memset(v76, 0, sizeof(v76));
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v64 = 136315906;
      *&v64[4] = "operator[]";
      *&v64[12] = 1024;
      *&v64[14] = 468;
      *&v64[18] = 2048;
      *&v64[20] = v56;
      *&v64[28] = 2048;
      *&v64[30] = v58;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_98;
    }
  }

  return a1;
}

void re::sg::CachedCompilationMaterial::~CachedCompilationMaterial(re::sg::CachedCompilationMaterial *this)
{
  *this = &unk_1F5D08D78;
  v2 = *(this + 5);
  *(this + 5) = 0;

  v3 = *(this + 15);
  *(this + 15) = 0;

  re::DynamicArray<re::DynamicString>::deinit(this + 296);
  re::StringID::destroyString((this + 272));
  re::FixedArray<NS::SharedPtr<MTL::ArgumentEncoder>>::deinit(this + 31);
  re::FixedArray<re::MetalTypeInfo>::deinit(this + 25);
  re::StringID::destroyString((this + 176));
  re::StringID::destroyString((this + 136));

  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 7);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::sg::CachedCompilationMaterial::~CachedCompilationMaterial(this);

  JUMPOUT(0x1E6906520);
}

void re::sg::CachedCompilationMaterial::getVariation(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v68 = *MEMORY[0x1E69E9840];
  v8 = a1 + 4;
  if (a1[4])
  {
    goto LABEL_2;
  }

  v46 = a1[13];
  if (v46)
  {
    v47 = MEMORY[0x1E69CD9D8];
    v64 = 0;
    v48 = v46;
    v49 = [v47 sourceFromArchiveData:v48 error:&v64];
    v9 = v64;
    re::ObjCObject::operator=(v8, v49);

    if (v9)
    {
      v51 = *re::graphicsLogObjects(v50);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v55 = [v9 debugDescription];
        if (v55)
        {
          v56 = [v9 debugDescription];
        }

        else
        {
          v56 = @"<nil>";
        }

        *buf = 138412290;
        *&buf[4] = v56;
        _os_log_error_impl(&dword_1E1C61000, v51, OS_LOG_TYPE_ERROR, "sg::CachedCompilationMaterial::getVariation - error returned from source construction: %@", buf, 0xCu);
        if (v55)
        {
        }
      }

      *a4 = 0;
      goto LABEL_50;
    }

    if (*v8)
    {
LABEL_2:
      v57 = a4;
      v9 = objc_opt_new();
      if (a3)
      {
        v10 = 104 * a3;
        do
        {
          re::DynamicString::substr(a2, 0, 3uLL, buf);
          v11 = buf[8];
          if (buf[8])
          {
            v12 = v67;
          }

          else
          {
            v12 = &buf[9];
          }

          v13 = strcmp(v12, "$1.");
          v14 = v11 & 1;
          if (v13)
          {
            if (*buf)
            {
              v15 = v14 == 0;
            }

            else
            {
              v15 = 1;
            }

            if (!v15)
            {
              (*(**buf + 40))();
            }
          }

          else
          {
            v16 = *(a2 + 32);
            if (*buf)
            {
              v17 = v14 == 0;
            }

            else
            {
              v17 = 1;
            }

            if (!v17)
            {
              (*(**buf + 40))();
            }

            if (v16 == 53)
            {
              v18 = objc_opt_new();
              v19 = *(a2 + 8);
              if (v19)
              {
                v20 = v19 >> 1;
              }

              else
              {
                v20 = v19 >> 1;
              }

              re::DynamicString::substr(a2, 3uLL, v20, buf);
              if (buf[8])
              {
                v21 = v67;
              }

              else
              {
                v21 = &buf[9];
              }

              v22 = [v18 initWithUTF8String:{v21, v57}];
              if (*buf && (buf[8] & 1) != 0)
              {
                (*(**buf + 40))();
              }

              v23 = [MEMORY[0x1E696AD98] numberWithBool:*(a2 + 36) != 0];
              [v9 setValue:v23 forKey:v22];
            }
          }

          a2 += 104;
          v10 -= 104;
        }

        while (v10);
      }

      if ([v9 count])
      {
        v26 = a1[3];
        v25 = a1 + 3;
        v24 = v26;
        if (!v26)
        {
          v27 = objc_opt_new();
          re::ObjCObject::operator=(v25, v27);

          v24 = *v25;
        }

        v28 = [v24 scalarFunctionConstants];
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v29 = [v28 countByEnumeratingWithState:&v60 objects:v65 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v61;
          do
          {
            for (i = 0; i != v30; ++i)
            {
              if (*v61 != v31)
              {
                objc_enumerationMutation(v28);
              }

              v33 = *(*(&v60 + 1) + 8 * i);
              v34 = [v28 valueForKey:v33];
              [v9 setValue:v34 forKey:v33];
            }

            v30 = [v28 countByEnumeratingWithState:&v60 objects:v65 count:16];
          }

          while (v30);
        }

        v35 = [*v25 vectorFunctionConstants];
        v36 = [objc_alloc(MEMORY[0x1E69CD9D0]) initWithScalarFunctionConstants:v9 vectorFunctionConstants:v35];
        v37 = *v8;
        v59 = 0;
        v38 = [MEMORY[0x1E69CD9D8] materialFromSource:v37 functionConstantValues:v36 error:&v59];
        v39 = v59;
        v40 = v38;
        *buf = v40;

        if (v40)
        {
          v42 = re::globalAllocators(v41);
          v43 = (*(*v42[2] + 32))(v42[2], 344, 8);
          v44 = re::sg::CachedCompilationMaterial::CachedCompilationMaterial(v43, buf, v8, v25);
          v45 = *buf;
        }

        else
        {
          v45 = 0;
          v44 = 0;
        }

        *v58 = v44;
      }

      else
      {
        *v58 = a1;
        if (a1)
        {
          v52 = a1 + 1;
        }
      }

LABEL_50:

      return;
    }

    v53 = *re::graphicsLogObjects(v50);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v54 = "sg::CachedCompilationMaterial::getVariation - can't build variation without a backing MaterialSource";
LABEL_59:
      _os_log_error_impl(&dword_1E1C61000, v53, OS_LOG_TYPE_ERROR, v54, buf, 2u);
    }
  }

  else
  {
    v53 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v54 = "sg::CachedCompilationMaterial::getVariation - payload is null";
      goto LABEL_59;
    }
  }

  *a4 = 0;
}

void re::sg::CachedCompilationMaterial::ensureFullMaterialIsDeserialized(re::sg::CachedCompilationMaterial *this)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = (this + 40);
  if (!*(this + 5))
  {
    v2 = *(this + 13);
    if (v2)
    {
      v3 = v2;
      v18 = 0;
      v4 = [MEMORY[0x1E69CD9D8] sourceFromArchiveData:v3 error:&v18];
      v5 = v18;
      v6 = v5;
      if (v5)
      {
        v7 = *re::graphicsLogObjects(v5);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v13 = [(re *)v6 debugDescription];
          if (v13)
          {
            v14 = [(re *)v6 debugDescription];
          }

          else
          {
            v14 = @"<nil>";
          }

          *buf = 138412290;
          v20 = v14;
          _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Failed to create shader graph material source from payload. Error: %@", buf, 0xCu);
          if (v13)
          {
          }
        }
      }

      v8 = objc_opt_new();
      v17 = v6;
      v9 = [MEMORY[0x1E69CD9D8] materialFromSource:v4 functionConstantValues:v8 error:&v17];
      v10 = v17;

      re::ObjCObject::operator=(v1, v9);
      if (v10)
      {
        v12 = *re::graphicsLogObjects(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v15 = [(re *)v10 debugDescription];
          if (v15)
          {
            v16 = [(re *)v10 debugDescription];
          }

          else
          {
            v16 = @"<nil>";
          }

          *buf = 138412290;
          v20 = v16;
          _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Failed to create shader graph material from source. Error: %@", buf, 0xCu);
          if (v15)
          {
          }
        }
      }
    }
  }
}

void re::sg::compileShaderGraphFailureMetalLibrary(void **a1@<X0>, CGColorSpace *a2@<X1>, void *a3@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  Name = CGColorSpaceGetName(a2);
  ColorGamutFromCGColorSpaceName = re::ColorHelpers::getColorGamutFromCGColorSpaceName(Name, &v19);
  if (ColorGamutFromCGColorSpaceName)
  {
    v8 = [objc_alloc(MEMORY[0x1E69CD9C8]) initWithWorkingColorSpace:a2];
    v9 = MEMORY[0x1E69CD9D8];
    v10 = *a1;
    v18 = 0;
    v11 = v10;
    v12 = [v9 metalLibraryFromMaterial:0 forDevice:v11 options:v8 error:&v18];
    v13 = v18;

    v14 = v12;
    *a3 = v14;

    if (!v14)
    {
      v16 = *re::graphicsLogObjects(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v13;
        _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "ShaderGraph service could not compile fallback failure shader graph asset. Error: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v17 = *re::graphicsLogObjects(ColorGamutFromCGColorSpaceName);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = a2;
      _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "Attempted to generate a metal library from a ShaderGraphMaterial with a unsupported color space %@", buf, 0xCu);
    }

    *a3 = 0;
  }
}

void re::sg::CachedCompilationMaterial::compileMetalLibrary(uint64_t a1@<X0>, id *a2@<X1>, CGColorSpace *a3@<X2>, id *a4@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  v24 = 0;
  Name = CGColorSpaceGetName(a3);
  ColorGamutFromCGColorSpaceName = re::ColorHelpers::getColorGamutFromCGColorSpaceName(Name, &v24);
  if (ColorGamutFromCGColorSpaceName)
  {
    os_unfair_lock_lock((a1 + 128));
    if (*(a1 + 120) && v24 == *(a1 + 112))
    {
      *a4 = *(a1 + 120);

      os_unfair_lock_unlock((a1 + 128));
    }

    else
    {
      os_unfair_lock_unlock((a1 + 128));
      re::sg::CachedCompilationMaterial::getMaterial(a1, &v23);
      v11 = *a2;
      v12 = [objc_alloc(MEMORY[0x1E69CD9C8]) initWithWorkingColorSpace:a3];
      v13 = MEMORY[0x1E69CD9D8];
      v14 = v23;
      v25 = 0;
      v15 = v11;
      v16 = [v13 metalLibraryFromMaterial:v14 forDevice:v15 options:v12 error:&v25];
      v17 = v25;

      v18 = v16;
      *a4 = v18;

      if (!v18)
      {
        v20 = *re::graphicsLogObjects(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = v20;
          v22 = [v14 name];
          *buf = 138412546;
          v27 = v22;
          v28 = 2112;
          v29 = v17;
          _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "ShaderGraph service could not compile shader graph asset (%@). Error: %@", buf, 0x16u);
        }
      }

      os_unfair_lock_lock((a1 + 128));
      *(a1 + 112) = v24;
      re::ObjCObject::operator=((a1 + 120), a4);
      os_unfair_lock_unlock((a1 + 128));
    }
  }

  else
  {
    v10 = *re::graphicsLogObjects(ColorGamutFromCGColorSpaceName);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = a3;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Attempted to generate a metal library from a ShaderGraphMaterial with a unsupported color space %@", buf, 0xCu);
    }

    *a4 = 0;
  }
}

void re::sg::CachedCompilationMaterial::getMaterial(re::sg::CachedCompilationMaterial *this@<X0>, void *a2@<X8>)
{
  os_unfair_lock_lock(this + 12);
  re::sg::CachedCompilationMaterial::ensureFullMaterialIsDeserialized(this);
  *a2 = *(this + 5);

  os_unfair_lock_unlock(this + 12);
}

_anonymous_namespace_ *re::sg::CachedCompilationMaterial::getCustomUniformsArgument(re::sg::CachedCompilationMaterial *this)
{
  v3 = (this + 136);
  v2 = *(this + 17);
  if (v2 < 0xFFFFFFFFFFFFFFFELL || (v2 & 1) != 0)
  {
    if (v2 > 1)
    {
      return v3;
    }

    v4 = *(this + 18);
    if (!v4)
    {
      return v3;
    }
  }

  else
  {
    v4 = *(this + 18);
  }

  if (!*v4)
  {
    re::sg::CachedCompilationMaterial::getMaterial(this, &v18);
    v5 = v18;
    if (v18)
    {
      re::sg::Material::getCustomUniformsArgument(&v18, &v8);
      re::StringID::operator=(v3, &v8);
      *(this + 76) = v9;
      *(this + 20) = v10;
      *(this + 42) = v11;
      re::StringID::operator=((this + 176), v12);
      *(this + 48) = v13;
      *(this + 98) = v14;
      re::FixedArray<re::MetalTypeInfo>::operator=(this + 25, v15);
      *(this + 28) = v16[0];
      *(this + 230) = *(v16 + 6);
      *(this + 240) = v17;
      v6 = re::FixedArray<re::MetalTypeInfo>::deinit(v15);
      if (v12[0])
      {
        if (v12[0])
        {
        }
      }

      v12[0] = 0;
      v12[1] = &str_67;
      if (v8)
      {
        if (v8)
        {
        }
      }
    }
  }

  return v3;
}

uint64_t *re::sg::CachedCompilationMaterial::getPublicUniforms@<X0>(re::sg::CachedCompilationMaterial *this@<X0>, uint64_t *a2@<X8>)
{
  v3 = (this + 248);
  if (!*(this + 31))
  {
    re::sg::CachedCompilationMaterial::getMaterial(this, &v7);
    v4 = v7;
    if (v7)
    {
      re::sg::Material::getPublicUniforms(&v7, v6);
      re::FixedArray<float>::operator=(v3, v6);
      re::FixedArray<NS::SharedPtr<MTL::ArgumentEncoder>>::deinit(v6);
    }
  }

  return re::FixedArray<NS::SharedPtr<NS::String>>::FixedArray(a2, v3);
}

double re::sg::CachedCompilationMaterial::createDynamicFunctionConstantEnumerator@<D0>(id *this@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  memset(v24, 0, sizeof(v24));
  v2 = [this[5] uniforms];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v21;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        if ([v8 type] == 1)
        {
          v9 = [v8 name];
          re::DynamicString::operator+(&v18, [v9 UTF8String], &v12);
          LOWORD(v15[0]) = 53;
          WORD1(v15[0]) = --v5;
          v25 = xmmword_1E3049620;
          re::DynamicArray<re::ecs2::ComponentTypeBase const*>::DynamicArray(v15 + 8, &v25, 2uLL);
          *&v17 = 0;
          WORD4(v17) = 0;
          re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v24, &v12, v15);
          if (*(&v15[0] + 1) && *(&v16 + 1))
          {
            (*(**(&v15[0] + 1) + 40))();
          }

          if (v12)
          {
            if (BYTE8(v12))
            {
              (*(*v12 + 40))();
            }

            v12 = 0u;
            v13 = 0u;
          }

          if (v18 && (v19 & 1) != 0)
          {
            (*(*v18 + 40))();
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v4);
  }

  v14 = 0;
  *&v13 = 0;
  v12 = 0uLL;
  DWORD2(v13) = 0;
  v16 = 0u;
  v17 = 0u;
  memset(v15, 0, sizeof(v15));
  re::FunctionConstantsEnumerator::createEnumerator(v24, 0, 0, &v12, v15, a2);
  re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::deinit(v15);
  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v12);

  return re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(v24);
}

void re::sg::CachedCompilationMaterial::getDynamicFunctionConstants(id *this@<X0>, void *a2@<X8>)
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = [this[5] uniforms];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v37;
    v7 = 1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v37 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v36 + 1) + 8 * i) type] == 1)
        {
          ++v7;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 1;
  }

  a2[2] = 0;
  a2[1] = v7;
  if (v7)
  {
    if (v7 >= 0x666666666666667)
    {
      goto LABEL_44;
    }

    a2[2] = v10;
    if (!v10)
    {
LABEL_45:
      re::internal::assertLog(4, v11, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
    }

    for (j = v10; --v7; j = (j + 40))
    {
      *(j + 4) = 0;
      *j = 0u;
      *(j + 1) = 0u;
      v10 = re::DynamicString::setCapacity(j, 0);
    }

    *(j + 4) = 0;
    *j = 0u;
    *(j + 1) = 0u;
    re::DynamicString::setCapacity(j, 0);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = v3;
  v14 = [v13 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v33;
    v7 = &v29 + 9;
    v18 = a2[2];
    v28 = a2[1];
    do
    {
      for (k = 0; k != v15; ++k)
      {
        if (*v33 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v20 = *(*(&v32 + 1) + 8 * k);
        if ([v20 type] == 1)
        {
          v21 = [v20 name];
          v22 = [v21 UTF8String];
          re::DynamicString::operator+(v23, v22, &v29);
          if (v51 && (BYTE8(v51) & 1) != 0)
          {
            (*(*v51 + 40))(v51, v52);
          }

          if (BYTE8(v29))
          {
            v24 = v30;
          }

          else
          {
            v24 = &v29 + 9;
          }

          v25 = strlen(v24);
          if (v25)
          {
            MurmurHash3_x64_128(v24, v25, 0, &v51);
            v26 = (*(&v51 + 1) + (v51 << 6) + (v51 >> 2) - 0x61C8864680B583E9) ^ v51;
          }

          else
          {
            v26 = 0;
          }

          v31 = v26;
          if (v28 <= v16)
          {
            v40 = 0;
            v54 = 0u;
            v55 = 0u;
            v52 = 0u;
            v53 = 0u;
            v51 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v43 = 136315906;
            v44 = "operator[]";
            v45 = 1024;
            v46 = 468;
            v47 = 2048;
            v48 = v16;
            v49 = 2048;
            v50 = v28;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_44:
            re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 40, v7);
            _os_crash();
            __break(1u);
            goto LABEL_45;
          }

          v27 = re::DynamicString::operator=((v18 + 40 * v16), &v29);
          *(v27 + 4) = v31;
          if (v29)
          {
            if (BYTE8(v29))
            {
              (*(*v29 + 40))();
            }

            v29 = 0u;
            v30 = 0u;
          }

          ++v16;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v15);
  }
}

uint64_t re::sg::CachedCompilationMaterial::getMaterialDefinitionPath(re::sg::CachedCompilationMaterial *this)
{
  if (*(this + 34) <= 1uLL)
  {
    v2 = *(this + 35);
    if (v2)
    {
      if (!*v2)
      {
        re::sg::CachedCompilationMaterial::getMaterial(this, &v9);
        v3 = v9;
        if (v9)
        {
          v4 = re::sg::Material::materialDefinitionPath(&v9);
          v7 = 0;
          v8 = &str_67;
          v5 = re::StringID::operator=((this + 272), &v7);
          if (v7)
          {
            if (v7)
            {
            }
          }
        }
      }
    }
  }

  return *(this + 35);
}

uint64_t re::sg::CachedCompilationMaterial::getHasBackgroundBlur(re::sg::CachedCompilationMaterial *this)
{
  if (*(this + 288))
  {
    goto LABEL_7;
  }

  re::sg::CachedCompilationMaterial::getMaterial(this, &v6);
  v2 = v6;
  if (v6)
  {
    v3 = [v6 hasBackgroundBlur];
    if ((*(this + 288) & 1) == 0)
    {
      *(this + 288) = 1;
    }

    *(this + 289) = v3;
  }

  if (*(this + 288))
  {
LABEL_7:
    v4 = *(this + 289);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t re::sg::CachedCompilationMaterial::getHasTimeVaryingFeatures(re::sg::CachedCompilationMaterial *this)
{
  if (*(this + 290))
  {
    goto LABEL_10;
  }

  re::sg::CachedCompilationMaterial::getMaterial(this, &v6);
  v2 = v6;
  if (v6)
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [v2 hasTimeVaryingFeatures];
    }

    else
    {
      v3 = 1;
    }

    if ((*(this + 290) & 1) == 0)
    {
      *(this + 290) = 1;
    }

    *(this + 291) = v3;
  }

  if (*(this + 290))
  {
LABEL_10:
    v4 = *(this + 291);
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

BOOL re::sg::CachedCompilationMaterial::encode(re::sg::CachedCompilationMaterial *this, __CFData *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  re::sg::CachedCompilationMaterial::getMaterial(this, &v51);
  MutableBytePtr = CFDataGetMutableBytePtr(a2);
  v5 = CFDataGetLength(a2);
  v43 = MutableBytePtr;
  length = 0;
  length_4 = v5;
  v46 = a2;
  v47 = re::sg::CachedCompilationMaterial::encode(__CFData *)const::$_0::__invoke;
  memset(v48, 0, sizeof(v48));
  re::DynamicString::setCapacity(v48, 0);
  v49 = 6;
  v50 = 0;
  v42 = &unk_1F5D16F10;
  re::snapshot::EncoderOPACK::beginObject(&v42);
  v6 = length;
  if (length >= length_4)
  {
    re::snapshot::EncoderOPACK::writeInteger(&v42, 1);
  }

  else
  {
    ++length;
    v43[v6] = 9;
  }

  v7 = [v51 uniforms];
  re::snapshot::EncoderOPACK::beginDictionary(&v42, [v7 count]);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v38 objects:v52 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v39;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v38 + 1) + 8 * i);
        v14 = [v13 name];
        v15 = [v14 UTF8String];
        v16 = [v13 name];
        re::snapshot::EncoderOPACK::serializeString(&v42, v15, [v16 length]);

        re::snapshot::EncoderOPACK::writeInteger(&v42, [v13 type]);
      }

      v10 = [v8 countByEnumeratingWithState:&v38 objects:v52 count:16];
    }

    while (v10);
  }

  re::snapshot::EncoderOPACK::endDictionary(&v42, [v8 count]);
  CustomUniformsArgument = re::sg::CachedCompilationMaterial::getCustomUniformsArgument(this);
  v18 = length;
  if (length >= length_4)
  {
    re::snapshot::EncoderOPACK::writeInteger(&v42, 2);
  }

  else
  {
    ++length;
    v43[v18] = 10;
  }

  re::snapshot::EncoderOPACK::beginObject(&v42);
  v19 = length;
  if (length >= length_4)
  {
    re::snapshot::EncoderOPACK::writeInteger(&v42, 1);
  }

  else
  {
    ++length;
    v43[v19] = 9;
  }

  v20 = strlen(*(CustomUniformsArgument + 1));
  re::snapshot::EncoderOPACK::serializeString(&v42, *(CustomUniformsArgument + 1), v20);
  v21 = length;
  if (length >= length_4)
  {
    re::snapshot::EncoderOPACK::writeInteger(&v42, 2);
  }

  else
  {
    ++length;
    v43[v21] = 10;
  }

  re::snapshot::EncoderOPACK::writeInteger(&v42, *(CustomUniformsArgument + 8));
  v22 = length;
  if (length >= length_4)
  {
    re::snapshot::EncoderOPACK::writeInteger(&v42, 3);
  }

  else
  {
    ++length;
    v43[v22] = 11;
  }

  re::snapshot::EncoderOPACK::beginObject(&v42);
  re::snapshotMapFields<re::snapshot::EncoderOPACK>(&v42, CustomUniformsArgument + 6);
  re::snapshot::EncoderOPACK::endObject(&v42);
  re::snapshot::EncoderOPACK::endObject(&v42);
  re::snapshot::EncoderOPACK::writeInteger(&v42, 3);
  v23 = strlen(*(this + 35));
  re::snapshot::EncoderOPACK::serializeString(&v42, *(this + 35), v23);
  re::snapshot::EncoderOPACK::writeInteger(&v42, 4);
  if (*(this + 288) == 1)
  {
    v24 = *(this + 289);
  }

  else
  {
    v24 = 0;
  }

  re::snapshot::EncoderOPACK::operator<<(&v42, v24 & 1);
  re::snapshot::EncoderOPACK::writeInteger(&v42, 5);
  re::snapshot::EncoderOPACK::beginArray(&v42, *(this + 39));
  v25 = *(this + 39);
  if (v25)
  {
    v26 = 32 * v25;
    v27 = (*(this + 41) + 16);
    do
    {
      v28 = *(v27 - 1);
      if (v28)
      {
        v29 = *v27;
      }

      else
      {
        v29 = v27 - 7;
      }

      v30 = v28 >> 1;
      v31 = v28 >> 1;
      if (*(v27 - 1))
      {
        v32 = v30;
      }

      else
      {
        v32 = v31;
      }

      re::snapshot::EncoderOPACK::serializeString(&v42, v29, v32);
      v27 += 4;
      v26 -= 32;
    }

    while (v26);
    v33 = *(this + 39);
  }

  else
  {
    v33 = 0;
  }

  re::snapshot::EncoderOPACK::endArray(&v42, v33);
  re::snapshot::EncoderOPACK::endObject(&v42);
  CFDataSetLength(a2, length);
  v34 = *(&v48[0] + 1);

  v42 = &unk_1F5D16DD0;
  if (*&v48[0] && (BYTE8(v48[0]) & 1) != 0)
  {
    (*(**&v48[0] + 40))();
  }

  v35 = v34 >> 1;
  if ((v34 & 1) == 0)
  {
    v35 = v34 >> 1;
  }

  v36 = v35 == 0;

  return v36;
}

void re::sg::MaterialSourceCache::lookup(re::sg::MaterialSourceCache *this@<X0>, const void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v9[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    MurmurHash3_x64_128(a2, a3, 0, v9);
    v8 = (v9[1] + (v9[0] << 6) + (v9[0] >> 2) - 0x61C8864680B583E9) ^ v9[0];
  }

  else
  {
    v8 = 0;
  }

  re::sg::MaterialSourceCache::lookup(this, a2, v8, a3, a4);
}

void re::sg::MaterialSourceCache::lookup(re::sg::MaterialSourceCache *this@<X0>, const void *a2@<X2>, unint64_t a3@<X1>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  std::recursive_mutex::lock((this + 48));
  v10 = a3 ^ (a3 >> 30);
  if (!*this || (v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v10) ^ ((0xBF58476D1CE4E5B9 * v10) >> 27)), v12 = v11 ^ (v11 >> 31), v13 = *(*(this + 1) + 4 * (v12 % *(this + 6))), v13 == 0x7FFFFFFF))
  {
LABEL_6:
    v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:a2 length:a4 freeWhenDone:0];
    v28 = 0;
    v16 = [MEMORY[0x1E69CD9D8] sourceFromArchiveData:v15 error:&v28];
    v17 = v28;
    v18 = v17;
    if (v17)
    {
      v19 = *re::graphicsLogObjects(v17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        v21 = [(re *)v18 localizedDescription];
        v22 = [v21 UTF8String];
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v22;
        _os_log_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_DEFAULT, "MaterialSourceCache::lookup: Got error creating new MaterialSource. (error=%s)\n", &buf, 0xCu);
      }
    }

    v23 = v16;
    buf = 0uLL;
    v30 = 0;
    v24 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v10) ^ ((0xBF58476D1CE4E5B9 * v10) >> 27));
    re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&buf, this, a3, v24 ^ (v24 >> 31));
    if (HIDWORD(buf) == 0x7FFFFFFF)
    {
      v25 = re::HashTable<unsigned long long,re::sg::MaterialSource,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(this, DWORD2(buf), buf);
      v26 = 0;
      *(v25 + 8) = a3;
      *(v25 + 16) = v23;
      ++*(this + 10);
      v27 = v23;
    }

    else
    {
      v27 = *(*(this + 2) + 32 * HIDWORD(buf) + 16);
      v26 = v23;
    }

    *a5 = v27;
  }

  else
  {
    v14 = *(this + 2);
    while (*(v14 + 32 * v13 + 8) != a3)
    {
      v13 = *(v14 + 32 * v13) & 0x7FFFFFFF;
      if (v13 == 0x7FFFFFFF)
      {
        goto LABEL_6;
      }
    }

    re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&buf, this, a3, v12);
    *a5 = *(v14 + 32 * HIDWORD(buf) + 16);
  }

  std::recursive_mutex::unlock((this + 48));
}

UInt8 *re::sg::CachedCompilationMaterial::encode(__CFData *)const::$_0::__invoke(const __CFData *a1, uint64_t a2, uint64_t a3)
{
  Length = CFDataGetLength(a1);
  if (2 * Length <= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = 2 * Length;
  }

  CFDataSetLength(a1, v6);
  MutableBytePtr = CFDataGetMutableBytePtr(a1);
  CFDataGetLength(a1);
  return MutableBytePtr;
}

uint64_t re::DynamicOverflowArray<char,256ul>::DynamicOverflowArray(uint64_t a1, unint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  re::DynamicOverflowArray<char,256ul>::setCapacity(a1, a2);
  *(a1 + 16) += 2;
  return a1;
}

void *re::DynamicOverflowArray<char,256ul>::setCapacity(void *result, unint64_t a2)
{
  v3 = result;
  v4 = *result;
  if (a2 && !v4)
  {
    result = re::DynamicOverflowArray<char,256ul>::setCapacity(v3, a2);
    v5 = *(v3 + 4) + 2;
LABEL_4:
    *(v3 + 4) = v5;
    return result;
  }

  v6 = *(result + 4);
  if (v6)
  {
    v7 = 256;
  }

  else
  {
    v7 = result[3];
  }

  if (v7 != a2)
  {
    v8 = result[1];
    if (v8 <= a2 && (a2 > 0x100 || (v6 & 1) == 0))
    {
      if (a2 < 0x101)
      {
        v13 = result + 3;
        v14 = v3[4];
        if (v6)
        {
          v15 = v3 + 3;
        }

        else
        {
          v15 = v3[4];
        }

        memcpy(v13, v15, v8);
        result = (*(*v4 + 40))(v4, v14);
        v5 = *(v3 + 4) | 1;
        goto LABEL_4;
      }

      v9 = (*(*v4 + 32))(*result, a2, 1);
      if (v9)
      {
        v11 = v9;
        if (v3[2])
        {
          v12 = v3 + 3;
        }

        else
        {
          v12 = v3[4];
        }

        result = memcpy(v9, v12, v3[1]);
        v16 = *(v3 + 4);
        if ((v16 & 1) == 0)
        {
          result = (*(**v3 + 40))(*v3, v3[4]);
          v16 = *(v3 + 4);
        }

        *(v3 + 4) = v16 & 0xFFFFFFFE;
        v3[3] = a2;
        v3[4] = v11;
      }

      else
      {
        re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, a2, *(*v3 + 8));
        result = _os_crash();
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t *re::FixedArray<NS::SharedPtr<NS::String>>::FixedArray(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<unsigned long>::init<>(a1, v4, *(a2 + 8));
    re::FixedArray<NS::SharedPtr<NS::String>>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::FixedArray<NS::SharedPtr<NS::String>>::copy(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 == *(a2 + 8))
  {
    if (v2)
    {
      v3 = *(a2 + 16);
      result = *(result + 16);
      v4 = 8 * v2;
      do
      {
        v5 = NS::SharedPtr<MTL::Buffer>::operator=(result, v3++);
        result = (v5 + 1);
        v4 -= 8;
      }

      while (v4);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::sg::MaterialSource,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v27, 0, 36);
          *&v27[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v27, v9, v8);
          v11 = *v27;
          *v27 = *a1;
          *a1 = v11;
          v12 = *&v27[16];
          v13 = *(a1 + 16);
          *&v27[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v27[24];
          *&v27[24] = *(a1 + 24);
          v14 = *&v27[32];
          *(a1 + 24) = v15;
          ++*&v27[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = (v13 + 16);
            do
            {
              if ((*(v18 - 2) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long long,re::sg::MaterialSource,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v18[1] % *(a1 + 24));
                *(v19 + 8) = *(v18 - 1);
                v20 = *v18;
                *v18 = 0;
                *(v19 + 16) = v20;
              }

              ++v17;
              v18 += 4;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long long,re::sg::MaterialSource,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v27);
        }
      }

      else
      {
        if (v8)
        {
          v23 = 2 * v7;
        }

        else
        {
          v23 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v21 = *(a1 + 16);
    v22 = *(v21 + 32 * v5);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 32 * v5);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = v21 + 32 * v5;
  *v24 = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *v24 = *(v25 + 4 * a2) | 0x80000000;
  *(v24 + 24) = a3;
  *(v25 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v21 + 32 * v5;
}

uint64_t re::TensionDeformer::init(uint64_t result, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if ((*(result + 32) & 1) == 0)
  {
    v2 = result;
    *(result + 32) = 1;
    v3 = *(a2 + 16);
    *(result + 8) = *(v3 + 32);
    if (*(v3 + 208))
    {
      if (*(v3 + 309) == 1)
      {
        v4 = 0;
        v5 = 1;
        v6 = MEMORY[0x1E6974060];
        do
        {
          v7 = v5;
          v26 = v4;
          v13 = 0;
          v16 = 0;
          memset(v19, 0, sizeof(v19));
          v20 = 0;
          v24 = 0;
          v25 = 0;
          v21 = 0;
          v22 = 0;
          v23 = 0;
          memset(v27, 0, sizeof(v27));
          re::DynamicString::setCapacity(v27, 0);
          v32 = 0u;
          v31 = 0u;
          v30 = 0u;
          v29 = 0u;
          LOBYTE(v29) = v26;
          v28 = 53;
          v9 = [objc_msgSend(v6 alloc];
          [v9 setConstantValue:&v26 type:53 atIndex:0];
          ComputePipelineState = re::getOrCreateComputePipelineState(v3, &v11);
          NS::SharedPtr<MTL::Buffer>::operator=((v2 + 16 + 8 * v4), ComputePipelineState);
          if (v9)
          {
          }

          if (*&v27[0] && (BYTE8(v27[0]) & 1) != 0)
          {
            (*(**&v27[0] + 40))();
          }

          if (v24)
          {

            v24 = 0;
          }

          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v19);
          if (v16 == 1 && v17)
          {
            if (BYTE8(v17))
            {
              (*(*v17 + 40))();
            }

            v17 = 0u;
            v18 = 0u;
          }

          if (v13 == 1 && v14)
          {
            if (BYTE8(v14))
            {
              (*(*v14 + 40))();
            }

            v15 = 0u;
            v14 = 0u;
          }

          result = v11;
          if (v11)
          {
            if (v12)
            {
              result = (*(*v11 + 40))();
            }
          }

          v5 = 0;
          v4 = 1;
        }

        while ((v7 & 1) != 0);
        *(v2 + 33) = 1;
      }
    }
  }

  return result;
}

uint64_t re::TensionDeformer::addDeformationInstance@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a2)
  {
    v4 = 0;
  }

  else if (*(result + 32) == 1)
  {
    v4 = *(result + 33);
  }

  else
  {
    v4 = 1;
  }

  *a4 = 0xFFFFFFFFLL;
  *(a4 + 8) = xmmword_1E30DA510;
  LODWORD(v5) = *a3;
  if (v5 == 255)
  {
    v5 = *(a3 + 2);
    if (v5)
    {
      LOBYTE(v5) = (*(v5 + 208) != 0) & v4;
    }
  }

  *(a4 + 24) = v5;
  *(a4 + 32) = -1;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  return result;
}

uint64_t re::TensionDeformer::allocateBuffers(re *a1, uint64_t a2, re::PerFrameAllocatorGPU **a3, uint64_t a4, uint64_t *a5)
{
  v7 = a5;
  v78 = *MEMORY[0x1E69E9840];
  v64 = *a5;
  v9 = *(*a5 + 48);
  re::globalAllocators(a1);
  v10 = (*(*a2 + 32))(a2, 24, 8);
  v12 = v10;
  v10[1] = v9;
  v10[2] = 0;
  *v10 = a2;
  if (v9)
  {
    if (v9 >= 0x492492492492493)
    {
LABEL_51:
      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 56, v9);
      _os_crash();
      __break(1u);
      goto LABEL_52;
    }

    v10 = (*(*a2 + 32))(a2, 56 * v9, 8);
    *(v12 + 16) = v10;
    if (!v10)
    {
LABEL_52:
      re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
LABEL_53:
      re::internal::assertLog(5, v47, "assertion failure: '%s' (%s:line %i) Invalid deformation execution mode: %u.", "!Unreachable code", "allocateBuffers", 152, a4);
      _os_crash();
      __break(1u);
    }

    v5 = v10;
    if (v9 != 1)
    {
      bzero(v10, 56 * v9 - 56);
      v5 += 56 * v9 - 56;
    }

    *(v5 + 48) = 0;
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *v5 = 0u;
  }

  v14 = re::globalAllocators(v10)[2];
  *&v73 = &unk_1F5D08E30;
  *(&v74 + 1) = v14;
  *&v75 = &v73;
  v15 = (*(*a2 + 16))(a2, v12, &v73);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v73);
  if (v9)
  {
    v16 = 0;
    v61 = v15;
    v62 = v7;
    v60 = v9;
    while (1)
    {
      v17 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v64 + 8, v16);
      v18 = *(v17 + 8);
      v19 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](v7[1], v18);
      v21 = v7[6];
      if (v21 <= v18)
      {
        break;
      }

      v12 = v19;
      v22 = *(a1 + 1);
      v5 = WORD1(*(*(v19 + 368) + 16));
      v6 = *(v22 + 24);
      if (v6 <= v5)
      {
        goto LABEL_44;
      }

      v23 = *(*(v22 + 40) + 16 * WORD1(*(*(v19 + 368) + 16))) + 864 * *(*(v19 + 368) + 16);
      v5 = *(v19 + 392);
      v6 = *(v23 + 56);
      if (v6 <= v5)
      {
        goto LABEL_45;
      }

      v6 = *(v15 + 8);
      if (v6 <= v16)
      {
        goto LABEL_46;
      }

      v24 = (v7[5] + 312 * v18);
      v25 = *(v23 + 64) + 544 * *(v19 + 392);
      v9 = *(v15 + 16) + 56 * v16;
      v26 = v25;
      do
      {
        v27 = v26;
        v26 = *v26;
      }

      while (v26 && !v27[8]);
      *&v73 = 0x66739F42610D3BC2;
      v28 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v27 + 5, &v73);
      if (v28 == -1)
      {
        v29 = 0;
      }

      else
      {
        v29 = (v27[6] + 16 * v28 + 8);
      }

      v30 = v25;
      do
      {
        v31 = v30;
        v30 = *v30;
      }

      while (v30 && !v31[8]);
      *&v73 = 0x535FC835C0260B06;
      v32 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v31 + 5, &v73);
      if (v32 == -1)
      {
        v6 = 0;
      }

      else
      {
        v6 = (v31[6] + 16 * v32 + 8);
      }

      v33 = v25;
      do
      {
        v34 = v33;
        v33 = *v33;
      }

      while (v33 && !v34[8]);
      *&v73 = 0x455BD5FA7760EFECLL;
      v35 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v34 + 5, &v73);
      if (v35 != -1 && v29 && v6)
      {
        v5 = v35;
        v36 = v34[6];
        *(v9 + 24) = *(v25 + 448);
        v37 = re::AttributeTable::buffers(v25);
        v39 = *v29;
        if (v38 <= v39)
        {
          goto LABEL_47;
        }

        *(v9 + 32) = v37 + 24 * *v29;
        v40 = re::AttributeTable::buffers(v25);
        v42 = *v6;
        if (v41 <= v42)
        {
          goto LABEL_48;
        }

        *(v9 + 40) = v40 + 24 * *v6;
        v43 = re::AttributeTable::buffers(v25);
        v45 = *(v36 + 16 * v5 + 8);
        if (v44 <= v45)
        {
          goto LABEL_49;
        }

        *(v9 + 48) = v43 + 24 * *(v36 + 16 * v5 + 8);
        LOBYTE(v73) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v24, 1u);
        v46 = *(v24[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v24 + 7, &v73) + 20);
        LOBYTE(v73) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v24, 1u);
        v48 = v46 / *(v24[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v24 + 15, &v73) + 4);
        if (a4 == 1)
        {
          v7 = v62;
          v56 = v56 & 0xFFFF000000000000 | 0x1010001000CLL;
          v57 = v57 & 0xFFFFFF0000000000 | 0x1E00000000;
          v49 = re::DeformationBufferAllocator::alloc(*(v12 + 360), v62[2], 1, v56, v57, *(v17 + 16), 4 * v48);
          v50 = *(v12 + 360);
          v12 = *(v17 + 16);
          v5 = *(v50 + 8);
          v15 = v61;
          if (v5 <= v12)
          {
            goto LABEL_50;
          }

          v51 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[](*(v50 + 16) + 72 * *(v17 + 16) + 16, v49);
          WORD2(v73) = 257;
          LODWORD(v73) = 65540;
          BYTE12(v73) = 28;
          DWORD2(v73) = 0;
          re::DeformationVertexBufferState::setOutputBuffer(v24, 19, 1, (v51 + 24), &v73);
          re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(a3, 4uLL, 4uLL, &v73);
          v52 = v73;
          v53 = v74;
          v54 = *(&v73 + 1);
          *(v73 + DWORD2(v73)) = v48;
          *v9 = v52;
          *(v9 + 8) = v54;
          *(v9 + 16) = v53;
        }

        else
        {
          v15 = v61;
          v7 = v62;
          if (a4)
          {
            goto LABEL_53;
          }

          re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(a3, 4 * v48, 0x10uLL, &v73);
          LOWORD(v66) = 257;
          v65 = 65540;
          LOBYTE(v67) = 28;
          HIDWORD(v66) = 0;
          re::DeformationVertexBufferState::setOutputBuffer(v24, 0x13u, 0, &v73, &v65);
        }
      }

      else
      {
        v15 = v61;
        v7 = v62;
      }

      v9 = v60;
      if (++v16 == v60)
      {
        return v15;
      }
    }

    re::internal::assertLog(6, v20, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v18, v21);
    _os_crash();
    __break(1u);
LABEL_44:
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v65 = 136315906;
    v66 = "operator[]";
    v67 = 1024;
    v68 = 797;
    v69 = 2048;
    v70 = v5;
    v71 = 2048;
    v72 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_45:
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v65 = 136315906;
    v66 = "operator[]";
    v67 = 1024;
    v68 = 476;
    v69 = 2048;
    v70 = v5;
    v71 = 2048;
    v72 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_46:
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v65 = 136315906;
    v66 = "operator[]";
    v67 = 1024;
    v68 = 468;
    v69 = 2048;
    v70 = v16;
    v71 = 2048;
    v72 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_47:
    re::internal::assertLog(6, v38, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v39, v38);
    _os_crash();
    __break(1u);
LABEL_48:
    re::internal::assertLog(6, v41, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v42, v41);
    _os_crash();
    __break(1u);
LABEL_49:
    re::internal::assertLog(6, v44, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v45, v44);
    _os_crash();
    __break(1u);
LABEL_50:
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v65 = 136315906;
    v66 = "operator[]";
    v67 = 1024;
    v68 = 476;
    v69 = 2048;
    v70 = v12;
    v71 = 2048;
    v72 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_51;
  }

  return v15;
}

uint64_t re::TensionDeformer::deformGPU(uint64_t a1, uint64_t a2, void **this, void *a4)
{
  v4 = a4;
  v41 = *MEMORY[0x1E69E9840];
  v7 = *a4;
  re::mtl::ComputeCommandEncoder::pushDebugGroup(this, "Perform Tension Computation");
  v8 = *(v7 + 48);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v33 = v7;
    v34 = v4;
    v32 = *(v7 + 48);
    do
    {
      v11 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v7 + 8, v10);
      v13 = *(a2 + 8);
      if (v13 <= v10)
      {
        memset(v40, 0, sizeof(v40));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v37 = 136315906;
        *&v37[4] = "operator[]";
        *&v37[12] = 1024;
        *&v37[14] = 468;
        *&v37[18] = 2048;
        *&v37[20] = v10;
        v38 = 2048;
        v39 = v13;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_15:
        re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v16, v17);
        _os_crash();
        __break(1u);
      }

      v14 = *(a2 + 16);
      v15 = v14 + v9;
      if (*(v14 + v9 + 32) && *(v15 + 40) && *(v14 + v9 + 48))
      {
        v16 = *(v11 + 8);
        v17 = v4[6];
        if (v17 <= v16)
        {
          goto LABEL_15;
        }

        v18 = (v4[5] + 312 * v16);
        LOBYTE(v40[0]) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 1u);
        v19 = *(v18[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 7, v40) + 20);
        LOBYTE(v40[0]) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 1u);
        v20 = v19 / *(v18[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 15, v40) + 4);
        LOBYTE(v40[0]) = 0;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 0);
        if (*(v18[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 15, v40) + 16) == 36)
        {
          v21 = 24;
        }

        else
        {
          v21 = 16;
        }

        v22 = [*(a1 + v21) maxTotalThreadsPerThreadgroup];
        v23 = *(a1 + v21);
        v36 = (v20 + v22 - 1) / v22;
        v24 = v22;
        [*this setComputePipelineState:v23];
        LOBYTE(v40[0]) = 19;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 0x13u);
        v25 = *(v18[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 23, v40) + 24);
        LOBYTE(v40[0]) = 19;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 0x13u);
        [*this setBuffer:v25 offset:*(v18[24] + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find(v18 + 23, v40) + 16), 0}];
        LOBYTE(v40[0]) = 0;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 0);
        v26 = *(v18[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 7, v40) + 24);
        LOBYTE(v40[0]) = 0;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 0);
        [*this setBuffer:v26 offset:*(v18[8] + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find(v18 + 7, v40) + 16), 1}];
        LOBYTE(v40[0]) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 1u);
        v27 = *(v18[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 7, v40) + 24);
        LOBYTE(v40[0]) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v18, 1u);
        v28 = *(v18[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v18 + 7, v40) + 16);
        v29 = v27;
        v8 = v32;
        v7 = v33;
        [*this setBuffer:v29 offset:v28 atIndex:2];
        [*this setBuffer:**(v15 + 32) offset:*(*(v15 + 32) + 16) atIndex:3];
        [*this setBuffer:**(v15 + 40) offset:*(*(v15 + 40) + 16) atIndex:4];
        [*this setBuffer:**(v14 + v9 + 48) offset:*(*(v14 + v9 + 48) + 16) atIndex:5];
        [*this setBuffer:*(v14 + v9 + 16) offset:*(v14 + v9 + 8) atIndex:6];
        v4 = v34;
        v30 = *this;
        *&v40[0] = v36;
        *(v40 + 8) = vdupq_n_s64(1uLL);
        *v37 = v24;
        *&v37[8] = *(v40 + 8);
        [v30 dispatchThreadgroups:v40 threadsPerThreadgroup:v37];
      }

      ++v10;
      v9 += 56;
    }

    while (v8 != v10);
  }

  return [*this popDebugGroup];
}

uint64_t re::TensionDeformer::deformCPU(uint64_t a1, uint64_t a2, void *a3)
{
  v124 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  v109 = 0;
  v106 = 0;
  v107 = 0;
  v104 = 0;
  v105 = 0;
  v108 = 0;
  v101 = 0;
  v102 = 0;
  v100 = 0;
  v103 = 0;
  v4 = *(v3 + 48);
  if (!v4)
  {
    goto LABEL_50;
  }

  v5 = a3;
  v6 = a2;
  v7 = 0;
  v85 = v3;
  v88 = *(v3 + 48);
  do
  {
    v8 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v3 + 8, v7);
    v10 = *(v6 + 8);
    if (v10 <= v7)
    {
      goto LABEL_63;
    }

    v11 = (*(v6 + 16) + 56 * v7);
    if (v11[4] && v11[5] && v11[6])
    {
      v12 = *(v8 + 8);
      v13 = v5[6];
      if (v13 <= v12)
      {
        goto LABEL_64;
      }

      v14 = (v5[5] + 312 * v12);
      v89 = (*(v6 + 16) + 56 * v7);
      v15 = v11[3];
      LOBYTE(v119) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v14, 1u);
      v16 = *(v14[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v14 + 7, &v119) + 20);
      LOBYTE(v119) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v14, 1u);
      v92 = *(v14[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v14 + 15, &v119) + 4);
      LOBYTE(v119) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v14, 1u);
      v17 = re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v14 + 15, &v119);
      v18 = v14[16];
      v97 = 0;
      v10 = 20;
      v98 = 0;
      v99 = 0;
      re::VertexUnpacker::setVertexFormat(&v97, (v18 + 20 * v17 + 4));
      v107 = 0;
      ++v108;
      if (v106 < v15 / 3)
      {
        re::DynamicArray<int>::setCapacity(&v105, v15 / 3);
      }

      v91 = v16;
      v19 = v16 / v92;
      v102 = 0;
      ++v103;
      if (v101 < v19)
      {
        re::DynamicArray<int>::setCapacity(&v100, v19);
      }

      LOBYTE(v119) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v14, 1u);
      v20 = v14[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v14 + 7, &v119);
      v21 = *(v20 + 8);
      v22 = *(v20 + 16);
      LOBYTE(v119) = 0;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v14, 0);
      v90 = v14;
      if (*(v14[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v14 + 15, &v119) + 16) == 36)
      {
        LOBYTE(v119) = 0;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v14, 0);
        v23 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v14 + 7, &v119);
        if (v15)
        {
          v10 = 0;
          v25 = v14[8] + 32 * v23;
          v26 = *(v25 + 20) >> 2;
          v27 = (*(v25 + 8) + *(v25 + 16) + 4);
          while (v10 < v26)
          {
            v28 = v97(v21 + v22, *(v27 - 1));
            v30 = v10 + 1;
            if (v10 + 1 >= v26)
            {
              goto LABEL_60;
            }

            v31 = v28;
            v32 = v29;
            v33 = v97(v21 + v22, *v27);
            v35 = v10 + 2;
            if (v10 + 2 >= v26)
            {
              goto LABEL_61;
            }

            v36.i64[0] = v31;
            v36.i64[1] = v32;
            v95 = v36;
            v36.i64[0] = v33;
            v36.i64[1] = v34;
            v93 = v36;
            v37.i64[0] = v97(v21 + v22, v27[1]);
            v37.i64[1] = v38;
            v39 = vsubq_f32(v93, v95);
            v40 = vsubq_f32(v37, v95);
            v41 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL), vnegq_f32(v39)), v40, vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL));
            v42 = vmulq_f32(v41, v41);
            *&v119 = sqrtf(v42.f32[1] + (v42.f32[2] + v42.f32[0])) * 0.5;
            re::DynamicArray<float>::add(&v105, &v119);
            v10 += 3;
            v27 += 3;
            if (v10 >= v15)
            {
              goto LABEL_26;
            }
          }

          goto LABEL_58;
        }
      }

      else
      {
        LOBYTE(v119) = 0;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v14, 0);
        v43 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v14 + 7, &v119);
        if (v15)
        {
          v10 = 0;
          v45 = v14[8] + 32 * v43;
          v26 = *(v45 + 20) >> 1;
          v46 = (*(v45 + 8) + *(v45 + 16) + 4);
          while (v10 < v26)
          {
            v47 = v97(v21 + v22, *(v46 - 2));
            v49 = v10 + 1;
            if (v10 + 1 >= v26)
            {
              goto LABEL_59;
            }

            v50 = v47;
            v51 = v48;
            v52 = v97(v21 + v22, *(v46 - 1));
            v54 = v10 + 2;
            if (v10 + 2 >= v26)
            {
              goto LABEL_62;
            }

            v55.i64[0] = v50;
            v55.i64[1] = v51;
            v96 = v55;
            v55.i64[0] = v52;
            v55.i64[1] = v53;
            v94 = v55;
            v56 = *v46;
            v46 += 3;
            v57.i64[0] = v97(v21 + v22, v56);
            v57.i64[1] = v58;
            v59 = vsubq_f32(v94, v96);
            v60 = vsubq_f32(v57, v96);
            v61 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v60, v60), v60, 0xCuLL), vnegq_f32(v59)), v60, vextq_s8(vuzp1q_s32(v59, v59), v59, 0xCuLL));
            v62 = vmulq_f32(v61, v61);
            *&v119 = sqrtf(v62.f32[1] + (v62.f32[2] + v62.f32[0])) * 0.5;
            re::DynamicArray<float>::add(&v105, &v119);
            v10 += 3;
            if (v10 >= v15)
            {
              goto LABEL_26;
            }
          }

          goto LABEL_57;
        }
      }

LABEL_26:
      v63 = re::BufferView::contents(v89[4]);
      v64 = re::BufferView::contents(v89[5]);
      if (v91 >= v92)
      {
        v65 = v64;
        v66 = 0;
        v10 = v64 - 4;
        while (1)
        {
          v67 = v66 ? *(v10 + 4 * v66) : 0;
          v68 = *(v65 + 4 * v66);
          v69 = 0.0;
          if (v68 > v67)
          {
            break;
          }

LABEL_35:
          *&v119 = v69 / (v68 - v67);
          re::DynamicArray<float>::add(&v100, &v119);
          if (++v66 >= v19)
          {
            goto LABEL_36;
          }
        }

        v70 = v107;
        v71 = v68 - v67;
        v72 = (v63 + 4 * v67);
        while (1)
        {
          v73 = *v72++;
          v26 = v73;
          if (v107 <= v73)
          {
            break;
          }

          v69 = v69 + *(v109 + 4 * v26);
          if (!--v71)
          {
            goto LABEL_35;
          }
        }

        v110 = 0;
        v81 = &v111;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v119 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v111 = 136315906;
        v112 = "operator[]";
        v113 = 1024;
        v114 = 789;
        v115 = 2048;
        v116 = v26;
        v117 = 2048;
        v118 = v70;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_55;
      }

LABEL_36:
      v74 = re::BufferView::contents(v89[6]);
      LOBYTE(v119) = 19;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v90, 0x13u);
      v75 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v90 + 184), &v119);
      v4 = v88;
      v26 = 56;
      if (v91 >= v92)
      {
        v77 = 0;
        v78 = *(v90 + 192) + 32 * v75;
        v79 = *(v78 + 8) + *(v78 + 16);
        v80 = *(v78 + 20) >> 2;
        v81 = v102;
        v82 = v104;
        while (v81 != v77)
        {
          if (v80 == v77)
          {
            goto LABEL_56;
          }

          v83 = (*(v74 + 4 * v77) - *(v82 + 4 * v77)) / *(v74 + 4 * v77);
          if (v83 > 1.0)
          {
            v83 = 1.0;
          }

          if (v83 < -1.0)
          {
            v83 = -1.0;
          }

          *(v79 + 4 * v77++) = v83;
          if (v77 >= v19)
          {
            goto LABEL_45;
          }
        }

LABEL_55:
        v110 = 0;
        v10 = &v111;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v119 = 0u;
        v7 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v111 = 136315906;
        v112 = "operator[]";
        v113 = 1024;
        v114 = 789;
        v115 = 2048;
        v116 = v81;
        v117 = 2048;
        v118 = v81;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_56:
        re::internal::assertLog(6, v76, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v80, v80);
        _os_crash();
        __break(1u);
LABEL_57:
        re::internal::assertLog(6, v44, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v10, v26);
        _os_crash();
        __break(1u);
LABEL_58:
        re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v10, v26);
        _os_crash();
        __break(1u);
LABEL_59:
        re::internal::assertLog(6, v48, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v49, v26);
        _os_crash();
        __break(1u);
LABEL_60:
        re::internal::assertLog(6, v29, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v30, v26);
        _os_crash();
        __break(1u);
LABEL_61:
        re::internal::assertLog(6, v34, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v35, v26);
        _os_crash();
        __break(1u);
LABEL_62:
        re::internal::assertLog(6, v53, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v54, v26);
        _os_crash();
        __break(1u);
LABEL_63:
        v97 = 0;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v119 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v111 = 136315906;
        v112 = "operator[]";
        v113 = 1024;
        v114 = 468;
        v115 = 2048;
        v116 = v7;
        v117 = 2048;
        v118 = v10;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_64:
        re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v12, v13);
        _os_crash();
        __break(1u);
      }

LABEL_45:
      v6 = a2;
      v5 = a3;
      v3 = v85;
    }

    ++v7;
  }

  while (v7 != v4);
  if (v100 && v104)
  {
    (*(*v100 + 40))();
  }

LABEL_50:
  result = v105;
  if (v105)
  {
    if (v109)
    {
      return (*(*v105 + 40))();
    }
  }

  return result;
}

void re::TensionDeformer::~TensionDeformer(re::TensionDeformer *this)
{
  for (i = 24; i != 8; i -= 8)
  {
    v3 = *(this + i);
    if (v3)
    {

      *(this + i) = 0;
    }
  }
}

{
  v2 = 24;
  while (1)
  {
    v3 = *(this + v2);
    if (v3)
    {

      *(this + v2) = 0;
    }

    v2 -= 8;
    if (v2 == 8)
    {

      JUMPOUT(0x1E6906520);
    }
  }
}

uint64_t re::internal::Callable<re::TensionDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::operator()(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  result = **a2;
  if (result)
  {
    if (v2[1])
    {
      result = (*(*result + 40))(result, v2[2]);
      v2[1] = 0;
      v2[2] = 0;
    }

    *v2 = 0;
  }

  return result;
}

void *re::internal::Callable<re::TensionDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D08E30;
  return result;
}

void *re::internal::Callable<re::TensionDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D08E30;
  return result;
}

uint64_t re::VertexUnpacker::setVertexFormat(uint64_t this, const VertexBufferFormat *a2)
{
  *(this + 8) = *a2;
  v4 = *(a2 + 12);
  v5 = re::VertexUnpacker::unpackHalf3Data;
  if (v4 > 0x19)
  {
    if (v4 == 26)
    {
      v6 = 1;
      goto LABEL_10;
    }

    if (v4 == 30)
    {
      v6 = 0;
      v5 = re::VertexUnpacker::unpackFloat3Data;
      goto LABEL_10;
    }
  }

  else
  {
    if (v4 == 8)
    {
      v6 = 2;
      v5 = re::VertexUnpacker::unpackUChar3NormalizedData;
      goto LABEL_10;
    }

    if (v4 == 11)
    {
      v6 = 3;
      v5 = re::VertexUnpacker::unpackChar3NormalizedData;
LABEL_10:
      *this = v5;
      *(this + 12) = v6;
      return this;
    }
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unsupported format", "!Unreachable code", "setVertexFormat", 35, v2, v3);
  this = _os_crash();
  __break(1u);
  return this;
}

double re::VertexUnpacker::unpackHalf3Data(re::VertexUnpacker *this, const void *a2, float16x4_t a3)
{
  v3 = this + 8 * a2;
  a3.i32[0] = *v3;
  *&result = vcvtq_f32_f16(a3).u64[0];
  _H1 = *(v3 + 2);
  __asm { FCVT            S1, H1 }

  return result;
}

int8x8_t re::VertexUnpacker::unpackChar3NormalizedData(re::VertexUnpacker *this, const void *a2)
{
  v2 = this + 4 * a2;
  v3.i32[0] = *v2;
  v3.i32[1] = v2[1];
  v4 = vdiv_f32(vcvt_f32_s32(v3), vdup_n_s32(0x42FE0000u));
  __asm { FMOV            V1.2S, #1.0 }

  return vbsl_s8(vcgt_f32(v4, _D1), _D1, v4);
}

float32x2_t re::VertexUnpacker::unpackUChar3NormalizedData(re::VertexUnpacker *this, const void *a2)
{
  v2 = this + 4 * a2;
  v3.i32[0] = *v2;
  v3.i32[1] = v2[1];
  return vdiv_f32(vcvt_f32_u32(v3), vdup_n_s32(0x437F0000u));
}

double re::LateLatchingManager::processLateLatchAnchorPose(uint64_t a1, uint64_t a2, float32x4_t *a3)
{
  v17 = a2;
  v4 = *(*(*(a1 + 4376) + 144) + 24) & 0xFFFFFFFFFFFFFFFLL;
  v5 = 4368;
  while (*(a1 + 1440) != v4)
  {
    a1 += 1456;
    v5 -= 1456;
    if (!v5)
    {
      return result;
    }
  }

  v6 = re::SmallHashTable<unsigned long long,re::LateLatchingManager::AnchorEntry,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::tryGet(a1, &v17);
  if (v6)
  {
    v8 = v6;
    v20 = __invert_f4(*v6);
    v9 = 0;
    v10 = *a3;
    v11 = a3[1];
    v12 = a3[2];
    v13 = a3[3];
    v18 = v20;
    do
    {
      v19[v9] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(*&v18.columns[v9])), v11, *v18.columns[v9].f32, 1), v12, v18.columns[v9], 2), v13, v18.columns[v9], 3);
      ++v9;
    }

    while (v9 != 4);
    result = *v19;
    v14 = v19[1];
    v15 = v19[2];
    v16 = v19[3];
    v8[1].columns[0] = v19[0];
    v8[1].columns[1] = v14;
    v8[1].columns[2] = v15;
    v8[1].columns[3] = v16;
  }

  return result;
}

uint64_t re::SmallHashTable<unsigned long long,re::LateLatchingManager::AnchorEntry,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::tryGet(uint64_t a1, void *a2)
{
  if (*(a1 + 1212))
  {
    return re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(a1 + 1184, a2);
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = 144 * v3;
  for (result = a1 + 48; *(result - 16) != *a2; result += 144)
  {
    v4 -= 144;
    if (!v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t re::LateLatchingManager::trackAnchorPose(os_unfair_lock_s *a1, unint64_t a2, uint64_t a3, __int128 *a4)
{
  os_unfair_lock_lock(a1 + 1092);
  v9 = 0;
  v10 = 0;
  v11 = -1;
  v12 = a1;
  while (1)
  {
    v13 = *(v12 + 1440);
    if (v13 == a3)
    {
      break;
    }

    if (v13 < v11)
    {
      v10 = v9;
      v11 = *(v12 + 1440);
    }

    ++v9;
    v12 += 1456;
    if (v9 == 3)
    {
      if (v10 >= 3)
      {
        re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v10, 3);
        result = _os_crash();
        __break(1u);
        return result;
      }

      v12 = &a1[364 * v10];
      *(v12 + 1440) = a3;
      if (*(v12 + 1212))
      {
        v14 = *(v12 + 1208);
        if (v14)
        {
          memset_pattern16(*(v12 + 1192), &unk_1E304C660, 4 * v14);
        }

        v15 = *(v12 + 1216);
        if (v15)
        {
          v16 = *(v12 + 1200);
          do
          {
            if ((*v16 & 0x80000000) != 0)
            {
              *v16 &= ~0x80000000;
            }

            v16 += 36;
            --v15;
          }

          while (v15);
        }

        *(v12 + 1220) = 0x7FFFFFFF;
        *(v12 + 1212) = 0;
        v17 = 1224;
      }

      else
      {
        *(v12 + 16) = 0;
        v17 = 24;
      }

      ++*(v12 + v17);
      if (*(v12 + 1420))
      {
        v18 = *(v12 + 1416);
        if (v18)
        {
          memset_pattern16(*(v12 + 1400), &unk_1E304C660, 4 * v18);
        }

        v19 = *(v12 + 1424);
        if (v19)
        {
          v20 = *(v12 + 1408);
          do
          {
            if ((*v20 & 0x80000000) != 0)
            {
              *v20 &= ~0x80000000;
            }

            v20 += 6;
            --v19;
          }

          while (v19);
        }

        *(v12 + 1428) = 0x7FFFFFFF;
        *(v12 + 1420) = 0;
        v21 = 1432;
      }

      else
      {
        *(v12 + 1248) = 0;
        v21 = 1256;
      }

      ++*(v12 + v21);
      break;
    }
  }

  v28 = a2;
  if (re::SmallHashTable<unsigned long long,re::LateLatchingManager::AnchorEntry,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::containsKey(v12, &v28))
  {
    v22 = re::SmallHashTable<unsigned long long,unsigned char,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::tryGet(v12 + 1232, v28);
    if (v22)
    {
      v23 = *v22;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v24 = a4[1];
    v27[0] = *a4;
    v27[1] = v24;
    v25 = a4[3];
    v27[2] = a4[2];
    v27[3] = v25;
    v27[4] = xmmword_1E3047670;
    v27[5] = xmmword_1E3047680;
    v27[6] = xmmword_1E30476A0;
    v27[7] = xmmword_1E30474D0;
    re::SmallHashTable<unsigned long long,re::LateLatchingManager::AnchorEntry,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::add(v12, &v28, v27);
    if (*(v12 + 1212))
    {
      v23 = *(v12 + 1212);
    }

    else
    {
      v23 = *(v12 + 16);
    }

    LOBYTE(v27[0]) = v23;
    re::SmallHashTable<unsigned long long,unsigned char,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::add(v12 + 1232, &v28, v27);
  }

  os_unfair_lock_unlock(a1 + 1092);
  return v23;
}

void re::LateLatchingManager::getLateLatchPoseCorrections(os_unfair_lock_s *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = this;
  v56 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  v54 = (a3 + 672);
  *(a3 + 672) = 0u;
  *(a3 + 688) = 0u;
  *(a3 + 704) = 0;
  *(a3 + 708) = 0x7FFFFFFFLL;
  os_unfair_lock_lock(this + 1092);
  for (i = 0; i != 1092; i += 364)
  {
    v10 = &v5[i];
    if (*&v5[i + 360]._os_unfair_lock_opaque == a2)
    {
      os_unfair_lock_opaque = v10[303]._os_unfair_lock_opaque;
      v51 = &v10[318];
      v12 = &v5[i];
      if (os_unfair_lock_opaque)
      {
        v13 = v12 + 296;
        v53 = v12[304]._os_unfair_lock_opaque;
        v3 = 0;
        if (v53)
        {
          v14 = *&v12[300]._os_unfair_lock_opaque;
          do
          {
            v15 = *v14;
            v14 += 36;
            if (v15 < 0)
            {
              goto LABEL_15;
            }

            ++v3;
          }

          while (v53 != v3);
          LODWORD(v3) = v53;
        }

        else
        {
          LODWORD(v53) = 0;
        }

LABEL_15:
        v52 = v13;
      }

      else
      {
        v13 = v12 + 8;
        v16 = *&v12[4]._os_unfair_lock_opaque;
        v52 = &v13[36 * v16];
        LODWORD(v53) = v16;
      }

      v17 = &v5[i];
      while (1)
      {
LABEL_17:
        if (os_unfair_lock_opaque)
        {
          if (v53 == v3)
          {
            goto LABEL_4;
          }

          v18 = *&v13[4]._os_unfair_lock_opaque + 144 * v3;
          p_os_unfair_lock_opaque = (v18 + 8);
          v20 = (v18 + 16);
        }

        else
        {
          if (v13 == v52)
          {
            goto LABEL_4;
          }

          v20 = v13 + 4;
          p_os_unfair_lock_opaque = &v13->_os_unfair_lock_opaque;
        }

        v21 = *p_os_unfair_lock_opaque;
        if (v17[355]._os_unfair_lock_opaque)
        {
          v22 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v21 ^ (v21 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v21 ^ (v21 >> 30))) >> 27));
          v7 = re::HashTable<unsigned long,re::BufferTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(v55, &v17[348], v21, v22 ^ (v22 >> 31));
          if (*&v55[12] == 0x7FFFFFFF)
          {
            goto LABEL_50;
          }

          v23 = (*&v17[352]._os_unfair_lock_opaque + 24 * *&v55[12] + 16);
        }

        else
        {
          v24 = *&v17[312]._os_unfair_lock_opaque;
          if (!v24)
          {
            goto LABEL_50;
          }

          v25 = 16 * v24;
          v23 = v51;
          while (*(v23 - 1) != v21)
          {
            v23 += 16;
            v25 -= 16;
            if (!v25)
            {
              goto LABEL_50;
            }
          }
        }

        if (*(a3 + 700))
        {
LABEL_26:
          re::HashTable<unsigned char,re::Matrix4x4<float>,re::Hash<unsigned char>,re::EqualTo<unsigned char>,false,false>::add(v54, v23, &v20[16]);
        }

        else
        {
          v26 = *(a3 + 16);
          if (v26)
          {
            v27 = 80 * v26;
            v28 = *v23;
            v29 = 32;
            v30 = 80 * v26;
            do
            {
              if (*(a3 + v29) == v28)
              {
                goto LABEL_50;
              }

              v29 += 80;
              v30 -= 80;
            }

            while (v30);
            if ((v26 & 0xFFFFFFF8) != 0)
            {
              v50 = v5;
              if (*v54)
              {
LABEL_42:
                v33 = (a3 + 32);
                do
                {
                  memset(v55, 0, 24);
                  v34 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *v33) ^ ((0xBF58476D1CE4E5B9 * *v33) >> 27));
                  re::HashTable<unsigned char,re::Matrix4x4<float>,re::Hash<unsigned char>,re::EqualTo<unsigned char>,false,false>::findEntry<unsigned char>(v54, v33, v34 ^ (v34 >> 31), v55);
                  if (*&v55[12] == 0x7FFFFFFF)
                  {
                    v35 = re::HashTable<unsigned char,re::Matrix4x4<float>,re::Hash<unsigned char>,re::EqualTo<unsigned char>,false,false>::allocEntry(v54, *&v55[8], *v55);
                    *(v35 + 4) = *v33;
                    v36 = *(v33 + 1);
                    v37 = *(v33 + 2);
                    v38 = *(v33 + 4);
                    *(v35 + 48) = *(v33 + 3);
                    *(v35 + 64) = v38;
                    *(v35 + 16) = v36;
                    *(v35 + 32) = v37;
                    ++*(a3 + 712);
                  }

                  v33 += 80;
                  v27 -= 80;
                }

                while (v27);
              }

              else
              {
                v31 = *a3;
                if (!*a3)
                {
                }

                re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v54, v31, 16);
                v32 = *(a3 + 16);
                if (v32)
                {
                  v27 = 80 * v32;
                  goto LABEL_42;
                }
              }

              *(a3 + 16) = 0;
              ++*(a3 + 24);
              v5 = v50;
              goto LABEL_26;
            }

            v41 = *&v20[20]._os_unfair_lock_opaque;
            *&v55[15] = *&v20[16]._os_unfair_lock_opaque;
            *&v55[31] = v41;
            v42 = *&v20[28]._os_unfair_lock_opaque;
            *&v55[47] = *&v20[24]._os_unfair_lock_opaque;
            *&v55[63] = v42;
            if (v26 >= 8)
            {
              re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
              _os_crash();
              __break(1u);
              return;
            }
          }

          else
          {
            LOBYTE(v28) = *v23;
            v39 = *&v20[20]._os_unfair_lock_opaque;
            *&v55[15] = *&v20[16]._os_unfair_lock_opaque;
            *&v55[31] = v39;
            v40 = *&v20[28]._os_unfair_lock_opaque;
            *&v55[47] = *&v20[24]._os_unfair_lock_opaque;
            *&v55[63] = v40;
          }

          v43 = a3 + 32 + 80 * v26;
          v44 = *&v55[32];
          *(v43 + 49) = *&v55[48];
          *(v43 + 64) = *&v55[63];
          v45 = *v55;
          *(v43 + 17) = *&v55[16];
          *(v43 + 33) = v44;
          *v43 = v28;
          *(v43 + 1) = v45;
          v46 = *(a3 + 16);
          ++*(a3 + 24);
          *(a3 + 16) = v46 + 1;
          if (v46 == -1)
          {
            re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, -1, 0);
            _os_crash();
            __break(1u);
          }
        }

LABEL_50:
        if (os_unfair_lock_opaque)
        {
          v47 = v3 + 1;
          if (v13[8]._os_unfair_lock_opaque <= (v3 + 1))
          {
            LODWORD(v3) = v3 + 1;
          }

          else
          {
            LODWORD(v3) = v13[8];
          }

          while (v3 != v47)
          {
            v48 = v47;
            v49 = *(*&v13[4]._os_unfair_lock_opaque + 144 * v47++);
            if (v49 < 0)
            {
              LODWORD(v3) = v48;
              goto LABEL_17;
            }
          }
        }

        else
        {
          v13 += 36;
        }
      }
    }
  }

LABEL_4:

  os_unfair_lock_unlock(v5 + 1092);
}

uint64_t re::LateLatchingManager::isTrackingAnchorId(os_unfair_lock_s *this, uint64_t a2)
{
  v8 = a2;
  os_unfair_lock_lock(this + 1092);
  v3 = *(*(*&this[1094]._os_unfair_lock_opaque + 144) + 24) & 0xFFFFFFFFFFFFFFFLL;
  v4 = this;
  v5 = 4368;
  while (*(v4 + 180) != v3 || !re::SmallHashTable<unsigned long long,re::LateLatchingManager::AnchorEntry,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::containsKey(v4, &v8))
  {
    v4 = (v4 + 1456);
    v5 -= 1456;
    if (!v5)
    {
      v6 = 0;
      goto LABEL_7;
    }
  }

  v6 = 1;
LABEL_7:
  os_unfair_lock_unlock(this + 1092);
  return v6;
}

BOOL re::SmallHashTable<unsigned long long,re::LateLatchingManager::AnchorEntry,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::containsKey(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 1212))
  {
    v2 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
    re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::findEntry<re::WeakStringID>(a1 + 1184, a2, (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31), v11);
    return v12 != 0x7FFFFFFF;
  }

  else
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      v5 = 144 * v4;
      v6 = (a1 + 32);
      v7 = *a2;
      v8 = v5 - 144;
      do
      {
        v9 = *v6;
        v6 += 18;
        result = v9 == v7;
        v10 = v9 == v7 || v8 == 0;
        v8 -= 144;
      }

      while (!v10);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re::SmallHashTable<unsigned long long,unsigned char,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::tryGet(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 188))
  {
    v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
    re::HashTable<unsigned long,re::BufferTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(v7, a1 + 160, a2, v3 ^ (v3 >> 31));
    if (v8 != 0x7FFFFFFF)
    {
      return *(a1 + 176) + 24 * v8 + 16;
    }

    return 0;
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    return 0;
  }

  v6 = 16 * v5;
  for (result = a1 + 40; *(result - 8) != a2; result += 16)
  {
    v6 -= 16;
    if (!v6)
    {
      return 0;
    }
  }

  return result;
}

uint64_t re::SmallHashTable<unsigned long long,re::LateLatchingManager::AnchorEntry,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::add(uint64_t result, uint64_t *a2, __int128 *a3)
{
  v5 = result;
  v38 = *MEMORY[0x1E69E9840];
  if (!*(result + 1212))
  {
    v7 = *(result + 16);
    if (v7)
    {
      v8 = 144 * v7;
      v9 = result + 32;
      v10 = *a2;
      v11 = 32;
      v12 = 144 * v7;
      do
      {
        if (*(result + v11) == v10)
        {
          return result;
        }

        v11 += 144;
        v12 -= 144;
      }

      while (v12);
      if ((v7 & 0xFFFFFFF8) != 0)
      {
        v6 = result + 1184;
        if (!*(result + 1184))
        {
          v13 = *result;
          if (!*result)
          {
          }

          re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(v5 + 1184, v13, 16);
          v14 = *(v5 + 16);
          if (!v14)
          {
            goto LABEL_19;
          }

          v8 = 144 * v14;
        }

        do
        {
          memset(v37, 0, 24);
          v15 = 0xBF58476D1CE4E5B9 * (*v9 ^ (*v9 >> 30));
          re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::findEntry<re::WeakStringID>(v5 + 1184, v9, (0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))) ^ ((0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))) >> 31), v37);
          if (*&v37[12] == 0x7FFFFFFF)
          {
            v16 = re::HashTable<unsigned long long,re::LateLatchingManager::AnchorEntry,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(v5 + 1184, *&v37[8], *v37);
            *(v16 + 8) = *v9;
            v17 = *(v9 + 80);
            v18 = *(v9 + 96);
            v19 = *(v9 + 128);
            *(v16 + 112) = *(v9 + 112);
            *(v16 + 128) = v19;
            *(v16 + 80) = v17;
            *(v16 + 96) = v18;
            v20 = *(v9 + 16);
            v21 = *(v9 + 32);
            v22 = *(v9 + 64);
            *(v16 + 48) = *(v9 + 48);
            *(v16 + 64) = v22;
            *(v16 + 16) = v20;
            *(v16 + 32) = v21;
            ++*(v5 + 1224);
          }

          v9 += 144;
          v8 -= 144;
        }

        while (v8);
LABEL_19:
        *(v5 + 16) = 0;
        ++*(v5 + 24);
        goto LABEL_3;
      }

      v27 = a3[5];
      *&v37[72] = a3[4];
      *&v37[88] = v27;
      v28 = a3[7];
      *&v37[104] = a3[6];
      *&v37[120] = v28;
      v29 = a3[1];
      *&v37[8] = *a3;
      *&v37[24] = v29;
      v30 = a3[3];
      *&v37[40] = a3[2];
      *&v37[56] = v30;
      if (v7 >= 8)
      {
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
        result = _os_crash();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = a3[5];
      *&v37[72] = a3[4];
      *&v37[88] = v23;
      v24 = a3[7];
      *&v37[104] = a3[6];
      *&v37[120] = v24;
      v25 = a3[1];
      *&v37[8] = *a3;
      *&v37[24] = v25;
      v26 = a3[3];
      *&v37[40] = a3[2];
      v10 = *a2;
      *&v37[56] = v26;
    }

    v31 = result + 144 * v7;
    v32 = *&v37[64];
    *(v31 + 120) = *&v37[80];
    v33 = *&v37[112];
    *(v31 + 136) = *&v37[96];
    *(v31 + 152) = v33;
    v34 = *v37;
    *(v31 + 56) = *&v37[16];
    v35 = *&v37[48];
    *(v31 + 72) = *&v37[32];
    *(v31 + 88) = v35;
    *(v31 + 104) = v32;
    *(v31 + 32) = v10;
    *(v31 + 168) = *&v37[128];
    *(v31 + 40) = v34;
    v36 = *(result + 16);
    ++*(result + 24);
    *(result + 16) = v36 + 1;
    if (v36 == -1)
    {
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, -1, 0);
      _os_crash();
      __break(1u);
    }

    return result;
  }

  v6 = result + 1184;
LABEL_3:

  return re::HashTable<unsigned long long,re::LateLatchingManager::AnchorEntry,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::add(v6, a2, a3);
}

uint64_t re::HashTable<unsigned long long,re::LateLatchingManager::AnchorEntry,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::add(uint64_t a1, void *a2, __int128 *a3)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::findEntry<re::WeakStringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v15);
  if (HIDWORD(v16) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 144 * HIDWORD(v16) + 16;
  }

  v7 = re::HashTable<unsigned long long,re::LateLatchingManager::AnchorEntry,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, v16, v15);
  *(v7 + 8) = *a2;
  result = v7 + 16;
  v9 = a3[4];
  v10 = a3[5];
  v11 = a3[7];
  *(v7 + 112) = a3[6];
  *(v7 + 128) = v11;
  *(v7 + 80) = v9;
  *(v7 + 96) = v10;
  v12 = *a3;
  v13 = a3[1];
  v14 = a3[3];
  *(v7 + 48) = a3[2];
  *(v7 + 64) = v14;
  *(v7 + 16) = v12;
  *(v7 + 32) = v13;
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<unsigned long long,re::LateLatchingManager::AnchorEntry,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v33, 0, 36);
          *&v33[36] = 0x7FFFFFFFLL;
          re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(v33, v9, v8);
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
            v18 = v13 + 8;
            do
            {
              if ((*(v18 - 8) & 0x80000000) != 0)
              {
                v19 = 0xBF58476D1CE4E5B9 * (*v18 ^ (*v18 >> 30));
                v20 = re::HashTable<unsigned long long,re::LateLatchingManager::AnchorEntry,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, ((0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) ^ ((0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) >> 31)) % *(a1 + 24));
                *(v20 + 8) = *v18;
                v21 = *(v18 + 72);
                v22 = *(v18 + 88);
                v23 = *(v18 + 120);
                *(v20 + 112) = *(v18 + 104);
                *(v20 + 128) = v23;
                *(v20 + 80) = v21;
                *(v20 + 96) = v22;
                v24 = *(v18 + 8);
                v25 = *(v18 + 24);
                v26 = *(v18 + 56);
                *(v20 + 48) = *(v18 + 40);
                *(v20 + 64) = v26;
                *(v20 + 16) = v24;
                *(v20 + 32) = v25;
              }

              ++v17;
              v18 += 144;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long long,re::LateLatchingManager::AnchorEntry,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::deinit(v33);
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
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v27 = *(a1 + 16);
    v28 = *(v27 + 144 * v4);
  }

  else
  {
    v27 = *(a1 + 16);
    v28 = *(v27 + 144 * v4);
    *(a1 + 36) = v28 & 0x7FFFFFFF;
  }

  v30 = 144 * v4;
  *(v27 + v30) = v28 | 0x80000000;
  v31 = *(a1 + 8);
  *(v27 + v30) = *(v31 + 4 * a2) | 0x80000000;
  *(v31 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v27 + 144 * v4;
}

double re::HashTable<unsigned long long,re::LateLatchingManager::AnchorEntry,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = a1[2];
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 36;
        --v3;
      }

      while (v3);
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t re::SmallHashTable<unsigned long long,unsigned char,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::add(uint64_t result, uint64_t *a2, char *a3)
{
  v5 = result;
  if (!*(result + 188))
  {
    v7 = *(result + 16);
    v8 = *a2;
    if (v7)
    {
      v9 = 16 * v7;
      v10 = result + 32;
      v11 = 32;
      v12 = 16 * v7;
      do
      {
        if (*(result + v11) == v8)
        {
          return result;
        }

        v11 += 16;
        v12 -= 16;
      }

      while (v12);
      if ((v7 & 0xFFFFFFF8) != 0)
      {
        if (!*(result + 160))
        {
          v13 = *result;
          if (!*result)
          {
          }

          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v5 + 160, v13, 16);
          v14 = *(v5 + 16);
          if (!v14)
          {
            goto LABEL_19;
          }

          v9 = 16 * v14;
        }

        do
        {
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v15 = 0xBF58476D1CE4E5B9 * (*v10 ^ (*v10 >> 30));
          re::HashTable<unsigned long,re::BufferTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(&v19, v5 + 160, *v10, (0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))) ^ ((0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))) >> 31));
          if (HIDWORD(v20) == 0x7FFFFFFF)
          {
            v16 = re::HashTable<unsigned long long,unsigned char,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(v5 + 160, v20, v19);
            *(v16 + 8) = *v10;
            *(v16 + 16) = *(v10 + 8);
            ++*(v5 + 200);
          }

          v10 += 16;
          v9 -= 16;
        }

        while (v9);
LABEL_19:
        *(v5 + 16) = 0;
        ++*(v5 + 24);
        v6 = v5 + 160;
        goto LABEL_3;
      }

      if (v7 >= 8)
      {
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
        result = _os_crash();
        __break(1u);
        return result;
      }
    }

    v17 = *a3;
    v18 = result + 16 * v7;
    *(v18 + 32) = v8;
    *(v18 + 40) = v17;
    *(result + 16) = v7 + 1;
    ++*(result + 24);
    return result;
  }

  v6 = result + 160;
LABEL_3:

  return re::HashTable<unsigned long long,unsigned char,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::add(v6, a2, a3);
}

uint64_t re::HashTable<unsigned long long,unsigned char,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::add(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long,re::BufferTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(&v9, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 24 * HIDWORD(v10) + 16;
  }

  v7 = re::HashTable<unsigned long long,unsigned char,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, v10, v9);
  *(v7 + 8) = *a2;
  *(v7 + 16) = *a3;
  result = v7 + 16;
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<unsigned long long,unsigned char,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v27, 0, 36);
          *&v27[36] = 0x7FFFFFFFLL;
          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v27, v9, v8);
          v11 = *v27;
          *v27 = *a1;
          *a1 = v11;
          v12 = *&v27[16];
          v13 = *(a1 + 16);
          *&v27[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v27[24];
          *&v27[24] = *(a1 + 24);
          v14 = *&v27[32];
          *(a1 + 24) = v15;
          ++*&v27[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = v13 + 8;
            do
            {
              if ((*(v18 - 8) & 0x80000000) != 0)
              {
                v19 = 0xBF58476D1CE4E5B9 * (*v18 ^ (*v18 >> 30));
                v20 = re::HashTable<unsigned long long,unsigned char,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, ((0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) ^ ((0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) >> 31)) % *(a1 + 24));
                *(v20 + 8) = *v18;
                *(v20 + 16) = *(v18 + 8);
              }

              ++v17;
              v18 += 24;
            }

            while (v17 < v16);
          }

          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v27);
        }
      }

      else
      {
        if (v8)
        {
          v23 = 2 * v7;
        }

        else
        {
          v23 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v21 = *(a1 + 16);
    v22 = *(v21 + 24 * v4);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 24 * v4);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = 24 * v4;
  *(v21 + v24) = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *(v21 + v24) = *(v25 + 4 * a2) | 0x80000000;
  *(v25 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v21 + 24 * v4;
}

__n128 re::HashTable<unsigned char,re::Matrix4x4<float>,re::Hash<unsigned char>,re::EqualTo<unsigned char>,false,false>::add(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *a2) ^ ((0xBF58476D1CE4E5B9 * *a2) >> 27));
  re::HashTable<unsigned char,re::Matrix4x4<float>,re::Hash<unsigned char>,re::EqualTo<unsigned char>,false,false>::findEntry<unsigned char>(a1, a2, v6 ^ (v6 >> 31), &v11);
  if (HIDWORD(v12) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<unsigned char,re::Matrix4x4<float>,re::Hash<unsigned char>,re::EqualTo<unsigned char>,false,false>::allocEntry(a1, v12, v11);
    *(v8 + 4) = *a2;
    result = *a3;
    v9 = *(a3 + 16);
    v10 = *(a3 + 48);
    *(v8 + 48) = *(a3 + 32);
    *(v8 + 64) = v10;
    *(v8 + 16) = result;
    *(v8 + 32) = v9;
    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::HashTable<unsigned char,re::Matrix4x4<float>,re::Hash<unsigned char>,re::EqualTo<unsigned char>,false,false>::findEntry<unsigned char>@<X0>(uint64_t result@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_5;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(result + 16);
  v8 = *a2;
  if (*(v7 + 80 * v6 + 4) == v8)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v9 = *(v7 + 80 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v9 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v10 = v9;
      if (*(v7 + 80 * v9 + 4) == v8)
      {
        break;
      }

      v9 = *(v7 + 80 * v9) & 0x7FFFFFFF;
      v6 = v10;
      if (v9 == 0x7FFFFFFF)
      {
        v6 = v10;
        goto LABEL_6;
      }
    }

    v5 = v9;
  }

LABEL_6:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

uint64_t re::HashTable<unsigned char,re::Matrix4x4<float>,re::Hash<unsigned char>,re::EqualTo<unsigned char>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v29, 0, 36);
          *&v29[36] = 0x7FFFFFFFLL;
          re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v29, v9, v8);
          v11 = *v29;
          *v29 = *a1;
          *a1 = v11;
          v12 = *&v29[16];
          v13 = *(a1 + 16);
          *&v29[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v29[24];
          *&v29[24] = *(a1 + 24);
          v14 = *&v29[32];
          *(a1 + 24) = v15;
          ++*&v29[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v18 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(v13 + 4)) ^ ((0xBF58476D1CE4E5B9 * *(v13 + 4)) >> 27));
                v19 = re::HashTable<unsigned char,re::Matrix4x4<float>,re::Hash<unsigned char>,re::EqualTo<unsigned char>,false,false>::allocEntry(a1, (v18 ^ (v18 >> 31)) % *(a1 + 24));
                *(v19 + 4) = *(v13 + 4);
                v20 = *(v13 + 16);
                v21 = *(v13 + 32);
                v22 = *(v13 + 64);
                *(v19 + 48) = *(v13 + 48);
                *(v19 + 64) = v22;
                *(v19 + 16) = v20;
                *(v19 + 32) = v21;
              }

              ++v17;
              v13 += 80;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v29);
        }
      }

      else
      {
        if (v8)
        {
          v25 = 2 * v7;
        }

        else
        {
          v25 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v23 = *(a1 + 16);
    v24 = *(v23 + 80 * v4);
  }

  else
  {
    v23 = *(a1 + 16);
    v24 = *(v23 + 80 * v4);
    *(a1 + 36) = v24 & 0x7FFFFFFF;
  }

  v26 = 80 * v4;
  *(v23 + v26) = v24 | 0x80000000;
  v27 = *(a1 + 8);
  *(v23 + v26) = *(v27 + 4 * a2) | 0x80000000;
  *(v27 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v23 + 80 * v4;
}

re::MeshDefinition::AttributeArray *re::MeshDefinition::AttributeArray::AttributeArray(re::MeshDefinition::AttributeArray *this, unint64_t a2)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_1F5D08E88;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 24) = 0u;
  return this;
}

re::MeshDefinition *re::MeshDefinition::MeshDefinition(re::MeshDefinition *this, const re::MeshDefinition::AttributeArray *a2, int a3, int a4, unint64_t a5)
{
  v52 = *MEMORY[0x1E69E9840];
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_1F5D08EB8;
  *(this + 24) = 0;
  *(this + 4) = 0;
  *(this + 10) = a4;
  v13 = *(a2 + 4);
  *(this + 7) = v13;
  *(this + 8) = 0;
  if (v13)
  {
    if (v13 >= 0x666666666666667)
    {
LABEL_35:
      re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 40, v13);
      _os_crash();
      __break(1u);
LABEL_36:
      re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
    }

    *(this + 8) = v14;
    if (!v14)
    {
      goto LABEL_36;
    }

    v15 = v14;
    if (v13 != 1)
    {
      bzero(v14, 40 * v13 - 40);
      v15 += 40 * v13 - 40;
    }

    *(v15 + 4) = 0;
    *v15 = 0u;
    *(v15 + 1) = 0u;
    v16 = *(this + 7);
  }

  else
  {
    v16 = 0;
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  v17 = &v47;
  *(this + 11) = 0;
  *(this + 24) = a3;
  *(this + 25) = a5;
  *(this + 112) = 0;
  *(this + 160) = 0;
  *(this + 162) = 0;
  *(this + 164) = 0;
  *(this + 21) = 0;
  *(this + 22) = &str_67;
  v39 = 0;
  v38 = 0;
  if (v16 >= 1)
  {
    v18 = 0;
    v13 = *(a2 + 4);
    while (v13 != v18)
    {
      v19 = *(*(*(a2 + 5) + 8 * v18) + 12);
      ++*(&v38 + v19);
      if ((v16 & 0x7FFFFFFF) == ++v18)
      {
        goto LABEL_12;
      }
    }

    *v40 = 0;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v37[0]) = 136315906;
    *(v37 + 4) = "operator[]";
    WORD6(v37[0]) = 1024;
    *(v37 + 14) = 476;
    WORD1(v37[1]) = 2048;
    *(&v37[1] + 4) = v13;
    WORD6(v37[1]) = 2048;
    *(&v37[1] + 14) = v13;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_31:
    v35 = 0;
    v17[3] = 0u;
    v17[4] = 0u;
    v17[1] = 0u;
    v17[2] = 0u;
    *v17 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v40 = 136315906;
    *&v40[4] = "operator[]";
    v41 = 1024;
    v42 = 468;
    v43 = 2048;
    v44 = v13;
    v45 = 2048;
    v46 = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_32;
  }

LABEL_12:
  v20 = 0;
  v21 = 0;
  memset(v37, 0, sizeof(v37));
  v22 = v37 + 1;
  do
  {
    v23 = *(&v38 + v20);
    v13 = v21;
    if (v23)
    {
      if (v16 <= v21)
      {
        goto LABEL_31;
      }

      *(v22 - 1) = *(this + 8) + 40 * v21;
      *v22 = v23;
      v24 = v23 << 32;
    }

    else
    {
      v24 = 0;
    }

    *(this + v20 + 9) = v24 | v13;
    v21 = v23 + v13;
    ++v20;
    v22 += 2;
  }

  while (v20 != 3);
  v36 = 0;
  v35 = 0;
  if (v16 >= 1)
  {
    v25 = 0;
    a5 = 0;
    v26 = v16 & 0x7FFFFFFF;
    while (1)
    {
      v5 = *(a2 + 4);
      if (v5 <= a5)
      {
        break;
      }

      v27 = *(*(a2 + 5) + 8 * a5);
      v28 = *(v27 + 12);
      v29 = *(&v35 + v28);
      *(&v35 + v28) = v29 + 1;
      v30 = &v37[v28];
      v31 = v30[1];
      if (v31 <= v29)
      {
        goto LABEL_33;
      }

      v13 = *v30 + 40 * v29;
      *(v13 + 8) = v27;
      v5 = *(a2 + 7);
      if (v5 <= a5)
      {
        goto LABEL_34;
      }

      v32 = *(a2 + 8);
      if (*(v32 + v25) == 1)
      {
        LOBYTE(v47) = 1;
        re::StringID::StringID((&v47 + 8), (v32 + v25 + 8));
        v33 = re::Optional<re::StringID>::operator=(v13 + 16, &v47);
        if (v47 == 1 && (BYTE8(v47) & 1) != 0)
        {
          if (BYTE8(v47))
          {
          }
        }
      }

      ++a5;
      v25 += 24;
      if (v26 == a5)
      {
        return this;
      }
    }

LABEL_32:
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v40 = 136315906;
    *&v40[4] = "operator[]";
    v41 = 1024;
    v42 = 476;
    v43 = 2048;
    v44 = a5;
    v45 = 2048;
    v46 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_33:
    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v29, v31);
    _os_crash();
    __break(1u);
LABEL_34:
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v40 = 136315906;
    *&v40[4] = "operator[]";
    v41 = 1024;
    v42 = 476;
    v43 = 2048;
    v44 = a5;
    v45 = 2048;
    v46 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_35;
  }

  return this;
}

void re::MeshDefinition::~MeshDefinition(re::MeshDefinition *this)
{
  *this = &unk_1F5D08EB8;
  re::StringID::destroyString((this + 168));
  if (*(this + 6))
  {
    v2 = *(this + 7);
    if (v2)
    {
      v3 = (*(this + 8) + 24);
      v4 = 40 * v2;
      do
      {
        if (*(v3 - 8) == 1)
        {
          re::StringID::destroyString(v3);
        }

        v3 = (v3 + 40);
        v4 -= 40;
      }

      while (v4);
      (*(**(this + 6) + 40))(*(this + 6), *(this + 8));
      *(this + 7) = 0;
      *(this + 8) = 0;
    }

    *(this + 6) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::MeshDefinition::~MeshDefinition(this);

  JUMPOUT(0x1E6906520);
}

void re::MeshDefinition::setIndexData(uint64_t a1, unsigned int a2, void **a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2 <= 1)
  {
    v6 = *a3;
    if (*a3)
    {
      v6 = [v6 length];
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = *(a1 + 40);
    v9 = 1;
    if (a2)
    {
      v9 = 2;
    }

    v10 = v8 << v9;
    if (v7 >= v8 << v9)
    {
      *(a1 + 24) = a2;
      v13 = (a1 + 32);
      if ((a1 + 32) != a3)
      {
        v14 = *a3;
        *a3 = 0;
        v15 = *v13;
        *v13 = v14;
      }
    }

    else
    {
      v11 = *re::graphicsLogObjects(v6);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 134218240;
        v17 = v10;
        v18 = 2048;
        v19 = v7;
        _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "Invalid MeshDefinition::setIndexData(), submitted index data buffer is too small.  Expected minimum bufferSize of %zu, but got buffer with size %zu", &v16, 0x16u);
      }

      *(a1 + 24) = 0;
      v12 = *(a1 + 32);
      *(a1 + 32) = 0;
    }
  }
}

void re::MeshDefinition::setAttribute(re *a1, uint64_t a2, uint64_t *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 7);
  if (v4)
  {
    v6 = *(a1 + 8);
    v7 = *a2;
    v8 = *(a2 + 8);
    v9 = *(a2 + 9);
    v10 = 40 * v4;
    while (1)
    {
      v11 = *(v6 + 8);
      if (*(v6 + 16) == 1)
      {
        v12 = *(v6 + 32);
        LOWORD(v13) = *(v11 + 8);
      }

      else
      {
        v12 = *v11;
        v13 = *(v11 + 8);
      }

      a1 = strcmp(v12, v7);
      v14 = !a1 && v8 == v13;
      if (v14 && v9 == BYTE1(v13))
      {
        break;
      }

      v6 += 40;
      v10 -= 40;
      if (!v10)
      {
        goto LABEL_14;
      }
    }

    if (v6 != a3)
    {
      v18 = *a3;
      *a3 = 0;
      v19 = *v6;
      *v6 = v18;
    }
  }

  else
  {
LABEL_14:
    v16 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *a2;
      v20 = 136315138;
      v21 = v17;
      _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "Ignoring MeshDefinition::setAttribute(), since the mesh does not contain attribute '%s'", &v20, 0xCu);
    }
  }
}

uint64_t re::MeshDefinition::tryGetAttribute(re::MeshDefinition *this, const char *__s2)
{
  v2 = *(this + 7);
  if (!v2)
  {
    return 0;
  }

  v4 = *(this + 8);
  v5 = 40 * v2;
  while (1)
  {
    v6 = *(v4 + 16) == 1 ? *(v4 + 32) : **(v4 + 8);
    if (!strcmp(v6, __s2))
    {
      break;
    }

    v4 += 40;
    v5 -= 40;
    if (!v5)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t re::MeshDefinition::attributeElementCount(re::MeshDefinition *this, const VertexAttributeDescriptor *a2)
{
  if (a2 == 1)
  {
    return *(this + 24);
  }

  if (a2 - 2 >= 3)
  {
    return 1;
  }

  re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Unsupported vertex step function %d", "false", "attributeElementCount", 313, a2);
  result = _os_crash();
  __break(1u);
  return result;
}

float32x4_t *re::MeshDefinition::computeBoundingBox@<X0>(float32x4_t *this@<X0>, float32x4_t *a2@<X8>)
{
  v4 = this;
  if (this[7].i8[0] == 1)
  {
    v6 = this[9];
    *a2 = this[8];
    a2[1] = v6;
    return this;
  }

  Attribute = re::MeshDefinition::tryGetAttribute(this, "vertexPosition");
  if (!Attribute)
  {
    re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) Mesh definition should have either a position attribute or an explicit bounding box", "positionAttribute", "computeBoundingBox", 329);
    _os_crash();
    __break(1u);
LABEL_22:
    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Position attribute data is too small (got %zu bytes, expected %zu bytes)", "expectedSizeInBytes <= actualSizeInBytes", "computeBoundingBox", 343, v2, v14);
    _os_crash();
    __break(1u);
LABEL_23:
    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Position attribute data is too small (got %zu bytes, expected %zu bytes)", "expectedSizeInBytes <= actualSizeInBytes", "computeBoundingBox", 358, v2, v19);
    _os_crash();
    __break(1u);
    goto LABEL_24;
  }

  v9 = Attribute;
  v10 = *(Attribute + 8);
  if (*(Attribute + 16) == 1)
  {
    v3 = *(v10 + 8);
  }

  else
  {
    v3 = *(v10 + 8);
  }

  v2 = [*Attribute length];
  v11 = re::MeshDefinition::attributeElementCount(v4, (v3 >> 8));
  v13 = v11;
  if (v3 == 26)
  {
    v19 = 8 * v11;
    if (8 * v11 <= v2)
    {
      this = [*v9 bytes];
      if (v13)
      {
        v15.i64[0] = 0x7F0000007FLL;
        v15.i64[1] = 0x7F0000007FLL;
        v16 = vnegq_f32(v15);
        do
        {
          v20.i32[0] = this->i32[0];
          v20.i64[0] = vcvtq_f32_f16(*v20.f32).u64[0];
          _H3 = this->i16[2];
          __asm { FCVT            S3, H3 }

          v16.i32[3] = 0;
          v20.i64[1] = _S3;
          v16 = vminnmq_f32(v16, v20);
          v15.i32[3] = 0;
          v15 = vmaxnmq_f32(v15, v20);
          this = (this + 8);
          --v13;
        }

        while (v13);
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    goto LABEL_23;
  }

  if (v3 == 30)
  {
    v14 = 12 * v11;
    if (12 * v11 <= v2)
    {
      this = [*v9 bytes];
      if (v13)
      {
        v15.i64[0] = 0x7F0000007FLL;
        v15.i64[1] = 0x7F0000007FLL;
        v16 = vnegq_f32(v15);
        v17 = &this->u32[2];
        do
        {
          v18.i64[0] = *(v17 - 1);
          v16.i32[3] = 0;
          v18.i64[1] = *v17;
          v16 = vminnmq_f32(v16, v18);
          v15.i32[3] = 0;
          v15 = vmaxnmq_f32(v15, v18);
          v17 += 3;
          --v13;
        }

        while (v13);
        goto LABEL_20;
      }

LABEL_19:
      v15.i64[0] = 0x7F0000007FLL;
      v15.i64[1] = 0x7F0000007FLL;
      v16 = vnegq_f32(v15);
LABEL_20:
      *a2 = v16;
      a2[1] = v15;
      return this;
    }

    goto LABEL_22;
  }

LABEL_24:
  re::internal::assertLog(5, v12, "assertion failure: '%s' (%s:line %i) Unexpected position vertex format %d", "false", "computeBoundingBox", 371, v3);
  this = _os_crash();
  __break(1u);
  return this;
}

uint64_t re::MeshDefinition::skinningData(re::MeshDefinition *this, uint64_t a2, uint64_t a3)
{
  v6 = (this + 168);
  if (*(this + 21) <= 1uLL)
  {
    v7 = *(this + 22);
    if (v7)
    {
      if (!*v7)
      {
        return 0;
      }
    }
  }

  result = re::MeshDefinition::tryGetAttribute(this, "skinnedAnimationJointInfluences");
  if (result)
  {
    v9 = result;
    v10 = [*result bytes];
    v11 = [*v9 length];
    *(a3 + 8) = v10;
    *(a3 + 16) = v11 >> 3;
    result = re::MeshDefinition::tryGetAttribute(this, "skinnedAnimationInfluenceEndIndices");
    if (result)
    {
      v12 = result;
      v13 = [*result bytes];
      v14 = [*v12 length];
      *(a3 + 24) = v13;
      *(a3 + 32) = v14 >> 2;
      Attribute = re::MeshDefinition::tryGetAttribute(this, "skinnedAnimationRemappedJointIndices");
      if (Attribute)
      {
        v16 = Attribute;
        v17 = [*Attribute bytes];
        v18 = [*v16 length];
        *(a3 + 40) = v17;
        *(a3 + 48) = v18 >> 2;
      }

      v19 = 0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a2, v6, (0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) ^ ((0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) >> 31), v20);
      if (v21 == 0x7FFFFFFF)
      {
        return 0;
      }

      *a3 = *(*(a2 + 16) + 32 * v21 + 24);
      return 1;
    }
  }

  return result;
}

BOOL re::MeshDefinition::blendShapeData(uint64_t a1, uint64_t a2, const char *a3, unsigned int a4, __int16 a5)
{
  v60 = *MEMORY[0x1E69E9840];
  v9 = re::MeshDefinition::attributes(a1, 2u);
  if (!v10)
  {
    return 0;
  }

  v11 = v9;
  v12 = v10;
  v13 = 0;
  v48 = 0;
  v45[1] = 0;
  v46 = 0;
  v44 = a4;
  v14 = a4;
  v45[0] = 0;
  v47 = 0;
  LODWORD(v49) = 0;
  do
  {
    v15 = v11 + 40 * v13;
    v16 = [*v15 length];
    if (v14 != v16 / 0xC)
    {
      goto LABEL_23;
    }

    if (*(v15 + 16) == 1)
    {
      if (!*(v15 + 32))
      {
        goto LABEL_23;
      }

      v17 = *(v15 + 32);
    }

    else
    {
      if (!**(v15 + 8))
      {
        goto LABEL_23;
      }

      v17 = **(v15 + 8);
    }

    __s1[0] = 0;
    __s1[1] = &str_67;
    *v50 = 0;
    *&v50[8] = &str_67;
    v19 = v50[0];
    if ((*v50 ^ __s1[0]) > 1uLL)
    {
      v20 = 0;
      if (v50[0])
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = __s1[1];
      if (__s1[1] == *&v50[8])
      {
        v20 = 1;
        if (v50[0])
        {
LABEL_16:
          if (v50[0])
          {
          }
        }
      }

      else
      {
        v16 = strcmp(__s1[1], *&v50[8]);
        v20 = v16 == 0;
        if (v19)
        {
          goto LABEL_16;
        }
      }
    }

    if (__s1[0])
    {
      if (__s1[0])
      {
      }
    }

    if (!v20)
    {
      v16 = re::DynamicArray<int>::add(v45, &v49);
    }

LABEL_23:
    v13 = v49 + 1;
    LODWORD(v49) = v49 + 1;
  }

  while (v12 > v13);
  v43 = v46 != 0;
  if (v46)
  {
    __s1[0] = 0;
    __s1[1] = &str_67;
    *&v57 = 0;
    v56 = 0uLL;
    BYTE8(v57) = 2;
    HIDWORD(v57) = v44;
    re::StringID::operator=(a2, __s1);
    re::FixedArray<float>::operator=((a2 + 16), &v56);
    *(a2 + 40) = *(&v57 + 1);
    v22 = re::FixedArray<re::BlendShapeDefinition>::deinit(&v56);
    if (__s1[0])
    {
      if (__s1[0])
      {
      }
    }

    *(a2 + 48) = a5;
    if (v46)
    {
      v24 = 0;
      while (1)
      {
        v25 = *(a2 + 24);
        if (v25 <= v24)
        {
          goto LABEL_53;
        }

        v26 = *(v48 + 4 * v24);
        if (v12 <= v26)
        {
          goto LABEL_54;
        }

        v27 = v11 + 40 * v26;
        if (*(v27 + 16) == 1)
        {
          v28 = *(v27 + 32);
        }

        else
        {
          v28 = **(v27 + 8);
        }

        v25 = (*(a2 + 32) + 136 * v24);
        __s1[0] = 0;
        __s1[1] = &str_67;
        v29 = re::StringID::operator=(v25, __s1);
        if (__s1[0])
        {
          if (__s1[0])
          {
          }
        }

        v25[3] = 0;
        v25[9] = 0;
        v25[12] = 0;
        v25[15] = 0;
        v22 = [*v27 bytes];
        if (v44)
        {
          break;
        }

LABEL_44:
        if (v46 <= ++v24)
        {
          goto LABEL_45;
        }
      }

      v34 = v25[6];
      v35 = 8;
      v36 = 1;
      v37 = v14;
      while (1)
      {
        v38 = v36 - 1;
        if (v34 <= v36 - 1)
        {
          break;
        }

        v40 = *(v22 + 1);
        v39 = *(v22 + 2);
        v41 = v25[7];
        *(v41 + v35 - 8) = *v22;
        if (v34 <= v36)
        {
          goto LABEL_51;
        }

        *(v41 + 4 * v36) = v40;
        v38 = v36 + 1;
        if (v34 <= v36 + 1)
        {
          goto LABEL_52;
        }

        *(v41 + v35) = v39;
        v36 += 3;
        v22 = (v22 + 12);
        v35 += 12;
        if (!--v37)
        {
          goto LABEL_44;
        }
      }

      v49 = 0;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      *__s1 = 0u;
      v36 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v50 = 136315906;
      *&v50[4] = "operator[]";
      *&v50[12] = 1024;
      *&v50[14] = 468;
      v51 = 2048;
      v52 = v38;
      v53 = 2048;
      v54 = v34;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_51:
      v49 = 0;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      *__s1 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v50 = 136315906;
      *&v50[4] = "operator[]";
      *&v50[12] = 1024;
      *&v50[14] = 468;
      v51 = 2048;
      v52 = v36;
      v53 = 2048;
      v54 = v34;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_52:
      v49 = 0;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      *__s1 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v50 = 136315906;
      *&v50[4] = "operator[]";
      *&v50[12] = 1024;
      *&v50[14] = 468;
      v51 = 2048;
      v52 = v38;
      v53 = 2048;
      v54 = v34;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_53:
      v49 = 0;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      *__s1 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v50 = 136315906;
      *&v50[4] = "operator[]";
      *&v50[12] = 1024;
      *&v50[14] = 468;
      v51 = 2048;
      v52 = v24;
      v53 = 2048;
      v54 = v25;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_54:
      re::internal::assertLog(6, v23, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v26, v12);
      _os_crash();
      __break(1u);
    }
  }

LABEL_45:
  if (v45[0])
  {
    if (v48)
    {
      (*(*v45[0] + 40))();
    }
  }

  return v43;
}

uint64_t re::MeshDefinition::attributes(uint64_t a1, unsigned int a2)
{
  v2 = a1 + 8 * a2;
  if (!*(v2 + 76))
  {
    return 0;
  }

  v3 = *(v2 + 72);
  if (*(a1 + 56) <= v3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 64) + 40 * v3;
}

unint64_t re::copyPositionAttribute(const char **a1, float32x4_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!strcmp(*a1, "vertexPosition"))
  {
  }

  else
  {
    re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) ", "0 == strcmp(attributeDescriptor.name, MeshAttributeNames::kVertexPosition.cstr())", "copyPositionAttribute", 773);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

unint64_t re::anonymous namespace::copyAttributeValuesThreeComponents(uint64_t a1, float32x4_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = a1;
  v6 = *(a1 + 8);
  if (*(a1 + 8) > 0x19u)
  {
    if (v6 == 26)
    {
      result = 8 * a3;
      if (!a5)
      {
        return result;
      }

      if (result < a5)
      {
        goto LABEL_31;
      }

      if (!a3)
      {
        return 0;
      }

      do
      {
        v17 = *a2++;
        _S0 = v17;
        __asm { FCVT            H1, S0 }

        *a4 = _H1;
        _S1 = DWORD1(v17);
        __asm { FCVT            H1, S1 }

        *(a4 + 2) = _S1;
        _S0 = DWORD2(v17);
        __asm { FCVT            H0, S0 }

        *(a4 + 4) = _S0;
        a4 += 8;
        --a3;
      }

      while (a3);
    }

    else
    {
      if (v6 != 30)
      {
        goto LABEL_32;
      }

      result = 12 * a3;
      if (!a5)
      {
        return result;
      }

      if (result < a5)
      {
LABEL_29:
        re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", "requiredBytes >= availableBytes", "copyAttributeValuesThreeComponents", 595, *v5, a5, result);
        result = _os_crash();
        __break(1u);
LABEL_30:
        re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", "requiredBytes >= availableBytes", "copyAttributeValuesThreeComponents", 655, *v5, a5, result);
        result = _os_crash();
        __break(1u);
LABEL_31:
        re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", "requiredBytes >= availableBytes", "copyAttributeValuesThreeComponents", 615, *v5, a5, result);
        _os_crash();
        __break(1u);
        goto LABEL_32;
      }

      if (!a3)
      {
        return 0;
      }

      do
      {
        v12 = *a2++;
        *a4 = v12;
        *(a4 + 8) = DWORD2(v12);
        a4 += 12;
        --a3;
      }

      while (a3);
    }
  }

  else
  {
    if (v6 != 8)
    {
      if (v6 == 23)
      {
        result = 8 * a3;
        if (!a5)
        {
          return result;
        }

        if (result >= a5)
        {
          if (a3)
          {
            do
            {
              v8 = *a2++;
              v9 = v8;
              v9.i32[3] = 0;
              v10 = vmaxnmq_f32(v9, xmmword_1E30DA660);
              v10.i32[3] = 0;
              v11 = vminnmq_f32(v10, xmmword_1E304F3C0);
              *(a4 + 2) = llroundf(vmuls_lane_f32(32767.0, *v11.f32, 1));
              *a4 = llroundf(32767.0 * v11.f32[0]);
              *(a4 + 4) = llroundf(vmuls_lane_f32(32767.0, v11, 2));
              a4 += 8;
              --a3;
            }

            while (a3);
            return result;
          }

          return 0;
        }

        re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", "requiredBytes >= availableBytes", "copyAttributeValuesThreeComponents", 635, *v5, a5, 8 * a3);
        result = _os_crash();
        __break(1u);
        goto LABEL_29;
      }

LABEL_32:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Unexpected vertex format %d", "false", "copyAttributeValuesThreeComponents", 669, v6);
      result = _os_crash();
      __break(1u);
      return result;
    }

    result = 4 * a3;
    if (!a5)
    {
      return result;
    }

    if (result < a5)
    {
      goto LABEL_30;
    }

    if (!a3)
    {
      return 0;
    }

    do
    {
      v13 = *a2++;
      v14 = v13;
      v14.i32[3] = 0;
      v15 = vmaxnmq_f32(v14, 0);
      v15.i32[3] = 0;
      v16 = vminnmq_f32(v15, xmmword_1E304F3C0);
      *(a4 + 1) = llroundf(vmuls_lane_f32(255.0, *v16.f32, 1));
      *a4 = llroundf(255.0 * v16.f32[0]);
      *(a4 + 2) = llroundf(vmuls_lane_f32(255.0, v16, 2));
      a4 += 4;
      --a3;
    }

    while (a3);
  }

  return result;
}

unint64_t re::copyNormalAttribute(const char **a1, float32x4_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!strcmp(*a1, "vertexNormal"))
  {
  }

  else
  {
    re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) ", "0 == strcmp(attributeDescriptor.name, MeshAttributeNames::kVertexNormal.cstr())", "copyNormalAttribute", 780);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

unint64_t re::copyTangentAttribute(const char **a1, float32x4_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!strcmp(*a1, "vertexTangent"))
  {
  }

  else
  {
    re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) ", "0 == strcmp(attributeDescriptor.name, MeshAttributeNames::kVertexTangent.cstr())", "copyTangentAttribute", 787);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

unint64_t re::copyBitangentAttribute(const char **a1, float32x4_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!strcmp(*a1, "vertexBitangent"))
  {
  }

  else
  {
    re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) ", "0 == strcmp(attributeDescriptor.name, MeshAttributeNames::kVertexBitangent.cstr())", "copyBitangentAttribute", 794);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

unint64_t re::copyUVAttribute(const char **a1, uint64_t *a2, uint64_t a3, void *a4, unint64_t a5)
{
  if (!strcmp(*a1, "vertexUV"))
  {
  }

  else
  {
    re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) ", "0 == strcmp(attributeDescriptor.name, MeshAttributeNames::kVertexUV.cstr())", "copyUVAttribute", 801);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

unint64_t re::anonymous namespace::copyAttributeValuesTwoComponents(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, unint64_t a5)
{
  if (*(a1 + 8) != 29)
  {
    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Unexpected vertex format %d", "attributeDescriptor.format == mtl::VertexFormat::kFloat2", "copyAttributeValuesTwoComponents", 579, *(a1 + 8));
    result = _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  v5 = a1;
  result = 8 * a3;
  if (!a5)
  {
    return result;
  }

  if (result < a5)
  {
LABEL_8:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", "requiredBytes >= availableBytes", "copyAttributeVectors", 518, *v5, a5, result);
    result = _os_crash();
    __break(1u);
    return result;
  }

  for (; a3; --a3)
  {
    v7 = *a2++;
    *a4++ = v7;
  }

  return result;
}

unint64_t re::copyColorAttribute(const char **a1, float32x4_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!strcmp(*a1, "vertexColor"))
  {
  }

  else
  {
    re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) ", "0 == strcmp(attributeDescriptor.name, MeshAttributeNames::kVertexColor.cstr())", "copyColorAttribute", 808);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

unint64_t re::copyColorAttribute(const char **a1, float32x4_t *a2, uint64_t a3, float16x4_t *a4, unint64_t a5)
{
  if (!strcmp(*a1, "vertexColor"))
  {
  }

  else
  {
    re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) ", "0 == strcmp(attributeDescriptor.name, MeshAttributeNames::kVertexColor.cstr())", "copyColorAttribute", 815);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

unint64_t re::anonymous namespace::copyAttributeValuesFourComponents(uint64_t a1, float32x4_t *a2, uint64_t a3, float16x4_t *a4, unint64_t a5)
{
  v5 = a1;
  v6 = *(a1 + 8);
  if (*(a1 + 8) > 0x1Au)
  {
    if (v6 == 27)
    {
      result = 8 * a3;
      if (!a5)
      {
        return result;
      }

      if (result < a5)
      {
        goto LABEL_33;
      }

      if (!a3)
      {
        return 0;
      }

      do
      {
        v20 = *a2++;
        *a4++ = vcvt_f16_f32(v20);
        --a3;
      }

      while (a3);
    }

    else
    {
      if (v6 != 31)
      {
        goto LABEL_34;
      }

      result = 16 * a3;
      if (!a5)
      {
        return result;
      }

      if (result < a5)
      {
LABEL_31:
        re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", "requiredBytes >= availableBytes", "copyAttributeValuesFourComponents", 685, *v5, a5, result);
        result = _os_crash();
        __break(1u);
LABEL_32:
        re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", "requiredBytes >= availableBytes", "copyAttributeValuesFourComponents", 748, *v5, a5, result);
        result = _os_crash();
        __break(1u);
LABEL_33:
        re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", "requiredBytes >= availableBytes", "copyAttributeValuesFourComponents", 706, *v5, a5, result);
        _os_crash();
        __break(1u);
        goto LABEL_34;
      }

      if (!a3)
      {
        return 0;
      }

      do
      {
        v16 = *a2++;
        *a4->i8 = v16;
        a4 += 2;
        --a3;
      }

      while (a3);
    }
  }

  else
  {
    if (v6 != 9)
    {
      if (v6 == 24)
      {
        result = 8 * a3;
        if (!a5)
        {
          return result;
        }

        if (result >= a5)
        {
          if (a3)
          {
            __asm
            {
              FMOV            V0.4S, #-1.0
              FMOV            V1.4S, #1.0
            }

            v14 = vdupq_n_s32(0x46FFFE00u);
            do
            {
              v15 = *a2++;
              *a4++ = vmovn_s32(vcvtq_s32_f32(vrndaq_f32(vmulq_f32(vminnmq_f32(vmaxnmq_f32(v15, _Q0), _Q1), v14))));
              --a3;
            }

            while (a3);
            return result;
          }

          return 0;
        }

        re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", "requiredBytes >= availableBytes", "copyAttributeValuesFourComponents", 727, *v5, a5, 8 * a3);
        result = _os_crash();
        __break(1u);
        goto LABEL_31;
      }

LABEL_34:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Unexpected vertex format %d", "false", "copyAttributeValuesFourComponents", 763, v6);
      result = _os_crash();
      __break(1u);
      return result;
    }

    result = 4 * a3;
    if (!a5)
    {
      return result;
    }

    if (result < a5)
    {
      goto LABEL_32;
    }

    if (!a3)
    {
      return 0;
    }

    __asm { FMOV            V1.4S, #1.0 }

    v18 = vdupq_n_s32(0x437F0000u);
    do
    {
      v19 = *a2++;
      a4->i32[0] = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vrndaq_f32(vmulq_f32(vminnmq_f32(vmaxnmq_f32(v19, 0), _Q1), v18)))), 0).u32[0];
      a4 = (a4 + 4);
      --a3;
    }

    while (a3);
  }

  return result;
}

uint64_t re::copySkinWeightsAttribute(uint64_t a1, const void *a2, size_t a3, void *a4, size_t a5)
{
  v10 = *a1;
  if (strcmp(*a1, "skinnedAnimationWeights"))
  {
    re::internal::assertLog(4, v11, "assertion failure: '%s' (%s:line %i) ", "0 == strcmp(attributeDescriptor.name, MeshAttributeNames::kSkinnedAnimationWeights.cstr())", "copySkinWeightsAttribute", 840);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  v12 = *(a1 + 8);
  if (v12 != 28)
  {
LABEL_8:
    re::internal::assertLog(5, v11, "assertion failure: '%s' (%s:line %i) Unexpected vertex format %d", "attributeDescriptor.format == mtl::VertexFormat::kFloat", "copyAttributeFloatValues", 552, v12);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  a3 *= 4;
  if (!a5)
  {
    return a3;
  }

  if (a3 >= a5)
  {
    memcpy(a4, a2, a3);
    return a3;
  }

LABEL_9:
  re::internal::assertLog(7, v11, "assertion failure: '%s' (%s:line %i) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", "requiredBytes >= availableBytes", "copyAttributeValues", 542, v10, a5, a3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::copySkinJointIndicesAttribute(const char **a1, const void *a2, uint64_t a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  if (!strcmp(*a1, "skinnedAnimationJointIndices") || !strcmp(v10, "skinnedAnimationRemappedJointIndices"))
  {
  }

  else
  {
    re::internal::assertLog(4, v11, "assertion failure: '%s' (%s:line %i) ", "0 == strcmp(attributeDescriptor.name, MeshAttributeNames::kSkinnedAnimationJointIndices.cstr()) || 0 == strcmp(attributeDescriptor.name, MeshAttributeNames::kSkinnedAnimationRemappedJointIndices.cstr())", "copySkinJointIndicesAttribute", 848);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::copyAttributeInt32Values(uint64_t a1, const void *a2, uint64_t a3, void *__dst, unint64_t a5)
{
  if (*(a1 + 8) == 32)
  {
    v5 = 4 * a3;
    if (!a5)
    {
      return v5;
    }

    if (v5 >= a5)
    {
      memcpy(__dst, a2, 4 * a3);
      return v5;
    }
  }

  else
  {
    re::internal::assertLog(5, a2, a3, __dst, "assertion failure: '%s' (%s:line %i) Unexpected vertex format %d", "attributeDescriptor.format == mtl::VertexFormat::kInt", "copyAttributeInt32Values", 561, *(a1 + 8));
    a1 = _os_crash();
    __break(1u);
  }

  re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", "requiredBytes >= availableBytes", "copyAttributeValues", 542, *a1, a5, v5);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::copySkinInfluenceEndIndicesAttribute(const char **a1, const void *a2, uint64_t a3, void *a4, unint64_t a5)
{
  if (!strcmp(*a1, "skinnedAnimationInfluenceEndIndices"))
  {
  }

  else
  {
    re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) ", "0 == strcmp(attributeDescriptor.name, MeshAttributeNames::kSkinnedAnimationInfluenceEndIndices.cstr())", "copySkinInfluenceEndIndicesAttribute", 855);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::copyAdjacencyAttribute(const char **a1, const void *a2, uint64_t a3, void *a4, unint64_t a5)
{
  if (!strcmp(*a1, "vertexAdjacencies"))
  {
  }

  else
  {
    re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) ", "0 == strcmp(attributeDescriptor.name, MeshAttributeNames::kVertexAdjacentFaces.cstr())", "copyAdjacencyAttribute", 869);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::copyAttributeUInt32Values(uint64_t a1, const void *a2, uint64_t a3, void *__dst, unint64_t a5)
{
  if (*(a1 + 8) == 32)
  {
    v5 = 4 * a3;
    if (!a5)
    {
      return v5;
    }

    if (v5 >= a5)
    {
      memcpy(__dst, a2, 4 * a3);
      return v5;
    }
  }

  else
  {
    re::internal::assertLog(5, a2, a3, __dst, "assertion failure: '%s' (%s:line %i) Unexpected vertex format %d", "attributeDescriptor.format == mtl::VertexFormat::kInt", "copyAttributeUInt32Values", 570, *(a1 + 8));
    a1 = _os_crash();
    __break(1u);
  }

  re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", "requiredBytes >= availableBytes", "copyAttributeValues", 542, *a1, a5, v5);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::copyValenceAttribute(const char **a1, const void *a2, uint64_t a3, void *a4, unint64_t a5)
{
  if (!strcmp(*a1, "skinnedAnimationRemappedJointIndices"))
  {
  }

  else
  {
    re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) ", "0 == strcmp(attributeDescriptor.name, MeshAttributeNames::kSkinnedAnimationRemappedJointIndices.cstr())", "copyValenceAttribute", 876);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

unint64_t re::copyInfluenceAttribute(void *a1, int *a2, int *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  result = 8 * a4;
  if (a6)
  {
    if (result < a6)
    {
      re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", "requiredBytes >= availableBytes", "copyInfluenceAttribute", 891, *a1, a6, 8 * a4);
      result = _os_crash();
      __break(1u);
    }

    else if (a4)
    {
      v8 = (a5 + 4);
      do
      {
        v9 = *a2++;
        *(v8 - 1) = v9;
        v10 = *a3++;
        *v8 = v10;
        v8 += 2;
        --a4;
      }

      while (a4);
    }
  }

  return result;
}

uint64_t re::copyInfluenceAttribute(void *a1, const void *a2, uint64_t a3, void *__dst, unint64_t a5)
{
  v5 = 8 * a3;
  if (!a5)
  {
    return v5;
  }

  if (v5 >= a5)
  {
    memcpy(__dst, a2, 8 * a3);
    return v5;
  }

  re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Destination buffer is too small for attribute '%s' (got %zu bytes, expected %zu bytes)", "requiredBytes >= availableBytes", "copyAttributeValues", 542, *a1, a5, 8 * a3);
  result = _os_crash();
  __break(1u);
  return result;
}

void re::collectMeshAttributeBuffers(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  if (!a4)
  {
LABEL_67:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_68;
  }

  v9 = a3;
  v7 = a2;
  v10 = *a3;
  if (a2 <= *a3)
  {
LABEL_68:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v10, v7);
    _os_crash();
    __break(1u);
LABEL_69:
    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 56, v6);
    _os_crash();
    __break(1u);
LABEL_70:
    re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
LABEL_71:
    re::internal::assertLog(5, v16, "assertion failure: '%s' (%s:line %i) Unsupported index type %d", "false", "indexDataSlice", 282, v37);
    _os_crash();
    __break(1u);
LABEL_72:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  Attribute = *(a1 + 8 * v10);
  v13 = *(Attribute + 32);
  re::MeshDefinition::attributes(Attribute, 0);
  v60 = v14;
  if (v13)
  {
    v6 = v14 + 1;
  }

  else
  {
    v6 = v14;
  }

  *a6 = a5;
  a6[1] = v6;
  if (!v6)
  {
    goto LABEL_72;
  }

  if (v6 >= 0x492492492492493)
  {
    goto LABEL_69;
  }

  v15 = (*(*a5 + 32))(a5, 56 * v6, 8);
  a6[2] = v15;
  if (!v15)
  {
    goto LABEL_70;
  }

  v17 = v6 - 1;
  if (v6 != 1)
  {
    do
    {
      *v15 = 0;
      *(v15 + 8) = 256;
      *(v15 + 12) = 0;
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0;
      *(v15 + 40) = 0;
      *(v15 + 48) = 4;
      v15 += 56;
      --v17;
    }

    while (v17);
  }

  *v15 = 0;
  *(v15 + 8) = 256;
  *(v15 + 12) = 0;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0;
  *(v15 + 48) = 4;
  v18 = a6[1];
  if (v18 <= (v13 != 0))
  {
    goto LABEL_72;
  }

  v19 = a6[2];
  v6 = 56;
  if (v13)
  {
    v20 = 56;
  }

  else
  {
    v20 = 0;
  }

  if (v13)
  {
    if (*(Attribute + 24))
    {
      if (*(Attribute + 24) != 1)
      {
        re::internal::assertLog(5, v16, "assertion failure: '%s' (%s:line %i) Unsupported index type %d", "false", "indexAttributeDescriptor", 261, *(Attribute + 24));
        _os_crash();
        __break(1u);
        return;
      }

      v21 = &re::MeshDefinition::kIndexUInt32;
    }

    else
    {
      v21 = &re::MeshDefinition::kIndexUInt16;
    }

    *v19 = *v21;
    re::FixedArray<re::Slice<unsigned char>>::init<>((v19 + 24), a5, a4);
  }

  v57 = v20;
  v59 = 0x6DB6DB6DB6DB6DB7 * ((56 * v18 - v20) >> 3);
  if (v60)
  {
    v22 = 0;
    v23 = 0;
    v24 = (v57 + v19 + 24);
    while (v59 != v23)
    {
      v25 = re::MeshDefinition::attributes(Attribute, 0);
      if (v26 <= v23)
      {
        goto LABEL_61;
      }

      v27 = *(v25 + v22 + 8);
      if (*(v25 + v22 + 16) == 1)
      {
        v28 = *(v25 + v22 + 32);
        v29 = *(v27 + 8) | (*(v27 + 12) << 32);
      }

      else
      {
        v28 = *v27;
        v29 = *(v27 + 8);
      }

      *(v24 - 3) = v28;
      *(v24 - 2) = v29;
      re::FixedArray<re::Slice<unsigned char>>::init<>(v24, a5, a4);
      v31 = (re::sizeFromVertexFormat(*(v24 - 16), v30) + 3) & 0x1FC;
      if (v31 <= v24[3])
      {
        v31 = v24[3];
      }

      v24[3] = v31;
      ++v23;
      v24 += 7;
      v22 += 40;
      if (v60 == v23)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_60;
  }

LABEL_31:
  if (v13)
  {
    Attribute = 0;
    v32 = 0;
    while (1)
    {
      v33 = v9[v32];
      if (v7 <= v33)
      {
        break;
      }

      v6 = *(a1 + 8 * v33);
      v34 = *(v6 + 32);
      if (!v34)
      {
        goto LABEL_63;
      }

      v35 = [v34 bytes];
      v36 = [*(v6 + 32) length];
      v37 = *(v6 + 24);
      if (*(v6 + 24))
      {
        if (v37 != 1)
        {
          goto LABEL_71;
        }

        v38 = 4;
      }

      else
      {
        v38 = 2;
      }

      v39 = *(v6 + 40);
      v40 = v38 * v39;
      if (v40 > v36)
      {
        goto LABEL_64;
      }

      if (*(v19 + 32) <= v32)
      {
        goto LABEL_65;
      }

      v41 = (*(v19 + 40) + Attribute);
      *v41 = v35;
      v41[1] = v40;
      *(v19 + 16) += v39;
      ++v32;
      Attribute += 16;
      if (a4 == v32)
      {
        goto LABEL_42;
      }
    }

LABEL_62:
    re::internal::assertLog(6, v16, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v33, v7);
    _os_crash();
    __break(1u);
LABEL_63:
    re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) Mesh definition has no index data buffer", "m_indexData.isValid()", "indexDataSlice", 268);
    v36 = _os_crash();
    __break(1u);
LABEL_64:
    re::internal::assertLog(6, v16, "assertion failure: '%s' (%s:line %i) Index data buffer is too small (got %zu bytes, expected %zu bytes)", "requiredSize <= dataSize", "indexDataSlice", 288, v36, v40);
    _os_crash();
    __break(1u);
LABEL_65:
    v6 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_66:
    re::internal::assertLog(6, v16, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v59, v59);
    _os_crash();
    __break(1u);
    goto LABEL_67;
  }

LABEL_42:
  if (!v60)
  {
    return;
  }

  v42 = 0;
  v56 = v19 + v57;
  do
  {
    if (v42 == v59)
    {
      goto LABEL_66;
    }

    v43 = 0;
    v44 = 0;
    v58 = v42;
    v23 = v56 + 56 * v42;
    do
    {
      v45 = v9[v44];
      if (v7 <= v45)
      {
        re::internal::assertLog(6, v16, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v9[v44], v7);
        _os_crash();
        __break(1u);
LABEL_57:
        re::internal::assertLog(5, v49, "assertion failure: '%s' (%s:line %i) Attribute '%s' has no data buffer", "attribute.data.isValid()", "attributeDataSlice", 933, v6);
        _os_crash();
        __break(1u);
LABEL_58:
        re::internal::assertLog(7, v16, "assertion failure: '%s' (%s:line %i) Attribute '%s' data is too small (got %zu bytes, expected %zu bytes)", "requiredSize <= dataSize", "attributeDataSlice", 941, v6, Attribute, v54);
        _os_crash();
        __break(1u);
LABEL_59:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_60:
        re::internal::assertLog(6, v16, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v59, v59);
        _os_crash();
        __break(1u);
LABEL_61:
        re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v23, v26);
        _os_crash();
        __break(1u);
        goto LABEL_62;
      }

      v46 = v9;
      v47 = v7;
      v48 = *(a1 + 8 * v45);
      Attribute = re::MeshDefinition::tryGetAttribute(v48, *v23);
      v50 = re::MeshDefinition::attributeElementCount(v48, *(v23 + 9));
      v51 = *(Attribute + 8);
      if (*(Attribute + 16) == 1)
      {
        v6 = *(Attribute + 32);
      }

      else
      {
        v6 = *v51;
      }

      v7 = *(v51 + 8);
      if (!*Attribute)
      {
        goto LABEL_57;
      }

      v52 = [*Attribute bytes];
      Attribute = [*Attribute length];
      v54 = ((re::sizeFromVertexFormat(v7, v53) + 3) & 0x1FC) * v50;
      if (v54 > Attribute)
      {
        goto LABEL_58;
      }

      Attribute = *(v23 + 32);
      if (Attribute <= v44)
      {
        goto LABEL_59;
      }

      v55 = (*(v23 + 40) + v43);
      *v55 = v52;
      v55[1] = v54;
      *(v23 + 16) += v50;
      ++v44;
      v43 += 16;
      v7 = v47;
      v9 = v46;
    }

    while (a4 != v44);
    v42 = v58 + 1;
  }

  while (v58 + 1 != v60);
}

void re::FixedArray<re::Slice<unsigned char>>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (a3 >> 60)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 16, a3);
    _os_crash();
    __break(1u);
    goto LABEL_7;
  }

  v5 = 16 * a3;
  v6 = (*(*a2 + 32))(a2, 16 * a3, 8);
  a1[2] = v6;
  if (!v6)
  {
LABEL_7:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
    return;
  }

  v8 = v6;
  if (a3 != 1)
  {
    bzero(v6, v5 - 16);
    v8 = (v8 + v5 - 16);
  }

  *v8 = 0;
  v8[1] = 0;
}

void re::MeshDefinition::AttributeArray::~AttributeArray(re::MeshDefinition::AttributeArray *this)
{
  *this = &unk_1F5D08E88;
  v2 = (this + 24);
  re::FixedArray<re::Optional<re::StringID>>::deinit(this + 6);
  re::FixedArray<CoreIKTransform>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D08E88;
  v2 = (this + 24);
  re::FixedArray<re::Optional<re::StringID>>::deinit(this + 6);
  re::FixedArray<CoreIKTransform>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::FixedArray<re::MeshDefinition::VertexAttributeDescriptor const*>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 61)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = 8 * a3;
  v6 = (*(*a2 + 32))(a2, 8 * a3, 8);
  a1[2] = v6;
  if (!v6)
  {
LABEL_9:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
    return;
  }

  v8 = v6;
  if (a3 != 1)
  {
    bzero(v6, v5 - 8);
    v8 = (v8 + v5 - 8);
  }

  *v8 = 0;
}

void *re::FixedArray<re::Optional<re::StringID>>::init<>(void *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0xAAAAAAAAAAAAAABLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 24, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 24 * a3, 8);
  v4[2] = result;
  if (!result)
  {
LABEL_9:
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = a3 - 1;
  if (a3 != 1)
  {
    do
    {
      *result = 0;
      result += 3;
      --v6;
    }

    while (v6);
  }

  *result = 0;
  return result;
}

void *re::FixedArray<re::Optional<re::StringID>>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = 24 * v2;
      v5 = (result[2] + 8);
      do
      {
        if (*(v5 - 8) == 1)
        {
          re::StringID::destroyString(v5);
        }

        v5 = (v5 + 24);
        v4 -= 24;
      }

      while (v4);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

id *re::RenderGraphNodeBase::getEncoderLabel(re::RenderGraphNodeBase *this)
{
  v1 = (this + 96);
  if (!*(this + 12))
  {
    re::ns::String::format("%s::%s::%s", &v5, *(this + 3), *(this + 4), *(this + 2));
    if (v1 != &v5)
    {
      v2 = v5;
      v5 = 0;
      v3 = *v1;
      *v1 = v2;
    }
  }

  return v1;
}

void *re::allocInfo_RenderGraphNodeBase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B9C30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B9C30))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B9C58, "RenderGraphNodeBase");
    __cxa_guard_release(&qword_1EE1B9C30);
  }

  return &unk_1EE1B9C58;
}

void re::initInfo_RenderGraphNodeBase(re *this, re::IntrospectionBase *a2)
{
  v23[0] = 0x11A172D93A739296;
  v23[1] = "RenderGraphNodeBase";
  if (v23[0])
  {
    if (v23[0])
    {
    }
  }

  *(this + 2) = v24;
  if ((atomic_load_explicit(&_MergedGlobals_458, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&_MergedGlobals_458);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::StringID>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "name";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0x800000001;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1B9C38 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_BOOL(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "AutoMSAA";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x4100000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1B9C40 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_BOOL(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "EnableVRR";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x4300000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1B9C48 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_BOOL(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "Enabled";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x4000000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1B9C50 = v21;
      __cxa_guard_release(&_MergedGlobals_458);
    }
  }

  *(this + 2) = 0x6800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1B9C38;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v22 = v24;
}

void re::PlanarReflectionContext::makeReflectionCameraMultiViews(re::PlanarReflectionContext *this, re::RenderFrame *a2, const re::CameraMultiView *a3)
{
  v3 = MEMORY[0x1EEE9AC00](this);
  v5 = v4;
  v7 = v6;
  v8 = v3;
  v10 = v9;
  v24 = *MEMORY[0x1E69E9840];
  v11 = *(v6 + 49);
  *(v10 + 32) = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *v10 = v11;
  re::DynamicArray<re::CameraMultiView>::setCapacity(v10, 0);
  ++*(v10 + 24);
  if (*(v8 + 2))
  {
    v12 = 0;
    do
    {
      for (i = 0; i != 3104; i += 1552)
      {
        re::CameraView::CameraView(&v20[i], (v5 + i));
      }

      v23 = *(v5 + 3104);
      re::PlanarReflectionContext::makeReflectionCameraView(v8, v7, v5, v12, &v15);
      re::CameraView::operator=(v20, &v15);
      re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v19);
      re::DynamicArray<re::ecs2::ScopeLanePair>::deinit(v18);
      re::DynamicArray<re::RenderGraphFileProvider>::deinit(v17);
      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      re::PlanarReflectionContext::makeReflectionCameraView(v8, v7, (v5 + 1552), v12, &v15);
      re::CameraView::operator=(v22, &v15);
      re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v19);
      re::DynamicArray<re::ecs2::ScopeLanePair>::deinit(v18);
      re::DynamicArray<re::RenderGraphFileProvider>::deinit(v17);
      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      if (*(v5 + 3104) == 1 && (*(v5 + 3105) & 1) == 0)
      {
        v21 = xmmword_1E30DA6E0;
        v22[66] = xmmword_1E30DA6F0;
      }

      re::DynamicArray<re::CameraMultiView>::add(v10, v20);
      v14 = 3104;
      do
      {
        re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(&v19[v14]);
        re::DynamicArray<re::ecs2::ScopeLanePair>::deinit(&v18[v14]);
        re::DynamicArray<re::RenderGraphFileProvider>::deinit(&v17[v14]);
        re::DynamicString::deinit((&v15 + v14));
        v14 -= 1552;
      }

      while (v14);
      ++v12;
    }

    while (*(v8 + 2) > v12);
  }
}

float32_t re::PlanarReflectionContext::makeReflectionCameraView@<S0>(re::PlanarReflectionContext *this@<X0>, re::RenderFrame *a2@<X1>, const re::CameraView *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v83 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 49);
  re::CameraView::CameraView(a5, a3);
  *(a5 + 736) = -1;
  if (*(a3 + 1))
  {
    v11 = *(a3 + 2);
  }

  else
  {
    v11 = a3 + 9;
  }

  re::DynamicString::format(v10, "%s_R%u", &v76, v11, a4);
  re::DynamicString::operator=(a5, &v76);
  if (v76.i64[0] && (v76.i8[8] & 1) != 0)
  {
    (*(*v76.i64[0] + 40))();
  }

  *(a5 + 712) = 1;
  *(a5 + 1056) = xmmword_1E3063230;
  *(a5 + 1152) = -1;
  v12 = *(this + 2);
  if (v12 <= a4)
  {
    *&v75[0] = 0;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v76 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v81 = 136315906;
    *&v81[4] = "operator[]";
    *&v81[12] = 1024;
    *&v81[14] = 789;
    *&v81[18] = 2048;
    *&v81[20] = a4;
    *&v81[28] = 2048;
    *&v81[30] = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v13 = *(this + 4);
  v14 = *(v13 + 32 * a4);
  v15.i64[0] = 0xC0000000C0000000;
  v15.i64[1] = 0xC0000000C0000000;
  v16 = vmulq_f32(v14, v15);
  v17 = vaddq_f32(vmulq_n_f32(v14, v16.f32[0]), xmmword_1E3047670);
  v18 = vaddq_f32(vmulq_lane_f32(v14, *v16.f32, 1), xmmword_1E3047680);
  v74 = v14;
  v19 = vaddq_f32(vmulq_laneq_f32(v14, v16, 2), xmmword_1E30476A0);
  v20 = vzip1q_s32(v17, v19);
  v21 = vzip2q_s32(v17, v19);
  v22 = vzip1q_s32(v18, 0);
  v23 = vzip2q_s32(v18, xmmword_1E30474D0);
  v72 = vzip1q_s32(v20, v22);
  v73 = vzip2q_s32(v20, v22);
  v70 = vzip2q_s32(v21, v23);
  v71 = vzip1q_s32(v21, v23);
  re::RenderCamera::computeLocalTransform((a3 + 32), v75);
  v24 = 0;
  *v81 = v75[0];
  *&v81[16] = v75[1];
  *&v81[32] = v75[2];
  v82 = v75[3];
  do
  {
    *(&v76 + v24) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v72, COERCE_FLOAT(*&v81[v24])), v73, *&v81[v24], 1), v71, *&v81[v24], 2), v70, *&v81[v24], 3);
    v24 += 16;
  }

  while (v24 != 64);
  v25 = 0;
  v26 = v76;
  v27 = v77;
  v28 = v78;
  v29 = v79;
  *v81 = xmmword_1E3047670;
  *&v81[16] = xmmword_1E30476B0;
  *&v81[32] = xmmword_1E30476A0;
  v82 = xmmword_1E30474D0;
  do
  {
    *(&v76 + v25) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v26, COERCE_FLOAT(*&v81[v25])), v27, *&v81[v25], 1), v28, *&v81[v25], 2), v29, *&v81[v25], 3);
    v25 += 16;
  }

  while (v25 != 64);
  v30 = (*v76.i32 + *&v77.i32[1]) + v78.f32[2];
  if (v30 >= 0.0)
  {
    v38 = sqrtf(v30 + 1.0);
    v39 = v38 + v38;
    v40 = vrecpe_f32(COERCE_UNSIGNED_INT(v38 + v38));
    v41 = vmul_f32(v40, vrecps_f32(COERCE_UNSIGNED_INT(v38 + v38), v40));
    v41.i32[0] = vmul_f32(v41, vrecps_f32(COERCE_UNSIGNED_INT(v38 + v38), v41)).u32[0];
    *&v51 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(v77, v77, 8uLL), *v78.f32), vext_s8(*v78.f32, *&vextq_s8(v76, v76, 8uLL), 4uLL)), v41.f32[0]);
    v42.f32[0] = *&v76.i32[1] - *v77.i32;
    v42.f32[1] = v39;
    v41.i32[1] = 0.25;
    v53 = vmul_f32(v42, v41);
  }

  else if (*v76.i32 < *&v77.i32[1] || *v76.i32 < v78.f32[2])
  {
    v32 = 1.0 - *v76.i32;
    if (*&v77.i32[1] >= v78.f32[2])
    {
      v54 = sqrtf(*&v77.i32[1] + (v32 - v78.f32[2]));
      *&v55 = v54 + v54;
      v56 = vrecpe_f32(v55);
      v57 = vmul_f32(v56, vrecps_f32(v55, v56));
      v58.i32[0] = vmul_f32(v57, vrecps_f32(v55, v57)).u32[0];
      v59.f32[0] = *&v76.i32[1] + *v77.i32;
      v59.i32[1] = v55;
      v53 = vmul_n_f32(vext_s8(vadd_f32(*v78.f32, vdup_laneq_s32(v77, 2)), vsub_f32(*v78.f32, *&vextq_s8(v76, v76, 8uLL)), 4uLL), v58.f32[0]);
      v58.i32[1] = 0.25;
      *&v51 = vmul_f32(v59, v58);
    }

    else
    {
      v33 = sqrtf((v32 - *&v77.i32[1]) + v78.f32[2]);
      v34.f32[0] = v33 + v33;
      v35 = vrecpe_f32(COERCE_UNSIGNED_INT(v33 + v33));
      v36 = vmul_f32(v35, vrecps_f32(COERCE_UNSIGNED_INT(v33 + v33), v35));
      v36.i32[0] = vmul_f32(v36, vrecps_f32(COERCE_UNSIGNED_INT(v33 + v33), v36)).u32[0];
      *&v51 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(v76, v76, 8uLL), *&vextq_s8(v77, v77, 8uLL)), *v78.f32), v36.f32[0]);
      v34.f32[1] = *&v76.i32[1] - *v77.i32;
      __asm { FMOV            V1.2S, #0.25 }

      _D1.i32[1] = v36.i32[0];
      v53 = vmul_f32(v34, _D1);
    }
  }

  else
  {
    v43 = sqrtf(*v76.i32 + ((1.0 - *&v77.i32[1]) - v78.f32[2]));
    v44.f32[0] = v43 + v43;
    v45 = vrecpe_f32(v44.u32[0]);
    v46 = vmul_f32(v45, vrecps_f32(v44.u32[0], v45));
    v44.f32[1] = *&v76.i32[1] + *v77.i32;
    __asm { FMOV            V4.2S, #0.25 }

    _D4.i32[1] = vmul_f32(v46, vrecps_f32(v44.u32[0], v46)).u32[0];
    *&v51 = vmul_f32(v44, _D4);
    v52.i32[0] = vadd_f32(*&vextq_s8(v76, v76, 8uLL), *v78.f32).u32[0];
    v52.i32[1] = vsub_f32(vdup_laneq_s32(v77, 2), *&v78).i32[1];
    v53 = vmul_n_f32(v52, _D4.f32[1]);
  }

  *(&v51 + 1) = v53;
  *(a5 + 32) = v79;
  *(a5 + 48) = v51;
  v60 = (a5 + 32);
  v76.i64[0] = 65290051;
  if (v60[-2].i64[1])
  {
    v61 = v60[-1].i64[0];
  }

  else
  {
    v61 = &v60[-2].i8[9];
  }

  re::RenderFrame::specifyScopeLane(a2, v76.i64, (v13 + 32 * a4 + 16), v61);
  re::RenderCamera::computeInverseTransform(v60, &v76);
  v62 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v76, v74.f32[0]), v77, *v74.f32, 1), v78, v74, 2);
  v63 = vmulq_f32(v62, v62);
  *&v64 = v63.f32[2] + vaddv_f32(*v63.f32);
  *v63.f32 = vrsqrte_f32(v64);
  *v63.f32 = vmul_f32(*v63.f32, vrsqrts_f32(v64, vmul_f32(*v63.f32, *v63.f32)));
  v65 = vmulq_n_f32(v62, vmul_f32(*v63.f32, vrsqrts_f32(v64, vmul_f32(*v63.f32, *v63.f32))).f32[0]);
  v66 = vmulq_n_f32(v74, -v74.f32[3]);
  v67 = vaddq_f32(v79, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v76, v66.f32[0]), v77, *v66.f32, 1), v78, v66, 2));
  v68 = vmulq_f32(v65, vdivq_f32(v67, vdupq_laneq_s32(v67, 3)));
  result = -(v68.f32[2] + vaddv_f32(*v68.f32));
  v65.f32[3] = result;
  v60[4] = v65;
  v60[3].i8[12] = 1;
  return result;
}

void *re::PlanarReflectionContext::makeReflectionCameraViews@<X0>(re::PlanarReflectionContext *this@<X0>, re::RenderFrame *a2@<X1>, const re::CameraView *a3@<X2>, uint64_t a4@<X8>)
{
  v15[47] = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 49);
  *(a4 + 32) = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *a4 = v8;
  result = re::DynamicArray<re::CameraView>::setCapacity(a4, 0);
  ++*(a4 + 24);
  if (*(this + 2))
  {
    v10 = 0;
    do
    {
      re::PlanarReflectionContext::makeReflectionCameraView(this, a2, a3, v10, &v11);
      re::DynamicArray<re::CameraView>::add(a4, &v11);
      re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v15);
      re::DynamicArray<re::ecs2::ScopeLanePair>::deinit(&v14);
      re::DynamicArray<re::RenderGraphFileProvider>::deinit(&v13);
      result = v11;
      if (v11)
      {
        if (v12)
        {
          result = (*(*v11 + 40))();
        }
      }

      ++v10;
    }

    while (*(this + 2) > v10);
  }

  return result;
}

REMipGenPolyphase **re::mtl::MipGenPolyphase::MipGenPolyphase(REMipGenPolyphase **a1, void *a2, void *a3)
{
  v4 = [[REMipGenPolyphase alloc] initWithLibrary:*a2 binaryArchive:*a3];
  *a1 = v4;

  return a1;
}

uint64_t re::GPUAttributeFormatConverter::getBufferIndex(re *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *a1 >> 1;
  if (v2 > 0x5E27ADA18591)
  {
    if (*a1 >> 1 <= 0x2B3FAC222C23CAECuLL)
    {
      switch(v2)
      {
        case 0x5E27ADA18592uLL:
          return 13;
        case 0x16172F2CA64F41FuLL:
          return 2;
        case 0x2ACCEB6695018FABuLL:
          return 3;
      }
    }

    else if (*a1 >> 1 > 0x3CB5CD20F43A4ED9uLL)
    {
      if (v2 == 0x3CB5CD20F43A4EDALL)
      {
        return 5;
      }

      if (v2 == 0x5353CF4AA93DFAB9)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == 0x2B3FAC222C23CAEDLL)
      {
        return 0;
      }

      if (v2 == 0x2ED0816D3076E801)
      {
        return 4;
      }
    }
  }

  else if (*a1 >> 1 <= 0x5E27ADA1858DuLL)
  {
    switch(v2)
    {
      case 0x30989BAE345uLL:
        return 6;
      case 0x5E27ADA1858CuLL:
        return 7;
      case 0x5E27ADA1858DuLL:
        return 8;
    }
  }

  else if (*a1 >> 1 > 0x5E27ADA1858FuLL)
  {
    if (v2 == 0x5E27ADA18590)
    {
      return 11;
    }

    if (v2 == 0x5E27ADA18591)
    {
      return 12;
    }
  }

  else
  {
    if (v2 == 0x5E27ADA1858ELL)
    {
      return 9;
    }

    if (v2 == 0x5E27ADA1858FLL)
    {
      return 10;
    }
  }

  v4 = *re::graphicsLogObjects(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 1);
    v6 = 136315138;
    v7 = v5;
    _os_log_debug_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEBUG, "Unknown attribute type '%s'", &v6, 0xCu);
  }

  return 14;
}

uint64_t re::GPUAttributeFormatConverter::getOutputAttributeSize(unint64_t a1, uint64_t a2)
{
  v2 = a1 >> 1;
  if (a1 >> 1 <= 0x16172F2CA64F41ELL)
  {
    if ((v2 - 0x5E27ADA1858DLL) >= 6 && (v2 == 0x30989BAE345 || v2 == 0x5E27ADA1858CLL))
    {
      return 8;
    }

    return 16;
  }

  result = 12;
  if (v2 > 0x2ED0816D3076E800)
  {
    if (v2 != 0x2ED0816D3076E801 && v2 != 0x3CB5CD20F43A4EDALL)
    {
      if (v2 == 0x5353CF4AA93DFAB9)
      {
        return a2;
      }

      return 16;
    }
  }

  else if (v2 == 0x16172F2CA64F41FLL || v2 != 0x2ACCEB6695018FABLL && v2 != 0x2B3FAC222C23CAEDLL)
  {
    return 16;
  }

  return result;
}

void *re::DynamicArray<re::AttributeResolution>::add(void *this, uint64_t *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::AttributeResolution>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = v3[4] + 10 * v4;
  v6 = *a2;
  *(v5 + 8) = *(a2 + 4);
  *v5 = v6;
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

void re::GPUAttributeFormatConverter::convertAttributes(uint64_t a1, id *a2, re::AttributeTable **this, _anonymous_namespace_ *a4)
{
  v127 = *MEMORY[0x1E69E9840];
  v8 = *a2;
  v9 = *(*a2 + 6);
  re::AttributeTable::buffers(this);
  v87 = v10;
  v11 = this;
  do
  {
    v12 = v11;
    v11 = *v11;
  }

  while (v11 && !v12[3]);
  v13 = *(this + 113);
  v108 = v8[26];
  v14 = a2[22];
  *buf = v14;
  re::mtl::CommandQueue::makeCommandBufferWithUnretainedReferences(buf, &v107);

  re::mtl::CommandBuffer::makeComputeCommandEncoder(&v107, &v106);
  v15 = 0;
  v105 = 0;
  v102[1] = 0;
  v103 = 0;
  v102[0] = 0;
  v16 = re::StandardMaterialVertexMeshAttributeNames;
  v104 = 0;
  do
  {
    *&buf[8] = 0;
    *buf = 0;
    v17 = this;
    do
    {
      v18 = v17;
      v17 = *v17;
    }

    while (v17 && !v18[8]);
    *&v121[0] = re::StandardMaterialVertexMeshAttributeNames[2 * v15] & 0x7FFFFFFFFFFFFFFFLL;
    v19 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v18 + 5, v121);
    if (v19 == -1)
    {
      v21 = 0;
    }

    else
    {
      v20 = v18[6] + 16 * v19;
      *&buf[2] = v15;
      *&buf[4] = *(v20 + 8);
      v21 = 1;
    }

    buf[9] = v21;
    re::DynamicArray<re::AttributeResolution>::add(v102, buf);
    ++v15;
  }

  while (v15 != 15);
  *buf = v105;
  *&buf[8] = v103;
  v100 = 0;
  re::createVertexFetchArgumentBuffer<re::mtl::ComputeCommandEncoder>(&v108, &v106, this, buf, &v100, &v101);
  if (v100)
  {

    v100 = 0;
  }

  [v106 setBuffer:v101 offset:0 atIndex:30];
  v22 = this;
  do
  {
    v23 = v22;
    v22 = *v22;
  }

  while (v22 && !v23[8]);
  *buf = 0x5353CF4AA93DFAB9;
  v24 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v23 + 5, buf);
  v25 = v24;
  v86 = v24;
  if (v24 == -1)
  {
    v85 = 0;
    v37 = 0;
    goto LABEL_45;
  }

  v26 = v23[6] + 16 * v24;
  v27 = re::AttributeTable::buffers(this);
  v31 = *(v26 + 8);
  v30 = v26 + 8;
  v29 = v31;
  v85 = v30;
  if (v28 <= v31)
  {
    goto LABEL_241;
  }

  v32 = v27 + 24 * v29;
  v33 = *v32;
  *&v124[16] = *(v32 + 2);
  *v124 = v33;
  v34 = *(this + 456);
  v30 = *(this + 460);
  v35 = re::BufferView::contents(v124);
  v16 = v12[3];
  if (v16 <= v30)
  {
LABEL_242:
    v96 = 0;
    memset(v111, 0, sizeof(v111));
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v121[0]) = 136315906;
    *(v121 + 4) = "operator[]";
    WORD6(v121[0]) = 1024;
    *(v121 + 14) = 476;
    WORD1(v121[1]) = 2048;
    *(&v121[1] + 4) = v30;
    WORD6(v121[1]) = 2048;
    *(&v121[1] + 14) = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_243;
  }

  v36 = *(this + 112);
  if (v34)
  {
    v37 = 4;
  }

  else
  {
    v37 = 2;
  }

  if (v34)
  {
    if (v36)
    {
      v38 = 0;
      v25 = v86;
      do
      {
        v40 = *v35;
        v35 += 2;
        v39 = v40;
        if (v38 <= v40)
        {
          v41 = v39;
        }

        else
        {
          v41 = v38;
        }

        if (v39 != -1)
        {
          v38 = v41;
        }

        --v36;
      }

      while (v36);
      goto LABEL_44;
    }
  }

  else if (v36)
  {
    v38 = 0;
    v25 = v86;
    do
    {
      v43 = *v35++;
      v42 = v43;
      if (v38 <= v43)
      {
        v44 = v42;
      }

      else
      {
        v44 = v38;
      }

      if (v42 != 0xFFFF)
      {
        v38 = v44;
      }

      --v36;
    }

    while (v36);
    goto LABEL_44;
  }

  v38 = 0;
  v25 = v86;
LABEL_44:
  v13 = v38 + 1;
LABEL_45:
  v76 = v8;
  re::createVertexFetchComputePipeline(v8, &v99);
  v45 = [v108 newBufferWithLength:112 options:0];
  [v106 setBuffer:v45 offset:0 atIndex:2];
  v78 = [*(v99 + 16) threadExecutionWidth];
  v81 = (v78 - 1 + *(this + 112)) & -v78;
  v82 = (v78 - 1 + v13) & -v78;
  v96 = (v13 - 1);
  v97 = v82 - 1;
  v80 = v37;
  v98 = v37;
  [v106 setBytes:&v96 length:24 atIndex:0];
  v77 = v45;
  v79 = [v45 contents];
  if (v87)
  {
    v16 = 0;
    v30 = 0;
    while (1)
    {
      if (v25 == -1 || (v46 = v81, v30 != *v85))
      {
        v46 = v82;
      }

      v4 = this[42];
      if (v4 <= v30)
      {
        *v124 = 0;
        memset(v111, 0, sizeof(v111));
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v121[0]) = 136315906;
        *(v121 + 4) = "operator[]";
        WORD6(v121[0]) = 1024;
        *(v121 + 14) = 476;
        WORD1(v121[1]) = 2048;
        *(&v121[1] + 4) = v30;
        WORD6(v121[1]) = 2048;
        *(&v121[1] + 14) = v4;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_218:
        v109 = 0;
        memset(v111, 0, sizeof(v111));
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v124 = 136315906;
        *&v124[4] = "operator[]";
        *&v124[12] = 1024;
        *&v124[14] = 476;
        *&v124[18] = 2048;
        *&v124[20] = v30;
        v125 = 2048;
        v126 = v9;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_219:
        v109 = 0;
        memset(v111, 0, sizeof(v111));
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v124 = 136315906;
        *&v124[4] = "operator[]";
        *&v124[12] = 1024;
        *&v124[14] = 476;
        *&v124[18] = 2048;
        *&v124[20] = v30;
        v125 = 2048;
        v126 = v9;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_220:
        v109 = 0;
        memset(v111, 0, sizeof(v111));
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v124 = 136315906;
        *&v124[4] = "operator[]";
        *&v124[12] = 1024;
        *&v124[14] = 476;
        *&v124[18] = 2048;
        *&v124[20] = v30;
        v125 = 2048;
        v126 = v9;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_221:
        v109 = 0;
        memset(v111, 0, sizeof(v111));
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v124 = 136315906;
        *&v124[4] = "operator[]";
        *&v124[12] = 1024;
        *&v124[14] = 476;
        *&v124[18] = 2048;
        *&v124[20] = v30;
        v125 = 2048;
        v126 = v9;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_222:
        *v124 = 0;
        memset(v111, 0, sizeof(v111));
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v121[0]) = 136315906;
        *(v121 + 4) = "operator[]";
        WORD6(v121[0]) = 1024;
        *(v121 + 14) = 476;
        WORD1(v121[1]) = 2048;
        *(&v121[1] + 4) = v30;
        WORD6(v121[1]) = 2048;
        *(&v121[1] + 14) = v46;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_223:
        *v124 = 0;
        memset(v111, 0, sizeof(v111));
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v121[0]) = 136315906;
        *(v121 + 4) = "operator[]";
        WORD6(v121[0]) = 1024;
        *(v121 + 14) = 476;
        WORD1(v121[1]) = 2048;
        *(&v121[1] + 4) = v30;
        WORD6(v121[1]) = 2048;
        *(&v121[1] + 14) = v46;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_224:
        *v124 = 0;
        memset(v111, 0, sizeof(v111));
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v121[0]) = 136315906;
        *(v121 + 4) = "operator[]";
        WORD6(v121[0]) = 1024;
        *(v121 + 14) = 468;
        WORD1(v121[1]) = 2048;
        *(&v121[1] + 4) = v13;
        WORD6(v121[1]) = 2048;
        *(&v121[1] + 14) = v46;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_225:
        v109 = 0;
        memset(v111, 0, sizeof(v111));
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v124 = 136315906;
        *&v124[4] = "operator[]";
        *&v124[12] = 1024;
        *&v124[14] = 476;
        *&v124[18] = 2048;
        *&v124[20] = v30;
        v125 = 2048;
        v126 = v46;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_226:
        v109 = 0;
        memset(v111, 0, sizeof(v111));
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v124 = 136315906;
        *&v124[4] = "operator[]";
        *&v124[12] = 1024;
        *&v124[14] = 468;
        *&v124[18] = 2048;
        *&v124[20] = v46;
        v125 = 2048;
        v126 = v25;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_227:
        *v124 = 0;
        memset(v111, 0, sizeof(v111));
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v121[0]) = 136315906;
        *(v121 + 4) = "operator[]";
        WORD6(v121[0]) = 1024;
        *(v121 + 14) = 468;
        WORD1(v121[1]) = 2048;
        *(&v121[1] + 4) = 10;
        WORD6(v121[1]) = 2048;
        *(&v121[1] + 14) = v46;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_228:
        *v124 = 0;
        memset(v111, 0, sizeof(v111));
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v121[0]) = 136315906;
        *(v121 + 4) = "operator[]";
        WORD6(v121[0]) = 1024;
        *(v121 + 14) = 468;
        WORD1(v121[1]) = 2048;
        *(&v121[1] + 4) = 1;
        WORD6(v121[1]) = 2048;
        *(&v121[1] + 14) = v46;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_229:
        *v124 = 0;
        memset(v111, 0, sizeof(v111));
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v121[0]) = 136315906;
        *(v121 + 4) = "operator[]";
        WORD6(v121[0]) = 1024;
        *(v121 + 14) = 468;
        WORD1(v121[1]) = 2048;
        *(&v121[1] + 4) = 3;
        WORD6(v121[1]) = 2048;
        *(&v121[1] + 14) = v46;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_230:
        *v124 = 0;
        memset(v111, 0, sizeof(v111));
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v121[0]) = 136315906;
        *(v121 + 4) = "operator[]";
        WORD6(v121[0]) = 1024;
        *(v121 + 14) = 468;
        WORD1(v121[1]) = 2048;
        *(&v121[1] + 4) = 8;
        WORD6(v121[1]) = 2048;
        *(&v121[1] + 14) = v46;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_231:
        *v124 = 0;
        memset(v111, 0, sizeof(v111));
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v121[0]) = 136315906;
        *(v121 + 4) = "operator[]";
        WORD6(v121[0]) = 1024;
        *(v121 + 14) = 468;
        WORD1(v121[1]) = 2048;
        *(&v121[1] + 4) = 12;
        WORD6(v121[1]) = 2048;
        *(&v121[1] + 14) = v46;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_232:
        *v124 = 0;
        memset(v111, 0, sizeof(v111));
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v121[0]) = 136315906;
        *(v121 + 4) = "operator[]";
        WORD6(v121[0]) = 1024;
        *(v121 + 14) = 468;
        WORD1(v121[1]) = 2048;
        *(&v121[1] + 4) = 13;
        WORD6(v121[1]) = 2048;
        *(&v121[1] + 14) = v46;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_233:
        *v124 = 0;
        memset(v111, 0, sizeof(v111));
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v121[0]) = 136315906;
        *(v121 + 4) = "operator[]";
        WORD6(v121[0]) = 1024;
        *(v121 + 14) = 468;
        WORD1(v121[1]) = 2048;
        *(&v121[1] + 4) = 7;
        WORD6(v121[1]) = 2048;
        *(&v121[1] + 14) = v46;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_234:
        *v124 = 0;
        memset(v111, 0, sizeof(v111));
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v121[0]) = 136315906;
        *(v121 + 4) = "operator[]";
        WORD6(v121[0]) = 1024;
        *(v121 + 14) = 468;
        WORD1(v121[1]) = 2048;
        *(&v121[1] + 4) = 9;
        WORD6(v121[1]) = 2048;
        *(&v121[1] + 14) = v46;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_235:
        *v124 = 0;
        memset(v111, 0, sizeof(v111));
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v121[0]) = 136315906;
        *(v121 + 4) = "operator[]";
        WORD6(v121[0]) = 1024;
        *(v121 + 14) = 468;
        WORD1(v121[1]) = 2048;
        *(&v121[1] + 4) = 11;
        WORD6(v121[1]) = 2048;
        *(&v121[1] + 14) = v46;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_236:
        *v124 = 0;
        memset(v111, 0, sizeof(v111));
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v121[0]) = 136315906;
        *(v121 + 4) = "operator[]";
        WORD6(v121[0]) = 1024;
        *(v121 + 14) = 468;
        WORD1(v121[1]) = 2048;
        *(&v121[1] + 4) = 2;
        WORD6(v121[1]) = 2048;
        *(&v121[1] + 14) = v46;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_237:
        *v124 = 0;
        memset(v111, 0, sizeof(v111));
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v121[0]) = 136315906;
        *(v121 + 4) = "operator[]";
        WORD6(v121[0]) = 1024;
        *(v121 + 14) = 468;
        WORD1(v121[1]) = 2048;
        *(&v121[1] + 4) = 6;
        WORD6(v121[1]) = 2048;
        *(&v121[1] + 14) = v46;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_238:
        *v124 = 0;
        memset(v111, 0, sizeof(v111));
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v121[0]) = 136315906;
        *(v121 + 4) = "operator[]";
        WORD6(v121[0]) = 1024;
        *(v121 + 14) = 468;
        WORD1(v121[1]) = 2048;
        *(&v121[1] + 4) = 4;
        WORD6(v121[1]) = 2048;
        *(&v121[1] + 14) = v46;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_239:
        *v124 = 0;
        memset(v111, 0, sizeof(v111));
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v121[0]) = 136315906;
        *(v121 + 4) = "operator[]";
        WORD6(v121[0]) = 1024;
        *(v121 + 14) = 468;
        WORD1(v121[1]) = 2048;
        *(&v121[1] + 4) = 5;
        WORD6(v121[1]) = 2048;
        *(&v121[1] + 14) = v46;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_240:
        *v124 = 0;
        memset(v111, 0, sizeof(v111));
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v121[0]) = 136315906;
        *(v121 + 4) = "operator[]";
        WORD6(v121[0]) = 1024;
        *(v121 + 14) = 468;
        WORD1(v121[1]) = 2048;
        *(&v121[1] + 4) = 0;
        WORD6(v121[1]) = 2048;
        *(&v121[1] + 14) = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_241:
        re::internal::assertLog(6, v28, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v29, v28);
        _os_crash();
        __break(1u);
        goto LABEL_242;
      }

      v9 = v13;
      re::StringID::StringID(v95, (v16 + this[43]));
      v47 = v95[0];
      OutputAttributeSize = re::GPUAttributeFormatConverter::getOutputAttributeSize(v95[0], v98);
      v4 = OutputAttributeSize;
      if (v47)
      {
        if (v95[0])
        {
        }
      }

      v13 = v46 * v4;
      v95[0] = 0;
      v95[1] = &str_67;
      if (v13)
      {
        break;
      }

LABEL_131:
      ++v30;
      v16 = (v16 + 16);
      v13 = v9;
      if (v87 == v30)
      {
        goto LABEL_132;
      }
    }

    v46 = this[42];
    if (v46 <= v30)
    {
      goto LABEL_222;
    }

    re::StringID::StringID(v94, (v16 + this[43]));
    BufferIndex = re::GPUAttributeFormatConverter::getBufferIndex(v94);
    v4 = BufferIndex;
    if (v94[0])
    {
      if (v94[0])
      {
      }
    }

    v94[0] = 0;
    v94[1] = &str_67;
    v93 = [v108 newBufferWithLength:v13 options:0];
    v46 = this[42];
    if (v46 <= v30)
    {
      goto LABEL_223;
    }

    v50 = re::StringID::StringID(&v91, (v16 + this[43]));
    v51 = v91 >> 1;
    if (v91 >> 1 > 0x5E27ADA18591)
    {
      if (v91 >> 1 <= 0x2B3FAC222C23CAECLL)
      {
        switch(v51)
        {
          case 0x5E27ADA18592uLL:
            v46 = *(a1 + 8);
            if (v46 <= 0xD)
            {
              goto LABEL_232;
            }

            v52 = (*(a1 + 16) + 104);
            goto LABEL_107;
          case 0x16172F2CA64F41FuLL:
            v46 = *(a1 + 8);
            if (v46 <= 2)
            {
              goto LABEL_236;
            }

            v52 = (*(a1 + 16) + 16);
            goto LABEL_107;
          case 0x2ACCEB6695018FABuLL:
            v46 = *(a1 + 8);
            if (v46 <= 3)
            {
              goto LABEL_229;
            }

            v52 = (*(a1 + 16) + 24);
            goto LABEL_107;
        }
      }

      else if (v91 >> 1 > 0x3CB5CD20F43A4ED9)
      {
        if (v51 == 0x3CB5CD20F43A4EDALL)
        {
          v46 = *(a1 + 8);
          if (v46 <= 5)
          {
            goto LABEL_239;
          }

          v52 = (*(a1 + 16) + 40);
          goto LABEL_107;
        }

        if (v51 == 0x5353CF4AA93DFAB9)
        {
          v46 = *(a1 + 8);
          if (v46 <= 1)
          {
            goto LABEL_228;
          }

          v52 = (*(a1 + 16) + 8);
          goto LABEL_107;
        }
      }

      else
      {
        if (v51 == 0x2B3FAC222C23CAEDLL)
        {
          if (!*(a1 + 8))
          {
            goto LABEL_240;
          }

          v52 = *(a1 + 16);
          goto LABEL_107;
        }

        if (v51 == 0x2ED0816D3076E801)
        {
          v46 = *(a1 + 8);
          if (v46 <= 4)
          {
            goto LABEL_238;
          }

          v52 = (*(a1 + 16) + 32);
          goto LABEL_107;
        }
      }
    }

    else if (v91 >> 1 <= 0x5E27ADA1858DLL)
    {
      switch(v51)
      {
        case 0x30989BAE345uLL:
          v46 = *(a1 + 8);
          if (v46 <= 6)
          {
            goto LABEL_237;
          }

          v52 = (*(a1 + 16) + 48);
          goto LABEL_107;
        case 0x5E27ADA1858CuLL:
          v46 = *(a1 + 8);
          if (v46 <= 7)
          {
            goto LABEL_233;
          }

          v52 = (*(a1 + 16) + 56);
          goto LABEL_107;
        case 0x5E27ADA1858DuLL:
          v46 = *(a1 + 8);
          if (v46 <= 8)
          {
            goto LABEL_230;
          }

          v52 = (*(a1 + 16) + 64);
          goto LABEL_107;
      }
    }

    else if (v91 >> 1 > 0x5E27ADA1858FLL)
    {
      if (v51 == 0x5E27ADA18590)
      {
        v46 = *(a1 + 8);
        if (v46 <= 0xB)
        {
          goto LABEL_235;
        }

        v52 = (*(a1 + 16) + 88);
        goto LABEL_107;
      }

      if (v51 == 0x5E27ADA18591)
      {
        v46 = *(a1 + 8);
        if (v46 <= 0xC)
        {
          goto LABEL_231;
        }

        v52 = (*(a1 + 16) + 96);
        goto LABEL_107;
      }
    }

    else
    {
      if (v51 == 0x5E27ADA1858ELL)
      {
        v46 = *(a1 + 8);
        if (v46 <= 9)
        {
          goto LABEL_234;
        }

        v52 = (*(a1 + 16) + 72);
        goto LABEL_107;
      }

      if (v51 == 0x5E27ADA1858FLL)
      {
        v46 = *(a1 + 8);
        if (v46 <= 0xA)
        {
          goto LABEL_227;
        }

        v52 = (*(a1 + 16) + 80);
LABEL_107:
        v53 = NS::SharedPtr<MTL::Buffer>::operator=(v52, &v93);
LABEL_108:
        if (v91)
        {
          if (v91)
          {
          }
        }

        v91 = 0;
        v92 = &str_67;
        if (v93)
        {

          v93 = 0;
        }

        v13 = v4;
        v46 = *(a1 + 8);
        if (v46 <= v4)
        {
          goto LABEL_224;
        }

        v54 = *(a1 + 16);
        [v106 useResource:*(v54 + 8 * v4) usage:2];
        v25 = v79;
        switch(v4)
        {
          case 0:
            goto LABEL_130;
          case 1:
            v25 = v79 + 1;
            goto LABEL_130;
          case 2:
            v25 = v79 + 5;
            goto LABEL_130;
          case 3:
            v25 = v79 + 2;
            goto LABEL_130;
          case 4:
            v25 = v79 + 3;
            goto LABEL_130;
          case 5:
            v25 = v79 + 4;
            goto LABEL_130;
          case 6:
            v25 = v79 + 6;
            goto LABEL_130;
          case 7:
            v25 = v79 + 7;
            goto LABEL_130;
          case 8:
            v25 = v79 + 8;
            goto LABEL_130;
          case 9:
            v25 = v79 + 9;
            goto LABEL_130;
          case 10:
            v25 = v79 + 10;
            goto LABEL_130;
          case 11:
            v25 = v79 + 11;
            goto LABEL_130;
          case 12:
            v25 = v79 + 12;
            goto LABEL_130;
          case 13:
            v25 = v79 + 13;
LABEL_130:
            *v25 = [*(v54 + 8 * v4) gpuAddress];
            v25 = v86;
            break;
          default:
            goto LABEL_131;
        }

        goto LABEL_131;
      }
    }

    v55 = *re::graphicsLogObjects(v50);
    v53 = os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG);
    if (v53)
    {
      *buf = 136315138;
      *&buf[4] = v92;
      _os_log_debug_impl(&dword_1E1C61000, v55, OS_LOG_TYPE_DEBUG, "Unknown attribute type '%s'", buf, 0xCu);
    }

    goto LABEL_108;
  }

LABEL_132:
  v4 = v13;
  if ((atomic_load_explicit(&qword_1EE1B9CF0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_245;
  }

  while (1)
  {
    v9 = _MergedGlobals_459;
    [v106 setLabel:v9];

    [v106 setComputePipelineState:*(v99 + 16)];
    [v106 setVisibleFunctionTable:*(v99 + 24) atBufferIndex:29];
    *buf = v4;
    *&buf[8] = vdupq_n_s64(1uLL);
    *&v121[0] = v78;
    *(v121 + 8) = *&buf[8];
    v56 = [v106 dispatchThreads:buf threadsPerThreadgroup:v121];
    if (v86 == -1)
    {
      break;
    }

    LOBYTE(v111[0]) = 0;
    BYTE8(v111[2]) = 0;
    memset(v114, 0, sizeof(v114));
    v115 = 0;
    v117 = 0;
    v116 = 0;
    v118 = 1;
    v119 = 0;
    v120 = 257;
    ComputePipelineState = re::getOrCreateComputePipelineState(v76, buf);
    [v106 setComputePipelineState:*ComputePipelineState];
    v96 = *(this + 112);
    v97 = v81;
    [v106 setBytes:&v96 length:24 atIndex:0];
    v58 = re::AttributeTable::buffers(this);
    v60 = *v85;
    if (v59 <= v60)
    {
LABEL_243:
      re::internal::assertLog(6, v59, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v60, v59);
      _os_crash();
      __break(1u);
    }

    else
    {
      [v106 setBuffer:*(v58 + 3 * *v85) offset:*(v58 + 6 * *v85 + 4) atIndex:1];
      v9 = *(a1 + 8);
      if (v9 > 1)
      {
        [v106 setBuffer:*(*(a1 + 16) + 8) offset:0 atIndex:2];
        if (v81)
        {
          *&v121[0] = v81;
          *(v121 + 8) = vdupq_n_s64(1uLL);
          *v124 = v78;
          *&v124[8] = *(v121 + 8);
          [v106 dispatchThreads:v121 threadsPerThreadgroup:v124];
        }

        if (v119)
        {

          v119 = 0;
        }

        re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v114);
        if (BYTE8(v111[2]) == 1 && v112)
        {
          if (BYTE8(v112))
          {
            (*(*v112 + 40))(v112, v113);
          }

          v112 = 0u;
          v113 = 0u;
        }

        if (LOBYTE(v111[0]) == 1 && *(&v111[0] + 1))
        {
          if (v111[1])
          {
            (*(**(&v111[0] + 1) + 40))(*(&v111[0] + 1), *(&v111[1] + 1));
          }

          memset(v111 + 8, 0, 32);
        }

        if (*buf && (buf[8] & 1) != 0)
        {
          (*(**buf + 40))(*buf, *&buf[16]);
        }

        break;
      }
    }

    v109 = 0;
    v122 = 0u;
    v123 = 0u;
    memset(v121, 0, sizeof(v121));
    v12 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v124 = 136315906;
    *&v124[4] = "operator[]";
    *&v124[12] = 1024;
    *&v124[14] = 468;
    *&v124[18] = 2048;
    *&v124[20] = 1;
    v125 = 2048;
    v126 = v9;
    LODWORD(v75) = 38;
    v74 = v124;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_245:
    if (__cxa_guard_acquire(&qword_1EE1B9CF0))
    {
      v73 = re::ns::String::String(&_MergedGlobals_459, "serializeLowLevelMeshPartAttributes");
      __cxa_guard_release(v73 + 1);
    }
  }

  v83 = v4;
  [v106 endEncoding];
  [v107 commit];
  v61 = [v107 waitUntilCompleted];
  v25 = v86;
  v46 = v80;
  if (v87)
  {
    v16 = 0;
    v30 = 0;
    v13 = v121;
    if (v80 == 2)
    {
      v62 = 49;
    }

    else
    {
      v62 = 36;
    }

    LODWORD(v81) = v62;
    do
    {
      memset(v121, 0, 32);
      re::DynamicString::setCapacity(v121, 0);
      *&v123 = 0;
      *&v122 = 0;
      v121[2] = 0uLL;
      DWORD2(v122) = 0;
      WORD4(v123) = 256;
      v9 = this[42];
      if (v9 <= v30)
      {
        goto LABEL_218;
      }

      v63 = strlen(*(v16 + this[43] + 8));
      *buf = *(v16 + this[43] + 8);
      *&buf[8] = v63;
      re::DynamicString::operator=(v121, buf);
      v9 = this[42];
      if (v9 <= v30)
      {
        goto LABEL_219;
      }

      v64 = re::StringID::StringID(v90, (v16 + this[43]));
      v65 = v90[0] >> 1;
      if (v90[0] >> 1 > 0x16172F2CA64F41EuLL)
      {
        v66 = 30;
        if (v90[0] >> 1 > 0x2ED0816D3076E800uLL)
        {
          if (v65 == 0x2ED0816D3076E801 || v65 == 0x3CB5CD20F43A4EDALL)
          {
            goto LABEL_176;
          }

          v66 = v81;
          v67 = 0x5353CF4AA93DFAB9;
        }

        else
        {
          if (v65 == 0x16172F2CA64F41FLL)
          {
LABEL_162:
            v66 = 31;
            goto LABEL_176;
          }

          if (v65 == 0x2ACCEB6695018FABLL)
          {
            goto LABEL_176;
          }

          v67 = 0x2B3FAC222C23CAEDLL;
        }

        if (v65 != v67)
        {
          goto LABEL_175;
        }
      }

      else
      {
        if ((v65 - 0x5E27ADA1858DLL) < 6)
        {
          goto LABEL_162;
        }

        if (v65 != 0x30989BAE345 && v65 != 0x5E27ADA1858CLL)
        {
LABEL_175:
          v66 = 0;
          goto LABEL_176;
        }

        v66 = 29;
      }

LABEL_176:
      BYTE8(v123) = v66;
      if (v90[0])
      {
        if (v90[0])
        {
        }
      }

      v90[0] = 0;
      v90[1] = &str_67;
      v9 = v12[3];
      if (v9 <= v30)
      {
        goto LABEL_220;
      }

      BYTE9(v123) = *(v16 + v12[4] + 5);
      v9 = this[42];
      if (v9 <= v30)
      {
        goto LABEL_221;
      }

      re::StringID::StringID(v89, (v16 + this[43]));
      v4 = v89[0];
      v68 = re::GPUAttributeFormatConverter::getOutputAttributeSize(v89[0], v46);
      v69 = v68;
      if (v4)
      {
        if (v89[0])
        {
        }
      }

      v89[0] = 0;
      v89[1] = &str_67;
      if (v25 == -1 || v30 != *v85)
      {
        if (BYTE9(v123))
        {
          v70 = v83;
        }

        else
        {
          v70 = 1;
        }
      }

      else
      {
        v70 = *(this + 112);
      }

      v9 = (v70 * v69);
      if (*(&v121[2] + 1) < v9)
      {
        re::DynamicArray<BOOL>::setCapacity(&v121[2], v9);
      }

      if (v9)
      {
        v46 = this[42];
        if (v46 <= v30)
        {
          goto LABEL_225;
        }

        re::StringID::StringID(v88, (v16 + this[43]));
        v71 = re::GPUAttributeFormatConverter::getBufferIndex(v88);
        v4 = v71;
        if (v88[0])
        {
          if (v88[0])
          {
          }
        }

        v88[0] = 0;
        v88[1] = &str_67;
        v46 = v4;
        v25 = *(a1 + 8);
        if (v25 <= v4)
        {
          goto LABEL_226;
        }

        re::DynamicArray<REFrameAnalysisBottleneck>::copy(&v121[2], 0, [*(*(a1 + 16) + 8 * v4) contents], v9);
        v25 = v86;
        v46 = v80;
      }

      v72.n128_f64[0] = re::DynamicArray<re::MeshAssetBuffer>::add(a4, v121);
      if (*&v121[2])
      {
        if (v123)
        {
          (*(**&v121[2] + 40))(v72.n128_f64[0]);
        }

        *&v123 = 0;
        *&v122 = 0;
        v121[2] = 0uLL;
        ++DWORD2(v122);
      }

      v61 = *&v121[0];
      if (*&v121[0] && (BYTE8(v121[0]) & 1) != 0)
      {
        v61 = (*(**&v121[0] + 40))(v72);
      }

      ++v30;
      v16 = (v16 + 16);
    }

    while (v87 != v30);
  }

  if (v77)
  {
  }

  if (v99)
  {
  }

  if (v101)
  {
  }

  if (v102[0] && v105)
  {
    (*(*v102[0] + 40))();
  }
}

void *re::DynamicArray<re::AttributeResolution>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::AttributeResolution>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::AttributeResolution>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::AttributeResolution>::setCapacity(void *result, unint64_t a2)
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

        if (is_mul_ok(a2, 0xAuLL))
        {
          v2 = 10 * a2;
          result = (*(*result + 32))(result, 10 * a2, 2);
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
            memcpy(v7, v5[4], 10 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 10, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::AttributeResolution>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void re::CameraStreamProvider::threadSafe_increaseRunningTokenCount(re::CameraStreamProvider *this)
{
  std::mutex::lock((this + 24));
  v2 = *(this + 22);
  *(this + 22) = v2 + 1;
  if (!v2)
  {
    (*(*this + 48))(this);
  }

  std::mutex::unlock((this + 24));
}

id *re::VisualDepthStreamRunningToken::operator=(id *from, id *a2)
{
  if (from != a2)
  {
    to = 0;
    objc_moveWeak(&to, from);
    re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(from, a2);
    re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(a2, &to);
    objc_destroyWeak(&to);
  }

  return from;
}

void re::VisualDepthStreamRunningToken::~VisualDepthStreamRunningToken(id *location)
{
  if (*location)
  {
    WeakRetained = objc_loadWeakRetained(location);
    if (WeakRetained)
    {
      v3 = WeakRetained;
      re::CameraStreamProvider::threadSafe_decreaseRunningTokenCount((WeakRetained - 8));
    }
  }

  objc_destroyWeak(location);
  *location = 0;
}

void re::CameraStreamProvider::threadSafe_decreaseRunningTokenCount(re::CameraStreamProvider *this)
{
  std::mutex::lock((this + 24));
  v3 = *(this + 22);
  if (v3 <= 0)
  {
    re::internal::assertLog(4, v2, "assertion failure: '%s' (%s:line %i) Decrease a negative token count. This should never happen", "m_runningTokenCount > 0", "threadSafe_decreaseRunningTokenCount", 56);
    _os_crash();
    __break(1u);
  }

  else
  {
    v4 = v3 - 1;
    *(this + 22) = v4;
    if (!v4)
    {
      (*(*this + 56))(this);
    }

    std::mutex::unlock((this + 24));
  }
}

BOOL re::FontID::isValid(re::FontID *this)
{
  v2 = re::StringID::invalid(&v6);
  v3 = v6;
  if ((v6 ^ *this) > 1)
  {
    v4 = 1;
    if ((v6 & 1) == 0)
    {
      return v4;
    }
  }

  else
  {
    v2 = *(this + 1);
    if (v2 == __s2)
    {
      v4 = 0;
      if ((v6 & 1) == 0)
      {
        return v4;
      }
    }

    else
    {
      v2 = strcmp(v2, __s2);
      v4 = v2 != 0;
      if ((v3 & 1) == 0)
      {
        return v4;
      }
    }
  }

  if (v6)
  {
  }

  return v4;
}

void re::internal::shadows::initializeMeshShadowDefaults(re::internal::shadows *this, const char *a2)
{
  re::Defaults::BOOLValue("enableShadowFlattening", a2, v6);
  if (v6[0] == 1)
  {
    re::internal::shadows::g_enableShadowFlattening = v6[1];
  }

  re::Defaults::BOOLValue("enableMeshDepthFallbackWhenFlattening", v2, v5);
  if (v5[0] == 1)
  {
    re::internal::shadows::g_enableMeshDepthFallbackWhenFlattening = v5[1];
  }

  re::Defaults::BOOLValue("EnableDefaultShadows", v3, v4);
  if (v4[0] == 1)
  {
    re::internal::shadows::g_enableShadowsByDefault = v4[1];
  }
}

re::MeshModelDefinition *re::MeshModelDefinition::MeshModelDefinition(re::MeshModelDefinition *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_1F5D08F18;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  re::DynamicString::setCapacity(this + 3, 0);
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 20) = 0;
  *(this + 9) = 0;
  *(this + 16) = 0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 0;
  return this;
}

void re::MeshModelDefinition::~MeshModelDefinition(re::MeshModelDefinition *this)
{
  *this = &unk_1F5D08F18;
  v3 = (this + 96);
  v2 = *(this + 12);
  if (v2)
  {
    if (*(this + 16))
    {
      (*(*v2 + 40))(v2);
    }

    *(this + 16) = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = 0;
    ++*(this + 30);
  }

  v4 = *(this + 7);
  if (v4)
  {
    v5 = *(this + 11);
    if (v5)
    {
      v6 = *(this + 9);
      if (v6)
      {
        v7 = 56 * v6;
        v8 = (v5 + 16);
        do
        {
          re::DynamicString::deinit(v8);
          v9 = *(v8 - 2);
          if (v9)
          {

            *(v8 - 2) = 0;
          }

          v8 = (v8 + 56);
          v7 -= 56;
        }

        while (v7);
        v4 = *(this + 7);
        v5 = *(this + 11);
      }

      (*(*v4 + 40))(v4, v5);
    }

    *(this + 11) = 0;
    *(this + 8) = 0;
    *(this + 9) = 0;
    *(this + 7) = 0;
    ++*(this + 20);
  }

  re::DynamicString::deinit((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::MeshModelDefinition::~MeshModelDefinition(this);

  JUMPOUT(0x1E6906520);
}