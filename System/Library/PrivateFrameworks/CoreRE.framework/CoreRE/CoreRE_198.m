re::DynamicString *re::Ok<re::GeomModelDescriptor,re::GeomModelDescriptor>(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  *(a2 + 32) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 84) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((a1 + 48), (a2 + 48));
  v5 = *(a2 + 96);
  *(v3 + 136) = 0u;
  v3 += 136;
  *(v3 - 40) = v5;
  *(a2 + 96) = 0;
  *(v3 - 32) = *(a2 + 104);
  *(a2 + 104) = 0u;
  *(v3 - 8) = *(a2 + 128);
  *(a2 + 128) = 0;
  ++*(a2 + 120);
  *(v3 - 16) = 1;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  *(v3 + 36) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v3, (a2 + 136));
  *(v3 + 48) = *(a2 + 184);
  *(a2 + 184) = 0;
  *(v3 + 72) = *(a2 + 208);
  *(a2 + 208) = 0;
  *(v3 + 56) = *(a2 + 192);
  *(a2 + 192) = 0u;

  return re::GeomModelDescriptor::reset(a2);
}

uint64_t re::Result<re::GeomModelDescriptor,re::DetailedError>::Result(uint64_t a1, uint64_t a2)
{
  *a1 = 1;
  *(a1 + 8) = *a2;
  *(a1 + 10) = *(a2 + 2);
  *(a1 + 12) = *(a2 + 4);
  v4 = *(a2 + 16);
  *(a1 + 16) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a1 + 24) = v4;
  v5 = *(a2 + 32);
  *(a1 + 32) = *(a2 + 24);
  *(a1 + 40) = v5;
  *(a2 + 32) = 0;
  *(a1 + 48) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 92) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((a1 + 56), (a2 + 48));
  *(a1 + 136) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  v6 = *(a2 + 104);
  *(a1 + 104) = *(a2 + 96);
  *(a1 + 112) = v6;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  v7 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 112);
  *(a2 + 112) = v7;
  v8 = *(a1 + 136);
  *(a1 + 136) = *(a2 + 128);
  *(a2 + 128) = v8;
  ++*(a2 + 120);
  ++*(a1 + 128);
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 180) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((a1 + 144), (a2 + 136));
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 216) = *(a2 + 208);
  v9 = *(a2 + 192);
  *(a1 + 192) = *(a2 + 184);
  *(a2 + 184) = 0;
  v10 = *(a2 + 200);
  *(a2 + 208) = 0;
  v12 = *(a1 + 200);
  v11 = *(a1 + 208);
  *(a1 + 200) = v9;
  *(a1 + 208) = v10;
  *(a2 + 192) = v12;
  *(a2 + 200) = v11;
  re::GeomModelDescriptor::reset(a2);
  return a1;
}

void re::makeNSDataFromGeomArray<unsigned char>(uint64_t a1, uint64_t a2)
{
  re::Data::makeDataWithBytes(*(a2 + 32), *(a2 + 16), &v4);
  *a1 = 0;
  *(a1 + 8) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  re::ObjCObject::operator=(a1, &v4);
  *(a1 + 8) = 1;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = xmmword_1E3049620;
}

void re::makeNSDataFromGeomArray<unsigned int>(uint64_t a1, uint64_t a2)
{
  re::Data::makeDataWithBytes(*(a2 + 32), (4 * *(a2 + 16)), &v4);
  *a1 = 0;
  *(a1 + 8) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  re::ObjCObject::operator=(a1, &v4);
  *(a1 + 8) = 5;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = xmmword_1E3068150;
}

re::DynamicString *re::GeomModelDescriptor::setAttribute@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v56 = *MEMORY[0x1E69E9840];
  if (*(a4 + 8) == 255)
  {
    v25 = v51;
    v26 = v52;
    *a6 = 0;
    *(a6 + 8) = 100;
    *(a6 + 16) = re::AssetErrorCategory(void)::instance;
    *(a6 + 24) = v25;
    *(a6 + 40) = v26;
    return result;
  }

  v12 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet((a1 + 17), a2);
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = a2;
  }

  re::DynamicString::DynamicString(&v40, v13);
  re::GeomModelDescriptor::validateIfCoreAttribute(&v40, a3, *(a4 + 8), v35);
  if (v35[0] == 1)
  {
    v32 = 4;
    v33 = 0;
    v34 = 0;
    CFDataPayload = re::DynamicString::operator=(&v30, &v40);
    v32 = a3;
    if (*a4)
    {
      if (*(a4 + 32))
      {
        CFDataPayload = re::GeomModelDescriptor::makeCFDataPayload(&v51, a4);
        v16 = v33;
        v33 = v51;
        if (v16)
        {
        }

        if (!a5)
        {
LABEL_16:
          v18 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet((a1 + 6), &v40);
          if (v18)
          {
            v19 = *v18;
            v20 = a1[14];
            if (v20 <= *v18)
            {
              v42 = 0;
              v54 = 0u;
              v55 = 0u;
              v52 = 0u;
              v53 = 0u;
              v51 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v43 = 136315906;
              v44 = "operator[]";
              v45 = 1024;
              v46 = 789;
              v47 = 2048;
              v48 = v19;
              v49 = 2048;
              v50 = v20;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }

            v21 = re::DynamicString::operator=((a1[16] + 56 * v19), &v30);
            *(v21 + 32) = v32;
            v22 = *(v21 + 5);
            *(v21 + 5) = v33;
            v33 = v22;
            v23 = *(v21 + 6);
            *(v21 + 6) = v34;
            v34 = v23;
          }

          else
          {
            *&v51 = a1[14];
            re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add((a1 + 6), &v40, &v51);
            re::DynamicArray<re::GeomModelDescriptor::AttributeData>::add((a1 + 12), &v30);
          }

          *a6 = 1;
LABEL_27:
          if (v34)
          {

            v34 = 0;
          }

          if (v33)
          {

            v33 = 0;
          }

          if (v30 && (v31 & 1) != 0)
          {
            (*(*v30 + 40))();
          }

          if (v35[0])
          {
            goto LABEL_38;
          }

          goto LABEL_35;
        }

        if (!*a5)
        {
          v27 = "Null indices value buffer.";
          goto LABEL_24;
        }

        if (*(a5 + 32))
        {
          re::GeomModelDescriptor::validateIndexType(CFDataPayload, *(a5 + 8), a6);
          if (*a6 != 1)
          {
            goto LABEL_27;
          }

          re::GeomModelDescriptor::makeCFDataPayload(&v51, a5);
          v17 = v34;
          v34 = v51;
          if (v17)
          {
          }

          goto LABEL_16;
        }
      }

      v27 = "Zero stride provided.";
    }

    else
    {
      v27 = "Null values buffer.";
    }

LABEL_24:
    v28 = v51;
    v29 = v52;
    *a6 = 0;
    *(a6 + 8) = 100;
    *(a6 + 16) = re::AssetErrorCategory(void)::instance;
    *(a6 + 24) = v28;
    *(a6 + 40) = v29;
    goto LABEL_27;
  }

  *a6 = v35[0];
  *(a6 + 8) = v36;
  *(a6 + 24) = v37;
  *(a6 + 48) = v39;
  *(a6 + 32) = v38;
  v39 = 0;
  v37 = 0;
  v38 = 0uLL;
LABEL_35:
  if (v37 && (v38 & 1) != 0)
  {
    (*(*v37 + 40))();
  }

LABEL_38:
  result = v40;
  if (v40)
  {
    if (v41)
    {
      return (*(*v40 + 40))();
    }
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(uint64_t a1, const re::DynamicString *a2, void *a3)
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

  v7 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v11, v10);
  re::DynamicString::DynamicString((v7 + 8), a2);
  *(v7 + 40) = *a3;
  v8 = v7 + 40;
  ++*(a1 + 40);
  return v8;
}

double re::DynamicArray<re::GeomModelDescriptor::AttributeData>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::GeomModelDescriptor::AttributeData>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 56 * v4;
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
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(v5 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

__n128 re::GeomModelDescriptor::addAttributeAlias@<Q0>(re::GeomModelDescriptor *this@<X0>, const re::DynamicString *a2@<X1>, const re::DynamicString *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(this + 48, a2);
  if (v8)
  {
    v9 = v8;
    v10 = re::Hash<re::DynamicString>::operator()(&v19, a3);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(this + 48, a3, v10, &v19);
    if (v19.n128_u32[3] == 0x7FFFFFFF || (v11 = re::Hash<re::DynamicString>::operator()(&v19, a3), v12 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(this + 136, a3, v11, &v19), v19.n128_u32[3] != 0x7FFFFFFF))
    {
      if (*(a3 + 1))
      {
        v14 = *(a3 + 2);
      }

      else
      {
        v14 = a3 + 9;
      }

      v15 = strcmp(v14, "vertexPosition");
      if (v15)
      {
        v15 = strcmp(v14, "vertexUV");
        if (v15)
        {
          v15 = strcmp(v14, "vertexNormal");
          if (v15)
          {
            v15 = strcmp(v14, "vertexTangent");
            if (v15)
            {
              v15 = strcmp(v14, "vertexBitangent");
              if (v15)
              {
                v15 = strcmp(v14, "vertexColor");
                if (v15)
                {
                  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(this + 136, a3, a2);
                  v19.n128_u64[0] = *v9;
                  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(this + 48, a3, &v19);
                  *a4 = 1;
                  return result;
                }
              }
            }
          }
        }
      }

      v13 = "Alias with core attribute name";
    }

    else
    {
      v13 = "Alias with same name as existing attribute";
    }
  }

  else
  {
    v13 = "Alias for missing attribute";
  }

  result = v19;
  v17 = v20;
  v18 = v21;
  *a4 = 0;
  *(a4 + 8) = 100;
  *(a4 + 16) = re::AssetErrorCategory(void)::instance;
  *(a4 + 24) = result;
  *(a4 + 40) = v17;
  *(a4 + 48) = v18;
  return result;
}

uint64_t re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(uint64_t a1, const re::DynamicString *a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v13, a2);
  result = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v10);
  v8 = HIDWORD(v11);
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    v9 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v11, v10);
    result = re::DynamicString::DynamicString((v9 + 8), a2);
    *(v9 + 40) = *a3;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    *(*(a1 + 16) + 56 * v8 + 40) = *a3;
  }

  return result;
}

uint64_t re::GeomModelDescriptor::removeAttributeAlias@<X0>(re::GeomModelDescriptor *this@<X0>, const re::DynamicString *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = re::Hash<re::DynamicString>::operator()(v8, a2);
  result = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(this + 136, a2, v6, v8);
  if (v9 != 0x7FFFFFFF)
  {
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(this + 136, a2);
    result = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(this + 48, a2);
  }

  *a3 = 1;
  return result;
}

__n128 re::GeomModelDescriptor::setMaterialAssignmentsPerFace@<Q0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v14[0] = a2;
  v14[1] = a3;
  if (a3)
  {
    re::GeomModelDescriptor::makeSlicePayload<unsigned int>(v14, &v11);
    v7 = v11.n128_u64[0];
    v11.n128_u64[0] = 0;
    v8 = *(a1 + 1);
    *(a1 + 1) = v7;
    if (v8)
    {

      if (v11.n128_u64[0])
      {
      }
    }

    *a4 = 1;
  }

  else
  {
    result = v11;
    v9 = v12;
    v10 = v13;
    *a4 = 0;
    *(a4 + 8) = 100;
    *(a4 + 16) = re::AssetErrorCategory(void)::instance;
    *(a4 + 24) = result;
    *(a4 + 40) = v9;
    *(a4 + 48) = v10;
  }

  return result;
}

uint64_t re::GeomModelDescriptor::makeSlicePayload<unsigned int>@<X0>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = re::globalAllocators(a1);
  v6 = *(a1 + 1);
  if (!v6)
  {
    v9 = 0;
    v8 = 0;
    goto LABEL_6;
  }

  if (!(v6 >> 62) && 4 * v6 < 0xFFFFFFFFFFFFFFF0)
  {
    v7 = (*(*v4[2] + 32))(v4[2], (4 * v6 + 16) | 3, 0);
    v8 = ((v7 + 19) & 0xFFFFFFFFFFFFFFFCLL);
    *(v8 - 2) = v6;
    *(v8 - 1) = v7;
    bzero(v8, 4 * v6);
    v9 = 4 * *(a1 + 1);
LABEL_6:
    v16 = v8;
    memcpy(v8, *a1, v9);
    v10 = *(a1 + 1);
    v14 = 4;
    v15 = v10;
    v13 = 0;
    v12 = 1;
    return re::make::shared::object<re::internal::DataPayload,unsigned char *&,re::GeomModelValueType const&,unsigned long,unsigned long,int,BOOL,unsigned char *&,void (&)(void const*)>(&v16, re::ConvertToGeomModelValueType<unsigned int>::kValueType, &v15, &v14, &v13, &v12, &v16, re::GeomModelDescriptor::freeReNewedArrayData<unsigned int>, a2);
  }

  re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) Size overflow in allocateArray. Element size = %zu, count = %zu", "!overflow", "allocateArray", 61, 4, v6);
  result = _os_crash();
  __break(1u);
  return result;
}

unint64_t *re::GeomModelDescriptor::deleteAttribute@<X0>(re::GeomModelDescriptor *this@<X0>, const re::DynamicString *a2@<X1>, _BYTE *a3@<X8>)
{
  v59 = *MEMORY[0x1E69E9840];
  result = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(this + 48, a2);
  if (!result)
  {
    *a3 = 1;
    return result;
  }

  v7 = result;
  v8 = &v54;
  v9 = *result;
  v10 = *(this + 14);
  if (v10 <= *result)
  {
LABEL_68:
    v43 = 0;
    v8[3] = 0u;
    v8[4] = 0u;
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v46 = 136315906;
    v47 = "operator[]";
    v48 = 1024;
    v49 = 789;
    v50 = 2048;
    v51 = v9;
    v52 = 2048;
    v53 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_69;
  }

  v41 = a3;
  re::DynamicString::DynamicString(&v43, (*(this + 16) + 56 * v9));
  v42 = *(this + 14);
  v9 = v42 - 1;
  v3 = *v7;
  if (v42 - 1 != *v7)
  {
    v10 = *(this + 14);
    if (!v42)
    {
LABEL_69:
      v45 = 0;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v54 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v46 = 136315906;
      v47 = "operator[]";
      v48 = 1024;
      v49 = 789;
      v50 = 2048;
      v51 = v9;
      v52 = 2048;
      v53 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_70;
    }

    if (v42 <= v3)
    {
LABEL_70:
      v45 = 0;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v54 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v46 = 136315906;
      v47 = "operator[]";
      v48 = 1024;
      v49 = 789;
      v50 = 2048;
      v51 = v3;
      v52 = 2048;
      v53 = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_71:
      v45 = 0;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v54 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v46 = 136315906;
      v47 = "operator[]";
      v48 = 1024;
      v49 = 789;
      v50 = 2048;
      v51 = v10;
      v52 = 2048;
      v53 = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v11 = *(this + 16);
    v12 = v11 + 56 * v9;
    v13 = v11 + 56 * v3;
    re::DynamicString::operator=(v13, v12);
    *(v13 + 32) = *(v12 + 32);
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v13 + 40), *(v12 + 40));
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v13 + 48), *(v12 + 48));
    v10 = *v7;
    v3 = *(this + 14);
    if (v3 <= *v7)
    {
      goto LABEL_71;
    }

    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(this + 48, (*(this + 16) + 56 * v10), v7);
    v10 = *(this + 42);
    if (v10)
    {
      v3 = 0;
      v14 = *(this + 19);
      while (1)
      {
        v15 = *v14;
        v14 += 20;
        if (v15 < 0)
        {
          break;
        }

        if (v10 == ++v3)
        {
          v3 = *(this + 42);
          break;
        }
      }
    }

    else
    {
      v3 = 0;
    }

    if (v3 != v10)
    {
      v16 = *(this + 42);
      while (1)
      {
        v17 = *v7;
        v18 = *(this + 14);
        if (v18 <= *v7)
        {
          break;
        }

        v19 = *(this + 19);
        if (re::DynamicString::operator==(v19 + 80 * v3 + 40, *(this + 16) + 56 * v17))
        {
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(this + 48, (v19 + 80 * v3 + 8), v7);
          v16 = *(this + 42);
        }

        if (v16 <= v3 + 1)
        {
          v20 = (v3 + 1);
        }

        else
        {
          v20 = v16;
        }

        while (v20 - 1 != v3)
        {
          v3 = (v3 + 1);
          if ((*(*(this + 19) + 80 * v3) & 0x80000000) != 0)
          {
            goto LABEL_26;
          }
        }

        v3 = v20;
LABEL_26:
        if (v3 == v10)
        {
          goto LABEL_27;
        }
      }

      v45 = 0;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v54 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v46 = 136315906;
      v47 = "operator[]";
      v48 = 1024;
      v49 = 789;
      v50 = 2048;
      v51 = v17;
      v52 = 2048;
      v53 = v18;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_68;
    }
  }

LABEL_27:
  v21 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(this + 48, &v43);
  v22 = *(this + 14);
  if (v22 < v9)
  {
    if (*(this + 13) < v9)
    {
      v21 = re::DynamicArray<re::GeomModelDescriptor::AttributeData>::setCapacity(this + 12, v9);
      v22 = *(this + 14);
    }

    if (v22 < v9)
    {
      v23 = ~v22 + v42;
      v24 = 56 * v22;
      do
      {
        v25 = *(this + 16) + v24;
        *(v25 + 32) = 4;
        v24 += 56;
        *(v25 + 40) = 0;
        *(v25 + 48) = 0;
        --v23;
      }

      while (v23);
    }

LABEL_41:
    *(this + 14) = v9;
    ++*(this + 30);
    goto LABEL_42;
  }

  if (v22 > v9)
  {
    v26 = 56 * v42;
    v27 = v42 - 1;
    do
    {
      v28 = *(this + 16) + v26;
      v29 = *(v28 - 8);
      if (v29)
      {

        *(v28 - 8) = 0;
      }

      v30 = *(v28 - 16);
      if (v30)
      {

        *(v28 - 16) = 0;
      }

      re::DynamicString::deinit((v28 - 56));
      ++v27;
      v26 += 56;
    }

    while (v27 < *(this + 14));
    goto LABEL_41;
  }

LABEL_42:
  *&v56 = 0;
  *&v55 = 0;
  v54 = 0uLL;
  DWORD2(v55) = 0;
  v31 = *(this + 42);
  if (v31)
  {
    v32 = 0;
    v33 = *(this + 19);
    v34 = v41;
    while (1)
    {
      v35 = *v33;
      v33 += 20;
      if (v35 < 0)
      {
        break;
      }

      if (v31 == ++v32)
      {
        LODWORD(v32) = *(this + 42);
        break;
      }
    }
  }

  else
  {
    LODWORD(v32) = 0;
    v34 = v41;
  }

  if (v32 != v31)
  {
    v36 = *(this + 42);
    do
    {
      v37 = *(this + 19);
      if (re::DynamicString::operator==(v37 + 80 * v32 + 40, &v43))
      {
        re::DynamicArray<re::DynamicString>::add(&v54, (v37 + 80 * v32 + 8));
        v36 = *(this + 42);
      }

      if (v36 <= v32 + 1)
      {
        v38 = v32 + 1;
      }

      else
      {
        v38 = v36;
      }

      while (v38 - 1 != v32)
      {
        LODWORD(v32) = v32 + 1;
        if ((*(*(this + 19) + 80 * v32) & 0x80000000) != 0)
        {
          goto LABEL_59;
        }
      }

      LODWORD(v32) = v38;
LABEL_59:
      ;
    }

    while (v32 != v31);
    if (v55)
    {
      v39 = v56;
      v40 = 32 * v55;
      do
      {
        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(this + 136, v39);
        re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(this + 48, v39);
        v39 += 32;
        v40 -= 32;
      }

      while (v40);
    }
  }

  *v34 = 1;
  re::DynamicArray<re::DynamicString>::deinit(&v54);
  result = v43;
  if (v43)
  {
    if (v44)
    {
      return (*(*v43 + 40))();
    }
  }

  return result;
}

uint64_t re::GeomModelDescriptor::emptyAttribute(re::GeomModelDescriptor *this)
{
  v1 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v1 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v3)
    {
      operator new();
    }
  }

  return *(v1 + 413);
}

re::DynamicString *re::GeomModelDescriptor::AttributeData::AttributeData(re::GeomModelDescriptor::AttributeData *this)
{
  *(this + 32) = 4;
  *(this + 5) = 0;
  *(this + 6) = 0;
  return result;
}

uint64_t std::__function::__func<void (*)(void const*),std::allocator<void (*)(void const*)>,void ()(void const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D0BD20;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void (*)(void const*),std::allocator<void (*)(void const*)>,void ()(void const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(void const*)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *re::DynamicArray<re::GeomModelDescriptor::AttributeData>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::GeomModelDescriptor::AttributeData>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::GeomModelDescriptor::AttributeData>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::GeomModelDescriptor::AttributeData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::GeomModelDescriptor::AttributeData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x38uLL))
        {
          v2 = 56 * a2;
          result = (*(*result + 32))(result, 56 * a2, 8);
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

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 56, a2);
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
        v10 = 56 * v9;
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
          *(v11 + 32) = *(v8 + 32);
          v11[5] = *(v8 + 40);
          *(v8 + 40) = 0;
          v11[6] = *(v8 + 48);
          *(v8 + 48) = 0;
          v16 = *(v8 + 40);
          if (v16)
          {

            *(v8 + 40) = 0;
          }

          re::DynamicString::deinit(v8);
          v8 += 56;
          v11 += 7;
          v10 -= 56;
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

uint64_t *re::GeomModelDescriptor::freeReNewedArrayData<unsigned int>(re *a1)
{
  result = re::globalAllocators(a1);
  if (a1)
  {
    v3 = *(*result[2] + 40);

    return v3();
  }

  return result;
}

uint64_t re::make::shared::object<re::internal::DataPayload,unsigned char *&,re::GeomModelValueType const&,unsigned long,unsigned long,int,BOOL,unsigned char *&,void (&)(void const*)>@<X0>(re *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, int *a5@<X4>, char *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v18 = re::globalAllocators(a1);
  v19 = (*(*v18[2] + 32))(v18[2], 104, 8);
  result = re::internal::DataPayload::DataPayload(v19, *a1, *a2, *a3, *a4, *a5, *a6, *a7, a8);
  *a9 = result;
  return result;
}

void re::internal::createGeomMeshFromMDLSubmesh(re::internal *this@<X0>, MDLMesh *a2@<X1>, uint64_t a3@<X8>)
{
  v100 = *MEMORY[0x1E69E9840];
  v7 = this;
  v8 = a2;
  v62 = a3;
  re::GeomMesh::GeomMesh(a3, 0);
  v73 = 0;
  v70[1] = 0;
  v71 = 0;
  v70[0] = 0;
  v72 = 0;
  v10 = v71;
  if (!v71)
  {
LABEL_54:
    re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) ", "topologies.size() > 0", "createGeomMeshFromMDLSubmesh", 655, v58);
    _os_crash();
    __break(1u);
    goto LABEL_55;
  }

  v4 = v88;
  v59 = [(re::internal *)v7 vertexDescriptor];
  v11 = [v59 attributeNamed:@"position"];
  v12 = [v11 bufferIndex];
  a3 = [(MDLMesh *)v8 faceIndexing];

  v58 = v11;
  if (a3)
  {
    v13 = [(MDLMesh *)v8 faceIndexing];
    v14 = [v13 objectAtIndexedSubscript:v12];
    v15 = [v14 unsignedIntValue];

    a3 = v15;
    if (v10 <= v15)
    {
LABEL_55:
      *v88 = 0;
      memset(v79, 0, 32);
      v77 = 0u;
      v78 = 0u;
      *v76 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v95) = 136315906;
      *(v4 + 52) = "operator[]";
      WORD6(v95) = 1024;
      *(v4 + 62) = 789;
      WORD1(v96) = 2048;
      *(v4 + 68) = a3;
      WORD6(v96) = 2048;
      *(v4 + 78) = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

  v16 = v73 + 80 * a3;
  v17 = *(v16 + 16);
  v63 = v16;
  v18 = *(v16 + 56);
  v10 = v18;
  a3 = v76;
  re::GeomMeshBuilder::GeomMeshBuilder(v76, v62);
  LODWORD(v76[1]) = v17;
  v80 = v17;
  if (v81)
  {
    v19 = v82;
    v20 = 8 * v81;
    do
    {
      v21 = *v19++;
      (*(*v21 + 80))(v21, v80);
      v20 -= 8;
    }

    while (v20);
  }

  if (v78 > v18)
  {
    v22 = v87;
    if (v87)
    {
      v23 = 0;
      do
      {
        v24 = re::internal::GeomAttributeContainer::attributeByIndex(v86, v23);
        re::internal::accessFaceVaryingAttributeSubmesh(v24, v25);
        ++v23;
      }

      while (v22 != v23);
    }
  }

  re::DynamicArray<re::GeomCell4>::resize(&v77, v18);
  v83 = v18;
  if (v84)
  {
    v26 = v85;
    v27 = 8 * v84;
    do
    {
      v28 = *v26++;
      (*(*v28 + 80))(v28, v83);
      v27 -= 8;
    }

    while (v27);
  }

  v29 = v63;
  if (v18)
  {
    v30 = 0;
    while (1)
    {
      v31 = *(v29 + 56);
      if (v31 <= v30)
      {
        break;
      }

      v31 = v78;
      if (v78 <= v30)
      {
        goto LABEL_52;
      }

      v32 = *(*(v29 + 72) + 16 * v30);
      v33 = (*&v79[0] + 16 * v30);
      v34 = *v33;
      v35 = v33[3];
      if (v34 != -1 && v35 != -1)
      {
        v37 = v87;
        if (v87)
        {
          v64 = *(*(v29 + 72) + 16 * v30);
          v38 = 0;
          do
          {
            v39 = re::internal::GeomAttributeContainer::attributeByIndex(v86, v38);
            re::internal::accessFaceVaryingAttributeSubmesh(v39, v40);
            ++v38;
          }

          while (v37 != v38);
          v31 = v78;
          v29 = v63;
          v32 = v64;
        }
      }

      if (v31 <= v30)
      {
        goto LABEL_53;
      }

      *(*&v79[0] + 16 * v30++) = v32;
      if (v30 == v10)
      {
        goto LABEL_28;
      }
    }

    v74 = 0;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v95 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v88 = 136315906;
    *&v88[4] = "operator[]";
    v89 = 1024;
    v90 = 797;
    v91 = 2048;
    v92 = v30;
    v93 = 2048;
    v94 = v31;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_52:
    v74 = 0;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v95 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v88 = 136315906;
    *&v88[4] = "operator[]";
    v89 = 1024;
    v90 = 797;
    v91 = 2048;
    v92 = v30;
    v93 = 2048;
    v94 = v31;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_53:
    v74 = 0;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v95 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v88 = 136315906;
    *&v88[4] = "operator[]";
    v89 = 1024;
    v90 = 789;
    v91 = 2048;
    v92 = v30;
    v93 = 2048;
    v94 = v31;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_54;
  }

LABEL_28:
  v41 = re::GeomMesh::operator=(v62, &v76[1]);
  re::GeomMesh::setName(v41, v76[0]);
  re::GeomMesh::freeName(v76);
  re::GeomMesh::freeName(v76);
  re::internal::GeomAttributeManager::~GeomAttributeManager((v79 + 8));
  if (v77 && *&v79[0])
  {
    (*(*v77 + 40))();
  }

  v42 = *MEMORY[0x1E6974B28];
  {
    *&v95 = re::GeomMesh::modifyVertexPositions(v62);
    DWORD2(v95) = v43;
  }

  v45 = *MEMORY[0x1E6974B18];
  v46 = v29;
  v47 = v7;
  v48 = *MEMORY[0x1E6974B30];
  v49 = v8;
  v50 = *MEMORY[0x1E6974AF0];
  v65 = *MEMORY[0x1E6974B38];
  v60 = v49;
  v61 = v47;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v51 = [v59 attributes];
  v52 = [v51 countByEnumeratingWithState:&v66 objects:v75 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v67;
    while (2)
    {
      for (i = 0; i != v53; ++i)
      {
        if (*v67 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = *(*(&v66 + 1) + 8 * i);
        v57 = [v56 name];
        if (([v57 isEqualToString:v42] & 1) == 0 && (objc_msgSend(v57, "isEqualToString:", v45) & 1) == 0 && (objc_msgSend(v57, "isEqualToString:", v48) & 1) == 0 && (objc_msgSend(v57, "isEqualToString:", v50) & 1) == 0 && (objc_msgSend(v57, "isEqualToString:", v65) & 1) == 0)
        {
          if (!*[v57 UTF8String])
          {

            goto LABEL_50;
          }

          if (([v56 format] - 786437) >= 0xFFFFFFFFFFFFFFFDLL)
          {
          }
        }
      }

      v53 = [v51 countByEnumeratingWithState:&v66 objects:v75 count:16];
      if (v53)
      {
        continue;
      }

      break;
    }
  }

LABEL_50:
}

void re::internal::anonymous namespace::extractMDLAttributeTopologies(void *a1, uint64_t a2)
{
  v199 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = *(a2 + 16);
  *(a2 + 16) = 0;
  if (v5)
  {
    v6 = *(a2 + 32);
    v7 = 80 * v5;
    do
    {
      re::DynamicArray<unsigned long>::deinit(v6 + 40);
      re::DynamicArray<unsigned long>::deinit(v6);
      v6 += 80;
      v7 -= 80;
    }

    while (v7);
  }

  v168 = a2;
  ++*(a2 + 24);
  if (!v4)
  {
    goto LABEL_182;
  }

  v8 = [v4 indexBuffer];
  v9 = [v8 map];

  if (!v9)
  {
    goto LABEL_182;
  }

  v10 = [v4 indexBuffer];
  v11 = [v10 map];
  v12 = [v11 bytes];

  if (!v12)
  {
    goto LABEL_182;
  }

  v13 = [v4 geometryType];
  v14 = [v4 indexBuffer];
  v15 = [v14 length];
  [v4 indexBuffer];
  v17 = v16 = v4;
  v18 = [v17 map];
  v19 = [v18 bytes];
  v169 = v16;
  v20 = [v16 indexType];
  v22 = v20;
  v179 = v19;
  v180 = v20;
  if (v20 != 8)
  {
    if (v20 == 32)
    {
      v15 >>= 2;
    }

    else
    {
      if (v20 != 16)
      {
        goto LABEL_208;
      }

      v15 >>= 1;
    }
  }

  v178 = v15;

  v4 = v16;
  if (v13 != 2)
  {
    if (v13 == 5)
    {
      v44 = v16;
      v45 = [v44 topology];
      v46 = [v45 faceTopology];
      v163 = [v46 length];
      v158 = v46;
      v47 = [v46 map];
      v165 = [v47 bytes];

      v48 = [v44 faceIndexing];
      v159 = v45;
      v164 = [v45 faceCount];
      v157 = v48;
      v49 = [v48 count];
      v50 = v49;
      if (v49)
      {
        v51 = 0;
        v52 = 0;
        do
        {
          v53 = [v44 faceIndexing];
          v54 = [v53 objectAtIndexedSubscript:v52];
          v55 = [v54 intValue];

          if (v55 > v51)
          {
            v56 = [v44 faceIndexing];
            v57 = [v56 objectAtIndexedSubscript:v52];
            v51 = [v57 intValue];
          }

          ++v52;
        }

        while (v50 != v52);
        v28 = v51 + 1;
        v4 = v169;
      }

      else
      {
        v28 = 1;
      }

      v160 = v44;
      v162 = [v44 indexCount] / v28;
      v81 = v168;
      v82 = 0;
      v83 = v163;
      v167 = 0;
      if (v28 <= 1)
      {
        v84 = 1;
      }

      else
      {
        v84 = v28;
      }

      v161 = v84;
      v85 = v165;
      while (1)
      {
        v24 = *(v81 + 16);
        if (v24 <= v82)
        {
          goto LABEL_203;
        }

        v24 = *(v81 + 32) + 80 * v82;
        memset(v187, 0, 36);
        *&v187[36] = 0x7FFFFFFFLL;
        v170 = v82;
        v173 = v24;
        re::DynamicArray<re::GeomCell4>::resize((v24 + 40), v164);
        if (!v164)
        {
          goto LABEL_160;
        }

        v87 = 0;
        v88 = 0;
        do
        {
          if (v87 == v83)
          {
            goto LABEL_195;
          }

          v89 = *(v85 + v87);
          if (v89 <= 2)
          {
            v138 = *(v168 + 16);
            *(v168 + 16) = 0;
            if (v138)
            {
              v139 = *(v168 + 32);
              v140 = 80 * v138;
              do
              {
                re::DynamicArray<unsigned long>::deinit(v139 + 40);
                re::DynamicArray<unsigned long>::deinit(v139);
                v139 += 80;
                v140 -= 80;
              }

              while (v140);
            }

            goto LABEL_179;
          }

          v90 = (v170 + v88 * v28);
          v13 = v178;
          if (v178 <= v90)
          {
            goto LABEL_196;
          }

          v24 = v180;
          switch(v180)
          {
            case 0x20uLL:
              v91 = v179;
              v92 = *(v179 + 4 * v90);
              break;
            case 0x10uLL:
              v91 = v179;
              v92 = *(v179 + 2 * v90);
              break;
            case 8uLL:
              v91 = v179;
              v92 = *(v179 + v90);
              break;
            default:
              goto LABEL_207;
          }

          v185 = v92;
          v93 = (v28 + v28 * v88 + v170);
          if (v178 <= v93)
          {
            goto LABEL_197;
          }

          if (v180 == 32)
          {
            v2 = v87;
            v94 = *(v91 + 4 * v93);
          }

          else
          {
            v2 = v87;
            if (v180 == 16)
            {
              v94 = *(v91 + 2 * v93);
            }

            else
            {
              v94 = *(v91 + v93);
            }
          }

          v184 = v94;
          v87 = (v88 + 2);
          v95 = (v170 + v87 * v28);
          if (v178 <= v95)
          {
            goto LABEL_198;
          }

          v171 = v88;
          v172 = v89;
          v174 = v91;
          if (v180 == 32)
          {
            v96 = *(v91 + 4 * v95);
          }

          else if (v180 == 16)
          {
            v96 = *(v91 + 2 * v95);
          }

          else
          {
            v96 = *(v91 + v95);
          }

          v183 = v96;
          v97 = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(v187, &v185);
          v98 = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(v187, &v184);
          v99 = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(v187, &v183);
          v177 = v97;
          if (!v97 || !v98 || (v100 = v99) == 0)
          {
            v141 = *(v168 + 16);
            *(v168 + 16) = 0;
            if (v141)
            {
              v142 = *(v168 + 32);
              v143 = 80 * v141;
              do
              {
                re::DynamicArray<unsigned long>::deinit(v142 + 40);
                re::DynamicArray<unsigned long>::deinit(v142);
                v142 += 80;
                v143 -= 80;
              }

              while (v143);
            }

            v144 = v168;
            goto LABEL_175;
          }

          v101 = v172;
          if (v172 == 4)
          {
            v106 = (v170 + (v171 + 3) * v28);
            if (v13 > v106)
            {
              if (v24 == 32)
              {
                v107 = *(v174 + 4 * v106);
                v87 = v2;
              }

              else
              {
                v87 = v2;
                if (v24 == 16)
                {
                  v107 = *(v174 + 2 * v106);
                }

                else
                {
                  v107 = *(v174 + v106);
                }
              }

              v182 = v107;
              v127 = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(v187, &v182);
              if (v127)
              {
                v24 = v173[7];
                if (v24 > v87)
                {
                  v128 = (v173[9] + 16 * v87);
                  v129 = *v98;
                  v130 = *v100;
                  v131 = *v127;
                  *v128 = *v97;
                  v128[1] = v129;
                  v128[2] = v130;
                  v128[3] = v131;
                  v4 = v169;
                  v105 = v171;
                  v101 = v172;
                  goto LABEL_159;
                }

LABEL_202:
                v186 = 0;
                v148 = v87;
                v82 = v188;
                v197 = 0u;
                v198 = 0u;
                v196 = 0u;
                memset(buf, 0, sizeof(buf));
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v188 = 136315906;
                *&v188[4] = "operator[]";
                v189 = 1024;
                v190 = 789;
                v191 = 2048;
                v192 = v148;
                v193 = 2048;
                v194 = v24;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_203:
                *v188 = 0;
                v197 = 0u;
                v198 = 0u;
                v196 = 0u;
                memset(buf, 0, sizeof(buf));
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v187 = 136315906;
                *&v187[4] = "operator[]";
                *&v187[12] = 1024;
                *&v187[14] = 789;
                *&v187[18] = 2048;
                *&v187[20] = v82;
                *&v187[28] = 2048;
                *&v187[30] = v24;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_204:
                *v188 = 0;
                v197 = 0u;
                v198 = 0u;
                v196 = 0u;
                memset(buf, 0, sizeof(buf));
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v187 = 136315906;
                *&v187[4] = "operator[]";
                *&v187[12] = 1024;
                *&v187[14] = 789;
                *&v187[18] = 2048;
                *&v187[20] = 0;
                *&v187[28] = 2048;
                *&v187[30] = 0;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
              }

              v144 = v168;
              v145 = *(v168 + 16);
              *(v168 + 16) = 0;
              if (!v145)
              {
LABEL_175:
                ++*(v144 + 24);
                v4 = v169;
                goto LABEL_180;
              }

              v146 = *(v168 + 32);
              v147 = 80 * v145;
              v4 = v169;
              do
              {
                re::DynamicArray<unsigned long>::deinit(v146 + 40);
                re::DynamicArray<unsigned long>::deinit(v146);
                v146 += 80;
                v147 -= 80;
              }

              while (v147);
LABEL_179:
              ++*(v168 + 24);
              goto LABEL_180;
            }

LABEL_201:
            re::internal::assertLog(4, v86, "assertion failure: '%s' (%s:line %i) ", "index < m_max_index", "operator[]", 79);
            _os_crash();
            __break(1u);
            goto LABEL_202;
          }

          if (v172 == 3)
          {
            v24 = v173[7];
            v87 = v2;
            if (v24 > v2)
            {
              v102 = (v173[9] + 16 * v2);
              v103 = *v98;
              v104 = *v99;
              *v102 = *v97;
              v102[1] = v103;
              v105 = v171;
              v102[2] = v104;
              v102[3] = -1;
              v4 = v169;
              goto LABEL_159;
            }

LABEL_199:
            v186 = 0;
            v108 = v87;
            v87 = v188;
            v197 = 0u;
            v198 = 0u;
            v196 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v188 = 136315906;
            *&v188[4] = "operator[]";
            v189 = 1024;
            v190 = 789;
            v191 = 2048;
            v192 = v108;
            v193 = 2048;
            v194 = v24;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_200:
            v186 = 0;
            v24 = v188;
            v197 = 0u;
            v198 = 0u;
            v196 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v188 = 136315906;
            *&v188[4] = "operator[]";
            v189 = 1024;
            v190 = 789;
            v191 = 2048;
            v192 = v2;
            v193 = 2048;
            v194 = v108;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_201;
          }

          v108 = v173[7];
          if (v108 <= v2)
          {
            goto LABEL_200;
          }

          v166 = v2;
          v109 = (v173[9] + 16 * v2);
          v110 = *v98;
          v111 = *v99;
          *v109 = *v97;
          v109[1] = v110;
          v109[2] = v111;
          v109[3] = -1;
          v112 = v172 + v108 - 3;
          re::DynamicArray<re::GeomCell4>::resize(v173 + 5, v112);
          if (v112 <= v108)
          {
            v126 = v167;
            if (v167 <= v172)
            {
              v126 = v172;
            }

            LODWORD(v167) = v126;
            v4 = v169;
            v85 = v165;
            v87 = v2;
            v101 = v172;
            goto LABEL_158;
          }

          v113 = 0;
          v108 = v108;
          v114 = 16 * v108;
          v115 = v170 + v28 * v87;
          v116 = v170 + v28 * (v171 + 3);
          while (1)
          {
            if (v13 <= v115)
            {
              re::internal::assertLog(4, v86, "assertion failure: '%s' (%s:line %i) ", "index < m_max_index", "operator[]", 79);
              _os_crash();
              __break(1u);
LABEL_184:
              re::internal::assertLog(4, v86, "assertion failure: '%s' (%s:line %i) ", "index < m_max_index", "operator[]", 79);
              _os_crash();
              __break(1u);
LABEL_185:
              v186 = 0;
              v197 = 0u;
              v198 = 0u;
              v196 = 0u;
              memset(buf, 0, sizeof(buf));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v188 = 136315906;
              *&v188[4] = "operator[]";
              v189 = 1024;
              v190 = 789;
              v191 = 2048;
              v192 = v108;
              v193 = 2048;
              v194 = v113;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_186:
              re::internal::assertLog(4, v27, "assertion failure: '%s' (%s:line %i) ", "index < m_max_index", "operator[]", 79);
              _os_crash();
              __break(1u);
LABEL_187:
              re::internal::assertLog(4, v34, "assertion failure: '%s' (%s:line %i) ", "index < m_max_index", "operator[]", 79);
              _os_crash();
              __break(1u);
LABEL_188:
              re::internal::assertLog(4, v38, "assertion failure: '%s' (%s:line %i) ", "index < m_max_index", "operator[]", 79);
              _os_crash();
              __break(1u);
LABEL_189:
              v186 = 0;
              v24 = v188;
              v197 = 0u;
              v198 = 0u;
              v196 = 0u;
              memset(buf, 0, sizeof(buf));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v188 = 136315906;
              *&v188[4] = "operator[]";
              v189 = 1024;
              v190 = 789;
              v191 = 2048;
              v192 = v28;
              v193 = 2048;
              v194 = v13;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_190:
              re::internal::assertLog(4, v58, "assertion failure: '%s' (%s:line %i) ", "index < m_max_index", "operator[]", 79);
              _os_crash();
              __break(1u);
LABEL_191:
              re::internal::assertLog(4, v64, "assertion failure: '%s' (%s:line %i) ", "index < m_max_index", "operator[]", 79);
              _os_crash();
              __break(1u);
LABEL_192:
              re::internal::assertLog(4, v69, "assertion failure: '%s' (%s:line %i) ", "index < m_max_index", "operator[]", 79);
              _os_crash();
              __break(1u);
LABEL_193:
              re::internal::assertLog(4, v73, "assertion failure: '%s' (%s:line %i) ", "index < m_max_index", "operator[]", 79);
              _os_crash();
              __break(1u);
LABEL_194:
              v186 = 0;
              v87 = v188;
              v197 = 0u;
              v198 = 0u;
              v196 = 0u;
              memset(buf, 0, sizeof(buf));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v188 = 136315906;
              *&v188[4] = "operator[]";
              v189 = 1024;
              v190 = 789;
              v191 = 2048;
              v192 = v28;
              v193 = 2048;
              v194 = v24;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_195:
              re::internal::assertLog(4, v86, "assertion failure: '%s' (%s:line %i) ", "index < m_max_index", "operator[]", 79);
              _os_crash();
              __break(1u);
LABEL_196:
              re::internal::assertLog(4, v86, "assertion failure: '%s' (%s:line %i) ", "index < m_max_index", "operator[]", 79);
              _os_crash();
              __break(1u);
LABEL_197:
              re::internal::assertLog(4, v86, "assertion failure: '%s' (%s:line %i) ", "index < m_max_index", "operator[]", 79);
              _os_crash();
              __break(1u);
LABEL_198:
              re::internal::assertLog(4, v86, "assertion failure: '%s' (%s:line %i) ", "index < m_max_index", "operator[]", 79);
              _os_crash();
              __break(1u);
              goto LABEL_199;
            }

            v2 = v28;
            v28 = v115;
            if (v24 == 32)
            {
              v117 = v174;
              v118 = *(v174 + 4 * v115);
            }

            else
            {
              v117 = v174;
              if (v24 == 16)
              {
                v118 = *(v174 + 2 * v115);
              }

              else
              {
                v118 = *(v174 + v115);
              }
            }

            v182 = v118;
            if (v13 <= v116)
            {
              goto LABEL_184;
            }

            if (v24 == 32)
            {
              v119 = *(v117 + 4 * v116);
            }

            else
            {
              v119 = v24 == 16 ? *(v117 + 2 * v116) : *(v117 + v116);
            }

            v181 = v119;
            v120 = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(v187, &v182);
            v121 = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(v187, &v181);
            if (!v120 || !v121)
            {
              break;
            }

            v113 = v173[7];
            if (v113 <= v108)
            {
              goto LABEL_185;
            }

            v122 = (v173[9] + v114);
            v123 = *v120;
            v124 = *v121;
            *v122 = *v177;
            v122[1] = v123;
            v113 = ++v108 >= v112;
            v122[2] = v124;
            v122[3] = -1;
            v114 += 16;
            v115 = v28 + v2;
            v28 = v2;
            v116 += v2;
            if (v112 == v108)
            {
              v125 = v167;
              v101 = v172;
              if (v167 <= v172)
              {
                v125 = v172;
              }

              LODWORD(v167) = v125;
              v4 = v169;
              v83 = v163;
              v85 = v165;
              v87 = v166;
              goto LABEL_158;
            }
          }

          v132 = *(v168 + 16);
          *(v168 + 16) = 0;
          if (!v132)
          {
            ++*(v168 + 24);
            v134 = v167;
            v101 = v172;
            if (v167 <= v172)
            {
              v134 = v172;
            }

            v4 = v169;
            v85 = v165;
            v87 = v166;
            if (v113)
            {
              goto LABEL_157;
            }

LABEL_180:
            re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v187);
LABEL_181:

LABEL_182:
            return;
          }

          v133 = *(v168 + 32);
          v24 = 80 * v132;
          v4 = v169;
          v85 = v165;
          v87 = v166;
          do
          {
            re::DynamicArray<unsigned long>::deinit(v133 + 40);
            re::DynamicArray<unsigned long>::deinit(v133);
            v133 += 80;
            v24 -= 80;
          }

          while (v24);
          ++*(v168 + 24);
          v134 = v167;
          v101 = v172;
          if (v167 <= v172)
          {
            v134 = v172;
          }

          if ((v113 & 1) == 0)
          {
            goto LABEL_180;
          }

LABEL_157:
          LODWORD(v167) = v134;
          v83 = v163;
          v28 = v2;
LABEL_158:
          ++HIDWORD(v167);
          v105 = v171;
LABEL_159:
          v88 = v105 + v101;
          ++v87;
        }

        while (v87 != v164);
LABEL_160:
        re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v187);
        v82 = v170 + 1;
        v81 = v168;
        if (v170 + 1 == v161)
        {
          if (HIDWORD(v167))
          {
            v136 = *re::pipelineLogObjects(v135);
            if (os_log_type_enabled(v136, OS_LOG_TYPE_DEBUG))
            {
              *buf = 67109890;
              *&buf[8] = 2080;
              *&buf[4] = HIDWORD(v167) / v28;
              if (HIDWORD(v167) / v28 == 1)
              {
                v137 = "";
              }

              else
              {
                v137 = "s";
              }

              *&buf[10] = v137;
              *&buf[18] = 1024;
              *&buf[20] = v167;
              *&buf[24] = 1024;
              *&buf[26] = v164;
              _os_log_debug_impl(&dword_1E1C61000, v136, OS_LOG_TYPE_DEBUG, "Mesh contains %d polygon%s with edge count greater than 4 (max edge count %d) out of total face count %d.  The nGons have been triangulated.", buf, 0x1Eu);
            }
          }

          goto LABEL_181;
        }
      }
    }

    if (v13 != 4)
    {
      goto LABEL_209;
    }
  }

  if (!*(a2 + 16))
  {
    goto LABEL_204;
  }

  v24 = *(a2 + 32);
  memset(v187, 0, 36);
  *&v187[36] = 0x7FFFFFFFLL;
  v25 = [v16 indexCount];
  v26 = v25;
  if (v13 != 2)
  {
    v176 = (v25 >> 2);
    re::DynamicArray<re::GeomCell4>::resize((v24 + 40), v176);
    if ((v26 & 0x3FFFFFFFCLL) != 0)
    {
      v59 = 0;
      v28 = 0;
      v60 = 0;
      while (v15 > v60)
      {
        v61 = v60;
        switch(v22)
        {
          case 32:
            v62 = *(v19 + 4 * v60);
            break;
          case 16:
            v62 = *(v19 + 2 * v60);
            break;
          case 8:
            v62 = *(v19 + v60);
            break;
          default:
            goto LABEL_206;
        }

        *buf = v62;
        v63 = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](v187, buf);
        v65 = v61 + 1;
        if (v15 <= v65)
        {
          goto LABEL_191;
        }

        v66 = *v63;
        if (v22 == 32)
        {
          v67 = *(v19 + 4 * v65);
        }

        else if (v22 == 16)
        {
          v67 = *(v19 + 2 * v65);
        }

        else
        {
          v67 = *(v19 + v65);
        }

        *buf = v67;
        v68 = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](v187, buf);
        v70 = v61 + 2;
        if (v15 <= v70)
        {
          goto LABEL_192;
        }

        v2 = *v68;
        if (v22 == 32)
        {
          v71 = *(v19 + 4 * v70);
        }

        else if (v22 == 16)
        {
          v71 = *(v19 + 2 * v70);
        }

        else
        {
          v71 = *(v19 + v70);
        }

        *buf = v71;
        v72 = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](v187, buf);
        v74 = v61 + 3;
        if (v15 <= v74)
        {
          goto LABEL_193;
        }

        v75 = *v72;
        if (v22 == 32)
        {
          v76 = *(v19 + 4 * v74);
        }

        else if (v22 == 16)
        {
          v76 = *(v19 + 2 * v74);
        }

        else
        {
          v76 = *(v19 + v74);
        }

        *buf = v76;
        v77 = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](v187, buf);
        v78 = v24;
        v24 = *(v24 + 56);
        if (v24 <= v28)
        {
          goto LABEL_194;
        }

        v79 = *v77;
        v80 = (*(v78 + 72) + v59);
        *v80 = v66;
        v80[1] = v2;
        v80[2] = v75;
        v80[3] = v79;
        ++v28;
        v60 = v61 + 4;
        v59 += 16;
        v24 = v78;
        if (v176 == v28)
        {
          goto LABEL_76;
        }
      }

      goto LABEL_190;
    }

LABEL_76:
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v187);
    v4 = v169;
    goto LABEL_182;
  }

  re::DynamicArray<re::GeomCell4>::resize((v24 + 40), (v25 / 3));
  v175 = (v26 / 3);
  if (!(v26 / 3))
  {
    goto LABEL_76;
  }

  v28 = 0;
  v29 = 2;
  v30 = 8;
  while (1)
  {
    v31 = v29 - 2;
    if (v15 <= v31)
    {
      goto LABEL_186;
    }

    if (v22 != 32)
    {
      break;
    }

    v32 = *(v19 + 4 * v31);
LABEL_26:
    *buf = v32;
    v33 = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](v187, buf);
    v35 = v29 - 1;
    if (v15 <= v35)
    {
      goto LABEL_187;
    }

    v2 = *v33;
    if (v22 == 32)
    {
      v36 = *(v19 + 4 * v35);
    }

    else if (v22 == 16)
    {
      v36 = *(v19 + 2 * v35);
    }

    else
    {
      v36 = *(v19 + v35);
    }

    *buf = v36;
    v37 = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](v187, buf);
    if (v15 <= v29)
    {
      goto LABEL_188;
    }

    v39 = *v37;
    if (v22 == 32)
    {
      v40 = *(v19 + 4 * v29);
    }

    else if (v22 == 16)
    {
      v40 = *(v19 + 2 * v29);
    }

    else
    {
      v40 = *(v19 + v29);
    }

    *buf = v40;
    v41 = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](v187, buf);
    v13 = *(v24 + 56);
    if (v13 <= v28)
    {
      goto LABEL_189;
    }

    v42 = *v41;
    v43 = (*(v24 + 72) + v30);
    *(v43 - 2) = v2;
    *(v43 - 1) = v39;
    *v43 = v42;
    v43[1] = -1;
    ++v28;
    v30 += 16;
    v29 += 3;
    if (v175 == v28)
    {
      goto LABEL_76;
    }
  }

  if (v22 == 16)
  {
    v32 = *(v19 + 2 * v31);
    goto LABEL_26;
  }

  if (v22 == 8)
  {
    v32 = *(v19 + v31);
    goto LABEL_26;
  }

  re::internal::assertLog(4, v27, "assertion failure: '%s' (%s:line %i) Unsupported or invalid MDLIndexBitDepth detected.", "!Unreachable code", "operator[]", 93);
  _os_crash();
  __break(1u);
  re::internal::assertLog(4, v149, "assertion failure: '%s' (%s:line %i) Unsupported or invalid MDLIndexBitDepth detected.", "!Unreachable code", "operator[]", 93);
  _os_crash();
  __break(1u);
  re::internal::assertLog(4, v150, "assertion failure: '%s' (%s:line %i) Unsupported or invalid MDLIndexBitDepth detected.", "!Unreachable code", "operator[]", 93);
  _os_crash();
  __break(1u);
LABEL_206:
  re::internal::assertLog(4, v58, "assertion failure: '%s' (%s:line %i) Unsupported or invalid MDLIndexBitDepth detected.", "!Unreachable code", "operator[]", 93);
  _os_crash();
  __break(1u);
  re::internal::assertLog(4, v151, "assertion failure: '%s' (%s:line %i) Unsupported or invalid MDLIndexBitDepth detected.", "!Unreachable code", "operator[]", 93);
  _os_crash();
  __break(1u);
  re::internal::assertLog(4, v152, "assertion failure: '%s' (%s:line %i) Unsupported or invalid MDLIndexBitDepth detected.", "!Unreachable code", "operator[]", 93);
  _os_crash();
  __break(1u);
  re::internal::assertLog(4, v153, "assertion failure: '%s' (%s:line %i) Unsupported or invalid MDLIndexBitDepth detected.", "!Unreachable code", "operator[]", 93);
  _os_crash();
  __break(1u);
LABEL_207:
  re::internal::assertLog(4, v86, "assertion failure: '%s' (%s:line %i) Unsupported or invalid MDLIndexBitDepth detected.", "!Unreachable code", "operator[]", 93);
  _os_crash();
  __break(1u);
  re::internal::assertLog(4, v154, "assertion failure: '%s' (%s:line %i) Unsupported or invalid MDLIndexBitDepth detected.", "!Unreachable code", "operator[]", 93);
  _os_crash();
  __break(1u);
  re::internal::assertLog(4, v155, "assertion failure: '%s' (%s:line %i) Unsupported or invalid MDLIndexBitDepth detected.", "!Unreachable code", "operator[]", 93);
  _os_crash();
  __break(1u);
  re::internal::assertLog(4, v156, "assertion failure: '%s' (%s:line %i) Unsupported or invalid MDLIndexBitDepth detected.", "!Unreachable code", "operator[]", 93);
  _os_crash();
  __break(1u);
LABEL_208:
  re::internal::assertLog(4, v21, "assertion failure: '%s' (%s:line %i) Unsupported or invalid MDLIndexBitDepth detected.", "!Unreachable code", "MDLIndexBuffer", 65);
  _os_crash();
  __break(1u);
LABEL_209:
  re::internal::assertLog(4, v23, "assertion failure: '%s' (%s:line %i) Unsupported Geometry type", "!Unreachable code", "extractMDLAttributeTopologies", 475);
  _os_crash();
  __break(1u);
}

uint64_t re::internal::anonymous namespace::modelGetVertexAttributeBuffer(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = [v7 vertexDescriptor];
  v10 = [v9 attributeNamed:v8];

  if (v10)
  {
    *(a4 + 32) = [v10 bufferIndex];
    v11 = [v7 vertexAttributeDataForAttributeNamed:v8];
    if (v11)
    {
      if ([v10 format] == a3)
      {
        v12 = [v10 offset];
        v13 = [v10 bufferIndex];
        v14 = [v11 stride];
        if ((v12 & 3) != 0)
        {
          NSLog(&cfstr_Modelconverter_1.isa);
        }

        else
        {
          v17 = v14;
          if ((v14 & 3) == 0)
          {
            v18 = [v7 vertexBuffers];
            v19 = [v18 objectAtIndexedSubscript:v13];

            *(a4 + 8) = [v19 length];
            v20 = [v19 map];
            *a4 = [v20 bytes];

            *(a4 + 16) = v12 >> 2;
            *(a4 + 24) = v17 >> 2;

            v15 = 1;
            goto LABEL_9;
          }

          NSLog(&cfstr_Modelconverter_2.isa);
        }
      }

      else
      {
        NSLog(&cfstr_Modelconverter_0.isa);
      }
    }

    v15 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v15 = 0;
LABEL_10:

  return v15;
}

void *re::internal::anonymous namespace::copyVertex3FValues(void *result, uint64_t a2, uint64_t a3, __n128 a4)
{
  v4 = *(a3 + 8);
  if (v4)
  {
    v5 = 0;
    v6 = *result + (result[1] & 0xFFFFFFFFFFFFFFFCLL) - 12;
    do
    {
      if (*(a2 + 16) <= v5)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_10:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v7 = *result + 4 * result[2] + 4 * result[3] * *(*(a2 + 32) + 4 * v5);
      if (v7 <= v6)
      {
        if (v5 >= *(a3 + 8))
        {
          goto LABEL_10;
        }

        a4.n128_u64[0] = *v7;
        a4.n128_u32[2] = *(v7 + 8);
        *(*a3 + 16 * v5) = a4;
      }

      ++v5;
    }

    while (v4 != v5);
  }

  return result;
}

void re::internal::anonymous namespace::addAttributeIfItExistsToGeomMesh(void *a1, void *a2, void *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v73 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = [v13 vertexDescriptor];
  v17 = [v16 attributeNamed:v15];

  v18 = [v17 format];
  if (v18 > 786434)
  {
    if (v18 == 786436)
    {
      v20 = 0;
      v21 = 8;
      v51 = 1;
    }

    else
    {
      if (v18 != 786435)
      {
        goto LABEL_59;
      }

      v51 = 0;
      v21 = 7;
      v20 = 1;
    }

LABEL_9:
    {
      v50 = v20;
      v49 = v14;
      v22 = [v14 faceIndexing];
      v48 = v22;
      if (v22)
      {
        v23 = [v22 objectAtIndexedSubscript:v56];
        LODWORD(v24) = [v23 unsignedIntValue];

        v24 = v24;
      }

      else
      {
        v24 = 0;
      }

      v25 = *(a6 + 16);
      if (v25 <= v24)
      {
        goto LABEL_54;
      }

      v25 = *(a6 + 32) + 80 * v24;
      if (v25 == a5 || (v26 = *(v25 + 16), v26 == *(a5 + 16)) && !memcmp(*(v25 + 32), *(a5 + 32), 4 * v26) && re::DynamicArray<re::GeomCell4>::operator==(v25 + 40, a5 + 40))
      {
        v27 = re::GeomMesh::addAttribute(a7, a4, 1, v21);
      }

      else
      {
        *&v60[2] = 0;
        memset(v58, 0, sizeof(v58));
        re::DynamicArray<float>::resize(v58, *(a7 + 40));
        v28 = *(a7 + 40);
        if (*(a7 + 40))
        {
          v29 = 0;
          v30 = *&v58[16];
          v31 = *&v60[2];
          while (v30 != v29)
          {
            *(v31 + 4 * v29) = v29;
            if (v28 == ++v29)
            {
              goto LABEL_23;
            }
          }

          v57 = 0;
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v68 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v61 = 136315906;
          *&v61[4] = "operator[]";
          v62 = 1024;
          v63 = 789;
          v64 = 2048;
          v65 = v30;
          v66 = 2048;
          v67 = v30;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_52;
        }

LABEL_23:
        v27 = re::GeomMesh::addFaceVaryingAttribute(a7, a4, v21, *(v25 + 16), (v25 + 40), v58);
        if (*v58 && *&v60[2])
        {
          (*(**v58 + 40))();
        }
      }

      if (v51)
      {
        v32 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v27);
        v25 = *(a6 + 16);
        if (v25 <= v24)
        {
LABEL_55:
          *v61 = 0;
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v68 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v58 = 136315906;
          *&v58[4] = "operator[]";
          *&v58[12] = 1024;
          *&v58[14] = 789;
          *&v58[18] = 2048;
          *&v58[20] = v24;
          v59 = 2048;
          *v60 = v25;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_56;
        }

        if (v33)
        {
          v25 = 0;
          v34 = v52 + (v53 & 0xFFFFFFFFFFFFFFFCLL) - 16;
          v35 = *(a6 + 32) + 80 * v24;
          v36 = v55;
          v37 = v52 + 4 * v54;
          while (1)
          {
            v24 = *(v35 + 16);
            if (v24 <= v25)
            {
              break;
            }

            v38 = (v37 + 4 * v36 * *(*(v35 + 32) + 4 * v25));
            if (v38 <= v34)
            {
              *(v32 + 16 * v25) = *v38;
            }

            if (v33 == ++v25)
            {
              goto LABEL_49;
            }
          }

LABEL_52:
          *v61 = 0;
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v68 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v58 = 136315906;
          *&v58[4] = "operator[]";
          *&v58[12] = 1024;
          *&v58[14] = 797;
          *&v58[18] = 2048;
          *&v58[20] = v25;
          v59 = 2048;
          *v60 = v24;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_53:
          *v61 = 0;
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v68 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v58 = 136315906;
          *&v58[4] = "operator[]";
          *&v58[12] = 1024;
          *&v58[14] = 797;
          *&v58[18] = 2048;
          *&v58[20] = v25;
          v59 = 2048;
          *v60 = v24;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_54:
          *v61 = 0;
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v68 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v58 = 136315906;
          *&v58[4] = "operator[]";
          *&v58[12] = 1024;
          *&v58[14] = 789;
          *&v58[18] = 2048;
          *&v58[20] = v24;
          v59 = 2048;
          *v60 = v25;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_55;
        }

        goto LABEL_49;
      }

      if (v50)
      {
        *v61 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v27);
        *&v61[8] = v40;
        v25 = *(a6 + 16);
        if (v25 <= v24)
        {
LABEL_56:
          v57 = 0;
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v68 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v58 = 136315906;
          *&v58[4] = "operator[]";
          *&v58[12] = 1024;
          *&v58[14] = 789;
          *&v58[18] = 2048;
          *&v58[20] = v24;
          v59 = 2048;
          *v60 = v25;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_57;
        }

        goto LABEL_49;
      }

      if ((*(*v27 + 16))(v27))
      {
        if (!v27[5])
        {
          goto LABEL_58;
        }

        v41 = v27[7];
        v42 = (*(*v27 + 16))(v27);
        v25 = *(a6 + 16);
        if (v25 > v24)
        {
          if (v42)
          {
            v25 = 0;
            v43 = v52 + (v53 & 0xFFFFFFFFFFFFFFFCLL) - 8;
            v44 = *(a6 + 32) + 80 * v24;
            v45 = v55;
            v46 = v52 + 4 * v54;
            while (1)
            {
              v24 = *(v44 + 16);
              if (v24 <= v25)
              {
                goto LABEL_53;
              }

              v47 = (v46 + 4 * v45 * *(*(v44 + 32) + 4 * v25));
              if (v47 <= v43)
              {
                *(v41 + 8 * v25) = *v47;
              }

              if (v42 == ++v25)
              {
                goto LABEL_49;
              }
            }
          }

          goto LABEL_49;
        }
      }

      else
      {
        v25 = *(a6 + 16);
        if (v25 > v24)
        {
LABEL_49:

          v14 = v49;
          goto LABEL_50;
        }
      }

LABEL_57:
      *v61 = 0;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v68 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v58 = 136315906;
      *&v58[4] = "operator[]";
      *&v58[12] = 1024;
      *&v58[14] = 789;
      *&v58[18] = 2048;
      *&v58[20] = v24;
      v59 = 2048;
      *v60 = v25;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_58:
      *v61 = 0;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v68 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v58 = 136315906;
      *&v58[4] = "operator[]";
      *&v58[12] = 1024;
      *&v58[14] = 789;
      *&v58[18] = 2048;
      *&v58[20] = 0;
      v59 = 2048;
      *v60 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

LABEL_50:

    return;
  }

  if (!v18)
  {
    goto LABEL_50;
  }

  if (v18 == 786434)
  {
    v51 = 0;
    v20 = 0;
    v21 = 6;
    goto LABEL_9;
  }

LABEL_59:
  re::internal::assertLog(4, v19, v18, "assertion failure: '%s' (%s:line %i) unsupported MDLVertexFormat", "!Unreachable code", "addAttributeIfItExistsToGeomMesh", 580);
  _os_crash();
  __break(1u);
}

uint64_t *re::DynamicArray<re::internal::anonymous namespace::MDLAttrTopologyMap>::~DynamicArray(uint64_t *a1)
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
        v5 = 80 * v4;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v3 + 40);
          re::DynamicArray<unsigned long>::deinit(v3);
          v3 += 80;
          v5 -= 80;
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

void re::internal::attachBlendShapeDataIfItExistsToGeomMesh(re::internal *this, const MDLMesh *a2, re::GeomMesh *a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = this;
  v5 = [(re::internal *)v4 submeshes];
  if (v5)
  {
    v6 = v5;
    v7 = [(re::internal *)v4 submeshes];
    v8 = [v7 count];

    if (v8 == 1)
    {
      v9 = [(re::internal *)v4 componentConformingToProtocol:&unk_1F5D590E0];
      if (v9)
      {
        v10 = [(re::internal *)v4 submeshes];
        v11 = [v10 objectAtIndexedSubscript:0];

        v43 = 0;
        v40[1] = 0;
        v41 = 0;
        v40[0] = 0;
        v42 = 0;
        v33 = v41;
        if (v41)
        {
          v32 = [(re::internal *)v4 vertexDescriptor];
          v31 = [v32 attributeNamed:@"position"];
          v12 = [v31 bufferIndex];
          v13 = [v11 faceIndexing];

          if (v13)
          {
            v14 = [v11 faceIndexing];
            v15 = [v14 objectAtIndexedSubscript:v12];
            LODWORD(v16) = [v15 unsignedIntValue];

            v16 = v16;
          }

          else
          {
            v16 = 0;
          }

          v17 = [v9 targetShapes];
          v18 = [v17 count];

          if (v18)
          {
            v19 = 0;
            do
            {
              v20 = [v9 targetShapes];
              v21 = [v20 objectAtIndexedSubscript:v19];

              {
                v22 = [v21 name];
                v23 = [v22 UTF8String];

                v24 = "";
                if (v23)
                {
                  v24 = v23;
                }

                re::DynamicString::format("%s|blendTargetPosDeltas", &v36, v24);
                if (v37)
                {
                  v25 = *&v38[7];
                }

                else
                {
                  v25 = v38;
                }

                v26 = re::GeomMesh::addAttribute(a2, v25, 1, 7);
                v34 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v26);
                v35 = v28;
                if (v33 <= v16)
                {
                  v44 = 0;
                  v56 = 0u;
                  v57 = 0u;
                  v54 = 0u;
                  v55 = 0u;
                  v53 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v45 = 136315906;
                  v46 = "operator[]";
                  v47 = 1024;
                  v48 = 789;
                  v49 = 2048;
                  v50 = v16;
                  v51 = 2048;
                  v52 = v33;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
                }

                if (v36 && (v37 & 1) != 0)
                {
                  (*(*v36 + 40))();
                }
              }

              ++v19;
              v29 = [v9 targetShapes];
              v30 = [v29 count];
            }

            while (v30 > v19);
          }
        }
      }
    }
  }
}

void re::internal::attachNewBlendShapeDataIfItExistsToGeomMesh(re::internal *this, MDLMesh *a2, const MDLObject *a3, uint64_t a4, re::GeomMesh *a5)
{
  v61 = *MEMORY[0x1E69E9840];
  v7 = this;
  v8 = a2;
  v9 = [(re::internal *)v7 submeshes];
  v43 = a3;
  v10 = [v9 objectAtIndexedSubscript:a3];

  v44 = v8;
  v11 = [(MDLMesh *)v8 children];
  v12 = [v11 count];

  memset(v45, 0, sizeof(v45));
  v46 = 0;
  v50 = 0;
  v47 = 0u;
  v48 = 0u;
  v49 = 0;
  v13 = v7;
  v14 = v10;
  v53 = 0;
  *&v52 = 0;
  v51 = 0uLL;
  DWORD2(v52) = 0;
  v15 = v52;
  if (v52)
  {
    v16 = [(re::internal *)v13 vertexDescriptor];
    v17 = [v16 attributeNamed:@"position"];
    v18 = [v17 bufferIndex];
    v19 = [v14 faceIndexing];

    if (v19)
    {
      v20 = v14;
      v21 = [v14 faceIndexing];
      v22 = [v21 objectAtIndexedSubscript:v18];
      v23 = [v22 unsignedIntValue];

      v24 = v23;
      if (v15 <= v23)
      {
        v54 = 0;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v56 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v55 = 136315906;
        *&v55[4] = "operator[]";
        *&v55[12] = 1024;
        *&v55[14] = 789;
        *&v55[18] = 2048;
        *&v55[20] = v23;
        *&v55[28] = 2048;
        *&v55[30] = v15;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v14 = v20;
    }

    else
    {
      v24 = 0;
    }

    v25 = v53 + 80 * v24;
    re::DynamicArray<re::RigComponentConstraint>::operator=(v45, v25);
    re::DynamicArray<re::GeomCell4>::operator=(&v47 + 8, v25 + 40);
  }

  v40 = v14;

  v41 = v13;
  if (v12)
  {
    v26 = 0;
    v27 = *MEMORY[0x1E6974B28];
    do
    {
      v28 = [(MDLMesh *)v44 children];
      v29 = [v28 objectAtIndexedSubscript:v26];

      v30 = [v29 submeshes];
      v31 = [v30 objectAtIndexedSubscript:v43];

      *&v58 = 0;
      *&v57 = 0;
      v56 = 0uLL;
      DWORD2(v57) = 0;
      if (v57)
      {
        v32 = [v29 vertexDescriptor];
        v33 = [v32 attributeNamed:@"offsets"];
        [v33 bufferIndex];
        v34 = [v31 faceIndexing];

        if (v34)
        {
          v35 = [v31 faceIndexing];
          v36 = [v35 objectAtIndexedSubscript:0];
          [v36 unsignedIntValue];
        }

        v37 = [v29 name];
        v38 = [v37 UTF8String];
        re::DynamicString::operator+(v55, "|blendTargetPosDeltas", &v51);
        if (BYTE8(v51))
        {
          v39 = v52;
        }

        else
        {
          v39 = &v51 + 9;
        }

        if (v51)
        {
          if (BYTE8(v51))
          {
            (*(*v51 + 40))();
          }

          v51 = 0u;
          v52 = 0u;
        }

        if (*v55)
        {
          if (v55[8])
          {
            (*(**v55 + 40))();
          }

          memset(v55, 0, 32);
        }
      }

      ++v26;
    }

    while (v12 != v26);
  }

  if (*(&v47 + 1))
  {
    if (v50)
    {
      (*(**(&v47 + 1) + 40))();
    }

    v50 = 0;
    v48 = 0uLL;
    *(&v47 + 1) = 0;
    ++v49;
  }

  if (v45[0] && v47)
  {
    (*(*v45[0] + 40))();
  }
}

void re::internal::attachSkinningDataToMesh(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = &v57;
  v62 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = re::GeomMesh::addAttribute(a6, "skeletonPath", 0, 1);
  if (!*(v13 + 40))
  {
LABEL_52:
    *v50 = 0;
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
    *(v10 + 32) = 0u;
    v57 = 0u;
    v58 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v47 = 136315906;
    *&v47[4] = "operator[]";
    *&v47[12] = 1024;
    *&v47[14] = 789;
    *&v47[18] = 2048;
    *&v47[20] = 0;
    v48 = 2048;
    *v49 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_53;
  }

  **(v13 + 56) = 0;
  v6 = re::GeomMesh::addAttribute(a6, "skinnedAnimationGeometryBindTransform", 4, 8);
  (*(*v6 + 24))(v6, 4);
  v14 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v6);
  LOBYTE(v6) = v15;
  if (!v15)
  {
LABEL_53:
    *v50 = 0;
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
    *(v10 + 32) = 0u;
    v57 = 0u;
    v58 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v47 = 136315906;
    *&v47[4] = "operator[]";
    *&v47[12] = 1024;
    *&v47[14] = 621;
    *&v47[18] = 2048;
    *&v47[20] = 0;
    v48 = 2048;
    *v49 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_54;
  }

  *v14 = *a5;
  if (v15 == 1)
  {
LABEL_54:
    *v50 = 0;
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
    *(v10 + 32) = 0u;
    v57 = 0u;
    v58 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v47 = 136315906;
    *&v47[4] = "operator[]";
    *&v47[12] = 1024;
    *&v47[14] = 621;
    *&v47[18] = 2048;
    *&v47[20] = 1;
    v48 = 2048;
    *v49 = 1;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_55;
  }

  v14[1] = *(a5 + 16);
  if (v15 <= 2)
  {
LABEL_55:
    *v50 = 0;
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
    *(v10 + 32) = 0u;
    v57 = 0u;
    v58 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v47 = 136315906;
    *&v47[4] = "operator[]";
    *&v47[12] = 1024;
    *&v47[14] = 621;
    *&v47[18] = 2048;
    *&v47[20] = 2;
    v48 = 2048;
    *v49 = v6 & 3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_56;
  }

  v14[2] = *(a5 + 32);
  if (v15 == 3)
  {
LABEL_56:
    *v50 = 0;
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
    *(v10 + 32) = 0u;
    v57 = 0u;
    v58 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v47 = 136315906;
    *&v47[4] = "operator[]";
    *&v47[12] = 1024;
    *&v47[14] = 621;
    *&v47[18] = 2048;
    *&v47[20] = 3;
    v48 = 2048;
    *v49 = 3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_57:
    re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) ", "topologies.size() > 0", "attachSkinningDataToMesh", 971);
    _os_crash();
    __break(1u);
  }

  v14[3] = *(a5 + 48);
  v6 = *(a6 + 16);
  *&v49[2] = 0;
  memset(v47, 0, sizeof(v47));
  if (!*&v47[16])
  {
    goto LABEL_57;
  }

  v45 = v12;
  v46 = v11;
  v17 = re::GeomMesh::addAttribute(a6, "skinnedAnimationWeights", 4, 4);
  v18 = re::GeomMesh::addAttribute(a6, "skinnedAnimationJointIndices", 4, 2);
  v19 = re::GeomMesh::addAttribute(a6, "skinnedAnimationInfluenceEndIndices", 4, 2);
  (*(*v19 + 24))(v19, v6);
  v20 = *&v49[2];
  v21 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v19);
  if (v6)
  {
    v23 = 0;
    LODWORD(v24) = 0;
    v25 = *(v20 + 16);
    v26 = v22;
    while (v25 != v23)
    {
      v10 = *(*(v20 + 32) + 4 * v23);
      if (v10)
      {
        v12 = *(a5 + 160);
        if (v12 <= v10)
        {
          goto LABEL_48;
        }

        v27 = *(*(a5 + 168) + 4 * v10) - *(*(a5 + 168) + 4 * (v10 - 1));
      }

      else
      {
        if (!*(a5 + 160))
        {
          goto LABEL_51;
        }

        v27 = **(a5 + 168);
      }

      if (v22 == v23)
      {
        goto LABEL_47;
      }

      v24 = (v27 + v24);
      *(v21 + 4 * v23++) = v24;
      if (v6 == v23)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_46;
  }

  v24 = 0;
LABEL_19:
  (*(*v18 + 24))(v18, v24);
  (*(*v17 + 24))(v17, v24);
  v12 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v17);
  v10 = v28;
  v29 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v18);
  if (v6)
  {
    v31 = v12;
    v32 = v30;
    v33 = v10;
    v34 = 0;
    v35 = 0;
    v25 = *(v20 + 16);
    while (1)
    {
      if (v34 == v25)
      {
        goto LABEL_49;
      }

      v10 = *(*(v20 + 32) + 4 * v34);
      v12 = *(a5 + 160);
      if (v12 <= v10)
      {
        goto LABEL_50;
      }

      v36 = *(a5 + 168);
      v37 = v10 ? *(v36 + 4 * (v10 - 1)) : 0;
      v38 = *(v36 + 4 * v10);
      v39 = v38 - v37;
      if (v38 != v37)
      {
        break;
      }

LABEL_40:
      if (++v34 == v6)
      {
        goto LABEL_41;
      }
    }

    v40 = 0;
    v26 = *(a5 + 112);
    v41 = v35;
    if (v35 <= v33)
    {
      v10 = v33;
    }

    else
    {
      v10 = v35;
    }

    v42 = v29 + 4 * v35;
    if (v35 <= v32)
    {
      v43 = v32;
    }

    else
    {
      v43 = v35;
    }

    v44 = v31 + 4 * v35;
    while (1)
    {
      v12 = (v37 + v40);
      if (v26 <= v12)
      {
        break;
      }

      if (!(v41 - v10 + v40))
      {
        goto LABEL_43;
      }

      *(v44 + 4 * v40) = *(*(a5 + 120) + 4 * v12);
      v17 = *(a5 + 136);
      if (v17 <= v12)
      {
        goto LABEL_44;
      }

      if (!(v41 - v43 + v40))
      {
        goto LABEL_45;
      }

      *(v42 + 4 * v40++) = *(*(a5 + 144) + 4 * v12);
      if (v39 == v40)
      {
        v35 = v41 + v40;
        goto LABEL_40;
      }
    }

    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    v57 = 0u;
    v58 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v50 = 136315906;
    *&v50[4] = "operator[]";
    v51 = 1024;
    v52 = 476;
    v53 = 2048;
    v54 = v12;
    v55 = 2048;
    v56 = v26;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_43:
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    v57 = 0u;
    v58 = 0u;
    v12 = v33;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v50 = 136315906;
    *&v50[4] = "operator[]";
    v51 = 1024;
    v52 = 621;
    v53 = 2048;
    v54 = v10;
    v55 = 2048;
    v56 = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_44:
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    v57 = 0u;
    v58 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v50 = 136315906;
    *&v50[4] = "operator[]";
    v51 = 1024;
    v52 = 476;
    v53 = 2048;
    v54 = v12;
    v55 = 2048;
    v56 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_45:
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    v57 = 0u;
    v58 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v50 = 136315906;
    *&v50[4] = "operator[]";
    v51 = 1024;
    v52 = 621;
    v53 = 2048;
    v54 = v43;
    v55 = 2048;
    v56 = v32;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_46:
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    v57 = 0u;
    v58 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v50 = 136315906;
    *&v50[4] = "operator[]";
    v51 = 1024;
    v52 = 789;
    v53 = 2048;
    v54 = v25;
    v55 = 2048;
    v56 = v25;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_47:
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    v57 = 0u;
    v58 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v50 = 136315906;
    *&v50[4] = "operator[]";
    v51 = 1024;
    v52 = 621;
    v53 = 2048;
    v54 = v26;
    v55 = 2048;
    v56 = v26;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_48:
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    v57 = 0u;
    v58 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v50 = 136315906;
    *&v50[4] = "operator[]";
    v51 = 1024;
    v52 = 476;
    v53 = 2048;
    v54 = v10;
    v55 = 2048;
    v56 = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_49:
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    v57 = 0u;
    v58 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v50 = 136315906;
    *&v50[4] = "operator[]";
    v51 = 1024;
    v52 = 789;
    v53 = 2048;
    v54 = v25;
    v55 = 2048;
    v56 = v25;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_50:
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    v57 = 0u;
    v58 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v50 = 136315906;
    *&v50[4] = "operator[]";
    v51 = 1024;
    v52 = 476;
    v53 = 2048;
    v54 = v10;
    v55 = 2048;
    v56 = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_51:
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    v57 = 0u;
    v58 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v50 = 136315906;
    *&v50[4] = "operator[]";
    v51 = 1024;
    v52 = 476;
    v53 = 2048;
    v54 = 0;
    v55 = 2048;
    v56 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_52;
  }

LABEL_41:
}

void re::internal::attachOpenSubdivDataToMesh(re::internal *this, MDLMesh *a2, MDLSubmesh *a3, re::GeomMesh *a4)
{
  v89 = *MEMORY[0x1E69E9840];
  v7 = this;
  v8 = a2;
  if ([(re::internal *)v7 subdivisionScheme]== 1)
  {
    v72 = 0;
    v69[1] = 0;
    v70 = 0;
    v69[0] = 0;
    v71 = 0;
    v9 = v70;
    if (v70)
    {
      v10 = [(re::internal *)v7 vertexDescriptor];
      v11 = [v10 attributeNamed:@"position"];
      v12 = [v11 bufferIndex];
      if (v9 <= v12)
      {
LABEL_46:
        *v77 = 0;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v84 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v74 = 136315906;
        *&v74[4] = "operator[]";
        *&v74[12] = 1024;
        *&v74[14] = 789;
        *&v74[18] = 2048;
        *&v74[20] = v12;
        v75 = 2048;
        *v76 = v9;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_47:
        *v77 = 0;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v84 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v74 = 136315906;
        *&v74[4] = "operator[]";
        *&v74[12] = 1024;
        *&v74[14] = 789;
        *&v74[18] = 2048;
        *&v74[20] = 0;
        v75 = 2048;
        *v76 = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v13 = v72;
      v14 = [(MDLMesh *)v8 topology];
      v15 = re::GeomMesh::addAttribute(a3, "osdSubdivisionScheme", 0, 1);
      if (v15)
      {
        if (!*(v15 + 40))
        {
          goto LABEL_47;
        }

        **(v15 + 56) = 1;
      }

      if (v14)
      {
        v16 = [v14 edgeCreaseCount];
        v17 = [v14 vertexCreaseCount];
        *&v76[2] = 0;
        memset(v74, 0, sizeof(v74));
        if (v17 | v16)
        {
          v66 = v10;
          v67 = v17;
          re::DynamicArray<unsigned int>::resize(v74, [(re::internal *)v7 vertexCount], &re::kInvalidMeshIndex);
          isa_low = LODWORD(a3[2].super.isa);
          if (isa_low)
          {
            v19 = 0;
            v20 = v13 + 80 * v12;
            v9 = *(v20 + 16);
            v21 = *&v74[16];
            v22 = *&v76[2];
            while (v9 != v19)
            {
              v4 = *(*(v20 + 32) + 4 * v19);
              if (v21 <= v4)
              {
                goto LABEL_37;
              }

              *(v22 + 4 * v4) = v19++;
              if (isa_low == v19)
              {
                goto LABEL_14;
              }
            }

            v73 = 0;
            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            v84 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v77 = 136315906;
            *&v77[4] = "operator[]";
            v78 = 1024;
            v79 = 797;
            v80 = 2048;
            v81 = v9;
            v82 = 2048;
            v83 = v9;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_37:
            v73 = 0;
            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            v84 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v77 = 136315906;
            *&v77[4] = "operator[]";
            v78 = 1024;
            v79 = 789;
            v80 = 2048;
            v81 = v4;
            v82 = 2048;
            v83 = v21;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_38:
            v73 = 0;
            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            v84 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v77 = 136315906;
            *&v77[4] = "operator[]";
            v78 = 1024;
            v79 = 789;
            v80 = 2048;
            v81 = v9;
            v82 = 2048;
            v83 = v21;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_39:
            v73 = 0;
            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            v84 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v77 = 136315906;
            *&v77[4] = "operator[]";
            v78 = 1024;
            v79 = 621;
            v80 = 2048;
            v81 = v4;
            v82 = 2048;
            v83 = v16;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_40:
            v73 = 0;
            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            v84 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v77 = 136315906;
            *&v77[4] = "operator[]";
            v78 = 1024;
            v79 = 789;
            v80 = 2048;
            v81 = v9;
            v82 = 2048;
            v83 = v21;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_41:
            v73 = 0;
            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            v84 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v77 = 136315906;
            *&v77[4] = "operator[]";
            v78 = 1024;
            v79 = 621;
            v80 = 2048;
            v81 = v4 + 1;
            v82 = 2048;
            v83 = v16;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_42:
            v73 = 0;
            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            v84 = 0u;
            v60 = v34;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v77 = 136315906;
            *&v77[4] = "operator[]";
            v78 = 1024;
            v79 = 621;
            v80 = 2048;
            v81 = v60;
            v82 = 2048;
            v83 = v60;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_43:
            v73 = 0;
            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            v84 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v77 = 136315906;
            *&v77[4] = "operator[]";
            v78 = 1024;
            v79 = 789;
            v80 = 2048;
            v81 = v9;
            v82 = 2048;
            v83 = v21;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_44:
            v73 = 0;
            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            v84 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v77 = 136315906;
            *&v77[4] = "operator[]";
            v78 = 1024;
            v79 = 621;
            v80 = 2048;
            v81 = v12;
            v82 = 2048;
            v83 = v12;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_45:
            v73 = 0;
            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            v84 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v77 = 136315906;
            *&v77[4] = "operator[]";
            v78 = 1024;
            v79 = 621;
            v80 = 2048;
            v81 = v4;
            v82 = 2048;
            v83 = v4;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_46;
          }

LABEL_14:
          v68 = v11;
          if (v16)
          {
            v23 = [v14 edgeCreases];
            v24 = [v14 edgeCreaseIndices];
            v62 = v23;
            v25 = [v23 map];
            v12 = [v25 bytes];

            v61 = v24;
            v26 = [v24 map];
            v64 = [v26 bytes];

            v27 = re::GeomMesh::addAttribute(a3, "osdEdgeCreaseIndices", 4, 3);
            v28 = re::GeomMesh::addAttribute(a3, "osdEdgeCreaseWeights", 4, 4);
            (*(*v27 + 24))(v27, (2 * v16));
            (*(*v28 + 24))(v28, v16);
            v29 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v27);
            LODWORD(v23) = v30;
            v31 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v28);
            v4 = 0;
            v21 = *&v74[16];
            v33 = *&v76[2];
            v34 = v32;
            v35 = v16;
            v16 = v23;
            v36 = (v29 + 4);
            v37 = 2 * v35;
            v38 = (v64 + 4);
            v39 = v23 & 0xFFFFFFFE;
            v40 = (v23 + 1) & 0x1FFFFFFFELL;
            do
            {
              v9 = *(v38 - 1);
              if (v21 <= v9)
              {
                goto LABEL_38;
              }

              if (v40 == v4)
              {
                goto LABEL_39;
              }

              *(v36 - 1) = *(v33 + 4 * v9);
              v9 = *v38;
              if (v21 <= v9)
              {
                goto LABEL_40;
              }

              if (v39 == v4)
              {
                goto LABEL_41;
              }

              *v36 = *(v33 + 4 * v9);
              if (2 * v32 == v4)
              {
                goto LABEL_42;
              }

              v41 = *v12;
              v12 += 4;
              v38 += 2;
              *v31++ = v41;
              v4 += 2;
              v36 += 2;
            }

            while (v37 != v4);

            v11 = v68;
          }

          if (v67)
          {
            v42 = [v14 vertexCreases];
            v43 = [v14 vertexCreaseIndices];
            v65 = v42;
            v44 = [v42 map];
            v45 = [v44 bytes];

            v63 = v43;
            v46 = [v43 map];
            v47 = [v46 bytes];

            v48 = re::GeomMesh::addAttribute(a3, "osdVertexCreaseIndices", 4, 3);
            v49 = re::GeomMesh::addAttribute(a3, "osdVertexCreaseWeights", 4, 4);
            (*(*v48 + 24))(v48, v67);
            (*(*v49 + 24))(v49, v67);
            v50 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v48);
            LODWORD(v48) = v51;
            v52 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v49);
            v21 = *&v74[16];
            v53 = *&v76[2];
            v54 = v48;
            v4 = v55;
            v56 = v67;
            v12 = v48;
            v57 = v55;
            do
            {
              v58 = *v47++;
              v9 = v58;
              if (v21 <= v58)
              {
                goto LABEL_43;
              }

              if (!v54)
              {
                goto LABEL_44;
              }

              *v50 = *(v53 + 4 * v9);
              if (!v57)
              {
                goto LABEL_45;
              }

              v59 = *v45++;
              *v52++ = v59;
              ++v50;
              --v57;
              --v54;
              --v56;
            }

            while (v56);

            v11 = v68;
          }

          v10 = v66;
          if (*v74 && *&v76[2])
          {
            (*(**v74 + 40))();
          }
        }
      }
    }
  }
}

void *re::DynamicArray<re::internal::anonymous namespace::MDLAttrTopologyMap>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 80 * a2;
    v9 = a2;
    do
    {
      v10 = v3[4] + v8;
      re::DynamicArray<unsigned long>::deinit(v10 + 40);
      result = re::DynamicArray<unsigned long>::deinit(v10);
      ++v9;
      v8 += 80;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 80 * v4;
      do
      {
        v7 = v3[4] + v6;
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 24) = 0;
        *(v7 + 16) = 0;
        *(v7 + 72) = 0;
        *(v7 + 32) = 0uLL;
        *(v7 + 48) = 0uLL;
        *(v7 + 64) = 0;
        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

unint64_t *re::internal::anonymous namespace::buildMappingsForMDLSubmeshToGeomVertexHelper(unint64_t *result, uint64_t a2, unint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v52 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v10 = a3;
    v11 = a2;
    v12 = result;
    v13 = 0;
    v15 = result[1];
    v14 = result[2];
    v16 = a4;
    v17 = 0xFFFFFFFFLL;
    v18 = a3;
    v19 = a4;
    do
    {
      if (*result <= v18)
      {
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "index < m_max_index", "operator[]", 79);
        _os_crash();
        __break(1u);
LABEL_44:
        re::internal::assertLog(4, v21, "assertion failure: '%s' (%s:line %i) ", "index < m_max_index", "operator[]", 79);
        _os_crash();
        __break(1u);
LABEL_45:
        v38 = 0;
        v50 = 0u;
        v51 = 0u;
        v49 = 0u;
        v47 = 0u;
        v48 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v39 = 136315906;
        v40 = "operator[]";
        v41 = 1024;
        v42 = 789;
        v43 = 2048;
        v44 = v10;
        v45 = 2048;
        v46 = v12;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_46;
      }

      v6 = v17;
      switch(v14)
      {
        case 0x20uLL:
          v7 = *(v15 + 4 * v18);
          break;
        case 0x10uLL:
          v7 = *(v15 + 2 * v18);
          break;
        case 8uLL:
          v7 = *(v15 + v18);
          break;
        default:
          goto LABEL_48;
      }

      if (v7 >= v17)
      {
        v17 = v17;
      }

      else
      {
        v17 = v7;
      }

      if (v7 > v13)
      {
        v13 = v7;
      }

      v18 += a2;
      --v19;
    }

    while (v19);
    v37 = 0;
    v20 = v13 - v17 + 1;
    v34[1] = 0;
    v35 = 0;
    v34[0] = 0;
    v36 = 0;
    LOBYTE(v47) = 0;
    re::DynamicArray<BOOL>::resize(v34, v20, &v47);
    v22 = 0;
    v24 = v12[1];
    v23 = v12[2];
    v25 = *v12;
    v12 = v35;
    v26 = v37;
    do
    {
      if (v25 <= v10)
      {
        goto LABEL_44;
      }

      v27 = v10;
      switch(v23)
      {
        case 0x20uLL:
          v28 = *(v24 + 4 * v10);
          break;
        case 0x10uLL:
          v28 = *(v24 + 2 * v10);
          break;
        case 8uLL:
          v28 = *(v24 + v10);
          break;
        default:
          goto LABEL_49;
      }

      v10 = (v28 - v17);
      if (v12 <= v10)
      {
        goto LABEL_45;
      }

      if ((*(v26 + v10) & 1) == 0)
      {
        *(v26 + v10) = 1;
        ++v22;
      }

      v10 = (v27 + v11);
      --v16;
    }

    while (v16);
    re::DynamicArray<float>::resize(a6, v22);
    if (v20)
    {
      v29 = 0;
      v11 = 0;
      if (v7 >= v6)
      {
        v30 = v6;
      }

      else
      {
        v30 = v7;
      }

      while (1)
      {
        v7 = v35;
        if (v35 <= v11)
        {
          break;
        }

        if (*(v37 + v11) == 1)
        {
          v33 = v30 + v11;
          v47 = 0uLL;
          *&v48 = 0;
          v31 = 0xBF58476D1CE4E5B9 * ((v30 + v11) ^ ((v30 + v11) >> 30));
          re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(a5, &v33, (0x94D049BB133111EBLL * (v31 ^ (v31 >> 27))) ^ ((0x94D049BB133111EBLL * (v31 ^ (v31 >> 27))) >> 31), &v47);
          if (HIDWORD(v47) == 0x7FFFFFFF)
          {
            v32 = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a5, DWORD2(v47), v47);
            *(v32 + 4) = v33;
            *(v32 + 8) = v29;
            ++*(a5 + 40);
          }

          v7 = v29;
          v6 = *(a6 + 16);
          if (v6 <= v29)
          {
            goto LABEL_47;
          }

          *(*(a6 + 32) + 4 * v29++) = v33;
        }

        if (v20 == ++v11)
        {
          goto LABEL_39;
        }
      }

LABEL_46:
      v38 = 0;
      v50 = 0u;
      v51 = 0u;
      v49 = 0u;
      v47 = 0u;
      v48 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v39 = 136315906;
      v40 = "operator[]";
      v41 = 1024;
      v42 = 789;
      v43 = 2048;
      v44 = v11;
      v45 = 2048;
      v46 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_47:
      v38 = 0;
      v50 = 0u;
      v51 = 0u;
      v49 = 0u;
      v47 = 0u;
      v48 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v39 = 136315906;
      v40 = "operator[]";
      v41 = 1024;
      v42 = 789;
      v43 = 2048;
      v44 = v7;
      v45 = 2048;
      v46 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_48:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unsupported or invalid MDLIndexBitDepth detected.", "!Unreachable code", "operator[]", 93);
      _os_crash();
      __break(1u);
LABEL_49:
      re::internal::assertLog(4, v21, "assertion failure: '%s' (%s:line %i) Unsupported or invalid MDLIndexBitDepth detected.", "!Unreachable code", "operator[]", 93);
      _os_crash();
      __break(1u);
    }

LABEL_39:
    result = v34[0];
    if (v34[0])
    {
      if (v37)
      {
        return (*(*v34[0] + 40))();
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::internal::anonymous namespace::MDLAttrTopologyMap>::setCapacity(void *result, unint64_t a2)
{
  v2 = result[1];
  if (v2 != a2)
  {
    v4 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v4)
      {
        ++*(v4 + 6);
        return result;
      }

      if (a2)
      {
        result = (*(*result + 32))(result, 80 * a2, 8);
        if (!result)
        {
          re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, 80 * a2, *(*v4 + 8));
          result = _os_crash();
          __break(1u);
          return result;
        }

        v6 = result;
        if (!v4[1])
        {
          goto LABEL_15;
        }
      }

      else
      {
        v6 = 0;
        if (!v2)
        {
LABEL_15:
          v4[4] = v6;
          v4[1] = a2;
          return result;
        }
      }

      v7 = v4[4];
      v8 = v4[2];
      if (v8)
      {
        v9 = 0;
        v10 = v7 + 80 * v8;
        do
        {
          v11 = v7 + v9;
          v12 = &v6[v9 / 8];
          v12[4] = 0;
          v12[1] = 0;
          v12[2] = 0;
          *v12 = 0;
          *(v12 + 6) = 0;
          v13 = *(v7 + v9 + 8);
          *v12 = *(v7 + v9);
          v12[1] = v13;
          *v11 = 0;
          *(v11 + 8) = 0;
          v14 = v6[v9 / 8 + 2];
          v12[2] = *(v7 + v9 + 16);
          *(v11 + 16) = v14;
          v15 = v6[v9 / 8 + 4];
          v12[4] = *(v7 + v9 + 32);
          *(v11 + 32) = v15;
          *(v11 + 24) = *(v7 + v9 + 24) + 1;
          *(v12 + 6) = LODWORD(v6[v9 / 8 + 3]) + 1;
          v12[9] = 0;
          v12[6] = 0;
          v12[7] = 0;
          v12[5] = 0;
          *(v12 + 16) = 0;
          v16 = (v7 + v9 + 40);
          v17 = *(v7 + v9 + 48);
          v12[5] = *v16;
          *v16 = 0;
          v12[6] = v17;
          *(v11 + 48) = 0;
          v18 = v6[v9 / 8 + 7];
          v12[7] = *(v7 + v9 + 56);
          *(v11 + 56) = v18;
          v19 = v6[v9 / 8 + 9];
          v12[9] = *(v7 + v9 + 72);
          *(v11 + 72) = v19;
          *(v11 + 64) = *(v7 + v9 + 64) + 1;
          *(v12 + 16) = LODWORD(v6[v9 / 8 + 8]) + 1;
          re::DynamicArray<unsigned long>::deinit(v16);
          re::DynamicArray<unsigned long>::deinit(v7 + v9);
          v9 += 80;
        }

        while (v11 + 80 != v10);
        v7 = v4[4];
      }

      result = (*(**v4 + 40))(*v4, v7);
      goto LABEL_15;
    }
  }

  return result;
}

void re::makeGeomMeshFromModelDescriptor(re *this@<X0>, uint64_t a2@<X8>)
{
  v3 = this;
  v690 = *MEMORY[0x1E69E9840];
  v4 = *(this + 4);
  if (v4)
  {
    v5 = (v4 + 8);
    v6 = *(v4 + 33);
    if (v6 >= 6)
    {
      v7 = v6 == 5;
    }

    else
    {
      v7 = 0x30u >> v6;
    }

    if (v7 & 1) != 0 && (*(v4 + 32))
    {
      v8 = (v4 + 8);
      v9 = *(v4 + 48);
      v631 = (*(v4 + 24) + *(v4 + 56));
      v10 = *(v4 + 40);
      v11 = (v4 + 8);

      v12 = 0;
      v13 = 0;
      v14 = 1;
      v15 = v4;
    }

    else
    {
      v16 = re::internal::DataPayload::computePoDConversionHelper<unsigned int>(v4, &v638);
      if (v638 == 1)
      {
        v12 = *(&v638 + 1);
        v10 = v639;
        v9 = 4;
        v13 = v640;
      }

      else
      {
        if (v640 && (v641 & 1) != 0)
        {
          (*(*v640 + 40))(v16);
        }

        v10 = 0;
        v12 = 0;
        v13 = 0;
        v9 = 0;
      }

      v15 = 0;
      v14 = v10 == 0;
      v631 = v13;
    }
  }

  else
  {
    v631 = 0;
    v9 = 0;
    v13 = 0;
    v12 = 0;
    v15 = 0;
    v10 = 0;
    v14 = 1;
  }

  if (*(v3 + 24) != v10)
  {
    v28 = v638;
    v29 = v639;
    v30 = v640;
    *a2 = 0;
    *(a2 + 8) = 100;
    *(a2 + 16) = re::AssetErrorCategory(void)::instance;
    *(a2 + 24) = v28;
    *(a2 + 40) = v29;
    *(a2 + 48) = v30;
    goto LABEL_1164;
  }

  v633 = v9;
  v17 = re::GeomMesh::GeomMesh(&v638, 0);
  v643 = xmmword_1E30A0E80;
  v644 = -1;
  v645 = 0;
  LODWORD(v646) = 0;
  v651 = 0u;
  memset(v652, 0, sizeof(v652));
  v622 = v3;
  v623 = *(v3 + 16);
  v621 = *(v3 + 24);
  v19 = *(v3 + 40);
  v618 = v13;
  if (v19)
  {
    v20 = (v19 + 8);
    v21 = *(v19 + 33);
    if (v21 >= 6)
    {
      v22 = v21 == 5;
    }

    else
    {
      v22 = 0x30u >> v21;
    }

    if (v22 & 1) != 0 && (*(v19 + 32))
    {
      v23 = (v19 + 8);
      v24 = *(v19 + 48);
      v25 = *(v19 + 24) + *(v19 + 56);
      v26 = *(v19 + 40);
      v27 = (v19 + 8);

      v625 = 0;
      v3 = 0;
      LODWORD(v632) = 1;
      v634 = v19;
    }

    else
    {
      v32 = re::internal::DataPayload::computePoDConversionHelper<unsigned int>(v19, v658);
      if (LOBYTE(v658[0]) == 1)
      {
        v3 = v658[1];
        v26 = v659;
        v24 = 4;
        v25 = *(&v659 + 1);
      }

      else
      {
        if (*(&v659 + 1) && (v660 & 1) != 0)
        {
          (*(**(&v659 + 1) + 40))(v32);
        }

        v25 = 0;
        v26 = 0;
        v3 = 0;
        v24 = 0;
      }

      v634 = 0;
      LODWORD(v632) = v26 == 0;
      v625 = v25;
    }

    v31 = v3;
  }

  else
  {
    v25 = 0;
    v24 = 0;
    v26 = 0;
    v634 = 0;
    v31 = 0;
    v625 = 0;
    LODWORD(v632) = 1;
  }

  if (v10 != v621)
  {
    goto LABEL_1366;
  }

  v624 = v10;
  v627 = v31;
  if (v10)
  {
    v33 = v10;
    LODWORD(v10) = 0;
    LODWORD(v34) = 0;
    LODWORD(v3) = 0;
    v35 = v631;
    while (1)
    {
      v36 = *v35;
      if (*v35 < 5)
      {
        if (v36 <= 2)
        {
          v42 = "Model contains degenerate face (face < 2 vertices).";
LABEL_54:
          v43 = 0;
          v3 = *(&v659 + 1);
          v19 = v659;
          v24 = v658[0];
          v25 = v658[1];
LABEL_64:
          v10 = v624;
          goto LABEL_65;
        }

        v37 = 1;
      }

      else
      {
        v37 = v36 - 2;
      }

      v35 = (v35 + v9);
      v10 = (v37 + v10);
      if (v36 <= v3)
      {
        v3 = v3;
      }

      else
      {
        v3 = v36;
      }

      v34 = v36 + v34;
      if (!--v33)
      {
        goto LABEL_48;
      }
    }
  }

  v3 = 0;
  v34 = 0;
LABEL_48:
  if (v26 != v34)
  {
    v42 = "Model contains a corrupt index list.";
    goto LABEL_54;
  }

  v38 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet((v622 + 6), v686);
  if (v38)
  {
    v39 = v14;
    v40 = v12;
    v12 = *v38;
    v14 = v622[14];
    if (v14 <= *v38)
    {
LABEL_1389:
      *&v685[0] = 0;
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      *v658 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v681[0]) = 136315906;
      *(v681 + 4) = "operator[]";
      WORD6(v681[0]) = 1024;
      *(v681 + 14) = 797;
      WORD1(v681[1]) = 2048;
      *(&v681[1] + 4) = v12;
      WORD6(v681[1]) = 2048;
      *(&v681[1] + 14) = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1390:
      v654 = 0;
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      *v658 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v688 = 136315906;
      *&v688[4] = "operator[]";
      *&v688[12] = 1024;
      *&v688[14] = 789;
      *&v688[18] = 2048;
      *&v688[20] = v26;
      *&v688[28] = 2048;
      *&v688[30] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1391:
      v654 = 0;
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      *v658 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v688 = 136315906;
      *&v688[4] = "operator[]";
      *&v688[12] = 1024;
      *&v688[14] = 789;
      *&v688[18] = 2048;
      *&v688[20] = v26;
      *&v688[28] = 2048;
      *&v688[30] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1392:
      *v688 = 0;
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      *v658 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v681[0]) = 136315906;
      *(v681 + 4) = "operator[]";
      WORD6(v681[0]) = 1024;
      *(v681 + 14) = 789;
      WORD1(v681[1]) = 2048;
      *(&v681[1] + 4) = v26;
      WORD6(v681[1]) = 2048;
      *(&v681[1] + 14) = v15;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1393:
      *v688 = 0;
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      *v658 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v681[0]) = 136315906;
      *(v681 + 4) = "operator[]";
      WORD6(v681[0]) = 1024;
      *(v681 + 14) = 789;
      WORD1(v681[1]) = 2048;
      *(&v681[1] + 4) = v26;
      WORD6(v681[1]) = 2048;
      *(&v681[1] + 14) = v15;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_1394;
    }

    v41 = v622[16] + 56 * v12;
    v12 = v40;
    v14 = v39;
  }

  else
  {
    v41 = re::GeomModelDescriptor::emptyAttribute(0);
  }

  v613 = v15;
  v44 = *&v686[0];
  if (*&v686[0] && (BYTE8(v686[0]) & 1) != 0)
  {
    v44 = (*(**&v686[0] + 40))(*&v686[0], *&v686[1]);
  }

  v45 = *(v41 + 40);
  if (!v45)
  {
    v46 = "No positions specified for model.";
    goto LABEL_63;
  }

  if (*(v41 + 48))
  {
    v46 = "Positions cannot be indexed.";
LABEL_63:
    v43 = 0;
    v3 = *(&v659 + 1);
    v19 = v659;
    v24 = v658[0];
    v25 = v658[1];
    v15 = v613;
    goto LABEL_64;
  }

  v477 = (v45 + 8);
  if (*(v45 + 32) == 1 && (*(v45 + 33) | 2) == 0xB)
  {
    v478 = (v45 + 8);
    v577 = *(v45 + 48);
    v574 = *(v45 + 24) + *(v45 + 56);
    v479 = (v45 + 8);

    v580 = v45;
    v587 = 0;
    v573 = 0;
    LOBYTE(v593) = 1;
  }

  else
  {
    v480 = re::internal::DataPayload::computeConvertedValues<re::PackedFloat3>(v45, v658);
    if (LOBYTE(v658[0]) == 1)
    {
      v481 = v658[1];
      v482 = *(&v659 + 1);
      LOBYTE(v593) = v659 == 0;
      v577 = 12;
    }

    else
    {
      if (*(&v659 + 1) && (v660 & 1) != 0)
      {
        (*(**(&v659 + 1) + 40))(v480);
      }

      v481 = 0;
      v482 = 0;
      v577 = 0;
      LOBYTE(v593) = 1;
    }

    v580 = 0;
    v587 = v481;
    v573 = v482;
    v574 = v482;
  }

  v598 = v12;

  bzero(v658, 0x2D0uLL);
  re::DynamicArray<re::BlendNode>::setCapacity(&v659, 1uLL);
  ++DWORD2(v660);
  re::internal::GeomAttributeManager::GeomAttributeManager((&v661 + 8));
  re::internal::GeomAttributeManager::addAttribute((&v661 + 8), "vertexPosition", 1, 7);
  LODWORD(v658[1]) = v623;
  v663 = v623;
  if (v664)
  {
    v496 = v665;
    v497 = 8 * v664;
    do
    {
      v498 = *v496++;
      (*(*v498 + 80))(v498, v663);
      v497 -= 8;
    }

    while (v497);
  }

  if (v10 < v660)
  {
    v499 = v670;
    if (v670)
    {
      v500 = 0;
      do
      {
        v501 = re::internal::GeomAttributeContainer::attributeByIndex(v669, v500);
        re::internal::accessFaceVaryingAttributeSubmesh(v501, v502);
        ++v500;
      }

      while (v499 != v500);
    }
  }

  v19 = v10;
  v503 = re::DynamicArray<re::GeomCell4>::resize(&v659, v10);
  v666 = v10;
  if (v667)
  {
    v504 = v668;
    v505 = 8 * v667;
    do
    {
      v506 = *v504++;
      v503 = (*(*v506 + 80))(v506, v666);
      v505 -= 8;
    }

    while (v505);
  }

  *(&v652[0] + 1) = 0;
  *(&v652[1] + 8) = 0u;
  v507 = *&v652[0];
  *&v652[1] = *&v652[0];
  *&v681[0] = &v651;
  if (*&v652[0] > 0xFuLL)
  {
    v508 = 0;
    v509 = v651;
    v510 = *&v652[0] >> 4;
    while (1)
    {
      v511 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v509), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      *(&v681[0] + 1) = v511 ^ 0xFFFFLL;
      if (v511 != 0xFFFFLL)
      {
        break;
      }

      v508 -= 16;
      ++v509;
      if (!--v510)
      {
        goto LABEL_1219;
      }
    }

    v519 = __clz(__rbit64(v511 ^ 0xFFFFLL));
    v520 = v519 - v508;
    *&v681[1] = v519 - v508;
    if (v519 + 1 != v508)
    {
      do
      {
        v521 = *(&v651 + 1) + 96 * v520;
        re::DynamicArray<unsigned long>::deinit(v521 + 56);
        re::FixedArray<CoreIKTransform>::deinit((v521 + 32));
        re::FixedArray<CoreIKTransform>::deinit((v521 + 8));
        v503 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v681);
        v520 = *&v681[1];
      }

      while (*&v681[1] != -1);
      v507 = *&v652[0];
    }

LABEL_1219:
    if (v507 >= 0x10)
    {
      v522 = 0;
      *&v523 = -1;
      *(&v523 + 1) = -1;
      do
      {
        *(v651 + 16 * v522++) = v523;
      }

      while (v522 < *&v652[0] >> 4);
    }
  }

  if (v3 <= 4)
  {
    v15 = v613;
    v553 = v623;
    if (!v621)
    {
LABEL_1299:
      v561 = 0;
      *&v681[0] = 0xFFFFFFFF00000000;
      DWORD2(v681[0]) = -1;
      BYTE12(v681[0]) = 0;
      if ((v10 - 1) <= 0xFFFFFFFD)
      {
        DWORD2(v681[0]) = v10 - 1;
        v561 = v10;
        *&v681[0] = v10;
      }

      LODWORD(v681[1]) = v561;
      re::GeomIndexMap::operator=(&v643 + 8, v681);
      v12 = v598;
      v26 = v622;
      v10 = v624;
      if (BYTE12(v681[0]))
      {
        if (BYTE12(v681[0]) == 2)
        {
          re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v681[1]);
        }

        else
        {
          if (BYTE12(v681[0]) != 1)
          {
            goto LABEL_1454;
          }

          if (*&v681[1] && *&v682[0])
          {
            (*(**&v681[1] + 40))();
          }
        }
      }

      v9 = v633;
      goto LABEL_1334;
    }

    v19 = 0;
    v554 = 0;
    v555 = v631;
    while (1)
    {
      v556 = *(v25 + v24 * v554);
      if (v556 >= v553 || (v557 = *(v25 + v24 * (v554 + 1)), v557 >= v553))
      {
LABEL_1317:
        v43 = 0;
        v3 = *(&v681[1] + 1);
        v19 = *&v681[1];
        v25 = *(&v681[0] + 1);
        v24 = *&v681[0];
        v12 = v598;
        v10 = v624;
        v9 = v633;
        goto LABEL_1346;
      }

      v558 = *v555;
      v559 = *(v25 + v24 * (v554 + 2));
      if (*v555 == 4 && v559 < v553)
      {
        break;
      }

      if (v558 == 4 || v559 >= v553)
      {
        goto LABEL_1317;
      }

      if (v558 == 3)
      {
        v503 = re::GeomMeshBuilder::setFaceVertices(v658, v19, v556, v557, v559);
LABEL_1297:
        v553 = v623;
      }

      v555 = (v555 + v633);
      v554 += v558;
      if (v624 == ++v19)
      {
        goto LABEL_1299;
      }
    }

    v560 = *(v25 + v24 * (v554 + 3));
    if (v560 >= v553)
    {
      goto LABEL_1317;
    }

    v503 = re::GeomMeshBuilder::setFaceVertices(v658, v19, v556, v557, v559, v560);
    goto LABEL_1297;
  }

  v635 = 0;
  v636 = 0;
  v637 = 0;
  v655 = 0;
  v654 = 0;
  v656 = 0;
  *&v685[2] = 0;
  memset(v685, 0, 28);
  v26 = v3;
  v525 = re::DynamicArray<unsigned int>::resize(v685, v10, &re::kInvalidMeshIndex);
  v526 = 0;
  v19 = v636;
  v527 = v637;
  v12 = v598;
  v10 = v624;
  v9 = v633;
  do
  {
    if (v19 == v526)
    {
      goto LABEL_1365;
    }

    *(v527 + 4 * v526) = v526;
    ++v526;
  }

  while (v3 != v526);
  v653 = 0;
  v15 = v613;
  v26 = v622;
  v528 = v623;
  if (!v621)
  {
    goto LABEL_1279;
  }

  v529 = 0;
  v530 = 0;
  v572 = v621;
  do
  {
    v19 = v529;
    v531 = v9 * v529;
    v532 = *(v631 + v531);
    if (v532)
    {
      v533 = *(v631 + v531);
      v534 = v530;
      do
      {
        if (*(v25 + v24 * v534) >= v528)
        {
          v3 = *(&v681[1] + 1);
          v19 = *&v681[1];
          v25 = *(&v681[0] + 1);
          v24 = *&v681[0];
          if (*&v685[0] && *&v685[2])
          {
            (*(**&v685[0] + 40))();
          }

          if (v654 && v655)
          {
            (*(*v654 + 40))();
          }

          if (v635 && v636)
          {
            (*(*v635 + 40))();
          }

          v43 = 0;
          goto LABEL_1346;
        }

        ++v534;
        --v533;
      }

      while (v533);
    }

    v12 = *&v685[1];
    if (*&v685[1] <= v529)
    {
      goto LABEL_1411;
    }

    *(*&v685[2] + 4 * v529) = v529;
    v620 = v529;
    v576 = v532;
    if (v532 == 4)
    {
      v19 = v530;
      v525 = re::GeomMeshBuilder::setFaceVertices(v658, v529, *(v25 + v24 * v530), *(v25 + v24 * (v530 + 1)), *(v25 + v24 * (v530 + 2)), *(v25 + v24 * (v530 + 3)));
      v535 = v620;
      v528 = v623;
      v12 = v598;
      goto LABEL_1278;
    }

    if (v532 == 3)
    {
      v19 = v530;
      v525 = re::GeomMeshBuilder::setFaceVertices(v658, v529, *(v25 + v24 * v530), *(v25 + v24 * (v530 + 1)), *(v25 + v24 * (v530 + 2)));
      v535 = v620;
      v12 = v598;
      v528 = v623;
      goto LABEL_1278;
    }

    v536 = (v532 - 2);
    v683 = 0;
    memset(v681, 0, sizeof(v681));
    memset(v682, 0, 28);
    v612 = v530;
    v595 = v536;
    if (v576)
    {
      v538 = 0;
      v19 = *(&v681[0] + 1);
      v539 = *&v681[1];
      v540 = v612;
      do
      {
        if (v19 == v538)
        {
          goto LABEL_1372;
        }

        *(v539 + 4 * v538++) = *(v25 + v24 * v540++);
      }

      while (v576 != v538);
      if (v576 > 0xFF)
      {
        v545 = v14;
        re::DynamicArray<unsigned int>::resize(v682, (3 * v595), &re::kInvalidMeshIndex);
        v547 = 0;
        v548 = 2;
        v12 = *&v682[1];
        v549 = v683;
        v546 = v620;
        while (1)
        {
          v19 = v547;
          if (v12 <= v547)
          {
            goto LABEL_1395;
          }

          v549[v547] = 0;
          v14 = v547 + 1;
          if (v12 <= v14)
          {
            goto LABEL_1396;
          }

          v549[v14] = v548 - 1;
          v14 = v547 + 2;
          if (v12 <= v14)
          {
            goto LABEL_1398;
          }

          v549[v14] = v548;
          v547 += 3;
          ++v548;
          if (v19 + 3 >= (3 * v595))
          {
            goto LABEL_1253;
          }
        }
      }

      v12 = 0;
      v541 = 4;
      while (1)
      {
        v19 = v655;
        if (v655 <= v12)
        {
          break;
        }

        v542 = (v574 + v577 * *(v25 + v24 * (v612 + v12)));
        v544 = v542[1];
        v543 = v542[2];
        *(v656 + v541 - 4) = *v542;
        v19 = v655;
        if (v655 <= v12)
        {
          goto LABEL_1397;
        }

        *(v656 + v541) = v544;
        v19 = v655;
        if (v655 <= v12)
        {
          goto LABEL_1399;
        }

        *(v656 + v541 + 4) = v543;
        ++v12;
        v541 += 16;
        if (v576 == v12)
        {
          goto LABEL_1247;
        }
      }

LABEL_1394:
      v657 = 0;
      v687 = 0u;
      memset(v686, 0, sizeof(v686));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v688 = 136315906;
      *&v688[4] = "operator[]";
      *&v688[12] = 1024;
      *&v688[14] = 468;
      *&v688[18] = 2048;
      *&v688[20] = v12;
      *&v688[28] = 2048;
      *&v688[30] = v19;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1395:
      v657 = 0;
      v687 = 0u;
      memset(v686, 0, sizeof(v686));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v688 = 136315906;
      *&v688[4] = "operator[]";
      *&v688[12] = 1024;
      *&v688[14] = 789;
      *&v688[18] = 2048;
      *&v688[20] = v19;
      *&v688[28] = 2048;
      *&v688[30] = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1396:
      v657 = 0;
      v687 = 0u;
      memset(v686, 0, sizeof(v686));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v688 = 136315906;
      *&v688[4] = "operator[]";
      *&v688[12] = 1024;
      *&v688[14] = 789;
      *&v688[18] = 2048;
      *&v688[20] = v14;
      *&v688[28] = 2048;
      *&v688[30] = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1397:
      v657 = 0;
      v687 = 0u;
      memset(v686, 0, sizeof(v686));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v688 = 136315906;
      *&v688[4] = "operator[]";
      *&v688[12] = 1024;
      *&v688[14] = 468;
      *&v688[18] = 2048;
      *&v688[20] = v12;
      *&v688[28] = 2048;
      *&v688[30] = v19;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1398:
      v657 = 0;
      v687 = 0u;
      memset(v686, 0, sizeof(v686));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v688 = 136315906;
      *&v688[4] = "operator[]";
      *&v688[12] = 1024;
      *&v688[14] = 789;
      *&v688[18] = 2048;
      *&v688[20] = v14;
      *&v688[28] = 2048;
      *&v688[30] = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1399:
      v657 = 0;
      v687 = 0u;
      memset(v686, 0, sizeof(v686));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v688 = 136315906;
      *&v688[4] = "operator[]";
      *&v688[12] = 1024;
      *&v688[14] = 468;
      *&v688[18] = 2048;
      *&v688[20] = v12;
      *&v688[28] = 2048;
      *&v688[30] = v19;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1400:
      *&v685[0] = 0;
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      *v658 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v686[0]) = 136315906;
      *(v686 + 4) = "operator[]";
      WORD6(v686[0]) = 1024;
      *(v686 + 14) = 621;
      WORD1(v686[1]) = 2048;
      *(&v686[1] + 4) = v3;
      WORD6(v686[1]) = 2048;
      *(&v686[1] + 14) = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1401:
      *v688 = 0;
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      *v658 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v685[0]) = 136315906;
      *(v685 + 4) = "operator[]";
      WORD6(v685[0]) = 1024;
      *(v685 + 14) = 621;
      WORD1(v685[1]) = 2048;
      *(&v685[1] + 4) = v25;
      WORD6(v685[1]) = 2048;
      *(&v685[1] + 14) = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1402:
      *&v685[0] = 0;
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      *v658 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v686[0]) = 136315906;
      *(v686 + 4) = "operator[]";
      WORD6(v686[0]) = 1024;
      *(v686 + 14) = 621;
      WORD1(v686[1]) = 2048;
      *(&v686[1] + 4) = v3;
      WORD6(v686[1]) = 2048;
      *(&v686[1] + 14) = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1403:
      *&v685[0] = 0;
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      *v658 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v686[0]) = 136315906;
      *(v686 + 4) = "operator[]";
      WORD6(v686[0]) = 1024;
      *(v686 + 14) = 621;
      WORD1(v686[1]) = 2048;
      *(&v686[1] + 4) = v12;
      WORD6(v686[1]) = 2048;
      *(&v686[1] + 14) = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1404:
      *&v685[0] = 0;
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      *v658 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v686[0]) = 136315906;
      *(v686 + 4) = "operator[]";
      WORD6(v686[0]) = 1024;
      *(v686 + 14) = 621;
      WORD1(v686[1]) = 2048;
      *(&v686[1] + 4) = v12;
      WORD6(v686[1]) = 2048;
      *(&v686[1] + 14) = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1405:
      *&v685[0] = 0;
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      *v658 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v686[0]) = 136315906;
      *(v686 + 4) = "operator[]";
      WORD6(v686[0]) = 1024;
      *(v686 + 14) = 621;
      WORD1(v686[1]) = 2048;
      *(&v686[1] + 4) = v12;
      WORD6(v686[1]) = 2048;
      *(&v686[1] + 14) = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1406:
      *&v685[0] = 0;
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      *v658 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v686[0]) = 136315906;
      *(v686 + 4) = "operator[]";
      WORD6(v686[0]) = 1024;
      *(v686 + 14) = 621;
      WORD1(v686[1]) = 2048;
      *(&v686[1] + 4) = v3;
      WORD6(v686[1]) = 2048;
      *(&v686[1] + 14) = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1407:
      *v688 = 0;
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      *v658 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v685[0]) = 136315906;
      *(v685 + 4) = "operator[]";
      WORD6(v685[0]) = 1024;
      *(v685 + 14) = 621;
      WORD1(v685[1]) = 2048;
      *(&v685[1] + 4) = v25;
      WORD6(v685[1]) = 2048;
      *(&v685[1] + 14) = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1408:
      *&v685[0] = 0;
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      *v658 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v686[0]) = 136315906;
      *(v686 + 4) = "operator[]";
      WORD6(v686[0]) = 1024;
      *(v686 + 14) = 621;
      WORD1(v686[1]) = 2048;
      *(&v686[1] + 4) = v3;
      WORD6(v686[1]) = 2048;
      *(&v686[1] + 14) = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1409:
      *&v685[0] = 0;
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      *v658 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v686[0]) = 136315906;
      *(v686 + 4) = "operator[]";
      WORD6(v686[0]) = 1024;
      *(v686 + 14) = 621;
      WORD1(v686[1]) = 2048;
      *(&v686[1] + 4) = v3;
      WORD6(v686[1]) = 2048;
      *(&v686[1] + 14) = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1410:
      *&v685[0] = 0;
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      *v658 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v686[0]) = 136315906;
      *(v686 + 4) = "operator[]";
      WORD6(v686[0]) = 1024;
      *(v686 + 14) = 621;
      WORD1(v686[1]) = 2048;
      *(&v686[1] + 4) = v3;
      WORD6(v686[1]) = 2048;
      *(&v686[1] + 14) = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1411:
      *v688 = 0;
      memset(v682, 0, sizeof(v682));
      memset(v681, 0, sizeof(v681));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v686[0]) = 136315906;
      *(v686 + 4) = "operator[]";
      WORD6(v686[0]) = 1024;
      *(v686 + 14) = 789;
      WORD1(v686[1]) = 2048;
      *(&v686[1] + 4) = v19;
      WORD6(v686[1]) = 2048;
      *(&v686[1] + 14) = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_1412;
    }

LABEL_1247:
    v545 = v14;
    *&v686[0] = v656;
    *(&v686[0] + 1) = v576;
    *v688 = v637;
    *&v688[8] = v576;
    re::triangulatePolygon(v686, v688, v682);
    v546 = v620;
LABEL_1253:
    if (!*&v681[2])
    {
      goto LABEL_1422;
    }

    **(&v681[2] + 1) = v546;
    if (!*&v682[1])
    {
LABEL_1423:
      v657 = 0;
      v687 = 0u;
      memset(v686, 0, sizeof(v686));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v688 = 136315906;
      *&v688[4] = "operator[]";
      *&v688[12] = 1024;
      *&v688[14] = 789;
      *&v688[18] = 2048;
      *&v688[20] = 0;
      *&v688[28] = 2048;
      *&v688[30] = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1424:
      v657 = 0;
      v687 = 0u;
      memset(v686, 0, sizeof(v686));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v688 = 136315906;
      *&v688[4] = "operator[]";
      *&v688[12] = 1024;
      *&v688[14] = 789;
      *&v688[18] = 2048;
      *&v688[20] = 1;
      *&v688[28] = 2048;
      *&v688[30] = 1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1425:
      v657 = 0;
      v687 = 0u;
      memset(v686, 0, sizeof(v686));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v688 = 136315906;
      *&v688[4] = "operator[]";
      *&v688[12] = 1024;
      *&v688[14] = 789;
      *&v688[18] = 2048;
      *&v688[20] = 2;
      *&v688[28] = 2048;
      *&v688[30] = 2;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v12 = v598;
    if (*&v682[1] == 1)
    {
      goto LABEL_1424;
    }

    v26 = v622;
    if (*&v682[1] <= 2uLL)
    {
      goto LABEL_1425;
    }

    v14 = v545;
    re::GeomMeshBuilder::setFaceVertices(v658, v546, *(v25 + v24 * (*v683 + v612)), *(v25 + v24 * (v683[1] + v612)), *(v25 + v24 * (v683[2] + v612)));
    if (v595 < 2)
    {
      goto LABEL_1266;
    }

    v19 = 5;
    v26 = 1;
    do
    {
      v12 = *&v681[2];
      if (*&v681[2] <= v26)
      {
        goto LABEL_1384;
      }

      v550 = v572 + v26 - 1;
      *(*(&v681[2] + 1) + 4 * v26) = v550;
      v12 = v550;
      v14 = *&v685[1];
      if (*&v685[1] <= v550)
      {
LABEL_1385:
        v657 = 0;
        v687 = 0u;
        memset(v686, 0, sizeof(v686));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v688 = 136315906;
        *&v688[4] = "operator[]";
        *&v688[12] = 1024;
        *&v688[14] = 789;
        *&v688[18] = 2048;
        *&v688[20] = v12;
        *&v688[28] = 2048;
        *&v688[30] = v14;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_1386:
        v657 = 0;
        v687 = 0u;
        memset(v686, 0, sizeof(v686));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v688 = 136315906;
        *&v688[4] = "operator[]";
        *&v688[12] = 1024;
        *&v688[14] = 789;
        *&v688[18] = 2048;
        *&v688[20] = v14;
        *&v688[28] = 2048;
        *&v688[30] = v12;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_1387:
        v657 = 0;
        v687 = 0u;
        memset(v686, 0, sizeof(v686));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v688 = 136315906;
        *&v688[4] = "operator[]";
        *&v688[12] = 1024;
        *&v688[14] = 789;
        *&v688[18] = 2048;
        *&v688[20] = v10;
        *&v688[28] = 2048;
        *&v688[30] = v12;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_1388:
        v657 = 0;
        v687 = 0u;
        memset(v686, 0, sizeof(v686));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v688 = 136315906;
        *&v688[4] = "operator[]";
        *&v688[12] = 1024;
        *&v688[14] = 789;
        *&v688[18] = 2048;
        *&v688[20] = v15;
        *&v688[28] = 2048;
        *&v688[30] = v12;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_1389;
      }

      v14 = (v19 - 2);
      *(*&v685[2] + 4 * v550) = v620;
      v12 = *&v682[1];
      if (*&v682[1] <= v14)
      {
        goto LABEL_1386;
      }

      v10 = (v19 - 1);
      if (*&v682[1] <= v10)
      {
        goto LABEL_1387;
      }

      v15 = v19;
      if (*&v682[1] <= v19)
      {
        goto LABEL_1388;
      }

      re::GeomMeshBuilder::setFaceVertices(v658, v550, *(v25 + v24 * (v683[v14] + v612)), *(v25 + v24 * (v683[v10] + v612)), *(v25 + v24 * (v683[v19] + v612)));
      ++v26;
      v19 = (v19 + 3);
      v15 = v613;
      v10 = v624;
    }

    while (v595 != v26);
    v572 = v572 + v26 - 1;
    v12 = v598;
    v14 = v545;
    v26 = v622;
LABEL_1266:
    v9 = v633;
    re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::addNew(&v651, &v653, v681);
    v528 = v623;
    if (*&v682[0])
    {
      if (v683)
      {
        (*(**&v682[0] + 40))();
        v528 = v623;
      }

      v683 = 0;
      memset(v682, 0, 24);
      ++DWORD2(v682[1]);
    }

    v535 = v620;
    if (*(&v681[1] + 1))
    {
      if (*&v681[2])
      {
        (*(**(&v681[1] + 1) + 40))();
        v535 = v620;
        v528 = v623;
        v681[2] = 0uLL;
      }

      *(&v681[1] + 1) = 0;
    }

    v525 = *&v681[0];
    if (*&v681[0] && *(&v681[0] + 1))
    {
      v525 = (*(**&v681[0] + 40))();
      v535 = v620;
      v528 = v623;
    }

    v19 = v612;
LABEL_1278:
    v530 = (v576 + v19);
    v529 = v535 + 1;
    v653 = v529;
  }

  while (v529 < v621);
LABEL_1279:
  re::GeomIndexMap::GeomIndexMap(v681, v685);
  re::GeomIndexMap::operator=(&v643 + 8, v681);
  if (BYTE12(v681[0]))
  {
    if (BYTE12(v681[0]) == 2)
    {
      goto LABEL_1324;
    }

    if (BYTE12(v681[0]) != 1)
    {
      goto LABEL_1455;
    }

    if (*&v681[1] && *&v682[0])
    {
      (*(**&v681[1] + 40))();
    }
  }

LABEL_1325:
  if (*&v685[0] && *&v685[2])
  {
    (*(**&v685[0] + 40))(v552);
  }

  if (v654 && v655)
  {
    (*(*v654 + 40))(v552);
  }

  if (v635 && v636)
  {
    (*(*v635 + 40))(v552);
  }

LABEL_1334:
  re::GeomMesh::operator=(&v638, &v658[1]);
  re::GeomMesh::setName(&v638, v658[0]);
  re::GeomMesh::freeName(v658);
  v563 = re::GeomMesh::modifyVertexPositions(&v638);
  if (v623)
  {
    v566 = v623;
    v19 = v564;
    v567 = (v574 + 8);
    v568 = v564;
    while (v568)
    {
      *&v565 = *(v567 - 1);
      DWORD2(v565) = *v567;
      v567 = (v567 + v577);
      *v563++ = v565;
      --v568;
      if (!--v566)
      {
        goto LABEL_1338;
      }
    }

    goto LABEL_1367;
  }

LABEL_1338:
  *&v643 = __PAIR64__(v3, v621);
  v569 = *(v26 + 192);
  v570 = v569 >> 1;
  if ((v569 & 1) == 0)
  {
    v570 = v569 >> 1;
  }

  if (v570)
  {
    if (v569)
    {
      v571 = *(v26 + 200);
    }

    else
    {
      v571 = (v26 + 193);
    }

    re::GeomMesh::setName(&v638, v571);
  }

  v43 = 1;
LABEL_1346:
  re::GeomMesh::freeName(v658);
  re::internal::GeomAttributeManager::~GeomAttributeManager((&v661 + 8));
  if (v659 && v661)
  {
    (*(*v659 + 40))(v659, v661);
  }

  if (!((v587 == 0) | v593 & 1))
  {
    (*(*v587 + 40))(v587, v573);
  }

  if (v580)
  {
  }

LABEL_65:
  v47 = v627;
  if (!((v627 == 0) | v632 & 1))
  {
    v47 = (*(*v627 + 40))(v627, v625);
  }

  if (v634)
  {
  }

  v623 = &v646;
  if ((v43 & 1) == 0)
  {
    *a2 = 0;
    *(a2 + 8) = 100;
    *(a2 + 16) = re::AssetErrorCategory(void)::instance;
    *(a2 + 40) = v19;
    *(a2 + 48) = v3;
    *(a2 + 24) = v24;
    *(a2 + 32) = v25;
    v13 = v618;
LABEL_1154:
    v494 = re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::deinit(&v651);
    if (v645 == 2)
    {
      re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v646);
    }

    else if (v645 == 1)
    {
      if (v646)
      {
        if (v650)
        {
          (*(*v646 + 40))(v494);
        }

        v650 = 0;
        v647 = 0;
        v648 = 0;
        v646 = 0;
        ++v649;
      }
    }

    else
    {
      if (v645)
      {
        goto LABEL_1430;
      }

      LODWORD(v646) = 0;
    }

    re::GeomMesh::~GeomMesh(&v638);
LABEL_1164:
    if (!((v12 == 0) | v14 & 1))
    {
      (*(*v12 + 40))(v12, v13);
    }

    if (v15)
    {
    }

    return;
  }

  v25 = v622;
  v49 = v622[5];
  v596 = v14;
  if (v49)
  {
    v593 = *(v49 + 40);
  }

  else
  {
    v593 = 0;
  }

  v26 = v622[14];
  v597 = v12;
  if (!v26)
  {
    goto LABEL_1076;
  }

  v50 = 0;
  v575 = v10;
  if (v10 <= 1)
  {
    v51 = 1;
  }

  else
  {
    v51 = v10;
  }

  v621 = v51;
  v24 = 56;
  v594 = v622[14];
  while (2)
  {
    v19 = *(v25 + 112);
    if (v19 <= v50)
    {
      goto LABEL_1357;
    }

    v14 = v48;
    v634 = v50;
    v19 = *(v25 + 128) + 56 * v50;
    v52 = re::DynamicString::operator!=(v19, &v635);
    if (!v52)
    {
      v48 = v14;
      goto LABEL_90;
    }

    v53 = *(v19 + 40);
    if (!v53)
    {
      v58 = "Null attribute.";
LABEL_142:
      v632 = v659;
      v48 = v658[0];
      v90 = v658[1];
      v57 = v634;
LABEL_143:
      if (v48)
      {
        if (v90)
        {
          (*(*v48 + 40))(v48, v632);
          v57 = v634;
        }

        v48 = 0;
        v625 = 0;
        v632 = 0;
      }

      else
      {
        v625 = v90;
      }

      LODWORD(v627) = 0;
      goto LABEL_149;
    }

    v54 = 0;
    v55 = *(v19 + 32);
    if (v55 > 1)
    {
      if (v55 != 2)
      {
        if (v55 == 3)
        {
          v59 = *(v19 + 48);
          if (!v59)
          {
            v59 = *(v19 + 40);
          }

          if (*(v59 + 40) != v593)
          {
            goto LABEL_101;
          }

          v54 = 1;
        }

        goto LABEL_106;
      }

      v61 = *(v19 + 48);
      if (!v61)
      {
        v61 = *(v19 + 40);
      }

      if (*(v61 + 40) == v10)
      {
        goto LABEL_105;
      }

LABEL_101:
      v58 = "Incorrect number of attribute values specified.";
      goto LABEL_142;
    }

    if (*(v19 + 32))
    {
      if (v55 == 1)
      {
        v56 = *(v19 + 48);
        if (!v56)
        {
          v56 = *(v19 + 40);
        }

        if (*(v56 + 40) != v639)
        {
          goto LABEL_101;
        }

        goto LABEL_105;
      }
    }

    else
    {
      v60 = *(v19 + 48);
      if (!v60)
      {
        v60 = *(v19 + 40);
      }

      if (*(v60 + 40) != 1)
      {
        goto LABEL_101;
      }

LABEL_105:
      v54 = 0;
    }

LABEL_106:
    v62 = *(v53 + 33);
    if (v62 >= 0xC)
    {
      v58 = "Unexpected attribute type.";
      goto LABEL_142;
    }

    v619 = v19;
    v599 = byte_1E30FFBDC[v62];
    if (!v54)
    {
      if (*(v19 + 8))
      {
        v91 = *(v19 + 16);
      }

      else
      {
        v91 = (v19 + 9);
      }

      v92 = re::GeomMesh::addAttribute(&v638, v91, v55, byte_1E30FFBDC[v62]);
      v93 = v92;
      v48 = v14;
      if (v92)
      {
        goto LABEL_155;
      }

LABEL_278:
      v57 = v634;
      v632 = v659;
      v48 = v658[0];
      v90 = v658[1];
      v25 = v622;
      v26 = v594;
      goto LABEL_143;
    }

    v10 = *(v53 + 40);
    *&v685[2] = 0;
    memset(v685, 0, 28);
    v63 = re::DynamicArray<re::GeomCell4>::resize(v685, v642);
    v64 = v19;
    v65 = *(v19 + 48);
    if (!*(&v652[0] + 1))
    {
      v25 = v575;
      if (!v65)
      {
        if (v624)
        {
          v24 = 0;
          v164 = 0;
          v19 = *&v685[1];
          v165 = *&v685[2];
          v166 = v631;
          do
          {
            v167 = *v166;
            if (*v166 == 3)
            {
              if (v19 <= v24)
              {
                goto LABEL_1371;
              }

              v168 = -1;
            }

            else
            {
              if (v19 <= v24)
              {
                goto LABEL_1370;
              }

              v168 = v164 + 3;
            }

            v166 = (v166 + v9);
            *v165 = v164;
            *(v165 + 4) = vadd_s32(vdup_n_s32(v164), 0x200000001);
            *(v165 + 12) = v168;
            v164 += v167;
            ++v24;
            v165 += 16;
          }

          while (v575 != v24);
          v24 = 56;
          if (v10 < v164)
          {
            goto LABEL_291;
          }
        }

LABEL_139:
        v88 = *&v685[2];
        *&v685[2] = 0;
        ++DWORD2(v685[1]);
        LOBYTE(v686[0]) = 1;
        *(&v686[0] + 1) = *&v685[0];
        v89 = *(v685 + 8);
        memset(v685, 0, 24);
        v686[1] = v89;
        *(&v686[2] + 1) = v88;
        LODWORD(v686[2]) = 1;
        goto LABEL_140;
      }

      re::GeomModelDescriptor::AttributeData::makeConvertedIndices<unsigned int>(v19, v681);
      v118 = *&v681[1];
      if (*&v681[1])
      {
        v119 = *&v681[0];
        while (v10 > *v119)
        {
          v119 = (v119 + *(&v681[0] + 1));
          if (!--v118)
          {
            goto LABEL_188;
          }
        }

LABEL_236:
        LOBYTE(v686[0]) = 0;
        *(&v686[0] + 1) = 100;
        *&v686[1] = re::AssetErrorCategory(void)::instance;
        *(&v686[1] + 8) = *v658;
        *(&v686[2] + 8) = v659;
        v10 = v624;
        if (*&v681[2])
        {
          if (*(&v681[2] + 1))
          {
            (*(**&v681[2] + 40))(*&v681[2], *&v682[0]);
            *(&v681[2] + 1) = 0;
            *&v682[0] = 0;
          }

          *&v681[2] = 0;
        }

        if (*(&v681[1] + 1))
        {
        }

        v64 = v19;
        goto LABEL_243;
      }

LABEL_188:
      if (v624)
      {
        v3 = 0;
        v120 = 0;
        v19 = *&v685[1];
        v121 = *&v685[2];
        v122 = v631;
        v123 = v681[0];
        do
        {
          v124 = *v122;
          if (*v122 == 3)
          {
            if (v19 <= v3)
            {
              goto LABEL_1369;
            }

            v125 = *(v123 + *(&v123 + 1) * (v120 + 1));
            v126 = *(v123 + *(&v123 + 1) * (v120 + 2));
            *v121 = *(v123 + *(&v123 + 1) * v120);
            v127 = -1;
          }

          else
          {
            if (v19 <= v3)
            {
              goto LABEL_1368;
            }

            v125 = *(v123 + *(&v123 + 1) * (v120 + 1));
            v126 = *(v123 + *(&v123 + 1) * (v120 + 2));
            v127 = *(v123 + *(&v123 + 1) * (v120 + 3));
            *v121 = *(v123 + *(&v123 + 1) * v120);
          }

          v122 = (v122 + v9);
          v121[1] = v125;
          v121[2] = v126;
          v121[3] = v127;
          v120 += v124;
          ++v3;
          v121 += 4;
        }

        while (v575 != v3);
      }

      if (*&v681[2])
      {
        if (*(&v681[2] + 1))
        {
          (*(**&v681[2] + 40))(*&v681[2], *&v682[0]);
          *(&v681[2] + 1) = 0;
          *&v682[0] = 0;
        }

        *&v681[2] = 0;
      }

      v87 = *(&v681[1] + 1);
      if (!*(&v681[1] + 1))
      {
LABEL_138:
        v64 = v619;
        goto LABEL_139;
      }

LABEL_137:

      goto LABEL_138;
    }

    if (v65)
    {
      re::GeomModelDescriptor::AttributeData::makeConvertedIndices<unsigned int>(v19, v681);
      v67 = *&v681[1];
      if (*&v681[1])
      {
        v68 = *&v681[0];
        while (v10 > *v68)
        {
          v68 = (v68 + *(&v681[0] + 1));
          if (!--v67)
          {
            goto LABEL_114;
          }
        }

        goto LABEL_236;
      }

LABEL_114:
      v614 = v15;
      if (v624)
      {
        v26 = 0;
        v15 = 0;
        v10 = *&v685[1];
        v580 = *&v685[2];
        v587 = *(&v651 + 1);
        v12 = *(&v681[0] + 1);
        v577 = *&v681[0];
        do
        {
          v24 = *(v631 + v9 * v26);
          v69 = re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v651, v26);
          if (v69 == -1)
          {
            if (v24 == 3)
            {
              if (v10 <= v26)
              {
                goto LABEL_1390;
              }

              v82 = *(v577 + v12 * (v15 + 1));
              v83 = *(v577 + v12 * (v15 + 2));
              *(v580 + 16 * v26) = *(v577 + v12 * v15);
              v84 = v580;
              v85 = -1;
            }

            else
            {
              if (v10 <= v26)
              {
                goto LABEL_1391;
              }

              v82 = *(v577 + v12 * (v15 + 1));
              v83 = *(v577 + v12 * (v15 + 2));
              v85 = *(v577 + v12 * (v15 + 3));
              *(v580 + 16 * v26) = *(v577 + v12 * v15);
              v84 = v580;
            }

            v86 = (v84 + 16 * v26);
            v86[1] = v82;
            v86[2] = v83;
            v86[3] = v85;
          }

          else
          {
            v70 = &v587[96 * v69];
            v71 = *(v70 + 5);
            if (v71)
            {
              v72 = 0;
              v73 = *(v70 + 6);
              v74 = *&v685[2];
              v75 = v681[0];
              while (1)
              {
                v76 = *v73++;
                v25 = v76;
                if (v10 <= v76)
                {
                  break;
                }

                v3 = *(v70 + 9);
                if (v3 <= v72)
                {
                  goto LABEL_1321;
                }

                v19 = v72 + 1;
                if (v3 <= v72 + 1)
                {
                  goto LABEL_1322;
                }

                v19 = v72 + 2;
                if (v3 <= v72 + 2)
                {
                  goto LABEL_1323;
                }

                v77 = *(v70 + 11);
                v78 = *(v75 + *(&v75 + 1) * (*(v77 + 4 * v72) + v15));
                v79 = v77 + 4 * v72;
                v80 = *(v75 + *(&v75 + 1) * (*(v79 + 4) + v15));
                LODWORD(v79) = *(v75 + *(&v75 + 1) * (*(v79 + 8) + v15));
                v81 = (v74 + 16 * v25);
                *v81 = v78;
                v81[1] = v80;
                v81[2] = v79;
                v81[3] = -1;
                v72 += 3;
                if (!--v71)
                {
                  goto LABEL_131;
                }
              }

              v654 = 0;
              v662 = 0u;
              v661 = 0u;
              v660 = 0u;
              v659 = 0u;
              *v658 = 0u;
              v72 = MEMORY[0x1E69E9C10];
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v688 = 136315906;
              *&v688[4] = "operator[]";
              *&v688[12] = 1024;
              *&v688[14] = 789;
              *&v688[18] = 2048;
              *&v688[20] = v25;
              *&v688[28] = 2048;
              *&v688[30] = v10;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_1321:
              v654 = 0;
              v662 = 0u;
              v661 = 0u;
              v660 = 0u;
              v659 = 0u;
              *v658 = 0u;
              v19 = MEMORY[0x1E69E9C10];
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v688 = 136315906;
              *&v688[4] = "operator[]";
              *&v688[12] = 1024;
              *&v688[14] = 797;
              *&v688[18] = 2048;
              *&v688[20] = v72;
              *&v688[28] = 2048;
              *&v688[30] = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_1322:
              v654 = 0;
              v662 = 0u;
              v661 = 0u;
              v660 = 0u;
              v659 = 0u;
              *v658 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v688 = 136315906;
              *&v688[4] = "operator[]";
              *&v688[12] = 1024;
              *&v688[14] = 797;
              *&v688[18] = 2048;
              *&v688[20] = v19;
              *&v688[28] = 2048;
              *&v688[30] = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_1323:
              v654 = 0;
              v662 = 0u;
              v661 = 0u;
              v660 = 0u;
              v659 = 0u;
              *v658 = 0u;
              v9 = MEMORY[0x1E69E9C10];
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v688 = 136315906;
              *&v688[4] = "operator[]";
              *&v688[12] = 1024;
              *&v688[14] = 797;
              *&v688[18] = 2048;
              *&v688[20] = v19;
              *&v688[28] = 2048;
              *&v688[30] = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_1324:
              v552.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v681[1]);
              goto LABEL_1325;
            }
          }

LABEL_131:
          v15 = (v24 + v15);
          ++v26;
          v9 = v633;
        }

        while (v26 != v621);
      }

      if (*&v681[2])
      {
        if (*(&v681[2] + 1))
        {
          (*(**&v681[2] + 40))(*&v681[2], *&v682[0]);
          *(&v681[2] + 1) = 0;
          *&v682[0] = 0;
        }

        *&v681[2] = 0;
      }

      v87 = *(&v681[1] + 1);
      v12 = v597;
      v15 = v614;
      v24 = 56;
      if (!*(&v681[1] + 1))
      {
        goto LABEL_138;
      }

      goto LABEL_137;
    }

    if (!v624)
    {
      goto LABEL_139;
    }

    v616 = v15;
    v26 = 0;
    v134 = 0;
    v15 = *&v685[1];
    v581 = *&v685[2];
    v590 = *(&v651 + 1);
    do
    {
      v12 = *(v631 + v633 * v26);
      v63 = re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v651, v26);
      if (v63 == -1)
      {
        if (v12 == 3)
        {
          if (v15 <= v26)
          {
            goto LABEL_1393;
          }

          v146 = -1;
        }

        else
        {
          if (v15 <= v26)
          {
            goto LABEL_1392;
          }

          v146 = v134 + 3;
        }

        v147 = v581 + 16 * v26;
        *v147 = v134;
        *(v147 + 4) = vadd_s32(vdup_n_s32(v134), 0x200000001);
        *(v147 + 12) = v146;
      }

      else
      {
        v135 = (v590 + 96 * v63);
        v136 = v135[5];
        if (v136)
        {
          v137 = 0;
          v138 = v135[6];
          v139 = *&v685[2];
          v140 = 4;
          v141 = vdup_n_s32(v134);
          while (1)
          {
            v142 = *v138++;
            v25 = v142;
            if (v15 <= v142)
            {
              break;
            }

            v3 = v135[9];
            if (v3 <= v137)
            {
              goto LABEL_1354;
            }

            v19 = v137 + 1;
            if (v3 <= v137 + 1)
            {
              goto LABEL_1355;
            }

            v19 = v137 + 2;
            if (v3 <= v137 + 2)
            {
              goto LABEL_1356;
            }

            v143 = v139 + 16 * v25;
            v144 = v135[11];
            v145 = *(v144 + v140);
            *v143 = *(v144 + 4 * v137) + v134;
            *(v143 + 4) = vadd_s32(v145, v141);
            *(v143 + 12) = -1;
            v137 += 3;
            v140 += 12;
            if (!--v136)
            {
              goto LABEL_233;
            }
          }

          *v688 = 0;
          v662 = 0u;
          v661 = 0u;
          v660 = 0u;
          v659 = 0u;
          *v658 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v681[0]) = 136315906;
          *(v681 + 4) = "operator[]";
          WORD6(v681[0]) = 1024;
          *(v681 + 14) = 789;
          WORD1(v681[1]) = 2048;
          *(&v681[1] + 4) = v25;
          WORD6(v681[1]) = 2048;
          *(&v681[1] + 14) = v15;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_1354:
          *v688 = 0;
          v662 = 0u;
          v661 = 0u;
          v660 = 0u;
          v659 = 0u;
          *v658 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v681[0]) = 136315906;
          *(v681 + 4) = "operator[]";
          WORD6(v681[0]) = 1024;
          *(v681 + 14) = 797;
          WORD1(v681[1]) = 2048;
          *(&v681[1] + 4) = v137;
          WORD6(v681[1]) = 2048;
          *(&v681[1] + 14) = v3;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_1355:
          *v688 = 0;
          v662 = 0u;
          v661 = 0u;
          v660 = 0u;
          v659 = 0u;
          *v658 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v681[0]) = 136315906;
          *(v681 + 4) = "operator[]";
          WORD6(v681[0]) = 1024;
          *(v681 + 14) = 797;
          WORD1(v681[1]) = 2048;
          *(&v681[1] + 4) = v19;
          WORD6(v681[1]) = 2048;
          *(&v681[1] + 14) = v3;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_1356:
          *v688 = 0;
          v662 = 0u;
          v661 = 0u;
          v660 = 0u;
          v659 = 0u;
          *v658 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v681[0]) = 136315906;
          *(v681 + 4) = "operator[]";
          WORD6(v681[0]) = 1024;
          *(v681 + 14) = 797;
          WORD1(v681[1]) = 2048;
          *(&v681[1] + 4) = v19;
          WORD6(v681[1]) = 2048;
          *(&v681[1] + 14) = v3;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_1357:
          *&v686[0] = 0;
          v662 = 0u;
          v661 = 0u;
          v660 = 0u;
          v659 = 0u;
          *v658 = 0u;
          v24 = v50;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v681[0]) = 136315906;
          *(v681 + 4) = "operator[]";
          WORD6(v681[0]) = 1024;
          *(v681 + 14) = 797;
          WORD1(v681[1]) = 2048;
          *(&v681[1] + 4) = v24;
          WORD6(v681[1]) = 2048;
          *(&v681[1] + 14) = v19;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_1358;
        }
      }

LABEL_233:
      v134 += v12;
      ++v26;
      v24 = 56;
    }

    while (v26 != v621);
    v12 = v597;
    v15 = v616;
    v64 = v619;
    if (v10 >= v134)
    {
      goto LABEL_139;
    }

LABEL_291:
    v64 = v619;
    LOBYTE(v686[0]) = 0;
    *(&v686[0] + 1) = 100;
    *&v686[1] = re::AssetErrorCategory(void)::instance;
    *(&v686[1] + 8) = *v658;
    *(&v686[2] + 8) = v659;
LABEL_140:
    v10 = v624;
LABEL_243:
    if (*&v685[0] && *&v685[2])
    {
      (*(**&v685[0] + 40))(*&v685[0], *&v685[2]);
      v64 = v619;
    }

    v148 = v686[0];
    if (LOBYTE(v686[0]) == 1)
    {
      if (*(v64 + 8))
      {
        v149 = *(v64 + 16);
      }

      else
      {
        v149 = (v64 + 9);
      }

      v150 = *(v64 + 40);
      if (v150)
      {
        v151 = *(v150 + 40);
      }

      else
      {
        v151 = 0;
      }

      v93 = re::GeomMesh::addFaceVaryingAttribute(&v638, v149, v599, v151, v686 + 1);
      if (v686[0])
      {
        v92 = *(&v686[0] + 1);
        if (*(&v686[0] + 1) && *(&v686[2] + 1))
        {
          v92 = (*(**(&v686[0] + 1) + 40))(*(&v686[0] + 1), *(&v686[2] + 1));
        }

        v48 = v14;
        goto LABEL_276;
      }

      v48 = v14;
    }

    else
    {
      v93 = 0;
      LOBYTE(v627) = 0;
      v48 = *(&v686[1] + 1);
      v625 = *&v686[2];
      memset(&v686[1] + 8, 0, 32);
      v632 = *(&v686[2] + 1);
    }

    v92 = *(&v686[1] + 1);
    if (*(&v686[1] + 1) && (v686[2] & 1) != 0)
    {
      v19 = v48;
      v92 = (*(**(&v686[1] + 1) + 40))(*(&v686[1] + 1), *(&v686[2] + 1));
      v48 = v19;
    }

LABEL_276:
    v57 = v634;
    if ((v148 & 1) == 0)
    {
      if (v627)
      {
        LODWORD(v627) = 1;
        v25 = v622;
        v9 = v633;
        v26 = v594;
        goto LABEL_149;
      }

      v25 = v622;
      v9 = v633;
      v26 = v594;
      v90 = v625;
      goto LABEL_143;
    }

    v9 = v633;
    if (!v93)
    {
      goto LABEL_278;
    }

LABEL_155:
    v14 = *(v93 + 16);
    v615 = v48;
    if (v599 <= 4)
    {
      v105 = v619;
      if (v599 > 1)
      {
        v628 = *(v93 + 16);
        if (v599 != 2)
        {
          if (v599 == 3)
          {
            if (v14 == 4)
            {
              v106 = *(v619 + 48);
              if (v106 || (v106 = *(v619 + 40)) != 0)
              {
                v107 = *(v106 + 40);
              }

              else
              {
                v107 = 0;
              }

              (*(*v93 + 24))(v93, v107);
              v105 = v619;
            }

            v108 = *(v105 + 40);
            if (v108)
            {
              v109 = (v108 + 8);
              v110 = *(v108 + 33);
              if (v110 >= 6)
              {
                v111 = v110 == 5;
              }

              else
              {
                v111 = 0x30u >> v110;
              }

              if (v111 & 1) != 0 && (*(v108 + 32))
              {
                v112 = (v108 + 8);
                v113 = *(v108 + 48);
                v14 = *(v108 + 24) + *(v108 + 56);
                v19 = *(v108 + 40);
                v114 = (v108 + 8);

                v589 = 0;
                v115 = 0;
                v116 = 1;
                v117 = v108;
              }

              else
              {
                v270 = re::internal::DataPayload::computePoDConversionHelper<unsigned int>(v108, v658);
                if (LOBYTE(v658[0]) == 1)
                {
                  v589 = v658[1];
                  v19 = v659;
                  v113 = 4;
                  v115 = *(&v659 + 1);
                }

                else
                {
                  if (*(&v659 + 1) && (v660 & 1) != 0)
                  {
                    (*(**(&v659 + 1) + 40))(v270);
                  }

                  v589 = 0;
                  v19 = 0;
                  v115 = 0;
                  v113 = 0;
                }

                v117 = 0;
                v116 = v19 == 0;
                v14 = v115;
              }
            }

            else
            {
              v14 = 0;
              v113 = 0;
              v19 = 0;
              v115 = 0;
              v589 = 0;
              v117 = 0;
              v116 = 1;
            }

            v608 = v116;
            if ((*(*v93 + 16))(v93))
            {
              if (v93[5])
              {
                v10 = v93[7];
                v26 = (*(*v93 + 16))(v93);
                goto LABEL_744;
              }

LABEL_1412:
              *&v686[0] = 0;
              v662 = 0u;
              v661 = 0u;
              v660 = 0u;
              v659 = 0u;
              *v658 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v681[0]) = 136315906;
              *(v681 + 4) = "operator[]";
              WORD6(v681[0]) = 1024;
              *(v681 + 14) = 789;
              WORD1(v681[1]) = 2048;
              *(&v681[1] + 4) = 0;
              WORD6(v681[1]) = 2048;
              *(&v681[1] + 14) = 0;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_1413:
              *&v685[0] = 0;
              v662 = 0u;
              v661 = 0u;
              v660 = 0u;
              v659 = 0u;
              *v658 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v686[0]) = 136315906;
              *(v686 + 4) = "operator[]";
              WORD6(v686[0]) = 1024;
              *(v686 + 14) = 789;
              WORD1(v686[1]) = 2048;
              *(&v686[1] + 4) = 0;
              WORD6(v686[1]) = 2048;
              *(&v686[1] + 14) = 0;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_1414:
              *&v686[0] = 0;
              v662 = 0u;
              v661 = 0u;
              v660 = 0u;
              v659 = 0u;
              *v658 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v681[0]) = 136315906;
              *(v681 + 4) = "operator[]";
              WORD6(v681[0]) = 1024;
              *(v681 + 14) = 789;
              WORD1(v681[1]) = 2048;
              *(&v681[1] + 4) = 0;
              WORD6(v681[1]) = 2048;
              *(&v681[1] + 14) = 0;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_1415;
            }

            v26 = 0;
            v10 = 0;
LABEL_744:
            v25 = v117;
            v583 = v115;
            if (v628 != 3 && *(v619 + 48) != 0)
            {
              re::GeomModelDescriptor::AttributeData::makeConvertedIndices<unsigned int>(v619, v681);
              v357 = v681[1];
              v358 = LODWORD(v681[1]);
              if (LODWORD(v681[1]))
              {
                v3 = 0;
                v360 = *(&v681[0] + 1);
                v359 = *&v681[0];
                v12 = v26;
                do
                {
                  v361 = *v359;
                  if (v361 < v19)
                  {
                    if (v3 >= v26)
                    {
                      goto LABEL_1402;
                    }

                    *(v10 + 4 * v3) = *(v14 + v113 * v361);
                  }

                  v359 = (v359 + v360);
                  ++v3;
                }

                while (v358 != v3);
              }

              v12 = v597;
              v3 = v25;
              v280 = v608;
              if (v628 == 2 && v26 > v357)
              {
                while (2)
                {
                  LODWORD(v658[0]) = v358;
                  if (v645 == 2)
                  {
                    v363 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v646, v658);
                    if (v363 != -1)
                    {
                      v362 = *(v647 + 8 * v363 + 4);
                      goto LABEL_788;
                    }
                  }

                  else
                  {
                    if (v645 != 1)
                    {
                      if (v645)
                      {
                        goto LABEL_1434;
                      }

                      if (v358 >= v646)
                      {
                        v362 = -1;
                      }

                      else
                      {
                        v362 = v358;
                      }

LABEL_788:
                      v364 = *(*&v681[0] + *(&v681[0] + 1) * v362);
                      if (v364 < v19)
                      {
                        *(v10 + 4 * v358) = *(v14 + v113 * v364);
                      }

                      if (v26 == ++v358)
                      {
                        goto LABEL_849;
                      }

                      continue;
                    }

                    if (v648 > v358)
                    {
                      v362 = *(v650 + 4 * v358);
                      goto LABEL_788;
                    }
                  }

                  break;
                }

                v362 = -1;
                goto LABEL_788;
              }

LABEL_849:
              if (*&v681[2])
              {
                if (*(&v681[2] + 1))
                {
                  (*(**&v681[2] + 40))(*&v681[2], *&v682[0]);
                  *(&v681[2] + 1) = 0;
                  *&v682[0] = 0;
                }

                *&v681[2] = 0;
              }

              if (*(&v681[1] + 1))
              {
              }

LABEL_855:
              v383 = v589;
              if (v589 == 0 || v280)
              {
                goto LABEL_1061;
              }

              v384 = *(*v589 + 40);
LABEL_857:
              v385 = v583;
              goto LABEL_1060;
            }

            if (v19)
            {
              v3 = v26;
              v349 = v19;
              v350 = v26;
              v351 = v10;
              v352 = v14;
              while (v350)
              {
                *v351++ = *v352;
                v352 = (v352 + v113);
                --v350;
                if (!--v349)
                {
                  goto LABEL_753;
                }
              }

              goto LABEL_1378;
            }

LABEL_753:
            v3 = v25;
            v280 = v608;
            if (v628 != 2)
            {
              goto LABEL_855;
            }

            v353 = v26 - v19;
            if (v26 <= v19)
            {
              goto LABEL_855;
            }

            v19 = v19;
            while (2)
            {
              LODWORD(v658[0]) = v19;
              if (v645 == 2)
              {
                v355 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v646, v658);
                if (v355 != -1)
                {
                  v354 = *(v647 + 8 * v355 + 4);
                  goto LABEL_767;
                }
              }

              else
              {
                if (v645 != 1)
                {
                  if (v645)
                  {
                    goto LABEL_1450;
                  }

                  if (v19 >= v646)
                  {
                    v354 = -1;
                  }

                  else
                  {
                    v354 = v19;
                  }

LABEL_767:
                  *(v10 + 4 * v19++) = *(v14 + v113 * v354);
                  if (!--v353)
                  {
                    goto LABEL_855;
                  }

                  continue;
                }

                if (v648 > v19)
                {
                  v354 = *(v650 + 4 * v19);
                  goto LABEL_767;
                }
              }

              break;
            }

            v354 = -1;
            goto LABEL_767;
          }

          if (v14 == 4)
          {
            v201 = *(v619 + 48);
            if (v201 || (v201 = *(v619 + 40)) != 0)
            {
              v202 = *(v201 + 40);
            }

            else
            {
              v202 = 0;
            }

            (*(*v93 + 24))(v93, v202);
            v105 = v619;
          }

          v203 = *(v105 + 40);
          if (v203)
          {
            v204 = (v203 + 8);
            if (*(v203 + 32) == 1 && *(v203 + 33) == 6)
            {
              v205 = (v203 + 8);
              v206 = *(v203 + 48);
              v14 = *(v203 + 24) + *(v203 + 56);
              v19 = *(v203 + 40);
              v207 = (v203 + 8);

              v589 = 0;
              v208 = 0;
              v209 = 1;
              v210 = v203;
            }

            else
            {
              v271 = re::internal::DataPayload::computePoDConversionHelper<float>(v203, v658);
              if (LOBYTE(v658[0]) == 1)
              {
                v589 = v658[1];
                v19 = v659;
                v206 = 4;
                v208 = *(&v659 + 1);
              }

              else
              {
                if (*(&v659 + 1) && (v660 & 1) != 0)
                {
                  (*(**(&v659 + 1) + 40))(v271);
                }

                v589 = 0;
                v19 = 0;
                v208 = 0;
                v206 = 0;
              }

              v210 = 0;
              v209 = v19 == 0;
              v14 = v208;
            }
          }

          else
          {
            v14 = 0;
            v206 = 0;
            v19 = 0;
            v208 = 0;
            v589 = 0;
            v210 = 0;
            v209 = 1;
          }

          v609 = v209;
          if ((*(*v93 + 16))(v93))
          {
            if (!v93[5])
            {
              goto LABEL_1419;
            }

            v10 = v93[7];
            v26 = (*(*v93 + 16))(v93);
          }

          else
          {
            v26 = 0;
            v10 = 0;
          }

          v25 = v210;
          v583 = v208;
          if (v628 != 3 && *(v619 + 48) != 0)
          {
            re::GeomModelDescriptor::AttributeData::makeConvertedIndices<unsigned int>(v619, v681);
            v375 = v681[1];
            v376 = LODWORD(v681[1]);
            if (LODWORD(v681[1]))
            {
              v3 = 0;
              v378 = *(&v681[0] + 1);
              v377 = *&v681[0];
              v12 = v26;
              do
              {
                v379 = *v377;
                if (v379 < v19)
                {
                  if (v3 >= v26)
                  {
                    goto LABEL_1408;
                  }

                  *(v10 + 4 * v3) = *(v14 + v206 * v379);
                }

                v377 = (v377 + v378);
                ++v3;
              }

              while (v376 != v3);
            }

            v12 = v597;
            v3 = v25;
            v280 = v609;
            if (v628 != 2 || v26 <= v375)
            {
              goto LABEL_849;
            }

            while (2)
            {
              LODWORD(v658[0]) = v376;
              if (v645 == 2)
              {
                v381 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v646, v658);
                if (v381 != -1)
                {
                  v380 = *(v647 + 8 * v381 + 4);
                  goto LABEL_846;
                }
              }

              else
              {
                if (v645 != 1)
                {
                  if (v645)
                  {
                    goto LABEL_1438;
                  }

                  if (v376 >= v646)
                  {
                    v380 = -1;
                  }

                  else
                  {
                    v380 = v376;
                  }

LABEL_846:
                  v382 = *(*&v681[0] + *(&v681[0] + 1) * v380);
                  if (v382 < v19)
                  {
                    *(v10 + 4 * v376) = *(v14 + v206 * v382);
                  }

                  if (v26 == ++v376)
                  {
                    goto LABEL_849;
                  }

                  continue;
                }

                if (v648 > v376)
                {
                  v380 = *(v650 + 4 * v376);
                  goto LABEL_846;
                }
              }

              break;
            }

            v380 = -1;
            goto LABEL_846;
          }

          if (v19)
          {
            v3 = v26;
            v367 = v19;
            v368 = v26;
            v369 = v10;
            v370 = v14;
            while (v368)
            {
              *v369++ = *v370;
              v370 = (v370 + v206);
              --v368;
              if (!--v367)
              {
                goto LABEL_811;
              }
            }

            goto LABEL_1375;
          }

LABEL_811:
          v3 = v25;
          v280 = v609;
          if (v628 != 2)
          {
            goto LABEL_855;
          }

          v371 = v26 - v19;
          if (v26 <= v19)
          {
            goto LABEL_855;
          }

          v19 = v19;
          while (2)
          {
            LODWORD(v658[0]) = v19;
            if (v645 == 2)
            {
              v373 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v646, v658);
              if (v373 != -1)
              {
                v372 = *(v647 + 8 * v373 + 4);
                goto LABEL_825;
              }
            }

            else
            {
              if (v645 != 1)
              {
                if (v645)
                {
                  goto LABEL_1453;
                }

                if (v19 >= v646)
                {
                  v372 = -1;
                }

                else
                {
                  v372 = v19;
                }

LABEL_825:
                *(v10 + 4 * v19++) = *(v14 + v206 * v372);
                if (!--v371)
                {
                  goto LABEL_855;
                }

                continue;
              }

              if (v648 > v19)
              {
                v372 = *(v650 + 4 * v19);
                goto LABEL_825;
              }
            }

            break;
          }

          v372 = -1;
          goto LABEL_825;
        }

        if (v14 == 4)
        {
          v169 = *(v619 + 48);
          if (v169 || (v169 = *(v619 + 40)) != 0)
          {
            v170 = *(v169 + 40);
          }

          else
          {
            v170 = 0;
          }

          (*(*v93 + 24))(v93, v170);
          v105 = v619;
        }

        v171 = *(v105 + 40);
        if (v171)
        {
          v172 = (v171 + 8);
          v173 = *(v171 + 33);
          if (v173 >= 6)
          {
            v174 = v173 == 4;
          }

          else
          {
            v174 = 0x30u >> v173;
          }

          if (v174 & 1) != 0 && (*(v171 + 32))
          {
            v175 = (v171 + 8);
            v176 = *(v171 + 48);
            v14 = *(v171 + 24) + *(v171 + 56);
            v19 = *(v171 + 40);
            v177 = (v171 + 8);

            v589 = 0;
            v178 = 0;
            v179 = 1;
            v180 = v171;
          }

          else
          {
            v267 = re::internal::DataPayload::computePoDConversionHelper<int>(v171, v658);
            if (LOBYTE(v658[0]) == 1)
            {
              v589 = v658[1];
              v19 = v659;
              v176 = 4;
              v178 = *(&v659 + 1);
            }

            else
            {
              if (*(&v659 + 1) && (v660 & 1) != 0)
              {
                (*(**(&v659 + 1) + 40))(v267);
              }

              v589 = 0;
              v19 = 0;
              v178 = 0;
              v176 = 0;
            }

            v180 = 0;
            v179 = v19 == 0;
            v14 = v178;
          }
        }

        else
        {
          v14 = 0;
          v176 = 0;
          v19 = 0;
          v178 = 0;
          v589 = 0;
          v180 = 0;
          v179 = 1;
        }

        v605 = v179;
        if ((*(*v93 + 16))(v93))
        {
          if (!v93[5])
          {
            goto LABEL_1414;
          }

          v10 = v93[7];
          v26 = (*(*v93 + 16))(v93);
        }

        else
        {
          v26 = 0;
          v10 = 0;
        }

        v25 = v180;
        v583 = v178;
        if (v628 != 3 && *(v619 + 48) != 0)
        {
          re::GeomModelDescriptor::AttributeData::makeConvertedIndices<unsigned int>(v619, v681);
          v305 = v681[1];
          v306 = LODWORD(v681[1]);
          if (LODWORD(v681[1]))
          {
            v3 = 0;
            v308 = *(&v681[0] + 1);
            v307 = *&v681[0];
            v12 = v26;
            do
            {
              v309 = *v307;
              if (v309 < v19)
              {
                if (v3 >= v26)
                {
                  goto LABEL_1410;
                }

                *(v10 + 4 * v3) = *(v14 + v176 * v309);
              }

              v307 = (v307 + v308);
              ++v3;
            }

            while (v306 != v3);
          }

          v12 = v597;
          v3 = v25;
          v280 = v605;
          if (v628 != 2 || v26 <= v305)
          {
            goto LABEL_849;
          }

          while (2)
          {
            LODWORD(v658[0]) = v306;
            if (v645 == 2)
            {
              v311 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v646, v658);
              if (v311 != -1)
              {
                v310 = *(v647 + 8 * v311 + 4);
                goto LABEL_610;
              }
            }

            else
            {
              if (v645 != 1)
              {
                if (v645)
                {
                  goto LABEL_1440;
                }

                if (v306 >= v646)
                {
                  v310 = -1;
                }

                else
                {
                  v310 = v306;
                }

LABEL_610:
                v312 = *(*&v681[0] + *(&v681[0] + 1) * v310);
                if (v312 < v19)
                {
                  *(v10 + 4 * v306) = *(v14 + v176 * v312);
                }

                if (v26 == ++v306)
                {
                  goto LABEL_849;
                }

                continue;
              }

              if (v648 > v306)
              {
                v310 = *(v650 + 4 * v306);
                goto LABEL_610;
              }
            }

            break;
          }

          v310 = -1;
          goto LABEL_610;
        }

        if (v19)
        {
          v3 = v26;
          v297 = v19;
          v298 = v26;
          v299 = v10;
          v300 = v14;
          while (v298)
          {
            *v299++ = *v300;
            v300 = (v300 + v176);
            --v298;
            if (!--v297)
            {
              goto LABEL_575;
            }
          }

          goto LABEL_1383;
        }

LABEL_575:
        v3 = v25;
        v280 = v605;
        if (v628 != 2)
        {
          goto LABEL_855;
        }

        v301 = v26 - v19;
        if (v26 <= v19)
        {
          goto LABEL_855;
        }

        v19 = v19;
        while (2)
        {
          LODWORD(v658[0]) = v19;
          if (v645 == 2)
          {
            v303 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v646, v658);
            if (v303 != -1)
            {
              v302 = *(v647 + 8 * v303 + 4);
              goto LABEL_589;
            }
          }

          else
          {
            if (v645 != 1)
            {
              if (v645)
              {
                goto LABEL_1445;
              }

              if (v19 >= v646)
              {
                v302 = -1;
              }

              else
              {
                v302 = v19;
              }

LABEL_589:
              *(v10 + 4 * v19++) = *(v14 + v176 * v302);
              if (!--v301)
              {
                goto LABEL_855;
              }

              continue;
            }

            if (v648 > v19)
            {
              v302 = *(v650 + 4 * v19);
              goto LABEL_589;
            }
          }

          break;
        }

        v302 = -1;
        goto LABEL_589;
      }

      if (!v599)
      {
        if (v14 == 4)
        {
          v152 = *(v619 + 48);
          if (v152 || (v152 = *(v619 + 40)) != 0)
          {
            v153 = *(v152 + 40);
          }

          else
          {
            v153 = 0;
          }

          (*(*v93 + 24))(v93, v153);
          v105 = v619;
        }

        v154 = *(v105 + 40);
        v629 = v14;
        if (v154)
        {
          v155 = (v154 + 8);
          v156 = *(v154 + 33);
          if (v156 >= 6)
          {
            v157 = v156 == 2;
          }

          else
          {
            v157 = 0xCu >> v156;
          }

          if (v157 & 1) != 0 && (*(v154 + 32))
          {
            v158 = (v154 + 8);
            v159 = *(v154 + 48);
            v600 = (*(v154 + 24) + *(v154 + 56));
            v19 = *(v154 + 40);
            v160 = (v154 + 8);

            v25 = 0;
            v161 = 0;
            v162 = 1;
            v163 = v154;
          }

          else
          {
            re::internal::DataPayload::computePoDConversionHelper<short>(v154, v658);
            if (LOBYTE(v658[0]) == 1)
            {
              v25 = v658[1];
              v19 = v659;
              v159 = 2;
              v161 = *(&v659 + 1);
            }

            else
            {
              if (*(&v659 + 1) && (v660 & 1) != 0)
              {
                (*(**(&v659 + 1) + 40))(*(&v659 + 1), *(&v660 + 1));
              }

              v25 = 0;
              v19 = 0;
              v161 = 0;
              v159 = 0;
            }

            v163 = 0;
            v162 = v19 == 0;
            v600 = v161;
          }
        }

        else
        {
          v600 = 0;
          v159 = 0;
          v19 = 0;
          v161 = 0;
          v25 = 0;
          v163 = 0;
          v162 = 1;
        }

        v592 = v162;
        if ((*(*v93 + 16))(v93))
        {
          if (!v93[5])
          {
            goto LABEL_1417;
          }

          v10 = v93[7];
          v26 = (*(*v93 + 16))(v93);
        }

        else
        {
          v26 = 0;
          v10 = 0;
        }

        v14 = v163;
        v583 = v161;
        if (v629 == 3 || *(v619 + 48) == 0)
        {
          v388 = v600;
          if (v19)
          {
            v3 = v26;
            v389 = v19;
            v390 = v26;
            v391 = v10;
            v392 = v600;
            while (v390)
            {
              *v391++ = *v392;
              v392 = (v392 + v159);
              --v390;
              if (!--v389)
              {
                goto LABEL_877;
              }
            }

            goto LABEL_1382;
          }

LABEL_877:
          v3 = v14;
          v14 = v592;
          if (v629 == 2)
          {
            v393 = v26 - v19;
            if (v26 > v19)
            {
              v19 = v19;
              do
              {
                LODWORD(v658[0]) = v19;
                if (v645 == 2)
                {
                  v395 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v646, v658);
                  if (v395 == -1)
                  {
                    v394 = -1;
                  }

                  else
                  {
                    v394 = *(v647 + 8 * v395 + 4);
                  }

                  v388 = v600;
                }

                else if (v645 == 1)
                {
                  if (v648 <= v19)
                  {
                    v394 = -1;
                  }

                  else
                  {
                    v394 = *(v650 + 4 * v19);
                  }
                }

                else
                {
                  if (v645)
                  {
                    goto LABEL_1448;
                  }

                  if (v19 >= v646)
                  {
                    v394 = -1;
                  }

                  else
                  {
                    v394 = v19;
                  }
                }

                *(v10 + 2 * v19++) = *(v388 + v159 * v394);
                --v393;
              }

              while (v393);
            }
          }
        }

        else
        {
          re::GeomModelDescriptor::AttributeData::makeConvertedIndices<unsigned int>(v619, v681);
          v397 = v681[1];
          v398 = LODWORD(v681[1]);
          v399 = v600;
          if (LODWORD(v681[1]))
          {
            v3 = 0;
            v401 = *(&v681[0] + 1);
            v400 = *&v681[0];
            v12 = v26;
            do
            {
              v402 = *v400;
              if (v402 < v19)
              {
                if (v3 >= v26)
                {
                  goto LABEL_1409;
                }

                *(v10 + 2 * v3) = *(v600 + v159 * v402);
              }

              v400 = (v400 + v401);
              ++v3;
            }

            while (v398 != v3);
          }

          v12 = v597;
          v3 = v14;
          v14 = v592;
          if (v629 == 2 && v26 > v397)
          {
            do
            {
              LODWORD(v658[0]) = v398;
              if (v645 == 2)
              {
                v404 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v646, v658);
                if (v404 == -1)
                {
                  v403 = -1;
                }

                else
                {
                  v403 = *(v647 + 8 * v404 + 4);
                }

                v399 = v600;
              }

              else if (v645 == 1)
              {
                if (v648 <= v398)
                {
                  v403 = -1;
                }

                else
                {
                  v403 = *(v650 + 4 * v398);
                }
              }

              else
              {
                if (v645)
                {
                  goto LABEL_1432;
                }

                if (v398 >= v646)
                {
                  v403 = -1;
                }

                else
                {
                  v403 = v398;
                }
              }

              v405 = *(*&v681[0] + *(&v681[0] + 1) * v403);
              if (v405 < v19)
              {
                *(v10 + 2 * v398) = *(v399 + v159 * v405);
              }

              ++v398;
            }

            while (v26 != v398);
          }

          if (*&v681[2])
          {
            if (*(&v681[2] + 1))
            {
              (*(**&v681[2] + 40))(*&v681[2], *&v682[0]);
              *(&v681[2] + 1) = 0;
              *&v682[0] = 0;
            }

            *&v681[2] = 0;
          }

          if (*(&v681[1] + 1))
          {
          }
        }

        if ((v25 == 0) | v14 & 1)
        {
          goto LABEL_1061;
        }

        v384 = *(*v25 + 40);
        v383 = v25;
        goto LABEL_857;
      }

      if (v14 == 4)
      {
        v211 = *(v619 + 48);
        if (v211 || (v211 = *(v619 + 40)) != 0)
        {
          v212 = *(v211 + 40);
        }

        else
        {
          v212 = 0;
        }

        (*(*v93 + 24))(v93, v212);
        v105 = v619;
      }

      v213 = *(v105 + 40);
      if (v213)
      {
        v214 = (v213 + 8);
        v215 = *(v213 + 33);
        if (v215 >= 6)
        {
          v216 = v215 == 3;
        }

        else
        {
          v216 = 0xCu >> v215;
        }

        if (v216 & 1) != 0 && (*(v213 + 32))
        {
          v217 = (v213 + 8);
          v218 = *(v213 + 48);
          v25 = *(v213 + 24) + *(v213 + 56);
          v10 = *(v213 + 40);
          v219 = (v213 + 8);

          v220 = 0;
          v578 = 0;
          v582 = 1;
          v591 = v213;
        }

        else
        {
          re::internal::DataPayload::computePoDConversionHelper<unsigned short>(v213, v658);
          if (LOBYTE(v658[0]) == 1)
          {
            v220 = v658[1];
            v10 = v659;
            v218 = 2;
            v25 = *(&v659 + 1);
          }

          else
          {
            if (*(&v659 + 1) && (v660 & 1) != 0)
            {
              (*(**(&v659 + 1) + 40))(*(&v659 + 1), *(&v660 + 1));
            }

            v220 = 0;
            v10 = 0;
            v25 = 0;
            v218 = 0;
          }

          v591 = 0;
          v582 = v10 == 0;
          v578 = v25;
        }
      }

      else
      {
        v25 = 0;
        v218 = 0;
        v10 = 0;
        v578 = 0;
        v220 = 0;
        v591 = 0;
        v582 = 1;
      }

      if ((*(*v93 + 16))(v93))
      {
        v19 = re::internal::GeomTypedAttribute<unsigned short>::operator[](v93);
        v26 = (*(*v93 + 16))(v93);
      }

      else
      {
        v26 = 0;
        v19 = 0;
      }

      v407 = v14 == 3 || *(v619 + 48) == 0;
      v610 = v220;
      if (!v407)
      {
        re::GeomModelDescriptor::AttributeData::makeConvertedIndices<unsigned int>(v619, v681);
        v416 = v681[1];
        v417 = LODWORD(v681[1]);
        if (LODWORD(v681[1]))
        {
          v3 = 0;
          v419 = *(&v681[0] + 1);
          v418 = *&v681[0];
          v12 = v26;
          do
          {
            v420 = *v418;
            if (v420 < v10)
            {
              if (v3 >= v26)
              {
                goto LABEL_1400;
              }

              *(v19 + 2 * v3) = *(v25 + v218 * v420);
            }

            v418 = (v418 + v419);
            ++v3;
          }

          while (v417 != v3);
        }

        v12 = v597;
        if (v14 == 2 && v26 > v416)
        {
          while (2)
          {
            LODWORD(v658[0]) = v417;
            if (v645 == 2)
            {
              v422 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v646, v658);
              if (v422 != -1)
              {
                v421 = *(v647 + 8 * v422 + 4);
                goto LABEL_980;
              }
            }

            else
            {
              if (v645 != 1)
              {
                if (v645)
                {
                  goto LABEL_1436;
                }

                if (v417 >= v646)
                {
                  v421 = -1;
                }

                else
                {
                  v421 = v417;
                }

LABEL_980:
                v423 = *(*&v681[0] + *(&v681[0] + 1) * v421);
                if (v423 < v10)
                {
                  *(v19 + 2 * v417) = *(v25 + v218 * v423);
                }

                if (v26 == ++v417)
                {
                  goto LABEL_983;
                }

                continue;
              }

              if (v648 > v417)
              {
                v421 = *(v650 + 4 * v417);
                goto LABEL_980;
              }
            }

            break;
          }

          v421 = -1;
          goto LABEL_980;
        }

LABEL_983:
        if (*&v681[2])
        {
          if (*(&v681[2] + 1))
          {
            (*(**&v681[2] + 40))(*&v681[2], *&v682[0]);
            *(&v681[2] + 1) = 0;
            *&v682[0] = 0;
          }

          *&v681[2] = 0;
        }

        if (*(&v681[1] + 1))
        {
        }

LABEL_989:
        if (v610 != 0 && !v582)
        {
          (*(*v610 + 40))(v610, v578);
        }

        v25 = v622;
        v10 = v624;
        v9 = v633;
        v26 = v594;
        v24 = 56;
        v266 = v591;
        if (!v591)
        {
          goto LABEL_1064;
        }

LABEL_992:
        v424 = (v266 + 8);
        goto LABEL_1063;
      }

      if (v10)
      {
        v3 = v26;
        v408 = v10;
        v409 = v26;
        v410 = v19;
        v411 = v25;
        while (v409)
        {
          *v410++ = *v411;
          v411 = (v411 + v218);
          --v409;
          if (!--v408)
          {
            goto LABEL_945;
          }
        }

        goto LABEL_1373;
      }

LABEL_945:
      if (v14 != 2)
      {
        goto LABEL_989;
      }

      v412 = v26 - v10;
      if (v26 <= v10)
      {
        goto LABEL_989;
      }

      v3 = v10;
      while (2)
      {
        LODWORD(v658[0]) = v3;
        if (v645 == 2)
        {
          v414 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v646, v658);
          if (v414 != -1)
          {
            v413 = *(v647 + 8 * v414 + 4);
            goto LABEL_959;
          }
        }

        else
        {
          if (v645 != 1)
          {
            if (v645)
            {
              goto LABEL_1443;
            }

            if (v3 >= v646)
            {
              v413 = -1;
            }

            else
            {
              v413 = v3;
            }

LABEL_959:
            *(v19 + 2 * v3++) = *(v25 + v218 * v413);
            if (!--v412)
            {
              goto LABEL_989;
            }

            continue;
          }

          if (v648 > v3)
          {
            v413 = *(v650 + 4 * v3);
            goto LABEL_959;
          }
        }

        break;
      }

      v413 = -1;
      goto LABEL_959;
    }

    v94 = v619;
    if (v599 > 7)
    {
      if (v599 != 8)
      {
        if (v599 == 9)
        {
          if (v14 == 4)
          {
            v128 = *(v619 + 48);
            if (v128 || (v128 = *(v619 + 40)) != 0)
            {
              v129 = *(v128 + 40);
            }

            else
            {
              v129 = 0;
            }

            (*(*v93 + 24))(v93, v129);
            v94 = v619;
          }

          v130 = *(v94 + 40);
          v658[0] = v130;
          if (v130)
          {
            v131 = v130 + 8;
          }

          re::GeomModelDescriptor::makeConvertedValues<unsigned char>(v658, v681);
          if (v658[0])
          {
          }

          if ((*(*v93 + 16))(v93))
          {
            if (!v93[5])
            {
              goto LABEL_1413;
            }

            v133 = v93[7];
            v19 = (*(*v93 + 16))(v93);
          }

          else
          {
            v19 = 0;
            v133 = 0;
          }

          v238 = v14 == 3 || *(v619 + 48) == 0;
          if (!v238)
          {
            v244 = v12;
            re::GeomModelDescriptor::AttributeData::makeConvertedIndices<unsigned int>(v619, v686);
            v246 = v681[1];
            v247 = v686[1];
            v3 = LODWORD(v686[1]);
            if (LODWORD(v686[1]))
            {
              v25 = 0;
              v12 = v19;
              do
              {
                v248 = *(*&v686[0] + *(&v686[0] + 1) * v25);
                if (v248 < v246)
                {
                  if (v25 >= v19)
                  {
                    goto LABEL_1407;
                  }

                  *(v133 + v25) = *(*&v681[0] + *(&v681[0] + 1) * v248);
                }

                ++v25;
              }

              while (v247 != v25);
            }

            v12 = v244;
            v25 = v622;
            v26 = v594;
            if (v14 == 2 && v19 > v247)
            {
              while (2)
              {
                LODWORD(v658[0]) = v3;
                if (v645 == 2)
                {
                  v250 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v646, v658);
                  if (v250 != -1)
                  {
                    v249 = *(v647 + 8 * v250 + 4);
                    goto LABEL_418;
                  }
                }

                else
                {
                  if (v645 != 1)
                  {
                    if (v645)
                    {
                      goto LABEL_1437;
                    }

                    if (v3 >= v646)
                    {
                      v249 = -1;
                    }

                    else
                    {
                      v249 = v3;
                    }

LABEL_418:
                    v251 = *(*&v686[0] + *(&v686[0] + 1) * v249);
                    if (v251 < v246)
                    {
                      *(v133 + v3) = *(*&v681[0] + *(&v681[0] + 1) * v251);
                    }

                    if (v19 == ++v3)
                    {
                      goto LABEL_470;
                    }

                    continue;
                  }

                  if (v648 > v3)
                  {
                    v249 = *(v650 + 4 * v3);
                    goto LABEL_418;
                  }
                }

                break;
              }

              v249 = -1;
              goto LABEL_418;
            }

LABEL_470:
            if (*&v686[2])
            {
              if (*(&v686[2] + 1))
              {
                (*(**&v686[2] + 40))(*&v686[2], *&v686[3]);
                *(&v686[2] + 1) = 0;
                *&v686[3] = 0;
              }

              *&v686[2] = 0;
            }

            if (*(&v686[1] + 1))
            {
            }

LABEL_476:
            v9 = v633;
            v24 = 56;
            if (*&v681[2])
            {
              if (*(&v681[2] + 1))
              {
                (*(**&v681[2] + 40))(*&v681[2], *&v682[0]);
                *(&v681[2] + 1) = 0;
                *&v682[0] = 0;
              }

              *&v681[2] = 0;
            }

            v266 = *(&v681[1] + 1);
            if (!*(&v681[1] + 1))
            {
              goto LABEL_1064;
            }

            goto LABEL_992;
          }

          v239 = v681[1];
          v240 = LODWORD(v681[1]);
          v25 = v622;
          v26 = v594;
          if (LODWORD(v681[1]))
          {
            v241 = 0;
            v3 = v19;
            while (v19 != v241)
            {
              *(v133 + v241) = *(*&v681[0] + *(&v681[0] + 1) * v241);
              if (v240 == ++v241)
              {
                goto LABEL_384;
              }
            }

            goto LABEL_1380;
          }

LABEL_384:
          if (v14 != 2 || v19 <= v239)
          {
            goto LABEL_476;
          }

          while (2)
          {
            LODWORD(v658[0]) = v240;
            if (v645 == 2)
            {
              v243 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v646, v658);
              if (v243 != -1)
              {
                v242 = *(v647 + 8 * v243 + 4);
                goto LABEL_397;
              }
            }

            else
            {
              if (v645 != 1)
              {
                if (v645)
                {
                  goto LABEL_1452;
                }

                if (v240 >= v646)
                {
                  v242 = -1;
                }

                else
                {
                  v242 = v240;
                }

LABEL_397:
                *(v133 + v240++) = *(*&v681[0] + *(&v681[0] + 1) * v242);
                if (v19 == v240)
                {
                  goto LABEL_476;
                }

                continue;
              }

              if (v648 > v240)
              {
                v242 = *(v650 + 4 * v240);
                goto LABEL_397;
              }
            }

            break;
          }

          v242 = -1;
          goto LABEL_397;
        }

        if (v14 == 4)
        {
          v231 = *(v619 + 48);
          if (v231 || (v231 = *(v619 + 40)) != 0)
          {
            v232 = *(v231 + 40);
          }

          else
          {
            v232 = 0;
          }

          (*(*v93 + 24))(v93, v232);
          v94 = v619;
        }

        v233 = *(v94 + 40);
        v658[0] = v233;
        if (v233)
        {
          v234 = v233 + 8;
        }

        re::GeomModelDescriptor::makeConvertedValues<signed char>(v658, v681);
        if (v658[0])
        {
        }

        if ((*(*v93 + 16))(v93))
        {
          if (!v93[5])
          {
            goto LABEL_1420;
          }

          v236 = v93[7];
          v19 = (*(*v93 + 16))(v93);
        }

        else
        {
          v19 = 0;
          v236 = 0;
        }

        if (v14 != 3 && *(v619 + 48) != 0)
        {
          v258 = v12;
          re::GeomModelDescriptor::AttributeData::makeConvertedIndices<unsigned int>(v619, v686);
          v260 = v681[1];
          v261 = v686[1];
          v3 = LODWORD(v686[1]);
          if (LODWORD(v686[1]))
          {
            v25 = 0;
            v12 = v19;
            do
            {
              v262 = *(*&v686[0] + *(&v686[0] + 1) * v25);
              if (v262 < v260)
              {
                if (v25 >= v19)
                {
                  goto LABEL_1401;
                }

                *(v236 + v25) = *(*&v681[0] + *(&v681[0] + 1) * v262);
              }

              ++v25;
            }

            while (v261 != v25);
          }

          v12 = v258;
          v25 = v622;
          v26 = v594;
          if (v14 != 2 || v19 <= v261)
          {
            goto LABEL_470;
          }

          while (2)
          {
            LODWORD(v658[0]) = v3;
            if (v645 == 2)
            {
              v264 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v646, v658);
              if (v264 != -1)
              {
                v263 = *(v647 + 8 * v264 + 4);
                goto LABEL_467;
              }
            }

            else
            {
              if (v645 != 1)
              {
                if (v645)
                {
                  goto LABEL_1441;
                }

                if (v3 >= v646)
                {
                  v263 = -1;
                }

                else
                {
                  v263 = v3;
                }

LABEL_467:
                v265 = *(*&v686[0] + *(&v686[0] + 1) * v263);
                if (v265 < v260)
                {
                  *(v236 + v3) = *(*&v681[0] + *(&v681[0] + 1) * v265);
                }

                if (v19 == ++v3)
                {
                  goto LABEL_470;
                }

                continue;
              }

              if (v648 > v3)
              {
                v263 = *(v650 + 4 * v3);
                goto LABEL_467;
              }
            }

            break;
          }

          v263 = -1;
          goto LABEL_467;
        }

        v253 = v681[1];
        v254 = LODWORD(v681[1]);
        v25 = v622;
        v26 = v594;
        if (LODWORD(v681[1]))
        {
          v255 = 0;
          v3 = v19;
          while (v19 != v255)
          {
            *(v236 + v255) = *(*&v681[0] + *(&v681[0] + 1) * v255);
            if (v254 == ++v255)
            {
              goto LABEL_433;
            }
          }

          goto LABEL_1376;
        }

LABEL_433:
        if (v14 != 2 || v19 <= v253)
        {
          goto LABEL_476;
        }

        while (2)
        {
          LODWORD(v658[0]) = v254;
          if (v645 == 2)
          {
            v257 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v646, v658);
            if (v257 != -1)
            {
              v256 = *(v647 + 8 * v257 + 4);
              goto LABEL_446;
            }
          }

          else
          {
            if (v645 != 1)
            {
              if (v645)
              {
                goto LABEL_1446;
              }

              if (v254 >= v646)
              {
                v256 = -1;
              }

              else
              {
                v256 = v254;
              }

LABEL_446:
              *(v236 + v254++) = *(*&v681[0] + *(&v681[0] + 1) * v256);
              if (v19 == v254)
              {
                goto LABEL_476;
              }

              continue;
            }

            if (v648 > v254)
            {
              v256 = *(v650 + 4 * v254);
              goto LABEL_446;
            }
          }

          break;
        }

        v256 = -1;
        goto LABEL_446;
      }

      if (v14 == 4)
      {
        v191 = *(v619 + 48);
        if (v191 || (v191 = *(v619 + 40)) != 0)
        {
          v192 = *(v191 + 40);
        }

        else
        {
          v192 = 0;
        }

        (*(*v93 + 24))(v93, v192);
        v94 = v619;
      }

      v193 = *(v94 + 40);
      if (v193)
      {
        v194 = (v193 + 8);
        if (*(v193 + 32) == 1 && *(v193 + 33) == 10)
        {
          v195 = (v193 + 8);
          v196 = *(v193 + 48);
          v25 = *(v193 + 24) + *(v193 + 56);
          v19 = *(v193 + 40);
          v197 = (v193 + 8);

          v198 = 0;
          v588 = 0;
          v199 = 1;
          v200 = v193;
        }

        else
        {
          v269 = _ZNK2re8internal11DataPayload22computeConvertedValuesIDv4_fEENS_6ResultINS_10FixedArrayIT_EENS_13DetailedErrorEEEv(v193, v658);
          v602 = v193;
          if (LOBYTE(v658[0]) == 1)
          {
            v588 = v658[1];
            v19 = v659;
            v196 = 16;
            v198 = *(&v659 + 1);
          }

          else
          {
            if (*(&v659 + 1) && (v660 & 1) != 0)
            {
              (*(**(&v659 + 1) + 40))(v269);
            }

            v198 = 0;
            v19 = 0;
            v588 = 0;
            v196 = 0;
          }

          v193 = 0;
          v199 = v19 == 0;
          v25 = v198;
          v200 = v602;
        }
      }

      else
      {
        v25 = 0;
        v196 = 0;
        v19 = 0;
        v588 = 0;
        v198 = 0;
        v199 = 1;
      }

      v607 = v199;
      if ((*(*v93 + 16))(v93))
      {
        if (!v93[5])
        {
          goto LABEL_1421;
        }

        v10 = v93[7];
        v26 = (*(*v93 + 16))(v93);
      }

      else
      {
        v26 = 0;
        v10 = 0;
      }

      v579 = v198;
      v585 = v193;
      if (v14 != 3 && *(v619 + 48) != 0)
      {
        re::GeomModelDescriptor::AttributeData::makeConvertedIndices<unsigned int>(v619, v681);
        v341 = v681[1];
        v342 = LODWORD(v681[1]);
        if (LODWORD(v681[1]))
        {
          v12 = 0;
          v3 = v26;
          do
          {
            v343 = *(*&v681[0] + *(&v681[0] + 1) * v12);
            if (v343 < v19)
            {
              if (v12 >= v26)
              {
                goto LABEL_1405;
              }

              *(v10 + 16 * v12) = *(v25 + v196 * v343);
            }

            ++v12;
          }

          while (v342 != v12);
        }

        v238 = v14 == 2;
        v12 = v597;
        v3 = v585;
        v14 = v607;
        if (!v238 || v26 <= v341)
        {
          goto LABEL_1052;
        }

        while (2)
        {
          LODWORD(v658[0]) = v342;
          if (v645 == 2)
          {
            v345 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v646, v658);
            if (v345 != -1)
            {
              v344 = *(v647 + 8 * v345 + 4);
              goto LABEL_730;
            }
          }

          else
          {
            if (v645 != 1)
            {
              if (v645)
              {
                goto LABEL_1433;
              }

              if (v342 >= v646)
              {
                v344 = -1;
              }

              else
              {
                v344 = v342;
              }

LABEL_730:
              v346 = *(*&v681[0] + *(&v681[0] + 1) * v344);
              if (v346 < v19)
              {
                *(v10 + 16 * v342) = *(v25 + v196 * v346);
              }

              if (v26 == ++v342)
              {
                goto LABEL_1052;
              }

              continue;
            }

            if (v648 > v342)
            {
              v344 = *(v650 + 4 * v342);
              goto LABEL_730;
            }
          }

          break;
        }

        v344 = -1;
        goto LABEL_730;
      }

      if (v19)
      {
        v3 = v26;
        v333 = v19;
        v334 = v26;
        v335 = v10;
        v336 = v25;
        while (v334)
        {
          *v335++ = *v336;
          v336 = (v336 + v196);
          --v334;
          if (!--v333)
          {
            goto LABEL_693;
          }
        }

        goto LABEL_1379;
      }

LABEL_693:
      v238 = v14 == 2;
      v3 = v585;
      v14 = v607;
      if (!v238)
      {
        goto LABEL_1058;
      }

      v337 = v26 - v19;
      if (v26 <= v19)
      {
        goto LABEL_1058;
      }

      v19 = v19;
      while (2)
      {
        LODWORD(v658[0]) = v19;
        if (v645 == 2)
        {
          v339 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v646, v658);
          if (v339 != -1)
          {
            v338 = *(v647 + 8 * v339 + 4);
            goto LABEL_708;
          }
        }

        else
        {
          if (v645 != 1)
          {
            if (v645)
            {
              goto LABEL_1449;
            }

            if (v19 >= v646)
            {
              v338 = -1;
            }

            else
            {
              v338 = v19;
            }

LABEL_708:
            *(v10 + 16 * v19++) = *(v25 + v196 * v338);
            if (!--v337)
            {
              goto LABEL_1058;
            }

            continue;
          }

          if (v648 > v19)
          {
            v338 = *(v650 + 4 * v19);
            goto LABEL_708;
          }
        }

        break;
      }

      v338 = -1;
      goto LABEL_708;
    }

    if (v599 == 5)
    {
      if (v14 == 4)
      {
        v181 = *(v619 + 48);
        if (v181 || (v181 = *(v619 + 40)) != 0)
        {
          v182 = *(v181 + 40);
        }

        else
        {
          v182 = 0;
        }

        (*(*v93 + 24))(v93, v182);
        v94 = v619;
      }

      v183 = *(v94 + 40);
      if (v183)
      {
        v184 = (v183 + 8);
        if (*(v183 + 32) == 1 && *(v183 + 33) == 7)
        {
          v185 = (v183 + 8);
          v186 = *(v183 + 48);
          v25 = *(v183 + 24) + *(v183 + 56);
          v19 = *(v183 + 40);
          v187 = (v183 + 8);

          v588 = 0;
          v188 = 0;
          v189 = 1;
          v190 = v183;
        }

        else
        {
          v268 = re::internal::DataPayload::computePoDConversionHelper<double>(v183, v658);
          v601 = v183;
          if (LOBYTE(v658[0]) == 1)
          {
            v588 = v658[1];
            v19 = v659;
            v186 = 8;
            v188 = *(&v659 + 1);
          }

          else
          {
            if (*(&v659 + 1) && (v660 & 1) != 0)
            {
              (*(**(&v659 + 1) + 40))(v268);
            }

            v588 = 0;
            v19 = 0;
            v188 = 0;
            v186 = 0;
          }

          v183 = 0;
          v189 = v19 == 0;
          v25 = v188;
          v190 = v601;
        }
      }

      else
      {
        v25 = 0;
        v186 = 0;
        v19 = 0;
        v188 = 0;
        v588 = 0;
        v189 = 1;
      }

      v606 = v189;
      if ((*(*v93 + 16))(v93))
      {
        if (!v93[5])
        {
          goto LABEL_1416;
        }

        v10 = v93[7];
        v26 = (*(*v93 + 16))(v93);
      }

      else
      {
        v26 = 0;
        v10 = 0;
      }

      v579 = v188;
      v584 = v183;
      if (v14 != 3 && *(v619 + 48) != 0)
      {
        re::GeomModelDescriptor::AttributeData::makeConvertedIndices<unsigned int>(v619, v681);
        v323 = v681[1];
        v324 = LODWORD(v681[1]);
        if (LODWORD(v681[1]))
        {
          v3 = 0;
          v326 = *(&v681[0] + 1);
          v325 = *&v681[0];
          v12 = v26;
          do
          {
            v327 = *v325;
            if (v327 < v19)
            {
              if (v3 >= v26)
              {
                goto LABEL_1406;
              }

              *(v10 + 8 * v3) = *(v25 + v186 * v327);
            }

            v325 = (v325 + v326);
            ++v3;
          }

          while (v324 != v3);
        }

        v238 = v14 == 2;
        v12 = v597;
        v3 = v584;
        v14 = v606;
        if (!v238 || v26 <= v323)
        {
          goto LABEL_1052;
        }

        while (2)
        {
          LODWORD(v658[0]) = v324;
          if (v645 == 2)
          {
            v329 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v646, v658);
            if (v329 != -1)
            {
              v328 = *(v647 + 8 * v329 + 4);
              goto LABEL_670;
            }
          }

          else
          {
            if (v645 != 1)
            {
              if (v645)
              {
                goto LABEL_1442;
              }

              if (v324 >= v646)
              {
                v328 = -1;
              }

              else
              {
                v328 = v324;
              }

LABEL_670:
              v330 = *(*&v681[0] + *(&v681[0] + 1) * v328);
              if (v330 < v19)
              {
                *(v10 + 8 * v324) = *(v25 + v186 * v330);
              }

              if (v26 == ++v324)
              {
                goto LABEL_1052;
              }

              continue;
            }

            if (v648 > v324)
            {
              v328 = *(v650 + 4 * v324);
              goto LABEL_670;
            }
          }

          break;
        }

        v328 = -1;
        goto LABEL_670;
      }

      if (v19)
      {
        v3 = v26;
        v315 = v19;
        v316 = v26;
        v317 = v10;
        v318 = v25;
        while (v316)
        {
          *v317++ = *v318;
          v318 = (v318 + v186);
          --v316;
          if (!--v315)
          {
            goto LABEL_633;
          }
        }

        goto LABEL_1374;
      }

LABEL_633:
      v238 = v14 == 2;
      v3 = v584;
      v14 = v606;
      if (!v238)
      {
        goto LABEL_1058;
      }

      v319 = v26 - v19;
      if (v26 <= v19)
      {
        goto LABEL_1058;
      }

      v19 = v19;
      while (2)
      {
        LODWORD(v658[0]) = v19;
        if (v645 == 2)
        {
          v321 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v646, v658);
          if (v321 != -1)
          {
            v320 = *(v647 + 8 * v321 + 4);
            goto LABEL_648;
          }
        }

        else
        {
          if (v645 != 1)
          {
            if (v645)
            {
              goto LABEL_1447;
            }

            if (v19 >= v646)
            {
              v320 = -1;
            }

            else
            {
              v320 = v19;
            }

LABEL_648:
            *(v10 + 8 * v19++) = *(v25 + v186 * v320);
            if (!--v319)
            {
              goto LABEL_1058;
            }

            continue;
          }

          if (v648 > v19)
          {
            v320 = *(v650 + 4 * v19);
            goto LABEL_648;
          }
        }

        break;
      }

      v320 = -1;
      goto LABEL_648;
    }

    if (v599 != 6)
    {
      if (v14 == 4)
      {
        v221 = *(v619 + 48);
        if (v221 || (v221 = *(v619 + 40)) != 0)
        {
          v222 = *(v221 + 40);
        }

        else
        {
          v222 = 0;
        }

        (*(*v93 + 24))(v93, v222);
        v94 = v619;
      }

      v223 = *(v94 + 40);
      v630 = v14;
      if (v223)
      {
        v224 = (v223 + 8);
        if (*(v223 + 32) == 1 && (*(v223 + 33) | 2) == 0xB)
        {
          v225 = (v223 + 8);
          v226 = *(v223 + 48);
          v14 = *(v223 + 24) + *(v223 + 56);
          v19 = *(v223 + 40);
          v227 = (v223 + 8);

          v228 = 0;
          v589 = 0;
          v229 = 1;
          v230 = v223;
        }

        else
        {
          v237 = _ZNK2re8internal11DataPayload22computeConvertedValuesIDv3_fEENS_6ResultINS_10FixedArrayIT_EENS_13DetailedErrorEEEv(v223, v658);
          if (LOBYTE(v658[0]) == 1)
          {
            v589 = v658[1];
            v19 = v659;
            v226 = 16;
            v228 = *(&v659 + 1);
          }

          else
          {
            if (*(&v659 + 1) && (v660 & 1) != 0)
            {
              (*(**(&v659 + 1) + 40))(v237);
            }

            v228 = 0;
            v19 = 0;
            v589 = 0;
            v226 = 0;
          }

          v230 = 0;
          v229 = v19 == 0;
          v14 = v228;
        }
      }

      else
      {
        v14 = 0;
        v226 = 0;
        v19 = 0;
        v230 = 0;
        v589 = 0;
        v228 = 0;
        v229 = 1;
      }

      v604 = v229;
      if ((*(*v93 + 16))(v93))
      {
        if (!v93[5])
        {
          goto LABEL_1418;
        }

        v10 = v93[7];
        v26 = (*(*v93 + 16))(v93);
      }

      else
      {
        v26 = 0;
        v10 = 0;
      }

      v25 = v230;
      v583 = v228;
      if (v630 != 3 && *(v619 + 48) != 0)
      {
        re::GeomModelDescriptor::AttributeData::makeConvertedIndices<unsigned int>(v619, v681);
        v287 = v681[1];
        v288 = LODWORD(v681[1]);
        if (LODWORD(v681[1]))
        {
          v12 = 0;
          v3 = v26;
          do
          {
            v289 = *(*&v681[0] + *(&v681[0] + 1) * v12);
            if (v289 < v19)
            {
              if (v12 >= v26)
              {
                goto LABEL_1403;
              }

              v290 = v14 + v226 * v289;
              *&v286 = *v290;
              DWORD2(v286) = *(v290 + 8);
              *(v10 + 16 * v12) = v286;
            }

            ++v12;
          }

          while (v288 != v12);
        }

        v12 = v597;
        v3 = v25;
        v280 = v604;
        if (v630 != 2 || v26 <= v287)
        {
          goto LABEL_849;
        }

        while (2)
        {
          LODWORD(v658[0]) = v288;
          if (v645 == 2)
          {
            v292 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v646, v658);
            if (v292 != -1)
            {
              v291 = *(v647 + 8 * v292 + 4);
              goto LABEL_552;
            }
          }

          else
          {
            if (v645 != 1)
            {
              if (v645)
              {
                goto LABEL_1439;
              }

              if (v288 >= v646)
              {
                v291 = -1;
              }

              else
              {
                v291 = v288;
              }

LABEL_552:
              v293 = *(*&v681[0] + *(&v681[0] + 1) * v291);
              if (v293 < v19)
              {
                v294 = v14 + v226 * v293;
                *&v286 = *v294;
                DWORD2(v286) = *(v294 + 8);
                *(v10 + 16 * v288) = v286;
              }

              if (v26 == ++v288)
              {
                goto LABEL_849;
              }

              continue;
            }

            if (v648 > v288)
            {
              v291 = *(v650 + 4 * v288);
              goto LABEL_552;
            }
          }

          break;
        }

        v291 = -1;
        goto LABEL_552;
      }

      if (v19)
      {
        v3 = v26;
        v276 = v19;
        v277 = (v14 + 8);
        v278 = v26;
        v279 = v10;
        while (v278)
        {
          *&v274 = *(v277 - 1);
          DWORD2(v274) = *v277;
          v277 = (v277 + v226);
          *v279++ = v274;
          --v278;
          if (!--v276)
          {
            goto LABEL_517;
          }
        }

        goto LABEL_1381;
      }

LABEL_517:
      v3 = v25;
      v280 = v604;
      if (v630 != 2)
      {
        goto LABEL_855;
      }

      v281 = v26 - v19;
      if (v26 <= v19)
      {
        goto LABEL_855;
      }

      v19 = v19;
      while (2)
      {
        LODWORD(v658[0]) = v19;
        if (v645 == 2)
        {
          v283 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v646, v658);
          if (v283 != -1)
          {
            v282 = *(v647 + 8 * v283 + 4);
            goto LABEL_531;
          }
        }

        else
        {
          if (v645 != 1)
          {
            if (v645)
            {
              goto LABEL_1444;
            }

            if (v19 >= v646)
            {
              v282 = -1;
            }

            else
            {
              v282 = v19;
            }

LABEL_531:
            v284 = v14 + v226 * v282;
            *&v274 = *v284;
            DWORD2(v274) = *(v284 + 8);
            *(v10 + 16 * v19++) = v274;
            if (!--v281)
            {
              goto LABEL_855;
            }

            continue;
          }

          if (v648 > v19)
          {
            v282 = *(v650 + 4 * v19);
            goto LABEL_531;
          }
        }

        break;
      }

      v282 = -1;
      goto LABEL_531;
    }

    if (v14 == 4)
    {
      v95 = *(v619 + 48);
      if (v95 || (v95 = *(v619 + 40)) != 0)
      {
        v96 = *(v95 + 40);
      }

      else
      {
        v96 = 0;
      }

      (*(*v93 + 24))(v93, v96);
      v94 = v619;
    }

    v97 = *(v94 + 40);
    if (v97)
    {
      v98 = (v97 + 8);
      if (*(v97 + 32) == 1 && *(v97 + 33) == 8)
      {
        v99 = (v97 + 8);
        v100 = *(v97 + 48);
        v25 = *(v97 + 24) + *(v97 + 56);
        v19 = *(v97 + 40);
        v101 = (v97 + 8);

        v102 = 0;
        v588 = 0;
        v103 = 1;
        v104 = v97;
      }

      else
      {
        v272 = _ZNK2re8internal11DataPayload22computeConvertedValuesIDv2_fEENS_6ResultINS_10FixedArrayIT_EENS_13DetailedErrorEEEv(v97, v658);
        v603 = v97;
        if (LOBYTE(v658[0]) == 1)
        {
          v588 = v658[1];
          v19 = v659;
          v100 = 8;
          v102 = *(&v659 + 1);
        }

        else
        {
          if (*(&v659 + 1) && (v660 & 1) != 0)
          {
            (*(**(&v659 + 1) + 40))(v272);
          }

          v102 = 0;
          v19 = 0;
          v588 = 0;
          v100 = 0;
        }

        v97 = 0;
        v103 = v19 == 0;
        v25 = v102;
        v104 = v603;
      }
    }

    else
    {
      v25 = 0;
      v100 = 0;
      v19 = 0;
      v588 = 0;
      v102 = 0;
      v103 = 1;
    }

    v611 = v103;
    if ((*(*v93 + 16))(v93))
    {
      if (v93[5])
      {
        v10 = v93[7];
        v26 = (*(*v93 + 16))(v93);
        goto LABEL_1003;
      }

LABEL_1415:
      *&v686[0] = 0;
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      *v658 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v681[0]) = 136315906;
      *(v681 + 4) = "operator[]";
      WORD6(v681[0]) = 1024;
      *(v681 + 14) = 789;
      WORD1(v681[1]) = 2048;
      *(&v681[1] + 4) = 0;
      WORD6(v681[1]) = 2048;
      *(&v681[1] + 14) = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1416:
      *&v686[0] = 0;
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      *v658 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v681[0]) = 136315906;
      *(v681 + 4) = "operator[]";
      WORD6(v681[0]) = 1024;
      *(v681 + 14) = 789;
      WORD1(v681[1]) = 2048;
      *(&v681[1] + 4) = 0;
      WORD6(v681[1]) = 2048;
      *(&v681[1] + 14) = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1417:
      *&v686[0] = 0;
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      *v658 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v681[0]) = 136315906;
      *(v681 + 4) = "operator[]";
      WORD6(v681[0]) = 1024;
      *(v681 + 14) = 789;
      WORD1(v681[1]) = 2048;
      *(&v681[1] + 4) = 0;
      WORD6(v681[1]) = 2048;
      *(&v681[1] + 14) = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1418:
      *&v686[0] = 0;
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      *v658 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v681[0]) = 136315906;
      *(v681 + 4) = "operator[]";
      WORD6(v681[0]) = 1024;
      *(v681 + 14) = 789;
      WORD1(v681[1]) = 2048;
      *(&v681[1] + 4) = 0;
      WORD6(v681[1]) = 2048;
      *(&v681[1] + 14) = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1419:
      *&v686[0] = 0;
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      *v658 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v681[0]) = 136315906;
      *(v681 + 4) = "operator[]";
      WORD6(v681[0]) = 1024;
      *(v681 + 14) = 789;
      WORD1(v681[1]) = 2048;
      *(&v681[1] + 4) = 0;
      WORD6(v681[1]) = 2048;
      *(&v681[1] + 14) = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1420:
      *&v685[0] = 0;
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      *v658 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v686[0]) = 136315906;
      *(v686 + 4) = "operator[]";
      WORD6(v686[0]) = 1024;
      *(v686 + 14) = 789;
      WORD1(v686[1]) = 2048;
      *(&v686[1] + 4) = 0;
      WORD6(v686[1]) = 2048;
      *(&v686[1] + 14) = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1421:
      *&v686[0] = 0;
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      *v658 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v681[0]) = 136315906;
      *(v681 + 4) = "operator[]";
      WORD6(v681[0]) = 1024;
      *(v681 + 14) = 789;
      WORD1(v681[1]) = 2048;
      *(&v681[1] + 4) = 0;
      WORD6(v681[1]) = 2048;
      *(&v681[1] + 14) = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1422:
      v657 = 0;
      v687 = 0u;
      memset(v686, 0, sizeof(v686));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v688 = 136315906;
      *&v688[4] = "operator[]";
      *&v688[12] = 1024;
      *&v688[14] = 468;
      *&v688[18] = 2048;
      *&v688[20] = 0;
      *&v688[28] = 2048;
      *&v688[30] = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_1423;
    }

    v26 = 0;
    v10 = 0;
LABEL_1003:
    v579 = v102;
    v586 = v97;
    if (v14 == 3 || *(v619 + 48) == 0)
    {
      if (v19)
      {
        v3 = v26;
        v427 = v19;
        v428 = v26;
        v429 = v10;
        v430 = v25;
        while (v428)
        {
          *v429++ = *v430;
          v430 = (v430 + v100);
          --v428;
          if (!--v427)
          {
            goto LABEL_1012;
          }
        }

        goto LABEL_1377;
      }

LABEL_1012:
      v238 = v14 == 2;
      v3 = v586;
      v14 = v611;
      if (!v238)
      {
        goto LABEL_1058;
      }

      v431 = v26 - v19;
      if (v26 <= v19)
      {
        goto LABEL_1058;
      }

      v19 = v19;
      while (2)
      {
        LODWORD(v658[0]) = v19;
        if (v645 == 2)
        {
          v433 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v646, v658);
          if (v433 != -1)
          {
            v432 = *(v647 + 8 * v433 + 4);
            goto LABEL_1027;
          }
        }

        else
        {
          if (v645 != 1)
          {
            if (v645)
            {
              goto LABEL_1451;
            }

            if (v19 >= v646)
            {
              v432 = -1;
            }

            else
            {
              v432 = v19;
            }

LABEL_1027:
            *(v10 + 8 * v19++) = *(v25 + v100 * v432);
            if (!--v431)
            {
              goto LABEL_1058;
            }

            continue;
          }

          if (v648 > v19)
          {
            v432 = *(v650 + 4 * v19);
            goto LABEL_1027;
          }
        }

        break;
      }

      v432 = -1;
      goto LABEL_1027;
    }

    re::GeomModelDescriptor::AttributeData::makeConvertedIndices<unsigned int>(v619, v681);
    v435 = v681[1];
    v436 = LODWORD(v681[1]);
    if (LODWORD(v681[1]))
    {
      v12 = 0;
      v3 = v26;
      do
      {
        v437 = *(*&v681[0] + *(&v681[0] + 1) * v12);
        if (v437 < v19)
        {
          if (v12 >= v26)
          {
            goto LABEL_1404;
          }

          *(v10 + 8 * v12) = *(v25 + v100 * v437);
        }

        ++v12;
      }

      while (v436 != v12);
    }

    v238 = v14 == 2;
    v12 = v597;
    v3 = v586;
    v14 = v611;
    if (v238 && v26 > v435)
    {
      while (2)
      {
        LODWORD(v658[0]) = v436;
        if (v645 == 2)
        {
          v439 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v646, v658);
          if (v439 != -1)
          {
            v438 = *(v647 + 8 * v439 + 4);
            goto LABEL_1049;
          }
        }

        else
        {
          if (v645 != 1)
          {
            if (v645)
            {
              goto LABEL_1435;
            }

            if (v436 >= v646)
            {
              v438 = -1;
            }

            else
            {
              v438 = v436;
            }

LABEL_1049:
            v440 = *(*&v681[0] + *(&v681[0] + 1) * v438);
            if (v440 < v19)
            {
              *(v10 + 8 * v436) = *(v25 + v100 * v440);
            }

            if (v26 == ++v436)
            {
              goto LABEL_1052;
            }

            continue;
          }

          if (v648 > v436)
          {
            v438 = *(v650 + 4 * v436);
            goto LABEL_1049;
          }
        }

        break;
      }

      v438 = -1;
      goto LABEL_1049;
    }

LABEL_1052:
    if (*&v681[2])
    {
      if (*(&v681[2] + 1))
      {
        (*(**&v681[2] + 40))(*&v681[2], *&v682[0]);
        *(&v681[2] + 1) = 0;
        *&v682[0] = 0;
      }

      *&v681[2] = 0;
    }

    if (*(&v681[1] + 1))
    {
    }

LABEL_1058:
    v383 = v588;
    if (!((v588 == 0) | v14 & 1))
    {
      v384 = *(*v588 + 40);
      v385 = v579;
LABEL_1060:
      v384(v383, v385);
    }

LABEL_1061:
    v25 = v622;
    v10 = v624;
    v9 = v633;
    v26 = v594;
    v24 = 56;
    if (v3)
    {
      v424 = (v3 + 8);
LABEL_1063:
    }

LABEL_1064:
    LODWORD(v627) = 1;
    v48 = v615;
LABEL_90:
    v57 = v634;
LABEL_149:
    v50 = v57 + 1;
    if (v50 != v26)
    {
      continue;
    }

    break;
  }

LABEL_1076:
  if (*v25 == 1)
  {
    v441 = re::GeomMesh::addAttribute(&v638, "osdSubdivisionScheme", 0, 1);
    if (v441)
    {
      *re::internal::GeomTypedAttribute<unsigned short>::operator[](v441) = 1;
    }
  }

  LOBYTE(v14) = v596;
  if (*(v25 + 1) != 1)
  {
    goto LABEL_1142;
  }

  re::GeomMeshBuilder::GeomMeshBuilder(v658, &v638);
  v442 = v660;
  if (v660)
  {
    v443 = 0;
    v444 = v661;
    v445 = v661;
    do
    {
      v446 = v445[3];
      if (v446 == -1)
      {
        v448 = *v445;
        v449 = -1;
        v447 = v445;
      }

      else
      {
        v447 = (v444 + 16 * v443 + 4);
        v449 = *v445;
        v448 = v445[1];
        *v445 = v446;
      }

      *v447 = v445[2];
      v445[2] = v448;
      v445[3] = v449;
      ++v443;
      v445 += 4;
      --v442;
    }

    while (v442);
  }

  v617 = v15;
  v450 = v670;
  if (v670)
  {
    LODWORD(v19) = 0;
    v3 = v688;
    v10 = 1;
    do
    {
      v451 = re::internal::GeomAttributeContainer::attributeByIndex(v669, v19);
      v453 = re::internal::accessFaceVaryingAttributeSubmesh(v451, v452);
      *v688 = *v453;
      re::DynamicArray<re::GeomCell4>::DynamicArray(&v688[8], (v453 + 8));
      if (!*&v688[16])
      {
        re::DynamicArray<re::BlendNode>::setCapacity(&v688[8], 1uLL);
      }

      *&v686[0] = *(v453 + 128);
      DWORD2(v686[0]) = *(v453 + 136);
      BYTE12(v686[0]) = *(v453 + 140);
      if (BYTE12(v686[0]) == 2)
      {
        re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrown(&v686[1], v453 + 144);
      }

      else if (BYTE12(v686[0]) == 1)
      {
        re::DynamicArray<float>::DynamicArray(&v686[1], (v453 + 144));
      }

      else
      {
        if (BYTE12(v686[0]))
        {
          goto LABEL_1428;
        }

        LODWORD(v686[1]) = *(v453 + 144);
      }

      *&v685[0] = *(v453 + 48);
      DWORD2(v685[0]) = *(v453 + 56);
      BYTE12(v685[0]) = *(v453 + 60);
      if (BYTE12(v685[0]) == 2)
      {
        re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrown(&v685[1], v453 + 64);
      }

      else if (BYTE12(v685[0]) == 1)
      {
        re::DynamicArray<float>::DynamicArray(&v685[1], (v453 + 64));
      }

      else
      {
        if (BYTE12(v685[0]))
        {
          goto LABEL_1429;
        }

        LODWORD(v685[1]) = *(v453 + 64);
      }

      v455 = *&v688[24];
      if (*&v688[24])
      {
        v456 = 0;
        v457 = v689;
        v458 = v689;
        v459 = *&v688[24];
        do
        {
          v460 = v458[3];
          if (v460 == -1)
          {
            v462 = *v458;
            v463 = -1;
            v461 = v458;
          }

          else
          {
            v461 = &v457[4 * v456 + 1];
            v463 = *v458;
            v462 = v458[1];
            *v458 = v460;
          }

          *v461 = v458[2];
          v458[2] = v462;
          v458[3] = v463;
          ++v456;
          v458 += 4;
          --v459;
        }

        while (v459);
      }

      LODWORD(v681[0]) = *v688;
      *(&v681[0] + 1) = *&v688[8];
      *&v681[1] = *&v688[16];
      memset(&v688[8], 0, 24);
      *(&v681[1] + 1) = v455;
      *(&v681[2] + 1) = v689;
      v689 = 0;
      LODWORD(v681[2]) = 1;
      *v688 = 0;
      *&v688[32] += 2;
      re::GeomIndexMap::GeomIndexMap(v682, v686);
      re::GeomIndexMap::GeomIndexMap(&v684, v685);
      re::internal::GeomAttributeManager::updateFaceVaryingAttributeSubmesh(&v661 + 1, v451[1], v681);
      re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh(v681, v464);
      if (BYTE12(v685[0]))
      {
        if (BYTE12(v685[0]) == 2)
        {
          v466.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v685[1]);
        }

        else
        {
          if (BYTE12(v685[0]) != 1)
          {
            re::internal::assertLog(4, v465, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
            _os_crash();
            __break(1u);
LABEL_1427:
            re::internal::assertLog(4, v465, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
            _os_crash();
            __break(1u);
LABEL_1428:
            re::internal::assertLog(4, v454, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "GeomIndexMap", 433);
            _os_crash();
            __break(1u);
LABEL_1429:
            re::internal::assertLog(4, v454, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "GeomIndexMap", 433);
            _os_crash();
            __break(1u);
LABEL_1430:
            re::internal::assertLog(4, v493, v494, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
            _os_crash();
            __break(1u);
            goto LABEL_1431;
          }

          if (*&v685[1])
          {
            v465 = *&v685[3];
            if (*&v685[3])
            {
              (*(**&v685[1] + 40))(*&v685[1], *&v685[3]);
            }
          }
        }
      }

      if (BYTE12(v686[0]))
      {
        if (BYTE12(v686[0]) == 2)
        {
          v466.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v686[1]);
        }

        else
        {
          if (BYTE12(v686[0]) != 1)
          {
            goto LABEL_1427;
          }

          if (*&v686[1] && *&v686[3])
          {
            (*(**&v686[1] + 40))(v466);
          }
        }
      }

      if (*&v688[8] && v689)
      {
        (*(**&v688[8] + 40))(v466);
      }

      v19 = (v19 + 1);
    }

    while (v19 != v450);
  }

  re::GeomMesh::operator=(&v638, &v658[1]);
  re::GeomMesh::setName(&v638, v658[0]);
  re::GeomMesh::freeName(v658);
  v467 = 0uLL;
  memset(v685, 0, 64);
  v654 = &v651;
  v655 = 0;
  v468 = *&v652[0];
  if (*&v652[0] < 0x10uLL)
  {
    v469 = 0;
    v470 = 0;
    v471 = 0uLL;
    v472 = 0uLL;
    goto LABEL_1139;
  }

  v473 = 0;
  v474 = v651;
  v475 = *&v652[0] >> 4;
  while (1)
  {
    v476 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v474), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
    v655 = v476 ^ 0xFFFFLL;
    if (v476 != 0xFFFFLL)
    {
      break;
    }

    v473 -= 16;
    ++v474;
    if (!--v475)
    {
      goto LABEL_1138;
    }
  }

  v483 = __clz(__rbit64(v476 ^ 0xFFFFLL));
  v484 = v483 - v473;
  v656 = v483 - v473;
  if (v483 + 1 == v473)
  {
LABEL_1138:
    v469 = 0;
    v470 = 0;
    v471 = 0uLL;
    v472 = 0uLL;
    v467 = 0uLL;
    goto LABEL_1139;
  }

  v24 = v681;
  while (2)
  {
    v25 = *(v654 + 1) + 96 * v484;
    v653 = *v25;
    v683 = 0;
    memset(v681, 0, sizeof(v681));
    memset(v682, 0, 28);
    v512 = re::FixedArray<unsigned int>::operator=(&v681[1] + 1, v25 + 32);
    v513 = *(v25 + 16);
    v15 = v513 - 1;
    if (v513)
    {
      v12 = *(v25 + 16);
      v14 = *(&v681[0] + 1);
      v514 = *&v681[1];
      v515 = *(&v681[0] + 1);
      v26 = v15;
      while (v12 > v26)
      {
        if (!v515)
        {
          goto LABEL_1359;
        }

        *v514++ = *(*(v25 + 24) + 4 * v26--);
        --v515;
        if (v26 == -1)
        {
          goto LABEL_1195;
        }
      }

LABEL_1358:
      v657 = 0;
      v687 = 0u;
      memset(v686, 0, sizeof(v686));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v688 = 136315906;
      *&v688[4] = "operator[]";
      *&v688[12] = 1024;
      *&v688[14] = 476;
      *&v688[18] = 2048;
      *&v688[20] = v26;
      *&v688[28] = 2048;
      *&v688[30] = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1359:
      v657 = 0;
      v687 = 0u;
      memset(v686, 0, sizeof(v686));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v688 = 136315906;
      *&v688[4] = "operator[]";
      *&v688[12] = 1024;
      *&v688[14] = 468;
      *&v688[18] = 2048;
      *&v688[20] = v14;
      *&v688[28] = 2048;
      *&v688[30] = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1360:
      v657 = 0;
      v687 = 0u;
      memset(v686, 0, sizeof(v686));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v688 = 136315906;
      *&v688[4] = "operator[]";
      *&v688[12] = 1024;
      *&v688[14] = 797;
      *&v688[18] = 2048;
      *&v688[20] = v3;
      *&v688[28] = 2048;
      *&v688[30] = v26;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1361:
      v657 = 0;
      v687 = 0u;
      memset(v686, 0, sizeof(v686));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v688 = 136315906;
      *&v688[4] = "operator[]";
      *&v688[12] = 1024;
      *&v688[14] = 789;
      *&v688[18] = 2048;
      *&v688[20] = v14;
      *&v688[28] = 2048;
      *&v688[30] = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1362:
      v657 = 0;
      v687 = 0u;
      memset(v686, 0, sizeof(v686));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v688 = 136315906;
      *&v688[4] = "operator[]";
      *&v688[12] = 1024;
      *&v688[14] = 797;
      *&v688[18] = 2048;
      *&v688[20] = v19;
      *&v688[28] = 2048;
      *&v688[30] = v26;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1363:
      v657 = 0;
      v687 = 0u;
      memset(v686, 0, sizeof(v686));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v688 = 136315906;
      *&v688[4] = "operator[]";
      *&v688[12] = 1024;
      *&v688[14] = 789;
      *&v688[18] = 2048;
      *&v688[20] = v14 + 1;
      *&v688[28] = 2048;
      *&v688[30] = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1364:
      v657 = 0;
      v687 = 0u;
      memset(v686, 0, sizeof(v686));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v688 = 136315906;
      *&v688[4] = "operator[]";
      *&v688[12] = 1024;
      *&v688[14] = 789;
      *&v688[18] = 2048;
      *&v688[20] = v14 + 2;
      *&v688[28] = 2048;
      *&v688[30] = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1365:
      *v688 = 0;
      memset(v682, 0, sizeof(v682));
      memset(v681, 0, sizeof(v681));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v686[0]) = 136315906;
      *(v686 + 4) = "operator[]";
      WORD6(v686[0]) = 1024;
      *(v686 + 14) = 468;
      WORD1(v686[1]) = 2048;
      *(&v686[1] + 4) = v19;
      WORD6(v686[1]) = 2048;
      *(&v686[1] + 14) = v19;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1366:
      re::internal::assertLog(4, v18, "assertion failure: '%s' (%s:line %i) ", "vertexCountPerPolygon.size() == originalPolygonCount", "buildPositionsOnlyMeshHelper", 64);
      _os_crash();
      __break(1u);
LABEL_1367:
      *&v685[0] = 0;
      memset(v682, 0, sizeof(v682));
      memset(v681, 0, sizeof(v681));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v686[0]) = 136315906;
      *(v686 + 4) = "operator[]";
      WORD6(v686[0]) = 1024;
      *(v686 + 14) = 621;
      WORD1(v686[1]) = 2048;
      *(&v686[1] + 4) = v19;
      WORD6(v686[1]) = 2048;
      *(&v686[1] + 14) = v19;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1368:
      v654 = 0;
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      *v658 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v688 = 136315906;
      *&v688[4] = "operator[]";
      *&v688[12] = 1024;
      *&v688[14] = 789;
      *&v688[18] = 2048;
      *&v688[20] = v3;
      *&v688[28] = 2048;
      *&v688[30] = v19;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1369:
      v654 = 0;
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      *v658 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v688 = 136315906;
      *&v688[4] = "operator[]";
      *&v688[12] = 1024;
      *&v688[14] = 789;
      *&v688[18] = 2048;
      *&v688[20] = v3;
      *&v688[28] = 2048;
      *&v688[30] = v19;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1370:
      *v688 = 0;
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      *v658 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v681[0]) = 136315906;
      *(v681 + 4) = "operator[]";
      WORD6(v681[0]) = 1024;
      *(v681 + 14) = 789;
      WORD1(v681[1]) = 2048;
      *(&v681[1] + 4) = v24;
      WORD6(v681[1]) = 2048;
      *(&v681[1] + 14) = v19;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1371:
      *v688 = 0;
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      *v658 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v681[0]) = 136315906;
      *(v681 + 4) = "operator[]";
      WORD6(v681[0]) = 1024;
      *(v681 + 14) = 789;
      WORD1(v681[1]) = 2048;
      *(&v681[1] + 4) = v24;
      WORD6(v681[1]) = 2048;
      *(&v681[1] + 14) = v19;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1372:
      v657 = 0;
      v687 = 0u;
      memset(v686, 0, sizeof(v686));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v688 = 136315906;
      *&v688[4] = "operator[]";
      *&v688[12] = 1024;
      *&v688[14] = 468;
      *&v688[18] = 2048;
      *&v688[20] = v19;
      *&v688[28] = 2048;
      *&v688[30] = v19;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1373:
      *&v686[0] = 0;
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      *v658 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v681[0]) = 136315906;
      *(v681 + 4) = "operator[]";
      WORD6(v681[0]) = 1024;
      *(v681 + 14) = 621;
      WORD1(v681[1]) = 2048;
      *(&v681[1] + 4) = v3;
      WORD6(v681[1]) = 2048;
      *(&v681[1] + 14) = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1374:
      *&v686[0] = 0;
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      *v658 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v681[0]) = 136315906;
      *(v681 + 4) = "operator[]";
      WORD6(v681[0]) = 1024;
      *(v681 + 14) = 621;
      WORD1(v681[1]) = 2048;
      *(&v681[1] + 4) = v3;
      WORD6(v681[1]) = 2048;
      *(&v681[1] + 14) = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1375:
      *&v686[0] = 0;
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      *v658 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v681[0]) = 136315906;
      *(v681 + 4) = "operator[]";
      WORD6(v681[0]) = 1024;
      *(v681 + 14) = 621;
      WORD1(v681[1]) = 2048;
      *(&v681[1] + 4) = v3;
      WORD6(v681[1]) = 2048;
      *(&v681[1] + 14) = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1376:
      *&v685[0] = 0;
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      *v658 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v686[0]) = 136315906;
      *(v686 + 4) = "operator[]";
      WORD6(v686[0]) = 1024;
      *(v686 + 14) = 621;
      WORD1(v686[1]) = 2048;
      *(&v686[1] + 4) = v3;
      WORD6(v686[1]) = 2048;
      *(&v686[1] + 14) = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1377:
      *&v686[0] = 0;
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      *v658 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v681[0]) = 136315906;
      *(v681 + 4) = "operator[]";
      WORD6(v681[0]) = 1024;
      *(v681 + 14) = 621;
      WORD1(v681[1]) = 2048;
      *(&v681[1] + 4) = v3;
      WORD6(v681[1]) = 2048;
      *(&v681[1] + 14) = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1378:
      *&v686[0] = 0;
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      *v658 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v681[0]) = 136315906;
      *(v681 + 4) = "operator[]";
      WORD6(v681[0]) = 1024;
      *(v681 + 14) = 621;
      WORD1(v681[1]) = 2048;
      *(&v681[1] + 4) = v3;
      WORD6(v681[1]) = 2048;
      *(&v681[1] + 14) = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1379:
      *&v686[0] = 0;
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      *v658 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v681[0]) = 136315906;
      *(v681 + 4) = "operator[]";
      WORD6(v681[0]) = 1024;
      *(v681 + 14) = 621;
      WORD1(v681[1]) = 2048;
      *(&v681[1] + 4) = v3;
      WORD6(v681[1]) = 2048;
      *(&v681[1] + 14) = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1380:
      *&v685[0] = 0;
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      *v658 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v686[0]) = 136315906;
      *(v686 + 4) = "operator[]";
      WORD6(v686[0]) = 1024;
      *(v686 + 14) = 621;
      WORD1(v686[1]) = 2048;
      *(&v686[1] + 4) = v3;
      WORD6(v686[1]) = 2048;
      *(&v686[1] + 14) = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1381:
      *&v686[0] = 0;
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      *v658 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v681[0]) = 136315906;
      *(v681 + 4) = "operator[]";
      WORD6(v681[0]) = 1024;
      *(v681 + 14) = 621;
      WORD1(v681[1]) = 2048;
      *(&v681[1] + 4) = v3;
      WORD6(v681[1]) = 2048;
      *(&v681[1] + 14) = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1382:
      *&v686[0] = 0;
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      *v658 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v681[0]) = 136315906;
      *(v681 + 4) = "operator[]";
      WORD6(v681[0]) = 1024;
      *(v681 + 14) = 621;
      WORD1(v681[1]) = 2048;
      *(&v681[1] + 4) = v3;
      WORD6(v681[1]) = 2048;
      *(&v681[1] + 14) = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1383:
      *&v686[0] = 0;
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      *v658 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v681[0]) = 136315906;
      *(v681 + 4) = "operator[]";
      WORD6(v681[0]) = 1024;
      *(v681 + 14) = 621;
      WORD1(v681[1]) = 2048;
      *(&v681[1] + 4) = v3;
      WORD6(v681[1]) = 2048;
      *(&v681[1] + 14) = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_1384:
      v657 = 0;
      v687 = 0u;
      memset(v686, 0, sizeof(v686));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v688 = 136315906;
      *&v688[4] = "operator[]";
      *&v688[12] = 1024;
      *&v688[14] = 468;
      *&v688[18] = 2048;
      *&v688[20] = v26;
      *&v688[28] = 2048;
      *&v688[30] = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_1385;
    }

LABEL_1195:
    v10 = *(v25 + 72);
    re::DynamicArray<float>::operator=(v682, (v25 + 56));
    if (v10)
    {
      v14 = 0;
      v26 = *(v25 + 72);
      v12 = *&v682[1];
      v516 = v683 + 2;
      v517 = 4;
      do
      {
        v3 = v14 + 2;
        if (v26 <= v14 + 2)
        {
          goto LABEL_1360;
        }

        if (v12 <= v14)
        {
          goto LABEL_1361;
        }

        v518 = *(v25 + 88);
        *(v516 - 2) = v15 - *(v518 + v517 + 4);
        v19 = v14 + 1;
        if (v26 <= v14 + 1)
        {
          goto LABEL_1362;
        }

        if (v12 <= v19)
        {
          goto LABEL_1363;
        }

        *(v516 - 1) = v15 - *(v518 + v517);
        if (v12 <= v3)
        {
          goto LABEL_1364;
        }

        *v516 = v15 - *(v518 + v517 - 4);
        v516 += 3;
        v14 += 3;
        v517 += 12;
      }

      while (v14 < v10);
    }

    re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::addNew(v685, &v653, v681);
    if (*&v682[0])
    {
      if (v683)
      {
        (*(**&v682[0] + 40))(*&v682[0], v683);
      }

      v683 = 0;
      memset(v682, 0, 24);
      ++DWORD2(v682[1]);
    }

    if (*(&v681[1] + 1))
    {
      if (*&v681[2])
      {
        (*(**(&v681[1] + 1) + 40))(*(&v681[1] + 1), *(&v681[2] + 1));
        v681[2] = 0uLL;
      }

      *(&v681[1] + 1) = 0;
    }

    if (*&v681[0] && *(&v681[0] + 1))
    {
      (*(**&v681[0] + 40))(*&v681[0], *&v681[1]);
    }

    re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v654);
    v484 = v656;
    if (v656 != -1)
    {
      continue;
    }

    break;
  }

  v468 = *&v652[0];
  v470 = *(&v685[3] + 1);
  v469 = *&v685[3];
  v467 = v685[0];
  v471 = v685[1];
  v472 = v685[2];
LABEL_1139:
  v485 = *(&v652[2] + 1);
  *(&v652[2] + 1) = v470;
  v685[0] = v651;
  *(&v685[3] + 1) = v485;
  *&v685[1] = v468;
  v486 = *(&v652[1] + 8);
  v487 = *(v652 + 8);
  *&v652[2] = v469;
  *(&v685[2] + 8) = v486;
  v651 = v467;
  v652[0] = v471;
  v652[1] = v472;
  *(&v685[1] + 8) = v487;
  re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::deinit(v685);
  re::GeomMesh::freeName(v658);
  re::internal::GeomAttributeManager::~GeomAttributeManager((&v661 + 8));
  v12 = v597;
  v15 = v617;
  LOBYTE(v14) = v596;
  if (v659 && v661)
  {
    (*(*v659 + 40))(v659, v661);
  }

LABEL_1142:
  re::GeomMesh::GeomMesh(v658, &v638);
  v671 = v643;
  re::GeomIndexMap::GeomIndexMap(v672, &v643 + 8);
  v680 = v652[2];
  v488 = v651;
  v489 = v652[0];
  v651 = 0u;
  memset(v652, 0, sizeof(v652));
  v677 = v488;
  v678 = v489;
  v679 = v652[1];
  *a2 = 1;
  re::GeomMesh::GeomMesh(a2 + 8, v658);
  *(a2 + 744) = v671;
  re::GeomIndexMap::GeomIndexMap(a2 + 752, v672);
  *(a2 + 880) = v680;
  v680 = 0u;
  v490 = v678;
  *(a2 + 832) = v677;
  *(a2 + 848) = v490;
  v677 = 0u;
  v678 = 0u;
  *(a2 + 864) = v679;
  v679 = 0u;
  v492 = re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::deinit(&v677);
  if (v673 == 2)
  {
    re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v674);
    v13 = v618;
LABEL_1151:
    re::GeomMesh::~GeomMesh(v658);
    if (v635 && (v636 & 1) != 0)
    {
      (*(*v635 + 40))(v635, v637);
    }

    goto LABEL_1154;
  }

  v13 = v618;
  if (v673 == 1)
  {
    if (v674[0])
    {
      if (v676)
      {
        (*(*v674[0] + 40))(v492);
      }

      v676 = 0;
      memset(v674, 0, sizeof(v674));
      ++v675;
    }

    goto LABEL_1151;
  }

  if (!v673)
  {
    LODWORD(v674[0]) = 0;
    goto LABEL_1151;
  }

LABEL_1431:
  re::internal::assertLog(4, v491, v492, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
  _os_crash();
  __break(1u);
LABEL_1432:
  re::internal::assertLog(4, v396, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash();
  __break(1u);
LABEL_1433:
  re::internal::assertLog(4, v340, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash();
  __break(1u);
LABEL_1434:
  re::internal::assertLog(4, v356, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash();
  __break(1u);
LABEL_1435:
  re::internal::assertLog(4, v434, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash();
  __break(1u);
LABEL_1436:
  re::internal::assertLog(4, v415, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash();
  __break(1u);
LABEL_1437:
  re::internal::assertLog(4, v245, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash();
  __break(1u);
LABEL_1438:
  re::internal::assertLog(4, v374, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash();
  __break(1u);
LABEL_1439:
  re::internal::assertLog(4, v285, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash();
  __break(1u);
LABEL_1440:
  re::internal::assertLog(4, v304, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash();
  __break(1u);
LABEL_1441:
  re::internal::assertLog(4, v259, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash();
  __break(1u);
LABEL_1442:
  re::internal::assertLog(4, v322, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash();
  __break(1u);
LABEL_1443:
  re::internal::assertLog(4, v406, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash();
  __break(1u);
LABEL_1444:
  re::internal::assertLog(4, v273, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash();
  __break(1u);
LABEL_1445:
  re::internal::assertLog(4, v295, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash();
  __break(1u);
LABEL_1446:
  re::internal::assertLog(4, v235, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash();
  __break(1u);
LABEL_1447:
  re::internal::assertLog(4, v313, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash();
  __break(1u);
LABEL_1448:
  re::internal::assertLog(4, v386, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash();
  __break(1u);
LABEL_1449:
  re::internal::assertLog(4, v331, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash();
  __break(1u);
LABEL_1450:
  re::internal::assertLog(4, v347, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash();
  __break(1u);
LABEL_1451:
  re::internal::assertLog(4, v425, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash();
  __break(1u);
LABEL_1452:
  re::internal::assertLog(4, v132, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash();
  __break(1u);
LABEL_1453:
  re::internal::assertLog(4, v365, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash();
  __break(1u);
LABEL_1454:
  re::internal::assertLog(4, v562, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
  _os_crash();
  __break(1u);
LABEL_1455:
  re::internal::assertLog(4, v551, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
  _os_crash();
  __break(1u);
}