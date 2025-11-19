uint64_t sub_251BBF6E4(uint64_t *a1, uint64_t *a2)
{
  if ((sub_251BBF35C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ClinicalSharingDataNodeInfo();
  if ((sub_251A92614(a1 + v4[5], (a2 + v4[5])) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[6];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = *(a1 + v5 + 16);
  v9 = *(a1 + v5 + 24);
  v10 = (a2 + v5);
  v11 = v10[2];
  v12 = v10[3];
  v13 = v6 == *v10 && v7 == v10[1];
  if (!v13 && (sub_251C719D4() & 1) == 0 || (sub_251A9D1F0(v8, v9, v11, v12) & 1) == 0)
  {
    return 0;
  }

  v14 = v4[7];

  return sub_251A911BC(a1 + v14, (a2 + v14));
}

void sub_251BBF7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_251AD96B8;
  *(v14 + 24) = v13;
  v15 = objc_allocWithZone(MEMORY[0x277CCDB98]);

  v16 = sub_251C6FF94();
  v17 = sub_251C6FBC4();
  sub_251BBFA48();
  v18 = sub_251C71144();
  v21[4] = sub_251BBFA40;
  v21[5] = v14;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 1107296256;
  v21[2] = sub_251BBFA94;
  v21[3] = &block_descriptor_13;
  v19 = _Block_copy(v21);
  v20 = [v15 initWithQuantityType:a3 quantitySamplePredicate:a4 anchorDate:v16 intervalComponents:v17 quantityRanges:v18 resultsHandler:v19];
  _Block_release(v19);

  [a8 executeQuery_];
}

void sub_251BBF988(int a1, void *a2, id a3, void (*a4)(id, BOOL))
{
  v6 = a2;
  if (!a2)
  {
    v6 = a3;
    if (!a3)
    {
      sub_251AC6624();
      v7 = swift_allocError();
      a3 = 0;
      v6 = v7;
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 2;
    }

    v9 = a3;
  }

  v10 = a2;
  a4(v6, a2 == 0);

  sub_251BBFB4C(v6);
}

unint64_t sub_251BBFA48()
{
  result = qword_27F47A328;
  if (!qword_27F47A328)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F47A328);
  }

  return result;
}

void sub_251BBFA94(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(v11, a3, a4);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_251BBFB5C(unint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
    if (a3 > 1u)
    {
      if (a3 == 2)
      {
        sub_251C716A4();

        v15 = 0xD000000000000020;
        type metadata accessor for HKClinicalGatewayFeatureName(0);
        v5 = a1;
        v6 = sub_251C70F74();
        MEMORY[0x25308CDA0](v6);

        v7 = 0x6572757461656620;
        v8 = 0xE800000000000000;
LABEL_20:
        MEMORY[0x25308CDA0](v7, v8);
        return v15;
      }
    }

    else if (a3)
    {
      v15 = 0;
      sub_251C716A4();
      MEMORY[0x25308CDA0](0xD000000000000037, 0x8000000251C8F4C0);
      v10 = sub_251C719A4();
      MEMORY[0x25308CDA0](v10);

      return v15;
    }

    sub_251C716A4();

    v9 = 0xD000000000000022;
    goto LABEL_19;
  }

  if (a3 <= 5u)
  {
    if (a3 != 4)
    {
LABEL_18:
      sub_251C716A4();

      v9 = 0xD000000000000016;
      goto LABEL_19;
    }

    sub_251C716A4();

    v9 = 0xD000000000000017;
LABEL_19:
    v15 = v9;
    v7 = a1;
    v8 = a2;
    goto LABEL_20;
  }

  if (a3 == 6)
  {
    sub_251C716A4();

    v9 = 0xD00000000000001ALL;
    goto LABEL_19;
  }

  if (a3 == 7)
  {
    goto LABEL_18;
  }

  if (a1 > 1)
  {
    v11 = a1 ^ 2 | a2;
    v12 = 0xD000000000000023;
    v13 = 0xD000000000000028;
  }

  else
  {
    v11 = a1 | a2;
    v12 = 0xD000000000000026;
    v13 = 0xD00000000000002FLL;
  }

  if (v11)
  {
    return v13;
  }

  else
  {
    return v12;
  }
}

uint64_t get_enum_tag_for_layout_string_19HealthRecordsDaemon41ClinicalSharingDocumentReferenceInfoErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 8) != 0)
  {
    return (*a1 + 8);
  }

  else
  {
    return *(a1 + 16) & 0xF;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_251BBFEF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 17))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 16);
  if (v3 <= 8)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_251BBFF38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 16) = 0;
    *result = a2 - 248;
    *(result + 8) = 0;
    if (a3 >= 0xF8)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_251BBFF7C(uint64_t result, unsigned int a2)
{
  if (a2 >= 8)
  {
    *result = a2 - 8;
    *(result + 8) = 0;
    LOBYTE(a2) = 8;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_251BBFFA4(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  v7 = sub_251C719C4();
  if (v7)
  {
    v8 = v7;
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v2 + 32))(v9, v5, a1);
  }

  v10 = sub_251C6FD74();

  v11 = [v10 hrs_safelyLoggableDescription];
  v12 = sub_251C70F14();

  return v12;
}

id sub_251BC0124(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, v2, a1);
  v9 = sub_251C719C4();
  if (v9)
  {
    v10 = v9;
    (*(v5 + 8))(v8, a1);
  }

  else
  {
    v10 = swift_allocError();
    (*(v5 + 32))(v11, v8, a1);
  }

  v12 = sub_251C6FD74();

  v13 = [v12 domain];
  if (!v13)
  {
    sub_251C70F14();
    v13 = sub_251C70EE4();
  }

  v14 = [v12 code];
  sub_251BC039C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251C74800;
  v16 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_251C70F14();
  *(inited + 40) = v17;
  v18 = Error.hdhr_friendlyDescription.getter(a1, a2);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v18;
  *(inited + 56) = v19;
  sub_251C4C154(inited);
  swift_setDeallocating();
  sub_251BC03F4(inited + 32);
  v20 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v21 = sub_251C70E44();

  v22 = [v20 initWithDomain:v13 code:v14 userInfo:v21];

  return v22;
}

void sub_251BC039C()
{
  if (!qword_2813E1C50)
  {
    sub_251AFE93C();
    v0 = sub_251C719B4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E1C50);
    }
  }
}

uint64_t sub_251BC03F4(uint64_t a1)
{
  sub_251AFE93C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_251BC0450(void *a1)
{
  v3 = [v1 features];
  if (v3)
  {
    v4 = v3;
    sub_251BC065C();
    v5 = sub_251C71154();

    if (v5 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x25308D460](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v2 = v8;
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v10 = [v8 name];
        v11 = sub_251C70F14();
        v13 = v12;
        if (v11 == sub_251C70F14() && v13 == v14)
        {

LABEL_18:

          return v2;
        }

        v16 = sub_251C719D4();

        if (v16)
        {
          goto LABEL_18;
        }

        ++v7;
        if (v9 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_22:
  }

  sub_251A82AF0();
  swift_allocError();
  *v17 = a1;
  *(v17 + 8) = 0;
  *(v17 + 16) = 2;
  swift_willThrow();
  v18 = a1;
  return v2;
}

unint64_t sub_251BC065C()
{
  result = qword_27F47BA60;
  if (!qword_27F47BA60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F47BA60);
  }

  return result;
}

uint64_t Daemon.__allocating_init(machService:)(uint64_t a1, uint64_t a2)
{
  sub_251BC084C();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_251C747F0;
  v5 = type metadata accessor for ClinicalDocumentDownloaderPlugin();
  v6 = swift_allocObject();
  *(v4 + 56) = v5;
  *(v4 + 64) = &off_2863FAFE8;
  *(v4 + 32) = v6;
  v7 = sub_251BB4980();
  *(v4 + 96) = type metadata accessor for ClinicalSharingDaemonPlugin();
  *(v4 + 104) = &off_2863FAE30;
  *(v4 + 72) = v7;
  v8 = type metadata accessor for IngestionServiceDaemonPlugin();
  v9 = swift_allocObject();
  *(v4 + 136) = v8;
  *(v4 + 144) = &off_2863F9E30;
  *(v4 + 112) = v9;
  v10 = type metadata accessor for IssuerDirectoryDownloadDaemonPlugin();
  v11 = swift_allocObject();
  type metadata accessor for IssuerDirectoryDownloadTaskScheduler();
  swift_allocObject();
  *(v11 + 16) = sub_251AF3D30(sub_251AF3BB8, 0, sub_251AF3C24, 0);
  *(v4 + 176) = v10;
  *(v4 + 184) = &off_2863FF030;
  *(v4 + 152) = v11;
  v12 = type metadata accessor for SignedClinicalDataDaemonPlugin();
  v13 = swift_allocObject();
  *(v4 + 216) = v12;
  *(v4 + 224) = &off_2863FCB98;
  *(v4 + 192) = v13;
  type metadata accessor for Daemon();
  v14 = swift_allocObject();
  v15 = objc_allocWithZone(type metadata accessor for DaemonXPCConnectionManager());
  v16 = sub_251C6E624(a1, a2);
  *(v14 + 16) = v4;
  *(v14 + 24) = v16;
  return v14;
}

void sub_251BC084C()
{
  if (!qword_2813E1C68)
  {
    sub_251BC08A4();
    v0 = sub_251C719B4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E1C68);
    }
  }
}

unint64_t sub_251BC08A4()
{
  result = qword_2813E7070;
  if (!qword_2813E7070)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813E7070);
  }

  return result;
}

uint64_t sub_251BC0908()
{
  if (qword_2813E26F8 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v0 = sub_251C70764();
    v67[1] = __swift_project_value_buffer(v0, qword_2813E8130);
    v1 = sub_251C70744();
    v2 = sub_251C713F4();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_251A6C000, v1, v2, "Daemon launching", v3, 2u);
      MEMORY[0x25308E2B0](v3, -1, -1);
    }

    v4 = *(v68 + 16);
    v71 = *(v4 + 16);
    if (!v71)
    {
      break;
    }

    v5 = 0;
    v69 = v4;
    v70 = v4 + 32;
    while (v5 < *(v4 + 16))
    {
      v72 = v5;
      sub_251A823B4(v70 + 40 * v5, v90);
      v6 = v91;
      v7 = v92;
      __swift_project_boxed_opaque_existential_1(v90, v91);
      v8 = (*(v7 + 24))(v6, v7);
      __swift_destroy_boxed_opaque_existential_1(v90);
      v75 = *(v8 + 16);
      v76 = v8;
      if (v75)
      {
        v9 = 0;
        v10 = *(v68 + 24);
        v11 = OBJC_IVAR____TtC19HealthRecordsDaemon26DaemonXPCConnectionManager_serviceMap;
        v12 = v76 + 32;
        v73 = OBJC_IVAR____TtC19HealthRecordsDaemon26DaemonXPCConnectionManager_serviceMap;
        v74 = v10;
        do
        {
          if (v9 >= *(v76 + 16))
          {
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

          v78 = v12;
          sub_251A823B4(v12, v89);
          v16 = *__swift_project_boxed_opaque_existential_1(v89, v89[3]);
          v17 = type metadata accessor for DefaultDaemonXPCService();
          v88[3] = v17;
          v88[4] = &off_2863F5E58;
          v88[0] = v16;
          v18 = (*__swift_project_boxed_opaque_existential_1(v88, v17) + OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_identifier);
          v20 = *v18;
          v19 = v18[1];
          swift_beginAccess();
          sub_251A823B4(v88, v86);
          v21 = v16;

          v22 = *(v10 + v11);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v85 = *(v10 + v11);
          v24 = v85;
          *(v10 + v11) = 0x8000000000000000;
          v25 = v87;
          v26 = __swift_mutable_project_boxed_opaque_existential_1(v86, v87);
          v77 = v67;
          v27 = *(*(v25 - 8) + 64);
          MEMORY[0x28223BE20](v26);
          v29 = (v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v30 + 16))(v29);
          v31 = *v29;
          v83 = v17;
          v84 = &off_2863F5E58;
          *&v82 = v31;
          v33 = sub_251AC8C58(v20, v19);
          v34 = v24[2];
          v35 = (v32 & 1) == 0;
          v36 = v34 + v35;
          if (__OFADD__(v34, v35))
          {
            goto LABEL_32;
          }

          v37 = v32;
          if (v24[3] >= v36)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if (v32)
              {
                goto LABEL_10;
              }
            }

            else
            {
              sub_251ACF348();
              if (v37)
              {
                goto LABEL_10;
              }
            }
          }

          else
          {
            sub_251ACC224(v36, isUniquelyReferenced_nonNull_native);
            v38 = sub_251AC8C58(v20, v19);
            if ((v37 & 1) != (v39 & 1))
            {
              result = sub_251C71A14();
              __break(1u);
              return result;
            }

            v33 = v38;
            if (v37)
            {
LABEL_10:

              v13 = v85;
              v14 = (v85[7] + 40 * v33);
              __swift_destroy_boxed_opaque_existential_1(v14);
              sub_251A7E8D8(&v82, v14);
              goto LABEL_11;
            }
          }

          v13 = v85;
          v40 = v83;
          v41 = __swift_mutable_project_boxed_opaque_existential_1(&v82, v83);
          v42 = *(*(v40 - 8) + 64);
          MEMORY[0x28223BE20](v41);
          v44 = (v67 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v45 + 16))(v44);
          v46 = *v44;
          v80 = v17;
          v81 = &off_2863F5E58;
          *&v79 = v46;
          v13[(v33 >> 6) + 8] |= 1 << v33;
          v47 = (v13[6] + 16 * v33);
          *v47 = v20;
          v47[1] = v19;
          sub_251A7E8D8(&v79, v13[7] + 40 * v33);
          v48 = v13[2];
          v49 = __OFADD__(v48, 1);
          v50 = v48 + 1;
          if (v49)
          {
            goto LABEL_33;
          }

          v13[2] = v50;
          __swift_destroy_boxed_opaque_existential_1(&v82);
LABEL_11:
          ++v9;
          __swift_destroy_boxed_opaque_existential_1(v86);
          v11 = v73;
          v10 = v74;
          v15 = *(v74 + v73);
          *(v74 + v73) = v13;

          swift_endAccess();
          __swift_destroy_boxed_opaque_existential_1(v88);
          __swift_destroy_boxed_opaque_existential_1(v89);
          v12 = v78 + 40;
        }

        while (v75 != v9);
      }

      v5 = v72 + 1;

      v4 = v69;
      if (v5 == v71)
      {
        goto LABEL_24;
      }
    }

LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }

LABEL_24:
  v51 = *(v4 + 16);
  if (v51)
  {
    v52 = v4 + 32;
    do
    {
      sub_251A823B4(v52, v90);
      v53 = v91;
      v54 = v92;
      __swift_project_boxed_opaque_existential_1(v90, v91);
      (*(v54 + 8))(v53, v54);
      __swift_destroy_boxed_opaque_existential_1(v90);
      v52 += 40;
      --v51;
    }

    while (v51);
  }

  v55 = *(v68 + 24);
  sub_251C6E7E8();
  v56 = sub_251C70744();
  v57 = sub_251C713F4();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v90[0] = v59;
    *v58 = 136315138;
    v60 = *MEMORY[0x277D12328];
    v61 = sub_251C70F14();
    v63 = sub_251B10780(v61, v62, v90);

    *(v58 + 4) = v63;
    _os_log_impl(&dword_251A6C000, v56, v57, "Daemon launch finished, posting %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v59);
    MEMORY[0x25308E2B0](v59, -1, -1);
    MEMORY[0x25308E2B0](v58, -1, -1);
  }

  else
  {

    v64 = *MEMORY[0x277D12328];
  }

  sub_251C70F14();
  v65 = sub_251C70F84();

  notify_post((v65 + 32));
}

uint64_t Daemon.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t Daemon.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_251BC10B8(unint64_t a1)
{
  if (a1 < 6)
  {
    return a1 + 1;
  }

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v3 = sub_251C70764();
  __swift_project_value_buffer(v3, qword_2813E8130);
  v4 = sub_251C70744();
  v5 = sub_251C713E4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = a1;
    _os_log_impl(&dword_251A6C000, v4, v5, "Unknown asserter type: %ld", v6, 0xCu);
    MEMORY[0x25308E2B0](v6, -1, -1);
  }

  return 0;
}

uint64_t type metadata accessor for ClinicalSharingActivitySummaryQuery()
{
  result = qword_27F47BA68;
  if (!qword_27F47BA68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251BC122C()
{
  result = type metadata accessor for ClinicalSharingQueryContext(319);
  if (v1 <= 0x3F)
  {
    result = sub_251C6FAE4();
    if (v2 <= 0x3F)
    {
      result = sub_251A8223C(319, &qword_27F479EA8, 0x277CCDAB0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_251BC1360(void (*a1)(uint64_t (**)(void)), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t a5, uint64_t (*a6)(void))
{
  v37 = a1;
  v38 = a2;
  v9 = *(a4(0) - 8);
  v10 = *(v9 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v35 = &v30 - v14;
  v36 = a3 >> 62;
  if (a3 >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_251C717F4())
  {
    v41 = MEMORY[0x277D84F90];
    result = (a5)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v17 = v41;
    v31 = a5;
    if (!i)
    {
      break;
    }

    v18 = a3 & 0xFFFFFFFFFFFFFF8;
    if (v36)
    {
      v34 = sub_251C717F4();
    }

    else
    {
      v34 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = 0;
    v39 = a3 & 0xC000000000000001;
    v32 = a3;
    v33 = a6;
    while (v34 != v25)
    {
      if (v39)
      {
        v26 = MEMORY[0x25308D460](v25, a3);
      }

      else
      {
        if (v25 >= *(v18 + 16))
        {
          goto LABEL_44;
        }

        v26 = *(a3 + 8 * v25 + 32);
      }

      a6 = v26;
      a3 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_43;
      }

      v27 = MEMORY[0x25308DB30]();
      v40 = a6;
      v37(&v40);
      objc_autoreleasePoolPop(v27);

      v41 = v17;
      a5 = *(v17 + 16);
      v28 = *(v17 + 24);
      if (a5 >= v28 >> 1)
      {
        v31(v28 > 1, a5 + 1, 1);
        v17 = v41;
      }

      *(v17 + 16) = a5 + 1;
      a6 = v33;
      sub_251BC36A4(v13, v17 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a5, v33);
      ++v25;
      v29 = a3 == i;
      a3 = v32;
      v19 = v35;
      if (v29)
      {
        goto LABEL_8;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }

  v18 = a3 & 0xFFFFFFFFFFFFFF8;
  v39 = a3 & 0xC000000000000001;
  v19 = v35;
LABEL_8:
  if (a3 < 0)
  {
    v20 = a3;
  }

  else
  {
    v20 = v18;
  }

  v34 = v20;
  if (v36)
  {
    while (i != sub_251C717F4())
    {
LABEL_15:
      if (v39)
      {
        v21 = MEMORY[0x25308D460](i, a3);
      }

      else
      {
        if (i < 0)
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        if (i >= *(v18 + 16))
        {
          goto LABEL_41;
        }

        v21 = *(a3 + 8 * i + 32);
      }

      a5 = v21;
      if (__OFADD__(i, 1))
      {
        goto LABEL_40;
      }

      v22 = MEMORY[0x25308DB30]();
      v40 = a5;
      v13 = v19;
      v37(&v40);
      objc_autoreleasePoolPop(v22);

      v41 = v17;
      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      a5 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v31(v23 > 1, v24 + 1, 1);
        v17 = v41;
      }

      *(v17 + 16) = a5;
      sub_251BC36A4(v19, v17 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v24, a6);
      ++i;
      if (!v36)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    if (i != *(v18 + 16))
    {
      goto LABEL_15;
    }
  }

  return v17;
}

uint64_t sub_251BC1728()
{
  v1 = type metadata accessor for ClinicalSharingActivitySummaryQuery();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v25 = v4;
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BC31E4(0, &qword_27F47BA78, type metadata accessor for PBTypedData);
  v7 = *(v6 - 8);
  v29 = v6;
  v30 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  sub_251BC31C4(0);
  v12 = *(v11 - 8);
  v31 = v11;
  v32 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v28 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251A823B4(*v0 + 16, v34);
  __swift_project_boxed_opaque_existential_1(v34, v34[3]);
  v27 = v0;
  v15 = sub_251BC1B4C();
  v16 = off_2863FD720();

  v33 = v16;
  v26 = type metadata accessor for ClinicalSharingActivitySummaryQuery;
  sub_251BC356C(v0, v5, type metadata accessor for ClinicalSharingActivitySummaryQuery);
  v17 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v18 = swift_allocObject();
  sub_251BC36A4(v5, v18 + v17, type metadata accessor for ClinicalSharingActivitySummaryQuery);
  sub_251BC30EC();
  type metadata accessor for PBTypedData(0);
  sub_251BC3498(&qword_27F47BA98, sub_251BC30EC);
  sub_251C70AA4();

  __swift_destroy_boxed_opaque_existential_1(v34);
  sub_251BC356C(v27, v5, v26);
  v19 = swift_allocObject();
  sub_251BC36A4(v5, v19 + v17, type metadata accessor for ClinicalSharingActivitySummaryQuery);
  type metadata accessor for ClinicalSharingQueryOutput(0);
  v21 = v28;
  v20 = v29;
  sub_251C70774();

  (*(v30 + 8))(v10, v20);
  sub_251BC3498(&qword_27F47BAA8, sub_251BC31C4);
  v22 = v31;
  v23 = sub_251C70A94();
  (*(v32 + 8))(v21, v22);
  return v23;
}

id sub_251BC1B4C()
{
  sub_251BC34E0(0, &qword_27F4793E0, MEMORY[0x277CC99E8], MEMORY[0x277D83D88]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v60 = v46 - v2;
  v3 = sub_251C70014();
  v4 = *(v3 - 8);
  v61 = v3;
  v62 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v58 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_251C701E4();
  v7 = *(v52 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v52);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_251C6FC94();
  v54 = *(v11 - 8);
  v55 = v11;
  v12 = *(v54 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v53 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v57 = v46 - v15;
  sub_251BC34E0(0, &qword_27F479AA0, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
  v16 = sub_251C701C4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_251C763E0;
  v21 = *(v17 + 104);
  v21(v20 + v19, *MEMORY[0x277CC9968], v16);
  v21(v20 + v19 + v18, *MEMORY[0x277CC9998], v16);
  v21(v20 + v19 + 2 * v18, *MEMORY[0x277CC9988], v16);
  v21(v20 + v19 + 3 * v18, *MEMORY[0x277CC9978], v16);
  v48 = sub_251B1D3EC(v20);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v56 = *v59;
  v22 = v7;
  v46[0] = *(v7 + 16);
  v23 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar;
  v24 = v10;
  v25 = v52;
  (v46[0])(v10, v56 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v52);
  v50 = *(type metadata accessor for ClinicalSharingActivitySummaryQuery() + 20);
  v26 = v58;
  sub_251C6FAB4();
  sub_251C700E4();
  v27 = *(v62 + 8);
  v62 += 8;
  v51 = v27;
  v27(v26, v61);
  v49 = *(v22 + 8);
  v49(v10, v25);
  v28 = v56;
  v29 = v56 + v23;
  v30 = v23;
  v31 = v60;
  v32 = v46[0];
  (v46[0])(v60, v29, v25);
  v33 = *(v22 + 56);
  v46[1] = v22 + 56;
  v47 = v33;
  v33(v31, 0, 1, v25);
  sub_251C6FC84();
  v34 = v30;
  v32(v24, v28 + v30, v25);
  v35 = v58;
  sub_251C6FA84();
  v36 = v53;
  sub_251C700E4();

  v51(v35, v61);
  v49(v24, v25);
  v37 = v60;
  v32(v60, v56 + v34, v25);
  v47(v37, 0, 1, v25);
  sub_251C6FC84();
  v38 = objc_opt_self();
  v39 = v57;
  v40 = sub_251C6FBC4();
  v41 = sub_251C6FBC4();
  v42 = [v38 predicateForActivitySummariesBetweenStartDateComponents:v40 endDateComponents:v41];

  v43 = v55;
  v44 = *(v54 + 8);
  v44(v36, v55);
  v44(v39, v43);
  return v42;
}

uint64_t sub_251BC218C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v4 = MEMORY[0x277D83D88];
  sub_251BC34E0(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v45 - v7;
  sub_251BC34E0(0, &qword_27F478D90, MEMORY[0x277CC88A8], v4);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v45 - v11;
  v13 = type metadata accessor for PBDateRange(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PBActivitySummarySeries(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = (&v45 - v24);
  if (a1 >> 62)
  {
    v47 = v13;
    v39 = v23;
    v40 = sub_251C717F4();
    v23 = v39;
    v13 = v47;
    if (v40)
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v26 = v25 + *(v23 + 20);
    v47 = v13;
    v27 = v23;
    sub_251C703A4();
    v28 = *(v27 + 24);
    v45 = *(v14 + 56);
    v29 = v45(v25 + v28, 1, 1, v13);
    v30 = v48;
    v46 = v22;
    MEMORY[0x28223BE20](v29);
    *(&v45 - 2) = v2;
    *v25 = sub_251BC1360(sub_251BC3544, (&v45 - 4), a1, type metadata accessor for PBActivitySummarySeries.ActivitySummary, sub_251C0BDAC, type metadata accessor for PBActivitySummarySeries.ActivitySummary);
    v31 = *(type metadata accessor for ClinicalSharingActivitySummaryQuery() + 20);
    v32 = sub_251C6FAE4();
    v33 = *(v32 - 8);
    (*(v33 + 16))(v12, v2 + v31, v32);
    (*(v33 + 56))(v12, 0, 1, v32);
    sub_251BFC464(2, 1, v12);
    sub_251BC3634(v12, &qword_27F478D90, MEMORY[0x277CC88A8]);
    sub_251BC356C(v17, v8, type metadata accessor for PBDateRange);
    v45(v8, 0, 1, v47);
    sub_251BF1518(v8, v30);
    sub_251BC3634(v8, qword_2813E6EE8, type metadata accessor for PBDateRange);
    sub_251BC35D4(v17, type metadata accessor for PBDateRange);
    v34 = v46;
    sub_251BC356C(v25, v46, type metadata accessor for PBActivitySummarySeries);
    v35 = type metadata accessor for PBTypedData(0);
    v36 = *(v35 + 20);
    sub_251BC3634(v30 + v36, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251BC36A4(v34, v30 + v36, type metadata accessor for PBActivitySummarySeries);
    v37 = type metadata accessor for PBTypedData.OneOf_Raw(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v37 - 8) + 56))(v30 + v36, 0, 1, v37);
    (*(*(v35 - 8) + 56))(v30, 0, 1, v35);
    return sub_251BC35D4(v25, type metadata accessor for PBActivitySummarySeries);
  }

  v41 = type metadata accessor for PBTypedData(0);
  v42 = *(*(v41 - 8) + 56);
  v43 = v41;
  v44 = v48;

  return v42(v44, 1, 1, v43);
}

uint64_t sub_251BC2768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_251C702E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(*a2 + 56);

  sub_251BF2294(v10);
  v19 = v10;
  v12 = sub_251BF1DA0(MEMORY[0x277D84F90], sub_251AD6374, v18, v11);

  (*(v7 + 8))(v10, v6);
  if (*(v12 + 16))
  {
    sub_251BC356C(a1, a3, type metadata accessor for PBTypedData);
    v13 = sub_251BFAE40(v12);

    Output = type metadata accessor for ClinicalSharingQueryOutput(0);
    *(a3 + *(Output + 20)) = v13;
    v15 = (a3 + *(Output + 24));
    *v15 = 0;
    v15[1] = 0;
    return (*(*(Output - 8) + 56))(a3, 0, 1, Output);
  }

  else
  {
    v17 = type metadata accessor for ClinicalSharingQueryOutput(0);
    (*(*(v17 - 8) + 56))(a3, 1, 1, v17);
  }
}

void sub_251BC2970(void *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = sub_251C6FC94();
  v73 = *(v75 - 8);
  v5 = *(v73 + 64);
  MEMORY[0x28223BE20](v75);
  v71 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_251C701E4();
  v7 = *(v68 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v68);
  v67 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v69 = &v66 - v11;
  sub_251BC34E0(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v70 = &v66 - v14;
  v74 = sub_251C70014();
  v72 = *(v74 - 8);
  v15 = *(v72 + 64);
  MEMORY[0x28223BE20](v74);
  v66 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  v17 = a2 + *(type metadata accessor for PBActivitySummarySeries.ActivitySummary(0) + 44);
  sub_251C703A4();
  v18 = [a1 activeEnergyBurned];
  v19 = type metadata accessor for ClinicalSharingActivitySummaryQuery();
  v20 = *(v2 + v19[7]);
  [v18 doubleValueForUnit_];
  v22 = v21;
  v23 = v21;

  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v22 <= -2147483650.0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v22 >= 2147483650.0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *a2 = v22;
  v24 = [a1 activeEnergyBurnedGoal];
  [v24 doubleValueForUnit_];
  v26 = v25;
  v27 = v25;

  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v26 <= -2147483650.0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v26 >= 2147483650.0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  *(a2 + 4) = v26;
  v28 = [a1 appleExerciseTime];
  v29 = *(v2 + v19[8]);
  [v28 doubleValueForUnit_];
  v31 = v30;
  v32 = v30;

  if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v31 <= -2147483650.0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v31 >= 2147483650.0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  *(a2 + 8) = v31;
  v33 = [a1 appleExerciseTimeGoal];
  [v33 doubleValueForUnit_];
  v35 = v34;
  v36 = v34;

  if ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v35 <= -2147483650.0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v35 >= 2147483650.0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  *(a2 + 12) = v35;
  v37 = [a1 appleStandHours];
  v38 = *(v2 + v19[6]);
  [v37 doubleValueForUnit_];
  v40 = v39;
  v41 = v39;

  if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v40 <= -2147483650.0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v40 >= 2147483650.0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *(a2 + 16) = v40;
  v42 = [a1 appleStandHoursGoal];
  [v42 doubleValueForUnit_];
  v44 = v43;
  v45 = v43;

  if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v44 <= -2147483650.0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v44 >= 2147483650.0)
  {
LABEL_39:
    __break(1u);
    return;
  }

  *(a2 + 20) = v44;
  v46 = *v2;
  v47 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar;
  v48 = v7[2];
  v49 = v68;
  v50 = v69;
  v48(v69, *v2 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v68);
  v51 = v67;
  v48(v67, v46 + v47, v49);
  v52 = sub_251C70114();
  v53 = v7[1];
  v53(v51, v49);
  v54 = [a1 dateComponentsForCalendar_];

  v55 = v71;
  sub_251C6FBD4();

  v56 = v70;
  sub_251C70134();
  (*(v73 + 8))(v55, v75);
  v53(v50, v49);
  v57 = v72;
  v58 = v74;
  if ((*(v72 + 48))(v56, 1, v74) == 1)
  {
    sub_251BC3634(v56, &qword_2813E7500, MEMORY[0x277CC9578]);
  }

  else
  {
    v59 = v66;
    (*(v57 + 32))(v66, v56, v58);
    v60 = *(v46 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v61 = sub_251C6FF94();
    v62 = [v60 stringFromDate_];

    v63 = sub_251C70F14();
    v65 = v64;

    (*(v57 + 8))(v59, v58);
    *(a2 + 24) = v63;
    *(a2 + 32) = v65;
  }
}

void sub_251BC30EC()
{
  if (!qword_27F47BA80)
  {
    sub_251BC315C();
    sub_251A82284();
    v0 = sub_251C70974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47BA80);
    }
  }
}

void sub_251BC315C()
{
  if (!qword_27F47BA88)
  {
    sub_251A8223C(255, &qword_27F47BA90, 0x277CCCFB0);
    v0 = sub_251C711A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47BA88);
    }
  }
}

void sub_251BC31E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_251BC30EC();
    a3(255);
    sub_251BC3498(&qword_27F47BA98, sub_251BC30EC);
    v5 = sub_251C70784();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_251BC3290@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingActivitySummaryQuery() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  return sub_251BC218C(*a1, a2);
}

uint64_t objectdestroyTm_6()
{
  v1 = (type metadata accessor for ClinicalSharingActivitySummaryQuery() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = v1[7];
  v7 = sub_251C6FAE4();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_251BC3418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingActivitySummaryQuery() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_251BC2768(a1, v6, a2);
}

uint64_t sub_251BC3498(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_251BC34E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_251BC356C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251BC35D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251BC3634(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251BC34E0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251BC36A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251BC3710()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    type metadata accessor for SignedClinicalDataManager();
    v1 = swift_allocObject();
    *(v1 + 16) = 0;
    *(v0 + 24) = v1;
  }

  return v1;
}

uint64_t sub_251BC3768()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

id sub_251BC37C4(void *a1, uint64_t a2)
{
  v2 = [a1 items];
  sub_251BC39F0();
  v3 = sub_251C71154();

  if (v3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x25308D460](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v10 = [v7 mainRecord];
      v11 = [v10 recordTypeDisplayName];

      v12 = sub_251C70F14();
      v14 = v13;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_251C38CCC(0, *(v6 + 2) + 1, 1, v6);
      }

      v16 = *(v6 + 2);
      v15 = *(v6 + 3);
      if (v16 >= v15 >> 1)
      {
        v6 = sub_251C38CCC((v15 > 1), v16 + 1, 1, v6);
      }

      *(v6 + 2) = v16 + 1;
      v17 = &v6[16 * v16];
      *(v17 + 4) = v12;
      *(v17 + 5) = v14;
      ++v5;
      if (v9 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:

  v18 = objc_allocWithZone(MEMORY[0x277D124B0]);
  v19 = sub_251C71144();

  v20 = [v18 initWithOptions:a2 localizedTypeDisplayNames:v19];

  return v20;
}

unint64_t sub_251BC39F0()
{
  result = qword_27F479268;
  if (!qword_27F479268)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F479268);
  }

  return result;
}

id sub_251BC3A3C(void *a1)
{
  v2 = sub_251C6FD74();
  v3 = [v2 domain];
  v4 = sub_251C70F14();
  v6 = v5;

  if (v4 == 0xD000000000000023 && 0x8000000251C8F610 == v6)
  {
  }

  else
  {
    v8 = sub_251C719D4();

    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v9 = [v2 code];
  if (v9 == 104)
  {
    v10 = *MEMORY[0x277D12340];
    v17 = [v2 userInfo];
    sub_251C70E54();

    v18 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v13 = sub_251C70E44();

    v14 = [v18 initWithDomain:v10 code:1 userInfo:v13];
  }

  else
  {
    if (v9 != 103)
    {
LABEL_11:

      v15 = a1;
      return a1;
    }

    v10 = *MEMORY[0x277D12340];
    v11 = [v2 userInfo];
    sub_251C70E54();

    v12 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v13 = sub_251C70E44();

    v14 = [v12 initWithDomain:v10 code:2 userInfo:v13];
  }

  v19 = v14;

  return v19;
}

HealthRecordsDaemon::VCJWK::KeyType_optional __swiftcall VCJWK.KeyType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_251C71854();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t VCJWK.KeyType.rawValue.getter()
{
  v1 = 17221;
  if (*v0 != 1)
  {
    v1 = 5262159;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 4281170;
  }
}

uint64_t sub_251BC3D34(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE200000000000000;
  v4 = 17221;
  if (v2 != 1)
  {
    v4 = 5262159;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 4281170;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 17221;
  if (*a2 != 1)
  {
    v8 = 5262159;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 4281170;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_251C719D4();
  }

  return v11 & 1;
}

uint64_t sub_251BC3E08()
{
  v1 = *v0;
  sub_251C71AA4();
  sub_251C70FB4();

  return sub_251C71AD4();
}

uint64_t sub_251BC3E90()
{
  *v0;
  *v0;
  sub_251C70FB4();
}

uint64_t sub_251BC3F04()
{
  v1 = *v0;
  sub_251C71AA4();
  sub_251C70FB4();

  return sub_251C71AD4();
}

void sub_251BC3F94(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE200000000000000;
  v5 = 17221;
  if (v2 != 1)
  {
    v5 = 5262159;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 4281170;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

HealthRecordsDaemon::VCJWK::Curve_optional __swiftcall VCJWK.Curve.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_251C71854();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t VCJWK.Curve.rawValue.getter()
{
  v1 = 0x3635322D50;
  if (*v0 != 1)
  {
    v1 = 0x39313535326445;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6B36353270636573;
  }
}

uint64_t sub_251BC4140(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x3635322D50;
  if (v2 != 1)
  {
    v4 = 0x39313535326445;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6B36353270636573;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000031;
  }

  v7 = 0xE500000000000000;
  v8 = 0x3635322D50;
  if (*a2 != 1)
  {
    v8 = 0x39313535326445;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6B36353270636573;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000031;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_251C719D4();
  }

  return v11 & 1;
}

uint64_t sub_251BC423C()
{
  v1 = *v0;
  sub_251C71AA4();
  sub_251C70FB4();

  return sub_251C71AD4();
}

uint64_t sub_251BC42E0()
{
  *v0;
  *v0;
  sub_251C70FB4();
}

uint64_t sub_251BC4370()
{
  v1 = *v0;
  sub_251C71AA4();
  sub_251C70FB4();

  return sub_251C71AD4();
}

void sub_251BC441C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000031;
  v4 = 0xE500000000000000;
  v5 = 0x3635322D50;
  if (v2 != 1)
  {
    v5 = 0x39313535326445;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6B36353270636573;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t VCJWK.alg.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t VCJWK.e.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t VCJWK.n.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t VCJWK.x.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t VCJWK.y.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t VCJWK.kid.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t VCJWK.use.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return v1;
}

__n128 VCJWK.init(kty:crv:alg:ext:e:n:x:y:keyOps:kid:use:)@<Q0>(_BYTE *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  result = a11;
  v18 = *a2;
  *a9 = *a1;
  *(a9 + 1) = v18;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  *(a9 + 72) = a11;
  *(a9 + 88) = a12;
  *(a9 + 96) = a14;
  *(a9 + 104) = a15;
  *(a9 + 112) = a13;
  *(a9 + 120) = a16;
  *(a9 + 128) = a17;
  return result;
}

__n128 VCJWK.init(data:)@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_251C6F9F4();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_251C6F9E4();
  sub_251BC47D0();
  sub_251C6F9D4();
  sub_251A83028(a1, a2);

  if (!v3)
  {
    *(a3 + 96) = v17;
    *(a3 + 112) = v18;
    *(a3 + 128) = v19;
    *(a3 + 32) = v13;
    *(a3 + 48) = v14;
    *(a3 + 64) = v15;
    *(a3 + 80) = v16;
    result = v12;
    *a3 = v11;
    *(a3 + 16) = v12;
  }

  return result;
}

unint64_t sub_251BC47D0()
{
  result = qword_27F47BAB0;
  if (!qword_27F47BAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BAB0);
  }

  return result;
}

uint64_t sub_251BC4824(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 7959659;
    v7 = 6777953;
    v8 = 7632997;
    if (a1 != 3)
    {
      v8 = 101;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 7762531;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 6580587;
    v2 = 0x73706F5F79656BLL;
    if (a1 != 9)
    {
      v2 = 6648693;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 110;
    v4 = 120;
    if (a1 != 6)
    {
      v4 = 121;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_251BC491C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_251BC4824(*a1);
  v5 = v4;
  if (v3 == sub_251BC4824(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_251C719D4();
  }

  return v8 & 1;
}

uint64_t sub_251BC49A4()
{
  v1 = *v0;
  sub_251C71AA4();
  sub_251BC4824(v1);
  sub_251C70FB4();

  return sub_251C71AD4();
}

uint64_t sub_251BC4A08()
{
  sub_251BC4824(*v0);
  sub_251C70FB4();
}

uint64_t sub_251BC4A5C()
{
  v1 = *v0;
  sub_251C71AA4();
  sub_251BC4824(v1);
  sub_251C70FB4();

  return sub_251C71AD4();
}

uint64_t sub_251BC4ABC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_251BC68D4();
  *a2 = result;
  return result;
}

uint64_t sub_251BC4AEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_251BC4824(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_251BC4B34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_251BC68D4();
  *a1 = result;
  return result;
}

uint64_t sub_251BC4B68(uint64_t a1)
{
  v2 = sub_251BC6030();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251BC4BA4(uint64_t a1)
{
  v2 = sub_251BC6030();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VCJWK.encode(to:)(void *a1)
{
  sub_251BC612C(0, &qword_27F47BAB8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v21 - v7;
  v9 = *v1;
  v38 = v1[1];
  v10 = *(v1 + 1);
  v34 = *(v1 + 2);
  v35 = v10;
  v33 = v1[24];
  v11 = *(v1 + 5);
  v31 = *(v1 + 4);
  v32 = v11;
  v12 = *(v1 + 7);
  v29 = *(v1 + 6);
  v30 = v12;
  v13 = *(v1 + 9);
  v27 = *(v1 + 8);
  v28 = v13;
  v14 = *(v1 + 11);
  v25 = *(v1 + 10);
  v26 = v14;
  v15 = *(v1 + 13);
  v23 = *(v1 + 12);
  v24 = v15;
  v16 = *(v1 + 14);
  v21[1] = *(v1 + 15);
  v22 = v16;
  v17 = *(v1 + 16);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251BC6030();
  sub_251C71B14();
  LOBYTE(v37) = v9;
  v39 = 0;
  sub_251BC6084();
  v19 = v36;
  sub_251C71964();
  if (!v19)
  {
    v36 = v17;
    LOBYTE(v37) = v38;
    v39 = 1;
    sub_251BC60D8();
    sub_251C71924();
    LOBYTE(v37) = 2;
    sub_251C718F4();
    LOBYTE(v37) = 3;
    sub_251C71904();
    LOBYTE(v37) = 4;
    sub_251C718F4();
    LOBYTE(v37) = 5;
    sub_251C718F4();
    LOBYTE(v37) = 6;
    sub_251C718F4();
    LOBYTE(v37) = 7;
    sub_251C718F4();
    LOBYTE(v37) = 8;
    sub_251C718F4();
    v37 = v22;
    v39 = 9;
    sub_251B1C8C8();
    sub_251BC6238(&qword_27F479318);
    sub_251C71924();
    LOBYTE(v37) = 10;
    sub_251C718F4();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t VCJWK.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v15 = *(v0 + 8);
  v16 = *(v0 + 32);
  v5 = *(v0 + 56);
  v17 = *(v0 + 48);
  v18 = *(v0 + 64);
  v22 = *(v0 + 72);
  v6 = *(v0 + 88);
  v19 = *(v0 + 80);
  v20 = *(v0 + 96);
  *v0;
  v7 = *(v0 + 112);
  v21 = *(v0 + 120);
  v23 = *(v0 + 104);
  v24 = *(v0 + 128);
  sub_251C70FB4();

  if (v1 == 3)
  {
    sub_251C71AC4();
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_251C71AC4();
    sub_251C70FB4();

    if (!v2)
    {
LABEL_3:
      sub_251C71AC4();
      if (v3 == 2)
      {
        goto LABEL_7;
      }

      goto LABEL_4;
    }
  }

  sub_251C71AC4();
  sub_251C70FB4();
  if (v3 != 2)
  {
LABEL_4:
    sub_251C71AC4();
  }

LABEL_7:
  sub_251C71AC4();
  if (v4)
  {
    sub_251C71AC4();
    sub_251C70FB4();
    v8 = v22;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_251C71AC4();
    v8 = v22;
    if (v5)
    {
LABEL_9:
      sub_251C71AC4();
      sub_251C70FB4();
      v9 = v23;
      if (v8)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }
  }

  sub_251C71AC4();
  v9 = v23;
  if (v8)
  {
LABEL_10:
    sub_251C71AC4();
    sub_251C70FB4();
    if (v6)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  sub_251C71AC4();
  if (v6)
  {
LABEL_11:
    sub_251C71AC4();
    sub_251C70FB4();
    if (v9)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  sub_251C71AC4();
  if (v9)
  {
LABEL_12:
    sub_251C71AC4();
    sub_251C70FB4();
    if (v7)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  sub_251C71AC4();
  if (v7)
  {
LABEL_13:
    sub_251C71AC4();
    MEMORY[0x25308D860](*(v7 + 16));
    v10 = *(v7 + 16);
    if (v10)
    {
      v11 = (v7 + 40);
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;

        sub_251C70FB4();

        v11 += 2;
        --v10;
      }

      while (v10);
    }

    if (v24)
    {
      goto LABEL_17;
    }

    return sub_251C71AC4();
  }

LABEL_25:
  sub_251C71AC4();
  if (!v24)
  {
    return sub_251C71AC4();
  }

LABEL_17:
  sub_251C71AC4();

  return sub_251C70FB4();
}

uint64_t VCJWK.hashValue.getter()
{
  sub_251C71AA4();
  VCJWK.hash(into:)();
  return sub_251C71AD4();
}

uint64_t VCJWK.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_251BC612C(0, &qword_27F47BAD8, MEMORY[0x277D844C8]);
  v76 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251BC6030();
  sub_251C71B04();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v6;
  LOBYTE(v47) = 0;
  sub_251BC6190();
  sub_251C718D4();
  v12 = LOBYTE(v56[0]);
  LOBYTE(v47) = 1;
  sub_251BC61E4();
  sub_251C718A4();
  v46 = v12;
  v13 = LOBYTE(v56[0]);
  LOBYTE(v56[0]) = 2;
  v43 = sub_251C71874();
  v44 = v13;
  v45 = v14;
  LOBYTE(v56[0]) = 3;
  LOBYTE(v13) = sub_251C71884();
  LOBYTE(v56[0]) = 4;
  v38 = sub_251C71874();
  v42 = v15;
  LOBYTE(v56[0]) = 5;
  v37 = sub_251C71874();
  v41 = v16;
  LOBYTE(v56[0]) = 6;
  v36 = sub_251C71874();
  v40 = v17;
  LOBYTE(v56[0]) = 7;
  v34 = sub_251C71874();
  v39 = v18;
  LOBYTE(v56[0]) = 8;
  v33 = sub_251C71874();
  v35 = v19;
  sub_251B1C8C8();
  LOBYTE(v47) = 9;
  sub_251BC6238(&qword_27F47BAF0);
  sub_251C718A4();
  v20 = v56[0];
  v72 = 10;
  v21 = sub_251C71874();
  v32 = v22;
  v23 = v21;
  (*(v11 + 8))(v9, v76);
  LOBYTE(v47) = v46;
  BYTE1(v47) = v44;
  *(&v47 + 2) = v74;
  WORD3(v47) = v75;
  v24 = v45;
  *(&v47 + 1) = v43;
  *&v48 = v45;
  BYTE8(v48) = v13;
  HIDWORD(v48) = *&v73[3];
  *(&v48 + 9) = *v73;
  *&v49 = v38;
  *(&v49 + 1) = v42;
  *&v50 = v37;
  *(&v50 + 1) = v41;
  *&v51 = v36;
  *(&v51 + 1) = v40;
  *&v52 = v34;
  *(&v52 + 1) = v39;
  v25 = v32;
  *&v53 = v33;
  *(&v53 + 1) = v35;
  *&v54 = v20;
  *(&v54 + 1) = v23;
  v55 = v32;
  *(a2 + 128) = v32;
  v26 = v54;
  *(a2 + 96) = v53;
  *(a2 + 112) = v26;
  v27 = v47;
  v28 = v48;
  v29 = v52;
  *(a2 + 64) = v51;
  *(a2 + 80) = v29;
  v30 = v50;
  *(a2 + 32) = v49;
  *(a2 + 48) = v30;
  *a2 = v27;
  *(a2 + 16) = v28;
  sub_251BC6298(&v47, v56);
  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v56[0]) = v46;
  BYTE1(v56[0]) = v44;
  *(v56 + 2) = v74;
  HIWORD(v56[0]) = v75;
  v56[1] = v43;
  v56[2] = v24;
  v57 = v13;
  *v58 = *v73;
  *&v58[3] = *&v73[3];
  v59 = v38;
  v60 = v42;
  v61 = v37;
  v62 = v41;
  v63 = v36;
  v64 = v40;
  v65 = v34;
  v66 = v39;
  v67 = v33;
  v68 = v35;
  v69 = v20;
  v70 = v23;
  v71 = v25;
  return sub_251BC62D0(v56);
}

uint64_t sub_251BC5ACC()
{
  sub_251C71AA4();
  VCJWK.hash(into:)();
  return sub_251C71AD4();
}

uint64_t sub_251BC5B10()
{
  sub_251C71AA4();
  VCJWK.hash(into:)();
  return sub_251C71AD4();
}

BOOL _s19HealthRecordsDaemon5VCJWKV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = 4281170;
  if (!*a1)
  {
    v3 = 0xE300000000000000;
    v4 = 4281170;
    if (*a2)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (*a1 != 1)
  {
    v3 = 0xE300000000000000;
    v4 = 5262159;
    if (*a2)
    {
      goto LABEL_6;
    }

LABEL_9:
    v5 = 0xE300000000000000;
    goto LABEL_11;
  }

  v3 = 0xE200000000000000;
  v4 = 17221;
  if (!*a2)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (*a2 == 1)
  {
    v5 = 0xE200000000000000;
    v2 = 17221;
  }

  else
  {
    v5 = 0xE300000000000000;
    v2 = 5262159;
  }

LABEL_11:
  v6 = *(a1 + 1);
  v7 = *(a1 + 16);
  v41 = *(a1 + 32);
  v45 = *(a1 + 40);
  v46 = *(a1 + 8);
  v36 = *(a1 + 48);
  v43 = *(a1 + 56);
  v38 = *(a1 + 72);
  v28 = *(a1 + 80);
  v34 = *(a1 + 88);
  v31 = *(a1 + 104);
  v32 = *(a1 + 64);
  v23 = *(a1 + 128);
  v24 = *(a1 + 96);
  v8 = *(a2 + 1);
  v10 = *(a2 + 8);
  v9 = *(a2 + 16);
  v40 = *(a2 + 32);
  v44 = *(a2 + 40);
  v37 = *(a2 + 48);
  v42 = *(a2 + 56);
  v33 = *(a2 + 64);
  v39 = *(a2 + 72);
  v35 = *(a2 + 88);
  v29 = *(a2 + 80);
  v30 = *(a2 + 104);
  v11 = *(a1 + 24);
  v26 = *(a1 + 112);
  v27 = *(a2 + 96);
  v22 = *(a2 + 128);
  v12 = *(a2 + 24);
  v20 = *(a1 + 120);
  v21 = *(a2 + 120);
  v25 = *(a2 + 112);
  if (v4 == v2 && v3 == v5)
  {
  }

  else
  {
    v13 = sub_251C719D4();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  if (v6 != 3)
  {
    if (v8 == 3)
    {
      return 0;
    }

    v14 = 0xE900000000000031;
    v15 = 0x6B36353270636573;
    if (v6)
    {
      if (v6 == 1)
      {
        v16 = 0xE500000000000000;
        v17 = 0x3635322D50;
        if (!v8)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v16 = 0xE700000000000000;
        v17 = 0x39313535326445;
        if (!v8)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      v17 = 0x6B36353270636573;
      v16 = 0xE900000000000031;
      if (!v8)
      {
        goto LABEL_33;
      }
    }

    if (v8 != 1)
    {
      v14 = 0xE700000000000000;
      if (v17 != 0x39313535326445)
      {
        goto LABEL_42;
      }

      goto LABEL_36;
    }

    v14 = 0xE500000000000000;
    v15 = 0x3635322D50;
LABEL_33:
    if (v17 != v15)
    {
LABEL_42:
      v18 = sub_251C719D4();

      if ((v18 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_17;
    }

LABEL_36:
    if (v16 == v14)
    {

      if (v7)
      {
        goto LABEL_18;
      }

      goto LABEL_38;
    }

    goto LABEL_42;
  }

  if (v8 != 3)
  {
    return 0;
  }

LABEL_17:
  if (v7)
  {
LABEL_18:
    if (!v9 || (v46 != v10 || v7 != v9) && (sub_251C719D4() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_39;
  }

LABEL_38:
  if (v9)
  {
    return 0;
  }

LABEL_39:
  if (v11 == 2)
  {
    if (v12 != 2)
    {
      return 0;
    }

    goto LABEL_46;
  }

  result = 0;
  if (v12 != 2 && ((v12 ^ v11) & 1) == 0)
  {
LABEL_46:
    if (v45)
    {
      if (!v44 || (v41 != v40 || v45 != v44) && (sub_251C719D4() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v44)
    {
      return 0;
    }

    if (v43)
    {
      if (!v42 || (v36 != v37 || v43 != v42) && (sub_251C719D4() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v42)
    {
      return 0;
    }

    if (v38)
    {
      if (!v39 || (v32 != v33 || v38 != v39) && (sub_251C719D4() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v39)
    {
      return 0;
    }

    if (v34)
    {
      if (!v35 || (v28 != v29 || v34 != v35) && (sub_251C719D4() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v35)
    {
      return 0;
    }

    if (v31)
    {
      if (!v30 || (v24 != v27 || v31 != v30) && (sub_251C719D4() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v30)
    {
      return 0;
    }

    if (v26)
    {
      if (!v25 || (sub_251A93C70(v26, v25) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v25)
    {
      return 0;
    }

    if (v23)
    {
      return v22 && (v20 == v21 && v23 == v22 || (sub_251C719D4() & 1) != 0);
    }

    return !v22;
  }

  return result;
}

unint64_t sub_251BC6030()
{
  result = qword_27F47BAC0;
  if (!qword_27F47BAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BAC0);
  }

  return result;
}

unint64_t sub_251BC6084()
{
  result = qword_27F47BAC8;
  if (!qword_27F47BAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BAC8);
  }

  return result;
}

unint64_t sub_251BC60D8()
{
  result = qword_27F47BAD0;
  if (!qword_27F47BAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BAD0);
  }

  return result;
}

void sub_251BC612C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_251BC6030();
    v7 = a3(a1, &type metadata for VCJWK.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_251BC6190()
{
  result = qword_27F47BAE0;
  if (!qword_27F47BAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BAE0);
  }

  return result;
}

unint64_t sub_251BC61E4()
{
  result = qword_27F47BAE8;
  if (!qword_27F47BAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BAE8);
  }

  return result;
}

uint64_t sub_251BC6238(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_251B1C8C8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_251BC6304()
{
  result = qword_27F47BAF8;
  if (!qword_27F47BAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BAF8);
  }

  return result;
}

unint64_t sub_251BC635C()
{
  result = qword_27F47BB00;
  if (!qword_27F47BB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BB00);
  }

  return result;
}

unint64_t sub_251BC63B4()
{
  result = qword_27F47BB08;
  if (!qword_27F47BB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BB08);
  }

  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_251BC643C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_251BC6498(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SignedClinicalDataFHIROperationHandlerError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SignedClinicalDataFHIROperationHandlerError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for VCJWK.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VCJWK.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_251BC67D0()
{
  result = qword_27F47BB10;
  if (!qword_27F47BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BB10);
  }

  return result;
}

unint64_t sub_251BC6828()
{
  result = qword_27F47BB18;
  if (!qword_27F47BB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BB18);
  }

  return result;
}

unint64_t sub_251BC6880()
{
  result = qword_27F47BB20;
  if (!qword_27F47BB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BB20);
  }

  return result;
}

uint64_t sub_251BC68D4()
{
  v0 = sub_251C71854();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_251BC6920()
{
  result = qword_27F47BB28;
  if (!qword_27F47BB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BB28);
  }

  return result;
}

unint64_t sub_251BC6974()
{
  result = qword_27F47BB30;
  if (!qword_27F47BB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BB30);
  }

  return result;
}

uint64_t sub_251BC69D0(uint64_t a1, void *aBlock)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v3(sub_251BCA780, v5);
}

uint64_t sub_251BC6A64()
{
  v2 = v0;
  v3 = sub_251C70F64();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_251C70EE4();
  v9 = [v2 stringForKey_];

  if (!v9)
  {
    return 0;
  }

  sub_251C70F14();

  sub_251C70F54();
  v10 = sub_251C70F24();
  v12 = v11;

  (*(v4 + 8))(v7, v3);
  if (v12 >> 60 == 15)
  {
    sub_251AC6624();
    swift_allocError();
    *v13 = xmmword_251C84430;
    *(v13 + 16) = 2;
    return swift_willThrow();
  }

  else
  {
    v15 = sub_251C6F9F4();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    sub_251C6F9E4();
    sub_251BCA71C();
    sub_251C6F9D4();
    if (v1)
    {

      return sub_251A8596C(v10, v12);
    }

    else
    {
      sub_251A8596C(v10, v12);

      return v18[1];
    }
  }
}

void sub_251BC6C9C(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5, uint64_t a6)
{
  v10 = sub_251C70F64();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v36 = a4;
  v39 = a4;
  v37 = a5;
  v40 = a5 & 1;
  v41 = a6;
  v12 = sub_251C6FA54();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();

  sub_251C6FA44();
  sub_251BCA228();
  v28 = sub_251C6FA34();
  v30 = v29;

  sub_251C70F54();
  sub_251C70F34();
  if (v31)
  {
    v32 = sub_251C70EE4();

    v33 = sub_251C70EE4();
    [a1 setValue:v32 forKey:v33];

    sub_251A83028(v28, v30);
  }

  else
  {
    sub_251AC6624();
    v34 = swift_allocError();
    *v35 = xmmword_251C84430;
    *(v35 + 16) = 2;
    swift_willThrow();
    sub_251A83028(v28, v30);

    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v15 = sub_251C70764();
    __swift_project_value_buffer(v15, qword_2813E8130);

    v16 = v34;
    v17 = sub_251C70744();
    v18 = sub_251C713E4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v38[0] = v20;
      *v19 = 136315394;
      v39 = v36;
      v40 = v37 & 1;
      v41 = a6;

      v21 = sub_251C70F74();
      v23 = sub_251B10780(v21, v22, v38);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v39 = v34;
      v24 = v34;
      sub_251A82284();
      v25 = sub_251C70F74();
      v27 = sub_251B10780(v25, v26, v38);

      *(v19 + 14) = v27;
      _os_log_impl(&dword_251A6C000, v17, v18, "Failed to encode %s: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v20, -1, -1);
      MEMORY[0x25308E2B0](v19, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_251BC7044(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v17 = a4;
  sub_251BCAB78(0, &qword_2813E1C80, MEMORY[0x277D84538]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251BCA82C();
  sub_251C71B14();
  v18 = a2;
  v19 = a3 & 1;
  v20 = 0;
  type metadata accessor for HKClinicalSharingReason(0);
  sub_251BCA42C(&qword_2813E1D88, type metadata accessor for HKClinicalSharingReason);
  sub_251C71924();
  if (!v4)
  {
    v18 = v17;
    v20 = 1;
    sub_251BCA880(0, &qword_2813E1F80, MEMORY[0x277CC9578], MEMORY[0x277D83940]);
    sub_251BCABDC(&qword_2813E1F78, &qword_2813E7510);
    sub_251C71964();
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_251BC72A4()
{
  if (*v0)
  {
    result = 0x4474736575716572;
  }

  else
  {
    result = 0x6E6F73616572;
  }

  *v0;
  return result;
}

uint64_t sub_251BC72E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F73616572 && a2 == 0xE600000000000000;
  if (v6 || (sub_251C719D4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4474736575716572 && a2 == 0xEC00000073657461)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_251C719D4();

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

uint64_t sub_251BC73C0(uint64_t a1)
{
  v2 = sub_251BCA82C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251BC73FC(uint64_t a1)
{
  v2 = sub_251BCA82C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_251BC7438@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_251BCA8E4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_251BC749C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4)
  {
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v9 = v6;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  return sub_251A93D00(v5, v7);
}

void *sub_251BC74DC@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[9];
  v3 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  v8 = v1[13];
  v7 = v1[14];
  if (v4)
  {
    v9 = v1[9];
    v10 = v3;
    v11 = v5;
    v12 = v6;
    v13 = v8;
    v14 = v7;
  }

  else
  {
    v27 = v1[11];
    v28 = v1[10];
    v26 = v1[12];
    v11 = 0x8000000251C8F6F0;
    v15 = [objc_opt_self() standardUserDefaults];
    v12 = sub_251BCA474();
    v13 = v16;
    v14 = v17;

    v24 = v1[10];
    v25 = v1[9];
    v22 = v1[12];
    v23 = v1[11];
    v20 = v1[14];
    v21 = v1[13];
    v1[9] = v15;
    v1[10] = 0xD00000000000001DLL;
    v1[11] = 0x8000000251C8F6F0;
    v1[12] = v12;
    v1[13] = v13 & 1;
    v1[14] = v14;
    v18 = v15;
    v10 = 0xD00000000000001DLL;
    v9 = v18;

    sub_251BCA1D4(v25);
  }

  result = sub_251BCA688(v4);
  *a1 = v9;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13 & 1;
  *(a1 + 40) = v14;
  return result;
}

uint64_t sub_251BC7634()
{
  MEMORY[0x25308E2B0](*(v0 + 136), -1, -1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  sub_251BCA1D4(*(v0 + 72));
  v6 = *(v0 + 128);
  sub_251A7EA4C(*(v0 + 120));
  v7 = *(v0 + 152);

  return swift_deallocClassInstance();
}

uint64_t sub_251BC76AC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[7];
  [v6 setPreregistered_];
  v7 = swift_allocObject();
  swift_weakInit();
  v25 = sub_251BCA770;
  v26 = v7;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_251BC69D0;
  v24 = &block_descriptor_38;
  v8 = _Block_copy(&v21);

  [v6 scheduleWithBlock_];
  _Block_release(v8);
  v9 = [objc_opt_self() defaultSyncActivityCriteria];
  v10 = *MEMORY[0x277CCC2C0];
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = objc_allocWithZone(MEMORY[0x277D10BE8]);
  v13 = v10;

  v14 = sub_251C70EE4();
  v25 = sub_251BCA778;
  v26 = v11;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_251BCA0FC;
  v24 = &block_descriptor_42;
  v15 = _Block_copy(&v21);
  v16 = [v12 initWithName:v14 criteria:v9 loggingCategory:v13 handler:v15];
  swift_unknownObjectRelease();

  _Block_release(v15);

  v17 = a1[8];
  a1[8] = v16;

  v18 = a1[15];
  v19 = a1[16];
  a1[15] = a2;
  a1[16] = a3;

  return sub_251A7EA4C(v18);
}

void sub_251BC7928(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 56);
    sub_251BC8C74(v5, a1, a2);
  }

  else
  {
    a1(1);
  }
}

uint64_t sub_251BC79BC(void *a1, uint64_t a2, uint64_t (*a3)(void, void), uint64_t a4)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return a3(0, 0);
  }

  sub_251BC94C4(a1, a3, a4);
}

void sub_251BC7A48(void *a1, void *a2, double a3)
{
  v6 = sub_251C70014();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BC74DC(v46);
  v42 = v46[0];
  v41 = v46[1];
  v11 = v46[2];
  v49 = v47;
  v12 = v48;
  v13 = v47;
  v50 = v48;
  v14 = BYTE8(v47);
  sub_251C70004();
  v44 = v10;

  v15 = sub_251B09754(sub_251BCA318, v43, v12);
  v40 = a2;
  if (v14 == 1)
  {
    sub_251BCA880(0, &qword_2813E1C78, MEMORY[0x277CC9578], MEMORY[0x277D84560]);
    v16 = *(v7 + 72);
    v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_251C74800;
    (*(v7 + 16))(v18 + v17, v10, v6);
    aBlock[0] = v15;

    sub_251BFF7EC(v18);
    v12 = aBlock[0];
    sub_251BCA358(&v49);
    sub_251BC6C9C(v42, v41, v11, a2, 0, v12);
    v13 = a2;
  }

  v19 = *(v15 + 16);

  if (v19 >= 3)
  {
    v20 = 14400.0;
  }

  else
  {
    v20 = 0.0;
  }

  (*(v7 + 8))(v10, v6);
  v21 = a1[9];
  v22 = a1[10];
  v23 = a1[11];
  v24 = a1[12];
  v25 = a1[13];
  v26 = a1[14];
  v27 = v41;
  a1[9] = v42;
  a1[10] = v27;
  a1[11] = v11;
  a1[12] = v13;
  a1[13] = 0;
  a1[14] = v12;
  sub_251BCA1D4(v21);
  if (v20 > a3)
  {
    a3 = v20;
  }

  v28 = a1[8];
  if (v28)
  {
    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_251BC7FBC;
    aBlock[3] = &block_descriptor_14;
    v29 = _Block_copy(aBlock);
    v30 = v28;
    [v30 requestRunWithMaximumDelay:v29 completion:a3];
    _Block_release(v29);
  }

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v31 = sub_251C70764();
  __swift_project_value_buffer(v31, qword_2813E8130);

  v32 = sub_251C70744();
  v33 = sub_251C713F4();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    aBlock[0] = v35;
    *v34 = 136315650;
    *(v34 + 4) = sub_251B10780(a1[18], a1[19], aBlock);
    *(v34 + 12) = 2080;
    if (v40 > 3)
    {
      switch(v40)
      {
        case 4:
          v36 = 0xE700000000000000;
          v37 = 0x676E6974736574;
          goto LABEL_27;
        case 5:
          v36 = 0xEE00646574616974;
          v37 = 0x696E692D72657375;
          goto LABEL_27;
        case 6:
          v36 = 0x8000000251C8A720;
          v37 = 0xD000000000000010;
          goto LABEL_27;
      }
    }

    else
    {
      switch(v40)
      {
        case 1:
          v36 = 0xED00006E6F697461;
          v37 = 0x7A69726F68747561;
          goto LABEL_27;
        case 2:
          v36 = 0xE800000000000000;
          v37 = 0x617461642D77656ELL;
          goto LABEL_27;
        case 3:
          v36 = 0xEA0000000000646ELL;
          v37 = 0x756F72676B636162;
LABEL_27:
          v38 = sub_251B10780(v37, v36, aBlock);

          *(v34 + 14) = v38;
          *(v34 + 22) = 2048;
          *(v34 + 24) = a3;
          _os_log_impl(&dword_251A6C000, v32, v33, "%s: scheduled run for reason %s with max delay %f", v34, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x25308E2B0](v35, -1, -1);
          MEMORY[0x25308E2B0](v34, -1, -1);
          goto LABEL_28;
      }
    }

    v36 = 0xE700000000000000;
    v37 = 0x6E776F6E6B6E75;
    goto LABEL_27;
  }

LABEL_28:
}

void sub_251BC7FBC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_251BC8034(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_getErrorValue();
  if (sub_251BC8448(v22[10]) & 1) != 0 || (swift_getErrorValue(), result = sub_251BC8588(v22[6]), (result))
  {
    if (a2 == 6)
    {
      v7 = 1800.0;
    }

    else
    {
      swift_getErrorValue();
      if (sub_251BC8448(v22[2]))
      {
        v7 = 0.0;
      }

      else
      {
        v7 = 1800.0;
      }
    }

    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v8 = sub_251C70764();
    __swift_project_value_buffer(v8, qword_2813E8130);

    v9 = a1;
    v10 = sub_251C70744();
    v11 = sub_251C713F4();

    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_26;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22[0] = v13;
    *v12 = 136315906;
    *(v12 + 4) = sub_251B10780(v3[18], v3[19], v22);
    *(v12 + 12) = 2048;
    *(v12 + 14) = v7;
    *(v12 + 22) = 2080;
    if (a2 > 3)
    {
      switch(a2)
      {
        case 4:
          v14 = 0xE700000000000000;
          v15 = 0x676E6974736574;
          goto LABEL_25;
        case 5:
          v14 = 0xEE00646574616974;
          v15 = 0x696E692D72657375;
          goto LABEL_25;
        case 6:
          v14 = 0x8000000251C8A720;
          v15 = 0xD000000000000010;
          goto LABEL_25;
      }
    }

    else
    {
      switch(a2)
      {
        case 1:
          v14 = 0xED00006E6F697461;
          v15 = 0x7A69726F68747561;
          goto LABEL_25;
        case 2:
          v14 = 0xE800000000000000;
          v15 = 0x617461642D77656ELL;
          goto LABEL_25;
        case 3:
          v14 = 0xEA0000000000646ELL;
          v15 = 0x756F72676B636162;
LABEL_25:
          v16 = sub_251B10780(v15, v14, v22);

          *(v12 + 24) = v16;
          *(v12 + 32) = 2080;
          v17 = a1;
          sub_251A82284();
          v18 = sub_251C70F74();
          v20 = sub_251B10780(v18, v19, v22);

          *(v12 + 34) = v20;
          _os_log_impl(&dword_251A6C000, v10, v11, "%s: scheduling sync retry after %f because %s sync encountered error %s", v12, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x25308E2B0](v13, -1, -1);
          MEMORY[0x25308E2B0](v12, -1, -1);
LABEL_26:

          v22[0] = v3[17];
          MEMORY[0x28223BE20](v21);
          sub_251BCA880(0, &qword_2813E1D00, type metadata accessor for os_unfair_lock_s, MEMORY[0x277D83D58]);
          sub_251B3F1EC();
          return sub_251C702C4();
      }
    }

    v14 = 0xE700000000000000;
    v15 = 0x6E776F6E6B6E75;
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_251BC8448(uint64_t a1)
{
  v1 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HKError(0);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = v6[1];
    sub_251BCA42C(&qword_27F478C50, type metadata accessor for HKError);
    sub_251C6FD34();

    return v6[0] == 6;
  }

  return result;
}

uint64_t sub_251BC8588(uint64_t a1)
{
  v2 = sub_251C70284();
  v30[0] = *(v2 - 8);
  v3 = *(v30[0] + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v30 - v7;
  sub_251BCA880(0, &qword_27F47BB38, MEMORY[0x277CC9AE8], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = v30 - v12;
  v14 = *(a1 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_251C702A4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v30[1], a1);
  v23 = swift_dynamicCast();
  v24 = *(v19 + 56);
  if (v23)
  {
    v24(v13, 0, 1, v18);
    (*(v19 + 32))(v22, v13, v18);
    sub_251BCA42C(&qword_27F47BB40, MEMORY[0x277CC9AE8]);
    sub_251C6FD34();
    sub_251C70274();
    sub_251BCA42C(&qword_27F47BB48, MEMORY[0x277CC9AC8]);
    v25 = sub_251C70ED4();
    v26 = *(v30[0] + 8);
    v26(v6, v2);
    if (v25 & 1) != 0 || (sub_251C70254(), v27 = sub_251C70ED4(), v26(v6, v2), (v27))
    {
      v26(v8, v2);
      (*(v19 + 8))(v22, v18);
      v28 = 1;
    }

    else
    {
      sub_251C70264();
      v28 = sub_251C70ED4();
      v26(v6, v2);
      v26(v8, v2);
      (*(v19 + 8))(v22, v18);
    }
  }

  else
  {
    v24(v13, 1, 1, v18);
    sub_251BCA3A0(v13);
    v28 = 0;
  }

  return v28 & 1;
}

uint64_t sub_251BC8A04()
{
  v1 = v0;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v2 = sub_251C70764();
  __swift_project_value_buffer(v2, qword_2813E8130);

  v3 = sub_251C70744();
  v4 = sub_251C713F4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_251B10780(v1[18], v1[19], &v8);
    _os_log_impl(&dword_251A6C000, v3, v4, "%s: marking as run", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x25308E2B0](v6, -1, -1);
    MEMORY[0x25308E2B0](v5, -1, -1);
  }

  v8 = v1[17];
  sub_251BCA880(0, &qword_2813E1D00, type metadata accessor for os_unfair_lock_s, MEMORY[0x277D83D58]);
  sub_251B3F1EC();
  return sub_251C702C4();
}

void *sub_251BC8BB4(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    [v2 setWaitingForTrigger_];
  }

  sub_251BC74DC(&v15);
  v3 = v15;
  v4 = v16;
  v5 = v17;
  v6 = v20;
  if (v19)
  {
    v7 = v18;
  }

  else
  {
    sub_251BC6C9C(v15, v16, v17, 0, 1, v20);
    v7 = 0;
  }

  v8 = a1[9];
  v9 = a1[10];
  v10 = a1[11];
  v11 = a1[12];
  v12 = a1[13];
  v13 = a1[14];
  a1[9] = v3;
  a1[10] = v4;
  a1[11] = v5;
  a1[12] = v7;
  a1[13] = 1;
  a1[14] = v6;

  return sub_251BCA1D4(v8);
}

uint64_t sub_251BC8C74(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = v3;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v8 = sub_251C70764();
  __swift_project_value_buffer(v8, qword_2813E8130);

  v9 = a1;
  v10 = sub_251C70744();
  v11 = sub_251C713F4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v26 = a3;
    v13 = a2;
    v14 = swift_slowAlloc();
    v28[0] = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_251B10780(v4[18], v4[19], v28);
    *(v12 + 12) = 2080;
    v15 = [v9 identifier];
    v16 = sub_251C70F14();
    v18 = v17;

    v19 = sub_251B10780(v16, v18, v28);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_251A6C000, v10, v11, "%s: activity %s fired", v12, 0x16u);
    swift_arrayDestroy();
    v20 = v14;
    a2 = v13;
    a3 = v26;
    MEMORY[0x25308E2B0](v20, -1, -1);
    MEMORY[0x25308E2B0](v12, -1, -1);
  }

  v27 = v4[17];
  sub_251BCA880(0, &qword_2813E1D00, type metadata accessor for os_unfair_lock_s, MEMORY[0x277D83D58]);
  sub_251BCA880(0, &qword_2813E1BB0, sub_251BC9FBC, MEMORY[0x277D83D88]);
  sub_251B3F1EC();
  sub_251C702B4();
  v21 = v28[0];
  if (!v28[0])
  {
    return a2(1);
  }

  v22 = swift_allocObject();
  v22[2] = v4;
  v22[3] = v9;
  v22[4] = a2;
  v22[5] = a3;
  v27 = 3;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_251BCA304;
  *(v23 + 24) = v22;
  v28[0] = sub_251BCADC8;
  v28[1] = v23;

  v24 = v9;

  v21(&v27, v28);
  sub_251A7EA4C(v21);
}

uint64_t sub_251BC8FD8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 120);
  v4 = *(a1 + 128);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_251BCADCC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_251A7E910(v3);
}

uint64_t sub_251BC9058(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t (*)(uint64_t a1), uint64_t))
{
  v4 = *a1;
  v6 = *a2;
  v5 = a2[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  a3(v4, sub_251BCA27C, v7);
}

uint64_t sub_251BC90F0(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t))
{
  if (a1)
  {
    v8 = a1;
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v9 = sub_251C70764();
    __swift_project_value_buffer(v9, qword_2813E8130);
    v10 = a1;

    v11 = a3;
    v12 = sub_251C70744();
    v13 = sub_251C713D4();

    if (!os_log_type_enabled(v12, v13))
    {

      return a4(1);
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v36 = v15;
    *v14 = 136315650;
    *(v14 + 4) = sub_251B10780(*(a2 + 144), *(a2 + 152), &v36);
    *(v14 + 12) = 2080;
    v16 = [v11 identifier];
    v17 = sub_251C70F14();
    v19 = v18;

    v20 = sub_251B10780(v17, v19, &v36);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2080;
    v21 = a1;
    sub_251A82284();
    v22 = sub_251C70F74();
    v24 = sub_251B10780(v22, v23, &v36);

    *(v14 + 24) = v24;
    _os_log_impl(&dword_251A6C000, v12, v13, "%s: activity %s failed: %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v15, -1, -1);
    MEMORY[0x25308E2B0](v14, -1, -1);
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v25 = sub_251C70764();
    __swift_project_value_buffer(v25, qword_2813E8130);

    v26 = a3;
    v12 = sub_251C70744();
    v27 = sub_251C713F4();

    if (os_log_type_enabled(v12, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v36 = v29;
      *v28 = 136315394;
      *(v28 + 4) = sub_251B10780(*(a2 + 144), *(a2 + 152), &v36);
      *(v28 + 12) = 2080;
      v30 = [v26 identifier];
      v31 = sub_251C70F14();
      v33 = v32;

      v34 = sub_251B10780(v31, v33, &v36);

      *(v28 + 14) = v34;
      _os_log_impl(&dword_251A6C000, v12, v27, "%s: activity %s succeeded", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v29, -1, -1);
      MEMORY[0x25308E2B0](v28, -1, -1);
    }
  }

  return a4(1);
}

uint64_t sub_251BC94C4(void *a1, uint64_t (*a2)(void, void), uint64_t a3)
{
  v4 = v3;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v8 = sub_251C70764();
  __swift_project_value_buffer(v8, qword_2813E8130);

  v9 = a1;
  v10 = sub_251C70744();
  v11 = sub_251C713F4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v27 = a3;
    v13 = a2;
    v14 = swift_slowAlloc();
    v29[0] = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_251B10780(v4[18], v4[19], v29);
    *(v12 + 12) = 2080;
    v15 = [v9 name];
    v16 = sub_251C70F14();
    v18 = v17;

    v19 = sub_251B10780(v16, v18, v29);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_251A6C000, v10, v11, "%s: activity %s fired", v12, 0x16u);
    swift_arrayDestroy();
    v20 = v14;
    a2 = v13;
    a3 = v27;
    MEMORY[0x25308E2B0](v20, -1, -1);
    MEMORY[0x25308E2B0](v12, -1, -1);
  }

  v28 = v4[17];
  sub_251BCA880(0, &qword_2813E1D00, type metadata accessor for os_unfair_lock_s, MEMORY[0x277D83D58]);
  sub_251BC9EF0();
  sub_251B3F1EC();
  sub_251C702B4();
  v21 = v29[0];
  if (!v29[0])
  {
    return a2(0, 0);
  }

  if (v30)
  {
    v22 = 3;
  }

  else
  {
    v22 = v29[2];
  }

  v23 = swift_allocObject();
  v23[2] = v4;
  v23[3] = v9;
  v23[4] = a2;
  v23[5] = a3;
  v28 = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_251BCA0C4;
  *(v24 + 24) = v23;
  v29[0] = sub_251BCA0D0;
  v29[1] = v24;

  v25 = v9;
  sub_251A7E910(v21);

  v21(&v28, v29);

  sub_251A7EA4C(v21);
  return sub_251A7EA4C(v21);
}

uint64_t sub_251BC9820@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[15];
  v5 = a1[16];
  sub_251A7E910(v4);
  sub_251BC74DC(&v21);
  v6 = v21;
  v7 = v22;
  v8 = v23;
  v9 = v24;
  v10 = v25;
  v11 = v26;
  v12 = v24;
  if ((v25 & 1) == 0)
  {
    sub_251BC6C9C(v21, v22, v23, 0, 1, v26);
    v12 = 0;
  }

  v13 = a1[9];
  v14 = a1[10];
  v15 = a1[11];
  v16 = a1[12];
  v17 = a1[13];
  v18 = a1[14];
  a1[9] = v6;
  a1[10] = v7;
  a1[11] = v8;
  a1[12] = v12;
  a1[13] = 1;
  a1[14] = v11;
  sub_251BCA1D4(v13);
  if (v4)
  {
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v20 = sub_251BCA220;
  }

  else
  {
    v20 = 0;
    result = 0;
  }

  *a2 = v20;
  *(a2 + 8) = result;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10 & 1;
  return result;
}

uint64_t sub_251BC9924(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void, void))
{
  if (a1)
  {
    v8 = a1;
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v9 = sub_251C70764();
    __swift_project_value_buffer(v9, qword_2813E8130);
    v10 = a1;

    v11 = a3;
    v12 = sub_251C70744();
    v13 = sub_251C713D4();

    if (!os_log_type_enabled(v12, v13))
    {

      return a4(0, 0);
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v36 = v15;
    *v14 = 136315650;
    *(v14 + 4) = sub_251B10780(*(a2 + 144), *(a2 + 152), &v36);
    *(v14 + 12) = 2080;
    v16 = [v11 name];
    v17 = sub_251C70F14();
    v19 = v18;

    v20 = sub_251B10780(v17, v19, &v36);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2080;
    v21 = a1;
    sub_251A82284();
    v22 = sub_251C70F74();
    v24 = sub_251B10780(v22, v23, &v36);

    *(v14 + 24) = v24;
    _os_log_impl(&dword_251A6C000, v12, v13, "%s: activity %s failed: %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v15, -1, -1);
    MEMORY[0x25308E2B0](v14, -1, -1);
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v25 = sub_251C70764();
    __swift_project_value_buffer(v25, qword_2813E8130);

    v26 = a3;
    v12 = sub_251C70744();
    v27 = sub_251C713F4();

    if (os_log_type_enabled(v12, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v36 = v29;
      *v28 = 136315394;
      *(v28 + 4) = sub_251B10780(*(a2 + 144), *(a2 + 152), &v36);
      *(v28 + 12) = 2080;
      v30 = [v26 name];
      v31 = sub_251C70F14();
      v33 = v32;

      v34 = sub_251B10780(v31, v33, &v36);

      *(v28 + 14) = v34;
      _os_log_impl(&dword_251A6C000, v12, v27, "%s: activity %s succeeded", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v29, -1, -1);
      MEMORY[0x25308E2B0](v28, -1, -1);
    }
  }

  return a4(0, 0);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_251BC9E44(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_251BC9E8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_251BC9EF0()
{
  if (!qword_2813E1BA8)
  {
    v0 = MEMORY[0x277D83D88];
    sub_251BCA880(255, &qword_2813E1BB0, sub_251BC9FBC, MEMORY[0x277D83D88]);
    sub_251BCA880(255, &unk_2813E1D60, type metadata accessor for HKClinicalSharingReason, v0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813E1BA8);
    }
  }
}

unint64_t sub_251BC9FBC()
{
  result = qword_2813E1BB8;
  if (!qword_2813E1BB8)
  {
    type metadata accessor for HKClinicalSharingReason(255);
    sub_251BCA034();
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, &qword_2813E1BB8);
  }

  return result;
}

unint64_t sub_251BCA034()
{
  result = qword_2813E1B90;
  if (!qword_2813E1B90)
  {
    sub_251BCA880(255, &qword_2813E1C20, sub_251A82284, MEMORY[0x277D83D88]);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_2813E1B90);
  }

  return result;
}

uint64_t sub_251BCA0D0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

void sub_251BCA0FC(uint64_t a1, void *a2, uint64_t a3, void *aBlock)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  v10 = a2;
  swift_unknownObjectRetain();
  v7(v10, a3, sub_251B2E650, v9);

  swift_unknownObjectRelease();
}

void *sub_251BCA1D4(void *result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_251BCA228()
{
  result = qword_2813E3090;
  if (!qword_2813E3090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E3090);
  }

  return result;
}

uint64_t sub_251BCA27C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t objectdestroyTm_7()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

BOOL sub_251BCA318()
{
  v1 = *(v0 + 16);
  sub_251C6FF74();
  return v2 < 86400.0;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_251BCA3A0(uint64_t a1)
{
  sub_251BCA880(0, &qword_27F47BB38, MEMORY[0x277CC9AE8], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251BCA42C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251BCA474()
{
  result = sub_251BC6A64();
  if (!v1)
  {
    return 0;
  }

  return result;
}

void *sub_251BCA688(void *result)
{
  if (result)
  {
    v1 = result;
  }

  return result;
}

unint64_t sub_251BCA6D4()
{
  result = qword_27F47BB50;
  if (!qword_27F47BB50)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F47BB50);
  }

  return result;
}

unint64_t sub_251BCA71C()
{
  result = qword_2813E3088;
  if (!qword_2813E3088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E3088);
  }

  return result;
}

uint64_t sub_251BCA794(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_251BCA7DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_251BCA82C()
{
  result = qword_2813E30A8[0];
  if (!qword_2813E30A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813E30A8);
  }

  return result;
}

void sub_251BCA880(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_251BCA8E4(uint64_t *a1)
{
  sub_251BCAB78(0, &qword_2813E1C98, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v11 - v7;
  v9 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_251BCA82C();
  sub_251C71B04();
  if (!v1)
  {
    type metadata accessor for HKClinicalSharingReason(0);
    v12 = 0;
    sub_251BCA42C(&qword_2813E1D78, type metadata accessor for HKClinicalSharingReason);
    sub_251C718A4();
    v9 = v13;
    sub_251BCA880(0, &qword_2813E1F80, MEMORY[0x277CC9578], MEMORY[0x277D83940]);
    v12 = 1;
    sub_251BCABDC(&qword_2813E1F70, &qword_2813E7508);
    sub_251C718D4();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void sub_251BCAB78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_251BCA82C();
    v7 = a3(a1, &type metadata for ClinicalSharingSyncTaskScheduler.AdHocSyncState.Storage.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_251BCABDC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_251BCA880(255, &qword_2813E1F80, MEMORY[0x277CC9578], MEMORY[0x277D83940]);
    sub_251BCA42C(a2, MEMORY[0x277CC9578]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_251BCACB4()
{
  result = qword_27F47BB58;
  if (!qword_27F47BB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BB58);
  }

  return result;
}

unint64_t sub_251BCAD0C()
{
  result = qword_2813E3098;
  if (!qword_2813E3098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E3098);
  }

  return result;
}

unint64_t sub_251BCAD64()
{
  result = qword_2813E30A0;
  if (!qword_2813E30A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E30A0);
  }

  return result;
}

uint64_t sub_251BCADDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_251BCAE24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_251BCAE80(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    if (!a3)
    {
      goto LABEL_13;
    }

    if (a3 != 1)
    {
      sub_251C716A4();

      v5 = 9;
      goto LABEL_12;
    }

    sub_251C716A4();

    v6 = 0xD00000000000001CLL;
  }

  else
  {
    if (a3 <= 4u)
    {
      if (a3 == 3)
      {
        sub_251C716A4();

        v5 = 11;
LABEL_12:
        v6 = v5 | 0xD000000000000020;
        goto LABEL_15;
      }

LABEL_13:
      sub_251C716A4();

      v6 = 0xD000000000000020;
      goto LABEL_15;
    }

    if (a3 == 5)
    {
      sub_251C716A4();

      v6 = 0xD000000000000023;
    }

    else
    {
      sub_251C716A4();

      v6 = 0xD000000000000021;
    }
  }

LABEL_15:
  v8 = v6;
  MEMORY[0x25308CDA0](a1, a2);
  return v8;
}

uint64_t sub_251BCB0AC(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 2u)
  {
    if (a3 > 4u)
    {
      if (a3 == 5)
      {
        if (a6 == 5)
        {
          goto LABEL_9;
        }
      }

      else if (a6 == 6)
      {
        goto LABEL_9;
      }
    }

    else if (a3 == 3)
    {
      if (a6 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (a6 == 4)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      if (a6 == 2)
      {
        goto LABEL_9;
      }

      return 0;
    }

    if (a6 != 1)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

LABEL_9:
  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_251C719D4();
  }
}

void sub_251BCB170(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_251BCB1E8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v33 = a7;
  v34 = a8;
  v32 = a3;
  sub_251ABCCD4(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v31 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;

  v31 = sub_251C70034();
  sub_251AC553C(a5, v20);
  v22 = sub_251C70014();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  v25 = 0;
  if (v24(v20, 1, v22) != 1)
  {
    v25 = sub_251C6FF94();
    (*(v23 + 8))(v20, v22);
  }

  sub_251AC553C(a6, v18);
  if (v24(v18, 1, v22) != 1)
  {
    v26 = sub_251C6FF94();
    (*(v23 + 8))(v18, v22);
    if (a10)
    {
      goto LABEL_5;
    }

LABEL_7:
    v27 = 0;
    goto LABEL_8;
  }

  v26 = 0;
  if (!a10)
  {
    goto LABEL_7;
  }

LABEL_5:
  v27 = sub_251C70EE4();
LABEL_8:
  v28 = swift_allocObject();
  *(v28 + 16) = sub_251AD96B8;
  *(v28 + 24) = v21;
  aBlock[4] = sub_251BCB5BC;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251BCB170;
  aBlock[3] = &block_descriptor_15;
  v29 = _Block_copy(aBlock);

  v30 = v31;
  [v32 updateClinicalSharingStatusForAccountWithIdentifier:v31 firstSharedDate:v25 lastSharedDate:v26 userStatus:v33 multiDeviceStatus:v34 primaryDeviceName:v27 completion:v29];
  _Block_release(v29);
}

uint64_t sub_251BCB4BC(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

void sub_251BCB4FC(char a1, id a2, void (*a3)(uint64_t, uint64_t))
{
  if (a1)
  {
    a3(1, 0);
  }

  else
  {
    if (a2)
    {
      v4 = a2;
    }

    else
    {
      sub_251AC6624();
      v4 = swift_allocError();
      v6 = v5;
      a2 = 0;
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 2;
    }

    v7 = a2;
    a3(v4, 1);
  }
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_251BCB5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[30] = a3;
  v4[31] = a4;
  v4[28] = a1;
  v4[29] = a2;
  sub_251BD1C78();
  v4[32] = v5;
  v6 = *(v5 - 8);
  v4[33] = v6;
  v7 = *(v6 + 64) + 15;
  v4[34] = swift_task_alloc();
  sub_251BD1AF0(0, &qword_2813E1E00, MEMORY[0x277D85720]);
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251BCB6F4, 0, 0);
}

uint64_t sub_251BCB6F4()
{
  v1 = v0[29];
  if (v1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
  {
    v3 = 0;
    v39 = v1 & 0xFFFFFFFFFFFFFF8;
    v40 = v1 & 0xC000000000000001;
    v37 = v0[29] + 32;
    v38 = i;
    while (v40)
    {
      v7 = MEMORY[0x25308D460](v3, v0[29]);
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_22;
      }

LABEL_9:
      v41 = v3;
      v42 = v8;
      v9 = v0[36];
      v10 = v0[30];
      v11 = v0[31];
      v12 = v0[28];
      v13 = v7;
      v14 = sub_251C71214();
      v15 = *(v14 - 8);
      (*(v15 + 56))(v9, 1, 1, v14);
      v16 = swift_allocObject();
      v16[2] = 0;
      v17 = v16 + 2;
      v16[3] = 0;
      v16[4] = v10;
      v16[5] = v11;
      v16[6] = v13;
      v1 = *v12;

      v18 = swift_taskGroup_addPending();
      v19 = v0[36];
      if (v18)
      {
        v36 = v1;
        v20 = v0[35];
        sub_251B346F4(v19, v20);
        v21 = (*(v15 + 48))(v20, 1, v14);
        v22 = v0[35];
        if (v21 == 1)
        {
          sub_251BD1C1C(v0[35], &qword_2813E1E00, MEMORY[0x277D85720]);
        }

        else
        {
          sub_251C71204();
          (*(v15 + 8))(v22, v14);
        }

        v5 = v41;
        v6 = v42;
        if (*v17)
        {
          v23 = v16[3];
          v24 = *v17;
          swift_getObjectType();
          swift_unknownObjectRetain();
          v25 = sub_251C711C4();
          v27 = v26;
          swift_unknownObjectRelease();
        }

        else
        {
          v25 = 0;
          v27 = 0;
        }

        v4 = v38;

        if (v27 | v25)
        {
          v28 = v0 + 20;
          v0[20] = 0;
          v0[21] = 0;
          v0[22] = v25;
          v0[23] = v27;
        }

        else
        {
          v28 = 0;
        }

        v1 = v0[36];
        v0[24] = 1;
        v0[25] = v28;
        v0[26] = v36;
        swift_task_create();

        sub_251BD1C1C(v1, &qword_2813E1E00, MEMORY[0x277D85720]);
      }

      else
      {
        sub_251BD1C1C(v19, &qword_2813E1E00, MEMORY[0x277D85720]);

        v4 = v38;
        v5 = v41;
        v6 = v42;
      }

      v3 = v5 + 1;
      if (v6 == v4)
      {
        goto LABEL_25;
      }
    }

    if (v3 >= *(v39 + 16))
    {
      goto LABEL_23;
    }

    v7 = *(v37 + 8 * v3);
    v8 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

LABEL_25:
  v29 = v0[34];
  v30 = *v0[28];
  sub_251A82284();
  sub_251C71234();
  v0[37] = MEMORY[0x277D84F90];
  v31 = *(MEMORY[0x277D85828] + 4);
  v32 = swift_task_alloc();
  v0[38] = v32;
  *v32 = v0;
  v32[1] = sub_251BCBB14;
  v33 = v0[34];
  v34 = v0[32];

  return MEMORY[0x2822004E8](v0 + 2, 0, 0, v34, v0 + 27);
}

uint64_t sub_251BCBB14()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v7 = *v1;

  if (v0)
  {
    v4 = *(v2 + 296);

    v5 = sub_251BCBE0C;
  }

  else
  {
    v5 = sub_251BCBC2C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_251BCBC2C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 296);
    v2 = *(v0 + 16);
    *(v0 + 104) = *(v0 + 32);
    v3 = *(v0 + 64);
    *(v0 + 120) = *(v0 + 48);
    *(v0 + 136) = v3;
    *(v0 + 152) = *(v0 + 80);
    *(v0 + 88) = v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *(v0 + 296);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_251C39454(0, *(v5 + 2) + 1, 1, v5);
    }

    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    if (v7 >= v6 >> 1)
    {
      v5 = sub_251C39454((v6 > 1), v7 + 1, 1, v5);
    }

    *(v5 + 2) = v7 + 1;
    v8 = &v5[72 * v7];
    *(v8 + 2) = *(v0 + 88);
    v9 = *(v0 + 104);
    v10 = *(v0 + 120);
    v11 = *(v0 + 136);
    *(v8 + 12) = *(v0 + 152);
    *(v8 + 4) = v10;
    *(v8 + 5) = v11;
    *(v8 + 3) = v9;
    *(v0 + 296) = v5;
    v12 = *(MEMORY[0x277D85828] + 4);
    v13 = swift_task_alloc();
    *(v0 + 304) = v13;
    *v13 = v0;
    v13[1] = sub_251BCBB14;
    v14 = *(v0 + 272);
    v15 = *(v0 + 256);

    return MEMORY[0x2822004E8](v0 + 16, 0, 0, v15, v0 + 216);
  }

  else
  {
    v16 = *(v0 + 280);
    v17 = *(v0 + 288);
    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));

    v18 = *(v0 + 8);
    v19 = *(v0 + 296);

    return v18(v19);
  }
}

uint64_t sub_251BCBE0C()
{
  v1 = v0[35];
  v2 = v0[36];
  (*(v0[33] + 8))(v0[34], v0[32]);
  v3 = v0[27];

  v4 = v0[1];

  return v4();
}

uint64_t sub_251BCBEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  sub_251BD1A70(0, &qword_27F47BB90, &qword_27F47BB70, 0x277D12478, MEMORY[0x277D85830]);
  v4[16] = v5;
  v6 = *(v5 - 8);
  v4[17] = v6;
  v7 = *(v6 + 64) + 15;
  v4[18] = swift_task_alloc();
  sub_251BD1AF0(0, &qword_2813E1E00, MEMORY[0x277D85720]);
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251BCBFEC, 0, 0);
}

uint64_t sub_251BCBFEC()
{
  v1 = v0[13];
  if (v1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
  {
    v3 = 0;
    v42 = v1 & 0xFFFFFFFFFFFFFF8;
    v43 = v1 & 0xC000000000000001;
    v40 = v0[13] + 32;
    v41 = i;
    while (v43)
    {
      v7 = MEMORY[0x25308D460](v3, v0[13]);
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_22;
      }

LABEL_9:
      v44 = v3;
      v45 = v8;
      v9 = v0[20];
      v10 = v0[14];
      v11 = v0[15];
      v12 = v0[12];
      v13 = v7;
      v14 = sub_251C71214();
      v15 = *(v14 - 8);
      (*(v15 + 56))(v9, 1, 1, v14);
      v16 = swift_allocObject();
      v16[2] = 0;
      v17 = v16 + 2;
      v16[3] = 0;
      v16[4] = v10;
      v16[5] = v11;
      v16[6] = v13;
      v1 = *v12;

      v18 = swift_taskGroup_addPending();
      v19 = v0[20];
      if (v18)
      {
        v39 = v1;
        v20 = v0[19];
        sub_251B346F4(v19, v20);
        v21 = (*(v15 + 48))(v20, 1, v14);
        v22 = v0[19];
        if (v21 == 1)
        {
          sub_251BD1C1C(v0[19], &qword_2813E1E00, MEMORY[0x277D85720]);
        }

        else
        {
          sub_251C71204();
          (*(v15 + 8))(v22, v14);
        }

        v5 = v44;
        v6 = v45;
        if (*v17)
        {
          v23 = v16[3];
          v24 = *v17;
          swift_getObjectType();
          swift_unknownObjectRetain();
          v25 = sub_251C711C4();
          v27 = v26;
          swift_unknownObjectRelease();
        }

        else
        {
          v25 = 0;
          v27 = 0;
        }

        sub_251A8223C(0, &qword_27F47BB70, 0x277D12478);

        if (v27 | v25)
        {
          v28 = v0 + 2;
          v0[2] = 0;
          v0[3] = 0;
          v0[4] = v25;
          v0[5] = v27;
        }

        else
        {
          v28 = 0;
        }

        v29 = v0[20];
        v0[6] = 1;
        v0[7] = v28;
        v0[8] = v39;
        v1 = swift_task_create();

        sub_251BD1C1C(v29, &qword_2813E1E00, MEMORY[0x277D85720]);
        v4 = v41;
      }

      else
      {
        sub_251BD1C1C(v19, &qword_2813E1E00, MEMORY[0x277D85720]);

        v4 = v41;
        v5 = v44;
        v6 = v45;
      }

      v3 = v5 + 1;
      if (v6 == v4)
      {
        goto LABEL_25;
      }
    }

    if (v3 >= *(v42 + 16))
    {
      goto LABEL_23;
    }

    v7 = *(v40 + 8 * v3);
    v8 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

LABEL_25:
  v30 = v0[18];
  v31 = v0[12];
  v32 = MEMORY[0x277D84F90];
  v0[9] = MEMORY[0x277D84F90];
  v33 = *v31;
  sub_251A8223C(0, &qword_27F47BB70, 0x277D12478);
  sub_251A82284();
  sub_251C71234();
  v0[21] = v32;
  v34 = *(MEMORY[0x277D85828] + 4);
  v35 = swift_task_alloc();
  v0[22] = v35;
  *v35 = v0;
  v35[1] = sub_251BCC440;
  v36 = v0[18];
  v37 = v0[16];

  return MEMORY[0x2822004E8](v0 + 10, 0, 0, v37, v0 + 11);
}

uint64_t sub_251BCC440()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v7 = *v1;

  if (v0)
  {
    v4 = *(v2 + 168);

    v5 = sub_251BCC6DC;
  }

  else
  {
    v5 = sub_251BCC558;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_251BCC558()
{
  if (v0[10])
  {
    v1 = v0 + 9;
    MEMORY[0x25308CEE0]();
    if (*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v10 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_251C71174();
    }

    sub_251C71194();
    v0[21] = v0[9];
    v2 = *(MEMORY[0x277D85828] + 4);
    v3 = swift_task_alloc();
    v0[22] = v3;
    *v3 = v0;
    v3[1] = sub_251BCC440;
    v4 = v0[18];
    v5 = v0[16];

    return MEMORY[0x2822004E8](v0 + 10, 0, 0, v5, v0 + 11);
  }

  else
  {
    v6 = v0[19];
    v7 = v0[20];
    (*(v0[17] + 8))(v0[18], v0[16]);

    v8 = v0[1];
    v9 = v0[21];

    return v8(v9);
  }
}

uint64_t sub_251BCC6DC()
{
  v1 = v0[19];
  v2 = v0[20];
  (*(v0[17] + 8))(v0[18], v0[16]);
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

id sub_251BCC778()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_251BCC7E4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_getMetatypeMetadata();
  v7 = sub_251C70F74();

  MEMORY[0x25308CDA0](46, 0xE100000000000000);

  MEMORY[0x25308CDA0](a1, a2);

  return v7;
}

uint64_t sub_251BCC8A8(uint64_t a1, uint64_t a2)
{
  v3[40] = a2;
  v3[41] = v2;
  v3[39] = a1;
  return MEMORY[0x2822009F8](sub_251BCC8CC, 0, 0);
}

uint64_t sub_251BCC8CC()
{
  v1 = v0[41];
  v14 = v0[39];
  v15 = v0[40];
  v2 = [objc_allocWithZone(MEMORY[0x277D123B0]) init];
  v0[42] = v2;
  sub_251A8223C(0, &qword_2813E1D40, 0x277CCAD38);
  v3 = sub_251B37FB0();
  v4 = [objc_allocWithZone(type metadata accessor for URLSessionCertVerificationDelegate()) init];
  type metadata accessor for WebRequestPerformer();
  v5 = swift_allocObject();
  v0[43] = v5;
  v6 = [objc_opt_self() sessionWithConfiguration:v3 delegate:v4 delegateQueue:0];

  *(v5 + 16) = v6;
  *(v5 + 24) = 1;
  v7 = sub_251BCC778();
  v8 = [objc_allocWithZone(MEMORY[0x277D124A8]) initWithHealthStore_];
  v0[44] = v8;

  v0[36] = &type metadata for WellKnownJWKSHandler;
  sub_251BD17C0();

  v9 = v8;
  v0[34] = sub_251C70F74();
  v0[35] = v10;
  v0[45] = v10;
  v0[2] = v0;
  v0[7] = v0 + 37;
  v0[3] = sub_251BCCB50;
  v11 = swift_continuation_init();
  sub_251BD1A70(0, &qword_27F47BB98, &qword_27F47BBA0, 0x277D123A8, MEMORY[0x277D85808]);
  v0[25] = v12;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_251BD1E30;
  v0[21] = &block_descriptor_65;
  v0[22] = v11;
  [v2 preprocessSignedClinicalData:v14 options:v15 completion:v0 + 18];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_251BCCB50()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 368) = v3;
  if (v3)
  {
    v4 = *(v1 + 344);

    v5 = sub_251BCD178;
  }

  else
  {
    *(v1 + 376) = *(v1 + 272);
    v5 = sub_251BCCC78;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_251BCCC78()
{
  v1 = v0[44];
  v2 = v0[37];
  v0[48] = v2;
  v3 = swift_task_alloc();
  v0[49] = v3;
  *v3 = v0;
  v3[1] = sub_251BCCD24;
  v4 = v0[47];
  v5 = v0[45];
  v6 = v0[43];

  return sub_251C1A6DC(v2, v6, v1, v4, v5);
}

uint64_t sub_251BCCD24(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 392);
  v7 = *v2;
  *(v3 + 400) = a1;
  *(v3 + 408) = v1;

  if (v1)
  {
    v5 = sub_251BCD20C;
  }

  else
  {
    v5 = sub_251BCCE38;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_251BCCE38()
{
  v1 = v0[50];
  v2 = v0[42];
  v0[10] = v0;
  v0[15] = v0 + 38;
  v0[11] = sub_251BCCF84;
  v3 = swift_continuation_init();
  sub_251BD1A70(0, &qword_27F47BB68, &qword_27F47BB70, 0x277D12478, MEMORY[0x277D85808]);
  v0[33] = v4;
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_251BD1E30;
  v0[29] = &block_descriptor_69;
  v0[30] = v3;
  [v2 processSignedClinicalDataContextCollection:v1 completion:v0 + 26];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_251BCCF84()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 416) = v3;
  if (v3)
  {
    v4 = *(v1 + 344);

    v5 = sub_251BCD2A0;
  }

  else
  {
    v5 = sub_251BCD0A4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_251BCD0A4()
{
  v1 = v0[50];
  v2 = v0[48];
  v4 = v0[44];
  v3 = v0[45];
  v6 = v0[42];
  v5 = v0[43];
  v7 = v0[38];
  v8 = [v7 muxed];

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_251BCD178()
{
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[43];
  v4 = v0[44];
  v5 = v0[42];
  swift_willThrow();

  v6 = v0[46];
  v7 = v0[1];

  return v7();
}

uint64_t sub_251BCD20C()
{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v4 = *(v0 + 336);
  v3 = *(v0 + 344);

  v5 = *(v0 + 408);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_251BCD2A0()
{
  v1 = v0[52];
  v2 = v0[50];
  v3 = v0[48];
  v5 = v0[44];
  v4 = v0[45];
  v7 = v0[42];
  v6 = v0[43];
  swift_willThrow();

  v8 = v0[52];
  v9 = v0[1];

  return v9();
}

uint64_t sub_251BCD34C(uint64_t a1, uint64_t a2)
{
  v3[40] = a2;
  v3[41] = v2;
  v3[39] = a1;
  return MEMORY[0x2822009F8](sub_251BCD370, 0, 0);
}

uint64_t sub_251BCD370()
{
  v1 = v0[41];
  v16 = v0[40];
  v2 = v0[39];
  v3 = [objc_allocWithZone(MEMORY[0x277D123B0]) init];
  v0[42] = v3;
  sub_251A8223C(0, &qword_2813E1D40, 0x277CCAD38);
  v4 = sub_251B37FB0();
  v5 = [objc_allocWithZone(type metadata accessor for URLSessionCertVerificationDelegate()) init];
  type metadata accessor for WebRequestPerformer();
  v6 = swift_allocObject();
  v0[43] = v6;
  v7 = [objc_opt_self() sessionWithConfiguration:v4 delegate:v5 delegateQueue:0];

  *(v6 + 16) = v7;
  *(v6 + 24) = 1;
  v8 = sub_251BCC778();
  v9 = [objc_allocWithZone(MEMORY[0x277D124A8]) initWithHealthStore_];
  v0[44] = v9;

  v0[36] = &type metadata for WellKnownJWKSHandler;
  sub_251BD17C0();

  v10 = v9;
  v0[34] = sub_251C70F74();
  v0[35] = v11;
  v0[45] = v11;
  sub_251A8223C(0, &qword_27F47BB60, 0x277D12398);
  v12 = sub_251C71144();
  v0[46] = v12;
  v0[2] = v0;
  v0[7] = v0 + 37;
  v0[3] = sub_251BCD628;
  v13 = swift_continuation_init();
  sub_251BD1A70(0, &qword_27F47BB98, &qword_27F47BBA0, 0x277D123A8, MEMORY[0x277D85808]);
  v0[25] = v14;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_251BD1E30;
  v0[21] = &block_descriptor_57;
  v0[22] = v13;
  [v3 reprocessOriginalSignedClinicalDataRecords:v12 options:v16 completion:v0 + 18];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_251BCD628()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 376) = v3;
  if (v3)
  {
    v4 = *(v1 + 344);

    v5 = sub_251BCDC24;
  }

  else
  {
    *(v1 + 384) = *(v1 + 272);
    v5 = sub_251BCD750;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_251BCD750()
{
  v1 = v0[46];
  v2 = v0[44];
  v3 = v0[37];
  v0[49] = v3;

  v4 = swift_task_alloc();
  v0[50] = v4;
  *v4 = v0;
  v4[1] = sub_251BCD804;
  v5 = v0[48];
  v6 = v0[45];
  v7 = v0[43];

  return sub_251C1A6DC(v3, v7, v2, v5, v6);
}

uint64_t sub_251BCD804(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 400);
  v8 = *v2;
  *(v3 + 408) = a1;
  *(v3 + 416) = v1;

  if (v1)
  {
    v5 = sub_251BCDCC4;
  }

  else
  {
    v6 = *(v3 + 344);

    v5 = sub_251BCD928;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_251BCD928()
{
  v1 = v0[51];
  v2 = v0[42];
  v0[10] = v0;
  v0[15] = v0 + 38;
  v0[11] = sub_251BCDA74;
  v3 = swift_continuation_init();
  sub_251BD1A70(0, &qword_27F47BB68, &qword_27F47BB70, 0x277D12478, MEMORY[0x277D85808]);
  v0[33] = v4;
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_251BD1E30;
  v0[29] = &block_descriptor_61;
  v0[30] = v3;
  [v2 processSignedClinicalDataContextCollection:v1 completion:v0 + 26];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_251BCDA74()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 424) = v2;
  if (v2)
  {
    v3 = sub_251BCDD58;
  }

  else
  {
    v3 = sub_251BCDB84;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251BCDB84()
{
  v1 = *(v0 + 392);
  v3 = *(v0 + 352);
  v2 = *(v0 + 360);
  v5 = *(v0 + 336);
  v4 = *(v0 + 344);

  v6 = *(v0 + 304);
  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_251BCDC24()
{
  v2 = v0[46];
  v1 = v0[47];
  v4 = v0[44];
  v3 = v0[45];
  v6 = v0[42];
  v5 = v0[43];
  swift_willThrow();

  v7 = v0[47];
  v8 = v0[1];

  return v8();
}

uint64_t sub_251BCDCC4()
{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v4 = *(v0 + 336);
  v3 = *(v0 + 344);

  v5 = *(v0 + 416);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_251BCDD58()
{
  v1 = v0[53];
  v2 = v0[51];
  v3 = v0[49];
  v5 = v0[44];
  v4 = v0[45];
  v7 = v0[42];
  v6 = v0[43];
  swift_willThrow();

  v8 = v0[53];
  v9 = v0[1];

  return v9();
}

uint64_t sub_251BCDE04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  return MEMORY[0x2822009F8](sub_251BCDE28, 0, 0);
}

uint64_t sub_251BCDE28()
{
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v0[21] = [objc_allocWithZone(MEMORY[0x277D123B0]) init];
  sub_251A8223C(0, &qword_2813E1D40, 0x277CCAD38);
  v4 = sub_251B37FB0();
  v5 = [objc_allocWithZone(type metadata accessor for URLSessionCertVerificationDelegate()) init];
  type metadata accessor for WebRequestPerformer();
  v6 = swift_allocObject();
  v0[22] = v6;
  v7 = [objc_opt_self() sessionWithConfiguration:v4 delegate:v5 delegateQueue:0];

  *(v6 + 16) = v7;
  *(v6 + 24) = 1;
  v8 = sub_251BCC778();
  v9 = [objc_allocWithZone(MEMORY[0x277D124A8]) initWithHealthStore_];
  v0[23] = v9;

  v0[13] = &type metadata for WellKnownJWKSHandler;
  sub_251BD17C0();

  v10 = v9;
  v0[11] = sub_251C70F74();
  v0[12] = v11;
  v0[24] = v11;
  v12 = [objc_allocWithZone(MEMORY[0x277D123E8]) initWithHealthStore_];
  v0[8] = sub_251A8223C(0, &qword_27F47BB80, 0x277D123E8);
  v0[9] = &off_2863FF338;
  v0[5] = v12;
  sub_251C70344();
  v13 = v3;
  v14 = v2;
  v0[10] = sub_251C70334();
  v0[2] = v6;
  v0[3] = v13;
  v0[4] = v14;
  v15 = swift_task_alloc();
  v0[25] = v15;
  *v15 = v0;
  v15[1] = sub_251BCE078;
  v16 = v0[19];

  return sub_251C2E048(v16);
}

uint64_t sub_251BCE078(uint64_t a1)
{
  v3 = *(*v2 + 200);
  v4 = *v2;
  v4[26] = a1;
  v4[27] = v1;

  if (v1)
  {
    v5 = swift_task_alloc();
    v4[34] = v5;
    *v5 = v4;
    v6 = sub_251BCE998;
  }

  else
  {
    v4[28] = v4[11];
    v5 = swift_task_alloc();
    v4[29] = v5;
    *v5 = v4;
    v6 = sub_251BCE1FC;
  }

  v5[1] = v6;
  v7 = v4[18];

  return sub_251C2E414(v7);
}

uint64_t sub_251BCE1FC()
{
  v1 = *(*v0 + 232);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_251BCE2F8, 0, 0);
}

uint64_t sub_251BCE2F8()
{
  v1 = v0[28];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[19];
  v8 = swift_allocObject();
  v0[30] = v8;
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = v5;
  v8[5] = v4;
  v8[6] = v1;
  v8[7] = v3;
  v0[15] = v2;

  v9 = v4;
  v10 = v6;

  v11 = sub_251A8223C(0, &qword_27F47BB70, 0x277D12478);
  sub_251BD1938();
  v13 = v12;
  v14 = swift_task_alloc();
  v0[31] = v14;
  v14[2] = v0 + 15;
  v14[3] = &unk_251C84908;
  v14[4] = v8;
  v15 = *(MEMORY[0x277D859B8] + 4);
  v16 = swift_task_alloc();
  v0[32] = v16;
  *v16 = v0;
  v16[1] = sub_251BCE488;

  return MEMORY[0x282200740](v0 + 16, v11, v13, 0, 0, &unk_251C84918, v14, v11);
}

uint64_t sub_251BCE488()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v7 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = sub_251BCE8E4;
  }

  else
  {
    v5 = *(v2 + 248);

    v4 = sub_251BCE5A4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_251BCE5A4()
{
  v1 = v0[30];
  v2 = v0[26];

  v3 = v0[16];
  v0[14] = v3;
  v4 = v0 + 14;
  v5 = (v0 + 2);
  if (v3 >> 62)
  {
    goto LABEL_17;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while (1)
    {
      sub_251BD0ED4();
      v7 = *v4;
      v32 = v5;
      v33 = v0;
      if (*v4 >> 62)
      {
        v31 = v6;
        v0 = sub_251C717F4();
        v6 = v31;
      }

      else
      {
        v0 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v8 = v6;
      v4 = v8;
      v34 = v8;
      if (!v0)
      {
        break;
      }

      v9 = 0;
      v10 = v8;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x25308D460](v9, v7);
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v11 = *(v7 + 8 * v9 + 32);
        }

        v12 = v11;
        v5 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v13 = [v10 items];
        sub_251A8223C(0, &qword_27F479268, 0x277D12488);
        sub_251C71154();

        v14 = [v12 items];
        v15 = v0;
        v16 = sub_251C71154();

        sub_251BFF844(v16);
        v17 = sub_251C71144();

        v4 = [v10 copyWithItems_];

        v0 = v15;
        ++v9;
        v10 = v4;
        if (v5 == v15)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      if (!sub_251C717F4())
      {
        goto LABEL_18;
      }
    }

LABEL_14:
    v0 = v33;
    v18 = v33[23];
    v19 = v33[24];
    v21 = v33[21];
    v20 = v33[22];

    sub_251BD1808(v32);
  }

  else
  {
LABEL_18:
    v23 = v0[23];
    v22 = v0[24];
    v24 = v0[21];
    v25 = v0[22];
    v26 = v0[19];

    v27 = objc_allocWithZone(MEMORY[0x277D12478]);
    sub_251A8223C(0, &qword_27F479268, 0x277D12488);
    v28 = sub_251C71144();
    v4 = [v27 initWithItems:v28 options:v26];

    sub_251BD1808(v5);
  }

  v29 = v0[1];

  return v29(v4);
}

uint64_t sub_251BCE8E4()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v7 = v0[21];
  v6 = v0[22];

  sub_251BD1808((v0 + 2));
  v8 = v0[33];
  v9 = v0[1];

  return v9();
}

uint64_t sub_251BCE998()
{
  v1 = *(*v0 + 272);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_251BCEA94, 0, 0);
}

uint64_t sub_251BCEA94()
{
  v1 = v0[27];
  v3 = v0[23];
  v2 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  swift_willThrow();

  sub_251BD1808((v0 + 2));
  v6 = v0[27];
  v7 = v0[1];

  return v7();
}

uint64_t sub_251BCEB34(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[40] = a6;
  v8[41] = a7;
  v8[38] = a4;
  v8[39] = a5;
  v8[36] = a1;
  v8[37] = a3;
  v9 = *a2;
  v8[42] = a8;
  v8[43] = v9;
  return MEMORY[0x2822009F8](sub_251BCEB64, 0, 0);
}

uint64_t sub_251BCEB64()
{
  v1 = v0[43];
  v3 = v0[37];
  v2 = v0[38];
  v0[2] = v0;
  v0[7] = v0 + 34;
  v0[3] = sub_251BCECB4;
  v4 = swift_continuation_init();
  sub_251BD1A70(0, &qword_27F47BB98, &qword_27F47BBA0, 0x277D123A8, MEMORY[0x277D85808]);
  v0[25] = v5;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_251BD1E30;
  v0[21] = &block_descriptor_41;
  v0[22] = v4;
  [v3 preprocessSignedClinicalDataFHIRResourceObject:v1 options:v2 completion:v0 + 18];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_251BCECB4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 352) = v2;
  if (v2)
  {
    v3 = sub_251BCF24C;
  }

  else
  {
    v3 = sub_251BCEDC4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251BCEDC4()
{
  v1 = v0[34];
  v0[45] = v1;
  v2 = swift_task_alloc();
  v0[46] = v2;
  *v2 = v0;
  v2[1] = sub_251BCEE64;
  v3 = v0[41];
  v4 = v0[42];
  v5 = v0[39];
  v6 = v0[40];

  return sub_251C1A6DC(v1, v5, v6, v3, v4);
}

uint64_t sub_251BCEE64(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 368);
  v7 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {
    v5 = sub_251BCF2B8;
  }

  else
  {
    v5 = sub_251BCEF78;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_251BCEF78()
{
  v1 = v0[47];
  v2 = v0[37];
  v0[10] = v0;
  v0[15] = v0 + 35;
  v0[11] = sub_251BCF0C4;
  v3 = swift_continuation_init();
  sub_251BD1A70(0, &qword_27F47BB68, &qword_27F47BB70, 0x277D12478, MEMORY[0x277D85808]);
  v0[33] = v4;
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_251BD1E30;
  v0[29] = &block_descriptor_45;
  v0[30] = v3;
  [v2 processSignedClinicalDataContextCollection:v1 completion:v0 + 26];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_251BCF0C4()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 392) = v2;
  if (v2)
  {
    v3 = sub_251BCF31C;
  }

  else
  {
    v3 = sub_251BCF1D4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251BCF1D4()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 288);

  *v2 = *(v0 + 280);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_251BCF24C()
{
  v1 = *(v0 + 352);
  swift_willThrow();
  v2 = *(v0 + 352);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_251BCF2B8()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_251BCF31C()
{
  v1 = v0[49];
  v2 = v0[47];
  v3 = v0[45];
  swift_willThrow();

  v4 = v0[49];
  v5 = v0[1];

  return v5();
}

void sub_251BCF398(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_251BD1AF0(0, &qword_2813E74D0, MEMORY[0x277CC95F0]);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v62 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v62 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v62 - v16;
  v18 = sub_251C70734();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_251C70724();
  sub_251C706F4();
  if (v22)
  {

    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v23 = sub_251C70764();
    __swift_project_value_buffer(v23, qword_2813E8130);

    v24 = a1;
    v25 = sub_251C70744();
    v26 = sub_251C713F4();

    if (os_log_type_enabled(v25, v26))
    {
      v64 = v21;
      v27 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v71 = v63;
      *v27 = 136315394;
      aBlock = v4;
      swift_getMetatypeMetadata();
      aBlock = sub_251C70F74();
      v66 = v28;

      MEMORY[0x25308CDA0](46, 0xE100000000000000);

      MEMORY[0x25308CDA0](0xD00000000000001ELL, 0x8000000251C8F9C0);

      v29 = sub_251B10780(aBlock, v66, &v71);

      *(v27 + 4) = v29;
      *(v27 + 12) = 2080;
      v30 = [v24 originIdentifier];
      v31 = [v30 signedClinicalDataRecordIdentifier];

      if (v31)
      {
        sub_251C70054();

        v32 = 0;
      }

      else
      {
        v32 = 1;
      }

      v44 = sub_251C70074();
      v45 = *(v44 - 8);
      (*(v45 + 56))(v15, v32, 1, v44);
      sub_251BD0C04(v15, v17);
      if ((*(v45 + 48))(v17, 1, v44) == 1)
      {
        v46 = 0x7D6C696E7BLL;
        sub_251BD1C1C(v17, &qword_2813E74D0, MEMORY[0x277CC95F0]);
        v47 = 0xE500000000000000;
      }

      else
      {
        v46 = sub_251C70024();
        v47 = v48;
        (*(v45 + 8))(v17, v44);
      }

      v49 = sub_251B10780(v46, v47, &v71);

      *(v27 + 14) = v49;
      _os_log_impl(&dword_251A6C000, v25, v26, "%s will update Wallet pass for record with sync identifier %s by re-adding it", v27, 0x16u);
      v50 = v63;
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v50, -1, -1);
      MEMORY[0x25308E2B0](v27, -1, -1);

      v21 = v64;
    }

    else
    {
    }

    v51 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    v52 = [objc_allocWithZone(MEMORY[0x277D124A8]) initWithHealthStore_];
    v53 = swift_allocObject();
    *(v53 + 24) = 0;
    *(v53 + 32) = 0;
    *(v53 + 16) = v2;
    *(v53 + 40) = 0;
    *(v53 + 48) = v21;
    *(v53 + 56) = v24;
    v69 = sub_251BD1794;
    v70 = v53;
    aBlock = MEMORY[0x277D85DD0];
    v66 = 1107296256;
    v67 = sub_251AD9914;
    v68 = &block_descriptor_18;
    v54 = _Block_copy(&aBlock);

    v55 = v24;

    [v52 fetchSignedClinicalDataGroupBackingMedicalRecord:v55 options:11 completion:v54];

    _Block_release(v54);
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v33 = sub_251C70764();
    __swift_project_value_buffer(v33, qword_2813E8130);

    v34 = a1;
    v64 = sub_251C70744();
    v35 = sub_251C713C4();

    if (os_log_type_enabled(v64, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v71 = v37;
      *v36 = 136315394;
      aBlock = v4;
      swift_getMetatypeMetadata();
      aBlock = sub_251C70F74();
      v66 = v38;

      MEMORY[0x25308CDA0](46, 0xE100000000000000);

      MEMORY[0x25308CDA0](0xD00000000000001ELL, 0x8000000251C8F9C0);

      v39 = sub_251B10780(aBlock, v66, &v71);

      *(v36 + 4) = v39;
      *(v36 + 12) = 2080;
      v40 = [v34 originIdentifier];
      v41 = [v40 signedClinicalDataRecordIdentifier];

      if (v41)
      {
        sub_251C70054();

        v42 = 0;
      }

      else
      {
        v42 = 1;
      }

      v56 = sub_251C70074();
      v57 = *(v56 - 8);
      (*(v57 + 56))(v9, v42, 1, v56);
      sub_251BD0C04(v9, v12);
      if ((*(v57 + 48))(v12, 1, v56) == 1)
      {
        v58 = 0x7D6C696E7BLL;
        sub_251BD1C1C(v12, &qword_2813E74D0, MEMORY[0x277CC95F0]);
        v59 = 0xE500000000000000;
      }

      else
      {
        v58 = sub_251C70024();
        v59 = v60;
        (*(v57 + 8))(v12, v56);
      }

      v61 = sub_251B10780(v58, v59, &v71);

      *(v36 + 14) = v61;
      _os_log_impl(&dword_251A6C000, v64, v35, "%s no Wallet pass exists for record with sync identifier %s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v37, -1, -1);
      MEMORY[0x25308E2B0](v36, -1, -1);
    }

    else
    {

      v43 = v64;
    }
  }
}

void sub_251BCFCD8(void *a1, void *a2, uint64_t a3, void (*a4)(void, void *), uint64_t a5, char a6, uint64_t a7, void *a8)
{
  sub_251BD1AF0(0, &qword_2813E74D0, MEMORY[0x277CC95F0]);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  MEMORY[0x28223BE20](v17);
  if (a1)
  {
    v18 = a1;
    if (a6)
    {
      sub_251C706E4();
    }

    v19 = swift_allocObject();
    v19[2] = a3;
    v19[3] = a8;
    v19[4] = a4;
    v19[5] = a5;

    v20 = a8;
    sub_251A7E910(a4);
    sub_251C70704();
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v21 = sub_251C70764();
    __swift_project_value_buffer(v21, qword_2813E8130);

    v22 = a2;
    v23 = sub_251C70744();
    v24 = sub_251C713D4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v34 = v26;
      *v25 = 136315394;
      v27 = sub_251BCC7E4(0xD000000000000039, 0x8000000251C8F940);
      v29 = sub_251B10780(v27, v28, &v34);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      if (a2)
      {
        swift_getErrorValue();
        v30 = sub_251C71A44();
        v32 = v31;
      }

      else
      {
        v30 = 0x7D6C696E7BLL;
        v32 = 0xE500000000000000;
      }

      v33 = sub_251B10780(v30, v32, &v34);

      *(v25 + 14) = v33;
      _os_log_impl(&dword_251A6C000, v23, v24, "%s failed to retrieve SCD group with error: %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v26, -1, -1);
      MEMORY[0x25308E2B0](v25, -1, -1);
    }

    if (a4)
    {
      a4(0, a2);
    }
  }
}

void sub_251BD03DC(void *a1, uint64_t a2, void *a3, void (*a4)(void, void), uint64_t a5)
{
  v63 = a5;
  sub_251BD1AF0(0, &qword_2813E74D0, MEMORY[0x277CC95F0]);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v61 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v61 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v61 - v19;
  if (a1)
  {
    v21 = a1;
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v22 = sub_251C70764();
    __swift_project_value_buffer(v22, qword_2813E8130);
    v23 = a1;

    v24 = a3;
    v25 = sub_251C70744();
    v26 = sub_251C713D4();

    if (os_log_type_enabled(v25, v26))
    {
      v62 = a4;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v64 = v28;
      *v27 = 136315650;
      v29 = sub_251BCC7E4(0xD000000000000039, 0x8000000251C8F940);
      v31 = sub_251B10780(v29, v30, &v64);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      v32 = [v24 originIdentifier];
      v33 = [v32 signedClinicalDataRecordIdentifier];

      if (v33)
      {
        sub_251C70054();

        v34 = sub_251C70074();
        (*(*(v34 - 8) + 56))(v18, 0, 1, v34);
      }

      else
      {
        v34 = sub_251C70074();
        (*(*(v34 - 8) + 56))(v18, 1, 1, v34);
      }

      sub_251BD0C04(v18, v20);
      sub_251C70074();
      v47 = *(v34 - 8);
      if ((*(v47 + 48))(v20, 1, v34) == 1)
      {
        v48 = 0x7D6C696E7BLL;
        sub_251BD1C1C(v20, &qword_2813E74D0, MEMORY[0x277CC95F0]);
        v49 = 0xE500000000000000;
      }

      else
      {
        v48 = sub_251C70024();
        v49 = v50;
        (*(v47 + 8))(v20, v34);
      }

      v51 = sub_251B10780(v48, v49, &v64);

      *(v27 + 14) = v51;
      *(v27 + 22) = 2080;
      swift_getErrorValue();
      v52 = sub_251C71A44();
      v54 = sub_251B10780(v52, v53, &v64);

      *(v27 + 24) = v54;
      _os_log_impl(&dword_251A6C000, v25, v26, "%s failed to add Wallet pass for record with sync identifier %s: %s", v27, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v28, -1, -1);
      MEMORY[0x25308E2B0](v27, -1, -1);

      a4 = v62;
      if (!v62)
      {
        goto LABEL_22;
      }
    }

    else
    {

      if (!a4)
      {
        goto LABEL_22;
      }
    }

    v55 = a1;
    a4(0, a1);

LABEL_22:
    return;
  }

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v35 = sub_251C70764();
  __swift_project_value_buffer(v35, qword_2813E8130);

  v36 = a3;
  v37 = sub_251C70744();
  v38 = sub_251C713F4();

  if (os_log_type_enabled(v37, v38))
  {
    v62 = a4;
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v64 = v40;
    *v39 = 136315394;
    v41 = sub_251BCC7E4(0xD000000000000039, 0x8000000251C8F940);
    v43 = sub_251B10780(v41, v42, &v64);

    *(v39 + 4) = v43;
    *(v39 + 12) = 2080;
    v44 = [v36 originIdentifier];
    v45 = [v44 signedClinicalDataRecordIdentifier];

    if (v45)
    {
      sub_251C70054();

      v46 = sub_251C70074();
      (*(*(v46 - 8) + 56))(v12, 0, 1, v46);
    }

    else
    {
      v46 = sub_251C70074();
      (*(*(v46 - 8) + 56))(v12, 1, 1, v46);
    }

    sub_251BD0C04(v12, v15);
    sub_251C70074();
    v56 = *(v46 - 8);
    if ((*(v56 + 48))(v15, 1, v46) == 1)
    {
      v57 = 0x7D6C696E7BLL;
      sub_251BD1C1C(v15, &qword_2813E74D0, MEMORY[0x277CC95F0]);
      v58 = 0xE500000000000000;
    }

    else
    {
      v57 = sub_251C70024();
      v58 = v59;
      (*(v56 + 8))(v15, v46);
    }

    v60 = sub_251B10780(v57, v58, &v64);

    *(v39 + 14) = v60;
    _os_log_impl(&dword_251A6C000, v37, v38, "%s did add Wallet pass for record with sync identifier %s", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v40, -1, -1);
    MEMORY[0x25308E2B0](v39, -1, -1);

    a4 = v62;
    if (v62)
    {
      goto LABEL_28;
    }
  }

  else
  {

    if (a4)
    {
LABEL_28:
      a4(1, 0);
    }
  }
}

uint64_t sub_251BD0C04(uint64_t a1, uint64_t a2)
{
  sub_251BD1AF0(0, &qword_2813E74D0, MEMORY[0x277CC95F0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251BD0C84(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, void *a6)
{
  *(v6 + 16) = *a6;
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  *(v6 + 24) = v9;
  *v9 = v6;
  v9[1] = sub_251BD0D90;

  return v11(a1, v6 + 16);
}

uint64_t sub_251BD0D90()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_251BD0EBC;
  }

  else
  {
    v3 = sub_251BD0EA4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_251BD0ED4()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    MEMORY[0x25308D460](0, v1);
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (v1 < 0)
  {
    v4 = *v0;
  }

  else
  {
    v4 = *v0 & 0xFFFFFFFFFFFFFF8;
  }

  if (!sub_251C717F4())
  {
    goto LABEL_20;
  }

  if (!sub_251C717F4())
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_14;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    *(v1 + 32);
    if (!v2)
    {
LABEL_6:
      v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_16;
    }

LABEL_15:
    v3 = sub_251C717F4();
LABEL_16:
    if (v3)
    {
      sub_251C5D060(0, 1);
      return;
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_251BD0FAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = *a3;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_251BD1064;

  return sub_251BCBEA8(a2, v9, a4, a5);
}

uint64_t sub_251BD1064(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_251BD1174(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, void *a6)
{
  v6[4] = a1;
  v6[3] = *a6;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  v6[5] = v8;
  *v8 = v6;
  v8[1] = sub_251BD127C;

  return (v10)(v6 + 2, v6 + 3);
}

uint64_t sub_251BD127C()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_251BD13B4;
  }

  else
  {
    v3 = sub_251BD1390;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251BD13CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x2822009F8](sub_251BD13EC, 0, 0);
}

uint64_t sub_251BD13EC()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = [objc_allocWithZone(MEMORY[0x277D123B0]) init];
  v0[21] = v3;
  sub_251A8223C(0, &qword_27F47BB60, 0x277D12398);
  v4 = sub_251C71144();
  v0[22] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_251BD1584;
  v5 = swift_continuation_init();
  sub_251BD1A70(0, &qword_27F47BB68, &qword_27F47BB70, 0x277D12478, MEMORY[0x277D85808]);
  v0[17] = v6;
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_251BD1E30;
  v0[13] = &block_descriptor_16;
  v0[14] = v5;
  [v3 processOriginalSignedClinicalDataRecords:v4 options:v1 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_251BD1584()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_251BD1704;
  }

  else
  {
    v3 = sub_251BD1694;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251BD1694()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 144);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_251BD1704()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[23];

  return v4();
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  return sub_251A83384(a2 + 32, a1 + 32);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_destroy_helper_17(uint64_t a1)
{
  v1 = *(a1 + 40);
}

{
  v1 = *(a1 + 40);
}

unint64_t sub_251BD17C0()
{
  result = qword_27F47BB78;
  if (!qword_27F47BB78)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F47BB78);
  }

  return result;
}

uint64_t sub_251BD185C(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_251AF4F78;

  return sub_251BCEB34(a1, a2, v6, v7, v8, v9, v11, v10);
}

void sub_251BD1938()
{
  if (!qword_27F47BB88)
  {
    sub_251A8223C(255, &qword_27F47BB70, 0x277D12478);
    v0 = sub_251C711A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47BB88);
    }
  }
}

uint64_t sub_251BD19A0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_251B14FE8;

  return sub_251BD0FAC(a1, a2, v6, v7, v8);
}

void sub_251BD1A70(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v8 = sub_251A8223C(255, a3, a4);
    v9 = sub_251A82284();
    v10 = a5(a1, v8, v9, MEMORY[0x277D84950]);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_251BD1AF0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C71574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251BD1B44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_251B14FE8;

  return sub_251BD1174(a1, v4, v5, v6, v7, v1 + 6);
}

uint64_t sub_251BD1C1C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_251BD1AF0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_251BD1C78()
{
  if (!qword_27F47BBA8)
  {
    sub_251A82284();
    v0 = sub_251C71254();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47BBA8);
    }
  }
}

uint64_t objectdestroy_32Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_251BD1D28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_251B14FE8;

  return sub_251BD0C84(a1, v4, v5, v6, v7, v1 + 6);
}

void sub_251BD1E34(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v12 = sub_251C70764();
  __swift_project_value_buffer(v12, qword_2813E8130);

  v13 = a1;
  oslog = sub_251C70744();
  v14 = sub_251C713D4();

  if (os_log_type_enabled(oslog, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315906;
    *(v15 + 4) = sub_251B10780(a2, a3, &v22);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_251B10780(a4, a5, &v22);
    *(v15 + 22) = 2048;
    *(v15 + 24) = a6;
    *(v15 + 32) = 2080;
    v17 = a1;
    sub_251A82284();
    v18 = sub_251C70F74();
    v20 = sub_251B10780(v18, v19, &v22);

    *(v15 + 34) = v20;
    _os_log_impl(&dword_251A6C000, oslog, v14, "Sending message to remote object proxy failed at %s:%s:%ld: %s", v15, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v16, -1, -1);
    MEMORY[0x25308E2B0](v15, -1, -1);
  }

  else
  {
  }
}

void sub_251BD206C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = MEMORY[0x277D84F90];
  sub_251BD21BC();
  v14 = swift_allocObject();
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = v13;
  v14[5] = sub_251AD96B8;
  v14[6] = v12;

  v15 = a4;
  v16 = a6;

  v17 = sub_251C714D4();
  [a3 executeQuery_];
}

unint64_t sub_251BD21BC()
{
  result = qword_27F47BBB0;
  if (!qword_27F47BBB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F47BBB0);
  }

  return result;
}

void sub_251BD2208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(id, uint64_t))
{
  v11 = sub_251C714C4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v15, a2, v11);
  v16 = (*(v12 + 88))(v15, v11);
  if (v16 == *MEMORY[0x277CCB720])
  {
    (*(v12 + 96))(v15, v11);
    v17 = *v15;
    v18 = [*v15 quantityForLead_];
    if (v18)
    {
      v19 = v18;
      [v18 doubleValueForUnit_];
      v21 = v20;

      swift_beginAccess();
      v22 = *(a5 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a5 + 16) = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v22 = sub_251C39724(0, *(v22 + 2) + 1, 1, v22);
        *(a5 + 16) = v22;
      }

      v25 = *(v22 + 2);
      v24 = *(v22 + 3);
      if (v25 >= v24 >> 1)
      {
        v22 = sub_251C39724((v24 > 1), v25 + 1, 1, v22);
      }

      v26 = v21;
      *(v22 + 2) = v25 + 1;
      *&v22[4 * v25 + 32] = v26;
      *(a5 + 16) = v22;
    }
  }

  else if (v16 == *MEMORY[0x277CCB730])
  {
    (*(v12 + 96))(v15, v11);
    v27 = *v15;
    v28 = *v15;
    a6(v27, 1);
  }

  else if (v16 == *MEMORY[0x277CCB728])
  {
    swift_beginAccess();
    v29 = *(a5 + 16);

    a6(v30, 0);
  }

  else
  {
    v31[1] = 0;
    v31[2] = 0xE000000000000000;
    sub_251C716A4();
    MEMORY[0x25308CDA0](0xD00000000000002BLL, 0x8000000251C8FAA0);
    sub_251C717C4();
    sub_251C717E4();
    __break(1u);
  }
}

void sub_251BD25B8()
{
  type metadata accessor for ClinicalSharingSyncContext();
  if (v0 <= 0x3F)
  {
    type metadata accessor for HKClinicalSharingReason(319);
    if (v1 <= 0x3F)
    {
      sub_251C70014();
      if (v2 <= 0x3F)
      {
        sub_251BD2AD0(319, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_251BD26BC()
{
  sub_251BD2AD0(0, &qword_2813E1C58, sub_251B29AC0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251C78260;
  *(inited + 32) = 0xD00000000000001DLL;
  *(inited + 40) = 0x8000000251C8B180;
  v2 = type metadata accessor for ClinicalSharingOperationalMetric(0);
  v3 = *(v0 + *(v2 + 36));
  *(inited + 72) = &type metadata for IHRMetricField;
  *(inited + 80) = &off_2863F6C30;
  *(inited + 48) = v3;
  *(inited + 88) = 0x7361655268737570;
  *(inited + 96) = 0xEA00000000006E6FLL;
  v4 = v0[1];
  *(inited + 128) = &type metadata for PushReasonMetricField;
  *(inited + 136) = &off_2863FBF98;
  *(inited + 104) = v4;
  *(inited + 144) = 0x73736563637573;
  *(inited + 152) = 0xE700000000000000;
  v5 = *v0;
  v6 = *(*v0 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_error);
  *(inited + 184) = &type metadata for SyncSuccessMetricField;
  *(inited + 192) = &off_2863FBF80;
  *(inited + 160) = v6 == 0;
  *(inited + 200) = 0x6D6F44726F727265;
  *(inited + 208) = 0xEB000000006E6961;
  *(inited + 240) = &type metadata for ErrorDomainMetricField;
  *(inited + 248) = &off_2863F6C18;
  strcpy((inited + 256), "errorMessage");
  *(inited + 269) = 0;
  *(inited + 270) = -5120;
  v25 = v2;
  v26 = v6;
  *(inited + 216) = v6;
  *(inited + 296) = &type metadata for ErrorMessageMetricField;
  *(inited + 304) = &off_2863F6C00;
  *(inited + 272) = v6;
  *(inited + 312) = 0xD000000000000014;
  *(inited + 320) = 0x8000000251C8FAD0;
  v7 = v2;
  v8 = *(v2 + 28);
  PushMetricField = type metadata accessor for MinutesSinceLastPushMetricField(0);
  *(inited + 352) = PushMetricField;
  *(inited + 360) = &off_2863FBF68;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 328));
  sub_251AC553C(v0 + v8, boxed_opaque_existential_1);
  v11 = *(v7 + 24);
  v12 = *(PushMetricField + 20);
  v13 = sub_251C70014();
  v14 = *(*(v13 - 8) + 16);
  v14(boxed_opaque_existential_1 + v12, v0 + v11, v13);
  *(inited + 368) = 0xD00000000000001ELL;
  *(inited + 376) = 0x8000000251C8FAF0;
  v15 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_lastSync;
  swift_beginAccess();
  SuccessfulPushMetricField = type metadata accessor for MinutesSinceLastSuccessfulPushMetricField(0);
  *(inited + 408) = SuccessfulPushMetricField;
  *(inited + 416) = &off_2863FBF50;
  v17 = __swift_allocate_boxed_opaque_existential_1((inited + 384));
  sub_251AC553C(v5 + v15, v17);
  v14(v17 + *(SuccessfulPushMetricField + 20), v0 + v11, v13);
  *(inited + 424) = 0xD000000000000011;
  *(inited + 432) = 0x8000000251C8FB10;
  v18 = *(v25 + 32);
  v19 = type metadata accessor for OperationDurationMetricField(0);
  *(inited + 464) = v19;
  *(inited + 472) = &off_2863FBF38;
  v20 = __swift_allocate_boxed_opaque_existential_1((inited + 440));
  v14(v20, v0 + v18, v13);
  v14(v20 + *(v19 + 20), v0 + v11, v13);
  v21 = v26;
  v22 = v26;
  v23 = sub_251C4C2A0(inited);
  swift_setDeallocating();
  sub_251B29AC0();
  swift_arrayDestroy();
  return v23;
}

uint64_t sub_251BD2A88(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

void sub_251BD2AD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_251BD2B94(uint64_t a1@<X8>)
{
  v2 = *v1;
  if (*v1 > 3)
  {
    if (v2 == 4)
    {
      *a1 = 0x676E6974736574;
      *(a1 + 8) = 0xE700000000000000;
      return;
    }

    if (v2 != 5)
    {
      if (v2 == 6)
      {
        *a1 = 0xD000000000000010;
        *(a1 + 8) = 0x8000000251C8A720;
        return;
      }

      goto LABEL_12;
    }

    strcpy(a1, "user-initiated");
    *(a1 + 15) = -18;
  }

  else
  {
    if (v2 == 1)
    {
      strcpy(a1, "authorization");
      *(a1 + 14) = -4864;
      return;
    }

    if (v2 != 2)
    {
      if (v2 == 3)
      {
        *a1 = 0x756F72676B636162;
        *(a1 + 8) = 0xEA0000000000646ELL;
        return;
      }

LABEL_12:
      *a1 = 0x6E776F6E6B6E75;
      *(a1 + 8) = 0xE700000000000000;
      return;
    }

    *a1 = 0x617461642D77656ELL;
    *(a1 + 8) = 0xE800000000000000;
  }
}

uint64_t sub_251BD2CB4@<X0>(uint64_t a1@<X8>)
{
  result = sub_251BD2D00(type metadata accessor for MinutesSinceLastPushMetricField);
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_251BD2D00(uint64_t (*a1)(void))
{
  v3 = sub_251C70014();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BD2AD0(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  sub_251AC553C(v1, &v18 - v10);
  v12 = (*(v4 + 48))(v11, 1, v3);
  result = 0;
  if (v12 != 1)
  {
    (*(v4 + 32))(v7, v11, v3);
    v14 = v1 + *(a1(0) + 20);
    sub_251C6FF74();
    v16 = v15;
    result = (*(v4 + 8))(v7, v3);
    v17 = v16 / 60.0;
    if (COERCE__INT64(fabs(v16 / 60.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v17 > -9.22337204e18)
    {
      if (v17 < 9.22337204e18)
      {
        return v17;
      }

LABEL_9:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_251BD2F1C@<X0>(uint64_t a1@<X8>)
{
  result = sub_251BD2D00(type metadata accessor for MinutesSinceLastSuccessfulPushMetricField);
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_251BD2F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1 + 20);
  result = sub_251C6FF74();
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v7 = v6;
  if (v6 >= 181)
  {
    v7 = 181;
  }

  *a2 = v7;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_251BD3030()
{
  result = sub_251C70014();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_17Tm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_251BD2AD0(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_251C70014();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t __swift_store_extra_inhabitant_index_18Tm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_251BD2AD0(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_251C70014();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_251BD3338()
{
  sub_251BD2AD0(319, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_251C70014();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_251BD3410()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  v2 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_date;
  v3 = sub_251C70014();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar;
  v5 = sub_251C701E4();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_251BD3534()
{
  result = sub_251C70014();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_251C701E4();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_251BD366C()
{
  type metadata accessor for PBTypedData(319);
  if (v0 <= 0x3F)
  {
    sub_251BBF120();
    if (v1 <= 0x3F)
    {
      sub_251BD3708();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251BD3708()
{
  if (!qword_2813E3AE0[0])
  {
    v0 = sub_251C71574();
    if (!v1)
    {
      atomic_store(v0, qword_2813E3AE0);
    }
  }
}

uint64_t sub_251BD3768(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  sub_251B1B1EC();
  if ((sub_251C71534() & 1) == 0)
  {
    return 0;
  }

  return sub_251A94D14(v2, v4);
}

uint64_t sub_251BD37E4(uint64_t a1, uint64_t *a2)
{
  if (sub_251A911BC(a1, a2))
  {
    Output = type metadata accessor for ClinicalSharingQueryOutput(0);
    if (sub_251BBF35C(*(a1 + *(Output + 20)), *(a2 + *(Output + 20))))
    {
      v5 = *(Output + 24);
      v6 = a1 + v5;
      v7 = *(a1 + v5);
      v8 = a2 + v5;
      v9 = *v8;
      if (v7)
      {
        if (v9)
        {
          v10 = *(v6 + 8);
          v11 = *(v8 + 1);
          sub_251B1B1EC();
          v12 = v9;

          if (sub_251C71534())
          {
            v13 = sub_251A94D14(v10, v11);

            if (v13)
            {
              return 1;
            }
          }

          else
          {
          }
        }
      }

      else if (!v9)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t type metadata accessor for FHIRServerWebRequest()
{
  result = qword_27F47BC08;
  if (!qword_27F47BC08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_251BD3948(void *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v4 = sub_251C70074();
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = *(v46 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_251C6FE64();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v45 - v14;
  v50 = type metadata accessor for ClinicalDocumentDownloadRequest();
  v16 = &a2[v50[7]];
  *v16 = xmmword_251C74660;
  *(a2 + 1) = 0;
  *a2 = 2;
  v17 = [a1 webURL];
  if (v17)
  {
    v18 = v17;
    v19 = a1;
    sub_251C6FE14();

    (*(v9 + 32))(v15, v13, v8);
    (*(v9 + 16))(&a2[v50[6]], v15, v8);
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_251C716A4();

    v48 = 0xD000000000000020;
    v49 = 0x8000000251C8FBD0;
    v20 = 0xE700000000000000;
    v21 = *a2;
    v22 = 0x5443454E4E4F43;
    v23 = 0xE300000000000000;
    v24 = 5526864;
    if (v21 != 6)
    {
      v24 = 0x4543415254;
      v23 = 0xE500000000000000;
    }

    v25 = 0xE700000000000000;
    v26 = 0x534E4F4954504FLL;
    if (v21 != 4)
    {
      v26 = 1414745936;
      v25 = 0xE400000000000000;
    }

    if (*a2 <= 5u)
    {
      v24 = v26;
      v23 = v25;
    }

    v27 = 0xE300000000000000;
    v28 = 5522759;
    if (v21 != 2)
    {
      v28 = 1145128264;
      v27 = 0xE400000000000000;
    }

    if (*a2)
    {
      v22 = 0x4554454C4544;
      v20 = 0xE600000000000000;
    }

    if (*a2 > 1u)
    {
      v22 = v28;
      v20 = v27;
    }

    if (*a2 <= 3u)
    {
      v29 = v22;
    }

    else
    {
      v29 = v24;
    }

    if (*a2 <= 3u)
    {
      v30 = v20;
    }

    else
    {
      v30 = v23;
    }

    MEMORY[0x25308CDA0](v29, v30);

    MEMORY[0x25308CDA0](32, 0xE100000000000000);
    v31 = [a1 identifier];
    sub_251C70054();

    sub_251BD3E8C();
    v32 = v47;
    v33 = sub_251C719A4();
    MEMORY[0x25308CDA0](v33);

    (*(v46 + 8))(v7, v32);
    v34 = v48;
    v35 = v49;
    (*(v9 + 8))(v15, v8);
    v36 = v19;
    v37 = &a2[v50[8]];
    *v37 = v34;
    *(v37 + 1) = v35;
    v38 = [v19 contentType];
    if (v38)
    {
      v39 = v38;
      v40 = sub_251C70F14();
      v42 = v41;

      sub_251BD40D0(0, &qword_27F47A080, &type metadata for HTTPHeader, MEMORY[0x277D84560]);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_251C74800;
      *(v43 + 32) = 0x747065636341;
      *(v43 + 40) = 0xE600000000000000;
      *(v43 + 48) = v40;
      *(v43 + 56) = v42;

      *(a2 + 1) = v43;
    }

    else
    {
    }
  }

  else
  {
    sub_251BD3E38();
    swift_allocError();
    *v44 = 0;
    swift_willThrow();

    sub_251A8596C(*v16, *(v16 + 1));
  }
}

uint64_t type metadata accessor for ClinicalDocumentDownloadRequest()
{
  result = qword_27F47BC20;
  if (!qword_27F47BC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_251BD3E38()
{
  result = qword_27F47BC18;
  if (!qword_27F47BC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BC18);
  }

  return result;
}

unint64_t sub_251BD3E8C()
{
  result = qword_27F479418;
  if (!qword_27F479418)
  {
    sub_251C70074();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479418);
  }

  return result;
}

uint64_t sub_251BD3EE4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_251BD3F34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_251BD3F88(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_251BD3FA0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_251BD3FF8()
{
  sub_251A85C78();
  if (v0 <= 0x3F)
  {
    sub_251C6FE64();
    if (v1 <= 0x3F)
    {
      sub_251BD40D0(319, &qword_2813E7518, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251BD40D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_251BD4130(uint64_t a1)
{
  sub_251BD5078();
  v29 = v2;
  v31 = *(v2 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BD520C(0, &qword_27F47BC60, type metadata accessor for PBTypedData);
  v30 = v6;
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  sub_251BD52B8(0);
  v11 = *(v10 - 8);
  v33 = v10;
  v34 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *MEMORY[0x277CCCE68];
  sub_251C70F14();
  v16 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v17 = sub_251C70EE4();

  v18 = [v16 initWithKey:v17 ascending:0];

  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  sub_251A82418();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_251C74560;
  *(v19 + 32) = v18;
  v28 = v18;
  v20 = sub_251C2A734(v19);

  v35 = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_251BD52D8;
  *(v21 + 24) = a1;
  sub_251BD5134();
  sub_251A8223C(0, &qword_27F47BC50, 0x277CCD580);
  sub_251BD5324(&qword_27F47BC58, sub_251BD5134);

  sub_251C70AA4();

  v22 = swift_allocObject();
  *(v22 + 16) = sub_251BD5314;
  *(v22 + 24) = a1;
  type metadata accessor for PBTypedData(0);

  v23 = v29;
  sub_251C70774();

  (*(v31 + 8))(v5, v23);
  type metadata accessor for ClinicalSharingQueryOutput(0);

  v24 = v30;
  sub_251C70774();

  (*(v32 + 8))(v9, v24);
  sub_251BD5324(&qword_27F47BC70, sub_251BD52B8);
  v25 = v33;
  v26 = sub_251C70A94();

  (*(v34 + 8))(v14, v25);
  return v26;
}

uint64_t sub_251BD45F0(unint64_t a1)
{
  v1 = sub_251B1513C(a1);
  if (!v1)
  {
    goto LABEL_13;
  }

  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
    v5 = v1;
    v6 = sub_251C717F4();
    v1 = v5;
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_9:

    return 0;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x25308D460](0);
    goto LABEL_7;
  }

  if (*(v2 + 16))
  {
    v3 = *(v1 + 32);
LABEL_7:
    v4 = v3;

    return v4;
  }

  __break(1u);
LABEL_13:
  result = sub_251C717E4();
  __break(1u);
  return result;
}

char *sub_251BD46EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a2;
  sub_251BD536C(0, &qword_27F478D90, MEMORY[0x277CC88A8]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v75 = &v64 - v7;
  v8 = type metadata accessor for PBDateRange(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v74 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBTypedData(0);
  v77 = *(v12 - 1);
  v13 = *(v77 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PBActiveMedications(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v73 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = (&v64 - v20);
  v80 = sub_251C70074();
  v22 = *(v80 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v80);
  v25 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v68 = a1;
    v26 = [v68 linkCollection];
    v71 = a3;
    v72 = v21;
    v69 = v9;
    v70 = v8;
    if (v26)
    {
      v67 = v16;
      v27 = v26;
      v28 = [v26 links];

      sub_251A8223C(0, &qword_27F47BC78, 0x277CCDB00);
      v29 = sub_251C71154();

      v30 = v29;
      if (v29 >> 62)
      {
        v31 = sub_251C717F4();
        v30 = v29;
        v16 = v67;
        if (v31)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v16 = v67;
        if (v31)
        {
LABEL_5:
          v32 = v22;
          v33 = v30;
          v65 = v15;
          v66 = v12;
          v81 = MEMORY[0x277D84F90];
          v79 = v31;
          result = sub_251C0B6AC(0, v31 & ~(v31 >> 63), 0);
          if (v79 < 0)
          {
            __break(1u);
            return result;
          }

          v35 = 0;
          v36 = v81;
          v37 = v33;
          v78 = v33 & 0xC000000000000001;
          v38 = (v32 + 8);
          v39 = v33;
          do
          {
            if (v78)
            {
              v40 = MEMORY[0x25308D460](v35, v37);
            }

            else
            {
              v40 = *(v37 + 8 * v35 + 32);
            }

            v41 = v40;
            v42 = [v40 targetUUID];
            sub_251C70054();

            v43 = sub_251C70024();
            v45 = v44;

            (*v38)(v25, v80);
            v81 = v36;
            v47 = *(v36 + 16);
            v46 = *(v36 + 24);
            if (v47 >= v46 >> 1)
            {
              sub_251C0B6AC((v46 > 1), v47 + 1, 1);
              v36 = v81;
            }

            ++v35;
            *(v36 + 16) = v47 + 1;
            v48 = v36 + 16 * v47;
            *(v48 + 32) = v43;
            *(v48 + 40) = v45;
            v37 = v39;
          }

          while (v79 != v35);

          v15 = v65;
          v12 = v66;
          v21 = v72;
          v16 = v67;
          goto LABEL_20;
        }
      }

      v36 = MEMORY[0x277D84F90];
    }

    else
    {
      v36 = 0;
    }

LABEL_20:
    *v21 = MEMORY[0x277D84F90];
    v50 = v21 + *(v16 + 20);
    sub_251C703A4();
    if (v36)
    {
      *v21 = v36;
    }

    *v15 = 0;
    v15[8] = 1;
    v51 = v12[5];
    v52 = type metadata accessor for PBTypedData.OneOf_Raw(0);
    v53 = *(v52 - 8);
    v79 = *(v53 + 56);
    v80 = v53 + 56;
    (v79)(&v15[v51], 1, 1, v52);
    v54 = &v15[v12[6]];
    sub_251C703A4();
    v55 = v12[7];
    v56 = v70;
    v57 = *(v69 + 56);
    v57(&v15[v55], 1, 1, v70);
    v58 = sub_251C6FAE4();
    v59 = v75;
    (*(*(v58 - 8) + 56))(v75, 1, 1, v58);
    v60 = v74;
    sub_251BFC468(5, 1, v59, v76);

    sub_251BD5428(v59, &qword_27F478D90, MEMORY[0x277CC88A8]);
    sub_251BD5428(&v15[v55], qword_2813E6EE8, type metadata accessor for PBDateRange);
    sub_251BD5484(v60, &v15[v55], type metadata accessor for PBDateRange);
    v57(&v15[v55], 0, 1, v56);
    *v15 = 132;
    v15[8] = 1;
    v62 = v72;
    v61 = v73;
    sub_251BD53C0(v72, v73, type metadata accessor for PBActiveMedications);
    sub_251BD5428(&v15[v51], qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251BD5484(v61, &v15[v51], type metadata accessor for PBActiveMedications);
    swift_storeEnumTagMultiPayload();
    (v79)(&v15[v51], 0, 1, v52);
    v63 = v71;
    sub_251BD5484(v15, v71, type metadata accessor for PBTypedData);
    (*(v77 + 56))(v63, 0, 1, v12);
    return sub_251BD54EC(v62);
  }

  v49 = *(v77 + 56);

  return v49(a3, 1, 1, v12);
}

uint64_t sub_251BD4E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_251C702E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(a2 + 56);
  (*(v7 + 104))(v10, *MEMORY[0x277D112F8], v6);
  v19 = v10;
  v12 = sub_251BF1DA0(MEMORY[0x277D84F90], sub_251AD6374, v18, v11);
  (*(v7 + 8))(v10, v6);
  if (*(v12 + 16))
  {
    sub_251BD53C0(a1, a3, type metadata accessor for PBTypedData);
    v13 = sub_251BFAE40(v12);

    Output = type metadata accessor for ClinicalSharingQueryOutput(0);
    *(a3 + *(Output + 20)) = v13;
    v15 = (a3 + *(Output + 24));
    *v15 = 0;
    v15[1] = 0;
    return (*(*(Output - 8) + 56))(a3, 0, 1, Output);
  }

  else
  {
    v17 = type metadata accessor for ClinicalSharingQueryOutput(0);
    (*(*(v17 - 8) + 56))(a3, 1, 1, v17);
  }
}

void sub_251BD5078()
{
  if (!qword_27F47BC30)
  {
    sub_251BD5134();
    sub_251A8223C(255, &qword_27F47BC50, 0x277CCD580);
    sub_251BD5324(&qword_27F47BC58, sub_251BD5134);
    v0 = sub_251C70784();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47BC30);
    }
  }
}

void sub_251BD5134()
{
  if (!qword_27F47BC38)
  {
    sub_251BD51A4();
    sub_251A82284();
    v0 = sub_251C70974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47BC38);
    }
  }
}

void sub_251BD51A4()
{
  if (!qword_27F47BC40)
  {
    sub_251A8223C(255, &qword_27F47BC48, 0x277CCDAF0);
    v0 = sub_251C711A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47BC40);
    }
  }
}

void sub_251BD520C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_251BD5134();
    a3(255);
    sub_251BD5324(&qword_27F47BC58, sub_251BD5134);
    v5 = sub_251C70784();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_251BD52E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_251BD5324(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_251BD536C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C71574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251BD53C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251BD5428(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_251BD536C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251BD5484(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251BD54EC(uint64_t a1)
{
  v2 = type metadata accessor for PBActiveMedications(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_19HealthRecordsDaemon31FHIRServerOperationRequestErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_251BD5560(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_251BD55BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_251BD560C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_251BD5640(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 0:
      return 0xD000000000000013;
    case 1:
      return 0xD000000000000011;
    case 2:
      return 0x6569746170206F4ELL;
  }

  sub_251C716A4();

  MEMORY[0x25308CDA0](a1, a2);
  return 0xD000000000000019;
}

void sub_251BD5744(uint64_t *a1@<X8>)
{
  sub_251A8223C(0, &qword_2813E1D40, 0x277CCAD38);
  v2 = sub_251B37FB0();
  v3 = [objc_allocWithZone(type metadata accessor for URLSessionCertVerificationDelegate()) init];
  v4 = type metadata accessor for WebRequestPerformer();
  v5 = swift_allocObject();
  v6 = [objc_opt_self() sessionWithConfiguration:v2 delegate:v3 delegateQueue:0];

  *(v5 + 16) = v6;
  *(v5 + 24) = 0;
  a1[3] = v4;
  a1[4] = &protocol witness table for WebRequestPerformer;
  *a1 = v5;
}