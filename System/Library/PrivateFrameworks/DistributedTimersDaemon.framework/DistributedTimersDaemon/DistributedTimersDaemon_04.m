uint64_t DTTransportDaemon.reportOutgoing(eventType:timers:)(uint64_t a1, uint64_t a2)
{
  v70 = a1;
  v4 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsOutgoing;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = a2 & 0xFFFFFFFFFFFFFF8;
  v79 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 < 0)
  {
    v11 = a2;
  }

  v67 = v11;
  v78 = a2 & 0xC000000000000001;
  v73 = v5;

  v12 = 0;
  *&v13 = 136315906;
  v68 = v13;
  v76 = a2;
  v71 = v10;
  v72 = v6;
  while (v9)
  {
    v14 = v12;
LABEL_12:
    v15 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v16 = *(v73 + 56);
    v74 = *(*(v73 + 48) + v15);
    v9 &= v9 - 1;
    v17 = *(v16 + v15);
    v83 = a2;
    v18 = *(v17 + 32);
    v19 = *(v17 + 40);

    v21 = v18(v20);
    v75 = v17;
    v77 = v21;
    if (!v21)
    {
      v31 = a2;
      goto LABEL_38;
    }

    if (a2)
    {
      v80 = MEMORY[0x277D84F90];
      if (a2 >> 62)
      {
        v22 = sub_24910D19C();
        if (v22)
        {
LABEL_16:
          v23 = 0;
          while (1)
          {
            if (v78)
            {
              v24 = MEMORY[0x24C1F1C90](v23, a2);
            }

            else
            {
              if (v23 >= *(v79 + 16))
              {
                goto LABEL_60;
              }

              v24 = *(a2 + 8 * v23 + 32);
            }

            v25 = v24;
            v26 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              break;
            }

            v27 = sub_24910D04C();
            if (v28)
            {
              v81 = v27;
              v82 = v28;
              MEMORY[0x28223BE20](v27);
              v66 = &v81;
              v29 = sub_2490CCC78(sub_2490FC858, v65, v77);

              if (v29)
              {
                sub_24910D2AC();
                v30 = *(v80 + 16);
                sub_24910D2DC();
                sub_24910D2EC();
                sub_24910D2BC();
              }

              else
              {
              }

              a2 = v76;
            }

            else
            {
            }

            ++v23;
            if (v26 == v22)
            {
              v31 = v80;
              v10 = v71;
              v6 = v72;
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }
      }

      else
      {
        v22 = *(v79 + 16);
        if (v22)
        {
          goto LABEL_16;
        }
      }

      v31 = MEMORY[0x277D84F90];
LABEL_34:
    }

    else
    {

      v31 = 0;
    }

    swift_beginAccess();
    v83 = v31;

    if (v31)
    {
      if (v31 >> 62)
      {
        if (sub_24910D19C())
        {
          goto LABEL_38;
        }
      }

      else if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v12 = v14;
    }

    else
    {
LABEL_38:
      if (qword_27EEDAFD0 != -1)
      {
        swift_once();
      }

      v32 = sub_24910C89C();
      __swift_project_value_buffer(v32, qword_27EEDAFD8);

      v33 = sub_24910C87C();
      v34 = sub_24910CF5C();

      if (os_log_type_enabled(v33, v34))
      {
        LODWORD(v77) = v34;
        v35 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v81 = v69;
        *v35 = v68;
        v36 = sub_24910CFDC();
        v38 = sub_24909F930(v36, v37, &v81);

        *(v35 + 4) = v38;
        *(v35 + 12) = 2080;
        if (v31)
        {
          v39 = sub_24910D09C();

          v41 = MEMORY[0x24C1F1790](v40, v39);
          v43 = v42;
        }

        else
        {
          v43 = 0xE300000000000000;
          v41 = 7104878;
        }

        v44 = sub_24909F930(v41, v43, &v81);

        *(v35 + 14) = v44;
        *(v35 + 22) = 2080;
        v45 = v76;
        if (v76)
        {
          v46 = sub_24910D09C();
          v47 = MEMORY[0x24C1F1790](v45, v46);
          v49 = v48;
        }

        else
        {
          v49 = 0xE300000000000000;
          v47 = 7104878;
        }

        v50 = sub_24909F930(v47, v49, &v81);

        *(v35 + 24) = v50;
        *(v35 + 32) = 2080;
        v52 = *(v75 + 40);
        v53 = (*(v75 + 32))(v51);
        if (v53)
        {
          v80 = v53;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7B38, &unk_249110268);
          sub_2490FAC70(&unk_27EED7B40, &qword_27EED7B38, &unk_249110268);
          v54 = sub_24910CC5C();
          v56 = v55;
        }

        else
        {
          v56 = 0xE300000000000000;
          v54 = 7104878;
        }

        v57 = sub_24909F930(v54, v56, &v81);

        *(v35 + 34) = v57;
        _os_log_impl(&dword_249083000, v33, v77, "Report event: event=%s, filteredTimers=%s, timers=%s, targets=[%s], outgoing", v35, 0x2Au);
        v58 = v69;
        swift_arrayDestroy();
        MEMORY[0x24C1F26F0](v58, -1, -1);
        MEMORY[0x24C1F26F0](v35, -1, -1);

        v10 = v71;
        v6 = v72;
      }

      else
      {
      }

      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        a2 = Strong;
        MEMORY[0x28223BE20](Strong);
        v65[0] = v74;
        v65[1] = v70;
        v66 = v31;
        type metadata accessor for DTXPCConnection();
        sub_2490F57CC(&qword_27EED8190, type metadata accessor for DTXPCConnection);

        sub_24910CDAC();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          goto LABEL_63;
        }

        v60 = swift_allocObject();
        *(v60 + 16) = sub_2490FC80C;
        *(v60 + 24) = &v64;
        v61 = swift_allocObject();
        *(v61 + 16) = sub_2490CDCD4;
        *(v61 + 24) = v60;

        v81 = a2;
        sub_2490FC724(&v81);

        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
        swift_bridgeObjectRelease_n();

        if (isEscapingClosureAtFileLocation)
        {
          goto LABEL_62;
        }

        v12 = v14;
        a2 = v76;
        v10 = v71;
        v6 = v72;
      }

      else
      {

        v12 = v14;
        a2 = v76;
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
    }

    v9 = *(v6 + 8 * v14);
    ++v12;
    if (v9)
    {
      goto LABEL_12;
    }
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);

  swift_isEscapingClosureAtFileLocation();

  __break(1u);
LABEL_63:
  v81 = 0;
  v82 = 0xE000000000000000;
  sub_24910D25C();
  MEMORY[0x24C1F1710](0xD00000000000003FLL, 0x80000002491114D0);
  v80 = a2;
  sub_24910D32C();
  MEMORY[0x24C1F1710](46, 0xE100000000000000);
  result = sub_24910D33C();
  __break(1u);
  return result;
}

uint64_t DTTransportDaemon.reportLocal(eventType:timers:)(uint64_t a1, uint64_t a2)
{
  v70 = a1;
  v4 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsLocal;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = a2 & 0xFFFFFFFFFFFFFF8;
  v79 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 < 0)
  {
    v11 = a2;
  }

  v67 = v11;
  v78 = a2 & 0xC000000000000001;
  v73 = v5;

  v12 = 0;
  *&v13 = 136315906;
  v68 = v13;
  v76 = a2;
  v71 = v10;
  v72 = v6;
  while (v9)
  {
    v14 = v12;
LABEL_12:
    v15 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v16 = *(v73 + 56);
    v74 = *(*(v73 + 48) + v15);
    v9 &= v9 - 1;
    v17 = *(v16 + v15);
    v83 = a2;
    v18 = *(v17 + 16);
    v19 = *(v17 + 24);

    v21 = v18(v20);
    v75 = v17;
    v77 = v21;
    if (!v21)
    {
      v31 = a2;
      goto LABEL_38;
    }

    if (a2)
    {
      v80 = MEMORY[0x277D84F90];
      if (a2 >> 62)
      {
        v22 = sub_24910D19C();
        if (v22)
        {
LABEL_16:
          v23 = 0;
          while (1)
          {
            if (v78)
            {
              v24 = MEMORY[0x24C1F1C90](v23, a2);
            }

            else
            {
              if (v23 >= *(v79 + 16))
              {
                goto LABEL_60;
              }

              v24 = *(a2 + 8 * v23 + 32);
            }

            v25 = v24;
            v26 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              break;
            }

            v27 = sub_24910D04C();
            if (v28)
            {
              v81 = v27;
              v82 = v28;
              MEMORY[0x28223BE20](v27);
              v66 = &v81;
              v29 = sub_2490CCC78(sub_2490FC858, v65, v77);

              if (v29)
              {
                sub_24910D2AC();
                v30 = *(v80 + 16);
                sub_24910D2DC();
                sub_24910D2EC();
                sub_24910D2BC();
              }

              else
              {
              }

              a2 = v76;
            }

            else
            {
            }

            ++v23;
            if (v26 == v22)
            {
              v31 = v80;
              v10 = v71;
              v6 = v72;
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }
      }

      else
      {
        v22 = *(v79 + 16);
        if (v22)
        {
          goto LABEL_16;
        }
      }

      v31 = MEMORY[0x277D84F90];
LABEL_34:
    }

    else
    {

      v31 = 0;
    }

    swift_beginAccess();
    v83 = v31;

    if (v31)
    {
      if (v31 >> 62)
      {
        if (sub_24910D19C())
        {
          goto LABEL_38;
        }
      }

      else if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v12 = v14;
    }

    else
    {
LABEL_38:
      if (qword_27EEDAFD0 != -1)
      {
        swift_once();
      }

      v32 = sub_24910C89C();
      __swift_project_value_buffer(v32, qword_27EEDAFD8);

      v33 = sub_24910C87C();
      v34 = sub_24910CF5C();

      if (os_log_type_enabled(v33, v34))
      {
        LODWORD(v77) = v34;
        v35 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v81 = v69;
        *v35 = v68;
        v36 = sub_24910CFDC();
        v38 = sub_24909F930(v36, v37, &v81);

        *(v35 + 4) = v38;
        *(v35 + 12) = 2080;
        if (v31)
        {
          v39 = sub_24910D09C();

          v41 = MEMORY[0x24C1F1790](v40, v39);
          v43 = v42;
        }

        else
        {
          v43 = 0xE300000000000000;
          v41 = 7104878;
        }

        v44 = sub_24909F930(v41, v43, &v81);

        *(v35 + 14) = v44;
        *(v35 + 22) = 2080;
        v45 = v76;
        if (v76)
        {
          v46 = sub_24910D09C();
          v47 = MEMORY[0x24C1F1790](v45, v46);
          v49 = v48;
        }

        else
        {
          v49 = 0xE300000000000000;
          v47 = 7104878;
        }

        v50 = sub_24909F930(v47, v49, &v81);

        *(v35 + 24) = v50;
        *(v35 + 32) = 2080;
        v52 = *(v75 + 24);
        v53 = (*(v75 + 16))(v51);
        if (v53)
        {
          v80 = v53;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7B38, &unk_249110268);
          sub_2490FAC70(&unk_27EED7B40, &qword_27EED7B38, &unk_249110268);
          v54 = sub_24910CC5C();
          v56 = v55;
        }

        else
        {
          v56 = 0xE300000000000000;
          v54 = 7104878;
        }

        v57 = sub_24909F930(v54, v56, &v81);

        *(v35 + 34) = v57;
        _os_log_impl(&dword_249083000, v33, v77, "Report event: event=%s, filteredTimers=%s, timers=%s, targets=[%s], local", v35, 0x2Au);
        v58 = v69;
        swift_arrayDestroy();
        MEMORY[0x24C1F26F0](v58, -1, -1);
        MEMORY[0x24C1F26F0](v35, -1, -1);

        v10 = v71;
        v6 = v72;
      }

      else
      {
      }

      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        a2 = Strong;
        MEMORY[0x28223BE20](Strong);
        v65[0] = v74;
        v65[1] = v70;
        v66 = v31;
        type metadata accessor for DTXPCConnection();
        sub_2490F57CC(&qword_27EED8190, type metadata accessor for DTXPCConnection);

        sub_24910CDAC();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          goto LABEL_63;
        }

        v60 = swift_allocObject();
        *(v60 + 16) = sub_2490F5A28;
        *(v60 + 24) = &v64;
        v61 = swift_allocObject();
        *(v61 + 16) = sub_2490FC890;
        *(v61 + 24) = v60;

        v81 = a2;
        sub_2490FC724(&v81);

        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
        swift_bridgeObjectRelease_n();

        if (isEscapingClosureAtFileLocation)
        {
          goto LABEL_62;
        }

        v12 = v14;
        a2 = v76;
        v10 = v71;
        v6 = v72;
      }

      else
      {

        v12 = v14;
        a2 = v76;
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
    }

    v9 = *(v6 + 8 * v14);
    ++v12;
    if (v9)
    {
      goto LABEL_12;
    }
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);

  swift_isEscapingClosureAtFileLocation();

  __break(1u);
LABEL_63:
  v81 = 0;
  v82 = 0xE000000000000000;
  sub_24910D25C();
  MEMORY[0x24C1F1710](0xD00000000000003FLL, 0x80000002491114D0);
  v80 = a2;
  sub_24910D32C();
  MEMORY[0x24C1F1710](46, 0xE100000000000000);
  result = sub_24910D33C();
  __break(1u);
  return result;
}

void sub_2490DD5BC(void *a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DTTransportDaemon.DTTransportRequest(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v70 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v70 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v70 - v21;
  if (a3)
  {
    if (qword_27EEDAFD0 != -1)
    {
      swift_once();
    }

    v23 = sub_24910C89C();
    __swift_project_value_buffer(v23, qword_27EEDAFD8);
    sub_2490FA748(a4, v17, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    sub_2490FA748(a4, v14, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    sub_2490FA40C(a1, a2, 1);

    v24 = sub_24910C87C();
    v25 = sub_24910CF4C();

    sub_2490FA418(a1, a2, 1);
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v73 = v72;
      *v26 = 136315906;
      sub_24910C2FC();
      sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0]);
      v71 = v25;
      v27 = sub_24910D50C();
      v29 = v28;
      sub_2490FA7B0(v17, type metadata accessor for DTTransportDaemon.DTTransportRequest);
      v30 = sub_24909F930(v27, v29, &v73);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      v31 = *(v10 + 20);
      sub_24910C86C();
      sub_2490F57CC(&qword_27EED7B30, MEMORY[0x277D057E0]);
      v32 = sub_24910D50C();
      v34 = v33;
      sub_2490FA7B0(v14, type metadata accessor for DTTransportDaemon.DTTransportRequest);
      v35 = sub_24909F930(v32, v34, &v73);

      *(v26 + 14) = v35;
      *(v26 + 22) = 2080;
      v36 = [*(a5 + 16) idsIdentifier];
      v37 = sub_24910CC9C();
      v39 = v38;

      v40 = sub_24909F930(v37, v39, &v73);

      *(v26 + 24) = v40;
      *(v26 + 32) = 2080;
      swift_getErrorValue();
      v41 = sub_24910D5DC();
      v43 = sub_24909F930(v41, v42, &v73);

      *(v26 + 34) = v43;
      _os_log_impl(&dword_249083000, v24, v71, "### HMMM send failed: xid=%s, request=%s, to:%s, error=%s", v26, 0x2Au);
      v44 = v72;
      swift_arrayDestroy();
      MEMORY[0x24C1F26F0](v44, -1, -1);
      MEMORY[0x24C1F26F0](v26, -1, -1);

      return;
    }

    sub_2490FA7B0(v14, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    v65 = v17;
    goto LABEL_14;
  }

  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v45 = sub_24910C89C();
  __swift_project_value_buffer(v45, qword_27EEDAFD8);
  sub_2490FA748(a4, v22, type metadata accessor for DTTransportDaemon.DTTransportRequest);
  sub_2490FA748(a4, v20, type metadata accessor for DTTransportDaemon.DTTransportRequest);
  sub_2490FA40C(a1, a2, 0);
  sub_2490FA40C(a1, a2, 0);

  v46 = sub_24910C87C();
  v47 = sub_24910CF5C();

  if (!os_log_type_enabled(v46, v47))
  {
    sub_2490FA418(a1, a2, 0);

    sub_2490FA418(a1, a2, 0);
    sub_2490FA7B0(v20, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    v65 = v22;
LABEL_14:
    sub_2490FA7B0(v65, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    return;
  }

  v71 = v47;
  v72 = v46;
  v48 = swift_slowAlloc();
  v70 = swift_slowAlloc();
  v73 = v70;
  *v48 = 136315906;
  sub_24910C2FC();
  sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0]);
  v49 = sub_24910D50C();
  v51 = v50;
  sub_2490FA7B0(v22, type metadata accessor for DTTransportDaemon.DTTransportRequest);
  v52 = sub_24909F930(v49, v51, &v73);

  *(v48 + 4) = v52;
  *(v48 + 12) = 2080;
  v53 = *(v10 + 20);
  sub_24910C86C();
  sub_2490F57CC(&qword_27EED7B30, MEMORY[0x277D057E0]);
  v54 = sub_24910D50C();
  v56 = v55;
  sub_2490FA7B0(v20, type metadata accessor for DTTransportDaemon.DTTransportRequest);
  v57 = sub_24909F930(v54, v56, &v73);

  *(v48 + 14) = v57;
  *(v48 + 22) = 2080;
  v58 = [*(a5 + 16) idsIdentifier];
  v59 = sub_24910CC9C();
  v61 = v60;

  v62 = sub_24909F930(v59, v61, &v73);

  *(v48 + 24) = v62;
  *(v48 + 32) = 2048;
  v63 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v63 != 2)
    {
      sub_2490FA418(a1, a2, 0);
      v64 = 0;
      goto LABEL_22;
    }

    v67 = a1[2];
    v66 = a1[3];
    sub_2490FA418(a1, a2, 0);
    v64 = v66 - v67;
    if (!__OFSUB__(v66, v67))
    {
      goto LABEL_22;
    }

    __break(1u);
  }

  else if (!v63)
  {
    sub_2490FA418(a1, a2, 0);
    v64 = BYTE6(a2);
LABEL_22:
    v68 = v72;
    *(v48 + 34) = v64;
    sub_2490FA418(a1, a2, 0);
    _os_log_impl(&dword_249083000, v68, v71, "HMMM send success: xid=%s, request=%s, to:%s, response=%ld bytes", v48, 0x2Au);
    v69 = v70;
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v69, -1, -1);
    MEMORY[0x24C1F26F0](v48, -1, -1);

    return;
  }

  sub_2490FA418(a1, a2, 0);
  LODWORD(v64) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v64 = v64;
    goto LABEL_22;
  }

  __break(1u);
}

uint64_t sub_2490DDDF8()
{
  v0 = sub_24910C68C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_24910C66C();
  DTXPCConnection.report(monitorEvent:)(v4);
  return (*(v1 + 8))(v4, v0);
}

void sub_2490DDEF8()
{
  v1 = v0;
  v2 = sub_24910C2FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v138 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v141 = &v133 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v137 = &v133 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v133 - v12;
  MEMORY[0x28223BE20](v11);
  v139 = &v133 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FD0, &qword_249110908);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = (&v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v21 = &v133 - v20;
  v22 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeMap;
  swift_beginAccess();
  v23 = *(v1 + v22);
  v24 = *(v23 + 64);
  v143 = v23 + 64;
  v25 = 1 << *(v23 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v24;
  v142 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager;
  v134 = (v25 + 63) >> 6;
  v151 = (v3 + 16);
  v149 = (v3 + 32);
  v147 = v3;
  v153 = (v3 + 8);
  v140 = v23;

  v28 = 0;
  v146 = 0;
  *&v29 = 136315394;
  v135 = v29;
  v144 = v1;
  v145 = v21;
  v154 = v2;
  v152 = v13;
  v148 = v19;
  v150 = v22;
  while (1)
  {
    if (v27)
    {
      v30 = v1;
      v31 = v28;
      goto LABEL_17;
    }

    v32 = v134 <= (v28 + 1) ? (v28 + 1) : v134;
    v33 = v32 - 1;
    do
    {
      v31 = (v28 + 1);
      if (__OFADD__(v28, 1))
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      if (v31 >= v134)
      {
        v2 = &qword_249110910;
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FD8, &qword_249110910);
        (*(*(v84 - 8) + 56))(v19, 1, 1, v84);
        v27 = 0;
        v28 = v33;
        goto LABEL_18;
      }

      v27 = *(v143 + 8 * v31);
      ++v28;
    }

    while (!v27);
    v30 = v1;
    v28 = v31;
LABEL_17:
    v34 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v35 = v34 | (v31 << 6);
    v36 = v140;
    v37 = v147;
    v38 = v139;
    v39 = v154;
    (*(v147 + 16))(v139, *(v140 + 48) + *(v147 + 72) * v35, v154);
    v40 = *(*(v36 + 56) + 8 * v35);
    v2 = &qword_249110910;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FD8, &qword_249110910);
    v42 = *(v41 + 48);
    v43 = *(v37 + 32);
    v19 = v148;
    v43(v148, v38, v39);
    *(v19 + v42) = v40;
    (*(*(v41 - 8) + 56))(v19, 0, 1, v41);
    v44 = v40;
    v21 = v145;
    v1 = v30;
    v13 = v152;
LABEL_18:
    sub_2490B3868(v19, v21, &qword_27EED7FD0, &qword_249110908);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FD8, &qword_249110910);
    if ((*(*(v45 - 8) + 48))(v21, 1, v45) == 1)
    {
      break;
    }

    v46 = *&v21[*(v45 + 48)];
    (*v149)(v13, v21, v154);
    v47 = *(v1 + v142);
    if (v47)
    {
      v48 = [v47 homes];
      sub_2490A4744(0, &unk_27EED7FB0, 0x277CD1A60);
      v49 = v13;
      v50 = sub_24910CD5C();

      v2 = &v133;
      MEMORY[0x28223BE20](v51);
      *(&v133 - 2) = v49;
      v52 = v146;
      v53 = sub_2490EB05C(sub_2490FB7FC, (&v133 - 4), v50);
      v146 = v52;

      if (v53)
      {

        v54 = *v153;
        goto LABEL_6;
      }

      v13 = v152;
    }

    v55 = v137;
    v56 = v151;
    if (qword_27EEDAFD0 != -1)
    {
      swift_once();
    }

    v57 = sub_24910C89C();
    __swift_project_value_buffer(v57, qword_27EEDAFD8);
    (*v56)(v55, v13, v154);
    v58 = v46;
    v59 = v55;
    v60 = sub_24910C87C();
    v61 = sub_24910CF5C();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v156[0] = v136;
      *v62 = v135;
      sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0]);
      v63 = v154;
      v64 = sub_24910D50C();
      v65 = v63;
      v66 = v64;
      v68 = v67;
      v54 = *v153;
      (*v153)(v59, v65);
      v69 = sub_24909F930(v66, v68, v156);

      *(v62 + 4) = v69;
      *(v62 + 12) = 2080;
      v70 = [v58 name];
      v71 = sub_24910CC9C();
      v2 = v72;

      v73 = sub_24909F930(v71, v2, v156);

      *(v62 + 14) = v73;
      _os_log_impl(&dword_249083000, v60, v61, "HomeKit home remove: id=%s, name=%s", v62, 0x16u);
      v74 = v136;
      swift_arrayDestroy();
      MEMORY[0x24C1F26F0](v74, -1, -1);
      v75 = v62;
      v21 = v145;
      MEMORY[0x24C1F26F0](v75, -1, -1);
    }

    else
    {

      v54 = *v153;
      (*v153)(v59, v154);
    }

    v76 = v150;
    [v58 setDelegate_];
    v1 = v144;
    swift_beginAccess();
    v77 = *(v1 + v76);
    v78 = sub_2490F128C(v152);
    if (v79)
    {
      v80 = v78;
      v81 = *(v1 + v76);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83 = *(v1 + v76);
      v155 = v83;
      *(v1 + v76) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_2490F3C00();
        v83 = v155;
      }

      v54((*(v83 + 48) + *(v147 + 72) * v80), v154);

      sub_2490F2AA0(v80, v83);
      *(v1 + v76) = v83;
    }

    swift_endAccess();

    v19 = v148;
LABEL_6:
    v13 = v152;
    v54(v152, v154);
  }

  v85 = *(v1 + v142);
  if (v85)
  {
    v86 = [v85 homes];
    sub_2490A4744(0, &unk_27EED7FB0, 0x277CD1A60);
    v2 = sub_24910CD5C();
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v28 = v138;
  v27 = v141;
  v19 = v151;
  if (!(v2 >> 62))
  {
    v87 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v87)
    {
      goto LABEL_37;
    }

LABEL_67:

    sub_2490EB170();
    sub_2490EB864();
    if ((*(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeKitReady) & 1) == 0)
    {
      *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeKitReady) = 1;
      if (qword_27EEDAFD0 == -1)
      {
        goto LABEL_69;
      }

      goto LABEL_74;
    }

    return;
  }

LABEL_66:
  v87 = sub_24910D19C();
  if (!v87)
  {
    goto LABEL_67;
  }

LABEL_37:
  if (v87 >= 1)
  {
    v88 = 0;
    v152 = v2 & 0xC000000000000001;
    v149 = v87;
    v146 = v2;
    while (1)
    {
      if (v152)
      {
        v91 = MEMORY[0x24C1F1C90](v88, v2);
      }

      else
      {
        v91 = *(v2 + 8 * v88 + 32);
      }

      v92 = v91;
      v93 = [v91 uniqueIdentifier];
      sub_24910C2CC();

      v94 = v150;
      swift_beginAccess();
      if (*(*(v1 + v94) + 16))
      {
        sub_2490F128C(v27);
        if (v95)
        {
          swift_endAccess();

          v96 = *v153;
          goto LABEL_41;
        }
      }

      swift_endAccess();
      if (qword_27EEDAFD0 != -1)
      {
        swift_once();
      }

      v97 = sub_24910C89C();
      __swift_project_value_buffer(v97, qword_27EEDAFD8);
      v148 = *v19;
      (v148)(v28, v27, v154);
      v98 = v92;
      v99 = sub_24910C87C();
      v100 = sub_24910CF5C();

      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v156[0] = v19;
        *v101 = v135;
        sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0]);
        v102 = v154;
        v103 = sub_24910D50C();
        v105 = v104;
        v96 = *v153;
        (*v153)(v138, v102);
        v106 = sub_24909F930(v103, v105, v156);

        *(v101 + 4) = v106;
        *(v101 + 12) = 2080;
        v107 = [v98 name];
        v108 = sub_24910CC9C();
        v110 = v109;

        v111 = sub_24909F930(v108, v110, v156);
        v2 = v146;

        *(v101 + 14) = v111;
        v94 = v150;
        _os_log_impl(&dword_249083000, v99, v100, "HomeKit home add: id=%s, name=%s", v101, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1F26F0](v19, -1, -1);
        v112 = v101;
        v28 = v138;
        MEMORY[0x24C1F26F0](v112, -1, -1);
      }

      else
      {

        v96 = *v153;
        (*v153)(v28, v154);
      }

      v1 = v144;
      [v98 setDelegate_];
      swift_beginAccess();
      v113 = v98;
      v114 = *(v1 + v94);
      v27 = swift_isUniquelyReferenced_nonNull_native();
      v155 = *(v1 + v94);
      v115 = v155;
      *(v1 + v94) = 0x8000000000000000;
      v116 = sub_2490F128C(v141);
      v118 = v115[2];
      v119 = (v117 & 1) == 0;
      v120 = __OFADD__(v118, v119);
      v121 = v118 + v119;
      if (v120)
      {
        goto LABEL_64;
      }

      v122 = v117;
      if (v115[3] >= v121)
      {
        if ((v27 & 1) == 0)
        {
          v128 = v116;
          sub_2490F3C00();
          v116 = v128;
        }

        v27 = v141;
        v124 = v155;
        if ((v122 & 1) == 0)
        {
          goto LABEL_61;
        }
      }

      else
      {
        sub_2490F18A4(v121, v27);
        v27 = v141;
        v116 = sub_2490F128C(v141);
        if ((v122 & 1) != (v123 & 1))
        {
          sub_24910D57C();
          __break(1u);
          return;
        }

        v124 = v155;
        if ((v122 & 1) == 0)
        {
LABEL_61:
          v124[(v116 >> 6) + 8] |= 1 << v116;
          v125 = v116;
          v19 = v151;
          (v148)(v124[6] + *(v147 + 72) * v116, v27, v154);
          *(v124[7] + 8 * v125) = v113;
          v126 = v124[2];
          v120 = __OFADD__(v126, 1);
          v127 = v126 + 1;
          if (v120)
          {
            goto LABEL_65;
          }

          v124[2] = v127;
          goto LABEL_40;
        }
      }

      v89 = v124[7];
      v90 = *(v89 + 8 * v116);
      *(v89 + 8 * v116) = v113;

      v19 = v151;
LABEL_40:
      *(v1 + v150) = v124;
      swift_endAccess();

LABEL_41:
      v88 = (v88 + 1);
      v96(v27, v154);
      if (v149 == v88)
      {
        goto LABEL_67;
      }
    }
  }

  __break(1u);
LABEL_74:
  swift_once();
LABEL_69:
  v129 = sub_24910C89C();
  __swift_project_value_buffer(v129, qword_27EEDAFD8);
  v130 = sub_24910C87C();
  v131 = sub_24910CF5C();
  if (os_log_type_enabled(v130, v131))
  {
    v132 = swift_slowAlloc();
    *v132 = 0;
    _os_log_impl(&dword_249083000, v130, v131, "HomeKit ready", v132, 2u);
    MEMORY[0x24C1F26F0](v132, -1, -1);
  }
}

uint64_t sub_2490DEDDC()
{
  v1 = type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DTTransportDaemon.DTOperationItem(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x28223BE20](v5 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeKitReady) == 1)
  {
    v11 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__operationQueue;
    swift_beginAccess();
    v12 = *(v0 + v11);
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v15 = *(v6 + 72);
      v16 = *(v0 + v11);

      do
      {
        sub_2490FA748(v14, v10, type metadata accessor for DTTransportDaemon.DTOperationItem);
        sub_2490FA810(v10, v4, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
        sub_2490E2120(v4);
        sub_2490FA7B0(v4, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
        v14 += v15;
        --v13;
      }

      while (v13);

      v17 = *(v0 + v11);
    }

    *(v0 + v11) = MEMORY[0x277D84F90];
  }

  return result;
}

void sub_2490DEFB4()
{
  v1 = type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter(0);
  v89 = *(v92 - 8);
  v5 = *(v89 + 64);
  v6 = MEMORY[0x28223BE20](v92);
  v8 = (&v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v88 = &v78 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F10, &qword_249110868);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v78 - v15;
  v95 = v0;
  v17 = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager);
  if (v17)
  {
    v18 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__waitingOperations;
    v19 = v95;
    swift_beginAccess();
    v82 = v18;
    v20 = *(v19 + v18);
    v21 = v20 + 64;
    v22 = 1 << *(v20 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v85 = v23 & *(v20 + 64);
    v24 = (v22 + 63) >> 6;
    v25 = v17;

    v26 = 0;
    v97 = 0;
    *&v27 = 136315138;
    v78 = v27;
    *&v27 = 134218242;
    v87 = v27;
    v96 = v4;
    v93 = v16;
    v94 = v14;
    v83 = v24;
    v91 = v8;
    v81 = v20;
    v80 = v20 + 64;
    v79 = v25;
    while (1)
    {
      v28 = v85;
      if (!v85)
      {
        break;
      }

      v29 = v26;
LABEL_13:
      v85 = (v28 - 1) & v28;
      v30 = __clz(__rbit64(v28)) | (v29 << 6);
      v31 = (*(v20 + 48) + 16 * v30);
      v33 = *v31;
      v32 = v31[1];
      v34 = *(*(v20 + 56) + 8 * v30);

      sub_2490E7FBC(v33, v32);
      if (v35)
      {
        v84 = v29;

        swift_beginAccess();
        sub_2490D3D58(0, v33, v32);
        swift_endAccess();
        v36 = 0;
        v90 = v34;
        v37 = *(v34 + 64);
        v86 = v34 + 64;
        v38 = 1 << *(v34 + 32);
        if (v38 < 64)
        {
          v39 = ~(-1 << v38);
        }

        else
        {
          v39 = -1;
        }

        v40 = v39 & v37;
        v41 = (v38 + 63) >> 6;
        v42 = v94;
        while (v40)
        {
          v47 = v36;
LABEL_31:
          v50 = __clz(__rbit64(v40));
          v40 &= v40 - 1;
          v51 = v50 | (v47 << 6);
          v52 = *(*(v90 + 48) + 8 * v51);
          v53 = v88;
          sub_2490FA748(*(v90 + 56) + *(v89 + 72) * v51, v88, type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter);
          v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F18, &qword_249110870);
          v55 = *(v54 + 48);
          *v42 = v52;
          sub_2490FA810(v53, v42 + v55, type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter);
          (*(*(v54 - 8) + 56))(v42, 0, 1, v54);
LABEL_32:
          v56 = v93;
          sub_2490B3868(v42, v93, &qword_27EED7F10, &qword_249110868);
          v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F18, &qword_249110870);
          if ((*(*(v57 - 8) + 48))(v56, 1, v57) == 1)
          {

            v26 = v84;
            v20 = v81;
            v21 = v80;
            v25 = v79;
            goto LABEL_7;
          }

          v58 = *v56;
          sub_2490FA810(v56 + *(v57 + 48), v8, type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter);
          v59 = *v8;
          v60 = v8[1];
          v61 = v96;
          if (qword_27EEDAFD0 != -1)
          {
            swift_once();
          }

          v62 = sub_24910C89C();
          __swift_project_value_buffer(v62, qword_27EEDAFD8);

          v63 = sub_24910C87C();
          v64 = sub_24910CF5C();

          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            v66 = swift_slowAlloc();
            v98[0] = v66;
            *v65 = v87;
            *(v65 + 4) = v58;
            *(v65 + 12) = 2080;
            *(v65 + 14) = sub_24909F930(v59, v60, v98);
            _os_log_impl(&dword_249083000, v63, v64, "WaiterResume: xid=%llu, accessoryID=%s", v65, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v66);
            MEMORY[0x24C1F26F0](v66, -1, -1);
            v67 = v65;
            v61 = v96;
            MEMORY[0x24C1F26F0](v67, -1, -1);
          }

          v8 = v91;
          v43 = v92;
          v44 = *(v91 + *(v92 + 28));
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7B18, &qword_249110250);
          sub_24910CE3C();
          sub_2490FA748(v8 + *(v43 + 20), v61, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
          v45 = v97;
          sub_2490E26B4(v59, v60, v61, 1);
          if (v45)
          {
            v46 = v45;
            sub_2490F7BC8(v61, v45, 0, 1);
          }

          v97 = 0;
          v42 = v94;
          sub_2490FA7B0(v61, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
          sub_2490FA7B0(v8, type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter);
        }

        if (v41 <= v36 + 1)
        {
          v48 = v36 + 1;
        }

        else
        {
          v48 = v41;
        }

        v49 = v48 - 1;
        while (1)
        {
          v47 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            break;
          }

          if (v47 >= v41)
          {
            v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F18, &qword_249110870);
            (*(*(v68 - 8) + 56))(v42, 1, 1, v68);
            v40 = 0;
            v36 = v49;
            goto LABEL_32;
          }

          v40 = *(v86 + 8 * v47);
          ++v36;
          if (v40)
          {
            v36 = v47;
            goto LABEL_31;
          }
        }

        __break(1u);
        goto LABEL_47;
      }

      if (qword_27EEDAFD0 != -1)
      {
        swift_once();
      }

      v69 = sub_24910C89C();
      __swift_project_value_buffer(v69, qword_27EEDAFD8);

      v70 = sub_24910C87C();
      v71 = sub_24910CF3C();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v84 = v29;
        v73 = v72;
        v74 = v8;
        v75 = swift_slowAlloc();
        v98[0] = v75;
        *v73 = v78;
        v76 = sub_24909F930(v33, v32, v98);

        *(v73 + 4) = v76;
        _os_log_impl(&dword_249083000, v70, v71, "WaiterUpdate: not found yet, accessoryID=%s", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v75);
        v77 = v75;
        v8 = v74;
        MEMORY[0x24C1F26F0](v77, -1, -1);
        MEMORY[0x24C1F26F0](v73, -1, -1);

        v26 = v84;
      }

      else
      {

        v26 = v29;
      }

LABEL_7:
      v24 = v83;
    }

    while (1)
    {
      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v29 >= v24)
      {

        return;
      }

      v28 = *(v21 + 8 * v29);
      ++v26;
      if (v28)
      {
        goto LABEL_13;
      }
    }

LABEL_47:
    __break(1u);
  }
}

uint64_t sub_2490DF8DC()
{
  v1 = v0;
  v93 = sub_24910C2FC();
  v80 = *(v93 - 8);
  v2 = v80[8];
  v3 = MEMORY[0x28223BE20](v93);
  v79 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v91 = &v79 - v6;
  MEMORY[0x28223BE20](v5);
  v94 = &v79 - v7;
  if (qword_27EEDAFD0 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v8 = sub_24910C89C();
    v89 = __swift_project_value_buffer(v8, qword_27EEDAFD8);
    v9 = sub_24910C87C();
    v10 = sub_24910CF5C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_249083000, v9, v10, "Monitor timer check", v11, 2u);
      MEMORY[0x24C1F26F0](v11, -1, -1);
    }

    v12 = sub_24910C4AC();
    v13 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsIncoming;
    swift_beginAccess();
    v87 = v1;
    v14 = *(v1 + v13);
    v15 = v14 + 8;
    v16 = 1 << *(v14 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v14[8];
    v19 = (v16 + 63) >> 6;
    v20 = *(v1 + v13);

    v21 = 0;
    *&v22 = 136315138;
    v85 = v22;
    v86 = v12;
    v92 = v13;
    v90 = v14;
    if (!v18)
    {
      break;
    }

LABEL_14:
    while (1)
    {
      v26 = __clz(__rbit64(v18)) | (v21 << 6);
      if (v12 < *(*(v14[7] + v26) + 48))
      {
        break;
      }

      v18 &= v18 - 1;
      v27 = (v14[6] + 16 * v26);
      v1 = *v27;
      v28 = v27[1];

      if (sub_24910C31C() >= 0x21C)
      {

        v29 = sub_24910C87C();
        v30 = sub_24910CF5C();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v88 = v29;
          v33 = v32;
          v96[0] = v32;
          *v31 = v85;
          *(v31 + 4) = sub_24909F930(v1, v28, v96);
          v34 = v30;
          v35 = v88;
          _os_log_impl(&dword_249083000, v88, v34, "Monitor idle cleanup: peer=%s", v31, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v33);
          MEMORY[0x24C1F26F0](v33, -1, -1);
          v36 = v31;
          v13 = v92;
          MEMORY[0x24C1F26F0](v36, -1, -1);
        }

        else
        {
        }

        v37 = v87;
        swift_beginAccess();
        v38 = *(v37 + v13);
        v39 = sub_2490A0A3C(v1, v28);
        v41 = v40;

        v14 = v90;
        if (v41)
        {
          v42 = v92;
          v1 = v87;
          v43 = *&v92[v87];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v45 = *&v42[v1];
          v95 = v45;
          *&v42[v1] = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_2490F4364();
            v45 = v95;
          }

          v23 = *(*(v45 + 48) + 16 * v39 + 8);

          v24 = *(*(v45 + 56) + 8 * v39);

          sub_2490CD11C(v39, v45);
          *&v42[v1] = v45;
        }

        swift_endAccess();

        v12 = v86;
        v13 = v92;
        if (!v18)
        {
          goto LABEL_10;
        }
      }

      else
      {

        v14 = v90;
        if (!v18)
        {
          goto LABEL_10;
        }
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
  }

  while (1)
  {
LABEL_10:
    v25 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (v25 >= v19)
    {
      break;
    }

    v18 = v15[v25];
    ++v21;
    if (v18)
    {
      v21 = v25;
      goto LABEL_14;
    }
  }

  v95 = MEMORY[0x277D84FA0];
  v46 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsOutgoing;
  v1 = v87;
  swift_beginAccess();
  v47 = *(v1 + v46);
  v48 = v47 + 64;
  v49 = 1 << *(v47 + 32);
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  else
  {
    v50 = -1;
  }

  v51 = v50 & *(v47 + 64);
  v52 = (v49 + 63) >> 6;
  v90 = (v80 + 2);
  v92 = (v80 + 1);

  v53 = 0;
  v83 = v47;
  v82 = v47 + 64;
  v81 = v52;
  if (!v51)
  {
    goto LABEL_30;
  }

  do
  {
    while (1)
    {
LABEL_34:
      v55 = (v53 << 9) | (8 * __clz(__rbit64(v51)));
      v56 = *(*(v47 + 56) + v55);
      if (v12 < *(v56 + 24))
      {
        goto LABEL_49;
      }

      v51 &= v51 - 1;
      v57 = *(*(v47 + 48) + v55);
      v58 = *(*(v47 + 56) + v55);

      if (sub_24910C31C() >= 0xB4)
      {
        break;
      }

      if (!v51)
      {
        goto LABEL_30;
      }
    }

    v84 = v57;
    *&v85 = v56;
    v59 = [*(v56 + 16) uniqueIdentifier];
    sub_24910C2CC();

    v60 = v95;
    if (*(v95 + 16) && (v61 = *(v95 + 40), sub_2490F57CC(&qword_27EED7ED8, MEMORY[0x277CC95F0]), v62 = sub_24910CC3C(), v63 = -1 << *(v60 + 32), v64 = v62 & ~v63, v89 = v60 + 56, ((*(v60 + 56 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) != 0))
    {
      v88 = ~v63;
      v65 = v80[9];
      v66 = v80[2];
      while (1)
      {
        v67 = v91;
        v68 = v93;
        v66(v91, *(v60 + 48) + v65 * v64, v93);
        sub_2490F57CC(&qword_27EED7EE0, MEMORY[0x277CC95F0]);
        v69 = sub_24910CC7C();
        v70 = *v92;
        (*v92)(v67, v68);
        if (v69)
        {
          break;
        }

        v64 = (v64 + 1) & v88;
        if (((*(v89 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      v70(v94, v93);

      v1 = v87;
    }

    else
    {
LABEL_41:
      v71 = v85;
      v1 = v87;
      sub_2490E00F0(v84, v85);
      v72 = v79;
      v73 = v93;
      v74 = v94;
      (*v90)(v79, v94, v93);
      v75 = v91;
      sub_2490F44D4(v91, v72);
      v76 = *v92;
      (*v92)(v75, v73);
      v77 = sub_24910C4AC();
      v76(v74, v73);
      *(v71 + 24) = v77;
    }

    v12 = v86;
    v47 = v83;
    v48 = v82;
    v52 = v81;
  }

  while (v51);
  while (1)
  {
LABEL_30:
    v54 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      goto LABEL_47;
    }

    if (v54 >= v52)
    {
      break;
    }

    v51 = *(v48 + 8 * v54);
    ++v53;
    if (v51)
    {
      v53 = v54;
      goto LABEL_34;
    }
  }

  return sub_2490D48A0();
}

uint64_t sub_2490E00F0(uint64_t a1, uint64_t a2)
{
  v61 = a1;
  v3 = sub_24910C2FC();
  v67 = *(v3 - 8);
  v68 = v3;
  v4 = *(v67 + 64);
  MEMORY[0x28223BE20](v3);
  v66 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DTTransportDaemon.DTTransportRequest(0);
  v70 = *(v6 - 1);
  v7 = *(v70 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v9 = MEMORY[0x28223BE20](v8);
  v63 = v56 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v69 = v56 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v56 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v56 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v56 - v19;
  sub_24910C2EC();
  v21 = v6[5];
  v22 = *MEMORY[0x277D057C8];
  v23 = sub_24910C86C();
  v24 = *(*(v23 - 8) + 104);
  v64 = v23;
  v24(&v20[v21], v22);
  v25 = &v20[v6[6]];
  *v25 = 0;
  *(v25 + 1) = 0;
  v65 = v6;
  v20[v6[7]] = 2;
  v26 = *(a2 + 16);
  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v27 = sub_24910C89C();
  v28 = __swift_project_value_buffer(v27, qword_27EEDAFD8);
  sub_2490FA748(v20, v18, type metadata accessor for DTTransportDaemon.DTTransportRequest);
  sub_2490FA748(v20, v15, type metadata accessor for DTTransportDaemon.DTTransportRequest);
  v29 = v26;
  v62 = v28;
  v30 = sub_24910C87C();
  v31 = sub_24910CF5C();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v60 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v33 = v32;
    v59 = swift_slowAlloc();
    v71[0] = v59;
    *v33 = 136315906;
    v56[1] = sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0]);
    v58 = v30;
    v34 = v68;
    v35 = sub_24910D50C();
    v37 = v36;
    v57 = v31;
    sub_2490FA7B0(v18, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    v38 = sub_24909F930(v35, v37, v71);

    *(v33 + 4) = v38;
    *(v33 + 12) = 2080;
    v39 = v65[5];
    sub_2490F57CC(&qword_27EED7B30, MEMORY[0x277D057E0]);
    v40 = sub_24910D50C();
    v42 = v41;
    sub_2490FA7B0(v15, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    v43 = sub_24909F930(v40, v42, v71);

    *(v33 + 14) = v43;
    *(v33 + 22) = 2048;
    *(v33 + 24) = v61;
    *(v33 + 32) = 2080;
    v44 = [v29 uniqueIdentifier];
    v45 = v66;
    sub_24910C2CC();

    v46 = sub_24910D50C();
    v48 = v47;
    (*(v67 + 8))(v45, v34);
    v49 = sub_24909F930(v46, v48, v71);

    *(v33 + 34) = v49;
    v50 = v58;
    _os_log_impl(&dword_249083000, v58, v57, "HMMM send start: xid=%s, request=%s, monitorID=%llu, to:%s", v33, 0x2Au);
    v51 = v59;
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v51, -1, -1);
    MEMORY[0x24C1F26F0](v33, -1, -1);
  }

  else
  {

    sub_2490FA7B0(v15, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    sub_2490FA7B0(v18, type metadata accessor for DTTransportDaemon.DTTransportRequest);
  }

  v52 = v69;
  sub_2490FA748(v20, v69, type metadata accessor for DTTransportDaemon.DTTransportRequest);
  v53 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v54 = swift_allocObject();
  sub_2490FA810(v52, v54 + v53, type metadata accessor for DTTransportDaemon.DTTransportRequest);
  *(v54 + ((v7 + v53 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29;
  sub_2490D580C(v20, v29, sub_2490FA668, v54);

  return sub_2490FA7B0(v20, type metadata accessor for DTTransportDaemon.DTTransportRequest);
}

void sub_2490E0AC4(void *a1, unint64_t a2, char a3, uint64_t a4, void *a5)
{
  v87 = a1;
  v9 = sub_24910C2FC();
  v86 = *(v9 - 8);
  v10 = *(v86 + 64);
  MEMORY[0x28223BE20](v9);
  v85 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DTTransportDaemon.DTTransportRequest(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v81 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v81 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v81 - v23;
  if (a3)
  {
    if (qword_27EEDAFD0 != -1)
    {
      swift_once();
    }

    v25 = sub_24910C89C();
    __swift_project_value_buffer(v25, qword_27EEDAFD8);
    sub_2490FA748(a4, v19, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    sub_2490FA748(a4, v16, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    v26 = v87;
    sub_2490FA40C(v87, a2, 1);
    v27 = a5;
    v28 = sub_24910C87C();
    v29 = sub_24910CF4C();

    sub_2490FA418(v26, a2, 1);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v88 = v84;
      *v30 = 136315906;
      v81 = sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0]);
      v83 = v29;
      v31 = sub_24910D50C();
      v82 = v28;
      v32 = v31;
      v34 = v33;
      sub_2490FA7B0(v19, type metadata accessor for DTTransportDaemon.DTTransportRequest);
      v35 = sub_24909F930(v32, v34, &v88);

      *(v30 + 4) = v35;
      *(v30 + 12) = 2080;
      v36 = *(v12 + 20);
      sub_24910C86C();
      sub_2490F57CC(&qword_27EED7B30, MEMORY[0x277D057E0]);
      v37 = sub_24910D50C();
      v39 = v38;
      sub_2490FA7B0(v16, type metadata accessor for DTTransportDaemon.DTTransportRequest);
      v40 = sub_24909F930(v37, v39, &v88);

      *(v30 + 14) = v40;
      *(v30 + 22) = 2080;
      v41 = [v27 uniqueIdentifier];
      v42 = v85;
      sub_24910C2CC();

      v43 = sub_24910D50C();
      v45 = v44;
      (*(v86 + 8))(v42, v9);
      v46 = sub_24909F930(v43, v45, &v88);

      *(v30 + 24) = v46;
      *(v30 + 32) = 2080;
      swift_getErrorValue();
      v47 = sub_24910D5DC();
      v49 = sub_24909F930(v47, v48, &v88);

      *(v30 + 34) = v49;
      v50 = v82;
      _os_log_impl(&dword_249083000, v82, v83, "### HMMM send failed: xid=%s, request=%s, to:%s, error=%s", v30, 0x2Au);
      v51 = v84;
      swift_arrayDestroy();
      MEMORY[0x24C1F26F0](v51, -1, -1);
      MEMORY[0x24C1F26F0](v30, -1, -1);

      return;
    }

    sub_2490FA7B0(v16, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    v77 = v19;
    goto LABEL_14;
  }

  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v52 = sub_24910C89C();
  __swift_project_value_buffer(v52, qword_27EEDAFD8);
  sub_2490FA748(a4, v24, type metadata accessor for DTTransportDaemon.DTTransportRequest);
  sub_2490FA748(a4, v22, type metadata accessor for DTTransportDaemon.DTTransportRequest);
  v53 = v87;
  sub_2490FA40C(v87, a2, 0);
  sub_2490FA40C(v53, a2, 0);
  v54 = a5;
  v55 = sub_24910C87C();
  v56 = sub_24910CF5C();

  if (!os_log_type_enabled(v55, v56))
  {
    sub_2490FA418(v53, a2, 0);

    sub_2490FA418(v53, a2, 0);
    sub_2490FA7B0(v22, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    v77 = v24;
LABEL_14:
    sub_2490FA7B0(v77, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    return;
  }

  v83 = v56;
  v82 = v55;
  v57 = swift_slowAlloc();
  v81 = swift_slowAlloc();
  v88 = v81;
  *v57 = 136315906;
  v84 = sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0]);
  v58 = sub_24910D50C();
  v60 = v59;
  sub_2490FA7B0(v24, type metadata accessor for DTTransportDaemon.DTTransportRequest);
  v61 = sub_24909F930(v58, v60, &v88);

  *(v57 + 4) = v61;
  *(v57 + 12) = 2080;
  v62 = *(v12 + 20);
  sub_24910C86C();
  sub_2490F57CC(&qword_27EED7B30, MEMORY[0x277D057E0]);
  v63 = sub_24910D50C();
  v65 = v64;
  sub_2490FA7B0(v22, type metadata accessor for DTTransportDaemon.DTTransportRequest);
  v66 = sub_24909F930(v63, v65, &v88);

  *(v57 + 14) = v66;
  *(v57 + 22) = 2080;
  v67 = [v54 uniqueIdentifier];
  v68 = v85;
  sub_24910C2CC();

  v69 = sub_24910D50C();
  v71 = v70;
  (*(v86 + 8))(v68, v9);
  v72 = sub_24909F930(v69, v71, &v88);

  *(v57 + 24) = v72;
  *(v57 + 32) = 2048;
  v73 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v74 = v87;
    if (v73 == 2)
    {
      v75 = *(v87 + 2);
      v78 = *(v87 + 3);
      sub_2490FA418(v87, a2, 0);
      v76 = v78 - v75;
      if (__OFSUB__(v78, v75))
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      sub_2490FA418(v87, a2, 0);
      v76 = 0;
    }

    v79 = v82;
    LOBYTE(v75) = v83;
    goto LABEL_24;
  }

  v74 = v87;
  LOBYTE(v75) = v83;
  if (!v73)
  {
    sub_2490FA418(v87, a2, 0);
    v76 = BYTE6(a2);
LABEL_21:
    v79 = v82;
LABEL_24:
    *(v57 + 34) = v76;
    sub_2490FA418(v74, a2, 0);
    _os_log_impl(&dword_249083000, v79, v75, "HMMM send success: xid=%s, request=%s, to:%s, response=%ld bytes", v57, 0x2Au);
    v80 = v81;
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v80, -1, -1);
    MEMORY[0x24C1F26F0](v57, -1, -1);

    return;
  }

LABEL_19:
  sub_2490FA418(v74, a2, 0);
  LODWORD(v76) = HIDWORD(v74) - v74;
  if (!__OFSUB__(HIDWORD(v74), v74))
  {
    v76 = v76;
    goto LABEL_21;
  }

  __break(1u);
}

uint64_t sub_2490E13EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v4 = sub_24910D2FC();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v7 = sub_24910D30C();
  v3[19] = v7;
  v8 = *(v7 - 8);
  v3[20] = v8;
  v9 = *(v8 + 64) + 15;
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2490E1514, 0, 0);
}

uint64_t sub_2490E1514()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  swift_beginAccess();
  if ((sub_24910CE4C() & 1) != 0 || (v2 = *(v0 + 104), !swift_weakLoadStrong()))
  {
    v16 = *(v0 + 168);
    v17 = *(v0 + 136);
    v18 = *(v0 + 144);

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v3 = *(v0 + 168);
    v5 = *(v0 + 144);
    v4 = *(v0 + 152);
    v7 = *(v0 + 128);
    v6 = *(v0 + 136);
    v8 = *(v0 + 120);

    sub_24910D5AC();
    *(v0 + 88) = xmmword_249110200;
    *(v0 + 72) = 0;
    *(v0 + 64) = 0;
    *(v0 + 80) = 1;
    v9 = sub_2490F57CC(&qword_27EED7EC8, MEMORY[0x277D85928]);
    sub_24910D58C();
    sub_2490F57CC(&qword_27EED7ED0, MEMORY[0x277D858F8]);
    sub_24910D31C();
    v10 = *(v7 + 8);
    *(v0 + 176) = v10;
    *(v0 + 184) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v6, v8);
    v11 = *(MEMORY[0x277D85A58] + 4);
    v12 = swift_task_alloc();
    *(v0 + 192) = v12;
    *v12 = v0;
    v12[1] = sub_2490E1774;
    v13 = *(v0 + 168);
    v15 = *(v0 + 144);
    v14 = *(v0 + 152);

    return MEMORY[0x2822008C8](v15, v0 + 64, v14, v9);
  }
}

uint64_t sub_2490E1774()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v10 = *v1;
  *(*v1 + 200) = v0;

  v4 = *(v2 + 184);
  if (v0)
  {
    (*(v2 + 176))(*(v2 + 144), *(v2 + 120));
    v5 = sub_2490E1BAC;
  }

  else
  {
    v7 = *(v2 + 160);
    v6 = *(v2 + 168);
    v8 = *(v2 + 152);
    (*(v2 + 176))(*(v2 + 144), *(v2 + 120));
    (*(v7 + 8))(v6, v8);
    v5 = sub_2490E18CC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2490E18CC()
{
  v1 = *(v0 + 104);
  Strong = swift_weakLoadStrong();
  *(v0 + 208) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 112);
    sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon);
    v5 = sub_24910CDAC();

    return MEMORY[0x2822009F8](sub_2490E1C48, v5, v4);
  }

  else if ((sub_24910CE4C() & 1) != 0 || (v6 = *(v0 + 104), !swift_weakLoadStrong()))
  {
    v20 = *(v0 + 168);
    v21 = *(v0 + 136);
    v22 = *(v0 + 144);

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v7 = *(v0 + 168);
    v9 = *(v0 + 144);
    v8 = *(v0 + 152);
    v11 = *(v0 + 128);
    v10 = *(v0 + 136);
    v12 = *(v0 + 120);

    sub_24910D5AC();
    *(v0 + 88) = xmmword_249110200;
    *(v0 + 72) = 0;
    *(v0 + 64) = 0;
    *(v0 + 80) = 1;
    v13 = sub_2490F57CC(&qword_27EED7EC8, MEMORY[0x277D85928]);
    sub_24910D58C();
    sub_2490F57CC(&qword_27EED7ED0, MEMORY[0x277D858F8]);
    sub_24910D31C();
    v14 = *(v11 + 8);
    *(v0 + 176) = v14;
    *(v0 + 184) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v10, v12);
    v15 = *(MEMORY[0x277D85A58] + 4);
    v16 = swift_task_alloc();
    *(v0 + 192) = v16;
    *v16 = v0;
    v16[1] = sub_2490E1774;
    v17 = *(v0 + 168);
    v19 = *(v0 + 144);
    v18 = *(v0 + 152);

    return MEMORY[0x2822008C8](v19, v0 + 64, v18, v13);
  }
}

uint64_t sub_2490E1BAC()
{
  v1 = v0[18];
  v2 = v0[17];
  (*(v0[20] + 8))(v0[21], v0[19]);

  v3 = v0[1];
  v4 = v0[25];

  return v3();
}

uint64_t sub_2490E1C48()
{
  v1 = *(v0 + 208);
  sub_2490DF8DC();

  return MEMORY[0x2822009F8](sub_2490E1CB8, 0, 0);
}

uint64_t sub_2490E1CB8()
{
  if ((sub_24910CE4C() & 1) != 0 || (v1 = *(v0 + 104), !swift_weakLoadStrong()))
  {
    v15 = *(v0 + 168);
    v16 = *(v0 + 136);
    v17 = *(v0 + 144);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v2 = *(v0 + 168);
    v4 = *(v0 + 144);
    v3 = *(v0 + 152);
    v6 = *(v0 + 128);
    v5 = *(v0 + 136);
    v7 = *(v0 + 120);

    sub_24910D5AC();
    *(v0 + 88) = xmmword_249110200;
    *(v0 + 72) = 0;
    *(v0 + 64) = 0;
    *(v0 + 80) = 1;
    v8 = sub_2490F57CC(&qword_27EED7EC8, MEMORY[0x277D85928]);
    sub_24910D58C();
    sub_2490F57CC(&qword_27EED7ED0, MEMORY[0x277D858F8]);
    sub_24910D31C();
    v9 = *(v6 + 8);
    *(v0 + 176) = v9;
    *(v0 + 184) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v7);
    v10 = *(MEMORY[0x277D85A58] + 4);
    v11 = swift_task_alloc();
    *(v0 + 192) = v11;
    *v11 = v0;
    v11[1] = sub_2490E1774;
    v12 = *(v0 + 168);
    v14 = *(v0 + 144);
    v13 = *(v0 + 152);

    return MEMORY[0x2822008C8](v14, v0 + 64, v13, v8);
  }
}

uint64_t sub_2490E1EEC@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v5 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_xpcServer;
  result = swift_beginAccess();
  v7 = *(a1 + v5);
  if (!v7)
  {
    goto LABEL_5;
  }

  type metadata accessor for DTXPCServer();
  sub_2490F57CC(&qword_27EED81B0, type metadata accessor for DTXPCServer);

  sub_24910CDAC();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = sub_2490F105C;
    *(v8 + 24) = 0;
    v9[0] = v7;
    sub_2490FC724(v9);
    if (!v2)
    {

      result = swift_isEscapingClosureAtFileLocation();
      if ((result & 1) == 0)
      {
LABEL_5:
        *a2 = v7 == 0;
        return result;
      }

      __break(1u);
    }

    swift_isEscapingClosureAtFileLocation();
    __break(1u);
  }

  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_24910D25C();
  MEMORY[0x24C1F1710](0xD00000000000003FLL, 0x80000002491114D0);
  v9[6] = v7;
  sub_24910D32C();
  MEMORY[0x24C1F1710](46, 0xE100000000000000);
  result = sub_24910D33C();
  __break(1u);
  return result;
}

void sub_2490E2120(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24910C2FC();
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = *(v44 + 64);
  MEMORY[0x28223BE20](v4);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24910C78C();
  v47 = *(v7 - 8);
  v48 = v7;
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24910C86C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24910C4FC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0);
  v21 = a1 + *(v20 + 28);
  sub_24910C6FC();
  v22 = (*(v16 + 88))(v19, v15);
  if (v22 == *MEMORY[0x277D05658])
  {
    (*(v16 + 96))(v19, v15);
    sub_2490E26B4(*v19, *(v19 + 1), a1, 0);
  }

  else if (v22 == *MEMORY[0x277D05660])
  {
    v23 = a1;
    (*(v11 + 16))(v14, a1 + *(v20 + 24), v10);
    v24 = (*(v11 + 88))(v14, v10);
    v25 = *MEMORY[0x277D05788];
    (*(v11 + 8))(v14, v10);
    if (v24 == v25)
    {
      sub_2490DAEB4();
      v26 = v46;
      sub_24910C77C();
      v27 = *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__transportEncoder);
      sub_2490F57CC(&unk_27EED7FC0, MEMORY[0x277D05738]);
      v28 = v48;
      v39 = sub_24910BFBC();
      v41 = v40;
      sub_2490B38D0(v39, v40);
      sub_2490F7BC8(a1, v39, v41, 0);
      sub_2490A453C(v39, v41);
      sub_2490A453C(v39, v41);
      (*(v47 + 8))(v26, v28);
    }

    else
    {
      v31 = *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager);
      if (v31 && (v32 = [v31 currentAccessory]) != 0)
      {
        v33 = v32;
        v34 = [v32 uniqueIdentifier];

        v35 = v43;
        sub_24910C2CC();

        v36 = sub_24910C28C();
        v38 = v37;
        (*(v44 + 8))(v35, v45);
        sub_2490E26B4(v36, v38, v23, 0);
      }

      else
      {
        sub_2490E46D0(a1);
      }
    }
  }

  else
  {
    sub_24910C7DC();
    v29 = sub_24910C7EC();
    swift_willThrow();
    (*(v16 + 8))(v19, v15);
    v30 = v29;
    sub_2490F7BC8(a1, v29, 0, 1);
  }
}

void sub_2490E26B4(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  LODWORD(v263) = a4;
  v267 = a2;
  v268 = a3;
  v265 = a1;
  ObjectType = swift_getObjectType();
  v259 = sub_24910CB8C();
  v6 = *(v259 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v259);
  v252 = &v220[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v253 = sub_24910CBAC();
  v251 = *(v253 - 8);
  v9 = *(v251 + 64);
  MEMORY[0x28223BE20](v253);
  v250 = &v220[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v242 = &v220[-v13];
  v14 = sub_24910C4FC();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v239 = &v220[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v254 = sub_24910C73C();
  v245 = *(v254 - 8);
  v17 = *(v245 + 64);
  v18 = MEMORY[0x28223BE20](v254);
  v241 = &v220[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v236 = v19;
  MEMORY[0x28223BE20](v18);
  v244 = &v220[-v20];
  v260 = sub_24910C86C();
  v255 = *(v260 - 8);
  v21 = *(v255 + 64);
  v22 = MEMORY[0x28223BE20](v260);
  v235 = &v220[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x28223BE20](v22);
  v238 = &v220[-v24];
  v25 = MEMORY[0x28223BE20](v23);
  v240 = &v220[-v26];
  v27 = MEMORY[0x28223BE20](v25);
  v234 = &v220[-v28];
  MEMORY[0x28223BE20](v27);
  v237 = &v220[-v29];
  v261 = type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0);
  v246 = *(v261 - 8);
  v30 = *(v246 + 64);
  v31 = MEMORY[0x28223BE20](v261);
  v248 = &v220[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = MEMORY[0x28223BE20](v31);
  v258 = &v220[-v34];
  v247 = v35;
  MEMORY[0x28223BE20](v33);
  v257 = &v220[-v36];
  v270 = sub_24910C2FC();
  v262 = *(v270 - 8);
  v37 = *(v262 + 64);
  v38 = MEMORY[0x28223BE20](v270);
  v266 = &v220[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v38);
  v269 = &v220[-v40];
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F20, &qword_249110878);
  v41 = *(*(v256 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v256);
  v243 = &v220[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v42);
  v45 = &v220[-v44];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7900, &qword_24910EB50);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x28223BE20](v46 - 8);
  v50 = &v220[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = MEMORY[0x28223BE20](v48);
  v52 = MEMORY[0x28223BE20](v51);
  v53 = MEMORY[0x28223BE20](v52);
  v55 = &v220[-v54];
  v56 = MEMORY[0x28223BE20](v53);
  v58 = &v220[-v57];
  MEMORY[0x28223BE20](v56);
  v62 = &v220[-v61];
  v63 = *(v5 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager);
  if (!v63)
  {
    sub_24910C7DC();
    sub_24910C7EC();
    swift_willThrow();
    return;
  }

  v231 = v60;
  v232 = v59;
  v230 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager;
  v233 = v6;
  v64 = sub_24910C50C();
  v272 = v64;
  v273 = sub_2490F57CC(&qword_27EED7F28, MEMORY[0x277D05678]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(aBlock);
  (*(*(v64 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D05670], v64);
  v66 = v63;
  LOBYTE(v64) = sub_24910C30C();
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  if ((v64 & 1) == 0 && ![v66 hasOptedToHH2])
  {
LABEL_14:
    sub_24910C7DC();
    sub_24910C7EC();
    swift_willThrow();

    return;
  }

  if ((*(v5 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeKitDeferred) & 1) != 0 || (sub_2490E52F8(v265, v267), v229 = v68, !v67))
  {
    if ((v263 & 1) == 0)
    {
      sub_2490E4CC4(v265, v267, v268);

      return;
    }

    goto LABEL_14;
  }

  v222 = v50;
  v69 = v67;
  v227 = sub_2490E55A0();
  v226 = v69;
  v70 = [v69 uniqueIdentifier];
  sub_24910C2CC();

  v71 = v262 + 56;
  v72 = 1;
  v263 = *(v262 + 56);
  v263(v62, 0, 1, v270);
  v228 = v66;
  v73 = [v66 currentAccessory];
  v264 = v5;
  if (v73)
  {
    v74 = v73;
    v75 = [v73 uniqueIdentifier];

    sub_24910C2CC();
    v72 = 0;
  }

  v76 = v270;
  v225 = v71;
  v263(v58, v72, 1, v270);
  v77 = *(v256 + 48);
  sub_2490A4674(v62, v45, &qword_27EED7900, &qword_24910EB50);
  sub_2490A4674(v58, &v45[v77], &qword_27EED7900, &qword_24910EB50);
  v79 = v262 + 48;
  v78 = *(v262 + 48);
  v80 = v78(v45, 1, v76);
  v223 = v79;
  if (v80 == 1)
  {
    sub_2490A487C(v58, &qword_27EED7900, &qword_24910EB50);
    sub_2490A487C(v62, &qword_27EED7900, &qword_24910EB50);
    v81 = v78(&v45[v77], 1, v76);
    v82 = v267;
    v83 = v76;
    if (v81 == 1)
    {
      sub_2490A487C(v45, &qword_27EED7900, &qword_24910EB50);
      LODWORD(v84) = 1;
      v85 = v268;
      v87 = v257;
      v86 = v258;
      goto LABEL_33;
    }

    goto LABEL_17;
  }

  sub_2490A4674(v45, v55, &qword_27EED7900, &qword_24910EB50);
  v224 = v78;
  if (v78(&v45[v77], 1, v76) == 1)
  {
    sub_2490A487C(v58, &qword_27EED7900, &qword_24910EB50);
    sub_2490A487C(v62, &qword_27EED7900, &qword_24910EB50);
    (*(v262 + 8))(v55, v76);
    v82 = v267;
    v83 = v76;
    v78 = v224;
LABEL_17:
    sub_2490A487C(v45, &qword_27EED7F20, &qword_249110878);
    v85 = v268;
    v88 = v228;
    v86 = v258;
    goto LABEL_18;
  }

  v96 = v269;
  (*(v262 + 32))(v269, &v45[v77], v76);
  sub_2490F57CC(&qword_27EED7EE0, MEMORY[0x277CC95F0]);
  v221 = sub_24910CC7C();
  v97 = *(v262 + 8);
  v97(v96, v76);
  sub_2490A487C(v58, &qword_27EED7900, &qword_24910EB50);
  sub_2490A487C(v62, &qword_27EED7900, &qword_24910EB50);
  v97(v55, v76);
  sub_2490A487C(v45, &qword_27EED7900, &qword_24910EB50);
  v82 = v267;
  v85 = v268;
  v88 = v228;
  v83 = v76;
  v86 = v258;
  v78 = v224;
  if (v221)
  {
    LODWORD(v84) = 1;
    v87 = v257;
    goto LABEL_33;
  }

LABEL_18:
  v87 = v257;
  if (!v227)
  {
    LODWORD(v84) = 0;
    goto LABEL_33;
  }

  v224 = v78;
  v89 = [v227 uniqueIdentifier];
  v90 = v232;
  sub_24910C2CC();

  v91 = 1;
  v263(v90, 0, 1, v83);
  v92 = [v88 currentAccessory];
  if (v92)
  {
    v93 = v92;
    v94 = [v92 uniqueIdentifier];

    v95 = v231;
    sub_24910C2CC();

    v91 = 0;
  }

  else
  {
    v95 = v231;
  }

  v263(v95, v91, 1, v83);
  v84 = *(v256 + 48);
  v98 = v232;
  v99 = v243;
  sub_2490A4674(v232, v243, &qword_27EED7900, &qword_24910EB50);
  sub_2490A4674(v95, &v99[v84], &qword_27EED7900, &qword_24910EB50);
  v100 = v224;
  if (v224(v99, 1, v83) == 1)
  {
    sub_2490A487C(v95, &qword_27EED7900, &qword_24910EB50);
    v101 = v243;
    sub_2490A487C(v98, &qword_27EED7900, &qword_24910EB50);
    v102 = v100(&v101[v84], 1, v83);
    v82 = v267;
    v87 = v257;
    if (v102 == 1)
    {
      sub_2490A487C(v101, &qword_27EED7900, &qword_24910EB50);
      LODWORD(v84) = 1;
LABEL_31:
      v86 = v258;
      v85 = v268;
      goto LABEL_33;
    }

LABEL_30:
    sub_2490A487C(v101, &qword_27EED7F20, &qword_249110878);
    LODWORD(v84) = 0;
    goto LABEL_31;
  }

  v103 = v222;
  sub_2490A4674(v99, v222, &qword_27EED7900, &qword_24910EB50);
  v104 = v100(&v99[v84], 1, v83);
  v82 = v267;
  v87 = v257;
  if (v104 == 1)
  {
    sub_2490A487C(v231, &qword_27EED7900, &qword_24910EB50);
    v101 = v243;
    sub_2490A487C(v232, &qword_27EED7900, &qword_24910EB50);
    (*(v262 + 8))(v103, v83);
    goto LABEL_30;
  }

  v105 = v262;
  v106 = v269;
  (*(v262 + 32))(v269, &v99[v84], v83);
  sub_2490F57CC(&qword_27EED7EE0, MEMORY[0x277CC95F0]);
  LODWORD(v256) = sub_24910CC7C();
  v107 = *(v105 + 8);
  v107(v106, v83);
  sub_2490A487C(v231, &qword_27EED7900, &qword_24910EB50);
  sub_2490A487C(v232, &qword_27EED7900, &qword_24910EB50);
  v107(v103, v83);
  LODWORD(v84) = v256;
  v85 = v268;
  sub_2490A487C(v243, &qword_27EED7900, &qword_24910EB50);
  v86 = v258;
LABEL_33:
  v108 = [v229 siriEndpointProfile];
  v109 = v108;
  if (v108)
  {
  }

  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v110 = sub_24910C89C();
  __swift_project_value_buffer(v110, qword_27EEDAFD8);
  sub_2490FA748(v85, v87, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  sub_2490FA748(v85, v86, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);

  v111 = v226;
  v112 = sub_24910C87C();
  v113 = sub_24910CF5C();

  v114 = os_log_type_enabled(v112, v113);
  v263 = v111;
  if (v114)
  {
    LODWORD(v226) = v109 != 0;
    v115 = swift_slowAlloc();
    v243 = swift_slowAlloc();
    aBlock[0] = v243;
    *v115 = 136316162;
    v225 = sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0]);
    v232 = v112;
    LODWORD(v256) = v84;
    v84 = v270;
    v116 = sub_24910D50C();
    LODWORD(v231) = v113;
    v118 = v117;
    sub_2490FA7B0(v87, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    v119 = sub_24909F930(v116, v118, aBlock);

    *(v115 + 4) = v119;
    *(v115 + 12) = 2080;
    v120 = *(v261 + 24);
    sub_2490F57CC(&qword_27EED7B30, MEMORY[0x277D057E0]);
    v121 = sub_24910D50C();
    v123 = v122;
    sub_2490FA7B0(v86, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    v124 = sub_24909F930(v121, v123, aBlock);

    *(v115 + 14) = v124;
    *(v115 + 22) = 2080;
    *(v115 + 24) = sub_24909F930(v265, v82, aBlock);
    *(v115 + 32) = 1024;
    *(v115 + 34) = v226;
    *(v115 + 38) = 2080;
    v125 = [v111 uniqueIdentifier];
    v126 = v269;
    sub_24910C2CC();

    v127 = sub_24910D50C();
    v129 = v128;
    v130 = v84;
    LOBYTE(v84) = v256;
    (*(v262 + 8))(v126, v130);
    v131 = sub_24909F930(v127, v129, aBlock);

    *(v115 + 40) = v131;
    v132 = v261;
    v133 = v232;
    _os_log_impl(&dword_249083000, v232, v231, "Operation start: xid=%s, request=%s, hkid=%s, sidekick=%{BOOL}d, preferred=%s", v115, 0x30u);
    v134 = v243;
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v134, -1, -1);
    MEMORY[0x24C1F26F0](v115, -1, -1);

    v135 = v264;
  }

  else
  {

    sub_2490FA7B0(v86, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    sub_2490FA7B0(v87, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    v135 = v264;
    v132 = v261;
  }

  v136 = dispatch_group_create();
  v137 = swift_allocObject();
  *(v137 + 16) = 0;
  *(v137 + 24) = 0;
  *(v137 + 32) = -1;
  dispatch_group_enter(v136);
  v138 = swift_allocObject();
  *(v138 + 16) = v137;
  *(v138 + 24) = v136;
  v256 = v138;
  v139 = *(v132 + 24);
  v141 = v255 + 16;
  v140 = *(v255 + 16);
  v142 = (v255 + 88);
  v243 = (v255 + 8);
  v143 = v268;
  v257 = v137;
  v258 = v136;
  v232 = v139;
  v231 = v255 + 88;
  if ((v84 & 1) == 0)
  {
    v153 = v238;
    v154 = v260;
    v244 = v140;
    (v140)(v238, v139 + v268, v260);
    v245 = *(v141 + 72);
    LODWORD(v255) = (v245)(v153, v154);
    LODWORD(v254) = *MEMORY[0x277D057C0];
    v155 = *v243;

    v156 = v136;
    v157 = v153;
    v158 = v155;
    v155(v157, v154);
    if (v255 == v254)
    {
      v159 = v263;
      sub_2490D42F8(v143, v229, v263);
      v160 = v259;
      v161 = v261;
      v162 = v256;
      v163 = v143;
      v164 = v159;
    }

    else
    {
      v185 = v235;
      (v244)(v235, v232 + v143, v154);
      v186 = (v245)(v185, v154);
      v187 = *MEMORY[0x277D05790];
      v158(v185, v154);
      v168 = v186 == v187;
      v160 = v259;
      v161 = v261;
      v162 = v256;
      v163 = v143;
      v164 = v263;
      if (v168)
      {
        sub_2490D4DC4(v163, v263);
      }
    }

    sub_2490F5FE4(v164, v265, v267, v163, v135, v162);

    goto LABEL_54;
  }

  v144 = v237;
  v145 = v260;
  v146 = v140;
  (v140)(v237, v139 + v268, v260);
  v226 = *v142;
  LODWORD(v238) = (v226)(v144, v145);
  LODWORD(v235) = *MEMORY[0x277D057C0];
  v147 = *v243;

  v148 = v136;
  v149 = v144;
  v150 = v147;
  v147(v149, v145);
  if (v238 == v235)
  {
    v151 = v146;
    v135 = v264;
    sub_2490D2FC8(v268, v229);
    v152 = v256;
  }

  else
  {
    v165 = v234;
    v151 = v146;
    v146(v234, v232 + v268, v145);
    v166 = (v226)(v165, v145);
    v167 = *MEMORY[0x277D05790];
    v150(v165, v145);
    v168 = v166 == v167;
    v135 = v264;
    v152 = v256;
    if (v168)
    {
      sub_2490D3F48(v268, v229);
    }
  }

  sub_24910C4DC();
  v169 = v244;
  sub_24910C70C();
  v170 = swift_allocObject();
  *(v170 + 2) = sub_2490FA900;
  *(v170 + 3) = v152;
  v243 = v170;
  if (*(v135 + v230))
  {
    v239 = *(v135 + v230);
    v171 = sub_24910CDEC();
    (*(*(v171 - 8) + 56))(v242, 1, 1, v171);
    v172 = v245;
    (*(v245 + 16))(v241, v169, v254);
    v151(v240, v232 + v268, v145);
    v238 = sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon);
    v173 = (*(v172 + 80) + 32) & ~*(v172 + 80);
    v174 = (v236 + v173 + 7) & 0xFFFFFFFFFFFFFFF8;
    v175 = v255;
    v176 = (*(v255 + 80) + v174 + 8) & ~*(v255 + 80);
    v177 = (v21 + v176 + 7) & 0xFFFFFFFFFFFFFFF8;
    v178 = swift_allocObject();
    v179 = v238;
    *(v178 + 16) = v135;
    *(v178 + 24) = v179;
    (*(v172 + 32))(v178 + v173, v241, v254);
    v180 = v239;
    *(v178 + v174) = v239;
    v163 = v268;
    (*(v175 + 32))(v178 + v176, v240, v260);
    *(v178 + v177) = v135;
    v181 = (v178 + ((v177 + 15) & 0xFFFFFFFFFFFFFFF8));
    v182 = v243;
    *v181 = sub_2490FACB8;
    v181[1] = v182;
    v183 = v180;
    swift_retain_n();
    v184 = v183;

    sub_2490E832C(0, 0, v242, &unk_249110890, v178);

    (*(v245 + 8))(v244, v254);
    v160 = v259;
    v161 = v261;
    v164 = v263;
LABEL_54:
    v188 = v257;
    goto LABEL_55;
  }

  (*(v245 + 8))(v169, v254);
  v160 = v259;
  v161 = v261;
  v164 = v263;
  v188 = v257;
  v163 = v268;
LABEL_55:
  v189 = v163 + *(v161 + 24);
  if ((sub_24910C83C() & 1) == 0)
  {
LABEL_71:
    v210 = sub_24910C34C();
    v211 = v163;
    v212 = v248;
    sub_2490FA748(v211, v248, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    v213 = (*(v246 + 80) + 24) & ~*(v246 + 80);
    v214 = (v247 + v213 + 7) & 0xFFFFFFFFFFFFFFF8;
    v215 = swift_allocObject();
    *(v215 + 16) = v188;
    sub_2490FA810(v212, v215 + v213, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    *(v215 + v214) = ObjectType;
    v273 = sub_2490FAB54;
    v274 = v215;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2490FC7CC;
    v272 = &block_descriptor_182_0;
    v216 = _Block_copy(aBlock);

    v217 = v250;
    sub_24910CB9C();
    v275 = MEMORY[0x277D84F90];
    sub_2490F57CC(&qword_27EED7F30, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F38, &qword_249110880);
    sub_2490FAC70(&unk_27EED7F40, &qword_27EED7F38, &qword_249110880);
    v218 = v252;
    sub_24910D14C();
    v219 = v258;
    sub_24910CF8C();

    _Block_release(v216);

    (*(v233 + 8))(v218, v160);
    (*(v251 + 8))(v217, v253);

    return;
  }

  LODWORD(v261) = *(v135 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__multicastWait);
  v190 = sub_2490F6B68(v229);
  v191 = v190;
  if (!(v190 >> 62))
  {
    v192 = *((v190 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v193 = 0x278F87000;
    if (v192)
    {
      goto LABEL_58;
    }

LABEL_70:

    v160 = v259;
    v163 = v268;
    v164 = v263;
    v188 = v257;
    goto LABEL_71;
  }

  v208 = v190;
  v209 = sub_24910D19C();
  v191 = v208;
  v192 = v209;
  v193 = 0x278F87000;
  if (!v209)
  {
    goto LABEL_70;
  }

LABEL_58:
  if (v192 >= 1)
  {
    v194 = 0;
    v260 = v191 & 0xC000000000000001;
    v195 = (v262 + 8);
    v262 = v191;
    do
    {
      if (v260)
      {
        v198 = MEMORY[0x24C1F1C90](v194);
      }

      else
      {
        v198 = *(v191 + 8 * v194 + 32);
      }

      v197 = v198;
      v199 = [v198 *(v193 + 3360)];
      v200 = v269;
      sub_24910C2CC();

      v201 = [v263 *(v193 + 3360)];
      v202 = v266;
      sub_24910C2CC();

      sub_2490F57CC(&qword_27EED7EE0, MEMORY[0x277CC95F0]);
      v203 = v270;
      v204 = sub_24910CC7C();
      v205 = *v195;
      (*v195)(v202, v203);
      v205(v200, v203);
      if ((v204 & 1) == 0)
      {
        v206 = v264;
        v207 = v258;
        if (v261)
        {
          dispatch_group_enter(v258);
        }

        v196 = v207;
        sub_2490F6E90(v197, v265, v267, v268, v206, v261, v196);

        v197 = v196;
      }

      v193 = 0x278F87000uLL;
      ++v194;

      v191 = v262;
    }

    while (v192 != v194);
    goto LABEL_70;
  }

  __break(1u);
}

void sub_2490E46D0(uint64_t a1)
{
  v48 = a1;
  ObjectType = swift_getObjectType();
  v54 = sub_24910C86C();
  v46 = *(v54 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v54);
  v44 = v4;
  v52 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_24910C73C();
  v45 = *(v50 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v51 = &v40 - v8;
  v9 = type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager;
  v14 = *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager);
  if (v14)
  {
    v43 = v2;
    v15 = sub_24910C50C();
    v53[3] = v15;
    v53[4] = sub_2490F57CC(&qword_27EED7F28, MEMORY[0x277D05678]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v53);
    (*(*(v15 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D05670], v15);
    v17 = v14;
    LOBYTE(v15) = sub_24910C30C();
    __swift_destroy_boxed_opaque_existential_0(v53);
    if ((v15 & 1) != 0 || [v17 hasOptedToHH2])
    {
      v18 = *(v9 + 24);
      v19 = *(v9 + 28);
      v41 = v18;
      v42 = v17;
      v20 = v48;
      sub_2490FA748(v48, &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
      v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
      v22 = (v11 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
      v23 = swift_allocObject();
      sub_2490FA810(v12, v23 + v21, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
      *(v23 + v22) = ObjectType;
      if (*(v1 + v13))
      {
        v24 = v1;
        ObjectType = *(v1 + v13);
        v25 = sub_24910CDEC();
        (*(*(v25 - 8) + 56))(v51, 1, 1, v25);
        v26 = v45;
        (*(v45 + 16))(v49, v20 + v19, v50);
        v40 = v23;
        v27 = v46;
        (*(v46 + 16))(v52, v20 + v41, v54);
        v48 = sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon);
        v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
        v29 = (v5 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
        v30 = (*(v27 + 80) + v29 + 8) & ~*(v27 + 80);
        v31 = (v44 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
        v32 = swift_allocObject();
        v34 = v48;
        v33 = v49;
        *(v32 + 16) = v24;
        *(v32 + 24) = v34;
        (*(v26 + 32))(v32 + v28, v33, v50);
        v35 = ObjectType;
        *(v32 + v29) = ObjectType;
        (*(v27 + 32))(v32 + v30, v52, v54);
        v36 = v40;
        *(v32 + v31) = v24;
        v37 = (v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8));
        *v37 = sub_2490FB5D8;
        v37[1] = v36;
        v38 = v35;
        swift_retain_n();
        v39 = v38;

        sub_2490E832C(0, 0, v51, &unk_249110900, v32);
      }
    }

    else
    {
      sub_24910C7DC();
      sub_24910C7EC();
      swift_willThrow();
    }
  }

  else
  {
    sub_24910C7DC();
    sub_24910C7EC();
    swift_willThrow();
  }
}

uint64_t sub_2490E4CC4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F80, &qword_2491108C8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v48 - v10;
  v12 = sub_24910C49C();
  v55 = *(v12 - 8);
  v56 = v12;
  v13 = *(v55 + 64);
  MEMORY[0x28223BE20](v12);
  v54 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter(0);
  v57 = *(v15 - 1);
  v16 = *(v57 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v48 - v21;
  v58 = CUNextIDDecimal64();
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
    v49 = a3;
    v50 = v15;
    v51 = v11;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v60[0] = v27;
    *v26 = 134218498;
    *(v26 + 4) = v58;
    *(v26 + 12) = 2080;
    v52 = a1;
    *(v26 + 14) = sub_24909F930(a1, a2, v60);
    *(v26 + 22) = 2080;
    if (qword_27EEDB010 != -1)
    {
      swift_once();
    }

    v28 = sub_24910D66C();
    v30 = sub_24909F930(v28, v29, v60);

    *(v26 + 24) = v30;
    _os_log_impl(&dword_249083000, v24, v25, "WaiterStart: xid=%llu, accessoryID=%s, timeout=%s", v26, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v27, -1, -1);
    MEMORY[0x24C1F26F0](v26, -1, -1);

    v11 = v51;
    a1 = v52;
    a3 = v49;
    v15 = v50;
  }

  else
  {
  }

  v31 = sub_24910CDEC();
  (*(*(v31 - 8) + 56))(v22, 1, 1, v31);
  v32 = sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon);
  v33 = swift_allocObject();
  v33[2] = v4;
  v33[3] = v32;
  v33[4] = v4;
  v33[5] = a1;
  v34 = v58;
  v33[6] = a2;
  v33[7] = v34;
  v33[8] = ObjectType;
  swift_retain_n();

  v35 = sub_249094614(0, 0, v22, &unk_2491108D8, v33);
  sub_2490FA748(a3, v18 + v15[5], type metadata accessor for DTTransportDaemon.DTOperationItemRequest);

  v36 = v54;
  sub_24910C39C();
  v37 = v18 + v15[6];
  sub_24910C44C();
  (*(v55 + 8))(v36, v56);
  *v18 = a1;
  v18[1] = a2;
  *(v18 + v15[7]) = v35;
  v38 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__waitingOperations;
  swift_beginAccess();
  v39 = *(v4 + v38);
  if (*(v39 + 16) && (v40 = sub_2490A0A3C(a1, a2), (v41 & 1) != 0))
  {
    v42 = *(*(v39 + 56) + 8 * v40);
  }

  else
  {
    v43 = sub_2490F79F0(MEMORY[0x277D84F90]);
  }

  v61 = v43;
  swift_endAccess();
  sub_2490FA748(v18, v11, type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter);
  (*(v57 + 56))(v11, 0, 1, v15);
  sub_2490D3B04(v11, v58);
  v44 = v61;
  swift_beginAccess();

  v45 = *(v4 + v38);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v59 = *(v4 + v38);
  *(v4 + v38) = 0x8000000000000000;
  sub_2490F33EC(v44, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v4 + v38) = v59;
  swift_endAccess();
  return sub_2490FA7B0(v18, type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter);
}

void sub_2490E52F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7900, &qword_24910EB50);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  sub_2490E7FBC(a1, a2);
  v12 = v11;
  if (v11)
  {
    v13 = [v11 siriEndpointProfile];
    if (!v13)
    {
LABEL_8:
      v18 = v12;
      return;
    }

    v14 = v13;
    v15 = [v13 sessionHubIdentifier];

    if (v15)
    {
      sub_24910C2CC();

      v16 = sub_24910C2FC();
      (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
    }

    else
    {
      v16 = sub_24910C2FC();
      (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    }

    sub_2490B3868(v8, v10, &qword_27EED7900, &qword_24910EB50);
    sub_24910C2FC();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v10, 1, v16) == 1)
    {
      sub_2490A487C(v10, &qword_27EED7900, &qword_24910EB50);
      goto LABEL_8;
    }

    v19 = sub_24910C28C();
    v21 = v20;
    (*(v17 + 8))(v10, v16);
    if (sub_2490F0A04(v19, v21))
    {
    }

    else
    {
      sub_2490E7FBC(v19, v21);
      v23 = v22;

      if (!v23)
      {
        goto LABEL_8;
      }
    }
  }
}

unint64_t sub_2490E55A0()
{
  v1 = v0;
  v2 = sub_24910C2FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v75 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F20, &qword_249110878);
  v6 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v8 = &v65 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7900, &qword_24910EB50);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v88 = &v65 - v15;
  MEMORY[0x28223BE20](v14);
  v78 = &v65 - v16;
  v82 = v1;
  v17 = [v1 home];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 mediaSystems];

    sub_2490A4744(0, &qword_27EED7F78, 0x277CD1BE8);
    v20 = sub_24910CD5C();
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  v21 = v20 >> 62;
  v22 = v20;
  v23 = v78;
  v67 = v22;
  if (v21)
  {
    goto LABEL_65;
  }

  v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v24)
  {
LABEL_57:

    return 0;
  }

LABEL_6:
  v69 = v67 & 0xC000000000000001;
  v66 = v67 & 0xFFFFFFFFFFFFFF8;
  v65 = v67 + 32;
  v79 = (v3 + 48);
  v80 = (v3 + 56);
  v74 = (v3 + 32);
  v76 = (v3 + 8);
  v77 = v13;
  v25 = 0x278F87000;
  v3 = 0;
  v68 = v24;
  v73 = v8;
  while (1)
  {
    if (v69)
    {
      v26 = MEMORY[0x24C1F1C90](v3, v67);
    }

    else
    {
      if (v3 >= *(v66 + 16))
      {
        goto LABEL_64;
      }

      v26 = *(v65 + 8 * v3);
    }

    v13 = v26;
    if (__OFADD__(v3++, 1))
    {
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      v24 = sub_24910D19C();
      if (!v24)
      {
        goto LABEL_57;
      }

      goto LABEL_6;
    }

    v28 = [v26 components];
    v70 = sub_2490A4744(0, &qword_27EED7F70, 0x277CD1C00);
    v29 = sub_24910CD5C();

    v71 = v3;
    v72 = v13;
    if (!(v29 >> 62))
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
        break;
      }

      goto LABEL_52;
    }

    v30 = sub_24910D19C();
    if (v30)
    {
      break;
    }

LABEL_52:

LABEL_55:

LABEL_56:
    v3 = v71;
    if (v71 == v68)
    {
      goto LABEL_57;
    }
  }

  v13 = 0;
  v85 = v29 & 0xFFFFFFFFFFFFFF8;
  v86 = v29 & 0xC000000000000001;
  v83 = v30;
  v84 = v29;
  while (v86)
  {
    v32 = MEMORY[0x24C1F1C90](v13, v29);
    v33 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_58;
    }

LABEL_21:
    v89 = v32;
    v34 = [v32 mediaProfile];
    v87 = v33;
    if (v34 && (v35 = v34, v36 = [v34 accessory], v35, v36))
    {
      v37 = [v36 *(v25 + 3360)];

      sub_24910C2CC();
      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    v39 = *v80;
    (*v80)(v23, v38, 1, v2);
    v40 = [v82 *(v25 + 3360)];
    v41 = v88;
    sub_24910C2CC();

    v39(v41, 0, 1, v2);
    v42 = *(v81 + 48);
    sub_2490A4674(v23, v8, &qword_27EED7900, &qword_24910EB50);
    sub_2490A4674(v41, &v8[v42], &qword_27EED7900, &qword_24910EB50);
    v43 = *v79;
    if ((*v79)(v8, 1, v2) == 1)
    {
      sub_2490A487C(v88, &qword_27EED7900, &qword_24910EB50);
      sub_2490A487C(v23, &qword_27EED7900, &qword_24910EB50);
      v31 = v43(&v8[v42], 1, v2);
      v29 = v84;
      if (v31 != 1)
      {
LABEL_16:
        sub_2490A487C(v8, &qword_27EED7F20, &qword_249110878);
        v25 = 0x278F87000uLL;
        goto LABEL_17;
      }

      sub_2490A487C(v8, &qword_27EED7900, &qword_24910EB50);
      v25 = 0x278F87000;
LABEL_34:

      v52 = [v89 role];
      v53 = [v52 type];

      v54 = 1;
      if (v53 == 1)
      {
        v54 = 2;
      }

      v87 = v54;
      v55 = [v72 components];
      v3 = sub_24910CD5C();

      if (v3 >> 62)
      {
        v56 = sub_24910D19C();
        if (v56)
        {
LABEL_38:
          v13 = 0;
          v85 = v3 & 0xFFFFFFFFFFFFFF8;
          v86 = v3 & 0xC000000000000001;
          while (1)
          {
            if (v86)
            {
              v57 = MEMORY[0x24C1F1C90](v13, v3);
            }

            else
            {
              if (v13 >= *(v85 + 16))
              {
                goto LABEL_62;
              }

              v57 = *(v3 + 8 * v13 + 32);
            }

            v23 = v57;
            v58 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              __break(1u);
LABEL_62:
              __break(1u);
              goto LABEL_63;
            }

            v59 = v3;
            v60 = [v57 role];
            v61 = [v60 type];

            if (v61 == v87)
            {
              break;
            }

            ++v13;
            v3 = v59;
            v23 = v78;
            if (v58 == v56)
            {
              goto LABEL_54;
            }
          }

          v62 = [v23 mediaProfile];
          if (!v62)
          {

            v23 = v78;
            goto LABEL_56;
          }

          v63 = v62;
          v13 = [v62 accessory];

          v23 = v78;
          if (!v13)
          {
            goto LABEL_56;
          }

          goto LABEL_60;
        }
      }

      else
      {
        v56 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v56)
        {
          goto LABEL_38;
        }
      }

LABEL_54:

      goto LABEL_55;
    }

    v44 = v77;
    sub_2490A4674(v8, v77, &qword_27EED7900, &qword_24910EB50);
    if (v43(&v8[v42], 1, v2) == 1)
    {
      sub_2490A487C(v88, &qword_27EED7900, &qword_24910EB50);
      v45 = v78;
      sub_2490A487C(v78, &qword_27EED7900, &qword_24910EB50);
      v46 = v44;
      v23 = v45;
      (*v76)(v46, v2);
      v29 = v84;
      goto LABEL_16;
    }

    v47 = v75;
    (*v74)(v75, &v8[v42], v2);
    sub_2490F57CC(&qword_27EED7EE0, MEMORY[0x277CC95F0]);
    v48 = sub_24910CC7C();
    v49 = *v76;
    (*v76)(v47, v2);
    sub_2490A487C(v88, &qword_27EED7900, &qword_24910EB50);
    v50 = v78;
    sub_2490A487C(v78, &qword_27EED7900, &qword_24910EB50);
    v51 = v44;
    v23 = v50;
    v49(v51, v2);
    v8 = v73;
    sub_2490A487C(v73, &qword_27EED7900, &qword_24910EB50);
    v25 = 0x278F87000;
    v29 = v84;
    if (v48)
    {
      goto LABEL_34;
    }

LABEL_17:

    ++v13;
    if (v87 == v83)
    {
      goto LABEL_52;
    }
  }

  if (v13 >= *(v85 + 16))
  {
    goto LABEL_59;
  }

  v32 = *(v29 + 8 * v13 + 32);
  v33 = v13 + 1;
  if (!__OFADD__(v13, 1))
  {
    goto LABEL_21;
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:

  return v13;
}

void sub_2490E5F10(void *a1, unint64_t a2, int a3, uint64_t a4, void *a5, void (*a6)(void, void, void), uint64_t a7)
{
  v95 = a7;
  v96 = a1;
  v97 = a2;
  v11 = sub_24910C2FC();
  v92 = *(v11 - 8);
  v93 = v11;
  v12 = *(v92 + 64);
  MEMORY[0x28223BE20](v11);
  v91 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v85 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v85 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v85 - v25;
  v94 = a3;
  if (a3)
  {
    if (qword_27EEDAFD0 != -1)
    {
      swift_once();
    }

    v27 = sub_24910C89C();
    __swift_project_value_buffer(v27, qword_27EEDAFD8);
    sub_2490FA748(a4, v21, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    sub_2490FA748(a4, v18, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    v29 = v96;
    v28 = v97;
    sub_2490FA40C(v96, v97, 1);
    v30 = a5;
    v31 = sub_24910C87C();
    v32 = sub_24910CF4C();

    sub_2490FA418(v29, v28, 1);
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v98 = v89;
      *v33 = 136315906;
      v86 = sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0]);
      LODWORD(v88) = v32;
      v34 = v93;
      v35 = sub_24910D50C();
      v90 = a6;
      v37 = v36;
      v87 = v31;
      sub_2490FA7B0(v21, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
      v38 = sub_24909F930(v35, v37, &v98);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2080;
      v39 = *(v14 + 24);
      sub_24910C86C();
      sub_2490F57CC(&qword_27EED7B30, MEMORY[0x277D057E0]);
      v40 = sub_24910D50C();
      v42 = v41;
      sub_2490FA7B0(v18, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
      v43 = sub_24909F930(v40, v42, &v98);

      *(v33 + 14) = v43;
      *(v33 + 22) = 2080;
      v44 = [v30 uniqueIdentifier];
      v45 = v91;
      sub_24910C2CC();

      v46 = sub_24910D50C();
      v48 = v47;
      (*(v92 + 8))(v45, v34);
      v49 = sub_24909F930(v46, v48, &v98);

      *(v33 + 24) = v49;
      *(v33 + 32) = 2080;
      a6 = v90;
      swift_getErrorValue();
      v50 = sub_24910D5DC();
      v52 = sub_24909F930(v50, v51, &v98);

      *(v33 + 34) = v52;
      v53 = v87;
      _os_log_impl(&dword_249083000, v87, v88, "### HMMM send failed: xid=%s, request=%s, hkID=%s, error=%s", v33, 0x2Au);
      v54 = v89;
      swift_arrayDestroy();
      MEMORY[0x24C1F26F0](v54, -1, -1);
      MEMORY[0x24C1F26F0](v33, -1, -1);
    }

    else
    {

      sub_2490FA7B0(v18, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
      sub_2490FA7B0(v21, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    }

    v56 = v97;
    goto LABEL_24;
  }

  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v55 = sub_24910C89C();
  __swift_project_value_buffer(v55, qword_27EEDAFD8);
  sub_2490FA748(a4, v26, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  sub_2490FA748(a4, v24, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  v29 = v96;
  v56 = v97;
  sub_2490FA40C(v96, v97, 0);
  sub_2490FA40C(v29, v56, 0);
  v57 = a5;
  v58 = sub_24910C87C();
  v59 = sub_24910CF5C();

  if (!os_log_type_enabled(v58, v59))
  {
    sub_2490FA418(v29, v56, 0);

    sub_2490FA418(v29, v56, 0);
    sub_2490FA7B0(v24, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    sub_2490FA7B0(v26, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
LABEL_24:
    a6(v29, v56, v94 & 1);
    return;
  }

  LODWORD(v87) = v59;
  v88 = v58;
  v90 = a6;
  v60 = swift_slowAlloc();
  v86 = swift_slowAlloc();
  v98 = v86;
  *v60 = 136315906;
  v89 = sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0]);
  v61 = v93;
  v62 = sub_24910D50C();
  v64 = v63;
  sub_2490FA7B0(v26, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  v65 = sub_24909F930(v62, v64, &v98);

  *(v60 + 4) = v65;
  *(v60 + 12) = 2080;
  v66 = *(v14 + 24);
  sub_24910C86C();
  sub_2490F57CC(&qword_27EED7B30, MEMORY[0x277D057E0]);
  v67 = sub_24910D50C();
  v69 = v68;
  sub_2490FA7B0(v24, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  v70 = sub_24909F930(v67, v69, &v98);

  *(v60 + 14) = v70;
  *(v60 + 22) = 2080;
  v71 = [v57 uniqueIdentifier];
  v72 = v91;
  sub_24910C2CC();

  v73 = sub_24910D50C();
  v75 = v74;
  (*(v92 + 8))(v72, v61);
  v76 = sub_24909F930(v73, v75, &v98);

  *(v60 + 24) = v76;
  *(v60 + 32) = 2048;
  v77 = v56 >> 62;
  if ((v56 >> 62) > 1)
  {
    v29 = v96;
    if (v77 != 2)
    {
      sub_2490FA418(v96, v56, 0);
      v78 = 0;
      goto LABEL_22;
    }

    v80 = *(v96 + 2);
    v79 = *(v96 + 3);
    sub_2490FA418(v96, v56, 0);
    v78 = v79 - v80;
    a6 = v90;
    if (!__OFSUB__(v79, v80))
    {
      goto LABEL_23;
    }

    __break(1u);
  }

  else
  {
    v29 = v96;
    if (!v77)
    {
      sub_2490FA418(v96, v56, 0);
      v78 = BYTE6(v56);
LABEL_22:
      a6 = v90;
      goto LABEL_23;
    }
  }

  sub_2490FA418(v29, v56, 0);
  LODWORD(v78) = HIDWORD(v29) - v29;
  a6 = v90;
  if (!__OFSUB__(HIDWORD(v29), v29))
  {
    v78 = v78;
LABEL_23:
    v81 = v87;
    *(v60 + 34) = v78;
    sub_2490FA418(v29, v56, 0);
    v82 = v81;
    v83 = v88;
    _os_log_impl(&dword_249083000, v88, v82, "HMMM send success: xid=%s, request=%s, hkID=%s, response=%ld bytes", v60, 0x2Au);
    v84 = v86;
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v84, -1, -1);
    MEMORY[0x24C1F26F0](v60, -1, -1);

    goto LABEL_24;
  }

  __break(1u);
}

uint64_t sub_2490E687C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a8;
  v8[21] = v25;
  v8[18] = a6;
  v8[19] = a7;
  v8[16] = a4;
  v8[17] = a5;
  v9 = sub_24910C73C();
  v8[22] = v9;
  v10 = *(v9 - 8);
  v8[23] = v10;
  v11 = *(v10 + 64) + 15;
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v12 = sub_24910C86C();
  v8[27] = v12;
  v13 = *(v12 - 8);
  v8[28] = v13;
  v14 = *(v13 + 64) + 15;
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v15 = sub_24910C2FC();
  v8[31] = v15;
  v16 = *(v15 - 8);
  v8[32] = v16;
  v17 = *(v16 + 64) + 15;
  v8[33] = swift_task_alloc();
  v18 = sub_24910C4FC();
  v8[34] = v18;
  v19 = *(v18 - 8);
  v8[35] = v19;
  v20 = *(v19 + 64) + 15;
  v8[36] = swift_task_alloc();
  type metadata accessor for DTTransportDaemon(0);
  sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon);
  v22 = sub_24910CDAC();
  v8[37] = v22;
  v8[38] = v21;

  return MEMORY[0x2822009F8](sub_2490E6ADC, v22, v21);
}

uint64_t sub_2490E6ADC()
{
  v54 = v0;
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 272);
  v4 = *(v0 + 128);
  sub_24910C6FC();
  v5 = sub_24910C4EC();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  if (!v7)
  {
    v8 = [*(v0 + 136) currentAccessory];
    if (v8)
    {
      v10 = *(v0 + 256);
      v9 = *(v0 + 264);
      v11 = *(v0 + 248);
      v12 = v8;
      v13 = [v8 uniqueIdentifier];

      sub_24910C2CC();
      v5 = sub_24910C28C();
      v7 = v14;
      (*(v10 + 8))(v9, v11);
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }
  }

  v15 = *(v0 + 240);
  v16 = *(v0 + 208);
  v17 = *(v0 + 176);
  v18 = *(v0 + 184);
  v19 = *(v0 + 144);
  v20 = *(v0 + 128);
  sub_24910C84C();
  v21 = *(v18 + 16);
  *(v0 + 312) = v21;
  *(v0 + 320) = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v21(v16, v20, v17);
  if (v7)
  {
    v22 = *(v0 + 136);

    sub_2490E7FBC(v5, v7);
    v24 = v23;

    if (v24)
    {
      v25 = *(v0 + 208);
      sub_2490D36A8();
      sub_24910C72C();
    }
  }

  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v27 = *(v0 + 232);
  v26 = *(v0 + 240);
  v28 = *(v0 + 216);
  v29 = *(v0 + 224);
  v30 = sub_24910C89C();
  __swift_project_value_buffer(v30, qword_27EEDAFD8);
  (*(v29 + 16))(v27, v26, v28);
  v31 = sub_24910C87C();
  v32 = sub_24910CF5C();
  v33 = os_log_type_enabled(v31, v32);
  v35 = *(v0 + 224);
  v34 = *(v0 + 232);
  v36 = *(v0 + 216);
  if (v33)
  {
    v49 = *(v0 + 208);
    v50 = *(v0 + 176);
    v51 = v32;
    v37 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = v52;
    *v37 = 136315394;
    sub_2490F57CC(&qword_27EED7B30, MEMORY[0x277D057E0]);
    v38 = sub_24910D50C();
    v40 = v39;
    v41 = *(v35 + 8);
    v41(v34, v36);
    v42 = sub_24909F930(v38, v40, &v53);

    *(v37 + 4) = v42;
    *(v37 + 12) = 2080;
    swift_beginAccess();
    sub_2490F57CC(&qword_27EED7F60, MEMORY[0x277D056F0]);
    v43 = sub_24910D50C();
    v45 = sub_24909F930(v43, v44, &v53);

    *(v37 + 14) = v45;

    _os_log_impl(&dword_249083000, v31, v51, "RequestForSelf: request=%s, %s", v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v52, -1, -1);
    MEMORY[0x24C1F26F0](v37, -1, -1);
  }

  else
  {

    v41 = *(v35 + 8);
    v41(v34, v36);
  }

  *(v0 + 328) = v41;
  v46 = swift_task_alloc();
  *(v0 + 336) = v46;
  *v46 = v0;
  v46[1] = sub_2490E6F48;
  v47 = *(v0 + 152);

  return sub_2490CEEA0();
}

uint64_t sub_2490E6F48(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 336);
  v6 = *v2;
  *(v4 + 344) = a1;
  *(v4 + 352) = v1;

  v7 = *(v3 + 304);
  v8 = *(v3 + 296);
  if (v1)
  {
    v9 = sub_2490E7BF8;
  }

  else
  {
    v9 = sub_2490E708C;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_2490E708C()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[22];
  swift_beginAccess();
  v2(v3, v4, v5);
  v6 = swift_task_alloc();
  v0[45] = v6;
  *v6 = v0;
  v6[1] = sub_2490E7170;
  v7 = v0[43];
  v8 = v0[30];
  v9 = v0[25];

  return DTTimerDaemon.handleRequest(_:context:)((v0 + 2), v8, v9);
}

uint64_t sub_2490E7170()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v4 = *v1;
  v2[46] = v0;

  v5 = v2[43];
  v6 = v2[25];
  v7 = v2[23];
  v8 = v2[22];
  v11 = *(v7 + 8);
  v9 = v7 + 8;
  v10 = v11;
  if (v0)
  {
    v10(v6, v8);

    v12 = v2[37];
    v13 = v2[38];
    v14 = sub_2490E7D34;
  }

  else
  {
    v2[47] = v10;
    v2[48] = v9 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v6, v8);

    v12 = v2[37];
    v13 = v2[38];
    v14 = sub_2490E731C;
  }

  return MEMORY[0x2822009F8](v14, v12, v13);
}

uint64_t sub_2490E731C()
{
  v1 = v0[30];
  if ((sub_24910C81C() & 1) != 0 && (v2 = v0[19], Strong = swift_weakLoadStrong(), (v0[49] = Strong) != 0))
  {
    v0[50] = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_syncDaemon;
    type metadata accessor for DTDaemon();
    sub_2490F57CC(&unk_27EED7F50, type metadata accessor for DTDaemon);
    v5 = sub_24910CDAC();

    return MEMORY[0x2822009F8](sub_2490E75F0, v5, v4);
  }

  else
  {
    v6 = v0[46];
    v7 = v0[19];
    v8 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v9 = *(v7 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__transportEncoder);
    v10 = *(v8 + 24);
    v11 = sub_24910BFBC();
    if (v6)
    {
      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
      v13 = v0[41];
      v14 = v0[30];
      v15 = v0[27];
      v16 = v0[28];
      v42 = v0[26];
      v17 = v0[22];
      v18 = v0[23];
      v20 = v0[20];
      v19 = v0[21];
      v21 = v6;
      v20(v6, 0, 1);

      v13(v14, v15);
      (*(v18 + 8))(v42, v17);
    }

    else
    {
      v41 = v0[47];
      v43 = v0[48];
      v22 = v0[41];
      v23 = v0[30];
      v24 = v0[27];
      v25 = v0[28];
      v40 = v0[26];
      v26 = v0[21];
      v27 = v0[22];
      v28 = v0[20];
      v29 = v11;
      v30 = v12;
      sub_2490B38D0(v11, v12);
      v28(v29, v30, 0);
      sub_2490A453C(v29, v30);
      sub_2490A453C(v29, v30);
      v22(v23, v24);
      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
      v41(v40, v27);
    }

    v31 = v0[36];
    v32 = v0[33];
    v34 = v0[29];
    v33 = v0[30];
    v36 = v0[25];
    v35 = v0[26];
    v37 = v0[24];

    v38 = v0[1];

    return v38();
  }
}

uint64_t sub_2490E75F0()
{
  v1 = v0[49];
  v2 = v0[50];
  swift_beginAccess();
  v0[51] = *(v1 + v2);
  v3 = v0[37];
  v4 = v0[38];

  return MEMORY[0x2822009F8](sub_2490E7684, v3, v4);
}

uint64_t sub_2490E7684()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 392);

  if (v1)
  {
    v3 = *(v0 + 408);
    v4 = *(v0 + 320);
    (*(v0 + 312))(*(v0 + 192), *(v0 + 208), *(v0 + 176));
    type metadata accessor for DTSyncDaemon();
    sub_2490F57CC(&qword_27EED7578, type metadata accessor for DTSyncDaemon);
    v6 = sub_24910CDAC();

    return MEMORY[0x2822009F8](sub_2490E794C, v6, v5);
  }

  else
  {
    v7 = *(v0 + 368);
    v8 = *(v0 + 152);
    v9 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v10 = *(v8 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__transportEncoder);
    v11 = *(v9 + 24);
    v12 = sub_24910BFBC();
    if (v7)
    {
      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      v14 = *(v0 + 328);
      v15 = *(v0 + 240);
      v16 = *(v0 + 216);
      v17 = *(v0 + 224);
      v43 = *(v0 + 208);
      v18 = *(v0 + 176);
      v19 = *(v0 + 184);
      v21 = *(v0 + 160);
      v20 = *(v0 + 168);
      v22 = v7;
      v21(v7, 0, 1);

      v14(v15, v16);
      (*(v19 + 8))(v43, v18);
    }

    else
    {
      v42 = *(v0 + 376);
      v44 = *(v0 + 384);
      v23 = *(v0 + 328);
      v24 = *(v0 + 240);
      v25 = *(v0 + 216);
      v26 = *(v0 + 224);
      v41 = *(v0 + 208);
      v27 = *(v0 + 168);
      v28 = *(v0 + 176);
      v29 = *(v0 + 160);
      v30 = v12;
      v31 = v13;
      sub_2490B38D0(v12, v13);
      v29(v30, v31, 0);
      sub_2490A453C(v30, v31);
      sub_2490A453C(v30, v31);
      v23(v24, v25);
      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      v42(v41, v28);
    }

    v32 = *(v0 + 288);
    v33 = *(v0 + 264);
    v35 = *(v0 + 232);
    v34 = *(v0 + 240);
    v37 = *(v0 + 200);
    v36 = *(v0 + 208);
    v38 = *(v0 + 192);

    v39 = *(v0 + 8);

    return v39();
  }
}

uint64_t sub_2490E794C()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 368);
  DTSyncDaemon.handleRequest(_:context:)(*(v0 + 240), *(v0 + 192));
  *(v0 + 416) = v2;
  v3 = *(v0 + 384);
  (*(v0 + 376))(*(v0 + 192), *(v0 + 176));
  v4 = *(v0 + 296);
  v5 = *(v0 + 304);
  if (v2)
  {
    v6 = sub_2490E7E70;
  }

  else
  {
    v6 = sub_2490E79EC;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2490E79EC()
{
  v1 = v0[51];

  v2 = v0[52];
  v3 = v0[19];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v5 = *(v3 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__transportEncoder);
  v6 = *(v4 + 24);
  v7 = sub_24910BFBC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v9 = v0[41];
    v10 = v0[30];
    v11 = v0[27];
    v12 = v0[28];
    v38 = v0[26];
    v13 = v0[22];
    v14 = v0[23];
    v16 = v0[20];
    v15 = v0[21];
    v17 = v2;
    v16(v2, 0, 1);

    v9(v10, v11);
    (*(v14 + 8))(v38, v13);
  }

  else
  {
    v37 = v0[47];
    v39 = v0[48];
    v18 = v0[41];
    v19 = v0[30];
    v20 = v0[27];
    v21 = v0[28];
    v36 = v0[26];
    v22 = v0[21];
    v23 = v0[22];
    v24 = v0[20];
    v25 = v7;
    v26 = v8;
    sub_2490B38D0(v7, v8);
    v24(v25, v26, 0);
    sub_2490A453C(v25, v26);
    sub_2490A453C(v25, v26);
    v18(v19, v20);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v37(v36, v23);
  }

  v27 = v0[36];
  v28 = v0[33];
  v30 = v0[29];
  v29 = v0[30];
  v32 = v0[25];
  v31 = v0[26];
  v33 = v0[24];

  v34 = v0[1];

  return v34();
}

uint64_t sub_2490E7BF8()
{
  v1 = v0[44];
  v2 = v0[41];
  v3 = v0[30];
  v4 = v0[27];
  v5 = v0[28];
  v20 = v0[26];
  v6 = v0[22];
  v7 = v0[23];
  v9 = v0[20];
  v8 = v0[21];
  v10 = v1;
  v9(v1, 0, 1);

  v2(v3, v4);
  (*(v7 + 8))(v20, v6);
  v11 = v0[36];
  v12 = v0[33];
  v14 = v0[29];
  v13 = v0[30];
  v16 = v0[25];
  v15 = v0[26];
  v17 = v0[24];

  v18 = v0[1];

  return v18();
}

uint64_t sub_2490E7D34()
{
  v1 = v0[46];
  v2 = v0[41];
  v3 = v0[30];
  v4 = v0[27];
  v5 = v0[28];
  v20 = v0[26];
  v6 = v0[22];
  v7 = v0[23];
  v9 = v0[20];
  v8 = v0[21];
  v10 = v1;
  v9(v1, 0, 1);

  v2(v3, v4);
  (*(v7 + 8))(v20, v6);
  v11 = v0[36];
  v12 = v0[33];
  v14 = v0[29];
  v13 = v0[30];
  v16 = v0[25];
  v15 = v0[26];
  v17 = v0[24];

  v18 = v0[1];

  return v18();
}

uint64_t sub_2490E7E70()
{
  v1 = v0[51];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[52];
  v3 = v0[41];
  v4 = v0[30];
  v5 = v0[27];
  v6 = v0[28];
  v21 = v0[26];
  v7 = v0[22];
  v8 = v0[23];
  v10 = v0[20];
  v9 = v0[21];
  v11 = v2;
  v10(v2, 0, 1);

  v3(v4, v5);
  (*(v8 + 8))(v21, v7);
  v12 = v0[36];
  v13 = v0[33];
  v15 = v0[29];
  v14 = v0[30];
  v17 = v0[25];
  v16 = v0[26];
  v18 = v0[24];

  v19 = v0[1];

  return v19();
}

void sub_2490E7FBC(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v36 = a2;
  v34 = sub_24910C2FC();
  v3 = *(v34 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v34);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v2 homes];
  sub_2490A4744(0, &unk_27EED7FB0, 0x277CD1A60);
  v8 = sub_24910CD5C();

  v9 = v8;
  if (v8 >> 62)
  {
LABEL_28:
    v25 = v9;
    v10 = sub_24910D19C();
    v9 = v25;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_24:

    return;
  }

  v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_24;
  }

LABEL_3:
  v11 = 0;
  v30 = v9;
  v31 = v9 & 0xC000000000000001;
  v27 = v9 + 32;
  v28 = v9 & 0xFFFFFFFFFFFFFF8;
  v12 = v3 + 1;
  v29 = v10;
  while (1)
  {
    if (v31)
    {
      v9 = MEMORY[0x24C1F1C90](v11, v30);
      goto LABEL_9;
    }

    if (v11 >= *(v28 + 16))
    {
      break;
    }

    v9 = *(v27 + 8 * v11);
LABEL_9:
    v13 = v9;
    v14 = __OFADD__(v11, 1);
    v15 = v11 + 1;
    if (v14)
    {
      goto LABEL_27;
    }

    v3 = [v9 accessories];
    sub_2490A4744(0, &qword_27EED7B10, 0x277CD1650);
    v16 = sub_24910CD5C();

    v32 = v15;
    v33 = v13;
    if (v16 >> 62)
    {
      v9 = sub_24910D19C();
      v17 = v9;
      if (v9)
      {
LABEL_12:
        v18 = 0;
        v37 = v16 & 0xC000000000000001;
        while (1)
        {
          if (v37)
          {
            v9 = MEMORY[0x24C1F1C90](v18, v16);
          }

          else
          {
            if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_26;
            }

            v9 = *(v16 + 8 * v18 + 32);
          }

          v3 = v9;
          v19 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          v20 = [v9 uniqueIdentifier];
          sub_24910C2CC();

          v21 = sub_24910C28C();
          v23 = v22;
          (*v12)(v6, v34);
          v40 = v21;
          v41 = v23;
          v38 = v35;
          v39 = v36;
          sub_2490A44E8();
          v24 = sub_24910D12C();

          if (!v24)
          {

            return;
          }

          ++v18;
          if (v19 == v17)
          {
            goto LABEL_4;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_12;
      }
    }

LABEL_4:

    v11 = v32;
    if (v32 == v29)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
}

uint64_t sub_2490E832C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2490A4674(a3, v27 - v11, &unk_27EED7B50, &qword_24910E810);
  v13 = sub_24910CDEC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2490A487C(v12, &unk_27EED7B50, &qword_24910E810);
  }

  else
  {
    sub_24910CDDC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_24910CDAC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_24910CCAC() + 32;
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

      sub_2490A487C(a3, &unk_27EED7B50, &qword_24910E810);

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

  sub_2490A487C(a3, &unk_27EED7B50, &qword_24910E810);
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

uint64_t sub_2490E862C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_24910C49C();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon);
  v12 = sub_24910CDAC();
  v7[9] = v12;
  v7[10] = v11;

  return MEMORY[0x2822009F8](sub_2490E8740, v12, v11);
}

uint64_t sub_2490E8740()
{
  v1 = v0[8];
  v2 = v0[2] + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__environment;
  sub_24910C39C();
  if (qword_27EEDB010 != -1)
  {
    swift_once();
  }

  v3 = qword_27EEDB018;
  v4 = qword_27EEDB020;
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_2490E8858;
  v6 = v0[8];

  return sub_2490E8ACC(v3, v4, 0, 0, 1);
}

uint64_t sub_2490E8858()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 96) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 80);
  v9 = *(v2 + 72);
  if (v0)
  {
    v10 = sub_2490E8A68;
  }

  else
  {
    v10 = sub_2490E89F0;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_2490E89F0()
{
  if ((sub_24910CE4C() & 1) == 0)
  {
    v1 = v0[2];
    sub_2490E8F84(v0[3], v0[4], v0[5]);
  }

  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2490E8A68()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_2490E8ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_24910C48C();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_2490E8BCC, 0, 0);
}

uint64_t sub_2490E8BCC()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_24910C49C();
  v7 = sub_2490F57CC(&qword_27EED7FA0, MEMORY[0x277D02A08]);
  sub_24910D58C();
  sub_2490F57CC(&qword_27EED7FA8, MEMORY[0x277D029F8]);
  sub_24910D31C();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_2490E8D5C;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_2490E8D5C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2490E8F18, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_2490E8F18()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

void sub_2490E8F84(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v44 = a3;
  v45 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F80, &qword_2491108C8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v42 - v8;
  v10 = type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v15 = sub_24910C89C();
  __swift_project_value_buffer(v15, qword_27EEDAFD8);

  v16 = sub_24910C87C();
  v17 = sub_24910CF4C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v43 = v9;
    v19 = v4;
    v20 = v11;
    v21 = v14;
    v22 = v10;
    v23 = v18;
    v24 = swift_slowAlloc();
    v46[0] = v24;
    *v23 = 134218242;
    v25 = v45;
    *(v23 + 4) = v44;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_24909F930(v25, a2, v46);
    _os_log_impl(&dword_249083000, v16, v17, "### WaiterTimeout: xid=%llu, accessoryID=%s", v23, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x24C1F26F0](v24, -1, -1);
    v26 = v23;
    v10 = v22;
    v14 = v21;
    v11 = v20;
    v4 = v19;
    v9 = v43;
    MEMORY[0x24C1F26F0](v26, -1, -1);
  }

  v27 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__waitingOperations;
  swift_beginAccess();
  v28 = *(v4 + v27);
  if (!*(v28 + 16) || (v29 = sub_2490A0A3C(v45, a2), (v30 & 1) == 0))
  {
    swift_endAccess();

    v31 = sub_24910C87C();
    v32 = sub_24910CF4C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v46[0] = v34;
      *v33 = 134218242;
      v37 = v45;
      *(v33 + 4) = v44;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_24909F930(v37, a2, v46);
      v36 = "### WaiterTimeout failed: accessory not tracked, xid=%llu, accessoryID=%s";
      goto LABEL_12;
    }

LABEL_13:

    return;
  }

  v47 = *(*(v28 + 56) + 8 * v29);
  swift_endAccess();

  sub_2490E9518(v44, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    sub_2490A487C(v9, &qword_27EED7F80, &qword_2491108C8);

    v31 = sub_24910C87C();
    v32 = sub_24910CF4C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v46[0] = v34;
      *v33 = 134218242;
      v35 = v45;
      *(v33 + 4) = v44;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_24909F930(v35, a2, v46);
      v36 = "### WaiterTimeout failed: xid not found, xid=%llu, accessoryID=%s";
LABEL_12:
      _os_log_impl(&dword_249083000, v31, v32, v36, v33, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x24C1F26F0](v34, -1, -1);
      MEMORY[0x24C1F26F0](v33, -1, -1);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v38 = v10;
  sub_2490FA810(v9, v14, type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter);
  v39 = v47;
  if (!*(v47 + 16))
  {

    v39 = 0;
  }

  swift_beginAccess();

  sub_2490D3D58(v39, v45, a2);
  swift_endAccess();
  v40 = *&v14[*(v38 + 28)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7B18, &qword_249110250);
  sub_24910CE3C();
  sub_24910C7DC();
  v41 = sub_24910C7EC();
  sub_2490F7BC8(&v14[*(v38 + 20)], v41, 0, 1);

  sub_2490FA7B0(v14, type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter);
}

uint64_t sub_2490E9518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_2490A0AB4(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2490F4130();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter(0);
    v20 = *(v13 - 8);
    sub_2490FA810(v12 + *(v20 + 72) * v8, a2, type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter);
    sub_2490F2F30(v8, v11);
    *v3 = v11;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_2490E9674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[30] = a4;
  v5[31] = v4;
  v5[28] = a2;
  v5[29] = a3;
  v5[27] = a1;
  swift_getObjectType();
  v6 = type metadata accessor for DTTransportDaemon.DTTransportRequest(0);
  v5[32] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon);
  v9 = sub_24910CDAC();
  v5[38] = v9;
  v5[39] = v8;

  return MEMORY[0x2822009F8](sub_2490E979C, v9, v8);
}

uint64_t sub_2490E979C()
{
  v71 = v0;
  v1 = *(v0 + 240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FF0, &qword_249110940);
  sub_24910C32C();
  v2 = *(v0 + 160);
  *(v0 + 320) = v2;
  if (v2)
  {
    v3 = *(v0 + 168);
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_2490FC1B4;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  *(v0 + 328) = v5;
  *(v0 + 336) = v4;
  v7 = *(v0 + 224);
  v6 = *(v0 + 232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FF8, &qword_249110948);
  sub_24910C32C();
  v8 = *(v0 + 192);
  *(v0 + 344) = v8;
  if (v7 >> 60 == 15)
  {
    sub_24910C7DC();
    v9 = sub_24910C7EC();
    swift_willThrow();
LABEL_9:
    if (qword_27EEDAFD0 != -1)
    {
      swift_once();
    }

    v15 = sub_24910C89C();
    __swift_project_value_buffer(v15, qword_27EEDAFD8);
    v16 = v9;
    v17 = sub_24910C87C();
    v18 = sub_24910CF4C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v70 = v20;
      *v19 = 136315138;
      swift_getErrorValue();
      v22 = *(v0 + 136);
      v21 = *(v0 + 144);
      v23 = *(v0 + 152);
      v24 = sub_24910D5DC();
      v26 = sub_24909F930(v24, v25, &v70);

      *(v19 + 4) = v26;
      _os_log_impl(&dword_249083000, v17, v18, "### HMMM receive request failed: error=%s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x24C1F26F0](v20, -1, -1);
      MEMORY[0x24C1F26F0](v19, -1, -1);
    }

    v27 = *(v0 + 320);
    v28 = sub_24910C10C();
    if (v27)
    {
      v68 = *(v0 + 328);
      v69 = *(v0 + 336);

      v29 = [v28 domain];
      if (!v29)
      {
        sub_24910CC9C();
        v29 = sub_24910CC8C();
      }

      v66 = *(v0 + 336);
      v67 = *(v0 + 344);
      v65 = *(v0 + 328);
      v30 = [v28 code];
      v31 = [v28 userInfo];
      sub_24910CC2C();

      v32 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v33 = sub_24910CC1C();

      v34 = [v32 initWithDomain:v29 code:v30 userInfo:v33];

      v68(0, 0xF000000000000000, v34);
      sub_2490FBDE0(v65);

      sub_2490FBDE0(v65);
      v28 = v34;
    }

    else
    {
    }

    v36 = *(v0 + 288);
    v35 = *(v0 + 296);
    v38 = *(v0 + 272);
    v37 = *(v0 + 280);
    v39 = *(v0 + 264);

    v40 = *(v0 + 8);

    return v40();
  }

  if (!v2)
  {
    v14 = *(v0 + 216);
    v13 = *(v0 + 224);
    sub_24910C7DC();
    sub_2490B38D0(v14, v13);
    v9 = sub_24910C7EC();
    swift_willThrow();
    sub_2490B3854(v14, v13);
    goto LABEL_9;
  }

  v10 = *(v0 + 288);
  v11 = *(v0 + 256);
  v12 = *(*(v0 + 248) + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__transportDecoder);
  sub_2490B3924(*(v0 + 216), *(v0 + 224));
  sub_2490FBE30(v5);
  sub_2490FC158(qword_27EEDB648);
  sub_24910BF8C();
  sub_2490FA810(*(v0 + 288), *(v0 + 296), type metadata accessor for DTTransportDaemon.DTTransportRequest);
  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v42 = *(v0 + 296);
  v43 = *(v0 + 280);
  v44 = sub_24910C89C();
  *(v0 + 352) = __swift_project_value_buffer(v44, qword_27EEDAFD8);
  sub_2490FA748(v42, v43, type metadata accessor for DTTransportDaemon.DTTransportRequest);
  v45 = v8;
  v46 = sub_24910C87C();
  v47 = sub_24910CF5C();

  v48 = os_log_type_enabled(v46, v47);
  v49 = *(v0 + 280);
  if (v48)
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v70 = v51;
    *v50 = 136315394;
    v52 = sub_2490EF944();
    v54 = v53;
    sub_2490FA7B0(v49, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    v55 = sub_24909F930(v52, v54, &v70);

    *(v50 + 4) = v55;
    *(v50 + 12) = 2080;
    v56 = [v45 peerDestination];
    v57 = [v56 idsIdentifier];

    v58 = sub_24910CC9C();
    v60 = v59;

    v61 = sub_24909F930(v58, v60, &v70);

    *(v50 + 14) = v61;
    _os_log_impl(&dword_249083000, v46, v47, "HMMM receive request: %s, from=%s", v50, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v51, -1, -1);
    MEMORY[0x24C1F26F0](v50, -1, -1);
  }

  else
  {

    sub_2490FA7B0(v49, type metadata accessor for DTTransportDaemon.DTTransportRequest);
  }

  v62 = swift_task_alloc();
  *(v0 + 360) = v62;
  *v62 = v0;
  v62[1] = sub_2490EA044;
  v63 = *(v0 + 296);
  v64 = *(v0 + 248);

  return sub_2490D5D08(v0 + 16, v63, v45);
}

uint64_t sub_2490EA044()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v4 = *v1;
  *(*v1 + 368) = v0;

  v5 = *(v2 + 312);
  v6 = *(v2 + 304);
  if (v0)
  {
    v7 = sub_2490EA9EC;
  }

  else
  {
    v7 = sub_2490EA180;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2490EA180()
{
  v84 = v0;
  sub_2490A4674(v0 + 16, v0 + 96, &unk_27EED8010, &qword_249110980);
  v1 = *(v0 + 352);
  if (*(v0 + 120))
  {
    v2 = *(v0 + 296);
    v3 = *(v0 + 272);
    sub_2490FC19C((v0 + 96), v0 + 56);
    sub_2490FA748(v2, v3, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    v4 = sub_24910C87C();
    v5 = sub_24910CF5C();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 272);
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v83[0] = v9;
      *v8 = 136315138;
      sub_24910C2FC();
      sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0]);
      v10 = sub_24910D50C();
      v12 = v11;
      sub_2490FA7B0(v7, type metadata accessor for DTTransportDaemon.DTTransportRequest);
      v13 = sub_24909F930(v10, v12, v83);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_249083000, v4, v5, "HMMM send response: xid=%s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x24C1F26F0](v9, -1, -1);
      MEMORY[0x24C1F26F0](v8, -1, -1);
    }

    else
    {

      sub_2490FA7B0(v7, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    }

    v27 = *(v0 + 368);
    v28 = *(v0 + 248);
    v29 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    v30 = *(v28 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__transportEncoder);
    v31 = *(v29 + 24);
    v32 = sub_24910BFBC();
    if (v27)
    {
      v34 = *(v0 + 336);
      v35 = *(v0 + 296);
      v37 = *(v0 + 216);
      v36 = *(v0 + 224);
      sub_2490FBDE0(*(v0 + 328));
      sub_2490B3854(v37, v36);
      sub_2490A487C(v0 + 16, &unk_27EED8010, &qword_249110980);
      sub_2490FA7B0(v35, type metadata accessor for DTTransportDaemon.DTTransportRequest);
      __swift_destroy_boxed_opaque_existential_0((v0 + 56));
      if (qword_27EEDAFD0 != -1)
      {
        swift_once();
      }

      v38 = sub_24910C89C();
      __swift_project_value_buffer(v38, qword_27EEDAFD8);
      v39 = v27;
      v40 = sub_24910C87C();
      v41 = sub_24910CF4C();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v83[0] = v43;
        *v42 = 136315138;
        swift_getErrorValue();
        v45 = *(v0 + 136);
        v44 = *(v0 + 144);
        v46 = *(v0 + 152);
        v47 = sub_24910D5DC();
        v49 = sub_24909F930(v47, v48, v83);

        *(v42 + 4) = v49;
        _os_log_impl(&dword_249083000, v40, v41, "### HMMM receive request failed: error=%s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x24C1F26F0](v43, -1, -1);
        MEMORY[0x24C1F26F0](v42, -1, -1);
      }

      v50 = *(v0 + 320);
      v51 = sub_24910C10C();
      if (v50)
      {
        v81 = *(v0 + 328);
        v82 = *(v0 + 336);

        v52 = [v51 domain];
        if (!v52)
        {
          sub_24910CC9C();
          v52 = sub_24910CC8C();
        }

        v80 = *(v0 + 344);
        v53 = [v51 code];
        v54 = [v51 userInfo];
        sub_24910CC2C();

        v55 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v56 = sub_24910CC1C();

        v57 = [v55 initWithDomain:v52 code:v53 userInfo:v56];

        v81(0, 0xF000000000000000, v57);
        sub_2490FBDE0(v79);

        sub_2490FBDE0(v79);
      }

      else
      {
      }
    }

    else
    {
      v58 = *(v0 + 336);
      v59 = *(v0 + 344);
      v60 = *(v0 + 328);
      v61 = *(v0 + 296);
      v63 = *(v0 + 216);
      v62 = *(v0 + 224);
      v64 = v32;
      v65 = v33;
      sub_2490FBDE0(v60);
      sub_2490B38D0(v64, v65);
      v60(v64, v65, 0);
      sub_2490FBDE0(v60);
      sub_2490A453C(v64, v65);
      sub_2490B3854(v63, v62);
      sub_2490A453C(v64, v65);

      sub_2490A487C(v0 + 16, &unk_27EED8010, &qword_249110980);
      sub_2490FA7B0(v61, type metadata accessor for DTTransportDaemon.DTTransportRequest);
      __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    }
  }

  else
  {
    v14 = *(v0 + 336);
    v15 = *(v0 + 296);
    v16 = *(v0 + 264);
    sub_2490FBDE0(*(v0 + 328));
    sub_2490A487C(v0 + 96, &unk_27EED8010, &qword_249110980);
    sub_2490FA748(v15, v16, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    v17 = sub_24910C87C();
    v18 = sub_24910CF5C();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 264);
    if (v19)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v83[0] = v22;
      *v21 = 136315138;
      sub_24910C2FC();
      sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0]);
      v23 = sub_24910D50C();
      v25 = v24;
      sub_2490FA7B0(v20, type metadata accessor for DTTransportDaemon.DTTransportRequest);
      v26 = sub_24909F930(v23, v25, v83);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_249083000, v17, v18, "HMMM send response: nil, xid=%s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x24C1F26F0](v22, -1, -1);
      MEMORY[0x24C1F26F0](v21, -1, -1);
    }

    else
    {

      sub_2490FA7B0(v20, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    }

    v66 = *(v0 + 336);
    v67 = *(v0 + 344);
    v68 = *(v0 + 328);
    v69 = *(v0 + 296);
    v71 = *(v0 + 216);
    v70 = *(v0 + 224);
    v68(0, 0xF000000000000000, 0);
    sub_2490FBDE0(v68);
    sub_2490B3854(v71, v70);

    sub_2490A487C(v0 + 16, &unk_27EED8010, &qword_249110980);
    sub_2490FA7B0(v69, type metadata accessor for DTTransportDaemon.DTTransportRequest);
  }

  v73 = *(v0 + 288);
  v72 = *(v0 + 296);
  v75 = *(v0 + 272);
  v74 = *(v0 + 280);
  v76 = *(v0 + 264);

  v77 = *(v0 + 8);

  return v77();
}

uint64_t sub_2490EA9EC()
{
  v39 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 296);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  sub_2490FBDE0(*(v0 + 328));
  sub_2490B3854(v4, v3);
  sub_2490FA7B0(v2, type metadata accessor for DTTransportDaemon.DTTransportRequest);
  v5 = *(v0 + 368);
  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v6 = sub_24910C89C();
  __swift_project_value_buffer(v6, qword_27EEDAFD8);
  v7 = v5;
  v8 = sub_24910C87C();
  v9 = sub_24910CF4C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v38 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v13 = *(v0 + 136);
    v12 = *(v0 + 144);
    v14 = *(v0 + 152);
    v15 = sub_24910D5DC();
    v17 = sub_24909F930(v15, v16, &v38);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_249083000, v8, v9, "### HMMM receive request failed: error=%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C1F26F0](v11, -1, -1);
    MEMORY[0x24C1F26F0](v10, -1, -1);
  }

  v18 = *(v0 + 320);
  v19 = sub_24910C10C();
  if (v18)
  {
    v36 = *(v0 + 328);
    v37 = *(v0 + 336);

    v20 = [v19 domain];
    if (!v20)
    {
      sub_24910CC9C();
      v20 = sub_24910CC8C();
    }

    v34 = *(v0 + 336);
    v35 = *(v0 + 344);
    v33 = *(v0 + 328);
    v21 = [v19 code];
    v22 = [v19 userInfo];
    sub_24910CC2C();

    v23 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v24 = sub_24910CC1C();

    v25 = [v23 initWithDomain:v20 code:v21 userInfo:v24];

    v36(0, 0xF000000000000000, v25);
    sub_2490FBDE0(v33);

    sub_2490FBDE0(v33);
    v19 = v25;
  }

  else
  {
  }

  v27 = *(v0 + 288);
  v26 = *(v0 + 296);
  v29 = *(v0 + 272);
  v28 = *(v0 + 280);
  v30 = *(v0 + 264);

  v31 = *(v0 + 8);

  return v31();
}

void sub_2490EAD84(uint64_t a1, unint64_t a2, id a3, void (*a4)(id, unint64_t, uint64_t))
{
  if (a2 >> 60 == 15)
  {
    if (a3)
    {
      v5 = a3;
    }

    else
    {
      sub_24910C7DC();
      v8 = sub_24910C7EC();
      a3 = 0;
      v5 = v8;
    }

    v9 = a3;
    a4(v5, 0, 1);
  }

  else
  {
    sub_2490B38D0(a1, a2);
    a4(a1, a2, 0);

    sub_2490B3854(a1, a2);
  }
}

uint64_t sub_2490EAE90(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {

    v9 = v6;
    v6 = sub_24910C1DC();
    v11 = v10;
  }

  else
  {

    v11 = 0xF000000000000000;
  }

  v12 = a3;
  v13 = a4;
  v8(v6, v11, v12, a4);

  sub_2490B3854(v6, v11);
}

uint64_t sub_2490EAF58(id *a1)
{
  v2 = sub_24910C2FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uniqueIdentifier];
  sub_24910C2CC();

  v8 = sub_24910C2BC();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

void *sub_2490EB05C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24910D19C())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1F1C90](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

void sub_2490EB170()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_24910C2FC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v62 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7900, &qword_24910EB50);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v62 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v62 - v19;
  v21 = *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager);
  if (v21 && (v22 = [v21 currentAccessory]) != 0)
  {
    v23 = v22;
    v24 = sub_2490E55A0();
    if (v24)
    {
      v25 = v24;
      v26 = [v24 uniqueIdentifier];
      v62 = v4;
      v27 = v8;
      v28 = v3;
      v29 = v10;
      v30 = v23;
      v31 = ObjectType;
      v32 = v26;

      sub_24910C2CC();
      ObjectType = v31;
      v23 = v30;
      v10 = v29;
      v3 = v28;
      v8 = v27;
      v4 = v62;
      (*(v62 + 56))(v20, 0, 1, v3);
    }

    else
    {
      (*(v4 + 56))(v20, 1, 1, v3);
    }

    v39 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__stereoAccessoryID;
    swift_beginAccess();
    sub_2490FC258(v20, v1 + v39);
    swift_endAccess();
    sub_2490A4674(v1 + v39, v18, &qword_27EED7900, &qword_24910EB50);
    if ((*(v4 + 48))(v18, 1, v3) == 1)
    {
      sub_2490A487C(v18, &qword_27EED7900, &qword_24910EB50);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED81E0, &unk_249110E50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24910E880;
      v41 = [v23 uniqueIdentifier];
      sub_24910C2CC();

      v42 = sub_24910C28C();
      v44 = v43;
      (*(v4 + 8))(v8, v3);
      *(inited + 32) = v42;
      *(inited + 40) = v44;
      v45 = sub_2490F5E7C(inited);
      swift_setDeallocating();
      v46 = sub_2490FC2C8(inited + 32);
      if (qword_27EEDAFF0 != -1)
      {
        v46 = swift_once();
      }

      v47 = qword_27EEDAFF8;
      v48 = MEMORY[0x28223BE20](v46);
      *(&v62 - 2) = ObjectType;
      *(&v62 - 1) = v45;
      MEMORY[0x28223BE20](v48);
      *(&v62 - 2) = sub_2490FC7E4;
      *(&v62 - 1) = v49;
      os_unfair_lock_lock(v47 + 4);
      sub_2490FC878();
      os_unfair_lock_unlock(v47 + 4);
    }

    else
    {
      v62 = ObjectType;
      (*(v4 + 32))(v10, v18, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED81E0, &unk_249110E50);
      v50 = swift_initStackObject();
      *(v50 + 16) = xmmword_249110210;
      v51 = [v23 uniqueIdentifier];
      sub_24910C2CC();

      v52 = sub_24910C28C();
      v54 = v53;
      v55 = *(v4 + 8);
      v55(v8, v3);
      *(v50 + 32) = v52;
      *(v50 + 40) = v54;
      *(v50 + 48) = sub_24910C28C();
      *(v50 + 56) = v56;
      v57 = sub_2490F5E7C(v50);
      swift_setDeallocating();
      v58 = swift_arrayDestroy();
      if (qword_27EEDAFF0 != -1)
      {
        v58 = swift_once();
      }

      v59 = qword_27EEDAFF8;
      v60 = MEMORY[0x28223BE20](v58);
      *(&v62 - 2) = v62;
      *(&v62 - 1) = v57;
      MEMORY[0x28223BE20](v60);
      *(&v62 - 2) = sub_2490FC7E4;
      *(&v62 - 1) = v61;
      os_unfair_lock_lock(v59 + 4);
      sub_2490FC878();
      os_unfair_lock_unlock(v59 + 4);

      v55(v10, v3);
    }
  }

  else
  {
    (*(v4 + 56))(v15, 1, 1, v3);
    v33 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__stereoAccessoryID;
    swift_beginAccess();
    sub_2490FC258(v15, v1 + v33);
    v34 = swift_endAccess();
    if (qword_27EEDAFF0 != -1)
    {
      v34 = swift_once();
    }

    v35 = qword_27EEDAFF8;
    v36 = MEMORY[0x28223BE20](v34);
    v37 = MEMORY[0x277D84FA0];
    *(&v62 - 2) = ObjectType;
    *(&v62 - 1) = v37;
    MEMORY[0x28223BE20](v36);
    *(&v62 - 2) = sub_2490FC7E4;
    *(&v62 - 1) = v38;
    os_unfair_lock_lock(v35 + 4);
    sub_2490FC878();
    os_unfair_lock_unlock(v35 + 4);
  }
}

uint64_t sub_2490EB864()
{
  v126 = sub_24910C2FC();
  v1 = *(v126 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v126);
  v120 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v101 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v101 - v9;
  v105 = v11;
  MEMORY[0x28223BE20](v8);
  v118 = &v101 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FD0, &qword_249110908);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v101 - v18;
  v20 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeMap;
  swift_beginAccess();
  v115 = v0;
  v21 = *(v0 + v20);
  v22 = *(v21 + 64);
  v109 = v21 + 64;
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v122 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeTransportRegisteredMap;
  v102 = (v23 + 63) >> 6;
  v123 = (v1 + 32);
  v124 = (v1 + 16);
  v121 = v1;
  v108 = (v1 + 8);
  v104 = "xt:xpcConnection:)";
  v103 = &v129;
  v107 = v21;

  v26 = 0;
  *&v27 = 136315138;
  v101 = v27;
  v106 = v7;
  v125 = v10;
  v117 = v17;
  v116 = v19;
  while (v25)
  {
    v40 = v26;
    v41 = v115;
LABEL_16:
    v45 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v46 = v45 | (v40 << 6);
    v47 = v107;
    v48 = v121;
    v49 = v118;
    v50 = v126;
    (*(v121 + 16))(v118, *(v107 + 48) + *(v121 + 72) * v46, v126);
    v51 = *(*(v47 + 56) + 8 * v46);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FD8, &qword_249110910);
    v53 = *(v52 + 48);
    v54 = *(v48 + 32);
    v17 = v117;
    v54(v117, v49, v50);
    *&v17[v53] = v51;
    (*(*(v52 - 8) + 56))(v17, 0, 1, v52);
    v55 = v51;
    v19 = v116;
    v44 = v41;
LABEL_17:
    sub_2490B3868(v17, v19, &qword_27EED7FD0, &qword_249110908);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FD8, &qword_249110910);
    if ((*(*(v56 - 8) + 48))(v19, 1, v56) == 1)
    {
    }

    v57 = *&v19[*(v56 + 48)];
    v58 = *v123;
    (*v123)(v125, v19, v126);
    v59 = v122;
    swift_beginAccess();
    if (*(*(v44 + v59) + 16) && (sub_2490F128C(v125), (v60 & 1) != 0))
    {
      swift_endAccess();

      (*v108)(v125, v126);
    }

    else
    {
      v114 = v57;
      swift_endAccess();
      if (qword_27EEDAFD0 != -1)
      {
        swift_once();
      }

      v61 = sub_24910C89C();
      __swift_project_value_buffer(v61, qword_27EEDAFD8);
      v62 = *v124;
      v63 = v106;
      (*v124)(v106, v125, v126);
      v64 = sub_24910C87C();
      v65 = sub_24910CF5C();
      v66 = os_log_type_enabled(v64, v65);
      v113 = v58;
      v119 = v62;
      if (v66)
      {
        v67 = swift_slowAlloc();
        v68 = v126;
        v69 = v67;
        v112 = swift_slowAlloc();
        aBlock = v112;
        *v69 = v101;
        sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0]);
        v70 = sub_24910D50C();
        v72 = v71;
        v73 = v108;
        v74 = v68;
        v75 = *v108;
        (*v108)(v63, v74);
        v76 = sub_24909F930(v70, v72, &aBlock);
        v44 = v115;

        *(v69 + 4) = v76;
        _os_log_impl(&dword_249083000, v64, v65, "HMMM register start: home=%s", v69, 0xCu);
        v77 = v112;
        __swift_destroy_boxed_opaque_existential_0(v112);
        MEMORY[0x24C1F26F0](v77, -1, -1);
        v78 = v69;
        v62 = v119;
        MEMORY[0x24C1F26F0](v78, -1, -1);
      }

      else
      {

        v73 = v108;
        v75 = *v108;
        (*v108)(v63, v126);
      }

      v79 = v120;
      v62(v120, v125, v126);
      v80 = v122;
      swift_beginAccess();
      v81 = *(v44 + v80);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v133 = *(v44 + v80);
      v83 = v133;
      *(v44 + v80) = 0x8000000000000000;
      v84 = sub_2490F128C(v79);
      v86 = v83[2];
      v87 = (v85 & 1) == 0;
      v88 = __OFADD__(v86, v87);
      v89 = v86 + v87;
      if (v88)
      {
        goto LABEL_38;
      }

      v90 = v85;
      if (v83[3] >= v89)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v99 = v84;
          sub_2490F3990();
          v84 = v99;
        }
      }

      else
      {
        sub_2490F14E4(v89, isUniquelyReferenced_nonNull_native);
        v84 = sub_2490F128C(v120);
        if ((v90 & 1) != (v91 & 1))
        {
          goto LABEL_40;
        }
      }

      v92 = v133;
      v112 = (v73 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v111 = v75;
      if (v90)
      {
        *(v133[7] + v84) = 0;
        v75(v120, v126);
      }

      else
      {
        v133[(v84 >> 6) + 8] |= 1 << v84;
        v93 = v120;
        v94 = v84;
        v95 = v126;
        v62((v92[6] + *(v121 + 72) * v84), v120, v126);
        *(v92[7] + v94) = 0;
        v75(v93, v95);
        v96 = v92[2];
        v88 = __OFADD__(v96, 1);
        v97 = v96 + 1;
        if (v88)
        {
          goto LABEL_39;
        }

        v92[2] = v97;
      }

      v28 = *(v44 + v122);
      *(v44 + v122) = v92;

      swift_endAccess();
      v110 = [objc_allocWithZone(MEMORY[0x277CD1B48]) initWithUserRestriction_];
      v29 = sub_24910CC8C();
      v30 = swift_allocObject();
      swift_weakInit();
      v131 = sub_2490FB82C;
      v132 = v30;
      aBlock = MEMORY[0x277D85DD0];
      v128 = 1107296256;
      v129 = sub_2490ECA6C;
      v130 = &block_descriptor_251;
      v31 = _Block_copy(&aBlock);

      v32 = swift_allocObject();
      swift_weakInit();
      v33 = v118;
      v34 = v126;
      v119(v118, v125, v126);
      v35 = (*(v121 + 80) + 24) & ~*(v121 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = v32;
      v113(v36 + v35, v33, v34);
      v131 = sub_2490FB8F8;
      v132 = v36;
      aBlock = MEMORY[0x277D85DD0];
      v128 = 1107296256;
      v129 = sub_2490EDB80;
      v130 = &block_descriptor_258;
      v37 = _Block_copy(&aBlock);

      v38 = v114;
      v39 = v110;
      [v114 registerModernMessagingRequestHandlerWithMessageName:v29 options:v110 requestHandler:v31 completionHandler:v37];
      _Block_release(v37);
      _Block_release(v31);

      v111(v125, v34);
      v17 = v117;
      v19 = v116;
    }
  }

  if (v102 <= v26 + 1)
  {
    v42 = v26 + 1;
  }

  else
  {
    v42 = v102;
  }

  v43 = v42 - 1;
  v44 = v115;
  while (1)
  {
    v40 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v40 >= v102)
    {
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FD8, &qword_249110910);
      (*(*(v98 - 8) + 56))(v17, 1, 1, v98);
      v25 = 0;
      v26 = v43;
      goto LABEL_17;
    }

    v25 = *(v109 + 8 * v40);
    ++v26;
    if (v25)
    {
      v41 = v115;
      v26 = v40;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_24910D57C();
  __break(1u);
  return result;
}

uint64_t sub_2490EC3A4(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, char *a5)
{
  v57 = a5;
  v61 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v62 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v53 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FF0, &qword_249110940);
  v15 = *(v14 - 8);
  v16 = *(v15 + 8);
  v17 = MEMORY[0x28223BE20](v14);
  v59 = v18;
  v60 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v65 = &v53 - v19;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FF8, &qword_249110948);
  v20 = *(v64 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v64);
  v58 = (&v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v24 = &v53 - v23;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v26 = result;
    v63 = a2;
    v71 = a3;
    sub_2490A4744(0, &qword_27EED8000, 0x277CD1B40);
    v27 = a3;
    sub_24910C33C();
    v66 = v14;
    if (a4)
    {
      v28 = swift_allocObject();
      v29 = v57;
      *(v28 + 16) = a4;
      *(v28 + 24) = v29;
      v30 = sub_2490FC120;
    }

    else
    {
      v30 = 0;
      v28 = 0;
    }

    v71 = v30;
    v72 = v28;
    sub_2490FBE30(a4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED8008, &qword_249110950);
    v31 = v65;
    sub_24910C33C();
    v55 = sub_24910C34C();
    v53 = sub_24910CDEC();
    v54 = *(v53 - 8);
    (*(v54 + 56))(v13, 1, 1, v53);
    v32 = *(v20 + 16);
    v33 = v13;
    v34 = v58;
    v57 = v24;
    v35 = v24;
    v36 = v64;
    v32(v58, v35, v64);
    v37 = v60;
    (*(v15 + 2))(v60, v31, v66);
    v38 = (*(v20 + 80) + 40) & ~*(v20 + 80);
    v39 = v15[80];
    v56 = v33;
    v40 = (v21 + v39 + v38) & ~v39;
    v41 = swift_allocObject();
    v42 = v61;
    *(v41 + 2) = v26;
    *(v41 + 3) = v42;
    *(v41 + 4) = v63;
    v59 = v20;
    (*(v20 + 32))(&v41[v38], v34, v36);
    v58 = v15;
    v43 = *(v15 + 4);
    v44 = v56;
    v43(&v41[v40], v37, v66);
    v45 = v62;
    sub_2490A4674(v44, v62, &unk_27EED7B50, &qword_24910E810);
    v46 = v54;
    v47 = v53;
    v48 = (*(v54 + 48))(v45, 1);

    sub_2490B3924(v42, v63);
    if (v48 == 1)
    {
      sub_2490A487C(v45, &unk_27EED7B50, &qword_24910E810);
    }

    else
    {
      sub_24910CDDC();
      (*(v46 + 8))(v45, v47);
    }

    v49 = sub_2490A46DC();
    v50 = swift_allocObject();
    *(v50 + 16) = &unk_249110960;
    *(v50 + 24) = v41;
    v67 = 6;
    v68 = 0;
    v51 = v55;
    v69 = v55;
    v70 = v49;

    v52 = v51;
    swift_task_create();
    sub_2490A487C(v44, &unk_27EED7B50, &qword_24910E810);

    v58[1](v65, v66);
    return (*(v59 + 8))(v57, v64);
  }

  return result;
}

uint64_t sub_2490EC9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_task_alloc();
  *(v6 + 16) = v11;
  *v11 = v6;
  v11[1] = sub_24908837C;

  return sub_2490E9674(a3, a4, a5, a6);
}

uint64_t sub_2490ECA6C(uint64_t a1, void *a2, void *a3, const void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {

    v9 = v6;
    v6 = sub_24910C1DC();
    v11 = v10;
  }

  else
  {

    v11 = 0xF000000000000000;
  }

  v12 = _Block_copy(a4);
  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v12 = sub_2490FBE28;
  }

  else
  {
    v13 = 0;
  }

  v14 = a3;
  v8(v6, v11, v14, v12, v13);

  sub_2490FBDE0(v12);
  sub_2490B3854(v6, v11);
}

void sub_2490ECB80(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v6 = 0;
    if (a3)
    {
LABEL_3:
      v7 = sub_24910C10C();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = sub_24910C1CC();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_2490ECC18(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24910C2FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v30 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = result;
    v32 = sub_24910C34C();
    v17 = a3;
    v18 = v5;
    v19 = sub_24910CDEC();
    v20 = *(v19 - 8);
    v31 = a1;
    v21 = v20;
    (*(v20 + 56))(v14, 1, 1, v19);
    (*(v6 + 16))(&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v18);
    v22 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v16;
    (*(v6 + 32))(v23 + v22, v30, v18);
    v24 = v31;
    *(v23 + ((v7 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v31;
    sub_2490A4674(v14, v12, &unk_27EED7B50, &qword_24910E810);
    LODWORD(v22) = (*(v21 + 48))(v12, 1, v19);

    v25 = v24;
    if (v22 == 1)
    {
      sub_2490A487C(v12, &unk_27EED7B50, &qword_24910E810);
    }

    else
    {
      sub_24910CDDC();
      (*(v21 + 8))(v12, v19);
    }

    v26 = sub_2490A46DC();
    v27 = swift_allocObject();
    *(v27 + 16) = &unk_249110930;
    *(v27 + 24) = v23;
    v33 = 6;
    v34 = 0;
    v28 = v32;
    v35 = v32;
    v36 = v26;

    v29 = v28;
    swift_task_create();
    sub_2490A487C(v14, &unk_27EED7B50, &qword_24910E810);
  }

  return result;
}

uint64_t sub_2490ECFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  type metadata accessor for DTTransportDaemon(0);
  sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon);
  v6 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490ED08C, v6, v5);
}

uint64_t sub_2490ED08C()
{
  v1 = *(v0 + 16);
  sub_2490ED0F0(*(v0 + 24), *(v0 + 32));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2490ED0F0(uint64_t a1, void *a2)
{
  v5 = sub_24910CB8C();
  v87 = *(v5 - 8);
  v6 = *(v87 + 64);
  MEMORY[0x28223BE20](v5);
  v85 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_24910CBAC();
  v84 = *(v86 - 8);
  v8 = *(v84 + 64);
  MEMORY[0x28223BE20](v86);
  v83 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24910CB7C();
  v79 = *(v10 - 8);
  v80 = v10;
  v11 = *(v79 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = sub_24910CBCC();
  v82 = *(v88 - 8);
  v14 = *(v82 + 64);
  v15 = MEMORY[0x28223BE20](v88);
  v78 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v81 = &v71 - v17;
  v18 = sub_24910C2FC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v71 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v71 - v27;
  if (a2)
  {
    v75 = v2;
    v74 = v5;
    v29 = a2;
    if (qword_27EEDAFD0 != -1)
    {
      swift_once();
    }

    v30 = sub_24910C89C();
    __swift_project_value_buffer(v30, qword_27EEDAFD8);
    v73 = *(v19 + 16);
    v73(v28, a1, v18);
    v31 = a2;
    v32 = a2;
    v33 = sub_24910C87C();
    v34 = sub_24910CF4C();
    v77 = v32;

    v72 = v34;
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v76 = a1;
      v36 = v35;
      v71 = swift_slowAlloc();
      aBlock[0] = v71;
      *v36 = 136315394;
      sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0]);
      v37 = sub_24910D50C();
      v39 = v38;
      (*(v19 + 8))(v28, v18);
      v40 = sub_24909F930(v37, v39, aBlock);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2080;
      swift_getErrorValue();
      v41 = sub_24910D5DC();
      v43 = sub_24909F930(v41, v42, aBlock);

      *(v36 + 14) = v43;
      _os_log_impl(&dword_249083000, v33, v72, "### HMMM register failed: home=%s error=%s", v36, 0x16u);
      v44 = v71;
      swift_arrayDestroy();
      MEMORY[0x24C1F26F0](v44, -1, -1);
      v45 = v36;
      a1 = v76;
      MEMORY[0x24C1F26F0](v45, -1, -1);
    }

    else
    {

      (*(v19 + 8))(v28, v18);
    }

    v73(v26, a1, v18);
    swift_beginAccess();
    sub_2490D3868(2, v26);
    swift_endAccess();
    v76 = sub_24910C34C();
    v57 = v78;
    sub_24910CBBC();
    *v13 = 10;
    v59 = v79;
    v58 = v80;
    (*(v79 + 104))(v13, *MEMORY[0x277D85188], v80);
    v60 = v81;
    MEMORY[0x24C1F1610](v57, v13);
    (*(v59 + 8))(v13, v58);
    v82 = *(v82 + 8);
    (v82)(v57, v88);
    v61 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_2490FBB4C;
    aBlock[5] = v61;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2490FC7CC;
    aBlock[3] = &block_descriptor_271;
    v62 = _Block_copy(aBlock);

    v63 = v83;
    sub_24910CB9C();
    v90 = MEMORY[0x277D84F90];
    sub_2490F57CC(&qword_27EED7F30, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F38, &qword_249110880);
    sub_2490FAC70(&unk_27EED7F40, &qword_27EED7F38, &qword_249110880);
    v64 = v85;
    v65 = v74;
    sub_24910D14C();
    v66 = v76;
    MEMORY[0x24C1F19C0](v60, v63, v64, v62);
    _Block_release(v62);

    (*(v87 + 8))(v64, v65);
    (*(v84 + 8))(v63, v86);
    (v82)(v60, v88);
  }

  else
  {
    v46 = v2;
    if (qword_27EEDAFD0 != -1)
    {
      swift_once();
    }

    v47 = sub_24910C89C();
    __swift_project_value_buffer(v47, qword_27EEDAFD8);
    v48 = *(v19 + 16);
    v76 = a1;
    v48(v23, a1, v18);
    v49 = sub_24910C87C();
    v50 = sub_24910CF5C();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      aBlock[0] = v52;
      *v51 = 136315138;
      sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0]);
      v53 = sub_24910D50C();
      v55 = v54;
      (*(v19 + 8))(v23, v18);
      v56 = sub_24909F930(v53, v55, aBlock);

      *(v51 + 4) = v56;
      _os_log_impl(&dword_249083000, v49, v50, "HMMM registered: home=%s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x24C1F26F0](v52, -1, -1);
      MEMORY[0x24C1F26F0](v51, -1, -1);
    }

    else
    {

      (*(v19 + 8))(v23, v18);
    }

    v68 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeTransportRegisteredMap;
    swift_beginAccess();
    v69 = *(v46 + v68);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v90 = *(v46 + v68);
    *(v46 + v68) = 0x8000000000000000;
    sub_2490F30DC(1, v76, isUniquelyReferenced_nonNull_native);
    *(v46 + v68) = v90;
    return swift_endAccess();
  }
}

void sub_2490EDB80(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_2490EDBEC(uint64_t a1)
{
  if ((*(a1 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__invalidateCalled) & 1) == 0)
  {
    v2 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager;
    if (!*(a1 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager))
    {
      v3 = [objc_allocWithZone(MEMORY[0x277CD1A98]) initWithOptions:35024 cachePolicy:2];
      v4 = [objc_allocWithZone(MEMORY[0x277CD1A90]) initWithConfiguration_];
      v5 = *(a1 + v2);
      *(a1 + v2) = v4;
      v6 = v4;

      [v6 setDelegate_];
    }

    sub_2490DDEF8();
    sub_2490DAEB4();
    sub_2490DEDDC();
    sub_2490DEFB4();
  }
}

uint64_t sub_2490EDCB8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_2490EDD38()
{
  sub_24910D25C();

  strcpy(v7, "dataSyncState=");
  HIBYTE(v7[1]) = -18;
  v1 = [v0 dataSyncState];
  if (v1 <= 3)
  {
    if (v1 <= 1)
    {
      if (!v1)
      {
        v2 = 0xE700000000000000;
        v3 = 0x6E776F6E6B6E55;
        goto LABEL_20;
      }

      if (v1 == 1)
      {
        v2 = 0xE400000000000000;
        v3 = 1685024583;
        goto LABEL_20;
      }

LABEL_19:
      v2 = 0xE100000000000000;
      v3 = 63;
      goto LABEL_20;
    }

    if (v1 != 2)
    {
      v2 = 0x80000002491115B0;
      v3 = 0xD000000000000016;
      goto LABEL_20;
    }

    v3 = 0xD000000000000012;
    v4 = "KeychainNotEnabled";
LABEL_17:
    v2 = (v4 - 32) | 0x8000000000000000;
    goto LABEL_20;
  }

  if (v1 > 5)
  {
    if (v1 == 6)
    {
      v2 = 0x8000000249111550;
      v3 = 0xD00000000000001CLL;
      goto LABEL_20;
    }

    if (v1 != 7)
    {
      goto LABEL_19;
    }

    v3 = 0xD000000000000012;
    v4 = "UnsupportedAccount";
    goto LABEL_17;
  }

  if (v1 == 4)
  {
    v2 = 0x8000000249111590;
    v3 = 0xD000000000000013;
  }

  else
  {
    v2 = 0x8000000249111570;
    v3 = 0xD00000000000001ALL;
  }

LABEL_20:
  MEMORY[0x24C1F1710](v3, v2);

  MEMORY[0x24C1F1710](0x737574617473202CLL, 0xE90000000000003DLL);
  v5 = sub_2490F0864([v0 status]);
  MEMORY[0x24C1F1710](v5);

  return v7[0];
}

uint64_t sub_2490EDF4C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  swift_getObjectType();
  sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon);
  v4 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490FC7C8, v4, v3);
}

uint64_t sub_2490EE05C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v35 = a5;
  v33 = a3;
  v7 = v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v16 = sub_24910C89C();
  __swift_project_value_buffer(v16, qword_27EEDAFD8);
  v17 = a1;
  v18 = sub_24910C87C();
  v19 = sub_24910CF5C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v36[0] = v21;
    *v20 = 136446210;
    v22 = sub_2490EDD38();
    v24 = sub_24909F930(v22, v23, v36);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_249083000, v18, v19, a2, v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x24C1F26F0](v21, -1, -1);
    MEMORY[0x24C1F26F0](v20, -1, -1);
  }

  v25 = sub_24910C34C();
  v26 = sub_24910CDEC();
  v27 = *(v26 - 8);
  (*(v27 + 56))(v15, 1, 1, v26);
  sub_2490A4674(v15, v13, &unk_27EED7B50, &qword_24910E810);
  v28 = (*(v27 + 48))(v13, 1, v26);

  if (v28 == 1)
  {
    sub_2490A487C(v13, &unk_27EED7B50, &qword_24910E810);
  }

  else
  {
    sub_24910CDDC();
    (*(v27 + 8))(v13, v26);
  }

  v29 = sub_2490A46DC();
  v30 = swift_allocObject();
  *(v30 + 16) = v34;
  *(v30 + 24) = v7;
  v36[1] = 6;
  v36[2] = 0;
  v36[3] = v25;
  v36[4] = v29;

  v31 = v25;
  swift_task_create();
  sub_2490A487C(v15, &unk_27EED7B50, &qword_24910E810);
}

uint64_t sub_2490EE3EC(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v5 = a3;

  a4(v5);
}

uint64_t sub_2490EE644(uint64_t a1, uint64_t a2, void *a3, void *a4, const char *a5, uint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = a4;

  sub_2490F887C(v12, a5, a6, a7);
}

uint64_t sub_2490EE6E8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  swift_getObjectType();
  sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon);
  v4 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490EE7A4, v4, v3);
}

uint64_t sub_2490EE7A4()
{
  v1 = *(v0 + 16);
  if ((*(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__invalidateCalled) & 1) == 0)
  {
    v2 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager;
    if (!*(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager))
    {
      v3 = [objc_allocWithZone(MEMORY[0x277CD1A98]) initWithOptions:35024 cachePolicy:2];
      v4 = [objc_allocWithZone(MEMORY[0x277CD1A90]) initWithConfiguration_];
      v5 = *(v1 + v2);
      *(v1 + v2) = v4;
      v6 = v4;

      [v6 setDelegate_];
      v7 = *(v0 + 16);
    }

    sub_2490DDEF8();
    sub_2490DAEB4();
    sub_2490DEDDC();
    sub_2490DEFB4();
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2490EEA28(void *a1, void *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v57 = a6;
  v54 = a4;
  v55 = a5;
  v8 = v6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v56 = &v49 - v16;
  v17 = sub_24910C2FC();
  v53 = *(v17 - 8);
  v18 = *(v53 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v21 = sub_24910C89C();
  __swift_project_value_buffer(v21, qword_27EEDAFD8);
  v22 = a1;
  v23 = a2;
  v24 = sub_24910C87C();
  v25 = sub_24910CF5C();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v52 = v8;
    v27 = v26;
    v51 = swift_slowAlloc();
    v58[0] = v51;
    *v27 = 136315394;
    v28 = [v22 name];
    v29 = sub_24910CC9C();
    v50 = a3;
    v31 = v30;

    v32 = sub_24909F930(v29, v31, v58);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2080;
    v33 = [v23 uniqueIdentifier];
    sub_24910C2CC();

    sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0]);
    v34 = sub_24910D50C();
    v36 = v35;
    (*(v53 + 8))(v20, v17);
    v37 = sub_24909F930(v34, v36, v58);

    *(v27 + 14) = v37;
    _os_log_impl(&dword_249083000, v24, v25, v50, v27, 0x16u);
    v38 = v51;
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v38, -1, -1);
    v39 = v27;
    v8 = v52;
    MEMORY[0x24C1F26F0](v39, -1, -1);
  }

  v40 = sub_24910C34C();
  v41 = sub_24910CDEC();
  v42 = *(v41 - 8);
  v43 = v56;
  (*(v42 + 56))(v56, 1, 1, v41);
  sub_2490A4674(v43, v15, &unk_27EED7B50, &qword_24910E810);
  v44 = (*(v42 + 48))(v15, 1, v41);

  if (v44 == 1)
  {
    sub_2490A487C(v15, &unk_27EED7B50, &qword_24910E810);
  }

  else
  {
    sub_24910CDDC();
    (*(v42 + 8))(v15, v41);
  }

  v45 = sub_2490A46DC();
  v46 = swift_allocObject();
  *(v46 + 16) = v55;
  *(v46 + 24) = v8;
  v58[1] = 6;
  v58[2] = 0;
  v58[3] = v40;
  v58[4] = v45;

  v47 = v40;
  swift_task_create();
  sub_2490A487C(v43, &unk_27EED7B50, &qword_24910E810);
}

uint64_t sub_2490EEF48(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(id, id))
{
  v7 = a3;
  v8 = a4;

  a5(v7, v8);
}

uint64_t DTTransportDaemon.siriEndpointProfile(_:didUpdateSessionHubIdentifier:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v42 = &v41 - v7;
  v8 = sub_24910C2FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v13 = sub_24910C89C();
  __swift_project_value_buffer(v13, qword_27EEDAFD8);
  v14 = a1;
  v15 = sub_24910C87C();
  v16 = sub_24910CF5C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v44[0] = v41;
    *v17 = 136315394;
    v18 = [v14 uniqueIdentifier];
    sub_24910C2CC();

    sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0]);
    v19 = sub_24910D50C();
    v21 = v20;
    (*(v9 + 8))(v12, v8);
    v22 = sub_24909F930(v19, v21, v44);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v23 = [v14 accessory];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 name];

      v26 = sub_24910CC9C();
      v28 = v27;
    }

    else
    {
      v28 = 0xE300000000000000;
      v26 = 7104878;
    }

    v29 = sub_24909F930(v26, v28, v44);

    *(v17 + 14) = v29;
    _os_log_impl(&dword_249083000, v15, v16, "HomeKit didUpdateSessionHubIdentifier: id=%s, name=%s", v17, 0x16u);
    v30 = v41;
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v30, -1, -1);
    MEMORY[0x24C1F26F0](v17, -1, -1);
  }

  v31 = v43;
  v32 = sub_24910C34C();
  v33 = sub_24910CDEC();
  v34 = *(v33 - 8);
  v35 = v42;
  (*(v34 + 56))(v42, 1, 1, v33);
  sub_2490A4674(v35, v6, &unk_27EED7B50, &qword_24910E810);
  v36 = (*(v34 + 48))(v6, 1, v33);

  if (v36 == 1)
  {
    sub_2490A487C(v6, &unk_27EED7B50, &qword_24910E810);
  }

  else
  {
    sub_24910CDDC();
    (*(v34 + 8))(v6, v33);
  }

  v37 = sub_2490A46DC();
  v38 = swift_allocObject();
  *(v38 + 16) = &unk_2491102E8;
  *(v38 + 24) = v31;
  v44[1] = 6;
  v44[2] = 0;
  v44[3] = v32;
  v44[4] = v37;

  v39 = v32;
  swift_task_create();
  sub_2490A487C(v35, &unk_27EED7B50, &qword_24910E810);
}

uint64_t sub_2490EF640()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_2490EF680()
{
  v1 = *(v0 + 24);

  swift_weakDestroy();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

id sub_2490EF6C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7900, &qword_24910EB50);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  result = [*(v0 + 16) device];
  if (result)
  {
    v9 = result;
    v10 = [result idsIdentifier];

    if (v10)
    {
      sub_24910C2CC();

      v11 = sub_24910C2FC();
      (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
    }

    else
    {
      v11 = sub_24910C2FC();
      (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    }

    sub_2490B3868(v5, v7, &qword_27EED7900, &qword_24910EB50);
    sub_24910C2FC();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v7, 1, v11) == 1)
    {
      sub_2490A487C(v7, &qword_27EED7900, &qword_24910EB50);
      return 0;
    }

    else
    {
      v13 = sub_24910C28C();
      (*(v12 + 8))(v7, v11);
      return v13;
    }
  }

  return result;
}

uint64_t sub_2490EF8FC()
{
  v1 = *(v0 + 40);

  swift_weakDestroy();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_2490EF944()
{
  v1 = v0;
  sub_24910D25C();
  MEMORY[0x24C1F1710](1029990776, 0xE400000000000000);
  sub_24910C2FC();
  sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0]);
  v2 = sub_24910D50C();
  MEMORY[0x24C1F1710](v2);

  MEMORY[0x24C1F1710](0x736575716572202CLL, 0xEA00000000003D74);
  v3 = type metadata accessor for DTTransportDaemon.DTTransportRequest(0);
  v4 = v3[5];
  sub_24910C86C();
  sub_2490F57CC(&qword_27EED7B30, MEMORY[0x277D057E0]);
  v5 = sub_24910D50C();
  MEMORY[0x24C1F1710](v5);

  MEMORY[0x24C1F1710](0x746567726174202CLL, 0xE90000000000003DLL);
  v7 = *(v1 + v3[6]);
  sub_24910D52C();
  MEMORY[0x24C1F1710](0x72616D697270202CLL, 0xEA00000000003D79);
  LOBYTE(v7) = *(v1 + v3[7]);
  sub_24910D52C();
  return 0;
}

uint64_t sub_2490EFB3C()
{
  v1 = 6580600;
  v2 = 0x746567726174;
  if (*v0 != 2)
  {
    v2 = 0x7972616D697270;
  }

  if (*v0)
  {
    v1 = 0x74736575716572;
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

uint64_t sub_2490EFBA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2490FC598(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2490EFBDC(uint64_t a1)
{
  v2 = sub_2490FA0A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2490EFC18(uint64_t a1)
{
  v2 = sub_2490FA0A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2490EFC54(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7E90, &qword_2491107A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2490FA0A4();
  sub_24910D64C();
  v18[15] = 0;
  sub_24910C2FC();
  sub_2490F57CC(&qword_27EED7E98, MEMORY[0x277CC95F0]);
  sub_24910D4EC();
  if (!v2)
  {
    v11 = type metadata accessor for DTTransportDaemon.DTTransportRequest(0);
    v12 = v11[5];
    v18[14] = 1;
    sub_24910C86C();
    sub_2490F57CC(&qword_27EED7EA0, MEMORY[0x277D057E0]);
    sub_24910D4EC();
    v13 = (v3 + v11[6]);
    v14 = *v13;
    v15 = v13[1];
    v18[13] = 2;
    sub_24910D46C();
    v16 = *(v3 + v11[7]);
    v18[12] = 3;
    sub_24910D47C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2490EFEB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v34 = sub_24910C86C();
  v32 = *(v34 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24910C2FC();
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](v6);
  v36 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7EA8, &qword_2491107A8);
  v35 = *(v37 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  v11 = &v30 - v10;
  v12 = type metadata accessor for DTTransportDaemon.DTTransportRequest(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2490FA0A4();
  v38 = v11;
  v17 = v39;
  sub_24910D63C();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v39 = v12;
  v18 = v33;
  v19 = v34;
  v43 = 0;
  sub_2490F57CC(&qword_27EED7EB0, MEMORY[0x277CC95F0]);
  sub_24910D43C();
  v20 = *(v18 + 32);
  v21 = v36;
  v36 = v6;
  v20(v15, v21);
  v42 = 1;
  sub_2490F57CC(&qword_27EED7EB8, MEMORY[0x277D057E0]);
  v22 = v5;
  v23 = v19;
  sub_24910D43C();
  v24 = v39;
  (*(v32 + 32))(&v15[*(v39 + 20)], v22, v23);
  v41 = 2;
  v25 = sub_24910D3BC();
  v26 = &v15[*(v24 + 24)];
  *v26 = v25;
  v26[1] = v27;
  v40 = 3;
  v28 = sub_24910D3CC();
  (*(v35 + 8))(v38, v37);
  v15[*(v24 + 28)] = v28;
  sub_2490FA748(v15, v31, type metadata accessor for DTTransportDaemon.DTTransportRequest);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_2490FA7B0(v15, type metadata accessor for DTTransportDaemon.DTTransportRequest);
}

uint64_t DTTransportDaemon.deinit()
{
  swift_weakDestroy();
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__environment;
  v3 = sub_24910C3BC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsIncoming);

  v5 = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsOutgoing);

  v6 = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsLocal);

  v7 = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorTimer);

  v8 = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorTransaction);
  swift_unknownObjectRelease();
  sub_2490A487C(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__stereoAccessoryID, &qword_27EED7900, &qword_24910EB50);
  v9 = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__transportDecoder);

  v10 = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__transportEncoder);

  v11 = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__operationQueue);

  v12 = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__waitingOperations);

  sub_2490A487C(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeKitPollDeadline, &unk_27EED7B70, &qword_249110300);
  v13 = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeKitPollTask);

  v14 = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeMap);

  v15 = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeSiriEndpointMap);

  v16 = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeTransportRegisteredMap);

  return v0;
}

uint64_t DTTransportDaemon.__deallocating_deinit()
{
  DTTransportDaemon.deinit();
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x30);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x34);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2490F0670()
{
  v0 = sub_24910C34C();
  v1 = sub_24910D02C();

  return v1;
}

uint64_t sub_2490F06C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_249095C10;

  return DTTransportDaemon.summary.getter();
}

uint64_t sub_2490F074C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2490887FC;

  return DTTransportDaemon.activate()();
}

uint64_t sub_2490F07D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2490887FC;

  return DTTransportDaemon.invalidate()();
}

uint64_t sub_2490F0864(uint64_t a1)
{
  v2 = sub_24910C3EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 1685024583;
  }

  v10 = 0;
  v11 = 0xE000000000000000;
  sub_24910C3CC();
  if ((a1 & 1) == 0)
  {
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_4;
    }

LABEL_14:
    sub_24910CCBC();
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_24910CCBC();
  if ((a1 & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((a1 & 0x20) != 0)
  {
LABEL_5:
    sub_24910CCBC();
  }

LABEL_6:
  v7 = v10;
  v8 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v8 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    v7 = 0x6E776F6E6B6E55;
  }

  (*(v3 + 8))(v6, v2);
  return v7;
}

void *sub_2490F0A04(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7900, &qword_24910EB50);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - v8;
  v10 = [v2 homes];
  sub_2490A4744(0, &unk_27EED7FB0, 0x277CD1A60);
  v11 = sub_24910CD5C();

  v12 = v11;
  if (v11 >> 62)
  {
    goto LABEL_36;
  }

  v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13)
  {
    do
    {
      v14 = 0;
      v44 = v12;
      v45 = v12 & 0xC000000000000001;
      v41 = v12 + 32;
      v42 = v12 & 0xFFFFFFFFFFFFFF8;
      v43 = v13;
      while (1)
      {
        if (v45)
        {
          v15 = MEMORY[0x24C1F1C90](v14);
        }

        else
        {
          if (v14 >= *(v42 + 16))
          {
            goto LABEL_35;
          }

          v15 = *(v41 + 8 * v14);
        }

        v16 = v15;
        v17 = __OFADD__(v14, 1);
        v18 = v14 + 1;
        if (v17)
        {
          break;
        }

        v19 = [v15 accessories];
        sub_2490A4744(0, &qword_27EED7B10, 0x277CD1650);
        v20 = sub_24910CD5C();

        v46 = v18;
        v47 = v16;
        if (v20 >> 62)
        {
          v21 = sub_24910D19C();
          v22 = 0x278F87000;
          if (v21)
          {
LABEL_12:
            v23 = 0;
            v52 = v20 & 0xFFFFFFFFFFFFFF8;
            v53 = v20 & 0xC000000000000001;
            v50 = v21;
            v51 = v20;
            while (1)
            {
              if (v53)
              {
                v24 = MEMORY[0x24C1F1C90](v23, v20);
              }

              else
              {
                if (v23 >= *(v52 + 16))
                {
                  goto LABEL_33;
                }

                v24 = *(v20 + 8 * v23 + 32);
              }

              v25 = v24;
              v26 = v23 + 1;
              if (__OFADD__(v23, 1))
              {
                break;
              }

              v27 = [v24 *(v22 + 3432)];
              if (v27)
              {
                v28 = v27;
                v29 = [v27 idsIdentifier];

                if (v29)
                {
                  sub_24910C2CC();

                  v30 = 0;
                }

                else
                {
                  v30 = 1;
                }

                v31 = sub_24910C2FC();
                v32 = *(v31 - 8);
                (*(v32 + 56))(v7, v30, 1, v31);
                sub_2490B3868(v7, v9, &qword_27EED7900, &qword_24910EB50);
                if ((*(v32 + 48))(v9, 1, v31) == 1)
                {

                  sub_2490A487C(v9, &qword_27EED7900, &qword_24910EB50);
                }

                else
                {
                  v33 = sub_24910C28C();
                  v35 = v34;
                  (*(v32 + 8))(v9, v31);
                  v56 = v33;
                  v57 = v35;
                  v54 = v48;
                  v55 = v49;
                  sub_2490A44E8();
                  v36 = sub_24910D12C();

                  if (!v36)
                  {

                    return v25;
                  }

                  v22 = 0x278F87000;
                }

                v21 = v50;
                v20 = v51;
              }

              else
              {
              }

              ++v23;
              if (v26 == v21)
              {
                goto LABEL_4;
              }
            }

            __break(1u);
LABEL_33:
            __break(1u);
            break;
          }
        }

        else
        {
          v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v22 = 0x278F87000uLL;
          if (v21)
          {
            goto LABEL_12;
          }
        }

LABEL_4:

        v12 = v44;
        v14 = v46;
        if (v46 == v43)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      v37 = v12;
      v38 = sub_24910D19C();
      v12 = v37;
      v13 = v38;
    }

    while (v38);
  }

LABEL_37:

  return 0;
}

BOOL sub_2490F0EC8(void *a1, uint64_t *a2)
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

void *sub_2490F0EF8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_2490F0F24@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_2490F101C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_2490F5374(a1);

  *a2 = v3;
  return result;
}

size_t sub_2490F10B4(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F08, &qword_249110860);
  v10 = *(type metadata accessor for DTTransportDaemon.DTOperationItem(0) - 8);
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
  v15 = *(type metadata accessor for DTTransportDaemon.DTOperationItem(0) - 8);
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

unint64_t sub_2490F128C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_24910C2FC();
  sub_2490F57CC(&qword_27EED7ED8, MEMORY[0x277CC95F0]);
  v5 = sub_24910CC3C();

  return sub_2490F1324(a1, v5);
}

unint64_t sub_2490F1324(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_24910C2FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_2490F57CC(&qword_27EED7EE0, MEMORY[0x277CC95F0]);
      v16 = sub_24910CC7C();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_2490F14E4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_24910C2FC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FE8, &qword_249110920);
  v44 = a2;
  result = sub_24910D36C();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + v27);
      v31 = *(v14 + 40);
      sub_2490F57CC(&qword_27EED7ED8, MEMORY[0x277CC95F0]);
      result = sub_24910CC3C();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_2490F18A4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_24910C2FC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FE0, &qword_249110918);
  v43 = a2;
  result = sub_24910D36C();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_2490F57CC(&qword_27EED7ED8, MEMORY[0x277CC95F0]);
      result = sub_24910CC3C();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_2490F1C80(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_24910D36C();
  v10 = result;
  if (*(v7 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + 8 * v22);
      v25 = *(v23 + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v26 = *(v23 + 8 * v22);
      }

      v27 = *(v10 + 40);
      result = sub_24910D5FC();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v24;
      *(*(v10 + 56) + 8 * v18) = v25;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v5 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v36;
    if (v35 >= 64)
    {
      bzero((v7 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_2490F1EE8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F88, &qword_2491108E0);
  v38 = a2;
  result = sub_24910D36C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_24910D60C();
      sub_24910CCCC();
      result = sub_24910D62C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2490F2190(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter(0);
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F90, &qword_2491108E8);
  v41 = a2;
  result = sub_24910D36C();
  v13 = result;
  if (*(v10 + 16))
  {
    v39 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(*(v10 + 48) + 8 * v25);
      v27 = *(v40 + 72);
      v28 = *(v10 + 56) + v27 * v25;
      if (v41)
      {
        sub_2490FA810(v28, v9, type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter);
      }

      else
      {
        sub_2490FA748(v28, v9, type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter);
      }

      v29 = *(v13 + 40);
      result = sub_24910D5FC();
      v30 = -1 << *(v13 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 8 * v21) = v26;
      result = sub_2490FA810(v9, *(v13 + 56) + v27 * v21, type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero((v10 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_2490F24D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7EF0, &qword_249110848);
  v38 = a2;
  result = sub_24910D36C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_24910D60C();
      sub_24910CCCC();
      result = sub_24910D62C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_2490F2780(int64_t a1, uint64_t a2)
{
  v43 = sub_24910C2FC();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_24910D16C();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_2490F57CC(&qword_27EED7ED8, MEMORY[0x277CC95F0]);
      v26 = sub_24910CC3C();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + a1);
          v33 = (v31 + v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_2490F2AA0(int64_t a1, uint64_t a2)
{
  v43 = sub_24910C2FC();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_24910D16C();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_2490F57CC(&qword_27EED7ED8, MEMORY[0x277CC95F0]);
      v26 = sub_24910CC3C();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_2490F2DC0(uint64_t result, uint64_t a2)
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
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_24910D5FC();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2490F2F30(unint64_t result, uint64_t a2)
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
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_24910D5FC();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8 || v3 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v8 && v3 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v10 + 8 * v3);
      if (v3 != v6 || v16 >= v11 + 1)
      {
        *v16 = *v11;
      }

      v17 = *(a2 + 56);
      v18 = *(*(type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter(0) - 8) + 72);
      v19 = v18 * v3;
      result = v17 + v18 * v3;
      v20 = v18 * v6;
      v21 = v17 + v18 * v6 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2490F30DC(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24910C2FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_2490F128C(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      *(v21[7] + v15) = a1 & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v20 >= result && (a3 & 1) == 0)
  {
    result = sub_2490F3990();
    goto LABEL_7;
  }

  sub_2490F14E4(result, a3 & 1);
  v22 = *v4;
  result = sub_2490F128C(a2);
  if ((v19 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_24910D57C();
    __break(1u);
    return result;
  }

  v15 = result;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_2490F3830(v15, v12, a1 & 1, v21);
}

unint64_t sub_2490F327C(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v12 = *v5;
  result = sub_2490A0AB4(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 < v18 || (a3 & 1) != 0)
    {
      sub_2490F1C80(v18, a3 & 1, a4, a5);
      v22 = *v8;
      result = sub_2490A0AB4(a2);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_16:
        result = sub_24910D57C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_2490F3E74(a4, a5);
      result = v21;
    }
  }

  v24 = *v8;
  if ((v19 & 1) == 0)
  {
    v24[(result >> 6) + 8] |= 1 << result;
    *(v24[6] + 8 * result) = a2;
    *(v24[7] + 8 * result) = a1;
    v27 = v24[2];
    v17 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v17)
    {
      v24[2] = v28;
      return result;
    }

    goto LABEL_15;
  }

  v25 = v24[7];
  v26 = *(v25 + 8 * result);
  *(v25 + 8 * result) = a1;
}