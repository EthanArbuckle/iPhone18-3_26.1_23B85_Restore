uint64_t sub_248708108()
{
  v1 = v0[97];
  v0[72] = v0[99];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6688, qword_248735530);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_2487081A4, 0, 0);
}

uint64_t sub_2487081A4()
{
  v1 = v0[92];
  v2 = v0[89];
  v3 = v0[88];
  v4 = v0[85];
  v5 = v0[84];
  v6 = v0[81];
  v7 = v0[80];
  v8 = v0[79];
  v9 = v0[78];
  v13 = v0[77];
  (*(v0[94] + 8))(v0[95], v0[93]);

  v10 = v0[1];
  v11 = v0[99];

  return v10();
}

id sub_2487082F4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_248708344(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_248708388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA66F0, &qword_248735768);
  v3[12] = v4;
  v5 = *(v4 - 8);
  v3[13] = v5;
  v6 = *(v5 + 64) + 15;
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248708458, 0, 0);
}

uint64_t sub_248708458()
{
  v1 = *(v0 + 80);
  v2 = MEMORY[0x277D84F90];
  v3 = sub_2486D3BA8(MEMORY[0x277D84F90]);
  v4 = type metadata accessor for StreamsBookmark();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name];
  *v6 = 0x4C4D4941706D6574;
  *(v6 + 1) = 0xEA00000000005349;
  *&v5[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals] = v3;
  *&v5[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_stagedTimeIntervals] = sub_2486D3BA8(v2);
  *(v0 + 56) = v5;
  *(v0 + 64) = v4;
  v7 = objc_msgSendSuper2((v0 + 56), sel_init);
  if (v1)
  {
    v8 = *(v0 + 80);

    v7 = v8;
  }

  *(v0 + 120) = v7;
  v9 = *(v0 + 88);
  v10 = sub_2486F85E4(1);
  v12 = v11;
  v13 = *(v0 + 88);
  if (v9)
  {
    v14 = *(v0 + 88);
  }

  else
  {
    sub_248730C20();
    v14 = sub_248730BE0();
  }

  *(v0 + 128) = v14;
  sub_248730B50();
  v15 = *(MEMORY[0x277CE4850] + 4);
  v16 = v13;
  v17 = swift_task_alloc();
  *(v0 + 136) = v17;
  *v17 = v0;
  v17[1] = sub_248708630;

  return MEMORY[0x2821377A8](v0 + 16, v14, v10, v12 & 1, 0, 1, 0, 1);
}

uint64_t sub_248708630()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_248708868;
  }

  else
  {
    v3 = sub_248708744;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_248708744()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_248730B20();
  sub_24870DDB0(&qword_27EEA66F8, &qword_27EEA66F0, &qword_248735768);
  sub_248730AB0();

  (*(v4 + 8))(v3, v5);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_248708868()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 112);

  v3 = *(v0 + 8);
  v4 = *(v0 + 144);

  return v3();
}

uint64_t sub_2487088DC(uint64_t a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5D90, &qword_2487333C0) - 8) + 64) + 15;
  v1[57] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390) - 8) + 64) + 15;
  v1[58] = swift_task_alloc();
  v5 = sub_2487309B0();
  v1[59] = v5;
  v6 = *(v5 - 8);
  v1[60] = v6;
  v7 = *(v6 + 64) + 15;
  v1[61] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA66B8, &qword_2487355B8);
  v1[62] = v8;
  v9 = *(v8 - 8);
  v1[63] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v1[64] = v11;
  v1[50] = MEMORY[0x277D84F90];
  v12 = swift_task_alloc();
  v1[65] = v12;
  *v12 = v1;
  v12[1] = sub_248708AC0;

  return sub_248708388(v11, a1, 0);
}

uint64_t sub_248708AC0()
{
  v2 = *(*v1 + 520);
  v5 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {
    v3 = sub_248709980;
  }

  else
  {
    v3 = sub_248708BD4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_248708BD4()
{
  v1 = v0[64];
  v2 = v0[62];
  v0[51] = sub_248730C40();
  v3 = MEMORY[0x277D84F90];
  v0[68] = MEMORY[0x277D84F90];
  v0[67] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA66C0, qword_2487355C8);
  v5 = sub_24870DDB0(&qword_27EEA66C8, &qword_27EEA66C0, qword_2487355C8);
  v6 = *(MEMORY[0x277D856D0] + 4);
  v7 = swift_task_alloc();
  v0[69] = v7;
  *v7 = v0;
  v7[1] = sub_248708CEC;

  return MEMORY[0x282200308](v0 + 52, v4, v5);
}

uint64_t sub_248708CEC()
{
  v2 = *(*v1 + 552);
  v5 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v3 = sub_248709830;
  }

  else
  {
    v3 = sub_248708E00;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_248708E24()
{
  v2 = *(v1 + 568);
  if (v2)
  {
    *(v1 + 432) = MEMORY[0x277D84F90];
    v3 = sub_248730C30();
    v4 = v3;
    if (v3 >> 62)
    {
      v5 = sub_248731790();
      v98 = v2;
      if (v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v98 = v2;
      if (v5)
      {
LABEL_4:
        if (v5 >= 1)
        {
          v6 = 0;
          v7 = MEMORY[0x277D84F90];
          v102 = v4 & 0xC000000000000001;
          v99 = v5;
          v100 = v4;
          while (1)
          {
            v8 = v102 ? MEMORY[0x24C1D7600](v6, v4) : *(v4 + 8 * v6 + 32);
            v9 = v8;
            *(v1 + 40) = sub_248730C70();
            *(v1 + 16) = v9;
            sub_2486C5B68(v1 + 16, v1 + 48);
            sub_248730D50();
            v10 = v9;
            if (swift_dynamicCast())
            {
              break;
            }

            sub_2486C5B68(v1 + 16, v1 + 80);
            if (swift_dynamicCast())
            {
              v103 = v10;
              v30 = *(v1 + 480);
              v29 = *(v1 + 488);
              v31 = *(v1 + 472);
              v32 = *(v1 + 448);
              v33 = type metadata accessor for ConversationTurnAIMLIS(0);
              v34 = objc_allocWithZone(v33);
              *&v34[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation22ConversationTurnAIMLIS_aimlisTurn] = v32;
              *(v1 + 368) = v34;
              *(v1 + 376) = v33;
              v21 = v32;
              v35 = objc_msgSendSuper2((v1 + 368), sel_init, v98);
              v36 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation22ConversationTurnAIMLIS_aimlisTurn;
              v37 = *&v35[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation22ConversationTurnAIMLIS_aimlisTurn];
              v38 = v35;
              v39 = v37;
              sub_248730C60();

              v40 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
              swift_beginAccess();
              (*(v30 + 40))(&v38[v40], v29, v31);
              swift_endAccess();

              sub_2486CF4C4(0, &qword_27EEA5E68, 0x277D5A928);
              v41 = sub_248730B70();
              if (v41)
              {
                v42 = v41;
                v43 = v36;
                v44 = sub_248730AE0();
                if (!v44)
                {
                  goto LABEL_71;
                }

                v47 = v44;
                v48 = *(v1 + 480);
                v101 = *(v1 + 472);
                v49 = *(v1 + 456);
                sub_248730B10();

                (*(v48 + 56))(v49, 0, 1, v101);
                v50 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_clockID;
                swift_beginAccess();
                sub_24870CC00(v49, &v38[v50]);
                swift_endAccess();
                v36 = v43;
              }

              v51 = *&v35[v36];
              v52 = v38;
              v53 = v51;
              sub_248730BD0();
              v55 = v54;

              v56 = &v52[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_timestamp];
              swift_beginAccess();
              *v56 = v55;
              v56[8] = 0;
              v57 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
              swift_beginAccess();
              *&v52[v57] = 1;

              sub_2487133FC();
              goto LABEL_21;
            }

            __swift_destroy_boxed_opaque_existential_0((v1 + 16));
LABEL_7:
            if (v5 == ++v6)
            {
              goto LABEL_29;
            }
          }

          v103 = v10;
          v12 = *(v1 + 480);
          v11 = *(v1 + 488);
          v14 = *(v1 + 464);
          v13 = *(v1 + 472);
          v15 = *(v1 + 440);
          v16 = type metadata accessor for ConversationTurnPLL(0);
          v17 = objc_allocWithZone(v16);
          *&v17[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19ConversationTurnPLL_pllTurn] = v15;
          *(v1 + 384) = v17;
          *(v1 + 392) = v16;

          v18 = objc_msgSendSuper2((v1 + 384), sel_init);
          v19 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19ConversationTurnPLL_pllTurn;
          v20 = *&v18[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19ConversationTurnPLL_pllTurn];
          v21 = v18;

          sub_248730D40();

          v22 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
          swift_beginAccess();
          (*(v12 + 40))(&v21[v22], v11, v13);
          swift_endAccess();
          v23 = *&v18[v19];

          sub_248730D20();

          v24 = sub_248730970();
          v25 = *(v24 - 8);
          v26 = (*(v25 + 48))(v14, 1, v24);
          v27 = *(v1 + 464);
          if (v26 == 1)
          {
            sub_2486C7940(*(v1 + 464), &qword_27EEA6240, &unk_248733390);
            v28 = 0;
          }

          else
          {
            sub_248730900();
            v28 = v58;
            (*(v25 + 8))(v27, v24);
          }

          v59 = &v21[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_timestamp];
          swift_beginAccess();
          *v59 = v28;
          v59[8] = v26 == 1;
          v60 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
          swift_beginAccess();
          *&v21[v60] = 0;
          sub_24871082C();

          v52 = v21;
LABEL_21:
          v4 = v100;

          __swift_destroy_boxed_opaque_existential_0((v1 + 16));
          v61 = v52;
          MEMORY[0x24C1D71A0]();
          if (*((*(v1 + 432) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 432) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v62 = *((*(v1 + 432) & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_248731260();
          }

          sub_2487312A0();

          v7 = *(v1 + 432);
          v5 = v99;
          goto LABEL_7;
        }

        __break(1u);
        goto LABEL_64;
      }
    }

    v7 = MEMORY[0x277D84F90];
LABEL_29:

    v73 = type metadata accessor for Conversation();
    v74 = objc_allocWithZone(v73);
    *&v74[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation12Conversation_turns] = v7;
    *(v1 + 352) = v74;
    *(v1 + 360) = v73;
    v2 = objc_msgSendSuper2((v1 + 352), sel_init);
    v0 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation12Conversation_turns;
    v75 = *&v2[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation12Conversation_turns];
    if (v75 >> 62)
    {
LABEL_56:
      if (sub_248731790())
      {
LABEL_31:
        v45 = *&v2[v0];
        if (!(v45 >> 62))
        {
          v44 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v44 != 1)
          {
            goto LABEL_38;
          }

          goto LABEL_33;
        }

LABEL_64:
        v44 = sub_248731790();
        v45 = *&v2[v0];
        if (v44 != 1)
        {
          goto LABEL_38;
        }

LABEL_33:
        if ((v45 & 0xC000000000000001) != 0)
        {
          goto LABEL_69;
        }

        if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          for (i = *(v45 + 32); ; i = MEMORY[0x24C1D7600](0))
          {
            v77 = i;
            v78 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
            swift_beginAccess();
            v79 = *&v77[v78];

            if (v79 != 2)
            {
              goto LABEL_57;
            }

            v45 = *&v2[v0];
LABEL_38:
            if ((v45 & 0xC000000000000001) != 0)
            {
              break;
            }

            if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v80 = *(v45 + 32);
              goto LABEL_41;
            }

            __break(1u);
LABEL_69:
            ;
          }

          v80 = MEMORY[0x24C1D7600](0);
LABEL_41:
          v81 = v80;
          v82 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
          swift_beginAccess();
          v83 = *&v81[v82];

          v0 = *&v2[v0];
          if (v0 >> 62)
          {
            v84 = sub_248731790();
          }

          else
          {
            v84 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v85 = 0;
          while (v84 != v85)
          {
            if ((v0 & 0xC000000000000001) != 0)
            {
              v86 = MEMORY[0x24C1D7600](v85, v0);
            }

            else
            {
              if (v85 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_55;
              }

              v86 = *(v0 + 8 * v85 + 32);
            }

            v87 = v86;
            if (__OFADD__(v85, 1))
            {
              __break(1u);
LABEL_55:
              __break(1u);
              goto LABEL_56;
            }

            v88 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
            swift_beginAccess();
            v89 = *&v87[v88];

            if (v89 != 2)
            {
              ++v85;
              if (v89 == v83)
              {
                continue;
              }
            }

            v90 = *(v1 + 544);
            v91 = *(v1 + 536);
            goto LABEL_60;
          }

          goto LABEL_57;
        }

        __break(1u);
LABEL_71:
        __break(1u);
        return MEMORY[0x282200308](v44, v45, v46);
      }
    }

    else if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

LABEL_57:
    v92 = v2;
    MEMORY[0x24C1D71A0]();
    if (*((*(v1 + 400) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 400) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v97 = *((*(v1 + 400) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_248731260();
    }

    sub_2487312A0();

    v91 = *(v1 + 400);
    v90 = v91;
LABEL_60:
    *(v1 + 544) = v90;
    *(v1 + 536) = v91;
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA66C0, qword_2487355C8);
    v94 = sub_24870DDB0(&qword_27EEA66C8, &qword_27EEA66C0, qword_2487355C8);
    v95 = *(MEMORY[0x277D856D0] + 4);
    v96 = swift_task_alloc();
    *(v1 + 552) = v96;
    *v96 = v1;
    v96[1] = sub_248708CEC;
    v44 = v1 + 416;
    v45 = v93;
    v46 = v94;

    return MEMORY[0x282200308](v44, v45, v46);
  }

  v64 = *(v1 + 504);
  v63 = *(v1 + 512);
  v66 = *(v1 + 488);
  v65 = *(v1 + 496);
  v68 = *(v1 + 456);
  v67 = *(v1 + 464);
  v69 = *(v1 + 408);

  (*(v64 + 8))(v63, v65);

  v70 = *(v1 + 8);
  v71 = *(v1 + 536);

  return v70(v71);
}

uint64_t sub_248709830()
{
  v1 = v0[68];
  v0[53] = v0[70];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6688, qword_248735530);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_2487098CC, 0, 0);
}

uint64_t sub_2487098CC()
{
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[62];
  v4 = v0[51];

  (*(v2 + 8))(v1, v3);
  v5 = v0[70];
  v6 = v0[64];
  v7 = v0[61];
  v9 = v0[57];
  v8 = v0[58];

  v10 = v0[1];

  return v10();
}

uint64_t sub_248709980()
{
  v1 = v0[66];
  v2 = v0[64];
  v3 = v0[61];
  v5 = v0[57];
  v4 = v0[58];

  v6 = v0[1];

  return v6();
}

uint64_t sub_248709B94(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_24870DDF8;

  return sub_2487088DC(a1);
}

uint64_t sub_248709C50(uint64_t a1, uint64_t a2)
{
  v3[80] = v2;
  v3[79] = a2;
  v3[78] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5D90, &qword_2487333C0) - 8) + 64) + 15;
  v3[81] = swift_task_alloc();
  v3[82] = swift_task_alloc();
  v3[83] = swift_task_alloc();
  v3[84] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390) - 8) + 64) + 15;
  v3[85] = swift_task_alloc();
  v6 = sub_2487309B0();
  v3[86] = v6;
  v7 = *(v6 - 8);
  v3[87] = v7;
  v8 = *(v7 + 64) + 15;
  v3[88] = swift_task_alloc();
  v3[89] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA66B8, &qword_2487355B8);
  v3[90] = v9;
  v10 = *(v9 - 8);
  v3[91] = v10;
  v11 = *(v10 + 64) + 15;
  v3[92] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248709E20, 0, 0);
}

uint64_t sub_248709E20()
{
  v1 = v0[79];
  v0[77] = MEMORY[0x277D84F90];
  sub_248730C20();
  sub_2486CF4C4(0, &qword_27EEA6338, 0x277D57038);
  result = sub_248730BF0();
  v3 = result;
  v0[93] = result;
  if (v1 >> 62)
  {
    if (v0[79] < 0)
    {
      v13 = v0[79];
    }

    result = sub_248731790();
    v4 = result;
    v0[94] = result;
    if (!result)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[94] = v4;
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return result;
  }

  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v0[79] + 32;
  v8 = MEMORY[0x277D85000];
  do
  {
    if (v6)
    {
      v9 = MEMORY[0x24C1D7600](v5, v0[79]);
    }

    else
    {
      v9 = *(v7 + 8 * v5);
    }

    v10 = v9;
    ++v5;
    v11 = (*((*v8 & *v9) + 0x80))();
    v12 = sub_248730C10();
  }

  while (v4 != v5);
LABEL_12:
  v14 = v3;
  v15 = swift_task_alloc();
  v0[95] = v15;
  *v15 = v0;
  v15[1] = sub_248709FFC;
  v16 = v0[92];
  v17 = v0[78];

  return sub_248708388(v16, v17, v3);
}

uint64_t sub_248709FFC()
{
  v2 = *(*v1 + 760);
  v3 = *(*v1 + 744);
  v6 = *v1;
  *(*v1 + 768) = v0;

  if (v0)
  {
    v4 = sub_24870B374;
  }

  else
  {
    v4 = sub_24870A128;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24870A128()
{
  v1 = v0[92];
  v2 = v0[90];
  v0[76] = sub_248730C40();
  v3 = MEMORY[0x277D84F90];
  v0[98] = MEMORY[0x277D84F90];
  v0[97] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA66C0, qword_2487355C8);
  v5 = sub_24870DDB0(&qword_27EEA66C8, &qword_27EEA66C0, qword_2487355C8);
  v6 = *(MEMORY[0x277D856D0] + 4);
  v7 = swift_task_alloc();
  v0[99] = v7;
  *v7 = v0;
  v7[1] = sub_24870A240;

  return MEMORY[0x282200308](v0 + 75, v4, v5);
}

uint64_t sub_24870A240()
{
  v2 = *(*v1 + 792);
  v5 = *v1;
  *(*v1 + 800) = v0;

  if (v0)
  {
    v3 = sub_24870B1D4;
  }

  else
  {
    v3 = sub_24870A354;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24870A378()
{
  v1 = *(v0 + 808);
  if (!v1)
  {
    v105 = *(v0 + 736);
    v106 = *(v0 + 728);
    v107 = *(v0 + 720);
    v108 = *(v0 + 712);
    v109 = *(v0 + 704);
    v110 = *(v0 + 680);
    v111 = *(v0 + 672);
    v112 = *(v0 + 664);
    v113 = *(v0 + 656);
    v159 = *(v0 + 648);

    v114 = *(v0 + 608);

    (*(v106 + 8))(v105, v107);

    v115 = *(v0 + 8);
    v116 = *(v0 + 776);

    return v115(v116);
  }

  v143 = (v0 + 584);
  *(v0 + 584) = MEMORY[0x277D84F90];
  v139 = v1;
  v2 = sub_248730C30();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_81;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_82:
    v7 = MEMORY[0x277D84F90];
LABEL_83:

    type metadata accessor for FeaturizedConversation();
    v3 = swift_allocObject();
    *(v3 + 16) = 2;
    *(v3 + 40) = v7;
    if (v7 >> 62)
    {
      goto LABEL_90;
    }

    v120 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v120)
    {
      goto LABEL_85;
    }

LABEL_91:
    v123 = 0;
    v122 = 0;
LABEL_92:
    *(v3 + 24) = v123;
    *(v3 + 32) = v122;
    v124 = *(v3 + 40);
    if (v124 >> 62)
    {
      if (v124 < 0)
      {
        v129 = *(v3 + 40);
      }

      if (sub_248731790())
      {
        goto LABEL_94;
      }
    }

    else if (*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_94:
      v125 = (v0 + 616);

      MEMORY[0x24C1D71A0](v126);
      if (*((*v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v135 = *((*v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_248731260();
      }

      sub_2487312A0();

      v127 = *v125;
      v128 = *v125;
      goto LABEL_101;
    }

    v128 = *(v0 + 784);
    v127 = *(v0 + 776);
LABEL_101:
    *(v0 + 784) = v128;
    *(v0 + 776) = v127;
    v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA66C0, qword_2487355C8);
    v131 = sub_24870DDB0(&qword_27EEA66C8, &qword_27EEA66C0, qword_2487355C8);
    v132 = *(MEMORY[0x277D856D0] + 4);
    v133 = swift_task_alloc();
    *(v0 + 792) = v133;
    *v133 = v0;
    v133[1] = sub_24870A240;
    v120 = v0 + 600;
    v118 = v130;
    v119 = v131;

    return MEMORY[0x282200308](v120, v118, v119);
  }

LABEL_4:
  v5 = 0;
  v158 = (v0 + 560);
  v6 = v3 & 0xC000000000000001;
  v137 = v3 & 0xFFFFFFFFFFFFFF8;
  v138 = (v0 + 568);
  v7 = MEMORY[0x277D84F90];
  v136 = v3 + 32;
  v157 = v0;
  v141 = v4;
  v142 = v3;
  v140 = v3 & 0xC000000000000001;
  while (1)
  {
    if (v6)
    {
      v8 = MEMORY[0x24C1D7600](v5, v3);
    }

    else
    {
      if (v5 >= *(v137 + 16))
      {
        goto LABEL_89;
      }

      v8 = *(v136 + 8 * v5);
    }

    v9 = v8;
    v10 = __OFADD__(v5, 1);
    v11 = v5 + 1;
    if (v10)
    {
LABEL_80:
      __break(1u);
LABEL_81:
      v4 = sub_248731790();
      if (!v4)
      {
        goto LABEL_82;
      }

      goto LABEL_4;
    }

    v145 = v11;
    *(v0 + 280) = sub_248730C70();
    *(v0 + 256) = v9;
    sub_2486C5B68(v0 + 256, v0 + 288);
    sub_248730D50();
    v144 = v9;
    if (swift_dynamicCast())
    {
      break;
    }

    sub_2486C5B68(v0 + 256, v0 + 320);
    if (swift_dynamicCast())
    {
      v3 = *v138;
      v29 = objc_allocWithZone(type metadata accessor for ConversationTurnAIMLIS(0));
      v146 = sub_248713D24(v3);
      goto LABEL_17;
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 256));
LABEL_68:
    v3 = v142;
    v5 = v145;
    v6 = v140;
    if (v145 == v141)
    {
      goto LABEL_83;
    }
  }

  v12 = *(v0 + 712);
  v13 = *(v0 + 696);
  v14 = *(v0 + 688);
  v15 = *(v0 + 680);
  v16 = *(v0 + 576);
  v17 = type metadata accessor for ConversationTurnPLL(0);
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19ConversationTurnPLL_pllTurn] = v16;
  *(v0 + 544) = v18;
  *(v0 + 552) = v17;

  v19 = objc_msgSendSuper2((v0 + 544), sel_init);
  v20 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19ConversationTurnPLL_pllTurn;
  v21 = *&v19[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19ConversationTurnPLL_pllTurn];
  v3 = v19;

  sub_248730D40();

  v22 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
  swift_beginAccess();
  (*(v13 + 40))(v3 + v22, v12, v14);
  swift_endAccess();
  v23 = *&v19[v20];

  sub_248730D20();

  v24 = sub_248730970();
  v25 = *(v24 - 8);
  v26 = (*(v25 + 48))(v15, 1, v24);
  v27 = *(v0 + 680);
  if (v26 == 1)
  {
    sub_2486C7940(*(v0 + 680), &qword_27EEA6240, &unk_248733390);
    v28 = 0;
  }

  else
  {
    sub_248730900();
    v28 = v30;
    (*(v25 + 8))(v27, v24);
  }

  v31 = v3 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_timestamp;
  v0 = v157;
  swift_beginAccess();
  *v31 = v28;
  *(v31 + 8) = v26 == 1;
  v32 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
  swift_beginAccess();
  *(v3 + v32) = 0;
  sub_24871082C();

  v146 = v3;
LABEL_17:

  v33 = *(v0 + 752);
  __swift_destroy_boxed_opaque_existential_0((v0 + 256));
  v34 = sub_2486D3554(MEMORY[0x277D84F90]);
  if (!v33)
  {
LABEL_57:
    v156 = v34;
    v75 = *(v0 + 704);
    v76 = *(v0 + 696);
    v77 = *(v0 + 688);
    v78 = *(v0 + 672);
    v79 = &v146[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_timestamp];
    swift_beginAccess();
    v80 = *v79;
    v154 = *(v79 + 8);
    v81 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
    swift_beginAccess();
    (*(v76 + 16))(v75, &v146[v81], v77);
    v82 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_clockID;
    swift_beginAccess();
    sub_2486D8A6C(&v146[v82], v78, &qword_27EEA5D90, &qword_2487333C0);
    if (v156[2] && (v83 = sub_2486C94CC(0x7165722E4843524FLL, 0xEE00644974736575), (v84 & 1) != 0))
    {
      v85 = *(v157 + 696);
      v86 = *(v157 + 688);
      v87 = *(v157 + 664);
      sub_2486C5B68(v156[7] + 32 * v83, v157 + 192);
      v88 = swift_dynamicCast();
      (*(v85 + 56))(v87, v88 ^ 1u, 1, v86);
    }

    else
    {
      (*(*(v157 + 696) + 56))(*(v157 + 664), 1, 1, *(v157 + 688));
    }

    v89 = *(v157 + 704);
    v90 = *(v157 + 696);
    v91 = *(v157 + 672);
    v92 = *(v157 + 664);
    v150 = *(v157 + 688);
    v152 = v92;
    v93 = *(v157 + 656);
    v94 = *(v157 + 648);
    v95 = sub_248730980();
    v148 = v96;
    sub_2486D8A6C(v92, v93, &qword_27EEA5D90, &qword_2487333C0);
    sub_2486D8A6C(v91, v94, &qword_27EEA5D90, &qword_2487333C0);
    v97 = type metadata accessor for FeaturizedConversationTurn();
    v98 = *(v97 + 48);
    v99 = *(v97 + 52);
    v100 = swift_allocObject();
    *(v100 + 16) = 1;
    v101 = sub_2486D3554(MEMORY[0x277D84F90]);
    sub_2486C7940(v91, &qword_27EEA5D90, &qword_2487333C0);
    (*(v90 + 8))(v89, v150);
    *(v100 + 24) = v101;
    *(v100 + 40) = v95;
    *(v100 + 48) = v148;
    if (v154)
    {
      v102 = -1.0;
    }

    else
    {
      v102 = v80;
    }

    *(v100 + 32) = v102;
    sub_2486C98BC(v93, v100 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation26FeaturizedConversationTurn_requestID);
    v0 = v157;
    sub_2486C98BC(v94, v100 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation26FeaturizedConversationTurn_clockId);
    swift_beginAccess();
    *(v100 + 24) = v156;

    sub_2486C7940(v152, &qword_27EEA5D90, &qword_2487333C0);

    MEMORY[0x24C1D71A0](v103);
    if (*((*(v0 + 584) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 584) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v104 = *((*(v157 + 584) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_248731260();
    }

    sub_2487312A0();

    v7 = *v143;
    goto LABEL_68;
  }

  v7 = 0;
  while (1)
  {
    v38 = *(v0 + 632);
    if ((v38 & 0xC000000000000001) != 0)
    {
      v39 = MEMORY[0x24C1D7600](v7);
      goto LABEL_25;
    }

    if (v7 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v39 = *(v38 + 8 * v7 + 32);
LABEL_25:
    v3 = v39;
    v10 = __OFADD__(v7, 1);
    v40 = v7 + 1;
    if (v10)
    {
      goto LABEL_79;
    }

    v151 = v40;
    (*((*MEMORY[0x277D85000] & *v39) + 0x70))(v146);
    v41 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation25IntraTurnFeatureExtractor_features;
    swift_beginAccess();
    v147 = v41;
    v149 = v3;
    v42 = *(v3 + v41);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v158 = v34;
    v44 = v42 + 64;
    v45 = -1 << *(v42 + 32);
    if (-v45 < 64)
    {
      v46 = ~(-1 << -v45);
    }

    else
    {
      v46 = -1;
    }

    v47 = v46 & *(v42 + 64);
    v153 = (63 - v45) >> 6;
    v155 = v42;

    v48 = 0;
    if (!v47)
    {
LABEL_33:
      if (v153 <= v48 + 1)
      {
        v51 = v48 + 1;
      }

      else
      {
        v51 = v153;
      }

      v52 = v51 - 1;
      while (1)
      {
        v50 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          break;
        }

        if (v50 >= v153)
        {
          v47 = 0;
          *(v0 + 128) = 0u;
          *(v0 + 144) = 0u;
          v48 = v52;
          *(v0 + 112) = 0u;
          goto LABEL_42;
        }

        v47 = *(v44 + 8 * v50);
        ++v48;
        if (v47)
        {
          v48 = v50;
          goto LABEL_41;
        }
      }

      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    while (1)
    {
      v50 = v48;
LABEL_41:
      v53 = __clz(__rbit64(v47));
      v47 &= v47 - 1;
      v54 = v53 | (v50 << 6);
      v55 = (*(v155 + 48) + 16 * v54);
      v56 = *v55;
      v57 = v55[1];
      sub_2486C5B68(*(v155 + 56) + 32 * v54, v0 + 224);
      *(v0 + 112) = v56;
      *(v0 + 120) = v57;
      sub_2486C79A0((v0 + 224), (v0 + 128));

LABEL_42:
      v58 = *(v0 + 128);
      *(v0 + 64) = *(v0 + 112);
      *(v0 + 80) = v58;
      *(v0 + 96) = *(v0 + 144);
      v59 = *(v0 + 72);
      if (!v59)
      {
        break;
      }

      v60 = *(v0 + 64);
      sub_2486C5B68(v0 + 80, v0 + 32);
      *(v0 + 16) = v60;
      *(v0 + 24) = v59;

      sub_2486C7940(v0 + 64, &qword_27EEA6328, &qword_248734838);
      v61 = *(v0 + 24);
      if (!v61)
      {
        goto LABEL_20;
      }

      v62 = *(v0 + 16);
      sub_2486C79A0((v0 + 32), (v0 + 160));
      v3 = sub_2486C94CC(v62, v61);
      v64 = v34;
      v65 = v34[2];
      v66 = (v63 & 1) == 0;
      v67 = v65 + v66;
      if (__OFADD__(v65, v66))
      {
        goto LABEL_77;
      }

      v68 = v63;
      if (v64[3] >= v67)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v63 & 1) == 0)
          {
            goto LABEL_51;
          }
        }

        else
        {
          sub_2486E62F4();
          if ((v68 & 1) == 0)
          {
            goto LABEL_51;
          }
        }

LABEL_31:

        v34 = *v158;
        v49 = (*(*v158 + 56) + 32 * v3);
        __swift_destroy_boxed_opaque_existential_0(v49);
        v0 = v157;
        sub_2486C79A0((v157 + 160), v49);
        isUniquelyReferenced_nonNull_native = 1;
        if (!v47)
        {
          goto LABEL_33;
        }
      }

      else
      {
        sub_2486E45C8(v67, isUniquelyReferenced_nonNull_native & 1);
        v69 = *v158;
        v70 = sub_2486C94CC(v62, v61);
        if ((v68 & 1) != (v71 & 1))
        {

          return sub_2487318B0();
        }

        v3 = v70;
        if (v68)
        {
          goto LABEL_31;
        }

LABEL_51:
        v0 = v157;
        v34 = *v158;
        *(*v158 + 8 * (v3 >> 6) + 64) |= 1 << v3;
        v72 = (v34[6] + 16 * v3);
        *v72 = v62;
        v72[1] = v61;
        sub_2486C79A0((v157 + 160), (v34[7] + 32 * v3));
        v73 = v34[2];
        v10 = __OFADD__(v73, 1);
        v74 = v73 + 1;
        if (v10)
        {
          goto LABEL_78;
        }

        v34[2] = v74;
        isUniquelyReferenced_nonNull_native = 1;
        if (!v47)
        {
          goto LABEL_33;
        }
      }
    }

    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 16) = 0u;
LABEL_20:
    v35 = *(v0 + 752);

    v3 = v149;
    v36 = *&v149[v147];
    *&v149[v147] = MEMORY[0x277D84F98];

    v37 = v151 == v35;
    v7 = v151;
    if (v37)
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  v120 = sub_248731790();
  if (!v120)
  {
    goto LABEL_91;
  }

LABEL_85:
  if ((v7 & 0xC000000000000001) != 0)
  {

    v134 = MEMORY[0x24C1D7600](0, v7);

    v123 = *(v134 + 40);
    v122 = *(v134 + 48);

    swift_unknownObjectRelease();
    goto LABEL_92;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v121 = *(v7 + 32);
    v123 = *(v121 + 40);
    v122 = *(v121 + 48);

    goto LABEL_92;
  }

  __break(1u);
  return MEMORY[0x282200308](v120, v118, v119);
}

uint64_t sub_24870B1D4()
{
  v1 = v0[98];
  v0[74] = v0[100];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6688, qword_248735530);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_24870B270, 0, 0);
}

uint64_t sub_24870B270()
{
  v1 = *(v0 + 736);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);

  v4 = *(v0 + 608);

  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 800);
  v6 = *(v0 + 736);
  v7 = *(v0 + 712);
  v8 = *(v0 + 704);
  v9 = *(v0 + 680);
  v10 = *(v0 + 672);
  v11 = *(v0 + 664);
  v12 = *(v0 + 656);
  v13 = *(v0 + 648);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_24870B374()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 736);
  v3 = *(v0 + 712);
  v4 = *(v0 + 704);
  v5 = *(v0 + 680);
  v6 = *(v0 + 672);
  v7 = *(v0 + 664);
  v8 = *(v0 + 656);
  v9 = *(v0 + 648);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24870B44C(uint64_t a1, uint64_t a2)
{
  v3[80] = v2;
  v3[79] = a2;
  v3[78] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5D90, &qword_2487333C0) - 8) + 64) + 15;
  v3[81] = swift_task_alloc();
  v3[82] = swift_task_alloc();
  v3[83] = swift_task_alloc();
  v3[84] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390) - 8) + 64) + 15;
  v3[85] = swift_task_alloc();
  v6 = sub_2487309B0();
  v3[86] = v6;
  v7 = *(v6 - 8);
  v3[87] = v7;
  v8 = *(v7 + 64) + 15;
  v3[88] = swift_task_alloc();
  v3[89] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA66B8, &qword_2487355B8);
  v3[90] = v9;
  v10 = *(v9 - 8);
  v3[91] = v10;
  v11 = *(v10 + 64) + 15;
  v3[92] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24870B61C, 0, 0);
}

void sub_24870B61C()
{
  v1 = v0[79];
  v0[77] = MEMORY[0x277D84F90];
  sub_248730C20();
  sub_2486CF4C4(0, &qword_27EEA6338, 0x277D57038);
  v2 = sub_248730BF0();
  v3 = sub_2486CF4C4(0, &qword_27EEA66D0, 0x277D56858);
  v4 = sub_2486CF428();
  v5 = *(v4 + 52);
  v6 = (*(v4 + 48) + 7) & 0x1FFFFFFF8;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_248733790;
  *(v7 + 32) = sub_2486CF4C4(0, &qword_27EEA66D8, 0x277D569E8);
  *(v7 + 40) = sub_2486CF4C4(0, &qword_27EEA66E0, 0x277D56A38);
  v8 = MEMORY[0x24C1D6B80](v3, v7);

  v9 = sub_248730C10();
  v0[93] = v9;

  if (v1 >> 62)
  {
    if (v0[79] < 0)
    {
      v19 = v0[79];
    }

    v10 = sub_248731790();
    v0[94] = v10;
    if (!v10)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v10 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[94] = v10;
    if (!v10)
    {
      goto LABEL_12;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
    return;
  }

  v11 = 0;
  v12 = v1 & 0xC000000000000001;
  v13 = v0[79] + 32;
  v14 = MEMORY[0x277D85000];
  do
  {
    if (v12)
    {
      v15 = MEMORY[0x24C1D7600](v11, v0[79]);
    }

    else
    {
      v15 = *(v13 + 8 * v11);
    }

    v16 = v15;
    ++v11;
    v17 = (*((*v14 & *v15) + 0x80))();
    v18 = sub_248730C10();
  }

  while (v10 != v11);
LABEL_12:
  v20 = v9;
  v21 = swift_task_alloc();
  v0[95] = v21;
  *v21 = v0;
  v21[1] = sub_24870B8AC;
  v22 = v0[92];
  v23 = v0[78];

  sub_248708388(v22, v23, v9);
}

uint64_t sub_24870B8AC()
{
  v2 = *(*v1 + 760);
  v3 = *(*v1 + 744);
  v6 = *v1;
  *(*v1 + 768) = v0;

  if (v0)
  {
    v4 = sub_24870DE0C;
  }

  else
  {
    v4 = sub_24870B9D8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24870B9D8()
{
  v1 = v0[92];
  v2 = v0[90];
  v0[76] = sub_248730C40();
  v3 = MEMORY[0x277D84F90];
  v0[98] = MEMORY[0x277D84F90];
  v0[97] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA66C0, qword_2487355C8);
  v5 = sub_24870DDB0(&qword_27EEA66C8, &qword_27EEA66C0, qword_2487355C8);
  v6 = *(MEMORY[0x277D856D0] + 4);
  v7 = swift_task_alloc();
  v0[99] = v7;
  *v7 = v0;
  v7[1] = sub_24870BAF0;

  return MEMORY[0x282200308](v0 + 75, v4, v5);
}

uint64_t sub_24870BAF0()
{
  v2 = *(*v1 + 792);
  v5 = *v1;
  *(*v1 + 800) = v0;

  if (v0)
  {
    v3 = sub_24870CA84;
  }

  else
  {
    v3 = sub_24870BC04;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24870BC28()
{
  v1 = *(v0 + 808);
  if (!v1)
  {
    v106 = *(v0 + 736);
    v107 = *(v0 + 728);
    v108 = *(v0 + 720);
    v109 = *(v0 + 712);
    v110 = *(v0 + 704);
    v111 = *(v0 + 680);
    v112 = *(v0 + 672);
    v113 = *(v0 + 664);
    v114 = *(v0 + 656);
    v160 = *(v0 + 648);

    v115 = *(v0 + 608);

    (*(v107 + 8))(v106, v108);

    v116 = *(v0 + 8);
    v117 = *(v0 + 776);

    return v116(v117);
  }

  v144 = (v0 + 584);
  *(v0 + 584) = MEMORY[0x277D84F90];
  v140 = v1;
  v2 = sub_248730C30();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_81;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_82:
    v7 = MEMORY[0x277D84F90];
LABEL_83:

    type metadata accessor for FeaturizedConversation();
    v3 = swift_allocObject();
    *(v3 + 16) = 2;
    *(v3 + 40) = v7;
    if (v7 >> 62)
    {
      goto LABEL_90;
    }

    v121 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v121)
    {
      goto LABEL_85;
    }

LABEL_91:
    v124 = 0;
    v123 = 0;
LABEL_92:
    *(v3 + 24) = v124;
    *(v3 + 32) = v123;
    v125 = *(v3 + 40);
    if (v125 >> 62)
    {
      if (v125 < 0)
      {
        v130 = *(v3 + 40);
      }

      if (sub_248731790())
      {
        goto LABEL_94;
      }
    }

    else if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_94:
      v126 = (v0 + 616);

      MEMORY[0x24C1D71A0](v127);
      if (*((*v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v136 = *((*v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_248731260();
      }

      sub_2487312A0();

      v128 = *v126;
      v129 = *v126;
      goto LABEL_101;
    }

    v129 = *(v0 + 784);
    v128 = *(v0 + 776);
LABEL_101:
    *(v0 + 784) = v129;
    *(v0 + 776) = v128;
    v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA66C0, qword_2487355C8);
    v132 = sub_24870DDB0(&qword_27EEA66C8, &qword_27EEA66C0, qword_2487355C8);
    v133 = *(MEMORY[0x277D856D0] + 4);
    v134 = swift_task_alloc();
    *(v0 + 792) = v134;
    *v134 = v0;
    v134[1] = sub_24870BAF0;
    v121 = v0 + 600;
    v119 = v131;
    v120 = v132;

    return MEMORY[0x282200308](v121, v119, v120);
  }

LABEL_4:
  v5 = 0;
  v159 = (v0 + 560);
  v6 = v3 & 0xC000000000000001;
  v138 = v3 & 0xFFFFFFFFFFFFFF8;
  v139 = (v0 + 568);
  v7 = MEMORY[0x277D84F90];
  v137 = v3 + 32;
  v158 = v0;
  v142 = v4;
  v143 = v3;
  v141 = v3 & 0xC000000000000001;
  while (1)
  {
    if (v6)
    {
      v8 = MEMORY[0x24C1D7600](v5, v3);
    }

    else
    {
      if (v5 >= *(v138 + 16))
      {
        goto LABEL_89;
      }

      v8 = *(v137 + 8 * v5);
    }

    v9 = v8;
    v10 = __OFADD__(v5, 1);
    v11 = v5 + 1;
    if (v10)
    {
LABEL_80:
      __break(1u);
LABEL_81:
      v4 = sub_248731790();
      if (!v4)
      {
        goto LABEL_82;
      }

      goto LABEL_4;
    }

    v146 = v11;
    *(v0 + 280) = sub_248730C70();
    *(v0 + 256) = v9;
    sub_2486C5B68(v0 + 256, v0 + 288);
    sub_248730D50();
    v145 = v9;
    if (swift_dynamicCast())
    {
      break;
    }

    sub_2486C5B68(v0 + 256, v0 + 320);
    if (swift_dynamicCast())
    {
      v3 = *v139;
      v29 = objc_allocWithZone(type metadata accessor for ConversationTurnAIMLIS(0));
      v30 = sub_248713D24(v3);
      goto LABEL_17;
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 256));
LABEL_68:
    v3 = v143;
    v5 = v146;
    v6 = v141;
    if (v146 == v142)
    {
      goto LABEL_83;
    }
  }

  v12 = *(v0 + 712);
  v13 = *(v0 + 696);
  v14 = *(v0 + 688);
  v15 = *(v0 + 680);
  v16 = *(v0 + 576);
  v17 = type metadata accessor for ConversationTurnPLL(0);
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19ConversationTurnPLL_pllTurn] = v16;
  *(v0 + 544) = v18;
  *(v0 + 552) = v17;

  v19 = objc_msgSendSuper2((v0 + 544), sel_init);
  v20 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19ConversationTurnPLL_pllTurn;
  v21 = *&v19[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19ConversationTurnPLL_pllTurn];
  v3 = v19;

  sub_248730D40();

  v22 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
  swift_beginAccess();
  (*(v13 + 40))(v3 + v22, v12, v14);
  swift_endAccess();
  v23 = *&v19[v20];

  sub_248730D20();

  v24 = sub_248730970();
  v25 = *(v24 - 8);
  v26 = (*(v25 + 48))(v15, 1, v24);
  v27 = *(v0 + 680);
  if (v26 == 1)
  {
    sub_2486C7940(*(v0 + 680), &qword_27EEA6240, &unk_248733390);
    v28 = 0;
  }

  else
  {
    sub_248730900();
    v28 = v31;
    (*(v25 + 8))(v27, v24);
  }

  v32 = v3 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_timestamp;
  v0 = v158;
  swift_beginAccess();
  *v32 = v28;
  *(v32 + 8) = v26 == 1;
  v33 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
  swift_beginAccess();
  *(v3 + v33) = 0;
  sub_24871082C();

  v30 = v3;
LABEL_17:

  v34 = *(v0 + 752);
  __swift_destroy_boxed_opaque_existential_0((v0 + 256));
  v35 = sub_24871557C(v30);
  v147 = v30;
  if (!v34)
  {
LABEL_57:
    v157 = v35;
    v76 = *(v0 + 704);
    v77 = *(v0 + 696);
    v78 = *(v0 + 688);
    v79 = *(v0 + 672);
    v80 = v30 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_timestamp;
    swift_beginAccess();
    v81 = *v80;
    v155 = *(v80 + 8);
    v82 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
    swift_beginAccess();
    (*(v77 + 16))(v76, v30 + v82, v78);
    v83 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_clockID;
    swift_beginAccess();
    sub_2486D8A6C(v30 + v83, v79, &qword_27EEA5D90, &qword_2487333C0);
    if (v157[2] && (v84 = sub_2486C94CC(0x7165722E4843524FLL, 0xEE00644974736575), (v85 & 1) != 0))
    {
      v86 = *(v158 + 696);
      v87 = *(v158 + 688);
      v88 = *(v158 + 664);
      sub_2486C5B68(v157[7] + 32 * v84, v158 + 192);
      v89 = swift_dynamicCast();
      (*(v86 + 56))(v88, v89 ^ 1u, 1, v87);
    }

    else
    {
      (*(*(v158 + 696) + 56))(*(v158 + 664), 1, 1, *(v158 + 688));
    }

    v90 = *(v158 + 704);
    v91 = *(v158 + 696);
    v92 = *(v158 + 672);
    v93 = *(v158 + 664);
    v151 = *(v158 + 688);
    v153 = v93;
    v94 = *(v158 + 656);
    v95 = *(v158 + 648);
    v96 = sub_248730980();
    v149 = v97;
    sub_2486D8A6C(v93, v94, &qword_27EEA5D90, &qword_2487333C0);
    sub_2486D8A6C(v92, v95, &qword_27EEA5D90, &qword_2487333C0);
    v98 = type metadata accessor for FeaturizedConversationTurn();
    v99 = *(v98 + 48);
    v100 = *(v98 + 52);
    v101 = swift_allocObject();
    *(v101 + 16) = 1;
    v102 = sub_2486D3554(MEMORY[0x277D84F90]);
    sub_2486C7940(v92, &qword_27EEA5D90, &qword_2487333C0);
    (*(v91 + 8))(v90, v151);
    *(v101 + 24) = v102;
    *(v101 + 40) = v96;
    *(v101 + 48) = v149;
    if (v155)
    {
      v103 = -1.0;
    }

    else
    {
      v103 = v81;
    }

    *(v101 + 32) = v103;
    sub_2486C98BC(v94, v101 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation26FeaturizedConversationTurn_requestID);
    v0 = v158;
    sub_2486C98BC(v95, v101 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation26FeaturizedConversationTurn_clockId);
    swift_beginAccess();
    *(v101 + 24) = v157;

    sub_2486C7940(v153, &qword_27EEA5D90, &qword_2487333C0);

    MEMORY[0x24C1D71A0](v104);
    if (*((*(v0 + 584) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 584) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v105 = *((*(v158 + 584) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_248731260();
    }

    sub_2487312A0();

    v7 = *v144;
    goto LABEL_68;
  }

  v7 = 0;
  while (1)
  {
    v39 = *(v0 + 632);
    if ((v39 & 0xC000000000000001) != 0)
    {
      v40 = MEMORY[0x24C1D7600](v7);
      goto LABEL_25;
    }

    if (v7 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v40 = *(v39 + 8 * v7 + 32);
LABEL_25:
    v3 = v40;
    v10 = __OFADD__(v7, 1);
    v41 = v7 + 1;
    if (v10)
    {
      goto LABEL_79;
    }

    v152 = v41;
    (*((*MEMORY[0x277D85000] & *v40) + 0x70))(v30);
    v42 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation25IntraTurnFeatureExtractor_features;
    swift_beginAccess();
    v148 = v42;
    v150 = v3;
    v43 = *(v3 + v42);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v159 = v35;
    v45 = v43 + 64;
    v46 = -1 << *(v43 + 32);
    if (-v46 < 64)
    {
      v47 = ~(-1 << -v46);
    }

    else
    {
      v47 = -1;
    }

    v48 = v47 & *(v43 + 64);
    v154 = (63 - v46) >> 6;
    v156 = v43;

    v49 = 0;
    if (!v48)
    {
LABEL_33:
      if (v154 <= v49 + 1)
      {
        v52 = v49 + 1;
      }

      else
      {
        v52 = v154;
      }

      v53 = v52 - 1;
      while (1)
      {
        v51 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          break;
        }

        if (v51 >= v154)
        {
          v48 = 0;
          *(v0 + 128) = 0u;
          *(v0 + 144) = 0u;
          v49 = v53;
          *(v0 + 112) = 0u;
          goto LABEL_42;
        }

        v48 = *(v45 + 8 * v51);
        ++v49;
        if (v48)
        {
          v49 = v51;
          goto LABEL_41;
        }
      }

      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    while (1)
    {
      v51 = v49;
LABEL_41:
      v54 = __clz(__rbit64(v48));
      v48 &= v48 - 1;
      v55 = v54 | (v51 << 6);
      v56 = (*(v156 + 48) + 16 * v55);
      v57 = *v56;
      v58 = v56[1];
      sub_2486C5B68(*(v156 + 56) + 32 * v55, v0 + 224);
      *(v0 + 112) = v57;
      *(v0 + 120) = v58;
      sub_2486C79A0((v0 + 224), (v0 + 128));

LABEL_42:
      v59 = *(v0 + 128);
      *(v0 + 64) = *(v0 + 112);
      *(v0 + 80) = v59;
      *(v0 + 96) = *(v0 + 144);
      v60 = *(v0 + 72);
      if (!v60)
      {
        break;
      }

      v61 = *(v0 + 64);
      sub_2486C5B68(v0 + 80, v0 + 32);
      *(v0 + 16) = v61;
      *(v0 + 24) = v60;

      sub_2486C7940(v0 + 64, &qword_27EEA6328, &qword_248734838);
      v62 = *(v0 + 24);
      if (!v62)
      {
        goto LABEL_20;
      }

      v63 = *(v0 + 16);
      sub_2486C79A0((v0 + 32), (v0 + 160));
      v3 = sub_2486C94CC(v63, v62);
      v65 = v35;
      v66 = v35[2];
      v67 = (v64 & 1) == 0;
      v68 = v66 + v67;
      if (__OFADD__(v66, v67))
      {
        goto LABEL_77;
      }

      v69 = v64;
      if (v65[3] >= v68)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v64 & 1) == 0)
          {
            goto LABEL_51;
          }
        }

        else
        {
          sub_2486E62F4();
          if ((v69 & 1) == 0)
          {
            goto LABEL_51;
          }
        }

LABEL_31:

        v35 = *v159;
        v50 = (*(*v159 + 56) + 32 * v3);
        __swift_destroy_boxed_opaque_existential_0(v50);
        v0 = v158;
        sub_2486C79A0((v158 + 160), v50);
        isUniquelyReferenced_nonNull_native = 1;
        if (!v48)
        {
          goto LABEL_33;
        }
      }

      else
      {
        sub_2486E45C8(v68, isUniquelyReferenced_nonNull_native & 1);
        v70 = *v159;
        v71 = sub_2486C94CC(v63, v62);
        if ((v69 & 1) != (v72 & 1))
        {

          return sub_2487318B0();
        }

        v3 = v71;
        if (v69)
        {
          goto LABEL_31;
        }

LABEL_51:
        v0 = v158;
        v35 = *v159;
        *(*v159 + 8 * (v3 >> 6) + 64) |= 1 << v3;
        v73 = (v35[6] + 16 * v3);
        *v73 = v63;
        v73[1] = v62;
        sub_2486C79A0((v158 + 160), (v35[7] + 32 * v3));
        v74 = v35[2];
        v10 = __OFADD__(v74, 1);
        v75 = v74 + 1;
        if (v10)
        {
          goto LABEL_78;
        }

        v35[2] = v75;
        isUniquelyReferenced_nonNull_native = 1;
        if (!v48)
        {
          goto LABEL_33;
        }
      }
    }

    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 16) = 0u;
LABEL_20:
    v36 = *(v0 + 752);

    v3 = v150;
    v37 = *&v150[v148];
    *&v150[v148] = MEMORY[0x277D84F98];

    v38 = v152 == v36;
    v7 = v152;
    v30 = v147;
    if (v38)
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  v121 = sub_248731790();
  if (!v121)
  {
    goto LABEL_91;
  }

LABEL_85:
  if ((v7 & 0xC000000000000001) != 0)
  {

    v135 = MEMORY[0x24C1D7600](0, v7);

    v124 = *(v135 + 40);
    v123 = *(v135 + 48);

    swift_unknownObjectRelease();
    goto LABEL_92;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v122 = *(v7 + 32);
    v124 = *(v122 + 40);
    v123 = *(v122 + 48);

    goto LABEL_92;
  }

  __break(1u);
  return MEMORY[0x282200308](v121, v119, v120);
}

uint64_t sub_24870CA84()
{
  v1 = v0[98];
  v0[74] = v0[100];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6688, qword_248735530);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_24870DE10, 0, 0);
}

id sub_24870CB38(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24870CC00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5D90, &qword_2487333C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24870CC70(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24870DDFC;

  return v7();
}

uint64_t sub_24870CD58(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_2486D873C;

  return v8();
}

uint64_t sub_24870CE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA66E8, &qword_2487356D8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v26 - v12;
  sub_2486D8A6C(a3, v26 - v12, &qword_27EEA66E8, &qword_2487356D8);
  v14 = sub_248731340();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_2486C7940(v13, &qword_27EEA66E8, &qword_2487356D8);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_248731330();
  (*(v15 + 8))(v13, v14);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v16 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v17 = sub_248731300();
  v19 = v18;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v20 = sub_248731070() + 32;
    v21 = swift_allocObject();
    *(v21 + 16) = a4;
    *(v21 + 24) = a5;

    if (v19 | v17)
    {
      v27[0] = 0;
      v27[1] = 0;
      v22 = v27;
      v27[2] = v17;
      v27[3] = v19;
    }

    else
    {
      v22 = 0;
    }

    v26[1] = 7;
    v26[2] = v22;
    v26[3] = v20;
    v24 = swift_task_create();

    sub_2486C7940(a3, &qword_27EEA66E8, &qword_2487356D8);

    return v24;
  }

LABEL_8:
  sub_2486C7940(a3, &qword_27EEA66E8, &qword_2487356D8);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_24870D13C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24870D234;

  return v7(a1);
}

uint64_t sub_24870D234()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t dispatch thunk of ConversationStream.streamConversations(bookmark:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24870D474;

  return v8(a1);
}

uint64_t sub_24870D474(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of ConversationStream.streamFeaturizedConversations(bookmark:extractors:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x58);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24870DE00;

  return v10(a1, a2);
}

uint64_t dispatch thunk of ConversationStreamAIMLIS.streamConversationsWithUtterance(bookmark:extractors:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x68);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24870DE00;

  return v10(a1, a2);
}

uint64_t sub_24870D810()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24870DDFC;

  return sub_248709B94(v2, v3, v4);
}

uint64_t sub_24870D8C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24870DDFC;

  return sub_24870CC70(v2, v3, v5);
}

uint64_t sub_24870D984(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24870DDFC;

  return sub_24870CD58(a1, v4, v5, v7);
}

uint64_t sub_24870DA50(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24870DDFC;

  return sub_24870D13C(a1, v5);
}

uint64_t sub_24870DB08(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2486D873C;

  return sub_24870D13C(a1, v5);
}

uint64_t sub_24870DBC0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24870DDFC;

  return sub_248706B48(v2, v3, v4);
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24870DCBC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2486D873C;

  return sub_24870566C(v2, v3);
}

uint64_t objectdestroy_34Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24870DDB0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t BiomeSQLResult.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_24870DE78()
{
  v1 = [*(v0 + 16) columns];
  v2 = sub_248731240();

  return v2;
}

uint64_t sub_24870DEC8()
{
  v1 = [*(v0 + 16) row];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_248730F10();

  return v3;
}

id sub_24870DF38()
{
  v1 = [*(v0 + 16) error];

  return v1;
}

uint64_t BiomeSQLResult.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t AsyncBookmarkingSignalReader.conversationStreamsBookmarked(startBookmark:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v63 = a3;
  v61 = a4;
  v62 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v56 - v8;
  v10 = sub_248730970();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v10, v13);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v56 - v16;
  if (qword_28150EE60 != -1)
  {
    swift_once();
  }

  v18 = sub_248730DF0();
  v19 = __swift_project_value_buffer(v18, qword_28150F088);
  v20 = a1;
  v21 = sub_248730DD0();
  v22 = sub_2487313B0();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v59 = v17;
    v60 = v9;
    v24 = v23;
    v57 = swift_slowAlloc();
    v64 = v57;
    *v24 = 136315138;
    v25 = v11;
    v26 = [v20 debugDescription];
    v27 = sub_248730FF0();
    v58 = v19;
    v28 = v27;
    v29 = v10;
    v30 = v20;
    v32 = v31;

    v11 = v25;
    v33 = sub_2486D3010(v28, v32, &v64);
    v20 = v30;
    v10 = v29;

    *(v24 + 4) = v33;
    _os_log_impl(&dword_2486BF000, v21, v22, "Apply bookmark %s to PPL stream", v24, 0xCu);
    v34 = v57;
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x24C1D8100](v34, -1, -1);
    v35 = v24;
    v17 = v59;
    v9 = v60;
    MEMORY[0x24C1D8100](v35, -1, -1);
  }

  sub_248730960();
  sub_2486F85E4(0);
  if (v36)
  {
    v37 = sub_248730DD0();
    v38 = sub_2487313B0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_2486BF000, v37, v38, "No PLL timestamp found, creating a new bookmark for PLL", v39, 2u);
      MEMORY[0x24C1D8100](v39, -1, -1);
    }

    (*(v11 + 16))(v9, v17, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
    v40 = sub_2486F9978(0, v9);
    sub_2486E1660(v9);
    if (!v40)
    {
      v41 = sub_248730DD0();
      v42 = sub_2487313D0();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_2486BF000, v41, v42, "Failed to update bookmark for conversation stream.", v43, 2u);
        MEMORY[0x24C1D8100](v43, -1, -1);
      }
    }

    sub_248730CC0();
    v44 = *&v20[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name];
    v45 = *&v20[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name + 8];

    v46 = sub_248730CB0();
  }

  else
  {
    sub_248730CC0();
    v47 = v17;
    v48 = *&v20[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name];
    v49 = *&v20[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name + 8];

    sub_2487308F0();
    v17 = v47;
    v46 = sub_248730CA0();
    (*(v11 + 16))(v9, v47, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
    v50 = sub_2486F9978(0, v9);
    sub_2486E1660(v9);
    if (!v50)
    {
      v51 = sub_248730DD0();
      v52 = sub_2487313D0();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_2486BF000, v51, v52, "Failed to update bookmark for conversation stream.", v53, 2u);
        v54 = v53;
        v17 = v47;
        MEMORY[0x24C1D8100](v54, -1, -1);
      }
    }
  }

  sub_248730D10();

  return (*(v11 + 8))(v17, v10);
}

id BMNotificationStream.publisherWithStreamsBookmark(startBookmark:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = v50 - v7;
  v9 = sub_248730970();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248730960();
  if (qword_28150EE60 != -1)
  {
    swift_once();
  }

  v15 = sub_248730DF0();
  v16 = __swift_project_value_buffer(v15, qword_28150F088);
  v17 = a1;
  v18 = sub_248730DD0();
  v19 = sub_2487313B0();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v52 = v14;
    v21 = v20;
    v22 = swift_slowAlloc();
    v50[1] = v16;
    v23 = v22;
    v54[0] = v22;
    *v21 = 136315138;
    v24 = [v17 debugDescription];
    v53 = v2;
    v51 = v9;
    v25 = v24;
    v26 = v8;
    v27 = v10;
    v28 = sub_248730FF0();
    v30 = v29;

    v31 = v28;
    v10 = v27;
    v8 = v26;
    v32 = sub_2486D3010(v31, v30, v54);

    *(v21 + 4) = v32;
    v9 = v51;
    v2 = v53;
    _os_log_impl(&dword_2486BF000, v18, v19, "Apply bookmark %s to NotificationStream", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x24C1D8100](v23, -1, -1);
    v33 = v21;
    v14 = v52;
    MEMORY[0x24C1D8100](v33, -1, -1);
  }

  v34 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals;
  swift_beginAccess();
  v35 = *&v17[v34];
  if (*(v35 + 16))
  {

    v36 = sub_2486C94CC(0xD000000000000011, 0x800000024873C170);
    if (v37)
    {
      v38 = *(*(v35 + 56) + 8 * v36);

      (*(v10 + 16))(v8, v14, v9);
      (*(v10 + 56))(v8, 0, 1, v9);
      v39 = sub_2486F96D8(11, v8);
      sub_2486E1660(v8);
      if (!v39)
      {
        v40 = sub_248730DD0();
        v41 = sub_2487313D0();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&dword_2486BF000, v40, v41, "Failed to update bookmark for notification stream.", v42, 2u);
          MEMORY[0x24C1D8100](v42, -1, -1);
        }
      }

      v43 = [v2 publisherFromStartTime_];
      goto LABEL_18;
    }
  }

  (*(v10 + 16))(v8, v14, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v44 = sub_2486F96D8(11, v8);
  sub_2486E1660(v8);
  if (!v44)
  {
    v45 = sub_248730DD0();
    v46 = sub_2487313D0();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_2486BF000, v45, v46, "Failed to update bookmark for notification stream.", v47, 2u);
      MEMORY[0x24C1D8100](v47, -1, -1);
    }
  }

  v43 = [v2 publisherWithStartTime:0 endTime:0 maxEvents:0 reversed:0];
LABEL_18:
  v48 = v43;
  (*(v10 + 8))(v14, v9);
  return v48;
}

id MessagesReadFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MessagesReadFeatureExtractor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessagesReadFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_24870EC20(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventBody;
  swift_beginAccess();
  v3 = *(a1 + v2);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = v3;
    v7 = [v5 idsHandle];
    if (v7)
    {
      v8 = v7;
      v9 = sub_248730FF0();
      v11 = v10;

      v12 = MEMORY[0x277D837D0];
    }

    else
    {
      v9 = 0;
      v11 = 0;
      v12 = 0;
      v13[2] = 0;
    }

    v13[0] = v9;
    v13[1] = v11;
    v13[3] = v12;
    swift_beginAccess();
    sub_2486C6800(v13, 0xD000000000000016, 0x80000002487397E0);
    swift_endAccess();
  }
}

id MessagesReadFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessagesReadFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *static ConversationTurnFactory.create(rawTurn:)(uint64_t a1)
{
  sub_2486C5B68(a1, v7);
  sub_248730D50();
  if (swift_dynamicCast())
  {
    v2 = objc_allocWithZone(type metadata accessor for ConversationTurnPLL(0));
    return ConversationTurnPLL.init(turn:)(v6);
  }

  else
  {
    sub_2486C5B68(a1, v7);
    sub_248730C70();
    if (swift_dynamicCast())
    {
      v4 = objc_allocWithZone(type metadata accessor for ConversationTurnAIMLIS(0));
      v5 = sub_248713D24(v6);

      return v5;
    }

    else
    {
      return 0;
    }
  }
}

id Conversation.__allocating_init(turns:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation12Conversation_turns] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

unint64_t ConversationTurnType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_24870EEC8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t ConversationTurnAIMLIS.__allocating_init(turn:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_248713D24(a1);

  return v4;
}

id ConversationTurnFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationTurnFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_24870F2FC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t sub_24870F3B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
  swift_beginAccess();
  v5 = sub_2487309B0();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_24870F43C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_2487309B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4);
  v10 = *a2;
  v11 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
  swift_beginAccess();
  (*(v5 + 40))(v10 + v11, v9, v4);
  return swift_endAccess();
}

uint64_t sub_24870F554@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
  swift_beginAccess();
  v4 = sub_2487309B0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_24870F5DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
  swift_beginAccess();
  v4 = sub_2487309B0();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_24870F6CC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5D90, &qword_2487333C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v12 - v7;
  sub_2486C7B38(a1, &v12 - v7);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_clockID;
  swift_beginAccess();
  sub_24870CC00(v8, v9 + v10);
  return swift_endAccess();
}

uint64_t sub_24870F78C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_clockID;
  swift_beginAccess();
  return sub_2486C7B38(v1 + v3, a1);
}

uint64_t sub_24870F7E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_clockID;
  swift_beginAccess();
  sub_24870CC00(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_24870F934(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_24870F9F0()
{
  v1 = (v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_timestamp);
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_24870FA3C(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_timestamp;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_24870FAFC()
{
  v1 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24870FB40(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id ConversationTurn.init()()
{
  v1 = sub_2487309B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 56))(&v0[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_clockID], 1, 1, v1);
  v7 = &v0[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_domain];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v0[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_domainSource];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v0[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_timestamp];
  *v9 = 0;
  v9[8] = 1;
  v10 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_asrEvents] = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_flowEvents] = v10;
  *&v0[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_dimEvents] = v10;
  *&v0[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_ueiEvents] = v10;
  *&v0[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_mhEvents] = v10;
  *&v0[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_orchEvents] = v10;
  *&v0[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_ttsEvents] = v10;
  sub_2487309A0();
  (*(v2 + 32))(&v0[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID], v6, v1);
  *&v0[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType] = 2;
  v11 = type metadata accessor for ConversationTurn(0);
  v13.receiver = v0;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_24870FDD8()
{
  v1 = v0;
  v2 = sub_2487309B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = 0;
  v49 = 0xE000000000000000;
  sub_248731650();
  v50 = v48;
  v51 = v49;
  MEMORY[0x24C1D70A0](0xD000000000000012, 0x800000024873C910);
  v8 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
  swift_beginAccess();
  v47[22] = *(v1 + v8);
  sub_248731710();
  MEMORY[0x24C1D70A0](0x727554202020200ALL, 0xEE00203A4449206ELL);
  v9 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
  swift_beginAccess();
  (*(v3 + 16))(v7, v1 + v9, v2);
  sub_24870111C();
  v10 = sub_248731850();
  MEMORY[0x24C1D70A0](v10);

  (*(v3 + 8))(v7, v2);
  MEMORY[0x24C1D70A0](0xD00000000000001BLL, 0x800000024873C930);
  v11 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_asrEvents;
  swift_beginAccess();
  v12 = *(v1 + v11);
  if (v12 >> 62)
  {
    if (v12 < 0)
    {
      v40 = *(v1 + v11);
    }

    v13 = sub_248731790();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v47[16] = v13;
  v14 = sub_248731850();
  MEMORY[0x24C1D70A0](v14);

  MEMORY[0x24C1D70A0](0xD00000000000001CLL, 0x800000024873C950);
  v15 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_flowEvents;
  swift_beginAccess();
  v16 = *(v1 + v15);
  if (v16 >> 62)
  {
    if (v16 < 0)
    {
      v41 = *(v1 + v15);
    }

    v17 = sub_248731790();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v47[13] = v17;
  v18 = sub_248731850();
  MEMORY[0x24C1D70A0](v18);

  MEMORY[0x24C1D70A0](0xD00000000000001BLL, 0x800000024873C970);
  v19 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_dimEvents;
  swift_beginAccess();
  v20 = *(v1 + v19);
  if (v20 >> 62)
  {
    if (v20 < 0)
    {
      v42 = *(v1 + v19);
    }

    v21 = sub_248731790();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v47[10] = v21;
  v22 = sub_248731850();
  MEMORY[0x24C1D70A0](v22);

  MEMORY[0x24C1D70A0](0xD00000000000001BLL, 0x800000024873C990);
  v23 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_ueiEvents;
  swift_beginAccess();
  v24 = *(v1 + v23);
  if (v24 >> 62)
  {
    if (v24 < 0)
    {
      v43 = *(v1 + v23);
    }

    v25 = sub_248731790();
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v47[7] = v25;
  v26 = sub_248731850();
  MEMORY[0x24C1D70A0](v26);

  MEMORY[0x24C1D70A0](0xD00000000000001ALL, 0x800000024873C9B0);
  v27 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_mhEvents;
  swift_beginAccess();
  v28 = *(v1 + v27);
  if (v28 >> 62)
  {
    if (v28 < 0)
    {
      v44 = *(v1 + v27);
    }

    v29 = sub_248731790();
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v47[4] = v29;
  v30 = sub_248731850();
  MEMORY[0x24C1D70A0](v30);

  MEMORY[0x24C1D70A0](0xD00000000000001CLL, 0x800000024873C9D0);
  v31 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_orchEvents;
  swift_beginAccess();
  v32 = *(v1 + v31);
  if (v32 >> 62)
  {
    if (v32 < 0)
    {
      v45 = *(v1 + v31);
    }

    v33 = sub_248731790();
  }

  else
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v47[1] = v33;
  v34 = sub_248731850();
  MEMORY[0x24C1D70A0](v34);

  MEMORY[0x24C1D70A0](0xD00000000000001BLL, 0x800000024873C9F0);
  v35 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_ttsEvents;
  swift_beginAccess();
  v36 = *(v1 + v35);
  if (v36 >> 62)
  {
    if (v36 < 0)
    {
      v46 = *(v1 + v35);
    }

    v37 = sub_248731790();
  }

  else
  {
    v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v47[0] = v37;
  v38 = sub_248731850();
  MEMORY[0x24C1D70A0](v38);

  return v50;
}

id sub_2487103E4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

char *ConversationTurnPLL.init(turn:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v29[-v6];
  v8 = sub_2487309B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v29[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v1[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19ConversationTurnPLL_pllTurn] = a1;
  v14 = type metadata accessor for ConversationTurnPLL(0);
  v30.receiver = v1;
  v30.super_class = v14;

  v15 = objc_msgSendSuper2(&v30, sel_init);
  v16 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19ConversationTurnPLL_pllTurn;
  v17 = *&v15[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19ConversationTurnPLL_pllTurn];
  v18 = v15;

  sub_248730D40();

  v19 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
  swift_beginAccess();
  (*(v9 + 40))(&v18[v19], v13, v8);
  swift_endAccess();
  v20 = *&v15[v16];

  sub_248730D20();

  v21 = sub_248730970();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v7, 1, v21);
  if (v23 == 1)
  {
    sub_2486C7940(v7, &qword_27EEA6240, &unk_248733390);
    v24 = 0;
  }

  else
  {
    sub_248730900();
    v24 = v25;
    (*(v22 + 8))(v7, v21);
  }

  v26 = &v18[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_timestamp];
  swift_beginAccess();
  *v26 = v24;
  v26[8] = v23 == 1;
  v27 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
  swift_beginAccess();
  *&v18[v27] = 0;
  sub_24871082C();

  return v18;
}

unint64_t sub_24871082C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19ConversationTurnPLL_pllTurn);
  result = sub_248730D30();
  v4 = result;
  if (result >> 62)
  {
    result = sub_248731790();
    v5 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_28:
  }

  v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_28;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = 0;
    while (1)
    {
      v7 = (v4 & 0xC000000000000001) != 0 ? MEMORY[0x24C1D7600](v6, v4) : *(v4 + 8 * v6 + 32);
      v8 = v7;
      v9 = sub_248710A78();
      if (v9)
      {
        break;
      }

      v12 = sub_24871104C();
      if (v12)
      {
        v10 = v12;
        v11 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_flowEvents;
        goto LABEL_22;
      }

      v13 = sub_248711620();
      if (v13)
      {
        v10 = v13;
        v11 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_dimEvents;
        goto LABEL_22;
      }

      v14 = sub_248711BF4();
      if (v14)
      {
        v10 = v14;
        v11 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_ueiEvents;
        goto LABEL_22;
      }

      v15 = sub_2487121C8();
      if (v15)
      {
        v10 = v15;
        v11 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_mhEvents;
        goto LABEL_22;
      }

      v16 = sub_24871279C();
      if (v16)
      {
        v10 = v16;
        v11 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_orchEvents;
        goto LABEL_22;
      }

      v17 = sub_248712D70();
      if (v17)
      {
        v10 = v17;
        v11 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_ttsEvents;
        goto LABEL_22;
      }

LABEL_25:
      ++v6;

      if (v5 == v6)
      {
      }
    }

    v10 = v9;
    v11 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_asrEvents;
LABEL_22:
    swift_beginAccess();
    v18 = v10;
    MEMORY[0x24C1D71A0]();
    if (*((*(v1 + v11) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v11) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v19 = *((*(v1 + v11) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_248731260();
    }

    sub_2487312A0();
    swift_endAccess();

    v8 = v18;
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t sub_248710A78()
{
  v1 = sub_24871DC14();
  v2 = [v0 anyEventType];
  if (v2 <= 13)
  {
    if (v2 > 6)
    {
      switch(v2)
      {
        case 7:
          if (v1 && (v34 = [v1 payload]) != 0)
          {
            v35 = v34;
            v36 = sub_2487308C0();
            v38 = v37;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v36, v38);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D5A9A8];
          break;
        case 9:
          if (v1 && (v54 = [v1 payload]) != 0)
          {
            v55 = v54;
            v56 = sub_2487308C0();
            v58 = v57;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v56, v58);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D5A9D0];
          break;
        case 13:
          if (v1 && (v14 = [v1 payload]) != 0)
          {
            v15 = v14;
            v16 = sub_2487308C0();
            v18 = v17;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v16, v18);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D57500];
          break;
        default:
          goto LABEL_52;
      }
    }

    else
    {
      switch(v2)
      {
        case 1:
          if (v1 && (v24 = [v1 payload]) != 0)
          {
            v25 = v24;
            v26 = sub_2487308C0();
            v28 = v27;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v26, v28);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D5A800];
          break;
        case 4:
          if (v1 && (v44 = [v1 payload]) != 0)
          {
            v45 = v44;
            v46 = sub_2487308C0();
            v48 = v47;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v46, v48);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D585A8];
          break;
        case 6:
          if (v1 && (v3 = [v1 payload]) != 0)
          {
            v4 = v3;
            v5 = sub_2487308C0();
            v7 = v6;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v5, v7);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D5A978];
          break;
        default:
LABEL_52:

          return 0;
      }
    }

LABEL_75:
    v66 = [objc_allocWithZone(v65) initWithData_];

    if (v66)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  if (v2 <= 18)
  {
    switch(v2)
    {
      case 14:
        if (v1 && (v29 = [v1 payload]) != 0)
        {
          v30 = v29;
          v31 = sub_2487308C0();
          v33 = v32;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v31, v33);
        }

        else
        {
          v8 = 0;
        }

        v65 = MEMORY[0x277D56C30];
        break;
      case 17:
        if (v1 && (v49 = [v1 payload]) != 0)
        {
          v50 = v49;
          v51 = sub_2487308C0();
          v53 = v52;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v51, v53);
        }

        else
        {
          v8 = 0;
        }

        v65 = MEMORY[0x277D57038];
        break;
      case 18:
        if (v1 && (v9 = [v1 payload]) != 0)
        {
          v10 = v9;
          v11 = sub_2487308C0();
          v13 = v12;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v11, v13);
        }

        else
        {
          v8 = 0;
        }

        v65 = MEMORY[0x277D590F0];
        break;
      default:
        goto LABEL_52;
    }

    goto LABEL_75;
  }

  if (v2 == 19)
  {
    if (v1 && (v39 = [v1 payload]) != 0)
    {
      v40 = v39;
      v41 = sub_2487308C0();
      v43 = v42;

      v8 = sub_2487308A0();
      sub_2486CC7FC(v41, v43);
    }

    else
    {
      v8 = 0;
    }

    v65 = MEMORY[0x277D59610];
    goto LABEL_75;
  }

  if (v2 != 20)
  {
    if (v2 != 23)
    {
      goto LABEL_52;
    }

    if (v1 && (v19 = [v1 payload]) != 0)
    {
      v20 = v19;
      v21 = sub_2487308C0();
      v23 = v22;

      v8 = sub_2487308A0();
      sub_2486CC7FC(v21, v23);
    }

    else
    {
      v8 = 0;
    }

    v65 = MEMORY[0x277D587F0];
    goto LABEL_75;
  }

  if (v1 && (v59 = [v1 payload]) != 0)
  {
    v60 = v59;
    v61 = sub_2487308C0();
    v63 = v62;

    v64 = sub_2487308A0();
    sub_2486CC7FC(v61, v63);
  }

  else
  {
    v64 = 0;
  }

  v68 = [objc_allocWithZone(MEMORY[0x277D56858]) initWithData_];

  return v68;
}

uint64_t sub_24871104C()
{
  v1 = sub_24871DC14();
  v2 = [v0 anyEventType];
  if (v2 > 13)
  {
    if (v2 > 18)
    {
      switch(v2)
      {
        case 19:
          if (v1 && (v40 = [v1 payload]) != 0)
          {
            v41 = v40;
            v42 = sub_2487308C0();
            v44 = v43;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v42, v44);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D59610];
          break;
        case 20:
          if (v1 && (v60 = [v1 payload]) != 0)
          {
            v61 = v60;
            v62 = sub_2487308C0();
            v64 = v63;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v62, v64);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D56858];
          break;
        case 23:
          if (v1 && (v20 = [v1 payload]) != 0)
          {
            v21 = v20;
            v22 = sub_2487308C0();
            v24 = v23;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v22, v24);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D587F0];
          break;
        default:
          goto LABEL_52;
      }
    }

    else
    {
      switch(v2)
      {
        case 14:
          if (v1 && (v30 = [v1 payload]) != 0)
          {
            v31 = v30;
            v32 = sub_2487308C0();
            v34 = v33;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v32, v34);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D56C30];
          break;
        case 17:
          if (v1 && (v50 = [v1 payload]) != 0)
          {
            v51 = v50;
            v52 = sub_2487308C0();
            v54 = v53;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v52, v54);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D57038];
          break;
        case 18:
          if (v1 && (v9 = [v1 payload]) != 0)
          {
            v10 = v9;
            v11 = sub_2487308C0();
            v13 = v12;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v11, v13);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D590F0];
          break;
        default:
          goto LABEL_52;
      }
    }

    goto LABEL_77;
  }

  if (v2 <= 6)
  {
    switch(v2)
    {
      case 1:
        if (v1 && (v25 = [v1 payload]) != 0)
        {
          v26 = v25;
          v27 = sub_2487308C0();
          v29 = v28;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v27, v29);
        }

        else
        {
          v8 = 0;
        }

        v65 = MEMORY[0x277D5A800];
        break;
      case 4:
        if (v1 && (v45 = [v1 payload]) != 0)
        {
          v46 = v45;
          v47 = sub_2487308C0();
          v49 = v48;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v47, v49);
        }

        else
        {
          v8 = 0;
        }

        v65 = MEMORY[0x277D585A8];
        break;
      case 6:
        if (v1 && (v3 = [v1 payload]) != 0)
        {
          v4 = v3;
          v5 = sub_2487308C0();
          v7 = v6;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v5, v7);
        }

        else
        {
          v8 = 0;
        }

        v65 = MEMORY[0x277D5A978];
        break;
      default:
LABEL_52:

        return 0;
    }

LABEL_77:
    v68 = [objc_allocWithZone(v65) initWithData_];

    if (v68)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  if (v2 == 7)
  {
    if (v1 && (v35 = [v1 payload]) != 0)
    {
      v36 = v35;
      v37 = sub_2487308C0();
      v39 = v38;

      v8 = sub_2487308A0();
      sub_2486CC7FC(v37, v39);
    }

    else
    {
      v8 = 0;
    }

    v65 = MEMORY[0x277D5A9A8];
    goto LABEL_77;
  }

  if (v2 == 9)
  {
    if (v1 && (v55 = [v1 payload]) != 0)
    {
      v56 = v55;
      v57 = sub_2487308C0();
      v59 = v58;

      v8 = sub_2487308A0();
      sub_2486CC7FC(v57, v59);
    }

    else
    {
      v8 = 0;
    }

    v65 = MEMORY[0x277D5A9D0];
    goto LABEL_77;
  }

  if (v2 != 13)
  {
    goto LABEL_52;
  }

  if (v1 && (v14 = [v1 payload]) != 0)
  {
    v15 = v14;
    v16 = sub_2487308C0();
    v18 = v17;

    v19 = sub_2487308A0();
    sub_2486CC7FC(v16, v18);
  }

  else
  {
    v19 = 0;
  }

  v66 = [objc_allocWithZone(MEMORY[0x277D57500]) initWithData_];

  return v66;
}

uint64_t sub_248711620()
{
  v1 = sub_24871DC14();
  v2 = [v0 anyEventType];
  if (v2 <= 13)
  {
    if (v2 > 6)
    {
      switch(v2)
      {
        case 7:
          if (v1 && (v34 = [v1 payload]) != 0)
          {
            v35 = v34;
            v36 = sub_2487308C0();
            v38 = v37;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v36, v38);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D5A9A8];
          break;
        case 9:
          if (v1 && (v55 = [v1 payload]) != 0)
          {
            v56 = v55;
            v57 = sub_2487308C0();
            v59 = v58;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v57, v59);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D5A9D0];
          break;
        case 13:
          if (v1 && (v14 = [v1 payload]) != 0)
          {
            v15 = v14;
            v16 = sub_2487308C0();
            v18 = v17;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v16, v18);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D57500];
          break;
        default:
          goto LABEL_52;
      }
    }

    else
    {
      switch(v2)
      {
        case 1:
          if (v1 && (v24 = [v1 payload]) != 0)
          {
            v25 = v24;
            v26 = sub_2487308C0();
            v28 = v27;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v26, v28);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D5A800];
          break;
        case 4:
          if (v1 && (v44 = [v1 payload]) != 0)
          {
            v45 = v44;
            v46 = sub_2487308C0();
            v48 = v47;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v46, v48);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D585A8];
          break;
        case 6:
          if (v1 && (v3 = [v1 payload]) != 0)
          {
            v4 = v3;
            v5 = sub_2487308C0();
            v7 = v6;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v5, v7);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D5A978];
          break;
        default:
LABEL_52:

          return 0;
      }
    }

LABEL_77:
    v68 = [objc_allocWithZone(v65) initWithData_];

    if (v68)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  if (v2 > 18)
  {
    switch(v2)
    {
      case 19:
        if (v1 && (v39 = [v1 payload]) != 0)
        {
          v40 = v39;
          v41 = sub_2487308C0();
          v43 = v42;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v41, v43);
        }

        else
        {
          v8 = 0;
        }

        v65 = MEMORY[0x277D59610];
        break;
      case 20:
        if (v1 && (v60 = [v1 payload]) != 0)
        {
          v61 = v60;
          v62 = sub_2487308C0();
          v64 = v63;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v62, v64);
        }

        else
        {
          v8 = 0;
        }

        v65 = MEMORY[0x277D56858];
        break;
      case 23:
        if (v1 && (v19 = [v1 payload]) != 0)
        {
          v20 = v19;
          v21 = sub_2487308C0();
          v23 = v22;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v21, v23);
        }

        else
        {
          v8 = 0;
        }

        v65 = MEMORY[0x277D587F0];
        break;
      default:
        goto LABEL_52;
    }

    goto LABEL_77;
  }

  if (v2 == 14)
  {
    if (v1 && (v29 = [v1 payload]) != 0)
    {
      v30 = v29;
      v31 = sub_2487308C0();
      v33 = v32;

      v8 = sub_2487308A0();
      sub_2486CC7FC(v31, v33);
    }

    else
    {
      v8 = 0;
    }

    v65 = MEMORY[0x277D56C30];
    goto LABEL_77;
  }

  if (v2 != 17)
  {
    if (v2 != 18)
    {
      goto LABEL_52;
    }

    if (v1 && (v9 = [v1 payload]) != 0)
    {
      v10 = v9;
      v11 = sub_2487308C0();
      v13 = v12;

      v8 = sub_2487308A0();
      sub_2486CC7FC(v11, v13);
    }

    else
    {
      v8 = 0;
    }

    v65 = MEMORY[0x277D590F0];
    goto LABEL_77;
  }

  if (v1 && (v49 = [v1 payload]) != 0)
  {
    v50 = v49;
    v51 = sub_2487308C0();
    v53 = v52;

    v54 = sub_2487308A0();
    sub_2486CC7FC(v51, v53);
  }

  else
  {
    v54 = 0;
  }

  v66 = [objc_allocWithZone(MEMORY[0x277D57038]) initWithData_];

  return v66;
}

uint64_t sub_248711BF4()
{
  v1 = sub_24871DC14();
  v2 = [v0 anyEventType];
  if (v2 > 13)
  {
    if (v2 > 18)
    {
      switch(v2)
      {
        case 19:
          if (v1 && (v40 = [v1 payload]) != 0)
          {
            v41 = v40;
            v42 = sub_2487308C0();
            v44 = v43;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v42, v44);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D59610];
          break;
        case 20:
          if (v1 && (v60 = [v1 payload]) != 0)
          {
            v61 = v60;
            v62 = sub_2487308C0();
            v64 = v63;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v62, v64);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D56858];
          break;
        case 23:
          if (v1 && (v19 = [v1 payload]) != 0)
          {
            v20 = v19;
            v21 = sub_2487308C0();
            v23 = v22;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v21, v23);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D587F0];
          break;
        default:
          goto LABEL_52;
      }
    }

    else
    {
      switch(v2)
      {
        case 14:
          if (v1 && (v30 = [v1 payload]) != 0)
          {
            v31 = v30;
            v32 = sub_2487308C0();
            v34 = v33;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v32, v34);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D56C30];
          break;
        case 17:
          if (v1 && (v50 = [v1 payload]) != 0)
          {
            v51 = v50;
            v52 = sub_2487308C0();
            v54 = v53;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v52, v54);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D57038];
          break;
        case 18:
          if (v1 && (v9 = [v1 payload]) != 0)
          {
            v10 = v9;
            v11 = sub_2487308C0();
            v13 = v12;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v11, v13);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D590F0];
          break;
        default:
          goto LABEL_52;
      }
    }

    goto LABEL_77;
  }

  if (v2 > 6)
  {
    switch(v2)
    {
      case 7:
        if (v1 && (v35 = [v1 payload]) != 0)
        {
          v36 = v35;
          v37 = sub_2487308C0();
          v39 = v38;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v37, v39);
        }

        else
        {
          v8 = 0;
        }

        v65 = MEMORY[0x277D5A9A8];
        break;
      case 9:
        if (v1 && (v55 = [v1 payload]) != 0)
        {
          v56 = v55;
          v57 = sub_2487308C0();
          v59 = v58;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v57, v59);
        }

        else
        {
          v8 = 0;
        }

        v65 = MEMORY[0x277D5A9D0];
        break;
      case 13:
        if (v1 && (v14 = [v1 payload]) != 0)
        {
          v15 = v14;
          v16 = sub_2487308C0();
          v18 = v17;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v16, v18);
        }

        else
        {
          v8 = 0;
        }

        v65 = MEMORY[0x277D57500];
        break;
      default:
        goto LABEL_52;
    }

    goto LABEL_77;
  }

  if (v2 != 1)
  {
    if (v2 != 4)
    {
      if (v2 == 6)
      {
        if (v1 && (v3 = [v1 payload]) != 0)
        {
          v4 = v3;
          v5 = sub_2487308C0();
          v7 = v6;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v5, v7);
        }

        else
        {
          v8 = 0;
        }

        v65 = MEMORY[0x277D5A978];
        goto LABEL_77;
      }

LABEL_52:

      return 0;
    }

    if (v1 && (v45 = [v1 payload]) != 0)
    {
      v46 = v45;
      v47 = sub_2487308C0();
      v49 = v48;

      v8 = sub_2487308A0();
      sub_2486CC7FC(v47, v49);
    }

    else
    {
      v8 = 0;
    }

    v65 = MEMORY[0x277D585A8];
LABEL_77:
    v68 = [objc_allocWithZone(v65) initWithData_];

    if (v68)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  if (v1 && (v24 = [v1 payload]) != 0)
  {
    v25 = v24;
    v26 = sub_2487308C0();
    v28 = v27;

    v29 = sub_2487308A0();
    sub_2486CC7FC(v26, v28);
  }

  else
  {
    v29 = 0;
  }

  v66 = [objc_allocWithZone(MEMORY[0x277D5A800]) initWithData_];

  return v66;
}

uint64_t sub_2487121C8()
{
  v1 = sub_24871DC14();
  v2 = [v0 anyEventType];
  if (v2 <= 13)
  {
    if (v2 > 6)
    {
      switch(v2)
      {
        case 7:
          if (v1 && (v35 = [v1 payload]) != 0)
          {
            v36 = v35;
            v37 = sub_2487308C0();
            v39 = v38;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v37, v39);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D5A9A8];
          break;
        case 9:
          if (v1 && (v55 = [v1 payload]) != 0)
          {
            v56 = v55;
            v57 = sub_2487308C0();
            v59 = v58;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v57, v59);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D5A9D0];
          break;
        case 13:
          if (v1 && (v14 = [v1 payload]) != 0)
          {
            v15 = v14;
            v16 = sub_2487308C0();
            v18 = v17;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v16, v18);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D57500];
          break;
        default:
          goto LABEL_52;
      }
    }

    else
    {
      switch(v2)
      {
        case 1:
          if (v1 && (v25 = [v1 payload]) != 0)
          {
            v26 = v25;
            v27 = sub_2487308C0();
            v29 = v28;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v27, v29);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D5A800];
          break;
        case 4:
          if (v1 && (v45 = [v1 payload]) != 0)
          {
            v46 = v45;
            v47 = sub_2487308C0();
            v49 = v48;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v47, v49);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D585A8];
          break;
        case 6:
          if (v1 && (v3 = [v1 payload]) != 0)
          {
            v4 = v3;
            v5 = sub_2487308C0();
            v7 = v6;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v5, v7);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D5A978];
          break;
        default:
LABEL_52:

          return 0;
      }
    }

LABEL_77:
    v68 = [objc_allocWithZone(v65) initWithData_];

    if (v68)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  if (v2 <= 18)
  {
    switch(v2)
    {
      case 14:
        if (v1 && (v30 = [v1 payload]) != 0)
        {
          v31 = v30;
          v32 = sub_2487308C0();
          v34 = v33;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v32, v34);
        }

        else
        {
          v8 = 0;
        }

        v65 = MEMORY[0x277D56C30];
        break;
      case 17:
        if (v1 && (v50 = [v1 payload]) != 0)
        {
          v51 = v50;
          v52 = sub_2487308C0();
          v54 = v53;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v52, v54);
        }

        else
        {
          v8 = 0;
        }

        v65 = MEMORY[0x277D57038];
        break;
      case 18:
        if (v1 && (v9 = [v1 payload]) != 0)
        {
          v10 = v9;
          v11 = sub_2487308C0();
          v13 = v12;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v11, v13);
        }

        else
        {
          v8 = 0;
        }

        v65 = MEMORY[0x277D590F0];
        break;
      default:
        goto LABEL_52;
    }

    goto LABEL_77;
  }

  if (v2 == 19)
  {
    if (v1 && (v40 = [v1 payload]) != 0)
    {
      v41 = v40;
      v42 = sub_2487308C0();
      v44 = v43;

      v8 = sub_2487308A0();
      sub_2486CC7FC(v42, v44);
    }

    else
    {
      v8 = 0;
    }

    v65 = MEMORY[0x277D59610];
    goto LABEL_77;
  }

  if (v2 == 20)
  {
    if (v1 && (v60 = [v1 payload]) != 0)
    {
      v61 = v60;
      v62 = sub_2487308C0();
      v64 = v63;

      v8 = sub_2487308A0();
      sub_2486CC7FC(v62, v64);
    }

    else
    {
      v8 = 0;
    }

    v65 = MEMORY[0x277D56858];
    goto LABEL_77;
  }

  if (v2 != 23)
  {
    goto LABEL_52;
  }

  if (v1 && (v19 = [v1 payload]) != 0)
  {
    v20 = v19;
    v21 = sub_2487308C0();
    v23 = v22;

    v24 = sub_2487308A0();
    sub_2486CC7FC(v21, v23);
  }

  else
  {
    v24 = 0;
  }

  v66 = [objc_allocWithZone(MEMORY[0x277D587F0]) initWithData_];

  return v66;
}

uint64_t sub_24871279C()
{
  v1 = sub_24871DC14();
  v2 = [v0 anyEventType];
  if (v2 <= 13)
  {
    if (v2 > 6)
    {
      switch(v2)
      {
        case 7:
          if (v1 && (v34 = [v1 payload]) != 0)
          {
            v35 = v34;
            v36 = sub_2487308C0();
            v38 = v37;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v36, v38);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D5A9A8];
          break;
        case 9:
          if (v1 && (v55 = [v1 payload]) != 0)
          {
            v56 = v55;
            v57 = sub_2487308C0();
            v59 = v58;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v57, v59);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D5A9D0];
          break;
        case 13:
          if (v1 && (v14 = [v1 payload]) != 0)
          {
            v15 = v14;
            v16 = sub_2487308C0();
            v18 = v17;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v16, v18);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D57500];
          break;
        default:
          goto LABEL_52;
      }
    }

    else
    {
      switch(v2)
      {
        case 1:
          if (v1 && (v24 = [v1 payload]) != 0)
          {
            v25 = v24;
            v26 = sub_2487308C0();
            v28 = v27;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v26, v28);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D5A800];
          break;
        case 4:
          if (v1 && (v45 = [v1 payload]) != 0)
          {
            v46 = v45;
            v47 = sub_2487308C0();
            v49 = v48;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v47, v49);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D585A8];
          break;
        case 6:
          if (v1 && (v3 = [v1 payload]) != 0)
          {
            v4 = v3;
            v5 = sub_2487308C0();
            v7 = v6;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v5, v7);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D5A978];
          break;
        default:
LABEL_52:

          return 0;
      }
    }

LABEL_77:
    v68 = [objc_allocWithZone(v65) initWithData_];

    if (v68)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  if (v2 <= 18)
  {
    switch(v2)
    {
      case 14:
        if (v1 && (v29 = [v1 payload]) != 0)
        {
          v30 = v29;
          v31 = sub_2487308C0();
          v33 = v32;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v31, v33);
        }

        else
        {
          v8 = 0;
        }

        v65 = MEMORY[0x277D56C30];
        break;
      case 17:
        if (v1 && (v50 = [v1 payload]) != 0)
        {
          v51 = v50;
          v52 = sub_2487308C0();
          v54 = v53;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v52, v54);
        }

        else
        {
          v8 = 0;
        }

        v65 = MEMORY[0x277D57038];
        break;
      case 18:
        if (v1 && (v9 = [v1 payload]) != 0)
        {
          v10 = v9;
          v11 = sub_2487308C0();
          v13 = v12;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v11, v13);
        }

        else
        {
          v8 = 0;
        }

        v65 = MEMORY[0x277D590F0];
        break;
      default:
        goto LABEL_52;
    }

    goto LABEL_77;
  }

  if (v2 != 19)
  {
    if (v2 == 20)
    {
      if (v1 && (v60 = [v1 payload]) != 0)
      {
        v61 = v60;
        v62 = sub_2487308C0();
        v64 = v63;

        v8 = sub_2487308A0();
        sub_2486CC7FC(v62, v64);
      }

      else
      {
        v8 = 0;
      }

      v65 = MEMORY[0x277D56858];
    }

    else
    {
      if (v2 != 23)
      {
        goto LABEL_52;
      }

      if (v1 && (v19 = [v1 payload]) != 0)
      {
        v20 = v19;
        v21 = sub_2487308C0();
        v23 = v22;

        v8 = sub_2487308A0();
        sub_2486CC7FC(v21, v23);
      }

      else
      {
        v8 = 0;
      }

      v65 = MEMORY[0x277D587F0];
    }

    goto LABEL_77;
  }

  if (v1 && (v39 = [v1 payload]) != 0)
  {
    v40 = v39;
    v41 = sub_2487308C0();
    v43 = v42;

    v44 = sub_2487308A0();
    sub_2486CC7FC(v41, v43);
  }

  else
  {
    v44 = 0;
  }

  v66 = [objc_allocWithZone(MEMORY[0x277D59610]) initWithData_];

  return v66;
}

uint64_t sub_248712D70()
{
  v1 = sub_24871DC14();
  v2 = [v0 anyEventType];
  if (v2 > 13)
  {
    if (v2 > 18)
    {
      switch(v2)
      {
        case 19:
          if (v1 && (v39 = [v1 payload]) != 0)
          {
            v40 = v39;
            v41 = sub_2487308C0();
            v43 = v42;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v41, v43);
          }

          else
          {
            v8 = 0;
          }

          v64 = MEMORY[0x277D59610];
          break;
        case 20:
          if (v1 && (v59 = [v1 payload]) != 0)
          {
            v60 = v59;
            v61 = sub_2487308C0();
            v63 = v62;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v61, v63);
          }

          else
          {
            v8 = 0;
          }

          v64 = MEMORY[0x277D56858];
          break;
        case 23:
          if (v1 && (v19 = [v1 payload]) != 0)
          {
            v20 = v19;
            v21 = sub_2487308C0();
            v23 = v22;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v21, v23);
          }

          else
          {
            v8 = 0;
          }

          v64 = MEMORY[0x277D587F0];
          break;
        default:
          goto LABEL_52;
      }
    }

    else
    {
      switch(v2)
      {
        case 14:
          if (v1 && (v29 = [v1 payload]) != 0)
          {
            v30 = v29;
            v31 = sub_2487308C0();
            v33 = v32;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v31, v33);
          }

          else
          {
            v8 = 0;
          }

          v64 = MEMORY[0x277D56C30];
          break;
        case 17:
          if (v1 && (v49 = [v1 payload]) != 0)
          {
            v50 = v49;
            v51 = sub_2487308C0();
            v53 = v52;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v51, v53);
          }

          else
          {
            v8 = 0;
          }

          v64 = MEMORY[0x277D57038];
          break;
        case 18:
          if (v1 && (v9 = [v1 payload]) != 0)
          {
            v10 = v9;
            v11 = sub_2487308C0();
            v13 = v12;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v11, v13);
          }

          else
          {
            v8 = 0;
          }

          v64 = MEMORY[0x277D590F0];
          break;
        default:
          goto LABEL_52;
      }
    }
  }

  else if (v2 > 6)
  {
    switch(v2)
    {
      case 7:
        if (v1 && (v34 = [v1 payload]) != 0)
        {
          v35 = v34;
          v36 = sub_2487308C0();
          v38 = v37;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v36, v38);
        }

        else
        {
          v8 = 0;
        }

        v64 = MEMORY[0x277D5A9A8];
        break;
      case 9:
        if (v1 && (v54 = [v1 payload]) != 0)
        {
          v55 = v54;
          v56 = sub_2487308C0();
          v58 = v57;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v56, v58);
        }

        else
        {
          v8 = 0;
        }

        v64 = MEMORY[0x277D5A9D0];
        break;
      case 13:
        if (v1 && (v14 = [v1 payload]) != 0)
        {
          v15 = v14;
          v16 = sub_2487308C0();
          v18 = v17;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v16, v18);
        }

        else
        {
          v8 = 0;
        }

        v64 = MEMORY[0x277D57500];
        break;
      default:
        goto LABEL_52;
    }
  }

  else
  {
    switch(v2)
    {
      case 1:
        if (v1 && (v24 = [v1 payload]) != 0)
        {
          v25 = v24;
          v26 = sub_2487308C0();
          v28 = v27;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v26, v28);
        }

        else
        {
          v8 = 0;
        }

        v64 = MEMORY[0x277D5A800];
        break;
      case 4:
        if (v1 && (v44 = [v1 payload]) != 0)
        {
          v45 = v44;
          v46 = sub_2487308C0();
          v48 = v47;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v46, v48);
        }

        else
        {
          v8 = 0;
        }

        v64 = MEMORY[0x277D585A8];
        break;
      case 6:
        if (v1 && (v3 = [v1 payload]) != 0)
        {
          v4 = v3;
          v5 = sub_2487308C0();
          v7 = v6;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v5, v7);
        }

        else
        {
          v8 = 0;
        }

        v64 = MEMORY[0x277D5A978];
        break;
      default:
LABEL_52:

        return 0;
    }
  }

  v65 = [objc_allocWithZone(v64) initWithData_];

  if (v65)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t ConversationTurnAIMLIS.init(turn:)(void *a1)
{
  v2 = sub_248713D24(a1);

  return v2;
}

unint64_t sub_2487133FC()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation22ConversationTurnAIMLIS_aimlisTurn);
  result = sub_248730BB0();
  v4 = result;
  if (result >> 62)
  {
    result = sub_248731790();
    v5 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_31:
  }

  v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_31;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1D7600](v6, v4);
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = sub_248730AD0();
      if (v9)
      {
        v10 = v9;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v11 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_asrEvents;
LABEL_19:
          swift_beginAccess();
          v14 = v10;
LABEL_20:
          v15 = v14;
          MEMORY[0x24C1D71A0]();
          if (*((*(v1 + v11) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v11) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v17 = *((*(v1 + v11) & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_248731260();
          }

          sub_2487312A0();
          swift_endAccess();
          goto LABEL_23;
        }
      }

      v12 = sub_248730AD0();
      if (v12)
      {
        v10 = v12;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v11 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_dimEvents;
          goto LABEL_19;
        }
      }

      v13 = sub_248730AD0();
      if (v13)
      {
        v10 = v13;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v11 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_ueiEvents;
          goto LABEL_19;
        }
      }

      v16 = sub_248730AD0();
      if (!v16)
      {
        goto LABEL_24;
      }

      v15 = v16;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v11 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_orchEvents;
        swift_beginAccess();
        v14 = v15;
        goto LABEL_20;
      }

LABEL_23:

      v8 = v15;
LABEL_24:
      ++v6;

      if (v5 == v6)
      {
      }
    }
  }

  __break(1u);
  return result;
}

id Conversation.init(turns:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation12Conversation_turns] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for Conversation();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_24871384C()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation12Conversation_turns);
  v2 = v1 >> 62;
  if (v1 >> 62)
  {
LABEL_28:
    if (sub_248731790())
    {
      result = sub_248731790();
      goto LABEL_3;
    }

    return 1;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    return 1;
  }

LABEL_3:
  v4 = v1 & 0xC000000000000001;
  if (result != 1)
  {
    goto LABEL_8;
  }

  if (v4)
  {
    goto LABEL_34;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(v1 + 32); ; i = MEMORY[0x24C1D7600](0, v1))
    {
      v6 = i;
      v7 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
      swift_beginAccess();
      v8 = *&v6[v7];

      if (v8 != 2)
      {
        return 1;
      }

LABEL_8:
      if (v4)
      {
        break;
      }

      if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v9 = *(v1 + 32);
        goto LABEL_11;
      }

      __break(1u);
LABEL_34:
      ;
    }

    v9 = MEMORY[0x24C1D7600](0, v1);
LABEL_11:
    v10 = v9;
    v11 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
    swift_beginAccess();
    v12 = *&v10[v11];

    if (v2)
    {
      v13 = sub_248731790();
    }

    else
    {
      v13 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (j = 0; ; ++j)
    {
      v2 = v13 == j;
      if (v13 == j)
      {
        break;
      }

      if (v4)
      {
        v15 = MEMORY[0x24C1D7600](j, v1);
      }

      else
      {
        if (j >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v15 = *(v1 + 8 * j + 32);
      }

      v16 = v15;
      if (__OFADD__(j, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v17 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
      swift_beginAccess();
      v18 = *&v16[v17];

      if (v18 == 2 || v18 != v12)
      {
        return v2;
      }
    }

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_248713A34()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation12Conversation_turns);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v11 = *(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation12Conversation_turns);
    }

    v2 = sub_248731790();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0xD000000000000012;
  if (!v2)
  {
    return v3;
  }

  sub_248731650();
  result = MEMORY[0x24C1D70A0](0xD000000000000023, 0x800000024873CA80);
  if ((v1 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x24C1D7600](0, v1);
    goto LABEL_7;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v1 + 32);
LABEL_7:
    v6 = v5;
    v7 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
    swift_beginAccess();
    v8 = *&v6[v7];

    sub_248731710();
    MEMORY[0x24C1D70A0](0xD000000000000026, 0x800000024873CAB0);
    if (v1 >> 62)
    {
      sub_248731790();
    }

    else
    {
      v9 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = sub_248731850();
    MEMORY[0x24C1D70A0](v10);

    return 0;
  }

  __break(1u);
  return result;
}

id sub_248713BF8(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_248730FC0();

  return v5;
}

id Conversation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_248713D24(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5D90, &qword_2487333C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v33[-v6];
  v8 = sub_2487309B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v1[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation22ConversationTurnAIMLIS_aimlisTurn] = a1;
  v14 = type metadata accessor for ConversationTurnAIMLIS(0);
  v34.receiver = v1;
  v34.super_class = v14;
  a1;
  v15 = objc_msgSendSuper2(&v34, sel_init);
  v16 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation22ConversationTurnAIMLIS_aimlisTurn;
  v17 = *&v15[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation22ConversationTurnAIMLIS_aimlisTurn];
  v18 = v15;
  v19 = v17;
  sub_248730C60();

  v20 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
  swift_beginAccess();
  (*(v9 + 40))(&v18[v20], v13, v8);
  swift_endAccess();

  sub_248714D6C();
  v21 = sub_248730B70();
  if (!v21)
  {
    goto LABEL_4;
  }

  v22 = v21;
  result = sub_248730AE0();
  if (result)
  {
    v24 = result;
    sub_248730B10();

    (*(v9 + 56))(v7, 0, 1, v8);
    v25 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_clockID;
    swift_beginAccess();
    sub_24870CC00(v7, &v18[v25]);
    swift_endAccess();
LABEL_4:
    v26 = *&v15[v16];
    v27 = v18;
    v28 = v26;
    sub_248730BD0();
    v30 = v29;

    v31 = &v27[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_timestamp];
    swift_beginAccess();
    *v31 = v30;
    v31[8] = 0;
    v32 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
    swift_beginAccess();
    *&v27[v32] = 1;

    sub_2487133FC();
    return v27;
  }

  __break(1u);
  return result;
}

uint64_t sub_248714048(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2487140A8()
{
  result = qword_27EEA6740;
  if (!qword_27EEA6740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA6740);
  }

  return result;
}

unint64_t sub_248714100()
{
  result = qword_27EEA6748;
  if (!qword_27EEA6748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEA6750, &qword_2487358B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA6748);
  }

  return result;
}

void sub_24871417C()
{
  v0 = sub_2487309B0();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2486CA054();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_248714D6C()
{
  result = qword_27EEA5E68;
  if (!qword_27EEA5E68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EEA5E68);
  }

  return result;
}

uint64_t sub_248714DCC()
{
  sub_248730C20();
  v0 = sub_2486CF4C4(0, &qword_27EEA66D0, 0x277D56858);
  v1 = sub_2486CF428();
  v2 = *(v1 + 52);
  v3 = (*(v1 + 48) + 7) & 0x1FFFFFFF8;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_248733790;
  *(v4 + 32) = sub_2486CF4C4(0, &qword_27EEA66D8, 0x277D569E8);
  *(v4 + 40) = sub_2486CF4C4(0, &qword_27EEA66E0, 0x277D56A38);
  v5 = MEMORY[0x24C1D6B80](v0, v4);

  return v5;
}

uint64_t sub_248714EB4(void *a1)
{
  v1 = [a1 package];
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  v3 = [v1 postItn];

  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = [v3 utterances];
  if (v4)
  {
    v5 = v4;
    sub_2486CF4C4(0, &qword_27EEA6398, 0x277D56AB0);
    v6 = sub_248731240();
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v7 = [v3 phrases];
  if (v7)
  {
    v8 = v7;
    sub_2486CF4C4(0, &qword_27EEA6390, 0x277D56A00);
    i = sub_248731240();

    if (!(v6 >> 62))
    {
      goto LABEL_8;
    }

LABEL_70:
    result = sub_248731790();
    if (result)
    {
      goto LABEL_9;
    }

    goto LABEL_71;
  }

  i = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_70;
  }

LABEL_8:
  result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_71:

    return MEMORY[0x277D84F90];
  }

LABEL_9:
  if ((v6 & 0xC000000000000001) != 0)
  {
    goto LABEL_88;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  v11 = *(v6 + 32);
LABEL_12:
  v12 = v11;

  v13 = [v12 interpretationIndices];
  if (v13)
  {
    v14 = v13;
    sub_2486CF4C4(0, &qword_27EEA6388, 0x277CCABB0);
    v15 = sub_248731240();

    if (!(v15 >> 62))
    {
LABEL_14:
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_15;
    }
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_14;
    }
  }

  v16 = sub_248731790();
LABEL_15:
  v45 = v12;
  v46 = v3;
  v47 = i;
  v48 = v15;
  if (v16)
  {
    v6 = 0;
    v17 = v15 & 0xC000000000000001;
    v55 = i & 0xC000000000000001;
    v56 = v15 & 0xFFFFFFFFFFFFFF8;
    v53 = i & 0xFFFFFFFFFFFFFF8;
    v54 = v15 + 32;
    v52 = i + 32;
    v18 = MEMORY[0x277D84F90];
    v49 = v15 & 0xC000000000000001;
    v50 = v16;
    while (1)
    {
      if (v17)
      {
        v20 = MEMORY[0x24C1D7600](v6, v48);
      }

      else
      {
        if (v6 >= *(v56 + 16))
        {
          goto LABEL_79;
        }

        v20 = *(v54 + 8 * v6);
      }

      v21 = v20;
      v22 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        v11 = MEMORY[0x24C1D7600](0, v6);
        goto LABEL_12;
      }

      if (v55)
      {
        v23 = MEMORY[0x24C1D7600](v6, v47);
      }

      else
      {
        if (v6 >= *(v53 + 16))
        {
          goto LABEL_80;
        }

        v23 = *(v52 + 8 * v6);
      }

      v24 = v23;
      v25 = [v23 interpretations];

      if (v25)
      {
        sub_2486CF4C4(0, &qword_27EEA6378, 0x277D56968);
        v6 = sub_248731240();

        v26 = [v21 integerValue];
        if ((v6 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x24C1D7600](v26, v6);
        }

        else
        {
          if ((v26 & 0x8000000000000000) != 0)
          {
            goto LABEL_83;
          }

          if (v26 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_84;
          }

          v27 = *(v6 + 8 * v26 + 32);
        }

        v28 = v27;

        v29 = v28;
        v30 = [v28 tokens];
        if (v30)
        {
          v31 = v30;
          sub_2486CF4C4(0, &qword_27EEA6380, 0x277D56AA0);
          v6 = sub_248731240();
        }

        else
        {
          v6 = MEMORY[0x277D84F90];
        }

        v25 = v29;
      }

      else
      {
        v6 = MEMORY[0x277D84F90];
      }

      i = v6 >> 62;
      if (v6 >> 62)
      {
        v32 = sub_248731790();
      }

      else
      {
        v32 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v3 = (v18 >> 62);
      if (v18 >> 62)
      {
        v33 = sub_248731790();
      }

      else
      {
        v33 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v59 = v32;
      v34 = __OFADD__(v33, v32);
      v35 = v33 + v32;
      if (v34)
      {
        goto LABEL_81;
      }

      v57 = v21;
      v58 = v22;
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (v3)
        {
          goto LABEL_48;
        }

        v3 = (v18 & 0xFFFFFFFFFFFFFF8);
        if (v35 <= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (v3)
        {
LABEL_48:
          sub_248731790();
          goto LABEL_49;
        }

        v3 = (v18 & 0xFFFFFFFFFFFFFF8);
      }

      v36 = v3[2];
LABEL_49:
      v18 = sub_248731690();
      v3 = (v18 & 0xFFFFFFFFFFFFFF8);
LABEL_50:
      v37 = v3[2];
      v38 = v3[3];
      if (i)
      {
        v39 = sub_248731790();
        if (v39)
        {
LABEL_54:
          if (((v38 >> 1) - v37) < v59)
          {
            goto LABEL_85;
          }

          v51 = v3;
          if (i)
          {
            if (v39 < 1)
            {
              goto LABEL_87;
            }

            sub_24870DDB0(&qword_27EEA6790, &qword_27EEA6788, qword_248735AA8);
            for (i = 0; i != v39; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6788, qword_248735AA8);
              v40 = sub_2486C7838(v60, i, v6);
              v42 = *v41;
              (v40)(v60, 0);
              v3[v37 + 4 + i] = v42;
            }

            v17 = v49;
            v16 = v50;
            v3 = v59;
          }

          else
          {
            i = v6 & 0xFFFFFFFFFFFFFF8;
            sub_2486CF4C4(0, &qword_27EEA6380, 0x277D56AA0);
            v3 = v59;
            swift_arrayInitWithCopy();
          }

          v19 = v58;
          if (v3 > 0)
          {
            v43 = v51[2];
            v34 = __OFADD__(v43, v3);
            v44 = v3 + v43;
            if (v34)
            {
              goto LABEL_86;
            }

            v51[2] = v44;
          }

          goto LABEL_18;
        }
      }

      else
      {
        v39 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v39)
        {
          goto LABEL_54;
        }
      }

      v19 = v58;
      if (v59 > 0)
      {
        goto LABEL_82;
      }

LABEL_18:
      v6 = v19;
      if (v19 == v16)
      {
        goto LABEL_76;
      }
    }
  }

  v18 = MEMORY[0x277D84F90];
LABEL_76:

  return v18;
}

unint64_t sub_24871557C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_asrEvents;
  swift_beginAccess();
  v3 = *(a1 + v2);

  v5 = sub_2486EFD10(v4);

  v6 = *(a1 + v2);

  v8 = sub_2486EFEA0(v7);

  if (v5 >> 62)
  {
    goto LABEL_68;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_248731790())
  {
    v68 = v8 & 0xFFFFFFFFFFFFFF8;
    if (v8 >> 62)
    {
      v10 = sub_248731790();
    }

    else
    {
      v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = 0;
    v59 = v5 & 0xC000000000000001;
    v55 = v5 + 32;
    v56 = v5 & 0xFFFFFFFFFFFFFF8;
    v66 = v8 & 0xC000000000000001;
    v67 = v8 + 32;
    v12 = MEMORY[0x277D84F90];
    v57 = i;
    v58 = v5;
    v63 = v8;
    v64 = v10;
    while (1)
    {
      if (v59)
      {
        v13 = MEMORY[0x24C1D7600](v11, v5);
        v14 = __OFADD__(v11, 1);
        v15 = v11 + 1;
        if (v14)
        {
          goto LABEL_66;
        }
      }

      else
      {
        if (v11 >= *(v56 + 16))
        {
          goto LABEL_67;
        }

        v13 = *(v55 + 8 * v11);
        v14 = __OFADD__(v11, 1);
        v15 = v11 + 1;
        if (v14)
        {
          goto LABEL_66;
        }
      }

      v61 = v15;
      v62 = v12;
      v16 = v13;
      v17 = [v13 package];
      v18 = [v17 postItn];

      v69 = [v18 linkId];
      v60 = v16;
      v19 = sub_248714EB4(v16);
      if (v10)
      {
        break;
      }

LABEL_56:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F80, &qword_248733300);
      sub_24870DDB0(&qword_27EEA6360, &qword_27EEA5F80, &qword_248733300);
      v45 = sub_248730F90();
      v47 = v46;

      v12 = v62;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_2486C44B4(0, *(v62 + 2) + 1, 1, v62);
      }

      v49 = *(v12 + 2);
      v48 = *(v12 + 3);
      v50 = v69;
      if (v49 >= v48 >> 1)
      {
        v12 = sub_2486C44B4((v48 > 1), v49 + 1, 1, v12);
        v50 = v69;
      }

      *(v12 + 2) = v49 + 1;
      v51 = &v12[16 * v49];
      *(v51 + 4) = v45;
      *(v51 + 5) = v47;
      v5 = v58;
      v11 = v61;
      if (v61 == v57)
      {
        goto LABEL_70;
      }
    }

    v5 = 0;
    v65 = v19 & 0xFFFFFFFFFFFFFF8;
    v72 = v19 & 0xC000000000000001;
    v20 = MEMORY[0x277D84F90];
    v21 = v66;
    v71 = v19;
    while (1)
    {
      v22 = v19;
      if (v21)
      {
        v23 = MEMORY[0x24C1D7600](v5, v8);
        v14 = __OFADD__(v5++, 1);
        if (v14)
        {
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }
      }

      else
      {
        if (v5 >= *(v68 + 16))
        {
          goto LABEL_64;
        }

        v23 = *(v67 + 8 * v5);
        v14 = __OFADD__(v5++, 1);
        if (v14)
        {
          goto LABEL_63;
        }
      }

      v70 = v23;
      v24 = [v23 linkId];
      if (!v24)
      {
        break;
      }

      v25 = v24;
      if (v69)
      {
        sub_2486CF4C4(0, &qword_27EEA6370, 0x277D5AC78);
        v26 = v69;
        v27 = sub_248731530();

        if (v27)
        {
          goto LABEL_28;
        }
      }

      else
      {
      }

LABEL_15:

LABEL_16:
      v19 = v22;
      if (v5 == v10)
      {
        goto LABEL_56;
      }
    }

    if (v69)
    {
      goto LABEL_15;
    }

LABEL_28:
    v28 = [v70 tokens];
    if (v28)
    {
      v29 = v28;
      sub_2486CF4C4(0, &qword_27EEA6368, 0x277D56AA8);
      v30 = sub_248731240();

      if (!(v22 >> 62))
      {
LABEL_30:
        v31 = v22;
        v32 = *(v65 + 16);
        if (v32)
        {
          goto LABEL_31;
        }

        goto LABEL_54;
      }
    }

    else
    {
      v30 = 0;
      if (!(v22 >> 62))
      {
        goto LABEL_30;
      }
    }

    v44 = sub_248731790();
    v31 = v22;
    v32 = v44;
    if (!v44)
    {
LABEL_54:

LABEL_55:
      v10 = v64;
      v21 = v66;
      goto LABEL_16;
    }

LABEL_31:
    if (v32 >= 1)
    {
      v33 = 0;
      while (1)
      {
        if (v72)
        {
          v8 = MEMORY[0x24C1D7600](v33, v31);
          if (!v30)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v8 = *(v31 + 8 * v33 + 32);
          if (!v30)
          {
            goto LABEL_42;
          }
        }

        v34 = [v8 linkIndex];
        if ((v30 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x24C1D7600]();
        }

        else
        {
          if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v34)
          {
            __break(1u);
            goto LABEL_63;
          }

          v35 = *(v30 + 32 + 8 * v34);
        }

        v36 = v35;

        v37 = [v36 text];

        if (!v37)
        {
LABEL_42:
          v38 = 0;
          v40 = 0xE000000000000000;
          goto LABEL_43;
        }

        v38 = sub_248730FF0();
        v40 = v39;

LABEL_43:
        if ([v8 appendSpaceAfter])
        {
          MEMORY[0x24C1D70A0](32, 0xE100000000000000);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_2486C44B4(0, *(v20 + 2) + 1, 1, v20);
        }

        v42 = *(v20 + 2);
        v41 = *(v20 + 3);
        if (v42 >= v41 >> 1)
        {
          v20 = sub_2486C44B4((v41 > 1), v42 + 1, 1, v20);
        }

        ++v33;

        *(v20 + 2) = v42 + 1;
        v43 = &v20[16 * v42];
        *(v43 + 4) = v38;
        *(v43 + 5) = v40;
        v31 = v71;
        if (v32 == v33)
        {
          v22 = v71;

          v8 = v63;
          goto LABEL_55;
        }
      }
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_70:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2487335F0;
  *(inited + 32) = 0x74736F702E525341;
  *(inited + 40) = 0xEB000000006E7449;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F80, &qword_248733300);
  *(inited + 48) = v12;
  v53 = sub_2486D3554(inited);
  swift_setDeallocating();
  sub_2486D964C(inited + 32);
  return v53;
}

id VoiceTriggerStatisticsEventFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VoiceTriggerStatisticsEventFeatureExtractor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoiceTriggerStatisticsEventFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_248715DD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v46 - v9;
  v11 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventBody;
  swift_beginAccess();
  v12 = *(a1 + v11);
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    v15 = v12;
    v16 = [v14 absoluteTimestamp];
    if (v16)
    {
      v17 = v16;
      sub_248730950();

      v18 = 0;
    }

    else
    {
      v18 = 1;
    }

    v19 = sub_248730970();
    v20 = *(v19 - 8);
    (*(v20 + 56))(v7, v18, 1, v19);
    sub_2486E16DC(v7, v10);
    if ((*(v20 + 48))(v10, 1, v19) == 1)
    {
      sub_2486E1660(v10);
      v47 = 0u;
      v48 = 0u;
    }

    else
    {
      *(&v48 + 1) = v19;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v47);
      (*(v20 + 32))(boxed_opaque_existential_0, v10, v19);
    }

    swift_beginAccess();
    sub_2486C6800(&v47, 0xD00000000000002CLL, 0x800000024873A140);
    swift_endAccess();
    v22 = [v14 firstPassTriggerSource];
    v23 = MEMORY[0x277D849A8];
    *(&v48 + 1) = MEMORY[0x277D849A8];
    LODWORD(v47) = v22;
    swift_beginAccess();
    sub_2486C6800(&v47, 0xD000000000000031, 0x800000024873A170);
    swift_endAccess();
    [v14 firstPassPeakScoreHS];
    v24 = MEMORY[0x277D839F8];
    *(&v48 + 1) = MEMORY[0x277D839F8];
    *&v47 = v25;
    swift_beginAccess();
    sub_2486C6800(&v47, 0xD00000000000002FLL, 0x800000024873A1B0);
    swift_endAccess();
    [v14 firstPassPeakScoreJS];
    *(&v48 + 1) = v24;
    *&v47 = v26;
    swift_beginAccess();
    sub_2486C6800(&v47, 0xD00000000000002FLL, 0x800000024873A1E0);
    swift_endAccess();
    [v14 hwSampleRate];
    *(&v48 + 1) = v24;
    *&v47 = v27;
    swift_beginAccess();
    sub_2486C6800(&v47, 0xD000000000000027, 0x800000024873A210);
    swift_endAccess();
    v28 = [v14 invocationTypeID];
    *(&v48 + 1) = v23;
    LODWORD(v47) = v28;
    swift_beginAccess();
    sub_2486C6800(&v47, 0xD00000000000002BLL, 0x800000024873A240);
    swift_endAccess();
    [v14 mitigationScore];
    *(&v48 + 1) = v24;
    *&v47 = v29;
    swift_beginAccess();
    sub_2486C6800(&v47, 0xD00000000000002ALL, 0x800000024873A270);
    swift_endAccess();
    [v14 recognizerScoreHS];
    *(&v48 + 1) = v24;
    *&v47 = v30;
    swift_beginAccess();
    sub_2486C6800(&v47, 0xD00000000000002CLL, 0x800000024873A2A0);
    swift_endAccess();
    [v14 recognizerScoreJS];
    *(&v48 + 1) = v24;
    *&v47 = v31;
    swift_beginAccess();
    sub_2486C6800(&v47, 0xD00000000000002CLL, 0x800000024873A2D0);
    swift_endAccess();
    [v14 repetitionSimilarityScore];
    *(&v48 + 1) = v24;
    *&v47 = v32;
    swift_beginAccess();
    sub_2486C6800(&v47, 0xD000000000000034, 0x800000024873A300);
    swift_endAccess();
    [v14 tdSpeakerRecognizerCombinedScore];
    *(&v48 + 1) = v24;
    *&v47 = v33;
    swift_beginAccess();
    sub_2486C6800(&v47, 0xD00000000000003BLL, 0x800000024873A340);
    swift_endAccess();
    [v14 triggerScoreHS];
    *(&v48 + 1) = v24;
    *&v47 = v34;
    swift_beginAccess();
    sub_2486C6800(&v47, 0xD000000000000029, 0x800000024873A380);
    swift_endAccess();
    [v14 triggerScoreJS];
    *(&v48 + 1) = v24;
    *&v47 = v35;
    swift_beginAccess();
    sub_2486C6800(&v47, 0xD000000000000029, 0x800000024873A3B0);
    swift_endAccess();
    v36 = [v14 configVersion];
    if (v36)
    {
      v37 = v36;
      v38 = sub_248730FF0();
      v40 = v39;

      v41 = MEMORY[0x277D837D0];
    }

    else
    {
      v38 = 0;
      v40 = 0;
      v41 = 0;
      *&v48 = 0;
    }

    *&v47 = v38;
    *(&v47 + 1) = v40;
    *(&v48 + 1) = v41;
    swift_beginAccess();
    sub_2486C6800(&v47, 0xD000000000000028, 0x800000024873A3E0);
    swift_endAccess();
    [v14 keywordThresholdHS];
    *(&v48 + 1) = v24;
    *&v47 = v42;
    swift_beginAccess();
    sub_2486C6800(&v47, 0xD00000000000002DLL, 0x800000024873A410);
    swift_endAccess();
    [v14 keywordThresholdJS];
    *(&v48 + 1) = v24;
    *&v47 = v43;
    swift_beginAccess();
    sub_2486C6800(&v47, 0xD00000000000002DLL, 0x800000024873A440);
    swift_endAccess();
    [v14 tdSpeakerRecognizerCombinedThresholdHS];
    *(&v48 + 1) = v24;
    *&v47 = v44;
    swift_beginAccess();
    sub_2486C6800(&v47, 0xD000000000000041, 0x800000024873A470);
    swift_endAccess();
    [v14 tdSpeakerRecognizerCombinedThresholdJS];
    *(&v48 + 1) = v24;
    *&v47 = v45;
    swift_beginAccess();
    sub_2486C6800(&v47, 0xD000000000000041, 0x800000024873A4C0);
    swift_endAccess();
  }
}

uint64_t static VoiceTriggerStatisticsEventFeatureExtractor.getVoiceTriggerIsRejected(featurizedEvent:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 24);
  if (*(v2 + 16))
  {

    v3 = sub_2486C94CC(0xD000000000000016, 0x800000024873A680);
    if (v4)
    {
      sub_2486C5B68(*(v2 + 56) + 32 * v3, v7);

      if (swift_dynamicCast())
      {
        return v6;
      }
    }

    else
    {
    }
  }

  return 2;
}

uint64_t static VoiceTriggerStatisticsEventFeatureExtractor.getHasNextTurn(featurizedEvent:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 24);
  if (*(v2 + 16))
  {
    v3 = *(a1 + 24);

    v4 = sub_2486C94CC(0x547478654E736168, 0xEB000000006E7275);
    if (v5)
    {
      sub_2486C5B68(*(v2 + 56) + 32 * v4, v8);

      if (swift_dynamicCast())
      {
        return v7;
      }
    }

    else
    {
    }
  }

  return 2;
}

uint64_t static VoiceTriggerStatisticsEventFeatureExtractor.getHasNextRejection(featurizedEvent:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 24);
  if (*(v2 + 16))
  {

    v3 = sub_2486C94CC(0xD000000000000010, 0x800000024873A6C0);
    if (v4)
    {
      sub_2486C5B68(*(v2 + 56) + 32 * v3, v7);

      if (swift_dynamicCast())
      {
        return v6;
      }
    }

    else
    {
    }
  }

  return 2;
}

uint64_t static VoiceTriggerStatisticsEventFeatureExtractor.getHasAppLaunchEvent(featurizedEvent:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 24);
  if (*(v2 + 16))
  {

    v3 = sub_2486C94CC(0xD000000000000011, 0x800000024873A700);
    if (v4)
    {
      sub_2486C5B68(*(v2 + 56) + 32 * v3, v7);

      if (swift_dynamicCast())
      {
        return v6;
      }
    }

    else
    {
    }
  }

  return 2;
}

uint64_t static VoiceTriggerStatisticsEventFeatureExtractor.getHasAppIntentEvent(featurizedEvent:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 24);
  if (*(v2 + 16))
  {

    v3 = sub_2486C94CC(0xD000000000000011, 0x800000024873A740);
    if (v4)
    {
      sub_2486C5B68(*(v2 + 56) + 32 * v3, v7);

      if (swift_dynamicCast())
      {
        return v6;
      }
    }

    else
    {
    }
  }

  return 2;
}

uint64_t static VoiceTriggerStatisticsEventFeatureExtractor.getHasTextInputEvent(featurizedEvent:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 24);
  if (*(v2 + 16))
  {

    v3 = sub_2486C94CC(0xD000000000000011, 0x800000024873A780);
    if (v4)
    {
      sub_2486C5B68(*(v2 + 56) + 32 * v3, v7);

      if (swift_dynamicCast())
      {
        return v6;
      }
    }

    else
    {
    }
  }

  return 2;
}

uint64_t static VoiceTriggerStatisticsEventFeatureExtractor.getHasDeviceUnlockEvent(featurizedEvent:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 24);
  if (*(v2 + 16))
  {

    v3 = sub_2486C94CC(0xD000000000000014, 0x800000024873A7C0);
    if (v4)
    {
      sub_2486C5B68(*(v2 + 56) + 32 * v3, v7);

      if (swift_dynamicCast())
      {
        return v6;
      }
    }

    else
    {
    }
  }

  return 2;
}

unint64_t static VoiceTriggerStatisticsEventFeatureExtractor.getDeltaTimeNextTurn(featurizedEvent:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 24);
  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = sub_2486C94CC(0xD000000000000013, 0x800000024873A6A0);
  if ((v5 & 1) == 0)
  {

    goto LABEL_6;
  }

  sub_2486C5B68(*(v2 + 56) + 32 * v4, v9);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v3 = 0;
LABEL_7:
    v6 = 1;
    return v3 | (v6 << 32);
  }

  v6 = 0;
  v3 = v8;
  return v3 | (v6 << 32);
}

unint64_t static VoiceTriggerStatisticsEventFeatureExtractor.getDeltaTimeNextRejection(featurizedEvent:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 24);
  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = sub_2486C94CC(0xD000000000000018, 0x800000024873A6E0);
  if ((v5 & 1) == 0)
  {

    goto LABEL_6;
  }

  sub_2486C5B68(*(v2 + 56) + 32 * v4, v9);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v3 = 0;
LABEL_7:
    v6 = 1;
    return v3 | (v6 << 32);
  }

  v6 = 0;
  v3 = v8;
  return v3 | (v6 << 32);
}

unint64_t static VoiceTriggerStatisticsEventFeatureExtractor.getDeltaTimeAppLaunch(featurizedEvent:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 24);
  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = sub_2486C94CC(0xD000000000000014, 0x800000024873A720);
  if ((v5 & 1) == 0)
  {

    goto LABEL_6;
  }

  sub_2486C5B68(*(v2 + 56) + 32 * v4, v9);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v3 = 0;
LABEL_7:
    v6 = 1;
    return v3 | (v6 << 32);
  }

  v6 = 0;
  v3 = v8;
  return v3 | (v6 << 32);
}

unint64_t static VoiceTriggerStatisticsEventFeatureExtractor.getDeltaTimeAppIntent(featurizedEvent:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 24);
  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = sub_2486C94CC(0xD000000000000019, 0x800000024873A760);
  if ((v5 & 1) == 0)
  {

    goto LABEL_6;
  }

  sub_2486C5B68(*(v2 + 56) + 32 * v4, v9);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v3 = 0;
LABEL_7:
    v6 = 1;
    return v3 | (v6 << 32);
  }

  v6 = 0;
  v3 = v8;
  return v3 | (v6 << 32);
}

unint64_t static VoiceTriggerStatisticsEventFeatureExtractor.getDeltaTimeTextInput(featurizedEvent:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 24);
  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = sub_2486C94CC(0xD000000000000014, 0x800000024873A7A0);
  if ((v5 & 1) == 0)
  {

    goto LABEL_6;
  }

  sub_2486C5B68(*(v2 + 56) + 32 * v4, v9);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v3 = 0;
LABEL_7:
    v6 = 1;
    return v3 | (v6 << 32);
  }

  v6 = 0;
  v3 = v8;
  return v3 | (v6 << 32);
}

unint64_t static VoiceTriggerStatisticsEventFeatureExtractor.getDeltaTimeDeviceUnlock(featurizedEvent:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 24);
  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = sub_2486C94CC(0xD000000000000017, 0x800000024873A7E0);
  if ((v5 & 1) == 0)
  {

    goto LABEL_6;
  }

  sub_2486C5B68(*(v2 + 56) + 32 * v4, v9);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v3 = 0;
LABEL_7:
    v6 = 1;
    return v3 | (v6 << 32);
  }

  v6 = 0;
  v3 = v8;
  return v3 | (v6 << 32);
}

id VoiceTriggerStatisticsEventFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoiceTriggerStatisticsEventFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id BiomeSQLDatabase.__allocating_init(biomeEventTypes:bookmark:endTimes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BiomeSQLDatabase();
  v7 = objc_allocWithZone(v6);
  v8 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_unifiedVirtualTables;
  *&v7[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_unifiedVirtualTables] = 0;
  v9 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_endTimes;
  *&v7[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_endTimes] = 0;
  *&v7[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase____lazy_storage___biomeDB] = 0;
  *&v7[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_biomeEventTypes] = a1;
  *&v7[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_bookmark] = a2;
  *&v7[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_additionalFunctions] = 0;
  *&v7[v8] = 0;
  *&v7[v9] = a3;
  v11.receiver = v7;
  v11.super_class = v6;
  return objc_msgSendSuper2(&v11, sel_init);
}

id BiomeSQLDatabase.__allocating_init(biomeEventTypes:bookmark:additionalFunctions:endTimes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for BiomeSQLDatabase();
  v9 = objc_allocWithZone(v8);
  v10 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_unifiedVirtualTables;
  *&v9[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_unifiedVirtualTables] = 0;
  v11 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_endTimes;
  *&v9[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_endTimes] = 0;
  *&v9[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase____lazy_storage___biomeDB] = 0;
  *&v9[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_biomeEventTypes] = a1;
  *&v9[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_bookmark] = a2;
  *&v9[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_additionalFunctions] = a3;
  *&v9[v10] = 0;
  *&v9[v11] = a4;
  v13.receiver = v9;
  v13.super_class = v8;
  return objc_msgSendSuper2(&v13, sel_init);
}

id BiomeSQLDatabase.__allocating_init(biomeEventTypes:bookmark:additionalFunctions:unifiedVirtualTables:endTimes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_unifiedVirtualTables;
  *&v11[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_unifiedVirtualTables] = 0;
  v13 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_endTimes;
  *&v11[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_endTimes] = 0;
  *&v11[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase____lazy_storage___biomeDB] = 0;
  *&v11[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_biomeEventTypes] = a1;
  *&v11[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_bookmark] = a2;
  *&v11[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_additionalFunctions] = a3;
  *&v11[v12] = a4;
  *&v11[v13] = a5;
  v15.receiver = v11;
  v15.super_class = v5;
  return objc_msgSendSuper2(&v15, sel_init);
}

id BiomeSQLDatabase.init(biomeEventTypes:bookmark:additionalFunctions:unifiedVirtualTables:endTimes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_unifiedVirtualTables;
  *&v5[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_unifiedVirtualTables] = 0;
  v7 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_endTimes;
  *&v5[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_endTimes] = 0;
  *&v5[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase____lazy_storage___biomeDB] = 0;
  *&v5[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_biomeEventTypes] = a1;
  *&v5[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_bookmark] = a2;
  *&v5[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_additionalFunctions] = a3;
  *&v5[v6] = a4;
  *&v5[v7] = a5;
  v9.receiver = v5;
  v9.super_class = type metadata accessor for BiomeSQLDatabase();
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_248717394()
{
  v1 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase____lazy_storage___biomeDB;
  v2 = *(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase____lazy_storage___biomeDB);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase____lazy_storage___biomeDB);
  }

  else
  {
    v4 = sub_2487173F8(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2487173F8(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v46 = sub_2487179D8();
  if (*(a1 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_unifiedVirtualTables))
  {

    sub_2486C3B80(v2);
  }

  v3 = objc_allocWithZone(MEMORY[0x277CF1A88]);
  sub_2486CF4C4(0, &qword_27EEA5AC0, 0x277CF1B50);
  v4 = sub_248731230();
  v5 = [v3 initWithAdditionalVirtualTables:v4 privileges:0 isColumnAccessLoggingEnabled:0];

  v6 = _s26DeepThoughtBiomeFoundation20UserDefinedFunctionsO010predefinedG0SayAA18FunctionDefinitionVGyFZ_0();
  v7 = *(v6 + 2);
  v8 = &unk_248734000;
  if (v7)
  {
    v39 = a1;
    v9 = (v6 + 64);
    do
    {
      v12 = *(v9 - 4);
      v11 = *(v9 - 3);
      v13 = *(v9 - 4);
      v14 = *(v9 - 1);
      v15 = *v9;

      v16 = sub_248730FC0();
      v17 = swift_allocObject();
      *(v17 + 16) = v14;
      *(v17 + 24) = v15;
      v44 = sub_24871921C;
      v45 = v17;
      aBlock = MEMORY[0x277D85DD0];
      v41 = 1107296256;
      v42 = sub_2487177EC;
      v43 = &block_descriptor_25;
      v18 = _Block_copy(&aBlock);

      aBlock = 0;
      LODWORD(v14) = [v5 registerFunctionWithName:v16 numArgs:v13 function:v18 error:&aBlock];
      _Block_release(v18);

      if (v14)
      {
        v10 = aBlock;
      }

      else
      {
        v19 = aBlock;
        v20 = sub_2487307E0();

        swift_willThrow();
      }

      v9 += 5;
      --v7;
    }

    while (v7);

    a1 = v39;
    v8 = &unk_248734000;
  }

  else
  {
  }

  v21 = *(a1 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_additionalFunctions);

  if (v21)
  {
    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = (v21 + 64);
      v24 = v8[162];
      do
      {
        v27 = *(v23 - 4);
        v26 = *(v23 - 3);
        v28 = *(v23 - 4);
        v30 = *(v23 - 1);
        v29 = *v23;

        v31 = sub_248730FC0();
        v32 = swift_allocObject();
        *(v32 + 16) = v30;
        *(v32 + 24) = v29;
        v44 = sub_24871925C;
        v45 = v32;
        aBlock = MEMORY[0x277D85DD0];
        v41 = v24;
        v42 = sub_2487177EC;
        v43 = &block_descriptor_32_0;
        v33 = _Block_copy(&aBlock);

        aBlock = 0;
        v34 = [v5 registerFunctionWithName:v31 numArgs:v28 function:v33 error:&aBlock];
        _Block_release(v33);

        if (v34)
        {
          v25 = aBlock;
        }

        else
        {
          v35 = aBlock;
          v36 = sub_2487307E0();

          swift_willThrow();
        }

        v23 += 5;
        --v22;
      }

      while (v22);
    }
  }

  v37 = *MEMORY[0x277D85DE8];
  return v5;
}

id sub_2487177EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = sub_248731240();

  v5(v15, v6, a3);

  v7 = v16;
  if (v16)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v9 = *(v7 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x28223BE20](v8, v8);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12);
    v13 = sub_248731870();
    (*(v9 + 8))(v12, v7);
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t sub_248717964(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase____lazy_storage___biomeDB);
  *(v1 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase____lazy_storage___biomeDB) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*sub_248717978(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_248717394();
  return sub_2487179C0;
}

void sub_2487179C0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase____lazy_storage___biomeDB);
  *(v1 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase____lazy_storage___biomeDB) = v2;
}

uint64_t sub_2487179D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  v58 = *(v1 - 8);
  v2 = *(v58 + 64);
  v4 = MEMORY[0x28223BE20](v1 - 8, v3);
  v56 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v5;
  MEMORY[0x28223BE20](v4, v6);
  v8 = MEMORY[0x277D84F90];
  v64 = MEMORY[0x277D84F90];
  v59 = v0;
  v9 = *&v0[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_biomeEventTypes];
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v9 + 32);
    v54 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_endTimes;
    v53[1] = v63;
    v55 = v53 - v7;
    while (1)
    {
      v13 = *v11++;
      v12 = v13;
      v14 = _s26DeepThoughtBiomeFoundation0C18LibraryStreamUtilsO03getcF09eventTypeSo12BMStreamBaseCSgAA05EventJ0O_tFZ_0(v13);
      if (!v14)
      {
        goto LABEL_5;
      }

      v15 = v14;
      v60 = v11;
      v16 = [v14 schema];
      v17 = [v16 tableName];

      v18 = sub_248730FF0();
      v20 = v19;

      aBlock = v18;
      v62 = v20;
      v63[9] = 46;
      v63[10] = 0xE100000000000000;
      v63[7] = 0;
      v63[8] = 0xE000000000000000;
      sub_2486D8A18();
      sub_248731580();

      v21 = [v15 schema];
      v22 = [v21 columns];

      sub_2486CF4C4(0, &qword_27EEA6620, 0x277CF1A80);
      sub_248731240();

      v23 = objc_allocWithZone(MEMORY[0x277CF1AA0]);
      v24 = sub_248730FC0();

      v25 = sub_248731230();

      v26 = [v23 initWithTableName:v24 columns:v25];

      if (v26)
      {
        break;
      }

LABEL_4:
      v11 = v60;
LABEL_5:
      if (!--v10)
      {
        return v8;
      }
    }

    v27 = *&v59[v54];
    if (v27)
    {
      v28 = _s26DeepThoughtBiomeFoundation10EventUtilsC17eventTypeToString0gH0SSAA0eH0O_tFZ_0();
      v30 = v29;
      swift_beginAccess();
      v31 = *(v27 + 16);
      if (*(v31 + 16))
      {

        v32 = sub_2486C94CC(v28, v30);
        v34 = v33;

        if (v34)
        {
          v35 = *(v31 + 56);
          v36 = sub_248730970();
          v37 = *(v36 - 8);
          v38 = v37;
          v39 = v35 + *(v37 + 72) * v32;
          v40 = v55;
          (*(v37 + 16))(v55, v39, v36);

          (*(v38 + 56))(v40, 0, 1, v36);
LABEL_15:
          v42 = v56;
          sub_2486C5C10(v40, v56);
          v43 = (*(v58 + 80) + 32) & ~*(v58 + 80);
          v44 = swift_allocObject();
          v45 = v59;
          *(v44 + 16) = v12;
          *(v44 + 24) = v45;
          sub_2486E16DC(v42, v44 + v43);
          v46 = objc_allocWithZone(MEMORY[0x277CF1B50]);
          v63[2] = sub_2487190D4;
          v63[3] = v44;
          aBlock = MEMORY[0x277D85DD0];
          v62 = 1107296256;
          v63[0] = sub_2487188B0;
          v63[1] = &block_descriptor_2;
          v47 = _Block_copy(&aBlock);
          v48 = v45;
          v49 = [v46 initWithSchema:v26 publisherBlockWithOptions:v47 acceptPublisherOptions:0];
          _Block_release(v47);

          v50 = v49;
          MEMORY[0x24C1D71A0]();
          if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v51 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_248731260();
          }

          sub_2487312A0();

          sub_2486E1660(v40);
          v8 = v64;
          goto LABEL_4;
        }
      }

      else
      {
      }
    }

    v41 = sub_248730970();
    v40 = v55;
    (*(*(v41 - 8) + 56))(v55, 1, 1, v41);
    goto LABEL_15;
  }

  return v8;
}

uint64_t sub_248717FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s26DeepThoughtBiomeFoundation0C18LibraryStreamUtilsO03getcE9Publisher9eventType8bookmark17overwriteBookmark7endTimeSo014BMBookmarkableI0CyyXlGSgAA05EventK0O_AA07StreamsN0CSgSb0D04DateVSgtFZ_0(a2, *(a3 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_bookmark), 0, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA67C8, &qword_248735B78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA67D0, &qword_248735B80);
  swift_dynamicCast();
  return v5;
}

uint64_t static BiomeSQLDatabase.createUnifiedSiriTurnTable(dataModelClass:bookmark:useCase:endTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_24871812C;

  return sub_248718918(a1, a2, a3, a4, a5);
}

uint64_t sub_24871812C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_248718228(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA67D8, &qword_248735B88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA67E0, &unk_248735B90);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v20 - v15;
  v17 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_248730B30();
  *(swift_allocObject() + 16) = a3;
  type metadata accessor for UnifiedSiriTurnBase();
  sub_2487191B8();
  sub_248730AC0();

  (*(v6 + 8))(v10, v5);
  v18 = sub_248730AA0();
  (*(v12 + 8))(v16, v11);
  return v18;
}

uint64_t static BiomeSQLDatabase.createUnifiedSiriTurnBaseTable(bookmark:useCase:endTime:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2487184DC, 0, 0);
}

uint64_t sub_2487184DC()
{
  v1 = v0[5];
  v2 = type metadata accessor for UnifiedSiriTurnBase();
  v3 = sub_248730970();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_2487185DC;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  return sub_248718918(v2, v7, v8, v5, v6);
}

uint64_t sub_2487185DC(uint64_t a1)
{
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v7 = *v1;

  sub_2486E1660(v4);

  v5 = *(v7 + 8);

  return v5(a1);
}

uint64_t sub_2487186FC()
{
  v0 = sub_248717394();
  v1 = sub_2487313A0();

  type metadata accessor for BiomeSQLResult();
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

id BiomeSQLDatabase.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BiomeSQLDatabase.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BiomeSQLDatabase();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2487188B0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

uint64_t sub_248718918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390) - 8) + 64) + 15;
  v5[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2487189BC, 0, 0);
}

uint64_t sub_2487189BC()
{
  v1 = *(v0 + 184);
  v2 = MEMORY[0x277D84F90];
  v3 = sub_2486D3BA8(MEMORY[0x277D84F90]);
  v4 = type metadata accessor for StreamsBookmark();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name];
  *v6 = 0x4C4D4941706D6574;
  *(v6 + 1) = 0xEA00000000005349;
  *&v5[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals] = v3;
  *&v5[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_stagedTimeIntervals] = sub_2486D3BA8(v2);
  *(v0 + 144) = v5;
  *(v0 + 152) = v4;
  v7 = objc_msgSendSuper2((v0 + 144), sel_init);
  if (v1)
  {
    v8 = *(v0 + 184);

    v7 = v8;
  }

  *(v0 + 224) = v7;
  v9 = *(v0 + 208);
  v10 = *(v0 + 216);
  v11 = sub_2486F85E4(1);
  v13 = v12;
  sub_2486C5C10(v9, v10);
  v14 = sub_248730970();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v10, 1, v14);
  v17 = *(v0 + 216);
  if (v16 == 1)
  {
    v18 = sub_2486E1660(*(v0 + 216));
    v19 = 0;
  }

  else
  {
    sub_248730900();
    v21 = v20;
    v18 = (*(v15 + 8))(v17, v14);
    v19 = v21;
  }

  v22 = *(v0 + 200);
  *(v0 + 160) = 0xD000000000000013;
  *(v0 + 168) = 0x800000024873CED0;
  if (v22)
  {
    MEMORY[0x24C1D70A0](*(v0 + 192));
    MEMORY[0x24C1D70A0](46, 0xE100000000000000);
  }

  v23 = (*(*(v0 + 176) + 192))(v18);
  if (!v23)
  {
    sub_248730C20();
    v23 = sub_248730BE0();
  }

  *(v0 + 232) = v23;
  v24 = v23;
  sub_248730B50();
  v25 = *(v0 + 160);
  *(v0 + 240) = *(v0 + 168);
  v26 = *(MEMORY[0x277CE4850] + 4);
  v27 = swift_task_alloc();
  *(v0 + 248) = v27;
  *v27 = v0;
  v27[1] = sub_248718CB8;

  return MEMORY[0x2821377A8](v0 + 64, v24, v11, v13 & 1, v19, v16 == 1, 0, 1);
}

uint64_t sub_248718CB8()
{
  v2 = *(*v1 + 248);
  v3 = *(*v1 + 240);
  v6 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = sub_248718F5C;
  }

  else
  {
    v4 = sub_248718DE8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_248718DE8()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[22];
  _s26DeepThoughtBiomeFoundation12SchemaMapperO03getcE014dataModelClassSo11BMSQLSchemaCAA19UnifiedSiriTurnBaseCm_tFZ_0(v3);
  v5 = v4;
  sub_2486E8718((v0 + 8), (v0 + 13));
  v6 = swift_allocObject();
  sub_2486CD01C((v0 + 13), v6 + 16);
  *(v6 + 56) = v3;
  v7 = objc_allocWithZone(MEMORY[0x277CF1B50]);
  v0[6] = sub_24871916C;
  v0[7] = v6;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2487188B0;
  v0[5] = &block_descriptor_16;
  v8 = _Block_copy(v0 + 2);
  v9 = [v7 initWithSchema:v5 publisherBlockWithOptions:v8 acceptPublisherOptions:0];

  _Block_release(v8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  v10 = v0[7];

  v11 = v0[27];

  v12 = v0[1];

  return v12(v9);
}

uint64_t sub_248718F5C()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 224);

  v3 = *(v0 + 216);

  v4 = *(v0 + 8);

  return v4(0);
}

uint64_t sub_2487190D4(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_248717FCC(a1, v4, v5, v6);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2487191B8()
{
  result = qword_27EEA67E8;
  if (!qword_27EEA67E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEA67D8, &qword_248735B88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA67E8);
  }

  return result;
}

uint64_t sub_24871921C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t Embedder.embeddingModel.getter()
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  return sub_248731040();
}

uint64_t dispatch thunk of Embedder.embed(text:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_24871812C;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of Embedder.embed(texts:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_248719560;

  return v11(a1, a2, a3);
}

uint64_t EmbeddingsIntraFeaturizedTurnFeatureExtractor.defaultModelVersion.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation45EmbeddingsIntraFeaturizedTurnFeatureExtractor_defaultModelVersion);
  v2 = *(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation45EmbeddingsIntraFeaturizedTurnFeatureExtractor_defaultModelVersion + 8);

  return v1;
}

uint64_t EmbeddingsIntraFeaturizedTurnFeatureExtractor.defaultLocale.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation45EmbeddingsIntraFeaturizedTurnFeatureExtractor_defaultLocale);
  v2 = *(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation45EmbeddingsIntraFeaturizedTurnFeatureExtractor_defaultLocale + 8);

  return v1;
}

id sub_2487195E8(void *a1)
{
  result = [a1 subwordTokenEmbedding];
  if (result)
  {
    v2 = result;
    v3 = [result embeddingVersion];

    if (!v3)
    {
      return 0;
    }

    v4 = sub_248730FF0();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_248719674(void *a1)
{
  result = [a1 subwordTokenEmbedding];
  if (result)
  {
    v2 = result;
    v3 = [result embeddingDim];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2487196CC(uint64_t a1)
{
  v2[44] = a1;
  v2[45] = v1;
  v3 = sub_2487309E0();
  v2[46] = v3;
  v4 = *(v3 - 8);
  v2[47] = v4;
  v5 = *(v4 + 64) + 15;
  v2[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24871978C, 0, 0);
}

uint64_t sub_24871978C()
{
  v2 = v0[47];
  v1 = v0[48];
  v4 = v0[45];
  v3 = v0[46];
  v5 = [objc_allocWithZone(MEMORY[0x277CF3B40]) init];
  v0[49] = v5;
  v6 = *(v4 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation45EmbeddingsIntraFeaturizedTurnFeatureExtractor_defaultLocale);
  v7 = *(v4 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation45EmbeddingsIntraFeaturizedTurnFeatureExtractor_defaultLocale + 8);

  sub_2487309C0();
  v8 = sub_2487309D0();
  v0[50] = v8;
  (*(v2 + 8))(v1, v3);
  v9 = *(v4 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation45EmbeddingsIntraFeaturizedTurnFeatureExtractor_defaultModelVersion);
  v10 = *(v4 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation45EmbeddingsIntraFeaturizedTurnFeatureExtractor_defaultModelVersion + 8);
  v11 = sub_248730FC0();
  v0[51] = v11;
  v0[2] = v0;
  v0[3] = sub_248719950;
  v12 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6808, &qword_248735BF8);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_24871A60C;
  v0[21] = &block_descriptor_3;
  v0[22] = v12;
  [v5 setupWithLocale:v8 embeddingVersion:v11 completionHandler:v0 + 18];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_248719950()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 416) = v2;
  if (v2)
  {
    v3 = sub_24871A2DC;
  }

  else
  {
    v3 = sub_248719A60;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_248719A60()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 352);

  swift_beginAccess();
  v3 = *(v2 + 24);

  v4 = sub_2486C86E8(0x74736F702E525341, 0xEB000000006E7449, v3);

  if (v4)
  {
    if (v4[2])
    {
      v5 = v4[4];
      *(v0 + 424) = v5;
      v6 = v4[5];
      *(v0 + 432) = v6;

      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (v7)
      {
        v8 = *(v0 + 392);
        v9 = sub_248730FC0();
        *(v0 + 440) = v9;
        *(v0 + 80) = v0;
        *(v0 + 120) = v0 + 344;
        *(v0 + 88) = sub_248719CA8;
        v10 = swift_continuation_init();
        *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6810, qword_248735C00);
        *(v0 + 208) = MEMORY[0x277D85DD0];
        *(v0 + 216) = 1107296256;
        *(v0 + 224) = sub_24871A6B8;
        *(v0 + 232) = &block_descriptor_3;
        *(v0 + 240) = v10;
        [v8 processEmbeddingRequest:v9 completionHandler:v0 + 208];

        return MEMORY[0x282200938](v0 + 80);
      }
    }

    else
    {
      v11 = *(v0 + 392);
    }
  }

  else
  {
  }

  v12 = *(v0 + 384);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_248719CA8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 448) = v3;
  if (v3)
  {
    v4 = sub_24871A428;
  }

  else
  {
    v5 = *(v1 + 432);

    v4 = sub_248719DC0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

id sub_248719DC0()
{
  v35 = v0;
  v1 = *(v0 + 344);

  sub_24871A998(v1, 1);
  v3 = v2;
  if (!*(v2 + 16))
  {

    if (qword_28150EE60 != -1)
    {
      swift_once();
    }

    v17 = sub_248730DF0();
    __swift_project_value_buffer(v17, qword_28150F088);
    v18 = sub_248730DD0();
    v19 = sub_2487313D0();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 392);
    if (!v20)
    {
      goto LABEL_21;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "Empty subwords array";
    goto LABEL_20;
  }

  result = [v1 subwordTokenEmbedding];
  if (!result)
  {
    __break(1u);
    goto LABEL_28;
  }

  v5 = result;
  v6 = [result embeddingDim];

  result = [v1 subwordTokenEmbedding];
  if (!result)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = [result embeddingVersion];

  if (!v8)
  {

    if (qword_28150EE60 != -1)
    {
      swift_once();
    }

    v24 = sub_248730DF0();
    __swift_project_value_buffer(v24, qword_28150F088);
    v18 = sub_248730DD0();
    v19 = sub_2487313D0();
    v25 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 392);
    if (!v25)
    {
      goto LABEL_21;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "Embeddings version not found";
    goto LABEL_20;
  }

  v9 = sub_248730FF0();
  v11 = v10;

  sub_24871ABC8(v1, v3);
  if (v12)
  {
    v13 = v12;
    v14 = *(v0 + 360);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F80, &qword_248733300);
    v31 = v3;
    swift_beginAccess();

    sub_2486C6800(&v31, 0xD000000000000013, 0x8000000248739270);
    v34 = MEMORY[0x277D84D38];
    v31 = v6;
    sub_2486C6800(&v31, 0xD00000000000001FLL, 0x80000002487392D0);
    v34 = MEMORY[0x277D837D0];
    v31 = v9;
    v32 = v11;
    sub_2486C6800(&v31, 0xD00000000000001CLL, 0x80000002487392F0);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEA5FA0, &unk_248734090);
    v31 = v13;

    sub_2486C6800(&v31, 0xD00000000000001CLL, 0x8000000248739290);
    swift_endAccess();
    v15 = sub_24871B090(v3, v13, v6);

    if (v15)
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5AB0, &qword_248733008);
    }

    else
    {
      v16 = 0;
      v32 = 0;
      v33 = 0;
    }

    v28 = *(v0 + 392);
    v31 = v15;
    v34 = v16;
    swift_beginAccess();
    sub_2486C6800(&v31, 0xD00000000000001DLL, 0x80000002487392B0);
    swift_endAccess();

    goto LABEL_24;
  }

  if (qword_28150EE60 != -1)
  {
    swift_once();
  }

  v26 = sub_248730DF0();
  __swift_project_value_buffer(v26, qword_28150F088);
  v18 = sub_248730DD0();
  v19 = sub_2487313D0();
  v27 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 392);
  if (v27)
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "Subword embeddings not found";
LABEL_20:
    _os_log_impl(&dword_2486BF000, v18, v19, v23, v22, 2u);
    MEMORY[0x24C1D8100](v22, -1, -1);
  }

LABEL_21:

LABEL_24:
  v29 = *(v0 + 384);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_24871A2DC()
{
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[50];
  swift_willThrow();

  if (qword_28150EE60 != -1)
  {
    swift_once();
  }

  v4 = sub_248730DF0();
  __swift_project_value_buffer(v4, qword_28150F088);
  v5 = sub_248730DD0();
  v6 = sub_2487313D0();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[52];
  v9 = v0[49];
  if (v7)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2486BF000, v5, v6, "Unable to set up CDM client", v10, 2u);
    MEMORY[0x24C1D8100](v10, -1, -1);
  }

  v11 = v0[48];

  v12 = v0[1];

  return v12();
}

uint64_t sub_24871A428()
{
  v20 = v0;
  v1 = v0[55];
  v2 = v0[56];
  swift_willThrow();

  if (qword_28150EE60 != -1)
  {
    swift_once();
  }

  v3 = v0[54];
  v4 = sub_248730DF0();
  __swift_project_value_buffer(v4, qword_28150F088);

  v5 = sub_248730DD0();
  v6 = sub_2487313D0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[56];
  v9 = v0[54];
  if (v7)
  {
    v10 = v0[53];
    v11 = v0[49];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    v14 = sub_2486D3010(v10, v9, &v19);

    *(v12 + 4) = v14;
    _os_log_impl(&dword_2486BF000, v5, v6, "Unable to compute embeddings for utterance: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C1D8100](v13, -1, -1);
    MEMORY[0x24C1D8100](v12, -1, -1);
  }

  else
  {
    v15 = v0[49];
  }

  v16 = v0[48];

  v17 = v0[1];

  return v17();
}

uint64_t sub_24871A60C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6688, qword_248735530);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_24871A6B8(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6688, qword_248735530);
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

id EmbeddingsIntraFeaturizedTurnFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EmbeddingsIntraFeaturizedTurnFeatureExtractor.init()()
{
  v1 = &v0[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation45EmbeddingsIntraFeaturizedTurnFeatureExtractor_defaultModelVersion];
  *v1 = 0x3030322E30303333;
  *(v1 + 1) = 0xEB00000000302E30;
  v2 = &v0[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation45EmbeddingsIntraFeaturizedTurnFeatureExtractor_defaultLocale];
  *v2 = 0x53552D6E65;
  *(v2 + 1) = 0xE500000000000000;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for EmbeddingsIntraFeaturizedTurnFeatureExtractor();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_24871A8C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation45EmbeddingsIntraFeaturizedTurnFeatureExtractor_defaultModelVersion + 8);

  v2 = *(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation45EmbeddingsIntraFeaturizedTurnFeatureExtractor_defaultLocale + 8);
}

id EmbeddingsIntraFeaturizedTurnFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmbeddingsIntraFeaturizedTurnFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24871A998(void *a1, char a2)
{
  v4 = [a1 subwordTokenChain];
  if (!v4)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v5 = v4;
  v6 = [v4 subwordTokens];

  if (!v6)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v7 = [v6 count];

  if (a2)
  {
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_27;
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  if (v7 < v9)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v9 == v7)
  {
    return;
  }

  v10 = MEMORY[0x277D84F90];
  v11 = v9;
  do
  {
    v12 = v11;
    while (1)
    {
      if (v11 < v9 || v12 >= v7)
      {
        __break(1u);
        goto LABEL_26;
      }

      v13 = [a1 subwordTokenChain];
      if (!v13)
      {
        goto LABEL_28;
      }

      v14 = v13;
      v15 = [v13 subwordTokensAtIndex_];

      if (v15)
      {
        break;
      }

LABEL_12:
      if (v7 == ++v12)
      {
        return;
      }
    }

    v16 = [v15 value];
    if (!v16)
    {

      goto LABEL_12;
    }

    v17 = v10;
    v18 = v16;
    v19 = sub_248730FF0();
    v24 = v20;

    v25 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_2486C44B4(0, *(v17 + 2) + 1, 1, v17);
    }

    v22 = *(v17 + 2);
    v21 = *(v17 + 3);
    v10 = v17;
    if (v22 >= v21 >> 1)
    {
      v10 = sub_2486C44B4((v21 > 1), v22 + 1, 1, v17);
    }

    v11 = (v12 + 1);

    *(v10 + 2) = v22 + 1;
    v23 = &v10[16 * v22];
    *(v23 + 4) = v25;
    *(v23 + 5) = v24;
  }

  while (v7 - 1 != v12);
}

void sub_24871ABC8(void *a1, uint64_t a2)
{
  sub_2486D3FD4(MEMORY[0x277D84F90]);
  v5 = [a1 subwordTokenEmbedding];
  if (!v5)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v6 = v5;
  v7 = [v5 embeddingDim];

  v8 = [a1 subwordTokenEmbedding];
  if (!v8)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v9 = v8;
  v10 = [v8 embeddingTensor];

  if (!v10)
  {
LABEL_48:
    __break(1u);
    return;
  }

  v11 = [v10 valuesCount];

  if (v7 < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v12 = *(a2 + 16);
  v2 = v12 * v7;
  v39 = v12;
  if ((v12 * v7) >> 64 != (v12 * v7) >> 63)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if ((v2 & 0x8000000000000000) != 0 || v11 != v2)
  {

    if (qword_28150EE60 == -1)
    {
LABEL_28:
      v28 = sub_248730DF0();
      __swift_project_value_buffer(v28, qword_28150F088);
      v29 = sub_248730DD0();
      v30 = sub_2487313D0();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 134218240;
        *(v31 + 4) = v11;
        *(v31 + 12) = 2048;
        *(v31 + 14) = v2;
        _os_log_impl(&dword_2486BF000, v29, v30, "Subword token has: %lu elements, not expected :%ld ", v31, 0x16u);
        MEMORY[0x24C1D8100](v31, -1, -1);
      }

      return;
    }

LABEL_43:
    swift_once();
    goto LABEL_28;
  }

  if (v12)
  {
    v2 = 0;
    v13 = 0;
    v37 = a2 + 32;
    v38 = v7;
    while (1)
    {
      v11 = v7 * v13;
      if ((v7 * v13) >> 64 != (v7 * v13) >> 63)
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v14 = (v11 + v7);
      if (__OFADD__(v11, v7))
      {
        goto LABEL_39;
      }

      if (v14 < v11)
      {
        goto LABEL_40;
      }

      v15 = MEMORY[0x277D84F90];
      if (v11 != v14)
      {
        break;
      }

      v16 = *(MEMORY[0x277D84F90] + 16);
LABEL_15:
      v7 = v38;
      if (v16 != v38)
      {

        if (qword_28150EE60 != -1)
        {
          swift_once();
        }

        v32 = sub_248730DF0();
        __swift_project_value_buffer(v32, qword_28150F088);

        v33 = sub_248730DD0();
        v34 = sub_2487313D0();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 134218240;
          v36 = *(v15 + 16);

          *(v35 + 4) = v36;

          *(v35 + 12) = 2048;
          *(v35 + 14) = v38;
          _os_log_impl(&dword_2486BF000, v33, v34, "Subword embedding vector has: %ld, not expected :%llu", v35, 0x16u);
          MEMORY[0x24C1D8100](v35, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        return;
      }

      v17 = (v37 + 16 * v13);
      v18 = *v17;
      v19 = v17[1];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_2486EC888(v15, v18, v19, isUniquelyReferenced_nonNull_native);

      v2 += v38;
      if (++v13 == v39)
      {
        return;
      }
    }

    while (1)
    {
      v21 = [a1 subwordTokenEmbedding];
      if (!v21)
      {
        break;
      }

      v22 = v21;
      v23 = [v21 embeddingTensor];

      if (!v23)
      {
        goto LABEL_45;
      }

      if ((v2 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_38;
      }

      [v23 valuesAtIndex_];
      v25 = v24;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_2486C5DD4(0, *(v15 + 16) + 1, 1, v15);
      }

      v27 = *(v15 + 16);
      v26 = *(v15 + 24);
      v16 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        v15 = sub_2486C5DD4(v26 > 1, v27 + 1, 1, v15);
      }

      *(v15 + 16) = v16;
      *(v15 + 4 * v27 + 32) = v25;
      ++v11;
      if (!--v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }
}

uint64_t sub_24871B090(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    swift_once();
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = a1;
    v7 = sub_248731290();
    *(v7 + 16) = a3;
    bzero((v7 + 32), 4 * a3);
    v9 = 0;
    v10 = *(v3 + 16);
    v11 = (v3 + 40);
    v12 = a3;
    v38 = (v3 + 40);
    v39 = v10;
    while (!v10)
    {
LABEL_12:
      if (++v9 == a3)
      {
        *v8.i32 = v10;
        v17 = a3 - 1;
        if (v12 < a3 - 1)
        {
          v17 = v12;
        }

        v18 = v17 + 1;
        if (v18 >= 9)
        {
          v33 = v18 & 7;
          if ((v18 & 7) == 0)
          {
            v33 = 8;
          }

          v19 = v18 - v33;
          v34 = vdupq_lane_s32(v8, 0);
          v35 = (v7 + 48);
          v36 = v19;
          do
          {
            v37 = vdivq_f32(*v35, v34);
            v35[-1] = vdivq_f32(v35[-1], v34);
            *v35 = v37;
            v35 += 2;
            v36 -= 8;
          }

          while (v36);
        }

        else
        {
          v19 = 0;
        }

        while (v19 < v12)
        {
          *(v7 + 4 * v19 + 32) = *(v7 + 4 * v19 + 32) / *v8.i32;
          if (a3 == ++v19)
          {
            return v7;
          }
        }

        goto LABEL_40;
      }
    }

    while (1)
    {
      v4 = *(v11 - 1);
      v3 = *v11;
      v13 = *(a2 + 16);

      if (!v13)
      {
        break;
      }

      v14 = sub_2486C94CC(v4, v3);
      if ((v15 & 1) == 0)
      {
        break;
      }

      v16 = v14;

      v3 = *(*(a2 + 56) + 8 * v16);
      if (*(v3 + 16) != a3)
      {
        v27 = *(*(a2 + 56) + 8 * v16);

        if (qword_28150EE60 != -1)
        {
          swift_once();
        }

        v28 = sub_248730DF0();
        __swift_project_value_buffer(v28, qword_28150F088);

        v29 = sub_248730DD0();
        v30 = sub_2487313D0();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 134218240;
          v32 = *(v3 + 16);

          *(v31 + 4) = v32;

          *(v31 + 12) = 2048;
          *(v31 + 14) = a3;
          _os_log_impl(&dword_2486BF000, v29, v30, "Embeddings vector size: %ld not expected: %llu", v31, 0x16u);
          MEMORY[0x24C1D8100](v31, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        return 0;
      }

      if (v9 >= a3)
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v12 = *(v7 + 16);
      if (v9 >= v12)
      {
        goto LABEL_38;
      }

      *(v7 + 32 + 4 * v9) = *(v3 + 4 * v9 + 32) + *(v7 + 32 + 4 * v9);
      v11 += 2;
      if (!--v10)
      {
        v11 = v38;
        v10 = v39;
        goto LABEL_12;
      }
    }

    if (qword_28150EE60 != -1)
    {
      goto LABEL_41;
    }
  }

  v20 = sub_248730DF0();
  __swift_project_value_buffer(v20, qword_28150F088);

  v21 = sub_248730DD0();
  v22 = sub_2487313D0();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v40 = v24;
    *v23 = 136315138;
    v25 = sub_2486D3010(v4, v3, &v40);

    *(v23 + 4) = v25;
    _os_log_impl(&dword_2486BF000, v21, v22, "Subword embedding vector not found for subword: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x24C1D8100](v24, -1, -1);
    MEMORY[0x24C1D8100](v23, -1, -1);
  }

  else
  {
  }

  return 0;
}

id LocationPointOfInterestCategoryFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LocationPointOfInterestCategoryFeatureExtractor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationPointOfInterestCategoryFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_24871B6EC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventBody;
  swift_beginAccess();
  v3 = *(a1 + v2);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = v3;
    v7 = [v5 poiCategory];
    if (v7)
    {
      v8 = v7;
      v9 = sub_248730FF0();
      v11 = v10;

      v12 = MEMORY[0x277D837D0];
    }

    else
    {
      v9 = 0;
      v11 = 0;
      v12 = 0;
      v13[2] = 0;
    }

    v13[0] = v9;
    v13[1] = v11;
    v13[3] = v12;
    swift_beginAccess();
    sub_2486C6800(v13, 0xD00000000000002BLL, 0x80000002487397B0);
    swift_endAccess();
  }
}

id LocationPointOfInterestCategoryFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationPointOfInterestCategoryFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MADTextEmbedder.init(version:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24871B86C, 0, 0);
}

uint64_t sub_24871B86C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_248730DE0();
  v4 = [objc_opt_self() service];
  v5 = type metadata accessor for MADTextEmbedder();
  *(v3 + *(v5 + 20)) = v4;
  v6 = (v3 + *(v5 + 24));
  *v6 = v2;
  v6[1] = v1;
  v7 = v0[1];

  return v7();
}

uint64_t type metadata accessor for MADTextEmbedder()
{
  result = qword_27EEA6820;
  if (!qword_27EEA6820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MADTextEmbedder.embed(text:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24871B9B8, 0, 0);
}

uint64_t sub_24871B9B8()
{
  v2 = v0[2];
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5C70, &qword_248734E10);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_2487335F0;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_24871BA9C;
  v5 = v0[4];

  return MADTextEmbedder.embed(texts:)(v3);
}

uint64_t sub_24871BA9C(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_24871BBBC, 0, 0);
}

void sub_24871BBBC()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    if (!*(v1 + 16))
    {
      __break(1u);
      return;
    }

    v2 = *(v1 + 32);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 8);

  v3(v2);
}

uint64_t MADTextEmbedder.embed(texts:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_24871BC68, 0, 0);
}

uint64_t sub_24871BC68()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6818, &qword_248735D00);
  *v3 = v0;
  v3[1] = sub_24871BD74;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0x6574286465626D65, 0xED0000293A737478, sub_24871C390, v1, v4);
}

uint64_t sub_24871BD74()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24871BE8C, 0, 0);
}

uint64_t sub_24871BE8C()
{
  v1 = v0[2];
  if (!v1)
  {
    v2 = v0[4];
    v3 = sub_248730DD0();
    v4 = sub_2487313D0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2486BF000, v3, v4, "Failed at generating embeddings.", v5, 2u);
      MEMORY[0x24C1D8100](v5, -1, -1);
    }
  }

  v6 = v0[1];

  return v6(v1);
}

void sub_24871BF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a3;
  v42 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6840, qword_248735D60);
  v36 = *(v40 - 8);
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v40, v5);
  v35 = &v35 - v6;
  v7 = type metadata accessor for MADTextEmbedder();
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v10 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x277D26890]) init];
  [v11 setExtendedContextLength_];
  v12 = (a2 + *(v7 + 24));
  if (v12[1])
  {
    v13 = *v12;
    v14 = sub_248731060();
    v16 = v15;
    v17 = v14 == 3425357 && v15 == 0xE300000000000000;
    if (v17 || (v18 = v14, (sub_248731880() & 1) != 0))
    {

      v19 = 4;
    }

    else
    {
      if (v18 == 3490893 && v16 == 0xE300000000000000)
      {
      }

      else
      {
        v34 = sub_248731880();

        if ((v34 & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v19 = 5;
    }

    [v11 setVersion_];
  }

LABEL_9:
  v38 = *(a2 + *(v7 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5E98, &unk_248733730);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_248735CD0;
  *(v20 + 32) = v11;
  sub_2486CF4C4(0, &qword_27EEA6848, 0x277D268A8);
  v21 = v11;
  v37 = sub_248731230();

  v22 = sub_248731230();
  sub_2486F7314(a2, &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = v35;
  v23 = v36;
  v25 = v40;
  (*(v36 + 16))(v35, v42, v40);
  v26 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v27 = (v8 + *(v23 + 80) + v26) & ~*(v23 + 80);
  v28 = (v4 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  sub_24871D0D8(v10, v29 + v26);
  (*(v23 + 32))(v29 + v27, v24, v25);
  *(v29 + v28) = v21;
  aBlock[4] = sub_24871D13C;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24871CE04;
  aBlock[3] = &block_descriptor_4;
  v30 = _Block_copy(aBlock);
  v31 = v21;

  v32 = v37;
  [v38 performRequests:v37 text:v22 identifier:0 completionHandler:v30];
  _Block_release(v30);
}

void sub_24871C398(int a1, id a2, int a3, int a4, id a5)
{
  if (!a2)
  {
    if (a1 == -1 || (v13 = [a5 embeddingResults]) == 0)
    {
      v25 = sub_248730DD0();
      v26 = sub_2487313D0();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_2486BF000, v25, v26, "No results returned by MAD service.", v27, 2u);
        MEMORY[0x24C1D8100](v27, -1, -1);
      }

      v37 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6840, qword_248735D60);
      goto LABEL_31;
    }

    v14 = v13;
    v36 = sub_2486CF4C4(0, &qword_27EEA6850, 0x277D26898);
    v15 = sub_248731240();

    if (v15 >> 62)
    {
      v16 = sub_248731790();
      if (v16)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
LABEL_9:
        if (v16 < 1)
        {
          __break(1u);
          return;
        }

        v17 = 0;
        v18 = MEMORY[0x277D84F90];
        do
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x24C1D7600](v17, v15);
          }

          else
          {
            v19 = *(v15 + 8 * v17 + 32);
          }

          v20 = v19;
          sub_24871C7FC();
          if (v21)
          {
            v22 = v21;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v18 = sub_2486C4C64(0, v18[2] + 1, 1, v18);
            }

            v24 = v18[2];
            v23 = v18[3];
            if (v24 >= v23 >> 1)
            {
              v18 = sub_2486C4C64((v23 > 1), v24 + 1, 1, v18);
            }

            v18[2] = v24 + 1;
            v18[v24 + 4] = v22;
          }

          else
          {
          }

          ++v17;
        }

        while (v16 != v17);
        goto LABEL_27;
      }
    }

    v18 = MEMORY[0x277D84F90];
LABEL_27:

    v28 = sub_248730DD0();
    v29 = sub_2487313C0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v37 = v31;
      *v30 = 136315138;
      v32 = MEMORY[0x24C1D71D0](v15, v36);
      v34 = v33;

      v35 = sub_2486D3010(v32, v34, &v37);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_2486BF000, v28, v29, "Found result: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x24C1D8100](v31, -1, -1);
      MEMORY[0x24C1D8100](v30, -1, -1);
    }

    else
    {
    }

    v37 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6840, qword_248735D60);
LABEL_31:
    sub_248731310();
    return;
  }

  v6 = a2;
  v7 = sub_248730DD0();
  v8 = sub_2487313D0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = a2;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2486BF000, v7, v8, "Failed at calling MAD service: %@", v9, 0xCu);
    sub_2486EF19C(v10);
    MEMORY[0x24C1D8100](v10, -1, -1);
    MEMORY[0x24C1D8100](v9, -1, -1);
  }

  v37 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6840, qword_248735D60);
  sub_248731310();
}

void sub_24871C7FC()
{
  v1 = sub_248730DF0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248730DE0();
  v7 = [v0 embedding];
  v8 = [v7 data];

  v9 = sub_2487308C0();
  v11 = v10;

  v12 = [v0 embedding];
  v13 = [v12 type];

  v14 = [v0 embedding];
  v15 = [v14 count];

  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v16 = sub_248730DD0();
  v17 = sub_2487313C0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = v13;
    _os_log_impl(&dword_2486BF000, v16, v17, "Embedding type: %lu", v18, 0xCu);
    MEMORY[0x24C1D8100](v18, -1, -1);
  }

  if (v13 == 2)
  {
    v20 = v11 >> 62;
    if ((v11 >> 62) <= 1)
    {
      if (v20)
      {
        LODWORD(v21) = HIDWORD(v9) - v9;
        if (__OFSUB__(HIDWORD(v9), v9))
        {
LABEL_48:
          __break(1u);
          return;
        }

        v21 = v21;
      }

      else
      {
        v21 = BYTE6(v11);
      }

      goto LABEL_36;
    }

LABEL_19:
    if (v20 == 2)
    {
      v29 = *(v9 + 16);
      v28 = *(v9 + 24);
      _VF = __OFSUB__(v28, v29);
      v21 = v28 - v29;
      if (_VF)
      {
        __break(1u);
        goto LABEL_23;
      }
    }

    else
    {
      v21 = 0;
    }

LABEL_36:
    v42 = v21 / 4;
    sub_24871D610(v9, v11);
    v33 = sub_24871D538(v42, v9, v11, MEMORY[0x277D83A90], sub_24871D3E4);
    sub_2486CC7FC(v9, v11);
    goto LABEL_37;
  }

  if (v13 != 1)
  {
    v22 = sub_248730DD0();
    v23 = sub_2487313D0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2486BF000, v22, v23, "Embedding type not supported.", v24, 2u);
      MEMORY[0x24C1D8100](v24, -1, -1);
    }

    sub_2486CC7FC(v9, v11);

    (*(v2 + 8))(v6, v1);
    return;
  }

  v19 = v11 >> 62;
  v52 = v2;
  if ((v11 >> 62) <= 1)
  {
    if (!v19)
    {
      v20 = BYTE6(v11);
      goto LABEL_26;
    }

LABEL_23:
    LODWORD(v20) = HIDWORD(v9) - v9;
    if (!__OFSUB__(HIDWORD(v9), v9))
    {
      v20 = v20;
      goto LABEL_26;
    }

    goto LABEL_47;
  }

  if (v19 != 2)
  {
    v20 = 0;
    goto LABEL_26;
  }

  v26 = *(v9 + 16);
  v25 = *(v9 + 24);
  _VF = __OFSUB__(v25, v26);
  v20 = v25 - v26;
  if (_VF)
  {
    __break(1u);
    goto LABEL_19;
  }

LABEL_26:
  v30 = v20;
  sub_24871D610(v9, v11);
  v31 = sub_24871D538(v30 / 2, v9, v11, MEMORY[0x277D84DC8], sub_24871D2A0);
  sub_2486CC7FC(v9, v11);
  v32 = *(v31 + 16);
  if (v32)
  {
    v51 = v1;
    v53 = MEMORY[0x277D84F90];
    sub_2486DA360(0, v32, 0);
    v33 = v53;
    v34 = *(v53 + 16);
    v35 = 32;
    do
    {
      _H8 = *(v31 + v35);
      v53 = v33;
      v37 = *(v33 + 24);
      if (v34 >= v37 >> 1)
      {
        sub_2486DA360((v37 > 1), v34 + 1, 1);
        v33 = v53;
      }

      __asm { FCVT            S0, H8 }

      *(v33 + 16) = v34 + 1;
      *(v33 + 4 * v34 + 32) = _S0;
      v35 += 2;
      ++v34;
      --v32;
    }

    while (v32);

    v1 = v51;
    v2 = v52;
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
    v2 = v52;
  }

LABEL_37:
  v43 = *(v33 + 16);
  v44 = 32;
  do
  {
    if (!v43)
    {
      v50 = *(v2 + 8);

      v50(v6, v1);
      sub_2486CC7FC(v9, v11);

      return;
    }

    v45 = ~*(v33 + v44) & 0x7F800000;
    v44 += 4;
    --v43;
  }

  while (v45);

  v46 = sub_248730DD0();
  v47 = sub_2487313D0();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_2486BF000, v46, v47, "Found embedding with nan values. Return zeros embedding.", v48, 2u);
    MEMORY[0x24C1D8100](v48, -1, -1);
  }

  if (v15)
  {
    v49 = sub_248731290();
    *(v49 + 16) = v15;
    bzero((v49 + 32), 4 * v15);
  }

  sub_2486CC7FC(v9, v11);
  (*(v2 + 8))(v6, v1);
}