unint64_t sub_1B0750598()
{
  v2 = qword_1EB6DB058;
  if (!qword_1EB6DB058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB058);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B07508A4(void *a1, void *a2, uint64_t a3)
{
  v44 = a1;
  v41 = a2;
  v42 = a3;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080);
  v40 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v15 - v40;
  v48 = sub_1B0E42E68();
  v46 = *(v48 - 8);
  v47 = v48 - 8;
  v43 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v42);
  v45 = &v15 - v43;
  v60 = &v15 - v43;
  v59 = v44;
  v58 = v6;
  v57 = v5;
  v56 = v3;
  sub_1B071C180(v5, v7);
  if ((*(v46 + 48))(v49, 1, v48) == 1)
  {
    return sub_1B06E3800(v49);
  }

  (*(v46 + 32))(v45, v49, v48);
  v37 = static IMAPAccount.accountIDAndPathComponents(fromMailboxURL:)(v45);
  v38 = v9;
  v39 = v10;
  if (!v9)
  {
    return (*(v46 + 8))(v45, v48);
  }

  v34 = v37;
  v35 = v38;
  v36 = v39;
  v31 = v36;
  v32 = v35;
  v33 = v34;
  v53 = v34;
  v54 = v35;
  v55 = v36;
  if (v44)
  {
    v30 = v44;
    v26 = v44;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v11 = sub_1B0E44AC8();
    v27 = v51;
    v51[0] = v11;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1FA0, &unk_1B0E9B240);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1F98, &qword_1B0E9B238);
    swift_dynamicCast();
    v29 = v50;
    swift_unknownObjectRetain();
    v12 = v29;
    if (v29)
    {
      v25 = v29;
      v23 = v29;
      swift_unknownObjectRelease();
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    *v26 = v24;
  }

  if (v41)
  {
    v22 = v41;
    v18 = v41;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v13 = sub_1B0E451A8();
    v19 = &v52;
    v52 = v13;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1F90, &qword_1B0E9B230);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1F98, &qword_1B0E9B238);
    swift_dynamicCast();
    v21 = v51[1];
    swift_unknownObjectRetain();
    v14 = v21;
    if (v21)
    {
      v17 = v21;
      v15 = v21;
      swift_unknownObjectRelease();
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    *v18 = v16;
  }

  return (*(v46 + 8))(v45, v48);
}

uint64_t static IMAPAccount.accountIDAndPathComponents(fromMailboxURL:)(uint64_t a1)
{
  v45 = 0;
  v46 = 0;
  v44 = 0;
  v29 = 0;
  v50 = a1;
  v49 = v1;
  v20 = sub_1B0E42E28();
  v21 = v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v19 = sub_1B0E44838();
  v22 = v3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v47[0] = v20;
  v47[1] = v21;
  *&v48 = v19;
  *(&v48 + 1) = v22;
  if (!v21)
  {
    if (!*(&v48 + 1))
    {
      sub_1B03B1198(v47);
      v18 = 1;
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  sub_1B070B280(v47, &v25);
  if (!*(&v48 + 1))
  {
    sub_1B03B1198(&v25);
LABEL_9:
    sub_1B06FF6F0(v47);
    v18 = 0;
    goto LABEL_7;
  }

  v24 = v25;
  v23 = v48;
  v17 = MEMORY[0x1B2726DE0](v25, *(&v25 + 1), v48, *(&v48 + 1));
  sub_1B03B1198(&v23);
  sub_1B03B1198(&v24);
  sub_1B03B1198(v47);
  v18 = v17;
LABEL_7:

  if ((v18 & 1) == 0)
  {
    return 0;
  }

  v16 = sub_1B0E42E08();
  if (!v4)
  {
    return 0;
  }

  v45 = v16;
  v46 = v4;
  v5 = sub_1B0E44DA8();
  if (v5)
  {

    return 0;
  }

  v11 = sub_1B0E42D28();
  v44 = v11;
  v43 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B0750598();
  sub_1B0E45728();
  v13 = v41;
  v14 = v42;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = sub_1B0E44838();
  v15 = v6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v39[0] = v13;
  v39[1] = v14;
  *&v40 = v12;
  *(&v40 + 1) = v15;
  if (!v14)
  {
    if (!*(&v40 + 1))
    {
      sub_1B03B1198(v39);
      v10 = 1;
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  sub_1B070B280(v39, &v28);
  if (!*(&v40 + 1))
  {
    sub_1B03B1198(&v28);
LABEL_23:
    sub_1B06FF6F0(v39);
    v10 = 0;
    goto LABEL_21;
  }

  v27 = v28;
  v26 = v40;
  v9 = MEMORY[0x1B2726DE0](v28, *(&v28 + 1), v40, *(&v40 + 1));
  sub_1B03B1198(&v26);
  sub_1B03B1198(&v27);
  sub_1B03B1198(v39);
  v10 = v9;
LABEL_21:

  if ((v10 & 1) != 0 && sub_1B0E452A8() > 1)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v34 = v11;
    sub_1B0750030();
    sub_1B0E45768();
    v30 = v35;
    v31 = v36;
    v32 = v37;
    v33 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1FA8, &qword_1B0E9E160);
    sub_1B07512FC();
    v29 = sub_1B0E45378();

    return v16;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1B07512FC()
{
  v2 = qword_1EB6DA560;
  if (!qword_1EB6DA560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1FA8, &qword_1B0E9E160);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA560);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0751598()
{
  MEMORY[0x1E69E5928](v0);
  v5 = [v0 taskManager];
  MEMORY[0x1E69E5920](v0);
  if (!v5)
  {
    return 0;
  }

  type metadata accessor for TaskManager();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    return v4;
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_1B075168C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v19 = a1;
  v18 = a2;
  v16 = a3;
  v17 = a4;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v20 = (*(*(_s18MailboxPersistenceVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v11 - v20;
  v30 = &v11 - v20;
  v29 = v5;
  v28 = v6;
  v26 = v7;
  v27 = v8;
  v25 = v4;
  v22 = sub_1B0751598();
  if (v22)
  {
    v14 = v22;
    v13 = v22;
    v23 = v22;
    sub_1B0A44788(v19, v18, v16, v17);
    return MEMORY[0x1E69E5920](v13);
  }

  else
  {
    v10 = v21;
    MEMORY[0x1E69E5928](v15);
    sub_1B07BF968(v15, v10);
    v12 = sub_1B07C0364();
    v24 = v12;

    v16(v12);

    return sub_1B03F4F08(v21);
  }
}

uint64_t sub_1B075188C()
{
  v2 = (v0 + OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_library);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_1B0751964(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_library);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1B07519FC()
{
  v2 = *(v0 + OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_mailbox);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B0751A44()
{
  v2 = *(v0 + OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_taskManager);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

char *sub_1B0751AD0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v10 = a1;
  v9 = a2;
  v11 = v2;
  *&v2[OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_library] = 0;
  MEMORY[0x1E69E5928](a1);
  *&v11[OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_mailbox] = a1;
  MEMORY[0x1E69E5928](a2);
  *&v11[OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_taskManager] = a2;
  v8.receiver = v11;
  v8.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v8, sel_init);
  MEMORY[0x1E69E5928](v7);
  v11 = v7;
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v11);
  return v7;
}

id sub_1B0751CE0()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B0752138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *(v3 + OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_taskManager);
  MEMORY[0x1E69E5928](v11);
  v10 = *(v5 + OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_mailbox);
  MEMORY[0x1E69E5928](v10);

  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  sub_1B0A44874(a1, v10, sub_1B07523E0, v9);

  MEMORY[0x1E69E5920](v10);
  return MEMORY[0x1E69E5920](v11);
}

uint64_t sub_1B075225C(void *a1, unint64_t a2, char a3, void (*a4)(void *, unint64_t, void *))
{
  if (a3)
  {
    MEMORY[0x1E69E5928](a1);

    MEMORY[0x1E69E5928](a1);
    a4(0, 0xF000000000000000, a1);

    return MEMORY[0x1E69E5920](a1);
  }

  else
  {
    sub_1B03B2000(a1, a2);

    sub_1B03B2000(a1, a2);
    a4(a1, a2, 0);
    sub_1B070E144(a1, a2);

    return sub_1B0391D50(a1, a2);
  }
}

uint64_t sub_1B07524C8(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  sub_1B070E18C(a1, a2);
  if ((a2 & 0xF000000000000000) == 0xF000000000000000)
  {
    v9 = 0;
  }

  else
  {
    v8 = sub_1B0E42F18();
    sub_1B0391D50(a1, a2);
    v9 = v8;
  }

  v4 = a3;
  if (a3)
  {
    v6 = sub_1B0E42CC8();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  (*(a4 + 16))(a4, v9);
  MEMORY[0x1E69E5920](v7);
  return MEMORY[0x1E69E5920](v9);
}

uint64_t sub_1B0752604(uint64_t a1, _BYTE *a2)
{
  v9 = *(v2 + OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_taskManager);
  MEMORY[0x1E69E5928](v9);
  MEMORY[0x1E69E5928](a1);
  v7 = *(v6 + OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_mailbox);
  MEMORY[0x1E69E5928](v7);
  v10 = sub_1B0A45238(a1, v7);
  v11 = v3;
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v9);
  if ((v11 & 0xF000000000000000) != 0xF000000000000000 && a2)
  {
    *a2 = 0;
  }

  return v10;
}

uint64_t sub_1B0752888(uint64_t a1)
{
  v13 = a1;
  v12 = v1;
  v9[0] = sub_1B0752604(a1, 0);
  v9[1] = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1FC8, &unk_1B0E9B250);
  v3 = sub_1B071952C();
  sub_1B03F1A20(sub_1B07529EC, 0, v6, MEMORY[0x1E69E73E0], v3, v7, &v10);
  sub_1B043C03C(v9);
  v8 = v10;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2750, &unk_1B0E9DE60);
  sub_1B03F1A20(sub_1B0752A60, 0, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E6969080], v7, &v11);
  sub_1B06D4E94(&v8);
  return v11;
}

uint64_t sub_1B07529EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  sub_1B03B2000(*a1, v4);
  *a2 = sub_1B0E42F18();
  return sub_1B0391D50(v5, v4);
}

id sub_1B0752A60@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v12 = *a1;
  v14 = [*a1 mf_rangeOfRFC822HeaderData];
  result = [v12 mf:v14 subdataWithRange:v2];
  v13 = result;
  if (result)
  {
    v7 = sub_1B0E42F38();
    v8 = v4;
    result = MEMORY[0x1E69E5920](v13);
    v9 = v7;
    v10 = v8;
  }

  else
  {
    v9 = 0;
    v10 = 0xF000000000000000;
  }

  if ((v10 & 0xF000000000000000) == 0xF000000000000000)
  {
    result = sub_1B0E465A8();
    __break(1u);
  }

  else
  {
    v5 = v9;
    v6 = v10;
  }

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_1B0752D18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v32 = [a1 partNumber];
  if (v32)
  {
    v26 = sub_1B0E44AD8();
    v27 = v5;
    MEMORY[0x1E69E5920](v32);
    v28 = v26;
    v29 = v27;
  }

  else
  {
    v28 = 0;
    v29 = 0;
  }

  if (v29)
  {
    v6 = [a1 mimeBody];
    if (v6)
    {
      v25 = v6;
    }

    else
    {
      LOBYTE(v11) = 2;
      v12 = 86;
      LODWORD(v13) = 0;
      sub_1B0E465A8();
      __break(1u);
    }

    v24 = [v25 message];
    MEMORY[0x1E69E5920](v25);
    if (v24)
    {
      v22 = swift_dynamicCastObjCProtocolConditional();
      v23 = 0;
      if (v22)
      {
        swift_getObjectType();
        sub_1B0753584();
        v23 = dynamic_cast_existential_0_superclass_conditional(v22);
      }

      if (v23)
      {
        v21 = v23;
      }

      else
      {
        MEMORY[0x1E69E5920](v24);
        v21 = 0;
      }

      v20 = v21;
    }

    else
    {
      v20 = 0;
    }

    if (v20)
    {
      v7 = [a5 progressBlock];
      v19 = v7;
      if (v7)
      {
        v8 = swift_allocObject();
        *(v8 + 16) = v19;
        v17 = sub_1B075352C;
        v18 = v8;
      }

      else
      {
        v17 = 0;
        v18 = 0;
      }

      sub_1B070E90C(v17);
      if (v17)
      {
        v9 = swift_allocObject();
        *(v9 + 16) = v17;
        *(v9 + 24) = v18;
        v15 = sub_1B0753520;
        v16 = v9;
      }

      else
      {
        v15 = 0;
        v16 = 0;
      }

      if (v15)
      {
        v33 = v15;
        v34 = v16;
      }

      else
      {
        v33 = sub_1B075332C;
        v34 = 0;
      }

      v14 = swift_allocObject();
      *(v14 + 16) = v33;
      *(v14 + 24) = v34;
      sub_1B07533BC(v28, v29, v20, sub_1B07533B0, v14);

      sub_1B04197E4(v17);
      MEMORY[0x1E69E5920](v20);
    }

    else
    {
    }
  }

  return 0;
}

uint64_t *sub_1B075332C(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v5 = *result;
  v4 = *a2;
  v3 = *a3;
  return result;
}

uint64_t sub_1B075335C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t *, uint64_t *))
{
  v7 = a1;
  v6 = a2;
  v5 = a3;
  return a4(&v7, &v6, &v5);
}

uint64_t sub_1B07533BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *(v5 + OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_taskManager);
  MEMORY[0x1E69E5928](v15);
  v14 = *(v7 + OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_mailbox);
  MEMORY[0x1E69E5928](v14);

  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  v16 = sub_1B0A469A0(a1, a2, a3, v14, sub_1B07537D4, v12);

  MEMORY[0x1E69E5920](v14);
  MEMORY[0x1E69E5920](v15);
  return v16 & 1;
}

uint64_t dynamic_cast_existential_0_superclass_conditional(uint64_t a1)
{
  if (swift_dynamicCastMetatype())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1B0753584()
{
  v2 = qword_1EB6DAC00;
  if (!qword_1EB6DAC00)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DAC00);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B07536C8(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, void, uint64_t))
{
  if (a2)
  {
    a1 = -1;
  }

  a4(a3, 0, a1);
}

uint64_t sub_1B0753954(uint64_t a1, _BYTE *a2)
{
  v9 = *(v2 + OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_taskManager);
  MEMORY[0x1E69E5928](v9);
  v8 = *(v6 + OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_mailbox);
  MEMORY[0x1E69E5928](v8);
  v10 = sub_1B0A45238(a1, v8);
  v11 = v3;
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v9);
  if ((v11 & 0xF000000000000000) != 0xF000000000000000 && a2)
  {
    *a2 = 1;
  }

  return v10;
}

id sub_1B0753BBC(void *a1)
{
  v7 = *(v1 + OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_taskManager);
  MEMORY[0x1E69E5928](v7);
  v9 = [a1 criterionForSQL];
  if (v9)
  {
    v5 = v9;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v3 = *(v6 + OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_mailbox);
  MEMORY[0x1E69E5928](v3);
  v4 = sub_1B0A47B88(v5, v3);
  MEMORY[0x1E69E5920](v3);
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v7);
  return v4;
}

id sub_1B0753DD0(uint64_t a1)
{
  v15 = a1;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v12 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v18 = v6 - v12;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v16 = *(v19 - 8);
  v17 = v19 - 8;
  v13 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v15);
  v14 = v6 - v13;
  v22 = v6 - v13;
  v21 = v3;
  v20 = v1;
  MEMORY[0x1E69E5928](v3);
  sub_1B09122DC(v15, v18);
  if ((*(v16 + 48))(v18, 1, v19) == 1)
  {
    sub_1B0754028(v18);
    v6[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E36D0, &unk_1B0EA1DA0);
    v6[1] = type metadata accessor for MFUIDSet();
    v4 = sub_1B09122B0();
    return sub_1B0A47D18(v4);
  }

  else
  {
    sub_1B074BA2C(v18, v14);
    v8 = *(v11 + OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_taskManager);
    MEMORY[0x1E69E5928](v8);
    v7 = *(v11 + OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_mailbox);
    MEMORY[0x1E69E5928](v7);
    v9 = sub_1B0A47D70(v14, v7);
    MEMORY[0x1E69E5920](v7);
    MEMORY[0x1E69E5920](v8);
    sub_1B03D09B8(v14);
    return v9;
  }
}

uint64_t sub_1B0754028(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    (*(*(v2 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_1B075440C()
{
  v2 = *(v0 + OBJC_IVAR___MFSwiftIMAPMailboxTaskManager_taskManager);
  MEMORY[0x1E69E5928](v2);
  sub_1B0A47ED8();
  MEMORY[0x1E69E5920](v2);
  return 0;
}

uint64_t sub_1B0754664()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_1B0754690()
{
  v2 = *(v0 + 24);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B07546C4()
{
  swift_beginAccess();
  v2 = *(v0 + 32);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1B0754714(char a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
  return swift_endAccess();
}

uint64_t sub_1B0754760()
{
  v2 = *(v0 + 16);

  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  return v3;
}

uint64_t sub_1B07547DC()
{
  v2 = *(v0 + 16);

  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  return v3;
}

uint64_t sub_1B0754838()
{
  swift_beginAccess();
  v2 = *(v0 + 40);
  swift_endAccess();
  return v2;
}

uint64_t sub_1B0754884(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
  return swift_endAccess();
}

uint64_t sub_1B07548D0()
{
  swift_beginAccess();
  v2 = *(v0 + 48);
  swift_endAccess();
  return v2;
}

uint64_t sub_1B075491C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
  return swift_endAccess();
}

void *sub_1B07549BC(uint64_t *a1, uint64_t a2)
{
  *(v2 + 32) = 0;
  _s26AttachmentDecoderAndWriterC7DecoderCMa();
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = a1[6];
  v9 = a1[7];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12[2] = sub_1B0754B48(v4, v5, v6, v7, v8, v9);
  MEMORY[0x1E69E5928](a2);
  v12[3] = a2;
  v12[5] = a1[8];
  v12[6] = 0;
  MEMORY[0x1E69E5920](a2);
  sub_1B0754BBC(a1);
  return v12;
}

uint64_t _s26AttachmentDecoderAndWriterC7DecoderCMa()
{
  v1 = qword_1EB6DC108;
  if (!qword_1EB6DC108)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void *sub_1B0754B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  return sub_1B075AF48(a1, a2, a3, a4, a5, a6);
}

void *sub_1B0754BBC(void *a1)
{
  v1 = a1[1];

  v2 = a1[3];

  v3 = a1[5];

  v4 = a1[7];

  return a1;
}

uint64_t sub_1B0754C0C(uint64_t a1, uint64_t a2)
{
  v261 = a1;
  v260 = a2;
  v259 = 0;
  v203 = sub_1B074E050;
  v204 = sub_1B0394C30;
  v205 = sub_1B0394C24;
  v206 = sub_1B074DFFC;
  v207 = sub_1B039BA88;
  v208 = sub_1B039BB94;
  v209 = sub_1B0394C24;
  v210 = sub_1B039BBA0;
  v211 = sub_1B039BC08;
  v212 = sub_1B06BA324;
  v213 = sub_1B074E0E4;
  v214 = sub_1B039BCF8;
  v215 = sub_1B075CCFC;
  v216 = sub_1B03B0DF8;
  v217 = sub_1B075CD60;
  v218 = sub_1B06D5270;
  v219 = sub_1B0398F5C;
  v220 = sub_1B0398F5C;
  v221 = sub_1B0399178;
  v222 = sub_1B0398F5C;
  v223 = sub_1B0398F5C;
  v224 = sub_1B039BA94;
  v225 = sub_1B0398F5C;
  v226 = sub_1B0398F5C;
  v227 = sub_1B0399178;
  v228 = sub_1B0398F5C;
  v229 = sub_1B0398F5C;
  v230 = sub_1B03991EC;
  v231 = sub_1B0398F5C;
  v232 = sub_1B0398F5C;
  v233 = sub_1B03993BC;
  v234 = sub_1B0398F5C;
  v235 = sub_1B0398F5C;
  v236 = sub_1B039BCEC;
  v237 = sub_1B0398F5C;
  v238 = sub_1B0398F5C;
  v239 = sub_1B0399260;
  v240 = sub_1B0398F5C;
  v241 = sub_1B0398F5C;
  v242 = sub_1B06D527C;
  v280 = 0;
  v279 = 0;
  v278 = 0;
  v277 = 0;
  v243 = 0;
  v256 = 0;
  v244 = _s6LoggerVMa_1();
  v245 = (*(*(v244 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](0);
  v246 = &v110 - v245;
  v247 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v248 = &v110 - v247;
  v249 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v250 = &v110 - v249;
  v251 = sub_1B0E439A8();
  v252 = *(v251 - 8);
  v253 = v251 - 8;
  v254 = (*(v252 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v256);
  v255 = &v110 - v254;
  v257 = (*(*(_s26AttachmentDecoderAndWriterC7DecoderC7EncodedOMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v256);
  v258 = &v110 - v257;
  v262 = *(_s26AttachmentDecoderAndWriterC7DecoderC7DecodedVMa() - 8);
  v263 = v262;
  v264 = *(v262 + 64);
  v265 = (v264 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v261);
  v266 = &v110 - v265;
  v267 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v268 = &v110 - v267;
  v280 = &v110 - v267;
  v279 = v9;
  v278 = v10;
  v277 = v2;
  v269 = &v276;
  swift_beginAccess();
  v270 = *(v2 + 32);
  result = swift_endAccess();
  if ((v270 & 1) == 0)
  {
    v146 = *(v202 + 16);

    v145 = sub_1B0E443C8();
    v143 = *(v145 - 8);
    v144 = v145 - 8;
    (*(v143 + 16))(v258, v261);
    (*(v143 + 56))(v258, 0, 1, v145);
    sub_1B0757020(v258, v268);
    v12 = v255;
    sub_1B075B1E0(v258);

    (*(v252 + 16))(v12, v260, v251);
    sub_1B074B69C(v260, v250);
    sub_1B074B69C(v250, v248);
    sub_1B074E41C(v250, v246);
    v13 = (v248 + *(v244 + 20));
    v149 = *v13;
    v150 = *(v13 + 1);
    v151 = *(v13 + 1);
    v152 = *(v13 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v248);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v148 = 36;
    v170 = 7;
    v14 = swift_allocObject();
    v15 = v150;
    v16 = v151;
    v17 = v152;
    v155 = v14;
    *(v14 + 16) = v149;
    *(v14 + 20) = v15;
    *(v14 + 24) = v16;
    *(v14 + 32) = v17;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v18 = swift_allocObject();
    v19 = v150;
    v20 = v151;
    v21 = v152;
    v147 = v18;
    *(v18 + 16) = v149;
    *(v18 + 20) = v19;
    *(v18 + 24) = v20;
    *(v18 + 32) = v21;

    v169 = 32;
    v22 = swift_allocObject();
    v23 = v147;
    v160 = v22;
    *(v22 + 16) = v203;
    *(v22 + 24) = v23;
    sub_1B0394868();
    sub_1B0394868();

    v24 = swift_allocObject();
    v25 = v150;
    v26 = v151;
    v27 = v152;
    v28 = v24;
    v29 = v246;
    v163 = v28;
    *(v28 + 16) = v149;
    *(v28 + 20) = v25;
    *(v28 + 24) = v26;
    *(v28 + 32) = v27;
    sub_1B074B764(v29);
    sub_1B075CC34(v268, v266);
    v153 = (*(v263 + 80) + 16) & ~*(v263 + 80);
    v165 = swift_allocObject();
    sub_1B075CC98(v266, v165 + v153);
    sub_1B07575C4();

    sub_1B0394868();
    v200 = sub_1B0E43988();
    v201 = sub_1B0E45908();
    v167 = 17;
    v173 = swift_allocObject();
    v157 = 16;
    *(v173 + 16) = 16;
    v174 = swift_allocObject();
    v159 = 4;
    *(v174 + 16) = 4;
    v30 = swift_allocObject();
    v154 = v30;
    *(v30 + 16) = v204;
    *(v30 + 24) = 0;
    v31 = swift_allocObject();
    v32 = v154;
    v175 = v31;
    *(v31 + 16) = v205;
    *(v31 + 24) = v32;
    v176 = swift_allocObject();
    *(v176 + 16) = 0;
    v177 = swift_allocObject();
    *(v177 + 16) = 1;
    v33 = swift_allocObject();
    v34 = v155;
    v156 = v33;
    *(v33 + 16) = v206;
    *(v33 + 24) = v34;
    v35 = swift_allocObject();
    v36 = v156;
    v178 = v35;
    *(v35 + 16) = v207;
    *(v35 + 24) = v36;
    v179 = swift_allocObject();
    *(v179 + 16) = v157;
    v180 = swift_allocObject();
    *(v180 + 16) = v159;
    v37 = swift_allocObject();
    v158 = v37;
    *(v37 + 16) = v208;
    *(v37 + 24) = 0;
    v38 = swift_allocObject();
    v39 = v158;
    v181 = v38;
    *(v38 + 16) = v209;
    *(v38 + 24) = v39;
    v182 = swift_allocObject();
    *(v182 + 16) = 0;
    v183 = swift_allocObject();
    *(v183 + 16) = v159;
    v40 = swift_allocObject();
    v41 = v160;
    v161 = v40;
    *(v40 + 16) = v210;
    *(v40 + 24) = v41;
    v42 = swift_allocObject();
    v43 = v161;
    v184 = v42;
    *(v42 + 16) = v211;
    *(v42 + 24) = v43;
    v185 = swift_allocObject();
    *(v185 + 16) = 112;
    v186 = swift_allocObject();
    v168 = 8;
    *(v186 + 16) = 8;
    v172 = 24;
    v162 = swift_allocObject();
    *(v162 + 16) = 0x786F626C69616DLL;
    v44 = swift_allocObject();
    v45 = v162;
    v187 = v44;
    *(v44 + 16) = v212;
    *(v44 + 24) = v45;
    v188 = swift_allocObject();
    *(v188 + 16) = 37;
    v189 = swift_allocObject();
    *(v189 + 16) = v168;
    v46 = swift_allocObject();
    v47 = v163;
    v164 = v46;
    *(v46 + 16) = v213;
    *(v46 + 24) = v47;
    v48 = swift_allocObject();
    v49 = v164;
    v190 = v48;
    *(v48 + 16) = v214;
    *(v48 + 24) = v49;
    v191 = swift_allocObject();
    *(v191 + 16) = 0;
    v192 = swift_allocObject();
    *(v192 + 16) = v168;
    v50 = swift_allocObject();
    v51 = v165;
    v166 = v50;
    *(v50 + 16) = v215;
    *(v50 + 24) = v51;
    v52 = swift_allocObject();
    v53 = v166;
    v193 = v52;
    *(v52 + 16) = v216;
    *(v52 + 24) = v53;
    v194 = swift_allocObject();
    *(v194 + 16) = 0;
    v195 = swift_allocObject();
    *(v195 + 16) = v168;
    v54 = swift_allocObject();
    v55 = v202;
    v171 = v54;
    *(v54 + 16) = v217;
    *(v54 + 24) = v55;
    v56 = swift_allocObject();
    v57 = v171;
    v197 = v56;
    *(v56 + 16) = v218;
    *(v56 + 24) = v57;
    v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v196 = sub_1B0E46A48();
    v198 = v58;

    v59 = v173;
    v60 = v198;
    *v198 = v219;
    v60[1] = v59;

    v61 = v174;
    v62 = v198;
    v198[2] = v220;
    v62[3] = v61;

    v63 = v175;
    v64 = v198;
    v198[4] = v221;
    v64[5] = v63;

    v65 = v176;
    v66 = v198;
    v198[6] = v222;
    v66[7] = v65;

    v67 = v177;
    v68 = v198;
    v198[8] = v223;
    v68[9] = v67;

    v69 = v178;
    v70 = v198;
    v198[10] = v224;
    v70[11] = v69;

    v71 = v179;
    v72 = v198;
    v198[12] = v225;
    v72[13] = v71;

    v73 = v180;
    v74 = v198;
    v198[14] = v226;
    v74[15] = v73;

    v75 = v181;
    v76 = v198;
    v198[16] = v227;
    v76[17] = v75;

    v77 = v182;
    v78 = v198;
    v198[18] = v228;
    v78[19] = v77;

    v79 = v183;
    v80 = v198;
    v198[20] = v229;
    v80[21] = v79;

    v81 = v184;
    v82 = v198;
    v198[22] = v230;
    v82[23] = v81;

    v83 = v185;
    v84 = v198;
    v198[24] = v231;
    v84[25] = v83;

    v85 = v186;
    v86 = v198;
    v198[26] = v232;
    v86[27] = v85;

    v87 = v187;
    v88 = v198;
    v198[28] = v233;
    v88[29] = v87;

    v89 = v188;
    v90 = v198;
    v198[30] = v234;
    v90[31] = v89;

    v91 = v189;
    v92 = v198;
    v198[32] = v235;
    v92[33] = v91;

    v93 = v190;
    v94 = v198;
    v198[34] = v236;
    v94[35] = v93;

    v95 = v191;
    v96 = v198;
    v198[36] = v237;
    v96[37] = v95;

    v97 = v192;
    v98 = v198;
    v198[38] = v238;
    v98[39] = v97;

    v99 = v193;
    v100 = v198;
    v198[40] = v239;
    v100[41] = v99;

    v101 = v194;
    v102 = v198;
    v198[42] = v240;
    v102[43] = v101;

    v103 = v195;
    v104 = v198;
    v198[44] = v241;
    v104[45] = v103;

    v105 = v197;
    v106 = v198;
    v198[46] = v242;
    v106[47] = v105;
    sub_1B0394964();

    if (os_log_type_enabled(v200, v201))
    {
      v107 = v243;
      v136 = sub_1B0E45D78();
      v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v137 = sub_1B03949A8(0);
      v138 = sub_1B03949A8(1);
      v139 = &v275;
      v275 = v136;
      v140 = &v274;
      v274 = v137;
      v141 = &v273;
      v273 = v138;
      sub_1B0394A48(3, &v275);
      sub_1B0394A48(8, v139);
      v271 = v219;
      v272 = v173;
      sub_1B03949FC(&v271, v139, v140, v141);
      v142 = v107;
      if (v107)
      {

        __break(1u);
      }

      else
      {
        v271 = v220;
        v272 = v174;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v134 = 0;
        v271 = v221;
        v272 = v175;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v133 = 0;
        v271 = v222;
        v272 = v176;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v132 = 0;
        v271 = v223;
        v272 = v177;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v131 = 0;
        v271 = v224;
        v272 = v178;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v130 = 0;
        v271 = v225;
        v272 = v179;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v129 = 0;
        v271 = v226;
        v272 = v180;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v128 = 0;
        v271 = v227;
        v272 = v181;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v127 = 0;
        v271 = v228;
        v272 = v182;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v126 = 0;
        v271 = v229;
        v272 = v183;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v125 = 0;
        v271 = v230;
        v272 = v184;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v124 = 0;
        v271 = v231;
        v272 = v185;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v123 = 0;
        v271 = v232;
        v272 = v186;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v122 = 0;
        v271 = v233;
        v272 = v187;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v121 = 0;
        v271 = v234;
        v272 = v188;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v120 = 0;
        v271 = v235;
        v272 = v189;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v119 = 0;
        v271 = v236;
        v272 = v190;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v118 = 0;
        v271 = v237;
        v272 = v191;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v117 = 0;
        v271 = v238;
        v272 = v192;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v116 = 0;
        v271 = v239;
        v272 = v193;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v115 = 0;
        v271 = v240;
        v272 = v194;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v114 = 0;
        v271 = v241;
        v272 = v195;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        v113 = 0;
        v271 = v242;
        v272 = v197;
        sub_1B03949FC(&v271, &v275, &v274, &v273);
        _os_log_impl(&dword_1B0389000, v200, v201, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Writing %{iec-bytes}ld bytes to file writer <0x%lx>", v136, 0x3Fu);
        sub_1B03998A8(v137);
        sub_1B03998A8(v138);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v200);
    (*(v252 + 8))(v255, v251);
    sub_1B0757690(v268);
    v111 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
    swift_beginAccess();
    result = v111;
    v108 = *(v202 + 48);
    v112 = v108 + v111;
    if (__OFADD__(v108, v111))
    {
      __break(1u);
    }

    else
    {
      *(v202 + 48) = v112;
      swift_endAccess();
      return sub_1B075CD68(v268);
    }
  }

  return result;
}

uint64_t sub_1B0757020@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v23 = a1;
  v34 = 0;
  v33 = 0;
  v31 = 0;
  v30 = 0;
  v35 = 0;
  v15 = 0;
  v16 = sub_1B0E443C8();
  v17 = *(v16 - 8);
  v18 = v16 - 8;
  v19 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](0);
  v20 = v10 - v19;
  v21 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v22 = v10 - v21;
  v35 = v10 - v21;
  v24 = (*(*(_s26AttachmentDecoderAndWriterC7DecoderC7EncodedOMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v23);
  v25 = v10 - v24;
  v26 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v27 = v10 - v26;
  v34 = v7;
  v33 = v2;
  v28 = &v32;
  swift_beginAccess();
  v29 = *(v2 + 64);
  MEMORY[0x1E69E5928](v29);
  swift_endAccess();
  if (v29)
  {
    v13 = v29;
    v12 = v29;
    v30 = v29;
    sub_1B075CDC4(v23, v27);
    if ((*(v17 + 48))(v27, 1, v16) == 1)
    {
      [v12 done];
      sub_1B075BCE0();
      sub_1B075BAE0(v14);
    }

    else
    {
      v8 = v20;
      (*(v17 + 32))(v22, v27, v16);
      v35 = v22;
      MEMORY[0x1E69E5928](v12);
      (*(v17 + 16))(v8, v22, v16);
      v10[0] = sub_1B0E44338();
      MFDataConsumerAppendDispatchData();
      MEMORY[0x1E69E5920](v10[0]);
      v11 = *(v17 + 8);
      v10[1] = v17 + 8;
      v11(v20, v16);
      swift_unknownObjectRelease();
      sub_1B075BAE0(v14);
      v11(v22, v16);
    }

    return MEMORY[0x1E69E5920](v12);
  }

  else
  {
    sub_1B075CDC4(v23, v25);
    if ((*(v17 + 48))(v25, 1, v16) == 1)
    {
      sub_1B0E44378();
      return sub_1B075AEE8(v22, v14);
    }

    else
    {
      v31 = v22;
      (*(v17 + 32))(v22, v25, v16);
      v31 = v22;
      (*(v17 + 16))(v20);
      sub_1B075AEE8(v20, v14);
      return (*(v17 + 8))(v22, v16);
    }
  }
}

uint64_t sub_1B07574CC(uint64_t a1)
{
  v2[1] = a1;
  v6 = sub_1B0E443C8();
  v4 = *(v6 - 8);
  v5 = v6 - 8;
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v7 = v2 - v3;
  (*(v4 + 16))(v2 - v3);
  v8 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  (*(v4 + 8))(v7, v6);
  return v8;
}

uint64_t sub_1B0757614()
{
  v3 = *(v0 + 24);
  MEMORY[0x1E69E5928](v3);
  MEMORY[0x1E69E5920](v3);
  if (v3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0757690(uint64_t a1)
{
  v6 = a1;
  v19 = 0;
  v18 = 0;
  v13 = sub_1B0E443C8();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v7 = (v11[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v14 = &v4 - v7;
  v19 = v1;
  v18 = v8;
  v9 = v11[2];
  v10 = v11 + 2;
  v9(&v4 - v7);
  sub_1B075CEE0();
  v17 = sub_1B0E45748();
  v15 = v11[1];
  v16 = v11 + 1;
  v15(v14, v13);
  result = v17;
  if ((v17 & 1) == 0)
  {
    v3 = v14;
    v5 = *(v8 + 24);
    MEMORY[0x1E69E5928](v5);
    (v9)(v3, v6, v13);
    v4 = sub_1B0E44338();
    [v5 writeData_];
    MEMORY[0x1E69E5920](v4);
    v15(v14, v13);
    return MEMORY[0x1E69E5920](v5);
  }

  return result;
}

uint64_t sub_1B0757864(uint64_t a1)
{
  v255 = a1;
  v254 = 0;
  v198 = sub_1B074E050;
  v199 = sub_1B0394C30;
  v200 = sub_1B0394C24;
  v201 = sub_1B074DFFC;
  v202 = sub_1B039BA88;
  v203 = sub_1B039BB94;
  v204 = sub_1B0394C24;
  v205 = sub_1B039BBA0;
  v206 = sub_1B039BC08;
  v207 = sub_1B06BA324;
  v208 = sub_1B074E0E4;
  v209 = sub_1B039BCF8;
  v210 = sub_1B075CCFC;
  v211 = sub_1B03B0DF8;
  v212 = sub_1B075CD60;
  v213 = sub_1B06D5270;
  v214 = sub_1B0398F5C;
  v215 = sub_1B0398F5C;
  v216 = sub_1B0399178;
  v217 = sub_1B0398F5C;
  v218 = sub_1B0398F5C;
  v219 = sub_1B039BA94;
  v220 = sub_1B0398F5C;
  v221 = sub_1B0398F5C;
  v222 = sub_1B0399178;
  v223 = sub_1B0398F5C;
  v224 = sub_1B0398F5C;
  v225 = sub_1B03991EC;
  v226 = sub_1B0398F5C;
  v227 = sub_1B0398F5C;
  v228 = sub_1B03993BC;
  v229 = sub_1B0398F5C;
  v230 = sub_1B0398F5C;
  v231 = sub_1B039BCEC;
  v232 = sub_1B0398F5C;
  v233 = sub_1B0398F5C;
  v234 = sub_1B0399260;
  v235 = sub_1B0398F5C;
  v236 = sub_1B0398F5C;
  v237 = sub_1B06D527C;
  v274 = 0;
  v273 = 0;
  v272 = 0;
  v238 = 0;
  v251 = 0;
  v239 = _s6LoggerVMa_1();
  v240 = (*(*(v239 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](0);
  v241 = &v107 - v240;
  v242 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v243 = &v107 - v242;
  v244 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v245 = &v107 - v244;
  v246 = sub_1B0E439A8();
  v247 = *(v246 - 8);
  v248 = v246 - 8;
  v249 = (*(v247 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v251);
  v250 = &v107 - v249;
  v252 = (*(*(_s26AttachmentDecoderAndWriterC7DecoderC7EncodedOMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v251);
  v253 = &v107 - v252;
  v256 = *(_s26AttachmentDecoderAndWriterC7DecoderC7DecodedVMa() - 8);
  v257 = v256;
  v258 = *(v256 + 64);
  v259 = (v258 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v255);
  v260 = &v107 - v259;
  v261 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v262 = &v107 - v261;
  v274 = &v107 - v261;
  v273 = v8;
  v272 = v1;
  v263 = &v271;
  swift_beginAccess();
  v264 = *(v1 + 32);
  result = swift_endAccess();
  if ((v264 & 1) == 0)
  {
    v139 = &v270;
    swift_beginAccess();
    v149 = 1;
    *(v197 + 32) = 1;
    swift_endAccess();
    v140 = *(v197 + 16);

    v10 = sub_1B0E443C8();
    (*(*(v10 - 8) + 56))(v253, 1);
    sub_1B0757020(v253, v262);
    v11 = v250;
    sub_1B075B1E0(v253);

    (*(v247 + 16))(v11, v255, v246);
    sub_1B074B69C(v255, v245);
    sub_1B074B69C(v245, v243);
    sub_1B074E41C(v245, v241);
    v12 = (v243 + *(v239 + 20));
    v143 = *v12;
    v144 = *(v12 + 1);
    v145 = *(v12 + 1);
    v146 = *(v12 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v243);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v142 = 36;
    v165 = 7;
    v13 = swift_allocObject();
    v14 = v144;
    v15 = v145;
    v16 = v146;
    v150 = v13;
    *(v13 + 16) = v143;
    *(v13 + 20) = v14;
    *(v13 + 24) = v15;
    *(v13 + 32) = v16;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v17 = swift_allocObject();
    v18 = v144;
    v19 = v145;
    v20 = v146;
    v141 = v17;
    *(v17 + 16) = v143;
    *(v17 + 20) = v18;
    *(v17 + 24) = v19;
    *(v17 + 32) = v20;

    v164 = 32;
    v21 = swift_allocObject();
    v22 = v141;
    v155 = v21;
    *(v21 + 16) = v198;
    *(v21 + 24) = v22;
    sub_1B0394868();
    sub_1B0394868();

    v23 = swift_allocObject();
    v24 = v144;
    v25 = v145;
    v26 = v146;
    v27 = v23;
    v28 = v241;
    v158 = v27;
    *(v27 + 16) = v143;
    *(v27 + 20) = v24;
    *(v27 + 24) = v25;
    *(v27 + 32) = v26;
    sub_1B074B764(v28);
    sub_1B075CC34(v262, v260);
    v147 = (*(v257 + 80) + 16) & ~*(v257 + 80);
    v160 = swift_allocObject();
    sub_1B075CC98(v260, v160 + v147);
    sub_1B07575C4();

    sub_1B0394868();
    v195 = sub_1B0E43988();
    v196 = sub_1B0E45908();
    v162 = 17;
    v168 = swift_allocObject();
    v152 = 16;
    *(v168 + 16) = 16;
    v169 = swift_allocObject();
    v154 = 4;
    *(v169 + 16) = 4;
    v29 = swift_allocObject();
    v148 = v29;
    *(v29 + 16) = v199;
    *(v29 + 24) = 0;
    v30 = swift_allocObject();
    v31 = v148;
    v170 = v30;
    *(v30 + 16) = v200;
    *(v30 + 24) = v31;
    v171 = swift_allocObject();
    *(v171 + 16) = 0;
    v172 = swift_allocObject();
    *(v172 + 16) = v149;
    v32 = swift_allocObject();
    v33 = v150;
    v151 = v32;
    *(v32 + 16) = v201;
    *(v32 + 24) = v33;
    v34 = swift_allocObject();
    v35 = v151;
    v173 = v34;
    *(v34 + 16) = v202;
    *(v34 + 24) = v35;
    v174 = swift_allocObject();
    *(v174 + 16) = v152;
    v175 = swift_allocObject();
    *(v175 + 16) = v154;
    v36 = swift_allocObject();
    v153 = v36;
    *(v36 + 16) = v203;
    *(v36 + 24) = 0;
    v37 = swift_allocObject();
    v38 = v153;
    v176 = v37;
    *(v37 + 16) = v204;
    *(v37 + 24) = v38;
    v177 = swift_allocObject();
    *(v177 + 16) = 0;
    v178 = swift_allocObject();
    *(v178 + 16) = v154;
    v39 = swift_allocObject();
    v40 = v155;
    v156 = v39;
    *(v39 + 16) = v205;
    *(v39 + 24) = v40;
    v41 = swift_allocObject();
    v42 = v156;
    v179 = v41;
    *(v41 + 16) = v206;
    *(v41 + 24) = v42;
    v180 = swift_allocObject();
    *(v180 + 16) = 112;
    v181 = swift_allocObject();
    v163 = 8;
    *(v181 + 16) = 8;
    v167 = 24;
    v157 = swift_allocObject();
    *(v157 + 16) = 0x786F626C69616DLL;
    v43 = swift_allocObject();
    v44 = v157;
    v182 = v43;
    *(v43 + 16) = v207;
    *(v43 + 24) = v44;
    v183 = swift_allocObject();
    *(v183 + 16) = 37;
    v184 = swift_allocObject();
    *(v184 + 16) = v163;
    v45 = swift_allocObject();
    v46 = v158;
    v159 = v45;
    *(v45 + 16) = v208;
    *(v45 + 24) = v46;
    v47 = swift_allocObject();
    v48 = v159;
    v185 = v47;
    *(v47 + 16) = v209;
    *(v47 + 24) = v48;
    v186 = swift_allocObject();
    *(v186 + 16) = 0;
    v187 = swift_allocObject();
    *(v187 + 16) = v163;
    v49 = swift_allocObject();
    v50 = v160;
    v161 = v49;
    *(v49 + 16) = v210;
    *(v49 + 24) = v50;
    v51 = swift_allocObject();
    v52 = v161;
    v188 = v51;
    *(v51 + 16) = v211;
    *(v51 + 24) = v52;
    v189 = swift_allocObject();
    *(v189 + 16) = 0;
    v190 = swift_allocObject();
    *(v190 + 16) = v163;
    v53 = swift_allocObject();
    v54 = v197;
    v166 = v53;
    *(v53 + 16) = v212;
    *(v53 + 24) = v54;
    v55 = swift_allocObject();
    v56 = v166;
    v192 = v55;
    *(v55 + 16) = v213;
    *(v55 + 24) = v56;
    v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v191 = sub_1B0E46A48();
    v193 = v57;

    v58 = v168;
    v59 = v193;
    *v193 = v214;
    v59[1] = v58;

    v60 = v169;
    v61 = v193;
    v193[2] = v215;
    v61[3] = v60;

    v62 = v170;
    v63 = v193;
    v193[4] = v216;
    v63[5] = v62;

    v64 = v171;
    v65 = v193;
    v193[6] = v217;
    v65[7] = v64;

    v66 = v172;
    v67 = v193;
    v193[8] = v218;
    v67[9] = v66;

    v68 = v173;
    v69 = v193;
    v193[10] = v219;
    v69[11] = v68;

    v70 = v174;
    v71 = v193;
    v193[12] = v220;
    v71[13] = v70;

    v72 = v175;
    v73 = v193;
    v193[14] = v221;
    v73[15] = v72;

    v74 = v176;
    v75 = v193;
    v193[16] = v222;
    v75[17] = v74;

    v76 = v177;
    v77 = v193;
    v193[18] = v223;
    v77[19] = v76;

    v78 = v178;
    v79 = v193;
    v193[20] = v224;
    v79[21] = v78;

    v80 = v179;
    v81 = v193;
    v193[22] = v225;
    v81[23] = v80;

    v82 = v180;
    v83 = v193;
    v193[24] = v226;
    v83[25] = v82;

    v84 = v181;
    v85 = v193;
    v193[26] = v227;
    v85[27] = v84;

    v86 = v182;
    v87 = v193;
    v193[28] = v228;
    v87[29] = v86;

    v88 = v183;
    v89 = v193;
    v193[30] = v229;
    v89[31] = v88;

    v90 = v184;
    v91 = v193;
    v193[32] = v230;
    v91[33] = v90;

    v92 = v185;
    v93 = v193;
    v193[34] = v231;
    v93[35] = v92;

    v94 = v186;
    v95 = v193;
    v193[36] = v232;
    v95[37] = v94;

    v96 = v187;
    v97 = v193;
    v193[38] = v233;
    v97[39] = v96;

    v98 = v188;
    v99 = v193;
    v193[40] = v234;
    v99[41] = v98;

    v100 = v189;
    v101 = v193;
    v193[42] = v235;
    v101[43] = v100;

    v102 = v190;
    v103 = v193;
    v193[44] = v236;
    v103[45] = v102;

    v104 = v192;
    v105 = v193;
    v193[46] = v237;
    v105[47] = v104;
    sub_1B0394964();

    if (os_log_type_enabled(v195, v196))
    {
      v106 = v238;
      v132 = sub_1B0E45D78();
      v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v133 = sub_1B03949A8(0);
      v134 = sub_1B03949A8(1);
      v135 = &v269;
      v269 = v132;
      v136 = &v268;
      v268 = v133;
      v137 = &v267;
      v267 = v134;
      sub_1B0394A48(3, &v269);
      sub_1B0394A48(8, v135);
      v265 = v214;
      v266 = v168;
      sub_1B03949FC(&v265, v135, v136, v137);
      v138 = v106;
      if (v106)
      {

        __break(1u);
      }

      else
      {
        v265 = v215;
        v266 = v169;
        sub_1B03949FC(&v265, &v269, &v268, &v267);
        v130 = 0;
        v265 = v216;
        v266 = v170;
        sub_1B03949FC(&v265, &v269, &v268, &v267);
        v129 = 0;
        v265 = v217;
        v266 = v171;
        sub_1B03949FC(&v265, &v269, &v268, &v267);
        v128 = 0;
        v265 = v218;
        v266 = v172;
        sub_1B03949FC(&v265, &v269, &v268, &v267);
        v127 = 0;
        v265 = v219;
        v266 = v173;
        sub_1B03949FC(&v265, &v269, &v268, &v267);
        v126 = 0;
        v265 = v220;
        v266 = v174;
        sub_1B03949FC(&v265, &v269, &v268, &v267);
        v125 = 0;
        v265 = v221;
        v266 = v175;
        sub_1B03949FC(&v265, &v269, &v268, &v267);
        v124 = 0;
        v265 = v222;
        v266 = v176;
        sub_1B03949FC(&v265, &v269, &v268, &v267);
        v123 = 0;
        v265 = v223;
        v266 = v177;
        sub_1B03949FC(&v265, &v269, &v268, &v267);
        v122 = 0;
        v265 = v224;
        v266 = v178;
        sub_1B03949FC(&v265, &v269, &v268, &v267);
        v121 = 0;
        v265 = v225;
        v266 = v179;
        sub_1B03949FC(&v265, &v269, &v268, &v267);
        v120 = 0;
        v265 = v226;
        v266 = v180;
        sub_1B03949FC(&v265, &v269, &v268, &v267);
        v119 = 0;
        v265 = v227;
        v266 = v181;
        sub_1B03949FC(&v265, &v269, &v268, &v267);
        v118 = 0;
        v265 = v228;
        v266 = v182;
        sub_1B03949FC(&v265, &v269, &v268, &v267);
        v117 = 0;
        v265 = v229;
        v266 = v183;
        sub_1B03949FC(&v265, &v269, &v268, &v267);
        v116 = 0;
        v265 = v230;
        v266 = v184;
        sub_1B03949FC(&v265, &v269, &v268, &v267);
        v115 = 0;
        v265 = v231;
        v266 = v185;
        sub_1B03949FC(&v265, &v269, &v268, &v267);
        v114 = 0;
        v265 = v232;
        v266 = v186;
        sub_1B03949FC(&v265, &v269, &v268, &v267);
        v113 = 0;
        v265 = v233;
        v266 = v187;
        sub_1B03949FC(&v265, &v269, &v268, &v267);
        v112 = 0;
        v265 = v234;
        v266 = v188;
        sub_1B03949FC(&v265, &v269, &v268, &v267);
        v111 = 0;
        v265 = v235;
        v266 = v189;
        sub_1B03949FC(&v265, &v269, &v268, &v267);
        v110 = 0;
        v265 = v236;
        v266 = v190;
        sub_1B03949FC(&v265, &v269, &v268, &v267);
        v109 = 0;
        v265 = v237;
        v266 = v192;
        sub_1B03949FC(&v265, &v269, &v268, &v267);
        _os_log_impl(&dword_1B0389000, v195, v196, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Writing %{iec-bytes}ld bytes and closing file writer <0x%lx>", v132, 0x3Fu);
        sub_1B03998A8(v133);
        sub_1B03998A8(v134);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v195);
    (*(v247 + 8))(v250, v246);
    sub_1B0757690(v262);
    v108 = *(v197 + 24);
    MEMORY[0x1E69E5928](v108);
    [v108 close];
    MEMORY[0x1E69E5920](v108);
    return sub_1B075CD68(v262);
  }

  return result;
}

uint64_t sub_1B0759C14()
{
  swift_beginAccess();
  v5 = *(v0 + 32);
  swift_endAccess();
  if (v5)
  {
    v3 = 1;
  }

  else
  {
    swift_beginAccess();
    *(v4 + 32) = 1;
    swift_endAccess();
    v2 = *(v4 + 24);
    MEMORY[0x1E69E5928](v2);
    [v2 failAndClose];
    MEMORY[0x1E69E5920](v2);
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1B0759D04()
{
  v2 = *(v0 + 24);
  MEMORY[0x1E69E5928](v2);
  [v2 failAndClose];
  return MEMORY[0x1E69E5920](v2);
}

uint64_t sub_1B0759D60()
{
  v3 = *(v0 + 24);
  MEMORY[0x1E69E5928](v3);
  [v3 failAndClose];
  MEMORY[0x1E69E5920](v3);
  v1 = *(v0 + 16);

  MEMORY[0x1E69E5920](*(v0 + 24));
  return v4;
}

uint64_t sub_1B0759E98()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B0759EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = v4[1];
  v9 = v4[3];
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t sub_1B0759F74()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B0759FAC(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_1B0759FF8()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B075A030(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

void *sub_1B075A08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  memset(__b, 0, sizeof(__b));
  v20[14] = a1;
  v20[15] = a2;
  v20[16] = a3;
  v20[17] = a4;
  v20[12] = a5;
  v20[13] = a6;
  v20[10] = a7;
  v20[11] = a8;
  v20[9] = a10;
  __b[4] = 0;
  __b[5] = 0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __b[0] = a1;
  __b[1] = a2;
  __b[2] = a3;
  __b[3] = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __b[4] = a5;
  __b[5] = a6;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __b[6] = a7;
  __b[7] = a8;
  __b[8] = a10;
  memcpy(__dst, __b, sizeof(__dst));
  sub_1B075CFDC(__dst, v20);

  sub_1B0754BBC(__b);
  return memcpy(a9, __dst, 0x48uLL);
}

uint64_t sub_1B075A230()
{
  v70 = v83;
  v82 = 0;
  v77 = 0;
  v78 = 0;
  v71 = 0;
  v72 = 0;
  v63 = sub_1B0E43788();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v63);
  v67 = v27 - v66;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1FE0, &qword_1B0E9B2B0);
  v68 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v69 = v27 - v68;
  v82 = v0;
  *(v2 + 64) = *(v0 + 32);
  sub_1B070B280(&v85, &v81);
  v70[5] = v70[4];
  if (v87)
  {
    v71 = v86;
    v72 = v87;
    v60 = v86;
    v61 = v87;
  }

  else
  {
    v3 = v70;
    v4 = v62;
    v5 = *v62;
    v45 = v84;
    v70[2] = v5;
    v3[3] = v4[1];
    sub_1B075D098(v84, &v80);
    v47 = v84[0];
    v46 = v84[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B06FF6F0(v45);
    v6.stringValue._object = v46;
    v6.stringValue._countAndFlagsBits = v47;
    v7 = String.init(_:)(v6);
    countAndFlagsBits = v7._countAndFlagsBits;
    object = v7._object;
    v59 = 1;
    v8 = sub_1B0E44838();
    v49 = v9;
    v54 = MEMORY[0x1B2726DB0](countAndFlagsBits, object, v8);
    v56 = v10;

    v11 = v62;
    v12 = v70;
    v13 = *v62;
    v51 = v83;
    *v70 = v13;
    v12[1] = v11[1];
    sub_1B075D098(v83, &v79);
    v53 = v83[2];
    v52 = v83[3];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B06FF6F0(v51);
    v14.stringValue._object = v52;
    v14.stringValue._countAndFlagsBits = v53;
    v15 = String.init(_:)(v14);
    v55 = v15._object;
    v57 = MEMORY[0x1B2726DB0](v54, v56, v15._countAndFlagsBits);
    v58 = v16;

    sub_1B0E436D8();
    sub_1B0E435F8();
    if ((*(v64 + 48))(v69, v59, v63) == 1)
    {
      sub_1B075D100(v69);
      v43 = 0;
      v44 = 0;
    }

    else
    {
      v41 = sub_1B0E43668();
      v42 = v17;
      (*(v64 + 8))(v69, v63);
      v43 = v41;
      v44 = v42;
    }

    v39 = v44;
    v40 = v43;
    if (v44)
    {
      v37 = v40;
      v38 = v39;
      v34 = v39;
      v28 = v40;
      v77 = v40;
      v78 = v39;
      v27[0] = 11;
      v18 = sub_1B0E46A28();
      v31 = &v75;
      v75 = v18;
      v76 = v19;
      v29 = 1;
      v20 = sub_1B0E44838();
      v27[1] = v21;
      MEMORY[0x1B2728B30](v20);

      v73 = v28;
      v74 = v34;
      sub_1B0E46A08();
      v22 = sub_1B0E44838();
      v30 = v23;
      MEMORY[0x1B2728B30](v22);

      v33 = v75;
      v32 = v76;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03B1198(v31);
      v35 = sub_1B0E44C88();
      v36 = v24;

      v60 = v35;
      v61 = v36;
    }

    else
    {
      v60 = sub_1B0E44838();
      v61 = v25;
    }
  }

  return v60;
}

uint64_t sub_1B075A8D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B075A92C()
{
  swift_beginAccess();
  v2 = *(v0 + 64);
  MEMORY[0x1E69E5928](v2);
  swift_endAccess();
  return v2;
}

uint64_t sub_1B075A984(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  v2 = *(v1 + 64);
  *(v1 + 64) = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1B075A9FC@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_decoded;
  swift_beginAccess();
  v2 = sub_1B0E443C8();
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_1B075AA88(uint64_t a1)
{
  v10 = a1;
  v11 = sub_1B0E443C8();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v6 = &v3 - v4;
  (*(v8 + 16))();
  v5 = v1 + OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_decoded;
  v7 = &v12;
  swift_beginAccess();
  (*(v8 + 40))(v5, v6, v11);
  swift_endAccess();
  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_1B075ABC8()
{
  v2 = v0 + OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_decodedSmall;
  swift_beginAccess();
  v3 = *v2;
  sub_1B070E18C(*v2, *(v2 + 8));
  swift_endAccess();
  return v3;
}

uint64_t sub_1B075AC34(uint64_t a1, unint64_t a2)
{
  sub_1B070E18C(a1, a2);
  v6 = (v2 + OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_decodedSmall);
  swift_beginAccess();
  v3 = *v6;
  v4 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  sub_1B070E144(v3, v4);
  swift_endAccess();
  return sub_1B070E144(a1, a2);
}

uint64_t sub_1B075ACB8()
{
  v2 = (v0 + OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_filterIsDone);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_1B075AD18(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_filterIsDone);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1B075ADD4(uint64_t a1)
{
  v9 = a1;
  v8 = sub_1B0E443C8();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v3 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4 = &v2 - v3;
  (*(v6 + 16))();
  (*(v6 + 40))(v5, v4, v8);
  return (*(v6 + 8))(v9, v8);
}

void *sub_1B075AF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *v6;
  v6[8] = 0;
  sub_1B0E44378();
  v8 = (v6 + OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_decodedSmall);
  *v8 = 0;
  v8[1] = 0xF000000000000000;
  *(v6 + OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_filterIsDone) = 0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6[6] = a5;
  v6[7] = a6;
  v14 = sub_1B075B288(a1, a2, a3, a4, a5, a6, v6);
  swift_beginAccess();
  v9 = v6[8];
  v6[8] = v14;
  MEMORY[0x1E69E5920](v9);
  swift_endAccess();

  return v6;
}

uint64_t _s26AttachmentDecoderAndWriterC7DecoderC7EncodedOMa()
{
  v1 = qword_1EB6DC128;
  if (!qword_1EB6DC128)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t _s26AttachmentDecoderAndWriterC7DecoderC7DecodedVMa()
{
  v1 = qword_1EB6DC140;
  if (!qword_1EB6DC140)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1B075B1E0(uint64_t a1)
{
  v3 = sub_1B0E443C8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

id sub_1B075B288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v59[2] = 0;
  v47 = 0;
  v59[6] = a1;
  v59[7] = a2;
  v59[8] = a3;
  v59[9] = a4;
  v59[4] = a5;
  v59[5] = a6;
  v59[3] = a7;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v59[0] = static BodyStructure.Encoding.binary.getter();
  v59[1] = v7;
  v58[2] = a5;
  v58[3] = a6;
  v35 = static BodyStructure.Encoding.__derived_struct_equals(_:_:)(v59[0], v7, a5, a6);
  sub_1B03B1198(v59);
  if (v35)
  {

    return 0;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v58[0] = static BodyStructure.Encoding.sevenBit.getter();
  v58[1] = v8;
  v57[2] = a5;
  v57[3] = a6;
  v30 = static BodyStructure.Encoding.__derived_struct_equals(_:_:)(v58[0], v8, a5, a6);
  sub_1B03B1198(v58);
  if (v30)
  {

LABEL_7:
    sub_1B075D298();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    _s26AttachmentDecoderAndWriterC7DecoderC12DataConsumerCMa();

    sub_1B075BDA8(a7);
    v28 = [ObjCClassFromMetadata filterWithConsumer_];
    swift_unknownObjectRelease();
    if (v28)
    {
      sub_1B0E45FE8();
      sub_1B0392800(v36, v38);
      swift_unknownObjectRelease();
    }

    else
    {
      memset(v38, 0, sizeof(v38));
      v39 = 0;
    }

    if (!v39)
    {
      sub_1B0E465A8();
      __break(1u);
    }

    sub_1B0392800(v38, v40);
    sub_1B075D2FC();
    swift_dynamicCast();
    return v37;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v57[0] = static BodyStructure.Encoding.eightBit.getter();
  v57[1] = v9;
  v56[2] = a5;
  v56[3] = a6;
  v29 = static BodyStructure.Encoding.__derived_struct_equals(_:_:)(v57[0], v9, a5, a6);
  sub_1B03B1198(v57);
  if (v29)
  {

    goto LABEL_7;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v56[0] = static BodyStructure.Encoding.base64.getter();
  v56[1] = v10;
  v55[2] = a5;
  v55[3] = a6;
  v26 = static BodyStructure.Encoding.__derived_struct_equals(_:_:)(v56[0], v10, a5, a6);
  sub_1B03B1198(v56);
  if (v26)
  {

    sub_1B075D360();
    _s26AttachmentDecoderAndWriterC7DecoderC12DataConsumerCMa();

    sub_1B075BDA8(a7);
    v25 = sub_1B075BDE4();
    if (v25)
    {
      return v25;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v55[0] = static BodyStructure.Encoding.quotedPrintable.getter();
    v55[1] = v11;
    v54[2] = a5;
    v54[3] = a6;
    v23 = static BodyStructure.Encoding.__derived_struct_equals(_:_:)(v55[0], v11, a5, a6);
    sub_1B03B1198(v55);
    if (v23)
    {

      sub_1B075D234();
      v21 = swift_getObjCClassFromMetadata();
      _s26AttachmentDecoderAndWriterC7DecoderC12DataConsumerCMa();

      sub_1B075BDA8(a7);
      v22 = [v21 filterWithConsumer_];
      swift_unknownObjectRelease();
      if (v22)
      {
        sub_1B0E45FE8();
        sub_1B0392800(v41, v49);
        swift_unknownObjectRelease();
      }

      else
      {
        memset(v49, 0, sizeof(v49));
        v50 = 0;
      }

      if (!v50)
      {
        sub_1B0E465A8();
        __break(1u);
      }

      sub_1B0392800(v49, v51);
      swift_dynamicCast();
      v19 = v48;
      v47 = v48;
      [v48 setForTextPart_];
      sub_1B075D298();
      v18 = swift_getObjCClassFromMetadata();
      MEMORY[0x1E69E5928](v19);
      v20 = [v18 filterWithConsumer_];
      swift_unknownObjectRelease();
      if (v20)
      {
        sub_1B0E45FE8();
        sub_1B0392800(v42, v44);
        swift_unknownObjectRelease();
      }

      else
      {
        memset(v44, 0, sizeof(v44));
        v45 = 0;
      }

      if (!v45)
      {
        sub_1B0E465A8();
        __break(1u);
      }

      sub_1B0392800(v44, v46);
      sub_1B075D2FC();
      swift_dynamicCast();
      v17 = v43;
      MEMORY[0x1E69E5920](v19);
      return v17;
    }

    else
    {

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v54[0] = sub_1B075BE24();
      v54[1] = v12;
      v52 = a5;
      v53 = a6;
      v16 = static BodyStructure.Encoding.__derived_struct_equals(_:_:)(v54[0], v12, a5, a6);
      sub_1B03B1198(v54);
      if (v16)
      {

        sub_1B075D1A8();
        _s26AttachmentDecoderAndWriterC7DecoderC12DataConsumerCMa();

        sub_1B075BDA8(a7);
        v15 = sub_1B075BDE4();
        if (v15)
        {
          return v15;
        }

        else
        {
          return 0;
        }
      }

      else
      {

        return 0;
      }
    }
  }
}

uint64_t sub_1B075BAE0@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v23 = 0;
  v22 = 0;
  v19 = sub_1B0E443C8();
  v16 = *(v19 - 8);
  v17 = v19 - 8;
  v4 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v15 = &v4 - v4;
  v5 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v4 - v4);
  v18 = &v4 - v5;
  v23 = &v4 - v5;
  v22 = v1;
  v8 = &qword_1EB6DC000;
  v6 = v1 + OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_decoded;
  v7 = &v21;
  v9 = 0;
  swift_beginAccess();
  v13 = *(v16 + 16);
  v12 = v16 + 16;
  v13(v18, v6, v19);
  swift_endAccess();
  sub_1B0E44378();
  v10 = v1 + v8[35];
  v11 = &v20;
  swift_beginAccess();
  (*(v16 + 40))(v10, v15, v19);
  swift_endAccess();
  v13(v15, v18, v19);
  sub_1B075AEE8(v15, v14);
  return (*(v16 + 8))(v18, v19);
}

uint64_t sub_1B075BCE0()
{
  v4 = (v0 + OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_filterIsDone);
  swift_beginAccess();
  v5 = *v4;
  result = swift_endAccess();
  if ((v5 & 1) == 0)
  {
    sub_1B075C32C();
    v2 = (v3 + OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_filterIsDone);
    swift_beginAccess();
    *v2 = 1;
    return swift_endAccess();
  }

  return result;
}

uint64_t *sub_1B075BE58(uint64_t a1, unint64_t a2)
{
  v22 = 0;
  v20 = 0;
  v21 = 0;
  v23 = a1;
  v24 = a2;
  v18 = (v2 + OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_filterIsDone);
  swift_beginAccess();
  v19 = *v18;
  result = swift_endAccess();
  if ((v19 & 1) == 0)
  {
    if (MEMORY[0x1B2725070](a1, a2) >= 100)
    {
      sub_1B075C32C();

      sub_1B0E42F08();
    }

    else
    {
      v12 = (v17 + OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_decodedSmall);
      swift_beginAccess();
      v13 = *v12;
      v14 = v12[1];
      sub_1B070E18C(*v12, v14);
      swift_endAccess();
      if ((v14 & 0xF000000000000000) == 0xF000000000000000)
      {
        sub_1B03B2000(a1, a2);
        v8 = (v17 + OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_decodedSmall);
        swift_beginAccess();
        v6 = *v8;
        v7 = v8[1];
        *v8 = a1;
        v8[1] = a2;
        sub_1B070E144(v6, v7);
        return swift_endAccess();
      }

      else
      {
        v20 = v13;
        v21 = v14;
        sub_1B0E42FA8();
        if (MEMORY[0x1B2725070](v13, v14) <= 900)
        {
          v10 = v21;
          sub_1B03B2000(v20, v21);
          v9 = (v17 + OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_decodedSmall);
          swift_beginAccess();
          v4 = *v9;
          v5 = v9[1];
          *v9 = v20;
          v9[1] = v10;
        }

        else
        {
          sub_1B03B2000(v20, v21);

          sub_1B0E42F08();

          sub_1B0391D50(v20, v21);
          v11 = (v17 + OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_decodedSmall);
          swift_beginAccess();
          v4 = *v11;
          v5 = v11[1];
          *v11 = 0;
          v11[1] = 0xF000000000000000;
        }

        sub_1B070E144(v4, v5);
        swift_endAccess();
        result = &v20;
        sub_1B075D3E8(&v20);
      }
    }
  }

  return result;
}

uint64_t sub_1B075C1FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1;
  v6 = a2;
  v9 = a3;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v14 = sub_1B0E443C8();
  v11 = *(v14 - 8);
  v12 = v14 - 8;
  v8 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v6 - v8;
  v17 = MEMORY[0x1EEE9AC00](v7);
  v18 = v3;
  v16 = v4;
  sub_1B0E44358();
  v10 = &v15;
  swift_beginAccess();
  sub_1B0E44388();
  swift_endAccess();
  return (*(v11 + 8))(v13, v14);
}

uint64_t sub_1B075C32C()
{
  v6 = (v0 + OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_decodedSmall);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  sub_1B070E18C(*v6, v8);
  result = swift_endAccess();
  if ((v8 & 0xF000000000000000) != 0xF000000000000000)
  {

    sub_1B0E42F08();

    v4 = (v5 + OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_decodedSmall);
    swift_beginAccess();
    v2 = *v4;
    v3 = v4[1];
    *v4 = 0;
    v4[1] = 0xF000000000000000;
    sub_1B070E144(v2, v3);
    swift_endAccess();
    return sub_1B0391D50(v7, v8);
  }

  return result;
}

uint64_t sub_1B075C4C8()
{
  sub_1B06FF6F0(v0 + 16);
  sub_1B03B1198(v0 + 48);
  sub_1B06D4E94((v0 + 64));
  v3 = OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_decoded;
  v1 = sub_1B0E443C8();
  (*(*(v1 - 8) + 8))(v0 + v3);
  sub_1B043C03C(v0 + OBJC_IVAR____TtCCC7Message25InProgressMessageDownload26AttachmentDecoderAndWriter7Decoder_decodedSmall);
  return v4;
}

uint64_t sub_1B075C570()
{
  v0 = *sub_1B075C4C8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_1B075C5D4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_1B075C63C()
{

  swift_beginAccess();
  swift_weakAssign();

  swift_endAccess();
}

id sub_1B075C6BC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v7 = a1;
  v8 = v1;
  swift_weakInit();

  swift_beginAccess();
  swift_weakAssign();

  swift_endAccess();
  v6.receiver = v8;
  v6.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v6, sel_init);
  MEMORY[0x1E69E5928](v5);
  v8 = v5;

  MEMORY[0x1E69E5920](v8);
  return v5;
}

uint64_t sub_1B075C7CC(uint64_t a1, unint64_t a2)
{
  v10 = 0;
  v8 = 0;
  v9 = 0;
  v11 = a1;
  v12 = a2;
  sub_1B070E18C(a1, a2);
  if ((a2 & 0xF000000000000000) == 0xF000000000000000)
  {
    return 0;
  }

  v8 = a1;
  v9 = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {

    sub_1B0391AD4(&Strong);
    swift_endAccess();
    sub_1B075BE58(a1, a2);
  }

  else
  {
    sub_1B0391AD4(&Strong);
    swift_endAccess();
  }

  v3 = MEMORY[0x1B2725070](a1, a2);
  sub_1B0391D50(a1, a2);
  return v3;
}

uint64_t sub_1B075CA28()
{
  v1[4] = 0;
  swift_beginAccess();
  v1[0] = swift_weakLoadStrong();
  if (v1[0])
  {

    sub_1B0391AD4(v1);
    swift_endAccess();
    sub_1B075BCE0();
  }

  else
  {
    sub_1B0391AD4(v1);
    return swift_endAccess();
  }
}

id sub_1B075CBEC()
{
  v2 = [v0 initWithConsumer_];
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1B075CC34(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E443C8();
  (*(*(v2 - 8) + 16))(a2, a1);
  return a2;
}

uint64_t sub_1B075CC98(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E443C8();
  (*(*(v2 - 8) + 32))(a2, a1);
  return a2;
}

uint64_t sub_1B075CCFC()
{
  v1 = *(_s26AttachmentDecoderAndWriterC7DecoderC7DecodedVMa() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B07574CC(v2);
}

uint64_t sub_1B075CD68(uint64_t a1)
{
  v1 = sub_1B0E443C8();
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

void *sub_1B075CDC4(const void *a1, void *a2)
{
  v6 = sub_1B0E443C8();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = _s26AttachmentDecoderAndWriterC7DecoderC7EncodedOMa();
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_1B075CEE0()
{
  v2 = qword_1EB6DB980;
  if (!qword_1EB6DB980)
  {
    sub_1B0E443C8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB980);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B075CF60()
{
  v2 = qword_1EB6E1FD8;
  if (!qword_1EB6E1FD8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1FD8);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B075CFDC(void *a1, void *a2)
{
  *a2 = *a1;
  v3 = a1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[1] = v3;
  a2[2] = a1[2];
  v4 = a1[3];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[3] = v4;
  a2[4] = a1[4];
  v5 = a1[5];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[5] = v5;
  a2[6] = a1[6];
  v7 = a1[7];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  a2[7] = v7;
  a2[8] = a1[8];
  return result;
}

void *sub_1B075D098(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[1] = v4;
  a2[2] = a1[2];
  v6 = a1[3];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  a2[3] = v6;
  return result;
}

uint64_t sub_1B075D100(uint64_t a1)
{
  v3 = sub_1B0E43788();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1B075D1A8()
{
  v2 = qword_1EB6E1FF0;
  if (!qword_1EB6E1FF0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6E1FF0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B075D234()
{
  v2 = qword_1EB6DA888;
  if (!qword_1EB6DA888)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA888);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B075D298()
{
  v2 = qword_1EB6DA770;
  if (!qword_1EB6DA770)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA770);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B075D2FC()
{
  v2 = qword_1EB6DA8F8;
  if (!qword_1EB6DA8F8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA8F8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B075D360()
{
  v2 = qword_1EB6DAB70;
  if (!qword_1EB6DAB70)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DAB70);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B075D488(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B075D5A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1B075D7B4()
{
  v2 = sub_1B0E443C8();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_1B075D914()
{
  v2 = sub_1B0E443C8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_1B075D9E0()
{
  v2 = sub_1B0E443C8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v2;
}

unint64_t sub_1B075DA90()
{
  v2 = qword_1EB6E2060;
  if (!qword_1EB6E2060)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2060);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B075DB14()
{
  swift_beginAccess();
  v2 = *(v0 + 20);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1B075DB64(char a1)
{
  swift_beginAccess();
  *(v1 + 20) = a1;
  return swift_endAccess();
}

void *sub_1B075DBB0@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  memcpy(__dst, (v1 + 24), 0xB1uLL);
  sub_1B075DC38(__dst, v4);
  swift_endAccess();
  return memcpy(a1, __dst, 0xB1uLL);
}

uint64_t *sub_1B075DC38(unsigned __int8 *a1, uint64_t *a2)
{
  v45 = a1;
  v46 = a2;
  if (a1[176] == 255)
  {
    memcpy(v46, v45, 0xB1uLL);
  }

  else
  {
    v2 = *v45;
    v3 = v45[1];
    v4 = v45[2];
    v5 = v45[3];
    v6 = v45[4];
    v7 = v45[5];
    v28 = v45[6];
    v29 = v45[7];
    v30 = v45[8];
    v31 = v45[9];
    v32 = v45[10];
    v33 = v45[11];
    v34 = v45[12];
    v35 = v45[13];
    v36 = v45[14];
    v37 = v45[15];
    v38 = v45[16];
    v39 = v45[17];
    v40 = v45[18];
    v41 = v45[19];
    v42 = v45[20];
    v43 = v45[21];
    v44 = *(v45 + 176);
    v27[16] = v27;
    sub_1B0716BB8(v2, v3, v4, v5, v6, v7, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
    v8 = v28;
    v9 = v29;
    v10 = v30;
    v11 = v31;
    v12 = v32;
    v13 = v33;
    v14 = v34;
    v15 = v35;
    v16 = v36;
    v17 = v37;
    v18 = v38;
    v19 = v39;
    v20 = v40;
    v21 = v41;
    v22 = v42;
    v23 = v43;
    v24 = v44;
    v25 = v46;
    *v46 = v2;
    v25[1] = v3;
    v25[2] = v4;
    v25[3] = v5;
    v25[4] = v6;
    v25[5] = v7;
    v25[6] = v8;
    v25[7] = v9;
    v25[8] = v10;
    v25[9] = v11;
    v25[10] = v12;
    v25[11] = v13;
    v25[12] = v14;
    v25[13] = v15;
    v25[14] = v16;
    v25[15] = v17;
    v25[16] = v18;
    v25[17] = v19;
    v25[18] = v20;
    v25[19] = v21;
    v25[20] = v22;
    v25[21] = v23;
    *(v25 + 176) = v24 & 1;
  }

  return v46;
}

uint64_t sub_1B075DE5C(unsigned __int8 *a1)
{
  sub_1B075DC38(a1, v4);
  swift_beginAccess();
  sub_1B075DEC8(a1, (v1 + 24));
  swift_endAccess();
  return sub_1B075E728(a1);
}

uint64_t *sub_1B075DEC8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v53 = a1;
  v54 = a2;
  if (a2[176] == 255)
  {
    memcpy(v54, v53, 0xB1uLL);
  }

  else if (*(v53 + 176) == 255)
  {
    sub_1B075E648(v54);
    memcpy(v54, v53, 0xB1uLL);
  }

  else
  {
    v2 = *v53;
    v34 = v53[1];
    v35 = v53[2];
    v36 = v53[3];
    v37 = v53[4];
    v38 = v53[5];
    v39 = v53[6];
    v40 = v53[7];
    v41 = v53[8];
    v42 = v53[9];
    v43 = v53[10];
    v44 = v53[11];
    v45 = v53[12];
    v46 = v53[13];
    v47 = v53[14];
    v48 = v53[15];
    v49 = v53[16];
    v3 = v53[17];
    v4 = v53[18];
    v5 = v53[19];
    v6 = v53[20];
    v7 = v53[21];
    v50 = *(v53 + 176);
    v8 = *v54;
    v9 = v54[1];
    v10 = v54[2];
    v11 = v54[3];
    v12 = v54[4];
    v13 = v54[5];
    v14 = v54[6];
    v15 = v54[7];
    v16 = v54[8];
    v17 = v54[9];
    v18 = v54[10];
    v19 = v54[11];
    v20 = v54[12];
    v21 = v54[13];
    v22 = v54[14];
    v23 = v54[15];
    v24 = v54[16];
    v25 = v54[17];
    v26 = v54[18];
    v27 = v54[19];
    v28 = v54[20];
    v29 = v54[21];
    v51 = *(v54 + 176);
    *v54 = v2;
    v54[1] = v34;
    v54[2] = v35;
    v54[3] = v36;
    v54[4] = v37;
    v54[5] = v38;
    v54[6] = v39;
    v54[7] = v40;
    v54[8] = v41;
    v54[9] = v42;
    v54[10] = v43;
    v54[11] = v44;
    v54[12] = v45;
    v54[13] = v46;
    v54[14] = v47;
    v54[15] = v48;
    v54[16] = v49;
    v30 = v50;
    v54[17] = v3;
    LOBYTE(v2) = v51;
    v31 = v54;
    v54[18] = v4;
    v31[19] = v5;
    v31[20] = v6;
    v31[21] = v7;
    *(v31 + 176) = v30 & 1;
    v52 = &v33;
    sub_1B075E1EC(v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v2);
  }

  return v54;
}

uint64_t sub_1B075E1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a23)
  {

    return sub_1B075E590(a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
  }

  else
  {

    return sub_1B075E388(a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }
}

uint64_t sub_1B075E388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 != 1)
  {

    return sub_1B075E420(a3, a4, a5, a6, a7, a8, a9, a10, a11);
  }

  return result;
}

uint64_t sub_1B075E420(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2 != 1)
  {
    sub_1B075E4A0(result, a2);
    return sub_1B075E4F8(a6, a7, a8, a9);
  }

  return result;
}

uint64_t sub_1B075E4A0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1B075E4F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {

    return sub_1B075E548(a2, a3, a4);
  }

  return result;
}

uint64_t sub_1B075E548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1B075E590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2)
  {

    return sub_1B075E420(a4, a5, a6, a7, a8, a9, a10, a11, a12);
  }

  return result;
}

uint64_t sub_1B075E728(uint64_t a1)
{
  v26 = a1;
  if (*(a1 + 176) != 255)
  {
    v1 = *v26;
    v2 = *(v26 + 8);
    v3 = *(v26 + 16);
    v4 = *(v26 + 24);
    v5 = *(v26 + 32);
    v6 = *(v26 + 40);
    v7 = *(v26 + 48);
    v8 = *(v26 + 56);
    v9 = *(v26 + 64);
    v10 = *(v26 + 72);
    v11 = *(v26 + 80);
    v12 = *(v26 + 88);
    v13 = *(v26 + 96);
    v14 = *(v26 + 104);
    v15 = *(v26 + 112);
    v16 = *(v26 + 120);
    v17 = *(v26 + 128);
    v18 = *(v26 + 136);
    v19 = *(v26 + 144);
    v20 = *(v26 + 152);
    v21 = *(v26 + 160);
    v22 = *(v26 + 168);
    v23 = *(v26 + 176);
    v25[16] = v25;
    sub_1B075E1EC(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
  }

  return v26;
}

uint64_t sub_1B075E820@<X0>(char *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_existingData);
  swift_beginAccess();
  sub_1B075E87C(v3, a1);
  return swift_endAccess();
}

char *sub_1B075E87C(char *a1, char *a2)
{
  v8 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa();
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v2 = sub_1B0E443C8();
    (*(*(v2 - 8) + 16))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v8 - 8) + 64));
  }

  v4 = *(_s31PreviouslyDownloadedMessageDataVMa() + 20);
  v5 = *&a1[v4];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *&a2[v4] = v5;
  return result;
}

uint64_t sub_1B075E9D4(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(_s31PreviouslyDownloadedMessageDataVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  sub_1B075E87C(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_existingData);
  v7 = &v9;
  swift_beginAccess();
  sub_1B075EA98(v5, v6);
  swift_endAccess();
  return sub_1B075ECD0(v8);
}

char *sub_1B075EA98(char *a1, char *a2)
{
  if (a2 != a1)
  {
    sub_1B075EC04(a2);
    v8 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa();
    if (swift_getEnumCaseMultiPayload() < 2)
    {
      v2 = sub_1B0E443C8();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v8 - 8) + 64));
    }
  }

  v3 = _s31PreviouslyDownloadedMessageDataVMa();
  v4 = &a2[*(v3 + 20)];
  v5 = *&a1[*(v3 + 20)];
  v6 = *v4;
  *v4 = v5;

  return a2;
}

uint64_t sub_1B075EC04(uint64_t a1)
{
  _s31PreviouslyDownloadedMessageDataV4MIMEOMa();
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v1 = sub_1B0E443C8();
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_1B075ECD0(uint64_t a1)
{
  _s31PreviouslyDownloadedMessageDataV4MIMEOMa();
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v1 = sub_1B0E443C8();
    (*(*(v1 - 8) + 8))(a1);
  }

  v2 = *(a1 + *(_s31PreviouslyDownloadedMessageDataVMa() + 20));

  return a1;
}

uint64_t sub_1B075EDB4@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_downloadedHeader);
  swift_beginAccess();
  sub_1B075EE10(v3, a1);
  return swift_endAccess();
}

void *sub_1B075EE10(const void *a1, void *a2)
{
  v7 = type metadata accessor for MessageHeader();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26F0, &unk_1B0E9B4F0);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = sub_1B0E443C8();
    (*(*(v2 - 8) + 16))(a2, a1);
    (*(v8 + 56))(a2, 0, 1, v7);
  }

  return a2;
}

uint64_t sub_1B075EF40(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26F0, &unk_1B0E9B4F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  sub_1B075EE10(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_downloadedHeader);
  v7 = &v9;
  swift_beginAccess();
  sub_1B075F010(v5, v6);
  swift_endAccess();
  return sub_1B075F220(v8);
}

void *sub_1B075F010(const void *a1, void *a2)
{
  v9 = type metadata accessor for MessageHeader();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if ((v11)(a2, 1))
  {
    if (v11(a1, 1, v9))
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26F0, &unk_1B0E9B4F0);
      memcpy(a2, a1, *(*(v5 - 8) + 64));
    }

    else
    {
      v4 = sub_1B0E443C8();
      (*(*(v4 - 8) + 32))(a2, a1);
      (*(v10 + 56))(a2, 0, 1, v9);
    }
  }

  else if (v11(a1, 1, v9))
  {
    sub_1B075CD68(a2);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26F0, &unk_1B0E9B4F0);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = sub_1B0E443C8();
    (*(*(v2 - 8) + 40))(a2, a1);
  }

  return a2;
}

uint64_t sub_1B075F220(uint64_t a1)
{
  v1 = type metadata accessor for MessageHeader();
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    v2 = sub_1B0E443C8();
    (*(*(v2 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_1B075F2C4()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_sections);
  swift_beginAccess();
  v3 = *v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v3;
}

uint64_t sub_1B075F324(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = (v1 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_sections);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t sub_1B075F394()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_passAndActionID);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1B075F3F0(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_passAndActionID);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1B075F44C@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_cleanedUpFullMessageData);
  swift_beginAccess();
  sub_1B075F4A8(v3, a1);
  return swift_endAccess();
}

void *sub_1B075F4A8(const void *a1, void *a2)
{
  v6 = sub_1B0E443C8();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1B075F5D0(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  sub_1B075F4A8(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_cleanedUpFullMessageData);
  v7 = &v9;
  swift_beginAccess();
  sub_1B075F6A0(v5, v6);
  swift_endAccess();
  return sub_1B075B1E0(v8);
}

void *sub_1B075F6A0(const void *a1, void *a2)
{
  v7 = sub_1B0E443C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_1B075F8C8(void *a1)
{
  v14 = 0;
  v15 = a1;
  v8 = (v1 + OBJC_IVAR____TtC7Message25InProgressMessageDownload__cachedAttachmentFilenames);
  swift_beginAccess();
  v9 = *v8;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  if (v9)
  {
    return v9;
  }

  swift_beginAccess();
  memcpy(__dst, (v7 + 24), 0xB1uLL);
  sub_1B075DC38(__dst, v11);
  swift_endAccess();
  memcpy(v13, __dst, 0xB1uLL);
  if (sub_1B075FACC(v13) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5EF0, &qword_1B0E9B500);
    sub_1B0E46A48();
    sub_1B07167A8();
    return sub_1B0E445D8();
  }

  else
  {
    memcpy(v16, v13, sizeof(v16));
    v10 = BodyStructure.makeAttachmentFilenames(cache:)(a1);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v4 = (v7 + OBJC_IVAR____TtC7Message25InProgressMessageDownload__cachedAttachmentFilenames);
    swift_beginAccess();
    v2 = *v4;
    *v4 = v10;

    swift_endAccess();
    sub_1B075E648(v13);
    return v10;
  }
}

uint64_t sub_1B075FACC(uint64_t a1)
{
  v1 = *(a1 + 176) ^ 0xFF;
  if (v1 >= 0xFE)
  {
    v1 = -1;
  }

  return v1 + 1;
}

uint64_t sub_1B075FBC0()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message25InProgressMessageDownload__cachedAttachmentFilenames);
  swift_beginAccess();
  v3 = *v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v3;
}

uint64_t sub_1B075FC20(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = (v1 + OBJC_IVAR____TtC7Message25InProgressMessageDownload__cachedAttachmentFilenames);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t sub_1B075FC90(int a1, char a2)
{
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_1B075FCE8(a1, a2 & 1);
}

uint64_t sub_1B075FCE8(int a1, char a2)
{
  sub_1B075FEBC(v12);
  memcpy((v2 + 24), v12, 0xB1uLL);
  sub_1B0825490((v2 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_existingData));
  v6 = OBJC_IVAR____TtC7Message25InProgressMessageDownload_downloadedHeader;
  v3 = type metadata accessor for MessageHeader();
  (*(*(v3 - 8) + 56))(v2 + v6, 1);
  v7 = OBJC_IVAR____TtC7Message25InProgressMessageDownload_sections;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2078, &qword_1B0E9B508);
  sub_1B0E46A48();
  type metadata accessor for InProgressMessageDownload.Section();
  sub_1B07167A8();
  *(v2 + v7) = sub_1B0E445D8();
  *(v2 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_passAndActionID) = 2;
  v8 = OBJC_IVAR____TtC7Message25InProgressMessageDownload_cleanedUpFullMessageData;
  v4 = sub_1B0E443C8();
  (*(*(v4 - 8) + 56))(v2 + v8, 1);
  result = v11;
  *(v11 + OBJC_IVAR____TtC7Message25InProgressMessageDownload__cachedAttachmentFilenames) = 0;
  *(v11 + 16) = a1;
  *(v11 + 20) = a2;
  return result;
}

uint64_t sub_1B075FEBC(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 168) = 0;
  *(result + 176) = -1;
  return result;
}

uint64_t type metadata accessor for InProgressMessageDownload.Section()
{
  v1 = qword_1EB6DC0C8;
  if (!qword_1EB6DC0C8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1B075FF94()
{
  sub_1B075E728(v0 + 24);
  sub_1B075ECD0(v0 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_existingData);
  sub_1B075F220(v0 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_downloadedHeader);
  sub_1B039E440((v0 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_sections));
  sub_1B075B1E0(v0 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_cleanedUpFullMessageData);
  sub_1B039E440((v0 + OBJC_IVAR____TtC7Message25InProgressMessageDownload__cachedAttachmentFilenames));
  return v2;
}

uint64_t sub_1B076001C()
{
  v0 = *sub_1B075FF94();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_1B0760080()
{
  v31 = 0;
  v30 = 0;
  v23 = __b;
  v25 = 40;
  memset(__b, 0, sizeof(__b));
  v26 = 0;
  v21 = type metadata accessor for InProgressMessageDownload.Section();
  v8 = *(v21 - 8);
  v9 = v21 - 8;
  v10 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v21);
  v11 = (v5 - v10);
  v12 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v13 = (v5 - v12);
  v31 = v5 - v12;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2080, &qword_1B0E9B510);
  v14 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v15 = v5 - v14;
  v30 = v0;
  v16 = (v0 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_sections);
  v18 = &v28;
  swift_beginAccess();
  v17 = *v16;
  v22 = sub_1B07167A8();
  v20 = &type metadata for SectionSpecifier.Part;
  v19 = sub_1B0E446B8();
  swift_endAccess();
  v24 = &v32;
  MEMORY[0x1B2726760](v19, v20, v21, v22);
  memcpy(v23, v24, v25);
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2088, &qword_1B0E9B518);
    sub_1B0E44658();
    if ((*(v8 + 48))(v15, 1, v21) == 1)
    {
      break;
    }

    sub_1B076041C(v15, v13);
    sub_1B0760600(v13, v11);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v7 = *v11;
      v26 = v7;
      sub_1B0759D04();
    }

    else
    {
      sub_1B0760B84(v11);
    }

    sub_1B0760B84(v13);
  }

  sub_1B06B91B0(__b);
  v6 = &v27;
  swift_beginAccess();
  v5[3] = sub_1B06A3D48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2090, &qword_1B0E9B520);
  sub_1B0E446F8();
  return swift_endAccess();
}

uint64_t sub_1B076041C(uint64_t a1, uint64_t a2)
{
  v13 = type metadata accessor for InProgressMessageDownload.Section();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      *a2 = *a1;
      *(a2 + 8) = *(a1 + 8);
      *(a2 + 24) = *(a1 + 24);
      memcpy((a2 + 40), (a1 + 40), 0xB1uLL);
      v4 = type metadata accessor for MessageSectionDataConcatenator.CompleteSection();
      v8 = a2 + *(v4 + 28);
      v7 = a1 + *(v4 + 28);
      v5 = sub_1B0E443C8();
      (*(*(v5 - 8) + 32))(v8, v7);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v13 - 8) + 64));
    }
  }

  else
  {
    *a2 = *a1;
    *(a2 + 8) = *(a1 + 8);
    *(a2 + 16) = *(a1 + 16);
    *(a2 + 32) = *(a1 + 32);
    v2 = type metadata accessor for MessageSectionDataConcatenator();
    v10 = a2 + *(v2 + 28);
    v9 = a1 + *(v2 + 28);
    v3 = type metadata accessor for MessageSectionData.Concatenator(0);
    (*(*(v3 - 8) + 32))(v10, v9);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

void *sub_1B0760600(uint64_t *a1, void *a2)
{
  v89 = a1;
  v88 = a2;
  v90 = type metadata accessor for InProgressMessageDownload.Section();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v81 = *v89;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v11 = v89;
      *v88 = v81;
      if (v11[2])
      {
        v12 = v89;
        v88[1] = v89[1];
        v79 = v12[2];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v13 = v89;
        v14 = v88;
        v88[2] = v79;
        v14[3] = v13[3];
        v80 = v13[4];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v88[4] = v80;
      }

      else
      {
        v15 = v88;
        v16 = v89;
        *(v88 + 1) = *(v89 + 1);
        *(v15 + 3) = *(v16 + 3);
      }

      v77 = v88 + 5;
      v78 = v89 + 5;
      if (*(v89 + 216) == 255)
      {
        memcpy(v77, v78, 0xB1uLL);
      }

      else
      {
        v17 = v89[5];
        v18 = v89[6];
        v19 = v89[7];
        v20 = v89[8];
        v21 = v89[9];
        v22 = v89[10];
        v60 = v89[11];
        v61 = v89[12];
        v62 = v89[13];
        v63 = v89[14];
        v64 = v89[15];
        v65 = v89[16];
        v66 = v89[17];
        v67 = v89[18];
        v68 = v89[19];
        v69 = v89[20];
        v70 = v89[21];
        v71 = v89[22];
        v72 = v89[23];
        v73 = v89[24];
        v74 = v89[25];
        v75 = v89[26];
        v76 = *(v89 + 216);
        v59 = &v50;
        sub_1B0716BB8(v17, v18, v19, v20, v21, v22, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76);
        v23 = v60;
        v24 = v61;
        v25 = v62;
        v26 = v63;
        v27 = v64;
        v28 = v65;
        v29 = v66;
        v30 = v67;
        v31 = v68;
        v32 = v69;
        v33 = v70;
        v34 = v71;
        v35 = v72;
        v36 = v73;
        v37 = v74;
        v38 = v75;
        v39 = v76;
        v40 = v88;
        v88[5] = v17;
        v40[6] = v18;
        v40[7] = v19;
        v40[8] = v20;
        v40[9] = v21;
        v40[10] = v22;
        v40[11] = v23;
        v40[12] = v24;
        v40[13] = v25;
        v40[14] = v26;
        v40[15] = v27;
        v40[16] = v28;
        v40[17] = v29;
        v40[18] = v30;
        v40[19] = v31;
        v40[20] = v32;
        v40[21] = v33;
        v40[22] = v34;
        v40[23] = v35;
        v40[24] = v36;
        v40[25] = v37;
        v40[26] = v38;
        *(v40 + 216) = v39 & 1;
      }

      v56 = 0;
      v41 = type metadata accessor for MessageSectionDataConcatenator.CompleteSection();
      v58 = v88 + *(v41 + 28);
      v57 = v89 + *(v41 + 28);
      v42 = sub_1B0E443C8();
      (*(*(v42 - 8) + 16))(v58, v57);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        v55 = *v89;

        *v88 = v55;
      }

      else
      {
        v51 = *v89;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v43 = v89;
        v44 = v88;
        *v88 = v51;
        v44[1] = v43[1];
        v52 = v43[2];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v45 = v89;
        v46 = v88;
        v88[2] = v52;
        v46[3] = v45[3];
        v53 = v45[4];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v47 = v89;
        v48 = v88;
        v88[4] = v53;
        v48[5] = v47[5];
        v54 = v47[6];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v88[6] = v54;
      }

      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    v2 = v89;
    *v88 = *v89;
    v87 = v2[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v3 = v89;
    v88[1] = v87;
    if (v3[3])
    {
      v4 = v89;
      v88[2] = v89[2];
      v85 = v4[3];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v5 = v89;
      v6 = v88;
      v88[3] = v85;
      v6[4] = v5[4];
      v86 = v5[5];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v88[5] = v86;
    }

    else
    {
      v7 = v88;
      v8 = v89;
      *(v88 + 1) = *(v89 + 1);
      *(v7 + 2) = *(v8 + 2);
    }

    v82 = 0;
    v9 = type metadata accessor for MessageSectionDataConcatenator();
    v84 = v88 + *(v9 + 28);
    v83 = v89 + *(v9 + 28);
    v10 = type metadata accessor for MessageSectionData.Concatenator(0);
    (*(*(v10 - 8) + 16))(v84, v83);
    swift_storeEnumTagMultiPayload();
  }

  return v88;
}

uint64_t *sub_1B0760B84(uint64_t *a1)
{
  v43 = a1;
  type metadata accessor for InProgressMessageDownload.Section();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v5 = *v43;

        if (v43[2])
        {
          v6 = v43[2];

          v7 = v43[4];
        }

        if (*(v43 + 216) != 255)
        {
          v8 = v43[5];
          v9 = v43[6];
          v10 = v43[7];
          v11 = v43[8];
          v12 = v43[9];
          v13 = v43[10];
          v14 = v43[11];
          v15 = v43[12];
          v16 = v43[13];
          v17 = v43[14];
          v18 = v43[15];
          v19 = v43[16];
          v20 = v43[17];
          v21 = v43[18];
          v22 = v43[19];
          v23 = v43[20];
          v24 = v43[21];
          v25 = v43[22];
          v26 = v43[23];
          v27 = v43[24];
          v28 = v43[25];
          v29 = v43[26];
          v30 = *(v43 + 216);
          v40 = v38;
          sub_1B075E1EC(v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
        }

        v38[15] = 0;
        v39 = v43 + *(type metadata accessor for MessageSectionDataConcatenator.CompleteSection() + 28);
        v31 = sub_1B0E443C8();
        (*(*(v31 - 8) + 8))(v39);
        break;
      case 2:
        v32 = *v43;

        break;
      case 3:
        v33 = *v43;

        v34 = v43[2];

        v35 = v43[4];

        v36 = v43[6];

        break;
    }
  }

  else
  {
    v1 = v43[1];

    if (v43[3])
    {
      v2 = v43[3];

      v3 = v43[5];
    }

    v41 = 0;
    v42 = v43 + *(type metadata accessor for MessageSectionDataConcatenator() + 28);
    v4 = type metadata accessor for MessageSectionData.Concatenator(0);
    (*(*(v4 - 8) + 8))(v42);
  }

  return v43;
}

unint64_t sub_1B0760E98()
{
  v2 = qword_1EB6E2098;
  if (!qword_1EB6E2098)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2098);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0760F34(uint64_t a1)
{
  v524 = a1;
  v517 = 0;
  v552 = 0;
  v551 = 0;
  v516 = 0;
  v518 = _s6LoggerVMa();
  v520 = *(*(v518 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](0);
  v522 = (v520 + 15) & 0xFFFFFFFFFFFFFFF0;
  v519 = v198 - v522;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v521 = v198 - v522;
  MEMORY[0x1EEE9AC00](v3);
  v523 = v198 - v522;
  v525 = sub_1B0E439A8();
  v526 = *(v525 - 8);
  v527 = v526;
  v529 = *(v526 + 64);
  v4 = MEMORY[0x1EEE9AC00](v524);
  v531 = (v529 + 15) & 0xFFFFFFFFFFFFFFF0;
  v528 = v198 - v531;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v530 = v198 - v531;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v532 = v198 - v531;
  v552 = v6;
  v551 = v1;
  if (!sub_1B0765644())
  {
    (*(v527 + 16))(v528, v524, v525);
    sub_1B0394784(v524, v523);
    sub_1B0394784(v523, v521);
    sub_1B03F4FD0(v523, v519);
    v136 = (v521 + *(v518 + 20));
    v240 = *v136;
    v241 = *(v136 + 1);
    sub_1B039480C(v521);
    v239 = 24;
    v271 = 7;
    v137 = swift_allocObject();
    v138 = v241;
    v251 = v137;
    *(v137 + 16) = v240;
    *(v137 + 20) = v138;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v139 = swift_allocObject();
    v140 = v241;
    v242 = v139;
    *(v139 + 16) = v240;
    *(v139 + 20) = v140;

    v270 = 32;
    v141 = swift_allocObject();
    v142 = v242;
    v262 = v141;
    *(v141 + 16) = sub_1B039BBE8;
    *(v141 + 24) = v142;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v519);

    v143 = swift_allocObject();
    v144 = v515;
    v272 = v143;
    *(v143 + 16) = sub_1B07AAFA4;
    *(v143 + 24) = v144;

    v294 = sub_1B0E43988();
    v243 = v294;
    v293 = sub_1B0E45908();
    v244 = v293;
    v266 = 17;
    v275 = swift_allocObject();
    v245 = v275;
    v254 = 16;
    *(v275 + 16) = 16;
    v276 = swift_allocObject();
    v246 = v276;
    v268 = 4;
    *(v276 + 16) = 4;
    v145 = swift_allocObject();
    v247 = v145;
    *(v145 + 16) = sub_1B0394C30;
    v257 = 0;
    *(v145 + 24) = 0;
    v146 = swift_allocObject();
    v147 = v247;
    v277 = v146;
    v248 = v146;
    *(v146 + 16) = sub_1B0394C24;
    *(v146 + 24) = v147;
    v278 = swift_allocObject();
    v249 = v278;
    v265 = 0;
    *(v278 + 16) = 0;
    v279 = swift_allocObject();
    v250 = v279;
    *(v279 + 16) = 1;
    v148 = swift_allocObject();
    v149 = v251;
    v252 = v148;
    *(v148 + 16) = sub_1B039BA2C;
    *(v148 + 24) = v149;
    v150 = swift_allocObject();
    v151 = v252;
    v280 = v150;
    v253 = v150;
    *(v150 + 16) = sub_1B039BA88;
    *(v150 + 24) = v151;
    v281 = swift_allocObject();
    v255 = v281;
    *(v281 + 16) = v254;
    v282 = swift_allocObject();
    v256 = v282;
    *(v282 + 16) = v268;
    v152 = swift_allocObject();
    v153 = v257;
    v258 = v152;
    *(v152 + 16) = sub_1B039BB94;
    *(v152 + 24) = v153;
    v154 = swift_allocObject();
    v155 = v258;
    v283 = v154;
    v259 = v154;
    *(v154 + 16) = sub_1B0394C24;
    *(v154 + 24) = v155;
    v284 = swift_allocObject();
    v260 = v284;
    *(v284 + 16) = v265;
    v285 = swift_allocObject();
    v261 = v285;
    *(v285 + 16) = v268;
    v156 = swift_allocObject();
    v157 = v262;
    v263 = v156;
    *(v156 + 16) = sub_1B039BBA0;
    *(v156 + 24) = v157;
    v158 = swift_allocObject();
    v159 = v263;
    v286 = v158;
    v264 = v158;
    *(v158 + 16) = sub_1B039BC08;
    *(v158 + 24) = v159;
    v287 = swift_allocObject();
    v267 = v287;
    *(v287 + 16) = v265;
    v288 = swift_allocObject();
    v269 = v288;
    *(v288 + 16) = v268;
    v160 = swift_allocObject();
    v161 = v272;
    v273 = v160;
    *(v160 + 16) = sub_1B07AB020;
    *(v160 + 24) = v161;
    v162 = swift_allocObject();
    v163 = v273;
    v291 = v162;
    v274 = v162;
    *(v162 + 16) = sub_1B039BC08;
    *(v162 + 24) = v163;
    v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v289 = sub_1B0E46A48();
    v290 = v164;

    v165 = v275;
    v166 = v290;
    *v290 = sub_1B0398F5C;
    v166[1] = v165;

    v167 = v276;
    v168 = v290;
    v290[2] = sub_1B0398F5C;
    v168[3] = v167;

    v169 = v277;
    v170 = v290;
    v290[4] = sub_1B0399178;
    v170[5] = v169;

    v171 = v278;
    v172 = v290;
    v290[6] = sub_1B0398F5C;
    v172[7] = v171;

    v173 = v279;
    v174 = v290;
    v290[8] = sub_1B0398F5C;
    v174[9] = v173;

    v175 = v280;
    v176 = v290;
    v290[10] = sub_1B039BA94;
    v176[11] = v175;

    v177 = v281;
    v178 = v290;
    v290[12] = sub_1B0398F5C;
    v178[13] = v177;

    v179 = v282;
    v180 = v290;
    v290[14] = sub_1B0398F5C;
    v180[15] = v179;

    v181 = v283;
    v182 = v290;
    v290[16] = sub_1B0399178;
    v182[17] = v181;

    v183 = v284;
    v184 = v290;
    v290[18] = sub_1B0398F5C;
    v184[19] = v183;

    v185 = v285;
    v186 = v290;
    v290[20] = sub_1B0398F5C;
    v186[21] = v185;

    v187 = v286;
    v188 = v290;
    v290[22] = sub_1B03991EC;
    v188[23] = v187;

    v189 = v287;
    v190 = v290;
    v290[24] = sub_1B0398F5C;
    v190[25] = v189;

    v191 = v288;
    v192 = v290;
    v290[26] = sub_1B0398F5C;
    v192[27] = v191;

    v193 = v290;
    v194 = v291;
    v290[28] = sub_1B03991EC;
    v193[29] = v194;
    sub_1B0394964();

    if (os_log_type_enabled(v294, v293))
    {
      v195 = v516;
      v233 = sub_1B0E45D78();
      v229 = v233;
      v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v231 = 0;
      v234 = sub_1B03949A8(0);
      v232 = v234;
      v235 = sub_1B03949A8(v231);
      v550 = v233;
      v549 = v234;
      v548 = v235;
      v236 = &v550;
      sub_1B0394A48(0, &v550);
      sub_1B0394A48(5, v236);
      v546 = sub_1B0398F5C;
      v547 = v245;
      sub_1B03949FC(&v546, v236, &v549, &v548);
      v237 = v195;
      v238 = v195;
      if (v195)
      {
        v227 = 0;

        __break(1u);
      }

      else
      {
        v546 = sub_1B0398F5C;
        v547 = v246;
        sub_1B03949FC(&v546, &v550, &v549, &v548);
        v225 = 0;
        v226 = 0;
        v546 = sub_1B0399178;
        v547 = v248;
        sub_1B03949FC(&v546, &v550, &v549, &v548);
        v223 = 0;
        v224 = 0;
        v546 = sub_1B0398F5C;
        v547 = v249;
        sub_1B03949FC(&v546, &v550, &v549, &v548);
        v221 = 0;
        v222 = 0;
        v546 = sub_1B0398F5C;
        v547 = v250;
        sub_1B03949FC(&v546, &v550, &v549, &v548);
        v219 = 0;
        v220 = 0;
        v546 = sub_1B039BA94;
        v547 = v253;
        sub_1B03949FC(&v546, &v550, &v549, &v548);
        v217 = 0;
        v218 = 0;
        v546 = sub_1B0398F5C;
        v547 = v255;
        sub_1B03949FC(&v546, &v550, &v549, &v548);
        v215 = 0;
        v216 = 0;
        v546 = sub_1B0398F5C;
        v547 = v256;
        sub_1B03949FC(&v546, &v550, &v549, &v548);
        v213 = 0;
        v214 = 0;
        v546 = sub_1B0399178;
        v547 = v259;
        sub_1B03949FC(&v546, &v550, &v549, &v548);
        v211 = 0;
        v212 = 0;
        v546 = sub_1B0398F5C;
        v547 = v260;
        sub_1B03949FC(&v546, &v550, &v549, &v548);
        v209 = 0;
        v210 = 0;
        v546 = sub_1B0398F5C;
        v547 = v261;
        sub_1B03949FC(&v546, &v550, &v549, &v548);
        v207 = 0;
        v208 = 0;
        v546 = sub_1B03991EC;
        v547 = v264;
        sub_1B03949FC(&v546, &v550, &v549, &v548);
        v205 = 0;
        v206 = 0;
        v546 = sub_1B0398F5C;
        v547 = v267;
        sub_1B03949FC(&v546, &v550, &v549, &v548);
        v203 = 0;
        v204 = 0;
        v546 = sub_1B0398F5C;
        v547 = v269;
        sub_1B03949FC(&v546, &v550, &v549, &v548);
        v201 = 0;
        v202 = 0;
        v546 = sub_1B03991EC;
        v547 = v274;
        sub_1B03949FC(&v546, &v550, &v549, &v548);
        v199 = 0;
        v200 = 0;
        _os_log_impl(&dword_1B0389000, v243, v244, "[%.*hhx-%.*X] Mailbox was de-selected while download was in-progress for UID %u. Download did not complete, yet. Tearing down.", v229, 0x1Du);
        v198[1] = 0;
        sub_1B03998A8(v232);
        sub_1B03998A8(v235);
        sub_1B0E45D58();

        v228 = v199;
      }
    }

    else
    {
      v196 = v516;

      v228 = v196;
    }

    v198[0] = v228;

    (*(v527 + 8))(v528, v525);
    sub_1B0760080();
    v394 = 1;
    v395 = v198[0];
    return v394 & 1;
  }

  v7 = v516;
  v502 = (v515 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_sections);
  v506 = 32;
  v503 = &v545;
  v504 = 0;
  swift_beginAccess();
  v510 = *v502;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();

  v505 = v198;
  v8 = MEMORY[0x1EEE9AC00](v504);
  v9 = v515;
  v198[-2] = v10;
  v198[-1] = v9;
  v507 = v198;
  MEMORY[0x1EEE9AC00](v8);
  v509 = &v198[-4];
  v198[-2] = sub_1B07AB0F0;
  v198[-1] = v11;
  v511 = type metadata accessor for InProgressMessageDownload.Section();
  v508 = v511;
  v512 = sub_1B07167A8();
  v12 = sub_1B0E44688();
  v513 = v7;
  v514 = v12;
  if (!v7)
  {
    v494 = v514;

    v496 = &unk_1EB737000;
    v493 = (v515 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_sections);
    v495 = &v544;
    v497 = 0;
    swift_beginAccess();
    v13 = *v493;
    *v493 = v494;

    swift_endAccess();
    v498 = (v515 + v496[341]);
    v499 = &v543;
    swift_beginAccess();
    v500 = *v498;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    v501 = MEMORY[0x1B27267E0](v500, &type metadata for SectionSpecifier.Part, v508, v512);

    if (v501)
    {
      (*(v527 + 16))(v532, v524, v525);
      sub_1B0394784(v524, v523);
      sub_1B0394784(v523, v521);
      sub_1B03F4FD0(v523, v519);
      v14 = (v521 + *(v518 + 20));
      v438 = *v14;
      v439 = *(v14 + 1);
      sub_1B039480C(v521);
      v437 = 24;
      v469 = 7;
      v15 = swift_allocObject();
      v16 = v439;
      v449 = v15;
      *(v15 + 16) = v438;
      *(v15 + 20) = v16;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v17 = swift_allocObject();
      v18 = v439;
      v440 = v17;
      *(v17 + 16) = v438;
      *(v17 + 20) = v18;

      v468 = 32;
      v19 = swift_allocObject();
      v20 = v440;
      v460 = v19;
      *(v19 + 16) = sub_1B039BBE8;
      *(v19 + 24) = v20;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v519);

      v21 = swift_allocObject();
      v22 = v515;
      v470 = v21;
      *(v21 + 16) = sub_1B07AAFA4;
      *(v21 + 24) = v22;

      v492 = sub_1B0E43988();
      v441 = v492;
      v491 = sub_1B0E45908();
      v442 = v491;
      v464 = 17;
      v473 = swift_allocObject();
      v443 = v473;
      v452 = 16;
      *(v473 + 16) = 16;
      v474 = swift_allocObject();
      v444 = v474;
      v466 = 4;
      *(v474 + 16) = 4;
      v23 = swift_allocObject();
      v445 = v23;
      *(v23 + 16) = sub_1B0394C30;
      v455 = 0;
      *(v23 + 24) = 0;
      v24 = swift_allocObject();
      v25 = v445;
      v475 = v24;
      v446 = v24;
      *(v24 + 16) = sub_1B0394C24;
      *(v24 + 24) = v25;
      v476 = swift_allocObject();
      v447 = v476;
      v463 = 0;
      *(v476 + 16) = 0;
      v477 = swift_allocObject();
      v448 = v477;
      *(v477 + 16) = 1;
      v26 = swift_allocObject();
      v27 = v449;
      v450 = v26;
      *(v26 + 16) = sub_1B039BA2C;
      *(v26 + 24) = v27;
      v28 = swift_allocObject();
      v29 = v450;
      v478 = v28;
      v451 = v28;
      *(v28 + 16) = sub_1B039BA88;
      *(v28 + 24) = v29;
      v479 = swift_allocObject();
      v453 = v479;
      *(v479 + 16) = v452;
      v480 = swift_allocObject();
      v454 = v480;
      *(v480 + 16) = v466;
      v30 = swift_allocObject();
      v31 = v455;
      v456 = v30;
      *(v30 + 16) = sub_1B039BB94;
      *(v30 + 24) = v31;
      v32 = swift_allocObject();
      v33 = v456;
      v481 = v32;
      v457 = v32;
      *(v32 + 16) = sub_1B0394C24;
      *(v32 + 24) = v33;
      v482 = swift_allocObject();
      v458 = v482;
      *(v482 + 16) = v463;
      v483 = swift_allocObject();
      v459 = v483;
      *(v483 + 16) = v466;
      v34 = swift_allocObject();
      v35 = v460;
      v461 = v34;
      *(v34 + 16) = sub_1B039BBA0;
      *(v34 + 24) = v35;
      v36 = swift_allocObject();
      v37 = v461;
      v484 = v36;
      v462 = v36;
      *(v36 + 16) = sub_1B039BC08;
      *(v36 + 24) = v37;
      v485 = swift_allocObject();
      v465 = v485;
      *(v485 + 16) = v463;
      v486 = swift_allocObject();
      v467 = v486;
      *(v486 + 16) = v466;
      v38 = swift_allocObject();
      v39 = v470;
      v471 = v38;
      *(v38 + 16) = sub_1B07AB020;
      *(v38 + 24) = v39;
      v40 = swift_allocObject();
      v41 = v471;
      v489 = v40;
      v472 = v40;
      *(v40 + 16) = sub_1B039BC08;
      *(v40 + 24) = v41;
      v490 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v487 = sub_1B0E46A48();
      v488 = v42;

      v43 = v473;
      v44 = v488;
      *v488 = sub_1B0398F5C;
      v44[1] = v43;

      v45 = v474;
      v46 = v488;
      v488[2] = sub_1B0398F5C;
      v46[3] = v45;

      v47 = v475;
      v48 = v488;
      v488[4] = sub_1B0399178;
      v48[5] = v47;

      v49 = v476;
      v50 = v488;
      v488[6] = sub_1B0398F5C;
      v50[7] = v49;

      v51 = v477;
      v52 = v488;
      v488[8] = sub_1B0398F5C;
      v52[9] = v51;

      v53 = v478;
      v54 = v488;
      v488[10] = sub_1B039BA94;
      v54[11] = v53;

      v55 = v479;
      v56 = v488;
      v488[12] = sub_1B0398F5C;
      v56[13] = v55;

      v57 = v480;
      v58 = v488;
      v488[14] = sub_1B0398F5C;
      v58[15] = v57;

      v59 = v481;
      v60 = v488;
      v488[16] = sub_1B0399178;
      v60[17] = v59;

      v61 = v482;
      v62 = v488;
      v488[18] = sub_1B0398F5C;
      v62[19] = v61;

      v63 = v483;
      v64 = v488;
      v488[20] = sub_1B0398F5C;
      v64[21] = v63;

      v65 = v484;
      v66 = v488;
      v488[22] = sub_1B03991EC;
      v66[23] = v65;

      v67 = v485;
      v68 = v488;
      v488[24] = sub_1B0398F5C;
      v68[25] = v67;

      v69 = v486;
      v70 = v488;
      v488[26] = sub_1B0398F5C;
      v70[27] = v69;

      v71 = v488;
      v72 = v489;
      v488[28] = sub_1B03991EC;
      v71[29] = v72;
      sub_1B0394964();

      if (os_log_type_enabled(v492, v491))
      {
        v73 = v513;
        v431 = sub_1B0E45D78();
        v427 = v431;
        v428 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v429 = 0;
        v432 = sub_1B03949A8(0);
        v430 = v432;
        v433 = sub_1B03949A8(v429);
        v537 = v431;
        v536 = v432;
        v535 = v433;
        v434 = &v537;
        sub_1B0394A48(0, &v537);
        sub_1B0394A48(5, v434);
        v533 = sub_1B0398F5C;
        v534 = v443;
        sub_1B03949FC(&v533, v434, &v536, &v535);
        v435 = v73;
        v436 = v73;
        if (v73)
        {
          v425 = 0;

          __break(1u);
        }

        else
        {
          v533 = sub_1B0398F5C;
          v534 = v444;
          sub_1B03949FC(&v533, &v537, &v536, &v535);
          v423 = 0;
          v424 = 0;
          v533 = sub_1B0399178;
          v534 = v446;
          sub_1B03949FC(&v533, &v537, &v536, &v535);
          v421 = 0;
          v422 = 0;
          v533 = sub_1B0398F5C;
          v534 = v447;
          sub_1B03949FC(&v533, &v537, &v536, &v535);
          v419 = 0;
          v420 = 0;
          v533 = sub_1B0398F5C;
          v534 = v448;
          sub_1B03949FC(&v533, &v537, &v536, &v535);
          v417 = 0;
          v418 = 0;
          v533 = sub_1B039BA94;
          v534 = v451;
          sub_1B03949FC(&v533, &v537, &v536, &v535);
          v415 = 0;
          v416 = 0;
          v533 = sub_1B0398F5C;
          v534 = v453;
          sub_1B03949FC(&v533, &v537, &v536, &v535);
          v413 = 0;
          v414 = 0;
          v533 = sub_1B0398F5C;
          v534 = v454;
          sub_1B03949FC(&v533, &v537, &v536, &v535);
          v411 = 0;
          v412 = 0;
          v533 = sub_1B0399178;
          v534 = v457;
          sub_1B03949FC(&v533, &v537, &v536, &v535);
          v409 = 0;
          v410 = 0;
          v533 = sub_1B0398F5C;
          v534 = v458;
          sub_1B03949FC(&v533, &v537, &v536, &v535);
          v407 = 0;
          v408 = 0;
          v533 = sub_1B0398F5C;
          v534 = v459;
          sub_1B03949FC(&v533, &v537, &v536, &v535);
          v405 = 0;
          v406 = 0;
          v533 = sub_1B03991EC;
          v534 = v462;
          sub_1B03949FC(&v533, &v537, &v536, &v535);
          v403 = 0;
          v404 = 0;
          v533 = sub_1B0398F5C;
          v534 = v465;
          sub_1B03949FC(&v533, &v537, &v536, &v535);
          v401 = 0;
          v402 = 0;
          v533 = sub_1B0398F5C;
          v534 = v467;
          sub_1B03949FC(&v533, &v537, &v536, &v535);
          v399 = 0;
          v400 = 0;
          v533 = sub_1B03991EC;
          v534 = v472;
          sub_1B03949FC(&v533, &v537, &v536, &v535);
          v397 = 0;
          v398 = 0;
          _os_log_impl(&dword_1B0389000, v441, v442, "[%.*hhx-%.*X] Mailbox was de-selected while download was in-progress for UID %u. Tearing down.", v427, 0x1Du);
          v396 = 0;
          sub_1B03998A8(v430);
          sub_1B03998A8(v433);
          sub_1B0E45D58();

          v426 = v397;
        }
      }

      else
      {
        v74 = v513;

        v426 = v74;
      }

      v393 = v426;

      (*(v527 + 8))(v532, v525);
      sub_1B0760080();
      v394 = 1;
      v395 = v393;
    }

    else
    {
      (*(v527 + 16))(v530, v524, v525);
      sub_1B0394784(v524, v523);
      sub_1B0394784(v523, v521);
      sub_1B03F4FD0(v523, v519);
      v75 = (v521 + *(v518 + 20));
      v338 = *v75;
      v339 = *(v75 + 1);
      sub_1B039480C(v521);
      v337 = 24;
      v369 = 7;
      v76 = swift_allocObject();
      v77 = v339;
      v349 = v76;
      *(v76 + 16) = v338;
      *(v76 + 20) = v77;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v78 = swift_allocObject();
      v79 = v339;
      v340 = v78;
      *(v78 + 16) = v338;
      *(v78 + 20) = v79;

      v368 = 32;
      v80 = swift_allocObject();
      v81 = v340;
      v360 = v80;
      *(v80 + 16) = sub_1B039BBE8;
      *(v80 + 24) = v81;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v519);

      v82 = swift_allocObject();
      v83 = v515;
      v370 = v82;
      *(v82 + 16) = sub_1B07AAFA4;
      *(v82 + 24) = v83;

      v392 = sub_1B0E43988();
      v341 = v392;
      v391 = sub_1B0E45908();
      v342 = v391;
      v364 = 17;
      v373 = swift_allocObject();
      v343 = v373;
      v352 = 16;
      *(v373 + 16) = 16;
      v374 = swift_allocObject();
      v344 = v374;
      v366 = 4;
      *(v374 + 16) = 4;
      v84 = swift_allocObject();
      v345 = v84;
      *(v84 + 16) = sub_1B0394C30;
      v355 = 0;
      *(v84 + 24) = 0;
      v85 = swift_allocObject();
      v86 = v345;
      v375 = v85;
      v346 = v85;
      *(v85 + 16) = sub_1B0394C24;
      *(v85 + 24) = v86;
      v376 = swift_allocObject();
      v347 = v376;
      v363 = 0;
      *(v376 + 16) = 0;
      v377 = swift_allocObject();
      v348 = v377;
      *(v377 + 16) = 1;
      v87 = swift_allocObject();
      v88 = v349;
      v350 = v87;
      *(v87 + 16) = sub_1B039BA2C;
      *(v87 + 24) = v88;
      v89 = swift_allocObject();
      v90 = v350;
      v378 = v89;
      v351 = v89;
      *(v89 + 16) = sub_1B039BA88;
      *(v89 + 24) = v90;
      v379 = swift_allocObject();
      v353 = v379;
      *(v379 + 16) = v352;
      v380 = swift_allocObject();
      v354 = v380;
      *(v380 + 16) = v366;
      v91 = swift_allocObject();
      v92 = v355;
      v356 = v91;
      *(v91 + 16) = sub_1B039BB94;
      *(v91 + 24) = v92;
      v93 = swift_allocObject();
      v94 = v356;
      v381 = v93;
      v357 = v93;
      *(v93 + 16) = sub_1B0394C24;
      *(v93 + 24) = v94;
      v382 = swift_allocObject();
      v358 = v382;
      *(v382 + 16) = v363;
      v383 = swift_allocObject();
      v359 = v383;
      *(v383 + 16) = v366;
      v95 = swift_allocObject();
      v96 = v360;
      v361 = v95;
      *(v95 + 16) = sub_1B039BBA0;
      *(v95 + 24) = v96;
      v97 = swift_allocObject();
      v98 = v361;
      v384 = v97;
      v362 = v97;
      *(v97 + 16) = sub_1B039BC08;
      *(v97 + 24) = v98;
      v385 = swift_allocObject();
      v365 = v385;
      *(v385 + 16) = v363;
      v386 = swift_allocObject();
      v367 = v386;
      *(v386 + 16) = v366;
      v99 = swift_allocObject();
      v100 = v370;
      v371 = v99;
      *(v99 + 16) = sub_1B07AB020;
      *(v99 + 24) = v100;
      v101 = swift_allocObject();
      v102 = v371;
      v389 = v101;
      v372 = v101;
      *(v101 + 16) = sub_1B039BC08;
      *(v101 + 24) = v102;
      v390 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v387 = sub_1B0E46A48();
      v388 = v103;

      v104 = v373;
      v105 = v388;
      *v388 = sub_1B0398F5C;
      v105[1] = v104;

      v106 = v374;
      v107 = v388;
      v388[2] = sub_1B0398F5C;
      v107[3] = v106;

      v108 = v375;
      v109 = v388;
      v388[4] = sub_1B0399178;
      v109[5] = v108;

      v110 = v376;
      v111 = v388;
      v388[6] = sub_1B0398F5C;
      v111[7] = v110;

      v112 = v377;
      v113 = v388;
      v388[8] = sub_1B0398F5C;
      v113[9] = v112;

      v114 = v378;
      v115 = v388;
      v388[10] = sub_1B039BA94;
      v115[11] = v114;

      v116 = v379;
      v117 = v388;
      v388[12] = sub_1B0398F5C;
      v117[13] = v116;

      v118 = v380;
      v119 = v388;
      v388[14] = sub_1B0398F5C;
      v119[15] = v118;

      v120 = v381;
      v121 = v388;
      v388[16] = sub_1B0399178;
      v121[17] = v120;

      v122 = v382;
      v123 = v388;
      v388[18] = sub_1B0398F5C;
      v123[19] = v122;

      v124 = v383;
      v125 = v388;
      v388[20] = sub_1B0398F5C;
      v125[21] = v124;

      v126 = v384;
      v127 = v388;
      v388[22] = sub_1B03991EC;
      v127[23] = v126;

      v128 = v385;
      v129 = v388;
      v388[24] = sub_1B0398F5C;
      v129[25] = v128;

      v130 = v386;
      v131 = v388;
      v388[26] = sub_1B0398F5C;
      v131[27] = v130;

      v132 = v388;
      v133 = v389;
      v388[28] = sub_1B03991EC;
      v132[29] = v133;
      sub_1B0394964();

      if (os_log_type_enabled(v392, v391))
      {
        v134 = v513;
        v331 = sub_1B0E45D78();
        v327 = v331;
        v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v329 = 0;
        v332 = sub_1B03949A8(0);
        v330 = v332;
        v333 = sub_1B03949A8(v329);
        v542 = v331;
        v541 = v332;
        v540 = v333;
        v334 = &v542;
        sub_1B0394A48(0, &v542);
        sub_1B0394A48(5, v334);
        v538 = sub_1B0398F5C;
        v539 = v343;
        sub_1B03949FC(&v538, v334, &v541, &v540);
        v335 = v134;
        v336 = v134;
        if (v134)
        {
          v325 = 0;

          __break(1u);
        }

        else
        {
          v538 = sub_1B0398F5C;
          v539 = v344;
          sub_1B03949FC(&v538, &v542, &v541, &v540);
          v323 = 0;
          v324 = 0;
          v538 = sub_1B0399178;
          v539 = v346;
          sub_1B03949FC(&v538, &v542, &v541, &v540);
          v321 = 0;
          v322 = 0;
          v538 = sub_1B0398F5C;
          v539 = v347;
          sub_1B03949FC(&v538, &v542, &v541, &v540);
          v319 = 0;
          v320 = 0;
          v538 = sub_1B0398F5C;
          v539 = v348;
          sub_1B03949FC(&v538, &v542, &v541, &v540);
          v317 = 0;
          v318 = 0;
          v538 = sub_1B039BA94;
          v539 = v351;
          sub_1B03949FC(&v538, &v542, &v541, &v540);
          v315 = 0;
          v316 = 0;
          v538 = sub_1B0398F5C;
          v539 = v353;
          sub_1B03949FC(&v538, &v542, &v541, &v540);
          v313 = 0;
          v314 = 0;
          v538 = sub_1B0398F5C;
          v539 = v354;
          sub_1B03949FC(&v538, &v542, &v541, &v540);
          v311 = 0;
          v312 = 0;
          v538 = sub_1B0399178;
          v539 = v357;
          sub_1B03949FC(&v538, &v542, &v541, &v540);
          v309 = 0;
          v310 = 0;
          v538 = sub_1B0398F5C;
          v539 = v358;
          sub_1B03949FC(&v538, &v542, &v541, &v540);
          v307 = 0;
          v308 = 0;
          v538 = sub_1B0398F5C;
          v539 = v359;
          sub_1B03949FC(&v538, &v542, &v541, &v540);
          v305 = 0;
          v306 = 0;
          v538 = sub_1B03991EC;
          v539 = v362;
          sub_1B03949FC(&v538, &v542, &v541, &v540);
          v303 = 0;
          v304 = 0;
          v538 = sub_1B0398F5C;
          v539 = v365;
          sub_1B03949FC(&v538, &v542, &v541, &v540);
          v301 = 0;
          v302 = 0;
          v538 = sub_1B0398F5C;
          v539 = v367;
          sub_1B03949FC(&v538, &v542, &v541, &v540);
          v299 = 0;
          v300 = 0;
          v538 = sub_1B03991EC;
          v539 = v372;
          sub_1B03949FC(&v538, &v542, &v541, &v540);
          v297 = 0;
          v298 = 0;
          _os_log_impl(&dword_1B0389000, v341, v342, "[%.*hhx-%.*X] Mailbox was de-selected while download was in-progress for UID %u. Waiting for file writer(s) to complete.", v327, 0x1Du);
          v296 = 0;
          sub_1B03998A8(v330);
          sub_1B03998A8(v333);
          sub_1B0E45D58();

          v326 = v297;
        }
      }

      else
      {
        v135 = v513;

        v326 = v135;
      }

      v295 = v326;

      (*(v527 + 8))(v530, v525);
      v394 = 0;
      v395 = v295;
    }

    return v394 & 1;
  }

  __break(1u);
  return result;
}

BOOL sub_1B0765644()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_passAndActionID);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 != 2;
}

uint64_t sub_1B07656DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v165 = a1;
  v168 = a2;
  v166 = a3;
  v167 = a4;
  v124 = sub_1B039BBE8;
  v125 = sub_1B07AAFA4;
  v126 = sub_1B0394C30;
  v127 = sub_1B0394C24;
  v128 = sub_1B039BA2C;
  v129 = sub_1B039BA88;
  v130 = sub_1B039BB94;
  v131 = sub_1B0394C24;
  v132 = sub_1B039BBA0;
  v133 = sub_1B039BC08;
  v134 = sub_1B07AB020;
  v135 = sub_1B039BC08;
  v136 = sub_1B0398F5C;
  v137 = sub_1B0398F5C;
  v138 = sub_1B0399178;
  v139 = sub_1B0398F5C;
  v140 = sub_1B0398F5C;
  v141 = sub_1B039BA94;
  v142 = sub_1B0398F5C;
  v143 = sub_1B0398F5C;
  v144 = sub_1B0399178;
  v145 = sub_1B0398F5C;
  v146 = sub_1B0398F5C;
  v147 = sub_1B03991EC;
  v148 = sub_1B0398F5C;
  v149 = sub_1B0398F5C;
  v150 = sub_1B03991EC;
  v182 = 0;
  v181 = 0;
  v180 = 0;
  v179 = 0;
  v178 = 0;
  v151 = 0;
  v159 = 0;
  v152 = _s6LoggerVMa();
  v153 = (*(*(v152 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](0);
  v154 = v73 - v153;
  v155 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v156 = v73 - v155;
  v157 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v158 = v73 - v157;
  v160 = sub_1B0E439A8();
  v161 = *(v160 - 8);
  v162 = v160 - 8;
  v163 = (*(v161 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v159);
  v164 = v73 - v163;
  v170 = type metadata accessor for InProgressMessageDownload.Section();
  v169 = (*(*(v170 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v168);
  v171 = (v73 - v169);
  v182 = v9;
  v181 = v8;
  v180 = v10;
  v179 = v11;
  sub_1B0760600(v8, (v73 - v169));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B07AC2FC(v171);
      goto LABEL_7;
    }

    if (EnumCaseMultiPayload != 2)
    {
      v12 = *v171;
      v120 = v171[2];
      v121 = v171[4];
      v122 = v171[6];

LABEL_7:
      v123 = 1;
      return v123 & 1;
    }

    v119 = *v171;
    v178 = v119;
    if ((sub_1B0759C14() & 1) == 0)
    {
      (*(v161 + 16))(v164, v166, v160);
      sub_1B0394784(v166, v158);
      sub_1B0394784(v158, v156);
      sub_1B03F4FD0(v158, v154);
      v13 = (v156 + *(v152 + 20));
      v83 = *v13;
      v84 = *(v13 + 1);
      sub_1B039480C(v156);
      v82 = 24;
      v96 = 7;
      v14 = swift_allocObject();
      v15 = v84;
      v87 = v14;
      *(v14 + 16) = v83;
      *(v14 + 20) = v15;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v16 = swift_allocObject();
      v17 = v84;
      v85 = v16;
      *(v16 + 16) = v83;
      *(v16 + 20) = v17;

      v95 = 32;
      v18 = swift_allocObject();
      v19 = v85;
      v91 = v18;
      *(v18 + 16) = v124;
      *(v18 + 24) = v19;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v154);

      v20 = swift_allocObject();
      v21 = v167;
      v97 = v20;
      *(v20 + 16) = v125;
      *(v20 + 24) = v21;

      v117 = sub_1B0E43988();
      v118 = sub_1B0E45908();
      v93 = 17;
      v99 = swift_allocObject();
      v89 = 16;
      *(v99 + 16) = 16;
      v100 = swift_allocObject();
      v94 = 4;
      *(v100 + 16) = 4;
      v22 = swift_allocObject();
      v86 = v22;
      *(v22 + 16) = v126;
      *(v22 + 24) = 0;
      v23 = swift_allocObject();
      v24 = v86;
      v101 = v23;
      *(v23 + 16) = v127;
      *(v23 + 24) = v24;
      v102 = swift_allocObject();
      *(v102 + 16) = 0;
      v103 = swift_allocObject();
      *(v103 + 16) = 1;
      v25 = swift_allocObject();
      v26 = v87;
      v88 = v25;
      *(v25 + 16) = v128;
      *(v25 + 24) = v26;
      v27 = swift_allocObject();
      v28 = v88;
      v104 = v27;
      *(v27 + 16) = v129;
      *(v27 + 24) = v28;
      v105 = swift_allocObject();
      *(v105 + 16) = v89;
      v106 = swift_allocObject();
      *(v106 + 16) = v94;
      v29 = swift_allocObject();
      v90 = v29;
      *(v29 + 16) = v130;
      *(v29 + 24) = 0;
      v30 = swift_allocObject();
      v31 = v90;
      v107 = v30;
      *(v30 + 16) = v131;
      *(v30 + 24) = v31;
      v108 = swift_allocObject();
      *(v108 + 16) = 0;
      v109 = swift_allocObject();
      *(v109 + 16) = v94;
      v32 = swift_allocObject();
      v33 = v91;
      v92 = v32;
      *(v32 + 16) = v132;
      *(v32 + 24) = v33;
      v34 = swift_allocObject();
      v35 = v92;
      v110 = v34;
      *(v34 + 16) = v133;
      *(v34 + 24) = v35;
      v111 = swift_allocObject();
      *(v111 + 16) = 0;
      v112 = swift_allocObject();
      *(v112 + 16) = v94;
      v36 = swift_allocObject();
      v37 = v97;
      v98 = v36;
      *(v36 + 16) = v134;
      *(v36 + 24) = v37;
      v38 = swift_allocObject();
      v39 = v98;
      v114 = v38;
      *(v38 + 16) = v135;
      *(v38 + 24) = v39;
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v113 = sub_1B0E46A48();
      v115 = v40;

      v41 = v99;
      v42 = v115;
      *v115 = v136;
      v42[1] = v41;

      v43 = v100;
      v44 = v115;
      v115[2] = v137;
      v44[3] = v43;

      v45 = v101;
      v46 = v115;
      v115[4] = v138;
      v46[5] = v45;

      v47 = v102;
      v48 = v115;
      v115[6] = v139;
      v48[7] = v47;

      v49 = v103;
      v50 = v115;
      v115[8] = v140;
      v50[9] = v49;

      v51 = v104;
      v52 = v115;
      v115[10] = v141;
      v52[11] = v51;

      v53 = v105;
      v54 = v115;
      v115[12] = v142;
      v54[13] = v53;

      v55 = v106;
      v56 = v115;
      v115[14] = v143;
      v56[15] = v55;

      v57 = v107;
      v58 = v115;
      v115[16] = v144;
      v58[17] = v57;

      v59 = v108;
      v60 = v115;
      v115[18] = v145;
      v60[19] = v59;

      v61 = v109;
      v62 = v115;
      v115[20] = v146;
      v62[21] = v61;

      v63 = v110;
      v64 = v115;
      v115[22] = v147;
      v64[23] = v63;

      v65 = v111;
      v66 = v115;
      v115[24] = v148;
      v66[25] = v65;

      v67 = v112;
      v68 = v115;
      v115[26] = v149;
      v68[27] = v67;

      v69 = v114;
      v70 = v115;
      v115[28] = v150;
      v70[29] = v69;
      sub_1B0394964();

      if (os_log_type_enabled(v117, v118))
      {
        v71 = v151;
        v75 = sub_1B0E45D78();
        v73[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v74 = 0;
        v76 = sub_1B03949A8(0);
        v77 = sub_1B03949A8(v74);
        v78 = &v177;
        v177 = v75;
        v79 = &v176;
        v176 = v76;
        v80 = &v175;
        v175 = v77;
        sub_1B0394A48(0, &v177);
        sub_1B0394A48(5, v78);
        v173 = v136;
        v174 = v99;
        sub_1B03949FC(&v173, v78, v79, v80);
        v81 = v71;
        if (v71)
        {

          __break(1u);
        }

        else
        {
          v173 = v137;
          v174 = v100;
          sub_1B03949FC(&v173, &v177, &v176, &v175);
          v73[13] = 0;
          v173 = v138;
          v174 = v101;
          sub_1B03949FC(&v173, &v177, &v176, &v175);
          v73[12] = 0;
          v173 = v139;
          v174 = v102;
          sub_1B03949FC(&v173, &v177, &v176, &v175);
          v73[11] = 0;
          v173 = v140;
          v174 = v103;
          sub_1B03949FC(&v173, &v177, &v176, &v175);
          v73[10] = 0;
          v173 = v141;
          v174 = v104;
          sub_1B03949FC(&v173, &v177, &v176, &v175);
          v73[9] = 0;
          v173 = v142;
          v174 = v105;
          sub_1B03949FC(&v173, &v177, &v176, &v175);
          v73[8] = 0;
          v173 = v143;
          v174 = v106;
          sub_1B03949FC(&v173, &v177, &v176, &v175);
          v73[7] = 0;
          v173 = v144;
          v174 = v107;
          sub_1B03949FC(&v173, &v177, &v176, &v175);
          v73[6] = 0;
          v173 = v145;
          v174 = v108;
          sub_1B03949FC(&v173, &v177, &v176, &v175);
          v73[5] = 0;
          v173 = v146;
          v174 = v109;
          sub_1B03949FC(&v173, &v177, &v176, &v175);
          v73[4] = 0;
          v173 = v147;
          v174 = v110;
          sub_1B03949FC(&v173, &v177, &v176, &v175);
          v73[3] = 0;
          v173 = v148;
          v174 = v111;
          sub_1B03949FC(&v173, &v177, &v176, &v175);
          v73[2] = 0;
          v173 = v149;
          v174 = v112;
          sub_1B03949FC(&v173, &v177, &v176, &v175);
          v73[1] = 0;
          v173 = v150;
          v174 = v114;
          sub_1B03949FC(&v173, &v177, &v176, &v175);
          _os_log_impl(&dword_1B0389000, v117, v118, "[%.*hhx-%.*X] Failing in-progress attachment download for UID %u.", v75, 0x1Du);
          v73[0] = 0;
          sub_1B03998A8(v76);
          sub_1B03998A8(v77);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v117);
      (*(v161 + 8))(v164, v160);
    }

    v123 = 1;
  }

  else
  {
    sub_1B07AE888(v171);
    v123 = 0;
  }

  return v123 & 1;
}

uint64_t sub_1B0766EFC(void *a1)
{
  v18 = a1;
  v33 = 0;
  v32 = 0;
  v16 = 0;
  v19 = type metadata accessor for MessageSectionData.Segment(0);
  v15 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = &v4 - v15;
  v32 = MEMORY[0x1EEE9AC00](v18);
  v17 = sub_1B075FC90(*(v32 + 12), 0);

  v33 = v17;
  v1 = type metadata accessor for MessageSectionData(v16);
  sub_1B07AB12C(v18 + *(v1 + 28), v20);
  v2 = (v20 + *(v19 + 24));
  v21 = v35;
  v22 = 177;
  memcpy(v35, v2, 0xB1uLL);
  sub_1B07AB440(v35, v31);
  sub_1B07AB694(v20);
  v23 = __dst;
  memcpy(__dst, v21, v22);
  if (sub_1B07AB810(v23) == 1)
  {
    v14 = v30;
    sub_1B075FEBC(v30);
    memcpy(v34, v14, sizeof(v34));
  }

  else
  {
    v13 = __dst;
    sub_1B075DC38(__dst, v24);
    sub_1B075E728(v13);
    memcpy(v34, v13, sizeof(v34));
  }

  v12 = v29;
  memcpy(v29, v34, 0xB1uLL);
  if (sub_1B075FACC(v29) != 1)
  {
    v5 = v33;
    v11 = v29;
    sub_1B07169CC(v29, &v26);
    v7 = v27;
    v8 = 177;
    memcpy(v27, v11, 0xB1uLL);
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v27);
    v6 = (v5 + 24);
    v10 = &v25;
    swift_beginAccess();
    v9 = v28;
    memcpy(v28, v6, v8);
    memcpy(v6, v7, v8);
    sub_1B075E728(v9);
    swift_endAccess();
    sub_1B075E648(v11);
  }

  sub_1B07AB910(v18);

  return v17;
}

BOOL sub_1B0767178(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
      return a1 == a4;
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  return a1 == a4 && a2 == a5;
}

uint64_t sub_1B076735C(unsigned __int8 *a1)
{
  sub_1B075DC38(a1, v4);
  sub_1B075DEC8(a1, (v1 + 8));
  return sub_1B075E728(a1);
}

uint64_t sub_1B07673D0(uint64_t a1)
{
  v7 = a1;
  v5[1] = 0;
  v5[0] = (*(*(_s31PreviouslyDownloadedMessageDataVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v7);
  v6 = v5 - v5[0];
  sub_1B075E87C(v2, v5 - v5[0]);
  v3 = type metadata accessor for InProgressMessageDownload.Completed();
  sub_1B075EA98(v6, (v1 + *(v3 + 24)));
  return sub_1B075ECD0(v7);
}

uint64_t sub_1B07674B0(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26F0, &unk_1B0E9B4F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  sub_1B075EE10(v2, &v5 - v6);
  v3 = type metadata accessor for InProgressMessageDownload.Completed();
  sub_1B075F010(v7, (v1 + *(v3 + 28)));
  return sub_1B075F220(v8);
}

uint64_t sub_1B0767584(uint64_t a1)
{
  v2 = type metadata accessor for InProgressMessageDownload.Completed();
  result = a1;
  *(v1 + *(v2 + 32)) = a1;
  return result;
}

uint64_t sub_1B07675BC()
{
  v2 = *(v0 + *(type metadata accessor for InProgressMessageDownload.Completed() + 36));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B07675F4(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = (v1 + *(type metadata accessor for InProgressMessageDownload.Completed() + 36));
  v3 = *v2;
  *v2 = a1;
}

uint64_t sub_1B0767640()
{
  v2 = *(v0 + *(type metadata accessor for InProgressMessageDownload.Completed() + 40));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B0767678(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = (v1 + *(type metadata accessor for InProgressMessageDownload.Completed() + 40));
  v3 = *v2;
  *v2 = a1;
}

uint64_t sub_1B07676FC(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  sub_1B075F4A8(v2, &v5 - v6);
  v3 = type metadata accessor for InProgressMessageDownload.Completed();
  sub_1B075F6A0(v7, (v1 + *(v3 + 44)));
  return sub_1B075B1E0(v8);
}

uint64_t sub_1B07677D8(char a1, int a2)
{
  LOBYTE(v3) = a1 & 1;
  HIDWORD(v3) = a2;
  return v3;
}

void *sub_1B07677F4@<X0>(int a1@<W0>, const void *a2@<X1>, char *a3@<X2>, const void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, const void *a8@<X7>, char *a9@<X8>)
{
  *a9 = a1;
  memcpy(a9 + 8, a2, 0xB1uLL);
  v15 = type metadata accessor for InProgressMessageDownload.Completed();
  sub_1B07B48B8(a3, &a9[v15[6]]);
  sub_1B07B4A00(a4, &a9[v15[7]]);
  *&a9[v15[8]] = a5;
  *&a9[v15[9]] = a6;
  *&a9[v15[10]] = a7;
  return sub_1B07B4B30(a8, &a9[v15[11]]);
}

uint64_t sub_1B07678B8(uint64_t a1)
{
  v575 = a1;
  v574 = 0;
  v456 = sub_1B074E050;
  v457 = sub_1B0394C30;
  v458 = sub_1B0394C24;
  v459 = sub_1B074DFFC;
  v460 = sub_1B039BA88;
  v461 = sub_1B039BB94;
  v462 = sub_1B0394C24;
  v463 = sub_1B039BBA0;
  v464 = sub_1B039BC08;
  v465 = 0x786F626C69616DLL;
  v466 = sub_1B06BA324;
  v467 = sub_1B074E0E4;
  v468 = sub_1B039BCF8;
  v469 = sub_1B0398F5C;
  v470 = sub_1B0398F5C;
  v471 = sub_1B0399178;
  v472 = sub_1B0398F5C;
  v473 = sub_1B0398F5C;
  v474 = sub_1B039BA94;
  v475 = sub_1B0398F5C;
  v476 = sub_1B0398F5C;
  v477 = sub_1B0399178;
  v478 = sub_1B0398F5C;
  v479 = sub_1B0398F5C;
  v480 = sub_1B03991EC;
  v481 = sub_1B0398F5C;
  v482 = sub_1B0398F5C;
  v483 = sub_1B03993BC;
  v484 = sub_1B0398F5C;
  v485 = sub_1B0398F5C;
  v486 = sub_1B039BCEC;
  v487 = sub_1B074E050;
  v488 = sub_1B0394C24;
  v489 = sub_1B074DFFC;
  v490 = sub_1B039BA88;
  v491 = sub_1B0394C24;
  v492 = sub_1B039BBA0;
  v493 = sub_1B039BC08;
  v494 = sub_1B06BA324;
  v495 = sub_1B074E0E4;
  v496 = sub_1B039BCF8;
  v497 = sub_1B0398F5C;
  v498 = sub_1B0398F5C;
  v499 = sub_1B0399178;
  v500 = sub_1B0398F5C;
  v501 = sub_1B0398F5C;
  v502 = sub_1B039BA94;
  v503 = sub_1B0398F5C;
  v504 = sub_1B0398F5C;
  v505 = sub_1B0399178;
  v506 = sub_1B0398F5C;
  v507 = sub_1B0398F5C;
  v508 = sub_1B03991EC;
  v509 = sub_1B0398F5C;
  v510 = sub_1B0398F5C;
  v511 = sub_1B03993BC;
  v512 = sub_1B0398F5C;
  v513 = sub_1B0398F5C;
  v514 = sub_1B039BCEC;
  v515 = sub_1B074E050;
  v516 = sub_1B0394C24;
  v517 = sub_1B074DFFC;
  v518 = sub_1B039BA88;
  v519 = sub_1B0394C24;
  v520 = sub_1B039BBA0;
  v521 = sub_1B039BC08;
  v522 = sub_1B06BA324;
  v523 = sub_1B074E0E4;
  v524 = sub_1B039BCF8;
  v525 = sub_1B0398F5C;
  v526 = sub_1B0398F5C;
  v527 = sub_1B0399178;
  v528 = sub_1B0398F5C;
  v529 = sub_1B0398F5C;
  v530 = sub_1B039BA94;
  v531 = sub_1B0398F5C;
  v532 = sub_1B0398F5C;
  v533 = sub_1B0399178;
  v534 = sub_1B0398F5C;
  v535 = sub_1B0398F5C;
  v536 = sub_1B03991EC;
  v537 = sub_1B0398F5C;
  v538 = sub_1B0398F5C;
  v539 = sub_1B03993BC;
  v540 = sub_1B0398F5C;
  v541 = sub_1B0398F5C;
  v542 = sub_1B039BCEC;
  v543 = 0xF000000000000000;
  v607 = 0;
  v606 = 0;
  v605 = 0;
  v604 = 0;
  v544 = 0;
  v595 = 0;
  v571 = 0;
  v545 = _s6LoggerVMa_1();
  v546 = (*(*(v545 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](0);
  v547 = v249 - v546;
  v548 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v549 = v249 - v548;
  v550 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v551 = v249 - v550;
  v552 = sub_1B0E439A8();
  v553 = *(v552 - 8);
  v554 = v552 - 8;
  v555 = (*(v553 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v571);
  v556 = v249 - v555;
  v557 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v558 = v249 - v557;
  v559 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v560 = v249 - v559;
  v561 = sub_1B0E443C8();
  v562 = *(v561 - 8);
  v563 = v561 - 8;
  v564 = (*(v562 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v571);
  v565 = v249 - v564;
  v566 = type metadata accessor for MessageSectionDataConcatenator.CompleteSection();
  v567 = (*(*(v566 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v566);
  v568 = v249 - v567;
  v607 = v249 - v567;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20A0, &qword_1B0E9B528);
  v569 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v570 = (v249 - v569);
  v572 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20A8, &qword_1B0E9B530) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v571);
  v573 = (v249 - v572);
  v582 = type metadata accessor for InProgressMessageDownload.Section();
  v576 = (*(*(v582 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v575);
  v577 = (v249 - v576);
  v578 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v579 = (v249 - v578);
  v606 = v249 - v578;
  v605 = v13;
  v604 = v1;
  v580 = (v1 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_sections);
  v581 = &v603;
  swift_beginAccess();
  v583 = *v580;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  sub_1B07167A8();
  v584 = sub_1B0E44628();

  if (v584 != 1)
  {
LABEL_22:
    (*(v553 + 16))(v556, v575, v552);
    sub_1B074B69C(v575, v551);
    sub_1B074B69C(v551, v549);
    sub_1B074E41C(v551, v547);
    v173 = (v549 + *(v545 + 20));
    v259 = *v173;
    v260 = *(v173 + 1);
    v261 = *(v173 + 1);
    v262 = *(v173 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v549);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v258 = 36;
    v275 = 7;
    v174 = swift_allocObject();
    v175 = v260;
    v176 = v261;
    v177 = v262;
    v264 = v174;
    *(v174 + 16) = v259;
    *(v174 + 20) = v175;
    *(v174 + 24) = v176;
    *(v174 + 32) = v177;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v178 = swift_allocObject();
    v179 = v260;
    v180 = v261;
    v181 = v262;
    v257 = v178;
    *(v178 + 16) = v259;
    *(v178 + 20) = v179;
    *(v178 + 24) = v180;
    *(v178 + 32) = v181;

    v274 = 32;
    v182 = swift_allocObject();
    v183 = v257;
    v269 = v182;
    *(v182 + 16) = v456;
    *(v182 + 24) = v183;
    sub_1B0394868();
    sub_1B0394868();

    v184 = swift_allocObject();
    v185 = v260;
    v186 = v261;
    v187 = v262;
    v188 = v184;
    v189 = v547;
    v276 = v188;
    *(v188 + 16) = v259;
    *(v188 + 20) = v185;
    *(v188 + 24) = v186;
    *(v188 + 32) = v187;
    sub_1B074B764(v189);
    v299 = sub_1B0E43988();
    v300 = sub_1B0E45908();
    v272 = 17;
    v278 = swift_allocObject();
    v266 = 16;
    *(v278 + 16) = 16;
    v279 = swift_allocObject();
    v268 = 4;
    *(v279 + 16) = 4;
    v190 = swift_allocObject();
    v263 = v190;
    *(v190 + 16) = v457;
    *(v190 + 24) = 0;
    v191 = swift_allocObject();
    v192 = v263;
    v280 = v191;
    *(v191 + 16) = v458;
    *(v191 + 24) = v192;
    v281 = swift_allocObject();
    *(v281 + 16) = 0;
    v282 = swift_allocObject();
    *(v282 + 16) = 1;
    v193 = swift_allocObject();
    v194 = v264;
    v265 = v193;
    *(v193 + 16) = v459;
    *(v193 + 24) = v194;
    v195 = swift_allocObject();
    v196 = v265;
    v283 = v195;
    *(v195 + 16) = v460;
    *(v195 + 24) = v196;
    v284 = swift_allocObject();
    *(v284 + 16) = v266;
    v285 = swift_allocObject();
    *(v285 + 16) = v268;
    v197 = swift_allocObject();
    v267 = v197;
    *(v197 + 16) = v461;
    *(v197 + 24) = 0;
    v198 = swift_allocObject();
    v199 = v267;
    v286 = v198;
    *(v198 + 16) = v462;
    *(v198 + 24) = v199;
    v287 = swift_allocObject();
    *(v287 + 16) = 0;
    v288 = swift_allocObject();
    *(v288 + 16) = v268;
    v200 = swift_allocObject();
    v201 = v269;
    v270 = v200;
    *(v200 + 16) = v463;
    *(v200 + 24) = v201;
    v202 = swift_allocObject();
    v203 = v270;
    v289 = v202;
    *(v202 + 16) = v464;
    *(v202 + 24) = v203;
    v290 = swift_allocObject();
    *(v290 + 16) = 112;
    v291 = swift_allocObject();
    v273 = 8;
    *(v291 + 16) = 8;
    v271 = swift_allocObject();
    *(v271 + 16) = v465;
    v204 = swift_allocObject();
    v205 = v271;
    v292 = v204;
    *(v204 + 16) = v466;
    *(v204 + 24) = v205;
    v293 = swift_allocObject();
    *(v293 + 16) = 37;
    v294 = swift_allocObject();
    *(v294 + 16) = v273;
    v206 = swift_allocObject();
    v207 = v276;
    v277 = v206;
    *(v206 + 16) = v467;
    *(v206 + 24) = v207;
    v208 = swift_allocObject();
    v209 = v277;
    v296 = v208;
    *(v208 + 16) = v468;
    *(v208 + 24) = v209;
    v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v295 = sub_1B0E46A48();
    v297 = v210;

    v211 = v278;
    v212 = v297;
    *v297 = v469;
    v212[1] = v211;

    v213 = v279;
    v214 = v297;
    v297[2] = v470;
    v214[3] = v213;

    v215 = v280;
    v216 = v297;
    v297[4] = v471;
    v216[5] = v215;

    v217 = v281;
    v218 = v297;
    v297[6] = v472;
    v218[7] = v217;

    v219 = v282;
    v220 = v297;
    v297[8] = v473;
    v220[9] = v219;

    v221 = v283;
    v222 = v297;
    v297[10] = v474;
    v222[11] = v221;

    v223 = v284;
    v224 = v297;
    v297[12] = v475;
    v224[13] = v223;

    v225 = v285;
    v226 = v297;
    v297[14] = v476;
    v226[15] = v225;

    v227 = v286;
    v228 = v297;
    v297[16] = v477;
    v228[17] = v227;

    v229 = v287;
    v230 = v297;
    v297[18] = v478;
    v230[19] = v229;

    v231 = v288;
    v232 = v297;
    v297[20] = v479;
    v232[21] = v231;

    v233 = v289;
    v234 = v297;
    v297[22] = v480;
    v234[23] = v233;

    v235 = v290;
    v236 = v297;
    v297[24] = v481;
    v236[25] = v235;

    v237 = v291;
    v238 = v297;
    v297[26] = v482;
    v238[27] = v237;

    v239 = v292;
    v240 = v297;
    v297[28] = v483;
    v240[29] = v239;

    v241 = v293;
    v242 = v297;
    v297[30] = v484;
    v242[31] = v241;

    v243 = v294;
    v244 = v297;
    v297[32] = v485;
    v244[33] = v243;

    v245 = v296;
    v246 = v297;
    v297[34] = v486;
    v246[35] = v245;
    sub_1B0394964();

    if (os_log_type_enabled(v299, v300))
    {
      v247 = v544;
      v250 = sub_1B0E45D78();
      v249[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v251 = sub_1B03949A8(0);
      v252 = sub_1B03949A8(1);
      v253 = &v602;
      v602 = v250;
      v254 = &v601;
      v601 = v251;
      v255 = &v600;
      v600 = v252;
      sub_1B0394A48(3, &v602);
      sub_1B0394A48(6, v253);
      v598 = v469;
      v599 = v278;
      sub_1B03949FC(&v598, v253, v254, v255);
      v256 = v247;
      if (v247)
      {

        __break(1u);
      }

      else
      {
        v598 = v470;
        v599 = v279;
        sub_1B03949FC(&v598, &v602, &v601, &v600);
        v249[16] = 0;
        v598 = v471;
        v599 = v280;
        sub_1B03949FC(&v598, &v602, &v601, &v600);
        v249[15] = 0;
        v598 = v472;
        v599 = v281;
        sub_1B03949FC(&v598, &v602, &v601, &v600);
        v249[14] = 0;
        v598 = v473;
        v599 = v282;
        sub_1B03949FC(&v598, &v602, &v601, &v600);
        v249[13] = 0;
        v598 = v474;
        v599 = v283;
        sub_1B03949FC(&v598, &v602, &v601, &v600);
        v249[12] = 0;
        v598 = v475;
        v599 = v284;
        sub_1B03949FC(&v598, &v602, &v601, &v600);
        v249[11] = 0;
        v598 = v476;
        v599 = v285;
        sub_1B03949FC(&v598, &v602, &v601, &v600);
        v249[10] = 0;
        v598 = v477;
        v599 = v286;
        sub_1B03949FC(&v598, &v602, &v601, &v600);
        v249[9] = 0;
        v598 = v478;
        v599 = v287;
        sub_1B03949FC(&v598, &v602, &v601, &v600);
        v249[8] = 0;
        v598 = v479;
        v599 = v288;
        sub_1B03949FC(&v598, &v602, &v601, &v600);
        v249[7] = 0;
        v598 = v480;
        v599 = v289;
        sub_1B03949FC(&v598, &v602, &v601, &v600);
        v249[6] = 0;
        v598 = v481;
        v599 = v290;
        sub_1B03949FC(&v598, &v602, &v601, &v600);
        v249[5] = 0;
        v598 = v482;
        v599 = v291;
        sub_1B03949FC(&v598, &v602, &v601, &v600);
        v249[4] = 0;
        v598 = v483;
        v599 = v292;
        sub_1B03949FC(&v598, &v602, &v601, &v600);
        v249[3] = 0;
        v598 = v484;
        v599 = v293;
        sub_1B03949FC(&v598, &v602, &v601, &v600);
        v249[2] = 0;
        v598 = v485;
        v599 = v294;
        sub_1B03949FC(&v598, &v602, &v601, &v600);
        v249[1] = 0;
        v598 = v486;
        v599 = v296;
        sub_1B03949FC(&v598, &v602, &v601, &v600);
        _os_log_impl(&dword_1B0389000, v299, v300, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Expected a single section for whole message download", v250, 0x2Bu);
        sub_1B03998A8(v251);
        sub_1B03998A8(v252);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v299);
    (*(v553 + 8))(v556, v552);
    v441 = v571;
    v442 = v543;
    return v441;
  }

  v450 = (v455 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_sections);
  v451 = &v597;
  swift_beginAccess();
  v453 = *v450;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v596 = v453;
  v452 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2090, &qword_1B0E9B520);
  sub_1B07ABB40();
  sub_1B0E45728();

  v454 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20B0, &qword_1B0E9B538);
  if ((*(*(v454 - 8) + 48))(v570, 1) == 1)
  {
    sub_1B07ABBC8(v570);
    v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2078, &qword_1B0E9B508);
    (*(*(v172 - 8) + 56))(v573, 1);
  }

  else
  {
    v447 = *v570;
    v448 = v570 + *(v454 + 48);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2078, &qword_1B0E9B508);
    v15 = v448;
    v449 = v14;
    v16 = v573 + *(v14 + 48);
    *v573 = v447;
    sub_1B076041C(v15, v16);
    (*(*(v449 - 8) + 56))(v573, 0, 1);
  }

  v446 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2078, &qword_1B0E9B508);
  if ((*(*(v446 - 8) + 48))(v573, 1) == 1)
  {
    sub_1B07ABF00(v573);
    goto LABEL_22;
  }

  v443 = *v573;
  v17 = v573 + *(v446 + 48);
  v595 = v443;
  sub_1B076041C(v17, v579);
  v18 = sub_1B0E46A48();
  v444 = SectionSpecifier.Part.init(arrayLiteral:)(v18);
  v445 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v443, v444);

  if (v445)
  {
    sub_1B0760600(v579, v577);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = v565;
      sub_1B07AC238(v577, v568);
      (*(v562 + 16))(v19, &v568[*(v566 + 28)], v561);
      v437 = sub_1B0E44338();
      v438 = MFDataFromDispatchData(v437);
      MEMORY[0x1E69E5920](v437);
      (*(v562 + 8))(v565, v561);
      v439 = sub_1B0E42F38();
      v440 = v20;
      MEMORY[0x1E69E5920](v438);
      sub_1B07AC2FC(v568);
      sub_1B0760B84(v579);

      v441 = v439;
      v442 = v440;
    }

    else
    {
      v21 = v560;
      sub_1B0760B84(v577);
      (*(v553 + 16))(v21, v575, v552);
      sub_1B074B69C(v575, v551);
      sub_1B074B69C(v551, v549);
      sub_1B074E41C(v551, v547);
      v22 = (v549 + *(v545 + 20));
      v395 = *v22;
      v396 = *(v22 + 1);
      v397 = *(v22 + 1);
      v398 = *(v22 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v549);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v394 = 36;
      v411 = 7;
      v23 = swift_allocObject();
      v24 = v396;
      v25 = v397;
      v26 = v398;
      v400 = v23;
      *(v23 + 16) = v395;
      *(v23 + 20) = v24;
      *(v23 + 24) = v25;
      *(v23 + 32) = v26;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v27 = swift_allocObject();
      v28 = v396;
      v29 = v397;
      v30 = v398;
      v393 = v27;
      *(v27 + 16) = v395;
      *(v27 + 20) = v28;
      *(v27 + 24) = v29;
      *(v27 + 32) = v30;

      v410 = 32;
      v31 = swift_allocObject();
      v32 = v393;
      v405 = v31;
      *(v31 + 16) = v515;
      *(v31 + 24) = v32;
      sub_1B0394868();
      sub_1B0394868();

      v33 = swift_allocObject();
      v34 = v396;
      v35 = v397;
      v36 = v398;
      v37 = v33;
      v38 = v547;
      v412 = v37;
      *(v37 + 16) = v395;
      *(v37 + 20) = v34;
      *(v37 + 24) = v35;
      *(v37 + 32) = v36;
      sub_1B074B764(v38);
      v435 = sub_1B0E43988();
      v436 = sub_1B0E45908();
      v408 = 17;
      v414 = swift_allocObject();
      v402 = 16;
      *(v414 + 16) = 16;
      v415 = swift_allocObject();
      v404 = 4;
      *(v415 + 16) = 4;
      v39 = swift_allocObject();
      v399 = v39;
      *(v39 + 16) = v457;
      *(v39 + 24) = 0;
      v40 = swift_allocObject();
      v41 = v399;
      v416 = v40;
      *(v40 + 16) = v516;
      *(v40 + 24) = v41;
      v417 = swift_allocObject();
      *(v417 + 16) = 0;
      v418 = swift_allocObject();
      *(v418 + 16) = 1;
      v42 = swift_allocObject();
      v43 = v400;
      v401 = v42;
      *(v42 + 16) = v517;
      *(v42 + 24) = v43;
      v44 = swift_allocObject();
      v45 = v401;
      v419 = v44;
      *(v44 + 16) = v518;
      *(v44 + 24) = v45;
      v420 = swift_allocObject();
      *(v420 + 16) = v402;
      v421 = swift_allocObject();
      *(v421 + 16) = v404;
      v46 = swift_allocObject();
      v403 = v46;
      *(v46 + 16) = v461;
      *(v46 + 24) = 0;
      v47 = swift_allocObject();
      v48 = v403;
      v422 = v47;
      *(v47 + 16) = v519;
      *(v47 + 24) = v48;
      v423 = swift_allocObject();
      *(v423 + 16) = 0;
      v424 = swift_allocObject();
      *(v424 + 16) = v404;
      v49 = swift_allocObject();
      v50 = v405;
      v406 = v49;
      *(v49 + 16) = v520;
      *(v49 + 24) = v50;
      v51 = swift_allocObject();
      v52 = v406;
      v425 = v51;
      *(v51 + 16) = v521;
      *(v51 + 24) = v52;
      v426 = swift_allocObject();
      *(v426 + 16) = 112;
      v427 = swift_allocObject();
      v409 = 8;
      *(v427 + 16) = 8;
      v407 = swift_allocObject();
      *(v407 + 16) = v465;
      v53 = swift_allocObject();
      v54 = v407;
      v428 = v53;
      *(v53 + 16) = v522;
      *(v53 + 24) = v54;
      v429 = swift_allocObject();
      *(v429 + 16) = 37;
      v430 = swift_allocObject();
      *(v430 + 16) = v409;
      v55 = swift_allocObject();
      v56 = v412;
      v413 = v55;
      *(v55 + 16) = v523;
      *(v55 + 24) = v56;
      v57 = swift_allocObject();
      v58 = v413;
      v432 = v57;
      *(v57 + 16) = v524;
      *(v57 + 24) = v58;
      v434 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v431 = sub_1B0E46A48();
      v433 = v59;

      v60 = v414;
      v61 = v433;
      *v433 = v525;
      v61[1] = v60;

      v62 = v415;
      v63 = v433;
      v433[2] = v526;
      v63[3] = v62;

      v64 = v416;
      v65 = v433;
      v433[4] = v527;
      v65[5] = v64;

      v66 = v417;
      v67 = v433;
      v433[6] = v528;
      v67[7] = v66;

      v68 = v418;
      v69 = v433;
      v433[8] = v529;
      v69[9] = v68;

      v70 = v419;
      v71 = v433;
      v433[10] = v530;
      v71[11] = v70;

      v72 = v420;
      v73 = v433;
      v433[12] = v531;
      v73[13] = v72;

      v74 = v421;
      v75 = v433;
      v433[14] = v532;
      v75[15] = v74;

      v76 = v422;
      v77 = v433;
      v433[16] = v533;
      v77[17] = v76;

      v78 = v423;
      v79 = v433;
      v433[18] = v534;
      v79[19] = v78;

      v80 = v424;
      v81 = v433;
      v433[20] = v535;
      v81[21] = v80;

      v82 = v425;
      v83 = v433;
      v433[22] = v536;
      v83[23] = v82;

      v84 = v426;
      v85 = v433;
      v433[24] = v537;
      v85[25] = v84;

      v86 = v427;
      v87 = v433;
      v433[26] = v538;
      v87[27] = v86;

      v88 = v428;
      v89 = v433;
      v433[28] = v539;
      v89[29] = v88;

      v90 = v429;
      v91 = v433;
      v433[30] = v540;
      v91[31] = v90;

      v92 = v430;
      v93 = v433;
      v433[32] = v541;
      v93[33] = v92;

      v94 = v432;
      v95 = v433;
      v433[34] = v542;
      v95[35] = v94;
      sub_1B0394964();

      if (os_log_type_enabled(v435, v436))
      {
        v96 = v544;
        v386 = sub_1B0E45D78();
        v385 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v387 = sub_1B03949A8(0);
        v388 = sub_1B03949A8(1);
        v389 = &v589;
        v589 = v386;
        v390 = &v588;
        v588 = v387;
        v391 = &v587;
        v587 = v388;
        sub_1B0394A48(3, &v589);
        sub_1B0394A48(6, v389);
        v585 = v525;
        v586 = v414;
        sub_1B03949FC(&v585, v389, v390, v391);
        v392 = v96;
        if (v96)
        {

          __break(1u);
        }

        else
        {
          v585 = v526;
          v586 = v415;
          sub_1B03949FC(&v585, &v589, &v588, &v587);
          v384 = 0;
          v585 = v527;
          v586 = v416;
          sub_1B03949FC(&v585, &v589, &v588, &v587);
          v383 = 0;
          v585 = v528;
          v586 = v417;
          sub_1B03949FC(&v585, &v589, &v588, &v587);
          v382 = 0;
          v585 = v529;
          v586 = v418;
          sub_1B03949FC(&v585, &v589, &v588, &v587);
          v381 = 0;
          v585 = v530;
          v586 = v419;
          sub_1B03949FC(&v585, &v589, &v588, &v587);
          v380 = 0;
          v585 = v531;
          v586 = v420;
          sub_1B03949FC(&v585, &v589, &v588, &v587);
          v379 = 0;
          v585 = v532;
          v586 = v421;
          sub_1B03949FC(&v585, &v589, &v588, &v587);
          v378 = 0;
          v585 = v533;
          v586 = v422;
          sub_1B03949FC(&v585, &v589, &v588, &v587);
          v377 = 0;
          v585 = v534;
          v586 = v423;
          sub_1B03949FC(&v585, &v589, &v588, &v587);
          v376 = 0;
          v585 = v535;
          v586 = v424;
          sub_1B03949FC(&v585, &v589, &v588, &v587);
          v375 = 0;
          v585 = v536;
          v586 = v425;
          sub_1B03949FC(&v585, &v589, &v588, &v587);
          v374 = 0;
          v585 = v537;
          v586 = v426;
          sub_1B03949FC(&v585, &v589, &v588, &v587);
          v373 = 0;
          v585 = v538;
          v586 = v427;
          sub_1B03949FC(&v585, &v589, &v588, &v587);
          v372 = 0;
          v585 = v539;
          v586 = v428;
          sub_1B03949FC(&v585, &v589, &v588, &v587);
          v371 = 0;
          v585 = v540;
          v586 = v429;
          sub_1B03949FC(&v585, &v589, &v588, &v587);
          v370 = 0;
          v585 = v541;
          v586 = v430;
          sub_1B03949FC(&v585, &v589, &v588, &v587);
          v369 = 0;
          v585 = v542;
          v586 = v432;
          sub_1B03949FC(&v585, &v589, &v588, &v587);
          _os_log_impl(&dword_1B0389000, v435, v436, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Expected whole message download to be complete", v386, 0x2Bu);
          sub_1B03998A8(v387);
          sub_1B03998A8(v388);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v435);
      (*(v553 + 8))(v560, v552);
      sub_1B0760B84(v579);

      v441 = v571;
      v442 = v543;
    }
  }

  else
  {
    (*(v553 + 16))(v558, v575, v552);
    sub_1B074B69C(v575, v551);
    sub_1B074B69C(v551, v549);
    sub_1B074E41C(v551, v547);
    v97 = (v549 + *(v545 + 20));
    v327 = *v97;
    v328 = *(v97 + 1);
    v329 = *(v97 + 1);
    v330 = *(v97 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v549);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v326 = 36;
    v343 = 7;
    v98 = swift_allocObject();
    v99 = v328;
    v100 = v329;
    v101 = v330;
    v332 = v98;
    *(v98 + 16) = v327;
    *(v98 + 20) = v99;
    *(v98 + 24) = v100;
    *(v98 + 32) = v101;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v102 = swift_allocObject();
    v103 = v328;
    v104 = v329;
    v105 = v330;
    v325 = v102;
    *(v102 + 16) = v327;
    *(v102 + 20) = v103;
    *(v102 + 24) = v104;
    *(v102 + 32) = v105;

    v342 = 32;
    v106 = swift_allocObject();
    v107 = v325;
    v337 = v106;
    *(v106 + 16) = v487;
    *(v106 + 24) = v107;
    sub_1B0394868();
    sub_1B0394868();

    v108 = swift_allocObject();
    v109 = v328;
    v110 = v329;
    v111 = v330;
    v112 = v108;
    v113 = v547;
    v344 = v112;
    *(v112 + 16) = v327;
    *(v112 + 20) = v109;
    *(v112 + 24) = v110;
    *(v112 + 32) = v111;
    sub_1B074B764(v113);
    v367 = sub_1B0E43988();
    v368 = sub_1B0E45908();
    v340 = 17;
    v346 = swift_allocObject();
    v334 = 16;
    *(v346 + 16) = 16;
    v347 = swift_allocObject();
    v336 = 4;
    *(v347 + 16) = 4;
    v114 = swift_allocObject();
    v331 = v114;
    *(v114 + 16) = v457;
    *(v114 + 24) = 0;
    v115 = swift_allocObject();
    v116 = v331;
    v348 = v115;
    *(v115 + 16) = v488;
    *(v115 + 24) = v116;
    v349 = swift_allocObject();
    *(v349 + 16) = 0;
    v350 = swift_allocObject();
    *(v350 + 16) = 1;
    v117 = swift_allocObject();
    v118 = v332;
    v333 = v117;
    *(v117 + 16) = v489;
    *(v117 + 24) = v118;
    v119 = swift_allocObject();
    v120 = v333;
    v351 = v119;
    *(v119 + 16) = v490;
    *(v119 + 24) = v120;
    v352 = swift_allocObject();
    *(v352 + 16) = v334;
    v353 = swift_allocObject();
    *(v353 + 16) = v336;
    v121 = swift_allocObject();
    v335 = v121;
    *(v121 + 16) = v461;
    *(v121 + 24) = 0;
    v122 = swift_allocObject();
    v123 = v335;
    v354 = v122;
    *(v122 + 16) = v491;
    *(v122 + 24) = v123;
    v355 = swift_allocObject();
    *(v355 + 16) = 0;
    v356 = swift_allocObject();
    *(v356 + 16) = v336;
    v124 = swift_allocObject();
    v125 = v337;
    v338 = v124;
    *(v124 + 16) = v492;
    *(v124 + 24) = v125;
    v126 = swift_allocObject();
    v127 = v338;
    v357 = v126;
    *(v126 + 16) = v493;
    *(v126 + 24) = v127;
    v358 = swift_allocObject();
    *(v358 + 16) = 112;
    v359 = swift_allocObject();
    v341 = 8;
    *(v359 + 16) = 8;
    v339 = swift_allocObject();
    *(v339 + 16) = v465;
    v128 = swift_allocObject();
    v129 = v339;
    v360 = v128;
    *(v128 + 16) = v494;
    *(v128 + 24) = v129;
    v361 = swift_allocObject();
    *(v361 + 16) = 37;
    v362 = swift_allocObject();
    *(v362 + 16) = v341;
    v130 = swift_allocObject();
    v131 = v344;
    v345 = v130;
    *(v130 + 16) = v495;
    *(v130 + 24) = v131;
    v132 = swift_allocObject();
    v133 = v345;
    v364 = v132;
    *(v132 + 16) = v496;
    *(v132 + 24) = v133;
    v366 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v363 = sub_1B0E46A48();
    v365 = v134;

    v135 = v346;
    v136 = v365;
    *v365 = v497;
    v136[1] = v135;

    v137 = v347;
    v138 = v365;
    v365[2] = v498;
    v138[3] = v137;

    v139 = v348;
    v140 = v365;
    v365[4] = v499;
    v140[5] = v139;

    v141 = v349;
    v142 = v365;
    v365[6] = v500;
    v142[7] = v141;

    v143 = v350;
    v144 = v365;
    v365[8] = v501;
    v144[9] = v143;

    v145 = v351;
    v146 = v365;
    v365[10] = v502;
    v146[11] = v145;

    v147 = v352;
    v148 = v365;
    v365[12] = v503;
    v148[13] = v147;

    v149 = v353;
    v150 = v365;
    v365[14] = v504;
    v150[15] = v149;

    v151 = v354;
    v152 = v365;
    v365[16] = v505;
    v152[17] = v151;

    v153 = v355;
    v154 = v365;
    v365[18] = v506;
    v154[19] = v153;

    v155 = v356;
    v156 = v365;
    v365[20] = v507;
    v156[21] = v155;

    v157 = v357;
    v158 = v365;
    v365[22] = v508;
    v158[23] = v157;

    v159 = v358;
    v160 = v365;
    v365[24] = v509;
    v160[25] = v159;

    v161 = v359;
    v162 = v365;
    v365[26] = v510;
    v162[27] = v161;

    v163 = v360;
    v164 = v365;
    v365[28] = v511;
    v164[29] = v163;

    v165 = v361;
    v166 = v365;
    v365[30] = v512;
    v166[31] = v165;

    v167 = v362;
    v168 = v365;
    v365[32] = v513;
    v168[33] = v167;

    v169 = v364;
    v170 = v365;
    v365[34] = v514;
    v170[35] = v169;
    sub_1B0394964();

    if (os_log_type_enabled(v367, v368))
    {
      v171 = v544;
      v318 = sub_1B0E45D78();
      v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v319 = sub_1B03949A8(0);
      v320 = sub_1B03949A8(1);
      v321 = &v594;
      v594 = v318;
      v322 = &v593;
      v593 = v319;
      v323 = &v592;
      v592 = v320;
      sub_1B0394A48(3, &v594);
      sub_1B0394A48(6, v321);
      v590 = v497;
      v591 = v346;
      sub_1B03949FC(&v590, v321, v322, v323);
      v324 = v171;
      if (v171)
      {

        __break(1u);
      }

      else
      {
        v590 = v498;
        v591 = v347;
        sub_1B03949FC(&v590, &v594, &v593, &v592);
        v316 = 0;
        v590 = v499;
        v591 = v348;
        sub_1B03949FC(&v590, &v594, &v593, &v592);
        v315 = 0;
        v590 = v500;
        v591 = v349;
        sub_1B03949FC(&v590, &v594, &v593, &v592);
        v314 = 0;
        v590 = v501;
        v591 = v350;
        sub_1B03949FC(&v590, &v594, &v593, &v592);
        v313 = 0;
        v590 = v502;
        v591 = v351;
        sub_1B03949FC(&v590, &v594, &v593, &v592);
        v312 = 0;
        v590 = v503;
        v591 = v352;
        sub_1B03949FC(&v590, &v594, &v593, &v592);
        v311 = 0;
        v590 = v504;
        v591 = v353;
        sub_1B03949FC(&v590, &v594, &v593, &v592);
        v310 = 0;
        v590 = v505;
        v591 = v354;
        sub_1B03949FC(&v590, &v594, &v593, &v592);
        v309 = 0;
        v590 = v506;
        v591 = v355;
        sub_1B03949FC(&v590, &v594, &v593, &v592);
        v308 = 0;
        v590 = v507;
        v591 = v356;
        sub_1B03949FC(&v590, &v594, &v593, &v592);
        v307 = 0;
        v590 = v508;
        v591 = v357;
        sub_1B03949FC(&v590, &v594, &v593, &v592);
        v306 = 0;
        v590 = v509;
        v591 = v358;
        sub_1B03949FC(&v590, &v594, &v593, &v592);
        v305 = 0;
        v590 = v510;
        v591 = v359;
        sub_1B03949FC(&v590, &v594, &v593, &v592);
        v304 = 0;
        v590 = v511;
        v591 = v360;
        sub_1B03949FC(&v590, &v594, &v593, &v592);
        v303 = 0;
        v590 = v512;
        v591 = v361;
        sub_1B03949FC(&v590, &v594, &v593, &v592);
        v302 = 0;
        v590 = v513;
        v591 = v362;
        sub_1B03949FC(&v590, &v594, &v593, &v592);
        v301 = 0;
        v590 = v514;
        v591 = v364;
        sub_1B03949FC(&v590, &v594, &v593, &v592);
        _os_log_impl(&dword_1B0389000, v367, v368, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Expected a top-level part for whole message download", v318, 0x2Bu);
        sub_1B03998A8(v319);
        sub_1B03998A8(v320);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v367);
    (*(v553 + 8))(v558, v552);
    sub_1B0760B84(v579);

    v441 = v571;
    v442 = v543;
  }

  return v441;
}

uint64_t sub_1B076CC6C(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v683 = v1;
  v713 = v3;
  v712 = v4;
  v711 = v5;
  v715 = v6;
  v714 = v2;
  v684 = v7;
  v685 = v4;
  v708 = 0;
  v766 = 0;
  v765 = 0;
  v764 = 0;
  v763 = 0;
  v762 = 0;
  v761 = 0;
  v760 = 0;
  v759 = 0;
  v757 = 0;
  v686 = 0;
  v743 = 0;
  v742 = 0;
  v741 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
  v687 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8 - 8);
  v688 = v278 - v687;
  v689 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26F0, &unk_1B0E9B4F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v708);
  v690 = v278 - v689;
  v9 = _s31PreviouslyDownloadedMessageDataVMa();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v691 = v278 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v692 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2080, &qword_1B0E9B510) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v708);
  v693 = (v278 - v692);
  v694 = _s6LoggerVMa_1();
  v696 = *(*(v694 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v708);
  v698 = (v696 + 15) & 0xFFFFFFFFFFFFFFF0;
  v695 = v278 - v698;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v697 = v278 - v698;
  MEMORY[0x1EEE9AC00](v13);
  v699 = v278 - v698;
  v700 = sub_1B0E439A8();
  v701 = *(v700 - 8);
  v702 = v701;
  v704 = *(v701 + 64);
  v14 = MEMORY[0x1EEE9AC00](v708);
  v706 = (v704 + 15) & 0xFFFFFFFFFFFFFFF0;
  v703 = v278 - v706;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v705 = v278 - v706;
  MEMORY[0x1EEE9AC00](v15);
  v707 = v278 - v706;
  v709 = type metadata accessor for MessageSectionDataConcatenator.CompleteSection();
  v16 = *(*(v709 - 8) + 64);
  MEMORY[0x1EEE9AC00](v708);
  v710 = (v278 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v766 = v710;
  v716 = type metadata accessor for InProgressMessageDownload.Section();
  v717 = *(v716 - 8);
  v718 = v717;
  v720 = *(v717 + 64);
  v18 = MEMORY[0x1EEE9AC00](v714);
  v722 = (v720 + 15) & 0xFFFFFFFFFFFFFFF0;
  v719 = (v278 - v722);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v721 = v278 - v722;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v723 = (v278 - v722);
  v765 = v278 - v722;
  v763 = v20;
  v764 = v21;
  v762 = v22;
  v761 = v23;
  v760 = v24;
  v759 = v1;
  if ((sub_1B077136C() & 1) == 0)
  {
    goto LABEL_41;
  }

  v681 = &v758;
  swift_beginAccess();
  v682 = *(v683 + 20);
  swift_endAccess();
  v680 = v682 == 1 ? 1 : v685;
  v679 = v680;
  v757 = v680 & 1;

  v678 = (v679 & 1) != 0 || sub_1B0765644();
  v677 = v678;

  if (!v677)
  {
LABEL_41:
    v276 = type metadata accessor for InProgressMessageDownload.Completed();
    (*(*(v276 - 8) + 56))(v684, 1);
    return v686;
  }

  if (v679)
  {
    v660 = v686;
  }

  else
  {
    v25 = v686;
    v667 = (v683 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_sections);
    v670 = 32;
    v668 = v745;
    v671 = 0;
    swift_beginAccess();
    v669 = *v667;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    v744 = v669;
    v672 = v278;
    MEMORY[0x1EEE9AC00](v278);
    v674 = &v278[-4];
    v278[-2] = sub_1B077148C;
    v278[-1] = v26;
    v675 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2090, &qword_1B0E9B520);
    v673 = v675;
    sub_1B07ABB40();
    sub_1B0E456F8();
    v676 = v25;
    if (v25)
    {
      __break(1u);
      goto LABEL_44;
    }

    sub_1B039E440(&v744);
    v664 = v745[3];
    v665 = v745[4];
    v666 = v746;
    if (v746 == 255)
    {
      v660 = v676;
    }

    else
    {
      v661 = v664;
      v662 = v665;
      v663 = v666;
      v654 = v666;
      v656 = v665;
      v655 = v664;
      v741 = v664;
      v742 = v665;
      v657 = v666 & 1;
      v743 = v666 & 1;
      v658 = v740;
      swift_beginAccess();
      sub_1B0E44698();
      swift_endAccess();
      v659 = v740[3];
      sub_1B076041C(v721, v723);

      sub_1B0760600(v723, v719);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        sub_1B07AC238(v719, v710);
        if (sub_1B0771570(v710, v714, v715, v711, v713))
        {
          if ((sub_1B077136C() & 1) == 0)
          {
            (*(v702 + 16))(v707, v713, v700);
            sub_1B074B69C(v713, v699);
            sub_1B074B69C(v699, v697);
            sub_1B074E41C(v699, v695);
            v28 = (v697 + *(v694 + 20));
            v589 = *v28;
            v590 = *(v28 + 1);
            v591 = *(v28 + 1);
            v592 = *(v28 + 4);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B074B764(v697);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v588 = 36;
            v626 = 7;
            v29 = swift_allocObject();
            v30 = v590;
            v31 = v591;
            v32 = v592;
            v601 = v29;
            *(v29 + 16) = v589;
            *(v29 + 20) = v30;
            *(v29 + 24) = v31;
            *(v29 + 32) = v32;
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v33 = swift_allocObject();
            v34 = v590;
            v35 = v591;
            v36 = v592;
            v587 = v33;
            *(v33 + 16) = v589;
            *(v33 + 20) = v34;
            *(v33 + 24) = v35;
            *(v33 + 32) = v36;

            v625 = 32;
            v37 = swift_allocObject();
            v38 = v587;
            v614 = v37;
            *(v37 + 16) = sub_1B074E050;
            *(v37 + 24) = v38;
            sub_1B0394868();
            sub_1B0394868();

            v39 = swift_allocObject();
            v40 = v590;
            v41 = v591;
            v42 = v592;
            v43 = v39;
            v44 = v695;
            v627 = v43;
            *(v43 + 16) = v589;
            *(v43 + 20) = v40;
            *(v43 + 24) = v41;
            *(v43 + 32) = v42;
            sub_1B074B764(v44);
            v652 = sub_1B0E43988();
            v593 = v652;
            v651 = sub_1B0E45908();
            v594 = v651;
            v621 = 17;
            v630 = swift_allocObject();
            v595 = v630;
            v604 = 16;
            *(v630 + 16) = 16;
            v631 = swift_allocObject();
            v596 = v631;
            v612 = 4;
            *(v631 + 16) = 4;
            v45 = swift_allocObject();
            v597 = v45;
            *(v45 + 16) = sub_1B0394C30;
            v607 = 0;
            *(v45 + 24) = 0;
            v46 = swift_allocObject();
            v47 = v597;
            v632 = v46;
            v598 = v46;
            *(v46 + 16) = sub_1B0394C24;
            *(v46 + 24) = v47;
            v633 = swift_allocObject();
            v599 = v633;
            v610 = 0;
            *(v633 + 16) = 0;
            v634 = swift_allocObject();
            v600 = v634;
            *(v634 + 16) = 1;
            v48 = swift_allocObject();
            v49 = v601;
            v602 = v48;
            *(v48 + 16) = sub_1B074DFFC;
            *(v48 + 24) = v49;
            v50 = swift_allocObject();
            v51 = v602;
            v635 = v50;
            v603 = v50;
            *(v50 + 16) = sub_1B039BA88;
            *(v50 + 24) = v51;
            v636 = swift_allocObject();
            v605 = v636;
            *(v636 + 16) = v604;
            v637 = swift_allocObject();
            v606 = v637;
            *(v637 + 16) = v612;
            v52 = swift_allocObject();
            v53 = v607;
            v608 = v52;
            *(v52 + 16) = sub_1B039BB94;
            *(v52 + 24) = v53;
            v54 = swift_allocObject();
            v55 = v608;
            v638 = v54;
            v609 = v54;
            *(v54 + 16) = sub_1B0394C24;
            *(v54 + 24) = v55;
            v639 = swift_allocObject();
            v611 = v639;
            *(v639 + 16) = v610;
            v640 = swift_allocObject();
            v613 = v640;
            *(v640 + 16) = v612;
            v56 = swift_allocObject();
            v57 = v614;
            v615 = v56;
            *(v56 + 16) = sub_1B039BBA0;
            *(v56 + 24) = v57;
            v58 = swift_allocObject();
            v59 = v615;
            v641 = v58;
            v616 = v58;
            *(v58 + 16) = sub_1B039BC08;
            *(v58 + 24) = v59;
            v642 = swift_allocObject();
            v617 = v642;
            *(v642 + 16) = 112;
            v643 = swift_allocObject();
            v618 = v643;
            v623 = 8;
            *(v643 + 16) = 8;
            v619 = swift_allocObject();
            *(v619 + 16) = 0x786F626C69616DLL;
            v60 = swift_allocObject();
            v61 = v619;
            v644 = v60;
            v620 = v60;
            *(v60 + 16) = sub_1B06BA324;
            *(v60 + 24) = v61;
            v645 = swift_allocObject();
            v622 = v645;
            *(v645 + 16) = 37;
            v646 = swift_allocObject();
            v624 = v646;
            *(v646 + 16) = v623;
            v62 = swift_allocObject();
            v63 = v627;
            v628 = v62;
            *(v62 + 16) = sub_1B074E0E4;
            *(v62 + 24) = v63;
            v64 = swift_allocObject();
            v65 = v628;
            v649 = v64;
            v629 = v64;
            *(v64 + 16) = sub_1B039BCF8;
            *(v64 + 24) = v65;
            v650 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
            v647 = sub_1B0E46A48();
            v648 = v66;

            v67 = v630;
            v68 = v648;
            *v648 = sub_1B0398F5C;
            v68[1] = v67;

            v69 = v631;
            v70 = v648;
            v648[2] = sub_1B0398F5C;
            v70[3] = v69;

            v71 = v632;
            v72 = v648;
            v648[4] = sub_1B0399178;
            v72[5] = v71;

            v73 = v633;
            v74 = v648;
            v648[6] = sub_1B0398F5C;
            v74[7] = v73;

            v75 = v634;
            v76 = v648;
            v648[8] = sub_1B0398F5C;
            v76[9] = v75;

            v77 = v635;
            v78 = v648;
            v648[10] = sub_1B039BA94;
            v78[11] = v77;

            v79 = v636;
            v80 = v648;
            v648[12] = sub_1B0398F5C;
            v80[13] = v79;

            v81 = v637;
            v82 = v648;
            v648[14] = sub_1B0398F5C;
            v82[15] = v81;

            v83 = v638;
            v84 = v648;
            v648[16] = sub_1B0399178;
            v84[17] = v83;

            v85 = v639;
            v86 = v648;
            v648[18] = sub_1B0398F5C;
            v86[19] = v85;

            v87 = v640;
            v88 = v648;
            v648[20] = sub_1B0398F5C;
            v88[21] = v87;

            v89 = v641;
            v90 = v648;
            v648[22] = sub_1B03991EC;
            v90[23] = v89;

            v91 = v642;
            v92 = v648;
            v648[24] = sub_1B0398F5C;
            v92[25] = v91;

            v93 = v643;
            v94 = v648;
            v648[26] = sub_1B0398F5C;
            v94[27] = v93;

            v95 = v644;
            v96 = v648;
            v648[28] = sub_1B03993BC;
            v96[29] = v95;

            v97 = v645;
            v98 = v648;
            v648[30] = sub_1B0398F5C;
            v98[31] = v97;

            v99 = v646;
            v100 = v648;
            v648[32] = sub_1B0398F5C;
            v100[33] = v99;

            v101 = v648;
            v102 = v649;
            v648[34] = sub_1B039BCEC;
            v101[35] = v102;
            sub_1B0394964();

            if (os_log_type_enabled(v652, v651))
            {
              v103 = v676;
              v581 = sub_1B0E45D78();
              v578 = v581;
              v579 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
              v582 = sub_1B03949A8(0);
              v580 = v582;
              v583 = sub_1B03949A8(1);
              v728 = v581;
              v727 = v582;
              v726 = v583;
              v584 = &v728;
              sub_1B0394A48(3, &v728);
              sub_1B0394A48(6, v584);
              v724 = sub_1B0398F5C;
              v725 = v595;
              sub_1B03949FC(&v724, v584, &v727, &v726);
              v585 = v103;
              v586 = v103;
              if (v103)
              {
                v576 = 0;

                __break(1u);
              }

              else
              {
                v724 = sub_1B0398F5C;
                v725 = v596;
                sub_1B03949FC(&v724, &v728, &v727, &v726);
                v574 = 0;
                v575 = 0;
                v724 = sub_1B0399178;
                v725 = v598;
                sub_1B03949FC(&v724, &v728, &v727, &v726);
                v572 = 0;
                v573 = 0;
                v724 = sub_1B0398F5C;
                v725 = v599;
                sub_1B03949FC(&v724, &v728, &v727, &v726);
                v570 = 0;
                v571 = 0;
                v724 = sub_1B0398F5C;
                v725 = v600;
                sub_1B03949FC(&v724, &v728, &v727, &v726);
                v568 = 0;
                v569 = 0;
                v724 = sub_1B039BA94;
                v725 = v603;
                sub_1B03949FC(&v724, &v728, &v727, &v726);
                v566 = 0;
                v567 = 0;
                v724 = sub_1B0398F5C;
                v725 = v605;
                sub_1B03949FC(&v724, &v728, &v727, &v726);
                v564 = 0;
                v565 = 0;
                v724 = sub_1B0398F5C;
                v725 = v606;
                sub_1B03949FC(&v724, &v728, &v727, &v726);
                v562 = 0;
                v563 = 0;
                v724 = sub_1B0399178;
                v725 = v609;
                sub_1B03949FC(&v724, &v728, &v727, &v726);
                v560 = 0;
                v561 = 0;
                v724 = sub_1B0398F5C;
                v725 = v611;
                sub_1B03949FC(&v724, &v728, &v727, &v726);
                v558 = 0;
                v559 = 0;
                v724 = sub_1B0398F5C;
                v725 = v613;
                sub_1B03949FC(&v724, &v728, &v727, &v726);
                v556 = 0;
                v557 = 0;
                v724 = sub_1B03991EC;
                v725 = v616;
                sub_1B03949FC(&v724, &v728, &v727, &v726);
                v554 = 0;
                v555 = 0;
                v724 = sub_1B0398F5C;
                v725 = v617;
                sub_1B03949FC(&v724, &v728, &v727, &v726);
                v552 = 0;
                v553 = 0;
                v724 = sub_1B0398F5C;
                v725 = v618;
                sub_1B03949FC(&v724, &v728, &v727, &v726);
                v550 = 0;
                v551 = 0;
                v724 = sub_1B03993BC;
                v725 = v620;
                sub_1B03949FC(&v724, &v728, &v727, &v726);
                v548 = 0;
                v549 = 0;
                v724 = sub_1B0398F5C;
                v725 = v622;
                sub_1B03949FC(&v724, &v728, &v727, &v726);
                v546 = 0;
                v547 = 0;
                v724 = sub_1B0398F5C;
                v725 = v624;
                sub_1B03949FC(&v724, &v728, &v727, &v726);
                v544 = 0;
                v545 = 0;
                v724 = sub_1B039BCEC;
                v725 = v629;
                sub_1B03949FC(&v724, &v728, &v727, &v726);
                v542 = 0;
                v543 = 0;
                _os_log_impl(&dword_1B0389000, v593, v594, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Did extract attachments from full message download. Waiting for file writers.", v578, 0x2Bu);
                sub_1B03998A8(v580);
                sub_1B03998A8(v583);
                sub_1B0E45D58();

                v577 = v542;
              }
            }

            else
            {
              v104 = v676;

              v577 = v104;
            }

            v540 = v577;

            (*(v702 + 8))(v707, v700);
            v105 = type metadata accessor for InProgressMessageDownload.Completed();
            (*(*(v105 - 8) + 56))(v684, 1);
            sub_1B07AC2FC(v710);
            sub_1B0760B84(v723);
            sub_1B07AC53C(v655, v656, v654 & 1);
            return v540;
          }

          v653 = v676;
        }

        else
        {
          (*(v702 + 16))(v705, v713, v700);
          sub_1B074B69C(v713, v699);
          sub_1B074B69C(v699, v697);
          sub_1B074E41C(v699, v695);
          v106 = (v697 + *(v694 + 20));
          v476 = *v106;
          v477 = *(v106 + 1);
          v478 = *(v106 + 1);
          v479 = *(v106 + 4);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B074B764(v697);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v475 = 36;
          v513 = 7;
          v107 = swift_allocObject();
          v108 = v477;
          v109 = v478;
          v110 = v479;
          v488 = v107;
          *(v107 + 16) = v476;
          *(v107 + 20) = v108;
          *(v107 + 24) = v109;
          *(v107 + 32) = v110;
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v111 = swift_allocObject();
          v112 = v477;
          v113 = v478;
          v114 = v479;
          v474 = v111;
          *(v111 + 16) = v476;
          *(v111 + 20) = v112;
          *(v111 + 24) = v113;
          *(v111 + 32) = v114;

          v512 = 32;
          v115 = swift_allocObject();
          v116 = v474;
          v501 = v115;
          *(v115 + 16) = sub_1B074E050;
          *(v115 + 24) = v116;
          sub_1B0394868();
          sub_1B0394868();

          v117 = swift_allocObject();
          v118 = v477;
          v119 = v478;
          v120 = v479;
          v121 = v117;
          v122 = v695;
          v514 = v121;
          *(v121 + 16) = v476;
          *(v121 + 20) = v118;
          *(v121 + 24) = v119;
          *(v121 + 32) = v120;
          sub_1B074B764(v122);
          v539 = sub_1B0E43988();
          v480 = v539;
          v538 = sub_1B0E458F8();
          v481 = v538;
          v508 = 17;
          v517 = swift_allocObject();
          v482 = v517;
          v491 = 16;
          *(v517 + 16) = 16;
          v518 = swift_allocObject();
          v483 = v518;
          v499 = 4;
          *(v518 + 16) = 4;
          v123 = swift_allocObject();
          v484 = v123;
          *(v123 + 16) = sub_1B0394C30;
          v494 = 0;
          *(v123 + 24) = 0;
          v124 = swift_allocObject();
          v125 = v484;
          v519 = v124;
          v485 = v124;
          *(v124 + 16) = sub_1B0394C24;
          *(v124 + 24) = v125;
          v520 = swift_allocObject();
          v486 = v520;
          v497 = 0;
          *(v520 + 16) = 0;
          v521 = swift_allocObject();
          v487 = v521;
          *(v521 + 16) = 1;
          v126 = swift_allocObject();
          v127 = v488;
          v489 = v126;
          *(v126 + 16) = sub_1B074DFFC;
          *(v126 + 24) = v127;
          v128 = swift_allocObject();
          v129 = v489;
          v522 = v128;
          v490 = v128;
          *(v128 + 16) = sub_1B039BA88;
          *(v128 + 24) = v129;
          v523 = swift_allocObject();
          v492 = v523;
          *(v523 + 16) = v491;
          v524 = swift_allocObject();
          v493 = v524;
          *(v524 + 16) = v499;
          v130 = swift_allocObject();
          v131 = v494;
          v495 = v130;
          *(v130 + 16) = sub_1B039BB94;
          *(v130 + 24) = v131;
          v132 = swift_allocObject();
          v133 = v495;
          v525 = v132;
          v496 = v132;
          *(v132 + 16) = sub_1B0394C24;
          *(v132 + 24) = v133;
          v526 = swift_allocObject();
          v498 = v526;
          *(v526 + 16) = v497;
          v527 = swift_allocObject();
          v500 = v527;
          *(v527 + 16) = v499;
          v134 = swift_allocObject();
          v135 = v501;
          v502 = v134;
          *(v134 + 16) = sub_1B039BBA0;
          *(v134 + 24) = v135;
          v136 = swift_allocObject();
          v137 = v502;
          v528 = v136;
          v503 = v136;
          *(v136 + 16) = sub_1B039BC08;
          *(v136 + 24) = v137;
          v529 = swift_allocObject();
          v504 = v529;
          *(v529 + 16) = 112;
          v530 = swift_allocObject();
          v505 = v530;
          v510 = 8;
          *(v530 + 16) = 8;
          v506 = swift_allocObject();
          *(v506 + 16) = 0x786F626C69616DLL;
          v138 = swift_allocObject();
          v139 = v506;
          v531 = v138;
          v507 = v138;
          *(v138 + 16) = sub_1B06BA324;
          *(v138 + 24) = v139;
          v532 = swift_allocObject();
          v509 = v532;
          *(v532 + 16) = 37;
          v533 = swift_allocObject();
          v511 = v533;
          *(v533 + 16) = v510;
          v140 = swift_allocObject();
          v141 = v514;
          v515 = v140;
          *(v140 + 16) = sub_1B074E0E4;
          *(v140 + 24) = v141;
          v142 = swift_allocObject();
          v143 = v515;
          v536 = v142;
          v516 = v142;
          *(v142 + 16) = sub_1B039BCF8;
          *(v142 + 24) = v143;
          v537 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
          v534 = sub_1B0E46A48();
          v535 = v144;

          v145 = v517;
          v146 = v535;
          *v535 = sub_1B0398F5C;
          v146[1] = v145;

          v147 = v518;
          v148 = v535;
          v535[2] = sub_1B0398F5C;
          v148[3] = v147;

          v149 = v519;
          v150 = v535;
          v535[4] = sub_1B0399178;
          v150[5] = v149;

          v151 = v520;
          v152 = v535;
          v535[6] = sub_1B0398F5C;
          v152[7] = v151;

          v153 = v521;
          v154 = v535;
          v535[8] = sub_1B0398F5C;
          v154[9] = v153;

          v155 = v522;
          v156 = v535;
          v535[10] = sub_1B039BA94;
          v156[11] = v155;

          v157 = v523;
          v158 = v535;
          v535[12] = sub_1B0398F5C;
          v158[13] = v157;

          v159 = v524;
          v160 = v535;
          v535[14] = sub_1B0398F5C;
          v160[15] = v159;

          v161 = v525;
          v162 = v535;
          v535[16] = sub_1B0399178;
          v162[17] = v161;

          v163 = v526;
          v164 = v535;
          v535[18] = sub_1B0398F5C;
          v164[19] = v163;

          v165 = v527;
          v166 = v535;
          v535[20] = sub_1B0398F5C;
          v166[21] = v165;

          v167 = v528;
          v168 = v535;
          v535[22] = sub_1B03991EC;
          v168[23] = v167;

          v169 = v529;
          v170 = v535;
          v535[24] = sub_1B0398F5C;
          v170[25] = v169;

          v171 = v530;
          v172 = v535;
          v535[26] = sub_1B0398F5C;
          v172[27] = v171;

          v173 = v531;
          v174 = v535;
          v535[28] = sub_1B03993BC;
          v174[29] = v173;

          v175 = v532;
          v176 = v535;
          v535[30] = sub_1B0398F5C;
          v176[31] = v175;

          v177 = v533;
          v178 = v535;
          v535[32] = sub_1B0398F5C;
          v178[33] = v177;

          v179 = v535;
          v180 = v536;
          v535[34] = sub_1B039BCEC;
          v179[35] = v180;
          sub_1B0394964();

          if (os_log_type_enabled(v539, v538))
          {
            v181 = v676;
            v468 = sub_1B0E45D78();
            v465 = v468;
            v466 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
            v469 = sub_1B03949A8(0);
            v467 = v469;
            v470 = sub_1B03949A8(1);
            v733 = v468;
            v732 = v469;
            v731 = v470;
            v471 = &v733;
            sub_1B0394A48(3, &v733);
            sub_1B0394A48(6, v471);
            v729 = sub_1B0398F5C;
            v730 = v482;
            sub_1B03949FC(&v729, v471, &v732, &v731);
            v472 = v181;
            v473 = v181;
            if (v181)
            {
              v463 = 0;

              __break(1u);
            }

            else
            {
              v729 = sub_1B0398F5C;
              v730 = v483;
              sub_1B03949FC(&v729, &v733, &v732, &v731);
              v461 = 0;
              v462 = 0;
              v729 = sub_1B0399178;
              v730 = v485;
              sub_1B03949FC(&v729, &v733, &v732, &v731);
              v459 = 0;
              v460 = 0;
              v729 = sub_1B0398F5C;
              v730 = v486;
              sub_1B03949FC(&v729, &v733, &v732, &v731);
              v457 = 0;
              v458 = 0;
              v729 = sub_1B0398F5C;
              v730 = v487;
              sub_1B03949FC(&v729, &v733, &v732, &v731);
              v455 = 0;
              v456 = 0;
              v729 = sub_1B039BA94;
              v730 = v490;
              sub_1B03949FC(&v729, &v733, &v732, &v731);
              v453 = 0;
              v454 = 0;
              v729 = sub_1B0398F5C;
              v730 = v492;
              sub_1B03949FC(&v729, &v733, &v732, &v731);
              v451 = 0;
              v452 = 0;
              v729 = sub_1B0398F5C;
              v730 = v493;
              sub_1B03949FC(&v729, &v733, &v732, &v731);
              v449 = 0;
              v450 = 0;
              v729 = sub_1B0399178;
              v730 = v496;
              sub_1B03949FC(&v729, &v733, &v732, &v731);
              v447 = 0;
              v448 = 0;
              v729 = sub_1B0398F5C;
              v730 = v498;
              sub_1B03949FC(&v729, &v733, &v732, &v731);
              v445 = 0;
              v446 = 0;
              v729 = sub_1B0398F5C;
              v730 = v500;
              sub_1B03949FC(&v729, &v733, &v732, &v731);
              v443 = 0;
              v444 = 0;
              v729 = sub_1B03991EC;
              v730 = v503;
              sub_1B03949FC(&v729, &v733, &v732, &v731);
              v441 = 0;
              v442 = 0;
              v729 = sub_1B0398F5C;
              v730 = v504;
              sub_1B03949FC(&v729, &v733, &v732, &v731);
              v439 = 0;
              v440 = 0;
              v729 = sub_1B0398F5C;
              v730 = v505;
              sub_1B03949FC(&v729, &v733, &v732, &v731);
              v437 = 0;
              v438 = 0;
              v729 = sub_1B03993BC;
              v730 = v507;
              sub_1B03949FC(&v729, &v733, &v732, &v731);
              v435 = 0;
              v436 = 0;
              v729 = sub_1B0398F5C;
              v730 = v509;
              sub_1B03949FC(&v729, &v733, &v732, &v731);
              v433 = 0;
              v434 = 0;
              v729 = sub_1B0398F5C;
              v730 = v511;
              sub_1B03949FC(&v729, &v733, &v732, &v731);
              v431 = 0;
              v432 = 0;
              v729 = sub_1B039BCEC;
              v730 = v516;
              sub_1B03949FC(&v729, &v733, &v732, &v731);
              v429 = 0;
              v430 = 0;
              _os_log_impl(&dword_1B0389000, v480, v481, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Failed to extract attachments from full message download.", v465, 0x2Bu);
              sub_1B03998A8(v467);
              sub_1B03998A8(v470);
              sub_1B0E45D58();

              v464 = v429;
            }
          }

          else
          {
            v182 = v676;

            v464 = v182;
          }

          v428 = v464;

          (*(v702 + 8))(v705, v700);
          v426 = 0;
          v183 = sub_1B0E46A48();
          v425 = SectionSpecifier.Part.init(arrayLiteral:)(v183);
          sub_1B07AC570(v710, v693);
          v424 = 1;
          swift_storeEnumTagMultiPayload();
          (*(v718 + 56))(v693, 0, v424, v716);
          v734[3] = v425;
          v427 = v734;
          swift_beginAccess();
          sub_1B0E44788();
          swift_endAccess();
          v653 = v428;
        }

        v422 = v653;
        sub_1B07AC2FC(v710);
        v423 = v422;
      }

      else
      {
        v184 = v703;
        sub_1B0760B84(v719);
        (*(v702 + 16))(v184, v713, v700);
        sub_1B074B69C(v713, v699);
        sub_1B074B69C(v699, v697);
        sub_1B074E41C(v699, v695);
        v185 = (v697 + *(v694 + 20));
        v358 = *v185;
        v359 = *(v185 + 1);
        v360 = *(v185 + 1);
        v361 = *(v185 + 4);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B074B764(v697);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v357 = 36;
        v395 = 7;
        v186 = swift_allocObject();
        v187 = v359;
        v188 = v360;
        v189 = v361;
        v370 = v186;
        *(v186 + 16) = v358;
        *(v186 + 20) = v187;
        *(v186 + 24) = v188;
        *(v186 + 32) = v189;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v190 = swift_allocObject();
        v191 = v359;
        v192 = v360;
        v193 = v361;
        v356 = v190;
        *(v190 + 16) = v358;
        *(v190 + 20) = v191;
        *(v190 + 24) = v192;
        *(v190 + 32) = v193;

        v394 = 32;
        v194 = swift_allocObject();
        v195 = v356;
        v383 = v194;
        *(v194 + 16) = sub_1B074E050;
        *(v194 + 24) = v195;
        sub_1B0394868();
        sub_1B0394868();

        v196 = swift_allocObject();
        v197 = v359;
        v198 = v360;
        v199 = v361;
        v200 = v196;
        v201 = v695;
        v396 = v200;
        *(v200 + 16) = v358;
        *(v200 + 20) = v197;
        *(v200 + 24) = v198;
        *(v200 + 32) = v199;
        sub_1B074B764(v201);
        v421 = sub_1B0E43988();
        v362 = v421;
        v420 = sub_1B0E458F8();
        v363 = v420;
        v390 = 17;
        v399 = swift_allocObject();
        v364 = v399;
        v373 = 16;
        *(v399 + 16) = 16;
        v400 = swift_allocObject();
        v365 = v400;
        v381 = 4;
        *(v400 + 16) = 4;
        v202 = swift_allocObject();
        v366 = v202;
        *(v202 + 16) = sub_1B0394C30;
        v376 = 0;
        *(v202 + 24) = 0;
        v203 = swift_allocObject();
        v204 = v366;
        v401 = v203;
        v367 = v203;
        *(v203 + 16) = sub_1B0394C24;
        *(v203 + 24) = v204;
        v402 = swift_allocObject();
        v368 = v402;
        v379 = 0;
        *(v402 + 16) = 0;
        v403 = swift_allocObject();
        v369 = v403;
        *(v403 + 16) = 1;
        v205 = swift_allocObject();
        v206 = v370;
        v371 = v205;
        *(v205 + 16) = sub_1B074DFFC;
        *(v205 + 24) = v206;
        v207 = swift_allocObject();
        v208 = v371;
        v404 = v207;
        v372 = v207;
        *(v207 + 16) = sub_1B039BA88;
        *(v207 + 24) = v208;
        v405 = swift_allocObject();
        v374 = v405;
        *(v405 + 16) = v373;
        v406 = swift_allocObject();
        v375 = v406;
        *(v406 + 16) = v381;
        v209 = swift_allocObject();
        v210 = v376;
        v377 = v209;
        *(v209 + 16) = sub_1B039BB94;
        *(v209 + 24) = v210;
        v211 = swift_allocObject();
        v212 = v377;
        v407 = v211;
        v378 = v211;
        *(v211 + 16) = sub_1B0394C24;
        *(v211 + 24) = v212;
        v408 = swift_allocObject();
        v380 = v408;
        *(v408 + 16) = v379;
        v409 = swift_allocObject();
        v382 = v409;
        *(v409 + 16) = v381;
        v213 = swift_allocObject();
        v214 = v383;
        v384 = v213;
        *(v213 + 16) = sub_1B039BBA0;
        *(v213 + 24) = v214;
        v215 = swift_allocObject();
        v216 = v384;
        v410 = v215;
        v385 = v215;
        *(v215 + 16) = sub_1B039BC08;
        *(v215 + 24) = v216;
        v411 = swift_allocObject();
        v386 = v411;
        *(v411 + 16) = 112;
        v412 = swift_allocObject();
        v387 = v412;
        v392 = 8;
        *(v412 + 16) = 8;
        v388 = swift_allocObject();
        *(v388 + 16) = 0x786F626C69616DLL;
        v217 = swift_allocObject();
        v218 = v388;
        v413 = v217;
        v389 = v217;
        *(v217 + 16) = sub_1B06BA324;
        *(v217 + 24) = v218;
        v414 = swift_allocObject();
        v391 = v414;
        *(v414 + 16) = 37;
        v415 = swift_allocObject();
        v393 = v415;
        *(v415 + 16) = v392;
        v219 = swift_allocObject();
        v220 = v396;
        v397 = v219;
        *(v219 + 16) = sub_1B074E0E4;
        *(v219 + 24) = v220;
        v221 = swift_allocObject();
        v222 = v397;
        v418 = v221;
        v398 = v221;
        *(v221 + 16) = sub_1B039BCF8;
        *(v221 + 24) = v222;
        v419 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v416 = sub_1B0E46A48();
        v417 = v223;

        v224 = v399;
        v225 = v417;
        *v417 = sub_1B0398F5C;
        v225[1] = v224;

        v226 = v400;
        v227 = v417;
        v417[2] = sub_1B0398F5C;
        v227[3] = v226;

        v228 = v401;
        v229 = v417;
        v417[4] = sub_1B0399178;
        v229[5] = v228;

        v230 = v402;
        v231 = v417;
        v417[6] = sub_1B0398F5C;
        v231[7] = v230;

        v232 = v403;
        v233 = v417;
        v417[8] = sub_1B0398F5C;
        v233[9] = v232;

        v234 = v404;
        v235 = v417;
        v417[10] = sub_1B039BA94;
        v235[11] = v234;

        v236 = v405;
        v237 = v417;
        v417[12] = sub_1B0398F5C;
        v237[13] = v236;

        v238 = v406;
        v239 = v417;
        v417[14] = sub_1B0398F5C;
        v239[15] = v238;

        v240 = v407;
        v241 = v417;
        v417[16] = sub_1B0399178;
        v241[17] = v240;

        v242 = v408;
        v243 = v417;
        v417[18] = sub_1B0398F5C;
        v243[19] = v242;

        v244 = v409;
        v245 = v417;
        v417[20] = sub_1B0398F5C;
        v245[21] = v244;

        v246 = v410;
        v247 = v417;
        v417[22] = sub_1B03991EC;
        v247[23] = v246;

        v248 = v411;
        v249 = v417;
        v417[24] = sub_1B0398F5C;
        v249[25] = v248;

        v250 = v412;
        v251 = v417;
        v417[26] = sub_1B0398F5C;
        v251[27] = v250;

        v252 = v413;
        v253 = v417;
        v417[28] = sub_1B03993BC;
        v253[29] = v252;

        v254 = v414;
        v255 = v417;
        v417[30] = sub_1B0398F5C;
        v255[31] = v254;

        v256 = v415;
        v257 = v417;
        v417[32] = sub_1B0398F5C;
        v257[33] = v256;

        v258 = v417;
        v259 = v418;
        v417[34] = sub_1B039BCEC;
        v258[35] = v259;
        sub_1B0394964();

        if (os_log_type_enabled(v421, v420))
        {
          v260 = v676;
          v350 = sub_1B0E45D78();
          v347 = v350;
          v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v351 = sub_1B03949A8(0);
          v349 = v351;
          v352 = sub_1B03949A8(1);
          v739 = v350;
          v738 = v351;
          v737 = v352;
          v353 = &v739;
          sub_1B0394A48(3, &v739);
          sub_1B0394A48(6, v353);
          v735 = sub_1B0398F5C;
          v736 = v364;
          sub_1B03949FC(&v735, v353, &v738, &v737);
          v354 = v260;
          v355 = v260;
          if (v260)
          {
            v345 = 0;

            __break(1u);
          }

          else
          {
            v735 = sub_1B0398F5C;
            v736 = v365;
            sub_1B03949FC(&v735, &v739, &v738, &v737);
            v343 = 0;
            v344 = 0;
            v735 = sub_1B0399178;
            v736 = v367;
            sub_1B03949FC(&v735, &v739, &v738, &v737);
            v341 = 0;
            v342 = 0;
            v735 = sub_1B0398F5C;
            v736 = v368;
            sub_1B03949FC(&v735, &v739, &v738, &v737);
            v339 = 0;
            v340 = 0;
            v735 = sub_1B0398F5C;
            v736 = v369;
            sub_1B03949FC(&v735, &v739, &v738, &v737);
            v337 = 0;
            v338 = 0;
            v735 = sub_1B039BA94;
            v736 = v372;
            sub_1B03949FC(&v735, &v739, &v738, &v737);
            v335 = 0;
            v336 = 0;
            v735 = sub_1B0398F5C;
            v736 = v374;
            sub_1B03949FC(&v735, &v739, &v738, &v737);
            v333 = 0;
            v334 = 0;
            v735 = sub_1B0398F5C;
            v736 = v375;
            sub_1B03949FC(&v735, &v739, &v738, &v737);
            v331 = 0;
            v332 = 0;
            v735 = sub_1B0399178;
            v736 = v378;
            sub_1B03949FC(&v735, &v739, &v738, &v737);
            v329 = 0;
            v330 = 0;
            v735 = sub_1B0398F5C;
            v736 = v380;
            sub_1B03949FC(&v735, &v739, &v738, &v737);
            v327 = 0;
            v328 = 0;
            v735 = sub_1B0398F5C;
            v736 = v382;
            sub_1B03949FC(&v735, &v739, &v738, &v737);
            v325 = 0;
            v326 = 0;
            v735 = sub_1B03991EC;
            v736 = v385;
            sub_1B03949FC(&v735, &v739, &v738, &v737);
            v323 = 0;
            v324 = 0;
            v735 = sub_1B0398F5C;
            v736 = v386;
            sub_1B03949FC(&v735, &v739, &v738, &v737);
            v321 = 0;
            v322 = 0;
            v735 = sub_1B0398F5C;
            v736 = v387;
            sub_1B03949FC(&v735, &v739, &v738, &v737);
            v319 = 0;
            v320 = 0;
            v735 = sub_1B03993BC;
            v736 = v389;
            sub_1B03949FC(&v735, &v739, &v738, &v737);
            v317 = 0;
            v318 = 0;
            v735 = sub_1B0398F5C;
            v736 = v391;
            sub_1B03949FC(&v735, &v739, &v738, &v737);
            v315 = 0;
            v316 = 0;
            v735 = sub_1B0398F5C;
            v736 = v393;
            sub_1B03949FC(&v735, &v739, &v738, &v737);
            v313 = 0;
            v314 = 0;
            v735 = sub_1B039BCEC;
            v736 = v398;
            sub_1B03949FC(&v735, &v739, &v738, &v737);
            v311 = 0;
            v312 = 0;
            _os_log_impl(&dword_1B0389000, v362, v363, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Got a completed full message that’s not a completed section.", v347, 0x2Bu);
            sub_1B03998A8(v349);
            sub_1B03998A8(v352);
            sub_1B0E45D58();

            v346 = v311;
          }
        }

        else
        {
          v261 = v676;

          v346 = v261;
        }

        v310 = v346;

        (*(v702 + 8))(v703, v700);
        v423 = v310;
      }

      v309 = v423;
      sub_1B0760B84(v723);
      sub_1B07AC53C(v655, v656, v654 & 1);
      v660 = v309;
    }
  }

  v262 = v660;
  v288 = *(v683 + 16);
  v297 = 32;
  v289 = &v756;
  v304 = 0;
  swift_beginAccess();
  v263 = *(v683 + 24);
  v264 = *(v683 + 40);
  v265 = *(v683 + 56);
  v767[3] = *(v683 + 72);
  v767[2] = v265;
  v767[1] = v264;
  v767[0] = v263;
  v266 = *(v683 + 88);
  v267 = *(v683 + 104);
  v268 = *(v683 + 120);
  v767[7] = *(v683 + 136);
  v767[6] = v268;
  v767[5] = v267;
  v767[4] = v266;
  v269 = *(v683 + 152);
  v270 = *(v683 + 168);
  v271 = *(v683 + 184);
  v768 = *(v683 + 200);
  v767[10] = v271;
  v767[9] = v270;
  v767[8] = v269;
  sub_1B075DC38(v767, v755);
  swift_endAccess();
  v290 = (v683 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_existingData);
  v291 = &v754;
  swift_beginAccess();
  sub_1B075E87C(v290, v691);
  swift_endAccess();
  v292 = (v683 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_downloadedHeader);
  v293 = &v753;
  swift_beginAccess();
  sub_1B075EE10(v292, v690);
  swift_endAccess();
  v294 = (v683 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_passAndActionID);
  v295 = &v752;
  swift_beginAccess();
  v296 = *v294;
  swift_endAccess();
  v298 = (v683 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_sections);
  v301 = &v751;
  swift_beginAccess();
  v299 = *v298;
  v300 = sub_1B07167A8();
  v302 = sub_1B0E446B8();
  swift_endAccess();
  v750 = v302;
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20B8, &qword_1B0E9B540);
  v303 = v305;
  v306 = sub_1B07AC484();
  v272 = sub_1B0E44F58();
  v307 = v262;
  v308 = v272;
  if (!v262)
  {
    v281 = v308;
    sub_1B039E440(&v750);
    v282 = (v683 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_sections);
    v283 = &v749;
    v285 = 0;
    swift_beginAccess();
    v273 = *v282;
    v284 = sub_1B0E446B8();
    swift_endAccess();
    v748 = v284;
    v274 = sub_1B0E44F58();
    v286 = 0;
    v287 = v274;
    v279 = v274;
    sub_1B039E440(&v748);
    v278[0] = (v683 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_cleanedUpFullMessageData);
    v278[1] = &v747;
    v280 = 0;
    swift_beginAccess();
    sub_1B075F4A8(v278[0], v688);
    swift_endAccess();
    sub_1B07677F4(v288, v767, v691, v690, v296, v281, v279, v688, v684);
    v275 = type metadata accessor for InProgressMessageDownload.Completed();
    (*(*(v275 - 8) + 56))(v684, 0, 1);
    return v286;
  }

LABEL_44:
  __break(1u);
  result = 0;
  __break(1u);
  return result;
}

uint64_t sub_1B077136C()
{
  v6[4] = 0;
  v3 = (v0 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_sections);
  swift_beginAccess();
  v4 = *v3;
  type metadata accessor for InProgressMessageDownload.Section();
  sub_1B07167A8();
  v5 = sub_1B0E446B8();
  swift_endAccess();
  v6[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20B8, &qword_1B0E9B540);
  sub_1B07AC484();
  v2 = sub_1B0E44F48();
  sub_1B039E440(v6);
  return v2 & 1;
}

uint64_t sub_1B077148C(uint64_t a1)
{
  v1 = sub_1B0E46A48();
  v4 = SectionSpecifier.Part.init(arrayLiteral:)(v1);
  v5 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(a1, v4);

  return v5 & 1;
}

uint64_t sub_1B07714F8(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v6 = *a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20B0, &qword_1B0E9B538);
  return a2(v6, &a1[*(v2 + 48)]) & 1;
}

uint64_t sub_1B0771570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v108 = a1;
  v110 = a2;
  v111 = a3;
  v114 = a4;
  v112 = a5;
  v116 = sub_1B07AC8AC;
  v38 = sub_1B074E050;
  v39 = sub_1B07AAFA4;
  v40 = sub_1B0394C30;
  v41 = sub_1B0394C24;
  v42 = sub_1B074DFFC;
  v43 = sub_1B039BA88;
  v44 = sub_1B039BB94;
  v45 = sub_1B0394C24;
  v46 = sub_1B039BBA0;
  v47 = sub_1B039BC08;
  v48 = sub_1B06BA324;
  v49 = sub_1B074E0E4;
  v50 = sub_1B039BCF8;
  v51 = sub_1B07AB020;
  v52 = sub_1B039BC08;
  v53 = sub_1B0398F5C;
  v54 = sub_1B0398F5C;
  v55 = sub_1B0399178;
  v56 = sub_1B0398F5C;
  v57 = sub_1B0398F5C;
  v58 = sub_1B039BA94;
  v59 = sub_1B0398F5C;
  v60 = sub_1B0398F5C;
  v61 = sub_1B0399178;
  v62 = sub_1B0398F5C;
  v63 = sub_1B0398F5C;
  v64 = sub_1B03991EC;
  v65 = sub_1B0398F5C;
  v66 = sub_1B0398F5C;
  v67 = sub_1B03993BC;
  v68 = sub_1B0398F5C;
  v69 = sub_1B0398F5C;
  v70 = sub_1B039BCEC;
  v71 = sub_1B0398F5C;
  v72 = sub_1B0398F5C;
  v73 = sub_1B03991EC;
  v137 = 0;
  v136 = 0;
  v134 = 0;
  v135 = 0;
  v133 = 0;
  v132 = 0;
  v131 = 0;
  v113 = &v130;
  v130 = 0;
  v129 = 0;
  v127[0] = 0;
  v127[1] = 0;
  v123 = 0;
  v122 = 0;
  v97 = 0;
  v74 = _s6LoggerVMa_1();
  v75 = (*(*(v74 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](0);
  v76 = &v22[-v75];
  v77 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v78 = &v22[-v77];
  v79 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v80 = &v22[-v79];
  v81 = sub_1B0E439A8();
  v82 = *(v81 - 8);
  v83 = v81 - 8;
  v84 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v81);
  v85 = &v22[-v84];
  v86 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v22[-v84]);
  v87 = &v22[-v86];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2080, &qword_1B0E9B510);
  v88 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v89 = &v22[-v88];
  v90 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v97);
  v91 = &v22[-v90];
  v103 = sub_1B0E443C8();
  v101 = *(v103 - 8);
  v102 = v103 - 8;
  v95 = *(v101 + 64);
  v92 = (v95 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v108);
  v93 = &v22[-v92];
  v94 = (v95 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v13 = &v22[-v94];
  v104 = &v22[-v94];
  v96 = (v95 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v115 = &v22[-v96];
  v137 = &v22[-v96];
  v136 = v14;
  v134 = v15;
  v135 = v16;
  v133 = v17;
  v132 = v18;
  v131 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20C0, &qword_1B0E9B548);
  v130 = sub_1B0E46A48();
  v98 = type metadata accessor for MessageSectionDataConcatenator.CompleteSection();
  v20 = *(v98 + 28);
  v99 = *(v101 + 16);
  v100 = v101 + 16;
  v99(v13, v108 + v20, v103);
  v107 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  v105 = *(v101 + 8);
  v106 = v101 + 8;
  v105(v104, v103);

  v119[2] = v108;
  v119[3] = v109;
  v119[4] = v110;
  v119[5] = v111;
  v119[6] = v112;
  v119[7] = v113;
  v119[8] = v114;
  sub_1B077E63C(v107, v116, v119, v115);
  v117 = 0;
  v118 = 0;

  v99(v91, v115, v103);
  (*(v101 + 56))(v91, 0, 1, v103);
  v33 = (v109 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_cleanedUpFullMessageData);
  v34 = &v128;
  swift_beginAccess();
  sub_1B075F6A0(v91, v33);
  swift_endAccess();
  v35 = v130;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v126 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20C8, &qword_1B0E9B550);
  sub_1B07AC8FC();
  sub_1B0E45798();
  for (i = v117; ; i = v30)
  {
    v30 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20D0, &qword_1B0E9B558);
    sub_1B0E46518();
    v31 = v124;
    v32 = v125;
    if (!v124)
    {
      break;
    }

    v28 = v31;
    v29 = v32;
    v26 = v32;
    v27 = v31;
    v123 = v31;
    v122 = v32;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    *v89 = v26;
    v23 = type metadata accessor for InProgressMessageDownload.Section();
    swift_storeEnumTagMultiPayload();
    (*(*(v23 - 8) + 56))(v89, 0, 1);
    v24 = &v121;
    v121 = v27;
    v25 = &v120;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2090, &qword_1B0E9B520);
    sub_1B0E44788();
    swift_endAccess();
  }

  sub_1B039E440(v127);
  v105(v115, v103);
  sub_1B039E440(&v130);
  return 1;
}

void *sub_1B0773254@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5[0] = a2;
  v7 = a1;
  v16 = 0;
  v15 = 0;
  v5[2] = 0;
  v13 = type metadata accessor for InProgressMessageDownload.Section();
  v6 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v14 = (v5 - v6);
  v8 = type metadata accessor for MessageSectionDataConcatenator.CompleteSection();
  v9 = *(v8 - 8);
  v10 = v8 - 8;
  v11 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v7);
  v12 = (v5 - v11);
  v16 = v5 - v11;
  v15 = v2;
  sub_1B0760600(v2, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B07AC238(v14, v12);
    sub_1B07AC570(v12, v5[0]);
    (*(v9 + 56))(v5[0], 0, 1, v8);
    return sub_1B07AC2FC(v12);
  }

  else
  {
    sub_1B0760B84(v14);
    return (*(v9 + 56))(v5[0], 1, 1, v8);
  }
}

uint64_t *sub_1B077341C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v19 = a2;
  v20 = a1;
  v25 = 0;
  memset(__b, 0, sizeof(__b));
  v22 = type metadata accessor for InProgressMessageDownload.Section();
  v21 = (*(*(v22 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = (&v11 - v21);
  v25 = MEMORY[0x1EEE9AC00](v20);
  sub_1B0760600(v25, (&v11 - v21));
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v12 = *v23;
    v13 = v23[1];
    v16 = v23[2];
    v14 = v23[3];
    v17 = v23[4];
    v15 = v23[5];
    v18 = v23[6];
    __b[0] = v12;
    __b[1] = v13;
    __b[2] = v16;
    __b[3] = v14;
    __b[4] = v17;
    __b[5] = v15;
    __b[6] = v18;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v4 = v13;
    v5 = v14;
    v6 = v15;
    v7 = v19;
    v8 = v16;
    v9 = v17;
    v10 = v18;
    *v19 = v12;
    v7[1] = v4;
    v7[2] = v8;
    v7[3] = v5;
    v7[4] = v9;
    v7[5] = v6;
    v7[6] = v10;
  }

  else
  {
    result = sub_1B0760B84(v23);
    v3 = v19;
    *v19 = 0;
    v3[1] = 0;
    v3[2] = 0;
    v3[3] = 0;
    v3[4] = 0;
    v3[5] = 0;
    v3[6] = 0;
  }

  return result;
}

uint64_t *sub_1B07735E0(unsigned int a1, int a2, uint64_t a3)
{
  v306 = a3;
  v308 = a2;
  v307 = a1;
  v328 = 0;
  v327 = 0;
  v299 = 0;
  v326 = 0;
  v325 = 0;
  v324 = 0;
  v297 = 0;
  v298 = a1;
  v300 = _s6LoggerVMa_1();
  v302 = *(*(v300 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](0);
  v304 = (v302 + 15) & 0xFFFFFFFFFFFFFFF0;
  v301 = &v122 - v304;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v303 = &v122 - v304;
  MEMORY[0x1EEE9AC00](v5);
  v305 = &v122 - v304;
  v309 = sub_1B0E439A8();
  v310 = *(v309 - 8);
  v311 = v310;
  v6 = *(v310 + 64);
  v7 = MEMORY[0x1EEE9AC00](v307);
  v312 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v328 = v7 & 1;
  v327 = v9;
  v326 = v10;
  v325 = v3;
  if (sub_1B0765644())
  {
    v271 = (v296 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_passAndActionID);
    v270 = v296 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_passAndActionID;
    swift_beginAccess();
    if (*v271 == 2)
    {
      LODWORD(v120) = 0;
      v119 = 295;
      v118 = 2;
      sub_1B0E465A8();
      __break(1u);
    }

    v15 = v312;
    v188 = *(v270 + 4);
    swift_endAccess();
    v324 = v188;
    (*(v311 + 16))(v15, v306, v309);
    sub_1B074B69C(v306, v305);
    sub_1B074B69C(v305, v303);
    sub_1B074E41C(v305, v301);
    v16 = (v303 + *(v300 + 20));
    v184 = *v16;
    v185 = *(v16 + 1);
    v186 = *(v16 + 1);
    v187 = *(v16 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v303);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v183 = 36;
    v236 = 7;
    v17 = swift_allocObject();
    v18 = v185;
    v19 = v186;
    v20 = v187;
    v200 = v17;
    *(v17 + 16) = v184;
    *(v17 + 20) = v18;
    *(v17 + 24) = v19;
    *(v17 + 32) = v20;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v21 = swift_allocObject();
    v22 = v185;
    v23 = v186;
    v24 = v187;
    v182 = v21;
    *(v21 + 16) = v184;
    *(v21 + 20) = v22;
    *(v21 + 24) = v23;
    *(v21 + 32) = v24;

    v230 = 32;
    v235 = 32;
    v25 = swift_allocObject();
    v26 = v182;
    v213 = v25;
    *(v25 + 16) = sub_1B074E050;
    *(v25 + 24) = v26;
    sub_1B0394868();
    sub_1B0394868();

    v27 = swift_allocObject();
    v28 = v185;
    v29 = v186;
    v30 = v187;
    v31 = v27;
    v32 = v301;
    v222 = v31;
    *(v31 + 16) = v184;
    *(v31 + 20) = v28;
    *(v31 + 24) = v29;
    *(v31 + 32) = v30;
    sub_1B074B764(v32);
    v190 = 20;
    v189 = swift_allocObject();
    *(v189 + 16) = v188;

    v33 = swift_allocObject();
    v34 = v189;
    v227 = v33;
    *(v33 + 16) = sub_1B07AC984;
    *(v33 + 24) = v34;

    v191 = swift_allocObject();
    *(v191 + 16) = v308;

    v35 = swift_allocObject();
    v36 = v191;
    v237 = v35;
    *(v35 + 16) = sub_1B07AC984;
    *(v35 + 24) = v36;

    v269 = sub_1B0E43988();
    v192 = v269;
    v268 = sub_1B0E458E8();
    v193 = v268;
    v231 = 17;
    v241 = swift_allocObject();
    v194 = v241;
    v203 = 16;
    *(v241 + 16) = 16;
    v242 = swift_allocObject();
    v195 = v242;
    v211 = 4;
    *(v242 + 16) = 4;
    v37 = swift_allocObject();
    v196 = v37;
    *(v37 + 16) = sub_1B0394C30;
    v206 = 0;
    *(v37 + 24) = 0;
    v38 = swift_allocObject();
    v39 = v196;
    v243 = v38;
    v197 = v38;
    *(v38 + 16) = sub_1B0394C24;
    *(v38 + 24) = v39;
    v244 = swift_allocObject();
    v198 = v244;
    v209 = 0;
    *(v244 + 16) = 0;
    v245 = swift_allocObject();
    v199 = v245;
    *(v245 + 16) = 1;
    v40 = swift_allocObject();
    v41 = v200;
    v201 = v40;
    *(v40 + 16) = sub_1B074DFFC;
    *(v40 + 24) = v41;
    v42 = swift_allocObject();
    v43 = v201;
    v246 = v42;
    v202 = v42;
    *(v42 + 16) = sub_1B039BA88;
    *(v42 + 24) = v43;
    v247 = swift_allocObject();
    v204 = v247;
    *(v247 + 16) = v203;
    v248 = swift_allocObject();
    v205 = v248;
    *(v248 + 16) = v211;
    v44 = swift_allocObject();
    v45 = v206;
    v207 = v44;
    *(v44 + 16) = sub_1B039BB94;
    *(v44 + 24) = v45;
    v46 = swift_allocObject();
    v47 = v207;
    v249 = v46;
    v208 = v46;
    *(v46 + 16) = sub_1B0394C24;
    *(v46 + 24) = v47;
    v250 = swift_allocObject();
    v210 = v250;
    *(v250 + 16) = v209;
    v251 = swift_allocObject();
    v212 = v251;
    *(v251 + 16) = v211;
    v48 = swift_allocObject();
    v49 = v213;
    v214 = v48;
    *(v48 + 16) = sub_1B039BBA0;
    *(v48 + 24) = v49;
    v50 = swift_allocObject();
    v51 = v214;
    v252 = v50;
    v215 = v50;
    *(v50 + 16) = sub_1B039BC08;
    *(v50 + 24) = v51;
    v253 = swift_allocObject();
    v216 = v253;
    *(v253 + 16) = 112;
    v254 = swift_allocObject();
    v217 = v254;
    v233 = 8;
    *(v254 + 16) = 8;
    v240 = 24;
    v218 = swift_allocObject();
    *(v218 + 16) = 0x786F626C69616DLL;
    v52 = swift_allocObject();
    v53 = v218;
    v255 = v52;
    v219 = v52;
    *(v52 + 16) = sub_1B06BA324;
    *(v52 + 24) = v53;
    v256 = swift_allocObject();
    v220 = v256;
    *(v256 + 16) = 37;
    v257 = swift_allocObject();
    v221 = v257;
    *(v257 + 16) = v233;
    v54 = swift_allocObject();
    v55 = v222;
    v223 = v54;
    *(v54 + 16) = sub_1B074E0E4;
    *(v54 + 24) = v55;
    v56 = swift_allocObject();
    v57 = v223;
    v258 = v56;
    v224 = v56;
    *(v56 + 16) = sub_1B039BCF8;
    *(v56 + 24) = v57;
    v259 = swift_allocObject();
    v225 = v259;
    *(v259 + 16) = v230;
    v260 = swift_allocObject();
    v226 = v260;
    *(v260 + 16) = v233;
    v58 = swift_allocObject();
    v59 = v227;
    v228 = v58;
    *(v58 + 16) = sub_1B03FB220;
    *(v58 + 24) = v59;
    v60 = swift_allocObject();
    v61 = v228;
    v261 = v60;
    v229 = v60;
    *(v60 + 16) = sub_1B039BCF8;
    *(v60 + 24) = v61;
    v262 = swift_allocObject();
    v232 = v262;
    *(v262 + 16) = v230;
    v263 = swift_allocObject();
    v234 = v263;
    *(v263 + 16) = v233;
    v62 = swift_allocObject();
    v63 = v237;
    v238 = v62;
    *(v62 + 16) = sub_1B03FB220;
    *(v62 + 24) = v63;
    v64 = swift_allocObject();
    v65 = v238;
    v266 = v64;
    v239 = v64;
    *(v64 + 16) = sub_1B039BCF8;
    *(v64 + 24) = v65;
    v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v264 = sub_1B0E46A48();
    v265 = v66;

    v67 = v241;
    v68 = v265;
    *v265 = sub_1B0398F5C;
    v68[1] = v67;

    v69 = v242;
    v70 = v265;
    v265[2] = sub_1B0398F5C;
    v70[3] = v69;

    v71 = v243;
    v72 = v265;
    v265[4] = sub_1B0399178;
    v72[5] = v71;

    v73 = v244;
    v74 = v265;
    v265[6] = sub_1B0398F5C;
    v74[7] = v73;

    v75 = v245;
    v76 = v265;
    v265[8] = sub_1B0398F5C;
    v76[9] = v75;

    v77 = v246;
    v78 = v265;
    v265[10] = sub_1B039BA94;
    v78[11] = v77;

    v79 = v247;
    v80 = v265;
    v265[12] = sub_1B0398F5C;
    v80[13] = v79;

    v81 = v248;
    v82 = v265;
    v265[14] = sub_1B0398F5C;
    v82[15] = v81;

    v83 = v249;
    v84 = v265;
    v265[16] = sub_1B0399178;
    v84[17] = v83;

    v85 = v250;
    v86 = v265;
    v265[18] = sub_1B0398F5C;
    v86[19] = v85;

    v87 = v251;
    v88 = v265;
    v265[20] = sub_1B0398F5C;
    v88[21] = v87;

    v89 = v252;
    v90 = v265;
    v265[22] = sub_1B03991EC;
    v90[23] = v89;

    v91 = v253;
    v92 = v265;
    v265[24] = sub_1B0398F5C;
    v92[25] = v91;

    v93 = v254;
    v94 = v265;
    v265[26] = sub_1B0398F5C;
    v94[27] = v93;

    v95 = v255;
    v96 = v265;
    v265[28] = sub_1B03993BC;
    v96[29] = v95;

    v97 = v256;
    v98 = v265;
    v265[30] = sub_1B0398F5C;
    v98[31] = v97;

    v99 = v257;
    v100 = v265;
    v265[32] = sub_1B0398F5C;
    v100[33] = v99;

    v101 = v258;
    v102 = v265;
    v265[34] = sub_1B039BCEC;
    v102[35] = v101;

    v103 = v259;
    v104 = v265;
    v265[36] = sub_1B0398F5C;
    v104[37] = v103;

    v105 = v260;
    v106 = v265;
    v265[38] = sub_1B0398F5C;
    v106[39] = v105;

    v107 = v261;
    v108 = v265;
    v265[40] = sub_1B039BCEC;
    v108[41] = v107;

    v109 = v262;
    v110 = v265;
    v265[42] = sub_1B0398F5C;
    v110[43] = v109;

    v111 = v263;
    v112 = v265;
    v265[44] = sub_1B0398F5C;
    v112[45] = v111;

    v113 = v265;
    v114 = v266;
    v265[46] = sub_1B039BCEC;
    v113[47] = v114;
    sub_1B0394964();

    if (os_log_type_enabled(v269, v268))
    {
      v115 = v297;
      v175 = sub_1B0E45D78();
      v172 = v175;
      v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v176 = sub_1B03949A8(0);
      v174 = v176;
      v177 = 3;
      v178 = sub_1B03949A8(3);
      v323 = v175;
      v322 = v176;
      v321 = v178;
      v179 = &v323;
      sub_1B0394A48(v177, &v323);
      sub_1B0394A48(8, v179);
      v319 = sub_1B0398F5C;
      v320 = v194;
      sub_1B03949FC(&v319, v179, &v322, &v321);
      v180 = v115;
      v181 = v115;
      if (v115)
      {
        v170 = 0;

        __break(1u);
      }

      else
      {
        v319 = sub_1B0398F5C;
        v320 = v195;
        sub_1B03949FC(&v319, &v323, &v322, &v321);
        v168 = 0;
        v169 = 0;
        v319 = sub_1B0399178;
        v320 = v197;
        sub_1B03949FC(&v319, &v323, &v322, &v321);
        v166 = 0;
        v167 = 0;
        v319 = sub_1B0398F5C;
        v320 = v198;
        sub_1B03949FC(&v319, &v323, &v322, &v321);
        v164 = 0;
        v165 = 0;
        v319 = sub_1B0398F5C;
        v320 = v199;
        sub_1B03949FC(&v319, &v323, &v322, &v321);
        v162 = 0;
        v163 = 0;
        v319 = sub_1B039BA94;
        v320 = v202;
        sub_1B03949FC(&v319, &v323, &v322, &v321);
        v160 = 0;
        v161 = 0;
        v319 = sub_1B0398F5C;
        v320 = v204;
        sub_1B03949FC(&v319, &v323, &v322, &v321);
        v158 = 0;
        v159 = 0;
        v319 = sub_1B0398F5C;
        v320 = v205;
        sub_1B03949FC(&v319, &v323, &v322, &v321);
        v156 = 0;
        v157 = 0;
        v319 = sub_1B0399178;
        v320 = v208;
        sub_1B03949FC(&v319, &v323, &v322, &v321);
        v154 = 0;
        v155 = 0;
        v319 = sub_1B0398F5C;
        v320 = v210;
        sub_1B03949FC(&v319, &v323, &v322, &v321);
        v152 = 0;
        v153 = 0;
        v319 = sub_1B0398F5C;
        v320 = v212;
        sub_1B03949FC(&v319, &v323, &v322, &v321);
        v150 = 0;
        v151 = 0;
        v319 = sub_1B03991EC;
        v320 = v215;
        sub_1B03949FC(&v319, &v323, &v322, &v321);
        v148 = 0;
        v149 = 0;
        v319 = sub_1B0398F5C;
        v320 = v216;
        sub_1B03949FC(&v319, &v323, &v322, &v321);
        v146 = 0;
        v147 = 0;
        v319 = sub_1B0398F5C;
        v320 = v217;
        sub_1B03949FC(&v319, &v323, &v322, &v321);
        v144 = 0;
        v145 = 0;
        v319 = sub_1B03993BC;
        v320 = v219;
        sub_1B03949FC(&v319, &v323, &v322, &v321);
        v142 = 0;
        v143 = 0;
        v319 = sub_1B0398F5C;
        v320 = v220;
        sub_1B03949FC(&v319, &v323, &v322, &v321);
        v140 = 0;
        v141 = 0;
        v319 = sub_1B0398F5C;
        v320 = v221;
        sub_1B03949FC(&v319, &v323, &v322, &v321);
        v138 = 0;
        v139 = 0;
        v319 = sub_1B039BCEC;
        v320 = v224;
        sub_1B03949FC(&v319, &v323, &v322, &v321);
        v136 = 0;
        v137 = 0;
        v319 = sub_1B0398F5C;
        v320 = v225;
        sub_1B03949FC(&v319, &v323, &v322, &v321);
        v134 = 0;
        v135 = 0;
        v319 = sub_1B0398F5C;
        v320 = v226;
        sub_1B03949FC(&v319, &v323, &v322, &v321);
        v132 = 0;
        v133 = 0;
        v319 = sub_1B039BCEC;
        v320 = v229;
        sub_1B03949FC(&v319, &v323, &v322, &v321);
        v130 = 0;
        v131 = 0;
        v319 = sub_1B0398F5C;
        v320 = v232;
        sub_1B03949FC(&v319, &v323, &v322, &v321);
        v128 = 0;
        v129 = 0;
        v319 = sub_1B0398F5C;
        v320 = v234;
        sub_1B03949FC(&v319, &v323, &v322, &v321);
        v126 = 0;
        v127 = 0;
        v319 = sub_1B039BCEC;
        v320 = v239;
        sub_1B03949FC(&v319, &v323, &v322, &v321);
        v124 = 0;
        v125 = 0;
        _os_log_impl(&dword_1B0389000, v192, v193, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] In-progress download already has action ID %s while trying to store %s", v172, 0x3Fu);
        sub_1B03998A8(v174);
        sub_1B03998A8(v178);
        sub_1B0E45D58();

        v171 = v124;
      }
    }

    else
    {
      v116 = v297;

      v171 = v116;
    }

    v123 = v171;

    (*(v311 + 8))(v312, v309);
    return v123;
  }

  v11 = v297;
  v285 = (v296 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_sections);
  v289 = 32;
  v286 = &v318;
  swift_beginAccess();
  v287 = *v285;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v317 = v287;
  v288 = &v122;
  MEMORY[0x1EEE9AC00](&v122);
  v290 = &v122;
  MEMORY[0x1EEE9AC00](&v122);
  v291 = &v118;
  v120 = sub_1B07ACA04;
  v121 = v12;
  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2090, &qword_1B0E9B520);
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2078, &qword_1B0E9B508);
  sub_1B07ACA38();
  v13 = sub_1B0E44F58();
  v294 = v11;
  v295 = v13;
  if (!v11)
  {
    v272 = v295;
    sub_1B039E440(&v317);
    v316 = v272;
    v280 = 0;
    v273 = type metadata accessor for InProgressMessageDownload.Section();
    v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20D8, &unk_1B0E9B560);
    v275 = sub_1B07167A8();
    sub_1B07ACAC0();
    v277 = sub_1B0E445E8();
    v276 = (v296 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_sections);
    v279 = 33;
    v278 = &v315;
    swift_beginAccess();
    v14 = *v276;
    *v276 = v277;

    swift_endAccess();
    v314 = sub_1B07677D8(v298 & 1, v308);
    v282 = v314 | (HIDWORD(v314) << 32);
    v281 = (v296 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_passAndActionID);
    v283 = &v313;
    swift_beginAccess();
    *v281 = v282;
    swift_endAccess();
    return v294;
  }

  result = v288;
  __break(1u);
  return result;
}