uint64_t CoreML::Specification::MILSpec::ValueType::SerializeWithCachedSizes(uint64_t this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if (v6 == 1)
  {
    this = google::protobuf::internal::WireFormatLite::WriteMessage(1, *(this + 16), a2, a4);
    v6 = *(v5 + 28);
  }

  if (v6 == 2)
  {
    this = google::protobuf::internal::WireFormatLite::WriteMessage(2, *(v5 + 16), a2, a4);
    v6 = *(v5 + 28);
  }

  if (v6 == 3)
  {
    this = google::protobuf::internal::WireFormatLite::WriteMessage(3, *(v5 + 16), a2, a4);
    v6 = *(v5 + 28);
  }

  if (v6 == 4)
  {
    this = google::protobuf::internal::WireFormatLite::WriteMessage(4, *(v5 + 16), a2, a4);
    v6 = *(v5 + 28);
  }

  if (v6 == 5)
  {
    v7 = *(v5 + 16);

    return google::protobuf::internal::WireFormatLite::WriteMessage(5, v7, a2, a4);
  }

  return this;
}

uint64_t CoreML::Specification::MILSpec::ValueType::ByteSizeLong(CoreML::Specification::MILSpec::ValueType *this)
{
  result = 0;
  v3 = *(this + 7);
  if (v3 <= 2)
  {
    if (v3 == 1)
    {
      v4 = CoreML::Specification::MILSpec::TensorType::ByteSizeLong(*(this + 2));
      goto LABEL_12;
    }

    if (v3 == 2)
    {
      v4 = CoreML::Specification::MILSpec::ListType::ByteSizeLong(*(this + 2));
      goto LABEL_12;
    }
  }

  else
  {
    switch(v3)
    {
      case 3:
        v4 = CoreML::Specification::MILSpec::TupleType::ByteSizeLong(*(this + 2));
        goto LABEL_12;
      case 4:
        v4 = CoreML::Specification::MILSpec::DictionaryType::ByteSizeLong(*(this + 2));
        goto LABEL_12;
      case 5:
        v4 = CoreML::Specification::MILSpec::StateType::ByteSizeLong(*(this + 2));
LABEL_12:
        result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
        break;
    }
  }

  *(this + 6) = result;
  return result;
}

std::string *CoreML::Specification::MILSpec::ValueType::CopyFrom(std::string *this, std::string *a2)
{
  if (a2 != this)
  {
    v4 = this;
    CoreML::Specification::MILSpec::ValueType::clear_type(this);

    return CoreML::Specification::MILSpec::ValueType::MergeFrom(v4, a2);
  }

  return this;
}

CoreML::Specification::MILSpec::TensorType *CoreML::Specification::MILSpec::TensorType::TensorType(CoreML::Specification::MILSpec::TensorType *this)
{
  *this = &unk_2829FF458;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  v2 = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::Init(this + 48);
  *(this + 14) = 0;
  if (this != &CoreML::Specification::MILSpec::_TensorType_default_instance_)
  {
    CoreML::Specification::MILSpec::protobuf_MIL_2eproto::InitDefaults(v2);
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  return this;
}

void sub_21855D994(_Unwind_Exception *a1)
{
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::~Map((v1 + 48));
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::NamedValueType>::TypeHandler>((v1 + 16));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v2);
  _Unwind_Resume(a1);
}

uint64_t CoreML::Specification::MILSpec::TensorType::SharedCtor(uint64_t this)
{
  *(this + 72) = 0;
  *(this + 80) = 0;
  return this;
}

CoreML::Specification::MILSpec::TensorType *CoreML::Specification::MILSpec::TensorType::TensorType(CoreML::Specification::MILSpec::TensorType *this, const CoreML::Specification::MILSpec::TensorType *a2)
{
  *this = &unk_2829FF458;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 24) = 0u;
  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16), *(a2 + 6));
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::Dimension>::TypeHandler>((this + 16), v7, (v6 + 8), v5, **(this + 4) - *(this + 6));
    v8 = *(this + 6) + v5;
    *(this + 6) = v8;
    v9 = *(this + 4);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::Init(this + 48);
  *(this + 14) = 0;
  *(this + 21) = 0;
  v10 = *(a2 + 1);
  if (v10)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(v4, v10 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::MergeFrom(this + 40, a2 + 40);
  v11 = *(a2 + 9);
  *(this + 20) = *(a2 + 20);
  *(this + 9) = v11;
  return this;
}

void sub_21855DAE4(_Unwind_Exception *a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::NamedValueType>::TypeHandler>((v2 + 16));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

void CoreML::Specification::MILSpec::TensorType::~TensorType(CoreML::Specification::MILSpec::TensorType *this)
{
  *this = &unk_2829FF458;
  v2 = (this + 16);
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::~Map(this + 6);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::NamedValueType>::TypeHandler>(v2);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  CoreML::Specification::MILSpec::TensorType::~TensorType(this);

  JUMPOUT(0x21CEAFEA0);
}

google::protobuf::Arena *google::protobuf::Arena::Own<CoreML::Specification::MILSpec::TensorType>(google::protobuf::Arena *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::Arena::AddListNode(result, a2, google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::TensorType>);
  }

  return result;
}

void CoreML::Specification::MILSpec::TensorType::Clear(CoreML::Specification::MILSpec::TensorType *this)
{
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (*(this + 4) + 8);
    do
    {
      v4 = *v3++;
      CoreML::Specification::MILSpec::Dimension::clear_dimension(v4);
      --v2;
    }

    while (v2);
    *(this + 6) = 0;
  }

  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::clear(this + 48);
  *(this + 20) = 0;
  *(this + 9) = 0;
}

uint64_t CoreML::Specification::MILSpec::TensorType::MergePartialFromCodedStream(CoreML::Specification::MILSpec::TensorType *this, char **a2, unsigned int a3)
{
  v5 = this + 40;
  v6 = this + 48;
  while (1)
  {
    v7 = *a2;
    if (*a2 >= a2[1])
    {
      v8 = 0;
    }

    else
    {
      v8 = *v7;
      if (*v7 >= 1)
      {
        *a2 = v7 + 1;
        v9 = v8 | 0x100000000;
        if ((v9 & 0x100000000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_8;
      }
    }

    TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2, v8);
    v9 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
    if ((v9 & 0x100000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_8:
    v11 = v9 >> 3;
    if (v9 >> 3 > 2)
    {
      if (v11 != 3)
      {
        if (v11 != 4 || v9 != 34)
        {
          goto LABEL_32;
        }

        v44[0] = v5;
        v44[1] = v6;
        v46 = 0;
        v47 = 0;
        __p = 0;
        v48 = 0;
        v15 = *a2;
        if (*a2 >= a2[1] || (VarintSizeAsIntFallback = *v15, (VarintSizeAsIntFallback & 0x80000000) != 0))
        {
          VarintSizeAsIntFallback = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(a2);
          if ((VarintSizeAsIntFallback & 0x80000000) != 0)
          {
            goto LABEL_75;
          }
        }

        else
        {
          *a2 = v15 + 1;
        }

        v26 = google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(a2, VarintSizeAsIntFallback);
        v27 = v26;
        if (v26 & 0x8000000000000000) == 0 && google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Parser<google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>>::MergePartialFromCodedStream(v44, a2) && (google::protobuf::io::CodedInputStream::DecrementRecursionDepthAndPopLimit(a2, v27))
        {
          if (v47 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if (v47 >= 0)
          {
            v29 = HIBYTE(v47);
          }

          else
          {
            v29 = v46;
          }

          v30 = google::protobuf::internal::WireFormatLite::VerifyUtf8String(p_p, v29, 0, "CoreML.Specification.MILSpec.TensorType.AttributesEntry.key");
          v31 = v30;
          if (v30)
          {
            v24 = 0;
          }

          else
          {
            v24 = 6;
          }

LABEL_55:
          if (v48)
          {
            (*(*v48 + 8))(v48);
          }

          if (SHIBYTE(v47) < 0)
          {
            operator delete(__p);
          }

          if (!v31)
          {
            goto LABEL_38;
          }

          goto LABEL_37;
        }

LABEL_75:
        v31 = 0;
        v24 = 6;
        goto LABEL_55;
      }

      if (v9 != 26)
      {
        goto LABEL_32;
      }

      v19 = *(this + 4);
      if (v19)
      {
        v20 = *(this + 6);
        v21 = *v19;
        if (v20 < *v19)
        {
          *(this + 6) = v20 + 1;
          Aligned = *&v19[2 * v20 + 2];
          goto LABEL_67;
        }

        if (v21 != *(this + 7))
        {
LABEL_64:
          *v19 = v21 + 1;
          v32 = *(this + 2);
          if (!v32)
          {
            operator new();
          }

          CoreML::Specification::MILSpec::Dimension::Dimension(Aligned, v33, v34);
          google::protobuf::Arena::AddListNode(v32, Aligned, google::protobuf::internal::arena_destruct_object<CoreML::Specification::MILSpec::Dimension>);
          v35 = *(this + 6);
          v36 = *(this + 4) + 8 * v35;
          *(this + 6) = v35 + 1;
          *(v36 + 8) = Aligned;
LABEL_67:
          v37 = *a2;
          if (*a2 >= a2[1] || (v38 = *v37, (v38 & 0x80000000) != 0))
          {
            v38 = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(a2);
            if ((v38 & 0x80000000) != 0)
            {
              return 0;
            }
          }

          else
          {
            *a2 = v37 + 1;
          }

          v39 = google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(a2, v38);
          if ((v39 & 0x8000000000000000) != 0)
          {
            return 0;
          }

          v41 = v39;
          if (!CoreML::Specification::MILSpec::Dimension::MergePartialFromCodedStream(Aligned, a2, v40) || (google::protobuf::io::CodedInputStream::DecrementRecursionDepthAndPopLimit(a2, v41) & 1) == 0)
          {
            return 0;
          }

          goto LABEL_37;
        }
      }

      else
      {
        v21 = *(this + 7);
      }

      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 4, v21 + 1);
      v19 = *(this + 4);
      v21 = *v19;
      goto LABEL_64;
    }

    if (v11 != 1)
    {
      break;
    }

    if (v9 != 8)
    {
      goto LABEL_32;
    }

    v17 = *a2;
    if (*a2 >= a2[1])
    {
      v18 = 0;
LABEL_77:
      Varint32Fallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v18);
      v18 = Varint32Fallback;
      if (Varint32Fallback < 0)
      {
        return 0;
      }

      goto LABEL_78;
    }

    v18 = *v17;
    if (*v17 < 0)
    {
      goto LABEL_77;
    }

    *a2 = v17 + 1;
LABEL_78:
    *(this + 20) = v18;
LABEL_37:
    v24 = 0;
LABEL_38:
    if (v24)
    {
      return 0;
    }
  }

  if (v11 == 2 && v9 == 16)
  {
    v13 = *a2;
    if (*a2 >= a2[1] || (Varint64Fallback = *v13, (Varint64Fallback & 0x8000000000000000) != 0))
    {
      Varint64Fallback = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2);
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      *a2 = v13 + 1;
    }

    *(this + 9) = Varint64Fallback;
    goto LABEL_37;
  }

LABEL_32:
  if (v9)
  {
    v23 = (v9 & 7) == 4;
  }

  else
  {
    v23 = 1;
  }

  if (!v23)
  {
    if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v9, a3))
    {
      return 0;
    }

    goto LABEL_37;
  }

  return 1;
}

uint64_t CoreML::Specification::MILSpec::TensorType::SerializeWithCachedSizes(uint64_t this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 80);
  if (v6)
  {
    this = google::protobuf::internal::WireFormatLite::WriteInt32(1, v6, a2, a4);
  }

  v7 = *(v5 + 72);
  if (v7)
  {
    this = google::protobuf::internal::WireFormatLite::WriteInt64(2, v7, a2, a4);
  }

  v8 = *(v5 + 24);
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      this = google::protobuf::internal::WireFormatLite::WriteMessage(3, *(*(v5 + 32) + 8 * i + 8), a2, a4);
    }
  }

  v10 = **(v5 + 64);
  if (v10)
  {
    if (*(a2 + 26) == 1)
    {
      v11 = *(a2 + 27);
    }

    else
    {
      v11 = google::protobuf::io::CodedOutputStream::default_serialization_deterministic_;
    }

    if (v10 != 1 && v11 != 0)
    {
      operator new[]();
    }

    this = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::begin(v5 + 48, v18);
    v13 = 0;
    while (v18[0])
    {
      v15 = google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Wrap(*(v18[0] + 24), *(v18[0] + 24) + 24, *(v5 + 40));
      if (v13 != v15)
      {
        if (v13)
        {
          (*(*v13 + 8))(v13);
        }

        v13 = v15;
      }

      google::protobuf::internal::WireFormatLite::WriteMessage(4, v13, a2, v14);
      v16 = *(v18[0] + 24);
      v17 = v16[23];
      if ((v17 & 0x8000000000000000) != 0)
      {
        v16 = *v16;
        v17 = *(*(v18[0] + 24) + 8);
      }

      google::protobuf::internal::WireFormatLite::VerifyUtf8String(v16, v17, 1, "CoreML.Specification.MILSpec.TensorType.AttributesEntry.key");
      this = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::iterator_base<google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::KeyValuePair const>::operator++(v18);
    }

    if (v13)
    {
      return (*(*v13 + 8))(v13);
    }
  }

  return this;
}

uint64_t CoreML::Specification::MILSpec::TensorType::ByteSizeLong(CoreML::Specification::MILSpec::TensorType *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 6);
    do
    {
      v5 = CoreML::Specification::MILSpec::Dimension::ByteSizeLong(*(*(this + 4) + 8 * v3 + 8));
      v4 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6);
      ++v3;
    }

    while (v2 != v3);
  }

  else
  {
    v4 = 0;
  }

  v6 = **(this + 8);
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::begin(this + 48, v15);
  v7 = 0;
  v8 = v6 + v4;
  while (v15[0])
  {
    v9 = google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Wrap(*(v15[0] + 24), *(v15[0] + 24) + 24, *(this + 5));
    if (v7 != v9)
    {
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      v7 = v9;
    }

    v10 = google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::ByteSizeLong(v7);
    v8 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::iterator_base<google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::KeyValuePair const>::operator++(v15);
  }

  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v11 = *(this + 9);
  if (v11)
  {
    v8 += ((9 * (__clz(v11 | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  v12 = *(this + 20);
  if (v12)
  {
    if (v12 < 0)
    {
      v13 = 11;
    }

    else
    {
      v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v8 += v13;
  }

  *(this + 21) = v8;
  return v8;
}

void sub_21855E610(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CoreML::Specification::MILSpec::Program::SerializeWithCachedSizes();
  }

  _Unwind_Resume(exception_object);
}

CoreML::Specification::MILSpec::TensorType *CoreML::Specification::MILSpec::TensorType::CopyFrom(CoreML::Specification::MILSpec::TensorType *this, const CoreML::Specification::MILSpec::TensorType *a2)
{
  if (a2 != this)
  {
    v4 = this;
    CoreML::Specification::MILSpec::TensorType::Clear(this);

    return CoreML::Specification::MILSpec::TensorType::MergeFrom(v4, a2);
  }

  return this;
}

CoreML::Specification::MILSpec::TensorType *CoreML::Specification::MILSpec::TensorType::Swap(CoreML::Specification::MILSpec::TensorType *this, CoreML::Specification::MILSpec::TensorType *a2)
{
  if (a2 != this)
  {
    return CoreML::Specification::MILSpec::TensorType::InternalSwap(this, a2);
  }

  return this;
}

void *CoreML::Specification::MILSpec::TensorType::InternalSwap(CoreML::Specification::MILSpec::TensorType *this, CoreML::Specification::MILSpec::TensorType *a2)
{
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  LODWORD(v4) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  result = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::swap(this + 6, a2 + 48);
  v6 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v6;
  LODWORD(v6) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v6;
  LODWORD(v6) = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v6;
  return result;
}

CoreML::Specification::MILSpec::TupleType *CoreML::Specification::MILSpec::TupleType::TupleType(CoreML::Specification::MILSpec::TupleType *this, uint64_t a2, google::protobuf::Closure *a3)
{
  *this = &unk_2829FF4F0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  if (this != &CoreML::Specification::MILSpec::_TupleType_default_instance_)
  {
    CoreML::Specification::MILSpec::protobuf_MIL_2eproto::InitDefaults(this, a2, a3);
  }

  *(this + 10) = 0;
  return this;
}

void sub_21855E7A0(_Unwind_Exception *a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::NamedValueType>::TypeHandler>((v1 + 16));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v2);
  _Unwind_Resume(a1);
}

CoreML::Specification::MILSpec::TupleType *CoreML::Specification::MILSpec::TupleType::TupleType(CoreML::Specification::MILSpec::TupleType *this, const CoreML::Specification::MILSpec::TupleType *a2)
{
  *this = &unk_2829FF4F0;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 24) = 0u;
  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16), *(a2 + 6));
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::ValueType>::TypeHandler>(this + 16, v7, (v6 + 8), v5, **(this + 4) - *(this + 6));
    v8 = *(this + 6) + v5;
    *(this + 6) = v8;
    v9 = *(this + 4);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  *(this + 10) = 0;
  v10 = *(a2 + 1);
  if (v10)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(v4, v10 & 0xFFFFFFFFFFFFFFFELL);
  }

  return this;
}

void sub_21855E89C(_Unwind_Exception *a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::NamedValueType>::TypeHandler>((v2 + 16));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

void CoreML::Specification::MILSpec::TupleType::~TupleType(CoreML::Specification::MILSpec::TupleType *this)
{
  *this = &unk_2829FF4F0;
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::NamedValueType>::TypeHandler>(this + 2);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  CoreML::Specification::MILSpec::TupleType::~TupleType(this);

  JUMPOUT(0x21CEAFEA0);
}

google::protobuf::Arena *google::protobuf::Arena::Own<CoreML::Specification::MILSpec::TupleType>(google::protobuf::Arena *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::Arena::AddListNode(result, a2, google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::TupleType>);
  }

  return result;
}

uint64_t CoreML::Specification::MILSpec::TupleType::Clear(uint64_t this)
{
  v1 = *(this + 24);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 32) + 8);
    do
    {
      v4 = *v3++;
      this = CoreML::Specification::MILSpec::ValueType::clear_type(v4);
      --v1;
    }

    while (v1);
    *(v2 + 24) = 0;
  }

  return this;
}

uint64_t CoreML::Specification::MILSpec::TupleType::MergePartialFromCodedStream(CoreML::Specification::MILSpec::TupleType *this, char **a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *a2;
      if (*a2 >= a2[1])
      {
        v6 = 0;
LABEL_6:
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2, v6);
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          break;
        }

        goto LABEL_7;
      }

      v6 = *v5;
      if (*v5 < 1)
      {
        goto LABEL_6;
      }

      *a2 = v5 + 1;
      v7 = v6 | 0x100000000;
      if ((v7 & 0x100000000) == 0)
      {
        break;
      }

LABEL_7:
      if (v7 != 10 || (v7 & 0xFFFFFFF8) != 8)
      {
        break;
      }

      v11 = *(this + 4);
      if (!v11)
      {
        v13 = *(this + 7);
LABEL_22:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 4, v13 + 1);
        v11 = *(this + 4);
        v13 = *v11;
        goto LABEL_23;
      }

      v12 = *(this + 6);
      v13 = *v11;
      if (v12 < *v11)
      {
        *(this + 6) = v12 + 1;
        Aligned = *&v11[2 * v12 + 2];
        goto LABEL_26;
      }

      if (v13 == *(this + 7))
      {
        goto LABEL_22;
      }

LABEL_23:
      *v11 = v13 + 1;
      v15 = *(this + 2);
      if (!v15)
      {
        operator new();
      }

      CoreML::Specification::MILSpec::ValueType::ValueType(Aligned, v16, v17);
      google::protobuf::Arena::AddListNode(v15, Aligned, google::protobuf::internal::arena_destruct_object<CoreML::Specification::MILSpec::ValueType>);
      v18 = *(this + 6);
      v19 = *(this + 4) + 8 * v18;
      *(this + 6) = v18 + 1;
      *(v19 + 8) = Aligned;
LABEL_26:
      v20 = *a2;
      if (*a2 >= a2[1] || (VarintSizeAsIntFallback = *v20, (VarintSizeAsIntFallback & 0x80000000) != 0))
      {
        VarintSizeAsIntFallback = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(a2);
        if ((VarintSizeAsIntFallback & 0x80000000) != 0)
        {
          return 0;
        }
      }

      else
      {
        *a2 = v20 + 1;
      }

      v22 = google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(a2, VarintSizeAsIntFallback);
      if ((v22 & 0x8000000000000000) == 0)
      {
        v23 = v22;
        result = CoreML::Specification::MILSpec::ValueType::MergePartialFromCodedStream(Aligned, a2);
        if (!result)
        {
          return result;
        }

        if (google::protobuf::io::CodedInputStream::DecrementRecursionDepthAndPopLimit(a2, v23))
        {
          continue;
        }
      }

      return 0;
    }

    if (!v7 || (v7 & 7) == 4)
    {
      return 1;
    }

    if ((google::protobuf::internal::WireFormatLite::SkipField(a2, v7, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreML::Specification::MILSpec::TupleType::SerializeWithCachedSizes(uint64_t this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v4 = *(this + 24);
  if (v4)
  {
    v6 = this;
    for (i = 0; i != v4; ++i)
    {
      this = google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v6 + 32) + 8 * i + 8), a2, a4);
    }
  }

  return this;
}

uint64_t CoreML::Specification::MILSpec::TupleType::ByteSizeLong(CoreML::Specification::MILSpec::TupleType *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 6);
    do
    {
      v5 = CoreML::Specification::MILSpec::ValueType::ByteSizeLong(*(*(this + 4) + 8 * v3 + 8));
      v4 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6);
      ++v3;
    }

    while (v2 != v3);
  }

  else
  {
    v4 = 0;
  }

  *(this + 10) = v4;
  return v4;
}

uint64_t CoreML::Specification::MILSpec::TupleType::CopyFrom(uint64_t this, const CoreML::Specification::MILSpec::TupleType *a2)
{
  if (a2 != this)
  {
    v4 = this;
    v5 = *(this + 24);
    if (v5 >= 1)
    {
      v6 = (*(this + 32) + 8);
      do
      {
        v7 = *v6++;
        CoreML::Specification::MILSpec::ValueType::clear_type(v7);
        --v5;
      }

      while (v5);
      *(v4 + 24) = 0;
    }

    return CoreML::Specification::MILSpec::TupleType::MergeFrom(v4, a2);
  }

  return this;
}

CoreML::Specification::MILSpec::ListType *CoreML::Specification::MILSpec::ListType::ListType(CoreML::Specification::MILSpec::ListType *this, uint64_t a2, google::protobuf::Closure *a3)
{
  *this = &unk_2829FF588;
  *(this + 1) = 0;
  if (this != &CoreML::Specification::MILSpec::_ListType_default_instance_)
  {
    CoreML::Specification::MILSpec::protobuf_MIL_2eproto::InitDefaults(this, a2, a3);
  }

  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  return this;
}

uint64_t CoreML::Specification::MILSpec::ListType::SharedCtor(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

CoreML::Specification::MILSpec::ListType *CoreML::Specification::MILSpec::ListType::ListType(CoreML::Specification::MILSpec::ListType *this, const CoreML::Specification::MILSpec::ListType *a2)
{
  *this = &unk_2829FF588;
  *(this + 1) = 0;
  *(this + 8) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (a2 == &CoreML::Specification::MILSpec::_ListType_default_instance_)
  {
    *(this + 2) = 0;
  }

  else
  {
    if (*(a2 + 2))
    {
      operator new();
    }

    *(this + 2) = 0;
    if (*(a2 + 3))
    {
      operator new();
    }
  }

  *(this + 3) = 0;
  return this;
}

void sub_21855EF6C(_Unwind_Exception *a1)
{
  MEMORY[0x21CEAFEA0](v2, 0x10A1C406A65A86DLL);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

void CoreML::Specification::MILSpec::ListType::~ListType(CoreML::Specification::MILSpec::ListType *this)
{
  *this = &unk_2829FF588;
  CoreML::Specification::MILSpec::ListType::SharedDtor(this);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  CoreML::Specification::MILSpec::ListType::~ListType(this);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t *CoreML::Specification::MILSpec::ListType::SharedDtor(uint64_t *this)
{
  if (this != &CoreML::Specification::MILSpec::_ListType_default_instance_)
  {
    v1 = this;
    v2 = this[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    this = v1[3];
    if (this)
    {
      v3 = *(*this + 8);

      return v3();
    }
  }

  return this;
}

google::protobuf::Arena *google::protobuf::Arena::Own<CoreML::Specification::MILSpec::ListType>(google::protobuf::Arena *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::Arena::AddListNode(result, a2, google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::ListType>);
  }

  return result;
}

uint64_t CoreML::Specification::MILSpec::ListType::Clear(CoreML::Specification::MILSpec::ListType *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;
  result = *(this + 3);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 3) = 0;
  return result;
}

uint64_t CoreML::Specification::MILSpec::ListType::MergePartialFromCodedStream(CoreML::Specification::MILSpec::ListType *this, char **a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *a2;
      if (*a2 >= a2[1])
      {
        v6 = 0;
LABEL_6:
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2, v6);
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_7;
      }

      v6 = *v5;
      if (*v5 < 1)
      {
        goto LABEL_6;
      }

      *a2 = v5 + 1;
      v7 = v6 | 0x100000000;
      if ((v7 & 0x100000000) == 0)
      {
        goto LABEL_24;
      }

LABEL_7:
      if (v7 >> 3 != 2)
      {
        break;
      }

      if (v7 != 18)
      {
        goto LABEL_24;
      }

      v13 = *(this + 3);
      if (!v13)
      {
        operator new();
      }

      v14 = *a2;
      if (*a2 >= a2[1] || (VarintSizeAsIntFallback = *v14, (VarintSizeAsIntFallback & 0x80000000) != 0))
      {
        VarintSizeAsIntFallback = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(a2);
        if ((VarintSizeAsIntFallback & 0x80000000) != 0)
        {
          return 0;
        }
      }

      else
      {
        *a2 = v14 + 1;
      }

      v20 = google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(a2, VarintSizeAsIntFallback);
      if ((v20 & 0x8000000000000000) != 0)
      {
        return 0;
      }

      v18 = v20;
      result = CoreML::Specification::MILSpec::Dimension::MergePartialFromCodedStream(v13, a2, v21);
      if (!result)
      {
        return result;
      }

LABEL_37:
      if ((google::protobuf::io::CodedInputStream::DecrementRecursionDepthAndPopLimit(a2, v18) & 1) == 0)
      {
        return 0;
      }
    }

    if (v7 >> 3 == 1 && v7 == 10)
    {
      v10 = *(this + 2);
      if (!v10)
      {
        operator new();
      }

      v11 = *a2;
      if (*a2 >= a2[1] || (v12 = *v11, (v12 & 0x80000000) != 0))
      {
        v12 = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(a2);
        if ((v12 & 0x80000000) != 0)
        {
          return 0;
        }
      }

      else
      {
        *a2 = v11 + 1;
      }

      v17 = google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(a2, v12);
      if ((v17 & 0x8000000000000000) != 0)
      {
        return 0;
      }

      v18 = v17;
      result = CoreML::Specification::MILSpec::ValueType::MergePartialFromCodedStream(v10, a2);
      if (!result)
      {
        return result;
      }

      goto LABEL_37;
    }

LABEL_24:
    if (!v7 || (v7 & 7) == 4)
    {
      return 1;
    }

    if ((google::protobuf::internal::WireFormatLite::SkipField(a2, v7, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t *CoreML::Specification::MILSpec::ListType::SerializeWithCachedSizes(uint64_t *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  if (this != &CoreML::Specification::MILSpec::_ListType_default_instance_)
  {
    v5 = this;
    v6 = this[2];
    if (v6)
    {
      this = google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
    }

    v7 = v5[3];
    if (v7)
    {

      return google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
    }
  }

  return this;
}

uint64_t CoreML::Specification::MILSpec::ListType::ByteSizeLong(CoreML::Specification::MILSpec::ListType *this)
{
  if (this == &CoreML::Specification::MILSpec::_ListType_default_instance_)
  {
    v4 = 0;
  }

  else
  {
    v2 = *(this + 2);
    if (v2)
    {
      v3 = CoreML::Specification::MILSpec::ValueType::ByteSizeLong(v2);
      v4 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v4 = 0;
    }

    v5 = *(this + 3);
    if (v5)
    {
      v6 = CoreML::Specification::MILSpec::Dimension::ByteSizeLong(v5);
      v4 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  *(this + 8) = v4;
  return v4;
}

std::string *CoreML::Specification::MILSpec::Dimension::MergeFrom(std::string *this, const CoreML::Specification::MILSpec::Dimension *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(&this->__r_.__value_.__l.__size_, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 7);
  if (v5 == 2)
  {
    if (*(v3 + 28) != 2)
    {
      CoreML::Specification::MILSpec::Dimension::clear_dimension(v3);
      *(v3 + 28) = 2;
      operator new();
    }

    v7 = *(v3 + 16);
    v9 = *(a2 + 2);
    v12 = *(v9 + 8);
    if (v12)
    {
      this = google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom((v7 + 8), v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    if (*(v9 + 16) == 1)
    {
      *(v7 + 16) = 1;
    }
  }

  else if (v5 == 1)
  {
    if (*(v3 + 28) != 1)
    {
      CoreML::Specification::MILSpec::Dimension::clear_dimension(v3);
      *(v3 + 28) = 1;
      operator new();
    }

    v6 = *(v3 + 16);
    v8 = *(a2 + 2);
    v10 = *(v8 + 8);
    if (v10)
    {
      this = google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom((v6 + 8), v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v11 = *(v8 + 16);
    if (v11)
    {
      *(v6 + 16) = v11;
    }
  }

  return this;
}

std::string *CoreML::Specification::MILSpec::ListType::CopyFrom(std::string *this, std::string *a2)
{
  if (a2 != this)
  {
    v4 = this;
    CoreML::Specification::MILSpec::ListType::Clear(this);

    return CoreML::Specification::MILSpec::ListType::MergeFrom(v4, a2);
  }

  return this;
}

CoreML::Specification::MILSpec::DictionaryType *CoreML::Specification::MILSpec::DictionaryType::DictionaryType(CoreML::Specification::MILSpec::DictionaryType *this, uint64_t a2, google::protobuf::Closure *a3)
{
  *this = &unk_2829FF620;
  *(this + 1) = 0;
  if (this != &CoreML::Specification::MILSpec::_DictionaryType_default_instance_)
  {
    CoreML::Specification::MILSpec::protobuf_MIL_2eproto::InitDefaults(this, a2, a3);
  }

  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  return this;
}

CoreML::Specification::MILSpec::DictionaryType *CoreML::Specification::MILSpec::DictionaryType::DictionaryType(CoreML::Specification::MILSpec::DictionaryType *this, const CoreML::Specification::MILSpec::DictionaryType *a2)
{
  *this = &unk_2829FF620;
  *(this + 1) = 0;
  *(this + 8) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (a2 == &CoreML::Specification::MILSpec::_DictionaryType_default_instance_)
  {
    *(this + 2) = 0;
  }

  else
  {
    if (*(a2 + 2))
    {
      operator new();
    }

    *(this + 2) = 0;
    if (*(a2 + 3))
    {
      operator new();
    }
  }

  *(this + 3) = 0;
  return this;
}

void sub_21855F88C(_Unwind_Exception *a1)
{
  MEMORY[0x21CEAFEA0](v2, 0x10A1C406A65A86DLL);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

void CoreML::Specification::MILSpec::DictionaryType::~DictionaryType(CoreML::Specification::MILSpec::DictionaryType *this)
{
  *this = &unk_2829FF620;
  CoreML::Specification::MILSpec::DictionaryType::SharedDtor(this);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  CoreML::Specification::MILSpec::DictionaryType::~DictionaryType(this);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t *CoreML::Specification::MILSpec::DictionaryType::SharedDtor(uint64_t *this)
{
  if (this != &CoreML::Specification::MILSpec::_DictionaryType_default_instance_)
  {
    v1 = this;
    v2 = this[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    this = v1[3];
    if (this)
    {
      v3 = *(*this + 8);

      return v3();
    }
  }

  return this;
}

google::protobuf::Arena *google::protobuf::Arena::Own<CoreML::Specification::MILSpec::DictionaryType>(google::protobuf::Arena *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::Arena::AddListNode(result, a2, google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::DictionaryType>);
  }

  return result;
}

uint64_t CoreML::Specification::MILSpec::DictionaryType::Clear(CoreML::Specification::MILSpec::DictionaryType *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;
  result = *(this + 3);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 3) = 0;
  return result;
}

uint64_t CoreML::Specification::MILSpec::DictionaryType::MergePartialFromCodedStream(CoreML::Specification::MILSpec::DictionaryType *this, char **a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *a2;
      if (*a2 >= a2[1])
      {
        v6 = 0;
LABEL_6:
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2, v6);
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_7;
      }

      v6 = *v5;
      if (*v5 < 1)
      {
        goto LABEL_6;
      }

      *a2 = v5 + 1;
      v7 = v6 | 0x100000000;
      if ((v7 & 0x100000000) == 0)
      {
        goto LABEL_21;
      }

LABEL_7:
      if (v7 >> 3 != 2)
      {
        break;
      }

      if (v7 != 18)
      {
        goto LABEL_21;
      }

      v10 = *(this + 3);
      if (!v10)
      {
        operator new();
      }

LABEL_18:
      v11 = *a2;
      if (*a2 >= a2[1] || (VarintSizeAsIntFallback = *v11, (VarintSizeAsIntFallback & 0x80000000) != 0))
      {
        VarintSizeAsIntFallback = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(a2);
        if ((VarintSizeAsIntFallback & 0x80000000) != 0)
        {
          return 0;
        }
      }

      else
      {
        *a2 = v11 + 1;
      }

      v14 = google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(a2, VarintSizeAsIntFallback);
      if ((v14 & 0x8000000000000000) == 0)
      {
        v15 = v14;
        result = CoreML::Specification::MILSpec::ValueType::MergePartialFromCodedStream(v10, a2);
        if (!result)
        {
          return result;
        }

        if (google::protobuf::io::CodedInputStream::DecrementRecursionDepthAndPopLimit(a2, v15))
        {
          continue;
        }
      }

      return 0;
    }

    if (v7 >> 3 == 1 && v7 == 10)
    {
      v10 = *(this + 2);
      if (!v10)
      {
        operator new();
      }

      goto LABEL_18;
    }

LABEL_21:
    if (!v7 || (v7 & 7) == 4)
    {
      return 1;
    }

    if ((google::protobuf::internal::WireFormatLite::SkipField(a2, v7, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t *CoreML::Specification::MILSpec::DictionaryType::SerializeWithCachedSizes(uint64_t *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  if (this != &CoreML::Specification::MILSpec::_DictionaryType_default_instance_)
  {
    v5 = this;
    v6 = this[2];
    if (v6)
    {
      this = google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
    }

    v7 = v5[3];
    if (v7)
    {

      return google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
    }
  }

  return this;
}

uint64_t CoreML::Specification::MILSpec::DictionaryType::ByteSizeLong(CoreML::Specification::MILSpec::DictionaryType *this)
{
  if (this == &CoreML::Specification::MILSpec::_DictionaryType_default_instance_)
  {
    v4 = 0;
  }

  else
  {
    v2 = *(this + 2);
    if (v2)
    {
      v3 = CoreML::Specification::MILSpec::ValueType::ByteSizeLong(v2);
      v4 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v4 = 0;
    }

    v5 = *(this + 3);
    if (v5)
    {
      v6 = CoreML::Specification::MILSpec::ValueType::ByteSizeLong(v5);
      v4 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  *(this + 8) = v4;
  return v4;
}

std::string *CoreML::Specification::MILSpec::DictionaryType::CopyFrom(std::string *this, std::string *a2)
{
  if (a2 != this)
  {
    v4 = this;
    CoreML::Specification::MILSpec::DictionaryType::Clear(this);

    return CoreML::Specification::MILSpec::DictionaryType::MergeFrom(v4, a2);
  }

  return this;
}

CoreML::Specification::MILSpec::StateType *CoreML::Specification::MILSpec::StateType::StateType(CoreML::Specification::MILSpec::StateType *this, uint64_t a2, google::protobuf::Closure *a3)
{
  *this = &unk_2829FF6B8;
  *(this + 1) = 0;
  if (this != &CoreML::Specification::MILSpec::_StateType_default_instance_)
  {
    CoreML::Specification::MILSpec::protobuf_MIL_2eproto::InitDefaults(this, a2, a3);
  }

  *(this + 2) = 0;
  *(this + 6) = 0;
  return this;
}

uint64_t CoreML::Specification::MILSpec::StateType::SharedCtor(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

CoreML::Specification::MILSpec::StateType *CoreML::Specification::MILSpec::StateType::StateType(CoreML::Specification::MILSpec::StateType *this, const CoreML::Specification::MILSpec::StateType *a2)
{
  *this = &unk_2829FF6B8;
  *(this + 1) = 0;
  *(this + 6) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (a2 != &CoreML::Specification::MILSpec::_StateType_default_instance_ && *(a2 + 2) != 0)
  {
    operator new();
  }

  *(this + 2) = 0;
  return this;
}

void sub_21855FF90(_Unwind_Exception *a1)
{
  MEMORY[0x21CEAFEA0](v2, 0x10A1C406A65A86DLL);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

void CoreML::Specification::MILSpec::StateType::~StateType(CoreML::Specification::MILSpec::StateType *this)
{
  *this = &unk_2829FF6B8;
  if (this != &CoreML::Specification::MILSpec::_StateType_default_instance_)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  CoreML::Specification::MILSpec::StateType::~StateType(this);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t *CoreML::Specification::MILSpec::StateType::SharedDtor(uint64_t *this)
{
  if (this != &CoreML::Specification::MILSpec::_StateType_default_instance_)
  {
    this = this[2];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

google::protobuf::Arena *google::protobuf::Arena::Own<CoreML::Specification::MILSpec::StateType>(google::protobuf::Arena *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::Arena::AddListNode(result, a2, google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::StateType>);
  }

  return result;
}

uint64_t CoreML::Specification::MILSpec::StateType::Clear(CoreML::Specification::MILSpec::StateType *this)
{
  result = *(this + 2);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 2) = 0;
  return result;
}

uint64_t CoreML::Specification::MILSpec::StateType::MergePartialFromCodedStream(CoreML::Specification::MILSpec::StateType *this, char **a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *a2;
      if (*a2 >= a2[1])
      {
        v6 = 0;
LABEL_6:
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2, v6);
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          break;
        }

        goto LABEL_7;
      }

      v6 = *v5;
      if (*v5 < 1)
      {
        goto LABEL_6;
      }

      *a2 = v5 + 1;
      v7 = v6 | 0x100000000;
      if ((v7 & 0x100000000) == 0)
      {
        break;
      }

LABEL_7:
      if (v7 != 10 || (v7 & 0xFFFFFFF8) != 8)
      {
        break;
      }

      v11 = *(this + 2);
      if (!v11)
      {
        operator new();
      }

      v12 = *a2;
      if (*a2 >= a2[1] || (VarintSizeAsIntFallback = *v12, (VarintSizeAsIntFallback & 0x80000000) != 0))
      {
        VarintSizeAsIntFallback = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(a2);
        if ((VarintSizeAsIntFallback & 0x80000000) != 0)
        {
          return 0;
        }
      }

      else
      {
        *a2 = v12 + 1;
      }

      v14 = google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(a2, VarintSizeAsIntFallback);
      if ((v14 & 0x8000000000000000) == 0)
      {
        v15 = v14;
        result = CoreML::Specification::MILSpec::ValueType::MergePartialFromCodedStream(v11, a2);
        if (!result)
        {
          return result;
        }

        if (google::protobuf::io::CodedInputStream::DecrementRecursionDepthAndPopLimit(a2, v15))
        {
          continue;
        }
      }

      return 0;
    }

    if (!v7 || (v7 & 7) == 4)
    {
      return 1;
    }

    if ((google::protobuf::internal::WireFormatLite::SkipField(a2, v7, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t *CoreML::Specification::MILSpec::StateType::SerializeWithCachedSizes(uint64_t *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  if (this != &CoreML::Specification::MILSpec::_StateType_default_instance_)
  {
    v5 = this[2];
    if (v5)
    {
      return google::protobuf::internal::WireFormatLite::WriteMessage(1, v5, a2, a4);
    }
  }

  return this;
}

CoreML::Specification::MILSpec::ValueType *CoreML::Specification::MILSpec::StateType::ByteSizeLong(CoreML::Specification::MILSpec::StateType *this)
{
  if (this == &CoreML::Specification::MILSpec::_StateType_default_instance_)
  {
    result = 0;
  }

  else
  {
    result = *(this + 2);
    if (result)
    {
      v3 = CoreML::Specification::MILSpec::ValueType::ByteSizeLong(result);
      result = (v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1);
    }
  }

  *(this + 6) = result;
  return result;
}

std::string *CoreML::Specification::MILSpec::StateType::CopyFrom(std::string *this, std::string *a2)
{
  if (a2 != this)
  {
    v4 = this;
    v5 = this->__r_.__value_.__r.__words[2];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v4->__r_.__value_.__r.__words[2] = 0;

    return CoreML::Specification::MILSpec::StateType::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t CoreML::Specification::MILSpec::StateType::Swap(uint64_t this, CoreML::Specification::MILSpec::StateType *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
  }

  return this;
}

uint64_t CoreML::Specification::MILSpec::StateType::InternalSwap(uint64_t this, CoreML::Specification::MILSpec::StateType *a2)
{
  v2 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v2;
  LODWORD(v2) = *(this + 24);
  *(this + 24) = *(a2 + 6);
  *(a2 + 6) = v2;
  return this;
}

CoreML::Specification::MILSpec::Dimension_ConstantDimension *CoreML::Specification::MILSpec::Dimension_ConstantDimension::Dimension_ConstantDimension(CoreML::Specification::MILSpec::Dimension_ConstantDimension *this, uint64_t a2, google::protobuf::Closure *a3)
{
  *this = &unk_2829FF750;
  *(this + 1) = 0;
  if (this != &CoreML::Specification::MILSpec::_Dimension_ConstantDimension_default_instance_)
  {
    CoreML::Specification::MILSpec::protobuf_MIL_2eproto::InitDefaults(this, a2, a3);
  }

  *(this + 2) = 0;
  *(this + 6) = 0;
  return this;
}

CoreML::Specification::MILSpec::Dimension_ConstantDimension *CoreML::Specification::MILSpec::Dimension_ConstantDimension::Dimension_ConstantDimension(CoreML::Specification::MILSpec::Dimension_ConstantDimension *this, const CoreML::Specification::MILSpec::Dimension_ConstantDimension *a2)
{
  *this = &unk_2829FF750;
  *(this + 1) = 0;
  *(this + 6) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  *(this + 2) = *(a2 + 2);
  return this;
}

void CoreML::Specification::MILSpec::Dimension_ConstantDimension::~Dimension_ConstantDimension(CoreML::Specification::MILSpec::Dimension_ConstantDimension *this)
{
  *this = &unk_2829FF750;
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  *this = &unk_2829FF750;
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  *this = &unk_2829FF750;
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);

  JUMPOUT(0x21CEAFEA0);
}

google::protobuf::Arena *google::protobuf::Arena::Own<CoreML::Specification::MILSpec::Dimension_ConstantDimension>(google::protobuf::Arena *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::Arena::AddListNode(result, a2, google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::Dimension_ConstantDimension>);
  }

  return result;
}

uint64_t CoreML::Specification::MILSpec::Dimension_ConstantDimension::SerializeWithCachedSizes(uint64_t this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v5 = *(this + 16);
  if (v5)
  {
    return google::protobuf::internal::WireFormatLite::WriteInt64(1, v5, a2, a4);
  }

  return this;
}

unint64_t CoreML::Specification::MILSpec::Dimension_ConstantDimension::ByteSizeLong(CoreML::Specification::MILSpec::Dimension_ConstantDimension *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v1 = ((9 * (__clz(v1 | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  *(this + 6) = v1;
  return v1;
}

std::string *CoreML::Specification::MILSpec::Dimension_ConstantDimension::CheckTypeAndMergeFrom(std::string *this, const google::protobuf::MessageLite *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(&this->__r_.__value_.__l.__size_, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 2);
  if (v5)
  {
    v3->__r_.__value_.__r.__words[2] = v5;
  }

  return this;
}

std::string *CoreML::Specification::MILSpec::Dimension_ConstantDimension::MergeFrom(std::string *this, const CoreML::Specification::MILSpec::Dimension_ConstantDimension *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(&this->__r_.__value_.__l.__size_, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 2);
  if (v5)
  {
    v3->__r_.__value_.__r.__words[2] = v5;
  }

  return this;
}

std::string *CoreML::Specification::MILSpec::Dimension_ConstantDimension::CopyFrom(std::string *this, std::string *a2)
{
  if (a2 != this)
  {
    v3 = this;
    this->__r_.__value_.__r.__words[2] = 0;
    size = a2->__r_.__value_.__l.__size_;
    if (size)
    {
      this = google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(&this->__r_.__value_.__l.__size_, size & 0xFFFFFFFFFFFFFFFELL);
    }

    v5 = a2->__r_.__value_.__r.__words[2];
    if (v5)
    {
      v3->__r_.__value_.__r.__words[2] = v5;
    }
  }

  return this;
}

CoreML::Specification::MILSpec::Dimension_UnknownDimension *CoreML::Specification::MILSpec::Dimension_UnknownDimension::Dimension_UnknownDimension(CoreML::Specification::MILSpec::Dimension_UnknownDimension *this, uint64_t a2, google::protobuf::Closure *a3)
{
  *this = &unk_2829FF7E8;
  *(this + 1) = 0;
  if (this != &CoreML::Specification::MILSpec::_Dimension_UnknownDimension_default_instance_)
  {
    CoreML::Specification::MILSpec::protobuf_MIL_2eproto::InitDefaults(this, a2, a3);
  }

  *(this + 16) = 0;
  *(this + 5) = 0;
  return this;
}

uint64_t CoreML::Specification::MILSpec::Dimension_UnknownDimension::SharedCtor(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 20) = 0;
  return this;
}

CoreML::Specification::MILSpec::Dimension_UnknownDimension *CoreML::Specification::MILSpec::Dimension_UnknownDimension::Dimension_UnknownDimension(CoreML::Specification::MILSpec::Dimension_UnknownDimension *this, const CoreML::Specification::MILSpec::Dimension_UnknownDimension *a2)
{
  *this = &unk_2829FF7E8;
  *(this + 1) = 0;
  *(this + 5) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  *(this + 16) = *(a2 + 16);
  return this;
}

void CoreML::Specification::MILSpec::Dimension_UnknownDimension::~Dimension_UnknownDimension(CoreML::Specification::MILSpec::Dimension_UnknownDimension *this)
{
  *this = &unk_2829FF7E8;
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  *this = &unk_2829FF7E8;
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  *this = &unk_2829FF7E8;
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);

  JUMPOUT(0x21CEAFEA0);
}

google::protobuf::Arena *google::protobuf::Arena::Own<CoreML::Specification::MILSpec::Dimension_UnknownDimension>(google::protobuf::Arena *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::Arena::AddListNode(result, a2, google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::Dimension_UnknownDimension>);
  }

  return result;
}

uint64_t CoreML::Specification::MILSpec::Dimension_UnknownDimension::SerializeWithCachedSizes(uint64_t this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16) == 1)
  {
    return google::protobuf::internal::WireFormatLite::WriteBool(1, 1u, a2, a4);
  }

  return this;
}

uint64_t CoreML::Specification::MILSpec::Dimension_UnknownDimension::ByteSizeLong(CoreML::Specification::MILSpec::Dimension_UnknownDimension *this)
{
  v1 = 2;
  if (!*(this + 16))
  {
    v1 = 0;
  }

  *(this + 5) = v1;
  return v1;
}

std::string *CoreML::Specification::MILSpec::Dimension_UnknownDimension::CheckTypeAndMergeFrom(std::string *this, const google::protobuf::MessageLite *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(&this->__r_.__value_.__l.__size_, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (*(a2 + 16) == 1)
  {
    v3->__r_.__value_.__s.__data_[16] = 1;
  }

  return this;
}

std::string *CoreML::Specification::MILSpec::Dimension_UnknownDimension::MergeFrom(std::string *this, const CoreML::Specification::MILSpec::Dimension_UnknownDimension *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(&this->__r_.__value_.__l.__size_, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (*(a2 + 16) == 1)
  {
    v3->__r_.__value_.__s.__data_[16] = 1;
  }

  return this;
}

std::string *CoreML::Specification::MILSpec::Dimension_UnknownDimension::CopyFrom(std::string *this, std::string *a2)
{
  if (a2 != this)
  {
    v3 = this;
    this->__r_.__value_.__s.__data_[16] = 0;
    size = a2->__r_.__value_.__l.__size_;
    if (size)
    {
      this = google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(&this->__r_.__value_.__l.__size_, size & 0xFFFFFFFFFFFFFFFELL);
    }

    if (a2->__r_.__value_.__s.__data_[16] == 1)
    {
      v3->__r_.__value_.__s.__data_[16] = 1;
    }
  }

  return this;
}

uint64_t CoreML::Specification::MILSpec::Dimension_UnknownDimension::Swap(uint64_t this, CoreML::Specification::MILSpec::Dimension_UnknownDimension *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v2;
    v3 = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v3;
  }

  return this;
}

uint64_t CoreML::Specification::MILSpec::Dimension_UnknownDimension::InternalSwap(uint64_t this, CoreML::Specification::MILSpec::Dimension_UnknownDimension *a2)
{
  v2 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v3;
  return this;
}

CoreML::Specification::MILSpec::Dimension *CoreML::Specification::MILSpec::Dimension::Dimension(CoreML::Specification::MILSpec::Dimension *this, uint64_t a2, google::protobuf::Closure *a3)
{
  *this = &unk_2829FF880;
  *(this + 1) = 0;
  if (this != &CoreML::Specification::MILSpec::_Dimension_default_instance_)
  {
    CoreML::Specification::MILSpec::protobuf_MIL_2eproto::InitDefaults(this, a2, a3);
  }

  *(this + 3) = 0;
  return this;
}

CoreML::Specification::MILSpec::Dimension *CoreML::Specification::MILSpec::Dimension::Dimension(CoreML::Specification::MILSpec::Dimension *this, const CoreML::Specification::MILSpec::Dimension *a2)
{
  *this = &unk_2829FF880;
  *(this + 1) = 0;
  *(this + 6) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  *(this + 7) = 0;
  v5 = *(a2 + 7);
  if (v5 == 1)
  {
    CoreML::Specification::MILSpec::Dimension::clear_dimension(this);
    *(this + 7) = 1;
    operator new();
  }

  if (v5 == 2)
  {
    CoreML::Specification::MILSpec::Dimension::clear_dimension(this);
    *(this + 7) = 2;
    operator new();
  }

  return this;
}

void sub_218560ED8(_Unwind_Exception *a1)
{
  MEMORY[0x21CEAFEA0](v2, 0x1081C40E1DA5700);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

void CoreML::Specification::MILSpec::Dimension::~Dimension(CoreML::Specification::MILSpec::Dimension *this)
{
  *this = &unk_2829FF880;
  if (*(this + 7))
  {
    CoreML::Specification::MILSpec::Dimension::clear_dimension(this);
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  CoreML::Specification::MILSpec::Dimension::~Dimension(this);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t CoreML::Specification::MILSpec::Dimension::SharedDtor(uint64_t this)
{
  if (*(this + 28))
  {
    return CoreML::Specification::MILSpec::Dimension::clear_dimension(this);
  }

  return this;
}

uint64_t CoreML::Specification::MILSpec::Dimension::clear_dimension(uint64_t this)
{
  v1 = this;
  v2 = *(this + 28);
  if (v2 == 2 || v2 == 1)
  {
    this = *(this + 16);
    if (this)
    {
      this = (*(*this + 8))(this);
    }
  }

  *(v1 + 28) = 0;
  return this;
}

google::protobuf::Arena *google::protobuf::Arena::Own<CoreML::Specification::MILSpec::Dimension>(google::protobuf::Arena *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::Arena::AddListNode(result, a2, google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::Dimension>);
  }

  return result;
}

uint64_t CoreML::Specification::MILSpec::Dimension::MergePartialFromCodedStream(CoreML::Specification::MILSpec::Dimension *this, char **a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *a2;
      if (*a2 >= a2[1])
      {
        v6 = 0;
LABEL_6:
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2, v6);
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_7;
      }

      v6 = *v5;
      if (*v5 < 1)
      {
        goto LABEL_6;
      }

      *a2 = v5 + 1;
      v7 = v6 | 0x100000000;
      if ((v7 & 0x100000000) == 0)
      {
        goto LABEL_18;
      }

LABEL_7:
      if (v7 >> 3 != 2)
      {
        break;
      }

      if (v7 != 18)
      {
        goto LABEL_18;
      }

      if (*(this + 7) != 2)
      {
        CoreML::Specification::MILSpec::Dimension::clear_dimension(this);
        *(this + 7) = 2;
        operator new();
      }

      v11 = *(this + 2);
      v15 = *a2;
      if (*a2 >= a2[1] || (VarintSizeAsIntFallback = *v15, (VarintSizeAsIntFallback & 0x80000000) != 0))
      {
        VarintSizeAsIntFallback = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(a2);
        if ((VarintSizeAsIntFallback & 0x80000000) != 0)
        {
          return 0;
        }
      }

      else
      {
        *a2 = v15 + 1;
      }

      v20 = google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(a2, VarintSizeAsIntFallback);
      if ((v20 & 0x8000000000000000) != 0)
      {
        return 0;
      }

      v18 = v20;
      result = CoreML::Specification::MILSpec::Dimension_UnknownDimension::MergePartialFromCodedStream(v11, a2);
      if (!result)
      {
        return result;
      }

LABEL_39:
      if ((google::protobuf::io::CodedInputStream::DecrementRecursionDepthAndPopLimit(a2, v18) & 1) == 0)
      {
        return 0;
      }
    }

    if (v7 >> 3 == 1 && v7 == 10)
    {
      if (*(this + 7) != 1)
      {
        CoreML::Specification::MILSpec::Dimension::clear_dimension(this);
        *(this + 7) = 1;
        operator new();
      }

      v10 = *(this + 2);
      v13 = *a2;
      if (*a2 >= a2[1] || (v14 = *v13, (v14 & 0x80000000) != 0))
      {
        v14 = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(a2);
        if ((v14 & 0x80000000) != 0)
        {
          return 0;
        }
      }

      else
      {
        *a2 = v13 + 1;
      }

      v17 = google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(a2, v14);
      if ((v17 & 0x8000000000000000) != 0)
      {
        return 0;
      }

      v18 = v17;
      result = CoreML::Specification::MILSpec::Dimension_ConstantDimension::MergePartialFromCodedStream(v10, a2);
      if (!result)
      {
        return result;
      }

      goto LABEL_39;
    }

LABEL_18:
    if (!v7 || (v7 & 7) == 4)
    {
      return 1;
    }

    if ((google::protobuf::internal::WireFormatLite::SkipField(a2, v7, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreML::Specification::MILSpec::Dimension::SerializeWithCachedSizes(uint64_t this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if (v6 == 1)
  {
    this = google::protobuf::internal::WireFormatLite::WriteMessage(1, *(this + 16), a2, a4);
    v6 = *(v5 + 28);
  }

  if (v6 == 2)
  {
    v7 = *(v5 + 16);

    return google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return this;
}

unint64_t CoreML::Specification::MILSpec::Dimension::ByteSizeLong(CoreML::Specification::MILSpec::Dimension *this)
{
  v1 = *(this + 7);
  if (v1 == 2)
  {
    v4 = *(this + 2);
    v3 = 2;
    if (!*(v4 + 16))
    {
      v3 = 0;
    }

    *(v4 + 20) = v3;
  }

  else
  {
    if (v1 != 1)
    {
      v5 = 0;
      goto LABEL_11;
    }

    v2 = *(this + 2);
    v3 = *(v2 + 16);
    if (v3)
    {
      v3 = ((9 * (__clz(v3 | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    *(v2 + 24) = v3;
  }

  v5 = v3 + 2;
LABEL_11:
  *(this + 6) = v5;
  return v5;
}

std::string *CoreML::Specification::MILSpec::Dimension::CopyFrom(std::string *this, std::string *a2)
{
  if (a2 != this)
  {
    v4 = this;
    CoreML::Specification::MILSpec::Dimension::clear_dimension(this);

    return CoreML::Specification::MILSpec::Dimension::MergeFrom(v4, a2);
  }

  return this;
}

CoreML::Specification::MILSpec::Value_ImmediateValue *CoreML::Specification::MILSpec::Value_ImmediateValue::Value_ImmediateValue(CoreML::Specification::MILSpec::Value_ImmediateValue *this, uint64_t a2, google::protobuf::Closure *a3)
{
  *this = &unk_2829FF918;
  *(this + 1) = 0;
  if (this != &CoreML::Specification::MILSpec::_Value_ImmediateValue_default_instance_)
  {
    CoreML::Specification::MILSpec::protobuf_MIL_2eproto::InitDefaults(this, a2, a3);
  }

  *(this + 3) = 0;
  return this;
}

CoreML::Specification::MILSpec::Value_ImmediateValue *CoreML::Specification::MILSpec::Value_ImmediateValue::Value_ImmediateValue(CoreML::Specification::MILSpec::Value_ImmediateValue *this, const CoreML::Specification::MILSpec::Value_ImmediateValue *a2)
{
  *this = &unk_2829FF918;
  *(this + 1) = 0;
  *(this + 6) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  *(this + 7) = 0;
  v5 = *(a2 + 7);
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      CoreML::Specification::MILSpec::Value_ImmediateValue::clear_value(this);
      *(this + 7) = 3;
      operator new();
    }

    if (v5 == 4)
    {
      CoreML::Specification::MILSpec::Value_ImmediateValue::clear_value(this);
      *(this + 7) = 4;
      operator new();
    }
  }

  else
  {
    if (v5 == 1)
    {
      CoreML::Specification::MILSpec::Value_ImmediateValue::clear_value(this);
      *(this + 7) = 1;
      operator new();
    }

    if (v5 == 2)
    {
      CoreML::Specification::MILSpec::Value_ImmediateValue::clear_value(this);
      *(this + 7) = 2;
      operator new();
    }
  }

  return this;
}

void sub_218561718(_Unwind_Exception *a1)
{
  MEMORY[0x21CEAFEA0](v2, 0x10A1C40290C9B23);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

google::protobuf::Arena **CoreML::Specification::MILSpec::TensorValue::MergeFrom(google::protobuf::Arena **this, const CoreML::Specification::MILSpec::TensorValue *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 7);
  if (v5 <= 3)
  {
    switch(v5)
    {
      case 1:
        if (*(v3 + 28) != 1)
        {
          CoreML::Specification::MILSpec::TensorValue::clear_value(v3);
          *(v3 + 28) = 1;
          operator new();
        }

        v6 = *(a2 + 2);
        v11 = *(v3 + 16);

        break;
      case 2:
        if (*(v3 + 28) != 2)
        {
          CoreML::Specification::MILSpec::TensorValue::clear_value(v3);
          *(v3 + 28) = 2;
          operator new();
        }

        v6 = *(a2 + 2);
        v11 = *(v3 + 16);

        break;
      case 3:
        if (*(v3 + 28) != 3)
        {
          CoreML::Specification::MILSpec::TensorValue::clear_value(v3);
          *(v3 + 28) = 3;
          operator new();
        }

        v10 = *(a2 + 2);
        v15 = *(v3 + 16);

        return CoreML::Specification::MILSpec::TensorValue_RepeatedBools::MergeFrom(v15, v10);
      default:
        return this;
    }

    return CoreML::Specification::MILSpec::TensorValue_RepeatedFloats::MergeFrom(v11, v6);
  }

  if (v5 > 5)
  {
    if (v5 == 6)
    {
      if (*(v3 + 28) != 6)
      {
        CoreML::Specification::MILSpec::TensorValue::clear_value(v3);
        *(v3 + 28) = 6;
        operator new();
      }

      v8 = *(a2 + 2);
      v13 = *(v3 + 16);

      return CoreML::Specification::MILSpec::TensorValue_RepeatedDoubles::MergeFrom(v13, v8);
    }

    if (v5 == 7)
    {
      if (*(v3 + 28) != 7)
      {
        CoreML::Specification::MILSpec::TensorValue::clear_value(v3);
        *(v3 + 28) = 7;
        operator new();
      }

      v9 = *(a2 + 2);
      v14 = *(v3 + 16);

      return CoreML::Specification::MILSpec::TensorValue_RepeatedBytes::MergeFrom(v14, v9);
    }
  }

  else
  {
    if (v5 != 4)
    {
      if (*(v3 + 28) != 5)
      {
        CoreML::Specification::MILSpec::TensorValue::clear_value(v3);
        *(v3 + 28) = 5;
        operator new();
      }

      v8 = *(a2 + 2);
      v13 = *(v3 + 16);

      return CoreML::Specification::MILSpec::TensorValue_RepeatedDoubles::MergeFrom(v13, v8);
    }

    if (*(v3 + 28) != 4)
    {
      CoreML::Specification::MILSpec::TensorValue::clear_value(v3);
      *(v3 + 28) = 4;
      operator new();
    }

    v7 = *(a2 + 2);
    v12 = *(v3 + 16);

    return CoreML::Specification::MILSpec::TensorValue_RepeatedStrings::MergeFrom(v12, v7);
  }

  return this;
}

uint64_t CoreML::Specification::MILSpec::TupleValue::MergeFrom(uint64_t this, const CoreML::Specification::MILSpec::TupleValue *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom((this + 8), v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16), v5);
    this = google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::Value>::TypeHandler>(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
    v8 = *(v3 + 24) + v5;
    *(v3 + 24) = v8;
    v9 = *(v3 + 32);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  return this;
}

std::string *CoreML::Specification::MILSpec::DictionaryValue::MergeFrom(std::string *this, const CoreML::Specification::MILSpec::DictionaryValue *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(&this->__r_.__value_.__l.__size_, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(&v3->__r_.__value_.__r.__words[2], v5);
    this = google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair>::TypeHandler>(&v3->__r_.__value_.__r.__words[2], v7, (v6 + 8), v5, *v3[1].__r_.__value_.__l.__size_ - LODWORD(v3[1].__r_.__value_.__l.__data_));
    v8 = LODWORD(v3[1].__r_.__value_.__l.__data_) + v5;
    LODWORD(v3[1].__r_.__value_.__l.__data_) = v8;
    size = v3[1].__r_.__value_.__l.__size_;
    if (*size < v8)
    {
      *size = v8;
    }
  }

  return this;
}

void CoreML::Specification::MILSpec::Value_ImmediateValue::~Value_ImmediateValue(CoreML::Specification::MILSpec::Value_ImmediateValue *this)
{
  *this = &unk_2829FF918;
  if (*(this + 7))
  {
    CoreML::Specification::MILSpec::Value_ImmediateValue::clear_value(this);
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  CoreML::Specification::MILSpec::Value_ImmediateValue::~Value_ImmediateValue(this);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t CoreML::Specification::MILSpec::Value_ImmediateValue::SharedDtor(uint64_t this)
{
  if (*(this + 28))
  {
    return CoreML::Specification::MILSpec::Value_ImmediateValue::clear_value(this);
  }

  return this;
}

uint64_t CoreML::Specification::MILSpec::Value_ImmediateValue::clear_value(uint64_t this)
{
  v1 = this;
  v2 = *(this + 28);
  if (v2 > 2)
  {
    if (v2 != 3 && v2 != 4)
    {
      goto LABEL_9;
    }
  }

  else if (v2 != 1 && v2 != 2)
  {
    goto LABEL_9;
  }

  this = *(this + 16);
  if (this)
  {
    this = (*(*this + 8))(this);
  }

LABEL_9:
  *(v1 + 28) = 0;
  return this;
}

google::protobuf::Arena *google::protobuf::Arena::Own<CoreML::Specification::MILSpec::Value_ImmediateValue>(google::protobuf::Arena *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::Arena::AddListNode(result, a2, google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::Value_ImmediateValue>);
  }

  return result;
}

uint64_t CoreML::Specification::MILSpec::Value_ImmediateValue::MergePartialFromCodedStream(CoreML::Specification::MILSpec::Value_ImmediateValue *this, char **a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *a2;
      if (*a2 >= a2[1])
      {
        v6 = 0;
LABEL_6:
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2, v6);
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_7;
      }

      v6 = *v5;
      if (*v5 < 1)
      {
        goto LABEL_6;
      }

      *a2 = v5 + 1;
      v7 = v6 | 0x100000000;
      if ((v7 & 0x100000000) == 0)
      {
        goto LABEL_27;
      }

LABEL_7:
      v9 = v7 >> 3;
      if (v7 >> 3 <= 2)
      {
        break;
      }

      if (v9 == 3)
      {
        if (v7 != 26)
        {
          goto LABEL_27;
        }

        if (*(this + 7) != 3)
        {
          CoreML::Specification::MILSpec::Value_ImmediateValue::clear_value(this);
          *(this + 7) = 3;
          operator new();
        }

        v14 = *(this + 2);
        v22 = *a2;
        if (*a2 >= a2[1] || (VarintSizeAsIntFallback = *v22, (VarintSizeAsIntFallback & 0x80000000) != 0))
        {
          VarintSizeAsIntFallback = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(a2);
          if ((VarintSizeAsIntFallback & 0x80000000) != 0)
          {
            return 0;
          }
        }

        else
        {
          *a2 = v22 + 1;
        }

        v31 = google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(a2, VarintSizeAsIntFallback);
        if ((v31 & 0x8000000000000000) != 0)
        {
          return 0;
        }

        v25 = v31;
        result = CoreML::Specification::MILSpec::ListValue::MergePartialFromCodedStream(v14, a2);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        if (v9 != 4 || v7 != 34)
        {
          goto LABEL_27;
        }

        if (*(this + 7) != 4)
        {
          CoreML::Specification::MILSpec::Value_ImmediateValue::clear_value(this);
          *(this + 7) = 4;
          operator new();
        }

        v12 = *(this + 2);
        v18 = *a2;
        if (*a2 >= a2[1] || (v19 = *v18, (v19 & 0x80000000) != 0))
        {
          v19 = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(a2);
          if ((v19 & 0x80000000) != 0)
          {
            return 0;
          }
        }

        else
        {
          *a2 = v18 + 1;
        }

        v27 = google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(a2, v19);
        if ((v27 & 0x8000000000000000) != 0)
        {
          return 0;
        }

        v25 = v27;
        result = CoreML::Specification::MILSpec::DictionaryValue::MergePartialFromCodedStream(v12, a2, v28);
        if (!result)
        {
          return result;
        }
      }

LABEL_64:
      if ((google::protobuf::io::CodedInputStream::DecrementRecursionDepthAndPopLimit(a2, v25) & 1) == 0)
      {
        return 0;
      }
    }

    if (v9 == 1)
    {
      if (v7 != 10)
      {
        goto LABEL_27;
      }

      if (*(this + 7) != 1)
      {
        CoreML::Specification::MILSpec::Value_ImmediateValue::clear_value(this);
        *(this + 7) = 1;
        operator new();
      }

      v13 = *(this + 2);
      v20 = *a2;
      if (*a2 >= a2[1] || (v21 = *v20, (v21 & 0x80000000) != 0))
      {
        v21 = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(a2);
        if ((v21 & 0x80000000) != 0)
        {
          return 0;
        }
      }

      else
      {
        *a2 = v20 + 1;
      }

      v29 = google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(a2, v21);
      if ((v29 & 0x8000000000000000) != 0)
      {
        return 0;
      }

      v25 = v29;
      result = CoreML::Specification::MILSpec::TensorValue::MergePartialFromCodedStream(v13, a2, v30);
      if (!result)
      {
        return result;
      }

      goto LABEL_64;
    }

    if (v9 == 2 && v7 == 18)
    {
      if (*(this + 7) != 2)
      {
        CoreML::Specification::MILSpec::Value_ImmediateValue::clear_value(this);
        *(this + 7) = 2;
        operator new();
      }

      v11 = *(this + 2);
      v16 = *a2;
      if (*a2 >= a2[1] || (v17 = *v16, (v17 & 0x80000000) != 0))
      {
        v17 = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(a2);
        if ((v17 & 0x80000000) != 0)
        {
          return 0;
        }
      }

      else
      {
        *a2 = v16 + 1;
      }

      v24 = google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(a2, v17);
      if ((v24 & 0x8000000000000000) != 0)
      {
        return 0;
      }

      v25 = v24;
      result = CoreML::Specification::MILSpec::TupleValue::MergePartialFromCodedStream(v11, a2);
      if (!result)
      {
        return result;
      }

      goto LABEL_64;
    }

LABEL_27:
    if (!v7 || (v7 & 7) == 4)
    {
      return 1;
    }

    if ((google::protobuf::internal::WireFormatLite::SkipField(a2, v7, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreML::Specification::MILSpec::Value_ImmediateValue::SerializeWithCachedSizes(uint64_t this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if (v6 == 1)
  {
    this = google::protobuf::internal::WireFormatLite::WriteMessage(1, *(this + 16), a2, a4);
    v6 = *(v5 + 28);
  }

  if (v6 == 2)
  {
    this = google::protobuf::internal::WireFormatLite::WriteMessage(2, *(v5 + 16), a2, a4);
    v6 = *(v5 + 28);
  }

  if (v6 == 3)
  {
    this = google::protobuf::internal::WireFormatLite::WriteMessage(3, *(v5 + 16), a2, a4);
    v6 = *(v5 + 28);
  }

  if (v6 == 4)
  {
    v7 = *(v5 + 16);

    return google::protobuf::internal::WireFormatLite::WriteMessage(4, v7, a2, a4);
  }

  return this;
}

uint64_t CoreML::Specification::MILSpec::Value_ImmediateValue::ByteSizeLong(CoreML::Specification::MILSpec::Value_ImmediateValue *this)
{
  result = 0;
  v3 = *(this + 7);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v4 = CoreML::Specification::MILSpec::ListValue::ByteSizeLong(*(this + 2));
      goto LABEL_10;
    }

    if (v3 == 4)
    {
      v4 = CoreML::Specification::MILSpec::DictionaryValue::ByteSizeLong(*(this + 2));
      goto LABEL_10;
    }
  }

  else
  {
    if (v3 == 1)
    {
      v4 = CoreML::Specification::MILSpec::TensorValue::ByteSizeLong(*(this + 2));
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      v4 = CoreML::Specification::MILSpec::TupleValue::ByteSizeLong(*(this + 2));
LABEL_10:
      result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  *(this + 6) = result;
  return result;
}

std::string *CoreML::Specification::MILSpec::Value_ImmediateValue::MergeFrom(std::string *this, const CoreML::Specification::MILSpec::Value_ImmediateValue *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(&this->__r_.__value_.__l.__size_, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 7);
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      if (*(v3 + 28) != 3)
      {
        CoreML::Specification::MILSpec::Value_ImmediateValue::clear_value(v3);
        *(v3 + 28) = 3;
        operator new();
      }

      v6 = *(a2 + 2);
      v9 = *(v3 + 16);

      return CoreML::Specification::MILSpec::TupleValue::MergeFrom(v9, v6);
    }

    if (v5 == 4)
    {
      if (*(v3 + 28) != 4)
      {
        CoreML::Specification::MILSpec::Value_ImmediateValue::clear_value(v3);
        *(v3 + 28) = 4;
        operator new();
      }

      v7 = *(a2 + 2);
      v10 = *(v3 + 16);

      return CoreML::Specification::MILSpec::DictionaryValue::MergeFrom(v10, v7);
    }
  }

  else if (v5 == 1)
  {
    if (*(v3 + 28) != 1)
    {
      CoreML::Specification::MILSpec::Value_ImmediateValue::clear_value(v3);
      *(v3 + 28) = 1;
      operator new();
    }

    v8 = *(a2 + 2);
    v11 = *(v3 + 16);

    return CoreML::Specification::MILSpec::TensorValue::MergeFrom(v11, v8);
  }

  else if (v5 == 2)
  {
    if (*(v3 + 28) != 2)
    {
      CoreML::Specification::MILSpec::Value_ImmediateValue::clear_value(v3);
      *(v3 + 28) = 2;
      operator new();
    }

    v6 = *(a2 + 2);
    v9 = *(v3 + 16);

    return CoreML::Specification::MILSpec::TupleValue::MergeFrom(v9, v6);
  }

  return this;
}

std::string *CoreML::Specification::MILSpec::Value_ImmediateValue::CopyFrom(std::string *this, std::string *a2)
{
  if (a2 != this)
  {
    v4 = this;
    CoreML::Specification::MILSpec::Value_ImmediateValue::clear_value(this);

    return CoreML::Specification::MILSpec::Value_ImmediateValue::MergeFrom(v4, a2);
  }

  return this;
}

CoreML::Specification::MILSpec::Value_BlobFileValue *CoreML::Specification::MILSpec::Value_BlobFileValue::Value_BlobFileValue(CoreML::Specification::MILSpec::Value_BlobFileValue *this, uint64_t a2, google::protobuf::Closure *a3)
{
  *this = &unk_2829FF9B0;
  *(this + 1) = 0;
  if (this != &CoreML::Specification::MILSpec::_Value_BlobFileValue_default_instance_)
  {
    CoreML::Specification::MILSpec::protobuf_MIL_2eproto::InitDefaults(this, a2, a3);
  }

  *(this + 2) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 3) = 0;
  *(this + 8) = 0;
  return this;
}

CoreML::Specification::MILSpec::Value_BlobFileValue *CoreML::Specification::MILSpec::Value_BlobFileValue::Value_BlobFileValue(CoreML::Specification::MILSpec::Value_BlobFileValue *this, const CoreML::Specification::MILSpec::Value_BlobFileValue *a2)
{
  *this = &unk_2829FF9B0;
  *(this + 1) = 0;
  *(this + 8) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  *(this + 2) = &google::protobuf::internal::fixed_address_empty_string;
  v5 = *(a2 + 2);
  v6 = *(v5 + 23);
  if (v6 < 0)
  {
    v6 = *(v5 + 8);
  }

  if (v5 != &google::protobuf::internal::fixed_address_empty_string && v6 != 0)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena();
  }

  *(this + 3) = *(a2 + 3);
  return this;
}

void CoreML::Specification::MILSpec::Value_BlobFileValue::~Value_BlobFileValue(CoreML::Specification::MILSpec::Value_BlobFileValue *this)
{
  *this = &unk_2829FF9B0;
  v1 = (this + 8);
  CoreML::Specification::MILSpec::Value_BlobFileValue::SharedDtor(this);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
}

{
  *this = &unk_2829FF9B0;
  v1 = (this + 8);
  CoreML::Specification::MILSpec::Value_BlobFileValue::SharedDtor(this);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
}

{
  *this = &unk_2829FF9B0;
  v1 = (this + 8);
  CoreML::Specification::MILSpec::Value_BlobFileValue::SharedDtor(this);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t CoreML::Specification::MILSpec::Value_BlobFileValue::SharedDtor(uint64_t this)
{
  v1 = *(this + 16);
  if (v1 != &google::protobuf::internal::fixed_address_empty_string && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x21CEAFEA0);
  }

  return this;
}

google::protobuf::Arena *google::protobuf::Arena::Own<CoreML::Specification::MILSpec::Value_BlobFileValue>(google::protobuf::Arena *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::Arena::AddListNode(result, a2, google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::Value_BlobFileValue>);
  }

  return result;
}

uint64_t CoreML::Specification::MILSpec::Value_BlobFileValue::Clear(uint64_t this)
{
  v1 = *(this + 16);
  if (v1 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v1 + 23) < 0)
    {
      **v1 = 0;
      *(v1 + 8) = 0;
    }

    else
    {
      *v1 = 0;
      *(v1 + 23) = 0;
    }
  }

  *(this + 24) = 0;
  return this;
}

uint64_t CoreML::Specification::MILSpec::Value_BlobFileValue::SerializeWithCachedSizes(CoreML::Specification::MILSpec::Value_BlobFileValue *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  result = *(this + 2);
  v7 = *(result + 23);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      goto LABEL_7;
    }

    result = *result;
    goto LABEL_6;
  }

  if (*(result + 23))
  {
LABEL_6:
    google::protobuf::internal::WireFormatLite::VerifyUtf8String(result, v7, 1, "CoreML.Specification.MILSpec.Value.BlobFileValue.fileName");
    result = google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(1, *(this + 2), a2);
  }

LABEL_7:
  v8 = *(this + 3);
  if (v8)
  {

    return google::protobuf::internal::WireFormatLite::WriteInt64(2, v8, a2, a4);
  }

  return result;
}

uint64_t CoreML::Specification::MILSpec::Value_BlobFileValue::ByteSizeLong(CoreML::Specification::MILSpec::Value_BlobFileValue *this)
{
  v1 = *(this + 2);
  v2 = *(v1 + 23);
  if (v2 < 0)
  {
    if (*(v1 + 8))
    {
      goto LABEL_3;
    }

LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  if (!*(v1 + 23))
  {
    goto LABEL_7;
  }

LABEL_3:
  v3 = *(v1 + 8);
  if (v2 >= 0)
  {
    v3 = v2;
  }

  v4 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_8:
  v5 = *(this + 3);
  if (v5)
  {
    v4 += ((9 * (__clz(v5 | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  *(this + 8) = v4;
  return v4;
}

std::string *CoreML::Specification::MILSpec::Value_BlobFileValue::MergeFrom(std::string *this, const CoreML::Specification::MILSpec::Value_BlobFileValue *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(&this->__r_.__value_.__l.__size_, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 2);
  v6 = *(v5 + 23);
  if (v6 < 0)
  {
    v6 = *(v5 + 8);
  }

  if (v6)
  {
    this = &v3->__r_.__value_.__r.__words[2];
    v7 = v3->__r_.__value_.__r.__words[2];
    if (v7 != v5)
    {
      if (v7 == &google::protobuf::internal::fixed_address_empty_string)
      {
        google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena();
      }

      this = std::string::operator=(v3->__r_.__value_.__r.__words[2], v5);
    }
  }

  v8 = *(a2 + 3);
  if (v8)
  {
    v3[1].__r_.__value_.__r.__words[0] = v8;
  }

  return this;
}

std::string *CoreML::Specification::MILSpec::Value_BlobFileValue::CopyFrom(std::string *this, const CoreML::Specification::MILSpec::Value_BlobFileValue *a2)
{
  if (a2 != this)
  {
    v2 = this->__r_.__value_.__r.__words[2];
    if (v2 != &google::protobuf::internal::fixed_address_empty_string)
    {
      if (*(v2 + 23) < 0)
      {
        **v2 = 0;
        *(v2 + 8) = 0;
      }

      else
      {
        *v2 = 0;
        *(v2 + 23) = 0;
      }
    }

    this[1].__r_.__value_.__r.__words[0] = 0;
    return CoreML::Specification::MILSpec::Value_BlobFileValue::MergeFrom(this, a2);
  }

  return this;
}

uint64_t CoreML::Specification::MILSpec::Value_BlobFileValue::Swap(uint64_t this, CoreML::Specification::MILSpec::Value_BlobFileValue *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    v3 = *(this + 24);
    v4 = *(a2 + 3);
    *(this + 16) = *(a2 + 2);
    *(this + 24) = v4;
    *(a2 + 2) = v2;
    *(a2 + 3) = v3;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
  }

  return this;
}

uint64_t CoreML::Specification::MILSpec::Value_BlobFileValue::InternalSwap(uint64_t this, CoreML::Specification::MILSpec::Value_BlobFileValue *a2)
{
  v2 = *(this + 16);
  v3 = *(this + 24);
  v4 = *(a2 + 3);
  *(this + 16) = *(a2 + 2);
  *(this + 24) = v4;
  *(a2 + 2) = v2;
  *(a2 + 3) = v3;
  LODWORD(v2) = *(this + 32);
  *(this + 32) = *(a2 + 8);
  *(a2 + 8) = v2;
  return this;
}

CoreML::Specification::MILSpec::Value *CoreML::Specification::MILSpec::Value::Value(CoreML::Specification::MILSpec::Value *this, uint64_t a2, google::protobuf::Closure *a3)
{
  *this = &unk_2829FFA48;
  *(this + 1) = 0;
  if (this != &CoreML::Specification::MILSpec::_Value_default_instance_)
  {
    CoreML::Specification::MILSpec::protobuf_MIL_2eproto::InitDefaults(this, a2, a3);
  }

  *(this + 2) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 3) = 0;
  *(this + 5) = 0;
  return this;
}

void *CoreML::Specification::MILSpec::Value::SharedCtor(void *this)
{
  this[2] = &google::protobuf::internal::fixed_address_empty_string;
  this[3] = 0;
  this[5] = 0;
  return this;
}

CoreML::Specification::MILSpec::Value *CoreML::Specification::MILSpec::Value::Value(CoreML::Specification::MILSpec::Value *this, const CoreML::Specification::MILSpec::Value *a2)
{
  *this = &unk_2829FFA48;
  *(this + 1) = 0;
  *(this + 10) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  *(this + 2) = &google::protobuf::internal::fixed_address_empty_string;
  v5 = *(a2 + 2);
  v6 = *(v5 + 23);
  if (v6 < 0)
  {
    v6 = *(v5 + 8);
  }

  if (v5 != &google::protobuf::internal::fixed_address_empty_string && v6 != 0)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena();
  }

  if (a2 != &CoreML::Specification::MILSpec::_Value_default_instance_ && *(a2 + 3))
  {
    operator new();
  }

  *(this + 3) = 0;
  *(this + 11) = 0;
  v8 = *(a2 + 11);
  if (v8 == 5)
  {
    CoreML::Specification::MILSpec::Value::clear_value(this);
    *(this + 11) = 5;
    operator new();
  }

  if (v8 == 3)
  {
    CoreML::Specification::MILSpec::Value::clear_value(this);
    *(this + 11) = 3;
    operator new();
  }

  return this;
}

void sub_218562FB4(_Unwind_Exception *a1)
{
  MEMORY[0x21CEAFEA0](v2, 0x10A1C4056DF9CA5);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

void CoreML::Specification::MILSpec::Value::~Value(CoreML::Specification::MILSpec::Value *this)
{
  *this = &unk_2829FFA48;
  CoreML::Specification::MILSpec::Value::SharedDtor(this);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  CoreML::Specification::MILSpec::Value::~Value(this);

  JUMPOUT(0x21CEAFEA0);
}

void *CoreML::Specification::MILSpec::Value::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[2];
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x21CEAFEA0](v2, 0x1012C40EC159624);
  }

  if (v1 != &CoreML::Specification::MILSpec::_Value_default_instance_)
  {
    this = *(v1 + 24);
    if (this)
    {
      this = (*(*this + 8))(this);
    }
  }

  if (*(v1 + 44))
  {

    return CoreML::Specification::MILSpec::Value::clear_value(v1);
  }

  return this;
}

uint64_t CoreML::Specification::MILSpec::Value::clear_value(uint64_t this)
{
  v1 = this;
  v2 = *(this + 44);
  if (v2 == 5 || v2 == 3)
  {
    this = *(this + 32);
    if (this)
    {
      this = (*(*this + 8))(this);
    }
  }

  *(v1 + 44) = 0;
  return this;
}

google::protobuf::Arena *google::protobuf::Arena::Own<CoreML::Specification::MILSpec::Value>(google::protobuf::Arena *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::Arena::AddListNode(result, a2, google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::Value>);
  }

  return result;
}

uint64_t CoreML::Specification::MILSpec::Value::Clear(CoreML::Specification::MILSpec::Value *this)
{
  v2 = *(this + 2);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
    }
  }

  v3 = *(this + 3);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 3) = 0;

  return CoreML::Specification::MILSpec::Value::clear_value(this);
}

uint64_t CoreML::Specification::MILSpec::Value::MergePartialFromCodedStream(CoreML::Specification::MILSpec::Value *this, char **a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *a2;
        if (*a2 >= a2[1])
        {
          v6 = 0;
LABEL_6:
          TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2, v6);
          v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
          if ((v7 & 0x100000000) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_7;
        }

        v6 = *v5;
        if (*v5 < 1)
        {
          goto LABEL_6;
        }

        *a2 = v5 + 1;
        v7 = v6 | 0x100000000;
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_35;
        }

LABEL_7:
        v9 = v7 >> 3;
        if (v7 >> 3 <= 2)
        {
          break;
        }

        if (v9 == 3)
        {
          if (v7 != 26)
          {
            goto LABEL_35;
          }

          if (*(this + 11) != 3)
          {
            CoreML::Specification::MILSpec::Value::clear_value(this);
            *(this + 11) = 3;
            operator new();
          }

          v19 = *(this + 4);
          v23 = *a2;
          if (*a2 >= a2[1] || (VarintSizeAsIntFallback = *v23, (VarintSizeAsIntFallback & 0x80000000) != 0))
          {
            VarintSizeAsIntFallback = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(a2);
            if ((VarintSizeAsIntFallback & 0x80000000) != 0)
            {
              return 0;
            }
          }

          else
          {
            *a2 = v23 + 1;
          }

          v28 = google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(a2, VarintSizeAsIntFallback);
          if ((v28 & 0x8000000000000000) != 0)
          {
            return 0;
          }

          v26 = v28;
          result = CoreML::Specification::MILSpec::Value_ImmediateValue::MergePartialFromCodedStream(v19, a2, v29);
          if (!result)
          {
            return result;
          }
        }

        else
        {
          if (v9 != 5 || v7 != 42)
          {
            goto LABEL_35;
          }

          if (*(this + 11) != 5)
          {
            CoreML::Specification::MILSpec::Value::clear_value(this);
            *(this + 11) = 5;
            operator new();
          }

          v14 = *(this + 4);
          v21 = *a2;
          if (*a2 >= a2[1] || (v22 = *v21, (v22 & 0x80000000) != 0))
          {
            v22 = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(a2);
            if ((v22 & 0x80000000) != 0)
            {
              return 0;
            }
          }

          else
          {
            *a2 = v21 + 1;
          }

          v27 = google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(a2, v22);
          if ((v27 & 0x8000000000000000) != 0)
          {
            return 0;
          }

          v26 = v27;
          result = CoreML::Specification::MILSpec::Value_BlobFileValue::MergePartialFromCodedStream(v14, a2);
          if (!result)
          {
            return result;
          }
        }

LABEL_60:
        if ((google::protobuf::io::CodedInputStream::DecrementRecursionDepthAndPopLimit(a2, v26) & 1) == 0)
        {
          return 0;
        }
      }

      if (v9 != 1)
      {
        break;
      }

      if (v7 != 10)
      {
        goto LABEL_35;
      }

      v15 = *(this + 2);
      if (v15 == &google::protobuf::internal::fixed_address_empty_string)
      {
        google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena();
      }

      result = google::protobuf::internal::WireFormatLite::ReadBytes(a2, v15);
      if (!result)
      {
        return result;
      }

      v17 = *(this + 2);
      v18 = v17[23];
      if ((v18 & 0x8000000000000000) != 0)
      {
        v17 = *v17;
        v18 = *(*(this + 2) + 8);
      }

      if (!google::protobuf::internal::WireFormatLite::VerifyUtf8String(v17, v18, 0, "CoreML.Specification.MILSpec.Value.docString"))
      {
        return 0;
      }
    }

    if (v9 == 2 && v7 == 18)
    {
      v11 = *(this + 3);
      if (!v11)
      {
        operator new();
      }

      v12 = *a2;
      if (*a2 >= a2[1] || (v13 = *v12, (v13 & 0x80000000) != 0))
      {
        v13 = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(a2);
        if ((v13 & 0x80000000) != 0)
        {
          return 0;
        }
      }

      else
      {
        *a2 = v12 + 1;
      }

      v25 = google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(a2, v13);
      if ((v25 & 0x8000000000000000) != 0)
      {
        return 0;
      }

      v26 = v25;
      result = CoreML::Specification::MILSpec::ValueType::MergePartialFromCodedStream(v11, a2);
      if (!result)
      {
        return result;
      }

      goto LABEL_60;
    }

LABEL_35:
    if (!v7 || (v7 & 7) == 4)
    {
      return 1;
    }

    if ((google::protobuf::internal::WireFormatLite::SkipField(a2, v7, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreML::Specification::MILSpec::Value::SerializeWithCachedSizes(CoreML::Specification::MILSpec::Value *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  result = *(this + 2);
  v7 = *(result + 23);
  if ((v7 & 0x8000000000000000) == 0)
  {
    if (!*(result + 23))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v7 = *(result + 8);
  if (v7)
  {
    result = *result;
LABEL_6:
    google::protobuf::internal::WireFormatLite::VerifyUtf8String(result, v7, 1, "CoreML.Specification.MILSpec.Value.docString");
    result = google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(1, *(this + 2), a2);
  }

LABEL_7:
  if (this != &CoreML::Specification::MILSpec::_Value_default_instance_)
  {
    v8 = *(this + 3);
    if (v8)
    {
      result = google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
    }
  }

  v9 = *(this + 11);
  if (v9 == 3)
  {
    result = google::protobuf::internal::WireFormatLite::WriteMessage(3, *(this + 4), a2, a4);
    v9 = *(this + 11);
  }

  if (v9 == 5)
  {
    v10 = *(this + 4);

    return google::protobuf::internal::WireFormatLite::WriteMessage(5, v10, a2, a4);
  }

  return result;
}

uint64_t CoreML::Specification::MILSpec::Value::ByteSizeLong(CoreML::Specification::MILSpec::Value *this)
{
  v2 = *(this + 2);
  v3 = *(v2 + 23);
  if (v3 < 0)
  {
    if (*(v2 + 8))
    {
      goto LABEL_3;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  if (!*(v2 + 23))
  {
    goto LABEL_7;
  }

LABEL_3:
  v4 = *(v2 + 8);
  if (v3 >= 0)
  {
    v4 = v3;
  }

  v5 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_8:
  if (this != &CoreML::Specification::MILSpec::_Value_default_instance_)
  {
    v6 = *(this + 3);
    if (v6)
    {
      v7 = CoreML::Specification::MILSpec::ValueType::ByteSizeLong(v6);
      v5 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v8 = *(this + 11);
  if (v8 == 5)
  {
    v9 = CoreML::Specification::MILSpec::Value_BlobFileValue::ByteSizeLong(*(this + 4));
    goto LABEL_15;
  }

  if (v8 == 3)
  {
    v9 = CoreML::Specification::MILSpec::Value_ImmediateValue::ByteSizeLong(*(this + 4));
LABEL_15:
    v5 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  *(this + 10) = v5;
  return v5;
}

std::string *CoreML::Specification::MILSpec::Value::CopyFrom(std::string *this, std::string *a2)
{
  if (a2 != this)
  {
    v4 = this;
    CoreML::Specification::MILSpec::Value::Clear(this);

    return CoreML::Specification::MILSpec::Value::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t CoreML::Specification::MILSpec::Value::Swap(uint64_t this, CoreML::Specification::MILSpec::Value *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v4;
    LODWORD(v4) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v4;
    LODWORD(v4) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v4;
  }

  return this;
}

uint64_t CoreML::Specification::MILSpec::Value::InternalSwap(uint64_t this, CoreML::Specification::MILSpec::Value *a2)
{
  v2 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v2;
  v3 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v3;
  v4 = *(this + 32);
  *(this + 32) = *(a2 + 4);
  *(a2 + 4) = v4;
  LODWORD(v4) = *(this + 44);
  *(this + 44) = *(a2 + 11);
  *(a2 + 11) = v4;
  LODWORD(v4) = *(this + 40);
  *(this + 40) = *(a2 + 10);
  *(a2 + 10) = v4;
  return this;
}

CoreML::Specification::MILSpec::TensorValue_RepeatedFloats *CoreML::Specification::MILSpec::TensorValue_RepeatedFloats::TensorValue_RepeatedFloats(CoreML::Specification::MILSpec::TensorValue_RepeatedFloats *this, uint64_t a2, google::protobuf::Closure *a3)
{
  *(this + 1) = 0;
  *this = &unk_2829FFAE0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (this != &CoreML::Specification::MILSpec::_TensorValue_RepeatedFloats_default_instance_)
  {
    CoreML::Specification::MILSpec::protobuf_MIL_2eproto::InitDefaults(this, a2, a3);
  }

  *(this + 9) = 0;
  return this;
}

void sub_2185639C4(_Unwind_Exception *a1)
{
  v4 = *(v2 + 24);
  if (v4)
  {
    if (!*v4)
    {
      operator delete(v4);
    }
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

CoreML::Specification::MILSpec::TensorValue_RepeatedFloats *CoreML::Specification::MILSpec::TensorValue_RepeatedFloats::TensorValue_RepeatedFloats(CoreML::Specification::MILSpec::TensorValue_RepeatedFloats *this, const CoreML::Specification::MILSpec::TensorValue_RepeatedFloats *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2829FFAE0;
  *(this + 2) = 0;
  v5 = (this + 16);
  *(this + 3) = 0;
  v6 = *(a2 + 4);
  if (v6)
  {
    google::protobuf::RepeatedField<float>::Reserve(v5, v6);
    memcpy((*(this + 3) + 8), (*(a2 + 3) + 8), 4 * *(a2 + 4));
    *(this + 4) = *(a2 + 4);
  }

  *(this + 9) = 0;
  v7 = *(a2 + 1);
  if (v7)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(v4, v7 & 0xFFFFFFFFFFFFFFFELL);
  }

  return this;
}

void sub_218563A9C(_Unwind_Exception *a1)
{
  v4 = *(v2 + 24);
  if (v4)
  {
    if (!*v4)
    {
      operator delete(v4);
    }
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

void CoreML::Specification::MILSpec::TensorValue_RepeatedFloats::~TensorValue_RepeatedFloats(CoreML::Specification::MILSpec::TensorValue_RepeatedFloats *this)
{
  *this = &unk_2829FFAE0;
  v2 = *(this + 3);
  if (v2 && !*v2)
  {
    operator delete(v2);
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  CoreML::Specification::MILSpec::TensorValue_RepeatedFloats::~TensorValue_RepeatedFloats(this);

  JUMPOUT(0x21CEAFEA0);
}

google::protobuf::Arena *google::protobuf::Arena::Own<CoreML::Specification::MILSpec::TensorValue_RepeatedFloats>(google::protobuf::Arena *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::Arena::AddListNode(result, a2, google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::TensorValue_RepeatedFloats>);
  }

  return result;
}

BOOL google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<float,(google::protobuf::internal::WireFormatLite::FieldType)2>(int a1, unsigned int a2, unsigned int **this, uint64_t a4)
{
  v27 = 0;
  v8 = *this;
  if ((*(this + 2) - *this) < 4)
  {
    result = google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v27);
    if (!result)
    {
      return result;
    }

    v9 = v27;
  }

  else
  {
    v9 = *v8;
    *this = v8 + 1;
  }

  v10 = *a4;
  if (*a4 == *(a4 + 4))
  {
    google::protobuf::RepeatedField<float>::Reserve(a4, v10 + 1);
    v10 = *a4;
  }

  v11 = *(a4 + 8);
  v12 = v10 + 1;
  *a4 = v10 + 1;
  *(v11 + 4 * v10 + 8) = v9;
  v13 = *this;
  v14 = *(this + 2) - *this;
  if (v14 >= 1)
  {
    v15 = a1 + 4;
    v16 = *(a4 + 4) - v12;
    v17 = v14 / (a1 + 4);
    if (v17 >= v16)
    {
      v18 = *(a4 + 4) - v12;
    }

    else
    {
      v18 = v14 / (a1 + 4);
    }

    if (v18 < 1)
    {
      LODWORD(v19) = 0;
    }

    else
    {
      v19 = 0;
      v20 = v10 + 2;
      v21 = v11 + 4 * v12 + 8;
      v22 = v17;
      if (v17 >= v16)
      {
        v22 = v16;
      }

      do
      {
        if (a2 > 0x7F)
        {
          if (a2 >> 14 || (a2 & 0x7F | 0x80) != *v13 || a2 >> 7 != *(v13 + 1))
          {
            goto LABEL_22;
          }

          v23 = (v13 + 2);
        }

        else
        {
          v24 = *v13;
          v23 = (v13 + 1);
          if (v24 != a2)
          {
            goto LABEL_22;
          }
        }

        v25 = *v23;
        v13 = v23 + 1;
        *a4 = v20;
        *(v21 + 4 * v19++) = v25;
        ++v20;
      }

      while (v22 != v19);
      LODWORD(v19) = v18;
    }

LABEL_22:
    if (v19 * v15 >= 1)
    {
      google::protobuf::io::CodedInputStream::Skip(this, v19 * v15);
    }
  }

  return 1;
}

uint64_t CoreML::Specification::MILSpec::TensorValue_RepeatedFloats::SerializeWithCachedSizes(uint64_t this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16) >= 1)
  {
    v6 = this;
    if (*(a2 + 4) < 5)
    {
      google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a2, 0xAu);
      v7 = *(a2 + 4);
    }

    else
    {
      *(*(a2 + 1))++ = 10;
      v7 = *(a2 + 4) - 1;
      *(a2 + 4) = v7;
    }

    v8 = *(v6 + 32);
    if (v7 < 5)
    {
      google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a2, v8);
    }

    else
    {
      v9 = *(a2 + 1);
      if (v8 < 0x80)
      {
        v11 = *(v6 + 32);
        v10 = *(a2 + 1);
      }

      else
      {
        v10 = *(a2 + 1);
        do
        {
          *v10++ = v8 | 0x80;
          v11 = v8 >> 7;
          v12 = v8 >> 14;
          v8 >>= 7;
        }

        while (v12);
      }

      *v10 = v11;
      v13 = v10 - v9 + 1;
      *(a2 + 1) += v13;
      *(a2 + 4) -= v13;
    }

    v14 = *(v6 + 24);
    if (v14)
    {
      v15 = (v14 + 8);
    }

    else
    {
      v15 = 0;
    }

    v16 = *(v6 + 16);

    return google::protobuf::internal::WireFormatLite::WriteFloatArray(v15, v16, a2, a4);
  }

  return this;
}

uint64_t CoreML::Specification::MILSpec::TensorValue_RepeatedFloats::ByteSizeLong(CoreML::Specification::MILSpec::TensorValue_RepeatedFloats *this)
{
  v1 = *(this + 4);
  v2 = 4 * v1;
  if (v1)
  {
    LODWORD(v1) = 4 * v1;
    if ((v2 & 0x80000000) != 0)
    {
      v3 = 11;
    }

    else
    {
      v3 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 + v2;
  *(this + 8) = v1;
  *(this + 9) = v4;
  return v4;
}

google::protobuf::Arena **CoreML::Specification::MILSpec::TensorValue_RepeatedFloats::MergeFrom(google::protobuf::Arena **this, const CoreML::Specification::MILSpec::TensorValue_RepeatedFloats *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 4);
  if (v5)
  {
    v7 = *(v3 + 4);
    v6 = (v3 + 2);
    google::protobuf::RepeatedField<float>::Reserve(v6, v7 + v5);
    this = memcpy((*(v6 + 1) + 4 * *v6 + 8), (*(a2 + 3) + 8), 4 * *(a2 + 4));
    *v6 += *(a2 + 4);
  }

  return this;
}

google::protobuf::Arena **CoreML::Specification::MILSpec::TensorValue_RepeatedFloats::CopyFrom(google::protobuf::Arena **this, const CoreML::Specification::MILSpec::TensorValue_RepeatedFloats *a2)
{
  if (a2 != this)
  {
    *(this + 4) = 0;
    return CoreML::Specification::MILSpec::TensorValue_RepeatedFloats::MergeFrom(this, a2);
  }

  return this;
}

uint64_t CoreML::Specification::MILSpec::TensorValue_RepeatedFloats::Swap(uint64_t this, CoreML::Specification::MILSpec::TensorValue_RepeatedFloats *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v2;
  }

  return this;
}

uint64_t CoreML::Specification::MILSpec::TensorValue_RepeatedFloats::InternalSwap(uint64_t this, CoreML::Specification::MILSpec::TensorValue_RepeatedFloats *a2)
{
  v2 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v2;
  LODWORD(v2) = *(this + 16);
  *(this + 16) = *(a2 + 4);
  *(a2 + 4) = v2;
  LODWORD(v2) = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v2;
  LODWORD(v2) = *(this + 36);
  *(this + 36) = *(a2 + 9);
  *(a2 + 9) = v2;
  return this;
}

CoreML::Specification::MILSpec::TensorValue_RepeatedDoubles *CoreML::Specification::MILSpec::TensorValue_RepeatedDoubles::TensorValue_RepeatedDoubles(CoreML::Specification::MILSpec::TensorValue_RepeatedDoubles *this, uint64_t a2, google::protobuf::Closure *a3)
{
  *(this + 1) = 0;
  *this = &unk_2829FFB78;
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (this != &CoreML::Specification::MILSpec::_TensorValue_RepeatedDoubles_default_instance_)
  {
    CoreML::Specification::MILSpec::protobuf_MIL_2eproto::InitDefaults(this, a2, a3);
  }

  *(this + 9) = 0;
  return this;
}

void sub_2185640C0(_Unwind_Exception *a1)
{
  v4 = *(v2 + 24);
  if (v4)
  {
    if (!*v4)
    {
      operator delete(v4);
    }
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

CoreML::Specification::MILSpec::TensorValue_RepeatedDoubles *CoreML::Specification::MILSpec::TensorValue_RepeatedDoubles::TensorValue_RepeatedDoubles(CoreML::Specification::MILSpec::TensorValue_RepeatedDoubles *this, const CoreML::Specification::MILSpec::TensorValue_RepeatedDoubles *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2829FFB78;
  *(this + 2) = 0;
  v5 = (this + 16);
  *(this + 3) = 0;
  v6 = *(a2 + 4);
  if (v6)
  {
    google::protobuf::RepeatedField<double>::Reserve(v5, v6);
    memcpy((*(this + 3) + 8), (*(a2 + 3) + 8), 8 * *(a2 + 4));
    *(this + 4) = *(a2 + 4);
  }

  *(this + 9) = 0;
  v7 = *(a2 + 1);
  if (v7)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(v4, v7 & 0xFFFFFFFFFFFFFFFELL);
  }

  return this;
}

void sub_218564190(_Unwind_Exception *a1)
{
  v4 = *(v2 + 24);
  if (v4)
  {
    if (!*v4)
    {
      operator delete(v4);
    }
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

void CoreML::Specification::MILSpec::TensorValue_RepeatedDoubles::~TensorValue_RepeatedDoubles(CoreML::Specification::MILSpec::TensorValue_RepeatedDoubles *this)
{
  *this = &unk_2829FFB78;
  v2 = *(this + 3);
  if (v2 && !*v2)
  {
    operator delete(v2);
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  CoreML::Specification::MILSpec::TensorValue_RepeatedDoubles::~TensorValue_RepeatedDoubles(this);

  JUMPOUT(0x21CEAFEA0);
}

google::protobuf::Arena *google::protobuf::Arena::Own<CoreML::Specification::MILSpec::TensorValue_RepeatedDoubles>(google::protobuf::Arena *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::Arena::AddListNode(result, a2, google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::TensorValue_RepeatedDoubles>);
  }

  return result;
}

BOOL google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<double,(google::protobuf::internal::WireFormatLite::FieldType)1>(int a1, unsigned int a2, unint64_t **this, uint64_t a4)
{
  v27 = 0;
  v8 = *this;
  if ((*(this + 2) - *this) < 8)
  {
    result = google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v27);
    if (!result)
    {
      return result;
    }

    v9 = v27;
  }

  else
  {
    v9 = *v8;
    *this = v8 + 1;
  }

  v10 = *a4;
  if (*a4 == *(a4 + 4))
  {
    google::protobuf::RepeatedField<double>::Reserve(a4, v10 + 1);
    v10 = *a4;
  }

  v11 = *(a4 + 8);
  v12 = v10 + 1;
  *a4 = v10 + 1;
  *(v11 + 8 * v10 + 8) = v9;
  v13 = *this;
  v14 = *(this + 2) - *this;
  if (v14 >= 1)
  {
    v15 = a1 + 8;
    v16 = *(a4 + 4) - v12;
    v17 = v14 / (a1 + 8);
    if (v17 >= v16)
    {
      v18 = *(a4 + 4) - v12;
    }

    else
    {
      v18 = v14 / (a1 + 8);
    }

    if (v18 < 1)
    {
      LODWORD(v19) = 0;
    }

    else
    {
      v19 = 0;
      v20 = v10 + 2;
      v21 = v11 + 8 * v12 + 8;
      v22 = v17;
      if (v17 >= v16)
      {
        v22 = v16;
      }

      do
      {
        if (a2 > 0x7F)
        {
          if (a2 >> 14 || (a2 & 0x7F | 0x80) != *v13 || a2 >> 7 != *(v13 + 1))
          {
            goto LABEL_22;
          }

          v23 = (v13 + 2);
        }

        else
        {
          v24 = *v13;
          v23 = (v13 + 1);
          if (v24 != a2)
          {
            goto LABEL_22;
          }
        }

        v25 = *v23;
        v13 = v23 + 1;
        *a4 = v20;
        *(v21 + 8 * v19++) = v25;
        ++v20;
      }

      while (v22 != v19);
      LODWORD(v19) = v18;
    }

LABEL_22:
    if (v19 * v15 >= 1)
    {
      google::protobuf::io::CodedInputStream::Skip(this, v19 * v15);
    }
  }

  return 1;
}

uint64_t CoreML::Specification::MILSpec::TensorValue_RepeatedDoubles::SerializeWithCachedSizes(uint64_t this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16) >= 1)
  {
    v6 = this;
    if (*(a2 + 4) < 5)
    {
      google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a2, 0xAu);
      v7 = *(a2 + 4);
    }

    else
    {
      *(*(a2 + 1))++ = 10;
      v7 = *(a2 + 4) - 1;
      *(a2 + 4) = v7;
    }

    v8 = *(v6 + 32);
    if (v7 < 5)
    {
      google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a2, v8);
    }

    else
    {
      v9 = *(a2 + 1);
      if (v8 < 0x80)
      {
        v11 = *(v6 + 32);
        v10 = *(a2 + 1);
      }

      else
      {
        v10 = *(a2 + 1);
        do
        {
          *v10++ = v8 | 0x80;
          v11 = v8 >> 7;
          v12 = v8 >> 14;
          v8 >>= 7;
        }

        while (v12);
      }

      *v10 = v11;
      v13 = v10 - v9 + 1;
      *(a2 + 1) += v13;
      *(a2 + 4) -= v13;
    }

    v14 = *(v6 + 24);
    if (v14)
    {
      v15 = (v14 + 8);
    }

    else
    {
      v15 = 0;
    }

    v16 = *(v6 + 16);

    return google::protobuf::internal::WireFormatLite::WriteDoubleArray(v15, v16, a2, a4);
  }

  return this;
}

uint64_t CoreML::Specification::MILSpec::TensorValue_RepeatedDoubles::ByteSizeLong(CoreML::Specification::MILSpec::TensorValue_RepeatedDoubles *this)
{
  v1 = *(this + 4);
  v2 = 8 * v1;
  if (v1)
  {
    LODWORD(v1) = 8 * v1;
    if ((v2 & 0x80000000) != 0)
    {
      v3 = 11;
    }

    else
    {
      v3 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 + v2;
  *(this + 8) = v1;
  *(this + 9) = v4;
  return v4;
}

google::protobuf::Arena **CoreML::Specification::MILSpec::TensorValue_RepeatedDoubles::MergeFrom(google::protobuf::Arena **this, const CoreML::Specification::MILSpec::TensorValue_RepeatedDoubles *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 4);
  if (v5)
  {
    v7 = *(v3 + 4);
    v6 = (v3 + 2);
    google::protobuf::RepeatedField<double>::Reserve(v6, v7 + v5);
    this = memcpy((*(v6 + 1) + 8 * *v6 + 8), (*(a2 + 3) + 8), 8 * *(a2 + 4));
    *v6 += *(a2 + 4);
  }

  return this;
}

google::protobuf::Arena **CoreML::Specification::MILSpec::TensorValue_RepeatedDoubles::CopyFrom(google::protobuf::Arena **this, const CoreML::Specification::MILSpec::TensorValue_RepeatedDoubles *a2)
{
  if (a2 != this)
  {
    *(this + 4) = 0;
    return CoreML::Specification::MILSpec::TensorValue_RepeatedDoubles::MergeFrom(this, a2);
  }

  return this;
}

CoreML::Specification::MILSpec::TensorValue_RepeatedInts *CoreML::Specification::MILSpec::TensorValue_RepeatedInts::TensorValue_RepeatedInts(CoreML::Specification::MILSpec::TensorValue_RepeatedInts *this, uint64_t a2, google::protobuf::Closure *a3)
{
  *(this + 1) = 0;
  *this = &unk_2829FFC10;
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (this != &CoreML::Specification::MILSpec::_TensorValue_RepeatedInts_default_instance_)
  {
    CoreML::Specification::MILSpec::protobuf_MIL_2eproto::InitDefaults(this, a2, a3);
  }

  *(this + 9) = 0;
  return this;
}

void sub_21856471C(_Unwind_Exception *a1)
{
  v4 = *(v2 + 24);
  if (v4)
  {
    if (!*v4)
    {
      operator delete(v4);
    }
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

CoreML::Specification::MILSpec::TensorValue_RepeatedInts *CoreML::Specification::MILSpec::TensorValue_RepeatedInts::TensorValue_RepeatedInts(CoreML::Specification::MILSpec::TensorValue_RepeatedInts *this, const CoreML::Specification::MILSpec::TensorValue_RepeatedInts *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2829FFC10;
  *(this + 2) = 0;
  v5 = (this + 16);
  *(this + 3) = 0;
  v6 = *(a2 + 4);
  if (v6)
  {
    google::protobuf::RepeatedField<float>::Reserve(v5, v6);
    memcpy((*(this + 3) + 8), (*(a2 + 3) + 8), 4 * *(a2 + 4));
    *(this + 4) = *(a2 + 4);
  }

  *(this + 9) = 0;
  v7 = *(a2 + 1);
  if (v7)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(v4, v7 & 0xFFFFFFFFFFFFFFFELL);
  }

  return this;
}

void sub_2185647EC(_Unwind_Exception *a1)
{
  v4 = *(v2 + 24);
  if (v4)
  {
    if (!*v4)
    {
      operator delete(v4);
    }
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

void CoreML::Specification::MILSpec::TensorValue_RepeatedInts::~TensorValue_RepeatedInts(CoreML::Specification::MILSpec::TensorValue_RepeatedInts *this)
{
  *this = &unk_2829FFC10;
  v2 = *(this + 3);
  if (v2 && !*v2)
  {
    operator delete(v2);
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  CoreML::Specification::MILSpec::TensorValue_RepeatedInts::~TensorValue_RepeatedInts(this);

  JUMPOUT(0x21CEAFEA0);
}

google::protobuf::Arena *google::protobuf::Arena::Own<CoreML::Specification::MILSpec::TensorValue_RepeatedInts>(google::protobuf::Arena *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::Arena::AddListNode(result, a2, google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::TensorValue_RepeatedInts>);
  }

  return result;
}

uint64_t CoreML::Specification::MILSpec::TensorValue_RepeatedInts::SerializeWithCachedSizes(uint64_t this, google::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 16) >= 1)
  {
    v3 = this;
    if (*(a2 + 4) < 5)
    {
      this = google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a2, 0xAu);
      v4 = *(a2 + 4);
    }

    else
    {
      *(*(a2 + 1))++ = 10;
      v4 = *(a2 + 4) - 1;
      *(a2 + 4) = v4;
    }

    v5 = *(v3 + 32);
    if (v4 < 5)
    {
      this = google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a2, v5);
    }

    else
    {
      v6 = *(a2 + 1);
      if (v5 < 0x80)
      {
        v8 = *(v3 + 32);
        v7 = *(a2 + 1);
      }

      else
      {
        v7 = *(a2 + 1);
        do
        {
          *v7++ = v5 | 0x80;
          v8 = v5 >> 7;
          v9 = v5 >> 14;
          v5 >>= 7;
        }

        while (v9);
      }

      *v7 = v8;
      v10 = v7 - v6 + 1;
      *(a2 + 1) += v10;
      *(a2 + 4) -= v10;
    }

    v11 = *(v3 + 16);
    if (v11 >= 1)
    {
      for (i = 0; i != v11; ++i)
      {
        v13 = *(*(v3 + 24) + 4 * i + 8);
        if (*(a2 + 4) < 10)
        {
          this = google::protobuf::io::CodedOutputStream::WriteVarint64SlowPath(a2, v13);
        }

        else
        {
          v14 = *(a2 + 1);
          if (v13 < 0x80)
          {
            LODWORD(v16) = *(*(v3 + 24) + 4 * i + 8);
            v15 = *(a2 + 1);
          }

          else
          {
            v15 = *(a2 + 1);
            do
            {
              *v15++ = v13 | 0x80;
              v16 = v13 >> 7;
              v17 = v13 >> 14;
              v13 >>= 7;
            }

            while (v17);
          }

          *v15 = v16;
          v18 = v15 - v14 + 1;
          *(a2 + 1) += v18;
          *(a2 + 4) -= v18;
        }
      }
    }
  }

  return this;
}

uint64_t CoreML::Specification::MILSpec::TensorValue_RepeatedInts::ByteSizeLong(CoreML::Specification::MILSpec::TensorValue_RepeatedInts *this)
{
  v2 = google::protobuf::internal::WireFormatLite::Int32Size(this + 4);
  if (v2)
  {
    v3 = v2;
    if ((v2 & 0x80000000) != 0)
    {
      v4 = 11;
    }

    else
    {
      v4 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  result = v4 + v2;
  *(this + 8) = v3;
  *(this + 9) = result;
  return result;
}

CoreML::Specification::MILSpec::TensorValue_RepeatedLongInts *CoreML::Specification::MILSpec::TensorValue_RepeatedLongInts::TensorValue_RepeatedLongInts(CoreML::Specification::MILSpec::TensorValue_RepeatedLongInts *this, uint64_t a2, google::protobuf::Closure *a3)
{
  *(this + 1) = 0;
  *this = &unk_2829FFCA8;
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (this != &CoreML::Specification::MILSpec::_TensorValue_RepeatedLongInts_default_instance_)
  {
    CoreML::Specification::MILSpec::protobuf_MIL_2eproto::InitDefaults(this, a2, a3);
  }

  *(this + 9) = 0;
  return this;
}

void sub_218564BF0(_Unwind_Exception *a1)
{
  v4 = *(v2 + 24);
  if (v4)
  {
    if (!*v4)
    {
      operator delete(v4);
    }
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

CoreML::Specification::MILSpec::TensorValue_RepeatedLongInts *CoreML::Specification::MILSpec::TensorValue_RepeatedLongInts::TensorValue_RepeatedLongInts(CoreML::Specification::MILSpec::TensorValue_RepeatedLongInts *this, const CoreML::Specification::MILSpec::TensorValue_RepeatedLongInts *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2829FFCA8;
  *(this + 2) = 0;
  v5 = (this + 16);
  *(this + 3) = 0;
  v6 = *(a2 + 4);
  if (v6)
  {
    google::protobuf::RepeatedField<double>::Reserve(v5, v6);
    memcpy((*(this + 3) + 8), (*(a2 + 3) + 8), 8 * *(a2 + 4));
    *(this + 4) = *(a2 + 4);
  }

  *(this + 9) = 0;
  v7 = *(a2 + 1);
  if (v7)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(v4, v7 & 0xFFFFFFFFFFFFFFFELL);
  }

  return this;
}

void sub_218564CC0(_Unwind_Exception *a1)
{
  v4 = *(v2 + 24);
  if (v4)
  {
    if (!*v4)
    {
      operator delete(v4);
    }
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

void CoreML::Specification::MILSpec::TensorValue_RepeatedLongInts::~TensorValue_RepeatedLongInts(CoreML::Specification::MILSpec::TensorValue_RepeatedLongInts *this)
{
  *this = &unk_2829FFCA8;
  v2 = *(this + 3);
  if (v2 && !*v2)
  {
    operator delete(v2);
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  CoreML::Specification::MILSpec::TensorValue_RepeatedLongInts::~TensorValue_RepeatedLongInts(this);

  JUMPOUT(0x21CEAFEA0);
}

google::protobuf::Arena *google::protobuf::Arena::Own<CoreML::Specification::MILSpec::TensorValue_RepeatedLongInts>(google::protobuf::Arena *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::Arena::AddListNode(result, a2, google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::TensorValue_RepeatedLongInts>);
  }

  return result;
}

uint64_t CoreML::Specification::MILSpec::TensorValue_RepeatedLongInts::SerializeWithCachedSizes(uint64_t this, google::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 16) >= 1)
  {
    v3 = this;
    if (*(a2 + 4) < 5)
    {
      this = google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a2, 0xAu);
      v4 = *(a2 + 4);
    }

    else
    {
      *(*(a2 + 1))++ = 10;
      v4 = *(a2 + 4) - 1;
      *(a2 + 4) = v4;
    }

    v5 = *(v3 + 32);
    if (v4 < 5)
    {
      this = google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a2, v5);
    }

    else
    {
      v6 = *(a2 + 1);
      if (v5 < 0x80)
      {
        v8 = *(v3 + 32);
        v7 = *(a2 + 1);
      }

      else
      {
        v7 = *(a2 + 1);
        do
        {
          *v7++ = v5 | 0x80;
          v8 = v5 >> 7;
          v9 = v5 >> 14;
          v5 >>= 7;
        }

        while (v9);
      }

      *v7 = v8;
      v10 = v7 - v6 + 1;
      *(a2 + 1) += v10;
      *(a2 + 4) -= v10;
    }

    v11 = *(v3 + 16);
    if (v11 >= 1)
    {
      for (i = 0; i != v11; ++i)
      {
        v13 = *(*(v3 + 24) + 8 * i + 8);
        if (*(a2 + 4) < 10)
        {
          this = google::protobuf::io::CodedOutputStream::WriteVarint64SlowPath(a2, v13);
        }

        else
        {
          v14 = *(a2 + 1);
          if (v13 < 0x80)
          {
            v16 = *(*(v3 + 24) + 8 * i + 8);
            v15 = *(a2 + 1);
          }

          else
          {
            v15 = *(a2 + 1);
            do
            {
              *v15++ = v13 | 0x80;
              v16 = v13 >> 7;
              v17 = v13 >> 14;
              v13 >>= 7;
            }

            while (v17);
          }

          *v15 = v16;
          v18 = v15 - v14 + 1;
          *(a2 + 1) += v18;
          *(a2 + 4) -= v18;
        }
      }
    }
  }

  return this;
}

uint64_t CoreML::Specification::MILSpec::TensorValue_RepeatedLongInts::ByteSizeLong(CoreML::Specification::MILSpec::TensorValue_RepeatedLongInts *this)
{
  v1 = *(this + 4);
  if (v1 < 1)
  {
    v2 = 0;
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v2 = 0;
  v3 = (*(this + 3) + 8);
  do
  {
    v4 = *v3++;
    v2 += (9 * (__clz(v4 | 1) ^ 0x3F) + 73) >> 6;
    --v1;
  }

  while (v1);
  if (!v2)
  {
    goto LABEL_8;
  }

  if ((v2 & 0x80000000) != 0)
  {
    v5 = 11;
  }

  else
  {
    v5 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_9:
  v6 = v5 + v2;
  *(this + 8) = v2;
  *(this + 9) = v6;
  return v6;
}

CoreML::Specification::MILSpec::TensorValue_RepeatedBools *CoreML::Specification::MILSpec::TensorValue_RepeatedBools::TensorValue_RepeatedBools(CoreML::Specification::MILSpec::TensorValue_RepeatedBools *this, uint64_t a2, google::protobuf::Closure *a3)
{
  *(this + 1) = 0;
  *this = &unk_2829FFD40;
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (this != &CoreML::Specification::MILSpec::_TensorValue_RepeatedBools_default_instance_)
  {
    CoreML::Specification::MILSpec::protobuf_MIL_2eproto::InitDefaults(this, a2, a3);
  }

  *(this + 9) = 0;
  return this;
}

void sub_2185650DC(_Unwind_Exception *a1)
{
  v4 = *(v2 + 24);
  if (v4)
  {
    if (!*v4)
    {
      operator delete(v4);
    }
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

CoreML::Specification::MILSpec::TensorValue_RepeatedBools *CoreML::Specification::MILSpec::TensorValue_RepeatedBools::TensorValue_RepeatedBools(CoreML::Specification::MILSpec::TensorValue_RepeatedBools *this, const CoreML::Specification::MILSpec::TensorValue_RepeatedBools *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2829FFD40;
  *(this + 2) = 0;
  v5 = (this + 16);
  *(this + 3) = 0;
  v6 = *(a2 + 4);
  if (v6)
  {
    google::protobuf::RepeatedField<BOOL>::Reserve(v5, v6);
    memcpy((*(this + 3) + 8), (*(a2 + 3) + 8), *(a2 + 4));
    *(this + 4) = *(a2 + 4);
  }

  *(this + 9) = 0;
  v7 = *(a2 + 1);
  if (v7)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(v4, v7 & 0xFFFFFFFFFFFFFFFELL);
  }

  return this;
}

void sub_2185651A8(_Unwind_Exception *a1)
{
  v4 = *(v2 + 24);
  if (v4)
  {
    if (!*v4)
    {
      operator delete(v4);
    }
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

void CoreML::Specification::MILSpec::TensorValue_RepeatedBools::~TensorValue_RepeatedBools(CoreML::Specification::MILSpec::TensorValue_RepeatedBools *this)
{
  *this = &unk_2829FFD40;
  v2 = *(this + 3);
  if (v2 && !*v2)
  {
    operator delete(v2);
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  CoreML::Specification::MILSpec::TensorValue_RepeatedBools::~TensorValue_RepeatedBools(this);

  JUMPOUT(0x21CEAFEA0);
}

google::protobuf::Arena *google::protobuf::Arena::Own<CoreML::Specification::MILSpec::TensorValue_RepeatedBools>(google::protobuf::Arena *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::Arena::AddListNode(result, a2, google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::TensorValue_RepeatedBools>);
  }

  return result;
}

uint64_t CoreML::Specification::MILSpec::TensorValue_RepeatedBools::SerializeWithCachedSizes(uint64_t this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16) >= 1)
  {
    v6 = this;
    if (*(a2 + 4) < 5)
    {
      google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a2, 0xAu);
      v7 = *(a2 + 4);
    }

    else
    {
      *(*(a2 + 1))++ = 10;
      v7 = *(a2 + 4) - 1;
      *(a2 + 4) = v7;
    }

    v8 = *(v6 + 32);
    if (v7 < 5)
    {
      google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a2, v8);
    }

    else
    {
      v9 = *(a2 + 1);
      if (v8 < 0x80)
      {
        v11 = *(v6 + 32);
        v10 = *(a2 + 1);
      }

      else
      {
        v10 = *(a2 + 1);
        do
        {
          *v10++ = v8 | 0x80;
          v11 = v8 >> 7;
          v12 = v8 >> 14;
          v8 >>= 7;
        }

        while (v12);
      }

      *v10 = v11;
      v13 = v10 - v9 + 1;
      *(a2 + 1) += v13;
      *(a2 + 4) -= v13;
    }

    v14 = *(v6 + 24);
    if (v14)
    {
      v15 = (v14 + 8);
    }

    else
    {
      v15 = 0;
    }

    v16 = *(v6 + 16);

    return google::protobuf::internal::WireFormatLite::WriteBoolArray(v15, v16, a2, a4);
  }

  return this;
}

uint64_t CoreML::Specification::MILSpec::TensorValue_RepeatedBools::ByteSizeLong(CoreML::Specification::MILSpec::TensorValue_RepeatedBools *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    if ((v1 & 0x80000000) != 0)
    {
      v2 = 11;
    }

    else
    {
      v2 = ((9 * (__clz(v1 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 + v1;
  *(this + 8) = v1;
  *(this + 9) = v3;
  return v3;
}

google::protobuf::Arena **CoreML::Specification::MILSpec::TensorValue_RepeatedBools::MergeFrom(google::protobuf::Arena **this, const CoreML::Specification::MILSpec::TensorValue_RepeatedBools *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 4);
  if (v5)
  {
    v7 = *(v3 + 4);
    v6 = (v3 + 2);
    google::protobuf::RepeatedField<BOOL>::Reserve(v6, v7 + v5);
    this = memcpy((*(v6 + 1) + *v6 + 8), (*(a2 + 3) + 8), *(a2 + 4));
    *v6 += *(a2 + 4);
  }

  return this;
}

google::protobuf::Arena **CoreML::Specification::MILSpec::TensorValue_RepeatedBools::CopyFrom(google::protobuf::Arena **this, const CoreML::Specification::MILSpec::TensorValue_RepeatedBools *a2)
{
  if (a2 != this)
  {
    *(this + 4) = 0;
    return CoreML::Specification::MILSpec::TensorValue_RepeatedBools::MergeFrom(this, a2);
  }

  return this;
}

CoreML::Specification::MILSpec::TensorValue_RepeatedStrings *CoreML::Specification::MILSpec::TensorValue_RepeatedStrings::TensorValue_RepeatedStrings(CoreML::Specification::MILSpec::TensorValue_RepeatedStrings *this, uint64_t a2, google::protobuf::Closure *a3)
{
  *this = &unk_2829FFDD8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  if (this != &CoreML::Specification::MILSpec::_TensorValue_RepeatedStrings_default_instance_)
  {
    CoreML::Specification::MILSpec::protobuf_MIL_2eproto::InitDefaults(this, a2, a3);
  }

  *(this + 10) = 0;
  return this;
}

void sub_2185655A8(_Unwind_Exception *a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>((v1 + 16));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v2);
  _Unwind_Resume(a1);
}

CoreML::Specification::MILSpec::TensorValue_RepeatedStrings *CoreML::Specification::MILSpec::TensorValue_RepeatedStrings::TensorValue_RepeatedStrings(CoreML::Specification::MILSpec::TensorValue_RepeatedStrings *this, const CoreML::Specification::MILSpec::TensorValue_RepeatedStrings *a2)
{
  *this = &unk_2829FFDD8;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 24) = 0u;
  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16), *(a2 + 6));
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>((this + 16), v7, (v6 + 8), v5, **(this + 4) - *(this + 6));
    v8 = *(this + 6) + v5;
    *(this + 6) = v8;
    v9 = *(this + 4);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  *(this + 10) = 0;
  v10 = *(a2 + 1);
  if (v10)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(v4, v10 & 0xFFFFFFFFFFFFFFFELL);
  }

  return this;
}

void sub_2185656A4(_Unwind_Exception *a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>((v2 + 16));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

void CoreML::Specification::MILSpec::TensorValue_RepeatedStrings::~TensorValue_RepeatedStrings(CoreML::Specification::MILSpec::TensorValue_RepeatedStrings *this)
{
  *this = &unk_2829FFDD8;
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 2);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  CoreML::Specification::MILSpec::TensorValue_RepeatedStrings::~TensorValue_RepeatedStrings(this);

  JUMPOUT(0x21CEAFEA0);
}

google::protobuf::Arena *google::protobuf::Arena::Own<CoreML::Specification::MILSpec::TensorValue_RepeatedStrings>(google::protobuf::Arena *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::Arena::AddListNode(result, a2, google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::TensorValue_RepeatedStrings>);
  }

  return result;
}

uint64_t CoreML::Specification::MILSpec::TensorValue_RepeatedStrings::SerializeWithCachedSizes(uint64_t this, google::protobuf::io::CodedOutputStream *a2)
{
  v2 = *(this + 24);
  if (v2 >= 1)
  {
    v4 = this;
    v5 = 8;
    do
    {
      v6 = *(v4 + 32);
      v7 = *(v6 + v5);
      v8 = v7[23];
      if ((v8 & 0x8000000000000000) != 0)
      {
        v7 = *v7;
        v8 = *(*(v6 + v5) + 8);
      }

      google::protobuf::internal::WireFormatLite::VerifyUtf8String(v7, v8, 1, "CoreML.Specification.MILSpec.TensorValue.RepeatedStrings.values");
      this = google::protobuf::internal::WireFormatLite::WriteString(1, *(*(v4 + 32) + v5), a2);
      v5 += 8;
      --v2;
    }

    while (v2);
  }

  return this;
}

uint64_t CoreML::Specification::MILSpec::TensorValue_RepeatedStrings::ByteSizeLong(CoreML::Specification::MILSpec::TensorValue_RepeatedStrings *this)
{
  v1 = *(this + 6);
  if (v1 < 1)
  {
    v3 = *(this + 6);
  }

  else
  {
    v2 = (*(this + 4) + 8);
    v3 = *(this + 6);
    do
    {
      v4 = *v2++;
      v5 = *(v4 + 23);
      v6 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v6 = v5;
      }

      v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6);
      --v1;
    }

    while (v1);
  }

  *(this + 10) = v3;
  return v3;
}

std::string *CoreML::Specification::MILSpec::TensorValue_RepeatedStrings::MergeFrom(std::string *this, const CoreML::Specification::MILSpec::TensorValue_RepeatedStrings *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(&this->__r_.__value_.__l.__size_, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(&v3->__r_.__value_.__r.__words[2], v5);
    this = google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(&v3->__r_.__value_.__r.__words[2], v7, (v6 + 8), v5, *v3[1].__r_.__value_.__l.__size_ - LODWORD(v3[1].__r_.__value_.__l.__data_));
    v8 = LODWORD(v3[1].__r_.__value_.__l.__data_) + v5;
    LODWORD(v3[1].__r_.__value_.__l.__data_) = v8;
    size = v3[1].__r_.__value_.__l.__size_;
    if (*size < v8)
    {
      *size = v8;
    }
  }

  return this;
}

std::string *CoreML::Specification::MILSpec::TensorValue_RepeatedStrings::CopyFrom(std::string *this, std::string *a2)
{
  if (a2 != this)
  {
    v4 = this;
    google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(&this->__r_.__value_.__r.__words[2]);

    return CoreML::Specification::MILSpec::TensorValue_RepeatedStrings::MergeFrom(v4, a2);
  }

  return this;
}

CoreML::Specification::MILSpec::TensorValue_RepeatedBytes *CoreML::Specification::MILSpec::TensorValue_RepeatedBytes::TensorValue_RepeatedBytes(CoreML::Specification::MILSpec::TensorValue_RepeatedBytes *this, uint64_t a2, google::protobuf::Closure *a3)
{
  *this = &unk_2829FFE70;
  *(this + 1) = 0;
  if (this != &CoreML::Specification::MILSpec::_TensorValue_RepeatedBytes_default_instance_)
  {
    CoreML::Specification::MILSpec::protobuf_MIL_2eproto::InitDefaults(this, a2, a3);
  }

  *(this + 2) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 6) = 0;
  return this;
}

uint64_t CoreML::Specification::MILSpec::TensorValue_RepeatedBytes::SharedCtor(uint64_t this)
{
  *(this + 16) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 24) = 0;
  return this;
}

CoreML::Specification::MILSpec::TensorValue_RepeatedBytes *CoreML::Specification::MILSpec::TensorValue_RepeatedBytes::TensorValue_RepeatedBytes(CoreML::Specification::MILSpec::TensorValue_RepeatedBytes *this, const CoreML::Specification::MILSpec::TensorValue_RepeatedBytes *a2)
{
  *this = &unk_2829FFE70;
  *(this + 1) = 0;
  *(this + 6) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  *(this + 2) = &google::protobuf::internal::fixed_address_empty_string;
  v5 = *(a2 + 2);
  v6 = *(v5 + 23);
  if (v6 < 0)
  {
    v6 = *(v5 + 8);
  }

  if (v5 != &google::protobuf::internal::fixed_address_empty_string && v6 != 0)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena();
  }

  return this;
}

void CoreML::Specification::MILSpec::TensorValue_RepeatedBytes::~TensorValue_RepeatedBytes(CoreML::Specification::MILSpec::TensorValue_RepeatedBytes *this)
{
  *this = &unk_2829FFE70;
  v1 = (this + 8);
  CoreML::Specification::MILSpec::Value_BlobFileValue::SharedDtor(this);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
}

{
  *this = &unk_2829FFE70;
  v1 = (this + 8);
  CoreML::Specification::MILSpec::Value_BlobFileValue::SharedDtor(this);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
}

{
  *this = &unk_2829FFE70;
  v1 = (this + 8);
  CoreML::Specification::MILSpec::Value_BlobFileValue::SharedDtor(this);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);

  JUMPOUT(0x21CEAFEA0);
}

google::protobuf::Arena *google::protobuf::Arena::Own<CoreML::Specification::MILSpec::TensorValue_RepeatedBytes>(google::protobuf::Arena *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::Arena::AddListNode(result, a2, google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::TensorValue_RepeatedBytes>);
  }

  return result;
}

uint64_t CoreML::Specification::MILSpec::TensorValue_RepeatedBytes::Clear(uint64_t this)
{
  v1 = *(this + 16);
  if (v1 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v1 + 23) < 0)
    {
      **v1 = 0;
      *(v1 + 8) = 0;
    }

    else
    {
      *v1 = 0;
      *(v1 + 23) = 0;
    }
  }

  return this;
}

uint64_t CoreML::Specification::MILSpec::TensorValue_RepeatedBytes::SerializeWithCachedSizes(uint64_t this, google::protobuf::io::CodedOutputStream *a2)
{
  v3 = *(this + 16);
  if ((*(v3 + 23) & 0x8000000000000000) == 0)
  {
    if (!*(v3 + 23))
    {
      return this;
    }

    return google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(1, v3, a2);
  }

  if (*(v3 + 8))
  {
    return google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(1, v3, a2);
  }

  return this;
}

uint64_t CoreML::Specification::MILSpec::TensorValue_RepeatedBytes::ByteSizeLong(CoreML::Specification::MILSpec::TensorValue_RepeatedBytes *this)
{
  v1 = *(this + 2);
  v2 = *(v1 + 23);
  if (v2 < 0)
  {
    if (*(v1 + 8))
    {
      goto LABEL_3;
    }

LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  if (!*(v1 + 23))
  {
    goto LABEL_7;
  }

LABEL_3:
  v3 = *(v1 + 8);
  if (v2 >= 0)
  {
    v3 = v2;
  }

  v4 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_8:
  *(this + 6) = v4;
  return v4;
}

std::string *CoreML::Specification::MILSpec::TensorValue_RepeatedBytes::MergeFrom(std::string *this, const CoreML::Specification::MILSpec::TensorValue_RepeatedBytes *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(&this->__r_.__value_.__l.__size_, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 2);
  if ((*(v5 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(v5 + 8))
    {
      return this;
    }
  }

  else if (!*(v5 + 23))
  {
    return this;
  }

  this = v3->__r_.__value_.__r.__words[2];
  if (this != v5)
  {
    if (this == &google::protobuf::internal::fixed_address_empty_string)
    {

      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena();
    }

    return std::string::operator=(this, v5);
  }

  return this;
}

std::string *CoreML::Specification::MILSpec::TensorValue_RepeatedBytes::CopyFrom(std::string *this, const CoreML::Specification::MILSpec::TensorValue_RepeatedBytes *a2)
{
  if (a2 != this)
  {
    v2 = this->__r_.__value_.__r.__words[2];
    if (v2 != &google::protobuf::internal::fixed_address_empty_string)
    {
      if (*(v2 + 23) < 0)
      {
        **v2 = 0;
        *(v2 + 8) = 0;
      }

      else
      {
        *v2 = 0;
        *(v2 + 23) = 0;
      }
    }

    return CoreML::Specification::MILSpec::TensorValue_RepeatedBytes::MergeFrom(this, a2);
  }

  return this;
}

CoreML::Specification::MILSpec::TensorValue *CoreML::Specification::MILSpec::TensorValue::TensorValue(CoreML::Specification::MILSpec::TensorValue *this, uint64_t a2, google::protobuf::Closure *a3)
{
  *this = &unk_2829FFF08;
  *(this + 1) = 0;
  if (this != &CoreML::Specification::MILSpec::_TensorValue_default_instance_)
  {
    CoreML::Specification::MILSpec::protobuf_MIL_2eproto::InitDefaults(this, a2, a3);
  }

  *(this + 3) = 0;
  return this;
}

CoreML::Specification::MILSpec::TensorValue *CoreML::Specification::MILSpec::TensorValue::TensorValue(CoreML::Specification::MILSpec::TensorValue *this, const CoreML::Specification::MILSpec::TensorValue *a2)
{
  *this = &unk_2829FFF08;
  *(this + 1) = 0;
  *(this + 6) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  *(this + 7) = 0;
  v5 = *(a2 + 7);
  if (v5 <= 3)
  {
    switch(v5)
    {
      case 1:
        CoreML::Specification::MILSpec::TensorValue::clear_value(this);
        *(this + 7) = 1;
        operator new();
      case 2:
        CoreML::Specification::MILSpec::TensorValue::clear_value(this);
        *(this + 7) = 2;
        operator new();
      case 3:
        CoreML::Specification::MILSpec::TensorValue::clear_value(this);
        *(this + 7) = 3;
        operator new();
    }
  }

  else
  {
    if (v5 <= 5)
    {
      if (v5 != 4)
      {
        CoreML::Specification::MILSpec::TensorValue::clear_value(this);
        *(this + 7) = 5;
        operator new();
      }

      CoreML::Specification::MILSpec::TensorValue::clear_value(this);
      *(this + 7) = 4;
      operator new();
    }

    if (v5 == 6)
    {
      CoreML::Specification::MILSpec::TensorValue::clear_value(this);
      *(this + 7) = 6;
      operator new();
    }

    if (v5 == 7)
    {
      CoreML::Specification::MILSpec::TensorValue::clear_value(this);
      *(this + 7) = 7;
      operator new();
    }
  }

  return this;
}

void sub_2185662C0(_Unwind_Exception *a1)
{
  MEMORY[0x21CEAFEA0](v2, 0x10A1C406130BDD3);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

void CoreML::Specification::MILSpec::TensorValue::~TensorValue(CoreML::Specification::MILSpec::TensorValue *this)
{
  *this = &unk_2829FFF08;
  if (*(this + 7))
  {
    CoreML::Specification::MILSpec::TensorValue::clear_value(this);
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  CoreML::Specification::MILSpec::TensorValue::~TensorValue(this);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t CoreML::Specification::MILSpec::TensorValue::SharedDtor(uint64_t this)
{
  if (*(this + 28))
  {
    return CoreML::Specification::MILSpec::TensorValue::clear_value(this);
  }

  return this;
}

uint64_t CoreML::Specification::MILSpec::TensorValue::clear_value(uint64_t this)
{
  v1 = this;
  v2 = *(this + 28);
  if (v2 <= 3)
  {
    if (v2 != 1 && v2 != 2 && v2 != 3)
    {
      goto LABEL_11;
    }
  }

  else if (v2 > 6 && v2 != 7)
  {
    goto LABEL_11;
  }

  this = *(this + 16);
  if (this)
  {
    this = (*(*this + 8))(this);
  }

LABEL_11:
  *(v1 + 28) = 0;
  return this;
}

google::protobuf::Arena *google::protobuf::Arena::Own<CoreML::Specification::MILSpec::TensorValue>(google::protobuf::Arena *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::Arena::AddListNode(result, a2, google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::TensorValue>);
  }

  return result;
}

uint64_t CoreML::Specification::MILSpec::TensorValue::MergePartialFromCodedStream(CoreML::Specification::MILSpec::TensorValue *this, char **a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *a2;
      if (*a2 >= a2[1])
      {
        v6 = 0;
LABEL_6:
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2, v6);
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_7;
      }

      v6 = *v5;
      if (*v5 < 1)
      {
        goto LABEL_6;
      }

      *a2 = v5 + 1;
      v7 = v6 | 0x100000000;
      if ((v7 & 0x100000000) == 0)
      {
        goto LABEL_40;
      }

LABEL_7:
      v9 = v7 >> 3;
      if (v7 >> 3 > 3)
      {
        if (v7 >> 3 > 5)
        {
          if (v9 == 6)
          {
            if (v7 != 50)
            {
              goto LABEL_40;
            }

            if (*(this + 7) != 6)
            {
              CoreML::Specification::MILSpec::TensorValue::clear_value(this);
              *(this + 7) = 6;
              operator new();
            }

            v16 = *(this + 2);
            v25 = *a2;
            if (*a2 >= a2[1] || (VarintSizeAsIntFallback = *v25, (VarintSizeAsIntFallback & 0x80000000) != 0))
            {
              VarintSizeAsIntFallback = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(a2);
              if ((VarintSizeAsIntFallback & 0x80000000) != 0)
              {
                return 0;
              }
            }

            else
            {
              *a2 = v25 + 1;
            }

            v38 = google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(a2, VarintSizeAsIntFallback);
            if ((v38 & 0x8000000000000000) != 0)
            {
              return 0;
            }

            v34 = v38;
            result = CoreML::Specification::MILSpec::TensorValue_RepeatedDoubles::MergePartialFromCodedStream(v16, a2);
            if (!result)
            {
              return result;
            }
          }

          else
          {
            if (v9 != 7 || v7 != 58)
            {
              goto LABEL_40;
            }

            if (*(this + 7) != 7)
            {
              CoreML::Specification::MILSpec::TensorValue::clear_value(this);
              *(this + 7) = 7;
              operator new();
            }

            v13 = *(this + 2);
            v29 = *a2;
            if (*a2 >= a2[1] || (v30 = *v29, (v30 & 0x80000000) != 0))
            {
              v30 = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(a2);
              if ((v30 & 0x80000000) != 0)
              {
                return 0;
              }
            }

            else
            {
              *a2 = v29 + 1;
            }

            v40 = google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(a2, v30);
            if ((v40 & 0x8000000000000000) != 0)
            {
              return 0;
            }

            v34 = v40;
            result = CoreML::Specification::MILSpec::TensorValue_RepeatedBytes::MergePartialFromCodedStream(v13, a2);
            if (!result)
            {
              return result;
            }
          }
        }

        else if (v9 == 4)
        {
          if (v7 != 34)
          {
            goto LABEL_40;
          }

          if (*(this + 7) != 4)
          {
            CoreML::Specification::MILSpec::TensorValue::clear_value(this);
            *(this + 7) = 4;
            operator new();
          }

          v15 = *(this + 2);
          v23 = *a2;
          if (*a2 >= a2[1] || (v24 = *v23, (v24 & 0x80000000) != 0))
          {
            v24 = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(a2);
            if ((v24 & 0x80000000) != 0)
            {
              return 0;
            }
          }

          else
          {
            *a2 = v23 + 1;
          }

          v37 = google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(a2, v24);
          if ((v37 & 0x8000000000000000) != 0)
          {
            return 0;
          }

          v34 = v37;
          result = CoreML::Specification::MILSpec::TensorValue_RepeatedStrings::MergePartialFromCodedStream(v15, a2);
          if (!result)
          {
            return result;
          }
        }

        else
        {
          if (v9 != 5 || v7 != 42)
          {
            goto LABEL_40;
          }

          if (*(this + 7) != 5)
          {
            CoreML::Specification::MILSpec::TensorValue::clear_value(this);
            *(this + 7) = 5;
            operator new();
          }

          v10 = *(this + 2);
          v27 = *a2;
          if (*a2 >= a2[1] || (v28 = *v27, (v28 & 0x80000000) != 0))
          {
            v28 = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(a2);
            if ((v28 & 0x80000000) != 0)
            {
              return 0;
            }
          }

          else
          {
            *a2 = v27 + 1;
          }

          v39 = google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(a2, v28);
          if ((v39 & 0x8000000000000000) != 0)
          {
            return 0;
          }

          v34 = v39;
          result = CoreML::Specification::MILSpec::TensorValue_RepeatedLongInts::MergePartialFromCodedStream(v10, a2);
          if (!result)
          {
            return result;
          }
        }

        goto LABEL_101;
      }

      if (v9 == 1)
      {
        if (v7 != 10)
        {
          goto LABEL_40;
        }

        if (*(this + 7) != 1)
        {
          CoreML::Specification::MILSpec::TensorValue::clear_value(this);
          *(this + 7) = 1;
          operator new();
        }

        v14 = *(this + 2);
        v19 = *a2;
        if (*a2 >= a2[1] || (v20 = *v19, (v20 & 0x80000000) != 0))
        {
          v20 = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(a2);
          if ((v20 & 0x80000000) != 0)
          {
            return 0;
          }
        }

        else
        {
          *a2 = v19 + 1;
        }

        v33 = google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(a2, v20);
        if ((v33 & 0x8000000000000000) != 0)
        {
          return 0;
        }

        v34 = v33;
        result = CoreML::Specification::MILSpec::TensorValue_RepeatedFloats::MergePartialFromCodedStream(v14, a2);
        if (!result)
        {
          return result;
        }

        goto LABEL_101;
      }

      if (v9 != 2)
      {
        break;
      }

      if (v7 != 18)
      {
        goto LABEL_40;
      }

      if (*(this + 7) != 2)
      {
        CoreML::Specification::MILSpec::TensorValue::clear_value(this);
        *(this + 7) = 2;
        operator new();
      }

      v17 = *(this + 2);
      v31 = *a2;
      if (*a2 >= a2[1] || (v32 = *v31, (v32 & 0x80000000) != 0))
      {
        v32 = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(a2);
        if ((v32 & 0x80000000) != 0)
        {
          return 0;
        }
      }

      else
      {
        *a2 = v31 + 1;
      }

      v41 = google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(a2, v32);
      if ((v41 & 0x8000000000000000) != 0)
      {
        return 0;
      }

      v34 = v41;
      result = CoreML::Specification::MILSpec::TensorValue_RepeatedInts::MergePartialFromCodedStream(v17, a2);
      if (!result)
      {
        return result;
      }

LABEL_101:
      if ((google::protobuf::io::CodedInputStream::DecrementRecursionDepthAndPopLimit(a2, v34) & 1) == 0)
      {
        return 0;
      }
    }

    if (v9 == 3 && v7 == 26)
    {
      if (*(this + 7) != 3)
      {
        CoreML::Specification::MILSpec::TensorValue::clear_value(this);
        *(this + 7) = 3;
        operator new();
      }

      v12 = *(this + 2);
      v21 = *a2;
      if (*a2 >= a2[1] || (v22 = *v21, (v22 & 0x80000000) != 0))
      {
        v22 = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(a2);
        if ((v22 & 0x80000000) != 0)
        {
          return 0;
        }
      }

      else
      {
        *a2 = v21 + 1;
      }

      v36 = google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(a2, v22);
      if ((v36 & 0x8000000000000000) != 0)
      {
        return 0;
      }

      v34 = v36;
      result = CoreML::Specification::MILSpec::TensorValue_RepeatedBools::MergePartialFromCodedStream(v12, a2);
      if (!result)
      {
        return result;
      }

      goto LABEL_101;
    }

LABEL_40:
    if (!v7 || (v7 & 7) == 4)
    {
      return 1;
    }

    if ((google::protobuf::internal::WireFormatLite::SkipField(a2, v7, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreML::Specification::MILSpec::TensorValue::SerializeWithCachedSizes(uint64_t this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if (v6 == 1)
  {
    this = google::protobuf::internal::WireFormatLite::WriteMessage(1, *(this + 16), a2, a4);
    v6 = *(v5 + 28);
  }

  if (v6 == 2)
  {
    this = google::protobuf::internal::WireFormatLite::WriteMessage(2, *(v5 + 16), a2, a4);
    v6 = *(v5 + 28);
  }

  if (v6 == 3)
  {
    this = google::protobuf::internal::WireFormatLite::WriteMessage(3, *(v5 + 16), a2, a4);
    v6 = *(v5 + 28);
  }

  if (v6 == 4)
  {
    this = google::protobuf::internal::WireFormatLite::WriteMessage(4, *(v5 + 16), a2, a4);
    v6 = *(v5 + 28);
  }

  if (v6 == 5)
  {
    this = google::protobuf::internal::WireFormatLite::WriteMessage(5, *(v5 + 16), a2, a4);
    v6 = *(v5 + 28);
  }

  if (v6 == 6)
  {
    this = google::protobuf::internal::WireFormatLite::WriteMessage(6, *(v5 + 16), a2, a4);
    v6 = *(v5 + 28);
  }

  if (v6 == 7)
  {
    v7 = *(v5 + 16);

    return google::protobuf::internal::WireFormatLite::WriteMessage(7, v7, a2, a4);
  }

  return this;
}

uint64_t CoreML::Specification::MILSpec::TensorValue::ByteSizeLong(CoreML::Specification::MILSpec::TensorValue *this)
{
  result = 0;
  v3 = *(this + 7);
  if (v3 > 3)
  {
    if (v3 <= 5)
    {
      if (v3 == 4)
      {
        v4 = CoreML::Specification::MILSpec::TensorValue_RepeatedStrings::ByteSizeLong(*(this + 2));
      }

      else
      {
        v4 = CoreML::Specification::MILSpec::TensorValue_RepeatedLongInts::ByteSizeLong(*(this + 2));
      }

      goto LABEL_21;
    }

    if (v3 != 6)
    {
      if (v3 == 7)
      {
        v4 = CoreML::Specification::MILSpec::TensorValue_RepeatedBytes::ByteSizeLong(*(this + 2));
LABEL_21:
        v12 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6);
LABEL_27:
        result = v12 + 1;
        goto LABEL_28;
      }

      goto LABEL_28;
    }

    v8 = *(this + 2);
    v9 = v8[4];
    v10 = 8 * v9;
    if (!v9)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  switch(v3)
  {
    case 1:
      v8 = *(this + 2);
      v9 = v8[4];
      v10 = 4 * v9;
      if (!v9)
      {
LABEL_19:
        v11 = 0;
LABEL_23:
        v13 = v11 + v10;
        v8[8] = v9;
        v8[9] = v13;
        v12 = v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6);
        goto LABEL_27;
      }

LABEL_15:
      LODWORD(v9) = v10;
      if ((v10 & 0x80000000) != 0)
      {
        v11 = 11;
      }

      else
      {
        v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      goto LABEL_23;
    case 2:
      v4 = CoreML::Specification::MILSpec::TensorValue_RepeatedInts::ByteSizeLong(*(this + 2));
      goto LABEL_21;
    case 3:
      v5 = *(this + 2);
      v6 = v5[4];
      if (v6)
      {
        if ((v6 & 0x80000000) != 0)
        {
          v7 = 11;
        }

        else
        {
          v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
        }
      }

      else
      {
        v7 = 0;
      }

      v14 = v7 + v6;
      v5[8] = v6;
      v5[9] = v14;
      v12 = v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      goto LABEL_27;
  }

LABEL_28:
  *(this + 6) = result;
  return result;
}

google::protobuf::Arena **CoreML::Specification::MILSpec::TensorValue::CopyFrom(google::protobuf::Arena **this, google::protobuf::Arena **a2)
{
  if (a2 != this)
  {
    v4 = this;
    CoreML::Specification::MILSpec::TensorValue::clear_value(this);

    return CoreML::Specification::MILSpec::TensorValue::MergeFrom(v4, a2);
  }

  return this;
}

CoreML::Specification::MILSpec::TupleValue *CoreML::Specification::MILSpec::TupleValue::TupleValue(CoreML::Specification::MILSpec::TupleValue *this, uint64_t a2, google::protobuf::Closure *a3)
{
  *this = &unk_2829FFFA0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  if (this != &CoreML::Specification::MILSpec::_TupleValue_default_instance_)
  {
    CoreML::Specification::MILSpec::protobuf_MIL_2eproto::InitDefaults(this, a2, a3);
  }

  *(this + 10) = 0;
  return this;
}

void sub_218566E78(_Unwind_Exception *a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::NamedValueType>::TypeHandler>((v1 + 16));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v2);
  _Unwind_Resume(a1);
}

CoreML::Specification::MILSpec::TupleValue *CoreML::Specification::MILSpec::TupleValue::TupleValue(CoreML::Specification::MILSpec::TupleValue *this, const CoreML::Specification::MILSpec::TupleValue *a2)
{
  *this = &unk_2829FFFA0;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 24) = 0u;
  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16), *(a2 + 6));
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::Value>::TypeHandler>(this + 16, v7, (v6 + 8), v5, **(this + 4) - *(this + 6));
    v8 = *(this + 6) + v5;
    *(this + 6) = v8;
    v9 = *(this + 4);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  *(this + 10) = 0;
  v10 = *(a2 + 1);
  if (v10)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(v4, v10 & 0xFFFFFFFFFFFFFFFELL);
  }

  return this;
}

void sub_218566F74(_Unwind_Exception *a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::NamedValueType>::TypeHandler>((v2 + 16));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

void CoreML::Specification::MILSpec::TupleValue::~TupleValue(CoreML::Specification::MILSpec::TupleValue *this)
{
  *this = &unk_2829FFFA0;
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::NamedValueType>::TypeHandler>(this + 2);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  CoreML::Specification::MILSpec::TupleValue::~TupleValue(this);

  JUMPOUT(0x21CEAFEA0);
}

google::protobuf::Arena *google::protobuf::Arena::Own<CoreML::Specification::MILSpec::TupleValue>(google::protobuf::Arena *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::Arena::AddListNode(result, a2, google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::TupleValue>);
  }

  return result;
}

uint64_t CoreML::Specification::MILSpec::TupleValue::Clear(uint64_t this)
{
  v1 = *(this + 24);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 32) + 8);
    do
    {
      v4 = *v3++;
      this = CoreML::Specification::MILSpec::Value::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 24) = 0;
  }

  return this;
}

uint64_t CoreML::Specification::MILSpec::TupleValue::SerializeWithCachedSizes(uint64_t this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v4 = *(this + 24);
  if (v4)
  {
    v6 = this;
    for (i = 0; i != v4; ++i)
    {
      this = google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v6 + 32) + 8 * i + 8), a2, a4);
    }
  }

  return this;
}

uint64_t CoreML::Specification::MILSpec::TupleValue::ByteSizeLong(CoreML::Specification::MILSpec::TupleValue *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 6);
    do
    {
      v5 = CoreML::Specification::MILSpec::Value::ByteSizeLong(*(*(this + 4) + 8 * v3 + 8));
      v4 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6);
      ++v3;
    }

    while (v2 != v3);
  }

  else
  {
    v4 = 0;
  }

  *(this + 10) = v4;
  return v4;
}

uint64_t CoreML::Specification::MILSpec::TupleValue::CopyFrom(uint64_t this, const CoreML::Specification::MILSpec::TupleValue *a2)
{
  if (a2 != this)
  {
    v4 = this;
    v5 = *(this + 24);
    if (v5 >= 1)
    {
      v6 = (*(this + 32) + 8);
      do
      {
        v7 = *v6++;
        CoreML::Specification::MILSpec::Value::Clear(v7);
        --v5;
      }

      while (v5);
      *(v4 + 24) = 0;
    }

    return CoreML::Specification::MILSpec::TupleValue::MergeFrom(v4, a2);
  }

  return this;
}

CoreML::Specification::MILSpec::ListValue *CoreML::Specification::MILSpec::ListValue::ListValue(CoreML::Specification::MILSpec::ListValue *this, uint64_t a2, google::protobuf::Closure *a3)
{
  *this = &unk_282A00038;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  if (this != &CoreML::Specification::MILSpec::_ListValue_default_instance_)
  {
    CoreML::Specification::MILSpec::protobuf_MIL_2eproto::InitDefaults(this, a2, a3);
  }

  *(this + 10) = 0;
  return this;
}

void sub_218567314(_Unwind_Exception *a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::NamedValueType>::TypeHandler>((v1 + 16));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v2);
  _Unwind_Resume(a1);
}

CoreML::Specification::MILSpec::ListValue *CoreML::Specification::MILSpec::ListValue::ListValue(CoreML::Specification::MILSpec::ListValue *this, const CoreML::Specification::MILSpec::ListValue *a2)
{
  *this = &unk_282A00038;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 24) = 0u;
  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16), *(a2 + 6));
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::Value>::TypeHandler>(this + 16, v7, (v6 + 8), v5, **(this + 4) - *(this + 6));
    v8 = *(this + 6) + v5;
    *(this + 6) = v8;
    v9 = *(this + 4);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  *(this + 10) = 0;
  v10 = *(a2 + 1);
  if (v10)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(v4, v10 & 0xFFFFFFFFFFFFFFFELL);
  }

  return this;
}

void sub_218567410(_Unwind_Exception *a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::NamedValueType>::TypeHandler>((v2 + 16));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

void CoreML::Specification::MILSpec::ListValue::~ListValue(CoreML::Specification::MILSpec::ListValue *this)
{
  *this = &unk_282A00038;
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::NamedValueType>::TypeHandler>(this + 2);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  CoreML::Specification::MILSpec::ListValue::~ListValue(this);

  JUMPOUT(0x21CEAFEA0);
}

google::protobuf::Arena *google::protobuf::Arena::Own<CoreML::Specification::MILSpec::ListValue>(google::protobuf::Arena *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::Arena::AddListNode(result, a2, google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::ListValue>);
  }

  return result;
}

uint64_t CoreML::Specification::MILSpec::ListValue::Clear(uint64_t this)
{
  v1 = *(this + 24);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 32) + 8);
    do
    {
      v4 = *v3++;
      this = CoreML::Specification::MILSpec::Value::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 24) = 0;
  }

  return this;
}

uint64_t CoreML::Specification::MILSpec::ListValue::SerializeWithCachedSizes(uint64_t this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v4 = *(this + 24);
  if (v4)
  {
    v6 = this;
    for (i = 0; i != v4; ++i)
    {
      this = google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v6 + 32) + 8 * i + 8), a2, a4);
    }
  }

  return this;
}

uint64_t CoreML::Specification::MILSpec::ListValue::ByteSizeLong(CoreML::Specification::MILSpec::ListValue *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 6);
    do
    {
      v5 = CoreML::Specification::MILSpec::Value::ByteSizeLong(*(*(this + 4) + 8 * v3 + 8));
      v4 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6);
      ++v3;
    }

    while (v2 != v3);
  }

  else
  {
    v4 = 0;
  }

  *(this + 10) = v4;
  return v4;
}

CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair *CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair::DictionaryValue_KeyValuePair(CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair *this, uint64_t a2, google::protobuf::Closure *a3)
{
  *this = &unk_282A000D0;
  *(this + 1) = 0;
  if (this != &CoreML::Specification::MILSpec::_DictionaryValue_KeyValuePair_default_instance_)
  {
    CoreML::Specification::MILSpec::protobuf_MIL_2eproto::InitDefaults(this, a2, a3);
  }

  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  return this;
}

CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair *CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair::DictionaryValue_KeyValuePair(CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair *this, const CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair *a2)
{
  *this = &unk_282A000D0;
  *(this + 1) = 0;
  *(this + 8) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (a2 == &CoreML::Specification::MILSpec::_DictionaryValue_KeyValuePair_default_instance_)
  {
    *(this + 2) = 0;
  }

  else
  {
    if (*(a2 + 2))
    {
      operator new();
    }

    *(this + 2) = 0;
    if (*(a2 + 3))
    {
      operator new();
    }
  }

  *(this + 3) = 0;
  return this;
}

void sub_21856783C(_Unwind_Exception *a1)
{
  MEMORY[0x21CEAFEA0](v2, 0x10A1C40000F1E19);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

void CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair::~DictionaryValue_KeyValuePair(CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair *this)
{
  *this = &unk_282A000D0;
  CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair::SharedDtor(this);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair::~DictionaryValue_KeyValuePair(this);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t *CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair::SharedDtor(uint64_t *this)
{
  if (this != &CoreML::Specification::MILSpec::_DictionaryValue_KeyValuePair_default_instance_)
  {
    v1 = this;
    v2 = this[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    this = v1[3];
    if (this)
    {
      v3 = *(*this + 8);

      return v3();
    }
  }

  return this;
}

google::protobuf::Arena *google::protobuf::Arena::Own<CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair>(google::protobuf::Arena *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::Arena::AddListNode(result, a2, google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair>);
  }

  return result;
}

uint64_t CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair::Clear(CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;
  result = *(this + 3);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 3) = 0;
  return result;
}

uint64_t CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair::MergePartialFromCodedStream(CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair *this, char **a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *a2;
      if (*a2 >= a2[1])
      {
        v6 = 0;
LABEL_6:
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2, v6);
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_7;
      }

      v6 = *v5;
      if (*v5 < 1)
      {
        goto LABEL_6;
      }

      *a2 = v5 + 1;
      v7 = v6 | 0x100000000;
      if ((v7 & 0x100000000) == 0)
      {
        goto LABEL_21;
      }

LABEL_7:
      if (v7 >> 3 != 2)
      {
        break;
      }

      if (v7 != 18)
      {
        goto LABEL_21;
      }

      v10 = *(this + 3);
      if (!v10)
      {
        operator new();
      }

LABEL_18:
      v11 = *a2;
      if (*a2 >= a2[1] || (VarintSizeAsIntFallback = *v11, (VarintSizeAsIntFallback & 0x80000000) != 0))
      {
        VarintSizeAsIntFallback = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(a2);
        if ((VarintSizeAsIntFallback & 0x80000000) != 0)
        {
          return 0;
        }
      }

      else
      {
        *a2 = v11 + 1;
      }

      v14 = google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(a2, VarintSizeAsIntFallback);
      if ((v14 & 0x8000000000000000) == 0)
      {
        v15 = v14;
        result = CoreML::Specification::MILSpec::Value::MergePartialFromCodedStream(v10, a2);
        if (!result)
        {
          return result;
        }

        if (google::protobuf::io::CodedInputStream::DecrementRecursionDepthAndPopLimit(a2, v15))
        {
          continue;
        }
      }

      return 0;
    }

    if (v7 >> 3 == 1 && v7 == 10)
    {
      v10 = *(this + 2);
      if (!v10)
      {
        operator new();
      }

      goto LABEL_18;
    }

LABEL_21:
    if (!v7 || (v7 & 7) == 4)
    {
      return 1;
    }

    if ((google::protobuf::internal::WireFormatLite::SkipField(a2, v7, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t *CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair::SerializeWithCachedSizes(uint64_t *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  if (this != &CoreML::Specification::MILSpec::_DictionaryValue_KeyValuePair_default_instance_)
  {
    v5 = this;
    v6 = this[2];
    if (v6)
    {
      this = google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
    }

    v7 = v5[3];
    if (v7)
    {

      return google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
    }
  }

  return this;
}

uint64_t CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair::ByteSizeLong(CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair *this)
{
  if (this == &CoreML::Specification::MILSpec::_DictionaryValue_KeyValuePair_default_instance_)
  {
    v4 = 0;
  }

  else
  {
    v2 = *(this + 2);
    if (v2)
    {
      v3 = CoreML::Specification::MILSpec::Value::ByteSizeLong(v2);
      v4 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v4 = 0;
    }

    v5 = *(this + 3);
    if (v5)
    {
      v6 = CoreML::Specification::MILSpec::Value::ByteSizeLong(v5);
      v4 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  *(this + 8) = v4;
  return v4;
}

std::string *CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair::MergeFrom(std::string *this, const CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(&this->__r_.__value_.__l.__size_, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (a2 != &CoreML::Specification::MILSpec::_DictionaryValue_KeyValuePair_default_instance_)
  {
    if (*(a2 + 2))
    {
      v5 = v3->__r_.__value_.__r.__words[2];
      if (!v5)
      {
        operator new();
      }

      this = CoreML::Specification::MILSpec::Value::MergeFrom(v5, *(a2 + 2));
    }

    if (*(a2 + 3))
    {
      if (!v3[1].__r_.__value_.__r.__words[0])
      {
        operator new();
      }

      v6 = *(a2 + 3);
      data = v3[1].__r_.__value_.__l.__data_;

      return CoreML::Specification::MILSpec::Value::MergeFrom(data, v6);
    }
  }

  return this;
}

std::string *CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair::CopyFrom(std::string *this, std::string *a2)
{
  if (a2 != this)
  {
    v4 = this;
    CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair::Clear(this);

    return CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair::MergeFrom(v4, a2);
  }

  return this;
}

CoreML::Specification::MILSpec::DictionaryValue *CoreML::Specification::MILSpec::DictionaryValue::DictionaryValue(CoreML::Specification::MILSpec::DictionaryValue *this, uint64_t a2, google::protobuf::Closure *a3)
{
  *this = &unk_282A00168;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  if (this != &CoreML::Specification::MILSpec::_DictionaryValue_default_instance_)
  {
    CoreML::Specification::MILSpec::protobuf_MIL_2eproto::InitDefaults(this, a2, a3);
  }

  *(this + 10) = 0;
  return this;
}

void sub_218567FA0(_Unwind_Exception *a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::NamedValueType>::TypeHandler>((v1 + 16));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v2);
  _Unwind_Resume(a1);
}

CoreML::Specification::MILSpec::DictionaryValue *CoreML::Specification::MILSpec::DictionaryValue::DictionaryValue(CoreML::Specification::MILSpec::DictionaryValue *this, const CoreML::Specification::MILSpec::DictionaryValue *a2)
{
  *this = &unk_282A00168;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 24) = 0u;
  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16), *(a2 + 6));
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair>::TypeHandler>((this + 16), v7, (v6 + 8), v5, **(this + 4) - *(this + 6));
    v8 = *(this + 6) + v5;
    *(this + 6) = v8;
    v9 = *(this + 4);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  *(this + 10) = 0;
  v10 = *(a2 + 1);
  if (v10)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(v4, v10 & 0xFFFFFFFFFFFFFFFELL);
  }

  return this;
}

void sub_21856809C(_Unwind_Exception *a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::NamedValueType>::TypeHandler>((v2 + 16));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

void CoreML::Specification::MILSpec::DictionaryValue::~DictionaryValue(CoreML::Specification::MILSpec::DictionaryValue *this)
{
  *this = &unk_282A00168;
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::NamedValueType>::TypeHandler>(this + 2);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  CoreML::Specification::MILSpec::DictionaryValue::~DictionaryValue(this);

  JUMPOUT(0x21CEAFEA0);
}

google::protobuf::Arena *google::protobuf::Arena::Own<CoreML::Specification::MILSpec::DictionaryValue>(google::protobuf::Arena *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::Arena::AddListNode(result, a2, google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::DictionaryValue>);
  }

  return result;
}

uint64_t CoreML::Specification::MILSpec::DictionaryValue::Clear(uint64_t this)
{
  v1 = *(this + 24);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 32) + 8);
    do
    {
      v4 = *v3++;
      this = CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 24) = 0;
  }

  return this;
}

uint64_t CoreML::Specification::MILSpec::DictionaryValue::MergePartialFromCodedStream(CoreML::Specification::MILSpec::DictionaryValue *this, char **a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *a2;
      if (*a2 >= a2[1])
      {
        v6 = 0;
LABEL_6:
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2, v6);
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          break;
        }

        goto LABEL_7;
      }

      v6 = *v5;
      if (*v5 < 1)
      {
        goto LABEL_6;
      }

      *a2 = v5 + 1;
      v7 = v6 | 0x100000000;
      if ((v7 & 0x100000000) == 0)
      {
        break;
      }

LABEL_7:
      if (v7 != 10 || (v7 & 0xFFFFFFF8) != 8)
      {
        break;
      }

      v11 = *(this + 4);
      if (!v11)
      {
        v13 = *(this + 7);
LABEL_22:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 4, v13 + 1);
        v11 = *(this + 4);
        v13 = *v11;
        goto LABEL_23;
      }

      v12 = *(this + 6);
      v13 = *v11;
      if (v12 < *v11)
      {
        *(this + 6) = v12 + 1;
        Aligned = *&v11[2 * v12 + 2];
        goto LABEL_26;
      }

      if (v13 == *(this + 7))
      {
        goto LABEL_22;
      }

LABEL_23:
      *v11 = v13 + 1;
      v15 = *(this + 2);
      if (!v15)
      {
        operator new();
      }

      CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair::DictionaryValue_KeyValuePair(Aligned, v16, v17);
      google::protobuf::Arena::AddListNode(v15, Aligned, google::protobuf::internal::arena_destruct_object<CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair>);
      v18 = *(this + 6);
      v19 = *(this + 4) + 8 * v18;
      *(this + 6) = v18 + 1;
      *(v19 + 8) = Aligned;
LABEL_26:
      v20 = *a2;
      if (*a2 >= a2[1] || (VarintSizeAsIntFallback = *v20, (VarintSizeAsIntFallback & 0x80000000) != 0))
      {
        VarintSizeAsIntFallback = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(a2);
        if ((VarintSizeAsIntFallback & 0x80000000) != 0)
        {
          return 0;
        }
      }

      else
      {
        *a2 = v20 + 1;
      }

      v22 = google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(a2, VarintSizeAsIntFallback);
      if ((v22 & 0x8000000000000000) == 0)
      {
        v24 = v22;
        result = CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair::MergePartialFromCodedStream(Aligned, a2, v23);
        if (!result)
        {
          return result;
        }

        if (google::protobuf::io::CodedInputStream::DecrementRecursionDepthAndPopLimit(a2, v24))
        {
          continue;
        }
      }

      return 0;
    }

    if (!v7 || (v7 & 7) == 4)
    {
      return 1;
    }

    if ((google::protobuf::internal::WireFormatLite::SkipField(a2, v7, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreML::Specification::MILSpec::DictionaryValue::SerializeWithCachedSizes(uint64_t this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v4 = *(this + 24);
  if (v4)
  {
    v6 = this;
    for (i = 0; i != v4; ++i)
    {
      this = google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v6 + 32) + 8 * i + 8), a2, a4);
    }
  }

  return this;
}

uint64_t CoreML::Specification::MILSpec::DictionaryValue::ByteSizeLong(CoreML::Specification::MILSpec::DictionaryValue *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 6);
    do
    {
      v5 = CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair::ByteSizeLong(*(*(this + 4) + 8 * v3 + 8));
      v4 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6);
      ++v3;
    }

    while (v2 != v3);
  }

  else
  {
    v4 = 0;
  }

  *(this + 10) = v4;
  return v4;
}

std::string *CoreML::Specification::MILSpec::DictionaryValue::CopyFrom(std::string *this, std::string *a2)
{
  if (a2 != this)
  {
    v4 = this;
    data_low = LODWORD(this[1].__r_.__value_.__l.__data_);
    if (data_low >= 1)
    {
      v6 = (this[1].__r_.__value_.__l.__size_ + 8);
      do
      {
        v7 = *v6++;
        CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair::Clear(v7);
        --data_low;
      }

      while (data_low);
      *(v4 + 24) = 0;
    }

    return CoreML::Specification::MILSpec::DictionaryValue::MergeFrom(v4, a2);
  }

  return this;
}

void *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::~Map(void *a1)
{
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::clear(a1);
  if (!*a1)
  {
    v2 = a1[2];
    if (v2)
    {
      v3 = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::~InnerMap(v2);
      MEMORY[0x21CEAFEA0](v3, 0x10E0C40D5F42F35);
    }
  }

  return a1;
}

double google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::clear(uint64_t a1)
{
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::begin(a1, &v3);
  while (v3)
  {
    v5 = v3;
    v6 = v4;
    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::erase(a1, &v5, &v7);
    result = *&v7;
    v3 = v7;
    v4 = v8;
  }

  return result;
}

__n128 google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::erase@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (!*a1)
  {
    v6 = *(*a2 + 24);
    if (v6)
    {
      v7 = google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Value>::~MapPair(v6);
      MEMORY[0x21CEAFEA0](v7, 0x10B2C40CC7398DALL);
    }
  }

  v9 = *a2;
  v10 = a2[2];
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::iterator_base<google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::KeyValuePair const>::operator++(a2);
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::erase(*(a1 + 16), &v9);
  result = *a2;
  *a3 = *a2;
  *(a3 + 16) = a2[2];
  return result;
}

void google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::erase(void *a1, uint64_t a2)
{
  v15 = 0;
  v4 = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::iterator_base<google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::KeyValuePair const>::revalidate_if_necessary(a2, &v15);
  v5 = *(a2 + 16);
  v6 = *a2;
  v7 = a1[4];
  v8 = *(v7 + 8 * v5);
  if (v4)
  {
    v9 = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::EraseFromLinkedList(a1, v6, *(v7 + 8 * v5));
LABEL_5:
    *(a1[4] + 8 * v5) = v9;
    goto LABEL_6;
  }

  std::__tree<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::MapAllocator<std::string *>>::__erase_unique<std::string *>(v8, v15 + 32);
  if (!*(v8 + 24))
  {
    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::DestroyTree(a1, v8);
    v9 = 0;
    *(a1[4] + ((8 * v5) | 8)) = 0;
    v5 &= ~1uLL;
    goto LABEL_5;
  }

LABEL_6:
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::DestroyNode(a1, v6);
  --*a1;
  if (v5 == a1[3])
  {
    v10 = a1[1];
    v11 = v10 > v5;
    v12 = v10 - v5;
    if (v11)
    {
      v13 = (a1[4] + 8 * v5);
      v14 = v5 + 1;
      do
      {
        if (*v13)
        {
          break;
        }

        a1[3] = v14;
        ++v13;
        ++v14;
        --v12;
      }

      while (v12);
    }
  }
}

uint64_t google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Value>::~MapPair(uint64_t a1)
{
  CoreML::Specification::MILSpec::Value::~Value((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::EraseFromLinkedList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = *(a3 + 32);
  if (v3 == a2)
  {
    return v4;
  }

  *(v3 + 32) = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::EraseFromLinkedList();
  return v3;
}

void google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::DestroyNode(uint64_t a1, void **__p)
{
  if (*(__p + 23) < 0)
  {
    operator delete(*__p);
  }

  if (!*(a1 + 40))
  {

    operator delete(__p);
  }
}

uint64_t std::__tree<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::MapAllocator<std::string *>>::__erase_unique<std::string *>(uint64_t a1, uint64_t a2)
{
  v3 = std::__tree<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::MapAllocator<std::string *>>::find<std::string *>(a1, a2);
  if ((a1 + 8) == v3)
  {
    return 0;
  }

  std::__tree<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::MapAllocator<std::string *>>::erase(a1, v3);
  return 1;
}

uint64_t *std::__tree<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::MapAllocator<std::string *>>::erase(uint64_t a1, uint64_t *a2)
{
  v4 = std::__tree<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::MapAllocator<std::string *>>::__remove_node_pointer(a1, a2);
  if (!*(a1 + 16))
  {
    operator delete(a2);
  }

  return v4;
}

uint64_t *std::__tree<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::MapAllocator<std::string *>>::__remove_node_pointer(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  --*(a1 + 24);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 8), a2);
  return v3;
}

uint64_t google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::~InnerMap(uint64_t a1)
{
  if (*(a1 + 32))
  {
    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::clear(a1);
    if (!*(a1 + 40))
    {
      operator delete(*(a1 + 32));
    }
  }

  return a1;
}

void google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::clear(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = 0;
    do
    {
      v4 = a1[4];
      v5 = *(v4 + 8 * v3);
      if (v5)
      {
        if (v5 == *(v4 + 8 * (v3 ^ 1)))
        {
          v7 = v3 + 1;
          *(v4 + 8 * (v3 + 1)) = 0;
          *(a1[4] + 8 * v3) = 0;
          v8 = *v5;
          do
          {
            v9 = v8[4];
            v10 = v8[1];
            v11 = v8;
            if (v10)
            {
              do
              {
                v12 = v10;
                v10 = *v10;
              }

              while (v10);
            }

            else
            {
              do
              {
                v12 = v11[2];
                v13 = *v12 == v11;
                v11 = v12;
              }

              while (!v13);
            }

            std::__tree<std::string *,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::KeyCompare,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::MapAllocator<std::string *>>::erase(v5, v8);
            google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::DestroyNode(a1, v9);
            v8 = v12;
          }

          while (v12 != (v5 + 8));
          google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::DestroyTree(a1, v5);
          goto LABEL_16;
        }

        *(v4 + 8 * v3) = 0;
        do
        {
          v6 = *(v5 + 32);
          google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::DestroyNode(a1, v5);
          v5 = v6;
        }

        while (v6);
      }

      v7 = v3;
LABEL_16:
      v3 = v7 + 1;
      v2 = a1[1];
    }

    while (v7 + 1 < v2);
  }

  *a1 = 0;
  a1[3] = v2;
}

void *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::~Map(void *a1)
{
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::clear(a1);
  if (!*a1)
  {
    v2 = a1[2];
    if (v2)
    {
      v3 = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::~InnerMap(v2);
      MEMORY[0x21CEAFEA0](v3, 0x10E0C40D5F42F35);
    }
  }

  return a1;
}

double google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::clear(uint64_t a1)
{
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::begin(a1, &v3);
  while (v3)
  {
    v5 = v3;
    v6 = v4;
    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::erase(a1, &v5, &v7);
    result = *&v7;
    v3 = v7;
    v4 = v8;
  }

  return result;
}

__n128 google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::erase@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (!*a1)
  {
    v6 = *(*a2 + 24);
    if (v6)
    {
      v7 = google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function>::~MapPair(v6);
      MEMORY[0x21CEAFEA0](v7, 0x10B2C40A53FFCBDLL);
    }
  }

  v9 = *a2;
  v10 = a2[2];
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::iterator_base<google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::KeyValuePair const>::operator++(a2);
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::erase(*(a1 + 16), &v9);
  result = *a2;
  *a3 = *a2;
  *(a3 + 16) = a2[2];
  return result;
}

uint64_t google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function>::~MapPair(uint64_t a1)
{
  CoreML::Specification::MILSpec::Function::~Function((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::~InnerMap(uint64_t a1)
{
  if (*(a1 + 32))
  {
    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::clear(a1);
    if (!*(a1 + 40))
    {
      operator delete(*(a1 + 32));
    }
  }

  return a1;
}

uint64_t *google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = v2 & 0xFFFFFFFFFFFFFFFELL;
    if (!*((v2 & 0xFFFFFFFFFFFFFFFELL) + 24) && v3 != 0)
    {
      if (*(v3 + 23) < 0)
      {
        operator delete(*v3);
      }

      MEMORY[0x21CEAFEA0](v3, 0x1032C402ED93987);
    }
  }

  *a1 = 0;
  return a1;
}

void *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::~Map(void *a1)
{
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::clear(a1);
  if (!*a1)
  {
    v2 = a1[2];
    if (v2)
    {
      v3 = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::~InnerMap(v2);
      MEMORY[0x21CEAFEA0](v3, 0x10E0C40D5F42F35);
    }
  }

  return a1;
}

double google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::clear(uint64_t a1)
{
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::begin(a1, &v3);
  while (v3)
  {
    v5 = v3;
    v6 = v4;
    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::erase(a1, &v5, &v7);
    result = *&v7;
    v3 = v7;
    v4 = v8;
  }

  return result;
}

__n128 google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::erase@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (!*a1)
  {
    v6 = *(*a2 + 24);
    if (v6)
    {
      v7 = google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Block>::~MapPair(v6);
      MEMORY[0x21CEAFEA0](v7, 0x10B2C4008C62E43);
    }
  }

  v9 = *a2;
  v10 = a2[2];
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::iterator_base<google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::KeyValuePair const>::operator++(a2);
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::erase(*(a1 + 16), &v9);
  result = *a2;
  *a3 = *a2;
  *(a3 + 16) = a2[2];
  return result;
}

uint64_t google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Block>::~MapPair(uint64_t a1)
{
  CoreML::Specification::MILSpec::Block::~Block((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::~InnerMap(uint64_t a1)
{
  if (*(a1 + 32))
  {
    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::clear(a1);
    if (!*(a1 + 40))
    {
      operator delete(*(a1 + 32));
    }
  }

  return a1;
}

void *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::~Map(void *a1)
{
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::clear(a1);
  if (!*a1)
  {
    v2 = a1[2];
    if (v2)
    {
      v3 = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::InnerMap::~InnerMap(v2);
      MEMORY[0x21CEAFEA0](v3, 0x10E0C40D5F42F35);
    }
  }

  return a1;
}

double google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::clear(uint64_t a1)
{
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::begin(a1, &v3);
  while (v3)
  {
    v5 = v3;
    v6 = v4;
    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::erase(a1, &v5, &v7);
    result = *&v7;
    v3 = v7;
    v4 = v8;
  }

  return result;
}

__n128 google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::erase@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (!*a1)
  {
    v6 = *(*a2 + 24);
    if (v6)
    {
      v7 = google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Argument>::~MapPair(v6);
      MEMORY[0x21CEAFEA0](v7, 0x10B2C40C743746ALL);
    }
  }

  v9 = *a2;
  v10 = a2[2];
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::iterator_base<google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::KeyValuePair const>::operator++(a2);
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::erase(*(a1 + 16), &v9);
  result = *a2;
  *a3 = *a2;
  *(a3 + 16) = a2[2];
  return result;
}

uint64_t google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Argument>::~MapPair(uint64_t a1)
{
  CoreML::Specification::MILSpec::Argument::~Argument((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::InnerMap::~InnerMap(uint64_t a1)
{
  if (*(a1 + 32))
  {
    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::clear(a1);
    if (!*(a1 + 40))
    {
      operator delete(*(a1 + 32));
    }
  }

  return a1;
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 >= 1)
  {
    v2 = *(result + 16) + 8;
    do
    {
      v3 = *v2;
      if (*(*v2 + 23) < 0)
      {
        **v3 = 0;
        *(v3 + 8) = 0;
      }

      else
      {
        *v3 = 0;
        *(v3 + 23) = 0;
      }

      v2 += 8;
      --v1;
    }

    while (v1);
    *(result + 8) = 0;
  }

  return result;
}

void google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::~MapEntryLite(uint64_t a1)
{
  google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::~MapEntryImpl(a1);

  JUMPOUT(0x21CEAFEA0);
}

void *google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::New(uint64_t a1, google::protobuf::Arena *a2)
{
  if (!a2)
  {
    operator new();
  }

  result[1] = 0;
  result[2] = &google::protobuf::internal::fixed_address_empty_string;
  result[3] = 0;
  result[4] = a2;
  *(result + 10) = 0;
  v5 = *(a1 + 8);
  *result = &unk_282A004E8;
  result[1] = v5;
  return result;
}

void google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
    }
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CoreML::Specification::MILSpec::Function::Clear(v3);
  }

  *(a1 + 40) &= 0xFFFFFFFC;
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::MergePartialFromCodedStream(uint64_t a1, char **this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *this;
      if (*this >= this[1])
      {
        TagFallback = 0;
      }

      else
      {
        TagFallback = *v5;
        if ((*v5 & 0x80000000) == 0)
        {
          *this = v5 + 1;
          goto LABEL_6;
        }
      }

      TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(this, TagFallback);
LABEL_6:
      if (TagFallback != 10)
      {
        break;
      }

      *(a1 + 40) |= 1u;
      v8 = *(a1 + 16);
      if (v8 == &google::protobuf::internal::fixed_address_empty_string)
      {
        google::protobuf::internal::ArenaStringPtr::CreateInstance();
      }

      result = google::protobuf::internal::WireFormatLite::ReadBytes(this, v8);
      if (!result)
      {
        return result;
      }

      v7 = *(a1 + 40) | 1;
      *(a1 + 40) = v7;
      v10 = *this;
      if (*this < this[1] && *v10 == 18)
      {
        *this = v10 + 1;
LABEL_19:
        *(a1 + 40) = v7 | 2;
        Aligned = *(a1 + 24);
        if (!Aligned)
        {
          v12 = *(a1 + 32);
          if (!v12)
          {
            operator new();
          }

          CoreML::Specification::MILSpec::Function::Function(Aligned);
          google::protobuf::Arena::AddListNode(v12, Aligned, google::protobuf::internal::arena_destruct_object<CoreML::Specification::MILSpec::Function>);
          *(a1 + 24) = Aligned;
        }

        v13 = *this;
        if (*this >= this[1] || (VarintSizeAsIntFallback = *v13, (VarintSizeAsIntFallback & 0x80000000) != 0))
        {
          VarintSizeAsIntFallback = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(this);
          if ((VarintSizeAsIntFallback & 0x80000000) != 0)
          {
            return 0;
          }
        }

        else
        {
          *this = v13 + 1;
        }

        v15 = google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(this, VarintSizeAsIntFallback);
        if ((v15 & 0x8000000000000000) != 0)
        {
          return 0;
        }

        v17 = v15;
        result = CoreML::Specification::MILSpec::Function::MergePartialFromCodedStream(Aligned, this, v16);
        if (!result)
        {
          return result;
        }

        result = google::protobuf::io::CodedInputStream::DecrementRecursionDepthAndPopLimit(this, v17);
        if (!result)
        {
          return result;
        }

        *(a1 + 40) |= 2u;
        if (*this == this[1] && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (TagFallback == 18)
    {
      v7 = *(a1 + 40);
      goto LABEL_19;
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::ByteSizeLong(_DWORD *a1)
{
  v2 = a1[10];
  if (v2)
  {
    v7 = (*(*a1 + 136))(a1);
    v8 = *(v7 + 23);
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(v7 + 8);
    }

    v3 = (v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6)) + 1;
    if ((a1[10] & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v6 = 0;
    return v6 + v3;
  }

  v3 = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v4 = (*(*a1 + 144))(a1);
  v5 = CoreML::Specification::MILSpec::Function::ByteSizeLong(v4);
  v6 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  return v6 + v3;
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::SerializeWithCachedSizes(uint64_t a1, google::protobuf::io::CodedOutputStream *a2)
{
  v4 = (*(*a1 + 136))(a1);
  google::protobuf::internal::WireFormatLite::WriteString(1, v4, a2);
  v5 = (*(*a1 + 144))(a1);

  return google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v5, a2, v6);
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::GetCachedSize(_DWORD *a1)
{
  v2 = a1[10];
  if (v2)
  {
    v6 = (*(*a1 + 136))(a1);
    v7 = *(v6 + 23);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(v6 + 8);
    }

    v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((a1[10] & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v5 = 0;
    return v5 + v3;
  }

  v3 = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v4 = (*(*a1 + 144))(a1);
  v5 = *(v4 + 112) + ((9 * (__clz(*(v4 + 112) | 1) ^ 0x1F) + 73) >> 6) + 1;
  return v5 + v3;
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::InternalSerializeWithCachedSizesToArray(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = (*(*a1 + 136))(a1);
  *a3 = 10;
  v7 = google::protobuf::io::CodedOutputStream::WriteStringWithSizeToArray(v6, a3 + 1);
  v8 = (*(*a1 + 144))(a1);
  *v7 = 18;
  v9 = v7 + 1;
  v10 = (*(*v8 + 120))(v8);
  if (v10 < 0x80)
  {
    LOBYTE(v11) = v10;
  }

  else
  {
    do
    {
      *v9++ = v10 | 0x80;
      v11 = v10 >> 7;
      v12 = v10 >> 14;
      v10 >>= 7;
    }

    while (v12);
  }

  *v9 = v11;
  v13 = *(*v8 + 128);

  return v13(v8, a2, v9 + 1);
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::value(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/proto/../deps/protobuf/src/google/protobuf/map_entry_lite.h", 162);
    v3 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: default_instance_ != NULL: ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v3, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
    v2 = *(a1 + 8);
  }

  v5 = *(v2 + 24);
  if (*(a1 + 24))
  {
    return *(a1 + 24);
  }

  else
  {
    return v5;
  }
}

void sub_218569C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::~MapEntryImpl(uint64_t a1)
{
  google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::~MapEntryImpl(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::~MapEntryImpl(uint64_t a1)
{
  *a1 = &unk_282A005C0;
  if (*(a1 + 8) != a1 && !*(a1 + 32))
  {
    google::protobuf::internal::MapTypeHandler<(google::protobuf::internal::WireFormatLite::FieldType)9,std::string>::DeleteNoArena((a1 + 16));
    v2 = *(a1 + 24);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

__int128 **google::protobuf::internal::MapTypeHandler<(google::protobuf::internal::WireFormatLite::FieldType)9,std::string>::DeleteNoArena(__int128 **result)
{
  v1 = *result;
  if (*result != &google::protobuf::internal::fixed_address_empty_string && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x21CEAFEA0);
  }

  return result;
}

char *google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::MergeFromInternal(char *result, _DWORD *a2)
{
  v2 = a2[10];
  if (v2)
  {
    v4 = result;
    if (v2)
    {
      v5 = (result + 16);
      if (*(result + 2) == &google::protobuf::internal::fixed_address_empty_string)
      {
        google::protobuf::internal::ArenaStringPtr::CreateInstance();
      }

      v6 = (*(*a2 + 136))(a2);
      if (*v5 == &google::protobuf::internal::fixed_address_empty_string)
      {
        google::protobuf::internal::ArenaStringPtr::CreateInstance();
      }

      result = std::string::operator=(*v5, v6);
      *(v4 + 10) |= 1u;
      v2 = a2[10];
    }

    if ((v2 & 2) != 0)
    {
      if (!*(v4 + 3))
      {
        v7 = *(v4 + 4);
        if (!v7)
        {
          operator new();
        }

        CoreML::Specification::MILSpec::Function::Function(Aligned);
        google::protobuf::Arena::AddListNode(v7, Aligned, google::protobuf::internal::arena_destruct_object<CoreML::Specification::MILSpec::Function>);
        *(v4 + 3) = Aligned;
      }

      v9 = (*(*a2 + 144))(a2);
      result = CoreML::Specification::MILSpec::Function::MergeFrom(*(v4 + 3), v9);
      *(v4 + 10) |= 2u;
    }
  }

  return result;
}

google::protobuf::Arena *google::protobuf::Arena::Own<std::string>(google::protobuf::Arena *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::Arena::AddListNode(result, a2, google::protobuf::internal::arena_delete_object<std::string>);
  }

  return result;
}

uint64_t google::protobuf::internal::arena_delete_object<std::string>(uint64_t result)
{
  if (result)
  {
    if (*(result + 23) < 0)
    {
      operator delete(*result);
    }

    JUMPOUT(0x21CEAFEA0);
  }

  return result;
}

void google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::~MapEntryLite(uint64_t a1)
{
  google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::~MapEntryImpl(a1);

  JUMPOUT(0x21CEAFEA0);
}

void *google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::New(uint64_t a1, google::protobuf::Arena *a2)
{
  if (!a2)
  {
    operator new();
  }

  result[1] = 0;
  result[2] = &google::protobuf::internal::fixed_address_empty_string;
  result[3] = 0;
  result[4] = a2;
  *(result + 10) = 0;
  v5 = *(a1 + 8);
  *result = &unk_282A00668;
  result[1] = v5;
  return result;
}

CoreML::Specification::MILSpec::Value *google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
    }
  }

  result = *(a1 + 24);
  if (result)
  {
    result = CoreML::Specification::MILSpec::Value::Clear(result);
  }

  *(a1 + 40) &= 0xFFFFFFFC;
  return result;
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::MergePartialFromCodedStream(uint64_t a1, char **this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *this;
      if (*this >= this[1])
      {
        TagFallback = 0;
      }

      else
      {
        TagFallback = *v5;
        if ((*v5 & 0x80000000) == 0)
        {
          *this = v5 + 1;
          goto LABEL_6;
        }
      }

      TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(this, TagFallback);
LABEL_6:
      if (TagFallback != 10)
      {
        break;
      }

      *(a1 + 40) |= 1u;
      v8 = *(a1 + 16);
      if (v8 == &google::protobuf::internal::fixed_address_empty_string)
      {
        google::protobuf::internal::ArenaStringPtr::CreateInstance();
      }

      result = google::protobuf::internal::WireFormatLite::ReadBytes(this, v8);
      if (!result)
      {
        return result;
      }

      v7 = *(a1 + 40) | 1;
      *(a1 + 40) = v7;
      v10 = *this;
      if (*this < this[1] && *v10 == 18)
      {
        *this = v10 + 1;
LABEL_19:
        *(a1 + 40) = v7 | 2;
        Aligned = *(a1 + 24);
        if (!Aligned)
        {
          v12 = *(a1 + 32);
          if (!v12)
          {
            operator new();
          }

          CoreML::Specification::MILSpec::Value::Value(Aligned, v13, v14);
          google::protobuf::Arena::AddListNode(v12, Aligned, google::protobuf::internal::arena_destruct_object<CoreML::Specification::MILSpec::Value>);
          *(a1 + 24) = Aligned;
        }

        v15 = *this;
        if (*this >= this[1] || (VarintSizeAsIntFallback = *v15, (VarintSizeAsIntFallback & 0x80000000) != 0))
        {
          VarintSizeAsIntFallback = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(this);
          if ((VarintSizeAsIntFallback & 0x80000000) != 0)
          {
            return 0;
          }
        }

        else
        {
          *this = v15 + 1;
        }

        v17 = google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(this, VarintSizeAsIntFallback);
        if ((v17 & 0x8000000000000000) != 0)
        {
          return 0;
        }

        v19 = v17;
        result = CoreML::Specification::MILSpec::Value::MergePartialFromCodedStream(Aligned, this, v18);
        if (!result)
        {
          return result;
        }

        result = google::protobuf::io::CodedInputStream::DecrementRecursionDepthAndPopLimit(this, v19);
        if (!result)
        {
          return result;
        }

        *(a1 + 40) |= 2u;
        if (*this == this[1] && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (TagFallback == 18)
    {
      v7 = *(a1 + 40);
      goto LABEL_19;
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::ByteSizeLong(_DWORD *a1)
{
  v2 = a1[10];
  if (v2)
  {
    v7 = (*(*a1 + 136))(a1);
    v8 = *(v7 + 23);
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(v7 + 8);
    }

    v3 = (v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6)) + 1;
    if ((a1[10] & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v6 = 0;
    return v6 + v3;
  }

  v3 = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v4 = (*(*a1 + 144))(a1);
  v5 = CoreML::Specification::MILSpec::Value::ByteSizeLong(v4);
  v6 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  return v6 + v3;
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::SerializeWithCachedSizes(uint64_t a1, google::protobuf::io::CodedOutputStream *a2)
{
  v4 = (*(*a1 + 136))(a1);
  google::protobuf::internal::WireFormatLite::WriteString(1, v4, a2);
  v5 = (*(*a1 + 144))(a1);

  return google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v5, a2, v6);
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::GetCachedSize(_DWORD *a1)
{
  v2 = a1[10];
  if (v2)
  {
    v6 = (*(*a1 + 136))(a1);
    v7 = *(v6 + 23);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(v6 + 8);
    }

    v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((a1[10] & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v5 = 0;
    return v5 + v3;
  }

  v3 = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v4 = (*(*a1 + 144))(a1);
  v5 = *(v4 + 40) + ((9 * (__clz(*(v4 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
  return v5 + v3;
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::InternalSerializeWithCachedSizesToArray(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = (*(*a1 + 136))(a1);
  *a3 = 10;
  v7 = google::protobuf::io::CodedOutputStream::WriteStringWithSizeToArray(v6, a3 + 1);
  v8 = (*(*a1 + 144))(a1);
  *v7 = 18;
  v9 = v7 + 1;
  v10 = (*(*v8 + 120))(v8);
  if (v10 < 0x80)
  {
    LOBYTE(v11) = v10;
  }

  else
  {
    do
    {
      *v9++ = v10 | 0x80;
      v11 = v10 >> 7;
      v12 = v10 >> 14;
      v10 >>= 7;
    }

    while (v12);
  }

  *v9 = v11;
  v13 = *(*v8 + 128);

  return v13(v8, a2, v9 + 1);
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::value(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/proto/../deps/protobuf/src/google/protobuf/map_entry_lite.h", 162);
    v3 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: default_instance_ != NULL: ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v3, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
    v2 = *(a1 + 8);
  }

  v5 = *(v2 + 24);
  if (*(a1 + 24))
  {
    return *(a1 + 24);
  }

  else
  {
    return v5;
  }
}

void sub_21856A890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::~MapEntryImpl(uint64_t a1)
{
  google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::~MapEntryImpl(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::~MapEntryImpl(uint64_t a1)
{
  *a1 = &unk_282A00740;
  if (*(a1 + 8) != a1 && !*(a1 + 32))
  {
    google::protobuf::internal::MapTypeHandler<(google::protobuf::internal::WireFormatLite::FieldType)9,std::string>::DeleteNoArena((a1 + 16));
    v2 = *(a1 + 24);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

std::string *google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::MergeFromInternal(std::string *result, _DWORD *a2)
{
  v2 = a2[10];
  if (v2)
  {
    v4 = result;
    if (v2)
    {
      v5 = &result->__r_.__value_.__r.__words[2];
      if (result->__r_.__value_.__r.__words[2] == &google::protobuf::internal::fixed_address_empty_string)
      {
        google::protobuf::internal::ArenaStringPtr::CreateInstance();
      }

      v6 = (*(*a2 + 136))(a2);
      if (*v5 == &google::protobuf::internal::fixed_address_empty_string)
      {
        google::protobuf::internal::ArenaStringPtr::CreateInstance();
      }

      result = std::string::operator=(*v5, v6);
      LODWORD(v4[1].__r_.__value_.__r.__words[2]) |= 1u;
      v2 = a2[10];
    }

    if ((v2 & 2) != 0)
    {
      if (!v4[1].__r_.__value_.__r.__words[0])
      {
        size = v4[1].__r_.__value_.__l.__size_;
        if (!size)
        {
          operator new();
        }

        CoreML::Specification::MILSpec::Value::Value(Aligned, v9, v10);
        google::protobuf::Arena::AddListNode(size, Aligned, google::protobuf::internal::arena_destruct_object<CoreML::Specification::MILSpec::Value>);
        v4[1].__r_.__value_.__r.__words[0] = Aligned;
      }

      v11 = (*(*a2 + 144))(a2);
      result = CoreML::Specification::MILSpec::Value::MergeFrom(v4[1].__r_.__value_.__l.__data_, v11);
      LODWORD(v4[1].__r_.__value_.__r.__words[2]) |= 2u;
    }
  }

  return result;
}

void google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::~MapEntryLite(uint64_t a1)
{
  google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::~MapEntryImpl(a1);

  JUMPOUT(0x21CEAFEA0);
}

void *google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::New(uint64_t a1, google::protobuf::Arena *a2)
{
  if (!a2)
  {
    operator new();
  }

  result[1] = 0;
  result[2] = &google::protobuf::internal::fixed_address_empty_string;
  result[3] = 0;
  result[4] = a2;
  *(result + 10) = 0;
  v5 = *(a1 + 8);
  *result = &unk_282A007E8;
  result[1] = v5;
  return result;
}

void google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
    }
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CoreML::Specification::MILSpec::Block::Clear(v3);
  }

  *(a1 + 40) &= 0xFFFFFFFC;
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::MergePartialFromCodedStream(uint64_t a1, char **this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *this;
      if (*this >= this[1])
      {
        TagFallback = 0;
      }

      else
      {
        TagFallback = *v5;
        if ((*v5 & 0x80000000) == 0)
        {
          *this = v5 + 1;
          goto LABEL_6;
        }
      }

      TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(this, TagFallback);
LABEL_6:
      if (TagFallback != 10)
      {
        break;
      }

      *(a1 + 40) |= 1u;
      v8 = *(a1 + 16);
      if (v8 == &google::protobuf::internal::fixed_address_empty_string)
      {
        google::protobuf::internal::ArenaStringPtr::CreateInstance();
      }

      result = google::protobuf::internal::WireFormatLite::ReadBytes(this, v8);
      if (!result)
      {
        return result;
      }

      v7 = *(a1 + 40) | 1;
      *(a1 + 40) = v7;
      v10 = *this;
      if (*this < this[1] && *v10 == 18)
      {
        *this = v10 + 1;
LABEL_19:
        *(a1 + 40) = v7 | 2;
        Aligned = *(a1 + 24);
        if (!Aligned)
        {
          v12 = *(a1 + 32);
          if (!v12)
          {
            operator new();
          }

          CoreML::Specification::MILSpec::Block::Block(Aligned);
          google::protobuf::Arena::AddListNode(v12, Aligned, google::protobuf::internal::arena_destruct_object<CoreML::Specification::MILSpec::Block>);
          *(a1 + 24) = Aligned;
        }

        v13 = *this;
        if (*this >= this[1] || (VarintSizeAsIntFallback = *v13, (VarintSizeAsIntFallback & 0x80000000) != 0))
        {
          VarintSizeAsIntFallback = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(this);
          if ((VarintSizeAsIntFallback & 0x80000000) != 0)
          {
            return 0;
          }
        }

        else
        {
          *this = v13 + 1;
        }

        v15 = google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(this, VarintSizeAsIntFallback);
        if ((v15 & 0x8000000000000000) != 0)
        {
          return 0;
        }

        v17 = v15;
        result = CoreML::Specification::MILSpec::Block::MergePartialFromCodedStream(Aligned, this, v16);
        if (!result)
        {
          return result;
        }

        result = google::protobuf::io::CodedInputStream::DecrementRecursionDepthAndPopLimit(this, v17);
        if (!result)
        {
          return result;
        }

        *(a1 + 40) |= 2u;
        if (*this == this[1] && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (TagFallback == 18)
    {
      v7 = *(a1 + 40);
      goto LABEL_19;
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::ByteSizeLong(_DWORD *a1)
{
  v2 = a1[10];
  if (v2)
  {
    v7 = (*(*a1 + 136))(a1);
    v8 = *(v7 + 23);
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(v7 + 8);
    }

    v3 = (v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6)) + 1;
    if ((a1[10] & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v6 = 0;
    return v6 + v3;
  }

  v3 = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v4 = (*(*a1 + 144))(a1);
  v5 = CoreML::Specification::MILSpec::Block::ByteSizeLong(v4);
  v6 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  return v6 + v3;
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::SerializeWithCachedSizes(uint64_t a1, google::protobuf::io::CodedOutputStream *a2)
{
  v4 = (*(*a1 + 136))(a1);
  google::protobuf::internal::WireFormatLite::WriteString(1, v4, a2);
  v5 = (*(*a1 + 144))(a1);

  return google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v5, a2, v6);
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::GetCachedSize(_DWORD *a1)
{
  v2 = a1[10];
  if (v2)
  {
    v6 = (*(*a1 + 136))(a1);
    v7 = *(v6 + 23);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(v6 + 8);
    }

    v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((a1[10] & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v5 = 0;
    return v5 + v3;
  }

  v3 = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v4 = (*(*a1 + 144))(a1);
  v5 = *(v4 + 120) + ((9 * (__clz(*(v4 + 120) | 1) ^ 0x1F) + 73) >> 6) + 1;
  return v5 + v3;
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::InternalSerializeWithCachedSizesToArray(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = (*(*a1 + 136))(a1);
  *a3 = 10;
  v7 = google::protobuf::io::CodedOutputStream::WriteStringWithSizeToArray(v6, a3 + 1);
  v8 = (*(*a1 + 144))(a1);
  *v7 = 18;
  v9 = v7 + 1;
  v10 = (*(*v8 + 120))(v8);
  if (v10 < 0x80)
  {
    LOBYTE(v11) = v10;
  }

  else
  {
    do
    {
      *v9++ = v10 | 0x80;
      v11 = v10 >> 7;
      v12 = v10 >> 14;
      v10 >>= 7;
    }

    while (v12);
  }

  *v9 = v11;
  v13 = *(*v8 + 128);

  return v13(v8, a2, v9 + 1);
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::value(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/proto/../deps/protobuf/src/google/protobuf/map_entry_lite.h", 162);
    v3 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: default_instance_ != NULL: ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v3, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
    v2 = *(a1 + 8);
  }

  v5 = *(v2 + 24);
  if (*(a1 + 24))
  {
    return *(a1 + 24);
  }

  else
  {
    return v5;
  }
}

void sub_21856B33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::~MapEntryImpl(uint64_t a1)
{
  google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::~MapEntryImpl(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::~MapEntryImpl(uint64_t a1)
{
  *a1 = &unk_282A008C0;
  if (*(a1 + 8) != a1 && !*(a1 + 32))
  {
    google::protobuf::internal::MapTypeHandler<(google::protobuf::internal::WireFormatLite::FieldType)9,std::string>::DeleteNoArena((a1 + 16));
    v2 = *(a1 + 24);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::MergeFromInternal(uint64_t result, _DWORD *a2)
{
  v2 = a2[10];
  if (v2)
  {
    v4 = result;
    if (v2)
    {
      v5 = (result + 16);
      if (*(result + 16) == &google::protobuf::internal::fixed_address_empty_string)
      {
        google::protobuf::internal::ArenaStringPtr::CreateInstance();
      }

      v6 = (*(*a2 + 136))(a2);
      if (*v5 == &google::protobuf::internal::fixed_address_empty_string)
      {
        google::protobuf::internal::ArenaStringPtr::CreateInstance();
      }

      result = std::string::operator=(*v5, v6);
      *(v4 + 40) |= 1u;
      v2 = a2[10];
    }

    if ((v2 & 2) != 0)
    {
      if (!*(v4 + 24))
      {
        v7 = *(v4 + 32);
        if (!v7)
        {
          operator new();
        }

        CoreML::Specification::MILSpec::Block::Block(Aligned);
        google::protobuf::Arena::AddListNode(v7, Aligned, google::protobuf::internal::arena_destruct_object<CoreML::Specification::MILSpec::Block>);
        *(v4 + 24) = Aligned;
      }

      v9 = (*(*a2 + 144))(a2);
      result = CoreML::Specification::MILSpec::Block::MergeFrom(*(v4 + 24), v9);
      *(v4 + 40) |= 2u;
    }
  }

  return result;
}

void google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::~MapEntryLite(uint64_t a1)
{
  google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::~MapEntryImpl(a1);

  JUMPOUT(0x21CEAFEA0);
}

void *google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::New(uint64_t a1, google::protobuf::Arena *a2)
{
  if (!a2)
  {
    operator new();
  }

  result[1] = 0;
  result[2] = &google::protobuf::internal::fixed_address_empty_string;
  result[3] = 0;
  result[4] = a2;
  *(result + 10) = 0;
  v5 = *(a1 + 8);
  *result = &unk_282A00968;
  result[1] = v5;
  return result;
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
    }
  }

  v3 = *(result + 24);
  if (v3)
  {
    v4 = *(v3 + 24);
    if (v4 >= 1)
    {
      v5 = (*(v3 + 32) + 8);
      do
      {
        v6 = *v5++;
        result = CoreML::Specification::MILSpec::Argument_Binding::clear_binding(v6);
        --v4;
      }

      while (v4);
      *(v3 + 24) = 0;
    }
  }

  *(v1 + 40) &= 0xFFFFFFFC;
  return result;
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::MergePartialFromCodedStream(uint64_t a1, char **this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *this;
      if (*this >= this[1])
      {
        TagFallback = 0;
      }

      else
      {
        TagFallback = *v5;
        if ((*v5 & 0x80000000) == 0)
        {
          *this = v5 + 1;
          goto LABEL_6;
        }
      }

      TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(this, TagFallback);
LABEL_6:
      if (TagFallback != 10)
      {
        break;
      }

      *(a1 + 40) |= 1u;
      v8 = *(a1 + 16);
      if (v8 == &google::protobuf::internal::fixed_address_empty_string)
      {
        google::protobuf::internal::ArenaStringPtr::CreateInstance();
      }

      result = google::protobuf::internal::WireFormatLite::ReadBytes(this, v8);
      if (!result)
      {
        return result;
      }

      v7 = *(a1 + 40) | 1;
      *(a1 + 40) = v7;
      v10 = *this;
      if (*this < this[1] && *v10 == 18)
      {
        *this = v10 + 1;
LABEL_19:
        *(a1 + 40) = v7 | 2;
        Aligned = *(a1 + 24);
        if (!Aligned)
        {
          v12 = *(a1 + 32);
          if (!v12)
          {
            operator new();
          }

          CoreML::Specification::MILSpec::Argument::Argument(Aligned, v13, v14);
          google::protobuf::Arena::AddListNode(v12, Aligned, google::protobuf::internal::arena_destruct_object<CoreML::Specification::MILSpec::Argument>);
          *(a1 + 24) = Aligned;
        }

        v15 = *this;
        if (*this >= this[1] || (VarintSizeAsIntFallback = *v15, (VarintSizeAsIntFallback & 0x80000000) != 0))
        {
          VarintSizeAsIntFallback = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(this);
          if ((VarintSizeAsIntFallback & 0x80000000) != 0)
          {
            return 0;
          }
        }

        else
        {
          *this = v15 + 1;
        }

        v17 = google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(this, VarintSizeAsIntFallback);
        if ((v17 & 0x8000000000000000) != 0)
        {
          return 0;
        }

        v19 = v17;
        result = CoreML::Specification::MILSpec::Argument::MergePartialFromCodedStream(Aligned, this, v18);
        if (!result)
        {
          return result;
        }

        result = google::protobuf::io::CodedInputStream::DecrementRecursionDepthAndPopLimit(this, v19);
        if (!result)
        {
          return result;
        }

        *(a1 + 40) |= 2u;
        if (*this == this[1] && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (TagFallback == 18)
    {
      v7 = *(a1 + 40);
      goto LABEL_19;
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::ByteSizeLong(_DWORD *a1)
{
  v2 = a1[10];
  if (v2)
  {
    v7 = (*(*a1 + 136))(a1);
    v8 = *(v7 + 23);
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(v7 + 8);
    }

    v3 = (v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6)) + 1;
    if ((a1[10] & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v6 = 0;
    return v6 + v3;
  }

  v3 = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v4 = (*(*a1 + 144))(a1);
  v5 = CoreML::Specification::MILSpec::Argument::ByteSizeLong(v4);
  v6 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  return v6 + v3;
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::SerializeWithCachedSizes(uint64_t a1, google::protobuf::io::CodedOutputStream *a2)
{
  v4 = (*(*a1 + 136))(a1);
  google::protobuf::internal::WireFormatLite::WriteString(1, v4, a2);
  v5 = (*(*a1 + 144))(a1);

  return google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v5, a2, v6);
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::GetCachedSize(_DWORD *a1)
{
  v2 = a1[10];
  if (v2)
  {
    v6 = (*(*a1 + 136))(a1);
    v7 = *(v6 + 23);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(v6 + 8);
    }

    v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((a1[10] & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v5 = 0;
    return v5 + v3;
  }

  v3 = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v4 = (*(*a1 + 144))(a1);
  v5 = *(v4 + 40) + ((9 * (__clz(*(v4 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
  return v5 + v3;
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::InternalSerializeWithCachedSizesToArray(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = (*(*a1 + 136))(a1);
  *a3 = 10;
  v7 = google::protobuf::io::CodedOutputStream::WriteStringWithSizeToArray(v6, a3 + 1);
  v8 = (*(*a1 + 144))(a1);
  *v7 = 18;
  v9 = v7 + 1;
  v10 = (*(*v8 + 120))(v8);
  if (v10 < 0x80)
  {
    LOBYTE(v11) = v10;
  }

  else
  {
    do
    {
      *v9++ = v10 | 0x80;
      v11 = v10 >> 7;
      v12 = v10 >> 14;
      v10 >>= 7;
    }

    while (v12);
  }

  *v9 = v11;
  v13 = *(*v8 + 128);

  return v13(v8, a2, v9 + 1);
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::value(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/proto/../deps/protobuf/src/google/protobuf/map_entry_lite.h", 162);
    v3 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: default_instance_ != NULL: ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v3, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
    v2 = *(a1 + 8);
  }

  v5 = *(v2 + 24);
  if (*(a1 + 24))
  {
    return *(a1 + 24);
  }

  else
  {
    return v5;
  }
}

void sub_21856BE14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::~MapEntryImpl(uint64_t a1)
{
  google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::~MapEntryImpl(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::~MapEntryImpl(uint64_t a1)
{
  *a1 = &unk_282A00A40;
  if (*(a1 + 8) != a1 && !*(a1 + 32))
  {
    google::protobuf::internal::MapTypeHandler<(google::protobuf::internal::WireFormatLite::FieldType)9,std::string>::DeleteNoArena((a1 + 16));
    v2 = *(a1 + 24);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

std::string *google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::MergeFromInternal(std::string *result, _DWORD *a2)
{
  v2 = a2[10];
  if (v2)
  {
    v4 = result;
    if (v2)
    {
      v5 = &result->__r_.__value_.__r.__words[2];
      if (result->__r_.__value_.__r.__words[2] == &google::protobuf::internal::fixed_address_empty_string)
      {
        google::protobuf::internal::ArenaStringPtr::CreateInstance();
      }

      v6 = (*(*a2 + 136))(a2);
      if (*v5 == &google::protobuf::internal::fixed_address_empty_string)
      {
        google::protobuf::internal::ArenaStringPtr::CreateInstance();
      }

      result = std::string::operator=(*v5, v6);
      LODWORD(v4[1].__r_.__value_.__r.__words[2]) |= 1u;
      v2 = a2[10];
    }

    if ((v2 & 2) != 0)
    {
      if (!v4[1].__r_.__value_.__r.__words[0])
      {
        size = v4[1].__r_.__value_.__l.__size_;
        if (!size)
        {
          operator new();
        }

        CoreML::Specification::MILSpec::Argument::Argument(Aligned, v9, v10);
        google::protobuf::Arena::AddListNode(size, Aligned, google::protobuf::internal::arena_destruct_object<CoreML::Specification::MILSpec::Argument>);
        v4[1].__r_.__value_.__r.__words[0] = Aligned;
      }

      v11 = (*(*a2 + 144))(a2);
      result = CoreML::Specification::MILSpec::Argument::MergeFrom(v4[1].__r_.__value_.__l.__data_, v11);
      LODWORD(v4[1].__r_.__value_.__r.__words[2]) |= 2u;
    }
  }

  return result;
}

void *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::Init(uint64_t a1)
{
  v2 = *a1;
  if (!*a1)
  {
    operator new();
  }

  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::InnerMap(Aligned, 0, v2);
  result = google::protobuf::Arena::AddListNode(v2, Aligned, google::protobuf::internal::arena_destruct_object<google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap>);
  *(a1 + 16) = Aligned;
  return result;
}

void *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::InnerMap(void *a1, unint64_t a2, google::protobuf::Arena *a3)
{
  *a1 = 0;
  a1[2] = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::Seed();
  a1[4] = 0;
  a1[5] = a3;
  if (a2 <= 8)
  {
    a2 = 8;
  }

  v8 = a3;
  v6 = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<void *>::allocate(&v8, a2, 0);
  bzero(v6, 8 * a2);
  a1[3] = a2;
  a1[4] = v6;
  a1[1] = a2;
  return a1;
}

uint64_t google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::InnerMap::Seed()
{
  v0 = std::random_device::random_device[abi:ne200100](&v7);
  v1 = MEMORY[0x21CEAFBB0](v0);
  v2 = v1 + ((v1 / 0x7FFFFFFF) | ((v1 / 0x7FFFFFFF) << 31));
  if (v2 <= 1)
  {
    v2 = 1;
  }

  v6[0] = v2;
  std::shuffle_order_engine<std::linear_congruential_engine<unsigned int,16807u,0u,2147483647u>,256ul>::__init[abi:ne200100](v6);
  v5 = xmmword_2185BD190;
  v3 = std::uniform_int_distribution<unsigned long>::operator()<std::shuffle_order_engine<std::linear_congruential_engine<unsigned int,16807u,0u,2147483647u>,256ul>>(&v5, v6, &v5);
  std::random_device::~random_device(&v7);
  return v3;
}

void sub_21856C264(void *a1)
{
  std::random_device::~random_device((v1 - 36));
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x21856C24CLL);
}

std::random_device *std::random_device::random_device[abi:ne200100](std::random_device *a1)
{
  std::string::basic_string[abi:ne200100]<0>(&__token, "/dev/urandom");
  std::random_device::random_device(a1, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_21856C2E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *std::shuffle_order_engine<std::linear_congruential_engine<unsigned int,16807u,0u,2147483647u>,256ul>::__init[abi:ne200100](unsigned int *result)
{
  v1 = *result;
  for (i = 1; i != 257; ++i)
  {
    v3 = v1 / 0x1F31D;
    v4 = 16807 * (v1 % 0x1F31D);
    v3 *= 2836;
    v5 = v4 >= v3;
    v6 = v4 - v3;
    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = 0x7FFFFFFF;
    }

    v1 = v7 + v6;
    result[i] = v1;
  }

  v8 = 16807 * (v1 % 0x1F31D);
  v5 = v8 >= 2836 * (v1 / 0x1F31D);
  v9 = v8 - 2836 * (v1 / 0x1F31D);
  if (v5)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0x7FFFFFFF;
  }

  v11 = v10 + v9;
  *result = v11;
  result[257] = v11;
  return result;
}

uint64_t std::uniform_int_distribution<unsigned long>::operator()<std::shuffle_order_engine<std::linear_congruential_engine<unsigned int,16807u,0u,2147483647u>,256ul>>(uint64_t a1, uint64_t a2, void *a3)
{
  result = a3[1];
  v6 = result - *a3;
  if (result != *a3)
  {
    v12[10] = v3;
    v12[11] = v4;
    v7 = v6 + 1;
    if (v6 == -1)
    {
      std::__independent_bits_engine<std::shuffle_order_engine<std::linear_congruential_engine<unsigned int,16807u,0u,2147483647u>,256ul>,unsigned long>::__independent_bits_engine(v12, a2, 0x40uLL);
      return std::__independent_bits_engine<std::shuffle_order_engine<std::linear_congruential_engine<unsigned int,16807u,0u,2147483647u>,256ul>,unsigned long>::__eval(v12);
    }

    else
    {
      v9 = __clz(v7);
      v10 = 63;
      if (((v7 << v9) & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v10 = 64;
      }

      std::__independent_bits_engine<std::shuffle_order_engine<std::linear_congruential_engine<unsigned int,16807u,0u,2147483647u>,256ul>,unsigned long>::__independent_bits_engine(v12, a2, v10 - v9);
      do
      {
        v11 = std::__independent_bits_engine<std::shuffle_order_engine<std::linear_congruential_engine<unsigned int,16807u,0u,2147483647u>,256ul>,unsigned long>::__eval(v12);
      }

      while (v11 >= v7);
      return *a3 + v11;
    }
  }

  return result;
}

uint64_t std::__independent_bits_engine<std::shuffle_order_engine<std::linear_congruential_engine<unsigned int,16807u,0u,2147483647u>,256ul>,unsigned long>::__independent_bits_engine(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (a3 % 0x1E)
  {
    v3 = a3 / 0x1E + 1;
  }

  else
  {
    v3 = a3 / 0x1E;
  }

  v4 = a3 / v3;
  *(result + 16) = a3 / v3;
  *(result + 24) = v3;
  v5 = (-1 << (a3 / v3)) & 0x7FFFFFFE;
  if (a3 / v3 >= 0x40)
  {
    v5 = 0;
  }

  *(result + 40) = v5;
  if ((v5 ^ 0x7FFFFFFE) > v5 / v3)
  {
    ++v3;
    v4 = a3 / v3;
    *(result + 16) = a3 / v3;
    *(result + 24) = v3;
    if (a3 / v3 > 0x3F)
    {
      v6 = 0;
      *(result + 32) = v3 + v4 * v3 - a3;
      *(result + 40) = 0;
      goto LABEL_13;
    }

    *(result + 40) = (-1 << v4) & 0x7FFFFFFE;
  }

  *(result + 32) = v3 + a3 / v3 * v3 - a3;
  if (v4 > 0x3E)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0x3FFFFFFFuLL >> v4 << (v4 + 1);
  }

LABEL_13:
  *(result + 48) = v6;
  v7 = 0xFFFFFFFF >> -v4;
  if (!v4)
  {
    v7 = 0;
  }

  if (v4 >= 0x1F)
  {
    v8 = -1;
  }

  else
  {
    v8 = 0xFFFFFFFF >> ~v4;
  }

  *(result + 56) = v7;
  *(result + 60) = v8;
  return result;
}

uint64_t std::__independent_bits_engine<std::shuffle_order_engine<std::linear_congruential_engine<unsigned int,16807u,0u,2147483647u>,256ul>,unsigned long>::__eval(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    v4 = *a1;
    v5 = *a1 + 4;
    v6 = *(a1 + 40);
    v7 = *(a1 + 16);
    v8 = **a1;
    v9 = *(*a1 + 1028);
    do
    {
      do
      {
        v10 = (((((v9 - 1) << 7) * 0x8000000201uLL) >> 64) >> 3) & 0xFFC;
        v4[257] = *(v5 + v10);
        v11 = v8 / 0x1F31D;
        v12 = 16807 * (v8 % 0x1F31D);
        v11 *= 2836;
        v13 = v12 >= v11;
        v14 = v12 - v11;
        if (v13)
        {
          v15 = 0;
        }

        else
        {
          v15 = 0x7FFFFFFF;
        }

        v8 = v15 + v14;
        *(v5 + v10) = v8;
        v9 = v4[257];
        v16 = v9 - 1;
      }

      while (v6 <= v16);
      v17 = v2 << v7;
      if (v7 >= 0x40)
      {
        v17 = 0;
      }

      v2 = v17 + (*(a1 + 56) & v16);
      ++v3;
    }

    while (v3 != v1);
    *v4 = v8;
  }

  else
  {
    v2 = 0;
  }

  v18 = *(a1 + 24);
  if (v1 < v18)
  {
    v19 = *a1;
    v20 = *a1 + 4;
    v21 = *(a1 + 48);
    v22 = *(a1 + 16);
    v23 = **a1;
    v24 = *(*a1 + 1028);
    do
    {
      do
      {
        v25 = (((((v24 - 1) << 7) * 0x8000000201uLL) >> 64) >> 3) & 0xFFC;
        v19[257] = *(v20 + v25);
        v26 = v23 / 0x1F31D;
        v27 = 16807 * (v23 % 0x1F31D);
        v26 *= 2836;
        v13 = v27 >= v26;
        v28 = v27 - v26;
        if (v13)
        {
          v29 = 0;
        }

        else
        {
          v29 = 0x7FFFFFFF;
        }

        v23 = v29 + v28;
        *(v20 + v25) = v23;
        v24 = v19[257];
        v30 = v24 - 1;
      }

      while (v21 <= v30);
      v31 = v2 << (v22 + 1);
      if (v22 >= 0x3F)
      {
        v31 = 0;
      }

      v2 = v31 + (*(a1 + 60) & v30);
      ++v1;
    }

    while (v1 != v18);
    *v19 = v23;
  }

  return v2;
}

void *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::Init(uint64_t a1)
{
  v2 = *a1;
  if (!*a1)
  {
    operator new();
  }

  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::InnerMap(Aligned, 0, v2);
  result = google::protobuf::Arena::AddListNode(v2, Aligned, google::protobuf::internal::arena_destruct_object<google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap>);
  *(a1 + 16) = Aligned;
  return result;
}

void *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::InnerMap(void *a1, unint64_t a2, google::protobuf::Arena *a3)
{
  *a1 = 0;
  a1[2] = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::Seed();
  a1[4] = 0;
  a1[5] = a3;
  if (a2 <= 8)
  {
    a2 = 8;
  }

  v8 = a3;
  v6 = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<void *>::allocate(&v8, a2, 0);
  bzero(v6, 8 * a2);
  a1[3] = a2;
  a1[4] = v6;
  a1[1] = a2;
  return a1;
}

uint64_t google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::InnerMap::Seed()
{
  v0 = std::random_device::random_device[abi:ne200100](&v7);
  v1 = MEMORY[0x21CEAFBB0](v0);
  v2 = v1 + ((v1 / 0x7FFFFFFF) | ((v1 / 0x7FFFFFFF) << 31));
  if (v2 <= 1)
  {
    v2 = 1;
  }

  v6[0] = v2;
  std::shuffle_order_engine<std::linear_congruential_engine<unsigned int,16807u,0u,2147483647u>,256ul>::__init[abi:ne200100](v6);
  v5 = xmmword_2185BD190;
  v3 = std::uniform_int_distribution<unsigned long>::operator()<std::shuffle_order_engine<std::linear_congruential_engine<unsigned int,16807u,0u,2147483647u>,256ul>>(&v5, v6, &v5);
  std::random_device::~random_device(&v7);
  return v3;
}

void sub_21856C8C0(void *a1)
{
  std::random_device::~random_device((v1 - 36));
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x21856C8A8);
}

std::string *google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(google::protobuf::Arena **a1, uint64_t a2)
{
  if (*a1)
  {
    v3 = (*a1 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v3 = google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(a1);
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  return std::string::append(v3, v5, v6);
}

unint64_t google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(google::protobuf::Arena **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v2 = *((v2 & 0xFFFFFFFFFFFFFFFELL) + 24);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    operator new();
  }

  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  *Aligned = 0u;
  *(Aligned + 16) = 0u;
  google::protobuf::Arena::AddListNode(v2, Aligned, google::protobuf::internal::arena_destruct_object<google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::Container>);
  *a1 = (Aligned | 1);
  *(Aligned + 24) = v2;
  return Aligned;
}

void google::protobuf::internal::arena_destruct_object<google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::Container>(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::Program>(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Parser<google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>>::MergePartialFromCodedStream(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2 >= *(a2 + 8) || *v4 != 10)
  {
    google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Parser<google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>>::MergePartialFromCodedStream();
LABEL_20:
    google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Parser<google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>>::MergePartialFromCodedStream(a1);
    return v14;
  }

  *a2 = v4 + 1;
  result = google::protobuf::internal::WireFormatLite::ReadBytes(a2, (a1 + 16));
  if (!result)
  {
    return result;
  }

  if ((*(a2 + 8) - *a2) < 1)
  {
    goto LABEL_20;
  }

  if (**a2 != 18)
  {
    goto LABEL_20;
  }

  v6 = *(a1 + 8);
  v7 = **(v6 + 16);
  *(a1 + 40) = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::operator[](v6, (a1 + 16));
  if (v7 == **(*(a1 + 8) + 16))
  {
    goto LABEL_20;
  }

  google::protobuf::io::CodedInputStream::Skip(a2, 1u);
  v8 = *(a1 + 40);
  v9 = *a2;
  if (*a2 >= *(a2 + 8) || (VarintSizeAsIntFallback = *v9, (VarintSizeAsIntFallback & 0x80000000) != 0))
  {
    VarintSizeAsIntFallback = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(a2);
    if ((VarintSizeAsIntFallback & 0x80000000) != 0)
    {
LABEL_18:
      google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::erase(*(a1 + 8), (a1 + 16));
      return 0;
    }
  }

  else
  {
    *a2 = v9 + 1;
  }

  v11 = google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(a2, VarintSizeAsIntFallback);
  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  v13 = v11;
  if (!CoreML::Specification::MILSpec::Function::MergePartialFromCodedStream(v8, a2, v12) || (google::protobuf::io::CodedInputStream::DecrementRecursionDepthAndPopLimit(a2, v13) & 1) == 0)
  {
    goto LABEL_18;
  }

  if (*a2 == *(a2 + 8) && (*(a2 + 44) || *(a2 + 24) == *(a2 + 40)))
  {
    *(a2 + 32) = 0;
    result = 1;
    *(a2 + 36) = 1;
  }

  else
  {

    return google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Parser<google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>>::ReadBeyondKeyValuePair(a1, a2);
  }

  return result;
}

uint64_t google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::erase(uint64_t a1, const void **a2)
{
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::FindHelper(*(a1 + 16), a2, 0, &v5);
  if (!v5)
  {
    return 0;
  }

  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::erase(a1, &v5, v4);
  return 1;
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Parser<google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>>::ReadBeyondKeyValuePair(uint64_t a1, uint64_t a2)
{
  v4 = google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::NewEntry(*a1);
  v5 = *(a1 + 48);
  if (v5 == v4)
  {
    v4 = *(a1 + 48);
  }

  else
  {
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    *(a1 + 48) = v4;
  }

  v6 = *(a1 + 40);
  *(v4 + 10) |= 2u;
  Aligned = v4[3];
  if (!Aligned)
  {
    v8 = v4[4];
    if (!v8)
    {
      operator new();
    }

    CoreML::Specification::MILSpec::Function::Function(Aligned);
    google::protobuf::Arena::AddListNode(v8, Aligned, google::protobuf::internal::arena_destruct_object<CoreML::Specification::MILSpec::Function>);
    v4[3] = Aligned;
  }

  if (v6 != Aligned)
  {
    CoreML::Specification::MILSpec::Function::InternalSwap(Aligned, v6);
  }

  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::erase(*(a1 + 8), (a1 + 16));
  v9 = *(a1 + 48);
  *(v9 + 40) |= 1u;
  v10 = *(v9 + 16);
  if (v10 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance();
  }

  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  v11 = *(a1 + 16);
  *(v10 + 16) = *(a1 + 32);
  *v10 = v11;
  *(a1 + 39) = 0;
  *(a1 + 16) = 0;
  v12 = (*(**(a1 + 48) + 88))(*(a1 + 48), a2);
  if (v12)
  {
    google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Parser<google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>>::UseKeyAndValueFromEntry(a1);
  }

  if ((*(**(a1 + 48) + 40))(*(a1 + 48)))
  {
    *(a1 + 48) = 0;
  }

  return v12;
}

void *google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::NewEntry(google::protobuf::Arena **a1)
{
  v1 = *a1;
  if (!*a1)
  {
    operator new();
  }

  result[1] = 0;
  result[2] = &google::protobuf::internal::fixed_address_empty_string;
  result[3] = 0;
  result[4] = v1;
  *(result + 10) = 0;
  *result = &unk_282A004E8;
  return result;
}

std::string *google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Parser<google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>>::UseKeyAndValueFromEntry(uint64_t a1)
{
  v2 = (*(**(a1 + 48) + 136))(*(a1 + 48));
  std::string::operator=((a1 + 16), v2);
  result = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::operator[](*(a1 + 8), (a1 + 16));
  *(a1 + 40) = result;
  v4 = *(a1 + 48);
  *(v4 + 40) |= 2u;
  Aligned = *(v4 + 24);
  if (!Aligned)
  {
    v6 = *(v4 + 32);
    if (!v6)
    {
      operator new();
    }

    CoreML::Specification::MILSpec::Function::Function(Aligned);
    google::protobuf::Arena::AddListNode(v6, Aligned, google::protobuf::internal::arena_destruct_object<CoreML::Specification::MILSpec::Function>);
    *(v4 + 24) = Aligned;
    result = *(a1 + 40);
  }

  if (Aligned != result)
  {

    return CoreML::Specification::MILSpec::Function::InternalSwap(result, Aligned);
  }

  return result;
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Parser<google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>>::MergePartialFromCodedStream(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2 >= *(a2 + 8) || *v4 != 10)
  {
    google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Parser<google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>>::MergePartialFromCodedStream();
LABEL_20:
    google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Parser<google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>>::MergePartialFromCodedStream(a1);
    return v14;
  }

  *a2 = v4 + 1;
  result = google::protobuf::internal::WireFormatLite::ReadBytes(a2, (a1 + 16));
  if (!result)
  {
    return result;
  }

  if ((*(a2 + 8) - *a2) < 1)
  {
    goto LABEL_20;
  }

  if (**a2 != 18)
  {
    goto LABEL_20;
  }

  v6 = *(a1 + 8);
  v7 = **(v6 + 16);
  *(a1 + 40) = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::operator[](v6, (a1 + 16));
  if (v7 == **(*(a1 + 8) + 16))
  {
    goto LABEL_20;
  }

  google::protobuf::io::CodedInputStream::Skip(a2, 1u);
  v8 = *(a1 + 40);
  v9 = *a2;
  if (*a2 >= *(a2 + 8) || (VarintSizeAsIntFallback = *v9, (VarintSizeAsIntFallback & 0x80000000) != 0))
  {
    VarintSizeAsIntFallback = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(a2);
    if ((VarintSizeAsIntFallback & 0x80000000) != 0)
    {
LABEL_18:
      google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::erase(*(a1 + 8), (a1 + 16));
      return 0;
    }
  }

  else
  {
    *a2 = v9 + 1;
  }

  v11 = google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(a2, VarintSizeAsIntFallback);
  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  v13 = v11;
  if (!CoreML::Specification::MILSpec::Value::MergePartialFromCodedStream(v8, a2, v12) || (google::protobuf::io::CodedInputStream::DecrementRecursionDepthAndPopLimit(a2, v13) & 1) == 0)
  {
    goto LABEL_18;
  }

  if (*a2 == *(a2 + 8) && (*(a2 + 44) || *(a2 + 24) == *(a2 + 40)))
  {
    *(a2 + 32) = 0;
    result = 1;
    *(a2 + 36) = 1;
  }

  else
  {

    return google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Parser<google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>>::ReadBeyondKeyValuePair(a1, a2);
  }

  return result;
}

uint64_t google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::erase(uint64_t a1, const void **a2)
{
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::FindHelper(*(a1 + 16), a2, 0, &v5);
  if (!v5)
  {
    return 0;
  }

  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::erase(a1, &v5, v4);
  return 1;
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Parser<google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>>::ReadBeyondKeyValuePair(uint64_t a1, uint64_t a2)
{
  v4 = google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::NewEntry(*a1);
  v5 = *(a1 + 48);
  if (v5 == v4)
  {
    v4 = *(a1 + 48);
  }

  else
  {
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    *(a1 + 48) = v4;
  }

  v6 = *(a1 + 40);
  *(v4 + 10) |= 2u;
  Aligned = v4[3];
  if (!Aligned)
  {
    v8 = v4[4];
    if (!v8)
    {
      operator new();
    }

    CoreML::Specification::MILSpec::Value::Value(Aligned, v9, v10);
    google::protobuf::Arena::AddListNode(v8, Aligned, google::protobuf::internal::arena_destruct_object<CoreML::Specification::MILSpec::Value>);
    v4[3] = Aligned;
  }

  CoreML::Specification::MILSpec::Value::Swap(Aligned, v6);
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::erase(*(a1 + 8), (a1 + 16));
  v11 = *(a1 + 48);
  *(v11 + 40) |= 1u;
  v12 = *(v11 + 16);
  if (v12 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance();
  }

  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  v13 = *(a1 + 16);
  *(v12 + 16) = *(a1 + 32);
  *v12 = v13;
  *(a1 + 39) = 0;
  *(a1 + 16) = 0;
  v14 = (*(**(a1 + 48) + 88))(*(a1 + 48), a2);
  if (v14)
  {
    google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Parser<google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>>::UseKeyAndValueFromEntry(a1);
  }

  if ((*(**(a1 + 48) + 40))(*(a1 + 48)))
  {
    *(a1 + 48) = 0;
  }

  return v14;
}

void *google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::NewEntry(google::protobuf::Arena **a1)
{
  v1 = *a1;
  if (!*a1)
  {
    operator new();
  }

  result[1] = 0;
  result[2] = &google::protobuf::internal::fixed_address_empty_string;
  result[3] = 0;
  result[4] = v1;
  *(result + 10) = 0;
  *result = &unk_282A00668;
  return result;
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Parser<google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>>::UseKeyAndValueFromEntry(uint64_t a1)
{
  v2 = (*(**(a1 + 48) + 136))(*(a1 + 48));
  std::string::operator=((a1 + 16), v2);
  v3 = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::operator[](*(a1 + 8), (a1 + 16));
  *(a1 + 40) = v3;
  v4 = *(a1 + 48);
  *(v4 + 40) |= 2u;
  Aligned = *(v4 + 24);
  if (!Aligned)
  {
    v6 = *(v4 + 32);
    if (!v6)
    {
      operator new();
    }

    CoreML::Specification::MILSpec::Value::Value(Aligned, v7, v8);
    google::protobuf::Arena::AddListNode(v6, Aligned, google::protobuf::internal::arena_destruct_object<CoreML::Specification::MILSpec::Value>);
    *(v4 + 24) = Aligned;
    v3 = *(a1 + 40);
  }

  return CoreML::Specification::MILSpec::Value::Swap(v3, Aligned);
}

const void ***std::__introsort<std::_ClassicAlgPolicy,google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*> &,google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const**,false>(const void ***result, const void ***a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  v9 = a2 - 2;
  v10 = a2 - 3;
  v11 = v7;
LABEL_3:
  v12 = 1 - a4;
  while (1)
  {
    v7 = v11;
    v13 = v12;
    v14 = a2 - v11;
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return result;
    }

    if (v14 == 2)
    {
      result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, a2 - 1, v11);
      if (result)
      {
        v49 = *v11;
LABEL_80:
        *v11 = *v8;
LABEL_81:
        *v8 = v49;
        return result;
      }

      return result;
    }

LABEL_11:
    if (v14 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*> &,google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const**>(v11, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*> &,google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const**>(v11, a2, a3);
      }
    }

    if (v13 == 1)
    {
      if (v11 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*> &,google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const**,google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const**>(v11, a2, a2, a3);
      }

      return result;
    }

    v15 = &v11[v14 >> 1];
    if (v14 >= 0x81)
    {
      v16 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, &v11[v14 >> 1], v11);
      v17 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, a2 - 1, v15);
      if (v16)
      {
        v18 = *v7;
        if (v17)
        {
          *v7 = *v8;
          goto LABEL_28;
        }

        *v7 = *v15;
        *v15 = v18;
        if (google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, a2 - 1, v15))
        {
          v18 = *v15;
          *v15 = *v8;
LABEL_28:
          *v8 = v18;
        }
      }

      else if (v17)
      {
        v22 = *v15;
        *v15 = *v8;
        *v8 = v22;
        if (google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, v15, v7))
        {
          v23 = *v7;
          *v7 = *v15;
          *v15 = v23;
        }
      }

      v26 = v15 - 1;
      v27 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, v15 - 1, v7 + 1);
      v28 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, a2 - 2, v15 - 1);
      if (v27)
      {
        v29 = v7[1];
        if (v28)
        {
          v7[1] = *v9;
          goto LABEL_40;
        }

        v7[1] = *v26;
        *v26 = v29;
        if (google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, a2 - 2, v15 - 1))
        {
          v29 = *v26;
          *v26 = *v9;
LABEL_40:
          *v9 = v29;
        }
      }

      else if (v28)
      {
        v30 = *v26;
        *v26 = *v9;
        *v9 = v30;
        if (google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, v15 - 1, v7 + 1))
        {
          v31 = v7[1];
          v7[1] = *v26;
          *v26 = v31;
        }
      }

      v32 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, v15 + 1, v7 + 2);
      v33 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, a2 - 3, v15 + 1);
      if (v32)
      {
        v34 = v7[2];
        if (v33)
        {
          v7[2] = *v10;
          goto LABEL_49;
        }

        v7[2] = v15[1];
        v15[1] = v34;
        if (google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, a2 - 3, v15 + 1))
        {
          v34 = v15[1];
          v15[1] = *v10;
LABEL_49:
          *v10 = v34;
        }
      }

      else if (v33)
      {
        v35 = v15[1];
        v15[1] = *v10;
        *v10 = v35;
        if (google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, v15 + 1, v7 + 2))
        {
          v36 = v7[2];
          v7[2] = v15[1];
          v15[1] = v36;
        }
      }

      v37 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, v15, v15 - 1);
      v38 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, v15 + 1, v15);
      if (v37)
      {
        v39 = *v26;
        if (v38)
        {
          v40 = *v15;
          *v26 = v15[1];
          v15[1] = v39;
LABEL_59:
          v44 = *v7;
          *v7 = v40;
          *v15 = v44;
          goto LABEL_60;
        }

        *v26 = *v15;
        *v15 = v39;
        v43 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, v15 + 1, v15);
        v40 = *v15;
        if (!v43)
        {
          goto LABEL_59;
        }

        v42 = v15[1];
        *v15 = v42;
        v15[1] = v40;
      }

      else
      {
        v40 = *v15;
        if (!v38)
        {
          goto LABEL_59;
        }

        *v15 = v15[1];
        v15[1] = v40;
        v41 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, v15, v15 - 1);
        v40 = *v15;
        if (!v41)
        {
          goto LABEL_59;
        }

        v42 = *v26;
        *v26 = v40;
        *v15 = v42;
      }

      v40 = v42;
      goto LABEL_59;
    }

    v19 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, v11, &v11[v14 >> 1]);
    v20 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, a2 - 1, v7);
    if (v19)
    {
      v21 = *v15;
      if (v20)
      {
        *v15 = *v8;
LABEL_37:
        *v8 = v21;
        goto LABEL_60;
      }

      *v15 = *v7;
      *v7 = v21;
      if (google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, a2 - 1, v7))
      {
        v21 = *v7;
        *v7 = *v8;
        goto LABEL_37;
      }
    }

    else if (v20)
    {
      v24 = *v7;
      *v7 = *v8;
      *v8 = v24;
      if (google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, v7, v15))
      {
        v25 = *v15;
        *v15 = *v7;
        *v7 = v25;
      }
    }

LABEL_60:
    if ((a5 & 1) == 0 && !google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, v7 - 1, v7))
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const**,google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*> &>(v7, a2, a3);
      v11 = result;
      goto LABEL_67;
    }

    v45 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const**,google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*> &>(v7, a2, a3);
    if ((v46 & 1) == 0)
    {
      goto LABEL_65;
    }

    v47 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*> &,google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const**>(v7, v45, a3);
    v11 = v45 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*> &,google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const**>(v45 + 1, a2, a3);
    if (result)
    {
      a4 = -v13;
      a2 = v45;
      if (v47)
      {
        return result;
      }

      goto LABEL_2;
    }

    v12 = v13 + 1;
    if (!v47)
    {
LABEL_65:
      result = std::__introsort<std::_ClassicAlgPolicy,google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*> &,google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const**,false>(v7, v45, a3, -v13, a5 & 1);
      v11 = v45 + 1;
LABEL_67:
      a5 = 0;
      a4 = -v13;
      goto LABEL_3;
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*> &,google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const**,0>(v11, v11 + 1, v11 + 2, a2 - 1, a3);
    }

    if (v14 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*> &,google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const**,0>(v11, v11 + 1, v11 + 2, v11 + 3, a3);
      result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, a2 - 1, v11 + 3);
      if (!result)
      {
        return result;
      }

      v50 = v11[3];
      v11[3] = *v8;
      *v8 = v50;
      result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, v11 + 3, v11 + 2);
      if (!result)
      {
        return result;
      }

      *(v11 + 1) = vextq_s8(*(v11 + 1), *(v11 + 1), 8uLL);
      result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, v11 + 2, v11 + 1);
      if (!result)
      {
        return result;
      }

      *(v11 + 1) = vextq_s8(*(v11 + 1), *(v11 + 1), 8uLL);
      goto LABEL_95;
    }

    goto LABEL_11;
  }

  v48 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, v11 + 1, v11);
  result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, v8, v11 + 1);
  if (!v48)
  {
    if (!result)
    {
      return result;
    }

    v51 = v11[1];
    v11[1] = *v8;
    *v8 = v51;
LABEL_95:
    result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, v11 + 1, v11);
    if (result)
    {
      *v11 = vextq_s8(*v11, *v11, 8uLL);
    }

    return result;
  }

  v49 = *v11;
  if (result)
  {
    goto LABEL_80;
  }

  *v11 = v11[1];
  v11[1] = v49;
  result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, v8, v11 + 1);
  if (result)
  {
    v49 = v11[1];
    v11[1] = *v8;
    goto LABEL_81;
  }

  return result;
}

BOOL google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(uint64_t a1, const void ***a2, const void ***a3)
{
  v3 = *(*a3 + 23);
  v4 = *(*a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(*a2 + 23);
  }

  else
  {
    v5 = (*a2)[1];
  }

  if (v4 >= 0)
  {
    v6 = *a2;
  }

  else
  {
    v6 = **a2;
  }

  if (v3 >= 0)
  {
    v7 = *(*a3 + 23);
  }

  else
  {
    v7 = (*a3)[1];
  }

  if (v3 >= 0)
  {
    v8 = *a3;
  }

  else
  {
    v8 = **a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

BOOL std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*> &,google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const**,0>(const void ***a1, const void ***a2, const void ***a3, const void ***a4, uint64_t a5)
{
  v10 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a5, a2, a1);
  v11 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a5, a3, a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
LABEL_9:
      *a3 = v12;
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v12;
    if (google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a5, a3, a2))
    {
      v12 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if (google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a5, a2, a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

LABEL_10:
  result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a5, a4, a3);
  if (result)
  {
    v16 = *a3;
    *a3 = *a4;
    *a4 = v16;
    result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a5, a3, a2);
    if (result)
    {
      v17 = *a2;
      *a2 = *a3;
      *a3 = v17;
      result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a5, a2, a1);
      if (result)
      {
        v18 = *a1;
        *a1 = *a2;
        *a2 = v18;
      }
    }
  }

  return result;
}

const void ***std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*> &,google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const**>(const void ***result, const void ***a2, uint64_t a3)
{
  if (result != a2)
  {
    v14[7] = v3;
    v14[8] = v4;
    v6 = result;
    v7 = result + 1;
    if (result + 1 != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, v7, v11);
        if (result)
        {
          v14[0] = *v10;
          v12 = v9;
          while (1)
          {
            *(v6 + v12 + 8) = *(v6 + v12);
            if (!v12)
            {
              break;
            }

            v12 -= 8;
            result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, v14, (v6 + v12));
            if ((result & 1) == 0)
            {
              v13 = (v6 + v12 + 8);
              goto LABEL_10;
            }
          }

          v13 = v6;
LABEL_10:
          *v13 = v14[0];
        }

        v7 = v10 + 1;
        v9 += 8;
      }

      while (v10 + 1 != a2);
    }
  }

  return result;
}

const void ***std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*> &,google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const**>(const void ***result, const void ***a2, uint64_t a3)
{
  if (result != a2)
  {
    v12[7] = v3;
    v12[8] = v4;
    v6 = result;
    v7 = result + 1;
    if (result + 1 != a2)
    {
      v9 = result - 1;
      do
      {
        v10 = v6;
        v6 = v7;
        result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, v7, v10);
        if (result)
        {
          v12[0] = *v6;
          v11 = v9;
          do
          {
            v11[2] = v11[1];
            result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, v12, v11--);
          }

          while ((result & 1) != 0);
          v11[2] = v12[0];
        }

        v7 = v6 + 1;
        ++v9;
      }

      while (v6 + 1 != a2);
    }
  }

  return result;
}

const void ***std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const**,google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*> &>(const void ***a1, const void ***a2, uint64_t a3)
{
  v4 = a2;
  v11 = *a1;
  if (google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, &v11, a2 - 1))
  {
    v6 = a1;
    do
    {
      ++v6;
    }

    while (!google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, &v11, v6));
  }

  else
  {
    v7 = a1 + 1;
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, &v11, v7);
      v7 = v6 + 1;
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      --v4;
    }

    while (google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, &v11, v4));
  }

  while (v6 < v4)
  {
    v9 = *v6;
    *v6 = *v4;
    *v4 = v9;
    do
    {
      ++v6;
    }

    while (!google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, &v11, v6));
    do
    {
      --v4;
    }

    while (google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, &v11, v4));
  }

  if (v6 - 1 != a1)
  {
    *a1 = *(v6 - 1);
  }

  *(v6 - 1) = v11;
  return v6;
}

const void ***std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const**,google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*> &>(const void ***a1, const void ***a2, uint64_t a3)
{
  v6 = 0;
  v13 = *a1;
  do
  {
    ++v6;
  }

  while (google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, &a1[v6], &v13));
  v7 = &a1[v6];
  v8 = &a1[v6 - 1];
  if (v6 == 1)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      --a2;
    }

    while (!google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, a2, &v13));
  }

  else
  {
    do
    {
      --a2;
    }

    while (!google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, a2, &v13));
  }

  if (v7 < a2)
  {
    v9 = &a1[v6];
    v10 = a2;
    do
    {
      v11 = *v9;
      *v9 = *v10;
      *v10 = v11;
      do
      {
        ++v9;
      }

      while (google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, v9, &v13));
      do
      {
        --v10;
      }

      while (!google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, v10, &v13));
    }

    while (v9 < v10);
    v8 = v9 - 1;
  }

  if (v8 != a1)
  {
    *a1 = *v8;
  }

  *v8 = v13;
  return v8;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*> &,google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const**>(const void ***a1, const void ***a2, uint64_t a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v7 = a2 - 1;
        v11 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, a1 + 1, a1);
        v12 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, v7, a1 + 1);
        if (v11)
        {
          v8 = *a1;
          if (!v12)
          {
            *a1 = a1[1];
            a1[1] = v8;
            if (!google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, v7, a1 + 1))
            {
              return 1;
            }

            v8 = a1[1];
            a1[1] = *v7;
            goto LABEL_16;
          }

LABEL_15:
          *a1 = *v7;
LABEL_16:
          *v7 = v8;
          return 1;
        }

        if (!v12)
        {
          return 1;
        }

        v17 = a1[1];
        a1[1] = *v7;
        *v7 = v17;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*> &,google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const**,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        v9 = a2 - 1;
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*> &,google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const**,0>(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        if (!google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, v9, a1 + 3))
        {
          return 1;
        }

        v10 = a1[3];
        a1[3] = *v9;
        *v9 = v10;
        if (!google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, a1 + 3, a1 + 2))
        {
          return 1;
        }

        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
        if (!google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, a1 + 2, a1 + 1))
        {
          return 1;
        }

        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
        break;
      default:
        goto LABEL_17;
    }

    if (google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, a1 + 1, a1))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 1;
    if (google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, a2 - 1, a1))
    {
      v8 = *a1;
      goto LABEL_15;
    }

    return 1;
  }

LABEL_17:
  v13 = a1 + 2;
  v14 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, a1 + 1, a1);
  v15 = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, a1 + 2, a1 + 1);
  if (v14)
  {
    v16 = *a1;
    if (v15)
    {
      *a1 = a1[2];
      a1[2] = v16;
    }

    else
    {
      *a1 = a1[1];
      a1[1] = v16;
      if (google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, a1 + 2, a1 + 1))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v15)
  {
    *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
    if (google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, a1 + 1, a1))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v18 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v19 = 0;
  v20 = 0;
  while (1)
  {
    if (google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, v18, v13))
    {
      v25 = *v18;
      v21 = v19;
      while (1)
      {
        v22 = (a1 + v21);
        *(a1 + v21 + 24) = *(a1 + v21 + 16);
        if (v21 == -16)
        {
          break;
        }

        v21 -= 8;
        if (!google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, &v25, v22 + 1))
        {
          v23 = (a1 + v21 + 24);
          goto LABEL_40;
        }
      }

      v23 = a1;
LABEL_40:
      *v23 = v25;
      if (++v20 == 8)
      {
        return v18 + 1 == a2;
      }
    }

    v13 = v18;
    v19 += 8;
    if (++v18 == a2)
    {
      return 1;
    }
  }
}

const void ***std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*> &,google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const**,google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const**>(const void ***a1, const void ***a2, const void ***a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*> &,google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const**>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if (google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a4, v12, a1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*> &,google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const**>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 1;
      do
      {
        v15 = *a1;
        v16 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*> &,google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const**>(a1, a4, v8);
        if (v14 == v16)
        {
          *v16 = v15;
        }

        else
        {
          *v16 = *v14;
          *v14 = v15;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*> &,google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const**>(a1, (v16 + 1), a4, v16 + 1 - a1);
        }

        --v14;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

BOOL std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*> &,google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const**>(_BOOL8 result, uint64_t a2, uint64_t a3, const void ***a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v19[11] = v4;
    v19[12] = v5;
    v7 = a4;
    v8 = result;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (a4 - result) >> 3)
    {
      v12 = (a4 - result) >> 2;
      v13 = v12 + 1;
      v14 = (result + 8 * (v12 + 1));
      v15 = v12 + 2;
      if (v12 + 2 < a3 && google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a2, (result + 8 * (v12 + 1)), v14 + 1))
      {
        ++v14;
        v13 = v15;
      }

      result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a2, v14, v7);
      if (!result)
      {
        v19[0] = *v7;
        do
        {
          v16 = v14;
          *v7 = *v14;
          if (v9 < v13)
          {
            break;
          }

          v17 = (2 * v13) | 1;
          v14 = (v8 + 8 * v17);
          v18 = 2 * v13 + 2;
          if (v18 < a3 && google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a2, (v8 + 8 * v17), v14 + 1))
          {
            ++v14;
            v17 = v18;
          }

          result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a2, v14, v19);
          v7 = v16;
          v13 = v17;
        }

        while (!result);
        *v16 = v19[0];
      }
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*> &,google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const**>(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6];
    v9 = v8 + 1;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = v8 + 2;
      if (google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a2, v8 + 1, v8 + 2))
      {
        v9 = v12;
        v10 = v11;
      }
    }

    *a1 = *v9;
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

BOOL std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*> &,google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const**>(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v13[7] = v4;
    v13[8] = v5;
    v8 = result;
    v9 = v6 >> 1;
    v10 = (result + 8 * (v6 >> 1));
    v11 = (a2 - 8);
    result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, v10, (a2 - 8));
    if (result)
    {
      v13[0] = *v11;
      do
      {
        v12 = v10;
        *v11 = *v10;
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v10 = (v8 + 8 * v9);
        result = google::protobuf::internal::CompareByDerefFirst<google::protobuf::MapPair<std::string,CoreML::Specification::MILSpec::Function> const*>::operator()(a3, v10, v13);
        v11 = v12;
      }

      while (result);
      *v12 = v13[0];
    }
  }

  return result;
}

void *google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Wrap(uint64_t a1, uint64_t a2, google::protobuf::Arena *a3)
{
  if (!a3)
  {
    operator new();
  }

  result[1] = 0;
  result[2] = &google::protobuf::internal::fixed_address_empty_string;
  result[3] = 0;
  result[4] = a3;
  *result = &unk_282A00B58;
  result[6] = a1;
  result[7] = a2;
  *(result + 10) = 3;
  return result;
}

void google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::MapEntryWrapper::~MapEntryWrapper(uint64_t a1)
{
  google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::~MapEntryImpl(a1);

  JUMPOUT(0x21CEAFEA0);
}

void *google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Wrap(uint64_t a1, uint64_t a2, google::protobuf::Arena *a3)
{
  if (!a3)
  {
    operator new();
  }

  result[1] = 0;
  result[2] = &google::protobuf::internal::fixed_address_empty_string;
  result[3] = 0;
  result[4] = a3;
  *result = &unk_282A00C18;
  result[6] = a1;
  result[7] = a2;
  *(result + 10) = 3;
  return result;
}

void google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::MapEntryWrapper::~MapEntryWrapper(uint64_t a1)
{
  google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::~MapEntryImpl(a1);

  JUMPOUT(0x21CEAFEA0);
}

void *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::swap(void *result, uint64_t a2)
{
  v3 = result;
  if (*result == *a2)
  {
    v4 = *(result + 2);
    *(result + 2) = *(a2 + 8);
    *(a2 + 8) = v4;
    v5 = result[2];
    result[2] = *(a2 + 16);
    *(a2 + 16) = v5;
  }

  else
  {
    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::Map(v6, result);
    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::operator=(v3, a2);
    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::operator=(a2, v6);
    return google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::~Map(v6);
  }

  return result;
}

void sub_21856EC24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::~Map(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::operator=(void *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::clear(a1);
    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::begin(a2, &v6);
    memset(v5, 0, sizeof(v5));
    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::insert<google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::const_iterator>(a1, &v6, v5);
  }

  return a1;
}

uint64_t google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::Map(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = *(a2 + 8);
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::Init(a1);
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::begin(a2, &v6);
  memset(v5, 0, sizeof(v5));
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::insert<google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::const_iterator>(a1, &v6, v5);
  return a1;
}

void *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::insert<google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::const_iterator>(void *result, __int128 *a2, void *a3)
{
  v10 = *a2;
  v11 = *(a2 + 2);
  v3 = v10;
  if (v10 != *a3)
  {
    v5 = result;
    do
    {
      google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::FindHelper(*(v5 + 16), *(v3 + 24), 0, v12);
      if (!v12[0])
      {
        v6 = *(v10 + 24);
        v7 = &v6[1];
        v8 = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::operator[](v5, v6);
        if (v7 != v8)
        {
          v9 = v8;
          CoreML::Specification::MILSpec::Function::Clear(v8);
          CoreML::Specification::MILSpec::Function::MergeFrom(v9, v7);
        }
      }

      result = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::iterator_base<google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::KeyValuePair const>::operator++(&v10);
      v3 = v10;
    }

    while (v10 != *a3);
  }

  return result;
}

void *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::swap(void *result, uint64_t a2)
{
  v3 = result;
  if (*result == *a2)
  {
    v4 = *(result + 2);
    *(result + 2) = *(a2 + 8);
    *(a2 + 8) = v4;
    v5 = result[2];
    result[2] = *(a2 + 16);
    *(a2 + 16) = v5;
  }

  else
  {
    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::Map(v6, result);
    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::operator=(v3, a2);
    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::operator=(a2, v6);
    return google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::~Map(v6);
  }

  return result;
}

void sub_21856EE44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::~Map(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::operator=(void *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::clear(a1);
    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::begin(a2, &v6);
    memset(v5, 0, sizeof(v5));
    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::insert<google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::const_iterator>(a1, &v6, v5);
  }

  return a1;
}

uint64_t google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::Map(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = *(a2 + 8);
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::Init(a1);
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::begin(a2, &v6);
  memset(v5, 0, sizeof(v5));
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::insert<google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::const_iterator>(a1, &v6, v5);
  return a1;
}

void *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::insert<google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::const_iterator>(void *result, __int128 *a2, void *a3)
{
  v10 = *a2;
  v11 = *(a2 + 2);
  v3 = v10;
  if (v10 != *a3)
  {
    v5 = result;
    do
    {
      google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::FindHelper(*(v5 + 16), *(v3 + 24), 0, v12);
      if (!v12[0])
      {
        v6 = *(v10 + 24);
        v7 = &v6[1];
        v8 = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>::operator[](v5, v6);
        if (v7 != v8)
        {
          v9 = v8;
          CoreML::Specification::MILSpec::Value::Clear(v8);
          CoreML::Specification::MILSpec::Value::MergeFrom(v9, v7);
        }
      }

      result = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::iterator_base<google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::KeyValuePair const>::operator++(&v10);
      v3 = v10;
    }

    while (v10 != *a3);
  }

  return result;
}

void *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::Init(uint64_t a1)
{
  v2 = *a1;
  if (!*a1)
  {
    operator new();
  }

  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::InnerMap(Aligned, 0, v2);
  result = google::protobuf::Arena::AddListNode(v2, Aligned, google::protobuf::internal::arena_destruct_object<google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap>);
  *(a1 + 16) = Aligned;
  return result;
}

void *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::InnerMap(void *a1, unint64_t a2, google::protobuf::Arena *a3)
{
  *a1 = 0;
  a1[2] = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::Seed();
  a1[4] = 0;
  a1[5] = a3;
  if (a2 <= 8)
  {
    a2 = 8;
  }

  v8 = a3;
  v6 = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<void *>::allocate(&v8, a2, 0);
  bzero(v6, 8 * a2);
  a1[3] = a2;
  a1[4] = v6;
  a1[1] = a2;
  return a1;
}

uint64_t google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::Seed()
{
  v0 = std::random_device::random_device[abi:ne200100](&v7);
  v1 = MEMORY[0x21CEAFBB0](v0);
  v2 = v1 + ((v1 / 0x7FFFFFFF) | ((v1 / 0x7FFFFFFF) << 31));
  if (v2 <= 1)
  {
    v2 = 1;
  }

  v6[0] = v2;
  std::shuffle_order_engine<std::linear_congruential_engine<unsigned int,16807u,0u,2147483647u>,256ul>::__init[abi:ne200100](v6);
  v5 = xmmword_2185BD190;
  v3 = std::uniform_int_distribution<unsigned long>::operator()<std::shuffle_order_engine<std::linear_congruential_engine<unsigned int,16807u,0u,2147483647u>,256ul>>(&v5, v6, &v5);
  std::random_device::~random_device(&v7);
  return v3;
}

void sub_21856F1B4(void *a1)
{
  std::random_device::~random_device((v1 - 36));
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x21856F19CLL);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::NamedValueType>::TypeHandler>(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 2;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          (*(**v3 + 8))(*v3);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::Function>(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Parser<google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>>::MergePartialFromCodedStream(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2 >= *(a2 + 8) || *v4 != 10)
  {
    google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Parser<google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>>::MergePartialFromCodedStream();
LABEL_20:
    google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Parser<google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>>::MergePartialFromCodedStream(a1);
    return v14;
  }

  *a2 = v4 + 1;
  result = google::protobuf::internal::WireFormatLite::ReadBytes(a2, (a1 + 16));
  if (!result)
  {
    return result;
  }

  if ((*(a2 + 8) - *a2) < 1)
  {
    goto LABEL_20;
  }

  if (**a2 != 18)
  {
    goto LABEL_20;
  }

  v6 = *(a1 + 8);
  v7 = **(v6 + 16);
  *(a1 + 40) = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::operator[](v6, (a1 + 16));
  if (v7 == **(*(a1 + 8) + 16))
  {
    goto LABEL_20;
  }

  google::protobuf::io::CodedInputStream::Skip(a2, 1u);
  v8 = *(a1 + 40);
  v9 = *a2;
  if (*a2 >= *(a2 + 8) || (VarintSizeAsIntFallback = *v9, (VarintSizeAsIntFallback & 0x80000000) != 0))
  {
    VarintSizeAsIntFallback = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(a2);
    if ((VarintSizeAsIntFallback & 0x80000000) != 0)
    {
LABEL_18:
      google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::erase(*(a1 + 8), (a1 + 16));
      return 0;
    }
  }

  else
  {
    *a2 = v9 + 1;
  }

  v11 = google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(a2, VarintSizeAsIntFallback);
  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  v13 = v11;
  if (!CoreML::Specification::MILSpec::Block::MergePartialFromCodedStream(v8, a2, v12) || (google::protobuf::io::CodedInputStream::DecrementRecursionDepthAndPopLimit(a2, v13) & 1) == 0)
  {
    goto LABEL_18;
  }

  if (*a2 == *(a2 + 8) && (*(a2 + 44) || *(a2 + 24) == *(a2 + 40)))
  {
    *(a2 + 32) = 0;
    result = 1;
    *(a2 + 36) = 1;
  }

  else
  {

    return google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Parser<google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>>::ReadBeyondKeyValuePair(a1, a2);
  }

  return result;
}

uint64_t google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::erase(uint64_t a1, const void **a2)
{
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::FindHelper(*(a1 + 16), a2, 0, &v5);
  if (!v5)
  {
    return 0;
  }

  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::erase(a1, &v5, v4);
  return 1;
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Parser<google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>>::ReadBeyondKeyValuePair(uint64_t a1, uint64_t a2)
{
  v4 = google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::NewEntry(*a1);
  v5 = *(a1 + 48);
  if (v5 == v4)
  {
    v4 = *(a1 + 48);
  }

  else
  {
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    *(a1 + 48) = v4;
  }

  v6 = *(a1 + 40);
  *(v4 + 10) |= 2u;
  Aligned = v4[3];
  if (!Aligned)
  {
    v8 = v4[4];
    if (!v8)
    {
      operator new();
    }

    CoreML::Specification::MILSpec::Block::Block(Aligned);
    google::protobuf::Arena::AddListNode(v8, Aligned, google::protobuf::internal::arena_destruct_object<CoreML::Specification::MILSpec::Block>);
    v4[3] = Aligned;
  }

  if (v6 != Aligned)
  {
    CoreML::Specification::MILSpec::Block::InternalSwap(Aligned, v6);
  }

  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::erase(*(a1 + 8), (a1 + 16));
  v9 = *(a1 + 48);
  *(v9 + 40) |= 1u;
  v10 = *(v9 + 16);
  if (v10 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance();
  }

  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  v11 = *(a1 + 16);
  *(v10 + 16) = *(a1 + 32);
  *v10 = v11;
  *(a1 + 39) = 0;
  *(a1 + 16) = 0;
  v12 = (*(**(a1 + 48) + 88))(*(a1 + 48), a2);
  if (v12)
  {
    google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Parser<google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>>::UseKeyAndValueFromEntry(a1);
  }

  if ((*(**(a1 + 48) + 40))(*(a1 + 48)))
  {
    *(a1 + 48) = 0;
  }

  return v12;
}

void *google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::NewEntry(google::protobuf::Arena **a1)
{
  v1 = *a1;
  if (!*a1)
  {
    operator new();
  }

  result[1] = 0;
  result[2] = &google::protobuf::internal::fixed_address_empty_string;
  result[3] = 0;
  result[4] = v1;
  *(result + 10) = 0;
  *result = &unk_282A007E8;
  return result;
}

std::string *google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Parser<google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>>::UseKeyAndValueFromEntry(uint64_t a1)
{
  v2 = (*(**(a1 + 48) + 136))(*(a1 + 48));
  std::string::operator=((a1 + 16), v2);
  result = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::operator[](*(a1 + 8), (a1 + 16));
  *(a1 + 40) = result;
  v4 = *(a1 + 48);
  *(v4 + 40) |= 2u;
  Aligned = *(v4 + 24);
  if (!Aligned)
  {
    v6 = *(v4 + 32);
    if (!v6)
    {
      operator new();
    }

    CoreML::Specification::MILSpec::Block::Block(Aligned);
    google::protobuf::Arena::AddListNode(v6, Aligned, google::protobuf::internal::arena_destruct_object<CoreML::Specification::MILSpec::Block>);
    *(v4 + 24) = Aligned;
    result = *(a1 + 40);
  }

  if (Aligned != result)
  {

    return CoreML::Specification::MILSpec::Block::InternalSwap(result, Aligned);
  }

  return result;
}

void *google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Wrap(uint64_t a1, uint64_t a2, google::protobuf::Arena *a3)
{
  if (!a3)
  {
    operator new();
  }

  result[1] = 0;
  result[2] = &google::protobuf::internal::fixed_address_empty_string;
  result[3] = 0;
  result[4] = a3;
  *result = &unk_282A00D00;
  result[6] = a1;
  result[7] = a2;
  *(result + 10) = 3;
  return result;
}

void google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::MapEntryWrapper::~MapEntryWrapper(uint64_t a1)
{
  google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::~MapEntryImpl(a1);

  JUMPOUT(0x21CEAFEA0);
}

std::string *google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::NamedValueType>::TypeHandler>(std::string *result, std::string **a2, CoreML::Specification::MILSpec::NamedValueType **a3, signed int a4, signed int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = google::protobuf::internal::GenericTypeHandler<CoreML::Specification::MILSpec::NamedValueType>::Merge(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = a4 - a5;
  if (a4 > a5)
  {
    v17 = *v9;
    v18 = &a3[a5];
    v19 = &a2[a5];
    do
    {
      v20 = *v18;
      if (!v17)
      {
        operator new();
      }

      CoreML::Specification::MILSpec::NamedValueType::NamedValueType(Aligned, v22, v23);
      google::protobuf::Arena::AddListNode(v17, Aligned, google::protobuf::internal::arena_destruct_object<CoreML::Specification::MILSpec::NamedValueType>);
      result = google::protobuf::internal::GenericTypeHandler<CoreML::Specification::MILSpec::NamedValueType>::Merge(v20, Aligned);
      *v19++ = Aligned;
      ++v18;
      --v16;
    }

    while (v16);
  }

  return result;
}

void *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::swap(void *result, uint64_t a2)
{
  v3 = result;
  if (*result == *a2)
  {
    v4 = *(result + 2);
    *(result + 2) = *(a2 + 8);
    *(a2 + 8) = v4;
    v5 = result[2];
    result[2] = *(a2 + 16);
    *(a2 + 16) = v5;
  }

  else
  {
    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::Map(v6, result);
    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::operator=(v3, a2);
    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::operator=(a2, v6);
    return google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::~Map(v6);
  }

  return result;
}

void sub_21856FB2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::~Map(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::operator=(void *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::clear(a1);
    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::begin(a2, &v6);
    memset(v5, 0, sizeof(v5));
    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::insert<google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::const_iterator>(a1, &v6, v5);
  }

  return a1;
}

uint64_t google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::Map(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = *(a2 + 8);
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::Init(a1);
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::begin(a2, &v6);
  memset(v5, 0, sizeof(v5));
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::insert<google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::const_iterator>(a1, &v6, v5);
  return a1;
}

void *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::insert<google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::const_iterator>(void *result, __int128 *a2, void *a3)
{
  v10 = *a2;
  v11 = *(a2 + 2);
  v3 = v10;
  if (v10 != *a3)
  {
    v5 = result;
    do
    {
      google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::FindHelper(*(v5 + 16), *(v3 + 24), 0, v12);
      if (!v12[0])
      {
        v6 = *(v10 + 24);
        v7 = &v6[1];
        v8 = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::operator[](v5, v6);
        if (v7 != v8)
        {
          v9 = v8;
          CoreML::Specification::MILSpec::Block::Clear(v8);
          CoreML::Specification::MILSpec::Block::MergeFrom(v9, v7);
        }
      }

      result = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::iterator_base<google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::KeyValuePair const>::operator++(&v10);
      v3 = v10;
    }

    while (v10 != *a3);
  }

  return result;
}

void google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        v5 = *v3;
        if (*v3)
        {
          if (*(v5 + 23) < 0)
          {
            operator delete(*v5);
          }

          MEMORY[0x21CEAFEA0](v5, 0x1012C40EC159624);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::Block>(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

std::string *google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(std::string *result, std::string **a2, const std::string **a3, signed int a4, signed int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = std::string::operator=(v15, v13);
      --v10;
    }

    while (v10);
  }

  v16 = a4 - a5;
  if (a4 > a5)
  {
    v17 = *v9;
    v18 = &a3[a5];
    v19 = &a2[a5];
    do
    {
      v20 = *v18;
      if (!v17)
      {
        operator new();
      }

      Aligned->__r_.__value_.__l.__size_ = 0;
      Aligned->__r_.__value_.__r.__words[2] = 0;
      Aligned->__r_.__value_.__r.__words[0] = 0;
      google::protobuf::Arena::AddListNode(v17, Aligned, google::protobuf::internal::arena_destruct_object<std::string>);
      result = std::string::operator=(Aligned, v20);
      *v19++ = Aligned;
      ++v18;
      --v16;
    }

    while (v16);
  }

  return result;
}

__int128 *google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::Operation>::TypeHandler>(__int128 *result, google::protobuf::Arena ***a2, CoreML::Specification::MILSpec::Operation **a3, signed int a4, signed int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = google::protobuf::internal::GenericTypeHandler<CoreML::Specification::MILSpec::Operation>::Merge(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = a4 - a5;
  if (a4 > a5)
  {
    v17 = *v9;
    v18 = &a3[a5];
    v19 = &a2[a5];
    do
    {
      v20 = *v18;
      if (!v17)
      {
        operator new();
      }

      CoreML::Specification::MILSpec::Operation::Operation(Aligned);
      google::protobuf::Arena::AddListNode(v17, Aligned, google::protobuf::internal::arena_destruct_object<CoreML::Specification::MILSpec::Operation>);
      result = google::protobuf::internal::GenericTypeHandler<CoreML::Specification::MILSpec::Operation>::Merge(v20, Aligned);
      *v19++ = Aligned;
      ++v18;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::Argument_Binding>(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::Argument>(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

std::string *google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::Argument_Binding>::TypeHandler>(std::string *result, std::string **a2, CoreML::Specification::MILSpec::Argument_Binding **a3, signed int a4, signed int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = google::protobuf::internal::GenericTypeHandler<CoreML::Specification::MILSpec::Argument_Binding>::Merge(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = a4 - a5;
  if (a4 > a5)
  {
    v17 = *v9;
    v18 = &a3[a5];
    v19 = &a2[a5];
    do
    {
      v20 = *v18;
      if (!v17)
      {
        operator new();
      }

      CoreML::Specification::MILSpec::Argument_Binding::Argument_Binding(Aligned, v22, v23);
      google::protobuf::Arena::AddListNode(v17, Aligned, google::protobuf::internal::arena_destruct_object<CoreML::Specification::MILSpec::Argument_Binding>);
      result = google::protobuf::internal::GenericTypeHandler<CoreML::Specification::MILSpec::Argument_Binding>::Merge(v20, Aligned);
      *v19++ = Aligned;
      ++v18;
      --v16;
    }

    while (v16);
  }

  return result;
}

void *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::Init(uint64_t a1)
{
  v2 = *a1;
  if (!*a1)
  {
    operator new();
  }

  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::InnerMap::InnerMap(Aligned, 0, v2);
  result = google::protobuf::Arena::AddListNode(v2, Aligned, google::protobuf::internal::arena_destruct_object<google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::InnerMap>);
  *(a1 + 16) = Aligned;
  return result;
}

void *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::InnerMap::InnerMap(void *a1, unint64_t a2, google::protobuf::Arena *a3)
{
  *a1 = 0;
  a1[2] = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::InnerMap::Seed();
  a1[4] = 0;
  a1[5] = a3;
  if (a2 <= 8)
  {
    a2 = 8;
  }

  v8 = a3;
  v6 = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>::MapAllocator<void *>::allocate(&v8, a2, 0);
  bzero(v6, 8 * a2);
  a1[3] = a2;
  a1[4] = v6;
  a1[1] = a2;
  return a1;
}

uint64_t google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::InnerMap::Seed()
{
  v0 = std::random_device::random_device[abi:ne200100](&v7);
  v1 = MEMORY[0x21CEAFBB0](v0);
  v2 = v1 + ((v1 / 0x7FFFFFFF) | ((v1 / 0x7FFFFFFF) << 31));
  if (v2 <= 1)
  {
    v2 = 1;
  }

  v6[0] = v2;
  std::shuffle_order_engine<std::linear_congruential_engine<unsigned int,16807u,0u,2147483647u>,256ul>::__init[abi:ne200100](v6);
  v5 = xmmword_2185BD190;
  v3 = std::uniform_int_distribution<unsigned long>::operator()<std::shuffle_order_engine<std::linear_congruential_engine<unsigned int,16807u,0u,2147483647u>,256ul>>(&v5, v6, &v5);
  std::random_device::~random_device(&v7);
  return v3;
}

void sub_218570344(void *a1)
{
  std::random_device::~random_device((v1 - 36));
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x21857032CLL);
}

uint64_t google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::Operation>(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Parser<google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>>::MergePartialFromCodedStream(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2 >= *(a2 + 8) || *v4 != 10)
  {
    google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Parser<google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>>::MergePartialFromCodedStream();
LABEL_20:
    google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Parser<google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>>::MergePartialFromCodedStream(a1);
    return v14;
  }

  *a2 = v4 + 1;
  result = google::protobuf::internal::WireFormatLite::ReadBytes(a2, (a1 + 16));
  if (!result)
  {
    return result;
  }

  if ((*(a2 + 8) - *a2) < 1)
  {
    goto LABEL_20;
  }

  if (**a2 != 18)
  {
    goto LABEL_20;
  }

  v6 = *(a1 + 8);
  v7 = **(v6 + 16);
  *(a1 + 40) = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::operator[](v6, (a1 + 16));
  if (v7 == **(*(a1 + 8) + 16))
  {
    goto LABEL_20;
  }

  google::protobuf::io::CodedInputStream::Skip(a2, 1u);
  v8 = *(a1 + 40);
  v9 = *a2;
  if (*a2 >= *(a2 + 8) || (VarintSizeAsIntFallback = *v9, (VarintSizeAsIntFallback & 0x80000000) != 0))
  {
    VarintSizeAsIntFallback = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(a2);
    if ((VarintSizeAsIntFallback & 0x80000000) != 0)
    {
LABEL_18:
      google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::erase(*(a1 + 8), (a1 + 16));
      return 0;
    }
  }

  else
  {
    *a2 = v9 + 1;
  }

  v11 = google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(a2, VarintSizeAsIntFallback);
  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  v13 = v11;
  if (!CoreML::Specification::MILSpec::Argument::MergePartialFromCodedStream(v8, a2, v12) || (google::protobuf::io::CodedInputStream::DecrementRecursionDepthAndPopLimit(a2, v13) & 1) == 0)
  {
    goto LABEL_18;
  }

  if (*a2 == *(a2 + 8) && (*(a2 + 44) || *(a2 + 24) == *(a2 + 40)))
  {
    *(a2 + 32) = 0;
    result = 1;
    *(a2 + 36) = 1;
  }

  else
  {

    return google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Parser<google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>>::ReadBeyondKeyValuePair(a1, a2);
  }

  return result;
}

uint64_t google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::erase(uint64_t a1, const void **a2)
{
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::FindHelper(*(a1 + 16), a2, 0, &v5);
  if (!v5)
  {
    return 0;
  }

  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::erase(a1, &v5, v4);
  return 1;
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Parser<google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>>::ReadBeyondKeyValuePair(uint64_t a1, uint64_t a2)
{
  v4 = google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::NewEntry(*a1);
  v5 = *(a1 + 48);
  if (v5 == v4)
  {
    v4 = *(a1 + 48);
  }

  else
  {
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    *(a1 + 48) = v4;
  }

  v6 = *(a1 + 40);
  *(v4 + 10) |= 2u;
  Aligned = v4[3];
  if (!Aligned)
  {
    v8 = v4[4];
    if (!v8)
    {
      operator new();
    }

    CoreML::Specification::MILSpec::Argument::Argument(Aligned, v9, v10);
    google::protobuf::Arena::AddListNode(v8, Aligned, google::protobuf::internal::arena_destruct_object<CoreML::Specification::MILSpec::Argument>);
    v4[3] = Aligned;
  }

  CoreML::Specification::MILSpec::Argument::Swap(Aligned, v6);
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::erase(*(a1 + 8), (a1 + 16));
  v11 = *(a1 + 48);
  *(v11 + 40) |= 1u;
  v12 = *(v11 + 16);
  if (v12 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance();
  }

  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  v13 = *(a1 + 16);
  *(v12 + 16) = *(a1 + 32);
  *v12 = v13;
  *(a1 + 39) = 0;
  *(a1 + 16) = 0;
  v14 = (*(**(a1 + 48) + 88))(*(a1 + 48), a2);
  if (v14)
  {
    google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Parser<google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>>::UseKeyAndValueFromEntry(a1);
  }

  if ((*(**(a1 + 48) + 40))(*(a1 + 48)))
  {
    *(a1 + 48) = 0;
  }

  return v14;
}

void *google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::NewEntry(google::protobuf::Arena **a1)
{
  v1 = *a1;
  if (!*a1)
  {
    operator new();
  }

  result[1] = 0;
  result[2] = &google::protobuf::internal::fixed_address_empty_string;
  result[3] = 0;
  result[4] = v1;
  *(result + 10) = 0;
  *result = &unk_282A00968;
  return result;
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Parser<google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>>::UseKeyAndValueFromEntry(uint64_t a1)
{
  v2 = (*(**(a1 + 48) + 136))(*(a1 + 48));
  std::string::operator=((a1 + 16), v2);
  v3 = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::operator[](*(a1 + 8), (a1 + 16));
  *(a1 + 40) = v3;
  v4 = *(a1 + 48);
  *(v4 + 40) |= 2u;
  Aligned = *(v4 + 24);
  if (!Aligned)
  {
    v6 = *(v4 + 32);
    if (!v6)
    {
      operator new();
    }

    CoreML::Specification::MILSpec::Argument::Argument(Aligned, v7, v8);
    google::protobuf::Arena::AddListNode(v6, Aligned, google::protobuf::internal::arena_destruct_object<CoreML::Specification::MILSpec::Argument>);
    *(v4 + 24) = Aligned;
    v3 = *(a1 + 40);
  }

  return CoreML::Specification::MILSpec::Argument::Swap(v3, Aligned);
}

void *google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Wrap(uint64_t a1, uint64_t a2, google::protobuf::Arena *a3)
{
  if (!a3)
  {
    operator new();
  }

  result[1] = 0;
  result[2] = &google::protobuf::internal::fixed_address_empty_string;
  result[3] = 0;
  result[4] = a3;
  *result = &unk_282A00DE8;
  result[6] = a1;
  result[7] = a2;
  *(result + 10) = 3;
  return result;
}

void google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::MapEntryWrapper::~MapEntryWrapper(uint64_t a1)
{
  google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::~MapEntryImpl(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::Block>::TypeHandler>(uint64_t result, CoreML::Specification::MILSpec::Block **a2, CoreML::Specification::MILSpec::Block **a3, signed int a4, signed int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = google::protobuf::internal::GenericTypeHandler<CoreML::Specification::MILSpec::Block>::Merge(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = a4 - a5;
  if (a4 > a5)
  {
    v17 = *v9;
    v18 = &a3[a5];
    v19 = &a2[a5];
    do
    {
      v20 = *v18;
      if (!v17)
      {
        operator new();
      }

      CoreML::Specification::MILSpec::Block::Block(Aligned);
      google::protobuf::Arena::AddListNode(v17, Aligned, google::protobuf::internal::arena_destruct_object<CoreML::Specification::MILSpec::Block>);
      result = google::protobuf::internal::GenericTypeHandler<CoreML::Specification::MILSpec::Block>::Merge(v20, Aligned);
      *v19++ = Aligned;
      ++v18;
      --v16;
    }

    while (v16);
  }

  return result;
}

void *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::swap(void *result, uint64_t a2)
{
  v3 = result;
  if (*result == *a2)
  {
    v4 = *(result + 2);
    *(result + 2) = *(a2 + 8);
    *(a2 + 8) = v4;
    v5 = result[2];
    result[2] = *(a2 + 16);
    *(a2 + 16) = v5;
  }

  else
  {
    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::Map(v6, result);
    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::operator=(v3, a2);
    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::operator=(a2, v6);
    return google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::~Map(v6);
  }

  return result;
}

void sub_218570C10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::~Map(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::operator=(void *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::clear(a1);
    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::begin(a2, &v6);
    memset(v5, 0, sizeof(v5));
    google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::insert<google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::const_iterator>(a1, &v6, v5);
  }

  return a1;
}

uint64_t google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::Map(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = *(a2 + 8);
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::Init(a1);
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::begin(a2, &v6);
  memset(v5, 0, sizeof(v5));
  google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::insert<google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::const_iterator>(a1, &v6, v5);
  return a1;
}

void *google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::insert<google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::const_iterator>(void *result, __int128 *a2, void *a3)
{
  v8 = *a2;
  v9 = *(a2 + 2);
  v3 = v8;
  if (v8 != *a3)
  {
    v5 = result;
    do
    {
      google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::FindHelper(*(v5 + 16), *(v3 + 24), 0, v10);
      if (!v10[0])
      {
        v6 = *(v8 + 24);
        v7 = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>::operator[](v5, v6);
        CoreML::Specification::MILSpec::Argument::CopyFrom(v7, &v6[1]);
      }

      result = google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::InnerMap::iterator_base<google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>::KeyValuePair const>::operator++(&v8);
      v3 = v8;
    }

    while (v8 != *a3);
  }

  return result;
}

uint64_t google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::NamedValueType>(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::ValueType>(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::TensorType>(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

std::string *google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::Dimension>::TypeHandler>(std::string *result, std::string **a2, CoreML::Specification::MILSpec::Dimension **a3, signed int a4, signed int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = google::protobuf::internal::GenericTypeHandler<CoreML::Specification::MILSpec::Dimension>::Merge(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = a4 - a5;
  if (a4 > a5)
  {
    v17 = *v9;
    v18 = &a3[a5];
    v19 = &a2[a5];
    do
    {
      v20 = *v18;
      if (!v17)
      {
        operator new();
      }

      CoreML::Specification::MILSpec::Dimension::Dimension(Aligned, v22, v23);
      google::protobuf::Arena::AddListNode(v17, Aligned, google::protobuf::internal::arena_destruct_object<CoreML::Specification::MILSpec::Dimension>);
      result = google::protobuf::internal::GenericTypeHandler<CoreML::Specification::MILSpec::Dimension>::Merge(v20, Aligned);
      *v19++ = Aligned;
      ++v18;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::TupleType>(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::ValueType>::TypeHandler>(uint64_t result, CoreML::Specification::MILSpec::ValueType **a2, CoreML::Specification::MILSpec::ValueType **a3, signed int a4, signed int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = google::protobuf::internal::GenericTypeHandler<CoreML::Specification::MILSpec::ValueType>::Merge(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = a4 - a5;
  if (a4 > a5)
  {
    v17 = *v9;
    v18 = &a3[a5];
    v19 = &a2[a5];
    do
    {
      v20 = *v18;
      if (!v17)
      {
        operator new();
      }

      CoreML::Specification::MILSpec::ValueType::ValueType(Aligned, v22, v23);
      google::protobuf::Arena::AddListNode(v17, Aligned, google::protobuf::internal::arena_destruct_object<CoreML::Specification::MILSpec::ValueType>);
      result = google::protobuf::internal::GenericTypeHandler<CoreML::Specification::MILSpec::ValueType>::Merge(v20, Aligned);
      *v19++ = Aligned;
      ++v18;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::ListType>(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::DictionaryType>(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::StateType>(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::Dimension_ConstantDimension>(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::Dimension_UnknownDimension>(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::Dimension>(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::Value_ImmediateValue>(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::Value_BlobFileValue>(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::Value>(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::TensorValue_RepeatedFloats>(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::TensorValue_RepeatedDoubles>(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::TensorValue_RepeatedInts>(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::TensorValue_RepeatedLongInts>(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::TensorValue_RepeatedBools>(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::TensorValue_RepeatedStrings>(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::TensorValue_RepeatedBytes>(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::TensorValue>(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::TupleValue>(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::Value>::TypeHandler>(uint64_t result, CoreML::Specification::MILSpec::Value **a2, CoreML::Specification::MILSpec::Value **a3, signed int a4, signed int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = google::protobuf::internal::GenericTypeHandler<CoreML::Specification::MILSpec::Value>::Merge(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = a4 - a5;
  if (a4 > a5)
  {
    v17 = *v9;
    v18 = &a3[a5];
    v19 = &a2[a5];
    do
    {
      v20 = *v18;
      if (!v17)
      {
        operator new();
      }

      CoreML::Specification::MILSpec::Value::Value(Aligned, v22, v23);
      google::protobuf::Arena::AddListNode(v17, Aligned, google::protobuf::internal::arena_destruct_object<CoreML::Specification::MILSpec::Value>);
      result = google::protobuf::internal::GenericTypeHandler<CoreML::Specification::MILSpec::Value>::Merge(v20, Aligned);
      *v19++ = Aligned;
      ++v18;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::ListValue>(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair>(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t google::protobuf::internal::arena_delete_object<CoreML::Specification::MILSpec::DictionaryValue>(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

std::string *google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair>::TypeHandler>(std::string *result, std::string **a2, CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair **a3, signed int a4, signed int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = google::protobuf::internal::GenericTypeHandler<CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair>::Merge(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = a4 - a5;
  if (a4 > a5)
  {
    v17 = *v9;
    v18 = &a3[a5];
    v19 = &a2[a5];
    do
    {
      v20 = *v18;
      if (!v17)
      {
        operator new();
      }

      CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair::DictionaryValue_KeyValuePair(Aligned, v22, v23);
      google::protobuf::Arena::AddListNode(v17, Aligned, google::protobuf::internal::arena_destruct_object<CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair>);
      result = google::protobuf::internal::GenericTypeHandler<CoreML::Specification::MILSpec::DictionaryValue_KeyValuePair>::Merge(v20, Aligned);
      *v19++ = Aligned;
      ++v18;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_0()
{
  result = *(v0 + 16);
  *(v0 + 40) |= 1u;
  return result;
}

void OUTLINED_FUNCTION_20()
{
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = 0;
}

google::protobuf::io::FileInputStream *google::protobuf::io::FileInputStream::FileInputStream(google::protobuf::io::FileInputStream *this, int a2, int a3)
{
  *this = &unk_282A00EA8;
  *(this + 1) = &unk_282A00EE8;
  *(this + 4) = a2;
  *(this + 10) = 0;
  *(this + 6) = 0;
  *(this + 28) = 0;
  google::protobuf::io::CopyingInputStreamAdaptor::CopyingInputStreamAdaptor(this + 32, (this + 8), a3);
  return this;
}

void sub_218571898(_Unwind_Exception *a1)
{
  google::protobuf::io::FileInputStream::CopyingFileInputStream::~CopyingFileInputStream(v2);
  UnknownLocationImpl::~UnknownLocationImpl(v1);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::FileInputStream::CopyingFileInputStream::CopyingFileInputStream(uint64_t this, int a2)
{
  *this = &unk_282A00EE8;
  *(this + 8) = a2;
  *(this + 12) = 0;
  *(this + 16) = 0;
  *(this + 20) = 0;
  return this;
}

void google::protobuf::io::FileInputStream::~FileInputStream(google::protobuf::io::FileInputStream *this)
{
  *this = &unk_282A00EA8;
  v2 = (this + 8);
  google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor((this + 32));
  google::protobuf::io::FileInputStream::CopyingFileInputStream::~CopyingFileInputStream(v2);

  UnknownLocationImpl::~UnknownLocationImpl(this);
}

{
  google::protobuf::io::FileInputStream::~FileInputStream(this);

  JUMPOUT(0x21CEAFEA0);
}

BOOL google::protobuf::io::FileInputStream::CopyingFileInputStream::Close(google::protobuf::io::FileInputStream::CopyingFileInputStream *this)
{
  if (*(this + 13) == 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/io/zero_copy_stream_impl.cc", 124);
    v2 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: !is_closed_: ");
    google::protobuf::internal::LogFinisher::operator=(&v6, v2, v3);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  *(this + 13) = 1;
  if (v4)
  {
    *(this + 4) = *__error();
  }

  return v4 == 0;
}

void sub_218571A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::io::FileInputStream::CopyingFileInputStream::~CopyingFileInputStream(google::protobuf::io::FileInputStream::CopyingFileInputStream *this)
{
  *this = &unk_282A00EE8;
  if (*(this + 12) == 1 && !google::protobuf::io::FileInputStream::CopyingFileInputStream::Close(this))
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 2, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/io/zero_copy_stream_impl.cc", 118);
    v2 = google::protobuf::internal::LogMessage::operator<<(v7, "close() failed: ");
    v3 = strerror(*(this + 4));
    v4 = google::protobuf::internal::LogMessage::operator<<(v2, v3);
    google::protobuf::internal::LogFinisher::operator=(&v6, v4, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  UnknownLocationImpl::~UnknownLocationImpl(this);
}

{
  google::protobuf::io::FileInputStream::CopyingFileInputStream::~CopyingFileInputStream(this);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t google::protobuf::io::anonymous namespace::close_no_eintr(google::protobuf::io::_anonymous_namespace_ *this)
{
  v1 = this;
  do
  {
    v2 = close(v1);
  }

  while ((v2 & 0x80000000) != 0 && *__error() == 4);
  return v2;
}

ssize_t google::protobuf::io::FileInputStream::CopyingFileInputStream::Read(google::protobuf::io::FileInputStream::CopyingFileInputStream *this, void *a2, int a3)
{
  if (*(this + 13) == 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/io/zero_copy_stream_impl.cc", 139);
    v6 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: !is_closed_: ");
    google::protobuf::internal::LogFinisher::operator=(&v10, v6, v7);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  while (1)
  {
    v8 = read(*(this + 2), a2, a3);
    if ((v8 & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() != 4)
    {
      *(this + 4) = *__error();
      return v8;
    }
  }

  return v8;
}

void sub_218571C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::FileInputStream::CopyingFileInputStream::Skip(google::protobuf::io::FileInputStream::CopyingFileInputStream *this, uint64_t a2)
{
  if (*(this + 13) == 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/io/zero_copy_stream_impl.cc", 155);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: !is_closed_: ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if ((*(this + 20) & 1) != 0 || lseek(*(this + 2), a2, 1) == -1)
  {
    *(this + 20) = 1;
    return google::protobuf::io::CopyingInputStream::Skip(this);
  }

  return a2;
}

void sub_218571D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::io::FileOutputStream *google::protobuf::io::FileOutputStream::FileOutputStream(google::protobuf::io::FileOutputStream *this, int a2, int a3)
{
  *this = &unk_282A00F18;
  *(this + 1) = &unk_282A00F60;
  *(this + 4) = a2;
  *(this + 10) = 0;
  *(this + 6) = 0;
  google::protobuf::io::CopyingOutputStreamAdaptor::CopyingOutputStreamAdaptor(this + 32, (this + 8), a3);
  return this;
}

void sub_218571DBC(_Unwind_Exception *a1)
{
  google::protobuf::io::FileOutputStream::CopyingFileOutputStream::~CopyingFileOutputStream(v2);
  UnknownLocationImpl::~UnknownLocationImpl(v1);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::FileOutputStream::CopyingFileOutputStream::CopyingFileOutputStream(uint64_t this, int a2)
{
  *this = &unk_282A00F60;
  *(this + 8) = a2;
  *(this + 12) = 0;
  *(this + 16) = 0;
  return this;
}

void google::protobuf::io::FileOutputStream::~FileOutputStream(google::protobuf::io::FileOutputStream *this)
{
  *this = &unk_282A00F18;
  v2 = (this + 32);
  google::protobuf::io::CopyingOutputStreamAdaptor::Flush((this + 32));
  google::protobuf::io::CopyingOutputStreamAdaptor::~CopyingOutputStreamAdaptor(v2);
  google::protobuf::io::FileOutputStream::CopyingFileOutputStream::~CopyingFileOutputStream((this + 8));

  UnknownLocationImpl::~UnknownLocationImpl(this);
}

{
  google::protobuf::io::FileOutputStream::~FileOutputStream(this);

  JUMPOUT(0x21CEAFEA0);
}

BOOL google::protobuf::io::FileOutputStream::CopyingFileOutputStream::Close(google::protobuf::io::FileOutputStream::CopyingFileOutputStream *this)
{
  if (*(this + 13) == 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/io/zero_copy_stream_impl.cc", 222);
    v2 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: !is_closed_: ");
    google::protobuf::internal::LogFinisher::operator=(&v6, v2, v3);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  *(this + 13) = 1;
  if (v4)
  {
    *(this + 4) = *__error();
  }

  return v4 == 0;
}

void sub_218571F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::io::FileOutputStream::CopyingFileOutputStream::~CopyingFileOutputStream(google::protobuf::io::FileOutputStream::CopyingFileOutputStream *this)
{
  *this = &unk_282A00F60;
  if (*(this + 12) == 1 && !google::protobuf::io::FileOutputStream::CopyingFileOutputStream::Close(this))
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 2, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/io/zero_copy_stream_impl.cc", 216);
    v2 = google::protobuf::internal::LogMessage::operator<<(v7, "close() failed: ");
    v3 = strerror(*(this + 4));
    v4 = google::protobuf::internal::LogMessage::operator<<(v2, v3);
    google::protobuf::internal::LogFinisher::operator=(&v6, v4, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  UnknownLocationImpl::~UnknownLocationImpl(this);
}

{
  google::protobuf::io::FileOutputStream::CopyingFileOutputStream::~CopyingFileOutputStream(this);

  JUMPOUT(0x21CEAFEA0);
}

BOOL google::protobuf::io::FileOutputStream::CopyingFileOutputStream::Write(google::protobuf::io::FileOutputStream::CopyingFileOutputStream *this, char *a2, int a3)
{
  if (*(this + 13) == 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/io/zero_copy_stream_impl.cc", 238);
    v6 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: !is_closed_: ");
    google::protobuf::internal::LogFinisher::operator=(&v14, v6, v7);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if (a3 < 1)
  {
    return 1;
  }

  v8 = 0;
  do
  {
    while (1)
    {
      v9 = write(*(this + 2), &a2[v8], a3 - v8);
      v10 = v9;
      if (v9 < 0)
      {
        break;
      }

      result = v9 != 0;
      v8 += v10;
      if (v10)
      {
        v11 = v8 < a3;
      }

      else
      {
        v11 = 0;
      }

      if (!v11)
      {
        return result;
      }
    }
  }

  while (*__error() == 4);
  v12 = __error();
  result = 0;
  *(this + 4) = *v12;
  return result;
}

void sub_2185721B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::io::IstreamInputStream::IstreamInputStream(void *a1, uint64_t a2, int a3)
{
  *a1 = &unk_282A00F88;
  a1[1] = &unk_282A00FC8;
  a1[2] = a2;
  google::protobuf::io::CopyingInputStreamAdaptor::CopyingInputStreamAdaptor((a1 + 3), (a1 + 1), a3);
  return a1;
}

void sub_218572244(_Unwind_Exception *a1)
{
  UnknownLocationImpl::~UnknownLocationImpl(v2);
  UnknownLocationImpl::~UnknownLocationImpl(v1);
  _Unwind_Resume(a1);
}

void *google::protobuf::io::IstreamInputStream::CopyingIstreamInputStream::CopyingIstreamInputStream(void *result, uint64_t a2)
{
  *result = &unk_282A00FC8;
  result[1] = a2;
  return result;
}

void google::protobuf::io::IstreamInputStream::~IstreamInputStream(google::protobuf::io::IstreamInputStream *this)
{
  *this = &unk_282A00F88;
  v2 = (this + 8);
  google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor((this + 24));
  UnknownLocationImpl::~UnknownLocationImpl(v2);

  UnknownLocationImpl::~UnknownLocationImpl(this);
}

{
  google::protobuf::io::IstreamInputStream::~IstreamInputStream(this);

  JUMPOUT(0x21CEAFEA0);
}

void google::protobuf::io::IstreamInputStream::CopyingIstreamInputStream::~CopyingIstreamInputStream(google::protobuf::io::IstreamInputStream::CopyingIstreamInputStream *this)
{
  UnknownLocationImpl::~UnknownLocationImpl(this);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t google::protobuf::io::IstreamInputStream::CopyingIstreamInputStream::Read(google::protobuf::io::IstreamInputStream::CopyingIstreamInputStream *this, void *a2)
{
  std::istream::read();
  v3 = *(this + 1);
  result = *(v3 + 8);
  if (!result)
  {
    v5 = *(v3 + *(*v3 - 24) + 32);
    v6 = v5 & 5;
    v7 = v5 & 2;
    if (v6)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void *google::protobuf::io::OstreamOutputStream::OstreamOutputStream(void *a1, uint64_t a2, int a3)
{
  *a1 = &unk_282A00FF8;
  a1[1] = &unk_282A01040;
  a1[2] = a2;
  google::protobuf::io::CopyingOutputStreamAdaptor::CopyingOutputStreamAdaptor((a1 + 3), (a1 + 1), a3);
  return a1;
}

void sub_218572468(_Unwind_Exception *a1)
{
  UnknownLocationImpl::~UnknownLocationImpl(v2);
  UnknownLocationImpl::~UnknownLocationImpl(v1);
  _Unwind_Resume(a1);
}

void *google::protobuf::io::OstreamOutputStream::CopyingOstreamOutputStream::CopyingOstreamOutputStream(void *result, uint64_t a2)
{
  *result = &unk_282A01040;
  result[1] = a2;
  return result;
}

void google::protobuf::io::OstreamOutputStream::~OstreamOutputStream(google::protobuf::io::OstreamOutputStream *this)
{
  *this = &unk_282A00FF8;
  v2 = (this + 24);
  google::protobuf::io::CopyingOutputStreamAdaptor::Flush((this + 24));
  google::protobuf::io::CopyingOutputStreamAdaptor::~CopyingOutputStreamAdaptor(v2);
  UnknownLocationImpl::~UnknownLocationImpl((this + 8));

  UnknownLocationImpl::~UnknownLocationImpl(this);
}

{
  google::protobuf::io::OstreamOutputStream::~OstreamOutputStream(this);

  JUMPOUT(0x21CEAFEA0);
}

void google::protobuf::io::OstreamOutputStream::CopyingOstreamOutputStream::~CopyingOstreamOutputStream(google::protobuf::io::OstreamOutputStream::CopyingOstreamOutputStream *this)
{
  UnknownLocationImpl::~UnknownLocationImpl(this);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t google::protobuf::io::ConcatenatingInputStream::ConcatenatingInputStream(uint64_t result, uint64_t a2, int a3)
{
  *result = &unk_282A01068;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = 0;
  return result;
}

void google::protobuf::io::ConcatenatingInputStream::~ConcatenatingInputStream(google::protobuf::io::ConcatenatingInputStream *this)
{
  UnknownLocationImpl::~UnknownLocationImpl(this);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t google::protobuf::io::ConcatenatingInputStream::Next(google::protobuf::io::ConcatenatingInputStream *this, const void **a2, int *a3)
{
  if (*(this + 4) < 1)
  {
    return 0;
  }

  v6 = *(this + 1);
  do
  {
    v7 = (*(**v6 + 16))(*v6, a2, a3);
    if (v7)
    {
      break;
    }

    *(this + 3) += (*(***(this + 1) + 40))(**(this + 1));
    v6 = (*(this + 1) + 8);
    *(this + 1) = v6;
    v8 = *(this + 4);
    v9 = __OFSUB__(v8--, 1);
    *(this + 4) = v8;
  }

  while (!((v8 < 0) ^ v9 | (v8 == 0)));
  return v7;
}

void google::protobuf::io::ConcatenatingInputStream::BackUp(google::protobuf::io::ConcatenatingInputStream *this)
{
  if (*(this + 4) < 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v5, 2, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/io/zero_copy_stream_impl.cc", 372);
    v2 = google::protobuf::internal::LogMessage::operator<<(v5, "Can't BackUp() after failed Next().");
    google::protobuf::internal::LogFinisher::operator=(&v4, v2, v3);
    google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  }

  else
  {
    v1 = *(***(this + 1) + 24);

    v1();
  }
}

void sub_2185727EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::ConcatenatingInputStream::Skip(google::protobuf::io::ConcatenatingInputStream *this, uint64_t a2)
{
  if (*(this + 4) < 1)
  {
    return 0;
  }

  v4 = *(this + 1);
  do
  {
    v5 = (*(**v4 + 40))();
    v6 = (*(***(this + 1) + 32))(**(this + 1), a2);
    if (v6)
    {
      break;
    }

    v7 = (*(***(this + 1) + 40))(**(this + 1));
    a2 = (v5 + a2 - v7);
    *(this + 3) += v7;
    v4 = *(this + 1) + 8;
    *(this + 1) = v4;
    v8 = *(this + 4);
    v9 = __OFSUB__(v8--, 1);
    *(this + 4) = v8;
  }

  while (!((v8 < 0) ^ v9 | (v8 == 0)));
  return v6;
}

uint64_t google::protobuf::io::ConcatenatingInputStream::ByteCount(google::protobuf::io::ConcatenatingInputStream *this)
{
  v1 = *(this + 3);
  if (*(this + 4))
  {
    v1 += (*(***(this + 1) + 40))(**(this + 1));
  }

  return v1;
}

void *google::protobuf::io::LimitingInputStream::LimitingInputStream(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_282A010A8;
  a1[1] = a2;
  a1[2] = a3;
  a1[3] = (*(*a2 + 40))(a2);
  return a1;
}

void google::protobuf::io::LimitingInputStream::~LimitingInputStream(google::protobuf::io::LimitingInputStream *this)
{
  *this = &unk_282A010A8;
  if ((*(this + 2) & 0x8000000000000000) != 0)
  {
    (*(**(this + 1) + 24))(*(this + 1), -*(this + 4));
  }

  UnknownLocationImpl::~UnknownLocationImpl(this);
}

{
  google::protobuf::io::LimitingInputStream::~LimitingInputStream(this);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t google::protobuf::io::LimitingInputStream::Next(google::protobuf::io::LimitingInputStream *this, const void **a2, int *a3)
{
  if (*(this + 2) < 1)
  {
    return 0;
  }

  result = (*(**(this + 1) + 16))(*(this + 1), a2);
  if (result)
  {
    v6 = *a3;
    v7 = *(this + 2) - v6;
    *(this + 2) = v7;
    if (v7 < 0)
    {
      *a3 = v6 + v7;
    }

    return 1;
  }

  return result;
}

uint64_t google::protobuf::io::LimitingInputStream::BackUp(google::protobuf::io::LimitingInputStream *this, uint64_t a2)
{
  v2 = a2;
  v6 = this + 8;
  v4 = *(this + 1);
  v5 = *(v6 + 1);
  if (v5 < 0)
  {
    v8 = a2;
    result = (*(*v4 + 24))(v4, (a2 - v5));
  }

  else
  {
    result = (*(*v4 + 24))(v4, a2);
    v8 = *(this + 2) + v2;
  }

  *(this + 2) = v8;
  return result;
}

BOOL google::protobuf::io::LimitingInputStream::Skip(google::protobuf::io::LimitingInputStream *this, uint64_t a2)
{
  v4 = *(this + 2);
  v5 = v4 >= a2;
  if (v4 < a2)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      (*(**(this + 1) + 32))(*(this + 1));
      v6 = 0;
      goto LABEL_6;
    }

    return 0;
  }

  if (!(*(**(this + 1) + 32))(*(this + 1), a2))
  {
    return 0;
  }

  v6 = *(this + 2) - a2;
LABEL_6:
  *(this + 2) = v6;
  return v5;
}

uint64_t google::protobuf::io::LimitingInputStream::ByteCount(google::protobuf::io::LimitingInputStream *this)
{
  v2 = *(this + 2);
  v3 = (*(**(this + 1) + 40))(*(this + 1));
  if (v2 < 0)
  {
    v3 += *(this + 2);
  }

  return v3 - *(this + 3);
}

void *google::protobuf::Arena::thread_cache(google::protobuf::Arena *this)
{
  {
    operator new();
  }

  v1 = google::protobuf::Arena::thread_cache(void)::thread_cache_;

  return google::protobuf::internal::ThreadLocalStorage<google::protobuf::Arena::ThreadCache>::Get(v1);
}

void sub_218572D8C(_Unwind_Exception *a1)
{
  MEMORY[0x21CEAFEA0](v1, 0x1000C4000313F17);
  _Unwind_Resume(a1);
}

void *google::protobuf::internal::ThreadLocalStorage<google::protobuf::Arena::ThreadCache>::Get(pthread_key_t *a1)
{
  v1 = pthread_getspecific(*a1);
  if (!v1)
  {
    operator new();
  }

  return v1;
}

void sub_218572F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unint64_t *google::protobuf::Arena::AddBlockInternal(unint64_t *result, void *a2)
{
  a2[1] = result[1];
  atomic_store(a2, result + 1);
  v2 = a2[3];
  if (v2 != a2[2])
  {
    atomic_store(a2, result + 2);
    v2 = a2[3];
  }

  result[3] += v2;
  return result;
}

void google::protobuf::Arena::~Arena(google::protobuf::Arena *this)
{
  v2 = google::protobuf::Arena::ResetInternal(this);
  v3 = *(this + 16);
  if (v3)
  {
    v3(this, *(this + 7), v2);
  }

  if (google::protobuf::lifecycle_id_generator_ptr)
  {
    MEMORY[0x21CEAFEA0](google::protobuf::lifecycle_id_generator_ptr, 0x1000C4000313F17);
  }

  google::protobuf::internal::Mutex::~Mutex((this + 48));
}

google::protobuf::Arena *google::protobuf::Arena::ResetInternal(google::protobuf::Arena *this)
{
  for (i = *(this + 4); i; i = *(i + 16))
  {
    (*(i + 8))(*i);
  }

  *(this + 4) = 0;
  v3 = google::protobuf::Arena::FreeBlocks(this);
  v4 = *(this + 15);
  if (v4)
  {
    v4(this, *(this + 7), v3);
  }

  return v3;
}

google::protobuf::Arena *google::protobuf::Arena::Reset(google::protobuf::Arena *this)
{
  v1 = google::protobuf::lifecycle_id_generator_ptr;
  do
  {
    v2 = __ldxr(v1);
    v3 = v2 + 1;
  }

  while (__stxr(v3, v1));
  *this = v3 - 1;
  return google::protobuf::Arena::ResetInternal(this);
}

uint64_t google::protobuf::Arena::CleanupList(uint64_t this)
{
  v1 = this;
  for (i = *(this + 32); i; i = *(i + 16))
  {
    this = (*(i + 8))(*i);
  }

  *(v1 + 32) = 0;
  return this;
}

google::protobuf::Arena *google::protobuf::Arena::FreeBlocks(google::protobuf::Arena **this)
{
  v1 = this;
  v3 = this + 1;
  v2 = this[1];
  if (v2)
  {
    v4 = v2[3];
    v5 = v2[1];
    if (v5)
    {
      v6 = v2[3];
      this = this[1];
      do
      {
        v2 = v5;
        (*(v1 + 13))(this, v4);
        v4 = v2[3];
        v6 = (v6 + v4);
        v5 = v2[1];
        this = v2;
      }

      while (v5);
    }

    else
    {
      v6 = v2[3];
    }

    if (*(v1 + 40) == 1)
    {
      this = (*(v1 + 13))(v2);
      v2 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  if ((*(v1 + 40) & 1) == 0)
  {
    v2[2] = 32;
    v7 = google::protobuf::Arena::thread_cache(this);
    *v2 = v7;
    v8 = google::protobuf::Arena::thread_cache(v7);
    *(v8 + 1) = v2;
    v9 = *v1;
    *google::protobuf::Arena::thread_cache(v8) = v9;
    v2[1] = *(v1 + 1);
    atomic_store(v2, v1 + 1);
    v10 = v2[3];
    if (v10 != v2[2])
    {
      atomic_store(v2, v1 + 2);
      v10 = v2[3];
    }

    *(v1 + 3) += v10;
  }

  return v6;
}

void *google::protobuf::Arena::NewBlock(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  if (a3)
  {
    if (2 * *(a3 + 24) >= a6)
    {
      a5 = a6;
    }

    else
    {
      a5 = 2 * *(a3 + 24);
    }
  }

  if (a4 >= 0xFFFFFFFFFFFFFFE0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/arena.cc", 149);
    v10 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: (n) <= (std::numeric_limits<size_t>::max() - kHeaderSize): ");
    google::protobuf::internal::LogFinisher::operator=(&v15, v10, v11);
    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
  }

  v12 = a4 + 32;
  if (a5 <= a4 + 32)
  {
    v13 = a4 + 32;
  }

  else
  {
    v13 = a5;
  }

  result = (*(a1 + 96))(v13);
  result[2] = v12;
  result[3] = v13;
  *result = a2;
  return result;
}

void sub_2185732C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::Arena::AddBlock(uint64_t a1, void *a2)
{
  google::protobuf::internal::Mutex::Lock((a1 + 48));
  a2[1] = *(a1 + 8);
  atomic_store(a2, (a1 + 8));
  v4 = a2[3];
  if (v4 != a2[2])
  {
    atomic_store(a2, (a1 + 16));
    v4 = a2[3];
  }

  *(a1 + 24) += v4;
  google::protobuf::internal::Mutex::Unlock((a1 + 48));
}

void *google::protobuf::Arena::AddListNode(google::protobuf::Arena *this, void *a2, void (*a3)(void *))
{
  result = google::protobuf::Arena::AllocateAligned(this, 0, 24);
  *result = a2;
  result[1] = a3;
  v7 = (this + 32);
  do
  {
    v8 = __ldxr(v7);
  }

  while (__stxr(result, v7));
  result[2] = v8;
  return result;
}

void *google::protobuf::Arena::AllocateAligned(google::protobuf::Arena *this, const std::type_info *a2, uint64_t a3)
{
  v3 = this;
  v4 = (a3 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(this + 7))
  {
    v11 = *(this + 17);
    if (v11)
    {
      this = v11(a2, v4);
    }
  }

  v5 = google::protobuf::Arena::thread_cache(this);
  if (*v5 == *v3 && (v5 = google::protobuf::Arena::thread_cache(v5), *(v5 + 1)))
  {
    v6 = google::protobuf::Arena::thread_cache(v5);
    if (*(*(v6 + 1) + 24) - *(*(v6 + 1) + 16) >= v4)
    {
      v7 = *(google::protobuf::Arena::thread_cache(v6) + 1);
      v8 = v7[2];
LABEL_12:
      v7[2] = &v8[v4];
      return &v8[v7];
    }
  }

  else
  {
    v9 = google::protobuf::Arena::thread_cache(v5);
    v7 = atomic_load(v3 + 2);
    if (v7)
    {
      if (*v7 == v9)
      {
        v8 = v7[2];
        if (v7[3] - v8 >= v4)
        {
          goto LABEL_12;
        }
      }
    }
  }

  return google::protobuf::Arena::SlowAlloc(v3, v4);
}

void *google::protobuf::Arena::SlowAlloc(google::protobuf::Arena *this, unint64_t a2)
{
  v4 = google::protobuf::Arena::thread_cache(this);
  v5 = atomic_load(this + 1);
  if (!v5)
  {
    goto LABEL_6;
  }

  while (*v5 != v4)
  {
    v5 = v5[1];
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  if (v5[3] - v5[2] >= a2)
  {
    v11 = google::protobuf::Arena::thread_cache(v4);
    *(v11 + 1) = v5;
    v12 = *this;
    *google::protobuf::Arena::thread_cache(v11) = v12;
    *(this + 2) = v5;
    v13 = v5[2];
    v5[2] = (v13 + a2);
    return (v13 + v5);
  }

  else
  {
LABEL_6:
    v6 = google::protobuf::Arena::NewBlock(this, v4, v5, a2, *(this + 8), *(this + 9));
    google::protobuf::Arena::AddBlock(this, v6);
    v8 = google::protobuf::Arena::thread_cache(v7);
    *(v8 + 1) = v6;
    v9 = *this;
    *google::protobuf::Arena::thread_cache(v8) = v9;
    return v6 + 4;
  }
}

uint64_t google::protobuf::Arena::AllocFromBlock(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = v2 + a2;
  return a1 + v2;
}

unint64_t google::protobuf::Arena::FindBlock(google::protobuf::Arena *this, void *a2)
{
  for (result = atomic_load(this + 1); result; result = *(result + 8))
  {
    if (*result == a2)
    {
      break;
    }
  }

  return result;
}

pthread_mutex_t *google::protobuf::Arena::SpaceAllocated(pthread_mutex_t **this)
{
  google::protobuf::internal::Mutex::Lock(this + 6);
  v2 = this[3];
  google::protobuf::internal::Mutex::Unlock(this + 6);
  return v2;
}

uint64_t google::protobuf::Arena::SpaceUsed(google::protobuf::Arena *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  do
  {
    v3 = v1 + 8;
    v1 = *(v1 + 8);
    result = result + *(v3 + 8) - 32;
  }

  while (v1);
  return result;
}

pthread_mutex_t *google::protobuf::Arena::SpaceAllocatedAndUsed(pthread_mutex_t **this)
{
  v2 = google::protobuf::Arena::SpaceAllocated(this);
  google::protobuf::Arena::SpaceUsed(this);
  return v2;
}

uint64_t google::protobuf::internal::ThreadLocalStorage<google::protobuf::Arena::ThreadCache>::Delete(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x21CEAFEA0);
  }

  return result;
}

void google::protobuf::internal::DeleteEmptyString(google::protobuf::internal *this)
{
  if (byte_27CC06D38 == 1)
  {
    byte_27CC06D38 = 0;
    if (byte_27CC06D37 < 0)
    {
      operator delete(google::protobuf::internal::fixed_address_empty_string);
    }
  }
}

void google::protobuf::internal::InitEmptyString(google::protobuf::internal *this, void (*a2)(void), google::protobuf::Closure *a3)
{
  google::protobuf::internal::fixed_address_empty_string = 0uLL;
  unk_27CC06D30 = 0;
  byte_27CC06D38 = 1;
  google::protobuf::internal::OnShutdown(google::protobuf::internal::DeleteEmptyString, a2, a3);
}

uint64_t google::protobuf::internal::StringSpaceUsedExcludingSelfLong(unint64_t a1)
{
  if (*(a1 + 23) < 0 && (*a1 >= a1 ? (v1 = *a1 >= a1 + 24) : (v1 = 1), v1))
  {
    return (*(a1 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    return 0;
  }
}

void google::protobuf::internal::InitProtobufDefaults(google::protobuf::internal *this, uint64_t a2, google::protobuf::Closure *a3)
{
  v3 = atomic_load(&google::protobuf::internal::empty_string_once_init_);
  if (v3 != 2)
  {
    v4[0] = &unk_282A01648;
    v4[1] = google::protobuf::internal::InitEmptyString;
    v5 = 0;
    google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::empty_string_once_init_, v4, a3);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v4);
  }
}

void sub_218573774(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void google::protobuf::io::CodedInputStream::~CodedInputStream(google::protobuf::io::CodedInputStream *this)
{
  if (*(this + 2))
  {
    google::protobuf::io::CodedInputStream::BackUpInputToCurrentPosition(this);
  }
}

uint64_t google::protobuf::io::CodedInputStream::BackUpInputToCurrentPosition(uint64_t this)
{
  if (*(this + 28) + *(this + 44) + *(this + 8) - *this >= 1)
  {
    v1 = this;
    this = (*(**(this + 16) + 24))(*(this + 16));
    v2 = *(v1 + 24) - *(v1 + 44) + *v1 - *(v1 + 8);
    *(v1 + 8) = *v1;
    *(v1 + 44) = 0;
    *(v1 + 24) = v2;
  }

  return this;
}

uint64_t google::protobuf::io::CodedOutputStream::EnableAliasing(google::protobuf::io::CodedOutputStream *this, int a2)
{
  if (a2)
  {
    result = (*(**this + 48))();
  }

  else
  {
    result = 0;
  }

  *(this + 25) = result;
  return result;
}

uint64_t google::protobuf::io::CodedInputStream::PopLimit(uint64_t this, int a2)
{
  *(this + 40) = a2;
  v2 = *(this + 48);
  v3 = *(this + 8) + *(this + 44);
  *(this + 8) = v3;
  if (v2 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = v2;
  }

  v5 = *(this + 24);
  v6 = __OFSUB__(v5, v4);
  v7 = v5 - v4;
  if ((v7 < 0) ^ v6 | (v7 == 0))
  {
    v7 = 0;
  }

  else
  {
    *(this + 8) = v3 - v7;
  }

  *(this + 44) = v7;
  *(this + 36) = 0;
  return this;
}

uint64_t google::protobuf::io::CodedInputStream::DecrementRecursionDepthAndPopLimit(google::protobuf::io::CodedInputStream *this, int a2)
{
  result = *(this + 36);
  *(this + 10) = a2;
  v4 = *(this + 12);
  v5 = *(this + 1) + *(this + 11);
  *(this + 1) = v5;
  if (v4 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v4;
  }

  v7 = *(this + 6);
  v8 = __OFSUB__(v7, v6);
  v9 = v7 - v6;
  if ((v9 < 0) ^ v8 | (v9 == 0))
  {
    v9 = 0;
  }

  else
  {
    *(this + 1) = v5 - v9;
  }

  *(this + 11) = v9;
  *(this + 36) = 0;
  ++*(this + 13);
  return result;
}

uint64_t google::protobuf::io::CodedInputStream::CheckEntireMessageConsumedAndPopLimit(google::protobuf::io::CodedInputStream *this, int a2)
{
  result = *(this + 36);
  *(this + 10) = a2;
  v4 = *(this + 12);
  v5 = *(this + 1) + *(this + 11);
  *(this + 1) = v5;
  if (v4 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v4;
  }

  v7 = *(this + 6);
  v8 = __OFSUB__(v7, v6);
  v9 = v7 - v6;
  if ((v9 < 0) ^ v8 | (v9 == 0))
  {
    v9 = 0;
  }

  else
  {
    *(this + 1) = v5 - v9;
  }

  *(this + 11) = v9;
  *(this + 36) = 0;
  return result;
}

uint64_t google::protobuf::io::CodedInputStream::BytesUntilLimit(google::protobuf::io::CodedInputStream *this)
{
  v1 = *(this + 10);
  if (v1 == 0x7FFFFFFF)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (v1 - *(this + 6) + *(this + 11) + *(this + 2) - *this);
  }
}

uint64_t google::protobuf::io::CodedInputStream::SetTotalBytesLimit(uint64_t this, int a2)
{
  v2 = *(this + 24);
  v3 = *(this + 8);
  v4 = *(this + 40);
  v5 = *(this + 44);
  v6 = v2 - v5 + *this - v3;
  if (v6 <= a2)
  {
    v6 = a2;
  }

  *(this + 48) = v6;
  v7 = v3 + v5;
  *(this + 8) = v7;
  if (v6 >= v4)
  {
    v6 = v4;
  }

  v8 = __OFSUB__(v2, v6);
  v9 = v2 - v6;
  if ((v9 < 0) ^ v8 | (v9 == 0))
  {
    v9 = 0;
  }

  else
  {
    *(this + 8) = v7 - v9;
  }

  *(this + 44) = v9;
  return this;
}

uint64_t google::protobuf::io::CodedInputStream::BytesUntilTotalBytesLimit(google::protobuf::io::CodedInputStream *this)
{
  v1 = *(this + 12);
  if (v1 == 0x7FFFFFFF)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (v1 - *(this + 6) + *(this + 11) + *(this + 2) - *this);
  }
}

void google::protobuf::io::CodedInputStream::PrintTotalBytesLimitError(google::protobuf::io::CodedInputStream *this)
{
  google::protobuf::internal::LogMessage::LogMessage(v7, 2, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/io/coded_stream.cc", 193);
  v2 = google::protobuf::internal::LogMessage::operator<<(v7, "A protocol message was rejected because it was too big (more than ");
  v3 = google::protobuf::internal::LogMessage::operator<<(v2, *(this + 12));
  v4 = google::protobuf::internal::LogMessage::operator<<(v3, " bytes).  To increase the limit (or to disable these warnings), see CodedInputStream::SetTotalBytesLimit() in google/protobuf/io/coded_stream.h.");
  google::protobuf::internal::LogFinisher::operator=(&v6, v4, v5);
  google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
}

void sub_218573AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::CodedInputStream::Skip(google::protobuf::io::CodedInputStream *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = *this;
  v5 = *(this + 1) - *this;
  v6 = __OFSUB__(a2, v5);
  v7 = a2 - v5;
  if ((v7 < 0) ^ v6 | (v7 == 0))
  {
    *this = v4 + a2;
    return 1;
  }

  if (*(this + 11) >= 1)
  {
    v8 = 0;
    *this = v4 + v5;
    return v8;
  }

  *this = 0;
  *(this + 1) = 0;
  v9 = *(this + 10);
  if (*(this + 12) < v9)
  {
    v9 = *(this + 12);
  }

  v10 = *(this + 6);
  v11 = (v9 - v10);
  if (v11 < v7)
  {
    if (v11 >= 1)
    {
      *(this + 6) = v9;
      (*(**(this + 2) + 32))(*(this + 2), v11);
      return 0;
    }

    return 0;
  }

  *(this + 6) = v10 + v7;
  v13 = *(**(this + 2) + 32);

  return v13();
}

uint64_t google::protobuf::io::CodedInputStream::GetDirectBufferPointer(google::protobuf::io::CodedInputStream *this, const void **a2, int *a3)
{
  v6 = *this;
  if (*(this + 2) == *this)
  {
    result = google::protobuf::io::CodedInputStream::Refresh(this);
    if (!result)
    {
      return result;
    }

    v6 = *this;
  }

  *a2 = v6;
  *a3 = *(this + 2) - *this;
  return 1;
}

uint64_t google::protobuf::io::CodedInputStream::Refresh(google::protobuf::io::CodedInputStream *this)
{
  v2 = *(this + 11);
  if (v2 > 0 || *(this + 7) > 0 || *(this + 6) == *(this + 10))
  {
    v3 = *(this + 6) - v2;
    v4 = *(this + 12);
    if (v3 >= v4 && v4 != *(this + 10))
    {
      google::protobuf::io::CodedInputStream::PrintTotalBytesLimitError(this);
    }

    return 0;
  }

  else
  {
    v24 = 0;
    v23 = 0;
    v7 = *(this + 2);
    do
    {
      v5 = (*(*v7 + 16))(v7, &v24, &v23);
      if (!v5)
      {
        *this = 0;
        *(this + 1) = 0;
        return v5;
      }

      v8 = v23;
    }

    while (!v23);
    v9 = v24 + v23;
    *this = v24;
    *(this + 1) = v9;
    if (v8 < 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v22, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/io/coded_stream.cc", 599);
      v10 = google::protobuf::internal::LogMessage::operator<<(v22, "CHECK failed: (buffer_size) >= (0): ");
      google::protobuf::internal::LogFinisher::operator=(&v21, v10, v11);
      google::protobuf::internal::LogMessage::~LogMessage(&v22[0].__r_.__value_.__l.__data_);
      v8 = v23;
    }

    v12 = *(this + 6);
    v13 = v12 - (v8 ^ 0x7FFFFFFF);
    if (v12 <= (v8 ^ 0x7FFFFFFF))
    {
      v15 = v8 + v12;
      v14 = *(this + 1);
    }

    else
    {
      *(this + 7) = v13;
      v14 = *(this + 1) - v13;
      *(this + 1) = v14;
      v15 = 0x7FFFFFFF;
    }

    *(this + 6) = v15;
    v16 = *(this + 10);
    v17 = v14 + *(this + 11);
    *(this + 1) = v17;
    v18 = *(this + 12);
    if (v18 >= v16)
    {
      v18 = v16;
    }

    v19 = __OFSUB__(v15, v18);
    v20 = v15 - v18;
    if ((v20 < 0) ^ v19 | (v20 == 0))
    {
      v20 = 0;
    }

    else
    {
      *(this + 1) = v17 - v20;
    }

    *(this + 11) = v20;
  }

  return v5;
}

void sub_218573E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::io::CodedInputStream::ReadRaw(google::protobuf::io::CodedInputStream *this, char *__dst, int a3)
{
  while (1)
  {
    v6 = a3;
    v7 = *this;
    v8 = *(this + 1) - *this;
    v9 = __OFSUB__(a3, v8);
    a3 -= v8;
    if ((a3 < 0) ^ v9 | (a3 == 0))
    {
      break;
    }

    memcpy(__dst, v7, v8);
    __dst += v8;
    *this += v8;
    if ((google::protobuf::io::CodedInputStream::Refresh(this) & 1) == 0)
    {
      return v6 <= v8;
    }
  }

  memcpy(__dst, v7, v6);
  *this += v6;
  return v6 <= v8;
}

BOOL google::protobuf::io::CodedInputStream::ReadString(uint64_t a1, std::string *this, std::string::size_type __n)
{
  if ((__n & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = this;
  if (*(a1 + 8) - *a1 >= __n)
  {
    v6 = __n;
    std::string::resize(this, __n, 0);
    if (SHIBYTE(v3->__r_.__value_.__r.__words[2]) < 0)
    {
      v3 = v3->__r_.__value_.__r.__words[0];
    }

    memcpy(v3, *a1, v6);
    *a1 += v6;
    return 1;
  }

  else
  {

    return google::protobuf::io::CodedInputStream::ReadStringFallback(a1, this, __n);
  }
}

BOOL google::protobuf::io::CodedInputStream::ReadStringFallback(_DWORD *a1, std::string *this, std::string::size_type __requested_capacity)
{
  v3 = __requested_capacity;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    if (this->__r_.__value_.__l.__size_)
    {
      *this->__r_.__value_.__l.__data_ = 0;
      this->__r_.__value_.__l.__size_ = 0;
    }
  }

  else if (*(&this->__r_.__value_.__s + 23))
  {
    this->__r_.__value_.__s.__data_[0] = 0;
    *(&this->__r_.__value_.__s + 23) = 0;
  }

  v6 = a1[12];
  if (v6 >= a1[10])
  {
    v6 = a1[10];
  }

  if (v6 != 0x7FFFFFFF)
  {
    v7 = v6 - a1[6] + a1[11] + a1[2] - *a1;
    v8 = v7 < __requested_capacity || __requested_capacity < 1;
    if (!v8 && v7 >= 1)
    {
      std::string::reserve(this, __requested_capacity);
    }
  }

  while (1)
  {
    v10 = v3;
    v11 = *a1;
    v12 = *(a1 + 1) - *a1;
    v13 = __OFSUB__(v3, v12);
    v3 -= v12;
    if ((v3 < 0) ^ v13 | (v3 == 0))
    {
      break;
    }

    if (v12)
    {
      v14 = v12;
      std::string::append(this, v11, v12);
      v11 = *a1;
    }

    else
    {
      v14 = 0;
    }

    *a1 = &v11[v14];
    if ((google::protobuf::io::CodedInputStream::Refresh(a1) & 1) == 0)
    {
      return v10 <= v12;
    }
  }

  std::string::append(this, v11, v10);
  *a1 += v10;
  return v10 <= v12;
}

BOOL google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(unsigned int **this, unsigned int *a2)
{
  v3 = *this;
  if (((*(this + 2) - *this) & 0xFFFFFFFC) != 0)
  {
    *this = v3 + 1;
  }

  else
  {
    v3 = __dst;
    result = google::protobuf::io::CodedInputStream::ReadRaw(this, __dst, 4);
    if (!result)
    {
      return result;
    }
  }

  *a2 = *v3;
  return 1;
}

BOOL google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(unint64_t **this, unint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *this;
  if (((*(this + 2) - *this) & 0xFFFFFFF8) != 0)
  {
    *this = v3 + 1;
  }

  else
  {
    v3 = v5;
    result = google::protobuf::io::CodedInputStream::ReadRaw(this, v5, 8);
    if (!result)
    {
      return result;
    }
  }

  *a2 = *v3;
  return 1;
}

unint64_t google::protobuf::io::CodedInputStream::ReadVarint64Fallback(google::protobuf::io::CodedInputStream *this)
{
  v4 = *this;
  v3 = *(this + 1);
  if ((v3 - *this) <= 9 && (v3 <= v4 || *(v3 - 1) < 0))
  {
    v11[1] = v1;
    v11[2] = v2;
    v11[0] = 0;
    google::protobuf::io::CodedInputStream::ReadVarint64Slow(this, v11);
    return v11[0];
  }

  else
  {
    v5 = (v4 + 1);
    v6 = *v4;
    if (*v4 < 0)
    {
      v6 = v6 + (v4[1] << 7) - 128;
      if (v4[1] < 0)
      {
        v6 = v6 + (v4[2] << 14) - 0x4000;
        if (v4[2] < 0)
        {
          v6 = v6 + (v4[3] << 21) - 0x200000;
          if (v4[3] < 0)
          {
            v6 -= 0x10000000;
            v7 = v4[4];
            if (v4[4] < 0)
            {
              v7 = v7 + (v4[5] << 7) - 128;
              if (v4[5] < 0)
              {
                v7 = v7 + (v4[6] << 14) - 0x4000;
                if (v4[6] < 0)
                {
                  v7 = v7 + (v4[7] << 21) - 0x200000;
                  if (v4[7] < 0)
                  {
                    v7 -= 0x10000000;
                    v8 = v4[8];
                    if (v4[8] < 0)
                    {
                      if (v4[9] < 0)
                      {
                        return 0;
                      }

                      v5 = (v4 + 10);
                      v8 = v8 + (v4[9] << 7) - 128;
                    }

                    else
                    {
                      v5 = (v4 + 9);
                    }
                  }

                  else
                  {
                    v8 = 0;
                    v5 = (v4 + 8);
                  }
                }

                else
                {
                  v8 = 0;
                  v5 = (v4 + 7);
                }
              }

              else
              {
                v8 = 0;
                v5 = (v4 + 6);
              }
            }

            else
            {
              v8 = 0;
              v5 = (v4 + 5);
            }
          }

          else
          {
            v7 = 0;
            v8 = 0;
            v5 = (v4 + 4);
          }
        }

        else
        {
          v7 = 0;
          v8 = 0;
          v5 = (v4 + 3);
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v5 = (v4 + 2);
      }
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    v9 = v6 | (v7 << 28) | (v8 << 56);
    *this = v5;
  }

  return v9;
}

uint64_t google::protobuf::io::CodedInputStream::ReadVarint32Fallback(google::protobuf::io::CodedInputStream *this, int a2)
{
  v2 = *this;
  v3 = *(this + 1);
  if ((v3 - *this) <= 9 && (v3 <= v2 || *(v3 - 1) < 0))
  {
    Varint64Fallback = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
    if ((v7 & 1) == 0)
    {
      return -1;
    }
  }

  else
  {
    v4 = a2 + (*(v2 + 1) << 7) - 128;
    if (*(v2 + 1) < 0)
    {
      v4 = v4 + (*(v2 + 2) << 14) - 0x4000;
      if (*(v2 + 2) < 0)
      {
        v4 = v4 + (*(v2 + 3) << 21) - 0x200000;
        if (*(v2 + 3) < 0)
        {
          v8 = *(v2 + 4);
          v4 = v4 + (v8 << 28) - 0x10000000;
          if (v8 < 0)
          {
            v5 = v2 + 6;
            v10 = 5;
            while (*(v5 - 1) < 0)
            {
              ++v5;
              Varint64Fallback = -1;
              if (!--v10)
              {
                return Varint64Fallback;
              }
            }
          }

          else
          {
            v5 = v2 + 5;
          }
        }

        else
        {
          v5 = v2 + 4;
        }
      }

      else
      {
        v5 = v2 + 3;
      }
    }

    else
    {
      v5 = v2 + 2;
    }

    Varint64Fallback = v4;
    *this = v5;
  }

  return Varint64Fallback;
}

unint64_t google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntSlow(google::protobuf::io::CodedInputStream *this)
{
  result = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
  if ((v2 & (result >> 31 == 0)) != 0)
  {
    return result;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

unint64_t google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(google::protobuf::io::CodedInputStream *this)
{
  v2 = *this;
  v1 = *(this + 1);
  if ((v1 - *this) > 9 || v1 > v2 && (*(v1 - 1) & 0x80000000) == 0)
  {
    v3 = (v2 + 1);
    v4 = *v2;
    if (*v2 < 0)
    {
      v4 = v4 + (v2[1] << 7) - 128;
      if (v2[1] < 0)
      {
        v4 = v4 + (v2[2] << 14) - 0x4000;
        if (v2[2] < 0)
        {
          v4 = v4 + (v2[3] << 21) - 0x200000;
          if (v2[3] < 0)
          {
            v4 -= 0x10000000;
            v5 = v2[4];
            if (v2[4] < 0)
            {
              v5 = v5 + (v2[5] << 7) - 128;
              if (v2[5] < 0)
              {
                v5 = v5 + (v2[6] << 14) - 0x4000;
                if (v2[6] < 0)
                {
                  v5 = v5 + (v2[7] << 21) - 0x200000;
                  if (v2[7] < 0)
                  {
                    v5 -= 0x10000000;
                    v6 = v2[8];
                    if (v2[8] < 0)
                    {
                      if (v2[9] < 0)
                      {
                        return 0xFFFFFFFFLL;
                      }

                      v3 = (v2 + 10);
                      v6 = v6 + (v2[9] << 7) - 128;
                    }

                    else
                    {
                      v3 = (v2 + 9);
                    }
                  }

                  else
                  {
                    v6 = 0;
                    v3 = (v2 + 8);
                  }
                }

                else
                {
                  v6 = 0;
                  v3 = (v2 + 7);
                }
              }

              else
              {
                v6 = 0;
                v3 = (v2 + 6);
              }
            }

            else
            {
              v6 = 0;
              v3 = (v2 + 5);
            }
          }

          else
          {
            v5 = 0;
            v6 = 0;
            v3 = (v2 + 4);
          }
        }

        else
        {
          v5 = 0;
          v6 = 0;
          v3 = (v2 + 3);
        }
      }

      else
      {
        v5 = 0;
        v6 = 0;
        v3 = (v2 + 2);
      }
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    v9 = v4 | (v5 << 28);
    if (!((v9 | (v6 << 56)) >> 31))
    {
      *this = v3;
      return v9;
    }

    return 0xFFFFFFFFLL;
  }

  Varint64Fallback = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
  if ((v8 & (Varint64Fallback >> 31 == 0)) != 0)
  {
    return Varint64Fallback;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

unint64_t google::protobuf::io::CodedInputStream::ReadTagSlow(google::protobuf::io::CodedInputStream *this)
{
  v2 = *this;
  v3 = *(this + 1);
  if (*this != v3)
  {
LABEL_4:
    if (v2 >= v3 || (result = *v2, (result & 0x80000000) != 0))
    {
      result = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      *this = v2 + 1;
    }

    return result;
  }

  if (google::protobuf::io::CodedInputStream::Refresh(this))
  {
    v2 = *this;
    v3 = *(this + 1);
    goto LABEL_4;
  }

  v6 = *(this + 12);
  result = 0;
  v7 = *(this + 6) - *(this + 11) < v6 || *(this + 10) == v6;
  *(this + 36) = v7;
  return result;
}

unint64_t google::protobuf::io::CodedInputStream::ReadTagFallback(google::protobuf::io::CodedInputStream *this, uint64_t a2)
{
  v3 = *this;
  v2 = *(this + 1);
  v4 = v2 - *this;
  if (v4 > 9)
  {
LABEL_4:
    if (a2)
    {
      v5 = a2 + (*(v3 + 1) << 7) - 128;
      if (*(v3 + 1) < 0)
      {
        v5 = v5 + (*(v3 + 2) << 14) - 0x4000;
        if (*(v3 + 2) < 0)
        {
          v5 = v5 + (*(v3 + 3) << 21) - 0x200000;
          if (*(v3 + 3) < 0)
          {
            v10 = *(v3 + 4);
            v5 = (v5 + (v10 << 28) - 0x10000000);
            if (v10 < 0)
            {
              v6 = v3 + 6;
              v11 = 5;
              a2 = 0;
              while (*(v6 - 1) < 0)
              {
                ++v6;
                if (!--v11)
                {
                  return a2;
                }
              }
            }

            else
            {
              v6 = v3 + 5;
            }
          }

          else
          {
            v6 = v3 + 4;
          }
        }

        else
        {
          v6 = v3 + 3;
        }
      }

      else
      {
        v6 = v3 + 2;
      }

      *this = v6;
      return v5;
    }

    else
    {
      *this = v3 + 1;
    }

    return a2;
  }

  if (v4 >= 1)
  {
    if ((*(v2 - 1) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    return google::protobuf::io::CodedInputStream::ReadTagSlow(this);
  }

  if (v4)
  {
    return google::protobuf::io::CodedInputStream::ReadTagSlow(this);
  }

  v8 = *(this + 11);
  v9 = *(this + 6);
  if (v8 <= 0 && v9 != *(this + 10))
  {
    return google::protobuf::io::CodedInputStream::ReadTagSlow(this);
  }

  if (v9 - v8 >= *(this + 12))
  {
    return google::protobuf::io::CodedInputStream::ReadTagSlow(this);
  }

  a2 = 0;
  *(this + 36) = 1;
  return a2;
}

BOOL google::protobuf::io::CodedInputStream::ReadVarint64Slow(char **this, unint64_t *a2)
{
  v4 = 0;
  v5 = 0;
  while (1)
  {
    v6 = v4 != 10;
    if (v4 == 10)
    {
      break;
    }

    while (1)
    {
      v7 = *this;
      if (*this != this[1])
      {
        break;
      }

      if ((google::protobuf::io::CodedInputStream::Refresh(this) & 1) == 0)
      {
        v5 = 0;
        v6 = 0;
        goto LABEL_7;
      }
    }

    v8 = *v7;
    v5 |= (*v7 & 0x7F) << (7 * v4);
    *this = v7 + 1;
    ++v4;
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_7;
    }
  }

  v5 = 0;
LABEL_7:
  *a2 = v5;
  return v6;
}

google::protobuf::io::CodedOutputStream *google::protobuf::io::CodedOutputStream::CodedOutputStream(google::protobuf::io::CodedOutputStream *this, google::protobuf::io::ZeroCopyOutputStream *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = a2;
  *(this + 23) = 0;
  google::protobuf::io::CodedOutputStream::Refresh(this);
  *(this + 24) = 0;
  return this;
}

uint64_t google::protobuf::io::CodedOutputStream::Refresh(google::protobuf::io::CodedOutputStream *this)
{
  v4 = 0;
  result = (*(**this + 16))(*this, &v4, this + 16);
  if (result)
  {
    v3 = v4;
    *(this + 5) += *(this + 4);
  }

  else
  {
    v3 = 0;
    *(this + 4) = 0;
    *(this + 24) = 1;
  }

  *(this + 1) = v3;
  return result;
}

google::protobuf::io::CodedOutputStream *google::protobuf::io::CodedOutputStream::CodedOutputStream(google::protobuf::io::CodedOutputStream *this, google::protobuf::io::ZeroCopyOutputStream *a2, int a3)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = a2;
  *(this + 23) = 0;
  if (a3)
  {
    google::protobuf::io::CodedOutputStream::Refresh(this);
    *(this + 24) = 0;
  }

  return this;
}

void google::protobuf::io::CodedOutputStream::~CodedOutputStream(google::protobuf::io::CodedOutputStream *this)
{
  google::protobuf::io::CodedOutputStream::Trim(this);
}

{
  google::protobuf::io::CodedOutputStream::Trim(this);
}

int *google::protobuf::io::CodedOutputStream::Trim(int *this)
{
  if (this[4] >= 1)
  {
    v1 = this;
    this = (*(**this + 24))(*this);
    v2 = v1[5] - v1[4];
    v1[4] = 0;
    v1[5] = v2;
    *(v1 + 1) = 0;
  }

  return this;
}

uint64_t google::protobuf::io::CodedOutputStream::Skip(google::protobuf::io::CodedOutputStream *this, int a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  while (1)
  {
    v3 = *(this + 4);
    v4 = a2 - v3;
    if (a2 <= v3)
    {
      break;
    }

    v5 = google::protobuf::io::CodedOutputStream::Refresh(this);
    a2 = v4;
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  *(this + 1) += a2;
  *(this + 4) = v3 - a2;
  return 1;
}

uint64_t google::protobuf::io::CodedOutputStream::GetDirectBufferPointer(google::protobuf::io::CodedOutputStream *this, void **a2, int *a3)
{
  v6 = *(this + 4);
  if (!v6)
  {
    result = google::protobuf::io::CodedOutputStream::Refresh(this);
    if (!result)
    {
      return result;
    }

    v6 = *(this + 4);
  }

  *a2 = *(this + 1);
  *a3 = v6;
  return 1;
}

uint64_t google::protobuf::io::CodedOutputStream::WriteRaw(google::protobuf::io::CodedOutputStream *this, char *__src, int a3)
{
  while (1)
  {
    v6 = *(this + 4);
    v7 = *(this + 1);
    if (v6 >= a3)
    {
      break;
    }

    memcpy(v7, __src, v6);
    v8 = *(this + 4);
    a3 -= v8;
    __src += v8;
    result = google::protobuf::io::CodedOutputStream::Refresh(this);
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  result = memcpy(v7, __src, a3);
  *(this + 1) += a3;
  *(this + 4) -= a3;
  return result;
}

uint64_t google::protobuf::io::CodedOutputStream::WriteRawToArray(google::protobuf::io::CodedOutputStream *this, const void *a2, void *__dst, unsigned __int8 *a4)
{
  v5 = a2;
  memcpy(__dst, this, a2);
  return __dst + v5;
}

uint64_t google::protobuf::io::CodedOutputStream::WriteAliasedRaw(google::protobuf::io::CodedOutputStream *this, char *__src, uint64_t a3)
{
  if (*(this + 4) <= a3)
  {
    google::protobuf::io::CodedOutputStream::Trim(this);
    *(this + 5) += a3;
    result = (*(**this + 40))(*this, __src, a3);
    *(this + 24) |= result ^ 1;
  }

  else
  {

    return google::protobuf::io::CodedOutputStream::WriteRaw(this, __src, a3);
  }

  return result;
}

uint64_t google::protobuf::io::CodedOutputStream::WriteLittleEndian32(uint64_t this, int a2)
{
  if (*(this + 16) < 4u)
  {
    v5 = v2;
    v6 = v3;
    v4 = a2;
    return google::protobuf::io::CodedOutputStream::WriteRaw(this, &v4, 4);
  }

  else
  {
    **(this + 8) = a2;
    *(this + 8) += 4;
    *(this + 16) -= 4;
  }

  return this;
}

uint64_t google::protobuf::io::CodedOutputStream::WriteLittleEndian64(uint64_t this, uint64_t a2)
{
  v2[1] = *MEMORY[0x277D85DE8];
  if (*(this + 16) < 8u)
  {
    v2[0] = a2;
    return google::protobuf::io::CodedOutputStream::WriteRaw(this, v2, 8);
  }

  else
  {
    **(this + 8) = a2;
    *(this + 8) += 8;
    *(this + 16) -= 8;
  }

  return this;
}

uint64_t google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(google::protobuf::io::CodedOutputStream *this, unsigned int a2)
{
  v2 = __src;
  if (a2 >= 0x80)
  {
    v3 = a2;
    do
    {
      *v2++ = v3 | 0x80;
      a2 = v3 >> 7;
      v4 = v3 >> 14;
      v3 >>= 7;
    }

    while (v4);
  }

  *v2 = a2;
  return google::protobuf::io::CodedOutputStream::WriteRaw(this, __src, v2 - (&vars0 - 5) + 1);
}

uint64_t google::protobuf::io::CodedOutputStream::WriteVarint64SlowPath(google::protobuf::io::CodedOutputStream *this, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = __src;
  if (a2 >= 0x80)
  {
    v3 = a2;
    do
    {
      *v2++ = v3 | 0x80;
      a2 = v3 >> 7;
      v4 = v3 >> 14;
      v3 >>= 7;
    }

    while (v4);
  }

  *v2 = a2;
  return google::protobuf::io::CodedOutputStream::WriteRaw(this, __src, v2 - __src + 1);
}

char *google::protobuf::io::CodedOutputStream::WriteStringWithSizeToArray(const void **a1, _BYTE *a2)
{
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 2);
  }

  if (v3 < 0x80)
  {
    LOBYTE(v4) = v3;
  }

  else
  {
    do
    {
      *a2++ = v3 | 0x80;
      v4 = v3 >> 7;
      v5 = v3 >> 14;
      v3 >>= 7;
    }

    while (v5);
  }

  *a2 = v4;
  v6 = a2 + 1;
  v7 = *(a1 + 23);
  if (v7 >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  if (v7 >= 0)
  {
    LODWORD(v9) = *(a1 + 23);
  }

  else
  {
    v9 = a1[1];
  }

  memcpy(v6, v8, v9);
  return &v6[v9];
}

uint64_t google::protobuf::io::ZeroCopyOutputStream::WriteAliasedRaw(google::protobuf::io::ZeroCopyOutputStream *this, const void *a2)
{
  google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/io/zero_copy_stream.cc", 50);
  v2 = google::protobuf::internal::LogMessage::operator<<(v6, "This ZeroCopyOutputStream doesn't support aliasing. Reaching here usually means a ZeroCopyOutputStream implementation bug.");
  google::protobuf::internal::LogFinisher::operator=(&v5, v2, v3);
  google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
  return 0;
}

void sub_218574F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::ArrayInputStream::ArrayInputStream(uint64_t this, const void *a2, int a3, int a4)
{
  *this = &unk_282A01280;
  *(this + 8) = a2;
  if (a4 <= 0)
  {
    v4 = a3;
  }

  else
  {
    v4 = a4;
  }

  *(this + 16) = a3;
  *(this + 20) = v4;
  *(this + 24) = 0;
  return this;
}

void google::protobuf::io::ArrayInputStream::~ArrayInputStream(google::protobuf::io::ArrayInputStream *this)
{
  UnknownLocationImpl::~UnknownLocationImpl(this);

  JUMPOUT(0x21CEAFEA0);
}

BOOL google::protobuf::io::ArrayInputStream::Next(google::protobuf::io::ArrayInputStream *this, const void **a2, int *a3)
{
  v3 = *(this + 6);
  v4 = *(this + 4);
  if (v3 >= v4)
  {
    *(this + 7) = 0;
  }

  else
  {
    v5 = v4 - v3;
    if (v4 - v3 >= *(this + 5))
    {
      v5 = *(this + 5);
    }

    *(this + 7) = v5;
    *a2 = (*(this + 1) + v3);
    *a3 = v5;
    *(this + 6) += *(this + 7);
  }

  return v3 < v4;
}

void google::protobuf::io::ArrayInputStream::BackUp(google::protobuf::io::ArrayInputStream *this, int a2)
{
  v4 = *(this + 7);
  if (v4 <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", 85);
    v5 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (last_returned_size_) > (0): ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "BackUp() can only be called after a successful Next().");
    google::protobuf::internal::LogFinisher::operator=(&v12, v6, v7);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    v4 = *(this + 7);
  }

  if (v4 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", 87);
    v8 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (count) <= (last_returned_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, v8, v9);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", 88);
    v10 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (count) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, v10, v11);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  *(this + 3) = (*(this + 6) - a2);
}

void sub_21857515C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::io::ArrayInputStream::Skip(google::protobuf::io::ArrayInputStream *this, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", 94);
    v4 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (count) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v11, v4, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

  v6 = *(this + 4);
  v7 = *(this + 6);
  v8 = v6 - v7;
  result = v6 - v7 >= a2;
  v10 = v7 + a2;
  if (v8 >= a2)
  {
    v6 = v10;
  }

  *(this + 6) = v6;
  *(this + 7) = 0;
  return result;
}

void sub_218575210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::ArrayOutputStream::ArrayOutputStream(uint64_t this, void *a2, int a3, int a4)
{
  *this = &unk_282A012C0;
  *(this + 8) = a2;
  if (a4 <= 0)
  {
    v4 = a3;
  }

  else
  {
    v4 = a4;
  }

  *(this + 16) = a3;
  *(this + 20) = v4;
  *(this + 24) = 0;
  return this;
}

void google::protobuf::io::ArrayOutputStream::~ArrayOutputStream(google::protobuf::io::ArrayOutputStream *this)
{
  UnknownLocationImpl::~UnknownLocationImpl(this);

  JUMPOUT(0x21CEAFEA0);
}

BOOL google::protobuf::io::ArrayOutputStream::Next(google::protobuf::io::ArrayOutputStream *this, void **a2, int *a3)
{
  v3 = *(this + 6);
  v4 = *(this + 4);
  if (v3 >= v4)
  {
    *(this + 7) = 0;
  }

  else
  {
    v5 = v4 - v3;
    if (v4 - v3 >= *(this + 5))
    {
      v5 = *(this + 5);
    }

    *(this + 7) = v5;
    *a2 = (*(this + 1) + v3);
    *a3 = v5;
    *(this + 6) += *(this + 7);
  }

  return v3 < v4;
}

void google::protobuf::io::ArrayOutputStream::BackUp(google::protobuf::io::ArrayOutputStream *this, int a2)
{
  v4 = *(this + 7);
  if (v4 <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", 138);
    v5 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (last_returned_size_) > (0): ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "BackUp() can only be called after a successful Next().");
    google::protobuf::internal::LogFinisher::operator=(&v12, v6, v7);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    v4 = *(this + 7);
  }

  if (v4 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", 140);
    v8 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (count) <= (last_returned_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, v8, v9);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", 141);
    v10 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (count) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, v10, v11);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  *(this + 3) = (*(this + 6) - a2);
}

void sub_218575404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::io::StringOutputStream::StringOutputStream(void *result, uint64_t a2)
{
  *result = &unk_282A01308;
  result[1] = a2;
  return result;
}

void google::protobuf::io::StringOutputStream::~StringOutputStream(google::protobuf::io::StringOutputStream *this)
{
  UnknownLocationImpl::~UnknownLocationImpl(this);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t google::protobuf::io::StringOutputStream::Next(google::protobuf::io::StringOutputStream *this, void **a2, int *a3)
{
  v6 = *(this + 1);
  if (!v6)
  {
    google::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", 160);
    v7 = google::protobuf::internal::LogMessage::operator<<(v20, "CHECK failed: target_ != NULL: ");
    google::protobuf::internal::LogFinisher::operator=(&v19, v7, v8);
    google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
    v6 = *(this + 1);
  }

  v9 = *(v6 + 23);
  if (v9 < 0)
  {
    v9 = *(v6 + 8);
    v11 = v9;
    v10 = (*(v6 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v9 < v10)
    {
      goto LABEL_13;
    }

    if (v9 >= 0x40000000)
    {
      google::protobuf::internal::LogMessage::LogMessage(v20, 2, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", 173);
      v12 = google::protobuf::internal::LogMessage::operator<<(v20, "Cannot allocate buffer larger than kint32max for ");
      v13 = google::protobuf::internal::LogMessage::operator<<(v12, "StringOutputStream.");
      google::protobuf::internal::LogFinisher::operator=(&v19, v13, v14);
      google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
      return 0;
    }

LABEL_10:
    if (2 * v9 <= 16)
    {
      v10 = 16;
    }

    else
    {
      v10 = (2 * v9);
    }

    goto LABEL_13;
  }

  if (v9 >= 0x16)
  {
    v11 = *(v6 + 23);
    goto LABEL_10;
  }

  v10 = 22;
  v11 = *(v6 + 23);
LABEL_13:
  std::string::resize(v6, v10, 0);
  v16 = *(this + 1);
  if (*(v16 + 23) < 0)
  {
    v16 = *v16;
  }

  *a2 = v16 + v11;
  v17 = *(this + 1);
  v18 = *(v17 + 23);
  if (v18 < 0)
  {
    v18 = *(v17 + 8);
  }

  *a3 = v18 - v9;
  return 1;
}

void sub_2185755F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::io::StringOutputStream::BackUp(google::protobuf::io::StringOutputStream *this, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", 191);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (count) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v13, v4, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  v6 = *(this + 1);
  if (!v6)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", 192);
    v7 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: target_ != NULL: ");
    google::protobuf::internal::LogFinisher::operator=(&v13, v7, v8);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
    v6 = *(this + 1);
  }

  v9 = *(v6 + 23);
  if (v9 < 0)
  {
    v10 = *(v6 + 8);
  }

  else
  {
    v10 = *(v6 + 23);
  }

  if (v10 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", 193);
    v11 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (count) <= (target_->size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v13, v11, v12);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
    v6 = *(this + 1);
    LOBYTE(v9) = *(v6 + 23);
  }

  if ((v9 & 0x80) != 0)
  {
    v9 = *(v6 + 8);
  }

  else
  {
    v9 = v9;
  }

  std::string::resize(v6, v9 - a2, 0);
}

void sub_21857574C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::StringOutputStream::ByteCount(google::protobuf::io::StringOutputStream *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", 198);
    v3 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: target_ != NULL: ");
    google::protobuf::internal::LogFinisher::operator=(&v6, v3, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
    v1 = *(this + 1);
  }

  result = *(v1 + 23);
  if (result < 0)
  {
    return *(v1 + 8);
  }

  return result;
}

void sub_2185757F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::LazyStringOutputStream::LazyStringOutputStream(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_282A01350;
  *(a1 + 8) = 0;
  *(a1 + 16) = google::protobuf::internal::CheckNotNull<google::protobuf::ResultCallback<std::string *>>("/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", 211, "'callback' must not be NULL", a2);
  *(a1 + 24) = 0;
  return a1;
}

uint64_t google::protobuf::internal::CheckNotNull<google::protobuf::ResultCallback<std::string *>>(uint64_t a1, uint64_t a2, const std::string::value_type *a3, uint64_t a4)
{
  if (!a4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/stubs/logging.h", 166);
    v6 = google::protobuf::internal::LogMessage::operator<<(v10, a3);
    google::protobuf::internal::LogFinisher::operator=(&v9, v6, v7);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  return a4;
}

void sub_2185758F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::io::LazyStringOutputStream::~LazyStringOutputStream(google::protobuf::io::LazyStringOutputStream *this)
{
  *this = &unk_282A01350;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  UnknownLocationImpl::~UnknownLocationImpl(this);
}

{
  google::protobuf::io::LazyStringOutputStream::~LazyStringOutputStream(this);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t google::protobuf::io::LazyStringOutputStream::Next(google::protobuf::io::LazyStringOutputStream *this, void **a2, int *a3)
{
  if ((*(this + 24) & 1) == 0)
  {
    *(this + 1) = (*(**(this + 2) + 16))(*(this + 2));
    *(this + 24) = 1;
  }

  return google::protobuf::io::StringOutputStream::Next(this, a2, a3);
}

uint64_t google::protobuf::io::LazyStringOutputStream::ByteCount(google::protobuf::io::LazyStringOutputStream *this)
{
  if (*(this + 24) == 1)
  {
    return google::protobuf::io::StringOutputStream::ByteCount(this);
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::io::CopyingInputStream::Skip(google::protobuf::io::CopyingInputStream *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v3 = v2;
  v4 = v1;
  v5 = 0;
  v13 = *MEMORY[0x277D85DE8];
  do
  {
    v6 = v5;
    v7 = __OFSUB__(v3, v5);
    v8 = v3 - v5;
    if ((v8 < 0) ^ v7 | (v8 == 0))
    {
      break;
    }

    v9 = v8 >= 4096 ? 4096 : v8;
    v10 = (*(*v4 + 16))(v4, v12, v9);
    v5 = (v10 + v6);
  }

  while (v10 > 0);
  return v6;
}

uint64_t google::protobuf::io::CopyingInputStreamAdaptor::CopyingInputStreamAdaptor(uint64_t this, google::protobuf::io::CopyingInputStream *a2, int a3)
{
  *this = &unk_282A01398;
  *(this + 8) = a2;
  *(this + 16) = 0;
  if (a3 <= 0)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = a3;
  }

  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 44) = 0;
  *(this + 48) = 0;
  *(this + 40) = v3;
  return this;
}

void google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor(google::protobuf::io::CopyingInputStreamAdaptor *this)
{
  *this = &unk_282A01398;
  if (*(this + 16) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  v3 = *(this + 4);
  if (v3)
  {
    MEMORY[0x21CEAFE80](v3, 0x1000C8077774924);
  }

  UnknownLocationImpl::~UnknownLocationImpl(this);
}

{
  google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor(this);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t google::protobuf::io::CopyingInputStreamAdaptor::Next(google::protobuf::io::CopyingInputStreamAdaptor *this, const void **a2, int *a3)
{
  if (*(this + 17))
  {
    return 0;
  }

  google::protobuf::io::CopyingInputStreamAdaptor::AllocateBufferIfNeeded(this);
  v7 = *(this + 12);
  if (v7 >= 1)
  {
    *a2 = (*(this + 4) + *(this + 11) - v7);
    *a3 = v7;
    *(this + 12) = 0;
    return 1;
  }

  v8 = (*(**(this + 1) + 16))(*(this + 1), *(this + 4), *(this + 10));
  *(this + 11) = v8;
  if (v8 > 0)
  {
    v9 = *(this + 4);
    *(this + 3) += v8;
    *a3 = v8;
    *a2 = v9;
    return 1;
  }

  if (v8 < 0)
  {
    *(this + 17) = 1;
  }

  google::protobuf::io::CopyingInputStreamAdaptor::FreeBuffer(this);
  return 0;
}

uint64_t google::protobuf::io::CopyingInputStreamAdaptor::AllocateBufferIfNeeded(uint64_t this)
{
  if (!*(this + 32))
  {
    operator new[]();
  }

  return this;
}

uint64_t google::protobuf::io::CopyingInputStreamAdaptor::FreeBuffer(google::protobuf::io::CopyingInputStreamAdaptor *this)
{
  if (*(this + 12))
  {
    google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", 346);
    v2 = google::protobuf::internal::LogMessage::operator<<(v6, "CHECK failed: (backup_bytes_) == (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v5, v2, v3);
    google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
  }

  *(this + 11) = 0;
  result = *(this + 4);
  if (result)
  {
    result = MEMORY[0x21CEAFE80](result, 0x1000C8077774924);
    *(this + 4) = 0;
  }

  return result;
}

void sub_218575E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::io::CopyingInputStreamAdaptor::BackUp(google::protobuf::io::CopyingInputStreamAdaptor *this, int a2)
{
  if (*(this + 12) || !*(this + 4))
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", 301);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: backup_bytes_ == 0 && buffer_.get() != NULL: ");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, " BackUp() can only be called after Next().");
    google::protobuf::internal::LogFinisher::operator=(&v13, v5, v6);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  if (*(this + 11) < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", 303);
    v7 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (count) <= (buffer_used_): ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, " Can't back up over more bytes than were returned by the last call to Next().");
    google::protobuf::internal::LogFinisher::operator=(&v13, v8, v9);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", 306);
    v10 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (count) >= (0): ");
    v11 = google::protobuf::internal::LogMessage::operator<<(v10, " Parameter to BackUp() can't be negative.");
    google::protobuf::internal::LogFinisher::operator=(&v13, v11, v12);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  *(this + 12) = a2;
}

void sub_218575F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::io::CopyingInputStreamAdaptor::Skip(google::protobuf::io::CopyingInputStreamAdaptor *this, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", 313);
    v4 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (count) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, v4, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  if (*(this + 17))
  {
    return 0;
  }

  v7 = *(this + 12);
  if (v7 >= a2)
  {
    *(this + 12) = v7 - a2;
    return 1;
  }

  else
  {
    v8 = (a2 - v7);
    *(this + 12) = 0;
    v9 = (*(**(this + 1) + 24))(*(this + 1), v8);
    *(this + 3) += v9;
    return v9 == v8;
  }
}

void sub_218576098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::CopyingOutputStreamAdaptor::CopyingOutputStreamAdaptor(uint64_t this, google::protobuf::io::CopyingOutputStream *a2, int a3)
{
  *this = &unk_282A013D8;
  *(this + 8) = a2;
  *(this + 16) = 0;
  if (a3 <= 0)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = a3;
  }

  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = v3;
  *(this + 44) = 0;
  return this;
}

void google::protobuf::io::CopyingOutputStreamAdaptor::~CopyingOutputStreamAdaptor(google::protobuf::io::CopyingOutputStreamAdaptor *this)
{
  *this = &unk_282A013D8;
  google::protobuf::io::CopyingOutputStreamAdaptor::WriteBuffer(this);
  if (*(this + 16) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  v3 = *(this + 4);
  if (v3)
  {
    MEMORY[0x21CEAFE80](v3, 0x1000C8077774924);
  }

  UnknownLocationImpl::~UnknownLocationImpl(this);
}

{
  google::protobuf::io::CopyingOutputStreamAdaptor::~CopyingOutputStreamAdaptor(this);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t google::protobuf::io::CopyingOutputStreamAdaptor::WriteBuffer(google::protobuf::io::CopyingOutputStreamAdaptor *this)
{
  if (*(this + 17))
  {
    return 0;
  }

  if (!*(this + 11))
  {
    return 1;
  }

  if ((*(**(this + 1) + 16))(*(this + 1), *(this + 4)))
  {
    *(this + 3) += *(this + 11);
    *(this + 11) = 0;
    return 1;
  }

  *(this + 17) = 1;
  *(this + 11) = 0;
  result = *(this + 4);
  if (result)
  {
    MEMORY[0x21CEAFE80](result, 0x1000C8077774924);
    result = 0;
    *(this + 4) = 0;
  }

  return result;
}

uint64_t google::protobuf::io::CopyingOutputStreamAdaptor::Next(google::protobuf::io::CopyingOutputStreamAdaptor *this, void **a2, int *a3)
{
  if (*(this + 11) != *(this + 10) || (result = google::protobuf::io::CopyingOutputStreamAdaptor::WriteBuffer(this), result))
  {
    google::protobuf::io::CopyingInputStreamAdaptor::AllocateBufferIfNeeded(this);
    v7 = *(this + 10);
    v8 = *(this + 11);
    *a2 = (*(this + 4) + v8);
    *a3 = v7 - v8;
    *(this + 11) = *(this + 10);
    return 1;
  }

  return result;
}

void google::protobuf::io::CopyingOutputStreamAdaptor::BackUp(google::protobuf::io::CopyingOutputStreamAdaptor *this, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", 390);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (count) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v13, v4, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  v6 = *(this + 11);
  if (v6 != *(this + 10))
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", 391);
    v7 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (buffer_used_) == (buffer_size_): ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, " BackUp() can only be called after Next().");
    google::protobuf::internal::LogFinisher::operator=(&v13, v8, v9);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
    v6 = *(this + 11);
  }

  if (v6 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", 393);
    v10 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (count) <= (buffer_used_): ");
    v11 = google::protobuf::internal::LogMessage::operator<<(v10, " Can't back up over more bytes than were returned by the last call to Next().");
    google::protobuf::internal::LogFinisher::operator=(&v13, v11, v12);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
    v6 = *(this + 11);
  }

  *(this + 11) = v6 - a2;
}

void sub_21857643C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::CopyingOutputStreamAdaptor::FreeBuffer(google::protobuf::io::CopyingOutputStreamAdaptor *this)
{
  *(this + 11) = 0;
  result = *(this + 4);
  if (result)
  {
    result = MEMORY[0x21CEAFE80](result, 0x1000C8077774924);
    *(this + 4) = 0;
  }

  return result;
}

void *google::protobuf::MessageLite::New(google::protobuf::MessageLite *this, google::protobuf::Arena *a2)
{
  v3 = (*(*this + 24))(this);
  if (a2)
  {
    google::protobuf::Arena::Own<google::protobuf::MessageLite>(a2, v3);
  }

  return v3;
}

google::protobuf::Arena *google::protobuf::Arena::Own<google::protobuf::MessageLite>(google::protobuf::Arena *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::Arena::AddListNode(result, a2, google::protobuf::internal::arena_delete_object<google::protobuf::MessageLite>);
  }

  return result;
}

uint64_t google::protobuf::MessageLite::MergeFromCodedStream(google::protobuf::MessageLite *this, google::protobuf::io::CodedInputStream *a2)
{
  result = (*(*this + 88))(this, a2);
  if (result)
  {
    if ((*(*this + 64))(this))
    {
      return 1;
    }

    else
    {
      google::protobuf::internal::LogMessage::LogMessage(v8, 2, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/message_lite.cc", 121);
      v4 = google::protobuf::internal::LogMessage::operator<<(v8, &__p);
      google::protobuf::internal::LogFinisher::operator=(&v6, v4, v5);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
      return 0;
    }
  }

  return result;
}

void sub_218576678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&a16);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::MessageLite::ParseFromCodedStream(google::protobuf::MessageLite *this, google::protobuf::io::CodedInputStream *a2)
{
  (*(*this + 56))(this);
  result = (*(*this + 88))(this, a2);
  if (result)
  {
    if ((*(*this + 64))(this))
    {
      return 1;
    }

    else
    {
      google::protobuf::internal::LogMessage::LogMessage(v9, 2, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/message_lite.cc", 121);
      v5 = google::protobuf::internal::LogMessage::operator<<(v9, &__p);
      google::protobuf::internal::LogFinisher::operator=(&v7, v5, v6);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
      return 0;
    }
  }

  return result;
}

void sub_2185767B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&a16);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::MessageLite::ParsePartialFromCodedStream(google::protobuf::MessageLite *this, google::protobuf::io::CodedInputStream *a2)
{
  (*(*this + 56))(this);
  v4 = *(*this + 88);

  return v4(this, a2);
}

uint64_t google::protobuf::MessageLite::ParseFromZeroCopyStream(google::protobuf::MessageLite *this, google::protobuf::io::ZeroCopyInputStream *a2)
{
  v5[0] = 0;
  v5[1] = 0;
  v5[2] = a2;
  memset(&v5[3], 0, 14);
  v5[5] = 0x7FFFFFFFLL;
  v6 = 0x7FFFFFFF;
  v7 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v8 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v9 = 1;
  v10 = 0;
  v11 = 0;
  google::protobuf::io::CodedInputStream::Refresh(v5);
  LODWORD(this) = google::protobuf::MessageLite::ParseFromCodedStream(this, v5);
  v3 = BYTE4(v5[4]);
  google::protobuf::io::CodedInputStream::~CodedInputStream(v5);
  return this & v3;
}

uint64_t google::protobuf::MessageLite::ParsePartialFromZeroCopyStream(google::protobuf::MessageLite *this, google::protobuf::io::ZeroCopyInputStream *a2)
{
  v5[0] = 0;
  v5[1] = 0;
  v5[2] = a2;
  memset(&v5[3], 0, 14);
  v5[5] = 0x7FFFFFFFLL;
  v6 = 0x7FFFFFFF;
  v7 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v8 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v9 = 1;
  v10 = 0;
  v11 = 0;
  google::protobuf::io::CodedInputStream::Refresh(v5);
  (*(*this + 56))(this);
  LODWORD(this) = (*(*this + 88))(this, v5);
  v3 = BYTE4(v5[4]);
  google::protobuf::io::CodedInputStream::~CodedInputStream(v5);
  return this & v3;
}

BOOL google::protobuf::MessageLite::ParseFromBoundedZeroCopyStream(google::protobuf::MessageLite *this, google::protobuf::io::ZeroCopyInputStream *a2, unsigned int a3)
{
  v7[0] = 0;
  v7[1] = 0;
  v7[2] = a2;
  memset(&v7[3], 0, 14);
  v7[5] = 0x7FFFFFFFLL;
  v8 = 0x7FFFFFFF;
  v9 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v10 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v11 = 1;
  v12 = 0;
  v13 = 0;
  google::protobuf::io::CodedInputStream::Refresh(v7);
  google::protobuf::io::CodedInputStream::PushLimit(v7, a3);
  v5 = google::protobuf::MessageLite::ParseFromCodedStream(this, v7) && BYTE4(v7[4]) == 1 && google::protobuf::io::CodedInputStream::BytesUntilLimit(v7) == 0;
  google::protobuf::io::CodedInputStream::~CodedInputStream(v7);
  return v5;
}

BOOL google::protobuf::MessageLite::ParsePartialFromBoundedZeroCopyStream(google::protobuf::MessageLite *this, google::protobuf::io::ZeroCopyInputStream *a2, unsigned int a3)
{
  v7[0] = 0;
  v7[1] = 0;
  v7[2] = a2;
  memset(&v7[3], 0, 14);
  v7[5] = 0x7FFFFFFFLL;
  v8 = 0x7FFFFFFF;
  v9 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v10 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v11 = 1;
  v12 = 0;
  v13 = 0;
  google::protobuf::io::CodedInputStream::Refresh(v7);
  google::protobuf::io::CodedInputStream::PushLimit(v7, a3);
  (*(*this + 56))(this);
  v5 = (*(*this + 88))(this, v7) && BYTE4(v7[4]) == 1 && google::protobuf::io::CodedInputStream::BytesUntilLimit(v7) == 0;
  google::protobuf::io::CodedInputStream::~CodedInputStream(v7);
  return v5;
}

uint64_t google::protobuf::MessageLite::ParseFromString(google::protobuf::_anonymous_namespace_ *a1, uint64_t *a2)
{
  LODWORD(v3) = *(a2 + 23);
  if ((v3 & 0x80u) == 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v9[0] = v4;
  v9[1] = v4 + v3;
  v9[2] = 0;
  v10 = v3;
  v11 = 0;
  v12 = 0;
  v13 = v3;
  v14 = -NAN;
  v15 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v16 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v17 = 1;
  v18 = 0;
  v19 = 0;
  (*(*a1 + 56))(a1);
  if (!(*(*a1 + 88))(a1, v9))
  {
    goto LABEL_12;
  }

  if (((*(*a1 + 64))(a1) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v22, 2, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/message_lite.cc", 121);
    v6 = google::protobuf::internal::LogMessage::operator<<(v22, &__p);
    google::protobuf::internal::LogFinisher::operator=(&v20, v6, v7);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    google::protobuf::internal::LogMessage::~LogMessage(&v22[0].__r_.__value_.__l.__data_);
LABEL_12:
    v5 = 0;
    goto LABEL_13;
  }

  v5 = v12;
LABEL_13:
  google::protobuf::io::CodedInputStream::~CodedInputStream(v9);
  return v5 & 1;
}

void sub_218576D44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage((v25 - 64));
  google::protobuf::io::CodedInputStream::~CodedInputStream(&a9);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::MessageLite::ParsePartialFromString(uint64_t a1, uint64_t *a2)
{
  LODWORD(v3) = *(a2 + 23);
  if ((v3 & 0x80u) == 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v8[0] = v4;
  v8[1] = v4 + v3;
  v8[2] = 0;
  v9 = v3;
  v10 = 0;
  v11 = 0;
  v12 = v3;
  v13 = -NAN;
  v14 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v15 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v16 = 1;
  v17 = 0;
  v18 = 0;
  (*(*a1 + 56))(a1);
  v5 = (*(*a1 + 88))(a1, v8);
  v6 = v11;
  google::protobuf::io::CodedInputStream::~CodedInputStream(v8);
  return v5 & v6;
}

uint64_t google::protobuf::MessageLite::ParseFromArray(google::protobuf::MessageLite *this, char *a2, int a3)
{
  v8[0] = a2;
  v8[1] = &a2[a3];
  v8[2] = 0;
  v9 = a3;
  v10 = 0;
  v11 = 0;
  v12 = a3;
  v13 = -NAN;
  v14 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v15 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v16 = 1;
  v17 = 0;
  v18 = 0;
  (*(*this + 56))(this);
  if (!(*(*this + 88))(this, v8))
  {
LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  if (((*(*this + 64))(this) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v21, 2, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/message_lite.cc", 121);
    v5 = google::protobuf::internal::LogMessage::operator<<(v21, &__p);
    google::protobuf::internal::LogFinisher::operator=(&v19, v5, v6);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    google::protobuf::internal::LogMessage::~LogMessage(&v21[0].__r_.__value_.__l.__data_);
    goto LABEL_7;
  }

  v4 = v11;
LABEL_8:
  google::protobuf::io::CodedInputStream::~CodedInputStream(v8);
  return v4 & 1;
}

void sub_218576FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage((v25 - 64));
  google::protobuf::io::CodedInputStream::~CodedInputStream(&a9);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::MessageLite::ParsePartialFromArray(google::protobuf::MessageLite *this, char *a2, int a3)
{
  v3 = this;
  v6[0] = a2;
  v6[1] = &a2[a3];
  v6[2] = 0;
  v7 = a3;
  v8 = 0;
  v9 = 0;
  v10 = a3;
  v11 = -NAN;
  v12 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v13 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v14 = 1;
  v15 = 0;
  v16 = 0;
  (*(*this + 56))(this);
  LODWORD(v3) = (*(*v3 + 88))(v3, v6);
  v4 = v9;
  google::protobuf::io::CodedInputStream::~CodedInputStream(v6);
  return v3 & v4;
}

unsigned __int8 *google::protobuf::MessageLite::InternalSerializeWithCachedSizesToArray(google::protobuf::MessageLite *this, char a2, unsigned __int8 *a3)
{
  v6 = (*(*this + 120))(this);
  google::protobuf::io::ArrayOutputStream::ArrayOutputStream(v13, a3, v6, -1);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v12, v13);
  v12[26] = 1;
  v12[27] = a2;
  (*(*this + 104))(this, v12);
  if (v12[24] == 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/message_lite.cc", 239);
    v7 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: !coded_out.HadError(): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, v7, v8);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v12);
  google::protobuf::io::ArrayOutputStream::~ArrayOutputStream(v13);
  return &a3[v6];
}

void sub_218577250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(va1);
  google::protobuf::io::ArrayOutputStream::~ArrayOutputStream((v3 - 64));
  _Unwind_Resume(a1);
}

void google::protobuf::anonymous namespace::InitializationErrorMessage(google::protobuf::_anonymous_namespace_ *this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a2, "Can't ");
  std::string::append(a2, "parse");
  std::string::append(a2, " message of type ");
  (*(*this + 16))(&__p, this);
  if ((v12 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v12 & 0x80u) == 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = v11;
  }

  std::string::append(a2, p_p, v7);
  if (v12 < 0)
  {
    operator delete(__p);
  }

  std::string::append(a2, " because it is missing required fields: ");
  (*(*this + 72))(&__p, this);
  if ((v12 & 0x80u) == 0)
  {
    v8 = &__p;
  }

  else
  {
    v8 = __p;
  }

  if ((v12 & 0x80u) == 0)
  {
    v9 = v12;
  }

  else
  {
    v9 = v11;
  }

  std::string::append(a2, v8, v9);
  if (v12 < 0)
  {
    operator delete(__p);
  }
}

void sub_2185773CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::MessageLite::SerializePartialToCodedStream(google::protobuf::MessageLite *this, google::protobuf::io::CodedOutputStream *a2)
{
  v4 = (*(*this + 96))(this);
  v5 = v4;
  if (v4 >> 31)
  {
    google::protobuf::internal::LogMessage::LogMessage(v23, 2, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/message_lite.cc", 252);
    v6 = google::protobuf::internal::LogMessage::operator<<(v23, "Exceeded maximum protobuf size of 2GB: ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, v5);
    google::protobuf::internal::LogFinisher::operator=(&v22, v7, v8);
    google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
    return 0;
  }

  v10 = *(a2 + 4);
  if (v10 >= v4)
  {
    v11 = *(a2 + 1);
    *(a2 + 1) = v11 + v4;
    *(a2 + 4) = v10 - v4;
    if (v11)
    {
      if (*(a2 + 26) == 1)
      {
        v12 = *(a2 + 27);
      }

      else
      {
        v12 = google::protobuf::io::CodedOutputStream::default_serialization_deterministic_;
      }

      v19 = ((*(*this + 128))(this, v12 != 0, v11) - v11);
      if (v19 != v5)
      {
        v20 = (*(*this + 96))(this);
      }

      return 1;
    }

    v10 -= v4;
  }

  v13 = *(a2 + 5);
  (*(*this + 104))(this, a2);
  v14 = *(a2 + 24);
  if ((v14 & 1) == 0)
  {
    v15 = v10 + *(a2 + 5) - (v13 + *(a2 + 4));
    if (v5 != v15)
    {
      v16 = v15;
      v17 = (*(*this + 96))(this);
    }
  }

  return v14 ^ 1u;
}

void sub_218577620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::anonymous namespace::ByteSizeConsistencyError(google::protobuf::_anonymous_namespace_ *this, google::protobuf::_anonymous_namespace_ *a2, google::protobuf::_anonymous_namespace_ *a3, uint64_t a4, const google::protobuf::MessageLite *a5)
{
  if (this != a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v22, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/message_lite.cc", 68);
    v8 = google::protobuf::internal::LogMessage::operator<<(v22, "CHECK failed: (byte_size_before_serialization) == (byte_size_after_serialization): ");
    (*(*a4 + 16))(__p, a4);
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, __p);
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, " was modified concurrently during serialization.");
    google::protobuf::internal::LogFinisher::operator=(&v19, v10, v11);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    google::protobuf::internal::LogMessage::~LogMessage(&v22[0].__r_.__value_.__l.__data_);
  }

  if (a3 != this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v22, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/message_lite.cc", 71);
    v12 = google::protobuf::internal::LogMessage::operator<<(v22, "CHECK failed: (bytes_produced_by_serialization) == (byte_size_before_serialization): ");
    v13 = google::protobuf::internal::LogMessage::operator<<(v12, "Byte size calculation and serialization were inconsistent.  This may indicate a bug in protocol buffers or it may be caused by concurrent modification of ");
    (*(*a4 + 16))(__p, a4);
    v14 = google::protobuf::internal::LogMessage::operator<<(v13, __p);
    v15 = google::protobuf::internal::LogMessage::operator<<(v14, ".");
    google::protobuf::internal::LogFinisher::operator=(&v19, v15, v16);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    google::protobuf::internal::LogMessage::~LogMessage(&v22[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::LogMessage::LogMessage(v22, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/message_lite.cc", 75);
  v17 = google::protobuf::internal::LogMessage::operator<<(v22, "This shouldn't be called if all the sizes are equal.");
  google::protobuf::internal::LogFinisher::operator=(__p, v17, v18);
  google::protobuf::internal::LogMessage::~LogMessage(&v22[0].__r_.__value_.__l.__data_);
}

void sub_2185777F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&a16);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::MessageLite::SerializeToZeroCopyStream(google::protobuf::MessageLite *this, google::protobuf::io::ZeroCopyOutputStream *a2)
{
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v5, a2);
  v3 = google::protobuf::MessageLite::SerializePartialToCodedStream(this, v5);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v5);
  return v3;
}

uint64_t google::protobuf::MessageLite::SerializePartialToZeroCopyStream(google::protobuf::MessageLite *this, google::protobuf::io::ZeroCopyOutputStream *a2)
{
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v5, a2);
  v3 = google::protobuf::MessageLite::SerializePartialToCodedStream(this, v5);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v5);
  return v3;
}

BOOL google::protobuf::MessageLite::AppendPartialToString(uint64_t a1, std::string *a2)
{
  v2 = a2;
  size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v5 = (*(*a1 + 96))(a1);
  v6 = v5;
  v7 = v5 >> 31;
  if (v5 >> 31)
  {
    google::protobuf::internal::LogMessage::LogMessage(v16, 2, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/message_lite.cc", 302);
    v11 = google::protobuf::internal::LogMessage::operator<<(v16, "Exceeded maximum protobuf size of 2GB: ");
    v12 = google::protobuf::internal::LogMessage::operator<<(v11, v6);
    google::protobuf::internal::LogFinisher::operator=(&v15, v12, v13);
    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
  }

  else
  {
    std::string::resize(v2, v5 + size, 0);
    if (SHIBYTE(v2->__r_.__value_.__r.__words[2]) < 0)
    {
      v2 = v2->__r_.__value_.__r.__words[0];
    }

    v8 = ((*(*a1 + 112))(a1, v2 + size) - (v2 + size));
    if (v8 != v6)
    {
      v9 = (*(*a1 + 96))(a1);
    }
  }

  return v7 == 0;
}

void sub_218577A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::MessageLite::SerializeToString(uint64_t a1, std::string *a2)
{
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    *a2->__r_.__value_.__l.__data_ = 0;
    a2->__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    a2->__r_.__value_.__s.__data_[0] = 0;
    *(&a2->__r_.__value_.__s + 23) = 0;
  }

  return google::protobuf::MessageLite::AppendPartialToString(a1, a2);
}

BOOL google::protobuf::MessageLite::SerializePartialToArray(google::protobuf::MessageLite *this, void *a2, int a3)
{
  v6 = (*(*this + 96))(this);
  if (v6 <= a3)
  {
    v7 = ((*(*this + 112))(this, a2) - a2);
    if (v7 != v6)
    {
      v8 = (*(*this + 96))(this);
    }
  }

  return v6 <= a3;
}

BOOL google::protobuf::MessageLite::SerializeAsString@<W0>(google::protobuf::MessageLite *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = google::protobuf::MessageLite::AppendPartialToString(this, a2);
  if (!result)
  {
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 23) = 0;
    }
  }

  return result;
}

void sub_218577BDC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL google::protobuf::MessageLite::SerializePartialAsString@<W0>(google::protobuf::MessageLite *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = google::protobuf::MessageLite::AppendPartialToString(this, a2);
  if (!result)
  {
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 23) = 0;
    }
  }

  return result;
}

void sub_218577C4C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::internal::arena_delete_object<google::protobuf::MessageLite>(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

unsigned int *google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(google::protobuf::internal::RepeatedPtrFieldBase *this, int a2)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  v4 = v2 + a2;
  v5 = *(this + 2);
  if (v3 < v2 + a2)
  {
    v7 = *this;
    v8 = 2 * v3;
    if (2 * v3 <= v4)
    {
      v8 = v4;
    }

    if (v8 <= 4)
    {
      v9 = 4;
    }

    else
    {
      v9 = v8;
    }

    v10 = 8 * v9;
    if (v7)
    {
      Aligned = google::protobuf::Arena::AllocateAligned(*this, MEMORY[0x277D827A0], v10 + 8);
    }

    else
    {
      Aligned = operator new(v10 + 8);
    }

    *(this + 2) = Aligned;
    *(this + 3) = v9;
    if (v5 && (v12 = *v5, v12 >= 1))
    {
      memcpy(Aligned + 2, v5 + 2, 8 * v12);
      Aligned = *(this + 2);
      *Aligned = *v5;
      if (!v7)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *Aligned = 0;
      if (!v7)
      {
LABEL_15:
        operator delete(v5);
        Aligned = *(this + 2);
      }
    }

    v2 = *(this + 2);
    v5 = Aligned;
  }

  return &v5[2 * v2 + 2];
}

unsigned int *google::protobuf::internal::RepeatedPtrFieldBase::Reserve(unsigned int *this, int a2)
{
  v2 = this[2];
  v3 = __OFSUB__(a2, v2);
  v4 = a2 - v2;
  if (!((v4 < 0) ^ v3 | (v4 == 0)))
  {
    return google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, v4);
  }

  return this;
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::CloseGap(uint64_t this, int a2, int a3)
{
  v3 = *(this + 16);
  if (v3)
  {
    v4 = a3 + a2;
    LODWORD(v5) = *v3;
    if (a3 + a2 < *v3)
    {
      v6 = v4;
      v7 = 8 * v4 - 8 * a3 + 8;
      do
      {
        *(v3 + v7) = *&v3[2 * v6++ + 2];
        v3 = *(this + 16);
        v5 = *v3;
        v7 += 8;
      }

      while (v6 < v5);
    }

    *(this + 8) -= a3;
    *v3 = v5 - a3;
  }

  return this;
}

void google::protobuf::internal::VerifyVersion(google::protobuf::internal *this, google::protobuf::internal *a2, const std::string::value_type *a3, const char *a4)
{
  if (a2 > 3003000)
  {
    v25 = 3;
    v26 = "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/stubs/common.cc";
    v27 = 67;
    memset(&v28, 0, sizeof(v28));
    std::string::append(&v28, "This program requires version ");
    google::protobuf::internal::VersionString(a2, &v22);
    if ((v24 & 0x80u) == 0)
    {
      v7 = &v22;
    }

    else
    {
      v7 = v22;
    }

    if ((v24 & 0x80u) == 0)
    {
      v8 = v24;
    }

    else
    {
      v8 = v23;
    }

    std::string::append(&v28, v7, v8);
    std::string::append(&v28, " of the Protocol Buffer runtime library, but the installed version is ");
    google::protobuf::internal::VersionString(0x2DD278, &__p);
    if ((v21 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v21 & 0x80u) == 0)
    {
      v10 = v21;
    }

    else
    {
      v10 = v20;
    }

    std::string::append(&v28, p_p, v10);
    std::string::append(&v28, ".  Please update your library.  If you compiled the program yourself, make sure that your headers are from the same version of Protocol Buffers as your link-time library.  (Version verification failed in ");
    std::string::append(&v28, a3);
    std::string::append(&v28, ".)");
    google::protobuf::internal::LogMessage::Finish(&v25, v11, v12);
    if (v21 < 0)
    {
      operator delete(__p);
    }

    if (v24 < 0)
    {
      operator delete(v22);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }
  }

  if (this < 3003000)
  {
    v25 = 3;
    v26 = "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/stubs/common.cc";
    v27 = 78;
    memset(&v28, 0, sizeof(v28));
    std::string::append(&v28, "This program was compiled against version ");
    google::protobuf::internal::VersionString(this, &v22);
    if ((v24 & 0x80u) == 0)
    {
      v13 = &v22;
    }

    else
    {
      v13 = v22;
    }

    if ((v24 & 0x80u) == 0)
    {
      v14 = v24;
    }

    else
    {
      v14 = v23;
    }

    std::string::append(&v28, v13, v14);
    std::string::append(&v28, " of the Protocol Buffer runtime library, which is not compatible with the installed version (");
    google::protobuf::internal::VersionString(0x2DD278, &__p);
    if ((v21 & 0x80u) == 0)
    {
      v15 = &__p;
    }

    else
    {
      v15 = __p;
    }

    if ((v21 & 0x80u) == 0)
    {
      v16 = v21;
    }

    else
    {
      v16 = v20;
    }

    std::string::append(&v28, v15, v16);
    std::string::append(&v28, ").  Contact the program author for an update.  If you compiled the program yourself, make sure that your headers are from the same version of Protocol Buffers as your link-time library.  (Version verification failed in ");
    std::string::append(&v28, a3);
    std::string::append(&v28, ".)");
    google::protobuf::internal::LogMessage::Finish(&v25, v17, v18);
    if (v21 < 0)
    {
      operator delete(__p);
    }

    if (v24 < 0)
    {
      operator delete(v22);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }
  }
}

void sub_2185780C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::internal::LogMessage::LogMessage(uint64_t result, int a2, uint64_t a3, int a4)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  return result;
}

std::string *google::protobuf::internal::LogMessage::operator<<(std::string *a1, const std::string::value_type *a2)
{
  std::string::append(a1 + 1, a2);
  return a1;
}

{
  v3 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v4 = v3;
  }

  std::string::append(a1 + 1, a2, v4);
  return a1;
}

unint64_t google::protobuf::internal::VersionString@<X0>(google::protobuf::internal *this@<X0>, _BYTE *a2@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%d.%d.%d", this / 1000000, this / 1000 % 1000, this % 1000);
  __str[127] = 0;
  result = strlen(__str);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memcpy(a2, __str, result);
  }

  a2[v4] = 0;
  return result;
}

void google::protobuf::internal::LogMessage::~LogMessage(void **this)
{
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

uint64_t google::protobuf::internal::DefaultLogHandler(uint64_t result, const char *a2, int a3, uint64_t a4)
{
  if ((result & 0x80000000) == 0)
  {
    v4 = MEMORY[0x277D85DF8];
    if (*(a4 + 23) >= 0)
    {
      v5 = a4;
    }

    else
    {
      v5 = *a4;
    }

    fprintf(*MEMORY[0x277D85DF8], "[libprotobuf %s %s:%d] %s\n", google::protobuf::internal::DefaultLogHandler(google::protobuf::LogLevel,char const*,int,std::string const&)::level_names[result], a2, a3, v5);
    v6 = *v4;

    return fflush(v6);
  }

  return result;
}

uint64_t google::protobuf::internal::DeleteLogSilencerCount(google::protobuf::internal *this)
{
  result = google::protobuf::internal::log_silencer_count_mutex_;
  if (google::protobuf::internal::log_silencer_count_mutex_)
  {
    google::protobuf::internal::Mutex::~Mutex(google::protobuf::internal::log_silencer_count_mutex_);
    result = MEMORY[0x21CEAFEA0]();
  }

  google::protobuf::internal::log_silencer_count_mutex_ = 0;
  return result;
}

void google::protobuf::internal::OnShutdown(google::protobuf::internal *this, void (*a2)(void), google::protobuf::Closure *a3)
{
  v4 = atomic_load(&google::protobuf::internal::shutdown_functions_init);
  if (v4 != 2)
  {
    v18[0] = &unk_282A01648;
    v18[1] = google::protobuf::internal::InitShutdownFunctions;
    v19 = 0;
    google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::shutdown_functions_init, v18, a3);
  }

  v5 = google::protobuf::internal::shutdown_functions_mutex;
  google::protobuf::internal::Mutex::Lock(google::protobuf::internal::shutdown_functions_mutex);
  v6 = google::protobuf::internal::shutdown_functions;
  v8 = *(google::protobuf::internal::shutdown_functions + 8);
  v7 = *(google::protobuf::internal::shutdown_functions + 16);
  if (v8 >= v7)
  {
    v10 = (v8 - *google::protobuf::internal::shutdown_functions) >> 3;
    if ((v10 + 1) >> 61)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v11 = v7 - *google::protobuf::internal::shutdown_functions;
    v12 = v11 >> 2;
    if (v11 >> 2 <= (v10 + 1))
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<void (*)(void)>>(google::protobuf::internal::shutdown_functions, v13);
    }

    v14 = (8 * v10);
    *v14 = this;
    v9 = 8 * v10 + 8;
    v15 = *(v6 + 8) - *v6;
    v16 = v14 - v15;
    memcpy(v14 - v15, *v6, v15);
    v17 = *v6;
    *v6 = v16;
    *(v6 + 8) = v9;
    *(v6 + 16) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v8 = this;
    v9 = (v8 + 1);
  }

  *(v6 + 8) = v9;
  google::protobuf::internal::Mutex::Unlock(v5);
}

uint64_t google::protobuf::internal::InitLogSilencerCountOnce(google::protobuf::internal *this, uint64_t a2, google::protobuf::Closure *a3)
{
  v5 = atomic_load(&google::protobuf::internal::log_silencer_count_init_);
  if (v5 != 2)
  {
    v9 = v3;
    v10 = v4;
    v7[0] = &unk_282A01648;
    v7[1] = google::protobuf::internal::InitLogSilencerCount;
    v8 = 0;
    return google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::log_silencer_count_init_, v7, a3);
  }

  return result;
}

std::string *google::protobuf::internal::LogMessage::operator<<(std::string *a1, uint64_t a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = *(a2 + 8);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v13) = *(a2 + 8);
    if (v4)
    {
      memmove(&__dst, v3, v4);
    }

    *(&__dst + v4) = 0;
    v7 = HIBYTE(v13);
    v6 = __dst;
    v5 = v12;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    __dst = 0;
    v12 = 0;
    v13 = 0;
  }

  if ((v7 & 0x80u) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = v6;
  }

  if ((v7 & 0x80u) == 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  std::string::append(a1 + 1, p_dst, v9);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__dst);
  }

  return a1;
}

{
  v5 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%ld", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  return a1;
}

{
  v5 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%lu", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  return a1;
}

{
  v5 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%lld", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  return a1;
}

{
  v5 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%llu", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  return a1;
}

void sub_2185787F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *google::protobuf::internal::LogMessage::operator<<(std::string *a1, google::protobuf::util::Status *this)
{
  google::protobuf::util::Status::ToString(this, __p);
  if ((v7 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v4 = v7;
  }

  else
  {
    v4 = __p[1];
  }

  std::string::append(a1 + 1, v3, v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_218578878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *google::protobuf::internal::LogMessage::operator<<(std::string *a1, __int128 *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  google::protobuf::operator<<(&v9, a2);
  std::stringbuf::str();
  if ((v8 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v5 = v8;
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1 + 1, v4, v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = *MEMORY[0x277D82828];
  *(&v9 + *(v9 - 24)) = *(MEMORY[0x277D82828] + 24);
  v10 = MEMORY[0x277D82878] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v11);
  std::ostream::~ostream();
  MEMORY[0x21CEAFDA0](&v13);
  return a1;
}

void sub_218578A24(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  if (a7 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a8, MEMORY[0x277D82828]);
  MEMORY[0x21CEAFDA0](va);
  _Unwind_Resume(a1);
}

std::string *google::protobuf::internal::LogMessage::operator<<(std::string *a1, std::string::value_type a2)
{
  v5 = *MEMORY[0x277D85DE8];
  __s[0] = a2;
  __s[1] = 0;
  __s[127] = 0;
  std::string::append(a1 + 1, __s);
  return a1;
}

std::string *google::protobuf::internal::LogMessage::operator<<(std::string *a1, int a2)
{
  v5 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%d", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  return a1;
}

{
  v5 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%u", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  return a1;
}

std::string *google::protobuf::internal::LogMessage::operator<<(std::string *a1, double a2)
{
  v5 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%g", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  return a1;
}

std::string *google::protobuf::internal::LogMessage::operator<<(std::string *a1, const void *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%p", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  return a1;
}

void google::protobuf::internal::LogMessage::Finish(google::protobuf::internal::LogMessage *this, uint64_t a2, google::protobuf::Closure *a3)
{
  if (*this == 3)
  {
    v4 = 3;
  }

  else
  {
    google::protobuf::internal::InitLogSilencerCountOnce(this, a2, a3);
    v5 = google::protobuf::internal::log_silencer_count_mutex_;
    google::protobuf::internal::Mutex::Lock(google::protobuf::internal::log_silencer_count_mutex_);
    v6 = google::protobuf::internal::log_silencer_count_;
    google::protobuf::internal::Mutex::Unlock(v5);
    if (v6 > 0)
    {
      goto LABEL_6;
    }

    v4 = *this;
  }

  google::protobuf::internal::log_handler_(v4, *(this + 1), *(this + 4), this + 24);
LABEL_6:
  if (*this == 3)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    google::protobuf::FatalException::FatalException(exception, *(this + 1), *(this + 4), this + 24);
  }
}

uint64_t (*google::protobuf::SetLogHandler(uint64_t (*a1)()))()
{
  v1 = google::protobuf::internal::log_handler_;
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = google::protobuf::internal::NullLogHandler;
  }

  google::protobuf::internal::log_handler_ = v2;
  if (v1 == google::protobuf::internal::NullLogHandler)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

google::protobuf::LogSilencer *google::protobuf::LogSilencer::LogSilencer(google::protobuf::LogSilencer *this, uint64_t a2, google::protobuf::Closure *a3)
{
  google::protobuf::internal::InitLogSilencerCountOnce(this, a2, a3);
  v4 = google::protobuf::internal::log_silencer_count_mutex_;
  google::protobuf::internal::Mutex::Lock(google::protobuf::internal::log_silencer_count_mutex_);
  ++google::protobuf::internal::log_silencer_count_;
  google::protobuf::internal::Mutex::Unlock(v4);
  return this;
}

void google::protobuf::LogSilencer::~LogSilencer(google::protobuf::LogSilencer *this, uint64_t a2, google::protobuf::Closure *a3)
{
  google::protobuf::internal::InitLogSilencerCountOnce(this, a2, a3);
  v3 = google::protobuf::internal::log_silencer_count_mutex_;
  google::protobuf::internal::Mutex::Lock(google::protobuf::internal::log_silencer_count_mutex_);
  --google::protobuf::internal::log_silencer_count_;
  google::protobuf::internal::Mutex::Unlock(v3);
}

void google::protobuf::internal::Mutex::~Mutex(pthread_mutex_t **this)
{
  pthread_mutex_destroy(*this);
  if (*this)
  {
    MEMORY[0x21CEAFEA0](*this, 0x1000C40FA0F61DDLL);
  }
}

void google::protobuf::internal::Mutex::Lock(pthread_mutex_t **this)
{
  v1 = pthread_mutex_lock(*this);
  if (v1)
  {
    v2 = v1;
    v4 = 3;
    v5 = "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/stubs/common.cc";
    v6 = 377;
    memset(&__p, 0, sizeof(__p));
    std::string::append(&__p, "pthread_mutex_lock: ");
    v3 = strerror(v2);
    std::string::append(&__p, v3);
    google::protobuf::internal::LogMessage::Finish(&v4);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_2185791A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::internal::Mutex::Unlock(pthread_mutex_t **this)
{
  v1 = pthread_mutex_unlock(*this);
  if (v1)
  {
    v2 = v1;
    v4 = 3;
    v5 = "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/stubs/common.cc";
    v6 = 384;
    memset(&__p, 0, sizeof(__p));
    std::string::append(&__p, "pthread_mutex_unlock: ");
    v3 = strerror(v2);
    std::string::append(&__p, v3);
    google::protobuf::internal::LogMessage::Finish(&v4);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_218579260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::ShutdownProtobufLibrary(google::protobuf *this, uint64_t a2, google::protobuf::Closure *a3)
{
  v3 = atomic_load(&google::protobuf::internal::shutdown_functions_init);
  if (v3 != 2)
  {
    v7[0] = &unk_282A01648;
    v7[1] = google::protobuf::internal::InitShutdownFunctions;
    v8 = 0;
    google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::shutdown_functions_init, v7, a3);
  }

  v4 = google::protobuf::internal::shutdown_functions;
  if (google::protobuf::internal::shutdown_functions)
  {
    v5 = *google::protobuf::internal::shutdown_functions;
    if (*(google::protobuf::internal::shutdown_functions + 8) != *google::protobuf::internal::shutdown_functions)
    {
      v6 = 0;
      do
      {
        v5[v6++]();
        v4 = google::protobuf::internal::shutdown_functions;
        v5 = *google::protobuf::internal::shutdown_functions;
      }

      while (v6 < (v4[1] - *v4) >> 3);
    }

    if (v5)
    {
      v4[1] = v5;
      operator delete(v5);
    }

    MEMORY[0x21CEAFEA0](v4, 0x80C40D6874129);
    google::protobuf::internal::shutdown_functions = 0;
    if (google::protobuf::internal::shutdown_functions_mutex)
    {
      google::protobuf::internal::Mutex::~Mutex(google::protobuf::internal::shutdown_functions_mutex);
      MEMORY[0x21CEAFEA0]();
    }

    google::protobuf::internal::shutdown_functions_mutex = 0;
  }
}

void google::protobuf::FatalException::~FatalException(std::exception *this)
{
  this->__vftable = &unk_282A015E8;
  if (SHIBYTE(this[5].__vftable) < 0)
  {
    operator delete(this[3].__vftable);
  }

  std::exception::~exception(this);
}

{
  google::protobuf::FatalException::~FatalException(this);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t google::protobuf::FatalException::what(google::protobuf::FatalException *this)
{
  result = this + 24;
  if (*(this + 47) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t google::protobuf::internal::FunctionClosure0::Run(google::protobuf::internal::FunctionClosure0 *this)
{
  v2 = *(this + 16);
  result = (*(this + 1))();
  if (this && (v2 & 1) != 0)
  {
    v4 = *(*this + 8);

    return v4(this);
  }

  return result;
}

uint64_t google::protobuf::FatalException::FatalException(uint64_t a1, uint64_t a2, int a3, __int128 *a4)
{
  *a1 = &unk_282A015E8;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *a4, *(a4 + 1));
  }

  else
  {
    v5 = *a4;
    *(a1 + 40) = *(a4 + 2);
    *(a1 + 24) = v5;
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<void (*)(void)>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void google::protobuf::uint128::DivModImpl(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t *a6)
{
  v8 = a4;
  v9 = a3;
  if (!(a3 | a4))
  {
    google::protobuf::internal::LogMessage::LogMessage(v40, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/stubs/int128.cc", 85);
    v12 = google::protobuf::internal::LogMessage::operator<<(v40, "Division or mod by zero: dividend.hi=");
    v13 = google::protobuf::internal::LogMessage::operator<<(v12, a2);
    v14 = google::protobuf::internal::LogMessage::operator<<(v13, ", lo=");
    v15 = google::protobuf::internal::LogMessage::operator<<(v14, a1);
    google::protobuf::internal::LogFinisher::operator=(&v39, v15, v16);
    google::protobuf::internal::LogMessage::~LogMessage(&v40[0].__r_.__value_.__l.__data_);
  }

  v17 = v9 > a1;
  if (v8 != a2)
  {
    v17 = v8 > a2;
  }

  if (!v17)
  {
    if (v9 == a1 && v8 == a2)
    {
      *a5 = xmmword_2185BF360;
      *a6 = 0;
      a6[1] = 0;
      return;
    }

    if (a2)
    {
      v18 = HIDWORD(a2);
      if (!HIDWORD(a2))
      {
        v18 = a2;
      }

      if (v18 >> 16)
      {
        v19 = (32 * (HIDWORD(a2) != 0)) | 0x10;
      }

      else
      {
        v19 = 32 * (HIDWORD(a2) != 0);
      }

      if (v18 >> 16)
      {
        LODWORD(v18) = WORD1(v18);
      }

      if (v18 > 0xFF)
      {
        v19 |= 8u;
        LODWORD(v18) = v18 >> 8;
      }

      if (v18 > 0xF)
      {
        v19 |= 4u;
        LOBYTE(v18) = v18 >> 4;
      }

      v20 = v19 + ((0x3333333322221100uLL >> (4 * v18)) & 3) + 64;
      if (v8)
      {
LABEL_23:
        v21 = HIDWORD(v8);
        if (!HIDWORD(v8))
        {
          v21 = v8;
        }

        if (v21 >> 16)
        {
          v22 = (32 * (HIDWORD(v8) != 0)) | 0x10;
        }

        else
        {
          v22 = 32 * (HIDWORD(v8) != 0);
        }

        if (v21 >> 16)
        {
          LODWORD(v21) = WORD1(v21);
        }

        if (v21 > 0xFF)
        {
          v22 |= 8u;
          LODWORD(v21) = v21 >> 8;
        }

        if (v21 > 0xF)
        {
          v22 |= 4u;
          LOBYTE(v21) = v21 >> 4;
        }

        v23 = v22 + ((0x3333333322221100uLL >> (4 * v21)) & 3) + 64;
        goto LABEL_59;
      }
    }

    else
    {
      v24 = HIDWORD(a1);
      if (!HIDWORD(a1))
      {
        v24 = a1;
      }

      if (v24 >> 16)
      {
        v25 = (32 * (HIDWORD(a1) != 0)) | 0x10;
      }

      else
      {
        v25 = 32 * (HIDWORD(a1) != 0);
      }

      if (v24 >> 16)
      {
        LODWORD(v24) = WORD1(v24);
      }

      if (v24 > 0xFF)
      {
        v25 |= 8u;
        LODWORD(v24) = v24 >> 8;
      }

      if (v24 > 0xF)
      {
        v25 |= 4u;
        LOBYTE(v24) = v24 >> 4;
      }

      v20 = ((0x3333333322221100uLL >> (4 * v24)) & 3) + v25;
      if (v8)
      {
        goto LABEL_23;
      }
    }

    v26 = HIDWORD(v9);
    if (!HIDWORD(v9))
    {
      v26 = v9;
    }

    if (v26 >> 16)
    {
      v27 = (32 * (HIDWORD(v9) != 0)) | 0x10;
    }

    else
    {
      v27 = 32 * (HIDWORD(v9) != 0);
    }

    if (v26 >> 16)
    {
      LODWORD(v26) = WORD1(v26);
    }

    if (v26 > 0xFF)
    {
      v27 |= 8u;
      LODWORD(v26) = v26 >> 8;
    }

    if (v26 > 0xF)
    {
      v27 |= 4u;
      LOBYTE(v26) = v26 >> 4;
    }

    v23 = ((0x3333333322221100uLL >> (4 * v26)) & 3) + v27;
LABEL_59:
    v28 = v20 - v23;
    if (v20 - v23 > 63)
    {
      if (v28 >= 0x80)
      {
        v32 = 0;
        v31 = 0;
LABEL_74:
        *a5 = v31;
        *(a5 + 8) = v32;
        goto LABEL_75;
      }

      v30 = 0;
      v8 = v9 << v28;
      v29 = 1 << v28;
      v9 = 0;
    }

    else if (v20 == v23)
    {
      v29 = 0;
      v30 = 1;
    }

    else
    {
      v29 = 0;
      v8 = (v8 << v28) | (v9 >> 1 >> ~v28);
      v9 <<= v28;
      v30 = 1 << v28;
    }

    v31 = 0;
    v32 = 0;
    do
    {
      v33 = v29;
      v34 = a1 >= v9;
      if (a2 != v8)
      {
        v34 = a2 >= v8;
      }

      v35 = (__PAIR128__(a2 - v8, a1) - v9) >> 64;
      v36 = v31 | v30;
      *(&v37 + 1) = v33;
      *&v37 = v30;
      v30 = v37 >> 1;
      if (v34)
      {
        v32 |= v33;
        v31 = v36;
        a1 -= v9;
        a2 = v35;
      }

      v29 = v33 >> 1;
      *(&v38 + 1) = v8;
      *&v38 = v9;
      v9 = v38 >> 1;
      v8 >>= 1;
    }

    while (v33 > 1 || v30);
    goto LABEL_74;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
LABEL_75:
  *a6 = a1;
  a6[1] = a2;
}

void sub_2185799CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unint64_t *google::protobuf::uint128::operator/=(unint64_t *a1, unint64_t *a2)
{
  v5 = 0uLL;
  google::protobuf::uint128::DivModImpl(*a1, a1[1], *a2, a2[1], &v5, &v4);
  *a1 = v5;
  return a1;
}

unint64_t *google::protobuf::uint128::operator%=(unint64_t *a1, unint64_t *a2)
{
  v4 = 0uLL;
  google::protobuf::uint128::DivModImpl(*a1, a1[1], *a2, a2[1], v5, &v4);
  *a1 = v4;
  return a1;
}

void *google::protobuf::operator<<(uint64_t *a1, __int128 *a2)
{
  v4 = *(a1 + *(*a1 - 24) + 8);
  if ((v4 & 0x4A) == 8)
  {
    v5 = 0x1000000000000000;
    v6 = 15;
  }

  else if ((v4 & 0x4A) == 0x40)
  {
    v5 = 0x8000000000000000;
    v6 = 21;
  }

  else
  {
    v5 = 0x8AC7230489E80000;
    v6 = 19;
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v28);
  *(&v28 + *(v28 - 24) + 8) = *(&v28 + *(v28 - 24) + 8) & 0xFFFFBDB5 | v4 & 0x424A;
  v27 = *a2;
  v26[0] = 0;
  v26[1] = 0;
  google::protobuf::uint128::DivModImpl(v27, *(&v27 + 1), v5, 0, &v27, v26);
  v25[0] = 0;
  v25[1] = 0;
  google::protobuf::uint128::DivModImpl(v27, *(&v27 + 1), v5, 0, &v27, v25);
  if (v27)
  {
    MEMORY[0x21CEAFB80](&v28);
    *(&v28 + *(v28 - 24) + 8) &= ~0x200u;
    v24.__r_.__value_.__s.__data_[0] = 48;
    v7 = std::operator<<[abi:ne200100]<std::char_traits<char>>(&v28, &v24);
    *(v7 + *(*v7 - 24) + 24) = v6;
    MEMORY[0x21CEAFB80](&v28, v25[0]);
    v8 = &v28 + *(v28 - 24);
  }

  else
  {
    if (!v25[0])
    {
      goto LABEL_11;
    }

    MEMORY[0x21CEAFB80](&v28);
    *(&v28 + *(v28 - 24) + 8) &= ~0x200u;
    v24.__r_.__value_.__s.__data_[0] = 48;
    v9 = std::operator<<[abi:ne200100]<std::char_traits<char>>(&v28, &v24);
    v8 = v9 + *(*v9 - 24);
  }

  *(v8 + 3) = v6;
LABEL_11:
  MEMORY[0x21CEAFB80](&v28, v26[0]);
  std::stringbuf::str();
  v10 = *a1;
  v11 = a1 + *(*a1 - 24);
  v12 = *(v11 + 3);
  *(v11 + 3) = 0;
  size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v24.__r_.__value_.__l.__size_;
  }

  v14 = v12 - size;
  if (v12 > size)
  {
    v15 = v4 & 0xB0;
    v16 = (a1 + *(v10 - 24));
    fmtflags = v16[1].__fmtflags_;
    if (v15 == 32)
    {
      if (fmtflags == -1)
      {
        std::ios_base::getloc(v16);
        v18 = std::locale::use_facet(&v33, MEMORY[0x277D82680]);
        fmtflags = (v18->__vftable[2].~facet_0)(v18, 32);
        std::locale::~locale(&v33);
        v16[1].__fmtflags_ = fmtflags;
      }

      std::string::append(&v24, v14, fmtflags);
    }

    else
    {
      if (fmtflags == -1)
      {
        std::ios_base::getloc(v16);
        v19 = std::locale::use_facet(&v33, MEMORY[0x277D82680]);
        fmtflags = (v19->__vftable[2].~facet_0)(v19, 32);
        std::locale::~locale(&v33);
        v16[1].__fmtflags_ = fmtflags;
      }

      std::string::insert(&v24, 0, v14, fmtflags);
    }
  }

  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v24;
  }

  else
  {
    v20 = v24.__r_.__value_.__r.__words[0];
  }

  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v24.__r_.__value_.__l.__size_;
  }

  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v20, v21);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v28 = *MEMORY[0x277D82828];
  *(&v28 + *(v28 - 24)) = *(MEMORY[0x277D82828] + 24);
  v29 = MEMORY[0x277D82878] + 16;
  if (v31 < 0)
  {
    operator delete(v30[7].__locale_);
  }

  v29 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v30);
  std::ostream::~ostream();
  MEMORY[0x21CEAFDA0](&v32);
  return v22;
}

void sub_218579F5C(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  std::locale::~locale((v28 - 72));
  if (a8 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a15, MEMORY[0x277D82828]);
  MEMORY[0x21CEAFDA0](va);
  _Unwind_Resume(a1);
}

void *std::operator<<[abi:ne200100]<std::char_traits<char>>(void *a1, char *a2)
{
  v3 = a1 + *(*a1 - 24);
  v4 = *a2;
  if (*(v3 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v5 = std::locale::use_facet(&v8, MEMORY[0x277D82680]);
    v6 = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v8);
    *(v3 + 36) = v6;
  }

  *(v3 + 36) = v4;
  return a1;
}

uint64_t google::protobuf::GoogleOnceInitImpl(uint64_t this, uint64_t *a2, google::protobuf::Closure *a3)
{
  v3 = atomic_load(this);
  if (v3 != 2)
  {
    v4 = this;
    do
    {
      v5 = __ldxr(this);
    }

    while (!v5 && __stxr(1uLL, this));
    __dmb(0xBu);
    if (v5)
    {
      while (v5 == 1)
      {
        this = sched_yield();
        v5 = atomic_load(v4);
      }
    }

    else
    {
      this = (*(*a2 + 16))(a2);
      atomic_store(2uLL, v4);
    }
  }

  return this;
}

int *google::protobuf::util::Status::OK(google::protobuf::util::Status *this)
{
  if ((atomic_load_explicit(&_MergedGlobals, memory_order_acquire) & 1) == 0)
  {
    google::protobuf::util::Status::OK();
  }

  if (atomic_load_explicit(&google::protobuf::util::Status::OK(void)::onceInitOK, memory_order_acquire) != -1)
  {
    v4 = &v2;
    v3 = &v4;
    std::__call_once(&google::protobuf::util::Status::OK(void)::onceInitOK, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<google::protobuf::util::Status::OK(void)::$_0 &&>>);
  }

  return &dword_27CC06318;
}

uint64_t google::protobuf::util::Status::Status(uint64_t this)
{
  *this = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 8) = 0;
  return this;
}

void google::protobuf::util::Status::~Status(void **this)
{
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

int *google::protobuf::util::Status::CANCELLED(google::protobuf::util::Status *this)
{
  if ((atomic_load_explicit(&qword_27CC06308, memory_order_acquire) & 1) == 0)
  {
    google::protobuf::util::Status::CANCELLED();
  }

  if (atomic_load_explicit(&google::protobuf::util::Status::CANCELLED(void)::onceInitCANCELLED, memory_order_acquire) != -1)
  {
    v4 = &v2;
    v3 = &v4;
    std::__call_once(&google::protobuf::util::Status::CANCELLED(void)::onceInitCANCELLED, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<google::protobuf::util::Status::CANCELLED(void)::$_0 &&>>);
  }

  return &dword_27CC06338;
}

int *google::protobuf::util::Status::UNKNOWN(google::protobuf::util::Status *this)
{
  if ((atomic_load_explicit(&qword_27CC06310, memory_order_acquire) & 1) == 0)
  {
    google::protobuf::util::Status::UNKNOWN();
  }

  if (atomic_load_explicit(&google::protobuf::util::Status::UNKNOWN(void)::onceInitUNKNOWN, memory_order_acquire) != -1)
  {
    v4 = &v2;
    v3 = &v4;
    std::__call_once(&google::protobuf::util::Status::UNKNOWN(void)::onceInitUNKNOWN, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<google::protobuf::util::Status::UNKNOWN(void)::$_0 &&>>);
  }

  return &dword_27CC06358;
}

uint64_t google::protobuf::util::Status::Status(uint64_t a1, int a2, void *__src, size_t __len)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  v5 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (a2)
  {
    if (__src)
    {
      if (__len >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (__len >= 0x17)
      {
        operator new();
      }

      HIBYTE(v9) = __len;
      if (__len)
      {
        memmove(&__dst, __src, __len);
      }

      *(&__dst + __len) = 0;
      if (*(a1 + 31) < 0)
      {
        operator delete(*v5);
      }
    }

    else
    {
      __dst = 0uLL;
      v9 = 0;
    }

    *v5 = __dst;
    *(v5 + 16) = v9;
  }

  return a1;
}

void sub_21857A3DC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

google::protobuf::util::Status *google::protobuf::util::Status::Status(google::protobuf::util::Status *this, const google::protobuf::util::Status *a2)
{
  *this = *a2;
  v3 = (this + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v3, *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    v3->__r_.__value_.__r.__words[2] = *(a2 + 3);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  return this;
}

uint64_t google::protobuf::util::Status::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  std::string::operator=((a1 + 8), (a2 + 8));
  return a1;
}

BOOL google::protobuf::util::Status::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 31);
  if (v2 >= 0)
  {
    v3 = *(a1 + 31);
  }

  else
  {
    v3 = *(a1 + 16);
  }

  v4 = *(a2 + 31);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 16);
  }

  if (v3 != v4)
  {
    return 0;
  }

  v8 = *(a1 + 8);
  v6 = (a1 + 8);
  v7 = v8;
  if (v2 < 0)
  {
    v6 = v7;
  }

  v11 = *(a2 + 8);
  v9 = (a2 + 8);
  v10 = v11;
  if (v5 < 0)
  {
    v9 = v10;
  }

  return memcmp(v6, v9, v3) == 0;
}

void google::protobuf::util::Status::ToString(google::protobuf::util::Status *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *this;
  if (*this)
  {
    v5 = *(this + 31);
    if (v5 < 0)
    {
      v5 = *(this + 2);
    }

    if (v5)
    {
      if (v3 > 0x10)
      {
        v6 = "UNKNOWN";
      }

      else
      {
        v6 = off_278236400[v3 - 1];
      }

      std::string::basic_string[abi:ne200100]<0>(&v15, v6);
      v8 = std::string::append(&v15, ":");
      v9 = *&v8->__r_.__value_.__l.__data_;
      v16.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
      *&v16.__r_.__value_.__l.__data_ = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      v10 = *(this + 31);
      if (v10 >= 0)
      {
        v11 = this + 8;
      }

      else
      {
        v11 = *(this + 1);
      }

      if (v10 >= 0)
      {
        v12 = *(this + 31);
      }

      else
      {
        v12 = *(this + 2);
      }

      v13 = std::string::append(&v16, v11, v12);
      v14 = *&v13->__r_.__value_.__l.__data_;
      *(a2 + 16) = *(&v13->__r_.__value_.__l + 2);
      *a2 = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }

      return;
    }

    if (v3 > 0x10)
    {
      v7 = "UNKNOWN";
    }

    else
    {
      v7 = off_278236400[v3 - 1];
    }
  }

  else
  {
    v7 = "OK";
  }

  std::string::basic_string[abi:ne200100]<0>(a2, v7);
}

void sub_21857A648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void *google::protobuf::util::operator<<(void *a1, google::protobuf::util::Status *this)
{
  google::protobuf::util::Status::ToString(this, __p);
  if ((v7 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v4 = v7;
  }

  else
  {
    v4 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v3, v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_21857A6E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<google::protobuf::util::Status::OK(void)::$_0 &&>>()
{
  memset(&__p, 0, sizeof(__p));
  dword_27CC06318 = 0;
  std::string::operator=(&qword_27CC06320, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_21857A75C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<google::protobuf::util::Status::CANCELLED(void)::$_0 &&>>()
{
  memset(&__p, 0, sizeof(__p));
  dword_27CC06338 = 1;
  std::string::operator=(&qword_27CC06340, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_21857A7D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<google::protobuf::util::Status::UNKNOWN(void)::$_0 &&>>()
{
  memset(&__p, 0, sizeof(__p));
  dword_27CC06358 = 2;
  std::string::operator=(&qword_27CC06360, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_21857A84C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t a1, void *a2, void *a3)
{

  return __cxa_atexit(google::protobuf::util::Status::~Status, a2, a3);
}

std::string *google::protobuf::StringAppendV(std::string *a1, char *__format, va_list a3)
{
  v6 = *MEMORY[0x277D85DE8];
  result = vsnprintf(__str, 0x400uLL, __format, a3);
  if (result > 1023)
  {
    operator new[]();
  }

  if ((result & 0x80000000) == 0)
  {
    return std::string::append(a1, __str, result);
  }

  return result;
}

std::string *google::protobuf::StringPrintf@<X0>(google::protobuf *this@<X0>, std::string *a2@<X8>, ...)
{
  va_start(va, a2);
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return google::protobuf::StringAppendV(a2, this, va);
}

void sub_21857A9D8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::SStringPrintf(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(a1 + 23) < 0)
  {
    **a1 = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 23) = 0;
  }

  google::protobuf::StringAppendV(a1, a2, &a9);
  return a1;
}

std::string *google::protobuf::StringPrintfVector@<X0>(google::protobuf *this@<X0>, uint64_t **a2@<X1>, std::string *a3@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = a2[1];
  v7 = 0xAAAAAAAAAAAAAAABLL * (v6 - *a2);
  if (v7 >= 0x21)
  {
    google::protobuf::internal::LogMessage::LogMessage(&v20, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/stubs/stringprintf.cc", 141);
    v9 = google::protobuf::internal::LogMessage::operator<<(&v20, "CHECK failed: (v.size()) <= (kStringPrintfVectorMaxArgs): ");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "StringPrintfVector currently only supports up to ");
    v11 = google::protobuf::internal::LogMessage::operator<<(v10, 32);
    v12 = google::protobuf::internal::LogMessage::operator<<(v11, " arguments. ");
    v13 = google::protobuf::internal::LogMessage::operator<<(v12, "Feel free to add support for more if you need it.");
    google::protobuf::internal::LogFinisher::operator=(&v19, v13, v14);
    google::protobuf::internal::LogMessage::~LogMessage(&v20);
    v5 = *a2;
    v6 = a2[1];
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 - *a2);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  if (v6 != v5)
  {
    if (v7 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v7;
    }

    v16 = &v20;
    do
    {
      v17 = v5;
      if (*(v5 + 23) < 0)
      {
        v17 = *v5;
      }

      *v16 = v17;
      v16 = (v16 + 8);
      v5 += 3;
      --v15;
    }

    while (v15);
  }

  if ((v7 & 0xFFFFFFE0) == 0)
  {
    memset_pattern16(&v20 + ((8 * v7) & 0xF8), &off_278236480, ((-8 - 8 * v7) & 0xF8) + 8);
  }

  return google::protobuf::StringPrintf(this, a3, v20, v21, v22, v23, v24, v25, v26, v27, v28, *(&v28 + 1), v29, *(&v29 + 1), v30, *(&v30 + 1), v31, *(&v31 + 1), v32, *(&v32 + 1), v33, *(&v33 + 1), v34, *(&v34 + 1), v35, *(&v35 + 1));
}

uint64_t google::protobuf::internal::UTF8GenericScan(unsigned int *a1, _BYTE *a2, int a3, _DWORD *a4)
{
  *a4 = 0;
  if (!a3)
  {
    return 241;
  }

  v4 = &a2[a3];
  v5 = v4 - 7;
  v6 = *(a1 + 4) + *a1;
  v7 = *(a1 + 7);
  v8 = a2;
  while (2)
  {
    v9 = v8 & 7;
    if ((v8 & 7) != 0 && v8 < v4)
    {
      v10 = v8 + 1;
      while (!*(v7 + *v8))
      {
        ++v8;
        v9 = v10 & 7;
        if ((v10 & 7) != 0)
        {
          ++v10;
          if (v8 < v4)
          {
            continue;
          }
        }

        goto LABEL_9;
      }

LABEL_17:
      v11 = v8;
      goto LABEL_18;
    }

LABEL_9:
    if (v9 || v8 >= v5)
    {
      goto LABEL_17;
    }

    v11 = v8 + 4;
    while (1)
    {
      v12 = *(v11 - 1);
      if ((((v12 - a1[6]) | (v12 + a1[7]) | (*v11 - a1[6]) | (*v11 + a1[7])) & 0x80808080) != 0)
      {
        break;
      }

LABEL_15:
      v13 = v11 + 2;
      v14 = v11 + 1;
      v11 += 2;
      if (v14 >= v5)
      {
        v11 = v13 - 1;
        goto LABEL_18;
      }
    }

    if (!(*(v7 + BYTE1(v12)) | *(v7 + v12) | *(v7 + BYTE2(v12)) | *(v7 + (v12 >> 24))))
    {
      if (*(v7 + BYTE1(*v11)) | *(v7 + *v11) | *(v7 + BYTE2(*v11)) | *(v7 + (*v11 >> 24)))
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    --v11;
LABEL_18:
    if (v11 < v4)
    {
      v15 = v4 - v11;
      v16 = v11 - 1;
      v17 = *(a1 + 4) + *a1;
      v8 = v11;
      while (1)
      {
        v18 = *(v17 + *v8);
        if (v18 > 0xEF)
        {
          break;
        }

        ++v8;
        v17 = v6 + (v18 << a1[4]);
        ++v16;
        if (!--v15)
        {
          LODWORD(v8) = v4;
          goto LABEL_29;
        }
      }

      if (a1[1] <= v17 - v6)
      {
        do
        {
          v8 = v16;
          if (v16 <= a2)
          {
            break;
          }

          --v16;
        }

        while ((*v8 & 0xC0) == 0x80);
      }

      if (v18 != 253)
      {
        goto LABEL_39;
      }

      continue;
    }

    break;
  }

  LODWORD(v8) = v11;
  LODWORD(v17) = a1[8] + *a1;
LABEL_29:
  if (a1[1] <= v17 - v6)
  {
    if (v11 <= v4)
    {
      v19 = v4;
    }

    else
    {
      v19 = v11;
    }

    v20 = v19 - 1;
    do
    {
      v8 = v20;
      if (v20 <= a2)
      {
        break;
      }

      --v20;
    }

    while ((*v8 & 0xC0) == 0x80);
    v18 = 240;
  }

  else
  {
    v18 = 241;
  }

LABEL_39:
  *a4 = v8 - a2;
  return v18;
}

uint64_t google::protobuf::internal::UTF8GenericScanFastAscii(unsigned int *a1, unint64_t a2, int a3, _DWORD *a4)
{
  *a4 = 0;
  if (!a3)
  {
    return 241;
  }

  v8 = a2 + a3;
  v14 = 0;
  v9 = a2;
  do
  {
    v10 = v9 & 7;
    if ((v9 & 7) != 0 && v9 < v8)
    {
      v11 = v9 + 1;
      while ((*v9 & 0x80000000) == 0)
      {
        ++v9;
        v10 = v11 & 7;
        if ((v11 & 7) != 0)
        {
          ++v11;
          if (v9 < v8)
          {
            continue;
          }
        }

        goto LABEL_9;
      }
    }

    else
    {
LABEL_9:
      if (!v10)
      {
        while (v9 < v8 - 7 && ((*(v9 + 4) | *v9) & 0x80808080) == 0)
        {
          v9 += 8;
        }
      }
    }

    if (v9 < v8)
    {
      v12 = v8 - v9;
      while ((*v9 & 0x80000000) == 0)
      {
        ++v9;
        if (!--v12)
        {
          v9 = v8;
          break;
        }
      }
    }

    result = google::protobuf::internal::UTF8GenericScan(a1, (a2 + v9 - a2), a3 - (v9 - a2), &v14);
    v9 += v14;
  }

  while (result == 253);
  *a4 = v9 - a2;
  return result;
}

BOOL google::protobuf::internal::IsStructurallyValidUTF8(google::protobuf::internal *this, const char *a2)
{
  v2 = a2;
  v4 = 0;
  google::protobuf::internal::UTF8GenericScanFastAscii(google::protobuf::internal::utf8acceptnonsurrogates_obj, this, a2, &v4);
  return v4 == v2;
}

uint64_t google::protobuf::internal::UTF8SpnStructurallyValid(uint64_t a1)
{
  v2 = 0;
  google::protobuf::internal::UTF8GenericScanFastAscii(google::protobuf::internal::utf8acceptnonsurrogates_obj, *a1, *(a1 + 8), &v2);
  return v2;
}

char *google::protobuf::internal::UTF8CoerceToStructurallyValid(char **a1, char *a2, char a3)
{
  v5 = *a1;
  v6 = a1[1];
  __len = 0;
  google::protobuf::internal::UTF8GenericScanFastAscii(google::protobuf::internal::utf8acceptnonsurrogates_obj, v5, v6, &__len);
  v7 = __len;
  if (__len != v6)
  {
    memmove(a2, v5, __len);
    if (v6 > v7)
    {
      v8 = &v5[v6];
      v9 = &v5[v7];
      v10 = &a2[v7];
      do
      {
        *v10 = a3;
        v11 = v10 + 1;
        v12 = v9 + 1;
        __len_4 = 0;
        google::protobuf::internal::UTF8GenericScanFastAscii(google::protobuf::internal::utf8acceptnonsurrogates_obj, (v9 + 1), v8 - (v9 + 1), &__len_4);
        v13 = __len_4;
        memmove(v11, v12, __len_4);
        v9 = &v12[v13];
        v10 = &v11[v13];
      }

      while (&v12[v13] < v8);
    }

    return a2;
  }

  return v5;
}

uint64_t google::protobuf::internal::WireFormatLite::SkipField(google::protobuf::internal::WireFormatLite *this, google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  if (a2 < 8)
  {
    return 0;
  }

  v4 = a2;
  v3 = 0;
  v6 = v4 & 7;
  if (v6 <= 1)
  {
    if ((v4 & 7) == 0)
    {
      v13 = *this;
      if (*this >= *(this + 1) || *v13 < 0)
      {
        google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
        return v3;
      }

      v7 = (v13 + 1);
      goto LABEL_24;
    }

    if (v6 != 1)
    {
      return v3;
    }

    v18 = 0;
    if ((*(this + 2) - *this) >= 8)
    {
      v7 = *this + 8;
      goto LABEL_24;
    }

    return google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v18);
  }

  if (v6 != 2)
  {
    if (v6 == 3)
    {
      v10 = *(this + 13);
      v11 = __OFSUB__(v10--, 1);
      *(this + 13) = v10;
      if (v10 < 0 == v11 && google::protobuf::internal::WireFormatLite::SkipMessage(this, 0, a3))
      {
        v12 = *(this + 13);
        if (v12 < *(this + 14))
        {
          *(this + 13) = v12 + 1;
        }

        return *(this + 8) == (v4 & 0xFFFFFFF8 | 4);
      }

      return 0;
    }

    if (v6 != 5)
    {
      return v3;
    }

    v17 = 0;
    if ((*(this + 2) - *this) >= 4)
    {
      v7 = *this + 4;
LABEL_24:
      *this = v7;
      return 1;
    }

    return google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v17);
  }

  v8 = *this;
  if (*this >= *(this + 1))
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8;
    if ((*v8 & 0x80000000) == 0)
    {
      *this = v8 + 1;
      goto LABEL_29;
    }
  }

  Varint32Fallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v9);
  v9 = Varint32Fallback;
  if (Varint32Fallback < 0)
  {
    return 0;
  }

LABEL_29:

  return google::protobuf::io::CodedInputStream::Skip(this, v9);
}

uint64_t google::protobuf::internal::WireFormatLite::SkipMessage(char **this, google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  do
  {
    v4 = *this;
    if (*this >= this[1])
    {
      TagFallback = 0;
    }

    else
    {
      TagFallback = *v4;
      if ((*v4 & 0x80000000) == 0)
      {
        *(this + 8) = TagFallback;
        *this = v4 + 1;
        goto LABEL_6;
      }
    }

    TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(this, TagFallback);
    *(this + 8) = TagFallback;
LABEL_6:
    if (TagFallback)
    {
      v6 = (TagFallback & 7) == 4;
    }

    else
    {
      v6 = 1;
    }

    v7 = v6;
  }

  while (!v6 && (google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return v7;
}

BOOL google::protobuf::internal::WireFormatLite::SkipField(unint64_t **this, google::protobuf::io::CodedInputStream *a2, google::protobuf::io::CodedOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  if (a2 < 8)
  {
    return 0;
  }

  v6 = a2;
  v4 = 0;
  v8 = a2 & 7;
  if (v8 <= 1)
  {
    if ((a2 & 7) != 0)
    {
      if (v8 != 1)
      {
        return v4;
      }

      __p.__r_.__value_.__r.__words[0] = 0;
      v14 = *this;
      if ((*(this + 2) - *this) < 8)
      {
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &__p))
        {
          return 0;
        }
      }

      else
      {
        __p.__r_.__value_.__r.__words[0] = *v14;
        *this = v14 + 1;
      }

      if (*(a3 + 4) < 5)
      {
        google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a3, v6);
      }

      else
      {
        v15 = *(a3 + 1);
        if (v6 < 0x80)
        {
          LOBYTE(v17) = v6;
          v16 = *(a3 + 1);
        }

        else
        {
          v16 = *(a3 + 1);
          do
          {
            *v16++ = v6 | 0x80;
            v17 = v6 >> 7;
            v18 = v6 >> 14;
            v6 >>= 7;
          }

          while (v18);
        }

        *v16 = v17;
        v40 = v16 - v15 + 1;
        *(a3 + 1) += v40;
        *(a3 + 4) -= v40;
      }

      google::protobuf::io::CodedOutputStream::WriteLittleEndian64(a3, __p.__r_.__value_.__l.__data_);
      return 1;
    }

    v26 = *this;
    if (*this >= this[1] || (v27 = *v26, (v27 & 0x8000000000000000) != 0))
    {
      Varint64Fallback = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
      if ((v29 & 1) == 0)
      {
        return 0;
      }

      v27 = Varint64Fallback;
    }

    else
    {
      *this = (v26 + 1);
    }

    if (*(a3 + 4) < 5)
    {
      google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a3, v6);
      v34 = *(a3 + 4);
    }

    else
    {
      v30 = *(a3 + 1);
      if (v6 < 0x80)
      {
        LOBYTE(v32) = v6;
        v31 = *(a3 + 1);
      }

      else
      {
        v31 = *(a3 + 1);
        do
        {
          *v31++ = v6 | 0x80;
          v32 = v6 >> 7;
          v33 = v6 >> 14;
          v6 >>= 7;
        }

        while (v33);
      }

      *v31 = v32;
      v41 = v31 - v30 + 1;
      *(a3 + 1) += v41;
      v34 = *(a3 + 4) - v41;
      *(a3 + 4) = v34;
    }

    if (v34 < 10)
    {
      google::protobuf::io::CodedOutputStream::WriteVarint64SlowPath(a3, v27);
    }

    else
    {
      v42 = *(a3 + 1);
      if (v27 < 0x80)
      {
        LOBYTE(v44) = v27;
        v43 = *(a3 + 1);
      }

      else
      {
        v43 = *(a3 + 1);
        do
        {
          *v43++ = v27 | 0x80;
          v44 = v27 >> 7;
          v45 = v27 >> 14;
          v27 >>= 7;
        }

        while (v45);
      }

      *v43 = v44;
      v46 = v43 - v42 + 1;
      *(a3 + 1) += v46;
      *(a3 + 4) -= v46;
    }

    return 1;
  }

  if (v8 == 2)
  {
    v19 = *this;
    if (*this >= this[1])
    {
      LODWORD(Varint32Fallback) = 0;
    }

    else
    {
      Varint32Fallback = *v19;
      if ((*v19 & 0x80000000) == 0)
      {
        *this = (v19 + 1);
LABEL_72:
        if (*(a3 + 4) < 5)
        {
          google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a3, v6);
          v52 = *(a3 + 4);
        }

        else
        {
          v48 = *(a3 + 1);
          if (v6 < 0x80)
          {
            LOBYTE(v50) = v6;
            v49 = *(a3 + 1);
          }

          else
          {
            v49 = *(a3 + 1);
            do
            {
              *v49++ = v6 | 0x80;
              v50 = v6 >> 7;
              v51 = v6 >> 14;
              v6 >>= 7;
            }

            while (v51);
          }

          *v49 = v50;
          v53 = v49 - v48 + 1;
          *(a3 + 1) += v53;
          v52 = *(a3 + 4) - v53;
          *(a3 + 4) = v52;
        }

        if (v52 < 5)
        {
          google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a3, Varint32Fallback);
        }

        else
        {
          v54 = *(a3 + 1);
          if (Varint32Fallback < 0x80)
          {
            LOBYTE(v57) = Varint32Fallback;
            v55 = *(a3 + 1);
          }

          else
          {
            v55 = *(a3 + 1);
            v56 = Varint32Fallback;
            do
            {
              *v55++ = v56 | 0x80;
              v57 = v56 >> 7;
              v58 = v56 >> 14;
              v56 >>= 7;
            }

            while (v58);
          }

          *v55 = v57;
          v59 = v55 - v54 + 1;
          *(a3 + 1) += v59;
          *(a3 + 4) -= v59;
        }

        memset(&__p, 0, sizeof(__p));
        v4 = google::protobuf::io::CodedInputStream::ReadString(this, &__p, Varint32Fallback);
        if (v4)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v61 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v61 = __p.__r_.__value_.__r.__words[1];
          }

          google::protobuf::io::CodedOutputStream::WriteRaw(a3, p_p, v61);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        return v4;
      }
    }

    Varint32Fallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, Varint32Fallback);
    if (Varint32Fallback < 0)
    {
      return 0;
    }

    goto LABEL_72;
  }

  if (v8 != 3)
  {
    if (v8 != 5)
    {
      return v4;
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 0;
    v9 = *this;
    if ((*(this + 2) - *this) >= 4)
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = *v9;
      *this = (v9 + 4);
LABEL_9:
      if (*(a3 + 4) < 5)
      {
        google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a3, v6);
      }

      else
      {
        v10 = *(a3 + 1);
        if (v6 < 0x80)
        {
          LOBYTE(v12) = v6;
          v11 = *(a3 + 1);
        }

        else
        {
          v11 = *(a3 + 1);
          do
          {
            *v11++ = v6 | 0x80;
            v12 = v6 >> 7;
            v13 = v6 >> 14;
            v6 >>= 7;
          }

          while (v13);
        }

        *v11 = v12;
        v39 = v11 - v10 + 1;
        *(a3 + 1) += v39;
        *(a3 + 4) -= v39;
      }

      google::protobuf::io::CodedOutputStream::WriteLittleEndian32(a3, __p.__r_.__value_.__l.__data_);
      return 1;
    }

    if (google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &__p))
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (*(a3 + 4) < 5)
  {
    google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a3, a2);
  }

  else
  {
    v21 = *(a3 + 1);
    if (a2 < 0x80)
    {
      LOBYTE(v24) = a2;
      v22 = *(a3 + 1);
    }

    else
    {
      v22 = *(a3 + 1);
      v23 = a2;
      do
      {
        *v22++ = v23 | 0x80;
        v24 = v23 >> 7;
        v25 = v23 >> 14;
        v23 >>= 7;
      }

      while (v25);
    }

    *v22 = v24;
    v35 = v22 - v21 + 1;
    *(a3 + 1) += v35;
    *(a3 + 4) -= v35;
  }

  v36 = *(this + 13);
  v37 = __OFSUB__(v36--, 1);
  *(this + 13) = v36;
  if (v36 < 0 != v37 || !google::protobuf::internal::WireFormatLite::SkipMessage(this, a3, a3, a4))
  {
    return 0;
  }

  v38 = *(this + 13);
  if (v38 < *(this + 14))
  {
    *(this + 13) = v38 + 1;
  }

  return *(this + 8) == (v6 & 0xFFFFFFF8 | 4);
}

void sub_21857B8BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL google::protobuf::internal::WireFormatLite::SkipMessage(char **this, google::protobuf::io::CodedInputStream *a2, google::protobuf::io::CodedOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  while (1)
  {
    v6 = *this;
    if (*this >= this[1])
    {
      TagFallback = 0;
    }

    else
    {
      TagFallback = *v6;
      if ((*v6 & 0x80000000) == 0)
      {
        *(this + 8) = TagFallback;
        *this = v6 + 1;
        goto LABEL_6;
      }
    }

    TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(this, TagFallback);
    *(this + 8) = TagFallback;
LABEL_6:
    v8 = TagFallback == 0;
    if (!TagFallback)
    {
      return v8;
    }

    if ((TagFallback & 7) == 4)
    {
      break;
    }

    if ((google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a2, a4) & 1) == 0)
    {
      return v8;
    }
  }

  if (*(a2 + 4) < 5)
  {
    google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a2, TagFallback);
  }

  else
  {
    v9 = *(a2 + 1);
    if (TagFallback < 0x80)
    {
      LOBYTE(v11) = TagFallback;
      v10 = *(a2 + 1);
    }

    else
    {
      v10 = *(a2 + 1);
      do
      {
        *v10++ = TagFallback | 0x80;
        v11 = TagFallback >> 7;
        v12 = TagFallback >> 14;
        LODWORD(TagFallback) = TagFallback >> 7;
      }

      while (v12);
    }

    *v10 = v11;
    v13 = v10 - v9 + 1;
    *(a2 + 1) += v13;
    *(a2 + 4) -= v13;
  }

  return 1;
}

uint64_t google::protobuf::internal::CodedOutputStreamFieldSkipper::SkipUnknownEnum(google::protobuf::internal::CodedOutputStreamFieldSkipper *this, unsigned int a2, signed int a3)
{
  v5 = *(this + 1);
  if (*(v5 + 16) < 5)
  {
    google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(v5, a2);
  }

  else
  {
    v6 = *(v5 + 8);
    if (a2 < 0x80)
    {
      LOBYTE(v8) = a2;
      v7 = *(v5 + 8);
    }

    else
    {
      v7 = *(v5 + 8);
      do
      {
        *v7++ = a2 | 0x80;
        v8 = a2 >> 7;
        v9 = a2 >> 14;
        a2 >>= 7;
      }

      while (v9);
    }

    *v7 = v8;
    v10 = v7 - v6 + 1;
    *(v5 + 8) += v10;
    *(v5 + 16) -= v10;
  }

  result = *(this + 1);
  v12 = a3;
  if (*(result + 16) < 10)
  {

    return google::protobuf::io::CodedOutputStream::WriteVarint64SlowPath(result, a3);
  }

  else
  {
    v13 = *(result + 8);
    if (a3 < 0x80)
    {
      LOBYTE(v15) = a3;
      v14 = *(result + 8);
    }

    else
    {
      v14 = *(result + 8);
      do
      {
        *v14++ = v12 | 0x80;
        v15 = v12 >> 7;
        v16 = v12 >> 14;
        v12 >>= 7;
      }

      while (v16);
    }

    *v14 = v15;
    v17 = v14 - v13 + 1;
    *(result + 8) += v17;
    *(result + 16) -= v17;
  }

  return result;
}

uint64_t google::protobuf::internal::WireFormatLite::ReadPackedEnumNoInline(char **this, unsigned int (*a2)(uint64_t), uint64_t a3)
{
  v6 = *this;
  if (*this >= this[1])
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6;
    if ((*v6 & 0x80000000) == 0)
    {
      *this = v6 + 1;
      goto LABEL_6;
    }
  }

  Varint32Fallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v7);
  v7 = Varint32Fallback;
  if (Varint32Fallback < 0)
  {
    return 0;
  }

LABEL_6:
  v9 = google::protobuf::io::CodedInputStream::PushLimit(this, v7);
  if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
  {
    while (1)
    {
      v10 = *this;
      if (*this >= this[1])
      {
        break;
      }

      v11 = *v10;
      if (*v10 < 0)
      {
        goto LABEL_11;
      }

      *this = v10 + 1;
LABEL_12:
      if (!a2 || a2(v11))
      {
        v12 = *a3;
        if (*a3 == *(a3 + 4))
        {
          google::protobuf::RepeatedField<float>::Reserve(a3, v12 + 1);
          v12 = *a3;
        }

        v13 = *(a3 + 8) + 4 * v12;
        *a3 = v12 + 1;
        *(v13 + 8) = v11;
      }

      if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
      {
        goto LABEL_18;
      }
    }

    LODWORD(v11) = 0;
LABEL_11:
    v11 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v11);
    if (v11 < 0)
    {
      return 0;
    }

    goto LABEL_12;
  }

LABEL_18:
  google::protobuf::io::CodedInputStream::PopLimit(this, v9);
  return 1;
}

uint64_t google::protobuf::internal::WireFormatLite::ReadPackedEnumPreserveUnknowns(char **this, int a2, unsigned int (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v10 = *this;
  if (*this >= this[1])
  {
    v11 = 0;
  }

  else
  {
    v11 = *v10;
    if ((*v10 & 0x80000000) == 0)
    {
      *this = v10 + 1;
      goto LABEL_6;
    }
  }

  Varint32Fallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v11);
  v11 = Varint32Fallback;
  if (Varint32Fallback < 0)
  {
    return 0;
  }

LABEL_6:
  v13 = google::protobuf::io::CodedInputStream::PushLimit(this, v11);
  if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
  {
    v14 = 8 * a2;
    while (1)
    {
      v15 = *this;
      if (*this >= this[1])
      {
        break;
      }

      v16 = *v15;
      if (*v15 < 0)
      {
        goto LABEL_12;
      }

      *this = v15 + 1;
LABEL_13:
      if (a3 && !a3(v16))
      {
        if (*(a4 + 16) < 5)
        {
          google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a4, v14);
          v24 = *(a4 + 16);
        }

        else
        {
          v19 = *(a4 + 8);
          if (v14 < 0x80)
          {
            LOBYTE(v22) = v14;
            v20 = *(a4 + 8);
          }

          else
          {
            v20 = *(a4 + 8);
            v21 = v14;
            do
            {
              *v20++ = v21 | 0x80;
              v22 = v21 >> 7;
              v23 = v21 >> 14;
              v21 >>= 7;
            }

            while (v23);
          }

          *v20 = v22;
          v25 = v20 - v19 + 1;
          *(a4 + 8) += v25;
          v24 = *(a4 + 16) - v25;
          *(a4 + 16) = v24;
        }

        if (v24 < 5)
        {
          google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a4, v16);
        }

        else
        {
          v26 = *(a4 + 8);
          if (v16 < 0x80)
          {
            LOBYTE(v28) = v16;
            v27 = *(a4 + 8);
          }

          else
          {
            v27 = *(a4 + 8);
            do
            {
              *v27++ = v16 | 0x80;
              v28 = v16 >> 7;
              v29 = v16 >> 14;
              LODWORD(v16) = v16 >> 7;
            }

            while (v29);
          }

          *v27 = v28;
          v30 = v27 - v26 + 1;
          *(a4 + 8) += v30;
          *(a4 + 16) -= v30;
        }
      }

      else
      {
        v17 = *a5;
        if (*a5 == *(a5 + 4))
        {
          google::protobuf::RepeatedField<float>::Reserve(a5, v17 + 1);
          v17 = *a5;
        }

        v18 = *(a5 + 8) + 4 * v17;
        *a5 = v17 + 1;
        *(v18 + 8) = v16;
      }

      if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
      {
        goto LABEL_36;
      }
    }

    LODWORD(v16) = 0;
LABEL_12:
    v16 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v16);
    if (v16 < 0)
    {
      return 0;
    }

    goto LABEL_13;
  }

LABEL_36:
  google::protobuf::io::CodedInputStream::PopLimit(this, v13);
  return 1;
}

uint64_t google::protobuf::internal::WireFormatLite::WriteInt32(uint64_t this, signed int a2, google::protobuf::io::CodedOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = 8 * this;
  if (*(a3 + 4) < 5)
  {
    this = google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a3, v6);
    v11 = *(a3 + 4);
  }

  else
  {
    v7 = *(a3 + 1);
    if (v6 < 0x80)
    {
      LOBYTE(v9) = 8 * this;
      v8 = *(a3 + 1);
    }

    else
    {
      v8 = *(a3 + 1);
      do
      {
        *v8++ = v6 | 0x80;
        v9 = v6 >> 7;
        v10 = v6 >> 14;
        v6 >>= 7;
      }

      while (v10);
    }

    *v8 = v9;
    v12 = v8 - v7 + 1;
    *(a3 + 1) += v12;
    v11 = *(a3 + 4) - v12;
    *(a3 + 4) = v11;
  }

  v13 = a2;
  if (v11 < 10)
  {

    return google::protobuf::io::CodedOutputStream::WriteVarint64SlowPath(a3, a2);
  }

  else
  {
    v14 = *(a3 + 1);
    if (a2 < 0x80)
    {
      LOBYTE(v16) = a2;
      v15 = *(a3 + 1);
    }

    else
    {
      v15 = *(a3 + 1);
      do
      {
        *v15++ = v13 | 0x80;
        v16 = v13 >> 7;
        v17 = v13 >> 14;
        v13 >>= 7;
      }

      while (v17);
    }

    *v15 = v16;
    v18 = v15 - v14 + 1;
    *(a3 + 1) += v18;
    *(a3 + 4) -= v18;
  }

  return this;
}

uint64_t google::protobuf::internal::WireFormatLite::WriteInt64(uint64_t this, unint64_t a2, google::protobuf::io::CodedOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = 8 * this;
  if (*(a3 + 4) < 5)
  {
    this = google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a3, v6);
    v11 = *(a3 + 4);
  }

  else
  {
    v7 = *(a3 + 1);
    if (v6 < 0x80)
    {
      LOBYTE(v9) = 8 * this;
      v8 = *(a3 + 1);
    }

    else
    {
      v8 = *(a3 + 1);
      do
      {
        *v8++ = v6 | 0x80;
        v9 = v6 >> 7;
        v10 = v6 >> 14;
        v6 >>= 7;
      }

      while (v10);
    }

    *v8 = v9;
    v12 = v8 - v7 + 1;
    *(a3 + 1) += v12;
    v11 = *(a3 + 4) - v12;
    *(a3 + 4) = v11;
  }

  if (v11 < 10)
  {

    return google::protobuf::io::CodedOutputStream::WriteVarint64SlowPath(a3, a2);
  }

  else
  {
    v13 = *(a3 + 1);
    if (a2 < 0x80)
    {
      LOBYTE(v15) = a2;
      v14 = *(a3 + 1);
    }

    else
    {
      v14 = *(a3 + 1);
      do
      {
        *v14++ = a2 | 0x80;
        v15 = a2 >> 7;
        v16 = a2 >> 14;
        a2 >>= 7;
      }

      while (v16);
    }

    *v14 = v15;
    v17 = v14 - v13 + 1;
    *(a3 + 1) += v17;
    *(a3 + 4) -= v17;
  }

  return this;
}

uint64_t google::protobuf::internal::WireFormatLite::WriteUInt32(uint64_t this, unsigned int a2, google::protobuf::io::CodedOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = 8 * this;
  if (*(a3 + 4) < 5)
  {
    this = google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a3, v6);
    v11 = *(a3 + 4);
  }

  else
  {
    v7 = *(a3 + 1);
    if (v6 < 0x80)
    {
      LOBYTE(v9) = 8 * this;
      v8 = *(a3 + 1);
    }

    else
    {
      v8 = *(a3 + 1);
      do
      {
        *v8++ = v6 | 0x80;
        v9 = v6 >> 7;
        v10 = v6 >> 14;
        v6 >>= 7;
      }

      while (v10);
    }

    *v8 = v9;
    v12 = v8 - v7 + 1;
    *(a3 + 1) += v12;
    v11 = *(a3 + 4) - v12;
    *(a3 + 4) = v11;
  }

  if (v11 < 5)
  {

    return google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a3, a2);
  }

  else
  {
    v13 = *(a3 + 1);
    if (a2 < 0x80)
    {
      LOBYTE(v15) = a2;
      v14 = *(a3 + 1);
    }

    else
    {
      v14 = *(a3 + 1);
      do
      {
        *v14++ = a2 | 0x80;
        v15 = a2 >> 7;
        v16 = a2 >> 14;
        a2 >>= 7;
      }

      while (v16);
    }

    *v14 = v15;
    v17 = v14 - v13 + 1;
    *(a3 + 1) += v17;
    *(a3 + 4) -= v17;
  }

  return this;
}

uint64_t google::protobuf::internal::WireFormatLite::WriteSInt32(uint64_t this, int a2, google::protobuf::io::CodedOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = 8 * this;
  if (*(a3 + 4) < 5)
  {
    this = google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a3, v6);
    v11 = *(a3 + 4);
  }

  else
  {
    v7 = *(a3 + 1);
    if (v6 < 0x80)
    {
      LOBYTE(v9) = 8 * this;
      v8 = *(a3 + 1);
    }

    else
    {
      v8 = *(a3 + 1);
      do
      {
        *v8++ = v6 | 0x80;
        v9 = v6 >> 7;
        v10 = v6 >> 14;
        v6 >>= 7;
      }

      while (v10);
    }

    *v8 = v9;
    v12 = v8 - v7 + 1;
    *(a3 + 1) += v12;
    v11 = *(a3 + 4) - v12;
    *(a3 + 4) = v11;
  }

  v13 = (2 * a2) ^ (a2 >> 31);
  if (v11 < 5)
  {

    return google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a3, v13);
  }

  else
  {
    v14 = *(a3 + 1);
    if (v13 < 0x80)
    {
      v16 = (2 * a2) ^ (a2 >> 31);
      v15 = *(a3 + 1);
    }

    else
    {
      v15 = *(a3 + 1);
      do
      {
        *v15++ = v13 | 0x80;
        v16 = v13 >> 7;
        v17 = v13 >> 14;
        v13 >>= 7;
      }

      while (v17);
    }

    *v15 = v16;
    v18 = v15 - v14 + 1;
    *(a3 + 1) += v18;
    *(a3 + 4) -= v18;
  }

  return this;
}

uint64_t google::protobuf::internal::WireFormatLite::WriteSInt64(uint64_t this, uint64_t a2, google::protobuf::io::CodedOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = 8 * this;
  if (*(a3 + 4) < 5)
  {
    this = google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a3, v6);
    v11 = *(a3 + 4);
  }

  else
  {
    v7 = *(a3 + 1);
    if (v6 < 0x80)
    {
      LOBYTE(v9) = 8 * this;
      v8 = *(a3 + 1);
    }

    else
    {
      v8 = *(a3 + 1);
      do
      {
        *v8++ = v6 | 0x80;
        v9 = v6 >> 7;
        v10 = v6 >> 14;
        v6 >>= 7;
      }

      while (v10);
    }

    *v8 = v9;
    v12 = v8 - v7 + 1;
    *(a3 + 1) += v12;
    v11 = *(a3 + 4) - v12;
    *(a3 + 4) = v11;
  }

  v13 = (2 * a2) ^ (a2 >> 63);
  if (v11 < 10)
  {

    return google::protobuf::io::CodedOutputStream::WriteVarint64SlowPath(a3, v13);
  }

  else
  {
    v14 = *(a3 + 1);
    if (v13 < 0x80)
    {
      v16 = (2 * a2) ^ (a2 >> 63);
      v15 = *(a3 + 1);
    }

    else
    {
      v15 = *(a3 + 1);
      do
      {
        *v15++ = v13 | 0x80;
        v16 = v13 >> 7;
        v17 = v13 >> 14;
        v13 >>= 7;
      }

      while (v17);
    }

    *v15 = v16;
    v18 = v15 - v14 + 1;
    *(a3 + 1) += v18;
    *(a3 + 4) -= v18;
  }

  return this;
}

uint64_t google::protobuf::internal::WireFormatLite::WriteFixed32(google::protobuf::internal::WireFormatLite *this, int a2, google::protobuf::io::CodedOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = (8 * this) | 5;
  if (*(a3 + 4) < 5)
  {
    google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a3, v6);
  }

  else
  {
    v7 = *(a3 + 1);
    if ((8 * this) < 0x80)
    {
      LOBYTE(v9) = (8 * this) | 5;
      v8 = *(a3 + 1);
    }

    else
    {
      v8 = *(a3 + 1);
      do
      {
        *v8++ = v6 | 0x80;
        v9 = v6 >> 7;
        v10 = v6 >> 14;
        v6 >>= 7;
      }

      while (v10);
    }

    *v8 = v9;
    v11 = v8 - v7 + 1;
    *(a3 + 1) += v11;
    *(a3 + 4) -= v11;
  }

  return google::protobuf::io::CodedOutputStream::WriteLittleEndian32(a3, a2);
}

uint64_t google::protobuf::internal::WireFormatLite::WriteFixed64(google::protobuf::internal::WireFormatLite *this, uint64_t a2, google::protobuf::io::CodedOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = (8 * this) | 1;
  if (*(a3 + 4) < 5)
  {
    google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a3, v6);
  }

  else
  {
    v7 = *(a3 + 1);
    if ((8 * this) < 0x80)
    {
      LOBYTE(v9) = (8 * this) | 1;
      v8 = *(a3 + 1);
    }

    else
    {
      v8 = *(a3 + 1);
      do
      {
        *v8++ = v6 | 0x80;
        v9 = v6 >> 7;
        v10 = v6 >> 14;
        v6 >>= 7;
      }

      while (v10);
    }

    *v8 = v9;
    v11 = v8 - v7 + 1;
    *(a3 + 1) += v11;
    *(a3 + 4) -= v11;
  }

  return google::protobuf::io::CodedOutputStream::WriteLittleEndian64(a3, a2);
}

uint64_t google::protobuf::internal::WireFormatLite::WriteFloat(google::protobuf::internal::WireFormatLite *this, google::protobuf::io::CodedOutputStream *a2, float a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = (8 * this) | 5;
  if (*(a2 + 4) < 5)
  {
    google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a2, v6);
  }

  else
  {
    v7 = *(a2 + 1);
    if ((8 * this) < 0x80)
    {
      LOBYTE(v9) = (8 * this) | 5;
      v8 = *(a2 + 1);
    }

    else
    {
      v8 = *(a2 + 1);
      do
      {
        *v8++ = v6 | 0x80;
        v9 = v6 >> 7;
        v10 = v6 >> 14;
        v6 >>= 7;
      }

      while (v10);
    }

    *v8 = v9;
    v11 = v8 - v7 + 1;
    *(a2 + 1) += v11;
    *(a2 + 4) -= v11;
  }

  return google::protobuf::io::CodedOutputStream::WriteLittleEndian32(a2, SLODWORD(a3));
}

uint64_t google::protobuf::internal::WireFormatLite::WriteDouble(google::protobuf::internal::WireFormatLite *this, google::protobuf::io::CodedOutputStream *a2, double a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = (8 * this) | 1;
  if (*(a2 + 4) < 5)
  {
    google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a2, v6);
  }

  else
  {
    v7 = *(a2 + 1);
    if ((8 * this) < 0x80)
    {
      LOBYTE(v9) = (8 * this) | 1;
      v8 = *(a2 + 1);
    }

    else
    {
      v8 = *(a2 + 1);
      do
      {
        *v8++ = v6 | 0x80;
        v9 = v6 >> 7;
        v10 = v6 >> 14;
        v6 >>= 7;
      }

      while (v10);
    }

    *v8 = v9;
    v11 = v8 - v7 + 1;
    *(a2 + 1) += v11;
    *(a2 + 4) -= v11;
  }

  return google::protobuf::io::CodedOutputStream::WriteLittleEndian64(a2, *&a3);
}

uint64_t google::protobuf::internal::WireFormatLite::WriteBool(uint64_t this, unsigned int a2, google::protobuf::io::CodedOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = 8 * this;
  if (*(a3 + 4) < 5)
  {
    this = google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a3, v6);
    v11 = *(a3 + 4);
  }

  else
  {
    v7 = *(a3 + 1);
    if (v6 < 0x80)
    {
      LOBYTE(v9) = 8 * this;
      v8 = *(a3 + 1);
    }

    else
    {
      v8 = *(a3 + 1);
      do
      {
        *v8++ = v6 | 0x80;
        v9 = v6 >> 7;
        v10 = v6 >> 14;
        v6 >>= 7;
      }

      while (v10);
    }

    *v8 = v9;
    v12 = v8 - v7 + 1;
    *(a3 + 1) += v12;
    v11 = *(a3 + 4) - v12;
    *(a3 + 4) = v11;
  }

  if (v11 < 5)
  {

    return google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a3, a2);
  }

  else
  {
    *(*(a3 + 1))++ = a2;
    --*(a3 + 4);
  }

  return this;
}

uint64_t google::protobuf::internal::WireFormatLite::WriteString(int a1, uint64_t a2, google::protobuf::io::CodedOutputStream *this)
{
  v5 = (8 * a1) | 2;
  if (*(this + 4) < 5)
  {
    google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(this, v5);
  }

  else
  {
    v6 = *(this + 1);
    if ((8 * a1) < 0x80)
    {
      LOBYTE(v8) = (8 * a1) | 2;
      v7 = *(this + 1);
    }

    else
    {
      v7 = *(this + 1);
      do
      {
        *v7++ = v5 | 0x80;
        v8 = v5 >> 7;
        v9 = v5 >> 14;
        v5 >>= 7;
      }

      while (v9);
    }

    *v7 = v8;
    v10 = v7 - v6 + 1;
    *(this + 1) += v10;
    *(this + 4) -= v10;
  }

  v11 = *(a2 + 23);
  if (v11 < 0 && *(a2 + 8) >> 31)
  {
    google::protobuf::internal::LogMessage::LogMessage(v25, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/wire_format_lite.cc", 510);
    v12 = google::protobuf::internal::LogMessage::operator<<(v25, "CHECK failed: (value.size()) <= (kint32max): ");
    google::protobuf::internal::LogFinisher::operator=(&v24, v12, v13);
    google::protobuf::internal::LogMessage::~LogMessage(&v25[0].__r_.__value_.__l.__data_);
    LOBYTE(v11) = *(a2 + 23);
  }

  if ((v11 & 0x80u) == 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = *(a2 + 8);
  }

  if (*(this + 4) < 5)
  {
    google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(this, v14);
  }

  else
  {
    v15 = *(this + 1);
    if (v14 < 0x80)
    {
      LOBYTE(v17) = v14;
      v16 = *(this + 1);
    }

    else
    {
      v16 = *(this + 1);
      do
      {
        *v16++ = v14 | 0x80;
        v17 = v14 >> 7;
        v18 = v14 >> 14;
        v14 >>= 7;
      }

      while (v18);
    }

    *v16 = v17;
    v19 = v16 - v15 + 1;
    *(this + 1) += v19;
    *(this + 4) -= v19;
  }

  v20 = *(a2 + 23);
  if (v20 >= 0)
  {
    v21 = a2;
  }

  else
  {
    v21 = *a2;
  }

  if (v20 >= 0)
  {
    v22 = *(a2 + 23);
  }

  else
  {
    v22 = *(a2 + 8);
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(this, v21, v22);
}

void sub_21857CA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(int a1, uint64_t a2, google::protobuf::io::CodedOutputStream *this)
{
  v5 = (8 * a1) | 2;
  if (*(this + 4) < 5)
  {
    google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(this, v5);
  }

  else
  {
    v6 = *(this + 1);
    if ((8 * a1) < 0x80)
    {
      LOBYTE(v8) = (8 * a1) | 2;
      v7 = *(this + 1);
    }

    else
    {
      v7 = *(this + 1);
      do
      {
        *v7++ = v5 | 0x80;
        v8 = v5 >> 7;
        v9 = v5 >> 14;
        v5 >>= 7;
      }

      while (v9);
    }

    *v7 = v8;
    v10 = v7 - v6 + 1;
    *(this + 1) += v10;
    *(this + 4) -= v10;
  }

  v11 = *(a2 + 23);
  if (v11 < 0 && *(a2 + 8) >> 31)
  {
    google::protobuf::internal::LogMessage::LogMessage(v25, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/wire_format_lite.cc", 519);
    v12 = google::protobuf::internal::LogMessage::operator<<(v25, "CHECK failed: (value.size()) <= (kint32max): ");
    google::protobuf::internal::LogFinisher::operator=(&v24, v12, v13);
    google::protobuf::internal::LogMessage::~LogMessage(&v25[0].__r_.__value_.__l.__data_);
    LOBYTE(v11) = *(a2 + 23);
  }

  if ((v11 & 0x80u) == 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = *(a2 + 8);
  }

  if (*(this + 4) < 5)
  {
    google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(this, v14);
  }

  else
  {
    v15 = *(this + 1);
    if (v14 < 0x80)
    {
      LOBYTE(v17) = v14;
      v16 = *(this + 1);
    }

    else
    {
      v16 = *(this + 1);
      do
      {
        *v16++ = v14 | 0x80;
        v17 = v14 >> 7;
        v18 = v14 >> 14;
        v14 >>= 7;
      }

      while (v18);
    }

    *v16 = v17;
    v19 = v16 - v15 + 1;
    *(this + 1) += v19;
    *(this + 4) -= v19;
  }

  v20 = *(a2 + 23);
  if (v20 >= 0)
  {
    v21 = a2;
  }

  else
  {
    v21 = *a2;
  }

  if (v20 >= 0)
  {
    v22 = *(a2 + 23);
  }

  else
  {
    v22 = *(a2 + 8);
  }

  if (*(this + 25) == 1)
  {
    return google::protobuf::io::CodedOutputStream::WriteAliasedRaw(this, v21, v22);
  }

  else
  {
    return google::protobuf::io::CodedOutputStream::WriteRaw(this, v21, v22);
  }
}

void sub_21857CBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::WireFormatLite::WriteBytes(int a1, uint64_t a2, google::protobuf::io::CodedOutputStream *this)
{
  v5 = (8 * a1) | 2;
  if (*(this + 4) < 5)
  {
    google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(this, v5);
  }

  else
  {
    v6 = *(this + 1);
    if ((8 * a1) < 0x80)
    {
      LOBYTE(v8) = (8 * a1) | 2;
      v7 = *(this + 1);
    }

    else
    {
      v7 = *(this + 1);
      do
      {
        *v7++ = v5 | 0x80;
        v8 = v5 >> 7;
        v9 = v5 >> 14;
        v5 >>= 7;
      }

      while (v9);
    }

    *v7 = v8;
    v10 = v7 - v6 + 1;
    *(this + 1) += v10;
    *(this + 4) -= v10;
  }

  v11 = *(a2 + 23);
  if (v11 < 0 && *(a2 + 8) >> 31)
  {
    google::protobuf::internal::LogMessage::LogMessage(v25, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/wire_format_lite.cc", 526);
    v12 = google::protobuf::internal::LogMessage::operator<<(v25, "CHECK failed: (value.size()) <= (kint32max): ");
    google::protobuf::internal::LogFinisher::operator=(&v24, v12, v13);
    google::protobuf::internal::LogMessage::~LogMessage(&v25[0].__r_.__value_.__l.__data_);
    LOBYTE(v11) = *(a2 + 23);
  }

  if ((v11 & 0x80u) == 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = *(a2 + 8);
  }

  if (*(this + 4) < 5)
  {
    google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(this, v14);
  }

  else
  {
    v15 = *(this + 1);
    if (v14 < 0x80)
    {
      LOBYTE(v17) = v14;
      v16 = *(this + 1);
    }

    else
    {
      v16 = *(this + 1);
      do
      {
        *v16++ = v14 | 0x80;
        v17 = v14 >> 7;
        v18 = v14 >> 14;
        v14 >>= 7;
      }

      while (v18);
    }

    *v16 = v17;
    v19 = v16 - v15 + 1;
    *(this + 1) += v19;
    *(this + 4) -= v19;
  }

  v20 = *(a2 + 23);
  if (v20 >= 0)
  {
    v21 = a2;
  }

  else
  {
    v21 = *a2;
  }

  if (v20 >= 0)
  {
    v22 = *(a2 + 23);
  }

  else
  {
    v22 = *(a2 + 8);
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(this, v21, v22);
}

void sub_21857CD98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(int a1, uint64_t a2, google::protobuf::io::CodedOutputStream *this)
{
  v5 = (8 * a1) | 2;
  if (*(this + 4) < 5)
  {
    google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(this, v5);
  }

  else
  {
    v6 = *(this + 1);
    if ((8 * a1) < 0x80)
    {
      LOBYTE(v8) = (8 * a1) | 2;
      v7 = *(this + 1);
    }

    else
    {
      v7 = *(this + 1);
      do
      {
        *v7++ = v5 | 0x80;
        v8 = v5 >> 7;
        v9 = v5 >> 14;
        v5 >>= 7;
      }

      while (v9);
    }

    *v7 = v8;
    v10 = v7 - v6 + 1;
    *(this + 1) += v10;
    *(this + 4) -= v10;
  }

  v11 = *(a2 + 23);
  if (v11 < 0 && *(a2 + 8) >> 31)
  {
    google::protobuf::internal::LogMessage::LogMessage(v25, 3, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/wire_format_lite.cc", 534);
    v12 = google::protobuf::internal::LogMessage::operator<<(v25, "CHECK failed: (value.size()) <= (kint32max): ");
    google::protobuf::internal::LogFinisher::operator=(&v24, v12, v13);
    google::protobuf::internal::LogMessage::~LogMessage(&v25[0].__r_.__value_.__l.__data_);
    LOBYTE(v11) = *(a2 + 23);
  }

  if ((v11 & 0x80u) == 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = *(a2 + 8);
  }

  if (*(this + 4) < 5)
  {
    google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(this, v14);
  }

  else
  {
    v15 = *(this + 1);
    if (v14 < 0x80)
    {
      LOBYTE(v17) = v14;
      v16 = *(this + 1);
    }

    else
    {
      v16 = *(this + 1);
      do
      {
        *v16++ = v14 | 0x80;
        v17 = v14 >> 7;
        v18 = v14 >> 14;
        v14 >>= 7;
      }

      while (v18);
    }

    *v16 = v17;
    v19 = v16 - v15 + 1;
    *(this + 1) += v19;
    *(this + 4) -= v19;
  }

  v20 = *(a2 + 23);
  if (v20 >= 0)
  {
    v21 = a2;
  }

  else
  {
    v21 = *a2;
  }

  if (v20 >= 0)
  {
    v22 = *(a2 + 23);
  }

  else
  {
    v22 = *(a2 + 8);
  }

  if (*(this + 25) == 1)
  {
    return google::protobuf::io::CodedOutputStream::WriteAliasedRaw(this, v21, v22);
  }

  else
  {
    return google::protobuf::io::CodedOutputStream::WriteRaw(this, v21, v22);
  }
}

void sub_21857CF68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::WireFormatLite::WriteGroup(google::protobuf::internal::WireFormatLite *this, uint64_t a2, const google::protobuf::MessageLite *a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = 8 * this;
  v7 = (8 * this) | 3;
  if (*(a3 + 4) < 5)
  {
    google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a3, v7);
  }

  else
  {
    v8 = *(a3 + 1);
    if (v6 < 0x80)
    {
      LOBYTE(v10) = (8 * this) | 3;
      v9 = *(a3 + 1);
    }

    else
    {
      v9 = *(a3 + 1);
      do
      {
        *v9++ = v7 | 0x80;
        v10 = v7 >> 7;
        v11 = v7 >> 14;
        v7 >>= 7;
      }

      while (v11);
    }

    *v9 = v10;
    v12 = v9 - v8 + 1;
    *(a3 + 1) += v12;
    *(a3 + 4) -= v12;
  }

  result = (*(*a2 + 104))(a2, a3);
  v14 = v6 | 4;
  if (*(a3 + 4) < 5)
  {

    return google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a3, v14);
  }

  else
  {
    v15 = *(a3 + 1);
    if (v6 < 0x80)
    {
      LOBYTE(v17) = v6 | 4;
      v16 = *(a3 + 1);
    }

    else
    {
      v16 = *(a3 + 1);
      do
      {
        *v16++ = v14 | 0x80;
        v17 = v14 >> 7;
        v18 = v14 >> 14;
        v14 >>= 7;
      }

      while (v18);
    }

    *v16 = v17;
    v19 = v16 - v15 + 1;
    *(a3 + 1) += v19;
    *(a3 + 4) -= v19;
  }

  return result;
}

uint64_t google::protobuf::internal::WireFormatLite::WriteMessage(google::protobuf::internal::WireFormatLite *this, uint64_t a2, const google::protobuf::MessageLite *a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = (8 * this) | 2;
  if (*(a3 + 4) < 5)
  {
    google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a3, v6);
  }

  else
  {
    v7 = *(a3 + 1);
    if ((8 * this) < 0x80)
    {
      LOBYTE(v9) = (8 * this) | 2;
      v8 = *(a3 + 1);
    }

    else
    {
      v8 = *(a3 + 1);
      do
      {
        *v8++ = v6 | 0x80;
        v9 = v6 >> 7;
        v10 = v6 >> 14;
        v6 >>= 7;
      }

      while (v10);
    }

    *v8 = v9;
    v11 = v8 - v7 + 1;
    *(a3 + 1) += v11;
    *(a3 + 4) -= v11;
  }

  v12 = (*(*a2 + 120))(a2);
  v13 = v12;
  if (*(a3 + 4) < 5)
  {
    google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a3, v12);
  }

  else
  {
    v14 = *(a3 + 1);
    if (v12 < 0x80)
    {
      LOBYTE(v16) = v12;
      v15 = *(a3 + 1);
    }

    else
    {
      v15 = *(a3 + 1);
      do
      {
        *v15++ = v13 | 0x80;
        v16 = v13 >> 7;
        v17 = v13 >> 14;
        v13 >>= 7;
      }

      while (v17);
    }

    *v15 = v16;
    v18 = v15 - v14 + 1;
    *(a3 + 1) += v18;
    *(a3 + 4) -= v18;
  }

  v19 = *(*a2 + 104);

  return v19(a2, a3);
}

uint64_t google::protobuf::internal::WireFormatLite::WriteGroupMaybeToArray(google::protobuf::internal::WireFormatLite *this, uint64_t a2, const google::protobuf::MessageLite *a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = 8 * this;
  v7 = (8 * this) | 3;
  if (*(a3 + 4) < 5)
  {
    google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a3, v7);
  }

  else
  {
    v8 = *(a3 + 1);
    if (v6 < 0x80)
    {
      LOBYTE(v10) = (8 * this) | 3;
      v9 = *(a3 + 1);
    }

    else
    {
      v9 = *(a3 + 1);
      do
      {
        *v9++ = v7 | 0x80;
        v10 = v7 >> 7;
        v11 = v7 >> 14;
        v7 >>= 7;
      }

      while (v11);
    }

    *v9 = v10;
    v12 = v9 - v8 + 1;
    *(a3 + 1) += v12;
    *(a3 + 4) -= v12;
  }

  v13 = (*(*a2 + 120))(a2);
  v14 = *(a3 + 4);
  v15 = __OFSUB__(v14, v13);
  v16 = v14 - v13;
  if (v16 < 0 != v15 || (v17 = *(a3 + 1), *(a3 + 1) = v17 + v13, *(a3 + 4) = v16, !v17))
  {
    result = (*(*a2 + 104))(a2, a3);
  }

  else
  {
    if (*(a3 + 26) == 1)
    {
      v18 = *(a3 + 27);
    }

    else
    {
      v18 = google::protobuf::io::CodedOutputStream::default_serialization_deterministic_;
    }

    result = (*(*a2 + 128))(a2, v18 != 0);
  }

  v20 = v6 | 4;
  if (*(a3 + 4) < 5)
  {

    return google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a3, v20);
  }

  else
  {
    v21 = *(a3 + 1);
    if (v6 < 0x80)
    {
      LOBYTE(v23) = v6 | 4;
      v22 = *(a3 + 1);
    }

    else
    {
      v22 = *(a3 + 1);
      do
      {
        *v22++ = v20 | 0x80;
        v23 = v20 >> 7;
        v24 = v20 >> 14;
        v20 >>= 7;
      }

      while (v24);
    }

    *v22 = v23;
    v25 = v22 - v21 + 1;
    *(a3 + 1) += v25;
    *(a3 + 4) -= v25;
  }

  return result;
}

uint64_t google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(google::protobuf::internal::WireFormatLite *this, uint64_t a2, const google::protobuf::MessageLite *a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = (8 * this) | 2;
  if (*(a3 + 4) < 5)
  {
    google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a3, v6);
  }

  else
  {
    v7 = *(a3 + 1);
    if ((8 * this) < 0x80)
    {
      LOBYTE(v9) = (8 * this) | 2;
      v8 = *(a3 + 1);
    }

    else
    {
      v8 = *(a3 + 1);
      do
      {
        *v8++ = v6 | 0x80;
        v9 = v6 >> 7;
        v10 = v6 >> 14;
        v6 >>= 7;
      }

      while (v10);
    }

    *v8 = v9;
    v11 = v8 - v7 + 1;
    *(a3 + 1) += v11;
    *(a3 + 4) -= v11;
  }

  v12 = (*(*a2 + 120))(a2);
  v13 = v12;
  if (*(a3 + 4) < 5)
  {
    google::protobuf::io::CodedOutputStream::WriteVarint32SlowPath(a3, v12);
    v19 = *(a3 + 4);
  }

  else
  {
    v14 = *(a3 + 1);
    if (v12 < 0x80)
    {
      LOBYTE(v17) = v12;
      v15 = *(a3 + 1);
    }

    else
    {
      v15 = *(a3 + 1);
      v16 = v12;
      do
      {
        *v15++ = v16 | 0x80;
        v17 = v16 >> 7;
        v18 = v16 >> 14;
        v16 >>= 7;
      }

      while (v18);
    }

    *v15 = v17;
    v20 = v15 - v14 + 1;
    *(a3 + 1) += v20;
    v19 = *(a3 + 4) - v20;
    *(a3 + 4) = v19;
  }

  v21 = __OFSUB__(v19, v13);
  v22 = v19 - v13;
  if (v22 < 0 != v21 || (v23 = *(a3 + 1), *(a3 + 1) = v23 + v13, *(a3 + 4) = v22, !v23))
  {
    v25 = *(*a2 + 104);

    return v25(a2, a3);
  }

  else
  {
    if (*(a3 + 26) == 1)
    {
      v24 = *(a3 + 27);
    }

    else
    {
      v24 = google::protobuf::io::CodedOutputStream::default_serialization_deterministic_;
    }

    v27 = *(*a2 + 128);

    return v27(a2, v24 != 0);
  }
}

BOOL google::protobuf::internal::WireFormatLite::ReadBytes(char **this, std::string *a2)
{
  v5 = *this;
  v4 = this[1];
  if (*this >= v4)
  {
    LODWORD(v6) = 0;
  }

  else
  {
    v6 = *v5;
    if ((*v5 & 0x80000000) == 0)
    {
      v7 = (v5 + 1);
      *this = v7;
      goto LABEL_4;
    }
  }

  Varint32Fallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v6);
  if ((Varint32Fallback & 0x8000000080000000) != 0)
  {
    return 0;
  }

  v6 = Varint32Fallback;
  v7 = *this;
  v4 = this[1];
LABEL_4:
  if (v6 <= v4 - v7)
  {
    v9 = v6;
    std::string::resize(a2, v6, 0);
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      a2 = a2->__r_.__value_.__r.__words[0];
    }

    memcpy(a2, *this, v9);
    *this += v9;
    return 1;
  }

  else
  {

    return google::protobuf::io::CodedInputStream::ReadStringFallback(this, a2, v6);
  }
}

BOOL google::protobuf::internal::WireFormatLite::ReadBytes(char **this, __int128 **a2)
{
  v3 = *a2;
  if (*a2 == &google::protobuf::internal::fixed_address_empty_string)
  {
    operator new();
  }

  v5 = *this;
  v4 = this[1];
  if (*this >= v4)
  {
    LODWORD(v6) = 0;
  }

  else
  {
    v6 = *v5;
    if ((*v5 & 0x80000000) == 0)
    {
      v7 = (v5 + 1);
      *this = v7;
      goto LABEL_6;
    }
  }

  Varint32Fallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v6);
  if ((Varint32Fallback & 0x8000000080000000) != 0)
  {
    return 0;
  }

  v6 = Varint32Fallback;
  v7 = *this;
  v4 = this[1];
LABEL_6:
  if (v6 <= v4 - v7)
  {
    v9 = v6;
    std::string::resize(v3, v6, 0);
    if (*(v3 + 23) < 0)
    {
      v3 = *v3;
    }

    memcpy(v3, *this, v9);
    *this += v9;
    return 1;
  }

  else
  {

    return google::protobuf::io::CodedInputStream::ReadStringFallback(this, v3, v6);
  }
}

BOOL google::protobuf::internal::WireFormatLite::VerifyUtf8String(google::protobuf::internal *a1, const char *a2, int a3, uint64_t a4)
{
  IsStructurallyValidUTF8 = google::protobuf::internal::IsStructurallyValidUTF8(a1, a2);
  if (!IsStructurallyValidUTF8)
  {
    v7 = "serializing";
    if (a3 != 1)
    {
      v7 = 0;
    }

    if (a3)
    {
      v8 = v7;
    }

    else
    {
      v8 = "parsing";
    }

    *(&__p.__r_.__value_.__s + 23) = 0;
    __p.__r_.__value_.__s.__data_[0] = 0;
    if (a4)
    {
      google::protobuf::StringPrintf(" '%s'", v20, a4);
      __p = v20[0];
    }

    google::protobuf::internal::LogMessage::LogMessage(v20, 2, "/Library/Caches/com.apple.xbs/Sources/MIL/mil/deps/protobuf/src/google/protobuf/wire_format_lite.cc", 629);
    v9 = google::protobuf::internal::LogMessage::operator<<(v20, "String field");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, &__p);
    v11 = google::protobuf::internal::LogMessage::operator<<(v10, " contains invalid ");
    v12 = google::protobuf::internal::LogMessage::operator<<(v11, "UTF-8 data when ");
    v13 = google::protobuf::internal::LogMessage::operator<<(v12, v8);
    v14 = google::protobuf::internal::LogMessage::operator<<(v13, " a protocol ");
    v15 = google::protobuf::internal::LogMessage::operator<<(v14, "buffer. Use the 'bytes' type if you intend to send raw ");
    v16 = google::protobuf::internal::LogMessage::operator<<(v15, "bytes. ");
    google::protobuf::internal::LogFinisher::operator=(&v19, v16, v17);
    google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return IsStructurallyValidUTF8;
}

void sub_21857D9A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  google::protobuf::internal::LogMessage::~LogMessage(&a11);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::WireFormatLite::Int32Size(unsigned int *a1)
{
  v1 = *a1;
  if (v1 < 1)
  {
    return 0;
  }

  result = 0;
  v4 = (*(a1 + 1) + 8);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if (v6 < 0)
    {
      v7 = 10;
    }

    else
    {
      v7 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
    }

    result += v7;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t google::protobuf::internal::WireFormatLite::UInt32Size(unsigned int *a1)
{
  v1 = *a1;
  if (v1 < 1)
  {
    return 0;
  }

  result = 0;
  v4 = (*(a1 + 1) + 8);
  do
  {
    v5 = *v4++;
    result += (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t google::protobuf::internal::WireFormatLite::SInt32Size(unsigned int *a1)
{
  v1 = *a1;
  if (v1 < 1)
  {
    return 0;
  }

  result = 0;
  v4 = (*(a1 + 1) + 8);
  do
  {
    v5 = *v4++;
    result += (9 * (__clz((2 * v5) ^ (v5 >> 31) | 1) ^ 0x1F) + 73) >> 6;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t MIL::IROperation::Make(std::__shared_weak_count **a1, uint64_t a2)
{
  v3 = *a1;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return MEMORY[0x21CEAFEA0](a2, 0x10E1C40E9C383C0);
}

void MIL::IROperator::Make(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_0(a1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*v2);
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void std::make_unique[abi:ne200100]<MIL::IRTensorBufferValueTypeImpl,MIL::IRDataType &,std::shared_ptr<std::vector<MIL::IRDimension const*>> &,std::shared_ptr<std::vector<MIL::IRProperty const*>> &,decltype(nullptr),std::shared_ptr<std::vector<MIL::IRProperty const*>> &,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,0>(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_2(a1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*v1);
  }
}

void MIL::IRTensorBufferValueType::MakeWithShapeAndRowAlignment(uint64_t a1, std::__shared_weak_count **a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*a2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*a2);
  }
}

void MIL::Builder::BlockBuilder::AddConst(std::__shared_weak_count **a1, uint64_t a2)
{
  v3 = *a1;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void MIL::Builder::BlockBuilder::ReplaceUsesOfInputVariable(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t MIL::Builder::BlockBuilder::BlockBuilderImpl::BlockBuilderImpl(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *a4 = a2;
  *(a4 + 8) = a3;
  return result;
}

void std::make_unique[abi:ne200100]<MIL::Builder::OperationBuilder::OperationBuilderImpl,std::shared_ptr<MIL::IROperation> &,std::shared_ptr<MIL::MILContext>,std::string,MIL::Builder::BlockBuilder *&,0>(std::__shared_weak_count **a1, std::__shared_weak_count **a2)
{
  v3 = *a1;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*a2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*a2);
  }
}

void MIL::Builder::OperationBuilder::AddInput(uint64_t a1, uint64_t a2, std::__shared_weak_count **a3)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  if (*a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*a3);
  }
}

void MIL::Builder::OperationBuilder::AddOutput()
{
  OUTLINED_FUNCTION_0_1();
  if (v2 < 0)
  {
    operator delete(*v1);
  }

  if (*v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*v0);
  }
}

void MIL::Conversion::OpConversionImpl::TryConvertProgram(void *a1, uint64_t a2, void *a3)
{
  exception_ptr = __cxa_get_exception_ptr(a1);
  MEMORY[0x21CEAF880](&v6, exception_ptr);
  __cxa_begin_catch(a1);
  *a3 = 0;
  std::runtime_error::~runtime_error(&v6);
  __cxa_end_catch();
}

uint64_t MIL::Text::ParseValueType(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *a4 = a2;
  *(a4 + 8) = a3;
  return result;
}

void MIL::Util::anonymous namespace::ProcessWithMemoryMapping(std::string const&,unsigned long,MIL::Util::anonymous namespace::SHA256Hasher &)::MemoryMapGuard::~MemoryMapGuard(uint64_t a1, int *a2, uint8_t *buf, uint64_t a4)
{
  v4 = *a2;
  *buf = 134218496;
  *(buf + 4) = a4;
  *(buf + 6) = 2048;
  *(buf + 14) = a1;
  *(buf + 11) = 1024;
  *(buf + 6) = v4;
  _os_log_error_impl(&dword_217F7E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ProgramHashUtils: munmap failed for %zu bytes at %p: %{errno}d", buf, 0x1Cu);
}

void MIL::Operators::Common::ios16::ConstExprs::AffineDequantize::Impl::Impl(std::__shared_weak_count **a1, std::__shared_weak_count **a2)
{
  v3 = *a1;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *a2;
  if (*a2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void std::allocator<MIL::Operators::Common::ios18::ConstExprs::SparseBlockwiseShiftScale>::construct[abi:ne200100]<MIL::Operators::Common::ios18::ConstExprs::SparseBlockwiseShiftScale,MIL::IRTensorValueType const*&,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>>(std::__shared_weak_count **a1, std::__shared_weak_count **a2, std::__shared_weak_count **a3)
{
  v5 = *a1;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (*a2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*a2);
  }

  if (*a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*a3);
  }
}

void MIL::Operators::Common::ios18::ConstExprs::SparseBlockwiseShiftScale::Impl::Impl(std::__shared_weak_count **a1, std::__shared_weak_count **a2, std::__shared_weak_count **a3)
{
  v5 = *a1;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (*a2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*a2);
  }

  v6 = *a3;
  if (*a3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

uint64_t MIL::Operators::Common::ios18::ReadState::Make(uint64_t *a1)
{
  result = OUTLINED_FUNCTION_1_1(a1);
  if (result)
  {
    OUTLINED_FUNCTION_0_0();
    result = (*(v5 + 8))();
  }

  *v1 = v3;
  *(v1 + 8) = v2;
  return result;
}

void std::__optional_copy_base<std::vector<MIL::IRValueType const*>,false>::__optional_copy_base[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }
}

uint64_t CoreML::Specification::MILSpec::Dimension_ConstantDimension::MergePartialFromCodedStream(CoreML::Specification::MILSpec::Dimension_ConstantDimension *this, google::protobuf::io::CodedInputStream *a2)
{
  OUTLINED_FUNCTION_10();
  while (1)
  {
    while (1)
    {
      OUTLINED_FUNCTION_8();
      if (v4)
      {
        v5 = 0;
LABEL_7:
        google::protobuf::io::CodedInputStream::ReadTagFallback(v2, v5);
        OUTLINED_FUNCTION_0_2();
        if ((v9 & 0x100000000) == 0)
        {
          break;
        }

        goto LABEL_8;
      }

      OUTLINED_FUNCTION_1_2();
      if (v7 != v8)
      {
        goto LABEL_7;
      }

      OUTLINED_FUNCTION_2_0(v6);
      if ((v9 & 0x100000000) == 0)
      {
        break;
      }

LABEL_8:
      v10 = v9 == 8 && (v9 & 0xFFFFFFF8) == 8;
      if (!v10)
      {
        break;
      }

      OUTLINED_FUNCTION_8();
      if (v4 || (v16 = *v15, v16 < 0))
      {
        *(v3 + 16) = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(v2);
        if ((v17 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        *(v3 + 16) = v16;
        OUTLINED_FUNCTION_7(v15);
      }
    }

    OUTLINED_FUNCTION_9();
    if (v10 || v13 == 4)
    {
      return 1;
    }

    if ((google::protobuf::internal::WireFormatLite::SkipField(v2, v11, v12) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreML::Specification::MILSpec::Dimension_UnknownDimension::MergePartialFromCodedStream(CoreML::Specification::MILSpec::Dimension_UnknownDimension *this, google::protobuf::io::CodedInputStream *a2)
{
  OUTLINED_FUNCTION_10();
  do
  {
    while (1)
    {
      OUTLINED_FUNCTION_8();
      if (v4)
      {
        v5 = 0;
LABEL_7:
        google::protobuf::io::CodedInputStream::ReadTagFallback(v2, v5);
        OUTLINED_FUNCTION_0_2();
        if ((v9 & 0x100000000) == 0)
        {
          break;
        }

        goto LABEL_8;
      }

      OUTLINED_FUNCTION_1_2();
      if (v7 != v8)
      {
        goto LABEL_7;
      }

      OUTLINED_FUNCTION_2_0(v6);
      if ((v9 & 0x100000000) == 0)
      {
        break;
      }

LABEL_8:
      v10 = v9 == 8 && (v9 & 0xFFFFFFF8) == 8;
      if (!v10)
      {
        break;
      }

      OUTLINED_FUNCTION_8();
      if (v4 || (*v15 & 0x8000000000000000) != 0)
      {
        Varint64Fallback = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(v2);
        if ((v17 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        OUTLINED_FUNCTION_7(v15);
      }

      *(v3 + 16) = Varint64Fallback != 0;
    }

    OUTLINED_FUNCTION_9();
    if (v10 || v13 == 4)
    {
      return 1;
    }
  }

  while ((google::protobuf::internal::WireFormatLite::SkipField(v2, v11, v12) & 1) != 0);
  return 0;
}

BOOL CoreML::Specification::MILSpec::Value_BlobFileValue::MergePartialFromCodedStream(CoreML::Specification::MILSpec::Value_BlobFileValue *this, google::protobuf::io::CodedInputStream *a2)
{
  OUTLINED_FUNCTION_10();
  while (1)
  {
    while (1)
    {
      while (1)
      {
        OUTLINED_FUNCTION_8();
        if (v4)
        {
          v5 = 0;
LABEL_7:
          google::protobuf::io::CodedInputStream::ReadTagFallback(v2, v5);
          OUTLINED_FUNCTION_0_2();
          if ((v9 & 0x100000000) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_8;
        }

        OUTLINED_FUNCTION_1_2();
        if (v7 != v8)
        {
          goto LABEL_7;
        }

        OUTLINED_FUNCTION_2_0(v6);
        if ((v9 & 0x100000000) == 0)
        {
          goto LABEL_25;
        }

LABEL_8:
        if (v9 >> 3 != 2)
        {
          break;
        }

        if (v9 != 16)
        {
          goto LABEL_25;
        }

        OUTLINED_FUNCTION_8();
        if (v4 || (v16 = *v15, v16 < 0))
        {
          *(v3 + 24) = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(v2);
          if ((v21 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          *(v3 + 24) = v16;
          OUTLINED_FUNCTION_7(v15);
        }
      }

      v10 = v9 >> 3 == 1 && v9 == 10;
      if (!v10)
      {
        break;
      }

      v11 = *(v3 + 16);
      if (v11 == &google::protobuf::internal::fixed_address_empty_string)
      {
        google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena();
      }

      result = google::protobuf::internal::WireFormatLite::ReadBytes(v2, v11);
      if (!result)
      {
        return result;
      }

      v13 = *(v3 + 16);
      v14 = v13[23];
      if ((v14 & 0x8000000000000000) != 0)
      {
        v13 = *v13;
        v14 = *(*(v3 + 16) + 8);
      }

      if (!google::protobuf::internal::WireFormatLite::VerifyUtf8String(v13, v14, 0, "CoreML.Specification.MILSpec.Value.BlobFileValue.fileName"))
      {
        return 0;
      }
    }

LABEL_25:
    OUTLINED_FUNCTION_9();
    if (v10 || v19 == 4)
    {
      return 1;
    }

    if ((google::protobuf::internal::WireFormatLite::SkipField(v2, v17, v18) & 1) == 0)
    {
      return 0;
    }
  }
}

BOOL CoreML::Specification::MILSpec::TensorValue_RepeatedFloats::MergePartialFromCodedStream(CoreML::Specification::MILSpec::TensorValue_RepeatedFloats *this, google::protobuf::io::CodedInputStream *a2)
{
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          OUTLINED_FUNCTION_17();
          if (v4)
          {
            v5 = 0;
          }

          else
          {
            OUTLINED_FUNCTION_1_2();
            if (v7 == v8)
            {
              OUTLINED_FUNCTION_19(v6);
              break;
            }
          }

          google::protobuf::io::CodedInputStream::ReadTagFallback(a2, v5);
          OUTLINED_FUNCTION_0_2();
          if ((v9 & 0x100000000) != 0)
          {
            break;
          }

LABEL_13:
          OUTLINED_FUNCTION_9();
          v16 = v16 || v15 == 4;
          if (v16)
          {
            return 1;
          }

          if ((google::protobuf::internal::WireFormatLite::SkipField(a2, v13, v14) & 1) == 0)
          {
            return 0;
          }
        }

        OUTLINED_FUNCTION_15();
        if (!v16)
        {
          goto LABEL_13;
        }

        if (v10 != 13)
        {
          break;
        }

        v17 = OUTLINED_FUNCTION_21();
        if (!google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<float,(google::protobuf::internal::WireFormatLite::FieldType)2>(v17, v18, v19, v20))
        {
          return 0;
        }
      }

      if (v10 != 10)
      {
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_17();
      if (v4 || (VarintSizeAsIntFallback = *v11, (VarintSizeAsIntFallback & 0x80000000) != 0))
      {
        VarintSizeAsIntFallback = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(a2);
        if ((VarintSizeAsIntFallback & 0x80000000) != 0)
        {
          return 0;
        }
      }

      else
      {
        OUTLINED_FUNCTION_19(v11);
      }

      if ((VarintSizeAsIntFallback & 3) != 0)
      {
        return 0;
      }

      v21 = *(this + 4);
      v22 = VarintSizeAsIntFallback >> 2;
      v23 = google::protobuf::io::CodedInputStream::BytesUntilTotalBytesLimit(a2);
      v24 = google::protobuf::io::CodedInputStream::BytesUntilLimit(a2);
      if (v24 >= v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = v24;
      }

      if (v23 == -1)
      {
        v25 = v24;
      }

      if (v25 >= VarintSizeAsIntFallback)
      {
        break;
      }

      if (VarintSizeAsIntFallback >= 4)
      {
        do
        {
          v35 = 0;
          v26 = *a2;
          if ((*(a2 + 2) - *a2) < 4)
          {
            result = google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v35);
            if (!result)
            {
              return result;
            }

            v27 = v35;
          }

          else
          {
            v27 = *v26;
            *a2 = v26 + 1;
          }

          v28 = *(this + 4);
          if (v28 == *(this + 5))
          {
            google::protobuf::RepeatedField<float>::Reserve(this + 4, v28 + 1);
            v28 = *(this + 4);
          }

          v29 = *(this + 3) + 4 * v28;
          *(this + 4) = v28 + 1;
          *(v29 + 8) = v27;
          LODWORD(v22) = v22 - 1;
        }

        while (v22);
      }
    }

    if (*(this + 4) < v21 + v22)
    {
      google::protobuf::RepeatedField<float>::Reserve(this + 4, v21 + v22);
      OUTLINED_FUNCTION_16();
      if (v7 == v8)
      {
        bzero((v22 + 4 * v31 + 8), 4 * v32);
      }
    }

    OUTLINED_FUNCTION_14();
  }

  while (google::protobuf::io::CodedInputStream::ReadRaw(a2, (v34 + 4 * v33), VarintSizeAsIntFallback));
  if (*(this + 4) >= 1)
  {
    result = 0;
    *(this + 4) = v21;
    return result;
  }

  return 0;
}

BOOL CoreML::Specification::MILSpec::TensorValue_RepeatedDoubles::MergePartialFromCodedStream(CoreML::Specification::MILSpec::TensorValue_RepeatedDoubles *this, google::protobuf::io::CodedInputStream *a2)
{
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          OUTLINED_FUNCTION_17();
          if (v4)
          {
            v5 = 0;
          }

          else
          {
            OUTLINED_FUNCTION_1_2();
            if (v7 == v8)
            {
              OUTLINED_FUNCTION_19(v6);
              break;
            }
          }

          google::protobuf::io::CodedInputStream::ReadTagFallback(a2, v5);
          OUTLINED_FUNCTION_0_2();
          if ((v9 & 0x100000000) != 0)
          {
            break;
          }

LABEL_13:
          OUTLINED_FUNCTION_9();
          v16 = v16 || v15 == 4;
          if (v16)
          {
            return 1;
          }

          if ((google::protobuf::internal::WireFormatLite::SkipField(a2, v13, v14) & 1) == 0)
          {
            return 0;
          }
        }

        OUTLINED_FUNCTION_15();
        if (!v16)
        {
          goto LABEL_13;
        }

        if (v10 != 9)
        {
          break;
        }

        v17 = OUTLINED_FUNCTION_21();
        if (!google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<double,(google::protobuf::internal::WireFormatLite::FieldType)1>(v17, v18, v19, v20))
        {
          return 0;
        }
      }

      if (v10 != 10)
      {
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_17();
      if (v4 || (VarintSizeAsIntFallback = *v11, (VarintSizeAsIntFallback & 0x80000000) != 0))
      {
        VarintSizeAsIntFallback = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(a2);
        if ((VarintSizeAsIntFallback & 0x80000000) != 0)
        {
          return 0;
        }
      }

      else
      {
        OUTLINED_FUNCTION_19(v11);
      }

      if ((VarintSizeAsIntFallback & 7) != 0)
      {
        return 0;
      }

      v21 = *(this + 4);
      v22 = VarintSizeAsIntFallback >> 3;
      v23 = google::protobuf::io::CodedInputStream::BytesUntilTotalBytesLimit(a2);
      v24 = google::protobuf::io::CodedInputStream::BytesUntilLimit(a2);
      if (v24 >= v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = v24;
      }

      if (v23 == -1)
      {
        v25 = v24;
      }

      if (v25 >= VarintSizeAsIntFallback)
      {
        break;
      }

      if (VarintSizeAsIntFallback >= 8)
      {
        do
        {
          v35 = 0;
          v26 = *a2;
          if ((*(a2 + 2) - *a2) < 8)
          {
            result = google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v35);
            if (!result)
            {
              return result;
            }

            v27 = v35;
          }

          else
          {
            v27 = *v26;
            *a2 = v26 + 1;
          }

          v28 = *(this + 4);
          if (v28 == *(this + 5))
          {
            google::protobuf::RepeatedField<double>::Reserve(this + 4, v28 + 1);
            v28 = *(this + 4);
          }

          v29 = *(this + 3) + 8 * v28;
          *(this + 4) = v28 + 1;
          *(v29 + 8) = v27;
          LODWORD(v22) = v22 - 1;
        }

        while (v22);
      }
    }

    if (*(this + 4) < v21 + v22)
    {
      google::protobuf::RepeatedField<double>::Reserve(this + 4, v21 + v22);
      OUTLINED_FUNCTION_16();
      if (v7 == v8)
      {
        bzero((v22 + 8 * v31 + 8), 8 * v32);
      }
    }

    OUTLINED_FUNCTION_14();
  }

  while (google::protobuf::io::CodedInputStream::ReadRaw(a2, (v34 + 8 * v33), VarintSizeAsIntFallback));
  if (*(this + 4) >= 1)
  {
    result = 0;
    *(this + 4) = v21;
    return result;
  }

  return 0;
}

uint64_t CoreML::Specification::MILSpec::TensorValue_RepeatedInts::MergePartialFromCodedStream(CoreML::Specification::MILSpec::TensorValue_RepeatedInts *this, google::protobuf::io::CodedInputStream *a2)
{
  OUTLINED_FUNCTION_10();
  while (1)
  {
    while (1)
    {
      OUTLINED_FUNCTION_8();
      if (v4)
      {
        v5 = 0;
LABEL_7:
        google::protobuf::io::CodedInputStream::ReadTagFallback(v2, v5);
        OUTLINED_FUNCTION_0_2();
        if ((v10 & 0x100000000) == 0)
        {
          break;
        }

        goto LABEL_8;
      }

      OUTLINED_FUNCTION_1_2();
      if (v7 != v8)
      {
        goto LABEL_7;
      }

      OUTLINED_FUNCTION_2_0(v6);
      if ((v9 & 0x100000000) == 0)
      {
        break;
      }

LABEL_8:
      OUTLINED_FUNCTION_15();
      if (!v15)
      {
        break;
      }

      if (v11 == 10)
      {
        OUTLINED_FUNCTION_8();
        if (v4 || *v16 < 0)
        {
          VarintSizeAsIntFallback = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(v2);
          if ((VarintSizeAsIntFallback & 0x80000000) != 0)
          {
            return 0;
          }
        }

        else
        {
          OUTLINED_FUNCTION_7(v16);
        }

        v18 = google::protobuf::io::CodedInputStream::PushLimit(v2, VarintSizeAsIntFallback);
        if (google::protobuf::io::CodedInputStream::BytesUntilLimit(v2) >= 1)
        {
          while (1)
          {
            OUTLINED_FUNCTION_8();
            if (v4)
            {
              break;
            }

            v20 = *v19;
            if (*v19 < 0)
            {
              goto LABEL_27;
            }

            OUTLINED_FUNCTION_7(v19);
LABEL_28:
            v22 = *(v3 + 16);
            if (v22 == *(v3 + 20))
            {
              google::protobuf::RepeatedField<float>::Reserve((v3 + 16), v22 + 1);
              v22 = *(v3 + 16);
            }

            v23 = *(v3 + 24) + 4 * v22;
            *(v3 + 16) = v22 + 1;
            *(v23 + 8) = v20;
            if (google::protobuf::io::CodedInputStream::BytesUntilLimit(v2) <= 0)
            {
              goto LABEL_31;
            }
          }

          v20 = 0;
LABEL_27:
          Varint32Fallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(v2, v20);
          v20 = Varint32Fallback;
          if (Varint32Fallback < 0)
          {
            return 0;
          }

          goto LABEL_28;
        }

LABEL_31:
        google::protobuf::io::CodedInputStream::PopLimit(v2, v18);
      }

      else
      {
        if (v11 != 8)
        {
          break;
        }

        v24 = OUTLINED_FUNCTION_12();
        if ((google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<int,(google::protobuf::internal::WireFormatLite::FieldType)5>(v24, v25, v26, v27) & 1) == 0)
        {
          return 0;
        }
      }
    }

    OUTLINED_FUNCTION_9();
    v15 = v15 || v14 == 4;
    if (v15)
    {
      return 1;
    }

    if ((google::protobuf::internal::WireFormatLite::SkipField(v2, v12, v13) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<int,(google::protobuf::internal::WireFormatLite::FieldType)5>(int a1, unsigned int a2, google::protobuf::io::CodedInputStream *this, signed int *a4)
{
  v7 = *this;
  if (*this >= *(this + 1))
  {
    v8 = 0;
  }

  else
  {
    v8 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      *this = v7 + 1;
      goto LABEL_6;
    }
  }

  Varint32Fallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v8);
  v8 = Varint32Fallback;
  if (Varint32Fallback < 0)
  {
    return 0;
  }

LABEL_6:
  v10 = *a4;
  if (*a4 == a4[1])
  {
    google::protobuf::RepeatedField<float>::Reserve(a4, v10 + 1);
    v10 = *a4;
  }

  v11 = *(a4 + 1);
  *a4 = v10 + 1;
  *(v11 + 4 * v10 + 8) = v8;
  v12 = a4[1] - *a4;
  if (v12 >= 1)
  {
    v13 = v12 + 1;
    while (1)
    {
      if (a2 > 0x7F)
      {
        if (a2 >> 14)
        {
          return 1;
        }

        v17 = *this;
        v14 = *(this + 1);
        if ((v14 - *this) < 2 || (a2 & 0x7F | 0x80) != *v17 || a2 >> 7 != v17[1])
        {
          return 1;
        }

        v16 = v17 + 2;
      }

      else
      {
        v15 = *this;
        v14 = *(this + 1);
        if (*this >= v14 || *v15 != a2)
        {
          return 1;
        }

        v16 = v15 + 1;
      }

      *this = v16;
      if (v16 >= v14)
      {
        break;
      }

      v18 = *v16;
      if (*v16 < 0)
      {
        goto LABEL_23;
      }

      *this = v16 + 1;
LABEL_25:
      v20 = *a4;
      *a4 = v20 + 1;
      *(v11 + 4 * v20 + 8) = v18;
      if (--v13 <= 1)
      {
        return 1;
      }
    }

    v18 = 0;
LABEL_23:
    v19 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v18);
    if (v19 < 0)
    {
      return 0;
    }

    v18 = v19;
    v11 = *(a4 + 1);
    goto LABEL_25;
  }

  return 1;
}

uint64_t CoreML::Specification::MILSpec::TensorValue_RepeatedLongInts::MergePartialFromCodedStream(CoreML::Specification::MILSpec::TensorValue_RepeatedLongInts *this, google::protobuf::io::CodedInputStream *a2)
{
  OUTLINED_FUNCTION_10();
  while (1)
  {
    while (1)
    {
      OUTLINED_FUNCTION_8();
      if (v4)
      {
        v5 = 0;
LABEL_7:
        google::protobuf::io::CodedInputStream::ReadTagFallback(v2, v5);
        OUTLINED_FUNCTION_0_2();
        if ((v10 & 0x100000000) == 0)
        {
          break;
        }

        goto LABEL_8;
      }

      OUTLINED_FUNCTION_1_2();
      if (v7 != v8)
      {
        goto LABEL_7;
      }

      OUTLINED_FUNCTION_2_0(v6);
      if ((v9 & 0x100000000) == 0)
      {
        break;
      }

LABEL_8:
      OUTLINED_FUNCTION_15();
      if (!v15)
      {
        break;
      }

      if (v11 == 10)
      {
        OUTLINED_FUNCTION_8();
        if (v4 || *v16 < 0)
        {
          VarintSizeAsIntFallback = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(v2);
          if ((VarintSizeAsIntFallback & 0x80000000) != 0)
          {
            return 0;
          }
        }

        else
        {
          OUTLINED_FUNCTION_7(v16);
        }

        v18 = google::protobuf::io::CodedInputStream::PushLimit(v2, VarintSizeAsIntFallback);
        if (google::protobuf::io::CodedInputStream::BytesUntilLimit(v2) >= 1)
        {
          do
          {
            OUTLINED_FUNCTION_8();
            if (v4 || (v20 = *v19, (v20 & 0x8000000000000000) != 0))
            {
              Varint64Fallback = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(v2);
              if ((v22 & 1) == 0)
              {
                return 0;
              }

              v20 = Varint64Fallback;
            }

            else
            {
              OUTLINED_FUNCTION_7(v19);
            }

            v23 = *(v3 + 16);
            if (v23 == *(v3 + 20))
            {
              google::protobuf::RepeatedField<double>::Reserve((v3 + 16), v23 + 1);
              v23 = *(v3 + 16);
            }

            v24 = *(v3 + 24) + 8 * v23;
            *(v3 + 16) = v23 + 1;
            *(v24 + 8) = v20;
          }

          while (google::protobuf::io::CodedInputStream::BytesUntilLimit(v2) > 0);
        }

        google::protobuf::io::CodedInputStream::PopLimit(v2, v18);
      }

      else
      {
        if (v11 != 8)
        {
          break;
        }

        v25 = OUTLINED_FUNCTION_12();
        if ((google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<long long,(google::protobuf::internal::WireFormatLite::FieldType)3>(v25, v26, v27, v28) & 1) == 0)
        {
          return 0;
        }
      }
    }

    OUTLINED_FUNCTION_9();
    v15 = v15 || v14 == 4;
    if (v15)
    {
      return 1;
    }

    if ((google::protobuf::internal::WireFormatLite::SkipField(v2, v12, v13) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<long long,(google::protobuf::internal::WireFormatLite::FieldType)3>(int a1, unsigned int a2, google::protobuf::io::CodedInputStream *this, uint64_t a4)
{
  v7 = *this;
  if (*this >= *(this + 1) || (v8 = *v7, (v8 & 0x8000000000000000) != 0))
  {
    Varint64Fallback = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
    if ((v10 & 1) == 0)
    {
      return 0;
    }

    v8 = Varint64Fallback;
  }

  else
  {
    *this = v7 + 1;
  }

  v11 = *a4;
  v12 = *(a4 + 4);
  if (*a4 == v12)
  {
    google::protobuf::RepeatedField<double>::Reserve(a4, v11 + 1);
    v11 = *a4;
    v12 = *(a4 + 4);
  }

  v13 = *(a4 + 8);
  v14 = v11 + 1;
  *a4 = v11 + 1;
  *(v13 + 8 * v11 + 8) = v8;
  if (v12 - (v11 + 1) >= 1)
  {
    v15 = v12 - v11;
    do
    {
      if (a2 > 0x7F)
      {
        if (a2 >> 14)
        {
          return 1;
        }

        v19 = *this;
        v16 = *(this + 1);
        if ((v16 - *this) < 2 || (a2 & 0x7F | 0x80) != *v19 || a2 >> 7 != v19[1])
        {
          return 1;
        }

        v18 = (v19 + 2);
      }

      else
      {
        v17 = *this;
        v16 = *(this + 1);
        if (*this >= v16 || *v17 != a2)
        {
          return 1;
        }

        v18 = (v17 + 1);
      }

      *this = v18;
      if (v18 >= v16 || (v20 = *v18, (v20 & 0x8000000000000000) != 0))
      {
        v20 = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
        if ((v21 & 1) == 0)
        {
          return 0;
        }

        v13 = *(a4 + 8);
        v14 = *a4;
      }

      else
      {
        *this = v18 + 1;
      }

      v22 = v13 + 8 * v14++;
      *a4 = v14;
      *(v22 + 8) = v20;
      --v15;
    }

    while (v15 > 1);
  }

  return 1;
}

uint64_t CoreML::Specification::MILSpec::TensorValue_RepeatedBools::MergePartialFromCodedStream(CoreML::Specification::MILSpec::TensorValue_RepeatedBools *this, google::protobuf::io::CodedInputStream *a2)
{
  OUTLINED_FUNCTION_10();
  while (1)
  {
    while (1)
    {
      OUTLINED_FUNCTION_8();
      if (v4)
      {
        v5 = 0;
LABEL_7:
        google::protobuf::io::CodedInputStream::ReadTagFallback(v2, v5);
        OUTLINED_FUNCTION_0_2();
        if ((v10 & 0x100000000) == 0)
        {
          break;
        }

        goto LABEL_8;
      }

      OUTLINED_FUNCTION_1_2();
      if (v7 != v8)
      {
        goto LABEL_7;
      }

      OUTLINED_FUNCTION_2_0(v6);
      if ((v9 & 0x100000000) == 0)
      {
        break;
      }

LABEL_8:
      OUTLINED_FUNCTION_15();
      if (!v15)
      {
        break;
      }

      if (v11 == 10)
      {
        OUTLINED_FUNCTION_8();
        if (v4 || *v16 < 0)
        {
          VarintSizeAsIntFallback = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(v2);
          if ((VarintSizeAsIntFallback & 0x80000000) != 0)
          {
            return 0;
          }
        }

        else
        {
          OUTLINED_FUNCTION_7(v16);
        }

        v18 = google::protobuf::io::CodedInputStream::PushLimit(v2, VarintSizeAsIntFallback);
        if (google::protobuf::io::CodedInputStream::BytesUntilLimit(v2) >= 1)
        {
          do
          {
            OUTLINED_FUNCTION_8();
            if (v4 || (*v19 & 0x8000000000000000) != 0)
            {
              Varint64Fallback = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(v2);
              if ((v21 & 1) == 0)
              {
                return 0;
              }
            }

            else
            {
              OUTLINED_FUNCTION_7(v19);
            }

            v22 = Varint64Fallback != 0;
            v23 = *(v3 + 16);
            if (v23 == *(v3 + 20))
            {
              google::protobuf::RepeatedField<BOOL>::Reserve((v3 + 16), v23 + 1);
              v23 = *(v3 + 16);
            }

            v24 = *(v3 + 24) + v23;
            *(v3 + 16) = v23 + 1;
            *(v24 + 8) = v22;
          }

          while (google::protobuf::io::CodedInputStream::BytesUntilLimit(v2) > 0);
        }

        google::protobuf::io::CodedInputStream::PopLimit(v2, v18);
      }

      else
      {
        if (v11 != 8)
        {
          break;
        }

        v25 = OUTLINED_FUNCTION_12();
        if ((google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<BOOL,(google::protobuf::internal::WireFormatLite::FieldType)8>(v25, v26, v27, v28) & 1) == 0)
        {
          return 0;
        }
      }
    }

    OUTLINED_FUNCTION_9();
    v15 = v15 || v14 == 4;
    if (v15)
    {
      return 1;
    }

    if ((google::protobuf::internal::WireFormatLite::SkipField(v2, v12, v13) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<BOOL,(google::protobuf::internal::WireFormatLite::FieldType)8>(int a1, unsigned int a2, google::protobuf::io::CodedInputStream *this, uint64_t a4)
{
  v7 = *this;
  if (*this >= *(this + 1) || (Varint64Fallback = *v7, (Varint64Fallback & 0x8000000000000000) != 0))
  {
    Varint64Fallback = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    *this = v7 + 1;
  }

  v10 = Varint64Fallback != 0;
  v11 = *a4;
  v12 = *(a4 + 4);
  if (*a4 == v12)
  {
    google::protobuf::RepeatedField<BOOL>::Reserve(a4, v11 + 1);
    v11 = *a4;
    v12 = *(a4 + 4);
  }

  v13 = *(a4 + 8);
  v14 = v11 + 1;
  *a4 = v11 + 1;
  *(v13 + v11 + 8) = v10;
  if (v12 - (v11 + 1) >= 1)
  {
    v15 = v12 - v11;
    do
    {
      if (a2 > 0x7F)
      {
        if (a2 >> 14)
        {
          return 1;
        }

        v19 = *this;
        v16 = *(this + 1);
        if ((v16 - *this) < 2 || (a2 & 0x7F | 0x80) != *v19 || a2 >> 7 != v19[1])
        {
          return 1;
        }

        v18 = (v19 + 2);
      }

      else
      {
        v17 = *this;
        v16 = *(this + 1);
        if (*this >= v16 || *v17 != a2)
        {
          return 1;
        }

        v18 = (v17 + 1);
      }

      *this = v18;
      if (v18 >= v16 || (v20 = *v18, (v20 & 0x8000000000000000) != 0))
      {
        v20 = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
        if ((v21 & 1) == 0)
        {
          return 0;
        }

        v13 = *(a4 + 8);
        v14 = *a4;
      }

      else
      {
        *this = v18 + 1;
      }

      v22 = v13 + v14++;
      *a4 = v14;
      *(v22 + 8) = v20 != 0;
      --v15;
    }

    while (v15 > 1);
  }

  return 1;
}

BOOL CoreML::Specification::MILSpec::TensorValue_RepeatedStrings::MergePartialFromCodedStream(CoreML::Specification::MILSpec::TensorValue_RepeatedStrings *this, google::protobuf::io::CodedInputStream *a2)
{
  OUTLINED_FUNCTION_10();
  while (1)
  {
    while (1)
    {
      OUTLINED_FUNCTION_8();
      if (v4)
      {
        v5 = 0;
LABEL_7:
        google::protobuf::io::CodedInputStream::ReadTagFallback(v2, v5);
        OUTLINED_FUNCTION_0_2();
        if ((v10 & 0x100000000) == 0)
        {
          break;
        }

        goto LABEL_8;
      }

      OUTLINED_FUNCTION_1_2();
      if (v7 != v8)
      {
        goto LABEL_7;
      }

      OUTLINED_FUNCTION_2_0(v6);
      if ((v9 & 0x100000000) == 0)
      {
        break;
      }

LABEL_8:
      OUTLINED_FUNCTION_11();
      v12 = v12 && v11 == 8;
      if (!v12)
      {
        break;
      }

      v17 = *(v3 + 32);
      if (!v17)
      {
        v19 = *(v3 + 28);
        goto LABEL_23;
      }

      v18 = *(v3 + 24);
      v19 = *v17;
      if (v18 >= *v17)
      {
        if (v19 != *(v3 + 28))
        {
LABEL_24:
          *v17 = v19 + 1;
          v21 = *(v3 + 16);
          if (!v21)
          {
            operator new();
          }

          Aligned->__r_.__value_.__l.__size_ = 0;
          Aligned->__r_.__value_.__r.__words[2] = 0;
          Aligned->__r_.__value_.__r.__words[0] = 0;
          google::protobuf::Arena::AddListNode(v21, Aligned, google::protobuf::internal::arena_destruct_object<std::string>);
          v22 = *(v3 + 24);
          v23 = *(v3 + 32) + 8 * v22;
          *(v3 + 24) = v22 + 1;
          *(v23 + 8) = Aligned;
          goto LABEL_27;
        }

LABEL_23:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 16), v19 + 1);
        v17 = *(v3 + 32);
        v19 = *v17;
        goto LABEL_24;
      }

      *(v3 + 24) = v18 + 1;
      Aligned = *&v17[2 * v18 + 2];
LABEL_27:
      result = google::protobuf::internal::WireFormatLite::ReadBytes(v2, Aligned);
      if (!result)
      {
        return result;
      }

      v25 = *(v3 + 24);
      v26 = *(v3 + 32);
      v27 = *(v26 + 8 * v25);
      v28 = v27[23];
      if ((v28 & 0x8000000000000000) != 0)
      {
        v27 = *v27;
        v28 = *(*(v26 + 8 * v25) + 8);
      }

      if (!google::protobuf::internal::WireFormatLite::VerifyUtf8String(v27, v28, 0, "CoreML.Specification.MILSpec.TensorValue.RepeatedStrings.values"))
      {
        return 0;
      }
    }

    OUTLINED_FUNCTION_9();
    if (v12 || v15 == 4)
    {
      return 1;
    }

    if ((google::protobuf::internal::WireFormatLite::SkipField(v2, v13, v14) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreML::Specification::MILSpec::TensorValue_RepeatedBytes::MergePartialFromCodedStream(CoreML::Specification::MILSpec::TensorValue_RepeatedBytes *this, google::protobuf::io::CodedInputStream *a2)
{
  OUTLINED_FUNCTION_10();
  while (1)
  {
    while (1)
    {
      OUTLINED_FUNCTION_8();
      if (v4)
      {
        v5 = 0;
LABEL_7:
        google::protobuf::io::CodedInputStream::ReadTagFallback(v2, v5);
        OUTLINED_FUNCTION_0_2();
        if ((v10 & 0x100000000) == 0)
        {
          break;
        }

        goto LABEL_8;
      }

      OUTLINED_FUNCTION_1_2();
      if (v7 != v8)
      {
        goto LABEL_7;
      }

      OUTLINED_FUNCTION_2_0(v6);
      if ((v9 & 0x100000000) == 0)
      {
        break;
      }

LABEL_8:
      OUTLINED_FUNCTION_11();
      v12 = v12 && v11 == 8;
      if (!v12)
      {
        break;
      }

      v17 = *(v3 + 16);
      if (v17 == &google::protobuf::internal::fixed_address_empty_string)
      {
        google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena();
      }

      if (!google::protobuf::internal::WireFormatLite::ReadBytes(v2, v17))
      {
        return 0;
      }
    }

    OUTLINED_FUNCTION_9();
    if (v12 || v15 == 4)
    {
      return 1;
    }

    if ((google::protobuf::internal::WireFormatLite::SkipField(v2, v13, v14) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreML::Specification::MILSpec::TupleValue::MergePartialFromCodedStream(CoreML::Specification::MILSpec::TupleValue *this, google::protobuf::io::CodedInputStream *a2)
{
  OUTLINED_FUNCTION_10();
  while (1)
  {
    while (1)
    {
      OUTLINED_FUNCTION_8();
      if (v4)
      {
        v5 = 0;
LABEL_7:
        google::protobuf::io::CodedInputStream::ReadTagFallback(v2, v5);
        OUTLINED_FUNCTION_0_2();
        if ((v10 & 0x100000000) == 0)
        {
          break;
        }

        goto LABEL_8;
      }

      OUTLINED_FUNCTION_1_2();
      if (v7 != v8)
      {
        goto LABEL_7;
      }

      OUTLINED_FUNCTION_2_0(v6);
      if ((v9 & 0x100000000) == 0)
      {
        break;
      }

LABEL_8:
      OUTLINED_FUNCTION_11();
      v12 = v12 && v11 == 8;
      if (!v12)
      {
        break;
      }

      v17 = google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::Value>::Add(v3 + 16);
      OUTLINED_FUNCTION_8();
      if (v4 || *v18 < 0)
      {
        VarintSizeAsIntFallback = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(v2);
        if ((VarintSizeAsIntFallback & 0x80000000) != 0)
        {
          return 0;
        }
      }

      else
      {
        OUTLINED_FUNCTION_7(v18);
      }

      v20 = google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(v2, VarintSizeAsIntFallback);
      if ((v20 & 0x8000000000000000) == 0)
      {
        v21 = v20;
        result = CoreML::Specification::MILSpec::Value::MergePartialFromCodedStream(v17, v2);
        if (!result)
        {
          return result;
        }

        if (google::protobuf::io::CodedInputStream::DecrementRecursionDepthAndPopLimit(v2, v21))
        {
          continue;
        }
      }

      return 0;
    }

    OUTLINED_FUNCTION_9();
    if (v12 || v15 == 4)
    {
      return 1;
    }

    if ((google::protobuf::internal::WireFormatLite::SkipField(v2, v13, v14) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreML::Specification::MILSpec::ListValue::MergePartialFromCodedStream(CoreML::Specification::MILSpec::ListValue *this, google::protobuf::io::CodedInputStream *a2)
{
  OUTLINED_FUNCTION_10();
  while (1)
  {
    while (1)
    {
      OUTLINED_FUNCTION_8();
      if (v4)
      {
        v5 = 0;
LABEL_7:
        google::protobuf::io::CodedInputStream::ReadTagFallback(v2, v5);
        OUTLINED_FUNCTION_0_2();
        if ((v10 & 0x100000000) == 0)
        {
          break;
        }

        goto LABEL_8;
      }

      OUTLINED_FUNCTION_1_2();
      if (v7 != v8)
      {
        goto LABEL_7;
      }

      OUTLINED_FUNCTION_2_0(v6);
      if ((v9 & 0x100000000) == 0)
      {
        break;
      }

LABEL_8:
      OUTLINED_FUNCTION_11();
      v12 = v12 && v11 == 8;
      if (!v12)
      {
        break;
      }

      v17 = google::protobuf::RepeatedPtrField<CoreML::Specification::MILSpec::Value>::Add(v3 + 16);
      OUTLINED_FUNCTION_8();
      if (v4 || *v18 < 0)
      {
        VarintSizeAsIntFallback = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(v2);
        if ((VarintSizeAsIntFallback & 0x80000000) != 0)
        {
          return 0;
        }
      }

      else
      {
        OUTLINED_FUNCTION_7(v18);
      }

      v20 = google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(v2, VarintSizeAsIntFallback);
      if ((v20 & 0x8000000000000000) == 0)
      {
        v21 = v20;
        result = CoreML::Specification::MILSpec::Value::MergePartialFromCodedStream(v17, v2);
        if (!result)
        {
          return result;
        }

        if (google::protobuf::io::CodedInputStream::DecrementRecursionDepthAndPopLimit(v2, v21))
        {
          continue;
        }
      }

      return 0;
    }

    OUTLINED_FUNCTION_9();
    if (v12 || v15 == 4)
    {
      return 1;
    }

    if ((google::protobuf::internal::WireFormatLite::SkipField(v2, v13, v14) & 1) == 0)
    {
      return 0;
    }
  }
}

void google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Parser<google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>>::MergePartialFromCodedStream()
{
  OUTLINED_FUNCTION_18();
  if (v1 < 0)
  {
    operator delete(*(v0 + 16));
  }

  OUTLINED_FUNCTION_20();
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Parser<google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>>::MergePartialFromCodedStream(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_6(a1);
  google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::NewEntry(v5);
  v6 = OUTLINED_FUNCTION_13();
  if (!v7)
  {
    if (v6)
    {
      OUTLINED_FUNCTION_0_0();
      (*(v8 + 8))();
    }

    *(v2 + 48) = v4;
  }

  v9 = OUTLINED_FUNCTION_3_0();
  if (v9 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance();
  }

  std::string::operator=(v9, (v2 + 16));
  v10 = OUTLINED_FUNCTION_4();
  v12 = (*(v11 + 88))(v10, v3);
  v13 = v12;
  if (v12)
  {
    google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Parser<google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Function,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Function>>::UseKeyAndValueFromEntry(v2);
  }

  v14 = OUTLINED_FUNCTION_4();
  result = (*(v15 + 40))(v14);
  if (result)
  {
    *(v2 + 48) = 0;
  }

  *v1 = v13;
  return result;
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Parser<google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>>::MergePartialFromCodedStream(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_6(a1);
  google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::NewEntry(v5);
  v6 = OUTLINED_FUNCTION_13();
  if (!v7)
  {
    if (v6)
    {
      OUTLINED_FUNCTION_0_0();
      (*(v8 + 8))();
    }

    *(v2 + 48) = v4;
  }

  v9 = OUTLINED_FUNCTION_3_0();
  if (v9 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance();
  }

  std::string::operator=(v9, (v2 + 16));
  v10 = OUTLINED_FUNCTION_4();
  v12 = (*(v11 + 88))(v10, v3);
  v13 = v12;
  if (v12)
  {
    google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Parser<google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Value,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Value>>::UseKeyAndValueFromEntry(v2);
  }

  v14 = OUTLINED_FUNCTION_4();
  result = (*(v15 + 40))(v14);
  if (result)
  {
    *(v2 + 48) = 0;
  }

  *v1 = v13;
  return result;
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Parser<google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>>::MergePartialFromCodedStream(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_6(a1);
  google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::NewEntry(v5);
  v6 = OUTLINED_FUNCTION_13();
  if (!v7)
  {
    if (v6)
    {
      OUTLINED_FUNCTION_0_0();
      (*(v8 + 8))();
    }

    *(v2 + 48) = v4;
  }

  v9 = OUTLINED_FUNCTION_3_0();
  if (v9 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance();
  }

  std::string::operator=(v9, (v2 + 16));
  v10 = OUTLINED_FUNCTION_4();
  v12 = (*(v11 + 88))(v10, v3);
  v13 = v12;
  if (v12)
  {
    google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Parser<google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Block,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Block>>::UseKeyAndValueFromEntry(v2);
  }

  v14 = OUTLINED_FUNCTION_4();
  result = (*(v15 + 40))(v14);
  if (result)
  {
    *(v2 + 48) = 0;
  }

  *v1 = v13;
  return result;
}

uint64_t google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Parser<google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>>::MergePartialFromCodedStream(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_6(a1);
  google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::NewEntry(v5);
  v6 = OUTLINED_FUNCTION_13();
  if (!v7)
  {
    if (v6)
    {
      OUTLINED_FUNCTION_0_0();
      (*(v8 + 8))();
    }

    *(v2 + 48) = v4;
  }

  v9 = OUTLINED_FUNCTION_3_0();
  if (v9 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance();
  }

  std::string::operator=(v9, (v2 + 16));
  v10 = OUTLINED_FUNCTION_4();
  v12 = (*(v11 + 88))(v10, v3);
  v13 = v12;
  if (v12)
  {
    google::protobuf::internal::MapEntryImpl<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::MessageLite,std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>::Parser<google::protobuf::internal::MapFieldLite<google::protobuf::internal::MapEntryLite<std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,std::string,CoreML::Specification::MILSpec::Argument,(google::protobuf::internal::WireFormatLite::FieldType)9,(google::protobuf::internal::WireFormatLite::FieldType)11,0>,google::protobuf::Map<std::string,CoreML::Specification::MILSpec::Argument>>::UseKeyAndValueFromEntry(v2);
  }

  v14 = OUTLINED_FUNCTION_4();
  result = (*(v15 + 40))(v14);
  if (result)
  {
    *(v2 + 48) = 0;
  }

  *v1 = v13;
  return result;
}

uint64_t google::protobuf::io::CodedInputStream::PushLimit(google::protobuf::io::CodedInputStream *this, unsigned int a2)
{
  result = *(this + 10);
  if ((a2 & 0x80000000) == 0)
  {
    v4 = *(this + 6);
    v5 = *(this + 1);
    v6 = *(this + 11);
    v7 = v4 - v6 + *this - v5;
    if ((v7 ^ 0x7FFFFFFFu) >= a2 && result - v7 > a2)
    {
      v9 = v7 + a2;
      *(this + 10) = v9;
      v10 = v5 + v6;
      *(this + 1) = v10;
      v11 = *(this + 12);
      if (v11 >= v9)
      {
        v11 = v9;
      }

      v12 = __OFSUB__(v4, v11);
      v13 = v4 - v11;
      if ((v13 < 0) ^ v12 | (v13 == 0))
      {
        v13 = 0;
      }

      else
      {
        *(this + 1) = v10 - v13;
      }

      *(this + 11) = v13;
    }
  }

  return result;
}

unint64_t google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(google::protobuf::io::CodedInputStream *this, unsigned int a2)
{
  v3 = google::protobuf::io::CodedInputStream::PushLimit(this, a2);
  v4 = (*(this + 13) - 1);
  *(this + 13) = v4;
  return v3 | (v4 << 32);
}

uint64_t google::protobuf::io::CodedInputStream::ReadLengthAndPushLimit(char **this)
{
  v2 = *this;
  if (*this >= this[1])
  {
    v3 = 0;
  }

  else
  {
    v3 = *v2;
    if ((*v2 & 0x80000000) == 0)
    {
      *this = v2 + 1;
      goto LABEL_7;
    }
  }

  Varint32Fallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v3);
  v3 = Varint32Fallback;
  if (Varint32Fallback < 0)
  {
    v3 = 0;
  }

LABEL_7:

  return google::protobuf::io::CodedInputStream::PushLimit(this, v3);
}

void google::protobuf::util::Status::OK()
{
  v0 = __cxa_guard_acquire(&_MergedGlobals);
  if (v0)
  {
    dword_27CC06318 = 0;
    qword_27CC06328 = 0;
    unk_27CC06330 = 0;
    qword_27CC06320 = 0;
    OUTLINED_FUNCTION_0_3(v0, &dword_27CC06318, &dword_217F7E000);

    __cxa_guard_release(&_MergedGlobals);
  }
}

void google::protobuf::util::Status::CANCELLED()
{
  v0 = __cxa_guard_acquire(&qword_27CC06308);
  if (v0)
  {
    dword_27CC06338 = 0;
    qword_27CC06348 = 0;
    unk_27CC06350 = 0;
    qword_27CC06340 = 0;
    OUTLINED_FUNCTION_0_3(v0, &dword_27CC06338, &dword_217F7E000);

    __cxa_guard_release(&qword_27CC06308);
  }
}

void google::protobuf::util::Status::UNKNOWN()
{
  v0 = __cxa_guard_acquire(&qword_27CC06310);
  if (v0)
  {
    dword_27CC06358 = 0;
    qword_27CC06368 = 0;
    unk_27CC06370 = 0;
    qword_27CC06360 = 0;
    OUTLINED_FUNCTION_0_3(v0, &dword_27CC06358, &dword_217F7E000);

    __cxa_guard_release(&qword_27CC06310);
  }
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const char *a2)
{
  return MEMORY[0x2821F7478](this, a2);
}

{
  return MEMORY[0x2821F7490](this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x2821F7518](this, a2);
}

{
  return MEMORY[0x2821F7530](this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const std::string *a2)
{
  return MEMORY[0x2821F7520](this, a2);
}

{
  return MEMORY[0x2821F7538](this, a2);
}

void std::runtime_error::~runtime_error(std::runtime_error *this)
{
  MEMORY[0x2821F7548](this);
}

{
  MEMORY[0x2821F7550](this);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7918]();
}

{
  return MEMORY[0x2821F7920]();
}

{
  return MEMORY[0x2821F7928]();
}

{
  return MEMORY[0x2821F7930]();
}

{
  return MEMORY[0x2821F7938]();
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, uint64_t __val)
{
  return MEMORY[0x2821F7F20](retstr, __val);
}

{
  return MEMORY[0x2821F7F30](retstr, __val);
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, unint64_t __val)
{
  return MEMORY[0x2821F7F28](retstr, __val);
}

{
  return MEMORY[0x2821F7F38](retstr, __val);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}