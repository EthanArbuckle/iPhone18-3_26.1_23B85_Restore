uint64_t storeEnumTagSinglePayload for DownloadPolicy.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2580DA250()
{
  result = qword_27F91DCD8;
  if (!qword_27F91DCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91DCD8);
  }

  return result;
}

unint64_t sub_2580DA2A8()
{
  result = qword_27F91DCE0;
  if (!qword_27F91DCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91DCE0);
  }

  return result;
}

unint64_t sub_2580DA300()
{
  result = qword_27F91DCE8;
  if (!qword_27F91DCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91DCE8);
  }

  return result;
}

unint64_t sub_2580DA358()
{
  result = qword_27F91DCF0;
  if (!qword_27F91DCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91DCF0);
  }

  return result;
}

unint64_t sub_2580DA3B0()
{
  result = qword_27F91DCF8;
  if (!qword_27F91DCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91DCF8);
  }

  return result;
}

unint64_t sub_2580DA408()
{
  result = qword_27F91DD00;
  if (!qword_27F91DD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91DD00);
  }

  return result;
}

unint64_t sub_2580DA460()
{
  result = qword_27F91DD08;
  if (!qword_27F91DD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91DD08);
  }

  return result;
}

unint64_t sub_2580DA4B8()
{
  result = qword_27F91DD10;
  if (!qword_27F91DD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91DD10);
  }

  return result;
}

unint64_t sub_2580DA510()
{
  result = qword_27F91DD18;
  if (!qword_27F91DD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91DD18);
  }

  return result;
}

uint64_t sub_2580DA564(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6169746E65737365 && a2 == 0xE90000000000006CLL;
  if (v4 || (sub_2580DE524() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6863746566657270 && a2 == 0xE800000000000000 || (sub_2580DE524() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646E616D65446E6FLL && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2580DE524();

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

unint64_t sub_2580DA684()
{
  result = qword_27F91DD20;
  if (!qword_27F91DD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F91DD20);
  }

  return result;
}

uint64_t sub_2580DA6D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2580DA758(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2580DA7F8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  (*(*(*(*v7 + 80) - 8) + 32))(v7 + *(*v7 + 88), a1);
  *(v7 + *(*v7 + 96)) = a2;
  return v7;
}

BOOL sub_2580DA8B0()
{
  v1 = *(*v0 + 96);
  v2 = *(v0 + v1);
  v3 = v2 != 0;
  v4 = v2 - 1;
  if (v3)
  {
    *(v0 + v1) = v4;
    return v4 != 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2580DA8E4()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2580DA9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v5[4] = a4;
  v5[5] = v6;
  v5[2] = a1;
  v5[3] = a3;
  v5[6] = *v6;
  v8 = sub_2580DDE84();
  v5[7] = v8;
  v9 = *(v8 - 8);
  v5[8] = v9;
  v10 = *(v9 + 64) + 15;
  v5[9] = swift_task_alloc();
  v11 = sub_2580DDE74();
  v5[10] = v11;
  v12 = *(v11 - 8);
  v5[11] = v12;
  v13 = *(v12 + 64) + 15;
  v5[12] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v14 = sub_2580DE094();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v5[13] = v14;
  v5[14] = v16;

  return MEMORY[0x2822009F8](sub_2580DAB20, v14, v16);
}

uint64_t sub_2580DAB20()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[5];
  v5 = v0[3];
  *(v4 + OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_unreadDecryptedData) = xmmword_2580E0360;
  *(v4 + OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_wasClosed) = 0;
  (*(v2 + 16))(v1, v5, v3);
  sub_2580DDEB4();
  v0[15] = sub_2580DDEA4();
  sub_2580DDAFC(&qword_27F91DE28, MEMORY[0x277D25C68]);
  v7 = sub_2580DE094();

  return MEMORY[0x2822009F8](sub_2580DAC24, v7, v6);
}

uint64_t sub_2580DAC24()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[9];

  sub_2580DDE54();
  v0[16] = 0;
  v4 = v0[13];
  v5 = v0[14];

  return MEMORY[0x2822009F8](sub_2580DACC0, v4, v5);
}

uint64_t sub_2580DACC0()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[2];
  v10 = v0[3];
  swift_unknownObjectRelease();
  (*(v6 + 8))(v10, v5);
  (*(v2 + 32))(v7 + OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_cryptSession, v1, v3);
  *(v7 + OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_previousByteStream) = v8;

  v11 = v0[1];
  v12 = v0[5];

  return v11(v12);
}

uint64_t sub_2580DADB0()
{
  if (qword_27F91D5B8 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = sub_2580DDEF4();
  __swift_project_value_buffer(v2, qword_27F91DDB0);
  v3 = sub_2580DE174();
  MEMORY[0x259C790E0](v1);
  v4 = sub_2580DDED4();
  MEMORY[0x259C790D0](v1);
  if (os_log_type_enabled(v4, v3))
  {
    v5 = v0[16];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    MEMORY[0x259C790E0](v5);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_2580C3000, v4, v3, "A crypt session couldn’t be started: %{public}@", v6, 0xCu);
    sub_2580CAFD4(v7, &qword_27F91D680, &unk_2580DF970);
    MEMORY[0x259C79240](v7, -1, -1);
    MEMORY[0x259C79240](v6, -1, -1);
  }

  v9 = v0[16];
  v10 = v0[8];
  v22 = v0[12];
  v23 = v0[9];
  v12 = v0[6];
  v11 = v0[7];
  v14 = v0[4];
  v13 = v0[5];
  v15 = v0[2];
  v16 = v0[3];

  swift_willThrow();

  swift_unknownObjectRelease();
  (*(v10 + 8))(v16, v11);
  sub_2580CA7E4(*(v13 + OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_unreadDecryptedData), *(v13 + OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_unreadDecryptedData + 8));
  v17 = *(*v13 + 48);
  v18 = *(*v13 + 52);
  swift_deallocPartialClassInstance();

  v19 = v0[1];
  v20 = v0[16];

  return v19();
}

uint64_t sub_2580DAFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_wasClosed) == 1)
  {
    v4 = OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_cryptSession;
    v5 = sub_2580DDE74();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
    v6 = *(v3 + OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_previousByteStream);

    sub_2580CA7E4(*(v3 + OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_unreadDecryptedData), *(v3 + OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_unreadDecryptedData + 8));
    a2 = *(*v3 + 48);
    a3 = *(*v3 + 52);
    a1 = v3;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2821FE8D8](a1, a2, a3);
}

uint64_t sub_2580DB0CC(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v129 = *MEMORY[0x277D85DE8];
  v7 = sub_2580DDC34();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v13 = (v112 - v12);
  if (*(v2 + OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_wasClosed))
  {
    result = 0;
    goto LABEL_135;
  }

  v119 = v11;
  v113 = a1;
  v114 = a2;
  v115 = v2;
  v15 = (v2 + OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_unreadDecryptedData);
  swift_beginAccess();
  v16 = *v15;
  v17 = v15[1];
  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 == 2 && *(v16 + 16) != *(v16 + 24))
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (v18)
    {
      while (1)
      {
        if (v16 == v16 >> 32)
        {
          goto LABEL_18;
        }

LABEL_11:
        v21 = v114 - v113;
        if (!v113)
        {
          v21 = 0;
        }

        if (v18 != 2)
        {
          break;
        }

        v23 = *(v16 + 16);
        v22 = *(v16 + 24);
        v24 = __OFSUB__(v22, v23);
        v18 = v22 - v23;
        if (!v24)
        {
          goto LABEL_61;
        }

        __break(1u);
      }

      LODWORD(v18) = HIDWORD(v16) - v16;
      if (__OFSUB__(HIDWORD(v16), v16))
      {
        __break(1u);
        goto LABEL_144;
      }

      v18 = v18;
LABEL_61:
      v19 = v114;
      v20 = v113;
LABEL_62:
      if (v18 >= v21)
      {
        v58 = v21;
      }

      else
      {
        v58 = v18;
      }

      sub_2580CA988(v16, v17);
      sub_2580DC110(v58, v16, v17, &v125);
      v59 = v125;
      v60 = v126;
      sub_2580DBF08(v125, v126, v20, v19);
      sub_2580CA7E4(v59, v60);
      swift_beginAccess();
      sub_2580DC258(v58);
      swift_endAccess();
      v62 = *v15;
      v61 = v15[1];
      v127 = MEMORY[0x277CC9318];
      v128 = MEMORY[0x277CC9300];
      v125 = v62;
      v126 = v61;
      v63 = __swift_project_boxed_opaque_existential_1(&v125, MEMORY[0x277CC9318]);
      v64 = *v63;
      v65 = v63[1];
      v66 = v65 >> 62;
      if ((v65 >> 62) > 1)
      {
        if (v66 != 2)
        {
          *(&v123 + 6) = 0;
          *&v123 = 0;
          sub_2580CA988(v62, v61);
          v67 = &v123;
          v68 = &v123;
          goto LABEL_95;
        }

        v69 = *(v64 + 16);
        v70 = *(v64 + 24);
        sub_2580CA988(v62, v61);
        v71 = sub_2580DDB64();
        if (v71)
        {
          v72 = sub_2580DDB84();
          if (__OFSUB__(v69, v72))
          {
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
            goto LABEL_148;
          }

          v71 += v69 - v72;
        }

        v24 = __OFSUB__(v70, v69);
        v73 = v70 - v69;
        if (!v24)
        {
          v74 = sub_2580DDB74();
          if (v74 >= v73)
          {
            v75 = v73;
          }

          else
          {
            v75 = v74;
          }

          v76 = (v75 + v71);
          if (v71)
          {
            v68 = v76;
          }

          else
          {
            v68 = 0;
          }

          v67 = v71;
          goto LABEL_95;
        }

LABEL_145:
        __break(1u);
        goto LABEL_146;
      }

      if (!v66)
      {
        *&v123 = *v63;
        WORD4(v123) = v65;
        BYTE10(v123) = BYTE2(v65);
        BYTE11(v123) = BYTE3(v65);
        BYTE12(v123) = BYTE4(v65);
        BYTE13(v123) = BYTE5(v65);
        sub_2580CA988(v62, v61);
        v67 = &v123;
        v68 = (&v123 + BYTE6(v65));
LABEL_95:
        sub_2580DD2C8(v67, v68, &v124);
        v91 = v124;
        __swift_destroy_boxed_opaque_existential_1(&v125);
        v92 = *v15;
        v93 = v15[1];
        *v15 = v91;
        sub_2580CA7E4(v92, v93);
        result = v58;
        goto LABEL_135;
      }

      v83 = v64;
      v84 = v64 >> 32;
      v85 = v84 - v83;
      if (v84 >= v83)
      {
        sub_2580CA988(v62, v61);
        v86 = sub_2580DDB64();
        if (!v86)
        {
LABEL_87:
          v88 = sub_2580DDB74();
          if (v88 >= v85)
          {
            v89 = v85;
          }

          else
          {
            v89 = v88;
          }

          v90 = (v89 + v86);
          if (v86)
          {
            v68 = v90;
          }

          else
          {
            v68 = 0;
          }

          v67 = v86;
          goto LABEL_95;
        }

        v87 = sub_2580DDB84();
        if (!__OFSUB__(v83, v87))
        {
          v86 += v83 - v87;
          goto LABEL_87;
        }

        goto LABEL_147;
      }

LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    if ((v17 & 0xFF000000000000) != 0)
    {
      v19 = v114;
      v20 = v113;
      v21 = v114 - v113;
      if (!v113)
      {
        v21 = 0;
      }

      v18 = BYTE6(v17);
      goto LABEL_62;
    }
  }

LABEL_18:
  v112[1] = v15;
  v122 = *(v115 + OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_previousByteStream);
  v124 = xmmword_2580E0360;
  v121 = *MEMORY[0x277CC92B8];
  v120 = (v8 + 104);
  v117 = (v8 + 88);
  v118 = (v8 + 16);
  v116 = *MEMORY[0x277CC92A8];
  v25 = (v8 + 8);
  do
  {
    v26 = sub_2580DDEC4();
    if (v26 < 0)
    {
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
      swift_once();
LABEL_56:
      v52 = sub_2580DDEF4();
      __swift_project_value_buffer(v52, qword_27F91DDB0);
      v53 = sub_2580DE174();
      MEMORY[0x259C790E0](v4);
      v54 = sub_2580DDED4();
      MEMORY[0x259C790D0](v4);
      if (os_log_type_enabled(v54, v53))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v55 = 138543362;
        MEMORY[0x259C790E0](v4);
        v57 = _swift_stdlib_bridgeErrorToNSError();
        *(v55 + 4) = v57;
        *v56 = v57;
        _os_log_impl(&dword_2580C3000, v54, v53, "Decryption failed: %{public}@", v55, 0xCu);
        sub_2580CAFD4(v56, &qword_27F91D680, &unk_2580DF970);
        MEMORY[0x259C79240](v56, -1, -1);
        MEMORY[0x259C79240](v55, -1, -1);
      }

      result = swift_willThrow();
      goto LABEL_135;
    }

    v27 = *(&v124 + 1) >> 62;
    if ((*(&v124 + 1) >> 62) > 1)
    {
      if (v27 == 2)
      {
        v29 = *(v124 + 16);
        v30 = *(v124 + 24);
        v24 = __OFSUB__(v30, v29);
        v28 = v30 - v29;
        if (v24)
        {
          goto LABEL_139;
        }
      }

      else
      {
        v28 = 0;
      }
    }

    else if (v27)
    {
      LODWORD(v28) = DWORD1(v124) - v124;
      if (__OFSUB__(DWORD1(v124), v124))
      {
        goto LABEL_138;
      }

      v28 = v28;
    }

    else
    {
      v28 = BYTE14(v124);
    }

    if (__OFSUB__(v26, v28))
    {
      goto LABEL_137;
    }

    v31 = swift_slowAlloc();
    v32 = sub_2580DDCE4();
    if (v4)
    {
      sub_2580CA7E4(v124, *(&v124 + 1));
      if (qword_27F91D5B8 == -1)
      {
        goto LABEL_56;
      }

      goto LABEL_142;
    }

    v33 = v32;
    *v13 = sub_2580DBC20;
    v13[1] = 0;
    (*v120)(v13, v121, v7);
    sub_2580DDC24();
    if (v33)
    {
      v34 = sub_2580DDBA4();
      v35 = *(v34 + 48);
      v36 = *(v34 + 52);
      swift_allocObject();

      v37 = sub_2580DDB44();
      v38 = v119;
      (*v118)(v119, v13, v7);
      v39 = (*v117)(v38, v7);
      if (v39 == v116)
      {
        v40 = sub_2580DDB94();
        *v41 |= 0x8000000000000000;
        v40(&v125, 0);
      }

      else
      {
        (*v25)(v38, v7);
      }

      v43 = sub_2580DD834(v37, v33);
      v44 = v45;
    }

    else
    {
      v42 = sub_2580DDC24();
      v42(v31, 0);

      v43 = 0;
      v44 = 0xC000000000000000;
    }

    (*v25)(v13, v7);
    sub_2580DDC84();
    sub_2580CA7E4(v43, v44);
    v46 = *(&v124 + 1) >> 62;
    v4 = 0;
    if ((*(&v124 + 1) >> 62) > 1)
    {
      if (v46 == 2)
      {
        v48 = *(v124 + 16);
        v49 = *(v124 + 24);
        v47 = v49 - v48;
        if (__OFSUB__(v49, v48))
        {
          goto LABEL_140;
        }
      }

      else
      {
        v47 = 0;
      }
    }

    else if (v46)
    {
      if (__OFSUB__(DWORD1(v124), v124))
      {
        goto LABEL_141;
      }

      v47 = DWORD1(v124) - v124;
    }

    else
    {
      v47 = BYTE14(v124);
    }

    v50 = v47 < sub_2580DDEC4() || v47 < 0;
  }

  while (v50 && v33 > 0);
  v51 = sub_2580DDEB4();
  MEMORY[0x28223BE20](v51);
  v112[-2] = &v124;
  sub_2580DDE74();
  sub_2580DDE94();
  v78 = *(&v123 + 1);
  v77 = v123;
  v79 = *(&v123 + 1) >> 62;
  if ((*(&v123 + 1) >> 62) <= 1)
  {
    v80 = v114;
    v81 = v113;
    if (!v79)
    {
      v82 = BYTE14(v123);
      goto LABEL_102;
    }

LABEL_100:
    LODWORD(v82) = HIDWORD(v77) - v77;
    if (!__OFSUB__(HIDWORD(v77), v77))
    {
      v82 = v82;
      goto LABEL_102;
    }

LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
  }

  v80 = v114;
  v81 = v113;
  if (v79 != 2)
  {
    if (!v113)
    {
      goto LABEL_124;
    }

    v82 = 0;
LABEL_107:
    if (v80 - v81 >= v82)
    {
      goto LABEL_124;
    }

    v96 = 0;
LABEL_109:
    if (v79 > 1)
    {
      if (v79 != 2)
      {
        v97 = 0;
        goto LABEL_119;
      }

      v99 = *(v77 + 16);
      v98 = *(v77 + 24);
      v24 = __OFSUB__(v98, v99);
      v97 = v98 - v99;
      if (!v24)
      {
LABEL_119:
        if (v96)
        {
          v100 = 0;
        }

        else
        {
          v100 = v80 - v81;
        }

        v101 = v97 - v100;
        if (!__OFSUB__(v97, v100))
        {
          v102 = v77;
          v103 = v78;
          sub_2580CA988(v77, v78);
          sub_2580DBCB8(v101, v102, v103, &v125);
          v104 = v125;
          v105 = v126;
          sub_2580DBE04(v101);
          swift_beginAccess();
          sub_2580DDC84();
          swift_endAccess();
          sub_2580CA7E4(v104, v105);
          v78 = *(&v123 + 1);
          v77 = v123;
          goto LABEL_124;
        }

LABEL_148:
        __break(1u);
        goto LABEL_149;
      }

      __break(1u);
    }

    else if (!v79)
    {
      v97 = BYTE6(v78);
      goto LABEL_119;
    }

    LODWORD(v97) = HIDWORD(v77) - v77;
    if (__OFSUB__(HIDWORD(v77), v77))
    {
      goto LABEL_151;
    }

    v97 = v97;
    goto LABEL_119;
  }

  v95 = *(v123 + 16);
  v94 = *(v123 + 24);
  v24 = __OFSUB__(v94, v95);
  v82 = v94 - v95;
  if (v24)
  {
    __break(1u);
    goto LABEL_100;
  }

LABEL_102:
  if (v81)
  {
    goto LABEL_107;
  }

  if (v82 >= 1)
  {
    v96 = 1;
    goto LABEL_109;
  }

LABEL_124:
  sub_2580DBF08(v77, v78, v81, v80);
  v106 = v123;
  v107 = *(&v123 + 1) >> 62;
  if ((*(&v123 + 1) >> 62) > 1)
  {
    if (v107 == 2)
    {
      v110 = *(v123 + 16);
      v109 = *(v123 + 24);
      v108 = v109 - v110;
      if (__OFSUB__(v109, v110))
      {
        __break(1u);
        goto LABEL_131;
      }
    }

    else
    {
      v108 = 0;
    }
  }

  else
  {
    if (!v107)
    {
      v108 = BYTE14(v123);
      goto LABEL_134;
    }

LABEL_131:
    if (__OFSUB__(DWORD1(v106), v106))
    {
      goto LABEL_150;
    }

    v108 = DWORD1(v106) - v106;
  }

LABEL_134:
  sub_2580CA7E4(v106, *(&v106 + 1));
  sub_2580CA7E4(v124, *(&v124 + 1));
  result = v108;
LABEL_135:
  v111 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2580DBC2C@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  sub_2580CA988(*a1, v5);
  v6 = sub_2580DDE64();
  if (v2)
  {
    return sub_2580CA7E4(v4, v5);
  }

  v9 = v6;
  v10 = v7;
  result = sub_2580CA7E4(v4, v5);
  *a2 = v9;
  a2[1] = v10;
  return result;
}

uint64_t sub_2580DBCB8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v5 = a2;
  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 == 2)
    {
      a2 = *(a2 + 16);
      v8 = *(v5 + 24);
    }

    else
    {
      a2 = 0;
      v8 = 0;
    }
  }

  else
  {
    if (v7)
    {
      a2 = a2;
    }

    else
    {
      a2 = 0;
    }

    if (v7)
    {
      v8 = v5 >> 32;
    }

    else
    {
      v8 = BYTE6(a3);
    }
  }

  v9 = -result;
  v10 = sub_2580DD3C0(v8, a2, v5, a3);
  if (v10 > 0 || v10 <= v9)
  {
    result = sub_2580DD35C(v8, v9, v5, a3);
    if (v7 <= 1)
    {
      if (!v7)
      {
        v11 = BYTE6(a3);
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (v7 == 3)
    {
      v11 = 0;
      goto LABEL_27;
    }

LABEL_24:
    v11 = *(v5 + 24);
    goto LABEL_27;
  }

  if (v7 > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_28;
    }

    result = *(v5 + 16);
    goto LABEL_24;
  }

  if (!v7)
  {
    result = 0;
    v11 = BYTE6(a3);
    goto LABEL_27;
  }

  result = v5;
LABEL_26:
  v11 = v5 >> 32;
LABEL_27:
  if (v11 >= result)
  {
LABEL_28:
    v12 = sub_2580DDC64();
    v14 = v13;
    result = sub_2580CA7E4(v5, a3);
    *a4 = v12;
    a4[1] = v14;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2580DBE04(uint64_t result)
{
  if (result)
  {
    v2 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      result = sub_2580DD60C(result);
      if (result)
      {
        return result;
      }

      v3 = *v1;
      v4 = *(v1 + 8);
      v5 = v4 >> 62;
      if ((v4 >> 62) > 1)
      {
        if (v5 == 2)
        {
          v7 = *(v3 + 16);
          v6 = *(v3 + 24);
        }

        else
        {
          v6 = 0;
          v7 = 0;
        }
      }

      else
      {
        if (v5)
        {
          v6 = v3 >> 32;
        }

        else
        {
          v6 = BYTE6(v4);
        }

        if (v5)
        {
          v7 = v3;
        }

        else
        {
          v7 = 0;
        }
      }

      v8 = -v2;
      v9 = sub_2580DD3C0(v6, v7, *v1, *(v1 + 8));
      if (v9 <= 0 && v9 > v8)
      {
        goto LABEL_23;
      }

      if (v6 >= sub_2580DD35C(v6, v8, v3, v4))
      {

        return MEMORY[0x28211D260]();
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return MEMORY[0x28211D260]();
  }

  return result;
}

uint64_t sub_2580DBF08(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91DE18, &qword_2580E04B8);
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v17[-v11];
  v19 = a1;
  v20 = a2;
  if (!a3)
  {
    return result;
  }

  MEMORY[0x28223BE20](result);
  *&v17[-32] = &v19;
  *&v17[-24] = a3;
  *&v17[-16] = a4;
  *&v17[-8] = a3;
  result = sub_2580DD474(sub_2580DDADC, &v17[-48], a1, a2);
  if ((result & 1) == 0)
  {
    return result;
  }

  v13 = v20 >> 62;
  if ((v20 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_9;
    }

    v14 = *(v19 + 16);
  }

  else if (!v13)
  {
    goto LABEL_9;
  }

  sub_2580CA988(v19, v20);
LABEL_9:
  sub_2580DDCA4();
  sub_2580DDC94();
  sub_2580DDAFC(&qword_27F91DE20, MEMORY[0x277CC92E0]);
  result = sub_2580DE1D4();
  v15 = 0;
  if (v18)
  {
LABEL_13:
    *&v12[*(v8 + 36)] = v15;
    return sub_2580CAFD4(v12, &qword_27F91DE18, &qword_2580E04B8);
  }

  else
  {
    v16 = 0;
    while (1)
    {
      v15 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      *(a3 + v16) = v17[6];
      result = sub_2580DE1D4();
      ++v16;
      if (v18 == 1)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2580DC110@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_2580DD3C0(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_2580DD35C(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_2580DDC64();
    v15 = v14;
    result = sub_2580CA7E4(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_2580DC258(unint64_t result)
{
  if (result)
  {
    v2 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *v1;
      v4 = *(v1 + 8);
      v5 = v4 >> 62;
      if ((v4 >> 62) > 1)
      {
        if (v5 == 2)
        {
          v6 = *(v3 + 16);
          v7 = *(v3 + 24);
        }

        else
        {
          v6 = 0;
          v7 = 0;
        }
      }

      else
      {
        if (v5)
        {
          v6 = v3;
        }

        else
        {
          v6 = 0;
        }

        if (v5)
        {
          v7 = v3 >> 32;
        }

        else
        {
          v7 = BYTE6(v4);
        }
      }

      result = sub_2580DD3C0(v6, v7, *v1, *(v1 + 8));
      if (result < v2)
      {
        goto LABEL_26;
      }

      v8 = sub_2580DD35C(v6, v2, v3, v4);
      v9 = *v1;
      v10 = *(v1 + 8);
      v11 = v10 >> 62;
      if ((v10 >> 62) > 1)
      {
        if (v11 == 2)
        {
          v12 = *(v9 + 24);
        }

        else
        {
          v12 = 0;
        }
      }

      else if (v11)
      {
        v12 = v9 >> 32;
      }

      else
      {
        v12 = BYTE6(v10);
      }

      sub_2580CA988(*v1, *(v1 + 8));
      result = sub_2580CA7E4(v9, v10);
      if (v12 >= v8)
      {
        v13 = sub_2580DDC64();
        v15 = v14;
        result = sub_2580CA7E4(v9, v10);
        *v1 = v13;
        *(v1 + 8) = v15;
        return result;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_2580DC414()
{
  if (*(*v0 + OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_wasClosed))
  {
    __break(1u);
  }

  result = sub_2580DE2B4();
  __break(1u);
  return result;
}

uint64_t sub_2580DC488()
{
  if (*(*v0 + OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_wasClosed))
  {
    __break(1u);
  }

  result = sub_2580DE2B4();
  __break(1u);
  return result;
}

uint64_t sub_2580DC4FC()
{
  if (*(*v0 + OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_wasClosed))
  {
    __break(1u);
  }

  result = sub_2580DE2B4();
  __break(1u);
  return result;
}

void sub_2580DC570()
{
  if (*(*v0 + OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_wasClosed))
  {
    __break(1u);
  }
}

uint64_t sub_2580DC58C()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_wasClosed;
  if (*(*v0 + OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_wasClosed))
  {
    __break(1u);
  }

  else
  {
    v3 = (v1 + OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_unreadDecryptedData);
    swift_beginAccess();
    v4 = *v3;
    v5 = v3[1];
    *v3 = xmmword_2580E0360;
    result = sub_2580CA7E4(v4, v5);
    *(v1 + v2) = 1;
  }

  return result;
}

uint64_t sub_2580DC624()
{
  v0 = sub_2580DDEF4();
  __swift_allocate_value_buffer(v0, qword_27F91DDB0);
  __swift_project_value_buffer(v0, qword_27F91DDB0);
  return sub_2580DDEE4();
}

uint64_t DecryptionProcessor.__allocating_init(keys:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v5 + 112) = sub_2580DDEC4();
  v6 = OBJC_IVAR____TtC23ManagedBackgroundAssets19DecryptionProcessor_keys;
  v7 = sub_2580DDE84();
  (*(*(v7 - 8) + 32))(v5 + v6, a1, v7);
  return v5;
}

uint64_t DecryptionProcessor.init(keys:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = sub_2580DDEC4();
  v3 = OBJC_IVAR____TtC23ManagedBackgroundAssets19DecryptionProcessor_keys;
  v4 = sub_2580DDE84();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_2580DC7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v6 = sub_2580DDE84();
  v4[6] = v6;
  v7 = *(v6 - 8);
  v4[7] = v7;
  v8 = *(v7 + 64) + 15;
  v4[8] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v9 = sub_2580DE094();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v4[9] = v9;
  v4[10] = v11;

  return MEMORY[0x2822009F8](sub_2580DC8B4, v9, v11);
}

uint64_t sub_2580DC8B4()
{
  if (qword_27F91D5B8 != -1)
  {
    swift_once();
  }

  v1 = sub_2580DDEF4();
  __swift_project_value_buffer(v1, qword_27F91DDB0);
  v2 = sub_2580DDED4();
  v3 = sub_2580DE184();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2580C3000, v2, v3, "Creating a decryption stream…", v4, 2u);
    MEMORY[0x259C79240](v4, -1, -1);
  }

  v6 = v0[7];
  v5 = v0[8];
  v8 = v0[5];
  v7 = v0[6];
  v9 = v0[4];
  v10 = v0[2];

  (*(v6 + 16))(v5, v8 + OBJC_IVAR____TtC23ManagedBackgroundAssets19DecryptionProcessor_keys, v7);
  v11 = type metadata accessor for DecryptionProcessor.ByteStream(0);
  v0[11] = v11;
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();

  v14 = swift_task_alloc();
  v0[12] = v14;
  *v14 = v0;
  v14[1] = sub_2580DCA80;
  v15 = v0[8];
  v16 = v0[3];
  v17 = v0[4];
  v18 = v0[2];

  return sub_2580DA9A8(v18, v16, v15, v17);
}

uint64_t sub_2580DCA80(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(v4 + 104) = a1;
  *(v4 + 112) = v1;

  v7 = *(v3 + 80);
  v8 = *(v3 + 72);
  if (v1)
  {
    v9 = sub_2580DCD30;
  }

  else
  {
    v9 = sub_2580DCBC4;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_2580DCBC4()
{
  v1 = v0[13];
  v2 = v0[11];
  sub_2580DDCF4();
  sub_2580DDAFC(&qword_27F91DDD0, type metadata accessor for DecryptionProcessor.ByteStream);
  v3 = sub_2580DDCD4();
  v4 = v0[13];
  if (v3)
  {
    v5 = v3;
    v6 = v0[8];
    v7 = v0[13];

    v8 = v0[1];

    return v8(v5);
  }

  else
  {
    v10 = MEMORY[0x259C78720]();
    sub_2580C49C0();
    swift_allocError();
    *v11 = v10;
    swift_willThrow();

    v12 = v0[8];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_2580DCD30()
{
  v1 = v0[14];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t DecryptionProcessor.deinit()
{
  v1 = OBJC_IVAR____TtC23ManagedBackgroundAssets19DecryptionProcessor_keys;
  v2 = sub_2580DDE84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t DecryptionProcessor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23ManagedBackgroundAssets19DecryptionProcessor_keys;
  v2 = sub_2580DDE84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2580DCEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2580CC010;

  return sub_2580DC7B4(a1, a2, a3);
}

uint64_t sub_2580DCF90(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2580DCFC8()
{
  result = sub_2580DDE84();
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

uint64_t dispatch thunk of DecryptionProcessor.byteStream(isolation:readingFrom:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 112);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2580CA0B0;

  return v12(a1, a2, a3);
}

uint64_t sub_2580DD1DC()
{
  result = sub_2580DDE74();
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

uint64_t sub_2580DD28C()
{
  if (MEMORY[0x277D85020])
  {
    return sub_2580DDE74();
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

_BYTE *sub_2580DD2C8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_2580DD77C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_2580DD9DC(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_2580DDA58(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_2580DD35C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_2580DD3C0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_2580DD474(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v6)
    {
      *v11 = a3;
      *&v11[8] = a4;
      v11[10] = BYTE2(a4);
      v11[11] = BYTE3(a4);
      v11[12] = BYTE4(a4);
      v11[13] = BYTE5(a4);
      result = (a1)(&v12, v11, BYTE6(a4));
      if (v4)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    v8 = a3;
    v9 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

LABEL_8:
    result = sub_2580DD934(v8, v9, a4 & 0x3FFFFFFFFFFFFFFFLL, a1);
    if (v4)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v6 == 2)
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    goto LABEL_8;
  }

  memset(v11, 0, sizeof(v11));
  result = (a1)(&v12, v11, 0);
  if (v4)
  {
    goto LABEL_14;
  }

LABEL_12:
  LOBYTE(result) = 0;
LABEL_13:
  result &= 1u;
LABEL_14:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2580DD5C8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  if (a1)
  {
    v3 = a2 - a1;
  }

  else
  {
    v3 = 0;
  }

  a3(&var1, a1, v3);
  return 0;
}

uint64_t sub_2580DD60C(uint64_t result)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v5 = *(v2 + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else if (v4)
  {
    v5 = v2 >> 32;
  }

  else
  {
    v5 = BYTE6(v3);
  }

  v6 = -result;
  if (__OFSUB__(0, result))
  {
    __break(1u);
  }

  else
  {
    if (v4 > 1)
    {
      v7 = 0;
      if (v4 == 2)
      {
        v7 = *(v2 + 16);
      }
    }

    else if (v4)
    {
      v7 = v2;
    }

    else
    {
      v7 = 0;
    }

    result = sub_2580DD3C0(v5, v7, *v1, *(v1 + 8));
    if (v6 <= 0)
    {
      if (result <= 0 && v6 < result)
      {
        goto LABEL_31;
      }
    }

    else if ((result & 0x8000000000000000) == 0 && result < v6)
    {
      goto LABEL_31;
    }

    v8 = sub_2580DD35C(v5, v6, v2, v3);
    v9 = *v1;
    v10 = *(v1 + 8);
    v11 = v10 >> 62;
    if ((v10 >> 62) > 1)
    {
      v12 = 0;
      if (v11 == 2)
      {
        v12 = *(v9 + 16);
      }
    }

    else if (v11)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }

    sub_2580CA988(*v1, *(v1 + 8));
    result = sub_2580CA7E4(v9, v10);
    if (v8 >= v12)
    {
      v13 = sub_2580DDC64();
      v15 = v14;
      sub_2580CA7E4(v9, v10);
      *v1 = v13;
      *(v1 + 8) = v15;
      return 1;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2580DD77C(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2580DD834(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    sub_2580DDC44();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = sub_2580DDB64();
  if (v3)
  {
    result = sub_2580DDB84();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = sub_2580DDB74();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_2580DD77C(v3, v7);

  return v8;
}

uint64_t sub_2580DD934(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  result = sub_2580DDB64();
  v8 = result;
  if (result)
  {
    result = sub_2580DDB84();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_2580DDB74();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 + v8;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return sub_2580DD5C8(v8, v14, a4) & 1;
}

uint64_t sub_2580DD9DC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_2580DDBA4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_2580DDB54();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2580DDC44();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_2580DDA58(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_2580DDBA4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_2580DDB54();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

void *sub_2580DDADC(void *__src, size_t __len)
{
  if (__src)
  {
    if ((__len & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      return memmove(*(v2 + 40), __src, __len);
    }
  }

  return __src;
}

uint64_t sub_2580DDAFC(unint64_t *a1, void (*a2)(uint64_t))
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