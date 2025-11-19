uint64_t sub_22309F000()
{
  v1 = v0;
  if (qword_280D39048 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    swift_beginAccess();
    sub_2230A2E80(&xmmword_280D39050, &v36, &qword_27D055408, &qword_2230C4D78);
    v2 = *(&v37 + 1);
    sub_2230A2EE8(&v36, &qword_27D055408, &qword_2230C4D78);
    if (!v2)
    {
      v3 = type metadata accessor for GenerativeAssistantSettingsCascadeSync();
      v4 = swift_allocObject();
      *(&v37 + 1) = v3;
      v38 = &off_283671400;
      *&v36 = v4;
      swift_beginAccess();
      sub_2230A5B3C(&v36, &xmmword_280D39050);
      swift_endAccess();
    }

    sub_2230A2E80(&xmmword_280D39050, &v39, &qword_27D055408, &qword_2230C4D78);
    if (!*(&v40 + 1))
    {
      v25 = &qword_27D055408;
      v26 = &qword_2230C4D78;
      return sub_2230A2EE8(&v39, v25, v26);
    }

    sub_22309F744(&v39, &v36);
    sub_2230A2EE8(&v39, &qword_27D055408, &qword_2230C4D78);
    v5 = *__swift_project_boxed_opaque_existential_0Tm(&v36, *(&v37 + 1));
    v6 = sub_22309F7F0();
    result = __swift_destroy_boxed_opaque_existential_0(&v36);
    if (!v6)
    {
      return result;
    }

    if (!*(v6 + 16))
    {
      break;
    }

    if (qword_280D38F60 != -1)
    {
      swift_once();
    }

    v8 = sub_2230C38A4();
    __swift_project_value_buffer(v8, qword_280D39220);

    v9 = sub_2230C3884();
    v10 = sub_2230C3EC4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&v39 = v12;
      *v11 = 136446466;
      *&v36 = v1;
      type metadata accessor for GenerativeAssistantSettingsSyncHandler();

      v13 = sub_2230C3DA4();
      v15 = sub_22309F9F4(v13, v14, &v39);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      *(v11 + 14) = sub_22309F9F4(0x2868736572666572, 0xE900000000000029, &v39);
      _os_log_impl(&dword_22309D000, v9, v10, "%{public}s - %{public}s - pulling synced data", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DD5490](v12, -1, -1);
      MEMORY[0x223DD5490](v11, -1, -1);
    }

    v16 = 1 << *(v6 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v6 + 64);
    v19 = (v16 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v20 = 0;
    while (v18)
    {
LABEL_21:
      v22 = *(*(v6 + 48) + (__clz(__rbit64(v18)) | (v20 << 6)));
      if (*(v6 + 16) && (v23 = sub_2230A50D0(v22), (v24 & 1) != 0))
      {
        sub_2230A2E80(*(v6 + 56) + 32 * v23, &v36, &qword_27D0553D0, &qword_2230C4D28);
        v39 = v36;
        v40 = v37;
      }

      else
      {
        v39 = 0u;
        v40 = 0u;
      }

      v18 &= v18 - 1;
      LOBYTE(v36) = v22;
      sub_2230A45F8(&v39, &v36);
      sub_2230A2EE8(&v39, &qword_27D0553D0, &qword_2230C4D28);
    }

    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v19)
      {

        return swift_bridgeObjectRelease_n();
      }

      v18 = *(v6 + 64 + 8 * v21);
      ++v20;
      if (v18)
      {
        v20 = v21;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_34:
    swift_once();
  }

  if (qword_280D38F60 != -1)
  {
    swift_once();
  }

  v27 = sub_2230C38A4();
  __swift_project_value_buffer(v27, qword_280D39220);

  v28 = sub_2230C3884();
  v29 = sub_2230C3EC4();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&v39 = v31;
    *v30 = 136446466;
    *&v36 = v1;
    type metadata accessor for GenerativeAssistantSettingsSyncHandler();

    v32 = sub_2230C3DA4();
    v34 = sub_22309F9F4(v32, v33, &v39);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2082;
    *(v30 + 14) = sub_22309F9F4(0x2868736572666572, 0xE900000000000029, &v39);
    _os_log_impl(&dword_22309D000, v28, v29, "%{public}s - %{public}s - clearing Montara settings.", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DD5490](v31, -1, -1);
    MEMORY[0x223DD5490](v30, -1, -1);
  }

  v35 = MEMORY[0x277D839B0];
  *(&v40 + 1) = MEMORY[0x277D839B0];
  LOBYTE(v39) = 0;
  LOBYTE(v36) = 0;
  sub_2230A45F8(&v39, &v36);
  sub_2230A2EE8(&v39, &qword_27D0553D0, &qword_2230C4D28);
  *(&v40 + 1) = v35;
  LOBYTE(v39) = 1;
  LOBYTE(v36) = 2;
  sub_2230A45F8(&v39, &v36);
  sub_2230A2EE8(&v39, &qword_27D0553D0, &qword_2230C4D28);
  *(&v40 + 1) = v35;
  LOBYTE(v39) = 0;
  LOBYTE(v36) = 1;
  sub_2230A45F8(&v39, &v36);
  v25 = &qword_27D0553D0;
  v26 = &qword_2230C4D28;
  return sub_2230A2EE8(&v39, v25, v26);
}

id sub_22309F684()
{
  if (qword_280D39240)
  {

    sub_22309F000();
  }

  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v0 = qword_280D39238;
  if (!qword_280D39238)
  {
    return 0;
  }

  v1 = sub_2230C3D74();
  v2 = [v0 BOOLForKey_];

  return v2;
}

uint64_t sub_22309F744(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_0Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_22309F7F0()
{
  if (qword_280D38F60 != -1)
  {
    swift_once();
  }

  v0 = sub_2230C38A4();
  __swift_project_value_buffer(v0, qword_280D39220);

  v1 = sub_2230C3884();
  v2 = sub_2230C3EC4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446466;
    type metadata accessor for GenerativeAssistantSettingsCascadeSync();

    v5 = sub_2230C3DA4();
    v7 = sub_22309F9F4(v5, v6, &v9);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    *(v3 + 14) = sub_22309F9F4(0x2868736572666572, 0xE900000000000029, &v9);
    _os_log_impl(&dword_22309D000, v1, v2, "%{public}s - %{public}s - default implementation", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DD5490](v4, -1, -1);
    MEMORY[0x223DD5490](v3, -1, -1);
  }

  return 0;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_22309F9F4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22309FAC0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_22309FBCC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_22309FAC0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_22309FC74(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2230C3F44();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_22309FBCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_22309FC74(uint64_t a1, unint64_t a2)
{
  v4 = sub_22309FCC0(a1, a2);
  sub_22309FE64(&unk_283670CE8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_22309FCC0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_22309FDF0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2230C3F44();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2230C3DE4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22309FDF0(v10, 0);
        result = sub_2230C3F14();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_22309FDF0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055358, &qword_2230C4B68);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_22309FE64(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2230A1A40(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2230A0100()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2230A01F0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 58, 7);
}

uint64_t sub_2230A0260()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055520, &qword_2230C5828);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2230A03DC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2230A0440()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

id sub_2230A0488@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isEnabled];
  *a2 = result;
  return result;
}

uint64_t sub_2230A04BC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2230A04F4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2230A0548()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2230A0638()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055710, &qword_2230C61B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2230A06D8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

GenerativeAssistantSettings::GenerativeAssistantSettingsIntentHelper::RequestType_optional __swiftcall GenerativeAssistantSettingsIntentHelper.RequestType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2230A0784()
{
  v1 = *v0;
  sub_2230C4014();
  MEMORY[0x223DD4F90](v1);
  return sub_2230C4034();
}

uint64_t sub_2230A07CC()
{
  v1 = *v0;
  sub_2230C4014();
  MEMORY[0x223DD4F90](v1);
  return sub_2230C4034();
}

void static GenerativeAssistantSettingsIntentHelper.responseType(for:isExplicitRequest:partner:sessionId:withTamale:)(unsigned __int8 *a1@<X0>, char a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v9 = *a1;
  if (qword_280D38F60 != -1)
  {
    swift_once();
  }

  v10 = sub_2230C38A4();
  __swift_project_value_buffer(v10, qword_280D39220);
  v11 = sub_2230C3884();
  v12 = sub_2230C3EC4();
  if (os_log_type_enabled(v11, v12))
  {
    v25 = v9;
    v13 = a5;
    v14 = a2;
    v15 = a3;
    v16 = a4;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v26 = v18;
    *v17 = 136446722;
    *(v17 + 4) = sub_22309F9F4(0xD000000000000027, 0x80000002230C4970, &v26);
    *(v17 + 12) = 2082;
    *(v17 + 14) = sub_22309F9F4(0xD000000000000041, 0x80000002230C6A70, &v26);
    *(v17 + 22) = 2082;
    type metadata accessor for GenerativeAssistantSettingsUserDefaults();
    v19 = static GenerativeAssistantSettingsUserDefaults.allUserDefaults()();
    v21 = sub_22309F9F4(v19, v20, &v26);

    *(v17 + 24) = v21;
    _os_log_impl(&dword_22309D000, v11, v12, "%{public}s.%{public}s: \n%{public}s", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DD5490](v18, -1, -1);
    v22 = v17;
    a4 = v16;
    a3 = v15;
    a2 = v14;
    a5 = v13;
    v9 = v25;
    MEMORY[0x223DD5490](v22, -1, -1);
  }

  if (qword_280D39240)
  {

    sub_22309F000();
  }

  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v23 = qword_280D39238;
  if (qword_280D39238)
  {
    v24 = sub_2230C3D74();
    LODWORD(v23) = [v23 BOOLForKey_];
  }

  v27 = v9;
  sub_2230A0AC4(&v27, a2 & 1, v23, a3, a4, a5);
}

void sub_2230A0AC4(unsigned __int8 *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v45 = a4;
  v47 = a2;
  v48 = a3;
  v9 = sub_2230C3604();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *a1;
  if (qword_280D38F60 != -1)
  {
    swift_once();
  }

  v14 = sub_2230C38A4();
  __swift_project_value_buffer(v14, qword_280D39220);
  v15 = sub_2230C3884();
  v16 = sub_2230C3EC4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v43 = v10;
    v44 = v13;
    v19 = v9;
    v20 = a6;
    v21 = v18;
    v49 = v18;
    *v17 = 136446722;
    *(v17 + 4) = sub_22309F9F4(0xD000000000000027, 0x80000002230C4970, &v49);
    v22 = a5;
    *(v17 + 12) = 2082;
    *(v17 + 14) = sub_22309F9F4(0xD000000000000039, 0x80000002230C6AC0, &v49);
    *(v17 + 22) = 2082;
    type metadata accessor for GenerativeAssistantSettingsUserDefaults();
    v23 = static GenerativeAssistantSettingsUserDefaults.allUserDefaults()();
    v25 = sub_22309F9F4(v23, v24, &v49);

    *(v17 + 24) = v25;
    a5 = v22;
    _os_log_impl(&dword_22309D000, v15, v16, "%{public}s.%{public}s: \n%{public}s", v17, 0x20u);
    swift_arrayDestroy();
    v26 = v21;
    a6 = v20;
    v9 = v19;
    v10 = v43;
    v13 = v44;
    MEMORY[0x223DD5490](v26, -1, -1);
    MEMORY[0x223DD5490](v17, -1, -1);
  }

  if (v48)
  {
    if ((v46 - 1) >= 2)
    {
      if (v46)
      {
        if (a5)
        {
          sub_2230C37A4();
        }

        goto LABEL_37;
      }

      if (a5 && (MEMORY[0x223DD4700](v45, a5) & 1) != 0)
      {
LABEL_37:
        v40 = 3;
        goto LABEL_38;
      }
    }

    else
    {
      if (v47)
      {
        goto LABEL_37;
      }

      if (qword_280D39240)
      {

        sub_22309F000();
      }

      if (qword_280D38F68 != -1)
      {
        swift_once();
      }

      v27 = qword_280D39238;
      if (!qword_280D39238)
      {
        goto LABEL_37;
      }

      v28 = sub_2230C3D74();
      v29 = [v27 BOOLForKey_];

      if (!v29)
      {
        goto LABEL_37;
      }

      v30 = sub_2230C3784();

      if (v30)
      {
        goto LABEL_37;
      }
    }

    v40 = 1;
LABEL_38:
    *a6 = v40;
    return;
  }

  if (qword_280D39240)
  {

    sub_22309F000();
  }

  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v31 = qword_280D39238;
  if (!qword_280D39238 || (v32 = sub_2230C3D74(), v33 = [v31 BOOLForKey_], v32, (v33 & 1) == 0))
  {
    if ((v47 & 1) == 0)
    {
      *a6 = 0;
      return;
    }

    goto LABEL_27;
  }

  if (v47)
  {
LABEL_27:
    v37 = sub_2230C3884();
    v38 = sub_2230C3EC4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_22309D000, v37, v38, "Montara feature is currently disabled for this user", v39, 2u);
      MEMORY[0x223DD5490](v39, -1, -1);
    }

    v40 = 2;
    goto LABEL_38;
  }

  v34 = a6;
  if (v46 > 1)
  {
    if (v46 == 2)
    {
      type metadata accessor for GenerativeAssistantSettingsUserDefaults();
      sub_2230BB728();
      v41 = sub_2230C3D74();
      v36 = [v31 integerForKey_];

      static GenerativeAssistantSettingsUserDefaults.declineComposeViaSiriExpiration()(v13);
      goto LABEL_42;
    }

LABEL_41:
    type metadata accessor for GenerativeAssistantSettingsUserDefaults();
    sub_2230BB728();
    v42 = sub_2230C3D74();
    v36 = [v31 integerForKey_];

    static GenerativeAssistantSettingsUserDefaults.declineMediaQAExpiration()(v13);
    goto LABEL_42;
  }

  if (!v46)
  {
    goto LABEL_41;
  }

  type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  sub_2230BB728();
  v35 = sub_2230C3D74();
  v36 = [v31 integerForKey_];

  static GenerativeAssistantSettingsUserDefaults.declineKnowledgeFallbackExpiration()(v13);
LABEL_42:
  sub_2230A1204(v36, v34);
  (*(v10 + 8))(v13, v9);
}

void static GenerativeAssistantSettingsIntentHelper.responseType(for:isExplicitRequest:sessionId:)(unsigned __int8 *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v11 = *a1;
  if (qword_280D39240)
  {

    sub_22309F000();
  }

  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v9 = qword_280D39238;
  if (qword_280D39238)
  {
    v10 = sub_2230C3D74();
    LODWORD(v9) = [v9 BOOLForKey_];
  }

  sub_2230A0AC4(&v11, a2 & 1, v9, a3, a4, a5);
}

uint64_t sub_2230A1204@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_2230C3604();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2230C35F4();
  if ((sub_2230A1F68() & 1) == 0 || a1 < 1 || (sub_2230C35C4() & 1) == 0)
  {
    if (a1 <= 1)
    {
      result = (*(v5 + 8))(v8, v4);
    }

    else
    {
      v11 = sub_2230C35C4();
      result = (*(v5 + 8))(v8, v4);
      if (v11)
      {
        v10 = 0;
        goto LABEL_10;
      }
    }

    v10 = 2;
    goto LABEL_10;
  }

  result = (*(v5 + 8))(v8, v4);
  v10 = 0;
LABEL_10:
  *a2 = v10;
  return result;
}

BOOL static GenerativeAssistantSettingsIntentHelper.shouldShowDisableConfirmRequestsConfirmation()()
{
  v54 = sub_2230C3674();
  v52 = *(v54 - 8);
  v0 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  v2 = &v44 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_2230C3684();
  v53 = *(v51 - 8);
  v3 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  v55 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2230C3604();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v50 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v56 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055340, &qword_2230C58A0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v44 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v57 = &v44 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v44 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v44 - v24;
  type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  static GenerativeAssistantSettingsUserDefaults.nextDisableConfirmRequestsConfirmationDate()(v25);
  v26 = *(v6 + 48);
  if (v26(v25, 1, v5) != 1)
  {
    sub_2230A1BF4(v25, v23);
    if (v26(v23, 1, v5) == 1)
    {
      sub_2230A1B8C(v23);
      goto LABEL_8;
    }

    v49 = v2;
    sub_2230C35D4();
    v2 = v49;
    v34 = v33;
    (*(v6 + 8))(v23, v5);
    if (v34 >= 0.0)
    {
      goto LABEL_8;
    }
  }

  v27 = *(_s27GenerativeAssistantSettings0abC12UserDefaultsC31consecutiveLLMConfirmationDatesSay10Foundation4DateVGyFZ_0() + 16);

  if (v27 < 3)
  {
LABEL_8:
    v31 = 0;
    goto LABEL_18;
  }

  v49 = v15;
  v28 = v57;
  static GenerativeAssistantSettingsUserDefaults.lastDeclineDate()(v57);
  v29 = v28;
  v30 = v26(v28, 1, v5);
  v31 = v30 == 1;
  sub_2230A1BF4(v29, v18);
  if (v26(v18, 1, v5) == 1)
  {
    v32 = v29;
LABEL_11:
    sub_2230A1B8C(v32);
    sub_2230A1B8C(v18);
    goto LABEL_18;
  }

  v47 = v30;
  v48 = v6;
  v45 = *(v6 + 32);
  v46 = v6 + 32;
  v45(v56, v18, v5);
  sub_2230C3664();
  v35 = v52;
  v36 = v54;
  (*(v52 + 104))(v2, *MEMORY[0x277CC9940], v54);
  v18 = v49;
  v37 = v55;
  sub_2230C3654();
  (*(v35 + 8))(v2, v36);
  (*(v53 + 8))(v37, v51);
  if (v26(v18, 1, v5) == 1)
  {
    (*(v48 + 8))(v56, v5);
    v32 = v57;
    goto LABEL_11;
  }

  v38 = v50;
  v45(v50, v18, v5);
  sub_2230C35D4();
  v40 = v39;
  v41 = *(v48 + 8);
  v41(v38, v5);
  v41(v56, v5);
  sub_2230A1B8C(v57);
  v31 = v40 < 0.0 || v47 == 1;
LABEL_18:
  sub_2230A1B8C(v25);
  return v31;
}

BOOL sub_2230A190C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_2230A1970(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_2230A19E4(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_22309F9F4(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_2230A1A40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055358, &qword_2230C4B68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_2230A1B34(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2230A1B8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055340, &qword_2230C58A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2230A1BF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055340, &qword_2230C58A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2230A1C68()
{
  result = qword_27D055348;
  if (!qword_27D055348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D055348);
  }

  return result;
}

unint64_t sub_2230A1CC0()
{
  result = qword_27D055350;
  if (!qword_27D055350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D055350);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenerativeAssistantSettingsIntentHelper(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for GenerativeAssistantSettingsIntentHelper(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenerativeAssistantSettingsDestination.Origin(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GenerativeAssistantSettingsDestination.Origin(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2230A1F68()
{
  sub_2230BB728();
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v0 = qword_280D39238;
  if (qword_280D39238)
  {
    v1 = sub_2230C3D74();
    v2 = [v0 integerForKey_];

    if (v2 > 1)
    {
      return 1;
    }

    sub_2230BB728();
    v3 = sub_2230C3D74();
    v4 = [v0 integerForKey_];

    if (v4 > 1)
    {
      return 1;
    }

    sub_2230BB728();
    v5 = sub_2230C3D74();
    v6 = [v0 integerForKey_];

    if (v6 > 1)
    {
      return 1;
    }
  }

  else
  {
    sub_2230BB728();
    sub_2230BB728();
  }

  return 0;
}

uint64_t sub_2230A20E4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553A8, &qword_2230C4C00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28 - v4;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553B8, &qword_2230C4C10);
  v6 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553A0, &qword_2230C4BC0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v30 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  v18 = OBJC_IVAR____TtC27GenerativeAssistantSettings29ExternalAIAuthenticatorHelper__authenticationSession;
  *(v0 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553C0, &qword_2230C4C48);
  swift_storeEnumTagMultiPayload();
  v19 = OBJC_IVAR____TtC27GenerativeAssistantSettings29ExternalAIAuthenticatorHelper__credentials;
  v20 = sub_2230C3914();
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v28 = v21 + 56;
  v29 = v22;
  v22(v17, 1, 1, v20);
  sub_2230A2E80(v17, v15, &qword_27D0553A0, &qword_2230C4BC0);
  sub_2230C3AF4();
  sub_2230A2EE8(v17, &qword_27D0553A0, &qword_2230C4BC0);
  sub_2230A2E10(v8, v1 + v19);
  *(v1 + OBJC_IVAR____TtC27GenerativeAssistantSettings29ExternalAIAuthenticatorHelper_isBusy) = 0;
  v23 = v1 + OBJC_IVAR____TtC27GenerativeAssistantSettings29ExternalAIAuthenticatorHelper_callbackURLScheme;
  strcpy((v1 + OBJC_IVAR____TtC27GenerativeAssistantSettings29ExternalAIAuthenticatorHelper_callbackURLScheme), "apple-chatgpt");
  *(v23 + 14) = -4864;
  sub_2230C3774();
  sub_2230C3764();
  sub_2230C3744();

  v24 = sub_2230C3984();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v5, 1, v24) == 1)
  {
    sub_2230A2EE8(v5, &qword_27D0553A8, &qword_2230C4C00);
    v26 = v30;
    v29(v30, 1, 1, v20);
  }

  else
  {
    v26 = v30;
    sub_2230C3944();
    (*(v25 + 8))(v5, v24);
  }

  sub_2230A2E80(v1 + OBJC_IVAR____TtC27GenerativeAssistantSettings29ExternalAIAuthenticatorHelper__credentials, v8, &qword_27D0553B8, &qword_2230C4C10);
  sub_2230A2E80(v26, v17, &qword_27D0553A0, &qword_2230C4BC0);
  sub_2230C3B04();
  sub_2230A2EE8(v8, &qword_27D0553B8, &qword_2230C4C10);
  sub_2230A2EE8(v26, &qword_27D0553A0, &qword_2230C4BC0);
  return v1;
}

uint64_t sub_2230A24E4()
{
  sub_2230A2EE8(v0 + OBJC_IVAR____TtC27GenerativeAssistantSettings29ExternalAIAuthenticatorHelper__authenticationSession, &qword_27D0553C8, &qword_2230C4C50);
  sub_2230A2EE8(v0 + OBJC_IVAR____TtC27GenerativeAssistantSettings29ExternalAIAuthenticatorHelper__credentials, &qword_27D0553B8, &qword_2230C4C10);
  v1 = *(v0 + OBJC_IVAR____TtC27GenerativeAssistantSettings29ExternalAIAuthenticatorHelper_callbackURLScheme + 8);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

uint64_t type metadata accessor for ExternalAIAuthenticatorHelper()
{
  result = qword_27D055380;
  if (!qword_27D055380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2230A25E0()
{
  sub_2230A26C0();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2230A2718();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2230A26C0()
{
  if (!qword_27D055390)
  {
    sub_2230C38B4();
    v0 = sub_2230C39F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27D055390);
    }
  }
}

void sub_2230A2718()
{
  if (!qword_27D055398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0553A0, &qword_2230C4BC0);
    v0 = sub_2230C3B14();
    if (!v1)
    {
      atomic_store(v0, &qword_27D055398);
    }
  }
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

uint64_t sub_2230A27C4(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_2230A2824(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_2230A2898()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553A8, &qword_2230C4C00) - 8) + 64) + 15;
  *(v0 + 16) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2230A2930, 0, 0);
}

uint64_t sub_2230A2930()
{
  v1 = v0[2];
  sub_2230C3774();
  sub_2230C3764();
  sub_2230C3744();

  v2 = sub_2230C3984();
  v0[3] = v2;
  v3 = *(v2 - 8);
  v0[4] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_2230A2EE8(v0[2], &qword_27D0553A8, &qword_2230C4C00);
    v4 = v0[2];

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = *(MEMORY[0x277CEAC60] + 4);
    v8 = swift_task_alloc();
    v0[5] = v8;
    *v8 = v0;
    v8[1] = sub_2230A2A98;
    v9 = v0[2];

    return MEMORY[0x28213D120]();
  }
}

uint64_t sub_2230A2A98()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2230A2BEC, 0, 0);
  }

  else
  {
    (*(v3[4] + 8))(v3[2], v3[3]);
    v4 = v3[2];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2230A2BEC()
{
  v17 = v0;
  (*(v0[4] + 8))(v0[2], v0[3]);
  if (qword_27D055330 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_2230C38A4();
  __swift_project_value_buffer(v2, qword_27D0572A8);
  v3 = v1;
  v4 = sub_2230C3884();
  v5 = sub_2230C3EB4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_22309F9F4(0xD000000000000013, 0x80000002230C6BA0, &v16);
    *(v8 + 12) = 2114;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_22309D000, v4, v5, "%{public}s: ExternalAIAuthenticator.signOut() exception: %{public}@", v8, 0x16u);
    sub_2230A2EE8(v9, &qword_27D0553B0, &qword_2230C4C08);
    MEMORY[0x223DD5490](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x223DD5490](v10, -1, -1);
    MEMORY[0x223DD5490](v8, -1, -1);
  }

  else
  {
  }

  v13 = v0[2];

  v14 = v0[1];

  return v14();
}

uint64_t sub_2230A2E10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553B8, &qword_2230C4C10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2230A2E80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2230A2EE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2230A2F70(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553D8, &qword_2230C4D30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  if (qword_280D38F60 != -1)
  {
    swift_once();
  }

  v8 = sub_2230C38A4();
  __swift_project_value_buffer(v8, qword_280D39220);

  v9 = sub_2230C3884();
  v10 = sub_2230C3EC4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v2;
    v23 = v12;
    *v11 = 136446722;
    type metadata accessor for GenerativeAssistantSettingsCascadeSync();

    v13 = sub_2230C3DA4();
    v15 = sub_22309F9F4(v13, v14, &v23);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_22309F9F4(0x5F286574616E6F64, 0xEA0000000000293ALL, &v23);
    *(v11 + 22) = 2082;
    v16 = sub_2230C3D34();
    v18 = sub_22309F9F4(v16, v17, &v23);

    *(v11 + 24) = v18;
    _os_log_impl(&dword_22309D000, v9, v10, "%{public}s - %{public}s - preparing to donate. settings dictionary is:  %{public}s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DD5490](v12, -1, -1);
    MEMORY[0x223DD5490](v11, -1, -1);
  }

  v19 = sub_2230C3E84();
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a1;
  v20[5] = v2;

  sub_2230BEA64(0, 0, v7, &unk_2230C4D40, v20);
}

uint64_t sub_2230A325C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *MEMORY[0x277D85DE8];
  *(v5 + 152) = a4;
  *(v5 + 160) = a5;
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2230A32EC, 0, 0);
}

uint64_t sub_2230A32EC()
{
  v37 = v0;
  v36[1] = *MEMORY[0x277D85DE8];
  sub_2230A4104(v0[19]);
  v1 = objc_allocWithZone(MEMORY[0x277D210C8]);
  v2 = sub_2230A4CF0();
  v0[21] = v2;
  v3 = v2;
  v4 = objc_allocWithZone(MEMORY[0x277D210D0]);
  v5 = sub_2230A4DD8();
  v0[22] = v5;
  v23 = v5;
  v24 = objc_allocWithZone(MEMORY[0x277CF94C8]);
  v0[10] = 0;
  v25 = v3;
  v26 = v23;
  v27 = [v24 initWithContent:v25 metaContent:v26 error:v0 + 10];
  v0[23] = v27;
  v28 = v0[10];
  if (v27)
  {
    v29 = v28;

    v30 = objc_opt_self();
    sub_2230A5058();
    v31 = sub_2230C3DF4();
    v0[24] = v31;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_2230A37D0;
    v32 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553E0, &qword_2230C4D50);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2230A43CC;
    v0[13] = &block_descriptor;
    v0[14] = v32;
    [v30 fullSetDonationWithItemType:44530 descriptors:v31 completion:v0 + 10];
    v33 = *MEMORY[0x277D85DE8];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v34 = v28;
    v35 = sub_2230C3514();

    swift_willThrow();
    if (qword_280D38F60 != -1)
    {
      swift_once();
    }

    v6 = v0[20];
    v7 = sub_2230C38A4();
    __swift_project_value_buffer(v7, qword_280D39220);

    v8 = v35;
    v9 = sub_2230C3884();
    v10 = sub_2230C3EB4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = v0[20];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v36[0] = v14;
      *v12 = 136446722;
      v0[10] = v11;
      type metadata accessor for GenerativeAssistantSettingsCascadeSync();

      v15 = sub_2230C3DA4();
      v17 = sub_22309F9F4(v15, v16, v36);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2082;
      *(v12 + 14) = sub_22309F9F4(0x5F286574616E6F64, 0xEA0000000000293ALL, v36);
      *(v12 + 22) = 2114;
      v18 = v35;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 24) = v19;
      *v13 = v19;
      _os_log_impl(&dword_22309D000, v9, v10, "%{public}s - %{public}s unexpected exception %{public}@ caught while preparing store for use", v12, 0x20u);
      sub_2230A2EE8(v13, &qword_27D0553B0, &qword_2230C4C08);
      MEMORY[0x223DD5490](v13, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x223DD5490](v14, -1, -1);
      MEMORY[0x223DD5490](v12, -1, -1);
    }

    else
    {
    }

    v20 = v0[1];
    v21 = *MEMORY[0x277D85DE8];

    return v20();
  }
}

uint64_t sub_2230A37D0()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_2230A3E44;
  }

  else
  {
    v3 = sub_2230A390C;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2230A390C()
{
  v54 = v0;
  v53[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);

  *(v0 + 80) = 0;
  v3 = (v0 + 80);
  v4 = [v2 registerItem:v1 error:v0 + 80];
  v5 = *(v0 + 80);
  if (v4 && (*v3 = 0, v6 = v5, v7 = [v2 finish_], v5 = *v3, v7))
  {
    v8 = qword_280D38F60;
    v9 = v5;
    if (v8 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 152);
    v10 = *(v0 + 160);
    v12 = sub_2230C38A4();
    __swift_project_value_buffer(v12, qword_280D39220);

    v13 = sub_2230C3884();
    v14 = sub_2230C3EC4();

    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 176);
    v16 = *(v0 + 184);
    if (v15)
    {
      v18 = *(v0 + 152);
      v19 = *(v0 + 160);
      v51 = *(v0 + 168);
      v52 = *(v0 + 184);
      v20 = swift_slowAlloc();
      v50 = v17;
      v21 = swift_slowAlloc();
      v53[0] = v21;
      *v20 = 136446722;
      *(v0 + 80) = v19;
      type metadata accessor for GenerativeAssistantSettingsCascadeSync();

      v22 = sub_2230C3DA4();
      v24 = sub_22309F9F4(v22, v23, v53);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      *(v20 + 14) = sub_22309F9F4(0x5F286574616E6F64, 0xEA0000000000293ALL, v53);
      *(v20 + 22) = 2082;
      v25 = sub_2230C3D34();
      v27 = sub_22309F9F4(v25, v26, v53);

      *(v20 + 24) = v27;
      _os_log_impl(&dword_22309D000, v13, v14, "%{public}s - %{public}s - donation complete. settings dictionary is:  %{public}s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223DD5490](v21, -1, -1);
      MEMORY[0x223DD5490](v20, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v29 = *(v0 + 176);
    v28 = *(v0 + 184);
    v30 = *(v0 + 168);
    v31 = v5;
    v32 = sub_2230C3514();

    swift_willThrow();
    if (qword_280D38F60 != -1)
    {
      swift_once();
    }

    v33 = *(v0 + 160);
    v34 = sub_2230C38A4();
    __swift_project_value_buffer(v34, qword_280D39220);

    v35 = v32;
    v36 = sub_2230C3884();
    v37 = sub_2230C3EB4();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = *(v0 + 160);
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v53[0] = v41;
      *v39 = 136446722;
      *(v0 + 80) = v38;
      type metadata accessor for GenerativeAssistantSettingsCascadeSync();

      v42 = sub_2230C3DA4();
      v44 = sub_22309F9F4(v42, v43, v53);

      *(v39 + 4) = v44;
      *(v39 + 12) = 2082;
      *(v39 + 14) = sub_22309F9F4(0x5F286574616E6F64, 0xEA0000000000293ALL, v53);
      *(v39 + 22) = 2114;
      v45 = v32;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 24) = v46;
      *v40 = v46;
      _os_log_impl(&dword_22309D000, v36, v37, "%{public}s - %{public}s unexpected exception %{public}@ caught while preparing store for use", v39, 0x20u);
      sub_2230A2EE8(v40, &qword_27D0553B0, &qword_2230C4C08);
      MEMORY[0x223DD5490](v40, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x223DD5490](v41, -1, -1);
      MEMORY[0x223DD5490](v39, -1, -1);
    }

    else
    {
    }
  }

  v47 = *(v0 + 8);
  v48 = *MEMORY[0x277D85DE8];

  return v47();
}

uint64_t sub_2230A3E44()
{
  v25 = v0;
  v24[1] = *MEMORY[0x277D85DE8];
  v1 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];
  swift_willThrow();

  v6 = v0[25];
  if (qword_280D38F60 != -1)
  {
    swift_once();
  }

  v7 = v0[20];
  v8 = sub_2230C38A4();
  __swift_project_value_buffer(v8, qword_280D39220);

  v9 = v6;
  v10 = sub_2230C3884();
  v11 = sub_2230C3EB4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[20];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24[0] = v15;
    *v13 = 136446722;
    v0[10] = v12;
    type metadata accessor for GenerativeAssistantSettingsCascadeSync();

    v16 = sub_2230C3DA4();
    v18 = sub_22309F9F4(v16, v17, v24);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_22309F9F4(0x5F286574616E6F64, 0xEA0000000000293ALL, v24);
    *(v13 + 22) = 2114;
    v19 = v6;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v20;
    *v14 = v20;
    _os_log_impl(&dword_22309D000, v10, v11, "%{public}s - %{public}s unexpected exception %{public}@ caught while preparing store for use", v13, 0x20u);
    sub_2230A2EE8(v14, &qword_27D0553B0, &qword_2230C4C08);
    MEMORY[0x223DD5490](v14, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x223DD5490](v15, -1, -1);
    MEMORY[0x223DD5490](v13, -1, -1);
  }

  else
  {
  }

  v21 = v0[1];
  v22 = *MEMORY[0x277D85DE8];

  return v21();
}

uint64_t sub_2230A4104(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553F0, &unk_2230C4D60);
    v2 = sub_2230C3F64();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_22309FBCC(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_2230A4CE0(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_2230A4CE0(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_2230A4CE0(v32, v33);
    v17 = *(v2 + 40);
    result = sub_2230C3F04();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
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
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_2230A4CE0(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2230A43CC(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553E8, &qword_2230C4D58);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

double sub_2230A44B4()
{
  qword_280D39070 = 0;
  result = 0.0;
  xmmword_280D39050 = 0u;
  unk_280D39060 = 0u;
  return result;
}

uint64_t sub_2230A44CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_280D39048 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_2230A2E80(&xmmword_280D39050, v6, &qword_27D055408, &qword_2230C4D78);
  v2 = v7;
  sub_2230A2EE8(v6, &qword_27D055408, &qword_2230C4D78);
  if (!v2)
  {
    v3 = type metadata accessor for GenerativeAssistantSettingsCascadeSync();
    v4 = swift_allocObject();
    v7 = v3;
    v8 = &off_283671400;
    v6[0] = v4;
    swift_beginAccess();
    sub_2230A5B3C(v6, &xmmword_280D39050);
    swift_endAccess();
  }

  return sub_2230A2E80(&xmmword_280D39050, a1, &qword_27D055408, &qword_2230C4D78);
}

uint64_t sub_2230A45F8(uint64_t a1, char *a2)
{
  v3 = v2;
  v5 = *a2;
  if (qword_280D38F60 != -1)
  {
    swift_once();
  }

  v6 = sub_2230C38A4();
  __swift_project_value_buffer(v6, qword_280D39220);
  sub_2230A2E80(a1, v30, &qword_27D0553D0, &qword_2230C4D28);

  v7 = sub_2230C3884();
  v8 = sub_2230C3EC4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v9 = 136446978;
    *&v28 = v3;
    type metadata accessor for GenerativeAssistantSettingsSyncHandler();

    v10 = sub_2230C3DA4();
    v12 = sub_22309F9F4(v10, v11, &v27);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_22309F9F4(0xD000000000000018, 0x80000002230C6C70, &v27);
    *(v9 + 22) = 2082;
    LOBYTE(v28) = v5;
    v13 = sub_2230C3DA4();
    v15 = sub_22309F9F4(v13, v14, &v27);

    *(v9 + 24) = v15;
    *(v9 + 32) = 2082;
    sub_2230A2E80(v30, &v28, &qword_27D0553D0, &qword_2230C4D28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553D0, &qword_2230C4D28);
    v16 = sub_2230C3DA4();
    v17 = v5;
    v19 = v18;
    sub_2230A2EE8(v30, &qword_27D0553D0, &qword_2230C4D28);
    v20 = sub_22309F9F4(v16, v19, &v27);
    v5 = v17;

    *(v9 + 34) = v20;
    _os_log_impl(&dword_22309D000, v7, v8, "%{public}s - %{public}s %{public}s =  %{public}s", v9, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x223DD5490](v26, -1, -1);
    MEMORY[0x223DD5490](v9, -1, -1);
  }

  else
  {

    sub_2230A2EE8(v30, &qword_27D0553D0, &qword_2230C4D28);
  }

  sub_2230A2E80(a1, &v28, &qword_27D0553D0, &qword_2230C4D28);
  if (!v29)
  {
    return sub_2230A2EE8(&v28, &qword_27D0553D0, &qword_2230C4D28);
  }

  sub_2230A4CE0(&v28, v30);
  v21 = *(v3 + 16);
  if (v21)
  {
    __swift_project_boxed_opaque_existential_0Tm(v30, v31);
    v22 = v21;
    v23 = sub_2230C3FA4();
    LOBYTE(v28) = v5;
    GenerativeAssistantSettingsUserDefaults.Key.rawValue.getter();
    v24 = sub_2230C3D74();

    [v22 setObject:v23 forKey:v24];

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v30);
}

GenerativeAssistantSettings::GenerativeAssistantSettingsUserDefaults::Key_optional sub_2230A4978(uint64_t a1, uint64_t a2, void *a3)
{

  v5._countAndFlagsBits = a2;
  v5._object = a3;
  result.value = GenerativeAssistantSettingsUserDefaults.Key.init(rawValue:)(v5).value;
  if (v19[0] <= 2u)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553F8, &qword_2230C6120);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2230C4C70;
    *(inited + 32) = 0x656C62616E457369;
    *(inited + 40) = 0xE900000000000064;
    if (qword_280D39240)
    {

      sub_22309F000();
    }

    if (qword_280D38F68 != -1)
    {
      swift_once();
    }

    v8 = qword_280D39238;
    if (qword_280D39238)
    {
      v9 = sub_2230C3D74();
      v10 = [v8 BOOLForKey_];
    }

    else
    {
      v10 = 0;
    }

    v11 = MEMORY[0x277D839B0];
    *(inited + 48) = v10;
    *(inited + 72) = v11;
    *(inited + 80) = 0xD000000000000016;
    *(inited + 88) = 0x80000002230C66F0;
    if (qword_280D39240)
    {

      sub_22309F000();
    }

    if (v8)
    {
      v12 = sub_2230C3D74();
      v13 = [v8 BOOLForKey_];
    }

    else
    {
      v13 = 0;
    }

    *(inited + 96) = v13;
    *(inited + 120) = v11;
    *(inited + 128) = 0x6F72507075746573;
    *(inited + 136) = 0xEB0000000074706DLL;
    if (qword_280D39240)
    {

      sub_22309F000();
    }

    if (v8)
    {
      v14 = sub_2230C3D74();
      v15 = [v8 BOOLForKey_];
    }

    else
    {
      v15 = 0;
    }

    *(inited + 168) = v11;
    *(inited + 144) = v15;
    v16 = sub_2230C3020(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055400, &qword_2230C4D70);
    swift_arrayDestroy();
    sub_2230A44CC(v19);
    if (v20)
    {
      sub_22309F744(v19, v18);
      sub_2230A2EE8(v19, &qword_27D055408, &qword_2230C4D78);
      v17 = *__swift_project_boxed_opaque_existential_0Tm(v18, v18[3]);
      sub_2230A2F70(v16);

      return __swift_destroy_boxed_opaque_existential_0(v18);
    }

    else
    {

      return sub_2230A2EE8(v19, &qword_27D055408, &qword_2230C4D78);
    }
  }

  return result;
}

uint64_t sub_2230A4C84()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

_OWORD *sub_2230A4CE0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_2230A4CF0()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2230C3D24();

  v7[0] = 0;
  v2 = [v0 initWithJSONDictionary:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_2230C3514();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

id sub_2230A4DD8()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2230C3D74();

  v7[0] = 0;
  v2 = [v0 initWithSourceItemIdentifier:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_2230C3514();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_2230A4EA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2230A4F64;

  return sub_2230A325C(a1, v4, v5, v7, v6);
}

uint64_t sub_2230A4F64()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_2230A5058()
{
  result = qword_280D38E48[0];
  if (!qword_280D38E48[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_280D38E48);
  }

  return result;
}

unint64_t sub_2230A50D0(char a1)
{
  v3 = *(v1 + 40);
  sub_2230C4014();
  GenerativeAssistantSettingsUserDefaults.Key.rawValue.getter();
  sub_2230C3DC4();

  v4 = sub_2230C4034();

  return sub_2230A52F8(a1, v4);
}

unint64_t sub_2230A515C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2230C4014();
  sub_2230C3DC4();
  v6 = sub_2230C4034();

  return sub_2230A5884(a1, a2, v6);
}

unint64_t sub_2230A51D4(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_2230C4014();
  sub_2230C3DC4();

  v4 = sub_2230C4034();

  return sub_2230A593C(a1, v4);
}

unint64_t sub_2230A52F8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE900000000000064;
      v8 = 0x656C62616E457369;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x6F72507075746573;
          v7 = 0xEB0000000074706DLL;
          break;
        case 2:
          v8 = 0xD000000000000016;
          v7 = 0x80000002230C66F0;
          break;
        case 3:
          v8 = 0xD000000000000013;
          v7 = 0x80000002230C6710;
          break;
        case 4:
          v8 = 0xD000000000000018;
          v7 = 0x80000002230C6730;
          break;
        case 5:
          v8 = 0xD00000000000001DLL;
          v7 = 0x80000002230C6750;
          break;
        case 6:
          v8 = 0xD000000000000022;
          v7 = 0x80000002230C6770;
          break;
        case 7:
          v8 = 0xD00000000000001ALL;
          v7 = 0x80000002230C67A0;
          break;
        case 8:
          v8 = 0xD00000000000001FLL;
          v7 = 0x80000002230C67C0;
          break;
        case 9:
          v8 = 0xD000000000000017;
          v7 = 0x80000002230C67E0;
          break;
        case 0xA:
          v8 = 0xD000000000000011;
          v7 = 0x80000002230C6800;
          break;
        case 0xB:
          v8 = 0xD000000000000014;
          v7 = 0x80000002230C6820;
          break;
        case 0xC:
          v8 = 0xD00000000000001CLL;
          v7 = 0x80000002230C6840;
          break;
        case 0xD:
          v8 = 0xD00000000000001FLL;
          v7 = 0x80000002230C6860;
          break;
        case 0xE:
          v8 = 0x6C6365447473616CLL;
          v7 = 0xEF65746144656E69;
          break;
        case 0xF:
          v8 = 0xD000000000000027;
          v7 = 0x80000002230C6890;
          break;
        case 0x10:
          v8 = 0xD00000000000002ALL;
          v7 = 0x80000002230C68C0;
          break;
        case 0x11:
          v8 = 0xD00000000000001BLL;
          v7 = 0x80000002230C68F0;
          break;
        case 0x12:
          v8 = 0xD000000000000018;
          v7 = 0x80000002230C6910;
          break;
        case 0x13:
          v8 = 0xD00000000000002ALL;
          v7 = 0x80000002230C6930;
          break;
        case 0x14:
          v8 = 0xD00000000000001ELL;
          v7 = 0x80000002230C6960;
          break;
        default:
          break;
      }

      v9 = 0x656C62616E457369;
      v10 = 0xE900000000000064;
      switch(a1)
      {
        case 1:
          v10 = 0xEB0000000074706DLL;
          if (v8 == 0x6F72507075746573)
          {
            goto LABEL_63;
          }

          goto LABEL_64;
        case 2:
          v10 = 0x80000002230C66F0;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 3:
          v10 = 0x80000002230C6710;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 4:
          v10 = 0x80000002230C6730;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 5:
          v10 = 0x80000002230C6750;
          if (v8 != 0xD00000000000001DLL)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 6:
          v10 = 0x80000002230C6770;
          if (v8 != 0xD000000000000022)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 7:
          v10 = 0x80000002230C67A0;
          if (v8 != 0xD00000000000001ALL)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 8:
          v9 = 0xD00000000000001FLL;
          v10 = 0x80000002230C67C0;
          goto LABEL_62;
        case 9:
          v10 = 0x80000002230C67E0;
          if (v8 != 0xD000000000000017)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 10:
          v10 = 0x80000002230C6800;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 11:
          v10 = 0x80000002230C6820;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 12:
          v10 = 0x80000002230C6840;
          if (v8 != 0xD00000000000001CLL)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 13:
          v10 = 0x80000002230C6860;
          if (v8 != 0xD00000000000001FLL)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 14:
          v10 = 0xEF65746144656E69;
          if (v8 != 0x6C6365447473616CLL)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 15:
          v10 = 0x80000002230C6890;
          if (v8 != 0xD000000000000027)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 16:
          v10 = 0x80000002230C68C0;
          if (v8 != 0xD00000000000002ALL)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 17:
          v10 = 0x80000002230C68F0;
          if (v8 != 0xD00000000000001BLL)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 18:
          v10 = 0x80000002230C6910;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 19:
          v10 = 0x80000002230C6930;
          if (v8 != 0xD00000000000002ALL)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 20:
          v10 = 0x80000002230C6960;
          if (v8 != 0xD00000000000001ELL)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        default:
LABEL_62:
          if (v8 != v9)
          {
            goto LABEL_64;
          }

LABEL_63:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_64:
          v11 = sub_2230C3FB4();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_2230A5884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2230C3FB4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2230A593C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v19 = ~v3;
    v5 = 0xE900000000000044;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v21 + 48) + v4);
      if (v7 <= 1)
      {
        if (*(*(v21 + 48) + v4))
        {
          v8 = 0x6C646E7542707061;
        }

        else
        {
          v8 = 0x496D616441707061;
        }

        if (*(*(v21 + 48) + v4))
        {
          v9 = 0xEB00000000444965;
        }

        else
        {
          v9 = 0xE900000000000044;
        }
      }

      else if (v7 == 2)
      {
        v8 = 0xD000000000000017;
        v9 = 0x80000002230C6A10;
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0xD000000000000013;
        }

        else
        {
          v8 = 0xD00000000000001ALL;
        }

        if (v7 == 3)
        {
          v9 = 0x80000002230C6A30;
        }

        else
        {
          v9 = 0x80000002230C6A50;
        }
      }

      v10 = 0xD000000000000017;
      v11 = 0xD00000000000001ALL;
      if (v6 == 3)
      {
        v11 = 0xD000000000000013;
        v12 = 0x80000002230C6A30;
      }

      else
      {
        v12 = 0x80000002230C6A50;
      }

      if (v6 != 2)
      {
        v10 = v11;
      }

      v13 = 0x80000002230C6A10;
      if (v6 != 2)
      {
        v13 = v12;
      }

      if (v6)
      {
        v14 = 0x6C646E7542707061;
      }

      else
      {
        v14 = 0x496D616441707061;
      }

      if (v6)
      {
        v5 = 0xEB00000000444965;
      }

      v15 = v6 <= 1 ? v14 : v10;
      v16 = v6 <= 1 ? v5 : v13;
      if (v8 == v15 && v9 == v16)
      {
        break;
      }

      v17 = sub_2230C3FB4();

      if ((v17 & 1) == 0)
      {
        v4 = (v4 + 1) & v19;
        v5 = 0xE900000000000044;
        if ((*(v20 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_2230A5B3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055408, &qword_2230C4D78);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2230A5BAC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000044;
  v3 = 0xD000000000000013;
  v4 = 0x496D616441707061;
  v5 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0x6C646E7542707061;
    }

    else
    {
      v6 = 0x496D616441707061;
    }

    if (v5)
    {
      v7 = 0xEB00000000444965;
    }

    else
    {
      v7 = 0xE900000000000044;
    }
  }

  else if (a1 == 2)
  {
    v7 = 0x80000002230C6A10;
    v6 = 0xD000000000000017;
  }

  else
  {
    if (a1 == 3)
    {
      v6 = 0xD000000000000013;
    }

    else
    {
      v6 = 0xD00000000000001ALL;
    }

    if (v5 == 3)
    {
      v7 = 0x80000002230C6A30;
    }

    else
    {
      v7 = 0x80000002230C6A50;
    }
  }

  if (a2 <= 1u)
  {
    v3 = 0x6C646E7542707061;
    v8 = 0xEB00000000444965;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x80000002230C6A10;
    v4 = 0xD000000000000017;
    v8 = 0x80000002230C6A50;
    if (a2 == 3)
    {
      v8 = 0x80000002230C6A30;
    }

    else
    {
      v3 = 0xD00000000000001ALL;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v4;
  }

  else
  {
    v10 = v3;
  }

  if (v9)
  {
    v11 = v2;
  }

  else
  {
    v11 = v8;
  }

  if (v6 == v10 && v7 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_2230C3FB4();
  }

  return v12 & 1;
}

uint64_t sub_2230A5D28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = a1;
    v12 = 0xE000000000000000;
    v13 = 0x6F72507075746573;
    v14 = 0xEB0000000074706DLL;
    if (a1 != 2)
    {
      v13 = 0xD000000000000016;
      v14 = 0x80000002230C66F0;
    }

    if (a1)
    {
      v11 = 0x656C62616E457369;
      v12 = 0xE900000000000064;
    }

    if (a1 <= 1u)
    {
      v9 = v11;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v12;
    }

    else
    {
      v10 = v14;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x6E496E676973;
    v5 = 0xE700000000000000;
    v6 = 0x74754F6E676973;
    if (a1 != 7)
    {
      v6 = 0x5065646172677075;
      v5 = 0xEB000000006E616CLL;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v3 = v5;
    }

    v7 = 0x43746E756F636361;
    v8 = 0xEF736C6F72746E6FLL;
    if (a1 != 4)
    {
      v7 = 0x6168437055746573;
      v8 = 0xEC00000054504774;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v15 = 0xE900000000000064;
        if (v9 != 0x656C62616E457369)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v15 = 0xE000000000000000;
        if (v9 != a2)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_49;
    }

    if (a2 != 2)
    {
      v15 = 0x80000002230C66F0;
      if (v9 != 0xD000000000000016)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v16 = 0x6F72507075746573;
    v17 = 7630957;
    goto LABEL_46;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      v15 = 0xE600000000000000;
      if (v9 != 0x6E496E676973)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    if (a2 == 7)
    {
      v15 = 0xE700000000000000;
      if (v9 != 0x74754F6E676973)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v16 = 0x5065646172677075;
    v17 = 7233900;
LABEL_46:
    v15 = v17 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v9 != v16)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  if (a2 == 4)
  {
    v15 = 0xEF736C6F72746E6FLL;
    if (v9 != 0x43746E756F636361)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v15 = 0xEC00000054504774;
    if (v9 != 0x6168437055746573)
    {
LABEL_51:
      v18 = sub_2230C3FB4();
      goto LABEL_52;
    }
  }

LABEL_49:
  if (v10 != v15)
  {
    goto LABEL_51;
  }

  v18 = 1;
LABEL_52:

  return v18 & 1;
}

uint64_t sub_2230A6024(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 1769105779;
  if (a1 == 2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v4 = 0x54676E6974697277;
    v5 = 0xEC000000736C6F6FLL;
  }

  v6 = 0xD000000000000010;
  if (a1)
  {
    v3 = 0x80000002230C6990;
  }

  else
  {
    v6 = 0x54504774616863;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 1769105779;
    }

    else
    {
      v11 = 0x54676E6974697277;
    }

    if (a2 == 2)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xEC000000736C6F6FLL;
    }

    if (v7 != v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000010;
    }

    else
    {
      v9 = 0x54504774616863;
    }

    if (a2)
    {
      v10 = 0x80000002230C6990;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    if (v7 != v9)
    {
      goto LABEL_31;
    }
  }

  if (v8 != v10)
  {
LABEL_31:
    v12 = sub_2230C3FB4();
    goto LABEL_32;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_2230A616C()
{
  sub_2230C3DC4();
}

unint64_t sub_2230A62DC()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x6F72507075746573;
    if (v1 != 2)
    {
      v6 = 0xD000000000000016;
    }

    v7 = 0x656C62616E457369;
    if (!*v0)
    {
      v7 = *v0;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6E496E676973;
    v3 = 0x74754F6E676973;
    if (v1 != 7)
    {
      v3 = 0x5065646172677075;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x43746E756F636361;
    if (v1 != 4)
    {
      v4 = 0x6168437055746573;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t GenerativeAssistantSettingsDestination.fullURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055410, &qword_2230C4D90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v23 - v5;
  v7 = *v1;
  v23[0] = 0xD00000000000003DLL;
  v23[1] = 0x80000002230C6CC0;
  MEMORY[0x223DD4D40](63, 0xE100000000000000);
  MEMORY[0x223DD4D40](2003134838, 0xE400000000000000);
  MEMORY[0x223DD4D40](61, 0xE100000000000000);
  if (v7 <= 3)
  {
    v16 = 0xE000000000000000;
    v17 = 0xEB0000000074706DLL;
    v18 = 0x6F72507075746573;
    if (v7 != 2)
    {
      v18 = 0xD000000000000016;
      v17 = 0x80000002230C66F0;
    }

    v19 = 0x656C62616E457369;
    if (v7)
    {
      v16 = 0xE900000000000064;
    }

    else
    {
      v19 = v7;
    }

    if (v7 <= 1)
    {
      v14 = v19;
    }

    else
    {
      v14 = v18;
    }

    if (v7 <= 1)
    {
      v15 = v16;
    }

    else
    {
      v15 = v17;
    }
  }

  else
  {
    v8 = 0xE600000000000000;
    v9 = 0x6E496E676973;
    v10 = 0xE700000000000000;
    v11 = 0x74754F6E676973;
    if (v7 != 7)
    {
      v11 = 0x5065646172677075;
      v10 = 0xEB000000006E616CLL;
    }

    if (v7 != 6)
    {
      v9 = v11;
      v8 = v10;
    }

    v12 = 0xEF736C6F72746E6FLL;
    v13 = 0x43746E756F636361;
    if (v7 != 4)
    {
      v13 = 0x6168437055746573;
      v12 = 0xEC00000054504774;
    }

    if (v7 <= 5)
    {
      v14 = v13;
    }

    else
    {
      v14 = v9;
    }

    if (v7 <= 5)
    {
      v15 = v12;
    }

    else
    {
      v15 = v8;
    }
  }

  MEMORY[0x223DD4D40](v14, v15);

  sub_2230C3574();

  v20 = sub_2230C3594();
  v21 = *(v20 - 8);
  result = (*(v21 + 48))(v6, 1, v20);
  if (result != 1)
  {
    return (*(v21 + 32))(a1, v6, v20);
  }

  __break(1u);
  return result;
}

GenerativeAssistantSettings::GenerativeAssistantSettingsDestination::Origin_optional __swiftcall GenerativeAssistantSettingsDestination.Origin.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2230C3F74();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t GenerativeAssistantSettingsDestination.Origin.rawValue.getter()
{
  v1 = 0x54504774616863;
  v2 = 1769105779;
  if (*v0 != 2)
  {
    v2 = 0x54676E6974697277;
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

uint64_t sub_2230A6794()
{
  v1 = *v0;
  sub_2230C4014();
  sub_2230C3DC4();

  return sub_2230C4034();
}

uint64_t sub_2230A685C()
{
  *v0;
  *v0;
  *v0;
  sub_2230C3DC4();
}

uint64_t sub_2230A6910()
{
  v1 = *v0;
  sub_2230C4014();
  sub_2230C3DC4();

  return sub_2230C4034();
}

void sub_2230A69E0(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x54504774616863;
  v4 = 0xE400000000000000;
  v5 = 1769105779;
  if (*v1 != 2)
  {
    v5 = 0x54676E6974697277;
    v4 = 0xEC000000736C6F6FLL;
  }

  if (*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x80000002230C6990;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

GenerativeAssistantSettings::GenerativeAssistantSettingsDestination_optional __swiftcall GenerativeAssistantSettingsDestination.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2230C3F74();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t GenerativeAssistantSettingsDestination.fullURL(origin:)(unsigned __int8 *a1)
{
  v3 = sub_2230C34F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_2230C3594();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LODWORD(a1) = *a1;
  v17[15] = *v1;
  GenerativeAssistantSettingsDestination.fullURL.getter(v12);
  sub_2230C34E4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055418, &qword_2230C4D98);
  v13 = *(v4 + 72);
  v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2230C4D80;
  (*(v4 + 16))(v15 + v14, v7, v3);
  sub_2230C3584();

  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

GenerativeAssistantSettings::GenerativeAssistantSettingsDestination::Action_optional __swiftcall GenerativeAssistantSettingsDestination.Action.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2230C3F74();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t GenerativeAssistantSettingsDestination.Action.rawValue.getter()
{
  v1 = 0x6E496E676973;
  if (*v0 != 1)
  {
    v1 = 0x74754F6E676973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6168437055746573;
  }
}

uint64_t sub_2230A6E68(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6E496E676973;
  if (v2 != 1)
  {
    v4 = 0x74754F6E676973;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6168437055746573;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEC00000054504774;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6E496E676973;
  if (*a2 != 1)
  {
    v8 = 0x74754F6E676973;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6168437055746573;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEC00000054504774;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2230C3FB4();
  }

  return v11 & 1;
}

uint64_t sub_2230A6F68()
{
  v1 = *v0;
  sub_2230C4014();
  sub_2230C3DC4();

  return sub_2230C4034();
}

uint64_t sub_2230A7010()
{
  *v0;
  *v0;
  sub_2230C3DC4();
}

uint64_t sub_2230A70A4()
{
  v1 = *v0;
  sub_2230C4014();
  sub_2230C3DC4();

  return sub_2230C4034();
}

void sub_2230A7154(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000054504774;
  v4 = 0xE600000000000000;
  v5 = 0x6E496E676973;
  if (v2 != 1)
  {
    v5 = 0x74754F6E676973;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6168437055746573;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_2230A71C8()
{
  result = qword_27D055420;
  if (!qword_27D055420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D055420);
  }

  return result;
}

unint64_t sub_2230A7220()
{
  result = qword_27D055428;
  if (!qword_27D055428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D055428);
  }

  return result;
}

unint64_t sub_2230A7284()
{
  result = qword_27D055430;
  if (!qword_27D055430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D055430);
  }

  return result;
}

uint64_t sub_2230A72D8()
{
  v1 = *v0;
  sub_2230C4014();
  sub_2230A616C();
  return sub_2230C4034();
}

uint64_t sub_2230A7328()
{
  v1 = *v0;
  sub_2230C4014();
  sub_2230A616C();
  return sub_2230C4034();
}

uint64_t sub_2230A7378@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeAssistantSettingsDestination.entityIdentifierString.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2230A73A4()
{
  result = qword_27D055438;
  if (!qword_27D055438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D055440, &qword_2230C4F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D055438);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenerativeAssistantSettingsDestination(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GenerativeAssistantSettingsDestination(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenerativeAssistantSettingsDestination.Action(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GenerativeAssistantSettingsDestination.Action(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t GenerativeAssistantSettingsProvider.LLMProvider.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2230C3F74();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2230A779C()
{
  sub_2230C4014();
  sub_2230C3DC4();
  return sub_2230C4034();
}

uint64_t sub_2230A7808()
{
  sub_2230C4014();
  sub_2230C3DC4();
  return sub_2230C4034();
}

uint64_t sub_2230A7858@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2230C3F74();

  *a2 = v5 != 0;
  return result;
}

uint64_t static GenerativeAssistantSettingsProvider.shared.getter()
{
  v0 = type metadata accessor for GenerativeAssistantSettingsProvider();

  return MEMORY[0x2821FEAF0](v0, &unk_280D38F10);
}

uint64_t sub_2230A791C()
{
  v0 = sub_2230C3724();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2230C3774();
  sub_2230C3764();
  sub_2230C3754();

  result = (*(v1 + 88))(v4, v0);
  if (result != *MEMORY[0x277D0D670])
  {
    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_2230A7A58(uint64_t (*a1)(void))
{
  sub_2230C3774();
  sub_2230C3764();
  v2 = a1();

  return v2;
}

uint64_t sub_2230A7AB4()
{
  sub_2230C3774();
  sub_2230C3764();
  sub_2230C3734();
}

Swift::String __swiftcall GenerativeAssistantSettingsProvider.LLMProvider.localizedDisplayName()()
{
  v0 = sub_2230C3644();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2230C3524();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2230C3D64();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_2230C3534();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_2230C3D54();
  if (qword_27D055328 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v2, qword_27D057290);
  (*(v3 + 16))(v6, v11, v2);
  sub_2230C3634();
  sub_2230C3544();
  v12 = sub_2230C3D94();
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

unint64_t sub_2230A7D4C()
{
  result = qword_27D055448;
  if (!qword_27D055448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D055448);
  }

  return result;
}

GenerativeAssistantSettings::EnablementUIDismissType_optional __swiftcall EnablementUIDismissType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2230A7E94(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t GenerativeAssistantSettingsOnboarding.init(enablementDelegate:requestType:)@<X0>(__int128 *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  *(a3 + 40) = 518;
  result = sub_2230A7E94(a1, a3);
  *(a3 + 40) = v4;
  return result;
}

uint64_t GenerativeAssistantSettingsOnboarding.init(enablementDelegate:isExplicitRequest:)@<X0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 40) = 6;
  result = sub_2230A7E94(a1, a3);
  *(a3 + 41) = a2;
  return result;
}

uint64_t GenerativeAssistantSettingsOnboarding.init(enablementDelegate:requestType:isExplicitRequest:)@<X0>(__int128 *a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  *(a4 + 40) = 6;
  result = sub_2230A7E94(a1, a4);
  *(a4 + 40) = v6;
  *(a4 + 41) = a3;
  return result;
}

uint64_t GenerativeAssistantSettingsOnboarding.makeUIViewController(context:)()
{
  sub_22309F744(v0, v7);
  v1 = *(v0 + 40);
  v2 = *(v0 + 41);
  sub_2230C3804();
  sub_22309F744(v7, v6);
  v3 = swift_allocObject();
  sub_2230A7E94(v6, v3 + 16);
  *(v3 + 56) = v1;
  *(v3 + 57) = v2 & 1;
  v4 = sub_2230C37F4();
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v4;
}

uint64_t sub_2230A8024()
{
  sub_22309F744(v0, v7);
  v1 = *(v0 + 40);
  v2 = *(v0 + 41);
  sub_2230C3804();
  sub_22309F744(v7, v6);
  v3 = swift_allocObject();
  sub_2230A7E94(v6, v3 + 16);
  *(v3 + 56) = v1;
  *(v3 + 57) = v2 & 1;
  v4 = sub_2230C37F4();
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v4;
}

uint64_t sub_2230A8128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2230A8990();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2230A818C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2230A8990();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2230A820C()
{
  sub_2230A8990();
  sub_2230C3A94();
  __break(1u);
}

char *GenerativeAssistantEnablementNavigationController.__allocating_init(enablementDelegate:requestType:isExplicitRequest:)(uint64_t *a1, char *a2, char a3)
{
  v4 = v3;
  v7 = *a2;
  v8 = [objc_allocWithZone(v4) init];
  [v8 setModalInPresentation_];
  sub_2230C3804();
  sub_22309F744(a1, v13);
  v9 = swift_allocObject();
  sub_2230A7E94(v13, v9 + 16);
  *(v9 + 56) = v7;
  *(v9 + 57) = a3 & 1;
  v10 = sub_2230C37F4();
  __swift_destroy_boxed_opaque_existential_0(a1);
  v11 = *&v8[OBJC_IVAR____TtC27GenerativeAssistantSettings49GenerativeAssistantEnablementNavigationController_enablementNavigationController];
  *&v8[OBJC_IVAR____TtC27GenerativeAssistantSettings49GenerativeAssistantEnablementNavigationController_enablementNavigationController] = v10;

  return v8;
}

void sub_2230A8340()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for GenerativeAssistantEnablementNavigationController();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC27GenerativeAssistantSettings49GenerativeAssistantEnablementNavigationController_enablementNavigationController];
  if (v1)
  {
    v2 = v1;
    [v0 addChildViewController_];
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      v5 = [v2 view];
      if (v5)
      {
        v6 = v5;
        [v4 addSubview_];

        [v2 didMoveToParentViewController_];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

id GenerativeAssistantEnablementNavigationController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2230C3D74();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id GenerativeAssistantEnablementNavigationController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC27GenerativeAssistantSettings49GenerativeAssistantEnablementNavigationController_enablementNavigationController] = 0;
  if (a2)
  {
    v5 = sub_2230C3D74();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for GenerativeAssistantEnablementNavigationController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id GenerativeAssistantEnablementNavigationController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id GenerativeAssistantEnablementNavigationController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC27GenerativeAssistantSettings49GenerativeAssistantEnablementNavigationController_enablementNavigationController] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GenerativeAssistantEnablementNavigationController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id GenerativeAssistantEnablementNavigationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenerativeAssistantEnablementNavigationController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2230A87E4()
{
  result = qword_27D055458;
  if (!qword_27D055458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D055458);
  }

  return result;
}

unint64_t sub_2230A883C()
{
  result = qword_27D055460;
  if (!qword_27D055460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D055460);
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2230A88D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2230A891C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2230A8990()
{
  result = qword_27D055468;
  if (!qword_27D055468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D055468);
  }

  return result;
}

BOOL static GenerativeAssistantSettingsController.available()()
{
  v0 = sub_2230C3714();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2230C3704();
  v5 = sub_2230C36D4();
  (*(v1 + 8))(v4, v0);
  return (v5 & 1) == 0;
}

id GenerativeAssistantSettingsController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2230C3D74();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id GenerativeAssistantSettingsController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  sub_2230C3704();
  if (a2)
  {
    v6 = sub_2230C3D74();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for GenerativeAssistantSettingsController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

uint64_t type metadata accessor for GenerativeAssistantSettingsController()
{
  result = qword_27D055478;
  if (!qword_27D055478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id GenerativeAssistantSettingsController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id GenerativeAssistantSettingsController.init(coder:)(void *a1)
{
  sub_2230C3704();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GenerativeAssistantSettingsController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id GenerativeAssistantSettingsController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenerativeAssistantSettingsController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall GenerativeAssistantSettingsController.viewDidLoad()()
{
  v1 = v0;
  v2 = sub_2230C37E4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_2230C3714();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GenerativeAssistantSettingsController();
  v23.receiver = v1;
  v23.super_class = v9;
  objc_msgSendSuper2(&v23, sel_viewDidLoad);
  sub_2230C3704();
  v10 = sub_2230C36D4();
  (*(v5 + 8))(v8, v4);
  if ((v10 & 1) == 0)
  {
    sub_2230C37D4();
    v11 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055470, &unk_2230C5440));
    v12 = sub_2230C3A24();
    v13 = [v12 view];
    if (v13)
    {
      v14 = v13;
      v15 = [v1 view];
      if (v15)
      {
        v16 = v15;
        [v15 addSubview_];

        v17 = [v1 view];
        if (v17)
        {
          v18 = v17;
          [v17 bounds];
          v20 = v19;
          v22 = v21;

          [v14 setFrame_];
          [v14 setAutoresizingMask_];
          [v1 addChildViewController_];
          [v12 didMoveToParentViewController_];

LABEL_7:
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

    v14 = v12;
    goto LABEL_7;
  }
}

uint64_t sub_2230A9258()
{
  result = sub_2230C3714();
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

uint64_t sub_2230A92E8(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2230AD860;

  return v9(a1, a2);
}

uint64_t sub_2230A9400(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2230A9518;

  return v9(a1, a2);
}

uint64_t sub_2230A9518(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

void sub_2230A9628(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055520, &qword_2230C5828);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = [objc_opt_self() sharedInstance];
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  *(v11 + ((v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_2230AD5C4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2230A9B44;
  aBlock[3] = &block_descriptor_78;
  v12 = _Block_copy(aBlock);

  [v9 getAllIAPsForActiveAccountWithResultHandler_];
  _Block_release(v12);
}

unint64_t sub_2230A981C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v4 = MEMORY[0x277D84F90];
  if (result)
  {
    v5 = result;
    v34 = a3;
    v6 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
      goto LABEL_19;
    }

    v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      do
      {
        v8 = 0;
        v35 = v5 & 0xC000000000000001;
        while (1)
        {
          if (v35)
          {
            v9 = MEMORY[0x223DD4EA0](v8, v5);
          }

          else
          {
            if (v8 >= *(v6 + 16))
            {
              goto LABEL_18;
            }

            v9 = *(v5 + 8 * v8 + 32);
          }

          v10 = v9;
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          v12 = [v9 adamId];
          v13 = [v12 stringValue];

          v14 = sub_2230C3D84();
          v16 = v15;

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_2230BA7FC(0, *(v4 + 16) + 1, 1, v4);
            v4 = result;
          }

          v18 = *(v4 + 16);
          v17 = *(v4 + 24);
          v19 = v18 + 1;
          if (v18 >= v17 >> 1)
          {
            result = sub_2230BA7FC((v17 > 1), v18 + 1, 1, v4);
            v4 = result;
          }

          *(v4 + 16) = v19;
          v20 = v4 + 16 * v18;
          *(v20 + 32) = v14;
          *(v20 + 40) = v16;
          ++v8;
          if (v11 == v7)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        result = sub_2230C3F54();
        v7 = result;
      }

      while (result);
    }

    v19 = *(v4 + 16);
    v21 = v4;
    if (v19)
    {
LABEL_21:
      v22 = 0;
      v23 = v4 + 40;
      v32 = v19 - 1;
      v21 = MEMORY[0x277D84F90];
      v33 = v4 + 40;
      do
      {
        v35 = v21;
        v24 = (v23 + 16 * v22);
        v25 = v22;
        while (1)
        {
          if (v25 >= *(v4 + 16))
          {
            __break(1u);
            return result;
          }

          v26 = *(v24 - 1);
          v27 = *v24;
          v22 = v25 + 1;
          v37[0] = v26;
          v37[1] = v27;
          MEMORY[0x28223BE20](result);
          v31[2] = v37;

          if (sub_2230AC5E8(sub_2230AD6C4, v31, v36))
          {
            break;
          }

          v24 += 2;
          ++v25;
          if (v19 == v22)
          {
            v21 = v35;
            goto LABEL_32;
          }
        }

        v21 = v35;
        result = swift_isUniquelyReferenced_nonNull_native();
        v38 = v21;
        if ((result & 1) == 0)
        {
          result = sub_2230BAAE0(0, *(v21 + 16) + 1, 1);
          v21 = v38;
        }

        v29 = *(v21 + 16);
        v28 = *(v21 + 24);
        if (v29 >= v28 >> 1)
        {
          result = sub_2230BAAE0((v28 > 1), v29 + 1, 1);
          v21 = v38;
        }

        *(v21 + 16) = v29 + 1;
        v30 = v21 + 16 * v29;
        *(v30 + 32) = v26;
        *(v30 + 40) = v27;
        v23 = v33;
      }

      while (v32 != v25);
    }

LABEL_32:
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  v37[0] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055520, &qword_2230C5828);
  return sub_2230C3E44();
}

uint64_t sub_2230A9B44(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_2230AD67C(0, &qword_27D055528, 0x277CEC3A0);
    v4 = sub_2230C3E14();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_2230A9BE8(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 81) = a2;
  *(v6 + 80) = a1;
  return MEMORY[0x2822009F8](sub_2230A9C14, 0, 0);
}

uint64_t sub_2230A9C14()
{
  v1 = *(v0 + 24);
  v2 = sub_2230BDCC0(*(v0 + 32), *(v0 + 40), *(v0 + 80));
  v3 = [v1 arrayForKey_];
  *(v0 + 48) = v3;

  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_2230A9CEC;
  v5 = *(v0 + 16);
  v6 = *(v0 + 81);
  v7 = *(v0 + 80);

  return sub_2230AC694(v3, v7, v6, v5);
}

uint64_t sub_2230A9CEC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v7 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v5 = sub_2230A9F00;
  }

  else
  {

    v5 = sub_2230A9E08;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2230A9E08()
{
  v1 = *(v0 + 64);
  sub_2230C3E04();
  v2 = *(v0 + 64);
  sub_2230AD3E8();
  swift_allocError();
  *v3 = 1;
  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2230A9F00()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2230A9F64()
{
  v2 = *v0;
  v3 = v0[1];
  v5 = v0[2];
  v4 = v0[3];
  v6 = swift_task_alloc();
  *(v1 + 24) = v6;
  *v6 = v1;
  v6[1] = sub_2230AA030;

  return sub_2230A9BE8(3, 1, v2, v3, v5, v4);
}

uint64_t sub_2230AA030(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_2230AA17C, 0, 0);
  }
}

uint64_t sub_2230AA17C()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055518, &qword_2230C5820);
  *v4 = v0;
  v4[1] = sub_2230AA284;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD00000000000001DLL, 0x80000002230C6FB0, sub_2230AD5BC, v2, v5);
}

uint64_t sub_2230AA284()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_2230AA3B8, 0, 0);
}

uint64_t sub_2230AA3D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();

  return v1;
}

uint64_t sub_2230AA448()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();
}

uint64_t sub_2230AA4C0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();

  return v1;
}

uint64_t sub_2230AA534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553D8, &qword_2230C4D30) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_2230AA5FC;

  return sub_2230ACD94();
}

uint64_t sub_2230AA5FC(char a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_2230AA6FC, 0, 0);
}

uint64_t sub_2230AA6FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v1 + OBJC_IVAR____TtC27GenerativeAssistantSettings16SubscriptionInfo_isAppInstalled) = *(v0 + 40);
  v3 = sub_2230C3E84();
  v4 = *(*(v3 - 8) + 56);
  v4(v2, 1, 1, v3);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v1;

  sub_2230BEA64(0, 0, v2, &unk_2230C5780, v5);

  v4(v2, 1, 1, v3);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v1;

  sub_2230BEA64(0, 0, v2, &unk_2230C5790, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2230AA8A8()
{
  sub_22309F744(v0[7] + OBJC_IVAR____TtC27GenerativeAssistantSettings16SubscriptionInfo_appStoreDataSource, (v0 + 2));
  __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v0[5]);
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_2230AA9E0;

  return (sub_2230A9F64)(&type metadata for AppStoreDaemonDataSource, &off_2836719E8);
}

uint64_t sub_2230AA9E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_2230AAD78;
  }

  else
  {
    *(v4 + 80) = a1;
    v7 = sub_2230AAB08;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2230AAB08()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v3 = *(v1 + 16);

  v4 = *(v2 + OBJC_IVAR____TtC27GenerativeAssistantSettings16SubscriptionInfo_accountReportsPaidPlan);
  if (v4 == 2)
  {
    v5 = 0;
  }

  else if (v3)
  {
    if (v4)
    {
      v5 = 2;
    }

    else
    {
      if (qword_27D055338 != -1)
      {
        swift_once();
      }

      v6 = sub_2230C38A4();
      __swift_project_value_buffer(v6, qword_27D0572C0);
      v7 = sub_2230C3884();
      v8 = sub_2230C3EC4();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_22309D000, v7, v8, "Current ChatGPT account reports free plan, but has Apple IAP subscription. This is not supported and will default to free behavior. Please login with the ChatGPT account associated with this IAP subscription.", v9, 2u);
        MEMORY[0x223DD5490](v9, -1, -1);
      }

      v5 = 4;
    }
  }

  else if (v4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  *(v0 + 97) = v5;
  sub_2230C3E64();
  *(v0 + 88) = sub_2230C3E54();
  v11 = sub_2230C3E34();

  return MEMORY[0x2822009F8](sub_2230AACB8, v11, v10);
}

uint64_t sub_2230AACB8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 97);
  v3 = *(v0 + 56);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 96) = v2;

  sub_2230C39C4();
  v4 = *(v0 + 8);
  v5 = *(v0 + 97);

  return v4(v5);
}

uint64_t sub_2230AAD78()
{
  v1 = *(v0 + 72);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  *(v0 + 97) = 1;
  sub_2230C3E64();
  *(v0 + 88) = sub_2230C3E54();
  v3 = sub_2230C3E34();

  return MEMORY[0x2822009F8](sub_2230AACB8, v3, v2);
}

uint64_t sub_2230AAE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055410, &qword_2230C4D90) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2230AAEDC, 0, 0);
}

uint64_t sub_2230AAEDC()
{
  if (qword_27D055320 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = 0xD000000000000011;
  *(v0 + 24) = 0x80000002230C6F30;
  *(v0 + 32) = xmmword_2230C54B0;
  *(v0 + 48) = 49;
  *(v0 + 56) = 0xE100000000000000;

  v2 = sub_2230B2D98(v1, (v0 + 16));
  v4 = v3;
  v6 = v5;
  v8 = v7;
  *(v0 + 96) = v2;
  *(v0 + 104) = v3;
  *(v0 + 112) = v7;
  v9 = swift_task_alloc();
  *(v0 + 120) = v9;
  *v9 = v0;
  v9[1] = sub_2230AB028;
  v10 = *(v0 + 88);

  return sub_2230BD768(v10, 4, 1, v2, v4, v6, v8);
}

uint64_t sub_2230AB028()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;

  v5 = v2[14];
  v6 = v2[13];
  v7 = v2[12];
  if (v0)
  {

    v8 = sub_2230AB3F4;
  }

  else
  {

    v8 = sub_2230AB1B8;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2230AB1B8()
{
  v1 = *(v0 + 88);
  v2 = sub_2230C3594();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  sub_2230C3E64();
  *(v0 + 128) = sub_2230C3E54();
  v4 = sub_2230C3E34();

  return MEMORY[0x2822009F8](sub_2230AB290, v4, v3);
}

uint64_t sub_2230AB290()
{
  v1 = v0[16];
  v2 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v4 = v0[9];

  sub_2230AC4E8(v3, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230AC4E8(v2, v4);

  sub_2230C39C4();
  sub_2230AC558(v2);

  return MEMORY[0x2822009F8](sub_2230AB36C, 0, 0);
}

uint64_t sub_2230AB36C()
{
  v1 = v0[10];
  v2 = v0[9];
  sub_2230AC558(v0[11]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_2230AB3F4()
{
  v1 = *(v0 + 88);
  v2 = sub_2230C3594();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  sub_2230C3E64();
  *(v0 + 128) = sub_2230C3E54();
  v4 = sub_2230C3E34();

  return MEMORY[0x2822009F8](sub_2230AB290, v4, v3);
}

uint64_t sub_2230AB4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a4;
  v5 = swift_task_alloc();
  *(v4 + 40) = v5;
  *v5 = v4;
  v5[1] = sub_2230AB560;

  return static SettingsRemoteLocalization.upgradeIAPString()();
}

uint64_t sub_2230AB560(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v6 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;

  return MEMORY[0x2822009F8](sub_2230AB660, 0, 0);
}

uint64_t sub_2230AB660()
{
  sub_2230C3E64();
  *(v0 + 64) = sub_2230C3E54();
  v2 = sub_2230C3E34();

  return MEMORY[0x2822009F8](sub_2230AB6F4, v2, v1);
}

uint64_t sub_2230AB6F4()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[4];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v3;
  v0[3] = v2;

  sub_2230C39C4();
  v5 = v0[1];

  return v5();
}

uint64_t sub_2230AB7B4()
{
  v1 = OBJC_IVAR____TtC27GenerativeAssistantSettings16SubscriptionInfo__subscriptionSource;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0554E0, &unk_2230C5CF0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC27GenerativeAssistantSettings16SubscriptionInfo__storeURL;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0554E8, &unk_2230C5750);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC27GenerativeAssistantSettings16SubscriptionInfo__upgradeCTAText;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0554F0, &qword_2230C5880);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC27GenerativeAssistantSettings16SubscriptionInfo_appStoreDataSource));
  sub_2230AC5C0(v0 + OBJC_IVAR____TtC27GenerativeAssistantSettings16SubscriptionInfo_subscriptionDelegate);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t type metadata accessor for SubscriptionInfo()
{
  result = qword_27D0554A0;
  if (!qword_27D0554A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2230AB968()
{
  sub_2230ABADC(319, &qword_27D0554B0, &qword_27D0554B8, &unk_2230C5550);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_2230ABADC(319, &qword_27D0554C0, &qword_27D055410, &qword_2230C4D90);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_2230ABADC(319, &qword_27D0554C8, &qword_27D0554D0, &qword_2230C5560);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2230ABADC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_2230C39D4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SubscriptionInfo.Source(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SubscriptionInfo.Source(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2230ABC84()
{
  result = qword_27D0554D8;
  if (!qword_27D0554D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0554D8);
  }

  return result;
}

uint64_t sub_2230ABCE4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SubscriptionInfo();
  result = sub_2230C3994();
  *a1 = result;
  return result;
}

void sub_2230ABD24(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055538, &qword_2230C5840);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_2230AD7A8;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2230AC0E0;
  aBlock[3] = &block_descriptor_88;
  v11 = _Block_copy(aBlock);

  [a2 valueWithCompletion_];
  _Block_release(v11);
}

void sub_2230ABED4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055510, &qword_2230C57A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_2230AD4EC;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2230AC0E0;
  aBlock[3] = &block_descriptor_0;
  v11 = _Block_copy(aBlock);

  [a2 valueWithCompletion_];
  _Block_release(v11);
}

uint64_t sub_2230AC084(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  return sub_2230C3E44();
}

uint64_t sub_2230AC0E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  swift_unknownObjectRetain();
  v9 = a4;
  v8(a2, a3, a4);

  return swift_unknownObjectRelease();
}

uint64_t sub_2230AC16C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();

  *a2 = v5;
  return result;
}

uint64_t sub_2230AC1EC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2230C39C4();
}

uint64_t sub_2230AC260(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();
}

uint64_t sub_2230AC2DC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055410, &qword_2230C4D90);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_2230AC4E8(a1, &v13 - v9);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230AC4E8(v10, v8);

  sub_2230C39C4();
  return sub_2230AC558(v10);
}

double sub_2230AC3E4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_2230AC464(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2230C39C4();
}

uint64_t sub_2230AC4E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055410, &qword_2230C4D90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2230AC558(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055410, &qword_2230C4D90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2230AC5E8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_2230AC694(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v4 + 97) = a3;
  *(v4 + 96) = a2;
  *(v4 + 64) = a1;
  *(v4 + 72) = a4;
  return MEMORY[0x2822009F8](sub_2230AC6BC, 0, 0);
}

uint64_t sub_2230AC6BC()
{
  v1 = v0[8];
  v2 = swift_task_alloc();
  v0[10] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  v0[11] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055530, &qword_2230C5838);
  *v4 = v0;
  v4[1] = sub_2230AC7C4;

  return MEMORY[0x2822007B8](v0 + 7, 0, 0, 0xD00000000000003BLL, 0x80000002230C6F50, sub_2230AD71C, v2, v5);
}

uint64_t sub_2230AC7C4()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2230AC8DC, 0, 0);
}

uint64_t sub_2230AC8DC()
{
  if (*(v0 + 56))
  {
LABEL_2:
    v1 = *(v0 + 8);

    return v1();
  }

  if (*(v0 + 97))
  {
    if (*(*(v0 + 72) + 16))
    {
      v3 = sub_2230A51D4(*(v0 + 96));
      if (v4)
      {
        sub_2230AD43C(*(*(v0 + 72) + 56) + 40 * v3, v0 + 16);
        v5 = sub_2230C3EF4();
        sub_2230AD498(v0 + 16);
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          goto LABEL_2;
        }
      }
    }
  }

  sub_2230AD3E8();
  swift_allocError();
  *v6 = 0;
  swift_willThrow();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2230ACA14(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v4 + 97) = a3;
  *(v4 + 96) = a2;
  *(v4 + 64) = a1;
  *(v4 + 72) = a4;
  return MEMORY[0x2822009F8](sub_2230ACA3C, 0, 0);
}

uint64_t sub_2230ACA3C()
{
  v1 = v0[8];
  v2 = swift_task_alloc();
  v0[10] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  v0[11] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055500, &qword_2230C57A0);
  *v4 = v0;
  v4[1] = sub_2230ACB44;

  return MEMORY[0x2822007B8](v0 + 7, 0, 0, 0xD00000000000003BLL, 0x80000002230C6F50, sub_2230AD3E0, v2, v5);
}

uint64_t sub_2230ACB44()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2230ACC5C, 0, 0);
}

uint64_t sub_2230ACC5C()
{
  if (*(v0 + 56))
  {
LABEL_2:
    v1 = *(v0 + 8);

    return v1();
  }

  if (*(v0 + 97))
  {
    if (*(*(v0 + 72) + 16))
    {
      v3 = sub_2230A51D4(*(v0 + 96));
      if (v4)
      {
        sub_2230AD43C(*(*(v0 + 72) + 56) + 40 * v3, v0 + 16);
        v5 = sub_2230C3EF4();
        sub_2230AD498(v0 + 16);
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          goto LABEL_2;
        }
      }
    }
  }

  sub_2230AD3E8();
  swift_allocError();
  *v6 = 0;
  swift_willThrow();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2230ACDB0()
{
  if (qword_27D055320 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = 0xD000000000000011;
  *(v0 + 24) = 0x80000002230C6F30;
  *(v0 + 32) = xmmword_2230C54B0;
  *(v0 + 48) = 49;
  *(v0 + 56) = 0xE100000000000000;

  v2 = sub_2230B2D98(v1, (v0 + 16));
  v4 = v3;
  *(v0 + 64) = v2;
  *(v0 + 72) = v3;
  *(v0 + 80) = v5;
  if (v5)
  {

    MEMORY[0x223DD4D40](47, 0xE100000000000000);
    MEMORY[0x223DD4D40](0x6C646E7542707061, 0xEB00000000444965);
    v6 = sub_2230C3D74();
  }

  else
  {
    v6 = sub_2230C3D74();
  }

  v7 = [v4 stringForKey_];
  *(v0 + 88) = v7;

  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  *v8 = v0;
  v8[1] = sub_2230ACF84;

  return sub_2230ACA14(v7, 1, 1, v2);
}

uint64_t sub_2230ACF84(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = sub_2230AD1AC;
  }

  else
  {

    *(v4 + 112) = a1;
    v7 = sub_2230AD0B4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2230AD0B4()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  sub_2230C3D84();

  sub_2230AD67C(0, &qword_27D0554F8, 0x277CC1E70);
  v6 = sub_2230C3ED4();

  if (v2)
  {
  }

  else
  {
  }

  v7 = v0[1];

  return v7(v2 == 0);
}

uint64_t sub_2230AD1AC()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[9];

  v6 = v0[1];

  return v6(0);
}

uint64_t sub_2230AD238(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2230A4F64;

  return sub_2230AAE28(a1, v4, v5, v6);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2230AD32C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2230AD85C;

  return sub_2230AB4CC(a1, v4, v5, v6);
}

unint64_t sub_2230AD3E8()
{
  result = qword_27D055508;
  if (!qword_27D055508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D055508);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2230AD524(uint64_t *a1, int a2)
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

uint64_t sub_2230AD56C(uint64_t result, int a2, int a3)
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

unint64_t sub_2230AD5C4(unint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055520, &qword_2230C5828) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2230A981C(a1, a2, v2 + v6, v7);
}

uint64_t sub_2230AD67C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_2230AD6C4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2230C3FB4() & 1;
  }
}

uint64_t objectdestroy_67Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

id sub_2230AD86C(void *a1)
{
  v1 = a1;
  v2 = sub_2230C3D74();
  v3 = [v1 BOOLForKey_];

  return v3;
}

uint64_t sub_2230AD8F0(uint64_t a1)
{
  v2 = v1;
  v38 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553D8, &qword_2230C4D30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = &v33 - v5;
  v6 = sub_2230C3914();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v34 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055678, &qword_2230C5AB0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553A0, &qword_2230C4BC0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v35 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v33 - v19;
  swift_getKeyPath();
  swift_getKeyPath();
  v37 = v2;
  v21 = v7;
  sub_2230C39B4();

  v22 = *(v11 + 56);
  sub_2230A2E80(v38, v14, &qword_27D0553A0, &qword_2230C4BC0);
  sub_2230A2E80(v20, &v14[v22], &qword_27D0553A0, &qword_2230C4BC0);
  v23 = *(v7 + 48);
  if (v23(v14, 1, v6) == 1)
  {
    sub_2230A2EE8(v20, &qword_27D0553A0, &qword_2230C4BC0);
    if (v23(&v14[v22], 1, v6) == 1)
    {
      return sub_2230A2EE8(v14, &qword_27D0553A0, &qword_2230C4BC0);
    }

    goto LABEL_6;
  }

  v25 = v35;
  sub_2230A2E80(v14, v35, &qword_27D0553A0, &qword_2230C4BC0);
  if (v23(&v14[v22], 1, v6) == 1)
  {
    sub_2230A2EE8(v20, &qword_27D0553A0, &qword_2230C4BC0);
    (*(v21 + 8))(v25, v6);
LABEL_6:
    sub_2230A2EE8(v14, &qword_27D055678, &qword_2230C5AB0);
LABEL_7:
    v26 = sub_2230C3E84();
    v27 = v36;
    (*(*(v26 - 8) + 56))(v36, 1, 1, v26);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v37;

    sub_2230BEA64(0, 0, v27, &unk_2230C5B08, v28);
  }

  v29 = &v14[v22];
  v30 = v34;
  (*(v21 + 32))(v34, v29, v6);
  sub_2230B2D50(&qword_27D055680, MEMORY[0x277CEAC40]);
  v31 = sub_2230C3D44();
  v32 = *(v21 + 8);
  v32(v30, v6);
  sub_2230A2EE8(v20, &qword_27D0553A0, &qword_2230C4BC0);
  v32(v25, v6);
  result = sub_2230A2EE8(v14, &qword_27D0553A0, &qword_2230C4BC0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2230ADDBC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();
}

uint64_t sub_2230ADE34()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();

  return v1;
}

uint64_t sub_2230ADED0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();

  return v1;
}

uint64_t sub_2230ADF3C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();

  return v1;
}

uint64_t sub_2230ADFB4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553D8, &qword_2230C4D30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v137 = &v111 - v4;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0556A0, &qword_2230C5CB8);
  v112 = *(v113 - 8);
  v5 = *(v112 + 64);
  MEMORY[0x28223BE20](v113);
  v111 = &v111 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0555E8, &qword_2230C5898);
  v134 = *(v7 - 8);
  v135 = v7;
  v8 = *(v134 + 64);
  MEMORY[0x28223BE20](v7);
  v133 = &v111 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0555D8, &qword_2230C5890);
  v131 = *(v10 - 8);
  v132 = v10;
  v11 = *(v131 + 64);
  MEMORY[0x28223BE20](v10);
  v130 = &v111 - v12;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0555C8, &qword_2230C5888);
  v128 = *(v129 - 8);
  v13 = *(v128 + 64);
  MEMORY[0x28223BE20](v129);
  v127 = &v111 - v14;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0554F0, &qword_2230C5880);
  v125 = *(v126 - 8);
  v15 = *(v125 + 64);
  MEMORY[0x28223BE20](v126);
  v124 = &v111 - v16;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055578, &qword_2230C5870);
  v122 = *(v123 - 8);
  v17 = *(v122 + 64);
  MEMORY[0x28223BE20](v123);
  v121 = &v111 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553A8, &qword_2230C4C00);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v111 - v21;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553A0, &qword_2230C4BC0);
  v23 = *(*(v120 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v120);
  v119 = &v111 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v118 = &v111 - v26;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055568, &qword_2230C5868);
  v115 = *(v116 - 8);
  v27 = *(v115 + 64);
  MEMORY[0x28223BE20](v116);
  v114 = &v111 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0557D0, &qword_2230C5860);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v111 - v33;
  if (qword_280D38F68 != -1)
  {
    v110 = v32;
    swift_once();
    v32 = v110;
  }

  v117 = v22;
  v138 = v32;
  v35 = qword_280D39238;
  if (qword_280D39238)
  {
    v36 = sub_2230C3D74();
    v37 = [v35 BOOLForKey_];
  }

  else
  {
    v37 = 0;
  }

  v38 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__isEnabled;
  LOBYTE(v144[0]) = v37;
  sub_2230C39A4();
  v39 = *(v30 + 32);
  v40 = v138;
  v39(v1 + v38, v34, v138);
  v136 = v35;
  if (v35)
  {
    v41 = sub_2230C3D74();
    v42 = [v35 0x2784D4E78];

    v43 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__useConfirmationPrompts;
    LOBYTE(v144[0]) = v42;
    sub_2230C39A4();
    v39(v1 + v43, v34, v40);
    v44 = sub_2230C3D74();
    v45 = [v35 0x2784D4E78];
  }

  else
  {
    v46 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__useConfirmationPrompts;
    LOBYTE(v144[0]) = 0;
    sub_2230C39A4();
    v39(v1 + v46, v34, v40);
    v45 = 0;
  }

  v47 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__setupPrompt;
  LOBYTE(v144[0]) = v45;
  sub_2230C39A4();
  v39(v1 + v47, v34, v40);
  v48 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__controlToHighlight;
  LOBYTE(v144[0]) = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055628, &qword_2230C5968);
  v49 = v114;
  sub_2230C39A4();
  (*(v115 + 32))(v1 + v48, v49, v116);
  sub_2230C3774();
  sub_2230C3764();
  v50 = v117;
  sub_2230C3744();

  v51 = sub_2230C3984();
  v52 = *(v51 - 8);
  if ((*(v52 + 48))(v50, 1, v51) == 1)
  {
    sub_2230A2EE8(v50, &qword_27D0553A8, &qword_2230C4C00);
    v53 = sub_2230C3914();
    v54 = v118;
    (*(*(v53 - 8) + 56))(v118, 1, 1, v53);
  }

  else
  {
    v54 = v118;
    sub_2230C3944();
    (*(v52 + 8))(v50, v51);
  }

  v55 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__credentials;
  sub_2230A2E80(v54, v119, &qword_27D0553A0, &qword_2230C4BC0);
  v56 = v121;
  sub_2230C39A4();
  sub_2230A2EE8(v54, &qword_27D0553A0, &qword_2230C4BC0);
  (*(v122 + 32))(v1 + v55, v56, v123);
  v57 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__showingSignInFailureAlert;
  LOBYTE(v144[0]) = 0;
  sub_2230C39A4();
  v58 = v138;
  v39(v1 + v57, v34, v138);
  v59 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__showSignInFailedDueToWorkspaceRestriction;
  LOBYTE(v144[0]) = 0;
  sub_2230C39A4();
  v39(v1 + v59, v34, v58);
  v60 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__showingSignOutAlert;
  LOBYTE(v144[0]) = 0;
  sub_2230C39A4();
  v39(v1 + v60, v34, v58);
  v61 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__showManageSubscription;
  LOBYTE(v144[0]) = 0;
  sub_2230C39A4();
  v39(v1 + v61, v34, v58);
  v62 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__adamID;
  v144[0] = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0554D0, &qword_2230C5560);
  v63 = v124;
  sub_2230C39A4();
  (*(v125 + 32))(v1 + v62, v63, v126);
  v64 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__showRateLimitStatus;
  LOBYTE(v144[0]) = 0;
  sub_2230C39A4();
  v39(v1 + v64, v34, v58);
  v65 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__isRateLimited;
  LOBYTE(v144[0]) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055648, &qword_2230C5970);
  v66 = v127;
  sub_2230C39A4();
  (*(v128 + 32))(v1 + v65, v66, v129);
  v67 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__userDisplayedRateLimit;
  LOBYTE(v144[0]) = 0;
  v68 = v130;
  sub_2230C39A4();
  (*(v131 + 32))(v1 + v67, v68, v132);
  v69 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__userAccountStatus;
  LOBYTE(v144[0]) = 0;
  v70 = v133;
  sub_2230C39A4();
  (*(v134 + 32))(v1 + v69, v70, v135);
  *(v1 + OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel_lastKnownRateLimitState) = 3;
  v71 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel_subscription;
  *(v1 + OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel_subscription) = 0;
  v72 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel_lastRateLimitResponseDate;
  v73 = sub_2230C3604();
  v74 = *(*(v73 - 8) + 56);
  v74(v1 + v72, 1, 1, v73);
  v74(v1 + OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel_pendingRateLimitFetchStart, 1, 1, v73);
  swift_beginAccess();
  LOBYTE(aBlock[0]) = 0;
  sub_2230C39A4();
  swift_endAccess();
  if (qword_27D055320 != -1)
  {
    swift_once();
  }

  *&v144[0] = 0xD000000000000011;
  *(&v144[0] + 1) = 0x80000002230C6F30;
  v144[1] = xmmword_2230C54B0;
  v145 = 49;
  v146 = 0xE100000000000000;

  v76 = sub_2230B2D98(v75, v144);
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v140 = &type metadata for AppStoreDaemonDataSource;
  v141 = &off_2836719E8;
  v83 = swift_allocObject();
  aBlock[0] = v83;
  v83[2] = v76;
  v83[3] = v78;
  v83[4] = v80;
  v83[5] = v82;
  v84 = type metadata accessor for SubscriptionInfo();
  v85 = *(v84 + 48);
  v86 = *(v84 + 52);
  v87 = swift_allocObject();
  v88 = __swift_mutable_project_boxed_opaque_existential_1(aBlock, &type metadata for AppStoreDaemonDataSource);
  v89 = *(off_2836719C8 + 8);
  MEMORY[0x28223BE20](v88);
  v91 = (&v111 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v92 + 16))(v91);
  v93 = sub_2230B3048(2, *v91, v91[1], v91[2], v91[3], v87);
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  swift_beginAccess();
  v143 = v93;
  sub_2230C39A4();
  swift_endAccess();
  type metadata accessor for BillingInfo();
  v94 = swift_allocObject();
  swift_weakInit();
  *(v94 + 24) = 256;
  *(v94 + 26) = 0;
  v95 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel_billingInfo;
  *(v1 + OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel_billingInfo) = v94;
  v96 = v136;
  if (v136)
  {
    swift_getKeyPath();
    v97 = v111;
    sub_2230C3554();

    swift_allocObject();
    swift_weakInit();
    sub_2230B3CE0();
    v98 = v113;
    v96 = sub_2230C39E4();

    (*(v112 + 8))(v97, v98);
  }

  v99 = *(v1 + v71);
  *(v1 + v71) = v96;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();

  *(aBlock[0] + OBJC_IVAR____TtC27GenerativeAssistantSettings16SubscriptionInfo_subscriptionDelegate + 8) = &off_283671AA0;
  swift_unknownObjectWeakAssign();

  v100 = *(v1 + v95);
  swift_weakAssign();
  v101 = sub_2230C3E84();
  v102 = v137;
  (*(*(v101 - 8) + 56))(v137, 1, 1, v101);
  v103 = swift_allocObject();
  v103[2] = 0;
  v103[3] = 0;
  v103[4] = v1;

  sub_2230BEA64(0, 0, v102, &unk_2230C5CC0, v103);

  v104 = [objc_opt_self() defaultCenter];
  v105 = *MEMORY[0x277D25CA0];
  v106 = [objc_opt_self() mainQueue];
  v141 = sub_2230B3CB0;
  v142 = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2230AF31C;
  v140 = &block_descriptor_1;
  v107 = _Block_copy(aBlock);

  v108 = [v104 addObserverForName:v105 object:0 queue:v106 usingBlock:v107];
  _Block_release(v107);
  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_2230AF19C(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  if (!swift_weakLoadStrong() || (swift_getKeyPath(), swift_getKeyPath(), sub_2230C39B4(), , , result = , v3 != v1))
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_2230C39C4();
      type metadata accessor for GenerativeAssistantSettingsUserDefaults();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2230C39B4();

      static GenerativeAssistantSettingsUserDefaults.setEnabled(_:)(v1);
    }
  }

  return result;
}

uint64_t sub_2230AF31C(uint64_t a1)
{
  v2 = sub_2230C34D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_2230C34C4();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2230AF410()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553D8, &qword_2230C4D30);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v35 = &v34 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553A8, &qword_2230C4C00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553A0, &qword_2230C4BC0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v34 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v34 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - v18;
  v20 = sub_2230C3714();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2230C3704();
  v25 = sub_2230C36F4();
  (*(v21 + 8))(v24, v20);
  if (v25)
  {
    sub_2230C3774();
    sub_2230C3764();
    sub_2230C3744();

    v26 = sub_2230C3984();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v6, 1, v26) == 1)
    {
      sub_2230A2EE8(v6, &qword_27D0553A8, &qword_2230C4C00);
      v28 = sub_2230C3914();
      (*(*(v28 - 8) + 56))(v19, 1, 1, v28);
    }

    else
    {
      sub_2230C3944();
      (*(v27 + 8))(v6, v26);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_2230C39B4();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_2230A2E80(v19, v14, &qword_27D0553A0, &qword_2230C4BC0);

    sub_2230C39C4();
    sub_2230AD8F0(v17);
    sub_2230A2EE8(v17, &qword_27D0553A0, &qword_2230C4BC0);
    return sub_2230A2EE8(v19, &qword_27D0553A0, &qword_2230C4BC0);
  }

  else
  {
    v29 = sub_2230C3914();
    (*(*(v29 - 8) + 56))(v17, 1, 1, v29);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2230C39B4();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_2230A2E80(v17, v11, &qword_27D0553A0, &qword_2230C4BC0);

    sub_2230C39C4();
    sub_2230AD8F0(v14);
    sub_2230A2EE8(v14, &qword_27D0553A0, &qword_2230C4BC0);
    sub_2230A2EE8(v17, &qword_27D0553A0, &qword_2230C4BC0);
    v30 = sub_2230C3E84();
    v31 = v35;
    (*(*(v30 - 8) + 56))(v35, 1, 1, v30);
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    sub_2230BEA64(0, 0, v31, &unk_2230C5C68, v32);
  }
}

uint64_t sub_2230AF9CC()
{
  v1 = type metadata accessor for ExternalAIAuthenticatorHelper();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_2230A20E4();
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_2230AFA8C;

  return sub_2230A2898();
}

uint64_t sub_2230AFA8C()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

void sub_2230AFB9C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553D8, &qword_2230C4D30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v98 = &v88 - v4;
  v5 = sub_2230C3604();
  v6 = *(v5 - 8);
  v104 = v5;
  v105 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v92 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055340, &qword_2230C58A0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v97 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v99 = &v88 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v88 - v15;
  v103 = sub_2230C38D4();
  v101 = *(v103 - 8);
  v17 = *(v101 + 64);
  MEMORY[0x28223BE20](v103);
  v91 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055688, &qword_2230C5BE8);
  v19 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v102 = &v88 - v20;
  v95 = sub_2230C38F4();
  v94 = *(v95 - 8);
  v21 = *(v94 + 64);
  MEMORY[0x28223BE20](v95);
  v93 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055690, &qword_2230C5BF0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v96 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v106 = &v88 - v28;
  MEMORY[0x28223BE20](v27);
  v107 = &v88 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553A0, &qword_2230C4BC0);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v34 = &v88 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v88 - v35;
  swift_getKeyPath();
  swift_getKeyPath();
  v37 = v1;
  sub_2230C39B4();

  v38 = sub_2230C3914();
  v39 = *(*(v38 - 8) + 48);
  v40 = v39(v36, 1, v38);
  sub_2230A2EE8(v36, &qword_27D0553A0, &qword_2230C4BC0);
  if (v40 == 1)
  {
    goto LABEL_2;
  }

  v90 = v16;
  swift_getKeyPath();
  swift_getKeyPath();
  v89 = v1;
  sub_2230C39B4();

  if (v39(v34, 1, v38))
  {
    sub_2230A2EE8(v34, &qword_27D0553A0, &qword_2230C4BC0);
    v49 = 1;
    v51 = v102;
    v50 = v103;
    v52 = v101;
    v53 = v107;
  }

  else
  {
    v58 = v93;
    sub_2230C3904();
    sub_2230A2EE8(v34, &qword_27D0553A0, &qword_2230C4BC0);
    v53 = v107;
    sub_2230C38E4();
    (*(v94 + 8))(v58, v95);
    v49 = 0;
    v51 = v102;
    v50 = v103;
    v52 = v101;
  }

  v59 = v106;
  v60 = *(v52 + 56);
  v60(v53, v49, 1, v50);
  (*(v52 + 104))(v59, *MEMORY[0x277CEAC20], v50);
  v60(v59, 0, 1, v50);
  v61 = *(v100 + 48);
  sub_2230A2E80(v53, v51, &qword_27D055690, &qword_2230C5BF0);
  sub_2230A2E80(v59, v51 + v61, &qword_27D055690, &qword_2230C5BF0);
  v62 = *(v52 + 48);
  if (v62(v51, 1, v50) == 1)
  {
    sub_2230A2EE8(v59, &qword_27D055690, &qword_2230C5BF0);
    sub_2230A2EE8(v53, &qword_27D055690, &qword_2230C5BF0);
    if (v62(v51 + v61, 1, v50) == 1)
    {
      sub_2230A2EE8(v51, &qword_27D055690, &qword_2230C5BF0);
      v37 = v89;
      v16 = v90;
      goto LABEL_2;
    }

LABEL_18:
    sub_2230A2EE8(v51, &qword_27D055688, &qword_2230C5BE8);
    return;
  }

  v63 = v96;
  sub_2230A2E80(v51, v96, &qword_27D055690, &qword_2230C5BF0);
  if (v62(v51 + v61, 1, v50) == 1)
  {
    sub_2230A2EE8(v106, &qword_27D055690, &qword_2230C5BF0);
    sub_2230A2EE8(v107, &qword_27D055690, &qword_2230C5BF0);
    (*(v52 + 8))(v63, v50);
    goto LABEL_18;
  }

  v74 = v51 + v61;
  v75 = v91;
  (*(v52 + 32))(v91, v74, v50);
  sub_2230B2D50(&qword_27D055698, MEMORY[0x277CEAC30]);
  v76 = v63;
  v77 = sub_2230C3D44();
  v78 = *(v52 + 8);
  v78(v75, v50);
  sub_2230A2EE8(v106, &qword_27D055690, &qword_2230C5BF0);
  sub_2230A2EE8(v107, &qword_27D055690, &qword_2230C5BF0);
  v78(v76, v50);
  sub_2230A2EE8(v51, &qword_27D055690, &qword_2230C5BF0);
  v37 = v89;
  v16 = v90;
  if ((v77 & 1) == 0)
  {
    return;
  }

LABEL_2:
  v41 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel_pendingRateLimitFetchStart;
  v42 = v37;
  swift_beginAccess();
  sub_2230A2E80(v37 + v41, v16, &qword_27D055340, &qword_2230C58A0);
  v43 = v104;
  v44 = v105;
  v45 = *(v105 + 48);
  v46 = v45(v16, 1, v104);
  sub_2230A2EE8(v16, &qword_27D055340, &qword_2230C58A0);
  if (v46 == 1)
  {
    v47 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel_lastRateLimitResponseDate;
    swift_beginAccess();
    v48 = v99;
    sub_2230A2E80(v42 + v47, v99, &qword_27D055340, &qword_2230C58A0);
    if (v45(v48, 1, v43) == 1)
    {
      sub_2230A2EE8(v48, &qword_27D055340, &qword_2230C58A0);
LABEL_31:
      if (qword_27D055338 != -1)
      {
        swift_once();
      }

      v79 = sub_2230C38A4();
      __swift_project_value_buffer(v79, qword_27D0572C0);
      v80 = sub_2230C3884();
      v81 = sub_2230C3EA4();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&dword_22309D000, v80, v81, "Starting rate limit fetch", v82, 2u);
        MEMORY[0x223DD5490](v82, -1, -1);
      }

      v83 = v97;
      sub_2230C35F4();
      v84 = *(v44 + 56);
      v84(v83, 0, 1, v43);
      swift_beginAccess();
      sub_2230B2B38(v83, v42 + v41);
      swift_endAccess();
      v84(v83, 1, 1, v43);
      swift_beginAccess();
      sub_2230B2B38(v83, v42 + v47);
      swift_endAccess();
      v85 = sub_2230C3E84();
      v86 = v98;
      (*(*(v85 - 8) + 56))(v98, 1, 1, v85);
      v87 = swift_allocObject();
      v87[2] = 0;
      v87[3] = 0;
      v87[4] = v42;

      sub_2230BEA64(0, 0, v86, &unk_2230C5C00, v87);

      return;
    }

    v64 = v92;
    (*(v44 + 32))(v92, v48, v43);
    sub_2230C35D4();
    v66 = fabs(v65);
    if (v66 >= 2.0)
    {
      (*(v44 + 8))(v64, v43);
      goto LABEL_31;
    }

    if (qword_27D055338 != -1)
    {
      swift_once();
    }

    v67 = sub_2230C38A4();
    __swift_project_value_buffer(v67, qword_27D0572C0);
    v68 = sub_2230C3884();
    v69 = sub_2230C3EA4();
    if (!os_log_type_enabled(v68, v69))
    {
LABEL_27:

      (*(v44 + 8))(v64, v43);
      return;
    }

    v70 = swift_slowAlloc();
    *v70 = 134349056;
    v71 = v66 * 1000.0;
    if (COERCE_UNSIGNED_INT64(v66 * 1000.0) >> 52 > 0x7FE)
    {
      __break(1u);
    }

    else if (v71 > -9.22337204e18)
    {
      if (v71 < 9.22337204e18)
      {
        *(v70 + 4) = v71;
        v72 = v69;
        v73 = v70;
        _os_log_impl(&dword_22309D000, v68, v72, "Quelling rate limit fetch that occurred only %{public}ldms ago.", v70, 0xCu);
        MEMORY[0x223DD5490](v73, -1, -1);
        goto LABEL_27;
      }

LABEL_38:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_38;
  }

  if (qword_27D055338 != -1)
  {
    swift_once();
  }

  v54 = sub_2230C38A4();
  __swift_project_value_buffer(v54, qword_27D0572C0);
  v55 = sub_2230C3884();
  v56 = sub_2230C3EA4();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_22309D000, v55, v56, "Rate limit fetch currently pending; quelling new request", v57, 2u);
    MEMORY[0x223DD5490](v57, -1, -1);
  }
}

uint64_t sub_2230B0980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055340, &qword_2230C58A0) - 8) + 64) + 15;
  *(v4 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2230B0A1C, 0, 0);
}

uint64_t sub_2230B0A1C()
{
  *(v0 + 80) = sub_2230C3E64();
  *(v0 + 88) = sub_2230C3E54();
  v2 = sub_2230C3E34();

  return MEMORY[0x2822009F8](sub_2230B0AB4, v2, v1);
}

uint64_t sub_2230B0AB4()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 120) = 0;

  sub_2230C39C4();
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_2230B0B98;

  return sub_2230B3570();
}

uint64_t sub_2230B0B98(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;

  if (v1)
  {

    v7 = sub_2230B1098;
  }

  else
  {
    *(v4 + 123) = a1;
    v7 = sub_2230B0CC4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2230B0CC4()
{
  v30 = v0;
  v1 = *(v0 + 123);
  *(v0 + 124) = v1;
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = sub_2230C3604();
  v5 = *(*(v4 - 8) + 56);
  v5(v2, 1, 1, v4);
  v6 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel_pendingRateLimitFetchStart;
  swift_beginAccess();
  sub_2230B2B38(v2, v3 + v6);
  swift_endAccess();
  sub_2230C35F4();
  v5(v2, 0, 1, v4);
  v7 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel_lastRateLimitResponseDate;
  swift_beginAccess();
  sub_2230B2B38(v2, v3 + v7);
  swift_endAccess();
  if (v1 == 2)
  {
    if (qword_27D055338 != -1)
    {
      swift_once();
    }

    v8 = sub_2230C38A4();
    __swift_project_value_buffer(v8, qword_27D0572C0);
    v9 = sub_2230C3884();
    v10 = sub_2230C3EB4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22309D000, v9, v10, "Not updating rate limit state for invalid response; using prior state", v11, 2u);
      MEMORY[0x223DD5490](v11, -1, -1);
    }

    v12 = *(v0 + 80);

    *(v0 + 112) = sub_2230C3E54();
    v13 = sub_2230C3E34();
    v15 = v14;
    v16 = sub_2230B138C;
  }

  else
  {
    if (v1)
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    *(*(v0 + 64) + OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel_lastKnownRateLimitState) = v17;
    if (qword_27D055338 != -1)
    {
      swift_once();
    }

    v18 = sub_2230C38A4();
    __swift_project_value_buffer(v18, qword_27D0572C0);
    v19 = sub_2230C3884();
    v20 = sub_2230C3EA4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v29 = v22;
      *v21 = 136446210;
      if (v1)
      {
        v23 = 0x646574696D694CLL;
      }

      else
      {
        v23 = 0x696D694C20746F4ELL;
      }

      if (v1)
      {
        v24 = 0xE700000000000000;
      }

      else
      {
        v24 = 0xEB00000000646574;
      }

      v25 = sub_22309F9F4(v23, v24, &v29);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_22309D000, v19, v20, "Updating rate limit state: %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x223DD5490](v22, -1, -1);
      MEMORY[0x223DD5490](v21, -1, -1);
    }

    v26 = *(v0 + 80);
    *(v0 + 104) = sub_2230C3E54();
    v13 = sub_2230C3E34();
    v15 = v27;
    v16 = sub_2230B12BC;
  }

  return MEMORY[0x2822009F8](v16, v13, v15);
}

uint64_t sub_2230B1098()
{
  *(v0 + 124) = 2;
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = sub_2230C3604();
  v4 = *(*(v3 - 8) + 56);
  v4(v1, 1, 1, v3);
  v5 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel_pendingRateLimitFetchStart;
  swift_beginAccess();
  sub_2230B2B38(v1, v2 + v5);
  swift_endAccess();
  sub_2230C35F4();
  v4(v1, 0, 1, v3);
  v6 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel_lastRateLimitResponseDate;
  swift_beginAccess();
  sub_2230B2B38(v1, v2 + v6);
  swift_endAccess();
  if (qword_27D055338 != -1)
  {
    swift_once();
  }

  v7 = sub_2230C38A4();
  __swift_project_value_buffer(v7, qword_27D0572C0);
  v8 = sub_2230C3884();
  v9 = sub_2230C3EB4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22309D000, v8, v9, "Not updating rate limit state for invalid response; using prior state", v10, 2u);
    MEMORY[0x223DD5490](v10, -1, -1);
  }

  v11 = *(v0 + 80);

  *(v0 + 112) = sub_2230C3E54();
  v13 = sub_2230C3E34();

  return MEMORY[0x2822009F8](sub_2230B138C, v13, v12);
}

uint64_t sub_2230B12BC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 124);
  v3 = *(v0 + 64);

  if (v2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 122) = v4;

  sub_2230C39C4();
  v5 = *(v0 + 72);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2230B138C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 64);

  v3 = *(v2 + OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel_lastKnownRateLimitState);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 121) = v3;

  sub_2230C39C4();
  v4 = *(v0 + 72);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2230B1458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_2230C38D4();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v8 = sub_2230C38F4();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = sub_2230C3914();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553A0, &qword_2230C4BC0) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2230B1614, 0, 0);
}

uint64_t sub_2230B1614()
{
  v0[16] = *(v0[4] + OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel_billingInfo);

  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_2230B16C0;

  return sub_2230B3DF8();
}

uint64_t sub_2230B16C0()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2230B17D8, 0, 0);
}

uint64_t sub_2230B17D8()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[4];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();

  v5 = v0[2];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();

  v6 = (*(v3 + 48))(v1, 1, v2);
  v7 = v0[15];
  if (v6)
  {
    sub_2230A2EE8(v0[15], &qword_27D0553A0, &qword_2230C4BC0);
    v8 = 2;
  }

  else
  {
    v9 = v0[13];
    v10 = v0[11];
    v22 = v0[14];
    v23 = v0[12];
    v11 = v0[10];
    v12 = v0[7];
    v20 = v0[8];
    v21 = v0[9];
    v13 = v0[5];
    v14 = v0[6];
    (*(v9 + 16))(v22, v7);
    sub_2230A2EE8(v7, &qword_27D0553A0, &qword_2230C4BC0);
    sub_2230C3904();
    sub_2230C38E4();
    (*(v11 + 8))(v10, v21);
    (*(v14 + 104))(v12, *MEMORY[0x277CEAC28], v13);
    v15 = sub_2230C38C4();
    v16 = *(v14 + 8);
    v16(v12, v13);
    v16(v20, v13);
    (*(v9 + 8))(v22, v23);
    v8 = v15 & 1;
  }

  v17 = v0[4];
  *(v5 + OBJC_IVAR____TtC27GenerativeAssistantSettings16SubscriptionInfo_accountReportsPaidPlan) = v8;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();

  v0[18] = v0[3];
  v18 = swift_task_alloc();
  v0[19] = v18;
  *v18 = v0;
  v18[1] = sub_2230B1AC4;

  return sub_2230AA888();
}

uint64_t sub_2230B1AC4(char a1)
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 170) = a1;

  return MEMORY[0x2822009F8](sub_2230B1BE4, 0, 0);
}

uint64_t sub_2230B1BE4()
{
  sub_2230C3E64();
  *(v0 + 160) = sub_2230C3E54();
  v2 = sub_2230C3E34();

  return MEMORY[0x2822009F8](sub_2230B1C78, v2, v1);
}

uint64_t sub_2230B1C78()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 170);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = *(v0 + 88);
  v9 = *(v0 + 64);
  v10 = *(v0 + 56);
  v6 = *(v0 + 32);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 168) = (v2 & 0xFE) != 2;

  sub_2230C39C4();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 169) = v2 == 2;

  sub_2230C39C4();
  sub_2230AFB9C();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t GenerativeAssistantSettingsViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__isEnabled;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0557D0, &qword_2230C5860);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__useConfirmationPrompts, v2);
  v3(v0 + OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__setupPrompt, v2);
  v3(v0 + OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__showOnboarding, v2);
  v4 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__controlToHighlight;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055568, &qword_2230C5868);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__credentials;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055578, &qword_2230C5870);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v3(v0 + OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__showingSignInFailureAlert, v2);
  v3(v0 + OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__showSignInFailedDueToWorkspaceRestriction, v2);
  v3(v0 + OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__showingSignOutAlert, v2);
  v8 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__subscriptionInfo;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0555A0, &qword_2230C5878);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v3(v0 + OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__showManageSubscription, v2);
  v10 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__adamID;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0554F0, &qword_2230C5880);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v3(v0 + OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__showRateLimitStatus, v2);
  v12 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__isRateLimited;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0555C8, &qword_2230C5888);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v14 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__userDisplayedRateLimit;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0555D8, &qword_2230C5890);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v16 = OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel__userAccountStatus;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0555E8, &qword_2230C5898);
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  v18 = *(v0 + OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel_billingInfo);

  v19 = *(v0 + OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel_subscription);

  sub_2230A2EE8(v0 + OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel_lastRateLimitResponseDate, &qword_27D055340, &qword_2230C58A0);
  sub_2230A2EE8(v0 + OBJC_IVAR____TtC27GenerativeAssistantSettings36GenerativeAssistantSettingsViewModel_pendingRateLimitFetchStart, &qword_27D055340, &qword_2230C58A0);
  return v0;
}

uint64_t GenerativeAssistantSettingsViewModel.__deallocating_deinit()
{
  GenerativeAssistantSettingsViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2230B2204@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GenerativeAssistantSettingsViewModel();
  result = sub_2230C3994();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for GenerativeAssistantSettingsViewModel()
{
  result = qword_27D055610;
  if (!qword_27D055610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2230B2298()
{
  sub_2230B2644(319, &qword_27D0557C0);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_2230ABADC(319, &qword_27D055620, &qword_27D055628, &qword_2230C5968);
    if (v4 <= 0x3F)
    {
      v19 = *(v3 - 8) + 64;
      sub_2230ABADC(319, &qword_27D055630, &qword_27D0553A0, &qword_2230C4BC0);
      if (v6 <= 0x3F)
      {
        v20 = *(v5 - 8) + 64;
        sub_2230B2690(319, &qword_27D055638, type metadata accessor for SubscriptionInfo, MEMORY[0x277CBCED0]);
        if (v8 <= 0x3F)
        {
          v21 = *(v7 - 8) + 64;
          sub_2230ABADC(319, &qword_27D0554C8, &qword_27D0554D0, &qword_2230C5560);
          if (v10 <= 0x3F)
          {
            v22 = *(v9 - 8) + 64;
            sub_2230ABADC(319, &qword_27D055640, &qword_27D055648, &qword_2230C5970);
            if (v12 <= 0x3F)
            {
              v23 = *(v11 - 8) + 64;
              sub_2230B2644(319, &qword_27D055650);
              if (v14 <= 0x3F)
              {
                v24 = *(v13 - 8) + 64;
                sub_2230B2644(319, &qword_27D055658);
                if (v16 <= 0x3F)
                {
                  v25 = *(v15 - 8) + 64;
                  sub_2230B2690(319, &qword_27D055660, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
                  if (v18 <= 0x3F)
                  {
                    v26 = *(v17 - 8) + 64;
                    swift_updateClassMetadata2();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_2230B2644(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2230C39D4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_2230B2690(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2230B2718()
{
  result = qword_27D055668;
  if (!qword_27D055668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D055668);
  }

  return result;
}

unint64_t sub_2230B2770()
{
  result = qword_27D055670;
  if (!qword_27D055670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D055670);
  }

  return result;
}

uint64_t sub_2230B27C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();

  *a2 = v5;
  return result;
}

uint64_t sub_2230B2844(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2230C39C4();
}

uint64_t sub_2230B28C0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_2230C39C4();
  type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();

  return static GenerativeAssistantSettingsUserDefaults.setEnabled(_:)(v5);
}

uint64_t sub_2230B2998(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2230AD85C;

  return sub_2230B1458(a1, v4, v5, v6);
}

uint64_t sub_2230B2A4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();

  *a2 = v5;
  return result;
}

uint64_t sub_2230B2AC8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2230C39C4();
}

uint64_t sub_2230B2B38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055340, &qword_2230C58A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2230B2BA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2230AD85C;

  return sub_2230B0980(a1, v4, v5, v6);
}

uint64_t sub_2230B2C5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();

  *a2 = v5;
  return result;
}

uint64_t sub_2230B2CDC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2230C39C4();
}

uint64_t sub_2230B2D50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2230B2D98(uint64_t a1, _OWORD *a2)
{
  v31 = &type metadata for BagProvider.ChatGPTBagConfiguration;
  v32 = &off_283672190;
  v4 = swift_allocObject();
  v30[0] = v4;
  v5 = a2[1];
  v4[1] = *a2;
  v4[2] = v5;
  v4[3] = a2[2];
  v6 = __swift_project_boxed_opaque_existential_0Tm(v30, &type metadata for BagProvider.ChatGPTBagConfiguration);
  v7 = v6[2];
  v8 = v6[3];
  v9 = qword_27D055338;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = sub_2230C38A4();
  __swift_project_value_buffer(v10, qword_27D0572C0);
  sub_22309F744(v30, v29);
  v11 = sub_2230C3884();
  v12 = sub_2230C3E94();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136315138;
    v15 = __swift_project_boxed_opaque_existential_0Tm(v29, v29[3]);
    if (v15[3])
    {
      v16 = v15[2];
      v17 = v15[3];
    }

    else
    {
      v17 = 0xE500000000000000;
      v16 = 0x3E6C696E3CLL;
    }

    __swift_destroy_boxed_opaque_existential_0(v29);
    v18 = sub_22309F9F4(v16, v17, &v28);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_22309D000, v11, v12, "creating bag for %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x223DD5490](v14, -1, -1);
    MEMORY[0x223DD5490](v13, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v29);
  }

  v19 = __swift_project_boxed_opaque_existential_0Tm(v30, v31);
  v20 = *v19;
  v21 = v19[1];
  v22 = __swift_project_boxed_opaque_existential_0Tm(v30, v31);
  v23 = v22[4];
  v24 = v22[5];

  v25 = sub_2230C3D74();

  v26 = sub_2230C3D74();

  [objc_opt_self() bagForProfile:v25 profileVersion:v26];

  __swift_destroy_boxed_opaque_existential_0(v30);
  return a1;
}

uint64_t sub_2230B3048(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a3;
  v44 = a4;
  v42 = a2;
  v49 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553D8, &qword_2230C4D30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v50 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0554F0, &qword_2230C5880);
  v47 = *(v11 - 8);
  v48 = v11;
  v12 = *(v47 + 64);
  MEMORY[0x28223BE20](v11);
  v46 = &v42 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0554E8, &unk_2230C5750);
  v14 = *(v45 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v45);
  v17 = &v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055410, &qword_2230C4D90);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v42 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0554E0, &unk_2230C5CF0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v42 - v28;
  v53[3] = &type metadata for AppStoreDaemonDataSource;
  v53[4] = &off_2836719E8;
  v30 = swift_allocObject();
  v53[0] = v30;
  v31 = v43;
  v30[2] = v42;
  v30[3] = v31;
  v30[4] = v44;
  v30[5] = a5;
  v32 = OBJC_IVAR____TtC27GenerativeAssistantSettings16SubscriptionInfo__subscriptionSource;
  LOBYTE(v51) = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0554B8, &unk_2230C5550);
  sub_2230C39A4();
  (*(v26 + 32))(a6 + v32, v29, v25);
  v33 = OBJC_IVAR____TtC27GenerativeAssistantSettings16SubscriptionInfo__storeURL;
  v34 = sub_2230C3594();
  (*(*(v34 - 8) + 56))(v24, 1, 1, v34);
  sub_2230A2E80(v24, v22, &qword_27D055410, &qword_2230C4D90);
  sub_2230C39A4();
  sub_2230A2EE8(v24, &qword_27D055410, &qword_2230C4D90);
  (*(v14 + 32))(a6 + v33, v17, v45);
  v35 = OBJC_IVAR____TtC27GenerativeAssistantSettings16SubscriptionInfo__upgradeCTAText;
  v51 = 0;
  v52 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0554D0, &qword_2230C5560);
  v36 = v46;
  sub_2230C39A4();
  (*(v47 + 32))(a6 + v35, v36, v48);
  v37 = OBJC_IVAR____TtC27GenerativeAssistantSettings16SubscriptionInfo_accountReportsPaidPlan;
  *(a6 + OBJC_IVAR____TtC27GenerativeAssistantSettings16SubscriptionInfo_accountReportsPaidPlan) = 2;
  *(a6 + OBJC_IVAR____TtC27GenerativeAssistantSettings16SubscriptionInfo_subscriptionDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(a6 + v37) = v49;
  *(a6 + OBJC_IVAR____TtC27GenerativeAssistantSettings16SubscriptionInfo_isAppInstalled) = 0;
  sub_22309F744(v53, a6 + OBJC_IVAR____TtC27GenerativeAssistantSettings16SubscriptionInfo_appStoreDataSource);
  v38 = sub_2230C3E84();
  v39 = v50;
  (*(*(v38 - 8) + 56))(v50, 1, 1, v38);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = a6;

  sub_2230BEA64(0, 0, v39, &unk_2230C5D00, v40);

  __swift_destroy_boxed_opaque_existential_0(v53);
  return a6;
}

uint64_t sub_2230B3570()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553A8, &qword_2230C4C00) - 8) + 64) + 15;
  v0[2] = swift_task_alloc();
  v2 = sub_2230C3934();
  v0[3] = v2;
  v3 = *(v2 - 8);
  v0[4] = v3;
  v4 = *(v3 + 64) + 15;
  v0[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2230B3664, 0, 0);
}

uint64_t sub_2230B3664()
{
  v24 = v0;
  v1 = _s27GenerativeAssistantSettings0abC12UserDefaultsC20forcedRateLimitStateSbSgyFZ_0();
  if (v1 != 2)
  {
    v6 = v1;
    if (qword_27D055338 != -1)
    {
      swift_once();
    }

    v7 = sub_2230C38A4();
    __swift_project_value_buffer(v7, qword_27D0572C0);
    v8 = sub_2230C3884();
    v9 = sub_2230C3EC4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23 = v11;
      *v10 = 136446210;
      if (v6)
      {
        v12 = 1702195828;
      }

      else
      {
        v12 = 0x65736C6166;
      }

      if (v6)
      {
        v13 = 0xE400000000000000;
      }

      else
      {
        v13 = 0xE500000000000000;
      }

      v14 = sub_22309F9F4(v12, v13, &v23);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_22309D000, v8, v9, "!! You have a rate limit override set to: forceRateLimitState = %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x223DD5490](v11, -1, -1);
      MEMORY[0x223DD5490](v10, -1, -1);
    }

    v5 = v6 & 1;
    goto LABEL_15;
  }

  v2 = v0[2];
  sub_2230C3774();
  sub_2230C3764();
  sub_2230C3744();

  v3 = sub_2230C3984();
  v0[6] = v3;
  v4 = *(v3 - 8);
  v0[7] = v4;
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_2230A2EE8(v0[2], &qword_27D0553A8, &qword_2230C4C00);
    v5 = 2;
LABEL_15:
    v15 = v0[5];
    v16 = v0[2];

    v17 = v0[1];

    return v17(v5);
  }

  v19 = *(MEMORY[0x277CEAC58] + 4);
  v20 = swift_task_alloc();
  v0[8] = v20;
  *v20 = v0;
  v20[1] = sub_2230B3958;
  v21 = v0[5];
  v22 = v0[2];

  return MEMORY[0x28213D118](v21);
}

uint64_t sub_2230B3958()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v6 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_2230B3B28;
  }

  else
  {
    (*(v2[7] + 8))(v2[2], v2[6]);
    v4 = sub_2230B3A84;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2230B3A84()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_2230C3924();
  (*(v2 + 8))(v1, v3);
  v5 = v0[5];
  v6 = v0[2];

  v7 = v0[1];

  return v7(v4 & 1);
}

uint64_t sub_2230B3B28()
{
  v1 = v0[5];
  (*(v0[7] + 8))(v0[2], v0[6]);

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_2230B3BB4()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2230A4F64;

  return sub_2230AF9B0();
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2230B3CE0()
{
  result = qword_27D0556A8;
  if (!qword_27D0556A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0556A0, &qword_2230C5CB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0556A8);
  }

  return result;
}

uint64_t sub_2230B3D44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2230AD85C;

  return sub_2230AA534(a1, v4, v5, v6);
}

uint64_t sub_2230B3DF8()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553D8, &qword_2230C4D30) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0556B0, &qword_2230C5D68) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553A8, &qword_2230C4C00) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553A0, &qword_2230C4BC0) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2230B3F48, 0, 0);
}

uint64_t sub_2230B3F48()
{
  v45 = v0;
  v1 = v0[6];
  sub_2230C3774();
  sub_2230C3764();
  sub_2230C3744();

  v2 = sub_2230C3984();
  v0[8] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  v5 = v4(v1, 1, v2);
  v6 = v0[6];
  v7 = v0[7];
  if (v5 == 1)
  {
    sub_2230A2EE8(v0[6], &qword_27D0553A8, &qword_2230C4C00);
    v8 = sub_2230C3914();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
LABEL_4:
    sub_2230A2EE8(v0[7], &qword_27D0553A0, &qword_2230C4BC0);
    if (qword_27D055338 != -1)
    {
      swift_once();
    }

    v12 = sub_2230C38A4();
    __swift_project_value_buffer(v12, qword_27D0572C0);
    v13 = sub_2230C3884();
    v14 = sub_2230C3EC4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_22309D000, v13, v14, "User is not logged in; not fetching billing plan changes", v15, 2u);
      MEMORY[0x223DD5490](v15, -1, -1);
    }

LABEL_9:
    v17 = v0[6];
    v16 = v0[7];
    v19 = v0[4];
    v18 = v0[5];
    v20 = v0[3];

    v21 = v0[1];

    return v21();
  }

  v9 = v0[7];
  sub_2230C3944();
  v10 = *(v3 + 8);
  v0[9] = v10;
  v0[10] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v2);
  v11 = sub_2230C3914();
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    goto LABEL_4;
  }

  sub_2230A2EE8(v0[7], &qword_27D0553A0, &qword_2230C4BC0);
  if (qword_27D055338 != -1)
  {
    swift_once();
  }

  v23 = sub_2230C38A4();
  v0[11] = __swift_project_value_buffer(v23, qword_27D0572C0);
  v24 = sub_2230C3884();
  v25 = sub_2230C3EA4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v44 = v27;
    *v26 = 136446210;
    *(v26 + 4) = sub_22309F9F4(0xD000000000000013, 0x80000002230C7330, &v44);
    _os_log_impl(&dword_22309D000, v24, v25, "%{public}s Fetching updated billing plan", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x223DD5490](v27, -1, -1);
    MEMORY[0x223DD5490](v26, -1, -1);
  }

  v28 = v0[5];
  sub_2230C3764();
  sub_2230C3744();

  if (v4(v28, 1, v2) == 1)
  {
    sub_2230A2EE8(v0[5], &qword_27D0553A8, &qword_2230C4C00);
    v29 = v0[11];
    v30 = v0[4];
    v31 = sub_2230C38F4();
    (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
    sub_2230A2EE8(v30, &qword_27D0556B0, &qword_2230C5D68);
    v32 = sub_2230C3884();
    v33 = sub_2230C3EA4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v44 = v35;
      *v34 = 136446210;
      *(v34 + 4) = sub_22309F9F4(0xD000000000000013, 0x80000002230C7330, &v44);
      _os_log_impl(&dword_22309D000, v32, v33, "%{public}s Completed updating billing plan", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x223DD5490](v35, -1, -1);
      MEMORY[0x223DD5490](v34, -1, -1);
    }

    v36 = v0[2];
    v37 = v0[3];
    v38 = sub_2230C3E84();
    (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
    v39 = swift_allocObject();
    v39[2] = 0;
    v39[3] = 0;
    v39[4] = v36;

    sub_2230BED24(0, 0, v37, &unk_2230C5D78, v39);

    goto LABEL_9;
  }

  v40 = *(MEMORY[0x277CEAC50] + 4);
  v41 = swift_task_alloc();
  v0[12] = v41;
  *v41 = v0;
  v41[1] = sub_2230B45D8;
  v42 = v0[4];
  v43 = v0[5];

  return MEMORY[0x28213D110](v42);
}

uint64_t sub_2230B45D8()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;

  if (v0)
  {

    v4 = sub_2230B4954;
  }

  else
  {
    v5 = *(v2 + 80);
    (*(v2 + 72))(*(v2 + 40), *(v2 + 64));
    v4 = sub_2230B4700;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2230B4700()
{
  v20 = v0;
  v1 = v0[11];
  v2 = v0[4];
  v3 = sub_2230C38F4();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  sub_2230A2EE8(v2, &qword_27D0556B0, &qword_2230C5D68);
  v4 = sub_2230C3884();
  v5 = sub_2230C3EA4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_22309F9F4(0xD000000000000013, 0x80000002230C7330, &v19);
    _os_log_impl(&dword_22309D000, v4, v5, "%{public}s Completed updating billing plan", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x223DD5490](v7, -1, -1);
    MEMORY[0x223DD5490](v6, -1, -1);
  }

  v8 = v0[2];
  v9 = v0[3];
  v10 = sub_2230C3E84();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v8;

  sub_2230BED24(0, 0, v9, &unk_2230C5D78, v11);

  v13 = v0[6];
  v12 = v0[7];
  v15 = v0[4];
  v14 = v0[5];
  v16 = v0[3];

  v17 = v0[1];

  return v17();
}

uint64_t sub_2230B4954()
{
  v21 = v0;
  v1 = *(v0 + 80);
  (*(v0 + 72))(*(v0 + 40), *(v0 + 64));
  v2 = *(v0 + 88);
  v3 = *(v0 + 32);
  v4 = sub_2230C38F4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_2230A2EE8(v3, &qword_27D0556B0, &qword_2230C5D68);
  v5 = sub_2230C3884();
  v6 = sub_2230C3EA4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_22309F9F4(0xD000000000000013, 0x80000002230C7330, &v20);
    _os_log_impl(&dword_22309D000, v5, v6, "%{public}s Completed updating billing plan", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x223DD5490](v8, -1, -1);
    MEMORY[0x223DD5490](v7, -1, -1);
  }

  v9 = *(v0 + 16);
  v10 = *(v0 + 24);
  v11 = sub_2230C3E84();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v9;

  sub_2230BED24(0, 0, v10, &unk_2230C5D78, v12);

  v14 = *(v0 + 48);
  v13 = *(v0 + 56);
  v16 = *(v0 + 32);
  v15 = *(v0 + 40);
  v17 = *(v0 + 24);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_2230B4BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_2230B4BD8, 0, 0);
}

uint64_t sub_2230B4BD8()
{
  sub_2230C3E64();
  *(v0 + 32) = sub_2230C3E54();
  v2 = sub_2230C3E34();

  return MEMORY[0x2822009F8](sub_2230B4C6C, v2, v1);
}

uint64_t sub_2230B4C6C()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  sub_2230B4D1C((v0 + 40));
  **(v0 + 16) = *(v0 + 40);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2230B4D1C@<X0>(BOOL *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553A8, &qword_2230C4C00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553A0, &qword_2230C4BC0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v22 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v22 - v15;
  result = swift_weakLoadStrong();
  v18 = result;
  if (result)
  {
    v22[1] = v1;
    sub_2230C3774();
    sub_2230C3764();
    sub_2230C3744();

    v19 = sub_2230C3984();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v6, 1, v19) == 1)
    {
      sub_2230A2EE8(v6, &qword_27D0553A8, &qword_2230C4C00);
      v21 = sub_2230C3914();
      (*(*(v21 - 8) + 56))(v16, 1, 1, v21);
    }

    else
    {
      sub_2230C3944();
      (*(v20 + 8))(v6, v19);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_2230C39B4();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_2230B5370(v16, v11);

    sub_2230C39C4();
    sub_2230AD8F0(v14);

    sub_2230A2EE8(v14, &qword_27D0553A0, &qword_2230C4BC0);
    result = sub_2230A2EE8(v16, &qword_27D0553A0, &qword_2230C4BC0);
  }

  *a1 = v18 == 0;
  return result;
}

uint64_t sub_2230B503C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8D8](v0, 27, 7);
}

uint64_t sub_2230B5098(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();
}

uint64_t sub_2230B5114(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553A0, &qword_2230C4BC0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v16 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  sub_2230B5370(a1, &v16 - v12);
  v14 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230B5370(v13, v8);

  sub_2230C39C4();
  sub_2230AD8F0(v11);
  sub_2230A2EE8(v11, &qword_27D0553A0, &qword_2230C4BC0);
  return sub_2230A2EE8(v13, &qword_27D0553A0, &qword_2230C4BC0);
}

uint64_t sub_2230B52BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2230A4F64;

  return sub_2230B4BB8(a1, v4, v5, v6);
}

uint64_t sub_2230B5370(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553A0, &qword_2230C4BC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static GenerativeAssistantSettingsUserDefaults.allUserDefaults()()
{
  v0 = sub_2230C3604();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = 0;
  v43 = 0xE000000000000000;
  sub_2230C3F24();
  MEMORY[0x223DD4D40](0x656C62616E457369, 0xEC000000203D2064);
  if (qword_280D39240)
  {

    sub_22309F000();
  }

  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v5 = qword_280D39238;
  if (qword_280D39238 && (v6 = sub_2230C3D74(), v7 = [v5 BOOLForKey_], v6, (v7 & 1) != 0))
  {
    v8 = 0xE400000000000000;
    v9 = 1702195828;
  }

  else
  {
    v8 = 0xE500000000000000;
    v9 = 0x65736C6166;
  }

  MEMORY[0x223DD4D40](v9, v8);

  MEMORY[0x223DD4D40](0xD000000000000010, 0x80000002230C7350);
  if (qword_280D39240)
  {

    sub_22309F000();
  }

  if (v5 && (v10 = sub_2230C3D74(), v11 = [v5 BOOLForKey_], v10, (v11 & 1) != 0))
  {
    v12 = 0xE400000000000000;
    v13 = 1702195828;
  }

  else
  {
    v12 = 0xE500000000000000;
    v13 = 0x65736C6166;
  }

  MEMORY[0x223DD4D40](v13, v12);

  MEMORY[0x223DD4D40](0xD00000000000001BLL, 0x80000002230C7370);
  if (qword_280D39240)
  {

    sub_22309F000();
  }

  if (v5 && (v14 = sub_2230C3D74(), v15 = [v5 BOOLForKey_], v14, (v15 & 1) != 0))
  {
    v16 = 0xE400000000000000;
    v17 = 1702195828;
  }

  else
  {
    v16 = 0xE500000000000000;
    v17 = 0x65736C6166;
  }

  MEMORY[0x223DD4D40](v17, v16);

  MEMORY[0x223DD4D40](0xD00000000000001FLL, 0x80000002230C7390);
  sub_2230BB728();
  if (v5)
  {
    v18 = sub_2230C3D74();
    v19 = [v5 integerForKey_];
  }

  else
  {
    v19 = 0;
  }

  v41 = v19;
  v20 = sub_2230C3F84();
  MEMORY[0x223DD4D40](v20);

  MEMORY[0x223DD4D40](0xD000000000000024, 0x80000002230C73B0);
  static GenerativeAssistantSettingsUserDefaults.declineComposeViaSiriExpiration()(v4);
  sub_2230BB934();
  v21 = sub_2230C3F84();
  MEMORY[0x223DD4D40](v21);

  v22 = *(v1 + 8);
  v22(v4, v0);
  MEMORY[0x223DD4D40](0xD000000000000018, 0x80000002230C73E0);
  sub_2230BB728();
  if (v5)
  {
    v23 = sub_2230C3D74();
    v24 = [v5 integerForKey_];
  }

  else
  {
    v24 = 0;
  }

  v41 = v24;
  v25 = sub_2230C3F84();
  MEMORY[0x223DD4D40](v25);

  MEMORY[0x223DD4D40](0xD00000000000001DLL, 0x80000002230C7400);
  static GenerativeAssistantSettingsUserDefaults.declineMediaQAExpiration()(v4);
  v26 = sub_2230C3F84();
  MEMORY[0x223DD4D40](v26);

  v22(v4, v0);
  MEMORY[0x223DD4D40](0xD000000000000022, 0x80000002230C7420);
  sub_2230BB728();
  if (v5)
  {
    v27 = sub_2230C3D74();
    v28 = [v5 integerForKey_];
  }

  else
  {
    v28 = 0;
  }

  v41 = v28;
  v29 = sub_2230C3F84();
  MEMORY[0x223DD4D40](v29);

  MEMORY[0x223DD4D40](0xD000000000000027, 0x80000002230C7450);
  static GenerativeAssistantSettingsUserDefaults.declineKnowledgeFallbackExpiration()(v4);
  v30 = sub_2230C3F84();
  MEMORY[0x223DD4D40](v30);

  v22(v4, v0);
  MEMORY[0x223DD4D40](0xD00000000000001CLL, 0x80000002230C7480);
  v31 = _s27GenerativeAssistantSettings0abC12UserDefaultsC23taperConfirmationDialogSbyFZ_0();
  v32 = (v31 & 1) == 0;
  if (v31)
  {
    v33 = 1702195828;
  }

  else
  {
    v33 = 0x65736C6166;
  }

  if (v32)
  {
    v34 = 0xE500000000000000;
  }

  else
  {
    v34 = 0xE400000000000000;
  }

  MEMORY[0x223DD4D40](v33, v34);

  MEMORY[0x223DD4D40](0xD000000000000016, 0x80000002230C74A0);
  v41 = _s27GenerativeAssistantSettings0abC12UserDefaultsC17confirmationCountSiyFZ_0();
  v35 = sub_2230C3F84();
  MEMORY[0x223DD4D40](v35);

  MEMORY[0x223DD4D40](0xD000000000000024, 0x80000002230C74C0);
  _s27GenerativeAssistantSettings0abC12UserDefaultsC31consecutiveLLMConfirmationDatesSay10Foundation4DateVGyFZ_0();
  v36 = MEMORY[0x223DD4D90]();
  v38 = v37;

  MEMORY[0x223DD4D40](v36, v38);

  return v42;
}

id static GenerativeAssistantSettingsUserDefaults.useConfirmationPrompts()()
{
  if (qword_280D39240)
  {

    sub_22309F000();
  }

  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v0 = qword_280D39238;
  if (qword_280D39238)
  {
    v1 = sub_2230C3D74();
    v0 = [v0 BOOLForKey_];
  }

  return v0;
}

uint64_t static GenerativeAssistantSettingsUserDefaults.declineComposeViaSiriExpiration()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055340, &qword_2230C58A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  sub_2230BB728();
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v6 = qword_280D39238;
  if (!qword_280D39238)
  {
    v15 = 0u;
    v16 = 0u;
LABEL_11:
    sub_2230A2EE8(&v15, &qword_27D0553D0, &qword_2230C4D28);
    v9 = sub_2230C3604();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    goto LABEL_12;
  }

  v7 = sub_2230C3D74();
  v8 = [v6 objectForKey_];

  if (v8)
  {
    sub_2230C3EE4();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15 = v13;
  v16 = v14;
  if (!*(&v14 + 1))
  {
    goto LABEL_11;
  }

  v9 = sub_2230C3604();
  v10 = swift_dynamicCast();
  v11 = *(v9 - 8);
  (*(v11 + 56))(v5, v10 ^ 1u, 1, v9);
  if ((*(v11 + 48))(v5, 1, v9) != 1)
  {
    return (*(v11 + 32))(a1, v5, v9);
  }

LABEL_12:
  sub_2230C35A4();
  sub_2230C3604();
  result = (*(*(v9 - 8) + 48))(v5, 1, v9);
  if (result != 1)
  {
    return sub_2230A2EE8(v5, &qword_27D055340, &qword_2230C58A0);
  }

  return result;
}

uint64_t static GenerativeAssistantSettingsUserDefaults.declineKnowledgeFallbackExpiration()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055340, &qword_2230C58A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  sub_2230BB728();
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v6 = qword_280D39238;
  if (!qword_280D39238)
  {
    v15 = 0u;
    v16 = 0u;
LABEL_11:
    sub_2230A2EE8(&v15, &qword_27D0553D0, &qword_2230C4D28);
    v9 = sub_2230C3604();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    goto LABEL_12;
  }

  v7 = sub_2230C3D74();
  v8 = [v6 objectForKey_];

  if (v8)
  {
    sub_2230C3EE4();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15 = v13;
  v16 = v14;
  if (!*(&v14 + 1))
  {
    goto LABEL_11;
  }

  v9 = sub_2230C3604();
  v10 = swift_dynamicCast();
  v11 = *(v9 - 8);
  (*(v11 + 56))(v5, v10 ^ 1u, 1, v9);
  if ((*(v11 + 48))(v5, 1, v9) != 1)
  {
    return (*(v11 + 32))(a1, v5, v9);
  }

LABEL_12:
  sub_2230C35A4();
  sub_2230C3604();
  result = (*(*(v9 - 8) + 48))(v5, 1, v9);
  if (result != 1)
  {
    return sub_2230A2EE8(v5, &qword_27D055340, &qword_2230C58A0);
  }

  return result;
}

uint64_t static GenerativeAssistantSettingsUserDefaults.declineMediaQAExpiration()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055340, &qword_2230C58A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  sub_2230BB728();
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v6 = qword_280D39238;
  if (!qword_280D39238)
  {
    v15 = 0u;
    v16 = 0u;
LABEL_11:
    sub_2230A2EE8(&v15, &qword_27D0553D0, &qword_2230C4D28);
    v9 = sub_2230C3604();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    goto LABEL_12;
  }

  v7 = sub_2230C3D74();
  v8 = [v6 objectForKey_];

  if (v8)
  {
    sub_2230C3EE4();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15 = v13;
  v16 = v14;
  if (!*(&v14 + 1))
  {
    goto LABEL_11;
  }

  v9 = sub_2230C3604();
  v10 = swift_dynamicCast();
  v11 = *(v9 - 8);
  (*(v11 + 56))(v5, v10 ^ 1u, 1, v9);
  if ((*(v11 + 48))(v5, 1, v9) != 1)
  {
    return (*(v11 + 32))(a1, v5, v9);
  }

LABEL_12:
  sub_2230C35A4();
  sub_2230C3604();
  result = (*(*(v9 - 8) + 48))(v5, 1, v9);
  if (result != 1)
  {
    return sub_2230A2EE8(v5, &qword_27D055340, &qword_2230C58A0);
  }

  return result;
}

uint64_t static GenerativeAssistantSettingsUserDefaults.nextDisableConfirmRequestsConfirmationDate()@<X0>(uint64_t a1@<X8>)
{
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v2 = qword_280D39238;
  if (qword_280D39238)
  {
    v3 = sub_2230C3D74();
    v4 = [v2 objectForKey_];

    if (v4)
    {
      sub_2230C3EE4();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v11 = v9;
    v12 = v10;
    if (*(&v10 + 1))
    {
      v5 = sub_2230C3604();
      v6 = swift_dynamicCast();
      return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  sub_2230A2EE8(&v11, &qword_27D0553D0, &qword_2230C4D28);
  v8 = sub_2230C3604();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

uint64_t static GenerativeAssistantSettingsUserDefaults.lastDeclineDate()@<X0>(uint64_t a1@<X8>)
{
  sub_2230BB728();
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v2 = qword_280D39238;
  if (qword_280D39238)
  {
    v3 = sub_2230C3D74();
    v4 = [v2 objectForKey_];

    if (v4)
    {
      sub_2230C3EE4();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v11 = v9;
    v12 = v10;
    if (*(&v10 + 1))
    {
      v5 = sub_2230C3604();
      v6 = swift_dynamicCast();
      return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  sub_2230A2EE8(&v11, &qword_27D0553D0, &qword_2230C4D28);
  v8 = sub_2230C3604();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

unint64_t GenerativeAssistantSettingsUserDefaults.Key.rawValue.getter()
{
  result = 0x656C62616E457369;
  switch(*v0)
  {
    case 1:
      result = 0x6F72507075746573;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0xD00000000000001DLL;
      break;
    case 6:
      result = 0xD000000000000022;
      break;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    case 8:
    case 0xD:
      result = 0xD00000000000001FLL;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 0xA:
      result = 0xD000000000000011;
      break;
    case 0xB:
      result = 0xD000000000000014;
      break;
    case 0xC:
      result = 0xD00000000000001CLL;
      break;
    case 0xE:
      result = 0x6C6365447473616CLL;
      break;
    case 0xF:
      result = 0xD000000000000027;
      break;
    case 0x10:
    case 0x13:
      result = 0xD00000000000002ALL;
      break;
    case 0x11:
      result = 0xD00000000000001BLL;
      break;
    case 0x12:
      result = 0xD000000000000018;
      break;
    case 0x14:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

GenerativeAssistantSettings::GenerativeAssistantSettingsUserDefaults::Key_optional __swiftcall GenerativeAssistantSettingsUserDefaults.Key.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2230C3FC4();

  v5 = 0;
  v6 = 3;
  switch(v3)
  {
    case 0:
      goto LABEL_11;
    case 1:
      v5 = 1;
      goto LABEL_11;
    case 2:
      v5 = 2;
LABEL_11:
      v6 = v5;
      break;
    case 3:
      break;
    case 4:
      v6 = 4;
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    default:
      v6 = 21;
      break;
  }

  *v2 = v6;
  return result;
}