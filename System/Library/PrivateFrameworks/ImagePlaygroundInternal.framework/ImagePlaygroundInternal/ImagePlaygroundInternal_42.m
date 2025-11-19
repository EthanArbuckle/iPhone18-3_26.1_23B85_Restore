unint64_t sub_1D2713138()
{
  swift_getKeyPath();
  sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
LABEL_18:
    v2 = sub_1D2879368();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1D2870F68();
  v3 = 0;
  while (1)
  {
    if (v2 == v3)
    {
      v6 = 0;
      goto LABEL_15;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1D38A1C30](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      sub_1D2870F78();
    }

    v4 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();

    if (v4)
    {
      break;
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_17;
    }
  }

  v6 = v3;
LABEL_15:

  return v6;
}

uint64_t sub_1D27132E4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D2873CB8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = a1;
    sub_1D28724F8();
    v10 = a1;
    sub_1D2870F78();
    v11 = sub_1D2873CA8();
    v12 = sub_1D2878A18();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27[0] = v25;
      *v13 = 136315394;
      sub_1D2871818();
      sub_1D271A340(&qword_1ED8A6C90, MEMORY[0x1E69695A8]);
      v14 = sub_1D28795C8();
      v16 = sub_1D23D7C84(v14, v15, v27);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2112;
      v17 = a1;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v18;
      v19 = v24;
      *v24 = v18;
      _os_log_impl(&dword_1D226E000, v11, v12, "failed to delete asset: %s error: %@", v13, 0x16u);
      sub_1D22BD238(v19, qword_1EC6DA930);
      MEMORY[0x1D38A3520](v19, -1, -1);
      v20 = v25;
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1D38A3520](v20, -1, -1);
      MEMORY[0x1D38A3520](v13, -1, -1);
    }

    else
    {
    }

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    if (a3)
    {
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (!result)
      {
        return result;
      }

      v22 = sub_1D2870F78();
      sub_1D2711A34(v22);
    }

    else
    {
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (!result)
      {
        return result;
      }

      v23 = result;
      swift_getKeyPath();
      v26 = v23;
      sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
      sub_1D28719E8();

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1D256B210(v23);
        swift_unknownObjectRelease();
      }

      sub_1D2714110();
    }
  }
}

uint64_t sub_1D2713688()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - v3;
  swift_getKeyPath();
  v26 = v0;
  sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  v6 = *(v0 + 16);
  if (v6)
  {
    sub_1D2870F78();
    sub_1D23C7CA8();
    v7 = sub_1D2878068();
    v8 = sub_1D2878068();
    v9 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
    v10 = sub_1D2878068();
    v11 = sub_1D2418030(v9);

    if (v11)
    {
      type metadata accessor for IAPayloadKey(0);
      sub_1D22BCFD0(0, &qword_1ED89CC48);
      sub_1D271A340(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey);
      v12 = sub_1D2877E78();
    }

    else
    {
      v12 = 0;
    }

    [objc_opt_self() asyncSendSignal:v8 toChannel:v7 withNullableUniqueStringID:v10 withPayload:v12];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A10);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D28809B0;
    *(v13 + 32) = v6;
    v14 = qword_1EC6D8B40;
    sub_1D2870F78();
    if (v14 != -1)
    {
      swift_once();
    }

    v15 = qword_1EC6D8B50;
    type metadata accessor for DuplicateAssetOperation();
    v16 = swift_allocObject();
    v16[3] = v13;
    v16[4] = 0;
    v16[2] = v15;
    v17 = *(v1 + 40);
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = v16;
    v20 = sub_1D28785F8();
    (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
    sub_1D2878568();
    swift_retain_n();
    v21 = v15;
    sub_1D2870F78();
    sub_1D2870F78();
    sub_1D2870F78();
    v22 = sub_1D2878558();
    v23 = swift_allocObject();
    v24 = MEMORY[0x1E69E85E0];
    *(v23 + 16) = v22;
    *(v23 + 24) = v24;
    *(v23 + 32) = v16;
    *(v23 + 40) = &off_1EEC2D748;
    *(v23 + 48) = 1;
    *(v23 + 56) = v17;
    *(v23 + 64) = sub_1D271A328;
    *(v23 + 72) = v19;
    sub_1D22AE01C(0, 0, v4, &unk_1D28A1340, v23);
  }

  return result;
}

void sub_1D2713ADC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D2873CB8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (a1)
  {
    v10 = a1;
    sub_1D2872528();
    v11 = a1;
    v12 = sub_1D2873CA8();
    v13 = sub_1D2878A18();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = a1;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_1D226E000, v12, v13, "Cannot duplicate asset with error: %@", v14, 0xCu);
      sub_1D22BD238(v15, qword_1EC6DA930);
      MEMORY[0x1D38A3520](v15, -1, -1);
      MEMORY[0x1D38A3520](v14, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    if (qword_1EC6D8968 != -1)
    {
      swift_once();
    }

    sub_1D25428EC(a1);

    return;
  }

  v18 = *(a3 + 32);
  if (!v18)
  {
    goto LABEL_18;
  }

  if (v18 >> 62)
  {
    v23 = Strong;
    v24 = sub_1D2879368();
    Strong = v23;
    if (v24)
    {
      goto LABEL_11;
    }

LABEL_18:

    return;
  }

  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_18;
  }

LABEL_11:
  if ((v18 & 0xC000000000000001) != 0)
  {
    v19 = Strong;
    sub_1D2870F68();
    MEMORY[0x1D38A1C30](0, v18);
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v19 = Strong;
    sub_1D2870F78();
  }

  v20 = sub_1D2870F78();
  sub_1D2711A34(v20);
  swift_getKeyPath();
  v25 = v19;
  sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  v21 = *(v19 + 56);
  if (v21)
  {
    v22 = sub_1D2870F78();
    v21(v22);

    sub_1D22A576C(v21);
  }

  else
  {
  }
}

uint64_t sub_1D2713E78()
{
  swift_getKeyPath();
  sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  v2 = *(v0 + 16);
  if (v2)
  {
    sub_1D2870F78();
    sub_1D23C7CA8();
    v3 = sub_1D2878068();
    v4 = sub_1D2878068();
    v5 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
    v6 = sub_1D2878068();
    v7 = sub_1D2418030(v5);

    if (v7)
    {
      type metadata accessor for IAPayloadKey(0);
      sub_1D22BCFD0(0, &qword_1ED89CC48);
      sub_1D271A340(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey);
      v8 = sub_1D2877E78();
    }

    else
    {
      v8 = 0;
    }

    [objc_opt_self() asyncSendSignal:v4 toChannel:v3 withNullableUniqueStringID:v6 withPayload:v8];

    swift_getKeyPath();
    sub_1D28719E8();

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1D2569550(v2);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1D2714110()
{
  if (v0[88])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
    sub_1D28719D8();

    if ((v0[89] & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v0[88] = 0;
    if ((v0[89] & 1) == 0)
    {
LABEL_3:
      v0[89] = 0;
      if ((v0[90] & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v3 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v3);
      sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
      sub_1D28719D8();

      if ((v0[48] & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v4 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v4);
      sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
      sub_1D28719D8();

      return sub_1D2711A34(0);
    }
  }

  v2 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v2);
  sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719D8();

  if (v0[90])
  {
    goto LABEL_8;
  }

LABEL_4:
  v0[90] = 0;
  if (v0[48])
  {
    goto LABEL_9;
  }

LABEL_5:
  v0[48] = 0;
  return sub_1D2711A34(0);
}

uint64_t sub_1D2714488(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v3 = sub_1D2871818();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v23 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94F0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  (*(v4 + 16))(&v23 - v15, *a1 + *(**a1 + 160), v3, v14);
  (*(v4 + 56))(v16, 0, 1, v3);
  v17 = *(v7 + 56);
  sub_1D22BD1D0(v16, v9, &qword_1EC6D8F70);
  sub_1D22BD1D0(v24, &v9[v17], &qword_1EC6D8F70);
  v18 = *(v4 + 48);
  if (v18(v9, 1, v3) != 1)
  {
    sub_1D22BD1D0(v9, v12, &qword_1EC6D8F70);
    if (v18(&v9[v17], 1, v3) != 1)
    {
      v20 = v23;
      (*(v4 + 32))(v23, &v9[v17], v3);
      sub_1D271A340(&unk_1ED8A6CA0, MEMORY[0x1E69695A8]);
      v19 = sub_1D2877F98();
      v21 = *(v4 + 8);
      v21(v20, v3);
      sub_1D22BD238(v16, &qword_1EC6D8F70);
      v21(v12, v3);
      sub_1D22BD238(v9, &qword_1EC6D8F70);
      return v19 & 1;
    }

    sub_1D22BD238(v16, &qword_1EC6D8F70);
    (*(v4 + 8))(v12, v3);
    goto LABEL_6;
  }

  sub_1D22BD238(v16, &qword_1EC6D8F70);
  if (v18(&v9[v17], 1, v3) != 1)
  {
LABEL_6:
    sub_1D22BD238(v9, &qword_1EC6D94F0);
    v19 = 0;
    return v19 & 1;
  }

  sub_1D22BD238(v9, &qword_1EC6D8F70);
  v19 = 1;
  return v19 & 1;
}

uint64_t sub_1D2714884()
{
  v1 = v0;
  swift_getKeyPath();
  v2 = OBJC_IVAR____TtC23ImagePlaygroundInternal15DetailViewModel___observationRegistrar;
  sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  if (*(v0 + 16))
  {
    sub_1D2870F78();
    v4 = sub_1D2713138();
    if (v5)
    {
    }

    v6 = v4;
    swift_getKeyPath();
    sub_1D28719E8();

    if (!v6)
    {
    }

    swift_getKeyPath();
    v7 = v0 + v2;
    sub_1D28719E8();

    v8 = __OFSUB__(v6, 1);
    v9 = v6 - 1;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      swift_getKeyPath();
      sub_1D28719E8();

      v7 = *(v1 + 24);
      if ((v7 & 0xC000000000000001) == 0)
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v9 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          sub_1D2870F78();
LABEL_9:
          v10 = sub_1D2870F78();
          sub_1D2711A34(v10);
          swift_getKeyPath();
          sub_1D28719E8();

          v11 = *(v1 + 56);
          if (v11)
          {
            v12 = sub_1D2870F78();
            v11(v12);

            return sub_1D22A576C(v11);
          }
        }

        __break(1u);
        return result;
      }
    }

    sub_1D2870F68();
    MEMORY[0x1D38A1C30](v9, v7);

    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1D2714ADC()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  if (*(v0 + 16))
  {
    sub_1D2870F78();
    v3 = sub_1D2713138();
    if (v4)
    {
    }

    v5 = v3;
    swift_getKeyPath();
    sub_1D28719E8();

    v6 = __OFADD__(v5, 1);
    v7 = v5 + 1;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      swift_getKeyPath();
      sub_1D28719E8();

      v8 = *(v0 + 24);
      if (!(v8 >> 62))
      {
        if (v7 != *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_6;
        }
      }
    }

    if (v7 != sub_1D2879368())
    {
LABEL_6:
      swift_getKeyPath();
      sub_1D28719E8();

      v9 = *(v0 + 24);
      if ((v9 & 0xC000000000000001) == 0)
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v7 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          sub_1D2870F78();
LABEL_10:
          v10 = sub_1D2870F78();
          sub_1D2711A34(v10);
          swift_getKeyPath();
          sub_1D28719E8();

          v11 = *(v1 + 56);
          if (v11)
          {
            v12 = sub_1D2870F78();
            v11(v12);

            return sub_1D22A576C(v11);
          }
        }

        __break(1u);
        return result;
      }

      sub_1D2870F68();
      MEMORY[0x1D38A1C30](v7, v9);

      goto LABEL_10;
    }
  }

  return result;
}

uint64_t sub_1D2714D68()
{
  swift_getKeyPath();
  sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  return *(v0 + 88);
}

uint64_t sub_1D2714E08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 88);
  return result;
}

uint64_t sub_1D2714EB0()
{
  swift_getKeyPath();
  sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  return *(v0 + 89);
}

uint64_t sub_1D2714F50@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 89);
  return result;
}

uint64_t sub_1D2714FF8()
{
  swift_getKeyPath();
  sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  return *(v0 + 90);
}

uint64_t sub_1D2715098@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 90);
  return result;
}

uint64_t sub_1D2715140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_1D2873CB8();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  v5[10] = swift_task_alloc();
  v7 = sub_1D2872438();
  v5[11] = v7;
  v8 = *(v7 - 8);
  v5[12] = v8;
  v5[13] = *(v8 + 64);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = sub_1D2878568();
  v5[17] = sub_1D2878558();
  v5[18] = sub_1D2878558();
  v10 = sub_1D28784F8();
  v5[19] = v10;
  v5[20] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D27152EC, v10, v9);
}

uint64_t sub_1D27152EC()
{
  v1 = v0[5];
  swift_beginAccess();
  v2 = *(v1 + 80);
  v0[21] = v2;
  if (v2)
  {
    __swift_project_boxed_opaque_existential_1((v0[5] + 16), *(v0[5] + 40));
    v3 = v2;
    v4 = swift_task_alloc();
    v0[22] = v4;
    *v4 = v0;
    v4[1] = sub_1D271545C;
    v5 = v0[15];

    return sub_1D23E4308(v5, v3);
  }

  else
  {

    sub_1D233F184();
    v7 = swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v0[24] = v7;
    v10 = sub_1D28784F8();

    return MEMORY[0x1EEE6DFA0](sub_1D2715888, v10, v9);
  }
}

uint64_t sub_1D271545C()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);
  if (v0)
  {
    v5 = sub_1D27157F8;
  }

  else
  {
    v5 = sub_1D2715598;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D2715598()
{
  v1 = *(v0 + 168);

  v3 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D271562C, v3, v2);
}

uint64_t sub_1D271562C()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[10];
  v5 = v0[11];
  v7 = v0[5];
  v6 = v0[6];

  v8 = sub_1D28785F8();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  (*(v3 + 16))(v1, v2, v5);
  sub_1D2870F78();
  sub_1D2870F78();
  v9 = sub_1D2878558();
  v10 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  *(v11 + 2) = v9;
  *(v11 + 3) = v12;
  *(v11 + 4) = v6;
  *(v11 + 5) = v7;
  (*(v3 + 32))(&v11[v10], v1, v5);
  sub_1D22AE01C(0, 0, v4, &unk_1D28A1238, v11);

  (*(v0[12] + 8))(v0[15], v0[11]);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D27157F8()
{
  v1 = v0[21];

  v0[24] = v0[23];
  v3 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2715888, v3, v2);
}

uint64_t sub_1D2715888()
{
  v1 = v0[24];

  sub_1D2872658();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[24];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1D226E000, v3, v4, "Could not get recipe for asset with error: %@", v7, 0xCu);
    sub_1D22BD238(v8, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v8, -1, -1);
    MEMORY[0x1D38A3520](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[8] + 8))(v0[9], v0[7]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D2715A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[15] = a4;
  sub_1D2878568();
  v6[18] = sub_1D2878558();
  v8 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2715AD4, v8, v7);
}

uint64_t sub_1D2715AD4()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_getKeyPath();
    v0[5] = v2;
    sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
    sub_1D28719E8();

    v3 = *(v2 + 16);
    sub_1D2870F78();

    if (v3)
    {
      v4 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();

      if (v4)
      {
        swift_beginAccess();
        v5 = swift_weakLoadStrong();
        if (v5)
        {
          v6 = v5;
          if (qword_1ED8A5B78 != -1)
          {
            swift_once();
          }

          v7 = sub_1D23BFFB4(v0[17]) & 1;
          if (v7 == *(v6 + 89))
          {
            *(v6 + 89) = v7;
          }

          else
          {
            swift_getKeyPath();
            v8 = swift_task_alloc();
            *(v8 + 16) = v6;
            *(v8 + 24) = v7;
            v0[8] = v6;
            sub_1D28719D8();
          }
        }

        swift_beginAccess();
        v9 = swift_weakLoadStrong();
        if (v9)
        {
          v10 = v9;
          if (qword_1ED8A5B78 != -1)
          {
            swift_once();
          }

          v11 = sub_1D23C04E8(v0[17]) & 1;
          if (v11 == *(v10 + 90))
          {
            *(v10 + 90) = v11;
          }

          else
          {
            swift_getKeyPath();
            v12 = swift_task_alloc();
            *(v12 + 16) = v10;
            *(v12 + 24) = v11;
            v0[11] = v10;
            sub_1D28719D8();
          }
        }

        swift_beginAccess();
        v13 = swift_weakLoadStrong();
        if (v13)
        {
          if (*(v13 + 88))
          {
            v14 = v13;
            swift_getKeyPath();
            v15 = swift_task_alloc();
            *(v15 + 16) = v14;
            *(v15 + 24) = 0;
            v0[14] = v14;
            sub_1D28719D8();
          }

          else
          {
            *(v13 + 88) = 0;
          }
        }
      }
    }
  }

  v16 = v0[1];

  return v16();
}

void *sub_1D2715F10()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 96);
  }

  else
  {
    v2 = *(v0 + 32);
    type metadata accessor for FeedbackSectionViewModel();
    v1 = swift_allocObject();
    v1[3] = 0;
    swift_unknownObjectWeakInit();
    v1[4] = 0;
    sub_1D2870F78();
    sub_1D2871A18();
    v1[5] = v2;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D271A340(&qword_1ED8A0028, type metadata accessor for FeedbackSectionViewModel);
    sub_1D28719D8();

    *(v0 + 96) = v1;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v1;
}

uint64_t sub_1D2716094()
{
  sub_1D23C7998();

  v7 = &type metadata for FeedbackFeatures;
  v8 = sub_1D233EEC8();
  v0 = sub_1D2871AA8();
  __swift_destroy_boxed_opaque_existential_0(v6);
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  result = 0;
  if (has_internal_diagnostics && (v0 & 1) != 0)
  {
    if (qword_1ED8A4928 != -1)
    {
      swift_once();
    }

    sub_1D22BCFD0(0, &qword_1ED89CDA0);
    v3 = sub_1D2878A58();
    v4 = sub_1D2878068();
    v5 = [v3 BOOLForKey_];

    return v5 ^ 1;
  }

  return result;
}

BOOL sub_1D27161B0()
{
  sub_1D23C7998();

  v6 = &type metadata for FeedbackFeatures;
  v7 = sub_1D233EEC8();
  v0 = sub_1D2871AA8();
  __swift_destroy_boxed_opaque_existential_0(v5);
  if ((os_variant_has_internal_diagnostics() & 1) == 0)
  {
    return (v0 & 1) != 0;
  }

  if ((v0 & 1) == 0)
  {
    return 0;
  }

  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D22BCFD0(0, &qword_1ED89CDA0);
  v1 = sub_1D2878A58();
  v2 = sub_1D2878068();
  v3 = [v1 BOOLForKey_];

  return v3;
}

uint64_t sub_1D27162D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE30);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v19 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v19 - v5;
  v7 = *(v0 + 32);
  swift_getKeyPath();
  *&v21 = v0;
  sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D2870F78();
  sub_1D28719E8();

  v8 = *(v0 + 16);
  v9 = sub_1D2871818();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = sub_1D2872438();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  type metadata accessor for FeedbackInput();
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  v11 = swift_allocObject();
  v12 = OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_featureDomain;
  v13 = *MEMORY[0x1E699C2C8];
  v14 = sub_1D2871CD8();
  (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
  v15 = v11 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_generationStateProvider;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0;
  *(v11 + 16) = v7;
  *(v11 + 24) = 0;
  *(v11 + 32) = v8;
  *(v11 + 40) = 0;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  *(v11 + 64) = 0;
  *(v11 + 88) = 0;
  *(v11 + 96) = 0;
  sub_1D22EC9BC(v6, v11 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_id, &qword_1EC6D8F70);
  sub_1D22EC9BC(v3, v11 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_recipe, &unk_1EC6DDE30);
  swift_beginAccess();
  sub_1D2870F78();
  sub_1D22D7384(&v21, v15, &qword_1EC6DA1F0);
  swift_endAccess();
  *(v11 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_isSaved) = 1;
  *(v11 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_diffusionModelSpecification) = 0;
  v16 = v11 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_error;
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = -4;
  v19[0] = v21;
  v19[1] = v22;
  v20 = v23;
  if (*(&v22 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE40);
    _s22OnDeviceImageGeneratorCMa(0);
    if (swift_dynamicCast())
    {
    }
  }

  else
  {
    sub_1D22BD238(v19, &qword_1EC6DA1F0);
  }

  *(v11 + 72) = 0;
  *(v11 + 80) = 0;
  return v11;
}

uint64_t sub_1D27166D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  v5[9] = swift_task_alloc();
  v6 = sub_1D2871908();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1920);
  v5[14] = swift_task_alloc();
  sub_1D2878568();
  v5[15] = sub_1D2878558();
  v8 = sub_1D28784F8();
  v5[16] = v8;
  v5[17] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D2716838, v8, v7);
}

unint64_t sub_1D2716838()
{
  v1 = *(v0 + 104);
  sub_1D2871928();
  *(v0 + 168) = *(v1 + 36);
  *(v0 + 144) = OBJC_IVAR____TtC23ImagePlaygroundInternal15DetailViewModel___observationRegistrar;
  sub_1D2871988();
  sub_1D271A340(&unk_1ED8A6C50, MEMORY[0x1E6969B50]);
  do
  {
    v2 = *(v0 + 88);
    v3 = *(v0 + 96);
    v4 = *(v0 + 80);
    sub_1D2878868();
    sub_1D271A340(&unk_1ED8A6C70, MEMORY[0x1E6969B18]);
    v5 = sub_1D2877F98();
    (*(v2 + 8))(v3, v4);
    v6 = *(v0 + 112);
    if (v5)
    {
      goto LABEL_9;
    }

    v7 = *(v0 + 64);
    v8 = sub_1D28788B8();
    v10 = *v9;
    v8(v0 + 16, 0);
    sub_1D2878878();
    swift_getKeyPath();
    *(v0 + 48) = v7;
    sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
    sub_1D28719E8();

    v6 = *(v7 + 24);
    if (v6 >> 62)
    {
      result = sub_1D2879368();
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_9:
        sub_1D22BD238(v6, &unk_1EC6E1920);

        v12 = *(v0 + 8);

        return v12();
      }
    }

    else
    {
      result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  while (v10 >= result);
  if ((v6 & 0xC000000000000001) != 0)
  {
    sub_1D2870F68();
    v13 = MEMORY[0x1D38A1C30](v10, v6);
  }

  else
  {
    if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v13 = *(v6 + 8 * v10 + 32);
    sub_1D2870F78();
  }

  *(v0 + 152) = v13;
  v14 = swift_task_alloc();
  *(v0 + 160) = v14;
  *v14 = v0;
  v14[1] = sub_1D2716BC8;
  v15 = *(v0 + 72);

  return sub_1D270BEC8(v15, 1, 0);
}

uint64_t sub_1D2716BC8()
{
  v1 = *v0;
  v2 = *(*v0 + 72);

  sub_1D22BD238(v2, &unk_1EC6DE5A0);
  v3 = *(v1 + 136);
  v4 = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1D2716D1C, v4, v3);
}

unint64_t sub_1D2716D1C()
{

  sub_1D2871988();
  sub_1D271A340(&unk_1ED8A6C50, MEMORY[0x1E6969B50]);
  do
  {
    v1 = v0[11];
    v2 = v0[12];
    v3 = v0[10];
    sub_1D2878868();
    sub_1D271A340(&unk_1ED8A6C70, MEMORY[0x1E6969B18]);
    v4 = sub_1D2877F98();
    (*(v1 + 8))(v2, v3);
    v5 = v0[14];
    if (v4)
    {
      goto LABEL_9;
    }

    v6 = v0[8];
    v7 = sub_1D28788B8();
    v9 = *v8;
    v7(v0 + 2, 0);
    sub_1D2878878();
    swift_getKeyPath();
    v0[6] = v6;
    sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
    sub_1D28719E8();

    v5 = *(v6 + 24);
    if (v5 >> 62)
    {
      result = sub_1D2879368();
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_9:
        sub_1D22BD238(v5, &unk_1EC6E1920);

        v11 = v0[1];

        return v11();
      }
    }

    else
    {
      result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  while (v9 >= result);
  if ((v5 & 0xC000000000000001) != 0)
  {
    sub_1D2870F68();
    v12 = MEMORY[0x1D38A1C30](v9, v5);
  }

  else
  {
    if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v12 = *(v5 + 8 * v9 + 32);
    sub_1D2870F78();
  }

  v0[19] = v12;
  v13 = swift_task_alloc();
  v0[20] = v13;
  *v13 = v0;
  v13[1] = sub_1D2716BC8;
  v14 = v0[9];

  return sub_1D270BEC8(v14, 1, 0);
}

uint64_t sub_1D2717094()
{

  sub_1D22A576C(*(v0 + 56));
  sub_1D22729C0(v0 + 72);

  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal15DetailViewModel___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1D271712C()
{
  sub_1D2717094();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DetailViewModel()
{
  result = qword_1EC6D8870;
  if (!qword_1EC6D8870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D27171D8()
{
  result = sub_1D2871A28();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D27172B8()
{
  v0 = sub_1D2870F68();
  v3 = sub_1D2581984(v0);
  sub_1D257D184(&v3);
  v1 = v3;

  return sub_1D2711D60(v1);
}

uint64_t sub_1D2717324(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v22 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v12 = sub_1D23C7998();
  v13 = sub_1D27162D8();
  v14 = sub_1D2871CA8();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = sub_1D28785F8();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_1D22BD1D0(v11, v8, &unk_1EC6DDE50);
  sub_1D2878568();
  sub_1D2870F78();
  sub_1D2870F78();
  v16 = sub_1D2878558();
  v17 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  v18[2] = v16;
  v18[3] = v19;
  v18[4] = v13;
  v18[5] = v12;
  sub_1D22EC9BC(v8, v18 + v17, &unk_1EC6DDE50);
  sub_1D22AE01C(0, 0, v4, v22, v18);

  return sub_1D22BD238(v11, &unk_1EC6DDE50);
}

uint64_t sub_1D2717620()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v1 + 16) = *(v0 + 24);
  sub_1D2870F78();
  sub_1D2710DA8(v2);
}

uint64_t sub_1D2717670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D2717694, 0, 0);
}

uint64_t sub_1D2717694()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = type metadata accessor for PlaygroundImage();
  *v2 = v0;
  v2[1] = sub_1D271778C;
  v4 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0x6C61566863746566, 0xEC00000029286575, sub_1D2719DC8, v1, v3);
}

uint64_t sub_1D271778C()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D2602404, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D27178C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a3;
  v57 = a1;
  v4 = type metadata accessor for PlaygroundImage();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v53 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v48 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DECA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v51 = &v48 - v9;
  v10 = sub_1D2871818();
  v50 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE08);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v55 = (&v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v48 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v48 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0C00);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v48 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v48 - v27);
  v29 = *(*a2 + 104);
  v49 = a2;
  v30 = (a2 + v29);
  os_unfair_lock_lock(v30);
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF668) + 28);
  v58 = v30;
  v32 = v30 + v31;
  sub_1D22BD1D0(v32, v25, &qword_1EC6E0C00);
  v33 = *(v13 + 48);
  if (v33(v25, 1, v12) != 1)
  {
    sub_1D22EC9BC(v25, v19, &qword_1EC6DAE08);
    sub_1D22EC9BC(v19, v28, &qword_1EC6DAE08);
    goto LABEL_5;
  }

  sub_1D22BD238(v25, &qword_1EC6E0C00);
  if (sub_1D28786D8())
  {
    sub_1D2878538();
    sub_1D271A340(&unk_1ED89CFC0, MEMORY[0x1E69E8550]);
    v34 = swift_allocError();
    sub_1D2877E68();
    *v28 = v34;
    swift_storeEnumTagMultiPayload();
LABEL_5:
    v35 = 0;
    goto LABEL_6;
  }

  (*(v50 + 16))(v54, v52, v10);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DADD0);
  v40 = *(v39 - 8);
  v41 = v51;
  (*(v40 + 16))(v51, v57, v39);
  (*(v40 + 56))(v41, 0, 1, v39);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF658);
  sub_1D25CEED4(v41, v54);
  v35 = 1;
  v43 = *(v42 + 32);
  if (!*(v32 + v43))
  {
    v44 = sub_1D28785F8();
    v45 = v48;
    (*(*(v44 - 8) + 56))(v48, 1, 1, v44);
    v46 = swift_allocObject();
    v46[2] = 0;
    v46[3] = 0;
    v46[4] = v49;
    sub_1D2870F78();
    *(v32 + v43) = sub_1D22AE01C(0, 0, v45, &unk_1D28A11D8, v46);

    v35 = 1;
  }

LABEL_6:
  (*(v13 + 56))(v28, v35, 1, v12);
  os_unfair_lock_unlock(v58);
  sub_1D22BD1D0(v28, v22, &qword_1EC6E0C00);
  if (v33(v22, 1, v12) == 1)
  {
    sub_1D22BD238(v28, &qword_1EC6E0C00);
    v36 = v22;
  }

  else
  {
    v37 = v56;
    sub_1D22EC9BC(v22, v56, &qword_1EC6DAE08);
    v38 = v55;
    sub_1D22BD1D0(v37, v55, &qword_1EC6DAE08);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v59 = *v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DADD0);
      sub_1D2878508();
    }

    else
    {
      sub_1D23EEBD4(v38, v53);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DADD0);
      sub_1D2878518();
    }

    sub_1D22BD238(v37, &qword_1EC6DAE08);
    v36 = v28;
  }

  return sub_1D22BD238(v36, &qword_1EC6E0C00);
}

uint64_t sub_1D2718038(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E0C08);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DECA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v21 - v12;
  v14 = (a1 + *(*a1 + 104));
  os_unfair_lock_lock(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF668);
  sub_1D2718354(v14 + *(v15 + 28), a2, v7);
  os_unfair_lock_unlock(v14);
  v16 = *v7;
  sub_1D22EC9BC(&v7[*(v5 + 56)], v13, &qword_1EC6DECA0);
  if (v16)
  {
    sub_1D2870F78();
    sub_1D28786B8();
  }

  sub_1D22BD1D0(v13, v10, &qword_1EC6DECA0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DADD0);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v10, 1, v17) == 1)
  {
    sub_1D22BD238(v13, &qword_1EC6DECA0);

    return sub_1D22BD238(v10, &qword_1EC6DECA0);
  }

  else
  {
    sub_1D2878538();
    sub_1D271A340(&unk_1ED89CFC0, MEMORY[0x1E69E8550]);
    v20 = swift_allocError();
    sub_1D2877E68();
    v21[1] = v20;
    sub_1D2878508();

    sub_1D22BD238(v13, &qword_1EC6DECA0);
    return (*(v18 + 8))(v10, v17);
  }
}

uint64_t sub_1D2718354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v23 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DECA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DADD0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF658);
  v13 = v12[7];
  sub_1D25F696C(a2, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D22BD238(v7, &qword_1EC6DECA0);
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E0C08) + 48);
    v15 = v23;
    *v23 = 0;
    return (*(v9 + 56))(&v15[v14], 1, 1, v8);
  }

  else
  {
    v17 = *(v9 + 32);
    v17(v11, v7, v8);
    if (*(*(a1 + v13) + 16))
    {
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E0C08) + 48);
      v19 = v23;
      *v23 = 0;
      v17(&v19[v18], v11, v8);
      return (*(v9 + 56))(&v19[v18], 0, 1, v8);
    }

    else
    {
      *(a1 + v12[9]) = 1;
      v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E0C08) + 48);
      v21 = v23;
      *v23 = *(a1 + v12[8]);
      v17(&v21[v20], v11, v8);
      (*(v9 + 56))(&v21[v20], 0, 1, v8);
      return sub_1D2870F78();
    }
  }
}

uint64_t sub_1D2718624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DADD0);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  type metadata accessor for PlaygroundImage();
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v4[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE08);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2718770, 0, 0);
}

uint64_t sub_1D2718770()
{
  v4 = (*(v0[3] + 16) + **(v0[3] + 16));
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_1D2718864;
  v2 = v0[8];

  return v4(v2);
}

uint64_t sub_1D2718864()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1D2718BE8;
  }

  else
  {
    v2 = sub_1D2718978;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1D2718978()
{
  sub_1D23EEBD4(v0[8], v0[11]);
  swift_storeEnumTagMultiPayload();
  v1 = v0[13];
  v2 = v0[3];
  v3 = (v2 + *(*v2 + 104));
  os_unfair_lock_lock(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF668);
  v5 = sub_1D2718E50(v3 + *(v4 + 28), v2);
  os_unfair_lock_unlock(v3);
  if (!v1)
  {
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = v0[5];
      v9 = *(v7 + 16);
      v7 += 16;
      v8 = v9;
      v10 = v5 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
      v11 = *(v7 + 56);
      v12 = (v7 - 8);
      do
      {
        v16 = v0[10];
        v15 = v0[11];
        v8(v0[6], v10, v0[4]);
        sub_1D22BD1D0(v15, v16, &qword_1EC6DAE08);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v18 = v0[10];
        if (EnumCaseMultiPayload == 1)
        {
          v13 = v0[6];
          v14 = v0[4];
          v0[2] = *v18;
          sub_1D2878508();
          (*v12)(v13, v14);
        }

        else
        {
          v19 = v0[6];
          v20 = v0[4];
          sub_1D23EEBD4(v18, v0[7]);
          sub_1D2878518();
          (*v12)(v19, v20);
        }

        v10 += v11;
        --v6;
      }

      while (v6);
    }

    sub_1D22BD238(v0[11], &qword_1EC6DAE08);

    v21 = v0[1];

    v21();
  }
}

uint64_t sub_1D2718BE8()
{
  *v0[11] = v0[13];
  swift_storeEnumTagMultiPayload();
  v1 = v0[3];
  v2 = (v1 + *(*v1 + 104));
  os_unfair_lock_lock(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF668);
  v4 = sub_1D2718E50(v2 + *(v3 + 28), v1);
  os_unfair_lock_unlock(v2);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v0[5];
    v8 = *(v6 + 16);
    v6 += 16;
    v7 = v8;
    v9 = v4 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v10 = *(v6 + 56);
    v11 = (v6 - 8);
    do
    {
      v15 = v0[10];
      v14 = v0[11];
      v7(v0[6], v9, v0[4]);
      sub_1D22BD1D0(v14, v15, &qword_1EC6DAE08);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v17 = v0[10];
      if (EnumCaseMultiPayload == 1)
      {
        v12 = v0[6];
        v13 = v0[4];
        v0[2] = *v17;
        sub_1D2878508();
        (*v11)(v12, v13);
      }

      else
      {
        v18 = v0[6];
        v19 = v0[4];
        sub_1D23EEBD4(v17, v0[7]);
        sub_1D2878518();
        (*v11)(v18, v19);
      }

      v9 += v10;
      --v5;
    }

    while (v5);
  }

  sub_1D22BD238(v0[11], &qword_1EC6DAE08);

  v20 = v0[1];

  return v20();
}

uint64_t sub_1D2718E50(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF658);
  v9 = v8;
  v10 = v8[9];
  if (*(a1 + v10) == 1)
  {
    *(a1 + v10) = 0;
    if (*(*(a1 + v8[7]) + 16))
    {
      v11 = sub_1D28785F8();
      (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
      v12 = swift_allocObject();
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = a2;
      sub_1D2870F78();
      v13 = sub_1D22AE01C(0, 0, v7, &unk_1D28A11E0, v12);
      v14 = v9[8];

      *(a1 + v14) = v13;
      return MEMORY[0x1E69E7CC0];
    }
  }

  v16 = v8[8];

  *(a1 + v16) = 0;
  v17 = v9[7];
  v18 = *(a1 + v17);
  v19 = *(v18 + 16);
  if (!v19)
  {

    result = MEMORY[0x1E69E7CC0];
    goto LABEL_8;
  }

  v25 = v2;
  v20 = sub_1D27CEA2C(v19, 0);
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DADD0) - 8);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v27 = v20;
  sub_1D260D454(&v26, (v20 + v22), v19, v18);
  v24 = v23;
  sub_1D2870F68();
  result = sub_1D23EEDB0();
  if (v24 == v19)
  {

    result = v27;
LABEL_8:
    *(a1 + v17) = MEMORY[0x1E69E7CC8];
    return result;
  }

  __break(1u);
  return result;
}

void *sub_1D27190D8(void *result)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = v2 == result;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    v4 = result;
    v5 = *(v1 + 24);
    v6 = *result;
    if (v5)
    {
      v7 = v5 == result;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v10 = *(v6 + 128);
      *(v1 + 24) = *(result + v10);
      sub_1D2870F78();

      *(*(v4 + v10) + *(**(v4 + v10) + 120)) = 0;
    }

    else
    {
      v8 = *(v6 + 120);
      v9 = *(v6 + 128);
      *(*(result + v8) + *(**(result + v8) + 128)) = *(result + v9);
      sub_1D2870F78();
      sub_1D2870F78();

      *(*(v4 + v9) + *(**(v4 + v9) + 120)) = *(v4 + v8);
      sub_1D2870F78();
      sub_1D2870F78();
    }

    *(v4 + *(*v4 + 120)) = *(v1 + 32);
    sub_1D2870F78();

    *(v4 + *(*v4 + 128)) = 0;

    *(*(v1 + 32) + *(**(v1 + 32) + 128)) = v4;
    sub_1D2870F78();
    swift_retain_n();

    *(v1 + 32) = v4;
  }

  return result;
}

uint64_t sub_1D27192DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for PlaygroundImage();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAB8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v28 - v10;
  swift_beginAccess();
  v12 = v2[2];
  if (*(v12 + 16) && (v13 = sub_1D25D0A7C(a1), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);
    swift_endAccess();
    v16 = *(*v15 + 112);
    swift_beginAccess();
    sub_1D2870F78();
    sub_1D2719CB0(a2, v15 + v16);
    swift_endAccess();
    sub_1D27190D8(v15);
  }

  else
  {
    swift_endAccess();
    if (*(v3[2] + 16) >= v3[5] && (v17 = v3[3]) != 0)
    {
      v18 = v3[6];
      if (v18)
      {
        v19 = *(*v17 + 104);
        swift_beginAccess();
        sub_1D22BD1D0(v17 + v19, v11, &qword_1EC6DCAB8);
        v20 = *(*v17 + 112);
        swift_beginAccess();
        sub_1D239A330(v17 + v20, v8);
        sub_1D2870F78();
        sub_1D22A58B8(v18);
        v18(v11, v8);
        sub_1D22A576C(v18);
        sub_1D23D4DFC(v8);
        sub_1D22BD238(v11, &qword_1EC6DCAB8);
      }

      else
      {
        sub_1D2870F78();
      }

      v24 = *(*v17 + 104);
      swift_beginAccess();
      sub_1D22BD1D0(v17 + v24, v11, &qword_1EC6DCAB8);
      swift_beginAccess();
      sub_1D25CEB6C(0, v11);
      sub_1D2870F78();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v3[2];
      v3[2] = 0x8000000000000000;
      sub_1D24E8910(v17, a1, isUniquelyReferenced_nonNull_native);
      v3[2] = v29;
      swift_endAccess();
      swift_beginAccess();
      sub_1D22D7384(a1, v17 + v24, &qword_1EC6DCAB8);
      swift_endAccess();
      v26 = *(*v17 + 112);
      swift_beginAccess();
      sub_1D2719CB0(a2, v17 + v26);
      swift_endAccess();
      sub_1D27190D8(v17);
    }

    else
    {
      sub_1D22BD1D0(a1, v11, &qword_1EC6DCAB8);
      sub_1D239A330(a2, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0BF8);
      v21 = swift_allocObject();
      v22 = *(*v21 + 120);
      *(v21 + v22) = 0;
      *(v21 + *(*v21 + 128)) = 0;
      sub_1D22EC9BC(v11, v21 + *(*v21 + 104), &qword_1EC6DCAB8);
      sub_1D23EEBD4(v8, v21 + *(*v21 + 112));
      swift_beginAccess();
      swift_retain_n();
      v23 = swift_isUniquelyReferenced_nonNull_native();
      v30 = v3[2];
      v3[2] = 0x8000000000000000;
      sub_1D24E8910(v21, a1, v23);
      v3[2] = v30;
      swift_endAccess();
      if (v3[3])
      {
        *(v21 + v22) = v3[4];
        sub_1D2870F78();

        *(v3[4] + *(*v3[4] + 128)) = v21;
        sub_1D2870F78();

        sub_1D2870F78();

        v3[4] = v21;
      }

      else
      {

        v3[3] = v21;

        v3[4] = v21;
        sub_1D2870F78();
      }
    }
  }
}

uint64_t sub_1D2719850(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAB8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  swift_beginAccess();
  v7 = *(v1 + 16);
  if (!*(v7 + 16))
  {
    return swift_endAccess();
  }

  v8 = sub_1D25D0A7C(a1);
  if ((v9 & 1) == 0)
  {
    return swift_endAccess();
  }

  v10 = *(*(v7 + 56) + 8 * v8);
  swift_endAccess();
  sub_1D22BD1D0(a1, v6, &qword_1EC6DCAB8);
  swift_beginAccess();
  sub_1D2870F78();
  sub_1D25CEB6C(0, v6);
  swift_endAccess();
  v11 = *v10;
  v12 = *(*v10 + 120);
  v13 = *(v10 + v12);
  if (v13)
  {
    *(v13 + *(*v13 + 128)) = *(v10 + *(*v10 + 128));
    sub_1D2870F78();
    sub_1D2870F78();

    v11 = *v10;
  }

  v14 = *(v11 + 128);
  v15 = *(v10 + v14);
  if (v15)
  {
    *(v15 + *(*v15 + 120)) = *(v10 + v12);
    sub_1D2870F78();
    sub_1D2870F78();
  }

  v16 = *(v2 + 24);
  if (v16 && v10 == v16)
  {
    *(v2 + 24) = *(v10 + v14);
    sub_1D2870F78();
  }

  v17 = *(v2 + 32);
  if (v17)
  {
    if (v10 == v17)
    {
      v19 = *(v10 + v12);
      sub_1D2870F78();

      *(v2 + 32) = v19;
    }
  }
}

uint64_t sub_1D2719AC0(uint64_t a1)
{
  v4 = *(sub_1D2871988() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D22BC8FC;

  return sub_1D27166D0(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1D2719C14(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D22BDFF8;

  return sub_1D270CB24(a1, v1);
}

uint64_t sub_1D2719CB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaygroundImage();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2719D14(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D22BDFF8;

  return sub_1D2717670(a1, v5, v4);
}

uint64_t sub_1D2719DD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D2718624(a1, v4, v5, v6);
}

uint64_t sub_1D2719E84(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D22BDFF8;

  return sub_1D270D720(a1, v1);
}

uint64_t sub_1D2719F20(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = 0;
  *(v2 + 24) = v5;
  *(v2 + 48) = 0;
  *(v2 + 80) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 88) = 0;
  *(v2 + 90) = 0;
  *(v2 + 96) = 0;
  sub_1D2871A18();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  v6 = qword_1EC6D8B40;
  sub_1D2870F78();
  sub_1D2870F78();
  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_1EC6D8B50;
  v8 = sub_1D2870F78();
  sub_1D2581FA8(v8, v7);

  return v2;
}

uint64_t sub_1D271A020(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D2715140(a1, v4, v5, v7, v6);
}

uint64_t sub_1D271A0E0(uint64_t a1)
{
  v4 = *(sub_1D2872438() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D22BDFF8;

  return sub_1D2715A38(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1D271A204(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE50) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D22BDFF8;

  return sub_1D2404630(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1D271A340(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D271A3EC(unsigned __int8 *a1@<X8>)
{
  if (os_variant_has_internal_ui())
  {
    sub_1D22BCFD0(0, &qword_1ED89CDA0);
    v2 = sub_1D2878A58();
    v3 = sub_1D2878068();
    v4 = [v2 BOOLForKey_];
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
}

void sub_1D271A494()
{
  sub_1D22BCFD0(0, &qword_1ED89CDA0);
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

uint64_t sub_1D271A540@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D23D08F8();
  *a1 = result & 1;
  return result;
}

void sub_1D271A56C()
{
  sub_1D22BCFD0(0, &qword_1ED89CDA0);
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

uint64_t sub_1D271A618@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D27342FC(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator);
  sub_1D28719E8();

  v4 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__detailViewDidAppear);
  v5 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__detailViewDidAppear + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1D23411A0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1D22A58B8(v4);
}

uint64_t sub_1D271A710(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1D2341198;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1D22A58B8(v1);
  sub_1D27342FC(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator);
  sub_1D28719D8();
  sub_1D22D7900(v4, v3);
}

uint64_t sub_1D271A86C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D27342FC(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_1D271A93C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D27342FC(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 49);
  return result;
}

uint64_t sub_1D271AA0C(int a1)
{
  v2 = v1;
  v24 = a1;
  v3 = sub_1D2875628();
  v23 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D28720D8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  sub_1D28720C8();
  (*(v7 + 104))(v9, *MEMORY[0x1E696E3E8], v6);
  sub_1D27342FC(&qword_1ED8A6BE0, MEMORY[0x1E696E3F8]);
  sub_1D2878368();
  sub_1D2878368();
  if (v27 == v25 && v28 == v26)
  {
    v13 = *(v7 + 8);
    v13(v9, v6);
    v13(v12, v6);

    if ((v24 & 1) == 0)
    {
      v14 = 0;
      return v14 & 1;
    }
  }

  else
  {
    v22 = v5;
    v15 = v1;
    v16 = v3;
    v17 = sub_1D2879618();
    v18 = *(v7 + 8);
    v18(v9, v6);
    v18(v12, v6);

    v14 = 0;
    if ((v17 & 1) == 0)
    {
      return v14 & 1;
    }

    v3 = v16;
    v2 = v15;
    v5 = v22;
    if ((v24 & 1) == 0)
    {
      return v14 & 1;
    }
  }

  if (*(v2 + 48) == 1)
  {
    v27 = *(v2 + 40);
    sub_1D2870F78();
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v19 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v23 + 8))(v5, v3);
  }

  swift_getKeyPath();
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v27 = off_1ED8A4930;
  sub_1D27342FC(&qword_1ED8A4920, type metadata accessor for DebugSettings);
  sub_1D28719E8();
  sub_1D2870F78();
  v14 = sub_1D23D08F8();

  return v14 & 1;
}

uint64_t sub_1D271AE44@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v194 = a1;
  v193 = sub_1D2877748();
  v192 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v191 = &v146 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_1D2875628();
  v148 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v147 = &v146 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = type metadata accessor for DetailView();
  v5 = *(v206 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v206);
  v177 = &v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v176 = &v146 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v146 - v10;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0C28);
  MEMORY[0x1EEE9AC00](v152);
  v153 = &v146 - v12;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0C30);
  v156 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v197 = (&v146 - v13);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0C38);
  v158 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v198 = &v146 - v14;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0C40) - 8;
  MEMORY[0x1EEE9AC00](v159);
  v154 = &v146 - v15;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0C48);
  MEMORY[0x1EEE9AC00](v160);
  v162 = &v146 - v16;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0C50);
  MEMORY[0x1EEE9AC00](v161);
  v163 = &v146 - v17;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0C58);
  MEMORY[0x1EEE9AC00](v199);
  v166 = &v146 - v18;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0C60);
  v168 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v165 = &v146 - v19;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0C68);
  MEMORY[0x1EEE9AC00](v170);
  v164 = &v146 - v20;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0C70);
  v169 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v167 = &v146 - v21;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0C78);
  v174 = *(v200 - 1);
  MEMORY[0x1EEE9AC00](v200);
  v172 = &v146 - v22;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0C80);
  v175 = *(v202 - 8);
  MEMORY[0x1EEE9AC00](v202);
  v201 = (&v146 - v23);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0C88);
  v178 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v203 = &v146 - v24;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0C90);
  v180 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v204 = &v146 - v25;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0C98);
  v183 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v182 = &v146 - v26;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0CA0);
  v187 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v184 = &v146 - v27;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0CA8);
  v188 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v185 = &v146 - v28;
  v29 = *v1;
  swift_getKeyPath();
  v207 = v29 + OBJC_IVAR____TtC23ImagePlaygroundInternal15DetailViewModel___observationRegistrar;
  *&v220 = v29;
  *&v210 = v29;
  v209 = sub_1D27342FC(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  v151 = *(v29 + 24);
  v213 = v2;
  sub_1D27328D8(v2, v11, type metadata accessor for DetailView);
  sub_1D2878568();
  sub_1D2870F68();
  v30 = sub_1D2878558();
  v31 = *(v5 + 80);
  v32 = (v31 + 32) & ~v31;
  v33 = swift_allocObject();
  v34 = MEMORY[0x1E69E85E0];
  *(v33 + 16) = v30;
  *(v33 + 24) = v34;
  sub_1D2733B20(v11, v33 + v32, type metadata accessor for DetailView);
  v196 = type metadata accessor for DetailView;
  sub_1D27328D8(v2, v11, type metadata accessor for DetailView);
  v35 = sub_1D2878558();
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  *(v36 + 24) = MEMORY[0x1E69E85E0];
  v195 = type metadata accessor for DetailView;
  sub_1D2733B20(v11, v36 + v32, type metadata accessor for DetailView);
  v37 = v152;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  v38 = v153;
  sub_1D2877528();
  v205 = v11;
  sub_1D27328D8(v213, v11, type metadata accessor for DetailView);
  v211 = (v31 + 16) & ~v31;
  v212 = v211 + v6;
  v208 = v31;
  v39 = swift_allocObject();
  sub_1D2733B20(v11, v39 + ((v31 + 16) & ~v31), type metadata accessor for DetailView);
  *v38 = v151;
  *(v38 + v37[16]) = 0;
  *(v38 + v37[17]) = 0;
  v40 = (v38 + v37[18]);
  *v40 = sub_1D2730314;
  v40[1] = v39;
  v41 = (v38 + v37[19]);
  *v41 = 0;
  v41[1] = 0;
  v42 = (v38 + v37[20]);
  *v42 = CGRectMake;
  v42[1] = 0;
  *(v38 + v37[21]) = 0;
  v43 = v38 + v37[22];
  LOBYTE(v214) = 0;
  sub_1D28772F8();
  v44 = *(&v220 + 1);
  *v43 = v220;
  *(v43 + 1) = v44;
  v45 = v206;
  v46 = v213;
  v47 = (v213 + *(v206 + 60));
  v48 = *v47;
  v49 = v47[1];
  *&v220 = v48;
  *(&v220 + 1) = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA708);
  sub_1D2877308();
  v50 = sub_1D22BB9D8(&unk_1EC6E0CB0, &qword_1EC6E0C28);
  sub_1D2876988();
  sub_1D22BD238(v38, &qword_1EC6E0C28);
  v51 = (v46 + *(v45 + 52));
  LODWORD(v153) = *v51;
  v151 = *(v51 + 1);
  LOBYTE(v214) = v153;
  *(&v214 + 1) = v151;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  sub_1D2877328();
  v52 = v205;
  sub_1D27328D8(v46, v205, v196);
  v53 = swift_allocObject();
  v54 = v211;
  v55 = v52;
  sub_1D2733B20(v52, v53 + v211, v195);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0CC0);
  *&v220 = v37;
  *(&v220 + 1) = v50;
  *&v145 = swift_getOpaqueTypeConformance2();
  *(&v145 + 1) = sub_1D2730404();
  v57 = v155;
  v58 = v197;
  sub_1D2876E48();

  (*(v156 + 8))(v58, v57);
  LOBYTE(v220) = v153;
  *(&v220 + 1) = v151;
  sub_1D2877308();
  v59 = v213;
  sub_1D27328D8(v213, v55, v196);
  v60 = swift_allocObject();
  v61 = v55;
  sub_1D2733B20(v55, v60 + v54, v195);
  *&v220 = v57;
  *(&v220 + 1) = v56;
  v62 = v154;
  v221 = v145;
  v63 = v59;
  swift_getOpaqueTypeConformance2();
  v64 = v157;
  v65 = v198;
  sub_1D2876F48();

  (*(v158 + 8))(v65, v64);
  v66 = MEMORY[0x1D38A0390](0.5, 1.0, 0.0);
  swift_getKeyPath();
  v67 = v210;
  *&v220 = v210;
  sub_1D28719E8();

  v68 = *(v67 + 16);
  v69 = (v62 + *(v159 + 44));
  *v69 = v66;
  v69[1] = v68;
  v70 = v63 + *(v206 + 44);
  v71 = *v70;
  if (*(v70 + 8) == 1)
  {
    LOBYTE(v220) = *v70;
    sub_1D2870F78();
  }

  else
  {
    sub_1D2870F78();
    sub_1D2574AC8(v71, 0);
    sub_1D2878A28();
    v72 = sub_1D28762E8();
    sub_1D2873BE8();

    v73 = v147;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v71, 0);
    (*(v148 + 8))(v73, v149);
    LOBYTE(v71) = v220;
  }

  v74 = v162;
  sub_1D22EC9BC(v62, v162, &qword_1EC6E0C40);
  *(v74 + *(v160 + 36)) = v71;
  sub_1D27328D8(v63, v55, type metadata accessor for DetailView);
  v75 = swift_allocObject();
  sub_1D2733B20(v55, v75 + v54, type metadata accessor for DetailView);
  v76 = v163;
  sub_1D22EC9BC(v74, v163, &qword_1EC6E0C48);
  v77 = (v76 + *(v161 + 36));
  *v77 = sub_1D2730538;
  v77[1] = v75;
  v77[2] = 0;
  v77[3] = 0;
  v197 = type metadata accessor for DetailView;
  sub_1D27328D8(v63, v55, type metadata accessor for DetailView);
  v78 = swift_allocObject();
  v198 = type metadata accessor for DetailView;
  sub_1D2733B20(v55, v78 + v54, type metadata accessor for DetailView);
  v79 = v166;
  sub_1D22EC9BC(v76, v166, &qword_1EC6E0C50);
  v80 = (v79 + *(v199 + 36));
  *v80 = 0;
  v80[1] = 0;
  v80[2] = sub_1D2730550;
  v80[3] = v78;
  swift_getKeyPath();
  v81 = v210;
  *&v220 = v210;
  sub_1D28719E8();

  *&v220 = *(v81 + 16);
  sub_1D27328D8(v213, v61, type metadata accessor for DetailView);
  v82 = swift_allocObject();
  sub_1D2733B20(v61, v82 + v54, type metadata accessor for DetailView);
  sub_1D2870F78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0CD8);
  sub_1D27305E8();
  sub_1D2730974();
  v83 = v165;
  sub_1D2876F48();

  sub_1D22BD238(v79, &qword_1EC6E0C58);
  swift_getKeyPath();
  *&v220 = v81;
  sub_1D28719E8();

  LOBYTE(v78) = *(v81 + 49);
  v84 = v164;
  (*(v168 + 32))(v164, v83, v171);
  v85 = v170;
  *(v84 + *(v170 + 36)) = v78;
  v86 = sub_1D2730A24();
  v87 = v167;
  sub_1D2876F98();
  sub_1D22BD238(v84, &qword_1EC6E0C68);
  *&v220 = v85;
  *(&v220 + 1) = v86;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v89 = v172;
  v90 = v173;
  sub_1D2876B78();
  (*(v169 + 8))(v87, v90);
  v91 = v213;
  v92 = (v213 + *(v206 + 64));
  v93 = *v92;
  v94 = *(v92 + 1);
  LOBYTE(v92) = v92[16];
  LOBYTE(v220) = v93;
  *(&v220 + 1) = v94;
  LOBYTE(v221) = v92;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC718);
  sub_1D28742C8();
  *&v220 = v90;
  *(&v220 + 1) = OpaqueTypeConformance2;
  v95 = swift_getOpaqueTypeConformance2();
  v96 = v200;
  v206 = v95;
  sub_1D2876EB8();

  (*(v174 + 8))(v89, v96);
  swift_getKeyPath();
  v97 = v176;
  v98 = v197;
  sub_1D27328D8(v91, v176, v197);
  v99 = swift_allocObject();
  v100 = v211;
  v101 = v198;
  sub_1D2733B20(v97, v99 + v211, v198);
  v102 = v177;
  sub_1D27328D8(v91, v177, v98);
  v103 = swift_allocObject();
  sub_1D2733B20(v102, v103 + v100, v101);
  swift_getKeyPath();
  *&v220 = v210;
  v104 = v210;
  swift_retain_n();
  sub_1D28719E8();

  v105 = *(v104 + 16);
  if (v105)
  {
    v106 = v205;
    sub_1D27328D8(v91, v205, type metadata accessor for DetailView);
    v107 = swift_allocObject();
    sub_1D2733B20(v106, v107 + v211, type metadata accessor for DetailView);
    v105 = sub_1D273183C;
  }

  else
  {
    v107 = 0;
    v106 = v205;
  }

  *&v214 = sub_1D2730B18;
  *(&v214 + 1) = v210;
  *&v215 = sub_1D2730B20;
  *(&v215 + 1) = v99;
  *&v216 = sub_1D2730B38;
  *(&v216 + 1) = v103;
  *&v217 = sub_1D2730B50;
  *(&v217 + 1) = v210;
  *&v218 = sub_1D2730B54;
  *(&v218 + 1) = v210;
  *&v219 = v105;
  *(&v219 + 1) = v107;
  *&v220 = v200;
  *(&v220 + 1) = v206;
  v206 = swift_getOpaqueTypeConformance2();
  v108 = v202;
  v109 = v201;
  sub_1D28768D8();

  v222 = v216;
  v223 = v217;
  v224 = v218;
  v225 = v219;
  v220 = v214;
  v221 = v215;
  sub_1D2730B58(&v220);
  (*(v175 + 8))(v109, v108);
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0D30);
  v207 = sub_1D2874AE8();
  v110 = *(*(v207 - 8) + 72);
  v198 = *(*(v207 - 8) + 80);
  v173 = (v198 + 32) & ~v198;
  v209 = 2 * v110;
  v111 = swift_allocObject();
  v210 = xmmword_1D287F550;
  *(v111 + 16) = xmmword_1D287F550;
  sub_1D2874AD8();
  sub_1D2874A68();
  v112 = sub_1D2402C24(v111);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v201 = type metadata accessor for DetailView;
  sub_1D27328D8(v213, v106, type metadata accessor for DetailView);
  v113 = swift_allocObject();
  v200 = type metadata accessor for DetailView;
  sub_1D2733B20(v106, v113 + v211, type metadata accessor for DetailView);
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC720);
  v114 = v192;
  v115 = *(v192 + 72);
  v116 = ((*(v192 + 80) + 32) & ~*(v192 + 80));
  v177 = v116 + 2 * v115;
  v195 = v116;
  v197 = v115;
  v117 = swift_allocObject();
  *(v117 + 16) = v210;
  sub_1D2877728();
  sub_1D2877738();
  *&v214 = v117;
  v175 = sub_1D27342FC(&qword_1ED89D040, MEMORY[0x1E697D760]);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC728);
  v176 = sub_1D22BB9D8(&qword_1ED89CEC0, &qword_1EC6DC728);
  v118 = v191;
  v119 = v193;
  sub_1D2879088();
  *&v214 = v202;
  *(&v214 + 1) = &type metadata for DetailViewActions;
  *&v215 = v206;
  v202 = swift_getOpaqueTypeConformance2();
  v120 = v179;
  v121 = v203;
  MEMORY[0x1D389F1F0](v112, v118, sub_1D27316C0, v113, v179, v202);

  v206 = *(v114 + 8);
  (v206)(v118, v119);
  (*(v178 + 8))(v121, v120);
  v122 = swift_allocObject();
  *(v122 + 16) = xmmword_1D28800F0;
  sub_1D2874A98();
  sub_1D2874AC8();
  sub_1D2874AA8();
  sub_1D2874A88();
  v123 = sub_1D2402C24(v122);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v124 = v205;
  sub_1D27328D8(v213, v205, v201);
  v125 = swift_allocObject();
  sub_1D2733B20(v124, v125 + v211, v200);
  v126 = swift_allocObject();
  *(v126 + 16) = v210;
  sub_1D2877728();
  sub_1D2877738();
  *&v214 = v126;
  sub_1D2879088();
  *&v214 = v120;
  *(&v214 + 1) = v202;
  v127 = swift_getOpaqueTypeConformance2();
  v128 = v182;
  v129 = v181;
  v130 = v204;
  MEMORY[0x1D389F1F0](v123, v118, sub_1D27316D8, v125, v181, v127);

  (v206)(v118, v119);
  v131 = (*(v180 + 8))(v130, v129);
  MEMORY[0x1EEE9AC00](v131);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0D38);
  *&v214 = v129;
  *(&v214 + 1) = v127;
  v133 = swift_getOpaqueTypeConformance2();
  v134 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0D40);
  v135 = sub_1D273178C();
  *&v214 = v134;
  *(&v214 + 1) = v135;
  v136 = swift_getOpaqueTypeConformance2();
  v137 = v184;
  v138 = v186;
  sub_1D2876F08();
  (*(v183 + 8))(v128, v138);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0D60);
  sub_1D28751E8();
  v139 = swift_allocObject();
  *(v139 + 16) = xmmword_1D287F500;
  sub_1D28751D8();
  *&v214 = v138;
  *(&v214 + 1) = v132;
  *&v215 = v133;
  *(&v215 + 1) = v136;
  v140 = swift_getOpaqueTypeConformance2();
  v141 = v185;
  v142 = v189;
  MEMORY[0x1D389F7C0](2, v139, v189, v140);

  (*(v187 + 8))(v137, v142);
  *&v214 = v142;
  *(&v214 + 1) = v140;
  swift_getOpaqueTypeConformance2();
  v143 = v190;
  sub_1D2876CC8();
  return (*(v188 + 8))(v141, v143);
}

uint64_t sub_1D271D15C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a3;
  v5 = sub_1D2876088();
  v63 = *(v5 - 8);
  v64 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1080);
  MEMORY[0x1EEE9AC00](v65);
  v60 = (&v51 - v7);
  v8 = sub_1D2871818();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94F0);
  MEMORY[0x1EEE9AC00](v52);
  v56 = &v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v53 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v51 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1090);
  v58 = *(v20 - 8);
  v59 = v20;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v57 = &v51 - v22;
  v23 = *(**a1 + 160);
  v24 = *(v9 + 16);
  v54 = *a1;
  v24(v19, v54 + v23, v8, v21);
  v55 = v9;
  v25 = *(v9 + 56);
  v26 = 1;
  v67 = v19;
  v25(v19, 0, 1, v8);
  v61 = a2;
  v27 = *a2;
  swift_getKeyPath();
  v68 = v27;
  sub_1D27342FC(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  v28 = *(v27 + 16);
  if (v28)
  {
    (v24)(v16, v28 + *(*v28 + 160), v8);
    v26 = 0;
  }

  v25(v16, v26, 1, v8);
  v29 = *(v52 + 48);
  v30 = v67;
  v31 = v56;
  sub_1D22BD1D0(v67, v56, &qword_1EC6D8F70);
  sub_1D22BD1D0(v16, v31 + v29, &qword_1EC6D8F70);
  v32 = v55;
  v33 = *(v55 + 48);
  v34 = v33(v31, 1, v8) == 1;
  v35 = v16;
  v36 = v53;
  if (v34)
  {
    sub_1D22BD238(v35, &qword_1EC6D8F70);
    sub_1D22BD238(v30, &qword_1EC6D8F70);
    v37 = v33(v31 + v29, 1, v8);
    v38 = v65;
    if (v37 == 1)
    {
      sub_1D22BD238(v31, &qword_1EC6D8F70);
      v39 = 1;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v52 = v35;
  sub_1D22BD1D0(v31, v53, &qword_1EC6D8F70);
  if (v33(v31 + v29, 1, v8) == 1)
  {
    sub_1D22BD238(v52, &qword_1EC6D8F70);
    sub_1D22BD238(v67, &qword_1EC6D8F70);
    (*(v32 + 8))(v36, v8);
    v38 = v65;
LABEL_9:
    sub_1D22BD238(v31, &qword_1EC6D94F0);
    v39 = 0;
    goto LABEL_11;
  }

  v40 = v51;
  (*(v32 + 32))(v51, v31 + v29, v8);
  sub_1D27342FC(&unk_1ED8A6CA0, MEMORY[0x1E69695A8]);
  v39 = sub_1D2877F98();
  v41 = *(v32 + 8);
  v41(v40, v8);
  sub_1D22BD238(v52, &qword_1EC6D8F70);
  sub_1D22BD238(v67, &qword_1EC6D8F70);
  v41(v36, v8);
  sub_1D22BD238(v31, &qword_1EC6D8F70);
  v38 = v65;
LABEL_11:
  v42 = v57;
  v43 = sub_1D2875918();
  v44 = v60;
  *v60 = v43;
  *(v44 + 8) = 0x402E000000000000;
  *(v44 + 16) = 0;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1098);
  sub_1D272457C(v54, v61, v39 & 1, v44 + *(v45 + 44));
  v46 = v62;
  sub_1D2876078();
  v47 = sub_1D22BB9D8(&unk_1EC6E10A0, &unk_1EC6E1080);
  sub_1D2876BE8();
  (*(v63 + 8))(v46, v64);
  sub_1D22BD238(v44, &unk_1EC6E1080);
  v48 = sub_1D28762F8();
  sub_1D2876308();
  sub_1D2876308();
  if (sub_1D2876308() != v48)
  {
    sub_1D2876308();
  }

  sub_1D2877848();
  v68 = v38;
  v69 = v47;
  swift_getOpaqueTypeConformance2();
  v49 = v59;
  sub_1D2876C78();
  return (*(v58 + 8))(v42, v49);
}

uint64_t sub_1D271D964@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v31);
  v4 = &v28[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28[-v6];
  v8 = type metadata accessor for ImageDescriptionView();
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *a1;
  swift_getKeyPath();
  v33 = v12;
  sub_1D27342FC(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  v13 = *(v12 + 16);
  v14 = 1;
  if (v13)
  {
    v15 = a1 + *(type metadata accessor for DetailView() + 52);
    v16 = *v15;
    v17 = *(v15 + 1);
    v36 = v16;
    v37 = v17;
    sub_1D2870F78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
    sub_1D2877328();
    v18 = v33;
    v30 = v34;
    v29 = v35;
    v19 = type metadata accessor for PlaygroundImage();
    (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
    sub_1D22BD1D0(v7, v4, &unk_1EC6DE5A0);
    sub_1D28772F8();
    sub_1D22BD238(v7, &unk_1EC6DE5A0);
    v20 = &v11[v8[5]];
    *v20 = sub_1D28742D8() & 1;
    *(v20 + 1) = v21;
    v20[16] = v22 & 1;
    *&v11[v8[6]] = v13;
    v11[v8[7]] = 1;
    v23 = &v11[v8[8]];
    v24 = v30;
    *v23 = v18;
    *(v23 + 1) = v24;
    v23[16] = v29;
    v25 = v32;
    sub_1D2733B20(v11, v32, type metadata accessor for ImageDescriptionView);
    v14 = 0;
    v26 = v25;
  }

  else
  {
    v26 = v32;
  }

  return (*(v9 + 56))(v26, v14, 1, v8);
}

void sub_1D271DC90(uint64_t a1, _BYTE *a2, void *a3)
{
  v5 = type metadata accessor for DetailView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27 - v10;
  if (*a2 == 1)
  {
    v12 = *a3;
    swift_getKeyPath();
    v30 = v12;
    sub_1D27342FC(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
    sub_1D28719E8();

    v13 = *(v12 + 16);
    if (v13)
    {
      v28 = a3;
      v29 = v6;
      sub_1D2870F78();
      sub_1D23C7CA8();
      v27 = sub_1D2878068();
      v14 = sub_1D2878068();
      v15 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
      v16 = sub_1D2878068();
      v17 = sub_1D2418030(v15);

      if (v17)
      {
        type metadata accessor for IAPayloadKey(0);
        sub_1D22BCFD0(0, &qword_1ED89CC48);
        sub_1D27342FC(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey);
        v18 = sub_1D2877E78();
      }

      else
      {
        v18 = 0;
      }

      v19 = objc_opt_self();
      v20 = v27;
      [v19 asyncSendSignal:v14 toChannel:v27 withNullableUniqueStringID:v16 withPayload:v18];

      v21 = sub_1D28785F8();
      (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
      sub_1D27328D8(v28, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DetailView);
      sub_1D2878568();
      sub_1D2870F78();
      v22 = sub_1D2878558();
      v23 = (*(v29 + 80) + 40) & ~*(v29 + 80);
      v24 = v23 + v7;
      v25 = swift_allocObject();
      v26 = MEMORY[0x1E69E85E0];
      v25[2] = v22;
      v25[3] = v26;
      v25[4] = v13;
      sub_1D2733B20(v8, v25 + v23, type metadata accessor for DetailView);
      *(v25 + v24) = 3;
      sub_1D22AE01C(0, 0, v11, &unk_1D28A1AC0, v25);
    }
  }
}

uint64_t sub_1D271E08C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v21 = &v20 - v3;
  v4 = type metadata accessor for DetailView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = a1 + *(v7 + 72);
  v9 = *v8;
  v10 = *(v8 + 1);
  LOBYTE(v8) = v8[16];
  LOBYTE(v26) = v9;
  v27 = v10;
  v28 = v8;
  v25 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC718);
  sub_1D28742B8();
  v11 = *a1;
  sub_1D27328D8(a1, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DetailView);
  v12 = *(v5 + 80);
  v13 = swift_allocObject();
  sub_1D2733B20(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + ((v12 + 16) & ~v12), type metadata accessor for DetailView);
  swift_getKeyPath();
  v22 = v11;
  v23 = sub_1D2733350;
  v24 = v13;
  v26 = v11;
  sub_1D27342FC(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719D8();

  v14 = sub_1D28785F8();
  v15 = v21;
  (*(*(v14 - 8) + 56))(v21, 1, 1, v14);
  sub_1D27328D8(a1, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DetailView);
  sub_1D2878568();
  v16 = sub_1D2878558();
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  sub_1D2733B20(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + ((v12 + 32) & ~v12), type metadata accessor for DetailView);
  sub_1D22AE01C(0, 0, v15, &unk_1D28A1A90, v17);
}

uint64_t sub_1D271E3D4()
{
  type metadata accessor for DetailView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC718);
  return sub_1D28742B8();
}

uint64_t sub_1D271E450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  v4[11] = swift_task_alloc();
  v5 = sub_1D2875628();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = sub_1D2879328();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  sub_1D2878568();
  v4[18] = sub_1D2878558();
  v8 = sub_1D28784F8();
  v4[19] = v8;
  v4[20] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D271E5D8, v8, v7);
}

uint64_t sub_1D271E5D8()
{
  v1 = sub_1D2879908();
  v3 = v2;
  sub_1D2879718();
  v4 = swift_task_alloc();
  *(v0 + 168) = v4;
  *v4 = v0;
  v4[1] = sub_1D271E6BC;

  return sub_1D233BA38(v1, v3, 0, 0, 1);
}

uint64_t sub_1D271E6BC()
{
  v2 = *v1;
  v2[22] = v0;

  v3 = v2[17];
  v4 = v2[16];
  v5 = v2[15];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = v2[19];
    v7 = v2[20];
    v8 = sub_1D271EEBC;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = v2[19];
    v7 = v2[20];
    v8 = sub_1D271E854;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1D271E854()
{
  v1 = v0[10];

  v2 = *v1;
  if (*(*v1 + 49) == 1)
  {
    *(v2 + 49) = 1;
  }

  else
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 1;
    v0[2] = v2;
    sub_1D27342FC(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
    sub_1D28719D8();
  }

  v4 = v0[10];
  v5 = (v4 + *(type metadata accessor for DetailView() + 40));
  v6 = *v5;
  LOBYTE(v4) = *(v5 + 8);
  sub_1D2870F78();
  v7 = v6;
  v33 = v4;
  if ((v4 & 1) == 0)
  {
    v9 = v0[13];
    v8 = v0[14];
    v10 = v0[12];
    sub_1D2878A28();
    v11 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v9 + 8))(v8, v10);
    v7 = v0[3];
  }

  swift_getKeyPath();
  v0[4] = v7;
  sub_1D27342FC(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator);
  sub_1D28719E8();

  v13 = *(v7 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__detailViewDidAppear);
  v12 = *(v7 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__detailViewDidAppear + 8);
  sub_1D22A58B8(v13);

  if (v13)
  {
    v13(v14);
    sub_1D22D7900(v13, v12);
  }

  sub_1D2870F78();
  v15 = v6;
  if ((v33 & 1) == 0)
  {
    v17 = v0[13];
    v16 = v0[14];
    v18 = v0[12];
    sub_1D2878A28();
    v19 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v17 + 8))(v16, v18);
    v15 = v0[5];
  }

  swift_getKeyPath();
  v20 = swift_task_alloc();
  v20[3] = 0;
  v20[4] = 0;
  v20[2] = v15;
  v0[6] = v15;
  sub_1D28719D8();

  swift_getKeyPath();
  v0[7] = v2;
  sub_1D27342FC(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  v21 = *(v2 + 16);
  if (v21)
  {
    sub_1D2870F78();
    sub_1D2870F78();
    if ((v33 & 1) == 0)
    {
      v23 = v0[13];
      v22 = v0[14];
      v24 = v0[12];
      sub_1D2878A28();
      v25 = sub_1D28762E8();
      sub_1D2873BE8();

      sub_1D2875618();
      swift_getAtKeyPath();

      (*(v23 + 8))(v22, v24);
      v6 = v0[8];
    }

    v26 = *(*v21 + 160);
    if (*(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow))
    {
      swift_getKeyPath();
      v27 = swift_task_alloc();
      *(v27 + 16) = v6;
      *(v27 + 24) = 0;
      v0[9] = v6;
      sub_1D28719D8();
    }

    else
    {
      *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow) = 0;
    }

    v28 = v0[11];
    v29 = sub_1D2871818();
    v30 = *(v29 - 8);
    (*(v30 + 16))(v28, v21 + v26, v29);
    (*(v30 + 56))(v28, 0, 1, v29);
    sub_1D25E2EEC(v28);
  }

  v31 = v0[1];

  return v31();
}

uint64_t sub_1D271EEBC()
{
  v1 = v0[10];

  v2 = *v1;
  if (*(*v1 + 49) == 1)
  {
    *(v2 + 49) = 1;
  }

  else
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 1;
    v0[2] = v2;
    sub_1D27342FC(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
    sub_1D28719D8();
  }

  v4 = v0[10];
  v5 = (v4 + *(type metadata accessor for DetailView() + 40));
  v6 = *v5;
  LOBYTE(v4) = *(v5 + 8);
  sub_1D2870F78();
  v7 = v6;
  v33 = v4;
  if ((v4 & 1) == 0)
  {
    v9 = v0[13];
    v8 = v0[14];
    v10 = v0[12];
    sub_1D2878A28();
    v11 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v9 + 8))(v8, v10);
    v7 = v0[3];
  }

  swift_getKeyPath();
  v0[4] = v7;
  sub_1D27342FC(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator);
  sub_1D28719E8();

  v13 = *(v7 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__detailViewDidAppear);
  v12 = *(v7 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__detailViewDidAppear + 8);
  sub_1D22A58B8(v13);

  if (v13)
  {
    v13(v14);
    sub_1D22D7900(v13, v12);
  }

  sub_1D2870F78();
  v15 = v6;
  if ((v33 & 1) == 0)
  {
    v17 = v0[13];
    v16 = v0[14];
    v18 = v0[12];
    sub_1D2878A28();
    v19 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v17 + 8))(v16, v18);
    v15 = v0[5];
  }

  swift_getKeyPath();
  v20 = swift_task_alloc();
  v20[3] = 0;
  v20[4] = 0;
  v20[2] = v15;
  v0[6] = v15;
  sub_1D28719D8();

  swift_getKeyPath();
  v0[7] = v2;
  sub_1D27342FC(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  v21 = *(v2 + 16);
  if (v21)
  {
    sub_1D2870F78();
    sub_1D2870F78();
    if ((v33 & 1) == 0)
    {
      v23 = v0[13];
      v22 = v0[14];
      v24 = v0[12];
      sub_1D2878A28();
      v25 = sub_1D28762E8();
      sub_1D2873BE8();

      sub_1D2875618();
      swift_getAtKeyPath();

      (*(v23 + 8))(v22, v24);
      v6 = v0[8];
    }

    v26 = *(*v21 + 160);
    if (*(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow))
    {
      swift_getKeyPath();
      v27 = swift_task_alloc();
      *(v27 + 16) = v6;
      *(v27 + 24) = 0;
      v0[9] = v6;
      sub_1D28719D8();
    }

    else
    {
      *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow) = 0;
    }

    v28 = v0[11];
    v29 = sub_1D2871818();
    v30 = *(v29 - 8);
    (*(v30 + 16))(v28, v21 + v26, v29);
    (*(v30 + 56))(v28, 0, 1, v29);
    sub_1D25E2EEC(v28);
  }

  v31 = v0[1];

  return v31();
}

uint64_t sub_1D271F528(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_1D27342FC(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719D8();

  if (*(v1 + 49))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D28719D8();
  }

  else
  {
    *(v1 + 49) = 0;
  }

  return result;
}

uint64_t sub_1D271F690(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v24 - v6;
  v8 = sub_1D2875628();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v13 = *a3;
  swift_getKeyPath();
  v25 = v13;
  sub_1D27342FC(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  if (*(v13 + 49) == 1 && v12 != 0)
  {
    v16 = a3 + *(type metadata accessor for DetailView() + 40);
    v17 = *v16;
    v18 = v16[8];
    sub_1D2870F78();
    sub_1D2870F78();
    if ((v18 & 1) == 0)
    {
      sub_1D2878A28();
      v19 = sub_1D28762E8();
      sub_1D2873BE8();

      sub_1D2875618();
      swift_getAtKeyPath();

      (*(v9 + 8))(v11, v8);
      v17 = v25;
    }

    v20 = *(*v12 + 160);
    if (*(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v24 - 2) = v17;
      *(&v24 - 8) = 0;
      v25 = v17;
      sub_1D27342FC(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator);
      sub_1D28719D8();
    }

    else
    {
      *(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow) = 0;
    }

    v22 = sub_1D2871818();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v7, v12 + v20, v22);
    (*(v23 + 56))(v7, 0, 1, v22);
    sub_1D25E2EEC(v7);
  }

  return result;
}

uint64_t FocusedValues.detailViewActions.getter()
{
  sub_1D271FAAC();

  return sub_1D28749B8();
}

unint64_t sub_1D271FAAC()
{
  result = qword_1EC6D7E40;
  if (!qword_1EC6D7E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7E40);
  }

  return result;
}

double sub_1D271FB00@<D0>(_OWORD *a1@<X8>)
{
  sub_1D271FAAC();
  sub_1D28749B8();
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D271FB60(_OWORD *a1)
{
  v1 = a1[3];
  v2 = a1[1];
  v10 = a1[2];
  v11 = v1;
  v3 = a1[3];
  v4 = a1[5];
  v12 = a1[4];
  v13 = v4;
  v5 = a1[1];
  v9[0] = *a1;
  v9[1] = v5;
  v8[8] = v10;
  v8[9] = v3;
  v6 = a1[5];
  v8[10] = v12;
  v8[11] = v6;
  v8[6] = v9[0];
  v8[7] = v2;
  sub_1D22BD1D0(v9, v8, &unk_1EC6E0C18);
  sub_1D271FAAC();
  return sub_1D28749C8();
}

uint64_t sub_1D271FC44(uint64_t a1)
{
  swift_getKeyPath();
  sub_1D27342FC(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1D256B210(a1);
    swift_unknownObjectRelease();
  }

  return sub_1D2714110();
}

uint64_t sub_1D271FD08(uint64_t *a1)
{
  v2 = type metadata accessor for DetailView();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v34 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v33 = &v31 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v31 - v7;
  v9 = sub_1D2875628();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  swift_getKeyPath();
  v35 = v13;
  sub_1D27342FC(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  v15 = *(v13 + 16);
  if (v15)
  {
    v16 = a1 + *(v2 + 40);
    v17 = *v16;
    v18 = v16[8];
    sub_1D2870F78();
    sub_1D2870F78();
    if ((v18 & 1) == 0)
    {
      sub_1D2878A28();
      v19 = sub_1D28762E8();
      sub_1D2873BE8();

      sub_1D2875618();
      swift_getAtKeyPath();

      (*(v10 + 8))(v12, v9);
      v17 = v35;
    }

    v20 = *(*v15 + 160);
    if (*(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow) == 1)
    {
      *(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v31 - 2) = v17;
      *(&v31 - 8) = 1;
      v35 = v17;
      sub_1D27342FC(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator);
      sub_1D28719D8();
    }

    v22 = sub_1D2871818();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v8, v15 + v20, v22);
    (*(v23 + 56))(v8, 0, 1, v22);
    sub_1D25E2EEC(v8);

    v24 = sub_1D28785F8();
    v25 = v33;
    (*(*(v24 - 8) + 56))(v33, 1, 1, v24);
    v26 = v34;
    sub_1D27328D8(a1, v34, type metadata accessor for DetailView);
    sub_1D2878568();
    sub_1D2870F78();
    v27 = sub_1D2878558();
    v28 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v29 = swift_allocObject();
    v30 = MEMORY[0x1E69E85E0];
    *(v29 + 16) = v27;
    *(v29 + 24) = v30;
    sub_1D2733B20(v26, v29 + v28, type metadata accessor for DetailView);
    *(v29 + ((v3 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
    sub_1D22AE01C(0, 0, v25, &unk_1D28A1A58, v29);
  }

  return result;
}

uint64_t sub_1D27202B4()
{
  swift_getKeyPath();
  sub_1D27342FC(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  type metadata accessor for DetailView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  return sub_1D2877318();
}

uint64_t sub_1D27203A8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1D2874AE8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25[-v9];
  v11 = type metadata accessor for DetailView();
  v12 = (a1 + *(v11 + 64));
  v13 = *v12;
  v14 = *(v12 + 1);
  LOBYTE(v12) = v12[16];
  v27 = v13;
  v28 = v14;
  v29 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC718);
  sub_1D28742A8();
  if (v26 == 1 && (v15 = (a1 + *(v11 + 52)), v16 = *v15, v17 = *(v15 + 1), v27 = v16, v28 = v17, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890), sub_1D2877308(), (v26 & 1) == 0))
  {
    sub_1D2877718();
    sub_1D2874AD8();
    v19 = sub_1D2874A78();
    v20 = *(v5 + 8);
    v20(v7, v4);
    v20(v10, v4);
    if (v19)
    {
      sub_1D2714884();
    }

    else
    {
      sub_1D2877718();
      sub_1D2874A68();
      v21 = sub_1D2874A78();
      v20(v7, v4);
      v20(v10, v4);
      if (v21)
      {
        sub_1D2714ADC();
      }
    }

    v18 = MEMORY[0x1E697D770];
  }

  else
  {
    v18 = MEMORY[0x1E697D778];
  }

  v22 = *v18;
  v23 = sub_1D2877758();
  return (*(*(v23 - 8) + 104))(a2, v22, v23);
}

uint64_t sub_1D2720630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a1;
  v5 = sub_1D2874AE8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  v12 = sub_1D2877758();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(type metadata accessor for DetailView() + 64);
  v42 = a2;
  v17 = (a2 + v16);
  v18 = *v17;
  v19 = *(v17 + 1);
  LOBYTE(v17) = v17[16];
  LOBYTE(v45) = v18;
  v46 = v19;
  v47 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC718);
  sub_1D28742A8();
  v20 = *(v13 + 104);
  if (v44 != 1)
  {
    return (v20)(a3, *MEMORY[0x1E697D778], v12);
  }

  v41 = a3;
  v21 = *MEMORY[0x1E697D770];
  v39 = v20;
  v40 = v15;
  v20(v15, v21, v12);
  sub_1D2877718();
  sub_1D2874A98();
  v22 = sub_1D2874A78();
  v23 = *(v6 + 8);
  v23(v8, v5);
  v23(v11, v5);
  v24 = v12;
  if (v22)
  {
    v25 = *v42;
    swift_getKeyPath();
    v45 = v25;
    sub_1D27342FC(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
    sub_1D28719E8();

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1D256B210(v25);
      swift_unknownObjectRelease();
    }

    sub_1D2714110();
  }

  else
  {
    sub_1D2877718();
    sub_1D2874AC8();
    v27 = sub_1D2874A78();
    v23(v8, v5);
    v23(v11, v5);
    if (v27)
    {
      sub_1D2713E78();
    }

    else
    {
      sub_1D2877718();
      sub_1D2874AA8();
      v28 = sub_1D2874A78();
      v23(v8, v5);
      v23(v11, v5);
      if ((v28 & 1) == 0)
      {
        sub_1D2877718();
        sub_1D2874A88();
        v32 = sub_1D2874A78();
        v23(v8, v5);
        v23(v11, v5);
        v31 = v40;
        v30 = v41;
        if (v32)
        {
          v33 = v40;
          v34 = v41;
          sub_1D2877768();
          v35 = sub_1D2874C48();
          sub_1D2874C58();
          if (sub_1D2874C58() == v35)
          {
            sub_1D2713688();
            v30 = v34;
            v31 = v33;
            v24 = v12;
          }

          else
          {
            v36 = v33;
            v37 = v33;
            v24 = v12;
            (*(v13 + 8))(v37, v12);
            v39(v36, *MEMORY[0x1E697D778], v12);
            v31 = v36;
            v30 = v34;
          }
        }

        return (*(v13 + 32))(v30, v31, v24);
      }

      v29 = *(v42 + 32);
      LOBYTE(v45) = *(v42 + 24);
      v46 = v29;
      v44 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
      sub_1D2877318();
    }
  }

  v31 = v40;
  v30 = v41;
  return (*(v13 + 32))(v30, v31, v24);
}

uint64_t sub_1D2720B3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v141 = a2;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0D68);
  MEMORY[0x1EEE9AC00](v135);
  v134 = &v99 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0D58);
  v139 = *(v4 - 8);
  v140 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v136 = &v99 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0D70);
  v130 = *(v6 - 8);
  v131 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v128 = &v99 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0D78);
  v126 = *(v8 - 8);
  v127 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v124 = &v99 - v9;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0D80);
  MEMORY[0x1EEE9AC00](v125);
  v120 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v123 = &v99 - v12;
  v143 = sub_1D2875C08();
  v122 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v119 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v121 = &v99 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0D88);
  v132 = *(v16 - 8);
  v133 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v129 = &v99 - v17;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0D90);
  v112 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v111 = &v99 - v18;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0D98);
  v110 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v109 = &v99 - v19;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DA0);
  v104 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v103 = &v99 - v20;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DA8);
  v102 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v101 = &v99 - v21;
  v22 = sub_1D2875E18();
  v114 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v100 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DB0);
  MEMORY[0x1EEE9AC00](v113);
  v25 = &v99 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v108 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v99 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v99 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DB8);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v142 = &v99 - v35;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0D40);
  MEMORY[0x1EEE9AC00](v138);
  v37 = &v99 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v99 - v39;
  v41 = *a1;
  swift_getKeyPath();
  v144 = v41;
  sub_1D27342FC(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  v42 = *(v41 + 16);
  if (v42)
  {
    v105 = v37;
    v106 = v40;
    type metadata accessor for DetailView();
    v137 = v42;
    sub_1D2870F78();
    v107 = a1;
    sub_1D24CC0C4(v33);
    v43 = v114;
    (*(v114 + 104))(v30, *MEMORY[0x1E697FF38], v22);
    (*(v43 + 56))(v30, 0, 1, v22);
    v44 = *(v113 + 48);
    sub_1D22BD1D0(v33, v25, &qword_1EC6D99B8);
    sub_1D22BD1D0(v30, &v25[v44], &qword_1EC6D99B8);
    v45 = *(v43 + 48);
    if (v45(v25, 1, v22) == 1)
    {
      sub_1D22BD238(v30, &qword_1EC6D99B8);
      sub_1D22BD238(v33, &qword_1EC6D99B8);
      v46 = v45(&v25[v44], 1, v22);
      v47 = v137;
      if (v46 == 1)
      {
        sub_1D22BD238(v25, &qword_1EC6D99B8);
        v48 = v107;
LABEL_11:
        v53 = v101;
        sub_1D2721E6C(v47, v101);
        v64 = sub_1D22BB9D8(&qword_1EC6E0DC8, &qword_1EC6E0DA8);
        v65 = v103;
        v56 = v115;
        MEMORY[0x1D389E720](v53, v115, v64);
        v144 = v56;
        v145 = v64;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v67 = sub_1D22BB9D8(&qword_1EC6E0DC0, &qword_1EC6E0D98);
        v144 = v117;
        v145 = v67;
        v68 = swift_getOpaqueTypeConformance2();
        v69 = v116;
        MEMORY[0x1D389E730](v65, v116, v118, OpaqueTypeConformance2, v68);
        (*(v104 + 8))(v65, v69);
        v61 = &v134;
        goto LABEL_12;
      }
    }

    else
    {
      v52 = v108;
      sub_1D22BD1D0(v25, v108, &qword_1EC6D99B8);
      if (v45(&v25[v44], 1, v22) != 1)
      {
        v62 = v100;
        (*(v43 + 32))(v100, &v25[v44], v22);
        sub_1D27342FC(&qword_1ED89D3D0, MEMORY[0x1E697FF50]);
        LODWORD(v113) = sub_1D2877F98();
        v63 = *(v43 + 8);
        v63(v62, v22);
        sub_1D22BD238(v30, &qword_1EC6D99B8);
        sub_1D22BD238(v33, &qword_1EC6D99B8);
        v63(v52, v22);
        sub_1D22BD238(v25, &qword_1EC6D99B8);
        v48 = v107;
        v47 = v137;
        if (v113)
        {
          goto LABEL_11;
        }

LABEL_9:
        v53 = v109;
        sub_1D2723140(v47, v109);
        v54 = sub_1D22BB9D8(&qword_1EC6E0DC0, &qword_1EC6E0D98);
        v55 = v111;
        v56 = v117;
        MEMORY[0x1D389E720](v53, v117, v54);
        v57 = sub_1D22BB9D8(&qword_1EC6E0DC8, &qword_1EC6E0DA8);
        v144 = v115;
        v145 = v57;
        v58 = swift_getOpaqueTypeConformance2();
        v144 = v56;
        v145 = v54;
        v59 = swift_getOpaqueTypeConformance2();
        v60 = v118;
        MEMORY[0x1D389E740](v55, v116, v118, v58, v59);
        (*(v112 + 8))(v55, v60);
        v61 = &v142;
LABEL_12:
        (*(*(v61 - 32) + 8))(v53, v56);
        v70 = v121;
        sub_1D2875BA8();
        v71 = v122;
        v72 = (*(v122 + 16))(v119, v70, v143);
        MEMORY[0x1EEE9AC00](v72);
        *(&v99 - 32) = 4;
        *(&v99 - 3) = v48;
        *(&v99 - 2) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DD0);
        sub_1D2731860();
        v73 = v124;
        sub_1D28745C8();
        v74 = sub_1D22BB9D8(&qword_1EC6E0EF8, &qword_1EC6E0D78);
        v76 = v127;
        v75 = v128;
        MEMORY[0x1D389E720](v73, v127, v74);
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0F00);
        v144 = sub_1D2874B88();
        v145 = MEMORY[0x1E697BFF0];
        v78 = *(swift_getOpaqueTypeConformance2() + 8);
        v144 = v76;
        v145 = v74;
        v79 = swift_getOpaqueTypeConformance2();
        v80 = v120;
        v81 = v131;
        MEMORY[0x1D389E740](v75, v77, v131, v78, v79);
        v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0F08);
        (*(*(v82 - 8) + 56))(v80, 0, 1, v82);
        v83 = sub_1D27323B4();
        v84 = v123;
        MEMORY[0x1D389E750](v80, v82, v83);
        sub_1D22BD238(v80, &qword_1EC6E0D80);
        (*(v130 + 8))(v75, v81);
        (*(v126 + 8))(v73, v76);
        v85 = sub_1D27324E8();
        v86 = v129;
        MEMORY[0x1D389E720](v84, v125, v85);
        sub_1D22BD238(v84, &qword_1EC6E0D80);
        (*(v71 + 8))(v70, v143);
        v87 = v134;
        v88 = *(v135 + 48);
        v89 = v142;
        sub_1D22BD1D0(v142, v134, &qword_1EC6E0DB8);
        v91 = v132;
        v90 = v133;
        (*(v132 + 16))(v87 + v88, v86, v133);
        v92 = v136;
        sub_1D28759C8();
        v93 = v139;
        v94 = v140;
        v95 = v105;
        (*(v139 + 16))(v105, v92, v140);
        (*(v93 + 56))(v95, 0, 1, v94);
        v96 = sub_1D22BB9D8(&qword_1EC6E0D50, &qword_1EC6E0D58);
        v51 = v106;
        MEMORY[0x1D389E750](v95, v94, v96);

        sub_1D22BD238(v95, &qword_1EC6E0D40);
        (*(v93 + 8))(v92, v94);
        (*(v91 + 8))(v86, v90);
        sub_1D22BD238(v89, &qword_1EC6E0DB8);
        goto LABEL_13;
      }

      sub_1D22BD238(v30, &qword_1EC6D99B8);
      sub_1D22BD238(v33, &qword_1EC6D99B8);
      (*(v43 + 8))(v52, v22);
      v47 = v137;
    }

    sub_1D22BD238(v25, &qword_1EC6E0DB0);
    v48 = v107;
    goto LABEL_9;
  }

  v49 = v140;
  (*(v139 + 56))(v37, 1, 1, v140);
  v50 = sub_1D22BB9D8(&qword_1EC6E0D50, &qword_1EC6E0D58);
  MEMORY[0x1D389E750](v37, v49, v50);
  sub_1D22BD238(v37, &qword_1EC6E0D40);
  v51 = v40;
LABEL_13:
  v97 = sub_1D273178C();
  MEMORY[0x1D389E720](v51, v138, v97);
  return sub_1D22BD238(v51, &qword_1EC6E0D40);
}

uint64_t sub_1D2721E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v127 = a1;
  v107 = a2;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0F28);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v99 - v2;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0D70);
  v139 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v4 = &v99 - v3;
  v5 = sub_1D2875C08();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v102 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v99 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0D78);
  v138 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v99 - v12;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0D80);
  MEMORY[0x1EEE9AC00](v135);
  v15 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v99 - v17;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0D88);
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v110 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v109 = &v99 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v108 = &v99 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v114 = &v99 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v113 = &v99 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v112 = &v99 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v111 = &v99 - v31;
  if (qword_1EC6D8C90 != -1)
  {
    swift_once();
  }

  v118 = __swift_project_value_buffer(v5, qword_1EC6E3AF8);
  v131 = *(v6 + 16);
  v126 = v6 + 16;
  v32 = v131(v10, v118, v5);
  MEMORY[0x1EEE9AC00](v32);
  v119 = v5;
  v101 = v6;
  *(&v99 - 32) = 3;
  v33 = v127;
  *(&v99 - 3) = v137;
  *(&v99 - 2) = v33;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DD0);
  v121 = sub_1D2731860();
  sub_1D28745C8();
  v34 = sub_1D22BB9D8(&qword_1EC6E0EF8, &qword_1EC6E0D78);
  v123 = v34;
  MEMORY[0x1D389E720](v13, v11);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0F00);
  v128 = v35;
  v140 = sub_1D2874B88();
  v141 = MEMORY[0x1E697BFF0];
  v36 = *(swift_getOpaqueTypeConformance2() + 8);
  v129 = v36;
  v140 = v11;
  v141 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v100 = v4;
  v37 = v136;
  MEMORY[0x1D389E740](v4, v35, v136, v36, OpaqueTypeConformance2);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0F08);
  v39 = *(v38 - 8);
  v125 = *(v39 + 56);
  v133 = v39 + 56;
  v125(v15, 0, 1, v38);
  v120 = sub_1D27323B4();
  MEMORY[0x1D389E750](v15, v38, v120);
  sub_1D22BD238(v15, &qword_1EC6E0D80);
  v40 = *(v139 + 8);
  v139 += 8;
  v134 = v40;
  v40(v4, v37);
  v130 = *(v138 + 8);
  v138 += 8;
  v41 = v13;
  v130(v13, v11);
  v124 = sub_1D27324E8();
  MEMORY[0x1D389E720](v18, v135, v124);
  sub_1D22BD238(v18, &qword_1EC6E0D80);
  v117 = v10;
  v42 = v118;
  v43 = v119;
  v44 = v131(v10, v118, v119);
  MEMORY[0x1EEE9AC00](v44);
  *(&v99 - 32) = 1;
  v45 = v127;
  *(&v99 - 3) = v137;
  *(&v99 - 2) = v45;
  sub_1D28745C8();
  v46 = v100;
  MEMORY[0x1D389E720](v41, v11, v123);
  v47 = v46;
  v48 = v46;
  v49 = v136;
  MEMORY[0x1D389E740](v47, v128, v136, v129, OpaqueTypeConformance2);
  v116 = v38;
  v125(v15, 0, 1, v38);
  MEMORY[0x1D389E750](v15, v38, v120);
  v50 = v48;
  v51 = v18;
  sub_1D22BD238(v15, &qword_1EC6E0D80);
  v134(v50, v49);
  v115 = v11;
  v130(v41, v11);
  MEMORY[0x1D389E720](v18, v135, v124);
  sub_1D22BD238(v18, &qword_1EC6E0D80);
  v52 = v117;
  v53 = v131(v117, v42, v43);
  MEMORY[0x1EEE9AC00](v53);
  *(&v99 - 32) = 7;
  *(&v99 - 3) = v137;
  *(&v99 - 2) = 0;
  sub_1D28745C8();
  MEMORY[0x1D389E720](v41, v11, v123);
  v54 = v136;
  MEMORY[0x1D389E740](v50, v128, v136, v129, OpaqueTypeConformance2);
  v55 = v116;
  v125(v15, 0, 1, v116);
  v56 = v55;
  v57 = v120;
  MEMORY[0x1D389E750](v15, v56, v120);
  sub_1D22BD238(v15, &qword_1EC6E0D80);
  v134(v50, v54);
  v58 = v115;
  v130(v41, v115);
  MEMORY[0x1D389E720](v51, v135, v124);
  sub_1D22BD238(v51, &qword_1EC6E0D80);
  v59 = v131(v52, v118, v119);
  MEMORY[0x1EEE9AC00](v59);
  *(&v99 - 32) = 2;
  v60 = v127;
  *(&v99 - 3) = v137;
  *(&v99 - 2) = v60;
  v61 = v52;
  sub_1D28745C8();
  v62 = v123;
  MEMORY[0x1D389E720](v41, v58, v123);
  v63 = v136;
  v64 = OpaqueTypeConformance2;
  MEMORY[0x1D389E740](v50, v128, v136, v129, OpaqueTypeConformance2);
  v65 = v116;
  v125(v15, 0, 1, v116);
  MEMORY[0x1D389E750](v15, v65, v57);
  sub_1D22BD238(v15, &qword_1EC6E0D80);
  v134(v50, v63);
  v66 = v115;
  v130(v41, v115);
  MEMORY[0x1D389E720](v51, v135, v124);
  sub_1D22BD238(v51, &qword_1EC6E0D80);
  v67 = v131(v61, v118, v119);
  MEMORY[0x1EEE9AC00](v67);
  *(&v99 - 32) = 7;
  *(&v99 - 3) = v137;
  *(&v99 - 2) = 0;
  sub_1D28745C8();
  MEMORY[0x1D389E720](v41, v66, v62);
  v68 = v136;
  MEMORY[0x1D389E740](v50, v128, v136, v129, v64);
  v69 = v116;
  v70 = v125;
  v125(v15, 0, 1, v116);
  MEMORY[0x1D389E750](v15, v69, v120);
  sub_1D22BD238(v15, &qword_1EC6E0D80);
  v134(v50, v68);
  v71 = v115;
  v130(v41, v115);
  v72 = v124;
  MEMORY[0x1D389E720](v51, v135, v124);
  sub_1D22BD238(v51, &qword_1EC6E0D80);
  v73 = v131(v117, v118, v119);
  MEMORY[0x1EEE9AC00](v73);
  *(&v99 - 32) = 0;
  v74 = v127;
  *(&v99 - 3) = v137;
  *(&v99 - 2) = v74;
  sub_1D28745C8();
  MEMORY[0x1D389E720](v41, v71, v123);
  v75 = v136;
  MEMORY[0x1D389E740](v50, v128, v136, v129, OpaqueTypeConformance2);
  v76 = v116;
  v70(v15, 0, 1, v116);
  v77 = v76;
  MEMORY[0x1D389E750](v15, v76, v120);
  sub_1D22BD238(v15, &qword_1EC6E0D80);
  v134(v50, v75);
  v78 = v115;
  v130(v41, v115);
  MEMORY[0x1D389E720](v51, v135, v72);
  sub_1D22BD238(v51, &qword_1EC6E0D80);
  v79 = v117;
  sub_1D2875BE8();
  v80 = v119;
  v81 = v131(v102, v79, v119);
  MEMORY[0x1EEE9AC00](v81);
  *(&v99 - 32) = 5;
  v82 = v127;
  *(&v99 - 3) = v137;
  *(&v99 - 2) = v82;
  sub_1D28745C8();
  MEMORY[0x1D389E720](v41, v78, v123);
  v83 = v136;
  MEMORY[0x1D389E740](v50, v128, v136, v129, OpaqueTypeConformance2);
  v125(v15, 0, 1, v77);
  MEMORY[0x1D389E750](v15, v77, v120);
  sub_1D22BD238(v15, &qword_1EC6E0D80);
  v134(v50, v83);
  v130(v41, v78);
  MEMORY[0x1D389E720](v51, v135, v124);
  sub_1D22BD238(v51, &qword_1EC6E0D80);
  (*(v101 + 8))(v117, v80);
  v84 = v106[12];
  v85 = v106[16];
  v86 = v106[20];
  v87 = v106[28];
  v88 = v106[32];
  v138 = v106[24];
  v139 = v88;
  v89 = v103;
  v90 = *(v103 + 16);
  v91 = v105;
  v92 = v104;
  v90(v105, v111, v104);
  v90(&v91[v84], v112, v92);
  v90(&v91[v85], v113, v92);
  v90(&v91[v86], v114, v92);
  v93 = v108;
  v90(&v91[v138], v108, v92);
  v94 = &v91[v87];
  v95 = v109;
  v90(v94, v109, v92);
  v96 = v110;
  v90(&v91[v139], v110, v92);
  sub_1D28759C8();
  v97 = *(v89 + 8);
  v97(v96, v92);
  v97(v95, v92);
  v97(v93, v92);
  v97(v114, v92);
  v97(v113, v92);
  v97(v112, v92);
  return (v97)(v111, v92);
}

uint64_t sub_1D2723140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v129 = a1;
  v126 = a2;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1070);
  MEMORY[0x1EEE9AC00](v134);
  v125 = &v117 - v2;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0D70);
  v164 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v142 = &v117 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0D78);
  v148 = v4;
  v163 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v139 = &v117 - v5;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0F00);
  v141 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v7 = &v117 - v6;
  v8 = sub_1D28747B8();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_1D2874B88();
  v140 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v12 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0D80);
  MEMORY[0x1EEE9AC00](v159);
  v14 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v118 = &v117 - v16;
  v17 = sub_1D2875C08();
  v165 = v17;
  v166 = *(v17 - 8);
  v18 = v166;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v117 - v22;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0D88);
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v133 = &v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v132 = &v117 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v131 = &v117 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v145 = &v117 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v144 = &v117 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v130 = &v117 - v34;
  v156 = v23;
  sub_1D2875BE8();
  v122 = v10;
  sub_1D28747A8();
  v158 = *(v18 + 16);
  v160 = v18 + 16;
  v157 = v20;
  v158(v20, v23, v17);
  v35 = v12;
  sub_1D2874B98();
  v36 = MEMORY[0x1E697BFF0];
  v127 = v12;
  v37 = v128;
  MEMORY[0x1D389E710](v12, v128, MEMORY[0x1E697BFF0]);
  v179 = v37;
  v180 = v36;
  v38 = *(swift_getOpaqueTypeConformance2() + 8);
  v149 = v38;
  v150 = sub_1D22BB9D8(&qword_1EC6E0EF8, &qword_1EC6E0D78);
  v179 = v4;
  v180 = v150;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v7;
  v119 = v7;
  v40 = v151;
  MEMORY[0x1D389E730](v7, v151, v155, v38, OpaqueTypeConformance2);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0F08);
  v42 = *(v41 - 8);
  v152 = *(v42 + 56);
  v162 = v42 + 56;
  v152(v14, 0, 1, v41);
  v161 = sub_1D27323B4();
  v43 = v118;
  MEMORY[0x1D389E750](v14, v41, v161);
  sub_1D22BD238(v14, &qword_1EC6E0D80);
  v44 = *(v141 + 8);
  v141 += 8;
  v121 = v44;
  v44(v39, v40);
  v45 = *(v140 + 8);
  v140 += 8;
  v120 = v45;
  v45(v35, v37);
  v154 = sub_1D27324E8();
  MEMORY[0x1D389E720](v43, v159, v154);
  v46 = v43;
  sub_1D22BD238(v43, &qword_1EC6E0D80);
  v47 = *(v166 + 8);
  v166 += 8;
  v153 = v47;
  v48 = v156;
  v49 = v165;
  v47(v156, v165);
  sub_1D2875BE8();
  v158(v157, v48, v49);
  v176 = 2;
  v50 = v129;
  v177 = v143;
  v178 = v129;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DD0);
  v137 = sub_1D2731860();
  v51 = v139;
  sub_1D28745C8();
  v52 = v142;
  v53 = v51;
  v54 = v148;
  MEMORY[0x1D389E720](v51, v148, v150);
  v55 = v40;
  v56 = v155;
  v57 = OpaqueTypeConformance2;
  MEMORY[0x1D389E740](v52, v55, v155, v149, OpaqueTypeConformance2);
  v146 = v41;
  v152(v14, 0, 1, v41);
  MEMORY[0x1D389E750](v14, v41, v161);
  sub_1D22BD238(v14, &qword_1EC6E0D80);
  v58 = *(v164 + 8);
  v164 += 8;
  v136 = v58;
  v59 = v56;
  v58(v52, v56);
  v60 = *(v163 + 8);
  v163 += 8;
  v135 = v60;
  v60(v53, v54);
  MEMORY[0x1D389E720](v46, v159, v154);
  sub_1D22BD238(v46, &qword_1EC6E0D80);
  v61 = v156;
  v62 = v165;
  v153(v156, v165);
  sub_1D2875BE8();
  v158(v157, v61, v62);
  v173 = 0;
  v63 = v143;
  v174 = v143;
  v175 = v50;
  sub_1D28745C8();
  v64 = v142;
  v65 = v53;
  v66 = v148;
  MEMORY[0x1D389E720](v65, v148, v150);
  v67 = v59;
  v68 = v149;
  MEMORY[0x1D389E740](v64, v151, v59, v149, v57);
  v69 = v146;
  v152(v14, 0, 1, v146);
  v70 = v46;
  MEMORY[0x1D389E750](v14, v69, v161);
  sub_1D22BD238(v14, &qword_1EC6E0D80);
  v71 = v64;
  v136(v64, v67);
  v72 = v139;
  v135(v139, v66);
  MEMORY[0x1D389E720](v70, v159, v154);
  sub_1D22BD238(v70, &qword_1EC6E0D80);
  v73 = v156;
  v74 = v165;
  v153(v156, v165);
  sub_1D2875BE8();
  v158(v157, v73, v74);
  v170 = 1;
  v171 = v63;
  v172 = v129;
  sub_1D28745C8();
  v75 = v71;
  v76 = v72;
  v77 = v148;
  MEMORY[0x1D389E720](v72, v148, v150);
  v78 = v155;
  MEMORY[0x1D389E740](v75, v151, v155, v68, OpaqueTypeConformance2);
  v79 = v146;
  v80 = v152;
  v152(v14, 0, 1, v146);
  MEMORY[0x1D389E750](v14, v79, v161);
  sub_1D22BD238(v14, &qword_1EC6E0D80);
  v81 = v78;
  v136(v75, v78);
  v135(v76, v77);
  v82 = v159;
  MEMORY[0x1D389E720](v70, v159, v154);
  v83 = v70;
  sub_1D22BD238(v70, &qword_1EC6E0D80);
  v84 = v156;
  v85 = v165;
  v153(v156, v165);
  sub_1D2875BE8();
  sub_1D28747A8();
  v158(v157, v84, v85);
  v86 = v127;
  sub_1D2874B98();
  v87 = v119;
  v88 = v128;
  MEMORY[0x1D389E710](v86, v128, MEMORY[0x1E697BFF0]);
  v89 = v87;
  v90 = v87;
  v91 = v151;
  MEMORY[0x1D389E730](v89, v151, v81, v149, OpaqueTypeConformance2);
  v92 = v146;
  v80(v14, 0, 1, v146);
  MEMORY[0x1D389E750](v14, v92, v161);
  sub_1D22BD238(v14, &qword_1EC6E0D80);
  v121(v90, v91);
  v120(v127, v88);
  v93 = v154;
  MEMORY[0x1D389E720](v83, v82, v154);
  sub_1D22BD238(v83, &qword_1EC6E0D80);
  v94 = v84;
  v95 = v84;
  v96 = v165;
  v97 = v153;
  v153(v95, v165);
  sub_1D2875BD8();
  v158(v157, v94, v96);
  v167 = 6;
  v168 = v143;
  v169 = 0;
  v98 = v139;
  sub_1D28745C8();
  v99 = v142;
  v100 = v148;
  MEMORY[0x1D389E720](v98, v148, v150);
  v101 = v91;
  v102 = v155;
  MEMORY[0x1D389E740](v99, v101, v155, v149, OpaqueTypeConformance2);
  v103 = v146;
  v152(v14, 0, 1, v146);
  MEMORY[0x1D389E750](v14, v103, v161);
  sub_1D22BD238(v14, &qword_1EC6E0D80);
  v136(v99, v102);
  v135(v98, v100);
  MEMORY[0x1D389E720](v83, v159, v93);
  sub_1D22BD238(v83, &qword_1EC6E0D80);
  v97(v156, v165);
  v104 = v134[12];
  v105 = v134[16];
  v106 = v134[20];
  v107 = v134[24];
  v166 = v134[28];
  v108 = v123;
  v109 = *(v123 + 16);
  v110 = v125;
  v111 = v124;
  v109(v125, v130, v124);
  v109(&v110[v104], v144, v111);
  v109(&v110[v105], v145, v111);
  v112 = v131;
  v109(&v110[v106], v131, v111);
  v113 = v132;
  v109(&v110[v107], v132, v111);
  v114 = v133;
  v109(&v110[v166], v133, v111);
  sub_1D28759C8();
  v115 = *(v108 + 8);
  v115(v114, v111);
  v115(v113, v111);
  v115(v112, v111);
  v115(v145, v111);
  v115(v144, v111);
  return (v115)(v130, v111);
}

uint64_t sub_1D272457C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for DetailView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E10B0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v42 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v39 - v15);
  *v16 = sub_1D2877828();
  v16[1] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E10B8);
  sub_1D27249FC(a1, a2, a3, v16 + *(v18 + 44));
  if (sub_1D2716094())
  {
    v19 = sub_1D2715F10();
    sub_1D27F6C28(v19, 1, v43);
    sub_1D27328D8(a2, &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DetailView);
    v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v40 = swift_allocObject();
    v41 = a4;
    sub_1D2733B20(&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v40 + v20, type metadata accessor for DetailView);
    sub_1D27328D8(a2, &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DetailView);
    v21 = swift_allocObject();
    sub_1D2733B20(v11, v21 + v20, type metadata accessor for DetailView);
    a4 = v41;
    v22 = (a2 + *(v8 + 60));
    v23 = *v22;
    v24 = v22[1];
    *&v64 = v23;
    *(&v64 + 1) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA708);
    sub_1D2877308();
    v25 = 0.0;
    if (*&v55 == 1.0)
    {
      v25 = 1.0;
    }

    v55 = v43[0];
    v56 = v43[1];
    v57 = v43[2];
    v58 = v43[3];
    *&v59 = sub_1D27338C8;
    *(&v59 + 1) = v40;
    v60 = 0u;
    v61 = 0u;
    *&v62 = sub_1D27338E0;
    *(&v62 + 1) = v21;
    v63 = v25;
    CGRectMake(v25, 0.0);
    v70 = v61;
    v71 = v62;
    v72 = v63;
    v66 = v57;
    v67 = v58;
    v68 = v59;
    v69 = v60;
    v64 = v55;
    v65 = v56;
  }

  else
  {
    sub_1D27338AC(&v64);
  }

  v26 = v42;
  sub_1D22BD1D0(v16, v42, &qword_1EC6E10B0);
  v50 = v70;
  v51 = v71;
  v52 = v72;
  v46 = v66;
  v47 = v67;
  v48 = v68;
  v49 = v69;
  v44 = v64;
  v45 = v65;
  *a4 = 0;
  *(a4 + 8) = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E10C0);
  sub_1D22BD1D0(v26, a4 + v27[12], &qword_1EC6E10B0);
  v28 = v27[16];
  v29 = v51;
  v53[6] = v50;
  v53[7] = v51;
  v31 = v48;
  v30 = v49;
  v53[4] = v48;
  v53[5] = v49;
  v32 = v46;
  v33 = v47;
  v53[2] = v46;
  v53[3] = v47;
  v35 = v44;
  v34 = v45;
  v53[0] = v44;
  v53[1] = v45;
  v36 = a4 + v28;
  *(v36 + 96) = v50;
  *(v36 + 112) = v29;
  *(v36 + 32) = v32;
  *(v36 + 48) = v33;
  *(v36 + 64) = v31;
  *(v36 + 80) = v30;
  v54 = v52;
  *(v36 + 128) = v52;
  *v36 = v35;
  *(v36 + 16) = v34;
  v37 = a4 + v27[20];
  *v37 = 0;
  *(v37 + 8) = 1;
  sub_1D22BD1D0(v53, &v55, &qword_1EC6E10C8);
  sub_1D22BD238(v16, &qword_1EC6E10B0);
  v61 = v50;
  v62 = v51;
  v63 = v52;
  v57 = v46;
  v58 = v47;
  v59 = v48;
  v60 = v49;
  v55 = v44;
  v56 = v45;
  sub_1D22BD238(&v55, &qword_1EC6E10C8);
  return sub_1D22BD238(v26, &qword_1EC6E10B0);
}

uint64_t sub_1D27249FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v255 = a3;
  v257 = a1;
  v258 = a2;
  v240 = a4;
  v245 = sub_1D2871818();
  v237 = *(v245 - 8);
  MEMORY[0x1EEE9AC00](v245);
  v238 = &v200 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E10F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v239 = &v200 - v6;
  v256 = type metadata accessor for DetailView();
  v234 = *(v256 - 8);
  MEMORY[0x1EEE9AC00](v256);
  v235 = v7;
  v236 = &v200 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = sub_1D2875E18();
  v247 = *(v243 - 8);
  MEMORY[0x1EEE9AC00](v243);
  v203 = &v200 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DB0);
  MEMORY[0x1EEE9AC00](v242);
  v244 = &v200 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v205 = &v200 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v202 = &v200 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v246 = &v200 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v241 = &v200 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v201 = &v200 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v209 = &v200 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v204 = &v200 - v23;
  v224 = type metadata accessor for DisplayableImage();
  MEMORY[0x1EEE9AC00](v224);
  v225 = (&v200 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25);
  v251 = (&v200 - v26);
  v27 = sub_1D2875628();
  v207 = *(v27 - 8);
  v208 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v206 = &v200 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1D2873CB8();
  v211 = *(v29 - 8);
  v212 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v200 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v200 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v200 - v36;
  v38 = type metadata accessor for PhotoAssetView();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v200 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v226 = &v200 - v42;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E10F8);
  MEMORY[0x1EEE9AC00](v215);
  v213 = &v200 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1100);
  v216 = *(v44 - 8);
  v217 = v44;
  MEMORY[0x1EEE9AC00](v44);
  v214 = &v200 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1108);
  v219 = *(v46 - 8);
  v220 = v46;
  MEMORY[0x1EEE9AC00](v46);
  v218 = &v200 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1110);
  v221 = *(v48 - 8);
  v222 = v48;
  MEMORY[0x1EEE9AC00](v48);
  v249 = &v200 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1118);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v250 = &v200 - v51;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1120);
  MEMORY[0x1EEE9AC00](v223);
  v252 = &v200 - v52;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1128);
  MEMORY[0x1EEE9AC00](v227);
  v228 = &v200 - v53;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1130);
  MEMORY[0x1EEE9AC00](v253);
  v254 = &v200 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1138);
  v230 = *(v55 - 8);
  v231 = v55;
  MEMORY[0x1EEE9AC00](v55);
  v229 = &v200 - v56;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1140);
  MEMORY[0x1EEE9AC00](v232);
  v233 = &v200 - v57;
  v58 = sub_1D2875188();
  *(&v263 + 1) = v58;
  *&v264 = sub_1D27342FC(&qword_1ED89D740, MEMORY[0x1E697EAF0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v262);
  v60 = *(v58 + 20);
  v61 = *MEMORY[0x1E697F468];
  v62 = sub_1D2875868();
  (*(*(v62 - 8) + 104))(&boxed_opaque_existential_1->i8[v60], v61, v62);
  *boxed_opaque_existential_1 = vdupq_n_s64(0x4041000000000000uLL);
  v63 = swift_allocObject();
  v248 = *v258;
  swift_weakInit();
  v64 = type metadata accessor for PlaygroundImage();
  (*(*(v64 - 8) + 56))(v37, 1, 1, v64);
  sub_1D22BD1D0(v37, v34, &unk_1EC6DE5A0);
  sub_1D2870F78();
  sub_1D28772F8();
  sub_1D22BD238(v37, &unk_1EC6DE5A0);
  v65 = v38[5];
  v259 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1150);
  sub_1D28772F8();
  *&v40[v65] = v261[0];
  sub_1D2872528();
  v66 = sub_1D2870F78();
  v210 = v31;
  v67 = v66;
  v68 = sub_1D2873CA8();
  v69 = sub_1D2878A08();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *&v261[0] = v71;
    *v70 = 136315138;
    sub_1D27342FC(&qword_1ED8A6C90, MEMORY[0x1E69695A8]);
    v72 = sub_1D28795C8();
    v74 = sub_1D23D7C84(v72, v73, v261);

    *(v70 + 4) = v74;
    _os_log_impl(&dword_1D226E000, v68, v69, "PhotoAssetView init for image uuid: %s", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v71);
    MEMORY[0x1D38A3520](v71, -1, -1);
    v75 = v70;
    v67 = v257;
    MEMORY[0x1D38A3520](v75, -1, -1);
  }

  (*(v211 + 8))(v210, v212);
  *&v40[v38[6]] = v67;
  v40[v38[7]] = 1;
  v40[v38[8]] = 1;
  v40[v38[9]] = 0;
  v76 = &v40[v38[10]];
  v77 = v263;
  *v76 = v262;
  *(v76 + 1) = v77;
  *(v76 + 4) = v264;
  v40[v38[11]] = v255 & 1;
  v78 = &v40[v38[12]];
  *v78 = sub_1D273399C;
  v78[1] = v63;
  v79 = v40;
  v80 = v226;
  sub_1D2733B20(v79, v226, type metadata accessor for PhotoAssetView);
  sub_1D2870F78();

  sub_1D27342FC(&qword_1EC6DEDB0, type metadata accessor for PhotoAssetView);
  v81 = v213;
  sub_1D2876CC8();
  sub_1D27339A4(v80, type metadata accessor for PhotoAssetView);
  v82 = v258 + *(v256 + 40);
  v83 = *v82;
  v84 = v82[8];
  sub_1D2870F78();
  if ((v84 & 1) == 0)
  {
    sub_1D2878A28();
    v85 = sub_1D28762E8();
    sub_1D2873BE8();

    v86 = v206;
    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v207 + 8))(v86, v208);
    v83 = v262;
  }

  v87 = *(*v67 + 160);
  swift_getKeyPath();
  *&v262 = v83;
  sub_1D27342FC(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator);
  sub_1D28719E8();

  v88 = *(v83 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow);
  v226 = v87;
  if (v88)
  {
    v89 = sub_1D28717B8();
    *&v262 = 0xD000000000000012;
    *(&v262 + 1) = 0x80000001D28BBCC0;
  }

  else
  {
    v89 = sub_1D28717B8();
    *&v262 = 0x6E61725464697247;
    *(&v262 + 1) = 0xEF2D6E6F69746973;
  }

  MEMORY[0x1D38A0C50](v89);

  v90 = sub_1D2733A04();
  v91 = MEMORY[0x1E69E6158];
  v92 = MEMORY[0x1E69E6168];
  v93 = v214;
  v94 = v215;
  sub_1D2876D58();

  sub_1D22BD238(v81, &qword_1EC6E10F8);
  sub_1D2870F78();
  *&v262 = v94;
  *(&v262 + 1) = v91;
  *&v263 = v90;
  *(&v263 + 1) = v92;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v96 = v217;
  v97 = v218;
  sub_1D2876E78();

  v98 = (*(v216 + 8))(v93, v96);
  MEMORY[0x1EEE9AC00](v98);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0FE0);
  *&v262 = v96;
  *(&v262 + 1) = OpaqueTypeConformance2;
  v100 = swift_getOpaqueTypeConformance2();
  v101 = sub_1D22BB9D8(&qword_1EC6E0FF0, &qword_1EC6E0FE0);
  v102 = v220;
  sub_1D28767D8();
  v103 = (*(v219 + 8))(v97, v102);
  MEMORY[0x1EEE9AC00](v103);
  sub_1D22BCFD0(0, &qword_1EC6D74E0);
  swift_getKeyPath();
  *&v262 = v67;
  sub_1D22BB9D8(&qword_1EC6DAE20, &unk_1EC6DE550);
  sub_1D28719E8();

  v104 = (v67 + *(*v67 + 216));
  v105 = v104[1];
  if (v105)
  {
    v106 = *v104;
    v107 = v105;
  }

  else
  {
    v106 = 0;
    v107 = 0xE000000000000000;
  }

  v108 = v256;
  *&v261[0] = v106;
  *(&v261[0] + 1) = v107;
  sub_1D2870F68();
  *&v262 = v102;
  *(&v262 + 1) = v99;
  *&v263 = v100;
  *(&v263 + 1) = v101;
  swift_getOpaqueTypeConformance2();
  sub_1D22BD06C();
  v109 = v222;
  v110 = v249;
  sub_1D2876AC8();

  (*(v221 + 8))(v110, v109);
  v111 = v258 + *(v108 + 56);
  v112 = *v111;
  v113 = *(v111 + 1);
  LOBYTE(v261[0]) = v112;
  *(&v261[0] + 1) = v113;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  sub_1D2877328();
  v114 = v262;
  v115 = v263;
  swift_getKeyPath();
  v116 = v248;
  *&v262 = v248;
  sub_1D27342FC(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  v117 = *(v116 + 16);
  LODWORD(v249) = v115;
  if (v117)
  {
    *v251 = v117;
  }

  else
  {
    sub_1D262ADDC(0x6F746F6870, 0xE500000000000000, v251);
  }

  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  v118 = v248;
  *&v262 = v248;
  sub_1D2870F78();
  sub_1D28719E8();

  v119 = *(v118 + 16);
  v120 = v225;
  if (v119)
  {
    *v225 = v119;
  }

  else
  {
    sub_1D262ADDC(0x6F746F6870, 0xE500000000000000, v225);
  }

  v121 = v258;
  swift_storeEnumTagMultiPayload();
  v122 = v252;
  v123 = v252 + *(v223 + 36);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1170);
  sub_1D2733B20(v251, v123 + v124[14], type metadata accessor for DisplayableImage);
  sub_1D2733B20(v120, v123 + v124[15], type metadata accessor for DisplayableImage);
  *v123 = v114;
  *(v123 + 16) = v249;
  *(v123 + 17) = 2;
  *(v123 + v124[16]) = 0;
  sub_1D22EC9BC(v250, v122, &qword_1EC6E1118);
  v125 = (v121 + *(v256 + 60));
  v126 = *v125;
  v127 = v125[1];
  *&v262 = *v125;
  *(&v262 + 1) = v127;
  sub_1D2870F78();
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA708);
  sub_1D2877308();
  v128 = MEMORY[0x1E697FF38];
  if (*v261 != 1.0)
  {
    v140 = v244;
    v141 = v241;
    v143 = v246;
    v142 = v257;
    goto LABEL_28;
  }

  v250 = v127;
  v248 = *(*v257 + 168);
  v249 = *(v257 + v248);
  v129 = v204;
  sub_1D24CC0C4(v204);
  v130 = *v128;
  v131 = v247;
  v132 = v209;
  v133 = v243;
  (*(v247 + 104))(v209, v130, v243);
  (*(v131 + 56))(v132, 0, 1, v133);
  v134 = *(v242 + 48);
  v135 = v205;
  sub_1D22BD1D0(v129, v205, &qword_1EC6D99B8);
  v136 = v133;
  sub_1D22BD1D0(v132, v135 + v134, &qword_1EC6D99B8);
  v137 = *(v131 + 48);
  if (v137(v135, 1, v136) != 1)
  {
    v144 = v201;
    sub_1D22BD1D0(v135, v201, &qword_1EC6D99B8);
    if (v137(v135 + v134, 1, v136) != 1)
    {
      v189 = v247;
      v190 = v203;
      (*(v247 + 32))(v203, v135 + v134, v136);
      sub_1D27342FC(&qword_1ED89D3D0, MEMORY[0x1E697FF50]);
      v191 = v136;
      v192 = sub_1D2877F98();
      v193 = *(v189 + 8);
      v193(v190, v191);
      sub_1D22BD238(v209, &qword_1EC6D99B8);
      sub_1D22BD238(v129, &qword_1EC6D99B8);
      v193(v144, v191);
      sub_1D22BD238(v135, &qword_1EC6D99B8);
      v139 = v256;
      v142 = v257;
      v140 = v244;
      v143 = v246;
      v127 = v250;
      v141 = v241;
      if (v192)
      {
        goto LABEL_27;
      }

LABEL_25:
      v145 = v258 + *(v139 + 48);
      v146 = *v145;
      if (v145[8] != 1)
      {
        sub_1D2870F78();
        sub_1D2878A28();
        v147 = sub_1D28762E8();
        sub_1D2873BE8();

        v148 = v206;
        sub_1D2875618();
        swift_getAtKeyPath();
        sub_1D2273818(v146, 0);
        v149 = v148;
        v143 = v246;
        (*(v207 + 8))(v149, v208);
      }

      goto LABEL_27;
    }

    sub_1D22BD238(v209, &qword_1EC6D99B8);
    sub_1D22BD238(v129, &qword_1EC6D99B8);
    (*(v247 + 8))(v144, v136);
    v139 = v256;
    v140 = v244;
    v141 = v241;
LABEL_24:
    sub_1D22BD238(v135, &qword_1EC6E0DB0);
    v142 = v257;
    v143 = v246;
    v127 = v250;
    goto LABEL_25;
  }

  sub_1D22BD238(v132, &qword_1EC6D99B8);
  sub_1D22BD238(v129, &qword_1EC6D99B8);
  v138 = v137(v135 + v134, 1, v136);
  v139 = v256;
  v140 = v244;
  v141 = v241;
  if (v138 != 1)
  {
    goto LABEL_24;
  }

  sub_1D22BD238(v135, &qword_1EC6D99B8);
  v142 = v257;
  v143 = v246;
  v127 = v250;
LABEL_27:
  v121 = v258;
LABEL_28:
  *&v262 = v126;
  *(&v262 + 1) = v127;
  sub_1D2877308();
  if (*v261 != 1.0)
  {
    goto LABEL_38;
  }

  v250 = *(v142 + *(*v142 + 176));
  sub_1D24CC0C4(v141);
  v150 = v247;
  v151 = v243;
  (*(v247 + 104))(v143, *MEMORY[0x1E697FF38], v243);
  (*(v150 + 56))(v143, 0, 1, v151);
  v152 = *(v242 + 48);
  sub_1D22BD1D0(v141, v140, &qword_1EC6D99B8);
  sub_1D22BD1D0(v143, v140 + v152, &qword_1EC6D99B8);
  v153 = *(v150 + 48);
  if (v153(v140, 1, v151) == 1)
  {
    sub_1D22BD238(v143, &qword_1EC6D99B8);
    v140 = v244;
    sub_1D22BD238(v141, &qword_1EC6D99B8);
    v154 = v153(v140 + v152, 1, v151);
    v142 = v257;
    if (v154 == 1)
    {
      sub_1D22BD238(v140, &qword_1EC6D99B8);
      v121 = v258;
      goto LABEL_38;
    }
  }

  else
  {
    v155 = v202;
    sub_1D22BD1D0(v140, v202, &qword_1EC6D99B8);
    if (v153(v140 + v152, 1, v151) != 1)
    {
      v194 = v155;
      v195 = v247;
      v196 = v203;
      (*(v247 + 32))(v203, v140 + v152, v151);
      sub_1D27342FC(&qword_1ED89D3D0, MEMORY[0x1E697FF50]);
      v197 = v151;
      v198 = sub_1D2877F98();
      v199 = *(v195 + 8);
      v199(v196, v197);
      sub_1D22BD238(v246, &qword_1EC6D99B8);
      sub_1D22BD238(v241, &qword_1EC6D99B8);
      v199(v194, v197);
      sub_1D22BD238(v140, &qword_1EC6D99B8);
      v156 = v256;
      v142 = v257;
      v121 = v258;
      if (v198)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }

    sub_1D22BD238(v246, &qword_1EC6D99B8);
    sub_1D22BD238(v141, &qword_1EC6D99B8);
    (*(v247 + 8))(v155, v151);
    v142 = v257;
  }

  sub_1D22BD238(v140, &qword_1EC6E0DB0);
  v156 = v256;
  v121 = v258;
LABEL_36:
  v157 = v121 + *(v156 + 48);
  v158 = *v157;
  if (*(v157 + 8) != 1)
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v159 = sub_1D28762E8();
    sub_1D2873BE8();

    v160 = v206;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v158, 0);
    (*(v207 + 8))(v160, v208);
  }

LABEL_38:
  sub_1D2877848();
  sub_1D2875208();
  v161 = v228;
  sub_1D22EC9BC(v252, v228, &qword_1EC6E1120);
  v162 = (v161 + *(v227 + 36));
  v163 = v261[5];
  v162[4] = v261[4];
  v162[5] = v163;
  v162[6] = v261[6];
  v164 = v261[1];
  *v162 = v261[0];
  v162[1] = v164;
  v165 = v261[3];
  v162[2] = v261[2];
  v162[3] = v165;
  v166 = v254;
  sub_1D22EC9BC(v161, v254, &qword_1EC6E1128);
  v167 = v166 + *(v253 + 36);
  *v167 = 0;
  *(v167 + 8) = 1;
  LOBYTE(v166) = sub_1D28762F8();
  sub_1D2876308();
  sub_1D2876308();
  if (sub_1D2876308() != v166)
  {
    sub_1D2876308();
  }

  v168 = v236;
  sub_1D27328D8(v121, v236, type metadata accessor for DetailView);
  v169 = (*(v234 + 80) + 16) & ~*(v234 + 80);
  v170 = swift_allocObject();
  sub_1D2733B20(v168, v170 + v169, type metadata accessor for DetailView);
  sub_1D2877848();
  sub_1D2733E24();
  v171 = v229;
  v172 = v254;
  sub_1D2876C88();

  sub_1D22BD238(v172, &qword_1EC6E1130);
  v259 = v126;
  v260 = v127;
  sub_1D2877328();
  v173 = v262;
  v174 = *&v263;
  v175 = sub_1D271AA0C(v255 & 1);
  v176 = sub_1D239D408(v173, *(&v173 + 1), v175 & 1, &v262, v174, 3.0);
  v177 = v233;
  (*(v230 + 32))(v233, v171, v231, v176);
  v178 = v232;
  v179 = v177 + *(v232 + 36);
  v180 = v271;
  *(v179 + 128) = v270;
  *(v179 + 144) = v180;
  *(v179 + 160) = v272;
  *(v179 + 176) = v273;
  v181 = v267;
  *(v179 + 64) = v266;
  *(v179 + 80) = v181;
  v182 = v269;
  *(v179 + 96) = v268;
  *(v179 + 112) = v182;
  v183 = v263;
  *v179 = v262;
  *(v179 + 16) = v183;
  v184 = v265;
  *(v179 + 32) = v264;
  *(v179 + 48) = v184;
  type metadata accessor for GeneratedImageEntity();
  (*(v237 + 16))(v238, v142 + v226, v245);
  sub_1D27342FC(&qword_1EC6E11A0, type metadata accessor for GeneratedImageEntity);
  v185 = v239;
  sub_1D2870E88();
  v186 = sub_1D2870E98();
  (*(*(v186 - 8) + 56))(v185, 0, 1, v186);
  v187 = sub_1D27341E0();
  MEMORY[0x1D389F120](v185, v178, v187);
  sub_1D22BD238(v185, &qword_1EC6E10F0);
  return sub_1D22BD238(v177, &unk_1EC6E1140);
}

uint64_t sub_1D2726C70()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D27125F0();
  }

  return result;
}

id sub_1D2726CC8(uint64_t a1)
{
  v2 = type metadata accessor for PhotoAssetItemProviderWriting();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC23ImagePlaygroundInternal29PhotoAssetItemProviderWriting_asset] = a1;
  v8.receiver = v3;
  v8.super_class = v2;
  sub_1D2870F78();
  v4 = objc_msgSendSuper2(&v8, sel_init);
  v5 = objc_allocWithZone(MEMORY[0x1E696ACA0]);
  v6 = [v5 initWithObject_];

  return v6;
}

uint64_t sub_1D2726D5C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v126 = a2;
  v127 = a1;
  v106 = sub_1D2871CA8();
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v104 = v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCC28);
  v122 = *(v5 - 8);
  v123 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v107 = v103 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1040);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v125 = v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v124 = v103 - v10;
  v11 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v118 = v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_1D28714D8();
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v117 = v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v111 = v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D28714E8();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v113 = v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for DetailView();
  v18 = *(v114 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC998);
  v120 = *(v20 - 8);
  v121 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v119 = v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v132 = v103 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v133 = v103 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v134 = v103 - v27;
  v28 = sub_1D2875798();
  v30 = v29;
  v32 = v31;
  v112 = v33;
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v129 = qword_1ED8B0058;
  v110 = type metadata accessor for DetailView;
  sub_1D27328D8(v3, v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DetailView);
  v34 = *(v18 + 80);
  v35 = (v34 + 16) & ~v34;
  v128 = v35 + v19;
  v36 = swift_allocObject();
  v131 = v3;
  v37 = v36;
  v109 = type metadata accessor for DetailView;
  sub_1D2733B20(v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v35, type metadata accessor for DetailView);
  v130 = v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v103;
  v38 = v127;
  *(v37 + ((v35 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v127;
  MEMORY[0x1EEE9AC00](v38);
  v103[-8] = v28;
  v103[-7] = v30;
  LOBYTE(v103[-6]) = v32 & 1;
  v103[-5] = v112;
  sub_1D2870F78();
  sub_1D2870F78();
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8);
  v39 = sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8);
  sub_1D2877368();

  v40 = sub_1D2875798();
  v42 = v41;
  LOBYTE(v37) = v43;
  v45 = v44;
  v46 = v130;
  sub_1D27328D8(v131, v130, v110);
  v103[1] = v34;
  v47 = swift_allocObject();
  v108 = v35;
  v48 = sub_1D2733B20(v46, v47 + v35, v109);
  MEMORY[0x1EEE9AC00](v48);
  v103[-8] = v40;
  v103[-7] = v42;
  v49 = v131;
  LOBYTE(v103[-6]) = v37 & 1;
  v50 = v129;
  v103[-5] = v45;
  v100 = v50;
  v101 = 0xD000000000000015;
  v102 = 0x80000001D28BBF60;
  sub_1D2870F78();
  v51 = v133;
  v109 = v39;
  sub_1D2877368();

  v52 = v49 + *(v114 + 52);
  v53 = *v52;
  v54 = *(v52 + 8);
  v138 = v53;
  v139 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  sub_1D2877328();
  v114 = v135;
  v112 = v136;
  LODWORD(v110) = v137;
  sub_1D2877FE8();
  if (qword_1ED89E0F0 != -1)
  {
    swift_once();
  }

  v55 = v116;
  v56 = __swift_project_value_buffer(v116, qword_1ED8B0060);
  (*(v115 + 16))(v117, v56, v55);
  sub_1D28718C8();
  LOWORD(v102) = 2;
  v100 = "Context menu option to add caption";
  v101 = 34;
  sub_1D28714F8();
  v117 = sub_1D28780F8();
  v118 = v57;
  if (sub_1D27161B0())
  {
    v116 = sub_1D2875798();
    v59 = v58;
    LODWORD(v115) = v60;
    v62 = v61;
    v63 = sub_1D23C7998()[4];
    v64 = v105;
    v65 = v104;
    v66 = v106;
    (*(v105 + 104))(v104, *MEMORY[0x1E699C1D8], v106);
    v67 = v63;
    v68 = sub_1D2877C18();
    v70 = v69;

    (*(v64 + 8))(v65, v66);
    v71 = v49;
    v72 = v130;
    sub_1D27328D8(v71, v130, type metadata accessor for DetailView);
    v73 = swift_allocObject();
    v74 = sub_1D2733B20(v72, v108 + v73, type metadata accessor for DetailView);
    MEMORY[0x1EEE9AC00](v74);
    v103[-8] = v116;
    v103[-7] = v59;
    LOBYTE(v103[-6]) = v115 & 1;
    v75 = v129;
    v103[-5] = v62;
    v100 = v75;
    v101 = v68;
    v102 = v70;
    sub_1D2870F78();
    v76 = v107;
    sub_1D2877368();

    v77 = &v76[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1050) + 36)];
    v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9FF0) + 28);
    sub_1D2875968();
    v79 = sub_1D2875998();
    (*(*(v79 - 8) + 56))(v77 + v78, 0, 1, v79);
    *v77 = swift_getKeyPath();
    v80 = sub_1D2875D98();
    v81 = v123;
    v82 = v124;
    *&v76[*(v123 + 36)] = v80;
    v83 = v76;
    v51 = v133;
    sub_1D24FB734(v83, v82);
    v84 = 0;
  }

  else
  {
    v84 = 1;
    v81 = v123;
    v82 = v124;
  }

  v85 = v134;
  (*(v122 + 56))(v82, v84, 1, v81);
  v86 = v120;
  v87 = *(v120 + 16);
  v88 = v132;
  v89 = v85;
  v90 = v121;
  v87(v132, v89, v121);
  v91 = v119;
  v87(v119, v51, v90);
  v92 = v125;
  sub_1D22BD1D0(v82, v125, &qword_1EC6E1040);
  v93 = v126;
  v87(v126, v88, v90);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1048);
  v87(&v93[v94[12]], v91, v90);
  v95 = &v93[v94[16]];
  v96 = v112;
  *v95 = v114;
  *(v95 + 1) = v96;
  v95[16] = v110;
  v97 = v118;
  *(v95 + 3) = v117;
  *(v95 + 4) = v97;
  sub_1D22BD1D0(v92, &v93[v94[20]], &qword_1EC6E1040);
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D2870F68();
  sub_1D22BD238(v82, &qword_1EC6E1040);
  v98 = *(v86 + 8);
  v98(v133, v90);
  v98(v134, v90);
  sub_1D22BD238(v92, &qword_1EC6E1040);

  v98(v91, v90);
  return (v98)(v132, v90);
}

uint64_t sub_1D2727B8C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D2875E18();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DB0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v25 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - v16;
  v26 = type metadata accessor for DetailView();
  v27 = a2;
  sub_1D24CC0C4(v17);
  (*(v4 + 104))(v14, *MEMORY[0x1E697FF38], v3);
  (*(v4 + 56))(v14, 0, 1, v3);
  v18 = *(v7 + 56);
  sub_1D22BD1D0(v17, v9, &qword_1EC6D99B8);
  sub_1D22BD1D0(v14, &v9[v18], &qword_1EC6D99B8);
  v19 = *(v4 + 48);
  if (v19(v9, 1, v3) == 1)
  {
    sub_1D22BD238(v14, &qword_1EC6D99B8);
    sub_1D22BD238(v17, &qword_1EC6D99B8);
    if (v19(&v9[v18], 1, v3) == 1)
    {
      return sub_1D22BD238(v9, &qword_1EC6D99B8);
    }

    return sub_1D22BD238(v9, &qword_1EC6E0DB0);
  }

  sub_1D22BD1D0(v9, v25, &qword_1EC6D99B8);
  if (v19(&v9[v18], 1, v3) == 1)
  {
    sub_1D22BD238(v14, &qword_1EC6D99B8);
    sub_1D22BD238(v17, &qword_1EC6D99B8);
    (*(v4 + 8))(v25, v3);
    return sub_1D22BD238(v9, &qword_1EC6E0DB0);
  }

  v21 = v24;
  (*(v4 + 32))(v24, &v9[v18], v3);
  sub_1D27342FC(&qword_1ED89D3D0, MEMORY[0x1E697FF50]);
  v22 = v25;
  sub_1D2877F98();
  v23 = *(v4 + 8);
  v23(v21, v3);
  sub_1D22BD238(v14, &qword_1EC6D99B8);
  sub_1D22BD238(v17, &qword_1EC6D99B8);
  v23(v22, v3);
  return sub_1D22BD238(v9, &qword_1EC6D99B8);
}

void sub_1D2728018(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D28809B0;
  *(v5 + 32) = a1;
  v6 = objc_opt_self();
  sub_1D2870F78();
  v7 = [v6 generalPasteboard];
  v8 = sub_1D28785F8();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_1D2878568();
  v9 = v7;
  v10 = sub_1D2878558();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v5;
  v11[5] = v9;
  sub_1D22AE01C(0, 0, v4, &unk_1D2894F80, v11);

  sub_1D23C7CA8();
  v13 = sub_1D2878068();
  v14 = sub_1D2878068();
  v15 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
  v16 = sub_1D2878068();
  v17 = sub_1D2418030(v15);

  if (v17)
  {
    type metadata accessor for IAPayloadKey(0);
    sub_1D22BCFD0(0, &qword_1ED89CC48);
    sub_1D27342FC(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey);
    v18 = sub_1D2877E78();
  }

  else
  {
    v18 = 0;
  }

  [objc_opt_self() asyncSendSignal:v14 toChannel:v13 withNullableUniqueStringID:v16 withPayload:v18];
}

uint64_t sub_1D2728310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a1;
  v72 = a2;
  v3 = sub_1D28756D8();
  v69 = *(v3 - 8);
  v70 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v68 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1D28777D8();
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DetailView();
  v57 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v56 = v7;
  v58 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC998);
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v62 = &v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E0E20);
  v66 = *(v9 - 8);
  v67 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v53 - v10;
  v11 = sub_1D2875E18();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DB0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v53 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v55 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v53 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v53 - v24;
  v71 = v2;
  sub_1D24CC0C4(&v53 - v24);
  (*(v12 + 104))(v22, *MEMORY[0x1E697FF38], v11);
  (*(v12 + 56))(v22, 0, 1, v11);
  v26 = *(v15 + 56);
  sub_1D22BD1D0(v25, v17, &qword_1EC6D99B8);
  sub_1D22BD1D0(v22, &v17[v26], &qword_1EC6D99B8);
  v27 = *(v12 + 48);
  if (v27(v17, 1, v11) == 1)
  {
    sub_1D22BD238(v22, &qword_1EC6D99B8);
    sub_1D22BD238(v25, &qword_1EC6D99B8);
    v28 = v27(&v17[v26], 1, v11);
    v29 = v62;
    if (v28 == 1)
    {
      sub_1D22BD238(v17, &qword_1EC6D99B8);
      v30 = 0;
      v31 = v71;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1D22BD1D0(v17, v55, &qword_1EC6D99B8);
  if (v27(&v17[v26], 1, v11) == 1)
  {
    sub_1D22BD238(v22, &qword_1EC6D99B8);
    sub_1D22BD238(v25, &qword_1EC6D99B8);
    (*(v12 + 8))(v55, v11);
    v29 = v62;
LABEL_6:
    sub_1D22BD238(v17, &qword_1EC6E0DB0);
    v30 = 1;
    v31 = v71;
    goto LABEL_8;
  }

  v32 = v54;
  (*(v12 + 32))(v54, &v17[v26], v11);
  sub_1D27342FC(&qword_1ED89D3D0, MEMORY[0x1E697FF50]);
  v33 = v55;
  v34 = sub_1D2877F98();
  v35 = *(v12 + 8);
  v35(v32, v11);
  sub_1D22BD238(v22, &qword_1EC6D99B8);
  sub_1D22BD238(v25, &qword_1EC6D99B8);
  v35(v33, v11);
  sub_1D22BD238(v17, &qword_1EC6D99B8);
  v30 = v34 ^ 1;
  v31 = v71;
  v29 = v62;
LABEL_8:
  v36 = v58;
  sub_1D27328D8(v31, v58, type metadata accessor for DetailView);
  v37 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v38 = (v56 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  sub_1D2733B20(v36, v39 + v37, type metadata accessor for DetailView);
  *(v39 + v38) = v59;
  sub_1D2870F78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8);
  sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8);
  sub_1D2877368();
  sub_1D28777C8();
  sub_1D28748D8();

  if (qword_1EC6D7E58 != -1)
  {
    swift_once();
  }

  v40 = v30 & 1;
  v41 = v68;
  sub_1D28756C8();
  v42 = sub_1D22BB9D8(&qword_1ED89D130, &qword_1EC6DC998);
  v43 = sub_1D27342FC(&qword_1EC6D7920, MEMORY[0x1E697C4D0]);
  v45 = v64;
  v44 = v65;
  v46 = v70;
  sub_1D28767A8();
  (*(v69 + 8))(v41, v46);
  (*(v63 + 8))(v29, v44);
  v77 = v40;
  v73 = v44;
  v74 = v46;
  v75 = v42;
  v76 = v43;
  swift_getOpaqueTypeConformance2();
  sub_1D2731D18();
  v47 = v72;
  v48 = v67;
  sub_1D2876768();
  (*(v66 + 8))(v45, v48);
  LOBYTE(v48) = *(v31 + 16);
  KeyPath = swift_getKeyPath();
  v50 = swift_allocObject();
  *(v50 + 16) = (v48 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0E18);
  v52 = (v47 + *(result + 36));
  *v52 = KeyPath;
  v52[1] = sub_1D22C03D8;
  v52[2] = v50;
  return result;
}

uint64_t sub_1D2728D1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailView();
  v5 = v4 - 8;
  v34 = *(v4 - 8);
  v6 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v32 - v11;
  v13 = sub_1D2875628();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v5 + 48);
  v33 = a1;
  v18 = (a1 + v17);
  v19 = *v18;
  LOBYTE(v5) = *(v18 + 8);
  sub_1D2870F78();
  sub_1D2870F78();
  if ((v5 & 1) == 0)
  {
    sub_1D2878A28();
    v20 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v14 + 8))(v16, v13);
    v19 = v36;
  }

  v21 = *(*a2 + 160);
  if (*(v19 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow) == 1)
  {
    *(v19 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v32 - 2) = v19;
    *(&v32 - 8) = 1;
    v36 = v19;
    sub_1D27342FC(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator);
    sub_1D28719D8();
  }

  v23 = sub_1D2871818();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v12, a2 + v21, v23);
  (*(v24 + 56))(v12, 0, 1, v23);
  sub_1D25E2EEC(v12);

  v25 = sub_1D28785F8();
  (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
  v26 = v35;
  sub_1D27328D8(v33, v35, type metadata accessor for DetailView);
  sub_1D2878568();
  sub_1D2870F78();
  v27 = sub_1D2878558();
  v28 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v29 = swift_allocObject();
  v30 = MEMORY[0x1E69E85E0];
  *(v29 + 16) = v27;
  *(v29 + 24) = v30;
  sub_1D2733B20(v26, v29 + v28, type metadata accessor for DetailView);
  *(v29 + ((v6 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  sub_1D22AE01C(0, 0, v9, &unk_1D28A1870, v29);
}

uint64_t sub_1D272924C()
{
  v0 = sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    v3 = v0;
    swift_once();
    v0 = v3;
  }

  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v1);
  sub_1D2877248();
}

uint64_t sub_1D27293B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(type metadata accessor for DetailView() - 8);
  v5[4] = v6;
  v5[5] = *(v6 + 64);
  v5[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  v5[7] = swift_task_alloc();
  v5[8] = sub_1D2878568();
  v5[9] = sub_1D2878558();
  v8 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D27294E8, v8, v7);
}

uint64_t sub_1D27294E8()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[2];
  v5 = v0[3];

  sub_1D2713E78();
  v7 = sub_1D28785F8();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  sub_1D27328D8(v6, v1, type metadata accessor for DetailView);
  sub_1D2870F78();
  v8 = sub_1D2878558();
  v9 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v8;
  v10[3] = v11;
  v10[4] = v5;
  sub_1D2733B20(v1, v10 + v9, type metadata accessor for DetailView);
  *(v10 + v9 + v3) = 2;
  sub_1D22AE01C(0, 0, v2, &unk_1D28A1880, v10);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D2729684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[1] = a2;
  v14[0] = sub_1D2874E58();
  v4 = *(v14[0] - 8);
  MEMORY[0x1EEE9AC00](v14[0]);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0E90);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v14 - v8;
  v16 = v2;
  v17 = a1;
  v15 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0FD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0FE0);
  sub_1D22BB9D8(&qword_1EC6E0FE8, &qword_1EC6E0FD8);
  sub_1D22BB9D8(&qword_1EC6E0FF0, &qword_1EC6E0FE0);
  sub_1D2876528();
  KeyPath = swift_getKeyPath();
  v11 = &v9[*(v7 + 36)];
  *v11 = KeyPath;
  v11[8] = 2;
  sub_1D2874E48();
  sub_1D27320D0();
  sub_1D27342FC(&qword_1EC6E0EC0, MEMORY[0x1E697C150]);
  v12 = v14[0];
  sub_1D2876FD8();
  (*(v4 + 8))(v6, v12);
  sub_1D22BD238(v9, &qword_1EC6E0E90);
  sub_1D2875798();

  if (qword_1ED89E0E8 != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t sub_1D2729988()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0FF8);
  sub_1D2732BE4();
  return sub_1D2877248();
}

uint64_t sub_1D2729A20@<X0>(uint64_t a1@<X8>)
{
  sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED8B0058;
  result = sub_1D2876668();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1D2729AF4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D2877198();
  v3 = sub_1D2876328();
  type metadata accessor for DetailView();
  sub_1D2874298();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_1D2876398();
  sub_1D2874298();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = sub_1D2876478();
  result = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  *(a1 + 48) = 0;
  *(a1 + 56) = v12;
  *(a1 + 64) = v14;
  *(a1 + 72) = v16;
  *(a1 + 80) = v18;
  *(a1 + 88) = v20;
  *(a1 + 96) = 0;
  *(a1 + 104) = result;
  *(a1 + 112) = v21;
  return result;
}

uint64_t sub_1D2729C00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v32 = a1;
  v38 = a2;
  v4 = sub_1D2875788();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = type metadata accessor for DetailView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC998);
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v30 = type metadata accessor for DetailView;
  sub_1D27328D8(v3, v8, type metadata accessor for DetailView);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  v29 = type metadata accessor for DetailView;
  sub_1D2733B20(v8, v13 + v12, type metadata accessor for DetailView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8);
  sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8);
  v35 = v11;
  sub_1D2877368();
  v14 = v28;
  v15 = *(v28 + 32);
  v42 = *(v28 + 24);
  v43 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  sub_1D2877328();
  v33 = v40;
  v34 = v39;
  v31 = v41;
  sub_1D27328D8(v14, v8, v30);
  v16 = swift_allocObject();
  sub_1D2733B20(v8, v16 + v12, v29);
  *(v16 + ((v12 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v32;
  sub_1D2870F78();
  sub_1D2875778();
  sub_1D2875768();
  v39 = 1;
  sub_1D2875748();
  sub_1D2875768();
  sub_1D28757A8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v17 = qword_1ED8B0058;
  v18 = sub_1D2876668();
  v20 = v19;
  v22 = v21;
  v30 = v23;
  v32 = &v27;
  MEMORY[0x1EEE9AC00](v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE6C0);
  sub_1D22BB9D8(&qword_1ED89D130, &qword_1EC6DC998);
  sub_1D22BB9D8(&qword_1ED89D158, &qword_1EC6DE6C0);
  v24 = v37;
  v25 = v35;
  sub_1D2876B08();

  sub_1D22ED6E0(v18, v20, v22 & 1);

  (*(v36 + 8))(v25, v24);
  sub_1D2875798();
}

uint64_t sub_1D272A200()
{
  v0 = sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    v3 = v0;
    swift_once();
    v0 = v3;
  }

  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v1);
  sub_1D2877248();
}

uint64_t sub_1D272A36C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  sub_1D2712B84();
  v11 = sub_1D28785F8();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1D27328D8(a1, v7, type metadata accessor for DetailView);
  sub_1D2878568();
  sub_1D2870F78();
  v12 = sub_1D2878558();
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = v13 + v6;
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  v15[2] = v12;
  v15[3] = v16;
  v15[4] = a2;
  sub_1D2733B20(v7, v15 + v13, type metadata accessor for DetailView);
  *(v15 + v14) = 1;
  sub_1D22AE01C(0, 0, v10, &unk_1D28A18E0, v15);
}

uint64_t sub_1D272A578()
{
  type metadata accessor for DetailView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  return sub_1D2877318();
}

uint64_t sub_1D272A5EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  *(v6 + 80) = a4;
  v7 = *(type metadata accessor for DetailView() - 8);
  *(v6 + 32) = v7;
  *(v6 + 40) = *(v7 + 64);
  *(v6 + 48) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  *(v6 + 56) = swift_task_alloc();
  *(v6 + 64) = sub_1D2878568();
  *(v6 + 72) = sub_1D2878558();
  v9 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D272A724, v9, v8);
}

uint64_t sub_1D272A724()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 80);

  if (v2 == 1 && v1 != 0)
  {
    v22 = *(v0 + 16);
    sub_1D2870F78();
    sub_1D23C7CA8();
    v4 = sub_1D2878068();
    v5 = sub_1D2878068();
    v6 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
    v7 = sub_1D2878068();
    v8 = sub_1D2418030(v6);

    if (v8)
    {
      type metadata accessor for IAPayloadKey(0);
      sub_1D22BCFD0(0, &qword_1ED89CC48);
      sub_1D27342FC(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey);
      v9 = sub_1D2877E78();
    }

    else
    {
      v9 = 0;
    }

    v10 = *(v0 + 56);
    v11 = *(v0 + 48);
    v12 = *(v0 + 24);
    v20 = *(v0 + 32);
    v21 = *(v0 + 40);
    [objc_opt_self() asyncSendSignal:v5 toChannel:v4 withNullableUniqueStringID:v7 withPayload:v9];

    v13 = sub_1D28785F8();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
    sub_1D27328D8(v12, v11, type metadata accessor for DetailView);
    sub_1D2870F78();
    v14 = sub_1D2878558();
    v15 = (*(v20 + 80) + 40) & ~*(v20 + 80);
    v16 = swift_allocObject();
    v17 = MEMORY[0x1E69E85E0];
    v16[2] = v14;
    v16[3] = v17;
    v16[4] = v22;
    sub_1D2733B20(v11, v16 + v15, type metadata accessor for DetailView);
    *(v16 + v15 + v21) = 0;
    sub_1D22AE01C(0, 0, v10, &unk_1D28A18D8, v16);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D272AA48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_1D2875718();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v33 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DetailView();
  v27 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v26 = v6;
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0FC8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v29 = &v26 - v8;
  v9 = type metadata accessor for DisplayableImage();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v26 - v13);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0E38);
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v16 = &v26 - v15;
  *v14 = a1;
  swift_storeEnumTagMultiPayload();
  sub_1D2870F78();
  sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v17 = qword_1ED8B0058;
  sub_1D2876668();
  *v11 = a1;
  swift_storeEnumTagMultiPayload();
  sub_1D27342FC(&qword_1EC6E0FD0, type metadata accessor for DisplayableImage);
  sub_1D2870F78();
  sub_1D2874788();
  v18 = v28;
  sub_1D27328D8(v31, v28, type metadata accessor for DetailView);
  v19 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v20 = (v26 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_1D2733B20(v18, v21 + v19, type metadata accessor for DetailView);
  *(v21 + v20) = a1;
  sub_1D2870F78();
  sub_1D2877A18();
  v22 = v33;
  sub_1D2875708();
  sub_1D22BB9D8(&unk_1EC6E0E40, &qword_1EC6E0E38);
  sub_1D27342FC(&qword_1ED89D6B0, MEMORY[0x1E697C4E8]);
  v23 = v32;
  v24 = v36;
  sub_1D2876768();
  (*(v35 + 8))(v22, v24);
  (*(v30 + 8))(v16, v23);
  sub_1D2875798();
}

uint64_t sub_1D272AFF8(char a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DetailView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  v13 = sub_1D28785F8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_1D27328D8(a2, v9, type metadata accessor for DetailView);
  sub_1D2878568();
  sub_1D2870F78();
  v14 = sub_1D2878558();
  v15 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  *(v16 + 16) = v14;
  *(v16 + 24) = v17;
  *(v16 + 32) = a1;
  *(v16 + 40) = a3;
  sub_1D2733B20(v9, v16 + v15, type metadata accessor for DetailView);
  sub_1D22AE01C(0, 0, v12, &unk_1D28A18D0, v16);
}

uint64_t sub_1D272B1F8()
{
  swift_getKeyPath();
  sub_1D27342FC(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    PlaygroundHomeViewModel.enterComposing()();
    return swift_unknownObjectRelease();
  }

  return result;
}

__n128 sub_1D272B2B0@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1D2873998();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = sub_1D28756A8();
  sub_1D25C2424(&v25);
  v7 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  v17[80] = 1;
  v17[72] = v28;
  if (qword_1EC6D8B60 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v2, qword_1EC6E3BC0);
  (*(v3 + 16))(v5, v12, v2);
  v13 = sub_1D2877108();
  *(v21.n128_u32 + 1) = *v19;
  v21.n128_u32[1] = *&v19[3];
  *(&v23 + 1) = *v18;
  DWORD1(v23) = *&v18[3];
  v20 = v6;
  v21.n128_u8[0] = 1;
  v21.n128_u64[1] = v7;
  *&v22 = v8;
  *(&v22 + 1) = v9;
  LOBYTE(v23) = v10;
  *(&v23 + 1) = v11;
  v24 = v13;
  v25 = v6;
  v26 = 0;
  LOBYTE(v27) = 1;
  *(&v27 + 1) = *v19;
  HIDWORD(v27) = *&v19[3];
  v28 = v7;
  v29 = v8;
  v30 = v9;
  v31 = v10;
  *v32 = *v18;
  *&v32[3] = *&v18[3];
  v33 = v11;
  v34 = v13;
  sub_1D22BD1D0(&v20, v17, &qword_1EC6E0F98);
  sub_1D22BD238(&v25, &qword_1EC6E0F98);
  v14 = v23;
  *(a1 + 32) = v22;
  *(a1 + 48) = v14;
  *(a1 + 64) = v24;
  result = v21;
  *a1 = v20;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D272B4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 328) = a6;
  *(v6 + 80) = a4;
  *(v6 + 88) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  *(v6 + 96) = swift_task_alloc();
  v7 = sub_1D2872428();
  *(v6 + 104) = v7;
  *(v6 + 112) = *(v7 - 8);
  *(v6 + 120) = swift_task_alloc();
  v8 = sub_1D2872278();
  *(v6 + 128) = v8;
  *(v6 + 136) = *(v8 - 8);
  *(v6 + 144) = swift_task_alloc();
  v9 = sub_1D2873CB8();
  *(v6 + 152) = v9;
  *(v6 + 160) = *(v9 - 8);
  *(v6 + 168) = swift_task_alloc();
  v10 = sub_1D2872438();
  *(v6 + 176) = v10;
  *(v6 + 184) = *(v10 - 8);
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  *(v6 + 208) = sub_1D2878568();
  *(v6 + 216) = sub_1D2878558();
  *(v6 + 224) = sub_1D2878558();
  v12 = sub_1D28784F8();
  *(v6 + 232) = v12;
  *(v6 + 240) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D272B72C, v12, v11);
}

uint64_t sub_1D272B72C()
{
  v1 = v0[10];
  swift_beginAccess();
  v2 = *(v1 + 80);
  v0[31] = v2;
  if (v2)
  {
    __swift_project_boxed_opaque_existential_1((v0[10] + 16), *(v0[10] + 40));
    v3 = v2;
    v4 = swift_task_alloc();
    v0[32] = v4;
    *v4 = v0;
    v4[1] = sub_1D272B89C;
    v5 = v0[25];

    return sub_1D23E4308(v5, v3);
  }

  else
  {

    sub_1D233F184();
    v7 = swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v0[38] = v7;
    v10 = sub_1D28784F8();

    return MEMORY[0x1EEE6DFA0](sub_1D272C18C, v10, v9);
  }
}

uint64_t sub_1D272B89C()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);
  if (v0)
  {
    v5 = sub_1D272C0FC;
  }

  else
  {
    v5 = sub_1D272B9D8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D272B9D8()
{
  v1 = v0[31];

  v3 = sub_1D28784F8();
  v0[34] = v3;
  v0[35] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D272BA6C, v3, v2);
}

uint64_t sub_1D272BA6C()
{
  v1 = **(v0 + 88);
  swift_getKeyPath();
  *(v0 + 72) = v1;
  sub_1D27342FC(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  *(v0 + 329) = *(v1 + 48);
  v2 = sub_1D23C6DDC();
  *(v0 + 330) = sub_1D2730C54(v2) & 1;

  v3 = sub_1D23C6DDC();
  *(v0 + 288) = v3;
  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  *v4 = v0;
  v4[1] = sub_1D272BBD8;
  v5 = *(v0 + 200);

  return sub_1D273113C(v3, v5);
}

uint64_t sub_1D272BBD8(char a1)
{
  v2 = *(*v1 + 288);
  *(*v1 + 331) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D272BCF4, 0, 0);
}

uint64_t sub_1D272BCF4()
{
  (*(*(v0 + 184) + 16))(*(v0 + 192), *(v0 + 200), *(v0 + 176));
  v1 = sub_1D28722E8();
  v2 = *(v1 + 16);
  if (v2)
  {
    v43 = 0;
    v41 = 0;
    v3 = 0;
    v4 = 0;
    v5 = *(v0 + 136);
    v6 = *(v0 + 112);
    v7 = *(v5 + 16);
    v5 += 16;
    v48 = v7;
    v8 = v1 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v46 = *(v5 + 56);
    v9 = (v5 + 72);
    v47 = *MEMORY[0x1E696E450];
    v45 = *MEMORY[0x1E696E468];
    v44 = *MEMORY[0x1E696E448];
    v42 = *MEMORY[0x1E696E460];
    v10 = (v5 - 8);
    v40 = *MEMORY[0x1E696E458];
    v38 = (v6 + 32);
    v39 = (v5 + 80);
    v37 = (v6 + 8);
    v11 = 6;
    do
    {
      v16 = *(v0 + 144);
      v17 = *(v0 + 128);
      v48(v16, v8, v17);
      v12 = (*v9)(v16, v17);
      if (v12 == v47)
      {
        v12 = (*v10)(*(v0 + 144), *(v0 + 128));
        v15 = __OFADD__(v3++, 1);
        if (v15)
        {
          __break(1u);
LABEL_30:
          __break(1u);
          return MEMORY[0x1EEE6DFA0](v12, v13, v14);
        }
      }

      else if (v12 == v45)
      {
        v15 = __OFADD__(v4++, 1);
        if (v15)
        {
          goto LABEL_30;
        }

        (*v10)(*(v0 + 144), *(v0 + 128));
      }

      else if (v12 == v44)
      {
        (*v10)(*(v0 + 144), *(v0 + 128));
        v43 = 1;
      }

      else if (v12 == v42)
      {
        (*v10)(*(v0 + 144), *(v0 + 128));
        v41 = 1;
      }

      else
      {
        v18 = *(v0 + 144);
        v19 = *(v0 + 128);
        if (v12 == v40)
        {
          v20 = *(v0 + 120);
          v21 = *(v0 + 96);
          v35 = *(v0 + 104);
          v36 = v20;
          (*v39)(v18, v19);
          (*v38)(v20, v18, v35);
          sub_1D2872418();
          sub_1D2871EA8();
          v22 = sub_1D2872008();
          (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
          v11 = sub_1D24198DC(v21);
          (*v37)(v36, v35);
        }

        else
        {
          (*v10)(*(v0 + 144), v19);
        }
      }

      v8 += v46;
      --v2;
    }

    while (v2);
    v23 = 0x1000000;
    if ((v43 & 1) == 0)
    {
      v23 = 0;
    }

    v49 = v23;
    if (v41)
    {
      v2 = 0x100000000;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v49 = 0;
    v3 = 0;
    v4 = 0;
    v11 = 6;
  }

  v24 = *(v0 + 331);
  v25 = *(v0 + 330);
  v26 = *(v0 + 329);
  v28 = *(v0 + 184);
  v27 = *(v0 + 192);
  v29 = *(v0 + 176);
  v30 = *(v0 + 328);
  v31 = *(v28 + 8);
  *(v0 + 312) = v31;
  *(v0 + 320) = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v31(v27, v29);

  v32 = 256;
  if (!v26)
  {
    v32 = 0;
  }

  v33 = 0x10000;
  if (!v25)
  {
    v33 = 0;
  }

  sub_1D279C458(v32 | v30 | (v24 << 40) | v33 | v49 | v2, v3, v4, v11);
  v13 = *(v0 + 272);
  v14 = *(v0 + 280);
  v12 = sub_1D272C3A4;

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D272C0FC()
{
  v1 = v0[31];

  v0[38] = v0[33];
  v3 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D272C18C, v3, v2);
}

uint64_t sub_1D272C18C()
{
  v20 = v0;
  v1 = *(v0 + 304);

  sub_1D28726F8();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 304);
    v6 = *(v0 + 160);
    v18 = *(v0 + 168);
    v7 = *(v0 + 152);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_1D2879748();
    v12 = sub_1D23D7C84(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1D226E000, v3, v4, "Failed to get recipe for asset with error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1D38A3520](v9, -1, -1);
    MEMORY[0x1D38A3520](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 160);
    v13 = *(v0 + 168);
    v15 = *(v0 + 152);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1D272C3A4()
{
  v1 = v0[39];
  v2 = v0[25];
  v3 = v0[22];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D272C46C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v30 = a1;
  v5 = type metadata accessor for DetailView();
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC998);
  v7 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v29 = &v28 - v8;
  v9 = sub_1D2875628();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3 + 40);
  LODWORD(v11) = *(v3 + 48);
  v32 = a2;
  if (v11 == 1)
  {
    v33 = v13;
    sub_1D2870F78();
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v14 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v10 + 8))(v12, v9);
  }

  swift_getKeyPath();
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v33 = off_1ED8A4930;
  sub_1D27342FC(&qword_1ED8A4920, type metadata accessor for DebugSettings);
  sub_1D28719E8();
  sub_1D2870F78();
  if (!os_variant_has_internal_ui())
  {

    goto LABEL_12;
  }

  sub_1D22BCFD0(0, &qword_1ED89CDA0);
  v15 = sub_1D2878A58();
  v16 = sub_1D2878068();
  v17 = [v15 BOOLForKey_];

  if ((v17 & 1) == 0)
  {
LABEL_12:
    v26 = 1;
    v24 = v31;
    v25 = v32;
    return (*(v7 + 56))(v25, v26, 1, v24);
  }

  sub_1D27328D8(v3, &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DetailView);
  v18 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v19 = swift_allocObject();
  sub_1D2733B20(&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for DetailView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8);
  sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8);
  v20 = v29;
  sub_1D2877368();
  sub_1D2875798();

  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v21 = v32;
  v22 = v20;
  v23 = v31;
  (*(v7 + 32))(v32, v22, v31);
  v24 = v23;
  v25 = v21;
  v26 = 0;
  return (*(v7 + 56))(v25, v26, 1, v24);
}

uint64_t sub_1D272C9B4()
{
  v0 = sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    v0 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v0);
  sub_1D22BCFD0(0, &qword_1EC6D74E0);
  swift_getKeyPath();
  sub_1D22BB9D8(&qword_1EC6DAE20, &unk_1EC6DE550);
  sub_1D28719E8();

  MEMORY[0x1EEE9AC00](v1);
  MEMORY[0x1EEE9AC00](v2);
  sub_1D2877248();
}

uint64_t sub_1D272CC38(uint64_t a1)
{
  v2 = type metadata accessor for DetailView();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D27328D8(a1, v4, type metadata accessor for DetailView);
  v5 = *v4;
  swift_getKeyPath();
  v7[1] = v5;
  sub_1D27342FC(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1D256B210(v5);
    swift_unknownObjectRelease();
  }

  sub_1D2714110();
  return sub_1D27339A4(v4, type metadata accessor for DetailView);
}

uint64_t sub_1D272CD80()
{
  v0 = sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    v3 = v0;
    swift_once();
    v0 = v3;
  }

  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v1);
  sub_1D2877248();
}

uint64_t sub_1D272CEF0(uint64_t a1)
{
  v59 = a1;
  v1 = sub_1D2877B38();
  v57 = *(v1 - 8);
  v58 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v56 = (v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v55 = v43 - v4;
  v5 = sub_1D2877BA8();
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v51 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v52 = v43 - v8;
  v9 = sub_1D2877B48();
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v47 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1D2877B68();
  v46 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v45 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DetailView();
  v13 = v12 - 8;
  v43[0] = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v43[1] = v14;
  v44 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D2878AF8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D22BCFD0(0, &unk_1ED89CD20);
  sub_1D22BCFD0(0, &qword_1ED89CD50);
  v19 = sub_1D2878AB8();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1D27342FC(&unk_1ED89CD30, MEMORY[0x1E69E80B0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E10E0);
  v20 = v59;
  sub_1D22BB9D8(&qword_1ED89CE70, &unk_1EC6E10E0);
  sub_1D2879088();
  v21 = sub_1D2878B08();

  (*(v16 + 8))(v18, v15);
  v22 = (v20 + *(v13 + 80));
  v24 = v22[1];
  aBlock = *v22;
  v23 = aBlock;
  v61 = v24;
  v66 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E10D0);
  sub_1D2877318();
  aBlock = v23;
  v61 = v24;
  result = sub_1D2877308();
  if (v66)
  {
    ObjectType = swift_getObjectType();
    v27 = v20;
    v28 = v44;
    sub_1D27328D8(v27, v44, type metadata accessor for DetailView);
    v29 = (*(v43[0] + 80) + 16) & ~*(v43[0] + 80);
    v30 = swift_allocObject();
    sub_1D2733B20(v28, v30 + v29, type metadata accessor for DetailView);
    v64 = sub_1D27338F8;
    v65 = v30;
    aBlock = MEMORY[0x1E69E9820];
    v61 = 1107296256;
    v62 = sub_1D23DFBA8;
    v63 = &block_descriptor_39;
    v31 = _Block_copy(&aBlock);
    v32 = v45;
    sub_1D27A17E4();
    v33 = v47;
    sub_1D27A17E8();
    sub_1D2878B78();
    _Block_release(v31);
    (*(v49 + 8))(v33, v50);
    (*(v46 + 8))(v32, v48);

    v34 = v51;
    sub_1D2877B88();
    v35 = v52;
    sub_1D2877BC8();
    v36 = v54;
    v37 = *(v53 + 8);
    v37(v34, v54);
    v38 = v55;
    sub_1D27A194C(v55);
    v39 = v56;
    sub_1D27A18D4(v56);
    MEMORY[0x1D38A16E0](v35, v38, v39, ObjectType);
    v40 = *(v57 + 8);
    v41 = v39;
    v42 = v58;
    v40(v41, v58);
    v40(v38, v42);
    v37(v35, v36);
    sub_1D2878B98();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D272D60C()
{
  sub_1D23C7998();
  v0 = sub_1D27162D8();
  sub_1D24038A0(v0, 1);
}

uint64_t sub_1D272D674()
{
  type metadata accessor for DetailView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E10D0);
  result = sub_1D2877308();
  if (v1)
  {
    swift_getObjectType();
    sub_1D2878B88();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D272D6EC@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D27342FC(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(*v4 + 160);
    v6 = sub_1D2871818();
    v7 = *(v6 - 8);
    (*(v7 + 16))(a2, v4 + v5, v6);
    return (*(v7 + 56))(a2, 0, 1, v6);
  }

  else
  {
    v9 = sub_1D2871818();
    return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }
}

uint64_t sub_1D272D880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  swift_getKeyPath();
  v9[5] = v5;
  sub_1D27342FC(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  v6 = *(v5 + 24);
  v9[2] = a1;
  sub_1D2870F68();
  v7 = sub_1D274BD34(sub_1D2734344, v9, v6);

  return sub_1D2711A34(v7);
}

uint64_t *sub_1D272D96C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v172 = a3;
  v173 = a2;
  LODWORD(v183) = a1;
  v182 = a4;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0F30);
  MEMORY[0x1EEE9AC00](v156);
  v157 = (&v125 - v4);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0ED0);
  MEMORY[0x1EEE9AC00](v171);
  v159 = &v125 - v5;
  v155 = sub_1D2876118();
  v140 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v139 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0EF0);
  v136 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v135 = &v125 - v7;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0ED8);
  MEMORY[0x1EEE9AC00](v154);
  v138 = &v125 - v8;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0F38);
  v142 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v141 = &v125 - v9;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0F40);
  v130 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v129 = &v125 - v10;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0F48);
  MEMORY[0x1EEE9AC00](v167);
  v169 = &v125 - v11;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0F50);
  MEMORY[0x1EEE9AC00](v146);
  v147 = &v125 - v12;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0E88);
  MEMORY[0x1EEE9AC00](v168);
  v149 = &v125 - v13;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0E78);
  MEMORY[0x1EEE9AC00](v178);
  v170 = &v125 - v14;
  v15 = type metadata accessor for DetailView();
  v151 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v152 = v16;
  v153 = &v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC998);
  v132 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v131 = &v125 - v17;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0F58);
  v134 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v133 = &v125 - v18;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE810);
  MEMORY[0x1EEE9AC00](v144);
  v166 = &v125 - v19;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0F60);
  MEMORY[0x1EEE9AC00](v165);
  v143 = &v125 - v20;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0E58);
  MEMORY[0x1EEE9AC00](v161);
  v145 = &v125 - v21;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0F68);
  v163 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v23 = &v125 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0F70);
  v162 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v125 - v25;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0F78);
  MEMORY[0x1EEE9AC00](v180);
  v181 = &v125 - v27;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0F80);
  MEMORY[0x1EEE9AC00](v174);
  v176 = &v125 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0F88);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v125 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0F90);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v125 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0E08);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v125 - v36;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DF8);
  MEMORY[0x1EEE9AC00](v175);
  v39 = &v125 - v38;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DE8);
  MEMORY[0x1EEE9AC00](v179);
  v177 = &v125 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0E18);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v125 - v43;
  v45 = v183;
  if (v183 <= 3u)
  {
    v53 = v26;
    v54 = v162;
    v55 = v23;
    v56 = v163;
    v171 = v29;
    v128 = v35;
    v183 = v31;
    v170 = v39;
    if (v45 > 1)
    {
      result = v172;
      if (v45 != 2)
      {
        v111 = v170;
        if (v172)
        {
          v112 = v166;
          sub_1D272C46C(v172, v166);
          sub_1D22BD1D0(v112, v143, &qword_1EC6DE810);
          swift_storeEnumTagMultiPayload();
          v113 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE6C0);
          v114 = sub_1D22BB9D8(&qword_1ED89D130, &qword_1EC6DC998);
          v115 = sub_1D22BB9D8(&qword_1ED89D158, &qword_1EC6DE6C0);
          v184 = v160;
          v185 = v113;
          v186 = v114;
          v187 = v115;
          swift_getOpaqueTypeConformance2();
          sub_1D25E9F54();
          v116 = v145;
          sub_1D2875AF8();
          sub_1D22BD1D0(v116, v183, &qword_1EC6E0E58);
          swift_storeEnumTagMultiPayload();
          sub_1D2731A04();
          sub_1D2731D6C();
          sub_1D2875AF8();
          sub_1D22BD238(v116, &qword_1EC6E0E58);
          sub_1D22BD1D0(v111, v176, &qword_1EC6E0DF8);
          swift_storeEnumTagMultiPayload();
          sub_1D2731978();
          sub_1D2731EBC();
          v117 = v177;
          sub_1D2875AF8();
          sub_1D22BD238(v111, &qword_1EC6E0DF8);
          sub_1D22BD1D0(v117, v181, &qword_1EC6E0DE8);
          swift_storeEnumTagMultiPayload();
          sub_1D27318EC();
          sub_1D2875AF8();
          sub_1D22BD238(v117, &qword_1EC6E0DE8);
          return sub_1D22BD238(v112, &qword_1EC6DE810);
        }

        goto LABEL_29;
      }

      v67 = v170;
      if (v172)
      {
        v68 = v164;
        v69 = v55;
        v126 = v55;
        sub_1D2729C00(v172, v55);
        (*(v56 + 16))(v143, v69, v68);
        swift_storeEnumTagMultiPayload();
        v70 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE6C0);
        v71 = sub_1D22BB9D8(&qword_1ED89D130, &qword_1EC6DC998);
        v72 = sub_1D22BB9D8(&qword_1ED89D158, &qword_1EC6DE6C0);
        v184 = v160;
        v185 = v70;
        v186 = v71;
        v187 = v72;
        swift_getOpaqueTypeConformance2();
        sub_1D25E9F54();
        v73 = v145;
        sub_1D2875AF8();
        v74 = v68;
        sub_1D22BD1D0(v73, v183, &qword_1EC6E0E58);
        swift_storeEnumTagMultiPayload();
        sub_1D2731A04();
        sub_1D2731D6C();
        sub_1D2875AF8();
        sub_1D22BD238(v73, &qword_1EC6E0E58);
        sub_1D22BD1D0(v67, v176, &qword_1EC6E0DF8);
        swift_storeEnumTagMultiPayload();
        sub_1D2731978();
        sub_1D2731EBC();
        v75 = v177;
        sub_1D2875AF8();
        sub_1D22BD238(v67, &qword_1EC6E0DF8);
        sub_1D22BD1D0(v75, v181, &qword_1EC6E0DE8);
        swift_storeEnumTagMultiPayload();
        sub_1D27318EC();
        sub_1D2875AF8();
        sub_1D22BD238(v75, &qword_1EC6E0DE8);
        return (*(v56 + 8))(v126, v74);
      }
    }

    else
    {
      v57 = v34;
      v169 = v42;
      result = v172;
      v58 = v183;
      if (v45)
      {
        if (v172)
        {
          v102 = v37;
          v103 = v57;
          v104 = v53;
          v127 = v53;
          sub_1D272AA48(v172, v53);
          (*(v54 + 16))(v103, v104, v24);
          swift_storeEnumTagMultiPayload();
          sub_1D2731B50();
          v105 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0E38);
          v106 = sub_1D2875718();
          v107 = sub_1D22BB9D8(&unk_1EC6E0E40, &qword_1EC6E0E38);
          v108 = sub_1D27342FC(&qword_1ED89D6B0, MEMORY[0x1E697C4E8]);
          v184 = v105;
          v185 = v106;
          v186 = v107;
          v187 = v108;
          swift_getOpaqueTypeConformance2();
          sub_1D2875AF8();
          sub_1D22BD1D0(v102, v58, &qword_1EC6E0E08);
          swift_storeEnumTagMultiPayload();
          sub_1D2731A04();
          sub_1D2731D6C();
          v109 = v170;
          sub_1D2875AF8();
          sub_1D22BD238(v102, &qword_1EC6E0E08);
          sub_1D22BD1D0(v109, v176, &qword_1EC6E0DF8);
          swift_storeEnumTagMultiPayload();
          sub_1D2731978();
          sub_1D2731EBC();
          v110 = v177;
          sub_1D2875AF8();
          sub_1D22BD238(v109, &qword_1EC6E0DF8);
          sub_1D22BD1D0(v110, v181, &qword_1EC6E0DE8);
          swift_storeEnumTagMultiPayload();
          sub_1D27318EC();
          sub_1D2875AF8();
          sub_1D22BD238(v110, &qword_1EC6E0DE8);
          return (*(v54 + 8))(v127, v24);
        }

        goto LABEL_28;
      }

      if (v172)
      {
        v59 = v37;
        v60 = v44;
        sub_1D2728310(v172, v44);
        sub_1D22BD1D0(v60, v34, &qword_1EC6E0E18);
        swift_storeEnumTagMultiPayload();
        sub_1D2731B50();
        v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0E38);
        v62 = sub_1D2875718();
        v63 = sub_1D22BB9D8(&unk_1EC6E0E40, &qword_1EC6E0E38);
        v64 = sub_1D27342FC(&qword_1ED89D6B0, MEMORY[0x1E697C4E8]);
        v184 = v61;
        v185 = v62;
        v186 = v63;
        v187 = v64;
        swift_getOpaqueTypeConformance2();
        sub_1D2875AF8();
        sub_1D22BD1D0(v59, v183, &qword_1EC6E0E08);
        swift_storeEnumTagMultiPayload();
        sub_1D2731A04();
        sub_1D2731D6C();
        v65 = v170;
        sub_1D2875AF8();
        sub_1D22BD238(v59, &qword_1EC6E0E08);
        sub_1D22BD1D0(v65, v176, &qword_1EC6E0DF8);
        swift_storeEnumTagMultiPayload();
        sub_1D2731978();
        sub_1D2731EBC();
        v66 = v177;
        sub_1D2875AF8();
        sub_1D22BD238(v65, &qword_1EC6E0DF8);
        sub_1D22BD1D0(v66, v181, &qword_1EC6E0DE8);
        swift_storeEnumTagMultiPayload();
        sub_1D27318EC();
        sub_1D2875AF8();
        sub_1D22BD238(v66, &qword_1EC6E0DE8);
        return sub_1D22BD238(v60, &qword_1EC6E0E18);
      }

      __break(1u);
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v183 <= 5u)
  {
    if (v183 == 4)
    {
      v76 = v153;
      sub_1D27328D8(v173, v153, type metadata accessor for DetailView);
      v77 = (*(v151 + 80) + 16) & ~*(v151 + 80);
      v78 = swift_allocObject();
      sub_1D2733B20(v76, v78 + v77, type metadata accessor for DetailView);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8);
      sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8);
      v79 = v131;
      sub_1D2877368();
      sub_1D2876438();
      v80 = sub_1D22BB9D8(&qword_1ED89D130, &qword_1EC6DC998);
      v81 = v133;
      v82 = v160;
      sub_1D2876758();
      (*(v132 + 8))(v79, v82);
      v83 = v134;
      v84 = v148;
      (*(v134 + 16))(v147, v81, v148);
      swift_storeEnumTagMultiPayload();
      v184 = v82;
      v185 = v80;
      swift_getOpaqueTypeConformance2();
      v85 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0E90);
      v86 = sub_1D2874E58();
      v87 = sub_1D27320D0();
      v88 = sub_1D27342FC(&qword_1EC6E0EC0, MEMORY[0x1E697C150]);
      v184 = v85;
      v185 = v86;
      v186 = v87;
      v187 = v88;
      swift_getOpaqueTypeConformance2();
      v89 = v149;
LABEL_23:
      sub_1D2875AF8();
      v101 = &qword_1EC6E0E88;
      sub_1D22BD1D0(v89, v169, &qword_1EC6E0E88);
      goto LABEL_24;
    }

    result = v172;
    if (v172)
    {
      v81 = v129;
      sub_1D2729684(v172, v129);
      v83 = v130;
      v84 = v150;
      (*(v130 + 16))(v147, v81, v150);
      swift_storeEnumTagMultiPayload();
      v118 = sub_1D22BB9D8(&qword_1ED89D130, &qword_1EC6DC998);
      v184 = v160;
      v185 = v118;
      swift_getOpaqueTypeConformance2();
      v119 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0E90);
      v120 = sub_1D2874E58();
      v121 = sub_1D27320D0();
      v122 = sub_1D27342FC(&qword_1EC6E0EC0, MEMORY[0x1E697C150]);
      v184 = v119;
      v185 = v120;
      v186 = v121;
      v187 = v122;
      swift_getOpaqueTypeConformance2();
      v89 = v149;
      goto LABEL_23;
    }

LABEL_30:
    __break(1u);
    return result;
  }

  if (v183 == 6)
  {
    v90 = v153;
    sub_1D27328D8(v173, v153, type metadata accessor for DetailView);
    v91 = (*(v151 + 80) + 16) & ~*(v151 + 80);
    v92 = swift_allocObject();
    sub_1D2733B20(v90, v92 + v91, type metadata accessor for DetailView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0F98);
    sub_1D2732584();
    v93 = v135;
    sub_1D2877368();
    sub_1D22BB9D8(&qword_1EC6E0EE8, &qword_1EC6E0EF0);
    v94 = v138;
    v95 = v137;
    sub_1D2876CC8();
    (*(v136 + 8))(v93, v95);
    v96 = v139;
    sub_1D2876108();
    v97 = sub_1D27322CC();
    v98 = sub_1D27342FC(&qword_1EC6D77B0, MEMORY[0x1E697CB70]);
    v81 = v141;
    v99 = v154;
    v100 = v155;
    sub_1D28767A8();
    (*(v140 + 8))(v96, v100);
    sub_1D22BD238(v94, &qword_1EC6E0ED8);
    v83 = v142;
    v84 = v158;
    (*(v142 + 16))(v157, v81, v158);
    swift_storeEnumTagMultiPayload();
    v184 = v99;
    v185 = v100;
    v186 = v97;
    v187 = v98;
    swift_getOpaqueTypeConformance2();
    v89 = v159;
    sub_1D2875AF8();
    v101 = &qword_1EC6E0ED0;
    sub_1D22BD1D0(v89, v169, &qword_1EC6E0ED0);
LABEL_24:
    swift_storeEnumTagMultiPayload();
    sub_1D2731F48();
    sub_1D27321B4();
    v123 = v170;
    sub_1D2875AF8();
    sub_1D22BD238(v89, v101);
    sub_1D22BD1D0(v123, v176, &qword_1EC6E0E78);
    swift_storeEnumTagMultiPayload();
    sub_1D2731978();
    sub_1D2731EBC();
    v124 = v177;
    sub_1D2875AF8();
    sub_1D22BD238(v123, &qword_1EC6E0E78);
    sub_1D22BD1D0(v124, v181, &qword_1EC6E0DE8);
    swift_storeEnumTagMultiPayload();
    sub_1D27318EC();
    sub_1D2875AF8();
    sub_1D22BD238(v124, &qword_1EC6E0DE8);
    return (*(v83 + 8))(v81, v84);
  }

  if (v183 == 7)
  {
    v46 = v157;
    *v157 = 0;
    *(v46 + 8) = 1;
    swift_storeEnumTagMultiPayload();
    v47 = sub_1D27322CC();
    v48 = sub_1D27342FC(&qword_1EC6D77B0, MEMORY[0x1E697CB70]);
    v184 = v154;
    v185 = v155;
    v186 = v47;
    v187 = v48;
    swift_getOpaqueTypeConformance2();
    v49 = v159;
    sub_1D2875AF8();
    sub_1D22BD1D0(v49, v169, &qword_1EC6E0ED0);
    swift_storeEnumTagMultiPayload();
    sub_1D2731F48();
    sub_1D27321B4();
    v50 = v170;
    sub_1D2875AF8();
    sub_1D22BD238(v49, &qword_1EC6E0ED0);
    sub_1D22BD1D0(v50, v176, &qword_1EC6E0E78);
    swift_storeEnumTagMultiPayload();
    sub_1D2731978();
    sub_1D2731EBC();
    v51 = v177;
    sub_1D2875AF8();
    sub_1D22BD238(v50, &qword_1EC6E0E78);
    sub_1D22BD1D0(v51, v181, &qword_1EC6E0DE8);
    swift_storeEnumTagMultiPayload();
    sub_1D27318EC();
    sub_1D2875AF8();
    return sub_1D22BD238(v51, &qword_1EC6E0DE8);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1D27318EC();
    return sub_1D2875AF8();
  }
}

void (*FocusedValues.detailViewActions.modify(uint64_t *a1))(__int128 **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1F0uLL);
  }

  *a1 = v3;
  *(v3 + 480) = v1;
  *(v3 + 488) = sub_1D271FAAC();
  sub_1D28749B8();
  return sub_1D272FBB0;
}

void sub_1D272FBB0(__int128 **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[2];
    v4 = v2[3];
    v2[14] = v3;
    v2[15] = v4;
    v5 = v2[4];
    v6 = v2[5];
    v2[16] = v5;
    v2[17] = v6;
    v7 = *v2;
    v8 = v2[1];
    v2[12] = *v2;
    v2[13] = v8;
    v2[18] = v7;
    v2[19] = v8;
    v2[22] = v5;
    v2[23] = v6;
    v2[20] = v3;
    v2[21] = v4;
    sub_1D22BD1D0((v2 + 12), (v2 + 24), &unk_1EC6E0C18);
    sub_1D28749C8();
    v9 = v2[3];
    v2[8] = v2[2];
    v2[9] = v9;
    v10 = v2[5];
    v2[10] = v2[4];
    v2[11] = v10;
    v11 = v2[1];
    v2[6] = *v2;
    v2[7] = v11;
    sub_1D22BD238((v2 + 6), &unk_1EC6E0C18);
  }

  else
  {
    v12 = v2[3];
    v2[8] = v2[2];
    v2[9] = v12;
    v13 = v2[5];
    v2[10] = v2[4];
    v2[11] = v13;
    v14 = v2[1];
    v2[6] = *v2;
    v2[7] = v14;
    sub_1D28749C8();
  }

  free(v2);
}

uint64_t DetailViewActions.close.getter()
{
  v1 = *v0;
  sub_1D2870F78();
  return v1;
}

uint64_t DetailViewActions.edit.getter()
{
  v1 = *(v0 + 16);
  sub_1D2870F78();
  return v1;
}

uint64_t DetailViewActions.addCaption.getter()
{
  v1 = *(v0 + 32);
  sub_1D2870F78();
  return v1;
}

uint64_t DetailViewActions.reportAConcern.getter()
{
  v1 = *(v0 + 48);
  sub_1D2870F78();
  return v1;
}

uint64_t DetailViewActions.duplicate.getter()
{
  v1 = *(v0 + 64);
  sub_1D2870F78();
  return v1;
}

uint64_t DetailViewActions.share.getter()
{
  v1 = *(v0 + 80);
  sub_1D22A58B8(v1);
  return v1;
}

uint64_t type metadata accessor for DetailView()
{
  result = qword_1EC6D8A20;
  if (!qword_1EC6D8A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D272FE70()
{
  type metadata accessor for DetailViewModel();
  if (v0 <= 0x3F)
  {
    sub_1D273014C(319, &qword_1ED89D190, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1D27300F8(319, &qword_1ED89E028, type metadata accessor for ObservableDebugSettings);
      if (v2 <= 0x3F)
      {
        sub_1D273019C(319, &qword_1ED89DFC0, &qword_1EC6D99B8, &unk_1D287E890, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1D27300F8(319, &qword_1ED89E020, type metadata accessor for HomeAnimationCoordinator);
          if (v4 <= 0x3F)
          {
            sub_1D273014C(319, &qword_1ED89E040, &type metadata for CreationViewStyle, MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              sub_1D273014C(319, &qword_1ED89E060, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DCC0]);
              if (v6 <= 0x3F)
              {
                sub_1D273014C(319, &qword_1ED89D180, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
                if (v7 <= 0x3F)
                {
                  sub_1D24C9A34();
                  if (v8 <= 0x3F)
                  {
                    sub_1D273019C(319, &qword_1EC6D7708, &qword_1EC6DEA20, &unk_1D2896F10, MEMORY[0x1E6981790]);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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
}

void sub_1D27300F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D28744A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D273014C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D273019C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D273022C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DetailView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_1D272D6EC(v4, a1);
}

uint64_t sub_1D27302A0(uint64_t a1)
{
  v3 = *(type metadata accessor for DetailView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_1D272D880(a1, v4, v5, v6);
}

uint64_t sub_1D2730314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DetailView() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1D271D15C(a1, v6, a2);
}

uint64_t sub_1D2730394@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DetailView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1D271D964(v4, a1);
}

unint64_t sub_1D2730404()
{
  result = qword_1EC6E0CC8;
  if (!qword_1EC6E0CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0CC0);
    sub_1D27342FC(&qword_1EC6E0CD0, type metadata accessor for ImageDescriptionView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0CC8);
  }

  return result;
}

void sub_1D27304B8(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for DetailView() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_1D271DC90(a1, a2, v6);
}

uint64_t sub_1D2730568(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for DetailView() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1D271F690(a1, a2, v6);
}

unint64_t sub_1D27305E8()
{
  result = qword_1EC6E0CE0;
  if (!qword_1EC6E0CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0C58);
    sub_1D2730674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0CE0);
  }

  return result;
}

unint64_t sub_1D2730674()
{
  result = qword_1EC6E0CE8;
  if (!qword_1EC6E0CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0C50);
    sub_1D2730700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0CE8);
  }

  return result;
}

unint64_t sub_1D2730700()
{
  result = qword_1EC6E0CF0;
  if (!qword_1EC6E0CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0C48);
    sub_1D273078C();
    sub_1D25CC4EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0CF0);
  }

  return result;
}

unint64_t sub_1D273078C()
{
  result = qword_1EC6E0CF8;
  if (!qword_1EC6E0CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0C40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0C38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0C30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0CC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0C28);
    sub_1D22BB9D8(&unk_1EC6E0CB0, &qword_1EC6E0C28);
    swift_getOpaqueTypeConformance2();
    sub_1D2730404();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1EC6E0D00, &unk_1EC6E0D08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0CF8);
  }

  return result;
}

unint64_t sub_1D2730974()
{
  result = qword_1EC6E0D18;
  if (!qword_1EC6E0D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0CD8);
    sub_1D22BB9D8(qword_1ED8A4DB0, &unk_1EC6DE550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0D18);
  }

  return result;
}

unint64_t sub_1D2730A24()
{
  result = qword_1EC6E0D20;
  if (!qword_1EC6E0D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0C68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0C58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0CD8);
    sub_1D27305E8();
    sub_1D2730974();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0D20);
  }

  return result;
}

uint64_t sub_1D2730BAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1060);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D22BD1D0(a1, &v5 - v3, &unk_1EC6E1060);
  return sub_1D28754B8();
}

uint64_t sub_1D2730C54(uint64_t a1)
{
  v34 = a1;
  v31 = type metadata accessor for CharacterAsset();
  v35 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v36 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1D2872278();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D28722C8();
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D28722E8();
  v9 = result;
  v10 = *(result + 16);
  if (v10)
  {
    v11 = 0;
    v12 = *MEMORY[0x1E696E460];
    while (1)
    {
      if (v11 >= *(v9 + 16))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        return result;
      }

      (*(v3 + 16))(v5, v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, v2);
      if ((*(v3 + 88))(v5, v2) == v12)
      {
        break;
      }

      ++v11;
      result = (*(v3 + 8))(v5, v2);
      if (v10 == v11)
      {
        goto LABEL_6;
      }
    }

    (*(v3 + 96))(v5, v2);
    (*(v32 + 32))(v37, v5, v33);
    result = sub_1D255873C();
    v14 = result;
    v15 = 0;
    v34 = *(result + 16);
    v16 = v31;
    v17 = v36;
    do
    {
      v13 = v34 != v15;
      if (v34 == v15)
      {
        break;
      }

      if (v15 >= *(v14 + 16))
      {
        goto LABEL_26;
      }

      sub_1D27328D8(v14 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v15, v17, type metadata accessor for CharacterAsset);
      v40 = 0;
      v41 = 0xE000000000000000;
      if (*(v17 + *(v16 + 24)) == 3)
      {
        v19 = 0x6669636570736E75;
        v20 = 0xEB00000000646569;
      }

      else
      {
        v19 = sub_1D2873768();
        v20 = v21;
      }

      type metadata accessor for CharacterRecipe();
      v22 = _s23ImagePlaygroundInternal0A16GenerationPersonV8SkinToneV2idSSvg_0();
      v24 = v23;
      v38 = v19;
      v39 = v20;
      sub_1D2870F68();
      MEMORY[0x1D38A0C50](v22, v24);

      MEMORY[0x1D38A0C50](v38, v39);

      MEMORY[0x1D38A0C50](45, 0xE100000000000000);
      v17 = v36;
      if (v36[*(v16 + 28)])
      {
        v25 = 1702195828;
      }

      else
      {
        v25 = 0x65736C6166;
      }

      if (v36[*(v16 + 28)])
      {
        v26 = 0xE400000000000000;
      }

      else
      {
        v26 = 0xE500000000000000;
      }

      MEMORY[0x1D38A0C50](v25, v26);

      v28 = v40;
      v27 = v41;
      if (v28 == sub_1D28722B8() && v27 == v29)
      {

        sub_1D27339A4(v17, type metadata accessor for CharacterAsset);
        break;
      }

      v18 = sub_1D2879618();

      result = sub_1D27339A4(v17, type metadata accessor for CharacterAsset);
      ++v15;
    }

    while ((v18 & 1) == 0);
    (*(v32 + 8))(v37, v33);
  }

  else
  {
LABEL_6:

    return 0;
  }

  return v13;
}

uint64_t sub_1D273113C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1D2872278();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_1D28722C8();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  sub_1D2878568();
  v2[10] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v2[11] = v6;
  v2[12] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D273128C, v6, v5);
}

uint64_t sub_1D273128C()
{
  result = sub_1D28722E8();
  v2 = result;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v0[5];
    v6 = *MEMORY[0x1E696E460];
    while (1)
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
        return result;
      }

      v7 = v0[6];
      v8 = v0[4];
      (*(v5 + 16))(v7, v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v4, v8);
      if ((*(v5 + 88))(v7, v8) == v6)
      {
        break;
      }

      ++v4;
      result = (*(v5 + 8))(v0[6], v0[4]);
      if (v3 == v4)
      {
        goto LABEL_6;
      }
    }

    v11 = v0[8];
    v10 = v0[9];
    v13 = v0[6];
    v12 = v0[7];
    v14 = v0[4];
    v15 = v0[5];

    (*(v15 + 96))(v13, v14);
    (*(v11 + 32))(v10, v13, v12);
    v16 = sub_1D28722B8();
    v18 = v17;
    v0[13] = v17;
    v19 = swift_task_alloc();
    v0[14] = v19;
    *v19 = v0;
    v19[1] = sub_1D27314D4;

    return sub_1D2560400(v16, v18);
  }

  else
  {
LABEL_6:

    v9 = v0[1];

    return v9(2);
  }
}

uint64_t sub_1D27314D4(char a1)
{
  v2 = *v1;
  *(*v1 + 120) = a1;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1D2731620, v4, v3);
}

uint64_t sub_1D2731620()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);

  (*(v4 + 8))(v2, v3);

  v5 = *(v0 + 8);

  return v5(v1);
}

uint64_t sub_1D27316F0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for DetailView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_1D273178C()
{
  result = qword_1EC6E0D48;
  if (!qword_1EC6E0D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0D40);
    sub_1D22BB9D8(&qword_1EC6E0D50, &qword_1EC6E0D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0D48);
  }

  return result;
}

unint64_t sub_1D2731860()
{
  result = qword_1EC6E0DD8;
  if (!qword_1EC6E0DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0DD0);
    sub_1D27318EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0DD8);
  }

  return result;
}

unint64_t sub_1D27318EC()
{
  result = qword_1EC6E0DE0;
  if (!qword_1EC6E0DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0DE8);
    sub_1D2731978();
    sub_1D2731EBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0DE0);
  }

  return result;
}

unint64_t sub_1D2731978()
{
  result = qword_1EC6E0DF0;
  if (!qword_1EC6E0DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0DF8);
    sub_1D2731A04();
    sub_1D2731D6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0DF0);
  }

  return result;
}

unint64_t sub_1D2731A04()
{
  result = qword_1EC6E0E00;
  if (!qword_1EC6E0E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0E08);
    sub_1D2731B50();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0E38);
    sub_1D2875718();
    sub_1D22BB9D8(&unk_1EC6E0E40, &qword_1EC6E0E38);
    sub_1D27342FC(&qword_1ED89D6B0, MEMORY[0x1E697C4E8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0E00);
  }

  return result;
}

unint64_t sub_1D2731B50()
{
  result = qword_1EC6E0E10;
  if (!qword_1EC6E0E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0E18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6E0E20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC998);
    sub_1D28756D8();
    sub_1D22BB9D8(&qword_1ED89D130, &qword_1EC6DC998);
    sub_1D27342FC(&qword_1EC6D7920, MEMORY[0x1E697C4D0]);
    swift_getOpaqueTypeConformance2();
    sub_1D2731D18();
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&unk_1ED89D2A0, &qword_1EC6DEB70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0E10);
  }

  return result;
}

unint64_t sub_1D2731D18()
{
  result = qword_1EC6E0E30;
  if (!qword_1EC6E0E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0E30);
  }

  return result;
}

unint64_t sub_1D2731D6C()
{
  result = qword_1EC6E0E50;
  if (!qword_1EC6E0E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0E58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC998);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE6C0);
    sub_1D22BB9D8(&qword_1ED89D130, &qword_1EC6DC998);
    sub_1D22BB9D8(&qword_1ED89D158, &qword_1EC6DE6C0);
    swift_getOpaqueTypeConformance2();
    sub_1D25E9F54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0E50);
  }

  return result;
}

unint64_t sub_1D2731EBC()
{
  result = qword_1EC6E0E70;
  if (!qword_1EC6E0E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0E78);
    sub_1D2731F48();
    sub_1D27321B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0E70);
  }

  return result;
}

unint64_t sub_1D2731F48()
{
  result = qword_1EC6E0E80;
  if (!qword_1EC6E0E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0E88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC998);
    sub_1D22BB9D8(&qword_1ED89D130, &qword_1EC6DC998);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0E90);
    sub_1D2874E58();
    sub_1D27320D0();
    sub_1D27342FC(&qword_1EC6E0EC0, MEMORY[0x1E697C150]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0E80);
  }

  return result;
}

unint64_t sub_1D27320D0()
{
  result = qword_1EC6E0E98;
  if (!qword_1EC6E0E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0E90);
    sub_1D22BB9D8(&qword_1EC6E0EA0, &qword_1EC6E0EA8);
    sub_1D22BB9D8(&unk_1EC6E0EB0, &qword_1EC6DAF10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0E98);
  }

  return result;
}

unint64_t sub_1D27321B4()
{
  result = qword_1EC6E0EC8;
  if (!qword_1EC6E0EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0ED0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0ED8);
    sub_1D2876118();
    sub_1D27322CC();
    sub_1D27342FC(&qword_1EC6D77B0, MEMORY[0x1E697CB70]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0EC8);
  }

  return result;
}

unint64_t sub_1D27322CC()
{
  result = qword_1EC6E0EE0;
  if (!qword_1EC6E0EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0ED8);
    sub_1D22BB9D8(&qword_1EC6E0EE8, &qword_1EC6E0EF0);
    sub_1D27342FC(&qword_1ED89D2B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0EE0);
  }

  return result;
}

unint64_t sub_1D27323B4()
{
  result = qword_1EC6E0F10;
  if (!qword_1EC6E0F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0F08);
    sub_1D2874B88();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0D78);
    sub_1D22BB9D8(&qword_1EC6E0EF8, &qword_1EC6E0D78);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0F10);
  }

  return result;
}

unint64_t sub_1D27324E8()
{
  result = qword_1EC6E0F18;
  if (!qword_1EC6E0F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0D80);
    sub_1D27323B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0F18);
  }

  return result;
}

unint64_t sub_1D2732584()
{
  result = qword_1EC6E0FA0;
  if (!qword_1EC6E0FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0F98);
    sub_1D22BB9D8(&qword_1EC6D76B8, &qword_1EC6DE9C0);
    sub_1D22BB9D8(&qword_1ED89D370, &unk_1EC6E0FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0FA0);
  }

  return result;
}

uint64_t sub_1D2732698(uint64_t a1)
{
  v4 = *(type metadata accessor for DetailView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D22BDFF8;

  return sub_1D27293B4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1D27327B8(uint64_t a1)
{
  v4 = *(type metadata accessor for DetailView() - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v4 + 80) + 40) & ~*(v4 + 80));
  v9 = *(v8 + *(v4 + 64));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D22BDFF8;

  return sub_1D272B4CC(a1, v5, v6, v7, v8, v9);
}

uint64_t sub_1D27328D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2732940(char a1)
{
  v3 = *(type metadata accessor for DetailView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D272AFF8(a1, v1 + v4, v5);
}

uint64_t sub_1D27329DC(uint64_t a1)
{
  v4 = *(type metadata accessor for DetailView() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D22BDFF8;

  return sub_1D272A5EC(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1D2732B14(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for DetailView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

unint64_t sub_1D2732BE4()
{
  result = qword_1EC6E1000;
  if (!qword_1EC6E1000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0FF8);
    sub_1D2732C9C();
    sub_1D22BB9D8(&qword_1ED89D2E8, &unk_1EC6E1030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1000);
  }

  return result;
}

unint64_t sub_1D2732C9C()
{
  result = qword_1EC6E1008;
  if (!qword_1EC6E1008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1010);
    sub_1D2732D28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1008);
  }

  return result;
}

unint64_t sub_1D2732D28()
{
  result = qword_1EC6E1018;
  if (!qword_1EC6E1018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6E1020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1018);
  }

  return result;
}

uint64_t objectdestroy_95Tm()
{
  v1 = type metadata accessor for DetailView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1D2875E18();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v2 + v3, 1, v4))
    {
      (*(v5 + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  sub_1D2273818(*(v2 + v1[11]), *(v2 + v1[11] + 8));
  sub_1D2273818(*(v2 + v1[12]), *(v2 + v1[12] + 8));

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_109Tm()
{
  v1 = type metadata accessor for DetailView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1D2875E18();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v3 + v4, 1, v5))
    {
      (*(v6 + 8))(v3 + v4, v5);
    }
  }

  else
  {
  }

  sub_1D2273818(*(v3 + v1[11]), *(v3 + v1[11] + 8));
  sub_1D2273818(*(v3 + v1[12]), *(v3 + v1[12] + 8));

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_31()
{
  v1 = type metadata accessor for DetailView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1D2875E18();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v3 + v4, 1, v5))
    {
      (*(v6 + 8))(v3 + v4, v5);
    }
  }

  else
  {
  }

  sub_1D2273818(*(v3 + v1[11]), *(v3 + v1[11] + 8));
  sub_1D2273818(*(v3 + v1[12]), *(v3 + v1[12] + 8));

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D273358C(uint64_t a1)
{
  v4 = *(type metadata accessor for DetailView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D271E450(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_113Tm()
{
  v1 = type metadata accessor for DetailView();
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;

  v4 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1D2875E18();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v3 + v4, 1, v5))
    {
      (*(v6 + 8))(v3 + v4, v5);
    }
  }

  else
  {
  }

  sub_1D2273818(*(v3 + v1[11]), *(v3 + v1[11] + 8));
  sub_1D2273818(*(v3 + v1[12]), *(v3 + v1[12] + 8));

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

double sub_1D27338AC(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1D2733910(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for DetailView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D27339A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D2733A04()
{
  result = qword_1EC6E1160;
  if (!qword_1EC6E1160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E10F8);
    sub_1D27342FC(&qword_1EC6DEDB0, type metadata accessor for PhotoAssetView);
    sub_1D27342FC(&qword_1ED89D2B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1160);
  }

  return result;
}

uint64_t sub_1D2733B20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_22Tm_0()
{
  v1 = type metadata accessor for DetailView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1D2875E18();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v2 + v3, 1, v4))
    {
      (*(v5 + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  sub_1D2273818(*(v2 + v1[11]), *(v2 + v1[11] + 8));
  sub_1D2273818(*(v2 + v1[12]), *(v2 + v1[12] + 8));

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D2733DA4(char a1)
{
  v3 = *(type metadata accessor for DetailView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1D2727B8C(a1 & 1, v4);
}

unint64_t sub_1D2733E24()
{
  result = qword_1EC6E1178;
  if (!qword_1EC6E1178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1130);
    sub_1D2733EB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1178);
  }

  return result;
}

unint64_t sub_1D2733EB0()
{
  result = qword_1EC6E1180;
  if (!qword_1EC6E1180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1128);
    sub_1D2733F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1180);
  }

  return result;
}

unint64_t sub_1D2733F3C()
{
  result = qword_1EC6E1188;
  if (!qword_1EC6E1188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1120);
    sub_1D2733FF4();
    sub_1D22BB9D8(&qword_1EC6E1198, &qword_1EC6E1170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1188);
  }

  return result;
}

unint64_t sub_1D2733FF4()
{
  result = qword_1EC6E1190;
  if (!qword_1EC6E1190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1118);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1108);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0FE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1100);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E10F8);
    sub_1D2733A04();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1EC6E0FF0, &qword_1EC6E0FE0);
    swift_getOpaqueTypeConformance2();
    sub_1D27342FC(&qword_1ED89D2B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1190);
  }

  return result;
}

unint64_t sub_1D27341E0()
{
  result = qword_1EC6E11A8;
  if (!qword_1EC6E11A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6E1140);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1130);
    sub_1D2733E24();
    swift_getOpaqueTypeConformance2();
    sub_1D27342A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E11A8);
  }

  return result;
}

unint64_t sub_1D27342A8()
{
  result = qword_1EC6E11B0;
  if (!qword_1EC6E11B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E11B0);
  }

  return result;
}

uint64_t sub_1D27342FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D2734364()
{
  result = qword_1EC6E11B8;
  if (!qword_1EC6E11B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6E11C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0CA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0C98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0D38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0C90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0C88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0C80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0C78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0C70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0C68);
    sub_1D2730A24();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0D40);
    sub_1D273178C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1D27342FC(&qword_1ED89D2B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E11B8);
  }

  return result;
}

uint64_t sub_1D27346D4@<X0>(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = a1;
  *(a2 + 8) = a3;
  type metadata accessor for CGSize(0);
  sub_1D28772F8();
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = swift_getKeyPath();
  *(a2 + 48) = 0;
  sub_1D28772F8();
  *(a2 + 56) = v5;
  sub_1D23B8344(0x20000000000001);
  sub_1D27355C4();
  result = sub_1D2877978();
  *(a2 + 72) = result;
  return result;
}

uint64_t sub_1D27347CC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E11D0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - v4;
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[1];
  v27 = v1[2];
  v28 = v6;
  v29 = v7;
  v9 = v1[1];
  v25 = *v1;
  v26 = v9;
  v21 = v8;
  v22 = *(v1 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA700);
  sub_1D2877308();
  v10 = v23;
  v11 = v24;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E11D8);
  (*(*(v12 - 8) + 16))(v5, a1, v12);
  v13 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E11E0) + 36)];
  *v13 = v10;
  *(v13 + 1) = v11;
  KeyPath = swift_getKeyPath();
  v15 = v25;
  v16 = &v5[*(v3 + 36)];
  *v16 = KeyPath;
  v16[8] = (v15 & 1) == 0;
  LOBYTE(v23) = v15;
  v17 = swift_allocObject();
  v18 = v28;
  v17[3] = v27;
  v17[4] = v18;
  v17[5] = v29;
  v19 = v26;
  v17[1] = v25;
  v17[2] = v19;
  sub_1D27357A8(&v25, &v21);
  sub_1D27357E0();
  sub_1D2876F48();

  return sub_1D22BD238(v5, &qword_1EC6E11D0);
}

uint64_t sub_1D27349EC()
{
  sub_1D27359C0();
  sub_1D2875638();
  return v1;
}

uint64_t sub_1D2734A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1D2875628();
  v14[0] = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a3 + 56);
  v7 = *(a3 + 64);
  v22 = v7;
  v23 = v8;
  v18 = v8;
  v19 = v7;
  sub_1D250D77C(&v23, &v16);
  sub_1D22BD1D0(&v22, &v16, &qword_1EC6E11E8);
  sub_1D250D77C(&v23, &v16);
  sub_1D22BD1D0(&v22, &v16, &qword_1EC6E11E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E11F0);
  sub_1D2877308();
  sub_1D28745D8();
  v16 = v8;
  v17 = v7;
  v15 = v20;
  sub_1D2877318();
  v18 = v8;
  v19 = v7;
  sub_1D2870F78();
  sub_1D2877308();
  sub_1D2874608();
  v16 = v8;
  v17 = v7;
  v15 = v20;
  sub_1D2877318();
  sub_1D2735950(&v23);
  sub_1D22BD238(&v22, &qword_1EC6E11E8);
  v21 = *(a3 + 48);
  v9 = *(a3 + 40);
  v20 = v9;
  if (v21 == 1)
  {
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_1D22BD1D0(&v20, &v18, &qword_1EC6DC9B8);
  sub_1D2878A28();
  v10 = v4;
  v11 = sub_1D28762E8();
  sub_1D2873BE8();

  sub_1D2875618();
  swift_getAtKeyPath();
  sub_1D22BD238(&v20, &qword_1EC6DC9B8);
  (*(v14[0] + 8))(v6, v10);
  if (v18)
  {
LABEL_5:
    v18 = v8;
    v19 = v7;
    sub_1D2877308();
    MEMORY[0x1D389D070](0x3FA1111111111111, 0);
    v16 = v8;
    v17 = v7;
    v14[2] = v15;
    sub_1D2877318();
  }

LABEL_6:
  sub_1D2735950(&v23);
  sub_1D22BD238(&v22, &qword_1EC6E11E8);
  v18 = v8;
  v19 = v7;
  v12 = sub_1D2877308();
  MEMORY[0x1EEE9AC00](v12);
  v14[-2] = a3;
  sub_1D2875048();
}

uint64_t sub_1D2734DB0(_BYTE *a1)
{
  if (*a1)
  {
    v1 = sub_1D23B8344(0x20000000000001);
    v2 = vcvtd_n_f64_u64(v1, 0x35uLL) * 3.14159265 + 0.0;
    if (v1 == 0x20000000000000)
    {
      v2 = 3.14159265;
    }

    __sincos_stret(v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA700);
  return sub_1D2877318();
}

uint64_t sub_1D2734E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>, uint64_t a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  v35 = a4;
  v13 = sub_1D2875628();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sin(*&a5 / a6);
  v33 = *(v17 + 16);
  v33(v20, a1, a2);
  sub_1D28751F8();
  v34 = a3;
  sub_1D2875088();
  sub_1D2875058();
  sub_1D27359C0();
  sub_1D2875638();
  (*(v14 + 8))(v16, v13);
  LODWORD(v14) = v36;
  sub_1D27351C8();
  if (v14 == 1)
  {
    if (v21)
    {
      sub_1D27351C8();
      sub_1D2735314(a5, v22 & 0x100);
      v23 = sub_1D27351C8();
      sub_1D2735314(v23, v24 & 1);
    }

    v25 = COERCE_DOUBLE(sub_1D27351C8());
    if ((v26 & 1) == 0 && *&a5 - v25 <= a7)
    {
      v27 = v35;
      v33(v35, v20, a2);
      sub_1D28751F8();
      (*(v17 + 8))(v20, a2);
LABEL_10:
      v30 = 0;
      return (*(v17 + 56))(v27, v30, 1, a2);
    }
  }

  else if ((v21 & 0x100) != 0)
  {
    v27 = v35;
    (*(v17 + 32))(v35, v20, a2);
    goto LABEL_10;
  }

  v28 = sub_1D27351C8();
  sub_1D2735314(v28, v29 & 1 | 0x100);
  (*(v17 + 8))(v20, a2);
  v30 = 1;
  v27 = v35;
  return (*(v17 + 56))(v27, v30, 1, a2);
}

uint64_t sub_1D27351C8()
{
  v0 = sub_1D2874BF8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v5 - v2;
  sub_1D2875078();
  type metadata accessor for FloatingAnimationState();
  swift_getWitnessTable();
  sub_1D2874C08();
  (*(v1 + 8))(v3, v0);
  return v5[2];
}

uint64_t sub_1D2735314(uint64_t a1, __int16 a2)
{
  v4[4] = a1;
  v5 = a2 & 0x101;
  type metadata accessor for FloatingAnimationState();
  v2 = sub_1D2875068();
  sub_1D2874BF8();
  swift_getWitnessTable();
  sub_1D2874C18();
  return v2(v4, 0);
}

uint64_t sub_1D27353EC(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1D38A2280](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x1D38A2280](*&v3);
}

uint64_t sub_1D273543C(double a1, double a2)
{
  sub_1D28797D8();
  if (a1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = a1;
  }

  MEMORY[0x1D38A2280](*&v4);
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = a2;
  }

  MEMORY[0x1D38A2280](*&v5);
  return sub_1D2879828();
}

uint64_t sub_1D27354D0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D28797D8();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x1D38A2280](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1D38A2280](*&v4);
  return sub_1D2879828();
}

uint64_t sub_1D2735584@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D2735570();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  *(a1 + 9) = v4 & 1;
  return result;
}

unint64_t sub_1D27355C4()
{
  result = qword_1ED8A2FF0[0];
  if (!qword_1ED8A2FF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8A2FF0);
  }

  return result;
}

uint64_t sub_1D2735628(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D2735670(uint64_t result, int a2, int a3)
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
      *(result + 72) = (a2 - 1);
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