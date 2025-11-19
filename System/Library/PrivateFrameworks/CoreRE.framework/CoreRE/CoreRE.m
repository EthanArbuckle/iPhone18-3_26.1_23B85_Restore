unint64_t make_fcontext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (a1 & 0xFFFFFFFFFFFFFFF0) - 176;
  *(result + 160) = a3;
  *(result + 152) = finish;
  return result;
}

uint64_t static ObservationKeyPathTable.entityModifyChildrenKeyPath.getter()
{
  swift_beginAccess();
  v0 = static ObservationKeyPathTable.entityModifyChildrenKeyPath;
  outlined copy of ObservationKeyPathTable.Value?(static ObservationKeyPathTable.entityModifyChildrenKeyPath);
  return v0;
}

uint64_t outlined copy of ObservationKeyPathTable.Value?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t static ObservationKeyPathTable.entityModifyChildrenKeyPath.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = static ObservationKeyPathTable.entityModifyChildrenKeyPath;
  static ObservationKeyPathTable.entityModifyChildrenKeyPath = a1;
  qword_1EE1C8E80 = a2;
  qword_1EE1C8E88 = a3;
  unk_1EE1C8E90 = a4;
  return outlined consume of ObservationKeyPathTable.Value?(v8);
}

uint64_t outlined consume of ObservationKeyPathTable.Value?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t static ObservationKeyPathTable.initializeTables(table:stringTable:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  static ObservationKeyPathTable.table = a1;

  swift_beginAccess();
  static ObservationKeyPathTable.stringTable = a2;
}

uint64_t static ObservationKeyPathTable.value(forKey:orString:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    result = swift_beginAccess();
    v4 = static ObservationKeyPathTable.table;
    if (static ObservationKeyPathTable.table)
    {
      if (!*(static ObservationKeyPathTable.table + 16) || (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) == 0))
      {
LABEL_11:
        v9 = 0;
        goto LABEL_12;
      }

LABEL_10:
      v9 = *(*(v4 + 56) + 32 * v5);

LABEL_12:
      swift_endAccess();
      return v9;
    }

    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return 0;
    }

    result = swift_beginAccess();
    v4 = static ObservationKeyPathTable.stringTable;
    if (static ObservationKeyPathTable.stringTable)
    {
      if (!*(static ObservationKeyPathTable.stringTable + 16))
      {
        goto LABEL_11;
      }

      v5 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v8 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t realitykit_initObservation(uint64_t a1)
{
  v2 = type metadata accessor for ObservationRegistrar();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObservationRegistrar.init()();
  return (*(v3 + 32))(a1, v5, v2);
}

uint64_t realitykit_deinitObservation(uint64_t a1)
{
  v2 = type metadata accessor for ObservationRegistrar();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t willSet(observationStorage:subject:keyToken:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = swift_beginAccess();
  v9 = static ObservationKeyPathTable.table;
  if (static ObservationKeyPathTable.table)
  {
    if (*(static ObservationKeyPathTable.table + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(a3), (v11 & 1) != 0))
    {
      v12 = (*(v9 + 56) + 32 * v10);
      v13 = *v12;
      v14 = v12[1];
      v15 = v12[2];
      v16 = v12[3];
      swift_endAccess();

      nested2 #1 <A><A1>(memberType:) in nested1 #1 <A>(subjectType:) in modify(willModify:observationStorage:subject:keyPathHolder:)(a2, v16, a1, a4 & 1, v13, v15, v14);
    }

    else
    {
      return swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t willSet(observationStorage:subject:stringKeyToken:)(uint64_t a1, uint64_t a2, char *__s, char a4)
{
  result = strlen(__s);
  v9 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (result == -1)
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs4Int8V_Tt1g5(result + 1, 0);
    memcpy(v10 + 4, __s, v9);
  }

  result = swift_beginAccess();
  v11 = static ObservationKeyPathTable.stringTable;
  if (!static ObservationKeyPathTable.stringTable)
  {
    goto LABEL_12;
  }

  if (*(static ObservationKeyPathTable.stringTable + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v13 & 1) != 0))
  {
    v14 = (*(v11 + 56) + 32 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v18 = v14[3];
    swift_endAccess();

    nested2 #1 <A><A1>(memberType:) in nested1 #1 <A>(subjectType:) in modify(willModify:observationStorage:subject:keyPathHolder:)(a2, v18, a1, a4 & 1, v15, v17, v16);
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t realitykit_willModifyChildrenTm(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  v7 = static ObservationKeyPathTable.entityModifyChildrenKeyPath;
  if (static ObservationKeyPathTable.entityModifyChildrenKeyPath)
  {
    v9 = qword_1EE1C8E88;
    v8 = unk_1EE1C8E90;
    v10 = qword_1EE1C8E80;

    nested1 #1 <A>(subjectType:) in modify(willModify:observationStorage:subject:keyPathHolder:)(a2, v9, v8, a1, a3 & 1, v7, v10);
    return outlined consume of ObservationKeyPathTable.Value?(v7);
  }

  return result;
}

uint64_t nested2 #1 <A><A1>(memberType:) in nested1 #1 <A>(subjectType:) in modify(willModify:observationStorage:subject:keyPathHolder:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  v27 = a6;
  v24 = a4;
  v23 = a3;
  v9 = type metadata accessor for ObservationRegistrar();
  v26 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v22 - v15;
  v17 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a1, v12);
  if ((*(v17 + 48))(v16, 1, a5) == 1)
  {
    return (*(v13 + 8))(v16, v12);
  }

  (*(v17 + 32))(v19, v16, a5);
  type metadata accessor for KeyPath();
  if (swift_dynamicCastClass())
  {
    v21 = v26;
    (*(v26 + 16))(v11, v23, v9);

    if (v24)
    {
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();
    }

    else
    {
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();
    }

    (*(v21 + 8))(v11, v9);
  }

  return (*(v17 + 8))(v19, a5);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *(a1 + 16);
  MEMORY[0x1E6901AE0](v2);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      Hasher._combine(_:)(v4);
      --v2;
    }

    while (v2);
  }

  v5 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5);
}

{
  Hasher.init(_seed:)();
  MEMORY[0x1E6901AE0](a1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *(a1 + 16);
    while (1)
    {
      v8 = *(*(v2 + 48) + 8 * result);
      if (*(v8 + 16) == v7)
      {
        break;
      }

LABEL_3:
      result = (result + 1) & v6;
      if (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        return result;
      }
    }

    if (v7 && v8 != a1)
    {
      v9 = (v8 + 32);
      v10 = (a1 + 32);
      v11 = *(a1 + 16);
      while (v11)
      {
        if (*v9 != *v10)
        {
          goto LABEL_3;
        }

        ++v9;
        ++v10;
        if (!--v11)
        {
          return result;
        }
      }

      __break(1u);
    }
  }

  return result;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs4Int8V_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys4Int8VGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ObservationKeyPathTable.Value(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ObservationKeyPathTable.Value(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t google::protobuf::io::ZeroCopyOutputStream::WriteAliasedRaw(google::protobuf::io::ZeroCopyOutputStream *this, const void *a2)
{
  v4 = 3;
  v5 = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/protobuf/src/google/protobuf/io/zero_copy_stream.cc";
  v6 = 47;
  memset(&__p, 0, sizeof(__p));
  std::string::append(&__p, "This ZeroCopyOutputStream doesn't support aliasing. Reaching here usually means a ZeroCopyOutputStream implementation bug.");
  google::protobuf::internal::LogFinisher::operator=(&v3, &v4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1E1C69BF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E8717988, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t google::protobuf::io::FileInputStream::CopyingFileInputStream::Close(google::protobuf::io::FileInputStream::CopyingFileInputStream *this)
{
  if (*(this + 13) == 1)
  {
    v7 = 3;
    v8 = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/protobuf/src/google/protobuf/io/zero_copy_stream_impl.cc";
    v9 = 119;
    memset(&__p, 0, sizeof(__p));
    std::string::append(&__p, "CHECK failed: !is_closed_: ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v7);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  *(this + 13) = 1;
  v2 = *(this + 2);
  while (1)
  {
    v3 = close(v2);
    if ((v3 & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() != 4)
    {
      goto LABEL_9;
    }
  }

  if (v3)
  {
LABEL_9:
    v4 = __error();
    result = 0;
    *(this + 4) = *v4;
    return result;
  }

  return 1;
}

void sub_1E1C69E74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::io::FileInputStream::CopyingFileInputStream::~CopyingFileInputStream(google::protobuf::io::FileInputStream::CopyingFileInputStream *this)
{
  *this = &unk_1F5CAC7E8;
  if (*(this + 12) == 1 && (google::protobuf::io::FileInputStream::CopyingFileInputStream::Close(this) & 1) == 0)
  {
    v4 = 2;
    v5 = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/protobuf/src/google/protobuf/io/zero_copy_stream_impl.cc";
    v6 = 113;
    memset(&__p, 0, sizeof(__p));
    std::string::append(&__p, "close() failed: ");
    v2 = strerror(*(this + 4));
    std::string::append(&__p, v2);
    google::protobuf::internal::LogFinisher::operator=(&v3, &v4);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

{
  google::protobuf::io::FileInputStream::CopyingFileInputStream::~CopyingFileInputStream(this);

  JUMPOUT(0x1E6906520);
}

ssize_t google::protobuf::io::FileInputStream::CopyingFileInputStream::Read(google::protobuf::io::FileInputStream::CopyingFileInputStream *this, void *a2, int a3)
{
  if (*(this + 13) == 1)
  {
    v9 = 3;
    v10 = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/protobuf/src/google/protobuf/io/zero_copy_stream_impl.cc";
    v11 = 134;
    memset(&__p, 0, sizeof(__p));
    std::string::append(&__p, "CHECK failed: !is_closed_: ");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v9);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  while (1)
  {
    v6 = read(*(this + 2), a2, a3);
    if ((v6 & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() != 4)
    {
      *(this + 4) = *__error();
      return v6;
    }
  }

  return v6;
}

void sub_1E1C6A0A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::io::FileInputStream::CopyingFileInputStream::Skip_(google::protobuf::io::FileInputStream::CopyingFileInputStream *this)
{
  v1 = MEMORY[0x1EEE9AC00](this);
  v3 = v2;
  v4 = v1;
  v17 = *MEMORY[0x1E69E9840];
  if (*(v1 + 13) == 1 && (v13 = 3, v14 = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/protobuf/src/google/protobuf/io/zero_copy_stream_impl.cc", v15 = 151, memset(__p, 0, 24), std::string::append(__p, "CHECK failed: !is_closed_: "), google::protobuf::internal::LogFinisher::operator=(&v12, &v13), SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
    if (*(v4 + 20))
    {
      goto LABEL_7;
    }
  }

  else if (*(v4 + 20))
  {
    goto LABEL_7;
  }

  if (lseek(*(v4 + 8), v3, 1) != -1)
  {
    return v3;
  }

LABEL_7:
  v6 = 0;
  *(v4 + 20) = 1;
  do
  {
    v5 = v6;
    v7 = __OFSUB__(v3, v6);
    v8 = v3 - v6;
    if ((v8 < 0) ^ v7 | (v8 == 0))
    {
      break;
    }

    v9 = v8 >= 4096 ? 4096 : v8;
    v10 = (*(*v4 + 16))(v4, &v13, v9);
    v6 = (v10 + v5);
  }

  while (v10 > 0);
  return v5;
}

void sub_1E1C6A23C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::io::FileOutputStream::~FileOutputStream(google::protobuf::io::FileOutputStream *this)
{
  *this = &unk_1F5CAC818;
  if ((*(this + 49) & 1) == 0 && *(this + 19))
  {
    if ((*(**(this + 5) + 16))(*(this + 5), *(this + 8)))
    {
      *(this + 7) += *(this + 19);
      *(this + 19) = 0;
    }

    else
    {
      *(this + 49) = 1;
      *(this + 19) = 0;
      v2 = *(this + 10);
      v3 = *(this + 8);
      *(this + 8) = 0;
      if (v2)
      {
        if (v3)
        {
          (*(*v2 + 8))(v2);
        }
      }

      else if (v3)
      {
        MEMORY[0x1E69064F0](v3, 0x1000C8077774924);
      }
    }
  }

  google::protobuf::io::CopyingOutputStreamAdaptor::~CopyingOutputStreamAdaptor((this + 32));
  google::protobuf::io::FileOutputStream::CopyingFileOutputStream::~CopyingFileOutputStream((this + 8));
}

{
  *this = &unk_1F5CAC818;
  if ((*(this + 49) & 1) == 0 && *(this + 19))
  {
    if ((*(**(this + 5) + 16))(*(this + 5), *(this + 8)))
    {
      *(this + 7) += *(this + 19);
      *(this + 19) = 0;
    }

    else
    {
      *(this + 49) = 1;
      *(this + 19) = 0;
      v2 = *(this + 10);
      v3 = *(this + 8);
      *(this + 8) = 0;
      if (v2)
      {
        if (v3)
        {
          (*(*v2 + 8))(v2);
        }
      }

      else if (v3)
      {
        MEMORY[0x1E69064F0](v3, 0x1000C8077774924);
      }
    }
  }

  google::protobuf::io::CopyingOutputStreamAdaptor::~CopyingOutputStreamAdaptor((this + 32));
  google::protobuf::io::FileOutputStream::CopyingFileOutputStream::~CopyingFileOutputStream((this + 8));

  JUMPOUT(0x1E6906520);
}

uint64_t google::protobuf::io::FileOutputStream::CopyingFileOutputStream::Close(google::protobuf::io::FileOutputStream::CopyingFileOutputStream *this)
{
  if (*(this + 13) == 1)
  {
    v7 = 3;
    v8 = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/protobuf/src/google/protobuf/io/zero_copy_stream_impl.cc";
    v9 = 209;
    memset(&__p, 0, sizeof(__p));
    std::string::append(&__p, "CHECK failed: !is_closed_: ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v7);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  *(this + 13) = 1;
  v2 = *(this + 2);
  while (1)
  {
    v3 = close(v2);
    if ((v3 & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() != 4)
    {
      goto LABEL_9;
    }
  }

  if (v3)
  {
LABEL_9:
    v4 = __error();
    result = 0;
    *(this + 4) = *v4;
    return result;
  }

  return 1;
}

void sub_1E1C6A594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::io::FileOutputStream::CopyingFileOutputStream::~CopyingFileOutputStream(google::protobuf::io::FileOutputStream::CopyingFileOutputStream *this)
{
  *this = &unk_1F5CAC860;
  if (*(this + 12) == 1 && (google::protobuf::io::FileOutputStream::CopyingFileOutputStream::Close(this) & 1) == 0)
  {
    v4 = 2;
    v5 = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/protobuf/src/google/protobuf/io/zero_copy_stream_impl.cc";
    v6 = 203;
    memset(&__p, 0, sizeof(__p));
    std::string::append(&__p, "close() failed: ");
    v2 = strerror(*(this + 4));
    std::string::append(&__p, v2);
    google::protobuf::internal::LogFinisher::operator=(&v3, &v4);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

{
  google::protobuf::io::FileOutputStream::CopyingFileOutputStream::~CopyingFileOutputStream(this);

  JUMPOUT(0x1E6906520);
}

BOOL google::protobuf::io::FileOutputStream::CopyingFileOutputStream::Write(google::protobuf::io::FileOutputStream::CopyingFileOutputStream *this, char *a2, int a3)
{
  if (*(this + 13) != 1 || (v14 = 3, v15 = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/protobuf/src/google/protobuf/io/zero_copy_stream_impl.cc", v16 = 225, memset(&__p, 0, sizeof(__p)), std::string::append(&__p, "CHECK failed: !is_closed_: "), google::protobuf::internal::LogFinisher::operator=(&v13, &v14), (SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0))
  {
    if (a3 >= 1)
    {
      goto LABEL_4;
    }

    return 1;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (a3 < 1)
  {
    return 1;
  }

LABEL_4:
  v6 = 0;
  do
  {
    while (1)
    {
      v7 = write(*(this + 2), &a2[v6], a3 - v6);
      if (v7 < 0)
      {
        break;
      }

      v8 = v7 == 0;
      v9 = v7;
      result = v7 != 0;
      v6 += v9;
      if (v8 || v6 >= a3)
      {
        return result;
      }
    }
  }

  while (*__error() == 4);
  v11 = __error();
  result = 0;
  *(this + 4) = *v11;
  return result;
}

void sub_1E1C6A820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::io::FileInputStream::~FileInputStream(google::protobuf::io::FileInputStream *this)
{
  *this = &unk_1F5CAC7A8;
  v1 = (this + 8);
  google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor((this + 32));
  google::protobuf::io::FileInputStream::CopyingFileInputStream::~CopyingFileInputStream(v1);
}

{
  *this = &unk_1F5CAC7A8;
  v1 = (this + 8);
  google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor((this + 32));
  google::protobuf::io::FileInputStream::CopyingFileInputStream::~CopyingFileInputStream(v1);

  JUMPOUT(0x1E6906520);
}

BOOL google::protobuf::io::ArrayInputStream::Next(google::protobuf::io::ArrayInputStream *this, const void **a2, int *a3)
{
  v3 = *(this + 6);
  v4 = *(this + 4);
  if (v3 >= v4)
  {
    *(this + 7) = 0;
    return 0;
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
    return v3 < v4;
  }
}

void google::protobuf::io::ArrayInputStream::BackUp(google::protobuf::io::ArrayInputStream *this, int a2)
{
  v4 = *(this + 7);
  if (v4 <= 0)
  {
    v6 = 3;
    v7 = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc";
    v8 = 80;
    memset(&__p, 0, sizeof(__p));
    std::string::append(&__p, "CHECK failed: (last_returned_size_) > (0): ");
    std::string::append(&__p, "BackUp() can only be called after a successful Next().");
    google::protobuf::internal::LogFinisher::operator=(&v5, &v6);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (*(this + 7) >= a2)
      {
        goto LABEL_9;
      }
    }

    else if (*(this + 7) >= a2)
    {
LABEL_9:
      if ((a2 & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  else if (v4 >= a2)
  {
    goto LABEL_9;
  }

  v6 = 3;
  v7 = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc";
  v8 = 82;
  memset(&__p, 0, sizeof(__p));
  std::string::append(&__p, "CHECK failed: (count) <= (last_returned_size_): ");
  google::protobuf::internal::LogFinisher::operator=(&v5, &v6);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v6 = 3;
  v7 = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc";
  v8 = 83;
  memset(&__p, 0, sizeof(__p));
  std::string::append(&__p, "CHECK failed: (count) >= (0): ");
  google::protobuf::internal::LogFinisher::operator=(&v5, &v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_13:
  *(this + 3) = (*(this + 6) - a2);
}

void sub_1E1C6AAF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL google::protobuf::io::ArrayInputStream::Skip(google::protobuf::io::ArrayInputStream *this, int a2)
{
  if (a2 < 0)
  {
    v10 = 3;
    v11 = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc";
    v12 = 89;
    memset(&__p, 0, sizeof(__p));
    std::string::append(&__p, "CHECK failed: (count) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v10);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v4 = *(this + 4);
  v5 = *(this + 6);
  v6 = v4 - v5;
  result = v4 - v5 >= a2;
  v8 = v5 + a2;
  if (v6 >= a2)
  {
    v4 = v8;
  }

  *(this + 6) = v4;
  *(this + 7) = 0;
  return result;
}

void sub_1E1C6ABC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::io::ArrayInputStream::Seek(google::protobuf::io::ArrayInputStream *this, uint64_t a2)
{
  if (a2 < 0 && (v6 = 3, v7 = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", v8 = 104, memset(&__p, 0, sizeof(__p)), std::string::append(&__p, "CHECK failed: (offset) >= (0): "), google::protobuf::internal::LogFinisher::operator=(&v5, &v6), SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v4 = *(this + 4);
    if (v4 >= a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v4 = *(this + 4);
    if (v4 >= a2)
    {
      goto LABEL_7;
    }
  }

  v6 = 3;
  v7 = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc";
  v8 = 105;
  memset(&__p, 0, sizeof(__p));
  std::string::append(&__p, "CHECK failed: (offset) <= (size_): ");
  google::protobuf::internal::LogFinisher::operator=(&v5, &v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  LODWORD(v4) = *(this + 4);
LABEL_7:
  *(this + 6) = a2;
  *(this + 7) = v4;
}

void sub_1E1C6ACE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL google::protobuf::io::ArrayOutputStream::Next(google::protobuf::io::ArrayOutputStream *this, void **a2, int *a3)
{
  v3 = *(this + 6);
  v4 = *(this + 4);
  if (v3 >= v4)
  {
    *(this + 7) = 0;
    return 0;
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
    return v3 < v4;
  }
}

void google::protobuf::io::ArrayOutputStream::BackUp(google::protobuf::io::ArrayOutputStream *this, int a2)
{
  v4 = *(this + 7);
  if (v4 <= 0)
  {
    v6 = 3;
    v7 = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc";
    v8 = 134;
    memset(&__p, 0, sizeof(__p));
    std::string::append(&__p, "CHECK failed: (last_returned_size_) > (0): ");
    std::string::append(&__p, "BackUp() can only be called after a successful Next().");
    google::protobuf::internal::LogFinisher::operator=(&v5, &v6);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (*(this + 7) >= a2)
      {
        goto LABEL_9;
      }
    }

    else if (*(this + 7) >= a2)
    {
LABEL_9:
      if ((a2 & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  else if (v4 >= a2)
  {
    goto LABEL_9;
  }

  v6 = 3;
  v7 = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc";
  v8 = 136;
  memset(&__p, 0, sizeof(__p));
  std::string::append(&__p, "CHECK failed: (count) <= (last_returned_size_): ");
  google::protobuf::internal::LogFinisher::operator=(&v5, &v6);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v6 = 3;
  v7 = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc";
  v8 = 137;
  memset(&__p, 0, sizeof(__p));
  std::string::append(&__p, "CHECK failed: (count) >= (0): ");
  google::protobuf::internal::LogFinisher::operator=(&v5, &v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_13:
  *(this + 3) = (*(this + 6) - a2);
}

void sub_1E1C6AEF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor(google::protobuf::io::CopyingInputStreamAdaptor *this)
{
  *this = &unk_1F5CAC990;
  if (*(this + 16) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  *(this + 11) = 0;
  v3 = *(this + 7);
  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    if (!v4)
    {
      return;
    }

    (*(*v3 + 8))(v3);
    v5 = *(this + 4);
    *(this + 4) = 0;
    if (!v5)
    {
      return;
    }

LABEL_10:
    MEMORY[0x1E69064F0](v5, 0x1000C8077774924);
    return;
  }

  if (v4)
  {
    MEMORY[0x1E69064F0](v4, 0x1000C8077774924);
    v5 = *(this + 4);
    *(this + 4) = 0;
    if (v5)
    {
      goto LABEL_10;
    }
  }
}

{
  google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor(this);

  JUMPOUT(0x1E6906520);
}

uint64_t google::protobuf::io::CopyingInputStreamAdaptor::Next(google::protobuf::io::CopyingInputStreamAdaptor *this, const void **a2, int *a3)
{
  if (*(this + 17))
  {
    return 0;
  }

  if (!*(this + 4))
  {
    v7 = *(this + 7);
    if (!v7)
    {
      operator new[]();
    }

    v8 = (**v7)(v7, *(this + 10));
    v9 = *(this + 4);
    *(this + 4) = v8;
    if (v9)
    {
      MEMORY[0x1E69064F0](v9, 0x1000C8077774924);
    }
  }

  v10 = *(this + 12);
  if (v10 >= 1)
  {
    *a2 = (*(this + 4) + *(this + 11) - v10);
    *a3 = v10;
    *(this + 12) = 0;
    return 1;
  }

  v11 = (*(**(this + 1) + 16))(*(this + 1), *(this + 4), *(this + 10));
  *(this + 11) = v11;
  if (v11 > 0)
  {
    v12 = *(this + 4);
    *(this + 3) += v11;
    *a3 = v11;
    *a2 = v12;
    return 1;
  }

  if (v11 < 0)
  {
    *(this + 17) = 1;
  }

  if (*(this + 12))
  {
    v16 = 3;
    v17 = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc";
    v18 = 253;
    memset(&__p, 0, sizeof(__p));
    std::string::append(&__p, "CHECK failed: (backup_bytes_) == (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v15, &v16);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  *(this + 11) = 0;
  v13 = *(this + 7);
  v14 = *(this + 4);
  *(this + 4) = 0;
  if (v13)
  {
    if (v14)
    {
      (*(*v13 + 8))(v13);
      return 0;
    }

    return 0;
  }

  if (!v14)
  {
    return 0;
  }

  MEMORY[0x1E69064F0](v14, 0x1000C8077774924);
  return 0;
}

void sub_1E1C6B2E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::io::CopyingInputStreamAdaptor::BackUp(google::protobuf::io::CopyingInputStreamAdaptor *this, int a2)
{
  if (*(this + 12) || !*(this + 4))
  {
    v5 = 3;
    v6 = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc";
    v7 = 265;
    memset(&__p, 0, sizeof(__p));
    std::string::append(&__p, "CHECK failed: backup_bytes_ == 0 && buffer_.get() != NULL: ");
    std::string::append(&__p, " BackUp() can only be called after Next().");
    google::protobuf::internal::LogFinisher::operator=(&v4, &v5);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (*(this + 11) < a2 && (v5 = 3, v6 = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", v7 = 267, memset(&__p, 0, sizeof(__p)), std::string::append(&__p, "CHECK failed: (count) <= (buffer_used_): "), std::string::append(&__p, " Can't back up over more bytes than were returned by the last call to Next()."), google::protobuf::internal::LogFinisher::operator=(&v4, &v5), SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a2 & 0x80000000) == 0)
  {
LABEL_8:
    *(this + 12) = a2;
    return;
  }

  v5 = 3;
  v6 = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc";
  v7 = 270;
  memset(&__p, 0, sizeof(__p));
  std::string::append(&__p, "CHECK failed: (count) >= (0): ");
  std::string::append(&__p, " Parameter to BackUp() can't be negative.");
  google::protobuf::internal::LogFinisher::operator=(&v4, &v5);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  *(this + 12) = a2;
}

void sub_1E1C6B498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL google::protobuf::io::CopyingInputStreamAdaptor::Skip(google::protobuf::io::CopyingInputStreamAdaptor *this, int a2)
{
  if (a2 < 0 && (v9 = 3, v10 = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", v11 = 276, memset(&__p, 0, sizeof(__p)), std::string::append(&__p, "CHECK failed: (count) >= (0): "), google::protobuf::internal::LogFinisher::operator=(&v8, &v9), SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (*(this + 17))
    {
      return 0;
    }
  }

  else if (*(this + 17))
  {
    return 0;
  }

  v5 = *(this + 12);
  if (v5 >= a2)
  {
    *(this + 12) = v5 - a2;
    return 1;
  }

  else
  {
    v6 = (a2 - v5);
    *(this + 12) = 0;
    v7 = (*(**(this + 1) + 24))(*(this + 1), v6);
    *(this + 3) += v7;
    return v7 == v6;
  }
}

void sub_1E1C6B5DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::io::CopyingOutputStreamAdaptor::~CopyingOutputStreamAdaptor(google::protobuf::io::CopyingOutputStreamAdaptor *this)
{
  *this = &unk_1F5CAC9D0;
  if ((*(this + 17) & 1) == 0 && *(this + 11))
  {
    if ((*(**(this + 1) + 16))(*(this + 1), *(this + 4)))
    {
      *(this + 3) += *(this + 11);
      *(this + 11) = 0;
    }

    else
    {
      *(this + 17) = 1;
      *(this + 11) = 0;
      v2 = *(this + 6);
      v3 = *(this + 4);
      *(this + 4) = 0;
      if (v2)
      {
        if (v3)
        {
          (*(*v2 + 8))(v2);
        }
      }

      else if (v3)
      {
        MEMORY[0x1E69064F0](v3, 0x1000C8077774924);
      }
    }
  }

  if (*(this + 16) == 1)
  {
    v4 = *(this + 1);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  *(this + 11) = 0;
  v5 = *(this + 6);
  v6 = *(this + 4);
  *(this + 4) = 0;
  if (v5)
  {
    if (!v6)
    {
      return;
    }

    (*(*v5 + 8))(v5);
    v7 = *(this + 4);
    *(this + 4) = 0;
    if (!v7)
    {
      return;
    }

LABEL_19:
    MEMORY[0x1E69064F0](v7, 0x1000C8077774924);
    return;
  }

  if (v6)
  {
    MEMORY[0x1E69064F0](v6, 0x1000C8077774924);
    v7 = *(this + 4);
    *(this + 4) = 0;
    if (v7)
    {
      goto LABEL_19;
    }
  }
}

{
  google::protobuf::io::CopyingOutputStreamAdaptor::~CopyingOutputStreamAdaptor(this);

  JUMPOUT(0x1E6906520);
}

uint64_t google::protobuf::io::CopyingOutputStreamAdaptor::Flush(google::protobuf::io::CopyingOutputStreamAdaptor *this)
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
  v3 = *(this + 6);
  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    if (v4)
    {
      (*(*v3 + 8))(v3);
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  MEMORY[0x1E69064F0](v4, 0x1000C8077774924);
  return 0;
}

uint64_t google::protobuf::io::CopyingOutputStreamAdaptor::Next(google::protobuf::io::CopyingOutputStreamAdaptor *this, void **a2, int *a3)
{
  v6 = *(this + 11);
  if (v6 != *(this + 10))
  {
    goto LABEL_7;
  }

  if (*(this + 17))
  {
    return 0;
  }

  if (!v6)
  {
    goto LABEL_7;
  }

  if ((*(**(this + 1) + 16))(*(this + 1), *(this + 4)))
  {
    *(this + 3) += *(this + 11);
    *(this + 11) = 0;
LABEL_7:
    v8 = *(this + 4);
    if (!v8)
    {
      v9 = *(this + 6);
      if (!v9)
      {
        operator new[]();
      }

      v8 = (**v9)(v9, *(this + 10));
      v10 = *(this + 4);
      *(this + 4) = v8;
      if (v10)
      {
        MEMORY[0x1E69064F0](v10, 0x1000C8077774924);
        v8 = *(this + 4);
      }
    }

    v11 = *(this + 10);
    v12 = *(this + 11);
    *a2 = (v8 + v12);
    *a3 = v11 - v12;
    *(this + 11) = *(this + 10);
    return 1;
  }

  *(this + 17) = 1;
  *(this + 11) = 0;
  v13 = *(this + 6);
  v14 = *(this + 4);
  *(this + 4) = 0;
  if (v13)
  {
    if (!v14)
    {
      return 0;
    }

    (*(*v13 + 8))(v13);
    return 0;
  }

  else
  {
    if (!v14)
    {
      return 0;
    }

    MEMORY[0x1E69064F0](v14, 0x1000C8077774924);
    return 0;
  }
}

void google::protobuf::io::CopyingOutputStreamAdaptor::BackUp(google::protobuf::io::CopyingOutputStreamAdaptor *this, int a2)
{
  if (a2 < 0 && (v6 = 3, v7 = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", v8 = 361, memset(&__p, 0, sizeof(__p)), std::string::append(&__p, "CHECK failed: (count) >= (0): "), google::protobuf::internal::LogFinisher::operator=(&v5, &v6), SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v4 = *(this + 11);
    if (v4 == *(this + 10))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v4 = *(this + 11);
    if (v4 == *(this + 10))
    {
      goto LABEL_7;
    }
  }

  v6 = 3;
  v7 = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc";
  v8 = 362;
  memset(&__p, 0, sizeof(__p));
  std::string::append(&__p, "CHECK failed: (buffer_used_) == (buffer_size_): ");
  std::string::append(&__p, " BackUp() can only be called after Next().");
  google::protobuf::internal::LogFinisher::operator=(&v5, &v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v4 = *(this + 11);
LABEL_7:
  if (v4 < a2)
  {
    v6 = 3;
    v7 = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc";
    v8 = 364;
    memset(&__p, 0, sizeof(__p));
    std::string::append(&__p, "CHECK failed: (count) <= (buffer_used_): ");
    std::string::append(&__p, " Can't back up over more bytes than were returned by the last call to Next().");
    google::protobuf::internal::LogFinisher::operator=(&v5, &v6);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v4 = *(this + 11);
  }

  *(this + 11) = v4 - a2;
}

void sub_1E1C6BC98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::internal::LogFinisher::operator=(uint64_t a1, unsigned int *a2)
{
  v3 = (a2 + 6);
  v2 = *a2;
  if ((v2 & 0x80000000) == 0)
  {
    v5 = MEMORY[0x1E69E9848];
    v6 = (&google::protobuf::internal::DefaultLogHandler(google::protobuf::LogLevel,char const*,int,std::string const&)::level_names)[v2];
    if (*(a2 + 47) >= 0)
    {
      v7 = (a2 + 6);
    }

    else
    {
      v7 = *(a2 + 3);
    }

    fprintf(*MEMORY[0x1E69E9848], "[libprotobuf %s %s:%d] %s\n", v6, *(a2 + 1), a2[4], v7);
    fflush(*v5);
    if (*a2 == 3)
    {
      exception = __cxa_allocate_exception(0x30uLL);
      google::protobuf::FatalException::FatalException(exception, *(a2 + 1), a2[4], v3);
    }
  }
}

uint64_t google::protobuf::FatalException::FatalException(uint64_t result, uint64_t a2, int a3, __int128 *a4)
{
  v4 = result;
  *result = &unk_1F5CACAA0;
  *(result + 8) = a2;
  *(result + 16) = a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((result + 24), *a4, *(a4 + 1));
    return v4;
  }

  else
  {
    v5 = *a4;
    *(result + 40) = *(a4 + 2);
    *(result + 24) = v5;
  }

  return result;
}

void google::protobuf::FatalException::~FatalException(std::exception *this)
{
  this->__vftable = &unk_1F5CACAA0;
  if (SHIBYTE(this[5].__vftable) < 0)
  {
    v2 = this;
    operator delete(this[3].__vftable);
    this = v2;
  }

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_1F5CACAA0;
  if (SHIBYTE(this[5].__vftable) < 0)
  {
    operator delete(this[3].__vftable);
  }

  std::exception::~exception(this);

  JUMPOUT(0x1E6906520);
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

void re::FixedArray<CoreIKTransform>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 59)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 32, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = 32 * a3;
  v6 = (*(*a2 + 32))(a2, 32 * a3, 16);
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
    bzero(v6, v5 - 32);
    v8 = (v8 + v5 - 32);
  }

  *v8 = 0u;
  v8[1] = 0u;
}

uint64_t re::internal::filterSolverCallback(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, re::RigDataValue *a7, uint64_t a8, void *a9)
{
  if (a4 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a4);
    _os_crash();
    __break(1u);
    goto LABEL_15;
  }

  Runtime = re::RigDataValue::getRuntimeValue<float>(a3 + 288, a2);
  MEMORY[0x1E6903680](*a9, *Runtime);
  if (!a8)
  {
LABEL_15:
    re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v14 = MEMORY[0x1E6903670](*a9, a9[4], a9[3]);
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  re::internal::updateOutputBasedOnSolveResult(v14, a3, a9 + 1, a7);
  result = re::internal::enableSignposts(0, 0);
  if (result)
  {

    return kdebug_trace();
  }

  return result;
}

uint64_t re::RigDataValue::getRuntimeValue<float>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 96);
  if (v2 == 4)
  {
    v7 = *(a1 + 24);
    v5 = *(a1 + 176);
    if (*(v7 + 272) > v5)
    {
      v6 = *(v7 + 280);
      return v6 + 4 * v5;
    }

LABEL_12:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v2 == 3)
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 176);
    if (*(v4 + 56) > v5)
    {
      v6 = *(v4 + 64);
      return v6 + 4 * v5;
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (v2 == 1)
  {
    return a1 + 112;
  }

  re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Unexpected runtime value type: %u", "!Unreachable code", "getRuntimeValue", 259, *(a1 + 96));
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::internal::filterSolverCompile(re::Allocator **a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v31[4] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  if (a3 == 1)
  {
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
    goto LABEL_17;
  }

  if (a3 <= 2)
  {
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash();
    __break(1u);
LABEL_18:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
  }

  if (!a5)
  {
    goto LABEL_18;
  }

  v6 = a2[1];
  v7 = a2[2];
  v8 = *a4;
  v9 = *(*a2 + 232);
  v10 = strlen(v9);
  v11 = MEMORY[0x1E6903780](v9, v10);
  v12 = *a1;
  v13 = (*(**a1 + 32))(*a1, 40, 8);
  *v13 = CoreIKCreateACPFilteringSolverFromRig();
  v13[1] = v12;
  v13[3] = 0;
  v13[4] = 0;
  v13[2] = 0;
  v14 = MEMORY[0x1E6903C40](v11);
  re::FixedArray<CoreIKTransform>::init<>(v13 + 2, v12, v14);
  v29[0] = &unk_1F5CACAC8;
  v29[1] = v12;
  v29[3] = v29;
  v31[3] = v31;
  v30 = v13;
  v31[0] = &unk_1F5CACAC8;
  v31[1] = v12;
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v29);
  v15 = *(v6 + 184);
  re::internal::makePoseFromRig(a1, v15, v11, v29);
  v16 = MEMORY[0x1E6903C40](v11);
  re::internal::makePose(a1, v16, v28);
  v27 = 0;
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  re::RigGraphCallbackBuilder::init(v23, *a1);
  *&v22.var0 = 0x10643527A253C4;
  v22.var1 = "TargetPose";
  re::RigGraphCallbackBuilder::addInputParam(v23, &v22, v29);
  if (*&v22.var0)
  {
    if (*&v22.var0)
    {
    }
  }

  *&v22.var0 = 0x1AC11FE5968114CLL;
  v22.var1 = "FilterAlpha";
  re::RigGraphCallbackBuilder::addInputParam(v23, &v22, v7);
  if (*&v22.var0)
  {
    if (*&v22.var0)
    {
    }
  }

  *&v22.var0 = 0x10498EC9357CACLL;
  v22.var1 = "SolvedPose";
  re::RigGraphCallbackBuilder::addOutputParam(v23, &v22, v28);
  if (*&v22.var0)
  {
    if (*&v22.var0)
    {
    }
  }

  re::RigGraphCallbackBuilder::buildCallbackData(v23, a1, re::internal::filterSolverCallback, &v30);
  v20 = re::internal::bindCallbackOutputToNodeOutputPose(v15, v28, v11, a1, v8);
  MEMORY[0x1E69037D0](v11, v20);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v25 + 8);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v23 + 8);
  re::RigDataValue::~RigDataValue(v28);
  re::RigDataValue::~RigDataValue(v29);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v30);
  return 1;
}

void re::internal::registerFilterSolverNode(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[0] = xmmword_1E8717A68;
  v11[1] = *&off_1E8717A78;
  v11[2] = xmmword_1E8717A88;
  v11[3] = *&off_1E8717A98;
  v3 = re::RigGraphOperatorDefinition::init(&v7, this, &v5, 3uLL, 1uLL, re::internal::filterSolverCompile, v11);
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_34CoreIKACPFilteringSolverNodeHelperENS2_9AllocatorEJP9CoreIKRigEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISF_EEFvSE_EE7__cloneEPNS0_6__baseISI_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CACAC8;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_34CoreIKACPFilteringSolverNodeHelperENS2_9AllocatorEJP9CoreIKRigEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISF_EEFvSE_EEclEOSE_(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    CoreIKDestroyACPFilteringSolver();
    re::FixedArray<CoreIKTransform>::deinit((v2 + 16));
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_34CoreIKACPFilteringSolverNodeHelperENS2_9AllocatorEJP9CoreIKRigEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISF_EEFvSE_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZN2re8internal14makeNodeUniqueINS0_34CoreIKACPFilteringSolverNodeHelperENS_9AllocatorEJP9CoreIKRigEEEDaPT0_DpT1_EUlPvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::FixedArray<CoreIKTransform>::deinit(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    if (a1[1])
    {
      result = (*(*result + 40))(result, a1[2]);
      a1[1] = 0;
      a1[2] = 0;
    }

    *a1 = 0;
  }

  return result;
}

BOOL std::type_info::operator==[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(uint64_t a1)
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
        v5 = 24 * v4;
        do
        {
          re::StringID::destroyString(v3);
          v3 = (v3 + 24);
          v5 -= 24;
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

void re::RigDataValue::~RigDataValue(re::RigDataValue *this)
{
  re::RigDataValue::deinit(this);
  re::DynamicArray<re::RigDataValue>::deinit(this + 240);
  re::StringID::destroyString((this + 224));
  std::unique_ptr<re::RigHierarchy,std::function<void ()(re::RigHierarchy*)>>::~unique_ptr[abi:nn200100](this + 23);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(this + 56);
  re::StringID::destroyString((this + 40));
}

uint64_t re::DynamicArray<re::RigDataValue>::deinit(uint64_t a1)
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
        v5 = 288 * v4;
        do
        {
          re::RigDataValue::~RigDataValue(v3);
          v3 = (v3 + 288);
          v5 -= 288;
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

uint64_t *std::unique_ptr<re::RigHierarchy,std::function<void ()(re::RigHierarchy*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::function<void ()(re::RigHierarchy *)>::operator()((a1 + 1), v2);
  }

  std::__function::__value_func<void ()(re::RigHierarchy *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

uint64_t std::function<void ()(re::RigHierarchy *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v4);
  }

  std::__throw_bad_function_call[abi:nn200100]();
  return std::__throw_bad_function_call[abi:nn200100]();
}

uint64_t std::__function::__value_func<void ()(re::RigHierarchy *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(uint64_t a1)
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
        v5 = 32 * v4;
        do
        {
          re::StringID::destroyString((v3 + 16));
          re::StringID::destroyString(v3);
          v3 += 32;
          v5 -= 32;
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

void *re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 32 * v2;
      do
      {
        re::StringID::destroyString((v4 + 16));
        re::StringID::destroyString(v4);
        v4 += 32;
        v5 -= 32;
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

uint64_t *std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::function<void ()(void *)>::operator()((a1 + 1), v2);
  }

  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

uint64_t std::function<void ()(void *)>::operator()(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v6);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return re::RigGraphCallbackBuilder::init(v4, v5);
}

void *re::RigGraphCallbackBuilder::init(re::RigGraphCallbackBuilder *this, re::Allocator *a2)
{
  v3 = this;
  *this = a2;
  *(this + 1) = a2;
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue const*,true>>::setCapacity(this + 1, 0);
  *(v3 + 6) = a2;
  v3 = (v3 + 48);
  ++*(v3 - 4);
  result = re::DynamicArray<re::Pair<re::StringID,re::RigDataValue const*,true>>::setCapacity(v3, 0);
  ++*(v3 + 6);
  return result;
}

void re::RigGraphCallbackBuilder::addInputParam(re::RigGraphCallbackBuilder *this, const StringID *a2, const re::RigDataValue *a3)
{
  re::StringID::StringID(v6, a2);
  v6[2] = a3;
  v5 = re::DynamicArray<re::Pair<re::StringID,re::RigDataValue const*,true>>::add(this + 1, v6);
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }
}

void *re::DynamicArray<re::Pair<re::StringID,re::RigDataValue const*,true>>::add(void *this, uint64_t *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::Pair<re::StringID,re::RigDataValue const*,true>>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = (v3[4] + 24 * v4);
  v6 = *a2;
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v5 = *a2 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  v7 = a2[2];
  v5[1] = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  v5[2] = v7;
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

void re::RigGraphCallbackBuilder::addOutputParam(re::RigGraphCallbackBuilder *this, const StringID *a2, re::RigDataValue *a3)
{
  re::StringID::StringID(v6, a2);
  v6[2] = a3;
  v5 = re::DynamicArray<re::Pair<re::StringID,re::RigDataValue const*,true>>::add(this + 6, v6);
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }
}

uint64_t *re::RigGraphCallbackBuilder::buildCallbackData(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v106 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = (*(**a1 + 32))(*a1, 112, 8);
  *v10 = 0u;
  v10[1] = 0u;
  v10[2] = 0u;
  v10[3] = 0u;
  v10[4] = 0u;
  v10[5] = 0u;
  v10[6] = 0u;
  v55[0] = &unk_1F5CACB58;
  v55[1] = v9;
  v56 = v55;
  v93 = v10;
  v95 = v94;
  v94[0] = &unk_1F5CACB58;
  v94[1] = v9;
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v55);
  v11 = v93;
  *v93 = a3;
  v11[1] = a4;
  re::FixedArray<re::StringID>::init<>(v11 + 2, v9, a1[3]);
  re::FixedArray<re::RigDataValue>::init<>((v11 + 5), v9, a1[3]);
  re::FixedArray<re::StringID>::init<>(v11 + 8, v9, a1[8]);
  re::FixedArray<re::RigDataValue>::init<>((v11 + 11), v9, a1[8]);
  re::EvaluationContextManager::EvaluationContextManager(v55);
  re::EvaluationContextManager::init(v55, v9);
  if (a1[3])
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 16;
    while (1)
    {
      v4 = v11[3];
      if (v4 <= v14)
      {
        break;
      }

      re::StringID::operator=((v11[4] + v12), (a1[5] + v15 - 16));
      v4 = a1[3];
      if (v4 <= v14)
      {
        goto LABEL_28;
      }

      v4 = v11[6];
      if (v4 <= v14)
      {
        goto LABEL_29;
      }

      re::RigDataValue::operator=((v11[7] + v13), *(a1[5] + v15));
      v4 = v11[6];
      if (v4 <= v14)
      {
        goto LABEL_30;
      }

      re::RigDataValue::resolveRuntimeInputValues((v11[7] + v13), v55);
      ++v14;
      v13 += 288;
      v15 += 24;
      v12 += 16;
      if (v14 >= a1[3])
      {
        goto LABEL_8;
      }
    }

    *v96 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v103[0] = 136315906;
    *&v103[1] = "operator[]";
    LOWORD(v103[3]) = 1024;
    *(&v103[3] + 2) = 468;
    HIWORD(v103[4]) = 2048;
    *&v103[5] = v14;
    LOWORD(v103[7]) = 2048;
    *(&v103[7] + 2) = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_28:
    *v96 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v103[0] = 136315906;
    *&v103[1] = "operator[]";
    LOWORD(v103[3]) = 1024;
    *(&v103[3] + 2) = 789;
    HIWORD(v103[4]) = 2048;
    *&v103[5] = v14;
    LOWORD(v103[7]) = 2048;
    *(&v103[7] + 2) = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_29:
    *v96 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v103[0] = 136315906;
    *&v103[1] = "operator[]";
    LOWORD(v103[3]) = 1024;
    *(&v103[3] + 2) = 468;
    HIWORD(v103[4]) = 2048;
    *&v103[5] = v14;
    LOWORD(v103[7]) = 2048;
    *(&v103[7] + 2) = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_30:
    *v96 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v103[0] = 136315906;
    *&v103[1] = "operator[]";
    LOWORD(v103[3]) = 1024;
    *(&v103[3] + 2) = 468;
    HIWORD(v103[4]) = 2048;
    *&v103[5] = v14;
    LOWORD(v103[7]) = 2048;
    *(&v103[7] + 2) = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_31;
  }

LABEL_8:
  if (a1[8])
  {
    v16 = 0;
    v17 = 0;
    v14 = 0;
    v18 = 16;
    while (1)
    {
      v4 = v11[9];
      if (v4 <= v14)
      {
        break;
      }

      re::StringID::operator=((v11[10] + v16), (a1[10] + v18 - 16));
      v4 = a1[8];
      if (v4 <= v14)
      {
        goto LABEL_33;
      }

      v4 = v11[12];
      if (v4 <= v14)
      {
        goto LABEL_34;
      }

      re::RigDataValue::operator=((v11[13] + v17), *(a1[10] + v18));
      v4 = v11[12];
      if (v4 <= v14)
      {
        goto LABEL_35;
      }

      re::RigDataValue::resolveRuntimeOutputValues(v11[13] + v17, v55);
      ++v14;
      v17 += 288;
      v18 += 24;
      v16 += 16;
      if (v14 >= a1[8])
      {
        goto LABEL_15;
      }
    }

LABEL_32:
    *v96 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v103[0] = 136315906;
    *&v103[1] = "operator[]";
    LOWORD(v103[3]) = 1024;
    *(&v103[3] + 2) = 468;
    HIWORD(v103[4]) = 2048;
    *&v103[5] = v14;
    LOWORD(v103[7]) = 2048;
    *(&v103[7] + 2) = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_33:
    *v96 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v103[0] = 136315906;
    *&v103[1] = "operator[]";
    LOWORD(v103[3]) = 1024;
    *(&v103[3] + 2) = 789;
    HIWORD(v103[4]) = 2048;
    *&v103[5] = v14;
    LOWORD(v103[7]) = 2048;
    *(&v103[7] + 2) = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_34:
    *v96 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v103[0] = 136315906;
    *&v103[1] = "operator[]";
    LOWORD(v103[3]) = 1024;
    *(&v103[3] + 2) = 468;
    HIWORD(v103[4]) = 2048;
    *&v103[5] = v14;
    LOWORD(v103[7]) = 2048;
    *(&v103[7] + 2) = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_35:
    *v96 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v103[0] = 136315906;
    *&v103[1] = "operator[]";
    LOWORD(v103[3]) = 1024;
    *(&v103[3] + 2) = 468;
    HIWORD(v103[4]) = 2048;
    *&v103[5] = v14;
    LOWORD(v103[7]) = 2048;
    *(&v103[7] + 2) = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_15:
  if ((v92 & 1) == 0)
  {
    re::EvaluationContextManager::buildEvaluationContext(v55);
  }

  *&v24 = v57;
  *(&v24 + 1) = v56;
  *&v25 = v59;
  *(&v25 + 1) = v58;
  *&v26 = v61;
  *(&v26 + 1) = v60;
  *&v27 = v63;
  *(&v27 + 1) = v62;
  *&v28 = v65;
  *(&v28 + 1) = v64;
  v29 = v67;
  v30 = v66;
  v31 = v69;
  v32 = v68;
  v33 = v71;
  v34 = v70;
  v35 = v73;
  v36 = v72;
  v37 = v75;
  v38 = v74;
  v39 = v77;
  v40 = v76;
  v41 = v79;
  v42 = v78;
  v43 = v81;
  v44 = v80;
  v45 = v83;
  v46 = v82;
  v47 = v85;
  v48 = v84;
  v49 = v87;
  v50 = v86;
  v51 = v89;
  v52 = v88;
  v53 = v91;
  v54 = v90;
  if (a1[8])
  {
    v19 = 0;
    v14 = 0;
    v20 = 16;
    while (1)
    {
      v13 = v11[12];
      if (v13 <= v14)
      {
        break;
      }

      re::RigDataValue::setCompilationValueFromCallbackOutput(*(a1[10] + v20), (v11[13] + v19), &v24);
      ++v14;
      v20 += 24;
      v19 += 288;
      if (v14 >= a1[8])
      {
        goto LABEL_21;
      }
    }

LABEL_31:
    v104 = 0u;
    v105 = 0u;
    memset(v103, 0, sizeof(v103));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v96 = 136315906;
    *&v96[4] = "operator[]";
    v97 = 1024;
    v98 = 468;
    v99 = 2048;
    v100 = v14;
    v101 = 2048;
    v102 = v13;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_32;
  }

LABEL_21:
  v21 = re::BucketArray<std::unique_ptr<void,std::function<void ()(void *)>>,64ul>::addUninitialized(a2 + 32);
  v22 = v93;
  v93 = 0;
  *v21 = v22;
  if (v95)
  {
    if (v95 == v94)
    {
      v21[4] = v21 + 1;
      (*(*v95 + 24))(v95);
    }

    else
    {
      v21[4] = v95;
      v95 = 0;
    }
  }

  else
  {
    v21[4] = 0;
  }

  re::EvaluationContextManager::~EvaluationContextManager(v55);
  return std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v93);
}

void *re::FixedArray<re::StringID>::init<>(void *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >> 60)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 16, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 16 * a3, 8);
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
      result[1] = &str_67;
      result += 2;
      --v6;
    }

    while (v6);
  }

  *result = 0;
  result[1] = &str_67;
  return result;
}

uint64_t re::FixedArray<re::RigDataValue>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0xE38E38E38E38E4)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 288, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 288 * a3, 16);
  *(v4 + 16) = result;
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
      *(result + 32) = 0;
      *result = 0uLL;
      *(result + 16) = 0uLL;
      *(result + 40) = 0;
      *(result + 48) = &str_67;
      *(result + 88) = 0;
      *(result + 64) = 0;
      *(result + 72) = 0;
      *(result + 56) = 0;
      *(result + 80) = 0;
      *(result + 96) = 0;
      *(result + 112) = 0uLL;
      *(result + 128) = 0uLL;
      *(result + 144) = 0uLL;
      *(result + 160) = 0uLL;
      *(result + 176) = -1;
      *(result + 184) = 0;
      *(result + 216) = 0;
      *(result + 224) = 0;
      *(result + 272) = 0;
      *(result + 264) = 0;
      *(result + 232) = &str_67;
      *(result + 240) = 0;
      *(result + 248) = 0;
      *(result + 256) = 0;
      result += 288;
      --v6;
    }

    while (v6);
  }

  *(result + 32) = 0;
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 40) = 0;
  *(result + 48) = &str_67;
  *(result + 88) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 56) = 0;
  *(result + 80) = 0;
  *(result + 96) = 0;
  *(result + 112) = 0u;
  *(result + 128) = 0u;
  *(result + 144) = 0u;
  *(result + 160) = 0u;
  *(result + 176) = -1;
  *(result + 184) = 0;
  *(result + 216) = 0;
  *(result + 224) = 0;
  *(result + 272) = 0;
  *(result + 264) = 0;
  *(result + 232) = &str_67;
  *(result + 240) = 0;
  *(result + 248) = 0;
  *(result + 256) = 0;
  return result;
}

uint64_t re::EvaluationContextManager::init(re::EvaluationContextManager *this, re::Allocator *a2)
{
  v12 = a2;
  *this = a2;
  re::DynamicRegisterIdTable::initArrays<re::Allocator *&>(this + 1, &v12);
  *(this + 41) = v12;
  re::DynamicArray<re::EvaluationSRT>::setCapacity(this + 41, 0);
  ++*(this + 88);
  re::DynamicRegisterTable::initArrays<re::Allocator *&>(this + 46, &v12);
  *(this + 86) = v12;
  re::DynamicArray<re::Matrix3x3<float>>::setCapacity(this + 86, 0);
  ++*(this + 178);
  v3 = this + 728;
  v4 = 9;
  do
  {
    *v3 = v12;
    re::DynamicArray<re::EvaluationContextManager::BindPointReference>::setCapacity(v3, 0);
    ++*(v3 + 6);
    v3 += 40;
    --v4;
  }

  while (v4);
  v5 = this + 1088;
  v6 = 9;
  do
  {
    *v5 = v12;
    re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v5, 0);
    ++*(v5 + 6);
    v5 += 40;
    --v6;
  }

  while (v6);
  re::DynamicRegisterIdTable::initArrays<re::Allocator *&>(this + 181, &v12);
  *(this + 221) = v12;
  re::DynamicArray<re::EvaluationSRT>::setCapacity(this + 221, 0);
  ++*(this + 448);
  v7 = this + 1808;
  v8 = 9;
  do
  {
    *v7 = v12;
    re::DynamicArray<re::EvaluationContextManager::BindPointReference>::setCapacity(v7, 0);
    ++*(v7 + 6);
    v7 += 40;
    --v8;
  }

  while (v8);
  v9 = this + 2168;
  v10 = 9;
  do
  {
    *v9 = v12;
    re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v9, 0);
    ++*(v9 + 6);
    v9 += 40;
    --v10;
  }

  while (v10);
  *(this + 2528) = 0;
  return re::EvaluationContext::deinit((this + 2536));
}

uint64_t re::anonymous namespace::resolveEvaluationContextCallback(re::_anonymous_namespace_ *this, re::EvaluationContext *a2, void *a3)
{
  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 7);
    v7 = 288 * v5;
    do
    {
      re::RigDataValue::setRuntimeContext(v6, this);
      v6 += 288;
      v7 -= 288;
    }

    while (v7);
  }

  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  if (v8)
  {
    v10 = 288 * v8;
    do
    {
      re::RigDataValue::setRuntimeContext(v9, this);
      v9 += 288;
      v10 -= 288;
    }

    while (v10);
    v11 = *(a2 + 12);
    v9 = *(a2 + 13);
  }

  else
  {
    v11 = 0;
  }

  return (*a2)(*(a2 + 4), *(a2 + 3), *(a2 + 7), *(a2 + 6), *(a2 + 10), *(a2 + 9), v9, v11, *(a2 + 1));
}

uint64_t re::RigGraphCallbackBuilder::buildCallbackData(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  re::RigGraphCallbackBuilder::buildCallbackData(a1, a2, a3, *a4);
  v6 = re::BucketArray<std::unique_ptr<void,std::function<void ()(void *)>>,64ul>::addUninitialized(a2 + 32);
  v7 = *a4;
  *a4 = 0;
  *v6 = v7;
  v8 = (v6 + 1);

  return std::__function::__value_func<void ()(void *)>::__value_func[abi:nn200100](v8, (a4 + 1));
}

double re::EvaluationContextManager::EvaluationContextManager(re::EvaluationContextManager *this)
{
  v1 = 0;
  *(this + 18) = 0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 0;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 48) = 0;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 58) = 0;
  *(this + 68) = 0;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 78) = 0;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 108) = 0;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 118) = 0;
  *(this + 128) = 0;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 138) = 0;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 148) = 0;
  *(this + 158) = 0;
  *(this + 600) = 0u;
  *(this + 616) = 0u;
  *(this + 168) = 0;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 90) = 0;
  *(this + 8) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 88) = 0;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 98) = 0;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 178) = 0;
  *(this + 680) = 0u;
  *(this + 696) = 0u;
  do
  {
    v2 = this + v1;
    *(v2 + 95) = 0;
    *(v2 + 91) = 0;
    *(v2 + 93) = 0;
    *(v2 + 92) = 0;
    v1 += 40;
    *(v2 + 188) = 0;
  }

  while (v1 != 360);
  for (i = 0; i != 360; i += 40)
  {
    v4 = this + i;
    *(v4 + 140) = 0;
    *(v4 + 136) = 0;
    *(v4 + 138) = 0;
    *(v4 + 137) = 0;
    *(v4 + 278) = 0;
  }

  v5 = 0;
  *(this + 368) = 0;
  *(this + 183) = 0;
  *(this + 1448) = 0u;
  *(this + 1480) = 0u;
  *(this + 1496) = 0u;
  *(this + 378) = 0;
  *(this + 95) = 0u;
  *(this + 96) = 0u;
  *(this + 388) = 0;
  *(this + 398) = 0;
  *(this + 1560) = 0u;
  *(this + 1576) = 0u;
  *(this + 100) = 0u;
  *(this + 101) = 0u;
  *(this + 408) = 0;
  *(this + 418) = 0;
  *(this + 1640) = 0u;
  *(this + 1656) = 0u;
  *(this + 428) = 0;
  *(this + 106) = 0u;
  *(this + 105) = 0u;
  *(this + 438) = 0;
  *(this + 1720) = 0u;
  *(this + 1736) = 0u;
  *(this + 225) = 0;
  *(this + 448) = 0;
  *(this + 111) = 0u;
  *(this + 110) = 0u;
  do
  {
    v6 = this + v5;
    *(v6 + 230) = 0;
    *(v6 + 226) = 0;
    *(v6 + 228) = 0;
    *(v6 + 227) = 0;
    v5 += 40;
    *(v6 + 458) = 0;
  }

  while (v5 != 360);
  for (j = 0; j != 360; j += 40)
  {
    v8 = this + j;
    *(v8 + 275) = 0;
    *(v8 + 271) = 0;
    *(v8 + 273) = 0;
    *(v8 + 272) = 0;
    *(v8 + 548) = 0;
  }

  *(this + 2528) = 0;
  result = 0.0;
  *(this + 2536) = 0u;
  *(this + 2552) = 0u;
  *(this + 2568) = 0u;
  *(this + 2584) = 0u;
  *(this + 2600) = 0u;
  *(this + 2616) = 0u;
  *(this + 2632) = 0u;
  *(this + 2648) = 0u;
  *(this + 2664) = 0u;
  *(this + 2680) = 0u;
  *(this + 2696) = 0u;
  *(this + 2712) = 0u;
  *(this + 2728) = 0u;
  *(this + 2744) = 0u;
  *(this + 2760) = 0u;
  *(this + 2776) = 0u;
  *(this + 2792) = 0u;
  *(this + 2808) = 0u;
  *(this + 2824) = 0u;
  *(this + 2840) = 0u;
  *(this + 2856) = 0u;
  *(this + 2872) = 0u;
  *(this + 2888) = 0u;
  *(this + 2904) = 0u;
  *(this + 2920) = 0u;
  *(this + 2936) = 0u;
  *(this + 2952) = 0u;
  return result;
}

void *re::DynamicRegisterIdTable::initArrays<re::Allocator *&>(void *a1, void *a2)
{
  v3 = a1;
  *a1 = *a2;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(a1, 0);
  ++*(v3 + 6);
  v3[5] = *a2;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v3 + 5, 0);
  ++*(v3 + 16);
  v3[10] = *a2;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v3 + 10, 0);
  ++*(v3 + 26);
  v3[15] = *a2;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v3 + 15, 0);
  ++*(v3 + 36);
  v3[20] = *a2;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v3 + 20, 0);
  ++*(v3 + 46);
  v3[25] = *a2;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v3 + 25, 0);
  v3[30] = *a2;
  v3 += 30;
  ++*(v3 - 4);
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v3, 0);
  ++*(v3 + 6);
  v3[5] = *a2;
  result = re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v3 + 5, 0);
  ++*(v3 + 16);
  return result;
}

void *re::DynamicRegisterTable::initArrays<re::Allocator *&>(void *a1, void *a2)
{
  v3 = a1;
  *a1 = *a2;
  re::DynamicArray<int>::setCapacity(a1, 0);
  ++*(v3 + 6);
  v3[5] = *a2;
  re::DynamicArray<int>::setCapacity(v3 + 5, 0);
  ++*(v3 + 16);
  v3[10] = *a2;
  re::DynamicArray<int>::setCapacity(v3 + 10, 0);
  ++*(v3 + 26);
  v3[15] = *a2;
  re::DynamicArray<re::Matrix3x3<float>>::setCapacity(v3 + 15, 0);
  ++*(v3 + 36);
  v3[20] = *a2;
  re::DynamicArray<re::Matrix4x4<float>>::setCapacity(v3 + 20, 0);
  ++*(v3 + 46);
  v3[25] = *a2;
  re::DynamicArray<re::Quaternion<float>>::setCapacity(v3 + 25, 0);
  v3[30] = *a2;
  v3 += 30;
  ++*(v3 - 4);
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v3, 0);
  ++*(v3 + 6);
  v3[5] = *a2;
  result = re::DynamicArray<re::Quaternion<float>>::setCapacity(v3 + 5, 0);
  ++*(v3 + 16);
  return result;
}

uint64_t re::EvaluationContext::deinit(re::EvaluationContext *this)
{
  re::FixedRegisterTable::deinit(this);
  re::FixedArray<CoreIKTransform>::deinit(this + 24);
  re::FixedRegisterTable::deinit((this + 216));

  return re::FixedArray<CoreIKTransform>::deinit(this + 51);
}

void *re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(void *result, unint64_t a2)
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

        if (a2 >> 61)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 8, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 8 * a2;
          result = (*(*result + 32))(result, 8 * a2, 8);
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
            memcpy(v7, v5[4], 8 * v5[2]);
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
        result = re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::EvaluationSRT>::setCapacity(void *result, unint64_t a2)
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

        if (is_mul_ok(a2, 0x18uLL))
        {
          v2 = 24 * a2;
          result = (*(*result + 32))(result, 24 * a2, 8);
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
            memcpy(v7, v5[4], 24 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 24, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::EvaluationSRT>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::DynamicArray<int>::setCapacity(void *result, unint64_t a2)
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

        if (a2 >> 62)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 4, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 4 * a2;
          result = (*(*result + 32))(result, 4 * a2, 4);
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
            memcpy(v7, v5[4], 4 * v5[2]);
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
        result = re::DynamicArray<int>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::Matrix3x3<float>>::setCapacity(void *result, unint64_t a2)
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

        if (is_mul_ok(a2, 0x30uLL))
        {
          v2 = 48 * a2;
          result = (*(*result + 32))(result, 48 * a2, 16);
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
            memcpy(v7, v5[4], 48 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
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
      }

      else
      {
        result = re::DynamicArray<re::Matrix3x3<float>>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::Matrix4x4<float>>::setCapacity(void *result, unint64_t a2)
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
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], v5[2] << 6);
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
        result = re::DynamicArray<re::Matrix4x4<float>>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::Quaternion<float>>::setCapacity(void *result, unint64_t a2)
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

        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 16 * a2;
          result = (*(*result + 32))(result, 16 * a2, 16);
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
            memcpy(v7, v5[4], 16 * v5[2]);
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
        result = re::DynamicArray<re::Quaternion<float>>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::EvaluationContextManager::BindPointReference>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::EvaluationContextManager::BindPointReference>::setCapacity(v5, a2);
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
              goto LABEL_16;
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
        v10 = &v8[7 * v9];
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
          v13 = v8[1];
          v14 = v8[2];
          v15 = (v8 + 1);
          v11[1] = v13;
          v11[2] = v14;
          *v15 = 0;
          *(v15 + 8) = 0;
          v16 = v11[3];
          v11[3] = *(v15 + 16);
          *(v15 + 16) = v16;
          v17 = v11[5];
          v11[5] = *(v15 + 32);
          *(v15 + 32) = v17;
          ++*(v15 + 24);
          ++*(v11 + 8);
          *(v11 + 48) = *(v15 + 40);
          re::DynamicArray<re::BindPoint::BindPointData>::deinit(v15);
          re::DynamicArray<re::BindPoint::BindPointData>::deinit(v15);
          v11 += 7;
          v8 = (v15 + 48);
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

uint64_t re::FixedRegisterTable::deinit(re::FixedRegisterTable *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this);
  re::FixedArray<CoreIKTransform>::deinit(this + 3);
  re::FixedArray<CoreIKTransform>::deinit(this + 6);
  re::FixedArray<CoreIKTransform>::deinit(this + 9);
  re::FixedArray<CoreIKTransform>::deinit(this + 12);
  re::FixedArray<CoreIKTransform>::deinit(this + 15);
  re::FixedArray<CoreIKTransform>::deinit(this + 18);

  return re::FixedArray<CoreIKTransform>::deinit(this + 21);
}

void re::EvaluationContextManager::~EvaluationContextManager(re::EvaluationContextManager *this)
{
  re::EvaluationContext::~EvaluationContext((this + 2536));
  for (i = 2488; i != 2128; i -= 40)
  {
    re::DynamicArray<unsigned long>::deinit(this + i);
  }

  do
  {
    re::DynamicArray<re::EvaluationContextManager::BindPointReference>::deinit(this + i);
    i -= 40;
  }

  while (i != 1768);
  re::DynamicArray<unsigned long>::deinit(this + 1768);
  re::DynamicArray<unsigned long>::deinit(this + 1728);
  re::DynamicArray<unsigned long>::deinit(this + 1688);
  re::DynamicArray<unsigned long>::deinit(this + 1648);
  re::DynamicArray<unsigned long>::deinit(this + 1608);
  re::DynamicArray<unsigned long>::deinit(this + 1568);
  re::DynamicArray<unsigned long>::deinit(this + 1528);
  re::DynamicArray<unsigned long>::deinit(this + 1488);
  re::DynamicArray<unsigned long>::deinit(this + 1448);
  for (j = 1408; j != 1048; j -= 40)
  {
    re::DynamicArray<unsigned long>::deinit(this + j);
  }

  do
  {
    re::DynamicArray<re::EvaluationContextManager::BindPointReference>::deinit(this + j);
    j -= 40;
  }

  while (j != 688);
  re::DynamicArray<unsigned long>::deinit(this + 688);
  re::DynamicArray<unsigned long>::deinit(this + 648);
  re::DynamicArray<unsigned long>::deinit(this + 608);
  re::DynamicArray<unsigned long>::deinit(this + 568);
  re::DynamicArray<unsigned long>::deinit(this + 528);
  re::DynamicArray<unsigned long>::deinit(this + 488);
  re::DynamicArray<unsigned long>::deinit(this + 448);
  re::DynamicArray<unsigned long>::deinit(this + 408);
  re::DynamicArray<unsigned long>::deinit(this + 368);
  re::DynamicArray<unsigned long>::deinit(this + 328);
  re::DynamicArray<unsigned long>::deinit(this + 288);
  re::DynamicArray<unsigned long>::deinit(this + 248);
  re::DynamicArray<unsigned long>::deinit(this + 208);
  re::DynamicArray<unsigned long>::deinit(this + 168);
  re::DynamicArray<unsigned long>::deinit(this + 128);
  re::DynamicArray<unsigned long>::deinit(this + 88);
  re::DynamicArray<unsigned long>::deinit(this + 48);
  re::DynamicArray<unsigned long>::deinit(this + 8);
}

void re::EvaluationContext::~EvaluationContext(re::EvaluationContext *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 51);
  re::FixedArray<CoreIKTransform>::deinit(this + 48);
  re::FixedArray<CoreIKTransform>::deinit(this + 45);
  re::FixedArray<CoreIKTransform>::deinit(this + 42);
  re::FixedArray<CoreIKTransform>::deinit(this + 39);
  re::FixedArray<CoreIKTransform>::deinit(this + 36);
  re::FixedArray<CoreIKTransform>::deinit(this + 33);
  re::FixedArray<CoreIKTransform>::deinit(this + 30);
  re::FixedArray<CoreIKTransform>::deinit(this + 27);
  re::FixedArray<CoreIKTransform>::deinit(this + 24);
  re::FixedArray<CoreIKTransform>::deinit(this + 21);
  re::FixedArray<CoreIKTransform>::deinit(this + 18);
  re::FixedArray<CoreIKTransform>::deinit(this + 15);
  re::FixedArray<CoreIKTransform>::deinit(this + 12);
  re::FixedArray<CoreIKTransform>::deinit(this + 9);
  re::FixedArray<CoreIKTransform>::deinit(this + 6);
  re::FixedArray<CoreIKTransform>::deinit(this + 3);
  re::FixedArray<CoreIKTransform>::deinit(this);
}

uint64_t re::DynamicArray<unsigned long>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    if (*(a1 + 32))
    {
      result = (*(*result + 40))(result);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::EvaluationContextManager::BindPointReference>::deinit(uint64_t a1)
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
        v5 = v3 + 8;
        v6 = 56 * v4;
        do
        {
          re::DynamicArray<re::BindPoint::BindPointData>::deinit(v5);
          re::DynamicArray<re::BindPoint::BindPointData>::deinit(v5);
          v5 += 56;
          v6 -= 56;
        }

        while (v6);
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

void *re::DynamicArray<re::Pair<re::StringID,re::RigDataValue const*,true>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::Pair<re::StringID,re::RigDataValue const*,true>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x18uLL))
        {
          v2 = 24 * a2;
          result = (*(*result + 32))(result, 24 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 24, a2);
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
        v10 = (v8 + 24 * v9);
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v13 = *(v8 + 2);
          v11[1] = *(v8 + 1);
          *v8 = 0;
          *(v8 + 1) = &str_67;
          v11[2] = v13;
          re::StringID::destroyString(v8);
          v8 = (v8 + 24);
          v11 += 3;
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

void *re::DynamicArray<re::Pair<re::StringID,re::RigDataValue const*,true>>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::Pair<re::StringID,re::RigDataValue const*,true>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Pair<re::StringID,re::RigDataValue const*,true>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t std::__function::__func<re::RigGraphCallbackBuilder::buildCallbackData(re::RigGraphSystem &,void (*)(re::Slice<re::StringID>,re::Slice<re::RigDataValue>,re::Slice<re::StringID>,re::MutableSlice<re::RigDataValue>,void *),void *)::$_0,std::allocator<re::RigGraphCallbackBuilder::buildCallbackData(re::RigGraphSystem &,void (*)(re::Slice<re::StringID>,re::Slice<re::RigDataValue>,re::Slice<re::StringID>,re::MutableSlice<re::RigDataValue>,void *),void *)::$_0>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CACB58;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::RigGraphCallbackBuilder::buildCallbackData(re::RigGraphSystem &,void (*)(re::Slice<re::StringID>,re::Slice<re::RigDataValue>,re::Slice<re::StringID>,re::MutableSlice<re::RigDataValue>,void *),void *)::$_0,std::allocator<re::RigGraphCallbackBuilder::buildCallbackData(re::RigGraphSystem &,void (*)(re::Slice<re::StringID>,re::Slice<re::RigDataValue>,re::Slice<re::StringID>,re::MutableSlice<re::RigDataValue>,void *),void *)::$_0>,void ()(void *)>::operator()(uint64_t result, void *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    re::FixedArray<re::RigDataValue>::deinit(v2 + 11);
    re::FixedArray<re::StringID>::deinit(v2 + 8);
    re::FixedArray<re::RigDataValue>::deinit(v2 + 5);
    re::FixedArray<re::StringID>::deinit(v2 + 2);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<re::RigGraphCallbackBuilder::buildCallbackData(re::RigGraphSystem &,void (*)(re::Slice<re::StringID>,re::Slice<re::RigDataValue>,re::Slice<re::StringID>,re::MutableSlice<re::RigDataValue>,void *),void *)::$_0,std::allocator<re::RigGraphCallbackBuilder::buildCallbackData(re::RigGraphSystem &,void (*)(re::Slice<re::StringID>,re::Slice<re::RigDataValue>,re::Slice<re::StringID>,re::MutableSlice<re::RigDataValue>,void *),void *)::$_0>,void ()(void *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *re::FixedArray<re::RigDataValue>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 288 * v2;
      do
      {
        re::RigDataValue::~RigDataValue(v4);
        v4 = (v6 + 288);
        v5 -= 288;
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

void *re::FixedArray<re::StringID>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 16 * v2;
      do
      {
        re::StringID::destroyString(v4);
        v4 = (v4 + 16);
        v5 -= 16;
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

void *re::EvaluationContextManager::buildEvaluationContext(re::EvaluationContextManager *this)
{
  *(this + 2528) = 1;
  re::FixedRegisterTable::initSize<re::DynamicRegisterTable>(this + 317, *this, this + 46);
  re::FixedRegisterTable::operator=<re::DynamicRegisterTable>(this + 2536, this + 46);
  re::FixedArray<re::GenericSRT<float>>::init<>(this + 341, *this, *(this + 88));
  v2 = *(this + 88);
  v4[0] = *(this + 90);
  v4[1] = v2;
  re::FixedArray<re::GenericSRT<float>>::operator=((this + 2728), v4);
  re::FixedRegisterTable::initSize<re::DynamicRegisterTable>(this + 344, *this, this + 181);
  return re::FixedArray<re::GenericSRT<float>>::init<>(this + 368, *this, *(this + 223));
}

void *re::SliceRegisterIdTable::operator=<re::DynamicRegisterIdTable>(void *result, void *a2)
{
  v2 = a2[2];
  *result = a2[4];
  result[1] = v2;
  v3 = a2[7];
  result[2] = a2[9];
  result[3] = v3;
  v4 = a2[12];
  result[4] = a2[14];
  result[5] = v4;
  v5 = a2[17];
  result[6] = a2[19];
  result[7] = v5;
  v6 = a2[22];
  result[8] = a2[24];
  result[9] = v6;
  v7 = a2[27];
  result[10] = a2[29];
  result[11] = v7;
  v8 = a2[32];
  result[12] = a2[34];
  result[13] = v8;
  v9 = a2[37];
  result[14] = a2[39];
  result[15] = v9;
  return result;
}

void re::FixedRegisterTable::initSize<re::DynamicRegisterTable>(uint64_t *a1, uint64_t a2, unint64_t *a3)
{
  re::FixedArray<int>::init<>(a1, a2, a3[2]);
  re::FixedArray<int>::init<>(a1 + 3, a2, a3[7]);
  re::FixedArray<int>::init<>(a1 + 6, a2, a3[12]);
  re::FixedArray<re::Matrix3x3<float>>::init<>(a1 + 9, a2, a3[17]);
  re::FixedArray<re::Matrix4x4<float>>::init<>(a1 + 12, a2, a3[22]);
  re::FixedArray<re::Quaternion<float>>::init<>(a1 + 15, a2, a3[27]);
  re::FixedArray<re::Vector2<float>>::init<>(a1 + 18, a2, a3[32]);
  v6 = a3[37];

  re::FixedArray<re::Vector3<float>>::init<>(a1 + 21, a2, v6);
}

uint64_t re::FixedRegisterTable::operator=<re::DynamicRegisterTable>(uint64_t a1, void *a2)
{
  v4 = a2[2];
  v13 = a2[4];
  v14 = v4;
  re::FixedArray<int>::operator=(a1, &v13);
  v5 = a2[7];
  v13 = a2[9];
  v14 = v5;
  re::FixedArray<int>::operator=((a1 + 24), &v13);
  v6 = a2[12];
  v13 = a2[14];
  v14 = v6;
  re::FixedArray<int>::operator=((a1 + 48), &v13);
  v7 = a2[17];
  v13 = a2[19];
  v14 = v7;
  re::FixedArray<re::Matrix3x3<float>>::operator=((a1 + 72), &v13);
  v8 = a2[22];
  v13 = a2[24];
  v14 = v8;
  re::FixedArray<re::Matrix4x4<float>>::operator=((a1 + 96), &v13);
  v9 = a2[27];
  v13 = a2[29];
  v14 = v9;
  re::FixedArray<re::Quaternion<float>>::operator=((a1 + 120), &v13);
  v10 = a2[32];
  v13 = a2[34];
  v14 = v10;
  re::FixedArray<re::Vector2<float>>::operator=((a1 + 144), &v13);
  v11 = a2[37];
  v13 = a2[39];
  v14 = v11;
  re::FixedArray<re::Vector3<float>>::operator=((a1 + 168), &v13);
  return a1;
}

void *re::FixedArray<re::GenericSRT<float>>::init<>(void *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x555555555555556)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 48, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 48 * a3, 16);
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
      *result = 0x3F8000003F800000;
      result[1] = 1065353216;
      result[2] = 0;
      result[3] = 0x3F80000000000000;
      result[4] = 0;
      result[5] = 0;
      result += 6;
      --v6;
    }

    while (v6);
  }

  *result = 0x3F8000003F800000;
  result[1] = 1065353216;
  result[2] = 0;
  result[3] = 0x3F80000000000000;
  result[4] = 0;
  result[5] = 0;
  return result;
}

_anonymous_namespace_ *re::FixedArray<re::GenericSRT<float>>::operator=(_anonymous_namespace_ *a1, uint64_t a2)
{
  if (*a1)
  {
    goto LABEL_4;
  }

  v4 = *(a2 + 8);
  if (v4)
  {
LABEL_4:
    re::FixedArray<re::Matrix3x3<float>>::copy(a1, a2);
  }

  return a1;
}

void re::FixedArray<int>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 62)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 4, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = 4 * a3;
  v6 = (*(*a2 + 32))(a2, 4 * a3, 4);
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
    bzero(v6, v5 - 4);
    v8 = (v8 + v5 - 4);
  }

  *v8 = 0;
}

void re::FixedArray<re::Matrix3x3<float>>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >= 0x555555555555556)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 48, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = 48 * a3;
  v6 = (*(*a2 + 32))(a2, 48 * a3, 16);
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
    bzero(v6, v5 - 48);
    v8 = (v8 + v5 - 48);
  }

  v8[1] = 0u;
  v8[2] = 0u;
  *v8 = 0u;
}

void re::FixedArray<re::Matrix4x4<float>>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 58)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 64, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = a3 << 6;
  v6 = (*(*a2 + 32))(a2, a3 << 6, 16);
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
    bzero(v6, v5 - 64);
    v8 = (v8 + v5 - 64);
  }

  v8[2] = 0u;
  v8[3] = 0u;
  *v8 = 0u;
  v8[1] = 0u;
}

void re::FixedArray<re::Quaternion<float>>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 60)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 16, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = 16 * a3;
  v6 = (*(*a2 + 32))(a2, 16 * a3, 16);
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
    memset_pattern16(v6, &memset_pattern, v5 - 16);
    v8 = (v8 + v5 - 16);
  }

  *v8 = xmmword_1E30474D0;
}

void re::FixedArray<re::Vector2<float>>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
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

void re::FixedArray<re::Vector3<float>>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 60)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 16, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = 16 * a3;
  v6 = (*(*a2 + 32))(a2, 16 * a3, 16);
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
    bzero(v6, v5 - 16);
    v8 = (v8 + v5 - 16);
  }

  *v8 = 0u;
}

_anonymous_namespace_ *re::FixedArray<int>::operator=(_anonymous_namespace_ *a1, uint64_t a2)
{
  if (*a1)
  {
    goto LABEL_4;
  }

  v4 = *(a2 + 8);
  if (v4)
  {
LABEL_4:
    re::FixedArray<int>::copy(a1, a2);
  }

  return a1;
}

_anonymous_namespace_ *re::FixedArray<re::Matrix3x3<float>>::operator=(_anonymous_namespace_ *a1, uint64_t a2)
{
  if (*a1)
  {
    goto LABEL_4;
  }

  v4 = *(a2 + 8);
  if (v4)
  {
LABEL_4:
    re::FixedArray<re::Matrix3x3<float>>::copy(a1, a2);
  }

  return a1;
}

_anonymous_namespace_ *re::FixedArray<re::Matrix4x4<float>>::operator=(_anonymous_namespace_ *a1, uint64_t a2)
{
  if (*a1)
  {
    goto LABEL_4;
  }

  v4 = *(a2 + 8);
  if (v4)
  {
LABEL_4:
    re::FixedArray<re::Matrix4x4<float>>::copy(a1, a2);
  }

  return a1;
}

_anonymous_namespace_ *re::FixedArray<re::Quaternion<float>>::operator=(_anonymous_namespace_ *a1, uint64_t a2)
{
  if (*a1)
  {
    goto LABEL_4;
  }

  v4 = *(a2 + 8);
  if (v4)
  {
LABEL_4:
    re::FixedArray<re::Quaternion<float>>::copy(a1, a2);
  }

  return a1;
}

_anonymous_namespace_ *re::FixedArray<re::Vector2<float>>::operator=(_anonymous_namespace_ *a1, uint64_t a2)
{
  if (*a1)
  {
    goto LABEL_4;
  }

  v4 = *(a2 + 8);
  if (v4)
  {
LABEL_4:
    re::FixedArray<re::Vector2<float>>::copy(a1, a2);
  }

  return a1;
}

_anonymous_namespace_ *re::FixedArray<re::Vector3<float>>::operator=(_anonymous_namespace_ *a1, uint64_t a2)
{
  if (*a1)
  {
    goto LABEL_4;
  }

  v4 = *(a2 + 8);
  if (v4)
  {
LABEL_4:
    re::FixedArray<re::Quaternion<float>>::copy(a1, a2);
  }

  return a1;
}

void *re::FixedArray<int>::copy(void *result, const void **a2)
{
  v4 = result[1];
  if (v4 == a2[1])
  {
    if (v4)
    {
      v5 = *a2;
      v6 = result[2];

      return memmove(v6, v5, 4 * v4);
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

void *re::FixedArray<re::Matrix3x3<float>>::copy(void *result, const void **a2)
{
  v4 = result[1];
  if (v4 == a2[1])
  {
    if (v4)
    {
      v5 = *a2;
      v6 = result[2];

      return memmove(v6, v5, 48 * v4);
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

void *re::FixedArray<re::Matrix4x4<float>>::copy(void *result, const void **a2)
{
  v4 = result[1];
  if (v4 == a2[1])
  {
    if (v4)
    {
      v5 = *a2;
      v6 = result[2];

      return memmove(v6, v5, v4 << 6);
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

void *re::FixedArray<re::Quaternion<float>>::copy(void *result, const void **a2)
{
  v4 = result[1];
  if (v4 == a2[1])
  {
    if (v4)
    {
      v5 = *a2;
      v6 = result[2];

      return memmove(v6, v5, 16 * v4);
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

void *re::FixedArray<re::Vector2<float>>::copy(void *result, const void **a2)
{
  v4 = result[1];
  if (v4 == a2[1])
  {
    if (v4)
    {
      v5 = *a2;
      v6 = result[2];

      return memmove(v6, v5, 8 * v4);
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

void *re::DynamicArray<re::RigComponentConstraint>::add(void *this, __int16 *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::RigComponentConstraint>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = v3[4] + 88 * v4;
  v6 = *a2;
  *(v5 + 2) = *(a2 + 2);
  *v5 = v6;
  *(v5 + 40) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 8) = 0;
  *(v5 + 32) = 0;
  v7 = *(a2 + 2);
  *(v5 + 8) = *(a2 + 1);
  *(v5 + 16) = v7;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  v8 = *(v5 + 24);
  *(v5 + 24) = *(a2 + 3);
  *(a2 + 3) = v8;
  v9 = *(v5 + 40);
  *(v5 + 40) = *(a2 + 5);
  *(a2 + 5) = v9;
  ++*(a2 + 8);
  ++*(v5 + 32);
  *(v5 + 80) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + 48) = 0;
  *(v5 + 72) = 0;
  v10 = *(a2 + 7);
  *(v5 + 48) = *(a2 + 6);
  *(v5 + 56) = v10;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  v11 = *(v5 + 64);
  *(v5 + 64) = *(a2 + 8);
  *(a2 + 8) = v11;
  v12 = *(v5 + 80);
  *(v5 + 80) = *(a2 + 10);
  *(a2 + 10) = v12;
  ++*(a2 + 18);
  ++*(v5 + 72);
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

void *re::DynamicArray<unsigned long>::add(void *this, void *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<unsigned long>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  *(v3[4] + 8 * v4) = *a2;
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

float re::DynamicArray<float>::add(_anonymous_namespace_ *this, float *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<float>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = *a2;
  *(*(this + 4) + 4 * v4) = *a2;
  *(this + 2) = v4 + 1;
  ++*(this + 6);
  return result;
}

void *re::DynamicArray<re::RigBasicConstraint>::add(void *this, uint64_t a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::RigBasicConstraint>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = v3[4] + 80 * v4;
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
  *(v5 + 72) = 0;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 40) = 0;
  *(v5 + 64) = 0;
  v9 = *(a2 + 48);
  *(v5 + 40) = *(a2 + 40);
  *(v5 + 48) = v9;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v10 = *(v5 + 56);
  *(v5 + 56) = *(a2 + 56);
  *(a2 + 56) = v10;
  v11 = *(v5 + 72);
  *(v5 + 72) = *(a2 + 72);
  *(a2 + 72) = v11;
  ++*(a2 + 64);
  ++*(v5 + 64);
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

__n128 re::DynamicArray<re::RigAimConstraint>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RigAimConstraint>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 144 * v4;
  result = *a2;
  v7 = *(a2 + 32);
  *(v5 + 16) = *(a2 + 16);
  *(v5 + 32) = v7;
  *v5 = result;
  *(v5 + 80) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + 48) = 0;
  *(v5 + 72) = 0;
  v8 = *(a2 + 56);
  *(v5 + 48) = *(a2 + 48);
  *(v5 + 56) = v8;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v9 = *(v5 + 64);
  *(v5 + 64) = *(a2 + 64);
  *(a2 + 64) = v9;
  v10 = *(v5 + 80);
  *(v5 + 80) = *(a2 + 80);
  *(a2 + 80) = v10;
  ++*(a2 + 72);
  ++*(v5 + 72);
  *(v5 + 120) = 0;
  *(v5 + 96) = 0;
  *(v5 + 104) = 0;
  *(v5 + 88) = 0;
  *(v5 + 112) = 0;
  v11 = *(a2 + 96);
  *(v5 + 88) = *(a2 + 88);
  *(v5 + 96) = v11;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  v12 = *(v5 + 104);
  *(v5 + 104) = *(a2 + 104);
  *(a2 + 104) = v12;
  v13 = *(v5 + 120);
  v14 = *(a2 + 128);
  *(v5 + 120) = *(a2 + 120);
  *(a2 + 120) = v13;
  ++*(a2 + 112);
  ++*(v5 + 112);
  *(v5 + 128) = v14;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::DynamicArray<re::RigTwoBoneIKHandles>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RigTwoBoneIKHandles>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = re::RigTwoBoneIKHandles::RigTwoBoneIKHandles(*(this + 4) + 240 * v4, a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

__n128 re::DynamicArray<re::RigTransform>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RigTransform>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + (v4 << 6);
  result = *a2;
  v7 = *(a2 + 16);
  v8 = *(a2 + 48);
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 48) = v8;
  *v5 = result;
  *(v5 + 16) = v7;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

__n128 re::DynamicArray<re::RigJoint>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RigJoint>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 96 * v4;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  result = *(a2 + 32);
  v8 = *(a2 + 48);
  v9 = *(a2 + 80);
  *(v5 + 64) = *(a2 + 64);
  *(v5 + 80) = v9;
  *(v5 + 32) = result;
  *(v5 + 48) = v8;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

__n128 re::DynamicArray<re::RigNodeConstraint>::add(_anonymous_namespace_ *this, __n128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RigNodeConstraint>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = *a2;
  *(*(this + 4) + 16 * v4) = *a2;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

__n128 re::DynamicArray<re::RigNode>::add(_anonymous_namespace_ *this, __n128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RigNode>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 56 * v4;
  v6 = a2->n128_u64[0];
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | a2->n128_u64[0] & 1;
  *v5 = a2->n128_u64[0] & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 8) = a2->n128_u64[1];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = &str_67;
  result = a2[1];
  v8 = a2[2];
  *(v5 + 48) = a2[3].n128_u64[0];
  *(v5 + 16) = result;
  *(v5 + 32) = v8;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void *re::DynamicArray<re::RigComponentConstraint>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RigComponentConstraint>::setCapacity(v5, a2);
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
        v10 = v8 + 88 * v9;
        v11 = v7;
        do
        {
          v12 = *v8;
          *(v11 + 2) = *(v8 + 2);
          *v11 = v12;
          v11[5] = 0;
          v11[2] = 0;
          v11[3] = 0;
          v11[1] = 0;
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
          v11[5] = *(v8 + 40);
          *(v8 + 40) = v16;
          ++*(v8 + 32);
          ++*(v11 + 8);
          v11[10] = 0;
          v11[7] = 0;
          v11[8] = 0;
          v11[6] = 0;
          *(v11 + 18) = 0;
          v17 = *(v8 + 48);
          v18 = *(v8 + 56);
          v19 = v8 + 48;
          v11[6] = v17;
          v11[7] = v18;
          *v19 = 0;
          *(v19 + 8) = 0;
          v20 = v11[8];
          v11[8] = *(v19 + 16);
          *(v19 + 16) = v20;
          v21 = v11[10];
          v11[10] = *(v19 + 32);
          *(v19 + 32) = v21;
          ++*(v19 + 24);
          ++*(v11 + 18);
          re::DynamicArray<unsigned long>::deinit(v19);
          re::DynamicArray<unsigned long>::deinit(v13);
          v11 += 11;
          v8 = v19 + 40;
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

void *re::DynamicArray<re::RigBasicConstraint>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RigBasicConstraint>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x50uLL))
        {
          v2 = 80 * a2;
          result = (*(*result + 32))(result, 80 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 80, a2);
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
        v10 = 0;
        v11 = v8 + 80 * v9;
        do
        {
          v12 = v8 + v10;
          v13 = &v7[v10 / 8];
          v13[4] = 0;
          v13[1] = 0;
          v13[2] = 0;
          *v13 = 0;
          *(v13 + 6) = 0;
          v14 = *(v8 + v10 + 8);
          *v13 = *(v8 + v10);
          v13[1] = v14;
          *v12 = 0;
          *(v12 + 8) = 0;
          v15 = v7[v10 / 8 + 2];
          v13[2] = *(v8 + v10 + 16);
          *(v12 + 16) = v15;
          v16 = v7[v10 / 8 + 4];
          v13[4] = *(v8 + v10 + 32);
          *(v12 + 32) = v16;
          *(v12 + 24) = *(v8 + v10 + 24) + 1;
          *(v13 + 6) = LODWORD(v7[v10 / 8 + 3]) + 1;
          v13[9] = 0;
          v13[6] = 0;
          v13[7] = 0;
          v13[5] = 0;
          *(v13 + 16) = 0;
          v17 = (v8 + v10 + 40);
          v18 = *(v8 + v10 + 48);
          v13[5] = *v17;
          *v17 = 0;
          v13[6] = v18;
          *(v12 + 48) = 0;
          v19 = v7[v10 / 8 + 7];
          v13[7] = *(v8 + v10 + 56);
          *(v12 + 56) = v19;
          v20 = v7[v10 / 8 + 9];
          v13[9] = *(v8 + v10 + 72);
          *(v12 + 72) = v20;
          *(v12 + 64) = *(v8 + v10 + 64) + 1;
          *(v13 + 16) = LODWORD(v7[v10 / 8 + 8]) + 1;
          re::DynamicArray<unsigned long>::deinit(v17);
          re::DynamicArray<unsigned long>::deinit(v8 + v10);
          v10 += 80;
        }

        while (v12 + 80 != v11);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::DynamicArray<re::RigAimConstraint>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RigAimConstraint>::setCapacity(v5, a2);
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
          v12 = *v8;
          v13 = *(v8 + 32);
          *(v11 + 1) = *(v8 + 16);
          *(v11 + 2) = v13;
          *v11 = v12;
          v11[10] = 0;
          v11[7] = 0;
          v11[8] = 0;
          v11[6] = 0;
          *(v11 + 18) = 0;
          v14 = v8 + 48;
          v15 = *(v8 + 56);
          v11[6] = *(v8 + 48);
          *(v8 + 48) = 0;
          v11[7] = v15;
          *(v8 + 56) = 0;
          v16 = v11[8];
          v11[8] = *(v8 + 64);
          *(v8 + 64) = v16;
          v17 = v11[10];
          v11[10] = *(v8 + 80);
          *(v8 + 80) = v17;
          ++*(v8 + 72);
          ++*(v11 + 18);
          v11[15] = 0;
          v11[12] = 0;
          v11[13] = 0;
          v11[11] = 0;
          *(v11 + 28) = 0;
          v18 = *(v8 + 88);
          v19 = *(v8 + 96);
          v20 = v8 + 88;
          v11[11] = v18;
          v11[12] = v19;
          *v20 = 0;
          *(v20 + 8) = 0;
          v21 = v11[13];
          v11[13] = *(v20 + 16);
          *(v20 + 16) = v21;
          v22 = v11[15];
          v23 = *(v20 + 40);
          v11[15] = *(v20 + 32);
          *(v20 + 32) = v22;
          ++*(v20 + 24);
          ++*(v11 + 28);
          v11[16] = v23;
          re::DynamicArray<unsigned long>::deinit(v20);
          re::DynamicArray<unsigned long>::deinit(v14);
          v11 += 18;
          v8 = v20 + 56;
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

void *re::DynamicArray<re::RigTwoBoneIKHandles>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RigTwoBoneIKHandles>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xF0uLL))
        {
          v2 = 240 * a2;
          result = (*(*result + 32))(result, 240 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 240, a2);
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
        v10 = 0;
        v11 = 240 * v9;
        do
        {
          re::RigTwoBoneIKHandles::RigTwoBoneIKHandles(&v7[v10 / 8], v8 + v10);
          re::DynamicArray<unsigned long>::deinit(v8 + v10 + 200);
          re::DynamicArray<unsigned long>::deinit(v8 + v10 + 160);
          re::DynamicArray<unsigned long>::deinit(v8 + v10 + 120);
          re::DynamicArray<unsigned long>::deinit(v8 + v10 + 80);
          re::DynamicArray<unsigned long>::deinit(v8 + v10 + 40);
          re::DynamicArray<unsigned long>::deinit(v8 + v10);
          v10 += 240;
        }

        while (v11 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::RigTwoBoneIKHandles::RigTwoBoneIKHandles(uint64_t result, uint64_t a2)
{
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 24) = 0;
  v2 = *(a2 + 8);
  *result = *a2;
  *(result + 8) = v2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v3 = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  v4 = *(result + 32);
  *(result + 32) = *(a2 + 32);
  *(a2 + 32) = v4;
  ++*(a2 + 24);
  ++*(result + 24);
  *(result + 72) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = 0;
  *(result + 64) = 0;
  v5 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v5;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v6 = *(result + 56);
  *(result + 56) = *(a2 + 56);
  *(a2 + 56) = v6;
  v7 = *(result + 72);
  *(result + 72) = *(a2 + 72);
  *(a2 + 72) = v7;
  ++*(a2 + 64);
  ++*(result + 64);
  *(result + 112) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  *(result + 104) = 0;
  v8 = *(a2 + 88);
  *(result + 80) = *(a2 + 80);
  *(result + 88) = v8;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v9 = *(result + 96);
  *(result + 96) = *(a2 + 96);
  *(a2 + 96) = v9;
  v10 = *(result + 112);
  *(result + 112) = *(a2 + 112);
  *(a2 + 112) = v10;
  ++*(a2 + 104);
  ++*(result + 104);
  *(result + 152) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 120) = 0;
  *(result + 144) = 0;
  v11 = *(a2 + 128);
  *(result + 120) = *(a2 + 120);
  *(result + 128) = v11;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  v12 = *(result + 136);
  *(result + 136) = *(a2 + 136);
  *(a2 + 136) = v12;
  v13 = *(result + 152);
  *(result + 152) = *(a2 + 152);
  *(a2 + 152) = v13;
  ++*(a2 + 144);
  ++*(result + 144);
  *(result + 192) = 0;
  *(result + 168) = 0;
  *(result + 176) = 0;
  *(result + 160) = 0;
  *(result + 184) = 0;
  v14 = *(a2 + 168);
  *(result + 160) = *(a2 + 160);
  *(result + 168) = v14;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  v15 = *(result + 176);
  *(result + 176) = *(a2 + 176);
  *(a2 + 176) = v15;
  v16 = *(result + 192);
  *(result + 192) = *(a2 + 192);
  *(a2 + 192) = v16;
  ++*(a2 + 184);
  ++*(result + 184);
  *(result + 232) = 0;
  *(result + 208) = 0;
  *(result + 216) = 0;
  *(result + 200) = 0;
  *(result + 224) = 0;
  v17 = *(a2 + 208);
  *(result + 200) = *(a2 + 200);
  *(result + 208) = v17;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  v18 = *(result + 216);
  *(result + 216) = *(a2 + 216);
  *(a2 + 216) = v18;
  v19 = *(result + 232);
  *(result + 232) = *(a2 + 232);
  *(a2 + 232) = v19;
  ++*(a2 + 224);
  ++*(result + 224);
  return result;
}

void *re::DynamicArray<re::RigSingleChainIKHandles>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RigSingleChainIKHandles>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 57)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 128, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = a2 << 7;
          result = (*(*result + 32))(result, a2 << 7, 8);
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
        v10 = 0;
        v11 = v8 + (v9 << 7);
        do
        {
          v12 = v8 + v10;
          v13 = &v7[v10 / 8];
          v13[4] = 0;
          v13[1] = 0;
          v13[2] = 0;
          *v13 = 0;
          *(v13 + 6) = 0;
          v14 = *(v8 + v10 + 8);
          *v13 = *(v8 + v10);
          v13[1] = v14;
          *v12 = 0;
          *(v12 + 8) = 0;
          v15 = v7[v10 / 8 + 2];
          v13[2] = *(v8 + v10 + 16);
          *(v12 + 16) = v15;
          v16 = v7[v10 / 8 + 4];
          v13[4] = *(v8 + v10 + 32);
          *(v12 + 32) = v16;
          *(v12 + 24) = *(v8 + v10 + 24) + 1;
          *(v13 + 6) = LODWORD(v7[v10 / 8 + 3]) + 1;
          v13[9] = 0;
          v13[6] = 0;
          v13[7] = 0;
          v13[5] = 0;
          *(v13 + 16) = 0;
          v17 = *(v8 + v10 + 48);
          v13[5] = *(v8 + v10 + 40);
          *(v8 + v10 + 40) = 0;
          v13[6] = v17;
          *(v12 + 48) = 0;
          v18 = v7[v10 / 8 + 7];
          v13[7] = *(v8 + v10 + 56);
          *(v12 + 56) = v18;
          v19 = v7[v10 / 8 + 9];
          v13[9] = *(v8 + v10 + 72);
          *(v12 + 72) = v19;
          *(v12 + 64) = *(v8 + v10 + 64) + 1;
          *(v13 + 16) = LODWORD(v7[v10 / 8 + 8]) + 1;
          v13[14] = 0;
          v13[11] = 0;
          v13[12] = 0;
          v13[10] = 0;
          *(v13 + 26) = 0;
          v20 = (v8 + v10 + 80);
          v21 = *(v8 + v10 + 88);
          v13[10] = *v20;
          *v20 = 0;
          v13[11] = v21;
          *(v12 + 88) = 0;
          v22 = v7[v10 / 8 + 12];
          v13[12] = *(v8 + v10 + 96);
          *(v12 + 96) = v22;
          v23 = v7[v10 / 8 + 14];
          v13[14] = *(v8 + v10 + 112);
          *(v12 + 112) = v23;
          *(v12 + 104) = *(v8 + v10 + 104) + 1;
          *(v13 + 26) = LODWORD(v7[v10 / 8 + 13]) + 1;
          *(v13 + 30) = *(v8 + v10 + 120);
          re::DynamicArray<unsigned long>::deinit(v20);
          re::DynamicArray<unsigned long>::deinit(v8 + v10 + 40);
          re::DynamicArray<unsigned long>::deinit(v8 + v10);
          v10 += 128;
        }

        while (v12 + 128 != v11);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::DynamicArray<re::RigTransform>::setCapacity(void *result, unint64_t a2)
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
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], v5[2] << 6);
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
        result = re::DynamicArray<re::RigTransform>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::RigJoint>::setCapacity(void *result, unint64_t a2)
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

        if (is_mul_ok(a2, 0x60uLL))
        {
          v2 = 96 * a2;
          result = (*(*result + 32))(result, 96 * a2, 16);
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
            memcpy(v7, v5[4], 96 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 96, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::RigJoint>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::RigNodeConstraint>::setCapacity(void *result, unint64_t a2)
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

        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 16 * a2;
          result = (*(*result + 32))(result, 16 * a2, 8);
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
            memcpy(v7, v5[4], 16 * v5[2]);
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
        result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::RigNode>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RigNode>::setCapacity(v5, a2);
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
              goto LABEL_16;
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
        v10 = &v8[7 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          v13 = *(v8 + 1);
          v14 = *(v8 + 2);
          v11[6] = v8[6];
          *(v11 + 1) = v13;
          *(v11 + 2) = v14;
          re::StringID::destroyString(v8);
          v8 += 7;
          v11 += 7;
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

void *re::DynamicArray<re::RigComponentConstraint>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::RigComponentConstraint>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RigComponentConstraint>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<unsigned long>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<float>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<int>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<int>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::RigBasicConstraint>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::RigBasicConstraint>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RigBasicConstraint>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::RigAimConstraint>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::RigAimConstraint>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RigAimConstraint>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::RigTwoBoneIKHandles>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::RigTwoBoneIKHandles>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RigTwoBoneIKHandles>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::RigTransform>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::RigTransform>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RigTransform>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::RigJoint>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::RigJoint>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RigJoint>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::RigNodeConstraint>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::RigNodeConstraint>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RigNodeConstraint>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::RigNode>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::RigNode>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RigNode>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t re::StateMachine::init(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, const re::StringID *a5, uint64_t a6)
{
  v19 = *MEMORY[0x1E69E9840];
  StateGraphByName = re::StateGraph::findStateGraphByName(a2, a4);
  *a1 = StateGraphByName;
  *(a1 + 8) = -1;
  *(a1 + 16) = -1;
  *(a1 + 24) = -1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (StateGraphByName == -1)
  {
    return 0;
  }

  if (*(a2 + 16) <= StateGraphByName)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    *v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  result = *(*(a2 + 32) + 8 * StateGraphByName);
  if (result)
  {
    v14[0] = -1;
    result = re::StateGraph::findStateByName(result, a5, v14);
    if (result)
    {
      v13 = result;
      *(a1 + 8) = v14[0];
      *(a1 + 40) = 0;
      (*(*result + 16))(result, a1, a2, a3, 0.0);
      re::StateMachineState::internalEnterState(v13, a1, a2, a3, a6);
      return 1;
    }
  }

  return result;
}

uint64_t re::StateMachine::currentState(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 == -1 || v2 >= *(a2 + 16))
  {
    return 0;
  }

  v4 = *(*(a2 + 32) + 8 * v2);
  if (!v4)
  {
    return 0;
  }

  v5 = a1[1];
  if (v5 == -1 || *(v4 + 40) <= v5)
  {
    return 0;
  }

  else
  {
    return *(*(v4 + 56) + 8 * v5);
  }
}

uint64_t re::StateMachine::previousState(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == -1 || v2 >= *(a2 + 16))
  {
    return 0;
  }

  v4 = *(*(a2 + 32) + 8 * v2);
  if (!v4)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  if (v5 == -1 || *(v4 + 40) <= v5)
  {
    return 0;
  }

  else
  {
    return *(*(v4 + 56) + 8 * v5);
  }
}

float re::StateMachine::tryDoStateTransition(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float result)
{
  if (*(a2 + 16) <= *a1)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v9 = *(*(a2 + 32) + 8 * *a1);
  v10 = *(a1 + 8);
  if (v10 == -1 || v9[5] <= v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v9[7] + 8 * v10);
  }

  v12 = *(a1 + 24);
  if (v12 == -1 || v9[5] <= v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v9[7] + 8 * v12);
  }

  v14 = v9[8];
  v15 = *(a1 + 32);
  if (v15)
  {
    v16 = *(v15 + 76);
    if (v16 <= 2)
    {
      if (v16 != 1)
      {
        if (v16 != 2)
        {
          return result;
        }

        if (!v14)
        {
          canTransition = 0;
          goto LABEL_42;
        }

        goto LABEL_41;
      }

      if (v14)
      {
        canTransition = re::StateMachineState::canTransition(v14, a3, v15);
        if (canTransition)
        {
          goto LABEL_47;
        }
      }

      else
      {
        canTransition = 0;
      }

LABEL_36:
      if (!v13)
      {
        goto LABEL_47;
      }

      v20 = *(a1 + 32);
      v18 = v13;
      goto LABEL_45;
    }

    if (v16 == 3)
    {
      if (v14)
      {
        canTransition = re::StateMachineState::canTransition(v14, a3, v15);
        if (canTransition)
        {
          goto LABEL_42;
        }
      }

      else
      {
        canTransition = 0;
      }

      if (!v13)
      {
LABEL_42:
        if (!canTransition && v11)
        {
          v20 = *(a1 + 32);
          v18 = v11;
LABEL_45:
          v19 = a3;
          goto LABEL_46;
        }

LABEL_47:
        if (!canTransition)
        {
          return result;
        }

        goto LABEL_48;
      }

      v15 = *(a1 + 32);
      v14 = v13;
LABEL_41:
      canTransition = re::StateMachineState::canTransition(v14, a3, v15);
      goto LABEL_42;
    }

    if (v16 != 4)
    {
      return result;
    }

    if (v14)
    {
      canTransition = re::StateMachineState::canTransition(v14, a3, v15);
      if (canTransition)
      {
        goto LABEL_33;
      }
    }

    else
    {
      canTransition = 0;
    }

    if (v11)
    {
      canTransition = re::StateMachineState::canTransition(v11, a3, *(a1 + 32));
    }

LABEL_33:
    if (canTransition)
    {
      goto LABEL_47;
    }

    goto LABEL_36;
  }

  if (!v14 || (canTransition = re::StateMachineState::canTransition(v14, a3, 0)) == 0)
  {
    v18 = v11;
    v19 = a3;
    v20 = 0;
LABEL_46:
    canTransition = re::StateMachineState::canTransition(v18, v19, v20);
    goto LABEL_47;
  }

LABEL_48:
  v21 = *(canTransition + 56);
  if (v21 < *(a2 + 16))
  {
    v22 = *(canTransition + 64);
    if (v22 != -1)
    {
      v23 = *(*(a2 + 32) + 8 * v21);
      if (*(v23 + 40) > v22)
      {
        v24 = *(*(v23 + 56) + 8 * v22);
        if (v24)
        {
          v25 = *(canTransition + 72);
          if (v25 <= 0.0)
          {
            v26 = 0;
          }

          else
          {
            v26 = canTransition;
          }

          *(a1 + 32) = v26;
          *(a1 + 40) = fmaxf(v25, 0.0);
          (*(*v11 + 24))(v11, a1, a2, a3);
          v27.n128_u32[0] = *(a1 + 40);
          if (v27.n128_f32[0] == 0.0)
          {
            (*(*v11 + 40))(v11, a1, a2, a3);
            v27.n128_u32[0] = *(a1 + 40);
          }

          *(a1 + 16) = *a1;
          *a1 = *(canTransition + 56);
          (*(*v24 + 16))(v24, a1, a2, a3, v27);

          return re::StateMachineState::internalEnterState(v24, a1, a2, a3, a4);
        }
      }
    }
  }

  return result;
}

uint64_t re::StateMachine::processStateUpdates(uint64_t result, uint64_t a2, float a3)
{
  v5 = result;
  v6 = *(result + 32);
  v7 = 0.0;
  if (v6)
  {
    v8 = *(v6 + 72);
    if (v8 > 0.0)
    {
      v7 = *(result + 40) / v8;
    }
  }

  if (*result < *(a2 + 16))
  {
    v9 = *(result + 8);
    if (v9 != -1)
    {
      v10 = *(*(a2 + 32) + 8 * *result);
      if (*(v10 + 40) > v9)
      {
        v11 = *(*(v10 + 56) + 8 * v9);
        if (v11)
        {
          result = (*(*v11 + 48))(v11, a3, 1.0 - v7);
          v12 = v11[27];
          if (v12 > 0.0)
          {
            v11[27] = fmaxf(v12 - a3, 0.0);
          }
        }
      }
    }
  }

  v13 = v5[2];
  if (v13 < *(a2 + 16))
  {
    v14 = v5[3];
    if (v14 != -1)
    {
      v15 = *(*(a2 + 32) + 8 * v13);
      if (*(v15 + 40) > v14)
      {
        v16 = *(*(v15 + 56) + 8 * v14);
        if (v16)
        {
          if (v5[4])
          {
            result = (*(*v16 + 48))(v16, a3, v7);
            v17 = v16[27];
            if (v17 > 0.0)
            {
              v16[27] = fmaxf(v17 - a3, 0.0);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t re::StateMachine::processTimedStateTransition(uint64_t result, uint64_t a2, float a3)
{
  v3 = *(result + 40);
  if (v3 > 0.0)
  {
    v5 = result;
    v6 = v3 - a3;
    *(result + 40) = v6;
    if (v6 < 0.0)
    {
      *(result + 40) = 0;
      *(result + 32) = 0;
      v7 = *(result + 16);
      if (v7 < *(a2 + 16))
      {
        v8 = *(result + 24);
        if (v8 == -1 || (v9 = *(*(a2 + 32) + 8 * v7), *(v9 + 40) <= v8))
        {
          v10 = 0;
        }

        else
        {
          v10 = *(*(v9 + 56) + 8 * v8);
        }

        return (*(*v10 + 40))(v10, v5);
      }
    }
  }

  return result;
}

unint64_t *re::StateMachine::update(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v5 = *result;
  v6 = *result == -1 || v5 >= *(a2 + 16);
  if (!v6 && *(*(a2 + 32) + 8 * v5))
  {
    v9 = result;
    re::StateMachine::tryDoStateTransition(result, a2, a3, a4, a5);
    re::StateMachine::processStateUpdates(v9, a2, a5);

    return re::StateMachine::processTimedStateTransition(v9, a2, a5);
  }

  return result;
}

double re::IntrospectionStructure::IntrospectionStructure(re::IntrospectionStructure *this, const char *a2)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 22) = 0;
  *(v3 + 16) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xFFFFFFFFLL;
  *v3 = &unk_1F5D0C718;
  *(v3 + 48) = a2;
  result = 0.0;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0u;
  *(v3 + 136) = 0;
  return result;
}

void re::IntrospectionBase::~IntrospectionBase(re::IntrospectionBase *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionBase::childInfoCount(re::IntrospectionBase *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Needs to be implemented in derived type.", "!Unreachable code", "childInfoCount", 383);
  _os_crash();
  __break(1u);
}

void re::IntrospectionBase::childInfo(re::IntrospectionBase *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Needs to be implemented in derived type.", "!Unreachable code", "childInfo", 391);
  _os_crash();
  __break(1u);
}

uint64_t re::internal::AnimationCompositionChain<float>::~AnimationCompositionChain(uint64_t a1)
{
  *a1 = &unk_1F5CACC30;
  v2 = a1 + 56;
  if (*(a1 + 56))
  {
    if (*(a1 + 108) == 1)
    {
      *(a1 + 108) = 0;
    }

    re::DynamicArray<unsigned long>::deinit(a1 + 56);
  }

  *a1 = &unk_1F5CAD030;
  re::DynamicArray<unsigned long>::deinit(v2);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(a1 + 16);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(a1 + 16);
  return a1;
}

void re::internal::AnimationCompositionChain<float>::~AnimationCompositionChain(uint64_t a1)
{
  re::internal::AnimationCompositionChain<float>::~AnimationCompositionChain(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::AnimationCompositionChain<float>::init(uint64_t a1, void *a2)
{
  v2 = a1;
  *(a1 + 8) = *a2;
  v3 = (a1 + 8);
  v4 = re::DynamicArray<re::BindPoint::BindPointData>::operator=(a1 + 16, a2 + 1);
  v2 += 56;
  re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v2, 0);
  ++*(v2 + 24);

  return re::BindPoint::baseValueUntyped(v3);
}

uint64_t re::internal::AnimationCompositionChain<float>::deinit(uint64_t a1)
{
  v3 = *(a1 + 56);
  result = a1 + 56;
  if (v3)
  {
    if (*(a1 + 108) == 1)
    {
      *(a1 + 108) = 0;
    }

    return re::DynamicArray<unsigned long>::deinit(result);
  }

  return result;
}

uint64_t re::internal::AnimationCompositionChain<float>::update(uint64_t result)
{
  v90 = *MEMORY[0x1E69E9840];
  v75 = *(result + 72);
  if (v75)
  {
    v4 = result;
    result = re::BindPoint::isAlive((result + 8));
    if (result)
    {
      v5 = re::BindPoint::supportsOverrideValue((v4 + 1));
      v81 = 0;
      v82 = 0;
      v71 = v5;
      if (v5)
      {
        v5 = re::BindPoint::baseValueUntyped((v4 + 1));
        v6 = v5;
      }

      else
      {
        v82 = 1;
        v6 = &v81;
      }

      if (*(v4 + 108))
      {
        v7 = (v4 + 14);
      }

      else
      {
        v7 = v6;
      }

      *(v4 + 29) = *v7;
      v8 = v4 + 29;
      v9 = re::animationLogObjects(v5);
      result = re::AnimationLogObjects::loggingEnabled(v9);
      if (result)
      {
LABEL_111:
        v60 = *re::animationLogObjects(result);
        result = os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT);
        if (result)
        {
          v61 = re::BindPoint::overrideValueUntyped((v4 + 1));
          *buf = 134217984;
          *&buf[4] = v61;
          _os_log_impl(&dword_1E1C61000, v60, OS_LOG_TYPE_DEFAULT, "ANIM: -------------- Target: %p -----------------\n", buf, 0xCu);
        }
      }

      v80 = 0;
      if (v4[9])
      {
        v1 = 0;
        v3 = 0;
        v10 = 0;
        v11 = *(v4[11] + 16);
        v70 = v6;
        v77 = v6;
        v78 = 0;
        v79 = 0;
        v12 = 0.0;
        v69 = 136315138;
        v72 = v71;
        v73 = v8;
        v74 = v4;
        while (1)
        {
          v6 = v4[9];
          if (v6 <= v3)
          {
            v76[0] = 0;
            v89 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v83 = 136315906;
            *&v83[4] = "operator[]";
            *&v83[12] = 1024;
            *&v83[14] = 789;
            v84 = 2048;
            v85 = v3;
            v86 = 2048;
            v87 = v6;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_106:
            re::internal::assertLog(6, v18, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
            _os_crash();
            __break(1u);
LABEL_107:
            v76[0] = 0;
            v89 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v83 = 136315906;
            *&v83[4] = "operator[]";
            *&v83[12] = 1024;
            *&v83[14] = 476;
            v84 = 2048;
            v85 = v10;
            v86 = 2048;
            v87 = v8;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_108:
            v76[0] = 0;
            v89 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v83 = 136315906;
            *&v83[4] = "operator[]";
            *&v83[12] = 1024;
            *&v83[14] = 789;
            v84 = 2048;
            v85 = v3;
            v86 = 2048;
            v87 = v8;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_109:
            v76[0] = 0;
            v89 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v83 = 136315906;
            *&v83[4] = "operator[]";
            *&v83[12] = 1024;
            *&v83[14] = 789;
            v84 = 2048;
            v85 = v3;
            v86 = 2048;
            v87 = v8;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_110:
            v76[0] = 0;
            v89 = 0u;
            memset(buf, 0, sizeof(buf));
            v4 = MEMORY[0x1E69E9C10];
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v83 = 136315906;
            *&v83[4] = "operator[]";
            *&v83[12] = 1024;
            *&v83[14] = 789;
            v84 = 2048;
            v85 = v3;
            v86 = 2048;
            v87 = v8;
            _os_log_send_and_compose_impl();
            result = _os_crash_msg();
            __break(1u);
            goto LABEL_111;
          }

          v13 = v4[11] + v1;
          v6 = *(v13 + 16);
          if (((v11 != v6) & v10) == 1)
          {
            v10 = 0;
            *v8 = v12 + *v8;
          }

          v2 = *v13;
          v14 = *(v13 + 8);
          v15 = re::animationLogObjects(result);
          v16 = re::AnimationLogObjects::loggingEnabled(v15);
          if (v16)
          {
            v36 = *re::animationLogObjects(v16);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              if (*(v2 + 48))
              {
                v37 = *(v2 + 56);
              }

              else
              {
                v37 = v2 + 49;
              }

              *buf = 134218754;
              *&buf[4] = v3;
              *&buf[12] = 2048;
              *&buf[14] = v2;
              *&buf[22] = 1024;
              *&buf[24] = v14;
              *&buf[28] = 2080;
              *&buf[30] = v37;
              _os_log_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_DEFAULT, "ANIM: #%zu: %p(%d) %s\n", buf, 0x26u);
            }
          }

          ClocksOfSubtree = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v2, v14);
          if (!v18)
          {
            goto LABEL_106;
          }

          v19 = ClocksOfSubtree;
          v20 = v18;
          v21 = v10;
          v10 = v14;
          result = re::internal::TimelineTree::source(v2, v14);
          v22 = result;
          if ((v19[16] & 1) == 0)
          {
            v30 = re::animationLogObjects(result);
            v31 = re::AnimationLogObjects::loggingEnabled(v30);
            if (v31)
            {
              log = *re::animationLogObjects(v31);
              if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
              {
                v38 = *(re::internal::TimelineTree::source(v2, v10) + 32);
                if (*v19 == 2)
                {
                  v39 = "Delayed";
                }

                else
                {
                  v39 = "Completed";
                }

                *v83 = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v2, 0);
                *&v83[8] = v40;
                v41 = re::Slice<re::AnimationClock>::operator[](v83, 0);
                if (*(v41 + 16))
                {
                  v42 = *(v41 + 24);
                }

                else
                {
                  v42 = 0;
                }

                *buf = 136315650;
                *&buf[4] = v38;
                v8 = v73;
                *&buf[12] = 2080;
                *&buf[14] = v39;
                *&buf[22] = 2048;
                *&buf[24] = v42;
                _os_log_impl(&dword_1E1C61000, log, OS_LOG_TYPE_DEFAULT, "ANIM:         Name: %s skipped, %s. Root Time: %f\n", buf, 0x20u);
              }
            }

            result = (*(*v22 + 112))(v22, v19, v20, v8, &v77, v8);
LABEL_48:
            v10 = v21;
            v4 = v74;
            goto LABEL_49;
          }

          v8 = *(v2 + 208);
          if (v8 <= v10)
          {
            goto LABEL_107;
          }

          v23 = *(*(v2 + 216) + 4 * v10);
          v24 = fabsf(v23);
          v8 = v73;
          if (v24 < 0.00001)
          {
            goto LABEL_48;
          }

          v25 = re::animationLogObjects(result);
          v26 = re::AnimationLogObjects::loggingEnabled(v25);
          if (v26)
          {
            v43 = *re::animationLogObjects(v26);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              v66 = *(v22 + 32);
              v65 = re::BindPoint::valueUntyped((v74 + 1));
              loga = v43;
              if (v19[16] == 1)
              {
                v64 = *(v19 + 3);
              }

              else
              {
                v64 = 0;
              }

              v44 = re::internal::TimelineTree::source(v2, v10);
              v45 = (*(*v44 + 40))(v44);
              *v83 = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v2, 0);
              *&v83[8] = v46;
              v47 = re::Slice<re::AnimationClock>::operator[](v83, 0);
              if (*(v47 + 16))
              {
                v48 = *(v47 + 24);
              }

              else
              {
                v48 = 0;
              }

              v76[0] = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v2, 0);
              v76[1] = v49;
              v50 = re::Slice<re::AnimationClock>::operator[](v76, 0);
              v51 = re::AnimationClock::clockStateToName(v50);
              v52 = *(v22 + 72);
              *buf = 136316674;
              *&buf[4] = v66;
              *&buf[12] = 2048;
              *&buf[14] = v65;
              *&buf[22] = 2048;
              *&buf[24] = v64;
              *&buf[32] = 2048;
              *&buf[34] = v45;
              *&buf[42] = 2048;
              *&buf[44] = v48;
              *&buf[52] = 2080;
              *&buf[54] = v51;
              *&buf[62] = 1024;
              LODWORD(v89) = v52;
              _os_log_impl(&dword_1E1C61000, loga, OS_LOG_TYPE_DEFAULT, "ANIM:         Name: %s, Target: %p, Clock %f / %f, Root Time: %f, ClockState: '%s', additive: %d\n", buf, 0x44u);
            }
          }

          v10 = v21;
          if (v23 != 1.0 && fabsf(v23 + -1.0) >= (((v24 + 1.0) + 1.0) * 0.00001))
          {
            v4 = v74;
            if ((v80 & 0x100000000) == 0)
            {
              BYTE4(v80) = 1;
            }

            v32 = v73;
            if (v10)
            {
              *&v80 = v12 + *v73;
              v32 = &v80;
            }

            v33 = v78;
            result = (*(*v22 + 112))(v22, v19, v20, v32, &v77, &v80);
            if (v78 != v33)
            {
              return (*(*v4 + 32))(v4);
            }

            if (*(v22 + 72))
            {
              v8 = v74[9];
              if (v8 <= v3)
              {
                goto LABEL_115;
              }

              if ((*(v74[11] + v1 + 20) & 4) != 0)
              {
                v8 = v73;
                v34 = *v73;
                v35 = *&v80 + *v73;
                *&v80 = v35;
                if (v10)
                {
                  v34 = v12 + v34;
                }
              }

              else
              {
                v8 = v73;
                v34 = v12 + *v73;
                if ((v10 & 1) == 0)
                {
                  v34 = *v73;
                }

                v35 = *&v80 + v34;
                *&v80 = *&v80 + v34;
              }
            }

            else
            {
              v8 = v73;
              v34 = v12 + *v73;
              if ((v10 & 1) == 0)
              {
                v34 = *v73;
              }

              v35 = *&v80;
            }

            v10 = 0;
            *v8 = (v23 * v35) + (v34 * (1.0 - v23));
            goto LABEL_49;
          }

          v4 = v74;
          v8 = v74[9];
          if (v8 <= v3)
          {
            goto LABEL_108;
          }

          *(v74[11] + v1 + 20) &= ~4u;
          if ((*(v22 + 72) & 1) == 0)
          {
            v79 = 1;
            v8 = v73;
            result = (*(*v22 + 112))(v22, v19, v20, v73, &v77, v73);
            goto LABEL_49;
          }

          v8 = v73;
          if ((v80 & 0x100000000) == 0)
          {
            BYTE4(v80) = 1;
          }

          v27 = v73;
          if (v10)
          {
            *&v80 = v12 + *v73;
            v27 = &v80;
          }

          result = (*(*v22 + 112))(v22, v19, v20, v27, &v77, &v80);
          if (v71)
          {
            v8 = v74[9];
            if (v8 <= v3)
            {
              goto LABEL_109;
            }

            v8 = v73;
            if ((*(v74[11] + v1 + 20) & 1) != 0 && v19[32] == 1)
            {
              v55 = *&v80;
              *v73 = -*&v80;
              *v73 = *v70 - v55;
              v56 = re::animationLogObjects(result);
              v57 = re::AnimationLogObjects::loggingEnabled(v56);
              if (v57)
              {
                goto LABEL_116;
              }

              goto LABEL_100;
            }
          }

          if (v10)
          {
            v12 = v12 + *&v80;
          }

          else
          {
            v12 = *&v80;
          }

          if ((v72 & 1) == 0)
          {
            v72 = 0;
            v10 = 1;
            goto LABEL_49;
          }

          v8 = v74[9];
          if (v8 <= v3)
          {
            goto LABEL_110;
          }

          v72 = 0;
          v10 = 1;
          if ((*(v74[11] + v1 + 20) & 2) == 0)
          {
            goto LABEL_45;
          }

          v8 = v73;
          if (*v19 == 5)
          {
            break;
          }

LABEL_49:
          ++v3;
          v1 += 24;
          v11 = v6;
          if (v75 == v3)
          {
            if (v10)
            {
              *v8 = v12 + *v8;
            }

            return result;
          }
        }

        v28 = re::animationLogObjects(result);
        v29 = re::AnimationLogObjects::loggingEnabled(v28);
        if (v29)
        {
          v53 = *re::animationLogObjects(v29);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v2 + 48))
            {
              v54 = *(v2 + 56);
            }

            else
            {
              v54 = v2 + 49;
            }

            *buf = 136315138;
            *&buf[4] = v54;
            _os_log_impl(&dword_1E1C61000, v53, OS_LOG_TYPE_DEFAULT, "ANIM: Anim %s, updating base (last frame) value on last frame, from composition chain.\n", buf, 0xCu);
            v8 = v73;
            v4 = v74;
          }
        }

        *v8 = v12 + *v8;
        result = re::BindPoint::baseValueUntyped((v4 + 1));
        if (result)
        {
          *result = *v8;
          result = re::BindPoint::markAsWritten((v4 + 1));
        }

        v8 = v4[9];
        if (v8 <= v3)
        {
          goto LABEL_114;
        }

        v10 = 0;
        *(v4[11] + v1 + 20) &= ~2u;
        v72 = 1;
        *v19 = 1;
LABEL_45:
        v8 = v73;
        goto LABEL_49;
      }

      v77 = 0;
      v89 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v83 = 136315906;
      *&v83[4] = "operator[]";
      *&v83[12] = 1024;
      *&v83[14] = 789;
      v84 = 2048;
      v85 = 0;
      v86 = 2048;
      v87 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_114:
      v76[0] = 0;
      v89 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v83 = 136315906;
      *&v83[4] = "operator[]";
      *&v83[12] = 1024;
      *&v83[14] = 789;
      v84 = 2048;
      v85 = v3;
      v86 = 2048;
      v87 = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_115:
      v76[0] = 0;
      v89 = 0u;
      memset(buf, 0, sizeof(buf));
      v4 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v83 = 136315906;
      *&v83[4] = "operator[]";
      *&v83[12] = 1024;
      *&v83[14] = 789;
      v84 = 2048;
      v85 = v3;
      v86 = 2048;
      v87 = v8;
      _os_log_send_and_compose_impl();
      v57 = _os_crash_msg();
      __break(1u);
LABEL_116:
      v62 = *re::animationLogObjects(v57);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v2 + 48))
        {
          v63 = *(v2 + 56);
        }

        else
        {
          v63 = v2 + 49;
        }

        *buf = v69;
        *&buf[4] = v63;
        _os_log_impl(&dword_1E1C61000, v62, OS_LOG_TYPE_DEFAULT, "ANIM: Anim %s, updating base (first frame) value from composition chain.\n", buf, 0xCu);
        v8 = v73;
        v4 = v74;
      }

LABEL_100:
      v58 = re::BindPoint::baseValueUntyped((v4 + 1));
      if (v58)
      {
        *v58 = *v8;
        re::BindPoint::markAsWritten((v4 + 1));
      }

      v59 = v4[9];
      if (v59 <= v3)
      {
        v76[0] = 0;
        v89 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v83 = 136315906;
        *&v83[4] = "operator[]";
        *&v83[12] = 1024;
        *&v83[14] = 789;
        v84 = 2048;
        v85 = v3;
        v86 = 2048;
        v87 = v59;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      *(v4[11] + v1 + 20) &= ~1u;
      return (*(*v4 + 32))(v4);
    }
  }

  return result;
}

char *re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2;
  v5 = a2 + 1;
  v6 = 1;
  while (1)
  {
    v7 = v6;
    if (v5 >= *(re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), a2) + 4))
    {
LABEL_5:
      v10 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), a2);
      return re::RelativeArray<re::AnimationClock>::operator[](v10, v4);
    }

    v8 = *(a1 + 16);
    if (v8 <= v5)
    {
      break;
    }

    v9 = *(*(a1 + 8) + 4 * v5);
    v6 = v7 + 1;
    ++v5;
    if (v9 < v2)
    {
      goto LABEL_5;
    }
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v5, v8);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::Slice<re::AnimationClock>::operator[](void *a1, unint64_t a2)
{
  v4 = a1[1];
  if (v4 > a2)
  {
    return *a1 + 72 * a2;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a2, v4, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::internal::TimelineTree::source(re::internal::TimelineTree *this, unint64_t a2)
{
  if (*(this + 13) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 14) + 8 * a2);
}

uint64_t re::internal::AnimationCompositionChain<float>::apply(uint64_t a1)
{
  result = re::BindPoint::isAlive((a1 + 8));
  if (result)
  {
    if (*(a1 + 72))
    {

      return re::BindPoint::setValue<float>(a1 + 8, (a1 + 116));
    }

    else
    {
      if (*(a1 + 104) == 1)
      {
        if (re::BindPoint::isOverridden((a1 + 8)))
        {
          v3 = re::BindPoint::overrideValueUntyped((a1 + 8));
          v4 = re::BindPoint::baseValueUntyped((a1 + 8));
          if (v4)
          {
            *v4 = *v3;
            re::BindPoint::markAsWritten(a1 + 8);
          }
        }
      }

      return re::BindPoint::setIsOverridden(a1 + 8, 0);
    }
  }

  return result;
}

uint64_t re::BindPoint::setValue<float>(uint64_t result, unsigned __int32 *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = *(result + 24);
  if (!v2)
  {
    return result;
  }

  v4 = result;
  v25 = 0;
  v26 = 0;
  v27 = 1;
  v28 = 0;
  v29 = 0;
  re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::resize(&v25, v2);
  v5 = 0;
  v6 = 0;
  v7 = *(v4 + 3);
  v8 = v26;
  do
  {
    if (v7 == v6)
    {
      v30 = 0;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v39 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v31 = 136315906;
      v32 = "operator[]";
      v33 = 1024;
      v34 = 797;
      v35 = 2048;
      v36 = v7;
      v37 = 2048;
      v38 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_32:
      v30 = 0;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v39 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v31 = 136315906;
      v32 = "operator[]";
      v33 = 1024;
      v34 = 858;
      v35 = 2048;
      v36 = v8;
      v37 = 2048;
      v38 = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_33;
    }

    v9 = (*(v4 + 5) + v5);
    if (!*v9)
    {
      v9 = v9[2];
    }

    if (v8 == v6)
    {
      goto LABEL_32;
    }

    if (v27)
    {
      v10 = &v28;
    }

    else
    {
      v10 = v29;
    }

    v10[v6++] = v9;
    v5 += 32;
  }

  while (v2 != v6);
  if (!v8)
  {
LABEL_33:
    v30 = 0;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v31 = 136315906;
    v32 = "operator[]";
    v33 = 1024;
    v34 = 858;
    v35 = 2048;
    v36 = 0;
    v37 = 2048;
    v38 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_34;
  }

  if (v27)
  {
    v11 = &v28;
  }

  else
  {
    v11 = v29;
  }

  v12 = *v11;
  v13 = v2 - 1;
  v14 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v25, 1uLL, v13);
  v16 = (*(*v12 + 120))(v12, 0, v14, v15);
  if (v16)
  {
    v17 = v16;
    if (!re::BindPoint::isOverridden(v4) || (v18.n128_u32[0] = *v17, *v17 != *a2))
    {
      re::BindPoint::willSet(v4);
      *v17 = *a2;
      re::BindPoint::setIsOverridden(v4, 1);
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  if (!v26)
  {
LABEL_34:
    v30 = 0;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v31 = 136315906;
    v32 = "operator[]";
    v33 = 1024;
    v34 = 858;
    v35 = 2048;
    v36 = 0;
    v37 = 2048;
    v38 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v27)
  {
    v19 = &v28;
  }

  else
  {
    v19 = v29;
  }

  v20 = *v19;
  v21 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v25, 1uLL, v13);
  v23 = (*(*v20 + 88))(v20, 0, v21, v22);
  if (v23)
  {
    v24 = v23;
    v18.n128_u32[0] = *v23;
    if (*v23 != *a2)
    {
      re::BindPoint::willSet(v4);
      *v24 = *a2;
LABEL_26:
      re::BindPoint::markAsWritten(v4);
    }
  }

LABEL_27:
  result = v25;
  if (v25)
  {
    if ((v27 & 1) == 0)
    {
      return (*(*v25 + 40))(v18);
    }
  }

  return result;
}

uint64_t re::internal::AnimationCompositionChain<float>::takeSnapshot(uint64_t result)
{
  v1 = result;
  if (*(result + 72))
  {
    if ((*(result + 108) & 1) == 0)
    {
      *(result + 108) = 1;
    }

    v2 = *(result + 116);
    goto LABEL_14;
  }

  if (re::BindPoint::supportsOverrideValue((result + 8)))
  {
    if ((*(v1 + 108) & 1) == 0)
    {
      *(v1 + 108) = 1;
      *(v1 + 112) = 0;
    }

    result = re::BindPoint::baseValueUntyped((v1 + 8));
LABEL_13:
    v2 = *result;
LABEL_14:
    *(v1 + 112) = v2;
    return result;
  }

  result = re::BindPoint::isAlive((v1 + 8));
  if (result)
  {
    if ((*(v1 + 108) & 1) == 0)
    {
      *(v1 + 108) = 1;
      *(v1 + 112) = 0;
    }

    result = re::BindPoint::valueUntyped((v1 + 8));
    goto LABEL_13;
  }

  if (*(v1 + 108))
  {
    *(v1 + 108) = 0;
  }

  return result;
}

uint64_t re::internal::AnimationCompositionChain<double>::~AnimationCompositionChain(uint64_t a1)
{
  *a1 = &unk_1F5CACC88;
  v2 = a1 + 56;
  if (*(a1 + 56))
  {
    if (*(a1 + 112) == 1)
    {
      *(a1 + 112) = 0;
    }

    re::DynamicArray<unsigned long>::deinit(a1 + 56);
  }

  *a1 = &unk_1F5CAD030;
  re::DynamicArray<unsigned long>::deinit(v2);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(a1 + 16);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(a1 + 16);
  return a1;
}

void re::internal::AnimationCompositionChain<double>::~AnimationCompositionChain(uint64_t a1)
{
  re::internal::AnimationCompositionChain<double>::~AnimationCompositionChain(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::AnimationCompositionChain<double>::init(uint64_t a1, void *a2)
{
  v2 = a1;
  *(a1 + 8) = *a2;
  v3 = (a1 + 8);
  v4 = re::DynamicArray<re::BindPoint::BindPointData>::operator=(a1 + 16, a2 + 1);
  v2 += 56;
  re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v2, 0);
  ++*(v2 + 24);

  return re::BindPoint::baseValueUntyped(v3);
}

uint64_t re::internal::AnimationCompositionChain<double>::deinit(uint64_t a1)
{
  v3 = *(a1 + 56);
  result = a1 + 56;
  if (v3)
  {
    if (*(a1 + 112) == 1)
    {
      *(a1 + 112) = 0;
    }

    return re::DynamicArray<unsigned long>::deinit(result);
  }

  return result;
}

uint64_t re::internal::AnimationCompositionChain<double>::update(uint64_t result)
{
  v91 = *MEMORY[0x1E69E9840];
  v75 = *(result + 72);
  if (v75)
  {
    v4 = result;
    result = re::BindPoint::isAlive((result + 8));
    if (result)
    {
      v5 = re::BindPoint::supportsOverrideValue((v4 + 1));
      v82 = 0;
      v83 = 0;
      v71 = v5;
      if (v5)
      {
        v5 = re::BindPoint::baseValueUntyped((v4 + 1));
        v6 = v5;
      }

      else
      {
        v83 = 1;
        v6 = &v82;
      }

      if (*(v4 + 112))
      {
        v7 = (v4 + 15);
      }

      else
      {
        v7 = v6;
      }

      v4[16] = *v7;
      v8 = (v4 + 16);
      v9 = re::animationLogObjects(v5);
      result = re::AnimationLogObjects::loggingEnabled(v9);
      if (result)
      {
LABEL_111:
        v60 = *re::animationLogObjects(result);
        result = os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT);
        if (result)
        {
          v61 = re::BindPoint::overrideValueUntyped((v4 + 1));
          *buf = 134217984;
          *&buf[4] = v61;
          _os_log_impl(&dword_1E1C61000, v60, OS_LOG_TYPE_DEFAULT, "ANIM: -------------- Target: %p -----------------\n", buf, 0xCu);
        }
      }

      v80 = 0.0;
      v81 = 0;
      if (v4[9])
      {
        v1 = 0;
        v3 = 0;
        v10 = 0;
        v11 = *(v4[11] + 16);
        v70 = v6;
        v77 = v6;
        v78 = 0;
        v79 = 0;
        v12 = 0.0;
        v69 = 136315138;
        v72 = v71;
        v73 = v8;
        v74 = v4;
        while (1)
        {
          v6 = v4[9];
          if (v6 <= v3)
          {
            v76[0] = 0;
            v90 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v84 = 136315906;
            *&v84[4] = "operator[]";
            *&v84[12] = 1024;
            *&v84[14] = 789;
            v85 = 2048;
            v86 = v3;
            v87 = 2048;
            v88 = v6;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_106:
            re::internal::assertLog(6, v18, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
            _os_crash();
            __break(1u);
LABEL_107:
            v76[0] = 0;
            v90 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v84 = 136315906;
            *&v84[4] = "operator[]";
            *&v84[12] = 1024;
            *&v84[14] = 476;
            v85 = 2048;
            v86 = v10;
            v87 = 2048;
            v88 = v8;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_108:
            v76[0] = 0;
            v90 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v84 = 136315906;
            *&v84[4] = "operator[]";
            *&v84[12] = 1024;
            *&v84[14] = 789;
            v85 = 2048;
            v86 = v3;
            v87 = 2048;
            v88 = v8;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_109:
            v76[0] = 0;
            v90 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v84 = 136315906;
            *&v84[4] = "operator[]";
            *&v84[12] = 1024;
            *&v84[14] = 789;
            v85 = 2048;
            v86 = v3;
            v87 = 2048;
            v88 = v8;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_110:
            v76[0] = 0;
            v90 = 0u;
            memset(buf, 0, sizeof(buf));
            v4 = MEMORY[0x1E69E9C10];
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v84 = 136315906;
            *&v84[4] = "operator[]";
            *&v84[12] = 1024;
            *&v84[14] = 789;
            v85 = 2048;
            v86 = v3;
            v87 = 2048;
            v88 = v8;
            _os_log_send_and_compose_impl();
            result = _os_crash_msg();
            __break(1u);
            goto LABEL_111;
          }

          v13 = v4[11] + v1;
          v6 = *(v13 + 16);
          if (((v11 != v6) & v10) == 1)
          {
            v10 = 0;
            *v8 = v12 + *v8;
          }

          v2 = *v13;
          v14 = *(v13 + 8);
          v15 = re::animationLogObjects(result);
          v16 = re::AnimationLogObjects::loggingEnabled(v15);
          if (v16)
          {
            v36 = *re::animationLogObjects(v16);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              if (*(v2 + 48))
              {
                v37 = *(v2 + 56);
              }

              else
              {
                v37 = v2 + 49;
              }

              *buf = 134218754;
              *&buf[4] = v3;
              *&buf[12] = 2048;
              *&buf[14] = v2;
              *&buf[22] = 1024;
              *&buf[24] = v14;
              *&buf[28] = 2080;
              *&buf[30] = v37;
              _os_log_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_DEFAULT, "ANIM: #%zu: %p(%d) %s\n", buf, 0x26u);
            }
          }

          ClocksOfSubtree = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v2, v14);
          if (!v18)
          {
            goto LABEL_106;
          }

          v19 = ClocksOfSubtree;
          v20 = v18;
          v21 = v10;
          v10 = v14;
          result = re::internal::TimelineTree::source(v2, v14);
          v22 = result;
          if ((v19[16] & 1) == 0)
          {
            v30 = re::animationLogObjects(result);
            v31 = re::AnimationLogObjects::loggingEnabled(v30);
            if (v31)
            {
              log = *re::animationLogObjects(v31);
              if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
              {
                v38 = *(re::internal::TimelineTree::source(v2, v10) + 32);
                if (*v19 == 2)
                {
                  v39 = "Delayed";
                }

                else
                {
                  v39 = "Completed";
                }

                *v84 = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v2, 0);
                *&v84[8] = v40;
                v41 = re::Slice<re::AnimationClock>::operator[](v84, 0);
                if (*(v41 + 16))
                {
                  v42 = *(v41 + 24);
                }

                else
                {
                  v42 = 0;
                }

                *buf = 136315650;
                *&buf[4] = v38;
                v8 = v73;
                *&buf[12] = 2080;
                *&buf[14] = v39;
                *&buf[22] = 2048;
                *&buf[24] = v42;
                _os_log_impl(&dword_1E1C61000, log, OS_LOG_TYPE_DEFAULT, "ANIM:         Name: %s skipped, %s. Root Time: %f\n", buf, 0x20u);
              }
            }

            result = (*(*v22 + 112))(v22, v19, v20, v8, &v77, v8);
LABEL_48:
            v10 = v21;
            v4 = v74;
            goto LABEL_49;
          }

          v8 = *(v2 + 208);
          if (v8 <= v10)
          {
            goto LABEL_107;
          }

          v23 = *(*(v2 + 216) + 4 * v10);
          v24 = fabsf(v23);
          v8 = v73;
          if (v24 < 0.00001)
          {
            goto LABEL_48;
          }

          v25 = re::animationLogObjects(result);
          v26 = re::AnimationLogObjects::loggingEnabled(v25);
          if (v26)
          {
            v43 = *re::animationLogObjects(v26);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              v66 = *(v22 + 32);
              v65 = re::BindPoint::valueUntyped((v74 + 1));
              loga = v43;
              if (v19[16] == 1)
              {
                v64 = *(v19 + 3);
              }

              else
              {
                v64 = 0;
              }

              v44 = re::internal::TimelineTree::source(v2, v10);
              v45 = (*(*v44 + 40))(v44);
              *v84 = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v2, 0);
              *&v84[8] = v46;
              v47 = re::Slice<re::AnimationClock>::operator[](v84, 0);
              if (*(v47 + 16))
              {
                v48 = *(v47 + 24);
              }

              else
              {
                v48 = 0;
              }

              v76[0] = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v2, 0);
              v76[1] = v49;
              v50 = re::Slice<re::AnimationClock>::operator[](v76, 0);
              v51 = re::AnimationClock::clockStateToName(v50);
              v52 = *(v22 + 72);
              *buf = 136316674;
              *&buf[4] = v66;
              *&buf[12] = 2048;
              *&buf[14] = v65;
              *&buf[22] = 2048;
              *&buf[24] = v64;
              *&buf[32] = 2048;
              *&buf[34] = v45;
              *&buf[42] = 2048;
              *&buf[44] = v48;
              *&buf[52] = 2080;
              *&buf[54] = v51;
              *&buf[62] = 1024;
              LODWORD(v90) = v52;
              _os_log_impl(&dword_1E1C61000, loga, OS_LOG_TYPE_DEFAULT, "ANIM:         Name: %s, Target: %p, Clock %f / %f, Root Time: %f, ClockState: '%s', additive: %d\n", buf, 0x44u);
            }
          }

          v10 = v21;
          if (v23 != 1.0 && fabsf(v23 + -1.0) >= (((v24 + 1.0) + 1.0) * 0.00001))
          {
            v4 = v74;
            if ((v81 & 1) == 0)
            {
              LOBYTE(v81) = 1;
            }

            v32 = v73;
            if (v10)
            {
              v80 = v12 + *v73;
              v32 = &v80;
            }

            v33 = v78;
            result = (*(*v22 + 112))(v22, v19, v20, v32, &v77, &v80);
            if (v78 != v33)
            {
              return (*(*v4 + 32))(v4);
            }

            if (*(v22 + 72))
            {
              v8 = v74[9];
              if (v8 <= v3)
              {
                goto LABEL_115;
              }

              if ((*(v74[11] + v1 + 20) & 4) != 0)
              {
                v8 = v73;
                v34 = *v73;
                v35 = v80 + *v73;
                v80 = v35;
                if (v10)
                {
                  v34 = v12 + v34;
                }
              }

              else
              {
                v8 = v73;
                v34 = v12 + *v73;
                if ((v10 & 1) == 0)
                {
                  v34 = *v73;
                }

                v35 = v80 + v34;
                v80 = v80 + v34;
              }
            }

            else
            {
              v8 = v73;
              v34 = v12 + *v73;
              if ((v10 & 1) == 0)
              {
                v34 = *v73;
              }

              v35 = v80;
            }

            v10 = 0;
            *v8 = v35 * v23 + v34 * (1.0 - v23);
            goto LABEL_49;
          }

          v4 = v74;
          v8 = v74[9];
          if (v8 <= v3)
          {
            goto LABEL_108;
          }

          *(v74[11] + v1 + 20) &= ~4u;
          if ((*(v22 + 72) & 1) == 0)
          {
            v79 = 1;
            v8 = v73;
            result = (*(*v22 + 112))(v22, v19, v20, v73, &v77, v73);
            goto LABEL_49;
          }

          v8 = v73;
          if ((v81 & 1) == 0)
          {
            LOBYTE(v81) = 1;
          }

          v27 = v73;
          if (v10)
          {
            v80 = v12 + *v73;
            v27 = &v80;
          }

          result = (*(*v22 + 112))(v22, v19, v20, v27, &v77, &v80);
          if (v71)
          {
            v8 = v74[9];
            if (v8 <= v3)
            {
              goto LABEL_109;
            }

            v8 = v73;
            if ((*(v74[11] + v1 + 20) & 1) != 0 && v19[32] == 1)
            {
              v55 = v80;
              *v73 = -v80;
              *v73 = *v70 - v55;
              v56 = re::animationLogObjects(result);
              v57 = re::AnimationLogObjects::loggingEnabled(v56);
              if (v57)
              {
                goto LABEL_116;
              }

              goto LABEL_100;
            }
          }

          if (v10)
          {
            v12 = v12 + v80;
          }

          else
          {
            v12 = v80;
          }

          if ((v72 & 1) == 0)
          {
            v72 = 0;
            v10 = 1;
            goto LABEL_49;
          }

          v8 = v74[9];
          if (v8 <= v3)
          {
            goto LABEL_110;
          }

          v72 = 0;
          v10 = 1;
          if ((*(v74[11] + v1 + 20) & 2) == 0)
          {
            goto LABEL_45;
          }

          v8 = v73;
          if (*v19 == 5)
          {
            break;
          }

LABEL_49:
          ++v3;
          v1 += 24;
          v11 = v6;
          if (v75 == v3)
          {
            if (v10)
            {
              *v8 = v12 + *v8;
            }

            return result;
          }
        }

        v28 = re::animationLogObjects(result);
        v29 = re::AnimationLogObjects::loggingEnabled(v28);
        if (v29)
        {
          v53 = *re::animationLogObjects(v29);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v2 + 48))
            {
              v54 = *(v2 + 56);
            }

            else
            {
              v54 = v2 + 49;
            }

            *buf = 136315138;
            *&buf[4] = v54;
            _os_log_impl(&dword_1E1C61000, v53, OS_LOG_TYPE_DEFAULT, "ANIM: Anim %s, updating base (last frame) value on last frame, from composition chain.\n", buf, 0xCu);
            v8 = v73;
            v4 = v74;
          }
        }

        *v8 = v12 + *v8;
        result = re::BindPoint::baseValueUntyped((v4 + 1));
        if (result)
        {
          *result = *v8;
          result = re::BindPoint::markAsWritten((v4 + 1));
        }

        v8 = v4[9];
        if (v8 <= v3)
        {
          goto LABEL_114;
        }

        v10 = 0;
        *(v4[11] + v1 + 20) &= ~2u;
        v72 = 1;
        *v19 = 1;
LABEL_45:
        v8 = v73;
        goto LABEL_49;
      }

      v77 = 0;
      v90 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v84 = 136315906;
      *&v84[4] = "operator[]";
      *&v84[12] = 1024;
      *&v84[14] = 789;
      v85 = 2048;
      v86 = 0;
      v87 = 2048;
      v88 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_114:
      v76[0] = 0;
      v90 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v84 = 136315906;
      *&v84[4] = "operator[]";
      *&v84[12] = 1024;
      *&v84[14] = 789;
      v85 = 2048;
      v86 = v3;
      v87 = 2048;
      v88 = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_115:
      v76[0] = 0;
      v90 = 0u;
      memset(buf, 0, sizeof(buf));
      v4 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v84 = 136315906;
      *&v84[4] = "operator[]";
      *&v84[12] = 1024;
      *&v84[14] = 789;
      v85 = 2048;
      v86 = v3;
      v87 = 2048;
      v88 = v8;
      _os_log_send_and_compose_impl();
      v57 = _os_crash_msg();
      __break(1u);
LABEL_116:
      v62 = *re::animationLogObjects(v57);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v2 + 48))
        {
          v63 = *(v2 + 56);
        }

        else
        {
          v63 = v2 + 49;
        }

        *buf = v69;
        *&buf[4] = v63;
        _os_log_impl(&dword_1E1C61000, v62, OS_LOG_TYPE_DEFAULT, "ANIM: Anim %s, updating base (first frame) value from composition chain.\n", buf, 0xCu);
        v8 = v73;
        v4 = v74;
      }

LABEL_100:
      v58 = re::BindPoint::baseValueUntyped((v4 + 1));
      if (v58)
      {
        *v58 = *v8;
        re::BindPoint::markAsWritten((v4 + 1));
      }

      v59 = v4[9];
      if (v59 <= v3)
      {
        v76[0] = 0;
        v90 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v84 = 136315906;
        *&v84[4] = "operator[]";
        *&v84[12] = 1024;
        *&v84[14] = 789;
        v85 = 2048;
        v86 = v3;
        v87 = 2048;
        v88 = v59;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      *(v4[11] + v1 + 20) &= ~1u;
      return (*(*v4 + 32))(v4);
    }
  }

  return result;
}

uint64_t re::internal::AnimationCompositionChain<double>::apply(uint64_t a1)
{
  result = re::BindPoint::isAlive((a1 + 8));
  if (result)
  {
    if (*(a1 + 72))
    {

      return re::BindPoint::setValue<double>(a1 + 8, (a1 + 128));
    }

    else
    {
      if (*(a1 + 104) == 1)
      {
        if (re::BindPoint::isOverridden((a1 + 8)))
        {
          v3 = re::BindPoint::overrideValueUntyped((a1 + 8));
          v4 = re::BindPoint::baseValueUntyped((a1 + 8));
          if (v4)
          {
            *v4 = *v3;
            re::BindPoint::markAsWritten(a1 + 8);
          }
        }
      }

      return re::BindPoint::setIsOverridden(a1 + 8, 0);
    }
  }

  return result;
}

uint64_t re::BindPoint::setValue<double>(uint64_t result, unint64_t *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = *(result + 24);
  if (!v2)
  {
    return result;
  }

  v4 = result;
  v25 = 0;
  v26 = 0;
  v27 = 1;
  v28 = 0;
  v29 = 0;
  re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::resize(&v25, v2);
  v5 = 0;
  v6 = 0;
  v7 = *(v4 + 3);
  v8 = v26;
  do
  {
    if (v7 == v6)
    {
      v30 = 0;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v39 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v31 = 136315906;
      v32 = "operator[]";
      v33 = 1024;
      v34 = 797;
      v35 = 2048;
      v36 = v7;
      v37 = 2048;
      v38 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_32:
      v30 = 0;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v39 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v31 = 136315906;
      v32 = "operator[]";
      v33 = 1024;
      v34 = 858;
      v35 = 2048;
      v36 = v8;
      v37 = 2048;
      v38 = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_33;
    }

    v9 = (*(v4 + 5) + v5);
    if (!*v9)
    {
      v9 = v9[2];
    }

    if (v8 == v6)
    {
      goto LABEL_32;
    }

    if (v27)
    {
      v10 = &v28;
    }

    else
    {
      v10 = v29;
    }

    v10[v6++] = v9;
    v5 += 32;
  }

  while (v2 != v6);
  if (!v8)
  {
LABEL_33:
    v30 = 0;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v31 = 136315906;
    v32 = "operator[]";
    v33 = 1024;
    v34 = 858;
    v35 = 2048;
    v36 = 0;
    v37 = 2048;
    v38 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_34;
  }

  if (v27)
  {
    v11 = &v28;
  }

  else
  {
    v11 = v29;
  }

  v12 = *v11;
  v13 = v2 - 1;
  v14 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v25, 1uLL, v13);
  v16 = (*(*v12 + 120))(v12, 0, v14, v15);
  if (v16)
  {
    v17 = v16;
    if (!re::BindPoint::isOverridden(v4) || (v18.n128_u64[0] = *v17, *v17 != *a2))
    {
      re::BindPoint::willSet(v4);
      *v17 = *a2;
      re::BindPoint::setIsOverridden(v4, 1);
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  if (!v26)
  {
LABEL_34:
    v30 = 0;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v31 = 136315906;
    v32 = "operator[]";
    v33 = 1024;
    v34 = 858;
    v35 = 2048;
    v36 = 0;
    v37 = 2048;
    v38 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v27)
  {
    v19 = &v28;
  }

  else
  {
    v19 = v29;
  }

  v20 = *v19;
  v21 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v25, 1uLL, v13);
  v23 = (*(*v20 + 88))(v20, 0, v21, v22);
  if (v23)
  {
    v24 = v23;
    v18.n128_u64[0] = *v23;
    if (*v23 != *a2)
    {
      re::BindPoint::willSet(v4);
      *v24 = *a2;
LABEL_26:
      re::BindPoint::markAsWritten(v4);
    }
  }

LABEL_27:
  result = v25;
  if (v25)
  {
    if ((v27 & 1) == 0)
    {
      return (*(*v25 + 40))(v18);
    }
  }

  return result;
}

uint64_t re::internal::AnimationCompositionChain<double>::takeSnapshot(uint64_t result)
{
  v1 = result;
  if (*(result + 72))
  {
    if ((*(result + 112) & 1) == 0)
    {
      *(result + 112) = 1;
    }

    v2 = *(result + 128);
    goto LABEL_14;
  }

  if (re::BindPoint::supportsOverrideValue((result + 8)))
  {
    if ((*(v1 + 112) & 1) == 0)
    {
      *(v1 + 112) = 1;
      *(v1 + 120) = 0;
    }

    result = re::BindPoint::baseValueUntyped((v1 + 8));
LABEL_13:
    v2 = *result;
LABEL_14:
    *(v1 + 120) = v2;
    return result;
  }

  result = re::BindPoint::isAlive((v1 + 8));
  if (result)
  {
    if ((*(v1 + 112) & 1) == 0)
    {
      *(v1 + 112) = 1;
      *(v1 + 120) = 0;
    }

    result = re::BindPoint::valueUntyped((v1 + 8));
    goto LABEL_13;
  }

  if (*(v1 + 112))
  {
    *(v1 + 112) = 0;
  }

  return result;
}

uint64_t re::internal::AnimationCompositionChain<re::Vector2<float>>::~AnimationCompositionChain(uint64_t a1)
{
  *a1 = &unk_1F5CACCE0;
  v2 = a1 + 56;
  if (*(a1 + 56))
  {
    if (*(a1 + 112) == 1)
    {
      *(a1 + 112) = 0;
    }

    re::DynamicArray<unsigned long>::deinit(a1 + 56);
  }

  *a1 = &unk_1F5CAD030;
  re::DynamicArray<unsigned long>::deinit(v2);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(a1 + 16);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(a1 + 16);
  return a1;
}

void re::internal::AnimationCompositionChain<re::Vector2<float>>::~AnimationCompositionChain(uint64_t a1)
{
  re::internal::AnimationCompositionChain<re::Vector2<float>>::~AnimationCompositionChain(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::AnimationCompositionChain<re::Vector2<float>>::init(uint64_t a1, void *a2)
{
  v2 = a1;
  *(a1 + 8) = *a2;
  v3 = (a1 + 8);
  v4 = re::DynamicArray<re::BindPoint::BindPointData>::operator=(a1 + 16, a2 + 1);
  v2 += 56;
  re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v2, 0);
  ++*(v2 + 24);

  return re::BindPoint::baseValueUntyped(v3);
}

uint64_t re::internal::AnimationCompositionChain<re::Vector2<float>>::deinit(uint64_t a1)
{
  v3 = *(a1 + 56);
  result = a1 + 56;
  if (v3)
  {
    if (*(a1 + 112) == 1)
    {
      *(a1 + 112) = 0;
    }

    return re::DynamicArray<unsigned long>::deinit(result);
  }

  return result;
}

uint64_t re::internal::AnimationCompositionChain<re::Vector2<float>>::update(uint64_t result)
{
  v102 = *MEMORY[0x1E69E9840];
  v86 = *(result + 72);
  if (v86)
  {
    v3 = result;
    result = re::BindPoint::isAlive((result + 8));
    if (result)
    {
      v4 = re::BindPoint::supportsOverrideValue(&v3[1]);
      v93 = 0;
      v94 = 0;
      v80 = v4;
      if (v4)
      {
        v4 = re::BindPoint::baseValueUntyped(&v3[1]);
        v5 = v4;
      }

      else
      {
        v94 = 1;
        v93 = 0;
        v5 = &v93;
      }

      if (v3[14].i8[0])
      {
        v6 = &v3[15];
      }

      else
      {
        v6 = v5;
      }

      v3[16] = *v6;
      v7 = v3 + 16;
      v8 = re::animationLogObjects(v4);
      result = re::AnimationLogObjects::loggingEnabled(v8);
      if (result)
      {
LABEL_115:
        v70 = *re::animationLogObjects(result);
        result = os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT);
        if (result)
        {
          v71 = re::BindPoint::overrideValueUntyped(&v3[1]);
          *buf = 134217984;
          *&buf[4] = v71;
          _os_log_impl(&dword_1E1C61000, v70, OS_LOG_TYPE_DEFAULT, "ANIM: -------------- Target: %p -----------------\n", buf, 0xCu);
        }
      }

      v91 = 0;
      v92 = 0;
      if (v3[9])
      {
        v9 = v5;
        v5 = 0;
        v2 = 0;
        v10 = 0;
        v11 = *(*&v3[11] + 16);
        v79 = v9;
        v88 = v9;
        v89 = 0;
        v90 = 0;
        v12 = 0;
        v78 = 136315138;
        v81 = v80;
        v84 = v7;
        v85 = v3;
        while (1)
        {
          v13 = v3[9];
          if (v13 <= v2)
          {
            v87[0] = 0;
            v101 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v95 = 136315906;
            *&v95[4] = "operator[]";
            *&v95[12] = 1024;
            *&v95[14] = 789;
            v96 = 2048;
            v97 = v2;
            v98 = 2048;
            v99 = v13;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_110:
            re::internal::assertLog(6, v20, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
            _os_crash();
            __break(1u);
LABEL_111:
            v87[0] = 0;
            v101 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v95 = 136315906;
            *&v95[4] = "operator[]";
            *&v95[12] = 1024;
            *&v95[14] = 476;
            v96 = 2048;
            v97 = v10;
            v98 = 2048;
            v99 = v7;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_112:
            v87[0] = 0;
            v101 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v95 = 136315906;
            *&v95[4] = "operator[]";
            *&v95[12] = 1024;
            *&v95[14] = 789;
            v96 = 2048;
            v97 = v2;
            v98 = 2048;
            v99 = v7;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_113:
            v87[0] = 0;
            v101 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v95 = 136315906;
            *&v95[4] = "operator[]";
            *&v95[12] = 1024;
            *&v95[14] = 789;
            v96 = 2048;
            v97 = v2;
            v98 = 2048;
            v99 = v7;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_114:
            v87[0] = 0;
            v101 = 0u;
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v95 = 136315906;
            *&v95[4] = "operator[]";
            *&v95[12] = 1024;
            *&v95[14] = 789;
            v96 = 2048;
            v97 = v2;
            v98 = 2048;
            v99 = v7;
            _os_log_send_and_compose_impl();
            result = _os_crash_msg();
            __break(1u);
            goto LABEL_115;
          }

          v14 = v5 + *&v3[11];
          v15 = v11 != *(v14 + 4);
          v11 = *(v14 + 4);
          if ((v15 & v10) == 1)
          {
            v10 = 0;
            *v7 = vadd_f32(v12, *v7);
            v11 = *(v14 + 4);
          }

          v1 = *v14;
          v16 = *(v14 + 2);
          v17 = re::animationLogObjects(result);
          v18 = re::AnimationLogObjects::loggingEnabled(v17);
          if (v18)
          {
            v46 = *re::animationLogObjects(v18);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              if (*(v1 + 48))
              {
                v47 = *(v1 + 56);
              }

              else
              {
                v47 = v1 + 49;
              }

              *buf = 134218754;
              *&buf[4] = v2;
              *&buf[12] = 2048;
              *&buf[14] = v1;
              *&buf[22] = 1024;
              *&buf[24] = v16;
              *&buf[28] = 2080;
              *&buf[30] = v47;
              _os_log_impl(&dword_1E1C61000, v46, OS_LOG_TYPE_DEFAULT, "ANIM: #%zu: %p(%d) %s\n", buf, 0x26u);
            }
          }

          ClocksOfSubtree = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v1, v16);
          if (!v20)
          {
            goto LABEL_110;
          }

          v21 = ClocksOfSubtree;
          v22 = v20;
          v3 = v10;
          v10 = v16;
          result = re::internal::TimelineTree::source(v1, v16);
          v23 = result;
          if ((v21[16] & 1) == 0)
          {
            v32 = re::animationLogObjects(result);
            v33 = re::AnimationLogObjects::loggingEnabled(v32);
            if (v33)
            {
              loga = *re::animationLogObjects(v33);
              if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
              {
                v48 = *(re::internal::TimelineTree::source(v1, v10) + 32);
                if (*v21 == 2)
                {
                  v49 = "Delayed";
                }

                else
                {
                  v49 = "Completed";
                }

                *v95 = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v1, 0);
                *&v95[8] = v50;
                v51 = re::Slice<re::AnimationClock>::operator[](v95, 0);
                if (*(v51 + 16))
                {
                  v52 = *(v51 + 24);
                }

                else
                {
                  v52 = 0;
                }

                *buf = 136315650;
                *&buf[4] = v48;
                v7 = v84;
                *&buf[12] = 2080;
                *&buf[14] = v49;
                *&buf[22] = 2048;
                *&buf[24] = v52;
                _os_log_impl(&dword_1E1C61000, loga, OS_LOG_TYPE_DEFAULT, "ANIM:         Name: %s skipped, %s. Root Time: %f\n", buf, 0x20u);
              }
            }

            result = (*(*v23 + 112))(v23, v21, v22, v7, &v88, v7);
LABEL_48:
            v10 = v3;
            v3 = v85;
            goto LABEL_49;
          }

          v7 = *(v1 + 208);
          if (v7 <= v10)
          {
            goto LABEL_111;
          }

          v24 = fabsf(*(*(v1 + 216) + 4 * v10));
          v7 = v84;
          if (v24 < 0.00001)
          {
            goto LABEL_48;
          }

          log = *(*(v1 + 216) + 4 * v10);
          v25 = re::animationLogObjects(result);
          v26 = re::AnimationLogObjects::loggingEnabled(v25);
          if (v26)
          {
            v53 = *re::animationLogObjects(v26);
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
            {
              v76 = *(v23 + 32);
              v75 = re::BindPoint::valueUntyped(&v85[1]);
              v77 = v53;
              if (v21[16] == 1)
              {
                v74 = *(v21 + 3);
              }

              else
              {
                v74 = 0;
              }

              v54 = re::internal::TimelineTree::source(v1, v10);
              v55 = (*(*v54 + 40))(v54);
              *v95 = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v1, 0);
              *&v95[8] = v56;
              v57 = re::Slice<re::AnimationClock>::operator[](v95, 0);
              if (*(v57 + 16))
              {
                v58 = *(v57 + 24);
              }

              else
              {
                v58 = 0;
              }

              v87[0] = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v1, 0);
              v87[1] = v59;
              v60 = re::Slice<re::AnimationClock>::operator[](v87, 0);
              v61 = re::AnimationClock::clockStateToName(v60);
              v62 = *(v23 + 72);
              *buf = 136316674;
              *&buf[4] = v76;
              *&buf[12] = 2048;
              *&buf[14] = v75;
              *&buf[22] = 2048;
              *&buf[24] = v74;
              *&buf[32] = 2048;
              *&buf[34] = v55;
              *&buf[42] = 2048;
              *&buf[44] = v58;
              *&buf[52] = 2080;
              *&buf[54] = v61;
              *&buf[62] = 1024;
              LODWORD(v101) = v62;
              _os_log_impl(&dword_1E1C61000, v77, OS_LOG_TYPE_DEFAULT, "ANIM:         Name: %s, Target: %p, Clock %f / %f, Root Time: %f, ClockState: '%s', additive: %d\n", buf, 0x44u);
            }
          }

          v10 = v3;
          if (log != 1.0 && fabsf(log + -1.0) >= (((v24 + 1.0) + 1.0) * 0.00001))
          {
            v3 = v85;
            if ((v92 & 1) == 0)
            {
              LOBYTE(v92) = 1;
            }

            v34 = v84;
            if (v10)
            {
              v91 = vadd_f32(v12, *v84);
              v34 = &v91;
            }

            v35 = v89;
            result = (*(*v23 + 112))(v23, v21, v22, v34, &v88, &v91);
            if (v89 != v35)
            {
              return (*(*v85 + 32))(v85);
            }

            if (*(v23 + 72))
            {
              v7 = v85[9];
              v36 = log;
              if (v7 <= v2)
              {
                goto LABEL_119;
              }

              if ((*(v5 + *&v85[11] + 20) & 4) != 0)
              {
                v7 = v84;
                v43 = *v84;
                v40 = vadd_f32(v91, *v84);
                v91 = v40;
                v44 = vadd_f32(v12, v43);
                if (v10)
                {
                  v45 = -1;
                }

                else
                {
                  v45 = 0;
                }

                v39 = vbsl_s8(vdup_n_s32(v45), v44, v43);
              }

              else
              {
                v7 = v84;
                v37 = vadd_f32(v12, *v84);
                if (v10)
                {
                  v38 = -1;
                }

                else
                {
                  v38 = 0;
                }

                v39 = vbsl_s8(vdup_n_s32(v38), v37, *v84);
                v40 = vadd_f32(v91, v39);
                v91 = v40;
              }
            }

            else
            {
              v7 = v84;
              v41 = vadd_f32(v12, *v84);
              if (v10)
              {
                v42 = -1;
              }

              else
              {
                v42 = 0;
              }

              v39 = vbsl_s8(vdup_n_s32(v42), v41, *v84);
              v40 = v91;
              v36 = log;
            }

            v10 = 0;
            *v7 = vadd_f32(vmul_n_f32(v39, 1.0 - v36), vmul_n_f32(v40, v36));
            goto LABEL_49;
          }

          v3 = v85;
          v7 = v85[9];
          if (v7 <= v2)
          {
            goto LABEL_112;
          }

          *(v5 + *&v85[11] + 20) &= ~4u;
          if ((*(v23 + 72) & 1) == 0)
          {
            v90 = 1;
            v7 = v84;
            result = (*(*v23 + 112))(v23, v21, v22, v84, &v88, v84);
            goto LABEL_49;
          }

          v7 = v84;
          if ((v92 & 1) == 0)
          {
            LOBYTE(v92) = 1;
          }

          v27 = v84;
          if (v10)
          {
            v91 = vadd_f32(v12, *v84);
            v27 = &v91;
          }

          result = (*(*v23 + 112))(v23, v21, v22, v27, &v88, &v91);
          if (v80)
          {
            v7 = v85[9];
            if (v7 <= v2)
            {
              goto LABEL_113;
            }

            v7 = v84;
            if ((*(v5 + *&v85[11] + 20) & 1) != 0 && v21[32] == 1)
            {
              v65 = v91;
              *v84 = vneg_f32(v91);
              *v84 = vsub_f32(*v79, v65);
              v66 = re::animationLogObjects(result);
              v67 = re::AnimationLogObjects::loggingEnabled(v66);
              if (v67)
              {
                goto LABEL_120;
              }

              goto LABEL_105;
            }
          }

          v28 = vadd_f32(v12, v91);
          if (v10)
          {
            v29 = -1;
          }

          else
          {
            v29 = 0;
          }

          v12 = vbsl_s8(vdup_n_s32(v29), v28, v91);
          if ((v81 & 1) == 0)
          {
            v81 = 0;
            v10 = 1;
            goto LABEL_49;
          }

          v7 = v85[9];
          if (v7 <= v2)
          {
            goto LABEL_114;
          }

          v81 = 0;
          v10 = 1;
          if ((*(v5 + *&v85[11] + 20) & 2) == 0)
          {
            goto LABEL_45;
          }

          v7 = v84;
          if (*v21 == 5)
          {
            break;
          }

LABEL_49:
          ++v2;
          v5 = (v5 + 24);
          if (v86 == v2)
          {
            if (v10)
            {
              *v7 = vadd_f32(v12, *v7);
            }

            return result;
          }
        }

        v30 = re::animationLogObjects(result);
        v31 = re::AnimationLogObjects::loggingEnabled(v30);
        if (v31)
        {
          v63 = *re::animationLogObjects(v31);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v1 + 48))
            {
              v64 = *(v1 + 56);
            }

            else
            {
              v64 = v1 + 49;
            }

            *buf = 136315138;
            *&buf[4] = v64;
            _os_log_impl(&dword_1E1C61000, v63, OS_LOG_TYPE_DEFAULT, "ANIM: Anim %s, updating base (last frame) value on last frame, from composition chain.\n", buf, 0xCu);
            v7 = v84;
            v3 = v85;
          }
        }

        *v7 = vadd_f32(v12, *v7);
        result = re::BindPoint::baseValueUntyped(&v3[1]);
        if (result)
        {
          *result = *v7;
          result = re::BindPoint::markAsWritten(&v3[1]);
        }

        v7 = v3[9];
        if (v7 <= v2)
        {
          goto LABEL_118;
        }

        v10 = 0;
        *(v5 + *&v3[11] + 20) &= ~2u;
        v81 = 1;
        *v21 = 1;
LABEL_45:
        v7 = v84;
        goto LABEL_49;
      }

      v88 = 0;
      v101 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v95 = 136315906;
      *&v95[4] = "operator[]";
      *&v95[12] = 1024;
      *&v95[14] = 789;
      v96 = 2048;
      v97 = 0;
      v98 = 2048;
      v99 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_118:
      v87[0] = 0;
      v101 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v95 = 136315906;
      *&v95[4] = "operator[]";
      *&v95[12] = 1024;
      *&v95[14] = 789;
      v96 = 2048;
      v97 = v2;
      v98 = 2048;
      v99 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_119:
      v87[0] = 0;
      v101 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v95 = 136315906;
      *&v95[4] = "operator[]";
      *&v95[12] = 1024;
      *&v95[14] = 789;
      v96 = 2048;
      v97 = v2;
      v98 = 2048;
      v99 = v7;
      _os_log_send_and_compose_impl();
      v67 = _os_crash_msg();
      __break(1u);
LABEL_120:
      v72 = *re::animationLogObjects(v67);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v1 + 48))
        {
          v73 = *(v1 + 56);
        }

        else
        {
          v73 = v1 + 49;
        }

        *buf = v78;
        *&buf[4] = v73;
        _os_log_impl(&dword_1E1C61000, v72, OS_LOG_TYPE_DEFAULT, "ANIM: Anim %s, updating base (first frame) value from composition chain.\n", buf, 0xCu);
        v7 = v84;
      }

LABEL_105:
      v68 = re::BindPoint::baseValueUntyped(&v85[1]);
      if (v68)
      {
        *v68 = *v7;
        re::BindPoint::markAsWritten(&v85[1]);
      }

      v69 = v85[9];
      if (v69 <= v2)
      {
        v87[0] = 0;
        v101 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v95 = 136315906;
        *&v95[4] = "operator[]";
        *&v95[12] = 1024;
        *&v95[14] = 789;
        v96 = 2048;
        v97 = v2;
        v98 = 2048;
        v99 = v69;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      *(v5 + *&v85[11] + 20) &= ~1u;
      return (*(*v85 + 32))(v85);
    }
  }

  return result;
}