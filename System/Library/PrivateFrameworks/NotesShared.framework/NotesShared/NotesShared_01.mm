void sub_214D6A0F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  MEMORY[0x216063B80](v2, 0x10B3C407D90225ELL);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(va);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va1);
  _Unwind_Resume(a1);
}

uint64_t topotext::WallClockMergeableValue::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 32);
  if ((v2 & 3) != 0)
  {
    *(this + 40) = 0;
    if ((v2 & 2) != 0)
    {
      v3 = *(this + 48);
      if (v3)
      {
        this = topotext::BoxedValue::clear_contents(*(this + 48));
        *(v3 + 32) = 0;
        if (*(v3 + 31) < 0)
        {
          **(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        else
        {
          *(v3 + 8) = 0;
          *(v3 + 31) = 0;
        }
      }
    }
  }

  *(v1 + 32) = 0;
  if (*(v1 + 31) < 0)
  {
    **(v1 + 8) = 0;
    *(v1 + 16) = 0;
  }

  else
  {
    *(v1 + 8) = 0;
    *(v1 + 31) = 0;
  }

  return this;
}

void topotext::WallClockMergeableValue::SharedDtor(topotext::WallClockMergeableValue *this)
{
  topotext::protobuf_AddDesc_topotext_2eproto(this);
  if (topotext::WallClockMergeableValue::default_instance_ != this)
  {
    v2 = *(this + 6);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

void topotext::WallClockMergeableValue::~WallClockMergeableValue(void **this)
{
  *this = &unk_28270BE30;
  topotext::WallClockMergeableValue::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  topotext::WallClockMergeableValue::~WallClockMergeableValue(this);

  JUMPOUT(0x216063B80);
}

id sub_214D6A5A0()
{
  v0 = [objc_allocWithZone(ICDeviceManagementRestrictionsManager) init];
  result = [v0 registerObserver];
  qword_280C24230 = v0;
  return result;
}

id sub_214D6A6C8()
{
  v1 = OBJC_IVAR___ICDeviceManagementRestrictionsManager____lazy_storage___connection;
  v2 = *(v0 + OBJC_IVAR___ICDeviceManagementRestrictionsManager____lazy_storage___connection);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ICDeviceManagementRestrictionsManager____lazy_storage___connection);
LABEL_5:
    v6 = v2;
    return v3;
  }

  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v5 = *(v0 + v1);
    *(v0 + v1) = result;
    v3 = result;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall ICDeviceManagementRestrictionsManager.updateRestrictions()()
{
  v1 = sub_214D6A6C8();
  v2 = [v1 isMathPaperSolvingAllowed];

  [v0 set:v2 isMathPaperSolvingAllowed:?];
  v3 = OBJC_IVAR___ICDeviceManagementRestrictionsManager____lazy_storage___connection;
  [v0 set:objc_msgSend(*&v0[OBJC_IVAR___ICDeviceManagementRestrictionsManager____lazy_storage___connection] isKeyboardMathSolvingAllowed:sel_isKeyboardMathSolvingAllowed)];
  v4 = [*&v0[v3] isCalculatorModeScientificAllowed];

  [v0 set:v4 isCalculatorModeScientificAllowed:?];
}

void sub_214D6A8B4(char a1, uint64_t *a2, const char *a3)
{
  v4 = *a2;
  if (v3[*a2] != (a1 & 1))
  {
    v6 = v3;
    if (qword_280C231F0 != -1)
    {
      swift_once();
    }

    v7 = sub_2150A3F30();
    __swift_project_value_buffer(v7, qword_280C231F8);
    v8 = v3;
    oslog = sub_2150A3F10();
    v9 = sub_2150A5550();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = v6[v4];

      _os_log_impl(&dword_214D51000, oslog, v9, a3, v10, 8u);
      MEMORY[0x216064AF0](v10, -1, -1);
      v11 = oslog;
    }

    else
    {

      v11 = v8;
    }
  }
}

uint64_t static ICSystemPaperDocument.paperFastPath.setter(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = off_280C239B0;
  off_280C239B0 = a1;
  qword_280C239B8 = a2;
  return sub_214D6AB7C(v4);
}

uint64_t sub_214D6AB7C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t ic_currentEmphasisColorTypeDefault()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 integerForKey:@"emphasisDefaultValueKey"];

  if ((v1 - 6) < 0xFFFFFFFFFFFFFFFBLL)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

void sub_214D6AF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(v27 + 48);
  _Block_object_dispose((v28 - 208), 8);
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(v28 - 160);
  _Block_object_dispose((v28 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_214D6C99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_214D6D5C0@<X0>(void (*a1)(_BYTE *, uint64_t)@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v62 = a3;
  v66 = a1;
  v67 = a2;
  v6 = sub_2150A3F30();
  v70 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v69 = &v58[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v10 = &v58[-v9];
  v11 = [v4 objectID];
  if (![v11 ic_isModernType])
  {
    [v11 ic_isLegacyType];
  }

  v63 = v58;
  MEMORY[0x28223BE20](v12);
  v68 = v13;
  v58[-16] = v13;
  v14 = qword_280C245E0;
  v15 = v4;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v6, qword_280C24890);
  v17 = v70;
  v64 = *(v70 + 16);
  v65 = v16;
  v64(v10);
  *(swift_allocObject() + 16) = 2;
  if ((sub_214D6DCAC)())
  {
  }

  else
  {
    v18 = sub_2150A5570();
    v19 = sub_2150A3F10();
    if (os_log_type_enabled(v19, v18))
    {
      v20 = swift_slowAlloc();
      v59 = v18;
      v21 = v20;
      v60 = swift_slowAlloc();
      v73 = v60;
      *v21 = 136315650;
      v22 = sub_2150A5B70();
      v24 = sub_214F7723C(v22, v23, &v73);
      v61 = a4;
      v25 = v24;

      *(v21 + 4) = v25;
      *(v21 + 12) = 2048;
      *(v21 + 14) = v66;
      *(v21 + 22) = 2080;
      v71 = 0;
      v72 = 0xE000000000000000;
      sub_2150A5B20();
      MEMORY[0x2160617E0](0xD000000000000038, 0x80000002150E2580);
      v26 = [v15 ic_loggingDescription];
      v27 = sub_2150A4AD0();
      v29 = v28;

      v30 = v27;
      a4 = v61;
      MEMORY[0x2160617E0](v30, v29);

      v31 = sub_214F7723C(v71, v72, &v73);

      *(v21 + 24) = v31;
      v17 = v70;
      _os_log_impl(&dword_214D51000, v19, v59, "Failed assertion at %s:%lu: %s", v21, 0x20u);
      v32 = v60;
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v32, -1, -1);
      MEMORY[0x216064AF0](v21, -1, -1);
    }
  }

  v66 = *(v17 + 8);
  v66(v10, v6);

  v33 = v69;
  v34 = [v15 identifierURIPathComponent];
  if (v34)
  {
    v35 = v34;
    v36 = sub_2150A4AD0();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0xE000000000000000;
  }

  v63 = v58;
  MEMORY[0x28223BE20](v34);
  *&v58[-16] = v36;
  *&v58[-8] = v38;
  (v64)(v33, v65, v6);
  v39 = swift_allocObject();
  *(v39 + 16) = 2;
  v40 = v15;
  if (sub_214D6DCAC(v39, v67, &v58[-32]))
  {

LABEL_18:
    v56 = v33;
    goto LABEL_19;
  }

  v41 = sub_2150A5570();
  v42 = sub_2150A3F10();
  if (!os_log_type_enabled(v42, v41))
  {

    goto LABEL_18;
  }

  v43 = swift_slowAlloc();
  LODWORD(v65) = v41;
  v44 = v43;
  v67 = swift_slowAlloc();
  v73 = v67;
  *v44 = 136315650;
  v45 = sub_2150A5B70();
  v47 = sub_214F7723C(v45, v46, &v73);
  v61 = a4;
  v48 = v47;

  *(v44 + 4) = v48;
  *(v44 + 12) = 2048;
  *(v44 + 14) = v62;
  *(v44 + 22) = 2080;
  v71 = 0;
  v72 = 0xE000000000000000;
  sub_2150A5B20();

  v71 = 0xD00000000000002CLL;
  v72 = 0x80000002150E2550;
  v49 = [v40 ic_loggingDescription];
  v50 = sub_2150A4AD0();
  v52 = v51;

  v53 = v50;
  a4 = v61;
  MEMORY[0x2160617E0](v53, v52);

  v54 = sub_214F7723C(v71, v72, &v73);

  *(v44 + 24) = v54;
  _os_log_impl(&dword_214D51000, v42, v65, "Failed assertion at %s:%lu: %s", v44, 0x20u);
  v55 = v67;
  swift_arrayDestroy();
  MEMORY[0x216064AF0](v55, -1, -1);
  MEMORY[0x216064AF0](v44, -1, -1);

  v56 = v69;
LABEL_19:
  v66(v56, v6);

  *a4 = v68;
  *(a4 + 8) = v36;
  *(a4 + 16) = v38;
  return result;
}

uint64_t sub_214D6DCBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  if (v2 == 2)
  {
    LOBYTE(v2) = a2();
    swift_beginAccess();
    *v3 = v2 & 1;
  }

  return v2 & 1;
}

BOOL sub_214D6DD48()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16) & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  return v2 != 0;
}

uint64_t sub_214D6DD68()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  sub_214D6DEA4(*v0, *(v0 + 1), *(v0 + 2), &v8 - v2);
  v4 = sub_2150A3750();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_214F5C454(v3);
    return 0;
  }

  else
  {
    v7 = sub_2150A3650();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t sub_214D6DEC0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v76 = a2;
  v77 = a3;
  v68 = a1;
  v78 = a4;
  v4 = sub_2150A3240();
  v73 = *(v4 - 8);
  v74 = v4;
  MEMORY[0x28223BE20](v4);
  v72 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D48);
  MEMORY[0x28223BE20](v6 - 8);
  v66 = &v58 - v7;
  v8 = sub_2150A4360();
  v70 = *(v8 - 8);
  v71 = v8;
  MEMORY[0x28223BE20](v8);
  v69 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2150A3050();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D50);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v64 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v58 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v58 - v20;
  v22 = sub_2150A4340();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v65 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v62 = &v58 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v63 = &v58 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v75 = &v58 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v58 - v32;
  sub_2150A4350();
  v34 = *(v23 + 48);
  if (v34(v21, 1, v22) == 1)
  {
    v19 = v21;
  }

  else
  {
    v35 = *(v23 + 32);
    v67 = v33;
    v60 = v23 + 32;
    v61 = v34;
    v59 = v35;
    v35(v33, v21, v22);
    v79 = v76;
    v80 = v77;
    v36 = objc_opt_self();

    v37 = [v36 ic_uriIdentifierAllowedCharacterSet];
    sub_2150A3020();

    sub_214D6E6C4();
    sub_2150A58A0();
    v39 = v38;
    (*(v11 + 8))(v13, v10);

    if (v39)
    {
      sub_2150A4350();
      v40 = v61;
      if (v61(v19, 1, v22) != 1)
      {
        v59(v75, v19, v22);
        v41 = sub_2150A42E0();
        (*(*(v41 - 8) + 56))(v66, 1, 1, v41);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D58);
        v42 = (*(v23 + 80) + 32) & ~*(v23 + 80);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_2150C25D0;
        v44 = *(v23 + 16);
        v44(v43 + v42, v67, v22);
        v45 = v69;
        sub_2150A42F0();
        v46 = v65;
        if (v68 != 2 && (v68 & 1) != 0)
        {
          v47 = v64;
          sub_2150A4350();
          result = v40(v47, 1, v22);
          if (result == 1)
          {
            __break(1u);
            return result;
          }

          v49 = v62;
          v50 = v59;
          v59(v62, v47, v22);
          v51 = v63;
          v50(v63, v49, v22);
          v44(v46, v51, v22);
          sub_2150A4310();
          (*(v23 + 8))(v51, v22);
        }

        v52 = v75;
        v44(v46, v75, v22);
        sub_2150A4310();
        v53 = v72;
        sub_2150A3230();
        v54 = ICNotesAppURLScheme();
        sub_2150A4AD0();

        sub_2150A3200();
        v55 = sub_2150A4320();
        MEMORY[0x21605FD60](v55);
        sub_2150A3160();
        (*(v73 + 8))(v53, v74);
        (*(v70 + 8))(v45, v71);
        v56 = *(v23 + 8);
        v56(v52, v22);
        return (v56)(v67, v22);
      }
    }

    else
    {
      (*(v23 + 56))(v19, 1, 1, v22);
    }

    (*(v23 + 8))(v67, v22);
  }

  sub_214F302D4(v19, &qword_27CA41D50);
  v57 = sub_2150A3750();
  return (*(*(v57 - 8) + 56))(v78, 1, 1, v57);
}

unint64_t sub_214D6E6C4()
{
  result = qword_280C248C0;
  if (!qword_280C248C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C248C0);
  }

  return result;
}

uint64_t Array.subscript.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42760);
  sub_2150A4FD0();
  swift_getWitnessTable();
  sub_2150A53B0();
  sub_214D6EBB0();
  if (sub_2150A4DE0())
  {
    sub_2150A4FF0();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  return (*(*(a1 - 8) + 56))(a2, v4, 1, a1);
}

unint64_t sub_214D6EBB0()
{
  result = qword_280C23148;
  if (!qword_280C23148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA42760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C23148);
  }

  return result;
}

void sub_214D6FC34()
{
  sub_214D5A588();
  if (v0 <= 0x3F)
  {
    sub_2150A3A00();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for LinkSuggestion()
{
  result = qword_280C23F18;
  if (!qword_280C23F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214D6FD3C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2150A3A00();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t std::vector<std::pair<TopoID,TopoID>>::__emplace_back_slow_path<std::pair<TopoID,TopoID> const&>(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<std::pair<minIdPathData,TopoSubstring *>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<TopoID,TopoID>>>(a1, v7);
  }

  v8 = 32 * v2;
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  *(v8 + 16) = *(a2 + 16);
  *(v8 + 24) = *(a2 + 24);
  *&v17 = v8 + 32;
  v9 = *(a1 + 8);
  v10 = v8 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<TopoID,TopoID>>,std::pair<TopoID,TopoID>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<std::pair<TopoID,TopoID>>::~__split_buffer(&v15);
  return v14;
}

void sub_214D7010C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<TopoID,TopoID>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<TopoID,TopoID>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::pair<TopoID,TopoID>>::__emplace_back_slow_path<std::pair<TopoID,TopoID> const&>(a1, a2);
  }

  else
  {
    std::vector<std::pair<TopoID,TopoID>>::__construct_one_at_end[abi:ne200100]<std::pair<TopoID,TopoID> const&>(a1, a2);
    result = v3 + 32;
  }

  *(a1 + 8) = result;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<TopoID,TopoID>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::pair<TopoID,TopoID>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::pair<TopoID,TopoID>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<TopoID,TopoID>>,std::pair<TopoID,TopoID>*>(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  v11 = a4;
  v10 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = *v4;
      *v4 = 0;
      *a4 = v5;
      *(a4 + 8) = *(v4 + 2);
      v6 = v4[2];
      v4[2] = 0;
      *(a4 + 16) = v6;
      *(a4 + 24) = *(v4 + 6);
      v4 += 4;
      a4 += 32;
    }

    while (v4 != a3);
    v11 = a4;
  }

  v9 = 1;
  std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<TopoID,TopoID>>,std::pair<TopoID,TopoID>*,std::pair<TopoID,TopoID>*>(a1, a2, a3);
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<TopoID,TopoID>>,std::pair<TopoID,TopoID>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<TopoID,TopoID>>,std::pair<TopoID,TopoID>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<TopoID,TopoID>>,std::reverse_iterator<std::pair<TopoID,TopoID>*>,std::reverse_iterator<std::pair<TopoID,TopoID>*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<TopoID,TopoID>>,std::pair<TopoID,TopoID>*,std::pair<TopoID,TopoID>*>(uint64_t a1, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {

      v5 = *v4;
      v4 += 4;
    }

    while (v4 != a3);
  }
}

void std::__split_buffer<std::pair<TopoID,TopoID>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
  }
}

uint64_t ICSearchIndexableNote<>.entityIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2150A3F30();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v59[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v59[-v8];
  v10 = [v1 objectID];
  v11 = [v10 ic_isModernType];
  v68 = v7;
  if (!v11)
  {
    [v10 ic_isLegacyType];
  }

  v62 = v59;
  MEMORY[0x28223BE20](v12);
  v66 = v13;
  v59[-16] = v13;
  v14 = qword_280C245E0;
  v15 = v1;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v3, qword_280C24890);
  v63 = *(v4 + 16);
  v64 = v16;
  v63(v9);
  v17 = swift_allocObject();
  *(v17 + 16) = 2;
  v18 = sub_214D6DCAC(v17, sub_214D6DCB8, &v59[-32]);
  v67 = v4;
  if (v18)
  {
  }

  else
  {
    v19 = sub_2150A5570();
    v20 = sub_2150A3F10();
    if (os_log_type_enabled(v20, v19))
    {
      v21 = swift_slowAlloc();
      v60 = v19;
      v22 = v21;
      v65 = swift_slowAlloc();
      v71 = v65;
      *v22 = 136315650;
      v23 = sub_2150A5B70();
      v25 = sub_214F7723C(v23, v24, &v71);
      v61 = a1;
      v26 = v25;

      *(v22 + 4) = v26;
      *(v22 + 12) = 2048;
      *(v22 + 14) = 16;
      *(v22 + 22) = 2080;
      v69 = 0;
      v70 = 0xE000000000000000;
      sub_2150A5B20();
      MEMORY[0x2160617E0](0xD000000000000032, 0x80000002150E2680);
      v27 = [v15 ic_loggingDescription];
      v28 = sub_2150A4AD0();
      v30 = v29;

      v31 = v28;
      a1 = v61;
      MEMORY[0x2160617E0](v31, v30);

      v32 = sub_214F7723C(v69, v70, &v71);

      *(v22 + 24) = v32;
      _os_log_impl(&dword_214D51000, v20, v60, "Failed assertion at %s:%lu: %s", v22, 0x20u);
      v33 = v65;
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v33, -1, -1);
      MEMORY[0x216064AF0](v22, -1, -1);
    }

    v4 = v67;
  }

  v65 = *(v4 + 8);
  (v65)(v9, v3);

  v34 = [v15 identifier];
  if (v34)
  {
    v35 = v34;
    sub_2150A4AD0();

    v36 = sub_2150A4B40();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0xE000000000000000;
  }

  MEMORY[0x28223BE20](v34);
  *&v59[-16] = v36;
  *&v59[-8] = v38;
  v39 = v68;
  (v63)(v68, v64, v3);
  v40 = swift_allocObject();
  *(v40 + 16) = 2;
  v41 = v15;
  if (sub_214D6DCAC(v40, sub_214D6DD44, &v59[-32]))
  {

    (v65)(v39, v3);
  }

  else
  {
    v64 = v59;
    v43 = sub_2150A5570();
    v44 = sub_2150A3F10();
    if (os_log_type_enabled(v44, v43))
    {
      v45 = swift_slowAlloc();
      LODWORD(v62) = v43;
      v46 = v45;
      v63 = swift_slowAlloc();
      v71 = v63;
      *v46 = 136315650;
      v47 = sub_2150A5B70();
      v49 = sub_214F7723C(v47, v48, &v71);
      v61 = a1;
      v50 = v49;

      *(v46 + 4) = v50;
      *(v46 + 12) = 2048;
      *(v46 + 14) = 18;
      *(v46 + 22) = 2080;
      v69 = 0;
      v70 = 0xE000000000000000;
      sub_2150A5B20();

      v69 = 0xD000000000000026;
      v70 = 0x80000002150E2650;
      v51 = [v41 ic_loggingDescription];
      v52 = sub_2150A4AD0();
      v54 = v53;

      v55 = v52;
      a1 = v61;
      MEMORY[0x2160617E0](v55, v54);

      v56 = sub_214F7723C(v69, v70, &v71);

      *(v46 + 24) = v56;
      _os_log_impl(&dword_214D51000, v44, v62, "Failed assertion at %s:%lu: %s", v46, 0x20u);
      v57 = v63;
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v57, -1, -1);
      MEMORY[0x216064AF0](v46, -1, -1);

      v58 = v68;
    }

    else
    {

      v58 = v39;
    }

    (v65)(v58, v3);
  }

  *a1 = v66;
  *(a1 + 8) = v36;
  *(a1 + 16) = v38;
  return result;
}

uint64_t sub_214D713A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  sub_214F30070(*v0, *(v0 + 1), *(v0 + 2), &v8 - v2);
  v4 = sub_2150A3750();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_214F5C454(v3);
    return 0;
  }

  else
  {
    v7 = sub_2150A3650();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t Cache.init(name:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA433B8);
  type metadata accessor for Cache.KeyWrapper();
  type metadata accessor for Cache.ValueWrapper();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + 16) = v1;
  v2 = v1;
  v3 = sub_2150A4A90();

  [v2 setName_];

  return v0;
}

uint64_t sub_214D7174C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t Cache.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = *(*v2 + 88);
  v7 = *(*v2 + 96);
  v13[0] = *(*v2 + 80);
  v13[1] = v6;
  v13[2] = v13[0];
  v13[3] = v7;
  v13[4] = v7;
  v8 = objc_allocWithZone(type metadata accessor for Cache.KeyWrapper());
  v9 = sub_214D7196C(a1);
  v10 = [v5 objectForKey_];

  if (!v10)
  {
    return (*(*(v6 - 8) + 56))(a2, 1, 1, v6);
  }

  sub_214F50074(v10 + 16, v13);

  v11 = swift_dynamicCast();
  return (*(*(v6 - 8) + 56))(a2, v11 ^ 1u, 1, v6);
}

id sub_214D7196C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  (*(*(*((*MEMORY[0x277D85000] & *v1) + 0x60) - 8) + 16))(&v1[*((*MEMORY[0x277D85000] & *v1) + 0x78)], a1);
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_214D71A24(void *a1)
{
  v1 = a1;
  v2 = sub_214D71A58();

  return v2;
}

uint64_t sub_214D71B70(void *a1)
{
  v2 = sub_2150A30E0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2150A30B0();
  v6 = a1;
  sub_214D71C58(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_214D71C58(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v4 = sub_2150A57E0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v16[-v7];
  v9 = *(v3 - 8);
  MEMORY[0x28223BE20](v6);
  v11 = &v16[-v10];
  (*(v1 + qword_27CA431F0))(a1);
  if ((*(v9 + 48))(v8, 1, v3) == 1)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v13 = (*(v9 + 32))(v11, v8, v3);
  v14 = *(v1 + qword_27CA431F8);
  MEMORY[0x28223BE20](v13);
  *&v16[-16] = v3;
  *&v16[-8] = v11;
  type metadata accessor for NotificationSource.Observer.State();
  v15 = (*(*v14 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v14 + v15));
  sub_214FC0EB4();
  os_unfair_lock_unlock((v14 + v15));
  return (*(v9 + 8))(v11, v3);
}

uint64_t sub_214D71F44()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_280C23238);
  __swift_project_value_buffer(v0, qword_280C23238);
  return sub_2150A3F20();
}

uint64_t Cache.subscript.setter(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 88);
  v7 = sub_2150A57E0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  v12 = *(v6 - 8);
  MEMORY[0x28223BE20](v9);
  v14 = &v28 - v13;
  (*(v8 + 16))(v11, a1, v7);
  if ((*(v12 + 48))(v11, 1, v6) == 1)
  {
    v15 = *(v8 + 8);
    v15(v11, v7);
    v16 = v2[2];
    v17 = *(v5 + 80);
    v18 = *(v5 + 96);
    *&v29 = v17;
    *(&v29 + 1) = v6;
    v30 = v17;
    v31 = v18;
    v32 = v18;
    v19 = objc_allocWithZone(type metadata accessor for Cache.KeyWrapper());
    v20 = sub_214D7196C(a2);
    [v16 removeObjectForKey_];

    (*(*(v17 - 8) + 8))(a2, v17);
    return (v15)(a1, v7);
  }

  else
  {
    (*(v12 + 32))(v14, v11, v6);
    v28 = v2[2];
    v22 = *(v5 + 80);
    v23 = *(v5 + 96);
    type metadata accessor for Cache.ValueWrapper();
    v31 = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v29);
    (*(v12 + 16))(boxed_opaque_existential_1, v14, v6);
    v25 = swift_allocObject();
    sub_214D72488(&v29, (v25 + 16));
    *&v29 = v22;
    *(&v29 + 1) = v6;
    v30 = v22;
    v31 = v23;
    v32 = v23;
    v26 = objc_allocWithZone(type metadata accessor for Cache.KeyWrapper());
    v27 = sub_214D7196C(a2);
    [v28 setObject:v25 forKey:v27];

    (*(*(v22 - 8) + 8))(a2, v22);
    (*(v8 + 8))(a1, v7);
    return (*(v12 + 8))(v14, v6);
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

_OWORD *sub_214D72488(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_214D72498(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_214D724E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

id _s11NotesShared7ICQueryC016makeQueryForMathA021allowsRecentlyDeletedACSb_tFZ_0(char a1)
{
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2150C29C0;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2150A4AD0();
  *(v4 + 24) = v5;
  *(v3 + 32) = v4 | 0xA000000000000004;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2150A4AD0();
  *(v6 + 24) = v7;
  *(v3 + 40) = v6 | 0xA000000000000004;
  *(v2 + 16) = v3;
  v8 = v2 | 0x1000000000000000;
  if ((a1 & 1) == 0)
  {
    v9 = swift_allocObject();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2150C29C0;
    *(v10 + 32) = v8;
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v10 + 40) = v11 | 0x5000000000000000;
    *(v9 + 16) = v10;
    v8 = v9;
  }

  v12 = type metadata accessor for ICQuery();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR___ICQueryObjC_type] = v8;
  v15.receiver = v13;
  v15.super_class = v12;
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t sub_214D7291C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t ICQueryType.predicate.getter()
{
  v1 = type metadata accessor for ICQueryType.RelativeDateRange(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v94[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for ICQueryType.DateRange(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v94[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *v0;
  switch((*v0 >> 59) & 0x1E | (*v0 >> 2) & 1)
  {
    case 1uLL:
      v98 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      v12 = ICQueryType.predicate.getter(v48);
      v31 = [objc_opt_self() notPredicateWithSubpredicate_];

      goto LABEL_22;
    case 2uLL:
      v27 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v28 = *(v27 + 16);
      if (v28)
      {
        v98 = MEMORY[0x277D84F90];

        v29 = sub_2150A5CE0();
        v30 = 32;
        do
        {
          v97 = *(v27 + v30);
          ICQueryType.predicate.getter(v29);
          sub_2150A5CB0();
          sub_2150A5CF0();
          sub_2150A5D00();
          v29 = sub_2150A5CC0();
          v30 += 8;
          --v28;
        }

        while (v28);
      }

      sub_214D55670(0, &qword_280C23140);
      v12 = sub_2150A4EB0();

      v13 = [objc_opt_self() orPredicateWithSubpredicates_];
      goto LABEL_15;
    case 3uLL:
      v42 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_214D55670(0, &qword_280C23140);
      v26 = sub_2150A5500();
      if (v42)
      {
        return v26;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41A20);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_2150C13E0;
      *(v43 + 32) = sub_2150A5500();
      v44 = objc_opt_self();
      *(v43 + 40) = [v44 notPredicateWithSubpredicate_];
      v45 = sub_2150A4EB0();

      v46 = [v44 andPredicateWithSubpredicates_];

      return v46;
    case 4uLL:
      v14 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_214D55670(0, &qword_280C23140);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_2150C29C0;
      v16 = MEMORY[0x277D849A0];
      *(v15 + 56) = MEMORY[0x277D84958];
      *(v15 + 64) = v16;
      *(v15 + 32) = v14;
      v17 = sub_2150A4AD0();
      v19 = v18;
      *(v15 + 96) = MEMORY[0x277D837D0];
      *(v15 + 104) = sub_214D74008();
      *(v15 + 72) = v17;
      *(v15 + 80) = v19;
      return sub_2150A5500();
    case 5uLL:
    case 6uLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x14uLL:
      sub_214D55670(0, &qword_280C23140);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_2150C25D0;
      v58 = sub_2150A5000();
      *(v57 + 56) = sub_214D55670(0, &qword_280C230E8);
      *(v57 + 64) = sub_214D7405C(&qword_280C230E0, &qword_280C230E8);
      *(v57 + 32) = v58;
      return sub_2150A5500();
    case 7uLL:
      v47 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_214D55670(0, &qword_280C23140);
      v26 = sub_2150A5500();
      if ((v47 & 1) == 0)
      {
        goto LABEL_43;
      }

      return v26;
    case 8uLL:
    case 0xEuLL:
      v73 = swift_projectBox();
      sub_214F92AE4(v73, v6, type metadata accessor for ICQueryType.DateRange);
      v74 = sub_2150A38F0();
      v75 = sub_2150A38F0();
      sub_214D55670(0, &qword_280C23140);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
      v76 = swift_allocObject();
      *(v76 + 16) = xmmword_2150C29C0;
      v77 = sub_214D55670(0, &qword_27CA42C08);
      *(v76 + 56) = v77;
      v78 = sub_214D7405C(&qword_27CA42C10, &qword_27CA42C08);
      *(v76 + 32) = v74;
      *(v76 + 96) = v77;
      *(v76 + 104) = v78;
      *(v76 + 64) = v78;
      *(v76 + 72) = v75;
      v79 = v74;
      v80 = v75;
      v26 = sub_2150A5500();

      v40 = type metadata accessor for ICQueryType.DateRange;
      v41 = v6;
      goto LABEL_38;
    case 9uLL:
    case 0xFuLL:
      v32 = swift_projectBox();
      sub_214F92AE4(v32, v3, type metadata accessor for ICQueryType.RelativeDateRange);
      v98 = v7;
      sub_214F8D43C(v3, v6);
      v33 = sub_2150A38F0();
      v34 = sub_2150A38F0();
      sub_214D55670(0, &qword_280C23140);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_2150C29C0;
      v36 = sub_214D55670(0, &qword_27CA42C08);
      *(v35 + 56) = v36;
      v37 = sub_214D7405C(&qword_27CA42C10, &qword_27CA42C08);
      *(v35 + 32) = v33;
      *(v35 + 96) = v36;
      *(v35 + 104) = v37;
      *(v35 + 64) = v37;
      *(v35 + 72) = v34;
      v38 = v33;
      v39 = v34;
      v26 = sub_2150A5500();

      sub_214F92A84(v6, type metadata accessor for ICQueryType.DateRange);
      v40 = type metadata accessor for ICQueryType.RelativeDateRange;
      v41 = v3;
LABEL_38:
      sub_214F92A84(v41, v40);
      return v26;
    case 0xAuLL:
      v70 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_214D55670(0, &qword_280C23140);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_2150C25D0;
      v72 = sub_2150A6490();
      *(v71 + 56) = sub_214D55670(0, &qword_280C230E8);
      *(v71 + 64) = sub_214D7405C(&qword_280C230E0, &qword_280C230E8);
      *(v71 + 32) = v72;
      v26 = sub_2150A5500();
      if ((v70 & 1) == 0)
      {
        goto LABEL_43;
      }

      return v26;
    case 0xBuLL:
    case 0x13uLL:
    case 0x15uLL:
      v88 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v87 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      sub_214D55670(0, &qword_280C23140);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_2150C25D0;
      *(v89 + 56) = MEMORY[0x277D837D0];
      *(v89 + 64) = sub_214D74008();
      *(v89 + 32) = v88;
      *(v89 + 40) = v87;

      return sub_2150A5500();
    case 0xCuLL:
      v21 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_214D55670(0, &qword_280C23140);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_2150C25D0;
      v23 = sub_2150A4AD0();
      v25 = v24;
      *(v22 + 56) = MEMORY[0x277D837D0];
      *(v22 + 64) = sub_214D74008();
      *(v22 + 32) = v23;
      *(v22 + 40) = v25;
      v26 = sub_2150A5500();
      if ((v21 & 1) == 0)
      {
        goto LABEL_43;
      }

      return v26;
    case 0xDuLL:
      v50 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v49 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      sub_214D55670(0, &qword_280C23140);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_2150C29C0;
      v52 = sub_2150A4AD0();
      v54 = v53;
      v55 = MEMORY[0x277D837D0];
      *(v51 + 56) = MEMORY[0x277D837D0];
      v56 = sub_214D74008();
      *(v51 + 32) = v52;
      *(v51 + 40) = v54;
      *(v51 + 96) = v55;
      *(v51 + 104) = v56;
      *(v51 + 64) = v56;
      *(v51 + 72) = v50;
      *(v51 + 80) = v49;

      return sub_2150A5500();
    case 0x12uLL:
      v59 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v98 = MEMORY[0x277D84F90];
      v60 = [objc_opt_self() folderDepthLimit];
      v61 = (v60 + 1);
      if (__OFADD__(v60, 1))
      {
        goto LABEL_48;
      }

      if ((v61 & 0x8000000000000000) != 0)
      {
        goto LABEL_49;
      }

      v95 = v59;
      sub_214D55670(0, &qword_280C23140);
      v62 = 0;
      v96 = xmmword_2150C25D0;
      while (1)
      {
        v97 = v7;
        sub_214F8E23C(v62);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
        v63 = swift_allocObject();
        *(v63 + 16) = v96;
        v64 = sub_2150A4AD0();
        v66 = v65;
        *(v63 + 56) = MEMORY[0x277D837D0];
        *(v63 + 64) = sub_214D74008();
        *(v63 + 32) = v64;
        *(v63 + 40) = v66;
        v67 = sub_2150A5500();

        v68 = v67;
        MEMORY[0x216061A60]();
        if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2150A4F10();
        }

        sub_2150A4F70();

        if (v61 == v62)
        {
          break;
        }

        if (__OFADD__(v62++, 1))
        {
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          JUMPOUT(0x214D73F50);
        }
      }

      v91 = sub_2150A4EB0();

      v92 = objc_opt_self();
      v26 = [v92 orPredicateWithSubpredicates_];

      if (v95)
      {
        return v26;
      }

      v93 = [v92 notPredicateWithSubpredicate_];

      return v93;
    case 0x16uLL:
      v81 = objc_opt_self();
      v82 = sub_2150A4A90();
      v83 = [v81 standardizedHashtagRepresentationForDisplayText_];

      v84 = sub_2150A4AD0();
      v86 = v85;

      v98 = v7;
      v26 = sub_214F8DFDC(v84, v86);

      return v26;
    case 0x17uLL:
      v90 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v98 = *v0;
      v26 = sub_214F8DFDC(0, 0);
      if (v90)
      {
        return v26;
      }

LABEL_43:
      v46 = [objc_opt_self() notPredicateWithSubpredicate_];

      return v46;
    default:
      v8 = *(v7 + 16);
      v9 = *(v8 + 16);
      if (v9)
      {
        v98 = MEMORY[0x277D84F90];

        v10 = sub_2150A5CE0();
        v11 = 32;
        do
        {
          v97 = *(v8 + v11);
          ICQueryType.predicate.getter(v10);
          sub_2150A5CB0();
          sub_2150A5CF0();
          sub_2150A5D00();
          v10 = sub_2150A5CC0();
          v11 += 8;
          --v9;
        }

        while (v9);
      }

      sub_214D55670(0, &qword_280C23140);
      v12 = sub_2150A4EB0();

      v13 = [objc_opt_self() andPredicateWithSubpredicates_];
LABEL_15:
      v31 = v13;
LABEL_22:

      return v31;
  }
}

uint64_t sub_214D73FB0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_214D74008()
{
  result = qword_280C23188;
  if (!qword_280C23188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C23188);
  }

  return result;
}

uint64_t sub_214D7405C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_214D55670(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id _s11NotesShared7ICQueryC023makeQueryForSystemPaperA021allowsRecentlyDeletedACSb_tFZ_0(char a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 1;
  v3 = v2 | 0xA000000000000000;
  if ((a1 & 1) == 0)
  {
    v4 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B8);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_2150C29C0;
    *(v5 + 32) = v3;
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    *(v5 + 40) = v6 | 0x5000000000000000;
    *(v4 + 16) = v5;
    v3 = v4;
  }

  v7 = type metadata accessor for ICQuery();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR___ICQueryObjC_type] = v3;
  v10.receiver = v8;
  v10.super_class = v7;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_214D741C0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id _s11NotesShared7ICQueryC016makeQueryForCallA021allowsRecentlyDeletedACSb_tFZ_0(char a1)
{
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2150C25D0;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2150A4AD0();
  *(v4 + 24) = v5;
  *(v3 + 32) = v4 | 0xA000000000000004;
  *(v2 + 16) = v3;
  v6 = v2 | 0x1000000000000000;
  if ((a1 & 1) == 0)
  {
    v7 = swift_allocObject();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_2150C29C0;
    *(v8 + 32) = v6;
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v8 + 40) = v9 | 0x5000000000000000;
    *(v7 + 16) = v8;
    v6 = v7;
  }

  v10 = type metadata accessor for ICQuery();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR___ICQueryObjC_type] = v6;
  v13.receiver = v11;
  v13.super_class = v10;
  return objc_msgSendSuper2(&v13, sel_init);
}

void *sub_214D74780@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_214D747DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2150A4AD0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_214D748C8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_214D748D8()
{
  MEMORY[0x216064BB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_214D74910()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_214D74960()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_214D74998()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_214D74A3C()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_214D74A78()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_214D74ADC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2150A55B0();
  *a1 = v3;
  return result;
}

uint64_t sub_214D74B68@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___ICCloudSession_reason);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_214D74BC4@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_214D74D2C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_214D74D74()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_214D74DAC()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_214D74DEC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_214D74E30()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_214D74F68()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_214D74FA0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_214D74FD8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_214D75020()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_214D75058()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_214D750C0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_214D75108()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_214D75150()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_214D751A0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_214D751FC()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_214D752A8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_214D752F0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_214D7532C()
{
  MEMORY[0x216064BB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_214D753A0(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_214D753FC()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_214D75440()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

__n128 sub_214D754F0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

BOOL sub_214D7550C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  return v2 != 0;
}

id sub_214D75670@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isCallRecording];
  *a2 = result;
  return result;
}

id sub_214D756B8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 callType];
  *a2 = result;
  return result;
}

id sub_214D75700@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 localSpeakerHandle];
  *a2 = result;
  return result;
}

id sub_214D75750@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 remoteSpeakerHandle];
  *a2 = result;
  return result;
}

id sub_214D757A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 callRecordingStartTime];
  *a2 = result;
  return result;
}

id sub_214D757F0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 externalModelAttributionProviderName];
  *a2 = result;
  return result;
}

id sub_214D75840@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 externalModelAttributionSymbolName];
  *a2 = result;
  return result;
}

id sub_214D75890@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 summary];
  *a2 = result;
  return result;
}

id sub_214D758E0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 topLineSummary];
  *a2 = result;
  return result;
}

id sub_214D75930@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 summaryVersion];
  *a2 = result;
  return result;
}

id sub_214D75980@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 toplineSummaryModelVersionInfo];
  *a2 = result;
  return result;
}

id sub_214D759D0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 longformSummaryModelVersionInfo];
  *a2 = result;
  return result;
}

id sub_214D75A20@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fragments];
  *a2 = result;
  return result;
}

id sub_214D75A70@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 callRecording];
  *a2 = result;
  return result;
}

id sub_214D75AC0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 callType];
  *a2 = result;
  return result;
}

id sub_214D75B10@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 callLocalSpeakerHandle];
  *a2 = result;
  return result;
}

id sub_214D75B60@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 callRemoteSpeakerHandle];
  *a2 = result;
  return result;
}

id sub_214D75BB0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 createdDate];
  *a2 = result;
  return result;
}

id sub_214D75C00@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 transcript];
  *a2 = result;
  return result;
}

id sub_214D75C50@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 transcriptVersion];
  *a2 = result;
  return result;
}

id sub_214D75CA0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 text];
  *a2 = result;
  return result;
}

id sub_214D75CF0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 timestamp];
  *a2 = result;
  return result;
}

id sub_214D75D40@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 duration];
  *a2 = result;
  return result;
}

id sub_214D75D90@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 speaker];
  *a2 = result;
  return result;
}

uint64_t sub_214D75DFC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_214D75E3C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_214D75E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2150A3960();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for PersistedActivityEvent.Activities();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_214D75F9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2150A3960();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 16) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for PersistedActivityEvent.Activities();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_214D760D4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

__n128 sub_214D7614C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_214D76170(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = sub_2150A4FD0();
  return sub_214F8AE0C(a1, v4, v5);
}

uint64_t sub_214D7637C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_214D763C4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_214D763FC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_214D7643C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2150A3960();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_214D764A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2150A3960();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_214D76518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 250)
  {
    v4 = *(a1 + 1);
    if (v4 <= 5)
    {
      v5 = 5;
    }

    else
    {
      v5 = *(a1 + 1);
    }

    v6 = v5 - 5;
    if (v4 >= 5)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_214D765D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 250)
  {
    *(result + 1) = a2 + 5;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_214D76690@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27CA42D68;
  return result;
}

uint64_t sub_214D766DC(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27CA42D68 = v1;
  return result;
}

uint64_t sub_214D76724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2150A3A00();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_214D767D0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_214D76818()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_214D76868()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_214D768A0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_214D768E4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_214D76924()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_214D7696C()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_214D769CC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_214D76A04()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_214D76A4C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_214D76A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2150A3960();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_214D76B4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2150A3960();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_214D76C08()
{
  v1 = sub_2150A3A00();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0) - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = (((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7;
  v10 = (v8 + v7 + v9) & ~v7;

  (*(v2 + 8))(v0 + v4, v1);
  v11 = sub_2150A3960();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!v13(v0 + v9, 1, v11))
  {
    (*(v12 + 8))(v0 + v9, v11);
  }

  if (!v13(v0 + v10, 1, v11))
  {
    (*(v12 + 8))(v0 + v10, v11);
  }

  return MEMORY[0x2821FE8E8](v0, v10 + v8, v3 | v7 | 7);
}

uint64_t sub_214D76E24()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 40) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;

  v6 = sub_2150A3960();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v4, 1, v6))
  {
    (*(v7 + 8))(v0 + v4, v6);
  }

  if (!v8(v0 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v5, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v5 + v3, v2 | 7);
}

uint64_t sub_214D76FA4()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_214D77024()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_214D77084()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_214D770C8()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

__n128 sub_214D7716C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_214D77180(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

void *sub_214D77248(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_214D77300()
{
  v1 = sub_2150A3750();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_214D773DC()
{
  v1 = sub_2150A3750();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_214D7747C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_214D774FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43548);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_214D77590()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_214D775C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43548);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_214D776D4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_214D7770C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_214D77744()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_214D77858@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___ICQueryObjC_type;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_214D778C0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_214D77920()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_214D77978()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_214D779C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 smartFolderQueryObjC];
  *a2 = result;
  return result;
}

uint64_t sub_214D77A10()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_214D77A4C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_214D77A9C()
{
  v1 = sub_2150A3750();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v4 + v7 + 8) & ~v4;
  v3(v0 + v5, v1);

  v3(v0 + v8, v1);

  return MEMORY[0x2821FE8E8](v0, v8 + v6, v4 | 7);
}

uint64_t sub_214D77B6C()
{
  v1 = sub_2150A3750();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (v3 + 24) & ~v3;
  v6 = (v4 + v3 + v5) & ~v3;
  v7 = (v4 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40) - 8);
  v9 = *(v8 + 80);
  v14 = *(v8 + 64);
  v10 = *(v2 + 8);
  v10(v0 + v5, v1);
  v10(v0 + v6, v1);
  v11 = *(v0 + v7);
  v12 = (v9 + v7 + 8) & ~v9;

  if (!(*(v2 + 48))(v0 + v12, 1, v1))
  {
    v10(v0 + v12, v1);
  }

  return MEMORY[0x2821FE8E8](v0, v12 + v14, v3 | v9 | 7);
}

uint64_t sub_214D77D24()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_214D77D78@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_2150100FC(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t sub_214D77DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2150A3A00();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    v11 = (v10 >> 57) & 0x18 | v10 & 7;
    v12 = 128 - (((v10 >> 57) >> 5) | (4 * v11));
    if (v11)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_214D77E7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2150A3A00();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
    *(a1 + *(a4 + 20)) = (v11 | (v11 << 57)) & 0xF000000000000007;
  }

  return result;
}

uint64_t sub_214D77F44()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_214D77F88()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_214D77FC0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43C58);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_214D78098()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_214D780E8()
{

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_214D78148()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_214D7819C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2150A3960();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_214D7825C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2150A3960();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_214D78318()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_214D7838C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_214D783CC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_214D784DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2150A3A00();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_214D785AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2150A3A00();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_214D78724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2150A3D10();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_214D787D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2150A3D10();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_214D78874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2150A3D10();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_214D78920(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2150A3D10();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_214D789C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2150A3D10();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_214D78A70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2150A3D10();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_214D78B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2150A3D10();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_214D78BC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_2150A3D10();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_214D78CA8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_214D78CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 44));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_214D78DB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 44)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_214D78E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_214D78F00()
{
  swift_getWitnessTable();

  return sub_2150A5370();
}

uint64_t sub_214D78F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_214D79008(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 109;
  }

  return 118;
}

uint64_t sub_214D7903C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2150A3A00();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_214D790F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2150A3A00();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_214D791B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA443A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_214D79288()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_214D79394()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_214D793D4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_214D79424()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_214D79484()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_214D794BC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_214D794F4()
{
  v1 = sub_2150A3400();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_214D795D4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_214D7960C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_214D79654@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___ICTranscription__downloadingModel;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_214D796B8()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_214D79708()
{
  v1 = sub_2150A3750();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_214D79840()
{

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_214D798B8()
{
  v1 = sub_2150A3750();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_214D79984()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_214D799BC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_214D799FC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_214D79A50@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_214D79B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2150A3A00();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_214D79BD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2150A3A00();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_214D79C98()
{
  v1 = sub_2150A3050();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_214D79D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2150A3960();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_214D79DE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2150A3960();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_214D79EC0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_214D79F10@<X0>(uint64_t *a1@<X8>)
{
  result = ICCloudSyncingObject.cloudSyncingObjectActivityEvents.getter();
  *a1 = result;
  return result;
}

uint64_t sub_214D79F68()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 40) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;

  v6 = sub_2150A3960();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v4, 1, v6))
  {
    (*(v7 + 8))(v0 + v4, v6);
  }

  if (!v8(v0 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v5, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v5 + v3, v2 | 7);
}

uint64_t sub_214D7A24C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_214D7A294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2150A3A00();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_214D7A340(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2150A3A00();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_214D7A458(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t google::protobuf::io::ArrayOutputStream::ArrayOutputStream(uint64_t this, void *a2, int a3, int a4)
{
  *this = &unk_282709958;
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
  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);

  JUMPOUT(0x216063B80);
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
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/io/zero_copy_stream_impl_lite.cc", 136);
    v5 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (last_returned_size_) > (0): ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "BackUp() can only be called after a successful Next().");
    google::protobuf::internal::LogFinisher::operator=(&v9, v6);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    v4 = *(this + 7);
  }

  if (v4 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/io/zero_copy_stream_impl_lite.cc", 138);
    v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (count) <= (last_returned_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, v7);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/io/zero_copy_stream_impl_lite.cc", 139);
    v8 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (count) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, v8);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  *(this + 3) = (*(this + 6) - a2);
}

void sub_214D7AA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::io::StringOutputStream::~StringOutputStream(google::protobuf::io::StringOutputStream *this)
{
  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);

  JUMPOUT(0x216063B80);
}

uint64_t google::protobuf::io::StringOutputStream::ByteCount(google::protobuf::io::StringOutputStream *this)
{
  v1 = *(this + 1);
  result = *(v1 + 23);
  if (result < 0)
  {
    return *(v1 + 8);
  }

  return result;
}

void sub_214D7D544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214D7D980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214D7DB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214D7E0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214D7E4C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214D7EC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214D7EE38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214D7F0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214D7FB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_4_3(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, os_log_t log, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, &buf, 0x34u);
}

void sub_214D80FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214D81334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t google::protobuf::io::ZeroCopyOutputStream::WriteAliasedRaw(google::protobuf::io::ZeroCopyOutputStream *this, const void *a2)
{
  google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/io/zero_copy_stream.cc", 49);
  v2 = google::protobuf::internal::LogMessage::operator<<(v5, "This ZeroCopyOutputStream doesn't support aliasing. Reaching here usually means a ZeroCopyOutputStream implementation bug.");
  google::protobuf::internal::LogFinisher::operator=(&v4, v2);
  google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  return 0;
}

void sub_214D82F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_214D835E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214D84054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214D84574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214D87C38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringForEmphasisColorType(uint64_t a1)
{
  v2 = &stru_2827172C0;
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v3 = @"Purple";
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_13;
      }

      v3 = @"Pink";
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        v3 = @"Orange";
        break;
      case 4:
        v3 = @"Mint";
        break;
      case 5:
        v3 = @"Blue";
        break;
      default:
        goto LABEL_13;
    }
  }

  v2 = __ICLocalizedFrameworkString_impl(v3, v3, 0, 1);
LABEL_13:

  return v2;
}

id ICEmphasisColorTypeKey(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"_ICEmphasisColorType_%ld", a1];

  return v1;
}

uint64_t ICEmphasisColorTypeForKey(void *a1)
{
  v1 = a1;
  if ([v1 hasPrefix:@"_ICEmphasisColorType_"])
  {
    v2 = [v1 substringFromIndex:{objc_msgSend(@"_ICEmphasisColorType_", "length")}];
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v2, "integerValue")}];
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id ICColorForEmphasisColorType(uint64_t a1)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        a1 = [MEMORY[0x277D75348] systemOrangeColor];
        break;
      case 4:
        a1 = [MEMORY[0x277D75348] systemMintColor];
        break;
      case 5:
        a1 = [MEMORY[0x277D75348] systemBlueColor];
        break;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      a1 = [MEMORY[0x277D75348] systemPurpleColor];
    }

    else if (a1 == 2)
    {
      a1 = [MEMORY[0x277D75348] systemPinkColor];
    }
  }

  else
  {
    a1 = [MEMORY[0x277D75348] preferredDefaultFontColor];
  }

  return a1;
}

id ICNSTextHighlightColorSchemeForEmphasisColorType(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    v2 = 0;
  }

  else
  {
    v2 = **(&unk_278194FE0 + a1 - 1);
  }

  return v2;
}

uint64_t ICEmphasisColorTypeForNSTextHighlightColorScheme(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x277D741B0]])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D741A8]])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D741A0]])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D74198]])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D74190]])
  {
    v2 = 5;
  }

  else
  {
    v2 = ic_currentEmphasisColorTypeDefault();
  }

  return v2;
}

uint64_t ICEmphasisColorTypeForTag(uint64_t result)
{
  if ((result - 6) < 0xFFFFFFFFFFFFFFFBLL)
  {
    return 0;
  }

  return result;
}

void ic_setCurrentEmphasisColorTypeDefault(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v2 setInteger:a1 forKey:@"emphasisDefaultValueKey"];
}

uint64_t ICEmphasisColorMaskFromType(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return 1;
  }

  else
  {
    return dword_2150C0600[a1 - 1];
  }
}

uint64_t ICEmphasisNumberOfColorsInMask(unsigned int a1)
{
  result = 0;
  v3 = 1;
  while (1)
  {
    v4 = 1;
    if (v3 <= 2)
    {
      if (v3 == 2)
      {
        v4 = 4;
      }

      else
      {
        v4 = 1;
      }

      if (v3 == 1)
      {
        v4 = 2;
      }

      goto LABEL_12;
    }

    if (v3 != 3)
    {
      break;
    }

    v4 = 8;
LABEL_12:
    if ((v4 & a1) != 0)
    {
      ++result;
    }

    if (++v3 == 5)
    {
      return result;
    }
  }

  if (v3 != 4)
  {
    goto LABEL_12;
  }

  result += (a1 >> 4) & 1;
  return result;
}

id NSStringForEmphasisColorMask(int a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = dword_2150C0600;
  for (i = 1; i != 6; ++i)
  {
    if (i > 5)
    {
      v5 = 1;
    }

    else
    {
      v5 = *v3;
    }

    if ((v5 & a1) != 0)
    {
      v6 = NSStringForEmphasisColorType(i);
      [v2 addObject:v6];
    }

    ++v3;
  }

  if (a1)
  {
    if ([v2 count])
    {
      v7 = @"and text without emphasis";
    }

    else
    {
      v7 = @"No emphasis";
    }

    v8 = __ICLocalizedFrameworkString_impl(v7, v7, 0, 1);
    [v2 addObject:v8];
  }

  if ([v2 count])
  {
    v9 = [v2 componentsJoinedByString:{@", "}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214D8919C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214D8ACD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214D8AFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214D8BBD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t ICHashWithHashKeys(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = &a9;
  if (!a1)
  {
    return 1;
  }

  v9 = a1;
  result = 1;
  do
  {
    result = v9 - result + 32 * result;
    v11 = v12;
    v12 += 8;
    v9 = *v11;
  }

  while (v9);
  return result;
}

uint64_t ICHashWithObject(void *a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v2 = ICCheckedDynamicCast();
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = [v4 hash];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v6 = v2;
    v7 = [v6 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v37;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v37 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v5 = ICHashWithObject(*(*(&v36 + 1) + 8 * i)) - v5 + 32 * v5;
        }

        v8 = [v6 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v8);
    }

LABEL_36:

    goto LABEL_37;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v11 = ICCheckedDynamicCast();
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v5 = [v13 hash];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v6 = v11;
    v14 = [v6 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v37;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v37 != v16)
          {
            objc_enumerationMutation(v6);
          }

          v18 = *(*(&v36 + 1) + 8 * j);
          v19 = [v6 objectForKeyedSubscript:{v18, v36}];
          v20 = ICHashWithObject(v18);
          v5 = ICHashWithObject(v19) + v5 - v20 + 32 * v20;
        }

        v15 = [v6 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v15);
    }

    goto LABEL_36;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v21 = ICCheckedDynamicCast();
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v5 = [v23 hash];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v6 = v21;
    v24 = [v6 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v37;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v37 != v26)
          {
            objc_enumerationMutation(v6);
          }

          v5 += ICHashWithObject(*(*(&v36 + 1) + 8 * k));
        }

        v25 = [v6 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v25);
    }

    goto LABEL_36;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v28 = ICCheckedDynamicCast();
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    v5 = [v30 hash];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v6 = v28;
    v31 = [v6 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v37;
      do
      {
        for (m = 0; m != v32; ++m)
        {
          if (*v37 != v33)
          {
            objc_enumerationMutation(v6);
          }

          v5 = ICHashWithObject(*(*(&v36 + 1) + 8 * m)) - v5 + 32 * v5;
        }

        v32 = [v6 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v32);
    }

    goto LABEL_36;
  }

  v5 = [v1 hash];
  if (v5)
  {
    goto LABEL_38;
  }

  v6 = [MEMORY[0x277CBEB68] null];
  v5 = [v6 hash];
LABEL_37:

LABEL_38:
  return v5;
}

void sub_214D95690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214D95E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214D963E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214D97128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214D97440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214D9A13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose((v45 - 224), 8);
  _Block_object_dispose((v45 - 176), 8);
  _Block_object_dispose((v45 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214D9AB90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214D9ADE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214D9FC94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DA0AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DA1DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void sub_214DA3808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DA3F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DA430C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DA46F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214DA4AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DA4E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DA6030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214DA63C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_214DA87B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, void *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  MEMORY[0x216063B80](v23, 0x10B3C4079506790);

  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

void sub_214DA9F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25)
{
  _Block_object_dispose(&a20, 8);

  _Block_object_dispose((v27 - 120), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214DAA380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  topotext::String::~String(va);

  _Unwind_Resume(a1);
}

void sub_214DAA4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278194A98, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Attachment>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 885);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 886);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*a1 + 8 * a2);
}

void sub_214DAA878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t versioned_document::protobuf_ShutdownFile_versioned_2ddocument_2eproto(versioned_document *this)
{
  if (versioned_document::Document::default_instance_)
  {
    (*(*versioned_document::Document::default_instance_ + 8))(versioned_document::Document::default_instance_);
  }

  result = versioned_document::Version::default_instance_;
  if (versioned_document::Version::default_instance_)
  {
    v2 = *(*versioned_document::Version::default_instance_ + 8);

    return v2();
  }

  return result;
}

std::string *versioned_document::Document::MergeFrom(versioned_document::Document *this, const versioned_document::Document *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/versioned-document.pb.cc", 244);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v13, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>((this + 40), (a2 + 40));
  if (*(a2 + 32))
  {
    v5 = *(a2 + 16);
    *(this + 8) |= 1u;
    *(this + 16) = v5;
  }

  v8 = *(a2 + 1);
  v7 = a2 + 8;
  v6 = v8;
  v9 = v7[23];
  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v9 >= 0)
  {
    v11 = v7[23];
  }

  else
  {
    v11 = *(v7 + 1);
  }

  return std::string::append((this + 8), v10, v11);
}

void sub_214DAAA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void versioned_document::Document::~Document(versioned_document::Document *this)
{
  *this = &unk_282709E08;
  versioned_document::protobuf_AddDesc_versioned_2ddocument_2eproto(this);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 5);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  versioned_document::Document::~Document(this);

  JUMPOUT(0x216063B80);
}

uint64_t versioned_document::Document::SerializeWithCachedSizes(versioned_document::Document *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 32))
  {
    google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 16), a2, a4);
  }

  if (*(this + 12) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 40, v6);
      google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2);
      ++v6;
    }

    while (v6 < *(this + 12));
  }

  v8 = *(this + 31);
  if (v8 < 0)
  {
    v9 = *(this + 1);
    v8 = *(this + 2);
  }

  else
  {
    v9 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v9, v8);
}

uint64_t versioned_document::Document::ByteSize(versioned_document::Document *this)
{
  if (*(this + 32))
  {
    v3 = *(this + 16);
    if (v3 >= 0x80)
    {
      v2 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v3) + 1;
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  v4 = *(this + 12);
  v5 = v4 + v2;
  if (v4 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 40, v6);
      v8 = versioned_document::Version::ByteSize(v7);
      v9 = v8;
      if (v8 >= 0x80)
      {
        v10 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
      }

      else
      {
        v10 = 1;
      }

      v5 += v9 + v10;
      ++v6;
    }

    while (v6 < *(this + 12));
  }

  v11 = *(this + 31);
  if (v11 < 0)
  {
    v11 = *(this + 2);
  }

  result = (v5 + v11);
  *(this + 9) = result;
  return result;
}

std::string *versioned_document::Document::CheckTypeAndMergeFrom(versioned_document::Document *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return versioned_document::Document::MergeFrom(this, lpsrc);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t versioned_document::Version::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if ((v1 & 7) != 0)
  {
    *(this + 40) = 0;
    if ((v1 & 4) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v2 = *(this + 48);
      if (v2 != google::protobuf::internal::empty_string_)
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
    }
  }

  *(this + 32) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 8) = 0;
    *(this + 16) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return this;
}

uint64_t versioned_document::Version::SerializeWithCachedSizes(versioned_document::Version *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = *(this + 8);
  if (v6)
  {
    google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 10), a2, a4);
    v6 = *(this + 8);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(this + 11), a2, a4);
  if ((*(this + 8) & 4) != 0)
  {
LABEL_4:
    google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(3, *(this + 6), a2);
  }

LABEL_5:
  v7 = *(this + 31);
  if (v7 < 0)
  {
    v8 = *(this + 1);
    v7 = *(this + 2);
  }

  else
  {
    v8 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v8, v7);
}

uint64_t versioned_document::Version::ByteSize(versioned_document::Version *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_24;
  }

  if (*(this + 32))
  {
    v4 = *(this + 10);
    if (v4 >= 0x80)
    {
      v3 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 8);
      if ((v2 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v5 = *(this + 11);
  if (v5 >= 0x80)
  {
    v6 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 8);
  }

  else
  {
    v6 = 2;
  }

  v3 += v6;
LABEL_14:
  if ((v2 & 4) != 0)
  {
    v7 = *(this + 6);
    v8 = *(v7 + 23);
    v9 = v8;
    v10 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v11 = *(v7 + 23);
    }

    else
    {
      v11 = v10;
    }

    if (v11 >= 0x80)
    {
      v12 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
      v8 = *(v7 + 23);
      v10 = *(v7 + 8);
      v9 = *(v7 + 23);
    }

    else
    {
      v12 = 1;
    }

    if (v9 < 0)
    {
      v8 = v10;
    }

    v3 += v12 + v8 + 1;
  }

LABEL_24:
  v13 = *(this + 31);
  if (v13 < 0)
  {
    v13 = *(this + 2);
  }

  result = (v3 + v13);
  *(this + 9) = result;
  return result;
}

std::string *versioned_document::Version::CheckTypeAndMergeFrom(versioned_document::Version *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return versioned_document::Version::MergeFrom(this, lpsrc);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 927);
    v4 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v11, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

  result = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, *(a2 + 2) + *(this + 2));
  if (*(a2 + 2) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(a2, v6);
      v8 = *(this + 3);
      v9 = *(this + 2);
      if (v9 >= v8)
      {
        if (v8 == *(this + 4))
        {
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, v8 + 1);
        }

        google::protobuf::internal::GenericTypeHandler<versioned_document::Version>::New();
      }

      v10 = *this;
      *(this + 2) = v9 + 1;
      result = versioned_document::Version::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 2));
  }

  return result;
}

void sub_214DAB280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t orientationByRotatingLeft(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return qword_2150C0710[a1];
  }
}

uint64_t orientationByRotatingRight(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return qword_2150C0750[a1];
  }
}

uint64_t clockwiseRotationsFromUpToMatchOrientation(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_2150C0790[a1 - 1];
  }
}

uint64_t counterClockwiseRotationsFromUpToMatchOrientation(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_2150C07C8[a1 - 1];
  }
}

__CFString *NSStringFromICImageClassOrientation(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return off_2781958E8[a1];
  }
}

uint64_t ICTransformFromImageOrientation@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v4 = MEMORY[0x277CBF2C0];
  v5 = *(MEMORY[0x277CBF2C0] + 16);
  *a2 = *MEMORY[0x277CBF2C0];
  *(a2 + 16) = v5;
  *(a2 + 32) = *(v4 + 32);
  if (result <= 3)
  {
    if (result != 1)
    {
      if (result != 2)
      {
        if (result != 3)
        {
          return result;
        }

        *a2 = xmmword_2150C06E0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 16) = 0x3FF0000000000000;
        goto LABEL_14;
      }

      *a2 = xmmword_2150C0700;
      *(a2 + 16) = xmmword_2150C06F0;
      goto LABEL_18;
    }

    *a2 = 0xBFF0000000000000;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0xBFF0000000000000;
LABEL_13:
    *(a2 + 32) = a3;
    goto LABEL_14;
  }

  if (result <= 5)
  {
    if (result != 4)
    {
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0x3FF0000000000000;
      *(a2 + 24) = xmmword_2150C06F0;
LABEL_14:
      *(a2 + 40) = a4;
      return result;
    }

    *a2 = 0xBFF0000000000000;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0x3FF0000000000000;
LABEL_18:
    *(a2 + 32) = a3;
    *(a2 + 40) = 0;
    return result;
  }

  if (result == 6 || result == 7)
  {
    *a2 = xmmword_2150C06E0;
    *(a2 + 16) = xmmword_2150C06F0;
    goto LABEL_13;
  }

  return result;
}

void sub_214DAC0E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  v25 = v24;
  MEMORY[0x216063B80](v25, 0x10B3C400074EEDFLL);

  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214DACDD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x216063B80](v10, 0x10B3C40CCCF3E6ELL);

  _Unwind_Resume(a1);
}

void sub_214DACF18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x216063B80](v11, 0x1093C4020A6E6BFLL);

  _Unwind_Resume(a1);
}

void sub_214DAD0F8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

__CFString *NSStringFromICAppearanceType(uint64_t a1)
{
  if (a1)
  {
    return @"ICAppearanceTypeDark";
  }

  else
  {
    return @"ICAppearanceTypeDefault";
  }
}

uint64_t drawing::protobuf_ShutdownFile_drawing_2eproto(drawing *this)
{
  if (drawing::Drawing::default_instance_)
  {
    (*(*drawing::Drawing::default_instance_ + 8))(drawing::Drawing::default_instance_);
  }

  if (drawing::Command::default_instance_)
  {
    (*(*drawing::Command::default_instance_ + 8))(drawing::Command::default_instance_);
  }

  if (drawing::CommandID::default_instance_)
  {
    (*(*drawing::CommandID::default_instance_ + 8))(drawing::CommandID::default_instance_);
  }

  if (drawing::Point::default_instance_)
  {
    (*(*drawing::Point::default_instance_ + 8))(drawing::Point::default_instance_);
  }

  if (drawing::Parameters::default_instance_)
  {
    (*(*drawing::Parameters::default_instance_ + 8))(drawing::Parameters::default_instance_);
  }

  if (drawing::Color::default_instance_)
  {
    (*(*drawing::Color::default_instance_ + 8))(drawing::Color::default_instance_);
  }

  result = drawing::Rectangle::default_instance_;
  if (drawing::Rectangle::default_instance_)
  {
    v2 = *(*drawing::Rectangle::default_instance_ + 8);

    return v2();
  }

  return result;
}

void drawing::protobuf_AddDesc_drawing_2eproto_impl(drawing *this, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x1E9BF1, 0x1E9BF0, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/drawing.pb.cc", a4);
  topotext::protobuf_AddDesc_topotext_2eproto(v4);
  operator new();
}

double drawing::Drawing::Drawing(drawing::Drawing *this)
{
  *this = &unk_282709F28;
  *(this + 10) = 0;
  *(this + 11) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  return result;
}

double drawing::Command::Command(drawing::Command *this)
{
  *this = &unk_282709FA0;
  result = 0.0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 116) = 0u;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 68) = 0u;
  return result;
}

double drawing::CommandID::CommandID(drawing::CommandID *this)
{
  *this = &unk_28270A018;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

double drawing::Point::Point(drawing::Point *this)
{
  *this = &unk_28270A090;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  return result;
}

double drawing::Parameters::Parameters(drawing::Parameters *this)
{
  *this = &unk_28270A108;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

double drawing::Color::Color(drawing::Color *this)
{
  *this = &unk_28270A180;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

double drawing::Rectangle::Rectangle(drawing::Rectangle *this)
{
  *this = &unk_28270A1F8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

void drawing::protobuf_AddDesc_drawing_2eproto(drawing *this)
{
  v1 = drawing::protobuf_AddDesc_drawing_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[0] = &unk_28270A628;
    v2[1] = drawing::protobuf_AddDesc_drawing_2eproto_impl;
    v3 = 0;
    google::protobuf::GoogleOnceInitImpl(&drawing::protobuf_AddDesc_drawing_2eproto_once_, v2);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_214DAD984(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

std::string *drawing::Drawing::MergeFrom(drawing::Drawing *this, const drawing::Drawing *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v22, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/drawing.pb.cc", 409);
    v4 = google::protobuf::internal::LogMessage::operator<<(v22, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v21, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v22[0].__r_.__value_.__l.__data_);
  }

  v5 = google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<drawing::Command>::TypeHandler>((this + 56), (a2 + 56));
  LOBYTE(v6) = *(a2 + 32);
  if (v6)
  {
    if (*(a2 + 32))
    {
      v7 = *(a2 + 12);
      *(this + 8) |= 1u;
      *(this + 12) = v7;
      v6 = *(a2 + 8);
    }

    if ((v6 & 2) != 0)
    {
      *(this + 8) |= 2u;
      v8 = *(this + 5);
      if (!v8)
      {
        operator new();
      }

      v9 = *(a2 + 5);
      if (!v9)
      {
        drawing::protobuf_AddDesc_drawing_2eproto(v5);
        v9 = *(drawing::Drawing::default_instance_ + 40);
      }

      v5 = topotext::VectorTimestamp::MergeFrom(v8, v9);
      v6 = *(a2 + 8);
    }

    if ((v6 & 8) != 0)
    {
      v10 = *(a2 + 13);
      *(this + 8) |= 8u;
      *(this + 13) = v10;
      v6 = *(a2 + 8);
      if ((v6 & 0x10) == 0)
      {
LABEL_14:
        if ((v6 & 0x20) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_18;
      }
    }

    else if ((v6 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    v11 = *(a2 + 10);
    *(this + 8) |= 0x10u;
    *(this + 10) = v11;
    if ((*(a2 + 8) & 0x20) == 0)
    {
      goto LABEL_23;
    }

LABEL_18:
    *(this + 8) |= 0x20u;
    v12 = *(this + 11);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 11);
    if (!v13)
    {
      drawing::protobuf_AddDesc_drawing_2eproto(v5);
      v13 = *(drawing::Drawing::default_instance_ + 88);
    }

    drawing::Rectangle::MergeFrom(v12, v13);
  }

LABEL_23:
  v16 = *(a2 + 1);
  v15 = a2 + 8;
  v14 = v16;
  v17 = v15[23];
  if (v17 >= 0)
  {
    v18 = v15;
  }

  else
  {
    v18 = v14;
  }

  if (v17 >= 0)
  {
    v19 = v15[23];
  }

  else
  {
    v19 = *(v15 + 1);
  }

  return std::string::append((this + 8), v18, v19);
}

void drawing::Drawing::~Drawing(drawing::Drawing *this)
{
  *this = &unk_282709F28;
  drawing::Drawing::SharedDtor(this);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 7);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  drawing::Drawing::~Drawing(this);

  JUMPOUT(0x216063B80);
}

void drawing::Drawing::SharedDtor(drawing::Drawing *this)
{
  drawing::protobuf_AddDesc_drawing_2eproto(this);
  if (drawing::Drawing::default_instance_ != this)
  {
    v2 = *(this + 5);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 11);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

uint64_t drawing::Drawing::Clear(drawing::Drawing *this)
{
  v2 = *(this + 8);
  if ((v2 & 0x3B) != 0)
  {
    *(this + 6) = 0;
    if ((v2 & 2) != 0)
    {
      v3 = *(this + 5);
      if (v3)
      {
        topotext::VectorTimestamp::Clear(v3);
        v2 = *(this + 8);
      }
    }

    *(this + 10) = 0;
    if ((v2 & 0x20) != 0)
    {
      v4 = *(this + 11);
      if (v4)
      {
        *(v4 + 40) = 0;
        *(v4 + 48) = 0;
        *(v4 + 32) = 0;
        if (*(v4 + 31) < 0)
        {
          **(v4 + 8) = 0;
          *(v4 + 16) = 0;
        }

        else
        {
          *(v4 + 8) = 0;
          *(v4 + 31) = 0;
        }
      }
    }
  }

  result = google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 56);
  *(this + 8) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 1) = 0;
    *(this + 2) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return result;
}

uint64_t drawing::Rectangle::Clear(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 32) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 8) = 0;
    *(this + 16) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return this;
}

uint64_t drawing::Drawing::MergePartialFromCodedStream(drawing::Drawing *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v52, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v51, v52);
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_6;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      v10 = v7 >> 3;
      if (v7 >> 3 > 3)
      {
        break;
      }

      switch(v10)
      {
        case 1u:
          if (v7 != 8)
          {
            goto LABEL_32;
          }

          v13 = *(a2 + 1);
          v12 = *(a2 + 2);
          if (v13 >= v12 || (v14 = *v13, v14 < 0))
          {
            if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12))
            {
              goto LABEL_100;
            }

            v15 = *(a2 + 1);
            v12 = *(a2 + 2);
          }

          else
          {
            *(this + 12) = v14;
            v15 = v13 + 1;
            *(a2 + 1) = v15;
          }

          v18 = *(this + 8) | 1;
          *(this + 8) = v18;
          if (v15 < v12 && *v15 == 18)
          {
            *(a2 + 1) = v15 + 1;
            goto LABEL_41;
          }

          break;
        case 2u:
          if (v7 != 18)
          {
            goto LABEL_32;
          }

          v18 = *(this + 8);
LABEL_41:
          *(this + 8) = v18 | 2;
          v19 = *(this + 5);
          if (!v19)
          {
            operator new();
          }

          v53[0] = 0;
          v20 = *(a2 + 1);
          if (v20 >= *(a2 + 2) || *v20 < 0)
          {
            if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v53))
            {
              goto LABEL_100;
            }
          }

          else
          {
            v53[0] = *v20;
            *(a2 + 1) = v20 + 1;
          }

          v21 = *(a2 + 14);
          v22 = *(a2 + 15);
          *(a2 + 14) = v21 + 1;
          if (v21 >= v22)
          {
            goto LABEL_100;
          }

          v23 = google::protobuf::io::CodedInputStream::PushLimit(a2, v53[0]);
          if (!topotext::VectorTimestamp::MergePartialFromCodedStream(v19, a2) || *(a2 + 36) != 1)
          {
            goto LABEL_100;
          }

          google::protobuf::io::CodedInputStream::PopLimit(a2, v23);
          v24 = *(a2 + 14);
          v25 = __OFSUB__(v24, 1);
          v26 = v24 - 1;
          if (v26 < 0 == v25)
          {
            *(a2 + 14) = v26;
          }

          v27 = *(a2 + 1);
          if (v27 < *(a2 + 2) && *v27 == 26)
          {
            while (2)
            {
              *(a2 + 1) = v27 + 1;
LABEL_55:
              v28 = *(this + 17);
              v29 = *(this + 16);
              if (v29 >= v28)
              {
                if (v28 == *(this + 18))
                {
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 56, v28 + 1);
                }

                operator new();
              }

              v30 = *(this + 7);
              *(this + 16) = v29 + 1;
              v31 = *(v30 + 8 * v29);
              v53[0] = 0;
              v32 = *(a2 + 1);
              if (v32 >= *(a2 + 2) || *v32 < 0)
              {
                if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v53))
                {
                  goto LABEL_100;
                }
              }

              else
              {
                v53[0] = *v32;
                *(a2 + 1) = v32 + 1;
              }

              v33 = *(a2 + 14);
              v34 = *(a2 + 15);
              *(a2 + 14) = v33 + 1;
              if (v33 >= v34 || (v35 = google::protobuf::io::CodedInputStream::PushLimit(a2, v53[0]), !drawing::Command::MergePartialFromCodedStream(v31, a2)) || *(a2 + 36) != 1)
              {
LABEL_100:
                v49 = 0;
                goto LABEL_102;
              }

              google::protobuf::io::CodedInputStream::PopLimit(a2, v35);
              v36 = *(a2 + 14);
              v25 = __OFSUB__(v36, 1);
              v37 = v36 - 1;
              if (v37 < 0 == v25)
              {
                *(a2 + 14) = v37;
              }

              v27 = *(a2 + 1);
              v16 = *(a2 + 2);
              if (v27 < v16)
              {
                v38 = *v27;
                if (v38 == 26)
                {
                  continue;
                }

                if (v38 == 32)
                {
                  v17 = v27 + 1;
                  *(a2 + 1) = v17;
LABEL_73:
                  if (v17 >= v16 || (v39 = *v17, v39 < 0))
                  {
                    if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13))
                    {
                      goto LABEL_100;
                    }

                    v40 = *(a2 + 1);
                    v16 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 13) = v39;
                    v40 = v17 + 1;
                    *(a2 + 1) = v40;
                  }

                  *(this + 8) |= 8u;
                  if (v40 < v16 && *v40 == 41)
                  {
                    *(a2 + 1) = v40 + 1;
                    goto LABEL_81;
                  }
                }
              }

              break;
            }
          }

          break;
        case 3u:
          if (v7 == 26)
          {
            goto LABEL_55;
          }

          goto LABEL_32;
        default:
LABEL_6:
          if (v7)
          {
            v9 = (v7 & 7) == 4;
          }

          else
          {
            v9 = 1;
          }

          if (v9)
          {
LABEL_101:
            v49 = 1;
            goto LABEL_102;
          }

LABEL_34:
          if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v51, v4))
          {
            goto LABEL_100;
          }

          break;
      }
    }

    if (v10 == 4)
    {
      if (v7 == 32)
      {
        v17 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_73;
      }

      goto LABEL_32;
    }

    if (v10 != 5)
    {
      if (v10 != 6)
      {
        goto LABEL_6;
      }

      if (v7 == 50)
      {
        v11 = *(this + 8);
        goto LABEL_85;
      }

LABEL_32:
      if (!v7 || (v7 & 7) == 4)
      {
        goto LABEL_101;
      }

      goto LABEL_34;
    }

    if (v7 != 41)
    {
      goto LABEL_32;
    }

LABEL_81:
    *v53 = 0;
    if (!google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v53))
    {
      goto LABEL_100;
    }

    *(this + 10) = *v53;
    v11 = *(this + 8) | 0x10;
    *(this + 8) = v11;
    v41 = *(a2 + 1);
    if (v41 < *(a2 + 2) && *v41 == 50)
    {
      *(a2 + 1) = v41 + 1;
LABEL_85:
      *(this + 8) = v11 | 0x20;
      v42 = *(this + 11);
      if (!v42)
      {
        operator new();
      }

      v53[0] = 0;
      v43 = *(a2 + 1);
      if (v43 >= *(a2 + 2) || *v43 < 0)
      {
        if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v53))
        {
          goto LABEL_100;
        }
      }

      else
      {
        v53[0] = *v43;
        *(a2 + 1) = v43 + 1;
      }

      v44 = *(a2 + 14);
      v45 = *(a2 + 15);
      *(a2 + 14) = v44 + 1;
      if (v44 >= v45)
      {
        goto LABEL_100;
      }

      v46 = google::protobuf::io::CodedInputStream::PushLimit(a2, v53[0]);
      if (!drawing::Rectangle::MergePartialFromCodedStream(v42, a2) || *(a2 + 36) != 1)
      {
        goto LABEL_100;
      }

      google::protobuf::io::CodedInputStream::PopLimit(a2, v46);
      v47 = *(a2 + 14);
      v25 = __OFSUB__(v47, 1);
      v48 = v47 - 1;
      if (v48 < 0 == v25)
      {
        *(a2 + 14) = v48;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        break;
      }
    }
  }

  *(a2 + 8) = 0;
  v49 = 1;
  *(a2 + 36) = 1;
LABEL_102:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v51);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v52);
  return v49;
}

void sub_214DAE494(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  MEMORY[0x216063B80](v2, 0x1093C4020A6E6BFLL);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(va);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va1);
  _Unwind_Resume(a1);
}

uint64_t drawing::Drawing::SerializeWithCachedSizes(drawing::Drawing *this, google::protobuf::io::CodedOutputStream *a2, google::protobuf::io::CodedOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 8);
  if (v6)
  {
    this = google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 12), a2, a4);
    v6 = *(v5 + 8);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 5);
    if (!v7)
    {
      drawing::protobuf_AddDesc_drawing_2eproto(this);
      v7 = *(drawing::Drawing::default_instance_ + 40);
    }

    this = google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2);
  }

  if (*(v5 + 16) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<drawing::Command>::TypeHandler>(v5 + 56, v8);
      this = google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2);
      ++v8;
    }

    while (v8 < *(v5 + 16));
  }

  v10 = *(v5 + 8);
  if ((v10 & 8) != 0)
  {
    this = google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 13), a2, a4);
    v10 = *(v5 + 8);
    if ((v10 & 0x10) == 0)
    {
LABEL_12:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }
  }

  else if ((v10 & 0x10) == 0)
  {
    goto LABEL_12;
  }

  this = google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 10), a3);
  if ((*(v5 + 8) & 0x20) == 0)
  {
    goto LABEL_19;
  }

LABEL_16:
  v11 = *(v5 + 11);
  if (!v11)
  {
    drawing::protobuf_AddDesc_drawing_2eproto(this);
    v11 = *(drawing::Drawing::default_instance_ + 88);
  }

  google::protobuf::internal::WireFormatLite::WriteMessage(6, v11, a2);
LABEL_19:
  v12 = *(v5 + 31);
  if (v12 < 0)
  {
    v13 = *(v5 + 1);
    v12 = *(v5 + 2);
  }

  else
  {
    v13 = v5 + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v13, v12);
}

uint64_t drawing::Drawing::ByteSize(drawing::Drawing *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_30;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_10:
    v5 = *(this + 5);
    if (!v5)
    {
      drawing::protobuf_AddDesc_drawing_2eproto(0);
      v5 = *(drawing::Drawing::default_instance_ + 40);
    }

    v6 = topotext::VectorTimestamp::ByteSize(v5);
    v7 = v6;
    if (v6 >= 0x80)
    {
      v8 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
    }

    else
    {
      v8 = 1;
    }

    v3 += v7 + v8 + 1;
    v2 = *(this + 8);
    goto LABEL_16;
  }

  v4 = *(this + 12);
  if (v4 < 0x80)
  {
    v3 = 2;
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v3 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
  v2 = *(this + 8);
  if ((v2 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_16:
  if ((v2 & 8) != 0)
  {
    v9 = *(this + 13);
    if (v9 >= 0x80)
    {
      v10 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
      v2 = *(this + 8);
    }

    else
    {
      v10 = 2;
    }

    v3 += v10;
  }

  if ((v2 & 0x10) != 0)
  {
    v3 += 9;
  }

  if ((v2 & 0x20) != 0)
  {
    v11 = *(this + 11);
    if (!v11)
    {
      drawing::protobuf_AddDesc_drawing_2eproto(0);
      v11 = *(drawing::Drawing::default_instance_ + 88);
    }

    v12 = drawing::Rectangle::ByteSize(v11);
    v13 = v12;
    if (v12 >= 0x80)
    {
      v14 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
    }

    else
    {
      v14 = 1;
    }

    v3 += v13 + v14 + 1;
  }

LABEL_30:
  v15 = *(this + 16);
  v16 = v15 + v3;
  if (v15 >= 1)
  {
    v17 = 0;
    do
    {
      v18 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<drawing::Command>::TypeHandler>(this + 56, v17);
      v19 = drawing::Command::ByteSize(v18);
      v20 = v19;
      if (v19 >= 0x80)
      {
        v21 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
      }

      else
      {
        v21 = 1;
      }

      v16 += v20 + v21;
      ++v17;
    }

    while (v17 < *(this + 16));
  }

  v22 = *(this + 31);
  if (v22 < 0)
  {
    v22 = *(this + 2);
  }

  result = (v16 + v22);
  *(this + 9) = result;
  return result;
}

std::string *drawing::Drawing::CheckTypeAndMergeFrom(drawing::Drawing *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return drawing::Drawing::MergeFrom(this, lpsrc);
}

std::string *drawing::Rectangle::MergeFrom(drawing::Rectangle *this, const drawing::Rectangle *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/drawing.pb.cc", 2501);
    v4 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v17, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (!v5)
  {
    goto LABEL_9;
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_17:
    v15 = *(a2 + 11);
    *(this + 8) |= 2u;
    *(this + 11) = v15;
    v5 = *(a2 + 8);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    goto LABEL_18;
  }

  v14 = *(a2 + 10);
  *(this + 8) |= 1u;
  *(this + 10) = v14;
  v5 = *(a2 + 8);
  if ((v5 & 2) != 0)
  {
    goto LABEL_17;
  }

LABEL_6:
  if ((v5 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_18:
  v16 = *(a2 + 12);
  *(this + 8) |= 4u;
  *(this + 12) = v16;
  if ((*(a2 + 8) & 8) != 0)
  {
LABEL_8:
    v6 = *(a2 + 13);
    *(this + 8) |= 8u;
    *(this + 13) = v6;
  }

LABEL_9:
  v9 = *(a2 + 1);
  v8 = a2 + 8;
  v7 = v9;
  v10 = v8[23];
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = v8[23];
  }

  else
  {
    v12 = *(v8 + 1);
  }

  return std::string::append((this + 8), v11, v12);
}

void sub_214DAE958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *drawing::Command::MergeFrom(drawing::Command *this, const drawing::Command *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v32, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/drawing.pb.cc", 958);
    v4 = google::protobuf::internal::LogMessage::operator<<(v32, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v31, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v32[0].__r_.__value_.__l.__data_);
  }

  v5 = google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<drawing::Point>::TypeHandler>((this + 64), (a2 + 64));
  v6 = *(a2 + 8);
  if (!v6)
  {
    goto LABEL_43;
  }

  if (v6)
  {
    *(this + 8) |= 1u;
    v7 = *(this + 5);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 5);
    if (!v8)
    {
      drawing::protobuf_AddDesc_drawing_2eproto(v5);
      v8 = *(drawing::Command::default_instance_ + 40);
    }

    v5 = drawing::CommandID::MergeFrom(v7, v8);
    v6 = *(a2 + 8);
    if ((v6 & 2) == 0)
    {
LABEL_6:
      if ((v6 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(a2 + 32);
  *(this + 8) |= 2u;
  *(this + 32) = v9;
  v6 = *(a2 + 8);
  if ((v6 & 4) == 0)
  {
LABEL_7:
    if ((v6 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_18:
  *(this + 8) |= 4u;
  v10 = *(this + 6);
  if (!v10)
  {
    operator new();
  }

  v11 = *(a2 + 6);
  if (!v11)
  {
    drawing::protobuf_AddDesc_drawing_2eproto(v5);
    v11 = *(drawing::Command::default_instance_ + 48);
  }

  v5 = drawing::Color::MergeFrom(v10, v11);
  v6 = *(a2 + 8);
  if ((v6 & 8) == 0)
  {
LABEL_8:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_9;
    }

LABEL_28:
    *(this + 8) |= 0x20u;
    v14 = *(this + 11);
    if (!v14)
    {
      operator new();
    }

    v15 = *(a2 + 11);
    if (!v15)
    {
      drawing::protobuf_AddDesc_drawing_2eproto(v5);
      v15 = *(drawing::Command::default_instance_ + 88);
    }

    v5 = drawing::CommandID::MergeFrom(v14, v15);
    v6 = *(a2 + 8);
    if ((v6 & 0x40) == 0)
    {
LABEL_10:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_38;
    }

    goto LABEL_33;
  }

LABEL_23:
  *(this + 8) |= 8u;
  v12 = *(this + 7);
  if (!v12)
  {
    operator new();
  }

  v13 = *(a2 + 7);
  if (!v13)
  {
    drawing::protobuf_AddDesc_drawing_2eproto(v5);
    v13 = *(drawing::Command::default_instance_ + 56);
  }

  v5 = drawing::Point::MergeFrom(v12, v13);
  v6 = *(a2 + 8);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_9:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_10;
  }

LABEL_33:
  *(this + 8) |= 0x40u;
  v16 = *(this + 12);
  if (!v16)
  {
    operator new();
  }

  v17 = *(a2 + 12);
  if (!v17)
  {
    drawing::protobuf_AddDesc_drawing_2eproto(v5);
    v17 = *(drawing::Command::default_instance_ + 96);
  }

  v5 = drawing::Rectangle::MergeFrom(v16, v17);
  v6 = *(a2 + 8);
  if ((v6 & 0x80) != 0)
  {
LABEL_38:
    *(this + 8) |= 0x80u;
    v18 = *(this + 13);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 13);
    if (!v19)
    {
      drawing::protobuf_AddDesc_drawing_2eproto(v5);
      v19 = *(drawing::Command::default_instance_ + 104);
    }

    v5 = drawing::Point::MergeFrom(v18, v19);
    v6 = *(a2 + 8);
  }

LABEL_43:
  if ((v6 & 0xFF00) != 0)
  {
    if ((v6 & 0x100) != 0)
    {
      *(this + 8) |= 0x100u;
      v20 = *(this + 14);
      if (!v20)
      {
        operator new();
      }

      v21 = *(a2 + 14);
      if (!v21)
      {
        drawing::protobuf_AddDesc_drawing_2eproto(v5);
        v21 = *(drawing::Command::default_instance_ + 112);
      }

      v5 = drawing::Point::MergeFrom(v20, v21);
      v6 = *(a2 + 8);
    }

    if ((v6 & 0x200) != 0)
    {
      *(this + 8) |= 0x200u;
      v22 = *(this + 15);
      if (!v22)
      {
        operator new();
      }

      v23 = *(a2 + 15);
      if (!v23)
      {
        drawing::protobuf_AddDesc_drawing_2eproto(v5);
        v23 = *(drawing::Command::default_instance_ + 120);
      }

      drawing::Parameters::MergeFrom(v22, v23);
    }
  }

  v26 = *(a2 + 1);
  v25 = a2 + 8;
  v24 = v26;
  v27 = v25[23];
  if (v27 >= 0)
  {
    v28 = v25;
  }

  else
  {
    v28 = v24;
  }

  if (v27 >= 0)
  {
    v29 = v25[23];
  }

  else
  {
    v29 = *(v25 + 1);
  }

  return std::string::append((this + 8), v28, v29);
}

void sub_214DAEEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void drawing::Command::~Command(drawing::Command *this)
{
  *this = &unk_282709FA0;
  drawing::Command::SharedDtor(this);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 8);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  drawing::Command::~Command(this);

  JUMPOUT(0x216063B80);
}

void drawing::Command::SharedDtor(drawing::Command *this)
{
  drawing::protobuf_AddDesc_drawing_2eproto(this);
  if (drawing::Command::default_instance_ != this)
  {
    v2 = *(this + 5);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 6);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(this + 7);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(this + 11);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(this + 12);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(this + 13);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = *(this + 14);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = *(this + 15);
    if (v9)
    {
      v10 = *(*v9 + 8);

      v10();
    }
  }
}

uint64_t drawing::Command::Clear(drawing::Command *this)
{
  v2 = *(this + 8);
  if ((v2 & 0xEF) != 0)
  {
    if (v2)
    {
      v3 = *(this + 5);
      if (v3)
      {
        *(v3 + 48) = 0;
        *(v3 + 40) = 0;
        *(v3 + 32) = 0;
        if (*(v3 + 31) < 0)
        {
          **(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        else
        {
          *(v3 + 8) = 0;
          *(v3 + 31) = 0;
        }
      }
    }

    *(this + 32) = 0;
    if ((*(this + 32) & 4) != 0)
    {
      v4 = *(this + 6);
      if (v4)
      {
        *(v4 + 40) = 0;
        *(v4 + 48) = 0;
        *(v4 + 32) = 0;
        if (*(v4 + 31) < 0)
        {
          **(v4 + 8) = 0;
          *(v4 + 16) = 0;
        }

        else
        {
          *(v4 + 8) = 0;
          *(v4 + 31) = 0;
        }
      }
    }

    if ((*(this + 32) & 8) != 0)
    {
      v5 = *(this + 7);
      if (v5)
      {
        if ((*(v5 + 32) & 0x7F) != 0)
        {
          *(v5 + 40) = 0;
          *(v5 + 48) = 0;
          *(v5 + 64) = 0;
          *(v5 + 56) = 0;
        }

        *(v5 + 32) = 0;
        if (*(v5 + 31) < 0)
        {
          **(v5 + 8) = 0;
          *(v5 + 16) = 0;
        }

        else
        {
          *(v5 + 8) = 0;
          *(v5 + 31) = 0;
        }
      }
    }

    if ((*(this + 32) & 0x20) != 0)
    {
      v6 = *(this + 11);
      if (v6)
      {
        *(v6 + 48) = 0;
        *(v6 + 40) = 0;
        *(v6 + 32) = 0;
        if (*(v6 + 31) < 0)
        {
          **(v6 + 8) = 0;
          *(v6 + 16) = 0;
        }

        else
        {
          *(v6 + 8) = 0;
          *(v6 + 31) = 0;
        }
      }
    }

    if ((*(this + 32) & 0x40) != 0)
    {
      v7 = *(this + 12);
      if (v7)
      {
        *(v7 + 40) = 0;
        *(v7 + 48) = 0;
        *(v7 + 32) = 0;
        if (*(v7 + 31) < 0)
        {
          **(v7 + 8) = 0;
          *(v7 + 16) = 0;
        }

        else
        {
          *(v7 + 8) = 0;
          *(v7 + 31) = 0;
        }
      }
    }

    if ((*(this + 32) & 0x80) != 0)
    {
      v8 = *(this + 13);
      if (v8)
      {
        if ((*(v8 + 32) & 0x7F) != 0)
        {
          *(v8 + 40) = 0;
          *(v8 + 48) = 0;
          *(v8 + 64) = 0;
          *(v8 + 56) = 0;
        }

        *(v8 + 32) = 0;
        if (*(v8 + 31) < 0)
        {
          **(v8 + 8) = 0;
          *(v8 + 16) = 0;
        }

        else
        {
          *(v8 + 8) = 0;
          *(v8 + 31) = 0;
        }
      }
    }
  }

  v9 = *(this + 8);
  if ((v9 & 0x300) != 0)
  {
    if ((v9 & 0x100) != 0)
    {
      v10 = *(this + 14);
      if (v10)
      {
        if ((*(v10 + 32) & 0x7F) != 0)
        {
          *(v10 + 40) = 0;
          *(v10 + 48) = 0;
          *(v10 + 64) = 0;
          *(v10 + 56) = 0;
        }

        *(v10 + 32) = 0;
        if (*(v10 + 31) < 0)
        {
          **(v10 + 8) = 0;
          *(v10 + 16) = 0;
        }

        else
        {
          *(v10 + 8) = 0;
          *(v10 + 31) = 0;
        }
      }
    }

    if ((*(this + 33) & 2) != 0)
    {
      v11 = *(this + 15);
      if (v11)
      {
        *(v11 + 48) = 0;
        *(v11 + 40) = 0;
        *(v11 + 32) = 0;
        if (*(v11 + 31) < 0)
        {
          **(v11 + 8) = 0;
          *(v11 + 16) = 0;
        }

        else
        {
          *(v11 + 8) = 0;
          *(v11 + 31) = 0;
        }
      }
    }
  }

  result = google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 64);
  *(this + 8) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 1) = 0;
    *(this + 2) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return result;
}

uint64_t drawing::CommandID::Clear(uint64_t this)
{
  *(this + 48) = 0;
  *(this + 40) = 0;
  *(this + 32) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 8) = 0;
    *(this + 16) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return this;
}

uint64_t drawing::Color::Clear(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 32) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 8) = 0;
    *(this + 16) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return this;
}

uint64_t drawing::Point::Clear(uint64_t this)
{
  if ((*(this + 32) & 0x7F) != 0)
  {
    *(this + 40) = 0;
    *(this + 48) = 0;
    *(this + 64) = 0;
    *(this + 56) = 0;
  }

  *(this + 32) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 8) = 0;
    *(this + 16) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return this;
}

uint64_t drawing::Parameters::Clear(uint64_t this)
{
  *(this + 48) = 0;
  *(this + 40) = 0;
  *(this + 32) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 8) = 0;
    *(this + 16) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return this;
}

uint64_t drawing::Command::MergePartialFromCodedStream(drawing::Command *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v94, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v93, v94);
  do
  {
    while (1)
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
        {
          TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
          if ((v7 & 0x100000000) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          *(a2 + 8) = v6;
          *(a2 + 1) = v5 + 1;
          v7 = v6 | 0x100000000;
        }

        v10 = v7 >> 3;
        if (v7 >> 3 > 5)
        {
          break;
        }

        if (v7 >> 3 <= 2)
        {
          if (v10 != 1)
          {
            if (v10 != 2)
            {
              goto LABEL_6;
            }

            if (v7 != 16)
            {
              goto LABEL_48;
            }

            v12 = *(a2 + 1);
            v11 = *(a2 + 2);
            goto LABEL_61;
          }

          if (v7 != 10)
          {
            goto LABEL_48;
          }

          *(this + 8) |= 1u;
          v13 = *(this + 5);
          if (!v13)
          {
            operator new();
          }

          v95 = 0;
          v14 = *(a2 + 1);
          if (v14 >= *(a2 + 2) || *v14 < 0)
          {
            if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v95))
            {
              goto LABEL_186;
            }
          }

          else
          {
            v95 = *v14;
            *(a2 + 1) = v14 + 1;
          }

          v16 = *(a2 + 14);
          v17 = *(a2 + 15);
          *(a2 + 14) = v16 + 1;
          if (v16 >= v17)
          {
            goto LABEL_186;
          }

          v18 = google::protobuf::io::CodedInputStream::PushLimit(a2, v95);
          if (!drawing::CommandID::MergePartialFromCodedStream(v13, a2) || *(a2 + 36) != 1)
          {
            goto LABEL_186;
          }

          google::protobuf::io::CodedInputStream::PopLimit(a2, v18);
          v19 = *(a2 + 14);
          v20 = __OFSUB__(v19, 1);
          v21 = v19 - 1;
          if (v21 < 0 == v20)
          {
            *(a2 + 14) = v21;
          }

          v22 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v22 < v11 && *v22 == 16)
          {
            v12 = v22 + 1;
            *(a2 + 1) = v12;
LABEL_61:
            if (v12 >= v11 || (v23 = *v12, v23 < 0))
            {
              if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 32))
              {
                goto LABEL_186;
              }

              v24 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              *(this + 32) = v23;
              v24 = v12 + 1;
              *(a2 + 1) = v24;
            }

            v15 = *(this + 8) | 2;
            *(this + 8) = v15;
            if (v24 < v11 && *v24 == 26)
            {
              *(a2 + 1) = v24 + 1;
LABEL_69:
              *(this + 8) = v15 | 4;
              v25 = *(this + 6);
              if (!v25)
              {
                operator new();
              }

              v95 = 0;
              v26 = *(a2 + 1);
              if (v26 >= *(a2 + 2) || *v26 < 0)
              {
                if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v95))
                {
                  goto LABEL_186;
                }
              }

              else
              {
                v95 = *v26;
                *(a2 + 1) = v26 + 1;
              }

              v27 = *(a2 + 14);
              v28 = *(a2 + 15);
              *(a2 + 14) = v27 + 1;
              if (v27 >= v28)
              {
                goto LABEL_186;
              }

              v29 = google::protobuf::io::CodedInputStream::PushLimit(a2, v95);
              if (!drawing::Color::MergePartialFromCodedStream(v25, a2) || *(a2 + 36) != 1)
              {
                goto LABEL_186;
              }

              google::protobuf::io::CodedInputStream::PopLimit(a2, v29);
              v30 = *(a2 + 14);
              v20 = __OFSUB__(v30, 1);
              v31 = v30 - 1;
              if (v31 < 0 == v20)
              {
                *(a2 + 14) = v31;
              }

              v32 = *(a2 + 1);
              if (v32 < *(a2 + 2) && *v32 == 34)
              {
                *(a2 + 1) = v32 + 1;
                goto LABEL_83;
              }
            }
          }
        }

        else
        {
          switch(v10)
          {
            case 3u:
              if (v7 != 26)
              {
                goto LABEL_48;
              }

              v15 = *(this + 8);
              goto LABEL_69;
            case 4u:
              if (v7 != 34)
              {
                goto LABEL_48;
              }

LABEL_83:
              *(this + 8) |= 8u;
              v33 = *(this + 7);
              if (!v33)
              {
                operator new();
              }

              v95 = 0;
              v34 = *(a2 + 1);
              if (v34 >= *(a2 + 2) || *v34 < 0)
              {
                if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v95))
                {
                  goto LABEL_186;
                }
              }

              else
              {
                v95 = *v34;
                *(a2 + 1) = v34 + 1;
              }

              v35 = *(a2 + 14);
              v36 = *(a2 + 15);
              *(a2 + 14) = v35 + 1;
              if (v35 >= v36)
              {
                goto LABEL_186;
              }

              v37 = google::protobuf::io::CodedInputStream::PushLimit(a2, v95);
              if (!drawing::Point::MergePartialFromCodedStream(v33, a2) || *(a2 + 36) != 1)
              {
                goto LABEL_186;
              }

              google::protobuf::io::CodedInputStream::PopLimit(a2, v37);
              v38 = *(a2 + 14);
              v20 = __OFSUB__(v38, 1);
              v39 = v38 - 1;
              if (v39 < 0 == v20)
              {
                *(a2 + 14) = v39;
              }

              v40 = *(a2 + 1);
              if (v40 < *(a2 + 2) && *v40 == 42)
              {
                while (2)
                {
                  *(a2 + 1) = v40 + 1;
LABEL_97:
                  v41 = *(this + 19);
                  v42 = *(this + 18);
                  if (v42 >= v41)
                  {
                    if (v41 == *(this + 20))
                    {
                      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 64, v41 + 1);
                    }

                    operator new();
                  }

                  v43 = *(this + 8);
                  *(this + 18) = v42 + 1;
                  v44 = *(v43 + 8 * v42);
                  v95 = 0;
                  v45 = *(a2 + 1);
                  if (v45 >= *(a2 + 2) || *v45 < 0)
                  {
                    if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v95))
                    {
                      goto LABEL_186;
                    }
                  }

                  else
                  {
                    v95 = *v45;
                    *(a2 + 1) = v45 + 1;
                  }

                  v46 = *(a2 + 14);
                  v47 = *(a2 + 15);
                  *(a2 + 14) = v46 + 1;
                  if (v46 >= v47 || (v48 = google::protobuf::io::CodedInputStream::PushLimit(a2, v95), !drawing::Point::MergePartialFromCodedStream(v44, a2)) || *(a2 + 36) != 1)
                  {
LABEL_186:
                    v91 = 0;
                    goto LABEL_188;
                  }

                  google::protobuf::io::CodedInputStream::PopLimit(a2, v48);
                  v49 = *(a2 + 14);
                  v20 = __OFSUB__(v49, 1);
                  v50 = v49 - 1;
                  if (v50 < 0 == v20)
                  {
                    *(a2 + 14) = v50;
                  }

                  v40 = *(a2 + 1);
                  if (v40 < *(a2 + 2))
                  {
                    v51 = *v40;
                    if (v51 == 42)
                    {
                      continue;
                    }

                    if (v51 == 50)
                    {
                      *(a2 + 1) = v40 + 1;
LABEL_115:
                      *(this + 8) |= 0x20u;
                      v52 = *(this + 11);
                      if (!v52)
                      {
                        operator new();
                      }

                      v95 = 0;
                      v53 = *(a2 + 1);
                      if (v53 >= *(a2 + 2) || *v53 < 0)
                      {
                        if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v95))
                        {
                          goto LABEL_186;
                        }
                      }

                      else
                      {
                        v95 = *v53;
                        *(a2 + 1) = v53 + 1;
                      }

                      v54 = *(a2 + 14);
                      v55 = *(a2 + 15);
                      *(a2 + 14) = v54 + 1;
                      if (v54 >= v55)
                      {
                        goto LABEL_186;
                      }

                      v56 = google::protobuf::io::CodedInputStream::PushLimit(a2, v95);
                      if (!drawing::CommandID::MergePartialFromCodedStream(v52, a2) || *(a2 + 36) != 1)
                      {
                        goto LABEL_186;
                      }

                      google::protobuf::io::CodedInputStream::PopLimit(a2, v56);
                      v57 = *(a2 + 14);
                      v20 = __OFSUB__(v57, 1);
                      v58 = v57 - 1;
                      if (v58 < 0 == v20)
                      {
                        *(a2 + 14) = v58;
                      }

                      v59 = *(a2 + 1);
                      if (v59 < *(a2 + 2) && *v59 == 58)
                      {
                        *(a2 + 1) = v59 + 1;
LABEL_129:
                        *(this + 8) |= 0x40u;
                        v60 = *(this + 12);
                        if (!v60)
                        {
                          operator new();
                        }

                        v95 = 0;
                        v61 = *(a2 + 1);
                        if (v61 >= *(a2 + 2) || *v61 < 0)
                        {
                          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v95))
                          {
                            goto LABEL_186;
                          }
                        }

                        else
                        {
                          v95 = *v61;
                          *(a2 + 1) = v61 + 1;
                        }

                        v62 = *(a2 + 14);
                        v63 = *(a2 + 15);
                        *(a2 + 14) = v62 + 1;
                        if (v62 >= v63)
                        {
                          goto LABEL_186;
                        }

                        v64 = google::protobuf::io::CodedInputStream::PushLimit(a2, v95);
                        if (!drawing::Rectangle::MergePartialFromCodedStream(v60, a2) || *(a2 + 36) != 1)
                        {
                          goto LABEL_186;
                        }

                        google::protobuf::io::CodedInputStream::PopLimit(a2, v64);
                        v65 = *(a2 + 14);
                        v20 = __OFSUB__(v65, 1);
                        v66 = v65 - 1;
                        if (v66 < 0 == v20)
                        {
                          *(a2 + 14) = v66;
                        }

                        v67 = *(a2 + 1);
                        if (v67 < *(a2 + 2) && *v67 == 66)
                        {
                          *(a2 + 1) = v67 + 1;
LABEL_143:
                          *(this + 8) |= 0x80u;
                          v68 = *(this + 13);
                          if (!v68)
                          {
                            operator new();
                          }

                          v95 = 0;
                          v69 = *(a2 + 1);
                          if (v69 >= *(a2 + 2) || *v69 < 0)
                          {
                            if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v95))
                            {
                              goto LABEL_186;
                            }
                          }

                          else
                          {
                            v95 = *v69;
                            *(a2 + 1) = v69 + 1;
                          }

                          v70 = *(a2 + 14);
                          v71 = *(a2 + 15);
                          *(a2 + 14) = v70 + 1;
                          if (v70 >= v71)
                          {
                            goto LABEL_186;
                          }

                          v72 = google::protobuf::io::CodedInputStream::PushLimit(a2, v95);
                          if (!drawing::Point::MergePartialFromCodedStream(v68, a2) || *(a2 + 36) != 1)
                          {
                            goto LABEL_186;
                          }

                          google::protobuf::io::CodedInputStream::PopLimit(a2, v72);
                          v73 = *(a2 + 14);
                          v20 = __OFSUB__(v73, 1);
                          v74 = v73 - 1;
                          if (v74 < 0 == v20)
                          {
                            *(a2 + 14) = v74;
                          }

                          v75 = *(a2 + 1);
                          if (v75 < *(a2 + 2) && *v75 == 74)
                          {
                            *(a2 + 1) = v75 + 1;
                            goto LABEL_157;
                          }
                        }
                      }
                    }
                  }

                  break;
                }
              }

              break;
            case 5u:
              if (v7 == 42)
              {
                goto LABEL_97;
              }

              goto LABEL_48;
            default:
LABEL_6:
              if (v7)
              {
                v9 = (v7 & 7) == 4;
              }

              else
              {
                v9 = 1;
              }

              if (v9)
              {
LABEL_187:
                v91 = 1;
                goto LABEL_188;
              }

LABEL_50:
              if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v93, v4))
              {
                goto LABEL_186;
              }

              break;
          }
        }
      }

      if (v7 >> 3 <= 7)
      {
        if (v10 == 6)
        {
          if (v7 == 50)
          {
            goto LABEL_115;
          }
        }

        else
        {
          if (v10 != 7)
          {
            goto LABEL_6;
          }

          if (v7 == 58)
          {
            goto LABEL_129;
          }
        }

LABEL_48:
        if (!v7 || (v7 & 7) == 4)
        {
          goto LABEL_187;
        }

        goto LABEL_50;
      }

      if (v10 == 8)
      {
        if (v7 == 66)
        {
          goto LABEL_143;
        }

        goto LABEL_48;
      }

      if (v10 != 9)
      {
        break;
      }

      if (v7 != 74)
      {
        goto LABEL_48;
      }

LABEL_157:
      *(this + 8) |= 0x100u;
      v76 = *(this + 14);
      if (!v76)
      {
        operator new();
      }

      v95 = 0;
      v77 = *(a2 + 1);
      if (v77 >= *(a2 + 2) || *v77 < 0)
      {
        if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v95))
        {
          goto LABEL_186;
        }
      }

      else
      {
        v95 = *v77;
        *(a2 + 1) = v77 + 1;
      }

      v78 = *(a2 + 14);
      v79 = *(a2 + 15);
      *(a2 + 14) = v78 + 1;
      if (v78 >= v79)
      {
        goto LABEL_186;
      }

      v80 = google::protobuf::io::CodedInputStream::PushLimit(a2, v95);
      if (!drawing::Point::MergePartialFromCodedStream(v76, a2) || *(a2 + 36) != 1)
      {
        goto LABEL_186;
      }

      google::protobuf::io::CodedInputStream::PopLimit(a2, v80);
      v81 = *(a2 + 14);
      v20 = __OFSUB__(v81, 1);
      v82 = v81 - 1;
      if (v82 < 0 == v20)
      {
        *(a2 + 14) = v82;
      }

      v83 = *(a2 + 1);
      if (v83 < *(a2 + 2) && *v83 == 82)
      {
        *(a2 + 1) = v83 + 1;
        goto LABEL_171;
      }
    }

    if (v10 != 10)
    {
      goto LABEL_6;
    }

    if (v7 != 82)
    {
      goto LABEL_48;
    }

LABEL_171:
    *(this + 8) |= 0x200u;
    v84 = *(this + 15);
    if (!v84)
    {
      operator new();
    }

    v95 = 0;
    v85 = *(a2 + 1);
    if (v85 >= *(a2 + 2) || *v85 < 0)
    {
      if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v95))
      {
        goto LABEL_186;
      }
    }

    else
    {
      v95 = *v85;
      *(a2 + 1) = v85 + 1;
    }

    v86 = *(a2 + 14);
    v87 = *(a2 + 15);
    *(a2 + 14) = v86 + 1;
    if (v86 >= v87)
    {
      goto LABEL_186;
    }

    v88 = google::protobuf::io::CodedInputStream::PushLimit(a2, v95);
    if (!drawing::Parameters::MergePartialFromCodedStream(v84, a2) || *(a2 + 36) != 1)
    {
      goto LABEL_186;
    }

    google::protobuf::io::CodedInputStream::PopLimit(a2, v88);
    v89 = *(a2 + 14);
    v20 = __OFSUB__(v89, 1);
    v90 = v89 - 1;
    if (v90 < 0 == v20)
    {
      *(a2 + 14) = v90;
    }
  }

  while (*(a2 + 1) != *(a2 + 2) || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10));
  *(a2 + 8) = 0;
  v91 = 1;
  *(a2 + 36) = 1;
LABEL_188:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v93);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v94);
  return v91;
}

void sub_214DB0130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t drawing::Command::SerializeWithCachedSizes(drawing::Command *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 8);
  if (v6)
  {
    v7 = *(this + 5);
    if (!v7)
    {
      drawing::protobuf_AddDesc_drawing_2eproto(this);
      v7 = *(drawing::Command::default_instance_ + 40);
    }

    this = google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2);
    v6 = *(v5 + 8);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 32), a2, a4);
  v6 = *(v5 + 8);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

LABEL_10:
  v8 = *(v5 + 6);
  if (!v8)
  {
    drawing::protobuf_AddDesc_drawing_2eproto(this);
    v8 = *(drawing::Command::default_instance_ + 48);
  }

  this = google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2);
  if ((*(v5 + 8) & 8) != 0)
  {
LABEL_13:
    v9 = *(v5 + 7);
    if (!v9)
    {
      drawing::protobuf_AddDesc_drawing_2eproto(this);
      v9 = *(drawing::Command::default_instance_ + 56);
    }

    this = google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2);
  }

LABEL_16:
  if (*(v5 + 18) >= 1)
  {
    v10 = 0;
    do
    {
      v11 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<drawing::Point>::TypeHandler>(v5 + 64, v10);
      this = google::protobuf::internal::WireFormatLite::WriteMessage(5, v11, a2);
      ++v10;
    }

    while (v10 < *(v5 + 18));
  }

  v12 = *(v5 + 8);
  if ((v12 & 0x20) != 0)
  {
    v13 = *(v5 + 11);
    if (!v13)
    {
      drawing::protobuf_AddDesc_drawing_2eproto(this);
      v13 = *(drawing::Command::default_instance_ + 88);
    }

    this = google::protobuf::internal::WireFormatLite::WriteMessage(6, v13, a2);
    v12 = *(v5 + 8);
    if ((v12 & 0x40) == 0)
    {
LABEL_21:
      if ((v12 & 0x80) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_31;
    }
  }

  else if ((v12 & 0x40) == 0)
  {
    goto LABEL_21;
  }

  v14 = *(v5 + 12);
  if (!v14)
  {
    drawing::protobuf_AddDesc_drawing_2eproto(this);
    v14 = *(drawing::Command::default_instance_ + 96);
  }

  this = google::protobuf::internal::WireFormatLite::WriteMessage(7, v14, a2);
  v12 = *(v5 + 8);
  if ((v12 & 0x80) == 0)
  {
LABEL_22:
    if ((v12 & 0x100) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_34;
  }

LABEL_31:
  v15 = *(v5 + 13);
  if (!v15)
  {
    drawing::protobuf_AddDesc_drawing_2eproto(this);
    v15 = *(drawing::Command::default_instance_ + 104);
  }

  this = google::protobuf::internal::WireFormatLite::WriteMessage(8, v15, a2);
  v12 = *(v5 + 8);
  if ((v12 & 0x100) == 0)
  {
LABEL_23:
    if ((v12 & 0x200) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

LABEL_34:
  v16 = *(v5 + 14);
  if (!v16)
  {
    drawing::protobuf_AddDesc_drawing_2eproto(this);
    v16 = *(drawing::Command::default_instance_ + 112);
  }

  this = google::protobuf::internal::WireFormatLite::WriteMessage(9, v16, a2);
  if ((*(v5 + 8) & 0x200) != 0)
  {
LABEL_37:
    v17 = *(v5 + 15);
    if (!v17)
    {
      drawing::protobuf_AddDesc_drawing_2eproto(this);
      v17 = *(drawing::Command::default_instance_ + 120);
    }

    google::protobuf::internal::WireFormatLite::WriteMessage(10, v17, a2);
  }

LABEL_40:
  v18 = *(v5 + 31);
  if (v18 < 0)
  {
    v19 = *(v5 + 1);
    v18 = *(v5 + 2);
  }

  else
  {
    v19 = v5 + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v19, v18);
}

uint64_t drawing::Command::ByteSize(drawing::Command *this)
{
  v2 = *(this + 8);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_52;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v4 = *(this + 5);
  if (!v4)
  {
    drawing::protobuf_AddDesc_drawing_2eproto(0);
    v4 = *(drawing::Command::default_instance_ + 40);
  }

  v5 = drawing::CommandID::ByteSize(v4);
  v6 = v5;
  if (v5 >= 0x80)
  {
    v7 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
  }

  else
  {
    v7 = 1;
  }

  v3 = v6 + v7 + 1;
  v2 = *(this + 8);
  if ((v2 & 2) != 0)
  {
LABEL_12:
    v8 = *(this + 32);
    if (v8 >= 0x80)
    {
      v9 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v2 = *(this + 8);
    }

    else
    {
      v9 = 2;
    }

    v3 += v9;
  }

LABEL_16:
  if ((v2 & 4) != 0)
  {
    v10 = *(this + 6);
    if (!v10)
    {
      drawing::protobuf_AddDesc_drawing_2eproto(0);
      v10 = *(drawing::Command::default_instance_ + 48);
    }

    v11 = drawing::Color::ByteSize(v10);
    v12 = v11;
    if (v11 >= 0x80)
    {
      v13 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
    }

    else
    {
      v13 = 1;
    }

    v3 += v12 + v13 + 1;
    v2 = *(this + 8);
    if ((v2 & 8) == 0)
    {
LABEL_18:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_34;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_18;
  }

  v14 = *(this + 7);
  if (!v14)
  {
    drawing::protobuf_AddDesc_drawing_2eproto(0);
    v14 = *(drawing::Command::default_instance_ + 56);
  }

  v15 = drawing::Point::ByteSize(v14);
  v16 = v15;
  if (v15 >= 0x80)
  {
    v17 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
  }

  else
  {
    v17 = 1;
  }

  v3 += v16 + v17 + 1;
  v2 = *(this + 8);
  if ((v2 & 0x20) == 0)
  {
LABEL_19:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_34:
  v18 = *(this + 11);
  if (!v18)
  {
    drawing::protobuf_AddDesc_drawing_2eproto(0);
    v18 = *(drawing::Command::default_instance_ + 88);
  }

  v19 = drawing::CommandID::ByteSize(v18);
  v20 = v19;
  if (v19 >= 0x80)
  {
    v21 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
  }

  else
  {
    v21 = 1;
  }

  v3 += v20 + v21 + 1;
  v2 = *(this + 8);
  if ((v2 & 0x40) == 0)
  {
LABEL_20:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_46;
  }

LABEL_40:
  v22 = *(this + 12);
  if (!v22)
  {
    drawing::protobuf_AddDesc_drawing_2eproto(0);
    v22 = *(drawing::Command::default_instance_ + 96);
  }

  v23 = drawing::Rectangle::ByteSize(v22);
  v24 = v23;
  if (v23 >= 0x80)
  {
    v25 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23);
  }

  else
  {
    v25 = 1;
  }

  v3 += v24 + v25 + 1;
  v2 = *(this + 8);
  if ((v2 & 0x80) != 0)
  {
LABEL_46:
    v26 = *(this + 13);
    if (!v26)
    {
      drawing::protobuf_AddDesc_drawing_2eproto(0);
      v26 = *(drawing::Command::default_instance_ + 104);
    }

    v27 = drawing::Point::ByteSize(v26);
    v28 = v27;
    if (v27 >= 0x80)
    {
      v29 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27);
    }

    else
    {
      v29 = 1;
    }

    v3 += v28 + v29 + 1;
    v2 = *(this + 8);
  }

LABEL_52:
  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v30 = *(this + 14);
      if (!v30)
      {
        drawing::protobuf_AddDesc_drawing_2eproto(0);
        v30 = *(drawing::Command::default_instance_ + 112);
      }

      v31 = drawing::Point::ByteSize(v30);
      v32 = v31;
      if (v31 >= 0x80)
      {
        v33 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31);
      }

      else
      {
        v33 = 1;
      }

      v3 += v32 + v33 + 1;
      v2 = *(this + 8);
    }

    if ((v2 & 0x200) != 0)
    {
      v34 = *(this + 15);
      if (!v34)
      {
        drawing::protobuf_AddDesc_drawing_2eproto(0);
        v34 = *(drawing::Command::default_instance_ + 120);
      }

      v35 = drawing::Parameters::ByteSize(v34);
      v36 = v35;
      if (v35 >= 0x80)
      {
        v37 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35);
      }

      else
      {
        v37 = 1;
      }

      v3 += v36 + v37 + 1;
    }
  }

  v38 = *(this + 18);
  v39 = v38 + v3;
  if (v38 >= 1)
  {
    v40 = 0;
    do
    {
      v41 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<drawing::Point>::TypeHandler>(this + 64, v40);
      v42 = drawing::Point::ByteSize(v41);
      v43 = v42;
      if (v42 >= 0x80)
      {
        v44 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42);
      }

      else
      {
        v44 = 1;
      }

      v39 += v43 + v44;
      ++v40;
    }

    while (v40 < *(this + 18));
  }

  v45 = *(this + 31);
  if (v45 < 0)
  {
    v45 = *(this + 2);
  }

  result = (v39 + v45);
  *(this + 9) = result;
  return result;
}

std::string *drawing::Command::CheckTypeAndMergeFrom(drawing::Command *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return drawing::Command::MergeFrom(this, lpsrc);
}

std::string *drawing::CommandID::MergeFrom(drawing::CommandID *this, const drawing::CommandID *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/drawing.pb.cc", 1257);
    v4 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v16, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v14 = *(a2 + 10);
      *(this + 8) |= 1u;
      *(this + 10) = v14;
      v5 = *(a2 + 8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v15 = *(a2 + 11);
    *(this + 8) |= 2u;
    *(this + 11) = v15;
    if ((*(a2 + 8) & 4) != 0)
    {
LABEL_7:
      v6 = *(a2 + 12);
      *(this + 8) |= 4u;
      *(this + 12) = v6;
    }
  }

LABEL_8:
  v9 = *(a2 + 1);
  v8 = a2 + 8;
  v7 = v9;
  v10 = v8[23];
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = v8[23];
  }

  else
  {
    v12 = *(v8 + 1);
  }

  return std::string::append((this + 8), v11, v12);
}

void sub_214DB0854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *drawing::Color::MergeFrom(drawing::Color *this, const drawing::Color *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/drawing.pb.cc", 2205);
    v4 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v17, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (!v5)
  {
    goto LABEL_9;
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_17:
    v15 = *(a2 + 11);
    *(this + 8) |= 2u;
    *(this + 11) = v15;
    v5 = *(a2 + 8);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    goto LABEL_18;
  }

  v14 = *(a2 + 10);
  *(this + 8) |= 1u;
  *(this + 10) = v14;
  v5 = *(a2 + 8);
  if ((v5 & 2) != 0)
  {
    goto LABEL_17;
  }

LABEL_6:
  if ((v5 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_18:
  v16 = *(a2 + 12);
  *(this + 8) |= 4u;
  *(this + 12) = v16;
  if ((*(a2 + 8) & 8) != 0)
  {
LABEL_8:
    v6 = *(a2 + 13);
    *(this + 8) |= 8u;
    *(this + 13) = v6;
  }

LABEL_9:
  v9 = *(a2 + 1);
  v8 = a2 + 8;
  v7 = v9;
  v10 = v8[23];
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = v8[23];
  }

  else
  {
    v12 = *(v8 + 1);
  }

  return std::string::append((this + 8), v11, v12);
}

void sub_214DB0984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *drawing::Point::MergeFrom(drawing::Point *this, const drawing::Point *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v21, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/drawing.pb.cc", 1632);
    v4 = google::protobuf::internal::LogMessage::operator<<(v21, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v20, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v21[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (!v5)
  {
    goto LABEL_12;
  }

  if (*(a2 + 32))
  {
    v14 = *(a2 + 10);
    *(this + 8) |= 1u;
    *(this + 10) = v14;
    v5 = *(a2 + 8);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }
  }

  else if ((*(a2 + 32) & 2) == 0)
  {
    goto LABEL_6;
  }

  v15 = *(a2 + 11);
  *(this + 8) |= 2u;
  *(this + 11) = v15;
  v5 = *(a2 + 8);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v16 = *(a2 + 12);
  *(this + 8) |= 4u;
  *(this + 12) = v16;
  v5 = *(a2 + 8);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_23:
    v18 = *(a2 + 14);
    *(this + 8) |= 0x10u;
    *(this + 14) = v18;
    v5 = *(a2 + 8);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_22:
  v17 = *(a2 + 13);
  *(this + 8) |= 8u;
  *(this + 13) = v17;
  v5 = *(a2 + 8);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_23;
  }

LABEL_9:
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_10;
  }

LABEL_24:
  v19 = *(a2 + 15);
  *(this + 8) |= 0x20u;
  *(this + 15) = v19;
  if ((*(a2 + 8) & 0x40) != 0)
  {
LABEL_11:
    v6 = *(a2 + 16);
    *(this + 8) |= 0x40u;
    *(this + 16) = v6;
  }

LABEL_12:
  v9 = *(a2 + 1);
  v8 = a2 + 8;
  v7 = v9;
  v10 = v8[23];
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = v8[23];
  }

  else
  {
    v12 = *(v8 + 1);
  }

  return std::string::append((this + 8), v11, v12);
}

void sub_214DB0B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *drawing::Parameters::MergeFrom(drawing::Parameters *this, const drawing::Parameters *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/drawing.pb.cc", 1913);
    v4 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v16, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v14 = *(a2 + 10);
      *(this + 8) |= 1u;
      *(this + 10) = v14;
      v5 = *(a2 + 8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v15 = *(a2 + 11);
    *(this + 8) |= 2u;
    *(this + 11) = v15;
    if ((*(a2 + 8) & 4) != 0)
    {
LABEL_7:
      v6 = *(a2 + 12);
      *(this + 8) |= 4u;
      *(this + 12) = v6;
    }
  }

LABEL_8:
  v9 = *(a2 + 1);
  v8 = a2 + 8;
  v7 = v9;
  v10 = v8[23];
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = v8[23];
  }

  else
  {
    v12 = *(v8 + 1);
  }

  return std::string::append((this + 8), v11, v12);
}

void sub_214DB0C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void drawing::CommandID::~CommandID(void **this)
{
  *this = &unk_28270A018;
  drawing::protobuf_AddDesc_drawing_2eproto(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  drawing::CommandID::~CommandID(this);

  JUMPOUT(0x216063B80);
}

uint64_t drawing::CommandID::MergePartialFromCodedStream(drawing::CommandID *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v24, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v23, v24);
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_13;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      v9 = v7 >> 3;
      if (v7 >> 3 == 3)
      {
        break;
      }

      if (v9 == 2)
      {
        if (v7 == 16)
        {
          v15 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_32;
        }

LABEL_22:
        if (!v7 || (v7 & 7) == 4)
        {
          goto LABEL_49;
        }

        goto LABEL_24;
      }

      if (v9 == 1)
      {
        if (v7 != 8)
        {
          goto LABEL_22;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v11 >= v10 || (v12 = *v11, v12 < 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10))
          {
            goto LABEL_50;
          }

          v13 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 8) |= 1u;
        if (v13 < v10 && *v13 == 16)
        {
          v15 = v13 + 1;
          *(a2 + 1) = v15;
LABEL_32:
          if (v15 >= v10 || (v17 = *v15, v17 < 0))
          {
            if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11))
            {
              goto LABEL_50;
            }

            v18 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 11) = v17;
            v18 = v15 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 8) |= 2u;
          if (v18 < v10 && *v18 == 24)
          {
            v16 = v18 + 1;
            *(a2 + 1) = v16;
            goto LABEL_40;
          }
        }
      }

      else
      {
LABEL_13:
        if (v7)
        {
          v14 = (v7 & 7) == 4;
        }

        else
        {
          v14 = 1;
        }

        if (v14)
        {
LABEL_49:
          v21 = 1;
          goto LABEL_51;
        }

LABEL_24:
        if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v23, v4))
        {
          goto LABEL_50;
        }
      }
    }

    if (v7 != 24)
    {
      goto LABEL_22;
    }

    v16 = *(a2 + 1);
    v10 = *(a2 + 2);
LABEL_40:
    if (v16 < v10)
    {
      v19 = *v16;
      if ((v19 & 0x80000000) == 0)
      {
        *(this + 12) = v19;
        v20 = v16 + 1;
        *(a2 + 1) = v20;
        goto LABEL_45;
      }
    }

    if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12))
    {
      break;
    }

    v20 = *(a2 + 1);
    v10 = *(a2 + 2);
LABEL_45:
    *(this + 8) |= 4u;
    if (v20 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      v21 = 1;
      *(a2 + 36) = 1;
      goto LABEL_51;
    }
  }

LABEL_50:
  v21 = 0;
LABEL_51:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v23);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v24);
  return v21;
}

void sub_214DB0FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t drawing::CommandID::SerializeWithCachedSizes(drawing::CommandID *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = *(this + 8);
  if (v6)
  {
    google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 10), a2, a4);
    v6 = *(this + 8);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(this + 11), a2, a4);
  if ((*(this + 8) & 4) != 0)
  {
LABEL_4:
    google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(this + 12), a2, a4);
  }

LABEL_5:
  v7 = *(this + 31);
  if (v7 < 0)
  {
    v8 = *(this + 1);
    v7 = *(this + 2);
  }

  else
  {
    v8 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v8, v7);
}

uint64_t drawing::CommandID::ByteSize(drawing::CommandID *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_19;
  }

  if (*(this + 32))
  {
    v4 = *(this + 10);
    if (v4 >= 0x80)
    {
      v3 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 8);
      if ((v2 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v5 = *(this + 11);
  if (v5 >= 0x80)
  {
    v6 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 8);
  }

  else
  {
    v6 = 2;
  }

  v3 += v6;
LABEL_14:
  if ((v2 & 4) != 0)
  {
    v7 = *(this + 12);
    if (v7 >= 0x80)
    {
      v8 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    }

    else
    {
      v8 = 2;
    }

    v3 += v8;
  }

LABEL_19:
  v9 = *(this + 31);
  if (v9 < 0)
  {
    v9 = *(this + 2);
  }

  result = (v3 + v9);
  *(this + 9) = result;
  return result;
}

std::string *drawing::CommandID::CheckTypeAndMergeFrom(drawing::CommandID *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return drawing::CommandID::MergeFrom(this, lpsrc);
}

void drawing::Point::~Point(void **this)
{
  *this = &unk_28270A090;
  drawing::protobuf_AddDesc_drawing_2eproto(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  drawing::Point::~Point(this);

  JUMPOUT(0x216063B80);
}

uint64_t drawing::Point::MergePartialFromCodedStream(drawing::Point *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v20, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v19, v20);
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
        {
          TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
          if ((v7 & 0x100000000) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          *(a2 + 8) = v6;
          *(a2 + 1) = v5 + 1;
          v7 = v6 | 0x100000000;
        }

        v10 = v7 >> 3;
        if (v7 >> 3 > 3)
        {
          break;
        }

        switch(v10)
        {
          case 1u:
            if (v7 != 13)
            {
              goto LABEL_37;
            }

            v21 = 0;
            if (!google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21))
            {
              goto LABEL_66;
            }

            *(this + 10) = v21;
            *(this + 8) |= 1u;
            v11 = *(a2 + 1);
            if (v11 < *(a2 + 2) && *v11 == 21)
            {
              *(a2 + 1) = v11 + 1;
LABEL_41:
              v21 = 0;
              if (!google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21))
              {
                goto LABEL_66;
              }

              *(this + 11) = v21;
              *(this + 8) |= 2u;
              v12 = *(a2 + 1);
              if (v12 < *(a2 + 2) && *v12 == 29)
              {
                *(a2 + 1) = v12 + 1;
LABEL_45:
                v21 = 0;
                if (!google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21))
                {
                  goto LABEL_66;
                }

                *(this + 12) = v21;
                *(this + 8) |= 4u;
                v13 = *(a2 + 1);
                if (v13 < *(a2 + 2) && *v13 == 37)
                {
                  *(a2 + 1) = v13 + 1;
                  goto LABEL_49;
                }
              }
            }

            break;
          case 2u:
            if (v7 != 21)
            {
              goto LABEL_37;
            }

            goto LABEL_41;
          case 3u:
            if (v7 == 29)
            {
              goto LABEL_45;
            }

LABEL_37:
            if (!v7 || (v7 & 7) == 4)
            {
              goto LABEL_67;
            }

LABEL_39:
            if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v19, v4))
            {
              goto LABEL_66;
            }

            break;
          default:
            goto LABEL_6;
        }
      }

      if (v7 >> 3 > 5)
      {
        break;
      }

      if (v10 != 4)
      {
        if (v10 != 5)
        {
          goto LABEL_6;
        }

        if (v7 == 45)
        {
          goto LABEL_53;
        }

        goto LABEL_37;
      }

      if (v7 != 37)
      {
        goto LABEL_37;
      }

LABEL_49:
      v21 = 0;
      if (!google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21))
      {
        goto LABEL_66;
      }

      *(this + 13) = v21;
      *(this + 8) |= 8u;
      v14 = *(a2 + 1);
      if (v14 < *(a2 + 2) && *v14 == 45)
      {
        *(a2 + 1) = v14 + 1;
LABEL_53:
        v21 = 0;
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21))
        {
          goto LABEL_66;
        }

        *(this + 14) = v21;
        *(this + 8) |= 0x10u;
        v15 = *(a2 + 1);
        if (v15 < *(a2 + 2) && *v15 == 53)
        {
          *(a2 + 1) = v15 + 1;
LABEL_57:
          v21 = 0;
          if (!google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21))
          {
            goto LABEL_66;
          }

          *(this + 15) = v21;
          *(this + 8) |= 0x20u;
          v16 = *(a2 + 1);
          if (v16 < *(a2 + 2) && *v16 == 61)
          {
            *(a2 + 1) = v16 + 1;
            goto LABEL_61;
          }
        }
      }
    }

    if (v10 == 6)
    {
      if (v7 == 53)
      {
        goto LABEL_57;
      }

      goto LABEL_37;
    }

    if (v10 != 7)
    {
      break;
    }

    if (v7 != 61)
    {
      goto LABEL_37;
    }

LABEL_61:
    v21 = 0;
    if (!google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21))
    {
LABEL_66:
      v17 = 0;
      goto LABEL_68;
    }

    *(this + 16) = v21;
    *(this + 8) |= 0x40u;
    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      v17 = 1;
      *(a2 + 36) = 1;
      goto LABEL_68;
    }
  }

LABEL_6:
  if (v7)
  {
    v9 = (v7 & 7) == 4;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    goto LABEL_39;
  }

LABEL_67:
  v17 = 1;
LABEL_68:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v19);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v20);
  return v17;
}

void sub_214DB1678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t drawing::Point::SerializeWithCachedSizes(drawing::Point *this, google::protobuf::io::CodedOutputStream *a2, google::protobuf::io::CodedOutputStream *a3)
{
  v5 = *(this + 8);
  if (v5)
  {
    google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(this + 10), a3);
    v5 = *(this + 8);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(this + 11), a3);
  v5 = *(this + 8);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(this + 12), a3);
  v5 = *(this + 8);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(this + 13), a3);
  v5 = *(this + 8);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(this + 14), a3);
  v5 = *(this + 8);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_16:
  google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(this + 15), a3);
  if ((*(this + 8) & 0x40) != 0)
  {
LABEL_8:
    google::protobuf::internal::WireFormatLite::WriteFloat(7, a2, *(this + 16), a3);
  }

LABEL_9:
  v6 = *(this + 31);
  if (v6 < 0)
  {
    v7 = *(this + 1);
    v6 = *(this + 2);
  }

  else
  {
    v7 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v7, v6);
}

uint64_t drawing::Point::ByteSize(drawing::Point *this)
{
  v1 = *(this + 32);
  if (*(this + 32))
  {
    v2 = (v1 << 31 >> 31) & 5;
    if ((v1 & 2) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 4) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 8) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 0x10) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 0x20) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 0x40) != 0)
    {
      v1 = v2 + 5;
    }

    else
    {
      v1 = v2;
    }
  }

  v3 = *(this + 31);
  if (v3 < 0)
  {
    v3 = *(this + 2);
  }

  v4 = (v1 + v3);
  *(this + 9) = v4;
  return v4;
}

std::string *drawing::Point::CheckTypeAndMergeFrom(drawing::Point *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return drawing::Point::MergeFrom(this, lpsrc);
}

void drawing::Parameters::~Parameters(void **this)
{
  *this = &unk_28270A108;
  drawing::protobuf_AddDesc_drawing_2eproto(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  drawing::Parameters::~Parameters(this);

  JUMPOUT(0x216063B80);
}

uint64_t drawing::Parameters::MergePartialFromCodedStream(drawing::Parameters *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v16, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v15, v16);
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      v9 = v7 >> 3;
      if (v7 >> 3 != 3)
      {
        break;
      }

      if (v7 != 29)
      {
        goto LABEL_26;
      }

LABEL_30:
      v17 = 0;
      if (!google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v17))
      {
LABEL_35:
        v13 = 0;
        goto LABEL_37;
      }

      *(this + 12) = v17;
      *(this + 8) |= 4u;
      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        v13 = 1;
        *(a2 + 36) = 1;
        goto LABEL_37;
      }
    }

    if (v9 == 2)
    {
      if (v7 == 21)
      {
        goto LABEL_21;
      }

      goto LABEL_26;
    }

    if (v9 != 1)
    {
      break;
    }

    if (v7 == 13)
    {
      v17 = 0;
      if (!google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v17))
      {
        goto LABEL_35;
      }

      *(this + 10) = v17;
      *(this + 8) |= 1u;
      v10 = *(a2 + 1);
      if (v10 < *(a2 + 2) && *v10 == 21)
      {
        *(a2 + 1) = v10 + 1;
LABEL_21:
        v17 = 0;
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v17))
        {
          goto LABEL_35;
        }

        *(this + 11) = v17;
        *(this + 8) |= 2u;
        v12 = *(a2 + 1);
        if (v12 < *(a2 + 2) && *v12 == 29)
        {
          *(a2 + 1) = v12 + 1;
          goto LABEL_30;
        }
      }
    }

    else
    {
LABEL_26:
      if (!v7 || (v7 & 7) == 4)
      {
        goto LABEL_36;
      }

LABEL_28:
      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v15, v4))
      {
        goto LABEL_35;
      }
    }
  }

LABEL_14:
  if (v7)
  {
    v11 = (v7 & 7) == 4;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    goto LABEL_28;
  }

LABEL_36:
  v13 = 1;
LABEL_37:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v15);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v16);
  return v13;
}