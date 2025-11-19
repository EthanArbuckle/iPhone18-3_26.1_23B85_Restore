uint64_t sub_1CF3388A8(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1CF330E20(a1, a2, *(v2 + 32), *(v2 + 40));
}

uint64_t sub_1CF3388B4(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF335964(a1, v1[4]);
}

uint64_t sub_1CF3388C0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF3325B0(a1, *(v1 + 32), *(v1 + 40));
}

uint64_t sub_1CF3388CC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF3326EC(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48));
}

uint64_t sub_1CF3388DC(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF331110(a1, v1[4]);
}

uint64_t sub_1CF3388F0(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1CF335CC8(a1, a2, *(v2 + 32), *(v2 + 40));
}

uint64_t sub_1CF3388FC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v7 = *(v1 + 56);
  v6 = *(v1 + 40);
  return sub_1CF334FC4(a1, *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88));
}

uint64_t sub_1CF338944(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  v9 = v2[7];
  return sub_1CF335304(a1, a2, v2[8]);
}

unint64_t sub_1CF338978(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 40);
  return sub_1CF335F00(a1, a2, *(v2 + 32));
}

unint64_t sub_1CF338984(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 40);
  return sub_1CF33616C(a1, a2, *(v2 + 32));
}

uint64_t sub_1CF338990(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF3355C8(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 49));
}

uint64_t get_enum_tag_for_layout_string_18FileProviderDaemon22ContinuationSchedulingO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_18FileProviderDaemon15ThrottlingErrorO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1CF338A04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 17))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 > 3)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 5)
  {
    return v4 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CF338A4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -4 - a2;
    }
  }

  return result;
}

uint64_t sub_1CF338A98(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 16) = -a2;
  }

  return result;
}

unint64_t sub_1CF338AD4()
{
  result = qword_1EDEA7418[0];
  if (!qword_1EDEA7418[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEA7418);
  }

  return result;
}

uint64_t sub_1CF339634(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C05D0, &unk_1CF9FE620);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1CF9FA450;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v5 + 32));
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_0, v2, a1);
  v7 = (*(a2 + 8))(a1, a2);
  v8 = *(v7 + 16);
  if (!v8)
  {
LABEL_17:

    return v5;
  }

  v9 = v7 + 32;
  while (1)
  {
    sub_1CF1A91AC(v9, v22);
    v11 = v23;
    v12 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v13 = sub_1CF339634(v11, v12);
    result = __swift_destroy_boxed_opaque_existential_1(v22);
    v14 = *(v13 + 16);
    v15 = *(v5 + 16);
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      break;
    }

    if (v16 > *(v5 + 24) >> 1)
    {
      if (v15 <= v16)
      {
        v21 = v15 + v14;
      }

      else
      {
        v21 = *(v5 + 16);
      }

      result = sub_1CF1F7048(1, v21, 1, v5);
      v5 = result;
      v15 = *(result + 16);
      if (*(v13 + 16))
      {
LABEL_8:
        if (((*(v5 + 24) >> 1) - v15) < v14)
        {
          goto LABEL_20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE770, &qword_1CFA059A0);
        swift_arrayInitWithCopy();

        if (v14)
        {
          v18 = *(v5 + 16);
          v19 = __OFADD__(v18, v14);
          v20 = v18 + v14;
          if (v19)
          {
            goto LABEL_21;
          }

          *(v5 + 16) = v20;
        }

        goto LABEL_4;
      }
    }

    else
    {
      v17 = *(v13 + 16);
      if (v14)
      {
        goto LABEL_8;
      }
    }

    if (v14)
    {
      goto LABEL_19;
    }

LABEL_4:
    v9 += 40;
    if (!--v8)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_1CF33988C(uint64_t a1)
{
  v85 = *MEMORY[0x1E69E9840];
  v70 = sub_1CF9E6118();
  v69 = *(v70 - 1);
  v3 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v75 = (&v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v67 - v7;
  v74 = sub_1CF9E5A58();
  v76 = *(v74 - 8);
  v9 = *(v76 + 64);
  v10 = MEMORY[0x1EEE9AC00](v74);
  v68 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v67 - v12;
  v73 = sub_1CF9E5828();
  v72 = *(v73 - 8);
  v13 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v81 = (&v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = [objc_opt_self() defaultManager];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF778, &qword_1CFA02DD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA440;
  v17 = *MEMORY[0x1E696A360];
  *(inited + 32) = *MEMORY[0x1E696A360];
  *(inited + 40) = 0x656C69626F6DLL;
  *(inited + 48) = 0xE600000000000000;
  v18 = *MEMORY[0x1E696A328];
  *(inited + 56) = *MEMORY[0x1E696A328];
  *(inited + 64) = 0x656C69626F6DLL;
  *(inited + 72) = 0xE600000000000000;
  v19 = v17;
  v20 = v18;
  v21 = v15;
  v22 = sub_1CF4E2278(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF780, &qword_1CFA02DE0);
  swift_arrayDestroy();
  sub_1CF7BAC94(v22);
  type metadata accessor for FileAttributeKey(0);
  v24 = v23;
  v77 = sub_1CF00BBC0(&unk_1EC4BF620, type metadata accessor for FileAttributeKey);
  v78 = v24;
  v25 = sub_1CF9E6618();

  v26 = a1;
  sub_1CF9E5A18();
  v27 = sub_1CF9E6888();

  v83[0] = 0;
  LODWORD(a1) = [v21 setAttributes:v25 ofItemAtPath:v27 error:v83];

  if (a1)
  {
    v79 = v22;
    v28 = v83[0];
    v29 = v26;
    v80 = v21;
    v30 = sub_1CF9E7268();
    if (v30)
    {
      v69 = v1;
      v31 = v81;
      v70 = v30;
      sub_1CF9E7238();
      sub_1CF9E5818();
      v32 = v71;
      v33 = v74;
      v34 = v79;
      if (v84)
      {
        v35 = (v76 + 56);
        v75 = (v76 + 32);
        v76 += 8;
        do
        {
          v36 = swift_dynamicCast();
          v37 = *v35;
          if (v36)
          {
            v37(v8, 0, 1, v33);
            (*v75)(v32, v8, v33);
            v38 = objc_autoreleasePoolPush();
            sub_1CF7BAC94(v34);
            v39 = sub_1CF9E6618();

            sub_1CF9E5A18();
            v40 = v32;
            v41 = sub_1CF9E6888();

            v82 = 0;
            v42 = [v80 setAttributes:v39 ofItemAtPath:v41 error:&v82];

            if (!v42)
            {
              v65 = v82;

              sub_1CF9E57F8();

              swift_willThrow();
              objc_autoreleasePoolPop(v38);

              (*v76)(v40, v33);
              v62 = *(v72 + 8);
              v63 = v81;
              v64 = &v87;
              goto LABEL_17;
            }

            v43 = v82;
            objc_autoreleasePoolPop(v38);
            (*v76)(v40, v33);
            v32 = v40;
            v31 = v81;
            v34 = v79;
          }

          else
          {
            v37(v8, 1, 1, v33);
            sub_1CEFCCC44(v8, &unk_1EC4BE310, qword_1CF9FCBE0);
          }

          sub_1CF9E5818();
        }

        while (v84);
      }

      (*(v72 + 8))(v31, v73);
    }

    else
    {

      v46 = fpfs_current_or_default_log();
      v47 = v75;
      sub_1CF9E6128();
      v48 = v76;
      v49 = v68;
      v50 = v29;
      v51 = v74;
      (*(v76 + 16))(v68, v50, v74);
      v52 = sub_1CF9E6108();
      v53 = sub_1CF9E72A8();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v83[0] = v81;
        *v54 = 136315138;
        v55 = sub_1CF9E5928();
        v56 = [v55 fp_shortDescription];

        v57 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v59 = v58;

        (*(v48 + 8))(v49, v74);
        v60 = sub_1CEFD0DF0(v57, v59, v83);

        *(v54 + 4) = v60;
        _os_log_impl(&dword_1CEFC7000, v52, v53, "Failed to get enumerator for %s", v54, 0xCu);
        v61 = v81;
        __swift_destroy_boxed_opaque_existential_1(v81);
        MEMORY[0x1D386CDC0](v61, -1, -1);
        MEMORY[0x1D386CDC0](v54, -1, -1);

        v62 = *(v69 + 8);
        v63 = v75;
      }

      else
      {

        (*(v48 + 8))(v49, v51);
        v62 = *(v69 + 8);
        v63 = v47;
      }

      v64 = &v86;
LABEL_17:
      v62(v63, *(v64 - 32));
    }
  }

  else
  {
    v44 = v21;
    v45 = v83[0];

    sub_1CF9E57F8();

    swift_willThrow();
  }

  v66 = *MEMORY[0x1E69E9840];
}

id FPFSSQLBackupEngine.init(userURL:outputUserURL:)(char *a1, char *a2)
{
  v3 = v2;
  v6 = sub_1CF9E6118();
  v57 = *(v6 - 8);
  v58 = v6;
  v7 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E5A58();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v54 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v52 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v53 = &v52 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v52 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v52 - v22;
  v24 = *(v10 + 16);
  v56 = OBJC_IVAR____TtC18FileProviderDaemon19FPFSSQLBackupEngine_userURL;
  v61 = a1;
  v24(&v3[OBJC_IVAR____TtC18FileProviderDaemon19FPFSSQLBackupEngine_userURL], a1, v9);
  v55 = OBJC_IVAR____TtC18FileProviderDaemon19FPFSSQLBackupEngine_outputUserURL;
  v24(&v3[OBJC_IVAR____TtC18FileProviderDaemon19FPFSSQLBackupEngine_outputUserURL], a2, v9);
  v60 = a2;
  sub_1CF9E5958();
  v25 = [objc_opt_self() defaultManager];
  v62 = v23;
  sub_1CF9E5A18();
  v26 = sub_1CF9E6888();

  LODWORD(a2) = [v25 fileExistsAtPath_];

  if (a2)
  {
    v27 = v62;
    sub_1CF9E5958();
    v28 = OBJC_IVAR____TtC18FileProviderDaemon19FPFSSQLBackupEngine_destinationDirectoryURL;
    v24(&v3[OBJC_IVAR____TtC18FileProviderDaemon19FPFSSQLBackupEngine_destinationDirectoryURL], v21, v9);
    v24(v16, &v3[v28], v9);
    v29 = v53;
    sub_1CF9E5968();
    v30 = *(v10 + 8);
    v30(v16, v9);
    (*(v10 + 32))(&v3[OBJC_IVAR____TtC18FileProviderDaemon19FPFSSQLBackupEngine_backupManifestURL], v29, v9);
    v31 = type metadata accessor for FPFSSQLBackupEngine();
    v63.receiver = v3;
    v63.super_class = v31;
    v32 = objc_msgSendSuper2(&v63, sel_init);
    v30(v60, v9);
    v30(v61, v9);
    v30(v21, v9);
    v30(v27, v9);
    return v32;
  }

  else
  {
    v53 = v3;
    v34 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v35 = v54;
    v24(v54, v62, v9);
    v36 = sub_1CF9E6108();
    v37 = sub_1CF9E72C8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v64 = v52;
      *v38 = 136446210;
      v39 = sub_1CF9E5928();
      v40 = [v39 fp_shortDescription];

      v41 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v42 = v35;
      v44 = v43;

      v45 = *(v10 + 8);
      v45(v42, v9);
      v46 = sub_1CEFD0DF0(v41, v44, &v64);

      *(v38 + 4) = v46;
      _os_log_impl(&dword_1CEFC7000, v36, v37, "%{public}s does not exist. No need to back up.", v38, 0xCu);
      v47 = v52;
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x1D386CDC0](v47, -1, -1);
      MEMORY[0x1D386CDC0](v38, -1, -1);

      v45(v60, v9);
      v48 = v61;
    }

    else
    {

      v45 = *(v10 + 8);
      v45(v60, v9);
      v45(v61, v9);
      v48 = v35;
    }

    v45(v48, v9);
    (*(v57 + 8))(v59, v58);
    v45(v62, v9);
    v49 = v53;
    v45(&v53[v56], v9);
    v45(&v49[v55], v9);
    type metadata accessor for FPFSSQLBackupEngine();
    v50 = *((*MEMORY[0x1E69E7D40] & *v49) + 0x30);
    v51 = *((*MEMORY[0x1E69E7D40] & *v49) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t type metadata accessor for FPFSSQLBackupEngine()
{
  result = qword_1EC4BF768;
  if (!qword_1EC4BF768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CF33A90C(void (*a1)(uint64_t, void *), uint64_t a2)
{
  v3 = v2;
  v115 = a2;
  v116 = a1;
  v122[1] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v117 = v109 - v6;
  v7 = sub_1CF9E5A58();
  v8 = *(v7 - 8);
  v118 = v7;
  v119 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E6118();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v109[1] = v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v111 = v109 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v109 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v109[0] = v109 - v22;
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  v110 = (v109 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v109 - v27;
  v29 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v30 = sub_1CF9E6108();
  v31 = sub_1CF9E72C8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1CEFC7000, v30, v31, "Starting backup...", v32, 2u);
    MEMORY[0x1D386CDC0](v32, -1, -1);
  }

  v33 = *(v13 + 8);
  v113 = v12;
  v114 = v13 + 8;
  v112 = v33;
  v33(v28, v12);
  v34 = objc_opt_self();
  v35 = [v34 defaultManager];
  v36 = OBJC_IVAR____TtC18FileProviderDaemon19FPFSSQLBackupEngine_destinationDirectoryURL;
  sub_1CF9E5A18();
  v37 = sub_1CF9E6888();

  v38 = [v35 fileExistsAtPath_];

  if (v38)
  {
    v39 = [v34 defaultManager];
    v40 = sub_1CF9E5928();
    v122[0] = 0;
    v41 = [v39 removeItemAtURL:v40 error:v122];

    if (!v41)
    {
      v72 = v122[0];
      v54 = sub_1CF9E57F8();

      swift_willThrow();
      v73 = sub_1CF9E5A18();
      v75 = v74;
      v76 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v77 = v54;
      v78 = sub_1CF9E6108();
      v79 = sub_1CF9E72A8();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v122[0] = v82;
        *v80 = 136315394;
        v83 = sub_1CEFD0DF0(v73, v75, v122);

        *(v80 + 4) = v83;
        *(v80 + 12) = 2112;
        swift_getErrorValue();
        v84 = Error.prettyDescription.getter(v120);
        *(v80 + 14) = v84;
        *v81 = v84;
        _os_log_impl(&dword_1CEFC7000, v78, v79, "Unable to delete existing destination directory at %s: %@", v80, 0x16u);
        sub_1CEFCCC44(v81, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v81, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v82);
        MEMORY[0x1D386CDC0](v82, -1, -1);
        MEMORY[0x1D386CDC0](v80, -1, -1);
      }

      else
      {
      }

      v112(v20, v113);
      v85 = v117;
      (*(v119 + 56))(v117, 1, 1, v118);
      goto LABEL_16;
    }

    v42 = v122[0];
  }

  v43 = [v34 defaultManager];
  v44 = sub_1CF9E5928();
  v122[0] = 0;
  v45 = [v43 createDirectoryAtURL:v44 withIntermediateDirectories:0 attributes:0 error:v122];

  v46 = v122[0];
  if (!v45)
  {
    v53 = v122[0];
    v54 = sub_1CF9E57F8();

    swift_willThrow();
    v55 = fpfs_current_or_default_log();
    v56 = v111;
    sub_1CF9E6128();
    v57 = v3;
    v58 = v54;
    v59 = sub_1CF9E6108();
    v60 = sub_1CF9E72A8();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v122[0] = v63;
      *v61 = 136315394;
      v64 = sub_1CF9E5928();
      v65 = [v64 fp_shortDescription];

      v66 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v68 = v67;

      v69 = sub_1CEFD0DF0(v66, v68, v122);

      *(v61 + 4) = v69;
      *(v61 + 12) = 2112;
      swift_getErrorValue();
      v70 = Error.prettyDescription.getter(v121);
      *(v61 + 14) = v70;
      *v62 = v70;
      _os_log_impl(&dword_1CEFC7000, v59, v60, "Unable to create destination directory %s: %@", v61, 0x16u);
      sub_1CEFCCC44(v62, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v62, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v63);
      MEMORY[0x1D386CDC0](v63, -1, -1);
      MEMORY[0x1D386CDC0](v61, -1, -1);

      v71 = v111;
    }

    else
    {

      v71 = v56;
    }

    v112(v71, v113);
    v85 = v117;
    (*(v119 + 56))(v117, 1, 1, v118);
LABEL_16:
    v88 = v54;
    v116(v85, v54);

    goto LABEL_19;
  }

  v47 = v3;
  v48 = *(v119 + 16);
  v48(v11, &v3[OBJC_IVAR____TtC18FileProviderDaemon19FPFSSQLBackupEngine_backupManifestURL], v118);
  v49 = type metadata accessor for SQLBackupManifest();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();
  v52 = v46;
  v86 = sub_1CF1BA200(v11);
  v87 = OBJC_IVAR____TtC18FileProviderDaemon19FPFSSQLBackupEngine_userURL;

  sub_1CF33DF24(&v47[v87], v86);
  v111 = v86;

  sub_1CF1BC728();
  sub_1CF33988C(&v47[v36]);
  v89 = fpfs_current_or_default_log();
  v90 = v109[0];
  sub_1CF9E6128();
  v91 = v47;
  v92 = sub_1CF9E6108();
  v93 = sub_1CF9E72C8();

  v94 = os_log_type_enabled(v92, v93);
  v95 = v118;
  if (v94)
  {
    v96 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v122[0] = v110;
    *v96 = 136315138;
    v97 = sub_1CF9E5928();
    v98 = [v97 fp_shortDescription];

    v99 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v101 = v100;

    v102 = sub_1CEFD0DF0(v99, v101, v122);

    *(v96 + 4) = v102;
    _os_log_impl(&dword_1CEFC7000, v92, v93, "Calling completion handler with %s", v96, 0xCu);
    v103 = v110;
    __swift_destroy_boxed_opaque_existential_1(v110);
    MEMORY[0x1D386CDC0](v103, -1, -1);
    v104 = v96;
    v95 = v118;
    MEMORY[0x1D386CDC0](v104, -1, -1);

    v105 = v109[0];
  }

  else
  {

    v105 = v90;
  }

  v112(v105, v113);
  v108 = v119;
  v85 = v117;
  v48(v117, &v47[v36], v95);
  (*(v108 + 56))(v85, 0, 1, v95);
  v116(v85, 0);

LABEL_19:
  result = sub_1CEFCCC44(v85, &unk_1EC4BE310, qword_1CF9FCBE0);
  v107 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1CF33BA94()
{
  v1 = v0;
  v37[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultManager];
  v8 = sub_1CF9E5928();
  v37[0] = 0;
  v9 = [v7 removeItemAtURL:v8 error:v37];

  v10 = v37[0];
  if (v9)
  {
    v11 = *MEMORY[0x1E69E9840];

    return v10;
  }

  else
  {
    v35 = v37[0];
    v13 = v37[0];
    v14 = sub_1CF9E57F8();

    swift_willThrow();
    v15 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v16 = v1;
    v17 = v14;
    v18 = sub_1CF9E6108();
    v19 = sub_1CF9E72A8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v35 = v3;
      v22 = v21;
      v23 = swift_slowAlloc();
      v34 = v2;
      v24 = v23;
      v37[0] = v23;
      *v20 = 136315394;
      v25 = sub_1CF9E5928();
      v26 = [v25 fp_shortDescription];

      v27 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v29 = v28;

      v30 = sub_1CEFD0DF0(v27, v29, v37);

      *(v20 + 4) = v30;
      *(v20 + 12) = 2112;
      swift_getErrorValue();
      v31 = Error.prettyDescription.getter(v36);
      *(v20 + 14) = v31;
      *v22 = v31;
      _os_log_impl(&dword_1CEFC7000, v18, v19, "Failed to remove directory %s: %@", v20, 0x16u);
      sub_1CEFCCC44(v22, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v22, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1D386CDC0](v24, -1, -1);
      MEMORY[0x1D386CDC0](v20, -1, -1);

      result = v35[1](v6, v34);
    }

    else
    {

      result = (*(v3 + 8))(v6, v2);
    }

    v32 = *MEMORY[0x1E69E9840];
  }

  return result;
}

id FPFSSQLBackupEngine.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FPFSSQLBackupEngine.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FPFSSQLBackupEngine();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1CF33BFEC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = sub_1CF9E6A08();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return sub_1CF9E6B58();
}

unint64_t sub_1CF33C0A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v157 = a3;
  v156 = a2;
  v153 = a4;
  v161 = sub_1CF9E53C8();
  v160 = *(v161 - 1);
  v5 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v161);
  v159 = &v148 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_1CF9E5A58();
  v167 = *(v163 - 8);
  v7 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v163);
  v162 = (&v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v155 = &v148 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v158 = &v148 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v154 = &v148 - v14;
  v15 = sub_1CF9E6118();
  v16 = *(v15 - 8);
  v164 = v15;
  v165 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v168 = &v148 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v148 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v148 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v148 - v26;
  v28 = sub_1CF9E5648();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v148 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v148 - v34;
  v36 = v166;
  sub_1CF9E58A8();
  if (v36)
  {
    v37 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v38 = v167;
    v39 = v162;
    v40 = v163;
    (*(v167 + 16))(v162, a1, v163);
    v41 = v36;
    v42 = sub_1CF9E6108();
    v43 = sub_1CF9E72A8();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      v166 = swift_slowAlloc();
      v172[0] = v166;
      *v44 = 136315394;
      v45 = sub_1CF9E5928();
      v46 = [v45 fp_shortDescription];
      LODWORD(v160) = v43;
      v47 = v46;

      v48 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v50 = v49;

      (*(v38 + 8))(v39, v40);
      v51 = sub_1CEFD0DF0(v48, v50, v172);

      *(v44 + 4) = v51;
      *(v44 + 12) = 2112;
      swift_getErrorValue();
      v52 = Error.prettyDescription.getter(v172[5]);
      *(v44 + 14) = v52;
      v53 = v161;
      *v161 = v52;
      _os_log_impl(&dword_1CEFC7000, v42, v160, "Failed to fetch resource values for %s: %@", v44, 0x16u);
      sub_1CEFCCC44(v53, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v53, -1, -1);
      v54 = v166;
      __swift_destroy_boxed_opaque_existential_1(v166);
      MEMORY[0x1D386CDC0](v54, -1, -1);
      MEMORY[0x1D386CDC0](v44, -1, -1);
    }

    else
    {

      (*(v38 + 8))(v39, v40);
    }

    (*(v165 + 8))(v168, v164);
    return swift_willThrow();
  }

  v150 = v21;
  v151 = v24;
  v149 = v27;
  v166 = a1;
  v162 = 0;
  (*(v29 + 32))(v35, v32, v28);
  v55 = sub_1CF9E5598();
  v57 = v28;
  v168 = v35;
  v152 = v29;
  if (!v56)
  {
    v87 = fpfs_current_or_default_log();
    v88 = v150;
    sub_1CF9E6128();
    v89 = v167;
    v90 = v155;
    v91 = v163;
    (*(v167 + 16))(v155, v166, v163);
    v92 = sub_1CF9E6108();
    v93 = sub_1CF9E72A8();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      v172[0] = v162;
      *v94 = 136315138;
      v95 = sub_1CF9E5928();
      v96 = [v95 fp_shortDescription];

      v97 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v166 = v57;
      v99 = v98;

      (*(v89 + 8))(v90, v91);
      v100 = sub_1CEFD0DF0(v97, v99, v172);
      v57 = v166;

      *(v94 + 4) = v100;
      _os_log_impl(&dword_1CEFC7000, v92, v93, "Failed to get canonical path for %s", v94, 0xCu);
      v101 = v162;
      __swift_destroy_boxed_opaque_existential_1(v162);
      MEMORY[0x1D386CDC0](v101, -1, -1);
      MEMORY[0x1D386CDC0](v94, -1, -1);

      (*(v165 + 8))(v150, v164);
    }

    else
    {

      (*(v89 + 8))(v90, v91);
      (*(v165 + 8))(v88, v164);
    }

    LODWORD(v172[0]) = 2;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF00BBC0(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    v122 = v159;
    v123 = v161;
    sub_1CF9E57D8();
    sub_1CF9E53A8();
    (*(v160 + 8))(v122, v123);
    swift_willThrow();
    return (*(v152 + 8))(v168, v57);
  }

  v58 = v55;
  v59 = v56;
  v60 = sub_1CF9E69D8();
  v61 = sub_1CF9E69D8();
  v62 = __OFSUB__(v60, v61);
  result = v60 - v61;
  v64 = v167;
  if (v62)
  {
    __break(1u);
    goto LABEL_35;
  }

  v65 = sub_1CF33BFEC(result, v58, v59);
  v66 = MEMORY[0x1D3868C10](v65);
  v68 = v67;

  result = sub_1CF9E5568();
  v69 = *MEMORY[0x1E695E2F0];
  if (!*MEMORY[0x1E695E2F0])
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v70 = result;

  if (!*(v70 + 16))
  {
LABEL_19:

LABEL_20:
    v102 = v166;
    v103 = fpfs_current_or_default_log();
    v104 = v151;
    sub_1CF9E6128();
    v105 = v158;
    v106 = v163;
    (*(v64 + 16))(v158, v102, v163);
    v107 = sub_1CF9E6108();
    v108 = sub_1CF9E72A8();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v166 = swift_slowAlloc();
      v172[0] = v166;
      *v109 = 136315138;
      v110 = sub_1CF9E5928();
      v111 = v64;
      v112 = [v110 fp_shortDescription];

      v113 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v114 = v57;
      v116 = v115;

      (*(v111 + 8))(v158, v106);
      v117 = sub_1CEFD0DF0(v113, v116, v172);
      v57 = v114;

      *(v109 + 4) = v117;
      _os_log_impl(&dword_1CEFC7000, v107, v108, "Failed to get the inode for %s", v109, 0xCu);
      v118 = v166;
      __swift_destroy_boxed_opaque_existential_1(v166);
      MEMORY[0x1D386CDC0](v118, -1, -1);
      MEMORY[0x1D386CDC0](v109, -1, -1);

      (*(v165 + 8))(v151, v164);
    }

    else
    {

      (*(v64 + 8))(v105, v106);
      (*(v165 + 8))(v104, v164);
    }

    v119 = v161;
    v120 = v160;
    v121 = v159;
    LODWORD(v172[0]) = 2;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF00BBC0(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    sub_1CF9E57D8();
    sub_1CF9E53A8();
    (*(v120 + 8))(v121, v119);
    swift_willThrow();
    return (*(v152 + 8))(v168, v57);
  }

  v71 = v69;
  v72 = sub_1CEFE863C(v71);
  if ((v73 & 1) == 0)
  {

    goto LABEL_19;
  }

  v74 = v57;
  sub_1CEFD1104(*(v70 + 56) + 32 * v72, v172);

  sub_1CEFD1104(v172, v171);
  sub_1CF2CA148();
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v172);

    goto LABEL_20;
  }

  v75 = v170[0];
  v157 = [v170[0] integerValue];

  v156 = sub_1CF9E55C8();
  v77 = v76;
  v78 = sub_1CF9E6888();
  v79 = sub_1CF9E5568();
  v80 = *(v79 + 16);
  v158 = v78;
  if (v80 && (v81 = sub_1CEFE863C(v78), (v82 & 1) != 0))
  {
    sub_1CEFD1104(*(v79 + 56) + 32 * v81, v171);

    sub_1CEFD1104(v171, v170);
    if (swift_dynamicCast())
    {
      v83 = v169;
      v84 = [v169 unsignedIntValue];

      __swift_destroy_boxed_opaque_existential_1(v171);
      __swift_destroy_boxed_opaque_existential_1(v172);
      result = (*(v152 + 8))(v168, v74);
      v85 = v153;
      *v153 = v66;
      v85[1] = v68;
      v86 = v156;
      v85[2] = v157;
      v85[3] = v86;
      *(v85 + 32) = v77 & 1;
      *(v85 + 9) = v84;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_1(v171);
  }

  else
  {
  }

  v124 = fpfs_current_or_default_log();
  v125 = v149;
  sub_1CF9E6128();
  v126 = v154;
  v127 = v163;
  (*(v64 + 16))(v154, v166, v163);
  v128 = sub_1CF9E6108();
  v129 = sub_1CF9E72A8();
  v130 = v74;
  if (os_log_type_enabled(v128, v129))
  {
    v131 = swift_slowAlloc();
    v162 = v131;
    v166 = swift_slowAlloc();
    v171[0] = v166;
    *v131 = 136315138;
    v132 = sub_1CF9E5928();
    v133 = v126;
    v134 = [v132 fp_shortDescription];

    v135 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v136 = v64;
    v138 = v137;

    v139 = v133;
    v130 = v74;
    (*(v136 + 8))(v139, v127);
    v140 = sub_1CEFD0DF0(v135, v138, v171);

    v141 = v162;
    *(v162 + 4) = v140;
    v142 = v141;
    _os_log_impl(&dword_1CEFC7000, v128, v129, "Failed to get gen count for %s", v141, 0xCu);
    v143 = v166;
    __swift_destroy_boxed_opaque_existential_1(v166);
    MEMORY[0x1D386CDC0](v143, -1, -1);
    MEMORY[0x1D386CDC0](v142, -1, -1);

    (*(v165 + 8))(v149, v164);
  }

  else
  {

    (*(v64 + 8))(v126, v127);
    (*(v165 + 8))(v125, v164);
  }

  v144 = v168;
  v145 = v158;
  LODWORD(v171[0]) = 2;
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CF00BBC0(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
  v146 = v159;
  v147 = v161;
  sub_1CF9E57D8();
  sub_1CF9E53A8();
  (*(v160 + 8))(v146, v147);
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1(v172);
  return (*(v152 + 8))(v144, v130);
}

void sub_1CF33D130(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v111 = a2;
  v116[7] = a3;
  v106 = a1;
  v101 = sub_1CF9E53C8();
  v100 = *(v101 - 8);
  v3 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v99 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v102 = &v93 - v7;
  v103 = sub_1CF9E5828();
  v95 = *(v103 - 8);
  v8 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v103);
  v109 = (&v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v110 = sub_1CF9E5A58();
  v107 = *(v110 - 8);
  v10 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v97 = (&v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v96 = &v93 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v98 = &v93 - v15;
  v105 = sub_1CF9E6118();
  v104 = *(v105 - 1);
  v16 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v18 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v93 - v20);
  v22 = sub_1CF9E5648();
  v108 = *(v22 - 8);
  v23 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4700, &qword_1CFA00810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA450;
  v27 = *MEMORY[0x1E695DA88];
  *(inited + 32) = *MEMORY[0x1E695DA88];
  v28 = v27;
  sub_1CEFF8A84(inited);
  swift_setDeallocating();
  sub_1CF33F938(inited + 32);
  v29 = v112;
  v30 = v111;
  sub_1CF9E58A8();
  if (v29)
  {

    return;
  }

  v94 = 0;
  v93 = v18;
  v112 = v22;

  v31 = sub_1CF9E5598();
  if (!v32)
  {
    v106 = v25;
    v47 = fpfs_current_or_default_log();
    v48 = v21;
    sub_1CF9E6128();
    v49 = v107;
    v50 = v98;
    v51 = v110;
    (*(v107 + 16))(v98, v30, v110);
    v52 = sub_1CF9E6108();
    v53 = sub_1CF9E72A8();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v111 = v48;
      v55 = v54;
      v56 = v49;
      v109 = swift_slowAlloc();
      v113[0] = v109;
      *v55 = 136315138;
      v57 = sub_1CF9E5928();
      v58 = [v57 fp_shortDescription];

      v59 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v61 = v60;

      (*(v56 + 8))(v50, v51);
      v62 = sub_1CEFD0DF0(v59, v61, v113);

      *(v55 + 4) = v62;
      _os_log_impl(&dword_1CEFC7000, v52, v53, "Could not get canonical path for %s", v55, 0xCu);
      v63 = v109;
      __swift_destroy_boxed_opaque_existential_1(v109);
      MEMORY[0x1D386CDC0](v63, -1, -1);
      MEMORY[0x1D386CDC0](v55, -1, -1);

      (*(v104 + 8))(v111, v105);
    }

    else
    {

      (*(v49 + 8))(v50, v51);
      (*(v104 + 8))(v48, v105);
    }

    v79 = v108;
    v80 = v112;
    v81 = v101;
    v82 = v100;
    v83 = v99;
    LODWORD(v113[0]) = 2;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF00BBC0(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    sub_1CF9E57D8();
    sub_1CF9E53A8();
    (*(v82 + 8))(v83, v81);
    swift_willThrow();
    (*(v79 + 8))(v106, v80);
    goto LABEL_14;
  }

  v33 = v32;
  v111 = v31;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1CF9FC330;
  *(v34 + 32) = v28;
  v35 = *MEMORY[0x1E695E2F0];
  if (!*MEMORY[0x1E695E2F0])
  {
    __break(1u);
    return;
  }

  v36 = *MEMORY[0x1E695DAB8];
  *(v34 + 40) = v35;
  *(v34 + 48) = v36;
  v37 = v34;
  v38 = v28;
  v39 = v36;
  v40 = v35;
  *(v37 + 56) = sub_1CF9E6888();

  sub_1CF8E4440(v41);

  v42 = [objc_opt_self() defaultManager];
  v43 = v106;
  v44 = sub_1CF9E7268();

  v45 = v94;
  if (!v44)
  {

    v64 = fpfs_current_or_default_log();
    v65 = v93;
    sub_1CF9E6128();
    v66 = v107;
    v67 = v96;
    v68 = v110;
    (*(v107 + 16))(v96, v43, v110);
    v69 = sub_1CF9E6108();
    v70 = sub_1CF9E72A8();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v113[0] = v111;
      *v71 = 136315138;
      v72 = sub_1CF9E5928();
      v73 = [v72 fp_shortDescription];

      v74 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v106 = v25;
      v76 = v75;

      (*(v66 + 8))(v67, v68);
      v77 = sub_1CEFD0DF0(v74, v76, v113);

      *(v71 + 4) = v77;
      _os_log_impl(&dword_1CEFC7000, v69, v70, "Failed to get enumerator for %s", v71, 0xCu);
      v78 = v111;
      __swift_destroy_boxed_opaque_existential_1(v111);
      MEMORY[0x1D386CDC0](v78, -1, -1);
      MEMORY[0x1D386CDC0](v71, -1, -1);

      (*(v104 + 8))(v93, v105);
      (*(v108 + 8))(v106, v112);
    }

    else
    {

      (*(v66 + 8))(v67, v68);
      (*(v104 + 8))(v65, v105);
      (*(v108 + 8))(v25, v112);
    }

LABEL_14:

    return;
  }

  sub_1CF33C0A8(v43, v111, v33, v115);
  v46 = v110;
  if (v45)
  {
    (*(v108 + 8))(v25, v112);
  }

  else
  {
    sub_1CF1BBDD4(v115);
    v105 = v33;
    v106 = v25;
    sub_1CF1C090C(v115);
    sub_1CF9E7238();
    sub_1CF9E5818();
    if (v114)
    {
      v84 = (v107 + 56);
      v85 = (v107 + 32);
      v86 = (v107 + 8);
      do
      {
        v88 = v102;
        v89 = swift_dynamicCast();
        v90 = *v84;
        if (v89)
        {
          v90(v88, 0, 1, v46);
          v91 = v97;
          (*v85)();
          v92 = objc_autoreleasePoolPush();
          sub_1CF33C0A8(v91, v111, v105, v116);
          sub_1CF1BBDD4(v116);
          sub_1CF1C090C(v116);
          objc_autoreleasePoolPop(v92);
          v46 = v110;
          (*v86)(v91, v110);
        }

        else
        {
          v90(v88, 1, 1, v46);
          sub_1CEFCCC44(v88, &unk_1EC4BE310, qword_1CF9FCBE0);
        }

        sub_1CF9E5818();
        v87 = v103;
      }

      while (v114);
    }

    else
    {
      v87 = v103;
    }

    (*(v95 + 8))(v109, v87);
    (*(v108 + 8))(v106, v112);
  }
}

uint64_t sub_1CF33DF24(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
  v10 = *(v5 + 72);
  v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v32 = swift_allocObject();
  v12 = v32 + v11;

  sub_1CF9E5958();
  v29 = v10;
  sub_1CF9E5958();
  v13 = objc_opt_self();
  v14 = *(v6 + 16);
  v34 = (v6 + 8);
  v31 = v12;
  v35 = v4;
  v14(v9, v12, v4);
  v30 = objc_autoreleasePoolPush();
  v15 = [v13 defaultManager];
  sub_1CF9E5A18();
  v16 = sub_1CF9E6888();

  v17 = [v15 fileExistsAtPath_];

  if (v17)
  {

    v18 = v33;
    sub_1CF33D130(v9, a1, a2);
    if (v18)
    {
      v19 = v30;
      goto LABEL_8;
    }

    v28 = a1;
    v33 = 0;
  }

  else
  {
    v28 = a1;
  }

  objc_autoreleasePoolPop(v30);
  v20 = *v34;
  v21 = v35;
  (*v34)(v9, v35);
  v14(v9, v31 + v29, v21);
  v19 = objc_autoreleasePoolPush();
  v22 = [v13 defaultManager];
  sub_1CF9E5A18();
  v23 = sub_1CF9E6888();

  LODWORD(v21) = [v22 fileExistsAtPath_];

  if (!v21 || (, v24 = v33, sub_1CF33D130(v9, v28, a2), !v24))
  {
    objc_autoreleasePoolPop(v19);
    v20(v9, v35);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

LABEL_8:
  swift_setDeallocating();
  v25 = v35;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  objc_autoreleasePoolPop(v19);
  (*v34)(v9, v25);
}

uint64_t sub_1CF33E2FC()
{
  result = sub_1CF9E5A58();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF33E3F0(char *a1, uint64_t a2)
{
  v158 = a2;
  v163[1] = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v151 = &v139 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v152 = (&v139 - v7);
  MEMORY[0x1EEE9AC00](v8);
  v153 = &v139 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v154 = (&v139 - v11);
  MEMORY[0x1EEE9AC00](v12);
  v149 = &v139 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v150 = &v139 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v146 = &v139 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v147 = &v139 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v143 = &v139 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v144 = &v139 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v139 = &v139 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v140 = &v139 - v27;
  v28 = sub_1CF9E5A58();
  v29 = *(v28 - 8);
  v159 = v28;
  v160 = v29;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v139 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1CF9E6118();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v142 = &v139 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v141 = &v139 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v148 = &v139 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v145 = &v139 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v139 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v139 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v139 - v50;
  v52 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v53 = sub_1CF9E6108();
  v54 = sub_1CF9E72C8();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_1CEFC7000, v53, v54, "Starting backup...", v55, 2u);
    MEMORY[0x1D386CDC0](v55, -1, -1);
  }

  v56 = *(v34 + 8);
  v156 = v33;
  v157 = v34 + 8;
  v155 = v56;
  v56(v51, v33);
  v57 = objc_opt_self();
  v58 = [v57 defaultManager];
  v59 = OBJC_IVAR____TtC18FileProviderDaemon19FPFSSQLBackupEngine_destinationDirectoryURL;
  sub_1CF9E5A18();
  v60 = sub_1CF9E6888();

  v61 = [v58 fileExistsAtPath_];

  if (v61)
  {
    v62 = [v57 defaultManager];
    v63 = sub_1CF9E5928();
    v163[0] = 0;
    v64 = [v62 removeItemAtURL:v63 error:v163];

    if (!v64)
    {
      v99 = v163[0];
      v78 = sub_1CF9E57F8();

      swift_willThrow();
      v100 = sub_1CF9E5A18();
      v102 = v101;
      v103 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v104 = v78;
      v105 = sub_1CF9E6108();
      v106 = sub_1CF9E72A8();

      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v163[0] = v109;
        *v107 = 136315394;
        v110 = sub_1CEFD0DF0(v100, v102, v163);

        *(v107 + 4) = v110;
        *(v107 + 12) = 2112;
        swift_getErrorValue();
        v111 = Error.prettyDescription.getter(v161);
        *(v107 + 14) = v111;
        *v108 = v111;
        _os_log_impl(&dword_1CEFC7000, v105, v106, "Unable to delete existing destination directory at %s: %@", v107, 0x16u);
        sub_1CEFCCC44(v108, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v108, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v109);
        MEMORY[0x1D386CDC0](v109, -1, -1);
        MEMORY[0x1D386CDC0](v107, -1, -1);
      }

      else
      {
      }

      v155(v48, v156);
      v98 = v151;
      v95 = v159;
      v96 = v160;
      v94 = v152;
      (*(v160 + 56))(v152, 1, 1, v159);
      v97 = v94;
      goto LABEL_15;
    }

    v65 = v163[0];
  }

  v66 = [v57 defaultManager];
  v67 = sub_1CF9E5928();
  v163[0] = 0;
  v68 = [v66 createDirectoryAtURL:v67 withIntermediateDirectories:0 attributes:0 error:v163];

  v69 = v163[0];
  if (v68)
  {
    v70 = v159;
    v71 = v160;
    v72 = *(v160 + 16);
    v72(v32, &a1[OBJC_IVAR____TtC18FileProviderDaemon19FPFSSQLBackupEngine_backupManifestURL], v159);
    v73 = type metadata accessor for SQLBackupManifest();
    v74 = *(v73 + 48);
    v75 = *(v73 + 52);
    swift_allocObject();
    v76 = v69;
    v112 = sub_1CF1BA200(v32);
    v113 = a1;
    v114 = OBJC_IVAR____TtC18FileProviderDaemon19FPFSSQLBackupEngine_userURL;

    sub_1CF33DF24(&v113[v114], v112);
    v154 = v112;

    sub_1CF1BC728();
    sub_1CF33988C(&v113[v59]);
    v122 = fpfs_current_or_default_log();
    v123 = v141;
    sub_1CF9E6128();
    v124 = v113;
    v153 = v113;
    v125 = v124;
    v126 = sub_1CF9E6108();
    v127 = sub_1CF9E72C8();

    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v163[0] = v152;
      *v128 = 136315138;
      v129 = sub_1CF9E5928();
      v130 = [v129 fp_shortDescription];

      v131 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v133 = v132;

      v71 = v160;
      v134 = sub_1CEFD0DF0(v131, v133, v163);

      *(v128 + 4) = v134;
      _os_log_impl(&dword_1CEFC7000, v126, v127, "Calling completion handler with %s", v128, 0xCu);
      v135 = v152;
      __swift_destroy_boxed_opaque_existential_1(v152);
      MEMORY[0x1D386CDC0](v135, -1, -1);
      MEMORY[0x1D386CDC0](v128, -1, -1);

      v136 = v141;
    }

    else
    {

      v136 = v123;
    }

    v155(v136, v156);
    v119 = v140;
    v72(v140, &v153[v59], v70);
    (*(v71 + 56))(v119, 0, 1, v70);
    v137 = v139;
    sub_1CF33F8C8(v119, v139);
    if ((*(v71 + 48))(v137, 1, v70) == 1)
    {
      v138 = 0;
    }

    else
    {
      v138 = sub_1CF9E5928();
      (*(v71 + 8))(v137, v70);
    }

    (*(v158 + 16))(v158, v138, 0);

    goto LABEL_19;
  }

  v77 = v163[0];
  v78 = sub_1CF9E57F8();

  swift_willThrow();
  v79 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v80 = a1;
  v81 = v78;
  v82 = sub_1CF9E6108();
  v83 = sub_1CF9E72A8();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v152 = swift_slowAlloc();
    v163[0] = v152;
    *v84 = 136315394;
    v86 = sub_1CF9E5928();
    v87 = [v86 fp_shortDescription];

    v88 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v90 = v89;

    v91 = sub_1CEFD0DF0(v88, v90, v163);

    *(v84 + 4) = v91;
    *(v84 + 12) = 2112;
    swift_getErrorValue();
    v92 = Error.prettyDescription.getter(v162);
    *(v84 + 14) = v92;
    *v85 = v92;
    _os_log_impl(&dword_1CEFC7000, v82, v83, "Unable to create destination directory %s: %@", v84, 0x16u);
    sub_1CEFCCC44(v85, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v85, -1, -1);
    v93 = v152;
    __swift_destroy_boxed_opaque_existential_1(v152);
    MEMORY[0x1D386CDC0](v93, -1, -1);
    MEMORY[0x1D386CDC0](v84, -1, -1);
  }

  v155(v45, v156);
  v94 = v154;
  v95 = v159;
  v96 = v160;
  (*(v160 + 56))(v154, 1, 1, v159);
  v97 = v94;
  v98 = v153;
LABEL_15:
  sub_1CF33F8C8(v97, v98);
  v115 = (*(v96 + 48))(v98, 1, v95);
  v116 = v78;
  if (v115 == 1)
  {
    v117 = 0;
  }

  else
  {
    v117 = sub_1CF9E5928();
    (*(v96 + 8))(v98, v95);
  }

  v118 = sub_1CF9E57E8();
  (*(v158 + 16))(v158, v117, v118);

  v119 = v94;
LABEL_19:
  result = sub_1CEFCCC44(v119, &unk_1EC4BE310, qword_1CF9FCBE0);
  v121 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF33F8C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF33F938(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CF33FA30()
{
  v1 = v0 + OBJC_IVAR____TtC18FileProviderDaemon26FPCKOnDemandUpdateReceiver_report;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC18FileProviderDaemon26FPCKOnDemandUpdateReceiver_report));
  v2 = *(v1 + 8);
  v3 = sub_1CF4DFA80();
  os_unfair_lock_unlock(v1);
  return v3;
}

id FPCKOnDemandUpdateReceiver.__allocating_init(withDomainBackend:persistUpdates:)(uint64_t a1, char a2)
{
  v4 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v4[OBJC_IVAR____TtC18FileProviderDaemon26FPCKOnDemandUpdateReceiver_persistUpdates] = a2;
  v5 = [objc_allocWithZone(type metadata accessor for FPCKReport()) init];
  v6 = &v4[OBJC_IVAR____TtC18FileProviderDaemon26FPCKOnDemandUpdateReceiver_report];
  *v6 = 0;
  *(v6 + 1) = v5;
  v9.receiver = v4;
  v9.super_class = v2;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  swift_unknownObjectRelease();
  return v7;
}

id FPCKOnDemandUpdateReceiver.init(withDomainBackend:persistUpdates:)(uint64_t a1, char a2)
{
  v2 = sub_1CF3402F4(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

void sub_1CF33FBC0(void *a1)
{
  v2 = v1;
  v4 = sub_1CF9E6118();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v10 = a1;
  v11 = sub_1CF9E6108();
  v12 = sub_1CF9E7288();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&dword_1CEFC7000, v11, v12, "🧹 Update receiver received a telemetry update: %@", v13, 0xCu);
    sub_1CF19CAB0(v14);
    MEMORY[0x1D386CDC0](v14, -1, -1);
    MEMORY[0x1D386CDC0](v13, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v16 = v2 + OBJC_IVAR____TtC18FileProviderDaemon26FPCKOnDemandUpdateReceiver_report;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC18FileProviderDaemon26FPCKOnDemandUpdateReceiver_report));
  v17 = *(v16 + 8);
  sub_1CF4DF514(v10);
  os_unfair_lock_unlock(v16);
  if (*(v2 + OBJC_IVAR____TtC18FileProviderDaemon26FPCKOnDemandUpdateReceiver_persistUpdates) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong registerFPCKProgress_];
      swift_unknownObjectRelease();
    }
  }
}

void sub_1CF33FEB8()
{
  v0 = sub_1CF9E6118();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ([Strong respondsToSelector_])
    {
      swift_unknownObjectRetain();
      v13 = sub_1CF9E5B48();
      [v6 sendDiagnosticsFromFPCKForItemIDs_];
      swift_unknownObjectRelease_n();
      v7 = v13;
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v8 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v9 = sub_1CF9E6108();
    v10 = sub_1CF9E72A8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1CEFC7000, v9, v10, "🧹 No backend for sendDiagnostics(ForItemIDs:)", v11, 2u);
      MEMORY[0x1D386CDC0](v11, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
  }
}

id FPCKOnDemandUpdateReceiver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FPCKOnDemandUpdateReceiver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FPCKOnDemandUpdateReceiver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1CF3402F4(uint64_t a1, char a2)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v2[OBJC_IVAR____TtC18FileProviderDaemon26FPCKOnDemandUpdateReceiver_persistUpdates] = a2;
  v4 = [objc_allocWithZone(type metadata accessor for FPCKReport()) init];
  v5 = &v2[OBJC_IVAR____TtC18FileProviderDaemon26FPCKOnDemandUpdateReceiver_report];
  *v5 = 0;
  *(v5 + 1) = v4;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for FPCKOnDemandUpdateReceiver();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_1CF340394()
{
  v0 = sub_1CF9E6118();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v6 = sub_1CF9E6108();
  v7 = sub_1CF9E7298();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1CEFC7000, v6, v7, "🧹 reingestItemIDs not supported for onDemand", v8, 2u);
    MEMORY[0x1D386CDC0](v8, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1CF3406A4()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1CF340700(uint64_t result, __int16 a2)
{
  if ((a2 & 0x200) != 0)
  {
    v2 = result;
    result = swift_weakLoadStrong();
    if (result)
    {
      v3 = *(result + 16);
      sub_1CF2B9F74(v3);

      if (v3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F70, &unk_1CF9FE710);
        v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED40, &unk_1CFA00720) - 8);
        v5 = *(v4 + 72);
        v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_1CF9FA450;
        *(v7 + v6) = v2;
        swift_storeEnumTagMultiPayload();
        v3(v7, MEMORY[0x1E69E7CC0], 0, 0);
        sub_1CF045404(v3);
      }
    }
  }

  return result;
}

uint64_t sub_1CF3408A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, char *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v42 - v13;
  v15 = sub_1CF9E5D98();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v22 = MEMORY[0x1EEE9AC00](v20).n128_u64[0];
  v24 = v42 - v23;
  if (a3 <= 3u)
  {
    if (a3 <= 1u)
    {
      if (a3)
      {
        *a4 = [a1 unsignedLongAtIndex_];
        type metadata accessor for SyncState();
        return swift_storeEnumTagMultiPayload();
      }

      v25 = v21;
      v26 = [a1 stringAtIndex_];
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

      sub_1CF9E5D08();

      if ((*(v16 + 48))(v14, 1, v25) != 1)
      {
        v36 = *(v16 + 32);
        v36(v24, v14, v25);
        v36(a4, v24, v25);
        type metadata accessor for SyncState();
        return swift_storeEnumTagMultiPayload();
      }

      v11 = v14;
LABEL_27:
      sub_1CF0156A8(v11);
      sub_1CF24CD3C();
      swift_allocError();
      *v38 = 0u;
      *(v38 + 16) = 0u;
      *(v38 + 32) = 0u;
      *(v38 + 48) = 9;
      return swift_willThrow();
    }

    if (a3 != 2)
    {
      v33 = [a1 isNullAtIndex_];
      if (v33)
      {
        v34 = 0;
      }

      else
      {
        v34 = [a1 unsignedLongLongAtIndex_];
      }

      *a4 = v34;
      a4[8] = v33;
      type metadata accessor for SyncState();
      return swift_storeEnumTagMultiPayload();
    }

    v27 = v21;
    if ([a1 isNullAtIndex_])
    {
      (*(v16 + 56))(a4, 1, 1, v27);
    }

    else
    {
      v37 = [a1 stringAtIndex_];
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

      sub_1CF9E5D08();

      if ((*(v16 + 48))(v11, 1, v27) == 1)
      {
        goto LABEL_27;
      }

      v41 = *(v16 + 32);
      v41(v19, v11, v27);
      v41(a4, v19, v27);
      (*(v16 + 56))(a4, 0, 1, v27);
    }

LABEL_37:
    type metadata accessor for SyncState();
    return swift_storeEnumTagMultiPayload();
  }

  if (a3 <= 5u)
  {
    v28 = v42[1];
    if (a3 == 4)
    {
      if ([a1 isNullAtIndex_])
      {
        if (qword_1EDEA5AD8 != -1)
        {
          swift_once();
        }

        v29 = qword_1EDEBB820;
        v30 = *algn_1EDEBB828;
        v31 = *algn_1EDEBB828;
        v32 = v29;
      }

      else
      {
        result = sub_1CF1E05D8(a2);
        if (v28)
        {
          return result;
        }

        v29 = result;
        v30 = v40;
      }

      *a4 = v29;
      *(a4 + 1) = v30;
      type metadata accessor for SyncState();
    }

    else
    {
      if ([a1 isNullAtIndex_])
      {
        v35 = 0;
      }

      else
      {
        v35 = [a1 integerAtIndex_];
        if (v35)
        {
          v35 = [objc_opt_self() domainVersionWithVersion_];
        }
      }

      *a4 = v35;
      type metadata accessor for SyncState();
    }
  }

  else
  {
    if (a3 != 6)
    {
      if (a3 == 7)
      {
        *a4 = [a1 integerAtIndex_] == 1;
      }

      else
      {
        *a4 = [a1 integerAtIndex_];
      }

      goto LABEL_37;
    }

    *a4 = [a1 integerAtIndex_];
    type metadata accessor for SyncState();
  }

  return swift_storeEnumTagMultiPayload();
}

void sub_1CF340EAC(unsigned __int8 a1@<W0>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v9[16] = a1;
  v6 = (*(a2 + 24))(sub_1CF342B70, v9);
  if (!v3)
  {
    v7 = v6;
    if ([v6 next])
    {
      sub_1CF3408A8(v7, 0, a1, a3);
    }

    else
    {
      sub_1CF24CD3C();
      swift_allocError();
      *v8 = 0u;
      *(v8 + 16) = 0u;
      *(v8 + 32) = 0u;
      *(v8 + 48) = 9;
      swift_willThrow();
    }
  }
}

uint64_t sub_1CF340F94(uint64_t a1, unsigned __int8 a2)
{
  sub_1CF9E7948();

  v3 = 0xE700000000000000;
  if (a2 <= 3u)
  {
    v11 = 0x646975755F6264;
    v12 = 0xEE00646975755F6DLL;
    v13 = 0x61657274735F7366;
    if (a2 != 2)
    {
      v13 = 0xD000000000000012;
      v12 = 0x80000001CFA40D50;
    }

    if (a2)
    {
      v11 = 0xD000000000000012;
      v3 = 0x80000001CFA40D70;
    }

    if (a2 <= 1u)
    {
      v9 = v11;
    }

    else
    {
      v9 = v13;
    }

    if (a2 <= 1u)
    {
      v10 = v3;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v4 = 0xED00007367616C66;
    v5 = 0x5F65727574616566;
    v6 = 0x80000001CFA40D10;
    if (a2 != 7)
    {
      v6 = 0x80000001CFA40CF0;
    }

    if (a2 != 6)
    {
      v5 = 0xD000000000000010;
      v4 = v6;
    }

    v7 = 0x80000001CFA40D30;
    v8 = 0xD000000000000014;
    if (a2 != 4)
    {
      v8 = 0x765F6E69616D6F64;
      v7 = 0xEE006E6F69737265;
    }

    if (a2 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (a2 <= 5u)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  MEMORY[0x1D3868CC0](v9, v10);

  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA40D90);
  return 0x205443454C4553;
}

void sub_1CF341164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = a3;
  v7 = sub_1CF9E6118();
  v68 = *(v7 - 8);
  v69 = v7;
  v8 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v59 - v12;
  v14 = type metadata accessor for SyncState();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v59 - v19);
  sub_1CF04ED74(a1, &v59 - v19);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_1CF04EDD8(v20);
    v36 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CF04ED74(a1, v17);
    v37 = sub_1CF9E6108();
    v38 = sub_1CF9E7298();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v66 = a1;
      v40 = v39;
      v41 = swift_slowAlloc();
      v65 = a2;
      v42 = v41;
      v70 = v41;
      *v40 = 136315138;
      v43 = sub_1CF04CC80();
      v44 = a4;
      v46 = v45;
      sub_1CF04EDD8(v17);
      v47 = sub_1CEFD0DF0(v43, v46, &v70);
      a4 = v44;

      *(v40 + 4) = v47;
      _os_log_impl(&dword_1CEFC7000, v37, v38, "🔑  updating %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x1D386CDC0](v42, -1, -1);
      a1 = v66;
      MEMORY[0x1D386CDC0](v40, -1, -1);
    }

    else
    {

      sub_1CF04EDD8(v17);
    }

    v48 = (*(v68 + 8))(v10, v69);
    goto LABEL_21;
  }

  v66 = a1;
  v21 = *v20;
  if (!swift_weakLoadStrong())
  {
    __break(1u);
    goto LABEL_24;
  }

  v22 = sub_1CF04F1A0();

  v23 = sub_1CF04217C(v21, v22);

  if ((v23 & 1) == 0)
  {

    return;
  }

  v24 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v25 = v21;

  v26 = sub_1CF9E6108();
  v27 = sub_1CF9E7298();
  if (os_log_type_enabled(v26, v27))
  {
    v62 = v27;
    v65 = a2;
    v28 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v70 = v61;
    v64 = v28;
    *v28 = 136315394;
    Strong = swift_weakLoadStrong();

    v63 = v25;

    if (!Strong)
    {
LABEL_25:
      __break(1u);
      return;
    }

    v60 = v26;
    v30 = sub_1CF04F1A0();

    if (v30)
    {
      v31 = 0x3E6C696E3CLL;
      v32 = [v30 description];

      v33 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v35 = v34;
    }

    else
    {
      v35 = 0xE500000000000000;
      v31 = 0x3E6C696E3CLL;
      v33 = 0x3E6C696E3CLL;
    }

    v49 = sub_1CEFD0DF0(v33, v35, &v70);

    v50 = v64;
    *(v64 + 1) = v49;
    *(v50 + 6) = 2080;
    if (v21)
    {
      v25 = v63;
      v51 = [v63 description];
      v31 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v53 = v52;
    }

    else
    {
      v53 = 0xE500000000000000;
      v25 = v63;
    }

    v54 = sub_1CEFD0DF0(v31, v53, &v70);

    v55 = v64;
    *(v64 + 14) = v54;
    v56 = v60;
    _os_log_impl(&dword_1CEFC7000, v60, v62, "🌍  domain version updated %s -> %s", v55, 0x16u);
    v57 = v61;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v57, -1, -1);
    MEMORY[0x1D386CDC0](v55, -1, -1);
  }

  else
  {
  }

  (*(v68 + 8))(v13, v69);
  if (!swift_weakLoadStrong())
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_1CF5DC770(v21);

  a1 = v66;
LABEL_21:
  v58 = MEMORY[0x1EEE9AC00](v48);
  *(&v59 - 2) = a1;
  (*(a4 + 32))(sub_1CF342B14, v58);
}

unint64_t sub_1CF341748(void *a1)
{
  sub_1CF9E7948();

  v2 = sub_1CF04DC74();
  if (v2 <= 3)
  {
    v10 = 0xE700000000000000;
    v11 = 0x646975755F6264;
    v12 = 0xEE00646975755F6DLL;
    v13 = 0x61657274735F7366;
    if (v2 != 2)
    {
      v13 = 0xD000000000000012;
      v12 = 0x80000001CFA40D50;
    }

    if (v2)
    {
      v11 = 0xD000000000000012;
      v10 = 0x80000001CFA40D70;
    }

    if (v2 <= 1)
    {
      v8 = v11;
    }

    else
    {
      v8 = v13;
    }

    if (v2 <= 1)
    {
      v9 = v10;
    }

    else
    {
      v9 = v12;
    }
  }

  else
  {
    v3 = 0xED00007367616C66;
    v4 = 0x5F65727574616566;
    v5 = 0x80000001CFA40D10;
    if (v2 != 7)
    {
      v5 = 0x80000001CFA40CF0;
    }

    if (v2 != 6)
    {
      v4 = 0xD000000000000010;
      v3 = v5;
    }

    v6 = 0x80000001CFA40D30;
    v7 = 0xD000000000000014;
    if (v2 != 4)
    {
      v7 = 0x765F6E69616D6F64;
      v6 = 0xEE006E6F69737265;
    }

    if (v2 <= 5)
    {
      v8 = v7;
    }

    else
    {
      v8 = v4;
    }

    if (v2 <= 5)
    {
      v9 = v6;
    }

    else
    {
      v9 = v3;
    }
  }

  MEMORY[0x1D3868CC0](v8, v9);

  MEMORY[0x1D3868CC0](2112800, 0xE300000000000000);
  v14 = sub_1CF04DD90(a1);
  MEMORY[0x1D3868CC0](v14);

  return 0xD000000000000018;
}

uint64_t sub_1CF3419C0(void *a1, void *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000098, 0x80000001CFA408E0);
  v4 = [a2 UUIDString];
  if (!v4)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v4 = sub_1CF9E6888();
  }

  v5 = [a1 bindStringParameter_];

  v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v8 = v7;

  MEMORY[0x1D3868CC0](v6, v8);

  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA40980);
  return v10;
}

void sub_1CF341B50(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v75 - v9;
  v11 = sub_1CF9E5D98();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v75 - v18;
  v20 = (*(a4 + 24))(sub_1CF342774, 0, a3, a4, v17);
  v80 = v10;
  v81 = v12;
  v78 = v15;
  v82 = v19;
  v83 = v20;
  if ([v20 next])
  {
    v21 = (*(a4 + 72))(a3, a4);
    [v21 unsignedIntValue];

    v22 = [v83 unsignedLongAtIndex_];
    if ([v83 isNullAtIndex_])
    {
      goto LABEL_27;
    }

    v79 = a2;
    if (!swift_dynamicCastMetatype())
    {
      v23 = sub_1CF9E5688();
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      swift_allocObject();
      sub_1CF9E5678();
      v26 = [v83 dataAtIndex_];
      v27 = sub_1CF9E5B88();
      v29 = v28;

      sub_1CF342AD0(&qword_1EDEAECB8);
      sub_1CF9E5668();
      sub_1CEFE4714(v27, v29);

      v31 = v79[4];
      v76 = v79[3];
      v77 = v31;
      v75 = __swift_project_boxed_opaque_existential_1(v79, v76);
      v87[0] = 0;
      v87[1] = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA40BB0);
      v32 = sub_1CF3B0B48();
      MEMORY[0x1D3868CC0](v32);

      MEMORY[0x1D3868CC0](46, 0xE100000000000000);
      v85 = 114;
      v86 = 0xE100000000000000;
      v84 = v22;
      v33 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v33);

      MEMORY[0x1D3868CC0](v85, v86);

      MEMORY[0x1D3868CC0](0x3D4449555520, 0xE600000000000000);
      v34 = sub_1CF342AD0(&qword_1EDEAECB0);
      v35 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v35);

      sub_1CF4FB2BC(v87[0], v87[1], v76, v77);

      v36 = v11;
      if ([v83 isNullAtIndex_])
      {
        v37 = v80;
        v38 = v81;
        (*(v81 + 56))(v80, 1, 1, v11);
        sub_1CF0156A8(v37);
LABEL_13:
        if (([v83 isNullAtIndex_] & 1) == 0)
        {
          v51 = sub_1CF1E05D8(4);
          v53 = v52;
          v54 = v79[3];
          v55 = v79[4];
          __swift_project_boxed_opaque_existential_1(v79, v54);
          strcpy(v87, "+ FP anchor: ");
          HIWORD(v87[1]) = -4864;
          v56 = sub_1CF04D35C(v51, v53);
          MEMORY[0x1D3868CC0](v56);

          sub_1CF4FB2BC(v87[0], v87[1], v54, v55);

          v38 = v81;
        }

        v57 = v79;
        v58 = v79[3];
        v59 = v79[4];
        __swift_project_boxed_opaque_existential_1(v79, v58);
        v87[0] = 0;
        v87[1] = 0xE000000000000000;
        sub_1CF9E7948();

        v87[0] = 0xD000000000000012;
        v87[1] = 0x80000001CFA40C10;
        v85 = [v83 unsignedLongAtIndex_];
        v60 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v60);

        sub_1CF4FB2BC(v87[0], v87[1], v58, v59);

        v61 = v57[3];
        v62 = v57[4];
        __swift_project_boxed_opaque_existential_1(v57, v61);
        v87[0] = 0;
        v87[1] = 0xE000000000000000;
        sub_1CF9E7948();

        v87[0] = 0xD000000000000011;
        v87[1] = 0x80000001CFA40C30;
        v63 = sub_1CF7F48D8([v83 integerAtIndex_]);
        MEMORY[0x1D3868CC0](v63);

        sub_1CF4FB2BC(v87[0], v87[1], v61, v62);

        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v65 = *(Strong + 88);

          v66 = v57[3];
          v67 = v57[4];
          __swift_project_boxed_opaque_existential_1(v57, v66);
          if (v65)
          {
            v87[0] = 0;
            v87[1] = 0xE000000000000000;
            sub_1CF9E7948();

            v87[0] = 0xD000000000000014;
            v87[1] = 0x80000001CFA40C90;
            v68 = [v83 integerAtIndex_];
            v69 = v68 == 1;
            if (v68 == 1)
            {
              v70 = 0xD000000000000019;
            }

            else
            {
              v70 = 0x676E696E6E7572;
            }

            if (v69)
            {
              v71 = 0x80000001CFA40CB0;
            }

            else
            {
              v71 = 0xE700000000000000;
            }

            MEMORY[0x1D3868CC0](v70, v71);

            sub_1CF4FB2BC(v87[0], v87[1], v66, v67);
          }

          else
          {
            sub_1CF4FB2BC(0xD00000000000001ALL, 0x80000001CFA40C50, v66, v67);
          }

          v72 = v79[3];
          v73 = v79[4];
          __swift_project_boxed_opaque_existential_1(v79, v72);
          v87[0] = 0;
          v87[1] = 0xE000000000000000;
          sub_1CF9E7948();

          v87[0] = 0xD000000000000014;
          v87[1] = 0x80000001CFA40C70;
          v85 = [v83 unsignedLongAtIndex_];
          v74 = sub_1CF9E7F98();
          MEMORY[0x1D3868CC0](v74);

          sub_1CF4FB2BC(v87[0], v87[1], v72, v73);

          (*(v38 + 8))(v82, v36);
          return;
        }

        __break(1u);
LABEL_27:
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
      }

      if ([v83 isNullAtIndex_])
      {
        goto LABEL_27;
      }

      v77 = v34;
      if (!swift_dynamicCastMetatype())
      {
        v39 = *(v23 + 48);
        v40 = *(v23 + 52);
        swift_allocObject();
        sub_1CF9E5678();
        v41 = [v83 dataAtIndex_];
        v42 = sub_1CF9E5B88();
        v44 = v43;

        v45 = v80;
        sub_1CF9E5668();
        sub_1CEFE4714(v42, v44);

        v38 = v81;
        (*(v81 + 56))(v45, 0, 1, v11);
        v46 = v78;
        (*(v38 + 32))(v78, v45, v36);
        v47 = v79[3];
        v48 = v79[4];
        __swift_project_boxed_opaque_existential_1(v79, v47);
        v87[0] = 0;
        v87[1] = 0xE000000000000000;
        sub_1CF9E7948();

        v87[0] = 0xD000000000000010;
        v87[1] = 0x80000001CFA40BD0;
        v49 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v49);

        MEMORY[0x1D3868CC0](0x496D616572745320, 0xEA00000000003D44);
        v85 = [v83 unsignedLongAtIndex_];
        v50 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v50);

        sub_1CF4FB2BC(v87[0], v87[1], v47, v48);

        (*(v38 + 8))(v46, v36);
        goto LABEL_13;
      }
    }

    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
  }

  v30 = v83;
}

void sub_1CF34286C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
  v11 = *(a7 + 32);
  v12 = (v11)(sub_1CF3419A4, 0, a4, a7);
  if (!v7)
  {
    v13 = MEMORY[0x1EEE9AC00](v12);
    v11(sub_1CF342AC8, v13);
  }
}

uint64_t sub_1CF342AD0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1CF9E5D98();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CF342B78()
{
  v1 = 0x208FB8EFB696E2;
  if (*v0 != 1)
  {
    v1 = 0x20919B9FF0;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 548638690;
  }
}

unint64_t sub_1CF342BC8(uint64_t a1)
{
  if (a1 <= 15)
  {
    v7 = 0x20746E65746E6F63;
    v8 = 0x7220746365726964;
    if (a1 != 8)
    {
      v8 = 0;
    }

    if (a1 != 4)
    {
      v7 = v8;
    }

    v9 = 0x676E696E6E6970;
    v10 = 0x74616C7563657073;
    if (a1 != 2)
    {
      v10 = 0;
    }

    if (a1 != 1)
    {
      v9 = v10;
    }

    if (a1 <= 3)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x74616C7563657073;
    v2 = 0xD00000000000001ALL;
    v3 = 0xD000000000000013;
    if (a1 != 256)
    {
      v3 = 0;
    }

    if (a1 != 128)
    {
      v2 = v3;
    }

    if (a1 != 64)
    {
      v1 = v2;
    }

    v4 = 0xD00000000000001ALL;
    v5 = 0xD000000000000027;
    if (a1 != 32)
    {
      v5 = 0;
    }

    if (a1 != 16)
    {
      v4 = v5;
    }

    if (a1 <= 63)
    {
      return v4;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1CF342D64(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v26 - v6;
  v8 = sub_1CF9E5CF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEFCCBDC(v2, v7, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1CEFCCC44(v7, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v13 = a1[3];
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v13);
    sub_1CF4FB2BC(0xD000000000000016, 0x80000001CFA42140, v13, v14);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v15 = a1[3];
    v16 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v15);
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_1CF9E7948();

    v27 = 0xD000000000000013;
    v28 = 0x80000001CFA421A0;
    sub_1CF355F5C(&unk_1EDEAECD0, MEMORY[0x1E6969530]);
    v17 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v17);

    sub_1CF4FB2BC(v27, v28, v15, v16);

    (*(v9 + 8))(v12, v8);
  }

  v18 = v2 + *(type metadata accessor for FPDownloadSchedulerFastPassState() + 20);
  if (*(v18 + 8))
  {
    v19 = a1[3];
    v20 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v19);
    return sub_1CF4FB2BC(0xD000000000000018, 0x80000001CFA42160, v19, v20);
  }

  else
  {
    v22 = *v18;
    v23 = a1[3];
    v24 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v23);
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_1CF9E7948();

    v27 = 0xD000000000000017;
    v28 = 0x80000001CFA42180;
    v26[1] = v22;
    v25 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v25);

    sub_1CF4FB2BC(v27, v28, v23, v24);
  }
}

uint64_t sub_1CF343100(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7D8, &qword_1CFA031C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF355E48();
  sub_1CF9E82A8();
  v15[15] = 0;
  sub_1CF9E5CF8();
  sub_1CF355F5C(&qword_1EDEAB3D0, MEMORY[0x1E6969530]);
  sub_1CF9E7E68();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for FPDownloadSchedulerFastPassState() + 20));
    v12 = *v11;
    v13 = *(v11 + 8);
    v15[14] = 1;
    sub_1CF9E7E58();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1CF3432C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v25 = &v23 - v6;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF7C0, &qword_1CFA031B8);
  v24 = *(v26 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v9 = &v23 - v8;
  v10 = type metadata accessor for FPDownloadSchedulerFastPassState();
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E5CF8();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = &v14[*(v11 + 28)];
  *v16 = 0;
  v16[8] = 1;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF355E48();
  sub_1CF9E8298();
  if (!v2)
  {
    v18 = v24;
    v28 = 0;
    sub_1CF355F5C(&unk_1EDEAB3A0, MEMORY[0x1E6969530]);
    sub_1CF9E7CF8();
    sub_1CEFE4804(v25, v14);
    v27 = 1;
    v20 = sub_1CF9E7CD8();
    v22 = v21;
    (*(v18 + 8))(v9, v26);
    *v16 = v20;
    v16[8] = v22 & 1;
    sub_1CF355EF8(v14, v23);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1CF355E9C(v14);
}

unint64_t sub_1CF3435D4()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 0x747361467473616CLL;
  }

  *v0;
  return result;
}

uint64_t sub_1CF343620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x747361467473616CLL && a2 == 0xEF6E755273736150;
  if (v6 || (sub_1CF9E8048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001CFA43110 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1CF9E8048();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1CF34370C(uint64_t a1)
{
  v2 = sub_1CF355E48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF343748(uint64_t a1)
{
  v2 = sub_1CF355E48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF3437B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CF9E5CF8();
  result = (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 8) = 1;
  return result;
}

id sub_1CF343834()
{
  result = sub_1CF343854();
  qword_1EDEBBC10 = result;
  return result;
}

id sub_1CF343854()
{
  v0 = objc_allocWithZone(MEMORY[0x1E698E478]);
  v1 = sub_1CF9E6888();
  v2 = [v0 initWithIdentifier_];

  [v2 setScheduleAfter_];
  v3 = v2;
  [v3 setPriority_];
  [v3 setRequiresExternalPower_];
  [v3 setRequiresInexpensiveNetworkConnectivity_];
  v4 = objc_allocWithZone(MEMORY[0x1E698E468]);
  v5 = sub_1CF9E6888();
  v6 = [v4 initWithIdentifier_];

  v7 = v6;
  [v7 setRequiresInexpensiveNetworkConnectivity_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1CFA00250;
  *(v8 + 32) = sub_1CF9E7088();
  sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  v9 = sub_1CF9E6D28();

  [v7 setFeatureCodes_];

  v10 = sub_1CF9E6D28();
  [v7 setProcessingTaskIdentifiers_];

  v11 = [objc_allocWithZone(FPDSharedSystemSchedulerWithFastPass) initWithTaskRequest:v3 fastPassTaskRequest:v7 options:1];
  return v11;
}

id sub_1CF343A70(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v3 = sub_1CF9E6888();

  return v3;
}

uint64_t sub_1CF343B0C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 104);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CF9E6298();

  return v6;
}

uint64_t sub_1CF343C10()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 104);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1CF9E62A8();
}

uint64_t sub_1CF343D10(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEC40, &qword_1CFA03260);
  sub_1CF9E6278();
  return swift_endAccess();
}

id sub_1CF343D80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v13 - v4;
  v6 = qword_1EDEBBB00;
  swift_beginAccess();
  sub_1CEFCCBDC(a1 + v6, v5, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v7 = sub_1CF9E5CF8();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_1CF9E5C48();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

uint64_t sub_1CF343ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - v7;
  if (a3)
  {
    sub_1CF9E5CB8();
    v9 = sub_1CF9E5CF8();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_1CF9E5CF8();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = qword_1EDEBBB00;
  swift_beginAccess();

  sub_1CEFE4804(v8, a1 + v11);
  swift_endAccess();
}

uint64_t sub_1CF344058(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3[2];
  if (v6)
  {
    v7 = v3;
    v10 = result;
    v11 = *v3;
    v12 = v3[3];

    v14 = v6(v13);
    result = sub_1CEFF7124(v6);
    if (v14)
    {
      v27 = a3;
      v15 = *(*(*(v14 + 40) + 16) + 144);
      v16 = qword_1EDEBBAD0;
      v17 = *(v7 + qword_1EDEBBAD0);
      *(v7 + qword_1EDEBBAD0) = v15;
      swift_retain_n();

      if (!v15 || (v18 = sub_1CF1C1F58(), , *(v7 + qword_1EDEBBB08) = v18 & 1, !*(v7 + qword_1EDEBBB18)) || (v19 = *(v7 + qword_1EDEBBB18), , sub_1CF35CCBC(v18 & 1, v10, a2, v27), , !v5))
      {
        v20 = *(v7 + v16);
        if (v20)
        {
          v21 = swift_allocObject();
          swift_weakInit();
          v22 = swift_allocObject();
          swift_weakInit();

          v23 = swift_allocObject();
          *(v23 + 2) = v11[10];
          *(v23 + 3) = v11[11];
          *(v23 + 4) = a2;
          *(v23 + 5) = v11[12];
          *(v23 + 6) = v11[13];
          *(v23 + 7) = v27;
          *(v23 + 8) = v21;
          *(v23 + 9) = v22;
          v24 = (v20 + qword_1EDEBB6D0);
          v25 = *(v20 + qword_1EDEBB6D0);
          v26 = *(v20 + qword_1EDEBB6D0 + 8);
          *v24 = sub_1CF35648C;
          v24[1] = v23;

          sub_1CEFF7124(v25);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1CF34429C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v13 = a1 & 1;
      *(v12 + qword_1EDEBBB08) = a1 & 1;
      v14 = swift_allocObject();
      *(v14 + 16) = a6;
      *(v14 + 24) = a9;
      *(v14 + 32) = v12;
      *(v14 + 40) = v13;

      sub_1CF92DE44("speculativeDiskManagementActivation(with:)", 42, 2u, sub_1CF045408, 0, nullsub_1, 0, sub_1CF3564C0, v14);
    }
  }

  return result;
}

void *sub_1CF3443E4(void *a1, uint64_t a2, char a3)
{
  v5 = a1[3];
  v6 = a1[4];
  result = __swift_project_boxed_opaque_existential_1(a1, v5);
  if (*(a2 + qword_1EDEBBB18))
  {
    v8 = result;

    sub_1CF35CCBC(a3 & 1, v8, v5, v6);
  }

  return result;
}

uint64_t sub_1CF344470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v155 = a3;
  v151 = *v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEE30, &unk_1CFA03240);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v145 = &v127 - v10;
  v150 = sub_1CF9E7378();
  v154 = *(v150 - 8);
  v11 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v150);
  v148 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C50F0, &qword_1CFA00850);
  v152 = *(v147 - 8);
  v13 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v147);
  v146 = &v127 - v14;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF800, &unk_1CFA03250);
  v144 = *(v149 - 8);
  v15 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v149);
  v153 = &v127 - v16;
  v142 = sub_1CF9E5CF8();
  v143 = *(v142 - 8);
  v17 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v142);
  v19 = &v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v127 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v141 = &v127 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v127 - v27;
  v29 = v3[2];
  if (!v29 || (v30 = v3[3], v31 = v5[3], v32 = , v33 = v29(v32), v34 = v29, v35 = v33, sub_1CEFF7124(v34), !v35))
  {
LABEL_43:
    sub_1CF511798("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLBackgroundDownloader.swift", 142, 2, 229);
  }

  sub_1CF344058(a1, a2, v155);
  if (v4)
  {
  }

  if (*(v5 + qword_1EDEAC820))
  {
    v37 = *(v5 + qword_1EDEAC820);

    sub_1CF1A7030();
  }

  v38 = sub_1CF033B88();
  v139 = a2;
  v140 = v35;
  v137 = a1;
  v138 = 0;
  if ((v38 & 0x1000) == 0 && (sub_1CF033B88() & 0x20000) == 0 || (v39 = (v5 + qword_1EDEBBAD8), v40 = *(v5 + qword_1EDEBBAD8 + 80), v40 < 1))
  {

    goto LABEL_13;
  }

  v41 = *(v151 + 96);
  aBlock = *(v151 + 80);
  v157 = v41;
  v136 = type metadata accessor for BackgroundDownloaderPacer();
  v42 = v39[14];
  v43 = v39[11];
  v44 = v39[12];
  v135 = v39[16];
  v45 = v140;
  swift_retain_n();
  v46 = sub_1CF364798();
  v47 = sub_1CF3590E8(v45, v44, v42, v40, v43, v135, v46);
  v48 = qword_1EDEBBB18;
  v49 = *(v5 + qword_1EDEBBB18);
  *(v5 + qword_1EDEBBB18) = v47;

  v50 = v138;
  sub_1CF35A3F4(v137, v139, v155);

  if (!v50)
  {
    v107 = sub_1CF033B88();
    v108 = *(v5 + v48);
    v138 = 0;
    if ((v107 & 0x40000) != 0)
    {
      v116 = v142;
      if (v108)
      {
        v117 = v108 + *(*v108 + 136);
        swift_beginAccess();
        v118 = type metadata accessor for BackgroundDownloaderPacerState();
        sub_1CEFCCBDC(v117 + *(v118 + 36), v28, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
        if ((*(v143 + 48))(v28, 1, v116) != 1)
        {
          sub_1CEFCCC44(v28, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          goto LABEL_13;
        }
      }

      else
      {
        (*(v143 + 56))(v28, 1, 1, v142);
      }

      sub_1CEFCCC44(v28, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v119 = *(v5 + v48);
      if (v119)
      {
        v120 = *(v5 + v48);

        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v122 = v121;
        (*(v143 + 8))(v19, v116);
        v123 = v122 * 1000000000.0;
        if (COERCE__INT64(fabs(v122 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if (v123 <= -9.22337204e18)
        {
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        if (v123 >= 9.22337204e18)
        {
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v124 = v141;
        sub_1CF9E5C88();
        (*(v143 + 56))(v124, 0, 1, v116);
        v125 = &v119[*(*v119 + 136)];
        swift_beginAccess();
        v126 = type metadata accessor for BackgroundDownloaderPacerState();
        sub_1CEFE4804(v124, &v125[*(v126 + 36)]);
        swift_endAccess();
        v119[72] = 1;
      }
    }

    else
    {
      v109 = v142;
      if (v108)
      {
        v110 = v108 + *(*v108 + 136);
        swift_beginAccess();
        v111 = type metadata accessor for BackgroundDownloaderPacerState();
        sub_1CEFCCBDC(v110 + *(v111 + 36), v23, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
        if ((*(v143 + 48))(v23, 1, v109) != 1)
        {
          sub_1CEFCCC44(v23, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          v112 = *(v5 + v48);
          if (v112)
          {
            v113 = v141;
            (*(v143 + 56))(v141, 1, 1, v109);
            v114 = &v112[*(*v112 + 136)];
            swift_beginAccess();
            v115 = *(v111 + 36);

            sub_1CEFE4804(v113, &v114[v115]);
            swift_endAccess();
            v112[72] = 1;
          }

          goto LABEL_13;
        }
      }

      else
      {
        (*(v143 + 56))(v23, 1, 1, v142);
      }

      sub_1CEFCCC44(v23, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    }

LABEL_13:
    sub_1CF343AEC();
    v51 = *(v5 + qword_1EDEBBAD8 + 120);
    v52 = v148;
    sub_1CF9E7348();
    v53 = sub_1CF042F4C();
    *&aBlock = v53;
    v136 = sub_1CF9E7338();
    v54 = *(v136 - 8);
    v135 = *(v54 + 56);
    v141 = (v54 + 56);
    v55 = v145;
    v135(v145, 1, 1, v136);
    v133 = sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
    v132 = sub_1CEFCCCEC(&unk_1EDEAB6F0, &qword_1EC4C50F0, &qword_1CFA00850);
    v134 = sub_1CF356374();
    v56 = v53;
    v57 = v147;
    v58 = v146;
    sub_1CF9E62D8();
    sub_1CEFCCC44(v55, &unk_1EC4BEE30, &unk_1CFA03240);

    v131 = *(v154 + 8);
    v154 += 8;
    v131(v52, v150);
    v130 = *(v152 + 8);
    v152 += 8;
    v130(v58, v57);
    v59 = swift_allocObject();
    swift_weakInit();
    v60 = swift_allocObject();
    v61 = v151;
    v128 = *(v151 + 80);
    v60[2] = v128;
    v142 = v61[11];
    v62 = v139;
    v60[3] = v142;
    v60[4] = v62;
    v143 = v61[12];
    v60[5] = v143;
    v151 = v61[13];
    v63 = v155;
    v60[6] = v151;
    v60[7] = v63;
    v60[8] = v59;
    v129 = sub_1CEFCCCEC(&qword_1EDEA3980, &qword_1EC4BF800, &unk_1CFA03250);
    v64 = v149;
    v65 = v153;
    v66 = sub_1CF9E62F8();

    v144 = *(v144 + 8);
    (v144)(v65, v64);
    v67 = *(v5 + qword_1EDEBBAC8);
    *(v5 + qword_1EDEBBAC8) = v66;

    sub_1CF343D04();
    v68 = v148;
    sub_1CF9E7368();
    v69 = sub_1CF042F4C();

    *&aBlock = v69;
    v135(v55, 1, 1, v136);
    v70 = v147;
    v71 = v139;
    sub_1CF9E62D8();
    sub_1CEFCCC44(v55, &unk_1EC4BEE30, &unk_1CFA03240);

    v131(v68, v150);
    v72 = v155;
    v130(v58, v70);
    v73 = v128;
    v74 = swift_allocObject();
    swift_weakInit();
    v75 = swift_allocObject();
    v76 = v142;
    v75[2] = v73;
    v75[3] = v76;
    v77 = v143;
    v75[4] = v71;
    v75[5] = v77;
    v75[6] = v151;
    v75[7] = v72;
    v75[8] = v74;
    v78 = v149;
    v79 = v153;
    v80 = sub_1CF9E62F8();

    v81 = v79;
    v82 = v71;
    (v144)(v81, v78);
    v83 = v140;
    v84 = *(v5 + qword_1EDEAC7F0);
    *(v5 + qword_1EDEAC7F0) = v80;

    v85 = *(v5 + qword_1EDEBBAF8);
    if (v85)
    {
      v86 = *(*(*(v83 + 32) + 16) + 136);
      v87 = *(v86 + 16);
      v88 = *(v86 + 24);

      v89 = sub_1CF9E6888();

      v90 = swift_allocObject();
      swift_weakInit();
      v91 = swift_allocObject();
      v92 = v142;
      v91[2] = v73;
      v91[3] = v92;
      v93 = v143;
      v91[4] = v82;
      v91[5] = v93;
      v91[6] = v151;
      v91[7] = v72;
      v91[8] = v90;
      v158 = sub_1CF356428;
      v159 = v91;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v157 = sub_1CF0892D0;
      *(&v157 + 1) = &block_descriptor_38;
      v94 = _Block_copy(&aBlock);

      [v85 registerKey:v89 notificationsUpdatesHandlers:v94];
      _Block_release(v94);
    }

    v95 = *(v72 + 8);
    v96 = v137;
    v97 = v138;
    v98 = (*(v95 + 24))(sub_1CF3569A8, 0, v82, v95);
    if (v97)
    {
    }

    v99 = v98;
    [v98 next];
    v100 = [v99 longAtIndex_];
    v101 = sub_1CF5DA5A8(8u);
    v103 = *(v101 + 16);
    v102 = *(v101 + 24);
    v104 = __OFSUB__(v102, v103);
    v105 = v102 - v103;
    if (!v104)
    {
      if (v105 < v100)
      {
        *(v101 + 24) = v100;
      }

      *(v101 + 16) = v100;

      v106 = v139;
      if (v100 >= 1)
      {
        sub_1CF35230C(v96, v139, v95);
      }

      sub_1CF345EAC(v96, v106, v95);
      sub_1CF346598();
    }

    __break(1u);
    goto LABEL_40;
  }
}

uint64_t sub_1CF3454F8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);
    if (v1 && (v2 = *(result + 24), v3 = , v4 = v1(v3), v5 = sub_1CEFF7124(v1), v4))
    {
      MEMORY[0x1EEE9AC00](v5);
      sub_1CF3C87A8(sub_1CF356464);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1CF34562C(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1CF345EAC(v4, v2, *(v3 + 8));
    if (v1)
    {
    }
  }

  return result;
}

uint64_t sub_1CF3456D0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);
    if (v1 && (v2 = *(result + 24), v3 = , v4 = v1(v3), v5 = sub_1CEFF7124(v1), v4))
    {
      MEMORY[0x1EEE9AC00](v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C06D0, &qword_1CFA05AE0);
      sub_1CF3C87A8(sub_1CF35643C);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1CF345818@<X0>(void *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v3);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v7 = result;
  if (result)
  {
    sub_1CF352CBC(v5, v3, *(v4 + 8));
  }

  *a2 = v7 == 0;
  return result;
}

uint64_t sub_1CF3458B8(char a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1CF345984(a1 & 1);
  }

  return result;
}

uint64_t sub_1CF345918()
{
  v1 = qword_1EDEBBB18;
  if (*(v0 + qword_1EDEBBB18))
  {

    sub_1CF35A528();

    v2 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
}

uint64_t sub_1CF345984(char a1)
{
  v2 = v1;
  v4 = sub_1CF9E6118();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(v2 + qword_1EDEBBAF0) ^ 1) & a1;
  *(v2 + qword_1EDEBBAF0) = a1;
  v10 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v11 = sub_1CF9E6108();
  v12 = sub_1CF9E7288();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = a1 & 1;
    _os_log_impl(&dword_1CEFC7000, v11, v12, "⏰ update CacheDeleteCacheable: %{BOOL}d", v13, 8u);
    MEMORY[0x1D386CDC0](v13, -1, -1);
  }

  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v15 = *(v2 + 16);
    if (v15)
    {
      v16 = *(v2 + 24);

      v18 = v15(v17);
      result = sub_1CEFF7124(v15);
      if (v18)
      {

        sub_1CF92DE44("updateCacheDeleteCacheable(_:)", 30, 2u, sub_1CF045408, 0, nullsub_1, 0, sub_1CF356358, v2);
      }
    }
  }

  return result;
}

void sub_1CF345BB4(void *a1)
{
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF34A458(v3);
  if (v1)
  {
  }
}

uint64_t sub_1CF345C3C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  v5 = a3;

  a4(v6);
}

id sub_1CF345C98()
{
  if (*(v0 + qword_1EDEBBAE8))
  {
    if (qword_1EDEAD4D8 != -1)
    {
      swift_once();
    }

    return sub_1CF06779C(sub_1CF356350, v0);
  }

  else
  {
    *(v0 + qword_1EDEBBAE8) = 1;
    if (qword_1EDEAD4D8 != -1)
    {
      swift_once();
    }

    v2 = qword_1EDEBBC10;

    return [v2 addWatcher_];
  }
}

uint64_t sub_1CF345D84(uint64_t result)
{
  v1 = result;
  if (*(result + qword_1EDEBBB18))
  {
    v2 = *(result + qword_1EDEBBB18);

    sub_1CF3625E4(1uLL);
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = *(v1 + 24);

    v6 = v3(v5);
    result = sub_1CEFF7124(v3);
    if (v6)
    {
      sub_1CF058CE4();
    }
  }

  return result;
}

id sub_1CF345E30()
{
  v1 = qword_1EDEBBAE8;
  if (*(v0 + qword_1EDEBBAE8) == 1)
  {
    if (qword_1EDEAD4D8 != -1)
    {
      swift_once();
    }

    result = [qword_1EDEBBC10 removeWatcher_];
    *(v0 + v1) = 0;
  }

  return result;
}

void sub_1CF345EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 24))(sub_1CF345F40, 0, a2);
  if (!v3)
  {
    v5 = v4;
    if ([v4 next])
    {
      sub_1CF345C98();
    }

    else
    {
      sub_1CF345E30();
    }
  }
}

uint64_t sub_1CF345F40()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000035, 0x80000001CFA42FB0);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0xD00000000000003ELL, 0x80000001CFA42FF0);
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA42F90);
  v2 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v2);

  MEMORY[0x1D3868CC0](0x200A0A30203D2120, 0xEF312054494D494CLL);
  return 0;
}

void sub_1CF3460B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v26 = a3;
  v8 = sub_1CF9E64A8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v5 + 16);
  if (v13)
  {
    v25 = a2;
    v14 = *(v5 + 24);

    v16 = v13(v15);
    sub_1CEFF7124(v13);
    if (v16)
    {
      v17 = sub_1CF042F4C();
      *v12 = v17;
      (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8);
      v18 = v17;
      LOBYTE(v17) = sub_1CF9E64D8();
      (*(v9 + 8))(v12, v8);
      if (v17)
      {
        v19 = v26;
        v20 = v25;
        v21 = (*(*(v26 + 8) + 24))(sub_1CF3462E8, 0, v25);
        if (v4)
        {
        }

        else
        {
          v22 = v21;
          if ([v21 next])
          {
            do
            {
              v23 = objc_autoreleasePoolPush();
              sub_1CF3463FC(v22, v5, a1, v20, v19);
              objc_autoreleasePoolPop(v23);
            }

            while (([v22 next] & 1) != 0);
          }
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_1CF3462E8()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA423A0);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA42F90);
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  MEMORY[0x1D3868CC0](0x30203D2120, 0xE500000000000000);
  return 0;
}

uint64_t sub_1CF3463FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v16 = a3;
  v17 = a4;
  v7 = *(*a2 + 96);
  v8 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = (&v16 - v12);
  v14 = *(swift_getAssociatedConformanceWitness() + 8);
  result = (*(v14 + 16))(a1, 0, AssociatedTypeWitness, v14);
  if (!v5)
  {
    sub_1CF3488CC(v13, v16, v17, v18);
    return (*(v10 + 8))(v13, AssociatedTypeWitness);
  }

  return result;
}

void sub_1CF346598()
{
  v1 = v0;
  v2 = sub_1CF9E63A8();
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v34 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1CF9E6448();
  v33 = *(v35 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CF9E6388();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = sub_1CF9E6498();
  v12 = *(v38 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  v19 = *(v0 + 16);
  if (v19)
  {
    v20 = *(v0 + 24);
    v21 = *(v1 + 24);

    v23 = v19(v22);
    sub_1CEFF7124(v19);
    if (v23)
    {
      v31 = sub_1CF042F4C();
      sub_1CF9E6478();
      *v11 = *(v1 + qword_1EDEBBAD8 + 104);
      (*(v8 + 104))(v11, *MEMORY[0x1E69E7F28], v7);
      MEMORY[0x1D3868740](v15, v11);
      (*(v8 + 8))(v11, v7);
      v30 = *(v12 + 8);
      v30(v15, v38);
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = v1;
      aBlock[4] = sub_1CF356304;
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1CEFCA444;
      aBlock[3] = &block_descriptor_15;
      v25 = _Block_copy(aBlock);

      v26 = v32;
      sub_1CF9E63F8();
      v39 = MEMORY[0x1E69E7CC0];
      sub_1CF355F5C(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
      sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
      v27 = v34;
      v28 = v37;
      sub_1CF9E77B8();
      v29 = v31;
      MEMORY[0x1D38695B0](v18, v26, v27, v25);
      _Block_release(v25);

      (*(v36 + 8))(v27, v28);
      (*(v33 + 8))(v26, v35);
      v30(v18, v38);
    }
  }
}

void sub_1CF346A84(uint64_t a1, uint64_t a2)
{
  v3 = sub_1CF9E6118();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  if (qword_1EDEAD4D8 != -1)
  {
    swift_once();
  }

  v5 = sub_1CEFCB1A0(sub_1CF0BA898, 0);
  if (v5 == 2 || (v5 & 1) != 0)
  {
    sub_1CF59896C("scheduleCancellationOfSpeculativeSetDownloads()", 0x2FuLL, 2, sub_1CF35630C, a2, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7CA8]);
  }
}

uint64_t sub_1CF346D18()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA41BA0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = (*(*(AssociatedConformanceWitness + 8) + 8))(AssociatedTypeWitness);
  MEMORY[0x1D3868CC0](v2);

  MEMORY[0x1D3868CC0](0xD000000000000064, 0x80000001CFA41BD0);
  return 0;
}

uint64_t sub_1CF346E30()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000079, 0x80000001CFA413C0);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0xD000000000000044, 0x80000001CFA41B50);
  return 0;
}

uint64_t sub_1CF346F08()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000001A5, 0x80000001CFA41900);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0x444E450A3B29, 0xE600000000000000);
  return 0;
}

uint64_t sub_1CF346FB8()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000D1, 0x80000001CFA41820);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0x444E450A3B29, 0xE600000000000000);
  return 0;
}

uint64_t sub_1CF347068()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000037, 0x80000001CFA416A0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = (*(*(AssociatedConformanceWitness + 8) + 8))(AssociatedTypeWitness);
  MEMORY[0x1D3868CC0](v2);

  MEMORY[0x1D3868CC0](0xD000000000000131, 0x80000001CFA416E0);
  return 0;
}

uint64_t sub_1CF3471D4()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000079, 0x80000001CFA413C0);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0xD0000000000000A4, 0x80000001CFA41440);
  return 0;
}

uint64_t sub_1CF347298(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    v5 = result;
    v6 = *(v2 + 24);

    result = v3(v7);
    if (result)
    {
      sub_1CEFF7124(v3);
      sub_1CF47F85C();

      sub_1CF9E7948();

      MEMORY[0x1D3868CC0](v5, a2);
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      v8 = sub_1CF4876D8(0xD00000000000002ELL, 0x80000001CFA42F30);

      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF3473AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 32);
  result = (v6)(sub_1CF3569B0, 0, a2, a3);
  if (!v3)
  {
    (v6)(sub_1CF34759C, 0, a2, a3);
    v8 = (v6)(sub_1CF3569B4, 0, a2, a3);
    v9 = MEMORY[0x1EEE9AC00](v8);
    v10 = v6(sub_1CF3562E0, v9);
    v11 = MEMORY[0x1EEE9AC00](v10);
    v12 = v6(sub_1CF3562EC, v11);
    v13 = MEMORY[0x1EEE9AC00](v12);
    return v6(sub_1CF3562F8, v13);
  }

  return result;
}

uint64_t sub_1CF3475B8(uint64_t a1, void *a2)
{
  v2 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000CBLL, 0x80000001CFA42E10);
  v3 = v2[10];
  v4 = v2[11];
  v5 = v2[12];
  v6 = v2[13];
  v7 = sub_1CF3558D8();
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](0xD0000000000000D0, 0x80000001CFA428E0);
  v8 = sub_1CF35563C();
  MEMORY[0x1D3868CC0](v8);

  MEMORY[0x1D3868CC0](0x444E450A3BLL, 0xE500000000000000);
  return 0;
}

uint64_t sub_1CF347718(uint64_t a1, void *a2)
{
  v2 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000001A1, 0x80000001CFA42AF0);
  v3 = sub_1CF347298(0x695F70662E77656ELL, 0xE900000000000064);
  MEMORY[0x1D3868CC0](v3);

  MEMORY[0x1D3868CC0](0xD00000000000005BLL, 0x80000001CFA42CA0);
  v4 = sub_1CF347298(0x695F70662E77656ELL, 0xE900000000000064);
  MEMORY[0x1D3868CC0](v4);

  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA42D00);
  v5 = v2[10];
  v6 = v2[11];
  v7 = v2[12];
  v8 = v2[13];
  v9 = sub_1CF3558D8();
  MEMORY[0x1D3868CC0](v9);

  MEMORY[0x1D3868CC0](0xD000000000000093, 0x80000001CFA42D40);
  v10 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v10);

  MEMORY[0x1D3868CC0](0xD00000000000002ELL, 0x80000001CFA42DE0);
  v11 = sub_1CF35563C();
  MEMORY[0x1D3868CC0](v11);

  MEMORY[0x1D3868CC0](0x444E450A3BLL, 0xE500000000000000);
  return 0;
}

uint64_t sub_1CF347960(uint64_t a1, void *a2)
{
  v2 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000B3, 0x80000001CFA42820);
  v3 = v2[10];
  v4 = v2[11];
  v5 = v2[12];
  v6 = v2[13];
  v7 = sub_1CF3558D8();
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](0xD0000000000000D0, 0x80000001CFA428E0);
  v8 = sub_1CF35563C();
  MEMORY[0x1D3868CC0](v8);

  MEMORY[0x1D3868CC0](0x444E450A3BLL, 0xE500000000000000);
  return 0;
}

void sub_1CF347AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v75 = a4;
  v79 = a8;
  v80 = a6;
  v81 = a7;
  v74 = a5;
  v71 = a2;
  v67 = *v8;
  v68 = a3;
  v10 = v67[12];
  v77 = v8;
  v69 = v67[10];
  v70 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = v12[8];
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v64[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v64[-v17];
  v19 = sub_1CF9E6118();
  v72 = *(v19 - 8);
  v73 = v19;
  v20 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v64[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v24 = v12[2];
  v78 = a1;
  v24(v18, a1, AssociatedTypeWitness);
  v25 = sub_1CF9E6108();
  v26 = sub_1CF9E7288();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v65 = v26;
    v28 = v27;
    v66 = swift_slowAlloc();
    v82 = v66;
    *v28 = 136446466;
    v24(v16, v18, AssociatedTypeWitness);
    v29 = v12[1];
    v29(v18, AssociatedTypeWitness);
    v30 = *(swift_getAssociatedConformanceWitness() + 16);
    v31 = v25;
    v32 = sub_1CF9E7F98();
    v34 = v33;
    v29(v16, AssociatedTypeWitness);
    v35 = sub_1CEFD0DF0(v32, v34, &v82);

    *(v28 + 4) = v35;
    *(v28 + 12) = 2082;
    v36 = sub_1CF7F5068(v71);
    v38 = sub_1CEFD0DF0(v36, v37, &v82);

    *(v28 + 14) = v38;
    _os_log_impl(&dword_1CEFC7000, v31, v65, "⏰  scheduling background download <i:%{public}s reason:%{public}s>", v28, 0x16u);
    v39 = v66;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v39, -1, -1);
    MEMORY[0x1D386CDC0](v28, -1, -1);
  }

  else
  {
    (v12[1])(v18, AssociatedTypeWitness);
  }

  (*(v72 + 8))(v22, v73);
  v40 = sub_1CF9E5278();
  v41 = (v75 | v74) < 0 || v40 == v75;
  v42 = v41;
  if (v41)
  {
    v43 = 0;
  }

  else
  {
    v43 = v74;
  }

  if (v41)
  {
    v44 = 0;
  }

  else
  {
    v44 = v75;
  }

  MEMORY[0x1EEE9AC00](v40);
  v46 = v78;
  v45 = v79;
  *&v64[-64] = v81;
  *&v64[-56] = v45;
  v47 = v76;
  v48 = v77;
  *&v64[-48] = v46;
  *&v64[-40] = v48;
  *&v64[-32] = v44;
  v64[-24] = v42;
  *&v64[-16] = v43;
  v64[-8] = v42;
  v49 = *(v45 + 8);
  v50 = (*(v49 + 24))(sub_1CF356224);
  if (!v47)
  {
    v51 = v50;
    v52 = [v50 next];
    v76 = v64;
    if (v52)
    {
      MEMORY[0x1EEE9AC00](v52);
      v53 = v80;
      v54 = v81;
      v55 = v79;
      *&v64[-80] = v81;
      *&v64[-72] = v55;
      v56 = v78;
      *&v64[-64] = v71;
      *&v64[-56] = v56;
      *&v64[-48] = v48;
      *&v64[-40] = v44;
      v64[-32] = v42;
      *&v64[-24] = v43;
      v64[-16] = v42;
      (*(v55 + 32))(sub_1CF3562A4);
      sub_1CF353998(v53, v54, v49);
    }

    else
    {
      MEMORY[0x1EEE9AC00](v52);
      v57 = v67;
      v58 = v67[11];
      *&v64[-112] = v69;
      *&v64[-104] = v58;
      v59 = v81;
      v60 = v70;
      *&v64[-96] = v81;
      *&v64[-88] = v60;
      v61 = v79;
      v62 = v80;
      *&v64[-80] = v57[13];
      *&v64[-72] = v61;
      *&v64[-64] = v78;
      *&v64[-56] = v44;
      v64[-48] = v42;
      *&v64[-40] = v43;
      v64[-32] = v42;
      v63 = v71;
      *&v64[-24] = v68;
      *&v64[-16] = v63;
      (*(v61 + 32))(sub_1CF356260);
      sub_1CF353998(v62, v59, v49);
      sub_1CF345C98();
    }
  }
}

uint64_t sub_1CF3480F0(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  v11 = *a3;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA427E0);
  v12 = *(v11 + 96);
  v13 = *(v11 + 80);
  swift_getAssociatedTypeWitness();
  v14 = *(swift_getAssociatedConformanceWitness() + 8);
  v15 = *(v14 + 32);
  v16 = swift_checkMetadataState();
  v17 = v15(a1, v16, v14);
  MEMORY[0x1D3868CC0](v17);

  MEMORY[0x1D3868CC0](0x2020200A444E4120, 0xEF20202020202020);
  v18 = sub_1CF355B94(a1, a4, a5 & 1, a6, a7 & 1);
  MEMORY[0x1D3868CC0](v18);

  return 0;
}

uint64_t sub_1CF348294(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  v26[0] = 0;
  v13 = *a4;
  v26[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v27 = 0;
  v28 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA42770);
  v26[3] = MEMORY[0x1E69E6530];
  v26[0] = a2;
  v14 = sub_1CEFF8EA0(v26);
  v16 = v15;
  sub_1CEFCCC44(v26, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v16)
  {
    MEMORY[0x1D3868CC0](v14, v16);

    MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
    v17 = *(v13 + 96);
    v18 = *(v13 + 80);
    swift_getAssociatedTypeWitness();
    v19 = *(swift_getAssociatedConformanceWitness() + 8);
    v20 = *(v19 + 32);
    v21 = swift_checkMetadataState();
    v22 = v20(a1, v21, v19);
    MEMORY[0x1D3868CC0](v22);

    MEMORY[0x1D3868CC0](0x2020200A444E4120, 0xED00002020202020);
    v23 = sub_1CF355B94(a1, a5, a6 & 1, a7, a8 & 1);
    MEMORY[0x1D3868CC0](v23);

    return v27;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF348514(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v36[0] = 0;
  v36[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v38 = 0;
  v39 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD00000000000002FLL, 0x80000001CFA427B0);
  swift_getAssociatedTypeWitness();
  v11 = *(swift_getAssociatedConformanceWitness() + 8);
  v12 = *(v11 + 32);
  v13 = swift_checkMetadataState();
  v14 = v12(a1, v13, v11);
  MEMORY[0x1D3868CC0](v14);

  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020);
  v15 = 0;
  if ((a4 & 1) == 0)
  {
    v15 = sub_1CF9E7088();
  }

  v16 = [a1 bindObjectParameter_];
  swift_unknownObjectRelease();
  v17 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v19 = v18;

  MEMORY[0x1D3868CC0](v17, v19);

  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020);
  if (a6)
  {
    v20 = 0;
  }

  else
  {
    v20 = sub_1CF9E7088();
  }

  v21 = [a1 bindObjectParameter_];
  swift_unknownObjectRelease();
  v22 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v24 = v23;

  MEMORY[0x1D3868CC0](v22, v24);

  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020);
  v25 = MEMORY[0x1E69E6530];
  v37 = MEMORY[0x1E69E6530];
  v36[0] = a7;
  v26 = sub_1CEFF8EA0(v36);
  v28 = v27;
  sub_1CEFCCC44(v36, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v28)
  {
    goto LABEL_9;
  }

  MEMORY[0x1D3868CC0](v26, v28);

  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020);
  v36[0] = 0;
  v29 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v29);

  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020);
  v37 = v25;
  v36[0] = a8;
  v30 = sub_1CEFF8EA0(v36);
  v32 = v31;
  sub_1CEFCCC44(v36, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v32)
  {
    MEMORY[0x1D3868CC0](v30, v32);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    return v38;
  }

  else
  {
LABEL_9:
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF3488CC(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a3;
  v49 = a4;
  v47 = a2;
  v50 = a1;
  v6 = *v4;
  v7 = sub_1CF9E5CF8();
  v43 = *(v7 - 8);
  v44 = v7;
  v8 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v6[10];
  v11 = v6[11];
  v12 = v6[12];
  v13 = v6[13];
  v51 = v10;
  v52 = v11;
  v45 = v13;
  v46 = v11;
  v53 = v12;
  v54 = v13;
  v14 = type metadata accessor for ConcreteDatabase.MaterializationRequest();
  v15 = sub_1CF9E75D8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  result = MEMORY[0x1EEE9AC00](v15);
  v20 = &v40 - v19;
  v21 = v4[2];
  if (v21)
  {
    v22 = v4[3];

    v24 = v21(v23);
    v25 = v21;
    v26 = v24;
    result = sub_1CEFF7124(v25);
    if (v26)
    {
      v41 = v5;
      v27 = qword_1EDEBBC70;
      swift_beginAccess();
      v28 = *(v26 + v27);
      v40 = v26;
      swift_getAssociatedTypeWitness();
      v29 = *(swift_getAssociatedConformanceWitness() + 40);

      v30 = v50;
      sub_1CF9E6728();

      if ((*(*(v14 - 8) + 48))(v20, 1, v14) == 1)
      {
        (*(v16 + 8))(v20, v15);
        v51 = v10;
        v52 = v46;
        v53 = v12;
        v54 = v45;
        type metadata accessor for ConcreteJobResult();
        v31 = sub_1CF056580();
        v33 = v48;
        v32 = v49;
        v34 = v41;
        v35 = v47;
        sub_1CF56512C(v30, v40, v31, v47, v48, *(v49 + 8));
        if (v34)
        {
LABEL_9:
        }

        v36 = v42;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v38 = v37;
        result = (*(v43 + 8))(v36, v44);
        v39 = v38 * 1000000000.0;
        if (COERCE__INT64(fabs(v38 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v39 > -9.22337204e18)
        {
          if (v39 < 9.22337204e18)
          {
            sub_1CF521850(v31, v39, v35, v33, v32);
            goto LABEL_9;
          }

          goto LABEL_14;
        }

        __break(1u);
LABEL_14:
        __break(1u);
        return result;
      }

      return (*(v16 + 8))(v20, v15);
    }
  }

  return result;
}

void (*sub_1CF348CFC(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t *, void)
{
  v6 = v5;
  v112 = a3;
  v99 = a2;
  v10 = *v5;
  v11 = v10[12];
  v12 = v10[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v95 = *(AssociatedTypeWitness - 8);
  v13 = *(v95 + 64);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v91 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v94 = &v78 - v16;
  v98 = sub_1CF9E6118();
  v97 = *(v98 - 8);
  v17 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v100 = v12;
  v104 = v12;
  v20 = v10[11];
  v105 = v20;
  v106 = a4;
  v92 = v11;
  v107 = v11;
  v21 = v10[13];
  v108 = v21;
  v109 = a5;
  v101 = a1;
  v110 = a1;
  v93 = a5;
  v22 = *(a5 + 8);
  v23 = *(v22 + 24);
  v24 = v112;
  v25 = v102;
  v26 = v23(sub_1CF3569D0, v103, a4, v22);
  if (v25)
  {
    return v24;
  }

  v89 = v21;
  v90 = v20;
  v86 = v23;
  v87 = v22 + 24;
  v88 = v22;
  v83 = v6;
  *&v102 = 0;
  v28 = v26;
  [v28 next];
  v29 = [v28 longAtIndex_];

  if (v29 < 1)
  {
    v24 = 0;
LABEL_7:

    return v24;
  }

  v85 = v28;
  v82 = v29;
  v84 = a4;
  v30 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v31 = v95;
  v32 = *(v95 + 16);
  v33 = v94;
  v34 = AssociatedTypeWitness;
  v32(v94, v101, AssociatedTypeWitness);
  v35 = sub_1CF9E6108();
  v36 = sub_1CF9E7288();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v79 = v37;
    v81 = swift_slowAlloc();
    v111 = v81;
    *v37 = 136446466;
    v80 = v36;
    v38 = v91;
    v32(v91, v33, v34);
    v39 = *(v31 + 8);
    v39(v33, v34);
    v40 = v92;
    v41 = *(swift_getAssociatedConformanceWitness() + 16);
    v42 = sub_1CF9E7F98();
    v43 = v34;
    v45 = v44;
    v39(v38, v43);
    v46 = sub_1CEFD0DF0(v42, v45, &v111);

    v47 = v79;
    *(v79 + 1) = v46;
    *(v47 + 6) = 2082;
    v48 = v99;
    v49 = sub_1CF7F5068(v99);
    v51 = sub_1CEFD0DF0(v49, v50, &v111);

    *(v47 + 14) = v51;
    _os_log_impl(&dword_1CEFC7000, v35, v80, "⏰  unscheduling background download <i:%{public}s reason:%{public}s>", v47, 0x16u);
    v52 = v81;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v52, -1, -1);
    MEMORY[0x1D386CDC0](v47, -1, -1);

    v53 = (*(v97 + 8))(v19, v98);
    v54 = v84;
    v55 = v93;
  }

  else
  {
    (*(v31 + 8))(v33, v34);

    v53 = (*(v97 + 8))(v19, v98);
    v54 = v84;
    v55 = v93;
    v40 = v92;
    v48 = v99;
  }

  v57 = v101;
  v56 = v102;
  v58 = v112;
  if ((v48 & 0xFFFFFFFFFFFFFE3FLL) != 0)
  {
    v59 = v100;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v53);
    v59 = v100;
    *(&v78 - 8) = v100;
    *(&v78 - 7) = v63;
    *(&v78 - 6) = v54;
    *(&v78 - 5) = v40;
    *(&v78 - 4) = v64;
    *(&v78 - 3) = v55;
    *(&v78 - 2) = v57;
    v24 = v58;
    v65 = (v86)(sub_1CF35620C);
    if (v56)
    {
      goto LABEL_12;
    }

    v76 = v65;

    v77 = [v76 next];
    if (v77 && ((v53 = [v76 longAtIndex_], v53 == 128) || v53 == 64) && (v53 = objc_msgSend(v76, sel_next), (v53 & 1) == 0))
    {
      v53 = sub_1CF3488CC(v57, v58, v54, v55);
      v85 = v76;
    }

    else
    {
      v85 = v76;
    }
  }

  MEMORY[0x1EEE9AC00](v53);
  *(&v78 - 8) = v59;
  *(&v78 - 7) = v60;
  *(&v78 - 6) = v54;
  *(&v78 - 5) = v40;
  *(&v78 - 4) = v61;
  *(&v78 - 3) = v55;
  *(&v78 - 2) = v62;
  *(&v78 - 1) = v57;
  v24 = v58;
  (*(v55 + 32))(sub_1CF3561D4);
  if (v56)
  {
LABEL_12:

    return v24;
  }

  v66 = (*(v55 + 24))(v54, v55);
  if (v66 < 1)
  {
LABEL_18:
    if (v99 == 16)
    {
      v66 = sub_1CF3503BC(v57, v58, v54, v55);
    }

    MEMORY[0x1EEE9AC00](v66);
    v72 = v90;
    *(&v78 - 8) = v59;
    *(&v78 - 7) = v72;
    *(&v78 - 6) = v54;
    *(&v78 - 5) = v40;
    *(&v78 - 4) = v73;
    *(&v78 - 3) = v55;
    *(&v78 - 2) = v57;
    v75 = v74(sub_1CF356208);
    *&v102 = 0;
    v28 = v75;

    [v28 next];
    [v28 longAtIndex_];

    v24 = v82;
    goto LABEL_7;
  }

  MEMORY[0x1EEE9AC00](v66);
  *&v67 = v59;
  *(&v67 + 1) = v90;
  v102 = v67;
  *&v68 = v40;
  *(&v68 + 1) = v89;
  v100 = v68;
  *(&v78 - 2) = v67;
  *(&v78 - 1) = v68;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v70 = v100;
  *(&v78 - 2) = v102;
  *(&v78 - 1) = v70;
  swift_getKeyPath();
  result = sub_1CF9E6288();
  if (!__OFADD__(*v71, 1))
  {
    ++*v71;
    result(&v111, 0);

    v54 = v84;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF34973C(uint64_t a1)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000037, 0x80000001CFA42200);
  swift_getAssociatedTypeWitness();
  v2 = *(swift_getAssociatedConformanceWitness() + 8);
  v3 = *(v2 + 32);
  v4 = swift_checkMetadataState();
  v5 = v3(a1, v4, v2);
  MEMORY[0x1D3868CC0](v5);

  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA40340);
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  return 0;
}

uint64_t sub_1CF3498B0(uint64_t a1, uint64_t a2)
{
  v12[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v13 = 0;
  v14 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD000000000000037, 0x80000001CFA42730);
  v12[3] = MEMORY[0x1E69E6530];
  v12[0] = a2;
  v4 = sub_1CEFF8EA0(v12);
  v6 = v5;
  sub_1CEFCCC44(v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v6)
  {
    MEMORY[0x1D3868CC0](v4, v6);

    MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
    swift_getAssociatedTypeWitness();
    v7 = *(swift_getAssociatedConformanceWitness() + 8);
    v8 = *(v7 + 32);
    v9 = swift_checkMetadataState();
    v10 = v8(a1, v9, v7);
    MEMORY[0x1D3868CC0](v10);

    return v13;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF349AA0(uint64_t a1)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000037, 0x80000001CFA426F0);
  swift_getAssociatedTypeWitness();
  v2 = *(swift_getAssociatedConformanceWitness() + 8);
  v3 = *(v2 + 32);
  v4 = swift_checkMetadataState();
  v5 = v3(a1, v4, v2);
  MEMORY[0x1D3868CC0](v5);

  return 0;
}

uint64_t sub_1CF349BB8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6[2];
  if (v7)
  {
    v12 = result;
    v13 = *v6;
    v29[1] = a2;
    v14 = v6[3];

    v16 = v7(v15);
    result = sub_1CEFF7124(v7);
    if (v16)
    {
      result = sub_1CF5DA5A8(8u);
      v17 = *(result + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        __break(1u);
      }

      else
      {
        v29[0] = v29;
        *(result + 16) = v19;
        MEMORY[0x1EEE9AC00](result);
        v20 = *(v13 + 96);
        v22[1] = *(v13 + 80);
        v23 = a5;
        v24 = v20;
        v25 = a6;
        v26 = v12;
        v27 = a3;
        v28 = a4;
        v21 = *(a6 + 32);

        v21(sub_1CF356174, v22, a5, a6);
      }
    }
  }

  return result;
}

uint64_t sub_1CF349D3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000002CLL, 0x80000001CFA425D0);
  v5 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v5);

  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  swift_getAssociatedTypeWitness();
  v6 = *(swift_getAssociatedConformanceWitness() + 8);
  v7 = *(v6 + 32);
  v8 = swift_checkMetadataState();
  v9 = v7(a1, v8, v6);
  MEMORY[0x1D3868CC0](v9);

  MEMORY[0x1D3868CC0](0x20444E4120, 0xE500000000000000);
  v10 = a3(a1);
  MEMORY[0x1D3868CC0](v10);

  return 0;
}

uint64_t sub_1CF349EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x205443454C4553, 0xE700000000000000);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD0000000000000A7, 0x80000001CFA41CD0);
  v9 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v9);

  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA41D80);
  v10 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v10);

  MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA41FB0);
  v11 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v11);

  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA41FE0);
  MEMORY[0x1D3868CC0](a4, a5);
  return 0;
}

uint64_t sub_1CF34A0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x5443454C45532020, 0xE900000000000020);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD0000000000000E8, 0x80000001CFA41E10);
  v9 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v9);

  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA41F00);
  v10 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v10);

  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA41F20);
  v11 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v11);

  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA41F40);
  v12 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v12);

  MEMORY[0x1D3868CC0](0xD000000000000030, 0x80000001CFA41F70);
  MEMORY[0x1D3868CC0](a4, a5);
  return 0;
}

uint64_t sub_1CF34A2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x205443454C4553, 0xE700000000000000);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD0000000000000A7, 0x80000001CFA41CD0);
  v9 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v9);

  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA41D80);
  v10 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v10);

  MEMORY[0x1D3868CC0](0xD00000000000003ALL, 0x80000001CFA41DA0);
  v11 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v11);

  MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA41DE0);
  MEMORY[0x1D3868CC0](a4, a5);
  return 0;
}

uint64_t sub_1CF34A458(uint64_t a1)
{
  if (qword_1EDEAD4D8 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v2 = MEMORY[0x1EEE9AC00](a1);
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v1;
  v10[5] = v2;
  v5 = sub_1CF0674E8(sub_1CF356124, v10);
  if (v6)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

void sub_1CF34A548(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v11 = sub_1CF9E6118();
  v72 = *(v11 - 8);
  v12 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = qword_1EDEBBB18;
  if (*(a1 + qword_1EDEBBB18))
  {
    v15 = *(a1 + qword_1EDEBBB18);

    sub_1CF3625E4(1uLL);
  }

  if (fpfs_supports_bgst_improvements() && *(a1 + qword_1EDEBBAE0) != 2)
  {
    goto LABEL_48;
  }

  v66 = a5;
  v67 = v5;
  v16 = a1[2];
  v65 = v11;
  if (!v16)
  {
    v70 = 0;
    v71 = 0xE000000000000000;
    goto LABEL_35;
  }

  v17 = a1[3];

  v19 = v16(v18);
  sub_1CEFF7124(v16);
  if (!v19)
  {
LABEL_17:
    v30 = a1[2];
    v70 = 0;
    v71 = 0xE000000000000000;
    if (v30)
    {
      v31 = a1[3];

      v33 = v30(v32);
      sub_1CEFF7124(v30);
      if (v33)
      {
        v68 = 0;
        v69 = 0xE000000000000000;
        sub_1CF9E7948();
        MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA426B0);

        v34 = sub_1CF04590C();
        v35 = (v34 & 1) == 0;
        if (v34)
        {
          v36 = 1702195828;
        }

        else
        {
          v36 = 0x65736C6166;
        }

        if (v35)
        {
          v37 = 0xE500000000000000;
        }

        else
        {
          v37 = 0xE400000000000000;
        }

        MEMORY[0x1D3868CC0](v36, v37);

        MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA426D0);
        v38 = sub_1CF058C1C();
        v39 = (v38 & 1) == 0;
        if (v38)
        {
          v40 = 0xD000000000000019;
        }

        else
        {
          v40 = 0x676E696E6E7572;
        }

        if (v39)
        {
          v41 = 0xE700000000000000;
        }

        else
        {
          v41 = 0x80000001CFA40CB0;
        }

        MEMORY[0x1D3868CC0](v40, v41);

        MEMORY[0x1D3868CC0](32, 0xE100000000000000);
        MEMORY[0x1D3868CC0](v68, v69);

        v42 = sub_1CF04590C();

        if ((v42 & 1) != 0 && *(a1 + v64))
        {
          v43 = *(a1 + v64);

          sub_1CF3625E4(2uLL);
        }

        goto LABEL_36;
      }
    }

LABEL_35:
    MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA42670);
LABEL_36:
    v68 = 0;
    v69 = 0xE000000000000000;
    sub_1CF9E7948();

    v44 = qword_1EDEBBAF0;
    v45 = *(a1 + qword_1EDEBBAF0);
    v68 = 0xD000000000000018;
    v69 = 0x80000001CFA42690;
    if (v45)
    {
      v46 = 1702195828;
    }

    else
    {
      v46 = 0x65736C6166;
    }

    if (v45)
    {
      v47 = 0xE400000000000000;
    }

    else
    {
      v47 = 0xE500000000000000;
    }

    MEMORY[0x1D3868CC0](v46, v47);

    MEMORY[0x1D3868CC0](v68, v69);

    v48 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v50 = v70;
    v49 = v71;

    v51 = sub_1CF9E6108();
    v52 = sub_1CF9E7288();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v68 = v54;
      *v53 = 136446210;
      v55 = sub_1CEFD0DF0(v50, v49, &v68);

      *(v53 + 4) = v55;
      _os_log_impl(&dword_1CEFC7000, v51, v52, "🔮 Background downloader not running: %{public}s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x1D386CDC0](v54, -1, -1);
      MEMORY[0x1D386CDC0](v53, -1, -1);
    }

    else
    {
    }

    (*(v72 + 8))(v14, v65);
    a5 = v66;
    if ((*(a1 + v44) & 1) == 0 && *(a1 + v64))
    {
      v56 = *(a1 + v64);

      sub_1CF3625E4(4uLL);
    }

LABEL_48:
    *a5 = 0;
    return;
  }

  if ((sub_1CF04590C() & 1) != 0 || *(a1 + qword_1EDEBBAF0) != 1)
  {

    goto LABEL_16;
  }

  v20 = sub_1CF058C1C();

  if (v20)
  {
LABEL_16:

    goto LABEL_17;
  }

  v21 = sub_1CF5DA5A8(8u);
  v23 = *(v21 + 16);
  v22 = *(v21 + 24);
  v24 = __OFSUB__(v22, v23);
  v25 = v22 - v23;
  if (v24)
  {
LABEL_61:
    __break(1u);
    return;
  }

  if (v25 < 1)
  {

    *v66 = 0;
    return;
  }

  v26 = v21;
  v27 = *(a4 + 8);
  v72 = *(v27 + 24);

  v28 = v67;
  v29 = (v72)(sub_1CF34AC54, 0, a3, v27);
  if (v28)
  {

    return;
  }

  v57 = v29;
  v70 = 0;
  if ([v29 next])
  {
    while (1)
    {
      v59 = *(v26 + 16);
      v58 = *(v26 + 24);
      v24 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v24)
      {
        break;
      }

      if (v60 >= 1)
      {
        v61 = objc_autoreleasePoolPush();
        sub_1CF34AD70(v57, v19, a2, a1, &v70, a3, a4, &v68);
        objc_autoreleasePoolPop(v61);
        if ([v57 next])
        {
          continue;
        }
      }

      v62 = v70;
      goto LABEL_56;
    }

    __break(1u);
    goto LABEL_61;
  }

  v62 = 0;
LABEL_56:
  v63 = sub_1CF3521C0(v62, a2, a3, a4);
  if (fpfs_supports_bgst_improvements())
  {
    if (v63)
    {
      *(a1 + qword_1EDEBBAE0) = 3;
    }
  }

  *v66 = v63;
}

uint64_t sub_1CF34AC54()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000005ELL, 0x80000001CFA42090);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA420F0);
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA42110);
  return 0;
}

void (*sub_1CF34AD70(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void (*a6)(void, void), uint64_t a7, uint64_t a8))(__int128 *, void)
{
  *&v179 = a8;
  v173 = a7;
  v175 = a6;
  v153 = a5;
  v164 = a4;
  v176 = a3;
  *&v177 = a1;
  v9 = *a2;
  v158 = sub_1CF9E6118();
  v157 = *(v158 - 8);
  v10 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v158);
  v161 = &v142[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v162 = sub_1CF9E5CF8();
  v163 = *(v162 - 8);
  v12 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v162);
  v160 = &v142[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v152 = sub_1CF9E6448();
  v151 = *(v152 - 8);
  v14 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v152);
  v150 = &v142[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = v9[330];
  v166 = v9[332];
  v165 = v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v149 = sub_1CF9E75D8();
  v148 = *(v149 - 8);
  v18 = *(v148 + 64);
  v19 = MEMORY[0x1EEE9AC00](v149);
  v159 = &v142[-v20];
  v156 = AssociatedTypeWitness;
  v155 = *(AssociatedTypeWitness - 8);
  v21 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v154 = &v142[-v22];
  v23 = v9[329];
  v174 = a2;
  v24 = v9[331];
  v25 = type metadata accessor for SnapshotItem();
  v26 = sub_1CF9E75D8();
  v171 = *(v26 - 1);
  v172 = v26;
  v27 = *(v171 + 64);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v170 = &v142[-v29];
  v168 = v25;
  v167 = *(v25 - 8);
  v30 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v142[-v31];
  v33 = swift_getAssociatedTypeWitness();
  v169 = *(v33 - 8);
  v34 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v142[-v35];
  v37 = *(*(swift_getAssociatedConformanceWitness() + 8) + 16);
  v38 = v177;
  v39 = v178;
  result = v37();
  v41 = v179;
  if (v39)
  {
    goto LABEL_17;
  }

  v42 = v170;
  v178 = 0;
  v44 = v171;
  v43 = v172;
  v145 = v23;
  v146 = v24;
  v144 = v32;
  *&v177 = v36;
  v147 = v33;
  v143 = [v38 intAtIndex_];
  if ([v38 isNullAtIndex_])
  {
    v45 = -1;
  }

  else
  {
    v45 = [v38 longAtIndex_];
  }

  v46 = v43;
  v47 = v42;
  v48 = v44;
  if ([v38 isNullAtIndex_])
  {
    v49 = -1;
  }

  else
  {
    v49 = [v38 longAtIndex_];
  }

  v50 = v177;
  v51 = v178;
  v52 = v173;
  v53 = *(v173 + 8);
  (*(*v174[4] + 240))(v177, 1, v176, v175, v53);
  v178 = v51;
  if (v51)
  {
LABEL_16:
    result = (*(v169 + 8))(v50, v147);
    v39 = v178;
    v41 = v179;
LABEL_17:
    *v41 = v39;
    return result;
  }

  v172 = v49;
  v54 = v45;
  v55 = v167;
  v56 = v168;
  if ((*(v167 + 48))(v47, 1, v168) == 1)
  {
    v57 = (*(v48 + 8))(v47, v46);
LABEL_15:
    v66 = v166;
    MEMORY[0x1EEE9AC00](v57);
    v67 = v145;
    v68 = v165;
    *&v142[-64] = v145;
    *&v142[-56] = v68;
    v69 = v146;
    *&v142[-48] = v175;
    *&v142[-40] = v69;
    *&v142[-32] = v66;
    *&v142[-24] = v52;
    *&v141 = v50;
    v70 = v178;
    v71 = (*(v52 + 32))(sub_1CF356144);
    v178 = v70;
    if (v70)
    {
      goto LABEL_16;
    }

    MEMORY[0x1EEE9AC00](v71);
    *&v72 = v67;
    *(&v72 + 1) = v68;
    v179 = v72;
    *&v73 = v69;
    *(&v73 + 1) = v66;
    v177 = v73;
    *&v142[-32] = v72;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v75 = v177;
    *&v142[-32] = v179;
    v141 = v75;
    swift_getKeyPath();
    result = sub_1CF9E6288();
    if (!__OFADD__(*v76, 1))
    {
      ++*v76;
      result(&v182, 0);

      v77 = v147;
      v78 = v169;
      return (*(v78 + 8))(v50, v77);
    }

    __break(1u);
    goto LABEL_91;
  }

  v171 = v53;
  v58 = v144;
  (*(v55 + 32))(v144, v47, v56);
  WitnessTable = swift_getWitnessTable();
  v60 = sub_1CF937C7C(v56, WitnessTable);
  if ((v60 & 1) == 0)
  {
    v57 = (*(v55 + 8))(v58, v56);
    goto LABEL_15;
  }

  MEMORY[0x1EEE9AC00](v60);
  v62 = v175;
  v61 = v176;
  *&v142[-48] = v175;
  *&v142[-40] = v52;
  v63 = v172;
  *&v142[-32] = v54;
  *&v142[-24] = v63;
  *&v141 = v164;
  v64 = v178;
  sub_1CF349BB8(v50, v61, sub_1CF35615C, &v142[-64], v62, v52);
  v65 = v171;
  if (v64)
  {
    v178 = v64;
    (*(v167 + 8))(v144, v168);
    goto LABEL_16;
  }

  v170 = v143;
  if (v54 < 0)
  {
    v82 = v175;
    v83 = v176;
    v84 = v160;
    v85 = v166;
    v86 = v165;
    v87 = v145;
    goto LABEL_30;
  }

  v79 = [objc_opt_self() discreteProgressWithTotalUnitCount_];
  v80 = [objc_opt_self() requestForSelf];
  [v80 setRequestedExtent_];
  v81 = v159;
  (*(*v174[2] + 160))(v50, v176, v175, v65);
  v178 = 0;
  v172 = v79;
  v88 = v155;
  v89 = v156;
  if ((*(v155 + 48))(v81, 1, v156) == 1)
  {
    (*(v148 + 8))(v81, v149);
    type metadata accessor for NSFileProviderError(0);
    v180 = -1005;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF355F5C(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
    sub_1CF9E57D8();
    v90 = v182;
    swift_willThrow();

LABEL_26:
    v91 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v92 = v90;
    v93 = sub_1CF9E6108();
    v94 = sub_1CF9E72A8();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      *v95 = 138412290;
      swift_getErrorValue();
      v97 = Error.prettyDescription.getter(v181);
      *(v95 + 4) = v97;
      *v96 = v97;
      _os_log_impl(&dword_1CEFC7000, v93, v94, "⏰ BRM Materialization failed with %@, falling back to full materialization", v95, 0xCu);
      sub_1CEFCCC44(v96, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v96, -1, -1);
      v98 = v95;
      v50 = v177;
      MEMORY[0x1D386CDC0](v98, -1, -1);
    }

    else
    {
    }

    v82 = v175;
    v83 = v176;
    v84 = v160;
    (*(v157 + 8))(v161, v158);
    v86 = v165;
    v87 = v145;
    v85 = v166;
LABEL_30:
    *&v99 = v87;
    *(&v99 + 1) = v86;
    *&v100 = v146;
    *(&v100 + 1) = v85;
    v183 = v100;
    v182 = v99;
    type metadata accessor for ConcreteJobResult();
    v101 = sub_1CF056580();
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v103 = v102;
    v104 = *(v163 + 8);
    v163 += 8;
    result = v104(v84, v162);
    v105 = v103 * 1000000000.0;
    if (COERCE__INT64(fabs(v103 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    if (v105 <= -9.22337204e18)
    {
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    if (v105 >= 9.22337204e18)
    {
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    if ((v170 & 0x2C) != 0)
    {
      v106 = 0x1000000;
LABEL_52:
      sub_1CF5666D4(v50, 0, v105, v106, v174, 0, v101, v83, v82, v171);
      v178 = 0;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v128 = v127;
      result = v104(v84, v162);
      v129 = v128 * 1000000000.0;
      if (COERCE__INT64(fabs(v128 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      if (v129 <= -9.22337204e18)
      {
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v130 = v144;
      v131 = v178;
      if (v129 >= 9.22337204e18)
      {
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      sub_1CF521850(v101, v129, v83, v82, v173);
      v178 = v131;
      if (v131)
      {
        (*(v167 + 8))(v130, v168);

        goto LABEL_16;
      }

      (*(v167 + 8))(v130, v168);

      v77 = v147;
      v78 = v169;
LABEL_60:
      if (!__OFADD__(*v153, 1))
      {
        ++*v153;
        return (*(v78 + 8))(v50, v77);
      }

      goto LABEL_97;
    }

    if ((v170 & 0x10) != 0)
    {
      if ((v170 & 0x80) != 0)
      {
        v106 = 0x200401000000;
      }

      else
      {
        if ((v170 & 0x140) == 0)
        {
          v106 = 0x401000000;
          if ((v170 & 1) == 0)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        }

        v106 = 0x4401000000;
      }
    }

    else if ((v170 & 0x80) != 0)
    {
      v106 = 0x200001000000;
    }

    else
    {
      if ((v170 & 0x140) == 0)
      {
        v106 = 0x1000000;
        if ((v170 & 1) == 0)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      }

      v106 = 0x4001000000;
    }

    if ((v170 & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_51:
    v106 |= 0x10000000000uLL;
    goto LABEL_52;
  }

  v107 = v154;
  (*(v88 + 32))(v154, v81, v89);
  sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v109 = swift_allocBox();
  v111 = v110;
  v112 = *(TupleTypeMetadata2 + 48);
  v113 = v89;
  (*(v88 + 16))(v110, v107, v89);
  *(v111 + v112) = v80;
  v164 = v80;
  v114 = v150;
  sub_1CF9E63E8();
  v115 = v172;
  v116 = sub_1CF599234(v50, v109 | 0x2000000000000004, 0, v172, v114, v176, nullsub_1, 0, v175, v171);
  (*(v151 + 8))(v114, v152);
  if ((v116 - 1) > 1u)
  {
    (*(v88 + 8))(v154, v113);
    v77 = v147;
    v78 = v169;
LABEL_59:

    result = (*(v167 + 8))(v144, v168);
    goto LABEL_60;
  }

  v152 = v109;
  *&v117 = v145;
  *(&v117 + 1) = v165;
  *&v118 = v146;
  *(&v118 + 1) = v166;
  v183 = v118;
  v182 = v117;
  type metadata accessor for ConcreteJobResult();
  v119 = sub_1CF056580();
  v159 = sub_1CF056580();
  v120 = v160;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v122 = v121;
  v151 = *(v163 + 8);
  result = (v151)(v120, v162);
  v123 = v122 * 1000000000.0;
  if (COERCE__INT64(fabs(v122 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v124 = v174;
  if (v123 <= -9.22337204e18)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  if (v123 >= 9.22337204e18)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v125 = v123;
  if ((v170 & 0x2C) != 0)
  {
    v126 = 0x1000000;
    goto LABEL_77;
  }

  if ((v170 & 0x10) != 0)
  {
    if ((v170 & 0x80) != 0)
    {
      v126 = 0x200401000000;
    }

    else
    {
      if ((v170 & 0x140) == 0)
      {
        v126 = 0x401000000;
        if ((v170 & 1) == 0)
        {
          goto LABEL_77;
        }

LABEL_76:
        v126 |= 0x10000000000uLL;
        goto LABEL_77;
      }

      v126 = 0x4401000000;
    }

LABEL_75:
    if ((v170 & 1) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_76;
  }

  if ((v170 & 0x80) != 0)
  {
    v126 = 0x200001000000;
    goto LABEL_75;
  }

  if ((v170 & 0x140) != 0)
  {
    v126 = 0x4001000000;
    goto LABEL_75;
  }

  v126 = 0x1000000;
  if (v170)
  {
    goto LABEL_76;
  }

LABEL_77:

  v132 = v125;
  v133 = v178;
  sub_1CF5666D4(v50, 0, v132, v126, v124, v119, v159, v176, v175, v171);
  if (v133)
  {

    (*(v155 + 8))(v154, v156);
    v90 = v133;
    goto LABEL_26;
  }

  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v135 = v134;
  v136 = v162;
  result = (v151)(v120, v162);
  v137 = v135 * 1000000000.0;
  if (COERCE__INT64(fabs(v135 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  if (v137 <= -9.22337204e18)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  if (v137 >= 9.22337204e18)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  sub_1CF521850(v119, v137, v176, v175, v173);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v139 = v138;
  result = (v151)(v120, v136);
  v140 = v139 * 1000000000.0;
  if (COERCE__INT64(fabs(v139 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  if (v140 <= -9.22337204e18)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  if (v140 < 9.22337204e18)
  {
    sub_1CF521850(v159, v140, v176, v175, v173);
    v178 = 0;
    (*(v155 + 8))(v154, v156);

    v77 = v147;
    v78 = v169;
    v50 = v177;
    v115 = v172;
    goto LABEL_59;
  }

LABEL_106:
  __break(1u);
  return result;
}

uint64_t sub_1CF34C44C(uint64_t a1)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000033, 0x80000001CFA42630);
  swift_getAssociatedTypeWitness();
  v2 = *(swift_getAssociatedConformanceWitness() + 8);
  v3 = *(v2 + 32);
  v4 = swift_checkMetadataState();
  v5 = v3(a1, v4, v2);
  MEMORY[0x1D3868CC0](v5);

  return 0;
}

void sub_1CF34C564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v186 = a4;
  v187 = a5;
  v188 = a3;
  v175 = a2;
  v185 = a1;
  v6 = *v5;
  v179 = sub_1CF9E6118();
  v178 = *(v179 - 8);
  v7 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v179);
  v176 = &v158 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v172 = &v158 - v10;
  v11 = v6[13];
  v12 = v6[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v189 = v5;
  v14 = v6[12];
  v15 = v6[10];
  v16 = swift_getAssociatedTypeWitness();
  v17 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = swift_getAssociatedConformanceWitness();
  *&v191 = AssociatedTypeWitness;
  *(&v191 + 1) = v16;
  v173 = v16;
  *&v192 = AssociatedConformanceWitness;
  *(&v192 + 1) = v19;
  v164 = type metadata accessor for ThrottlingKey();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v163 = (&v158 - v21);
  v170 = sub_1CF9E75D8();
  v169 = *(v170 - 8);
  v22 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v170);
  v166 = &v158 - v23;
  v168 = AssociatedTypeWitness;
  v171 = *(AssociatedTypeWitness - 8);
  v24 = *(v171 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v167 = &v158 - v26;
  v183 = v15;
  *&v191 = v15;
  *(&v191 + 1) = v12;
  v181 = v12;
  v184 = v14;
  *&v192 = v14;
  *(&v192 + 1) = v17;
  v182 = v17;
  v27 = type metadata accessor for ItemReconciliation();
  v28 = sub_1CF9E75D8();
  v174 = *(v28 - 8);
  v29 = *(v174 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v158 - v30;
  v180 = *(v27 - 8);
  v32 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v177 = &v158 - v34;
  v35 = sub_1CF9E64A8();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v39 = (&v158 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = v189[2];
  if (v40)
  {
    v162 = v28;
    v161 = v19;
    v41 = v189[3];

    v43 = v40(v42);
    sub_1CEFF7124(v40);
    if (v43)
    {
      v44 = sub_1CF042F4C();
      *v39 = v44;
      (*(v36 + 104))(v39, *MEMORY[0x1E69E8020], v35);
      v45 = v44;
      LOBYTE(v44) = sub_1CF9E64D8();
      (*(v36 + 8))(v39, v35);
      if ((v44 & 1) == 0)
      {
        __break(1u);
        goto LABEL_80;
      }

      v46 = sub_1CF5DA5A8(8u);
      v47 = v46;
      v48 = v185;
      v49 = *(v185 + 136);
      v50 = v195;
      v51 = v186;
      if ((v49 & 0x1000000) != 0)
      {
        v52 = v46[2];
        v53 = __OFSUB__(v52, 1);
        v54 = v52 - 1;
        if (v53)
        {
          __break(1u);
        }

        else
        {
          v46[2] = v54;
          v55 = v46[3];
          if (v55 == v46[4])
          {
            goto LABEL_9;
          }

          v53 = __OFSUB__(v55, 1);
          v56 = v55 - 1;
          if (!v53)
          {
            v46[3] = v56;
            goto LABEL_9;
          }
        }

        __break(1u);
        goto LABEL_84;
      }

LABEL_9:
      v57 = *(v48 + 112);
      if (v57 == 3)
      {
LABEL_13:
        v158 = v27;
        v60 = v43[2];
        v61 = v48;
        v62 = v51;
        v63 = *(*v48 + 576);
        v64 = *(v187 + 8);

        sub_1CF68DDB0(v61 + v63, v188, v62, v64, v31);
        v195 = v50;
        if (v50)
        {

          return;
        }

        v159 = v43;
        v85 = v62;
        v160 = v47;

        v86 = v180;
        v87 = v158;
        if ((*(v180 + 48))(v31, 1, v158) == 1)
        {

          v88 = (*(v174 + 8))(v31, v162);
          v89 = 1;
          v19 = v187;
          v51 = v85;
LABEL_24:
          v90 = MEMORY[0x1EEE9AC00](v88);
          *(&v158 - 6) = v51;
          *(&v158 - 5) = v19;
          *(&v158 - 32) = v91;
          v92 = v185;
          *(&v158 - 3) = v175;
          *(&v158 - 2) = v92;
          v93 = v195;
          (*(v19 + 32))(sub_1CF356114, v90);
          if (v93)
          {
            goto LABEL_18;
          }

          if ((*(v19 + 24))(v51, v19) < 1)
          {
            goto LABEL_59;
          }

          LODWORD(v195) = v89;
          v114 = fpfs_current_or_default_log();
          v115 = v172;
          sub_1CF9E6128();

          v116 = sub_1CF9E6108();
          v117 = sub_1CF9E7288();
          if (os_log_type_enabled(v116, v117))
          {
            v118 = swift_slowAlloc();
            v119 = swift_slowAlloc();
            *&v191 = v119;
            *v118 = 136315138;
            v120 = *(v161 + 16);
            v121 = sub_1CF9E7F98();
            v123 = v122;

            v124 = sub_1CEFD0DF0(v121, v123, &v191);

            *(v118 + 4) = v124;
            _os_log_impl(&dword_1CEFC7000, v116, v117, "⏰  throttling background download <i:%s>", v118, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v119);
            MEMORY[0x1D386CDC0](v119, -1, -1);
            MEMORY[0x1D386CDC0](v118, -1, -1);

            v125 = (*(v178 + 8))(v172, v179);
          }

          else
          {

            v125 = (*(v178 + 8))(v115, v179);
          }

          if (v195)
          {
            sub_1CF345C98();
LABEL_59:

LABEL_62:

            return;
          }

          MEMORY[0x1EEE9AC00](v125);
          v130 = v183;
          v131 = v181;
          *(&v158 - 4) = v183;
          *(&v158 - 3) = v131;
          v132 = v184;
          v133 = v182;
          *(&v158 - 2) = v184;
          *(&v158 - 1) = v133;
          KeyPath = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](KeyPath);
          *(&v158 - 4) = v130;
          *(&v158 - 3) = v131;
          *(&v158 - 2) = v132;
          *(&v158 - 1) = v133;
          v135 = swift_getKeyPath();
          v136 = sub_1CF9E6288();
          if (!__OFADD__(*v137, 1))
          {
            ++*v137;
            v136(&v191, 0);

            v160 = v135;
            goto LABEL_62;
          }

LABEL_87:
          __break(1u);
          return;
        }

        v94 = v177;
        (*(v86 + 32))(v177, v31, v87);
        v66 = v188;
        v51 = v62;
        v95 = v195;
        v96 = sub_1CF35441C(v94, v159, v188, v62, v64);
        if (v95)
        {

          (*(v86 + 8))(v94, v87);
          return;
        }

        v195 = 0;
        if (v96)
        {
          v19 = v187;
          v126 = v159;
          v127 = v158;
          if ((*(v185 + 140) & 0x40) == 0)
          {

            v88 = (*(v86 + 8))(v177, v127);
LABEL_65:
            v89 = 0;
            goto LABEL_24;
          }

          v176 = v64;
          v138 = v166;
          (*(v169 + 16))(v166, &v177[*(v158 + 52)], v170);
          v139 = v168;
          if ((*(v171 + 48))(v138, 1) == 1)
          {

            (*(v86 + 8))(v177, v127);
            v88 = (*(v169 + 8))(v138, v170);
            goto LABEL_65;
          }

          v146 = v167;
          (*(v171 + 32))();
          v147 = v126[3];

          v148 = v195;
          v149 = (*(*v147 + 376))(v146, 23, 0, 1, v66, v51, v176);
          v195 = v148;
          if (v148)
          {

            (*(v171 + 8))(v167, v139);
            (*(v180 + 8))(v177, v158);
            return;
          }

          v150 = v149;

          *&v191 = v150;
          v151 = TupleTypeMetadata2;
          sub_1CF9E6E58();
          swift_getWitnessTable();
          if (sub_1CF9E7128())
          {

            (*(v171 + 8))(v167, v168);
            v88 = (*(v180 + 8))(v177, v158);
LABEL_81:
            v89 = 0;
            v51 = v186;
            goto LABEL_24;
          }

          v40 = v163;
          sub_1CF9E6EA8();

          v152 = v40 + *(v151 + 48);
          v153 = *(v152 + 5);
          v154 = *(v152 + 8);
          v155 = v153;

          if (v153)
          {
            (*(*(v164 - 8) + 8))(v40);
            v51 = v186;
            v156 = v158;
            if (*(v189 + qword_1EDEBBB18))
            {
              v157 = *(v189 + qword_1EDEBBB18);

              sub_1CF362660();
            }

            (*(v171 + 8))(v167, v168);
            v88 = (*(v180 + 8))(v177, v156);
            goto LABEL_65;
          }

LABEL_80:
          (*(v171 + 8))(v167, v168);
          (*(v180 + 8))(v177, v158);
          v88 = (*(*(v164 - 8) + 8))(v40, v164);
          goto LABEL_81;
        }

        v43 = v159;

        v129 = *(v185 + 136);
        v19 = v187;
        if (v129 & 0x10000000000) == 0 && (v177[*(v158 + 80)] & 2) != 0 || (v129 & 0x400000000) != 0 && (v177[*(v158 + 80)])
        {
          v65 = (*(v86 + 8))(v177);
        }

        else
        {
          if ((v129 & 0x200000000000) == 0)
          {
            v88 = (*(v86 + 8))(v177, v158);
LABEL_72:
            v89 = 1;
            goto LABEL_24;
          }

          v140 = v158;
          v141 = type metadata accessor for ItemReconciliationHalf();
          v142 = v177;
          v143 = &v177[*(v141 + 68)];
          v144 = *(v143 + 1);
          v191 = *v143;
          v192 = v144;
          v145 = *(v143 + 3);
          v193 = *(v143 + 2);
          v194 = v145;
          sub_1CEFCCBDC(&v191, v190, &unk_1EC4BF260, &unk_1CFA01B60);
          v65 = (*(v86 + 8))(v142, v140);
          if (*(&v192 + 1) >> 60 != 11)
          {
            v88 = sub_1CEFCCC44(&v191, &unk_1EC4BF260, &unk_1CFA01B60);
            goto LABEL_72;
          }
        }

        v50 = v195;
        v47 = v160;
        v48 = v185;
        goto LABEL_17;
      }

      if (v57 == 4)
      {
        v58 = *(v48 + 96);
        v59 = *(v48 + 104);
        if (!(v58 ^ 1 | v59))
        {
          if ((v49 & 0x4000000000) != 0)
          {
            v66 = v188;
            v19 = v187;
            if (*(v189 + qword_1EDEBBB18))
            {

              sub_1CF35AA68(1);

              v51 = v186;
            }

            else
            {
            }
          }

          else
          {

            v19 = v187;
            v66 = v188;
          }

          if ((*(v48 + 141) & 0x20) != 0 && *(v189 + qword_1EDEBBB18))
          {
            v128 = *(v189 + qword_1EDEBBB18);

            sub_1CF35AA68(2);
          }

          goto LABEL_17;
        }

        if (!(v58 | v59))
        {
          goto LABEL_13;
        }
      }

      v19 = v187;
      v66 = v188;
LABEL_17:
      v67 = MEMORY[0x1EEE9AC00](v65);
      *(&v158 - 4) = v51;
      *(&v158 - 3) = v19;
      *(&v158 - 2) = v48;
      (*(v19 + 32))(sub_1CF356108, v67);
      if (v50)
      {
LABEL_18:

        return;
      }

      v68 = (*(v19 + 24))(v51, v19);
      v160 = v47;
      if (v68 >= 1)
      {
        v69 = fpfs_current_or_default_log();
        v70 = v176;
        sub_1CF9E6128();
        v71 = v185;

        v72 = sub_1CF9E6108();
        v73 = sub_1CF9E7288();
        v74 = os_log_type_enabled(v72, v73);
        v159 = v43;
        if (v74)
        {
          v75 = swift_slowAlloc();
          v76 = v70;
          v77 = swift_slowAlloc();
          *&v191 = v77;
          *v75 = 136315138;
          v78 = *(v161 + 16);
          v79 = v71 + *(*v71 + 576);
          v80 = sub_1CF9E7F98();
          v82 = v81;

          v83 = sub_1CEFD0DF0(v80, v82, &v191);

          *(v75 + 4) = v83;
          _os_log_impl(&dword_1CEFC7000, v72, v73, "⏰  finished background download <i:%s>", v75, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v77);
          MEMORY[0x1D386CDC0](v77, -1, -1);
          MEMORY[0x1D386CDC0](v75, -1, -1);

          v84 = (*(v178 + 8))(v76, v179);
        }

        else
        {

          v84 = (*(v178 + 8))(v70, v179);
        }

        MEMORY[0x1EEE9AC00](v84);
        v97 = v183;
        v98 = v181;
        *(&v158 - 4) = v183;
        *(&v158 - 3) = v98;
        v99 = v184;
        v100 = v182;
        *(&v158 - 2) = v184;
        *(&v158 - 1) = v100;
        v101 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v101);
        *(&v158 - 4) = v97;
        *(&v158 - 3) = v98;
        *(&v158 - 2) = v99;
        *(&v158 - 1) = v100;
        swift_getKeyPath();
        v102 = sub_1CF9E6288();
        if (__OFADD__(*v103, 1))
        {
          goto LABEL_85;
        }

        ++*v103;
        v102(&v191, 0);

        v51 = v186;
        v19 = v187;
        v66 = v188;
        v47 = v160;
      }

      v105 = v47[2];
      v104 = v47[3];
      v53 = __OFSUB__(v104, v105);
      v106 = v104 - v105;
      if (!v53)
      {
        if (v106 < 1)
        {
LABEL_37:
          sub_1CF353B48(v66, v51, *(v19 + 8));

          return;
        }

        MEMORY[0x1EEE9AC00](v68);
        v107 = v183;
        v108 = v181;
        *(&v158 - 4) = v183;
        *(&v158 - 3) = v108;
        v109 = v184;
        v110 = v182;
        *(&v158 - 2) = v184;
        *(&v158 - 1) = v110;
        v111 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v111);
        *(&v158 - 4) = v107;
        *(&v158 - 3) = v108;
        *(&v158 - 2) = v109;
        *(&v158 - 1) = v110;
        swift_getKeyPath();
        v112 = sub_1CF9E6288();
        if (!__OFADD__(*v113, 1))
        {
          ++*v113;
          v112(&v191, 0);

          v51 = v186;
          v19 = v187;
          v66 = v188;
          goto LABEL_37;
        }

LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }
  }
}

uint64_t sub_1CF34DBF4(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v24[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v26 = 0;
  v27 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD00000000000002CLL, 0x80000001CFA425D0);
  v9 = MEMORY[0x1E69E6530];
  v25 = MEMORY[0x1E69E6530];
  v24[0] = a2;
  v10 = sub_1CEFF8EA0(v24);
  v12 = v11;
  sub_1CEFCCC44(v24, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v12)
  {
    goto LABEL_4;
  }

  MEMORY[0x1D3868CC0](v10, v12);

  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA42600);
  v25 = v9;
  v24[0] = a3;
  v13 = sub_1CEFF8EA0(v24);
  v15 = v14;
  sub_1CEFCCC44(v24, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v15)
  {
    MEMORY[0x1D3868CC0](v13, v15);

    MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
    v16 = *(*a4 + 576);
    v17 = *(v8 + 616);
    v18 = *(v8 + 600);
    swift_getAssociatedTypeWitness();
    v19 = *(swift_getAssociatedConformanceWitness() + 8);
    v20 = *(v19 + 32);
    v21 = swift_checkMetadataState();
    v22 = v20(a1, v21, v19);
    MEMORY[0x1D3868CC0](v22);

    return v26;
  }

  else
  {
LABEL_4:
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF34DE98(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000033, 0x80000001CFA42630);
  v5 = *(*a2 + 576);
  v6 = *(v4 + 616);
  v7 = *(v4 + 600);
  swift_getAssociatedTypeWitness();
  v8 = *(swift_getAssociatedConformanceWitness() + 8);
  v9 = *(v8 + 32);
  v10 = swift_checkMetadataState();
  v11 = v9(a1, v10, v8);
  MEMORY[0x1D3868CC0](v11);

  return 0;
}

uint64_t sub_1CF34DFE8(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a4;
  v46 = a1;
  v9 = *(*v5 + 80);
  v10 = *(*v5 + 96);
  v11 = *(*v5 + 104);
  v44 = *(*v5 + 88);
  v45 = v9;
  v47 = v9;
  v48 = v44;
  v42 = v11;
  v43 = v10;
  v49 = v10;
  v50 = v11;
  v12 = type metadata accessor for ItemReconciliation();
  v13 = sub_1CF9E75D8();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - v16;
  v18 = *(*(v12 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v15);
  v23 = &v37 - v22;
  v24 = v5[2];
  if (v24)
  {
    v38 = v21;
    v39 = a5;
    v40 = v23;
    v41 = v20;
    v37 = v5;
    v25 = v5[3];

    v27 = v24(v26);
    result = sub_1CEFF7124(v24);
    if (v27)
    {
      a2(v27);
      if (v6)
      {
      }

      else
      {
        v28 = v41;
        if ((*(v41 + 48))(v17, 1, v12) == 1)
        {

          return (*(v38 + 8))(v17, v13);
        }

        else
        {
          v29 = v40;
          (*(v28 + 32))(v40, v17, v12);
          v30 = v51;
          v31 = sub_1CF35441C(v29, v27, v46, v51, *(v39 + 8));
          if ((v31 & 1) == 0)
          {
            MEMORY[0x1EEE9AC00](v31);
            v32 = v44;
            *(&v37 - 8) = v45;
            *(&v37 - 7) = v32;
            v33 = v42;
            v34 = v43;
            *(&v37 - 6) = v30;
            *(&v37 - 5) = v34;
            v35 = v39;
            v36 = v40;
            *(&v37 - 4) = v33;
            *(&v37 - 3) = v35;
            *(&v37 - 2) = v36;
            (*(v35 + 32))(sub_1CF3560F0);
            if ((*(v35 + 24))(v30, v35))
            {
              sub_1CF345C98();
            }
          }

          return (*(v41 + 8))(v40, v12);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1CF34E3E4(void *a1)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000002CLL, 0x80000001CFA425D0);
  v2 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v2);

  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  swift_getAssociatedTypeWitness();
  v3 = sub_1CF9E75D8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = Optional<A>.encode(_:)(a1, v3, *(AssociatedConformanceWitness + 8));
  MEMORY[0x1D3868CC0](v5);

  MEMORY[0x1D3868CC0](0x61747320444E4120, 0xED0000203D206574);
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  return 0;
}

uint64_t sub_1CF34E5A0(uint64_t a1)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000037, 0x80000001CFA42200);
  swift_getAssociatedTypeWitness();
  v2 = *(swift_getAssociatedConformanceWitness() + 8);
  v3 = *(v2 + 32);
  v4 = swift_checkMetadataState();
  v5 = v3(a1, v4, v2);
  MEMORY[0x1D3868CC0](v5);

  return 0;
}

uint64_t sub_1CF34E6B8(uint64_t a1)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000037, 0x80000001CFA42200);
  swift_getAssociatedTypeWitness();
  v2 = *(swift_getAssociatedConformanceWitness() + 8);
  v3 = *(v2 + 32);
  v4 = swift_checkMetadataState();
  v5 = v3(a1, v4, v2);
  MEMORY[0x1D3868CC0](v5);

  MEMORY[0x1D3868CC0](0x61747320444E4120, 0xED0000203D206574);
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  return 0;
}

uint64_t sub_1CF34E82C(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDEAD4D8 != -1)
  {
    swift_once();
  }

  if ([qword_1EDEBBC10 preventRunning])
  {
    v8 = 0;
  }

  else if (*(v3 + qword_1EDEBBB18) && (sub_1CF35A168() & 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = a1;
    v9 = (*(a3 + 24))(sub_1CF34E940, 0, a2, a3);
    if (!v4)
    {
      v10 = v9;
      v8 = [v9 next];
    }
  }

  return v8 & 1;
}

uint64_t sub_1CF34E940()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA423A0);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0x7461747320524F20, 0xEC000000203D2065);
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  return 0;
}

uint64_t sub_1CF34EA34(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a3;
  v55 = a4;
  v53 = a2;
  v6 = *(*v4 + 80);
  v7 = *(*v4 + 88);
  v8 = *(*v4 + 104);
  v49 = *(*v4 + 96);
  v50 = v6;
  v56 = v6;
  v57 = v7;
  v58 = v49;
  v59 = v8;
  v9 = type metadata accessor for PersistenceTrigger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v12);
  v47 = &v44 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v44 - v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = *(AssociatedTypeWitness - 8);
  v19 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v45 = &v44 - v20;
  v51 = a1;
  v52 = v10;
  v21 = *(v10 + 16);
  v21(v18, a1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 22)
  {
    if (EnumCaseMultiPayload == 14)
    {
      v23 = v47;
      v44 = v9;
      v21(v47, v18, v9);
      v24 = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v26 = v23;
      v27 = AssociatedTypeWitness;
      v28 = swift_getAssociatedConformanceWitness();
      v56 = v24;
      v57 = v27;
      v58 = AssociatedConformanceWitness;
      v59 = v28;
      v29 = type metadata accessor for ReconciliationID();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v30 = v26[*(swift_getTupleTypeMetadata2() + 48)];
        v31 = v30 > 0x17;
        v32 = (1 << v30) & 0x800042;
        if (!v31 && v32 != 0)
        {
          v35 = v45;
          v34 = v46;
          (*(v46 + 32))(v45, v26, v27);
          v36 = (*(v52 + 8))(v18, v44);
          MEMORY[0x1EEE9AC00](v36);
          v38 = v54;
          v37 = v55;
          *(&v44 - 4) = v54;
          *(&v44 - 3) = v37;
          v39 = v53;
          *(&v44 - 2) = v35;
          *(&v44 - 1) = v39;
          v40 = v60;
          sub_1CF34DFE8(v39, sub_1CF3560D0, (&v44 - 6), v38, v37);
          if (v40)
          {
            return (*(v34 + 8))(v35, v27);
          }

          result = (*(v34 + 8))(v35, v27);
          goto LABEL_16;
        }

        (*(v46 + 8))(v26, v27);
      }

      else
      {
        (*(*(v29 - 8) + 8))(v26, v29);
      }

      v9 = v44;
    }

    goto LABEL_15;
  }

  v21(v14, v18, v9);
  if ((*v14 & 0x8000000000000000) == 0)
  {
    v42 = *v14;
LABEL_12:

LABEL_15:
    result = (*(v52 + 8))(v18, v9);
    v38 = v54;
    v37 = v55;
    v39 = v53;
    goto LABEL_16;
  }

  v56 = v7;
  v57 = v50;
  v58 = v8;
  v59 = v49;
  type metadata accessor for DiskImport.DiskImportFinished();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_12;
  }

  v39 = v53;
  v38 = v54;
  v37 = v55;
  v43 = v60;
  sub_1CF34A458(v53);
  if (v43)
  {

    return (*(v52 + 8))(v18, v9);
  }

  result = (*(v52 + 8))(v18, v9);
LABEL_16:
  if (*(v4 + qword_1EDEBBB18))
  {

    sub_1CF35FFA8(v51, v39, v38, v37);
  }

  return result;
}

uint64_t sub_1CF34EFDC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v28 = a6;
  v7 = *(*a1 + 88);
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 104);
  v10 = *(*a1 + 96);
  v33 = v7;
  v34 = v8;
  v35 = v9;
  v36 = v10;
  v11 = type metadata accessor for ItemReconciliation();
  v12 = sub_1CF9E75D8();
  v27 = *(v12 - 8);
  v13 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - v14;
  v16 = a1[2];
  v17 = v37;
  result = sub_1CF68E230(v30, v31, v32, *(v29 + 8), &v27 - v14);
  if (!v17)
  {
    v19 = v12;
    v32 = v10;
    v20 = v8;
    v21 = v7;
    v22 = v27;
    v23 = v28;
    v37 = 0;
    v24 = *(v11 - 8);
    if ((*(v24 + 48))(v15, 1, v11) == 1)
    {
      (*(v22 + 8))(v15, v19);
      v33 = v20;
      v34 = v21;
      v35 = v32;
      v36 = v9;
      v25 = type metadata accessor for ItemReconciliation();
      v26 = 1;
    }

    else
    {
      sub_1CF07EE34(v11, v23);
      (*(v24 + 8))(v15, v11);
      v33 = v20;
      v34 = v21;
      v35 = v32;
      v36 = v9;
      v25 = type metadata accessor for ItemReconciliation();
      v26 = 0;
    }

    return (*(*(v25 - 8) + 56))(v23, v26, 1);
  }

  return result;
}

void sub_1CF34F270(uint64_t a1, void *a2, void (*a3)(uint64_t (*)(), _BYTE *, __n128), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *v6;
  v12 = type metadata accessor for FPDownloadSchedulerFastPassState();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v25[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = a5;
  v27 = a6;
  v28 = a2;
  v29 = v6;
  a3(sub_1CF3560C4, v25, v14);
  v17 = *(v6 + qword_1EDEAC820);
  if (v17)
  {
    v18 = *(*v17 + 136);
    swift_beginAccess();
    sub_1CF355EF8(v17 + v18, v16);
    sub_1CF342D64(a2);
    sub_1CF355E9C(v16);
  }

  v19 = (*(a6 + 24))(sub_1CF34F8C4, 0, a5, a6);
  if ([v19 next])
  {
    do
    {
      v20 = objc_autoreleasePoolPush();
      v21 = v11[10];
      v22 = v11[11];
      v23 = v11[12];
      v24 = v11[13];
      sub_1CF34F8E0(v19, a2);
      objc_autoreleasePoolPop(v20);
    }

    while (([v19 next] & 1) != 0);
  }
}

uint64_t sub_1CF34F50C(void *a1, void *a2)
{
  v4 = *a2;
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  sub_1CF9E7948();

  if (*(a2 + qword_1EDEBBAF0))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(a2 + qword_1EDEBBAF0))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v7, v8);

  sub_1CF4FB2BC(0xD000000000000015, 0x80000001CFA42550, v5, v6);

  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1CF9E7948();

  if (qword_1EDEAD4D8 != -1)
  {
    swift_once();
  }

  v11 = [qword_1EDEBBC10 description];
  v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v14 = v13;

  MEMORY[0x1D3868CC0](v12, v14);

  sub_1CF4FB2BC(v22, v25, v9, v10);

  if (*(a2 + qword_1EDEBBB18))
  {
    v16 = a1[3];
    v17 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v16);
    *&v23 = 0;
    *(&v23 + 1) = 0xE000000000000000;

    sub_1CF9E7948();
    v27 = v23;
    MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA425B0);
    v24 = *(v4 + 80);
    v26 = *(v4 + 96);
    type metadata accessor for BackgroundDownloaderPacer();
    swift_getWitnessTable();
    sub_1CF9E7FE8();
    sub_1CF4FB2BC(v27, *(&v27 + 1), v16, v17);
  }

  if (*(a2 + qword_1EDEBBAD0))
  {
    v18 = a1[3];
    v19 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v18);

    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA42590);
    v20 = *(v4 + 88);
    v21 = *(v4 + 104);
    type metadata accessor for SpeculativeDownloadsDiskManagement();
    swift_getWitnessTable();
    sub_1CF9E7FE8();
    sub_1CF4FB2BC(0, 0xE000000000000000, v18, v19);
  }

  return result;
}

uint64_t sub_1CF34F8E0(void *a1, void *a2)
{
  v29 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  v5 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v23 - v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = *(*(AssociatedConformanceWitness + 8) + 16);
  v10 = a1;
  result = v9();
  if (!v2)
  {
    v12 = v29;
    v13 = v26;
    v25 = 0;
    v14 = [v10 longAtIndex_];
    if (v14 > 2)
    {
      sub_1CF1DA5D8();
      swift_allocError();
      *v20 = 0;
      swift_willThrow();
      return (*(v13 + 8))(v7, AssociatedTypeWitness);
    }

    else
    {
      v15 = v14;
      v16 = [v10 longAtIndex_];
      v17 = v12[3];
      v24 = v12[4];
      __swift_project_boxed_opaque_existential_1(v12, v17);
      v27 = 0;
      v28 = 0xE000000000000000;
      if (v15)
      {
        if (v15 == 1)
        {
          v18 = 0x208FB8EFB696E2;
        }

        else
        {
          v18 = 0x20919B9FF0;
        }

        if (v15 == 1)
        {
          v19 = 0xA700000000000000;
        }

        else
        {
          v19 = 0xA500000000000000;
        }
      }

      else
      {
        v19 = 0xA400000000000000;
        v18 = 548638690;
      }

      MEMORY[0x1D3868CC0](v18, v19);

      MEMORY[0x1D3868CC0](32, 0xE100000000000000);
      v21 = *(AssociatedConformanceWitness + 16);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
      v22 = sub_1CF7F5068(v16);
      MEMORY[0x1D3868CC0](v22);

      sub_1CF4FB2BC(v27, v28, v17, v24);

      return (*(v13 + 8))(v7, AssociatedTypeWitness);
    }
  }

  return result;
}

uint64_t sub_1CF34FBA4(uint64_t a1, uint64_t a2)
{
  v7[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v8 = 0;
  v9 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD000000000000038, 0x80000001CFA42010);
  v7[3] = MEMORY[0x1E69E6530];
  v7[0] = a2;
  v3 = sub_1CEFF8EA0(v7);
  v5 = v4;
  sub_1CEFCCC44(v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v5)
  {
    MEMORY[0x1D3868CC0](v3, v5);

    MEMORY[0x1D3868CC0](0x30203D212029, 0xE600000000000000);
    return v8;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF34FCD8(void (*a1)(char *), uint64_t a2, void *a3)
{
  v12[1] = a2;
  v13 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = v12 - v8;
  v10 = *(swift_getAssociatedConformanceWitness() + 8);
  result = (*(v10 + 16))(a3, 0, AssociatedTypeWitness, v10);
  if (!v3)
  {
    v13(v9);
    return (*(v6 + 8))(v9, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_1CF34FE4C()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000007CLL, 0x80000001CFA412F0);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0x30203D212029, 0xE600000000000000);
  return 0;
}

uint64_t sub_1CF34FEFC()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000007ELL, 0x80000001CFA41250);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA412D0);
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  MEMORY[0x1D3868CC0](0xD000000000000034, 0x80000001CFA410D0);
  v2 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v2);

  MEMORY[0x1D3868CC0](0x444E450A3B29, 0xE600000000000000);
  return 0;
}

uint64_t sub_1CF35005C()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000090, 0x80000001CFA41110);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA411B0);
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA411D0);
  v2 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v2);

  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA411F0);
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  MEMORY[0x1D3868CC0](0xD000000000000035, 0x80000001CFA41210);
  v4 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v4);

  MEMORY[0x1D3868CC0](0x444E450A3B29, 0xE600000000000000);
  return 0;
}

uint64_t sub_1CF350244()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000007ELL, 0x80000001CFA41030);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA410B0);
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  MEMORY[0x1D3868CC0](0xD000000000000034, 0x80000001CFA410D0);
  v2 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v2);

  MEMORY[0x1D3868CC0](0x444E450A3B29, 0xE600000000000000);
  return 0;
}

uint64_t sub_1CF3503BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v39 = a4;
  v10 = *(*v4 + 104);
  v11 = *(*v4 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_1CF9E75D8();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v33 - v16;
  v18 = *(AssociatedTypeWitness - 8);
  v19 = *(v18 + 64);
  result = MEMORY[0x1EEE9AC00](v15);
  v23 = &v33 - v22;
  v24 = v4[2];
  if (v24)
  {
    v34 = v23;
    v35 = v21;
    v37 = result;
    v38 = a3;
    v36 = v4;
    v25 = v4[3];

    v27 = v24(v26);
    result = sub_1CEFF7124(v24);
    if (v27)
    {
      v33 = v18;
      v28 = *(**(v27 + 16) + 160);
      v29 = *(v39 + 8);

      v28(a1, a2, v38, v29);

      if (v6)
      {
      }

      else
      {
        v30 = v33;
        if ((*(v33 + 48))(v17, 1, AssociatedTypeWitness) == 1)
        {

          return (*(v35 + 8))(v17, v37);
        }

        else
        {
          v31 = v34;
          (*(v30 + 32))(v34, v17, AssociatedTypeWitness);
          if (*(v36 + qword_1EDEBBAD0))
          {
            v32 = *(v36 + qword_1EDEBBAD0);

            sub_1CF1C43CC();
          }

          return (*(v30 + 8))(v31, AssociatedTypeWitness);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1CF3506B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v79 = a1;
  v7 = v6;
  v77 = a4;
  v78 = a6;
  v11 = *v6;
  v12 = *(*v6 + 96);
  v13 = *(*v6 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v73 = *(AssociatedTypeWitness - 8);
  v15 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v75 = (&v65 - v16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v21 = &v65 - v20;
  v22 = *(v7 + 16);
  if (!v22)
  {
    return v79;
  }

  v71 = v21;
  v72 = a2;
  v68 = v19;
  v69 = v18;
  v70 = AssociatedTypeWitness;
  v23 = *(v7 + 24);

  v25 = v22(v24);
  sub_1CEFF7124(v22);
  if (!v25)
  {
    return v79;
  }

  v74 = a5;
  v26 = *(v7 + qword_1EDEBBAD0);
  if (!v26)
  {
    goto LABEL_8;
  }

  result = sub_1CF5DA5A8(8u);
  v29 = *(result + 16);
  v28 = *(result + 24);
  v30 = __OFSUB__(v28, v29);
  v31 = v28 - v29;
  if (v30)
  {
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    return result;
  }

  if (v31 < 1)
  {
LABEL_8:

    return v79;
  }

  v32 = result;
  v33 = *(v78 + 8);
  v66 = *(v33 + 24);

  v67 = v25;

  v34 = a3;
  v35 = v32;
  v36 = v80;
  v37 = (v66)(v34, v77, v74, v33);
  v80 = v36;
  if (v36)
  {
  }

  v38 = v37;
  v77 = v26;
  v66 = v35;
  v86 = sub_1CF9E65E8();
  v84 = 0;
  v85 = 0;
  if (![v38 next])
  {
LABEL_32:

    return v79;
  }

  v39 = v78;
  do
  {
    v40 = objc_autoreleasePoolPush();
    v41 = v80;
    sub_1CF350EA8(v38, &v86, &v84, &v85, v13, *(v11 + 88), v74, v12, *(v11 + 104), v39, &v83);
    v80 = v41;
    if (v41)
    {

      v80 = v83;
      objc_autoreleasePoolPop(v40);
    }

    objc_autoreleasePoolPop(v40);
  }

  while (([v38 next] & 1) != 0);
  if (v85 < 1)
  {
    goto LABEL_32;
  }

  v65 = v38;
  v42 = sub_1CF033B88();

  if ((v42 & 0x40000) == 0 || (v43 = [objc_opt_self() defaultStore], v44 = objc_msgSend(v43, sel_useCacheDeleteWhenReachingLowerBound), v43, v44))
  {
    v45 = v84;
    v46 = swift_allocObject();
    v46[2] = v74;
    v46[3] = v39;
    v46[4] = v67;

    sub_1CF1C2B1C(v45, sub_1CF35607C, v46);
  }

  v83 = v79;
  v82 = 0;
  v47 = v86;

  v48 = TupleTypeMetadata2;
  if (sub_1CF9E6DF8())
  {
    v38 = 0;
    v49 = (v69 + 16);
    v50 = (v73 + 32);
    v51 = (v73 + 8);
    while (1)
    {
      v52 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v52)
      {
        (*(v69 + 16))(v71, v47 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v38, v48);
        v53 = (v38 + 1);
        if (__OFADD__(v38, 1))
        {
          goto LABEL_31;
        }
      }

      else
      {
        result = sub_1CF9E7998();
        if (v68 != 8)
        {
          goto LABEL_44;
        }

        v81 = result;
        v48 = TupleTypeMetadata2;
        (*v49)(v71, &v81, TupleTypeMetadata2);
        swift_unknownObjectRelease();
        v53 = (v38 + 1);
        if (__OFADD__(v38, 1))
        {
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }
      }

      v54 = *&v71[*(v48 + 48)];
      result = (*v50)(v75);
      v56 = *(v66 + 16);
      v55 = *(v66 + 24);
      v30 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v30)
      {
        goto LABEL_43;
      }

      if (v57 < 1)
      {

        (*v51)(v75, v70);
        v39 = v78;
        goto LABEL_37;
      }

      v58 = objc_autoreleasePoolPush();
      v59 = v54;
      v60 = v75;
      v61 = v80;
      sub_1CF351120(v67, v59, v7, v75, v72, &v82, v77, &v83, v74, v78, &v81);
      v80 = v61;
      if (v61)
      {
        break;
      }

      objc_autoreleasePoolPop(v58);
      (*v51)(v60, v70);
      v48 = TupleTypeMetadata2;
      v62 = sub_1CF9E6DF8();
      ++v38;
      v39 = v78;
      if (v53 == v62)
      {
        goto LABEL_35;
      }
    }

    v80 = v81;
    objc_autoreleasePoolPop(v58);

    (*v51)(v60, v70);
  }

LABEL_35:

LABEL_37:
  if (v82 == 1)
  {
    v63 = swift_allocObject();
    v63[2] = v74;
    v63[3] = v39;
    v63[4] = v7;

    sub_1CF92DE44("startSpeculativeBackgroundDownloads(currentDownloadsCount:with:matching:)", 73, 2u, sub_1CF045408, 0, nullsub_1, 0, sub_1CF35605C, v63);
  }

  else
  {
  }

  v64 = v65;

  return v83;
}

uint64_t sub_1CF350EA8(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v30 = a4;
  v32 = a2;
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(*(TupleTypeMetadata2 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = &v30 - v16;
  v31 = *(AssociatedTypeWitness - 8);
  v18 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v30 - v19;
  v21 = *(*(swift_getAssociatedConformanceWitness() + 8) + 16);
  v22 = a1;
  v23 = v34;
  result = v21();
  if (v23)
  {
    *a11 = v23;
    return result;
  }

  v25 = v30;
  v34 = 0;
  v26 = [v22 longAtIndex_];
  v27 = [v22 longLongAtIndex_];
  v28 = *(TupleTypeMetadata2 + 48);
  v29 = v31;
  (*(v31 + 16))(v17, v20, AssociatedTypeWitness);
  *&v17[v28] = v26;
  sub_1CF9E6E58();
  sub_1CF9E6E18();
  result = (*(v29 + 8))(v20, AssociatedTypeWitness);
  if (__OFADD__(*v33, v27))
  {
    __break(1u);
    goto LABEL_8;
  }

  *v33 += v27;
  if (__OFADD__(*v25, 1))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  ++*v25;
  return result;
}

void (*sub_1CF351120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, _BYTE *a6, uint64_t *a7, void *a8, uint64_t a9, uint64_t a10, void *a11))(uint64_t *, void)
{
  v134 = a8;
  v151 = a7;
  v135 = a6;
  v162 = a4;
  v163 = a5;
  v159 = a3;
  v161 = a10;
  v164 = a9;
  v13 = *a1;
  v139 = sub_1CF9E5CF8();
  v138 = *(v139 - 8);
  v14 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v140 = (&v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = v13[329];
  v145 = v13[331];
  v144 = v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v146 = *(AssociatedTypeWitness - 8);
  v17 = *(v146 + 64);
  v18 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v143 = &v132 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v142 = &v132 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v136 = &v132 - v22;
  v23 = sub_1CF9E6118();
  v148 = *(v23 - 8);
  v149 = v23;
  v24 = *(v148 + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v150 = (&v132 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25);
  v141 = &v132 - v27;
  v28 = v13[330];
  v29 = v13[332];
  v30 = type metadata accessor for SnapshotItem();
  v31 = sub_1CF9E75D8();
  v152 = *(v31 - 8);
  v32 = *(v152 + 64);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v132 - v34;
  v154 = v30;
  v155 = *(v30 - 8);
  v36 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v153 = &v132 - v37;
  v137 = v28;
  v38 = swift_getAssociatedTypeWitness();
  v39 = sub_1CF9E75D8();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = &v132 - v43;
  v158 = v38;
  v157 = *(v38 - 8);
  v45 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v156 = &v132 - v46;
  if ((sub_1CF033B88() & 0x40000) != 0 && a2 == 16)
  {
    v47 = v160;
    result = sub_1CF348CFC(v162, 16, v163, v164, v161);
    if (!v47)
    {
      return result;
    }

LABEL_6:
    *a11 = v47;
    return result;
  }

  v133 = v29;
  v49 = *(v161 + 8);
  v47 = v160;
  result = (*(**(a1 + 16) + 160))(v162, v163, v164, v49);
  if (v47)
  {
    goto LABEL_6;
  }

  v132 = v49;
  v160 = 0;
  v50 = v158;
  v51 = v157;
  if ((*(v157 + 48))(v44, 1, v158) == 1)
  {
    return (*(v40 + 8))(v44, v39);
  }

  v52 = v156;
  (*(v51 + 32))(v156, v44, v50);
  v53 = v160;
  (*(**(a1 + 40) + 240))(v52, 1, v163, v164, v132);
  v160 = v53;
  if (v53)
  {
    v54 = (v51 + 8);
LABEL_11:
    v55 = v158;
LABEL_12:
    result = (*v54)(v52, v55);
    v47 = v160;
    goto LABEL_6;
  }

  v57 = v154;
  v56 = v155;
  if ((*(v155 + 48))(v35, 1, v154) == 1)
  {
    (*(v51 + 8))(v52, v158);
    return (*(v152 + 8))(v35, v31);
  }

  v58 = v153;
  (*(v56 + 32))(v153, v35, v57);
  if (a2 == 64 && *(v159 + qword_1EDEBBB18))
  {
    v59 = *(v159 + qword_1EDEBBB18);

    if ((sub_1CF364F00(v58) & 1) == 0)
    {
      v102 = fpfs_current_or_default_log();
      v103 = v141;
      sub_1CF9E6128();
      v104 = v146;
      v105 = *(v146 + 16);
      v106 = v136;
      v107 = AssociatedTypeWitness;
      v105(v136, v162, AssociatedTypeWitness);
      v108 = sub_1CF9E6108();
      LODWORD(v152) = sub_1CF9E7288();
      if (os_log_type_enabled(v108, v152))
      {
        v109 = swift_slowAlloc();
        v140 = v105;
        v110 = v109;
        v143 = v109;
        v151 = swift_slowAlloc();
        *&v165[0] = v151;
        *v110 = 136446210;
        v150 = v108;
        v111 = v142;
        v140(v142, v106, v107);
        v112 = *(v104 + 8);
        v112(v106, v107);
        v113 = *(swift_getAssociatedConformanceWitness() + 16);
        v114 = sub_1CF9E7F98();
        v116 = v115;
        v112(v111, v107);
        v117 = sub_1CEFD0DF0(v114, v116, v165);

        v118 = v143;
        *(v143 + 4) = v117;
        v119 = v150;
        _os_log_impl(&dword_1CEFC7000, v150, v152, "🔮  unscheduling download of item %{public}s not in the speculative set anymore", v118, 0xCu);
        v120 = v151;
        __swift_destroy_boxed_opaque_existential_1(v151);
        MEMORY[0x1D386CDC0](v120, -1, -1);
        MEMORY[0x1D386CDC0](v118, -1, -1);

        (*(v148 + 8))(v141, v149);
      }

      else
      {
        (*(v104 + 8))(v106, v107);

        (*(v148 + 8))(v103, v149);
      }

      v52 = v156;
      v121 = v160;
      sub_1CF348CFC(v162, 64, v163, v164, v161);
      v160 = v121;
      v122 = v153;
      if (!v121)
      {

        (*(v155 + 8))(v122, v57);
        result = (*(v157 + 8))(v52, v158);
        *v135 = 1;
        return result;
      }

      (*(v155 + 8))(v122, v57);
      goto LABEL_38;
    }
  }

  v60 = v58 + *(v57 + 48);
  v61 = type metadata accessor for ItemMetadata();
  v62 = sub_1CF1C3FAC(*(v60 + *(v61 + 104)));
  if (v62)
  {
    MEMORY[0x1EEE9AC00](v62);
    v64 = v163;
    v65 = v164;
    v67 = v161;
    v66 = v162;
    *(&v132 - 4) = v164;
    *(&v132 - 3) = v67;
    v68 = v160;
    v131 = v159;
    sub_1CF349BB8(v66, v64, sub_1CF3560A8, (&v132 - 6), v65, v67);
    v160 = v68;
    if (v68)
    {
      (*(v155 + 8))(v153, v57);
LABEL_38:
      v54 = (v157 + 8);
      goto LABEL_11;
    }

    *&v92 = v144;
    *(&v92 + 1) = v137;
    *&v93 = v145;
    *(&v93 + 1) = v133;
    v165[1] = v93;
    v165[0] = v92;
    type metadata accessor for ConcreteJobResult();
    v159 = sub_1CF056580();
    v94 = v140;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v96 = v95;
    v97 = v139;
    v152 = *(v138 + 8);
    result = (v152)(v94, v139);
    v98 = v96 * 1000000000.0;
    if (COERCE__INT64(fabs(v96 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v98 > -9.22337204e18)
    {
      v99 = v160;
      v100 = v158;
      if (v98 < 9.22337204e18)
      {
        if ((a2 & 0x2C) != 0)
        {
          v101 = 0x1000000;
          goto LABEL_51;
        }

        if ((a2 & 0x10) != 0)
        {
          if ((a2 & 0x80) != 0)
          {
            v101 = 0x200401000000;
          }

          else
          {
            if ((a2 & 0x140) == 0)
            {
              v101 = 0x401000000;
              if ((a2 & 1) == 0)
              {
                goto LABEL_51;
              }

              goto LABEL_50;
            }

            v101 = 0x4401000000;
          }
        }

        else
        {
          if ((a2 & 0x80) == 0)
          {
            if ((a2 & 0x140) != 0)
            {
              v101 = 0x4001000000;
              goto LABEL_49;
            }

            v101 = 0x1000000;
            if ((a2 & 1) == 0)
            {
LABEL_51:
              v123 = v159;
              sub_1CF5666D4(v162, 0, v98, v101, a1, 0, v159, v163, v164, v132);
              v160 = v99;
              if (v99)
              {

                (*(v155 + 8))(v153, v57);
                v54 = (v157 + 8);
                v55 = v100;
                goto LABEL_12;
              }

              v124 = v140;
              sub_1CF9E5CE8();
              sub_1CF9E5C98();
              v126 = v125;
              result = (v152)(v124, v97);
              v127 = v126 * 1000000000.0;
              if (COERCE__INT64(fabs(v126 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v127 > -9.22337204e18)
                {
                  v128 = v160;
                  v129 = v157;
                  if (v127 < 9.22337204e18)
                  {
                    sub_1CF521850(v123, v127, v163, v164, v161);
                    v130 = (v155 + 8);
                    v54 = (v129 + 8);
                    v160 = v128;
                    if (v128)
                    {

                      (*v130)(v153, v57);
                      goto LABEL_11;
                    }

                    sub_1CF1C41D8();

                    (*v130)(v153, v57);
                    result = (*v54)(v52, v158);
                    if (!__OFADD__(*v134, 1))
                    {
                      ++*v134;
                      return result;
                    }

LABEL_70:
                    __break(1u);
                    return result;
                  }

LABEL_69:
                  __break(1u);
                  goto LABEL_70;
                }

LABEL_68:
                __break(1u);
                goto LABEL_69;
              }

LABEL_67:
              __break(1u);
              goto LABEL_68;
            }

LABEL_50:
            v101 |= 0x10000000000uLL;
            goto LABEL_51;
          }

          v101 = 0x200001000000;
        }

LABEL_49:
        if ((a2 & 1) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      }

LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    __break(1u);
    goto LABEL_66;
  }

  v69 = v63;
  v70 = fpfs_current_or_default_log();
  v71 = v150;
  sub_1CF9E6128();
  v72 = v146;
  v73 = *(v146 + 16);
  v74 = v143;
  v75 = AssociatedTypeWitness;
  v73(v143, v162, AssociatedTypeWitness);
  v76 = sub_1CF9E6108();
  LODWORD(v164) = sub_1CF9E7298();
  if (os_log_type_enabled(v76, v164))
  {
    v77 = swift_slowAlloc();
    v163 = v69;
    v78 = v77;
    v162 = swift_slowAlloc();
    *&v165[0] = v162;
    *v78 = 136315138;
    v79 = v142;
    v73(v142, v74, v75);
    v80 = *(v72 + 8);
    v80(v74, v75);
    v81 = *(swift_getAssociatedConformanceWitness() + 16);
    v82 = v57;
    v83 = sub_1CF9E7F98();
    v85 = v84;
    v80(v79, v75);
    v86 = v83;
    v57 = v82;
    v87 = sub_1CEFD0DF0(v86, v85, v165);

    *(v78 + 4) = v87;
    _os_log_impl(&dword_1CEFC7000, v76, v164, "💾 download for file %s won't be scheduled due to disk management concerns", v78, 0xCu);
    v88 = v162;
    __swift_destroy_boxed_opaque_existential_1(v162);
    MEMORY[0x1D386CDC0](v88, -1, -1);
    v89 = v78;
    v69 = v163;
    MEMORY[0x1D386CDC0](v89, -1, -1);

    (*(v148 + 8))(v150, v149);
  }

  else
  {
    (*(v72 + 8))(v74, v75);

    (*(v148 + 8))(v71, v149);
  }

  v90 = v156;
  if (*(v159 + qword_1EDEBBB18))
  {
    v91 = *(v159 + qword_1EDEBBB18);

    sub_1CF3625E4(v69);
  }

  (*(v155 + 8))(v153, v57);
  return (*(v157 + 8))(v90, v158);
}

void *sub_1CF352144(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  result = __swift_project_boxed_opaque_existential_1(a1, v3);
  if (*(a2 + qword_1EDEBBB18))
  {
    v6 = result;

    sub_1CF35DA34(v6, v3, v4);
  }

  return result;
}

uint64_t sub_1CF3521C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = 0xD000000000000022;
  v9[3] = 0x80000001CFA42420;
  v9[4] = 0;
  v9[5] = 0xE000000000000000;

  v10 = sub_1CF3506B0(a1, a2, sub_1CF356004, v9, a3, a4);

  if (!v4)
  {
    v11 = swift_allocObject();
    v11[2] = 0xD000000000000022;
    v11[3] = 0x80000001CFA42420;
    v11[4] = 0;
    v11[5] = 0xE000000000000000;

    a4 = sub_1CF3506B0(v10, a2, sub_1CF355FF8, v11, a3, a4);
  }

  return a4;
}

void sub_1CF35230C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v84 = a3;
  v86 = a2;
  v87 = a1;
  v6 = *v3;
  v7 = v6[11];
  v8 = v6[13];
  v9 = type metadata accessor for SnapshotItem();
  v10 = sub_1CF9E75D8();
  v73 = *(v10 - 8);
  v74 = v10;
  v11 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v80 = &v58 - v12;
  v82 = *(v9 - 8);
  v13 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v79 = &v58 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = sub_1CF9E75D8();
  v75 = *(v17 - 8);
  v76 = v17;
  v18 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v81 = &v58 - v19;
  v77 = *(AssociatedTypeWitness - 8);
  v20 = *(v77 + 8);
  MEMORY[0x1EEE9AC00](v21);
  v83 = &v58 - v22;
  v23 = v6[12];
  v24 = v6[10];
  v25 = swift_getAssociatedTypeWitness();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v58 - v28;
  v30 = v5[2];
  if (v30)
  {
    v71 = v27;
    v72 = AssociatedTypeWitness;
    v78 = v29;
    v31 = v5[3];

    v33 = v30(v32);
    sub_1CEFF7124(v30);
    v85 = v33;
    if (v33)
    {
      v34 = v84;
      v35 = (*(v84 + 24))(sub_1CF352B98, 0, v86, v84);
      if (v4)
      {
      }

      else
      {
        v36 = v35;
        v70 = qword_1EDEBBAD0;
        if ([v35 next])
        {
          v62 = v9;
          v69 = *(swift_getAssociatedConformanceWitness() + 8);
          v67 = *(v69 + 16);
          v68 = v69 + 16;
          v65 = (v77 + 48);
          v64 = (v77 + 32);
          v61 = (v82 + 48);
          v59 = (v82 + 32);
          v58 = (v82 + 8);
          v63 = (v77 + 8);
          v37 = v72;
          ++v71;
          v38 = v86;
          v39 = v87;
          v40 = v78;
          v66 = v25;
          v60 = v36;
          while (1)
          {
            v77 = v36;
            v67();
            v82 = 0;
            v42 = v37;
            v43 = v34;
            v44 = *(**(v85 + 16) + 160);

            v45 = v81;
            v46 = v43;
            v47 = v82;
            v44(v40, v39, v38, v46);
            v82 = v47;
            if (v47)
            {

              (*v71)(v78, v66);
              return;
            }

            v48 = v42;
            if ((*v65)(v45, 1, v42) == 1)
            {

              (*v71)(v78, v66);
              (*(v75 + 8))(v45, v76);
              return;
            }

            v49 = v83;
            (*v64)(v83, v45, v48);
            v50 = *(v85 + 40);

            v51 = v80;
            v38 = v86;
            v34 = v84;
            v52 = v82;
            (*(*v50 + 240))(v49, 1, v87, v86, v84);
            v37 = v48;
            if (v52)
            {

              (*v63)(v83, v48);
              (*v71)(v78, v66);
              return;
            }

            v53 = v62;
            if ((*v61)(v51, 1, v62) == 1)
            {
              break;
            }

            v54 = v79;
            (*v59)();
            v55 = type metadata accessor for ItemMetadata();
            v56 = v83;
            if (*(v5 + v70))
            {
              v57 = *&v54[*(v53 + 48) + *(v55 + 104)];

              sub_1CF1C41D8();
            }

            (*v58)(v54, v53);
            (*v63)(v56, v37);
            v40 = v78;
            (*v71)(v78, v66);
            v41 = [v77 next];
            v36 = v60;
            v39 = v87;
            if ((v41 & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          (*v63)(v83, v37);
          (*v71)(v78, v66);
          (*(v73 + 8))(v51, v74);
        }

        else
        {
LABEL_14:
        }
      }
    }
  }
}

uint64_t sub_1CF352B98()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA423A0);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA423E0);
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA42400);
  return 0;
}

uint64_t sub_1CF352CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25 = a2;
  v6 = sub_1CF9E6118();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = sub_1CF9E64A8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v24[2] = v7;
    v15 = *(v4 + 16);
    if (!v15)
    {
      goto LABEL_7;
    }

    v24[1] = v6;
    v24[3] = result;
    v16 = *(v4 + 24);

    v18 = v15(v17);
    v19 = v15;
    v20 = v18;
    sub_1CEFF7124(v19);
    if (v20)
    {
      if (*(v4 + qword_1EDEBBB08))
      {
        v24[0] = v20;
        v21 = sub_1CF042F4C();
        *v13 = v21;
        (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9);
        v22 = v21;
        LOBYTE(v21) = sub_1CF9E64D8();
        result = (*(v10 + 8))(v13, v9);
        if (v21)
        {
          v23 = (*(a3 + 24))(sub_1CF353198, 0, v25, a3);
          if ([v23 next])
          {
            sub_1CF7AA71C([v23 longAtIndex_], objc_msgSend(v23, sel_longLongAtIndex_, 1));

            swift_unknownObjectRelease();
          }

          else
          {
            if (swift_unknownObjectWeakLoadStrong())
            {
              sub_1CF7AA71C(0, 0);
              swift_unknownObjectRelease();
            }

            swift_unknownObjectRelease();
          }
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_1CF7AA71C(0, 0);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {
LABEL_7:

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1CF353198()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000D5, 0x80000001CFA422A0);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA42380);
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  return 0;
}

uint64_t sub_1CF3532F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{

  LOBYTE(a3) = a3(v4);

  return a3 & 1;
}

id sub_1CF353330(id result)
{
  if (*(v1 + qword_1EDEBBAE0) == 1)
  {
    v2 = result;
    [result setResources_];
    result = [v2 setNetworkDownloadSize_];
    *(v1 + qword_1EDEBBAE0) = 3;
  }

  return result;
}

uint64_t sub_1CF3533A4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_1CF353330(v3);
}

uint64_t sub_1CF3533F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a3;
  v66 = a1;
  v5 = *v3;
  v6 = sub_1CF9E6118();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = sub_1CF9E64A8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = v3[2];
  if (!v14)
  {
    return 0;
  }

  v64 = a2;
  v15 = v3[3];

  v17 = v14(v16);
  sub_1CEFF7124(v14);
  if (!v17)
  {
    return 0;
  }

  v18 = sub_1CF042F4C();
  *v13 = v18;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9);
  v19 = v18;
  LOBYTE(v18) = sub_1CF9E64D8();
  result = (*(v10 + 8))(v13, v9);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  result = sub_1CF5DA5A8(8u);
  v22 = *(result + 16);
  v21 = *(result + 24);
  v23 = v21 - v22;
  if (__OFSUB__(v21, v22))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v23 < 1)
  {

    return 0;
  }

  v61 = v6;
  v62 = v7;
  v25 = v5[10];
  v24 = v5[11];
  v26 = v5[12];
  v27 = v5[13];
  v63 = result;

  v28 = sub_1CF3547C0(0xD000000000000010, 0x80000001CFA42280, v23, 0);
  result = sub_1CF354898(v23, v66, v28, v29, v25, v24, v64, v26, v27, v65);
  v57 = "nd_downloader\n WHERE state = ";
  v58 = v24;
  v59 = v25;
  v60 = v26;
  if (result >= v23)
  {
    v38 = result;

LABEL_14:

    return v38;
  }

  v54 = v30;
  v55 = result;
  v31 = v23 - result;
  if (__OFSUB__(v23, result))
  {
    goto LABEL_26;
  }

  v32 = v58;
  v34 = v59;
  v33 = v60;
  v56 = sub_1CF354988(0xD000000000000010, v57 | 0x8000000000000000, v31, 0);
  v36 = v35;

  v37 = v36;

  v39 = sub_1CF354898(v31, v66, v56, v36, v34, v32, v64, v33, v27, v65);
  v41 = v40;
  v56 = v37;

  v42 = v55 + v39;
  if (__OFADD__(v55, v39))
  {
    goto LABEL_27;
  }

  v43 = __OFADD__(v54, v41);
  v44 = v54 + v41;
  v46 = v59;
  v45 = v60;
  v47 = v58;
  if (v43)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v39 >= v31)
  {
LABEL_23:
    v38 = v42;

    goto LABEL_14;
  }

  v54 = v44;
  v55 += v39;
  v43 = __OFSUB__(v31, v39);
  v48 = v31 - v39;
  if (v43)
  {
    goto LABEL_29;
  }

  v57 = sub_1CF354A60(0xD000000000000010, v57 | 0x8000000000000000, v48, 0);
  v50 = v49;

  v51 = sub_1CF354898(v48, v66, v57, v50, v46, v47, v64, v45, v27, v65);
  v53 = v52;

  result = v55 + v51;
  if (__OFADD__(v55, v51))
  {
LABEL_30:
    __break(1u);
    return result;
  }

  if (__OFADD__(v54, v53))
  {
    __break(1u);
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_1CF353998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1CF9E6118();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = fpfs_supports_bgst_improvements();
  if (result)
  {
    if (*(v3 + qword_1EDEBBAE0) <= 1uLL)
    {
      v13 = a3;
      v14 = v3;
      result = sub_1CF3533F4(a1, a2, v13);
      *(v3 + qword_1EDEAC808) = v15;
      if (result >= 1)
      {
        v16 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v17 = sub_1CF9E6108();
        v18 = sub_1CF9E7288();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_1CEFC7000, v17, v18, "⏰ background download prepared to download", v19, 2u);
          MEMORY[0x1D386CDC0](v19, -1, -1);
        }

        (*(v8 + 8))(v11, v7);
        *(v14 + qword_1EDEBBAE0) = 1;
        return sub_1CF345C98();
      }
    }
  }

  return result;
}

void sub_1CF353B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (fpfs_supports_bgst_improvements())
  {
    v20 = v3;
    v13 = (*(a3 + 24))(sub_1CF3569A8, 0, a2, a3);
    if (!v4)
    {
      v14 = v13;
      [v13 next];
      if (![v14 longAtIndex_])
      {
        v15 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v16 = sub_1CF9E6108();
        HIDWORD(v18) = sub_1CF9E7288();
        v19 = v16;
        if (os_log_type_enabled(v16, BYTE4(v18)))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&dword_1CEFC7000, v19, BYTE4(v18), "⏰ background download return to pending state", v17, 2u);
          MEMORY[0x1D386CDC0](v17, -1, -1);
        }

        (*(v9 + 8))(v12, v8);
        *(v20 + qword_1EDEBBAE0) = 0;
        sub_1CF345E30();
        sub_1CF353998(a1, a2, a3);
      }
    }
  }
}

uint64_t sub_1CF353D60()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000003DLL, 0x80000001CFA42240);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  return 0;
}

uint64_t *sub_1CF353DF8()
{
  v1 = v0[3];
  sub_1CEFF7124(v0[2]);
  v2 = v0[5];

  v3 = qword_1EDEAC810;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEC40, &qword_1CFA03260);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v6 = *(v0 + qword_1EDEBBAC8);

  v5(v0 + qword_1EDEAC7F8, v4);
  v7 = *(v0 + qword_1EDEAC7F0);

  v8 = *(v0 + qword_1EDEBBAC0);

  v9 = *(v0 + qword_1EDEBBAD0);

  v10 = *(v0 + qword_1EDEBBB18);

  v11 = *(v0 + qword_1EDEBBAD8 + 112);
  v17[6] = *(v0 + qword_1EDEBBAD8 + 96);
  v17[7] = v11;
  v17[8] = *(v0 + qword_1EDEBBAD8 + 128);
  v12 = *(v0 + qword_1EDEBBAD8 + 48);
  v17[2] = *(v0 + qword_1EDEBBAD8 + 32);
  v17[3] = v12;
  v13 = *(v0 + qword_1EDEBBAD8 + 80);
  v17[4] = *(v0 + qword_1EDEBBAD8 + 64);
  v17[5] = v13;
  v14 = *(v0 + qword_1EDEBBAD8 + 16);
  v17[0] = *(v0 + qword_1EDEBBAD8);
  v17[1] = v14;
  sub_1CF338754(v17);
  sub_1CF02B994(v0 + qword_1EDEBBB10);
  sub_1CEFCCC44(v0 + qword_1EDEBBB00, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v15 = *(v0 + qword_1EDEAC820);

  return v0;
}

uint64_t sub_1CF353F88()
{
  sub_1CF353DF8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1CF35414C()
{
  sub_1CF3543C8(319, &qword_1EDEAEE00, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1CF1A694C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

uint64_t type metadata accessor for FPDownloadSchedulerFastPassState()
{
  result = qword_1EDEA4A20;
  if (!qword_1EDEA4A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CF354328()
{
  sub_1CF1A694C();
  if (v0 <= 0x3F)
  {
    sub_1CF3543C8(319, &qword_1EDEA3740, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CF3543C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6530]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1CF35441C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a4;
  v37 = a5;
  v35 = a3;
  v38 = a1;
  v6 = *a2;
  v7 = *(*a2 + 104);
  v8 = *(*a2 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1CF9E75D8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v35 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v13);
  v20 = &v35 - v19;
  *&v21 = *(v6 + 96);
  *&v22 = *(v6 + 80);
  *(&v22 + 1) = v8;
  *(&v21 + 1) = v7;
  v23 = v18;
  v39 = v22;
  v40 = v21;
  v24 = type metadata accessor for ItemReconciliation();
  (*(v11 + 16))(v15, v38 + *(v24 + 52), v23);
  if ((*(v16 + 48))(v15, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v15, v23);
    LOBYTE(v25) = 0;
  }

  else
  {
    (*(v16 + 32))(v20, v15, AssociatedTypeWitness);
    v25 = *a2[3] + 368;
    v26 = *v25;
    v28 = v35;
    v27 = v36;
    v29 = v37;
    v30 = v41;
    v31 = (*v25)(23, v20, 0, 0, v35, v36, v37);
    if (v30)
    {
      (*(v16 + 8))(v20, AssociatedTypeWitness);
    }

    else if (v31 & 1) != 0 || (v33 = v26(6, v20, 0, 0, v28, v27, v29), (v33))
    {
      (*(v16 + 8))(v20, AssociatedTypeWitness);
      LOBYTE(v25) = 1;
    }

    else
    {
      v34 = v26(1, v20, 0, 0, v28, v27, v29);
      LOBYTE(v25) = v34;
      (*(v16 + 8))(v20, AssociatedTypeWitness);
    }
  }

  return v25 & 1;
}

uint64_t (*sub_1CF3547C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1)
{
  if (a4)
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  else
  {
    v8 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v8);

    v6 = 0x2054494D494CLL;
    v7 = 0xE600000000000000;
  }

  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v6;
  v9[5] = v7;

  return sub_1CF356050;
}

uint64_t sub_1CF354898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = (*(a10 + 24))(a3, a4, a7);
  if (v10)
  {
    return v11;
  }

  v14 = v13;
  if (![v13 next])
  {
    v11 = 0;
LABEL_10:

    return v11;
  }

  v11 = 0;
  v15 = 0;
  v16 = a1 & ~(a1 >> 63);
  while (1)
  {
    if (v16 == v11)
    {
      v11 = v16;
      goto LABEL_10;
    }

    result = [v14 longLongAtIndex_];
    v18 = __OFADD__(v15, result);
    v15 += result;
    if (v18)
    {
      break;
    }

    ++v11;
    if (([v14 next] & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1CF354988(uint64_t a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1)
{
  if (a4)
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  else
  {
    v8 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v8);

    v6 = 0x2054494D494CLL;
    v7 = 0xE600000000000000;
  }

  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v6;
  v9[5] = v7;

  return sub_1CF356004;
}

uint64_t (*sub_1CF354A60(uint64_t a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1)
{
  if (a4)
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  else
  {
    v8 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v8);

    v6 = 0x2054494D494CLL;
    v7 = 0xE600000000000000;
  }

  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v6;
  v9[5] = v7;

  return sub_1CF355FF8;
}

void sub_1CF354B6C(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = a1;
  v13 = (*(a10 + 24))(sub_1CF355FA4, v17, a7, a10);
  if (!v10)
  {
    v14 = v13;
    if ([v13 next])
    {
      v16 = a3;
      v19 = a4;
      do
      {
        v15 = objc_autoreleasePoolPush();
        sub_1CF34FCD8(v16, v19, v14);
        objc_autoreleasePoolPop(v15);
      }

      while (([v14 next] & 1) != 0);
    }
  }
}

uint64_t sub_1CF354CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = a7;
  v13[7] = a8;
  v13[8] = a1;
  result = (*(a8 + 24))(a9, v13, a5, a8);
  if (v9)
  {
    return result;
  }

  v11 = result;
  if (![result next])
  {

    return 0;
  }

  v12 = [v11 longAtIndex_];

  if ((v12 & 0x2C) != 0)
  {
    return 0x1000000;
  }

  if ((v12 & 0x10) != 0)
  {
    if ((v12 & 0x80) != 0)
    {
      result = 0x200401000000;
    }

    else
    {
      if ((v12 & 0x140) == 0)
      {
        result = 0x401000000;
        if (v12)
        {
          return result | 0x10000000000;
        }

        return result;
      }

      result = 0x4401000000;
    }
  }

  else if ((v12 & 0x80) != 0)
  {
    result = 0x200001000000;
  }

  else
  {
    if ((v12 & 0x140) == 0)
    {
      result = 0x1000000;
      if (v12)
      {
        return result | 0x10000000000;
      }

      return result;
    }

    result = 0x4001000000;
  }

  if (v12)
  {
    return result | 0x10000000000;
  }

  return result;
}