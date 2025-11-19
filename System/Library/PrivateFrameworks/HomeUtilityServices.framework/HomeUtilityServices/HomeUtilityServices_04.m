uint64_t sub_20DFC30EC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 568);
  v8 = *v3;
  *(*v3 + 576) = v2;

  if (v2)
  {
    v9 = sub_20DFC3748;
  }

  else
  {
    *(v6 + 584) = a2;
    *(v6 + 592) = a1;
    v9 = sub_20DFC3224;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_20DFC3224()
{
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[67];
  v4 = v0[63];
  v5 = v0[64];
  v6 = v0[62];
  v7 = v0[58];
  sub_20DF67FFC(v0[65], v0[66]);
  sub_20DF64DE8(v6, v4);

  sub_20DF85E5C(v7);
  v8 = v0[74];
  v9 = v0[73];
  v10 = v0[58];
  v11 = v0[55];

  v12 = v0[1];

  return v12(v8, v9);
}

uint64_t sub_20DFC3308()
{
  v42 = v0;
  v1 = *(v0 + 544);
  swift_willThrow();
  v2 = *(v0 + 544);
  *(v0 + 552) = v2;
  if (qword_27C852068 != -1)
  {
    swift_once();
  }

  v3 = sub_20E009094();
  __swift_project_value_buffer(v3, qword_27C862698);
  v4 = sub_20E009074();
  v5 = sub_20E009544();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_20DF62000, v4, v5, "Error while trying to fetch Private Access Token", v6, 2u);
    MEMORY[0x20F32B3A0](v6, -1, -1);
  }

  v7 = sub_20E008A24();
  *(v0 + 560) = v7;
  if ([v7 code] != 1007)
  {
    goto LABEL_9;
  }

  v8 = sub_20E009074();
  v9 = sub_20E009544();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_20DF62000, v8, v9, "Private Access Token Error caused by Token issuance server error", v10, 2u);
    MEMORY[0x20F32B3A0](v10, -1, -1);
  }

  v11 = *(v0 + 600);

  if ((v11 & 1) == 0)
  {
    v35 = sub_20E009074();
    v36 = sub_20E009554();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_20DF62000, v35, v36, "Trying to fetch token again.", v37, 2u);
      MEMORY[0x20F32B3A0](v37, -1, -1);
    }

    v38 = swift_task_alloc();
    *(v0 + 568) = v38;
    *v38 = v0;
    v38[1] = sub_20DFC30EC;
    v39 = *(v0 + 432);

    return sub_20DFC1D5C(v39, 1);
  }

  else
  {
LABEL_9:

    v12 = v2;
    v13 = sub_20E009074();
    v14 = sub_20E009544();

    v40 = v2;
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v41 = v16;
      *v15 = 136315138;
      swift_getErrorValue();
      v18 = *(v0 + 144);
      v17 = *(v0 + 152);
      v19 = *(v0 + 160);
      v20 = sub_20E0099E4();
      v22 = sub_20DF74468(v20, v21, &v41);

      *(v15 + 4) = v22;
      _os_log_impl(&dword_20DF62000, v13, v14, "%s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x20F32B3A0](v16, -1, -1);
      MEMORY[0x20F32B3A0](v15, -1, -1);
    }

    v23 = *(v0 + 536);
    v24 = *(v0 + 528);
    v25 = *(v0 + 520);
    v27 = *(v0 + 504);
    v26 = *(v0 + 512);
    v28 = *(v0 + 496);
    v29 = *(v0 + 464);
    sub_20DFC4CCC();
    swift_allocError();
    *v30 = 1;
    swift_willThrow();
    sub_20DF67FFC(v25, v24);
    sub_20DF64DE8(v28, v27);

    sub_20DF85E5C(v29);
    v31 = *(v0 + 464);
    v32 = *(v0 + 440);

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_20DFC3748()
{
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[67];
  v4 = v0[63];
  v5 = v0[64];
  v6 = v0[62];
  v7 = v0[58];
  sub_20DF67FFC(v0[65], v0[66]);
  sub_20DF64DE8(v6, v4);

  sub_20DF85E5C(v7);
  v8 = v0[72];
  v9 = v0[58];
  v10 = v0[55];

  v11 = v0[1];

  return v11();
}

uint64_t sub_20DFC381C()
{
  v10 = sub_20E009574();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20E009564();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_20E0090B4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_20DFC4D38();
  sub_20E0090A4();
  v11 = MEMORY[0x277D84F90];
  sub_20DFC4D84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852F38, qword_20E0106F0);
  sub_20DFC4DDC(&qword_27C852F40, &qword_27C852F38, qword_20E0106F0);
  sub_20E009664();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_20E009584();
  qword_27C862630 = result;
  return result;
}

uint64_t sub_20DFC3A50(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A8, &unk_20E00C130);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    v9 = a2;
    v10 = sub_20E008B84();
    v12 = v11;

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t TokenGenerationError.hashValue.getter()
{
  v1 = *v0;
  sub_20E009A34();
  MEMORY[0x20F32AC10](v1);
  return sub_20E009A54();
}

unint64_t sub_20DFC3BC4()
{
  result = qword_27C852F08;
  if (!qword_27C852F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852F08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TokenGenerationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TokenGenerationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_20DFC3D68()
{
  v22 = *MEMORY[0x277D85DE8];
  if ((os_variant_has_internal_diagnostics() & 1) == 0 && (sub_20DF9CE68() & 1) == 0)
  {
    goto LABEL_21;
  }

  LOBYTE(v19) = 0;
  v0 = sub_20E0091C4();
  v1 = sub_20E0091C4();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v0, v1, &v19);

  if (v19 && AppBooleanValue)
  {
    if (qword_27C852068 != -1)
    {
      swift_once();
    }

    v3 = sub_20E009094();
    __swift_project_value_buffer(v3, qword_27C862698);
    v4 = sub_20E009074();
    v5 = sub_20E009544();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20DF62000, v4, v5, "PAT feature has been disabled by Defaults override.", v6, 2u);
      MEMORY[0x20F32B3A0](v6, -1, -1);
    }

    sub_20DFC4CCC();
    swift_allocError();
    *v7 = 5;
    result = swift_willThrow();
    goto LABEL_22;
  }

  v9 = sub_20E0091C4();
  v10 = sub_20E0091C4();
  v11 = CFPreferencesCopyAppValue(v9, v10);

  if (!v11 || (v21 = v11, (swift_dynamicCast() & 1) == 0))
  {
LABEL_21:
    result = 0;
    goto LABEL_22;
  }

  v12 = v19;
  v13 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v13 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

    goto LABEL_21;
  }

  if (qword_27C852068 != -1)
  {
    swift_once();
  }

  v14 = sub_20E009094();
  __swift_project_value_buffer(v14, qword_27C862698);
  v15 = sub_20E009074();
  v16 = sub_20E009544();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_20DF62000, v15, v16, "PAT | Using overridden value provided by defaults.", v17, 2u);
    MEMORY[0x20F32B3A0](v17, -1, -1);
  }

  result = v12;
LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_20DFC40A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A60, &unk_20E00EBE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for UtilityServicesConfigurationsModel();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if (qword_27C852068 != -1)
    {
      swift_once();
    }

    v16 = sub_20E009094();
    __swift_project_value_buffer(v16, qword_27C862698);
    v12 = sub_20E009074();
    v13 = sub_20E009544();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_12;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Token Storage | Token Storage requires origin name";
    goto LABEL_11;
  }

  sub_20DF9EE34(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_20DF66E28(v5, &qword_27C852A60, &unk_20E00EBE0);
    if (qword_27C852068 != -1)
    {
      swift_once();
    }

    v11 = sub_20E009094();
    __swift_project_value_buffer(v11, qword_27C862698);
    v12 = sub_20E009074();
    v13 = sub_20E009544();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_12;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Token Storage | Unable to retrieve serviceProxy configuration required for token lookup key";
LABEL_11:
    _os_log_impl(&dword_20DF62000, v12, v13, v15, v14, 2u);
    MEMORY[0x20F32B3A0](v14, -1, -1);
LABEL_12:

    return 0;
  }

  sub_20DF85D48(v5, v10);
  v18 = *(v10 + 34);
  v25 = *(v10 + 33);
  v26 = v18;

  MEMORY[0x20F32A4B0](95, 0xE100000000000000);
  v20 = v25;
  v19 = v26;
  v25 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852460, &qword_20E00B2C0);
  sub_20DFC4DDC(&qword_27C852F10, &qword_27C852460, &qword_20E00B2C0);
  v21 = sub_20E0091A4();
  v23 = v22;
  v25 = v20;
  v26 = v19;

  MEMORY[0x20F32A4B0](v21, v23);

  v24 = v25;
  sub_20DF85E5C(v10);
  return v24;
}

uint64_t sub_20DFC4408(uint64_t a1)
{
  if (!a1)
  {
    if (qword_27C852068 != -1)
    {
      swift_once();
    }

    v10 = sub_20E009094();
    __swift_project_value_buffer(v10, qword_27C862698);
    v11 = sub_20E009074();
    v12 = sub_20E009544();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_25;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "Token Storage requires origin name";
    goto LABEL_24;
  }

  sub_20DFC40A0(a1);
  if (!v1)
  {
    if (qword_27C852068 != -1)
    {
      swift_once();
    }

    v16 = sub_20E009094();
    __swift_project_value_buffer(v16, qword_27C862698);
    v17 = sub_20E009074();
    v18 = sub_20E009544();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_20DF62000, v17, v18, "Token Storage | Unable generate token save key", v19, 2u);
      MEMORY[0x20F32B3A0](v19, -1, -1);
    }

    v11 = sub_20E009074();
    v12 = sub_20E009544();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_25;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "Token Storage | unable to retrieve key from storage.";
    goto LABEL_24;
  }

  v2 = sub_20E0091C4();

  v3 = sub_20E0091C4();
  v4 = CFPreferencesCopyAppValue(v2, v3);

  if (!v4 || (swift_dynamicCast() & 1) == 0)
  {
    if (qword_27C852068 != -1)
    {
      swift_once();
    }

    v15 = sub_20E009094();
    __swift_project_value_buffer(v15, qword_27C862698);
    v11 = sub_20E009074();
    v12 = sub_20E009544();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_25;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "Token Storage | no key found in storage";
LABEL_24:
    _os_log_impl(&dword_20DF62000, v11, v12, v14, v13, 2u);
    MEMORY[0x20F32B3A0](v13, -1, -1);
LABEL_25:

    return 0;
  }

  if (qword_27C852068 != -1)
  {
    swift_once();
  }

  v5 = sub_20E009094();
  __swift_project_value_buffer(v5, qword_27C862698);
  v6 = sub_20E009074();
  v7 = sub_20E009554();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20DF62000, v6, v7, "Token Storage | returning stored key", v8, 2u);
    MEMORY[0x20F32B3A0](v8, -1, -1);
  }

  return v20;
}

void sub_20DFC47D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27C852068 != -1)
  {
    swift_once();
  }

  v6 = sub_20E009094();
  __swift_project_value_buffer(v6, qword_27C862698);
  v7 = sub_20E009074();
  v8 = sub_20E009554();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_20DF62000, v7, v8, "Token Storage | Initiating storing token in storage", v9, 2u);
    MEMORY[0x20F32B3A0](v9, -1, -1);
  }

  v10 = sub_20DFC40A0(a1);
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    v20[3] = MEMORY[0x277D837D0];
    v20[0] = a2;
    v20[1] = a3;

    sub_20DF9C678(v12, v13, v20);

    sub_20DF66E28(v20, &qword_27C8521F0, &unk_20E00EC00);
  }

  else
  {
    v14 = sub_20E009074();
    v15 = sub_20E009544();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20DF62000, v14, v15, "Token Storage | Unable generate token save key", v16, 2u);
      MEMORY[0x20F32B3A0](v16, -1, -1);
    }

    oslog = sub_20E009074();
    v17 = sub_20E009544();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_20DF62000, oslog, v17, "Token Storage | Unable to store token in storage.", v18, 2u);
      MEMORY[0x20F32B3A0](v18, -1, -1);
    }
  }
}

void sub_20DFC4A54(uint64_t a1)
{
  if (qword_27C852068 != -1)
  {
    swift_once();
  }

  v2 = sub_20E009094();
  __swift_project_value_buffer(v2, qword_27C862698);
  v3 = sub_20E009074();
  v4 = sub_20E009554();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20DF62000, v3, v4, "Token Storage | Initiating removal of token from storage", v5, 2u);
    MEMORY[0x20F32B3A0](v5, -1, -1);
  }

  v6 = sub_20DFC40A0(a1);
  if (v7)
  {
    memset(v14, 0, sizeof(v14));
    sub_20DF9C678(v6, v7, v14);
    sub_20DF66E28(v14, &qword_27C8521F0, &unk_20E00EC00);
  }

  else
  {
    v8 = sub_20E009074();
    v9 = sub_20E009544();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20DF62000, v8, v9, "Token Storage | Unable generate token save key", v10, 2u);
      MEMORY[0x20F32B3A0](v10, -1, -1);
    }

    oslog = sub_20E009074();
    v11 = sub_20E009544();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_20DF62000, oslog, v11, "Token Storage | Unable to remove token from storage without lookup key.", v12, 2u);
      MEMORY[0x20F32B3A0](v12, -1, -1);
    }
  }
}

unint64_t sub_20DFC4CCC()
{
  result = qword_27C852F18;
  if (!qword_27C852F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852F18);
  }

  return result;
}

unint64_t sub_20DFC4D38()
{
  result = qword_27C852F28;
  if (!qword_27C852F28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C852F28);
  }

  return result;
}

unint64_t sub_20DFC4D84()
{
  result = qword_27C852F30;
  if (!qword_27C852F30)
  {
    sub_20E009564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852F30);
  }

  return result;
}

uint64_t sub_20DFC4DDC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20DFC4EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 64);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_20DF6BA84;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_20DFC4FE4@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_20E0088D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_28252D320;
  v9 = off_28252D328;
  if (byte_28252D318 > 1u)
  {
    if (byte_28252D318 == 2)
    {
      v11 = 1953654115;
    }

    else
    {
      v11 = 1685025392;
    }

    v12 = 0xE400000000000000;
  }

  else
  {
    if (byte_28252D318)
    {
      v11 = 7759204;
    }

    else
    {
      v11 = 0x6E7265746E496171;
    }

    if (byte_28252D318)
    {
      v12 = 0xE300000000000000;
    }

    else
    {
      v12 = 0xEA00000000006C61;
    }
  }

  v13 = 1953654115;
  if (a1 != 2)
  {
    v13 = 1685025392;
  }

  v14 = 0xE300000000000000;
  v15 = 7759204;
  if (!a1)
  {
    v15 = 0x6E7265746E496171;
    v14 = 0xEA00000000006C61;
  }

  if (a1 <= 1u)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13;
  }

  if (a1 <= 1u)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0xE400000000000000;
  }

  if (v11 == v16 && v12 == v17)
  {
    goto LABEL_24;
  }

  v18 = a2;
  v19 = sub_20E009984();

  if (v19)
  {
    goto LABEL_26;
  }

  if (byte_28252D330 > 1u)
  {
    v22 = 0xE400000000000000;
    if (byte_28252D330 == 2)
    {
      v21 = 1953654115;
    }

    else
    {
      v21 = 1685025392;
    }
  }

  else
  {
    if (byte_28252D330)
    {
      v21 = 7759204;
    }

    else
    {
      v21 = 0x6E7265746E496171;
    }

    if (byte_28252D330)
    {
      v22 = 0xE300000000000000;
    }

    else
    {
      v22 = 0xEA00000000006C61;
    }
  }

  v10 = qword_28252D338;
  v9 = off_28252D340;
  if (a1 > 1u)
  {
    v24 = 0xE400000000000000;
    if (a1 == 2)
    {
      if (v21 != 1953654115)
      {
        goto LABEL_51;
      }
    }

    else if (v21 != 1685025392)
    {
      goto LABEL_51;
    }
  }

  else
  {
    if (a1)
    {
      v23 = 7759204;
    }

    else
    {
      v23 = 0x6E7265746E496171;
    }

    if (a1)
    {
      v24 = 0xE300000000000000;
    }

    else
    {
      v24 = 0xEA00000000006C61;
    }

    if (v21 != v23)
    {
      goto LABEL_51;
    }
  }

  if (v22 == v24)
  {
LABEL_24:

LABEL_26:
    sub_20E0088C4();
    sub_20E0088B4();

    MEMORY[0x20F329A30](v10, v9);
    MEMORY[0x20F329A50](0xD000000000000011, 0x800000020E016C90);
    sub_20E008844();

    return (*(v5 + 8))(v8, v4);
  }

LABEL_51:
  v25 = sub_20E009984();

  if (v25)
  {
    goto LABEL_26;
  }

  if (byte_28252D348 > 1u)
  {
    v27 = 0xE400000000000000;
    if (byte_28252D348 == 2)
    {
      v26 = 1953654115;
    }

    else
    {
      v26 = 1685025392;
    }
  }

  else
  {
    if (byte_28252D348)
    {
      v26 = 7759204;
    }

    else
    {
      v26 = 0x6E7265746E496171;
    }

    if (byte_28252D348)
    {
      v27 = 0xE300000000000000;
    }

    else
    {
      v27 = 0xEA00000000006C61;
    }
  }

  v10 = qword_28252D350;
  v9 = off_28252D358;
  if (a1 > 1u)
  {
    v29 = 0xE400000000000000;
    if (a1 == 2)
    {
      v28 = 1953654115;
    }

    else
    {
      v28 = 1685025392;
    }
  }

  else
  {
    if (a1)
    {
      v28 = 7759204;
    }

    else
    {
      v28 = 0x6E7265746E496171;
    }

    if (a1)
    {
      v29 = 0xE300000000000000;
    }

    else
    {
      v29 = 0xEA00000000006C61;
    }
  }

  if (v26 == v28 && v27 == v29)
  {
    goto LABEL_24;
  }

  v30 = sub_20E009984();

  if (v30)
  {
    goto LABEL_26;
  }

  swift_arrayDestroy();
  v31 = sub_20E008AF4();
  v32 = *(*(v31 - 8) + 56);

  return v32(v18, 1, 1, v31);
}

uint64_t sub_20DFC5508(uint64_t a1, int a2)
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

uint64_t sub_20DFC5550(uint64_t result, int a2, int a3)
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

uint64_t sub_20DFC55B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[31] = a6;
  v7[32] = a7;
  v7[29] = a4;
  v7[30] = a5;
  v7[27] = a2;
  v7[28] = a3;
  v7[26] = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830) - 8) + 64) + 15;
  v7[33] = swift_task_alloc();
  v10 = sub_20E008714();
  v7[34] = v10;
  v11 = *(v10 - 8);
  v7[35] = v11;
  v12 = *(v11 + 64) + 15;
  v7[36] = swift_task_alloc();
  v13 = swift_task_alloc();
  v7[37] = v13;
  *v13 = v7;
  v13[1] = sub_20DFC56E8;

  return sub_20DF9D6CC(a7);
}

uint64_t sub_20DFC56E8()
{
  v1 = *(*v0 + 296);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DFC57E4, 0, 0);
}

uint64_t sub_20DFC57E4()
{
  v1 = v0[31];
  v2 = sub_20E008964();
  if (v3 & 1) != 0 || (v4 = v2, v5 = v0[31], v6 = sub_20E008974(), (v7) || (v8 = v6, v9 = v0[31], v10 = sub_20E008954(), (v11))
  {
    if (qword_27C8520A0 != -1)
    {
      swift_once();
    }

    v12 = sub_20E009094();
    __swift_project_value_buffer(v12, qword_27C862740);
    v13 = sub_20E009074();
    v14 = sub_20E009544();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_20DF62000, v13, v14, "Unable to compute start date. Check DateComponents.", v15, 2u);
      MEMORY[0x20F32B3A0](v15, -1, -1);
    }

    type metadata accessor for NetworkError();
    sub_20DF960FC();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v16 = v0[36];
    v17 = v0[33];

    v18 = v0[1];

    return v18();
  }

  else
  {
    v20 = v10;
    v22 = v0[29];
    v21 = v0[30];
    v24 = v0[27];
    v23 = v0[28];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D8, &unk_20E00FE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20E00E010;
    *(inited + 32) = 0x497974696C697475;
    *(inited + 40) = 0xE900000000000064;
    *(inited + 48) = v24;
    *(inited + 56) = v23;
    *(inited + 64) = 0x7250666669726174;
    *(inited + 72) = 0xEF6449656C69666FLL;
    *(inited + 80) = v22;
    *(inited + 88) = v21;

    v0[38] = sub_20DF74E1C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852140, &qword_20E011050);
    swift_arrayDestroy();
    KeyPath = swift_getKeyPath();
    v0[39] = KeyPath;
    v0[25] = v4;
    v27 = MEMORY[0x277D83B88];
    v40 = sub_20E009964();
    v41 = v28;
    MEMORY[0x20F32A4B0](45, 0xE100000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852F48, &unk_20E0107F0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_20E00AB50;
    v30 = MEMORY[0x277D83C10];
    *(v29 + 56) = v27;
    *(v29 + 64) = v30;
    *(v29 + 32) = v8;
    v31 = sub_20E009204();
    MEMORY[0x20F32A4B0](v31);

    MEMORY[0x20F32A4B0](45, 0xE100000000000000);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_20E00AB50;
    *(v32 + 56) = v27;
    *(v32 + 64) = v30;
    *(v32 + 32) = v20;
    v33 = sub_20E009204();
    MEMORY[0x20F32A4B0](v33);

    v0[40] = v41;
    v34 = swift_task_alloc();
    v0[41] = v34;
    *v34 = v0;
    v34[1] = sub_20DFC5C14;
    v35 = v0[33];
    v36 = v0[29];
    v37 = v0[30];
    v38 = v0[27];
    v39 = v0[28];

    return sub_20DF85FF0(v35, v38, v39, v36, v37, v40, v41, KeyPath);
  }
}

uint64_t sub_20DFC5C14()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 320);
  v3 = *(*v0 + 312);
  v4 = *(*v0 + 304);
  v6 = *v0;

  return MEMORY[0x2822009F8](sub_20DFC5D6C, 0, 0);
}

uint64_t sub_20DFC5D6C()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF8B6B4(v3);
    if (qword_27C8520A0 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C862740);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable to generate request URL for utility rate peaks.", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    type metadata accessor for NetworkError();
    sub_20DF960FC();
    swift_allocError();
    *v8 = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v9 = v0[36];
    v10 = v0[33];

    v11 = v0[1];

    return v11();
  }

  else
  {
    (*(v2 + 32))(v0[36], v3, v1);
    sub_20DFDF8DC(0xD00000000000002ALL, 0x800000020E016CB0, 0xD000000000000025, 0x800000020E016CE0);
    v13 = *(MEMORY[0x277CC9D18] + 4);
    v14 = swift_task_alloc();
    v0[42] = v14;
    *v14 = v0;
    v14[1] = sub_20DFC5FF8;
    v15 = v0[36];
    v16 = v0[32];

    return MEMORY[0x28211ECF8](v15, 0);
  }
}

uint64_t sub_20DFC5FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 336);
  v9 = *v4;
  v5[43] = a1;
  v5[44] = a2;
  v5[45] = a3;
  v5[46] = v3;

  if (v3)
  {
    v7 = sub_20DFC6CB4;
  }

  else
  {
    v7 = sub_20DFC6110;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_20DFC6110()
{
  v1 = *(v0 + 360);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    if (qword_27C8520A0 != -1)
    {
      swift_once();
    }

    v11 = sub_20E009094();
    __swift_project_value_buffer(v11, qword_27C862740);
    v12 = sub_20E009074();
    v13 = sub_20E009544();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_20DF62000, v12, v13, "Unable to process Utility Rate Peaks Response.", v14, 2u);
      MEMORY[0x20F32B3A0](v14, -1, -1);
    }

    v15 = *(v0 + 352);
    v16 = *(v0 + 360);
    v17 = *(v0 + 344);
    v19 = *(v0 + 280);
    v18 = *(v0 + 288);
    v20 = *(v0 + 272);

    type metadata accessor for NetworkError();
    sub_20DF960FC();
    swift_allocError();
    *v21 = 2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_20DF67FFC(v17, v15);
    goto LABEL_51;
  }

  v3 = v2;
  v4 = *(v0 + 288);
  v5 = *(v0 + 360);
  sub_20DFDFFF8(0xD000000000000028, 0x800000020E016D10, [v3 statusCode], &unk_28252DAF8);
  v6 = [v3 statusCode];
  if (v6 > 403)
  {
    switch(v6)
    {
      case 404:
        if (qword_27C8520A0 != -1)
        {
          swift_once();
        }

        v51 = sub_20E009094();
        __swift_project_value_buffer(v51, qword_27C862740);
        v8 = sub_20E009074();
        v52 = sub_20E009544();
        if (os_log_type_enabled(v8, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&dword_20DF62000, v8, v52, "Tariff Identifier or Utility Identifier not found.", v53, 2u);
          MEMORY[0x20F32B3A0](v53, -1, -1);
        }

        goto LABEL_50;
      case 429:
        if (qword_27C852098 != -1)
        {
          swift_once();
        }

        v65 = sub_20E009094();
        __swift_project_value_buffer(v65, qword_27C862728);
        v8 = sub_20E009074();
        v66 = sub_20E009544();
        if (os_log_type_enabled(v8, v66))
        {
          v67 = swift_slowAlloc();
          *v67 = 0;
          _os_log_impl(&dword_20DF62000, v8, v66, "TOO MANY REQUESTS | Server rejected calls cause of too many requests being made", v67, 2u);
          MEMORY[0x20F32B3A0](v67, -1, -1);
        }

        goto LABEL_50;
      case 500:
        if (qword_27C852098 != -1)
        {
          swift_once();
        }

        v22 = sub_20E009094();
        __swift_project_value_buffer(v22, qword_27C862728);
        v23 = sub_20E009074();
        v24 = sub_20E009544();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_20DF62000, v23, v24, "Internal Server Error", v25, 2u);
          MEMORY[0x20F32B3A0](v25, -1, -1);
        }

        v27 = *(v0 + 352);
        v26 = *(v0 + 360);
        v28 = *(v0 + 344);
        v29 = *(v0 + 280);
        v87 = *(v0 + 272);
        v89 = *(v0 + 288);

        type metadata accessor for NetworkError();
        sub_20DF960FC();
        swift_allocError();
        *v30 = [v3 statusCode];
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_20DF67FFC(v28, v27);

        (*(v29 + 8))(v89, v87);
        goto LABEL_52;
    }

    goto LABEL_37;
  }

  if (v6 != 200)
  {
    if (v6 == 400)
    {
      if (qword_27C8520A0 != -1)
      {
        swift_once();
      }

      v62 = sub_20E009094();
      __swift_project_value_buffer(v62, qword_27C862740);
      v8 = sub_20E009074();
      v63 = sub_20E009544();
      if (os_log_type_enabled(v8, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_20DF62000, v8, v63, "BAD REQUEST | Check request", v64, 2u);
        MEMORY[0x20F32B3A0](v64, -1, -1);
      }

      goto LABEL_50;
    }

    if (v6 == 401)
    {
      if (qword_27C8520A0 != -1)
      {
        swift_once();
      }

      v7 = sub_20E009094();
      __swift_project_value_buffer(v7, qword_27C862740);
      v8 = sub_20E009074();
      v9 = sub_20E009544();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_20DF62000, v8, v9, "Request Unauthorized or Access Token Expired.", v10, 2u);
        MEMORY[0x20F32B3A0](v10, -1, -1);
      }

LABEL_50:
      v68 = *(v0 + 352);
      v16 = *(v0 + 360);
      v69 = *(v0 + 344);
      v19 = *(v0 + 280);
      v18 = *(v0 + 288);
      v20 = *(v0 + 272);

      type metadata accessor for NetworkError();
      sub_20DF960FC();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_20DF67FFC(v69, v68);

LABEL_51:
      (*(v19 + 8))(v18, v20);
LABEL_52:
      v70 = *(v0 + 288);
      v71 = *(v0 + 264);

      v72 = *(v0 + 8);
      goto LABEL_53;
    }

LABEL_37:
    if (qword_27C852098 != -1)
    {
      swift_once();
    }

    v54 = *(v0 + 360);
    v55 = sub_20E009094();
    __swift_project_value_buffer(v55, qword_27C862728);
    v56 = v54;
    v57 = sub_20E009074();
    v58 = sub_20E009544();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = *(v0 + 360);
      v60 = swift_slowAlloc();
      *v60 = 134217984;
      *(v60 + 4) = [v3 statusCode];

      _os_log_impl(&dword_20DF62000, v57, v58, "Request failed : Status Code %ld", v60, 0xCu);
      MEMORY[0x20F32B3A0](v60, -1, -1);
      v61 = *(v0 + 360);
    }

    else
    {

      v61 = *(v0 + 360);
      v57 = v61;
    }

    v75 = *(v0 + 344);
    v74 = *(v0 + 352);
    v76 = *(v0 + 280);
    v88 = *(v0 + 272);
    v90 = *(v0 + 288);

    type metadata accessor for NetworkError();
    sub_20DF960FC();
    swift_allocError();
    *v77 = [v3 statusCode];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_20DF67FFC(v75, v74);

    (*(v76 + 8))(v90, v88);
    goto LABEL_52;
  }

  if (qword_27C8520A0 != -1)
  {
    swift_once();
  }

  v31 = sub_20E009094();
  __swift_project_value_buffer(v31, qword_27C862740);
  v32 = sub_20E009074();
  v33 = sub_20E009554();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_20DF62000, v32, v33, "Utility Rate Peaks Response received.", v34, 2u);
    MEMORY[0x20F32B3A0](v34, -1, -1);
  }

  v35 = *(v0 + 368);
  v37 = *(v0 + 344);
  v36 = *(v0 + 352);

  v38 = sub_20E008744();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  sub_20E008734();
  sub_20DFC6D3C();
  sub_20E008724();
  if (v35)
  {
    v41 = v35;

    v42 = sub_20E009074();
    v43 = sub_20E009544();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_20DF62000, v42, v43, "Error while decoding response from server", v44, 2u);
      MEMORY[0x20F32B3A0](v44, -1, -1);
    }

    v45 = *(v0 + 352);
    v46 = *(v0 + 360);
    v47 = *(v0 + 344);
    v49 = *(v0 + 280);
    v48 = *(v0 + 288);
    v50 = *(v0 + 272);

    sub_20DFFE0B0(v41);
    swift_willThrow();
    sub_20DF67FFC(v47, v45);

    (*(v49 + 8))(v48, v50);
    goto LABEL_52;
  }

  v78 = *(v0 + 352);
  v79 = *(v0 + 360);
  v80 = *(v0 + 344);
  v81 = *(v0 + 264);
  v82 = *(v0 + 208);
  (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));

  sub_20DF67FFC(v80, v78);
  v83 = *(v0 + 128);
  *v82 = *(v0 + 112);
  *(v82 + 16) = v83;
  v84 = *(v0 + 144);
  v85 = *(v0 + 160);
  v86 = *(v0 + 176);
  *(v82 + 80) = *(v0 + 192);
  *(v82 + 48) = v85;
  *(v82 + 64) = v86;
  *(v82 + 32) = v84;

  v72 = *(v0 + 8);
LABEL_53:

  return v72();
}

uint64_t sub_20DFC6CB4()
{
  (*(v0[35] + 8))(v0[36], v0[34]);
  v1 = v0[46];
  v2 = v0[36];
  v3 = v0[33];

  v4 = v0[1];

  return v4();
}

unint64_t sub_20DFC6D3C()
{
  result = qword_27C852F50;
  if (!qword_27C852F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852F50);
  }

  return result;
}

void sub_20DFC6D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5, void *a6)
{
  v58 = a4;
  v59 = a5;
  v56 = a3;
  v57 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v52 - v9;
  v11 = sub_20E008CD4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v52 - v16;
  v18 = [objc_opt_self() sharedConnection];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 isDiagnosticSubmissionAllowed];

    if (v20)
    {
      v55 = a6;
      sub_20E0086C4();
      v21 = sub_20E008AF4();
      v22 = *(v21 - 8);
      if ((*(v22 + 48))(v17, 1, v21) == 1)
      {
        sub_20DF66E28(v17, &qword_27C8520D0, &qword_20E00AB70);
LABEL_20:
        if (qword_27C8520C0 != -1)
        {
          swift_once();
        }

        v46 = sub_20E009094();
        __swift_project_value_buffer(v46, qword_27C8627A0);
        v47 = sub_20E009074();
        v48 = sub_20E009544();
        if (!os_log_type_enabled(v47, v48))
        {
          goto LABEL_25;
        }

        v49 = swift_slowAlloc();
        *v49 = 0;
        v50 = "Unable to retrieve request endpoint for utility metrics api.";
        goto LABEL_24;
      }

      v54 = sub_20DFC7404();
      v28 = v27;
      (*(v22 + 8))(v17, v21);
      if (!v28)
      {
        goto LABEL_20;
      }

      v53 = v28;
      v29 = sub_20DFE0F98();
      v31 = v30;
      v32 = HIBYTE(v30) & 0xF;
      if ((v30 & 0x2000000000000000) == 0)
      {
        v32 = v29 & 0xFFFFFFFFFFFFLL;
      }

      if (!v32)
      {

        if (qword_27C8520C0 == -1)
        {
LABEL_27:
          v51 = sub_20E009094();
          __swift_project_value_buffer(v51, qword_27C8627A0);
          v47 = sub_20E009074();
          v48 = sub_20E009544();
          if (!os_log_type_enabled(v47, v48))
          {
            goto LABEL_25;
          }

          v49 = swift_slowAlloc();
          *v49 = 0;
          v50 = "Unable to compute partner facing requestID .";
LABEL_24:
          _os_log_impl(&dword_20DF62000, v47, v48, v50, v49, 2u);
          MEMORY[0x20F32B3A0](v49, -1, -1);
LABEL_25:

          return;
        }

LABEL_32:
        swift_once();
        goto LABEL_27;
      }

      v33 = v29;
      sub_20E008C94();
      v34 = v59;
      sub_20E008BB4();
      v36 = v35;
      (*(v12 + 8))(&v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
      v37 = v36 * 1000.0;
      if (COERCE__INT64(fabs(v36 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v37 > -9.22337204e18)
      {
        v52 = v33;
        if (v37 < 9.22337204e18)
        {
          v38 = v37;
          v39 = sub_20E0094C4();
          (*(*(v39 - 8) + 56))(v10, 1, 1, v39);
          (*(v12 + 16))(&v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v11);
          v40 = (*(v12 + 80) + 96) & ~*(v12 + 80);
          v41 = swift_allocObject();
          *(v41 + 2) = 0;
          *(v41 + 3) = 0;
          *(v41 + 4) = v52;
          *(v41 + 5) = v31;
          v42 = v58;
          *(v41 + 6) = v56;
          *(v41 + 7) = v42;
          v43 = v53;
          *(v41 + 8) = v54;
          *(v41 + 9) = v43;
          *(v41 + 10) = v57;
          *(v41 + 11) = v38;
          (*(v12 + 32))(&v41[v40], &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
          v44 = v55;
          *&v41[(v13 + v40 + 7) & 0xFFFFFFFFFFFFFFF8] = v55;

          v45 = v44;
          sub_20DFC7A60(0, 0, v10, &unk_20E010808, v41);

          return;
        }

        goto LABEL_31;
      }

      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (qword_27C8520C0 != -1)
    {
      swift_once();
    }

    v23 = sub_20E009094();
    __swift_project_value_buffer(v23, qword_27C8627A0);
    v59 = sub_20E009074();
    v24 = sub_20E009544();
    if (os_log_type_enabled(v59, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_20DF62000, v59, v24, "Device Diagnostic submission is not allowed", v25, 2u);
      MEMORY[0x20F32B3A0](v25, -1, -1);
    }

    v26 = v59;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_20DFC7404()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852F78, &qword_20E010888);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v24 - v2;
  v4 = sub_20E0088D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E008834();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_20DF66E28(v3, &qword_27C852F78, &qword_20E010888);
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    v9 = sub_20E0088A4();
    if (v10)
    {
      v11 = v9;
      v12 = v10;
      v13 = sub_20E008854();
      if (v14)
      {
        v15 = v13;
        v16 = v14;
        v24 = v11;
        v25 = v12;

        MEMORY[0x20F32A4B0](3092282, 0xE300000000000000);

        MEMORY[0x20F32A4B0](v15, v16);

        v18 = v24;
        v17 = v25;
        v19 = sub_20E008874();
        v21 = v20;
        v24 = v18;
        v25 = v17;

        MEMORY[0x20F32A4B0](v19, v21);

        v22 = v24;
        (*(v5 + 8))(v8, v4);
        return v22;
      }

      (*(v5 + 8))(v8, v4);
    }

    else
    {
      (*(v5 + 8))(v8, v4);
    }
  }

  return 0;
}

uint64_t sub_20DFC76A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 256) = v16;
  *(v8 + 224) = v14;
  *(v8 + 240) = v15;
  *(v8 + 208) = a7;
  *(v8 + 216) = a8;
  *(v8 + 192) = a5;
  *(v8 + 200) = a6;
  *(v8 + 176) = a1;
  *(v8 + 184) = a4;
  v9 = sub_20E008C14();
  *(v8 + 264) = v9;
  v10 = *(v9 - 8);
  *(v8 + 272) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 280) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DFC7780, 0, 0);
}

uint64_t sub_20DFC7780()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 248);
  v4 = *(v0 + 224);
  v19 = *(v0 + 232);
  v20 = *(v0 + 240);
  v5 = *(v0 + 208);
  v17 = *(v0 + 264);
  v18 = *(v0 + 216);
  v6 = *(v0 + 192);
  v7 = *(v0 + 200);
  v8 = *(v0 + 184);

  sub_20DF84E08(v1);
  v9 = sub_20E008BA4();
  v11 = v10;
  (*(v2 + 8))(v1, v17);
  *(v0 + 16) = v8;
  *(v0 + 24) = v6;
  *(v0 + 32) = v7;
  *(v0 + 40) = v5;
  *(v0 + 48) = v18;
  *(v0 + 56) = v4;
  *(v0 + 64) = v19;
  *(v0 + 72) = v20;
  *(v0 + 80) = v9;
  *(v0 + 88) = v11;
  v12 = *(v0 + 64);
  *(v0 + 128) = *(v0 + 48);
  *(v0 + 144) = v12;
  *(v0 + 160) = *(v0 + 80);
  v13 = *(v0 + 32);
  *(v0 + 96) = *(v0 + 16);
  *(v0 + 112) = v13;
  v14 = swift_task_alloc();
  *(v0 + 288) = v14;
  *v14 = v0;
  v14[1] = sub_20DFC78EC;
  v15 = *(v0 + 256);

  return sub_20DFC9A00(v0 + 96, v15);
}

uint64_t sub_20DFC78EC(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v5 = *v1;
  *(v2 + 296) = a1;

  sub_20DFCA6A4(v2 + 16);

  return MEMORY[0x2822009F8](sub_20DFC79F4, 0, 0);
}

uint64_t sub_20DFC79F4()
{
  v1 = *(v0 + 280);
  **(v0 + 176) = *(v0 + 296);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20DFC7A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_20DFC9618(a3, v27 - v11);
  v13 = sub_20E0094C4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_20DF66E28(v12, &qword_27C8522B0, &qword_20E00B1F0);
  }

  else
  {
    sub_20E0094B4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_20E009484();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_20E009264() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_20DF66E28(a3, &qword_27C8522B0, &qword_20E00B1F0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_20DF66E28(a3, &qword_27C8522B0, &qword_20E00B1F0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_20DFC7D48()
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = sub_20E008774();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_20E008764();
  v4 = v0[2];
  v5 = v0[4];
  v24 = v0[3];
  v25 = v5;
  v6 = *v0;
  v22 = v0[1];
  v23 = v4;
  *(&v21 + 1) = *(&v6 + 1);
  sub_20DFCA70C();
  v8 = sub_20E008754();
  v10 = v9;

  v11 = objc_opt_self();
  v12 = sub_20E008B64();
  *&v21 = 0;
  v13 = [v11 JSONObjectWithData:v12 options:4 error:&v21];

  v14 = v21;
  if (v13)
  {
    sub_20E009654();
    sub_20DF67FFC(v8, v10);
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = v14;
    v16 = sub_20E008A34();

    swift_willThrow();
    sub_20DF67FFC(v8, v10);

    v21 = 0u;
    v22 = 0u;
  }

  v19[0] = v21;
  v19[1] = v22;
  if (*(&v22 + 1))
  {
    sub_20DF77A64(v19, &v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8521F8, &unk_20E00EBC0);
    if (swift_dynamicCast())
    {
      result = v20;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_20DFC7F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v4[61] = a3;
  v4[62] = a4;
  v4[59] = a1;
  v4[60] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830) - 8) + 64) + 15;
  v4[63] = swift_task_alloc();
  v6 = sub_20E008714();
  v4[64] = v6;
  v7 = *(v6 - 8);
  v4[65] = v7;
  v8 = *(v7 + 64) + 15;
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70) - 8) + 64) + 15;
  v4[68] = swift_task_alloc();
  v10 = sub_20E008AF4();
  v4[69] = v10;
  v11 = *(v10 - 8);
  v4[70] = v11;
  v12 = *(v11 + 64) + 15;
  v4[71] = swift_task_alloc();
  v4[72] = swift_task_alloc();
  v13 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_20DFC8110, 0, 0);
}

uint64_t sub_20DFC8110()
{
  v87 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  v3 = *(v0 + 544);
  sub_20DF85FEC(*(v0 + 488), *(v0 + 496));
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_20DF66E28(*(v0 + 544), &qword_27C8520D0, &qword_20E00AB70);
    if (qword_27C8520C0 != -1)
    {
LABEL_40:
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C8627A0);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Request URL for Metrics API not found", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    v8 = *(v0 + 520);
    v9 = *(v0 + 512);
    v10 = *(v0 + 472);

    (*(v8 + 56))(v10, 1, 1, v9);
    goto LABEL_35;
  }

  v11 = *(v0 + 480);
  (*(*(v0 + 560) + 32))(*(v0 + 576), *(v0 + 544), *(v0 + 552));
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = *(v0 + 480) + 32;
    v15 = MEMORY[0x277D84F90];
    v81 = v14;
    do
    {
      v83 = v15;
      v16 = (v14 + 80 * v13);
      v17 = v13;
      while (1)
      {
        if (v17 >= v12)
        {
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        *(v0 + 16) = *v16;
        v18 = v16[1];
        v19 = v16[2];
        v20 = v16[4];
        *(v0 + 64) = v16[3];
        *(v0 + 80) = v20;
        *(v0 + 32) = v18;
        *(v0 + 48) = v19;
        v13 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_39;
        }

        v21 = sub_20E008774();
        v22 = *(v21 + 48);
        v23 = *(v21 + 52);
        swift_allocObject();
        sub_20DFCA6D4(v0 + 16, v0 + 96);
        sub_20E008764();
        v24 = *(v0 + 64);
        *(v0 + 208) = *(v0 + 48);
        *(v0 + 224) = v24;
        *(v0 + 240) = *(v0 + 80);
        v25 = *(v0 + 32);
        *(v0 + 176) = *(v0 + 16);
        *(v0 + 192) = v25;
        sub_20DFCA70C();
        v26 = sub_20E008754();
        v28 = v27;

        v29 = objc_opt_self();
        v30 = sub_20E008B64();
        *(v0 + 448) = 0;
        v31 = [v29 JSONObjectWithData:v30 options:4 error:v0 + 448];

        v32 = *(v0 + 448);
        if (v31)
        {
          sub_20E009654();
          sub_20DFCA6A4(v0 + 16);
          sub_20DF67FFC(v26, v28);
          swift_unknownObjectRelease();
        }

        else
        {
          v33 = v32;
          v34 = sub_20E008A34();

          swift_willThrow();
          sub_20DFCA6A4(v0 + 16);
          sub_20DF67FFC(v26, v28);

          v85 = 0u;
          v86 = 0u;
        }

        *(v0 + 256) = v85;
        *(v0 + 272) = v86;
        if (*(v0 + 280))
        {
          sub_20DF77A64((v0 + 256), (v0 + 288));
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8521F8, &unk_20E00EBC0);
          if (swift_dynamicCast())
          {
            v35 = *(v0 + 456);
            if (v35)
            {
              break;
            }
          }
        }

        ++v17;
        v16 += 5;
        if (v13 == v12)
        {
          v15 = v83;
          goto LABEL_26;
        }
      }

      v15 = v83;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_20DFFB228(0, v83[2] + 1, 1, v83);
      }

      v37 = v15[2];
      v36 = v15[3];
      if (v37 >= v36 >> 1)
      {
        v15 = sub_20DFFB228((v36 > 1), v37 + 1, 1, v15);
      }

      v15[2] = v37 + 1;
      v15[v37 + 4] = v35;
      v14 = v81;
    }

    while (v13 != v12);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

LABEL_26:
  *(v0 + 344) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852F70, &qword_20E010880);
  *(v0 + 320) = v15;
  sub_20DF77A64((v0 + 320), (v0 + 352));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_20DF857D4((v0 + 352), 0x73746E657665, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  *(v0 + 408) = MEMORY[0x277D837D0];
  *(v0 + 384) = 0xD000000000000012;
  *(v0 + 392) = 0x800000020E016DA0;
  sub_20DF77A64((v0 + 384), (v0 + 416));
  v39 = swift_isUniquelyReferenced_nonNull_native();
  sub_20DF857D4((v0 + 416), 0x6E69616D6F64, 0xE600000000000000, v39);
  v40 = objc_opt_self();
  v41 = sub_20E009154();

  *(v0 + 464) = 0;
  v42 = [v40 dataWithJSONObject:v41 options:0 error:v0 + 464];

  v43 = *(v0 + 464);
  if (!v42)
  {
    v61 = v43;
    v62 = sub_20E008A34();

    swift_willThrow();
    if (qword_27C8520C0 != -1)
    {
      swift_once();
    }

    v63 = sub_20E009094();
    __swift_project_value_buffer(v63, qword_27C8627A0);
    v64 = sub_20E009074();
    v65 = sub_20E009544();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_20DF62000, v64, v65, "Unable to encode Metrics request body", v66, 2u);
      MEMORY[0x20F32B3A0](v66, -1, -1);
    }

    v67 = *(v0 + 576);
    v68 = *(v0 + 560);
    v69 = *(v0 + 552);
    v70 = *(v0 + 520);
    v71 = *(v0 + 512);
    v72 = *(v0 + 472);

    (*(v68 + 8))(v67, v69);
    (*(v70 + 56))(v72, 1, 1, v71);
LABEL_35:
    v73 = *(v0 + 576);
    v74 = *(v0 + 568);
    v75 = *(v0 + 544);
    v76 = *(v0 + 536);
    v77 = *(v0 + 528);
    v78 = *(v0 + 504);

    v79 = *(v0 + 8);
    v80 = *MEMORY[0x277D85DE8];

    return v79();
  }

  v44 = *(v0 + 568);
  v45 = *(v0 + 560);
  v46 = *(v0 + 552);
  v47 = *(v0 + 536);
  v48 = *(v0 + 528);
  v49 = *(v0 + 520);
  v82 = *(v0 + 576);
  v84 = *(v0 + 512);
  v50 = sub_20E008B84();
  v52 = v51;

  *(v0 + 584) = v50;
  *(v0 + 592) = v52;
  (*(v45 + 16))(v44, v82, v46);
  sub_20E0086B4();
  sub_20DFDF668(v47);
  v53 = *(v49 + 8);
  *(v0 + 600) = v53;
  *(v0 + 608) = (v49 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v53(v48, v84);
  sub_20E008694();
  sub_20DF67FA8(v50, v52);
  sub_20E0086F4();
  v54 = swift_task_alloc();
  *(v0 + 616) = v54;
  *v54 = v0;
  v54[1] = sub_20DFC89E8;
  v55 = *(v0 + 536);
  v57 = *(v0 + 496);
  v56 = *(v0 + 504);
  v58 = *(v0 + 488);
  v59 = *MEMORY[0x277D85DE8];

  return sub_20DF83234(v56, v55, v58);
}

uint64_t sub_20DFC89E8()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 616);
  v7 = *v1;

  if (v0)
  {

    v3 = sub_20DFC8E6C;
  }

  else
  {
    v3 = sub_20DFC8B2C;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DFC8B2C()
{
  v37 = *MEMORY[0x277D85DE8];
  v1 = v0[65];
  v3 = v0[63];
  v2 = v0[64];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_20DF66E28(v3, &qword_27C8520C8, &qword_20E010830);
    if (qword_27C8520C0 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C8627A0);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable to sign Metrics request", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    v8 = v0[75];
    v9 = v0[74];
    v10 = v0[73];
    v31 = v0[76];
    v33 = v0[72];
    v11 = v0[70];
    v12 = v0[69];
    v13 = v0[67];
    v14 = v0[65];
    v15 = v0[64];
    v35 = v0[59];

    sub_20DF67FFC(v10, v9);
    v8(v13, v15);
    (*(v11 + 8))(v33, v12);
    (*(v14 + 56))(v35, 1, 1, v15);
  }

  else
  {
    v16 = v0[75];
    v17 = v0[74];
    v18 = v0[73];
    v34 = v0[76];
    v36 = v0[72];
    v19 = v0[70];
    v32 = v0[69];
    v20 = v0[67];
    v21 = v0[59];
    (*(v1 + 32))(v21, v3, v2);
    sub_20E008704();
    sub_20DF67FFC(v18, v17);
    v16(v20, v2);
    (*(v19 + 8))(v36, v32);
    (*(v1 + 56))(v21, 0, 1, v2);
  }

  v22 = v0[72];
  v23 = v0[71];
  v24 = v0[68];
  v25 = v0[67];
  v26 = v0[66];
  v27 = v0[63];

  v28 = v0[1];
  v29 = *MEMORY[0x277D85DE8];

  return v28();
}

uint64_t sub_20DFC8E6C()
{
  v25 = *MEMORY[0x277D85DE8];
  (*(v0[65] + 56))(v0[63], 1, 1, v0[64]);
  sub_20DF66E28(v0[63], &qword_27C8520C8, &qword_20E010830);
  if (qword_27C8520C0 != -1)
  {
    swift_once();
  }

  v1 = sub_20E009094();
  __swift_project_value_buffer(v1, qword_27C8627A0);
  v2 = sub_20E009074();
  v3 = sub_20E009544();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20DF62000, v2, v3, "Unable to sign Metrics request", v4, 2u);
    MEMORY[0x20F32B3A0](v4, -1, -1);
  }

  v5 = v0[75];
  v6 = v0[74];
  v7 = v0[73];
  v22 = v0[76];
  v23 = v0[72];
  v8 = v0[70];
  v9 = v0[69];
  v10 = v0[67];
  v11 = v0[65];
  v12 = v0[64];
  v24 = v0[59];

  sub_20DF67FFC(v7, v6);
  v5(v10, v12);
  (*(v8 + 8))(v23, v9);
  (*(v11 + 56))(v24, 1, 1, v12);
  v13 = v0[72];
  v14 = v0[71];
  v15 = v0[68];
  v16 = v0[67];
  v17 = v0[66];
  v18 = v0[63];

  v19 = v0[1];
  v20 = *MEMORY[0x277D85DE8];

  return v19();
}

uint64_t sub_20DFC90C8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852F80, &qword_20E010948);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFCA828();
  sub_20E009A84();
  v11 = *v3;
  v12 = v3[1];
  v22[15] = 0;
  sub_20E009914();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v22[14] = 1;
  sub_20E009914();
  v15 = v3[4];
  v16 = v3[5];
  v22[13] = 2;
  sub_20E009914();
  v17 = v3[6];
  v22[12] = 3;
  sub_20E009934();
  v18 = v3[7];
  v22[11] = 4;
  sub_20E009934();
  v20 = v3[8];
  v21 = v3[9];
  v22[10] = 5;
  sub_20E009914();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_20DFC92C8()
{
  v1 = *v0;
  v2 = 0x4972656E74726170;
  v3 = 0xD000000000000017;
  if (v1 != 4)
  {
    v3 = 0xD000000000000010;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000012;
  }

  if (v1 != 1)
  {
    v2 = 0x746E696F70646E65;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_20DFC9394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20DFCA87C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20DFC93C8(uint64_t a1)
{
  v2 = sub_20DFCA828();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFC9404(uint64_t a1)
{
  v2 = sub_20DFCA828();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_20DFC9440@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_20DFCAA88(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_20DFC94A4(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_20E008CD4() - 8);
  v5 = *(v1 + 24);
  v16 = *(v1 + 16);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v15 = *(v1 + 72);
  v11 = *(v1 + 88);
  v12 = *(v1 + ((*(v4 + 64) + ((*(v4 + 80) + 96) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_20DF6BA84;

  return sub_20DFC76A4(a1, v16, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_20DFC9618(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DFC9688(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_20DFC977C;

  return v6(v2 + 32);
}

uint64_t sub_20DFC977C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_20DFC9890(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20DF6BD98;

  return sub_20DFC9688(a1, v5);
}

uint64_t sub_20DFC9948(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20DF6BA84;

  return sub_20DFC9688(a1, v5);
}

uint64_t sub_20DFC9A00(uint64_t a1, uint64_t a2)
{
  v2[37] = a1;
  v2[38] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830) - 8) + 64) + 15;
  v2[39] = swift_task_alloc();
  v4 = sub_20E008714();
  v2[40] = v4;
  v5 = *(v4 - 8);
  v2[41] = v5;
  v6 = *(v5 + 64) + 15;
  v2[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DFC9AF8, 0, 0);
}

uint64_t sub_20DFC9AF8()
{
  v21 = v0;
  if (qword_27C8520C0 != -1)
  {
    swift_once();
  }

  v1 = v0[37];
  v2 = sub_20E009094();
  v0[43] = __swift_project_value_buffer(v2, qword_27C8627A0);
  sub_20DFCA6D4(v1, (v0 + 16));
  v3 = sub_20E009074();
  v4 = sub_20E009554();
  sub_20DFCA6A4(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[37];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315138;
    v0[36] = sub_20DFC7D48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852F60, &unk_20E010870);
    v8 = sub_20E009244();
    v10 = sub_20DF74468(v8, v9, &v20);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_20DF62000, v3, v4, "Logging metric event %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x20F32B3A0](v7, -1, -1);
    MEMORY[0x20F32B3A0](v6, -1, -1);
  }

  v11 = v0[37];
  KeyPath = swift_getKeyPath();
  v0[44] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852F58, &qword_20E010858);
  inited = swift_initStackObject();
  v0[45] = inited;
  inited[1] = xmmword_20E00AB50;
  v14 = v11[1];
  v15 = v11[2];
  v16 = v11[4];
  inited[5] = v11[3];
  inited[6] = v16;
  inited[3] = v14;
  inited[4] = v15;
  inited[2] = *v11;
  sub_20DFCA6D4(v11, (v0 + 26));
  v17 = swift_task_alloc();
  v0[46] = v17;
  *v17 = v0;
  v17[1] = sub_20DFC9D68;
  v18 = v0[39];

  return sub_20DFC7F3C(v18, inited, KeyPath, 0);
}

uint64_t sub_20DFC9D68()
{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 360);
  v3 = *(*v0 + 352);
  v5 = *v0;

  swift_setDeallocating();
  sub_20DFCA6A4(v2 + 32);

  return MEMORY[0x2822009F8](sub_20DFC9EA4, 0, 0);
}

uint64_t sub_20DFC9EA4()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[39];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[43];
    sub_20DF66E28(v3, &qword_27C8520C8, &qword_20E010830);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable to generate request URL for utility metrics api.", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    v8 = v0[42];
    v9 = v0[39];

    v10 = v0[1];

    return v10(0);
  }

  else
  {
    (*(v2 + 32))(v0[42], v3, v1);
    sub_20DFDF8DC(0xD00000000000001DLL, 0x800000020E016D40, 0xD000000000000015, 0x800000020E016D60);
    v12 = *(MEMORY[0x277CC9D18] + 4);
    v13 = swift_task_alloc();
    v0[47] = v13;
    *v13 = v0;
    v13[1] = sub_20DFCA0AC;
    v14 = v0[42];
    v15 = v0[38];

    return MEMORY[0x28211ECF8](v14, 0);
  }
}

uint64_t sub_20DFCA0AC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *v4;
  v8 = *(*v4 + 376);
  v11 = *v4;
  *(v7 + 384) = a3;
  *(v7 + 392) = v3;

  if (v3)
  {
    v9 = sub_20DFCA514;
  }

  else
  {
    sub_20DF67FFC(a1, a2);
    v9 = sub_20DFCA1DC;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_20DFCA1DC()
{
  v1 = *(v0 + 384);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 336);
    v5 = *(v0 + 384);
    sub_20DFDFFF8(0xD00000000000001CLL, 0x800000020E016D80, [v3 statusCode], &unk_28252DF88);
    if ([v3 statusCode] == 200)
    {
      v6 = *(v0 + 344);
      v7 = sub_20E009074();
      v8 = sub_20E009554();
      v9 = os_log_type_enabled(v7, v8);
      v10 = *(v0 + 384);
      v12 = *(v0 + 328);
      v11 = *(v0 + 336);
      v13 = *(v0 + 320);
      if (v9)
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_20DF62000, v7, v8, "Metrics event posted successfully", v14, 2u);
        MEMORY[0x20F32B3A0](v14, -1, -1);
      }

      else
      {
      }

      (*(v12 + 8))(v11, v13);
      v31 = 1;
      goto LABEL_16;
    }

    v24 = *(v0 + 344);
    v25 = *(v0 + 384);
    v26 = sub_20E009074();
    v27 = sub_20E009544();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = *(v0 + 384);
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      *(v29 + 4) = [v3 statusCode];

      _os_log_impl(&dword_20DF62000, v26, v27, "Request failed : Status Code %ld", v29, 0xCu);
      MEMORY[0x20F32B3A0](v29, -1, -1);
      v30 = *(v0 + 384);
    }

    else
    {

      v30 = *(v0 + 384);
      v26 = v30;
    }

    v33 = *(v0 + 328);
    v32 = *(v0 + 336);
    v34 = *(v0 + 320);

    (*(v33 + 8))(v32, v34);
  }

  else
  {
    v15 = *(v0 + 344);
    v16 = sub_20E009074();
    v17 = sub_20E009544();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 384);
    v21 = *(v0 + 328);
    v20 = *(v0 + 336);
    v22 = *(v0 + 320);
    if (v18)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_20DF62000, v16, v17, "Unable to process Metrics API Response.", v23, 2u);
      MEMORY[0x20F32B3A0](v23, -1, -1);
    }

    else
    {
    }

    (*(v21 + 8))(v20, v22);
  }

  v31 = 0;
LABEL_16:
  v35 = *(v0 + 336);
  v36 = *(v0 + 312);

  v37 = *(v0 + 8);

  return v37(v31);
}

uint64_t sub_20DFCA514()
{
  v1 = v0[49];
  v2 = v0[43];
  v3 = v1;
  v4 = sub_20E009074();
  v5 = sub_20E009544();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[49];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_20DF62000, v4, v5, "Metrics log event failed %@", v8, 0xCu);
    sub_20DF66E28(v9, &qword_27C8521E0, &unk_20E011080);
    MEMORY[0x20F32B3A0](v9, -1, -1);
    MEMORY[0x20F32B3A0](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[41] + 8))(v0[42], v0[40]);
  v12 = v0[42];
  v13 = v0[39];

  v14 = v0[1];

  return v14(0);
}

unint64_t sub_20DFCA70C()
{
  result = qword_27C852F68;
  if (!qword_27C852F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852F68);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_20DFCA77C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_20DFCA7C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20DFCA828()
{
  result = qword_27C852F88;
  if (!qword_27C852F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852F88);
  }

  return result;
}

uint64_t sub_20DFCA87C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x800000020E016DC0 == a2;
  if (v3 || (sub_20E009984() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4972656E74726170 && a2 == 0xE900000000000064 || (sub_20E009984() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E696F70646E65 && a2 == 0xE800000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020E016DE0 == a2 || (sub_20E009984() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x800000020E016E00 == a2 || (sub_20E009984() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020E016E20 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_20E009984();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_20DFCAA88@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852F90, &qword_20E010950);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFCA828();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v37[0]) = 0;
  v11 = sub_20E009894();
  v13 = v12;
  LOBYTE(v37[0]) = 1;
  *&v31 = sub_20E009894();
  *(&v31 + 1) = v14;
  LOBYTE(v37[0]) = 2;
  v28 = sub_20E009894();
  v30 = v15;
  LOBYTE(v37[0]) = 3;
  v29 = 0;
  v27 = sub_20E0098B4();
  LOBYTE(v37[0]) = 4;
  v26 = sub_20E0098B4();
  v45 = 5;
  v16 = sub_20E009894();
  v17 = *(v6 + 8);
  v18 = v16;
  v29 = v19;
  v17(v9, v5);
  *&v32 = v11;
  *(&v32 + 1) = v13;
  v20 = v31;
  v33 = v31;
  v21 = v30;
  *&v34 = v28;
  *(&v34 + 1) = v30;
  *&v35 = v27;
  *(&v35 + 1) = v26;
  v22 = v29;
  *&v36 = v18;
  *(&v36 + 1) = v29;
  sub_20DFCA6D4(&v32, v37);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v37[0] = v11;
  v37[1] = v13;
  v38 = __PAIR128__(*(&v31 + 1), v20);
  v39 = v28;
  v40 = v21;
  v41 = v27;
  v42 = v26;
  v43 = v18;
  v44 = v22;
  result = sub_20DFCA6A4(v37);
  v24 = v35;
  a2[2] = v34;
  a2[3] = v24;
  a2[4] = v36;
  v25 = v33;
  *a2 = v32;
  a2[1] = v25;
  return result;
}

unint64_t sub_20DFCAE5C()
{
  result = qword_27C852F98;
  if (!qword_27C852F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852F98);
  }

  return result;
}

unint64_t sub_20DFCAEB4()
{
  result = qword_27C852FA0;
  if (!qword_27C852FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852FA0);
  }

  return result;
}

unint64_t sub_20DFCAF0C()
{
  result = qword_27C852FA8;
  if (!qword_27C852FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852FA8);
  }

  return result;
}

uint64_t sub_20DFCAF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830) - 8) + 64) + 15;
  v6[10] = swift_task_alloc();
  v9 = sub_20E008714();
  v6[11] = v9;
  v10 = *(v9 - 8);
  v6[12] = v10;
  v11 = *(v10 + 64) + 15;
  v6[13] = swift_task_alloc();
  v12 = swift_task_alloc();
  v6[14] = v12;
  *v12 = v6;
  v12[1] = sub_20DFCB094;

  return sub_20DF9D6CC(a6);
}

uint64_t sub_20DFCB094()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DFCB190, 0, 0);
}

uint64_t sub_20DFCB190()
{
  KeyPath = swift_getKeyPath();
  v0[15] = KeyPath;
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_20DFCB248;
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[6];

  return sub_20DFA6CD0(v3, v6, v7, v4, v5, KeyPath, 0);
}

uint64_t sub_20DFCB248()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_20DFCB360, 0, 0);
}

uint64_t sub_20DFCB360()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF8B6B4(v3);
    if (qword_27C852088 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C8626F8);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable to generate request URL for Service Location Lookup", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    type metadata accessor for NetworkError();
    sub_20DFCD3D8(&qword_281123200, type metadata accessor for NetworkError);
    swift_allocError();
    *v8 = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v9 = v0[13];
    v10 = v0[10];

    v11 = v0[1];

    return v11();
  }

  else
  {
    (*(v2 + 32))(v0[13], v3, v1);
    sub_20DFDF8DC(0xD000000000000026, 0x800000020E016E60, 0xD000000000000030, 0x800000020E016E90);
    v13 = *(MEMORY[0x277CC9D18] + 4);
    v14 = swift_task_alloc();
    v0[17] = v14;
    *v14 = v0;
    v14[1] = sub_20DFCB61C;
    v15 = v0[13];
    v16 = v0[9];

    return MEMORY[0x28211ECF8](v15, 0);
  }
}

uint64_t sub_20DFCB61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 136);
  v9 = *v4;
  v5[18] = a1;
  v5[19] = a2;
  v5[20] = a3;
  v5[21] = v3;

  if (v3)
  {
    v7 = sub_20DFCC4C4;
  }

  else
  {
    v7 = sub_20DFCB734;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_20DFCB734()
{
  v1 = *(v0 + 160);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    if (qword_27C852088 != -1)
    {
      swift_once();
    }

    v11 = sub_20E009094();
    __swift_project_value_buffer(v11, qword_27C8626F8);
    v12 = sub_20E009074();
    v13 = sub_20E009544();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_20DF62000, v12, v13, "Unable to process Service Location Response.", v14, 2u);
      MEMORY[0x20F32B3A0](v14, -1, -1);
    }

    v15 = *(v0 + 152);
    v16 = *(v0 + 160);
    v17 = *(v0 + 144);
    v19 = *(v0 + 96);
    v18 = *(v0 + 104);
    v20 = *(v0 + 88);

    type metadata accessor for NetworkError();
    sub_20DFCD3D8(&qword_281123200, type metadata accessor for NetworkError);
    swift_allocError();
    *v21 = 2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_20DF67FFC(v17, v15);
    goto LABEL_51;
  }

  v3 = v2;
  v4 = *(v0 + 104);
  v5 = *(v0 + 160);
  sub_20DFDFFF8(0xD00000000000001BLL, 0x800000020E016ED0, [v3 statusCode], &unk_28252DF60);
  v6 = [v3 statusCode];
  if (v6 > 411)
  {
    switch(v6)
    {
      case 412:
        if (qword_27C852088 != -1)
        {
          swift_once();
        }

        v51 = sub_20E009094();
        __swift_project_value_buffer(v51, qword_27C8626F8);
        v8 = sub_20E009074();
        v52 = sub_20E009544();
        if (os_log_type_enabled(v8, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&dword_20DF62000, v8, v52, "Access Token expired. Retry after refreshing token", v53, 2u);
          MEMORY[0x20F32B3A0](v53, -1, -1);
        }

        goto LABEL_50;
      case 429:
        if (qword_27C852088 != -1)
        {
          swift_once();
        }

        v65 = sub_20E009094();
        __swift_project_value_buffer(v65, qword_27C8626F8);
        v8 = sub_20E009074();
        v66 = sub_20E009544();
        if (os_log_type_enabled(v8, v66))
        {
          v67 = swift_slowAlloc();
          *v67 = 0;
          _os_log_impl(&dword_20DF62000, v8, v66, "TOO MANY REQUESTS | Server rejected calls cause of too many requests being made", v67, 2u);
          MEMORY[0x20F32B3A0](v67, -1, -1);
        }

        goto LABEL_50;
      case 500:
        if (qword_27C852088 != -1)
        {
          swift_once();
        }

        v22 = sub_20E009094();
        __swift_project_value_buffer(v22, qword_27C8626F8);
        v23 = sub_20E009074();
        v24 = sub_20E009544();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_20DF62000, v23, v24, "Internal Server Error", v25, 2u);
          MEMORY[0x20F32B3A0](v25, -1, -1);
        }

        v27 = *(v0 + 152);
        v26 = *(v0 + 160);
        v28 = *(v0 + 144);
        v29 = *(v0 + 96);
        v89 = *(v0 + 88);
        v91 = *(v0 + 104);

        type metadata accessor for NetworkError();
        sub_20DFCD3D8(&qword_281123200, type metadata accessor for NetworkError);
        swift_allocError();
        *v30 = [v3 statusCode];
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_20DF67FFC(v28, v27);

        (*(v29 + 8))(v91, v89);
        goto LABEL_52;
    }

    goto LABEL_37;
  }

  if (v6 != 200)
  {
    if (v6 == 400)
    {
      if (qword_27C852088 != -1)
      {
        swift_once();
      }

      v62 = sub_20E009094();
      __swift_project_value_buffer(v62, qword_27C8626F8);
      v8 = sub_20E009074();
      v63 = sub_20E009544();
      if (os_log_type_enabled(v8, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_20DF62000, v8, v63, "BAD REQUEST | Check request", v64, 2u);
        MEMORY[0x20F32B3A0](v64, -1, -1);
      }

      goto LABEL_50;
    }

    if (v6 == 401)
    {
      if (qword_27C852088 != -1)
      {
        swift_once();
      }

      v7 = sub_20E009094();
      __swift_project_value_buffer(v7, qword_27C8626F8);
      v8 = sub_20E009074();
      v9 = sub_20E009544();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_20DF62000, v8, v9, "Request Unauthorized.", v10, 2u);
        MEMORY[0x20F32B3A0](v10, -1, -1);
      }

LABEL_50:
      v68 = *(v0 + 152);
      v16 = *(v0 + 160);
      v69 = *(v0 + 144);
      v19 = *(v0 + 96);
      v18 = *(v0 + 104);
      v20 = *(v0 + 88);

      type metadata accessor for NetworkError();
      sub_20DFCD3D8(&qword_281123200, type metadata accessor for NetworkError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_20DF67FFC(v69, v68);

LABEL_51:
      (*(v19 + 8))(v18, v20);
LABEL_52:
      v70 = *(v0 + 104);
      v71 = *(v0 + 80);

      v72 = *(v0 + 8);
      goto LABEL_53;
    }

LABEL_37:
    if (qword_27C852088 != -1)
    {
      swift_once();
    }

    v54 = *(v0 + 160);
    v55 = sub_20E009094();
    __swift_project_value_buffer(v55, qword_27C8626F8);
    v56 = v54;
    v57 = sub_20E009074();
    v58 = sub_20E009544();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = *(v0 + 160);
      v60 = swift_slowAlloc();
      *v60 = 134217984;
      *(v60 + 4) = [v3 statusCode];

      _os_log_impl(&dword_20DF62000, v57, v58, "Request failed : Status Code %ld", v60, 0xCu);
      MEMORY[0x20F32B3A0](v60, -1, -1);
      v61 = *(v0 + 160);
    }

    else
    {

      v61 = *(v0 + 160);
      v57 = v61;
    }

    v75 = *(v0 + 144);
    v74 = *(v0 + 152);
    v76 = *(v0 + 96);
    v90 = *(v0 + 88);
    v92 = *(v0 + 104);

    type metadata accessor for NetworkError();
    sub_20DFCD3D8(&qword_281123200, type metadata accessor for NetworkError);
    swift_allocError();
    *v77 = [v3 statusCode];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_20DF67FFC(v75, v74);

    (*(v76 + 8))(v92, v90);
    goto LABEL_52;
  }

  if (qword_27C852088 != -1)
  {
    swift_once();
  }

  v31 = sub_20E009094();
  __swift_project_value_buffer(v31, qword_27C8626F8);
  v32 = sub_20E009074();
  v33 = sub_20E009554();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_20DF62000, v32, v33, "Service Locations Response received", v34, 2u);
    MEMORY[0x20F32B3A0](v34, -1, -1);
  }

  v35 = *(v0 + 168);
  v37 = *(v0 + 144);
  v36 = *(v0 + 152);

  v38 = sub_20E008744();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  sub_20E008734();
  sub_20DFCD420();
  sub_20E008724();
  v41 = v35;

  if (v35)
  {
LABEL_29:
    v42 = sub_20E009074();
    v43 = sub_20E009544();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_20DF62000, v42, v43, "Error while decoding response from server", v44, 2u);
      MEMORY[0x20F32B3A0](v44, -1, -1);
    }

    v45 = *(v0 + 152);
    v46 = *(v0 + 160);
    v47 = *(v0 + 144);
    v49 = *(v0 + 96);
    v48 = *(v0 + 104);
    v50 = *(v0 + 88);

    sub_20DFFE0B0(v41);
    swift_willThrow();
    sub_20DF67FFC(v47, v45);

    (*(v49 + 8))(v48, v50);
    goto LABEL_52;
  }

  v78 = *(v0 + 16);
  if (!v78)
  {
    v85 = sub_20E009074();
    v86 = sub_20E009544();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_20DF62000, v85, v86, "Error while decoding response from server", v87, 2u);
      MEMORY[0x20F32B3A0](v87, -1, -1);
    }

    type metadata accessor for NetworkError();
    sub_20DFCD3D8(&qword_281123200, type metadata accessor for NetworkError);
    v41 = swift_allocError();
    *v88 = 1;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_29;
  }

  v79 = *(v0 + 152);
  v80 = *(v0 + 160);
  v81 = *(v0 + 144);
  v82 = *(v0 + 80);
  v83 = *(v0 + 24);
  v84 = *(v0 + 32);
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

  sub_20DF67FFC(v81, v79);
  *v84 = v78;
  v84[1] = v83;

  v72 = *(v0 + 8);
LABEL_53:

  return v72();
}

uint64_t sub_20DFCC4C4()
{
  (*(v0[12] + 8))(v0[13], v0[11]);
  v1 = v0[21];
  v2 = v0[13];
  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_20DFCC54C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853048, &qword_20E010D68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFCEFA8(v8);
  sub_20DFCEF00();
  sub_20E009A84();
  v12[0] = v8;
  v12[1] = v9;
  sub_20DFCEFEC();
  sub_20E009904();
  sub_20DFCED98(v12[0]);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_20DFCC6B0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853030, &qword_20E010D60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFCEF00();
  sub_20E009A74();
  if (!v2)
  {
    sub_20DFCEF54();
    sub_20E009884();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_20DFCC83C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x800000020E016F10 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_20E009984();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_20DFCC8D0(uint64_t a1)
{
  v2 = sub_20DFCEF00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFCC90C(uint64_t a1)
{
  v2 = sub_20DFCEF00();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_20DFCC978()
{
  if (*v0)
  {
    result = 0xD00000000000001ALL;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_20DFCC9B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000020E0148F0 == a2 || (sub_20E009984() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000020E016E40 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_20E009984();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_20DFCCA9C(uint64_t a1)
{
  v2 = sub_20DFCCD54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFCCAD8(uint64_t a1)
{
  v2 = sub_20DFCCD54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UtilityServiceLocations.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852FB0, &qword_20E010A70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v12 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFCCD54();

  sub_20E009A84();
  v14 = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852FC0, &qword_20E010A78);
  sub_20DFCD10C(&qword_27C852FC8, &qword_27C852620);
  sub_20E009944();

  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852FD0, &qword_20E010A80);
    sub_20DFCCDA8(&qword_27C852FD8, sub_20DFCCE20);
    sub_20E009904();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_20DFCCD54()
{
  result = qword_27C852FB8;
  if (!qword_27C852FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852FB8);
  }

  return result;
}

uint64_t sub_20DFCCDA8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C852FD0, &qword_20E010A80);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20DFCCE20()
{
  result = qword_27C852FE0;
  if (!qword_27C852FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852FE0);
  }

  return result;
}

uint64_t UtilityServiceLocations.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852FE8, &qword_20E010A88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFCCD54();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852FC0, &qword_20E010A78);
  v15 = 0;
  sub_20DFCD10C(&qword_27C852FF0, &qword_27C852648);
  sub_20E0098C4();
  v11 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852FD0, &qword_20E010A80);
  v15 = 1;
  sub_20DFCCDA8(&qword_27C852FF8, sub_20DFCD1A8);
  sub_20E009884();
  (*(v6 + 8))(v9, v5);
  v12 = v16;
  *a2 = v11;
  a2[1] = v12;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_20DFCD10C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C852FC0, &qword_20E010A78);
    sub_20DFCD3D8(a2, type metadata accessor for UtilityServiceLocation);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20DFCD1A8()
{
  result = qword_27C853000;
  if (!qword_27C853000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853000);
  }

  return result;
}

uint64_t sub_20DFCD22C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_20DFCD274(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20DFCD2D4()
{
  result = qword_27C853008;
  if (!qword_27C853008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853008);
  }

  return result;
}

unint64_t sub_20DFCD32C()
{
  result = qword_27C853010;
  if (!qword_27C853010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853010);
  }

  return result;
}

unint64_t sub_20DFCD384()
{
  result = qword_27C853018;
  if (!qword_27C853018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853018);
  }

  return result;
}

uint64_t sub_20DFCD3D8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20DFCD420()
{
  result = qword_27C853020;
  if (!qword_27C853020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853020);
  }

  return result;
}

uint64_t sub_20DFCD474(uint64_t a1)
{
  if (a1 && *(a1 + 16))
  {
    if (qword_27C852088 != -1)
    {
      swift_once();
    }

    v2 = sub_20E009094();
    __swift_project_value_buffer(v2, qword_27C8626F8);
    v3 = sub_20E009074();
    v4 = sub_20E009534();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_20DF62000, v3, v4, "Checking for Ineligibility Code", v5, 2u);
      MEMORY[0x20F32B3A0](v5, -1, -1);
    }

    v6 = *(a1 + 56);
    sub_20DFCEDD8();
    swift_allocError();
    *v7 = v6;
    swift_willThrow();
  }

  else
  {
    if (qword_27C852088 != -1)
    {
      swift_once();
    }

    v8 = sub_20E009094();
    __swift_project_value_buffer(v8, qword_27C8626F8);
    v9 = sub_20E009074();
    v10 = sub_20E009534();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_20DF62000, v9, v10, "No Ineligible service locations found", v11, 2u);
      MEMORY[0x20F32B3A0](v11, -1, -1);
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_20DFCD654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v8 = sub_20E008714();
  v5[11] = v8;
  v9 = *(v8 - 8);
  v5[12] = v9;
  v10 = *(v9 + 64) + 15;
  v5[13] = swift_task_alloc();
  v11 = swift_task_alloc();
  v5[14] = v11;
  *v11 = v5;
  v11[1] = sub_20DFCD788;

  return sub_20DF9D6CC(a5);
}

uint64_t sub_20DFCD788()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DFCD884, 0, 0);
}

uint64_t sub_20DFCD884()
{
  KeyPath = swift_getKeyPath();
  v0[15] = KeyPath;
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_20DFCD93C;
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[6];

  return sub_20DFA6CD0(v3, v6, v7, v4, v5, KeyPath, 0);
}

uint64_t sub_20DFCD93C()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_20DFCDA54, 0, 0);
}

uint64_t sub_20DFCDA54()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF8B6B4(v3);
    if (qword_27C852088 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C8626F8);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable to generate request URL for Service Location Lookup", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    type metadata accessor for NetworkError();
    sub_20DFCD3D8(&qword_281123200, type metadata accessor for NetworkError);
    swift_allocError();
    *v8 = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v9 = v0[13];
    v10 = v0[10];

    v11 = v0[1];

    return v11();
  }

  else
  {
    (*(v2 + 32))(v0[13], v3, v1);
    sub_20DFDF8DC(0xD000000000000011, 0x800000020E016EF0, 0xD000000000000030, 0x800000020E016E90);
    v13 = *(MEMORY[0x277CC9D18] + 4);
    v14 = swift_task_alloc();
    v0[17] = v14;
    *v14 = v0;
    v14[1] = sub_20DFCDD10;
    v15 = v0[13];
    v16 = v0[9];

    return MEMORY[0x28211ECF8](v15, 0);
  }
}

uint64_t sub_20DFCDD10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 136);
  v9 = *v4;
  v5[18] = a1;
  v5[19] = a2;
  v5[20] = a3;
  v5[21] = v3;

  if (v3)
  {
    v7 = sub_20DFCC4C4;
  }

  else
  {
    v7 = sub_20DFCDE28;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_20DFCDE28()
{
  v1 = *(v0 + 160);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    if (qword_27C852088 != -1)
    {
      swift_once();
    }

    v11 = sub_20E009094();
    __swift_project_value_buffer(v11, qword_27C8626F8);
    v12 = sub_20E009074();
    v13 = sub_20E009544();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_20DF62000, v12, v13, "Unable to process Service Location Response.", v14, 2u);
      MEMORY[0x20F32B3A0](v14, -1, -1);
    }

    v15 = *(v0 + 152);
    v16 = *(v0 + 160);
    v17 = *(v0 + 144);
    v19 = *(v0 + 96);
    v18 = *(v0 + 104);
    v20 = *(v0 + 88);

    type metadata accessor for NetworkError();
    sub_20DFCD3D8(&qword_281123200, type metadata accessor for NetworkError);
    swift_allocError();
    *v21 = 2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_20DF67FFC(v17, v15);
    goto LABEL_50;
  }

  v3 = v2;
  v4 = *(v0 + 104);
  v5 = *(v0 + 160);
  sub_20DFDFFF8(0xD00000000000001BLL, 0x800000020E016ED0, [v3 statusCode], &unk_28252DF38);
  v6 = [v3 statusCode];
  if (v6 > 411)
  {
    switch(v6)
    {
      case 412:
        if (qword_27C852088 != -1)
        {
          swift_once();
        }

        v49 = sub_20E009094();
        __swift_project_value_buffer(v49, qword_27C8626F8);
        v8 = sub_20E009074();
        v50 = sub_20E009544();
        if (os_log_type_enabled(v8, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&dword_20DF62000, v8, v50, "Access Token expired. Retry after refreshing token", v51, 2u);
          MEMORY[0x20F32B3A0](v51, -1, -1);
        }

        goto LABEL_49;
      case 429:
        if (qword_27C852088 != -1)
        {
          swift_once();
        }

        v63 = sub_20E009094();
        __swift_project_value_buffer(v63, qword_27C8626F8);
        v8 = sub_20E009074();
        v64 = sub_20E009544();
        if (os_log_type_enabled(v8, v64))
        {
          v65 = swift_slowAlloc();
          *v65 = 0;
          _os_log_impl(&dword_20DF62000, v8, v64, "TOO MANY REQUESTS | Server rejected calls cause of too many requests being made", v65, 2u);
          MEMORY[0x20F32B3A0](v65, -1, -1);
        }

        goto LABEL_49;
      case 500:
        if (qword_27C852088 != -1)
        {
          swift_once();
        }

        v22 = sub_20E009094();
        __swift_project_value_buffer(v22, qword_27C8626F8);
        v23 = sub_20E009074();
        v24 = sub_20E009544();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_20DF62000, v23, v24, "Internal Server Error", v25, 2u);
          MEMORY[0x20F32B3A0](v25, -1, -1);
        }

        v27 = *(v0 + 152);
        v26 = *(v0 + 160);
        v28 = *(v0 + 144);
        v29 = *(v0 + 96);
        v109 = *(v0 + 88);
        v111 = *(v0 + 104);

        type metadata accessor for NetworkError();
        sub_20DFCD3D8(&qword_281123200, type metadata accessor for NetworkError);
        swift_allocError();
        *v30 = [v3 statusCode];
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_20DF67FFC(v28, v27);

        (*(v29 + 8))(v111, v109);
        goto LABEL_51;
    }

    goto LABEL_36;
  }

  if (v6 != 200)
  {
    if (v6 == 400)
    {
      if (qword_27C852088 != -1)
      {
        swift_once();
      }

      v60 = sub_20E009094();
      __swift_project_value_buffer(v60, qword_27C8626F8);
      v8 = sub_20E009074();
      v61 = sub_20E009544();
      if (os_log_type_enabled(v8, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_20DF62000, v8, v61, "BAD REQUEST | Check request", v62, 2u);
        MEMORY[0x20F32B3A0](v62, -1, -1);
      }

      goto LABEL_49;
    }

    if (v6 == 401)
    {
      if (qword_27C852088 != -1)
      {
        swift_once();
      }

      v7 = sub_20E009094();
      __swift_project_value_buffer(v7, qword_27C8626F8);
      v8 = sub_20E009074();
      v9 = sub_20E009544();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_20DF62000, v8, v9, "Request Unauthorized.", v10, 2u);
        MEMORY[0x20F32B3A0](v10, -1, -1);
      }

LABEL_49:
      v66 = *(v0 + 152);
      v16 = *(v0 + 160);
      v67 = *(v0 + 144);
      v19 = *(v0 + 96);
      v18 = *(v0 + 104);
      v20 = *(v0 + 88);

      type metadata accessor for NetworkError();
      sub_20DFCD3D8(&qword_281123200, type metadata accessor for NetworkError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_20DF67FFC(v67, v66);

LABEL_50:
      (*(v19 + 8))(v18, v20);
LABEL_51:
      v68 = *(v0 + 104);
      v69 = *(v0 + 80);

      v70 = *(v0 + 8);

      return v70();
    }

LABEL_36:
    if (qword_27C852088 != -1)
    {
      swift_once();
    }

    v52 = *(v0 + 160);
    v53 = sub_20E009094();
    __swift_project_value_buffer(v53, qword_27C8626F8);
    v54 = v52;
    v55 = sub_20E009074();
    v56 = sub_20E009544();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = *(v0 + 160);
      v58 = swift_slowAlloc();
      *v58 = 134217984;
      *(v58 + 4) = [v3 statusCode];

      _os_log_impl(&dword_20DF62000, v55, v56, "Request failed : Status Code %ld", v58, 0xCu);
      MEMORY[0x20F32B3A0](v58, -1, -1);
      v59 = *(v0 + 160);
    }

    else
    {

      v59 = *(v0 + 160);
      v55 = v59;
    }

    v73 = *(v0 + 144);
    v72 = *(v0 + 152);
    v74 = *(v0 + 96);
    v110 = *(v0 + 88);
    v112 = *(v0 + 104);

    type metadata accessor for NetworkError();
    sub_20DFCD3D8(&qword_281123200, type metadata accessor for NetworkError);
    swift_allocError();
    *v75 = [v3 statusCode];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_20DF67FFC(v73, v72);

    (*(v74 + 8))(v112, v110);
    goto LABEL_51;
  }

  if (qword_27C852088 != -1)
  {
    swift_once();
  }

  v31 = sub_20E009094();
  __swift_project_value_buffer(v31, qword_27C8626F8);
  v32 = sub_20E009074();
  v33 = sub_20E009554();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_20DF62000, v32, v33, "Service Locations Response received", v34, 2u);
    MEMORY[0x20F32B3A0](v34, -1, -1);
  }

  v35 = *(v0 + 168);
  v37 = *(v0 + 144);
  v36 = *(v0 + 152);

  v38 = sub_20E008744();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  sub_20E008734();
  sub_20DFCD420();
  sub_20E008724();
  v41 = v35;

  if (v35)
  {
LABEL_29:
    *(v0 + 32) = v41;
    v42 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A8, &unk_20E00C130);
    if (swift_dynamicCast())
    {
      v43 = *(v0 + 152);
      v44 = *(v0 + 160);
      v45 = *(v0 + 144);
      v47 = *(v0 + 96);
      v46 = *(v0 + 104);
      v48 = *(v0 + 88);
      swift_willThrow();
      sub_20DF67FFC(v45, v43);

      (*(v47 + 8))(v46, v48);
    }

    else
    {
      v76 = sub_20E009074();
      v77 = sub_20E009544();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&dword_20DF62000, v76, v77, "Error while decoding response from server", v78, 2u);
        MEMORY[0x20F32B3A0](v78, -1, -1);
      }

      v79 = *(v0 + 152);
      v80 = *(v0 + 160);
      v81 = *(v0 + 144);
      v83 = *(v0 + 96);
      v82 = *(v0 + 104);
      v84 = *(v0 + 88);

      sub_20DFFE0B0(v41);
      swift_willThrow();
      sub_20DF67FFC(v81, v79);

      (*(v83 + 8))(v82, v84);
    }

    goto LABEL_51;
  }

  v85 = *(v0 + 16);
  if (!v85)
  {
    v94 = sub_20E009074();
    v95 = sub_20E009544();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&dword_20DF62000, v94, v95, "Error while decoding response from server", v96, 2u);
      MEMORY[0x20F32B3A0](v96, -1, -1);
    }

    type metadata accessor for NetworkError();
    sub_20DFCD3D8(&qword_281123200, type metadata accessor for NetworkError);
    v41 = swift_allocError();
    *v97 = 1;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_29;
  }

  v86 = *(v0 + 24);
  if (v85 >> 62)
  {
    if (v85 < 0)
    {
      v98 = *(v0 + 16);
    }

    if (sub_20E009804())
    {
      goto LABEL_62;
    }

LABEL_72:
    v99 = sub_20E009074();
    v100 = sub_20E009544();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 0;
      _os_log_impl(&dword_20DF62000, v99, v100, "No Eligible Service Locations found for the utility.", v101, 2u);
      MEMORY[0x20F32B3A0](v101, -1, -1);
    }

    v102 = sub_20DFCD474(v86);
    v103 = *(v0 + 152);
    v104 = *(v0 + 160);
    v105 = *(v0 + 144);
    v107 = *(v0 + 96);
    v106 = *(v0 + 104);
    v108 = *(v0 + 88);

    sub_20DF67FFC(v105, v103);
    sub_20DFCED98(v85);

    (*(v107 + 8))(v106, v108);
    v85 = v102;
    goto LABEL_63;
  }

  if (!*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_72;
  }

LABEL_62:
  v87 = *(v0 + 152);
  v88 = *(v0 + 160);
  v89 = *(v0 + 144);
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

  sub_20DF67FFC(v89, v87);

  sub_20DFCED98(v90);
LABEL_63:
  v91 = *(v0 + 104);
  v92 = *(v0 + 80);

  v93 = *(v0 + 8);

  return v93(v85);
}

uint64_t sub_20DFCED98(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_20DFCEDD8()
{
  result = qword_27C853028;
  if (!qword_27C853028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853028);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19HomeUtilityServices0B16ServiceLocationsVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_20DFCEE44(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_20DFCEEA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_20DFCEF00()
{
  result = qword_27C853038;
  if (!qword_27C853038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853038);
  }

  return result;
}

unint64_t sub_20DFCEF54()
{
  result = qword_27C853040;
  if (!qword_27C853040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853040);
  }

  return result;
}

uint64_t sub_20DFCEFA8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_20DFCEFEC()
{
  result = qword_27C853050;
  if (!qword_27C853050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853050);
  }

  return result;
}

unint64_t sub_20DFCF054()
{
  result = qword_27C853058;
  if (!qword_27C853058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853058);
  }

  return result;
}

unint64_t sub_20DFCF0AC()
{
  result = qword_27C853060;
  if (!qword_27C853060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853060);
  }

  return result;
}

unint64_t sub_20DFCF104()
{
  result = qword_27C853068;
  if (!qword_27C853068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853068);
  }

  return result;
}

uint64_t sub_20DFCF158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a8;
  v8[6] = v19;
  v8[3] = a4;
  v8[4] = a5;
  v8[2] = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830) - 8) + 64) + 15;
  v8[7] = swift_task_alloc();
  v10 = sub_20E008714();
  v8[8] = v10;
  v11 = *(v10 - 8);
  v8[9] = v11;
  v12 = *(v11 + 64) + 15;
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70) - 8) + 64) + 15;
  v8[12] = swift_task_alloc();
  v14 = sub_20E008AF4();
  v8[13] = v14;
  v15 = *(v14 - 8);
  v8[14] = v15;
  v16 = *(v15 + 64) + 15;
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DFCF30C, 0, 0);
}

uint64_t sub_20DFCF30C()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  sub_20DF85FEC(v0[5], v0[6]);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF66E28(v0[12], &qword_27C8520D0, &qword_20E00AB70);
    if (qword_281123100 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_281124A48);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Request URL for Utility Configuration API not found", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    v8 = v0[15];
    v9 = v0[16];
    v11 = v0[11];
    v10 = v0[12];
    v12 = v0[10];
    v13 = v0[7];
    (*(v0[9] + 56))(v0[2], 1, 1, v0[8]);

    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = v0[15];
    v17 = v0[16];
    v18 = v0[13];
    v19 = v0[14];
    v20 = v0[11];
    v21 = v0[4];
    (*(v19 + 32))(v17, v0[12], v18);
    (*(v19 + 16))(v16, v17, v18);
    sub_20E0086B4();
    sub_20E008694();
    if (v21)
    {
      v22 = v0[4];
      v23 = HIBYTE(v22) & 0xF;
      if ((v22 & 0x2000000000000000) == 0)
      {
        v23 = v0[3] & 0xFFFFFFFFFFFFLL;
      }

      if (v23)
      {
        v24 = v0[11];
        sub_20E0086D4();
      }
    }

    v25 = v0[11];
    sub_20DFDF668(v0[10]);
    v26 = swift_task_alloc();
    v0[17] = v26;
    *v26 = v0;
    v26[1] = sub_20DFCF62C;
    v27 = v0[10];
    v29 = v0[6];
    v28 = v0[7];
    v30 = v0[5];

    return (sub_20DF83234)(v28, v27, v30, v29);
  }
}

uint64_t sub_20DFCF62C()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 136);
  v5 = *v1;

  v6 = v2[10];
  v7 = v2[9];
  v8 = v2[8];
  if (v0)
  {

    v9 = *(v7 + 8);
    v3[20] = v9;
    v9(v6, v8);
    v10 = sub_20DFCFA80;
  }

  else
  {
    v11 = *(v7 + 8);
    v3[18] = v11;
    v3[19] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v6, v8);
    v10 = sub_20DFCF7D0;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_20DFCF7D0()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[18];
    sub_20DF66E28(v3, &qword_27C8520C8, &qword_20E010830);
    if (qword_281123100 != -1)
    {
      swift_once();
    }

    v5 = sub_20E009094();
    __swift_project_value_buffer(v5, qword_281124A48);
    v6 = sub_20E009074();
    v7 = sub_20E009544();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_20DF62000, v6, v7, "Unable to sign Utility Configuration request", v8, 2u);
      MEMORY[0x20F32B3A0](v8, -1, -1);
    }

    v9 = v0[16];
    v10 = v0[13];
    v11 = v0[14];
    v12 = v0[11];
    v13 = v0[8];
    v14 = v0[9];

    v4(v12, v13);
    (*(v11 + 8))(v9, v10);
    v15 = 1;
  }

  else
  {
    v17 = v0[18];
    v16 = v0[19];
    v29 = v0[16];
    v19 = v0[13];
    v18 = v0[14];
    v20 = v0[11];
    (*(v2 + 32))(v0[2], v3, v1);
    sub_20E008704();
    v17(v20, v1);
    (*(v18 + 8))(v29, v19);
    v15 = 0;
  }

  v21 = v0[15];
  v22 = v0[16];
  v24 = v0[11];
  v23 = v0[12];
  v25 = v0[10];
  v26 = v0[7];
  (*(v0[9] + 56))(v0[2], v15, 1, v0[8]);

  v27 = v0[1];

  return v27();
}

uint64_t sub_20DFCFA80()
{
  (*(v0[9] + 56))(v0[7], 1, 1, v0[8]);
  v1 = v0[20];
  sub_20DF66E28(v0[7], &qword_27C8520C8, &qword_20E010830);
  if (qword_281123100 != -1)
  {
    swift_once();
  }

  v2 = sub_20E009094();
  __swift_project_value_buffer(v2, qword_281124A48);
  v3 = sub_20E009074();
  v4 = sub_20E009544();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20DF62000, v3, v4, "Unable to sign Utility Configuration request", v5, 2u);
    MEMORY[0x20F32B3A0](v5, -1, -1);
  }

  v6 = v0[16];
  v7 = v0[13];
  v8 = v0[14];
  v9 = v0[11];
  v10 = v0[8];
  v11 = v0[9];

  v1(v9, v10);
  (*(v8 + 8))(v6, v7);
  v12 = v0[15];
  v13 = v0[16];
  v15 = v0[11];
  v14 = v0[12];
  v16 = v0[10];
  v17 = v0[7];
  (*(v0[9] + 56))(v0[2], 1, 1, v0[8]);

  v18 = v0[1];

  return v18();
}

uint64_t sub_20DFCFC94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[151] = a3;
  v3[150] = a2;
  v3[149] = a1;
  v4 = type metadata accessor for NetworkError();
  v3[152] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[153] = swift_task_alloc();
  v6 = sub_20E008A44();
  v3[154] = v6;
  v7 = *(v6 - 8);
  v3[155] = v7;
  v8 = *(v7 + 64) + 15;
  v3[156] = swift_task_alloc();
  v9 = sub_20E008AF4();
  v3[157] = v9;
  v10 = *(v9 - 8);
  v3[158] = v10;
  v11 = *(v10 + 64) + 15;
  v3[159] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70) - 8) + 64) + 15;
  v3[160] = swift_task_alloc();
  v3[161] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830) - 8) + 64) + 15;
  v3[162] = swift_task_alloc();
  v14 = sub_20E008714();
  v3[163] = v14;
  v15 = *(v14 - 8);
  v3[164] = v15;
  v16 = *(v15 + 64) + 15;
  v3[165] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A58, &qword_20E00F7A0) - 8) + 64) + 15;
  v3[166] = swift_task_alloc();
  v18 = sub_20E008CD4();
  v3[167] = v18;
  v19 = *(v18 - 8);
  v3[168] = v19;
  v20 = *(v19 + 64) + 15;
  v3[169] = swift_task_alloc();
  v3[170] = swift_task_alloc();
  v3[171] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DFCFF6C, 0, 0);
}

uint64_t sub_20DFCFF6C()
{
  v100 = v0;
  if (qword_281123098 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1200);
  v2 = *(v0 + 1192);
  __dst[0] = qword_2811249C0;
  __dst[1] = *algn_2811249C8;

  MEMORY[0x20F32A4B0](v2, v1);
  v3 = sub_20DFF20F8();
  v5 = v4;

  MEMORY[0x20F32A4B0](v3, v5);

  v6 = __dst[1];
  *(v0 + 1376) = __dst[0];
  *(v0 + 1384) = v6;
  v7 = [objc_opt_self() defaultManager];
  v8 = sub_20E0091C4();
  v9 = [v7 fileExistsAtPath_];
  *(v0 + 1480) = v9;

  if (!v9 || (sub_20DFD841C() & 1) == 0)
  {
    if (qword_2811230E0 != -1)
    {
      swift_once();
    }

    v42 = sub_20E009094();
    __swift_project_value_buffer(v42, qword_281124A00);
    v43 = sub_20E009074();
    v44 = sub_20E009544();
    if (!os_log_type_enabled(v43, v44))
    {
      goto LABEL_17;
    }

    v45 = swift_slowAlloc();
    *v45 = 0;
    v46 = "No perviously fetched Config file found on disk. Proceed to fetch new file.";
    goto LABEL_16;
  }

  v10 = *(v0 + 1200);
  sub_20DFD795C(*(v0 + 1192));
  v11 = sub_20E0091C4();

  v12 = sub_20E0091C4();
  v13 = CFPreferencesCopyAppValue(v11, v12);

  v14 = *(v0 + 1344);
  v15 = *(v0 + 1336);
  v16 = *(v0 + 1328);
  if (!v13)
  {
    (*(v14 + 56))(v16, 1, 1, *(v0 + 1336));
    goto LABEL_22;
  }

  *(v0 + 1184) = v13;
  v17 = v16;
  v18 = swift_dynamicCast();
  (*(v14 + 56))(v17, v18 ^ 1u, 1, v15);
  if ((*(v14 + 48))(v17, 1, v15) == 1)
  {
LABEL_22:
    sub_20DF66E28(*(v0 + 1328), &qword_27C852A58, &qword_20E00F7A0);
    goto LABEL_23;
  }

  v19 = *(v0 + 1360);
  v20 = *(v0 + 1344);
  v21 = *(v0 + 1336);
  (*(v20 + 32))(*(v0 + 1368), *(v0 + 1328), v21);
  sub_20E008C94();
  v22 = sub_20E008C44();
  v23 = *(v20 + 8);
  v23(v19, v21);
  if (v22)
  {
    v97 = v23;
    if (qword_2811230E8 != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 1368);
    v25 = *(v0 + 1352);
    v26 = *(v0 + 1344);
    v27 = *(v0 + 1336);
    v28 = sub_20E009094();
    __swift_project_value_buffer(v28, qword_281124A18);
    (*(v26 + 16))(v25, v24, v27);
    v29 = sub_20E009074();
    v30 = sub_20E009554();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 1352);
    v33 = *(v0 + 1336);
    if (v31)
    {
      v34 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      __dst[0] = v93;
      *v34 = 136315138;
      v95 = v28;
      v35 = sub_20DFE2F10();
      v37 = v36;
      v38 = v33;
      v39 = v97;
      v97(v32, v38);
      v40 = v35;
      v28 = v95;
      v41 = sub_20DF74468(v40, v37, __dst);

      *(v34 + 4) = v41;
      _os_log_impl(&dword_20DF62000, v29, v30, "Utility config will expire in %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v93);
      MEMORY[0x20F32B3A0](v93, -1, -1);
      MEMORY[0x20F32B3A0](v34, -1, -1);
    }

    else
    {

      v57 = v33;
      v39 = v97;
      v97(v32, v57);
    }

    v58 = sub_20E009074();
    v59 = sub_20E009554();
    v60 = os_log_type_enabled(v58, v59);
    v61 = *(v0 + 1368);
    v62 = *(v0 + 1336);
    if (v60)
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_20DF62000, v58, v59, "Utility Configuration exists locally and is Valid. Skip Fetching.", v63, 2u);
      MEMORY[0x20F32B3A0](v63, -1, -1);
    }

    v39(v61, v62);
    v64 = *(v0 + 1384);
    v65 = *(v0 + 1376);
    v66 = *(v0 + 1272);
    v67 = *(v0 + 1248);
    v68 = *(v0 + 1240);
    v69 = *(v0 + 1232);
    (*(*(v0 + 1264) + 56))(*(v0 + 1280), 1, 1, *(v0 + 1256));
    (*(v68 + 104))(v67, *MEMORY[0x277CC91D8], v69);
    sub_20E008AD4();
    v70 = sub_20E008B14();
    v72 = v71;
    v73 = sub_20E008744();
    v74 = *(v73 + 48);
    v75 = *(v73 + 52);
    swift_allocObject();
    sub_20E008734();
    sub_20DFD99A0();
    sub_20E008724();

    memcpy(__dst, (v0 + 16), 0x220uLL);
    if (qword_2811230E8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v28, qword_281124A18);
    v76 = sub_20E009074();
    v77 = sub_20E009554();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_20DF62000, v76, v77, "> Utility Config values being returned", v78, 2u);
      MEMORY[0x20F32B3A0](v78, -1, -1);
    }

    v79 = *(v0 + 1368);
    v80 = *(v0 + 1360);
    v88 = *(v0 + 1352);
    v89 = *(v0 + 1328);
    v90 = *(v0 + 1320);
    v91 = *(v0 + 1296);
    v92 = *(v0 + 1288);
    v94 = *(v0 + 1280);
    v81 = *(v0 + 1272);
    v82 = *(v0 + 1264);
    v83 = *(v0 + 1256);
    v96 = *(v0 + 1248);
    v98 = *(v0 + 1224);

    v84 = type metadata accessor for UtilityConfiguration();
    v85 = objc_allocWithZone(v84);
    memcpy(&v85[OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config], __dst, 0x220uLL);
    *(v0 + 1128) = v85;
    *(v0 + 1136) = v84;
    v86 = objc_msgSendSuper2((v0 + 1128), sel_init);
    sub_20DF67FFC(v70, v72);
    (*(v82 + 8))(v81, v83);

    v87 = *(v0 + 8);

    return v87(v86);
  }

  v23(*(v0 + 1368), *(v0 + 1336));
LABEL_23:
  v52 = *(v0 + 1200);
  sub_20DFD7AB8(*(v0 + 1192));
  v53 = sub_20E0091C4();

  v54 = sub_20E0091C4();
  v55 = CFPreferencesCopyAppValue(v53, v54);

  if (v55)
  {
    *(v0 + 1176) = v55;
    if (swift_dynamicCast())
    {
      v47 = *(v0 + 1144);
      v48 = *(v0 + 1152);
      goto LABEL_18;
    }
  }

  if (qword_2811230E8 != -1)
  {
    swift_once();
  }

  v56 = sub_20E009094();
  __swift_project_value_buffer(v56, qword_281124A18);
  v43 = sub_20E009074();
  v44 = sub_20E009544();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    v46 = "Config file exists on disk. But no eTag Value!";
LABEL_16:
    _os_log_impl(&dword_20DF62000, v43, v44, v46, v45, 2u);
    MEMORY[0x20F32B3A0](v45, -1, -1);
  }

LABEL_17:

  v47 = 0;
  v48 = 0;
LABEL_18:
  *(v0 + 1400) = v48;
  *(v0 + 1392) = v47;
  v49 = swift_task_alloc();
  *(v0 + 1408) = v49;
  *v49 = v0;
  v49[1] = sub_20DFD0C6C;
  v50 = *(v0 + 1208);

  return sub_20DF9D6CC(v50);
}

uint64_t sub_20DFD0C6C()
{
  v1 = *(*v0 + 1408);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DFD0D68, 0, 0);
}

uint64_t sub_20DFD0D68()
{
  v1 = v0[150];
  v2 = v0[149];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D8, &unk_20E00FE50);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20E00AB50;
  *(v3 + 32) = 0x497974696C697475;
  *(v3 + 40) = 0xE900000000000064;
  *(v3 + 48) = v2;
  *(v3 + 56) = v1;

  v0[177] = sub_20DF74E1C(v3);
  swift_setDeallocating();
  sub_20DF66E28(v3 + 32, &qword_27C852140, &qword_20E011050);
  swift_deallocClassInstance();
  KeyPath = swift_getKeyPath();
  v0[178] = KeyPath;
  v5 = swift_task_alloc();
  v0[179] = v5;
  *v5 = v0;
  v5[1] = sub_20DFD0EE4;
  v6 = v0[175];
  v7 = v0[174];
  v8 = v0[162];
  v9 = v0[150];
  v10 = v0[149];

  return sub_20DFCF158(v8, v10, v9, v7, v6, 21333, 0xE200000000000000, KeyPath);
}

uint64_t sub_20DFD0EE4()
{
  v1 = *(*v0 + 1432);
  v2 = *(*v0 + 1424);
  v3 = *(*v0 + 1416);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_20DFD1018, 0, 0);
}

uint64_t sub_20DFD1018()
{
  v1 = v0[164];
  v2 = v0[163];
  v3 = v0[162];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = v0[175];
    v5 = v0[173];

    sub_20DF66E28(v3, &qword_27C8520C8, &qword_20E010830);
    if (qword_2811230E0 != -1)
    {
      swift_once();
    }

    v6 = sub_20E009094();
    __swift_project_value_buffer(v6, qword_281124A00);
    v7 = sub_20E009074();
    v8 = sub_20E009544();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_20DF62000, v7, v8, "Unable generate request URL for Utility Configuration Fetch", v9, 2u);
      MEMORY[0x20F32B3A0](v9, -1, -1);
    }

    v10 = v0[152];

    sub_20DF960FC();
    swift_allocError();
    *v11 = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v12 = v0[171];
    v13 = v0[170];
    v14 = v0[169];
    v15 = v0[166];
    v16 = v0[165];
    v17 = v0[162];
    v18 = v0[161];
    v19 = v0[160];
    v20 = v0[159];
    v21 = v0[156];
    v28 = v0[153];

    v22 = v0[1];

    return v22();
  }

  else
  {
    (*(v1 + 32))(v0[165], v3, v2);
    sub_20DFDF8DC(0xD000000000000013, 0x800000020E016F30, 0xD00000000000001ELL, 0x800000020E016F50);
    v24 = *(MEMORY[0x277CC9D18] + 4);
    v25 = swift_task_alloc();
    v0[180] = v25;
    *v25 = v0;
    v25[1] = sub_20DFD134C;
    v26 = v0[165];
    v27 = v0[151];

    return MEMORY[0x28211ECF8](v26, 0);
  }
}

uint64_t sub_20DFD134C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 1440);
  v11 = *v4;
  v5[181] = a1;
  v5[182] = a2;
  v5[183] = a3;
  v5[184] = v3;

  if (v3)
  {
    v7 = v5[175];
    v8 = v5[173];

    v9 = sub_20DFD26E8;
  }

  else
  {
    v9 = sub_20DFD1480;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_20DFD1480()
{
  v168 = v0;
  v1 = *(v0 + 1464);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    v30 = *(v0 + 1400);
    v31 = *(v0 + 1384);

    if (qword_2811230E8 != -1)
    {
      swift_once();
    }

    v32 = sub_20E009094();
    __swift_project_value_buffer(v32, qword_281124A18);
    v33 = sub_20E009074();
    v34 = sub_20E009544();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_20DF62000, v33, v34, "Unable to process Utility Territory Configuration Response.", v35, 2u);
      MEMORY[0x20F32B3A0](v35, -1, -1);
    }

    v27 = *(v0 + 1464);
    v28 = *(v0 + 1456);
    v29 = *(v0 + 1448);
    v36 = *(v0 + 1216);

    sub_20DF960FC();
    v15 = swift_allocError();
    *v37 = 2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_18:

LABEL_45:
    v50 = v29;
    v73 = v28;
    goto LABEL_46;
  }

  v3 = v2;
  v4 = *(v0 + 1320);
  v5 = *(v0 + 1464);
  sub_20DFDFFF8(0xD00000000000001CLL, 0x800000020E016F70, [v3 statusCode], &unk_28252D448);
  v6 = [v3 statusCode];
  if (v6 == 304)
  {
    if (*(v0 + 1480) == 1)
    {
      if (*(v0 + 1400))
      {
        v38 = *(v0 + 1400);

        if (qword_2811230E8 != -1)
        {
          swift_once();
        }

        v39 = sub_20E009094();
        __swift_project_value_buffer(v39, qword_281124A18);
        v40 = sub_20E009074();
        v41 = sub_20E009534();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&dword_20DF62000, v40, v41, "Utility Territory on disk unmodified. Use existing file on disk.", v42, 2u);
          MEMORY[0x20F32B3A0](v42, -1, -1);
        }

        v43 = *(v0 + 1472);
        v44 = *(v0 + 1200);
        v45 = *(v0 + 1192);

        sub_20DFD7BA4(v3, v45);
        v15 = v43;
        v46 = *(v0 + 1464);
        v47 = *(v0 + 1456);
        v48 = *(v0 + 1448);
        if (!v15)
        {
          (*(*(v0 + 1312) + 8))(*(v0 + 1320), *(v0 + 1304));

          sub_20DF67FFC(v48, v47);
LABEL_62:
          v133 = *(v0 + 1384);
          v134 = *(v0 + 1376);
          v135 = *(v0 + 1272);
          v136 = *(v0 + 1248);
          v137 = *(v0 + 1240);
          v138 = *(v0 + 1232);
          (*(*(v0 + 1264) + 56))(*(v0 + 1280), 1, 1, *(v0 + 1256));
          (*(v137 + 104))(v136, *MEMORY[0x277CC91D8], v138);
          sub_20E008AD4();
          v139 = sub_20E008B14();
          v141 = v140;
          v142 = sub_20E008744();
          v143 = *(v142 + 48);
          v144 = *(v142 + 52);
          swift_allocObject();
          sub_20E008734();
          sub_20DFD99A0();
          sub_20E008724();

          memcpy(__src, (v0 + 16), 0x220uLL);
          if (qword_2811230E8 != -1)
          {
            swift_once();
          }

          v145 = sub_20E009094();
          __swift_project_value_buffer(v145, qword_281124A18);
          v146 = sub_20E009074();
          v147 = sub_20E009554();
          if (os_log_type_enabled(v146, v147))
          {
            v148 = swift_slowAlloc();
            *v148 = 0;
            _os_log_impl(&dword_20DF62000, v146, v147, "> Utility Config values being returned", v148, 2u);
            MEMORY[0x20F32B3A0](v148, -1, -1);
          }

          v149 = *(v0 + 1368);
          v150 = *(v0 + 1360);
          v158 = *(v0 + 1352);
          v159 = *(v0 + 1328);
          v160 = *(v0 + 1320);
          v161 = *(v0 + 1296);
          v162 = *(v0 + 1288);
          v163 = *(v0 + 1280);
          v151 = *(v0 + 1272);
          v152 = *(v0 + 1264);
          v153 = *(v0 + 1256);
          v165 = *(v0 + 1248);
          v166 = *(v0 + 1224);

          v154 = type metadata accessor for UtilityConfiguration();
          v155 = objc_allocWithZone(v154);
          memcpy(&v155[OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config], __src, 0x220uLL);
          *(v0 + 1128) = v155;
          *(v0 + 1136) = v154;
          v156 = objc_msgSendSuper2((v0 + 1128), sel_init);
          sub_20DF67FFC(v139, v141);
          (*(v152 + 8))(v151, v153);

          v157 = *(v0 + 8);

          return v157(v156);
        }

        v49 = *(v0 + 1384);

        v50 = v48;
        goto LABEL_36;
      }

      v74 = *(v0 + 1384);
    }

    else
    {
      v68 = *(v0 + 1384);
    }

    if (qword_2811230E8 != -1)
    {
      swift_once();
    }

    v75 = *(v0 + 1464);
    v76 = sub_20E009094();
    __swift_project_value_buffer(v76, qword_281124A18);
    v77 = v75;
    v78 = sub_20E009074();
    v79 = sub_20E009534();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      __src[0] = v81;
      *v80 = 136315138;
      v82 = [v3 allHeaderFields];
      sub_20E009164();

      v83 = sub_20E009174();
      v85 = v84;

      v86 = sub_20DF74468(v83, v85, __src);

      *(v80 + 4) = v86;
      _os_log_impl(&dword_20DF62000, v78, v79, "Headers: %s", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v81);
      MEMORY[0x20F32B3A0](v81, -1, -1);
      MEMORY[0x20F32B3A0](v80, -1, -1);
    }

    v87 = sub_20E009074();
    v88 = sub_20E009534();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_20DF62000, v87, v88, "Server return 304, but inconsistency in stored Config detected!", v89, 2u);
      MEMORY[0x20F32B3A0](v89, -1, -1);
    }

    v90 = *(v0 + 1464);
    v28 = *(v0 + 1456);
    v29 = *(v0 + 1448);
    v91 = *(v0 + 1200);
    v92 = *(v0 + 1192);

    sub_20DFD7F58(v92, v91);
    sub_20DFC1448();
    v15 = swift_allocError();
    *v93 = 1;
    swift_willThrow();

    goto LABEL_45;
  }

  if (v6 == 200)
  {
    v7 = *(v0 + 1400);

    if (qword_2811230E8 != -1)
    {
      swift_once();
    }

    v8 = sub_20E009094();
    __swift_project_value_buffer(v8, qword_281124A18);
    v9 = sub_20E009074();
    v10 = sub_20E009534();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_20DF62000, v9, v10, "New Configuration Fetched", v11, 2u);
      MEMORY[0x20F32B3A0](v11, -1, -1);
    }

    v12 = *(v0 + 1472);
    v13 = *(v0 + 1456);
    v14 = *(v0 + 1448);

    sub_20DFD2C2C(__src);
    v15 = v12;
    if (!v12)
    {
      v16 = *(v0 + 1456);
      v17 = *(v0 + 1448);
      v18 = *(v0 + 1288);
      v19 = *(v0 + 1200);
      v20 = *(v0 + 1192);
      memcpy((v0 + 560), __src, 0x220uLL);
      sub_20DFD99F4(v0 + 560);
      sub_20DFD2EB0(v17, v16, v20, v19, v18);
      v21 = *(v0 + 1200);
      v22 = *(v0 + 1192);
      sub_20DF66E28(*(v0 + 1288), &qword_27C8520D0, &qword_20E00AB70);
      sub_20DFD7BA4(v3, v22);

      v123 = sub_20E009074();
      v124 = sub_20E009554();
      v125 = os_log_type_enabled(v123, v124);
      v126 = *(v0 + 1464);
      v127 = *(v0 + 1456);
      v128 = *(v0 + 1448);
      v129 = *(v0 + 1320);
      v130 = *(v0 + 1312);
      v131 = *(v0 + 1304);
      if (v125)
      {
        v132 = swift_slowAlloc();
        *v132 = 0;
        _os_log_impl(&dword_20DF62000, v123, v124, "New Utility Territory Config saved to disk", v132, 2u);
        MEMORY[0x20F32B3A0](v132, -1, -1);
        sub_20DF67FFC(v128, v127);
      }

      else
      {

        sub_20DF67FFC(v128, v127);
      }

      (*(v130 + 8))(v129, v131);
      goto LABEL_62;
    }

    v23 = *(v0 + 1384);

    v24 = sub_20E009074();
    v25 = sub_20E009544();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_20DF62000, v24, v25, "Unable to decode response from server", v26, 2u);
      MEMORY[0x20F32B3A0](v26, -1, -1);
    }

    v27 = *(v0 + 1464);
    v28 = *(v0 + 1456);
    v29 = *(v0 + 1448);

    swift_willThrow();
    goto LABEL_18;
  }

  v51 = *(v0 + 1400);
  v52 = *(v0 + 1384);

  if (qword_2811230E8 != -1)
  {
    swift_once();
  }

  v53 = sub_20E009094();
  __swift_project_value_buffer(v53, qword_281124A18);
  v54 = sub_20E009074();
  v55 = sub_20E009544();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_20DF62000, v54, v55, "Error while checking for Utility Territory Config", v56, 2u);
    MEMORY[0x20F32B3A0](v56, -1, -1);
  }

  v57 = *(v0 + 1464);

  v58 = v57;
  v59 = [v3 description];
  v60 = sub_20E0091D4();
  v62 = v61;

  v63 = sub_20E009074();
  v64 = sub_20E009544();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    __src[0] = v66;
    *v65 = 136315138;
    v67 = sub_20DF74468(v60, v62, __src);

    *(v65 + 4) = v67;
    _os_log_impl(&dword_20DF62000, v63, v64, "%s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v66);
    MEMORY[0x20F32B3A0](v66, -1, -1);
    MEMORY[0x20F32B3A0](v65, -1, -1);
  }

  else
  {
  }

  v69 = *(v0 + 1464);
  v47 = *(v0 + 1456);
  v70 = *(v0 + 1448);
  v71 = *(v0 + 1216);
  sub_20DF960FC();
  v15 = swift_allocError();
  *v72 = [v3 statusCode];
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v50 = v70;
LABEL_36:
  v73 = v47;
LABEL_46:
  sub_20DF67FFC(v50, v73);
  v94 = v15;
  if (qword_2811230E8 != -1)
  {
    swift_once();
  }

  v95 = sub_20E009094();
  __swift_project_value_buffer(v95, qword_281124A18);
  v96 = v15;
  v97 = sub_20E009074();
  v98 = sub_20E009544();

  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    *v99 = 138412290;
    v101 = v15;
    v102 = _swift_stdlib_bridgeErrorToNSError();
    *(v99 + 4) = v102;
    *v100 = v102;
    _os_log_impl(&dword_20DF62000, v97, v98, "Error while trying to fetch Utility Territory Config from server %@", v99, 0xCu);
    sub_20DF66E28(v100, &qword_27C8521E0, &unk_20E011080);
    MEMORY[0x20F32B3A0](v100, -1, -1);
    MEMORY[0x20F32B3A0](v99, -1, -1);
  }

  v103 = *(v0 + 1224);
  v104 = *(v0 + 1216);

  *(v0 + 1160) = v15;
  v105 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A8, &unk_20E00C130);
  v106 = swift_dynamicCast();
  v107 = *(v0 + 1320);
  v108 = *(v0 + 1312);
  v109 = *(v0 + 1304);
  if (v106)
  {
    v110 = *(v0 + 1224);

    sub_20DFB2F60(v110);
    swift_willThrow();
  }

  else
  {
    sub_20DFFF4B4(v15);
    swift_willThrow();
  }

  (*(v108 + 8))(v107, v109);
  v111 = *(v0 + 1368);
  v112 = *(v0 + 1360);
  v113 = *(v0 + 1352);
  v114 = *(v0 + 1328);
  v115 = *(v0 + 1320);
  v116 = *(v0 + 1296);
  v117 = *(v0 + 1288);
  v118 = *(v0 + 1280);
  v119 = *(v0 + 1272);
  v120 = *(v0 + 1248);
  v164 = *(v0 + 1224);

  v121 = *(v0 + 8);

  return v121();
}

uint64_t sub_20DFD26E8()
{
  v1 = v0[184];
  v2 = v1;
  if (qword_2811230E8 != -1)
  {
    swift_once();
  }

  v3 = sub_20E009094();
  __swift_project_value_buffer(v3, qword_281124A18);
  v4 = v1;
  v5 = sub_20E009074();
  v6 = sub_20E009544();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20DF62000, v5, v6, "Error while trying to fetch Utility Territory Config from server %@", v7, 0xCu);
    sub_20DF66E28(v8, &qword_27C8521E0, &unk_20E011080);
    MEMORY[0x20F32B3A0](v8, -1, -1);
    MEMORY[0x20F32B3A0](v7, -1, -1);
  }

  v11 = v0[153];
  v12 = v0[152];

  v0[145] = v1;
  v13 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A8, &unk_20E00C130);
  v14 = swift_dynamicCast();
  v15 = v0[165];
  v16 = v0[164];
  v17 = v0[163];
  if (v14)
  {
    v18 = v0[153];

    sub_20DFB2F60(v18);
    swift_willThrow();
  }

  else
  {
    sub_20DFFF4B4(v1);
    swift_willThrow();
  }

  (*(v16 + 8))(v15, v17);
  v19 = v0[171];
  v20 = v0[170];
  v21 = v0[169];
  v22 = v0[166];
  v23 = v0[165];
  v24 = v0[162];
  v25 = v0[161];
  v26 = v0[160];
  v27 = v0[159];
  v30 = v0[156];
  v31 = v0[153];

  v28 = v0[1];

  return v28();
}

void sub_20DFD29C0()
{
  v1 = sub_20E008744();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_20E008734();
  sub_20DFC149C();
  sub_20E008724();
  if (v0)
  {

    v4 = sub_20DFFE0B0(v0);
    if (qword_2811230E8 != -1)
    {
      swift_once();
    }

    v5 = sub_20E009094();
    __swift_project_value_buffer(v5, qword_281124A18);
    v6 = sub_20E009074();
    v7 = sub_20E009544();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_20DF62000, v6, v7, "Error while decoding response.", v8, 2u);
      MEMORY[0x20F32B3A0](v8, -1, -1);
    }

    v9 = v4;
    v10 = sub_20E009074();
    v11 = sub_20E009544();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = sub_20E0099E4();
      v16 = sub_20DF74468(v14, v15, &v17);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_20DF62000, v10, v11, "%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x20F32B3A0](v13, -1, -1);
      MEMORY[0x20F32B3A0](v12, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
  }
}

void sub_20DFD2C2C(void *a1@<X8>)
{
  v3 = sub_20E008744();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_20E008734();
  sub_20DFD99A0();
  sub_20E008724();
  if (v1)
  {

    v6 = sub_20DFFE0B0(v1);
    if (qword_2811230E8 != -1)
    {
      swift_once();
    }

    v7 = sub_20E009094();
    __swift_project_value_buffer(v7, qword_281124A18);
    v8 = sub_20E009074();
    v9 = sub_20E009544();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20DF62000, v8, v9, "Error while decoding response.", v10, 2u);
      MEMORY[0x20F32B3A0](v10, -1, -1);
    }

    v11 = v6;
    v12 = sub_20E009074();
    v13 = sub_20E009544();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      __src[0] = v15;
      *v14 = 136315138;
      swift_getErrorValue();
      v16 = sub_20E0099E4();
      v18 = sub_20DF74468(v16, v17, __src);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_20DF62000, v12, v13, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x20F32B3A0](v15, -1, -1);
      MEMORY[0x20F32B3A0](v14, -1, -1);
    }

    swift_willThrow();
  }

  else
  {

    memcpy(a1, __src, 0x220uLL);
  }
}

uint64_t sub_20DFD2EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v84 = a1;
  v85 = a2;
  v74 = a5;
  v95 = *MEMORY[0x277D85DE8];
  v90 = sub_20E008A44();
  v7 = *(v90 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v90);
  v83 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v73 - v12;
  v14 = sub_20E008AF4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v78 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v73 - v19;
  if (qword_281123098 != -1)
  {
    swift_once();
  }

  v21 = *algn_2811249C8;
  v89 = qword_2811249C0;
  v93 = qword_2811249C0;
  v94 = *algn_2811249C8;

  MEMORY[0x20F32A4B0](a3, a4);
  v22 = v93;
  v23 = v94;
  v24 = sub_20DFF20F8();
  v26 = v25;
  v93 = v22;
  v94 = v23;

  MEMORY[0x20F32A4B0](v24, v26);

  v27 = v93;
  v87 = v15;
  v81 = *(v15 + 56);
  v82 = v15 + 56;
  v81(v13, 1, 1, v14);
  v28 = *(v7 + 104);
  v29 = v83;
  v76 = *MEMORY[0x277CC91D8];
  v75 = v28;
  v28(v83);

  v86 = v20;
  v91 = v27;
  v79 = v13;
  sub_20E008AD4();
  v30 = [objc_opt_self() defaultManager];
  v92 = 1;
  v77 = v21;
  v31 = sub_20E0091C4();
  v32 = v30;
  LOBYTE(v27) = [v30 fileExistsAtPath:v31 isDirectory:&v92];

  v88 = v14;
  if (v27)
  {
    v33 = v87;
LABEL_11:
    v42 = v86;
    v43 = v80;
    goto LABEL_13;
  }

  if (qword_2811230E0 != -1)
  {
    swift_once();
  }

  v34 = sub_20E009094();
  __swift_project_value_buffer(v34, qword_281124A00);
  v35 = sub_20E009074();
  v36 = sub_20E009554();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_20DF62000, v35, v36, "Creating folder to save config.", v37, 2u);
    v14 = v88;
    MEMORY[0x20F32B3A0](v37, -1, -1);
  }

  v81(v79, 1, 1, v14);
  v75(v29, v76, v90);

  v38 = v78;
  sub_20E008AD4();
  v39 = sub_20E008A64();
  v33 = v87;
  (*(v87 + 8))(v38, v14);
  v93 = 0;
  v40 = [v30 createDirectoryAtURL:v39 withIntermediateDirectories:1 attributes:0 error:&v93];

  if (v40)
  {
    v41 = v93;
    goto LABEL_11;
  }

  v44 = v93;
  v45 = sub_20E008A34();

  swift_willThrow();
  v43 = 0;
  v42 = v86;
LABEL_13:
  v46 = sub_20E0091C4();
  v47 = [v30 fileExistsAtPath_];

  if (v47)
  {
    if (qword_2811230E8 != -1)
    {
      swift_once();
    }

    v48 = sub_20E009094();
    __swift_project_value_buffer(v48, qword_281124A18);
    v49 = sub_20E009074();
    v50 = sub_20E009554();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_20DF62000, v49, v50, "Removing existing file from disk", v51, 2u);
      MEMORY[0x20F32B3A0](v51, -1, -1);
    }

    v52 = sub_20E0091C4();

    v93 = 0;
    v53 = [v30 removeItemAtPath:v52 error:&v93];

    if (v53)
    {
      v54 = v93;
    }

    else
    {
      v55 = v93;
      v56 = sub_20E008A34();

      swift_willThrow();
      v43 = 0;
    }
  }

  else
  {
  }

  sub_20E008B94();
  if (v43)
  {
    if (qword_2811230E8 != -1)
    {
      swift_once();
    }

    v57 = sub_20E009094();
    __swift_project_value_buffer(v57, qword_281124A18);
    v58 = v43;
    v59 = sub_20E009074();
    v60 = sub_20E009544();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v61 = 138412290;
      v63 = v43;
      v64 = _swift_stdlib_bridgeErrorToNSError();
      *(v61 + 4) = v64;
      *v62 = v64;
      _os_log_impl(&dword_20DF62000, v59, v60, "Error while trying to write config to disk. %@", v61, 0xCu);
      sub_20DF66E28(v62, &qword_27C8521E0, &unk_20E011080);
      MEMORY[0x20F32B3A0](v62, -1, -1);
      MEMORY[0x20F32B3A0](v61, -1, -1);
    }

    swift_willThrow();
    result = (*(v33 + 8))(v42, v88);
  }

  else
  {
    if (qword_2811230E8 != -1)
    {
      swift_once();
    }

    v66 = sub_20E009094();
    __swift_project_value_buffer(v66, qword_281124A18);
    v67 = sub_20E009074();
    v68 = sub_20E009554();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_20DF62000, v67, v68, "Successfully wrote config to disk", v69, 2u);
      MEMORY[0x20F32B3A0](v69, -1, -1);
    }

    v70 = v74;
    v71 = v88;
    (*(v33 + 32))(v74, v42, v88);
    result = (v81)(v70, 0, 1, v71);
  }

  v72 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_20DFD37B4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853230, &qword_20E011828);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12[-v7 - 8];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFDDB84();
  sub_20E009A84();
  memcpy(v13, v2, sizeof(v13));
  sub_20DFDDBD8(v2, v12);
  sub_20DF75378();
  sub_20E009944();
  memcpy(v12, v13, sizeof(v12));
  sub_20DF753CC(v12);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_20DFD3954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7974696C697475 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20E009984();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20DFD39DC(uint64_t a1)
{
  v2 = sub_20DFDDB84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFD3A18(uint64_t a1)
{
  v2 = sub_20DFDDB84();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_20DFD3A54@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_20DFD889C(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x220uLL);
  }

  return result;
}

uint64_t sub_20DFD3AF4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853070, &qword_20E011028);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v48 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFD5B60();
  sub_20E009A84();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v73) = 0;
  sub_20E009914();
  if (!v2)
  {
    v73 = *(v3 + 1);
    LOBYTE(v70[0]) = 1;
    sub_20DFD5BB4();
    sub_20E009944();
    v13 = *(v3 + 11);
    v14 = *(v3 + 13);
    v104 = *(v3 + 12);
    v105[0] = v14;
    *(v105 + 10) = *(v3 + 218);
    v15 = *(v3 + 7);
    v16 = *(v3 + 9);
    v100 = *(v3 + 8);
    v101 = v16;
    v18 = *(v3 + 9);
    v17 = *(v3 + 10);
    v19 = v17;
    v103 = *(v3 + 11);
    v102 = v17;
    v20 = *(v3 + 3);
    v21 = *(v3 + 5);
    v96 = *(v3 + 4);
    v97 = v21;
    v23 = *(v3 + 5);
    v22 = *(v3 + 6);
    v24 = v22;
    v99 = *(v3 + 7);
    v98 = v22;
    v25 = *(v3 + 2);
    v26 = v25;
    v95[1] = *(v3 + 3);
    v95[0] = v25;
    v27 = *(v3 + 13);
    v83 = v104;
    v84[0] = v27;
    *(v84 + 10) = *(v3 + 218);
    v79 = v100;
    v80 = v18;
    v81 = v19;
    v82 = v13;
    v75 = v96;
    v76 = v23;
    v77 = v24;
    v78 = v15;
    v73 = v26;
    v74 = v20;
    v72 = 2;
    sub_20DFD5C08(v95, v70);
    sub_20DFD5C40();
    sub_20E009944();
    v70[10] = v83;
    *v71 = v84[0];
    *&v71[10] = *(v84 + 10);
    v70[6] = v79;
    v70[7] = v80;
    v70[8] = v81;
    v70[9] = v82;
    v70[2] = v75;
    v70[3] = v76;
    v70[4] = v77;
    v70[5] = v78;
    v70[0] = v73;
    v70[1] = v74;
    sub_20DFD5C94(v70);
    *&v58 = v3[30];
    LOBYTE(v56[0]) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853090, &qword_20E011030);
    sub_20DFD5CC4();
    sub_20E009904();
    v28 = *(v3 + 49);
    v29 = *(v3 + 45);
    v91 = *(v3 + 47);
    v92 = v28;
    v30 = *(v3 + 49);
    v31 = *(v3 + 53);
    v93 = *(v3 + 51);
    v94 = v31;
    v32 = *(v3 + 41);
    v33 = *(v3 + 37);
    v87 = *(v3 + 39);
    v88 = v32;
    v34 = *(v3 + 41);
    v35 = *(v3 + 45);
    v89 = *(v3 + 43);
    v90 = v35;
    v36 = *(v3 + 33);
    v37 = *(v3 + 35);
    v86[0] = *(v3 + 31);
    v86[1] = v36;
    v38 = *(v3 + 33);
    v39 = *(v3 + 37);
    v86[2] = *(v3 + 35);
    v86[3] = v39;
    v66 = v91;
    v67 = v30;
    v40 = *(v3 + 53);
    v68 = v93;
    v69 = v40;
    v62 = v87;
    v63 = v34;
    v64 = v89;
    v65 = v29;
    v58 = *(v3 + 31);
    v59 = v38;
    v60 = v37;
    v61 = v33;
    v57 = 4;
    sub_20DFD5D9C(v86, v56);
    sub_20DFD5DD4();
    sub_20E009944();
    v56[8] = v66;
    v56[9] = v67;
    v56[10] = v68;
    v56[11] = v69;
    v56[4] = v62;
    v56[5] = v63;
    v56[6] = v64;
    v56[7] = v65;
    v56[0] = v58;
    v56[1] = v59;
    v56[2] = v60;
    v56[3] = v61;
    sub_20DFD5E28(v56);
    v41 = *(v3 + 57);
    v85[0] = *(v3 + 55);
    v85[1] = v41;
    v42 = *(v3 + 61);
    v44 = *(v3 + 55);
    v43 = *(v3 + 57);
    v85[2] = *(v3 + 59);
    v85[3] = v42;
    v52 = v44;
    v53 = v43;
    v45 = *(v3 + 61);
    v54 = *(v3 + 59);
    v55 = v45;
    v51 = 5;
    sub_20DFD5E58(v85, v50);
    sub_20DFD5E90();
    sub_20E009944();
    v50[0] = v52;
    v50[1] = v53;
    v50[2] = v54;
    v50[3] = v55;
    sub_20DFD5EE4(v50);
    *&v48[0] = v3[63];
    v49 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8530B8, &qword_20E011038);
    sub_20DFD5F14();
    sub_20E009944();
    v46 = *(v3 + 33);
    v48[0] = *(v3 + 32);
    v48[1] = v46;
    v49 = 7;
    sub_20DFD5FEC();
    sub_20E009944();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_20DFD4134(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853158, &qword_20E0117B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFD9FC0();
  sub_20E009A84();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v34) = 0;
  sub_20E009914();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v34) = 1;
    sub_20E009914();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v34) = 2;
    sub_20E009914();
    v17 = *(v3 + 4);
    v34 = *(v3 + 3);
    v35 = v17;
    LOBYTE(v32[0]) = 3;
    sub_20DFDA014();
    sub_20E009944();
    v18 = *(v3 + 7);
    v19 = *(v3 + 9);
    v43 = *(v3 + 8);
    v44 = v19;
    v20 = *(v3 + 9);
    v45 = *(v3 + 10);
    v21 = *(v3 + 5);
    v22 = *(v3 + 7);
    v41 = *(v3 + 6);
    v42 = v22;
    v23 = *(v3 + 5);
    v37 = v43;
    v38 = v20;
    v39 = *(v3 + 10);
    v40 = v23;
    v34 = v21;
    v35 = v41;
    v36 = v18;
    v33 = 4;
    sub_20DFDA068(&v40, v32);
    sub_20DFDA0A0();
    sub_20E009944();
    v32[2] = v36;
    v32[3] = v37;
    v32[4] = v38;
    v32[5] = v39;
    v32[0] = v34;
    v32[1] = v35;
    sub_20DFDA0F4(v32);
    v24 = v3[22];
    v25 = *(v3 + 184);
    v31 = 5;
    sub_20E0098F4();
    v26 = v3[24];
    v27 = *(v3 + 200);
    v31 = 6;
    sub_20E0098F4();
    v28 = *(v3 + 201);
    v31 = 7;
    sub_20E0098E4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_20DFD446C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a5;
  v14[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8532F8, &qword_20E0122A8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFDE6FC();
  sub_20E009A84();
  v17 = 0;
  sub_20E009914();
  if (v5)
  {
    return (*(v8 + 8))(v11, v7);
  }

  v16 = 1;
  sub_20E009934();
  v15 = 2;
  sub_20E009934();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_20DFD4620(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853308, &qword_20E0122B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFDE750();
  sub_20E009A84();
  v11 = *v3;
  LOBYTE(v19) = 0;
  sub_20E009924();
  if (!v2)
  {
    v12 = *(v3 + 1);
    v13 = *(v3 + 2);
    LOBYTE(v19) = 1;
    sub_20E009914();
    v14 = *(v3 + 3);
    v15 = *(v3 + 4);
    LOBYTE(v19) = 2;
    sub_20E009914();
    *&v19 = *(v3 + 5);
    v21 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853318, &qword_20E0122B8);
    sub_20DFDE7A4();
    sub_20E009944();
    *&v19 = *(v3 + 6);
    v21 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853330, &qword_20E0122C0);
    sub_20DFDE87C();
    sub_20E009904();
    v19 = *(v3 + 56);
    v20 = *(v3 + 9);
    v21 = 5;
    sub_20DFDE954();
    sub_20E009944();
    v16 = *(v3 + 10);
    v17 = *(v3 + 11);
    LOBYTE(v19) = 6;
    sub_20E009914();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_20DFD48F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8533F8, &unk_20E0127E8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFDF0AC();
  sub_20E009A84();
  v15 = 0;
  sub_20E009914();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852460, &qword_20E00B2C0);
    sub_20DF756D4(&qword_2811230A8);
    sub_20E009944();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_20DFD4AB8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 1701869940;
    v7 = 0x79654B6D726F66;
    v8 = 0x74786554746E6968;
    if (a1 != 3)
    {
      v8 = 0x746E6F4374786574;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6C6562616CLL;
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
    v1 = 0xD000000000000011;
    v2 = 0x7865676572;
    if (a1 != 9)
    {
      v2 = 0x6465726975716572;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6472616F6279656BLL;
    v4 = 0x6572756365537369;
    if (a1 != 6)
    {
      v4 = 0xD000000000000011;
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

uint64_t sub_20DFD4C1C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8533E8, &qword_20E0127E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFDF058();
  sub_20E009A84();
  v11 = *v3;
  v12 = v3[1];
  v30[15] = 0;
  sub_20E009914();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v30[14] = 1;
    sub_20E009914();
    v15 = v3[4];
    v16 = v3[5];
    v30[13] = 2;
    sub_20E009914();
    v17 = v3[6];
    v18 = v3[7];
    v30[12] = 3;
    sub_20E0098D4();
    v19 = v3[8];
    v20 = v3[9];
    v30[11] = 4;
    sub_20E009914();
    v21 = v3[10];
    v22 = v3[11];
    v30[10] = 5;
    sub_20E009914();
    v23 = *(v3 + 96);
    v30[9] = 6;
    sub_20E009924();
    v24 = v3[13];
    v30[8] = 7;
    sub_20E009934();
    v25 = v3[14];
    v30[7] = 8;
    sub_20E009934();
    v26 = v3[15];
    v27 = v3[16];
    v30[6] = 9;
    sub_20E009914();
    v28 = *(v3 + 136);
    v30[5] = 10;
    sub_20E0098E4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_20DFD4EC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853408, &qword_20E0127F8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFDF100();
  sub_20E009A84();
  v15 = 0;
  sub_20E009934();
  if (!v4)
  {
    v14 = 1;
    sub_20E009914();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_20DFD5058(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853188, &qword_20E0117C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFDA178();
  sub_20E009A84();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v32) = 0;
  sub_20E009914();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v32) = 1;
    sub_20E009914();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v32) = 2;
    sub_20E009914();
    v17 = v3[6];
    v18 = v3[7];
    LOBYTE(v32) = 3;
    sub_20E0098D4();
    v19 = *(v3 + 8);
    v20 = *(v3 + 6);
    v42 = *(v3 + 7);
    v43 = v19;
    v21 = *(v3 + 8);
    v22 = *(v3 + 10);
    v44 = *(v3 + 9);
    v45 = v22;
    v23 = *(v3 + 4);
    v24 = *(v3 + 6);
    v40 = *(v3 + 5);
    v41 = v24;
    v25 = *(v3 + 4);
    v36 = v21;
    v37 = v44;
    v38 = *(v3 + 10);
    v39 = v25;
    v32 = v23;
    v33 = v40;
    v34 = v20;
    v35 = v42;
    v31 = 4;
    sub_20DFDA1CC(&v39, v30);
    sub_20DFDA204();
    sub_20E009944();
    v30[4] = v36;
    v30[5] = v37;
    v30[6] = v38;
    v30[0] = v32;
    v30[1] = v33;
    v30[2] = v34;
    v30[3] = v35;
    sub_20DFDA258(v30);
    v26 = v3[22];
    v27 = v3[23];
    v29[15] = 5;
    sub_20E009914();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_20DFD5330(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853350, &qword_20E0122C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFDE9A8();
  sub_20E009A84();
  v11 = *v3;
  v12 = v3[1];
  v26[15] = 0;
  sub_20E009914();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v26[14] = 1;
  sub_20E009914();
  v15 = v3[4];
  v16 = v3[5];
  v26[13] = 2;
  sub_20E009914();
  v17 = v3[6];
  v18 = v3[7];
  v26[12] = 3;
  sub_20E009914();
  v19 = v3[8];
  v20 = v3[9];
  v26[11] = 4;
  sub_20E009914();
  v21 = v3[10];
  v22 = v3[11];
  v26[10] = 5;
  sub_20E009914();
  v24 = v3[12];
  v25 = v3[13];
  v26[9] = 6;
  sub_20E009914();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_20DFD5594(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v24 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_20E009A84();
  v14 = *v6;
  v15 = v6[1];
  v28 = 0;
  v16 = v24[1];
  sub_20E009914();
  if (v16)
  {
    return (*(v9 + 8))(v12, v8);
  }

  v17 = v6[2];
  v18 = v6[3];
  v27 = 1;
  sub_20E009914();
  v19 = v6[4];
  v20 = v6[5];
  v26 = 2;
  sub_20E009914();
  v22 = v6[6];
  v23 = v6[7];
  v25 = 3;
  sub_20E009914();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_20DFD57AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, void (*a8)(void *, uint64_t, uint64_t))
{
  v21[2] = a3;
  v21[0] = a4;
  v21[1] = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v21 - v13;
  v15 = a1[4];
  v16 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a8(v16, v17, v18);
  sub_20E009A84();
  v23 = 0;
  v19 = v21[3];
  sub_20E009914();
  if (!v19)
  {
    v22 = 1;
    sub_20E009914();
  }

  return (*(v11 + 8))(v14, v10);
}

unint64_t sub_20DFD593C()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0xD000000000000010;
  if (v1 != 6)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0x617A696E6167726FLL;
  if (v1 != 4)
  {
    v4 = 0x74726F70707573;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6D6E6F7269766E65;
  if (v1 != 2)
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = 0x6B726F77747261;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_20DFD5A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20DFD8A50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20DFD5A84(uint64_t a1)
{
  v2 = sub_20DFD5B60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFD5AC0(uint64_t a1)
{
  v2 = sub_20DFD5B60();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_20DFD5AFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_20DFD8D00(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x220uLL);
  }

  return result;
}

unint64_t sub_20DFD5B60()
{
  result = qword_27C853078;
  if (!qword_27C853078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853078);
  }

  return result;
}

unint64_t sub_20DFD5BB4()
{
  result = qword_27C853080;
  if (!qword_27C853080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853080);
  }

  return result;
}

unint64_t sub_20DFD5C40()
{
  result = qword_27C853088;
  if (!qword_27C853088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853088);
  }

  return result;
}

unint64_t sub_20DFD5CC4()
{
  result = qword_27C853098;
  if (!qword_27C853098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C853090, &qword_20E011030);
    sub_20DFD5D48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853098);
  }

  return result;
}

unint64_t sub_20DFD5D48()
{
  result = qword_27C8530A0;
  if (!qword_27C8530A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8530A0);
  }

  return result;
}

unint64_t sub_20DFD5DD4()
{
  result = qword_27C8530A8;
  if (!qword_27C8530A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8530A8);
  }

  return result;
}

unint64_t sub_20DFD5E90()
{
  result = qword_27C8530B0;
  if (!qword_27C8530B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8530B0);
  }

  return result;
}

unint64_t sub_20DFD5F14()
{
  result = qword_27C8530C0;
  if (!qword_27C8530C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8530B8, &qword_20E011038);
    sub_20DFD5F98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8530C0);
  }

  return result;
}

unint64_t sub_20DFD5F98()
{
  result = qword_27C8530C8;
  if (!qword_27C8530C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8530C8);
  }

  return result;
}

unint64_t sub_20DFD5FEC()
{
  result = qword_27C8530D0;
  if (!qword_27C8530D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8530D0);
  }

  return result;
}

uint64_t sub_20DFD6040()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 1701080931;
  }
}

uint64_t sub_20DFD6064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v5 || (sub_20E009984() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20E009984();

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

uint64_t sub_20DFD6140(uint64_t a1)
{
  v2 = sub_20DFDA124();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFD617C(uint64_t a1)
{
  v2 = sub_20DFDA124();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_20DFD6254()
{
  v1 = 1701667182;
  v2 = 0x6D726F6674616C70;
  if (*v0 != 2)
  {
    v2 = 0x6B726F77747261;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20DFD62CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20DFDA384(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20DFD62F4(uint64_t a1)
{
  v2 = sub_20DFDA2DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFD6330(uint64_t a1)
{
  v2 = sub_20DFDA2DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DFD6398(uint64_t a1)
{
  v2 = sub_20DFD9F6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFD63D4(uint64_t a1)
{
  v2 = sub_20DFD9F6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DFD6410@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8531D0, &qword_20E0117E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFD9F6C();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v11 = sub_20E009894();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_20DFD658C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853148, &qword_20E0117B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFD9F6C();
  sub_20E009A84();
  sub_20E009914();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_20DFD66C8()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD00000000000001ALL;
    if (v1 != 6)
    {
      v5 = 0xD000000000000017;
    }

    v6 = 0xD000000000000019;
    if (v1 == 4)
    {
      v6 = 0x616F626E4F666174;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x696669746E656469;
    v3 = 0x6966697373616C63;
    if (v1 != 2)
    {
      v3 = 0xD000000000000012;
    }

    if (*v0)
    {
      v2 = 1701667182;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_20DFD67E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20DFDA7E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20DFD6810(uint64_t a1)
{
  v2 = sub_20DFD9FC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFD684C(uint64_t a1)
{
  v2 = sub_20DFD9FC0();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_20DFD6888@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_20DFDAA94(a1, v10);
  if (!v2)
  {
    v5 = v11[0];
    *(a2 + 160) = v10[10];
    *(a2 + 176) = v5;
    *(a2 + 186) = *(v11 + 10);
    v6 = v10[7];
    *(a2 + 96) = v10[6];
    *(a2 + 112) = v6;
    v7 = v10[9];
    *(a2 + 128) = v10[8];
    *(a2 + 144) = v7;
    v8 = v10[3];
    *(a2 + 32) = v10[2];
    *(a2 + 48) = v8;
    v9 = v10[5];
    *(a2 + 64) = v10[4];
    *(a2 + 80) = v9;
    result = v10[1];
    *a2 = v10[0];
    *(a2 + 16) = result;
  }

  return result;
}

unint64_t sub_20DFD690C()
{
  v1 = 0xD000000000000013;
  v2 = *v0;
  if (v2 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000015;
  }

  *v0;
  return result;
}

uint64_t sub_20DFD6960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20DFDB0D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20DFD6988(uint64_t a1)
{
  v2 = sub_20DFDE6FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFD69C4(uint64_t a1)
{
  v2 = sub_20DFDE6FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DFD6A00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_20DFDB1F4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_20DFD6A50()
{
  v1 = *v0;
  v2 = 0x64656C62616E65;
  v3 = 0x65706F725070746FLL;
  if (v1 != 5)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0x73646C656966;
  if (v1 != 3)
  {
    v4 = 0x736E6F6974636573;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000015;
  if (v1 != 1)
  {
    v5 = 0x6449746E65696C63;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_20DFD6B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20DFDB3FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20DFD6B60(uint64_t a1)
{
  v2 = sub_20DFDE750();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFD6B9C(uint64_t a1)
{
  v2 = sub_20DFDE750();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_20DFD6BD8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_20DFDB654(a1, v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_20DFD6C3C(uint64_t a1)
{
  v2 = sub_20DFDF0AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFD6C78(uint64_t a1)
{
  v2 = sub_20DFDF0AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DFD6CB4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_20DFDBBD0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_20DFD6D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20DFDBDF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20DFD6D40(uint64_t a1)
{
  v2 = sub_20DFDF058();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFD6D7C(uint64_t a1)
{
  v2 = sub_20DFDF058();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_20DFD6DB8@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_20DFDC184(a1, v8);
  if (!v2)
  {
    v5 = v9[0];
    *(a2 + 96) = v8[6];
    *(a2 + 112) = v5;
    *(a2 + 121) = *(v9 + 9);
    v6 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v6;
    v7 = v8[5];
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v7;
    result = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_20DFD6E2C()
{
  if (*v0)
  {
    result = 0x6472616F6279656BLL;
  }

  else
  {
    result = 0x6874676E656CLL;
  }

  *v0;
  return result;
}

uint64_t sub_20DFD6E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6874676E656CLL && a2 == 0xE600000000000000;
  if (v6 || (sub_20E009984() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6472616F6279656BLL && a2 == 0xEC00000065707954)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20E009984();

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

uint64_t sub_20DFD6F48(uint64_t a1)
{
  v2 = sub_20DFDF100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFD6F84(uint64_t a1)
{
  v2 = sub_20DFDF100();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DFD6FC0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_20DFDC7C8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_20DFD7010()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x6D614E74726F6873;
  v4 = 0x73736572646461;
  if (v1 != 4)
  {
    v4 = 0x746E656449616965;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6D754E656E6F6870;
  if (v1 != 1)
  {
    v5 = 0x65746973626577;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_20DFD70DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20DFDC974(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20DFD7104(uint64_t a1)
{
  v2 = sub_20DFDA178();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFD7140(uint64_t a1)
{
  v2 = sub_20DFDA178();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_20DFD717C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_20DFDCB84(a1, v11);
  if (!v2)
  {
    v5 = v19;
    a2[8] = v18;
    a2[9] = v5;
    v6 = v21;
    a2[10] = v20;
    a2[11] = v6;
    v7 = v15;
    a2[4] = v14;
    a2[5] = v7;
    v8 = v17;
    a2[6] = v16;
    a2[7] = v8;
    v9 = v11[1];
    *a2 = v11[0];
    a2[1] = v9;
    result = *&v12;
    v10 = v13;
    a2[2] = v12;
    a2[3] = v10;
  }

  return result;
}

uint64_t sub_20DFD71F8(uint64_t a1)
{
  v2 = sub_20DFDE9A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFD7234(uint64_t a1)
{
  v2 = sub_20DFDE9A8();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_20DFD7270@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_20DFDD07C(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v7[6];
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_20DFD72E8()
{
  v1 = *v0;
  sub_20E009A34();
  sub_20E009194();

  return sub_20E009A54();
}

uint64_t sub_20DFD7398()
{
  *v0;
  *v0;
  *v0;
  sub_20E009194();
}

uint64_t sub_20DFD7434()
{
  v1 = *v0;
  sub_20E009A34();
  sub_20E009194();

  return sub_20E009A54();
}

uint64_t sub_20DFD74E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_20DFDD5EC();
  *a2 = result;
  return result;
}

void sub_20DFD7510(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000014;
  v3 = "tionToken";
  v4 = "customerServiceEmail";
  v5 = 0xD000000000000012;
  if (*v1 != 2)
  {
    v5 = 0xD00000000000001BLL;
    v4 = "customerServiceSms";
  }

  if (*v1)
  {
    v3 = "customerServicePhone";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

unint64_t sub_20DFD7580()
{
  v1 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v1 = 0xD00000000000001BLL;
  }

  *v0;
  if (*v0 <= 1u)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = v1;
  }

  *v0;
  return result;
}

uint64_t sub_20DFD75EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20DFDD5EC();
  *a1 = result;
  return result;
}

uint64_t sub_20DFD7614(uint64_t a1)
{
  v2 = sub_20DFDA288();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFD7650(uint64_t a1)
{
  v2 = sub_20DFDA288();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_20DFD76B8@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, _OWORD *a2@<X8>)
{
  a1(v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_20DFD7700()
{
  if (*v0)
  {
    result = 6910581;
  }

  else
  {
    result = 1954047348;
  }

  *v0;
  return result;
}

uint64_t sub_20DFD772C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v5 || (sub_20E009984() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6910581 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20E009984();

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

uint64_t sub_20DFD7808(uint64_t a1)
{
  v2 = sub_20DFDA330();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFD7844(uint64_t a1)
{
  v2 = sub_20DFDA330();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DFD78C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t *a5@<X8>)
{
  result = sub_20DFDD994(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
    a5[2] = v9;
    a5[3] = v10;
  }

  return result;
}

uint64_t sub_20DFD795C(uint64_t a1)
{
  v2 = sub_20DFE7E38();
  v3 = 0xEA00000000006C61;
  v4 = 0x6E7265746E496171;
  v5 = 1953654115;
  if (v2 != 2)
  {
    v5 = 1685025392;
  }

  if (v2)
  {
    v4 = 7759204;
    v3 = 0xE300000000000000;
  }

  if (v2 <= 1)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  if (v2 <= 1)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = sub_20DFF20F8();
  v10 = v9;
  sub_20E009714();

  MEMORY[0x20F32A4B0](46, 0xE100000000000000);
  MEMORY[0x20F32A4B0](v6, v7);

  MEMORY[0x20F32A4B0](46, 0xE100000000000000);
  MEMORY[0x20F32A4B0](v8, v10);

  MEMORY[0x20F32A4B0](0x6E5564696C61762ELL, 0xEB000000006C6974);
  return a1;
}

uint64_t sub_20DFD7AB8(uint64_t a1)
{
  v2 = sub_20DFE7E38();
  v3 = 0xEA00000000006C61;
  v4 = 0x6E7265746E496171;
  v5 = 1953654115;
  if (v2 != 2)
  {
    v5 = 1685025392;
  }

  if (v2)
  {
    v4 = 7759204;
    v3 = 0xE300000000000000;
  }

  if (v2 <= 1)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  if (v2 <= 1)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  MEMORY[0x20F32A4B0](46, 0xE100000000000000);
  MEMORY[0x20F32A4B0](v6, v7);

  MEMORY[0x20F32A4B0](0x676174652ELL, 0xE500000000000000);
  return a1;
}

uint64_t sub_20DFD7BA4(uint64_t a1, uint64_t a2)
{
  v30 = sub_20E008CD4();
  v4 = *(v30 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v30);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DFAEBC4();
  sub_20E008C54();
  v8 = sub_20DFAE84C();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v12 = sub_20DFD7AB8(a2);
    v29 = MEMORY[0x277D837D0];
    v28[0] = v10;
    v28[1] = v11;
    sub_20DF9C678(v12, v13, v28);
    if (v2)
    {
      (*(v4 + 8))(v7, v30);
LABEL_7:

      sub_20DF66E28(v28, &qword_27C8521F0, &unk_20E00EC00);
      if (qword_2811230E8 != -1)
      {
        swift_once();
      }

      v19 = sub_20E009094();
      __swift_project_value_buffer(v19, qword_281124A18);
      v20 = sub_20E009074();
      v21 = sub_20E009544();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_20DF62000, v20, v21, "Error while trying to save Utility Territory config metadata.", v22, 2u);
        MEMORY[0x20F32B3A0](v22, -1, -1);
      }

      return swift_willThrow();
    }

    sub_20DF66E28(v28, &qword_27C8521F0, &unk_20E00EC00);
  }

  v14 = v30;
  v15 = sub_20DFD795C(a2);
  v17 = v16;
  v29 = v14;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v28);
  (*(v4 + 16))(boxed_opaque_existential_0, v7, v14);
  sub_20DF9C678(v15, v17, v28);
  if (v2)
  {
    (*(v4 + 8))(v7, v14);
    goto LABEL_7;
  }

  sub_20DF66E28(v28, &qword_27C8521F0, &unk_20E00EC00);
  if (qword_2811230E8 != -1)
  {
    swift_once();
  }

  v24 = sub_20E009094();
  __swift_project_value_buffer(v24, qword_281124A18);
  v25 = sub_20E009074();
  v26 = sub_20E009554();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_20DF62000, v25, v26, "Utility Territory Config MetaData saved.", v27, 2u);
    MEMORY[0x20F32B3A0](v27, -1, -1);
  }

  return (*(v4 + 8))(v7, v14);
}

uint64_t sub_20DFD7F58(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  if (qword_281123098 != -1)
  {
    swift_once();
  }

  v27 = qword_2811249C0;
  v28 = *algn_2811249C8;

  MEMORY[0x20F32A4B0](a1, a2);
  v4 = sub_20DFF20F8();
  v6 = v5;

  MEMORY[0x20F32A4B0](v4, v6);

  v7 = [objc_opt_self() defaultManager];
  v8 = sub_20E0091C4();
  v9 = [v7 fileExistsAtPath_];

  if (v9)
  {
    if (qword_2811230E8 != -1)
    {
      swift_once();
    }

    v10 = sub_20E009094();
    __swift_project_value_buffer(v10, qword_281124A18);
    v11 = sub_20E009074();
    v12 = sub_20E009554();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_20DF62000, v11, v12, "Removing existing file from disk", v13, 2u);
      MEMORY[0x20F32B3A0](v13, -1, -1);
    }

    v14 = sub_20E0091C4();

    v27 = 0;
    v15 = [v7 removeItemAtPath:v14 error:&v27];

    if (v15)
    {
      v16 = v27;
    }

    else
    {
      v17 = v27;
      v18 = sub_20E008A34();

      swift_willThrow();
    }
  }

  else
  {
  }

  v19 = sub_20DFD7AB8(a1);
  v21 = v20;
  v22 = sub_20DFD795C(a1);
  v24 = v23;
  v29 = MEMORY[0x277D837D0];
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_20DF9C678(v19, v21, &v27);

  sub_20DF66E28(&v27, &qword_27C8521F0, &unk_20E00EC00);
  v29 = sub_20E008CD4();
  __swift_allocate_boxed_opaque_existential_0(&v27);
  sub_20E008C94();
  sub_20DF9C678(v22, v24, &v27);

  result = sub_20DF66E28(&v27, &qword_27C8521F0, &unk_20E00EC00);
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_20DFD841C()
{
  v0 = sub_20E008A44();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v21[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21[-v7];
  v9 = sub_20E008AF4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 56))(v8, 1, 1, v9);
  (*(v1 + 104))(v4, *MEMORY[0x277CC91D8], v0);

  sub_20E008AD4();
  v14 = sub_20E008B14();
  v16 = v15;
  v17 = sub_20E008744();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  sub_20E008734();
  sub_20DFD99A0();
  sub_20E008724();
  sub_20DF67FFC(v14, v16);

  memcpy(v21, v22, sizeof(v21));
  sub_20DFD99F4(v21);
  (*(v10 + 8))(v13, v9);
  return 1;
}

void *sub_20DFD889C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v15 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853220, &qword_20E011820);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7 - 8];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFDDB84();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v10 = v15;
  sub_20DF75420();
  sub_20E0098C4();
  (*(v5 + 8))(v8, v4);
  memcpy(v13, v14, sizeof(v13));
  __swift_destroy_boxed_opaque_existential_0(a1);
  return memcpy(v10, v13, 0x220uLL);
}

uint64_t sub_20DFD8A50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_20E009984() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65 || (sub_20E009984() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020E015060 == a2 || (sub_20E009984() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x617A696E6167726FLL && a2 == 0xEC0000006E6F6974 || (sub_20E009984() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74726F70707573 && a2 == 0xE700000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020E016F90 == a2 || (sub_20E009984() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020E016FB0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_20E009984();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

void *sub_20DFD8D00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8530D8, &qword_20E011040);
  v5 = *(v131 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v131);
  v8 = &v22 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFD5B60();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v10 = v5;
  v29 = a2;
  LOBYTE(v31) = 0;
  v11 = sub_20E009894();
  v13 = v12;
  v28 = v11;
  LOBYTE(v30[0]) = 1;
  sub_20DFD964C();
  sub_20E0098C4();
  v14 = v31;
  v27 = v32;
  v90 = 2;
  sub_20DFD96A0();
  sub_20E0098C4();
  v129 = v101;
  v130[0] = v102[0];
  *(v130 + 10) = *(v102 + 10);
  v125 = v97;
  v126 = v98;
  v128 = v100;
  v127 = v99;
  v121 = v93;
  v122 = v94;
  v124 = v96;
  v123 = v95;
  v120 = v92;
  v119 = v91;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853090, &qword_20E011030);
  LOBYTE(v30[0]) = 3;
  sub_20DFD96F4();
  sub_20E009884();
  v15 = v14;
  v16 = v31;
  v77 = 4;
  sub_20DFD97CC();
  sub_20E0098C4();
  v115 = v86;
  v116 = v87;
  v117 = v88;
  v118 = v89;
  v111 = v82;
  v112 = v83;
  v113 = v84;
  v114 = v85;
  v107 = v78;
  v108 = v79;
  v109 = v80;
  v110 = v81;
  v72 = 5;
  sub_20DFD9820();
  v26 = 0;
  sub_20E0098C4();
  v103 = v73;
  v104 = v74;
  v105 = v75;
  v106 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8530B8, &qword_20E011038);
  LOBYTE(v30[0]) = 6;
  sub_20DFD9874();
  sub_20E0098C4();
  v25 = v31;
  v69 = 7;
  sub_20DFD994C();
  sub_20E0098C4();
  (*(v10 + 8))(v8, v131);
  v30[12] = v129;
  v30[13] = v130[0];
  *(&v30[13] + 10) = *(v130 + 10);
  v30[8] = v125;
  v30[9] = v126;
  v30[10] = v127;
  v30[11] = v128;
  v30[4] = v121;
  v30[5] = v122;
  v30[6] = v123;
  v30[7] = v124;
  v30[2] = v119;
  v30[3] = v120;
  *(&v30[24] + 8) = v116;
  *(&v30[25] + 8) = v117;
  *(&v30[26] + 8) = v118;
  *(&v30[20] + 8) = v112;
  *(&v30[21] + 8) = v113;
  *(&v30[22] + 8) = v114;
  *(&v30[23] + 8) = v115;
  *(&v30[16] + 8) = v108;
  *(&v30[17] + 8) = v109;
  v26 = *(&v70 + 1);
  v131 = v70;
  v23 = *(&v71 + 1);
  v24 = v71;
  v17 = v13;
  v18 = v27;
  v19 = v28;
  *&v30[0] = v28;
  *(&v30[0] + 1) = v17;
  *&v30[1] = v15;
  *(&v30[1] + 1) = v27;
  *(&v30[18] + 8) = v110;
  *(&v30[19] + 8) = v111;
  *(&v30[15] + 8) = v107;
  *(&v30[27] + 8) = v103;
  *(&v30[28] + 8) = v104;
  *(&v30[29] + 8) = v105;
  *(&v30[30] + 8) = v106;
  *&v30[15] = v16;
  v20 = v25;
  *(&v30[31] + 1) = v25;
  v30[32] = v70;
  v30[33] = v71;
  sub_20DF7531C(v30, &v31);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v45 = v129;
  v46[0] = v130[0];
  *(v46 + 10) = *(v130 + 10);
  v41 = v125;
  v42 = v126;
  v43 = v127;
  v44 = v128;
  v37 = v121;
  v38 = v122;
  v39 = v123;
  v40 = v124;
  v35 = v119;
  v36 = v120;
  v57 = v116;
  v58 = v117;
  v59 = v118;
  v53 = v112;
  v54 = v113;
  v55 = v114;
  v56 = v115;
  v49 = v108;
  v50 = v109;
  v31 = v19;
  v32 = v17;
  v33 = v15;
  v34 = v18;
  v51 = v110;
  v52 = v111;
  v48 = v107;
  v60 = v103;
  v61 = v104;
  v62 = v105;
  v63 = v106;
  v47 = v16;
  v64 = v20;
  v65 = v131;
  v66 = v26;
  v67 = v24;
  v68 = v23;
  sub_20DF753CC(&v31);
  return memcpy(v29, v30, 0x220uLL);
}

unint64_t sub_20DFD964C()
{
  result = qword_27C8530E0;
  if (!qword_27C8530E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8530E0);
  }

  return result;
}

unint64_t sub_20DFD96A0()
{
  result = qword_27C8530E8;
  if (!qword_27C8530E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8530E8);
  }

  return result;
}

unint64_t sub_20DFD96F4()
{
  result = qword_27C8530F0;
  if (!qword_27C8530F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C853090, &qword_20E011030);
    sub_20DFD9778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8530F0);
  }

  return result;
}

unint64_t sub_20DFD9778()
{
  result = qword_27C8530F8;
  if (!qword_27C8530F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8530F8);
  }

  return result;
}

unint64_t sub_20DFD97CC()
{
  result = qword_27C853100;
  if (!qword_27C853100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853100);
  }

  return result;
}

unint64_t sub_20DFD9820()
{
  result = qword_27C853108;
  if (!qword_27C853108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853108);
  }

  return result;
}

unint64_t sub_20DFD9874()
{
  result = qword_27C853110;
  if (!qword_27C853110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8530B8, &qword_20E011038);
    sub_20DFD98F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853110);
  }

  return result;
}

unint64_t sub_20DFD98F8()
{
  result = qword_27C853118;
  if (!qword_27C853118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853118);
  }

  return result;
}

unint64_t sub_20DFD994C()
{
  result = qword_27C853120;
  if (!qword_27C853120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853120);
  }

  return result;
}

unint64_t sub_20DFD99A0()
{
  result = qword_27C853128;
  if (!qword_27C853128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853128);
  }

  return result;
}

uint64_t sub_20DFD9A24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 544))
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

uint64_t sub_20DFD9A6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 536) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 544) = 1;
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

    *(result + 544) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_20DFD9B90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_20DFD9BD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_20DFD9C6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_20DFD9CB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy202_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 186) = *(a2 + 186);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_20DFD9D88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 202))
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

uint64_t sub_20DFD9DD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 200) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 202) = 1;
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

    *(result + 202) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20DFD9E68()
{
  result = qword_27C853130;
  if (!qword_27C853130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853130);
  }

  return result;
}

unint64_t sub_20DFD9EC0()
{
  result = qword_27C853138;
  if (!qword_27C853138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853138);
  }

  return result;
}

unint64_t sub_20DFD9F18()
{
  result = qword_27C853140;
  if (!qword_27C853140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853140);
  }

  return result;
}

unint64_t sub_20DFD9F6C()
{
  result = qword_27C853150;
  if (!qword_27C853150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853150);
  }

  return result;
}

unint64_t sub_20DFD9FC0()
{
  result = qword_27C853160;
  if (!qword_27C853160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853160);
  }

  return result;
}

unint64_t sub_20DFDA014()
{
  result = qword_27C853168;
  if (!qword_27C853168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853168);
  }

  return result;
}

unint64_t sub_20DFDA0A0()
{
  result = qword_27C853170;
  if (!qword_27C853170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853170);
  }

  return result;
}

unint64_t sub_20DFDA124()
{
  result = qword_27C853180;
  if (!qword_27C853180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853180);
  }

  return result;
}

unint64_t sub_20DFDA178()
{
  result = qword_27C853190;
  if (!qword_27C853190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853190);
  }

  return result;
}

unint64_t sub_20DFDA204()
{
  result = qword_27C853198;
  if (!qword_27C853198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853198);
  }

  return result;
}

unint64_t sub_20DFDA288()
{
  result = qword_27C8531A8;
  if (!qword_27C8531A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8531A8);
  }

  return result;
}

unint64_t sub_20DFDA2DC()
{
  result = qword_27C8531B8;
  if (!qword_27C8531B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8531B8);
  }

  return result;
}

unint64_t sub_20DFDA330()
{
  result = qword_27C8531C8;
  if (!qword_27C8531C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8531C8);
  }

  return result;
}

uint64_t sub_20DFDA384(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_20E009984() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020E016FF0 == a2 || (sub_20E009984() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_20E009984();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_20DFDA4F0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853210, &qword_20E011810);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFDA2DC();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v34[0]) = 0;
  v11 = sub_20E009894();
  v29 = v12;
  LOBYTE(v34[0]) = 1;
  v13 = sub_20E009894();
  v28 = v14;
  v26 = v13;
  LOBYTE(v34[0]) = 2;
  v25 = sub_20E009894();
  v27 = v15;
  v35 = 3;
  v16 = sub_20E009894();
  v18 = v17;
  (*(v6 + 8))(v9, v5);
  v19 = v29;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v21 = v26;
  v20 = v27;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  *&v32 = v25;
  *(&v32 + 1) = v27;
  *&v33 = v16;
  *(&v33 + 1) = v18;
  sub_20DFDD92C(&v30, v34);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v34[0] = v11;
  v34[1] = v19;
  v34[2] = v21;
  v34[3] = v28;
  v34[4] = v25;
  v34[5] = v20;
  v34[6] = v16;
  v34[7] = v18;
  result = sub_20DFDD964(v34);
  v23 = v31;
  *a2 = v30;
  a2[1] = v23;
  v24 = v33;
  a2[2] = v32;
  a2[3] = v24;
  return result;
}

uint64_t sub_20DFDA7E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_20E009984() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6966697373616C63 && a2 == 0xEE006E6F69746163 || (sub_20E009984() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020E016FD0 == a2 || (sub_20E009984() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616F626E4F666174 && a2 == 0xED0000676E696472 || (sub_20E009984() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x800000020E0151A0 == a2 || (sub_20E009984() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000020E0151E0 == a2 || (sub_20E009984() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000017 && 0x800000020E0151C0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_20E009984();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}