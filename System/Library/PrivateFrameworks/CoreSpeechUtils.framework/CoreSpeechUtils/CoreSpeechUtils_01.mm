unint64_t sub_247984400(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE593D8, &qword_247996540);
    v2 = sub_247995124();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v16 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v16 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v16);
    ++v9;
    if (v6)
    {
      while (1)
      {
        v17 = __clz(__rbit64(v6)) | (v16 << 6);
        v18 = (*(v1 + 48) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        sub_247978FE4(*(v1 + 56) + 32 * v17, v32);
        *&v31 = v19;
        *(&v31 + 1) = v20;
        v29[2] = v31;
        v30[0] = v32[0];
        v30[1] = v32[1];
        v21 = v31;
        sub_247987230(v30, v29);

        if (!swift_dynamicCast())
        {
          break;
        }

        v6 &= v6 - 1;
        result = sub_247980FE0(v21, *(&v21 + 1));
        if (v22)
        {
          v10 = v1;
          v11 = 16 * result;
          v12 = v2[6] + 16 * result;
          v13 = *(v12 + 8);
          *v12 = v21;

          v14 = (v2[7] + v11);
          v1 = v10;
          v15 = v14[1];
          *v14 = v27;
          v14[1] = v28;

          v9 = v16;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v21;
          v23 = (v2[7] + 16 * result);
          *v23 = v27;
          v23[1] = v28;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_24;
          }

          v2[2] = v26;
          v9 = v16;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v16 = v9;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void __swiftcall SecureAssetsPreinstalledBundle.init(_:)(SecureAssetsPreinstalledBundle_optional *__return_ptr retstr, NSBundle_optional a2)
{
  isa = a2.value.super.isa;
  [objc_allocWithZone(swift_getObjCClassFromMetadata()) init_];
}

char *SecureAssetsPreinstalledBundle.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR___SecureAssetsPreinstalledBundle_rootFolder];
  *v4 = 0;
  *(v4 + 1) = 0xE000000000000000;
  v5 = OBJC_IVAR___SecureAssetsPreinstalledBundle_metaData;
  *&v1[OBJC_IVAR___SecureAssetsPreinstalledBundle_metaData] = MEMORY[0x277D84F98];
  v6 = v1;
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
LABEL_41:
    __break(1u);
    return result;
  }

  v8 = result;
  v88 = a1;
  v9 = MobileGestalt_copy_productType_obj();

  if (v9)
  {
    v10 = sub_247994E84();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = &v6[OBJC_IVAR___SecureAssetsPreinstalledBundle_productType];
  *v13 = v10;
  v13[1] = v12;
  if (qword_27EE590C8 != -1)
  {
    swift_once();
  }

  v14 = sub_247994E34();
  __swift_project_value_buffer(v14, qword_27EE59180);
  v15 = sub_247995064();
  v16 = v6;
  v17 = sub_247994E14();

  v86 = v4;
  v87 = v2;
  v85 = v5;
  if (os_log_type_enabled(v17, v15))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v90[0] = v19;
    *v18 = 136315650;
    *(v18 + 4) = sub_2479784A8(0xD000000000000034, 0x8000000247998400, v90);
    *(v18 + 12) = 2048;
    *(v18 + 14) = 27;
    *(v18 + 22) = 2080;
    v20 = v13;
    if (v13[1])
    {
      v21 = *v13;
      v22 = v13[1];
    }

    else
    {
      v22 = 0xE300000000000000;
      v21 = 7104878;
    }

    v23 = sub_2479784A8(v21, v22, v90);

    *(v18 + 24) = v23;
    _os_log_impl(&dword_247974000, v17, v15, "[%s] [%ld] Found productType: %s", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1B02C0](v19, -1, -1);
    MEMORY[0x24C1B02C0](v18, -1, -1);

    v13 = v20;
  }

  else
  {
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
    goto LABEL_41;
  }

  v24 = result;
  chipID = MobileGestalt_get_chipID();

  v90[0] = chipID;
  v26 = sub_247995154();
  v27 = &v16[OBJC_IVAR___SecureAssetsPreinstalledBundle_chipId];
  *v27 = v26;
  v27[1] = v28;
  v90[0] = chipID;
  sub_2479866B0();
  v29 = sub_247994F64();
  v30 = &v16[OBJC_IVAR___SecureAssetsPreinstalledBundle_hardwarePlatform];
  *v30 = v29;
  v30[1] = v31;
  v32 = sub_247995064();
  v33 = v16;
  v34 = sub_247994E14();

  if (os_log_type_enabled(v34, v32))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v90[0] = v36;
    *v35 = 136315906;
    *(v35 + 4) = sub_2479784A8(0xD000000000000034, 0x8000000247998400, v90);
    *(v35 + 12) = 2048;
    *(v35 + 14) = 34;
    *(v35 + 22) = 2080;
    v84 = v13;
    v37 = v27;
    v38 = *v27;
    v39 = v27[1];

    v40 = sub_2479784A8(v38, v39, v90);

    *(v35 + 24) = v40;
    *(v35 + 32) = 2080;
    v41 = *v30;
    v42 = v30[1];

    v43 = sub_2479784A8(v41, v42, v90);
    v27 = v37;

    *(v35 + 34) = v43;
    v13 = v84;
    _os_log_impl(&dword_247974000, v34, v32, "[%s] [%ld] Found chipId: %s, hardwarePlatform: %s", v35, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C1B02C0](v36, -1, -1);
    MEMORY[0x24C1B02C0](v35, -1, -1);
  }

  else
  {
  }

  if (*v27 == 12589 && v27[1] == 0xE200000000000000 || (sub_247995164() & 1) != 0)
  {
    v44 = sub_247995054();
    v45 = sub_247994E14();
    if (os_log_type_enabled(v45, v44))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v90[0] = v47;
      *v46 = 136315394;
      *(v46 + 4) = sub_2479784A8(0xD000000000000034, 0x8000000247998400, v90);
      *(v46 + 12) = 2048;
      *(v46 + 14) = 38;
      _os_log_impl(&dword_247974000, v45, v44, "[%s] [%ld] Failed to fetch chipId to query assets from secure preinstalleed assets", v46, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x24C1B02C0](v47, -1, -1);
      MEMORY[0x24C1B02C0](v46, -1, -1);
    }

LABEL_23:
    v48 = v30[1];

    v49 = v27[1];

    v50 = v13[1];

    v51 = *(v86 + 1);

    v52 = *&v87[v85];

    type metadata accessor for SecureAssetsPreinstalledBundle();
    swift_deallocPartialClassInstance();
    return 0;
  }

  if (!v88)
  {
    v75 = sub_247995054();
    v76 = sub_247994E14();
    if (os_log_type_enabled(v76, v75))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v90[0] = v78;
      *v77 = 136315394;
      *(v77 + 4) = sub_2479784A8(0xD000000000000034, 0x8000000247998400, v90);
      *(v77 + 12) = 2048;
      *(v77 + 14) = 48;
      _os_log_impl(&dword_247974000, v76, v75, "[%s] [%ld] Nil bundle", v77, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v78);
      MEMORY[0x24C1B02C0](v78, -1, -1);
      MEMORY[0x24C1B02C0](v77, -1, -1);
    }

    goto LABEL_23;
  }

  v53 = v88;
  v54 = [v53 bundlePath];
  v55 = v33;
  v56 = sub_247994E84();
  v58 = v57;

  v59 = &v55[OBJC_IVAR___SecureAssetsPreinstalledBundle_bundlePath];
  *v59 = v56;
  v59[1] = v58;
  v91.receiver = v55;
  v91.super_class = SecureAssetsPreinstalledBundle;
  v60 = objc_msgSendSuper2(&v91, sel_init);
  v61 = v60;
  v62 = sub_2479850BC(v53);
  if (!v63)
  {
    v79 = sub_247995054();
    v80 = sub_247994E14();
    if (os_log_type_enabled(v80, v79))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v90[0] = v82;
      *v81 = 136315394;
      *(v81 + 4) = sub_2479784A8(0xD000000000000034, 0x8000000247998400, v90);
      *(v81 + 12) = 2048;
      *(v81 + 14) = 60;
      v83 = "[%s] [%ld] Failed to fetch secure preinstalled asset root directory bundle";
LABEL_38:
      _os_log_impl(&dword_247974000, v80, v79, v83, v81, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v82);
      MEMORY[0x24C1B02C0](v82, -1, -1);
      MEMORY[0x24C1B02C0](v81, -1, -1);
    }

LABEL_39:

    return 0;
  }

  v64 = &v60[OBJC_IVAR___SecureAssetsPreinstalledBundle_rootFolder];
  v65 = *&v60[OBJC_IVAR___SecureAssetsPreinstalledBundle_rootFolder + 8];
  *v64 = v62;
  v64[1] = v63;

  v66 = *v64;
  v67 = v64[1];

  v68 = sub_247986FC4(v53);

  if (!v68)
  {
    v79 = sub_247995054();
    v80 = sub_247994E14();
    if (os_log_type_enabled(v80, v79))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v90[0] = v82;
      *v81 = 136315394;
      *(v81 + 4) = sub_2479784A8(0xD000000000000034, 0x8000000247998400, v90);
      *(v81 + 12) = 2048;
      *(v81 + 14) = 67;
      v83 = "[%s] [%ld] Failed to fetch preinstalled asset metadata";
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  v69 = OBJC_IVAR___SecureAssetsPreinstalledBundle_metaData;
  swift_beginAccess();
  v70 = *&v61[v69];
  *&v61[v69] = v68;

  v71 = sub_247995064();
  v72 = sub_247994E14();
  if (os_log_type_enabled(v72, v71))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v89 = v74;
    *v73 = 136315394;
    *(v73 + 4) = sub_2479784A8(0xD000000000000034, 0x8000000247998400, &v89);
    *(v73 + 12) = 2048;
    *(v73 + 14) = 72;
    _os_log_impl(&dword_247974000, v72, v71, "[%s] [%ld] Initializied secure preinstalled asset bundle", v73, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v74);
    MEMORY[0x24C1B02C0](v74, -1, -1);
    MEMORY[0x24C1B02C0](v73, -1, -1);
  }

  return v61;
}

unint64_t sub_2479850BC(void *a1)
{
  v2 = v1;
  v4 = sub_247994C14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_247994E74();
  v10 = sub_247994E74();
  v11 = [a1 URLForResource:v9 withExtension:v10];

  if (!v11)
  {
    return 0;
  }

  sub_247994BC4();

  v12 = sub_247986750();
  if (!v12 || (v13 = sub_24798419C(v12), , !v13))
  {
    v13 = sub_247986EC0(MEMORY[0x277D84F90]);

    if (*(v13 + 16))
    {
      goto LABEL_5;
    }

LABEL_39:
    (*(v5 + 8))(v8, v4);
    goto LABEL_42;
  }

  if (!*(v13 + 16))
  {
    goto LABEL_39;
  }

LABEL_5:
  v14 = *(v2 + OBJC_IVAR___SecureAssetsPreinstalledBundle_productType + 8);
  v67 = *(v2 + OBJC_IVAR___SecureAssetsPreinstalledBundle_productType);
  v69 = v14;
  if (!v14 || (v15 = sub_247980FE0(0x54746375646F7270, 0xEB00000000657079), (v16 & 1) == 0) || (v17 = *(*(v13 + 56) + 8 * v15), v18 = , v19 = sub_247984400(v18), , !v19))
  {
    if (!*(v13 + 16))
    {
      goto LABEL_40;
    }

    v20 = sub_247980FE0(6580579, 0xE300000000000000);
    if (v21)
    {
      v22 = *(*(v13 + 56) + 8 * v20);

      v19 = sub_247984400(v23);

      if (v19)
      {
        goto LABEL_14;
      }
    }

    if (!*(v13 + 16) || (v24 = sub_247980FE0(0x6D726F6674616C70, 0xE900000000000073), (v25 & 1) == 0))
    {
LABEL_40:

      (*(v5 + 8))(v8, v4);
      return 0;
    }

    v26 = *(*(v13 + 56) + 8 * v24);

    v19 = sub_247984400(v27);

    if (!v19)
    {
      (*(v5 + 8))(v8, v4);

      return v19;
    }
  }

LABEL_14:
  if (qword_27EE590C8 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v28 = sub_247994E34();
    v29 = __swift_project_value_buffer(v28, qword_27EE59180);
    v30 = sub_247995064();

    v31 = sub_247994E14();

    v32 = os_log_type_enabled(v31, v30);
    v68 = v19;
    v63 = v4;
    v64 = v5;
    v61[1] = v13;
    v62 = v8;
    v61[0] = v29;
    if (v32)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v72[0] = v34;
      *v33 = 136315650;
      *(v33 + 4) = sub_2479784A8(0xD000000000000034, 0x8000000247998400, v72);
      *(v33 + 12) = 2048;
      *(v33 + 14) = 161;
      *(v33 + 22) = 2080;
      v35 = sub_247994E64();
      v5 = v36;
      v37 = sub_2479784A8(v35, v36, v72);

      *(v33 + 24) = v37;
      v19 = v68;
      _os_log_impl(&dword_247974000, v31, v30, "[%s] [%ld] Platform Mapping : %s", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1B02C0](v34, -1, -1);
      MEMORY[0x24C1B02C0](v33, -1, -1);
    }

    v13 = v19 + 64;
    v38 = 1 << *(v19 + 32);
    v39 = -1;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    v8 = v39 & *(v19 + 64);
    v66 = (v2 + OBJC_IVAR___SecureAssetsPreinstalledBundle_chipId);
    v65 = (v2 + OBJC_IVAR___SecureAssetsPreinstalledBundle_hardwarePlatform);
    v4 = (v38 + 63) >> 6;

    v40 = 0;
    v41 = v69;
    if (v8)
    {
      break;
    }

LABEL_21:
    while (1)
    {
      v42 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v42 >= v4)
      {
        (*(v64 + 8))(v62, v63);

LABEL_42:

        return 0;
      }

      v8 = *(v13 + 8 * v42);
      ++v40;
      if (v8)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_53:
    swift_once();
  }

  while (1)
  {
    v42 = v40;
LABEL_24:
    v43 = (v42 << 10) | (16 * __clz(__rbit64(v8)));
    v44 = (*(v19 + 48) + v43);
    v45 = *v44;
    v46 = v44[1];
    v47 = (*(v19 + 56) + v43);
    v19 = *v47;
    v2 = v47[1];
    if (!v41)
    {
      goto LABEL_30;
    }

    if (v45 == v67 && v41 == v46)
    {
      break;
    }

    v49 = *v44;
    v50 = v44[1];
    if (sub_247995164())
    {
      goto LABEL_47;
    }

LABEL_30:
    v51 = v45 == *v66 && v46 == v66[1];
    if (v51 || (sub_247995164() & 1) != 0)
    {
      goto LABEL_47;
    }

    v72[0] = v45;
    v72[1] = v46;
    v52 = v65[1];
    v70 = *v65;
    v71 = v52;
    v5 = sub_247987184();

    if (sub_247995094())
    {
      goto LABEL_48;
    }

    v8 &= v8 - 1;

    v40 = v42;
    v19 = v68;
    v41 = v69;
    if (!v8)
    {
      goto LABEL_21;
    }
  }

  v45 = v67;
LABEL_47:

LABEL_48:

  v54 = sub_247995064();

  v55 = sub_247994E14();

  if (os_log_type_enabled(v55, v54))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v72[0] = v57;
    *v56 = 136315906;
    *(v56 + 4) = sub_2479784A8(0xD000000000000034, 0x8000000247998400, v72);
    *(v56 + 12) = 2048;
    *(v56 + 14) = 169;
    *(v56 + 22) = 2080;
    v58 = sub_2479784A8(v45, v46, v72);
    v59 = v54;
    v60 = v58;

    *(v56 + 24) = v60;
    *(v56 + 32) = 2080;
    *(v56 + 34) = sub_2479784A8(v19, v2, v72);
    _os_log_impl(&dword_247974000, v55, v59, "[%s] [%ld] Found asset root directory for productType:%s, platform:%s", v56, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C1B02C0](v57, -1, -1);
    MEMORY[0x24C1B02C0](v56, -1, -1);
  }

  else
  {
  }

  (*(v64 + 8))(v62, v63);
  return v19;
}

uint64_t SecureAssetsPreinstalledBundle.resourcePathURLForLocale(locale:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v56 = a3;
  v7 = sub_247994B94();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59398, &qword_247996518);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v53 - v14;
  v57 = sub_247994C14();
  v16 = *(v57 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v57);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR___SecureAssetsPreinstalledBundle_metaData;
  swift_beginAccess();
  v21 = *&v4[v20];
  if (*(v21 + 16) && (v22 = sub_247980FE0(a1, a2), (v23 & 1) != 0))
  {
    sub_247978FE4(*(v21 + 56) + 32 * v22, &v60);
  }

  else
  {
    v60 = 0u;
    v61 = 0u;
  }

  swift_endAccess();
  if (!*(&v61 + 1))
  {
    sub_24797A5F4(&v60, &qword_27EE593A0, &qword_247996520);
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59348, &qword_247996930);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    if (qword_27EE590C8 != -1)
    {
      swift_once();
    }

    v41 = sub_247994E34();
    __swift_project_value_buffer(v41, qword_27EE59180);
    v42 = sub_247995054();

    v34 = sub_247994E14();

    if (!os_log_type_enabled(v34, v42))
    {
      goto LABEL_27;
    }

    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *&v60 = v44;
    *v43 = 136315650;
    *(v43 + 4) = sub_2479784A8(0xD000000000000034, 0x8000000247998400, &v60);
    *(v43 + 12) = 2048;
    *(v43 + 14) = 82;
    *(v43 + 22) = 2080;
    *(v43 + 24) = sub_2479784A8(a1, a2, &v60);
    v45 = "[%s] [%ld] Unable to find asset meta data for locale %s";
LABEL_25:
    _os_log_impl(&dword_247974000, v34, v42, v45, v43, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1B02C0](v44, -1, -1);
    v40 = v43;
    goto LABEL_26;
  }

  v24 = v58;
  if (!*(v58 + 16) || (v25 = sub_247980FE0(0xD000000000000014, 0x8000000247998440), (v26 & 1) == 0))
  {

    goto LABEL_21;
  }

  sub_247978FE4(*(v24 + 56) + 32 * v25, &v60);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    if (qword_27EE590C8 != -1)
    {
      swift_once();
    }

    v46 = sub_247994E34();
    __swift_project_value_buffer(v46, qword_27EE59180);
    v42 = sub_247995054();

    v34 = sub_247994E14();

    if (!os_log_type_enabled(v34, v42))
    {
      goto LABEL_27;
    }

    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *&v60 = v44;
    *v43 = 136315650;
    *(v43 + 4) = sub_2479784A8(0xD000000000000034, 0x8000000247998400, &v60);
    *(v43 + 12) = 2048;
    *(v43 + 14) = 87;
    *(v43 + 22) = 2080;
    *(v43 + 24) = sub_2479784A8(a1, a2, &v60);
    v45 = "[%s] [%ld] Unable to find relative resource path for locale %s";
    goto LABEL_25;
  }

  v27 = v59;
  v28 = *&v4[OBJC_IVAR___SecureAssetsPreinstalledBundle_bundlePath];
  v29 = *&v4[OBJC_IVAR___SecureAssetsPreinstalledBundle_bundlePath + 8];
  v54 = &v4[OBJC_IVAR___SecureAssetsPreinstalledBundle_bundlePath];
  v55 = v58;

  sub_247994BD4();

  v30 = v57;
  if ((*(v16 + 48))(v15, 1, v57) != 1)
  {
    (*(v16 + 32))(v19, v15, v30);
    *&v60 = v55;
    *(&v60 + 1) = v27;
    (*(v8 + 104))(v11, *MEMORY[0x277CC91D8], v7);
    sub_247987184();
    v51 = v56;
    sub_247994BF4();
    v52 = v57;
    (*(v8 + 8))(v11, v7);
    (*(v16 + 8))(v19, v52);

    v49 = v52;
    v48 = v51;
    v47 = 0;
    return (*(v16 + 56))(v48, v47, 1, v49);
  }

  sub_24797A5F4(v15, &qword_27EE59398, &qword_247996518);
  if (qword_27EE590C8 != -1)
  {
    swift_once();
  }

  v31 = sub_247994E34();
  __swift_project_value_buffer(v31, qword_27EE59180);
  v32 = sub_247995054();
  v33 = v4;
  v34 = sub_247994E14();

  if (os_log_type_enabled(v34, v32))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&v60 = v36;
    *v35 = 136315650;
    *(v35 + 4) = sub_2479784A8(0xD000000000000034, 0x8000000247998400, &v60);
    *(v35 + 12) = 2048;
    *(v35 + 14) = 92;
    *(v35 + 22) = 2080;
    v37 = *v54;
    v38 = v54[1];

    v39 = sub_2479784A8(v37, v38, &v60);

    *(v35 + 24) = v39;
    _os_log_impl(&dword_247974000, v34, v32, "[%s] [%ld] Unable to create URL from bundle path %s", v35, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1B02C0](v36, -1, -1);
    v40 = v35;
LABEL_26:
    MEMORY[0x24C1B02C0](v40, -1, -1);
  }

LABEL_27:

  v47 = 1;
  v48 = v56;
  v49 = v57;
  return (*(v16 + 56))(v48, v47, 1, v49);
}

Swift::String_optional __swiftcall SecureAssetsPreinstalledBundle.assetVersionForLocale(locale:)(Swift::String locale)
{
  object = locale._object;
  countAndFlagsBits = locale._countAndFlagsBits;
  v4 = OBJC_IVAR___SecureAssetsPreinstalledBundle_metaData;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (*(v5 + 16) && (v6 = sub_247980FE0(countAndFlagsBits, object), (v7 & 1) != 0))
  {
    sub_247978FE4(*(v5 + 56) + 32 * v6, &v22);
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  swift_endAccess();
  if (!*(&v23 + 1))
  {
    sub_24797A5F4(&v22, &qword_27EE593A0, &qword_247996520);
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59348, &qword_247996930);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    if (qword_27EE590C8 != -1)
    {
      swift_once();
    }

    v14 = sub_247994E34();
    __swift_project_value_buffer(v14, qword_27EE59180);
    v15 = sub_247995054();

    v16 = sub_247994E14();

    if (os_log_type_enabled(v16, v15))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v22 = v18;
      *v17 = 136315650;
      *(v17 + 4) = sub_2479784A8(0xD000000000000034, 0x8000000247998400, &v22);
      *(v17 + 12) = 2048;
      *(v17 + 14) = 107;
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_2479784A8(countAndFlagsBits, object, &v22);
      _os_log_impl(&dword_247974000, v16, v15, "[%s] [%ld] Unable to find asset meta data for locale %s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1B02C0](v18, -1, -1);
      MEMORY[0x24C1B02C0](v17, -1, -1);
    }

    goto LABEL_22;
  }

  if (!*(v20 + 16) || (v8 = sub_247980FE0(0x65566769666E6F63, 0xED00006E6F697372), (v9 & 1) == 0))
  {

LABEL_22:
    v12 = 0;
    v13 = 0;
    goto LABEL_23;
  }

  sub_247978FE4(*(v20 + 56) + 32 * v8, &v22);

  v10 = swift_dynamicCast();
  v11 = v10 == 0;
  if (v10)
  {
    v12 = v20;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = v21;
  }

LABEL_23:
  result.value._object = v13;
  result.value._countAndFlagsBits = v12;
  return result;
}

void __swiftcall SecureAssetsPreinstalledBundle.init()(SecureAssetsPreinstalledBundle *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t sub_2479866B0()
{
  result = qword_27EE59380;
  if (!qword_27EE59380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE59380);
  }

  return result;
}

unint64_t type metadata accessor for SecureAssetsPreinstalledBundle()
{
  result = qword_27EE593B0;
  if (!qword_27EE593B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE593B0);
  }

  return result;
}

void *sub_247986750()
{
  v34 = *MEMORY[0x277D85DE8];
  v0 = sub_247994C14();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = sub_247994C24();
  v4 = v3;
  v5 = objc_opt_self();
  v6 = sub_247994C44();
  v32[0] = 0;
  v7 = [v5 JSONObjectWithData:v6 options:0 error:v32];

  if (v7)
  {
    v8 = v32[0];
    sub_2479950A4();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59348, &qword_247996930);
    if (swift_dynamicCast())
    {
      v9 = v33;
    }

    else
    {
      v9 = 0;
    }

    if (qword_27EE590C8 != -1)
    {
      swift_once();
    }

    v10 = sub_247994E34();
    __swift_project_value_buffer(v10, qword_27EE59180);
    v11 = sub_247995064();

    v12 = sub_247994E14();

    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v32[0] = v14;
      *v13 = 136315650;
      *(v13 + 4) = sub_2479784A8(0xD000000000000034, 0x8000000247998400, v32);
      *(v13 + 12) = 2048;
      *(v13 + 14) = 121;
      *(v13 + 22) = 2080;
      v33 = v9;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE593C8, &qword_247996530);
      v15 = sub_247994ED4();
      v17 = sub_2479784A8(v15, v16, v32);

      *(v13 + 24) = v17;
      _os_log_impl(&dword_247974000, v12, v11, "[%s] [%ld] Fetched json data %s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1B02C0](v14, -1, -1);
      MEMORY[0x24C1B02C0](v13, -1, -1);
    }

    sub_247978C04(v2, v4);
  }

  else
  {
    v20 = v32[0];
    v21 = sub_247994B84();

    swift_willThrow();
    if (qword_27EE590C8 != -1)
    {
      swift_once();
    }

    v22 = sub_247994E34();
    __swift_project_value_buffer(v22, qword_27EE59180);
    v23 = sub_247995054();
    v24 = v21;
    v25 = sub_247994E14();

    if (os_log_type_enabled(v25, v23))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v32[0] = v27;
      *v26 = 136315650;
      *(v26 + 4) = sub_2479784A8(0xD000000000000034, 0x8000000247998400, v32);
      *(v26 + 12) = 2048;
      *(v26 + 14) = 124;
      *(v26 + 22) = 2080;
      v33 = v21;
      v28 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE593C0, &qword_247996528);
      v29 = sub_247994ED4();
      v31 = sub_2479784A8(v29, v30, v32);

      *(v26 + 24) = v31;
      _os_log_impl(&dword_247974000, v25, v23, "[%s] [%ld] Error reading json file with error: %s", v26, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1B02C0](v27, -1, -1);
      MEMORY[0x24C1B02C0](v26, -1, -1);
      sub_247978C04(v2, v4);
    }

    else
    {
      sub_247978C04(v2, v4);
    }

    v9 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v9;
}

unint64_t sub_247986EC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE593D0, &qword_247996538);
    v3 = sub_247995124();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_247980FE0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_247986FC4(void *a1)
{
  v2 = sub_247994C14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = sub_247994E74();
  v11 = sub_247994E74();
  v12 = sub_247994E74();
  v13 = [a1 URLForResource:v10 withExtension:v11 subdirectory:v12];

  if (!v13)
  {
    return 0;
  }

  sub_247994BC4();

  (*(v3 + 32))(v9, v7, v2);
  v14 = sub_247986750();
  (*(v3 + 8))(v9, v2);
  return v14;
}

unint64_t sub_247987184()
{
  result = qword_27EE593A8;
  if (!qword_27EE593A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE593A8);
  }

  return result;
}

unint64_t sub_2479871D8()
{
  result = qword_27EE593B8;
  if (!qword_27EE593B8)
  {
    sub_247994C14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE593B8);
  }

  return result;
}

_OWORD *sub_247987230(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t SecureLocale.description.getter()
{
  result = 0x45412D7261;
  switch(*v0)
  {
    case 1:
      result = 0x41532D7261;
      break;
    case 2:
      result = 0x4B442D6164;
      break;
    case 3:
      result = 0x54412D6164;
      break;
    case 4:
      result = 0x45442D6564;
      break;
    case 5:
      result = 0x48432D6564;
      break;
    case 6:
      result = 0x4E492D6E65;
      break;
    case 7:
      result = 0x53552D6E65;
      break;
    case 8:
      result = 0x41432D6E65;
      break;
    case 9:
      result = 0x55412D6E65;
      break;
    case 0xA:
      result = 0x42472D6E65;
      break;
    case 0xB:
      result = 0x47532D6E65;
      break;
    case 0xC:
      result = 0x45492D6E65;
      break;
    case 0xD:
      result = 0x415A2D6E65;
      break;
    case 0xE:
      result = 0x5A4E2D6E65;
      break;
    case 0xF:
      result = 0x53452D7365;
      break;
    case 0x10:
      result = 0x53552D7365;
      break;
    case 0x11:
      result = 0x4C432D7365;
      break;
    case 0x12:
      result = 0x584D2D7365;
      break;
    case 0x13:
      result = 0x49462D6966;
      break;
    case 0x14:
      result = 0x45422D7266;
      break;
    case 0x15:
      result = 0x52462D7266;
      break;
    case 0x16:
      result = 0x41432D7266;
      break;
    case 0x17:
      result = 0x48432D7266;
      break;
    case 0x18:
      result = 0x4C492D6568;
      break;
    case 0x19:
      result = 0x54492D7469;
      break;
    case 0x1A:
      result = 0x48432D7469;
      break;
    case 0x1B:
      result = 0x504A2D616ALL;
      break;
    case 0x1C:
      result = 0x524B2D6F6BLL;
      break;
    case 0x1D:
      result = 0x594D2D736DLL;
      break;
    case 0x1E:
      result = 0x4F4E2D626ELL;
      break;
    case 0x1F:
      result = 0x45422D6C6ELL;
      break;
    case 0x20:
      result = 0x4C4E2D6C6ELL;
      break;
    case 0x21:
      result = 0x52422D7470;
      break;
    case 0x22:
      result = 0x54502D7470;
      break;
    case 0x23:
      result = 0x55522D7572;
      break;
    case 0x24:
      result = 0x45532D7673;
      break;
    case 0x25:
      result = 0x48542D6874;
      break;
    case 0x26:
      result = 0x52542D7274;
      break;
    case 0x27:
      result = 0x4E432D657579;
      break;
    case 0x28:
      result = 0x4E432D687ALL;
      break;
    case 0x29:
      result = 0x57542D687ALL;
      break;
    case 0x2A:
      result = 0x4B482D687ALL;
      break;
    case 0x2B:
      result = 0x4E562D6976;
      break;
    default:
      return result;
  }

  return result;
}

CoreSpeechUtils::SecureLocale_optional __swiftcall SecureLocale.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue > 701)
  {
    if (rawValue > 1499)
    {
      if (rawValue <= 1899)
      {
        if (rawValue <= 1599)
        {
          if (rawValue == 1500)
          {
            *v1 = 33;
            return rawValue;
          }

          if (rawValue == 1501)
          {
            *v1 = 34;
            return rawValue;
          }
        }

        else
        {
          switch(rawValue)
          {
            case 0x640u:
              *v1 = 35;
              return rawValue;
            case 0x6A4u:
              *v1 = 36;
              return rawValue;
            case 0x708u:
              *v1 = 37;
              return rawValue;
          }
        }
      }

      else if (rawValue > 2100)
      {
        switch(rawValue)
        {
          case 0x835u:
            *v1 = 41;
            return rawValue;
          case 0x836u:
            *v1 = 42;
            return rawValue;
          case 0x898u:
            *v1 = 43;
            return rawValue;
        }
      }

      else
      {
        switch(rawValue)
        {
          case 0x76Cu:
            *v1 = 38;
            return rawValue;
          case 0x7D0u:
            *v1 = 39;
            return rawValue;
          case 0x834u:
            *v1 = 40;
            return rawValue;
        }
      }
    }

    else if (rawValue <= 999)
    {
      if (rawValue <= 799)
      {
        if (rawValue == 702)
        {
          *v1 = 22;
          return rawValue;
        }

        if (rawValue == 703)
        {
          *v1 = 23;
          return rawValue;
        }
      }

      else
      {
        switch(rawValue)
        {
          case 0x320u:
            *v1 = 24;
            return rawValue;
          case 0x384u:
            *v1 = 25;
            return rawValue;
          case 0x385u:
            *v1 = 26;
            return rawValue;
        }
      }
    }

    else if (rawValue > 1299)
    {
      switch(rawValue)
      {
        case 0x514u:
          *v1 = 30;
          return rawValue;
        case 0x578u:
          *v1 = 31;
          return rawValue;
        case 0x579u:
          *v1 = 32;
          return rawValue;
      }
    }

    else
    {
      switch(rawValue)
      {
        case 0x3E8u:
          *v1 = 27;
          return rawValue;
        case 0x44Cu:
          *v1 = 28;
          return rawValue;
        case 0x4B0u:
          *v1 = 29;
          return rawValue;
      }
    }

LABEL_88:
    *v1 = 44;
    return rawValue;
  }

  if (rawValue <= 399)
  {
    if (rawValue > 299)
    {
      switch(rawValue)
      {
        case 0x12Cu:
          *v1 = 3;
          return rawValue;
        case 0x12Du:
          *v1 = 4;
          return rawValue;
        case 0x12Eu:
          *v1 = 5;
          return rawValue;
      }
    }

    else
    {
      switch(rawValue)
      {
        case 0x64u:
          *v1 = 0;
          return rawValue;
        case 0x65u:
          *v1 = 1;
          return rawValue;
        case 0xC8u:
          *v1 = 2;
          return rawValue;
      }
    }

    goto LABEL_88;
  }

  if (rawValue > 599)
  {
    switch(rawValue)
    {
      case 0x258u:
        *v1 = 19;
        return rawValue;
      case 0x2BCu:
        *v1 = 20;
        return rawValue;
      case 0x2BDu:
        *v1 = 21;
        return rawValue;
    }

    goto LABEL_88;
  }

  switch(rawValue)
  {
    case 0x190u:
      *v1 = 6;
      break;
    case 0x191u:
      *v1 = 7;
      break;
    case 0x192u:
      *v1 = 8;
      break;
    case 0x193u:
      *v1 = 9;
      break;
    case 0x194u:
      *v1 = 10;
      break;
    case 0x195u:
      *v1 = 11;
      break;
    case 0x196u:
      *v1 = 12;
      break;
    case 0x197u:
      *v1 = 13;
      break;
    case 0x198u:
      *v1 = 14;
      break;
    case 0x1F4u:
      *v1 = 15;
      break;
    case 0x1F5u:
      *v1 = 16;
      break;
    case 0x1F6u:
      *v1 = 17;
      break;
    case 0x1F7u:
      *v1 = 18;
      break;
    default:
      goto LABEL_88;
  }

  return rawValue;
}

unint64_t sub_247987B9C()
{
  result = qword_27EE593E8;
  if (!qword_27EE593E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE593E8);
  }

  return result;
}

uint64_t sub_247987BF0()
{
  v1 = *v0;
  sub_2479951C4();
  v2 = dword_247996738[v1];
  sub_2479951E4();
  return sub_2479951F4();
}

uint64_t sub_247987C78()
{
  v1 = *v0;
  sub_2479951C4();
  v2 = dword_247996738[v1];
  sub_2479951E4();
  return sub_2479951F4();
}

unint64_t sub_247987CE8()
{
  result = qword_27EE593F0;
  if (!qword_27EE593F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE593F8, &qword_247996608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE593F0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SecureLocale(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD5)
  {
    goto LABEL_17;
  }

  if (a2 + 43 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 43) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 43;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 43;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 43;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2C;
  v8 = v6 - 44;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SecureLocale(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 43 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 43) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD5)
  {
    v4 = 0;
  }

  if (a2 > 0xD4)
  {
    v5 = ((a2 - 213) >> 8) + 1;
    *result = a2 + 43;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 43;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t SecureVTFirstPassConfig.configPathNDAPI.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void *SecureVTFirstPassConfig.memoryIndexes.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t sub_247987F90(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 112);
  *(v4 + 104) = v3;
  *(v4 + 112) = v2;
}

uint64_t sub_247987FF0()
{
  swift_beginAccess();
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t sub_24798803C()
{
  v1 = sub_247994EC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  v25 = *(v0 + 16);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  v10 = *(v0 + 56);
  v11 = *(v0 + 64);
  swift_beginAccess();
  if (*(v0 + 112))
  {
    v12 = *(v0 + 104);
    v13 = v11;

    sub_247994EB4();
    v14 = sub_247994E94();
    v16 = v15;

    (*(v2 + 8))(v5, v1);
  }

  else
  {
    v17 = v11;

    v14 = 0;
    v16 = 0xF000000000000000;
  }

  v24 = *(v0 + 80);
  v18 = *(v0 + 96);
  type metadata accessor for SecureVTFirstPassConfig();
  result = swift_allocObject();
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 16) = v25;
  *(result + 24) = v6;
  *(result + 32) = v7;
  *(result + 40) = v8;
  *(result + 48) = v9;
  *(result + 56) = v10;
  *(result + 64) = v11;
  *(result + 72) = 0;
  *(result + 80) = v24;
  *(result + 96) = v18;
  if (v16 >> 60 != 15)
  {
    v26 = v14;
    v27 = v16;
    v20 = result;
    sub_247994EB4();
    sub_247978C58();
    v21 = sub_247994EA4();
    v23 = v22;
    sub_247978BF0(v14, v16);
    swift_beginAccess();
    result = v20;
    *(v20 + 104) = v21;
    *(v20 + 112) = v23;
  }

  return result;
}

uint64_t sub_247988284()
{
  sub_2479950E4();
  MEMORY[0x24C1AFB30](3827828, 0xE300000000000000);
  v1 = *(v0 + 32);
  sub_247995014();
  MEMORY[0x24C1AFB30](0x3A736364202CLL, 0xE600000000000000);
  v2 = *(v0 + 36);
  sub_247995014();
  MEMORY[0x24C1AFB30](0x3A62736373202CLL, 0xE700000000000000);
  v3 = *(v0 + 40);
  sub_247995014();
  MEMORY[0x24C1AFB30](0x3A637370202CLL, 0xE600000000000000);
  v4 = *(v0 + 48);
  sub_247995014();
  MEMORY[0x24C1AFB30](0x3A626370202CLL, 0xE600000000000000);
  v9 = *(v0 + 56);
  v5 = sub_247995154();
  MEMORY[0x24C1AFB30](v5);

  MEMORY[0x24C1AFB30](0x3A696D202CLL, 0xE500000000000000);
  v6 = *(v0 + 64);
  if (v6)
  {
    [v6 indexCount];
  }

  v7 = sub_247995154();
  MEMORY[0x24C1AFB30](v7);

  return 0;
}

uint64_t SecureVTFirstPassConfig.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 112);

  return v0;
}

uint64_t SecureVTFirstPassConfig.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 112);

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

uint64_t sub_2479884D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 112);
  *a2 = *(v3 + 104);
  a2[1] = v4;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SecureVTFirstPassBoostChannelIndex(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SecureVTFirstPassBoostChannelIndex(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

char *static SecureVTPhraseConfigDecoder.decodeConfig(asset:categoryKey:)(void *a1)
{
  v2 = sub_247994E74();
  v3 = sub_247994E74();
  v4 = [a1 containsKeyWithKey:v2 category:v3];

  if (v4)
  {

    return sub_247988E84(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59138, &qword_247995D10);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_247995D00;
    sub_247988980(a1, (v6 + 32));
    return v6;
  }
}

int8x8_t sub_247988980@<D0>(void *a1@<X0>, int8x8_t *a2@<X8>)
{
  v4 = sub_247994E74();
  v5 = sub_247994E74();
  LODWORD(v6) = 1232348160;
  [a1 getFloatWithKey:v4 category:v5 defaultValue:v6];
  v8 = v7;

  v9 = sub_247994E74();
  v10 = sub_247994E74();
  LODWORD(v11) = v8;
  [a1 getFloatWithKey:v9 category:v10 defaultValue:v11];
  v65 = v12;

  v13 = sub_247994E74();
  v14 = sub_247994E74();
  LODWORD(v15) = 1232348160;
  [a1 getFloatWithKey:v13 category:v14 defaultValue:v15];
  v17 = v16;

  v18 = sub_247994E74();
  v19 = sub_247994E74();
  LODWORD(v20) = 1.0;
  [a1 getFloatWithKey:v18 category:v19 defaultValue:v20];
  v22 = v21;

  v23 = sub_247994E74();
  v24 = sub_247994E74();
  LODWORD(v25) = 0.5;
  [a1 getFloatWithKey:v23 category:v24 defaultValue:v25];
  v27 = v26;

  v28 = sub_247994E74();
  v29 = sub_247994E74();
  LODWORD(v30) = 1.0;
  [a1 getFloatWithKey:v28 category:v29 defaultValue:v30];
  v32 = v31;

  v33 = sub_247994E74();
  v34 = sub_247994E74();
  v35 = [a1 getStringWithKey:v33 category:v34];

  if (v35)
  {
    v36 = sub_247994E84();
    v38 = v37;
  }

  else
  {
    v36 = 0x697269535F796568;
    v38 = 0xE800000000000000;
  }

  v39 = sub_247994E74();
  v40 = sub_247994E74();
  LODWORD(v41) = 1.5;
  [a1 getFloatWithKey:v39 category:v40 defaultValue:v41];
  v64 = v42;

  v43 = sub_247994E74();
  v44 = sub_247994E74();
  LODWORD(v45) = 2.0;
  [a1 getFloatWithKey:v43 category:v44 defaultValue:v45];
  v63 = v46;

  v47 = sub_247994E74();
  v48 = sub_247994E74();
  LODWORD(v49) = 1232348160;
  [a1 getFloatWithKey:v47 category:v48 defaultValue:v49];
  v51 = v50;

  v52 = sub_247994E74();
  v53 = sub_247994E74();
  LODWORD(v54) = 1232348160;
  [a1 getFloatWithKey:v52 category:v53 defaultValue:v54];
  v56 = v55;

  v57 = sub_247994E74();
  v58 = sub_247994E74();
  [a1 getFloatWithKey:v57 category:v58 defaultValue:0.0];
  v60 = v59;

  *a2 = 0x6972695320796548;
  a2[1] = 0xE800000000000000;
  a2[2].i32[0] = v8;
  a2[2].i32[1] = v65;
  a2[3].i32[0] = v17;
  a2[3].i32[1] = v22;
  a2[4].i32[0] = v27;
  a2[4].i32[1] = v32;
  a2[5] = v36;
  a2[6] = v38;
  v61 = vadd_f32(__PAIR64__(v63, v64), 0xBF000000BF000000);
  result = vbic_s8(v61, vclez_f32(v61));
  a2[7] = result;
  a2[8].i32[0] = v51;
  a2[8].i32[1] = v56;
  a2[9].i32[0] = v60;
  return result;
}

char *sub_247988E84(void *a1)
{
  v2 = sub_247994E74();
  v3 = sub_247994E74();
  v4 = [a1 getDictionaryArrayWithKey:v2 category:v3];

  if (!v4)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59348, &qword_247996930);
  v5 = sub_247994FB4();

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = MEMORY[0x277D84F90];
    v8 = 32;
    v31 = v5;
    do
    {
      v9 = *(v5 + v8);
      v10 = *(v9 + 16);

      if (v10 && (v11 = sub_247980FE0(1701667182, 0xE400000000000000), (v12 & 1) != 0) && (sub_247978FE4(*(v9 + 56) + 32 * v11, v38), (swift_dynamicCast() & 1) != 0))
      {
        v14 = v36;
        v13 = v37;
      }

      else
      {
        v13 = 0xE800000000000000;
        v14 = 0x6972695320796548;
      }

      v15 = sub_24797FB00(0x6C6F687365726874, 0xE900000000000064, v9, 1000000.0);
      v35 = sub_24797FB00(0xD000000000000012, 0x8000000247998600, v9, v15);
      v34 = sub_24797FB00(0xD000000000000010, 0x8000000247998620, v9, 1000000.0);
      v16 = sub_24797FB00(0xD000000000000010, 0x8000000247998640, v9, 1.0);
      v17 = sub_24797FB00(0xD000000000000019, 0x8000000247998660, v9, 0.5);
      v18 = sub_24797FB00(0xD00000000000001ALL, 0x8000000247998680, v9, 1.0);
      if (*(v9 + 16) && (v19 = sub_247980FE0(0x7A696E676F636572, 0xEF6E656B6F547265), (v20 & 1) != 0) && (sub_247978FE4(*(v9 + 56) + 32 * v19, v38), (swift_dynamicCast() & 1) != 0))
      {
        v21 = v36;
        v22 = v37;
      }

      else
      {
        v22 = 0xE800000000000000;
        v21 = 0x697269535F796568;
      }

      v33 = sub_24797FB00(0xD00000000000001ALL, 0x80000002479986C0, v9, 1.5);
      v32 = sub_24797FB00(0xD000000000000020, 0x80000002479986E0, v9, 2.0);
      v23 = sub_24797FB00(0xD000000000000016, 0x8000000247998730, v9, 1000000.0);
      v24 = sub_24797FB00(0xD000000000000019, 0x8000000247998750, v9, 1000000.0);
      v25 = sub_24797FB00(0xD000000000000017, 0x80000002479986A0, v9, 0.0);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_247976920(0, *(v7 + 2) + 1, 1, v7);
      }

      v27 = *(v7 + 2);
      v26 = *(v7 + 3);
      if (v27 >= v26 >> 1)
      {
        v7 = sub_247976920((v26 > 1), v27 + 1, 1, v7);
      }

      v28 = vadd_f32(__PAIR64__(LODWORD(v32), LODWORD(v33)), 0xBF000000BF000000);
      *(v7 + 2) = v27 + 1;
      v29 = &v7[80 * v27];
      v29[4] = v14;
      v29[5] = v13;
      *v29[6].i32 = v15;
      *&v29[6].i32[1] = v35;
      *v29[7].i32 = v34;
      *&v29[7].i32[1] = v16;
      *v29[8].i32 = v17;
      *&v29[8].i32[1] = v18;
      v29[9] = v21;
      v29[10] = v22;
      v29[11] = vbic_s8(v28, vclez_f32(v28));
      *v29[12].i32 = v23;
      *&v29[12].i32[1] = v24;
      *v29[13].i32 = v25;
      v8 += 8;
      --v6;
      v5 = v31;
    }

    while (v6);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v7;
}

double sub_247989368@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_247994E74();
  v5 = sub_247994E74();
  v6 = [a1 getDictionaryWithKey:v4 category:v5];

  if (v6)
  {
    v7 = sub_247994E54();

    if (*(v7 + 16) && (v8 = sub_247980FE0(0x736E656B6F74, 0xE600000000000000), (v9 & 1) != 0) && (sub_247978FE4(*(v7 + 56) + 32 * v8, v32), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59400, &qword_247996938), swift_dynamicCast()))
    {
      v10 = v31;
    }

    else
    {
      v10 = 0;
    }

    v11 = sub_2479898AC(0xD000000000000010, 0x80000002479987D0, v7);
    v12 = sub_2479898AC(0xD000000000000016, 0x80000002479987F0, v7);
    v13 = sub_247989B48(0xD000000000000012, 0x8000000247998810, v7);
    v14 = sub_247989B48(0xD000000000000018, 0x8000000247998830, v7);
    v15 = v14;
    if (v10 && v11 && v12 && v13 && v14)
    {

      *a2 = v10;
      a2[1] = v12;
      a2[2] = v11;
      a2[3] = v13;
      a2[4] = v15;
      return result;
    }

    if (qword_27EE590C8 != -1)
    {
      swift_once();
    }

    v23 = sub_247994E34();
    __swift_project_value_buffer(v23, qword_27EE59180);
    v24 = sub_247995054();

    v19 = sub_247994E14();

    if (!os_log_type_enabled(v19, v24))
    {

      goto LABEL_23;
    }

    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32[0] = v26;
    *v25 = 136315650;
    *(v25 + 4) = sub_2479784A8(0xD00000000000003ELL, 0x8000000247998790, v32);
    *(v25 + 12) = 2048;
    *(v25 + 14) = 26;
    *(v25 + 22) = 2080;
    v27 = sub_247994E64();
    v29 = v28;

    v30 = sub_2479784A8(v27, v29, v32);

    *(v25 + 24) = v30;
    _os_log_impl(&dword_247974000, v19, v24, "[%s] [%ld] Invalid unwrappedTokenDiscriminativeConfig %s", v25, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1B02C0](v26, -1, -1);
    v22 = v25;
  }

  else
  {
    if (qword_27EE590C8 != -1)
    {
      swift_once();
    }

    v17 = sub_247994E34();
    __swift_project_value_buffer(v17, qword_27EE59180);
    v18 = sub_247995064();
    v19 = sub_247994E14();
    if (!os_log_type_enabled(v19, v18))
    {
      goto LABEL_23;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v32[0] = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_2479784A8(0xD00000000000003ELL, 0x8000000247998790, v32);
    *(v20 + 12) = 2048;
    *(v20 + 14) = 15;
    _os_log_impl(&dword_247974000, v19, v18, "[%s] [%ld] Token discriminative config is not available", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x24C1B02C0](v21, -1, -1);
    v22 = v20;
  }

  MEMORY[0x24C1B02C0](v22, -1, -1);
LABEL_23:

  a2[4] = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  return result;
}

char *sub_2479898AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_247983F3C(a3);
  v6 = v5;
  if (v5)
  {
    if (*(v5 + 16) && (v7 = sub_247980FE0(a1, a2), (v8 & 1) != 0))
    {
      sub_247978FE4(*(v6 + 7) + 32 * v7, v21);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59358, &qword_247996448);
      if (swift_dynamicCast())
      {
        v9 = *(v20[0] + 16);
        if (!v9)
        {

          return MEMORY[0x277D84F90];
        }

        v10 = v20[0] + 32;
        v6 = MEMORY[0x277D84F90];
        while (1)
        {
          sub_247978FE4(v10, v21);
          sub_247978FE4(v21, v20);
          sub_247981058();
          if (swift_dynamicCast())
          {
            [v19 floatValue];
            v13 = v12;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_247976A3C(0, *(v6 + 2) + 1, 1, v6);
            }

            v15 = *(v6 + 2);
            v14 = *(v6 + 3);
            if (v15 >= v14 >> 1)
            {
              v6 = sub_247976A3C((v14 > 1), v15 + 1, 1, v6);
            }

            __swift_destroy_boxed_opaque_existential_0(v21);
            *(v6 + 2) = v15 + 1;
            v11 = &v6[4 * v15];
          }

          else
          {
            sub_247978FE4(v21, v20);
            if ((swift_dynamicCast() & 1) == 0)
            {
              __swift_destroy_boxed_opaque_existential_0(v21);
              goto LABEL_9;
            }

            v13 = v19;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_247976A3C(0, *(v6 + 2) + 1, 1, v6);
            }

            v17 = *(v6 + 2);
            v16 = *(v6 + 3);
            if (v17 >= v16 >> 1)
            {
              v6 = sub_247976A3C((v16 > 1), v17 + 1, 1, v6);
            }

            __swift_destroy_boxed_opaque_existential_0(v21);
            *(v6 + 2) = v17 + 1;
            v11 = &v6[4 * v17];
          }

          *(v11 + 8) = v13;
LABEL_9:
          v10 += 32;
          if (!--v9)
          {

            return v6;
          }
        }
      }
    }

    else
    {
    }

    return 0;
  }

  return v6;
}

char *sub_247989B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_247983F3C(a3);
  v6 = v5;
  if (!v5)
  {
    return v6;
  }

  if (!*(v5 + 16) || (v7 = sub_247980FE0(a1, a2), (v8 & 1) == 0))
  {

    return 0;
  }

  sub_247978FE4(*(v6 + 7) + 32 * v7, v19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59358, &qword_247996448);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v9 = *(v18[0] + 16);
  if (v9)
  {
    v10 = v18[0] + 32;
    v6 = MEMORY[0x277D84F90];
    do
    {
      sub_247978FE4(v10, v19);
      sub_247978FE4(v19, v18);
      sub_247981058();
      if (swift_dynamicCast())
      {
        v11 = [v17 unsignedIntValue];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_247976B40(0, *(v6 + 2) + 1, 1, v6);
        }

        v13 = *(v6 + 2);
        v12 = *(v6 + 3);
        if (v13 >= v12 >> 1)
        {
          v6 = sub_247976B40((v12 > 1), v13 + 1, 1, v6);
        }

        __swift_destroy_boxed_opaque_existential_0(v19);
        *(v6 + 2) = v13 + 1;
        *&v6[4 * v13 + 32] = v11;
      }

      else
      {
        sub_247978FE4(v19, v18);
        if (swift_dynamicCast())
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_247976B40(0, *(v6 + 2) + 1, 1, v6);
          }

          v15 = *(v6 + 2);
          v14 = *(v6 + 3);
          if (v15 >= v14 >> 1)
          {
            v6 = sub_247976B40((v14 > 1), v15 + 1, 1, v6);
          }

          __swift_destroy_boxed_opaque_existential_0(v19);
          *(v6 + 2) = v15 + 1;
          *&v6[4 * v15 + 32] = v17;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0(v19);
        }
      }

      v10 += 32;
      --v9;
    }

    while (v9);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v6;
}

Swift::String __swiftcall SecureAssetType.getAssetFileName()()
{
  v1 = 0x8000000247998870;
  v2 = 0xD000000000000017;
  if (*v0 != 1)
  {
    v2 = 0xD000000000000014;
    v1 = 0x8000000247998850;
  }

  if (*v0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0x6565707365726F63;
  }

  if (*v0)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0xEF6E6F736A2E6863;
  }

  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

NSBundle_optional __swiftcall SecureAssetType.getBundle()()
{
  if (*v0)
  {
    if (*v0 != 1)
    {
      v4 = 0;
      goto LABEL_6;
    }

    v1 = sub_247994E74();
    MGGetBoolAnswer();
  }

  v2 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v3 = sub_247994E74();

  v4 = [v2 initWithPath_];

LABEL_6:
  v6 = v4;
  result.value.super.isa = v6;
  result.is_nil = v5;
  return result;
}

CoreSpeechUtils::SecureAssetType_optional __swiftcall SecureAssetType.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue >= 3)
  {
    v2 = 3;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_247989F68()
{
  v1 = *v0;
  sub_2479951C4();
  sub_2479951E4();
  return sub_2479951F4();
}

uint64_t sub_247989FDC()
{
  v1 = *v0;
  sub_2479951C4();
  sub_2479951E4();
  return sub_2479951F4();
}

id static SecureAssetTypeUtils.getVoiceTriggerAssetBundle()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v1 = sub_247994E74();
  v2 = [v0 initWithPath_];

  return v2;
}

SecureAssetTypeUtils __swiftcall SecureAssetTypeUtils.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id _sSo20SecureAssetTypeUtilsC010CoreSpeechD0E9getBundleySo8NSBundleCSgs6UInt32VFZ_0(int a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      return 0;
    }

    v1 = sub_247994E74();
    MGGetBoolAnswer();
  }

  v2 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v3 = sub_247994E74();

  v4 = [v2 initWithPath_];

  return v4;
}

uint64_t _sSo20SecureAssetTypeUtilsC010CoreSpeechD0E03getB8FileNameySSSgs6UInt32VFZ_0(int a1)
{
  switch(a1)
  {
    case 0:
      return 0x6565707365726F63;
    case 2:
      return 0xD000000000000014;
    case 1:
      return 0xD000000000000017;
  }

  return 0;
}

unint64_t sub_24798A3C8()
{
  result = qword_27EE59408;
  if (!qword_27EE59408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE59408);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SecureAssetType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SecureAssetType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t type metadata accessor for SecureAssetTypeUtils()
{
  result = qword_27EE59410;
  if (!qword_27EE59410)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE59410);
  }

  return result;
}

uint64_t SecureKeywordAnalyzerQuasar.__allocating_init(triggerTokensArray:memoryIndexes:configDataString:discriminativeConfig:preventDuplicatedReset:memoryLock:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, char a6, char a7)
{
  v12 = swift_allocObject();
  v14 = *a5;
  v13 = a5[1];
  v38 = v13;
  v39 = a5[2];
  v40 = a5[3];
  v15 = a5[4];
  *(v12 + 40) = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 72) = 0;
  *(v12 + 16) = a1;
  *(v12 + 24) = a6;
  *(v12 + 25) = a7;
  *(v12 + 28) = 0;
  v16 = MEMORY[0x24C1AFE90]();
  v17 = [a2 memoryIndexes];
  sub_247994E54();

  v18 = sub_247994D84();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_247994D74();
  objc_autoreleasePoolPop(v16);
  if (v21)
  {

    v22 = *(v12 + 40);
    v23 = *(v12 + 48);
    v24 = *(v12 + 56);
    v25 = *(v12 + 64);
    v26 = *(v12 + 72);
    *(v12 + 32) = v21;
    *(v12 + 40) = v14;
    *(v12 + 48) = v38;
    *(v12 + 56) = v39;
    *(v12 + 64) = v40;
    *(v12 + 72) = v15;
    sub_24797DF64(v22);
  }

  else
  {
    sub_24797DF64(v14);
    if (qword_27EE590C8 != -1)
    {
      swift_once();
    }

    v27 = sub_247994E34();
    __swift_project_value_buffer(v27, qword_27EE59180);
    v28 = sub_247995054();
    v29 = sub_247994E14();
    if (os_log_type_enabled(v29, v28))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v41 = v31;
      *v30 = 136315394;
      *(v30 + 4) = sub_2479784A8(0xD000000000000031, 0x8000000247998200, &v41);
      *(v30 + 12) = 2048;
      *(v30 + 14) = 48;
      _os_log_impl(&dword_247974000, v29, v28, "[%s] [%ld] Failed to create NovDetector for Conformer", v30, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x24C1B02C0](v31, -1, -1);
      MEMORY[0x24C1B02C0](v30, -1, -1);
    }

    v32 = *(v12 + 16);

    v33 = *(v12 + 48);
    v34 = *(v12 + 56);
    v35 = *(v12 + 64);
    v36 = *(v12 + 72);
    sub_24797DF64(*(v12 + 40));
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v12;
}

void *SecureKeywordAnalyzerQuasar.init(triggerTokensArray:memoryIndexes:configDataString:discriminativeConfig:preventDuplicatedReset:memoryLock:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, char a6, char a7)
{
  v8 = v7;
  v11 = *a5;
  v10 = a5[1];
  v13 = a5[2];
  v12 = a5[3];
  v37 = v12;
  v38 = a5[4];
  *(v7 + 40) = 0u;
  *(v7 + 56) = 0u;
  *(v7 + 72) = 0;
  *(v7 + 16) = a1;
  *(v7 + 24) = a6;
  *(v7 + 25) = a7;
  *(v7 + 28) = 0;
  v14 = MEMORY[0x24C1AFE90]();
  v15 = [a2 memoryIndexes];
  sub_247994E54();

  v16 = sub_247994D84();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_247994D74();
  objc_autoreleasePoolPop(v14);
  if (v19)
  {

    v20 = v8[5];
    v21 = v8[6];
    v22 = v8[7];
    v23 = v8[8];
    v24 = v8[9];
    v8[4] = v19;
    v8[5] = v11;
    v8[6] = v10;
    v8[7] = v13;
    v8[8] = v37;
    v8[9] = v38;
    sub_24797DF64(v20);
  }

  else
  {
    sub_24797DF64(v11);
    if (qword_27EE590C8 != -1)
    {
      swift_once();
    }

    v25 = sub_247994E34();
    __swift_project_value_buffer(v25, qword_27EE59180);
    v26 = sub_247995054();
    v27 = sub_247994E14();
    v28 = a2;
    if (os_log_type_enabled(v27, v26))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v39 = v30;
      *v29 = 136315394;
      *(v29 + 4) = sub_2479784A8(0xD000000000000031, 0x8000000247998200, &v39);
      *(v29 + 12) = 2048;
      *(v29 + 14) = 48;
      _os_log_impl(&dword_247974000, v27, v26, "[%s] [%ld] Failed to create NovDetector for Conformer", v29, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x24C1B02C0](v30, -1, -1);
      MEMORY[0x24C1B02C0](v29, -1, -1);
    }

    v31 = v8[2];

    v32 = v8[6];
    v33 = v8[7];
    v34 = v8[8];
    v35 = v8[9];
    sub_24797DF64(v8[5]);
    type metadata accessor for SecureKeywordAnalyzerQuasar();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v8;
}

uint64_t sub_24798AB64()
{
  v1 = v0;
  if (qword_27EE590C8 != -1)
  {
    swift_once();
  }

  v2 = sub_247994E34();
  __swift_project_value_buffer(v2, qword_27EE59180);
  v3 = sub_247995064();
  v4 = sub_247994E14();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_2479784A8(0xD000000000000031, 0x8000000247998200, &v9);
    *(v5 + 12) = 2048;
    *(v5 + 14) = 56;
    _os_log_impl(&dword_247974000, v4, v3, "[%s] [%ld] Quasar model reset??", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1B02C0](v6, -1, -1);
    MEMORY[0x24C1B02C0](v5, -1, -1);
  }

  v7 = *(v1 + 32);

  sub_247994D44();
}

char *sub_24798ACE0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE590F0, &qword_247995AD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v34[-v4];
  v6 = sub_247994E04();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v34[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = v0[4];

  sub_247994D54();

  v36 = v1;
  v12 = v1[4];

  LODWORD(v1) = sub_247994D04();

  v35 = v1;
  if (v1)
  {
    v13 = 0;
    v14 = (v7 + 48);
    v15 = (v7 + 32);
    v16 = (v7 + 8);
    v17 = MEMORY[0x277D84F90];
    while (1)
    {
      v18 = v36[4];

      sub_247994D34();

      if ((*v14)(v5, 1, v6) == 1)
      {
        break;
      }

      (*v15)(v10, v5, v6);
      sub_247994DD4();
      v20 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_247976A3C(0, *(v17 + 2) + 1, 1, v17);
      }

      v22 = *(v17 + 2);
      v21 = *(v17 + 3);
      if (v22 >= v21 >> 1)
      {
        v17 = sub_247976A3C((v21 > 1), v22 + 1, 1, v17);
      }

      ++v13;
      (*v16)(v10, v6);
      *(v17 + 2) = v22 + 1;
      *&v17[4 * v22 + 32] = v20;
      if (v35 == v13)
      {
        goto LABEL_11;
      }
    }

    sub_2479761D4(v5);
    if (qword_27EE590C8 != -1)
    {
      swift_once();
    }

    v28 = sub_247994E34();
    __swift_project_value_buffer(v28, qword_27EE59180);
    v29 = sub_247995054();
    v30 = sub_247994E14();
    if (os_log_type_enabled(v30, v29))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v37[0] = v32;
      *v31 = 136315394;
      *(v31 + 4) = sub_2479784A8(0xD000000000000031, 0x8000000247998200, v37);
      *(v31 + 12) = 2048;
      *(v31 + 14) = 70;
      _os_log_impl(&dword_247974000, v30, v29, "[%s] [%ld] ndapi checker results is not available", v31, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x24C1B02C0](v32, -1, -1);
      MEMORY[0x24C1B02C0](v31, -1, -1);
    }

    return 0;
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
LABEL_11:
    v23 = v36[6];
    v24 = v36[7];
    v25 = v36[8];
    v26 = v36[9];
    v37[0] = v36[5];
    v37[1] = v23;
    v37[2] = v24;
    v37[3] = v25;
    v37[4] = v26;
    sub_24797DD30(v37[0]);
    v27 = sub_24798B140(v17, v37);

    sub_24797DF64(v37[0]);
  }

  return v27;
}

uint64_t sub_24798B0D4(uint64_t a1)
{
  v3 = *(v1 + 32);
  swift_beginAccess();
  v4 = *(a1 + 16);

  sub_247994CF4();

  return 0;
}

char *sub_24798B140(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    if (qword_27EE590C8 == -1)
    {
LABEL_21:
      v27 = sub_247994E34();
      __swift_project_value_buffer(v27, qword_27EE59180);
      v28 = sub_247995054();
      v29 = sub_247994E14();
      if (!os_log_type_enabled(v29, v28))
      {
        goto LABEL_38;
      }

      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v158 = v31;
      *v30 = 136315394;
      *(v30 + 4) = sub_2479784A8(0xD000000000000031, 0x8000000247998200, &v158);
      *(v30 + 12) = 2048;
      *(v30 + 14) = 104;
      _os_log_impl(&dword_247974000, v29, v28, "[%s] [%ld] No label scores are available. This is a error.", v30, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v31);
      v32 = v31;
      goto LABEL_37;
    }

LABEL_134:
    swift_once();
    goto LABEL_21;
  }

  v4 = a1;
  if (!*a2)
  {
    v33 = *(v2 + 32);

    v34 = sub_24798DF9C();

    if ((v34 & 1) == 0)
    {
      if (qword_27EE590C8 != -1)
      {
        swift_once();
      }

      v48 = sub_247994E34();
      __swift_project_value_buffer(v48, qword_27EE59180);
      v49 = sub_247995064();
      v50 = sub_247994E14();
      if (os_log_type_enabled(v50, v49))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v158 = v52;
        *v51 = 136315394;
        *(v51 + 4) = sub_2479784A8(0xD000000000000031, 0x8000000247998200, &v158);
        *(v51 + 12) = 2048;
        *(v51 + 14) = 192;
        _os_log_impl(&dword_247974000, v50, v49, "[%s] [%ld] Not processing tokens. Returning the label scores as it is.", v51, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v52);
        MEMORY[0x24C1B02C0](v52, -1, -1);
        MEMORY[0x24C1B02C0](v51, -1, -1);
      }

      v53 = (v4 + 32);
      v42 = MEMORY[0x277D84F90];
      do
      {
        v54 = *v53;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_247976E80(0, *(v42 + 2) + 1, 1, v42);
        }

        v56 = *(v42 + 2);
        v55 = *(v42 + 3);
        if (v56 >= v55 >> 1)
        {
          v42 = sub_247976E80((v55 > 1), v56 + 1, 1, v42);
        }

        *(v42 + 2) = v56 + 1;
        *&v42[4 * v56 + 32] = v54;
        ++v53;
        --v3;
      }

      while (v3);
      goto LABEL_108;
    }

    if (qword_27EE590C8 == -1)
    {
LABEL_25:
      v35 = sub_247994E34();
      __swift_project_value_buffer(v35, qword_27EE59180);
      v36 = sub_247995064();
      v37 = sub_247994E14();
      if (os_log_type_enabled(v37, v36))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v158 = v39;
        *v38 = 136315394;
        *(v38 + 4) = sub_2479784A8(0xD000000000000031, 0x8000000247998200, &v158);
        *(v38 + 12) = 2048;
        *(v38 + 14) = 188;
        _os_log_impl(&dword_247974000, v37, v36, "[%s] [%ld] Discriminative config is not defined. This is a single phrase locale", v38, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v39);
        MEMORY[0x24C1B02C0](v39, -1, -1);
        MEMORY[0x24C1B02C0](v38, -1, -1);
      }

      v40 = sub_24798C838(v4);
      if ((v40 & 0x100000000) != 0)
      {
        v41 = -10000.0;
      }

      else
      {
        v41 = *&v40;
      }

      v42 = sub_247976E80(0, 1, 1, MEMORY[0x277D84F90]);
      v44 = *(v42 + 2);
      v43 = *(v42 + 3);
      if (v44 >= v43 >> 1)
      {
        v42 = sub_247976E80((v43 > 1), v44 + 1, 1, v42);
      }

      *(v42 + 2) = v44 + 1;
      *&v42[4 * v44 + 32] = v41;
LABEL_108:
      if (qword_27EE590C8 != -1)
      {
        swift_once();
      }

      v122 = sub_247994E34();
      __swift_project_value_buffer(v122, qword_27EE59180);
      v123 = sub_247995064();
      v124 = sub_247994E14();
      if (os_log_type_enabled(v124, v123))
      {
        v125 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        v159[0] = v126;
        *v125 = 136315650;
        *(v125 + 4) = sub_2479784A8(0xD000000000000031, 0x8000000247998200, v159);
        *(v125 + 12) = 2048;
        *(v125 + 14) = 204;
        *(v125 + 22) = 2080;

        v128 = MEMORY[0x24C1AFBF0](v127, &type metadata for SecureKeywordAnalyzerQuasarResult);
        v130 = v129;

        v131 = sub_2479784A8(v128, v130, v159);

        *(v125 + 24) = v131;
        _os_log_impl(&dword_247974000, v124, v123, "[%s] [%ld] Token scores=%s", v125, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C1B02C0](v126, -1, -1);
        MEMORY[0x24C1B02C0](v125, -1, -1);
      }

      return v42;
    }

LABEL_138:
    swift_once();
    goto LABEL_25;
  }

  v150 = *a2;
  v149 = a2[1];
  v151 = a2[2];
  v5 = a2[3];
  v6 = a2[4];

  v8 = sub_24798DF28(v7);

  v10 = sub_24798DF28(v9);
  v142 = v5;

  v11 = *(sub_24798C758(v10, v8) + 16);

  if (v3 != v11)
  {

    if (qword_27EE590C8 != -1)
    {
      swift_once();
    }

    v45 = sub_247994E34();
    __swift_project_value_buffer(v45, qword_27EE59180);
    v46 = sub_247995054();

    v29 = sub_247994E14();
    if (!os_log_type_enabled(v29, v46))
    {

      return 0;
    }

    v30 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v158 = v47;
    *v30 = 136315906;
    *(v30 + 4) = sub_2479784A8(0xD000000000000031, 0x8000000247998200, &v158);
    *(v30 + 12) = 2048;
    *(v30 + 14) = 116;
    *(v30 + 22) = 2048;
    *(v30 + 24) = v3;

    *(v30 + 32) = 2048;
    *(v30 + 34) = v11;
    _os_log_impl(&dword_247974000, v29, v46, "[%s] [%ld] label scores collection size=%ld does not match the token collection size=%ld", v30, 0x2Au);
    __swift_destroy_boxed_opaque_existential_0(v47);
    v32 = v47;
LABEL_37:
    MEMORY[0x24C1B02C0](v32, -1, -1);
    MEMORY[0x24C1B02C0](v30, -1, -1);
    goto LABEL_38;
  }

  v12 = *(v150 + 16);
  v146 = v12;
  v147 = v6;
  v141 = v8;
  if (v12)
  {
    if (v12 > *(v6 + 16))
    {
      __break(1u);
    }

    else if (v12 <= *(v5 + 16))
    {
      v13 = (v6 + 32);
      v14 = v4 + 32;
      v15 = (v142 + 32);
      v16 = MEMORY[0x277D84F90];
      v17 = MEMORY[0x277D84F90];
      while (1)
      {
        v19 = *v13++;
        v18 = v19;
        if (v3 <= v19)
        {
          break;
        }

        v20 = *(v14 + 4 * v18);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_247976A3C(0, *(v17 + 2) + 1, 1, v17);
        }

        v22 = *(v17 + 2);
        v21 = *(v17 + 3);
        if (v22 >= v21 >> 1)
        {
          v17 = sub_247976A3C((v21 > 1), v22 + 1, 1, v17);
        }

        *(v17 + 2) = v22 + 1;
        *&v17[4 * v22 + 32] = v20;
        v23 = *v15;
        if (v3 <= v23)
        {
          goto LABEL_123;
        }

        v24 = *(v14 + 4 * v23);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_247976A3C(0, *(v16 + 2) + 1, 1, v16);
        }

        v26 = *(v16 + 2);
        v25 = *(v16 + 3);
        if (v26 >= v25 >> 1)
        {
          v16 = sub_247976A3C((v25 > 1), v26 + 1, 1, v16);
        }

        *(v16 + 2) = v26 + 1;
        *&v16[4 * v26 + 32] = v24;
        ++v15;
        if (!--v12)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_123:
      __break(1u);
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
      goto LABEL_134;
    }

    __break(1u);
    goto LABEL_137;
  }

  v17 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
LABEL_53:
  if (qword_27EE590C8 != -1)
  {
    swift_once();
  }

  v57 = sub_247994E34();
  __swift_project_value_buffer(v57, qword_27EE59180);
  v58 = sub_247995034();
  v59 = v149;
  sub_24797DD30(v150);

  v60 = sub_247994E14();
  sub_24797DF64(v150);

  v148 = v17;
  if (os_log_type_enabled(v60, v58))
  {
    v61 = swift_slowAlloc();
    v154 = swift_slowAlloc();
    v158 = v154;
    *v61 = 136316418;
    *(v61 + 4) = sub_2479784A8(0xD000000000000031, 0x8000000247998200, &v158);
    *(v61 + 12) = 2048;
    *(v61 + 14) = 144;
    *(v61 + 22) = 2080;
    v62 = MEMORY[0x24C1AFBF0](v150, MEMORY[0x277D837D0]);
    v64 = sub_2479784A8(v62, v63, &v158);

    *(v61 + 24) = v64;
    *(v61 + 32) = 2080;

    v65 = MEMORY[0x277D83A90];
    v66 = MEMORY[0x24C1AFBF0](v148, MEMORY[0x277D83A90]);
    v68 = v67;

    v69 = sub_2479784A8(v66, v68, &v158);

    *(v61 + 34) = v69;
    *(v61 + 42) = 2080;

    v71 = MEMORY[0x24C1AFBF0](v70, v65);
    v73 = v72;

    v74 = sub_2479784A8(v71, v73, &v158);

    *(v61 + 44) = v74;
    *(v61 + 52) = 2080;
    v75 = MEMORY[0x24C1AFBF0](v4, v65);
    v77 = sub_2479784A8(v75, v76, &v158);

    *(v61 + 54) = v77;
    _os_log_impl(&dword_247974000, v60, v58, "[%s] [%ld] tokens=%s, discScores=%s, phoneScores=%s, labelScores=%s", v61, 0x3Eu);
    swift_arrayDestroy();
    MEMORY[0x24C1B02C0](v154, -1, -1);
    v78 = v61;
    v17 = v148;
    MEMORY[0x24C1B02C0](v78, -1, -1);
  }

  else
  {
  }

  v4 = *(v141 + 16);
  if (v4)
  {
    v79 = sub_24798C918(*(v141 + 16), 0);
    v80 = sub_24798DE14(&v158, v79 + 8, v4, v141);

    sub_24798E2C8();
    if (v80 != v4)
    {
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    v17 = v148;
    v59 = v149;
  }

  else
  {
    v79 = MEMORY[0x277D84F90];
  }

  v158 = v79;
  sub_24798CF0C(&v158);
  v81 = v158;
  v159[0] = v158;
  v82 = sub_247995034();
  v83 = sub_247994E14();
  if (os_log_type_enabled(v83, v82))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v158 = v85;
    *v84 = 136315650;
    *(v84 + 4) = sub_2479784A8(0xD000000000000031, 0x8000000247998200, &v158);
    *(v84 + 12) = 2048;
    *(v84 + 14) = 147;
    *(v84 + 22) = 2080;

    v87 = MEMORY[0x24C1AFBF0](v86, MEMORY[0x277D84CC0]);
    v88 = v81;
    v90 = v89;

    v91 = sub_2479784A8(v87, v90, &v158);
    v81 = v88;

    *(v84 + 24) = v91;
    _os_log_impl(&dword_247974000, v83, v82, "[%s] [%ld] discIndexList=%s", v84, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1B02C0](v85, -1, -1);
    MEMORY[0x24C1B02C0](v84, -1, -1);
  }

  v92 = v142;
  v93 = v151;
  v94 = v146;
  v95 = 0;
  v155 = v151 + 32;
  v156 = v16 + 32;
  v152 = v59 + 32;
  v153 = v17 + 32;
  v42 = MEMORY[0x277D84F90];
  while (1)
  {
    v144 = v81 + 28;
    v145 = v81;
LABEL_66:
    v96 = v95;
    while (1)
    {
      if (v94 == v96)
      {
        goto LABEL_106;
      }

      if (v96 >= v94)
      {
        goto LABEL_124;
      }

      if (__OFADD__(v96, 1))
      {
        goto LABEL_125;
      }

      v97 = *(v81 + 2);
      if (!v97)
      {
        v116 = sub_247995034();
        v117 = sub_247994E14();
        if (os_log_type_enabled(v117, v116))
        {
          v118 = swift_slowAlloc();
          v119 = swift_slowAlloc();
          v157[0] = v119;
          *v118 = 136315394;
          *(v118 + 4) = sub_2479784A8(0xD000000000000031, 0x8000000247998200, v157);
          *(v118 + 12) = 2048;
          *(v118 + 14) = 152;
          _os_log_impl(&dword_247974000, v117, v116, "[%s] [%ld] The discriminative head index collection is empty, break and continue with the existing results", v118, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v119);
          MEMORY[0x24C1B02C0](v119, -1, -1);
          MEMORY[0x24C1B02C0](v118, -1, -1);
        }

LABEL_106:
        v120 = *(v42 + 2);
        v121 = *(v141 + 16);

        if (v120 != v121)
        {
          v133 = sub_247995054();
          sub_24797DD30(v150);
          v134 = sub_247994E14();
          if (os_log_type_enabled(v134, v133))
          {
            v135 = swift_slowAlloc();
            v136 = swift_slowAlloc();
            v157[0] = v136;
            *v135 = 136315906;
            *(v135 + 4) = sub_2479784A8(0xD000000000000031, 0x8000000247998200, v157);
            *(v135 + 12) = 2048;
            *(v135 + 14) = 178;
            *(v135 + 22) = 2048;
            *(v135 + 24) = *(v42 + 2);
            *(v135 + 32) = 2048;
            *(v135 + 34) = *(v147 + 16);
            sub_24797DF64(v150);
            _os_log_impl(&dword_247974000, v134, v133, "[%s] [%ld] Combined token score count:%ld does not match phrase count %ld", v135, 0x2Au);
            __swift_destroy_boxed_opaque_existential_0(v136);
            MEMORY[0x24C1B02C0](v136, -1, -1);
            MEMORY[0x24C1B02C0](v135, -1, -1);
          }

          else
          {
            sub_24797DF64(v150);
          }

          return 0;
        }

        if (!*(v42 + 2))
        {
          if (qword_27EE590C8 != -1)
          {
            goto LABEL_141;
          }

          goto LABEL_119;
        }

        goto LABEL_108;
      }

      if (v96 >= *(v16 + 2))
      {
        goto LABEL_126;
      }

      if (v96 >= *(v93 + 16))
      {
        goto LABEL_127;
      }

      if (v96 >= *(v17 + 2))
      {
        goto LABEL_128;
      }

      if (v96 >= *(v59 + 16))
      {
        goto LABEL_129;
      }

      v143 = v96 + 1;
      v98 = (*&v156[4 * v96] * *(v155 + 4 * v96)) + (*&v153[4 * v96] * *(v152 + 4 * v96));
      v99 = sub_247995064();
      sub_24797DD30(v150);
      v100 = sub_247994E14();
      v93 = v151;
      v101 = v92;
      v102 = v100;
      v103 = v101;
      sub_24797DF64(v150);
      if (os_log_type_enabled(v102, v99))
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v157[0] = v105;
        *v104 = 136316930;
        *(v104 + 4) = sub_2479784A8(0xD000000000000031, 0x8000000247998200, v157);
        *(v104 + 12) = 2048;
        *(v104 + 14) = 157;
        *(v104 + 22) = 2048;
        *(v104 + 24) = v96;
        *(v104 + 32) = 2048;
        if (v96 >= *(v16 + 2))
        {
          goto LABEL_132;
        }

        *(v104 + 34) = *&v156[4 * v96];
        *(v104 + 42) = 2048;
        *(v104 + 44) = *(v155 + 4 * v96);
        *(v104 + 52) = 2048;
        v17 = v148;
        if (v96 >= *(v148 + 2))
        {
          goto LABEL_133;
        }

        *(v104 + 54) = *&v153[4 * v96];
        *(v104 + 62) = 2048;
        *(v104 + 64) = *(v152 + 4 * v96);
        *(v104 + 72) = 2048;
        *(v104 + 74) = v98;
        _os_log_impl(&dword_247974000, v102, v99, "[%s] [%ld] tokenId: %ld, phoneticScore: %f, phoneticWeight: %f, discScore: %f, discScoreWeight: %f, finalScore: %f", v104, 0x52u);
        __swift_destroy_boxed_opaque_existential_0(v105);
        MEMORY[0x24C1B02C0](v105, -1, -1);
        MEMORY[0x24C1B02C0](v104, -1, -1);

        v92 = v142;
      }

      else
      {

        v17 = v148;
        v92 = v103;
      }

      v59 = v149;
      v81 = v145;
      v94 = v146;
      if (v96 >= *(v92 + 16))
      {
        goto LABEL_130;
      }

      if (v97 > *(v145 + 16))
      {
        goto LABEL_131;
      }

      if (*(v142 + 32 + 4 * v96) >= *&v144[4 * v97])
      {
        break;
      }

      v106 = *(v42 + 2);
      if (!v106)
      {
        v107 = v92;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_247976E80(0, 1, 1, v42);
        }

        v95 = v143;
        v109 = *(v42 + 2);
        v110 = *(v42 + 3);
        v108 = v109 + 1;
        if (v109 >= v110 >> 1)
        {
          goto LABEL_89;
        }

        goto LABEL_93;
      }

      ++v96;
      if (*&v42[4 * v106 + 28] < v98)
      {
        v107 = v92;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_24798CDFC(v42);
        }

        v95 = v143;
        v108 = *(v42 + 2);
        if (!v108)
        {
          goto LABEL_140;
        }

        v109 = v108 - 1;
        *(v42 + 2) = v108 - 1;
        v110 = *(v42 + 3);
        if (v108 > v110 >> 1)
        {
LABEL_89:
          v111 = sub_247976E80((v110 > 1), v108, 1, v42);
          v95 = v143;
          v42 = v111;
        }

LABEL_93:
        *(v42 + 2) = v108;
        *&v42[4 * v109 + 32] = v98;
        v93 = v151;
        v92 = v107;
        goto LABEL_66;
      }
    }

    swift_beginAccess();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      break;
    }

    v81 = sub_24798CDE8(v145);
    v112 = *(v81 + 2);
    if (!v112)
    {
      goto LABEL_139;
    }

LABEL_96:
    *(v81 + 2) = v112 - 1;
    v159[0] = v81;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = sub_247976E80(0, *(v42 + 2) + 1, 1, v42);
    }

    v95 = v96 + 1;
    v114 = *(v42 + 2);
    v113 = *(v42 + 3);
    if (v114 >= v113 >> 1)
    {
      v115 = sub_247976E80((v113 > 1), v114 + 1, 1, v42);
      v95 = v96 + 1;
      v42 = v115;
    }

    *(v42 + 2) = v114 + 1;
    *&v42[4 * v114 + 32] = v98;
    v93 = v151;
  }

  v112 = *(v145 + 16);
  if (v112)
  {
    goto LABEL_96;
  }

LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  swift_once();
LABEL_119:
  v137 = sub_247994E34();
  __swift_project_value_buffer(v137, qword_27EE59180);
  v138 = sub_247995054();
  v29 = sub_247994E14();
  if (os_log_type_enabled(v29, v138))
  {
    v139 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    v159[0] = v140;
    *v139 = 136315394;
    *(v139 + 4) = sub_2479784A8(0xD000000000000031, 0x8000000247998200, v159);
    *(v139 + 12) = 2048;
    *(v139 + 14) = 200;
    _os_log_impl(&dword_247974000, v29, v138, "[%s] [%ld] No token scores are available. What just happened?", v139, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v140);
    MEMORY[0x24C1B02C0](v140, -1, -1);
    MEMORY[0x24C1B02C0](v139, -1, -1);
  }

LABEL_38:

  return 0;
}

uint64_t sub_24798C758(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_24798CE24(&v11, *(*(v2 + 48) + ((v9 << 8) | (4 * v10)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24798C838(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v2 < v5)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

void *SecureKeywordAnalyzerQuasar.deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[9];
  sub_24797DF64(v0[5]);
  return v0;
}

uint64_t SecureKeywordAnalyzerQuasar.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[9];
  sub_24797DF64(v0[5]);

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

void *sub_24798C918(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59130, &unk_247995CE0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

char *sub_24798CAC0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59420, &unk_247996AE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24798CBCC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59130, &unk_247995CE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_24798CCD0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59120, &qword_247995CD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 72 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

uint64_t sub_24798CE24(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x24C1AFDE0](*(*v2 + 40), a2, 4);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v10 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_24798D9BC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_24798CF0C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24798DF14(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_247995144();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (*v13 >= v11)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 4;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_247994FE4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_24798D040(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_24798D040(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_24798D780(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_24798D58C((*a3 + 4 * *v77), (*a3 + 4 * *v79), (*a3 + 4 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 4 * v7);
      v11 = *(*a3 + 4 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 4 * v12);
        v15 = (v11 < v10) ^ (v13 >= v14);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v11 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v11 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 4 * v17);
            *(v20 + 4 * v17) = *(v20 + 4 * v16);
            *(v20 + 4 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_247976F84(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_247976F84((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_24798D58C((*a3 + 4 * *v70), (*a3 + 4 * *v72), (*a3 + 4 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 4 * v7 - 4;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 4 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (*v26 >= v24)
    {
LABEL_29:
      ++v7;
      v22 += 4;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_24798D58C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 2;
  v11 = a3 - __src;
  v12 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 2;
  if (v10 < v12 >> 2)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 4 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 4)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v4 < *v6)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 4 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 4 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 4;
    v5 -= 4;
    v18 = v14;
    do
    {
      v19 = v5 + 4;
      v21 = *(v18 - 4);
      v18 -= 4;
      v20 = v21;
      if (*v17 < v21)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 4, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 4;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 3uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFFCLL])
  {
    memmove(v6, v4, 4 * (v22 >> 2));
  }

  return 1;
}

uint64_t sub_24798D794(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59418, &unk_247996AD0);
  result = sub_2479950C4();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v26 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 4 * (v15 | (v7 << 6)));
      result = MEMORY[0x24C1AFDE0](*(v6 + 40), v18, 4);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 4 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_24798D9BC(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24798D794(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_24798DAE0();
      a2 = v7;
      goto LABEL_12;
    }

    sub_24798DC20(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x24C1AFDE0](*(*v3 + 40), v4, 4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 4 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_247995184();
  __break(1u);
  return result;
}

void *sub_24798DAE0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59418, &unk_247996AD0);
  v2 = *v0;
  v3 = sub_2479950B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_24798DC20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59418, &unk_247996AD0);
  result = sub_2479950C4();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v7 << 6)));
      result = MEMORY[0x24C1AFDE0](*(v6 + 40), v17, 4);
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 4 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

void *sub_24798DE14(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 8) | (4 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_24798DF28(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x24C1AFC50](v2, MEMORY[0x277D84CC0], MEMORY[0x277D84CD0]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_24798CE24(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_24798DF9C()
{
  result = sub_247994D64();
  if (!v1)
  {
    return 1;
  }

  v2 = HIBYTE(v1) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 1;
  }

  if ((v1 & 0x1000000000000000) != 0)
  {
    v6 = sub_24797C158(result, v1, 10);
    v21 = v20;

    if (v21)
    {
      return 1;
    }

    return v6 == 1;
  }

  if ((v1 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v1 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_2479950F4();
      v3 = v22;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v12 = (result + 1);
            while (1)
            {
              v13 = *v12 - 48;
              if (v13 > 9)
              {
                goto LABEL_64;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_64;
              }

              v9 = __CFADD__(10 * v6, v13);
              v6 = 10 * v6 + v13;
              if (v9)
              {
                goto LABEL_64;
              }

              ++v12;
              if (!--v3)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_63;
        }

        goto LABEL_64;
      }

      goto LABEL_73;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        v6 = 0;
        if (result)
        {
          while (1)
          {
            v16 = *result - 48;
            if (v16 > 9)
            {
              goto LABEL_64;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              goto LABEL_64;
            }

            v9 = __CFADD__(10 * v6, v16);
            v6 = 10 * v6 + v16;
            if (v9)
            {
              goto LABEL_64;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_63;
      }

LABEL_64:
      v6 = 0;
      LOBYTE(v3) = 1;
LABEL_65:
      v24 = v3;
      v19 = v3;

      if (v19)
      {
        return 1;
      }

      return v6 == 1;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        v6 = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_64;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              goto LABEL_64;
            }

            v9 = 10 * v6 >= v8;
            v6 = 10 * v6 - v8;
            if (!v9)
            {
              goto LABEL_64;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_65;
            }
          }
        }

LABEL_63:
        LOBYTE(v3) = 0;
        goto LABEL_65;
      }

      goto LABEL_64;
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v23[0] = result;
  v23[1] = v1 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        v6 = 0;
        v17 = v23;
        while (1)
        {
          v18 = *v17 - 48;
          if (v18 > 9)
          {
            break;
          }

          if (!is_mul_ok(v6, 0xAuLL))
          {
            break;
          }

          v9 = __CFADD__(10 * v6, v18);
          v6 = 10 * v6 + v18;
          if (v9)
          {
            break;
          }

          ++v17;
          if (!--v2)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_64;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        v6 = 0;
        v10 = v23 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          if (!is_mul_ok(v6, 0xAuLL))
          {
            break;
          }

          v9 = 10 * v6 >= v11;
          v6 = 10 * v6 - v11;
          if (!v9)
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    goto LABEL_72;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      v6 = 0;
      v14 = v23 + 1;
      while (1)
      {
        v15 = *v14 - 48;
        if (v15 > 9)
        {
          break;
        }

        if (!is_mul_ok(v6, 0xAuLL))
        {
          break;
        }

        v9 = __CFADD__(10 * v6, v15);
        v6 = 10 * v6 + v15;
        if (v9)
        {
          break;
        }

        ++v14;
        if (!--v3)
        {
          goto LABEL_65;
        }
      }
    }

    goto LABEL_64;
  }

LABEL_74:
  __break(1u);
  return result;
}

uint64_t PhraseConfigName.rawValue.getter()
{
  if (*v0)
  {
    result = 1769105747;
  }

  else
  {
    result = 21320;
  }

  *v0;
  return result;
}

CoreSpeechUtils::PhraseConfigName_optional __swiftcall PhraseConfigName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_247995134();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24798E35C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1769105747;
  }

  else
  {
    v4 = 21320;
  }

  if (v3)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1769105747;
  }

  else
  {
    v6 = 21320;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_247995164();
  }

  return v9 & 1;
}

uint64_t sub_24798E3F0()
{
  v1 = *v0;
  sub_2479951C4();
  sub_247994EF4();

  return sub_2479951F4();
}

uint64_t sub_24798E460()
{
  *v0;
  sub_247994EF4();
}

uint64_t sub_24798E4BC()
{
  v1 = *v0;
  sub_2479951C4();
  sub_247994EF4();

  return sub_2479951F4();
}

uint64_t sub_24798E528@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_247995134();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_24798E588(uint64_t *a1@<X8>)
{
  v2 = 21320;
  if (*v1)
  {
    v2 = 1769105747;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t SecureSpeakerRecognitionPhraseConfig.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___SecureSpeakerRecognitionPhraseConfig_name);
  v2 = *(v0 + OBJC_IVAR___SecureSpeakerRecognitionPhraseConfig_name + 8);

  return v1;
}

id SecureSpeakerRecognitionPhraseConfig.init(name:satThreshold:satStrongAcceptThreshold:satStrongRejectThreshold:multiUserLowScoreThreshold:multiUserHighScoreThreshold:multiUserConfidentScoreThreshold:multiUserDeltaScoreThreshold:)(float a1, float a2, float a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v17 = sub_247994E74();

  *&v18 = a1;
  *&v19 = a2;
  *&v20 = a3;
  v21 = [v16 initWithName:v17 satThreshold:a6 satStrongAcceptThreshold:a7 satStrongRejectThreshold:a8 multiUserLowScoreThreshold:a9 multiUserHighScoreThreshold:v18 multiUserConfidentScoreThreshold:v19 multiUserDeltaScoreThreshold:v20];

  return v21;
}

id SecureSpeakerRecognitionPhraseConfig.init(name:satThreshold:satStrongAcceptThreshold:satStrongRejectThreshold:multiUserLowScoreThreshold:multiUserHighScoreThreshold:multiUserConfidentScoreThreshold:multiUserDeltaScoreThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7, float a8, float a9)
{
  v10 = (v9 + OBJC_IVAR___SecureSpeakerRecognitionPhraseConfig_name);
  *v10 = a1;
  v10[1] = a2;
  *(v9 + OBJC_IVAR___SecureSpeakerRecognitionPhraseConfig_satThreshold) = a7;
  *(v9 + OBJC_IVAR___SecureSpeakerRecognitionPhraseConfig_satStrongAcceptThreshold) = a8;
  *(v9 + OBJC_IVAR___SecureSpeakerRecognitionPhraseConfig_satStrongRejectThreshold) = a9;
  *(v9 + OBJC_IVAR___SecureSpeakerRecognitionPhraseConfig_multiUserLowScoreThreshold) = a3;
  *(v9 + OBJC_IVAR___SecureSpeakerRecognitionPhraseConfig_multiUserHighScoreThreshold) = a4;
  *(v9 + OBJC_IVAR___SecureSpeakerRecognitionPhraseConfig_multiUserConfidentScoreThreshold) = a5;
  *(v9 + OBJC_IVAR___SecureSpeakerRecognitionPhraseConfig_multiUserDeltaScoreThreshold) = a6;
  v12.super_class = SecureSpeakerRecognitionPhraseConfig;
  return objc_msgSendSuper2(&v12, sel_init);
}

void *SecureSpeakerRecognitionConfig.satMemoryIndex.getter()
{
  v1 = *(v0 + OBJC_IVAR___SecureSpeakerRecognitionConfig_satMemoryIndex);
  v2 = v1;
  return v1;
}

void *SecureSpeakerRecognitionConfig.psrMemoryIndex.getter()
{
  v1 = *(v0 + OBJC_IVAR___SecureSpeakerRecognitionConfig_psrMemoryIndex);
  v2 = v1;
  return v1;
}

id sub_24798ECA4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  if (v3[1])
  {
    v4 = *v3;

    v5 = sub_247994E74();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_24798ED38(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_24798ED98(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_247994E84();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = v6;
  v9[1] = v8;
}

void sub_24798EE14(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_247994E84();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_24798EE78(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = *a1;
    v8 = sub_247994E74();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v6 *a5];
}

id SecureSpeakerRecognitionConfig.init(numPruningRetentionUtt:pruningExplicitSATThreshold:pruningExplicitPSRThreshold:pruningSATThreshold:pruningPSRThreshold:combinationWeight:implicitProfileThreshold:implicitProfileDeltaThreshold:implicitVTThreshold:maxEnrollmentUtterances:implicitTrainingEnabled:useTDTIEnrollment:phraseConfig:satMemoryIndex:psrMemoryIndex:satConfig:psrConfig:audioDurationProcessIntervalInMillis:minAudioDurationInMillis:maxAudioDurationInMillis:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, void *a6, void *a7, uint64_t a8, float a9, float a10, float a11, float a12, float a13, float a14, float a15, float a16, unint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a5)
  {
    type metadata accessor for SecureSpeakerRecognitionPhraseConfig(a1);
    v33 = sub_247994FA4();
  }

  else
  {
    v33 = 0;
  }

  if (a17 >> 60 == 15)
  {
    v34 = 0;
  }

  else
  {
    v34 = sub_247994C44();
    sub_247978BF0(a8, a17);
  }

  if (a19 >> 60 == 15)
  {
    v35 = 0;
  }

  else
  {
    v35 = sub_247994C44();
    sub_247978BF0(a18, a19);
  }

  v36 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  *&v37 = a9;
  *&v38 = a10;
  *&v39 = a11;
  *&v40 = a12;
  *&v41 = a13;
  *&v42 = a14;
  *&v43 = a15;
  *&v44 = a16;
  v45 = [v36 initWithNumPruningRetentionUtt:a1 pruningExplicitSATThreshold:a2 pruningExplicitPSRThreshold:a3 & 1 pruningSATThreshold:a4 & 1 pruningPSRThreshold:v33 combinationWeight:a6 implicitProfileThreshold:v37 implicitProfileDeltaThreshold:v38 implicitVTThreshold:v39 maxEnrollmentUtterances:v40 implicitTrainingEnabled:v41 useTDTIEnrollment:v42 phraseConfig:v43 satMemoryIndex:v44 psrMemoryIndex:a7 satConfig:v34 psrConfig:v35 audioDurationProcessIntervalInMillis:a20 minAudioDurationInMillis:a21 maxAudioDurationInMillis:a22];

  return v45;
}

{
  v25 = sub_24798F464(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  sub_247978BF0(a18, a19);
  sub_247978BF0(a8, a17);

  return v25;
}

id sub_24798F348()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_24798F464(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, void *a6, void *a7, uint64_t a8, float a9, float a10, float a11, float a12, float a13, float a14, float a15, float a16, unint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v36 = sub_247994EC4();
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v22[OBJC_IVAR___SecureSpeakerRecognitionConfig_satConfigString];
  *v38 = 0;
  v38[1] = 0;
  v39 = &v22[OBJC_IVAR___SecureSpeakerRecognitionConfig_psrConfigString];
  *v39 = 0;
  v39[1] = 0;
  *&v22[OBJC_IVAR___SecureSpeakerRecognitionConfig_phraseConfig] = a5;
  *&v22[OBJC_IVAR___SecureSpeakerRecognitionConfig_numPruningRetentionUtt] = a1;
  *&v22[OBJC_IVAR___SecureSpeakerRecognitionConfig_pruningExplicitSATThreshold] = a9;
  *&v22[OBJC_IVAR___SecureSpeakerRecognitionConfig_pruningExplicitPSRThreshold] = a10;
  *&v22[OBJC_IVAR___SecureSpeakerRecognitionConfig_pruningSATThreshold] = a11;
  *&v22[OBJC_IVAR___SecureSpeakerRecognitionConfig_pruningPSRThreshold] = a12;
  *&v22[OBJC_IVAR___SecureSpeakerRecognitionConfig_combinationWeight] = a13;
  *&v22[OBJC_IVAR___SecureSpeakerRecognitionConfig_implicitProfileThreshold] = a14;
  *&v22[OBJC_IVAR___SecureSpeakerRecognitionConfig_implicitProfileDeltaThreshold] = a15;
  *&v22[OBJC_IVAR___SecureSpeakerRecognitionConfig_implicitVTThreshold] = a16;
  *&v22[OBJC_IVAR___SecureSpeakerRecognitionConfig_maxEnrollmentUtterances] = a2;
  v22[OBJC_IVAR___SecureSpeakerRecognitionConfig_implicitTrainingEnabled] = a3;
  v22[OBJC_IVAR___SecureSpeakerRecognitionConfig_useTDTIEnrollment] = a4;
  *&v22[OBJC_IVAR___SecureSpeakerRecognitionConfig_satMemoryIndex] = a6;
  *&v22[OBJC_IVAR___SecureSpeakerRecognitionConfig_psrMemoryIndex] = a7;
  swift_beginAccess();
  *v38 = 0;
  v38[1] = 0;
  if (a17 >> 60 == 15)
  {
    v40 = a6;
    v41 = a7;
  }

  else
  {
    v57 = a8;
    v58 = a17;
    v42 = a6;
    v43 = a7;
    sub_247994EB4();
    sub_247978C58();
    v44 = sub_247994EA4();
    v45 = v38[1];
    *v38 = v44;
    v38[1] = v46;
  }

  swift_beginAccess();
  v47 = v39[1];
  *v39 = 0;
  v39[1] = 0;

  if (a19 >> 60 != 15)
  {
    sub_247978CAC(a18, a19);
    sub_247994EB4();
    sub_247978C58();
    v48 = sub_247994EA4();
    v50 = v49;
    sub_247978BF0(a18, a19);
    v51 = v39[1];
    *v39 = v48;
    v39[1] = v50;
  }

  *&v22[OBJC_IVAR___SecureSpeakerRecognitionConfig_audioDurationProcessIntervalInMillis] = a20;
  *&v22[OBJC_IVAR___SecureSpeakerRecognitionConfig_minAudioDurationInMillis] = a21;
  *&v22[OBJC_IVAR___SecureSpeakerRecognitionConfig_maxAudioDurationInMillis] = a22;
  v56.receiver = v22;
  v56.super_class = SecureSpeakerRecognitionConfig;
  return objc_msgSendSuper2(&v56, sel_init, a8);
}

unint64_t sub_24798F774()
{
  result = qword_27EE59508;
  if (!qword_27EE59508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE59508);
  }

  return result;
}

uint64_t SecureAssetLoader.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = swift_slowAlloc();
  *(v0 + 32) = 0;
  return v0;
}

uint64_t SecureAssetLoader.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = swift_slowAlloc();
  *(v0 + 32) = 0;
  return v0;
}

uint64_t SecureAssetLoader.__deallocating_deinit()
{
  MEMORY[0x24C1B02C0](*(v0 + 24), -1, -1);

  return MEMORY[0x2821FE8D8](v0, 33, 7);
}

uint64_t sub_24798F974()
{
  v1 = v0;
  v2 = *(v0 + 24);
  os_unfair_lock_lock(v2);
  v3 = *(v0 + 16);
  os_unfair_lock_unlock(v2);
  if (v3 == 1)
  {
    if (qword_27EE590C8 != -1)
    {
      swift_once();
    }

    v4 = sub_247994E34();
    __swift_project_value_buffer(v4, qword_27EE59180);
    v5 = sub_247995064();
    v6 = sub_247994E14();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315394;
      *(v7 + 4) = sub_2479784A8(0xD000000000000027, 0x80000002479991A0, &v15);
      *(v7 + 12) = 2048;
      *(v7 + 14) = 59;
      _os_log_impl(&dword_247974000, v6, v5, "[%s] [%ld] Loader is already active. skipping start", v7, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x24C1B02C0](v8, -1, -1);
      MEMORY[0x24C1B02C0](v7, -1, -1);
    }
  }

  else
  {
    if (qword_27EE590C8 != -1)
    {
      swift_once();
    }

    v9 = sub_247994E34();
    __swift_project_value_buffer(v9, qword_27EE59180);
    v10 = sub_247995064();
    v11 = sub_247994E14();
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_2479784A8(0xD000000000000027, 0x80000002479991A0, &v15);
      *(v12 + 12) = 2048;
      *(v12 + 14) = 76;
      _os_log_impl(&dword_247974000, v11, v10, "[%s] [%ld] Started exclave mobile asset loader service", v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x24C1B02C0](v13, -1, -1);
      MEMORY[0x24C1B02C0](v12, -1, -1);
    }

    os_unfair_lock_lock(v2);
    *(v1 + 16) = 1;
    os_unfair_lock_unlock(v2);
  }

  return 1;
}

uint64_t sub_24798FC14(char a1)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock(v3);
  v4 = *(v1 + 16);
  os_unfair_lock_unlock(v3);
  if ((v4 & 1) == 0 && (a1 & 1) == 0)
  {
    if (qword_27EE590C8 != -1)
    {
      swift_once();
    }

    v5 = sub_247994E34();
    __swift_project_value_buffer(v5, qword_27EE59180);
    v6 = sub_247995064();
    v7 = sub_247994E14();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_2479784A8(0xD000000000000027, 0x80000002479991A0, &v11);
      *(v8 + 12) = 2048;
      *(v8 + 14) = 94;
      _os_log_impl(&dword_247974000, v7, v6, "[%s] [%ld] Loader is already inactive. skipping stopping", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x24C1B02C0](v9, -1, -1);
      MEMORY[0x24C1B02C0](v8, -1, -1);
    }
  }

  return 1;
}

uint64_t sub_24798FDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v31 = a3;
  v29 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59398, &qword_247996518);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - v6;
  v8 = sub_247994B94();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_247994C14();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v28 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v27 - v18;
  v20 = *(v9 + 104);
  v20(v12, *MEMORY[0x277CC91C0], v8);
  (*(v14 + 56))(v7, 1, 1, v13);

  v21 = v19;
  sub_247994BE4();
  v32 = v31;
  v33 = v30;
  v20(v12, *MEMORY[0x277CC91D0], v8);
  v22 = v13;
  sub_247987184();
  v23 = v28;
  sub_247994C04();
  (*(v9 + 8))(v12, v8);
  v24 = *(v14 + 8);
  v24(v21, v13);
  (*(v14 + 32))(v21, v23, v13);
  v25 = sub_247994C24();
  v24(v21, v22);
  return v25;
}

void __swiftcall SecureMemoryIndex.init()(SecureMemoryIndex *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id SecureMemoryIndex.init()()
{
  *(v0 + OBJC_IVAR___SecureMemoryIndex_indexData) = MEMORY[0x277D84F98];
  v2.super_class = SecureMemoryIndex;
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_247990424()
{
  v1 = v0;
  if (qword_27EE590C8 != -1)
  {
    swift_once();
  }

  v2 = sub_247994E34();
  __swift_project_value_buffer(v2, qword_27EE59180);
  v3 = sub_247995044();
  v4 = sub_247994E14();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_2479784A8(0xD000000000000027, 0x8000000247999280, &v8);
    *(v5 + 12) = 2048;
    *(v5 + 14) = 20;
    _os_log_impl(&dword_247974000, v4, v3, "[%s] [%ld] Deinit SecureMemoryIndex", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1B02C0](v6, -1, -1);
    MEMORY[0x24C1B02C0](v5, -1, -1);
  }

  v9.receiver = v1;
  v9.super_class = SecureMemoryIndex;
  return objc_msgSendSuper2(&v9, sel_dealloc);
}

uint64_t SecureMemoryIndex.memoryIndexes()()
{
  v1 = OBJC_IVAR___SecureMemoryIndex_indexData;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

unint64_t SecureMemoryIndex.description.getter()
{
  v1 = v0;
  sub_2479950E4();

  v2 = OBJC_IVAR___SecureMemoryIndex_indexData;
  swift_beginAccess();
  v5 = *(*(v1 + v2) + 16);
  v3 = sub_247995154();
  MEMORY[0x24C1AFB30](v3);

  return 0xD000000000000012;
}

uint64_t SecureMemoryIndex.insert(label:resource:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = OBJC_IVAR___SecureMemoryIndex_indexData;
  swift_beginAccess();

  sub_247978CAC(a3, a4);
  v10 = *(v4 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v4 + v9);
  *(v4 + v9) = 0x8000000000000000;
  sub_247990CD4(a3, a4, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v4 + v9) = v13;
  return swift_endAccess();
}

Swift::Int __swiftcall SecureMemoryIndex.indexCount()()
{
  v1 = OBJC_IVAR___SecureMemoryIndex_indexData;
  swift_beginAccess();
  return *(*(v0 + v1) + 16);
}

uint64_t sub_247990A18(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59530, &qword_247996C08);
  v36 = a2;
  result = sub_247995114();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {

        sub_247978CAC(v37, *(&v37 + 1));
      }

      v26 = *(v8 + 40);
      sub_2479951C4();
      sub_247994EF4();
      result = sub_2479951F4();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_247990CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_247980FE0(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_247990A18(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_247980FE0(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_247995194();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_247990EA8();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = *v25;
    v27 = v25[1];
    *v25 = a1;
    v25[1] = a2;

    return sub_247978C04(v26, v27);
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v29 = (v24[6] + 16 * v13);
  *v29 = a3;
  v29[1] = a4;
  v30 = (v24[7] + 16 * v13);
  *v30 = a1;
  v30[1] = a2;
  v31 = v24[2];
  v17 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v32;
}

unint64_t type metadata accessor for SecureMemoryIndex()
{
  result = qword_27EE59528;
  if (!qword_27EE59528)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE59528);
  }

  return result;
}

void *sub_247990EA8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59530, &qword_247996C08);
  v2 = *v0;
  v3 = sub_247995104();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_247978CAC(v22, *(&v22 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_247991050(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_247994E74();

  return v6;
}

void sub_2479910AC(uint64_t a1, uint64_t a2, char *a3)
{
  v30[4] = *MEMORY[0x277D85DE8];
  v4 = objc_opt_self();
  v5 = sub_247994C44();
  v30[0] = 0;
  v6 = [v4 JSONObjectWithData:v5 options:0 error:v30];

  if (v6)
  {
    v7 = v30[0];
    sub_2479950A4();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59348, &qword_247996930);
    if (swift_dynamicCast())
    {
      v8 = *&a3[OBJC_IVAR___SecureAsset_cachedInfo];
      *&a3[OBJC_IVAR___SecureAsset_cachedInfo] = v29;
    }

    else
    {
      if (qword_27EE590C8 != -1)
      {
        swift_once();
      }

      v22 = sub_247994E34();
      __swift_project_value_buffer(v22, qword_27EE59180);
      v23 = sub_247995054();
      v24 = a3;
      v25 = sub_247994E14();

      if (os_log_type_enabled(v25, v23))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v30[0] = v27;
        *v26 = 136315650;
        *(v26 + 4) = sub_2479784A8(0xD000000000000021, 0x80000002479992B0, v30);
        *(v26 + 12) = 2048;
        *(v26 + 14) = 38;
        *(v26 + 22) = 2080;
        *(v26 + 24) = sub_2479784A8(*&v24[OBJC_IVAR___SecureAsset_assetFileName], *&v24[OBJC_IVAR___SecureAsset_assetFileName + 8], v30);
        _os_log_impl(&dword_247974000, v25, v23, "[%s] [%ld] Cannot decode %s)", v26, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C1B02C0](v27, -1, -1);
        MEMORY[0x24C1B02C0](v26, -1, -1);
      }
    }
  }

  else
  {
    v9 = v30[0];
    v10 = sub_247994B84();

    swift_willThrow();
    if (qword_27EE590C8 != -1)
    {
      swift_once();
    }

    v11 = sub_247994E34();
    __swift_project_value_buffer(v11, qword_27EE59180);
    v12 = sub_247995054();
    v13 = a3;
    v14 = v10;
    v15 = sub_247994E14();

    if (os_log_type_enabled(v15, v12))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v30[0] = v17;
      *v16 = 136315906;
      *(v16 + 4) = sub_2479784A8(0xD000000000000021, 0x80000002479992B0, v30);
      *(v16 + 12) = 2048;
      *(v16 + 14) = 41;
      *(v16 + 22) = 2080;
      *(v16 + 24) = sub_2479784A8(*&v13[OBJC_IVAR___SecureAsset_assetFileName], *&v13[OBJC_IVAR___SecureAsset_assetFileName + 8], v30);
      *(v16 + 32) = 2080;
      v18 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE593C0, &qword_247996528);
      v19 = sub_247994ED4();
      v21 = sub_2479784A8(v19, v20, v30);

      *(v16 + 34) = v21;
      _os_log_impl(&dword_247974000, v15, v12, "[%s] [%ld] Failed to retrive %s with error %s", v16, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x24C1B02C0](v17, -1, -1);
      MEMORY[0x24C1B02C0](v16, -1, -1);
    }

    else
    {
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

id SecureAsset.init(resourcePath:assetFileName:assetVersion:assetHash:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_247994BB4();
  v11 = sub_247994E74();

  if (!a5)
  {
    v12 = 0;
    if (a7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v12 = sub_247994E74();

  if (!a7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = sub_247994E74();

LABEL_6:
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithResourcePath:v10 assetFileName:v11 assetVersion:v12 assetHash:v13];

  v15 = sub_247994C14();
  (*(*(v15 - 8) + 8))(a1, v15);
  return v14;
}

id SecureAsset.init(resourcePath:assetFileName:assetVersion:assetHash:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = v7;
  *&v8[OBJC_IVAR___SecureAsset_cachedInfo] = 0;
  type metadata accessor for SecureAssetLoader();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = swift_slowAlloc();
  *(v16 + 32) = 0;
  *&v8[OBJC_IVAR___SecureAsset_assetLoader] = v16;
  v17 = sub_247994BA4();
  v18 = &v8[OBJC_IVAR___SecureAsset_resourcePath];
  *v18 = v17;
  v18[1] = v19;
  v20 = &v8[OBJC_IVAR___SecureAsset_assetFileName];
  *v20 = a2;
  *(v20 + 1) = a3;
  v21 = 3157552;
  if (a5)
  {
    v21 = a4;
  }

  v22 = 0xE300000000000000;
  if (a5)
  {
    v22 = a5;
  }

  v23 = &v8[OBJC_IVAR___SecureAsset_assetVersion];
  *v23 = v21;
  v23[1] = v22;
  v24 = 0x687361686F6ELL;
  if (a7)
  {
    v24 = a6;
  }

  v25 = 0xE600000000000000;
  if (a7)
  {
    v25 = a7;
  }

  v26 = &v8[OBJC_IVAR___SecureAsset_assetHash];
  *v26 = v24;
  v26[1] = v25;
  v30.receiver = v8;
  v30.super_class = SecureAsset;
  v27 = objc_msgSendSuper2(&v30, sel_init);
  v28 = sub_247994C14();
  (*(*(v28 - 8) + 8))(a1, v28);
  return v27;
}

char *SecureAsset.init(assetLoader:resourcePath:assetFileName:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_247994BB4();
  v6 = sub_247994E74();

  v7 = [v4 initWithResourcePath:v5 assetFileName:v6 assetVersion:0 assetHash:0];

  v8 = sub_247994C14();
  (*(*(v8 - 8) + 8))(a2, v8);
  v9 = *&v7[OBJC_IVAR___SecureAsset_assetLoader];
  *&v7[OBJC_IVAR___SecureAsset_assetLoader] = a1;
  v10 = v7;

  return v10;
}

Swift::String __swiftcall SecureAsset.assetPath()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59398, &qword_247996518);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v30 - v3;
  v5 = sub_247994B94();
  v31 = *(v5 - 8);
  v6 = v31;
  v32 = v5;
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_247994C14();
  v10 = *(v33 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v33);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  v17 = [v0 resourcePath];
  sub_247994E84();

  v18 = *(v6 + 104);
  v19 = v32;
  v18(v9, *MEMORY[0x277CC91C0], v32);
  (*(v10 + 56))(v4, 1, 1, v33);
  sub_247994BE4();
  v20 = *(v30 + OBJC_IVAR___SecureAsset_assetFileName + 8);
  v34 = *(v30 + OBJC_IVAR___SecureAsset_assetFileName);
  v35 = v20;
  v18(v9, *MEMORY[0x277CC91D8], v19);
  sub_247987184();

  sub_247994BF4();
  (*(v31 + 8))(v9, v19);

  v21 = sub_247994BA4();
  v23 = v22;
  v24 = *(v10 + 8);
  v25 = v14;
  v26 = v33;
  v24(v25, v33);
  v24(v16, v26);
  v27 = v21;
  v28 = v23;
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

Swift::Bool __swiftcall SecureAsset.containsKey(key:category:)(Swift::String key, Swift::String category)
{
  object = category._object;
  countAndFlagsBits = category._countAndFlagsBits;
  v5 = key._object;
  v6 = key._countAndFlagsBits;
  v7 = OBJC_IVAR___SecureAsset_cachedInfo;
  v8 = *&v2[OBJC_IVAR___SecureAsset_cachedInfo];
  if (v8)
  {
    v9 = *&v2[OBJC_IVAR___SecureAsset_cachedInfo];
    if (*(v8 + 16))
    {
      goto LABEL_3;
    }

LABEL_11:

    goto LABEL_12;
  }

  v15 = *&v2[OBJC_IVAR___SecureAsset_assetLoader];

  v16 = [v2 resourcePath];
  v17 = sub_247994E84();
  v19 = v18;

  v20 = sub_24798FDA4(v17, v19, *&v2[OBJC_IVAR___SecureAsset_assetFileName], *&v2[OBJC_IVAR___SecureAsset_assetFileName + 8]);
  v22 = v21;

  if (v22 >> 60 == 15)
  {
    return 0;
  }

  v24 = MEMORY[0x24C1AFE90](v23);
  sub_2479910AC(v20, v22, v2);
  objc_autoreleasePoolPop(v24);
  sub_247978BF0(v20, v22);
  v9 = *&v2[v7];
  if (!v9)
  {
    return 0;
  }

  if (!*(v9 + 16))
  {
    goto LABEL_11;
  }

LABEL_3:

  v10 = sub_247980FE0(countAndFlagsBits, object);
  if ((v11 & 1) == 0)
  {
LABEL_12:

    return 0;
  }

  sub_247978FE4(*(v9 + 56) + 32 * v10, v27);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59348, &qword_247996930);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (*(v26 + 16) && (v12 = sub_247980FE0(v6, v5), (v13 & 1) != 0))
  {
    sub_247978FE4(*(v26 + 56) + 32 * v12, v27);

    v14 = 1;
  }

  else
  {

    v14 = 0;
    memset(v27, 0, sizeof(v27));
  }

  sub_2479949DC(v27);
  return v14;
}

Swift::Bool __swiftcall SecureAsset.containsCategory(category:)(Swift::String category)
{
  object = category._object;
  countAndFlagsBits = category._countAndFlagsBits;
  v4 = OBJC_IVAR___SecureAsset_cachedInfo;
  v5 = *&v1[OBJC_IVAR___SecureAsset_cachedInfo];
  if (v5)
  {
    v6 = *&v1[OBJC_IVAR___SecureAsset_cachedInfo];
    if (*(v5 + 16))
    {
      goto LABEL_3;
    }

LABEL_9:

    goto LABEL_10;
  }

  v10 = *&v1[OBJC_IVAR___SecureAsset_assetLoader];

  v11 = [v1 resourcePath];
  v12 = sub_247994E84();
  v14 = v13;

  v15 = sub_24798FDA4(v12, v14, *&v1[OBJC_IVAR___SecureAsset_assetFileName], *&v1[OBJC_IVAR___SecureAsset_assetFileName + 8]);
  v17 = v16;

  if (v17 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v19 = MEMORY[0x24C1AFE90](v18);
  sub_2479910AC(v15, v17, v1);
  objc_autoreleasePoolPop(v19);
  sub_247978BF0(v15, v17);
  v6 = *&v1[v4];
  if (!v6)
  {
    goto LABEL_11;
  }

  if (!*(v6 + 16))
  {
    goto LABEL_9;
  }

LABEL_3:

  v7 = sub_247980FE0(countAndFlagsBits, object);
  if ((v8 & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  sub_247978FE4(*(v6 + 56) + 32 * v7, v23);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59348, &qword_247996930);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  v9 = v22;
LABEL_12:
  v20 = v9 != 0;

  return v20;
}

Swift::Float __swiftcall SecureAsset.getFloat(key:category:defaultValue:)(Swift::String key, Swift::String category, Swift::Float defaultValue)
{
  object = category._object;
  countAndFlagsBits = category._countAndFlagsBits;
  v7 = key._object;
  v8 = key._countAndFlagsBits;
  v9 = OBJC_IVAR___SecureAsset_cachedInfo;
  if (*&v3[OBJC_IVAR___SecureAsset_cachedInfo])
  {
    v10 = *&v3[OBJC_IVAR___SecureAsset_cachedInfo];
  }

  else
  {
    v17 = *&v3[OBJC_IVAR___SecureAsset_assetLoader];

    v18 = [v3 resourcePath];
    v19 = sub_247994E84();
    v21 = v20;

    v22 = sub_24798FDA4(v19, v21, *&v3[OBJC_IVAR___SecureAsset_assetFileName], *&v3[OBJC_IVAR___SecureAsset_assetFileName + 8]);
    v24 = v23;

    if (v24 >> 60 == 15)
    {
      return defaultValue;
    }

    v26 = MEMORY[0x24C1AFE90](v25);
    sub_2479910AC(v22, v24, v3);
    objc_autoreleasePoolPop(v26);
    sub_247978BF0(v22, v24);
    v10 = *&v3[v9];
    if (!v10)
    {
      return defaultValue;
    }
  }

  v11 = *(v10 + 16);

  if (v11 && (v12 = sub_247980FE0(countAndFlagsBits, object), (v13 & 1) != 0))
  {
    sub_247978FE4(*(v10 + 56) + 32 * v12, v30);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59348, &qword_247996930);
    if (swift_dynamicCast())
    {
      if (*(v29[0] + 16) && (v14 = sub_247980FE0(v8, v7), (v15 & 1) != 0))
      {
        sub_247978FE4(*(v29[0] + 56) + 32 * v14, v30);

        sub_247994A44(v30, v29);
        sub_24798076C(0, &qword_27EE59350, 0x277CCABB0);
        if (swift_dynamicCast())
        {
          [v28 floatValue];
          defaultValue = v16;
        }

        else if (swift_dynamicCast())
        {
          defaultValue = *&v28;
        }

        __swift_destroy_boxed_opaque_existential_0(v29);
      }

      else
      {

        memset(v30, 0, sizeof(v30));
      }

      sub_2479949DC(v30);
    }
  }

  else
  {
  }

  return defaultValue;
}

Swift::String_optional __swiftcall SecureAsset.getString(key:category:)(Swift::String key, Swift::String category)
{
  object = category._object;
  countAndFlagsBits = category._countAndFlagsBits;
  v5 = key._object;
  v6 = key._countAndFlagsBits;
  v7 = OBJC_IVAR___SecureAsset_cachedInfo;
  v8 = *&v2[OBJC_IVAR___SecureAsset_cachedInfo];
  if (!v8)
  {
    v18 = *&v2[OBJC_IVAR___SecureAsset_assetLoader];

    v19 = [v2 resourcePath];
    v20 = sub_247994E84();
    v22 = v21;

    v23 = sub_24798FDA4(v20, v22, *&v2[OBJC_IVAR___SecureAsset_assetFileName], *&v2[OBJC_IVAR___SecureAsset_assetFileName + 8]);
    v25 = v24;

    if (v25 >> 60 == 15)
    {
      goto LABEL_18;
    }

    v27 = MEMORY[0x24C1AFE90](v26);
    sub_2479910AC(v23, v25, v2);
    objc_autoreleasePoolPop(v27);
    sub_247978BF0(v23, v25);
    v9 = *&v2[v7];
    if (!v9)
    {
      goto LABEL_18;
    }

    if (*(v9 + 16))
    {
      goto LABEL_3;
    }

LABEL_16:

    goto LABEL_17;
  }

  v9 = *&v2[OBJC_IVAR___SecureAsset_cachedInfo];
  if (!*(v8 + 16))
  {
    goto LABEL_16;
  }

LABEL_3:

  v10 = sub_247980FE0(countAndFlagsBits, object);
  if ((v11 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_247978FE4(*(v9 + 56) + 32 * v10, v31);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59348, &qword_247996930);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v16 = 0;
    v17 = 0;
    goto LABEL_19;
  }

  if (!*(v29 + 16) || (v12 = sub_247980FE0(v6, v5), (v13 & 1) == 0))
  {
LABEL_17:

    goto LABEL_18;
  }

  sub_247978FE4(*(v29 + 56) + 32 * v12, v31);

  v14 = swift_dynamicCast();
  v15 = v14 == 0;
  if (v14)
  {
    v16 = v29;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = 0;
  }

  else
  {
    v17 = v30;
  }

LABEL_19:
  result.value._object = v17;
  result.value._countAndFlagsBits = v16;
  return result;
}

Swift::String __swiftcall SecureAsset.getString(key:category:defaultValue:)(Swift::String key, Swift::String category, Swift::String defaultValue)
{
  v4 = v3;
  object = defaultValue._object;
  countAndFlagsBits = defaultValue._countAndFlagsBits;
  v7 = sub_247994E74();
  v8 = sub_247994E74();
  v9 = [v4 getStringWithKey:v7 category:v8];

  if (v9)
  {
    countAndFlagsBits = sub_247994E84();
    object = v10;
  }

  else
  {
  }

  v11 = countAndFlagsBits;
  v12 = object;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

Swift::String_optional __swiftcall SecureAsset.getString(category:)(Swift::String category)
{
  object = category._object;
  countAndFlagsBits = category._countAndFlagsBits;
  v4 = OBJC_IVAR___SecureAsset_cachedInfo;
  v5 = *&v1[OBJC_IVAR___SecureAsset_cachedInfo];
  if (v5)
  {
    v6 = *&v1[OBJC_IVAR___SecureAsset_cachedInfo];
    if (*(v5 + 16))
    {
      goto LABEL_3;
    }

LABEL_13:

    goto LABEL_14;
  }

  v13 = *&v1[OBJC_IVAR___SecureAsset_assetLoader];

  v14 = [v1 resourcePath];
  v15 = sub_247994E84();
  v17 = v16;

  v18 = sub_24798FDA4(v15, v17, *&v1[OBJC_IVAR___SecureAsset_assetFileName], *&v1[OBJC_IVAR___SecureAsset_assetFileName + 8]);
  v20 = v19;

  if (v20 >> 60 == 15)
  {
    goto LABEL_15;
  }

  v22 = MEMORY[0x24C1AFE90](v21);
  sub_2479910AC(v18, v20, v1);
  objc_autoreleasePoolPop(v22);
  sub_247978BF0(v18, v20);
  v6 = *&v1[v4];
  if (!v6)
  {
    goto LABEL_15;
  }

  if (!*(v6 + 16))
  {
    goto LABEL_13;
  }

LABEL_3:

  v7 = sub_247980FE0(countAndFlagsBits, object);
  if ((v8 & 1) == 0)
  {
LABEL_14:

LABEL_15:
    v11 = 0;
    v12 = 0;
    goto LABEL_16;
  }

  sub_247978FE4(*(v6 + 56) + 32 * v7, v26);

  v9 = swift_dynamicCast();
  v10 = v9 == 0;
  if (v9)
  {
    v11 = v24;
  }

  else
  {
    v11 = 0;
  }

  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = v25;
  }

LABEL_16:
  result.value._object = v12;
  result.value._countAndFlagsBits = v11;
  return result;
}

Swift::Bool __swiftcall SecureAsset.getBool(key:category:defaultValue:)(Swift::String key, Swift::String category, Swift::Bool defaultValue)
{
  object = category._object;
  countAndFlagsBits = category._countAndFlagsBits;
  v7 = key._object;
  v8 = key._countAndFlagsBits;
  v9 = OBJC_IVAR___SecureAsset_cachedInfo;
  if (*&v3[OBJC_IVAR___SecureAsset_cachedInfo])
  {
    v10 = *&v3[OBJC_IVAR___SecureAsset_cachedInfo];
  }

  else
  {
    v27 = key._object;
    v16 = *&v3[OBJC_IVAR___SecureAsset_assetLoader];

    v17 = [v3 resourcePath];
    v18 = sub_247994E84();
    v20 = v19;

    v21 = sub_24798FDA4(v18, v20, *&v3[OBJC_IVAR___SecureAsset_assetFileName], *&v3[OBJC_IVAR___SecureAsset_assetFileName + 8]);
    v23 = v22;

    if (v23 >> 60 == 15)
    {
      return defaultValue;
    }

    v25 = MEMORY[0x24C1AFE90](v24);
    sub_2479910AC(v21, v23, v3);
    objc_autoreleasePoolPop(v25);
    sub_247978BF0(v21, v23);
    v10 = *&v3[v9];
    if (!v10)
    {
      return defaultValue;
    }

    v7 = v27;
  }

  v11 = *(v10 + 16);

  if (v11 && (v12 = sub_247980FE0(countAndFlagsBits, object), (v13 & 1) != 0))
  {
    sub_247978FE4(*(v10 + 56) + 32 * v12, v30);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59348, &qword_247996930);
    if (swift_dynamicCast())
    {
      if (*(v29[0] + 16) && (v14 = sub_247980FE0(v8, v7), (v15 & 1) != 0))
      {
        sub_247978FE4(*(v29[0] + 56) + 32 * v14, v30);

        sub_247994A44(v30, v29);
        sub_24798076C(0, &qword_27EE59350, 0x277CCABB0);
        if (swift_dynamicCast())
        {
          defaultValue = [v28 BOOLValue];
        }

        else if (swift_dynamicCast())
        {
          defaultValue = v28;
        }

        __swift_destroy_boxed_opaque_existential_0(v29);
      }

      else
      {

        memset(v30, 0, sizeof(v30));
      }

      sub_2479949DC(v30);
    }
  }

  else
  {
  }

  return defaultValue;
}

Swift::OpaquePointer_optional __swiftcall SecureAsset.getStringArray(key:category:)(Swift::String key, Swift::String category)
{
  v2 = sub_247993430(key._countAndFlagsBits, key._object, category._countAndFlagsBits, category._object, &qword_27EE59400, &qword_247996938);
  result.value._rawValue = v2;
  result.is_nil = v3;
  return result;
}

id sub_2479930C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, id a5, SEL *a6)
{
  v7 = a6;
  v11 = a2;
  v13 = OBJC_IVAR___SecureAsset_cachedInfo;
  if (*&v6[OBJC_IVAR___SecureAsset_cachedInfo])
  {
    v14 = *&v6[OBJC_IVAR___SecureAsset_cachedInfo];
  }

  else
  {
    v20 = *&v6[OBJC_IVAR___SecureAsset_assetLoader];

    v21 = [v6 resourcePath];
    v22 = sub_247994E84();
    v24 = v23;

    v25 = sub_24798FDA4(v22, v24, *&v6[OBJC_IVAR___SecureAsset_assetFileName], *&v6[OBJC_IVAR___SecureAsset_assetFileName + 8]);
    v27 = v26;

    if (v27 >> 60 == 15)
    {
      return a5;
    }

    v29 = MEMORY[0x24C1AFE90](v28);
    sub_2479910AC(v25, v27, v6);
    objc_autoreleasePoolPop(v29);
    sub_247978BF0(v25, v27);
    v14 = *&v6[v13];
    if (!v14)
    {
      return a5;
    }

    v11 = a2;
    v7 = a6;
  }

  v15 = *(v14 + 16);

  if (v15 && (v16 = sub_247980FE0(a3, a4), (v17 & 1) != 0))
  {
    sub_247978FE4(*(v14 + 56) + 32 * v16, v35);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59348, &qword_247996930);
    if (swift_dynamicCast())
    {
      if (*(v34[0] + 16) && (v18 = sub_247980FE0(a1, v11), (v19 & 1) != 0))
      {
        sub_247978FE4(*(v34[0] + 56) + 32 * v18, v35);

        sub_247994A44(v35, v34);
        sub_24798076C(0, &qword_27EE59350, 0x277CCABB0);
        if (swift_dynamicCast())
        {
          a5 = [v33 *v7];
        }

        else if (swift_dynamicCast())
        {
          a5 = v33;
        }

        __swift_destroy_boxed_opaque_existential_0(v34);
      }

      else
      {

        memset(v35, 0, sizeof(v35));
      }

      sub_2479949DC(v35);
    }
  }

  else
  {
  }

  return a5;
}

uint64_t sub_247993374(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = sub_247994E84();
  v11 = v10;
  v12 = sub_247994E84();
  v14 = v13;
  v15 = a1;
  v16 = a6(v9, v11, v12, v14, a5);

  return v16;
}

Swift::OpaquePointer_optional __swiftcall SecureAsset.getDictionaryArray(key:category:)(Swift::String key, Swift::String category)
{
  v2 = sub_247993430(key._countAndFlagsBits, key._object, category._countAndFlagsBits, category._object, &qword_27EE59568, &qword_247996C20);
  result.value._rawValue = v2;
  result.is_nil = v3;
  return result;
}

uint64_t sub_247993430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v11 = OBJC_IVAR___SecureAsset_cachedInfo;
  v12 = *&v6[OBJC_IVAR___SecureAsset_cachedInfo];
  if (!v12)
  {
    v31 = a5;
    v32 = a6;
    v21 = *&v6[OBJC_IVAR___SecureAsset_assetLoader];

    v22 = [v6 resourcePath];
    v23 = sub_247994E84();
    v25 = v24;

    v26 = sub_24798FDA4(v23, v25, *&v6[OBJC_IVAR___SecureAsset_assetFileName], *&v6[OBJC_IVAR___SecureAsset_assetFileName + 8]);
    v28 = v27;

    if (v28 >> 60 == 15)
    {
      return 0;
    }

    v30 = MEMORY[0x24C1AFE90](v29);
    sub_2479910AC(v26, v28, v6);
    objc_autoreleasePoolPop(v30);
    sub_247978BF0(v26, v28);
    v13 = *&v6[v11];
    if (!v13)
    {
      return 0;
    }

    a6 = v32;
    a5 = v31;
    if (*(v13 + 16))
    {
      goto LABEL_3;
    }

LABEL_13:

    goto LABEL_14;
  }

  v13 = *&v6[OBJC_IVAR___SecureAsset_cachedInfo];
  if (!*(v12 + 16))
  {
    goto LABEL_13;
  }

LABEL_3:
  v14 = a5;
  v15 = a6;

  v16 = sub_247980FE0(a3, a4);
  if ((v17 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_247978FE4(*(v13 + 56) + 32 * v16, v34);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59348, &qword_247996930);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(v33 + 16) || (v18 = sub_247980FE0(a1, a2), (v19 & 1) == 0))
  {
LABEL_14:

    return 0;
  }

  sub_247978FE4(*(v33 + 56) + 32 * v18, v34);

  __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  if (swift_dynamicCast())
  {
    return v33;
  }

  else
  {
    return 0;
  }
}

Swift::OpaquePointer_optional __swiftcall SecureAsset.getDictionary(key:category:)(Swift::String key, Swift::String category)
{
  object = category._object;
  countAndFlagsBits = category._countAndFlagsBits;
  v5 = key._object;
  v6 = key._countAndFlagsBits;
  v7 = OBJC_IVAR___SecureAsset_cachedInfo;
  v8 = *&v2[OBJC_IVAR___SecureAsset_cachedInfo];
  if (!v8)
  {
    v16 = *&v2[OBJC_IVAR___SecureAsset_assetLoader];

    v17 = [v2 resourcePath];
    v18 = sub_247994E84();
    v20 = v19;

    v21 = sub_24798FDA4(v18, v20, *&v2[OBJC_IVAR___SecureAsset_assetFileName], *&v2[OBJC_IVAR___SecureAsset_assetFileName + 8]);
    v23 = v22;

    if (v23 >> 60 == 15)
    {
      goto LABEL_15;
    }

    v25 = MEMORY[0x24C1AFE90](v24);
    sub_2479910AC(v21, v23, v2);
    objc_autoreleasePoolPop(v25);
    sub_247978BF0(v21, v23);
    v9 = *&v2[v7];
    if (!v9)
    {
      goto LABEL_15;
    }

    if (*(v9 + 16))
    {
      goto LABEL_3;
    }

LABEL_13:

    goto LABEL_14;
  }

  v9 = *&v2[OBJC_IVAR___SecureAsset_cachedInfo];
  if (!*(v8 + 16))
  {
    goto LABEL_13;
  }

LABEL_3:

  v10 = sub_247980FE0(countAndFlagsBits, object);
  if ((v11 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_247978FE4(*(v9 + 56) + 32 * v10, v27);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59348, &qword_247996930);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v15 = 0;
    goto LABEL_16;
  }

  if (!v26[2] || (v13 = sub_247980FE0(v6, v5), (v14 & 1) == 0))
  {
LABEL_14:

    goto LABEL_15;
  }

  sub_247978FE4(v26[7] + 32 * v13, v27);

  if (swift_dynamicCast())
  {
    v15 = v26;
  }

  else
  {
    v15 = 0;
  }

LABEL_16:
  result.value._rawValue = v15;
  result.is_nil = v12;
  return result;
}

uint64_t SecureAsset.getData(fileName:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a2)
  {
    v5 = *&v2[OBJC_IVAR___SecureAsset_assetLoader];

    v6 = [v2 resourcePath];
    v7 = sub_247994E84();
    v9 = v8;

    v3 = sub_24798FDA4(v7, v9, a1, v3);
  }

  return v3;
}

uint64_t SecureAsset.getConfigData(fileName:prefix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v30 = a3;
  v9 = sub_247994EC4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v31[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&v5[OBJC_IVAR___SecureAsset_assetLoader];

  v15 = [v5 resourcePath];
  v16 = sub_247994E84();
  v18 = v17;

  v19 = sub_24798FDA4(v16, v18, a1, a2);
  v21 = v20;

  if (v21 >> 60 == 15)
  {
    return 0;
  }

  v22 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v22 != 2 || *(v19 + 16) == *(v19 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v22)
  {
    if (v19 == v19 >> 32)
    {
LABEL_12:
      sub_247978BF0(v19, v21);
      return 0;
    }
  }

  else if ((v21 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  v33 = xmmword_247996C10;
  if (a4)
  {
    sub_247994EB4();
    v23 = sub_247994E94();
    v25 = v24;
    (*(v10 + 8))(v13, v9);
    if (v25 >> 60 == 15)
    {
      sub_247978C04(v33, *(&v33 + 1));
      sub_247978BF0(v19, v21);
      return v23;
    }

    sub_247978CAC(v23, v25);
    sub_247994C64();
    sub_247994C64();
    sub_247978BF0(v23, v25);
    sub_247978BF0(v23, v25);
  }

  else
  {
    sub_247994C64();
  }

  v27 = v33;
  v32 = v33;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59570, &qword_247996C28);
  v31[3] = v28;
  v31[4] = sub_247994AB4();
  v31[0] = &unk_28598F740;
  v29 = *(*__swift_project_boxed_opaque_existential_1(v31, v28) + 16);
  sub_247978CAC(v27, *(&v27 + 1));
  sub_247994C34();
  __swift_destroy_boxed_opaque_existential_0(v31);
  sub_247978BF0(v19, v21);
  sub_247978C04(v27, *(&v27 + 1));
  return v32;
}

void __swiftcall SecureAsset.getMemoryIndex(key:category:)(SecureMemoryIndex_optional *__return_ptr retstr, Swift::String key, Swift::String category)
{
  v4 = v3;
  object = category._object;
  countAndFlagsBits = category._countAndFlagsBits;
  v7 = key._object;
  v8 = key._countAndFlagsBits;
  v9 = OBJC_IVAR___SecureAsset_cachedInfo;
  v10 = *&v4[OBJC_IVAR___SecureAsset_cachedInfo];
  if (v10)
  {
    v11 = *&v4[OBJC_IVAR___SecureAsset_cachedInfo];
  }

  else
  {
    v20 = *&v4[OBJC_IVAR___SecureAsset_assetLoader];

    v21 = [v4 resourcePath];
    v22 = sub_247994E84();
    v24 = v23;

    v25 = sub_24798FDA4(v22, v24, *&v4[OBJC_IVAR___SecureAsset_assetFileName], *&v4[OBJC_IVAR___SecureAsset_assetFileName + 8]);
    v27 = v26;

    if (v27 >> 60 == 15)
    {
      return;
    }

    v29 = MEMORY[0x24C1AFE90](v28);
    sub_2479910AC(v25, v27, v4);
    objc_autoreleasePoolPop(v29);
    sub_247978BF0(v25, v27);
    v11 = *&v4[v9];
    if (!v11)
    {
      return;
    }

    v30 = *&v4[v9];

    v10 = 0;
  }

  v12 = objc_allocWithZone(SecureMemoryIndex);

  v13 = [v12 init];
  if (!*(v11 + 16) || (v14 = sub_247980FE0(countAndFlagsBits, object), (v15 & 1) == 0))
  {

    return;
  }

  sub_247978FE4(*(v11 + 56) + 32 * v14, v71);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59348, &qword_247996930);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_37:

    return;
  }

  if (!v70[2])
  {
    goto LABEL_35;
  }

  v16 = sub_247980FE0(v8, v7);
  if ((v17 & 1) == 0)
  {
    goto LABEL_35;
  }

  sub_247978FE4(v70[7] + 32 * v16, v71);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59400, &qword_247996938);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_36;
  }

  v66 = v70[2];
  if (!v66)
  {
LABEL_35:

LABEL_36:
    if ([v13 indexCount])
    {
      return;
    }

    goto LABEL_37;
  }

  v18 = 0;
  v65 = OBJC_IVAR___SecureAsset_assetLoader;
  v19 = v70 + 5;
  v67 = v13;
  while (1)
  {
    v69 = v18;
    if (v18 >= v70[2])
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v10 = *(v19 - 1);
    v32 = *v19;
    v68 = v19;
    v71[0] = v10;
    v71[1] = v32;
    v33 = sub_247987184();

    v61 = v33;
    v62 = v33;
    v60 = v33;
    v59 = MEMORY[0x277D837D0];
    v11 = sub_247995084();
    v8 = v34;
    v35 = *&v4[v65];

    v36 = [v4 resourcePath];
    v37 = sub_247994E84();
    v39 = v38;

    v40 = sub_24798FDA4(v37, v39, v11, v8);
    v42 = v41;

    if (v42 >> 60 == 15)
    {
      break;
    }

    v43 = sub_247994E74();
    v44 = sub_247994C44();
    v13 = v67;
    [v67 insertWithLabel:v43 resource:v44];

    if (qword_27EE590C8 != -1)
    {
      swift_once();
    }

    v45 = sub_247994E34();
    __swift_project_value_buffer(v45, qword_27EE59180);
    v8 = sub_247995064();
    sub_247994B5C(v40, v42);

    sub_247994B5C(v40, v42);
    v11 = v4;
    v46 = sub_247994E14();

    if (os_log_type_enabled(v46, v8))
    {
      v64 = v11;
      v47 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v71[0] = v63;
      *v47 = 136316162;
      *(v47 + 4) = sub_2479784A8(0xD000000000000021, 0x80000002479992B0, v71);
      v11 = 2048;
      *(v47 + 12) = 2048;
      *(v47 + 14) = 238;
      *(v47 + 22) = 2080;
      v48 = sub_2479784A8(v10, v32, v71);

      *(v47 + 24) = v48;
      *(v47 + 32) = 2048;
      v49 = v42 >> 62;
      if ((v42 >> 62) > 1)
      {
        if (v49 == 2)
        {
          v52 = *(v40 + 16);
          v51 = *(v40 + 24);
          sub_247978BF0(v40, v42);
          v50 = v51 - v52;
          if (__OFSUB__(v51, v52))
          {
            goto LABEL_47;
          }
        }

        else
        {
          sub_247978BF0(v40, v42);
          v50 = 0;
        }

        v31 = v69;
        v13 = v67;
      }

      else
      {
        v13 = v67;
        if (v49)
        {
          sub_247978BF0(v40, v42);
          LODWORD(v50) = HIDWORD(v40) - v40;
          if (__OFSUB__(HIDWORD(v40), v40))
          {
            goto LABEL_46;
          }

          v50 = v50;
        }

        else
        {
          sub_247978BF0(v40, v42);
          v50 = BYTE6(v42);
        }

        v31 = v69;
      }

      *(v47 + 34) = v50;
      sub_247978BF0(v40, v42);
      *(v47 + 42) = 1024;
      *(v47 + 44) = 0;

      _os_log_impl(&dword_247974000, v46, v8, "[%s] [%ld] Read file %s [%ld bytes] from mapped asset: %{BOOL}d", v47, 0x30u);
      v10 = v63;
      swift_arrayDestroy();
      MEMORY[0x24C1B02C0](v63, -1, -1);
      MEMORY[0x24C1B02C0](v47, -1, -1);
      sub_247978BF0(v40, v42);
    }

    else
    {
      sub_247978BF0(v40, v42);

      sub_247978BF0(v40, v42);
      sub_247978BF0(v40, v42);

      v31 = v69;
    }

    v18 = v31 + 1;
    v19 = v68 + 2;
    if (v66 == v18)
    {
      goto LABEL_35;
    }
  }

  v10 = v67;
  if (qword_27EE590C8 == -1)
  {
    goto LABEL_41;
  }

LABEL_48:
  swift_once();
LABEL_41:
  v53 = sub_247994E34();
  __swift_project_value_buffer(v53, qword_27EE59180);
  v54 = sub_247995054();

  v55 = sub_247994E14();

  if (os_log_type_enabled(v55, v54))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v71[0] = v57;
    *v56 = 136315650;
    *(v56 + 4) = sub_2479784A8(0xD000000000000021, 0x80000002479992B0, v71);
    *(v56 + 12) = 2048;
    *(v56 + 14) = 233;
    *(v56 + 22) = 2080;
    v58 = sub_2479784A8(v11, v8, v71);

    *(v56 + 24) = v58;
    _os_log_impl(&dword_247974000, v55, v54, "[%s] [%ld] Failed to read file %s", v56, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1B02C0](v57, -1, -1);
    MEMORY[0x24C1B02C0](v56, -1, -1);
  }

  else
  {
  }
}

id SecureAsset.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_2479949DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE593A0, &qword_247996520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_247994A44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE593A0, &qword_247996520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_247994AB4()
{
  result = qword_27EE59578;
  if (!qword_27EE59578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE59570, &qword_247996C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE59578);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_247994B5C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_247978CAC(a1, a2);
  }

  return a1;
}