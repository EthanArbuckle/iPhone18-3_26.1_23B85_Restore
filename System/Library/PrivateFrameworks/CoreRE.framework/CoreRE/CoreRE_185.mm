__n128 std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::MaterialTechniqueVariant::resolveConstantArgument(re::TypedArgument const&,re::ConstantTableCollection const&,re::Slice<re::ConstantLayer> const&,re::Slice<re::ConstantLayer> const&,re::ConstantResolution &,BOOL,unsigned long long)::$_1 &,re::FillCommand *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 result)
{
  v5 = a2->n128_u32[0];
  v6 = a2->n128_u32[2];
  v7 = a2->n128_u32[0] < a1->n128_u32[0];
  if (a2->n128_u32[0] == a1->n128_u32[0])
  {
    v7 = v6 < a1->n128_u32[2];
  }

  v8 = a3->n128_u32[2] < v6;
  v9 = a3->n128_u32[0] == v5;
  v10 = a3->n128_u32[0] < v5;
  if (v9)
  {
    v10 = v8;
  }

  if (v7)
  {
    if (v10)
    {
      result = *a1;
      *a1 = *a3;
LABEL_17:
      *a3 = result;
      goto LABEL_18;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    v12 = a3->n128_u32[0] < a2->n128_u32[0];
    if (a3->n128_u32[0] == a2->n128_u32[0])
    {
      v12 = a3->n128_u32[2] < a2->n128_u32[2];
    }

    if (v12)
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_17;
    }
  }

  else if (v10)
  {
    result = *a2;
    *a2 = *a3;
    *a3 = result;
    v11 = a2->n128_u32[0] < a1->n128_u32[0];
    if (a2->n128_u32[0] == a1->n128_u32[0])
    {
      v11 = a2->n128_u32[2] < a1->n128_u32[2];
    }

    if (v11)
    {
      result = *a1;
      *a1 = *a2;
      *a2 = result;
    }
  }

LABEL_18:
  v13 = a4->n128_u32[0] < a3->n128_u32[0];
  if (a4->n128_u32[0] == a3->n128_u32[0])
  {
    v13 = a4->n128_u32[2] < a3->n128_u32[2];
  }

  if (v13)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    v14 = a3->n128_u32[0] < a2->n128_u32[0];
    if (a3->n128_u32[0] == a2->n128_u32[0])
    {
      v14 = a3->n128_u32[2] < a2->n128_u32[2];
    }

    if (v14)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      v15 = a2->n128_u32[0] < a1->n128_u32[0];
      if (a2->n128_u32[0] == a1->n128_u32[0])
      {
        v15 = a2->n128_u32[2] < a1->n128_u32[2];
      }

      if (v15)
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::MaterialTechniqueVariant::resolveConstantArgument(re::TypedArgument const&,re::ConstantTableCollection const&,re::Slice<re::ConstantLayer> const&,re::Slice<re::ConstantLayer> const&,re::ConstantResolution &,BOOL,unsigned long long)::$_1 &,re::FillCommand *>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v5 = a2 - a1;
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        v27 = a1 + 1;
        v28 = a1[1].n128_u32[0];
        v29 = a2 - 1;
        v30 = a2[-1].n128_u32[0];
        v31 = a1[1].n128_u32[2];
        v32 = v28 < a1->n128_u32[0];
        if (v28 == a1->n128_u32[0])
        {
          v32 = v31 < a1->n128_u32[2];
        }

        v33 = a2[-1].n128_u32[2] < v31;
        v8 = v30 == v28;
        v34 = v30 < v28;
        if (v8)
        {
          v34 = v33;
        }

        if (!v32)
        {
          if (v34)
          {
            v48 = *v27;
            *v27 = *v29;
            *v29 = v48;
            v49 = a1[1].n128_u32[0];
            v8 = v49 == a1->n128_u32[0];
            v50 = v49 < a1->n128_u32[0];
            if (v8)
            {
              v50 = a1[1].n128_u32[2] < a1->n128_u32[2];
            }

            if (v50)
            {
              v51 = *a1;
              *a1 = *v27;
              *v27 = v51;
            }
          }

          return 1;
        }

        if (v34)
        {
          v35 = *a1;
          *a1 = *v29;
        }

        else
        {
          v57 = *a1;
          *a1 = *v27;
          *v27 = v57;
          v58 = a2[-1].n128_u32[0];
          v59 = a1[1].n128_u32[0];
          v8 = v58 == v59;
          v60 = v58 < v59;
          if (v8)
          {
            v60 = a2[-1].n128_u32[2] < a1[1].n128_u32[2];
          }

          if (!v60)
          {
            return 1;
          }

          v35 = *v27;
          *v27 = *v29;
        }

        *v29 = v35;
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::MaterialTechniqueVariant::resolveConstantArgument(re::TypedArgument const&,re::ConstantTableCollection const&,re::Slice<re::ConstantLayer> const&,re::Slice<re::ConstantLayer> const&,re::ConstantResolution &,BOOL,unsigned long long)::$_1 &,re::FillCommand *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        break;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::MaterialTechniqueVariant::resolveConstantArgument(re::TypedArgument const&,re::ConstantTableCollection const&,re::Slice<re::ConstantLayer> const&,re::Slice<re::ConstantLayer> const&,re::ConstantResolution &,BOOL,unsigned long long)::$_1 &,re::FillCommand *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        v12 = a2[-1].n128_u32[0];
        v11 = a2 - 1;
        v13 = a1[3].n128_u32[0];
        v14 = v12 < v13;
        if (v12 == v13)
        {
          v14 = v11->n128_u32[2] < a1[3].n128_u32[2];
        }

        if (v14)
        {
          v15 = a1[3];
          a1[3] = *v11;
          *v11 = v15;
          v16 = a1[3].n128_u32[0];
          v17 = a1[2].n128_u32[0];
          v8 = v16 == v17;
          v18 = v16 < v17;
          if (v8)
          {
            v18 = a1[3].n128_u32[2] < a1[2].n128_u32[2];
          }

          if (v18)
          {
            v19 = a1[2];
            a1[2] = a1[3];
            a1[3] = v19;
            v20 = a1[2].n128_u32[0];
            v21 = a1[1].n128_u32[0];
            v8 = v20 == v21;
            v22 = v20 < v21;
            if (v8)
            {
              v22 = a1[2].n128_u32[2] < a1[1].n128_u32[2];
            }

            if (v22)
            {
              v23 = a1[1];
              a1[1] = a1[2];
              a1[2] = v23;
              v24 = a1[1].n128_u32[0];
              v8 = v24 == a1->n128_u32[0];
              v25 = v24 < a1->n128_u32[0];
              if (v8)
              {
                v25 = a1[1].n128_u32[2] < a1->n128_u32[2];
              }

              if (v25)
              {
                v26 = *a1;
                *a1 = a1[1];
                a1[1] = v26;
              }
            }
          }
        }

        return 1;
      default:
        goto LABEL_31;
    }

    return 1;
  }

  if (v5 < 2)
  {
    return 1;
  }

  if (v5 == 2)
  {
    v7 = a2 - 1;
    v6 = a2[-1].n128_u32[0];
    v8 = v6 == a1->n128_u32[0];
    v9 = v6 < a1->n128_u32[0];
    if (v8)
    {
      v9 = a2[-1].n128_u32[2] < a1->n128_u32[2];
    }

    if (v9)
    {
      v10 = *a1;
      *a1 = *v7;
      *v7 = v10;
    }

    return 1;
  }

LABEL_31:
  v36 = a1 + 2;
  v37 = a1[2].n128_u32[0];
  v38 = a1 + 1;
  v39 = a1[1].n128_u32[0];
  v40 = a1->n128_u32[0];
  v41 = a1[1].n128_u32[2];
  v42 = a1->n128_u32[2];
  v43 = v39 < a1->n128_u32[0];
  if (v39 == a1->n128_u32[0])
  {
    v43 = v41 < v42;
  }

  v44 = a1[2].n128_u32[2];
  v45 = v44 < v41;
  v8 = v37 == v39;
  v46 = v37 < v39;
  if (v8)
  {
    v46 = v45;
  }

  if (v43)
  {
    if (v46)
    {
      v47 = *a1;
      *a1 = *v36;
LABEL_58:
      *v36 = v47;
      goto LABEL_59;
    }

    v61 = *a1;
    *a1 = *v38;
    *v38 = v61;
    v62 = a1[1].n128_u32[0];
    v8 = v37 == v62;
    v63 = v37 < v62;
    if (v8)
    {
      v63 = v44 < a1[1].n128_u32[2];
    }

    if (v63)
    {
      v47 = *v38;
      *v38 = *v36;
      goto LABEL_58;
    }
  }

  else if (v46)
  {
    v52 = *v38;
    *v38 = *v36;
    *v36 = v52;
    v53 = a1[1].n128_u32[0];
    v54 = a1[1].n128_u32[2] < v42;
    v8 = v53 == v40;
    v55 = v53 < v40;
    if (v8)
    {
      v55 = v54;
    }

    if (v55)
    {
      v56 = *a1;
      *a1 = *v38;
      *v38 = v56;
    }
  }

LABEL_59:
  v64 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v65 = 0;
  v66 = 0;
  while (1)
  {
    v67 = v64->n128_u32[0];
    v68 = v36->n128_u32[0];
    v69 = v64->n128_u32[2];
    v70 = v69 < v36->n128_u32[2];
    v8 = v64->n128_u32[0] == v68;
    v71 = v64->n128_u32[0] < v68;
    if (!v8)
    {
      v70 = v71;
    }

    if (v70)
    {
      v72 = v64->n128_u32[1];
      v73 = v64->n128_u32[3];
      v74 = v65;
      while (1)
      {
        v75 = a1 + v74;
        *(a1 + v74 + 48) = *(a1 + v74 + 32);
        if (v74 == -32)
        {
          break;
        }

        v76 = *(v75 + 4);
        v77 = v69 < *(v75 + 6);
        v8 = v67 == v76;
        v78 = v67 < v76;
        if (!v8)
        {
          v77 = v78;
        }

        v74 -= 16;
        if (!v77)
        {
          v79 = (a1 + v74 + 48);
          goto LABEL_71;
        }
      }

      v79 = a1;
LABEL_71:
      v79->n128_u32[0] = v67;
      v79->n128_u32[1] = v72;
      v79->n128_u32[2] = v69;
      v79->n128_u32[3] = v73;
      if (++v66 == 8)
      {
        return &v64[1] == a2;
      }
    }

    v36 = v64;
    v65 += 16;
    if (++v64 == a2)
    {
      return 1;
    }
  }
}

void *re::DynamicArray<re::ConstantResolution>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ConstantResolution>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x70uLL))
        {
          v2 = 112 * a2;
          result = (*(*result + 32))(result, 112 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 112, a2);
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
        v10 = v8 + 112 * v9;
        v11 = v7;
        do
        {
          v12 = *v8;
          v11[5] = 0;
          *v11 = v12;
          v11[1] = 0;
          v11[2] = 0;
          v11[3] = 0;
          *(v11 + 8) = 0;
          v13 = v8 + 8;
          v14 = *(v8 + 16);
          v11[1] = *(v8 + 8);
          *(v8 + 8) = 0;
          v11[2] = v14;
          *(v8 + 16) = 0;
          v15 = v11[3];
          v11[3] = *(v8 + 24);
          *(v8 + 24) = v15;
          v16 = v11[5];
          v17 = *(v8 + 48);
          v11[5] = *(v8 + 40);
          *(v8 + 40) = v16;
          ++*(v8 + 32);
          ++*(v11 + 8);
          v11[11] = 0;
          v11[8] = 0;
          v11[9] = 0;
          v11[7] = 0;
          *(v11 + 20) = 0;
          v19 = *(v8 + 56);
          v18 = v8 + 56;
          v11[6] = v17;
          v20 = *(v18 + 8);
          v11[7] = v19;
          v11[8] = v20;
          *v18 = 0;
          *(v18 + 8) = 0;
          v21 = v11[9];
          v11[9] = *(v18 + 16);
          *(v18 + 16) = v21;
          v22 = v11[11];
          v11[11] = *(v18 + 32);
          *(v18 + 32) = v22;
          ++*(v18 + 24);
          ++*(v11 + 20);
          v23 = *(v18 + 40);
          *(v11 + 26) = *(v18 + 48);
          v11[12] = v23;
          re::DynamicArray<unsigned long>::deinit(v18);
          re::DynamicArray<unsigned long>::deinit(v13);
          v11 += 14;
          v8 = v18 + 56;
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

unint64_t re::DynamicInlineArray<re::SamplerLayer,12ul>::ensureCapacity(unint64_t result, uint64_t a2)
{
  if (result > 0xB)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

double re::HashTable<re::WeakStringID,re::TextureBlockResolution,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(uint64_t *a1)
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
          *(v4 + 8) = 0;
        }

        v4 += 24;
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

uint64_t re::HashTable<re::WeakStringID,re::TextureBlockResolution,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
            v17 = v13 + 8;
            do
            {
              if ((*(v17 - 8) & 0x80000000) != 0)
              {
                v18 = 0xBF58476D1CE4E5B9 * (*v17 ^ (*v17 >> 30));
                v19 = re::HashTable<re::WeakStringID,re::TextureBlockResolution,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(a1, ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) ^ ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) >> 31)) % *(a1 + 24));
                *(v19 + 8) = *v17;
                v20 = *(v17 + 8);
                *(v19 + 20) = *(v17 + 12);
                *(v19 + 16) = v20;
              }

              v17 += 24;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::WeakStringID,re::TextureBlockResolution,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v27);
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

void **re::DynamicArray<re::TextureResolution>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<re::TextureResolution>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), 8 * v5);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 8 * v5, (*(a2 + 32) + 8 * v5), 8 * (v4 - v5));
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), 8 * v4);
  }

  v3[2] = v4;
  return result;
}

uint64_t re::DynamicArray<re::ConstantResolution>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::ConstantResolution>::setCapacity(a1, *(a2 + 16));
    result = std::__copy_impl::operator()[abi:nn200100]<re::ConstantResolution *,re::ConstantResolution *,re::ConstantResolution *>(*(a2 + 32), *(a2 + 32) + 112 * a1[2], a1[4]);
    v9 = a1[2];
    if (v9 != v4)
    {
      v10 = *(a2 + 32);
      v11 = v10 + 112 * v4;
      v12 = a1[4];
      v13 = 112 * v9;
      do
      {
        v14 = v10 + v13;
        v15 = v12 + v13;
        *(v12 + v13) = *(v10 + v13);
        re::DynamicArray<re::GeomCell4>::DynamicArray(v12 + v13 + 8, (v10 + v13 + 8));
        *(v15 + 48) = *(v10 + v13 + 48);
        result = re::DynamicArray<re::GeomCell4>::DynamicArray(v12 + v13 + 56, (v10 + v13 + 56));
        v16 = *(v10 + v13 + 96);
        *(v15 + 104) = *(v10 + v13 + 104);
        *(v15 + 96) = v16;
        v10 += 112;
        v12 += 112;
      }

      while (v14 + 112 != v11);
    }
  }

  else
  {
    result = std::__copy_impl::operator()[abi:nn200100]<re::ConstantResolution *,re::ConstantResolution *,re::ConstantResolution *>(*(a2 + 32), *(a2 + 32) + 112 * v4, a1[4]);
    v6 = a1[2];
    if (v4 != v6)
    {
      v7 = -112 * v4 + 112 * v6;
      v8 = 112 * v4 + a1[4] + 56;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v8);
        result = re::DynamicArray<unsigned long>::deinit(v8 - 48);
        v8 += 112;
        v7 -= 112;
      }

      while (v7);
    }
  }

  a1[2] = v4;
  return result;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::ConstantResolution *,re::ConstantResolution *,re::ConstantResolution *>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = a3 + 56;
    v5 = result + 56;
    do
    {
      *(v4 - 56) = *(v5 - 56);
      re::DynamicArray<re::GeomCell4>::operator=(v4 - 48, (v5 - 48));
      *(v4 - 8) = *(v5 - 8);
      result = re::DynamicArray<re::GeomCell4>::operator=(v4, v5);
      v6 = *(v5 + 40);
      *(v4 + 48) = *(v5 + 48);
      *(v4 + 40) = v6;
      v4 += 112;
      v7 = v5 + 56;
      v5 += 112;
    }

    while (v7 != a2);
  }

  return result;
}

void *re::DynamicArray<re::ArgumentBufferResolution>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ArgumentBufferResolution>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x90uLL))
        {
          v2 = 144 * a2;
          result = (*(*result + 32))(result, 144 * a2, 8);
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
        v10 = 0;
        v11 = 144 * v9;
        do
        {
          v12 = &v7[v10 / 8];
          v13 = v8 + v10;
          v12[4] = 0;
          v12[1] = 0;
          v12[2] = 0;
          *v12 = 0;
          *(v12 + 6) = 0;
          v14 = *(v8 + v10 + 8);
          *v12 = *(v8 + v10);
          v12[1] = v14;
          *v13 = 0;
          *(v13 + 8) = 0;
          v15 = v7[v10 / 8 + 2];
          v12[2] = *(v8 + v10 + 16);
          *(v13 + 16) = v15;
          v16 = v7[v10 / 8 + 4];
          v12[4] = *(v8 + v10 + 32);
          *(v13 + 32) = v16;
          *(v13 + 24) = *(v8 + v10 + 24) + 1;
          *(v12 + 6) = LODWORD(v7[v10 / 8 + 3]) + 1;
          v12[9] = 0;
          v12[6] = 0;
          v12[7] = 0;
          v12[5] = 0;
          *(v12 + 16) = 0;
          v17 = *(v8 + v10 + 48);
          v12[5] = *(v8 + v10 + 40);
          *(v8 + v10 + 40) = 0;
          v12[6] = v17;
          *(v13 + 48) = 0;
          v18 = v7[v10 / 8 + 7];
          v12[7] = *(v8 + v10 + 56);
          *(v13 + 56) = v18;
          v19 = v7[v10 / 8 + 9];
          v12[9] = *(v8 + v10 + 72);
          *(v13 + 72) = v19;
          *(v13 + 64) = *(v8 + v10 + 64) + 1;
          *(v12 + 16) = LODWORD(v7[v10 / 8 + 8]) + 1;
          v12[14] = 0;
          v12[11] = 0;
          v12[12] = 0;
          v12[10] = 0;
          *(v12 + 26) = 0;
          v20 = *(v8 + v10 + 88);
          v12[10] = *(v8 + v10 + 80);
          *(v8 + v10 + 80) = 0;
          v12[11] = v20;
          *(v13 + 88) = 0;
          v21 = v7[v10 / 8 + 12];
          v12[12] = *(v8 + v10 + 96);
          *(v13 + 96) = v21;
          v22 = v7[v10 / 8 + 14];
          v12[14] = *(v8 + v10 + 112);
          *(v13 + 112) = v22;
          *(v13 + 104) = *(v8 + v10 + 104) + 1;
          *(v12 + 26) = LODWORD(v7[v10 / 8 + 13]) + 1;
          v12[15] = *(v8 + v10 + 120);
          *(v13 + 120) = 0;
          v23 = *(v8 + v10 + 128);
          *(v12 + 68) = *(v8 + v10 + 136);
          v12[16] = v23;
          v24 = *(v8 + v10 + 120);
          if (v24)
          {

            *(v13 + 120) = 0;
          }

          re::DynamicArray<re::ConstantResolution>::deinit(v8 + v10 + 80);
          re::DynamicArray<unsigned long>::deinit(v8 + v10 + 40);
          re::DynamicArray<unsigned long>::deinit(v8 + v10);
          v10 += 144;
        }

        while (v11 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned long,re::TechniqueResolutions<re::AttributeResolution> *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
            v18 = (v13 + 8);
            do
            {
              if ((*(v18 - 1) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long,re::TechniqueResolutions<re::AttributeResolution> *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, *v18 % *(a1 + 24));
                v20 = v18[1];
                *(v19 + 8) = *v18;
                *(v19 + 16) = v20;
              }

              ++v17;
              v18 += 3;
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

void *re::allocInfo_MeshPartFlags(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BA520, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA520))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BA960, "MeshPartFlags");
    __cxa_guard_release(&qword_1EE1BA520);
  }

  return &unk_1EE1BA960;
}

void re::initInfo_MeshPartFlags(re *this, re::IntrospectionBase *a2)
{
  v17[0] = 0xDD4C8A65E2975D8ELL;
  v17[1] = "MeshPartFlags";
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  *(this + 2) = v18;
  if ((atomic_load_explicit(&qword_1EE1BA528, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BA528);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::Optional<BOOL>>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "doubleSided";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1BA608 = v9;
      v10 = re::introspectionAllocator(v9);
      re::IntrospectionInfo<re::Optional<re::WindingOrder>>::get(v10, v11);
      v12 = (*(*v10 + 32))(v10, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "windingOrder";
      *(v12 + 16) = &qword_1EE1BA660;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x200000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1BA610 = v12;
      v13 = re::introspectionAllocator(v12);
      re::IntrospectionInfo<re::Optional<re::OccupancyBehavior>>::get(v13, v14);
      v15 = (*(*v13 + 32))(v13, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "occupancyBehavior";
      *(v15 + 16) = &qword_1EE1BA6A0;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x400000003;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1BA618 = v15;
      __cxa_guard_release(&qword_1EE1BA528);
    }
  }

  *(this + 2) = 0x600000008;
  *(this + 6) = 1;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1BA608;
  *(this + 9) = re::internal::defaultConstruct<re::MeshPartFlags>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshPartFlags>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshPartFlags>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshPartFlags>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v16 = v18;
}

void re::IntrospectionInfo<re::Optional<re::WindingOrder>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1BA598, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_58;
  }

  while ((byte_1EE1BA4E4 & 1) == 0)
  {
    if ((atomic_load_explicit(&qword_1EE1BA4F0, memory_order_acquire) & 1) == 0)
    {
      v34 = __cxa_guard_acquire(&qword_1EE1BA4F0);
      if (v34)
      {
        v35 = re::introspectionAllocator(v34);
        v36 = (*(*v35 + 32))(v35, 24, 8);
        *v36 = 1;
        *(v36 + 1) = 0;
        *(v36 + 2) = "CW";
        qword_1EE1BA5C0 = v36;
        v37 = re::introspectionAllocator(v36);
        v38 = (*(*v37 + 32))(v37, 24, 8);
        *v38 = 1;
        *(v38 + 8) = 1;
        *(v38 + 16) = "CCW";
        qword_1EE1BA5C8 = v38;
        __cxa_guard_release(&qword_1EE1BA4F0);
      }
    }

    if ((atomic_load_explicit(&qword_1EE1BA4F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA4F8))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BA7A0, "WindingOrder", 1, 1, 1, 1);
      qword_1EE1BA7A0 = &unk_1F5D0C658;
      qword_1EE1BA7E0 = &re::introspect_WindingOrder(BOOL)::enumTable;
      dword_1EE1BA7B0 = 9;
      __cxa_guard_release(&qword_1EE1BA4F8);
    }

    if (_MergedGlobals_470)
    {
      goto LABEL_43;
    }

    _MergedGlobals_470 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1BA7A0, a2);
    *&v42 = 0x3FD39B1D38223168;
    *(&v42 + 1) = "WindingOrder";
    v45 = 0x31CD534126;
    v46 = "uint8_t";
    v4 = v43;
    v5 = v44[0];
    if (v45)
    {
      if (v45)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1BA7E0;
      v45 = v4;
      v46 = v5;
      re::TypeBuilder::beginEnumType(&v43, &v42, 1, 1, &v45);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v47.var0 = 2 * v11;
            v47.var1 = v10;
            re::TypeBuilder::addEnumConstant(&v43, v15, &v47);
            if (*&v47.var0)
            {
              if (*&v47.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v47.var0 = 2 * v20;
              v47.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(&v43, v24, &v47);
              if (*&v47.var0)
              {
                if (*&v47.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(&v43, v26);
      xmmword_1EE1BA7C0 = v47;
      if (v42)
      {
        if (v42)
        {
        }
      }

LABEL_43:
      if ((byte_1EE1BA4E4 & 1) == 0)
      {
        byte_1EE1BA4E4 = 1;
        v28 = dword_1EE1BA7B8;
        ArcSharedObject::ArcSharedObject(&qword_1EE1BA660, 0);
        qword_1EE1BA670 = 0x20000000DLL;
        dword_1EE1BA678 = v28;
        word_1EE1BA67C = 0;
        *&xmmword_1EE1BA680 = 0;
        *(&xmmword_1EE1BA680 + 1) = 0xFFFFFFFFLL;
        qword_1EE1BA690 = &qword_1EE1BA7A0;
        unk_1EE1BA698 = 0;
        qword_1EE1BA660 = &unk_1F5D09330;
        re::IntrospectionRegistry::add(v29, v30);
        re::getPrettyTypeName(&qword_1EE1BA660, &v43);
        if (v44[0])
        {
          v31 = v44[1];
        }

        else
        {
          v31 = v44 + 1;
        }

        if (v43 && (v44[0] & 1) != 0)
        {
          (*(*v43 + 40))();
        }

        v40 = xmmword_1EE1BA7C0;
        if (*&v47.var0)
        {
          v39 = v47;
        }

        else
        {
          re::StackScratchAllocator::StackScratchAllocator(&v45);
          re::TypeBuilder::TypeBuilder(&v43, &v45);
          v42 = v40;
          re::TypeBuilder::beginOptionalType(&v43, &v41, 2uLL, 1uLL, &v42);
          re::TypeBuilder::setOptionalAccessors(&v43, re::TypeBuilderHelper::registerOptional<re::WindingOrder>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::WindingOrder>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
          re::TypeBuilder::~TypeBuilder(&v43, v33);
          re::StackScratchAllocator::~StackScratchAllocator(&v45);
        }

        xmmword_1EE1BA680 = v39;
        if (v41)
        {
          if (v41)
          {
          }
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, *(&v42 + 1));
    _os_crash();
    __break(1u);
LABEL_58:
    if (__cxa_guard_acquire(&qword_1EE1BA598))
    {
      re::IntrospectionOptionalBase::IntrospectionOptionalBase(&qword_1EE1BA660);
      qword_1EE1BA660 = &unk_1F5D09330;
      __cxa_guard_release(&qword_1EE1BA598);
    }
  }
}

void re::IntrospectionInfo<re::Optional<re::OccupancyBehavior>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1BA5A0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_58;
  }

  while ((byte_1EE1BA4E5 & 1) == 0)
  {
    if ((atomic_load_explicit(&qword_1EE1BA588, memory_order_acquire) & 1) == 0)
    {
      v34 = __cxa_guard_acquire(&qword_1EE1BA588);
      if (v34)
      {
        v35 = re::introspectionAllocator(v34);
        v36 = (*(*v35 + 32))(v35, 24, 8);
        *v36 = 1;
        *(v36 + 1) = 0;
        *(v36 + 2) = "Default";
        qword_1EE1BA620 = v36;
        v37 = re::introspectionAllocator(v36);
        v38 = (*(*v37 + 32))(v37, 24, 8);
        *v38 = 1;
        *(v38 + 1) = 2;
        *(v38 + 2) = "OptIn";
        qword_1EE1BA628 = v38;
        v39 = re::introspectionAllocator(v38);
        v40 = (*(*v39 + 32))(v39, 24, 8);
        *v40 = 1;
        *(v40 + 8) = 1;
        *(v40 + 16) = "OptOut";
        qword_1EE1BA630 = v40;
        __cxa_guard_release(&qword_1EE1BA588);
      }
    }

    if ((atomic_load_explicit(&qword_1EE1BA590, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA590))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BA878, "OccupancyBehavior", 1, 1, 1, 1);
      qword_1EE1BA878 = &unk_1F5D0C658;
      qword_1EE1BA8B8 = &re::introspect_OccupancyBehavior(BOOL)::enumTable;
      dword_1EE1BA888 = 9;
      __cxa_guard_release(&qword_1EE1BA590);
    }

    if (byte_1EE1BA4E3)
    {
      goto LABEL_43;
    }

    byte_1EE1BA4E3 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1BA878, a2);
    *&v44 = 0x8C097A668536533ELL;
    *(&v44 + 1) = "OccupancyBehavior";
    v47 = 0x31CD534126;
    v48 = "uint8_t";
    v4 = v45;
    v5 = v46[0];
    if (v47)
    {
      if (v47)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1BA8B8;
      v47 = v4;
      v48 = v5;
      re::TypeBuilder::beginEnumType(&v45, &v44, 1, 1, &v47);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v49.var0 = 2 * v11;
            v49.var1 = v10;
            re::TypeBuilder::addEnumConstant(&v45, v15, &v49);
            if (*&v49.var0)
            {
              if (*&v49.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v49.var0 = 2 * v20;
              v49.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(&v45, v24, &v49);
              if (*&v49.var0)
              {
                if (*&v49.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(&v45, v26);
      xmmword_1EE1BA898 = v49;
      if (v44)
      {
        if (v44)
        {
        }
      }

LABEL_43:
      if ((byte_1EE1BA4E5 & 1) == 0)
      {
        byte_1EE1BA4E5 = 1;
        v28 = dword_1EE1BA890;
        ArcSharedObject::ArcSharedObject(&qword_1EE1BA6A0, 0);
        qword_1EE1BA6B0 = 0x20000000DLL;
        dword_1EE1BA6B8 = v28;
        word_1EE1BA6BC = 0;
        *&xmmword_1EE1BA6C0 = 0;
        *(&xmmword_1EE1BA6C0 + 1) = 0xFFFFFFFFLL;
        qword_1EE1BA6D0 = &qword_1EE1BA878;
        unk_1EE1BA6D8 = 0;
        qword_1EE1BA6A0 = &unk_1F5D093B0;
        re::IntrospectionRegistry::add(v29, v30);
        re::getPrettyTypeName(&qword_1EE1BA6A0, &v45);
        if (v46[0])
        {
          v31 = v46[1];
        }

        else
        {
          v31 = v46 + 1;
        }

        if (v45 && (v46[0] & 1) != 0)
        {
          (*(*v45 + 40))();
        }

        v42 = xmmword_1EE1BA898;
        if (*&v49.var0)
        {
          v41 = v49;
        }

        else
        {
          re::StackScratchAllocator::StackScratchAllocator(&v47);
          re::TypeBuilder::TypeBuilder(&v45, &v47);
          v44 = v42;
          re::TypeBuilder::beginOptionalType(&v45, &v43, 2uLL, 1uLL, &v44);
          re::TypeBuilder::setOptionalAccessors(&v45, re::TypeBuilderHelper::registerOptional<re::OccupancyBehavior>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::OccupancyBehavior>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
          re::TypeBuilder::~TypeBuilder(&v45, v33);
          re::StackScratchAllocator::~StackScratchAllocator(&v47);
        }

        xmmword_1EE1BA6C0 = v41;
        if (v43)
        {
          if (v43)
          {
          }
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, *(&v44 + 1));
    _os_crash();
    __break(1u);
LABEL_58:
    if (__cxa_guard_acquire(&qword_1EE1BA5A0))
    {
      re::IntrospectionOptionalBase::IntrospectionOptionalBase(&qword_1EE1BA6A0);
      qword_1EE1BA6A0 = &unk_1F5D093B0;
      __cxa_guard_release(&qword_1EE1BA5A0);
    }
  }
}

void re::internal::defaultConstruct<re::MeshPartFlags>(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *a3 = 0;
  a3[2] = 0;
  a3[4] = 0;
}

_BYTE *re::internal::defaultConstructV2<re::MeshPartFlags>(_BYTE *result)
{
  *result = 0;
  result[2] = 0;
  result[4] = 0;
  return result;
}

void *re::allocInfo_OverrideMeshPartFlags(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BA538, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA538))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BA9F0, "OverrideMeshPartFlags");
    __cxa_guard_release(&qword_1EE1BA538);
  }

  return &unk_1EE1BA9F0;
}

void re::initInfo_OverrideMeshPartFlags(re *this, re::IntrospectionBase *a2)
{
  v16[0] = 0x12E7D947D9ECDCB6;
  v16[1] = "OverrideMeshPartFlags";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1BA540, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BA540);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE1BA530;
      if (!qword_1EE1BA530)
      {
        v8 = re::allocInfo_MeshPartFlags(v6);
        qword_1EE1BA530 = v8;
        re::initInfo_MeshPartFlags(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "MeshPartFlags";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1BA5E0 = v10;
      v11 = re::introspectionAllocator(v10);
      v13 = re::introspect_BOOL(1, v12);
      v14 = (*(*v11 + 32))(v11, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "overrideWindingOrderToReverse";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x600000001;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE1BA5E8 = v14;
      __cxa_guard_release(&qword_1EE1BA540);
    }
  }

  *(this + 2) = 0x700000008;
  *(this + 6) = 1;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BA5E0;
  *(this + 9) = re::internal::defaultConstruct<re::OverrideMeshPartFlags>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::OverrideMeshPartFlags>;
  *(this + 13) = re::internal::defaultConstructV2<re::OverrideMeshPartFlags>;
  *(this + 14) = re::internal::defaultDestructV2<re::OverrideMeshPartFlags>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v15 = v17;
}

void re::internal::defaultConstruct<re::OverrideMeshPartFlags>(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *a3 = 0;
  a3[2] = 0;
  a3[4] = 0;
  a3[6] = 0;
}

_BYTE *re::internal::defaultConstructV2<re::OverrideMeshPartFlags>(_BYTE *result)
{
  *result = 0;
  result[2] = 0;
  result[4] = 0;
  result[6] = 0;
  return result;
}

void *re::allocInfo_MeshRuntimeFlags(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BA550, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA550))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BAA80, "MeshRuntimeFlags");
    __cxa_guard_release(&qword_1EE1BA550);
  }

  return &unk_1EE1BAA80;
}

void re::initInfo_MeshRuntimeFlags(re *this, re::IntrospectionBase *a2)
{
  v26[0] = 0xCFFA554448271078;
  v26[1] = "MeshRuntimeFlags";
  if (v26[0])
  {
    if (v26[0])
    {
    }
  }

  *(this + 2) = v27;
  if ((atomic_load_explicit(&qword_1EE1BA558, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BA558);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::Optional<BOOL>>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "enableRendering";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1BA638 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::Optional<BOOL>>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "enableCulling";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x200000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1BA640 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::IntrospectionInfo<re::Optional<BOOL>>::get(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "castsShadows";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x400000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1BA648 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::IntrospectionInfo<re::Optional<BOOL>>::get(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "enablePortalCrossing";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x600000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1BA650 = v21;
      v22 = re::introspectionAllocator(v21);
      re::IntrospectionInfo<re::Optional<short>>::get(v22, v23);
      v24 = (*(*v22 + 32))(v22, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "techniqueQualityLevelBias";
      *(v24 + 16) = &qword_1EE1BA6E0;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x800000005;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE1BA658 = v24;
      __cxa_guard_release(&qword_1EE1BA558);
    }
  }

  *(this + 2) = 0xC00000008;
  *(this + 6) = 2;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1BA638;
  *(this + 9) = re::internal::defaultConstruct<re::MeshRuntimeFlags>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshRuntimeFlags>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshRuntimeFlags>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshRuntimeFlags>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v25 = v27;
}

void re::IntrospectionInfo<re::Optional<short>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1BA5A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA5A8))
  {
    re::IntrospectionOptionalBase::IntrospectionOptionalBase(&qword_1EE1BA6E0);
    qword_1EE1BA6E0 = &unk_1F5D09430;
    __cxa_guard_release(&qword_1EE1BA5A8);
  }

  if ((byte_1EE1BA4E6 & 1) == 0)
  {
    v2 = re::introspect_short(1, a2);
    if ((byte_1EE1BA4E6 & 1) == 0)
    {
      v3 = v2;
      byte_1EE1BA4E6 = 1;
      v4 = v2[6];
      ArcSharedObject::ArcSharedObject(&qword_1EE1BA6E0, 0);
      qword_1EE1BA6F0 = 0x40000000DLL;
      dword_1EE1BA6F8 = v4;
      word_1EE1BA6FC = 0;
      *&xmmword_1EE1BA700 = 0;
      *(&xmmword_1EE1BA700 + 1) = 0xFFFFFFFFLL;
      qword_1EE1BA710 = v3;
      qword_1EE1BA718 = 0;
      qword_1EE1BA6E0 = &unk_1F5D09430;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&qword_1EE1BA6E0, &v14);
      if (v15)
      {
        v7 = *&v16[7];
      }

      else
      {
        v7 = v16;
      }

      if (v14 && (v15 & 1) != 0)
      {
        (*(*v14 + 40))();
      }

      v11 = *(v3 + 32);
      if (v18)
      {
        v10 = v18;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v17);
        re::TypeBuilder::TypeBuilder(&v14, v17);
        v13 = v11;
        re::TypeBuilder::beginOptionalType(&v14, &v12, 4uLL, 2uLL, &v13);
        re::TypeBuilder::setOptionalAccessors(&v14, re::TypeBuilderHelper::registerOptional<short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE1BA700 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

void re::internal::defaultConstruct<re::MeshRuntimeFlags>(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *a3 = 0;
  a3[2] = 0;
  a3[4] = 0;
  a3[6] = 0;
  a3[8] = 0;
}

_BYTE *re::internal::defaultConstructV2<re::MeshRuntimeFlags>(_BYTE *result)
{
  *result = 0;
  result[2] = 0;
  result[4] = 0;
  result[6] = 0;
  result[8] = 0;
  return result;
}

void *re::allocInfo_MaterialRenderFlags(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BA568, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA568))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BAB10, "MaterialRenderFlags");
    __cxa_guard_release(&qword_1EE1BA568);
  }

  return &unk_1EE1BAB10;
}

void re::initInfo_MaterialRenderFlags(re *this, re::IntrospectionBase *a2)
{
  v45[0] = 0xB194D3BA54A4CD94;
  v45[1] = "MaterialRenderFlags";
  if (v45[0])
  {
    if (v45[0])
    {
    }
  }

  *(this + 2) = v46;
  if ((atomic_load_explicit(&qword_1EE1BA570, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BA570);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::Optional<BOOL>>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "doubleSided";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1BA8C0 = v9;
      v10 = re::introspectionAllocator(v9);
      re::IntrospectionInfo<re::Optional<re::CullingMode>>::get(v10, v11);
      v12 = (*(*v10 + 32))(v10, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "cullMode";
      *(v12 + 16) = &qword_1EE1BA720;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x200000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1BA8C8 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::IntrospectionInfo<re::Optional<BOOL>>::get(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "visibleCamera0";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x600000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1BA8D0 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::IntrospectionInfo<re::Optional<BOOL>>::get(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "visibleCamera1";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x800000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1BA8D8 = v20;
      v21 = re::introspectionAllocator(v20);
      re::IntrospectionInfo<re::Optional<re::TriangleFillModeInternal>>::get(v21, v22);
      v23 = (*(*v21 + 32))(v21, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "triangleFillMode";
      *(v23 + 16) = &qword_1EE1BA760;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0x400000005;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1EE1BA8E0 = v23;
      v24 = re::introspectionAllocator(v23);
      v26 = re::IntrospectionInfo<re::Optional<BOOL>>::get(1, v25);
      v27 = (*(*v24 + 32))(v24, 72, 8);
      *v27 = 1;
      *(v27 + 8) = "writesDepth";
      *(v27 + 16) = v26;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0xA00000006;
      *(v27 + 40) = 0;
      *(v27 + 48) = 0;
      *(v27 + 56) = 0;
      *(v27 + 64) = 0;
      qword_1EE1BA8E8 = v27;
      v28 = re::introspectionAllocator(v27);
      v30 = re::IntrospectionInfo<re::Optional<BOOL>>::get(1, v29);
      v31 = (*(*v28 + 32))(v28, 72, 8);
      *v31 = 1;
      *(v31 + 8) = "readsDepth";
      *(v31 + 16) = v30;
      *(v31 + 24) = 0;
      *(v31 + 32) = 0xC00000007;
      *(v31 + 40) = 0;
      *(v31 + 48) = 0;
      *(v31 + 56) = 0;
      *(v31 + 64) = 0;
      qword_1EE1BA8F0 = v31;
      v32 = re::introspectionAllocator(v31);
      v34 = re::IntrospectionInfo<re::Optional<BOOL>>::get(1, v33);
      v35 = (*(*v32 + 32))(v32, 72, 8);
      *v35 = 1;
      *(v35 + 8) = "needsPassthroughBlur";
      *(v35 + 16) = v34;
      *(v35 + 24) = 0;
      *(v35 + 32) = 0xE00000008;
      *(v35 + 40) = 0;
      *(v35 + 48) = 0;
      *(v35 + 56) = 0;
      *(v35 + 64) = 0;
      qword_1EE1BA8F8 = v35;
      v36 = re::introspectionAllocator(v35);
      v38 = re::IntrospectionInfo<re::Optional<BOOL>>::get(1, v37);
      v39 = (*(*v36 + 32))(v36, 72, 8);
      *v39 = 1;
      *(v39 + 8) = "needsVCABlur";
      *(v39 + 16) = v38;
      *(v39 + 24) = 0;
      *(v39 + 32) = 0x1000000009;
      *(v39 + 40) = 0;
      *(v39 + 48) = 0;
      *(v39 + 56) = 0;
      *(v39 + 64) = 0;
      qword_1EE1BA900 = v39;
      v40 = re::introspectionAllocator(v39);
      v42 = re::IntrospectionInfo<re::Optional<BOOL>>::get(1, v41);
      v43 = (*(*v40 + 32))(v40, 72, 8);
      *v43 = 1;
      *(v43 + 8) = "needsVisualDepthTexture";
      *(v43 + 16) = v42;
      *(v43 + 24) = 0;
      *(v43 + 32) = 0x120000000ALL;
      *(v43 + 40) = 0;
      *(v43 + 48) = 0;
      *(v43 + 56) = 0;
      *(v43 + 64) = 0;
      qword_1EE1BA908 = v43;
      __cxa_guard_release(&qword_1EE1BA570);
    }
  }

  *(this + 2) = 0x1400000008;
  *(this + 6) = 1;
  *(this + 14) = 0;
  *(this + 14) = 10;
  *(this + 8) = &qword_1EE1BA8C0;
  *(this + 9) = re::internal::defaultConstruct<re::MaterialRenderFlags>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MaterialRenderFlags>;
  *(this + 13) = re::internal::defaultConstructV2<re::MaterialRenderFlags>;
  *(this + 14) = re::internal::defaultDestructV2<re::MaterialRenderFlags>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v44 = v46;
}

void re::IntrospectionInfo<re::Optional<re::CullingMode>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1BA5B0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_58;
  }

  while ((byte_1EE1BA4E7 & 1) == 0)
  {
    if ((atomic_load_explicit(&qword_1EE1BA500, memory_order_acquire) & 1) == 0)
    {
      v34 = __cxa_guard_acquire(&qword_1EE1BA500);
      if (v34)
      {
        v35 = re::introspectionAllocator(v34);
        v36 = (*(*v35 + 32))(v35, 24, 8);
        *v36 = 1;
        *(v36 + 1) = 0;
        *(v36 + 2) = "None";
        qword_1EE1BA5F0 = v36;
        v37 = re::introspectionAllocator(v36);
        v38 = (*(*v37 + 32))(v37, 24, 8);
        *v38 = 1;
        *(v38 + 1) = 1;
        *(v38 + 2) = "Front";
        qword_1EE1BA5F8 = v38;
        v39 = re::introspectionAllocator(v38);
        v40 = (*(*v39 + 32))(v39, 24, 8);
        *v40 = 1;
        *(v40 + 8) = 2;
        *(v40 + 16) = "Back";
        qword_1EE1BA600 = v40;
        __cxa_guard_release(&qword_1EE1BA500);
      }
    }

    if ((atomic_load_explicit(&qword_1EE1BA508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA508))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BA7E8, "CullingMode", 1, 1, 1, 1);
      qword_1EE1BA7E8 = &unk_1F5D0C658;
      qword_1EE1BA828 = &re::introspect_CullingMode(BOOL)::enumTable;
      dword_1EE1BA7F8 = 9;
      __cxa_guard_release(&qword_1EE1BA508);
    }

    if (byte_1EE1BA4E1)
    {
      goto LABEL_43;
    }

    byte_1EE1BA4E1 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1BA7E8, a2);
    *&v44 = 0x19CDA08E27985A6;
    *(&v44 + 1) = "CullingMode";
    v47 = 0x31CD534126;
    v48 = "uint8_t";
    v4 = v45;
    v5 = v46[0];
    if (v47)
    {
      if (v47)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1BA828;
      v47 = v4;
      v48 = v5;
      re::TypeBuilder::beginEnumType(&v45, &v44, 1, 1, &v47);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v49.var0 = 2 * v11;
            v49.var1 = v10;
            re::TypeBuilder::addEnumConstant(&v45, v15, &v49);
            if (*&v49.var0)
            {
              if (*&v49.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v49.var0 = 2 * v20;
              v49.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(&v45, v24, &v49);
              if (*&v49.var0)
              {
                if (*&v49.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(&v45, v26);
      xmmword_1EE1BA808 = v49;
      if (v44)
      {
        if (v44)
        {
        }
      }

LABEL_43:
      if ((byte_1EE1BA4E7 & 1) == 0)
      {
        byte_1EE1BA4E7 = 1;
        v28 = dword_1EE1BA800;
        ArcSharedObject::ArcSharedObject(&qword_1EE1BA720, 0);
        qword_1EE1BA730 = 0x20000000DLL;
        dword_1EE1BA738 = v28;
        word_1EE1BA73C = 0;
        *&xmmword_1EE1BA740 = 0;
        *(&xmmword_1EE1BA740 + 1) = 0xFFFFFFFFLL;
        qword_1EE1BA750 = &qword_1EE1BA7E8;
        qword_1EE1BA758 = 0;
        qword_1EE1BA720 = &unk_1F5D094B0;
        re::IntrospectionRegistry::add(v29, v30);
        re::getPrettyTypeName(&qword_1EE1BA720, &v45);
        if (v46[0])
        {
          v31 = v46[1];
        }

        else
        {
          v31 = v46 + 1;
        }

        if (v45 && (v46[0] & 1) != 0)
        {
          (*(*v45 + 40))();
        }

        v42 = xmmword_1EE1BA808;
        if (*&v49.var0)
        {
          v41 = v49;
        }

        else
        {
          re::StackScratchAllocator::StackScratchAllocator(&v47);
          re::TypeBuilder::TypeBuilder(&v45, &v47);
          v44 = v42;
          re::TypeBuilder::beginOptionalType(&v45, &v43, 2uLL, 1uLL, &v44);
          re::TypeBuilder::setOptionalAccessors(&v45, re::TypeBuilderHelper::registerOptional<re::CullingMode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::CullingMode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
          re::TypeBuilder::~TypeBuilder(&v45, v33);
          re::StackScratchAllocator::~StackScratchAllocator(&v47);
        }

        xmmword_1EE1BA740 = v41;
        if (v43)
        {
          if (v43)
          {
          }
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, *(&v44 + 1));
    _os_crash();
    __break(1u);
LABEL_58:
    if (__cxa_guard_acquire(&qword_1EE1BA5B0))
    {
      re::IntrospectionOptionalBase::IntrospectionOptionalBase(&qword_1EE1BA720);
      qword_1EE1BA720 = &unk_1F5D094B0;
      __cxa_guard_release(&qword_1EE1BA5B0);
    }
  }
}

void re::IntrospectionInfo<re::Optional<re::TriangleFillModeInternal>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1BA5B8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_58;
  }

  while ((byte_1EE1BA4E8 & 1) == 0)
  {
    if ((atomic_load_explicit(&qword_1EE1BA510, memory_order_acquire) & 1) == 0)
    {
      v34 = __cxa_guard_acquire(&qword_1EE1BA510);
      if (v34)
      {
        v35 = re::introspectionAllocator(v34);
        v36 = (*(*v35 + 32))(v35, 24, 8);
        *v36 = 1;
        *(v36 + 1) = 0;
        *(v36 + 2) = "Fill";
        qword_1EE1BA5D0 = v36;
        v37 = re::introspectionAllocator(v36);
        v38 = (*(*v37 + 32))(v37, 24, 8);
        *v38 = 1;
        *(v38 + 8) = 1;
        *(v38 + 16) = "Line";
        qword_1EE1BA5D8 = v38;
        __cxa_guard_release(&qword_1EE1BA510);
      }
    }

    if ((atomic_load_explicit(&qword_1EE1BA518, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA518))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BA830, "TriangleFillModeInternal", 1, 1, 1, 1);
      qword_1EE1BA830 = &unk_1F5D0C658;
      qword_1EE1BA870 = &re::introspect_TriangleFillModeInternal(BOOL)::enumTable;
      dword_1EE1BA840 = 9;
      __cxa_guard_release(&qword_1EE1BA518);
    }

    if (byte_1EE1BA4E2)
    {
      goto LABEL_43;
    }

    byte_1EE1BA4E2 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1BA830, a2);
    *&v42 = 0xF8D525F22FD521D6;
    *(&v42 + 1) = "TriangleFillModeInternal";
    v45 = 0x31CD534126;
    v46 = "uint8_t";
    v4 = v43;
    v5 = v44[0];
    if (v45)
    {
      if (v45)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1BA870;
      v45 = v4;
      v46 = v5;
      re::TypeBuilder::beginEnumType(&v43, &v42, 1, 1, &v45);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v47.var0 = 2 * v11;
            v47.var1 = v10;
            re::TypeBuilder::addEnumConstant(&v43, v15, &v47);
            if (*&v47.var0)
            {
              if (*&v47.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v47.var0 = 2 * v20;
              v47.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(&v43, v24, &v47);
              if (*&v47.var0)
              {
                if (*&v47.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(&v43, v26);
      xmmword_1EE1BA850 = v47;
      if (v42)
      {
        if (v42)
        {
        }
      }

LABEL_43:
      if ((byte_1EE1BA4E8 & 1) == 0)
      {
        byte_1EE1BA4E8 = 1;
        v28 = dword_1EE1BA848;
        ArcSharedObject::ArcSharedObject(&qword_1EE1BA760, 0);
        qword_1EE1BA770 = 0x20000000DLL;
        dword_1EE1BA778 = v28;
        word_1EE1BA77C = 0;
        *&xmmword_1EE1BA780 = 0;
        *(&xmmword_1EE1BA780 + 1) = 0xFFFFFFFFLL;
        qword_1EE1BA790 = &qword_1EE1BA830;
        qword_1EE1BA798 = 0;
        qword_1EE1BA760 = &unk_1F5D09530;
        re::IntrospectionRegistry::add(v29, v30);
        re::getPrettyTypeName(&qword_1EE1BA760, &v43);
        if (v44[0])
        {
          v31 = v44[1];
        }

        else
        {
          v31 = v44 + 1;
        }

        if (v43 && (v44[0] & 1) != 0)
        {
          (*(*v43 + 40))();
        }

        v40 = xmmword_1EE1BA850;
        if (*&v47.var0)
        {
          v39 = v47;
        }

        else
        {
          re::StackScratchAllocator::StackScratchAllocator(&v45);
          re::TypeBuilder::TypeBuilder(&v43, &v45);
          v42 = v40;
          re::TypeBuilder::beginOptionalType(&v43, &v41, 2uLL, 1uLL, &v42);
          re::TypeBuilder::setOptionalAccessors(&v43, re::TypeBuilderHelper::registerOptional<re::TriangleFillModeInternal>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::TriangleFillModeInternal>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
          re::TypeBuilder::~TypeBuilder(&v43, v33);
          re::StackScratchAllocator::~StackScratchAllocator(&v45);
        }

        xmmword_1EE1BA780 = v39;
        if (v41)
        {
          if (v41)
          {
          }
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, *(&v42 + 1));
    _os_crash();
    __break(1u);
LABEL_58:
    if (__cxa_guard_acquire(&qword_1EE1BA5B8))
    {
      re::IntrospectionOptionalBase::IntrospectionOptionalBase(&qword_1EE1BA760);
      qword_1EE1BA760 = &unk_1F5D09530;
      __cxa_guard_release(&qword_1EE1BA5B8);
    }
  }
}

void re::internal::defaultConstruct<re::MaterialRenderFlags>(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *a3 = 0;
  a3[2] = 0;
  a3[4] = 0;
  a3[6] = 0;
  a3[8] = 0;
  a3[10] = 0;
  a3[12] = 0;
  a3[14] = 0;
  a3[16] = 0;
  a3[18] = 0;
}

_BYTE *re::internal::defaultConstructV2<re::MaterialRenderFlags>(_BYTE *result)
{
  *result = 0;
  result[2] = 0;
  result[4] = 0;
  result[6] = 0;
  result[8] = 0;
  result[10] = 0;
  result[12] = 0;
  result[14] = 0;
  result[16] = 0;
  result[18] = 0;
  return result;
}

void *re::allocInfo_HierarchicalMeshOverrideFlags(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BA578, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA578))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BABA0, "HierarchicalMeshOverrideFlags");
    __cxa_guard_release(&qword_1EE1BA578);
  }

  return &unk_1EE1BABA0;
}

void re::initInfo_HierarchicalMeshOverrideFlags(re *this, re::IntrospectionBase *a2)
{
  v49[0] = 0x16E61A863D3CB10ALL;
  v49[1] = "HierarchicalMeshOverrideFlags";
  if (v49[0])
  {
    if (v49[0])
    {
    }
  }

  *(this + 2) = v50;
  if ((atomic_load_explicit(&qword_1EE1BA580, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BA580);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE1BA548;
      if (!qword_1EE1BA548)
      {
        v8 = re::allocInfo_OverrideMeshPartFlags(v6);
        qword_1EE1BA548 = v8;
        re::initInfo_OverrideMeshPartFlags(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "meshPartFlags";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 1;
      *(v10 + 40) = 0;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1BA910 = v10;
      v11 = re::introspectionAllocator(v10);
      v13 = re::introspect_BOOL(1, v12);
      v14 = (*(*v11 + 32))(v11, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "doubleSidedIsInherited";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x700000002;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE1BA918 = v14;
      v15 = re::introspectionAllocator(v14);
      v17 = re::introspect_BOOL(1, v16);
      v18 = (*(*v15 + 32))(v15, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "windingOrderIsInherited";
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x800000003;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE1BA920 = v18;
      v19 = re::introspectionAllocator(v18);
      v20 = v19;
      v21 = qword_1EE1BA560;
      if (!qword_1EE1BA560)
      {
        v21 = re::allocInfo_MeshRuntimeFlags(v19);
        qword_1EE1BA560 = v21;
        re::initInfo_MeshRuntimeFlags(v21, v22);
      }

      v23 = (*(*v20 + 32))(v20, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "runtimeFlags";
      *(v23 + 16) = v21;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0xA00000004;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1EE1BA928 = v23;
      v24 = re::introspectionAllocator(v23);
      v26 = re::introspect_BOOL(1, v25);
      v27 = (*(*v24 + 32))(v24, 72, 8);
      *v27 = 1;
      *(v27 + 8) = "enableRenderingIsInherited";
      *(v27 + 16) = v26;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0x1600000005;
      *(v27 + 40) = 0;
      *(v27 + 48) = 0;
      *(v27 + 56) = 0;
      *(v27 + 64) = 0;
      qword_1EE1BA930 = v27;
      v28 = re::introspectionAllocator(v27);
      v30 = re::introspect_BOOL(1, v29);
      v31 = (*(*v28 + 32))(v28, 72, 8);
      *v31 = 1;
      *(v31 + 8) = "enableCullingIsInherited";
      *(v31 + 16) = v30;
      *(v31 + 24) = 0;
      *(v31 + 32) = 0x1700000006;
      *(v31 + 40) = 0;
      *(v31 + 48) = 0;
      *(v31 + 56) = 0;
      *(v31 + 64) = 0;
      qword_1EE1BA938 = v31;
      v32 = re::introspectionAllocator(v31);
      v34 = re::introspect_BOOL(1, v33);
      v35 = (*(*v32 + 32))(v32, 72, 8);
      *v35 = 1;
      *(v35 + 8) = "castsShadowsIsInherited";
      *(v35 + 16) = v34;
      *(v35 + 24) = 0;
      *(v35 + 32) = 0x1800000007;
      *(v35 + 40) = 0;
      *(v35 + 48) = 0;
      *(v35 + 56) = 0;
      *(v35 + 64) = 0;
      qword_1EE1BA940 = v35;
      v36 = re::introspectionAllocator(v35);
      v38 = re::introspect_BOOL(1, v37);
      v39 = (*(*v36 + 32))(v36, 72, 8);
      *v39 = 1;
      *(v39 + 8) = "enablePortalCrossingIsInherited";
      *(v39 + 16) = v38;
      *(v39 + 24) = 0;
      *(v39 + 32) = 0x1900000008;
      *(v39 + 40) = 0;
      *(v39 + 48) = 0;
      *(v39 + 56) = 0;
      *(v39 + 64) = 0;
      qword_1EE1BA948 = v39;
      v40 = re::introspectionAllocator(v39);
      v42 = re::introspect_BOOL(1, v41);
      v43 = (*(*v40 + 32))(v40, 72, 8);
      *v43 = 1;
      *(v43 + 8) = "techniqueQualityLevelBiasIsInherited";
      *(v43 + 16) = v42;
      *(v43 + 24) = 0;
      *(v43 + 32) = 0x1A00000009;
      *(v43 + 40) = 0;
      *(v43 + 48) = 0;
      *(v43 + 56) = 0;
      *(v43 + 64) = 0;
      qword_1EE1BA950 = v43;
      v44 = re::introspectionAllocator(v43);
      v46 = re::introspect_BOOL(1, v45);
      v47 = (*(*v44 + 32))(v44, 72, 8);
      *v47 = 1;
      *(v47 + 8) = "occupancyBehaviorIsInherited";
      *(v47 + 16) = v46;
      *(v47 + 24) = 0;
      *(v47 + 32) = 0x90000000DLL;
      *(v47 + 40) = 0;
      *(v47 + 48) = 0;
      *(v47 + 56) = 0;
      *(v47 + 64) = 0;
      qword_1EE1BA958 = v47;
      __cxa_guard_release(&qword_1EE1BA580);
    }
  }

  *(this + 2) = 0x1C00000008;
  *(this + 6) = 2;
  *(this + 14) = 0;
  *(this + 14) = 10;
  *(this + 8) = &qword_1EE1BA910;
  *(this + 9) = re::internal::defaultConstruct<re::HierarchicalMeshOverrideFlags>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::HierarchicalMeshOverrideFlags>;
  *(this + 13) = re::internal::defaultConstructV2<re::HierarchicalMeshOverrideFlags>;
  *(this + 14) = re::internal::defaultDestructV2<re::HierarchicalMeshOverrideFlags>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v48 = v50;
}

void re::internal::defaultConstruct<re::HierarchicalMeshOverrideFlags>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 2) = 0;
  *(a3 + 4) = 0;
  *(a3 + 12) = 0;
  *(a3 + 14) = 0;
  *(a3 + 16) = 0;
  *(a3 + 18) = 0;
  *(a3 + 6) = 0;
  *(a3 + 10) = 0;
  *(a3 + 22) = 0;
  *(a3 + 26) = 0;
}

uint64_t re::internal::defaultConstructV2<re::HierarchicalMeshOverrideFlags>(uint64_t result)
{
  *result = 0;
  *(result + 2) = 0;
  *(result + 4) = 0;
  *(result + 12) = 0;
  *(result + 14) = 0;
  *(result + 16) = 0;
  *(result + 18) = 0;
  *(result + 6) = 0;
  *(result + 10) = 0;
  *(result + 22) = 0;
  *(result + 26) = 0;
  return result;
}

void *re::IntrospectionOptional<re::WindingOrder>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::WindingOrder>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::WindingOrder>::setHasValue(uint64_t a1, _BYTE *a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    ++a2;
  }

  else if (!*a2)
  {
    return;
  }

  *a2 = 0;
}

uint64_t re::IntrospectionOptional<re::WindingOrder>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 1;
}

{
  return a2 + 1;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::WindingOrder>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 1;
  if (!v2)
  {
    return 0;
  }

  return result;
}

_BYTE *re::TypeBuilderHelper::registerOptional<re::WindingOrder>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(_BYTE *result, char *a2)
{
  if (a2)
  {
    v2 = *a2;
    if ((*result & 1) == 0)
    {
      *result = 1;
    }

    result[1] = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

void *re::IntrospectionOptional<re::OccupancyBehavior>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::OccupancyBehavior>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::OccupancyBehavior>::setHasValue(uint64_t a1, _BYTE *a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    ++a2;
  }

  else if (!*a2)
  {
    return;
  }

  *a2 = 0;
}

uint64_t re::IntrospectionOptional<re::OccupancyBehavior>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 1;
}

{
  return a2 + 1;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::OccupancyBehavior>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 1;
  if (!v2)
  {
    return 0;
  }

  return result;
}

_BYTE *re::TypeBuilderHelper::registerOptional<re::OccupancyBehavior>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(_BYTE *result, char *a2)
{
  if (a2)
  {
    v2 = *a2;
    if ((*result & 1) == 0)
    {
      *result = 1;
    }

    result[1] = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

void *re::IntrospectionOptional<short>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<short>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<short>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 2) = 0;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<short>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 2;
}

{
  return a2 + 2;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 2;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t result, __int16 *a2)
{
  if (a2)
  {
    v2 = *a2;
    if ((*result & 1) == 0)
    {
      *result = 1;
    }

    *(result + 2) = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

void *re::IntrospectionOptional<re::CullingMode>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::CullingMode>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::CullingMode>::setHasValue(uint64_t a1, _BYTE *a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    ++a2;
  }

  else if (!*a2)
  {
    return;
  }

  *a2 = 0;
}

uint64_t re::IntrospectionOptional<re::CullingMode>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 1;
}

{
  return a2 + 1;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::CullingMode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 1;
  if (!v2)
  {
    return 0;
  }

  return result;
}

_BYTE *re::TypeBuilderHelper::registerOptional<re::CullingMode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(_BYTE *result, char *a2)
{
  if (a2)
  {
    v2 = *a2;
    if ((*result & 1) == 0)
    {
      *result = 1;
    }

    result[1] = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

void *re::IntrospectionOptional<re::TriangleFillModeInternal>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::TriangleFillModeInternal>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::TriangleFillModeInternal>::setHasValue(uint64_t a1, _BYTE *a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    ++a2;
  }

  else if (!*a2)
  {
    return;
  }

  *a2 = 0;
}

uint64_t re::IntrospectionOptional<re::TriangleFillModeInternal>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 1;
}

{
  return a2 + 1;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::TriangleFillModeInternal>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 1;
  if (!v2)
  {
    return 0;
  }

  return result;
}

_BYTE *re::TypeBuilderHelper::registerOptional<re::TriangleFillModeInternal>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(_BYTE *result, char *a2)
{
  if (a2)
  {
    v2 = *a2;
    if ((*result & 1) == 0)
    {
      *result = 1;
    }

    result[1] = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

re::MeshShadowGenerationQueue *re::MeshShadowGenerationQueue::MeshShadowGenerationQueue(re::MeshShadowGenerationQueue *this)
{
  *(this + 8) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 36) = 0x7FFFFFFFLL;
  re::MeshShadowGenerationBacklog::MeshShadowGenerationBacklog((this + 48));
  return this;
}

unint64_t re::MeshShadowGenerationQueue::enqueue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {

    return re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::add(a1, a2);
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v6 = *a2;
    v7 = *(a2 + 16);
    return re::MeshShadowGenerationBacklog::pushBack(a1 + 48, &v6);
  }
}

uint64_t re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::add(uint64_t a1, __int128 *a2)
{
  v4 = re::Hash<re::ShadowPair>::operator()(&v14, a2);
  v5 = v4;
  v6 = *(a1 + 24);
  if (!v6)
  {
    LODWORD(v7) = 0;
    goto LABEL_10;
  }

  v7 = v4 % v6;
  v8 = *(*(a1 + 8) + 4 * (v4 % v6));
  if (v8 == 0x7FFFFFFF)
  {
LABEL_10:
    v13 = re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::addAsCopy(a1, v7, v5, a2, a2);
    ++*(a1 + 40);
    return *(a1 + 16) + 40 * v13 + 16;
  }

  v9 = *(a1 + 16);
  while (1)
  {
    v10 = v9 + 40 * v8;
    v12 = *(v10 + 16);
    result = v10 + 16;
    if (v12 == *a2 && *(result + 8) == *(a2 + 1) && *(result + 16) == *(a2 + 2))
    {
      return result;
    }

    v8 = *(v9 + 40 * v8 + 8) & 0x7FFFFFFF;
    if (v8 == 0x7FFFFFFF)
    {
      goto LABEL_10;
    }
  }
}

void re::MeshShadowGenerationQueue::getEnqueued(re::MeshShadowGenerationQueue *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 36) = 0x7FFFFFFFLL;

  re::HashSet<re::ShadowPair,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::unionSet(this, this + 96, a2);
}

void re::HashSet<re::ShadowPair,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::unionSet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::clear(a3);
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = 0;
    v8 = (*(a1 + 16) + 8);
    while (1)
    {
      v9 = *v8;
      v8 += 10;
      if (v9 < 0)
      {
        break;
      }

      if (v6 == ++v7)
      {
        LODWORD(v7) = *(a1 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  if (v7 != v6)
  {
    v10 = *(a1 + 16);
    do
    {
      re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::add(a3, (v10 + 40 * v7 + 16));
      v11 = *(a1 + 32);
      v10 = *(a1 + 16);
      if (v11 <= v7 + 1)
      {
        v12 = v7 + 1;
      }

      else
      {
        v12 = *(a1 + 32);
      }

      while (v12 - 1 != v7)
      {
        LODWORD(v7) = v7 + 1;
        if ((*(v10 + 40 * v7 + 8) & 0x80000000) != 0)
        {
          goto LABEL_16;
        }
      }

      LODWORD(v7) = v12;
LABEL_16:
      ;
    }

    while (v7 != v11);
  }

  v13 = *(a2 + 32);
  if (v13)
  {
    v14 = 0;
    v15 = (*(a2 + 16) + 8);
    while (1)
    {
      v16 = *v15;
      v15 += 10;
      if (v16 < 0)
      {
        break;
      }

      if (v13 == ++v14)
      {
        LODWORD(v14) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v14) = 0;
  }

  if (v14 != v13)
  {
    v17 = *(a2 + 16);
    do
    {
      re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::add(a3, (v17 + 40 * v14 + 16));
      v18 = *(a2 + 32);
      v17 = *(a2 + 16);
      if (v18 <= v14 + 1)
      {
        v19 = v14 + 1;
      }

      else
      {
        v19 = *(a2 + 32);
      }

      while (v19 - 1 != v14)
      {
        LODWORD(v14) = v14 + 1;
        if ((*(v17 + 40 * v14 + 8) & 0x80000000) != 0)
        {
          goto LABEL_32;
        }
      }

      LODWORD(v14) = v19;
LABEL_32:
      ;
    }

    while (v14 != v18);
  }
}

void re::MeshShadowGenerationQueue::dequeue(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 32) = 0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 36) = 0x7FFFFFFFLL;
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v39 = 0x7FFFFFFFLL;
  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = 0;
    v13 = (*(a1 + 16) + 8);
    while (1)
    {
      v14 = *v13;
      v13 += 10;
      if (v14 < 0)
      {
        break;
      }

      if (v11 == ++v12)
      {
        LODWORD(v12) = *(a1 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v12) = 0;
  }

  while (v12 != v11)
  {
    v15 = *(a1 + 16) + 40 * v12;
    if ((re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::contains(a4, (v15 + 16)) & 1) == 0)
    {
      re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::add(a5, (v15 + 16));
    }

    v16 = *(a1 + 32);
    if (v16 <= v12 + 1)
    {
      v16 = v12 + 1;
    }

    while (v16 - 1 != v12)
    {
      LODWORD(v12) = v12 + 1;
      if ((*(*(a1 + 16) + 40 * v12 + 8) & 0x80000000) != 0)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v12) = v16;
LABEL_16:
    ;
  }

  v17 = *(a5 + 32);
  if (v17)
  {
    v18 = 0;
    v19 = (*(a5 + 16) + 8);
    while (1)
    {
      v20 = *v19;
      v19 += 10;
      if (v20 < 0)
      {
        break;
      }

      if (v17 == ++v18)
      {
        LODWORD(v18) = *(a5 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v18) = 0;
  }

  if (v18 != v17)
  {
    v21 = *(a5 + 16);
    do
    {
      re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::remove(a1, (v21 + 40 * v18 + 16));
      v22 = *(a5 + 32);
      v21 = *(a5 + 16);
      if (v22 <= v18 + 1)
      {
        v22 = v18 + 1;
      }

      while (v22 - 1 != v18)
      {
        LODWORD(v18) = v18 + 1;
        if ((*(v21 + 40 * v18 + 8) & 0x80000000) != 0)
        {
          goto LABEL_31;
        }
      }

      LODWORD(v18) = v22;
LABEL_31:
      ;
    }

    while (v18 != v17);
  }

  v23 = *(a1 + 128);
  if (v23)
  {
    v24 = 0;
    v25 = (*(a1 + 112) + 8);
    while (1)
    {
      v26 = *v25;
      v25 += 10;
      if (v26 < 0)
      {
        break;
      }

      if (v23 == ++v24)
      {
        LODWORD(v24) = *(a1 + 128);
        break;
      }
    }
  }

  else
  {
    LODWORD(v24) = 0;
  }

  if (v24 == v23)
  {
    v27 = 0;
  }

  else
  {
    LODWORD(v27) = 0;
    do
    {
      v27 = v27 + (re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::contains(a4, (*(a1 + 112) + 40 * v24 + 16)) ^ 1);
      v28 = *(a1 + 128);
      if (v28 <= v24 + 1)
      {
        v28 = v24 + 1;
      }

      while (v28 - 1 != v24)
      {
        LODWORD(v24) = v24 + 1;
        if ((*(*(a1 + 112) + 40 * v24 + 8) & 0x80000000) != 0)
        {
          goto LABEL_47;
        }
      }

      LODWORD(v24) = v28;
LABEL_47:
      ;
    }

    while (v24 != v23);
  }

  re::MeshShadowGenerationBacklog::MeshShadowGenerationBacklog(v35);
  if (a2 <= v27 / a3 + 1)
  {
    a2 = v27 / a3 + 1;
  }

  while (a2 > *(a5 + 28))
  {
    if (!*(a1 + 124))
    {
      break;
    }

    re::MeshShadowGenerationBacklog::popFront(a1 + 48, v29, v32);
    if (v32[0] == 1)
    {
      if (re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::contains(a4, &v33))
      {
        v30 = v33;
        v31 = v34;
        re::MeshShadowGenerationBacklog::pushBack(v35, &v30);
      }

      else
      {
        re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::add(a5, &v33);
      }
    }
  }

  while (v36)
  {
    re::MeshShadowGenerationBacklog::popFront(v35, v29, v32);
    if (v32[0] == 1)
    {
      v30 = v33;
      v31 = v34;
      re::MeshShadowGenerationBacklog::pushBack(a1 + 48, &v30);
    }
  }

  re::MeshShadowGenerationBacklog::~MeshShadowGenerationBacklog(v35);
  re::HashSetBase<re::TriggerPair,re::TriggerPair,re::internal::ValueAsKey<re::TriggerPair>,re::Hash<re::TriggerPair>,re::EqualTo<re::TriggerPair>,true,false>::deinit(v37);
}

uint64_t re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::contains(uint64_t a1, void *a2)
{
  v4 = re::Hash<re::ShadowPair>::operator()(&v12, a2);
  v5 = *(a1 + 24);
  if (!v5)
  {
    return 0;
  }

  v6 = *(*(a1 + 8) + 4 * (v4 % v5));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  while (1)
  {
    v8 = v7 + 40 * v6;
    v10 = *(v8 + 16);
    v9 = v8 + 16;
    if (v10 == *a2 && *(v9 + 8) == a2[1] && *(v9 + 16) == a2[2])
    {
      break;
    }

    v6 = *(v7 + 40 * v6 + 8) & 0x7FFFFFFF;
    if (v6 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::remove(uint64_t a1, void *a2)
{
  v4 = re::Hash<re::ShadowPair>::operator()(&v22, a2);
  v5 = *(a1 + 24);
  if (!v5)
  {
    return 0;
  }

  v6 = v4 % v5;
  v7 = *(a1 + 8);
  v8 = *(v7 + 4 * (v4 % v5));
  if (v8 == 0x7FFFFFFF)
  {
    return 0;
  }

  v9 = *(a1 + 16);
  v10 = 0x7FFFFFFFLL;
  while (1)
  {
    v11 = v9 + 40 * v8;
    v13 = *(v11 + 16);
    v12 = v11 + 16;
    if (v13 == *a2 && *(v12 + 8) == a2[1] && *(v12 + 16) == a2[2])
    {
      break;
    }

    v10 = v8;
    v8 = *(v9 + 40 * v8 + 8) & 0x7FFFFFFF;
    if (v8 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  v15 = *(v9 + 40 * v8 + 8) & 0x7FFFFFFF;
  if (v10 == 0x7FFFFFFF)
  {
    *(v7 + 4 * v6) = v15;
  }

  else
  {
    *(v9 + 40 * v10 + 8) = *(v9 + 40 * v10 + 8) & 0x80000000 | v15;
  }

  v16 = *(a1 + 16);
  v17 = v16 + 40 * v8;
  v20 = *(v17 + 8);
  v19 = (v17 + 8);
  v18 = v20;
  if (v20 < 0)
  {
    *v19 = v18 & 0x7FFFFFFF;
    v16 = *(a1 + 16);
    v18 = *(v16 + 40 * v8 + 8);
  }

  v21 = *(a1 + 40);
  *(v16 + 40 * v8 + 8) = *(a1 + 36) | v18 & 0x80000000;
  --*(a1 + 28);
  *(a1 + 36) = v8;
  *(a1 + 40) = v21 + 1;
  return 1;
}

void re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 40 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_20, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 601);
    _os_crash();
    __break(1u);
  }
}

uint64_t re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, __int128 *a5)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v9 = *(a1 + 32);
    }

    *(a1 + 32) = v9 + 1;
    v10 = *(a1 + 16);
    v11 = *(v10 + 40 * v8 + 8);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 + 40 * v8 + 8);
    *(a1 + 36) = v11 & 0x7FFFFFFF;
  }

  *(v10 + 40 * v8 + 8) = v11 | 0x80000000;
  *(*(a1 + 16) + 40 * v8 + 8) = *(*(a1 + 16) + 40 * v8 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  *(*(a1 + 16) + 40 * v8) = a3;
  v12 = *(a1 + 16) + 40 * v8;
  v13 = *a5;
  *(v12 + 32) = *(a5 + 2);
  *(v12 + 16) = v13;
  *(*(a1 + 8) + 4 * a2) = v8;
  ++*(a1 + 28);
  return v8;
}

void re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v13, 0, 36);
      *&v13[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::init(v13, v4, a2);
      v5 = *v13;
      *v13 = *a1;
      *a1 = v5;
      v6 = *&v13[16];
      *&v13[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v8 = *&v13[24];
      *&v13[24] = *(a1 + 24);
      v7 = *&v13[32];
      *(a1 + 24) = v8;
      v9 = v7;
      if (v7)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if ((*(*&v13[16] + v10 + 8) & 0x80000000) != 0)
          {
            re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::addAsCopy(a1, *(*&v13[16] + v10) % *(a1 + 24), *(*&v13[16] + v10), *&v13[16] + v10 + 16, *&v13[16] + v10 + 16);
            v9 = *&v13[32];
          }

          ++v11;
          v10 += 40;
        }

        while (v11 < v9);
      }

      re::HashSetBase<re::TriggerPair,re::TriggerPair,re::internal::ValueAsKey<re::TriggerPair>,re::Hash<re::TriggerPair>,re::EqualTo<re::TriggerPair>,true,false>::deinit(v13);
    }
  }

  else
  {
    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = 3;
    }
  }
}

void re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_20, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 8;
      do
      {
        v5 = *(a1 + 16);
        v6 = *(v5 + v4);
        if (v6 < 0)
        {
          *(v5 + v4) = v6 & 0x7FFFFFFF;
        }

        v4 += 40;
        --v3;
      }

      while (v3);
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v7 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v7;
  }
}

uint64_t re::DeformationManager::DeformationManager(uint64_t a1, __int128 *a2)
{
  v3 = 0;
  *a1 = &unk_1F5D095B0;
  *(a1 + 8) = -1;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  do
  {
    v4 = a1 + v3;
    *(v4 + 48) = 0;
    *(v4 + 80) = 0;
    v3 += 40;
  }

  while (v3 != 720);
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0x7FFFFFFF00000000;
  *(a1 + 808) = 0;
  *(a1 + 816) = 0;
  *(a1 + 840) = 0;
  *(a1 + 824) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0;
  *(a1 + 868) = 0x1FFFFFFFFLL;
  v5 = *a2;
  v6 = a2[1];
  *(a1 + 40) = *(a2 + 4);
  *(a1 + 8) = v5;
  *(a1 + 24) = v6;
  return a1;
}

void re::DeformationManager::deinitInternal(re::DeformationManager *this)
{
  v2 = this + 56;
  v3 = 720;
  do
  {
    v4 = *(v2 - 1);
    *(v2 - 1) = 0;
    if (v4)
    {
      std::function<void ()(re::Deformer *)>::operator()(v2, v4);
    }

    v2 += 40;
    v3 -= 40;
  }

  while (v3);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 96);
  if (*(this + 215))
  {

    re::DataArray<re::DeformationStack>::deinit(this + 816);
  }
}

uint64_t re::DataArray<re::DeformationStack>::deinit(uint64_t result)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!*(result + 44))
  {
    return result;
  }

  v2 = result;
  v10 = result;
  if (*(result + 40))
  {
    LODWORD(v11) = 0;
    if (!*(result + 16))
    {
      goto LABEL_29;
    }

    v3 = result;
    if (!**(*(result + 32) + 8))
    {
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v10);
      v3 = v10;
    }
  }

  else
  {
    LODWORD(v11) = -1;
    v3 = result;
  }

  v10 = v3;
  if (v3 != v2 || v11 != 0xFFFFFFFFLL)
  {
    v4 = v11;
    v5 = WORD1(v11);
    do
    {
      v6 = v3[2];
      if (v6 <= v5)
      {
        goto LABEL_28;
      }

      re::DataArray<re::DeformationStack>::destroy(v2, ((*(*(v3[4] + 16 * v5 + 8) + 4 * v4) & 0xFFFFFF) << 32) | (v5 << 16) | v4);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v10);
      v3 = v10;
      v4 = v11;
      v5 = WORD1(v11);
    }

    while (v10 != v2 || v11 != 0xFFFFLL || WORD1(v11) != 0xFFFFLL);
  }

  v7 = v2[2];
  v5 = v7 - 1;
  if (v7 == 1)
  {
    goto LABEL_23;
  }

  v6 = 16 * v7 - 16;
  do
  {
    if (v7 <= v5)
    {
      v10 = 0;
      v25 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v13 = 136315906;
      v14 = "operator[]";
      v15 = 1024;
      v16 = 789;
      v17 = 2048;
      v18 = v5;
      v19 = 2048;
      v20 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_27:
      v10 = 0;
      v25 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v13 = 136315906;
      v14 = "removeAt";
      v15 = 1024;
      v16 = 931;
      v17 = 2048;
      v18 = v5;
      v19 = 2048;
      v20 = v1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_28:
      v12 = 0;
      v25 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v13 = 136315906;
      v14 = "operator[]";
      v15 = 1024;
      v16 = 797;
      v17 = 2048;
      v18 = v5;
      v19 = 2048;
      v20 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_29:
      v12 = 0;
      v25 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v13 = 136315906;
      v14 = "operator[]";
      v15 = 1024;
      v16 = 797;
      v17 = 2048;
      v18 = 0;
      v19 = 2048;
      v20 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v8 = (v2[4] + v6);
    (*(**v2 + 40))(*v2, *v8);
    (*(**v2 + 40))(*v2, v8[1]);
    v1 = v2[2];
    if (v1 <= v5)
    {
      goto LABEL_27;
    }

    v7 = v1 - 1;
    if (v1 - 1 > v5)
    {
      *(v2[4] + v6) = *(v2[4] + 16 * v1 - 16);
      v7 = v2[2] - 1;
    }

    v2[2] = v7;
    ++*(v2 + 6);
    v6 -= 16;
    --v5;
  }

  while (v5);
  v2[6] = 0xFFFFFFFF00000000;
  if (!v7)
  {
    v10 = 0;
    v25 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v2 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    v16 = 789;
    v17 = 2048;
    v18 = 0;
    v19 = 2048;
    v20 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_23:
    v2[6] = 0xFFFFFFFF00000000;
  }

  v9 = v2[4];
  (*(**v2 + 40))(*v2, *v9);
  (*(**v2 + 40))(*v2, v9[1]);
  result = re::DynamicArray<unsigned long>::deinit(v2);
  *(v2 + 11) = 0;
  return result;
}

uint64_t re::DeformationManagerGPU::DeformationManagerGPU(uint64_t a1, __int128 *a2)
{
  v3 = re::DeformationManager::DeformationManager(a1, a2);
  v4 = 0;
  *v3 = &unk_1F5D09640;
  v3[110] = 0;
  do
  {
    v5 = a1 + v4;
    *(v5 + 888) = 0xFFFFFFFFFFFFFFFLL;
    *(v5 + 896) = 0uLL;
    *(v5 + 912) = 1;
    *(v5 + 920) = 0;
    *(v5 + 936) = 0;
    *(v5 + 928) = 0;
    v4 += 64;
    *(v5 + 944) = 0;
  }

  while (v4 != 512);
  *(a1 + 1416) = 0;
  *(a1 + 1400) = 0u;
  *(a1 + 1424) = 1;
  *(a1 + 1432) = 0;
  *(a1 + 1440) = 0u;
  *(a1 + 1456) = 0;
  *(a1 + 1464) = 0u;
  *(a1 + 1480) = 1;
  *(a1 + 1488) = 0;
  *(a1 + 1512) = 0;
  *(a1 + 1496) = 0u;
  re::DeformationFencePool::init((a1 + 880), (*(a1 + 24) + 208));
  return a1;
}

uint64_t *re::DeformationManagerGPU::init(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *(a1 + 40) = *(a2 + 4);
  *(a1 + 24) = v4;
  *(a1 + 8) = v3;
  v5 = (*(a1 + 24) + 208);

  return re::DeformationFencePool::init((a1 + 880), v5);
}

void re::DeformationManagerGPU::~DeformationManagerGPU(re::DeformationManagerGPU *this)
{
  re::DeformationFencePool::deinit((this + 880));
  *(this + 8) = -1;
  *(this + 9) = 0u;
  *(this + 25) = 0u;
  *(this + 5) = 0;
  re::DeformationFencePool::~DeformationFencePool((this + 880));
  *this = &unk_1F5D095B0;
  re::DeformationManager::deinitInternal(this);
  re::DataArray<re::DeformationStack>::deinit(this + 816);
  re::DynamicArray<unsigned long>::deinit(this + 816);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 96);
  for (i = 728; i != 8; i -= 40)
  {
    std::unique_ptr<re::Deformer,std::function<void ()(re::Deformer*)>>::~unique_ptr[abi:nn200100]((this + i));
  }
}

{
  re::DeformationManagerGPU::~DeformationManagerGPU(this);

  JUMPOUT(0x1E6906520);
}

void re::DeformationManagerGPU::deinit(re::DeformationManagerGPU *this)
{
  re::DeformationFencePool::deinit((this + 880));
  *(this + 8) = -1;
  *(this + 9) = 0u;
  *(this + 25) = 0u;
  *(this + 5) = 0;

  re::DeformationManager::deinitInternal(this);
}

unint64_t re::DeformationManager::addDeformationStack(uint64_t a1, uint64_t a2)
{
  v97 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 16);
  if (v6 >= 0xA)
  {
LABEL_90:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) The maximum deformation stack (%zu) has been exceeded: %zu.", "stackDefinition.deformationStack.size() < kMaxDeformationStackCount", "addDeformationStack", 211, 10, v6);
    _os_crash();
    __break(1u);
    goto LABEL_91;
  }

  v2 = a2;
  if (!*(a1 + 860))
  {
    re::DynamicArray<re::RigNodeConstraint>::setCapacity((a1 + 816), 0);
    ++*(a1 + 840);
    *(a1 + 860) = 32;
    re::DataArray<re::DeformationStack>::allocBlock((a1 + 816));
  }

  re::StackScratchAllocator::StackScratchAllocator(v87);
  v8 = 0;
  LOBYTE(v82) = 0;
  do
  {
    v9 = &v83[v8 - 1];
    *(v9 + 12) = -1;
    *(v9 + 60) = 0;
    *(v9 + 52) = 0;
    *(v9 + 17) = 0;
    *(v9 + 72) = -1;
    *(v9 + 10) = -1;
    *(v9 + 11) = 0;
    v8 += 4;
    *(v9 + 12) = 0;
    *(v9 + 13) = 0;
  }

  while (v8 != 40);
  memset(v86, 0, sizeof(v86));
  v85 = 0u;
  v3 = *(v2 + 16);
  v81 = 0;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v5 = v87;
  v77 = v87;
  re::DynamicArray<float *>::setCapacity(&v77, v3);
  v4 = ++v80;
  v76 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v72 = v87;
  re::DynamicArray<re::DeformationDescription>::setCapacity(&v72, v3);
  v10 = ++v75;
  if (v3)
  {
    v70 = v10;
    v11 = 0;
    v12 = 0;
    v13 = 32;
    while (1)
    {
      v5 = *(v2 + 16);
      if (v5 <= v11)
      {
        break;
      }

      v14 = *(v2 + 32);
      v5 = v14 + v13;
      v15 = 0xBF58476D1CE4E5B9 * ((*(v14 + v13 - 32) >> 31) ^ (*(v14 + v13 - 32) >> 1));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 768, (v14 + v13 - 32), (0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))) ^ ((0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))) >> 31), &v92);
      if (HIDWORD(v92) == 0x7FFFFFFF)
      {
        goto LABEL_94;
      }

      v17 = *(a1 + 784) + 32 * HIDWORD(v92);
      v19 = *(v17 + 24);
      v18 = (v17 + 24);
      v5 = *(a1 + 48 + 40 * v19);
      v20 = (*(*v5 + 24))(&v92, v5, *(v14 + v13), a1 + 8);
      switch(BYTE8(v93))
      {
        case 2u:
          v22 = v79;
          if (v79 >= v78)
          {
            v23 = v79 + 1;
            if (v78 < v79 + 1)
            {
              if (v77)
              {
                v24 = 2 * v78;
                if (!v78)
                {
                  v24 = 8;
                }

                if (v24 <= v23)
                {
                  v25 = v79 + 1;
                }

                else
                {
                  v25 = v24;
                }

                v20 = re::DynamicArray<float *>::setCapacity(&v77, v25);
                LODWORD(v4) = v80;
              }

              else
              {
                v20 = re::DynamicArray<float *>::setCapacity(&v77, v23);
                LODWORD(v4) = v80 + 1;
              }
            }

            v22 = v79;
          }

          *(v81 + 8 * v22) = v5;
          v79 = v22 + 1;
          v4 = (v4 + 1);
          v80 = v4;
          v31 = v74;
          if (v74 >= v73)
          {
            v5 = v74 + 1;
            if (v73 < v74 + 1)
            {
              if (v72)
              {
                v32 = 2 * v73;
                if (!v73)
                {
                  v32 = 8;
                }

                if (v32 <= v5)
                {
                  v33 = v74 + 1;
                }

                else
                {
                  v33 = v32;
                }

                re::DynamicArray<re::DeformationDescription>::setCapacity(&v72, v33);
                v34 = v75;
              }

              else
              {
                re::DynamicArray<re::DeformationDescription>::setCapacity(&v72, v5);
                v34 = v75 + 1;
              }

              v70 = v34;
            }

            v31 = v74;
          }

          v35 = v76 + (v31 << 6);
          v36 = v94;
          v37 = v93;
          *v35 = v92;
          *(v35 + 16) = v37;
          *(v35 + 48) = 0;
          *(v35 + 56) = 0;
          *(v35 + 32) = v36;
          *(v35 + 40) = 0;
          *(v35 + 40) = *(&v94 + 1);
          *(&v94 + 1) = 0;
          *(v35 + 48) = v95;
          *&v95 = 0;
          v38 = *(v35 + 56);
          *(v35 + 56) = *(&v95 + 1);
          *(&v95 + 1) = v38;
          v74 = v31 + 1;
          v75 = ++v70;
          break;
        case 3u:
          *buf = -1;
          memset(&buf[4], 0, 20);
          *&buf[24] = 255;
          *&buf[32] = -1;
          v90 = 0;
          v91 = 0;
          v89 = 0;
          *&v94 = -1;
          v92 = *buf;
          v93 = *&buf[16];
          re::FixedArray<float>::operator=(&v94 + 1, &v89);
          if (v89 && v90)
          {
            (*(*v89 + 40))();
          }

          break;
        case 0xFFu:
          v5 = *re::graphicsLogObjects(v20);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            v21 = *(v14 + v13 - 24);
            *buf = 136315138;
            *&buf[4] = v21;
            _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "[DeformerLogging] Invalid deformation stack definition for deformer: %s", buf, 0xCu);
          }

          break;
        default:
          if (v79)
          {
            v71[0] = v81;
            v71[1] = v79;
            v71[2] = v76;
            v71[3] = v74;
            v26 = *(a1 + 728);
            (*(*v26 + 16))(v26, a1 + 8);
            (*(*v26 + 24))(buf, v26, v71, a1 + 8);
            v27 = &v83[4 * v12 + 2];
            v28 = *&buf[16];
            *v27 = *buf;
            v27[1] = v28;
            *(v27 + 4) = *&buf[32];
            re::FixedArray<float>::operator=(v27 + 5, &v89);
            v79 = 0;
            v4 = (v4 + 1);
            v80 = v4;
            *(&v82 + v12 + 1) = 17;
            if (v89 && v90)
            {
              (*(*v89 + 40))();
            }

            ++v12;
          }

          v5 = v12;
          v29 = &v83[4 * v12 + 2];
          v30 = v93;
          *v29 = v92;
          v29[1] = v30;
          *(v29 + 4) = v94;
          re::FixedArray<float>::operator=(v29 + 5, &v94 + 1);
          *(&v82 + v12++ + 1) = *v18;
          break;
      }

      if (*(&v94 + 1) && v95)
      {
        (*(**(&v94 + 1) + 40))();
      }

      ++v11;
      v13 += 40;
      if (v3 == v11)
      {
        goto LABEL_54;
      }
    }

    v71[0] = 0;
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v92 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *buf = 136315906;
    *&buf[4] = "operator[]";
    *&buf[12] = 1024;
    *&buf[14] = 797;
    *&buf[18] = 2048;
    *&buf[20] = v11;
    *&buf[28] = 2048;
    *&buf[30] = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_90;
  }

  LOBYTE(v12) = 0;
LABEL_54:
  if (v79)
  {
    *buf = v81;
    *&buf[8] = v79;
    *&buf[16] = v76;
    *&buf[24] = v74;
    (*(**(a1 + 728) + 24))(&v92);
    v39 = &v83[4 * v12 - 1];
    v40 = v93;
    v39[3] = v92;
    v39[4] = v40;
    *(v39 + 10) = v94;
    re::FixedArray<float>::operator=(v39 + 11, &v94 + 1);
    *(&v83[-1] + v12 + 1) = 17;
    LOBYTE(v12) = v12 + 1;
    if (*(&v94 + 1))
    {
      if (v95)
      {
        (*(**(&v94 + 1) + 40))();
      }
    }
  }

  LOBYTE(v82) = v12;
  re::DeformationStack::buildCachedData(&v82);
  v42 = *(a1 + 872);
  if ((v42 + 1) >> 24)
  {
    v43 = 1;
  }

  else
  {
    v43 = v42 + 1;
  }

  *(a1 + 872) = v43;
  v3 = *(a1 + 868);
  v2 = *(a1 + 870);
  if (v3 == 0xFFFF && v2 == 0xFFFF)
  {
    if (*(a1 + 864) >= *(a1 + 860))
    {
      re::DataArray<re::DeformationStack>::allocBlock((a1 + 816));
    }

    v3 = *(a1 + 832);
    v44 = v3 - 1;
    v2 = (v3 - 1);
    if (v3 <= v2)
    {
      goto LABEL_92;
    }

    v3 = *(a1 + 864);
    if (v3 >= 0x10000)
    {
LABEL_93:
      re::internal::assertLog(5, v41, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v3);
      _os_crash();
      __break(1u);
LABEL_94:
      re::internal::assertLog(5, v16, "assertion failure: '%s' (%s:line %i) Unknown deformation service name: %s.", "deformerIndex", "addDeformationStack", 229, *(v5 - 24));
      _os_crash();
      __break(1u);
    }

    v45 = (*(a1 + 848) + 16 * v2);
    *(a1 + 864) = v3 + 1;
    *(v45[1] + 4 * v3) = *(a1 + 872);
    v46 = *v45 + 1032 * v3;
    LOWORD(v2) = v44;
  }

  else
  {
    v4 = *(a1 + 832);
    if (v4 <= v2)
    {
LABEL_91:
      v71[0] = 0;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v92 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *buf = 136315906;
      *&buf[4] = "operator[]";
      *&buf[12] = 1024;
      *&buf[14] = 789;
      *&buf[18] = 2048;
      *&buf[20] = v2;
      *&buf[28] = 2048;
      *&buf[30] = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_92:
      v71[0] = 0;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v92 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *buf = 136315906;
      *&buf[4] = "operator[]";
      *&buf[12] = 1024;
      *&buf[14] = 789;
      *&buf[18] = 2048;
      *&buf[20] = v2;
      *&buf[28] = 2048;
      *&buf[30] = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_93;
    }

    v47 = (*(a1 + 848) + 16 * v2);
    *(v47[1] + 4 * v3) = v43;
    v46 = *v47 + 1032 * v3;
    *(a1 + 868) = *v46;
  }

  v48 = 0;
  ++*(a1 + 856);
  v49 = v82;
  v50 = v83[0];
  *(v46 + 28) = *(v83 + 12);
  *v46 = v49;
  *(v46 + 16) = v50;
  do
  {
    v51 = v46 + v48 * 16;
    v52 = &v83[v48 - 1];
    v53 = v83[v48 + 3];
    v54 = *&v83[v48 + 4];
    *(v51 + 48) = v83[v48 + 2];
    *(v51 + 64) = v53;
    *(v51 + 80) = v54;
    *(v51 + 88) = 0;
    *(v51 + 96) = 0;
    *(v51 + 104) = 0;
    *(v51 + 88) = *(&v83[v48 + 4] + 1);
    v52[11] = 0;
    *(v51 + 96) = *&v83[v48 + 5];
    v52[12] = 0;
    *(v51 + 104) = *(&v83[v48 + 5] + 1);
    v52[13] = 0;
    v48 += 4;
  }

  while (v48 != 40);
  v55 = 0;
  v56 = v83[42];
  v57 = v83[44];
  *(v46 + 704) = v83[43];
  *(v46 + 720) = v57;
  *(v46 + 688) = v56;
  v58 = v83[45];
  v59 = v83[46];
  v60 = v83[47];
  *(v46 + 784) = v84;
  *(v46 + 752) = v59;
  *(v46 + 768) = v60;
  *(v46 + 736) = v58;
  do
  {
    v61 = (v46 + v55);
    v62 = (&v83[-1] + v55);
    v61[101] = 0;
    *(v46 + v55 + 792) = 0uLL;
    v61[99] = *(&v86[-1] + v55);
    v62[99] = 0;
    v61[100] = *(&v85 + v55 + 8);
    v62[100] = 0;
    v61[101] = *(v86 + v55);
    v62[101] = 0;
    v55 += 24;
  }

  while (v55 != 240);
  v63 = *(a1 + 872);
  v64 = v72;
  if (v72 && v76)
  {
    if (v74)
    {
      v65 = v74 << 6;
      v66 = (v76 + 40);
      do
      {
        re::FixedArray<CoreIKTransform>::deinit(v66);
        v66 += 8;
        v65 -= 64;
      }

      while (v65);
      v64 = v72;
    }

    (*(*v64 + 40))(v64);
  }

  if (v77 && v81)
  {
    (*(*v77 + 40))();
  }

  for (i = 1008; i != 768; i -= 24)
  {
    re::FixedArray<CoreIKTransform>::deinit((&v83[-1] + i));
  }

  for (j = 664; j != 24; j -= 64)
  {
    re::FixedArray<CoreIKTransform>::deinit((&v83[-1] + j));
  }

  re::StackScratchAllocator::~StackScratchAllocator(v87);
  return (v2 << 16) | ((v63 & 0xFFFFFF) << 32) | v3;
}

uint64_t (***re::DeformationManager::removeDeformationStack(re *a1, uint64_t a2))(void)
{
  v11[5] = *MEMORY[0x1E69E9840];
  re::globalAllocators(a1);
  v4 = *(a1 + 3);
  if (v4)
  {
    v5 = re::RenderManager::perFrameAllocator(v4);
    v6 = *(a1 + 3);
    if (v6)
    {
      v7 = re::RenderManager::perFrameAllocator(v6);
    }

    else
    {
      v7 = *(a1 + 5);
    }
  }

  else
  {
    v5 = *(a1 + 5);
    v7 = v5;
  }

  v8 = (*(*v7 + 32))(v7, 24, 8);
  *v8 = a2;
  *(v8 + 1) = a1 + 816;
  *(v8 + 2) = a1 + 48;
  v9 = re::globalAllocators(v8)[2];
  v11[0] = &unk_1F5D09710;
  v11[3] = v9;
  v11[4] = v11;
  (*(*v5 + 16))(v5, v8, v11);
  return re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v11);
}

uint64_t re::DataArray<re::DeformationStack>::get(uint64_t a1, int a2)
{
  if (*(a1 + 16) <= HIWORD(a2))
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 32) + 16 * HIWORD(a2)) + 1032 * a2;
}

void re::DeformationManager::addDeformation(uint64_t a1, void *a2, uint64_t a3)
{
  v69 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 24);
  v57 = a1;
  if (v6)
  {
    v6 = re::RenderManager::perFrameAllocator(v6);
    v62 = v6;
  }

  else
  {
    v62 = *(a1 + 40);
  }

  v7 = a2[1];
  v63 = a2[3];
  if (v7)
  {
    v8 = a2[3] == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = *(v57 + 32);
    v56 = *(a3 + 48);
    v10 = a2[12];
    v61 = v9;
    if (v10[1])
    {
      v11 = a3;
    }

    else
    {
      *v10 = v62;
      v10[1] = v7;
      if (v7 >= 0xAAAAAAAAAAAAAABLL)
      {
LABEL_58:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 24, v7);
        _os_crash();
        __break(1u);
LABEL_59:
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
        _os_crash();
        __break(1u);
      }

      v6 = (*(*v62 + 32))(v62, 24 * v7, 8);
      v10[2] = v6;
      if (!v6)
      {
        goto LABEL_59;
      }

      v3 = v6;
      if (v7 != 1)
      {
        v12 = 24 * v7 - 24;
        bzero(v6, v12);
        v3 += v12;
      }

      v11 = a3;
      v9 = v61;
      *v3 = 0;
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
    }

    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v55 = v11 + 32;
    while (1)
    {
      v17 = a2[3];
      if (v17 <= v16)
      {
        break;
      }

      v18 = a2[1];
      v19 = (a2[2] + v13);
      v3 = *v19;
      if (v18 <= v3)
      {
        goto LABEL_45;
      }

      if (v9[11] <= WORD1(*(*a2 + 8 * v3)))
      {
        goto LABEL_46;
      }

      v20 = *(v9[13] + 16 * WORD1(*(*a2 + 8 * v3))) + 144 * *(*a2 + 8 * v3);
      if (v9[3] <= WORD1(*(v20 + 16)))
      {
        goto LABEL_47;
      }

      v21 = a2[12];
      if (*(v21 + 8) <= v3)
      {
        goto LABEL_48;
      }

      v22 = *(v19 + 2);
      v23 = (*(v21 + 16) + 24 * v3);
      if (!*v23)
      {
        v24 = *(*(v9[5] + 16 * WORD1(*(v20 + 16))) + 864 * *(v20 + 16) + 56);
        *v23 = v62;
        v23[1] = v24;
        if (v24)
        {
          if (v24 >> 61)
          {
            goto LABEL_51;
          }

          v59 = v15;
          v25 = v14;
          v26 = v20;
          v27 = v22;
          v6 = (*(*v62 + 32))(v62, 8 * v24, 8);
          v23[2] = v6;
          if (!v6)
          {
            goto LABEL_52;
          }

          v28 = v6;
          if (v24 != 1)
          {
            bzero(v6, 8 * v24 - 8);
            v28 = (v28 + 8 * v24 - 8);
          }

          v22 = v27;
          *v28 = 0;
          v20 = v26;
          v14 = v25;
          v15 = v59;
          v9 = v61;
        }
      }

      v3 = v23[1];
      if (v3 <= v22)
      {
        goto LABEL_49;
      }

      v29 = v23[2];
      if (!*(v29 + v22))
      {
        v30 = v22;
        re::globalAllocators(v6);
        v24 = v62;
        v3 = (*(*v62 + 32))(v62, 328, 8);
        *v3 = 0u;
        *(v3 + 16) = 0u;
        *(v3 + 32) = 0u;
        *(v3 + 48) = 0u;
        *(v3 + 64) = 0u;
        *(v3 + 80) = 0u;
        *(v3 + 96) = 0u;
        *(v3 + 112) = 0u;
        *(v3 + 128) = 0u;
        *(v3 + 144) = 0u;
        *(v3 + 160) = 0u;
        *(v3 + 176) = 0u;
        *(v3 + 192) = 0u;
        *(v3 + 208) = 0u;
        *(v3 + 224) = 0u;
        *(v3 + 240) = 0u;
        *(v3 + 256) = 0u;
        *(v3 + 272) = 0u;
        *(v3 + 320) = 0;
        *(v3 + 200) = 1;
        *(v3 + 216) = 0;
        *(v3 + 224) = 0;
        *(v3 + 208) = 0;
        *(v3 + 232) = 0;
        *(v3 + 248) = 0;
        *(v3 + 256) = 0;
        *(v3 + 240) = 0;
        *(v3 + 264) = 0;
        *(v3 + 272) = 0u;
        *(v3 + 288) = 0u;
        *(v3 + 288) = 0u;
        *(v3 + 304) = 0u;
        *(v3 + 304) = 0;
        v31 = re::globalAllocators(v3)[2];
        *&v64 = &unk_1F5D09768;
        *(&v65 + 1) = v31;
        *&v66 = &v64;
        *(v29 + v30) = (*(*v62 + 16))(v62, v3, &v64);
        v6 = re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v64);
        v32 = a2[5];
        if (v32 <= v16)
        {
          goto LABEL_50;
        }

        v33 = a2[4];
        v9 = v61;
        if ((*(v33 + v13 + 4) & 0xFFFFFF) != 0)
        {
          v6 = re::DataArray<re::DeformationStack>::get(v57 + 816, *(v33 + 8 * v16));
          v34 = a2[5];
          if (v34 <= v16)
          {
            goto LABEL_53;
          }

          v35 = a2[7];
          if (v35 <= v16)
          {
            goto LABEL_54;
          }

          v36 = a2[9];
          if (v36 <= v16)
          {
            goto LABEL_55;
          }

          v37 = a2[11];
          if (v37 <= v16)
          {
            goto LABEL_56;
          }

          v38 = *(a2[4] + 8 * v16);
          v3 = v6 + 48;
          v39 = *v6;
          v40 = *(a2[6] + 8 * v16);
          v41 = a2[8];
          v42 = a2[10];
          v43 = v30;
          v44 = *(v29 + v30);
          v45 = *(a3 + 48);
          v46 = *(a3 + 16);
          if (v45 + 1 > 8 * v46)
          {
            v60 = *v6;
            v53 = v44;
            v54 = *(a2[4] + 8 * v16);
            v51 = a2[8];
            v52 = *(a2[6] + 8 * v16);
            v50 = a2[10];
            v6 = re::BucketArray<re::ActiveDeformation,8ul>::setBucketsCapacity((a3 + 8), (v45 + 8) >> 3);
            v42 = v50;
            v41 = v51;
            v40 = v52;
            v44 = v53;
            v38 = v54;
            v39 = v60;
            v43 = v30;
            v46 = *(a3 + 16);
          }

          if (v46 <= v45 >> 3)
          {
            goto LABEL_57;
          }

          v47 = v55;
          if ((*(a3 + 24) & 1) == 0)
          {
            v47 = *(a3 + 40);
          }

          v48 = *(v47 + 8 * (v45 >> 3));
          ++*(a3 + 48);
          ++*(a3 + 56);
          v49 = v48 + 400 * (v45 & 7);
          *(v49 + 288) = 0u;
          *(v49 + 304) = 0u;
          *(v49 + 256) = 0u;
          *(v49 + 272) = 0u;
          *(v49 + 224) = 0u;
          *(v49 + 240) = 0u;
          *(v49 + 192) = 0u;
          *(v49 + 208) = 0u;
          *(v49 + 160) = 0u;
          *(v49 + 176) = 0u;
          *(v49 + 128) = 0u;
          *(v49 + 144) = 0u;
          *(v49 + 96) = 0u;
          *(v49 + 112) = 0u;
          *(v49 + 64) = 0u;
          *(v49 + 80) = 0u;
          *(v49 + 32) = 0u;
          *(v49 + 48) = 0u;
          *v49 = 0u;
          *(v49 + 16) = 0u;
          *(v49 + 320) = v38;
          *(v49 + 328) = v3;
          *(v49 + 336) = v39;
          *(v49 + 344) = v40;
          *(v49 + 352) = v41 + v15;
          *(v49 + 360) = v42 + v14;
          *(v49 + 368) = v20;
          *(v49 + 376) = v44;
          *(v49 + 384) = v56;
          *(v49 + 392) = v43;
          v9 = v61;
        }
      }

      ++v16;
      v15 += 168;
      v14 += 48;
      v13 += 8;
      if (v63 == v16)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v16, v17);
    _os_crash();
    __break(1u);
LABEL_45:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v3, v18);
    _os_crash();
    __break(1u);
LABEL_46:
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v64 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_47:
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v64 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_48:
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v64 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_49:
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v64 = 0u;
    v24 = v22;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_50:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v16, v32);
    _os_crash();
    __break(1u);
LABEL_51:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, v24);
    _os_crash();
    __break(1u);
LABEL_52:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
LABEL_53:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v16, v34);
    _os_crash();
    __break(1u);
LABEL_54:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v16, v35);
    _os_crash();
    __break(1u);
LABEL_55:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v16, v36);
    _os_crash();
    __break(1u);
LABEL_56:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v16, v37);
    _os_crash();
    __break(1u);
LABEL_57:
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v64 = 0u;
    v7 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_58;
  }
}

_anonymous_namespace_ *re::DeformationManager::addDeformationView(_anonymous_namespace_ *result, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v21 = *a2;
  v22 = a2[1];
  v24 = a3[1];
  v25 = a3[2];
  v26 = a3[3];
  v27 = *(a3 + 32);
  v23 = *a3;
  v5 = *(a3 + 80);
  if (v5 == 1)
  {
    v17 = a3[6];
    v18 = a3[7];
    v19 = a3[8];
    v20 = a3[9];
  }

  v6 = *(a3 + 160);
  if (v6 == 1)
  {
    v13 = a3[11];
    v14 = a3[12];
    v15 = a3[13];
    v16 = a3[14];
  }

  v8 = *(a4 + 72);
  v7 = *(a4 + 80);
  if (v7 >= v8)
  {
    v9 = v7 + 1;
    if (v8 < v7 + 1)
    {
      if (*(a4 + 64))
      {
        v10 = 2 * v8;
        if (!v8)
        {
          v10 = 8;
        }

        if (v10 <= v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = v10;
        }

        result = re::DynamicArray<re::DeformationView>::setCapacity((a4 + 64), v11);
      }

      else
      {
        result = re::DynamicArray<re::DeformationView>::setCapacity((a4 + 64), v9);
        ++*(a4 + 88);
      }
    }

    v7 = *(a4 + 80);
  }

  v12 = *(a4 + 96) + 272 * v7;
  *v12 = v21;
  *(v12 + 16) = v22;
  *(v12 + 64) = v25;
  *(v12 + 80) = v26;
  *(v12 + 96) = v27;
  *(v12 + 32) = v23;
  *(v12 + 48) = v24;
  *(v12 + 112) = v5;
  if (v5)
  {
    *(v12 + 128) = v17;
    *(v12 + 144) = v18;
    *(v12 + 160) = v19;
    *(v12 + 176) = v20;
  }

  *(v12 + 192) = v6;
  if (v6)
  {
    *(v12 + 208) = v13;
    *(v12 + 224) = v14;
    *(v12 + 240) = v15;
    *(v12 + 256) = v16;
  }

  ++*(a4 + 80);
  ++*(a4 + 88);
  return result;
}

void re::DeformationManagerGPU::deform(re::ProfilerConfig *a1, uint64_t a2, uint64_t a3, const re::mtl::CommandBuffer *a4, unint64_t a5, void *a6)
{
  v236 = *MEMORY[0x1E69E9840];
  v7 = a6[6];
  if (!v7)
  {
    return;
  }

  v10 = a1;
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(a1);
  if (isStatisticCollectionEnabled)
  {
    isStatisticCollectionEnabled = re::profilerThreadContext(isStatisticCollectionEnabled);
    v148 = isStatisticCollectionEnabled;
    if (*(isStatisticCollectionEnabled + 19))
    {
      isStatisticCollectionEnabled = mach_absolute_time();
      v147 = isStatisticCollectionEnabled;
    }
  }

  else
  {
    v148 = 0;
  }

  v177 = (a6 + 1);
  v12 = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
  if (v12)
  {
    v13 = re::profilerThreadContext(v12);
    v14 = *(v13 + 152);
    if (v14)
    {
      v15 = v14[936].u64[0];
      if (v15 >= v7)
      {
        v15 = v7;
      }

      v14[936].i64[0] = v15;
      v16 = v14[936].u64[1];
      if (v16 <= v7)
      {
        v16 = v7;
      }

      v14[936].i64[1] = v16;
      v17 = vdupq_n_s64(1uLL);
      v17.i64[0] = v7;
      v14[937] = vaddq_s64(v14[937], v17);
      *(v13 + 184) = 0;
    }
  }

  v18 = re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v185, 1004, v10);
  v182 = 0;
  v183 = 0;
  v184 = 0;
  v19 = 0;
  v20 = 0;
  v21 = &v206;
  v22 = v183;
  v180 = v184;
  do
  {
    v23 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](v177, v20);
    re::DeformationVertexBufferState::makeFromMeshInstance(*(v10 + 32), *(v23 + 368), *(v23 + 392), &v206);
    if (v22 == v20)
    {
      goto LABEL_232;
    }

    i = v180 + v19;
    v24 = v206;
    v25 = v207;
    v26 = v208;
    *(i + 48) = v209;
    *(i + 16) = v25;
    *(i + 32) = v26;
    *i = v24;
    if ((v180 + v19) != &v206)
    {
      re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::copy((i + 56), &v209 + 8);
      re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::copy((i + 120), &v211);
      re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::copy((i + 184), &v212);
      re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::copy((i + 248), &v214 + 8);
    }

    re::DeformationVertexBufferState::~DeformationVertexBufferState(&v206);
    ++v20;
    v19 += 312;
  }

  while (v7 != v20);
  v181 = *a5;
  v27 = *(v10 + 24);
  v28 = v27 + 144;
  if (!v27)
  {
    v28 = v10 + 16;
  }

  v203 = vorrq_s8(vandq_s8(*(*v28 + 24), vdupq_n_s64(0xFFFFFFFFFFFFFFFuLL)), vdupq_n_s64(*(*v28 + 16) << 60));
  v204 = v27 + 208;
  v29 = re::DeformationFencePool::setCurrentFrame(v10 + 880, v203.i64[1], v203.i64[0]);
  re::globalAllocators(v29);
  a5 = (*(*a2 + 32))(a2, 984, 8);
  bzero(a5, 0x3D0uLL);
  v31 = 0;
  *(a5 + 16) = 1;
  *(a5 + 72) = 1;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 24) = 0;
  *(a5 + 48) = 0;
  *(a5 + 56) = 0;
  *(a5 + 64) = 0;
  *(a5 + 88) = 0;
  *(a5 + 96) = 0;
  *(a5 + 80) = 0;
  *(a5 + 104) = 0;
  do
  {
    v32 = a5 + v31;
    *(v32 + 144) = 0;
    *(v32 + 112) = 0uLL;
    *(v32 + 128) = 0uLL;
    *(v32 + 148) = 0x7FFFFFFFLL;
    v31 += 48;
  }

  while (v31 != 864);
  *(a5 + 976) = 0;
  *(&v207 + 1) = re::globalAllocators(v30)[2];
  *&v206 = &unk_1F5D097C0;
  *&v208 = &v206;
  v158 = (*(*a2 + 16))(a2, a5, &v206);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v206);
  v161 = a2;
  v159 = v10;
  v176 = v22;
  v170 = a6[6];
  if (!v170)
  {
    goto LABEL_45;
  }

  a5 = 0;
  LODWORD(v20) = 1;
  do
  {
    v7 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](v177, a5);
    v34 = re::DataArray<re::DeformationStack>::get(v10 + 816, *(v7 + 320));
    if (a5 == v22)
    {
      goto LABEL_237;
    }

    v36 = (v180 + 312 * a5);
    v37 = *(v7 + 360);
    v195 = 0;
    v22 = *v34;
    if (!*v34)
    {
      goto LABEL_43;
    }

    v178 = v7;
    v171 = v34;
    v173 = a5;
    a5 = 0;
    i = 0;
    v38 = v34 + 48;
    v174 = v34 + 4;
    do
    {
      v21 = &v38[64 * a5];
      v39 = *(v21 + 8);
      {
        v44 = *(v21 + 16);
LABEL_36:
        i |= v44;
        re::Bitset<64>::toWordIndex(&v195, a5);
        v195 |= 1 << a5;
        goto LABEL_37;
      }

      v7 = *(v37 + 8);
      if (v7 <= a5)
      {
        goto LABEL_231;
      }

      v41 = *(v37 + 16) + 72 * a5;
      v7 = *(v41 + 56);
      if (*(v41 + 56))
      {
        v21 = 0;
        do
        {
          v42 = *(v37 + 8);
          if (v42 <= a5)
          {
            *&v235[0] = 0;
            v209 = 0u;
            v210 = 0u;
            v207 = 0u;
            v208 = 0u;
            v206 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v220[0]) = 136315906;
            *(v220 + 4) = "operator[]";
            WORD6(v220[0]) = 1024;
            *(v220 + 14) = 476;
            WORD1(v220[1]) = 2048;
            *(&v220[1] + 4) = a5;
            WORD6(v220[1]) = 2048;
            *(&v220[1] + 14) = v42;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_229;
          }

          v43 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[](*(v37 + 16) + 72 * a5 + 16, v21);
          re::DeformationVertexBufferState::setOutputBuffer(v36, *v43, 1, v43 + 3, v43 + 4);
          ++v21;
        }

        while (v7 != v21);
        re::DeformationVertexBufferState::resetVertexBufferChangedState(v36);
        LODWORD(v20) = 1;
      }

      else
      {
        v44 = *(v21 + 16);
        if (v44)
        {
          goto LABEL_36;
        }
      }

LABEL_37:
      ++a5;
    }

    while (a5 != v22);
    v10 = v159;
    a5 = v173;
    v7 = v178;
    if (v195)
    {
      re::DeformationPassBuilder::addDeformationStack(v158, v173, v195, v171);
      goto LABEL_44;
    }

LABEL_43:
    re::DeformationVertexBufferState::buildAttributeTable(v36, *(v7 + 376));
LABEL_44:
    ++a5;
    v22 = v176;
  }

  while (a5 != v170);
LABEL_45:
  if (!*a4)
  {
    goto LABEL_244;
  }

  re::DeformationCommandBuffer::DeformationCommandBuffer(v220, *(v10 + 24), a4, (v10 + 880));
  v46 = v158;
  v47 = *(v158 + 976);
  if (v47)
  {
    a5 = __clz(__rbit64(v47));
    v7 = 40;
    do
    {
      (*(**(v10 + 48 + 40 * a5) + 16))(*(v10 + 48 + 40 * a5), v10 + 8);
      v46 = v158;
      if (a5 == 63)
      {
        break;
      }

      v106 = (*(v158 + 976) & (-2 << a5)) == 0;
      a5 = __clz(__rbit64(*(v158 + 976) & (-2 << a5)));
    }

    while (!v106);
  }

  v202 = 0;
  v150 = *(v46 + 40);
  if (*(v46 + 40))
  {
    v48 = 0;
    v154 = 0;
    v151 = v46 + 80;
    v152 = 312 * v22;
    v149 = 1;
    v175 = 1;
    do
    {
      v49 = *(v46 + 96);
      if (v49 <= v48)
      {
        goto LABEL_241;
      }

      a5 = v48 >> 3;
      v7 = *(v46 + 64);
      if (v7 <= v48 >> 3)
      {
LABEL_242:
        v195 = 0;
        v209 = 0u;
        v210 = 0u;
        v207 = 0u;
        v208 = 0u;
        v206 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v235[0]) = 136315906;
        *(v235 + 4) = "operator[]";
        WORD6(v235[0]) = 1024;
        *(v235 + 14) = 866;
        WORD1(v235[1]) = 2048;
        *(&v235[1] + 4) = a5;
        WORD6(v235[1]) = 2048;
        *(&v235[1] + 14) = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_243:
        re::internal::assertLog(4, v52, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "first", 754);
        _os_crash();
        __break(1u);
LABEL_244:
        re::internal::assertLog(4, v33, "assertion failure: '%s' (%s:line %i) ", "commandBuffer.isValid()", "processDeformationPasses", 596);
        _os_crash();
        __break(1u);
LABEL_245:
        re::internal::assertLog(4, v74, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
        _os_crash();
        __break(1u);
        goto LABEL_246;
      }

      v50 = v151;
      if ((*(v46 + 72) & 1) == 0)
      {
        v50 = *(v46 + 88);
      }

      v153 = v48;
      v21 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v46, *(*(v50 + 8 * a5) + (v48 & 7)));
      re::DeformationCommandBuffer::beginDeformationPass(v220);
      v195 = 0;
      v196 = 0;
      v197 = 1;
      v199 = 0;
      v200 = 0;
      v198 = 0;
      v201 = 0;
      v51 = re::BucketArray<re::DynamicArray<re::PostDeformationBlit>,8ul>::addUninitialized(&v195);
      *(v51 + 32) = 0;
      *(v51 + 8) = 0;
      *(v51 + 16) = 0;
      *v51 = 0;
      *(v51 + 24) = 0;
      v163 = *(v21 + 40);
      if (!v163)
      {
        v131 = 0;
        goto LABEL_181;
      }

      *&v155[8] = 0;
      v156 = 0;
      v169 = 0;
      v53 = 0;
      *v155 = v154 ^ 1u;
      v162 = v21 + 24;
      v160 = v21;
      do
      {
        v54 = *(v21 + 40);
        if (v54 <= v53)
        {
          goto LABEL_233;
        }

        a5 = v53 >> 6;
        v7 = *(v21 + 8);
        if (v7 <= v53 >> 6)
        {
LABEL_234:
          *&v190 = 0;
          v209 = 0u;
          v210 = 0u;
          v207 = 0u;
          v208 = 0u;
          v206 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v235[0]) = 136315906;
          *(v235 + 4) = "operator[]";
          WORD6(v235[0]) = 1024;
          *(v235 + 14) = 866;
          WORD1(v235[1]) = 2048;
          *(&v235[1] + 4) = a5;
          WORD6(v235[1]) = 2048;
          *(&v235[1] + 14) = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_235:
          re::internal::assertLog(4, v68, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
          _os_crash();
          __break(1u);
LABEL_236:
          re::internal::assertLog(4, v71, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
          _os_crash();
          __break(1u);
LABEL_237:
          re::internal::assertLog(6, v35, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v22, v22);
          _os_crash();
          __break(1u);
LABEL_238:
          re::internal::assertLog(6, v141, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v21, v21);
          _os_crash();
          __break(1u);
          goto LABEL_239;
        }

        v55 = v162;
        if ((*(v21 + 16) & 1) == 0)
        {
          v55 = *(v21 + 32);
        }

        v166 = v53;
        v56 = (*(v55 + 8 * a5) + ((v53 & 0x3F) << 6));
        v167 = v56[1] == 1;
        *&v190 = v56;
        *(&v190 + 1) = a6 + 1;
        v57 = a6[12];
        v58 = a6[10];
        *&v191 = &v203;
        *(&v191 + 1) = v57;
        v192 = v58;
        v193 = v180;
        v194 = v22;
        v172 = *(v159 + 48 + 40 * *v56);
        *v219 = 0uLL;
        *&v219[21] = 0;
        *&v219[16] = 0;
        v219[29] = 1;
        v179 = v56;
        i = *(v56 + 6);
        if (i)
        {
          v7 = 0;
          while (1)
          {
            v21 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v179 + 8, v7);
            v59 = *(v21 + 16);
            v60 = *(*v21 + 4 * v59 + 4);
            a5 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](v177, *(v21 + 8));
            v61 = *v21 + (v59 << 6);
            v62 = *(v61 + 48);
            v63 = *(v61 + 64);
            v208 = *(v61 + 80);
            v206 = v62;
            v207 = v63;
            v209 = 0uLL;
            v22 = v61 + 88;
            v64 = *(v61 + 88);
            if (v64)
            {
              re::FixedArray<re::Pair<re::DeformerType,unsigned long long,true>>::init<>(&v208 + 1, v64, *(v61 + 96));
              re::FixedArray<re::Pair<re::DeformerType,unsigned long long,true>>::copy(&v208 + 1, v22);
            }

            v65 = *(v21 + 8);
            v66 = v176;
            if (v176 <= v65)
            {
              break;
            }

            re::DeformationBufferAllocator::resetAllocationData(*(a5 + 360), &v203, v59, v67);
            if (*(&v208 + 1) && v209)
            {
              (*(**(&v208 + 1) + 40))();
            }

            if (i == ++v7)
            {
              goto LABEL_72;
            }
          }

LABEL_229:
          re::internal::assertLog(6, v64, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v65, v66);
          _os_crash();
          __break(1u);
          goto LABEL_230;
        }

LABEL_72:
        v186[1] = 0;
        v187 = 0;
        v188 = 0;
        v189 = 0;
        v22 = v161;
        v186[0] = v161;
        re::DynamicArray<re::ecs2::HandleTable::HandleSlot>::setCapacity(v186, 0);
        ++v188;
        if (!v200)
        {
          goto LABEL_235;
        }

        a5 = *(v179 + 1);
        v69 = re::BucketArray<re::BufferSlice,8ul>::operator[](&v195, v200 - 1);
        v70 = (*(*v172 + 40))(v172, v161, a3, a5, &v190, v219, v69, v186);
        if (!v200)
        {
          goto LABEL_236;
        }

        v72 = v70;
        v73 = re::BucketArray<re::BufferSlice,8ul>::operator[](&v195, v200 - 1);
        if (*(v73 + 2))
        {
          v73 = re::BucketArray<re::DynamicArray<re::PostDeformationBlit>,8ul>::addUninitialized(&v195);
          *(v73 + 4) = 0;
          *(v73 + 1) = 0;
          *(v73 + 2) = 0;
          *v73 = 0;
          *(v73 + 6) = 0;
        }

        v75 = &v213;
        if (*(v179 + 1) == 1 && *v219)
        {
          re::DeformationCommandBuffer::setEncoderType(v220, 1);
          re::BufferInitializationOptions::initializeGPUVertexBuffers(v219, &v225, v179, v180, v176);
        }

        *&v206 = 0;
        DWORD2(v206) = 0;
        *&v207 = 0;
        DWORD2(v207) = 0;
        v213 = 0u;
        v214 = 0u;
        v215 = 0;
        v216 = 0x7FFFFFFFLL;
        if (!v187)
        {
          goto LABEL_127;
        }

        v76 = v189;
        v77 = &v189[2 * v187];
        do
        {
          v78 = *v76;
          *&v235[0] = *v76;
          if (HIDWORD(v214))
          {
            goto LABEL_82;
          }

          if (v207)
          {
            v79 = 24 * v207;
            v80 = 24 * v207;
            v73 = &v208 + 8;
            do
            {
              if (*(v73 - 1) == v78)
              {
                goto LABEL_105;
              }

              v73 += 24;
              v80 -= 24;
            }

            while (v80);
            if ((v207 & 0xFFFFFFF8) != 0)
            {
              if (v213)
              {
                goto LABEL_93;
              }

              v81 = v206;
              if (!v206)
              {
              }

              re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(&v213, v81, 16);
              if (v207)
              {
                v79 = 24 * v207;
LABEL_93:
                v82 = &v208;
                v83 = &v208 + v79;
                while (2)
                {
                  v84 = 0xBF58476D1CE4E5B9 * (*v82 ^ (*v82 >> 30));
                  v85 = (0x94D049BB133111EBLL * (v84 ^ (v84 >> 27))) ^ ((0x94D049BB133111EBLL * (v84 ^ (v84 >> 27))) >> 31);
                  if (v213)
                  {
                    v86 = v85 % DWORD2(v214);
                    v87 = *(*(&v213 + 1) + 4 * v86);
                    if (v87 != 0x7FFFFFFF)
                    {
                      while (*(v214 + 32 * v87 + 8) != *v82)
                      {
                        v87 = *(v214 + 32 * v87) & 0x7FFFFFFF;
                        if (v87 == 0x7FFFFFFF)
                        {
                          goto LABEL_100;
                        }
                      }

LABEL_101:
                      v82 += 24;
                      if (v82 == v83)
                      {
                        goto LABEL_102;
                      }

                      continue;
                    }
                  }

                  else
                  {
                    LODWORD(v86) = 0;
                  }

                  break;
                }

LABEL_100:
                v88 = re::HashTable<MTL::Event *,re::EventWait,re::Hash<MTL::Event *>,re::EqualTo<MTL::Event *>,false,false>::allocEntry(&v213, v86, v85);
                v88[1] = *v82;
                v88[2] = *(v82 + 1);
                *(v82 + 1) = 0;
                v88[3] = *(v82 + 2);
                ++HIDWORD(v216);
                goto LABEL_101;
              }

LABEL_102:
              re::DynamicInlineArray<re::KeyValuePair<MTL::Event *,re::EventWait>,8ul>::clear(&v207);
LABEL_82:
              v73 = re::HashTable<MTL::Event *,re::EventWait,re::Hash<MTL::Event *>,re::EqualTo<MTL::Event *>,false,false>::add(&v213, v235, v76);
              goto LABEL_105;
            }
          }

          v89 = v78;
          v90 = v207;
          if (v207 >= 8)
          {
            goto LABEL_245;
          }

          v91 = v76[1];
          v92 = &v208 + 3 * v207;
          *v92 = v78;
          v92[1] = v89;
          v73 = (v92 + 1);
          v92[2] = v91;
          *&v207 = v90 + 1;
          ++DWORD2(v207);
LABEL_105:
          v93 = v76[1];
          if (*(v73 + 1) < v93)
          {
            *(v73 + 1) = v93;
          }

          v76 += 2;
        }

        while (v76 != v77);
        v94 = HIDWORD(v214);
        if (!HIDWORD(v214))
        {
          i = &v208;
          v75 = &v208 + 24 * v207;
          goto LABEL_117;
        }

        v175 = v215;
        v20 = 0;
        if (v215)
        {
          v95 = v214;
          while (1)
          {
            v96 = *v95;
            v95 += 8;
            if (v96 < 0)
            {
              break;
            }

            if (v215 == ++v20)
            {
              LODWORD(v20) = v215;
              break;
            }
          }
        }

        else
        {
          v175 = 0;
        }

        for (i = &v213; ; i += 24)
        {
LABEL_117:
          while (v94)
          {
            if (v175 == v20)
            {
              goto LABEL_127;
            }

            v97 = *(i + 16) + 32 * v20;
            v98 = *(v97 + 16);
            v99 = *(v97 + 24);
            re::DeformationCommandBuffer::setEncoderType(v220, 0);
            v73 = [**&v220[1] encodeWaitForEvent:v98 value:v99];
            v100 = v20 + 1;
            if (*(i + 32) <= (v20 + 1))
            {
              LODWORD(v20) = v20 + 1;
            }

            else
            {
              LODWORD(v20) = *(i + 32);
            }

            while (v20 != v100)
            {
              v101 = v100;
              v102 = *(*(i + 16) + 32 * v100++);
              if (v102 < 0)
              {
                LODWORD(v20) = v101;
                goto LABEL_117;
              }
            }
          }

          if (i == v75)
          {
            break;
          }

          v103 = *(i + 8);
          v104 = *(i + 16);
          re::DeformationCommandBuffer::setEncoderType(v220, 0);
          v73 = [**&v220[1] encodeWaitForEvent:v103 value:v104];
        }

LABEL_127:
        v21 = v169 | v167;
        v105 = *(v179 + 1);
        if (*(v179 + 1))
        {
          v22 = v176;
          if (v105 == 1)
          {
            re::DeformationCommandBuffer::setEncoderType(v220, 2);
            (*(*v172 + 56))(v172, v72, &v226, &v190);
            goto LABEL_157;
          }

LABEL_246:
          re::internal::assertLog(5, v74, "assertion failure: '%s' (%s:line %i) Invalid Deformation Execution Mode: %u", "!Unreachable code", "processDeformationPasses", 792, v105);
          _os_crash();
          __break(1u);
        }

        v106 = ((v154 ^ 1) & (HIDWORD(v214) == 0)) == 1 && v207 == 0;
        if (!v106)
        {
          v107 = v156;
          if (v156)
          {
            goto LABEL_143;
          }

          re::globalAllocators(v73);
          a5 = (*(*v161 + 32))(v161, 24, 8);
          *(a5 + 8) = 0;
          *(a5 + 16) = 0;
          *a5 = 0;
          v7 = v176;
          re::FixedArray<re::DeformationVertexBufferState>::init<>(a5, v161, v176);
          v109 = re::globalAllocators(v108)[2];
          *&v235[0] = &unk_1F5D09818;
          *(&v235[1] + 1) = v109;
          *&v235[2] = v235;
          v110 = (*(*v161 + 16))(v161, a5, v235);
          v111 = re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v235);
          if (!*v110)
          {
          }

          if (v110[1] == v176)
          {
            v113 = 0;
            v157 = v110;
            v114 = v110[2];
            do
            {
              v115 = v114 + v113;
              v116 = v180 + v113;
              v117 = *(v180 + v113);
              v118 = *(v180 + v113 + 16);
              v119 = *(v180 + v113 + 32);
              *(v115 + 48) = *(v180 + v113 + 48);
              *(v115 + 16) = v118;
              *(v115 + 32) = v119;
              *v115 = v117;
              if (v180 != v114)
              {
                re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::copy((v115 + 56), v116 + 56);
                re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::copy((v115 + 120), v116 + 120);
                re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::copy((v115 + 184), v116 + 184);
                re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::copy((v115 + 248), v116 + 248);
              }

              v113 += 312;
            }

            while (v152 != v113);
            v120 = (*(*v161 + 32))(v161, 72, 8);
            *v120 = 0;
            *(v120 + 8) = 0;
            *(v120 + 16) = 1;
            *(v120 + 32) = 0;
            *(v120 + 40) = 0;
            *(v120 + 24) = 0;
            *(v120 + 48) = 0;
            re::BucketArray<re::internal::DeformationCallbackData,8ul>::init(v120, v161, 1uLL);
            *(v120 + 56) = 0;
            *(v120 + 64) = 0;
            *&v155[4] = v120;
            *(v120 + 64) = [*(*(v159 + 24) + 208) supportsBufferWithIOSurface];
            v107 = v157;
LABEL_143:
            *(v218 + 14) = *&v219[14];
            v218[0] = *v219;
            *&v217[18] = v191;
            *&v217[34] = v192;
            *&v217[2] = v190;
            v7 = v107[1];
            a5 = v107[2];
            v156 = v107;
            v121 = *&v155[4];
            v122 = *(*&v155[4] + 40);
            i = *(*&v155[4] + 8);
            if (v122 + 1 > 8 * i)
            {
              re::BucketArray<re::internal::DeformationCallbackData,8ul>::setBucketsCapacity(*&v155[4], (v122 + 8) >> 3);
              v121 = *&v155[4];
              i = *(*&v155[4] + 8);
            }

            v21 = v122 >> 3;
            v22 = v176;
            if (i > v122 >> 3)
            {
              if (*(v121 + 16))
              {
                v123 = v121 + 24;
              }

              else
              {
                v123 = *(v121 + 32);
              }

              v124 = *(v123 + 8 * v21);
              ++*(v121 + 40);
              ++*(v121 + 48);
              v125 = v124 + 104 * (v122 & 7);
              *(v125 + 16) = v218[0];
              *(v125 + 30) = *(v218 + 14);
              v126 = *&v217[16];
              *(v125 + 46) = *v217;
              *v125 = v172;
              *(v125 + 8) = v72;
              *(v125 + 62) = v126;
              *(v125 + 72) = *&v217[26];
              *(v125 + 88) = a5;
              *(v125 + 96) = v7;
              v21 = 1;
              goto LABEL_157;
            }

LABEL_239:
            v205 = 0;
            memset(v235, 0, sizeof(v235));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v227 = 136315906;
            v228 = "operator[]";
            v229 = 1024;
            v230 = 858;
            v231 = 2048;
            v232 = v21;
            v233 = 2048;
            v234 = i;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          re::internal::assertLog(4, v112, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
          _os_crash();
          __break(1u);
LABEL_241:
          re::internal::assertLog(6, v45, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, v48, v49);
          _os_crash();
          __break(1u);
          goto LABEL_242;
        }

        if ([*(*(v159 + 24) + 208) supportsBufferWithIOSurface])
        {
          memset(v235, 0, 36);
          *(&v235[2] + 4) = 0x7FFFFFFFLL;
          v22 = v176;
          if (*v219)
          {
            re::BufferInitializationOptions::initializeCPUVertexBuffers(v219, v179, v180, v176);
          }

          (*(*v172 + 64))(v172, v72, &v190);
          re::DeformationVertexBufferState::LockedSurfaces::unlockAll(v235);
          re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v235);
        }

        else
        {
          v22 = v176;
          if (*v219)
          {
            re::BufferInitializationOptions::initializeCPUVertexBuffers(v219, v179, v180, v176);
          }

          (*(*v172 + 64))(v172, v72, &v190);
        }

LABEL_157:
        v7 = *(v179 + 48);
        if (v7)
        {
          a5 = 0;
          while (1)
          {
            v128 = *(re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v179 + 8, a5) + 8);
            if (v22 <= v128)
            {
              break;
            }

            re::DeformationVertexBufferState::resetVertexBufferChangedState(v180 + 312 * v128);
            if (v7 == ++a5)
            {
              goto LABEL_161;
            }
          }

LABEL_230:
          re::internal::assertLog(6, v127, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v128, v22);
          _os_crash();
          __break(1u);
LABEL_231:
          *&v235[0] = 0;
          v209 = 0u;
          v210 = 0u;
          v207 = 0u;
          v208 = 0u;
          v206 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v220[0]) = 136315906;
          *(v220 + 4) = "operator[]";
          WORD6(v220[0]) = 1024;
          *(v220 + 14) = 476;
          WORD1(v220[1]) = 2048;
          *(&v220[1] + 4) = a5;
          WORD6(v220[1]) = 2048;
          *(&v220[1] + 14) = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_232:
          v195 = 0;
          v222 = 0u;
          v221 = 0u;
          memset(v220, 0, sizeof(v220));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v235[0]) = 136315906;
          *(v235 + 4) = "operator[]";
          WORD6(v235[0]) = 1024;
          *(v235 + 14) = 468;
          WORD1(v235[1]) = 2048;
          *(&v235[1] + 4) = v22;
          WORD6(v235[1]) = 2048;
          *(&v235[1] + 14) = v22;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_233:
          re::internal::assertLog(6, v52, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, v53, v54);
          _os_crash();
          __break(1u);
          goto LABEL_234;
        }

LABEL_161:
        v169 = v21;
        re::DeformationCommandBuffer::endDeformation(v220, v74);
        a5 = &v207;
        re::DynamicInlineArray<re::KeyValuePair<MTL::Event *,re::EventWait>,8ul>::clear(&v207);
        re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v213);
        *&v206 = 0;
        DWORD2(v206) = 0;
        re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v213);
        re::DynamicInlineArray<re::KeyValuePair<MTL::Event *,re::EventWait>,8ul>::clear(&v207);
        v129 = v186[0];
        v21 = v160;
        if (v186[0])
        {
          a5 = v189;
          if (v189)
          {
            if (v187)
            {
              v7 = 16 * v187;
              do
              {
                if (*a5)
                {

                  *a5 = 0;
                }

                a5 += 16;
                v7 -= 16;
              }

              while (v7);
              v129 = v186[0];
              a5 = v189;
            }

            (*(*v129 + 40))(v129, a5);
          }
        }

        v53 = v166 + 1;
      }

      while (v166 + 1 != v163);
      v130 = *&v155[4];
      if (*&v155[4])
      {
        v131 = v169;
        if (!v202)
        {
          *&v235[0] = [*(*(v159 + 24) + 208) newSharedEvent];
          NS::SharedPtr<MTL::Texture>::operator=(&v202, v235);
          if (*&v235[0])
          {
          }

          v130 = *&v155[4];
        }

        v7 = v149;
        *(v130 + 56) = v149 + 1;
        v132 = v130;
        a5 = [objc_msgSend(MEMORY[0x1E6974178] alloc)];
        *&v206 = MEMORY[0x1E69E9820];
        *(&v206 + 1) = 0x40000000;
        *&v207 = ___ZN2re21DeformationManagerGPU26enqueueCPUDeformationOnGPUERNS_24DeformationCommandBufferERN2NS9SharedPtrIN3MTL11SharedEventEEERyPNS_8internal23DeformMetalCallbackDataE_block_invoke;
        *(&v207 + 1) = &__block_descriptor_tmp_30;
        *&v208 = v132;
        [v202 notifyListener:a5 atValue:v149 block:&v206];
        re::DeformationCommandBuffer::encodeSharedEventForSynchronization(v220, &v202, v149, *(v132 + 56));
        if (a5)
        {
        }

        v149 += 2;
      }

      else
      {
        v131 = v169;
      }

LABEL_181:
      if (!v200)
      {
        goto LABEL_243;
      }

      if (*(re::BucketArray<re::BufferSlice,8ul>::operator[](&v195, 0) + 16))
      {
        re::DeformationCommandBuffer::encodePostDeformationBlits(v220, &v195);
      }

      re::DeformationCommandBuffer::endDeformationPass(v220, v133);
      v134 = v200;
      if (v200)
      {
        a5 = 0;
        do
        {
          v7 = re::BucketArray<re::BufferSlice,8ul>::operator[](&v195, a5);
          v135 = *v7;
          if (*v7)
          {
            i = *(v7 + 32);
            if (i)
            {
              v136 = *(v7 + 16);
              if (v136)
              {
                v137 = 48 * v136;
                do
                {
                  if (*i)
                  {

                    *i = 0;
                  }

                  i += 48;
                  v137 -= 48;
                }

                while (v137);
                v135 = *v7;
                i = *(v7 + 32);
              }

              (*(*v135 + 40))(v135, i);
            }

            *(v7 + 32) = 0;
            *(v7 + 8) = 0;
            *(v7 + 16) = 0;
            *v7 = 0;
            ++*(v7 + 24);
          }

          ++a5;
        }

        while (a5 != v134);
      }

      while (v196)
      {
        re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v195);
      }

      if (v195 && (v197 & 1) == 0)
      {
        (*(*v195 + 40))();
      }

      v154 |= v131;
      v48 = v153 + 1;
      v46 = v158;
    }

    while (v153 + 1 != v150);
  }

  re::DeformationCommandBuffer::finalizeFinalEncoder(v220, &v181);
  if (v202)
  {
  }

  re::BucketArray<unsigned long,8ul>::deinit(v223);
  if (v223[0])
  {
    v138 = v224;
    if ((v224 & 1) == 0)
    {
      (*(*v223[0] + 40))();
      v138 = v224;
    }

    v223[0] = 0;
    v223[1] = 0;
    v224 = (v138 | 1) + 2;
  }

  re::BucketArray<unsigned long,8ul>::deinit(&v220[2] + 8);
  if (*(&v220[2] + 1) && (BYTE8(v221) & 1) == 0)
  {
    (*(**(&v220[2] + 1) + 40))();
  }

  if (v181)
  {

    v181 = 0;
  }

  v7 = a6[6];
  if (v7)
  {
    v139 = 0;
    v21 = v183;
    a5 = v184;
    do
    {
      v140 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](v177, v139);
      if (v21 == v139)
      {
        goto LABEL_238;
      }

      re::DeformationVertexBufferState::buildAttributeTable(a5, *(v140 + 376));
      ++v139;
      a5 += 312;
    }

    while (v7 != v139);
  }

  re::FixedArray<re::DeformationVertexBufferState>::deinit(&v182);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v185);
  if (v148)
  {
    if (*(v148 + 19))
    {
      v142 = mach_absolute_time();
      v143 = *(v148 + 19);
      if (v143)
      {
        v144 = v143[928].u64[0];
        if (v144 >= v142 - v147)
        {
          v144 = v142 - v147;
        }

        v143[928].i64[0] = v144;
        v145 = v143[928].u64[1];
        if (v145 <= v142 - v147)
        {
          v145 = v142 - v147;
        }

        v143[928].i64[1] = v145;
        v146 = vdupq_n_s64(1uLL);
        v146.i64[0] = v142 - v147;
        v143[929] = vaddq_s64(v143[929], v146);
        *(v148 + 184) = 0;
      }
    }
  }
}

uint64_t re::anonymous namespace::calculateDeformerInputHash(re::DeformerFeatureFlags *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = 0xBF58476D1CE4E5B9 * (*(a2 + 40 * a1) ^ (*(a2 + 40 * a1) >> 30));
  v6 = ((a1 << 6) + (a1 >> 2) - 0x61C8864680B583E9 + ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31))) ^ a1;
  v7 = *(a3 + 8 * a1 + 24);
  v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) >> 27));
  v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(a3 + a1)) ^ ((0xBF58476D1CE4E5B9 * *(a3 + a1)) >> 27));
  v10 = ((v6 << 6) + (v6 >> 2) + (((v9 ^ (v9 >> 31)) + ((v8 ^ (v8 >> 31)) << 6) + ((v8 ^ (v8 >> 31)) >> 2) - 0x61C8864680B583E9) ^ v8 ^ (v8 >> 31)) - 0x61C8864680B583E9) ^ v6;
  v11 = *a5 & a4;
  if (v11)
  {
    v13 = __clz(__rbit64(v11));
    do
    {
      v19 = v13;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(a5, v13);
      v14 = a5[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(a5 + 7, &v19);
      v15 = *(v14 + 16);
      a1 = [*(v14 + 24) hash];
      v10 ^= (v10 << 6) - 0x61C8864680B583E9 + (v10 >> 2) + ((v15 - 0x61C8864680B583E9 + (a1 << 6) + (a1 >> 2)) ^ a1);
      if (v13 == 63)
      {
        break;
      }

      v16 = ((-2 << v13) & v11) == 0;
      v13 = __clz(__rbit64((-2 << v13) & v11));
    }

    while (!v16);
  }

  if (re::DeformerFeatureFlags::enableStitchableDeformation(a1))
  {
    return (v10 - 0x61C8864680B583E9 + (v17 << 6) + (v17 >> 2)) ^ v17;
  }

  return v10;
}

uint64_t *re::anonymous namespace::lockInputIOSurfacesForDeformationParameters(uint64_t *result, re::DeformationVertexBufferState::LockedSurfaces *a2)
{
  v2 = *result;
  v3 = *(*result + 48);
  if (v3)
  {
    v5 = result;
    v6 = 0;
    while (1)
    {
      v7 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v2 + 8, v6);
      v8 = *(v7 + 8);
      result = re::BucketArray<re::ActiveDeformation,8ul>::operator[](v5[1], v8);
      v10 = *(v7 + 16);
      v11 = result[42];
      if (v11 <= v10)
      {
        break;
      }

      v12 = v5[6];
      if (v12 <= v8)
      {
        goto LABEL_15;
      }

      v13 = (v5[5] + 312 * v8);
      v14 = *(result[41] + (v10 << 6) + 8) & *v13;
      if (v14)
      {
        v15 = __clz(__rbit64(v14));
        do
        {
          v18 = v15;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v13, v15);
          v16 = v13[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v13 + 7, &v18);
          result = re::DeformationVertexBufferState::LockedSurfaces::ensureIOSurfaceLocked(a2, *(v16 + 24));
          if (result)
          {
            *(v16 + 8) = result;
          }

          if (v15 == 63)
          {
            break;
          }

          v17 = ((-2 << v15) & v14) == 0;
          v15 = __clz(__rbit64((-2 << v15) & v14));
        }

        while (!v17);
      }

      if (++v6 == v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, *(v7 + 16), v11);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v8, v12);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

id ___ZN2re21DeformationManagerGPU26enqueueCPUDeformationOnGPUERNS_24DeformationCommandBufferERN2NS9SharedPtrIN3MTL11SharedEventEEERyPNS_8internal23DeformMetalCallbackDataE_block_invoke(uint64_t a1, id a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = *(v3 + 40);
      if (v6 <= i)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, i, v6);
        _os_crash();
        __break(1u);
LABEL_15:
        v13 = 0u;
        v14 = 0u;
        v11 = 0u;
        v12 = 0u;
        v10 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      if (*(v3 + 8) <= i >> 3)
      {
        goto LABEL_15;
      }

      v7 = v3 + 24;
      if ((*(v3 + 16) & 1) == 0)
      {
        v7 = *(v3 + 32);
      }

      v8 = (*(v7 + 8 * (i >> 3)) + 104 * (i & 7));
      if (v8[2])
      {
        re::BufferInitializationOptions::initializeCPUVertexBuffers(v8 + 2, v8[6], v8[11], v8[12]);
      }

      if (*(v3 + 64) == 1)
      {
        LODWORD(v12) = 0;
        v10 = 0u;
        v11 = 0u;
        *(&v12 + 4) = 0x7FFFFFFFLL;
        (*(**v8 + 64))(*v8, v8[1], v8 + 6);
        re::DeformationVertexBufferState::LockedSurfaces::unlockAll(&v10);
        re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v10);
      }

      else
      {
        (*(**v8 + 64))(*v8, v8[1], v8 + 6);
      }
    }
  }

  return [a2 setSignaledValue_];
}

uint64_t re::DeformationManager::deformerType@<X0>(re::DeformationManager *this@<X0>, const re::StringID *a2@<X1>, char *a3@<X8>)
{
  v5 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  result = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 768, a2, (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31), v8);
  if (v9 == 0x7FFFFFFF)
  {
    v7 = 0;
  }

  else
  {
    a3[1] = *(*(this + 98) + 32 * v9 + 24);
    v7 = 1;
  }

  *a3 = v7;
  return result;
}

uint64_t re::DeformationManager::deformer(uint64_t a1, unsigned int a2)
{
  return *(a1 + 40 * a2 + 48);
}

{
  return *(a1 + 40 * a2 + 48);
}

unsigned __int8 *re::internal::Callable<re::DeformationManager::removeDeformationStack(re::DataArrayHandle<re::DeformationStack>)::$_0,void ()(void *)>::operator()(uint64_t a1, unint64_t **a2)
{
  v2 = *a2;
  v4 = **a2;
  v3 = (*a2)[1];
  result = re::DataArray<re::DeformationStack>::tryGet(v3, v4);
  if (result)
  {
    v6 = result;
    if (*result)
    {
      v7 = 0;
      v8 = 48;
      do
      {
        v9 = *(v2[2] + 40 * *&v6[4 * v7 + 4]);
        (*(*v9 + 32))(v9, *&v6[v8]);
        ++v7;
        v8 += 64;
      }

      while (v7 < *v6);
      v4 = *v2;
      v3 = v2[1];
    }

    return re::DataArray<re::DeformationStack>::destroy(v3, v4);
  }

  return result;
}

void *re::internal::Callable<re::DeformationManager::removeDeformationStack(re::DataArrayHandle<re::DeformationStack>)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D09710;
  return result;
}

void *re::internal::Callable<re::DeformationManager::removeDeformationStack(re::DataArrayHandle<re::DeformationStack>)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D09710;
  return result;
}

uint64_t re::DataArray<re::DeformationStack>::tryGet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (WORD1(a2) < v2 && ((v2 - 1) != WORD1(a2) ? (v3 = *(a1 + 44)) : (v3 = *(a1 + 48)), a2 < v3 && ((v4 = (*(a1 + 32) + 16 * WORD1(a2)), (v5 = *(v4[1] + 4 * a2)) != 0) ? (v6 = v5 == (HIDWORD(a2) & 0xFFFFFF)) : (v6 = 0), v6)))
  {
    return *v4 + 1032 * a2;
  }

  else
  {
    return 0;
  }
}

uint64_t re::DataArray<re::DeformationStack>::destroy(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = a2 >> 16;
  result = re::DataArray<re::DeformationStack>::tryGet(a1, a2 & 0xFFFFFFFF00000000 | (WORD1(a2) << 16) | a2);
  if (result)
  {
    v6 = result;
    for (i = 252; i != 192; i -= 6)
    {
      re::FixedArray<CoreIKTransform>::deinit(&v6[i]);
    }

    for (j = 166; j != 6; j -= 16)
    {
      result = re::FixedArray<CoreIKTransform>::deinit(&v6[j]);
    }

    if (*(a1 + 16) <= HIWORD(v2))
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *(*(*(a1 + 32) + 16 * HIWORD(v2) + 8) + 4 * v2) = 0;
    *v6 = *(a1 + 52);
    *(a1 + 52) = v2;
    *(a1 + 54) = v4;
    --*(a1 + 40);
  }

  return result;
}

void *re::internal::Callable<re::DeformationManager::addDeformation(re::MeshDeformation &,re::ActiveDeformationData *)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D09768;
  return result;
}

void *re::internal::Callable<re::DeformationManager::addDeformation(re::MeshDeformation &,re::ActiveDeformationData *)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D09768;
  return result;
}

void *re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::copy(void *a1, uint64_t a2)
{
  result = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::clear(a1);
  v15[0] = a2;
  v5 = *(a2 + 16);
  if (v5 >= 0x10)
  {
    v6 = 0;
    v7 = *a2;
    v8 = v5 >> 4;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v7), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v15[1] = v9 ^ 0xFFFFLL;
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v6 -= 16;
      ++v7;
      if (!--v8)
      {
        return result;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v11 = v10 - v6;
    v16 = v10 - v6;
    if (v10 + 1 != v6)
    {
      do
      {
        v12 = (*(v15[0] + 8) + 32 * v11);
        v13 = v12[1];
        v14[0] = *v12;
        v14[1] = v13;
        re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::internalAdd(a1, v14, (v14 + 8));
        result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v15);
        v11 = v16;
      }

      while (v16 != -1);
    }
  }

  return result;
}

unsigned __int8 *re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::internalAdd(uint64_t a1, _BYTE *a2, __int128 *a3)
{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || (v7 = *(a1 + 16), v7 > 8 * v6))
  {
    re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::resize(a1, 1);
    v7 = *(a1 + 16);
  }

  v8 = 0xBF58476D1CE4E5B9;
  v9 = 0x94D049BB133111EBLL;
  v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *a2) ^ ((0xBF58476D1CE4E5B9 * *a2) >> 27));
  v11 = v10 ^ (v10 >> 31);
  v12 = v7 >> 4;
  v13 = *a1;
  v14 = v11 % v12;
  while (1)
  {
    v15 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v13 + 16 * v14)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    if (v15 < 0x40)
    {
      break;
    }

    if (v14 + 1 == v12)
    {
      v14 = 0;
    }

    else
    {
      ++v14;
    }

    if (v14 == v11 % v12)
    {
      re::internal::assertLog(4, a2, -1.79399301e-307, 4.74803907e-38, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
      _os_crash();
      __break(1u);
      break;
    }
  }

  v16 = v13 + 16 * v14;
  v17 = *(v16 + v15);
  *(v16 + v15) = v11 & 0x7F;
  v18 = v15 + 16 * v14;
  v19 = *(a1 + 8) + 32 * v18;
  *v19 = *a2;
  v20 = *a3;
  *(v19 + 24) = *(a3 + 2);
  *(v19 + 8) = v20;
  if (v17 == 255)
  {
    v21 = -1;
  }

  else
  {
    v21 = 0;
  }

  v22.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v22.i64[1] = v21;
  *(a1 + 24) = vaddq_s64(*(a1 + 24), v22);
  v23 = (*(a1 + 8) + 32 * v18);
  v25 = *v23;
  result = v23 + 8;
  v26 = ((v25 * v8) ^ ((v25 * v8) >> 27)) * v9;
  *(a1 + 40) ^= (v26 >> 31) ^ v26;
  return result;
}

double re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::resize(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + a2;
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

  return re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::doResize(a1, v3);
}

double re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::doResize(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  memset(v21, 0, sizeof(v21));
  re::HashBrown<re::ecs2::Scene *,std::vector<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,void,false>::init(v21, v4, a2);
  v19[0] = a1;
  v5 = *(a1 + 16);
  if (v5 >= 0x10)
  {
    v6 = 0;
    v7 = *a1;
    v8 = v5 >> 4;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v7), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v19[1] = v9 ^ 0xFFFFLL;
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v6 -= 16;
      ++v7;
      if (!--v8)
      {
        goto LABEL_9;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v11 = v10 - v6;
    v20 = v10 - v6;
    if (v10 + 1 != v6)
    {
      do
      {
        re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::internalAdd(v21, (*(v19[0] + 8) + 32 * v11), (*(v19[0] + 8) + 32 * v11 + 8));
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v19);
        v11 = v20;
      }

      while (v20 != -1);
      v5 = *(a1 + 16);
    }
  }

LABEL_9:
  v12 = *(&v21[3] + 1);
  *(&v21[3] + 1) = *(a1 + 56);
  v13 = v21[0];
  v14 = v21[1];
  v21[0] = *a1;
  *&v21[1] = v5;
  v15 = v21[2];
  v16 = *(a1 + 40);
  *(a1 + 48) = *&v21[3];
  *(a1 + 56) = v12;
  *(&v21[2] + 8) = v16;
  v17 = *(a1 + 24);
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  *(&v21[1] + 8) = v17;
  return re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v21);
}

unsigned __int8 *re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::internalAdd(uint64_t *a1, _BYTE *a2, __int128 *a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::resize(a1, 1);
    v7 = a1[2];
  }

  v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *a2) ^ ((0xBF58476D1CE4E5B9 * *a2) >> 27));
  v9 = v8 ^ (v8 >> 31);
  v10 = v7 >> 4;
  v11 = v9 % (v7 >> 4);
  v12 = *a1;
  v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v13 >= 0x40)
  {
    do
    {
      if (v11 + 1 == v10)
      {
        v11 = 0;
      }

      else
      {
        ++v11;
      }

      v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v12 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v13 > 0x3F);
  }

  v14 = v12 + 16 * v11;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = v13 + 16 * v11;
  v17 = a1[1] + 32 * v16;
  *v17 = *a2;
  v18 = *a3;
  *(v17 + 24) = *(a3 + 2);
  *(v17 + 8) = v18;
  if (v15 == 255)
  {
    v19 = -1;
  }

  else
  {
    v19 = 0;
  }

  v20.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v20.i64[1] = v19;
  *(a1 + 3) = vaddq_s64(*(a1 + 3), v20);
  v21 = (a1[1] + 32 * v16);
  v23 = *v21;
  result = v21 + 8;
  v24 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v23) ^ ((0xBF58476D1CE4E5B9 * v23) >> 27));
  a1[5] ^= (v24 >> 31) ^ v24;
  return result;
}

void *re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::copy(void *a1, uint64_t a2)
{
  result = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::clear(a1);
  v16[0] = a2;
  v5 = *(a2 + 16);
  if (v5 >= 0x10)
  {
    v6 = 0;
    v7 = *a2;
    v8 = v5 >> 4;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v7), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v16[1] = v9 ^ 0xFFFFLL;
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v6 -= 16;
      ++v7;
      if (!--v8)
      {
        return result;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v11 = v10 - v6;
    v17 = v10 - v6;
    if (v10 + 1 != v6)
    {
      do
      {
        v12 = *(v16[0] + 8) + 20 * v11;
        v13 = *(v12 + 16);
        v14 = *v12;
        v15 = v13;
        re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::internalAdd(a1, &v14, (&v14 + 4));
        result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v16);
        v11 = v17;
      }

      while (v17 != -1);
    }
  }

  return result;
}

unsigned __int8 *re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::internalAdd(uint64_t a1, _BYTE *a2, _OWORD *a3)
{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || (v7 = *(a1 + 16), v7 > 8 * v6))
  {
    re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::resize(a1, 1);
    v7 = *(a1 + 16);
  }

  v8 = 0xBF58476D1CE4E5B9;
  v9 = 0x94D049BB133111EBLL;
  v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *a2) ^ ((0xBF58476D1CE4E5B9 * *a2) >> 27));
  v11 = v10 ^ (v10 >> 31);
  v12 = v7 >> 4;
  v13 = *a1;
  v14 = v11 % v12;
  while (1)
  {
    v15 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v13 + 16 * v14)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    if (v15 < 0x40)
    {
      break;
    }

    if (v14 + 1 == v12)
    {
      v14 = 0;
    }

    else
    {
      ++v14;
    }

    if (v14 == v11 % v12)
    {
      re::internal::assertLog(4, a2, -1.79399301e-307, 4.74803907e-38, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
      _os_crash();
      __break(1u);
      break;
    }
  }

  v16 = v13 + 16 * v14;
  v17 = *(v16 + v15);
  *(v16 + v15) = v11 & 0x7F;
  v18 = *(a1 + 8) + 20 * (v15 + 16 * v14);
  *v18 = *a2;
  *(v18 + 4) = *a3;
  if (v17 == 255)
  {
    v19 = -1;
  }

  else
  {
    v19 = 0;
  }

  v20.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v20.i64[1] = v19;
  *(a1 + 24) = vaddq_s64(*(a1 + 24), v20);
  v21 = (*(a1 + 8) + 20 * (v15 + 16 * v14));
  v23 = *v21;
  result = v21 + 4;
  v24 = ((v23 * v8) ^ ((v23 * v8) >> 27)) * v9;
  *(a1 + 40) ^= (v24 >> 31) ^ v24;
  return result;
}

{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || (v7 = *(a1 + 16), v7 > 8 * v6))
  {
    re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::resize(a1, 1);
    v7 = *(a1 + 16);
  }

  v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *a2) ^ ((0xBF58476D1CE4E5B9 * *a2) >> 27));
  v9 = v8 ^ (v8 >> 31);
  v10 = v7 >> 4;
  v11 = v9 % (v7 >> 4);
  v12 = *a1;
  v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v13 >= 0x40)
  {
    do
    {
      if (v11 + 1 == v10)
      {
        v11 = 0;
      }

      else
      {
        ++v11;
      }

      v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v12 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v13 > 0x3F);
  }

  v14 = v12 + 16 * v11;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = 5 * (v13 + 16 * v11);
  v17 = *(a1 + 8) + 20 * (v13 + 16 * v11);
  *v17 = *a2;
  *(v17 + 4) = *a3;
  if (v15 == 255)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v19.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v19.i64[1] = v18;
  *(a1 + 24) = vaddq_s64(*(a1 + 24), v19);
  v20 = (*(a1 + 8) + 4 * v16);
  v22 = *v20;
  result = v20 + 4;
  v23 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v22) ^ ((0xBF58476D1CE4E5B9 * v22) >> 27));
  *(a1 + 40) ^= (v23 >> 31) ^ v23;
  return result;
}

double re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::resize(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + a2;
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

  return re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::doResize(a1, v3);
}

void *re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::init(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  result[7] = a2;
  v4 = 151 * a3;
  v5 = ((151 * a3) >> 7) + 15;
  v6 = v5 & 0x3FFFFFFFFFFFFF0;
  result[2] = v5 & 0x3FFFFFFFFFFFFF0;
  if ((v5 & 0x3FFFFFFFFFFFFF0) != 0)
  {
    v7 = v5 >> 4;
    result = (*(*a2 + 32))(a2, 21 * v6, 16);
    *v3 = result;
    if (v4 >= 0x80)
    {
      v8 = 0;
      *&v9 = -1;
      *(&v9 + 1) = -1;
      do
      {
        *(*v3 + 16 * v8++) = v9;
      }

      while (v7 != v8);
      result = *v3;
    }

    v3[1] = &result[2 * v7];
    v6 = v3[2];
  }

  else
  {
    *result = 0;
    result[1] = 0;
  }

  v3[5] = 0;
  v3[6] = 0;
  v3[3] = 0;
  v3[4] = v6;
  return result;
}

double re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::doResize(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  memset(v23, 0, sizeof(v23));
  re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::init(v23, v4, a2);
  v21[0] = a1;
  v6 = *(a1 + 16);
  if (v6 >= 0x10)
  {
    v7 = 0;
    v8 = *a1;
    v9 = v6 >> 4;
    v10 = xmmword_1E304FAD0;
    v5.n128_u64[0] = 0x3830282018100800;
    while (1)
    {
      v11 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v8), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v21[1] = v11 ^ 0xFFFFLL;
      if (v11 != 0xFFFFLL)
      {
        break;
      }

      v7 -= 16;
      ++v8;
      if (!--v9)
      {
        goto LABEL_9;
      }
    }

    v12 = __clz(__rbit64(v11 ^ 0xFFFFLL));
    v13 = v12 - v7;
    v22 = v12 - v7;
    if (v12 + 1 != v7)
    {
      do
      {
        re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::internalAdd(v23, *(v21[0] + 8) + 20 * v13, *(v21[0] + 8) + 20 * v13 + 4, v10, v5);
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v21);
        v13 = v22;
      }

      while (v22 != -1);
      v6 = *(a1 + 16);
    }
  }

LABEL_9:
  v14 = *(&v23[3] + 1);
  *(&v23[3] + 1) = *(a1 + 56);
  v15 = v23[0];
  v16 = v23[1];
  v23[0] = *a1;
  *&v23[1] = v6;
  v17 = v23[2];
  v18 = *(a1 + 40);
  *(a1 + 48) = *&v23[3];
  *(a1 + 56) = v14;
  *(&v23[2] + 8) = v18;
  v19 = *(a1 + 24);
  *a1 = v15;
  *(a1 + 16) = v16;
  *(a1 + 32) = v17;
  *(&v23[1] + 8) = v19;
  return re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v23);
}

void re::DeformationVertexBufferState::~DeformationVertexBufferState(re::DeformationVertexBufferState *this)
{
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 248);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 184);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 120);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 56);
}

uint64_t re::internal::Callable<re::DeformationManagerGPU::processDeformationPasses(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::mtl::CommandBuffer const&,NS::SharedPtr<MTL::Fence>,re::ActiveDeformationData *,re::MutableSlice<re::DeformationVertexBufferState>)::$_0,void ()(void *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  for (i = 928; i != 64; i -= 48)
  {
    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit((v2 + i));
  }

  v4 = *(v2 + 96);
  if (v4)
  {
    for (j = 0; j != v4; ++j)
    {
      re::BucketArray<unsigned char,8ul>::operator[](v2 + 56, j);
    }
  }

  while (*(v2 + 64))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket((v2 + 56));
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v2 + 56);
  *(v2 + 96) = 0;
  ++*(v2 + 104);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v2 + 56);
  v6 = *(v2 + 40);
  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v8 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v2, v7);
      v9 = *(v8 + 40);
      if (v9)
      {
        break;
      }

LABEL_23:
      while (*(v8 + 8))
      {
        re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v8);
      }

      re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v8);
      *(v8 + 40) = 0;
      ++*(v8 + 48);
      re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v8);
      if (++v7 == v6)
      {
        goto LABEL_27;
      }
    }

    v10 = 0;
    while (1)
    {
      v11 = re::BucketArray<re::BatchedDeformationInstances,64ul>::operator[](v8, v10);
      v12 = *(v11 + 48);
      v13 = *(v11 + 16);
      if (v12)
      {
        break;
      }

      if (v13)
      {
        goto LABEL_19;
      }

LABEL_20:
      re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v11 + 8);
      *(v11 + 48) = 0;
      ++*(v11 + 56);
      re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v11 + 8);
      if (++v10 == v9)
      {
        goto LABEL_23;
      }
    }

    for (k = 0; k != v12; ++k)
    {
      if (v13 <= k >> 6)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }
    }

    do
    {
LABEL_19:
      re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket((v11 + 8));
    }

    while (*(v11 + 16));
    goto LABEL_20;
  }

LABEL_27:
  while (*(v2 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v2);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v2);
  *(v2 + 40) = 0;
  ++*(v2 + 48);

  return re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v2);
}

void *re::internal::Callable<re::DeformationManagerGPU::processDeformationPasses(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::mtl::CommandBuffer const&,NS::SharedPtr<MTL::Fence>,re::ActiveDeformationData *,re::MutableSlice<re::DeformationVertexBufferState>)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D097C0;
  return result;
}

void *re::internal::Callable<re::DeformationManagerGPU::processDeformationPasses(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::mtl::CommandBuffer const&,NS::SharedPtr<MTL::Fence>,re::ActiveDeformationData *,re::MutableSlice<re::DeformationVertexBufferState>)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D097C0;
  return result;
}

void *re::FixedArray<re::Pair<re::DeformerType,unsigned long long,true>>::copy(void *result, uint64_t a2)
{
  v4 = result[1];
  if (v4 == *(a2 + 8))
  {
    if (v4)
    {
      v5 = *(a2 + 16);
      v6 = result[2];

      return memmove(v6, v5, 16 * v4);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void *re::internal::Callable<re::DeformationManagerGPU::processDeformationPasses(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::mtl::CommandBuffer const&,NS::SharedPtr<MTL::Fence>,re::ActiveDeformationData *,re::MutableSlice<re::DeformationVertexBufferState>)::$_1,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D09818;
  return result;
}

void *re::internal::Callable<re::DeformationManagerGPU::processDeformationPasses(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::mtl::CommandBuffer const&,NS::SharedPtr<MTL::Fence>,re::ActiveDeformationData *,re::MutableSlice<re::DeformationVertexBufferState>)::$_1,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D09818;
  return result;
}

_anonymous_namespace_ *re::DataArray<re::DeformationStack>::allocBlock(void *a1)
{
  v3 = 1032 * *(a1 + 11);
  v4 = (*(**a1 + 32))(*a1, v3, 0);
  if (!v4)
  {
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.elements", "allocBlock", 520, v3, *(*a1 + 8));
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  v6 = v4;
  v1 = 4 * *(a1 + 11);
  result = (*(**a1 + 32))(*a1, v1, 0);
  if (!result)
  {
LABEL_16:
    re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.allocationCounters", "allocBlock", 528, v1, *(*a1 + 8));
    result = _os_crash();
    __break(1u);
    return result;
  }

  v9 = result;
  v11 = a1[1];
  v10 = a1[2];
  if (v10 >= v11)
  {
    v12 = v10 + 1;
    if (v11 < v10 + 1)
    {
      if (*a1)
      {
        v13 = 2 * v11;
        if (!v11)
        {
          v13 = 8;
        }

        if (v13 <= v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = v13;
        }

        result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v14);
      }

      else
      {
        result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v12);
        ++*(a1 + 6);
      }
    }

    v10 = a1[2];
  }

  v15 = (a1[4] + 16 * v10);
  *v15 = v6;
  v15[1] = v9;
  a1[2] = v10 + 1;
  ++*(a1 + 6);
  *(a1 + 12) = 0;
  return result;
}

void *re::DynamicArray<re::DeformationDescription>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::DeformationDescription>::setCapacity(v5, a2);
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
          result = (*(*result + 32))(result, a2 << 6, 8);
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
        v10 = &v8[8 * v9];
        v11 = v7;
        do
        {
          v12 = *(v8 + 1);
          v13 = v8[4];
          *v11 = *v8;
          *(v11 + 1) = v12;
          v11[4] = v13;
          v11[5] = 0;
          v11[6] = 0;
          v11[7] = 0;
          v15 = v8[5];
          v14 = v8 + 5;
          v11[5] = v15;
          *v14 = 0;
          v16 = v11[7];
          v17 = v14[2];
          v11[6] = v14[1];
          v11[7] = v17;
          v14[1] = 0;
          v14[2] = v16;
          re::FixedArray<CoreIKTransform>::deinit(v14);
          v11 += 8;
          v8 = v14 + 3;
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

void re::FixedArray<re::DeformationVertexBufferState>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >= 0xD20D20D20D20D3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 312, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = 312 * a3;
  v6 = (*(*a2 + 32))(a2, 312 * a3, 8);
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
    bzero(v6, v5 - 312);
    v8 += v5 - 312;
  }

  *(v8 + 38) = 0;
  *(v8 + 17) = 0u;
  *(v8 + 18) = 0u;
  *(v8 + 15) = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 13) = 0u;
  *(v8 + 14) = 0u;
  *(v8 + 11) = 0u;
  *(v8 + 12) = 0u;
  *(v8 + 9) = 0u;
  *(v8 + 10) = 0u;
  *(v8 + 7) = 0u;
  *(v8 + 8) = 0u;
  *(v8 + 5) = 0u;
  *(v8 + 6) = 0u;
  *(v8 + 3) = 0u;
  *(v8 + 4) = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 2) = 0u;
  *v8 = 0u;
}

void *re::FixedArray<re::DeformationVertexBufferState>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 312 * v2;
      do
      {
        re::DeformationVertexBufferState::~DeformationVertexBufferState(v4);
        v4 = (v6 + 312);
        v5 -= 312;
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

uint64_t re::BucketArray<re::DynamicArray<re::PostDeformationBlit>,8ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 8 * v3)
  {
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
  return v5 + 40 * (v2 & 7);
}

void re::DynamicInlineArray<re::KeyValuePair<MTL::Event *,re::EventWait>,8ul>::clear(uint64_t a1)
{
  if (*a1)
  {
    v2 = 24 * *a1;
    v3 = (a1 + 24);
    do
    {
      if (*v3)
      {

        *v3 = 0;
      }

      v3 += 3;
      v2 -= 24;
    }

    while (v2);
  }

  *a1 = 0;
  ++*(a1 + 8);
}

uint64_t re::HashTable<MTL::Event *,re::EventWait,re::Hash<MTL::Event *>,re::EqualTo<MTL::Event *>,false,false>::add(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(&v10, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 16;
  }

  v7 = re::HashTable<MTL::Event *,re::EventWait,re::Hash<MTL::Event *>,re::EqualTo<MTL::Event *>,false,false>::allocEntry(a1, v11, v10);
  *(v7 + 8) = *a2;
  *(v7 + 16) = *a3;
  v8 = v7 + 16;
  *(v8 + 8) = *(a3 + 8);
  ++*(a1 + 40);
  return v8;
}

uint64_t re::HashTable<MTL::Event *,re::EventWait,re::Hash<MTL::Event *>,re::EqualTo<MTL::Event *>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
            v17 = (v13 + 16);
            do
            {
              if ((*(v17 - 2) & 0x80000000) != 0)
              {
                v18 = 0xBF58476D1CE4E5B9 * (*(v17 - 1) ^ (*(v17 - 1) >> 30));
                v19 = re::HashTable<MTL::Event *,re::EventWait,re::Hash<MTL::Event *>,re::EqualTo<MTL::Event *>,false,false>::allocEntry(a1, ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) ^ ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) >> 31)) % *(a1 + 24));
                v19[1] = *(v17 - 1);
                v20 = v17[1];
                v19[2] = *v17;
                *v17 = 0;
                v19[3] = v20;
              }

              v17 += 4;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v27);
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
    v22 = *(v21 + 32 * v4);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 32 * v4);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = 32 * v4;
  *(v21 + v24) = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *(v21 + v24) = *(v25 + 4 * a2) | 0x80000000;
  *(v25 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v21 + 32 * v4;
}

void *re::BucketArray<re::internal::DeformationCallbackData,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::internal::DeformationCallbackData,8ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::internal::DeformationCallbackData,8ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 8 * a2)
    {
      v4 = result[1];
      if (v4 > a2)
      {
        v5 = *(result + 4);
        do
        {
          v6 = v3 + 3;
          if ((v5 & 1) == 0)
          {
            v6 = v3[4];
          }

          result = (*(**v3 + 40))(*v3, v6[v4 - 1]);
          v7 = *(v3 + 4);
          v4 = v3[1] - 1;
          v3[1] = v4;
          v5 = v7 + 2;
          *(v3 + 4) = v5;
        }

        while (v4 > a2);
      }

      if (v4 < a2)
      {
        v8 = v3 + 3;
        do
        {
          result = (*(**v3 + 32))(*v3, 832, 0);
          v9 = result;
          if (*v3)
          {
            v10 = v3[1];
            v11 = *(v3 + 4);
            if ((v11 & 1) == 0)
            {
              v12 = *v8;
              v14 = v10 >= *v8;
              v13 = v10 + 1;
              v14 = !v14 || v12 >= v13;
              if (v14)
              {
                goto LABEL_24;
              }

              v15 = 2 * v12;
              goto LABEL_20;
            }

            v13 = v10 + 1;
            if (v13 >= 3)
            {
              v15 = 4;
LABEL_20:
              if (v15 <= v13)
              {
                v17 = v13;
              }

              else
              {
                v17 = v15;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v17);
              v11 = *(v3 + 4);
            }
          }

          else
          {
            v16 = v3[1];
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v16 + 1);
            v11 = *(v3 + 4) + 2;
            *(v3 + 4) = v11;
          }

LABEL_24:
          v18 = v3 + 3;
          if ((v11 & 1) == 0)
          {
            v18 = v3[4];
          }

          v19 = v3[1];
          v18[v19++] = v9;
          v3[1] = v19;
          *(v3 + 4) += 2;
        }

        while (v19 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

BOOL re::PSOToolManager::init(id *this, re::mtl *a2)
{
  re::mtl::makeDefaultDevice(&v28);
  v4 = this + 25;
  if (this + 25 != &v28)
  {
    v5 = v28;
    *&v28 = 0;
    v6 = *v4;
    *v4 = v5;
  }

  [this[25] allowLibrariesFromOtherPlatforms];
  re::mtl::Device::newLibraryWithURL(this + 25, a2, &v28);
  v7 = this + 26;
  if (this + 26 != &v28)
  {
    v8 = v28;
    *&v28 = 0;
    v9 = *v7;
    *v7 = v8;
  }

  if (*(this + 1160) == 1)
  {
    re::DynamicString::rfind(&v28, 47, v38);
    if (v38[0] == 1)
    {
      re::DynamicString::rfind(&v28, 47, v33);
      if (BYTE8(v28))
      {
        v11 = *(&v28 + 1) >> 1;
      }

      else
      {
        v11 = BYTE8(v28) >> 1;
      }

      re::DynamicString::substr(&v28, v34 + 1, v11, &v35);
      re::DynamicString::operator=((this + 141), &v35);
      if (v35 && (v36 & 1) != 0)
      {
        (*(*v35 + 40))();
      }

      v12 = re::Hash<re::DynamicString>::operator()(&v35, (this + 141));
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>((this + 86), (this + 141), v12, &v35);
      if (v37 == 0x7FFFFFFF)
      {
        v13 = this[142];
        v14 = (v13 & 1) != 0 ? v13 >> 1 : v13 >> 1;
        re::DynamicString::substr((this + 141), 0, v14 - 9, &v35);
        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace((this + 86), (this + 141), &v35);
        if (v35)
        {
          if (v36)
          {
            (*(*v35 + 40))();
          }
        }
      }
    }

    if (v28 && (BYTE8(v28) & 1) != 0)
    {
      (*(*v28 + 40))();
    }
  }

  v15 = *v7;
  if (v15)
  {
    re::MaterialManager::getDefaultVariations(1, 1, 1, 1u, &v28);
    if (&v28 != this)
    {
      v16 = v29;
      v17 = *this;
      v18 = *(this + 1);
      *this = v28;
      *(this + 1) = v16;
      v20 = this[6];
      v19 = this[7];
      v21 = v32;
      this[6] = v31;
      this[7] = v21;
      v31 = v20;
      v32 = v19;
      v28 = v17;
      v29 = v18;
      v22 = *(this + 2);
      *(this + 2) = v30;
      v30 = v22;
    }

    re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::deinit(&v28);
    re::createMaterialSystemShaderMetadata(1, 1, 1, &v28);
    re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=((this + 27), &v28);
    re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v28);
  }

  else
  {
    v23 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "error: could not create metallib from path ", 43);
    v24 = strlen(a2);
    v25 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v23, a2, v24);
    std::ios_base::getloc((v25 + *(*v25 - 24)));
    v26 = std::locale::use_facet(&v28, MEMORY[0x1E69E5318]);
    (v26->__vftable[2].~facet_0)(v26, 10);
    std::locale::~locale(&v28);
    std::ostream::put();
    std::ostream::flush();
  }

  return v15 != 0;
}

void *std::operator<<[abi:nn200100]<std::char_traits<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);

  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, __s, v4);
}

void *std::endl[abi:nn200100]<char,std::char_traits<char>>(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x1E69E5318]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

uint64_t re::PSOToolManager::addSearchPath(re::PSOToolManager *this, const char *a2)
{
  v4 = re::DynamicArray<re::DynamicString>::add((this + 160), &v6);
  result = v6;
  if (v6)
  {
    if (v7)
    {
      return (*(*v6 + 40))(v4);
    }
  }

  return result;
}

uint64_t re::PSOToolManager::readMaterialDefinitions(uint64_t this)
{
  v105 = &unk_1F5CB9778;
  v1 = *(this + 176);
  if (!v1)
  {
    return this;
  }

  v2 = this;
  v3 = *(this + 192);
  v55 = v3 + 32 * v1;
  do
  {
    v56 = v3;
    re::DynamicString::DynamicString(&v102, v3);
    if (v103)
    {
      v4 = *&v104[7];
    }

    else
    {
      v4 = v104;
    }

    __p[1] = 0;
    *&v67 = 0;
    __p[0] = 0;
    v5 = (v4 - 1);
    do
    {
      v6 = v5->__r_.__value_.__s.__data_[1];
      v5 = (v5 + 1);
    }

    while (v6);
    std::string::append[abi:nn200100]<char const*,0>(__p, v4, v5);
    MEMORY[0x1E6906330](&v100, __p, 0, 0);
    if (SBYTE7(v67) < 0)
    {
      operator delete(__p[0]);
    }

    ptr = v100;
    v8 = v101;
    if (v101)
    {
      atomic_fetch_add_explicit(&v101->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = v101;
      v99.__imp_.__ptr_ = ptr;
      v99.__imp_.__cntrl_ = v8;
      if (v101)
      {
        atomic_fetch_add_explicit(&v101->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v9);
        goto LABEL_117;
      }
    }

    else
    {
      v99.__imp_.__ptr_ = v100;
      v99.__imp_.__cntrl_ = 0;
    }

    while (ptr)
    {
      v10 = std::__fs::filesystem::directory_iterator::__dereference(&v99);
      std::__fs::filesystem::path::filename[abi:nn200100](&v10->__p_, v62);
      if (v62[23] >= 0)
      {
        v12 = v62;
      }

      else
      {
        v12 = *v62;
      }

      v13 = *(v2 + 664);
      v14 = *(v2 + 680);
      if (v13)
      {
        v15 = 32 * v13;
        v16 = *(v2 + 680);
        while (!re::DynamicString::operator==(v16, __p))
        {
          v16 += 32;
          v15 -= 32;
          if (!v15)
          {
            v17 = 0;
            goto LABEL_25;
          }
        }
      }

      else
      {
        v16 = *(v2 + 680);
      }

      v17 = v16 != v14 + 32 * v13;
LABEL_25:
      if (__p[0])
      {
        if (__p[1])
        {
          (*(*__p[0] + 40))();
        }

        *__p = 0u;
        v67 = 0u;
      }

      if ((v62[23] & 0x80000000) != 0)
      {
        operator delete(*v62);
        if (v17)
        {
LABEL_31:
          v18 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "Excluding ", 10);
          if ((v10->__p_.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v10 = v10->__p_.__pn_.__r_.__value_.__r.__words[0];
          }

          v19 = strlen(v10);
          v20 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v18, v10, v19);
          std::ios_base::getloc((v20 + *(*v20 - 24)));
          v21 = std::locale::use_facet(__p, MEMORY[0x1E69E5318]);
          (v21->__vftable[2].~facet_0)(v21, 10);
          std::locale::~locale(__p);
          std::ostream::put();
          std::ostream::flush();
          goto LABEL_116;
        }
      }

      else if (v17)
      {
        goto LABEL_31;
      }

      std::__fs::filesystem::path::extension[abi:nn200100](__p, &v10->__p_);
      memset(v62, 0, 24);
      std::string::append[abi:nn200100]<char const*,0>(v62, ".rematerialdefinition", "");
      if (v62[23] >= 0)
      {
        v22.__data_ = v62;
      }

      else
      {
        v22.__data_ = *v62;
      }

      if (v62[23] >= 0)
      {
        v22.__size_ = v62[23];
      }

      else
      {
        v22.__size_ = *&v62[8];
      }

      v23 = std::__fs::filesystem::path::__compare(__p, v22);
      if ((v62[23] & 0x80000000) != 0)
      {
        operator delete(*v62);
      }

      if (SBYTE7(v67) < 0)
      {
        operator delete(__p[0]);
      }

      if (!v23)
      {
        re::MaterialDefinitionFile::MaterialDefinitionFile(__p);
        if ((v10->__p_.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = v10;
        }

        else
        {
          v27 = v10->__p_.__pn_.__r_.__value_.__r.__words[0];
        }

        re::compileMaterialDefinitionFile(__p, v27, &v105, v63);
        if ((v63[0] & 1) == 0 && v64)
        {
          if (BYTE8(v64))
          {
            (*(*v64 + 40))();
          }

          v65 = 0u;
          v64 = 0u;
        }

        std::__fs::filesystem::path::filename[abi:nn200100](&v10->__p_, v60);
        if (v61 >= 0)
        {
          v29 = v60;
        }

        else
        {
          v29 = v60[0];
        }

        v106.__locale_ = 0;
        v107 = 0;
        v108 = 0;
        v30 = re::Hash<re::DynamicString>::operator()(v109, v62);
        re::HashTable<re::DynamicString,re::MaterialDefinitionFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v2 + 264, v62, v30, &v106);
        if (HIDWORD(v107) == 0x7FFFFFFF)
        {
          v31 = re::HashTable<re::DynamicString,re::MaterialDefinitionFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v2 + 264, v107, v106.__locale_);
          *(v31 + 8) = *v62;
          *(v31 + 32) = *&v62[24];
          *(v31 + 16) = *&v62[8];
          memset(v62, 0, sizeof(v62));
          re::MaterialDefinitionFile::MaterialDefinitionFile((v31 + 40), __p);
          ++*(v2 + 304);
        }

        if (*v62)
        {
          if (v62[8])
          {
            (*(**v62 + 40))();
          }

          memset(v62, 0, sizeof(v62));
        }

        if (v61 < 0)
        {
          operator delete(v60[0]);
        }

        v32 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "Reading ", 8);
        std::__fs::filesystem::path::filename[abi:nn200100](&v10->__p_, v62);
        if (v62[23] >= 0)
        {
          v33 = v62;
        }

        else
        {
          v33 = *v62;
        }

        v34 = strlen(v33);
        v35 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v32, v33, v34);
        v36 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v35, " from ", 6);
        if ((v10->__p_.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v37 = v10;
        }

        else
        {
          v37 = v10->__p_.__pn_.__r_.__value_.__r.__words[0];
        }

        v38 = strlen(v37);
        v39 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v36, v37, v38);
        std::ios_base::getloc((v39 + *(*v39 - 24)));
        v40 = std::locale::use_facet(&v106, MEMORY[0x1E69E5318]);
        (v40->__vftable[2].~facet_0)(v40, 10);
        std::locale::~locale(&v106);
        std::ostream::put();
        std::ostream::flush();
        if ((v62[23] & 0x80000000) != 0)
        {
          operator delete(*v62);
        }

        re::MaterialDefinitionFile::~MaterialDefinitionFile(__p);
        goto LABEL_116;
      }

      std::__fs::filesystem::path::extension[abi:nn200100](__p, &v10->__p_);
      memset(v62, 0, 24);
      std::string::append[abi:nn200100]<char const*,0>(v62, ".rematerial", "");
      if (v62[23] >= 0)
      {
        v24.__data_ = v62;
      }

      else
      {
        v24.__data_ = *v62;
      }

      if (v62[23] >= 0)
      {
        v24.__size_ = v62[23];
      }

      else
      {
        v24.__size_ = *&v62[8];
      }

      v25 = std::__fs::filesystem::path::__compare(__p, v24);
      v26 = v25;
      if ((v62[23] & 0x80000000) != 0)
      {
        operator delete(*v62);
      }

      if (SBYTE7(v67) < 0)
      {
        operator delete(__p[0]);
        if (!v26)
        {
LABEL_86:
          *__p = 0u;
          v67 = 0u;
          re::DynamicString::setCapacity(__p, 0);
          memset(v68, 0, sizeof(v68));
          v69 = 0x7FFFFFFFLL;
          memset(v70, 0, sizeof(v70));
          v71 = 0;
          v72 = 0x7FFFFFFFLL;
          memset(v73, 0, sizeof(v73));
          v74 = 0;
          v75 = 0x7FFFFFFFLL;
          memset(v76, 0, sizeof(v76));
          v77 = 0;
          v78 = 0x7FFFFFFFLL;
          v80 = 0;
          memset(v79, 0, sizeof(v79));
          v81 = 0x7FFFFFFFLL;
          memset(v82, 0, sizeof(v82));
          v83 = 0;
          v84 = 0x7FFFFFFFLL;
          v85 = 0;
          v86 = 0;
          v87 = 0;
          v88 = 0;
          v89 = 0;
          v90 = 0;
          v91 = 0;
          v92 = 0;
          v93 = 0;
          v94 = 0;
          v97 = 0;
          v96 = 0;
          memset(v95, 0, sizeof(v95));
          v98 = 0;
          if ((v10->__p_.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v41 = v10;
          }

          else
          {
            v41 = v10->__p_.__pn_.__r_.__value_.__r.__words[0];
          }

          re::compileMaterialFile(__p, v41, &v105, v57);
          if ((v57[0] & 1) == 0 && v58)
          {
            if (BYTE8(v58))
            {
              (*(*v58 + 40))();
            }

            v59 = 0u;
            v58 = 0u;
          }

          std::__fs::filesystem::path::filename[abi:nn200100](&v10->__p_, v60);
          if (v61 >= 0)
          {
            v43 = v60;
          }

          else
          {
            v43 = v60[0];
          }

          v106.__locale_ = 0;
          v107 = 0;
          v108 = 0;
          v44 = re::Hash<re::DynamicString>::operator()(v109, v62);
          re::HashTable<re::DynamicString,re::MaterialFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v106, v2 + 312, v62, v44);
          if (HIDWORD(v107) == 0x7FFFFFFF)
          {
            v45 = re::HashTable<re::DynamicString,re::MaterialFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v2 + 312, v107, v106.__locale_);
            *(v45 + 8) = *v62;
            *(v45 + 32) = *&v62[24];
            *(v45 + 16) = *&v62[8];
            memset(v62, 0, sizeof(v62));
            re::MaterialFile::MaterialFile(v45 + 40, __p);
            ++*(v2 + 352);
          }

          if (*v62)
          {
            if (v62[8])
            {
              (*(**v62 + 40))();
            }

            memset(v62, 0, sizeof(v62));
          }

          if (v61 < 0)
          {
            operator delete(v60[0]);
          }

          v46 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "Reading ", 8);
          std::__fs::filesystem::path::filename[abi:nn200100](&v10->__p_, v62);
          if (v62[23] >= 0)
          {
            v47 = v62;
          }

          else
          {
            v47 = *v62;
          }

          v48 = strlen(v47);
          v49 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v46, v47, v48);
          v50 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v49, " from ", 6);
          if ((v10->__p_.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v51 = v10;
          }

          else
          {
            v51 = v10->__p_.__pn_.__r_.__value_.__r.__words[0];
          }

          v52 = strlen(v51);
          v53 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v50, v51, v52);
          std::ios_base::getloc((v53 + *(*v53 - 24)));
          v54 = std::locale::use_facet(&v106, MEMORY[0x1E69E5318]);
          (v54->__vftable[2].~facet_0)(v54, 10);
          std::locale::~locale(&v106);
          std::ostream::put();
          std::ostream::flush();
          if ((v62[23] & 0x80000000) != 0)
          {
            operator delete(*v62);
          }

          re::DynamicArray<re::FunctionLink>::deinit(v95);
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v82);
          re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v79);
          re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v76);
          re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v73);
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v70);
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v68[24]);
          re::AssetHandle::~AssetHandle(v68);
          if (__p[0] && (__p[1] & 1) != 0)
          {
            (*(*__p[0] + 40))();
          }
        }
      }

      else if (!v26)
      {
        goto LABEL_86;
      }

LABEL_116:
      std::__fs::filesystem::directory_iterator::__increment(&v99, 0);
LABEL_117:
      ptr = v99.__imp_.__ptr_;
    }

    if (v99.__imp_.__cntrl_)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v99.__imp_.__cntrl_);
    }

    if (v101)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v101);
    }

    this = v102;
    if (v102 && (v103 & 1) != 0)
    {
      this = (*(*v102 + 40))();
    }

    v3 = (v56 + 32);
  }

  while (v56 + 32 != v55);
  return this;
}

double std::__fs::filesystem::path::extension[abi:nn200100](uint64_t a1, std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__extension(this);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a1 = __dst;
  *(a1 + 16) = v6;
  return result;
}

uint64_t re::PSOToolManager::generateFunctionVariationsForTechnique(re::PSOToolManager *this, const char *a2, const char *a3)
{
  v116 = 0;
  v113[1] = 0;
  v114 = 0;
  v113[0] = 0;
  v115 = 0;
  if (*a2 == 42 && !a2[1])
  {
    v11 = *(this + 86);
    if (v11)
    {
      v12 = 0;
      v13 = *(this + 41);
      while ((*v13 & 0x80000000) == 0)
      {
        v13 += 116;
        if (v11 == ++v12)
        {
          LODWORD(v12) = *(this + 86);
          break;
        }
      }
    }

    else
    {
      LODWORD(v12) = 0;
    }

    while (v12 != v11)
    {
      re::DynamicString::DynamicString(v112, (*(this + 41) + 464 * v12 + 8));
      re::makeTruncatedAssetPath(v112, v90);
      v19.n128_f64[0] = re::DynamicArray<re::DynamicString>::add(v113, v90);
      if (v90[0].__locale_)
      {
        if (v90[1].__locale_)
        {
          (*(*v90[0].__locale_ + 40))(v19.n128_f64[0]);
        }

        v19 = 0uLL;
        *&v90[0].__locale_ = 0u;
        v91 = 0u;
      }

      locale = *&v112[0];
      if (*&v112[0])
      {
        if (BYTE8(v112[0]))
        {
          locale = (*(**&v112[0] + 40))(v19);
        }

        memset(v112, 0, sizeof(v112));
      }

      v20 = *(this + 86);
      if (v20 <= v12 + 1)
      {
        v20 = v12 + 1;
      }

      while (v20 - 1 != v12)
      {
        LODWORD(v12) = v12 + 1;
        if ((*(*(this + 41) + 464 * v12) & 0x80000000) != 0)
        {
          goto LABEL_82;
        }
      }

      LODWORD(v12) = v20;
LABEL_82:
      ;
    }

    v21 = *(this + 74);
    if (v21)
    {
      v22 = 0;
      v23 = *(this + 35);
      while ((*v23 & 0x80000000) == 0)
      {
        v23 += 196;
        if (v21 == ++v22)
        {
          LODWORD(v22) = *(this + 74);
          break;
        }
      }
    }

    else
    {
      LODWORD(v22) = 0;
    }

    while (v22 != v21)
    {
      re::DynamicString::DynamicString(v111, (*(this + 35) + 784 * v22 + 8));
      re::makeTruncatedAssetPath(v111, v90);
      v24.n128_f64[0] = re::DynamicArray<re::DynamicString>::add(v113, v90);
      if (v90[0].__locale_)
      {
        if (v90[1].__locale_)
        {
          (*(*v90[0].__locale_ + 40))(v24.n128_f64[0]);
        }

        v24 = 0uLL;
        *&v90[0].__locale_ = 0u;
        v91 = 0u;
      }

      locale = *&v111[0];
      if (*&v111[0])
      {
        if (BYTE8(v111[0]))
        {
          locale = (*(**&v111[0] + 40))(v24);
        }

        memset(v111, 0, sizeof(v111));
      }

      v25 = *(this + 74);
      if (v25 <= v22 + 1)
      {
        v25 = v22 + 1;
      }

      while (v25 - 1 != v22)
      {
        LODWORD(v22) = v22 + 1;
        if ((*(*(this + 35) + 784 * v22) & 0x80000000) != 0)
        {
          goto LABEL_104;
        }
      }

      LODWORD(v22) = v25;
LABEL_104:
      ;
    }
  }

  else
  {
    locale = strcmp(a2, "mxi*");
    if (locale)
    {
      re::makeTruncatedAssetPath(v108, v90);
      v7.n128_f64[0] = re::DynamicArray<re::DynamicString>::add(v113, v90);
      if (v90[0].__locale_)
      {
        if (v90[1].__locale_)
        {
          (*(*v90[0].__locale_ + 40))(v7.n128_f64[0]);
        }

        v7 = 0uLL;
        *&v90[0].__locale_ = 0u;
        v91 = 0u;
      }

      locale = *&v108[0];
      if (*&v108[0])
      {
        if (BYTE8(v108[0]))
        {
          locale = (*(**&v108[0] + 40))(v7);
        }

        memset(v108, 0, sizeof(v108));
      }
    }

    else
    {
      v8 = *(this + 86);
      if (v8)
      {
        v9 = 0;
        v10 = *(this + 41);
        while ((*v10 & 0x80000000) == 0)
        {
          v10 += 116;
          if (v8 == ++v9)
          {
            LODWORD(v9) = *(this + 86);
            break;
          }
        }
      }

      else
      {
        LODWORD(v9) = 0;
      }

      while (v9 != v8)
      {
        re::DynamicString::DynamicString(v110, (*(this + 41) + 464 * v9 + 8));
        re::makeTruncatedAssetPath(v110, v90);
        if (*&v110[0])
        {
          if (BYTE8(v110[0]))
          {
            (*(**&v110[0] + 40))();
          }

          memset(v110, 0, sizeof(v110));
        }

        re::DynamicString::find(v90, "mxi", 3, 0, v104);
        if (LOBYTE(v104[0]) == 1 || (re::DynamicString::find(v90, "MXI", 3, 0, &v87), v87 == 1))
        {
          re::DynamicArray<re::DynamicString>::add(v113, v90);
        }

        locale = v90[0].__locale_;
        if (v90[0].__locale_ && (v90[1].__locale_ & 1) != 0)
        {
          locale = (*(*v90[0].__locale_ + 40))();
        }

        v14 = *(this + 86);
        if (v14 <= v9 + 1)
        {
          v14 = v9 + 1;
        }

        while (v14 - 1 != v9)
        {
          LODWORD(v9) = v9 + 1;
          if ((*(*(this + 41) + 464 * v9) & 0x80000000) != 0)
          {
            goto LABEL_40;
          }
        }

        LODWORD(v9) = v14;
LABEL_40:
        ;
      }

      v15 = *(this + 74);
      if (v15)
      {
        v16 = 0;
        v17 = *(this + 35);
        while ((*v17 & 0x80000000) == 0)
        {
          v17 += 196;
          if (v15 == ++v16)
          {
            LODWORD(v16) = *(this + 74);
            break;
          }
        }
      }

      else
      {
        LODWORD(v16) = 0;
      }

      while (v16 != v15)
      {
        re::DynamicString::DynamicString(v109, (*(this + 35) + 784 * v16 + 8));
        re::makeTruncatedAssetPath(v109, v90);
        if (*&v109[0])
        {
          if (BYTE8(v109[0]))
          {
            (*(**&v109[0] + 40))();
          }

          memset(v109, 0, sizeof(v109));
        }

        re::DynamicString::find(v90, "mxi", 3, 0, v104);
        if (LOBYTE(v104[0]) == 1 || (re::DynamicString::find(v90, "MXI", 3, 0, &v87), v87 == 1))
        {
          re::DynamicArray<re::DynamicString>::add(v113, v90);
        }

        locale = v90[0].__locale_;
        if (v90[0].__locale_ && (v90[1].__locale_ & 1) != 0)
        {
          locale = (*(*v90[0].__locale_ + 40))();
        }

        v18 = *(this + 74);
        if (v18 <= v16 + 1)
        {
          v18 = v16 + 1;
        }

        while (v18 - 1 != v16)
        {
          LODWORD(v16) = v16 + 1;
          if ((*(*(this + 35) + 784 * v16) & 0x80000000) != 0)
          {
            goto LABEL_64;
          }
        }

        LODWORD(v16) = v18;
LABEL_64:
        ;
      }
    }
  }

  if (!v114)
  {
LABEL_220:
    re::DynamicArray<re::DynamicString>::deinit(v113);
    result = v117;
    if (v117)
    {
      if (v118)
      {
        return (*(*v117 + 40))();
      }
    }

    return result;
  }

  v26 = v116;
  v86 = v116 + 32 * v114;
  while (1)
  {
    v27 = *(this + 83);
    v28 = *(this + 85);
    if (v27)
    {
      v29 = 32 * v27;
      v30 = *(this + 85);
      while (1)
      {
        locale = re::DynamicString::operator==(v30, v26);
        if (locale)
        {
          break;
        }

        v30 += 32;
        v29 -= 32;
        if (!v29)
        {
          goto LABEL_114;
        }
      }
    }

    else
    {
      v30 = *(this + 85);
    }

    if (v30 != v28 + 32 * v27)
    {
      goto LABEL_219;
    }

LABEL_114:
    memset(v107, 0, sizeof(v107));
    re::DynamicString::setCapacity(v107, 0);
    v105 = 0;
    memset(v104, 0, sizeof(v104));
    v106 = 0x7FFFFFFFLL;
    v31 = re::Hash<re::DynamicString>::operator()(v90, v26);
    re::HashTable<re::DynamicString,re::MaterialFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v90, this + 312, v26, v31);
    if (HIDWORD(v90[1].__locale_) != 0x7FFFFFFF)
    {
      v34 = re::Hash<re::DynamicString>::operator()(&v87, v26);
      re::HashTable<re::DynamicString,re::MaterialFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v87, this + 312, v26, v34);
      re::MaterialFile::MaterialFile(v90, *(this + 41) + 464 * HIDWORD(v87) + 40);
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(v104, v101);
      re::AssetHandle::serializationString(v92, v103);
      re::makeTruncatedAssetPath(v103, &v87);
      re::DynamicString::operator=(v107, &v87);
      if (v87)
      {
        if (BYTE8(v87))
        {
          (*(*v87 + 40))();
        }

        v87 = 0u;
        v88 = 0u;
      }

      if (*&v103[0])
      {
        if (BYTE8(v103[0]))
        {
          (*(**&v103[0] + 40))();
        }

        memset(v103, 0, sizeof(v103));
      }

      re::DynamicArray<re::FunctionLink>::deinit(&v102);
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v101);
      re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v100);
      re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v99);
      re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v98);
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v97);
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v94);
      re::AssetHandle::~AssetHandle(v92);
      if (v90[0].__locale_ && (v90[1].__locale_ & 1) != 0)
      {
        (*(*v90[0].__locale_ + 40))();
      }

      goto LABEL_128;
    }

    v32 = re::Hash<re::DynamicString>::operator()(v90, v26);
    re::HashTable<re::DynamicString,re::MaterialDefinitionFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(this + 264, v26, v32, v90);
    if (HIDWORD(v90[1].__locale_) == 0x7FFFFFFF)
    {
      break;
    }

    re::DynamicString::operator=(v107, v26);
LABEL_128:
    v35 = *(this + 83);
    v36 = *(this + 85);
    if (v35)
    {
      v37 = 32 * v35;
      v38 = *(this + 85);
      while (!re::DynamicString::operator==(v38, v107))
      {
        v38 += 32;
        v37 -= 32;
        if (!v37)
        {
          goto LABEL_135;
        }
      }
    }

    else
    {
      v38 = *(this + 85);
    }

    if (v38 == v36 + 32 * v35)
    {
LABEL_135:
      v39 = re::Hash<re::DynamicString>::operator()(v90, v107);
      re::HashTable<re::DynamicString,std::__list_iterator<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,void *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v90, this + 360, v107, v39);
      if (HIDWORD(v90[1].__locale_) == 0x7FFFFFFF)
      {
        v40 = re::Hash<re::DynamicString>::operator()(v90, v107);
        re::HashTable<re::DynamicString,re::MaterialDefinitionFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(this + 264, v107, v40, v90);
        re::MaterialDefinitionFile::MaterialDefinitionFile(v90, (*(this + 35) + 784 * HIDWORD(v90[1].__locale_) + 40));
        FlattenedMaterialFile = re::makeFlattenedMaterialFile(this + 264, v90);
        v87 = 0uLL;
        *&v88 = 0;
        v42 = re::Hash<re::DynamicString>::operator()(&v124, v107);
        re::HashTable<re::DynamicString,std::__list_iterator<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,void *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v87, this + 360, v107, v42);
        if (HIDWORD(v87) == 0x7FFFFFFF)
        {
          v43 = re::HashTable<re::DynamicString,re::MaterialDefinitionFile *,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(this + 360, DWORD2(v87), v87);
          re::DynamicString::DynamicString((v43 + 8), v107);
          *(v43 + 40) = FlattenedMaterialFile;
          ++*(this + 100);
        }

        re::MaterialDefinitionFile::~MaterialDefinitionFile(v90);
      }

      v44 = re::Hash<re::DynamicString>::operator()(v90, v107);
      re::HashTable<re::DynamicString,std::__list_iterator<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,void *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v90, this + 360, v107, v44);
      v45 = *(*(this + 47) + 56 * HIDWORD(v90[1].__locale_) + 40);
      v89 = 0;
      *&v88 = 0;
      v87 = 0uLL;
      DWORD2(v88) = 0;
      if (v118)
      {
        v46 = v121;
      }

      else
      {
        v46 = &v119;
      }

      if (*v46 != 42)
      {
        goto LABEL_146;
      }

      v47 = v120;
      if (v118)
      {
        v47 = v121 + 1;
      }

      if (!*v47)
      {
        v75 = *(v45 + 400);
        if (v75)
        {
          v76 = *(v45 + 416);
          v77 = 664 * v75;
          do
          {
            re::MaterialTechniqueData::MaterialTechniqueData(v90, v76);
            re::DynamicArray<re::DynamicString>::add(&v87, v90);
            re::MaterialTechniqueData::~MaterialTechniqueData(v90);
            v76 = (v76 + 664);
            v77 -= 664;
          }

          while (v77);
        }
      }

      else
      {
LABEL_146:
        v48 = re::Hash<re::DynamicString>::operator()(v90, &v117);
        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v45 + 464, &v117, v48, v90);
        if (HIDWORD(v90[1].__locale_) == 0x7FFFFFFF)
        {
          v49 = *(v45 + 400);
          if (v49)
          {
            v50 = *(v45 + 416);
            v51 = 664 * v49;
            while (1)
            {
              re::MaterialTechniqueData::MaterialTechniqueData(v90, v50);
              v52 = (v90[1].__locale_ & 1) != 0 ? v91 : &v90[1].__locale_ + 1;
              v53 = (v118 & 1) != 0 ? v121 : &v119;
              if (!strcmp(v52, v53))
              {
                break;
              }

              re::MaterialTechniqueData::~MaterialTechniqueData(v90);
              v50 = (v50 + 664);
              v51 -= 664;
              if (!v51)
              {
                goto LABEL_157;
              }
            }

            re::DynamicArray<re::DynamicString>::add(&v87, &v117);
            re::MaterialTechniqueData::~MaterialTechniqueData(v90);
          }

          else
          {
LABEL_157:
            v54 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "Cannot find technique mapping for ", 34);
            if (v118)
            {
              v55 = v121;
            }

            else
            {
              v55 = &v119;
            }

            v56 = strlen(v55);
            v57 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v54, v55, v56);
            v58 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v57, " in ", 4);
            if (*(v45 + 8))
            {
              v59 = *(v45 + 16);
            }

            else
            {
              v59 = (v45 + 9);
            }

            v78 = strlen(v59);
            v79 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v58, v59, v78);
            std::ios_base::getloc((v79 + *(*v79 - 24)));
            v80 = std::locale::use_facet(v90, MEMORY[0x1E69E5318]);
            (v80->__vftable[2].~facet_0)(v80, 10);
            std::locale::~locale(v90);
            std::ostream::put();
            std::ostream::flush();
          }
        }

        else
        {
          v60 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v45 + 464, &v117);
          re::DynamicString::DynamicString(&v124, v60);
          v61 = *(v45 + 440);
          if (v61)
          {
            v62 = *(v45 + 456);
            v63 = &v62[9 * v61];
            do
            {
              re::DynamicString::DynamicString(v90, v62);
              re::DynamicArray<re::DynamicString>::DynamicArray(v92, v62 + 4);
              if (v90[1].__locale_)
              {
                v64 = v91;
              }

              else
              {
                v64 = &v90[1].__locale_ + 1;
              }

              if (v125)
              {
                v65 = v127;
              }

              else
              {
                v65 = v126;
              }

              if (!strcmp(v64, v65) && v93)
              {
                v66 = v94[1];
                v67 = 32 * v93;
                do
                {
                  re::DynamicString::DynamicString(&v122, v66);
                  re::DynamicArray<re::DynamicString>::add(&v87, &v122);
                  if (v122 && (v123 & 1) != 0)
                  {
                    (*(*v122 + 40))();
                  }

                  v66 = (v66 + 32);
                  v67 -= 32;
                }

                while (v67);
              }

              re::MaterialTechniqueGroupData::deinit(&v90[0].__locale_);
              re::DynamicArray<re::DynamicString>::deinit(v92);
              if (v90[0].__locale_ && (v90[1].__locale_ & 1) != 0)
              {
                (*(*v90[0].__locale_ + 40))();
              }

              v62 += 9;
            }

            while (v62 != v63);
          }

          v68 = *(v45 + 664);
          if (v68)
          {
            v69 = *(v45 + 680);
            v70 = (v69 + 104 * v68);
            do
            {
              re::MaterialTechniqueQualityLevelSetData::MaterialTechniqueQualityLevelSetData(v90, v69);
              if (v90[1].__locale_)
              {
                v71 = v91;
              }

              else
              {
                v71 = &v90[1].__locale_ + 1;
              }

              if (v125)
              {
                v72 = v127;
              }

              else
              {
                v72 = v126;
              }

              if (!strcmp(v71, v72) && v95)
              {
                v73 = v96;
                v74 = 32 * v95;
                do
                {
                  re::DynamicString::DynamicString(&v122, v73);
                  re::DynamicArray<re::DynamicString>::add(&v87, &v122);
                  if (v122 && (v123 & 1) != 0)
                  {
                    (*(*v122 + 40))();
                  }

                  v73 = (v73 + 32);
                  v74 -= 32;
                }

                while (v74);
              }

              re::MaterialTechniqueQualityLevelSetData::~MaterialTechniqueQualityLevelSetData(&v90[0].__locale_);
              v69 = (v69 + 104);
            }

            while (v69 != v70);
          }

          if (!v88)
          {
            re::DynamicArray<re::DynamicString>::add(&v87, &v124);
          }

          if (v124 && (v125 & 1) != 0)
          {
            (*(*v124 + 40))();
          }
        }
      }

      if (v88)
      {
        v81 = v89;
        v82 = 32 * v88;
        do
        {
          re::DynamicString::DynamicString(v90, v81);
          re::PSOToolManager::generateVariantsForTechnique(this, v45, v90, v104);
          if (v90[0].__locale_ && (v90[1].__locale_ & 1) != 0)
          {
            (*(*v90[0].__locale_ + 40))();
          }

          v81 = (v81 + 32);
          v82 -= 32;
        }

        while (v82);
      }

      re::DynamicArray<re::DynamicString>::deinit(&v87);
    }

    v83 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v104);
    locale = *&v107[0];
    if (*&v107[0] && (BYTE8(v107[0]) & 1) != 0)
    {
      locale = (*(**&v107[0] + 40))(v83);
    }

LABEL_219:
    v26 += 32;
    if (v26 == v86)
    {
      goto LABEL_220;
    }
  }

  if (*(v26 + 8))
  {
    v85 = *(v26 + 16);
  }

  else
  {
    v85 = v26 + 9;
  }

  re::internal::assertLog(5, v33, "assertion failure: '%s' (%s:line %i) No material or material defintion for %s\n", "false", "generateFunctionVariationsForTechnique", 158, v85);
  result = _os_crash();
  __break(1u);
  return result;
}