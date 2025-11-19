uint64_t sub_1CF880408(void *a1, uint64_t a2, char a3, uint64_t a4, int a5, void *a6, void (*a7)(void, void), uint64_t a8)
{
  v45 = a6;
  v46 = a7;
  v44 = a5;
  v13 = sub_1CF9E6118();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v18 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v19 = a1;
    v20 = sub_1CF9E6108();
    v21 = sub_1CF9E72A8();
    sub_1CF8FDA2C(a1, a2, 1);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v43 = a8;
      v24 = v23;
      *v22 = 138412290;
      swift_getErrorValue();
      v25 = Error.prettyDescription.getter(v47);
      *(v22 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&dword_1CEFC7000, v20, v21, "Unable to get dirstats on wharf: %@", v22, 0xCu);
      sub_1CEFCCC44(v24, &qword_1EC4BE350, &unk_1CF9FC3B0);
      v26 = v24;
      a8 = v43;
      MEMORY[0x1D386CDC0](v26, -1, -1);
      MEMORY[0x1D386CDC0](v22, -1, -1);
    }

    (*(v14 + 8))(v17, v13);
  }

  else
  {
    v27 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    sub_1CF5174A4(2);
    v29 = v28;

    if (v29)
    {
      v30 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    }

    else
    {
      v30 = 0;
      v49 = 0;
      v50 = 0;
    }

    v48 = v29;
    v51 = v30;
    swift_beginAccess();
    sub_1CF1C8750(&v48, 0xD000000000000011, 0x80000001CFA5EC50);
    swift_endAccess();
    v31 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    sub_1CF5174A4(2);
    v33 = v32;

    if (v33)
    {
      v34 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    }

    else
    {
      v34 = 0;
      v49 = 0;
      v50 = 0;
    }

    v48 = v33;
    v51 = v34;
    swift_beginAccess();
    sub_1CF1C8750(&v48, 0xD000000000000012, 0x80000001CFA5EC70);
    swift_endAccess();
  }

  v35 = v45;
  if ((v44 & 1) != 0 && v45)
  {
    v36 = swift_allocObject();
    v37 = v46;
    v36[2] = a4;
    v36[3] = v37;
    v36[4] = a8;
    v38 = v35;

    sub_1CF74F584(sub_1CF8FF0C0, v36);
  }

  else
  {
    swift_beginAccess();
    v40 = *(a4 + 16);

    v46(v41, 0);
  }
}

uint64_t sub_1CF880808(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void), uint64_t a4)
{
  v73 = a4;
  v74 = a3;
  v6 = *a1;
  v7 = sub_1CF9E6118();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 72))
  {
    v12 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v13 = v6;
    v14 = sub_1CF9E6108();
    v15 = sub_1CF9E72A8();
    sub_1CEFCCC44(a1, &qword_1EC4C5068, &qword_1CFA18200);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      swift_getErrorValue();
      v18 = Error.prettyDescription.getter(v75);
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&dword_1CEFC7000, v14, v15, "Unable to get spotlight data: %@", v16, 0xCu);
      sub_1CEFCCC44(v17, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v17, -1, -1);
      MEMORY[0x1D386CDC0](v16, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
  }

  else
  {
    v20 = *(a1 + 24);
    v19 = *(a1 + 32);
    v21 = *(a1 + 48);
    v69 = *(a1 + 40);
    v70 = v21;
    v22 = *(a1 + 64);
    v71 = *(a1 + 56);
    v72 = v22;
    v23 = *(a1 + 16);
    v24 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    sub_1CF5174A4(2);
    v26 = v25;

    if (v26)
    {
      v27 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    }

    else
    {
      v27 = 0;
      v77 = 0;
      v78 = 0;
    }

    v76 = v26;
    v79 = v27;
    swift_beginAccess();
    sub_1CF1C8750(&v76, 0xD00000000000001BLL, 0x80000001CFA5EC90);
    swift_endAccess();
    v28 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    sub_1CF5174A4(2);
    v30 = v29;

    if (v30)
    {
      v31 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    }

    else
    {
      v31 = 0;
      v77 = 0;
      v78 = 0;
    }

    v76 = v30;
    v79 = v31;
    swift_beginAccess();
    v32 = v30;
    sub_1CF1C8750(&v76, 0xD000000000000025, 0x80000001CFA5ECB0);
    swift_endAccess();
    v33 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    sub_1CF5174A4(2);
    v35 = v34;

    if (v35)
    {
      v36 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    }

    else
    {
      v36 = 0;
      v77 = 0;
      v78 = 0;
    }

    v76 = v35;
    v79 = v36;
    swift_beginAccess();
    sub_1CF1C8750(&v76, 0xD000000000000023, 0x80000001CFA5ECE0);
    swift_endAccess();
    v37 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    sub_1CF5174A4(2);
    v39 = v38;
    if (v38)
    {
      v38 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    }

    else
    {
      v77 = 0;
      v78 = 0;
    }

    v76 = v39;
    v79 = v38;
    swift_beginAccess();
    sub_1CF1C8750(&v76, 0xD00000000000002DLL, 0x80000001CFA5ED10);
    swift_endAccess();
    if (v6)
    {
      v40 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      v41 = [v40 initWithLongLong_];
      sub_1CF5174A4(2);
      v43 = v42;

      if (v43)
      {
        v44 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
      }

      else
      {
        v44 = 0;
        v77 = 0;
        v78 = 0;
      }

      v76 = v43;
      v79 = v44;
      swift_beginAccess();
      sub_1CF1C8750(&v76, 0xD000000000000021, 0x80000001CFA5ED40);
      swift_endAccess();
      v50 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      v51 = [v50 initWithLongLong_];
      sub_1CF5174A4(2);
      v53 = v52;

      if (v53)
      {
        v54 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
      }

      else
      {
        v54 = 0;
        v77 = 0;
        v78 = 0;
      }

      v76 = v53;
      v79 = v54;
      swift_beginAccess();
      v55 = v53;
      sub_1CF1C8750(&v76, 0xD00000000000002BLL, 0x80000001CFA5ED70);
      swift_endAccess();
      v56 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      v57 = [v56 initWithLongLong_];
      sub_1CF5174A4(2);
      v59 = v58;

      if (v59)
      {
        v60 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
      }

      else
      {
        v60 = 0;
        v77 = 0;
        v78 = 0;
      }

      v76 = v59;
      v79 = v60;
      swift_beginAccess();
      sub_1CF1C8750(&v76, 0xD000000000000022, 0x80000001CFA5EDA0);
      swift_endAccess();
      v61 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      v62 = [v61 initWithLongLong_];
      sub_1CF5174A4(2);
      v64 = v63;
      if (v63)
      {
        v63 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
      }

      else
      {
        v77 = 0;
        v78 = 0;
      }

      v76 = v64;
      v79 = v63;
      swift_beginAccess();
      sub_1CF1C8750(&v76, 0xD00000000000002CLL, 0x80000001CFA5EDD0);
      swift_endAccess();
    }

    else
    {
      v45 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v46 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
      v79 = v46;
      v76 = v45;
      swift_beginAccess();
      sub_1CF1C8750(&v76, 0xD000000000000021, 0x80000001CFA5ED40);
      swift_endAccess();
      v47 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v79 = v46;
      v76 = v47;
      swift_beginAccess();
      sub_1CF1C8750(&v76, 0xD00000000000002BLL, 0x80000001CFA5ED70);
      swift_endAccess();
      v48 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v79 = v46;
      v76 = v48;
      swift_beginAccess();
      sub_1CF1C8750(&v76, 0xD000000000000022, 0x80000001CFA5EDA0);
      swift_endAccess();
      v49 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v79 = v46;
      v76 = v49;
      swift_beginAccess();
      sub_1CF1C8750(&v76, 0xD00000000000002CLL, 0x80000001CFA5EDD0);
      swift_endAccess();
    }
  }

  swift_beginAccess();
  v65 = *(a2 + 16);

  v74(v66, 0);
}

void sub_1CF881254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_1CF9E6618();
    if (a2)
    {
LABEL_3:
      v6 = sub_1CF9E57E8();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

Swift::String_optional __swiftcall FPDDomainFPFSBackend.providerVersion()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v1 = Strong;
  v2 = [Strong provider];

  if (!v2)
  {
    Strong = 0;
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v3 = [v2 bundleVersion];

  v4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v6 = v5;

  v7 = v6;
  Strong = v4;
LABEL_6:
  result.value._object = v7;
  result.value._countAndFlagsBits = Strong;
  return result;
}

void FPDDomainFPFSBackend.hierarchy(for:request:completionHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_1CF9E5928();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = v4;
  v10[5] = a2;
  v14[4] = sub_1CF8F0F8C;
  v14[5] = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1CEFF9A6C;
  v14[3] = &block_descriptor_281;
  v11 = _Block_copy(v14);

  v12 = v5;
  v13 = a2;

  [v12 itemForURL:v9 options:0 request:v13 completionHandler:v11];

  _Block_release(v11);
}

uint64_t sub_1CF88153C(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, void *a5, void *a6)
{
  if (!a1 || a2)
  {
    return a3(MEMORY[0x1E69E7CC0]);
  }

  type metadata accessor for FPFSOperationServicer();
  swift_allocObject();
  v11 = a1;
  v12 = sub_1CEFD3B18(a5, a6);
  v13 = [v11 itemID];
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  v15 = *(v12 + 16);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1CF8FEDF0;
  *(v16 + 24) = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1CF8FEDF0;
  *(v17 + 24) = v14;
  *(v17 + 32) = v13;
  *(v17 + 40) = 1;
  *(v17 + 48) = v12;
  *(v17 + 56) = 1;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1CF8FEDF8;
  *(v18 + 24) = v16;
  swift_retain_n();

  v19 = v13;

  sub_1CEFD4024("fetchHierarchy(for:recursively:ignoreAlternateContentURL:reply:)", 64, 2, sub_1CF903280, v18, sub_1CF8FEE00, v17);
}

uint64_t sub_1CF881778(unint64_t a1, uint64_t a2, void (*a3)(unint64_t, uint64_t))
{
  sub_1CF7D9384(a1);
  if (v5)
  {
    v6 = sub_1CF8817E8(v5);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  a3(v6, a2);
}

unint64_t sub_1CF8817E8(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = sub_1CF9E7818();
    if (v19)
    {
      v20 = v19;
      v1 = sub_1CF1FDB18(v19, 0);
      sub_1CF1FB0F4(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = MEMORY[0x1E69E7CC0];
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_1CF9E7818();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1D3869C30]();
          v11 = MEMORY[0x1D3869C30](v2 - (v6 - 3), v1);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_1CF067780(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_1CF067780(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

void sub_1CF881C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
  v5 = sub_1CF9E6D28();
  if (a2)
  {
    v6 = sub_1CF9E57E8();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_1CF881CC0(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, char a6)
{
  v10 = [objc_opt_self() defaultStore];
  v11 = [v10 dynamicErrorSampleRatePerProvider];

  v12 = sub_1CF9E6D48();
  v13 = sub_1CF51810C(a4, v12);
  LOBYTE(v11) = v14;

  if (v11)
  {
    goto LABEL_7;
  }

  v15 = sub_1CF518B08(0x64uLL);
  if (__OFADD__(v15, 1))
  {
    __break(1u);
    return;
  }

  if (v13 >= (v15 + 1))
  {
LABEL_7:
    v16 = sub_1CF9E6888();
    [a3 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    if (a2)
    {
      v17 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
      if (swift_dynamicCast())
      {
        v18 = [v21 fp_protectionClassBehindError];
        if (v18)
        {
          v19 = v18;
          [a3 __swift_setObject_forKeyedSubscript_];
          swift_unknownObjectRelease();
        }

        if ((a6 & 1) == 0)
        {
          v20 = sub_1CF9E7628();
          [a3 __swift_setObject_forKeyedSubscript_];

          swift_unknownObjectRelease();
        }
      }
    }
  }

  else
  {

    [a3 removeAllObjects];
  }
}

uint64_t sub_1CF881F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 152) = a1;
  *(v4 + 160) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1CF881FAC, 0, 0);
}

uint64_t sub_1CF881FAC()
{
  v1 = [*(v0 + 160) provider];
  *(v0 + 168) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 160);
    v4 = [v3 nsDomain];
    *(v0 + 176) = v4;
    v5 = [v3 startupError];
    if (v5)
    {
      v6 = v5;
      v7 = sub_1CF9E57E8();
    }

    else
    {
      v7 = 0;
    }

    *(v0 + 184) = v7;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_1CF882194;
    v10 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4ED8, &qword_1CFA18078);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1CF836290;
    *(v0 + 104) = &block_descriptor_2080;
    *(v0 + 112) = v10;
    [v2 reloadDomain:v4 unableToStartup:1 startupError:v7 completionHandler:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    **(v0 + 152) = 0;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1CF882194()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_1CF882318;
  }

  else
  {
    v3 = sub_1CF8822A4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1CF8822A4()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  **(v0 + 152) = *(v0 + 144);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1CF882318()
{
  v1 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  swift_willThrow();

  *v5 = 0;
  v6 = v0[1];

  return v6();
}

id sub_1CF8823B4(uint64_t a1, char *a2, unint64_t a3, char a4, void (*a5)(void), uint64_t a6)
{
  v58 = a6;
  v59 = a5;
  v10 = *&a2[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startupQueue];
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1CF8FED0C;
  *(v12 + 24) = v11;
  v57 = v11;
  v68 = sub_1CF1C0B54;
  v69 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v65 = 1107296256;
  v66 = sub_1CEFFD02C;
  v67 = &block_descriptor_4742;
  v13 = _Block_copy(&aBlock);

  v14 = a2;
  sub_1CF8F99A0(a3);

  dispatch_sync(v10, v13);
  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_7:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v31 = Strong;
      v32 = [Strong log];

      v56 = v48;
      MEMORY[0x1EEE9AC00](v33);
      v34 = &v48[-4];
      v48[-2] = v14;
      v48[-1] = a3;
      v35 = v32;
      if (v32)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v56 = v48;
      MEMORY[0x1EEE9AC00](0);
      v34 = &v48[-4];
      v48[-2] = v14;
      v48[-1] = a3;
    }

    v35 = fpfs_current_log();
    v32 = 0;
LABEL_12:
    v54 = v32;
    v55 = fpfs_adopt_log();
    v62 = 0;
    v63 = 1;
    aBlock = sub_1CF9E73C8();
    v65 = v36;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v37 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v37);

    sub_1CF9E6978();

    v38 = __fp_log_fork();

    v62 = v38;
    v63 = 0;
    MEMORY[0x1EEE9AC00](v39);
    v48[-8] = v35;
    v48[-7] = &v62;
    v48[-6] = v10;
    v48[-5] = "reimportEverything(markItemDataless:reason:completionHandler:)";
    v48[-4] = 62;
    LOBYTE(v48[-3]) = 2;
    v48[-2] = sub_1CF8FED54;
    v48[-1] = v34;
    v61 = 1;
    v60 = 0;
    v40 = swift_allocObject();
    v40[2] = &v61;
    v40[3] = sub_1CF2BA13C;
    v40[4] = &v48[-10];
    v40[5] = &v60;
    v41 = swift_allocObject();
    *(v41 + 16) = sub_1CF2BA170;
    *(v41 + 24) = v40;
    v68 = sub_1CF1C0B54;
    v69 = v41;
    aBlock = MEMORY[0x1E69E9820];
    v65 = 1107296256;
    v66 = sub_1CEFFD02C;
    v67 = &block_descriptor_4754;
    v42 = _Block_copy(&aBlock);

    FPDispatchAsyncAndWait(v10, v42);
    _Block_release(v42);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      if (v60)
      {
LABEL_21:
        swift_willThrow();

        v47 = fpfs_adopt_log();
        __break(1u);
        goto LABEL_22;
      }

      if ((v61 & 1) == 0)
      {

        v44 = v55;
        v45 = fpfs_adopt_log();

        v59(0);
      }

      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v56 = v10;
  v15 = *(*(*(a1 + 16) + 32) + 16);
  type metadata accessor for VFSFileTree(0);
  v16 = swift_dynamicCastClassUnconditional();
  v55 = v53;
  v17 = *(v16 + 216);
  MEMORY[0x1EEE9AC00](v16);
  v52[2] = a1;
  v52[3] = v14;
  v19 = v18;
  v20 = fpfs_current_log();
  v54 = fpfs_adopt_log();
  v62 = 0;
  v63 = 1;
  aBlock = sub_1CF9E73C8();
  v65 = v21;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v22 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v22);

  sub_1CF9E6978();

  v23 = __fp_log_fork();

  v53[1] = v52;
  v62 = v23;
  v63 = 0;
  MEMORY[0x1EEE9AC00](v24);
  v48[2] = v20;
  v48[3] = &v62;
  v48[4] = v19;
  v48[5] = "reimportEverything(markItemDataless:reason:completionHandler:)";
  v48[6] = 62;
  v49 = 2;
  v50 = sub_1CF8FED70;
  v51 = v52;
  v61 = 1;
  v60 = 0;
  v25 = swift_allocObject();
  v25[2] = &v61;
  v25[3] = sub_1CF2BA13C;
  v25[4] = v48;
  v25[5] = &v60;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1CF2BA170;
  *(v26 + 24) = v25;
  v68 = sub_1CF1C0B54;
  v69 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v65 = 1107296256;
  v66 = sub_1CEFFD02C;
  v67 = &block_descriptor_4766;
  v27 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v19, v27);
  _Block_release(v27);
  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if (v27)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v60)
  {
    if (v61)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v28 = v54;
    v29 = fpfs_adopt_log();

    v10 = v56;
    goto LABEL_7;
  }

LABEL_22:
  swift_willThrow();

  result = fpfs_adopt_log();
  __break(1u);
  return result;
}

void sub_1CF882B9C(uint64_t a1, uint64_t a2)
{
  v177 = a2;
  v193 = a1;
  v207[1] = *MEMORY[0x1E69E9840];
  v171 = sub_1CF9E53C8();
  v170 = *(v171 - 8);
  v2 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v171);
  v169 = &v166 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_1CF9E6118();
  v174 = *(v175 - 8);
  v4 = *(v174 + 64);
  MEMORY[0x1EEE9AC00](v175);
  v172 = &v166 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v167 = &v166 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v173 = &v166 - v9;
  v10 = sub_1CF9E5A58();
  v11 = *(v10 - 8);
  v197 = v10;
  v198 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v168 = &v166 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v176 = &v166 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v196 = &v166 - v17;
  v18 = sub_1CF9E5CF8();
  v199 = *(v18 - 8);
  v19 = v199;
  v20 = v199[8];
  MEMORY[0x1EEE9AC00](v18);
  v192 = &v166 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v180 = &v166 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v191 = &v166 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v179 = &v166 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v195 = &v166 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v178 = &v166 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v166 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v166 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v166 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v166 - v43;
  v45 = type metadata accessor for ItemMetadata();
  v46 = *(*(v45 - 1) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v166 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v49);
  v200 = (&v166 - v51);
  v52 = v19[7];
  v194 = v18;
  v52(v44, 1, 1, v18, v50);
  (v52)(v41, 1, 1, v18);
  (v52)(v38, 1, 1, v18);
  v185 = v44;
  sub_1CEFCCBDC(v44, v35, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v184 = v41;
  v53 = v41;
  v54 = v178;
  sub_1CEFCCBDC(v53, v178, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v182 = v38;
  v55 = v38;
  v56 = v194;
  sub_1CEFCCBDC(v55, v195, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v57 = &v48[v45[14]];
  *v57 = 0;
  *(v57 + 1) = 0;
  v188 = v57;
  v48[v45[17]] = 2;
  v189 = v45[23];
  v48[v189] = 6;
  v58 = v45[30];
  (v52)(&v48[v58], 1, 1, v56);
  v187 = &v48[v45[34]];
  v186 = xmmword_1CF9F4E20;
  *v187 = xmmword_1CF9F4E20;
  v59 = &v48[v45[37]];
  v60 = &v48[v45[38]];
  *v60 = 0;
  *(v60 + 1) = 0;
  fpfs_supports_vfs_ignore_permissions_iopolicy();
  *v48 = 1;
  v48[v45[20]] = 0;
  v48[v45[28]] = 0;
  v48[v45[29]] = 0;
  *&v48[v45[26]] = 0;
  *&v48[v45[27]] = 0;
  *(v48 + 1) = 0;
  v48[8] = 1;
  *v59 = 0;
  v59[4] = 1;
  v61 = v199;
  *(v48 + 5) = 493;
  v181 = v35;
  v62 = v35;
  v63 = v179;
  sub_1CEFCCBDC(v62, v179, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v64 = v61[6];
  v65 = v64(v63, 1, v56);
  v183 = v58;
  if (v65 == 1)
  {
    v66 = v180;
    sub_1CF9E5C88();
    if (v64(v63, 1, v56) != 1)
    {
      sub_1CEFCCC44(v63, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    }
  }

  else
  {
    v66 = v180;
    (v61[4])(v180, v63, v56);
  }

  v67 = v61[4];
  (v67)(&v48[v45[7]], v66, v56);
  v68 = v191;
  sub_1CEFCCBDC(v54, v191, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v69 = v64(v68, 1, v56);
  v199 = v61 + 4;
  if (v69 == 1)
  {
    v70 = v192;
    sub_1CF9E5C88();
    v180 = v67;
    sub_1CEFCCC44(v54, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v181, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v182, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v184, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v67 = v180;
    sub_1CEFCCC44(v185, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v71 = v194;
    v72 = v64(v68, 1, v194);
    v73 = v71;
    if (v72 == 1)
    {
      goto LABEL_10;
    }

    v74 = v68;
    v75 = v71;
    sub_1CEFCCC44(v74, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  }

  else
  {
    sub_1CEFCCC44(v54, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v181, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v182, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v184, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v185, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v70 = v192;
    v76 = v68;
    v75 = v194;
    (v67)(v192, v76, v194);
  }

  v73 = v75;
LABEL_10:
  v77 = v45[31];
  v78 = &v48[v45[32]];
  v79 = v45[33];
  v80 = &v48[v45[35]];
  (v67)(&v48[v45[8]], v70, v73);
  v48[v45[9]] = 0;
  v48[v45[10]] = 0;
  v48[v45[13]] = 0;
  *&v48[v45[19]] = 0;
  v48[v45[21]] = 0;
  v48[v45[15]] = 0;
  v48[v45[16]] = 0;
  v48[v45[11]] = 0;
  v48[v45[12]] = 0;
  v48[v45[18]] = 0;
  sub_1CEFDA9E0(v195, &v48[v183], &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  *&v48[v77] = 0;
  *v78 = 0;
  v78[8] = 1;
  *&v48[v79] = 0;
  v81 = v188;
  v82 = *(v188 + 1);

  *v81 = 0;
  *(v81 + 1) = 0;
  v83 = v187;
  sub_1CEFE48D8(*v187, *(v187 + 1));
  *v83 = v186;
  *v80 = 0;
  v80[8] = 1;
  v48[v45[36]] = 0;
  v48[v45[24]] = 0;
  v48[v45[25]] = 0;
  v48[v45[22]] = 0;
  v48[v189] = 6;
  v84 = v200;
  sub_1CEFDA0C4(v48, v200, type metadata accessor for ItemMetadata);
  *(v84 + v45[20]) = 1;
  v85 = *(*(*(v193 + 16) + 32) + 16);
  type metadata accessor for VFSFileTree(0);
  v86 = swift_dynamicCastClassUnconditional();

  v87 = objc_sync_enter(v86);
  if (v87)
  {
    MEMORY[0x1EEE9AC00](v87);
    v164 = v86;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v166 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v88 = v86[20];

  v89 = objc_sync_exit(v86);
  if (v89)
  {
    MEMORY[0x1EEE9AC00](v89);
    v164 = v86;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v166 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v90 = *(v88 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs);

  v199 = v90;
  v191 = v90[2];
  if (v191)
  {
    v91 = 0;
    v195 = v199 + ((*(v198 + 80) + 32) & ~*(v198 + 80));
    v194 = v198 + 16;
    v193 = v198 + 8;
    v192 = v206;
    while (1)
    {
      if (v91 >= v199[2])
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
      }

      v92 = v197;
      v93 = v198;
      v94 = v196;
      (*(v198 + 16))(v196, v195 + *(v198 + 72) * v91, v197);
      sub_1CF9E5A18();
      v95 = (*(v93 + 8))(v94, v92);
      MEMORY[0x1EEE9AC00](v95);
      v164 = v200;
      v203 = 1;
      v207[0] = 0;
      v96 = swift_allocObject();
      v96[2] = &v203;
      v96[3] = sub_1CF8FED8C;
      v96[4] = &v166 - 4;
      v96[5] = v207;
      v97 = swift_allocObject();
      *(v97 + 16) = sub_1CF50E0C0;
      *(v97 + 24) = v96;
      v206[2] = sub_1CF50EB9C;
      v206[3] = v97;
      aBlock = MEMORY[0x1E69E9820];
      v205 = 1107296256;
      v206[0] = sub_1CF005DF8;
      v206[1] = &block_descriptor_4778;
      v98 = _Block_copy(&aBlock);

      sub_1CF9E6978();
      v99 = fpfs_openat();

      _Block_release(v98);

      LOBYTE(v98) = swift_isEscapingClosureAtFileLocation();

      if (v98)
      {
        goto LABEL_53;
      }

      v101 = v207[0];
      if (v207[0])
      {
        v102 = v207[0];

        goto LABEL_25;
      }

      if (v99 < 0)
      {
        break;
      }

      if (v203)
      {
        goto LABEL_54;
      }

      ++v91;

      if (v191 == v91)
      {
        goto LABEL_20;
      }
    }

    if (MEMORY[0x1D38683F0](v100))
    {

      if (MEMORY[0x1D38683F0](v103) == 9939394)
      {
        v101 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
LABEL_25:
        swift_willThrow();
        v190 = 0;
        v104 = v173;
      }

      else
      {
        MEMORY[0x1D38683F0]();
        v105 = sub_1CF9E6138();
        v104 = v173;
        if ((v105 & 0x100000000) != 0)
        {
          LODWORD(aBlock) = 22;
        }

        else
        {
          LODWORD(aBlock) = v105;
        }

        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
        v106 = v169;
        v107 = v171;
        sub_1CF9E57D8();
        v101 = sub_1CF9E53A8();
        (*(v170 + 8))(v106, v107);
        swift_willThrow();
        v190 = 0;
      }

      sub_1CEFD5338(v200, type metadata accessor for ItemMetadata);
      v108 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v109 = v101;
      v110 = sub_1CF9E6108();
      v111 = sub_1CF9E72A8();

      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        *v112 = 138412290;
        swift_getErrorValue();
        v114 = Error.prettyDescription.getter(v202);
        *(v112 + 4) = v114;
        *v113 = v114;
        _os_log_impl(&dword_1CEFC7000, v110, v111, "can't mark the root dataless: %@", v112, 0xCu);
        sub_1CEFCCC44(v113, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v113, -1, -1);
        MEMORY[0x1D386CDC0](v112, -1, -1);
      }

      else
      {
      }

      (*(v174 + 8))(v104, v175);
      goto LABEL_34;
    }

    aBlock = 0;
    v205 = 0xE000000000000000;
    sub_1CF9E7948();

    aBlock = 0xD00000000000001ALL;
    v205 = 0x80000001CFA2DF30;
    v201 = v99;
    v153 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v153);

    MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
    v154 = aBlock;
    v155 = v205;
    v156 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v157 = sub_1CF9E6108();
    v158 = sub_1CF9E72B8();

    if (os_log_type_enabled(v157, v158))
    {
      v159 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      aBlock = v160;
      *v159 = 136315650;
      v161 = sub_1CF9E7988();
      v163 = sub_1CEFD0DF0(v161, v162, &aBlock);

      *(v159 + 4) = v163;
      *(v159 + 12) = 2048;
      *(v159 + 14) = 315;
      *(v159 + 22) = 2080;
      *(v159 + 24) = sub_1CEFD0DF0(v154, v155, &aBlock);
      _os_log_impl(&dword_1CEFC7000, v157, v158, "[ASSERT] ‼️  %s:%lu: %s", v159, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v160, -1, -1);
      MEMORY[0x1D386CDC0](v159, -1, -1);
    }

    (*(v174 + 8))(v167, v175);
    v165 = 0;
    v164 = 315;
    sub_1CF9E7B68();
    __break(1u);
  }

  else
  {
LABEL_20:

    sub_1CEFD5338(v200, type metadata accessor for ItemMetadata);
LABEL_34:
    v115 = v190;
    v116 = sub_1CEFCE64C();
    if (v115)
    {
    }

    else if (*(v116 + 16))
    {
      v117 = *(v198 + 16);
      v117(v176, v116 + ((*(v198 + 80) + 32) & ~*(v198 + 80)), v197);

      v118 = sub_1CF9E5928();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v120 = Strong;
        v121 = [Strong provider];

        if (v121)
        {
          v122 = [v121 descriptor];

          v123 = [v122 localizedName];
          _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        }
      }

      v124 = sub_1CF9E6888();

      aBlock = 0;
      v125 = FPWriteImportCookieForDomainURL();

      if (v125)
      {
        v126 = *(v198 + 8);
        v127 = aBlock;
        v126(v176, v197);
      }

      else
      {
        v128 = v197;
        if (aBlock)
        {
          v129 = aBlock;
          v130 = fpfs_current_or_default_log();
          v131 = v172;
          sub_1CF9E6128();
          v132 = v168;
          v133 = v176;
          v117(v168, v176, v128);
          v134 = v129;
          v135 = sub_1CF9E6108();
          v136 = sub_1CF9E72A8();

          if (os_log_type_enabled(v135, v136))
          {
            v137 = swift_slowAlloc();
            v199 = swift_slowAlloc();
            v200 = swift_slowAlloc();
            aBlock = v200;
            *v137 = 136315394;
            sub_1CEFCCCA4(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0]);
            v138 = sub_1CF9E7F98();
            v140 = v139;
            v141 = *(v198 + 8);
            v198 += 8;
            v196 = v141;
            (v141)(v132, v128);
            v142 = sub_1CEFD0DF0(v138, v140, &aBlock);

            *(v137 + 4) = v142;
            *(v137 + 12) = 2112;
            v207[0] = v134;
            sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
            sub_1CF2B1654(&qword_1EC4BE010, &qword_1EDEA3440, 0x1E696ABC0);
            v143 = v134;
            v144 = sub_1CF9E7FB8();
            if (v144)
            {
              v145 = v144;
            }

            else
            {
              v145 = swift_allocError();
              *v147 = v143;
            }

            v148 = sub_1CF9E57E8();

            v149 = [v148 fp_prettyDescription];
            *(v137 + 14) = v149;
            v150 = v199;
            *v199 = v149;
            _os_log_impl(&dword_1CEFC7000, v135, v136, "failed to write import cookie for domain url %s: %@", v137, 0x16u);
            sub_1CEFCCC44(v150, &qword_1EC4BE350, &unk_1CF9FC3B0);
            MEMORY[0x1D386CDC0](v150, -1, -1);
            v151 = v200;
            __swift_destroy_boxed_opaque_existential_1(v200);
            MEMORY[0x1D386CDC0](v151, -1, -1);
            MEMORY[0x1D386CDC0](v137, -1, -1);

            (*(v174 + 8))(v172, v175);
            (v196)(v176, v197);
          }

          else
          {

            v146 = *(v198 + 8);
            v146(v132, v128);
            (*(v174 + 8))(v131, v175);
            v146(v133, v128);
          }
        }

        else
        {
          (*(v198 + 8))(v176, v197);
        }
      }
    }

    else
    {
    }

    v152 = *MEMORY[0x1E69E9840];
  }
}

uint64_t sub_1CF884450@<X0>(uint64_t a1@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  v6 = type metadata accessor for ItemMetadata();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEFDA34C(a1, v9, type metadata accessor for ItemMetadata);
  sub_1CEFE528C(v13);
  v11[12] = v13[12];
  v11[13] = v13[13];
  v11[14] = v13[14];
  v12 = v14;
  v11[8] = v13[8];
  v11[9] = v13[9];
  v11[10] = v13[10];
  v11[11] = v13[11];
  v11[4] = v13[4];
  v11[5] = v13[5];
  v11[6] = v13[6];
  v11[7] = v13[7];
  v11[0] = v13[0];
  v11[1] = v13[1];
  v11[2] = v13[2];
  v11[3] = v13[3];
  *a3 = sub_1CF1AC258(v11, v9, a2);
  return sub_1CEFD5338(v9, type metadata accessor for ItemMetadata);
}

uint64_t sub_1CF884594(uint64_t a1, unint64_t a2)
{
  v2 = sub_1CF96AA40(a2);
  sub_1CF8367C8(v2, v3, 0xD000000000000012, 0x80000001CFA5E550);
}

void sub_1CF8845F4(char *a1, int a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v129 = a8;
  v130 = a7;
  v125 = a5;
  v126 = a6;
  v119 = a2;
  v11 = sub_1CF9E6118();
  v123 = *(v11 - 8);
  v124 = v11;
  v12 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v121 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v118 = &v115 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v117 = &v115 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v116 = &v115 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v115 - v22;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v24 = *(v127 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v122 = &v115 - v26;
  v27 = sub_1CF9E64A8();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = (&v115 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = *(a3 + 16);
  v34 = *(v33 + 64);
  *v32 = v34;
  (*(v28 + 104))(v32, *MEMORY[0x1E69E8020], v27, v30);
  v35 = v34;
  LOBYTE(v34) = sub_1CF9E64D8();
  (*(v28 + 8))(v32, v27);
  if ((v34 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v36 = *(v33 + 40);
  v131 = a1;
  v37 = *(*v36 + 240);
  v38 = *(v129 + 8);

  v39 = v128;
  v37(&v131, 1, a4, v130, v38);

  if (!v39)
  {
    v128 = a4;
    v40 = v130;
    v115 = v33;
    if ((*(v24 + 48))(v23, 1, v127) == 1)
    {
      sub_1CEFCCC44(v23, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      v41 = fpfs_current_or_default_log();
      v42 = v121;
      sub_1CF9E6128();
      v43 = sub_1CF9E6108();
      v44 = sub_1CF9E7298();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_1CEFC7000, v43, v44, "item is not in our database", v45, 2u);
        MEMORY[0x1D386CDC0](v45, -1, -1);
      }

      (*(v123 + 8))(v42, v124);
      v46 = FPItemNotFoundError();
      v125();

      return;
    }

    v47 = v122;
    sub_1CEFE55D0(v23, v122, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    v48 = *MEMORY[0x1E6967258];
    v49 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v51 = v50;
    if (v49 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v51 == v52)
    {

LABEL_11:
      v54 = fpfs_current_or_default_log();
      v55 = v118;
      sub_1CF9E6128();
      v56 = sub_1CF9E6108();
      v57 = sub_1CF9E72A8();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_1CEFC7000, v56, v57, "🚚  reimporting the root item, dropping the database", v58, 2u);
        MEMORY[0x1D386CDC0](v58, -1, -1);
      }

      (*(v123 + 8))(v55, v124);
      v59 = swift_allocObject();
      v61 = v125;
      v60 = v126;
      *(v59 + 16) = v125;
      *(v59 + 24) = v60;
      v62 = swift_allocObject();
      v63 = v120;
      *(v62 + 16) = v120;
      *(v62 + 24) = 0x8000000000000000;
      *(v62 + 32) = v119 & 1;
      *(v62 + 40) = v61;
      *(v62 + 48) = v60;
      swift_retain_n();
      v64 = v63;
      v65 = sub_1CF90332C;
LABEL_14:
      sub_1CEFD4024("reimportEverything(markItemDataless:reason:completionHandler:)", 62, 2, sub_1CF90324C, v59, v65, v62);

      v66 = v47;
LABEL_15:
      sub_1CEFCCC44(v66, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      return;
    }

    v53 = sub_1CF9E8048();

    if (v53)
    {
      goto LABEL_11;
    }

    v67 = v115;
    v68 = *(v115 + 16);
    v133 = a1;
    v69 = *(*v68 + 152);

    v69(&v131, &v133, v128, v40, v38);

    if (v132 == 255)
    {
      v77 = fpfs_current_or_default_log();
      v78 = v117;
      sub_1CF9E6128();
      v79 = sub_1CF9E6108();
      v80 = sub_1CF9E7298();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&dword_1CEFC7000, v79, v80, "item is not in our database", v81, 2u);
        MEMORY[0x1D386CDC0](v81, -1, -1);
      }

      (*(v123 + 8))(v78, v124);
      v82 = FPItemNotFoundError();
      v125();

      v66 = v122;
      goto LABEL_15;
    }

    LODWORD(v117) = v132;
    v118 = v131;
    v70 = [objc_opt_self() defaultStore];
    v71 = [v70 partialReimportHierarchyLimit];

    v72 = *(v67 + 40);
    v131 = a1;
    v73 = v71;
    v74 = *(*v72 + 304);

    v75 = v40;
    v76 = v74(&v131, v73, v128, v40, v38);
    v121 = 0;
    v83 = v76;
    v84 = v118;

    v47 = v122;
    if ((v83 & 1) == 0)
    {
      v92 = fpfs_current_or_default_log();
      v93 = v116;
      sub_1CF9E6128();
      v94 = a1;
      v95 = sub_1CF9E6108();
      v96 = sub_1CF9E72A8();

      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v131 = v98;
        *v97 = 136315138;
        v99 = NSFileProviderItemIdentifier.description.getter();
        v101 = sub_1CEFD0DF0(v99, v100, &v131);

        *(v97 + 4) = v101;
        _os_log_impl(&dword_1CEFC7000, v95, v96, "🚚  hierarchy of %s is too big, falling back on reimporting the root item", v97, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v98);
        MEMORY[0x1D386CDC0](v98, -1, -1);
        MEMORY[0x1D386CDC0](v97, -1, -1);
      }

      (*(v123 + 8))(v93, v124);
      v102 = v126;
      v103 = (v47 + *(v127 + 48));
      v104 = *v103;
      v105 = type metadata accessor for ItemMetadata();
      if (v104 > 1)
      {
        if (v104 == 2)
        {
          v107 = 0xE700000000000000;
          v106 = 0x6B6E696C6D7973;
        }

        else
        {
          v107 = 0xE500000000000000;
          v106 = 0x7361696C61;
        }
      }

      else if (v104)
      {
        v107 = 0xE300000000000000;
        v106 = 7498084;
      }

      else
      {
        if (v103[*(v105 + 112)])
        {
          v106 = 6777712;
        }

        else
        {
          v106 = 6516580;
        }

        v107 = 0xE300000000000000;
      }

      v112 = v120;
      sub_1CF82ED30(0x8000000000000028, v106, v107, *(v115 + qword_1EDEBBDE0));

      v59 = swift_allocObject();
      v113 = v125;
      *(v59 + 16) = v125;
      *(v59 + 24) = v102;
      v62 = swift_allocObject();
      *(v62 + 16) = v112;
      *(v62 + 24) = 0x8000000000000000;
      *(v62 + 32) = v119 & 1;
      *(v62 + 40) = v113;
      *(v62 + 48) = v102;
      swift_retain_n();
      v114 = v112;
      v65 = sub_1CF8FEC7C;
      goto LABEL_14;
    }

    v85 = (v122 + *(v127 + 48));
    v86 = *v85;
    v87 = type metadata accessor for ItemMetadata();
    if (v86 > 1)
    {
      v88 = v126;
      v89 = v129;
      if (v86 == 2)
      {
        v91 = 0xE700000000000000;
        v90 = 0x6B6E696C6D7973;
      }

      else
      {
        v91 = 0xE500000000000000;
        v90 = 0x7361696C61;
      }
    }

    else
    {
      v88 = v126;
      v89 = v129;
      if (v86)
      {
        v91 = 0xE300000000000000;
        v90 = 7498084;
      }

      else
      {
        if (v85[*(v87 + 112)])
        {
          v90 = 6777712;
        }

        else
        {
          v90 = 6516580;
        }

        v91 = 0xE300000000000000;
      }
    }

    v108 = v115;
    v109 = v120;
    sub_1CF82ED30(0x8000000000000020, v90, v91, *(v115 + qword_1EDEBBDE0));

    v131 = v84;
    v132 = v117;
    v110 = swift_allocObject();
    v110[2] = v125;
    v110[3] = v88;
    v110[4] = v109;

    v111 = v109;
    sub_1CF96AF30(&v131, v108, v128, sub_1CF8FEC80, v110, v75, v89);

    sub_1CEFCCC44(v47, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  }
}

void sub_1CF885294(void *a1, void (*a2)(void *), uint64_t a3, char *a4)
{
  v8 = sub_1CF9E63A8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CF9E6448();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v18 = a1;
    a2(a1);
  }

  else
  {
    v22[1] = *&a4[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
    v23 = v15;
    v19 = swift_allocObject();
    v19[2] = a4;
    v19[3] = a2;
    v19[4] = a3;
    aBlock[4] = sub_1CF8FECE4;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CEFCA444;
    aBlock[3] = &block_descriptor_4720;
    v20 = _Block_copy(aBlock);
    v21 = a4;

    sub_1CF9E63F8();
    v24 = MEMORY[0x1E69E7CC0];
    sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CF9E77B8();
    MEMORY[0x1D3869630](0, v17, v12, v20);
    _Block_release(v20);
    (*(v9 + 8))(v12, v8);
    (*(v23 + 8))(v17, v13);
  }
}

id sub_1CF8855D0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v29 = a3;
  v30 = a2;
  v4 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startupQueue);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong log];

    v28 = &v26;
    MEMORY[0x1EEE9AC00](v8);
    v25 = a1;
    v9 = v7;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v28 = &v26;
    MEMORY[0x1EEE9AC00](0);
    v25 = a1;
  }

  v9 = fpfs_current_log();
  v7 = 0;
LABEL_6:
  v26 = v7;
  v27 = fpfs_adopt_log();
  v39 = 0;
  v40 = 1;
  aBlock = sub_1CF9E73C8();
  v32 = v10;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v11 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v11);

  sub_1CF9E6978();

  v12 = __fp_log_fork();

  v39 = v12;
  v40 = 0;
  MEMORY[0x1EEE9AC00](v13);
  v20[2] = v9;
  v20[3] = &v39;
  v20[4] = v4;
  v20[5] = "reimportItems(below:markItemDataless:fpfs:with:completionHandler:)";
  v20[6] = 66;
  v21 = 2;
  v22 = sub_1CF8FECF0;
  v23 = &v24;
  v38 = 1;
  v37 = 0;
  v14 = swift_allocObject();
  v14[2] = &v38;
  v14[3] = sub_1CF2BA13C;
  v14[4] = v20;
  v14[5] = &v37;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1CF2BA170;
  *(v15 + 24) = v14;
  v35 = sub_1CF1C0B54;
  v36 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = sub_1CEFFD02C;
  v34 = &block_descriptor_4732;
  v16 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v4, v16);
  _Block_release(v16);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!v37)
  {
    if ((v38 & 1) == 0)
    {

      v17 = v27;
      v18 = fpfs_adopt_log();

      return v30(0);
    }

    goto LABEL_11;
  }

LABEL_12:
  swift_willThrow();

  result = fpfs_adopt_log();
  __break(1u);
  return result;
}

uint64_t sub_1CF88597C()
{
  v0 = sub_1CF96AA40(0x8000000000000020);
  sub_1CF8367C8(v0, v1, 0x74726F706D696572, 0xED0000736D657449);
}

uint64_t FPDDomainFPFSBackend.reimportItems(below:markItemDataless:completionHandler:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  *(v10 + 32) = a1;
  *(v10 + 40) = v4;
  *(v10 + 48) = a2;
  swift_retain_n();
  v11 = a1;
  v12 = v4;
  sub_1CEFD4024("reimportItems(below:markItemDataless:completionHandler:)", 56, 2, sub_1CF90324C, v9, sub_1CF8F0F98, v10);
}

void sub_1CF885AE4(uint64_t a1, void (*a2)(id), uint64_t a3, void *a4, void *a5, int a6)
{
  LODWORD(v135) = a6;
  v123 = sub_1CF9E63D8();
  v122 = *(v123 - 8);
  v11 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v121 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v132 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v139 = &v119 - v17;
  v18 = sub_1CF9E6068();
  v19 = *(v18 - 8);
  v20 = v19[8];
  MEMORY[0x1EEE9AC00](v18);
  v127 = &v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v125 = &v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v136 = &v119 - v26;
  v126 = type metadata accessor for Signpost(0);
  v128 = *(v126 - 8);
  v27 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v126);
  v131 = &v119 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v129 = v31;
  v130 = (&v119 - v30);
  MEMORY[0x1EEE9AC00](v32);
  v137 = &v119 - v33;
  v34 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  v35[2] = a2;
  v35[3] = a3;
  v35[4] = v34;
  v138 = v34;

  v134 = a3;

  v133 = a4;
  v36 = [a4 identifier];
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v37 = sub_1CF4C4044();

  if (v37)
  {
    v120 = a2;
    v38 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v40 = sub_1CF025150(0x80007uLL, v38, v39);
    v42 = v41;
    v43 = a1;
    v44 = a5;
    v46 = v45;
    v124 = v19;
    v47 = v18;
    v48 = v35;
    v50 = v49;

    v51 = v46;
    a5 = v44;
    a1 = v43;
    v52 = MEMORY[0x1D3868C10](v40, v42, v51, v50);
    v54 = v53;
    v35 = v48;
    v18 = v47;
    v19 = v124;

    VFSItemID.init(parsing:)(v52, v54, &aBlock);

    if (BYTE8(aBlock) != 255)
    {
      v55 = [v133 identifier];
      v56 = FPItemNotFoundError();

      if (v56)
      {
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        v58 = v120;
        if (Strong)
        {
          v59 = Strong;
          v60 = v134;

          v61 = v56;
          sub_1CF77A9C8(v61, 0, v59, v58, v60);
        }

        else
        {
          v117 = v56;
          v118 = FPDomainUnavailableError();
          (v58)();
        }
      }

      else
      {
        v120(0);
      }

      return;
    }
  }

  else
  {
  }

  v62 = *(a1 + 16);
  v63 = swift_allocObject();
  v64 = v133;
  *(v63 + 16) = v133;
  *(v63 + 24) = a5;
  *(v63 + 32) = v135 & 1;
  *(v63 + 40) = a1;
  *(v63 + 48) = sub_1CF902EC0;
  v135 = v63;
  *(v63 + 56) = v35;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_1CF902EC0;
  *(v65 + 24) = v35;
  v138 = v65;
  v134 = v62;
  v66 = *(v62 + qword_1EDEBBC38);
  v124 = v35;
  swift_retain_n();
  v67 = v64;
  v68 = a5;

  v133 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v69 = qword_1EDEBBE40;
  v70 = v136;
  (v19[7])(v136, 1, 1, v18);
  strcpy(&aBlock, "async batch ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v71 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v71);

  v72 = aBlock;
  v73 = v125;
  sub_1CEFCCBDC(v70, v125, &unk_1EC4BED20, &unk_1CFA00700);
  v74 = v19[6];
  v75 = v74(v73, 1, v18);
  v76 = v127;
  if (v75 == 1)
  {
    v77 = v69;
    sub_1CF9E6048();
    if (v74(v73, 1, v18) != 1)
    {
      sub_1CEFCCC44(v73, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (v19[4])(v127, v73, v18);
  }

  v78 = v19[2];
  v79 = v19;
  v80 = v137;
  v78(v137, v76, v18);
  v81 = v126;
  *(v80 + *(v126 + 20)) = v69;
  v82 = v80 + *(v81 + 24);
  *v82 = "DB queue wait";
  *(v82 + 8) = 13;
  *(v82 + 16) = 2;
  v83 = v69;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_1CF9FA450;
  *(v84 + 56) = MEMORY[0x1E69E6158];
  *(v84 + 64) = sub_1CEFD51C4();
  *(v84 + 32) = v72;
  sub_1CF9E6028();

  (v79[1])(v76, v18);
  sub_1CEFCCC44(v136, &unk_1EC4BED20, &unk_1CFA00700);
  v127 = *(v134 + 168);
  v136 = *(v134 + 64);
  v125 = sub_1CF9E6448();
  v126 = *(v125 - 8);
  (*(v126 + 56))(v139, 1, 1, v125);
  v85 = v130;
  sub_1CEFDA34C(v80, v130, type metadata accessor for Signpost);
  v86 = (*(v128 + 80) + 16) & ~*(v128 + 80);
  v87 = (v129 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  sub_1CEFDA0C4(v85, v88 + v86, type metadata accessor for Signpost);
  v89 = (v88 + v87);
  v130 = sub_1CF5543A4;
  v90 = v138;
  *v89 = sub_1CF5543A4;
  v89[1] = v90;
  v91 = v131;
  sub_1CEFDA34C(v80, v131, type metadata accessor for Signpost);
  v92 = (v87 + 23) & 0xFFFFFFFFFFFFFFF8;
  v93 = (v92 + 15) & 0xFFFFFFFFFFFFFFF8;
  v94 = (v93 + 25) & 0xFFFFFFFFFFFFFFF8;
  v95 = swift_allocObject();
  sub_1CEFDA0C4(v91, v95 + v86, type metadata accessor for Signpost);
  v96 = (v95 + v87);
  *v96 = sub_1CF045408;
  v96[1] = 0;
  *(v95 + v92) = v134;
  v97 = v125;
  v98 = v95 + v93;
  v99 = v126;
  *v98 = "reimportItems(below:markItemDataless:completionHandler:)";
  *(v98 + 8) = 56;
  *(v98 + 16) = 2;
  v100 = (v95 + v94);
  v101 = v138;
  *v100 = v130;
  v100[1] = v101;
  v102 = (v95 + ((v94 + 23) & 0xFFFFFFFFFFFFFFF8));
  v103 = v135;
  *v102 = sub_1CF8FEC54;
  v102[1] = v103;
  v104 = swift_allocObject();
  v104[2] = sub_1CF903308;
  v104[3] = v88;
  v105 = v127;
  v104[4] = v127;
  swift_retain_n();

  v134 = v88;

  v106 = fpfs_current_log();
  v107 = *(v105 + 2);
  v108 = v132;
  sub_1CEFCCBDC(v139, v132, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v99 + 48))(v108, 1, v97) == 1)
  {
    sub_1CEFCCC44(v108, &unk_1EC4BE370, qword_1CFA01B30);
    v109 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v110 = v121;
    sub_1CF9E6438();
    (*(v99 + 8))(v108, v97);
    v109 = sub_1CF9E63C8();
    (*(v122 + 8))(v110, v123);
  }

  v111 = swift_allocObject();
  v111[2] = v106;
  v111[3] = sub_1CF4858EC;
  v111[4] = v95;
  v143 = sub_1CF2BA17C;
  v144 = v111;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v141 = sub_1CEFCA444;
  v142 = &block_descriptor_4693;
  v112 = _Block_copy(&aBlock);
  v113 = v106;

  v143 = sub_1CF2BA180;
  v144 = v104;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v141 = sub_1CEFCA444;
  v142 = &block_descriptor_4696;
  v114 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v107, v136, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v109, v112, v114);
  _Block_release(v114);
  _Block_release(v112);

  sub_1CEFCCC44(v139, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CEFD5338(v137, type metadata accessor for Signpost);
  v115 = v133;
  v116 = fpfs_adopt_log();
}

void sub_1CF88690C(void *a1, void *a2, uint64_t a3, int a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v8 = v7;
  v72 = a3;
  v73 = a7;
  v70 = a5;
  v71 = a6;
  v69 = a4;
  v67 = a1;
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  v75 = v10;
  v76 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v74 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v63 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v63 - v18;
  v20 = [objc_allocWithZone(FPLoggerScope) init];
  v21 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v22 = v20;
  v23 = a2;
  v24 = sub_1CF9E6108();
  LODWORD(v20) = sub_1CF9E72A8();

  v66 = v20;
  v25 = os_log_type_enabled(v24, v20);
  v68 = v22;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v65 = v7;
    v27 = v26;
    v28 = swift_slowAlloc();
    v63 = v28;
    v64 = swift_slowAlloc();
    v77 = v64;
    *v27 = 138412546;
    v29 = [v22 enter];
    *(v27 + 4) = v29;
    *v28 = v29;
    *(v27 + 12) = 2080;
    v30 = v24;
    v31 = [v23 identifier];
    v32 = NSFileProviderItemIdentifier.description.getter();
    v33 = v23;
    v34 = v16;
    v36 = v35;

    v37 = v32;
    v38 = v75;
    v39 = sub_1CEFD0DF0(v37, v36, &v77);
    v16 = v34;
    v23 = v33;
    v40 = v76;

    *(v27 + 14) = v39;
    _os_log_impl(&dword_1CEFC7000, v30, v66, "%@ 🚚  reimporting below %s", v27, 0x16u);
    v41 = v63;
    sub_1CEFCCC44(v63, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v41, -1, -1);
    v42 = v64;
    __swift_destroy_boxed_opaque_existential_1(v64);
    MEMORY[0x1D386CDC0](v42, -1, -1);
    v43 = v27;
    v8 = v65;
    MEMORY[0x1D386CDC0](v43, -1, -1);

    v44 = *(v40 + 8);
    v44(v19, v38);
  }

  else
  {

    v44 = *(v76 + 8);
    v44(v19, v75);
  }

  v45 = v67[3];
  v46 = v67[4];
  v47 = __swift_project_boxed_opaque_existential_1(v67, v45);
  v48 = [v23 identifier];
  sub_1CF8845F4(v48, v69 & 1, v70, v47, v71, v73, v45, v46);
  if (v8)
  {

    v49 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v50 = v68;
    v51 = sub_1CF9E6108();
    v52 = sub_1CF9E72A8();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138412290;
      v55 = [v50 leave];
      *(v53 + 4) = v55;
      *v54 = v55;
      _os_log_impl(&dword_1CEFC7000, v51, v52, "%@", v53, 0xCu);
      sub_1CEFCCC44(v54, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v54, -1, -1);
      MEMORY[0x1D386CDC0](v53, -1, -1);
    }

    v56 = v74;
  }

  else
  {

    v57 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v50 = v68;
    v58 = sub_1CF9E6108();
    v59 = sub_1CF9E72A8();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v60 = 138412290;
      v62 = [v50 leave];
      *(v60 + 4) = v62;
      *v61 = v62;
      _os_log_impl(&dword_1CEFC7000, v58, v59, "%@", v60, 0xCu);
      sub_1CEFCCC44(v61, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v61, -1, -1);
      MEMORY[0x1D386CDC0](v60, -1, -1);
    }

    v56 = v16;
  }

  v44(v56, v75);
}

uint64_t FPDDomainFPFSBackend.importProgress(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1CF9E6118();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v12 = sub_1CF9E6108();
  v13 = sub_1CF9E7298();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1CEFC7000, v12, v13, "gathering import progress", v14, 2u);
    MEMORY[0x1D386CDC0](v14, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v15 = dispatch_group_create();
  v16 = [objc_allocWithZone(MEMORY[0x1E6967378]) init];
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = v15;
  v18[6] = v3;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1CF90325C;
  *(v19 + 24) = v17;
  swift_retain_n();
  v20 = v16;
  v21 = v15;
  v22 = v3;

  sub_1CEFD4024("importProgress(completionHandler:)", 34, 2, sub_1CF903280, v19, sub_1CF8F0F9C, v18);
}

uint64_t sub_1CF887288(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v11 = *(a1 + 16);
  v12 = objc_sync_enter(v11);
  if (v12)
  {
    MEMORY[0x1EEE9AC00](v12);
    v24 = v11;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v23, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v13 = *&v11[qword_1EDEADB40];
  v14 = objc_sync_exit(v11);
  if (v14)
  {
    MEMORY[0x1EEE9AC00](v14);
    v24 = v11;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v23, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v15 = [v13 dasContext];

  [a2 setXpcActivityDasdContext_];
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  v17 = swift_allocObject();
  v17[2] = v11;
  v17[3] = a2;
  v17[4] = a5;
  v17[5] = a6;
  v17[6] = a3;
  v17[7] = a4;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1CF90325C;
  *(v18 + 24) = v16;
  swift_retain_n();

  v19 = a2;
  v20 = a5;
  v21 = a6;

  sub_1CF7AAF88("importProgress(completionHandler:)", 34, 2, 2, sub_1CF9034C4, v18, sub_1CF8FEB48, v17);
}

void sub_1CF8874D8(void *a1, char *a2, void *a3, void *a4, char *a5, uint64_t a6, uint64_t a7)
{
  v206 = a7;
  v205 = a6;
  v217 = a5;
  v214 = a4;
  v225 = a3;
  v224 = a1;
  v9 = sub_1CF9E63A8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v200 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E6448();
  v208 = *(v14 - 8);
  v15 = *(v208 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v207 = v200 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_1CF9E5CF8();
  v219 = *(v213 - 8);
  v17 = *(v219 + 64);
  MEMORY[0x1EEE9AC00](v213);
  v212 = v200 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v215 = v200 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v218 = v200 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v216 = v200 - v24;
  v25 = sub_1CF9E5248();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = v200 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1CF9E5268();
  v30 = *(v29 - 8);
  v31 = *(v30 + 8);
  MEMORY[0x1EEE9AC00](v29);
  v221 = v200 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = objc_sync_enter(a2);
  if (v33)
  {
    goto LABEL_131;
  }

  v34 = a2;
  v35 = a2[qword_1EDEADAA8];
  v223 = v34;
  v36 = objc_sync_exit(v34);
  if (v36)
  {
    goto LABEL_144;
  }

  v211 = v10;
  v210 = v14;
  v209 = v13;
  v220 = v30;
  if (v35)
  {
    a2 = v223;
    v33 = objc_sync_enter(v223);
    if (v33)
    {
LABEL_131:
      MEMORY[0x1EEE9AC00](v33);
      v198 = &v200[-4];
      v200[-2] = a2;
      goto LABEL_132;
    }

    v37 = *&a2[qword_1EDEADB40];
    v38 = objc_sync_exit(a2);
    if (v38)
    {
      MEMORY[0x1EEE9AC00](v38);
      v199 = &v200[-4];
      v200[-2] = a2;
      goto LABEL_134;
    }

    v39 = sub_1CF961730(sub_1CF889268, 0);
    v41 = v40;

    if (v41)
    {
      v42 = 1;
    }

    else
    {
      v42 = v39;
    }
  }

  else
  {
    v42 = 0;
  }

  v43 = v225;
  [v225 setStatus_];
  v44 = v224;
  v45 = v224[3];
  v46 = v224[4];
  __swift_project_boxed_opaque_existential_1(v224, v45);
  v47 = (*(v46 + 24))(sub_1CF889274, 0, v45, v46);
  if (v7)
  {
    return;
  }

  v203 = v28;
  v204 = v29;
  v202 = v9;
  v48 = v47;
  [v48 next];
  v49 = [v48 longAtIndex_];

  [v43 setNumberOfItemsReconciled_];
  v50 = v44[3];
  v51 = v44[4];
  __swift_project_boxed_opaque_existential_1(v44, v50);
  v52 = (*(v51 + 24))(sub_1CF889290, 0, v50, v51);
  v222 = 0;
  v53 = v52;

  [v53 next];
  v54 = [v53 longAtIndex_];

  [v43 setNumberOfItemsInError_];
  if ([v43 numberOfItemsInError] < 1)
  {
    [v43 setErrorDetails_];
    v59 = v224;
    goto LABEL_59;
  }

  v55 = v224[3];
  v56 = v224[4];
  __swift_project_boxed_opaque_existential_1(v224, v55);
  v57 = v222;
  v58 = (*(v56 + 24))(sub_1CF8894BC, 0, v55, v56);
  v222 = v57;
  if (v57)
  {
LABEL_15:

    return;
  }

  v60 = v58;
  v200[0] = v53;
  v229 = MEMORY[0x1E69E7CC0];
  if (![v58 next])
  {
LABEL_58:
    sub_1CEFD57E0(0, &qword_1EC4C5050, 0x1E6967358);
    v88 = v43;
    v89 = sub_1CF9E6D28();

    [v88 setErrorDetails_];

    v59 = v224;
    v53 = v200[0];
LABEL_59:
    v90 = v59[3];
    v91 = v59[4];
    __swift_project_boxed_opaque_existential_1(v59, v90);
    v92 = v222;
    sub_1CF2509E4(v90, v91, v233);
    if (v92)
    {
      goto LABEL_15;
    }

    if (v233[2])
    {
      v93 = v233[0];
      sub_1CEFCCC44(v233, &qword_1EC4BEA68, &qword_1CF9FF910);
    }

    else
    {
      v93 = -1;
    }

    v94 = v225;
    [v225 setDbCreationTimestamp_];
    v95 = *&v223[qword_1EDEBBCD0];
    v96 = *(v223 + 5);
    if (v95 == *(*(*(v96 + 16) + 88) + 24))
    {
      [v94 setStateOfUploadJobs_];
    }

    else
    {
      [v225 setStateOfUploadJobs_];
    }

    v97 = *&v223[qword_1EDEBBCA8];
    if (v97 == *(*(*(v96 + 16) + 104) + 24))
    {
      [v225 setStateOfDownloadJobs_];
    }

    else
    {
      [v225 setStateOfDownloadJobs_];
    }

    v98 = v59[3];
    v99 = v59[4];
    __swift_project_boxed_opaque_existential_1(v59, v98);
    v100 = (*(v99 + 24))(sub_1CF8896E8, 0, v98, v99);

    v101 = [v100 longAtIndex_];
    v102 = v225;
    [v225 setLatestFolderSelectedForImport_];
    [v102 setLatestFolderSelectedForImportTimestamp_];
    [v102 setLatestFolderSelectedForImportState_];
    [v102 setLatestFolderSelectedForImportWasModifiedOnDisk_];
    [v102 setLatestFolderSelectedForImportWasModifiedRemotely_];
    v103 = sub_1CEFEBAE8(5);

    [v102 setLatestFolderSelectedForImportIsMonitored_];
    v104 = v59[3];
    v105 = v59[4];
    __swift_project_boxed_opaque_existential_1(v59, v104);
    v106 = (*(v105 + 24))(sub_1CF889804, 0, v104, v105);
    v222 = 0;
    v107 = v106;

    v108 = &selRef_initWithTarget_;
    if ([v107 next])
    {
      do
      {
        v109 = objc_autoreleasePoolPush();
        v110 = [v107 integerAtIndex_];
        if (v110 <= 4 && ((0x1Du >> v110) & 1) != 0)
        {
          v111 = off_1E83C22E8[v110];
          v112 = [v107 integerAtIndex_];
          v113 = *v111;
          v108 = &selRef_initWithTarget_;
          [v225 v113];
        }

        objc_autoreleasePoolPop(v109);
      }

      while (([v107 v108[219]] & 1) != 0);
    }

    v224 = v107;

    v114 = v223;
    v115 = objc_sync_enter(v223);
    if (v115)
    {
      goto LABEL_139;
    }

    v116 = qword_1EDEADB40;
    v117 = *&v114[qword_1EDEADB40];
    v118 = objc_sync_exit(v114);
    v119 = v214;
    v120 = v213;
    if (!v118)
    {
      v121 = [v117 isRunning];

      [v225 setXpcActivityIsActive_];
      v115 = objc_sync_enter(v114);
      if (v115)
      {
        goto LABEL_139;
      }

      v122 = *&v114[v116];
      v118 = objc_sync_exit(v114);
      if (!v118)
      {
        v123 = [v122 isRegistered];

        [v225 setXpcActivityRegisteredWithDuet_];
        v115 = objc_sync_enter(v114);
        if (!v115)
        {
          v124 = *&v114[v116];
          v36 = objc_sync_exit(v114);
          if (v36)
          {
            goto LABEL_144;
          }

          v125 = [v124 lastRegistrationDate];

          if (v125)
          {
            sub_1CF9E5CB8();

            v126 = v218;
            sub_1CF9E5CC8();
            sub_1CF9E5C28();
            v128 = v127;
            v129 = v127;
            a2 = (v219 + 8);
            v130 = *(v219 + 8);
            v33 = v130(v126, v120);
            if ((*&v129 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              __break(1u);
            }

            else if (v128 > -9.22337204e18)
            {
              if (v128 >= 9.22337204e18)
              {
LABEL_123:
                __break(1u);
                goto LABEL_124;
              }

              [v225 setXpcActivityTimeSinceLastRegistration_];
              v130(v216, v120);
              goto LABEL_88;
            }

            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

LABEL_88:
          a2 = v223;
          v33 = objc_sync_enter(v223);
          if (v33)
          {
            goto LABEL_131;
          }

          v131 = *&a2[v116];
          v132 = a2;
          v133 = v131;
          v36 = objc_sync_exit(v132);
          if (!v36)
          {
            v134 = [v133 lastTriggerDate];

            if (!v134)
            {
              goto LABEL_95;
            }

            sub_1CF9E5CB8();

            v135 = v218;
            sub_1CF9E5CC8();
            sub_1CF9E5C28();
            v137 = v136;
            v138 = v136;
            a2 = (v219 + 8);
            v139 = *(v219 + 8);
            v33 = v139(v135, v120);
            if ((*&v138 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v137 > -9.22337204e18)
              {
                if (v137 < 9.22337204e18)
                {
                  [v225 setXpcActivityTimeSinceLastActivation_];
                  v139(v215, v120);
LABEL_95:
                  v140 = v225;
                  if ([v225 xpcActivityIsActive])
                  {
                    [v140 setXpcActivityTimeSinceLastAbleToRun_];
                    goto LABEL_106;
                  }

                  a2 = v223;
                  v33 = objc_sync_enter(v223);
                  if (v33)
                  {
                    goto LABEL_131;
                  }

                  v144 = *&a2[v116];
                  v145 = a2;
                  v146 = v144;
                  v36 = objc_sync_exit(v145);
                  if (!v36)
                  {
                    v147 = [v146 lastDeferralDate];

                    v140 = v225;
                    if (!v147)
                    {
                      goto LABEL_106;
                    }

                    sub_1CF9E5CB8();

                    v148 = v218;
                    sub_1CF9E5CC8();
                    sub_1CF9E5C28();
                    v150 = v149;
                    a2 = *(v219 + 8);
                    v33 = (a2)(v148, v120);
                    v151 = v150 / 60.0;
                    if (COERCE__INT64(fabs(v150 / 60.0)) <= 0x7FEFFFFFFFFFFFFFLL)
                    {
                      if (v151 > -9.22337204e18)
                      {
                        if (v151 < 9.22337204e18)
                        {
                          v152 = v225;
                          [v225 setXpcActivityTimeSinceLastAbleToRun_];
                          (a2)(v212, v120);
                          v140 = v152;
LABEL_106:
                          if ([v140 numberOfItemsPendingReconciliation] < 1)
                          {
                            [v140 setItemsPendingReconciliation_];
                          }

                          else
                          {
                            v153 = v59[3];
                            v154 = v59[4];
                            v155 = __swift_project_boxed_opaque_existential_1(v59, v153);
                            v156 = v140;
                            v157 = swift_allocObject();
                            v158 = v217;
                            *(v157 + 16) = v119;
                            *(v157 + 24) = v158;
                            v159 = v119;
                            v160 = v158;
                            v161 = v222;
                            sub_1CF256970(v156, v155, sub_1CF8FEBF0, v157, v153, v154);
                            v222 = v161;
                            if (v161)
                            {
                              goto LABEL_116;
                            }

                            v140 = v156;
                          }

                          if ([v140 numberOfItemsPendingScanningDisk] < 1)
                          {
                            [v140 setItemsPendingScanningDisk_];
LABEL_114:
                            if ([v140 numberOfItemsPendingScanningProvider] < 1)
                            {
                              [v140 setItemsPendingScanningProvider_];
                              v181 = v140;
                              v178 = v217;
                            }

                            else
                            {
                              v171 = v59[3];
                              v172 = v59[4];
                              v173 = __swift_project_boxed_opaque_existential_1(v59, v171);
                              v174 = v140;
                              v175 = swift_allocObject();
                              v176 = v217;
                              *(v175 + 16) = v119;
                              *(v175 + 24) = v176;
                              v177 = v119;
                              v178 = v176;
                              v179 = v176;
                              v180 = v222;
                              sub_1CF258EE8(v174, v173, sub_1CF8FEB80, v175, v171, v172);
                              v222 = v180;
                              if (v180)
                              {
                                goto LABEL_116;
                              }

                              v181 = v225;
                            }

                            v182 = *&v178[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
                            v183 = swift_allocObject();
                            v183[2] = v205;
                            v183[3] = v206;
                            v183[4] = v181;

                            v184 = v181;
                            v185 = fpfs_current_log();
                            v225 = fpfs_adopt_log();
                            v186 = swift_allocObject();
                            aBlock = sub_1CF9E73C8();
                            v231 = v187;
                            MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
                            v188 = sub_1CF9E7988();
                            MEMORY[0x1D3868CC0](v188);

                            sub_1CF9E6978();

                            v189 = __fp_log_fork();

                            *(v186 + 16) = v189;
                            v190 = swift_allocObject();
                            *(v190 + 16) = v185;
                            *(v190 + 24) = v186;
                            *(v190 + 32) = v182;
                            *(v190 + 40) = "importProgress(completionHandler:)";
                            *(v190 + 48) = 34;
                            *(v190 + 56) = 2;
                            *(v190 + 64) = sub_1CF8FEB74;
                            *(v190 + 72) = v183;
                            v232[2] = sub_1CF2B9F54;
                            v232[3] = v190;
                            aBlock = MEMORY[0x1E69E9820];
                            v231 = 1107296256;
                            v232[0] = sub_1CEFCA444;
                            v232[1] = &block_descriptor_4642;
                            v191 = _Block_copy(&aBlock);
                            v223 = v185;

                            v192 = v182;

                            v193 = v207;
                            sub_1CF9E63F8();
                            v227 = MEMORY[0x1E69E7CC0];
                            sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
                            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
                            sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
                            v194 = v209;
                            v195 = v202;
                            sub_1CF9E77B8();
                            sub_1CF9E7308();
                            _Block_release(v191);
                            (*(v211 + 8))(v194, v195);
                            (*(v208 + 8))(v193, v210);

                            v196 = v225;
                            v197 = fpfs_adopt_log();

                            return;
                          }

                          v162 = v59[3];
                          v163 = v59[4];
                          v164 = __swift_project_boxed_opaque_existential_1(v59, v162);
                          v165 = v140;
                          v166 = swift_allocObject();
                          v167 = v217;
                          *(v166 + 16) = v119;
                          *(v166 + 24) = v167;
                          v168 = v119;
                          v169 = v167;
                          v170 = v222;
                          sub_1CF25797C(v165, v164, sub_1CF8FEBB8, v166, v162, v163);
                          v222 = v170;
                          if (!v170)
                          {

                            v140 = v165;
                            goto LABEL_114;
                          }

LABEL_116:

                          return;
                        }

                        goto LABEL_128;
                      }

LABEL_127:
                      __break(1u);
LABEL_128:
                      __break(1u);
                      goto LABEL_131;
                    }

LABEL_126:
                    __break(1u);
                    goto LABEL_127;
                  }

                  goto LABEL_144;
                }

LABEL_125:
                __break(1u);
                goto LABEL_126;
              }

LABEL_124:
              __break(1u);
              goto LABEL_125;
            }

            goto LABEL_122;
          }

LABEL_144:
          MEMORY[0x1EEE9AC00](v36);
          v199 = &v200[-4];
          v200[-2] = v223;
LABEL_134:
          fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v199, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
        }

LABEL_139:
        MEMORY[0x1EEE9AC00](v115);
        v198 = &v200[-4];
        v200[-2] = v114;
LABEL_132:
        fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v198, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
      }
    }

    MEMORY[0x1EEE9AC00](v118);
    v199 = &v200[-4];
    v200[-2] = v114;
    goto LABEL_134;
  }

  v201 = (v220 + 8);
  v200[1] = *MEMORY[0x1E6967280];
  v200[2] = *MEMORY[0x1E6967258];
  v220 = v60;
  while (1)
  {
    v61 = objc_autoreleasePoolPush();
    v62 = v60;
    v63 = [v62 longAtIndex_];
    if (v63 == 0x8000000000000000)
    {
      v65 = 2;
      v64 = 1;
      goto LABEL_23;
    }

    v64 = v63;
    if (v63)
    {
      break;
    }

    v65 = 2;
LABEL_23:
    v66 = 1;
LABEL_28:

    if ([v62 isNullAtIndex_])
    {
      goto LABEL_31;
    }

    v67 = [v62 dataAtIndex_];
    v68 = sub_1CF9E5B88();
    v70 = v69;

    v71 = v222;
    sub_1CF4C2898(v68, v70);
    v222 = v71;
    if (v71)
    {
      sub_1CEFE4714(v68, v70);
      goto LABEL_98;
    }

    v73 = v72;
    sub_1CEFE4714(v68, v70);
    if (!v73)
    {
LABEL_31:
      sub_1CF9E5198();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
      v74 = v221;
      v75 = v204;
      sub_1CF9E57D8();
      v73 = sub_1CF9E50D8();
      (*v201)(v74, v75);
    }

    v76 = [v62 integerAtIndex_];
    if (v64)
    {
      v77 = 0;
    }

    else
    {
      v77 = v66;
    }

    if (v77)
    {
      v78 = v232;
    }

    else
    {
      if (v64 == 1)
      {
        v79 = v66;
      }

      else
      {
        v79 = 0;
      }

      if ((v79 & 1) == 0)
      {
        aBlock = 0x2F73662F70665F5FLL;
        v231 = 0xE800000000000000;
        if (v65)
        {
          if (v65 == 1)
          {
            v226 = v64;
            v227 = 0x284449656C6966;
            v228 = 0xE700000000000000;
            goto LABEL_47;
          }

          if (v64)
          {
            v82 = 0x6873617274;
          }

          else
          {
            v82 = 1953460082;
          }

          if (v64)
          {
            v83 = 0xE500000000000000;
          }

          else
          {
            v83 = 0xE400000000000000;
          }
        }

        else
        {
          v227 = 0x284449636F64;
          v228 = 0xE600000000000000;
          LODWORD(v226) = v64;
LABEL_47:
          v81 = sub_1CF9E7F98();
          MEMORY[0x1D3868CC0](v81);

          MEMORY[0x1D3868CC0](41, 0xE100000000000000);
          v82 = v227;
          v83 = v228;
        }

        MEMORY[0x1D3868CC0](v82, v83);

        v80 = sub_1CF9E6888();

        goto LABEL_55;
      }

      v78 = &v231;
    }

    v80 = *(v78 - 32);
LABEL_55:
    v84 = objc_allocWithZone(MEMORY[0x1E6967358]);
    v85 = sub_1CF9E57E8();
    [v84 initWithItemIdentifier:v80 error:v85 retryCount:v76];

    MEMORY[0x1D3868FA0]();
    if (*((v229 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v229 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v87 = *((v229 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1CF9E6D88();
    }

    sub_1CF9E6DE8();
    objc_autoreleasePoolPop(v61);
    v86 = [v62 next];
    v43 = v225;
    v60 = v220;
    if ((v86 & 1) == 0)
    {
      goto LABEL_58;
    }
  }

  if ((v63 & 0x8000000000000000) == 0)
  {
    v66 = 0;
    v65 = 1;
    goto LABEL_28;
  }

  v64 = -v63;
  if (!(-v63 >> 32))
  {
    v66 = 0;
    v65 = 0;
    goto LABEL_28;
  }

  sub_1CF9E51B8();
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
  v141 = v221;
  v142 = v204;
  sub_1CF9E57D8();
  v143 = sub_1CF9E50D8();
  (*v201)(v141, v142);
  v222 = v143;
  swift_willThrow();

LABEL_98:
  objc_autoreleasePoolPop(v61);
}

uint64_t sub_1CF889290()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000AELL, 0x80000001CFA5E350);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA5E400);
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA5E110);
  v2 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v2);

  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA3D070);
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA3D070);
  v4 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v4);

  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA3D070);
  v5 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v5);

  MEMORY[0x1D3868CC0](0xD000000000000028, 0x80000001CFA5E430);
  return 0;
}

uint64_t sub_1CF8894BC()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000C8, 0x80000001CFA5E010);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0xD000000000000028, 0x80000001CFA5E0E0);
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA5E110);
  v2 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v2);

  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA3D070);
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA3D070);
  v4 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v4);

  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA3D070);
  v5 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v5);

  MEMORY[0x1D3868CC0](0xD000000000000047, 0x80000001CFA5E130);
  return 0;
}

uint64_t sub_1CF8896E8()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000B8, 0x80000001CFA5E230);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA5E2F0);
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  MEMORY[0x1D3868CC0](0xD00000000000002BLL, 0x80000001CFA5E320);
  return 0;
}

uint64_t sub_1CF889804()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000071, 0x80000001CFA5E180);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0xD000000000000023, 0x80000001CFA3B140);
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  MEMORY[0x1D3868CC0](0xD000000000000023, 0x80000001CFA3B140);
  v2 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v2);

  MEMORY[0x1D3868CC0](0xD000000000000023, 0x80000001CFA3B140);
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA5E200);
  return 0;
}

void sub_1CF88999C(unint64_t a1, int a2, id a3, NSObject *a4)
{
  v6 = a1;
  if (!a1)
  {
    goto LABEL_10;
  }

  if (a1 >> 62)
  {
    if (sub_1CF9E7818())
    {
      goto LABEL_4;
    }

LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1D3869C30](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v7 = *(v6 + 32);
  }

  v6 = v7;
LABEL_10:
  [a3 setDiagnosticAttributes_];

  dispatch_group_leave(a4);
}

void sub_1CF889A58(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      v7 = [objc_allocWithZone(MEMORY[0x1E69674D0]) initWithFileID_];
    }

    else
    {
      if (v6)
      {
        if (qword_1EDEA3498 != -1)
        {
          swift_once();
        }

        v8 = qword_1EDEA34A0;
      }

      else
      {
        if (qword_1EDEA34B0 != -1)
        {
          swift_once();
        }

        v8 = qword_1EDEA34B8;
      }

      v7 = [objc_allocWithZone(MEMORY[0x1E69674D0]) initWithItemID_];
    }
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E69674D0]) initWithDocID_];
  }

  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1CFA00250;
  *(v10 + 32) = v9;
  sub_1CEFD57E0(0, &qword_1EC4C4C10, 0x1E69674D0);
  v11 = v9;
  v12 = sub_1CF9E6D28();

  v14[4] = a2;
  v14[5] = a3;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1CF8BE8C4;
  v14[3] = &block_descriptor_3205;
  v13 = _Block_copy(v14);

  [v3 getDiagnosticAttributesForItems:v12 completionHandler:v13];

  _Block_release(v13);
}

void sub_1CF889C80(unint64_t a1, void *a2, void *a3, NSObject *a4, const char *a5)
{
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v30 = a3;
    v16 = a2;
    v17 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v18 = a2;
    v19 = sub_1CF9E6108();
    v20 = sub_1CF9E72A8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v29 = a4;
      v22 = v21;
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = a2;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_1CEFC7000, v19, v20, a5, v22, 0xCu);
      sub_1CEFCCC44(v23, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v23, -1, -1);
      v26 = v22;
      a4 = v29;
      MEMORY[0x1D386CDC0](v26, -1, -1);
    }

    else
    {
    }

    (*(v11 + 8))(v15, v10);
    a3 = v30;
  }

  if (!a1)
  {
    goto LABEL_14;
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

LABEL_14:
    v28 = 0;
    goto LABEL_15;
  }

  if (!sub_1CF9E7818())
  {
    goto LABEL_14;
  }

LABEL_9:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v27 = MEMORY[0x1D3869C30](0, a1, v13);
    goto LABEL_12;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v27 = *(a1 + 32);
LABEL_12:
    v28 = v27;
LABEL_15:
    [a3 setDiagnosticAttributes_];

    dispatch_group_leave(a4);
    return;
  }

  __break(1u);
}

uint64_t sub_1CF889F00(uint64_t (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
{
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v11 = sub_1CF9E6108();
  v12 = sub_1CF9E7298();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1CEFC7000, v11, v12, "finished gathering import progress", v13, 2u);
    MEMORY[0x1D386CDC0](v13, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  return a1(a3, 0);
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FPDDomainFPFSBackend.createIndexer(with:enabled:)(FPDDomainIndexer *__return_ptr retstr, FPDExtension *with, Swift::Bool enabled)
{
  v4 = fpfs_supports_indexAllRemoteItems();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = type metadata accessor for FPFSIndexer();
    v8 = objc_allocWithZone(v7);
    *&v8[OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_enumerator] = 0;
    v9 = OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_lastIndexedAnchor;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
    (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
    *&v8[OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_spotlightIndexer] = 0;
    v11 = [v6 provider];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 asAppExtensionBackedProvider];

      v14.receiver = v8;
      v14.super_class = v7;
      [(FPDDomainIndexer *)&v14 initWithExtension:v13 domain:v6 enabled:enabled supportingIndexAll:v4];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void FPDDomainFPFSBackend.values(forAttributes:for:request:completionHandler:)(unint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v30 = a1;
  v31 = a5;
  v37 = a4;
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
  v36 = swift_allocBox();
  v13 = v12;
  v14 = *(v11 + 48);
  v15 = *(v9 + 16);
  v33 = a2;
  v34 = v8;
  v15(v12, a2, v8);
  *(v13 + v14) = a3;
  v16 = swift_allocObject();
  v17 = v30;
  v18 = v31;
  v16[2] = v37;
  v16[3] = v18;
  v16[4] = v17;
  v32 = *&v5[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v37 = v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  v20 = a3;

  if (Strong)
  {
    v31 = [Strong log];
  }

  else
  {
    v31 = 0;
  }

  v21 = v35;
  v30 = v36 | 0x9000000000000002;
  v22 = v34;
  v15(v35, v33, v34);
  v23 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v24 = (v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v37;
  *(v25 + 16) = v37;
  (*(v9 + 32))(v25 + v23, v21, v22);
  *(v25 + v24) = v30;
  v27 = v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v27 = sub_1CF8F0FB4;
  *(v27 + 8) = v16;
  *(v27 + 16) = 1;
  v28 = v26;

  v29 = v31;
  sub_1CF01001C(v31, "item(for:userRequest:hideIgnoredDescendents:tryOptimizeResponsiveness:completionHandler:)", 89, 2, sub_1CF902D80, v25);
}

uint64_t sub_1CF88A568(void *a1, char a2, uint64_t (*a3)(void, void *, __n128), uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ItemMetadata();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v14 = a1;
    return a3(0, v14, v11);
  }

  if (!a1)
  {
    v14 = 0;
    return a3(0, v14, v11);
  }

  if ([a1 isExcludedFromSync])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5038, &qword_1CFA181D8);
    inited = swift_initStackObject();
    v16 = *MEMORY[0x1E695DBD8];
    *(inited + 32) = *MEMORY[0x1E695DBD8];
    *(inited + 16) = xmmword_1CF9FA440;
    v17 = MEMORY[0x1E69E6370];
    *(inited + 40) = 0;
    v18 = *MEMORY[0x1E695DCC0];
    *(inited + 64) = v17;
    *(inited + 72) = v18;
    *(inited + 104) = v17;
    *(inited + 80) = 1;
    v19 = v16;
    v20 = v18;
    v21 = sub_1CF4E45D8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5040, &unk_1CFA181E0);
    swift_arrayDestroy();
    (a3)(v21, 0);
  }

  else
  {
    type metadata accessor for URLResourceKey(0);
    v23 = sub_1CF9E6D28();
    v24 = FPDictFromVendorItem();

    if (v24)
    {
      sub_1CEFCCCA4(&qword_1EDEA3660, type metadata accessor for URLResourceKey);
      v26 = sub_1CF9E6638();
    }

    else
    {
      v26 = 0;
    }

    v27 = *MEMORY[0x1E695DBD8];
    *&v41 = *MEMORY[0x1E695DBD8];
    MEMORY[0x1EEE9AC00](v25);
    *(&v38 - 2) = &v41;
    v28 = sub_1CF7F75A8(sub_1CF0185BC, (&v38 - 4), a5);
    if ((v28 & 1) != 0 && v26)
    {
      v42 = MEMORY[0x1E69E6370];
      LOBYTE(v41) = 1;
      sub_1CEFE9EB8(&v41, v40);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v26;
      v28 = sub_1CF1D3E8C(v40, v27, isUniquelyReferenced_nonNull_native);
      v26 = v39;
    }

    v30 = *MEMORY[0x1E695DCA8];
    *&v41 = *MEMORY[0x1E695DCA8];
    MEMORY[0x1EEE9AC00](v28);
    *(&v38 - 2) = &v41;
    if (sub_1CF7F75A8(sub_1CF902E18, (&v38 - 4), a5))
    {
      sub_1CEFF54BC(v13);
      v31 = *v13;
      sub_1CEFD5338(v13, type metadata accessor for ItemMetadata);
      if ((v31 - 1) >= 2)
      {
        if (v26)
        {
          v32 = [a1 conflictingVersions];
          if (v32)
          {
            v33 = v32;
            sub_1CEFD57E0(0, &unk_1EDEAB5A0, 0x1E69674E8);
            v34 = sub_1CF9E6D48();

            if (v34 >> 62)
            {
              v35 = sub_1CF9E7818();
            }

            else
            {
              v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v36 = v35 != 0;
          }

          else
          {
            v36 = 0;
          }

          v42 = MEMORY[0x1E69E6370];
          LOBYTE(v41) = v36;
          sub_1CEFE9EB8(&v41, v40);
          v37 = swift_isUniquelyReferenced_nonNull_native();
          v39 = v26;
          sub_1CF1D3E8C(v40, v30, v37);
          v26 = v39;
        }
      }
    }

    (a3)(v26, 0);
  }
}

void sub_1CF88AB48(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    type metadata accessor for URLResourceKey(0);
    sub_1CEFCCCA4(&qword_1EDEA3660, type metadata accessor for URLResourceKey);
    v5 = sub_1CF9E6618();
  }

  if (a2)
  {
    v6 = sub_1CF9E57E8();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_1CF88AC2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = a3;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1CF8FEA24;
  *(v11 + 24) = v9;
  swift_retain_n();
  v12 = a4;

  sub_1CF7AAF88("isItemDataless(for:completion:)", 31, 2, 2, sub_1CF9034B8, v11, sub_1CF8FEA2C, v10);
}

void sub_1CF88AD68(void (*a1)(void, id))
{
  v2 = FPUserCancelledError();
  a1(0, v2);
}

void sub_1CF88ADC8(void *a1, void *a2, uint64_t a3, void (*a4)(void, id), uint64_t a5)
{
  v39 = a5;
  v40 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v37 = *(v12 - 8);
  v13 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v18 = __swift_project_boxed_opaque_existential_1(a1, v16);
  v38 = a2;
  sub_1CEFD4E9C([a2 identifier]);
  v19 = *(a3 + 16);
  v20 = v46;
  sub_1CF554678(v19, 0, v18, v16, v17, &v43);

  if (!v20)
  {
    v46 = v12;
    v36 = v15;
    v21 = v43;
    v22 = v44;
    if (v45)
    {
      sub_1CEFD0994(v43, v44, 1);
      v23 = [v38 identifier];
      found = FPItemNotFoundError();
LABEL_4:
      v25 = found;

      v40(0, v25);
      return;
    }

    v26 = a1[3];
    v27 = a1[4];
    v28 = __swift_project_boxed_opaque_existential_1(a1, v26);
    v29 = *(v19 + 32);
    v41 = v21;
    v42 = v22;
    v30 = *(*v29 + 240);

    v30(&v41, 1, v28, v26, v27);

    v31 = v46;
    if ((*(v37 + 48))(v11, 1, v46) == 1)
    {
      sub_1CEFCCC44(v11, &qword_1EC4C1B40, &unk_1CF9FCB70);
      v23 = [v38 identifier];
      found = FPItemNotFoundError();
      goto LABEL_4;
    }

    v32 = v36;
    sub_1CEFE55D0(v11, v36, &unk_1EC4BE360, &qword_1CF9FE650);
    v33 = v32 + *(v31 + 48);
    v34 = type metadata accessor for ItemMetadata();
    v40(*(v33 + *(v34 + 80)), 0);
    sub_1CEFCCC44(v32, &unk_1EC4BE360, &qword_1CF9FE650);
  }
}

uint64_t sub_1CF88B118(uint64_t a1, void (*a2)(char *))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v9 - v5;
  v7 = sub_1CF9E5A58();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  a2(v6);
  return sub_1CEFCCC44(v6, &unk_1EC4BE310, qword_1CF9FCBE0);
}

uint64_t sub_1CF88B200(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = a3;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1CF8FEA4C;
  *(v11 + 24) = v9;
  swift_retain_n();
  v12 = a4;

  sub_1CF7AAF88("materializedURL(for:completion:)", 32, 2, 2, sub_1CF9034B8, v11, sub_1CF8FEA54, v10);
}

uint64_t sub_1CF88B33C(void (*a1)(char *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v8 - v4;
  v6 = sub_1CF9E5A58();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  a1(v5);
  return sub_1CEFCCC44(v5, &unk_1EC4BE310, qword_1CF9FCBE0);
}

uint64_t sub_1CF88B424(void *a1, void *a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v114 = a4;
  v115 = a5;
  v8 = sub_1CF9E6388();
  v108 = *(v8 - 8);
  v109 = v8;
  v9 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v107 = (&v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v105 = &v89 - v12;
  v106 = sub_1CF9E6498();
  v104 = *(v106 - 8);
  v13 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v103 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v99 = &v89 - v17;
  v18 = sub_1CF9E63D8();
  v96 = *(v18 - 8);
  v97 = v18;
  v19 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v98 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1CF9E6448();
  v101 = *(v21 - 8);
  v102 = v21;
  v22 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v100 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1CF9E73D8();
  v94 = *(v24 - 8);
  v95 = v24;
  v25 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v93 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v113 = &v89 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v111 = &v89 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v110 = *(v33 - 8);
  v34 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v89 - v35;
  v37 = a1[3];
  v38 = a1[4];
  v112 = a1;
  v39 = __swift_project_boxed_opaque_existential_1(a1, v37);
  sub_1CEFD4E9C([a2 identifier]);
  v40 = *(a3 + 16);
  v41 = v131;
  sub_1CF554678(v40, 0, v39, v37, v38, &v122);

  if (!v41)
  {
    v131 = v40;
    v43 = v111;
    v90 = a3;
    v91 = v36;
    v44 = v122;
    v45 = v123;
    if (v124)
    {
      sub_1CEFD0994(v122, v123, 1);
      v46 = sub_1CF9E5A58();
      v47 = v113;
      (*(*(v46 - 8) + 56))(v113, 1, 1, v46);
      v114(v47);
      return sub_1CEFCCC44(v47, &unk_1EC4BE310, qword_1CF9FCBE0);
    }

    v92 = 0;
    v48 = v112[3];
    v89 = v112[4];
    v49 = __swift_project_boxed_opaque_existential_1(v112, v48);
    v50 = *(v131 + 32);
    *&v117[0] = v44;
    BYTE8(v117[0]) = v45;
    v51 = *(*v50 + 240);

    v52 = v43;
    v53 = v49;
    v54 = v92;
    v51(v117, 1, v53, v48, v89);

    v55 = v114;
    v56 = v115;
    v47 = v113;
    if (!v54)
    {
      if ((*(v110 + 48))(v52, 1, v33) == 1)
      {
        sub_1CEFCCC44(v52, &qword_1EC4C1B40, &unk_1CF9FCB70);
        v57 = sub_1CF9E5A58();
        (*(*(v57 - 8) + 56))(v47, 1, 1, v57);
        v55(v47);
        return sub_1CEFCCC44(v47, &unk_1EC4BE310, qword_1CF9FCBE0);
      }

      v92 = 0;
      v58 = v91;
      sub_1CEFE55D0(v52, v91, &unk_1EC4BE360, &qword_1CF9FE650);
      v59 = *(*(v131 + 32) + 16);
      type metadata accessor for VFSFileTree(0);
      v60 = swift_dynamicCastClassUnconditional();
      v112 = *v58;
      LODWORD(v111) = *(v58 + 8);
      v61 = *(v58 + 80);
      v118 = *(v58 + 64);
      v119 = v61;
      v62 = *(v58 + 112);
      v120 = *(v58 + 96);
      v121 = v62;
      v63 = *(v58 + 48);
      v117[0] = *(v58 + 32);
      v117[1] = v63;
      v125 = v117[0];
      v126 = v63;
      v129 = v120;
      v130 = v62;
      v127 = v118;
      v128 = v61;
      v64 = swift_allocObject();
      *(v64 + 2) = v55;
      *(v64 + 3) = v56;
      v114 = v64;
      *(v64 + 4) = v90;
      sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
      v113 = v60;
      v65 = *(v60 + 216);
      v116[12] = MEMORY[0x1E69E7CC0];
      v131 = v59;

      sub_1CEFCCBDC(v117, v116, &unk_1EC4BE330, &unk_1CF9FF010);
      sub_1CEFCCCA4(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);

      v66 = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
      sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
      v67 = v93;
      v68 = v95;
      sub_1CF9E77B8();
      v69 = sub_1CF9E73E8();

      (*(v94 + 8))(v67, v68);
      qos_class_self();
      v70 = v99;
      sub_1CF9E63B8();
      v72 = v96;
      v71 = v97;
      v73 = *(v96 + 48);
      if (v73(v70, 1, v97) == 1)
      {
        (*(v72 + 104))(v98, *MEMORY[0x1E69E7FA0], v71);
        v74 = v73(v70, 1, v71);
        v75 = v108;
        v76 = v100;
        if (v74 != 1)
        {
          sub_1CEFCCC44(v70, &unk_1EC4BE380, &qword_1CFA01BA0);
        }
      }

      else
      {
        (*(v72 + 32))(v98, v70, v71);
        v75 = v108;
        v76 = v100;
      }

      ObjectType = swift_getObjectType();
      sub_1CF9E6428();
      v78 = swift_allocObject();
      v79 = v128;
      *(v78 + 72) = v127;
      *(v78 + 88) = v79;
      v80 = v130;
      *(v78 + 104) = v129;
      *(v78 + 120) = v80;
      v81 = v126;
      *(v78 + 40) = v125;
      v82 = v112;
      *(v78 + 16) = v113;
      *(v78 + 24) = v82;
      *(v78 + 32) = v111;
      *(v78 + 56) = v81;
      *(v78 + 136) = 0;
      *(v78 + 144) = 0;
      *(v78 + 152) = v69;
      *(v78 + 160) = sub_1CF8FEA74;
      *(v78 + 168) = v114;

      sub_1CEFCCBDC(v117, v116, &unk_1EC4BE330, &unk_1CF9FF010);
      swift_unknownObjectRetain();

      sub_1CEFD5828(0, v76, sub_1CF72A328, v78);

      (*(v101 + 8))(v76, v102);
      v83 = v103;
      sub_1CF9E6478();
      v84 = v105;
      sub_1CEFD5B64(v105);
      v85 = v107;
      sub_1CEFD5BD8(v107);
      MEMORY[0x1D3869770](v83, v84, v85, ObjectType);
      v86 = *(v75 + 8);
      v87 = v85;
      v88 = v109;
      v86(v87, v109);
      v86(v84, v88);
      (*(v104 + 8))(v83, v106);
      sub_1CF9E7448();

      swift_unknownObjectRelease();
      sub_1CEFCCC44(v117, &unk_1EC4BE330, &unk_1CF9FF010);
      return sub_1CEFCCC44(v91, &unk_1EC4BE360, &qword_1CF9FE650);
    }
  }

  return result;
}

uint64_t sub_1CF88BF54(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v59 = a3;
  v60 = a2;
  v5 = sub_1CF9E6118();
  v56 = *(v5 - 8);
  v57 = v5;
  v6 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v54 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v58 = &v53 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v53 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v53 - v19;
  v21 = type metadata accessor for VFSItem(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v53 - v27;
  sub_1CEFCCBDC(a1, v16, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v16;
    v61 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    swift_willThrowTypedImpl();

    (*(v22 + 56))(v20, 1, 1, v21);
LABEL_4:
    sub_1CEFCCC44(v20, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v30 = sub_1CF9E5A58();
    v31 = v58;
    (*(*(v30 - 8) + 56))(v58, 1, 1, v30);
    v60(v31);
    return sub_1CEFCCC44(v31, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  sub_1CEFE55D0(v16, v20, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    goto LABEL_4;
  }

  v33 = v28;
  sub_1CEFDA0C4(v20, v28, type metadata accessor for VFSItem);
  sub_1CEFDA34C(v28, v25, type metadata accessor for VFSItem);
  v34 = &v25[*(v21 + 28)];
  LODWORD(v34) = v34[*(type metadata accessor for ItemMetadata() + 80)];
  sub_1CEFD5338(v25, type metadata accessor for VFSItem);
  if (v34 == 1)
  {
    v35 = fpfs_current_or_default_log();
    v36 = v55;
    sub_1CF9E6128();
    v37 = sub_1CF9E6108();
    v38 = sub_1CF9E7298();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v64 = v40;
      *v39 = 136315138;
      v41 = swift_beginAccess();
      v42 = *(v33 + 8);
      v62 = *v33;
      v63 = v42;
      v44 = VFSItemID.description.getter(v41, v43);
      v46 = sub_1CEFD0DF0(v44, v45, &v64);

      *(v39 + 4) = v46;
      _os_log_impl(&dword_1CEFC7000, v37, v38, "materializedURL vfsItem with ID %s is dataless", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x1D386CDC0](v40, -1, -1);
      MEMORY[0x1D386CDC0](v39, -1, -1);
    }

    (*(v56 + 8))(v36, v57);
    v47 = sub_1CF9E5A58();
    v48 = v58;
    (*(*(v47 - 8) + 56))(v58, 1, 1, v47);
  }

  else
  {
    v49 = *(*(*(v53 + 16) + 32) + 16);
    type metadata accessor for VFSFileTree(0);
    v50 = swift_dynamicCastClassUnconditional();

    v51 = objc_sync_enter(v50);
    if (v51)
    {
      MEMORY[0x1EEE9AC00](v51);
      *(&v53 - 2) = v50;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v53 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v52 = objc_sync_exit(v50);
    if (v52)
    {
      MEMORY[0x1EEE9AC00](v52);
      *(&v53 - 2) = v50;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v53 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    v48 = v54;
    sub_1CF25116C(v54);
  }

  v60(v48);
  sub_1CEFCCC44(v48, &unk_1EC4BE310, qword_1CF9FCBE0);
  return sub_1CEFD5338(v33, type metadata accessor for VFSItem);
}

uint64_t FPDDomainFPFSBackend.materializedURL(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = dispatch_group_create();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v5 = swift_allocBox();
  v7 = v6;
  v8 = sub_1CF9E5A58();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  dispatch_group_enter(v4);
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CF8F0FC4;
  *(v10 + 24) = v9;
  v11 = swift_allocObject();
  v11[2] = sub_1CF8F0FC4;
  v11[3] = v9;
  v11[4] = a1;
  swift_retain_n();

  v12 = v4;
  v13 = a1;
  sub_1CEFD4024("materializedURL(for:completion:)", 32, 2, sub_1CF8F0FCC, v10, sub_1CF8F0FD4, v11);

  sub_1CF9E72F8();

  swift_beginAccess();
  sub_1CEFCCBDC(v7, a2, &unk_1EC4BE310, qword_1CF9FCBE0);
}

void sub_1CF88C848(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = swift_projectBox();
  swift_beginAccess();
  sub_1CF8FEA80(a1, v5);
  dispatch_group_leave(a3);
}

uint64_t FPDDomainFPFSBackend.isItemDataless(_:)(void *a1)
{
  v2 = dispatch_group_create();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  dispatch_group_enter(v2);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1CF8F0FE0;
  *(v5 + 24) = v4;
  v6 = swift_allocObject();
  v6[2] = sub_1CF8F0FE0;
  v6[3] = v4;
  v6[4] = a1;
  swift_retain_n();

  v7 = v2;
  v8 = a1;
  sub_1CEFD4024("isItemDataless(for:completion:)", 31, 2, sub_1CF8F1034, v5, sub_1CF8F1064, v6);

  sub_1CF9E72F8();

  swift_beginAccess();
  v9 = *(v3 + 16);

  return v9;
}

uint64_t FPDDomainFPFSBackend.createItemBased(onTemplate:fields:urlWrapper:options:bounceOnCollision:request:completionHandler:)(void *a1, uint64_t a2, void *a3, uint64_t a4, char a5, void *a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a7;
  *(v16 + 24) = a8;
  v17 = swift_allocObject();
  *(v17 + 16) = a7;
  *(v17 + 24) = a8;
  *(v17 + 32) = a1;
  *(v17 + 40) = a5;
  *(v17 + 48) = a6;
  *(v17 + 56) = v8;
  *(v17 + 64) = a2;
  *(v17 + 72) = a3;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1CF90325C;
  *(v18 + 24) = v16;
  v19 = a3;

  swift_retain_n();
  v20 = a1;
  v21 = a6;
  v22 = v8;
  sub_1CEFD4024("createItemBased(onTemplate:fields:urlWrapper:options:bounceOnCollision:request:completionHandler:)", 98, 2, sub_1CF903280, v18, sub_1CF8F1070, v17);
}

uint64_t sub_1CF88CD24(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, void *a6, uint64_t a7, void *a8, void *a9)
{
  v171 = a8;
  v165 = a7;
  v177 = a6;
  LODWORD(v176) = a5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v166 = &v163 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260);
  v167 = *(v16 - 8);
  v17 = v167[8];
  MEMORY[0x1EEE9AC00](v16 - 8);
  v170 = &v163 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v168 = &v163 - v20;
  v169 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v179 = &v163 - v23;
  v24 = sub_1CF9E5FF8();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v163 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v163 - v30;
  v32 = sub_1CF9E6118();
  v33 = *(v32 - 8);
  v181 = v32;
  v182 = v33;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v174 = &v163 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v173 = &v163 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v163 - v39;
  v41 = swift_allocObject();
  *(v41 + 16) = a2;
  *(v41 + 24) = a3;
  v42 = swift_allocObject();
  v164 = a1;
  swift_weakInit();
  v43 = swift_allocObject();
  v43[2] = sub_1CF90325C;
  v43[3] = v41;
  v43[4] = v42;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_1CF902E50;
  *(v44 + 24) = v43;
  v178 = v44;

  v45 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v46 = a4;
  v47 = sub_1CF9E6108();
  v48 = sub_1CF9E72C8();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v49 = 138412546;
    *(v49 + 4) = v46;
    *v50 = v46;
    *(v49 + 12) = 1024;
    *(v49 + 14) = v176 & 1;
    v51 = v46;
    _os_log_impl(&dword_1CEFC7000, v47, v48, "🆕  Going to create an item with template %@ bounceOnCollision %{BOOL}d", v49, 0x12u);
    sub_1CEFCCC44(v50, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v50, -1, -1);
    MEMORY[0x1D386CDC0](v49, -1, -1);
  }

  v52 = v182 + 8;
  v175 = *(v182 + 8);
  v175(v40, v181);
  v53 = [v46 contentType];
  sub_1CF9E5F48();

  sub_1CF9E5FD8();
  LOBYTE(v53) = sub_1CF9E5FB8();
  v54 = *(v25 + 8);
  v54(v28, v24);
  v54(v31, v24);
  if (v53 & 1) == 0 || (v55 = [v46 contentType], sub_1CF9E5F48(), v55, sub_1CF9E5FA8(), LOBYTE(v55) = sub_1CF9E5FB8(), v54(v28, v24), v54(v31, v24), (v55))
  {
    sub_1CF514824("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/fpfs/FPDDomainFPFSBackend.swift", 94, 2, 5101);
  }

  v56 = sub_1CF0689E4();
  v57 = swift_allocObject();
  v58 = v177;
  *(v57 + 16) = v56;
  *(v57 + 24) = v58;
  v183 = v57 | 0x1000000000000002;
  v59 = v164;
  v180 = *(v164 + 16);
  v60 = v56;
  v61 = v58;
  v62 = sub_1CEFD4E9C(v60);
  v163 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
  v63 = swift_allocObject();
  v64 = v178;
  *(v63 + 16) = sub_1CF903440;
  *(v63 + 24) = v64;
  *(v63 + 32) = v59;
  *(v63 + 40) = v60;
  v65 = v165;
  *(v63 + 48) = v165;
  *(v63 + 56) = v46;
  *(v63 + 64) = v176 & 1;
  *(v63 + 72) = v171;
  *(v63 + 80) = a9;
  v176 = v63;
  *(v63 + 88) = v61;
  v66 = a9;
  v67 = v62;
  v68 = v46;
  v171 = v60;
  v69 = v61;

  v70 = v65;
  v71 = fpfs_current_or_default_log();
  v72 = v173;
  sub_1CF9E6128();
  swift_retain_n();

  v73 = sub_1CF9E6108();
  v74 = sub_1CF9E7298();
  v75 = os_log_type_enabled(v73, v74);
  v182 = v52;
  if (v75)
  {
    v76 = swift_slowAlloc();
    v165 = swift_slowAlloc();
    v184[0] = v165;
    *v76 = 136315394;
    v77 = swift_beginAccess();
    v79 = *(v62 + 32);
    v80 = *(v67 + 40);
    v81 = v179;
    if (*(v67 + 41))
    {
      v82 = v79;
      v83 = NSFileProviderItemIdentifier.description.getter();
      v85 = v84;
      sub_1CEFD0994(v79, v80, 1);
    }

    else
    {
      v186 = v79;
      v187 = v80;
      v83 = VFSItemID.description.getter(v77, v78);
      v85 = v86;
    }

    v87 = sub_1CEFD0DF0(v83, v85, v184);

    *(v76 + 4) = v87;
    *(v76 + 12) = 2080;
    v88 = sub_1CEFD11AC(v183);
    v90 = v89;

    v91 = sub_1CEFD0DF0(v88, v90, v184);

    *(v76 + 14) = v91;
    _os_log_impl(&dword_1CEFC7000, v73, v74, "Request to materialize content of itemID %s reason %s", v76, 0x16u);
    v92 = v165;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v92, -1, -1);
    MEMORY[0x1D386CDC0](v76, -1, -1);

    v175(v173, v181);
  }

  else
  {

    v175(v72, v181);
    v81 = v179;
  }

  v93 = v166;
  v177 = v67;
  sub_1CEFCCBDC(v180 + qword_1EDEBBC18, v166, &qword_1EC4BFB10, &unk_1CFA12AD0);
  v94 = type metadata accessor for TelemetrySignposter(0);
  v95 = (*(*(v94 - 8) + 48))(v93, 1, v94);
  v172 = v57;
  if (v95 == 1)
  {
    sub_1CEFCCC44(v93, &qword_1EC4BFB10, &unk_1CFA12AD0);
    v96 = 1;
  }

  else
  {
    sub_1CF519DE8(0, v81);
    sub_1CEFD5338(v93, type metadata accessor for TelemetrySignposter);
    v96 = 0;
  }

  v97 = type metadata accessor for TelemetrySignpost(0);
  (*(*(v97 - 8) + 56))(v81, v96, 1, v97);
  v98 = v168;
  sub_1CEFCCBDC(v81, v168, qword_1EC4C1588, &unk_1CFA0A260);
  v99 = *(v167 + 80);
  v100 = (v99 + 16) & ~v99;
  v101 = v169;
  v102 = (v169 + v100 + 7) & 0xFFFFFFFFFFFFFFF8;
  v103 = swift_allocObject();
  sub_1CEFE55D0(v98, v103 + v100, qword_1EC4C1588, &unk_1CFA0A260);
  v104 = (v103 + v102);
  v105 = v176;
  *v104 = sub_1CF8FE8D4;
  v104[1] = v105;
  v106 = v170;
  sub_1CEFCCBDC(v81, v170, qword_1EC4C1588, &unk_1CFA0A260);
  v107 = (v99 + 24) & ~v99;
  v169 = (v107 + v101 + 7) & 0xFFFFFFFFFFFFFFF8;
  v108 = (v107 + v101 + 31) & 0xFFFFFFFFFFFFFFF8;
  v173 = ((v108 + 15) & 0xFFFFFFFFFFFFFFF8);
  v109 = (v108 + 31) & 0xFFFFFFFFFFFFFFF8;
  v110 = (v109 + 15) & 0xFFFFFFFFFFFFFFF8;
  v111 = swift_allocObject();
  *(v111 + 16) = v183;
  sub_1CEFE55D0(v106, v111 + v107, qword_1EC4C1588, &unk_1CFA0A260);
  v112 = v111 + v169;
  *v112 = sub_1CF8FE8D4;
  *(v112 + 8) = v105;
  *(v112 + 16) = 0;
  *(v111 + v108) = v180;
  v113 = &v173[v111];
  v114 = v177;
  *v113 = v177;
  v113[8] = 0;
  *(v111 + v109) = 0;
  v115 = v163;
  *(v111 + v110) = v163;
  v116 = v111 + ((v110 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v116 = sub_1CF903314;
  *(v116 + 8) = v103;
  *(v116 + 16) = 1;
  v117 = objc_allocWithZone(MEMORY[0x1E696AE38]);
  swift_retain_n();

  v118 = v115;
  v173 = v103;

  v119 = [v117 init];
  v120 = swift_allocObject();
  v120[2] = sub_1CF903318;
  v120[3] = v111;
  v120[4] = v183;
  swift_retain_n();
  v169 = v111;
  swift_retain_n();
  v121 = fpfs_current_or_default_log();
  v122 = v174;
  sub_1CF9E6128();
  swift_retain_n();

  v123 = sub_1CF9E6108();
  v124 = sub_1CF9E7298();
  v125 = os_log_type_enabled(v123, v124);
  v170 = v119;
  if (v125)
  {
    v167 = v120;
    v168 = v118;
    v126 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v185 = v127;
    *v126 = 136315906;
    v128 = swift_beginAccess();
    v130 = v114[4];
    v131 = *(v114 + 40);
    if (*(v114 + 41))
    {
      v132 = v130;
      v133 = NSFileProviderItemIdentifier.description.getter();
      v135 = v134;
      sub_1CEFD0994(v130, v131, 1);
    }

    else
    {
      v186 = v114[4];
      v187 = v131;
      v133 = VFSItemID.description.getter(v128, v129);
      v135 = v137;
    }

    v138 = v179;
    v139 = sub_1CEFD0DF0(v133, v135, &v185);

    *(v126 + 4) = v139;
    *(v126 + 12) = 2080;
    *(v126 + 14) = sub_1CEFD0DF0(0x74616761706F7270, 0xED000053466F5465, &v185);
    *(v126 + 22) = 2080;
    v140 = sub_1CEFD11AC(v183);
    v142 = v141;

    v143 = sub_1CEFD0DF0(v140, v142, &v185);

    *(v126 + 24) = v143;
    *(v126 + 32) = 2048;
    *(v126 + 34) = 0;
    _os_log_impl(&dword_1CEFC7000, v123, v124, "Lookup itemID %s with behavior %s request %s iteration %ld", v126, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v127, -1, -1);
    MEMORY[0x1D386CDC0](v126, -1, -1);

    v175(v174, v181);
    v114 = v177;
    v118 = v168;
    v120 = v167;
    v136 = v138;
  }

  else
  {

    v175(v122, v181);
    v136 = v179;
  }

  swift_beginAccess();
  v144 = v114[4];
  v145 = *(v114 + 40);
  if ((*(v114 + 41) & 1) == 0)
  {
    if (!v144 && v145 == 2)
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  v146 = qword_1EDEA34B0;
  v147 = v144;
  if (v146 != -1)
  {
    swift_once();
  }

  v148 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v150 = v149;
  if (v148 != _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() || v150 != v151)
  {
    v153 = sub_1CF9E8048();

    sub_1CEFD0994(v144, v145, 1);
    v114 = v177;
    if (v153)
    {
      goto LABEL_28;
    }

LABEL_30:
    v154 = swift_allocObject();
    v155 = v183;
    *(v154 + 16) = v183;
    v168 = v118;
    v156 = v154 | 0x7000000000000004;
    v157 = swift_allocObject();
    *(v157 + 16) = sub_1CF796A0C;
    *(v157 + 24) = v120;
    v158 = v180;
    *(v157 + 32) = v180;
    *(v157 + 40) = 1;
    *(v157 + 48) = v155;
    *(v157 + 56) = v114;
    *(v157 + 64) = 0;
    v152 = v170;
    *(v157 + 72) = v170;
    *(v157 + 80) = 0;
    v159 = swift_allocObject();
    *(v159 + 16) = v114;
    *(v159 + 24) = v158;
    *(v159 + 32) = 0;
    *(v159 + 40) = sub_1CF796A90;
    *(v159 + 48) = v157;
    *(v159 + 56) = v156;
    v160 = swift_allocObject();
    *(v160 + 16) = sub_1CF796A90;
    *(v160 + 24) = v157;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    v161 = v152;

    sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v160, sub_1CF796A9C, v159);

    v136 = v179;

    v118 = v168;

    goto LABEL_31;
  }

  sub_1CEFD0994(v144, v145, 1);
LABEL_28:
  sub_1CF90CAC8(v183, sub_1CF796A0C, v120);

  v152 = v170;
LABEL_31:

  sub_1CEFCCC44(v136, qword_1EC4C1588, &unk_1CFA0A260);
}

void sub_1CF88DF04(uint64_t a1, void (*a2)(void, id), uint64_t a3, uint64_t (*a4)(), uint64_t a5, void *a6, uint64_t *a7, int a8, char *a9, char *a10, uint64_t a11)
{
  v285 = a8;
  v308 = a7;
  v297 = a6;
  v298 = a5;
  v305 = a4;
  v322 = *MEMORY[0x1E69E9840];
  v14 = sub_1CF9E5248();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v282 = &v271 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v284 = sub_1CF9E5268();
  v283 = *(v284 - 1);
  v17 = *(v283 + 64);
  MEMORY[0x1EEE9AC00](v284);
  v281 = &v271 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v280 = &v271 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v291 = &v271 - v23;
  v306 = sub_1CF9E5A58();
  v307 = *(v306 - 8);
  v24 = v307[8];
  MEMORY[0x1EEE9AC00](v306);
  v299 = &v271 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = sub_1CF9E6118();
  v303 = *(v304 - 1);
  v26 = *(v303 + 64);
  MEMORY[0x1EEE9AC00](v304);
  v295 = &v271 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v289 = &v271 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v286 = &v271 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v302 = &v271 - v33;
  v301 = sub_1CF9E5CF8();
  v300 = *(v301 - 8);
  v34 = *(v300 + 64);
  MEMORY[0x1EEE9AC00](v301);
  v296 = &v271 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v292 = &v271 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v271 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v44 = &v271 - v43;
  v293 = type metadata accessor for VFSItem(0);
  v294 = *(v293 - 8);
  v45 = *(v294 + 64);
  MEMORY[0x1EEE9AC00](v293);
  v279 = &v271 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v288 = &v271 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v290 = (&v271 - v50);
  v287 = v51;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v271 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v58 = (&v271 - v57);
  sub_1CEFCCBDC(a1, &v271 - v57, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v59 = *v58;
    v60 = *v58;
    a2(0, v59);

    goto LABEL_71;
  }

  v277 = a2;
  v278 = a3;
  sub_1CEFDA0C4(v58, v54, type metadata accessor for VFSItem);
  v61 = *(v305 + 2);
  v62 = *(*(v61 + 32) + 16);
  type metadata accessor for VFSFileTree(0);
  v63 = swift_dynamicCastClassUnconditional();

  v64 = objc_sync_enter(v63);
  if (v64)
  {
    goto LABEL_74;
  }

  v65 = v54;
  v66 = objc_sync_exit(v63);
  v67 = v306;
  v68 = v307;
  if (v66)
  {
    MEMORY[0x1EEE9AC00](v66);
    v269 = v63;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v268, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v69 = swift_allocBox();
  v71 = v70;
  sub_1CF25116C(v44);
  if ((v68[6])(v44, 1, v67) == 1)
  {
    sub_1CEFCCC44(v44, &unk_1EC4BE310, qword_1CF9FCBE0);
    swift_deallocBox();
    v72 = FPItemNotFoundError();
    v277(0, v72);

    sub_1CEFD5338(v54, type metadata accessor for VFSItem);
    goto LABEL_71;
  }

  v274 = v61;
  (v68[4])(v71, v44, v67);
  v73 = v308;
  v74 = [v308 filename];
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

  sub_1CF9E5938();

  v75 = [v73 contentModificationDate];
  v76 = MEMORY[0x1E69E7CC8];
  if (v75)
  {
    v77 = MEMORY[0x1E69E7CC8];
    v78 = v75;
    sub_1CF9E5CB8();

    v79 = *MEMORY[0x1E696A350];
    v80 = v301;
    v319 = v301;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
    v82 = v300;
    (*(v300 + 16))(boxed_opaque_existential_0, v40, v80);
    sub_1CEFE9EB8(&aBlock, &v315);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v316 = v77;
    sub_1CF1D405C(&v315, v79, isUniquelyReferenced_nonNull_native);
    (*(v82 + 8))(v40, v80);
    v76 = v316;
  }

  v84 = v302;
  v85 = [v73 creationDate];
  if (v85)
  {
    v86 = v292;
    v87 = v76;
    v88 = v85;
    sub_1CF9E5CB8();

    v89 = *MEMORY[0x1E696A308];
    v90 = v301;
    v319 = v301;
    v91 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
    v92 = v300;
    (*(v300 + 16))(v91, v86, v90);
    sub_1CEFE9EB8(&aBlock, &v315);
    v93 = swift_isUniquelyReferenced_nonNull_native();
    v316 = v87;
    sub_1CF1D405C(&v315, v89, v93);
    (*(v92 + 8))(v86, v90);
    v76 = v316;
  }

  v94 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v95 = v73;

  v96 = sub_1CF9E6108();
  v97 = sub_1CF9E7298();

  v98 = os_log_type_enabled(v96, v97);
  v292 = v69;
  v276 = v65;
  v298 = v76;
  v308 = v95;
  if (v98)
  {
    v99 = swift_slowAlloc();
    v273 = swift_slowAlloc();
    *&aBlock = v273;
    *v99 = 136315394;
    v100 = [v95 itemID];
    v101 = [v100 identifier];

    v102 = NSFileProviderItemIdentifier.description.getter();
    v103 = v71;
    v105 = v104;

    v106 = sub_1CEFD0DF0(v102, v105, &aBlock);

    *(v99 + 4) = v106;
    *(v99 + 12) = 2080;
    swift_beginAccess();
    v107 = v307;
    v108 = v307[2];
    LODWORD(v272) = v97;
    v109 = v299;
    v110 = v306;
    v108(v299, v103, v306);
    v111 = sub_1CF9E5928();
    v112 = [v111 fp_shortDescription];

    v113 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v115 = v114;

    v116 = v110;
    (v107[1])(v109, v110);
    v117 = sub_1CEFD0DF0(v113, v115, &aBlock);
    v71 = v103;

    *(v99 + 14) = v117;
    _os_log_impl(&dword_1CEFC7000, v96, v272, "🆕🔁 Making directory for itemID %s at url %s", v99, 0x16u);
    v118 = v273;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v118, -1, -1);
    MEMORY[0x1D386CDC0](v99, -1, -1);

    v119 = v302;
    v302 = *(v303 + 8);
    (v302)(v119, v304);
  }

  else
  {

    v302 = *(v303 + 8);
    (v302)(v84, v304);
    v116 = v306;
    v107 = v307;
    v109 = v299;
  }

  v120 = [objc_opt_self() defaultManager];
  swift_beginAccess();
  v122 = (v107 + 2);
  v121 = v107[2];
  v121(v109, v71, v116);
  v123 = sub_1CF9E5928();
  v126 = v107[1];
  v124 = v107 + 1;
  v125 = v126;
  (v126)(v109, v116);
  type metadata accessor for FileAttributeKey(0);
  sub_1CEFCCCA4(&unk_1EC4BF620, type metadata accessor for FileAttributeKey);
  v127 = sub_1CF9E6618();
  *&aBlock = 0;
  v128 = [v120 createDirectoryAtURL:v123 withIntermediateDirectories:0 attributes:v127 error:&aBlock];

  v129 = aBlock;
  v275 = v71;
  if (v128)
  {
    v130 = v306;
    v121(v109, v71, v306);
    v131 = v129;
    v132 = v291;
    v133 = v305;
    sub_1CF010CE0(v109, 0, 2, 0, v291);
    (v125)(v109, v130);
    v134 = v294;
    if ((*(v294 + 48))(v132, 1, v293) != 1)
    {

      v149 = v290;
      sub_1CEFDA0C4(v132, v290, type metadata accessor for VFSItem);
      v150 = swift_allocObject();
      v151 = v277;
      v152 = v278;
      *(v150 + 16) = v277;
      *(v150 + 24) = v152;
      v153 = swift_allocObject();
      *(v153 + 16) = sub_1CF8F9E94;
      *(v153 + 24) = v150;
      v154 = v288;
      sub_1CEFDA34C(v149, v288, type metadata accessor for VFSItem);
      v155 = (*(v134 + 80) + 24) & ~*(v134 + 80);
      v156 = (v287 + v155 + 7) & 0xFFFFFFFFFFFFFFF8;
      v157 = swift_allocObject();
      *(v157 + 16) = v133;
      sub_1CEFDA0C4(v154, v157 + v155, type metadata accessor for VFSItem);
      v158 = (v157 + v156);
      *v158 = v151;
      v158[1] = v152;
      swift_retain_n();

      sub_1CF7AAF88("createItemBased(onTemplate:fields:urlWrapper:options:bounceOnCollision:request:completionHandler:)", 98, 2, 2, sub_1CF90324C, v153, sub_1CF8FE948, v157);

      sub_1CEFD5338(v290, type metadata accessor for VFSItem);
      goto LABEL_69;
    }

    v272 = v121;
    v273 = v122;
    v290 = v125;
    v307 = v124;
    sub_1CEFCCC44(v132, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CF9E5198();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v135 = v281;
    v136 = v284;
    sub_1CF9E57D8();
    v63 = sub_1CF9E50D8();
    (*(v283 + 8))(v135, v136);
  }

  else
  {
    v272 = v121;
    v273 = v122;
    v290 = v125;
    v307 = v124;
    v137 = aBlock;
    v63 = sub_1CF9E57F8();
  }

  swift_willThrow();
  v314 = v63;
  v138 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  swift_dynamicCast();
  v139 = v313;
  v140 = [v139 code];
  v141 = v292;
  v142 = v276;
  if (v140 != 516)
  {
    goto LABEL_28;
  }

  v143 = [v139 domain];
  v144 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v146 = v145;

  v147 = *MEMORY[0x1E696A250];
  if (v144 != _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() || v146 != v148)
  {
    v159 = sub_1CF9E8048();

    if (v159)
    {

      goto LABEL_25;
    }

LABEL_28:

    v179 = fpfs_current_or_default_log();
    v180 = v295;
    sub_1CF9E6128();

    v181 = v139;
    v182 = sub_1CF9E6108();
    v183 = sub_1CF9E7298();

    if (os_log_type_enabled(v182, v183))
    {
      v184 = swift_slowAlloc();
      v185 = swift_slowAlloc();
      v308 = swift_slowAlloc();
      *&aBlock = v308;
      *v184 = 136315394;
      v186 = v306;
      v272(v109, v275, v306);
      v187 = sub_1CF9E5928();
      v188 = [v187 fp_shortDescription];

      v189 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v191 = v190;

      (v290)(v109, v186);
      v192 = sub_1CEFD0DF0(v189, v191, &aBlock);

      *(v184 + 4) = v192;
      *(v184 + 12) = 2112;
      *(v184 + 14) = v181;
      *v185 = v181;
      v193 = v181;
      _os_log_impl(&dword_1CEFC7000, v182, v183, "🆕🔁 Can't make directory at URL %s, error: %@", v184, 0x16u);
      sub_1CEFCCC44(v185, &qword_1EC4BE350, &unk_1CF9FC3B0);
      v194 = v185;
      v142 = v276;
      MEMORY[0x1D386CDC0](v194, -1, -1);
      v195 = v308;
      __swift_destroy_boxed_opaque_existential_1(v308);
      MEMORY[0x1D386CDC0](v195, -1, -1);
      v196 = v184;
      v141 = v292;
      MEMORY[0x1D386CDC0](v196, -1, -1);

      v197 = v295;
    }

    else
    {

      v197 = v180;
    }

    (v302)(v197, v304);
    v198 = v181;
    v277(0, v181);

    sub_1CF890244(v141, v297);
    v199 = v142;
    goto LABEL_32;
  }

LABEL_25:
  v160 = v306;
  v161 = v289;
  v162 = v286;
  v291 = v139;
  if (v285)
  {
    v163 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v164 = v162;
    v165 = sub_1CF9E6108();
    v166 = sub_1CF9E7298();

    v167 = os_log_type_enabled(v165, v166);
    v284 = v63;
    if (v167)
    {
      v168 = v109;
      v169 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      *&aBlock = v170;
      *v169 = 136315138;
      v272(v168, v275, v160);
      v63 = v164;
      v171 = sub_1CF9E5928();
      v172 = v160;
      v173 = [v171 fp_shortDescription];

      v174 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v176 = v175;

      (v290)(v168, v172);
      v177 = sub_1CEFD0DF0(v174, v176, &aBlock);

      *(v169 + 4) = v177;
      _os_log_impl(&dword_1CEFC7000, v165, v166, "🆕🔁 Bouncing item %s", v169, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v170);
      MEMORY[0x1D386CDC0](v170, -1, -1);
      MEMORY[0x1D386CDC0](v169, -1, -1);

      v178 = v63;
    }

    else
    {

      v178 = v164;
    }

    (v302)(v178, v304);
    v216 = [v308 filename];
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

    sub_1CF9E5CE8();
    sub_1CF51B588(&aBlock);
    v218 = *(&aBlock + 1);
    v217 = aBlock;
    v219 = v318;
    v220 = v319;
    v221 = v321;
    v307 = v320;

    if (v220)
    {
      v222 = 0;
    }

    else
    {
      v222 = v219;
    }

    v305 = v222;
    v223 = [objc_opt_self() fp_maximumBounceLevel];
    if ((v223 & 0x8000000000000000) != 0)
    {
LABEL_72:
      __break(1u);
    }

    v224 = v223;
    v225 = 0;
    v303 = a11;
    v302 = a10;
    v299 = a9;
    while (1)
    {
      LODWORD(v306) = v225;
      if (v225)
      {
        v226 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
        [v226 setDateStyle_];
        v304 = v226;
        [v226 setTimeStyle_];
        v227 = sub_1CF9E5C48();
        v228 = [v226 stringFromDate_];

        v229 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v231 = v230;

        *&aBlock = v229;
        *(&aBlock + 1) = v231;
        v63 = 0xE100000000000000;
        v311 = 58;
        v312 = 0xE100000000000000;
        v309 = 39;
        v310 = 0xE100000000000000;
        v232 = sub_1CEFE4E68();
        v233 = MEMORY[0x1E69E6158];
        v234 = sub_1CF9E7668();
        v236 = v235;

        *&aBlock = v234;
        *(&aBlock + 1) = v236;
        v311 = 47;
        v312 = 0xE100000000000000;
        v309 = 58;
        v310 = 0xE100000000000000;
        v269 = v232;
        v270 = v232;
        v268[0] = v233;
        v268[1] = v232;
        v237 = sub_1CF9E7668();
        v239 = v238;

        *&aBlock = v217;
        *(&aBlock + 1) = v218;
        MEMORY[0x1D3868CC0](0x209380E220, 0xA500000000000000);
        MEMORY[0x1D3868CC0](v237, v239);

        v218 = *(&aBlock + 1);
        v217 = aBlock;
      }

      if (v305 < v224)
      {
        break;
      }

LABEL_41:
      v225 = 1;
      if (v306)
      {
        (*(v300 + 8))(v296, v301);

        __break(1u);
LABEL_74:
        MEMORY[0x1EEE9AC00](v64);
        v269 = v63;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v268, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
      }
    }

    v63 = v305;
    while (1)
    {
      if (v63 == 1)
      {
        goto LABEL_58;
      }

      if (v63)
      {
        break;
      }

      v240 = v217;
      v241 = v218;
      if (v221)
      {
        goto LABEL_49;
      }

LABEL_50:
      v242 = [v308 filename];
      v243 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v245 = v244;

      if (v240 == v243 && v241 == v245)
      {
      }

      else
      {
        v247 = sub_1CF9E8048();

        if ((v247 & 1) == 0)
        {
          (*(v300 + 8))(v296, v301);

          v250 = sub_1CF9E6888();

          v251 = v308;
          [v308 setFilename_];

          v320 = v277;
          v321 = v278;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          v318 = sub_1CEFF9A6C;
          v319 = &block_descriptor_4566;
          v252 = _Block_copy(&aBlock);

          v253 = v297;
          [v297 createItemBasedOnTemplate:v251 fields:v299 urlWrapper:v302 options:0 bounceOnCollision:1 request:v303 completionHandler:v252];
          _Block_release(v252);

          sub_1CF890244(v292, v253);
          sub_1CEFD5338(v276, type metadata accessor for VFSItem);
          goto LABEL_70;
        }
      }

LABEL_58:
      if (v224 == v63)
      {
        goto LABEL_41;
      }

      if (__CFADD__(v63++, 1))
      {
        __break(1u);
        goto LABEL_72;
      }
    }

    *&aBlock = v217;
    *(&aBlock + 1) = v218;

    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v311 = v63;
    v249 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v249);

    v241 = *(&aBlock + 1);
    v240 = aBlock;
    if (!v221)
    {
      goto LABEL_50;
    }

LABEL_49:
    *&aBlock = v240;
    *(&aBlock + 1) = v241;

    MEMORY[0x1D3868CC0](46, 0xE100000000000000);
    MEMORY[0x1D3868CC0](v307, v221);

    v241 = *(&aBlock + 1);
    v240 = aBlock;
    goto LABEL_50;
  }

  v200 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v201 = sub_1CF9E6108();
  v202 = sub_1CF9E7298();

  if (os_log_type_enabled(v201, v202))
  {
    v203 = swift_slowAlloc();
    v308 = swift_slowAlloc();
    *&aBlock = v308;
    *v203 = 136315138;
    v204 = v275;
    LODWORD(v301) = v202;
    v205 = v272;
    v272(v109, v275, v160);
    v206 = sub_1CF9E5928();
    v207 = [v206 fp_shortDescription];

    v208 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v210 = v209;

    v160 = v306;
    v211 = v290;
    (v290)(v299, v306);
    v212 = sub_1CEFD0DF0(v208, v210, &aBlock);
    v109 = v299;

    *(v203 + 4) = v212;
    _os_log_impl(&dword_1CEFC7000, v201, v301, "🆕🔁 Can't make directory, item already exist at URL %s", v203, 0xCu);
    v213 = v308;
    __swift_destroy_boxed_opaque_existential_1(v308);
    MEMORY[0x1D386CDC0](v213, -1, -1);
    v214 = v203;
    v141 = v292;
    MEMORY[0x1D386CDC0](v214, -1, -1);

    (v302)(v289, v304);
    v215 = v305;
  }

  else
  {

    (v302)(v161, v304);
    v215 = v305;
    v204 = v275;
    v211 = v290;
    v205 = v272;
  }

  v205(v109, v204, v160);
  v254 = v280;
  sub_1CF010CE0(v109, 0, 2, 0, v280);
  v211(v109, v160);
  v255 = v294;
  if ((*(v294 + 48))(v254, 1, v293) == 1)
  {
    sub_1CEFCCC44(v254, &unk_1EC4BEC00, &unk_1CF9FCB60);
    type metadata accessor for NSFileProviderError(0);
    v311 = -1001;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
    sub_1CF9E57D8();
    v256 = aBlock;
    v277(0, aBlock);

    sub_1CF890244(v141, v297);
    v199 = v276;
LABEL_32:
    sub_1CEFD5338(v199, type metadata accessor for VFSItem);
    goto LABEL_70;
  }

  v257 = v279;
  sub_1CEFDA0C4(v254, v279, type metadata accessor for VFSItem);
  v258 = swift_allocObject();
  v259 = v277;
  v260 = v278;
  *(v258 + 16) = v277;
  *(v258 + 24) = v260;
  v261 = v288;
  sub_1CEFDA34C(v257, v288, type metadata accessor for VFSItem);
  v262 = (*(v255 + 80) + 24) & ~*(v255 + 80);
  v263 = (v287 + v262 + 7) & 0xFFFFFFFFFFFFFFF8;
  v264 = swift_allocObject();
  *(v264 + 16) = v215;
  sub_1CEFDA0C4(v261, v264 + v262, type metadata accessor for VFSItem);
  v265 = (v264 + v263);
  *v265 = v259;
  v265[1] = v260;
  v266 = swift_allocObject();
  *(v266 + 16) = sub_1CF8FE914;
  *(v266 + 24) = v258;
  swift_retain_n();

  sub_1CF7AAF88("createItemBased(onTemplate:fields:urlWrapper:options:bounceOnCollision:request:completionHandler:)", 98, 2, 2, sub_1CF9034B8, v266, sub_1CF8FE91C, v264);

  sub_1CEFD5338(v257, type metadata accessor for VFSItem);
LABEL_69:
  sub_1CF890244(v292, v297);
  sub_1CEFD5338(v276, type metadata accessor for VFSItem);
LABEL_70:

LABEL_71:
  v267 = *MEMORY[0x1E69E9840];
}

void sub_1CF890244(uint64_t a1, void *a2)
{
  v3 = sub_1CF9E5A58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = swift_projectBox();
  v13 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v14 = sub_1CF9E6108();
  v15 = sub_1CF9E7298();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v35 = v9;
    v17 = v16;
    v34 = swift_slowAlloc();
    v37 = v34;
    *v17 = 136315138;
    v18 = v36;
    swift_beginAccess();
    (*(v4 + 16))(v7, v18, v3);
    v32 = v15;
    v19 = sub_1CF9E5928();
    v20 = [v19 fp_shortDescription];
    v33 = v8;
    v21 = v3;
    v22 = a2;
    v23 = v20;

    v24 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v26 = v25;

    a2 = v22;
    v3 = v21;
    (*(v4 + 8))(v7, v21);
    v27 = sub_1CEFD0DF0(v24, v26, &v37);

    *(v17 + 4) = v27;
    _os_log_impl(&dword_1CEFC7000, v14, v32, "🆕🔁 Forcing ingestion for existing item at %s", v17, 0xCu);
    v28 = v34;
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x1D386CDC0](v28, -1, -1);
    MEMORY[0x1D386CDC0](v17, -1, -1);

    (*(v35 + 8))(v12, v33);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v29 = v36;
  swift_beginAccess();
  (*(v4 + 16))(v7, v29, v3);
  v30 = sub_1CF9E5928();
  (*(v4 + 8))(v7, v3);
  [a2 forceIngestionAtURL_];
}

void sub_1CF8905D8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *, void))
{
  v6 = a1[3];
  v5 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
  v9 = type metadata accessor for VFSItem(0);
  v10 = sub_1CEFCCCA4(qword_1EDEA8860, type metadata accessor for VFSFileTree);
  v11 = sub_1CEFCCCA4(qword_1EDEABC30, type metadata accessor for VFSItem);
  v12 = sub_1CF76BB00(a3, 17, 0, v8, v7, v9, v6, v10, &off_1F4BF8588, v11, v5);

  v13 = v12;
  a4(v12, 0);
}

void sub_1CF89072C(void (*a1)(void))
{
  type metadata accessor for NSFileProviderError(0);
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CEFCCCA4(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
  sub_1CF9E57D8();
  a1(0);
}

void sub_1CF8907EC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, id))
{
  v6 = a1[3];
  v5 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
  v9 = type metadata accessor for VFSItem(0);
  v10 = sub_1CEFCCCA4(qword_1EDEA8860, type metadata accessor for VFSFileTree);
  v11 = sub_1CEFCCCA4(qword_1EDEABC30, type metadata accessor for VFSItem);
  v12 = sub_1CF76BB00(a3, 17, 0, v8, v7, v9, v6, v10, &off_1F4BF8588, v11, v5);

  v13 = [objc_opt_self() fileProviderErrorForCollisionWithItem_];
  a4(0, v13);
}

uint64_t FPDDomainFPFSBackend.forceIngestion(for:request:openFD:completionHandler:)(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *(v12 + 48) = a3;
  *(v12 + 56) = v5;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1CF90325C;
  *(v13 + 24) = v11;
  swift_retain_n();
  v14 = a1;
  v15 = a2;
  v16 = v5;

  sub_1CEFD4024("forceIngestion(for:request:openFD:completionHandler:)", 53, 2, sub_1CF903280, v13, sub_1CF8F1074, v12);
}

uint64_t sub_1CF890C8C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, int a6, void *a7)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = sub_1CF90325C;
  v15[3] = v13;
  v15[4] = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1CF902E50;
  *(v16 + 24) = v15;
  v17 = swift_allocObject();

  *(v17 + 16) = [a4 identifier];
  *(v17 + 24) = a5;
  v18 = a5;
  v19 = sub_1CEFD4E9C([a4 identifier]);
  v20 = swift_allocObject();
  v20[2] = sub_1CF903440;
  v20[3] = v16;
  v20[4] = a7;
  v20[5] = v19;
  v20[6] = v17 | 0x2000000000000000;

  v21 = a7;

  sub_1CF7E69F0(v19, a6, v17 | 0x2000000000000000, sub_1CF8FE74C, v20);
}

void sub_1CF890E84(int a1, id a2, void (*a3)(void, id), uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a2)
  {
    v10 = a2;
    a3(0, a2);
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = a3;
    *(v13 + 24) = a4;

    sub_1CEFD0300(a6, 0, 0, a7, sub_1CF8FE8C8, v13);
  }
}

uint64_t sub_1CF890F74(void *a1, char a2, uint64_t (*a3)(void *, void *))
{
  if (a2)
  {
    v4 = a1;
    return a3(0, v4);
  }

  if (!a1)
  {
    v4 = 0;
    return a3(0, v4);
  }

  v6 = a1;
  a3(a1, 0);

  return sub_1CF2F6594(a1, 0);
}

uint64_t FPDDomainFPFSBackend.forceFSIngestion(for:request:completionHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = v4;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1CF90325C;
  *(v11 + 24) = v9;
  swift_retain_n();
  v12 = a1;
  v13 = a2;
  v14 = v4;

  sub_1CEFD4024("forceFSIngestion(for:request:completionHandler:)", 48, 2, sub_1CF903280, v11, sub_1CF8F108C, v10);
}

uint64_t sub_1CF891300(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = sub_1CF90325C;
  v14[3] = v12;
  v14[4] = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1CF902E50;
  *(v15 + 24) = v14;

  v16 = sub_1CEFD4E9C([a4 identifier]);
  v17 = swift_allocObject();
  *(v17 + 16) = [a4 identifier];
  *(v17 + 24) = a5;
  v18 = swift_allocObject();
  v18[2] = sub_1CF903440;
  v18[3] = v15;
  v18[4] = a1;
  v18[5] = a6;
  v19 = a5;

  v20 = a6;
  sub_1CF7E32DC(v16, v17 | 0x2000000000000000, sub_1CF8FE5C8, v18);
}

uint64_t sub_1CF8914D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, __n128), uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = (&v36 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v36 - v18;
  if (a3)
  {
    return a4(0, a3, v17);
  }

  v38 = v19;
  v39 = a5;
  sub_1CEFCCBDC(a1, v13, &qword_1EC4C1B40, &unk_1CF9FCB70);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v20 = &qword_1EC4C1B40;
    v21 = &unk_1CF9FCB70;
    v22 = v13;
LABEL_11:
    sub_1CEFCCC44(v22, v20, v21);
    return a4(0, a3, v17);
  }

  v23 = v38;
  sub_1CEFE55D0(v13, v38, &unk_1EC4BE360, &qword_1CF9FE650);
  sub_1CEFCCBDC(a2, &v40, &qword_1EC4C0700, &qword_1CFA05B10);
  if (!v41)
  {
    sub_1CEFCCC44(v23, &unk_1EC4BE360, &qword_1CF9FE650);
    v20 = &qword_1EC4C0700;
    v21 = &qword_1CFA05B10;
    v22 = &v40;
    goto LABEL_11;
  }

  sub_1CF054EA0(&v40, v42);
  v24 = v43;
  v36 = v44;
  v37 = __swift_project_boxed_opaque_existential_1(v42, v43);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    v27 = [Strong indexer];

    if (v27)
    {
      v28 = [v27 needsAuthentication];

      if (v28)
      {
        v29 = 25;
      }

      else
      {
        v29 = 17;
      }
    }

    else
    {
      v29 = 17;
    }
  }

  else
  {
    v29 = 17;
  }

  v31 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
  v32 = sub_1CEFCCCA4(qword_1EDEA8860, type metadata accessor for VFSFileTree);
  v33 = sub_1CEFCCCEC(&qword_1EDEA8550, &unk_1EC4BE360, &qword_1CF9FE650);
  v34 = v38;
  v35 = sub_1CF76BB00(v38, v29, 0, v31, v37, v14, v24, v32, &off_1F4BF8588, v33, v36);

  (a4)(v35, 0);

  sub_1CEFCCC44(v34, &unk_1EC4BE360, &qword_1CF9FE650);
  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t sub_1CF891A4C@<X0>(_DWORD *a1@<X8>)
{
  result = fpfs_make_fsevent();
  *a1 = result;
  return result;
}

uint64_t FPDDomainFPFSBackend.pinItem(with:request:completionHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = v4;
  v10[5] = a3;
  v10[6] = a4;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1CF90325C;
  *(v11 + 24) = v9;
  swift_retain_n();
  v12 = a1;
  v13 = a2;
  v14 = v4;

  sub_1CEFD4024("pinItem(with:request:completionHandler:)", 40, 2, sub_1CF903280, v11, sub_1CF8F3484, v10);
}

uint64_t sub_1CF891C88(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1CF9E6118();
  v78 = *(v11 - 8);
  v79 = v11;
  v12 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = [a2 identifier];
  *(v15 + 24) = a3;
  v16 = swift_allocObject();
  v17 = v14;
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = a6;
  v18[4] = v16;
  v18[5] = v15 | 0x3000000000000000;
  v81 = *(a1 + 16);
  v19 = a3;

  v20 = sub_1CEFD4E9C([a2 identifier]);
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a2;
  v21[6] = v15 | 0x3000000000000000;
  v21[7] = sub_1CF902CAC;
  v21[8] = v18;
  v22 = objc_allocWithZone(MEMORY[0x1E696AE38]);

  v23 = a2;

  v24 = [v22 init];
  v25 = swift_allocObject();
  v25[2] = sub_1CF8FE52C;
  v25[3] = v21;
  v80 = v15 | 0x3000000000000000;
  v82 = v25;
  v25[4] = v15 | 0x3000000000000000;
  swift_retain_n();
  swift_retain_n();
  v26 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v83 = v15;
  swift_retain_n();

  v27 = sub_1CF9E6108();
  v28 = sub_1CF9E7298();
  if (os_log_type_enabled(v27, v28))
  {
    v74 = v28;
    v76 = v24;
    v77 = v18;
    v29 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v84 = v73;
    *v29 = 136315906;
    v30 = swift_beginAccess();
    v32 = *(v20 + 32);
    v33 = *(v20 + 40);
    v34 = *(v20 + 41);
    v75 = v17;
    if (v34)
    {
      v35 = v32;
      v36 = NSFileProviderItemIdentifier.description.getter();
      v38 = v37;
      sub_1CEFD0994(v32, v33, 1);
    }

    else
    {
      v85 = v32;
      LOBYTE(v86) = v33;
      v36 = VFSItemID.description.getter(v30, v31);
      v38 = v39;
    }

    v40 = sub_1CEFD0DF0(v36, v38, &v84);

    *(v29 + 4) = v40;
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_1CEFD0DF0(0xD000000000000010, 0x80000001CFA2C3C0, &v84);
    *(v29 + 22) = 2080;
    v42 = *(v83 + 16);
    v41 = *(v83 + 24);
    v85 = 0x286D6574496E6970;
    v86 = 0xE800000000000000;
    v43 = v41;
    v44 = v42;
    v45 = NSFileProviderItemIdentifier.description.getter();
    MEMORY[0x1D3868CC0](v45);

    MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
    v46 = [v43 description];
    v47 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v49 = v48;

    MEMORY[0x1D3868CC0](v47, v49);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);

    v50 = sub_1CEFD0DF0(v85, v86, &v84);

    *(v29 + 24) = v50;
    *(v29 + 32) = 2048;
    *(v29 + 34) = 0;
    _os_log_impl(&dword_1CEFC7000, v27, v74, "Lookup itemID %s with behavior %s request %s iteration %ld", v29, 0x2Au);
    v51 = v73;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v51, -1, -1);
    MEMORY[0x1D386CDC0](v29, -1, -1);

    (*(v78 + 8))(v75, v79);
    v24 = v76;
    v18 = v77;
  }

  else
  {

    (*(v78 + 8))(v17, v79);
  }

  swift_beginAccess();
  v52 = *(v20 + 32);
  v53 = *(v20 + 40);
  if ((*(v20 + 41) & 1) == 0)
  {
    if (!v52 && v53 == 2)
    {
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  v54 = v24;
  v55 = qword_1EDEA34B0;
  v56 = v52;
  if (v55 != -1)
  {
    swift_once();
  }

  v57 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v59 = v58;
  if (v57 != _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() || v59 != v60)
  {
    v61 = sub_1CF9E8048();

    sub_1CEFD0994(v52, v53, 1);
    v24 = v54;
    if (v61)
    {
      goto LABEL_15;
    }

LABEL_17:
    v62 = swift_allocObject();
    v63 = v80;
    *(v62 + 16) = v80;
    v79 = v62 | 0x7000000000000004;
    v64 = swift_allocObject();
    v66 = v81;
    v65 = v82;
    *(v64 + 16) = sub_1CF796A0C;
    *(v64 + 24) = v65;
    v67 = v24;
    *(v64 + 32) = v66;
    *(v64 + 40) = 2;
    *(v64 + 48) = v63;
    *(v64 + 56) = v20;
    *(v64 + 64) = 0;
    *(v64 + 72) = v24;
    *(v64 + 80) = 0;
    v68 = swift_allocObject();
    *(v68 + 16) = v20;
    *(v68 + 24) = v66;
    *(v68 + 32) = 0;
    *(v68 + 40) = sub_1CF796A90;
    *(v68 + 48) = v64;
    *(v68 + 56) = v79;
    v69 = swift_allocObject();
    v77 = v18;
    v70 = v69;
    *(v69 + 16) = sub_1CF796A90;
    *(v69 + 24) = v64;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    v71 = v67;

    sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v70, sub_1CF796A9C, v68);

    v24 = v67;

    goto LABEL_18;
  }

  sub_1CEFD0994(v52, v53, 1);
  v24 = v54;
LABEL_15:
  sub_1CF90CAC8(v80, sub_1CF796A0C, v82);

LABEL_18:
}

void sub_1CF8924D4(uint64_t a1, uint64_t a2, void (*a3)(void, id), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a5;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v30 - v16);
  sub_1CEFCCBDC(a1, &v30 - v16, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;

    sub_1CF791DB8(v18, 0, a2, a3, a4);
  }

  else
  {
    v19 = swift_allocObject();
    *(v19 + 16) = a7;
    *(v19 + 24) = a8;
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    v21[2] = sub_1CF90325C;
    v21[3] = v19;
    v21[4] = v20;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1CF902E50;
    *(v22 + 24) = v21;

    v23 = v31;
    v24 = sub_1CEFD4E9C([v31 identifier]);
    v25 = *(a2 + 16);
    v26 = swift_allocObject();
    *(v26 + 16) = sub_1CF903440;
    *(v26 + 24) = v22;
    v27 = swift_allocObject();
    *(v27 + 16) = v24;
    *(v27 + 24) = a2;
    *(v27 + 32) = v23;
    *(v27 + 40) = sub_1CF903440;
    *(v27 + 48) = v22;
    *(v27 + 56) = 1;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_1CF90325C;
    *(v28 + 24) = v26;
    swift_retain_n();

    v29 = v23;

    sub_1CF7AAF88("updatePinning(of:to:request:completionHandler:)", 47, 2, 2, sub_1CF9034C4, v28, sub_1CF9033C4, v27);

    sub_1CEFCCC44(v17, &unk_1EC4BF300, &unk_1CFA006B0);
  }
}

uint64_t FPDDomainFPFSBackend.unpinItem(with:request:completionHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = v4;
  v10[5] = a3;
  v10[6] = a4;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1CF90325C;
  *(v11 + 24) = v9;
  swift_retain_n();
  v12 = a1;
  v13 = a2;
  v14 = v4;

  sub_1CEFD4024("unpinItem(with:request:completionHandler:)", 42, 2, sub_1CF903280, v11, sub_1CF8F349C, v10);
}

uint64_t sub_1CF892AE8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = [a2 identifier];
  *(v11 + 24) = a3;
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = v12;
  v13[5] = v11 | 0x3000000000000002;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1CF8FE208;
  *(v14 + 24) = v13;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = sub_1CF90325C;
  v16[3] = v14;
  v16[4] = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1CF902E50;
  *(v17 + 24) = v16;
  v18 = a3;

  v19 = sub_1CEFD4E9C([a2 identifier]);
  v20 = *(a1 + 16);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1CF903440;
  *(v21 + 24) = v17;
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  *(v22 + 24) = a1;
  *(v22 + 32) = a2;
  *(v22 + 40) = sub_1CF903440;
  *(v22 + 48) = v17;
  *(v22 + 56) = 0;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1CF90325C;
  *(v23 + 24) = v21;
  swift_retain_n();

  v24 = a2;

  sub_1CF7AAF88("updatePinning(of:to:request:completionHandler:)", 47, 2, 2, sub_1CF7BA950, v23, sub_1CF8FE214, v22);
}

id sub_1CF892F98(uint64_t a1, void *a2, void (*a3)(id), _BYTE *a4)
{
  v32 = a2;
  v8 = sub_1CF9E64A8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a1 + 16);
  v14 = *(*(v13 + 32) + 16);
  type metadata accessor for VFSFileTree(0);
  v15 = *(swift_dynamicCastClassUnconditional() + 216);
  *v12 = v15;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8);
  v16 = v15;
  LOBYTE(v15) = sub_1CF9E64D8();
  v17 = (*(v9 + 8))(v12, v8);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v18 = *(*(v13 + 32) + 16);
  [*(swift_dynamicCastClassUnconditional() + 232) suspend];
  v19 = *(*(v13 + 32) + 16);
  v20 = [*(swift_dynamicCastClassUnconditional() + 248) suspend];
  a3(v20);
  if (v4)
  {
    goto LABEL_6;
  }

  a4 = v34;
  v17 = objc_sync_enter(v34);
  if (v17)
  {
LABEL_8:
    MEMORY[0x1EEE9AC00](v17);
    *(&v31 - 2) = a4;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v31 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  a4[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_urlsAreInTransientState] = 0;
  v21 = &a4[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___cachedURLs];
  v22 = *&a4[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___cachedURLs];
  *v21 = 0;
  v23 = v21[8];
  v21[8] = -1;
  sub_1CF8F0650(v22, v23);
  v24 = objc_sync_exit(a4);
  if (v24)
  {
    MEMORY[0x1EEE9AC00](v24);
    *(&v31 - 2) = a4;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v31 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v25 = *(*(v13 + 32) + 16);
  swift_dynamicCastClassUnconditional();

  v26 = sub_1CEFCE64C();
  sub_1CF261A18(v26);

  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = &block_descriptor_4089;
  v27 = _Block_copy(aBlock);
  [v32 didRefreshRootURLsWithCompletionHandler_];
  _Block_release(v27);
LABEL_6:
  v28 = *(*(v13 + 32) + 16);
  [*(swift_dynamicCastClassUnconditional() + 232) resume];
  v29 = *(*(v13 + 32) + 16);
  return [*(swift_dynamicCastClassUnconditional() + 248) resume];
}

uint64_t FPDDomainFPFSBackend.detachKnownFolders(_:request:completionHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = v9 | 0x3000000000000004;
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = v4;
  v12[5] = a1;
  v12[6] = v10;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v13 = a2;
  v14 = v4;

  sub_1CEFD4024("detachKnownFolders(_:request:completionHandler:)", 48, 2, sub_1CF90324C, v11, sub_1CF8F34B4, v12);
}

void sub_1CF8934F8(NSObject *a1, void (*a2)(id), void *a3, char *a4, unint64_t a5, unint64_t a6)
{
  v253 = a6;
  v11 = sub_1CF9E63A8();
  v227 = *(v11 - 1);
  v12 = *(v227 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v211 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E6448();
  v226 = *(v15 - 8);
  v16 = *(v226 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v225 = &v211 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = sub_1CF9E53C8();
  *&v229 = *(v232 - 8);
  v18 = *(v229 + 64);
  MEMORY[0x1EEE9AC00](v232);
  v231 = &v211 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v20 = *(*(v245 - 8) + 64);
  MEMORY[0x1EEE9AC00](v245);
  v234 = (&v211 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v244 = (&v211 - v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v251 = &v211 - v26;
  v250 = type metadata accessor for VFSItem(0);
  v228 = *(v250 - 8);
  v27 = *(v228 + 64);
  MEMORY[0x1EEE9AC00](v250);
  v241 = &v211 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = sub_1CF9E6118();
  v255 = *(v252 - 8);
  v29 = *(v255 + 64);
  MEMORY[0x1EEE9AC00](v252);
  v249 = &v211 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v248 = &v211 - v32;
  v267 = sub_1CF9E5A58();
  v256 = *(v267 - 8);
  v33 = *(v256 + 8);
  MEMORY[0x1EEE9AC00](v267);
  v224 = &v211 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v247 = &v211 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v258 = &v211 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v266 = (&v211 - v40);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v211 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v257 = &v211 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v254 = &v211 - v47;
  v230 = v48;
  MEMORY[0x1EEE9AC00](v49);
  v233 = &v211 - v50;
  v51 = swift_allocObject();
  v263 = a1;
  swift_weakInit();
  v52 = swift_allocObject();
  v261 = a2;
  v52[2] = a2;
  v52[3] = a3;
  v52[4] = v51;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v236 = a4;
    v235 = Strong;
    v262 = a5;
    if (a5 >> 62)
    {
      goto LABEL_61;
    }

    v54 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v54)
    {
LABEL_4:
      v260 = (a5 & 0xC000000000000001);
      v223 = v52;
      v222 = v14;
      v259 = v54;
      v246 = a3;
      if ((a5 & 0xC000000000000001) == 0)
      {
        if (*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v55 = *(a5 + 32);

          v56 = v55;
          goto LABEL_7;
        }

        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:

        sub_1CEFD0A98(v14);

        __break(1u);
LABEL_70:
        MEMORY[0x1EEE9AC00](v137);
        *(&v211 - 2) = a4;

        sub_1CEFD0A98(v14);

        fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v211 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
      }

LABEL_66:

      v56 = MEMORY[0x1D3869C30](0, a5);
LABEL_7:
      a5 = v56;
      v57 = sub_1CEFCE64C();
      if (!*(v57 + 16))
      {

        v58 = sub_1CF8403B4();
        swift_beginAccess();
        v59 = swift_weakLoadStrong();
        v60 = v246;
        if (v59)
        {
          v61 = v59;

          v62 = v58;
          sub_1CF77A9C8(v58, 0, v61, v261, v60);
        }

        else
        {
          v150 = v58;
          v151 = FPDomainUnavailableError();
          (v261)();
        }

        return;
      }

      v212 = v15;
      v213 = v11;
      v67 = v256;
      v68 = v256[80];
      v214 = ~v68;
      v221 = v68;
      v69 = *(v256 + 2);
      v70 = v267;
      v243 = v256 + 16;
      v242 = v69;
      v69(v233, (v57 + ((v68 + 32) & ~v68)), v267);

      v11 = &selRef_initWithTarget_;
      v215 = a5;
      v71 = [a5 knownFolder];
      v72 = v257;
      sub_1CF9E59D8();

      a4 = v72;
      sub_1CF9E5988();
      v73 = *(v67 + 1);
      v264 = v67 + 8;
      v265 = v73;
      v73(v72, v70);
      v15 = 0;
      v74 = v262;
      a3 = (v262 & 0xFFFFFFFFFFFFFF8);
      v14 = v264;
      while (1)
      {
        if (v260)
        {
          v75 = MEMORY[0x1D3869C30](v15);
        }

        else
        {
          if (v15 >= a3[2])
          {
            __break(1u);
            goto LABEL_66;
          }

          v75 = *(v74 + 8 * v15 + 32);
        }

        v52 = v75;
        a5 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_61:
          v54 = sub_1CF9E7818();
          a5 = v262;
          if (!v54)
          {
            goto LABEL_62;
          }

          goto LABEL_4;
        }

        v76 = [v75 knownFolder];
        v77 = v257;
        sub_1CF9E59D8();

        sub_1CF9E5988();
        v78 = v77;
        a4 = v267;
        v79 = v265;
        v265(v78, v267);
        sub_1CEFCCCA4(&qword_1EDEAB410, MEMORY[0x1E6968FB0]);
        if ((sub_1CF9E6868() & 1) == 0)
        {
          break;
        }

        v79(v43, v267);

        ++v15;
        v74 = v262;
        if (a5 == v259)
        {

          v220 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
          v239 = dispatch_group_create();
          v80 = swift_allocObject();
          *(v80 + 16) = 0;
          v81 = swift_allocObject();
          a4 = MEMORY[0x1E69E7CC0];
          v81[2] = MEMORY[0x1E69E7CC0];
          v82 = swift_allocObject();
          *(v82 + 16) = a4;
          if (v259 < 1)
          {
            goto LABEL_68;
          }

          v84 = 0;
          v238 = (v255 + 8);
          v237 = (v228 + 48);
          v228 += 56;
          v216 = (v229 + 8);
          v218 = (v221 + 48) & v214;
          v217 = (v230 + v218 + 7) & 0xFFFFFFFFFFFFFFF8;
          v219 = (v256 + 32);
          *&v83 = 136446466;
          v229 = v83;
          v14 = v253;
          v85 = v82;
          v240 = v82;
          v86 = v258;
          v248 = v80;
          v246 = v81;
          while (2)
          {
            v255 = v84;
            if (v260)
            {
              v96 = MEMORY[0x1D3869C30](v84, v262);
            }

            else
            {
              v96 = *(v262 + 8 * v84 + 32);
            }

            v97 = v96;
            v98 = v239;
            dispatch_group_enter(v239);
            v99 = [v97 logicalLocation];
            v100 = v266;
            sub_1CF9E59D8();

            v101 = swift_allocObject();
            v101[2] = v97;
            v101[3] = v14;
            v101[4] = v98;
            v101[5] = v80;
            v102 = v263;
            v101[6] = v81;
            v101[7] = v102;
            v101[8] = v85;
            sub_1CEFD09A0(v14);
            v103 = v97;
            v104 = v98;

            sub_1CEFD09A0(v14);
            v256 = v103;
            v261 = v104;

            v105 = fpfs_current_or_default_log();
            v106 = v249;
            sub_1CF9E6128();
            v242(v86, v100, v267);
            sub_1CEFD09A0(v14);
            v107 = sub_1CF9E6108();
            v108 = sub_1CF9E7298();
            sub_1CEFD0A98(v14);
            if (os_log_type_enabled(v107, v108))
            {
              v109 = v106;
              v110 = swift_slowAlloc();
              v111 = swift_slowAlloc();
              aBlock = v111;
              *v110 = v229;
              v112 = sub_1CF9E5928();
              v113 = [v112 fp_shortDescription];

              v114 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v116 = v115;

              v265(v258, v267);
              v117 = sub_1CEFD0DF0(v114, v116, &aBlock);

              *(v110 + 4) = v117;
              *(v110 + 12) = 2082;
              v118 = sub_1CEFD11AC(v14);
              v120 = sub_1CEFD0DF0(v118, v119, &aBlock);

              *(v110 + 14) = v120;
              _os_log_impl(&dword_1CEFC7000, v107, v108, "create fault at %{public}s for %{public}s", v110, 0x16u);
              swift_arrayDestroy();
              v121 = v111;
              v102 = v263;
              MEMORY[0x1D386CDC0](v121, -1, -1);
              MEMORY[0x1D386CDC0](v110, -1, -1);

              (*v238)(v109, v252);
            }

            else
            {

              v265(v86, v267);
              (*v238)(v106, v252);
            }

            v122 = v251;
            sub_1CF010CE0(v266, 0, 1, 0, v251);
            v123 = v250;
            v124 = (*v237)(v122, 1, v250);
            v95 = v248;
            v93 = v261;
            if (v124 == 1)
            {
              sub_1CEFCCC44(v122, &unk_1EC4BEC00, &unk_1CF9FCB60);
              v14 = v253;
              v125 = sub_1CF90C94C(v253);
              v81 = v246;
              v85 = v240;
              if (v125)
              {
                v126 = v125;
                if ([v125 shouldFailCoordinationIfDownloadRequired])
                {
                  LODWORD(aBlock) = 1;
                  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
                  sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
                  v127 = v231;
                  v128 = v232;
                  sub_1CF9E57D8();
                  v129 = sub_1CF9E53A8();
                  v95 = v248;
                  (*v216)(v127, v128);
                  v130 = v244;
                  *v244 = v129;
                  swift_storeEnumTagMultiPayload();
                  v94 = v256;
                  v93 = v261;
                  sub_1CF8953A0(v130, v256, v14, v261, v95, v246, v102, v85);

                  v131 = v130;
                  v81 = v246;
                  sub_1CEFCCC44(v131, &unk_1EC4BF310, &unk_1CF9FDB30);
                  goto LABEL_36;
                }
              }

              sub_1CF9E5988();
              v136 = *(*(v102[2].isa + 4) + 16);
              type metadata accessor for VFSFileTree(0);
              a4 = swift_dynamicCastClassUnconditional();

              v137 = objc_sync_enter(a4);
              if (v137)
              {
                goto LABEL_70;
              }

              v138 = *(a4 + 20);

              v139 = objc_sync_exit(a4);
              if (v139)
              {
                MEMORY[0x1EEE9AC00](v139);
                *(&v211 - 2) = a4;

                sub_1CEFD0A98(v14);

                fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v211 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
              }

              v140 = *(v138 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs);

              v141 = v247;
              v142 = sub_1CF517830(v140);

              if (v142)
              {
                v87 = v257;
                v88 = v267;
                v242(v257, v266, v267);
                v89 = v217;
                v90 = swift_allocObject();
                *(v90 + 2) = sub_1CF8FDFC4;
                *(v90 + 3) = v101;
                v91 = v263;
                *(v90 + 4) = v14;
                *(v90 + 5) = v91;
                (*v219)(&v90[v218], v87, v88);
                v92 = v220;
                *&v90[v89] = v220;
                sub_1CEFD09A0(v14);

                sub_1CF76E058(v141, v92, v14, sub_1CF7965E8, v90);

                v265(v141, v88);

                v93 = v261;
                v94 = v256;
                v95 = v248;
              }

              else
              {
                v143 = sub_1CF9E5928();
                a4 = FPItemNotFoundErrorAtURL();

                v144 = v263;
                if (!a4)
                {
                  goto LABEL_69;
                }

                v145 = v234;
                *v234 = a4;
                swift_storeEnumTagMultiPayload();
                v94 = v256;
                v93 = v261;
                v95 = v248;
                v146 = v246;
                sub_1CF8953A0(v145, v256, v14, v261, v248, v246, v144, v85);
                v147 = v145;
                v81 = v146;
                sub_1CEFCCC44(v147, &unk_1EC4BF310, &unk_1CF9FDB30);
                v265(v247, v267);
              }
            }

            else
            {
              v132 = v241;
              sub_1CEFDA0C4(v122, v241, type metadata accessor for VFSItem);
              v133 = v244;
              sub_1CEFDA34C(v132, v244, type metadata accessor for VFSItem);
              (*v228)(v133, 0, 1, v123);
              swift_storeEnumTagMultiPayload();
              v94 = v256;
              v14 = v253;
              v81 = v246;
              v134 = v240;
              sub_1CF8953A0(v133, v256, v253, v93, v95, v246, v102, v240);
              sub_1CEFCCC44(v133, &unk_1EC4BF310, &unk_1CF9FDB30);
              v135 = v132;
              v85 = v134;
              sub_1CEFD5338(v135, type metadata accessor for VFSItem);
LABEL_36:
            }

            v84 = v255 + 1;

            sub_1CEFD0A98(v14);

            v80 = v95;

            v265(v266, v267);
            v86 = v258;
            if (v259 == v84)
            {
              v164 = v236;
              v259 = *&v236[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
              v165 = v267;
              v166 = v242;
              v242(v257, v233, v267);
              v167 = v85;
              v168 = v224;
              v169 = v165;
              v166(v224, v254, v165);
              v170 = (v221 + 96) & v214;
              v171 = v81;
              v172 = (v230 + v221 + v170) & v214;
              v173 = swift_allocObject();
              v173[2] = v80;
              v173[3] = sub_1CF902EC0;
              v173[4] = v223;
              v173[5] = v14;
              v174 = v262;
              v175 = v263;
              v173[6] = v164;
              v173[7] = v174;
              v173[8] = v235;
              v173[9] = v175;
              v173[10] = v167;
              v173[11] = v171;
              v176 = *v219;
              v177 = v173 + v170;
              v178 = v173;
              v266 = v173;
              v176(v177, v257, v169);
              v176(v178 + v172, v168, v169);
              sub_1CEFD09A0(v14);

              v179 = v236;

              v263 = v235;
              v180 = fpfs_current_log();
              v262 = fpfs_adopt_log();
              v181 = swift_allocObject();
              v182 = v259;
              aBlock = sub_1CF9E73C8();
              v270 = v183;
              MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
              v184 = sub_1CF9E7988();
              MEMORY[0x1D3868CC0](v184);

              sub_1CF9E6978();

              v185 = __fp_log_fork();

              *(v181 + 16) = v185;
              v186 = swift_allocObject();
              *(v186 + 16) = v180;
              *(v186 + 24) = v181;
              v187 = v182;
              *(v186 + 32) = v182;
              *(v186 + 40) = "detachKnownFolders(_:request:completionHandler:)";
              *(v186 + 48) = 48;
              *(v186 + 56) = 2;
              v188 = v266;
              *(v186 + 64) = sub_1CF8FDFDC;
              *(v186 + 72) = v188;
              v273 = sub_1CF2B9F54;
              v274 = v186;
              aBlock = MEMORY[0x1E69E9820];
              v270 = 1107296256;
              v271 = sub_1CEFCA444;
              v272 = &block_descriptor_4125;
              v189 = _Block_copy(&aBlock);
              v260 = v180;

              v190 = v187;

              v191 = v225;
              sub_1CF9E63F8();
              v268 = MEMORY[0x1E69E7CC0];
              sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
              sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
              v192 = v222;
              v193 = v213;
              sub_1CF9E77B8();
              v194 = v261;
              sub_1CF9E7308();
              _Block_release(v189);
              (*(v227 + 8))(v192, v193);
              (*(v226 + 8))(v191, v212);

              v195 = v262;
              v196 = fpfs_adopt_log();

              v197 = v267;
              v198 = v265;
              v265(v254, v267);
              v198(v233, v197);

              goto LABEL_45;
            }

            continue;
          }
        }
      }

      v152 = fpfs_current_or_default_log();
      v153 = v248;
      sub_1CF9E6128();
      v154 = v253;
      sub_1CEFD09A0(v253);
      v155 = sub_1CF9E6108();
      v156 = sub_1CF9E72A8();
      sub_1CEFD0A98(v154);
      if (os_log_type_enabled(v155, v156))
      {
        v157 = swift_slowAlloc();
        v266 = swift_slowAlloc();
        aBlock = v266;
        *v157 = 136446210;
        v158 = sub_1CEFD11AC(v154);
        v160 = sub_1CEFD0DF0(v158, v159, &aBlock);
        v161 = v255;
        v162 = v160;

        *(v157 + 4) = v162;
        _os_log_impl(&dword_1CEFC7000, v155, v156, "inconsistent detach request with different home folders for request %{public}s", v157, 0xCu);
        v163 = v266;
        __swift_destroy_boxed_opaque_existential_1(v266);
        MEMORY[0x1D386CDC0](v163, -1, -1);
        MEMORY[0x1D386CDC0](v157, -1, -1);

        (*(v161 + 8))(v153, v252);
      }

      else
      {

        (*(v255 + 8))(v153, v252);
      }

      v199 = v215;
      v200 = FPNotSupportedError();
      if (v200)
      {
        v201 = v200;
        swift_beginAccess();
        v202 = swift_weakLoadStrong();
        if (v202)
        {
          v203 = v202;
          v204 = v246;

          v205 = v201;
          sub_1CF77A9C8(v205, 0, v203, v261, v204);
        }

        else
        {
          v206 = v201;
          v207 = FPDomainUnavailableError();
          (v261)();
        }
      }

      else
      {
        (v261)();
      }

      v208 = v267;
      v209 = v265;
      v265(v43, v267);
      v209(v254, v208);
      v209(v233, v208);
    }

    else
    {
LABEL_62:

      (v261)(0);

      v210 = v235;
    }
  }

  else
  {

    v63 = sub_1CF8403B4();
    swift_beginAccess();
    v64 = swift_weakLoadStrong();
    if (v64)
    {
      v65 = v64;

      v66 = v63;
      sub_1CF77A9C8(v63, 0, v65, v261, a3);
    }

    else
    {
      v148 = v63;
      v149 = FPDomainUnavailableError();
      (v261)();
    }

LABEL_45:
  }
}

void sub_1CF8953A0(uint64_t a1, void *a2, unint64_t a3, NSObject *a4, uint64_t a5, void *a6, NSObject *a7, uint64_t a8)
{
  v207 = a7;
  v208 = a8;
  v210 = a6;
  v214 = a5;
  v217 = a4;
  v218 = a3;
  v10 = type metadata accessor for VFSItem(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v209 = &v203 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E5A58();
  v212 = *(v14 - 8);
  v213 = v14;
  v15 = *(v212 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v211 = &v203 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1CF9E6118();
  v18 = *(v17 - 8);
  v215 = v17;
  v216 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v205 = &v203 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v204 = &v203 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v206 = (&v203 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v203 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v203 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  v34 = (&v203 - v33);
  sub_1CEFCCBDC(a1, &v203 - v33, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = *v34;
    v36 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v37 = a2;
    v38 = v218;
    sub_1CEFD09A0(v218);
    v39 = sub_1CF9E6108();
    v40 = sub_1CF9E72A8();

    sub_1CEFD0A98(v38);
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v210 = swift_slowAlloc();
      v223 = v210;
      *v41 = 136315394;
      v42 = [v37 logicalLocation];
      v43 = v211;
      sub_1CF9E59D8();

      v44 = sub_1CF9E5928();
      v45 = [v44 fp_shortDescription];

      v46 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v48 = v47;

      (*(v212 + 8))(v43, v213);
      v49 = sub_1CEFD0DF0(v46, v48, &v223);

      *(v41 + 4) = v49;
      *(v41 + 12) = 2082;
      v50 = sub_1CEFD11AC(v38);
      v52 = sub_1CEFD0DF0(v50, v51, &v223);

      *(v41 + 14) = v52;
      _os_log_impl(&dword_1CEFC7000, v39, v40, "could not resolve %s for request %{public}s", v41, 0x16u);
      v53 = v210;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v53, -1, -1);
      MEMORY[0x1D386CDC0](v41, -1, -1);
    }

    (*(v216 + 8))(v30, v215);
    v54 = v35;
    v55 = v217;
    sub_1CF518C30(v217, (v214 + 16), v35);
    dispatch_group_leave(v55);

    return;
  }

  v56 = v218;
  if ((*(v11 + 48))(v34, 1, v10) != 1)
  {
    v76 = v209;
    sub_1CEFDA0C4(v34, v209, type metadata accessor for VFSItem);
    v77 = (v76 + *(v10 + 28));
    if (*v77 == 2 && v77[*(type metadata accessor for ItemMetadata() + 64)] == 1)
    {
      v78 = fpfs_current_or_default_log();
      v79 = v206;
      sub_1CF9E6128();
      v80 = a2;
      sub_1CEFD09A0(v56);
      v81 = sub_1CF9E6108();
      v82 = sub_1CF9E72C8();

      sub_1CEFD0A98(v56);
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v223 = v84;
        *v83 = 136315394;
        v85 = [v80 logicalLocation];
        v86 = v211;
        sub_1CF9E59D8();

        v87 = sub_1CF9E5928();
        v88 = [v87 fp_shortDescription];

        v89 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v91 = v90;

        (*(v212 + 8))(v86, v213);
        v92 = sub_1CEFD0DF0(v89, v91, &v223);

        *(v83 + 4) = v92;
        *(v83 + 12) = 2082;
        v93 = sub_1CEFD11AC(v218);
        v95 = sub_1CEFD0DF0(v93, v94, &v223);

        *(v83 + 14) = v95;
        _os_log_impl(&dword_1CEFC7000, v81, v82, "folder %s is a binary compatibility symlink %{public}s", v83, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v84, -1, -1);
        MEMORY[0x1D386CDC0](v83, -1, -1);

        (*(v216 + 8))(v206, v215);
      }

      else
      {

        (*(v216 + 8))(v79, v215);
      }

      v108 = v80;
      v109 = v217;
      sub_1CF518C48(v217, v210 + 2, v108);
      dispatch_group_leave(v109);
      goto LABEL_52;
    }

    v96 = a2;
    v97 = [a2 location];
    if (!v97)
    {
LABEL_51:
      isa = v207[2].isa;
      v164 = *v76;
      v165 = *(v76 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
      v166 = swift_allocObject();
      *(v166 + 32) = v164;
      *(v166 + 40) = v165;
      *(v166 + 41) = 0;
      *(v166 + 16) = v164;
      *(v166 + 24) = v165;
      *(v166 + 25) = 0;
      v167 = swift_allocObject();
      v167[2] = v96;
      v167[3] = v56;
      v168 = v217;
      v169 = v214;
      v167[4] = v217;
      v167[5] = v169;
      v167[6] = v208;
      v170 = v96;
      sub_1CEFD09A0(v56);
      v171 = v168;

      sub_1CF80EE3C(v166, v56, sub_1CF8FE1A4, v167);

LABEL_52:
      sub_1CEFD5338(v76, type metadata accessor for VFSItem);
      return;
    }

    v98 = v97;
    v99 = [v97 asExistingLocation];
    if (!v99)
    {
LABEL_30:
      v116 = [v98 asPathMatchingLocation];
      if (!v116)
      {
LABEL_50:

        goto LABEL_51;
      }

      v118 = v116;
      v119 = *(v76 + 16);
      v120 = *(v76 + 24);
      if (v120 != 2 || v119)
      {
        if (v120 != 2 || v119 != 1)
        {
          v223 = 0x2F73662F70665F5FLL;
          v224 = 0xE800000000000000;
          v221 = v119;
          LOBYTE(v222) = v120;
          v147 = VFSItemID.description.getter(v116, v117);
          MEMORY[0x1D3868CC0](v147);

          v122 = sub_1CF9E6888();

          goto LABEL_41;
        }

        v121 = MEMORY[0x1E6967280];
      }

      else
      {
        v121 = MEMORY[0x1E6967258];
      }

      v122 = *v121;
LABEL_41:
      v148 = [v118 parentItemIdentifier];
      v149 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v151 = v150;
      if (v149 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v151 == v152)
      {
      }

      else
      {
        v153 = sub_1CF9E8048();

        if ((v153 & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      v154 = *(v76 + 40);
      v223 = *(v76 + 32);
      v224 = v154;
      v221 = 47;
      v222 = 0xE100000000000000;
      v219 = 58;
      v220 = 0xE100000000000000;
      sub_1CEFE4E68();
      v155 = sub_1CF9E7668();
      v157 = v156;
      v158 = [v118 filename];
      v159 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v161 = v160;

      if (v155 == v159 && v157 == v161)
      {

        goto LABEL_51;
      }

      v162 = sub_1CF9E8048();

      if (v162)
      {

        goto LABEL_50;
      }

LABEL_54:
      v172 = fpfs_current_or_default_log();
      v173 = v205;
      sub_1CF9E6128();
      v174 = v96;
      sub_1CEFD09A0(v56);
      v175 = v118;
      v176 = sub_1CF9E6108();
      v177 = sub_1CF9E72A8();

      sub_1CEFD0A98(v56);
      if (os_log_type_enabled(v176, v177))
      {
        v178 = swift_slowAlloc();
        v210 = v98;
        v179 = v178;
        v206 = swift_slowAlloc();
        v208 = swift_slowAlloc();
        v223 = v208;
        *v179 = 136315650;
        v180 = [v174 logicalLocation];
        v207 = v176;
        v181 = v180;
        v182 = v211;
        sub_1CF9E59D8();

        v183 = sub_1CF9E5928();
        v184 = [v183 fp_shortDescription];
        LODWORD(v204) = v177;
        v185 = v174;
        v186 = v184;

        v187 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v189 = v188;

        v174 = v185;
        (*(v212 + 8))(v182, v213);
        v190 = sub_1CEFD0DF0(v187, v189, &v223);

        *(v179 + 4) = v190;
        *(v179 + 12) = 2114;
        *(v179 + 14) = v175;
        v191 = v206;
        *v206 = v118;
        *(v179 + 22) = 2082;
        v192 = v175;
        v193 = sub_1CEFD11AC(v56);
        v195 = sub_1CEFD0DF0(v193, v194, &v223);

        *(v179 + 24) = v195;
        v196 = v207;
        _os_log_impl(&dword_1CEFC7000, v207, v204, "item at %s doesn't match location identifier %{public}@ for request %{public}s", v179, 0x20u);
        sub_1CEFCCC44(v191, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v191, -1, -1);
        v197 = v208;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v197, -1, -1);
        v198 = v179;
        v98 = v210;
        MEMORY[0x1D386CDC0](v198, -1, -1);

        (*(v216 + 8))(v205, v215);
      }

      else
      {

        (*(v216 + 8))(v173, v215);
      }

      v199 = v174;
      v200 = v217;
      sub_1CF5171A0(v217, v214 + 16, v199);
      dispatch_group_leave(v200);

      goto LABEL_52;
    }

    v100 = v99;
    v101 = [v99 itemIdentifier];

    v104 = *v76;
    v105 = *(v76 + 8);
    if (v105 != 2 || v104)
    {
      if (v105 != 2 || v104 != 1)
      {
        v223 = 0x2F73662F70665F5FLL;
        v224 = 0xE800000000000000;
        v221 = v104;
        LOBYTE(v222) = v105;
        v110 = VFSItemID.description.getter(v102, v103);
        MEMORY[0x1D3868CC0](v110);

        v107 = sub_1CF9E6888();

        goto LABEL_25;
      }

      v106 = MEMORY[0x1E6967280];
    }

    else
    {
      v106 = MEMORY[0x1E6967258];
    }

    v107 = *v106;
LABEL_25:
    v111 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v113 = v112;
    if (v111 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v113 == v114)
    {
    }

    else
    {
      v115 = sub_1CF9E8048();

      if ((v115 & 1) == 0)
      {
        v210 = v98;
        v123 = fpfs_current_or_default_log();
        v124 = v204;
        sub_1CF9E6128();
        v125 = v96;
        sub_1CEFD09A0(v56);
        v126 = v101;
        v127 = sub_1CF9E6108();
        v128 = sub_1CF9E72A8();

        sub_1CEFD0A98(v56);
        if (os_log_type_enabled(v127, v128))
        {
          v129 = swift_slowAlloc();
          v208 = swift_slowAlloc();
          v223 = v208;
          *v129 = 136315650;
          v130 = [v125 logicalLocation];
          v131 = v211;
          sub_1CF9E59D8();

          v132 = sub_1CF9E5928();
          v133 = [v132 fp_shortDescription];

          v134 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v136 = v135;

          (*(v212 + 8))(v131, v213);
          v137 = sub_1CEFD0DF0(v134, v136, &v223);

          *(v129 + 4) = v137;
          *(v129 + 12) = 2082;
          v138 = v126;
          v139 = NSFileProviderItemIdentifier.description.getter();
          v141 = v140;

          v142 = sub_1CEFD0DF0(v139, v141, &v223);

          *(v129 + 14) = v142;
          *(v129 + 22) = 2082;
          v143 = sub_1CEFD11AC(v218);
          v145 = sub_1CEFD0DF0(v143, v144, &v223);

          *(v129 + 24) = v145;
          _os_log_impl(&dword_1CEFC7000, v127, v128, "item at %s doesn't match location identifier %{public}s for request %{public}s", v129, 0x20u);
          v146 = v208;
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v146, -1, -1);
          MEMORY[0x1D386CDC0](v129, -1, -1);

          (*(v216 + 8))(v204, v215);
        }

        else
        {

          (*(v216 + 8))(v124, v215);
        }

        v201 = v125;
        v202 = v217;
        sub_1CF5171A0(v217, v214 + 16, v201);
        dispatch_group_leave(v202);

        goto LABEL_52;
      }
    }

    goto LABEL_30;
  }

  v57 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v58 = a2;
  sub_1CEFD09A0(v56);
  v59 = sub_1CF9E6108();
  v60 = sub_1CF9E72C8();

  sub_1CEFD0A98(v56);
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v214 = swift_slowAlloc();
    v223 = v214;
    *v61 = 136315394;
    v62 = [v58 knownFolder];
    v63 = v211;
    sub_1CF9E59D8();

    v64 = sub_1CF9E5928();
    v65 = [v64 fp_shortDescription];

    v66 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v68 = v67;

    (*(v212 + 8))(v63, v213);
    v69 = sub_1CEFD0DF0(v66, v68, &v223);

    *(v61 + 4) = v69;
    *(v61 + 12) = 2082;
    v70 = sub_1CEFD11AC(v56);
    v72 = sub_1CEFD0DF0(v70, v71, &v223);

    *(v61 + 14) = v72;
    _os_log_impl(&dword_1CEFC7000, v59, v60, "folder %s will be imported for %{public}s", v61, 0x16u);
    v73 = v214;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v73, -1, -1);
    MEMORY[0x1D386CDC0](v61, -1, -1);
  }

  (*(v216 + 8))(v27, v215);
  v74 = v58;
  v75 = v217;
  sub_1CF518C48(v217, v210 + 2, v74);
  dispatch_group_leave(v75);
}

void sub_1CF8966CC(void **a1, void *a2)
{
  v4 = sub_1CF9E5248();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1CF9E5268();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E50F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA450;
  v12 = *MEMORY[0x1E696A998];
  *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(inited + 40) = v13;
  v14 = [a2 logicalLocation];
  *(inited + 72) = sub_1CF9E5A58();
  __swift_allocate_boxed_opaque_existential_0((inited + 48));
  sub_1CF9E59D8();

  sub_1CF4E04E8(inited);
  swift_setDeallocating();
  sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
  sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
  sub_1CF9E57D8();
  v15 = sub_1CF9E50D8();
  (*(v7 + 8))(v10, v6);
  swift_beginAccess();
  v16 = *a1;
  *a1 = v15;
}

void sub_1CF89692C(uint64_t a1, void *a2, unint64_t a3, NSObject *a4, uint64_t a5, uint64_t a6)
{
  v50 = a5;
  v47 = a3;
  v10 = sub_1CF9E5A58();
  v45 = *(v10 - 8);
  v46 = v10;
  v11 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1CF9E6118();
  v48 = *(v14 - 8);
  v49 = v14;
  v15 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v42[-v20];
  sub_1CEFCCBDC(a1, &v42[-v20], &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v44 = a4;
    v22 = *v21;
    v23 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v24 = a2;
    v25 = v47;
    sub_1CEFD09A0(v47);
    v26 = sub_1CF9E6108();
    v27 = sub_1CF9E72A8();

    sub_1CEFD0A98(v25);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v51[0] = v29;
      *v28 = 136315394;
      v30 = [v24 logicalLocation];
      v43 = v27;
      v31 = v30;
      sub_1CF9E59D8();

      v32 = sub_1CF9E5928();
      v33 = [v32 fp_shortDescription];

      v34 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v36 = v35;

      (*(v45 + 8))(v13, v46);
      v37 = sub_1CEFD0DF0(v34, v36, v51);

      *(v28 + 4) = v37;
      *(v28 + 12) = 2082;
      v38 = sub_1CEFD11AC(v25);
      v40 = sub_1CEFD0DF0(v38, v39, v51);

      *(v28 + 14) = v40;
      _os_log_impl(&dword_1CEFC7000, v26, v43, "could not detach %s for request %{public}s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v29, -1, -1);
      MEMORY[0x1D386CDC0](v28, -1, -1);
    }

    (*(v48 + 8))(v17, v49);
    a4 = v44;
    v41 = v22;
    sub_1CF518C30(a4, (v50 + 16), v22);
  }

  else
  {
    sub_1CF518C48(a4, (a6 + 16), a2);
    sub_1CEFCCC44(v21, &unk_1EC4BF300, &unk_1CFA006B0);
  }

  dispatch_group_leave(a4);
}

void sub_1CF896D34(uint64_t a1, void (*a2)(void *), void (*a3)(void *), unint64_t a4, void *a5, unint64_t a6, void *a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12)
{
  v73 = a8;
  v74 = a4;
  v71 = a7;
  v75 = a6;
  v76 = a5;
  v77 = a2;
  v14 = sub_1CF9E5A58();
  v72 = *(v14 - 8);
  v15 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v63 - v17;
  v19 = sub_1CF9E6118();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v24 = *(a1 + 16);
  if (v24)
  {
    v25 = v24;
    v77(v24);
  }

  else
  {
    v64 = v20;
    v65 = v19;
    v66 = v15;
    v69 = a3;
    v70 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v67 = v18;
    v68 = v14;
    v26 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v27 = v74;
    sub_1CEFD09A0(v74);
    v28 = sub_1CF9E6108();
    v29 = sub_1CF9E72C8();
    sub_1CEFD0A98(v27);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock[0] = v31;
      *v30 = 136446210;
      v32 = sub_1CEFD11AC(v27);
      v34 = sub_1CEFD0DF0(v32, v33, aBlock);

      *(v30 + 4) = v34;
      v35 = v75;
      _os_log_impl(&dword_1CEFC7000, v28, v29, "all the roots have been resolved for request %{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1D386CDC0](v31, -1, -1);
      MEMORY[0x1D386CDC0](v30, -1, -1);

      (*(v64 + 8))(v23, v65);
      v36 = v70;
      v37 = v67;
    }

    else
    {

      (*(v64 + 8))(v23, v65);
      v36 = v70;
      v37 = v67;
      v35 = v75;
    }

    v38 = objc_sync_enter(v76);
    v39 = v72;
    v40 = v73;
    v41 = v68;
    v42 = v66;
    if (v38)
    {
      MEMORY[0x1EEE9AC00](v38);
      *(&v63 - 2) = v76;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v63 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v43 = v76;
    sub_1CF89739C(v76, v35);
    v44 = objc_sync_exit(v43);
    if (v44)
    {
      MEMORY[0x1EEE9AC00](v44);
      *(&v63 - 2) = v76;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v63 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    v67 = a10;
    v65 = a9;
    v45 = v39;
    v46 = *(v39 + 16);
    v47 = v37;
    v46(v37, a11, v41);
    v46(v36, a12, v41);
    v48 = *(v45 + 80);
    v49 = (v48 + 64) & ~v48;
    v50 = (v42 + v48 + v49) & ~v48;
    v51 = (v42 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    v53 = v74;
    *(v52 + 2) = v40;
    *(v52 + 3) = v53;
    v54 = v76;
    *(v52 + 4) = v65;
    *(v52 + 5) = v54;
    v55 = v67;
    *(v52 + 6) = v71;
    *(v52 + 7) = v55;
    v56 = v47;
    v57 = *(v45 + 32);
    v57(&v52[v49], v56, v41);
    v57(&v52[v50], v70, v41);
    *&v52[v51] = v75;
    v58 = &v52[(v51 + 15) & 0xFFFFFFFFFFFFFFF8];
    v59 = v69;
    *v58 = v77;
    v58[1] = v59;
    aBlock[4] = sub_1CF8FE080;
    aBlock[5] = v52;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CEFCA444;
    aBlock[3] = &block_descriptor_4137;
    v60 = _Block_copy(aBlock);
    sub_1CEFD09A0(v53);

    v61 = v76;
    v62 = v71;

    [v62 didRefreshRootURLsWithCompletionHandler_];
    _Block_release(v60);
  }
}

void sub_1CF89739C(uint64_t a1, unint64_t a2)
{
  v5 = sub_1CF9E5A58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v13 = sub_1CEFCE64C();
  if (!v2)
  {
    *(a1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_urlsAreInTransientState) = 1;
    v32 = 0;
    v33 = a2;
    if (a2 >> 62)
    {
      v28 = v13;
      v14 = sub_1CF9E7818();
      v13 = v28;
    }

    else
    {
      v14 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = MEMORY[0x1E69E7CC0];
    if (v14)
    {
      v31 = v13;
      v35 = MEMORY[0x1E69E7CC0];
      sub_1CF000F0C(0, v14 & ~(v14 >> 63), 0);
      if (v14 < 0)
      {
        __break(1u);
        return;
      }

      v34 = v5;
      v30 = a1;
      v15 = v35;
      if ((v33 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v14; ++i)
        {
          MEMORY[0x1D3869C30](i, v33);
          v17 = [swift_unknownObjectRetain() knownFolder];
          sub_1CF9E59D8();
          swift_unknownObjectRelease_n();

          v35 = v15;
          v19 = *(v15 + 16);
          v18 = *(v15 + 24);
          if (v19 >= v18 >> 1)
          {
            sub_1CF000F0C(v18 > 1, v19 + 1, 1);
            v15 = v35;
          }

          *(v15 + 16) = v19 + 1;
          (*(v6 + 32))(v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19, v12, v34);
        }
      }

      else
      {
        v20 = (v33 + 32);
        do
        {
          v21 = *v20;
          v22 = [v21 knownFolder];
          sub_1CF9E59D8();

          v35 = v15;
          v24 = *(v15 + 16);
          v23 = *(v15 + 24);
          if (v24 >= v23 >> 1)
          {
            sub_1CF000F0C(v23 > 1, v24 + 1, 1);
            v15 = v35;
          }

          *(v15 + 16) = v24 + 1;
          (*(v6 + 32))(v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24, v9, v34);
          ++v20;
          --v14;
        }

        while (v14);
      }

      a1 = v30;
      v13 = v31;
    }

    v35 = v13;
    sub_1CF000FB8(v15);
    v25 = a1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___cachedURLs;
    v26 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___cachedURLs);
    *v25 = v35;
    v27 = *(v25 + 8);
    *(v25 + 8) = 0;
    sub_1CF8F0650(v26, v27);
  }
}

void sub_1CF8976E0(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v42 = a7;
  v43 = a8;
  v49 = a4;
  v50 = a6;
  v44 = a3;
  v45 = a5;
  v37 = a2;
  v47 = a10;
  v48 = a11;
  v46 = a9;
  v13 = sub_1CF9E5A58();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v39 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - v17;
  v38 = &v37 - v17;
  v19 = *(a1 + 16);
  v40 = a1;
  v20 = *(*(v19 + 32) + 16);
  type metadata accessor for VFSFileTree(0);
  v41 = *(swift_dynamicCastClassUnconditional() + 216);
  v21 = *(v14 + 16);
  v21(v18, v42, v13);
  v21(&v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v43, v13);
  v22 = *(v14 + 80);
  v23 = (v22 + 64) & ~v22;
  v24 = (v15 + v22 + v23) & ~v22;
  v25 = (v15 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 2) = a2;
  v27 = v45;
  v29 = v49;
  v28 = v50;
  *(v26 + 3) = v44;
  *(v26 + 4) = v29;
  *(v26 + 5) = v27;
  *(v26 + 6) = v28;
  *(v26 + 7) = a1;
  v30 = *(v14 + 32);
  v30(&v26[v23], v38, v13);
  v30(&v26[v24], v39, v13);
  v31 = v47;
  *&v26[v25] = v46;
  v32 = &v26[(v25 + 15) & 0xFFFFFFFFFFFFFFF8];
  v33 = v48;
  *v32 = v31;
  *(v32 + 1) = v33;
  v34 = v41;
  sub_1CEFD09A0(v37);

  v35 = v49;
  v36 = v27;

  sub_1CF01001C(0, "detachKnownFolders(_:request:completionHandler:)", 48, 2, sub_1CF8FE098, v26);
}

void sub_1CF897988(unint64_t a1, uint64_t a2, NSObject *a3, void *a4, uint64_t *a5, char *a6, char *a7, char *a8, uint64_t a9, void (*a10)(void *), uint64_t a11)
{
  v142 = a8;
  v141 = a7;
  v146 = a5;
  v156 = a4;
  v155 = a3;
  v14 = sub_1CF9E5248();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v138 = &v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_1CF9E5268();
  v139 = *(v140 - 8);
  v17 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v140);
  v137 = &v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1CF9E6118();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v136 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v136 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v136 = &v136 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v145 = &v136 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v136 - v32;
  v154 = (a2 + 16);
  v34 = [objc_allocWithZone(FPLoggerScope) init];
  v35 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v36 = v34;
  sub_1CEFD09A0(a1);
  v37 = sub_1CF9E6108();
  v38 = sub_1CF9E72C8();

  sub_1CEFD0A98(a1);
  v39 = os_log_type_enabled(v37, v38);
  v153 = v20;
  v151 = v23;
  v149 = v36;
  v143 = a6;
  v144 = v26;
  v157 = a1;
  if (v39)
  {
    v40 = v36;
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    aBlock[0] = v43;
    *v41 = 138412546;
    v44 = [v40 enter];
    *(v41 + 4) = v44;
    *v42 = v44;
    *(v41 + 12) = 2082;
    v45 = sub_1CEFD11AC(a1);
    v47 = sub_1CEFD0DF0(v45, v46, aBlock);

    *(v41 + 14) = v47;
    v20 = v153;
    _os_log_impl(&dword_1CEFC7000, v37, v38, "%@ detaching roots for %{public}s", v41, 0x16u);
    sub_1CEFCCC44(v42, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v42, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x1D386CDC0](v43, -1, -1);
    MEMORY[0x1D386CDC0](v41, -1, -1);
  }

  v152 = *(v20 + 8);
  v152(v33, v19);
  v147 = a11;
  v148 = a10;
  v48 = v154;
  swift_beginAccess();
  v49 = *v48;
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v50 = v155;
  if (v49 >> 62)
  {
    goto LABEL_50;
  }

  for (i = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1CF9E7818())
  {

    v52 = MEMORY[0x1E69E7CC0];
    v150 = v19;
    if (i)
    {
      v53 = 0;
      v19 = v49 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v49 & 0xC000000000000001) != 0)
        {
          v54 = MEMORY[0x1D3869C30](v53, v49);
        }

        else
        {
          if (v53 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_47;
          }

          v54 = *(v49 + 8 * v53 + 32);
        }

        v55 = v54;
        v56 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          break;
        }

        v159 = v54;
        if (sub_1CF898A88(&v159, v50, v156, v157))
        {
          sub_1CF9E7A18();
          v57 = *(aBlock[0] + 16);
          sub_1CF9E7A58();
          sub_1CF9E7A68();
          sub_1CF9E7A28();
          v50 = v155;
        }

        else
        {
        }

        ++v53;
        if (v56 == i)
        {
          v58 = aBlock[0];
          v19 = v150;
          v52 = MEMORY[0x1E69E7CC0];
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v58 = MEMORY[0x1E69E7CC0];
LABEL_18:
    v59 = v146 + 2;

    v60 = v154;
    swift_beginAccess();
    v61 = *v60;
    *v60 = v58;

    swift_beginAccess();
    v146 = v59;
    v49 = *v59;
    aBlock[0] = v52;
    v62 = v49 >> 62 ? sub_1CF9E7818() : *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v62)
    {
      break;
    }

    v63 = 0;
    v19 = v49 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v49 & 0xC000000000000001) != 0)
      {
        v64 = MEMORY[0x1D3869C30](v63, v49);
      }

      else
      {
        if (v63 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v64 = *(v49 + 8 * v63 + 32);
      }

      v65 = v64;
      v66 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        break;
      }

      v158 = v64;
      if (sub_1CF89A024(&v158, v50, v157))
      {
        sub_1CF9E7A18();
        v67 = *(aBlock[0] + 16);
        sub_1CF9E7A58();
        sub_1CF9E7A68();
        sub_1CF9E7A28();
        v50 = v155;
      }

      else
      {
      }

      ++v63;
      if (v66 == v62)
      {
        v68 = aBlock[0];
        v19 = v150;
        goto LABEL_33;
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    ;
  }

  v68 = MEMORY[0x1E69E7CC0];
LABEL_33:

  v69 = v146;
  swift_beginAccess();
  v70 = *v69;
  *v69 = v68;

  sub_1CF4E2D78(MEMORY[0x1E69E7CC0]);

  v71 = v154;
  v72 = swift_beginAccess();
  v73 = *v71;
  v74 = v151;
  if (*v71 >> 62)
  {
    if (v73 < 0)
    {
      v108 = *v71;
    }

    v72 = sub_1CF9E7818();
    v75 = v157;
    if (!v72)
    {
      goto LABEL_62;
    }

LABEL_35:
    v76 = [objc_allocWithZone(FPLoggerScope) init];
    v77 = fpfs_current_or_default_log();
    v78 = v145;
    sub_1CF9E6128();
    sub_1CEFD09A0(v75);
    v79 = v76;
    v80 = sub_1CF9E6108();
    v81 = sub_1CF9E72C8();

    sub_1CEFD0A98(v75);
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      aBlock[0] = v84;
      *v82 = 138412546;
      v85 = [v79 enter];
      *(v82 + 4) = v85;
      *v83 = v85;
      *(v82 + 12) = 2082;
      v86 = sub_1CEFD11AC(v157);
      v88 = v79;
      v89 = sub_1CEFD0DF0(v86, v87, aBlock);

      *(v82 + 14) = v89;
      v79 = v88;
      _os_log_impl(&dword_1CEFC7000, v80, v81, "%@ merging local folders into synced folders for %{public}s", v82, 0x16u);
      sub_1CEFCCC44(v83, &qword_1EC4BE350, &unk_1CF9FC3B0);
      v90 = v83;
      v74 = v151;
      MEMORY[0x1D386CDC0](v90, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v84);
      v91 = v84;
      v75 = v157;
      MEMORY[0x1D386CDC0](v91, -1, -1);
      MEMORY[0x1D386CDC0](v82, -1, -1);

      v92 = v145;
    }

    else
    {

      v92 = v78;
    }

    v152(v92, v19);
    v93 = v144;
    v94 = v154;
    swift_beginAccess();
    v95 = *v94;
    if (*v94 >> 62)
    {
      if (v95 < 0)
      {
        v109 = *v94;
      }

      v96 = sub_1CF9E7818();
      if (v96)
      {
LABEL_40:
        if ((v95 & 0xC000000000000001) != 0)
        {

          v97 = MEMORY[0x1D3869C30](0, v95);
        }

        else
        {
          if (!*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_71;
          }

          v97 = *(v95 + 32);
        }

        sub_1CF9E5108();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
        v98 = v137;
        v99 = v140;
        sub_1CF9E57D8();
        v100 = sub_1CF9E50D8();
        (*(v139 + 8))(v98, v99);
        swift_willThrow();

        v101 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v102 = v79;
        v103 = sub_1CF9E6108();
        v104 = sub_1CF9E72C8();

        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          *v105 = 138412290;
          v107 = [v102 leave];
          *(v105 + 4) = v107;
          *v106 = v107;
          _os_log_impl(&dword_1CEFC7000, v103, v104, "%@", v105, 0xCu);
          sub_1CEFCCC44(v106, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v106, -1, -1);
          MEMORY[0x1D386CDC0](v105, -1, -1);
        }

        v152(v93, v19);
        v95 = v155;
        v96 = objc_sync_enter(v155);
        if (!v96)
        {
          *(v95 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_urlsAreInTransientState) = 0;
          v123 = (v95 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___cachedURLs);
          v124 = *(v95 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___cachedURLs);
          *v123 = 0;
          v125 = v123[8];
          v123[8] = -1;
          sub_1CF8F0650(v124, v125);
          v126 = objc_sync_exit(v95);
          if (v126)
          {
            MEMORY[0x1EEE9AC00](v126);
            *(&v136 - 2) = v95;
            fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v136 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
          }

          aBlock[4] = nullsub_1;
          aBlock[5] = 0;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1CEFCA444;
          aBlock[3] = &block_descriptor_4145;
          v127 = _Block_copy(aBlock);
          [v156 didRefreshRootURLsWithCompletionHandler_];
          _Block_release(v127);
          v128 = v100;
          v148(v100);

          goto LABEL_66;
        }

LABEL_71:
        MEMORY[0x1EEE9AC00](v96);
        *(&v136 - 2) = v95;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v136 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
      }
    }

    else
    {
      v96 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v96)
      {
        goto LABEL_40;
      }
    }

    v110 = fpfs_current_or_default_log();
    v111 = v136;
    sub_1CF9E6128();
    v112 = v79;
    v113 = sub_1CF9E6108();
    v114 = sub_1CF9E72C8();

    if (os_log_type_enabled(v113, v114))
    {
      v115 = v75;
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      *v116 = 138412290;
      v118 = [v112 leave];
      *(v116 + 4) = v118;
      *v117 = v118;
      _os_log_impl(&dword_1CEFC7000, v113, v114, "%@", v116, 0xCu);
      sub_1CEFCCC44(v117, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v117, -1, -1);
      v119 = v116;
      v75 = v115;
      v111 = v136;
      MEMORY[0x1D386CDC0](v119, -1, -1);
    }

    v152(v111, v19);
    v50 = v155;
    goto LABEL_62;
  }

  v75 = v157;
  if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_35;
  }

LABEL_62:
  MEMORY[0x1EEE9AC00](v72);
  *(&v136 - 8) = v146;
  *(&v136 - 7) = v75;
  v120 = v143;
  *(&v136 - 6) = v143;
  *(&v136 - 5) = v50;
  v121 = v141;
  *(&v136 - 4) = v154;
  *(&v136 - 3) = v121;
  *(&v136 - 2) = v142;
  *(&v136 - 1) = v122;
  sub_1CF892F98(v120, v156, sub_1CF8FE17C, &v136 - 80);
  v148(0);
LABEL_66:
  v129 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v130 = v149;
  v131 = sub_1CF9E6108();
  v132 = sub_1CF9E72C8();

  if (os_log_type_enabled(v131, v132))
  {
    v133 = swift_slowAlloc();
    v134 = swift_slowAlloc();
    *v133 = 138412290;
    v135 = [v130 leave];
    *(v133 + 4) = v135;
    *v134 = v135;
    _os_log_impl(&dword_1CEFC7000, v131, v132, "%@", v133, 0xCu);
    sub_1CEFCCC44(v134, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v134, -1, -1);
    MEMORY[0x1D386CDC0](v133, -1, -1);
  }

  v152(v74, v19);
}

uint64_t sub_1CF898A88(id *a1, NSObject *a2, void *a3, unint64_t a4)
{
  v225 = a4;
  v226 = a2;
  v217 = a3;
  v238 = *MEMORY[0x1E69E9840];
  v6 = sub_1CF9E53C8();
  v215 = *(v6 - 8);
  v216 = v6;
  v7 = *(v215 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v214 = &v207[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1CF9E5248();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v218 = &v207[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1CF9E5268();
  v220 = *(v12 - 8);
  v221 = v12;
  v13 = *(v220 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v219 = &v207[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1CF9E6118();
  v223 = *(v15 - 8);
  v224 = v15;
  v16 = *(v223 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v222 = &v207[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v213 = &v207[-v19];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v207[-v21];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v207[-v24];
  v26 = sub_1CF9E5A58();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v228 = &v207[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v30);
  v230 = &v207[-v31];
  *&v33 = MEMORY[0x1EEE9AC00](v32).n128_u64[0];
  v35 = &v207[-v34];
  v229 = *a1;
  v36 = [v229 knownFolder];
  sub_1CF9E59D8();

  v37 = sub_1CF7A4B00(v35, 2);
  v232 = v26;
  if (v4)
  {

    v38 = *(v27 + 8);
    v39 = ((v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v38(v35, v26);
    v227 = 0;
    v40 = v26;
    v41 = v230;
LABEL_20:
    memset(&v237, 0, sizeof(v237));
    memset(&v235, 0, sizeof(v235));
    v127 = v229;
    v128 = [v229 knownFolder];
    sub_1CF9E59D8();

    sub_1CF9E5A18();
    v231 = v39;
    v38(v41, v40);
    v129 = sub_1CF9E6978();

    v130 = lstat((v129 + 32), &v235);

    v131 = &selRef_initWithTarget_;
    v132 = v227;
    if (!v130)
    {
      st_mode = v235.st_mode;
      v134 = sub_1CF9E61D8() & st_mode;
      v135 = sub_1CF9E61D8();
      v131 = &selRef_initWithTarget_;
      if (v134 == v135)
      {
        v236 = v237;
        v234 = v237;
        v136 = [v127 knownFolder];
        v137 = v230;
        sub_1CF9E59D8();

        sub_1CF9E5A18();
        v38(v137, v232);
        v138 = sub_1CF9E6978();

        v139 = stat((v138 + 32), &v236);

        if (!v139)
        {
          v140 = [v127 logicalLocation];
          v141 = v230;
          sub_1CF9E59D8();

          sub_1CF9E5A18();
          v38(v141, v232);
          v142 = sub_1CF9E6978();

          v143 = stat((v142 + 32), &v234);

          if (!v143)
          {
            if (v236.st_ino != v234.st_ino)
            {
              LODWORD(v233) = 20;
              sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
              sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
              v199 = v214;
              v200 = v216;
              sub_1CF9E57D8();
              sub_1CF9E53A8();
              (*(v215 + 8))(v199, v200);
              goto LABEL_33;
            }

            v187 = v38;
            v188 = fpfs_current_or_default_log();
            v189 = v213;
            sub_1CF9E6128();
            v190 = sub_1CF9E6108();
            v191 = sub_1CF9E7298();
            if (os_log_type_enabled(v190, v191))
            {
              v192 = swift_slowAlloc();
              *v192 = 0;
              _os_log_impl(&dword_1CEFC7000, v190, v191, "known folder is a symlink to the logical location, deleting the symlink", v192, 2u);
              MEMORY[0x1D386CDC0](v192, -1, -1);
            }

            (*(v223 + 8))(v189, v224);
            v193 = [objc_opt_self() defaultManager];
            v194 = [v127 knownFolder];
            v195 = v230;
            sub_1CF9E59D8();

            sub_1CF9E5A18();
            v187(v195, v232);
            v196 = sub_1CF9E6888();

            v233 = 0;
            v197 = [v193 removeItemAtPath:v196 error:&v233];

            if (!v197)
            {
              v206 = v233;
              sub_1CF9E57F8();

              goto LABEL_33;
            }

            v198 = v233;
            v38 = v187;
          }
        }

        v131 = &selRef_initWithTarget_;
      }
    }

    v144 = v131;
    v145 = [v127 v131[171]];
    v146 = v228;
    sub_1CF9E59D8();

    v147 = sub_1CF7A4B00(v146, 2);
    if (v132)
    {
      v38(v146, v232);
      goto LABEL_34;
    }

    v148 = v147;
    v38(v146, v232);
    if (v148)
    {

      v50 = 1;
      goto LABEL_34;
    }

    v149 = fpfs_current_or_default_log();
    v150 = v127;
    v151 = v222;
    sub_1CF9E6128();
    v152 = v150;
    v153 = v225;
    sub_1CEFD09A0(v225);
    v154 = sub_1CF9E6108();
    v155 = sub_1CF9E72A8();

    sub_1CEFD0A98(v153);
    v156 = os_log_type_enabled(v154, v155);
    v229 = v152;
    if (v156)
    {
      v157 = swift_slowAlloc();
      v212 = v38;
      v158 = v157;
      v228 = swift_slowAlloc();
      *&v236.st_dev = v228;
      *v158 = 136315394;
      LODWORD(v227) = v155;
      v159 = v144;
      v160 = [v152 v144 + 1493];
      v226 = v154;
      v161 = v160;
      v162 = v230;
      sub_1CF9E59D8();

      v163 = sub_1CF9E5928();
      v164 = v162;
      v144 = v159;
      v165 = [v163 fp_shortDescription];

      v166 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v167 = v153;
      v169 = v168;

      v170 = v164;
      v171 = v232;
      v212(v170, v232);
      v172 = sub_1CEFD0DF0(v166, v169, &v236.st_dev);

      *(v158 + 4) = v172;
      *(v158 + 12) = 2082;
      v173 = sub_1CEFD11AC(v167);
      v175 = sub_1CEFD0DF0(v173, v174, &v236.st_dev);

      *(v158 + 14) = v175;
      v176 = v226;
      _os_log_impl(&dword_1CEFC7000, v226, v227, "folder %s, is not properly detached %{public}s", v158, 0x16u);
      v177 = v228;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v177, -1, -1);
      MEMORY[0x1D386CDC0](v158, -1, -1);

      (*(v223 + 8))(v222, v224);
      v179 = v220;
      v178 = v221;
      v180 = v219;
    }

    else
    {

      (*(v223 + 8))(v151, v224);
      v179 = v220;
      v178 = v221;
      v180 = v219;
      v171 = v232;
    }

    sub_1CF9E50F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CF9FA450;
    v182 = *MEMORY[0x1E696A998];
    *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(inited + 40) = v183;
    v184 = [v229 v144 + 1493];
    *(inited + 72) = v171;
    __swift_allocate_boxed_opaque_existential_0((inited + 48));
    sub_1CF9E59D8();

    sub_1CF4E04E8(inited);
    swift_setDeallocating();
    sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    sub_1CF9E57D8();
    sub_1CF9E50D8();
    (*(v179 + 8))(v180, v178);
LABEL_33:
    swift_willThrow();
    goto LABEL_34;
  }

  v42 = v37;
  v210 = v25;
  v211 = v22;
  v43 = v226;
  v44 = *(v27 + 8);
  v231 = ((v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  v212 = v44;
  v44(v35, v26);
  if (!v42)
  {
    v227 = 0;
    v40 = v232;
    v41 = v230;
    v38 = v212;
LABEL_19:
    v39 = v231;
    goto LABEL_20;
  }

  v45 = *(&v43->isa + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID);
  v46 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v48 = v47;
  if (v46 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v48 == v49)
  {

    v50 = 0;
    goto LABEL_34;
  }

  v51 = sub_1CF9E8048();

  if (v51)
  {

    v50 = 0;
    goto LABEL_34;
  }

  v52 = [v217 provider];
  if (!v52 || (v53 = v52, v54 = [v52 manager], v53, !v54) || (v55 = objc_msgSend(v54, sel_domainWithID_reason_, v42, 0), v54, !v55))
  {
    v92 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v93 = v229;
    v94 = v42;
    v95 = v225;
    sub_1CEFD09A0(v225);
    v96 = v93;
    v97 = sub_1CF9E6108();
    v98 = sub_1CF9E72B8();
    v217 = v94;

    sub_1CEFD0A98(v95);
    v99 = os_log_type_enabled(v97, v98);
    v227 = 0;
    v210 = v96;
    if (v99)
    {
      v100 = swift_slowAlloc();
      v209 = swift_slowAlloc();
      *&v237.st_dev = v209;
      *v100 = 136446722;
      v101 = [v96 knownFolder];
      v208 = v98;
      v102 = v230;
      sub_1CF9E59D8();

      v103 = sub_1CF9E5928();
      v104 = [v103 fp_shortDescription];

      v105 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v107 = v106;

      v212(v102, v232);
      v108 = sub_1CEFD0DF0(v105, v107, &v237.st_dev);

      *(v100 + 4) = v108;
      *(v100 + 12) = 2082;
      v109 = [v217 fp_obfuscatedProviderDomainID];
      v110 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v112 = v111;

      v113 = sub_1CEFD0DF0(v110, v112, &v237.st_dev);

      *(v100 + 14) = v113;
      *(v100 + 22) = 2082;
      v114 = sub_1CEFD11AC(v225);
      v116 = sub_1CEFD0DF0(v114, v115, &v237.st_dev);

      *(v100 + 24) = v116;
      _os_log_impl(&dword_1CEFC7000, v97, v208, "taking ownership of %{public}s that is owned by domain %{public}s that doesn't exist for %{public}s", v100, 0x20u);
      v117 = v209;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v117, -1, -1);
      MEMORY[0x1D386CDC0](v100, -1, -1);

      (*(v223 + 8))(v211, v224);
    }

    else
    {

      (*(v223 + 8))(v211, v224);
      v102 = v230;
    }

    v226 = *(&v43->isa + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pathsManager);
    v237.st_dev = 17;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    v118 = v214;
    v119 = v216;
    sub_1CF9E57D8();
    v120 = sub_1CF9E53A8();
    (*(v215 + 8))(v118, v119);
    sub_1CF79AF1C(0xD000000000000024, 0x80000001CFA5DE60, 0xD00000000000001FLL, 0x80000001CFA5DE90);

    v121 = v210;
    v122 = [v210 knownFolder];
    sub_1CF9E59D8();

    sub_1CF9E5A18();
    v40 = v232;
    v123 = v212;
    v212(v102, v232);
    v124 = sub_1CF9E6978();

    removexattr((v124 + 32), "com.apple.file-provider-domain-id", 0);

    v125 = [v121 knownFolder];
    sub_1CF9E59D8();

    sub_1CF9E5A18();
    v123(v102, v40);
    v126 = sub_1CF9E6978();

    removexattr((v126 + 32), "com.apple.file-provider-domain-id#PN", 0);

    v41 = v102;
    v38 = v123;
    goto LABEL_19;
  }

  v56 = fpfs_current_or_default_log();
  v57 = v210;
  sub_1CF9E6128();
  v58 = v229;
  v59 = v42;
  v60 = v225;
  sub_1CEFD09A0(v225);
  v61 = sub_1CF9E6108();
  v62 = sub_1CF9E72A8();
  v231 = v59;

  v63 = v58;
  sub_1CEFD0A98(v60);
  if (os_log_type_enabled(v61, v62))
  {
    v64 = swift_slowAlloc();
    v229 = v55;
    v65 = v64;
    v228 = swift_slowAlloc();
    *&v237.st_dev = v228;
    *v65 = 136446722;
    v66 = [v58 knownFolder];
    v227 = v61;
    v67 = v66;
    LODWORD(v226) = v62;
    v68 = v230;
    sub_1CF9E59D8();

    v69 = sub_1CF9E5928();
    v70 = [v69 fp_shortDescription];

    v71 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v73 = v72;

    v74 = v68;
    v75 = v232;
    v212(v74, v232);
    v76 = sub_1CEFD0DF0(v71, v73, &v237.st_dev);

    *(v65 + 4) = v76;
    *(v65 + 12) = 2082;
    v77 = [v231 fp_obfuscatedProviderDomainID];
    v78 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v80 = v79;

    v81 = sub_1CEFD0DF0(v78, v80, &v237.st_dev);
    v63 = v58;

    *(v65 + 14) = v81;
    *(v65 + 22) = 2082;
    v82 = v75;
    v83 = sub_1CEFD11AC(v225);
    v85 = sub_1CEFD0DF0(v83, v84, &v237.st_dev);

    *(v65 + 24) = v85;
    v86 = v227;
    _os_log_impl(&dword_1CEFC7000, v227, v226, "cannot take ownership of %{public}s, it's owned by %{public}s for %{public}s", v65, 0x20u);
    v87 = v228;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v87, -1, -1);
    v88 = v65;
    v55 = v229;
    MEMORY[0x1D386CDC0](v88, -1, -1);

    v89 = v57;
    v90 = &selRef_initWithTarget_;
    (*(v223 + 8))(v89, v224);
    v91 = v219;
  }

  else
  {

    (*(v223 + 8))(v57, v224);
    v91 = v219;
    v82 = v232;
    v90 = &selRef_initWithTarget_;
  }

  sub_1CF9E5128();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  v201 = swift_initStackObject();
  *(v201 + 16) = xmmword_1CF9FA450;
  v202 = *MEMORY[0x1E696A998];
  *(v201 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(v201 + 40) = v203;
  v204 = [v63 v90[122]];
  *(v201 + 72) = v82;
  __swift_allocate_boxed_opaque_existential_0((v201 + 48));
  sub_1CF9E59D8();

  sub_1CF4E04E8(v201);
  swift_setDeallocating();
  sub_1CEFCCC44(v201 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
  sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
  v205 = v221;
  sub_1CF9E57D8();
  sub_1CF9E50D8();
  (*(v220 + 8))(v91, v205);
  swift_willThrow();

LABEL_34:
  v185 = *MEMORY[0x1E69E9840];
  return v50 & 1;
}

uint64_t sub_1CF89A024(id *a1, char *a2, unint64_t a3)
{
  v84 = a3;
  v90 = a2;
  v5 = sub_1CF9E5248();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v87 = &v75[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1CF9E5268();
  v88 = *(v8 - 8);
  v89 = v8;
  v9 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v86 = &v75[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1CF9E6118();
  v85 = *(v11 - 8);
  v12 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v75[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1CF9E5A58();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v75[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v21 = MEMORY[0x1EEE9AC00](v20).n128_u64[0];
  v23 = &v75[-v22];
  v24 = *a1;
  v25 = [*a1 knownFolder];
  sub_1CF9E59D8();

  v26 = sub_1CF7A4B00(v23, 2);
  if (v3)
  {

    (*(v16 + 8))(v23, v15);
LABEL_3:
    v27 = 1;
    return v27 & 1;
  }

  v29 = v26;
  v81 = v19;
  v82 = v14;
  v83 = v11;
  v30 = *(v16 + 8);
  v30(v23, v15);
  if (!v29)
  {
    goto LABEL_3;
  }

  v31 = *&v90[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID];
  v32 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v34 = v33;
  if (v32 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v34 == v35)
  {

    v27 = 0;
  }

  else
  {
    v37 = sub_1CF9E8048();

    if (v37)
    {

      v27 = 0;
    }

    else
    {
      v80 = v30;
      v38 = fpfs_current_or_default_log();
      v39 = v82;
      sub_1CF9E6128();
      v40 = v24;
      v41 = v29;
      v42 = v84;
      sub_1CEFD09A0(v84);
      v43 = sub_1CF9E6108();
      v44 = sub_1CF9E72A8();

      sub_1CEFD0A98(v42);
      v45 = os_log_type_enabled(v43, v44);
      v90 = v41;
      if (v45)
      {
        v46 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v91 = v78;
        *v46 = 136315650;
        v47 = [v40 knownFolder];
        v77 = v43;
        v48 = v47;
        v49 = v81;
        sub_1CF9E59D8();

        v76 = v44;
        v50 = sub_1CF9E5928();
        v51 = [v50 fp_shortDescription];

        v52 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v79 = v40;
        v54 = v53;

        v55 = v49;
        v56 = &selRef_initWithTarget_;
        v80(v55, v15);
        v57 = sub_1CEFD0DF0(v52, v54, &v91);

        *(v46 + 4) = v57;
        *(v46 + 12) = 2080;
        v58 = [v90 fp_obfuscatedProviderDomainID];
        v59 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v61 = v60;

        v62 = sub_1CEFD0DF0(v59, v61, &v91);
        v40 = v79;

        *(v46 + 14) = v62;
        *(v46 + 22) = 2082;
        v63 = sub_1CEFD11AC(v42);
        v65 = sub_1CEFD0DF0(v63, v64, &v91);

        *(v46 + 24) = v65;
        v66 = v77;
        _os_log_impl(&dword_1CEFC7000, v77, v76, "cannot take ownership of %s, it's owned by %s for %{public}s", v46, 0x20u);
        v67 = v78;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v67, -1, -1);
        MEMORY[0x1D386CDC0](v46, -1, -1);

        (*(v85 + 8))(v39, v83);
        v69 = v88;
        v68 = v89;
        v70 = v86;
      }

      else
      {

        (*(v85 + 8))(v39, v83);
        v69 = v88;
        v68 = v89;
        v70 = v86;
        v56 = &selRef_initWithTarget_;
      }

      sub_1CF9E5128();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1CF9FA450;
      v72 = *MEMORY[0x1E696A998];
      *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      *(inited + 40) = v73;
      v74 = [v40 v56[122]];
      *(inited + 72) = v15;
      __swift_allocate_boxed_opaque_existential_0((inited + 48));
      sub_1CF9E59D8();

      sub_1CF4E04E8(inited);
      swift_setDeallocating();
      sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
      sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
      sub_1CF9E57D8();
      sub_1CF9E50D8();
      (*(v69 + 8))(v70, v68);
      swift_willThrow();
    }
  }

  return v27 & 1;
}

void sub_1CF89A760(unint64_t a1, unint64_t a2, void *a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v166 = a8;
  v175 = a6;
  v155 = a5;
  v179 = a4;
  v173 = a3;
  v192[8] = *MEMORY[0x1E69E9840];
  v160 = sub_1CF9E5248();
  v10 = *(v160 - 8);
  v11 = v10[8];
  MEMORY[0x1EEE9AC00](v160);
  v161 = &v150 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_1CF9E5268();
  v152 = *(v153 - 8);
  v13 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v153);
  v151 = &v150 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E5A58();
  v157 = *(v15 - 1);
  v16 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v162 = &v150 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v172 = &v150 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v182 = (&v150 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v150 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v150 - v26;
  v174 = sub_1CF9E6118();
  v154 = *(v174 - 8);
  v28 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v174);
  v150 = &v150 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v150 - v31;
  swift_beginAccess();
  if (*a1 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1CF9E7818())
  {
    v184 = v27;
    v177 = a2;
    v186 = v15;
    if (i)
    {
      swift_beginAccess();
      a1 = *a1;
      if (a1 >> 62)
      {
        v34 = sub_1CF9E7818();
        if (v34)
        {
LABEL_6:
          v163 = v34;
          v169 = objc_opt_self();
          v165 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID;
          v171 = a1 & 0xC000000000000001;
          v156 = a1 & 0xFFFFFFFFFFFFFF8;
          v168 = (v154 + 8);
          v35 = (v157 + 8);
          v159 = v10 + 1;
          v164 = (v157 + 16);

          v36 = a1;
          v37 = 0;
          *&v38 = 136446466;
          v158 = v38;
          v170 = a1;
          v176 = v32;
          v167 = v24;
          v183 = v35;
          while (1)
          {
            if (v171)
            {
              v39 = MEMORY[0x1D3869C30](v37, v36);
            }

            else
            {
              if (v37 >= *(v156 + 16))
              {
                goto LABEL_50;
              }

              v39 = *(v36 + 8 * v37 + 32);
            }

            v10 = v39;
            if (__OFADD__(v37, 1))
            {
              goto LABEL_49;
            }

            v178 = v37 + 1;
            v180 = v37;
            v40 = fpfs_current_or_default_log();
            sub_1CF9E6128();
            v41 = v10;
            sub_1CEFD09A0(a2);
            v42 = sub_1CF9E6108();
            v43 = sub_1CF9E72C8();

            sub_1CEFD0A98(a2);
            if (os_log_type_enabled(v42, v43))
            {
              v44 = swift_slowAlloc();
              v181 = swift_slowAlloc();
              *&v187[0] = v181;
              *v44 = v158;
              v45 = [v41 knownFolder];
              sub_1CF9E59D8();

              v46 = sub_1CF9E5928();
              v47 = [v46 fp_shortDescription];

              v48 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v50 = v49;

              v51 = v41;
              v52 = v183;
              (*v183)(v184, v186);
              v53 = sub_1CEFD0DF0(v48, v50, v187);
              v27 = v184;

              *(v44 + 4) = v53;
              *(v44 + 12) = 2082;
              v54 = sub_1CEFD11AC(v177);
              v56 = sub_1CEFD0DF0(v54, v55, v187);

              *(v44 + 14) = v56;
              _os_log_impl(&dword_1CEFC7000, v42, v43, "importing %{public}s as detached for %{public}s", v44, 0x16u);
              v57 = v181;
              swift_arrayDestroy();
              MEMORY[0x1D386CDC0](v57, -1, -1);
              v58 = v44;
              v15 = v186;
              MEMORY[0x1D386CDC0](v58, -1, -1);

              (*v168)(v176, v174);
            }

            else
            {

              (*v168)(v32, v174);
              v51 = v41;
              v52 = v183;
            }

            v59 = [v169 defaultManager];
            v60 = [v51 knownFolder];
            sub_1CF9E59D8();

            v61 = sub_1CF9E5928();
            v181 = *v52;
            v181(v27, v15);
            *&v187[0] = 0;
            v62 = [v59 createDirectoryAtURL:v61 withIntermediateDirectories:0 attributes:0 error:v187];

            v63 = v51;
            if (v62)
            {
              v64 = *&v187[0];
            }

            else
            {
              v65 = *&v187[0];
              v66 = sub_1CF9E57F8();

              swift_willThrow();
              v67 = v66;
              v68 = v161;
              sub_1CF9E5128();
              sub_1CEFCCCA4(&qword_1EDEAB460, MEMORY[0x1E6967E70]);
              v69 = v160;
              LOBYTE(v65) = sub_1CF9E5658();
              v185 = v66;

              (*v159)(v68, v69);
              if ((v65 & 1) == 0)
              {

                goto LABEL_70;
              }

              v185 = 0;
            }

            v70 = [v51 knownFolder];
            v71 = v167;
            sub_1CF9E59D8();

            sub_1CF9E5A18();
            fpfs_openflags_0(0x100100u);
            sub_1CF9E6978();
            v24 = openat_s();

            v73 = v181;
            if ((v24 & 0x80000000) != 0)
            {
              v128 = MEMORY[0x1D38683F0](v72);
              v188 = 0;
              memset(v187, 0, sizeof(v187));
              v189 = 19;
              v129 = sub_1CF19BBE4(v128, v187);
              sub_1CF1969CC(v187);
              v185 = v129;
              swift_willThrow();
              v73(v71, v15);

              goto LABEL_70;
            }

            v181(v71, v15);

            v74 = [v63 logicalLocation];
            sub_1CF9E59D8();

            sub_1CF9E5988();
            v73(v27, v15);
            v75 = [v63 &selRef_materializedURLWithDomain_ + 5];
            sub_1CF9E59D8();

            v76 = sub_1CF9E58E8();
            v78 = v77;
            v73(v27, v15);
            *&v187[0] = v76;
            *(&v187[0] + 1) = v78;
            v190 = 58;
            v191 = 0xE100000000000000;
            v192[0] = 47;
            v192[1] = 0xE100000000000000;
            v148 = sub_1CEFE4E68();
            v149 = v148;
            v147[1] = v148;
            v147[0] = MEMORY[0x1E69E6158];
            v79 = sub_1CF9E7668();
            v81 = v80;

            *&v187[0] = v79;
            *(&v187[0] + 1) = v81;
            v82 = *(*(v173[2] + 32) + 16);
            type metadata accessor for VFSFileTree(0);
            v83 = swift_dynamicCastClassUnconditional();

            v84 = objc_sync_enter(v83);
            if (v84)
            {
              goto LABEL_73;
            }

            v85 = v83[20];

            v86 = objc_sync_exit(v83);
            v87 = v180;
            if (v86)
            {
              MEMORY[0x1EEE9AC00](v86);
              v148 = v83;
              fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v147, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
            }

            v88 = v172;
            v89 = v186;
            (*v164)(v172, v85 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL, v186);
            v90 = v88;

            v91 = *(v179 + v165);
            v92 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v10 = v93;
            v94 = v182;
            v95 = v185;
            sub_1CF2AFAD4(v24, v182, v187, v90, v92, v93);
            v185 = v95;
            if (v95)
            {

              v73(v90, v89);

              v73(v94, v89);
              close(v24);
              goto LABEL_70;
            }

            a1 = v183;
            v73(v90, v89);

            v73(v94, v89);
            close(v24);
            v37 = (v87 + 1);
            a2 = v177;
            v15 = v89;
            v36 = v170;
            v32 = v176;
            if (v178 == v163)
            {

              break;
            }
          }
        }
      }

      else
      {
        v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v34)
        {
          goto LABEL_6;
        }
      }
    }

    v96 = v155;
    swift_beginAccess();
    v97 = *v96;
    if (!(*v96 >> 62))
    {
      if (!*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      goto LABEL_27;
    }

    if (v97 < 0)
    {
      v130 = *v96;
    }

    if (!sub_1CF9E7818())
    {
      break;
    }

LABEL_27:
    v10 = sub_1CF4E0980(MEMORY[0x1E69E7CC0]);
    swift_beginAccess();
    a2 = *v96;
    if (a2 >> 62)
    {
      v24 = sub_1CF9E7818();
    }

    else
    {
      v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v24)
    {
LABEL_39:

      v111 = fpfs_current_or_default_log();
      v112 = v150;
      sub_1CF9E6128();
      v113 = v177;
      sub_1CEFD09A0(v177);
      v114 = sub_1CF9E6108();
      v115 = sub_1CF9E72C8();
      sub_1CEFD0A98(v113);
      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        v192[0] = v117;
        *v116 = 136446210;
        v118 = sub_1CEFD11AC(v113);
        v120 = sub_1CEFD0DF0(v118, v119, v192);

        *(v116 + 4) = v120;
        _os_log_impl(&dword_1CEFC7000, v114, v115, "move detached folders to relocated location for %{public}s", v116, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v117);
        MEMORY[0x1D386CDC0](v117, -1, -1);
        MEMORY[0x1D386CDC0](v116, -1, -1);
      }

      (*(v154 + 8))(v112, v174);
      v121 = v153;
      v122 = v152;
      v123 = v151;
      sub_1CF9E5108();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
      sub_1CF9E57D8();
      v124 = sub_1CF9E50D8();
      (*(v122 + 8))(v123, v121);
      v185 = v124;
      swift_willThrow();
      goto LABEL_70;
    }

    v32 = 0;
    v179 = a2 & 0xC000000000000001;
    v178 = a2 & 0xFFFFFFFFFFFFFF8;
    v180 = (v157 + 8);
    v176 = a2;
    v173 = v24;
    while (1)
    {
      if (v179)
      {
        v98 = MEMORY[0x1D3869C30](v32, a2);
      }

      else
      {
        if (v32 >= *(v178 + 16))
        {
          goto LABEL_48;
        }

        v98 = *(a2 + 8 * v32 + 32);
      }

      v15 = v98;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      v185 = (v32 + 1);
      v182 = v10;
      v99 = [v98 knownFolder];
      sub_1CF9E59D8();

      v181 = sub_1CF9E58E8();
      v183 = v100;
      v101 = *v180;
      v102 = v186;
      (*v180)(v27, v186);
      v103 = sub_1CF9E5928();
      v104 = [v15 logicalLocation];
      sub_1CF9E59D8();

      v105 = sub_1CF9E5928();
      v101(v27, v102);
      v106 = [v103 fp:v105 relativePathOf:?];

      if (!v106)
      {
        v125 = [v15 logicalLocation];
        v126 = v184;
        sub_1CF9E59D8();

        v127 = sub_1CF9E5928();
        v101(v126, v186);
        v83 = FPItemNotFoundErrorAtURL();

        v185 = v83;
        if (v83)
        {

          swift_willThrow();

          goto LABEL_70;
        }

        __break(1u);
LABEL_73:
        MEMORY[0x1EEE9AC00](v84);
        v148 = v83;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v147, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
      }

      v107 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      a1 = v108;

      v109 = v182;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v192[0] = v109;
      sub_1CF1D19D0(v181, v183, v107, a1, isUniquelyReferenced_nonNull_native);

      v10 = v192[0];
      ++v32;
      v24 = v173;
      v27 = v184;
      a2 = v176;
      if (v185 == v173)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

  v131 = v166;
  if (v166 >> 62)
  {
    v132 = sub_1CF9E7818();
    if (!v132)
    {
      goto LABEL_70;
    }
  }

  else
  {
    v132 = *((v166 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v132)
    {
      goto LABEL_70;
    }
  }

  if (v132 < 1)
  {
    __break(1u);
  }

  v133 = 0;
  v183 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID;
  v134 = v131 & 0xC000000000000001;
  v182 = (v157 + 8);
  v135 = &selRef_setItemPendingScanningProviderRemovalOfDatalessBitStatus_;
  do
  {
    if (v134)
    {
      v144 = MEMORY[0x1D3869C30](v133, v131);
    }

    else
    {
      v144 = *(v131 + 8 * v133 + 32);
    }

    v145 = v144;
    if ([v144 v135[416]])
    {
      type metadata accessor for InternalPathsManager();
      v136 = [v145 knownFolder];
      v137 = v184;
      sub_1CF9E59D8();

      v138 = [v145 logicalLocation];
      v139 = v135;
      v140 = v162;
      sub_1CF9E59D8();

      sub_1CF79BE08(v137, v140, *&v183[v179]);
      v141 = *v182;
      v142 = v140;
      v135 = v139;
      v143 = v186;
      (*v182)(v142, v186);
      v131 = v166;
      v141(v137, v143);
    }

    else
    {
    }

    ++v133;
  }

  while (v132 != v133);
LABEL_70:
  v146 = *MEMORY[0x1E69E9840];
}