uint64_t sub_2490C7200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  type metadata accessor for DTTimerDaemon();
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon);
  v5 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490C72BC, v5, v4);
}

uint64_t sub_2490C72BC()
{
  v1 = v0[2];
  sub_2490C731C(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_2490C731C(unint64_t a1)
{
  v3 = sub_24910C2FC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v55[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27EEDAE40 != -1)
  {
    goto LABEL_41;
  }

LABEL_2:
  v8 = sub_24910C89C();
  __swift_project_value_buffer(v8, qword_27EEDAE48);

  v9 = sub_24910C87C();
  LODWORD(v10) = sub_24910CF2C();

  v11 = os_log_type_enabled(v9, v10);
  v12 = a1 >> 62;
  v60 = a1;
  v57 = a1 >> 62;
  if (v11)
  {
    isUniquelyReferenced_nonNull_native = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v64 = v59;
    *isUniquelyReferenced_nonNull_native = 136315138;
    if (!v12)
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_58;
  }

  while (1)
  {

    if (v12)
    {
      v27 = sub_24910D19C();
      if (!v27)
      {
        goto LABEL_43;
      }

LABEL_18:
      v3 = 0;
      v7 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimers;
      v58 = a1 & 0xFFFFFFFFFFFFFF8;
      v59 = (a1 & 0xC000000000000001);
      while (1)
      {
        if (v59)
        {
          v31 = MEMORY[0x24C1F1C90](v3, a1);
        }

        else
        {
          if (v3 >= *(v58 + 16))
          {
            goto LABEL_38;
          }

          v31 = *(a1 + 8 * v3 + 32);
        }

        v32 = v31;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          swift_once();
          goto LABEL_2;
        }

        v61 = (v3 + 1);
        v33 = [v31 timerIDString];
        v34 = sub_24910CC9C();
        a1 = v35;

        v36 = v62;
        swift_beginAccess();
        v10 = v32;
        v37 = *(v36 + v7);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = *(v36 + v7);
        v38 = v63;
        v12 = v7;
        *(v36 + v7) = 0x8000000000000000;
        v4 = sub_2490A0A3C(v34, a1);
        v40 = v38[2];
        v41 = (v39 & 1) == 0;
        v42 = v40 + v41;
        if (__OFADD__(v40, v41))
        {
          goto LABEL_39;
        }

        v7 = v39;
        if (v38[3] >= v42)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v39)
            {
              goto LABEL_19;
            }
          }

          else
          {
            sub_2490CCD24(&qword_27EED7AB8, &qword_249110038);
            if (v7)
            {
              goto LABEL_19;
            }
          }
        }

        else
        {
          sub_2490CCE80(v42, isUniquelyReferenced_nonNull_native, &qword_27EED7AB8, &qword_249110038);
          v43 = sub_2490A0A3C(v34, a1);
          if ((v7 & 1) != (v44 & 1))
          {
            goto LABEL_60;
          }

          v4 = v43;
          if (v7)
          {
LABEL_19:

            v28 = v63;
            v29 = v63[7];
            v30 = *(v29 + 8 * v4);
            *(v29 + 8 * v4) = v10;

            goto LABEL_20;
          }
        }

        v28 = v63;
        v63[(v4 >> 6) + 8] |= 1 << v4;
        v45 = (v28[6] + 16 * v4);
        *v45 = v34;
        v45[1] = a1;
        *(v28[7] + 8 * v4) = v10;
        v46 = v28[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          goto LABEL_40;
        }

        v28[2] = v48;
LABEL_20:
        v7 = v12;
        *(v62 + v12) = v28;
        swift_endAccess();

        ++v3;
        a1 = v60;
        if (v61 == v27)
        {
          goto LABEL_43;
        }
      }
    }

    v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      goto LABEL_18;
    }

LABEL_43:
    if (v57)
    {
      v9 = sub_24910D19C();
    }

    else
    {
      v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = MEMORY[0x277D84F90];
    if (!v9)
    {
      goto LABEL_54;
    }

    v64 = MEMORY[0x277D84F90];
    sub_24910D2CC();
    if ((v9 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_58:
    v13 = sub_24910D19C();
LABEL_5:
    v14 = MEMORY[0x277D84F90];
    v61 = isUniquelyReferenced_nonNull_native;
    if (v13)
    {
      v63 = MEMORY[0x277D84F90];
      sub_2490CC8F8(0, v13 & ~(v13 >> 63), 0);
      if (v13 < 0)
      {
        __break(1u);
LABEL_60:
        result = sub_24910D57C();
        __break(1u);
        return result;
      }

      v56 = v10;
      v58 = v9;
      v15 = 0;
      v14 = v63;
      v16 = a1 & 0xC000000000000001;
      do
      {
        if (v16)
        {
          v17 = MEMORY[0x24C1F1C90](v15, a1);
        }

        else
        {
          v17 = *(a1 + 8 * v15 + 32);
        }

        v18 = v17;
        v19 = [v17 timerID];
        sub_24910C2CC();

        v63 = v14;
        v21 = v14[2];
        v20 = v14[3];
        if (v21 >= v20 >> 1)
        {
          sub_2490CC8F8(v20 > 1, v21 + 1, 1);
          v14 = v63;
        }

        ++v15;
        v14[2] = v21 + 1;
        (*(v4 + 32))(v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v21, v7, v3);
        a1 = v60;
      }

      while (v13 != v15);
      v12 = v57;
      v9 = v58;
      LODWORD(v10) = v56;
    }

    v22 = MEMORY[0x24C1F1790](v14, v3);
    v24 = v23;

    v25 = sub_24909F930(v22, v24, &v64);

    isUniquelyReferenced_nonNull_native = v61;
    *(v61 + 4) = v25;
    _os_log_impl(&dword_249083000, v9, v10, "TimersAdded: timerIDs=%s", isUniquelyReferenced_nonNull_native, 0xCu);
    v26 = v59;
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x24C1F26F0](v26, -1, -1);
    MEMORY[0x24C1F26F0](isUniquelyReferenced_nonNull_native, -1, -1);
  }

  v49 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v50 = MEMORY[0x24C1F1C90](v49, a1);
    }

    else
    {
      v50 = *(a1 + 8 * v49 + 32);
    }

    v51 = v50;
    ++v49;
    [objc_allocWithZone(MEMORY[0x277D05808]) initWithMTTimer_];

    sub_24910D2AC();
    v52 = v64[2];
    sub_24910D2DC();
    sub_24910D2EC();
    sub_24910D2BC();
  }

  while (v9 != v49);
  v3 = v64;
LABEL_54:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong);
    *&v55[-16] = 5;
    *&v55[-8] = v3;
    sub_2490B8E80(sub_2490CE614, &v55[-32]);
  }
}

uint64_t sub_2490C7A08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v25 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = sub_24910BFFC();
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v11 = *MEMORY[0x277D296B0];
  v25[1] = sub_24910CC9C();
  v25[2] = v12;
  sub_24910D1FC();
  if (!*(v10 + 16) || (v13 = sub_2490B3064(v26), (v14 & 1) == 0))
  {

    sub_2490B45F0(v26);
LABEL_10:
    v27 = 0u;
    v28 = 0u;
    goto LABEL_11;
  }

  sub_2490A4944(*(v10 + 56) + 32 * v13, &v27);
  sub_2490B45F0(v26);

  if (!*(&v28 + 1))
  {
LABEL_11:
    sub_2490A487C(&v27, &qword_27EED7AE0, &qword_249110088);
LABEL_12:

    v16 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  sub_2490A4744(0, &qword_27EED7A98, 0x277CBEA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v15 = v26[0];
  v26[0] = 0;
  sub_2490A4744(0, &qword_27EED7A90, 0x277D29730);
  sub_24910CD4C();

  v16 = v26[0];
  if (!v26[0])
  {
    goto LABEL_12;
  }

LABEL_13:
  v17 = sub_24910C34C();
  v18 = sub_24910CDEC();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v6, 1, 1, v18);
  v20 = swift_allocObject();
  *(v20 + 16) = v8;
  *(v20 + 24) = v16;
  sub_249088588(v6, v4);
  v21 = (*(v19 + 48))(v4, 1, v18);

  if (v21 == 1)
  {
    sub_2490A487C(v4, &unk_27EED7B50, &qword_24910E810);
  }

  else
  {
    sub_24910CDDC();
    (*(v19 + 8))(v4, v18);
  }

  v22 = sub_2490A46DC();
  v23 = swift_allocObject();
  *(v23 + 16) = &unk_2491100E0;
  *(v23 + 24) = v20;
  v26[5] = 6;
  v26[6] = 0;
  v26[7] = v17;
  v26[8] = v22;

  v24 = v17;
  swift_task_create();
  sub_2490A487C(v6, &unk_27EED7B50, &qword_24910E810);
}

uint64_t sub_2490C7DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  type metadata accessor for DTTimerDaemon();
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon);
  v5 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490C7EA4, v5, v4);
}

uint64_t sub_2490C7EA4()
{
  v1 = v0[2];
  sub_2490C7F04(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_2490C7F04(unint64_t a1)
{
  v3 = sub_24910C2FC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v55[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27EEDAE40 != -1)
  {
    goto LABEL_41;
  }

LABEL_2:
  v8 = sub_24910C89C();
  __swift_project_value_buffer(v8, qword_27EEDAE48);

  v9 = sub_24910C87C();
  LODWORD(v10) = sub_24910CF2C();

  v11 = os_log_type_enabled(v9, v10);
  v12 = a1 >> 62;
  v60 = a1;
  v57 = a1 >> 62;
  if (v11)
  {
    isUniquelyReferenced_nonNull_native = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v64 = v59;
    *isUniquelyReferenced_nonNull_native = 136315138;
    if (!v12)
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_58;
  }

  while (1)
  {

    if (v12)
    {
      v27 = sub_24910D19C();
      if (!v27)
      {
        goto LABEL_43;
      }

LABEL_18:
      v3 = 0;
      v7 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimers;
      v58 = a1 & 0xFFFFFFFFFFFFFF8;
      v59 = (a1 & 0xC000000000000001);
      while (1)
      {
        if (v59)
        {
          v31 = MEMORY[0x24C1F1C90](v3, a1);
        }

        else
        {
          if (v3 >= *(v58 + 16))
          {
            goto LABEL_38;
          }

          v31 = *(a1 + 8 * v3 + 32);
        }

        v32 = v31;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          swift_once();
          goto LABEL_2;
        }

        v61 = (v3 + 1);
        v33 = [v31 timerIDString];
        v34 = sub_24910CC9C();
        a1 = v35;

        v36 = v62;
        swift_beginAccess();
        v10 = v32;
        v37 = *(v36 + v7);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = *(v36 + v7);
        v38 = v63;
        v12 = v7;
        *(v36 + v7) = 0x8000000000000000;
        v4 = sub_2490A0A3C(v34, a1);
        v40 = v38[2];
        v41 = (v39 & 1) == 0;
        v42 = v40 + v41;
        if (__OFADD__(v40, v41))
        {
          goto LABEL_39;
        }

        v7 = v39;
        if (v38[3] >= v42)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v39)
            {
              goto LABEL_19;
            }
          }

          else
          {
            sub_2490CCD24(&qword_27EED7AB8, &qword_249110038);
            if (v7)
            {
              goto LABEL_19;
            }
          }
        }

        else
        {
          sub_2490CCE80(v42, isUniquelyReferenced_nonNull_native, &qword_27EED7AB8, &qword_249110038);
          v43 = sub_2490A0A3C(v34, a1);
          if ((v7 & 1) != (v44 & 1))
          {
            goto LABEL_60;
          }

          v4 = v43;
          if (v7)
          {
LABEL_19:

            v28 = v63;
            v29 = v63[7];
            v30 = *(v29 + 8 * v4);
            *(v29 + 8 * v4) = v10;

            goto LABEL_20;
          }
        }

        v28 = v63;
        v63[(v4 >> 6) + 8] |= 1 << v4;
        v45 = (v28[6] + 16 * v4);
        *v45 = v34;
        v45[1] = a1;
        *(v28[7] + 8 * v4) = v10;
        v46 = v28[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          goto LABEL_40;
        }

        v28[2] = v48;
LABEL_20:
        v7 = v12;
        *(v62 + v12) = v28;
        swift_endAccess();

        ++v3;
        a1 = v60;
        if (v61 == v27)
        {
          goto LABEL_43;
        }
      }
    }

    v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      goto LABEL_18;
    }

LABEL_43:
    if (v57)
    {
      v9 = sub_24910D19C();
    }

    else
    {
      v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = MEMORY[0x277D84F90];
    if (!v9)
    {
      goto LABEL_54;
    }

    v64 = MEMORY[0x277D84F90];
    sub_24910D2CC();
    if ((v9 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_58:
    v13 = sub_24910D19C();
LABEL_5:
    v14 = MEMORY[0x277D84F90];
    v61 = isUniquelyReferenced_nonNull_native;
    if (v13)
    {
      v63 = MEMORY[0x277D84F90];
      sub_2490CC8F8(0, v13 & ~(v13 >> 63), 0);
      if (v13 < 0)
      {
        __break(1u);
LABEL_60:
        result = sub_24910D57C();
        __break(1u);
        return result;
      }

      v56 = v10;
      v58 = v9;
      v15 = 0;
      v14 = v63;
      v16 = a1 & 0xC000000000000001;
      do
      {
        if (v16)
        {
          v17 = MEMORY[0x24C1F1C90](v15, a1);
        }

        else
        {
          v17 = *(a1 + 8 * v15 + 32);
        }

        v18 = v17;
        v19 = [v17 timerID];
        sub_24910C2CC();

        v63 = v14;
        v21 = v14[2];
        v20 = v14[3];
        if (v21 >= v20 >> 1)
        {
          sub_2490CC8F8(v20 > 1, v21 + 1, 1);
          v14 = v63;
        }

        ++v15;
        v14[2] = v21 + 1;
        (*(v4 + 32))(v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v21, v7, v3);
        a1 = v60;
      }

      while (v13 != v15);
      v12 = v57;
      v9 = v58;
      LODWORD(v10) = v56;
    }

    v22 = MEMORY[0x24C1F1790](v14, v3);
    v24 = v23;

    v25 = sub_24909F930(v22, v24, &v64);

    isUniquelyReferenced_nonNull_native = v61;
    *(v61 + 4) = v25;
    _os_log_impl(&dword_249083000, v9, v10, "TimersUpdated: timerIDs=%s", isUniquelyReferenced_nonNull_native, 0xCu);
    v26 = v59;
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x24C1F26F0](v26, -1, -1);
    MEMORY[0x24C1F26F0](isUniquelyReferenced_nonNull_native, -1, -1);
  }

  v49 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v50 = MEMORY[0x24C1F1C90](v49, a1);
    }

    else
    {
      v50 = *(a1 + 8 * v49 + 32);
    }

    v51 = v50;
    ++v49;
    [objc_allocWithZone(MEMORY[0x277D05808]) initWithMTTimer_];

    sub_24910D2AC();
    v52 = v64[2];
    sub_24910D2DC();
    sub_24910D2EC();
    sub_24910D2BC();
  }

  while (v9 != v49);
  v3 = v64;
LABEL_54:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong);
    *&v55[-16] = 6;
    *&v55[-8] = v3;
    sub_2490B8E80(sub_2490CE614, &v55[-32]);
  }
}

uint64_t sub_2490C85F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v25 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = sub_24910BFFC();
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v11 = *MEMORY[0x277D296B0];
  v25[1] = sub_24910CC9C();
  v25[2] = v12;
  sub_24910D1FC();
  if (!*(v10 + 16) || (v13 = sub_2490B3064(v26), (v14 & 1) == 0))
  {

    sub_2490B45F0(v26);
LABEL_10:
    v27 = 0u;
    v28 = 0u;
    goto LABEL_11;
  }

  sub_2490A4944(*(v10 + 56) + 32 * v13, &v27);
  sub_2490B45F0(v26);

  if (!*(&v28 + 1))
  {
LABEL_11:
    sub_2490A487C(&v27, &qword_27EED7AE0, &qword_249110088);
LABEL_12:

    v16 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  sub_2490A4744(0, &qword_27EED7A98, 0x277CBEA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v15 = v26[0];
  v26[0] = 0;
  sub_2490A4744(0, &qword_27EED7A90, 0x277D29730);
  sub_24910CD4C();

  v16 = v26[0];
  if (!v26[0])
  {
    goto LABEL_12;
  }

LABEL_13:
  v17 = sub_24910C34C();
  v18 = sub_24910CDEC();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v6, 1, 1, v18);
  v20 = swift_allocObject();
  *(v20 + 16) = v8;
  *(v20 + 24) = v16;
  sub_249088588(v6, v4);
  v21 = (*(v19 + 48))(v4, 1, v18);

  if (v21 == 1)
  {
    sub_2490A487C(v4, &unk_27EED7B50, &qword_24910E810);
  }

  else
  {
    sub_24910CDDC();
    (*(v19 + 8))(v4, v18);
  }

  v22 = sub_2490A46DC();
  v23 = swift_allocObject();
  *(v23 + 16) = &unk_2491100C8;
  *(v23 + 24) = v20;
  v26[5] = 6;
  v26[6] = 0;
  v26[7] = v17;
  v26[8] = v22;

  v24 = v17;
  swift_task_create();
  sub_2490A487C(v6, &unk_27EED7B50, &qword_24910E810);
}

uint64_t sub_2490C89D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  type metadata accessor for DTTimerDaemon();
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon);
  v5 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490C8A8C, v5, v4);
}

uint64_t sub_2490C8A8C()
{
  v1 = v0[2];
  sub_2490C8AEC(v0[3]);
  v2 = v0[1];

  return v2();
}

size_t sub_2490C8AEC(unint64_t a1)
{
  v3 = v1;
  v52 = sub_24910C2FC();
  v5 = *(v52 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v52);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EEDAE40 != -1)
  {
    goto LABEL_32;
  }

LABEL_2:
  v9 = sub_24910C89C();
  __swift_project_value_buffer(v9, qword_27EEDAE48);

  v10 = sub_24910C87C();
  LODWORD(v11) = sub_24910CF2C();

  v12 = os_log_type_enabled(v10, v11);
  v13 = a1 >> 62;
  v53 = a1;
  v51 = a1 >> 62;
  if (v12)
  {
    v2 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v55 = v14;
    *v2 = 136315138;
    if (!v13)
    {
      v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_49;
  }

  while (1)
  {
    if (v13)
    {
      v8 = sub_24910D19C();
      if (v8)
      {
LABEL_19:
        v29 = 0;
        v5 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimers;
        v52 = a1 & 0xC000000000000001;
        v13 = a1 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v52)
          {
            v31 = MEMORY[0x24C1F1C90](v29, a1);
          }

          else
          {
            if (v29 >= *(v13 + 16))
            {
              goto LABEL_31;
            }

            v31 = *(a1 + 8 * v29 + 32);
          }

          v11 = v31;
          v32 = (v29 + 1);
          if (__OFADD__(v29, 1))
          {
            break;
          }

          v33 = [v31 timerIDString];
          v34 = sub_24910CC9C();
          v36 = v35;

          swift_beginAccess();
          v37 = *(v3 + v5);
          v2 = sub_2490A0A3C(v34, v36);
          LOBYTE(v37) = v38;
          a1 = v53;

          if (v37)
          {
            v39 = *(v3 + v5);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v41 = *(v3 + v5);
            v54 = v41;
            *(v3 + v5) = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_2490CCD24(&qword_27EED7AB8, &qword_249110038);
              v41 = v54;
            }

            v30 = *(*(v41 + 48) + 16 * v2 + 8);

            sub_2490CD11C(v2, v41);
            *(v3 + v5) = v41;
          }

          swift_endAccess();

          ++v29;
          if (v32 == v8)
          {
            goto LABEL_34;
          }
        }

        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        swift_once();
        goto LABEL_2;
      }
    }

    else
    {
      v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_19;
      }
    }

LABEL_34:
    if (v51)
    {
      v10 = sub_24910D19C();
    }

    else
    {
      v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = MEMORY[0x277D84F90];
    if (!v10)
    {
      goto LABEL_45;
    }

    v55 = MEMORY[0x277D84F90];
    sub_24910D2CC();
    if ((v10 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_49:
    v15 = sub_24910D19C();
LABEL_5:
    v16 = MEMORY[0x277D84F90];
    v50 = v14;
    if (v15)
    {
      v54 = MEMORY[0x277D84F90];
      result = sub_2490CC8F8(0, v15 & ~(v15 >> 63), 0);
      if (v15 < 0)
      {
        __break(1u);
        return result;
      }

      v47 = v2;
      v48 = v11;
      v49 = v10;
      v18 = 0;
      v16 = v54;
      v19 = v53 & 0xC000000000000001;
      do
      {
        if (v19)
        {
          v20 = MEMORY[0x24C1F1C90](v18, v53);
        }

        else
        {
          v20 = *(v53 + 8 * v18 + 32);
        }

        v21 = v20;
        v22 = [v20 timerID];
        sub_24910C2CC();

        v54 = v16;
        v24 = *(v16 + 16);
        v23 = *(v16 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_2490CC8F8(v23 > 1, v24 + 1, 1);
          v16 = v54;
        }

        ++v18;
        *(v16 + 16) = v24 + 1;
        (*(v5 + 32))(v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v24, v8, v52);
      }

      while (v15 != v18);
      v13 = v51;
      v10 = v49;
      LODWORD(v11) = v48;
      v2 = v47;
    }

    v25 = MEMORY[0x24C1F1790](v16, v52);
    v5 = v26;

    v27 = sub_24909F930(v25, v5, &v55);

    *(v2 + 4) = v27;
    _os_log_impl(&dword_249083000, v10, v11, "TimersRemoved: timerIDs=%s", v2, 0xCu);
    v28 = v50;
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x24C1F26F0](v28, -1, -1);
    MEMORY[0x24C1F26F0](v2, -1, -1);

    a1 = v53;
  }

  v42 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v43 = MEMORY[0x24C1F1C90](v42, a1);
    }

    else
    {
      v43 = *(a1 + 8 * v42 + 32);
    }

    v44 = v43;
    ++v42;
    [objc_allocWithZone(MEMORY[0x277D05808]) initWithMTTimer_];

    sub_24910D2AC();
    v45 = v55[2];
    sub_24910D2DC();
    sub_24910D2EC();
    sub_24910D2BC();
  }

  while (v10 != v42);
  v14 = v55;
LABEL_45:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong);
    *(&v47 - 2) = 7;
    *(&v47 - 1) = v14;
    sub_2490B8E80(sub_2490CE614, (&v47 - 4));
  }
}

uint64_t sub_2490C911C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v25 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = sub_24910BFFC();
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v11 = *MEMORY[0x277D296B0];
  v25[1] = sub_24910CC9C();
  v25[2] = v12;
  sub_24910D1FC();
  if (!*(v10 + 16) || (v13 = sub_2490B3064(v26), (v14 & 1) == 0))
  {

    sub_2490B45F0(v26);
LABEL_10:
    v27 = 0u;
    v28 = 0u;
    goto LABEL_11;
  }

  sub_2490A4944(*(v10 + 56) + 32 * v13, &v27);
  sub_2490B45F0(v26);

  if (!*(&v28 + 1))
  {
LABEL_11:
    sub_2490A487C(&v27, &qword_27EED7AE0, &qword_249110088);
LABEL_12:

    v16 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  sub_2490A4744(0, &qword_27EED7A98, 0x277CBEA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v15 = v26[0];
  v26[0] = 0;
  sub_2490A4744(0, &qword_27EED7A90, 0x277D29730);
  sub_24910CD4C();

  v16 = v26[0];
  if (!v26[0])
  {
    goto LABEL_12;
  }

LABEL_13:
  v17 = sub_24910C34C();
  v18 = sub_24910CDEC();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v6, 1, 1, v18);
  v20 = swift_allocObject();
  *(v20 + 16) = v8;
  *(v20 + 24) = v16;
  sub_249088588(v6, v4);
  v21 = (*(v19 + 48))(v4, 1, v18);

  if (v21 == 1)
  {
    sub_2490A487C(v4, &unk_27EED7B50, &qword_24910E810);
  }

  else
  {
    sub_24910CDDC();
    (*(v19 + 8))(v4, v18);
  }

  v22 = sub_2490A46DC();
  v23 = swift_allocObject();
  *(v23 + 16) = &unk_2491100B0;
  *(v23 + 24) = v20;
  v26[5] = 6;
  v26[6] = 0;
  v26[7] = v17;
  v26[8] = v22;

  v24 = v17;
  swift_task_create();
  sub_2490A487C(v6, &unk_27EED7B50, &qword_24910E810);
}

uint64_t sub_2490C94FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  type metadata accessor for DTTimerDaemon();
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon);
  v5 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490C95B8, v5, v4);
}

uint64_t sub_2490C95B8()
{
  v1 = v0[2];
  sub_2490C9618(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_2490C9618(unint64_t a1)
{
  v3 = sub_24910C2FC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v55[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27EEDAE40 != -1)
  {
    goto LABEL_41;
  }

LABEL_2:
  v8 = sub_24910C89C();
  __swift_project_value_buffer(v8, qword_27EEDAE48);

  v9 = sub_24910C87C();
  LODWORD(v10) = sub_24910CF2C();

  v11 = os_log_type_enabled(v9, v10);
  v12 = a1 >> 62;
  v60 = a1;
  v57 = a1 >> 62;
  if (v11)
  {
    isUniquelyReferenced_nonNull_native = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v64 = v59;
    *isUniquelyReferenced_nonNull_native = 136315138;
    if (!v12)
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_58;
  }

  while (1)
  {

    if (v12)
    {
      v27 = sub_24910D19C();
      if (!v27)
      {
        goto LABEL_43;
      }

LABEL_18:
      v3 = 0;
      v7 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimers;
      v58 = a1 & 0xFFFFFFFFFFFFFF8;
      v59 = (a1 & 0xC000000000000001);
      while (1)
      {
        if (v59)
        {
          v31 = MEMORY[0x24C1F1C90](v3, a1);
        }

        else
        {
          if (v3 >= *(v58 + 16))
          {
            goto LABEL_38;
          }

          v31 = *(a1 + 8 * v3 + 32);
        }

        v32 = v31;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          swift_once();
          goto LABEL_2;
        }

        v61 = (v3 + 1);
        v33 = [v31 timerIDString];
        v34 = sub_24910CC9C();
        a1 = v35;

        v36 = v62;
        swift_beginAccess();
        v10 = v32;
        v37 = *(v36 + v7);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = *(v36 + v7);
        v38 = v63;
        v12 = v7;
        *(v36 + v7) = 0x8000000000000000;
        v4 = sub_2490A0A3C(v34, a1);
        v40 = v38[2];
        v41 = (v39 & 1) == 0;
        v42 = v40 + v41;
        if (__OFADD__(v40, v41))
        {
          goto LABEL_39;
        }

        v7 = v39;
        if (v38[3] >= v42)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v39)
            {
              goto LABEL_19;
            }
          }

          else
          {
            sub_2490CCD24(&qword_27EED7AB8, &qword_249110038);
            if (v7)
            {
              goto LABEL_19;
            }
          }
        }

        else
        {
          sub_2490CCE80(v42, isUniquelyReferenced_nonNull_native, &qword_27EED7AB8, &qword_249110038);
          v43 = sub_2490A0A3C(v34, a1);
          if ((v7 & 1) != (v44 & 1))
          {
            goto LABEL_60;
          }

          v4 = v43;
          if (v7)
          {
LABEL_19:

            v28 = v63;
            v29 = v63[7];
            v30 = *(v29 + 8 * v4);
            *(v29 + 8 * v4) = v10;

            goto LABEL_20;
          }
        }

        v28 = v63;
        v63[(v4 >> 6) + 8] |= 1 << v4;
        v45 = (v28[6] + 16 * v4);
        *v45 = v34;
        v45[1] = a1;
        *(v28[7] + 8 * v4) = v10;
        v46 = v28[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          goto LABEL_40;
        }

        v28[2] = v48;
LABEL_20:
        v7 = v12;
        *(v62 + v12) = v28;
        swift_endAccess();

        ++v3;
        a1 = v60;
        if (v61 == v27)
        {
          goto LABEL_43;
        }
      }
    }

    v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      goto LABEL_18;
    }

LABEL_43:
    if (v57)
    {
      v9 = sub_24910D19C();
    }

    else
    {
      v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = MEMORY[0x277D84F90];
    if (!v9)
    {
      goto LABEL_54;
    }

    v64 = MEMORY[0x277D84F90];
    sub_24910D2CC();
    if ((v9 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_58:
    v13 = sub_24910D19C();
LABEL_5:
    v14 = MEMORY[0x277D84F90];
    v61 = isUniquelyReferenced_nonNull_native;
    if (v13)
    {
      v63 = MEMORY[0x277D84F90];
      sub_2490CC8F8(0, v13 & ~(v13 >> 63), 0);
      if (v13 < 0)
      {
        __break(1u);
LABEL_60:
        result = sub_24910D57C();
        __break(1u);
        return result;
      }

      v56 = v10;
      v58 = v9;
      v15 = 0;
      v14 = v63;
      v16 = a1 & 0xC000000000000001;
      do
      {
        if (v16)
        {
          v17 = MEMORY[0x24C1F1C90](v15, a1);
        }

        else
        {
          v17 = *(a1 + 8 * v15 + 32);
        }

        v18 = v17;
        v19 = [v17 timerID];
        sub_24910C2CC();

        v63 = v14;
        v21 = v14[2];
        v20 = v14[3];
        if (v21 >= v20 >> 1)
        {
          sub_2490CC8F8(v20 > 1, v21 + 1, 1);
          v14 = v63;
        }

        ++v15;
        v14[2] = v21 + 1;
        (*(v4 + 32))(v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v21, v7, v3);
        a1 = v60;
      }

      while (v13 != v15);
      v12 = v57;
      v9 = v58;
      LODWORD(v10) = v56;
    }

    v22 = MEMORY[0x24C1F1790](v14, v3);
    v24 = v23;

    v25 = sub_24909F930(v22, v24, &v64);

    isUniquelyReferenced_nonNull_native = v61;
    *(v61 + 4) = v25;
    _os_log_impl(&dword_249083000, v9, v10, "TimersFired: timerIDs=%s", isUniquelyReferenced_nonNull_native, 0xCu);
    v26 = v59;
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x24C1F26F0](v26, -1, -1);
    MEMORY[0x24C1F26F0](isUniquelyReferenced_nonNull_native, -1, -1);
  }

  v49 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v50 = MEMORY[0x24C1F1C90](v49, a1);
    }

    else
    {
      v50 = *(a1 + 8 * v49 + 32);
    }

    v51 = v50;
    ++v49;
    [objc_allocWithZone(MEMORY[0x277D05808]) initWithMTTimer_];

    sub_24910D2AC();
    v52 = v64[2];
    sub_24910D2DC();
    sub_24910D2EC();
    sub_24910D2BC();
  }

  while (v9 != v49);
  v3 = v64;
LABEL_54:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong);
    *&v55[-16] = 10;
    *&v55[-8] = v3;
    sub_2490B8E80(sub_2490CE614, &v55[-32]);
  }
}

uint64_t sub_2490C9D04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v25 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = sub_24910BFFC();
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v11 = *MEMORY[0x277D296B0];
  v25[1] = sub_24910CC9C();
  v25[2] = v12;
  sub_24910D1FC();
  if (!*(v10 + 16) || (v13 = sub_2490B3064(v26), (v14 & 1) == 0))
  {

    sub_2490B45F0(v26);
LABEL_10:
    v27 = 0u;
    v28 = 0u;
    goto LABEL_11;
  }

  sub_2490A4944(*(v10 + 56) + 32 * v13, &v27);
  sub_2490B45F0(v26);

  if (!*(&v28 + 1))
  {
LABEL_11:
    sub_2490A487C(&v27, &qword_27EED7AE0, &qword_249110088);
LABEL_12:

    v16 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  sub_2490A4744(0, &qword_27EED7A98, 0x277CBEA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v15 = v26[0];
  v26[0] = 0;
  sub_2490A4744(0, &qword_27EED7A90, 0x277D29730);
  sub_24910CD4C();

  v16 = v26[0];
  if (!v26[0])
  {
    goto LABEL_12;
  }

LABEL_13:
  v17 = sub_24910C34C();
  v18 = sub_24910CDEC();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v6, 1, 1, v18);
  v20 = swift_allocObject();
  *(v20 + 16) = v8;
  *(v20 + 24) = v16;
  sub_249088588(v6, v4);
  v21 = (*(v19 + 48))(v4, 1, v18);

  if (v21 == 1)
  {
    sub_2490A487C(v4, &unk_27EED7B50, &qword_24910E810);
  }

  else
  {
    sub_24910CDDC();
    (*(v19 + 8))(v4, v18);
  }

  v22 = sub_2490A46DC();
  v23 = swift_allocObject();
  *(v23 + 16) = &unk_249110098;
  *(v23 + 24) = v20;
  v26[5] = 6;
  v26[6] = 0;
  v26[7] = v17;
  v26[8] = v22;

  v24 = v17;
  swift_task_create();
  sub_2490A487C(v6, &unk_27EED7B50, &qword_24910E810);
}

uint64_t sub_2490CA0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  type metadata accessor for DTTimerDaemon();
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon);
  v5 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490CA1A0, v5, v4);
}

uint64_t sub_2490CA1A0()
{
  v1 = v0[2];
  sub_2490CA200(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_2490CA200(unint64_t a1)
{
  v3 = sub_24910C2FC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v55[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27EEDAE40 != -1)
  {
    goto LABEL_41;
  }

LABEL_2:
  v8 = sub_24910C89C();
  __swift_project_value_buffer(v8, qword_27EEDAE48);

  v9 = sub_24910C87C();
  LODWORD(v10) = sub_24910CF2C();

  v11 = os_log_type_enabled(v9, v10);
  v12 = a1 >> 62;
  v60 = a1;
  v57 = a1 >> 62;
  if (v11)
  {
    isUniquelyReferenced_nonNull_native = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v64 = v59;
    *isUniquelyReferenced_nonNull_native = 136315138;
    if (!v12)
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_58;
  }

  while (1)
  {

    if (v12)
    {
      v27 = sub_24910D19C();
      if (!v27)
      {
        goto LABEL_43;
      }

LABEL_18:
      v3 = 0;
      v7 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimers;
      v58 = a1 & 0xFFFFFFFFFFFFFF8;
      v59 = (a1 & 0xC000000000000001);
      while (1)
      {
        if (v59)
        {
          v31 = MEMORY[0x24C1F1C90](v3, a1);
        }

        else
        {
          if (v3 >= *(v58 + 16))
          {
            goto LABEL_38;
          }

          v31 = *(a1 + 8 * v3 + 32);
        }

        v32 = v31;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          swift_once();
          goto LABEL_2;
        }

        v61 = (v3 + 1);
        v33 = [v31 timerIDString];
        v34 = sub_24910CC9C();
        a1 = v35;

        v36 = v62;
        swift_beginAccess();
        v10 = v32;
        v37 = *(v36 + v7);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = *(v36 + v7);
        v38 = v63;
        v12 = v7;
        *(v36 + v7) = 0x8000000000000000;
        v4 = sub_2490A0A3C(v34, a1);
        v40 = v38[2];
        v41 = (v39 & 1) == 0;
        v42 = v40 + v41;
        if (__OFADD__(v40, v41))
        {
          goto LABEL_39;
        }

        v7 = v39;
        if (v38[3] >= v42)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v39)
            {
              goto LABEL_19;
            }
          }

          else
          {
            sub_2490CCD24(&qword_27EED7AB8, &qword_249110038);
            if (v7)
            {
              goto LABEL_19;
            }
          }
        }

        else
        {
          sub_2490CCE80(v42, isUniquelyReferenced_nonNull_native, &qword_27EED7AB8, &qword_249110038);
          v43 = sub_2490A0A3C(v34, a1);
          if ((v7 & 1) != (v44 & 1))
          {
            goto LABEL_60;
          }

          v4 = v43;
          if (v7)
          {
LABEL_19:

            v28 = v63;
            v29 = v63[7];
            v30 = *(v29 + 8 * v4);
            *(v29 + 8 * v4) = v10;

            goto LABEL_20;
          }
        }

        v28 = v63;
        v63[(v4 >> 6) + 8] |= 1 << v4;
        v45 = (v28[6] + 16 * v4);
        *v45 = v34;
        v45[1] = a1;
        *(v28[7] + 8 * v4) = v10;
        v46 = v28[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          goto LABEL_40;
        }

        v28[2] = v48;
LABEL_20:
        v7 = v12;
        *(v62 + v12) = v28;
        swift_endAccess();

        ++v3;
        a1 = v60;
        if (v61 == v27)
        {
          goto LABEL_43;
        }
      }
    }

    v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      goto LABEL_18;
    }

LABEL_43:
    if (v57)
    {
      v9 = sub_24910D19C();
    }

    else
    {
      v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = MEMORY[0x277D84F90];
    if (!v9)
    {
      goto LABEL_54;
    }

    v64 = MEMORY[0x277D84F90];
    sub_24910D2CC();
    if ((v9 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_58:
    v13 = sub_24910D19C();
LABEL_5:
    v14 = MEMORY[0x277D84F90];
    v61 = isUniquelyReferenced_nonNull_native;
    if (v13)
    {
      v63 = MEMORY[0x277D84F90];
      sub_2490CC8F8(0, v13 & ~(v13 >> 63), 0);
      if (v13 < 0)
      {
        __break(1u);
LABEL_60:
        result = sub_24910D57C();
        __break(1u);
        return result;
      }

      v56 = v10;
      v58 = v9;
      v15 = 0;
      v14 = v63;
      v16 = a1 & 0xC000000000000001;
      do
      {
        if (v16)
        {
          v17 = MEMORY[0x24C1F1C90](v15, a1);
        }

        else
        {
          v17 = *(a1 + 8 * v15 + 32);
        }

        v18 = v17;
        v19 = [v17 timerID];
        sub_24910C2CC();

        v63 = v14;
        v21 = v14[2];
        v20 = v14[3];
        if (v21 >= v20 >> 1)
        {
          sub_2490CC8F8(v20 > 1, v21 + 1, 1);
          v14 = v63;
        }

        ++v15;
        v14[2] = v21 + 1;
        (*(v4 + 32))(v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v21, v7, v3);
        a1 = v60;
      }

      while (v13 != v15);
      v12 = v57;
      v9 = v58;
      LODWORD(v10) = v56;
    }

    v22 = MEMORY[0x24C1F1790](v14, v3);
    v24 = v23;

    v25 = sub_24909F930(v22, v24, &v64);

    isUniquelyReferenced_nonNull_native = v61;
    *(v61 + 4) = v25;
    _os_log_impl(&dword_249083000, v9, v10, "TimersDismissed: timerIDs=%s", isUniquelyReferenced_nonNull_native, 0xCu);
    v26 = v59;
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x24C1F26F0](v26, -1, -1);
    MEMORY[0x24C1F26F0](isUniquelyReferenced_nonNull_native, -1, -1);
  }

  v49 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v50 = MEMORY[0x24C1F1C90](v49, a1);
    }

    else
    {
      v50 = *(a1 + 8 * v49 + 32);
    }

    v51 = v50;
    ++v49;
    [objc_allocWithZone(MEMORY[0x277D05808]) initWithMTTimer_];

    sub_24910D2AC();
    v52 = v64[2];
    sub_24910D2DC();
    sub_24910D2EC();
    sub_24910D2BC();
  }

  while (v9 != v49);
  v3 = v64;
LABEL_54:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong);
    *&v55[-16] = 9;
    *&v55[-8] = v3;
    sub_2490B8E80(sub_2490CE614, &v55[-32]);
  }
}

uint64_t sub_2490CA8EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = sub_24910C34C();
    v14 = sub_24910CDEC();
    v15 = *(v14 - 8);
    (*(v15 + 56))(v10, 1, 1, v14);
    sub_249088588(v10, v8);
    v16 = (*(v15 + 48))(v8, 1, v14);

    if (v16 == 1)
    {
      sub_2490A487C(v8, &unk_27EED7B50, &qword_24910E810);
    }

    else
    {
      sub_24910CDDC();
      v20[0] = v13;
      (*(v15 + 8))(v8, v14);
      v13 = v20[0];
    }

    v17 = sub_2490A46DC();
    v18 = swift_allocObject();
    *(v18 + 16) = a3;
    *(v18 + 24) = v12;
    v20[1] = 6;
    v20[2] = 0;
    v20[3] = v13;
    v20[4] = v17;

    v19 = v13;
    swift_task_create();
    sub_2490A487C(v10, &unk_27EED7B50, &qword_24910E810);
  }

  return result;
}

uint64_t sub_2490CAB7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24908837C;

  return sub_2490CAC0C();
}

uint64_t sub_2490CAC0C()
{
  *(v1 + 16) = v0;
  v2 = *v0;
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon);
  v4 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490CACE0, v4, v3);
}

uint64_t sub_2490CACE0()
{
  if (qword_27EEDAE40 != -1)
  {
    swift_once();
  }

  v1 = sub_24910C89C();
  __swift_project_value_buffer(v1, qword_27EEDAE48);
  v2 = sub_24910C87C();
  v3 = sub_24910CF2C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_249083000, v2, v3, "TimerStateReset", v4, 2u);
    MEMORY[0x24C1F26F0](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  if (swift_weakLoadStrong())
  {
    v6 = swift_task_alloc();
    *(v6 + 16) = xmmword_24910FE90;
    sub_2490B8E80(sub_2490CDBB0, v6);
  }

  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v7[1] = sub_2490CAE9C;
  v8 = *(v0 + 16);

  return sub_2490CAF90();
}

uint64_t sub_2490CAE9C()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2490CAF90()
{
  v1[14] = v0;
  v2 = *v0;
  v3 = sub_24910C2FC();
  v1[15] = v3;
  v4 = *(v3 - 8);
  v1[16] = v4;
  v5 = *(v4 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon);
  v7 = sub_24910CDAC();
  v1[19] = v7;
  v1[20] = v6;

  return MEMORY[0x2822009F8](sub_2490CB0C4, v7, v6);
}

uint64_t sub_2490CB0C4()
{
  v44 = v0;
  v1 = *(v0 + 112);
  v2 = *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimerManager);
  *(v0 + 168) = v2;
  if (!v2)
  {
LABEL_16:
    v39 = *(v0 + 136);

    v40 = *(v0 + 8);

    return v40();
  }

  v3 = *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__monitorTimersFetchRunning);
  v4 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__monitorTimersFetchPending;
  *(v0 + 176) = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__monitorTimersFetchPending;
  if (v3)
  {
    *(v1 + v4) = 1;
    goto LABEL_16;
  }

  *(v0 + 184) = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimers;
  v5 = v2;
  swift_beginAccess();
  v6 = *(v0 + 176);
  v7 = *(v0 + 112);
  v8 = 0x278F87000uLL;
  v9 = &unk_27EEDA000;
  *&v10 = 136315138;
  v42 = v10;
  while (1)
  {
    v22 = *(v0 + 168);
    *(v7 + v6) = 0;
    v23 = [v22 *(v8 + 3192)];
    *(v0 + 192) = v23;
    v24 = v22;
    if (v23)
    {
      break;
    }

    v25 = *(v0 + 168);
    sub_24910C7DC();
    v26 = sub_24910C7EC();
    swift_willThrow();

    if (v9[456] != -1)
    {
      swift_once();
    }

    v27 = sub_24910C89C();
    __swift_project_value_buffer(v27, qword_27EEDAE48);
    v28 = v26;
    v29 = sub_24910C87C();
    v30 = sub_24910CF4C();

    if (os_log_type_enabled(v29, v30))
    {
      v11 = swift_slowAlloc();
      v12 = v8;
      v13 = v9;
      v14 = swift_slowAlloc();
      v43 = v14;
      *v11 = v42;
      swift_getErrorValue();
      v16 = *(v0 + 40);
      v15 = *(v0 + 48);
      v17 = *(v0 + 56);
      v18 = sub_24910D5DC();
      v20 = sub_24909F930(v18, v19, &v43);

      *(v11 + 4) = v20;
      _os_log_impl(&dword_249083000, v29, v30, "### Fetch timers failed: error=%s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      v21 = v14;
      v9 = v13;
      v8 = v12;
      MEMORY[0x24C1F26F0](v21, -1, -1);
      MEMORY[0x24C1F26F0](v11, -1, -1);
    }

    else
    {
    }

    v6 = *(v0 + 176);
    v7 = *(v0 + 112);
    if ((*(v7 + v6) & 1) == 0)
    {

      goto LABEL_16;
    }
  }

  v31 = *(v0 + 168);
  v32 = *(v0 + 144);
  v33 = *(v0 + 112);
  v34 = swift_task_alloc();
  *(v0 + 200) = v34;
  v34[2] = v23;
  v34[3] = v31;
  v34[4] = 0x6D69546863746566;
  v34[5] = 0xEB00000000737265;
  v35 = *(MEMORY[0x277D85A40] + 4);
  v36 = v23;
  v37 = swift_task_alloc();
  *(v0 + 208) = v37;
  v38 = sub_2490A4744(0, &qword_27EED7A98, 0x277CBEA60);
  *v37 = v0;
  v37[1] = sub_2490CB4D8;

  return MEMORY[0x2822008A0](v0 + 72, v33, v32, 0xD000000000000019, 0x80000002491113D0, sub_2490CE540, v34, v38);
}

uint64_t sub_2490CB4D8()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v9 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = v2[19];
    v5 = v2[20];
    v6 = sub_2490CC064;
  }

  else
  {
    v7 = v2[25];

    v4 = v2[19];
    v5 = v2[20];
    v6 = sub_2490CB5F4;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2490CB5F4()
{
  v120 = v0;
  v1 = *(v0 + 168);

  v2 = *(v0 + 72);
  v113 = v0 + 72;
  v119[0] = 0;
  sub_2490A4744(0, &qword_27EED7A90, 0x277D29730);
  sub_24910CD4C();

  v3 = MEMORY[0x277D84F90];
  v117 = v0;
  *(v0 + 80) = MEMORY[0x277D84F90];
  v4 = (v0 + 80);
  v5 = v3;
  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v4; v6; i = v4)
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C1F1C90](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ([v9 isCurrentTimer])
      {
      }

      else
      {
        sub_24910D2AC();
        v8 = *(*v4 + 16);
        sub_24910D2DC();
        v4 = i;
        sub_24910D2EC();
        sub_24910D2BC();
      }

      ++v7;
      if (v11 == v6)
      {
        v12 = *v4;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v6 = sub_24910D19C();
  }

  v12 = MEMORY[0x277D84F90];
LABEL_18:

  if (v12 < 0 || (v12 & 0x4000000000000000) != 0)
  {
LABEL_77:
    v13 = sub_24910D19C();
  }

  else
  {
    v13 = *(v12 + 16);
  }

  v14 = v117;
  v15 = MEMORY[0x277D84F90];
  v116 = v12;
  v114 = v13 & ~(v13 >> 63);
  if (v13)
  {
    v4[1] = MEMORY[0x277D84F90];
    v16 = sub_2490CC8F8(0, v13 & ~(v13 >> 63), 0);
    if (v13 < 0)
    {
      __break(1u);
      goto LABEL_79;
    }

    v24 = 0;
    v15 = v117[11];
    v25 = v12 & 0xC000000000000001;
    do
    {
      if (v25)
      {
        v26 = MEMORY[0x24C1F1C90](v24, v12);
      }

      else
      {
        v26 = *(v12 + 8 * v24 + 32);
      }

      v27 = v26;
      v28 = v117[17];
      v29 = [v26 timerID];
      sub_24910C2CC();

      v117[11] = v15;
      v31 = *(v15 + 16);
      v30 = *(v15 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_2490CC8F8(v30 > 1, v31 + 1, 1);
        v15 = i[1];
        v12 = v116;
      }

      v33 = v117[16];
      v32 = v117[17];
      v34 = v117[15];
      ++v24;
      *(v15 + 16) = v31 + 1;
      (*(v33 + 32))(v15 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v31, v32, v34);
    }

    while (v13 != v24);
  }

  if (qword_27EEDAE40 != -1)
  {
    swift_once();
  }

  v115 = sub_24910C89C();
  __swift_project_value_buffer(v115, qword_27EEDAE48);

  v35 = sub_24910C87C();
  v36 = sub_24910CF2C();

  v117 = v13;
  if (os_log_type_enabled(v35, v36))
  {
    v37 = v14[15];
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v119[0] = v39;
    *v38 = 136315138;
    v40 = MEMORY[0x24C1F1790](v15, v37);
    v42 = v41;

    v43 = sub_24909F930(v40, v42, v119);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_249083000, v35, v36, "Fetched timers: timerIDs=%s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x24C1F26F0](v39, -1, -1);
    v44 = v38;
    v13 = v117;
    MEMORY[0x24C1F26F0](v44, -1, -1);

    v45 = i;
    if (v117)
    {
      goto LABEL_34;
    }

LABEL_55:

    v47 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_43;
    }

LABEL_56:
    v4 = MEMORY[0x277D84F98];
    i[3] = MEMORY[0x277D84F98];
    goto LABEL_57;
  }

  v45 = i;
  if (!v13)
  {
    goto LABEL_55;
  }

LABEL_34:
  v45[2] = MEMORY[0x277D84F90];
  v16 = sub_2490CC918(0, v114, 0);
  if (v13 < 0)
  {
LABEL_79:
    __break(1u);
    return MEMORY[0x2822008A0](v16, v17, v18, v19, v20, v21, v22, v23);
  }

  v46 = 0;
  v47 = v45[2];
  v48 = v12 & 0xC000000000000001;
  do
  {
    if (v48)
    {
      v49 = MEMORY[0x24C1F1C90](v46, v12);
    }

    else
    {
      v49 = *(v12 + 8 * v46 + 32);
    }

    v50 = v49;
    v51 = [v49 timerIDString];
    v52 = sub_24910CC9C();
    v54 = v53;

    i[2] = v47;
    v56 = *(v47 + 16);
    v55 = *(v47 + 24);
    if (v56 >= v55 >> 1)
    {
      sub_2490CC918((v55 > 1), v56 + 1, 1);
      v47 = i[2];
    }

    v46 = (v46 + 1);
    *(v47 + 16) = v56 + 1;
    v57 = (v47 + 24 * v56);
    v57[4] = v52;
    v57[5] = v54;
    v57[6] = v50;
    v12 = v116;
  }

  while (v117 != v46);

  if (!*(v47 + 16))
  {
    goto LABEL_56;
  }

LABEL_43:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7AB8, &qword_249110038);
  v4 = sub_24910D37C();
  v58 = *(v47 + 16);
  i[3] = v4;
  if (!v58)
  {
LABEL_57:
    v79 = v14[23];
    v78 = v14[24];
    v80 = v14[14];

    v81 = *(v80 + v79);
    *(v80 + v79) = v4;

    v82 = (v14[14] + v14[22]);
    if (*v82 != 1)
    {
LABEL_66:

      v104 = v14[17];

      v105 = v14[1];

      return v105();
    }

    v83 = 0x278F87000uLL;
    v84 = qword_27EEDAE48;
    while (1)
    {
      v96 = v14[21];
      *v82 = 0;
      v97 = [v96 *(v83 + 3192)];
      v14[24] = v97;
      v98 = v96;
      v99 = v14[21];
      if (v97)
      {
        break;
      }

      sub_24910C7DC();
      v100 = sub_24910C7EC();
      swift_willThrow();

      if (qword_27EEDAE40 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v115, v84);
      v101 = v100;
      v102 = sub_24910C87C();
      v103 = sub_24910CF4C();

      if (os_log_type_enabled(v102, v103))
      {
        v85 = v84;
        v86 = v83;
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v119[0] = v88;
        *v87 = 136315138;
        swift_getErrorValue();
        v90 = v14[5];
        v89 = v14[6];
        v91 = v14[7];
        v92 = sub_24910D5DC();
        v94 = sub_24909F930(v92, v93, v119);

        *(v87 + 4) = v94;
        _os_log_impl(&dword_249083000, v102, v103, "### Fetch timers failed: error=%s", v87, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v88);
        MEMORY[0x24C1F26F0](v88, -1, -1);
        v95 = v87;
        v83 = v86;
        v84 = v85;
        MEMORY[0x24C1F26F0](v95, -1, -1);
      }

      else
      {
      }

      v82 = (v14[14] + v14[22]);
      if ((*v82 & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    v107 = v14[18];
    v108 = v14[14];
    v109 = swift_task_alloc();
    v14[25] = v109;
    v109[2] = v97;
    v109[3] = v99;
    v109[4] = 0x6D69546863746566;
    v109[5] = 0xEB00000000737265;
    v110 = *(MEMORY[0x277D85A40] + 4);
    v111 = v97;
    v112 = swift_task_alloc();
    v14[26] = v112;
    v23 = sub_2490A4744(0, &qword_27EED7A98, 0x277CBEA60);
    *v112 = v14;
    v112[1] = sub_2490CB4D8;
    v21 = sub_2490CE540;
    v20 = 0x80000002491113D0;
    v16 = v113;
    v17 = v108;
    v18 = v107;
    v19 = 0xD000000000000019;
    v22 = v109;

    return MEMORY[0x2822008A0](v16, v17, v18, v19, v20, v21, v22, v23);
  }

  v59 = (v47 + 48);
  while (1)
  {
    v62 = *(v59 - 2);
    v12 = *(v59 - 1);
    v63 = *v59;

    v64 = v63;
    v66 = sub_2490A0A3C(v62, v12);
    v67 = v4[2];
    v68 = (v65 & 1) == 0;
    v69 = v67 + v68;
    if (__OFADD__(v67, v68))
    {
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v70 = v65;
    if (v4[3] < v69)
    {
      break;
    }

LABEL_51:
    v4 = i[3];
    if (v70)
    {

      v60 = v4[7];
      v61 = *(v60 + 8 * v66);
      *(v60 + 8 * v66) = v64;
    }

    else
    {
      v4[(v66 >> 6) + 8] |= 1 << v66;
      v74 = (v4[6] + 16 * v66);
      *v74 = v62;
      v74[1] = v12;
      *(v4[7] + 8 * v66) = v64;
      v75 = v4[2];
      v76 = __OFADD__(v75, 1);
      v77 = v75 + 1;
      if (v76)
      {
        goto LABEL_76;
      }

      v4[2] = v77;
    }

    v59 += 3;
    if (!--v58)
    {
      goto LABEL_57;
    }
  }

  sub_2490CCE80(v69, 1, &qword_27EED7AB8, &qword_249110038);
  v71 = i[3];
  v72 = sub_2490A0A3C(v62, v12);
  if ((v70 & 1) == (v73 & 1))
  {
    v66 = v72;
    goto LABEL_51;
  }

  return sub_24910D57C();
}

uint64_t sub_2490CC064()
{
  v39 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 168);

  v3 = *(v0 + 216);
  v4 = &unk_27EEDA000;
  v5 = qword_27EEDAE48;
  v6 = 0x278F87000uLL;
  while (1)
  {

    if (v4[456] != -1)
    {
      swift_once();
    }

    v7 = sub_24910C89C();
    __swift_project_value_buffer(v7, v5);
    v8 = v3;
    v9 = sub_24910C87C();
    v10 = sub_24910CF4C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = v5;
      v13 = v4;
      v14 = swift_slowAlloc();
      v38 = v14;
      *v11 = 136315138;
      swift_getErrorValue();
      v16 = *(v0 + 40);
      v15 = *(v0 + 48);
      v17 = *(v0 + 56);
      v18 = sub_24910D5DC();
      v20 = sub_24909F930(v18, v19, &v38);

      *(v11 + 4) = v20;
      _os_log_impl(&dword_249083000, v9, v10, "### Fetch timers failed: error=%s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      v21 = v14;
      v4 = v13;
      v5 = v12;
      v6 = 0x278F87000;
      MEMORY[0x24C1F26F0](v21, -1, -1);
      MEMORY[0x24C1F26F0](v11, -1, -1);
    }

    else
    {
    }

    v22 = *(v0 + 112);
    v24 = *(v0 + 168);
    v23 = *(v0 + 176);
    if ((*(v22 + v23) & 1) == 0)
    {
      break;
    }

    *(v22 + v23) = 0;
    v25 = [v24 *(v6 + 3192)];
    *(v0 + 192) = v25;
    v26 = v24;
    v27 = *(v0 + 168);
    if (v25)
    {
      v31 = *(v0 + 144);
      v32 = *(v0 + 112);
      v33 = swift_task_alloc();
      *(v0 + 200) = v33;
      v33[2] = v25;
      v33[3] = v27;
      v33[4] = 0x6D69546863746566;
      v33[5] = 0xEB00000000737265;
      v34 = *(MEMORY[0x277D85A40] + 4);
      v35 = v25;
      v36 = swift_task_alloc();
      *(v0 + 208) = v36;
      v37 = sub_2490A4744(0, &qword_27EED7A98, 0x277CBEA60);
      *v36 = v0;
      v36[1] = sub_2490CB4D8;

      return MEMORY[0x2822008A0](v0 + 72, v32, v31, 0xD000000000000019, 0x80000002491113D0, sub_2490CE540, v33, v37);
    }

    sub_24910C7DC();
    v3 = sub_24910C7EC();
    swift_willThrow();
  }

  v28 = *(v0 + 136);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t DTTimerDaemon.deinit()
{
  swift_weakDestroy();
  v1 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__environment;
  v2 = sub_24910C3BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarmObservers);

  v4 = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarms);

  v5 = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimerObservers);

  v6 = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimers);

  return v0;
}

uint64_t DTTimerDaemon.__deallocating_deinit()
{
  DTTimerDaemon.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2490CC538()
{
  v0 = sub_24910C34C();
  v1 = sub_24910D02C();

  return v1;
}

uint64_t sub_2490CC588()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_249095C10;

  return DTTimerDaemon.summary.getter();
}

uint64_t sub_2490CC614()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2490CC6A4;

  return sub_2490B6E60();
}

uint64_t sub_2490CC6A4()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 32) = v4;
  *v4 = v3;
  v4[1] = sub_2490CE5B8;
  v5 = *(v1 + 16);

  return sub_2490B7BCC();
}

uint64_t sub_2490CC7E4()
{
  *(v1 + 16) = v0;
  v2 = *v0;
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon);
  v4 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490CE5C8, v4, v3);
}

void *sub_2490CC8B8(void *a1, int64_t a2, char a3)
{
  result = sub_2490CCB30(a1, a2, a3, *v3, &qword_27EED7AF0, &qword_249110118, &qword_27EED7AF8, &qword_249110120);
  *v3 = result;
  return result;
}

size_t sub_2490CC8F8(size_t a1, int64_t a2, char a3)
{
  result = sub_2490CC958(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2490CC918(void *a1, int64_t a2, char a3)
{
  result = sub_2490CCB30(a1, a2, a3, *v3, &qword_27EED7AC0, &qword_249110040, &qword_27EED7AC8, &qword_249110048);
  *v3 = result;
  return result;
}

size_t sub_2490CC958(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7AD0, &unk_249110050);
  v10 = *(sub_24910C2FC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_24910C2FC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_2490CCB30(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_2490CCC78(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

id sub_2490CCD24(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_24910D35C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_2490CCE80(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = sub_24910D36C();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      sub_24910D60C();
      sub_24910CCCC();
      result = sub_24910D62C();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_2490CD11C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24910D16C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_24910D60C();

      sub_24910CCCC();
      v13 = sub_24910D62C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2490CD2CC(uint64_t a1, uint64_t a2)
{
  swift_weakInit();
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarmManager) = 0;
  v4 = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarmObservers) = MEMORY[0x277D84F90];
  v5 = MEMORY[0x277D84F98];
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarms) = MEMORY[0x277D84F98];
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__monitorAlarmsFetchPending) = 0;
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__monitorAlarmsFetchRunning) = 0;
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimerManager) = 0;
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimerObservers) = v4;
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimers) = v5;
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__monitorTimersFetchPending) = 0;
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__monitorTimersFetchRunning) = 0;
  swift_weakAssign();
  v6 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__environment;
  v7 = sub_24910C3BC();
  (*(*(v7 - 8) + 32))(v2 + v6, a2, v7);
  return v2;
}

uint64_t type metadata accessor for DTTimerDaemon()
{
  result = qword_27EEDAFC0;
  if (!qword_27EEDAFC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2490CD42C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x24C1F26F0);
  }

  return result;
}

uint64_t sub_2490CD4C4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_2490C07AC();
}

uint64_t sub_2490CD4D0(uint64_t a1)
{
  result = sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2490CD530()
{
  result = sub_24910C3BC();
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

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2490CD69C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_24910D54C() & 1;
  }
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);
  v8 = *(v2 + v7);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v2, v7 + 8, v5 | 7);
}

uint64_t sub_2490CD7C0(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return sub_24910CDCC();
}

uint64_t objectdestroy_27Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);
  v9 = *(v2 + v7 + 8);

  v10 = *(v2 + v8);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v2, v8 + 8, v5 | 7);
}

uint64_t sub_2490CD934(void *a1, uint64_t *a2, uint64_t *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v8 = (v3 + ((*(v7 + 64) + ((*(v7 + 80) + 16) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  sub_24910C7DC();
  MEMORY[0x24C1F1710](v9, v10);
  v11 = a1;
  sub_24910C7EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return sub_24910CDBC();
}

uint64_t sub_2490CDA74()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2490CDB20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2490887FC;

  return sub_2490CAB7C();
}

void *sub_2490CDBCC@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_2490CDC10()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *sub_2490CDC48@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  result = v5(&v8, *a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_2490CDCD4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2490CDCFC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_2490CDD2C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2490887FC;

  return sub_2490CA0E4(v4, v2, v3);
}

uint64_t sub_2490CDDC4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2490887FC;

  return sub_2490C94FC(v4, v2, v3);
}

uint64_t sub_2490CDE5C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2490887FC;

  return sub_2490C89D0(v4, v2, v3);
}

uint64_t sub_2490CDEF4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24908837C;

  return sub_2490C7DE8(v4, v2, v3);
}

uint64_t sub_2490CDF8C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2490887FC;

  return sub_2490C7200(v4, v2, v3);
}

uint64_t sub_2490CE0A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2490887FC;

  return sub_2490C5758();
}

uint64_t sub_2490CE130()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2490887FC;

  return sub_2490C4F50(v4, v2, v3);
}

uint64_t sub_2490CE1C8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2490887FC;

  return sub_2490C4368(v4, v2, v3);
}

uint64_t sub_2490CE260()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2490887FC;

  return sub_2490C3780(v4, v2, v3);
}

uint64_t sub_2490CE2F8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2490887FC;

  return sub_2490C2C54(v4, v2, v3);
}

uint64_t sub_2490CE390()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2490887FC;

  return sub_2490C206C(v4, v2, v3);
}

uint64_t objectdestroy_110Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2490CE468()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2490887FC;

  return sub_2490C1390(v4, v2, v3);
}

uint64_t sub_2490CE62C()
{
  v0 = sub_24910C89C();
  __swift_allocate_value_buffer(v0, qword_27EEDAFD8);
  __swift_project_value_buffer(v0, qword_27EEDAFD8);
  sub_24910C58C();
  return sub_24910C88C();
}

uint64_t static DTTransportDaemon.alternateAccessoryIDs.getter(uint64_t a1)
{
  if (qword_27EEDAFF0 != -1)
  {
    a1 = swift_once();
  }

  v1 = qword_27EEDAFF8;
  v2 = MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v2);
  os_unfair_lock_lock(v1 + 4);
  sub_2490F5308(&v4);
  os_unfair_lock_unlock(v1 + 4);
  return v4;
}

void sub_2490CE774(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (qword_27EEDAFF0 != -1)
  {
    a1 = swift_once();
  }

  v4 = qword_27EEDAFF8;
  v5 = MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v5);
  os_unfair_lock_lock(v4 + 4);
  sub_2490FC73C(&v6);
  os_unfair_lock_unlock(v4 + 4);
  *a2 = v6;
}

uint64_t sub_2490CE85C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_27EEDAFF0;

  if (v4 != -1)
  {
    v5 = swift_once();
  }

  v6 = qword_27EEDAFF8;
  v7 = MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v7);
  os_unfair_lock_lock(v6 + 4);
  sub_2490FC878();
  os_unfair_lock_unlock(v6 + 4);
}

uint64_t static DTTransportDaemon.alternateAccessoryIDs.setter(uint64_t a1)
{
  if (qword_27EEDAFF0 != -1)
  {
    a1 = swift_once();
  }

  v1 = qword_27EEDAFF8;
  v2 = MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v2);
  os_unfair_lock_lock(v1 + 4);
  sub_2490F534C();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_2490CEA28@<X0>(void *a1@<X8>)
{
  if (qword_27EEDB000 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27EEDB008;
}

uint64_t sub_2490CEA98(uint64_t a1)
{
  if (qword_27EEDB000 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  qword_27EEDB008 = a1;
}

uint64_t (*static DTTransportDaemon.alternateAccessoryIDs.modify(uint64_t a1))(int8x16_t *a1, char a2)
{
  v2 = a1;
  *(a1 + 8) = v1;
  if (qword_27EEDAFF0 != -1)
  {
    a1 = swift_once();
  }

  v3 = qword_27EEDAFF8;
  v2[2] = qword_27EEDAFF8;
  v4 = MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v4);
  os_unfair_lock_lock(v3 + 4);
  sub_2490FC73C(&v6);
  v2[3] = 0;
  os_unfair_lock_unlock(v3 + 4);
  *v2 = v6;
  return sub_2490CEC20;
}

uint64_t sub_2490CEC20(int8x16_t *a1, char a2)
{
  v5 = vextq_s8(*a1, *a1, 8uLL);
  v3 = a1[1].i64[0];
  v2 = a1[1].i64[1];
  if (a2)
  {

    os_unfair_lock_lock(v3 + 4);
    sub_2490FC878();
    os_unfair_lock_unlock(v3 + 4);
  }

  else
  {
    os_unfair_lock_lock(v3 + 4);
    sub_2490FC878();
    os_unfair_lock_unlock(v3 + 4);
  }
}

uint64_t sub_2490CED04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED8040, &qword_2491109C0);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_27EEDAFF8 = result;
  return result;
}

uint64_t sub_2490CED80()
{
  result = sub_24910D67C();
  qword_27EEDB018 = result;
  qword_27EEDB020 = v1;
  return result;
}

uint64_t DTTransportDaemon._statusFlags.getter()
{
  v1 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__statusFlags;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DTTransportDaemon._statusFlags.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__statusFlags;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2490CEEA0()
{
  v1[5] = v0;
  swift_getObjectType();
  sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon);
  v3 = sub_24910CDAC();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_2490CEF58, v3, v2);
}

uint64_t sub_2490CEF58()
{
  v1 = v0[5];
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v0[9] = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_timerDaemon;
    type metadata accessor for DTDaemon();
    sub_2490F57CC(&unk_27EED7F50, type metadata accessor for DTDaemon);
    v4 = sub_24910CDAC();

    return MEMORY[0x2822009F8](sub_2490CF0B0, v4, v3);
  }

  else
  {
    sub_24910C7DC();
    sub_24910C7EC();
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2490CF0B0()
{
  v1 = v0[8];
  v2 = v0[9];
  swift_beginAccess();
  v0[10] = *(v1 + v2);
  v3 = v0[6];
  v4 = v0[7];

  return MEMORY[0x2822009F8](sub_2490CF144, v3, v4);
}

uint64_t sub_2490CF144()
{
  v1 = v0[10];
  v2 = v0[8];

  if (v1)
  {
    v3 = v0[1];
    v4 = v0[10];

    return v3(v4);
  }

  else
  {
    sub_24910C7DC();
    sub_24910C7EC();
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t DTTransportDaemon.unownedExecutor.getter()
{
  v0 = sub_24910C34C();
  v1 = sub_24910D02C();

  return v1;
}

id DTTransportDaemon.__allocating_init(daemon:environment:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  v7 = sub_2490F54B0(a1, a2);

  return v7;
}

id DTTransportDaemon.init(daemon:environment:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_2490F54B0(a1, a2);

  return v2;
}

uint64_t DTTransportDaemon.summary.getter()
{
  v1[32] = v0;
  swift_getObjectType();
  v2 = sub_24910C49C();
  v1[33] = v2;
  v3 = *(v2 - 8);
  v1[34] = v3;
  v4 = *(v3 + 64) + 15;
  v1[35] = swift_task_alloc();
  v5 = sub_24910C48C();
  v1[36] = v5;
  v6 = *(v5 - 8);
  v1[37] = v6;
  v7 = *(v6 + 64) + 15;
  v1[38] = swift_task_alloc();
  v8 = sub_24910C2FC();
  v1[39] = v8;
  v9 = *(v8 - 8);
  v1[40] = v9;
  v10 = *(v9 + 64) + 15;
  v1[41] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B00, &qword_249110238);
  v1[42] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v13 = sub_24910C3EC();
  v1[45] = v13;
  v14 = *(v13 - 8);
  v1[46] = v14;
  v15 = *(v14 + 64) + 15;
  v1[47] = swift_task_alloc();
  sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon);
  v17 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490CF58C, v17, v16);
}

uint64_t sub_2490CF58C()
{
  v215 = v0;
  v1 = v0[47];
  v2 = v0[32];
  sub_24910C3DC();
  sub_24910CCBC();
  strcpy(v213, "HomeKit=");
  BYTE1(v213[1]) = 0;
  WORD1(v213[1]) = 0;
  HIDWORD(v213[1]) = -402653184;
  v3 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager;
  v4 = *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager);
  if (!v4)
  {
    v6 = 0xE300000000000000;
    v7 = 7104878;
    goto LABEL_22;
  }

  v5 = [v4 dataSyncState];
  if (v5 > 3)
  {
    if (v5 <= 5)
    {
      if (v5 == 4)
      {
        v6 = 0x8000000249111590;
        v7 = 0xD000000000000013;
      }

      else
      {
        v6 = 0x8000000249111570;
        v7 = 0xD00000000000001ALL;
      }

      goto LABEL_22;
    }

    if (v5 == 6)
    {
      v7 = 0xD00000000000001CLL;
      v6 = 0x8000000249111550;
      goto LABEL_22;
    }

    if (v5 != 7)
    {
      goto LABEL_21;
    }

    v8 = "UnsupportedAccount";
LABEL_19:
    v6 = (v8 - 32) | 0x8000000000000000;
    v7 = 0xD000000000000012;
    goto LABEL_22;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      v6 = 0x80000002491115B0;
      v7 = 0xD000000000000016;
      goto LABEL_22;
    }

    v8 = "KeychainNotEnabled";
    goto LABEL_19;
  }

  if (!v5)
  {
    v6 = 0xE700000000000000;
    v7 = 0x6E776F6E6B6E55;
    goto LABEL_22;
  }

  if (v5 != 1)
  {
LABEL_21:
    v6 = 0xE100000000000000;
    v7 = 63;
    goto LABEL_22;
  }

  v6 = 0xE400000000000000;
  v7 = 1685024583;
LABEL_22:
  v9 = v0[47];
  MEMORY[0x24C1F1710](v7, v6);

  sub_24910CCBC();

  v213[0] = 1026705480;
  v213[1] = 0xE400000000000000;
  v10 = *(v2 + v3);
  v195 = v2;
  v196 = v3;
  if (v10)
  {
    v11 = [v10 hasOptedToHH2];
    v12 = v11 == 0;
    if (v11)
    {
      v13 = 1702195828;
    }

    else
    {
      v13 = 0x65736C6166;
    }

    if (v12)
    {
      v14 = 0xE500000000000000;
    }

    else
    {
      v14 = 0xE400000000000000;
    }
  }

  else
  {
    v14 = 0xE300000000000000;
    v13 = 7104878;
  }

  v15 = v0[47];
  v198 = v0[42];
  v16 = v0[40];
  v17 = v0[32];
  MEMORY[0x24C1F1710](v13, v14);

  sub_24910CCBC();

  v18 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeTransportRegisteredMap;
  v211 = v0;
  swift_beginAccess();
  v193 = v18;
  v194 = v17;
  v19 = *(v17 + v18);
  v20 = v19 + 64;
  v21 = -1;
  v22 = -1 << *(v19 + 32);
  if (-v22 < 64)
  {
    v21 = ~(-1 << -v22);
  }

  v23 = v21 & *(v19 + 64);
  v24 = (63 - v22) >> 6;
  v197 = v16;
  v199 = (v16 + 16);
  v201 = (v16 + 8);
  v204 = v19;
  result = swift_bridgeObjectRetain_n();
  v26 = 0;
  v27 = 0;
  do
  {
    if (!v23)
    {
      v29 = v211;
      while (1)
      {
        v28 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v28 >= v24)
        {
          goto LABEL_43;
        }

        v23 = *(v20 + 8 * v28);
        ++v26;
        if (v23)
        {
          v208 = v27;
          v26 = v28;
          goto LABEL_40;
        }
      }

      __break(1u);
      goto LABEL_125;
    }

    v208 = v27;
    v28 = v26;
    v29 = v211;
LABEL_40:
    v31 = v29[43];
    v30 = v29[44];
    v32 = v29[39];
    v33 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v34 = v33 | (v28 << 6);
    (*(v197 + 16))(v30, *(v204 + 48) + *(v197 + 72) * v34, v32);
    v35 = *(*(v204 + 56) + v34);
    v29 = v198;
    *(v30 + *(v198 + 48)) = v35;
    sub_2490B3868(v30, v31, &unk_27EED7B00, &qword_249110238);
    v36 = *(v31 + *(v198 + 48));
    result = (*(v197 + 8))(v31, v32);
    v27 = v208 + v36;
  }

  while (!__OFADD__(v208, v36));
  __break(1u);
LABEL_43:
  v37 = v29[47];
  v38 = v29[32];

  v213[0] = 0x3D4D4D4D48;
  v213[1] = 0xE500000000000000;
  v29[29] = v27;
  v39 = sub_24910D50C();
  MEMORY[0x24C1F1710](v39);

  MEMORY[0x24C1F1710](47, 0xE100000000000000);
  v29[30] = *(*(v194 + v193) + 16);
  v40 = sub_24910D50C();
  MEMORY[0x24C1F1710](v40);

  sub_24910CCBC();

  strcpy(v213, "Monitors=");
  WORD1(v213[1]) = 0;
  HIDWORD(v213[1]) = -385875968;
  v41 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsIncoming;
  swift_beginAccess();
  v29[31] = *(*(v38 + v41) + 16);
  v42 = sub_24910D50C();
  MEMORY[0x24C1F1710](v42);

  sub_24910CCBC();

  sub_24910D25C();

  strcpy(v213, "multicastWait=");
  HIBYTE(v213[1]) = -18;
  if (*(v38 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__multicastWait))
  {
    v43 = 1702195828;
  }

  else
  {
    v43 = 0x65736C6166;
  }

  if (*(v38 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__multicastWait))
  {
    v44 = 0xE400000000000000;
  }

  else
  {
    v44 = 0xE500000000000000;
  }

  MEMORY[0x24C1F1710](v43, v44);

  sub_24910CCBC();

  strcpy(v213, "SelfHK=");
  v213[1] = 0xE700000000000000;
  v45 = *(v195 + v196);
  if (v45 && (v46 = [v45 currentAccessory]) != 0)
  {
    v47 = v29[41];
    v48 = v29[39];
    v49 = v46;
    v50 = [v46 uniqueIdentifier];

    sub_24910C2CC();
    v51 = sub_24910C28C();
    v53 = v52;
    (*v201)(v47, v48);
    v54 = v51;
  }

  else
  {
    v53 = 0xE300000000000000;
    v54 = 7104878;
  }

  v55 = v29[47];
  v56 = v29[39];
  v57 = v29[40];
  v58 = v29[32];
  MEMORY[0x24C1F1710](v54, v53);

  sub_24910CCBC();

  strcpy(v213, "StereoHK: ");
  BYTE3(v213[1]) = 0;
  HIDWORD(v213[1]) = -369098752;
  v59 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__stereoAccessoryID;
  swift_beginAccess();
  if ((*(v57 + 48))(v58 + v59, 1, v56))
  {
    v60 = 0xE300000000000000;
    v61 = 7104878;
  }

  else
  {
    v62 = v29[41];
    v63 = v29[39];
    v64 = (*v199)(v62, v58 + v59, v63);
    v65 = MEMORY[0x24C1F0CC0](v64);
    v60 = v66;
    (*v201)(v62, v63);
    v61 = v65;
  }

  v67 = v29[47];
  MEMORY[0x24C1F1710](v61, v60);

  sub_24910CCBC();

  MEMORY[0x24C1F1710](10, 0xE100000000000000);
  v68 = MEMORY[0x277D84F90];
  v214[0] = MEMORY[0x277D84F90];
  v69 = *(v195 + v196);
  if (v69)
  {
    v70 = [v69 currentHome];
    if (v70)
    {
      v71 = v70;
      v72 = [v70 accessories];

      sub_2490A4744(0, &qword_27EED7B10, 0x277CD1650);
      v73 = sub_24910CD5C();

      sub_2490D12A4(v73, v214);

      v74 = v214[0];
    }

    else
    {
      v74 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v74 = MEMORY[0x277D84F90];
  }

  v213[0] = v74;

  sub_24909FED8(v213);
  sub_249089EB4(v213[0]);

  v214[0] = v68;
  v209 = sub_24910C4AC();
  v75 = *(v38 + v41);
  v76 = v75 + 64;
  v77 = -1;
  v78 = -1 << *(v75 + 32);
  if (-v78 < 64)
  {
    v77 = ~(-1 << -v78);
  }

  v79 = v77 & *(v75 + 64);
  v80 = (63 - v78) >> 6;
  v205 = v75;
  result = swift_bridgeObjectRetain_n();
  v81 = 0;
  v200 = v76;
  if (v79)
  {
LABEL_68:
    do
    {
      v83 = __clz(__rbit64(v79)) | (v81 << 6);
      v84 = (*(v205 + 48) + 16 * v83);
      v85 = *v84;
      v86 = v84[1];
      v87 = *(*(v205 + 56) + 8 * v83);
      v88 = v209 < *(v87 + 48);

      if (v88)
      {
        goto LABEL_129;
      }

      v89 = sub_24910C31C();
      v213[0] = 0;
      v213[1] = 0xE000000000000000;
      sub_24910D25C();
      MEMORY[0x24C1F1710](0xD00000000000001CLL, 0x8000000249111EB0);
      MEMORY[0x24C1F1710](v85, v86);
      v90 = MEMORY[0x24C1F1710](0x746567726174202CLL, 0xEB000000005B3D73);
      v91 = *(v87 + 32);
      v92 = (*(v87 + 24))(v90);
      if (v92)
      {
        v93 = v211;
        v211[28] = v92;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7B38, &unk_249110268);
        sub_2490FAC70(&unk_27EED7B40, &qword_27EED7B38, &unk_249110268);
        v94 = sub_24910CC5C();
        v96 = v95;
      }

      else
      {
        v96 = 0xE300000000000000;
        v94 = 7104878;
        v93 = v211;
      }

      MEMORY[0x24C1F1710](v94, v96);

      MEMORY[0x24C1F1710](0x6E6F636573202C5DLL, 0xEB000000003D7364);
      v93[27] = v89;
      v97 = sub_24910D50C();
      MEMORY[0x24C1F1710](v97);

      MEMORY[0x24C1F1710](10, 0xE100000000000000);
      v98 = v213[0];
      v99 = v213[1];
      v100 = v214[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v100 = sub_24909F648(0, *(v100 + 2) + 1, 1, v100);
        v214[0] = v100;
      }

      v102 = *(v100 + 2);
      v101 = *(v100 + 3);
      if (v102 >= v101 >> 1)
      {
        v100 = sub_24909F648((v101 > 1), v102 + 1, 1, v100);
        v214[0] = v100;
      }

      v79 &= v79 - 1;
      *(v100 + 2) = v102 + 1;
      v103 = &v100[16 * v102];
      *(v103 + 4) = v98;
      *(v103 + 5) = v99;

      v29 = v211;
      v76 = v200;
    }

    while (v79);
  }

  while (1)
  {
    v82 = v81 + 1;
    if (__OFADD__(v81, 1))
    {
      break;
    }

    if (v82 >= v80)
    {
      v104 = v29[32];

      v105 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsOutgoing;
      swift_beginAccess();
      v106 = *(v104 + v105);
      v109 = *(v106 + 64);
      v108 = v106 + 64;
      v107 = v109;
      v110 = -1;
      v111 = -1 << *(*(v104 + v105) + 32);
      if (-v111 < 64)
      {
        v110 = ~(-1 << -v111);
      }

      v112 = v110 & v107;
      v113 = (63 - v111) >> 6;
      v202 = *(v104 + v105);
      result = swift_bridgeObjectRetain_n();
      v114 = 0;
      if (v112)
      {
LABEL_85:
        do
        {
          v116 = (v114 << 9) | (8 * __clz(__rbit64(v112)));
          v117 = *(*(v202 + 48) + v116);
          v118 = *(*(v202 + 56) + v116);
          v119 = v209 < *(v118 + 24);

          if (v119)
          {
            goto LABEL_130;
          }

          v206 = sub_24910C31C();
          v213[0] = 0;
          v213[1] = 0xE000000000000000;
          sub_24910D25C();
          MEMORY[0x24C1F1710](0xD00000000000001CLL, 0x8000000249111E90);
          v29[20] = sub_2490EF6C0();
          v29[21] = v120;
          sub_24910D52C();

          MEMORY[0x24C1F1710](45, 0xE100000000000000);
          v29[24] = v117;
          v121 = sub_24910D50C();
          MEMORY[0x24C1F1710](v121);

          v122 = MEMORY[0x24C1F1710](0x746567726174202CLL, 0xEB000000005B3D73);
          v123 = *(v118 + 40);
          v124 = (*(v118 + 32))(v122);
          if (v124)
          {
            v29[26] = v124;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7B38, &unk_249110268);
            sub_2490FAC70(&unk_27EED7B40, &qword_27EED7B38, &unk_249110268);
            v125 = sub_24910CC5C();
            v126 = v29;
            v128 = v127;
          }

          else
          {
            v126 = v29;
            v128 = 0xE300000000000000;
            v125 = 7104878;
          }

          MEMORY[0x24C1F1710](v125, v128);

          MEMORY[0x24C1F1710](0x6E6F636573202C5DLL, 0xEB000000003D7364);
          v126[25] = v206;
          v129 = sub_24910D50C();
          MEMORY[0x24C1F1710](v129);

          MEMORY[0x24C1F1710](10, 0xE100000000000000);
          v130 = v213[0];
          v131 = v213[1];
          v132 = v214[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v132 = sub_24909F648(0, *(v132 + 2) + 1, 1, v132);
            v214[0] = v132;
          }

          v134 = *(v132 + 2);
          v133 = *(v132 + 3);
          if (v134 >= v133 >> 1)
          {
            v132 = sub_24909F648((v133 > 1), v134 + 1, 1, v132);
            v214[0] = v132;
          }

          v112 &= v112 - 1;
          *(v132 + 2) = v134 + 1;
          v135 = &v132[16 * v134];
          *(v135 + 4) = v130;
          *(v135 + 5) = v131;

          v29 = v211;
        }

        while (v112);
      }

      while (1)
      {
        v115 = v114 + 1;
        if (__OFADD__(v114, 1))
        {
          goto LABEL_126;
        }

        if (v115 >= v113)
        {
          v136 = v29[32];

          v137 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsLocal;
          swift_beginAccess();
          v138 = *(v136 + v137);
          v139 = v138 + 64;
          v140 = -1;
          v141 = -1 << *(v138 + 32);
          if (-v141 < 64)
          {
            v140 = ~(-1 << -v141);
          }

          v142 = v140 & *(v138 + 64);
          v143 = (63 - v141) >> 6;
          v210 = v138;
          result = swift_bridgeObjectRetain_n();
          v144 = 0;
          if (v142)
          {
            goto LABEL_102;
          }

          while (1)
          {
            v145 = v144 + 1;
            if (__OFADD__(v144, 1))
            {
              goto LABEL_127;
            }

            if (v145 >= v143)
            {
              v162 = v29[38];
              v163 = v29[34];
              v164 = v29[35];
              v165 = v29[32];
              v166 = v29[33];

              sub_24910C39C();
              sub_24910C44C();
              (*(v163 + 8))(v164, v166);
              v167 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__waitingOperations;
              swift_beginAccess();
              v168 = *(v165 + v167);
              v169 = -1;
              v170 = -1 << *(v168 + 32);
              if (-v170 < 64)
              {
                v169 = ~(-1 << -v170);
              }

              v171 = v169 & *(v168 + 64);
              v172 = (63 - v170) >> 6;
              result = swift_bridgeObjectRetain_n();
              for (i = 0; v171; result = )
              {
                v174 = i;
LABEL_119:
                v175 = v29[38];
                v176 = __clz(__rbit64(v171));
                v171 &= v171 - 1;
                v177 = v176 | (v174 << 6);
                v178 = (*(v168 + 48) + 16 * v177);
                v179 = *v178;
                v180 = v178[1];
                v181 = *(*(v168 + 56) + 8 * v177);

                sub_2490D1390(v179, v180, v181, v175, v214);
              }

              while (1)
              {
                v174 = i + 1;
                if (__OFADD__(i, 1))
                {
                  goto LABEL_128;
                }

                if (v174 >= v172)
                {

                  v213[0] = v214[0];

                  sub_24909FED8(v213);
                  v182 = v29[46];
                  v183 = v29[47];
                  v184 = v29[45];
                  v203 = v29[44];
                  v207 = v29[43];
                  v185 = v29[41];
                  v186 = v29;
                  v189 = v29 + 37;
                  v188 = v29[37];
                  v187 = v189[1];
                  v190 = v186[36];
                  v212 = v186[35];
                  sub_249089EB4(v213[0]);

                  (*(v182 + 8))(v183, v184);
                  v191 = *(v188 + 8);

                  v191(v187, v190);

                  v192 = v186[1];

                  return v192(0, 0xE000000000000000);
                }

                v171 = *(v168 + 64 + 8 * v174);
                ++i;
                if (v171)
                {
                  i = v174;
                  goto LABEL_119;
                }
              }
            }

            v142 = *(v139 + 8 * v145);
            ++v144;
            if (v142)
            {
              v144 = v145;
              do
              {
LABEL_102:
                v146 = (v144 << 9) | (8 * __clz(__rbit64(v142)));
                v147 = *(*(v210 + 48) + v146);
                v148 = *(*(v210 + 56) + v146);

                v213[0] = 0;
                v213[1] = 0xE000000000000000;
                sub_24910D25C();

                v213[0] = 0xD000000000000018;
                v213[1] = 0x8000000249111E70;
                v29[22] = v147;
                v149 = sub_24910D50C();
                MEMORY[0x24C1F1710](v149);

                v150 = MEMORY[0x24C1F1710](0x746567726174202CLL, 0xEB000000005B3D73);
                v151 = *(v148 + 24);
                v152 = (*(v148 + 16))(v150);
                if (v152)
                {
                  v29[23] = v152;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7B38, &unk_249110268);
                  sub_2490FAC70(&unk_27EED7B40, &qword_27EED7B38, &unk_249110268);
                  v153 = sub_24910CC5C();
                  v155 = v154;
                }

                else
                {
                  v155 = 0xE300000000000000;
                  v153 = 7104878;
                }

                MEMORY[0x24C1F1710](v153, v155);

                MEMORY[0x24C1F1710](2653, 0xE200000000000000);
                v156 = v213[0];
                v157 = v213[1];
                v158 = v214[0];
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v158 = sub_24909F648(0, *(v158 + 2) + 1, 1, v158);
                  v214[0] = v158;
                }

                v160 = *(v158 + 2);
                v159 = *(v158 + 3);
                if (v160 >= v159 >> 1)
                {
                  v158 = sub_24909F648((v159 > 1), v160 + 1, 1, v158);
                  v214[0] = v158;
                }

                v142 &= v142 - 1;
                *(v158 + 2) = v160 + 1;
                v161 = &v158[16 * v160];
                *(v161 + 4) = v156;
                *(v161 + 5) = v157;

                v29 = v211;
              }

              while (v142);
            }
          }
        }

        v112 = *(v108 + 8 * v115);
        ++v114;
        if (v112)
        {
          v114 = v115;
          goto LABEL_85;
        }
      }
    }

    v79 = *(v76 + 8 * v82);
    ++v81;
    if (v79)
    {
      v81 = v82;
      goto LABEL_68;
    }
  }

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
  return result;
}

uint64_t sub_2490D0A7C(void **a1, uint64_t *a2)
{
  v71 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7900, &qword_24910EB50);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v71 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v71 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v71 - v14;
  v16 = sub_24910C2FC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v72 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v71 - v21;
  v23 = *a1;
  v24 = [v23 device];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 productInfo];

    if (v26)
    {
      v27 = [v26 productClass];

      if (v27 == 6)
      {
        v73[0] = 0;
        v73[1] = 0xE000000000000000;
        sub_24910D25C();

        strcpy(v73, "HomePod: hk=");
        BYTE5(v73[1]) = 0;
        HIWORD(v73[1]) = -5120;
        v28 = [v23 uniqueIdentifier];
        sub_24910C2CC();

        sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0]);
        v29 = sub_24910D50C();
        MEMORY[0x24C1F1710](v29);

        v30 = *(v17 + 8);
        v30(v22, v16);
        MEMORY[0x24C1F1710](0x3D736469202CLL, 0xE600000000000000);
        v31 = [v23 device];
        if (v31)
        {
          v32 = v31;
          v33 = [v31 idsIdentifier];

          if (v33)
          {
            sub_24910C2CC();

            v34 = 0;
          }

          else
          {
            v34 = 1;
          }

          (*(v17 + 56))(v13, v34, 1, v16);
          sub_2490B3868(v13, v15, &qword_27EED7900, &qword_24910EB50);
          if ((*(v17 + 48))(v15, 1, v16) != 1)
          {
            v58 = sub_24910C28C();
            v56 = v59;
            v30(v15, v16);
            v57 = v58;
            goto LABEL_24;
          }

          sub_2490A487C(v15, &qword_27EED7900, &qword_24910EB50);
        }

        v56 = 0xE300000000000000;
        v57 = 7104878;
LABEL_24:
        MEMORY[0x24C1F1710](v57, v56);

        MEMORY[0x24C1F1710](0x3D656D616E202CLL, 0xE700000000000000);
        v60 = [v23 name];
        v61 = sub_24910CC9C();
        v63 = v62;

        MEMORY[0x24C1F1710](v61, v63);

        MEMORY[0x24C1F1710](10, 0xE100000000000000);
        v64 = v73[0];
        v65 = v73[1];
        v66 = v71;
        v67 = *v71;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v66 = v67;
        if ((result & 1) == 0)
        {
          result = sub_24909F648(0, *(v67 + 16) + 1, 1, v67);
          v67 = result;
          *v66 = result;
        }

        v69 = *(v67 + 16);
        v68 = *(v67 + 24);
        if (v69 >= v68 >> 1)
        {
          result = sub_24909F648((v68 > 1), v69 + 1, 1, v67);
          v67 = result;
          *v66 = result;
        }

        *(v67 + 16) = v69 + 1;
        v70 = v67 + 16 * v69;
        *(v70 + 32) = v64;
        *(v70 + 40) = v65;
        return result;
      }
    }
  }

  v35 = [v23 siriEndpointProfile];
  if (!v35)
  {
    (*(v17 + 56))(v10, 1, 1, v16);
    return sub_2490A487C(v10, &qword_27EED7900, &qword_24910EB50);
  }

  v36 = v35;
  v37 = [v35 sessionHubIdentifier];

  if (v37)
  {
    sub_24910C2CC();

    (*(v17 + 56))(v7, 0, 1, v16);
  }

  else
  {
    (*(v17 + 56))(v7, 1, 1, v16);
  }

  sub_2490B3868(v7, v10, &qword_27EED7900, &qword_24910EB50);
  if ((*(v17 + 48))(v10, 1, v16) == 1)
  {
    return sub_2490A487C(v10, &qword_27EED7900, &qword_24910EB50);
  }

  (*(v17 + 32))(v72, v10, v16);
  v73[0] = 0;
  v73[1] = 0xE000000000000000;
  sub_24910D25C();

  strcpy(v73, "SiriEnd: hk=");
  BYTE5(v73[1]) = 0;
  HIWORD(v73[1]) = -5120;
  v39 = [v23 uniqueIdentifier];
  sub_24910C2CC();

  sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0]);
  v40 = sub_24910D50C();
  MEMORY[0x24C1F1710](v40);

  v41 = *(v17 + 8);
  v41(v22, v16);
  MEMORY[0x24C1F1710](0x3D627568202CLL, 0xE600000000000000);
  v42 = sub_24910D50C();
  MEMORY[0x24C1F1710](v42);

  MEMORY[0x24C1F1710](0x3D656D616E202CLL, 0xE700000000000000);
  v43 = [v23 name];
  v44 = sub_24910CC9C();
  v46 = v45;

  MEMORY[0x24C1F1710](v44, v46);

  MEMORY[0x24C1F1710](10, 0xE100000000000000);
  v47 = v73[0];
  v48 = v73[1];
  v49 = v71;
  v50 = *v71;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v49 = v50;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v50 = sub_24909F648(0, *(v50 + 2) + 1, 1, v50);
    *v49 = v50;
  }

  v53 = *(v50 + 2);
  v52 = *(v50 + 3);
  if (v53 >= v52 >> 1)
  {
    *v49 = sub_24909F648((v52 > 1), v53 + 1, 1, v50);
  }

  result = (v41)(v72, v16);
  v54 = *v49;
  *(v54 + 2) = v53 + 1;
  v55 = &v54[16 * v53];
  *(v55 + 4) = v47;
  *(v55 + 5) = v48;
  return result;
}

void sub_2490D12A4(unint64_t a1, uint64_t *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24910D19C())
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1F1C90](v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      sub_2490D0A7C(&v10, a2);

      if (!v2)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_2490D1390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5)
{
  v37 = a4;
  v38 = a5;
  v35 = a1;
  v36 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F18, &qword_249110870);
  v6 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v8 = (&v33 - v7);
  v9 = a3 + 64;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  v39 = a3;

  v15 = 0;
  v33 = v8;
  if (v12)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      do
      {
LABEL_8:
        v17 = __clz(__rbit64(v12)) | (v15 << 6);
        v18 = *(v39 + 56);
        v19 = *(*(v39 + 48) + 8 * v17);
        v20 = (type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter(0) - 8);
        v21 = v8 + *(v34 + 48);
        sub_2490FA748(v18 + *(*v20 + 72) * v17, v21, type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter);
        *v8 = v19;
        v22 = v21 + v20[8];
        sub_24910C47C();
        v41[0] = 0;
        v41[1] = 0xE000000000000000;
        sub_24910D25C();

        v40 = v19;
        strcpy(v41, "Waiter: xid=");
        BYTE5(v41[1]) = 0;
        HIWORD(v41[1]) = -5120;
        v23 = sub_24910D50C();
        MEMORY[0x24C1F1710](v23);

        MEMORY[0x24C1F1710](0x737365636361202CLL, 0xEE003D444979726FLL);
        MEMORY[0x24C1F1710](v35, v36);
        MEMORY[0x24C1F1710](0x695474696177202CLL, 0xEB000000003D656DLL);
        v24 = sub_24910D66C();
        MEMORY[0x24C1F1710](v24);

        MEMORY[0x24C1F1710](10, 0xE100000000000000);
        v25 = v41[0];
        v26 = v41[1];
        v27 = v38;
        v28 = *v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v27 = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v28 = sub_24909F648(0, *(v28 + 2) + 1, 1, v28);
          *v38 = v28;
        }

        v31 = *(v28 + 2);
        v30 = *(v28 + 3);
        if (v31 >= v30 >> 1)
        {
          v28 = sub_24909F648((v30 > 1), v31 + 1, 1, v28);
          *v38 = v28;
        }

        v12 &= v12 - 1;
        *(v28 + 2) = v31 + 1;
        v32 = &v28[16 * v31];
        *(v32 + 4) = v25;
        *(v32 + 5) = v26;
        v8 = v33;
        result = sub_2490A487C(v33, &qword_27EED7F18, &qword_249110870);
      }

      while (v12);
    }
  }

  __break(1u);
  return result;
}

uint64_t DTTransportDaemon.activate()()
{
  v1[8] = v0;
  swift_getObjectType();
  v2 = sub_24910C80C();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon);
  v6 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490D17D0, v6, v5);
}

uint64_t sub_2490D17D0()
{
  sub_24910C58C();
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = sub_24910CC8C();

  v3 = [v1 initWithSuiteName_];

  if (v3)
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = v0[9];
    (*(v5 + 104))(v4, *MEMORY[0x277D05768], v6);
    sub_24910C7FC();
    (*(v5 + 8))(v4, v6);
    v7 = sub_24910CF7C();

    if (v7 != 2)
    {
      *(v0[8] + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__multicastWait) = v7 & 1;
    }
  }

  v0[6] = sub_2490DA8C0;
  v0[7] = 0;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2490C0EE8;
  v0[5] = &block_descriptor_1;
  v8 = _Block_copy(v0 + 2);
  xpc_set_event_stream_handler("com.apple.HMModernMessaging.launch", 0, v8);
  _Block_release(v8);
  v9 = IsAppleInternalBuild();
  v10 = v0[8];
  if (v9 && !*(v10 + 24))
  {
    sub_24910C34C();
    swift_allocObject();
    swift_weakInit();
    v11 = sub_24910C42C();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v14 = sub_24910C3FC();
    v15 = *(v10 + 24);
    *(v10 + 24) = v14;

    v10 = v0[8];
  }

  if ((*(v10 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__invalidateCalled) & 1) == 0)
  {
    v16 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager;
    if (!*(v10 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager))
    {
      v17 = [objc_allocWithZone(MEMORY[0x277CD1A98]) initWithOptions:35024 cachePolicy:2];
      v18 = [objc_allocWithZone(MEMORY[0x277CD1A90]) initWithConfiguration_];
      v19 = *(v10 + v16);
      *(v10 + v16) = v18;
      v20 = v18;

      [v20 setDelegate_];
      v21 = v0[8];
    }

    sub_2490DDEF8();
    sub_2490DAEB4();
    sub_2490DEDDC();
    sub_2490DEFB4();
  }

  v22 = v0[11];

  v23 = v0[1];

  return v23();
}

uint64_t DTTransportDaemon.invalidate()()
{
  *(v1 + 64) = v0;
  swift_getObjectType();
  sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon);
  v3 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490D1BC4, v3, v2);
}

uint64_t sub_2490D1BC4()
{
  v1 = *(v0 + 64);
  *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__invalidateCalled) = 1;
  if (*(v1 + 24))
  {
    v2 = *(v1 + 24);

    sub_24910C41C();

    v3 = *(v1 + 24);
  }

  v4 = *(v0 + 64);
  *(v1 + 24) = 0;

  sub_24910C7DC();
  v5 = sub_24910C7EC();
  sub_2490D1E34(v5);

  v6 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeKitPollTask;
  if (*(v4 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeKitPollTask))
  {
    v7 = *(v4 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeKitPollTask);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7B18, &qword_249110250);
    sub_24910CE3C();

    v8 = *(v4 + v6);
  }

  v9 = *(v0 + 64);
  *(v4 + v6) = 0;

  v10 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager;
  v11 = *(v9 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager);
  if (v11)
  {
    [v11 setDelegate_];
    v12 = *(v9 + v10);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v0 + 64);
  *(v9 + v10) = 0;

  v14 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeMap;
  swift_beginAccess();
  v15 = *(v13 + v14);
  v16 = MEMORY[0x277D84F98];
  *(v13 + v14) = MEMORY[0x277D84F98];

  v17 = *(v13 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeSiriEndpointMap);
  *(v13 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeSiriEndpointMap) = v16;

  *(v13 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeSiriEndpointsReady) = 0;
  v18 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeTransportRegisteredMap;
  swift_beginAccess();
  v19 = *(v13 + v18);
  *(v13 + v18) = v16;

  *(v13 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeKitReady) = 0;
  v20 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorTimer;
  if (*(v13 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorTimer))
  {
    v21 = *(v13 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorTimer);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7B18, &qword_249110250);
    sub_24910CE3C();

    v22 = *(v13 + v20);
  }

  *(v13 + v20) = 0;

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_2490D1E34(void *a1)
{
  v3 = type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DTTransportDaemon.DTOperationItem(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__operationQueue;
  swift_beginAccess();
  v13 = *(v1 + v12);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v16 = *(v8 + 72);
    v17 = *(v1 + v12);

    do
    {
      sub_2490FA748(v15, v11, type metadata accessor for DTTransportDaemon.DTOperationItem);
      sub_2490FA810(v11, v6, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
      sub_2490F7BC8(v6, a1, 0, 1);
      sub_2490FA7B0(v6, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
      v15 += v16;
      --v14;
    }

    while (v14);

    v18 = *(v1 + v12);
  }

  *(v1 + v12) = MEMORY[0x277D84F90];
}

uint64_t DTTransportDaemon.handleDiagnosticsRequest(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  swift_getObjectType();
  v4 = sub_24910C76C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon);
  v8 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490D2128, v8, v7);
}

uint64_t sub_2490D2128()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 != *MEMORY[0x277D05718])
  {
    if (v4 == *MEMORY[0x277D05728] || v4 == *MEMORY[0x277D05710])
    {
      goto LABEL_17;
    }

    if (v4 == *MEMORY[0x277D05720])
    {
      if (qword_27EEDAFD0 != -1)
      {
        swift_once();
      }

      v28 = sub_24910C89C();
      __swift_project_value_buffer(v28, qword_27EEDAFD8);
      v29 = sub_24910C87C();
      v30 = sub_24910CF5C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_249083000, v29, v30, "homeKitUpdate", v31, 2u);
        MEMORY[0x24C1F26F0](v31, -1, -1);
      }

      v11 = v0[4];

      goto LABEL_7;
    }

    if (v4 == *MEMORY[0x277D05730])
    {
LABEL_17:
      sub_24910C7DC();
      sub_24910C7EC();
      swift_willThrow();
    }

    else
    {
      v33 = v0[6];
      v32 = v0[7];
      v34 = v0[5];
      sub_24910C7DC();
      sub_24910C7EC();
      swift_willThrow();
      (*(v33 + 8))(v32, v34);
    }

    v26 = v0[7];

    v24 = v0[1];
    goto LABEL_19;
  }

  v5 = v0[7];
  (*(v0[6] + 96))(v5, v0[5]);
  v6 = *v5;
  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v7 = sub_24910C89C();
  __swift_project_value_buffer(v7, qword_27EEDAFD8);
  v8 = sub_24910C87C();
  v9 = sub_24910CF5C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v6;
    _os_log_impl(&dword_249083000, v8, v9, "homeKitDefer: state=%{BOOL}d", v10, 8u);
    MEMORY[0x24C1F26F0](v10, -1, -1);
  }

  v11 = v0[4];

  *(v11 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeKitDeferred) = v6;
LABEL_7:
  if ((*(v11 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__invalidateCalled) & 1) == 0)
  {
    v12 = v0[4];
    v13 = (v12 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager);
    if (!*(v12 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager))
    {
      v14 = [objc_allocWithZone(MEMORY[0x277CD1A98]) initWithOptions:35024 cachePolicy:2];
      v15 = [objc_allocWithZone(MEMORY[0x277CD1A90]) initWithConfiguration_];
      v16 = *v13;
      *v13 = v15;
      v17 = v15;

      [v17 setDelegate_];
      v18 = v0[4];
    }

    sub_2490DDEF8();
    sub_2490DAEB4();
    sub_2490DEDDC();
    sub_2490DEFB4();
  }

  v19 = v0[7];
  v20 = v0[2];
  v20[3] = sub_24910C6AC();
  v20[4] = sub_2490F57CC(&unk_27EED7B20, MEMORY[0x277D056D0]);
  __swift_allocate_boxed_opaque_existential_1(v20);
  sub_24910C64C();
  v21 = *MEMORY[0x277D05700];
  v22 = sub_24910C74C();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v20, v21, v22);
  (*(v23 + 56))(v20, 0, 1, v22);

  v24 = v0[1];
LABEL_19:

  return v24();
}

uint64_t DTTransportDaemon.handleLocalRequest(request:context:xpcConnection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  swift_getObjectType();
  v4[8] = sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon);
  v6 = sub_24910CDAC();
  v4[9] = v6;
  v4[10] = v5;

  return MEMORY[0x2822009F8](sub_2490D26F0, v6, v5);
}

uint64_t sub_2490D26F0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  v5 = *(v0 + 32);
  *(v4 + 16) = v1;
  *(v4 + 24) = v5;
  *(v4 + 40) = v3;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = sub_2490D2800;
  v8 = MEMORY[0x277CC9318];

  return MEMORY[0x2822008A0](v0 + 16, v1, v2, 0xD000000000000032, 0x8000000249111660, sub_2490F5814, v4, v8);
}

uint64_t sub_2490D2800()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_2490D2938;
  }

  else
  {
    v7 = v2[11];

    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_2490D291C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2490D2938()
{
  v1 = v0[11];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_2490D299C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a3;
  v53 = a4;
  v6 = type metadata accessor for DTTransportDaemon.DTOperationItem(0);
  v56 = *(v6 - 8);
  v7 = *(v56 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v55 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24910C86C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0);
  v15 = (v14 - 8);
  v16 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v51 - v20;
  sub_24910C2EC();
  v22 = v15[8];
  v54 = v10;
  v23 = *(v10 + 16);
  v23(&v21[v22], a1, v9);
  v24 = v15[9];
  v25 = sub_24910C73C();
  (*(*(v25 - 8) + 16))(&v21[v24], a2, v25);
  v26 = v15[10];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7E40, &unk_2491104E0);
  (*(*(v27 - 8) + 16))(&v21[v26], v52, v27);
  v28 = v15[7];
  *&v21[v28] = sub_24910C4AC();
  v29 = v15[11];
  swift_weakInit();
  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v30 = sub_24910C89C();
  __swift_project_value_buffer(v30, qword_27EEDAFD8);
  sub_2490FA748(v21, v19, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  v23(v13, a1, v9);
  v31 = sub_24910C87C();
  v32 = sub_24910CF5C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v58[0] = v53;
    *v33 = 136315394;
    sub_24910C2FC();
    sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0]);
    v34 = sub_24910D50C();
    v36 = v35;
    sub_2490FA7B0(v19, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    v37 = sub_24909F930(v34, v36, v58);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2080;
    sub_2490F57CC(&qword_27EED7B30, MEMORY[0x277D057E0]);
    v38 = sub_24910D50C();
    v40 = v39;
    (*(v54 + 8))(v13, v9);
    v41 = sub_24909F930(v38, v40, v58);

    *(v33 + 14) = v41;
    _os_log_impl(&dword_249083000, v31, v32, "Operation enqueue: xid=%s, request=%s", v33, 0x16u);
    v42 = v53;
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v42, -1, -1);
    MEMORY[0x24C1F26F0](v33, -1, -1);
  }

  else
  {

    (*(v54 + 8))(v13, v9);
    sub_2490FA7B0(v19, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  }

  v43 = v55;
  sub_2490FA748(v21, v55, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  v44 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__operationQueue;
  v45 = v57;
  swift_beginAccess();
  v46 = *(v45 + v44);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v45 + v44) = v46;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v46 = sub_2490F10B4(0, v46[2] + 1, 1, v46);
    *(v45 + v44) = v46;
  }

  v49 = v46[2];
  v48 = v46[3];
  if (v49 >= v48 >> 1)
  {
    v46 = sub_2490F10B4(v48 > 1, v49 + 1, 1, v46);
  }

  v46[2] = v49 + 1;
  sub_2490FA810(v43, v46 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v49, type metadata accessor for DTTransportDaemon.DTOperationItem);
  *(v45 + v44) = v46;
  swift_endAccess();
  sub_2490DEDDC();
  return sub_2490FA7B0(v21, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
}

void sub_2490D2FC8(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_24910C2FC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0);
  v12 = a1 + *(v11 + 24);
  v13 = sub_24910C85C();
  if (v14)
  {
    if (qword_27EEDAFD0 != -1)
    {
      swift_once();
    }

    v15 = sub_24910C89C();
    __swift_project_value_buffer(v15, qword_27EEDAFD8);
    v16 = a2;
    v55 = sub_24910C87C();
    v17 = sub_24910CF4C();

    if (os_log_type_enabled(v55, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v57[0] = v19;
      *v18 = 136315138;
      v20 = [v16 uniqueIdentifier];
      sub_24910C2CC();

      sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0]);
      v21 = sub_24910D50C();
      v23 = v22;
      (*(v7 + 8))(v10, v6);
      v24 = sub_24909F930(v21, v23, v57);

      *(v18 + 4) = v24;
      v25 = "### Monitor start failed: no monitorID, accessory=%s";
LABEL_15:
      _os_log_impl(&dword_249083000, v55, v17, v25, v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x24C1F26F0](v19, -1, -1);
      MEMORY[0x24C1F26F0](v18, -1, -1);

      return;
    }

LABEL_16:
    v49 = v55;

    return;
  }

  v26 = v13;
  v27 = *(v11 + 36);
  if (!swift_weakLoadStrong())
  {
    if (qword_27EEDAFD0 != -1)
    {
      swift_once();
    }

    v42 = sub_24910C89C();
    __swift_project_value_buffer(v42, qword_27EEDAFD8);
    v43 = a2;
    v55 = sub_24910C87C();
    v17 = sub_24910CF4C();

    if (os_log_type_enabled(v55, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v57[0] = v19;
      *v18 = 136315138;
      v44 = [v43 uniqueIdentifier];
      sub_24910C2CC();

      sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0]);
      v45 = sub_24910D50C();
      v47 = v46;
      (*(v7 + 8))(v10, v6);
      v48 = sub_24909F930(v45, v47, v57);

      *(v18 + 4) = v48;
      v25 = "### Monitor start failed: no xpc connection, accessory=%s";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v28 = v26;
  v29 = swift_allocObject();
  *(v29 + 16) = a2;
  v30 = qword_27EEDAFD0;
  a2;
  if (v30 != -1)
  {
    swift_once();
  }

  v31 = sub_24910C89C();
  __swift_project_value_buffer(v31, qword_27EEDAFD8);

  v32 = sub_24910C87C();
  v33 = sub_24910CF5C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v57[0] = v55;
    *v34 = 134218242;
    v54 = v28;
    *(v34 + 4) = v28;
    *(v34 + 12) = 2080;
    v56 = sub_2490D36A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7B38, &unk_249110268);
    sub_2490FAC70(&unk_27EED7B40, &qword_27EED7B38, &unk_249110268);
    v35 = sub_24910CC5C();
    v37 = v36;

    v38 = sub_24909F930(v35, v37, v57);

    *(v34 + 14) = v38;
    v39 = v33;
    v40 = v54;
    _os_log_impl(&dword_249083000, v32, v39, "Monitor start local: monitorID=%llu, targets=[%s]", v34, 0x16u);
    v41 = v55;
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x24C1F26F0](v41, -1, -1);
    MEMORY[0x24C1F26F0](v34, -1, -1);
  }

  else
  {

    v40 = v28;
  }

  type metadata accessor for DTTransportDaemon.DTTransportMonitorInfoLocal();
  v50 = swift_allocObject();
  swift_weakInit();
  *(v50 + 16) = sub_2490FAEBC;
  *(v50 + 24) = v29;
  swift_weakAssign();
  v51 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsLocal;
  swift_beginAccess();

  v52 = *(v3 + v51);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = *(v3 + v51);
  *(v3 + v51) = 0x8000000000000000;
  sub_2490F327C(v50, v40, isUniquelyReferenced_nonNull_native, &qword_27EED7EF8, &qword_249110850);
  *(v3 + v51) = v56;
  swift_endAccess();
}

uint64_t sub_2490D36A8()
{
  v1 = sub_24910C2FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED81E0, &unk_249110E50);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24910E880;
  v7 = [v0 uniqueIdentifier];
  sub_24910C2CC();

  v8 = sub_24910C28C();
  v10 = v9;
  v11 = *(v2 + 8);
  v11(v5, v1);
  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  v12 = sub_2490E55A0();
  if (v12)
  {
    v13 = v12;
    v14 = [v12 uniqueIdentifier];
    sub_24910C2CC();

    v15 = sub_24910C28C();
    v17 = v16;
    v11(v5, v1);
    v6 = sub_24909F648(1, 2, 1, v6);

    *(v6 + 16) = 2;
    *(v6 + 48) = v15;
    *(v6 + 56) = v17;
  }

  return v6;
}

uint64_t sub_2490D3868(char a1, uint64_t a2)
{
  v3 = v2;
  if (a1 == 2)
  {
    v5 = *v2;
    v6 = sub_2490F128C(a2);
    if (v7)
    {
      v8 = v6;
      v9 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v3;
      v23 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_2490F3990();
        v11 = v23;
      }

      v12 = *(v11 + 48);
      v13 = sub_24910C2FC();
      v14 = *(v13 - 8);
      v15 = *(v14 + 8);
      v15(v12 + *(v14 + 72) * v8, v13);
      sub_2490F2780(v8, v11);
      result = (v15)(a2, v13);
      *v3 = v11;
    }

    else
    {
      v21 = sub_24910C2FC();
      v22 = *(*(v21 - 8) + 8);

      return v22(a2, v21);
    }
  }

  else
  {
    v18 = *v3;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    sub_2490F30DC(a1 & 1, a2, v19);
    v20 = sub_24910C2FC();
    result = (*(*(v20 - 8) + 8))(a2, v20);
    *v3 = v24;
  }

  return result;
}

unint64_t sub_2490D3A24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  if (a1)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v4;
    result = sub_2490F327C(a1, a2, isUniquelyReferenced_nonNull_native, a3, a4);
    *v4 = v20;
  }

  else
  {
    v13 = *v4;
    result = sub_2490A0AB4(a2);
    if (v14)
    {
      v15 = result;
      v16 = *v7;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v7;
      v21 = *v7;
      if (!v17)
      {
        sub_2490F3E74(a3, a4);
        v18 = v21;
      }

      v19 = *(*(v18 + 56) + 8 * v15);

      result = sub_2490F2DC0(v15, v18);
      *v7 = v18;
    }
  }

  return result;
}

uint64_t sub_2490D3B04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F80, &qword_2491108C8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_2490A487C(a1, &qword_27EED7F80, &qword_2491108C8);
    v15 = *v3;
    v16 = sub_2490A0AB4(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_2490F4130();
        v21 = v26;
      }

      sub_2490FA810(*(v21 + 56) + *(v11 + 72) * v18, v9, type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter);
      sub_2490F2F30(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_2490A487C(v9, &qword_27EED7F80, &qword_2491108C8);
  }

  else
  {
    sub_2490FA810(a1, v14, type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_2490F3568(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_2490D3D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_2490F33EC(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_2490A0A3C(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_2490F3FC0();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_2490CD11C(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_2490D3E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_2490F36B4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_2490A0A3C(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_2490F4364();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_2490CD11C(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

void sub_2490D3F48(uint64_t a1, void *a2)
{
  v4 = sub_24910C2FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + *(type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0) + 24);
  v10 = sub_24910C85C();
  if (v11)
  {
    if (qword_27EEDAFD0 != -1)
    {
      swift_once();
    }

    v12 = sub_24910C89C();
    __swift_project_value_buffer(v12, qword_27EEDAFD8);
    v13 = a2;
    v28 = sub_24910C87C();
    v14 = sub_24910CF4C();

    if (os_log_type_enabled(v28, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v29 = v16;
      *v15 = 136315138;
      v17 = [v13 uniqueIdentifier];
      sub_24910C2CC();

      sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0]);
      v18 = sub_24910D50C();
      v20 = v19;
      (*(v5 + 8))(v8, v4);
      v21 = sub_24909F930(v18, v20, &v29);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_249083000, v28, v14, "### Monitor start failed: no monitorID, accessory=%s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x24C1F26F0](v16, -1, -1);
      MEMORY[0x24C1F26F0](v15, -1, -1);
    }

    else
    {
      v27 = v28;
    }
  }

  else
  {
    v22 = v10;
    if (qword_27EEDAFD0 != -1)
    {
      swift_once();
    }

    v23 = sub_24910C89C();
    __swift_project_value_buffer(v23, qword_27EEDAFD8);
    v24 = sub_24910C87C();
    v25 = sub_24910CF5C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = v22;
      _os_log_impl(&dword_249083000, v24, v25, "Monitor stop outgoing: monitorID=%llu", v26, 0xCu);
      MEMORY[0x24C1F26F0](v26, -1, -1);
    }

    swift_beginAccess();
    sub_2490D3A24(0, v22, &qword_27EED7EF8, &qword_249110850);
    swift_endAccess();
  }
}

void sub_2490D42F8(NSObject *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_24910C2FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0);
  v14 = a1 + *(v13 + 24);
  v15 = sub_24910C85C();
  if (v16)
  {
    if (qword_27EEDAFD0 != -1)
    {
      swift_once();
    }

    v17 = sub_24910C89C();
    __swift_project_value_buffer(v17, qword_27EEDAFD8);
    v18 = a2;
    v51 = sub_24910C87C();
    v19 = sub_24910CF4C();

    if (os_log_type_enabled(v51, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v53[0] = v21;
      *v20 = 136315138;
      v22 = [v18 uniqueIdentifier];
      sub_24910C2CC();

      sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0]);
      v23 = sub_24910D50C();
      v25 = v24;
      (*(v9 + 8))(v12, v8);
      v26 = sub_24909F930(v23, v25, v53);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_249083000, v51, v19, "### Monitor start failed: no monitorID, accessory=%s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x24C1F26F0](v21, -1, -1);
      MEMORY[0x24C1F26F0](v20, -1, -1);
    }

    else
    {
      v40 = v51;
    }
  }

  else
  {
    v27 = v15;
    v51 = a1;
    v28 = swift_allocObject();
    *(v28 + 16) = a2;
    v29 = qword_27EEDAFD0;
    a2;
    if (v29 != -1)
    {
      swift_once();
    }

    v30 = sub_24910C89C();
    __swift_project_value_buffer(v30, qword_27EEDAFD8);

    v31 = sub_24910C87C();
    v32 = sub_24910CF5C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v53[0] = v49;
      *v33 = 134218242;
      *(v33 + 4) = v27;
      *(v33 + 12) = 2080;
      HIDWORD(v48) = v32;
      v52 = sub_2490D36A8();
      v50 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7B38, &unk_249110268);
      sub_2490FAC70(&unk_27EED7B40, &qword_27EED7B38, &unk_249110268);
      v34 = sub_24910CC5C();
      v36 = v35;

      v37 = sub_24909F930(v34, v36, v53);

      *(v33 + 14) = v37;
      _os_log_impl(&dword_249083000, v31, BYTE4(v48), "Monitor start outgoing: monitorID=%llu, targets=[%s]", v33, 0x16u);
      v38 = v49;
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x24C1F26F0](v38, -1, -1);
      MEMORY[0x24C1F26F0](v33, -1, -1);

      v39 = v50;
    }

    else
    {

      v39 = v27;
    }

    v41 = sub_24910C4AC();
    v42 = *(v13 + 36);
    swift_weakLoadStrong();
    type metadata accessor for DTTransportDaemon.DTTransportMonitorInfoOutgoing();
    v43 = swift_allocObject();
    swift_weakInit();
    v43[2] = a3;
    v43[3] = v41;
    v43[4] = sub_2490FC808;
    v43[5] = v28;
    swift_weakAssign();

    v44 = a3;

    v45 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsOutgoing;
    swift_beginAccess();
    v46 = *(v4 + v45);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = *(v4 + v45);
    *(v4 + v45) = 0x8000000000000000;
    sub_2490F327C(v43, v39, isUniquelyReferenced_nonNull_native, &qword_27EED7F00, &qword_249110858);
    *(v4 + v45) = v52;
    swift_endAccess();
    sub_2490D48A0();
  }
}

uint64_t sub_2490D48A0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v38[-v8];
  v10 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsIncoming;
  result = swift_beginAccess();
  if (*(*(v1 + v10) + 16) || (v12 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsOutgoing, result = swift_beginAccess(), *(*(v1 + v12) + 16)))
  {
    v13 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorTimer;
    if (*(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorTimer))
    {
      return result;
    }

    if (qword_27EEDAFD0 != -1)
    {
      swift_once();
    }

    v14 = sub_24910C89C();
    __swift_project_value_buffer(v14, qword_27EEDAFD8);
    v15 = sub_24910C87C();
    v16 = sub_24910CF5C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_249083000, v15, v16, "Monitor timer start", v17, 2u);
      MEMORY[0x24C1F26F0](v17, -1, -1);
    }

    v18 = sub_24910C34C();
    v19 = sub_24910CDEC();
    v20 = *(v19 - 8);
    (*(v20 + 56))(v9, 1, 1, v19);
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = ObjectType;
    sub_2490A4674(v9, v7, &unk_27EED7B50, &qword_24910E810);
    if ((*(v20 + 48))(v7, 1, v19) == 1)
    {
      sub_2490A487C(v7, &unk_27EED7B50, &qword_24910E810);
    }

    else
    {
      sub_24910CDDC();
      (*(v20 + 8))(v7, v19);
    }

    v23 = sub_2490A46DC();
    v41 = 6;
    v42 = 0;
    v43 = v18;
    v44 = v23;

    v24 = v18;
    v25 = swift_task_create();
    sub_2490A487C(v9, &unk_27EED7B50, &qword_24910E810);

    v26 = *(v1 + v13);
    *(v1 + v13) = v25;

    v39 = sub_24910C58C();
    v40 = v27;
    MEMORY[0x24C1F1710](0x726F74696E6F6D2ELL, 0xED00004D4D4D482ELL);
    sub_24910CCAC();

    v28 = os_transaction_create();
  }

  else
  {
    v29 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorTimer;
    if (*(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorTimer))
    {
      v30 = qword_27EEDAFD0;
      v31 = *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorTimer);

      if (v30 != -1)
      {
        swift_once();
      }

      v32 = sub_24910C89C();
      __swift_project_value_buffer(v32, qword_27EEDAFD8);
      v33 = sub_24910C87C();
      v34 = sub_24910CF5C();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_249083000, v33, v34, "Monitor timer stop", v35, 2u);
        MEMORY[0x24C1F26F0](v35, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7B18, &qword_249110250);
      sub_24910CE3C();

      v36 = *(v1 + v29);
      *(v1 + v29) = 0;
    }

    v28 = 0;
  }

  v37 = *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorTransaction);
  *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorTransaction) = v28;
  return swift_unknownObjectRelease();
}

void sub_2490D4DC4(uint64_t a1, void *a2)
{
  v4 = sub_24910C2FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + *(type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0) + 24);
  v10 = sub_24910C85C();
  if (v11)
  {
    if (qword_27EEDAFD0 != -1)
    {
      swift_once();
    }

    v12 = sub_24910C89C();
    __swift_project_value_buffer(v12, qword_27EEDAFD8);
    v13 = a2;
    v28 = sub_24910C87C();
    v14 = sub_24910CF4C();

    if (os_log_type_enabled(v28, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v29 = v16;
      *v15 = 136315138;
      v17 = [v13 uniqueIdentifier];
      sub_24910C2CC();

      sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0]);
      v18 = sub_24910D50C();
      v20 = v19;
      (*(v5 + 8))(v8, v4);
      v21 = sub_24909F930(v18, v20, &v29);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_249083000, v28, v14, "### Monitor start failed: no monitorID, accessory=%s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x24C1F26F0](v16, -1, -1);
      MEMORY[0x24C1F26F0](v15, -1, -1);
    }

    else
    {
      v27 = v28;
    }
  }

  else
  {
    v22 = v10;
    if (qword_27EEDAFD0 != -1)
    {
      swift_once();
    }

    v23 = sub_24910C89C();
    __swift_project_value_buffer(v23, qword_27EEDAFD8);
    v24 = sub_24910C87C();
    v25 = sub_24910CF5C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = v22;
      _os_log_impl(&dword_249083000, v24, v25, "Monitor stop outgoing: monitorID=%llu", v26, 0xCu);
      MEMORY[0x24C1F26F0](v26, -1, -1);
    }

    swift_beginAccess();
    sub_2490D3A24(0, v22, &qword_27EED7F00, &qword_249110858);
    swift_endAccess();
    sub_2490D48A0();
  }
}

uint64_t DTTransportDaemon.handleMonitorStopAll(xpcConnection:)(uint64_t a1)
{
  v79 = a1;
  v2 = type metadata accessor for DTTransportDaemon.DTTransportRequest(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v76 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsOutgoing;
  swift_beginAccess();
  v81 = v1;
  v6 = *(v1 + v5);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  v75 = *MEMORY[0x277D05790];

  v12 = 0;
  *&v13 = 134217984;
  v74 = v13;
  while (v9)
  {
LABEL_9:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = (v12 << 9) | (8 * v15);
    v17 = *(v6 + 56);
    v80 = *(*(v6 + 48) + v16);
    v18 = *(v17 + v16);
    result = swift_weakLoadStrong();
    if (result)
    {
      v19 = result;

      if (v19 == v79)
      {
        v73 = v2;
        v77 = 0;
        if (qword_27EEDAFD0 != -1)
        {
          swift_once();
        }

        v20 = sub_24910C89C();
        __swift_project_value_buffer(v20, qword_27EEDAFD8);
        v21 = sub_24910C87C();
        v22 = sub_24910CF5C();
        v23 = os_log_type_enabled(v21, v22);
        v24 = v76;
        v78 = v5;
        if (v23)
        {
          v25 = swift_slowAlloc();
          *v25 = v74;
          *(v25 + 4) = v80;
          _os_log_impl(&dword_249083000, v21, v22, "Monitor stop: monitorID=%llu (XPC close)", v25, 0xCu);
          v26 = v25;
          v5 = v78;
          MEMORY[0x24C1F26F0](v26, -1, -1);
        }

        v27 = v81;
        swift_beginAccess();
        v28 = *(v27 + v5);
        v29 = sub_2490A0AB4(v80);
        if (v30)
        {
          v72 = v29;
          v31 = v81;
          v32 = v78;
          v33 = *(v81 + v78);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v35 = *(v31 + v32);
          v83 = v35;
          *(v31 + v32) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_2490F3E74(&qword_27EED7F00, &qword_249110858);
            v35 = v83;
          }

          v36 = v72;
          v37 = *(*(v35 + 56) + 8 * v72);

          sub_2490F2DC0(v36, v35);
          *(v81 + v32) = v35;
        }

        swift_endAccess();
        sub_24910C2EC();
        v2 = v73;
        v38 = *(v73 + 20);
        sub_24910C6CC();
        v39 = sub_24910C86C();
        (*(*(v39 - 8) + 104))(&v24[v38], v75, v39);
        v40 = &v24[*(v2 + 24)];
        *v40 = 0;
        *(v40 + 1) = 0;
        v24[*(v2 + 28)] = 2;
        v41 = v24;
        v42 = v24;
        v43 = v77;
        sub_2490D580C(v41, *(v18 + 16), nullsub_1, 0);
        if (v43)
        {
        }

        sub_2490FA7B0(v42, type metadata accessor for DTTransportDaemon.DTTransportRequest);

        v5 = v78;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_46;
    }

    if (v14 >= v10)
    {
      break;
    }

    v9 = *(v6 + 64 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_9;
    }
  }

  v77 = 0;

  v44 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsLocal;
  v45 = v81;
  swift_beginAccess();
  v46 = *(v45 + v44);
  v47 = 1 << *(v46 + 32);
  v48 = -1;
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  v49 = v48 & *(v46 + 64);
  v50 = (v47 + 63) >> 6;

  v51 = 0;
  while (v49)
  {
LABEL_35:
    v54 = __clz(__rbit64(v49));
    v49 &= v49 - 1;
    v55 = (v51 << 9) | (8 * v54);
    v56 = *(*(v46 + 48) + v55);
    v57 = *(*(v46 + 56) + v55);
    result = swift_weakLoadStrong();
    if (result)
    {
      v58 = result;

      if (v58 == v79)
      {
        v80 = v44;
        if (qword_27EEDAFD0 != -1)
        {
          swift_once();
        }

        v59 = sub_24910C89C();
        __swift_project_value_buffer(v59, qword_27EEDAFD8);
        v60 = sub_24910C87C();
        v61 = sub_24910CF5C();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = v74;
          *(v62 + 4) = v56;
          _os_log_impl(&dword_249083000, v60, v61, "Monitor stop: monitorID=%llu (XPC close)", v62, 0xCu);
          MEMORY[0x24C1F26F0](v62, -1, -1);
        }

        v44 = v80;
        v63 = v81;
        swift_beginAccess();
        v64 = *(v63 + v44);
        v65 = sub_2490A0AB4(v56);
        if (v66)
        {
          v67 = v65;
          v68 = v81;
          v69 = *(v81 + v44);
          v70 = swift_isUniquelyReferenced_nonNull_native();
          v71 = *(v68 + v44);
          v82 = v71;
          *(v68 + v44) = 0x8000000000000000;
          if (!v70)
          {
            sub_2490F3E74(&qword_27EED7EF8, &qword_249110850);
            v71 = v82;
          }

          v52 = *(*(v71 + 56) + 8 * v67);

          sub_2490F2DC0(v67, v71);
          *(v81 + v44) = v71;
        }

        swift_endAccess();
      }
    }
  }

  while (1)
  {
    v53 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    if (v53 >= v50)
    {

      return sub_2490D48A0();
    }

    v49 = *(v46 + 64 + 8 * v53);
    ++v51;
    if (v49)
    {
      v51 = v53;
      goto LABEL_35;
    }
  }

LABEL_46:
  __break(1u);
  return result;
}

void sub_2490D580C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v35 = a3;
  v7 = sub_24910C2FC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a2 device];
  if (v12 && (v13 = v12, v14 = [v12 hmmmMessageDestination], v13, (v34 = v14) != 0))
  {
    v15 = [a2 home];
    if (v15)
    {
      v16 = v15;
      v17 = *(v4 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__transportEncoder);
      type metadata accessor for DTTransportDaemon.DTTransportRequest(0);
      sub_2490FC158(&qword_27EEDB090);
      v18 = sub_24910BFBC();
      if (v5)
      {
      }

      else
      {
        v24 = v18;
        v25 = v19;
        v26 = sub_24910CE5C();
        v27 = [objc_allocWithZone(MEMORY[0x277CD1B50]) initWithTimeout:v26 transportRestriction:2];

        v28 = sub_24910CC8C();
        v29 = sub_24910C1CC();
        v30 = swift_allocObject();
        v31 = v42;
        *(v30 + 16) = v35;
        *(v30 + 24) = v31;
        v40 = sub_2490FC720;
        v41 = v30;
        aBlock = MEMORY[0x277D85DD0];
        v37 = 1107296256;
        v38 = sub_2490EAE90;
        v39 = &block_descriptor_170_0;
        v32 = _Block_copy(&aBlock);

        v33 = v34;
        [v16 sendModernMessagingRequestWithMessageName:v28 destination:v34 requestPayload:v29 options:v27 responseHandler:v32 completionHandler:0];
        _Block_release(v32);

        sub_2490A453C(v24, v25);
      }
    }

    else
    {
      sub_24910C7DC();
      aBlock = 0;
      v37 = 0xE000000000000000;
      sub_24910D25C();

      aBlock = 0xD00000000000001FLL;
      v37 = 0x8000000249111CC0;
      v22 = [a2 uniqueIdentifier];
      sub_24910C2CC();

      sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0]);
      v23 = sub_24910D50C();
      MEMORY[0x24C1F1710](v23);

      (*(v8 + 8))(v11, v7);
      sub_24910C7EC();
      swift_willThrow();
    }
  }

  else
  {
    sub_24910C7DC();
    aBlock = 0;
    v37 = 0xE000000000000000;
    sub_24910D25C();

    aBlock = 0xD000000000000021;
    v37 = 0x8000000249111C90;
    v20 = [a2 uniqueIdentifier];
    sub_24910C2CC();

    sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0]);
    v21 = sub_24910D50C();
    MEMORY[0x24C1F1710](v21);

    (*(v8 + 8))(v11, v7);
    sub_24910C7EC();
    swift_willThrow();
  }
}

uint64_t sub_2490D5D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  swift_getObjectType();
  v5 = sub_24910C68C();
  v4[14] = v5;
  v6 = *(v5 - 8);
  v4[15] = v6;
  v7 = *(v6 + 64) + 15;
  v4[16] = swift_task_alloc();
  v8 = *(*(sub_24910C4FC() - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v9 = sub_24910C73C();
  v4[18] = v9;
  v10 = *(v9 - 8);
  v4[19] = v10;
  v11 = *(v10 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v12 = sub_24910C86C();
  v4[23] = v12;
  v13 = *(v12 - 8);
  v4[24] = v13;
  v14 = *(v13 + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon);
  v16 = sub_24910CDAC();
  v4[27] = v16;
  v4[28] = v15;

  return MEMORY[0x2822009F8](sub_2490D5F30, v16, v15);
}

uint64_t sub_2490D5F30()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  v5 = *(v0 + 88);
  v6 = type metadata accessor for DTTransportDaemon.DTTransportRequest(0);
  *(v0 + 232) = v6;
  v7 = *(v6 + 20);
  *(v0 + 448) = v7;
  v8 = *(v4 + 16);
  v8(v1, v5 + v7, v3);
  v8(v2, v1, v3);
  v9 = (*(v4 + 88))(v2, v3);
  if (v9 == *MEMORY[0x277D057D8] || v9 == *MEMORY[0x277D057A8] || v9 == *MEMORY[0x277D05798])
  {
    v13 = *(v0 + 192);
    v12 = *(v0 + 200);
    v15 = *(v0 + 176);
    v14 = *(v0 + 184);
    v16 = *(v0 + 136);
    v17 = *(v0 + 88);
    v18 = *(v13 + 8);
    *(v0 + 240) = v18;
    *(v0 + 248) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v18(v12, v14);
    v19 = (v17 + *(v6 + 24));
    v20 = *v19;
    v21 = v19[1];

    sub_24910C4DC();
    sub_24910C70C();
    v22 = swift_task_alloc();
    *(v0 + 256) = v22;
    *v22 = v0;
    v23 = sub_2490D6770;
  }

  else if (v9 == *MEMORY[0x277D057A0] || v9 == *MEMORY[0x277D057B0])
  {
    v26 = *(v0 + 192);
    v25 = *(v0 + 200);
    v27 = *(v0 + 184);
    v28 = *(v26 + 8);
    *(v0 + 320) = v28;
    *(v0 + 328) = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v28(v25, v27);
    v22 = swift_task_alloc();
    *(v0 + 336) = v22;
    *v22 = v0;
    v23 = sub_2490D6ED4;
  }

  else
  {
    if (v9 == *MEMORY[0x277D057D0])
    {
      v31 = *(v0 + 200);
      v32 = *(v0 + 208);
      v33 = *(v0 + 184);
      v34 = *(v0 + 192);
      v35 = *(v0 + 80);
      (*(v34 + 96))(v31, v33);
      v37 = *v31;
      v36 = v31[1];
      v35[3] = sub_24910C65C();
      v35[4] = sub_2490F57CC(&unk_27EED8020, MEMORY[0x277D056B0]);
      __swift_allocate_boxed_opaque_existential_1(v35);
      sub_24910C64C();
      (*(v34 + 8))(v32, v33);
LABEL_21:
      v39 = *(v0 + 200);
      v38 = *(v0 + 208);
      v41 = *(v0 + 168);
      v40 = *(v0 + 176);
      v42 = *(v0 + 160);
      v44 = *(v0 + 128);
      v43 = *(v0 + 136);

      v45 = *(v0 + 8);
LABEL_22:

      return v45();
    }

    if (v9 == *MEMORY[0x277D057C0])
    {
      v46 = swift_task_alloc();
      *(v0 + 416) = v46;
      *v46 = v0;
      v46[1] = sub_2490D7744;
      v47 = *(v0 + 96);
      v48 = *(v0 + 104);
      v49 = *(v0 + 80);
      v50 = *(v0 + 88);

      return sub_2490D8638(v49, v50, v47);
    }

    if (v9 == *MEMORY[0x277D05790])
    {
      v51 = swift_task_alloc();
      *(v0 + 432) = v51;
      *v51 = v0;
      v51[1] = sub_2490D7960;
      v52 = *(v0 + 96);
      v53 = *(v0 + 104);
      v54 = *(v0 + 80);
      v55 = *(v0 + 88);

      return sub_2490D9204(v54, v55, v52);
    }

    if (v9 == *MEMORY[0x277D057B8])
    {
      v56 = *(v0 + 200);
      v93 = *(v0 + 208);
      v57 = *(v0 + 184);
      v58 = *(v0 + 192);
      v59 = *(v0 + 120);
      v60 = *(v0 + 128);
      v61 = *(v0 + 104);
      v62 = *(v0 + 112);
      v63 = *(v0 + 96);
      v64 = *(v0 + 80);
      (*(v58 + 96))(v56, v57);
      (*(v59 + 32))(v60, v56, v62);
      sub_2490D9FF8(v60, v63);
      v64[3] = sub_24910C63C();
      v64[4] = sub_2490F57CC(&qword_27EED7A68, MEMORY[0x277D056A0]);
      __swift_allocate_boxed_opaque_existential_1(v64);
      sub_24910C62C();
      (*(v59 + 8))(v60, v62);
      (*(v58 + 8))(v93, v57);
      goto LABEL_21;
    }

    if (v9 == *MEMORY[0x277D05780])
    {
      (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
LABEL_38:
      v65 = *(v0 + 208);
      v66 = *(v0 + 184);
      v67 = *(v0 + 192);
      sub_24910C7DC();
      sub_24910C7EC();
      swift_willThrow();
      (*(v67 + 8))(v65, v66);
      v69 = *(v0 + 200);
      v68 = *(v0 + 208);
      v71 = *(v0 + 168);
      v70 = *(v0 + 176);
      v72 = *(v0 + 160);
      v74 = *(v0 + 128);
      v73 = *(v0 + 136);

      v45 = *(v0 + 8);
      goto LABEL_22;
    }

    if (v9 == *MEMORY[0x277D05788])
    {
      goto LABEL_38;
    }

    if (v9 != *MEMORY[0x277D05778])
    {
      v83 = *(v0 + 208);
      if (v9 == *MEMORY[0x277D057C8])
      {
        v84 = *(v0 + 184);
        v85 = *(v0 + 192);
        v86 = *(v0 + 104);
        v87 = *(v0 + 80);
        sub_2490D9BF4(*(v0 + 96));
        v87[3] = sub_24910C63C();
        v87[4] = sub_2490F57CC(&qword_27EED7A68, MEMORY[0x277D056A0]);
        __swift_allocate_boxed_opaque_existential_1(v87);
        sub_24910C62C();
        (*(v85 + 8))(v83, v84);
      }

      else
      {
        v88 = *(v0 + 200);
        v89 = *(v0 + 184);
        v90 = *(v0 + 80);
        v91 = *(*(v0 + 192) + 8);
        v91(*(v0 + 208), v89);
        *(v90 + 32) = 0;
        *v90 = 0u;
        *(v90 + 16) = 0u;
        v91(v88, v89);
      }

      goto LABEL_21;
    }

    v75 = *(v0 + 160);
    v76 = *(v0 + 136);
    v77 = (*(v0 + 88) + *(v6 + 24));
    v79 = *v77;
    v78 = v77[1];

    sub_24910C4DC();
    sub_24910C70C();
    if (v78)
    {
      v80 = *(v0 + 104);
      sub_2490D8298(v79, v78);
      if (v81)
      {
        v82 = v81;
        sub_2490D36A8();
      }

      v92 = *(v0 + 160);
      sub_24910C72C();
    }

    v22 = swift_task_alloc();
    *(v0 + 376) = v22;
    *v22 = v0;
    v23 = sub_2490D7368;
  }

  v22[1] = v23;
  v29 = *(v0 + 104);

  return sub_2490CEEA0();
}

uint64_t sub_2490D6770(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 256);
  v6 = *v2;
  v4[33] = a1;
  v4[34] = v1;

  if (v1)
  {
    v7 = v4[27];
    v8 = v4[28];

    return MEMORY[0x2822009F8](sub_2490D7E4C, v7, v8);
  }

  else
  {
    v9 = swift_task_alloc();
    v4[35] = v9;
    *v9 = v6;
    v9[1] = sub_2490D68FC;
    v10 = v4[26];
    v11 = v4[22];

    return DTTimerDaemon.handleRequest(_:context:)((v4 + 2), v10, v11);
  }
}

uint64_t sub_2490D68FC()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  v5 = v2[33];

  v6 = v2[28];
  v7 = v2[27];
  if (v0)
  {
    v8 = sub_2490D7F30;
  }

  else
  {
    v8 = sub_2490D6A50;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2490D6A50()
{
  v1 = *(*(v0 + 88) + *(*(v0 + 232) + 28));
  if (v1 != 2 && (v1 & 1) != 0 && (v2 = *(v0 + 104), Strong = swift_weakLoadStrong(), (*(v0 + 296) = Strong) != 0))
  {
    *(v0 + 304) = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_syncDaemon;
    type metadata accessor for DTDaemon();
    sub_2490F57CC(&unk_27EED7F50, type metadata accessor for DTDaemon);
    v5 = sub_24910CDAC();

    return MEMORY[0x2822009F8](sub_2490D6C14, v5, v4);
  }

  else
  {
    v7 = *(v0 + 240);
    v6 = *(v0 + 248);
    v8 = *(v0 + 208);
    v9 = *(v0 + 184);
    v10 = *(v0 + 80);
    (*(*(v0 + 152) + 8))(*(v0 + 176), *(v0 + 144));
    v7(v8, v9);
    sub_2490FC19C((v0 + 16), v10);
    v12 = *(v0 + 200);
    v11 = *(v0 + 208);
    v14 = *(v0 + 168);
    v13 = *(v0 + 176);
    v15 = *(v0 + 160);
    v17 = *(v0 + 128);
    v16 = *(v0 + 136);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_2490D6C14()
{
  v1 = v0[37];
  v2 = v0[38];
  swift_beginAccess();
  v0[39] = *(v1 + v2);
  v3 = v0[27];
  v4 = v0[28];

  return MEMORY[0x2822009F8](sub_2490D6CA8, v3, v4);
}

uint64_t sub_2490D6CA8()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 296);

  if (v1)
  {
    v3 = *(v0 + 312);
    type metadata accessor for DTSyncDaemon();
    sub_2490F57CC(&qword_27EED7578, type metadata accessor for DTSyncDaemon);
    v5 = sub_24910CDAC();

    return MEMORY[0x2822009F8](sub_2490D6E3C, v5, v4);
  }

  else
  {
    v7 = *(v0 + 240);
    v6 = *(v0 + 248);
    v8 = *(v0 + 208);
    v9 = *(v0 + 184);
    v10 = *(v0 + 80);
    (*(*(v0 + 152) + 8))(*(v0 + 176), *(v0 + 144));
    v7(v8, v9);
    sub_2490FC19C((v0 + 16), v10);
    v12 = *(v0 + 200);
    v11 = *(v0 + 208);
    v14 = *(v0 + 168);
    v13 = *(v0 + 176);
    v15 = *(v0 + 160);
    v17 = *(v0 + 128);
    v16 = *(v0 + 136);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_2490D6E3C()
{
  v1 = v0[39];
  v2 = v0[36];
  DTSyncDaemon.handleRequest(_:context:)(v0[26], v0[22]);
  if (v2)
  {

    v3 = v0[27];
    v4 = v0[28];
    v5 = sub_2490D8014;
  }

  else
  {
    v3 = v0[27];
    v4 = v0[28];
    v5 = sub_2490FC800;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2490D6ED4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 336);
  v6 = *v2;
  *(v4 + 344) = a1;
  *(v4 + 352) = v1;

  v7 = *(v3 + 224);
  v8 = *(v3 + 216);
  if (v1)
  {
    v9 = sub_2490D8108;
  }

  else
  {
    v9 = sub_2490D7018;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_2490D7018()
{
  v1 = v0[21];
  v2 = v0[17];
  v3 = (v0[11] + *(v0[29] + 24));
  v4 = *v3;
  v5 = v3[1];

  sub_24910C4DC();
  sub_24910C70C();
  v6 = swift_task_alloc();
  v0[45] = v6;
  *v6 = v0;
  v6[1] = sub_2490D7104;
  v7 = v0[43];
  v8 = v0[26];
  v9 = v0[21];
  v10 = v0[10];

  return DTTimerDaemon.handleRequest(_:context:)(v10, v8, v9);
}

uint64_t sub_2490D7104()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v4 = *v1;
  *(*v1 + 368) = v0;

  v5 = v2[43];
  (*(v2[19] + 8))(v2[21], v2[18]);

  v6 = v2[28];
  v7 = v2[27];
  if (v0)
  {
    v8 = sub_2490D81D0;
  }

  else
  {
    v8 = sub_2490D72A8;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2490D72A8()
{
  v1 = *(v0 + 328);
  (*(v0 + 320))(*(v0 + 208), *(v0 + 184));
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v5 = *(v0 + 168);
  v4 = *(v0 + 176);
  v6 = *(v0 + 160);
  v8 = *(v0 + 128);
  v7 = *(v0 + 136);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2490D7368(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 376);
  v6 = *v2;
  *(v4 + 384) = a1;
  *(v4 + 392) = v1;

  if (v1)
  {
    v7 = *(v4 + 216);
    v8 = *(v4 + 224);

    return MEMORY[0x2822009F8](sub_2490D7A9C, v7, v8);
  }

  else
  {
    v9 = *(v4 + 448);
    v10 = *(v4 + 88);
    v11 = swift_task_alloc();
    *(v4 + 400) = v11;
    *v11 = v6;
    v11[1] = sub_2490D7508;
    v12 = *(v4 + 160);
    v13 = *(v4 + 80);

    return DTTimerDaemon.handleRequest(_:context:)(v13, v10 + v9, v12);
  }
}

uint64_t sub_2490D7508()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v4 = *v1;
  *(*v1 + 408) = v0;

  v5 = v2[48];

  v6 = v2[28];
  v7 = v2[27];
  if (v0)
  {
    v8 = sub_2490D7B8C;
  }

  else
  {
    v8 = sub_2490D765C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2490D765C()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  (*(v0[19] + 8))(v0[20], v0[18]);
  (*(v3 + 8))(v1, v2);
  v5 = v0[25];
  v4 = v0[26];
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[20];
  v10 = v0[16];
  v9 = v0[17];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2490D7744()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v4 = *v1;
  *(*v1 + 424) = v0;

  v5 = *(v2 + 224);
  v6 = *(v2 + 216);
  if (v0)
  {
    v7 = sub_2490D7C7C;
  }

  else
  {
    v7 = sub_2490D7880;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2490D7880()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = *(v0[24] + 8);
  v3(v0[26], v2);
  v3(v1, v2);
  v5 = v0[25];
  v4 = v0[26];
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[20];
  v10 = v0[16];
  v9 = v0[17];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2490D7960()
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v4 = *v1;
  *(*v1 + 440) = v0;

  v5 = *(v2 + 224);
  v6 = *(v2 + 216);
  if (v0)
  {
    v7 = sub_2490D7D64;
  }

  else
  {
    v7 = sub_2490FC83C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2490D7A9C()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  (*(v0[19] + 8))(v0[20], v0[18]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[49];
  v6 = v0[25];
  v5 = v0[26];
  v8 = v0[21];
  v7 = v0[22];
  v9 = v0[20];
  v11 = v0[16];
  v10 = v0[17];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2490D7B8C()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  (*(v0[19] + 8))(v0[20], v0[18]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[51];
  v6 = v0[25];
  v5 = v0[26];
  v8 = v0[21];
  v7 = v0[22];
  v9 = v0[20];
  v11 = v0[16];
  v10 = v0[17];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2490D7C7C()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = *(v0[24] + 8);
  v3(v0[26], v2);
  v3(v1, v2);
  v4 = v0[53];
  v6 = v0[25];
  v5 = v0[26];
  v8 = v0[21];
  v7 = v0[22];
  v9 = v0[20];
  v11 = v0[16];
  v10 = v0[17];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2490D7D64()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = *(v0[24] + 8);
  v3(v0[26], v2);
  v3(v1, v2);
  v4 = v0[55];
  v6 = v0[25];
  v5 = v0[26];
  v8 = v0[21];
  v7 = v0[22];
  v9 = v0[20];
  v11 = v0[16];
  v10 = v0[17];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2490D7E4C()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[26];
  v4 = v0[23];
  (*(v0[19] + 8))(v0[22], v0[18]);
  v2(v3, v4);
  v5 = v0[34];
  v7 = v0[25];
  v6 = v0[26];
  v9 = v0[21];
  v8 = v0[22];
  v10 = v0[20];
  v12 = v0[16];
  v11 = v0[17];

  v13 = v0[1];

  return v13();
}

uint64_t sub_2490D7F30()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[26];
  v4 = v0[23];
  (*(v0[19] + 8))(v0[22], v0[18]);
  v2(v3, v4);
  v5 = v0[36];
  v7 = v0[25];
  v6 = v0[26];
  v9 = v0[21];
  v8 = v0[22];
  v10 = v0[20];
  v12 = v0[16];
  v11 = v0[17];

  v13 = v0[1];

  return v13();
}

uint64_t sub_2490D8014()
{
  v1 = *(v0 + 312);

  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 208);
  v5 = *(v0 + 184);
  v6 = *(v0 + 80);
  (*(*(v0 + 152) + 8))(*(v0 + 176), *(v0 + 144));
  v3(v4, v5);
  sub_2490FC19C((v0 + 16), v6);
  v8 = *(v0 + 200);
  v7 = *(v0 + 208);
  v10 = *(v0 + 168);
  v9 = *(v0 + 176);
  v11 = *(v0 + 160);
  v13 = *(v0 + 128);
  v12 = *(v0 + 136);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_2490D8108()
{
  v1 = *(v0 + 328);
  (*(v0 + 320))(*(v0 + 208), *(v0 + 184));
  v2 = *(v0 + 352);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  v7 = *(v0 + 160);
  v9 = *(v0 + 128);
  v8 = *(v0 + 136);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2490D81D0()
{
  v1 = *(v0 + 328);
  (*(v0 + 320))(*(v0 + 208), *(v0 + 184));
  v2 = *(v0 + 368);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  v7 = *(v0 + 160);
  v9 = *(v0 + 128);
  v8 = *(v0 + 136);

  v10 = *(v0 + 8);

  return v10();
}

void sub_2490D8298(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v41 = a1;
  v39 = sub_24910C2FC();
  v3 = *(v39 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v39);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager);
  if (v7)
  {
    v8 = [v7 homes];
    sub_2490A4744(0, &unk_27EED7FB0, 0x277CD1A60);
    v9 = sub_24910CD5C();

    if (!(v9 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        goto LABEL_4;
      }

LABEL_28:

      return;
    }
  }

  v10 = sub_24910D19C();
  if (!v10)
  {
    goto LABEL_28;
  }

LABEL_4:
  v11 = 0;
  v12 = v9 & 0xC000000000000001;
  v30 = v9 + 32;
  v31 = v9 & 0xFFFFFFFFFFFFFF8;
  v13 = (v3 + 8);
  v33 = v10;
  v34 = v9;
  v32 = v9 & 0xC000000000000001;
  while (1)
  {
    if (v12)
    {
      v14 = MEMORY[0x24C1F1C90](v11, v9);
    }

    else
    {
      if (v11 >= *(v31 + 16))
      {
        goto LABEL_34;
      }

      v14 = *(v30 + 8 * v11);
    }

    v15 = v14;
    v16 = __OFADD__(v11, 1);
    v17 = v11 + 1;
    if (v16)
    {
      break;
    }

    v18 = [v14 accessories];
    sub_2490A4744(0, &qword_27EED7B10, 0x277CD1650);
    v19 = sub_24910CD5C();

    v35 = v17;
    v36 = v15;
    if (v19 >> 62)
    {
      v20 = sub_24910D19C();
      if (v20)
      {
LABEL_13:
        v21 = 0;
        v37 = v19 & 0xFFFFFFFFFFFFFF8;
        v38 = v19 & 0xC000000000000001;
        while (1)
        {
          if (v38)
          {
            v22 = MEMORY[0x24C1F1C90](v21, v19);
          }

          else
          {
            if (v21 >= *(v37 + 16))
            {
              goto LABEL_32;
            }

            v22 = *(v19 + 8 * v21 + 32);
          }

          v23 = v22;
          v24 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          v25 = [v22 uniqueIdentifier];
          sub_24910C2CC();

          v26 = sub_24910C28C();
          v28 = v27;
          (*v13)(v6, v39);
          if (v26 == v41 && v28 == v40)
          {

            return;
          }

          v29 = sub_24910D54C();

          if (v29)
          {

            return;
          }

          ++v21;
          if (v24 == v20)
          {
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
        break;
      }
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        goto LABEL_13;
      }
    }

LABEL_5:

    v9 = v34;
    v11 = v35;
    v12 = v32;
    if (v35 == v33)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_2490D8638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  swift_getObjectType();
  v5 = *(*(sub_24910C4FC() - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v6 = sub_24910C73C();
  v4[17] = v6;
  v7 = *(v6 - 8);
  v4[18] = v7;
  v8 = *(v7 + 64) + 15;
  v4[19] = swift_task_alloc();
  sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon);
  v10 = sub_24910CDAC();
  v4[20] = v10;
  v4[21] = v9;

  return MEMORY[0x2822009F8](sub_2490D877C, v10, v9);
}

uint64_t sub_2490D877C()
{
  v1 = *(v0 + 104);
  v2 = type metadata accessor for DTTransportDaemon.DTTransportRequest(0);
  *(v0 + 240) = *(v2 + 20);
  *(v0 + 176) = sub_24910C85C();
  if (v3)
  {
    sub_24910C7DC();
    sub_24910C7EC();
    swift_willThrow();
    v4 = *(v0 + 152);
    v5 = *(v0 + 128);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 152);
    v9 = *(v0 + 128);
    v10 = (*(v0 + 104) + *(v2 + 24));
    v11 = *v10;
    *(v0 + 184) = *v10;
    v12 = v10[1];
    *(v0 + 192) = v12;

    sub_24910C4DC();
    sub_24910C70C();
    if (v12)
    {
      v13 = *(v0 + 120);
      sub_2490D8298(v11, v12);
      if (v14)
      {
        v15 = v14;
        sub_2490D36A8();
      }

      v16 = *(v0 + 152);
      sub_24910C72C();
    }

    v17 = swift_task_alloc();
    *(v0 + 200) = v17;
    *v17 = v0;
    v17[1] = sub_2490D8958;
    v18 = *(v0 + 120);

    return sub_2490CEEA0();
  }
}

uint64_t sub_2490D8958(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *v2;
  *(v4 + 208) = a1;
  *(v4 + 216) = v1;

  if (v1)
  {
    v7 = *(v4 + 160);
    v8 = *(v4 + 168);

    return MEMORY[0x2822009F8](sub_2490D90F4, v7, v8);
  }

  else
  {
    v9 = *(v4 + 240);
    v10 = *(v4 + 104);
    v11 = swift_task_alloc();
    *(v4 + 224) = v11;
    *v11 = v6;
    v11[1] = sub_2490D8AF8;
    v12 = *(v4 + 152);

    return DTTimerDaemon.handleRequest(_:context:)(v4 + 16, v10 + v9, v12);
  }
}

uint64_t sub_2490D8AF8()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = v0;

  v5 = v2[26];

  v6 = v2[21];
  v7 = v2[20];
  if (v0)
  {
    v8 = sub_2490D917C;
  }

  else
  {
    v8 = sub_2490D8C4C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2490D8C4C()
{
  v48 = v0;
  v1 = *(v0 + 192);
  if (v1)
  {
    v2 = *(v0 + 120);
    sub_2490D8298(*(v0 + 184), v1);
    v4 = v3;
    v5 = v3;
  }

  else
  {
    v4 = 0;
  }

  v6 = *(v0 + 176);
  v7 = *(v0 + 112);
  v8 = *(v0 + 120);
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  v43 = v4;
  v45 = v4;
  v10 = [v7 peerDestination];

  v11 = sub_24910C4AC();
  type metadata accessor for DTTransportDaemon.DTTransportMonitorInfoIncoming();
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = sub_2490FC1F4;
  v12[4] = v9;
  v12[5] = v6;
  v12[6] = v11;
  v44 = v10;
  v13 = [v10 idsIdentifier];
  v14 = sub_24910CC9C();
  v16 = v15;

  v46 = v14;
  v47 = v16;
  MEMORY[0x24C1F1710](45, 0xE100000000000000);
  *(v0 + 80) = v6;
  v17 = sub_24910D50C();
  MEMORY[0x24C1F1710](v17);

  v19 = v46;
  v18 = v47;
  v20 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsIncoming;
  swift_beginAccess();

  v21 = *(v8 + v20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = *(v8 + v20);
  *(v8 + v20) = 0x8000000000000000;
  sub_2490F36B4(v12, v19, v18, isUniquelyReferenced_nonNull_native);

  *(v8 + v20) = v46;
  swift_endAccess();
  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v23 = sub_24910C89C();
  __swift_project_value_buffer(v23, qword_27EEDAFD8);

  v24 = sub_24910C87C();
  v25 = sub_24910CF5C();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v46 = v27;
    *v26 = 136315394;
    v28 = sub_24909F930(v19, v18, &v46);

    *(v26 + 4) = v28;
    *(v26 + 12) = 2080;
    if (v43)
    {
      v29 = sub_2490D36A8();

      *(v0 + 88) = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7B38, &unk_249110268);
      sub_2490FAC70(&unk_27EED7B40, &qword_27EED7B38, &unk_249110268);
      v30 = sub_24910CC5C();
      v32 = v31;
      v33 = v45;
    }

    else
    {
      v32 = 0xE300000000000000;
      v30 = 7104878;
      v33 = v45;
    }

    v34 = sub_24909F930(v30, v32, &v46);

    *(v26 + 14) = v34;
    _os_log_impl(&dword_249083000, v24, v25, "monitor start incoming: monitorID=%s, targets=[%s]", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v27, -1, -1);
    MEMORY[0x24C1F26F0](v26, -1, -1);
  }

  else
  {
    v33 = v45;
  }

  v36 = *(v0 + 144);
  v35 = *(v0 + 152);
  v38 = *(v0 + 128);
  v37 = *(v0 + 136);
  v39 = *(v0 + 120);
  v40 = *(v0 + 96);
  sub_2490D48A0();

  (*(v36 + 8))(v35, v37);
  sub_2490FC19C((v0 + 16), v40);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_2490D90F4()
{
  (*(v0[18] + 8))(v0[19], v0[17]);
  v1 = v0[27];
  v2 = v0[19];
  v3 = v0[16];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2490D917C()
{
  (*(v0[18] + 8))(v0[19], v0[17]);
  v1 = v0[29];
  v2 = v0[19];
  v3 = v0[16];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2490D9204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  swift_getObjectType();
  v5 = *(*(sub_24910C4FC() - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v6 = sub_24910C73C();
  v4[11] = v6;
  v7 = *(v6 - 8);
  v4[12] = v7;
  v8 = *(v7 + 64) + 15;
  v4[13] = swift_task_alloc();
  sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon);
  v10 = sub_24910CDAC();
  v4[14] = v10;
  v4[15] = v9;

  return MEMORY[0x2822009F8](sub_2490D9348, v10, v9);
}

uint64_t sub_2490D9348()
{
  v30 = v0;
  v1 = *(v0 + 56);
  v2 = type metadata accessor for DTTransportDaemon.DTTransportRequest(0);
  *(v0 + 128) = v2;
  *(v0 + 184) = *(v2 + 20);
  v3 = sub_24910C85C();
  if (v4)
  {
    sub_24910C7DC();
    sub_24910C7EC();
    swift_willThrow();
    v5 = *(v0 + 104);
    v6 = *(v0 + 80);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = v3;
    v10 = *(v0 + 72);
    v11 = [*(v0 + 64) peerDestination];
    *(v0 + 136) = v11;
    v12 = [v11 idsIdentifier];
    v13 = sub_24910CC9C();
    v15 = v14;

    v28 = v13;
    v29 = v15;
    MEMORY[0x24C1F1710](45, 0xE100000000000000);
    *(v0 + 40) = v9;
    v16 = sub_24910D50C();
    MEMORY[0x24C1F1710](v16);

    v18 = v28;
    v17 = v29;
    swift_beginAccess();

    sub_2490D3E50(0, v28, v29);
    swift_endAccess();
    if (qword_27EEDAFD0 != -1)
    {
      swift_once();
    }

    v19 = sub_24910C89C();
    __swift_project_value_buffer(v19, qword_27EEDAFD8);

    v20 = sub_24910C87C();
    v21 = sub_24910CF5C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28 = v23;
      *v22 = 136315138;
      v24 = sub_24909F930(v18, v17, &v28);

      *(v22 + 4) = v24;
      _os_log_impl(&dword_249083000, v20, v21, "monitor stop incoming: monitorID=%s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x24C1F26F0](v23, -1, -1);
      MEMORY[0x24C1F26F0](v22, -1, -1);
    }

    else
    {
    }

    v25 = *(v0 + 72);
    sub_2490D48A0();
    v26 = swift_task_alloc();
    *(v0 + 144) = v26;
    *v26 = v0;
    v26[1] = sub_2490D96A8;
    v27 = *(v0 + 72);

    return sub_2490CEEA0();
  }
}

uint64_t sub_2490D96A8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  *(v4 + 152) = a1;
  *(v4 + 160) = v1;

  v7 = *(v3 + 120);
  v8 = *(v3 + 112);
  if (v1)
  {
    v9 = sub_2490D9B04;
  }

  else
  {
    v9 = sub_2490D97EC;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_2490D97EC()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = (v4 + *(*(v0 + 128) + 24));
  v6 = *v5;
  v7 = v5[1];

  sub_24910C4DC();
  sub_24910C70C();
  v8 = swift_task_alloc();
  *(v0 + 168) = v8;
  *v8 = v0;
  v8[1] = sub_2490D98E4;
  v9 = *(v0 + 152);
  v10 = *(v0 + 104);
  v11 = *(v0 + 48);

  return DTTimerDaemon.handleRequest(_:context:)(v11, v4 + v1, v10);
}

uint64_t sub_2490D98E4()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = v2[19];
  (*(v2[12] + 8))(v2[13], v2[11]);

  v6 = v2[15];
  v7 = v2[14];
  if (v0)
  {
    v8 = sub_2490D9B7C;
  }

  else
  {
    v8 = sub_2490D9A88;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2490D9A88()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2490D9B04()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2490D9B7C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);

  v4 = *(v0 + 8);

  return v4();
}

void sub_2490D9BF4(void *a1)
{
  v2 = v1;
  v3 = [a1 peerDestination];
  v4 = [v3 idsIdentifier];

  v5 = sub_24910CC9C();
  v7 = v6;

  if (qword_27EEDAFD0 != -1)
  {
LABEL_30:
    swift_once();
  }

  v8 = sub_24910C89C();
  __swift_project_value_buffer(v8, qword_27EEDAFD8);

  v9 = sub_24910C87C();
  v10 = sub_24910CF5C();

  v37 = v5;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v39 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_24909F930(v37, v7, &v39);
    _os_log_impl(&dword_249083000, v9, v10, "Received monitor keepalive: from:%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    v13 = v12;
    v5 = v37;
    MEMORY[0x24C1F26F0](v13, -1, -1);
    MEMORY[0x24C1F26F0](v11, -1, -1);
  }

  v14 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsIncoming;
  swift_beginAccess();
  v2 = *(v2 + v14);
  v15 = 1 << *(v2 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v2 + 64);
  v18 = (v15 + 63) >> 6;

  v19 = 0;
  v20 = 0;
  do
  {
    v36 = v19;
    v21 = v20;
    if (!v17)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v20 = v21;
LABEL_12:
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v23 = *(*(v2 + 56) + ((v20 << 9) | (8 * v22)));
      v24 = *(v23 + 16);

      v25 = [v24 idsIdentifier];
      v26 = sub_24910CC9C();
      v28 = v27;

      v5 = v37;
      if (v37 == v26 && v7 == v28)
      {
        break;
      }

      v30 = sub_24910D54C();

      if (v30)
      {
        goto LABEL_20;
      }

      v21 = v20;
      if (!v17)
      {
LABEL_9:
        while (1)
        {
          v20 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v20 >= v18)
          {
            goto LABEL_23;
          }

          v17 = *(v2 + 64 + 8 * v20);
          ++v21;
          if (v17)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        goto LABEL_30;
      }
    }

LABEL_20:
    *(v23 + 48) = sub_24910C4AC();

    v19 = v36 + 1;
  }

  while (!__OFADD__(v36, 1));
  __break(1u);
LABEL_23:

  if (v36)
  {
  }

  else
  {

    v31 = sub_24910C87C();
    v32 = sub_24910CF5C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v38 = v34;
      *v33 = 136315138;
      v35 = sub_24909F930(v5, v7, &v38);

      *(v33 + 4) = v35;
      _os_log_impl(&dword_249083000, v31, v32, "Received monitor keepalive: no monitors, from:%s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x24C1F26F0](v34, -1, -1);
      MEMORY[0x24C1F26F0](v33, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_2490D9FF8(uint64_t isEscapingClosureAtFileLocation, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7900, &qword_24910EB50);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v67 = v62 - v11;
  v12 = sub_24910C68C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a2 peerDestination];
  v18 = [v17 idsIdentifier];

  v69 = sub_24910CC9C();
  v20 = v19;

  if (qword_27EEDAFD0 != -1)
  {
LABEL_33:
    swift_once();
  }

  v21 = sub_24910C89C();
  __swift_project_value_buffer(v21, qword_27EEDAFD8);
  v22 = *(v13 + 16);
  v71 = isEscapingClosureAtFileLocation;
  v22(v16, isEscapingClosureAtFileLocation, v12);

  v23 = sub_24910C87C();
  isEscapingClosureAtFileLocation = sub_24910CF5C();

  v24 = os_log_type_enabled(v23, isEscapingClosureAtFileLocation);
  v68 = v10;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v70 = v3;
    v26 = v25;
    v27 = swift_slowAlloc();
    v74[0] = v27;
    *v26 = 136315394;
    sub_2490F57CC(&qword_27EED80E0, MEMORY[0x277D056B8]);
    v28 = sub_24910D50C();
    v30 = v29;
    (*(v13 + 8))(v16, v12);
    v31 = sub_24909F930(v28, v30, v74);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_24909F930(v69, v20, v74);
    _os_log_impl(&dword_249083000, v23, isEscapingClosureAtFileLocation, "Received monitor event: %s, from:%s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v27, -1, -1);
    v32 = v26;
    v3 = v70;
    MEMORY[0x24C1F26F0](v32, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  v12 = v20;
  v33 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsOutgoing;
  swift_beginAccess();
  v16 = *(v3 + v33);
  v10 = v16 + 64;
  v34 = 1 << v16[32];
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v16 + 8);
  v3 = (v34 + 63) >> 6;

  v37 = 0;
  v64 = 0;
  v65 = v20;
  v66 = v16;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (!v36)
        {
          while (1)
          {
            v13 = v37 + 1;
            if (__OFADD__(v37, 1))
            {
              break;
            }

            if (v13 >= v3)
            {
            }

            v36 = *&v10[8 * v13];
            ++v37;
            if (v36)
            {
              goto LABEL_15;
            }
          }

          __break(1u);
          goto LABEL_33;
        }

        v13 = v37;
LABEL_15:
        v38 = __clz(__rbit64(v36));
        v36 &= v36 - 1;
        v39 = (v13 << 9) | (8 * v38);
        v40 = *(*(v16 + 6) + v39);
        v20 = *(*(v16 + 7) + v39);

        if (v40 != sub_24910C67C())
        {
          goto LABEL_9;
        }

        v41 = v20[2];

        v42 = [v41 device];
        if (!v42)
        {

          goto LABEL_9;
        }

        v43 = v42;
        v44 = [v42 idsIdentifier];

        v70 = v20;
        if (v44)
        {
          v45 = v68;
          sub_24910C2CC();

          v46 = 0;
        }

        else
        {
          v46 = 1;
          v45 = v68;
        }

        v47 = sub_24910C2FC();
        v48 = *(v47 - 8);
        (*(v48 + 56))(v45, v46, 1, v47);
        v49 = v45;
        v50 = v67;
        isEscapingClosureAtFileLocation = &qword_27EED7900;
        v20 = &qword_24910EB50;
        sub_2490B3868(v49, v67, &qword_27EED7900, &qword_24910EB50);
        if ((*(v48 + 48))(v50, 1, v47) != 1)
        {
          break;
        }

        sub_2490A487C(v50, &qword_27EED7900, &qword_24910EB50);
        v12 = v65;

        v37 = v13;
        v16 = v66;
      }

      isEscapingClosureAtFileLocation = sub_24910C28C();
      v52 = v51;
      (*(v48 + 8))(v50, v47);
      v12 = v65;
      if (v69 == isEscapingClosureAtFileLocation && v65 == v52)
      {

        v20 = v70;
        v53 = v71;
        v16 = v66;
      }

      else
      {
        v54 = sub_24910D54C();

        v20 = v70;
        v53 = v71;
        v16 = v66;
        if ((v54 & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        break;
      }

LABEL_9:

      v37 = v13;
    }

    v62[1] = v62;
    v56 = MEMORY[0x28223BE20](Strong);
    v60 = v53;
    type metadata accessor for DTXPCConnection();
    sub_2490F57CC(&qword_27EED8190, type metadata accessor for DTXPCConnection);
    v63 = v56;
    sub_24910CDAC();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      goto LABEL_36;
    }

    v57 = swift_allocObject();
    *(v57 + 16) = sub_2490FC224;
    *(v57 + 24) = &v62[-4];
    v58 = swift_allocObject();
    *(v58 + 16) = sub_2490FC890;
    *(v58 + 24) = v57;

    v20 = v64;
    v73[0] = v63;
    sub_2490FC724(v73);
    v64 = v20;
    if (v20)
    {
      goto LABEL_35;
    }

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      break;
    }

    v37 = v13;
  }

  __break(1u);
LABEL_35:

  swift_isEscapingClosureAtFileLocation();

  __break(1u);
LABEL_36:
  v73[0] = 0;
  v73[1] = 0xE000000000000000;
  sub_24910D25C();
  MEMORY[0x24C1F1710](0xD00000000000003FLL, 0x80000002491114D0);
  v72 = v63;
  sub_24910D32C();
  MEMORY[0x24C1F1710](46, 0xE100000000000000);
  v61 = 0;
  v60 = 303;
  result = sub_24910D33C();
  __break(1u);
  return result;
}

void sub_2490DA8C0()
{
  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v0 = sub_24910C89C();
  __swift_project_value_buffer(v0, qword_27EEDAFD8);
  oslog = sub_24910C87C();
  v1 = sub_24910CF5C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_249083000, oslog, v1, "XPC launch event", v2, 2u);
    MEMORY[0x24C1F26F0](v2, -1, -1);
  }
}

uint64_t sub_2490DA9A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = sub_24910C34C();
    v10 = sub_24910CDEC();
    v11 = *(v10 - 8);
    (*(v11 + 56))(v6, 1, 1, v10);
    sub_2490A4674(v6, v4, &unk_27EED7B50, &qword_24910E810);
    v12 = (*(v11 + 48))(v4, 1, v10);

    if (v12 == 1)
    {
      sub_2490A487C(v4, &unk_27EED7B50, &qword_24910E810);
    }

    else
    {
      sub_24910CDDC();
      (*(v11 + 8))(v4, v10);
    }

    v13 = sub_2490A46DC();
    v14 = swift_allocObject();
    *(v14 + 16) = &unk_2491109A8;
    *(v14 + 24) = v8;
    v16[1] = 6;
    v16[2] = 0;
    v16[3] = v9;
    v16[4] = v13;

    v15 = v9;
    swift_task_create();
    sub_2490A487C(v6, &unk_27EED7B50, &qword_24910E810);
  }

  return result;
}

uint64_t sub_2490DAC38(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  swift_getObjectType();
  sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon);
  v4 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490DACF4, v4, v3);
}

uint64_t sub_2490DACF4()
{
  v1 = *(v0 + 16);
  if (*(v1 + 24))
  {
    v2 = *(v1 + 24);

    v3 = sub_24910C40C();
  }

  else
  {
    v3 = 0;
  }

  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v4 = sub_24910C89C();
  __swift_project_value_buffer(v4, qword_27EEDAFD8);
  v5 = sub_24910C87C();
  v6 = sub_24910CF5C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = v3;
    _os_log_impl(&dword_249083000, v5, v6, "Diagnostic flags: state=%llu", v7, 0xCu);
    MEMORY[0x24C1F26F0](v7, -1, -1);
  }

  if ((v3 & 1) == 0)
  {
    v8 = 0;
    goto LABEL_17;
  }

  if ((v3 & 2) != 0)
  {
    if ((v3 & 4) == 0)
    {
      v8 = 1;
      if ((v3 & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v8 = 3;
    if ((v3 & 8) != 0)
    {
LABEL_16:
      v8 |= 4uLL;
    }
  }

  else
  {
    if ((v3 & 4) == 0)
    {
      v8 = 0;
      if ((v3 & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v8 = 2;
    if ((v3 & 8) != 0)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
  v9 = v1 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__statusFlagsOverride;
  *v9 = v8;
  *(v9 + 8) = (v3 & 1) == 0;
  sub_2490DAEB4();
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2490DAEB4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__statusFlags;
  swift_beginAccess();
  v3 = (v0 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__statusFlagsOverride);
  v4 = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__statusFlagsOverride + 8);
  v5 = *(v0 + v2);
  if (v4 == 1)
  {
    v6 = *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager);
    if (v6)
    {
      if (([v6 hasOptedToHH2] & ((v5 & 2) == 0)) != 0)
      {
        v7 = v5 | 6;
      }

      else
      {
        v7 = v5 | 4;
      }

      if (v7 == *(v1 + v2))
      {
        return v7;
      }
    }

    else
    {
      if (v5)
      {
        v7 = v5 | 4;
      }

      else
      {
        v7 = v5 | 5;
      }

      if (v7 == v5)
      {
        return v7;
      }
    }
  }

  else
  {
    v7 = *v3;
    if (*v3 == v5)
    {
      return v7;
    }
  }

  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v8 = sub_24910C89C();
  __swift_project_value_buffer(v8, qword_27EEDAFD8);

  v9 = sub_24910C87C();
  v10 = sub_24910CF5C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21[0] = v12;
    *v11 = 136315394;
    v13 = *(v1 + v2);
    v14 = sub_24910CFFC();
    v16 = sub_24909F930(v14, v15, v21);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    v17 = sub_24910CFFC();
    v19 = sub_24909F930(v17, v18, v21);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_249083000, v9, v10, "Status flags updated: old=%s, new=%s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v12, -1, -1);
    MEMORY[0x24C1F26F0](v11, -1, -1);
  }

  *(v1 + v2) = v7;
  if (swift_weakLoadStrong())
  {
    sub_2490B8E80(sub_2490E1EEC, 0);
  }

  return v7;
}

uint64_t DTTransportDaemon.report(eventType:timers:)(uint64_t a1, uint64_t a2)
{
  DTTransportDaemon.reportIncoming(eventType:timers:)(a1, a2);
  DTTransportDaemon.reportOutgoing(eventType:timers:)(a1, a2);

  return DTTransportDaemon.reportLocal(eventType:timers:)(a1, a2);
}

void DTTransportDaemon.reportIncoming(eventType:timers:)(uint64_t a1, uint64_t a2)
{
  v172 = a1;
  v168 = type metadata accessor for DTTransportDaemon.DTTransportRequest(0);
  v163 = *(v168 - 8);
  v4 = *(v163 + 64);
  v5 = MEMORY[0x28223BE20](v168);
  v162 = v148 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v148 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v148 - v10;
  MEMORY[0x28223BE20](v9);
  v171 = v148 - v12;
  v167 = v2;
  v13 = *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager);
  if (!v13 || (v154 = [v13 currentHome]) == 0)
  {
    if (qword_27EEDAFD0 != -1)
    {
      goto LABEL_76;
    }

    goto LABEL_10;
  }

  v158 = v11;
  v159 = v8;
  v14 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsIncoming;
  v15 = v167;
  swift_beginAccess();
  v16 = *(v15 + v14);
  v17 = v16 + 64;
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v16 + 64);
  v157 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__transportEncoder;
  v21 = (v18 + 63) >> 6;
  v22 = a2 & 0xFFFFFFFFFFFFFF8;
  v178 = (a2 & 0xFFFFFFFFFFFFFF8);
  if (a2 < 0)
  {
    v22 = a2;
  }

  v148[1] = v22;
  v177 = a2 & 0xC000000000000001;
  v156 = *MEMORY[0x277D057B8];
  v155 = v4 + 7;
  v148[3] = "xt:xpcConnection:)";
  v148[2] = v182;
  v164 = v16;

  v23 = 0;
  v173 = 0;
  *&v24 = 136316162;
  v149 = v24;
  *&v24 = 136315650;
  v153 = v24;
  v176 = a2;
  v161 = v17;
  v160 = v21;
  if (v20)
  {
    goto LABEL_14;
  }

  do
  {
LABEL_15:
    v39 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_75;
    }

    if (v39 >= v21)
    {

      return;
    }

    v20 = *(v17 + 8 * v39);
    ++v23;
  }

  while (!v20);
  while (1)
  {
    v40 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v41 = v40 | (v39 << 6);
    v42 = *(v164 + 56);
    v43 = (*(v164 + 48) + 16 * v41);
    v44 = v43[1];
    v165 = *v43;
    v45 = *(v42 + 8 * v41);
    v183 = a2;
    v46 = *(v45 + 24);
    v47 = *(v45 + 32);
    v175 = v44;

    v174 = v45;

    v49 = v46(v48);
    v170 = v20;
    if (!v49)
    {
      v61 = a2;
      goto LABEL_44;
    }

    v50 = v49;
    if (!a2)
    {

      v61 = 0;
      goto LABEL_41;
    }

    v179 = MEMORY[0x277D84F90];
    if (!(a2 >> 62))
    {
      isa = v178[2].isa;
      if (isa)
      {
        break;
      }

      goto LABEL_39;
    }

    isa = sub_24910D19C();
    if (isa)
    {
      break;
    }

LABEL_39:
    v61 = MEMORY[0x277D84F90];
LABEL_40:

    v20 = v170;
LABEL_41:
    swift_beginAccess();
    v183 = v61;

    if (v61)
    {
      if (v61 >> 62)
      {
        if (!sub_24910D19C())
        {
LABEL_67:

          v23 = v39;
          if (!v20)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }
      }

      else if (!*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_67;
      }
    }

LABEL_44:
    if (qword_27EEDAFD0 != -1)
    {
      swift_once();
    }

    v62 = sub_24910C89C();
    v63 = __swift_project_value_buffer(v62, qword_27EEDAFD8);

    v64 = v174;

    v169 = v63;
    v65 = sub_24910C87C();
    v66 = sub_24910CF5C();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      aBlock = v68;
      *v67 = v149;
      v69 = sub_24910CFDC();
      v71 = sub_24909F930(v69, v70, &aBlock);

      *(v67 + 4) = v71;
      *(v67 + 12) = 2080;
      if (v61)
      {
        v72 = sub_24910D09C();

        v74 = MEMORY[0x24C1F1790](v73, v72);
        v76 = v75;
      }

      else
      {
        v76 = 0xE300000000000000;
        v74 = 7104878;
      }

      v79 = sub_24909F930(v74, v76, &aBlock);

      *(v67 + 14) = v79;
      *(v67 + 22) = 2080;
      if (a2)
      {
        v80 = sub_24910D09C();
        v81 = MEMORY[0x24C1F1790](a2, v80);
        v83 = v82;
      }

      else
      {
        v83 = 0xE300000000000000;
        v81 = 7104878;
      }

      v78 = v171;
      v84 = sub_24909F930(v81, v83, &aBlock);

      *(v67 + 24) = v84;
      *(v67 + 32) = 2080;
      v86 = *(v64 + 32);
      v87 = (*(v64 + 24))(v85);
      if (v87)
      {
        v179 = v87;
        LODWORD(v152) = v66;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7B38, &unk_249110268);
        v64 = v174;
        sub_2490FAC70(&unk_27EED7B40, &qword_27EED7B38, &unk_249110268);
        v88 = sub_24910CC5C();
        v90 = v89;
        LOBYTE(v66) = v152;
      }

      else
      {
        v90 = 0xE300000000000000;
        v88 = 7104878;
      }

      v91 = sub_24909F930(v88, v90, &aBlock);

      *(v67 + 34) = v91;
      *(v67 + 42) = 2080;
      *(v67 + 44) = sub_24909F930(v165, v175, &aBlock);
      _os_log_impl(&dword_249083000, v65, v66, "Report event: event=%s, filteredTimers=%s, timers=%s, targets=[%s], peer=%s, incoming", v67, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C1F26F0](v68, -1, -1);
      MEMORY[0x24C1F26F0](v67, -1, -1);

      v77 = v168;
    }

    else
    {

      v77 = v168;
      v78 = v171;
    }

    sub_24910C2EC();
    v92 = v77[5];
    v93 = *(v64 + 40);

    sub_24910C66C();
    v94 = sub_24910C86C();
    (*(*(v94 - 8) + 104))(v78 + v92, v156, v94);
    v95 = (v78 + v77[6]);
    *v95 = 0;
    v95[1] = 0;
    *(v78 + v77[7]) = 2;
    v96 = v64;
    v97 = v158;
    sub_2490FA748(v78, v158, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    v98 = v78;
    v99 = v159;
    sub_2490FA748(v98, v159, type metadata accessor for DTTransportDaemon.DTTransportRequest);

    v100 = sub_24910C87C();
    v101 = sub_24910CF5C();

    v102 = os_log_type_enabled(v100, v101);
    v166 = v61;
    if (v102)
    {
      v103 = swift_slowAlloc();
      v151 = v100;
      v104 = v77;
      v105 = v103;
      v152 = swift_slowAlloc();
      aBlock = v152;
      *v105 = v153;
      sub_24910C2FC();
      sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0]);
      v150 = v101;
      v106 = sub_24910D50C();
      v108 = v107;
      sub_2490FA7B0(v97, type metadata accessor for DTTransportDaemon.DTTransportRequest);
      v109 = sub_24909F930(v106, v108, &aBlock);

      *(v105 + 4) = v109;
      *(v105 + 12) = 2080;
      v110 = v104[5];
      sub_2490F57CC(&qword_27EED7B30, MEMORY[0x277D057E0]);
      v111 = sub_24910D50C();
      v113 = v112;
      sub_2490FA7B0(v99, type metadata accessor for DTTransportDaemon.DTTransportRequest);
      v114 = sub_24909F930(v111, v113, &aBlock);

      *(v105 + 14) = v114;
      *(v105 + 22) = 2080;
      v115 = [*(v96 + 16) idsIdentifier];
      v116 = sub_24910CC9C();
      v118 = v117;

      v119 = sub_24909F930(v116, v118, &aBlock);

      *(v105 + 24) = v119;
      v120 = v151;
      _os_log_impl(&dword_249083000, v151, v150, "HMMM send start: xid=%s, request=%s, to:%s", v105, 0x20u);
      v121 = v152;
      swift_arrayDestroy();
      MEMORY[0x24C1F26F0](v121, -1, -1);
      MEMORY[0x24C1F26F0](v105, -1, -1);
    }

    else
    {

      sub_2490FA7B0(v99, type metadata accessor for DTTransportDaemon.DTTransportRequest);
      sub_2490FA7B0(v97, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    }

    v122 = *(v96 + 16);
    v123 = v171;
    v124 = v162;
    sub_2490FA748(v171, v162, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    v125 = (*(v163 + 80) + 16) & ~*(v163 + 80);
    v126 = (v155 + v125) & 0xFFFFFFFFFFFFFFF8;
    v127 = swift_allocObject();
    sub_2490FA810(v124, v127 + v125, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    *(v127 + v126) = v96;
    v128 = v123;
    v129 = *(v167 + v157);
    sub_2490FC158(&qword_27EEDB090);

    v130 = v173;
    v131 = sub_24910BFBC();
    if (v130)
    {

      sub_2490FA7B0(v128, type metadata accessor for DTTransportDaemon.DTTransportRequest);
      v133 = v175;

      v134 = v130;
      v135 = sub_24910C87C();
      v136 = sub_24910CF4C();

      v137 = os_log_type_enabled(v135, v136);
      a2 = v176;
      if (v137)
      {
        v138 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        aBlock = v139;
        *v138 = v153;
        v140 = sub_24910CFDC();
        v142 = sub_24909F930(v140, v141, &aBlock);

        *(v138 + 4) = v142;
        *(v138 + 12) = 2080;
        v143 = sub_24909F930(v165, v133, &aBlock);

        *(v138 + 14) = v143;
        *(v138 + 22) = 2080;
        swift_getErrorValue();
        v144 = sub_24910D5DC();
        v146 = sub_24909F930(v144, v145, &aBlock);

        *(v138 + 24) = v146;
        _os_log_impl(&dword_249083000, v135, v136, "### Report client event failed: event=%s, peer=%s, error=%s", v138, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C1F26F0](v139, -1, -1);
        MEMORY[0x24C1F26F0](v138, -1, -1);
      }

      else
      {
      }

      v173 = 0;
      v23 = v39;
    }

    else
    {
      v173 = 0;
      v152 = v131;
      v151 = v132;

      v32 = sub_24910CE5C();
      v33 = [objc_allocWithZone(MEMORY[0x277CD1B50]) initWithTimeout:v32 transportRestriction:2];

      v34 = sub_24910CC8C();
      v35 = sub_24910C1CC();
      v36 = swift_allocObject();
      *(v36 + 16) = sub_2490F59A0;
      *(v36 + 24) = v127;
      v182[2] = sub_2490F59F0;
      v182[3] = v36;
      aBlock = MEMORY[0x277D85DD0];
      v181 = 1107296256;
      v182[0] = sub_2490EAE90;
      v182[1] = &block_descriptor_15;
      v37 = v122;
      v38 = _Block_copy(&aBlock);

      [v154 sendModernMessagingRequestWithMessageName:v34 destination:v37 requestPayload:v35 options:v33 responseHandler:v38 completionHandler:0];
      _Block_release(v38);

      sub_2490A453C(v152, v151);

      sub_2490FA7B0(v128, type metadata accessor for DTTransportDaemon.DTTransportRequest);

      v23 = v39;
      a2 = v176;
    }

    v17 = v161;
    v21 = v160;
    v20 = v170;
    if (!v170)
    {
      goto LABEL_15;
    }

LABEL_14:
    v39 = v23;
  }

  v52 = 0;
  v53 = v173;
  while (1)
  {
    if (v177)
    {
      v54 = MEMORY[0x24C1F1C90](v52, a2);
    }

    else
    {
      if (v52 >= v178[2].isa)
      {
        goto LABEL_74;
      }

      v54 = *(a2 + 8 * v52 + 32);
    }

    v55 = v54;
    v56 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      break;
    }

    v57 = sub_24910D04C();
    if (v58)
    {
      aBlock = v57;
      v181 = v58;
      MEMORY[0x28223BE20](v57);
      v148[-2] = &aBlock;
      v59 = sub_2490CCC78(sub_2490F59FC, &v148[-4], v50);

      if (v59)
      {
        sub_24910D2AC();
        v60 = *(v179 + 16);
        sub_24910D2DC();
        sub_24910D2EC();
        sub_24910D2BC();
      }

      else
      {
      }

      a2 = v176;
    }

    else
    {
    }

    v52 = (v52 + 1);
    if (v56 == isa)
    {
      v173 = v53;
      v61 = v179;
      v17 = v161;
      v21 = v160;
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  swift_once();
LABEL_10:
  v25 = sub_24910C89C();
  __swift_project_value_buffer(v25, qword_27EEDAFD8);
  v178 = sub_24910C87C();
  v26 = sub_24910CF4C();
  if (os_log_type_enabled(v178, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock = v28;
    *v27 = 136315138;
    v29 = sub_24910CFDC();
    v31 = sub_24909F930(v29, v30, &aBlock);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_249083000, v178, v26, "### Report client event failed: no home, event=%s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x24C1F26F0](v28, -1, -1);
    MEMORY[0x24C1F26F0](v27, -1, -1);
  }

  else
  {
    v147 = v178;
  }
}