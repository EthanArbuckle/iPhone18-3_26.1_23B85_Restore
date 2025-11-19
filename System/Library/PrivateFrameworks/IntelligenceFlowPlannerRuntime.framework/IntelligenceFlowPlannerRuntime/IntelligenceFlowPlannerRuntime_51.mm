uint64_t sub_22C7D1FCC(void *a1, void *a2)
{
  v4 = sub_22C90952C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v46 = &v35 - v11;
  MEMORY[0x28223BE20](v10);
  v41 = &v35 - v12;
  v13 = a2[2];
  if (!v13)
  {
    return 1;
  }

  v14 = a1[2];
  if (!v14)
  {
    return 1;
  }

  if (v13 >= v14)
  {
    v15 = a1;
  }

  else
  {
    v15 = a2;
  }

  if (v13 < v14)
  {
    a2 = a1;
  }

  v16 = v15 + 7;
  v17 = 1 << *(v15 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v15[7];
  v20 = (v17 + 63) >> 6;
  v44 = v5 + 16;
  v39 = v5 + 32;
  v42 = a2 + 7;
  v21 = (v5 + 8);

  v45 = a2;

  v23 = 0;
  v36 = v20;
  v37 = v15 + 7;
  v38 = v5;
  v40 = v15;
  if (v19)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v20)
    {

      return 1;
    }

    v19 = v16[v24];
    ++v23;
    if (v19)
    {
      v23 = v24;
      do
      {
LABEL_16:
        v25 = v15[6];
        v43 = *(v5 + 72);
        v26 = *(v5 + 16);
        v27 = v41;
        v26(v41, v25 + v43 * (__clz(__rbit64(v19)) | (v23 << 6)), v4);
        (*(v5 + 32))(v46, v27, v4);
        if (v45[2])
        {
          v28 = v45;
          v29 = v45[5];
          sub_22C7E4310(&qword_28142FA80, MEMORY[0x277D72D58]);
          v30 = sub_22C909F7C();
          v31 = ~(-1 << *(v28 + 32));
          while (1)
          {
            v32 = v30 & v31;
            if (((*(v42 + (((v30 & v31) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v30 & v31)) & 1) == 0)
            {
              break;
            }

            v26(v9, v45[6] + v32 * v43, v4);
            sub_22C7E4310(&qword_28142FA78, MEMORY[0x277D72D58]);
            v33 = sub_22C90A0BC();
            v34 = *v21;
            (*v21)(v9, v4);
            v30 = v32 + 1;
            if (v33)
            {

              v34(v46, v4);
              return 0;
            }
          }
        }

        v19 &= v19 - 1;
        result = (*v21)(v46, v4);
        v16 = v37;
        v5 = v38;
        v15 = v40;
        v20 = v36;
      }

      while (v19);
    }
  }

  __break(1u);
  return result;
}

void sub_22C7D2380()
{
  sub_22C36BA7C();
  v87 = v1;
  v82 = v3;
  v83 = v2;
  v5 = v4;
  v6 = sub_22C9063DC();
  v7 = sub_22C369824(v6);
  v85 = v8;
  v86 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C3698E4();
  v81[1] = v11;
  sub_22C369930();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v81 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v81 - v17;
  MEMORY[0x28223BE20](v16);
  sub_22C36BA64();
  v81[0] = v19;
  sub_22C36BA0C();
  v84 = sub_22C908AEC();
  v20 = sub_22C369824(v84);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C369ABC();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  sub_22C36BA64();
  v30 = v29;
  sub_22C36BA0C();
  v31 = sub_22C903E9C();
  v32 = sub_22C369824(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22C377578();
  type metadata accessor for QueryDecorator();
  (*(v34 + 104))(v0, *MEMORY[0x277D1F178], v31);
  v37 = sub_22C37D894(v5, v0);
  v38 = *(v34 + 8);
  v39 = sub_22C3806B8();
  v40(v39);
  if (!v37)
  {
    sub_22C90400C();
    v46 = sub_22C9063CC();
    v47 = sub_22C90AABC();
    if (sub_22C369E90(v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      sub_22C6B01C8();
      _os_log_impl(v49, v50, v51, v52, v48, 2u);
      sub_22C372FB0();
    }

    (*(v85 + 8))(v15, v86);
    goto LABEL_14;
  }

  v41 = v5[13];
  if (!v41)
  {
    sub_22C90400C();
    v53 = sub_22C9063CC();
    v54 = sub_22C90AABC();
    if (sub_22C369E90(v54))
    {
      v55 = sub_22C36FB44();
      v56 = sub_22C370060();
      v88 = v56;
      *v55 = 136315138;
      sub_22C36EE00();
      *(v55 + 4) = sub_22C7E4B34(v57, v58);
      sub_22C6B01C8();
      _os_log_impl(v59, v60, v61, v62, v55, 0xCu);
      sub_22C36FF94(v56);
      sub_22C372A84();
      sub_22C372FB0();
    }

    (*(v85 + 8))(v18, v86);
    goto LABEL_14;
  }

  v42 = v22;
  (*(v22 + 16))(v27, v41 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime16ToolboxResources_toolbox, v84);
  v43 = *(v22 + 32);
  v44 = sub_22C50B578();
  v45(v44);
  if (!v83)
  {
    v63 = v81[0];
    sub_22C90400C();
    v64 = sub_22C9063CC();
    v65 = sub_22C90AABC();
    if (sub_22C369E90(v65))
    {
      v66 = sub_22C36FB44();
      v67 = sub_22C370060();
      v88 = v67;
      *v66 = 136315138;
      sub_22C36EE00();
      *(v66 + 4) = sub_22C7E4B34(v68, v69);
      sub_22C6B01C8();
      _os_log_impl(v70, v71, v72, v73, v66, 0xCu);
      sub_22C36FF94(v67);
      sub_22C36D69C();
      sub_22C372A84();
    }

    (*(v85 + 8))(v63, v86);
    v74 = *(v42 + 8);
    v75 = sub_22C36FC2C();
    v76(v75);
    goto LABEL_14;
  }

  v77 = sub_22C7BA3D0(v5, v30, v83, v82);
  v78 = *(v22 + 8);
  v79 = sub_22C36FC2C();
  v80(v79);
  if (!v77)
  {
LABEL_14:
  }

  sub_22C36CC48();
}

uint64_t sub_22C7D28E4()
{
  sub_22C369980();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = sub_22C9063DC();
  v1[7] = v6;
  sub_22C3699B8(v6);
  v1[8] = v7;
  v9 = *(v8 + 64);
  v1[9] = sub_22C3856B8();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v10 = sub_22C908AEC();
  v1[13] = v10;
  sub_22C3699B8(v10);
  v1[14] = v11;
  v13 = *(v12 + 64);
  v1[15] = sub_22C3856B8();
  v1[16] = swift_task_alloc();
  v14 = sub_22C903E9C();
  v1[17] = v14;
  sub_22C3699B8(v14);
  v1[18] = v15;
  v17 = *(v16 + 64);
  v1[19] = sub_22C3699D4();
  v18 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_22C7D2A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_22C372634();
  a21 = v23;
  a22 = v24;
  sub_22C37F038();
  a20 = v22;
  v26 = v22[18];
  v25 = v22[19];
  v27 = v22[17];
  v28 = v22[2];
  type metadata accessor for QueryDecorator();
  (*(v26 + 104))(v25, *MEMORY[0x277D1F178], v27);
  v29 = sub_22C36BBCC();
  LOBYTE(v28) = sub_22C37D894(v29, v30);
  v31 = *(v26 + 8);
  v32 = sub_22C36BAFC();
  v33(v32);
  if (v28)
  {
    v34 = *(v22[2] + 104);
    if (v34)
    {
      v35 = v22[16];
      v36 = v22[14];
      v37 = v22[3];
      (*(v36 + 16))(v22[15], v34 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime16ToolboxResources_toolbox, v22[13]);
      v38 = *(v36 + 32);
      v39 = sub_22C36BBCC();
      v40(v39);
      if (v37)
      {
        v41 = v22[6];
        v42 = v22[3];
        v43 = swift_task_alloc();
        v22[20] = v43;
        *v43 = v22;
        v43[1] = sub_22C7D2EA4;
        v44 = v22[16];
        v45 = v22[4];
        v46 = v22[5];
        v47 = v22[2];
        sub_22C36D5F8();

        return sub_22C7BC5B0();
      }

      v77 = v22[11];
      sub_22C90400C();
      v78 = sub_22C9063CC();
      v79 = sub_22C90AABC();
      v80 = os_log_type_enabled(v78, v79);
      v81 = v22[16];
      v82 = v22[13];
      v83 = v22[14];
      v84 = v22[11];
      v86 = v22[7];
      v85 = v22[8];
      if (v80)
      {
        sub_22C36FB44();
        a10 = v81;
        v87 = sub_22C385814();
        a11 = v87;
        *v81 = 136315138;
        sub_22C36EE00();
        *(v81 + 4) = sub_22C36F9F4(0xD00000000000004ELL, v88, &a11);
        _os_log_impl(&dword_22C366000, v78, v79, "%s resolveProtocolsToTools not run (inputs.spans = nil)", v81, 0xCu);
        sub_22C36FF94(v87);
        sub_22C37B09C();
        sub_22C36C30C();

        v89 = *(v85 + 8);
      }

      else
      {

        v92 = *(v85 + 8);
      }

      v90 = sub_22C36ECB4();
      v91(v90);
      (*(v83 + 8))(v81, v82);
    }

    else
    {
      v62 = v22[10];
      sub_22C90400C();
      v63 = sub_22C9063CC();
      v64 = sub_22C90AABC();
      v65 = sub_22C370048(v64);
      v66 = v22[10];
      v67 = v22[7];
      v68 = v22[8];
      if (v65)
      {
        v69 = sub_22C36FB44();
        v70 = sub_22C370060();
        a11 = v70;
        *v69 = 136315138;
        sub_22C36EE00();
        *(v69 + 4) = sub_22C36F9F4(0xD00000000000004ELL, v71, &a11);
        sub_22C7E4DDC(&dword_22C366000, v72, v73, "%s not run (no toolbox)");
        sub_22C36FF94(v70);
        sub_22C370510();
        sub_22C3699EC();
      }

      v74 = *(v68 + 8);
      v75 = sub_22C36BAFC();
      v76(v75);
    }

    v93 = v22[5];
  }

  else
  {
    v50 = v22[9];
    sub_22C90400C();
    v51 = sub_22C9063CC();
    v52 = sub_22C90AABC();
    if (sub_22C370048(v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_22C366000, v51, v52, "runResolveProtocolsToTools skipped as Joint Resolver is not enabled or requested", v53, 2u);
      sub_22C372FB0();
    }

    v55 = v22[8];
    v54 = v22[9];
    v56 = v22[7];
    v57 = v22[5];

    v58 = *(v55 + 8);
    v59 = sub_22C36BAFC();
    v60(v59);

    v61 = v22[5];
  }

  v94 = v22[19];
  v96 = v22[15];
  v95 = v22[16];
  v98 = v22[11];
  v97 = v22[12];
  v100 = v22[9];
  v99 = v22[10];

  sub_22C36D5E0();
  sub_22C36D5F8();

  return v103(v101, v102, v103, v104, v105, v106, v107, v108, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_22C7D2EA4()
{
  v2 = *v1;
  sub_22C36D994();
  *v4 = v3;
  v5 = *(v2 + 160);
  v6 = *v1;
  *(v3 + 168) = v7;
  *(v3 + 176) = v0;

  v8 = *(v2 + 48);
  if (v0)
  {
    v9 = sub_22C7D3218;
  }

  else
  {
    v9 = sub_22C7D2FD0;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

void sub_22C7D2FD0()
{
  v1 = v0[21];
  if (v1)
  {
    v2 = v0[12];
    sub_22C90400C();

    v3 = sub_22C9063CC();
    v4 = sub_22C90AABC();

    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[16];
    v7 = v0[13];
    v8 = v0[14];
    v10 = v0[7];
    v9 = v0[8];
    if (v5)
    {
      v45 = v0[12];
      v11 = sub_22C383050();
      v47[0] = sub_22C37A180();
      *v11 = 136315394;
      sub_22C36EE00();
      *(v11 + 4) = sub_22C36F9F4(0xD00000000000004ELL, v12, v47);
      *(v11 + 12) = 2080;
      static QueryDecorationLoggingUtils.generateReadableToolList(_:)(v1, v13, v14, v15, v16, v17, v18, v19, v41, v43, v10, v45, v47[0], v47[1], v47[2], v47[3], v47[4], v47[5], v47[6], v47[7]);
      v42 = v7;
      v22 = sub_22C36F9F4(v20, v21, v47);

      *(v11 + 14) = v22;
      _os_log_impl(&dword_22C366000, v3, v4, "%s protocol round-trip optimized tools:\n%s", v11, 0x16u);
      swift_arrayDestroy();
      sub_22C3699EC();
      sub_22C37B09C();

      (*(v9 + 8))(v46, v44);
      (*(v8 + 8))(v6, v42);
    }

    else
    {

      v25 = *(v9 + 8);
      v26 = sub_22C36CC9C();
      v27(v26);
      v28 = *(v8 + 8);
      v29 = sub_22C37170C();
      v31(v29, v30);
    }
  }

  else
  {
    v23 = v0[5];
    (*(v0[14] + 8))(v0[16], v0[13]);

    v24 = v0[5];
  }

  v32 = v0[19];
  v34 = v0[15];
  v33 = v0[16];
  v36 = v0[11];
  v35 = v0[12];
  v38 = v0[9];
  v37 = v0[10];

  sub_22C36D5E0();
  sub_22C36EC40();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_22C7D3218()
{
  sub_22C3743E4();
  v1 = v0[19];
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  (*(v0[14] + 8))(v0[16], v0[13]);

  sub_22C369A24();
  v8 = v0[22];

  return v7();
}

void sub_22C7D32E4()
{
  sub_22C36BA7C();
  v6 = v5;
  v8 = v7;
  v57 = sub_22C9039FC();
  v9 = sub_22C369824(v57);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C369ABC();
  sub_22C387D8C();
  MEMORY[0x28223BE20](v14);
  sub_22C7E4D28();
  v15 = sub_22C9063DC();
  v16 = sub_22C369824(v15);
  v56 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  sub_22C37BDA4();
  v20 = sub_22C3A5908(&qword_27D9BDA90, &unk_22C91A460);
  sub_22C369914(v20);
  v22 = *(v21 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v23);
  sub_22C7E47F4();
  v24 = sub_22C9039DC();
  sub_22C58B384(v24, v3);

  sub_22C90361C();
  v25 = sub_22C7E4854();
  sub_22C36D0A8(v25, 1, v4);
  if (v26)
  {
    v55 = v15;
    sub_22C36DD28(v3, &qword_27D9BDA90, &unk_22C91A460);
    sub_22C90407C();
    v27 = *(v11 + 16);
    v27(v2, v6, v57);
    v28 = sub_22C9063CC();
    v29 = sub_22C90AADC();
    if (sub_22C370048(v29))
    {
      v30 = sub_22C383050();
      v58 = sub_22C37A180();
      *v30 = 136315394;
      sub_22C36EE00();
      *(v30 + 4) = sub_22C36F9F4(0xD000000000000017, v31, &v58);
      *(v30 + 12) = 2080;
      v27(v0, v2, v57);
      sub_22C37BD98();
      v32 = sub_22C90A1AC();
      v34 = v33;
      v35 = *(v11 + 8);
      v36 = sub_22C36D384();
      v37(v36);
      v38 = sub_22C36F9F4(v32, v34, &v58);

      *(v30 + 14) = v38;
      sub_22C7E4B18(&dword_22C366000, v39, v29, "[%s] Failed to get spanEntityId (entity: %s)");
      swift_arrayDestroy();
      sub_22C3699EC();
      sub_22C36C30C();
    }

    else
    {

      v52 = *(v11 + 8);
      v53 = sub_22C36D384();
      v54(v53);
    }

    (*(v56 + 8))(v1, v55);
    sub_22C3A5908(&qword_27D9BB678, &unk_22C926970);
    v48 = sub_22C381B6C();
  }

  else
  {
    v40 = sub_22C9035FC();
    v42 = v41;
    v43 = *(*(v4 - 8) + 8);
    v44 = sub_22C36CC9C();
    v45(v44);
    v46 = sub_22C3A5908(&qword_27D9BB678, &unk_22C926970);
    v47 = (v8 + *(v46 + 48));
    (*(v11 + 16))(v8, v6, v57);
    *v47 = v40;
    v47[1] = v42;
    sub_22C36BECC();
    v51 = v46;
  }

  sub_22C36C640(v48, v49, v50, v51);
  sub_22C36CC48();
}

uint64_t QueryDecorationToolSelectorService.deinit()
{
  sub_22C36FF94((v0 + 112));
  sub_22C36FF94((v0 + 152));
  sub_22C36DD28(v0 + 192, &qword_27D9C0278, &qword_22C9267A0);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t QueryDecorationToolSelectorService.__deallocating_deinit()
{
  QueryDecorationToolSelectorService.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22C7D3734(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = sub_22C3A5908(&qword_27D9BABD8, &unk_22C90FA30);
  v3[16] = v4;
  v5 = *(v4 - 8);
  v3[17] = v5;
  v6 = *(v5 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v7 = *(type metadata accessor for QueryDecorationTuple(0) - 8);
  v3[20] = v7;
  v8 = *(v7 + 64) + 15;
  v3[21] = swift_task_alloc();
  v9 = sub_22C9063DC();
  v3[22] = v9;
  v10 = *(v9 - 8);
  v3[23] = v10;
  v11 = *(v10 + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C7D38D0, 0, 0);
}

uint64_t sub_22C7D38D0()
{
  sub_22C3743E4();
  v21 = v0;
  v1 = v0[25];
  sub_22C90407C();
  v2 = sub_22C9063CC();
  v3 = sub_22C90AACC();
  v4 = sub_22C370048(v3);
  v5 = v0[25];
  v6 = v0[22];
  v7 = v0[23];
  if (v4)
  {
    v8 = sub_22C36FB44();
    v9 = sub_22C370060();
    v20 = v9;
    *v8 = 136315138;
    sub_22C36EE00();
    *(v8 + 4) = sub_22C36F9F4(0xD000000000000017, v10, &v20);
    sub_22C7E4DDC(&dword_22C366000, v11, v12, "ToolCandidateRanker %s has started");
    sub_22C36FF94(v9);
    sub_22C370510();
    sub_22C3699EC();
  }

  v13 = *(v7 + 8);
  v14 = sub_22C36BAFC();
  v13(v14);
  v0[26] = v13;
  v15 = swift_task_alloc();
  v0[27] = v15;
  *v15 = v0;
  v15[1] = sub_22C7D3A30;
  v16 = v0[14];
  v17 = v0[15];
  v18 = v0[13];

  return sub_22C7C01B4();
}

uint64_t sub_22C7D3A30()
{
  sub_22C36D5EC();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 216);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  v9 = *(v3 + 32);
  *(v3 + 232) = *(v3 + 16);
  *(v3 + 224) = v0;
  *(v3 + 248) = v9;
  *(v3 + 264) = *(v3 + 48);

  if (v0)
  {
    v11 = *(v3 + 192);
    v10 = *(v3 + 200);
    v12 = *(v3 + 168);
    v15 = v3 + 144;
    v13 = *(v3 + 144);
    v14 = *(v15 + 8);

    sub_22C369A24();
    sub_22C7E4ED0();

    __asm { BRAA            X1, X16 }
  }

  sub_22C36BB08();
  sub_22C7E4ED0();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

void sub_22C7D3B9C()
{
  v65 = v0;
  v1 = *(v0 + 248);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v4 = *(v0 + 256);
    v3 = *(v0 + 264);
    v5 = *(v0 + 224);
    *(v0 + 64) = *(v0 + 232);
    *(v0 + 80) = v1;
    *(v0 + 88) = v4;
    *(v0 + 96) = v3;
    v6 = sub_22C745950(0);
    if (v5)
    {

      v8 = *(v0 + 192);
      v7 = *(v0 + 200);
      v9 = *(v0 + 168);
      v11 = *(v0 + 144);
      v10 = *(v0 + 152);

      sub_22C369A24();
      sub_22C36EC40();

      __asm { BRAA            X1, X16 }
    }

    v22 = v6;
    v23 = *(v0 + 192);

    sub_22C90407C();
    v24 = sub_22C9063CC();
    v25 = sub_22C90AACC();
    v26 = sub_22C370048(v25);
    v27 = *(v0 + 208);
    v28 = *(v0 + 184);
    v29 = *(v0 + 192);
    v30 = *(v0 + 176);
    if (v26)
    {
      v62 = *(v0 + 208);
      v31 = sub_22C36FB44();
      v60 = v29;
      v32 = sub_22C370060();
      v64[0] = v32;
      *v31 = 136315138;
      sub_22C36EE00();
      *(v31 + 4) = sub_22C36F9F4(0xD000000000000017, v33, v64);
      _os_log_impl(&dword_22C366000, v24, v25, "%s sorting tuples", v31, 0xCu);
      sub_22C36FF94(v32);
      sub_22C3699EC();
      sub_22C37B09C();

      v62(v60, v30);
    }

    else
    {

      v27(v29, v30);
    }

    v34 = *(v0 + 112);

    v64[0] = sub_22C7E3A84(v34);
    sub_22C7DDA08(v64, v22);

    v35 = v64[0];
    v36 = *(v64[0] + 16);
    if (v36)
    {
      v37 = *(v0 + 160);
      v38 = *(v0 + 136);
      v63 = *(v0 + 128);
      v64[0] = v2;
      sub_22C3B7CE8(0, v36, 0);
      v39 = v64[0];
      v40 = *(v38 + 80);
      sub_22C36BA94();
      v42 = v35 + v41;
      v61 = *(v38 + 72);
      do
      {
        v43 = *(v0 + 168);
        v44 = *(v0 + 144);
        sub_22C4E719C(v42, *(v0 + 152), &qword_27D9BABD8, &unk_22C90FA30);
        v45 = sub_22C36CC9C();
        sub_22C4E7208(v45, v46, &qword_27D9BABD8, &unk_22C90FA30);
        v47 = *(v63 + 48);
        sub_22C38B26C();
        sub_22C7E4260(v44 + v48, v43);
        v64[0] = v39;
        v50 = *(v39 + 16);
        v49 = *(v39 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_22C369AB0(v49);
          sub_22C379C28();
          sub_22C3B7CE8(v56, v57, v58);
          v39 = v64[0];
        }

        v51 = *(v0 + 168);
        *(v39 + 16) = v50 + 1;
        v52 = *(v37 + 80);
        sub_22C36BA94();
        v53 = *(v37 + 72);
        sub_22C38B26C();
        sub_22C7E4260(v54, v55);
        v42 += v61;
        --v36;
      }

      while (v36);
    }

    v59 = *(v0 + 272);
  }

  v15 = *(v0 + 192);
  v14 = *(v0 + 200);
  v16 = *(v0 + 168);
  v18 = *(v0 + 144);
  v17 = *(v0 + 152);

  v19 = *(v0 + 8);
  sub_22C36BA00();
  sub_22C36EC40();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_22C7D3F98()
{
  sub_22C36D5EC();
  sub_22C7E4CB4();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v1[1] = sub_22C46BC08;
  sub_22C7E47E4();
  sub_22C7E4ED0();

  return sub_22C7C9088(v3, v4, v5, v6, v7);
}

uint64_t sub_22C7D4038()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v8 = v0[8];
  v7 = v0[9];
  v9 = swift_task_alloc();
  v10 = sub_22C36D860(v9);
  *v10 = v11;
  v10[1] = sub_22C46BC08;
  v12 = sub_22C7E47E4();

  return sub_22C7C9568(v12, v13, v2, v3, v4, v5, v6, v8);
}

uint64_t sub_22C7D4114(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_22C7D4160()
{
  sub_22C7E4DA4();
  v6 = v0;
  sub_22C7E4A08();
  v9 = v0[1];
  v7 = v0 + 1;
  v8 = v9;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22C7E43A4();
    sub_22C3B5E2C();
    v8 = *v7;
  }

  sub_22C3745CC();
  if (v11)
  {
    sub_22C37AD30();
    sub_22C3B5E2C();
    v8 = *v7;
  }

  *(v8 + 16) = v2;
  v12 = v8 + 16 * v5;
  *(v12 + 32) = v4;
  *(v12 + 40) = v3;
  sub_22C36CB84();
  if (!v7)
  {
    if (v5 <= 0xE)
    {
      goto LABEL_17;
    }

LABEL_15:
    MEMORY[0x2318B0670](v2);
    sub_22C7E4494();
    sub_22C7D6000();
    goto LABEL_17;
  }

  sub_22C386B50();
  sub_22C7E4878();
  if (v13 <= v5)
  {
    sub_22C38C4C8();
    if (!v14 & v11)
    {
      v14 = 0;
    }

    else
    {
      v14 = v1 == 0;
    }

    if (v14)
    {

      *v6 = 0;
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  sub_22C7D5DC0();
  if (*v6)
  {
    sub_22C37FAE8(*v6);
LABEL_17:
    sub_22C7E4A78();
    return;
  }

  __break(1u);
}

void sub_22C7D4268()
{
  sub_22C36BA7C();
  sub_22C385800();
  v6 = sub_22C90644C();
  v7 = sub_22C369824(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C377578();
  v10 = sub_22C7E44A4();
  v11(v10);
  v12 = sub_22C7E457C();
  *v1 = v4;
  if ((v12 & 1) == 0)
  {
    v13 = sub_22C7E43A4();
    sub_22C3B647C(v13, v14, v15);
    v16 = *v1;
  }

  sub_22C7E47C4();
  if (v17)
  {
    sub_22C375CCC();
    sub_22C3B647C(v22, v23, v24);
    v25 = *v1;
  }

  v18 = sub_22C3769FC();
  v19(v18);
  sub_22C36CB84();
  if (!v1)
  {
    if (v5 <= 0xE)
    {
      goto LABEL_15;
    }

LABEL_14:
    MEMORY[0x2318B0670](v3);
    sub_22C37B0E4();
    sub_22C7D5F0C();
    goto LABEL_15;
  }

  sub_22C38153C();
  sub_22C7E4878();
  if (v20 <= v5)
  {
    sub_22C386010();
    if (!(!v21 & v17) && !v2)
    {

      *v0 = 0;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  sub_22C7D5DC0();
  if (*v0)
  {
    sub_22C37FAE8(*v0);
LABEL_15:
    sub_22C36CC48();
    return;
  }

  __break(1u);
}

void sub_22C7D4404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v12 = v4[1];
  v10 = v4 + 1;
  v11 = v12;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = *(v11 + 16);
    sub_22C36D270();
    sub_22C3B6540();
    v11 = *v10;
  }

  v15 = *(v11 + 16);
  if (v15 >= *(v11 + 24) >> 1)
  {
    sub_22C37AD30();
    sub_22C3B6540();
    v11 = *v10;
  }

  *(v11 + 16) = v15 + 1;
  v16 = (v11 + 24 * v15);
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a3;
  v5[1] = v11;
  if (!*v5)
  {
    if (v15 <= 0xE)
    {
      return;
    }

    goto LABEL_15;
  }

  sub_22C386B50();
  sub_22C7E4878();
  if (v17 <= v15)
  {
    sub_22C386010();
    if (!v19 & v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = a4 == 0;
    }

    if (v19)
    {

      *v5 = 0;
      return;
    }

LABEL_15:
    MEMORY[0x2318B0670](v15 + 1);
    sub_22C7E4494();
    sub_22C7D6000();
    return;
  }

  sub_22C7D5DC0();
  if (*v5)
  {
    sub_22C37FAE8(*v5);
  }

  else
  {
    __break(1u);
  }
}

void sub_22C7D4550()
{
  sub_22C3BDA38();
  v7 = sub_22C385800();
  v8 = type metadata accessor for PromptTreeIdentifier(v7);
  v9 = sub_22C3699B8(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C377578();
  sub_22C375B80();
  v12 = sub_22C372FA4();
  sub_22C7E4208(v12, v13);
  v14 = sub_22C7E457C();
  *v1 = v5;
  if ((v14 & 1) == 0)
  {
    sub_22C7E43A4();
    sub_22C3B663C();
    v15 = *v1;
  }

  sub_22C3745CC();
  if (v16)
  {
    sub_22C37AD30();
    sub_22C3B663C();
    v20 = *v1;
  }

  sub_22C377728();
  sub_22C7E4260(v4, v17);
  sub_22C36CB84();
  if (!v1)
  {
    if (v6 <= 0xE)
    {
      goto LABEL_15;
    }

LABEL_14:
    MEMORY[0x2318B0670](v3);
    sub_22C7E4494();
    sub_22C7D5EC8();
    goto LABEL_15;
  }

  sub_22C7E453C();
  sub_22C7E4878();
  if (v18 <= v6)
  {
    sub_22C38C4C8();
    if (!(!v19 & v16) && !v2)
    {

      *v0 = 0;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  sub_22C7D5DC0();
  if (*v0)
  {
    sub_22C37FAE8(*v0);
LABEL_15:
    sub_22C3BDA24();
    return;
  }

  __break(1u);
}

void sub_22C7D46C0()
{
  sub_22C7E4DA4();
  v3 = sub_22C7E4AF4();
  *v1 = v2;
  if ((v3 & 1) == 0)
  {
    v4 = *(v2 + 16);
    sub_22C36D270();
    sub_22C3B66A4();
    v2 = *v1;
  }

  v5 = *(v2 + 16);
  if (v5 >= *(v2 + 24) >> 1)
  {
    sub_22C375CCC();
    sub_22C3B66A4();
    v9 = *v1;
  }

  sub_22C7E4A60();
  if (!v1)
  {
    if (v5 <= 0xE)
    {
      sub_22C7E4A78();

      return;
    }

LABEL_15:
    MEMORY[0x2318B0670](v5 + 1);

    sub_22C7E4CA0();
    sub_22C7D5EC8();
    goto LABEL_20;
  }

  sub_22C386B50();
  sub_22C7E4878();
  if (v6 <= v5)
  {
    if (v5 <= 0xE && (v1[3] & 0x3F) == 0)
    {

      *v0 = 0;
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  sub_22C7D5DC0();
  if (*v0)
  {
    sub_22C7E4B50(*v0);
LABEL_20:
    sub_22C7E4A78();
    return;
  }

  __break(1u);
}

void sub_22C7D47FC()
{
  sub_22C7E4DA4();
  v6 = v0;
  sub_22C7E4A08();
  v9 = v0[1];
  v7 = v0 + 1;
  v8 = v9;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22C7E43A4();
    sub_22C3B66E0();
    v8 = *v7;
  }

  sub_22C3745CC();
  if (v11)
  {
    sub_22C37AD30();
    sub_22C3B66E0();
    v8 = *v7;
  }

  *(v8 + 16) = v2;
  v12 = v8 + 16 * v5;
  *(v12 + 32) = v4;
  *(v12 + 40) = v3;
  sub_22C36CB84();
  if (!v7)
  {
    if (v5 <= 0xE)
    {
      goto LABEL_17;
    }

LABEL_15:
    MEMORY[0x2318B0670](v2);
    sub_22C7E4494();
    sub_22C7D6000();
    goto LABEL_17;
  }

  sub_22C386B50();
  sub_22C7E4878();
  if (v13 <= v5)
  {
    sub_22C38C4C8();
    if (!v14 & v11)
    {
      v14 = 0;
    }

    else
    {
      v14 = v1 == 0;
    }

    if (v14)
    {

      *v6 = 0;
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  sub_22C7D5DC0();
  if (*v6)
  {
    sub_22C37FAE8(*v6);
LABEL_17:
    sub_22C7E4A78();
    return;
  }

  __break(1u);
}

void sub_22C7D4904(uint64_t a1)
{
  v2 = v1;
  v6 = v1[1];
  v4 = v1 + 1;
  v5 = v6;
  sub_22C4B87A4(a1, v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v5 + 16);
    sub_22C36D270();
    sub_22C3B6810();
    v5 = *v4;
  }

  v9 = *(v5 + 16);
  if (v9 >= *(v5 + 24) >> 1)
  {
    sub_22C37AD30();
    sub_22C3B6810();
    v5 = *v4;
  }

  *(v5 + 16) = v9 + 1;
  v10 = v5 + 40 * v9;
  v11 = *a1;
  v12 = *(a1 + 16);
  *(v10 + 64) = *(a1 + 32);
  *(v10 + 32) = v11;
  *(v10 + 48) = v12;
  v2[1] = v5;
  v13 = *v2;
  if (!*v2)
  {
    if (v9 <= 0xE)
    {
      return;
    }

    goto LABEL_15;
  }

  sub_22C386B50();
  sub_22C7E4878();
  if (v14 <= v9)
  {
    if (v9 <= 0xE && (*(v13 + 24) & 0x3FLL) == 0)
    {

      *v2 = 0;
      return;
    }

LABEL_15:
    MEMORY[0x2318B0670](v9 + 1);
    sub_22C7E4494();
    sub_22C7D6000();
    return;
  }

  sub_22C7D5DC0();
  if (*v2)
  {
    sub_22C37FAE8(*v2);
  }

  else
  {
    __break(1u);
  }
}

void sub_22C7D4A48()
{
  sub_22C3BDA38();
  v7 = sub_22C385800();
  v8 = type metadata accessor for _PromptToolData(v7);
  v9 = sub_22C3699B8(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C377578();
  v12 = sub_22C372FA4();
  sub_22C7E4208(v12, v13);
  v14 = sub_22C7E457C();
  *v1 = v5;
  if ((v14 & 1) == 0)
  {
    v15 = sub_22C7E43A4();
    sub_22C3B6914(v15, v16, v17);
    v18 = *v1;
  }

  sub_22C3745CC();
  if (v19)
  {
    sub_22C37AD30();
    sub_22C3B6914(v23, v24, v25);
    v26 = *v1;
  }

  sub_22C377728();
  sub_22C7E4260(v4, v20);
  sub_22C36CB84();
  if (!v1)
  {
    if (v6 <= 0xE)
    {
      goto LABEL_15;
    }

LABEL_14:
    MEMORY[0x2318B0670](v3);
    sub_22C37B0E4();
    sub_22C7D5FD0();
    goto LABEL_15;
  }

  sub_22C7E453C();
  sub_22C7E4878();
  if (v21 <= v6)
  {
    sub_22C38C4C8();
    if (!(!v22 & v19) && !v2)
    {

      *v0 = 0;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  sub_22C7D5DC0();
  if (*v0)
  {
    sub_22C37FAE8(*v0);
LABEL_15:
    sub_22C3BDA24();
    return;
  }

  __break(1u);
}

void sub_22C7D4BE0()
{
  sub_22C36BA7C();
  sub_22C385800();
  v6 = sub_22C90430C();
  v7 = sub_22C369824(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C377578();
  v10 = sub_22C7E44A4();
  v11(v10);
  v12 = sub_22C7E457C();
  *v1 = v4;
  if ((v12 & 1) == 0)
  {
    v13 = sub_22C7E43A4();
    sub_22C3B6BF8(v13, v14, v15);
    v16 = *v1;
  }

  sub_22C7E47C4();
  if (v17)
  {
    sub_22C375CCC();
    sub_22C3B6BF8(v22, v23, v24);
    v25 = *v1;
  }

  v18 = sub_22C3769FC();
  v19(v18);
  sub_22C36CB84();
  if (!v1)
  {
    if (v5 <= 0xE)
    {
      goto LABEL_15;
    }

LABEL_14:
    MEMORY[0x2318B0670](v3);
    sub_22C37B0E4();
    sub_22C7D5F0C();
    goto LABEL_15;
  }

  sub_22C38153C();
  sub_22C7E4878();
  if (v20 <= v5)
  {
    sub_22C386010();
    if (!(!v21 & v17) && !v2)
    {

      *v0 = 0;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  sub_22C7D5DC0();
  if (*v0)
  {
    sub_22C37FAE8(*v0);
LABEL_15:
    sub_22C36CC48();
    return;
  }

  __break(1u);
}

void sub_22C7D4D7C()
{
  sub_22C3BDA38();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  sub_22C3699B8(v7);
  v9 = *(v8 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = sub_22C372FA4();
  sub_22C4E719C(v13, v14, &qword_27D9BB0C0, &qword_22C90D960);
  v15 = sub_22C7E457C();
  *v6 = &qword_22C90D960;
  if ((v15 & 1) == 0)
  {
    v16 = sub_22C7E43A4();
    sub_22C3B6D28(v16, v17, v18);
    v19 = *v6;
  }

  sub_22C3745CC();
  if (v20)
  {
    sub_22C37AD30();
    sub_22C3B6D28(v24, v25, v26);
    v27 = *v6;
  }

  sub_22C377728();
  sub_22C4E7208(v12, v21, &qword_27D9BB0C0, &qword_22C90D960);
  sub_22C36CB84();
  if (!v6)
  {
    if (v1 <= 0xE)
    {
      goto LABEL_15;
    }

LABEL_14:
    MEMORY[0x2318B0670](&qword_27D9BB0C0);
    sub_22C7E4494();
    sub_22C7D5EC8();
    goto LABEL_15;
  }

  sub_22C7E453C();
  sub_22C7E4878();
  if (v22 <= v1)
  {
    sub_22C38C4C8();
    if (!(!v23 & v20) && !v4)
    {

      *v2 = 0;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  sub_22C7D5DC0();
  if (*v2)
  {
    sub_22C37FAE8(*v2);
LABEL_15:
    sub_22C3BDA24();
    return;
  }

  __break(1u);
}

void sub_22C7D4F14()
{
  sub_22C36BA7C();
  sub_22C385800();
  v6 = sub_22C901FAC();
  v7 = sub_22C369824(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C377578();
  v10 = sub_22C7E44A4();
  v11(v10);
  v12 = sub_22C7E457C();
  *v1 = v4;
  if ((v12 & 1) == 0)
  {
    sub_22C7E43A4();
    sub_22C3B6EDC();
    v13 = *v1;
  }

  sub_22C7E47C4();
  if (v14)
  {
    sub_22C375CCC();
    sub_22C3B6EDC();
    v19 = *v1;
  }

  v15 = sub_22C3769FC();
  v16(v15);
  sub_22C36CB84();
  if (!v1)
  {
    if (v5 <= 0xE)
    {
      goto LABEL_15;
    }

LABEL_14:
    MEMORY[0x2318B0670](v3);
    sub_22C7E4860();
    sub_22C37B0E4();
    sub_22C7D5F0C();
    goto LABEL_15;
  }

  sub_22C38153C();
  sub_22C7E4878();
  if (v17 <= v5)
  {
    sub_22C386010();
    if (!(!v18 & v14) && !v2)
    {

      *v0 = 0;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  sub_22C7D5DC0();
  if (*v0)
  {
    sub_22C37FAE8(*v0);
LABEL_15:
    sub_22C36CC48();
    return;
  }

  __break(1u);
}

uint64_t sub_22C7D50A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22C90981C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6);
  v11 = v3 + 1;
  v12 = v3[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[1] = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = *(v12 + 16);
    sub_22C3B6FA0();
    v12 = *v11;
  }

  v15 = *(v12 + 16);
  if (v15 >= *(v12 + 24) >> 1)
  {
    sub_22C3B6FA0();
    v12 = *v11;
  }

  *(v12 + 16) = v15 + 1;
  result = (*(v7 + 32))(v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, v10, v6);
  v3[1] = v12;
  v17 = *v3;
  if (!*v3)
  {
    if (v15 <= 0xE)
    {
      return result;
    }

    goto LABEL_14;
  }

  swift_beginAccess();
  if (MEMORY[0x2318B0640](*(v17 + 16) & 0x3FLL) <= v15)
  {
    if (v15 <= 0xE && (*(v17 + 24) & 0x3FLL) == 0)
    {

      *v3 = 0;
      return result;
    }

LABEL_14:
    MEMORY[0x2318B0670](v15 + 1);
    return sub_22C7D5F0C();
  }

  result = sub_22C7D5DC0();
  if (*v3)
  {
    return sub_22C7D5E18((*v3 + 16), *v3 + 32, a2, v3);
  }

  __break(1u);
  return result;
}

void sub_22C7D5308()
{
  sub_22C3BDA38();
  v6 = sub_22C385800();
  v7 = type metadata accessor for PromptTreeIdentifier.ContextSubItem(v6);
  v8 = sub_22C3699B8(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C377578();
  sub_22C37B7CC();
  v11 = sub_22C372FA4();
  sub_22C7E4208(v11, v12);
  v13 = sub_22C7E457C();
  *v1 = v4;
  if ((v13 & 1) == 0)
  {
    v14 = sub_22C7E43A4();
    sub_22C3B7188(v14, v15, v16);
    v17 = *v1;
  }

  sub_22C3745CC();
  if (v18)
  {
    sub_22C37AD30();
    sub_22C3B7188(v23, v24, v25);
    v26 = *v1;
  }

  sub_22C377728();
  v19 = sub_22C37E1CC();
  sub_22C7E4260(v19, v20);
  sub_22C36CB84();
  if (!v1)
  {
    if (v5 <= 0xE)
    {
      goto LABEL_15;
    }

LABEL_14:
    MEMORY[0x2318B0670](v3);
    sub_22C37B0E4();
    sub_22C7D5FD0();
    goto LABEL_15;
  }

  sub_22C7E453C();
  sub_22C7E4878();
  if (v21 <= v5)
  {
    sub_22C38C4C8();
    if (!(!v22 & v18) && !v2)
    {

      *v0 = 0;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  sub_22C7D5DC0();
  if (*v0)
  {
    sub_22C37FAE8(*v0);
LABEL_15:
    sub_22C3BDA24();
    return;
  }

  __break(1u);
}

void sub_22C7D547C()
{
  sub_22C3BDA38();
  v7 = sub_22C385800();
  v8 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(v7);
  v9 = sub_22C3699B8(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C377578();
  sub_22C36FE98();
  v12 = sub_22C372FA4();
  sub_22C7E4208(v12, v13);
  v14 = sub_22C7E457C();
  *v1 = v5;
  if ((v14 & 1) == 0)
  {
    v15 = sub_22C7E43A4();
    sub_22C3B7238(v15, v16, v17);
    v18 = *v1;
  }

  sub_22C3745CC();
  if (v19)
  {
    sub_22C37AD30();
    sub_22C3B7238(v23, v24, v25);
    v26 = *v1;
  }

  sub_22C377728();
  sub_22C7E4260(v4, v20);
  sub_22C36CB84();
  if (!v1)
  {
    if (v6 <= 0xE)
    {
      goto LABEL_15;
    }

LABEL_14:
    MEMORY[0x2318B0670](v3);
    sub_22C7E4494();
    sub_22C7D5EC8();
    goto LABEL_15;
  }

  sub_22C7E453C();
  sub_22C7E4878();
  if (v21 <= v6)
  {
    sub_22C38C4C8();
    if (!(!v22 & v19) && !v2)
    {

      *v0 = 0;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  sub_22C7D5DC0();
  if (*v0)
  {
    sub_22C37FAE8(*v0);
LABEL_15:
    sub_22C3BDA24();
    return;
  }

  __break(1u);
}

uint64_t sub_22C7D55EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C7E4208(a1, v10);
  v11 = v3 + 1;
  v12 = v3[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[1] = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = *(v12 + 16);
    sub_22C3B72D4();
    v12 = *v11;
  }

  v15 = *(v12 + 16);
  if (v15 >= *(v12 + 24) >> 1)
  {
    sub_22C3B72D4();
    v12 = *v11;
  }

  *(v12 + 16) = v15 + 1;
  result = sub_22C7E4260(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15);
  v3[1] = v12;
  v17 = *v3;
  if (!*v3)
  {
    if (v15 <= 0xE)
    {
      return result;
    }

    goto LABEL_14;
  }

  swift_beginAccess();
  if (MEMORY[0x2318B0640](*(v17 + 16) & 0x3FLL) <= v15)
  {
    if (v15 <= 0xE && (*(v17 + 24) & 0x3FLL) == 0)
    {

      *v3 = 0;
      return result;
    }

LABEL_14:
    MEMORY[0x2318B0670](v15 + 1);
    return sub_22C7D5EC8();
  }

  result = sub_22C7D5DC0();
  if (*v3)
  {
    return sub_22C7D5E18((*v3 + 16), *v3 + 32, a2, v3);
  }

  __break(1u);
  return result;
}

void sub_22C7D5818()
{
  sub_22C7E4DA4();
  v3 = sub_22C7E4AF4();
  *v1 = v2;
  if ((v3 & 1) == 0)
  {
    v4 = *(v2 + 16);
    sub_22C36D270();
    sub_22C3B63D4();
    v2 = *v1;
  }

  v5 = *(v2 + 16);
  if (v5 >= *(v2 + 24) >> 1)
  {
    sub_22C375CCC();
    sub_22C3B63D4();
    v9 = *v1;
  }

  sub_22C7E4A60();
  if (!v1)
  {
    if (v5 <= 0xE)
    {
      sub_22C7E4A78();

      return;
    }

LABEL_15:
    MEMORY[0x2318B0670](v5 + 1);

    sub_22C7E4CA0();
    sub_22C7D6000();
    goto LABEL_20;
  }

  sub_22C386B50();
  sub_22C7E4878();
  if (v6 <= v5)
  {
    if (v5 <= 0xE && (v1[3] & 0x3F) == 0)
    {

      *v0 = 0;
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  sub_22C7D5DC0();
  if (*v0)
  {
    sub_22C7E4B50(*v0);
LABEL_20:
    sub_22C7E4A78();
    return;
  }

  __break(1u);
}

void sub_22C7D5954(double a1)
{
  v2 = v1;
  v6 = v1[1];
  v4 = v1 + 1;
  v5 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v5 + 16);
    sub_22C36D270();
    sub_22C3B7454();
    v5 = *v4;
  }

  v9 = *(v5 + 16);
  if (v9 >= *(v5 + 24) >> 1)
  {
    sub_22C37AD30();
    sub_22C3B7454();
    v5 = *v4;
  }

  *(v5 + 16) = v9 + 1;
  *(v5 + 8 * v9 + 32) = a1;
  v2[1] = v5;
  v10 = *v2;
  if (!*v2)
  {
    if (v9 <= 0xE)
    {
      return;
    }

    goto LABEL_15;
  }

  sub_22C386B50();
  sub_22C7E4878();
  if (v11 <= v9)
  {
    if (v9 <= 0xE && (*(v10 + 24) & 0x3FLL) == 0)
    {

      *v2 = 0;
      return;
    }

LABEL_15:
    MEMORY[0x2318B0670](v9 + 1);
    sub_22C7E4494();
    sub_22C7D6000();
    return;
  }

  sub_22C7D5DC0();
  if (*v2)
  {
    sub_22C37FAE8(*v2);
  }

  else
  {
    __break(1u);
  }
}

void sub_22C7D5A80()
{
  sub_22C36BA7C();
  sub_22C385800();
  v6 = sub_22C9037EC();
  v7 = sub_22C369824(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C377578();
  v10 = sub_22C7E44A4();
  v11(v10);
  v12 = sub_22C7E457C();
  *v1 = v4;
  if ((v12 & 1) == 0)
  {
    v13 = sub_22C7E43A4();
    sub_22C3B60C0(v13, v14, v15);
    v16 = *v1;
  }

  sub_22C7E47C4();
  if (v17)
  {
    sub_22C375CCC();
    sub_22C3B60C0(v22, v23, v24);
    v25 = *v1;
  }

  v18 = sub_22C3769FC();
  v19(v18);
  sub_22C36CB84();
  if (!v1)
  {
    if (v5 <= 0xE)
    {
      goto LABEL_15;
    }

LABEL_14:
    MEMORY[0x2318B0670](v3);
    sub_22C37B0E4();
    sub_22C7D5F0C();
    goto LABEL_15;
  }

  sub_22C38153C();
  sub_22C7E4878();
  if (v20 <= v5)
  {
    sub_22C386010();
    if (!(!v21 & v17) && !v2)
    {

      *v0 = 0;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  sub_22C7D5DC0();
  if (*v0)
  {
    sub_22C37FAE8(*v0);
LABEL_15:
    sub_22C36CC48();
    return;
  }

  __break(1u);
}

void *sub_22C7D5C1C(void *(*a1)(uint64_t *__return_ptr, uint64_t, void), uint64_t a2, uint64_t a3)
{
  result = a1(&v5, a3 + 32, *(a3 + 16));
  if (!v3)
  {
    return v5;
  }

  __break(1u);
  return result;
}

void *sub_22C7D5D1C(void *(*a1)(uint64_t *__return_ptr, unint64_t, void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  sub_22C369914(v7);
  result = a1(&v10, a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), *(a3 + 16));
  if (!v4)
  {
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_22C7D5DC0()
{
  result = *v0;
  if (*v0)
  {
    result = swift_isUniquelyReferenced_native();
    if ((result & 1) == 0)
    {
      if (*v0)
      {
        v2 = *v0;
        v3 = sub_22C90318C();

        *v0 = v3;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_22C7D5E18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a4 + 8) + 16) + ~(a1[1] >> 6);
  v5 = (-1 << *a1) ^ ~(((v4 >> 63) & ~(-1 << *a1)) + v4);
  return sub_22C90311C();
}

uint64_t sub_22C7D5EC8()
{
  v2 = sub_22C379B64();
  sub_22C7D6154(v2);
  result = sub_22C7E4E8C();
  *v1 = v0;
  return result;
}

uint64_t sub_22C7D5F0C()
{
  sub_22C379B64();
  sub_22C7D6208();
  result = sub_22C7E4E8C();
  *v1 = v0;
  return result;
}

uint64_t sub_22C7D5FD0()
{
  v2 = sub_22C379B64();
  sub_22C7D60C8(v2, v3, v4, v5, v6, v7);
  result = sub_22C7E4E8C();
  *v1 = v0;
  return result;
}

uint64_t sub_22C7D6000()
{
  v2 = sub_22C379B64();
  sub_22C7D6044(v2);
  result = sub_22C7E4E8C();
  *v1 = v0;
  return result;
}

uint64_t sub_22C7D6044(uint64_t a1)
{
  sub_22C7E4A38(a1);
  v6 = 0;
  if (v5 <= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v7 <= v3)
  {
    v8 = v3;
  }

  else
  {
    v8 = v7;
  }

  if (v8 >= 5)
  {
    v6 = MEMORY[0x2318B0680]();
    sub_22C7E4D84();
    sub_22C7D67C8(v2, v9, v10, v1);
  }

  return v6;
}

uint64_t sub_22C7D60C8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(void), void *(*a6)(uint64_t *__return_ptr, unint64_t, void, uint64_t, uint64_t))
{
  v10 = *(a1 + 16);
  if (a3)
  {
    v11 = 0;
  }

  else
  {
    v11 = a2;
  }

  v12 = MEMORY[0x2318B0670](v10);
  v13 = 0;
  if (v12 <= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

  if (v14 <= a4)
  {
    v15 = a4;
  }

  else
  {
    v15 = v14;
  }

  if (v15 >= 5)
  {
    v13 = MEMORY[0x2318B0680]();
    sub_22C7E4D84();
    sub_22C7D65F4(a1, v16, v17, a5, a6);
  }

  return v13;
}

uint64_t sub_22C7D6154(uint64_t a1)
{
  sub_22C7E4A38(a1);
  v6 = 0;
  if (v5 <= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v7 <= v3)
  {
    v8 = v3;
  }

  else
  {
    v8 = v7;
  }

  if (v8 >= 5)
  {
    v6 = MEMORY[0x2318B0680]();
    sub_22C7E4D84();
    v1(v2);
  }

  return v6;
}

void sub_22C7D6208()
{
  sub_22C3BDA38();
  v2 = v1;
  v4 = *(v3 + 16);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0;
  }

  v7 = MEMORY[0x2318B0670](v4);
  if (v7 <= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  if (v8 <= v2)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= 5)
  {
    MEMORY[0x2318B0680]();
    sub_22C7E4D84();
    sub_22C7D63AC();
  }

  sub_22C3BDA24();
}

uint64_t sub_22C7D6348(uint64_t a1, void *a2, uint64_t a3)
{
  sub_22C902D0C();
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(0);
  return sub_22C7D6CDC(a1 + 32, *(a1 + 16), a2, a3);
}

void sub_22C7D63AC()
{
  sub_22C36BA7C();
  v28 = v2;
  v27 = v3;
  v5 = v4;
  v6 = sub_22C369A48();
  v8 = v7(v6);
  sub_22C369824(v8);
  v10 = *(v9 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  sub_22C38059C();
  v26 = *(v0 + 16);
  if (v26)
  {
    v13 = 0;
    v14 = *(v12 + 80);
    sub_22C36BA94();
    v25 = v0 + v15;
    v17 = *(v16 + 16);
    v16 += 16;
    v23 = *(v16 + 56);
    v24 = v17;
    v18 = (v16 - 8);
    while (1)
    {
      v24(v1, v25 + v23 * v13, v8);
      v19 = *v5;
      sub_22C7E4310(v27, v28);
      sub_22C37DA2C();
      sub_22C909F7C();
      v20 = *v5;
      sub_22C38A0A8();
      if (__OFSUB__(v21, 1))
      {
        break;
      }

      sub_22C372FA4();
      v22 = sub_22C9030FC();
      (*v18)(v1, v8);
      if (v22)
      {
        while (1)
        {
          sub_22C90315C();
        }
      }

      sub_22C90314C();
      if (++v13 == v26)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_22C36CC48();
  }
}

uint64_t sub_22C7D6554(uint64_t a1, void *a2, uint64_t a3)
{
  sub_22C90952C();
  v6 = *(sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960) - 8);
  return sub_22C7D75C8(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), *(a1 + 16), a2, a3);
}

void *sub_22C7D65F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void *(*a5)(uint64_t *__return_ptr, unint64_t, void, uint64_t, uint64_t))
{
  v9 = a4(0);
  sub_22C369914(v9);
  return a5(&v12, a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), *(a1 + 16), a2, a3);
}

uint64_t sub_22C7D6688(uint64_t a1, void *a2, uint64_t a3)
{
  sub_22C90430C();
  v6 = *(type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0) - 8);
  return sub_22C7D7C98(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), *(a1 + 16), a2, a3);
}

uint64_t sub_22C7D671C(uint64_t a1, void *a2, uint64_t a3)
{
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(0);
  sub_22C902D0C();
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(0);
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
  v6 = *(type metadata accessor for PromptTreeIdentifier.TranscriptReference(0) - 8);
  return sub_22C7D8044(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), *(a1 + 16), a2, a3);
}

uint64_t sub_22C7D6810(uint64_t a1, void *a2, uint64_t a3)
{
  sub_22C9039AC();
  sub_22C9036EC();
  v6 = *(type metadata accessor for LooselyComparableRetrievedTool(0) - 8);
  return sub_22C7D8938(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), *(a1 + 16), a2, a3);
}

uint64_t sub_22C7D68AC(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v11 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        v6 = (v11 + 16 * v5);
        v7 = *v6;
        v8 = v6[1];
        v9 = *a3;
        sub_22C90B62C();

        sub_22C909FFC();
        result = sub_22C90B66C();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v10 = sub_22C9030FC();

        if (v10)
        {
          while (1)
          {
            sub_22C90315C();
          }
        }

        result = sub_22C90314C();
        if (++v5 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22C7D69D4(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v11 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v4 = 0;
      while (1)
      {
        v5 = (v11 + 24 * v4);
        v6 = *v5;
        v7 = v5[1];
        v8 = v5[2];
        v9 = *a3;
        sub_22C90B62C();

        sub_22C909FFC();
        result = sub_22C90B66C();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v10 = sub_22C9030FC();

        if (v10)
        {
          while (1)
          {
            sub_22C90315C();
          }
        }

        result = sub_22C90314C();
        if (++v4 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22C7D6B18(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v26 = a1;
  v7 = type metadata accessor for PromptTreeIdentifier(0);
  v8 = *(*(v7 - 8) + 64);
  result = MEMORY[0x28223BE20](v7 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a2;
  if (a2)
  {
    if ((v34 & 0x8000000000000000) == 0)
    {
      v13 = 0;
      v14 = *(v10 + 72);
      while (1)
      {
        sub_22C7E4208(v26 + v14 * v13, v12);
        v15 = *a3;
        sub_22C90B62C();
        sub_22C489574();
        result = sub_22C90B66C();
        v16 = 1 << *a3;
        v17 = __OFSUB__(v16, 1);
        v18 = v16 - 1;
        if (v17)
        {
          break;
        }

        v19 = v18 & result;
        v20 = sub_22C9030FC();
        v22 = v21;
        v24 = v23;
        sub_22C7E42B8(v12, type metadata accessor for PromptTreeIdentifier);
        v27 = a3;
        v28 = a4;
        v29 = v19;
        v30 = v20;
        v31 = v22;
        v32 = v24;
        v33 = 0;
        while (v30)
        {
          sub_22C90315C();
        }

        result = sub_22C90314C();
        if (++v13 == v34)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22C7D6CDC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v50 = a1;
  v47 = sub_22C3A5908(&qword_27D9BD0F0, &qword_22C9175D8);
  v7 = *(v47 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v47);
  v46 = &v40 - v9;
  v49 = sub_22C902D0C();
  v10 = *(v49 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v49);
  v43 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v48 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15);
  v19 = &v40 - v18;
  v58 = a2;
  if (a2)
  {
    if ((v58 & 0x8000000000000000) == 0)
    {
      v20 = 0;
      v44 = (v7 + 8);
      v45 = (v7 + 16);
      v41 = (v10 + 8);
      v42 = (v10 + 32);
      while (1)
      {
        v21 = *(v50 + 8 * v20);
        v22 = *a3;
        sub_22C90B62C();
        if (v21 < 0)
        {
          v27 = swift_projectBox();
          v28 = v46;
          v29 = v47;
          (*v45)(v46, v27, v47);
          MEMORY[0x2318B8B10](1);
          sub_22C4AEB24();

          sub_22C909F8C();
          (*v44)(v28, v29);
        }

        else
        {
          v23 = swift_projectBox();
          sub_22C7E4208(v23, v19);
          MEMORY[0x2318B8B10](0);
          v24 = v48;
          sub_22C7E4208(v19, v48);
          switch(sub_22C370B74(v24, 3, v49))
          {
            case 1u:
              v30 = 0;
              goto LABEL_11;
            case 2u:
              v30 = 1;
              goto LABEL_11;
            case 3u:
              v30 = 2;
LABEL_11:
              MEMORY[0x2318B8B10](v30);

              break;
            default:
              v25 = v43;
              v26 = v49;
              (*v42)(v43, v48, v49);
              MEMORY[0x2318B8B10](3);
              sub_22C7E4310(&qword_27D9BAAA8, MEMORY[0x277D1D800]);

              sub_22C909F8C();
              (*v41)(v25, v26);
              break;
          }

          sub_22C7E42B8(v19, type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global);
        }

        result = sub_22C90B66C();
        v31 = 1 << *a3;
        v32 = __OFSUB__(v31, 1);
        v33 = v31 - 1;
        if (v32)
        {
          break;
        }

        v34 = v33 & result;
        v35 = sub_22C9030FC();
        v37 = v36;
        v39 = v38;

        v51 = a3;
        v52 = a4;
        v53 = v34;
        v54 = v35;
        v55 = v37;
        v56 = v39;
        v57 = 0;
        while (v54)
        {
          sub_22C90315C();
        }

        result = sub_22C90314C();
        if (++v20 == v58)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22C7D7148(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = result;
      v6 = 0;
      while (1)
      {
        v7 = (v5 + 16 * v6);
        v8 = *v7;
        v9 = v7[1];
        v10 = *a3;
        sub_22C90B62C();
        sub_22C909FFC();
        result = sub_22C90B66C();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        if (sub_22C9030FC())
        {
          while (1)
          {
            sub_22C90315C();
          }
        }

        result = sub_22C90314C();
        if (++v6 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22C7D7250(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v15 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v4 = 0;
      while (1)
      {
        v5 = v15 + 40 * v4;
        v6 = *v5;
        v7 = *(v5 + 8);
        v8 = *(v5 + 16);
        v9 = *(v5 + 24);
        v10 = *(v5 + 32);
        v11 = *a3;
        sub_22C90B62C();
        if (v10)
        {
          MEMORY[0x2318B8B10](1);

          sub_22C909FFC();
        }

        else
        {
          MEMORY[0x2318B8B10](0);
        }

        sub_22C909FFC();
        result = sub_22C90B66C();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v12 = sub_22C9030FC();
        v13 = v6;
        v14 = v12;
        sub_22C43627C(v13, v7, v8, v9, v10);
        if (v14)
        {
          while (1)
          {
            sub_22C90315C();
          }
        }

        result = sub_22C90314C();
        if (++v4 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22C7D73F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v26 = a1;
  v7 = type metadata accessor for _PromptToolData(0);
  v8 = *(*(v7 - 8) + 64);
  result = MEMORY[0x28223BE20](v7 - 8);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = a2;
  if (a2)
  {
    if ((v32 & 0x8000000000000000) == 0)
    {
      v13 = 0;
      v14 = *(v10 + 72);
      while (1)
      {
        sub_22C7E4208(v26 + v14 * v13, v12);
        v15 = *a3;
        sub_22C90B62C();
        sub_22C48A9B4(v27, v12[1]);
        sub_22C48A9B4(v27, *v12);
        result = sub_22C90B66C();
        v16 = 1 << *a3;
        v17 = __OFSUB__(v16, 1);
        v18 = v16 - 1;
        if (v17)
        {
          break;
        }

        v19 = v18 & result;
        v20 = sub_22C9030FC();
        v22 = v21;
        v24 = v23;
        sub_22C7E42B8(v12, type metadata accessor for _PromptToolData);
        v27[0] = a3;
        v27[1] = a4;
        v27[2] = v19;
        v28 = v20;
        v29 = v22;
        v30 = v24;
        v31 = 0;
        while (v28)
        {
          sub_22C90315C();
        }

        result = sub_22C90314C();
        if (++v13 == v32)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22C7D75C8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v38 = a4;
  v39 = a1;
  v6 = sub_22C90952C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v36 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v48 = &v33 - v17;
  v40 = a2;
  if (a2)
  {
    if ((v40 & 0x8000000000000000) == 0)
    {
      v18 = 0;
      v37 = *(v16 + 72);
      v34 = (v7 + 8);
      v35 = (v7 + 32);
      while (1)
      {
        v19 = v48;
        sub_22C4E719C(v39 + v37 * v18, v48, &qword_27D9BB0C0, &qword_22C90D960);
        v20 = *a3;
        sub_22C90B62C();
        sub_22C4E719C(v19, v14, &qword_27D9BB0C0, &qword_22C90D960);
        if (sub_22C370B74(v14, 1, v6) == 1)
        {
          sub_22C90B64C();
        }

        else
        {
          v21 = v36;
          (*v35)(v36, v14, v6);
          sub_22C90B64C();
          sub_22C7E4310(&qword_28142FA80, MEMORY[0x277D72D58]);
          sub_22C909F8C();
          (*v34)(v21, v6);
        }

        result = sub_22C90B66C();
        v22 = 1 << *a3;
        v23 = __OFSUB__(v22, 1);
        v24 = v22 - 1;
        if (v23)
        {
          break;
        }

        v25 = v14;
        v26 = v24 & result;
        v27 = v38;
        v28 = sub_22C9030FC();
        v30 = v29;
        v32 = v31;
        sub_22C36DD28(v48, &qword_27D9BB0C0, &qword_22C90D960);
        v41 = a3;
        v42 = v27;
        v43 = v26;
        v44 = v28;
        v45 = v30;
        v46 = v32;
        v47 = 0;
        while (v44)
        {
          sub_22C90315C();
        }

        result = sub_22C90314C();
        ++v18;
        v14 = v25;
        if (v18 == v40)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22C7D791C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v39 = a1;
  v7 = type metadata accessor for PromptTreeIdentifier.ContextSubItem(0);
  v8 = *(*(v7 - 8) + 64);
  result = MEMORY[0x28223BE20](v7);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = a2;
  if (a2)
  {
    if ((v45 & 0x8000000000000000) == 0)
    {
      v13 = 0;
      v38 = *(v10 + 72);
      while (1)
      {
        sub_22C7E4208(v39 + v38 * v13, v12);
        v14 = *a3;
        sub_22C90B62C();
        v15 = *v12;
        switch(*v12 >> 61)
        {
          case 1uLL:
            MEMORY[0x2318B8B10](1);
            sub_22C90B5EC();
            break;
          case 2uLL:
            v21 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            MEMORY[0x2318B8B10](2);

            sub_22C90B5EC();
            sub_22C48A1DC(v40);
            goto LABEL_9;
          case 3uLL:
            v22 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            MEMORY[0x2318B8B10](3);

            sub_22C48A5B0(v40);
LABEL_9:

            break;
          case 4uLL:
            v18 = v15 & 0x1FFFFFFFFFFFFFFFLL;
            v19 = *(v18 + 16);
            v20 = *(v18 + 24);
            MEMORY[0x2318B8B10](4);
            sub_22C90B64C();
            goto LABEL_15;
          case 5uLL:
            v23 = v15 & 0x1FFFFFFFFFFFFFFFLL;
            v24 = *(v23 + 16);
            v25 = *(v23 + 24);
            v26 = *(v23 + 32);
            MEMORY[0x2318B8B10](5);
            if (v25)
            {
              ++v24;
            }

            else
            {
              MEMORY[0x2318B8B10](0);
            }

            MEMORY[0x2318B8B10](v24);
LABEL_15:
            sub_22C48A1DC(v40);
            break;
          default:
            v16 = *(v15 + 16);
            v17 = *(v15 + 24);
            MEMORY[0x2318B8B10](0);

            sub_22C909FFC();

            break;
        }

        v27 = *(v7 + 20);
        sub_22C901FAC();
        sub_22C7E4310(&qword_2814357B0, MEMORY[0x277D1C338]);
        sub_22C909F8C();
        sub_22C48A9B4(v40, *(v12 + *(v7 + 24)));
        result = sub_22C90B66C();
        v28 = 1 << *a3;
        v29 = __OFSUB__(v28, 1);
        v30 = v28 - 1;
        if (v29)
        {
          break;
        }

        v31 = v30 & result;
        v32 = sub_22C9030FC();
        v34 = v33;
        v36 = v35;
        sub_22C7E42B8(v12, type metadata accessor for PromptTreeIdentifier.ContextSubItem);
        v40[0] = a3;
        v40[1] = a4;
        v40[2] = v31;
        v41 = v32;
        v42 = v34;
        v43 = v36;
        v44 = 0;
        while (v41)
        {
          sub_22C90315C();
        }

        result = sub_22C90314C();
        if (++v13 == v45)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22C7D7C98(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v48 = a4;
  v50 = a1;
  v6 = sub_22C90430C();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0);
  v10 = *(*(v49 - 8) + 64);
  result = MEMORY[0x28223BE20](v49);
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = a2;
  if (a2)
  {
    if ((v51 & 0x8000000000000000) == 0)
    {
      v15 = 0;
      v16 = *(v12 + 72);
      v17 = (v43 + 8);
      v59 = a3;
      v53 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
      v46 = v43 + 16;
      v47 = v16;
      v44 = v9;
      v45 = (v43 + 8);
      while (1)
      {
        v52 = v15;
        sub_22C7E4208(v50 + v47 * v15, v14);
        v18 = *a3;
        sub_22C90B62C();
        sub_22C48A9B4(v54, *v14);
        v19 = v14[1];
        MEMORY[0x2318B8B10](*(v19 + 16));
        v20 = *(v19 + 16);
        if (v20)
        {
          v21 = v9;
          v22 = v19 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
          v23 = *(v43 + 72);
          v24 = *(v43 + 16);
          do
          {
            v24(v21, v22, v6);
            sub_22C7E4310(&qword_27D9BC810, MEMORY[0x277D85578]);
            sub_22C909F8C();
            (*v17)(v21, v6);
            v22 += v23;
            --v20;
          }

          while (v20);
        }

        v25 = *(v49 + 24);
        sub_22C90963C();
        sub_22C7E4310(&qword_27D9BC850, MEMORY[0x277D72E18]);
        v26 = v53;
        sub_22C909F8C();
        result = sub_22C90B66C();
        v27 = 1 << *v59;
        v28 = __OFSUB__(v27, 1);
        v29 = v27 - 1;
        if (v28)
        {
          break;
        }

        v30 = v29 & result;
        v31 = v59;
        v32 = v48;
        v33 = sub_22C9030FC();
        v35 = v34;
        v36 = v26;
        v38 = v37;
        sub_22C7E42B8(v36, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
        v54[0] = v31;
        v54[1] = v32;
        v54[2] = v30;
        v55 = v33;
        v56 = v35;
        v57 = v38;
        v58 = 0;
        while (v55)
        {
          sub_22C90315C();
        }

        v39 = v52 + 1;
        v40 = __OFADD__(v52, 1);
        result = sub_22C90314C();
        v17 = v45;
        v9 = v44;
        if (v40)
        {
          goto LABEL_18;
        }

        v15 = v39;
        v41 = v39 == v51;
        a3 = v59;
        v14 = v53;
        if (v41)
        {
          return result;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22C7D8044(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v61 = a4;
  v65 = a1;
  v57 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(0);
  v6 = *(*(v57 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v57);
  v59 = &v53[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v64 = &v53[-v9];
  v75 = sub_22C902D0C();
  v10 = *(v75 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v75);
  v56 = &v53[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v58 = &v53[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v66 = &v53[-v17];
  v63 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
  v18 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v20 = &v53[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v62 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
  v21 = *(*(v62 - 8) + 64);
  result = MEMORY[0x28223BE20](v62);
  v25 = &v53[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v67 = a2;
  if (a2)
  {
    if ((v67 & 0x8000000000000000) == 0)
    {
      v26 = 0;
      v60 = *(v23 + 72);
      v55 = (v10 + 32);
      v54 = (v10 + 8);
      while (1)
      {
        sub_22C7E4208(v65 + v60 * v26, v25);
        v27 = *a3;
        sub_22C90B62C();
        sub_22C7E4208(v25, v20);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v28 = v64;
          sub_22C7E4260(v20, v64);
          MEMORY[0x2318B8B10](1);
          sub_22C7E4208(v28, v59);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload)
          {
            if (EnumCaseMultiPayload == 1)
            {
              v30 = v56;
              v31 = v75;
              (*v55)(v56, v59, v75);
              MEMORY[0x2318B8B10](2);
              sub_22C7E4310(&qword_27D9BAAA8, MEMORY[0x277D1D800]);
              sub_22C909F8C();
              (*v54)(v30, v31);
            }

            else
            {
              MEMORY[0x2318B8B10](0);
            }
          }

          else
          {
            v38 = *v59;
            v37 = v59[1];
            MEMORY[0x2318B8B10](1);
            sub_22C909FFC();
          }

          v39 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local;
          v40 = v64;
        }

        else
        {
          v32 = v66;
          sub_22C7E4260(v20, v66);
          MEMORY[0x2318B8B10](0);
          v33 = v32;
          v34 = v58;
          sub_22C7E4208(v33, v58);
          switch(sub_22C370B74(v34, 3, v75))
          {
            case 1u:
              v41 = 0;
              goto LABEL_16;
            case 2u:
              v41 = 1;
              goto LABEL_16;
            case 3u:
              v41 = 2;
LABEL_16:
              MEMORY[0x2318B8B10](v41);
              break;
            default:
              v35 = v56;
              v36 = v75;
              (*v55)(v56, v58, v75);
              MEMORY[0x2318B8B10](3);
              sub_22C7E4310(&qword_27D9BAAA8, MEMORY[0x277D1D800]);
              sub_22C909F8C();
              (*v54)(v35, v36);
              break;
          }

          v39 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global;
          v40 = v66;
        }

        sub_22C7E42B8(v40, v39);
        v42 = *(v62 + 20);
        sub_22C7E4310(&qword_27D9BAAA8, MEMORY[0x277D1D800]);
        sub_22C909F8C();
        result = sub_22C90B66C();
        v43 = 1 << *a3;
        v44 = __OFSUB__(v43, 1);
        v45 = v43 - 1;
        if (v44)
        {
          break;
        }

        v46 = v45 & result;
        v47 = v61;
        v48 = sub_22C9030FC();
        v50 = v49;
        v52 = v51;
        sub_22C7E42B8(v25, type metadata accessor for PromptTreeIdentifier.TranscriptReference);
        v68 = a3;
        v69 = v47;
        v70 = v46;
        v71 = v48;
        v72 = v50;
        v73 = v52;
        v74 = 0;
        while (v71)
        {
          sub_22C90315C();
        }

        result = sub_22C90314C();
        if (++v26 == v67)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22C7D8718(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v24 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      while (1)
      {
        v8 = *(v24 + 8 * v7);
        v9 = *a3;
        sub_22C90B62C();

        sub_22C48A9B4(v19, v8);
        result = sub_22C90B66C();
        v10 = 1 << *a3;
        v11 = __OFSUB__(v10, 1);
        v12 = v10 - 1;
        if (v11)
        {
          break;
        }

        v13 = v12 & result;
        v14 = sub_22C9030FC();
        v16 = v15;
        v18 = v17;

        v19[0] = a3;
        v19[1] = a4;
        v19[2] = v13;
        v20 = v14;
        v21 = v16;
        v22 = v18;
        v23 = 0;
        while (v20)
        {
          sub_22C90315C();
        }

        result = sub_22C90314C();
        if (++v7 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22C7D8838(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = result;
      v6 = 0;
      while (1)
      {
        v7 = *a3;
        *(v5 + 8 * v6);
        result = sub_22C90B61C();
        if (__OFSUB__(1 << v7, 1))
        {
          break;
        }

        if (sub_22C9030FC())
        {
          while (1)
          {
            sub_22C90315C();
          }
        }

        result = sub_22C90314C();
        if (++v6 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22C7D8938(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v45 = a4;
  v48 = a1;
  v6 = sub_22C9039AC();
  v42 = *(v6 - 8);
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_22C9036EC();
  v10 = *(v47 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v47);
  v46 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LooselyComparableRetrievedTool(0);
  v14 = *(*(v13 - 8) + 64);
  result = MEMORY[0x28223BE20](v13 - 8);
  v60 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a2;
  if (a2)
  {
    if ((v49 & 0x8000000000000000) == 0)
    {
      v18 = 0;
      v19 = *(v16 + 72);
      v43 = (v10 + 8);
      v44 = v19;
      v20 = (v42 + 8);
      v50 = a3;
      while (1)
      {
        v52 = v18;
        sub_22C7E4208(v48 + v44 * v18, v60);
        v21 = *a3;
        sub_22C90B62C();
        v22 = v46;
        sub_22C90371C();
        sub_22C7E4310(&qword_281435770, MEMORY[0x277D1ED00]);
        v23 = v47;
        sub_22C909F8C();
        (*v43)(v22, v23);
        v24 = sub_22C90374C();
        MEMORY[0x2318B8B10](*(v24 + 16));
        v25 = *(v24 + 16);
        if (v25)
        {
          v26 = (*(v42 + 80) + 32) & ~*(v42 + 80);
          v51 = v24;
          v27 = v24 + v26;
          v28 = *(v42 + 72);
          v29 = *(v42 + 16);
          do
          {
            v29(v9, v27, v6);
            sub_22C7E4310(&qword_27D9BC818, MEMORY[0x277D1EE20]);
            sub_22C909F8C();
            (*v20)(v9, v6);
            v27 += v28;
            --v25;
          }

          while (v25);

          a3 = v50;
        }

        else
        {
        }

        result = sub_22C90B66C();
        v30 = 1 << *a3;
        v31 = __OFSUB__(v30, 1);
        v32 = v30 - 1;
        if (v31)
        {
          break;
        }

        v33 = v32 & result;
        v34 = v45;
        v35 = sub_22C9030FC();
        v51 = v36;
        v38 = v37;
        sub_22C7E42B8(v60, type metadata accessor for LooselyComparableRetrievedTool);
        v53 = a3;
        v54 = v34;
        v55 = v33;
        v56 = v35;
        v57 = v51;
        v58 = v38;
        v59 = 0;
        while (v56)
        {
          sub_22C90315C();
        }

        v39 = v52 + 1;
        v40 = __OFADD__(v52, 1);
        result = sub_22C90314C();
        if (v40)
        {
          goto LABEL_19;
        }

        v18 = v39;
        a3 = v50;
        if (v39 == v49)
        {
          return result;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t dispatch thunk of QueryDecorationToolSelectorService.rankQueryDecorationOutputForToolSelection(spans:context:toolRetrievalResponse:qdContext:)()
{
  sub_22C3743E4();
  sub_22C7E4A08();
  v2 = *(*v0 + 136);
  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22C7D8F18;
  v5 = sub_22C3806B8();

  return v7(v5);
}

uint64_t sub_22C7D8F18()
{
  sub_22C369980();
  v2 = v1;
  sub_22C369A3C();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_22C369970();
  *v6 = v5;

  sub_22C36D5E0();

  return v7(v2);
}

uint64_t sub_22C7D9010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = (a3 + 8);
  while (a4 != v7)
  {
    v9 = *(v8 - 1) == a1 && *v8 == a2;
    if (v9 || (sub_22C90B4FC() & 1) != 0)
    {
      return v7;
    }

    ++v7;
    v8 += 2;
  }

  return 0;
}

void sub_22C7D909C()
{
  sub_22C3BDA38();
  v2 = v1;
  v3 = sub_22C3813C8();
  v4 = type metadata accessor for PromptTreeIdentifier(v3);
  v5 = sub_22C3699B8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  sub_22C37BDA4();
  for (i = 0; v2 != i; ++i)
  {
    v11 = *(v7 + 72);
    sub_22C375B80();
    sub_22C7E4208(v12, v0);
    sub_22C488E5C();
    v14 = v13;
    sub_22C7E438C();
    sub_22C7E42B8(v0, v15);
    if (v14)
    {
      break;
    }
  }

  sub_22C3BDA24();
}

void sub_22C7D918C()
{
  sub_22C36BA7C();
  v2 = v1;
  v71 = v3;
  v5 = v4;
  v64 = sub_22C3A5908(&qword_27D9BD0F0, &qword_22C9175D8);
  v6 = sub_22C369824(v64);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C3698E4();
  v65 = v11;
  sub_22C369930();
  MEMORY[0x28223BE20](v12);
  sub_22C36BA64();
  v63 = v13;
  sub_22C36BA0C();
  v70 = sub_22C902D0C();
  v14 = sub_22C369824(v70);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C3698A8();
  v58 = v19;
  v66 = sub_22C3A5908(&qword_27D9BCBC0, &qword_22C9166F8);
  sub_22C36985C(v66);
  v21 = *(v20 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v22);
  sub_22C3721C8();
  v23 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(0);
  v24 = sub_22C369914(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22C3698E4();
  v60 = v27;
  sub_22C369930();
  MEMORY[0x28223BE20](v28);
  sub_22C36BA58();
  v69 = v29;
  sub_22C369930();
  MEMORY[0x28223BE20](v30);
  sub_22C36BA64();
  v68 = v31;
  if (v2)
  {
    v32 = 0;
    v61 = (v8 + 8);
    v62 = (v8 + 16);
    v59 = (v16 + 8);
    v67 = v0;
    do
    {
      if ((*(v71 + 8 * v32) & 0x8000000000000000) != 0)
      {
        if (v5 < 0)
        {
          v43 = swift_projectBox();
          v44 = swift_projectBox();
          v45 = *v62;
          (*v62)(v63, v43, v64);
          v45(v65, v44, v64);
          type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(0);
          type metadata accessor for PromptTreeIdentifier(0);
          sub_22C36D168();
          sub_22C7E4310(&qword_27D9BD100, v46);
          sub_22C36D33C();
          sub_22C7E4310(&qword_27D9BCB90, v47);

          LOBYTE(v43) = sub_22C90675C();
          v48 = *v61;
          (*v61)(v65, v64);
          v48(v63, v64);

          if (v43)
          {
            break;
          }
        }
      }

      else if ((v5 & 0x8000000000000000) == 0)
      {
        v33 = *(v71 + 8 * v32);
        v34 = swift_projectBox();
        v35 = swift_projectBox();
        v36 = v34;
        v37 = v67;
        sub_22C7E4208(v36, v68);
        sub_22C7E4208(v35, v69);
        v38 = *(v66 + 48);
        v39 = sub_22C37335C();
        sub_22C7E4208(v39, v40);
        sub_22C7E4208(v69, v67 + v38);
        switch(sub_22C370B74(v67, 3, v70))
        {
          case 1u:

            sub_22C371DD0();
            sub_22C7E42B8(v69, v51);
            sub_22C7E4E5C();
            sub_22C36D0A8(v67 + v38, 3, v70);
            if (v52)
            {
              goto LABEL_23;
            }

            goto LABEL_16;
          case 2u:

            sub_22C371DD0();
            sub_22C7E42B8(v69, v49);
            sub_22C7E4E5C();
            if (sub_22C7E4988() == 2)
            {
              goto LABEL_23;
            }

            goto LABEL_16;
          case 3u:

            sub_22C371DD0();
            sub_22C7E42B8(v69, v50);
            sub_22C7E4E5C();
            if (sub_22C7E4988() == 3)
            {
              goto LABEL_23;
            }

            goto LABEL_16;
          default:
            sub_22C37A418();
            sub_22C7E4208(v67, v60);
            if (sub_22C7E4988())
            {

              sub_22C7E42B8(v69, type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global);
              sub_22C7E4E5C();
              v41 = sub_22C38C41C();
              v42(v41, v70);
LABEL_16:
              sub_22C36DD28(v67, &qword_27D9BCBC0, &qword_22C9166F8);
            }

            else
            {
              (*(v16 + 32))(v58, v67 + v38, v70);

              sub_22C36BA00();
              v53 = sub_22C902CFC();
              v54 = *v59;
              (*v59)(v58, v70);
              sub_22C7E42B8(v69, type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global);
              sub_22C7E42B8(v68, type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global);
              v55 = sub_22C36D39C();
              v54(v55);
              v37 = v67;
              if (v53)
              {
LABEL_23:
                sub_22C36A3B8();
                sub_22C7E42B8(v37, v57);

                goto LABEL_24;
              }

              sub_22C36A3B8();
              sub_22C7E42B8(v67, v56);
            }

            break;
        }
      }

      ++v32;
    }

    while (v2 != v32);
  }

LABEL_24:
  sub_22C36CC48();
}

void sub_22C7D9774()
{
  sub_22C36BA7C();
  v3 = v2;
  v5 = v4;
  v40 = v6;
  v7 = sub_22C90952C();
  v8 = sub_22C369824(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C3698A8();
  v35 = v13;
  v14 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  sub_22C3699B8(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v19);
  sub_22C38059C();
  v36 = sub_22C3A5908(&qword_27D9BEC60, &qword_22C920510);
  sub_22C36985C(v36);
  v21 = *(v20 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v22);
  sub_22C7E47F4();
  v39 = v3;
  if (v3)
  {
    v23 = 0;
    v24 = *(v16 + 72);
    v38 = (v10 + 8);
    v25 = v36;
    v34 = v24;
    while (1)
    {
      v26 = *(v25 + 48);
      v27 = sub_22C634750();
      sub_22C4E719C(v27, v28, &qword_27D9BB0C0, &qword_22C90D960);
      sub_22C4E719C(v40, v1 + v26, &qword_27D9BB0C0, &qword_22C90D960);
      sub_22C36D0A8(v1, 1, v7);
      if (v29)
      {
        break;
      }

      sub_22C4E719C(v1, v0, &qword_27D9BB0C0, &qword_22C90D960);
      sub_22C36D0A8(v1 + v26, 1, v7);
      if (v29)
      {
        (*v38)(v0, v7);
LABEL_11:
        sub_22C36DD28(v1, &qword_27D9BEC60, &qword_22C920510);
        goto LABEL_13;
      }

      (*(v10 + 32))(v35, v1 + v26, v7);
      sub_22C381820();
      sub_22C7E4310(&qword_28142FA78, v30);
      sub_22C6AFC04();
      v37 = sub_22C90A0BC();
      v31 = *v38;
      v24 = v34;
      (*v38)(v35, v7);
      v31(v0, v7);
      v25 = v36;
      v32 = sub_22C37FE24();
      sub_22C36DD28(v32, v33, &qword_22C90D960);
      if (v37)
      {
        goto LABEL_14;
      }

LABEL_13:
      ++v23;
      v5 += v24;
      if (v39 == v23)
      {
        goto LABEL_14;
      }
    }

    sub_22C36D0A8(v1 + v26, 1, v7);
    if (v29)
    {
      sub_22C36DD28(v1, &qword_27D9BB0C0, &qword_22C90D960);
      goto LABEL_14;
    }

    goto LABEL_11;
  }

LABEL_14:
  sub_22C36CC48();
}

void sub_22C7D9AE0()
{
  sub_22C36BA7C();
  v20 = v1;
  v19 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7(0);
  sub_22C369824(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  sub_22C7E47F4();
  for (i = 0; v4 != i; ++i)
  {
    (*(v10 + 16))(v0, v6 + *(v10 + 72) * i, v8);
    sub_22C7E4310(v19, v20);
    sub_22C37FE24();
    v15 = sub_22C90A0BC();
    v16 = *(v10 + 8);
    v17 = sub_22C4F6088();
    v18(v17);
    if (v15)
    {
      break;
    }
  }

  sub_22C36CC48();
}

void sub_22C7D9C10()
{
  sub_22C36BA7C();
  v3 = v2;
  v47 = v4;
  sub_22C3813C8();
  v5 = sub_22C90430C();
  v6 = sub_22C369824(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C3698E4();
  v49 = v11;
  sub_22C369930();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22C7E4D3C();
  v42 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(v13);
  v14 = sub_22C3885DC(v42);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v19 = (&v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = v3;
  if (!v3)
  {
LABEL_14:
    sub_22C36CC48();
    return;
  }

  v20 = 0;
  v45 = *v0;
  v21 = *(v17 + 72);
  v43 = v0;
  v44 = v21;
  v48 = v8 + 16;
  v52 = v8;
  v22 = (v8 + 8);
  while (1)
  {
    sub_22C36FE98();
    sub_22C7E4208(v23, v19);
    if ((sub_22C48819C(*v19, v45) & 1) == 0)
    {
      goto LABEL_13;
    }

    v24 = v43[1];
    v54 = v19[1];
    v25 = *(v24 + 16);
    v53 = *(v54 + 16);
    if (v53 != v25)
    {
      goto LABEL_13;
    }

    if (v53 && v54 != v24)
    {
      break;
    }

LABEL_12:
    v38 = *(v42 + 24);
    if (sub_22C90962C())
    {
      sub_22C37F57C();
      sub_22C7E42B8(v19, v40);
      goto LABEL_14;
    }

LABEL_13:
    sub_22C37F57C();
    sub_22C7E42B8(v19, v39);
    if (++v20 == v46)
    {
      goto LABEL_14;
    }
  }

  v26 = 0;
  v27 = *(v52 + 80);
  sub_22C36BA94();
  v50 = v24 + v28;
  v51 = v54 + v28;
  while (v26 < *(v54 + 16))
  {
    v29 = v19;
    v30 = *(v52 + 72) * v26;
    v31 = *(v52 + 16);
    v31(v1, v51 + v30, v5);
    if (v26 >= *(v24 + 16))
    {
      goto LABEL_17;
    }

    v32 = v1;
    v33 = v49;
    v31(v49, v50 + v30, v5);
    sub_22C38AB84();
    sub_22C7E4310(&qword_27D9BC808, v34);
    v35 = sub_22C90A0BC();
    v36 = *v22;
    v37 = v33;
    v1 = v32;
    (*v22)(v37, v5);
    v36(v32, v5);
    v19 = v29;
    if ((v35 & 1) == 0)
    {
      goto LABEL_13;
    }

    if (v53 == ++v26)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_22C7D9F30()
{
  sub_22C36BA7C();
  v4 = v3;
  v6 = v5;
  v139 = v7;
  v128 = sub_22C3A5908(&qword_27D9BCBC8, &unk_22C916700);
  sub_22C36985C(v128);
  v9 = *(v8 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  sub_22C36D5B4();
  v133 = v11;
  v12 = sub_22C36BA0C();
  v131 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(v12);
  v13 = sub_22C36985C(v131);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C369ABC();
  sub_22C387D8C();
  MEMORY[0x28223BE20](v16);
  sub_22C36BA58();
  v122 = v17;
  sub_22C369930();
  MEMORY[0x28223BE20](v18);
  sub_22C36BA64();
  v130 = v19;
  sub_22C36BA0C();
  v132 = sub_22C902D0C();
  v20 = sub_22C369824(v132);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v25);
  sub_22C36BA64();
  sub_22C36D234(v26);
  v127 = sub_22C3A5908(&qword_27D9BCBC0, &qword_22C9166F8);
  sub_22C36985C(v127);
  v28 = *(v27 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v29);
  v31 = &v115[-v30];
  v32 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(0);
  v33 = sub_22C369914(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22C369ABC();
  v38 = v36 - v37;
  MEMORY[0x28223BE20](v39);
  sub_22C373000();
  v138 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
  v40 = sub_22C36985C(v138);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22C369ABC();
  v45 = v43 - v44;
  MEMORY[0x28223BE20](v46);
  sub_22C36BA64();
  v134 = v47;
  v137 = sub_22C3A5908(&qword_27D9BCBB8, &qword_22C9166F0);
  sub_22C36985C(v137);
  v49 = *(v48 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v50);
  sub_22C38059C();
  v124 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
  v51 = sub_22C3885DC(v124);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  v56 = &v115[-((v55 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (v4)
  {
    v120 = v0;
    v121 = v38;
    v57 = 0;
    v123 = (v22 + 8);
    v58 = *(v54 + 72);
    v135 = v45;
    v136 = v58;
    v119 = (v22 + 32);
    v129 = v2;
    v125 = v4;
    v126 = v31;
    do
    {
      sub_22C7E46B8();
      v59 = sub_22C37170C();
      sub_22C7E4208(v59, v60);
      sub_22C7E46A0(v137);
      sub_22C7E4208(v56, v1);
      sub_22C7E4208(v139, v1 + v22);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v61 = sub_22C3750FC();
        v62 = v135;
        sub_22C7E4208(v61, v135);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v74 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local;
          goto LABEL_13;
        }

        v63 = sub_22C7E45FC();
        v64 = v130;
        sub_22C7E4260(v63, v130);
        v65 = v133;
        v66 = (v133 + *(v128 + 48));
        sub_22C7E4688();
        sub_22C7E4208(v62, v65);
        sub_22C7E4208(v64, v66);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            sub_22C380060();
            v68 = v120;
            sub_22C7E4208(v133, v120);
            if (swift_getEnumCaseMultiPayload() != 1)
            {
              sub_22C7E4374();
              sub_22C7E42B8(v130, v93);
              sub_22C7E49CC();
              v94(v68, v132);
LABEL_30:
              v4 = v125;
              v31 = v126;
              v2 = v129;
LABEL_31:
              sub_22C36DD28(v133, &qword_27D9BCBC8, &unk_22C916700);
LABEL_32:
              sub_22C7E4374();
              sub_22C7E42B8(v135, v95);
              sub_22C36C464();
              sub_22C7E42B8(v56, v96);
              sub_22C372DD8();
              v92 = v1;
              goto LABEL_33;
            }

            v69 = v118;
            v70 = v132;
            (*v119)(v118, v66, v132);
            v71 = sub_22C902CFC();
            v22 = *v123;
            (*v123)(v69, v70);
            sub_22C7E4374();
            sub_22C7E42B8(v130, v72);
            (v22)(v68, v70);
            v4 = v125;
            v31 = v126;
            v2 = v129;
            if ((v71 & 1) == 0)
            {
              goto LABEL_41;
            }
          }

          else
          {
            sub_22C7E4374();
            sub_22C7E42B8(v130, v84);
            v85 = swift_getEnumCaseMultiPayload();
            v4 = v125;
            v31 = v126;
            v2 = v129;
            if (v85 != 2)
            {
              goto LABEL_31;
            }
          }
        }

        else
        {
          sub_22C380060();
          v81 = v122;
          sub_22C7E4208(v133, v122);
          v22 = *v81;
          v82 = v81[1];
          if (swift_getEnumCaseMultiPayload())
          {
            sub_22C7E4374();
            sub_22C7E42B8(v130, v83);

            goto LABEL_30;
          }

          v97 = *v66;
          v98 = v66[1];
          v99 = v22 == v97 && v82 == v98;
          v31 = v126;
          v2 = v129;
          if (v99)
          {

            sub_22C7E4374();
            sub_22C7E42B8(v130, v109);
            v4 = v125;
          }

          else
          {
            v22 = sub_22C90B4FC();

            sub_22C7E4374();
            sub_22C7E42B8(v130, v100);
            v4 = v125;
            if ((v22 & 1) == 0)
            {
LABEL_41:
              sub_22C7E4374();
              sub_22C7E42B8(v133, v101);
              goto LABEL_32;
            }
          }
        }

        v77 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local;
        sub_22C7E42B8(v133, type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local);
        v108 = v135;
      }

      else
      {
        v73 = sub_22C3750FC();
        v62 = v134;
        sub_22C7E4208(v73, v134);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v74 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global;
LABEL_13:
          sub_22C7E42B8(v62, v74);
          sub_22C36DD28(v1, &qword_27D9BCBB8, &qword_22C9166F0);
          goto LABEL_28;
        }

        v75 = sub_22C7E45E0();
        sub_22C7E4260(v75, v2);
        sub_22C385E08(v127);
        v77 = v76;
        sub_22C7E4208(v62, v31);
        sub_22C7E4208(v2, &v31[v22]);
        switch(sub_22C370B74(v31, 3, v132))
        {
          case 1u:
            sub_22C36A3B8();
            sub_22C7E42B8(v2, v88);
            sub_22C36D0A8(&v31[v22], 3, v132);
            if (v99)
            {
              goto LABEL_43;
            }

            goto LABEL_26;
          case 2u:
            sub_22C36A3B8();
            sub_22C7E42B8(v2, v86);
            if (sub_22C7E4944() == 2)
            {
              goto LABEL_43;
            }

            goto LABEL_26;
          case 3u:
            sub_22C36A3B8();
            sub_22C7E42B8(v2, v87);
            if (sub_22C7E4944() == 3)
            {
              goto LABEL_43;
            }

            goto LABEL_26;
          default:
            sub_22C37A418();
            v78 = v121;
            sub_22C7E4208(v31, v121);
            if (sub_22C7E4944())
            {
              sub_22C36A3B8();
              sub_22C7E42B8(v2, v79);
              sub_22C7E49CC();
              v80(v78, v132);
LABEL_26:
              sub_22C36DD28(v31, &qword_27D9BCBC0, &qword_22C9166F8);
LABEL_27:
              sub_22C36A3B8();
              sub_22C7E42B8(v134, v89);
              sub_22C372DD8();
              sub_22C7E42B8(v1, v90);
LABEL_28:
              sub_22C36C464();
              v92 = v56;
LABEL_33:
              sub_22C7E42B8(v92, v91);
              goto LABEL_34;
            }

            v102 = v117;
            v103 = v132;
            (*v119)(v117, &v31[v22], v132);
            v116 = sub_22C902CFC();
            v77 = v123;
            v22 = *v123;
            v104 = v102;
            v2 = v129;
            (*v123)(v104, v103);
            sub_22C36A3B8();
            sub_22C7E42B8(v2, v105);
            v106 = v103;
            v62 = v134;
            (v22)(v121, v106);
            if ((v116 & 1) == 0)
            {
              sub_22C36A3B8();
              sub_22C7E42B8(v31, v114);
              goto LABEL_27;
            }

LABEL_43:
            sub_22C7E46D0();
            sub_22C7E42B8(v31, v107);
            v108 = v62;
            break;
        }
      }

      sub_22C7E42B8(v108, v77);
      sub_22C372DD8();
      sub_22C7E42B8(v1, v110);
      v111 = *(v124 + 20);
      v112 = sub_22C902CFC();
      sub_22C36C464();
      sub_22C7E42B8(v56, v113);
      if (v112)
      {
        break;
      }

LABEL_34:
      ++v57;
      v6 += v136;
    }

    while (v4 != v57);
  }

  sub_22C36CC48();
}

void sub_22C7DA844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  sub_22C7E48FC(a1, a2, a3, a4, a5);
  sub_22C909FFC();
  v9 = v50;
  sub_22C90B66C();
  v10 = *v8;
  sub_22C3703F4();
  if (v12)
  {
    __break(1u);
  }

  else
  {
    sub_22C386420(v11);
    sub_22C634004();
    sub_22C90312C();
    sub_22C7E4C50();
    v13 = v52;
    sub_22C7E447C(v14, v15, v16, v17, v18, v19, v20, v21, v33, v35, v37, v39, v41, v43, v45, v47, v48, v49, v50[0], v50[1], v50[2], v50[3], v51);
    if ((v13 & 1) == 0)
    {
      do
      {
        v22 = (v5 + 16 * v9);
        if (*v22 == v7 && v22[1] == v6)
        {
          break;
        }

        if (sub_22C90B4FC())
        {
          break;
        }

        v24 = sub_22C90315C();
        sub_22C386378(v24, v25, v26, v27, v28, v29, v30, v31, v34, v36, v38, v40, v42, v44, v46);
        v9 = sub_22C90313C();
      }

      while ((v32 & 1) == 0);
    }
  }
}

void sub_22C7DA91C()
{
  sub_22C36BA7C();
  sub_22C7E4464(v2, v3);
  v4 = sub_22C90644C();
  v5 = sub_22C369824(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C377578();
  v8 = *v0;
  sub_22C3730A4();
  sub_22C7E4310(v9, v10);
  sub_22C388DAC();
  sub_22C909F7C();
  v11 = *v0;
  sub_22C3703F4();
  if (v12)
  {
    __break(1u);
  }

  else
  {
    sub_22C7E4700();
    sub_22C36DB60();
    while ((v1 & 1) == 0)
    {
      v13 = sub_22C381BDC();
      v14(v13);
      sub_22C3730A4();
      sub_22C7E4310(&qword_27D9C02E0, v15);
      sub_22C7E4500();
      v16 = sub_22C5EB560();
      v17(v16);
      if (v8)
      {
        break;
      }

      v8 = &v18;
      sub_22C90315C();
      sub_22C7E4404();
      sub_22C50B4BC();
    }

    sub_22C386878();
    sub_22C36CC48();
  }
}

void sub_22C7DAA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v10 = *a6;
  sub_22C90B62C();
  sub_22C909FFC();
  v11 = v54;
  sub_22C90B66C();
  v12 = *a6;
  sub_22C3703F4();
  if (v14)
  {
    __break(1u);
  }

  else
  {
    sub_22C386420(v13);
    sub_22C7E4C80();
    sub_22C90312C();
    sub_22C7E4C50();
    v15 = v56;
    sub_22C7E447C(v16, v17, v18, v19, v20, v21, v22, v23, v37, v39, v41, v43, v45, v47, v49, v51, v52, v53, v54[0], v54[1], v54[2], v54[3], v55);
    if ((v15 & 1) == 0)
    {
      do
      {
        v24 = (a4 + 24 * v11);
        v25 = v24[2];
        v26 = *v24 == a1 && v24[1] == a2;
        if (v26 || (sub_22C90B4FC() & 1) != 0)
        {
          sub_22C5DBAE4();
          if (v27)
          {
            break;
          }
        }

        v28 = sub_22C90315C();
        sub_22C386378(v28, v29, v30, v31, v32, v33, v34, v35, v38, v40, v42, v44, v46, v48, v50);
        v11 = sub_22C90313C();
      }

      while ((v36 & 1) == 0);
    }
  }
}

void sub_22C7DAB7C()
{
  sub_22C3BDA38();
  v2 = v1;
  v3 = sub_22C3813C8();
  v4 = type metadata accessor for PromptTreeIdentifier(v3);
  v5 = sub_22C3699B8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  sub_22C37BDA4();
  v10 = *v2;
  sub_22C90B62C();
  sub_22C489574();
  sub_22C90B66C();
  v11 = *v2;
  sub_22C3703F4();
  if (v12)
  {
    __break(1u);
  }

  else
  {
    sub_22C7E4C80();
    sub_22C90312C();
    if ((v19 & 1) == 0)
    {
      do
      {
        v13 = *(v7 + 72);
        sub_22C375B80();
        sub_22C7E4208(v14, v0);
        sub_22C488E5C();
        v16 = v15;
        sub_22C7E438C();
        sub_22C7E42B8(v0, v17);
        if (v16)
        {
          break;
        }

        sub_22C90315C();
        sub_22C90313C();
      }

      while ((v18 & 1) == 0);
    }

    sub_22C3BDA24();
  }
}

void sub_22C7DACF8()
{
  sub_22C36BA7C();
  v2 = v1;
  v79 = v3;
  v5 = v4;
  v74 = sub_22C3A5908(&qword_27D9BD0F0, &qword_22C9175D8);
  v6 = sub_22C369824(v74);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v11);
  sub_22C36BA64();
  sub_22C3698F8(v12);
  v13 = sub_22C902D0C();
  v14 = sub_22C369824(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C3698A8();
  sub_22C36D234(v19);
  v75 = sub_22C3A5908(&qword_27D9BCBC0, &qword_22C9166F8);
  sub_22C36985C(v75);
  v21 = *(v20 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v22);
  sub_22C3721C8();
  v23 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(0);
  v24 = sub_22C369914(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v27);
  sub_22C36BA58();
  v78 = v28;
  sub_22C369930();
  MEMORY[0x28223BE20](v29);
  sub_22C36BA64();
  v77 = v30;
  v31 = *v2;
  sub_22C90B62C();
  sub_22C4ADC7C(v80, v5);
  v32 = v80;
  sub_22C90B66C();
  v33 = *v2;
  sub_22C3703F4();
  if (v35)
  {
    __break(1u);
    return;
  }

  sub_22C7E4848(v34);
  sub_22C634004();
  sub_22C90312C();
  sub_22C7E4C0C();
  v36 = v82;
  v70 = (v8 + 16);
  v68 = (v16 + 8);
  sub_22C7E49E8(v37);
  v76 = v0;
  v72 = v5;
  v71 = v13;
  if (v36)
  {
    goto LABEL_23;
  }

  while ((*(v79 + 8 * v32) & 0x8000000000000000) != 0)
  {
    if (v5 < 0)
    {
      v48 = swift_projectBox();
      swift_projectBox();
      v49 = *v70;
      (*v70)(v73, v48, v74);
      v50 = sub_22C37FE24();
      v49(v50);
      type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(0);
      type metadata accessor for PromptTreeIdentifier(0);
      sub_22C36D168();
      sub_22C7E4310(&qword_27D9BD100, v51);
      sub_22C36D33C();
      sub_22C7E4310(&qword_27D9BCB90, v52);

      LOBYTE(v48) = sub_22C90675C();
      v53 = *(v8 + 8);
      v54 = sub_22C38BD8C();
      v53(v54);
      v13 = v71;
      v5 = v72;
      (v53)(v73, v74);

      if (v48)
      {
        goto LABEL_23;
      }
    }

LABEL_18:
    sub_22C90315C();
    sub_22C7E43B8();
    v32 = sub_22C90313C();
    if (v59)
    {
      goto LABEL_23;
    }
  }

  if (v5 < 0)
  {
    goto LABEL_18;
  }

  v38 = swift_projectBox();
  v39 = swift_projectBox();
  sub_22C7E4208(v38, v77);
  v40 = v39;
  v41 = v76;
  sub_22C7E4208(v40, v78);
  v42 = *(v75 + 48);
  v43 = sub_22C37FE24();
  sub_22C7E4208(v43, v44);
  sub_22C7E4208(v78, v76 + v42);
  switch(sub_22C370B74(v76, 3, v13))
  {
    case 1u:

      sub_22C371DD0();
      sub_22C7E42B8(v78, v57);
      sub_22C7E4E14();
      sub_22C36D0A8(v76 + v42, 3, v13);
      if (v58)
      {
        goto LABEL_22;
      }

      goto LABEL_16;
    case 2u:

      sub_22C371DD0();
      sub_22C7E42B8(v78, v55);
      sub_22C7E4E14();
      if (sub_22C7E4890() == 2)
      {
        goto LABEL_22;
      }

      goto LABEL_16;
    case 3u:

      sub_22C371DD0();
      sub_22C7E42B8(v78, v56);
      sub_22C7E4E14();
      if (sub_22C7E4890() == 3)
      {
        goto LABEL_22;
      }

      goto LABEL_16;
    default:
      sub_22C37A418();
      sub_22C7E4208(v76, v69);
      if (sub_22C7E4890())
      {

        sub_22C371DD0();
        sub_22C7E42B8(v78, v45);
        sub_22C7E4E14();
        sub_22C36BA4C(&v82);
        v46 = sub_22C6AFC04();
        v47(v46);
LABEL_16:
        sub_22C36DD28(v76, &qword_27D9BCBC0, &qword_22C9166F8);
        goto LABEL_17;
      }

      sub_22C36BA4C(&v81);
      v60(v67, v76 + v42, v13);

      v61 = sub_22C902CFC();
      v62 = *v68;
      (*v68)(v67, v13);
      sub_22C7E46D0();
      sub_22C7E42B8(v78, v63);
      sub_22C7E42B8(v77, v67);
      v64 = sub_22C6AFC04();
      v62(v64);
      v41 = v76;
      if ((v61 & 1) == 0)
      {
        sub_22C36A3B8();
        sub_22C7E42B8(v76, v65);
LABEL_17:

        goto LABEL_18;
      }

LABEL_22:
      sub_22C36A3B8();
      sub_22C7E42B8(v41, v66);

LABEL_23:
      sub_22C36CC48();
      return;
  }
}

void sub_22C7DB3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  sub_22C7E48FC(a1, a2, a3, a4, a5);
  sub_22C909FFC();
  v9 = v50;
  sub_22C90B66C();
  v10 = *v8;
  sub_22C3703F4();
  if (v12)
  {
    __break(1u);
  }

  else
  {
    sub_22C386420(v11);
    sub_22C634004();
    sub_22C90312C();
    sub_22C7E4C50();
    v13 = v52;
    sub_22C7E447C(v14, v15, v16, v17, v18, v19, v20, v21, v33, v35, v37, v39, v41, v43, v45, v47, v48, v49, v50[0], v50[1], v50[2], v50[3], v51);
    if ((v13 & 1) == 0)
    {
      do
      {
        v22 = (v5 + 16 * v9);
        if (*v22 == v7 && v22[1] == v6)
        {
          break;
        }

        if (sub_22C90B4FC())
        {
          break;
        }

        v24 = sub_22C90315C();
        sub_22C386378(v24, v25, v26, v27, v28, v29, v30, v31, v34, v36, v38, v40, v42, v44, v46);
        v9 = sub_22C90313C();
      }

      while ((v32 & 1) == 0);
    }
  }
}

void sub_22C7DB47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *a4;
  sub_22C90B62C();
  if (v10)
  {
    v12 = &v102;
    MEMORY[0x2318B8B10](1);
    sub_22C909FFC();
  }

  else
  {
    v12 = &v102;
    MEMORY[0x2318B8B10](0);
  }

  sub_22C909FFC();
  sub_22C90B66C();
  v13 = *a4;
  sub_22C3703F4();
  if (v15)
  {
    __break(1u);
    return;
  }

  sub_22C7E4848(v14);
  sub_22C90312C();
  sub_22C7E4C0C();
  v98 = v102;
  v99 = v103;
  v100 = v104;
  v101 = v24;
  v95 = v9;
  v96 = v8;
  if ((v106 & 1) == 0)
  {
    do
    {
      v25 = (a2 + 40 * v12);
      v26 = *v25;
      v27 = v25[1];
      v28 = v25[2];
      v29 = v25[3];
      v30 = *(v25 + 32);
      if (v30)
      {
        if (*(a1 + 32))
        {
          v18 = *a1;
          v19 = *(a1 + 8);
          v31 = *(a1 + 16);
          v32 = *(a1 + 24);
          v33 = v26 == *a1 && v27 == v19;
          if (v33 || (sub_22C36D39C(), v16 = sub_22C90B4FC(), (v16 & 1) != 0))
          {
            if (v28 == v31 && v29 == v32)
            {
              sub_22C7E4B98(v16, v17, v18, v19, v20, v21, v22, v23);
LABEL_31:
              v84 = sub_22C37BC4C();
              sub_22C480D88(v84, v85, v86, v87, v30);
              v88 = sub_22C37BC4C();
              sub_22C43627C(v88, v89, v90, v91, v30);
              sub_22C7E4CF4();
              v92 = sub_22C50B578();
              sub_22C43627C(v92, v93, v96, v95, v94);
              return;
            }

            v35 = sub_22C90B4FC();
            v36 = v35;
            sub_22C7E4B98(v35, v37, v38, v39, v40, v41, v42, v43);
            v44 = sub_22C37BC4C();
            sub_22C480D88(v44, v45, v46, v47, 1);
            v48 = sub_22C37BC4C();
            sub_22C43627C(v48, v49, v50, v51, 1);
            sub_22C7E4CF4();
            goto LABEL_25;
          }
        }
      }

      else if ((*(a1 + 32) & 1) == 0)
      {
        v63 = *(a1 + 8);
        if (v26 == *a1 && v27 == v63)
        {
          sub_22C7E4B98(v16, v17, *a1, v63, v20, v21, v22, v23);
          goto LABEL_31;
        }

        sub_22C36D39C();
        v65 = sub_22C90B4FC();
        v36 = v65;
        sub_22C7E4B98(v65, v66, v67, v68, v69, v70, v71, v72);
        v73 = sub_22C37BC4C();
        sub_22C480D88(v73, v74, v75, v76, 0);
        v77 = sub_22C37BC4C();
        sub_22C43627C(v77, v78, v79, v80, 0);
        sub_22C7E4CF4();
LABEL_25:
        v81 = sub_22C50B578();
        sub_22C43627C(v81, v82, v96, v95, v83);
        if (v36)
        {
          return;
        }

        goto LABEL_26;
      }

      sub_22C7E4B98(v16, v17, v18, v19, v20, v21, v22, v23);
      v52 = sub_22C37BC4C();
      sub_22C480D88(v52, v53, v54, v55, v30);
      v56 = sub_22C37BC4C();
      sub_22C43627C(v56, v57, v58, v59, v30);
      sub_22C7E4CF4();
      v60 = sub_22C50B578();
      sub_22C43627C(v60, v61, v96, v95, v62);
LABEL_26:
      sub_22C90315C();
      v102 = v98;
      v103 = v99;
      v104 = v100;
      v105 = v101;
      v16 = sub_22C90313C();
      v12 = v16;
    }

    while ((v17 & 1) == 0);
  }
}

void sub_22C7DB73C()
{
  sub_22C36BA7C();
  sub_22C7E4464(v2, v3);
  v4 = sub_22C90430C();
  v5 = sub_22C369824(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C377578();
  v8 = *v0;
  sub_22C38AB84();
  sub_22C7E4310(v9, v10);
  sub_22C388DAC();
  sub_22C909F7C();
  v11 = *v0;
  sub_22C3703F4();
  if (v12)
  {
    __break(1u);
  }

  else
  {
    sub_22C7E4700();
    sub_22C36DB60();
    while ((v1 & 1) == 0)
    {
      v13 = sub_22C381BDC();
      v14(v13);
      sub_22C38AB84();
      sub_22C7E4310(&qword_27D9BC808, v15);
      sub_22C7E4500();
      v16 = sub_22C5EB560();
      v17(v16);
      if (v8)
      {
        break;
      }

      v8 = &v18;
      sub_22C90315C();
      sub_22C7E4404();
      sub_22C50B4BC();
    }

    sub_22C386878();
    sub_22C36CC48();
  }
}

void sub_22C7DB87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = sub_22C90952C();
  v30 = sub_22C369824(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22C3698A8();
  sub_22C36D234(v35);
  v36 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  sub_22C3699B8(v36);
  v38 = v37;
  v40 = *(v39 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v41);
  sub_22C36D5B4();
  v97 = v42;
  v89 = sub_22C3A5908(&qword_27D9BEC60, &qword_22C920510);
  sub_22C36985C(v89);
  v44 = *(v43 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v45);
  sub_22C7E47F4();
  v46 = *v24;
  sub_22C90B62C();
  sub_22C7E3060(&v100, v47, v48, v49, v50, v51, v52, v53, v86, v87, v88, v89, v91, v93, v95, v96, v97, v99);
  sub_22C90B66C();
  v54 = *v24;
  sub_22C3703F4();
  if (!v56)
  {
    sub_22C7E4848(v55);
    sub_22C90312C();
    sub_22C7E49F8();
    v94 = (v32 + 8);
    sub_22C7E49E8(v57);
    v59 = v90;
    while (1)
    {
      if (v58)
      {
LABEL_15:
        sub_22C36CC48();
        return;
      }

      v60 = *(v38 + 72);
      v61 = *(v59 + 48);
      sub_22C7E48F0();
      sub_22C4E719C(v62, v63, v64, v65);
      sub_22C7E48F0();
      sub_22C4E719C(v66, v67, v68, v69);
      sub_22C36D0A8(v20, 1, v29);
      if (v74)
      {
        break;
      }

      sub_22C7E48F0();
      sub_22C4E719C(v70, v71, v72, v73);
      sub_22C36D0A8(v20 + v61, 1, v29);
      if (v74)
      {
        sub_22C37ED90();
        v75(v98, v29);
LABEL_12:
        sub_22C36DD28(v20, &qword_27D9BEC60, &qword_22C920510);
        goto LABEL_14;
      }

      sub_22C36BA4C(&a14);
      v76 = sub_22C5CAC54();
      v77(v76);
      sub_22C381820();
      sub_22C7E4310(&qword_28142FA78, v78);
      v92 = sub_22C90A0BC();
      v79 = v38;
      v80 = v28;
      v81 = v26;
      v82 = *v94;
      v83 = v59;
      v59 = v90;
      (*v94)(v83, v29);
      v82(v98, v29);
      v26 = v81;
      v28 = v80;
      v38 = v79;
      v84 = sub_22C4F6088();
      sub_22C36DD28(v84, v85, &qword_22C90D960);
      if (v92)
      {
        goto LABEL_15;
      }

LABEL_14:
      sub_22C90315C();
      sub_22C7E43B8();
      sub_22C90313C();
    }

    sub_22C36D0A8(v20 + v61, 1, v29);
    if (v74)
    {
      sub_22C36DD28(v20, &qword_27D9BB0C0, &qword_22C90D960);
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  __break(1u);
}

void sub_22C7DBC48()
{
  sub_22C36BA7C();
  sub_22C7E4464(v2, v3);
  v4 = sub_22C901FAC();
  v5 = sub_22C369824(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C377578();
  v8 = *v0;
  sub_22C3805E8();
  sub_22C7E4310(v9, v10);
  sub_22C388DAC();
  sub_22C909F7C();
  v11 = *v0;
  sub_22C3703F4();
  if (v12)
  {
    __break(1u);
  }

  else
  {
    sub_22C7E4700();
    sub_22C36DB60();
    while ((v1 & 1) == 0)
    {
      v13 = sub_22C381BDC();
      v14(v13);
      sub_22C3805E8();
      sub_22C7E4310(&qword_27D9BAA28, v15);
      sub_22C7E4500();
      v16 = sub_22C5EB560();
      v17(v16);
      if (v8)
      {
        break;
      }

      v8 = &v18;
      sub_22C90315C();
      sub_22C7E4404();
      sub_22C50B4BC();
    }

    sub_22C386878();
    sub_22C36CC48();
  }
}

uint64_t sub_22C7DBD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v15 = a2;
  v5 = sub_22C90981C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a4;
  sub_22C7E4310(&qword_27D9C02C8, MEMORY[0x277D73148]);
  result = sub_22C909F7C();
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    sub_22C90312C();
    v12 = v20;
    v22 = v16;
    v23 = v17;
    v24 = v18;
    v25 = v19;
    if ((v21 & 1) == 0)
    {
      do
      {
        (*(v6 + 16))(v9, v15 + *(v6 + 72) * v12, v5);
        sub_22C7E4310(&qword_27D9C02D0, MEMORY[0x277D73148]);
        v13 = sub_22C90A0BC();
        (*(v6 + 8))(v9, v5);
        if (v13)
        {
          break;
        }

        sub_22C90315C();
        v16 = v22;
        v17 = v23;
        v18 = v24;
        v19 = v25;
        v12 = sub_22C90313C();
      }

      while ((v14 & 1) == 0);
    }

    return v12;
  }

  return result;
}

void sub_22C7DBFD0()
{
  sub_22C36BA7C();
  v3 = v2;
  v4 = sub_22C3813C8();
  v5 = type metadata accessor for PromptTreeIdentifier.ContextSubItem(v4);
  v6 = sub_22C369824(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C377578();
  v11 = *v3;
  sub_22C90B62C();
  v12 = *v0;
  sub_22C48A828(v26, *v0);
  v13 = *(v5 + 20);
  sub_22C901FAC();
  sub_22C3805E8();
  sub_22C7E4310(v14, v15);
  sub_22C7E4C18();
  sub_22C909F8C();
  v25 = *(v0 + *(v5 + 24));
  sub_22C48A9B4(v26, v25);
  sub_22C90B66C();
  v16 = *v3;
  sub_22C3703F4();
  if (v18)
  {
    __break(1u);
  }

  else
  {
    sub_22C7E4848(v17);
    sub_22C90312C();
    sub_22C7E4C0C();
    v19 = v26[64];
    sub_22C7E4524(v20);
    if ((v19 & 1) == 0)
    {
      while (1)
      {
        v21 = *(v8 + 72);
        sub_22C37B7CC();
        sub_22C7E4208(v22, v1);
        if (sub_22C48865C(*v1, v12))
        {
          v23 = *(v5 + 20);
          if (sub_22C901F6C() & 1) != 0 && (sub_22C48819C(*(v1 + *(v5 + 24)), v25))
          {
            break;
          }
        }

        sub_22C7E4760();
        sub_22C90315C();
        sub_22C7E43B8();
        sub_22C90313C();
        if (v24)
        {
          goto LABEL_9;
        }
      }

      sub_22C7E4760();
    }

LABEL_9:
    sub_22C36CC48();
  }
}

void sub_22C7DC1A4()
{
  sub_22C36BA7C();
  v2 = v1;
  sub_22C369A48();
  v3 = sub_22C90430C();
  v4 = sub_22C369824(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v9);
  sub_22C36BA64();
  v54 = v10;
  v11 = sub_22C36BA0C();
  v12 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(v11);
  v13 = sub_22C369824(v12);
  v49 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C3698A8();
  v53 = v17;
  v18 = *v2;
  sub_22C90B62C();
  sub_22C48A9B4(v55, *v0);
  v52 = v0[1];
  sub_22C471960(v55, v52);
  v48 = v12;
  v19 = *(v12 + 24);
  sub_22C90963C();
  sub_22C7E4310(&qword_27D9BC850, MEMORY[0x277D72E18]);
  sub_22C7E4C18();
  sub_22C909F8C();
  sub_22C90B66C();
  v20 = *v2;
  sub_22C3703F4();
  if (v22)
  {
    goto LABEL_18;
  }

  sub_22C7E4848(v21);
  sub_22C90312C();
  sub_22C7E49F8();
  sub_22C7E4524(v23);
  v51 = v6;
  v24 = (v6 + 8);
  v25 = v54;
  if (v26)
  {
LABEL_14:
    sub_22C36CC48();
    return;
  }

  while (1)
  {
    v27 = *(v49 + 72);
    sub_22C36FE98();
    sub_22C7E4208(v28, v53);
    v29 = *v53;
    sub_22C7E48E4();
    if ((sub_22C48819C(v30, v31) & 1) == 0)
    {
      goto LABEL_13;
    }

    v32 = v53[1];
    v33 = *(v32 + 16);
    if (v33 != *(v52 + 16))
    {
      goto LABEL_13;
    }

    if (v33 && v32 != v52)
    {
      break;
    }

LABEL_12:
    v44 = v53 + *(v48 + 24);
    if (sub_22C90962C())
    {
      sub_22C37F57C();
      sub_22C7E42B8(v53, v47);
      sub_22C37B56C();
      goto LABEL_14;
    }

LABEL_13:
    sub_22C37F57C();
    sub_22C7E42B8(v53, v45);
    sub_22C90315C();
    sub_22C7E43B8();
    sub_22C90313C();
    if (v46)
    {
      goto LABEL_14;
    }
  }

  v34 = 0;
  v35 = *(v51 + 80);
  sub_22C36BA94();
  v37 = v32 + v36;
  v38 = v52 + v36;
  while (v34 < *(v32 + 16))
  {
    v39 = *(v51 + 72) * v34;
    v40 = *(v51 + 16);
    v40(v25, v37 + v39, v3);
    if (v34 >= *(v52 + 16))
    {
      goto LABEL_17;
    }

    v40(v50, v38 + v39, v3);
    sub_22C38AB84();
    sub_22C7E4310(&qword_27D9BC808, v41);
    v42 = sub_22C90A0BC();
    v43 = *v24;
    v25 = v54;
    (*v24)(v50, v3);
    v43(v54, v3);
    if ((v42 & 1) == 0)
    {
      goto LABEL_13;
    }

    if (v33 == ++v34)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_22C7DC5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v158 = sub_22C3A5908(&qword_27D9BCBC8, &unk_22C916700);
  sub_22C36985C(v158);
  v29 = *(v28 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v30);
  sub_22C36D5B4();
  v32 = sub_22C3698F8(v31);
  v162 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(v32);
  v33 = sub_22C36985C(v162);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v36);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v37);
  sub_22C36BA64();
  sub_22C3698F8(v38);
  v39 = sub_22C902D0C();
  v40 = sub_22C369824(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v43);
  sub_22C36BA64();
  sub_22C36D234(v44);
  v157 = sub_22C3A5908(&qword_27D9BCBC0, &qword_22C9166F8);
  sub_22C36985C(v157);
  v46 = *(v45 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v47);
  sub_22C36D5B4();
  v49 = sub_22C3698F8(v48);
  v50 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(v49);
  v51 = sub_22C369914(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22C369ABC();
  v56 = v54 - v55;
  MEMORY[0x28223BE20](v57);
  sub_22C36BA64();
  v59 = sub_22C3698F8(v58);
  v60 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(v59);
  v61 = sub_22C36985C(v60);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v64);
  sub_22C36BA64();
  sub_22C36D234(v65);
  v168 = sub_22C3A5908(&qword_27D9BCBB8, &qword_22C9166F0);
  sub_22C36985C(v168);
  v67 = *(v66 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v68);
  sub_22C38059C();
  v69 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
  v70 = sub_22C369824(v69);
  v167 = v71;
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v70);
  sub_22C369838();
  sub_22C37BDA4();
  v74 = *v25;
  sub_22C90B62C();
  sub_22C487808();
  v156 = v69;
  v75 = *(v69 + 20);
  sub_22C7E4310(&qword_27D9BAAA8, MEMORY[0x277D1D800]);
  sub_22C7E4C18();
  v164 = v39;
  sub_22C909F8C();
  sub_22C90B66C();
  v76 = *v25;
  sub_22C3703F4();
  if (v78)
  {
    __break(1u);
  }

  else
  {
    v155 = v56;
    sub_22C7E4848(v77);
    sub_22C90312C();
    sub_22C7E4C0C();
    sub_22C7E49E8(v79);
    sub_22C7E4788();
    if ((v171[24] & 1) == 0)
    {
      do
      {
        v80 = *(v167 + 72);
        sub_22C7E46B8();
        sub_22C7E4208(v81, v20);
        sub_22C7E46A0(v168);
        v83 = v82;
        sub_22C7E4208(v20, v21);
        sub_22C7E4208(v27, v75 + v21);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_22C3750FC();
          sub_22C7E4BE0(&a17);
          sub_22C7E4208(v95, v96);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_22C36A3B8();
            v98 = v83;
            goto LABEL_13;
          }

          v99 = sub_22C7E45E0();
          sub_22C7E4260(v99, v160);
          sub_22C385E08(v157);
          v100 = v83;
          v102 = v101;
          sub_22C7E4208(v100, v25);
          sub_22C7E4208(v160, v75 + v25);
          v39 = v163;
          switch(sub_22C370B74(v25, 3, v164))
          {
            case 1u:
              sub_22C36A3B8();
              sub_22C7E4BB0(v118, v119);
              sub_22C36D0A8(v75 + v25, 3, v164);
              if (v132)
              {
                goto LABEL_40;
              }

              goto LABEL_26;
            case 2u:
              sub_22C36A3B8();
              sub_22C7E4BB0(v114, v115);
              if (sub_22C7E4720() == 2)
              {
                goto LABEL_40;
              }

              goto LABEL_26;
            case 3u:
              sub_22C36A3B8();
              sub_22C7E4BB0(v116, v117);
              if (sub_22C7E4720() == 3)
              {
                goto LABEL_40;
              }

              goto LABEL_26;
            default:
              sub_22C37A418();
              sub_22C7E4BE0(&v170);
              sub_22C7E4208(v103, v104);
              if (sub_22C7E4720())
              {
                sub_22C36A3B8();
                sub_22C7E4BB0(v105, v106);
                sub_22C36BA4C(v171);
                v107(v102, v164);
LABEL_26:
                sub_22C36DD28(v25, &qword_27D9BCBC0, &qword_22C9166F8);
                goto LABEL_27;
              }

              sub_22C36BA4C(v169);
              v138 = sub_22C5CAC54();
              v139(v138);
              sub_22C459028();
              v140 = sub_22C902CFC();
              v141 = sub_22C7E49A4(v140);
              v25 = v159;
              v75(v141, v164);
              sub_22C36A3B8();
              sub_22C7E4BB0(v142, v143);
              v39 = v163;
              v75(v155, v164);
              if ((v152 & 1) == 0)
              {
                sub_22C36A3B8();
                sub_22C7E42B8(v159, v151);
LABEL_27:
                sub_22C36A3B8();
                sub_22C7E42B8(v166, v120);
                sub_22C372DD8();
                sub_22C7E42B8(v21, v121);
                goto LABEL_28;
              }

LABEL_40:
              sub_22C7E42B8(v25, type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global);
              sub_22C7E42B8(v166, type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global);
              break;
          }

          goto LABEL_43;
        }

        v84 = sub_22C3750FC();
        sub_22C7E4208(v84, v39);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_22C7E4374();
          v98 = v39;
LABEL_13:
          sub_22C7E42B8(v98, v97);
          sub_22C36DD28(v21, &qword_27D9BCBB8, &qword_22C9166F0);
LABEL_28:
          sub_22C36C464();
          sub_22C7E42B8(v20, v122);
          goto LABEL_44;
        }

        v85 = sub_22C7E45FC();
        v25 = v39;
        v39 = v161;
        sub_22C7E4260(v85, v161);
        v86 = (v165 + *(v158 + 48));
        sub_22C7E4688();
        sub_22C7E4208(v25, v165);
        sub_22C7E4208(v161, v86);
        sub_22C7E48E4();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload != 1)
          {
            sub_22C7E4374();
            v112 = sub_22C37B56C();
            sub_22C7E42B8(v112, v113);
            sub_22C7E48E4();
            v25 = v159;
            v39 = v163;
            if (swift_getEnumCaseMultiPayload() == 2)
            {
              goto LABEL_42;
            }

            goto LABEL_31;
          }

          sub_22C380060();
          v88 = sub_22C5EB704();
          sub_22C7E4208(v88, v154);
          sub_22C7E48E4();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_22C36BA4C(v169);
            v89 = sub_22C5CAC54();
            v39 = v164;
            v90(v89, v86, v164);
            sub_22C36CC9C();
            v91 = sub_22C902CFC();
            v92 = sub_22C7E49A4(v91);
            v75(v92, v164);
            sub_22C7E4374();
            v93 = sub_22C37B56C();
            sub_22C7E42B8(v93, v94);
            v75(v154, v164);
            sub_22C7E4788();
            if (v152)
            {
              goto LABEL_42;
            }

LABEL_38:
            sub_22C7E4374();
            v136 = sub_22C5EB704();
            sub_22C7E42B8(v136, v137);
            goto LABEL_32;
          }

          sub_22C7E4374();
          v123 = sub_22C37B56C();
          sub_22C7E42B8(v123, v124);
          sub_22C36BA4C(v171);
          v125(v154, v164);
        }

        else
        {
          sub_22C380060();
          v108 = sub_22C5EB704();
          sub_22C7E4208(v108, v153);
          v109 = *v153;
          v75 = v153[1];
          sub_22C7E48E4();
          if (!swift_getEnumCaseMultiPayload())
          {
            v130 = *v86;
            v131 = v86[1];
            v132 = v109 == v130 && v75 == v131;
            v25 = v159;
            v39 = v163;
            if (v132)
            {

              sub_22C7E4374();
              v144 = sub_22C37B56C();
              sub_22C7E42B8(v144, v145);
LABEL_42:
              sub_22C7E42B8(v165, type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local);
              sub_22C7E42B8(v39, type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local);
LABEL_43:
              sub_22C372DD8();
              sub_22C7E42B8(v21, v146);
              v147 = v20 + *(v156 + 20);
              v148 = sub_22C902CFC();
              sub_22C36C464();
              sub_22C7E42B8(v20, v149);
              if (v148)
              {
                break;
              }

              goto LABEL_44;
            }

            v133 = sub_22C90B4FC();

            sub_22C7E4374();
            v134 = sub_22C37B56C();
            sub_22C7E42B8(v134, v135);
            if (v133)
            {
              goto LABEL_42;
            }

            goto LABEL_38;
          }

          sub_22C7E4374();
          v110 = sub_22C37B56C();
          sub_22C7E42B8(v110, v111);
        }

        sub_22C7E4788();
LABEL_31:
        v126 = sub_22C5EB704();
        sub_22C36DD28(v126, &qword_27D9BCBC8, &unk_22C916700);
LABEL_32:
        sub_22C7E4374();
        sub_22C7E42B8(v39, v127);
        sub_22C36C464();
        sub_22C7E42B8(v20, v128);
        sub_22C372DD8();
        sub_22C7E42B8(v21, v129);
LABEL_44:
        sub_22C90315C();
        sub_22C7E43B8();
        sub_22C90313C();
      }

      while ((v150 & 1) == 0);
    }

    sub_22C36CC48();
  }
}

void sub_22C7DD014(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = *a4;
  sub_22C90B62C();
  sub_22C48A9B4(v49, a1);
  v8 = v49;
  sub_22C90B66C();
  v9 = *a4;
  sub_22C3703F4();
  if (v11)
  {
    __break(1u);
  }

  else
  {
    sub_22C386420(v10);
    sub_22C90312C();
    sub_22C7E4C50();
    v12 = v51;
    sub_22C7E447C(v13, v14, v15, v16, v17, v18, v19, v20, v32, v34, v36, v38, v40, v42, v44, v46, v47, v48, v49[0], v49[1], v49[2], v49[3], v50);
    if ((v12 & 1) == 0)
    {
      do
      {
        v21 = *(a2 + 8 * v8);

        v22 = sub_22C48819C(v21, a1);

        if (v22)
        {
          break;
        }

        v23 = sub_22C90315C();
        sub_22C386378(v23, v24, v25, v26, v27, v28, v29, v30, v33, v35, v37, v39, v41, v43, v45);
        v8 = sub_22C90313C();
      }

      while ((v31 & 1) == 0);
    }
  }
}

uint64_t sub_22C7DD10C(uint64_t a1, double a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  result = sub_22C90B61C();
  if (__OFSUB__(1 << v6, 1))
  {
    __break(1u);
  }

  else
  {
    sub_22C90312C();
    result = v9;
    if ((v10 & 1) == 0)
    {
      do
      {
        if (*(a1 + 8 * result) == a2)
        {
          break;
        }

        sub_22C90315C();
        result = sub_22C90313C();
      }

      while ((v8 & 1) == 0);
    }
  }

  return result;
}

void sub_22C7DD200()
{
  sub_22C36BA7C();
  sub_22C7E4464(v2, v3);
  v4 = sub_22C9037EC();
  v5 = sub_22C369824(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C377578();
  v8 = *v0;
  sub_22C387C94();
  sub_22C7E4310(v9, v10);
  sub_22C388DAC();
  sub_22C909F7C();
  v11 = *v0;
  sub_22C3703F4();
  if (v12)
  {
    __break(1u);
  }

  else
  {
    sub_22C7E4700();
    sub_22C36DB60();
    while ((v1 & 1) == 0)
    {
      v13 = sub_22C381BDC();
      v14(v13);
      sub_22C387C94();
      sub_22C7E4310(&qword_281435760, v15);
      sub_22C7E4500();
      v16 = sub_22C5EB560();
      v17(v16);
      if (v8)
      {
        break;
      }

      v8 = &v18;
      sub_22C90315C();
      sub_22C7E4404();
      sub_22C50B4BC();
    }

    sub_22C386878();
    sub_22C36CC48();
  }
}

void sub_22C7DD340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v20;
  a20 = v21;
  v110 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = sub_22C9039AC();
  v30 = sub_22C369824(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v35);
  sub_22C36BA64();
  v111 = v36;
  v37 = sub_22C36BA0C();
  v38 = type metadata accessor for LooselyComparableRetrievedTool(v37);
  v39 = sub_22C3699B8(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22C3698A8();
  sub_22C3698F8(v44);
  v45 = sub_22C9036EC();
  v46 = sub_22C369824(v45);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v51);
  v53 = v97 - v52;
  v54 = *v24;
  sub_22C90B62C();
  sub_22C90371C();
  sub_22C7E4310(&qword_281435770, MEMORY[0x277D1ED00]);
  sub_22C7E4C18();
  sub_22C909F8C();
  v55 = *(v48 + 8);
  v103 = v53;
  v105 = v45;
  v104 = v48 + 8;
  v102 = v55;
  v55(v53, v45);
  v56 = sub_22C90374C();
  sub_22C47180C(v112, v56);

  sub_22C90B66C();
  v57 = *v24;
  sub_22C3703F4();
  if (v59)
  {
    goto LABEL_21;
  }

  sub_22C7E4848(v58);
  sub_22C90312C();
  sub_22C7E49F8();
  sub_22C7E4524(v60);
  v63 = v32 + 16;
  v109 = v32;
  v64 = (v32 + 8);
  v66 = v65;
  v67 = v106;
  v98 = v26;
  v97[1] = v28;
  v97[0] = v41;
  v108 = v63;
  if (v62)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v99 = v66;
    v100 = v62;
    v68 = *(v41 + 72);
    v101 = v61;
    sub_22C7E4208(v26 + v68 * v61, v67);
    v69 = v103;
    sub_22C90371C();
    sub_22C374490(&a13);
    sub_22C90371C();
    v70 = sub_22C9036DC();
    v71 = v105;
    v72 = v41;
    v73 = v26;
    v74 = v102;
    v102(v67, v105);
    v74(v69, v71);
    if (v70)
    {
      break;
    }

    sub_22C7E43D4();
    v67 = *(v91 - 256);
    sub_22C7E42B8(v67, v92);
    v26 = v73;
    v41 = v72;
LABEL_15:
    sub_22C90315C();
    sub_22C7E43B8();
    v66 = v112[2];
    v61 = sub_22C90313C();
    if (v62)
    {
      goto LABEL_18;
    }
  }

  v75 = sub_22C90374C();
  v76 = sub_22C90374C();
  v77 = *(v75 + 16);
  v110 = v76;
  v78 = v111;
  if (v77 != *(v76 + 16))
  {
LABEL_14:
    sub_22C7E43D4();
    v67 = *(v93 - 256);
    sub_22C7E42B8(v67, v94);

    v26 = v98;
    v41 = v97[0];
    goto LABEL_15;
  }

  if (!v77 || v75 == v110)
  {
LABEL_17:
    sub_22C7E43D4();
    sub_22C7E42B8(*(v95 - 256), v96);

LABEL_18:
    sub_22C36CC48();
    return;
  }

  v79 = 0;
  v80 = *(v109 + 80);
  sub_22C36BA94();
  v82 = v75 + v81;
  v83 = v110 + v81;
  while (v79 < *(v75 + 16))
  {
    v84 = *(v109 + 72) * v79;
    v85 = *(v109 + 16);
    v85(v78, v82 + v84, v29);
    if (v79 >= *(v110 + 16))
    {
      goto LABEL_20;
    }

    v86 = v107;
    v85(v107, v83 + v84, v29);
    sub_22C7E4310(&qword_27D9BC820, MEMORY[0x277D1EE20]);
    v87 = sub_22C90A0BC();
    v88 = *v64;
    v89 = v86;
    v78 = v111;
    (*v64)(v89, v29);
    v90 = sub_22C37BD98();
    v88(v90);
    if ((v87 & 1) == 0)
    {
      goto LABEL_14;
    }

    if (v77 == ++v79)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_22C7DD8CC()
{
  sub_22C36BA7C();
  if (v1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = v2;
  v7 = *(*v0 + 16);
  if (v7 < v2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v1;
  v9 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v1 - v2;
  if (__OFSUB__(0, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v7, v10))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v5;
  v12 = v4;
  v3(v7 - v9, 1);
  v13 = *v0;
  v14 = *(v12(0) - 8);
  v15 = v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v16 = *(v14 + 72);
  v17 = v15 + v16 * v8;
  swift_arrayDestroy();
  if (!v9)
  {
LABEL_10:
    *v0 = v13;
    sub_22C36CC48();
    return;
  }

  v18 = *(v13 + 16);
  if (__OFSUB__(v18, v6))
  {
    goto LABEL_16;
  }

  v11(v15 + v16 * v6, v18 - v6, v17);
  v19 = *(v13 + 16);
  v20 = __OFADD__(v19, v10);
  v21 = v19 - v9;
  if (!v20)
  {
    *(v13 + 16) = v21;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_22C7DDA08(uint64_t *a1, uint64_t a2)
{
  v4 = *(sub_22C3A5908(&qword_27D9BABD8, &unk_22C90FA30) - 8);
  v5 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C540(v5);
    v5 = v6;
  }

  v7 = *(v5 + 16);
  v9[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v9[1] = v7;

  sub_22C7DDAF4(v9, a2);
  *a1 = v5;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_22C7DDAF4(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_22C90B45C();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22C3A5908(&qword_27D9BABD8, &unk_22C90FA30);
        v8 = sub_22C90A64C();
        *(v8 + 16) = v7;
      }

      v9 = *(sub_22C3A5908(&qword_27D9BABD8, &unk_22C90FA30) - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;

      sub_22C7DDF30(v10, v11, a1, v6, a2);
      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_22C7DDC80(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_22C7DDC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v42 = sub_22C3A5908(&qword_27D9BABD8, &unk_22C90FA30);
  v10 = *(*(v42 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v42);
  v41 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v33 - v14);
  MEMORY[0x28223BE20](v13);
  v18 = (&v33 - v17);
  v35 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v44 = a5;
    v43 = a5 + 32;
    v20 = *(v16 + 72);
    v21 = v19 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v40 = v19;
    v34 = v20;
    v24 = v19 + v20 * a3;
    while (2)
    {
      v38 = v21;
      v39 = a3;
      v36 = v24;
      v37 = v23;
      v25 = v23;
      do
      {
        sub_22C4E719C(v24, v18, &qword_27D9BABD8, &unk_22C90FA30);
        result = sub_22C4E719C(v21, v15, &qword_27D9BABD8, &unk_22C90FA30);
        v27 = *v18;
        if ((*v18 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_14:
          __break(1u);
LABEL_15:
          __break(1u);
LABEL_16:
          __break(1u);
          return result;
        }

        v28 = *(v44 + 16);
        if (v27 >= v28)
        {
          goto LABEL_14;
        }

        if (*v15 >= v28)
        {
          goto LABEL_15;
        }

        v29 = *(v43 + 4 * v27);
        v30 = *(v43 + 4 * *v15);
        sub_22C36DD28(v15, &qword_27D9BABD8, &unk_22C90FA30);
        result = sub_22C36DD28(v18, &qword_27D9BABD8, &unk_22C90FA30);
        if (v30 >= v29)
        {
          break;
        }

        if (!v40)
        {
          goto LABEL_16;
        }

        v31 = v41;
        sub_22C4E7208(v24, v41, &qword_27D9BABD8, &unk_22C90FA30);
        swift_arrayInitWithTakeFrontToBack();
        sub_22C4E7208(v31, v21, &qword_27D9BABD8, &unk_22C90FA30);
        v21 += v22;
        v24 += v22;
      }

      while (!__CFADD__(v25++, 1));
      a3 = v39 + 1;
      v21 = v38 + v34;
      v23 = v37 - 1;
      v24 = v36 + v34;
      if (v39 + 1 != v35)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_22C7DDF30(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v128 = a1;
  v142 = sub_22C3A5908(&qword_27D9BABD8, &unk_22C90FA30);
  v136 = *(v142 - 8);
  v8 = *(v136 + 64);
  v9 = MEMORY[0x28223BE20](v142);
  v132 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v141 = &v127 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v127 - v14);
  MEMORY[0x28223BE20](v13);
  v146 = &v127 - v16;
  v139 = a3;
  v17 = a3[1];
  v145 = a5;
  if (v17 < 1)
  {
    swift_bridgeObjectRetain_n();
    v19 = MEMORY[0x277D84F90];
LABEL_110:
    v143 = *v128;
    if (!v143)
    {
      goto LABEL_162;
    }

    swift_bridgeObjectRetain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_112:
      v114 = v19 + 16;
      v115 = *(v19 + 2);
      for (i = v19; ; v19 = i)
      {
        if (v115 < 2)
        {

          return swift_bridgeObjectRelease_n();
        }

        v116 = v140;
        v117 = *v139;
        if (!*v139)
        {
          goto LABEL_159;
        }

        v118 = &v19[16 * v115];
        v19 = *v118;
        v119 = v114;
        v120 = &v114[16 * v115];
        v121 = *(v120 + 1);
        v122 = *(v136 + 72);
        v123 = v117 + v122 * *v118;
        v146 = v117 + v122 * *v120;
        v144 = v117 + v122 * v121;
        v124 = v145;

        sub_22C7DEA10(v123, v146, v144, v143, v124);
        v140 = v116;
        if (v116)
        {
          break;
        }

        if (v121 < v19)
        {
          goto LABEL_144;
        }

        if (v115 - 2 >= *v119)
        {
          goto LABEL_145;
        }

        v114 = v119;
        *v118 = v19;
        *(v118 + 1) = v121;
        v125 = *v119 - v115;
        if (*v119 < v115)
        {
          goto LABEL_146;
        }

        v115 = *v119 - 1;
        sub_22C56BFF0(v120 + 16, v125, v120);
        *v119 = v115;
      }

      swift_bridgeObjectRelease_n();
    }

LABEL_156:
    v19 = sub_22C56BFD8(v19);
    goto LABEL_112;
  }

  v127 = a4;
  v144 = a5 + 32;
  swift_bridgeObjectRetain_n();
  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  v143 = v15;
  while (1)
  {
    v20 = v18++;
    if (v18 >= v17)
    {
      goto LABEL_36;
    }

    v135 = v17;
    v21 = *v139;
    v22 = *(v136 + 72);
    v138 = v18;
    v23 = v20;
    v24 = v21 + v22 * v18;
    v25 = v146;
    sub_22C4E719C(v24, v146, &qword_27D9BABD8, &unk_22C90FA30);
    v129 = v23;
    i = v22;
    sub_22C4E719C(v21 + v22 * v23, v15, &qword_27D9BABD8, &unk_22C90FA30);
    v26 = *v25;
    if ((*v25 & 0x8000000000000000) != 0)
    {
      goto LABEL_149;
    }

    v27 = *(a5 + 16);
    if (v26 >= v27)
    {
      goto LABEL_150;
    }

    if (*v15 >= v27)
    {
      goto LABEL_151;
    }

    v28 = *(v144 + 4 * v26);
    v29 = *(v144 + 4 * *v15);
    sub_22C36DD28(v15, &qword_27D9BABD8, &unk_22C90FA30);
    sub_22C36DD28(v146, &qword_27D9BABD8, &unk_22C90FA30);
    v30 = v129 + 2;
    v18 = v138;
    v31 = v21 + i * (v129 + 2);
    v32 = v135;
    while (1)
    {
      v33 = v30;
      if (v18 + 1 >= v32)
      {
        break;
      }

      v34 = v18;
      v35 = v146;
      sub_22C4E719C(v31, v146, &qword_27D9BABD8, &unk_22C90FA30);
      sub_22C4E719C(v24, v15, &qword_27D9BABD8, &unk_22C90FA30);
      v36 = *v35;
      if ((*v35 & 0x8000000000000000) != 0)
      {
        goto LABEL_126;
      }

      v37 = *(v145 + 16);
      if (v36 >= v37)
      {
        goto LABEL_127;
      }

      if (*v15 >= v37)
      {
        goto LABEL_128;
      }

      v38 = *(v144 + 4 * v36);
      v39 = *(v144 + 4 * *v15);
      sub_22C36DD28(v15, &qword_27D9BABD8, &unk_22C90FA30);
      sub_22C36DD28(v146, &qword_27D9BABD8, &unk_22C90FA30);
      v31 += i;
      v24 += i;
      v18 = v34 + 1;
      v30 = v33 + 1;
      v32 = v135;
      if (v29 < v28 == v39 >= v38)
      {
        goto LABEL_15;
      }
    }

    v18 = v32;
LABEL_15:
    if (v29 >= v28)
    {
      goto LABEL_34;
    }

    v20 = v129;
    if (v18 < v129)
    {
      goto LABEL_155;
    }

    if (v129 < v18)
    {
      if (v32 >= v33)
      {
        v40 = v33;
      }

      else
      {
        v40 = v32;
      }

      v41 = i * (v40 - 1);
      v42 = i * v40;
      v43 = v129 * i;
      v44 = v18;
      v138 = v18;
      do
      {
        if (v20 != --v44)
        {
          v45 = *v139;
          if (!*v139)
          {
            goto LABEL_160;
          }

          sub_22C4E7208(v45 + v43, v132, &qword_27D9BABD8, &unk_22C90FA30);
          v46 = v43 < v41 || v45 + v43 >= (v45 + v42);
          v135 = v44;
          if (v46)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v43 != v41)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_22C4E7208(v132, v45 + v41, &qword_27D9BABD8, &unk_22C90FA30);
          v18 = v138;
          v44 = v135;
        }

        ++v20;
        v41 -= i;
        v42 -= i;
        v43 += i;
      }

      while (v20 < v44);
LABEL_34:
      a5 = v145;
      v20 = v129;
      goto LABEL_36;
    }

    a5 = v145;
LABEL_36:
    v47 = v139[1];
    if (v18 < v47)
    {
      if (__OFSUB__(v18, v20))
      {
        goto LABEL_152;
      }

      if (v18 - v20 < v127)
      {
        if (__OFADD__(v20, v127))
        {
          goto LABEL_153;
        }

        if (v20 + v127 >= v47)
        {
          v48 = v139[1];
        }

        else
        {
          v48 = v20 + v127;
        }

        if (v48 < v20)
        {
          goto LABEL_154;
        }

        if (v18 != v48)
        {
          break;
        }
      }
    }

LABEL_56:
    if (v18 < v20)
    {
      goto LABEL_148;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v111 = *(v19 + 2);
      sub_22C590218();
      v19 = v112;
    }

    v61 = *(v19 + 2);
    v62 = v61 + 1;
    if (v61 >= *(v19 + 3) >> 1)
    {
      sub_22C590218();
      v19 = v113;
    }

    *(v19 + 2) = v62;
    v63 = v19 + 32;
    v64 = &v19[16 * v61 + 32];
    *v64 = v20;
    *(v64 + 1) = v18;
    v135 = *v128;
    if (!v135)
    {
      goto LABEL_161;
    }

    if (v61)
    {
      i = v19;
      v138 = v18;
      v134 = v19 + 32;
      while (1)
      {
        v65 = v62 - 1;
        v66 = &v63[16 * v62 - 16];
        v67 = &v19[16 * v62];
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v68 = *(v19 + 4);
          v69 = *(v19 + 5);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_77:
          if (v71)
          {
            goto LABEL_135;
          }

          v83 = *v67;
          v82 = *(v67 + 1);
          v84 = __OFSUB__(v82, v83);
          v85 = v82 - v83;
          v86 = v84;
          if (v84)
          {
            goto LABEL_138;
          }

          v87 = *(v66 + 1);
          v88 = v87 - *v66;
          if (__OFSUB__(v87, *v66))
          {
            goto LABEL_141;
          }

          if (__OFADD__(v85, v88))
          {
            goto LABEL_143;
          }

          if (v85 + v88 >= v70)
          {
            if (v70 < v88)
            {
              v65 = v62 - 2;
            }

            goto LABEL_99;
          }

          goto LABEL_92;
        }

        if (v62 < 2)
        {
          goto LABEL_137;
        }

        v90 = *v67;
        v89 = *(v67 + 1);
        v78 = __OFSUB__(v89, v90);
        v85 = v89 - v90;
        v86 = v78;
LABEL_92:
        if (v86)
        {
          goto LABEL_140;
        }

        v92 = *v66;
        v91 = *(v66 + 1);
        v78 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v78)
        {
          goto LABEL_142;
        }

        if (v93 < v85)
        {
          goto LABEL_106;
        }

LABEL_99:
        if (v65 - 1 >= v62)
        {
          goto LABEL_129;
        }

        v97 = v140;
        v98 = *v139;
        if (!*v139)
        {
          goto LABEL_158;
        }

        v99 = &v63[16 * v65 - 16];
        v100 = *v99;
        v101 = v65;
        v102 = &v63[16 * v65];
        v103 = *(v102 + 1);
        v104 = *(v136 + 72);
        v105 = v98 + v104 * *v99;
        v106 = v98 + v104 * *v102;
        v107 = v98 + v104 * v103;
        v108 = v145;

        sub_22C7DEA10(v105, v106, v107, v135, v108);
        v140 = v97;
        if (v97)
        {
          swift_bridgeObjectRelease_n();
        }

        v19 = i;
        v15 = v143;
        if (v103 < v100)
        {
          goto LABEL_130;
        }

        v109 = *(i + 2);
        if (v101 > v109)
        {
          goto LABEL_131;
        }

        *v99 = v100;
        *(v99 + 1) = v103;
        if (v101 >= v109)
        {
          goto LABEL_132;
        }

        v62 = v109 - 1;
        sub_22C56BFF0(v102 + 16, v109 - 1 - v101, v102);
        *(v19 + 2) = v109 - 1;
        v110 = v109 > 2;
        a5 = v145;
        v18 = v138;
        v63 = v134;
        if (!v110)
        {
          goto LABEL_106;
        }
      }

      v72 = &v63[16 * v62];
      v73 = *(v72 - 8);
      v74 = *(v72 - 7);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_133;
      }

      v77 = *(v72 - 6);
      v76 = *(v72 - 5);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_134;
      }

      v79 = *(v67 + 1);
      v80 = v79 - *v67;
      if (__OFSUB__(v79, *v67))
      {
        goto LABEL_136;
      }

      v78 = __OFADD__(v70, v80);
      v81 = v70 + v80;
      if (v78)
      {
        goto LABEL_139;
      }

      if (v81 >= v75)
      {
        v95 = *v66;
        v94 = *(v66 + 1);
        v78 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v78)
        {
          goto LABEL_147;
        }

        if (v70 < v96)
        {
          v65 = v62 - 2;
        }

        goto LABEL_99;
      }

      goto LABEL_77;
    }

LABEL_106:
    v17 = v139[1];
    if (v18 >= v17)
    {
      goto LABEL_110;
    }
  }

  v49 = v18;
  v50 = *v139;
  v51 = *(v136 + 72);
  v52 = *v139 + v51 * (v49 - 1);
  v53 = -v51;
  v129 = v20;
  v130 = v51;
  v54 = (v20 - v49);
  i = v19;
  v138 = v49;
  v55 = v50 + v49 * v51;
  v131 = v48;
LABEL_46:
  v133 = v55;
  v134 = v54;
  v135 = v52;
  while (1)
  {
    v19 = v146;
    sub_22C4E719C(v55, v146, &qword_27D9BABD8, &unk_22C90FA30);
    sub_22C4E719C(v52, v15, &qword_27D9BABD8, &unk_22C90FA30);
    v56 = *v19;
    if ((*v19 & 0x8000000000000000) != 0)
    {
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
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
      goto LABEL_156;
    }

    v57 = *(v145 + 16);
    if (v56 >= v57)
    {
      goto LABEL_124;
    }

    if (*v15 >= v57)
    {
      goto LABEL_125;
    }

    v58 = *(v144 + 4 * v56);
    v59 = *(v144 + 4 * *v15);
    sub_22C36DD28(v15, &qword_27D9BABD8, &unk_22C90FA30);
    sub_22C36DD28(v146, &qword_27D9BABD8, &unk_22C90FA30);
    if (v59 >= v58)
    {
      goto LABEL_54;
    }

    if (!v50)
    {
      break;
    }

    v60 = v141;
    sub_22C4E7208(v55, v141, &qword_27D9BABD8, &unk_22C90FA30);
    swift_arrayInitWithTakeFrontToBack();
    sub_22C4E7208(v60, v52, &qword_27D9BABD8, &unk_22C90FA30);
    v52 += v53;
    v55 += v53;
    v46 = __CFADD__(v54++, 1);
    v15 = v143;
    if (v46)
    {
LABEL_54:
      v52 = v135 + v130;
      v54 = v134 - 1;
      v55 = v133 + v130;
      if (++v138 == v131)
      {
        v18 = v131;
        a5 = v145;
        v19 = i;
        v20 = v129;
        goto LABEL_56;
      }

      goto LABEL_46;
    }
  }

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_158:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_159:

  __break(1u);
LABEL_160:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_161:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_162:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_22C7DEA10(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v60 = a5;
  v58 = sub_22C3A5908(&qword_27D9BABD8, &unk_22C90FA30);
  v9 = *(*(v58 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v58);
  v12 = (&v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v10);
  v15 = (&v50 - v14);
  v17 = *(v16 + 72);
  if (!v17)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return result;
  }

  v18 = a2 - a1 == 0x8000000000000000 && v17 == -1;
  if (v18)
  {
    goto LABEL_73;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_74;
  }

  v57 = a3;
  v21 = (a2 - a1) / v17;
  v63 = a1;
  v62 = a4;
  v59 = v60 + 32;
  v22 = v19 / v17;
  if (v21 >= v19 / v17)
  {
    sub_22C3D7B34(a2, v19 / v17, a4);
    v30 = a4 + v22 * v17;
    v31 = -v17;
    v32 = v30;
    v33 = v57;
    v56 = v31;
    v53 = a1;
    v54 = a4;
LABEL_40:
    v57 = a2 + v31;
    v34 = v33;
    v35 = v32;
    v36 = v32;
    v55 = a2;
    v52 = v32;
    while (1)
    {
      if (v30 <= a4)
      {
        v63 = a2;
        v61 = v35;
        goto LABEL_65;
      }

      if (a2 <= a1)
      {
        v63 = a2;
        v61 = v36;
        goto LABEL_65;
      }

      v37 = v15;
      v38 = v34;
      v51 = v35;
      v39 = v56;
      v40 = v30 + v56;
      v41 = v37;
      sub_22C4E719C(v30 + v56, v37, &qword_27D9BABD8, &unk_22C90FA30);
      result = sub_22C4E719C(v57, v12, &qword_27D9BABD8, &unk_22C90FA30);
      v42 = *v41;
      if ((*v41 & 0x8000000000000000) != 0)
      {
        break;
      }

      v43 = *(v60 + 16);
      if (v42 >= v43)
      {
        goto LABEL_70;
      }

      if (*v12 >= v43)
      {
        goto LABEL_71;
      }

      v44 = *(v59 + 4 * v42);
      v45 = *(v59 + 4 * *v12);
      sub_22C36DD28(v12, &qword_27D9BABD8, &unk_22C90FA30);
      sub_22C36DD28(v41, &qword_27D9BABD8, &unk_22C90FA30);
      v33 = v38 + v39;
      if (v45 < v44)
      {
        v47 = v38 < v55 || v33 >= v55;
        v48 = v57;
        if (v47)
        {
          swift_arrayInitWithTakeFrontToBack();
          v32 = v51;
          v31 = v56;
          v15 = v41;
          a2 = v48;
          a1 = v53;
          a4 = v54;
        }

        else
        {
          v32 = v51;
          v18 = v38 == v55;
          a2 = v57;
          v31 = v56;
          v15 = v41;
          v49 = v57;
          a1 = v53;
          a4 = v54;
          if (!v18)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v49;
            v32 = v51;
          }
        }

        goto LABEL_40;
      }

      if (v38 < v30 || v33 >= v30)
      {
        swift_arrayInitWithTakeFrontToBack();
        v34 = v33;
        v30 = v40;
        v35 = v40;
        v15 = v41;
        a4 = v54;
        a2 = v55;
        v36 = v52;
        a1 = v53;
      }

      else
      {
        v35 = v40;
        v18 = v30 == v38;
        v34 = v33;
        v30 = v40;
        v15 = v41;
        a4 = v54;
        a2 = v55;
        v36 = v52;
        a1 = v53;
        if (!v18)
        {
          swift_arrayInitWithTakeBackToFront();
          v34 = v33;
          v30 = v40;
          v35 = v40;
        }
      }
    }

LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  sub_22C3D7B34(a1, (a2 - a1) / v17, a4);
  v56 = a4 + v21 * v17;
  v61 = v56;
  while (a4 < v56 && a2 < v57)
  {
    sub_22C4E719C(a2, v15, &qword_27D9BABD8, &unk_22C90FA30);
    result = sub_22C4E719C(a4, v12, &qword_27D9BABD8, &unk_22C90FA30);
    v24 = *v15;
    if ((*v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v25 = *(v60 + 16);
    if (v24 >= v25)
    {
      goto LABEL_67;
    }

    if (*v12 >= v25)
    {
      goto LABEL_68;
    }

    v26 = *(v59 + 4 * v24);
    v27 = *(v59 + 4 * *v12);
    sub_22C36DD28(v12, &qword_27D9BABD8, &unk_22C90FA30);
    sub_22C36DD28(v15, &qword_27D9BABD8, &unk_22C90FA30);
    if (v27 >= v26)
    {
      if (a1 < a4 || a1 >= a4 + v17)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v62 = a4 + v17;
      a4 += v17;
    }

    else
    {
      if (a1 < a2 || a1 >= a2 + v17)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      a2 += v17;
    }

    a1 += v17;
    v63 = a1;
  }

LABEL_65:
  sub_22C83827C(&v63, &v62, &v61);

  return 1;
}

void sub_22C7DEF20(uint64_t a1)
{
  v2 = v1;
  v4 = v1 + 1;
  v5 = *(v1[1] + 16);
  v6 = *v2;
  if (!*v2)
  {
    if (!v5)
    {
      goto LABEL_13;
    }

LABEL_12:
    sub_22C7DFBF4();
    return;
  }

  swift_beginAccess();
  if ((*(v6 + 16) & 0x3FLL) == (*(v6 + 24) & 0x3FLL))
  {
    if (!v5)
    {
      goto LABEL_13;
    }

LABEL_8:
    sub_22C7D5DC0();
    v7 = *v2;
    if (*v2)
    {
      v8 = *v2;

      sub_22C7E02B0();
      if (__OFADD__(a1, 1))
      {
        __break(1u);
      }

      else if (a1 + 1 >= a1)
      {
        v9 = v2[1];

        sub_22C7E0F6C(a1, a1 + 1, v9, v7 + 16, v7 + 32, MEMORY[0x277D1C338], &qword_2814357B0, MEMORY[0x277D1C338], MEMORY[0x277D1C348], sub_22C8A53CC, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);

        goto LABEL_12;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  if (v5 > MEMORY[0x2318B0650]())
  {
    goto LABEL_8;
  }

LABEL_13:
  sub_22C7DFBF4();
  if (v6)
  {
    swift_beginAccess();
    v10 = *(v6 + 24) & 0x3FLL;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(*v4 + 16);
  if (v10 || v11 >= 0x10)
  {
    MEMORY[0x2318B0670](v11);
    sub_22C7D5F0C();
  }

  else
  {

    *v2 = 0;
  }
}

void sub_22C7DF218(uint64_t a1)
{
  v2 = v1;
  v4 = v1 + 1;
  v5 = *(v1[1] + 16);
  v6 = *v2;
  if (!*v2)
  {
    if (!v5)
    {
      goto LABEL_13;
    }

LABEL_12:
    sub_22C7DFBF4();
    return;
  }

  swift_beginAccess();
  if ((*(v6 + 16) & 0x3FLL) == (*(v6 + 24) & 0x3FLL))
  {
    if (!v5)
    {
      goto LABEL_13;
    }

LABEL_8:
    sub_22C7D5DC0();
    v7 = *v2;
    if (*v2)
    {
      v8 = *v2;

      sub_22C7E02B0();
      if (__OFADD__(a1, 1))
      {
        __break(1u);
      }

      else if (a1 + 1 >= a1)
      {
        v9 = v2[1];

        sub_22C7E0F6C(a1, a1 + 1, v9, v7 + 16, v7 + 32, MEMORY[0x277D73148], &unk_27D9C02C8, MEMORY[0x277D73148], MEMORY[0x277D73150], sub_22C8A53E4, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);

        goto LABEL_12;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  if (v5 > MEMORY[0x2318B0650]())
  {
    goto LABEL_8;
  }

LABEL_13:
  sub_22C7DFBF4();
  if (v6)
  {
    swift_beginAccess();
    v10 = *(v6 + 24) & 0x3FLL;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(*v4 + 16);
  if (v10 || v11 >= 0x10)
  {
    MEMORY[0x2318B0670](v11);
    sub_22C7D5F0C();
  }

  else
  {

    *v2 = 0;
  }
}

void sub_22C7DF510(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v2 + 1;
  v6 = *(v2[1] + 16);
  v7 = *v3;
  if (!*v3)
  {
    if (!v6)
    {
      goto LABEL_13;
    }

LABEL_12:
    sub_22C7DFE58();
    return;
  }

  swift_beginAccess();
  if ((*(v7 + 16) & 0x3FLL) == (*(v7 + 24) & 0x3FLL))
  {
    if (!v6)
    {
      goto LABEL_13;
    }

LABEL_8:
    sub_22C7D5DC0();
    v9 = *v3;
    if (*v3)
    {
      v10 = *v3;

      sub_22C7DFFD4(a2, (v9 + 16), v9 + 32, v3);
      if (__OFADD__(a1, 1))
      {
        __break(1u);
      }

      else if (a1 + 1 >= a1)
      {
        v11 = v3[1];

        sub_22C7E141C(a1, a1 + 1, v11, (v9 + 16), v9 + 32);

        goto LABEL_12;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  if (v6 > MEMORY[0x2318B0650]())
  {
    goto LABEL_8;
  }

LABEL_13:
  sub_22C7DFE58();
  if (v7)
  {
    swift_beginAccess();
    v12 = *(v7 + 24) & 0x3FLL;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(*v5 + 16);
  if (v12 || v13 >= 0x10)
  {
    MEMORY[0x2318B0670](v13);
    sub_22C7D5EC8();
  }

  else
  {

    *v3 = 0;
  }
}

void sub_22C7DF764(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v2 + 1;
  v6 = *(v2[1] + 16);
  v7 = *v3;
  if (!*v3)
  {
    if (!v6)
    {
      goto LABEL_13;
    }

LABEL_12:
    sub_22C7DFE58();
    return;
  }

  swift_beginAccess();
  if ((*(v7 + 16) & 0x3FLL) == (*(v7 + 24) & 0x3FLL))
  {
    if (!v6)
    {
      goto LABEL_13;
    }

LABEL_8:
    sub_22C7D5DC0();
    v9 = *v3;
    if (*v3)
    {
      v10 = *v3;

      sub_22C7E058C(a2, (v9 + 16), v9 + 32, v3);
      if (__OFADD__(a1, 1))
      {
        __break(1u);
      }

      else if (a1 + 1 >= a1)
      {
        v11 = v3[1];

        sub_22C7E1964(a1, a1 + 1, v11, (v9 + 16), v9 + 32);

        goto LABEL_12;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  if (v6 > MEMORY[0x2318B0650]())
  {
    goto LABEL_8;
  }

LABEL_13:
  sub_22C7DFE58();
  if (v7)
  {
    swift_beginAccess();
    v12 = *(v7 + 24) & 0x3FLL;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(*v5 + 16);
  if (v12 || v13 >= 0x10)
  {
    MEMORY[0x2318B0670](v13);
    sub_22C7D5EC8();
  }

  else
  {

    *v3 = 0;
  }
}

void sub_22C7DF9B8(int64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v2 + 1;
  v6 = *(v2[1] + 16);
  v7 = *v3;
  if (!*v3)
  {
    if (v6)
    {
      sub_22C7DFF50(a1);
      return;
    }

    goto LABEL_12;
  }

  swift_beginAccess();
  if ((*(v7 + 16) & 0x3FLL) == (*(v7 + 24) & 0x3FLL))
  {
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else if (v6 <= MEMORY[0x2318B0650]())
  {
LABEL_12:
    sub_22C7DFF50(a1);
    if (v7)
    {
      swift_beginAccess();
      v12 = *(v7 + 24) & 0x3FLL;
    }

    else
    {
      v12 = 0;
    }

    v13 = *(*v5 + 16);
    if (v12 || v13 >= 0x10)
    {
      MEMORY[0x2318B0670](v13);
      sub_22C7D6000();
    }

    else
    {

      *v3 = 0;
    }

    return;
  }

  sub_22C7D5DC0();
  v9 = *v3;
  if (*v3)
  {
    v10 = *v3;

    sub_22C7E0D7C(a2, (v9 + 16), v9 + 32, v3);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {
      v11 = v3[1];

      sub_22C7E28BC(a1, a1 + 1, v11, (v9 + 16));

      sub_22C7DFF50(a1);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_22C7DFB7C(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C2D0(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = (v3 + a1 + 32);
    sub_22C3D8760(v7 + 1, v5 - 1 - a1, v7);
    *(v3 + 16) = v6;
    *v1 = v3;
  }
}

void sub_22C7DFBF4()
{
  sub_22C3BDA38();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = v6(v9);
  }

  v10 = *(v9 + 16);
  if (v10 <= v8)
  {
    __break(1u);
  }

  else
  {
    v11 = v4(0);
    sub_22C36985C(v11);
    v13 = *(v12 + 32);
    v12 += 32;
    v14 = *(v12 + 40);
    v15 = v9 + ((*(v12 + 48) + 32) & ~*(v12 + 48)) + v14 * v8;
    v16 = sub_22C36ECB4();
    v17(v16);
    v2(v15 + v14, v10 - 1 - v8, v15);
    *(v9 + 16) = v10 - 1;
    *v0 = v9;
    sub_22C3BDA24();
  }
}

void sub_22C7DFCD0(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C390(v5);
    v5 = v6;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = *(sub_22C3A5908(&qword_27D9BAEC8, &unk_22C90D770) - 8);
    v9 = *(v8 + 72);
    v10 = v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + v9 * a1;
    sub_22C4E7208(v10, a2, &qword_27D9BAEC8, &unk_22C90D770);
    sub_22C3D70F8(v10 + v9, v7 - 1 - a1, v10);
    *(v5 + 16) = v7 - 1;
    *v2 = v5;
  }
}

void sub_22C7DFDE0(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C3C0(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = v3 + 8 * a1;
    v9 = *(v8 + 32);
    sub_22C3D874C(v8 + 40, v7, v8 + 32);
    *(v3 + 16) = v6;
    *v1 = v3;
  }
}

void sub_22C7DFE58()
{
  sub_22C36BA7C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = v6(v9);
  }

  v10 = *(v9 + 16);
  if (v10 <= v8)
  {
    __break(1u);
  }

  else
  {
    v11 = v4(0);
    sub_22C3699B8(v11);
    v14 = *(v13 + 72);
    v15 = v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + v14 * v8;
    sub_22C634004();
    sub_22C7E4260(v16, v17);
    v2(v15 + v14, v10 - 1 - v8, v15);
    *(v9 + 16) = v10 - 1;
    *v0 = v9;
    sub_22C36CC48();
  }
}

void sub_22C7DFF50(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C134(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = v3 + 16 * a1;
    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    sub_22C3A4F80((v8 + 48), v7, (v8 + 32));
    *(v3 + 16) = v6;
    *v1 = v3;
  }
}

unint64_t sub_22C7DFFD4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PromptTreeIdentifier(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C9030FC();
  *&v32 = a2;
  *(&v32 + 1) = a3;
  *&v33 = a1;
  *(&v33 + 1) = v13;
  *&v34 = v14;
  *(&v34 + 1) = v15;
  v35 = 0;
  sub_22C90315C();
  if (*(&v33 + 1))
  {
    v31[1] = a3;
    v16 = sub_22C90310C();
    v17 = a1;
    while (1)
    {
      v40 = v32;
      v41 = v33;
      v42 = v34;
      v43 = v35;
      result = sub_22C90313C();
      if (v19)
      {
LABEL_29:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v20 = *(a4 + 8);
      if (result >= *(v20 + 16))
      {
        goto LABEL_27;
      }

      v21 = *a2;
      sub_22C7E4208(v20 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * result, v12);
      sub_22C90B62C();
      sub_22C489574();
      v22 = sub_22C90B66C();
      result = sub_22C7E42B8(v12, type metadata accessor for PromptTreeIdentifier);
      v23 = 1 << *a2;
      v24 = v23 - 1;
      if (__OFSUB__(v23, 1))
      {
        goto LABEL_28;
      }

      v25 = v24 & v22;
      if (v17 >= v16)
      {
        if (v25 < v16 || v17 < v25)
        {
          goto LABEL_21;
        }
      }

      else if (v25 < v16 && v17 < v25)
      {
        goto LABEL_21;
      }

      v36 = v32;
      v37 = v33;
      v38 = v34;
      v39 = v35;
      v28 = sub_22C90313C();
      if ((v29 & 1) == 0)
      {
        v30 = ((v24 & ((v28 - (a2[1] >> 6)) >> 63)) + v28 - (a2[1] >> 6)) ^ v24;
      }

      v17 = v37;
      sub_22C90311C();
LABEL_21:
      sub_22C90315C();
      if (!*(&v33 + 1))
      {
        return sub_22C90311C();
      }
    }
  }

  return sub_22C90311C();
}

void sub_22C7E02B0()
{
  sub_22C36BA7C();
  v2 = v1;
  v4 = v3;
  v6 = v5(0);
  sub_22C369824(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  sub_22C3721C8();
  v33 = sub_22C9030FC();
  sub_22C90315C();
  if (v33)
  {
    v12 = sub_22C90310C();
    while (1)
    {
      sub_22C7E4C8C();
      v13 = sub_22C90313C();
      if (v14)
      {
LABEL_28:
        __break(1u);
        return;
      }

      if (v13 < 0)
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      sub_22C7E4C00();
      v17 = *(v16 + 8);
      if (v15 >= *(v17 + 16))
      {
        goto LABEL_26;
      }

      v18 = *v2;
      (*(v8 + 16))(v0, v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v15, v6);
      sub_22C37B56C();
      sub_22C7E48E4();
      sub_22C7E4310(v19, v20);
      sub_22C37DA2C();
      v21 = sub_22C909F7C();
      (*(v8 + 8))(v0, v6);
      v22 = *v2;
      sub_22C38A0A8();
      v24 = v23 - 1;
      if (__OFSUB__(v23, 1))
      {
        goto LABEL_27;
      }

      v25 = v24 & v21;
      if (v4 >= v12)
      {
        if (v25 >= v12 && v4 >= v25)
        {
LABEL_18:
          sub_22C7E4C8C();
          v34 = v28;
          v29 = sub_22C90313C();
          if ((v30 & 1) == 0)
          {
            v31 = ((v24 & ((v29 - (v2[1] >> 6)) >> 63)) + v29 - (v2[1] >> 6)) ^ v24;
          }

          v4 = v34;
          sub_22C7E4DBC();
        }
      }

      else if (v25 >= v12 || v4 >= v25)
      {
        goto LABEL_18;
      }

      sub_22C90315C();
    }
  }

  sub_22C36CC48();

  sub_22C90311C();
}

unint64_t sub_22C7E058C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v77 = a4;
  v69 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(0);
  v7 = *(*(v69 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v69);
  v10 = (&v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v76 = &v64 - v11;
  v79 = sub_22C902D0C();
  v12 = *(v79 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v79);
  v67 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v71 = (&v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v20 = &v64 - v19;
  v75 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
  v21 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
  v73 = *(v24 - 8);
  v74 = v24;
  v25 = *(v73 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_22C9030FC();
  *&v80 = a2;
  *(&v80 + 1) = a3;
  v70 = a3;
  v78 = a1;
  *&v81 = a1;
  *(&v81 + 1) = v28;
  *&v82 = v29;
  *(&v82 + 1) = v30;
  v83 = 0;
  sub_22C90315C();
  if (*(&v81 + 1))
  {
    v31 = v78;
    v32 = sub_22C90310C();
    v65 = (v12 + 8);
    v66 = (v12 + 32);
    v33 = v31;
    v68 = v20;
    v72 = v23;
    while (1)
    {
      v88 = v80;
      v89 = v81;
      v90 = v82;
      v91 = v83;
      result = sub_22C90313C();
      if (v35)
      {
LABEL_44:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v36 = *(v77 + 8);
      if (result >= *(v36 + 16))
      {
        goto LABEL_42;
      }

      v37 = v32;
      v38 = *a2;
      sub_22C7E4208(v36 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * result, v27);
      sub_22C90B62C();
      sub_22C7E4208(v27, v23);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v39 = v23;
        v40 = v76;
        sub_22C7E4260(v39, v76);
        MEMORY[0x2318B8B10](1);
        sub_22C7E4208(v40, v10);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v42 = v67;
            v43 = v79;
            (*v66)(v67, v10, v79);
            MEMORY[0x2318B8B10](2);
            sub_22C7E4310(&qword_27D9BAAA8, MEMORY[0x277D1D800]);
            sub_22C909F8C();
            v44 = v42;
            v20 = v68;
            (*v65)(v44, v43);
          }

          else
          {
            MEMORY[0x2318B8B10](0);
          }
        }

        else
        {
          v50 = *v10;
          v49 = v10[1];
          MEMORY[0x2318B8B10](1);
          v20 = v68;
          sub_22C909FFC();
        }

        v32 = v37;
        v51 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local;
        v52 = v76;
      }

      else
      {
        sub_22C7E4260(v23, v20);
        MEMORY[0x2318B8B10](0);
        v45 = v71;
        sub_22C7E4208(v20, v71);
        switch(sub_22C370B74(v45, 3, v79))
        {
          case 1u:
            v53 = 0;
            goto LABEL_18;
          case 2u:
            v53 = 1;
            goto LABEL_18;
          case 3u:
            v53 = 2;
LABEL_18:
            MEMORY[0x2318B8B10](v53);
            break;
          default:
            v46 = v67;
            v47 = v79;
            (*v66)(v67, v71, v79);
            MEMORY[0x2318B8B10](3);
            sub_22C7E4310(&qword_27D9BAAA8, MEMORY[0x277D1D800]);
            sub_22C909F8C();
            v48 = v46;
            v20 = v68;
            (*v65)(v48, v47);
            break;
        }

        v51 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global;
        v52 = v20;
      }

      sub_22C7E42B8(v52, v51);
      v54 = *(v74 + 20);
      sub_22C7E4310(&qword_27D9BAAA8, MEMORY[0x277D1D800]);
      sub_22C909F8C();
      v55 = sub_22C90B66C();
      result = sub_22C7E42B8(v27, type metadata accessor for PromptTreeIdentifier.TranscriptReference);
      v56 = 1 << *a2;
      v57 = v56 - 1;
      if (__OFSUB__(v56, 1))
      {
        goto LABEL_43;
      }

      v58 = v57 & v55;
      if (v33 >= v32)
      {
        if (v58 >= v32 && v33 >= v58)
        {
LABEL_26:
          v84 = v80;
          v85 = v81;
          v86 = v82;
          v87 = v83;
          v60 = sub_22C90313C();
          if ((v61 & 1) == 0)
          {
            v63 = ((v57 & ((v60 - (a2[1] >> 6)) >> 63)) + v60 - (a2[1] >> 6)) ^ v57;
          }

          v23 = v72;
          v33 = v85;
          sub_22C90311C();
          v78 = v33;
          goto LABEL_36;
        }
      }

      else if (v58 >= v32 || v33 >= v58)
      {
        goto LABEL_26;
      }

      v23 = v72;
LABEL_36:
      sub_22C90315C();
      if (!*(&v81 + 1))
      {
        return sub_22C90311C();
      }
    }
  }

  return sub_22C90311C();
}

unint64_t sub_22C7E0D7C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v26 = sub_22C9030FC();
  sub_22C90315C();
  if (v26)
  {
    v7 = sub_22C90310C();
    v8 = a1;
    while (1)
    {
      result = sub_22C90313C();
      if (v10)
      {
LABEL_28:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v11 = *(a4 + 8);
      if (result >= *(v11 + 16))
      {
        goto LABEL_26;
      }

      v12 = *a2;
      v13 = v11 + 16 * result;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      sub_22C90B62C();

      sub_22C909FFC();
      v16 = sub_22C90B66C();

      v17 = 1 << *a2;
      v18 = v17 - 1;
      if (__OFSUB__(v17, 1))
      {
        goto LABEL_27;
      }

      v19 = v18 & v16;
      if (v8 >= v7)
      {
        if (v19 >= v7 && v8 >= v19)
        {
LABEL_18:
          v22 = sub_22C90313C();
          if ((v23 & 1) == 0)
          {
            v24 = ((v18 & ((v22 - (a2[1] >> 6)) >> 63)) + v22 - (a2[1] >> 6)) ^ v18;
          }

          v8 = a1;
          sub_22C90311C();
        }
      }

      else if (v19 >= v7 || v8 >= v19)
      {
        goto LABEL_18;
      }

      sub_22C90315C();
    }
  }

  return sub_22C90311C();
}

void sub_22C7E0F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t (*a22)(uint64_t, unint64_t))
{
  sub_22C36BA7C();
  v108 = v23;
  v109 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v107 = a21;
  v36 = v35(0);
  v37 = sub_22C369824(v36);
  v105 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  sub_22C369ABC();
  sub_22C36D6DC();
  MEMORY[0x28223BE20](v41);
  v43 = v102 - v42;
  v44 = v32 - v34;
  if (__OFSUB__(v32, v34))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v44 < 1)
  {
    goto LABEL_52;
  }

  v103 = v30;
  v45 = *(v30 + 16);
  if ((v45 - v44) / 2 > v34)
  {
    if (MEMORY[0x2318B0640](*v28 & 0x3FLL) / 3 <= v34)
    {
      sub_22C37275C();
      v72 = sub_22C9030FC();
      v110 = v28;
      v111 = v26;
      v112 = 0;
      v113 = v72;
      sub_22C7E4C5C(v72, v73, v74);
      do
      {
        v75 = sub_22C7E4434();
        if ((v76 & 1) == 0 && v75 < v34)
        {
          if (__OFADD__(v75, v44))
          {
            goto LABEL_55;
          }

          sub_22C7E4DFC();
        }

        sub_22C90315C();
      }

      while (v112);
    }

    else
    {
      if (v34 < 0)
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      if (v45 < v34)
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      if (v34)
      {
        v46 = *(v105 + 16);
        v47 = *(v105 + 80);
        sub_22C36BA94();
        v105 = v48 + v49;
        v106 = v50;
        v104 = *(v51 + 56);
        v52 = (v51 - 8);

        v53 = 0;
        while (1)
        {
          (v106)(v43, v105 + v104 * v53, v36);
          v54 = *v28;
          sub_22C7E4310(v108, v109);
          sub_22C37DA2C();
          v55 = sub_22C909F7C();
          (*v52)(v43, v36);
          v56 = *v28;
          sub_22C38A0A8();
          v58 = __OFSUB__(v57, 1);
          v59 = v57 - 1;
          if (v58)
          {
            break;
          }

          v60 = v59 & v55;
          sub_22C36BBCC();
          v61 = sub_22C9030FC();
          v110 = v28;
          v111 = v26;
          v112 = v60;
          v113 = v61;
          sub_22C7E4C5C(v61, v62, v63);
          if (v64)
          {
            do
            {
              v65 = sub_22C7E4434();
              if ((v66 & 1) == 0 && v65 == v53)
              {
                break;
              }

              sub_22C90315C();
            }

            while (v113);
          }

          if (__OFADD__(v53, v44))
          {
            goto LABEL_54;
          }

          ++v53;
          sub_22C7E4DFC();
          if (v53 == v34)
          {

            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }
    }

LABEL_29:
    v77 = v28[1];
    if (__OFSUB__(v77 >> 6, v44))
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v78 = 1 << *v28;
    v58 = __OFSUB__(v78, 1);
    v79 = v78 - 1;
    if (v58)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v80 = (v79 & (((v77 >> 6) - v44) >> 63)) + (v77 >> 6) - v44;
    if (v80 < v79)
    {
      v79 = 0;
    }

    v28[1] = v28[1] & 0x3FLL | ((v80 - v79) << 6);
LABEL_52:
    sub_22C36CC48();
    return;
  }

  if (__OFSUB__(v45, v32))
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if ((v45 - v32) >= MEMORY[0x2318B0640](*v28 & 0x3FLL) / 3)
  {
    sub_22C37275C();
    v81 = sub_22C9030FC();
    v110 = v28;
    v111 = v26;
    v112 = 0;
    v113 = v81;
    sub_22C7E4C5C(v81, v82, v83);
    do
    {
      v84 = sub_22C7E4434();
      if ((v85 & 1) == 0 && v84 >= v32)
      {
        if (__OFSUB__(v84, v44))
        {
          goto LABEL_56;
        }

        sub_22C7E4DFC();
      }

      sub_22C90315C();
    }

    while (v112);
    goto LABEL_52;
  }

  v67 = a22(v32, v103);
  v106 = v70;
  if (v68 != v69 >> 1)
  {
    v86 = v68;
    v102[1] = v67;
    v103 = v69 >> 1;
    if (v68 >= (v69 >> 1))
    {
LABEL_66:
      __break(1u);
      return;
    }

    v87 = v105 + 16;
    v88 = *(v105 + 16);
    v104 = *(v105 + 72);
    v105 = v88;
    v89 = (v87 - 8);
    while (1)
    {
      (v105)(v22, &v106[v104 * v86], v36);
      v90 = *v28;
      sub_22C7E4310(v108, v109);
      sub_22C37DA2C();
      v91 = sub_22C909F7C();
      (*v89)(v22, v36);
      v92 = *v28;
      sub_22C38A0A8();
      v58 = __OFSUB__(v93, 1);
      v94 = v93 - 1;
      if (v58)
      {
        goto LABEL_57;
      }

      v95 = v94 & v91;
      sub_22C36BBCC();
      v96 = sub_22C9030FC();
      v110 = v28;
      v111 = v26;
      v112 = v95;
      v113 = v96;
      sub_22C7E4C5C(v96, v97, v98);
      if (v99)
      {
        do
        {
          v100 = sub_22C7E4434();
          if ((v101 & 1) == 0 && v100 == v32)
          {
            break;
          }

          sub_22C90315C();
        }

        while (v113);
      }

      if (__OFSUB__(v32, v44))
      {
        goto LABEL_58;
      }

      sub_22C7E4DFC();
      v58 = __OFADD__(v32++, 1);
      if (v58)
      {
        goto LABEL_59;
      }

      if (++v86 == v103)
      {
        swift_unknownObjectRelease();
        goto LABEL_52;
      }
    }
  }

  sub_22C36CC48();

  swift_unknownObjectRelease();
}

uint64_t sub_22C7E141C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = type metadata accessor for PromptTreeIdentifier(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v18 = &v64 - v17;
  v19 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v19 >= 1)
  {
    v20 = *(a3 + 16);
    if ((v20 - v19) / 2 <= a1)
    {
      if (__OFSUB__(v20, a2))
      {
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      if ((v20 - a2) >= MEMORY[0x2318B0640](*a4 & 0x3F) / 3)
      {
        v46 = sub_22C9030FC();
        *&v70 = a4;
        *(&v70 + 1) = a5;
        *&v71 = 0;
        *(&v71 + 1) = v46;
        *&v72 = v47;
        *(&v72 + 1) = v48;
        v73 = 0;
        do
        {
          v66 = v70;
          v67 = v71;
          v68 = v72;
          v69 = v73;
          v49 = sub_22C90313C();
          if ((v50 & 1) == 0 && v49 >= a2)
          {
            v26 = __OFSUB__(v49, v19);
            result = v49 - v19;
            if (v26)
            {
              goto LABEL_56;
            }

            sub_22C90314C();
          }

          result = sub_22C90315C();
        }

        while (v71);
      }

      else
      {
        result = sub_22C8A53FC(a2, a3);
        if (v35 != v36 >> 1)
        {
          v51 = v35;
          v65 = result;
          v52 = v36 >> 1;
          if (v35 >= (v36 >> 1))
          {
LABEL_66:
            __break(1u);
            return result;
          }

          v53 = v34;
          v54 = *(v11 + 72);
          while (1)
          {
            sub_22C7E4208(v53 + v54 * v51, v15);
            v55 = *a4;
            sub_22C90B62C();
            sub_22C489574();
            sub_22C7E42B8(v15, type metadata accessor for PromptTreeIdentifier);
            result = sub_22C90B66C();
            v56 = 1 << *a4;
            v26 = __OFSUB__(v56, 1);
            v57 = v56 - 1;
            if (v26)
            {
              goto LABEL_57;
            }

            v58 = v57 & result;
            v59 = sub_22C9030FC();
            *&v66 = a4;
            *(&v66 + 1) = a5;
            *&v67 = v58;
            *(&v67 + 1) = v59;
            *&v68 = v60;
            *(&v68 + 1) = v61;
            v69 = 0;
            while (*(&v67 + 1))
            {
              v70 = v66;
              v71 = v67;
              v72 = v68;
              v73 = v69;
              v62 = sub_22C90313C();
              if ((v63 & 1) == 0 && v62 == a2)
              {
                break;
              }

              sub_22C90315C();
            }

            result = a2 - v19;
            if (__OFSUB__(a2, v19))
            {
              goto LABEL_58;
            }

            result = sub_22C90314C();
            v26 = __OFADD__(a2++, 1);
            if (v26)
            {
              goto LABEL_59;
            }

            if (++v51 == v52)
            {
              return swift_unknownObjectRelease();
            }
          }
        }

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      result = MEMORY[0x2318B0640](*a4 & 0x3F);
      if (result / 3 <= a1)
      {
        v37 = sub_22C9030FC();
        *&v70 = a4;
        *(&v70 + 1) = a5;
        *&v71 = 0;
        *(&v71 + 1) = v37;
        *&v72 = v38;
        *(&v72 + 1) = v39;
        v73 = 0;
        do
        {
          v66 = v70;
          v67 = v71;
          v68 = v72;
          v69 = v73;
          v40 = sub_22C90313C();
          if ((v41 & 1) == 0 && v40 < a1)
          {
            v26 = __OFADD__(v40, v19);
            result = v40 + v19;
            if (v26)
            {
              goto LABEL_55;
            }

            sub_22C90314C();
          }

          result = sub_22C90315C();
        }

        while (v71);
      }

      else
      {
        if (a1 < 0)
        {
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        if (v20 < a1)
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        if (a1)
        {
          v21 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
          v22 = *(v11 + 72);
          v65 = a3;

          v23 = 0;
          while (1)
          {
            sub_22C7E4208(v21 + v22 * v23, v18);
            v24 = *a4;
            sub_22C90B62C();
            sub_22C489574();
            sub_22C7E42B8(v18, type metadata accessor for PromptTreeIdentifier);
            result = sub_22C90B66C();
            v25 = 1 << *a4;
            v26 = __OFSUB__(v25, 1);
            v27 = v25 - 1;
            if (v26)
            {
              break;
            }

            v28 = v27 & result;
            v29 = sub_22C9030FC();
            *&v66 = a4;
            *(&v66 + 1) = a5;
            *&v67 = v28;
            *(&v67 + 1) = v29;
            *&v68 = v30;
            *(&v68 + 1) = v31;
            v69 = 0;
            while (*(&v67 + 1))
            {
              v70 = v66;
              v71 = v67;
              v72 = v68;
              v73 = v69;
              v32 = sub_22C90313C();
              if ((v33 & 1) == 0 && v32 == v23)
              {
                break;
              }

              sub_22C90315C();
            }

            result = v23 + v19;
            if (__OFADD__(v23, v19))
            {
              goto LABEL_54;
            }

            ++v23;
            sub_22C90314C();
            if (v23 == a1)
            {

              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }
      }

LABEL_29:
      v42 = a4[1];
      if (__OFSUB__(v42 >> 6, v19))
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v43 = 1 << *a4;
      v26 = __OFSUB__(v43, 1);
      v44 = v43 - 1;
      if (v26)
      {
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v45 = (v44 & (((v42 >> 6) - v19) >> 63)) + (v42 >> 6) - v19;
      if (v45 < v44)
      {
        v44 = 0;
      }

      a4[1] = a4[1] & 0x3F | ((v45 - v44) << 6);
    }
  }

  return result;
}

uint64_t sub_22C7E1964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v131 = a5;
  v126 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(0);
  v9 = *(*(v126 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v126);
  v119 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v125 = &v116 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v120 = &v116 - v15;
  MEMORY[0x28223BE20](v14);
  v128 = &v116 - v16;
  v17 = sub_22C902D0C();
  v118 = *(v17 - 8);
  v18 = *(v118 + 64);
  MEMORY[0x28223BE20](v17);
  v122 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v121 = (&v116 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x28223BE20](v22);
  v124 = &v116 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v123 = &v116 - v27;
  MEMORY[0x28223BE20](v26);
  v127 = &v116 - v28;
  v130 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
  v29 = *(*(v130 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v130);
  v32 = &v116 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v116 - v33;
  v129 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
  v35 = *(*(v129 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v129);
  v38 = &v116 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v36);
  v42 = &v116 - v41;
  v43 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  if (v43 >= 1)
  {
    v117 = a3;
    v44 = *(a3 + 16);
    if ((v44 - v43) / 2 <= a1)
    {
      v62 = __OFSUB__(v44, a2);
      v71 = v44 - a2;
      if (v62)
      {
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      v72 = v40;
      if (v71 >= MEMORY[0x2318B0640](*a4 & 0x3F) / 3)
      {
        v86 = v131;
        v87 = sub_22C9030FC();
        *&v136 = a4;
        *(&v136 + 1) = v86;
        *&v137 = 0;
        *(&v137 + 1) = v87;
        *&v138 = v88;
        *(&v138 + 1) = v89;
        v139 = 0;
        do
        {
          v132 = v136;
          v133 = v137;
          v134 = v138;
          v135 = v139;
          v90 = sub_22C90313C();
          if ((v91 & 1) == 0 && v90 >= a2)
          {
            v62 = __OFSUB__(v90, v43);
            result = v90 - v43;
            if (v62)
            {
              goto LABEL_84;
            }

            sub_22C90314C();
          }

          result = sub_22C90315C();
        }

        while (v137);
      }

      else
      {
        result = sub_22C8A5414(a2, v117);
        v128 = v75;
        if (v73 != v74 >> 1)
        {
          v92 = v73;
          v117 = result;
          v123 = v74 >> 1;
          if (v73 >= (v74 >> 1))
          {
LABEL_94:
            __break(1u);
            return result;
          }

          v127 = *(v72 + 72);
          v120 = (v118 + 32);
          v118 += 8;
          v93 = v119;
          while (1)
          {
            sub_22C7E4208(v128 + v127 * v92, v38);
            v94 = *a4;
            sub_22C90B62C();
            sub_22C7E4208(v38, v32);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v95 = v125;
              sub_22C7E4260(v32, v125);
              MEMORY[0x2318B8B10](1);
              sub_22C7E4208(v95, v93);
              EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
              if (EnumCaseMultiPayload)
              {
                if (EnumCaseMultiPayload == 1)
                {
                  v97 = v122;
                  (*v120)(v122, v93, v17);
                  MEMORY[0x2318B8B10](2);
                  sub_22C7E4310(&qword_27D9BAAA8, MEMORY[0x277D1D800]);
                  sub_22C909F8C();
                  (*v118)(v97, v17);
                }

                else
                {
                  MEMORY[0x2318B8B10](0);
                }
              }

              else
              {
                v101 = *v93;
                v102 = *(v119 + 1);
                MEMORY[0x2318B8B10](1);
                sub_22C909FFC();
                v93 = v119;
              }

              v103 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local;
              v104 = &v141;
            }

            else
            {
              v98 = v124;
              sub_22C7E4260(v32, v124);
              MEMORY[0x2318B8B10](0);
              v99 = v121;
              sub_22C7E4208(v98, v121);
              switch(sub_22C370B74(v99, 3, v17))
              {
                case 1u:
                  v105 = 0;
                  goto LABEL_69;
                case 2u:
                  v105 = 1;
                  goto LABEL_69;
                case 3u:
                  v105 = 2;
LABEL_69:
                  MEMORY[0x2318B8B10](v105);
                  break;
                default:
                  v100 = v122;
                  (*v120)(v122, v121, v17);
                  MEMORY[0x2318B8B10](3);
                  sub_22C7E4310(&qword_27D9BAAA8, MEMORY[0x277D1D800]);
                  sub_22C909F8C();
                  (*v118)(v100, v17);
                  break;
              }

              v103 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global;
              v104 = &v140;
            }

            sub_22C7E42B8(*(v104 - 32), v103);
            v106 = *(v129 + 20);
            sub_22C7E4310(&qword_27D9BAAA8, MEMORY[0x277D1D800]);
            sub_22C909F8C();
            result = sub_22C90B66C();
            v107 = 1 << *a4;
            v62 = __OFSUB__(v107, 1);
            v108 = v107 - 1;
            if (v62)
            {
              goto LABEL_85;
            }

            v109 = v108 & result;
            v110 = v131;
            v111 = sub_22C9030FC();
            *&v132 = a4;
            *(&v132 + 1) = v110;
            *&v133 = v109;
            *(&v133 + 1) = v111;
            *&v134 = v112;
            *(&v134 + 1) = v113;
            v135 = 0;
            while (*(&v133 + 1))
            {
              v136 = v132;
              v137 = v133;
              v138 = v134;
              v139 = v135;
              v114 = sub_22C90313C();
              if ((v115 & 1) == 0 && v114 == a2)
              {
                break;
              }

              sub_22C90315C();
            }

            result = a2 - v43;
            if (__OFSUB__(a2, v43))
            {
              goto LABEL_86;
            }

            sub_22C90314C();
            result = sub_22C7E42B8(v38, type metadata accessor for PromptTreeIdentifier.TranscriptReference);
            v62 = __OFADD__(a2++, 1);
            if (v62)
            {
              goto LABEL_87;
            }

            if (++v92 == v123)
            {
              return swift_unknownObjectRelease();
            }
          }
        }

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      v45 = v40;
      result = MEMORY[0x2318B0640](*a4 & 0x3F);
      if (result / 3 <= a1)
      {
        v76 = v131;
        v77 = sub_22C9030FC();
        *&v136 = a4;
        *(&v136 + 1) = v76;
        *&v137 = 0;
        *(&v137 + 1) = v77;
        *&v138 = v78;
        *(&v138 + 1) = v79;
        v139 = 0;
        do
        {
          v132 = v136;
          v133 = v137;
          v134 = v138;
          v135 = v139;
          v80 = sub_22C90313C();
          if ((v81 & 1) == 0 && v80 < a1)
          {
            v62 = __OFADD__(v80, v43);
            result = v80 + v43;
            if (v62)
            {
              goto LABEL_83;
            }

            sub_22C90314C();
          }

          result = sub_22C90315C();
        }

        while (v137);
      }

      else
      {
        if (a1 < 0)
        {
LABEL_92:
          __break(1u);
          goto LABEL_93;
        }

        v46 = v120;
        if (v44 < a1)
        {
LABEL_93:
          __break(1u);
          goto LABEL_94;
        }

        result = v117;
        if (a1)
        {
          v125 = v117 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
          v124 = *(v45 + 72);
          v121 = (v118 + 32);
          v119 = (v118 + 8);

          v47 = 0;
          while (1)
          {
            sub_22C7E4208(v125 + v124 * v47, v42);
            v48 = *a4;
            sub_22C90B62C();
            sub_22C7E4208(v42, v34);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v49 = v128;
              sub_22C7E4260(v34, v128);
              MEMORY[0x2318B8B10](1);
              sub_22C7E4208(v49, v46);
              v50 = swift_getEnumCaseMultiPayload();
              if (v50)
              {
                if (v50 == 1)
                {
                  v51 = v122;
                  (*v121)(v122, v46, v17);
                  MEMORY[0x2318B8B10](2);
                  sub_22C7E4310(&qword_27D9BAAA8, MEMORY[0x277D1D800]);
                  sub_22C909F8C();
                  (*v119)(v51, v17);
                }

                else
                {
                  MEMORY[0x2318B8B10](0);
                }
              }

              else
              {
                v55 = *v46;
                v56 = *(v120 + 1);
                MEMORY[0x2318B8B10](1);
                sub_22C909FFC();
                v46 = v120;
              }

              v57 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local;
              v58 = v128;
            }

            else
            {
              v52 = v127;
              sub_22C7E4260(v34, v127);
              MEMORY[0x2318B8B10](0);
              v53 = v123;
              sub_22C7E4208(v52, v123);
              switch(sub_22C370B74(v53, 3, v17))
              {
                case 1u:
                  v59 = 0;
                  goto LABEL_21;
                case 2u:
                  v59 = 1;
                  goto LABEL_21;
                case 3u:
                  v59 = 2;
LABEL_21:
                  MEMORY[0x2318B8B10](v59);
                  break;
                default:
                  v54 = v122;
                  (*v121)(v122, v123, v17);
                  MEMORY[0x2318B8B10](3);
                  sub_22C7E4310(&qword_27D9BAAA8, MEMORY[0x277D1D800]);
                  sub_22C909F8C();
                  (*v119)(v54, v17);
                  break;
              }

              v57 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global;
              v58 = v127;
            }

            sub_22C7E42B8(v58, v57);
            v60 = *(v129 + 20);
            sub_22C7E4310(&qword_27D9BAAA8, MEMORY[0x277D1D800]);
            sub_22C909F8C();
            result = sub_22C90B66C();
            v61 = 1 << *a4;
            v62 = __OFSUB__(v61, 1);
            v63 = v61 - 1;
            if (v62)
            {
              break;
            }

            v64 = v63 & result;
            v65 = v131;
            v66 = sub_22C9030FC();
            *&v132 = a4;
            *(&v132 + 1) = v65;
            *&v133 = v64;
            *(&v133 + 1) = v66;
            *&v134 = v67;
            *(&v134 + 1) = v68;
            v135 = 0;
            while (*(&v133 + 1))
            {
              v136 = v132;
              v137 = v133;
              v138 = v134;
              v139 = v135;
              v69 = sub_22C90313C();
              if ((v70 & 1) == 0 && v69 == v47)
              {
                break;
              }

              sub_22C90315C();
            }

            result = v47 + v43;
            if (__OFADD__(v47, v43))
            {
              goto LABEL_82;
            }

            ++v47;
            sub_22C90314C();
            sub_22C7E42B8(v42, type metadata accessor for PromptTreeIdentifier.TranscriptReference);
            if (v47 == a1)
            {

              goto LABEL_43;
            }
          }

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
          goto LABEL_88;
        }
      }

LABEL_43:
      v82 = a4[1];
      if (__OFSUB__(v82 >> 6, v43))
      {
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      v83 = 1 << *a4;
      v62 = __OFSUB__(v83, 1);
      v84 = v83 - 1;
      if (v62)
      {
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      v85 = (v84 & (((v82 >> 6) - v43) >> 63)) + (v82 >> 6) - v43;
      if (v85 < v84)
      {
        v84 = 0;
      }

      a4[1] = a4[1] & 0x3F | ((v85 - v84) << 6);
    }
  }

  return result;
}