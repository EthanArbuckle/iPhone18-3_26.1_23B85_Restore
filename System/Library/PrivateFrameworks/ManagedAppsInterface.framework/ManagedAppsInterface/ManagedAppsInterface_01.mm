void static DMCPersonaHelper.getCurrentPersonaInfo()(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() sharedManager];
  if (!v2)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = v2;
  v4 = [v2 currentPersona];

  if (v4)
  {
    v5 = [v4 userPersonaUniqueString];
    if (v5)
    {
      v6 = v5;
      v7 = sub_25807FCE8();
      v9 = v8;

      v10 = [v4 userPersonaNickName];
      if (v10)
      {
        v11 = v10;
        v12 = sub_25807FCE8();
        v14 = v13;

        LOBYTE(v11) = [v4 isEnterprisePersona];
        a1[3] = &type metadata for ManagedAppPersonaInfo;
        a1[4] = &off_28693D280;
        v15 = swift_allocObject();
        *a1 = v15;

        *(v15 + 16) = v7;
        *(v15 + 24) = v9;
        *(v15 + 32) = v12;
        *(v15 + 40) = v14;
        *(v15 + 48) = v11;
        return;
      }

      goto LABEL_13;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  if (qword_27F919E68 != -1)
  {
    swift_once();
  }

  v16 = sub_25807FC78();
  __swift_project_value_buffer(v16, qword_27F91CCF8);
  v17 = sub_25807FC58();
  v18 = sub_25807FDE8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_25805F000, v17, v18, "Failed to get current persona", v19, 2u);
    MEMORY[0x259C77C60](v19, -1, -1);
  }

  sub_25807AE34();
  swift_allocError();
  *v20 = 0xD00000000000001FLL;
  *(v20 + 8) = 0x80000002580838C0;
  *(v20 + 16) = 0;
  swift_willThrow();
}

unint64_t sub_25807AE34()
{
  result = qword_27F91A2C0;
  if (!qword_27F91A2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A2C0);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25807AE9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25807AEE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20ManagedAppsInterface21DMCPersonaHelperErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_25807AF68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25807AFB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_25807AFF4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_25807B01C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E7265746E69 && a2 == 0xED0000726F727245;
  if (v4 || (sub_25807FFC8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000258083990 == a2 || (sub_25807FFC8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002580839B0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_25807FFC8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_25807B14C(uint64_t *a1)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A2C8, &qword_258081BF0);
  v45 = *(v47 - 8);
  v2 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v46 = &v40 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A2D0, &qword_258081BF8);
  v5 = *(v4 - 8);
  v43 = v4;
  v44 = v5;
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A2D8, &qword_258081C00);
  v42 = *(v9 - 8);
  v10 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A2E0, &qword_258081C08);
  v14 = *(v13 - 8);
  v15 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v17 = &v40 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v49 = a1;
  v20 = __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_25807B794();
  v21 = v48;
  sub_258080088();
  if (!v21)
  {
    v40 = v9;
    v41 = 0;
    v23 = v46;
    v22 = v47;
    v24 = v14;
    v48 = v17;
    v25 = sub_25807FF68();
    v26 = *(v25 + 16);
    if (!v26 || ((v27 = *(v25 + 32), v26 == 1) ? (v28 = v27 == 3) : (v28 = 1), v28))
    {
      v29 = sub_25807FE98();
      swift_allocError();
      v31 = v30;
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A2F0, &qword_258081C10) + 48);
      *v31 = &type metadata for DMCPersonaHelperError;
      v20 = v48;
      sub_25807FF18();
      sub_25807FE88();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84160], v29);
      swift_willThrow();
      (*(v24 + 8))(v20, v13);
    }

    else
    {
      if (*(v25 + 32))
      {
        if (v27 == 1)
        {
          v51 = 1;
          sub_25807B83C();
          v34 = v8;
          v35 = v48;
          v20 = v48;
          v36 = v41;
          sub_25807FF08();
          if (!v36)
          {
            v37 = v43;
            v20 = sub_25807FF48();
            (*(v44 + 8))(v34, v37);
            (*(v14 + 8))(v35, v13);
            swift_unknownObjectRelease();
            goto LABEL_10;
          }

          (*(v14 + 8))(v35, v13);
          goto LABEL_9;
        }

        v52 = 2;
        sub_25807B7E8();
        v20 = v48;
        v39 = v41;
        sub_25807FF08();
        if (!v39)
        {
          v20 = sub_25807FF48();
          (*(v45 + 8))(v23, v22);
          (*(v14 + 8))(v48, v13);
          goto LABEL_9;
        }
      }

      else
      {
        v50 = 0;
        sub_25807B890();
        v20 = v48;
        v38 = v41;
        sub_25807FF08();
        if (!v38)
        {
          (*(v42 + 8))(v12, v40);
          (*(v14 + 8))(v20, v13);
          swift_unknownObjectRelease();
          v20 = 0;
          goto LABEL_10;
        }
      }

      (*(v14 + 8))(v20, v13);
    }

LABEL_9:
    swift_unknownObjectRelease();
  }

LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v49);
  return v20;
}

unint64_t sub_25807B794()
{
  result = qword_27F91A2E8;
  if (!qword_27F91A2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A2E8);
  }

  return result;
}

unint64_t sub_25807B7E8()
{
  result = qword_27F91A2F8;
  if (!qword_27F91A2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A2F8);
  }

  return result;
}

unint64_t sub_25807B83C()
{
  result = qword_27F91A300;
  if (!qword_27F91A300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A300);
  }

  return result;
}

unint64_t sub_25807B890()
{
  result = qword_27F91A308;
  if (!qword_27F91A308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A308);
  }

  return result;
}

unint64_t sub_25807B928()
{
  result = qword_27F91A330;
  if (!qword_27F91A330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A330);
  }

  return result;
}

unint64_t sub_25807B980()
{
  result = qword_27F91A338;
  if (!qword_27F91A338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A338);
  }

  return result;
}

unint64_t sub_25807B9D8()
{
  result = qword_27F91A340;
  if (!qword_27F91A340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A340);
  }

  return result;
}

unint64_t sub_25807BA30()
{
  result = qword_27F91A348;
  if (!qword_27F91A348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A348);
  }

  return result;
}

unint64_t sub_25807BA88()
{
  result = qword_27F91A350;
  if (!qword_27F91A350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A350);
  }

  return result;
}

unint64_t sub_25807BAE0()
{
  result = qword_27F91A358;
  if (!qword_27F91A358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A358);
  }

  return result;
}

unint64_t sub_25807BB38()
{
  result = qword_27F91A360;
  if (!qword_27F91A360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A360);
  }

  return result;
}

unint64_t sub_25807BB90()
{
  result = qword_27F91A368;
  if (!qword_27F91A368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A368);
  }

  return result;
}

unint64_t sub_25807BBE8()
{
  result = qword_27F91A370;
  if (!qword_27F91A370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A370);
  }

  return result;
}

unint64_t sub_25807BC40()
{
  result = qword_27F91A378;
  if (!qword_27F91A378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A378);
  }

  return result;
}

unint64_t sub_25807BC98()
{
  result = qword_27F91A380;
  if (!qword_27F91A380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A380);
  }

  return result;
}

uint64_t dispatch thunk of ManagedAppsPublicProtocol.getConfigDetailsData()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25807E4D4;

  return v9(a1, a2);
}

uint64_t dispatch thunk of ManagedAppsPublicProtocol.getPasswordIdentifiers()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25807E4CC;

  return v9(a1, a2);
}

uint64_t dispatch thunk of ManagedAppsPublicProtocol.getPassword(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_25807C050;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_25807C050(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t dispatch thunk of ManagedAppsPublicProtocol.getCertificateIdentifiers()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25807E4CC;

  return v9(a1, a2);
}

uint64_t dispatch thunk of ManagedAppsPublicProtocol.getCertificate(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 40);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_25807E4CC;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ManagedAppsPublicProtocol.getIdentityIdentifiers()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25807E4CC;

  return v9(a1, a2);
}

uint64_t dispatch thunk of ManagedAppsPublicProtocol.getIdentity(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 56);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_25807C5EC;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_25807C5EC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of ManagedAppsPublicProtocol.reportConfigDetailsState(code:reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 64);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_25807C828;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_25807C828()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t dispatch thunk of ManagedAppsPublicProtocol.notificationNameForConfigDetailChange()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 72);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25807E4D4;

  return v9(a1, a2);
}

uint64_t dispatch thunk of ManagedAppsPublicProtocol.notificationNameForPasswordChange()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 80);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25807E4D4;

  return v9(a1, a2);
}

uint64_t dispatch thunk of ManagedAppsPublicProtocol.notificationNameForCertificateChange()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 88);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25807E4D4;

  return v9(a1, a2);
}

uint64_t dispatch thunk of ManagedAppsPublicProtocol.notificationNameForIdentityChange()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 96);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25807E4D4;

  return v9(a1, a2);
}

uint64_t dispatch thunk of ManagedAppsServerPublicProtocol.getConfigDetailsData(clientIdentity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25807E4D4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of ManagedAppsServerPublicProtocol.getPasswordIdentifiers(clientIdentity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25807E4CC;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of ManagedAppsServerPublicProtocol.getPassword(with:clientIdentity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_25807E4D4;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ManagedAppsServerPublicProtocol.getCertificateIdentifiers(clientIdentity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25807E4CC;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of ManagedAppsServerPublicProtocol.getCertificate(with:clientIdentity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 40);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_25807E4CC;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ManagedAppsServerPublicProtocol.getIdentityIdentifiers(clientIdentity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25807E4CC;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of ManagedAppsServerPublicProtocol.getIdentityProxyEndpoint(with:clientIdentity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 56);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_25807E4CC;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ManagedAppsServerPublicProtocol.reportConfigDetailsState(code:reason:clientIdentity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 64);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_25807E4D0;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of ManagedAppsAppConfigProtocol.setAppConfig(recordID:appConfigRecord:persona:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 8);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_25807E4D0;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of ManagedAppsAppConfigProtocol.removeAppConfig(recordID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_25807E4D0;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ManagedAppsAppConfigProtocol.updateAppBundleID(for:bundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 24);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_25807E4D0;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of ManagedAppsAppConfigProtocol.updateAppCodeIdentity(for:appCodeIdentity:extensionCodeIdentities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 32);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_25807E4D0;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of ManagedAppsAppConfigProtocol.activateAppConfig(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 40);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_25807E4D0;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ManagedAppsAppConfigProtocol.disableAppConfig(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_25807E4D0;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ManagedAppsAppConfigProtocol.completeRemovalOfAppConfig(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 56);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_25807E4D0;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ManagedAppsAppConfigProtocol.getAllAppConfigState()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 64);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25807E4CC;

  return v9(a1, a2);
}

uint64_t dispatch thunk of ManagedAppsInternalProtocol.touch()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25807E4D0;

  return v9(a1, a2);
}

uint64_t dispatch thunk of ManagedAppsInternalProtocol.dumpDatabase()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25807E4CC;

  return v9(a1, a2);
}

uint64_t dispatch thunk of ManagedAppsInternalProtocol.eraseDatabase()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25807E4D0;

  return v9(a1, a2);
}

uint64_t sub_25807E560(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = *a1;
  v5 = *a2;

  return v4;
}

uint64_t sub_25807E5C4(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  v8 = *a4;
  *a3 = a1;
  *a4 = a2;
}

uint64_t keypath_getTm@<X0>(void *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a2;
  *a3 = *a1;
  a3[1] = v6;
}

uint64_t sub_25807E6DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v9 = *a1;
  v8 = a1[1];
  swift_beginAccess();
  v10 = *a6;
  *a5 = v9;
  *a6 = v8;
}

uint64_t ClientIdentity.personaID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ClientIdentity.personaID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ClientIdentity.nickName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ClientIdentity.nickName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ClientIdentity.init(codeIdentity:personaID:nickName:isEnterprisePersona:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t ClientIdentity.init(codeIdentity:personaInfo:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  v8 = (*(v7 + 8))(v6, v7);
  v10 = v9;
  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  v13 = (*(v12 + 32))(v11, v12);
  v15 = v14;
  v16 = a2[3];
  v17 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v16);
  v18 = (*(v17 + 56))(v16, v17);
  *a3 = a1;
  *(a3 + 8) = v8;
  *(a3 + 16) = v10;
  *(a3 + 24) = v13;
  *(a3 + 32) = v15;
  *(a3 + 40) = v18 & 1;

  return __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t sub_25807EA18()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_25807EA48(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_25807EAA0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_25807EAD0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25807EC20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_25807EC68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_25807ECC4()
{
  v0 = sub_25807FBE8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A408, &qword_2580822A8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v11 - v6;
  v8 = sub_25807FC28();
  __swift_allocate_value_buffer(v8, qword_27F91A3A8);
  __swift_project_value_buffer(v8, qword_27F91A3A8);
  swift_beginAccess();

  v9 = sub_25807FCB8();

  v10 = DMCSystemContainerPathWithBundleIdentifier();

  if (v10)
  {
    sub_25807FCE8();

    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    (*(v1 + 104))(v4, *MEMORY[0x277CC91D8], v0);
    sub_25807FC18();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25807EEE0()
{
  v0 = sub_25807FC28();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20]();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v3, qword_27F91A3C0);
  __swift_project_value_buffer(v0, qword_27F91A3C0);
  if (qword_27F919E70 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_27F91A3A8);
  (*(v1 + 16))(v5, v6, v0);
  sub_25807FC08();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_25807F038()
{
  v0 = sub_25807FC28();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20]();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v3, qword_27F91A3D8);
  __swift_project_value_buffer(v0, qword_27F91A3D8);
  if (qword_27F919E78 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_27F91A3C0);
  (*(v1 + 16))(v5, v6, v0);
  sub_25807FC08();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_25807F194()
{
  v0 = sub_25807FC28();
  __swift_allocate_value_buffer(v0, qword_27F91A3F0);
  __swift_project_value_buffer(v0, qword_27F91A3F0);
  return sub_25807FBF8();
}

uint64_t static ManagedAppsServicePaths.storageDirectoryURL(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    if (qword_27F919E88 != -1)
    {
      swift_once();
    }

    v3 = qword_27F91A3F0;
  }

  else
  {
    if (qword_27F919E80 != -1)
    {
      swift_once();
    }

    v3 = qword_27F91A3D8;
  }

  v4 = sub_25807FC28();
  v5 = __swift_project_value_buffer(v4, v3);
  v6 = *(*(v4 - 8) + 16);

  return v6(a2, v5, v4);
}

unint64_t ManagedAppsServiceScope.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_25807F328()
{
  result = qword_27F91A410;
  if (!qword_27F91A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A410);
  }

  return result;
}

uint64_t sub_25807F37C()
{
  v1 = *v0;
  sub_258080058();
  MEMORY[0x259C777F0](v1);
  return sub_258080078();
}

uint64_t sub_25807F3F0()
{
  v1 = *v0;
  sub_258080058();
  MEMORY[0x259C777F0](v1);
  return sub_258080078();
}

uint64_t *sub_25807F434@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

unint64_t sub_25807F51C()
{
  result = qword_27F91A418;
  if (!qword_27F91A418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A418);
  }

  return result;
}

id static ManagedAppsXPCInterfaceFactory.internalInterface()()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  sub_25807F894();
  return v0;
}

id static ManagedAppsXPCInterfaceFactory.publicInterface()()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];

  return v0;
}

unint64_t ManagedAppsPublicXPCProtocolError.description.getter()
{
  v1 = 0x6520726576726553;
  if (*v0 != 1)
  {
    v1 = 0x6C616E7265746E49;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

unint64_t ManagedAppsPublicXPCProtocolError.errorDescription.getter()
{
  v1 = 0x6520726576726553;
  if (*v0 != 1)
  {
    v1 = 0x6C616E7265746E49;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t ManagedAppsPublicXPCProtocolError.hashValue.getter()
{
  v1 = *v0;
  sub_258080058();
  MEMORY[0x259C777F0](v1);
  return sub_258080078();
}

uint64_t sub_25807F794(uint64_t a1)
{
  v2 = sub_25807FB0C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_25807F7D0(uint64_t a1)
{
  v2 = sub_25807FB0C();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_25807F80C()
{
  v1 = 0x6520726576726553;
  if (*v0 != 1)
  {
    v1 = 0x6C616E7265746E49;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

void sub_25807F894()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A438, &qword_258082550);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2580823D0;
  v1 = sub_25807FB60(0, &qword_27F91A440, 0x277CBEA60);
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91A448, &qword_258082558);
  *(v0 + 32) = v1;
  v2 = sub_25807FB60(0, &qword_27F91A240, 0x277D034C8);
  *(v0 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F91A450, &unk_258082560);
  *(v0 + 64) = v2;
  v3 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v4 = sub_25807FD78();

  [v3 initWithArray_];

  sub_25807FDC8();
  __break(1u);
}

unint64_t sub_25807FA40()
{
  result = qword_27F91A420;
  if (!qword_27F91A420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A420);
  }

  return result;
}

unint64_t sub_25807FA98()
{
  result = qword_27F91A428;
  if (!qword_27F91A428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A428);
  }

  return result;
}

unint64_t sub_25807FB0C()
{
  result = qword_27F91A430;
  if (!qword_27F91A430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91A430);
  }

  return result;
}

uint64_t sub_25807FB60(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}