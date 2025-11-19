uint64_t sub_25C4ABB94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = a4;
  v6 = type metadata accessor for NXSessionDaemon.SendItem(0);
  v68 = *(v6 - 8);
  v7 = *(v68 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v67 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v70 = &v58 - v10;
  v11 = sub_25C4C7B20();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v58 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v58 - v20;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = result;
    v66 = v6;
    if (a1)
    {
      v64 = v16;
      v24 = a3;
      v25 = v12[2];
      v65 = (v12 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v25(v21, v24, v11);
      swift_beginAccess();
      v26 = a1;
      sub_25C495840(0, v21);
      swift_endAccess();
      if (qword_27FC0B970 != -1)
      {
        swift_once();
      }

      v27 = sub_25C4C7BD0();
      __swift_project_value_buffer(v27, qword_27FC0B978);
      v25(v19, v24, v11);
      v28 = v64;
      v25(v64, v69, v11);
      v29 = a1;
      v30 = sub_25C4C7BB0();
      v31 = sub_25C4C8710();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v62 = v25;
        v60 = v31;
        v33 = v32;
        v61 = swift_slowAlloc();
        v71[0] = v61;
        *v33 = 136315650;
        sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
        v63 = a1;
        v59 = v30;
        v34 = sub_25C4C89A0();
        v36 = v35;
        v37 = v12[1];
        v37(v19, v11);
        v38 = sub_25C458990(v34, v36, v71);

        *(v33 + 4) = v38;
        *(v33 + 12) = 2080;
        a1 = v63;
        v39 = sub_25C4C89A0();
        v41 = v40;
        v37(v28, v11);
        v42 = sub_25C458990(v39, v41, v71);

        *(v33 + 14) = v42;
        *(v33 + 22) = 2080;
        swift_getErrorValue();
        v43 = sub_25C4C8A30();
        v45 = sub_25C458990(v43, v44, v71);

        *(v33 + 24) = v45;
        v46 = v59;
        _os_log_impl(&dword_25C452000, v59, v60, "### Received operation update completion failed: operationUUID=%s, itemUUID=%s, error=%s", v33, 0x20u);
        v47 = v61;
        swift_arrayDestroy();
        MEMORY[0x25F888630](v47, -1, -1);
        v25 = v62;
        MEMORY[0x25F888630](v33, -1, -1);
      }

      else
      {

        v49 = v12[1];
        v49(v28, v11);
        v49(v19, v11);
      }

      v48 = v67;
    }

    else
    {
      v25 = v12[2];
      v48 = v67;
    }

    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A8F0, &qword_25C4CAC80) + 48);
    v51 = v70;
    v25(v70, v69, v11);
    *(v51 + v50) = a1;
    swift_storeEnumTagMultiPayload();
    sub_25C4BACD0(v51, v48, type metadata accessor for NXSessionDaemon.SendItem);
    v52 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sendQueue;
    swift_beginAccess();
    v53 = *&v23[v52];
    v54 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v23[v52] = v53;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v53 = sub_25C4B480C(0, v53[2] + 1, 1, v53);
      *&v23[v52] = v53;
    }

    v57 = v53[2];
    v56 = v53[3];
    if (v57 >= v56 >> 1)
    {
      v53 = sub_25C4B480C(v56 > 1, v57 + 1, 1, v53);
    }

    v53[2] = v57 + 1;
    sub_25C4BB0E8(v48, v53 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v57, type metadata accessor for NXSessionDaemon.SendItem);
    *&v23[v52] = v53;
    swift_endAccess();
    sub_25C49CF5C();

    return sub_25C4BAF14(v70, type metadata accessor for NXSessionDaemon.SendItem);
  }

  return result;
}

uint64_t sub_25C4AC210(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v6 = type metadata accessor for NXSessionDaemon.SendItem(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  v14 = sub_25C4C7B20();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = result;
    v29 = v7;
    v21 = *(v15 + 16);
    v21(v18, a3, v14);
    swift_beginAccess();
    sub_25C495840(0, v18);
    swift_endAccess();
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A8F0, &qword_25C4CAC80) + 48);
    v21(v13, v30, v14);
    *&v13[v22] = a1;
    swift_storeEnumTagMultiPayload();
    sub_25C4BACD0(v13, v11, type metadata accessor for NXSessionDaemon.SendItem);
    v23 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sendQueue;
    swift_beginAccess();
    v24 = *&v20[v23];
    v25 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v20[v23] = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_25C4B480C(0, v24[2] + 1, 1, v24);
      *&v20[v23] = v24;
    }

    v28 = v24[2];
    v27 = v24[3];
    if (v28 >= v27 >> 1)
    {
      v24 = sub_25C4B480C(v27 > 1, v28 + 1, 1, v24);
    }

    v24[2] = v28 + 1;
    sub_25C4BB0E8(v11, v24 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v28, type metadata accessor for NXSessionDaemon.SendItem);
    *&v20[v23] = v24;
    swift_endAccess();
    sub_25C49CF5C();

    return sub_25C4BAF14(v13, type metadata accessor for NXSessionDaemon.SendItem);
  }

  return result;
}

uint64_t sub_25C4AC540(void *a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a7;
  v12 = type metadata accessor for NXSessionDaemon.SendItem(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v33 - v18;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = result;
    v33 = v13;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A8E8, &qword_25C4CAC78);
    v23 = *(v22 + 48);
    v24 = a5;
    v25 = a3;
    v26 = &v19[*(v22 + 64)];
    *v19 = v24;
    *(v19 + 1) = a6;
    v27 = sub_25C4C7B20();
    (*(*(v27 - 8) + 16))(&v19[v23], v34, v27);
    *v26 = a1;
    *(v26 + 1) = a2;
    v25 &= 1u;
    v26[16] = v25;
    swift_storeEnumTagMultiPayload();
    sub_25C4BACD0(v19, v17, type metadata accessor for NXSessionDaemon.SendItem);
    v28 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sendQueue;
    swift_beginAccess();
    v29 = *&v21[v28];

    sub_25C4BD0C8(a1, a2, v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v21[v28] = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v29 = sub_25C4B480C(0, v29[2] + 1, 1, v29);
      *&v21[v28] = v29;
    }

    v32 = v29[2];
    v31 = v29[3];
    if (v32 >= v31 >> 1)
    {
      v29 = sub_25C4B480C(v31 > 1, v32 + 1, 1, v29);
    }

    v29[2] = v32 + 1;
    sub_25C4BB0E8(v17, v29 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v32, type metadata accessor for NXSessionDaemon.SendItem);
    *&v21[v28] = v29;
    swift_endAccess();
    sub_25C49CF5C();

    return sub_25C4BAF14(v19, type metadata accessor for NXSessionDaemon.SendItem);
  }

  return result;
}

uint64_t sub_25C4AC804(uint64_t a1, unint64_t a2, _BYTE *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v108 = a7;
  v106 = a6;
  v98 = a5;
  v95 = a4;
  v112 = a2;
  v113 = a3;
  v109 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A900, &qword_25C4CAC90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v111 = &v91[-v11];
  v12 = type metadata accessor for NXSessionDaemon.OperationItem(0);
  v110 = *(v12 - 1);
  v13 = *(v110 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v91[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_25C4C7B20();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v105 = &v91[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v19);
  v97 = &v91[-v22];
  v23 = MEMORY[0x28223BE20](v21);
  v96 = &v91[-v24];
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v91[-v26];
  v100 = v28;
  MEMORY[0x28223BE20](v25);
  v30 = &v91[-v29];
  v31 = *(v7 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__messageUpperID);
  CUNextID64();
  sub_25C4C7B00();
  v101 = v17;
  v32 = *(v17 + 16);
  v32(v15, v30, v16);
  v32((v15 + v12[6]), v113, v16);
  v33 = (v15 + v12[5]);
  v34 = v109;
  *v33 = v109;
  v33[1] = a2;
  v35 = (v15 + v12[7]);
  v36 = v108;
  *v35 = v106;
  v35[1] = v36;
  v32(v27, v30, v16);
  v102 = v15;
  v37 = v15;
  v38 = v111;
  sub_25C4BACD0(v37, v111, type metadata accessor for NXSessionDaemon.OperationItem);
  (*(v110 + 56))(v38, 0, 1, v12);
  swift_beginAccess();
  v39 = v17 + 16;

  v40 = v112;

  v107 = v7;
  v99 = v27;
  sub_25C495328(v111, v27);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A908, &qword_25C4CAC98);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_25C4CA7D0;
  v42 = MEMORY[0x277D83B88];
  *(v41 + 32) = 1;
  *(v41 + 56) = v42;
  *(v41 + 64) = 4;
  *(v41 + 120) = v42;
  *(v41 + 88) = v42;
  *(v41 + 96) = 4;
  *(v41 + 152) = v16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v41 + 128));
  v111 = v30;
  v32(boxed_opaque_existential_1, v30, v16);
  *(v41 + 160) = 2;
  v44 = MEMORY[0x277D837D0];
  *(v41 + 184) = v42;
  *(v41 + 192) = v34;
  *(v41 + 200) = v40;
  *(v41 + 248) = v42;
  *(v41 + 216) = v44;
  *(v41 + 224) = 5;
  *(v41 + 280) = v16;
  v45 = __swift_allocate_boxed_opaque_existential_1((v41 + 256));
  v110 = v16;
  v103 = v39;
  v104 = v32;
  v32(v45, v113, v16);
  *(v41 + 288) = 3;
  *(v41 + 344) = MEMORY[0x277CC9318];
  v46 = v95;
  *(v41 + 312) = v42;
  *(v41 + 320) = v46;
  v47 = v98;
  *(v41 + 328) = v98;
  sub_25C4BC77C(0, &unk_27FC0A910, 0x277CBEAC0);

  sub_25C459FB0(v46, v47);
  v98 = sub_25C4C8660();
  if (qword_27FC0B970 != -1)
  {
    swift_once();
  }

  v48 = sub_25C4C7BD0();
  __swift_project_value_buffer(v48, qword_27FC0B978);
  v49 = v96;
  v50 = v110;
  v51 = v104;
  v104(v96, v113, v110);
  v52 = v97;
  v51(v97, v111, v50);

  v53 = sub_25C4C7BB0();
  v54 = sub_25C4C86F0();

  v55 = v49;
  if (os_log_type_enabled(v53, v54))
  {
    v56 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v114[0] = v94;
    *v56 = 136315650;
    v93 = v53;
    *(v56 + 4) = sub_25C458990(v109, v112, v114);
    *(v56 + 12) = 2080;
    sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
    v92 = v54;
    v57 = v110;
    v58 = sub_25C4C89A0();
    v60 = v59;
    v61 = v101;
    v62 = *(v101 + 8);
    v95 = (v101 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (v62)(v55, v57);
    v63 = sub_25C458990(v58, v60, v114);

    *(v56 + 14) = v63;
    *(v56 + 22) = 2080;
    v64 = sub_25C4C89A0();
    v66 = v65;
    v97 = v62;
    (v62)(v52, v57);
    v67 = v61;
    v68 = sub_25C458990(v64, v66, v114);

    *(v56 + 24) = v68;
    v69 = v93;
    _os_log_impl(&dword_25C452000, v93, v92, "Send operation start: operationName=%s, operationUUID=%s, itemUUID=%s", v56, 0x20u);
    v70 = v94;
    swift_arrayDestroy();
    MEMORY[0x25F888630](v70, -1, -1);
    MEMORY[0x25F888630](v56, -1, -1);
  }

  else
  {

    v67 = v101;
    v71 = *(v101 + 8);
    v95 = (v101 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v72 = v110;
    (v71)(v52, v110);
    v97 = v71;
    (v71)(v49, v72);
  }

  v73 = v109;
  v109 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v74 = v99;
  v75 = v110;
  v76 = v104;
  v104(v99, v113, v110);
  v76(v105, v111, v75);
  v77 = *(v67 + 80);
  v78 = (v77 + 32) & ~v77;
  v79 = (v100 + v77 + v78) & ~v77;
  v80 = (v100 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = v75;
  v82 = swift_allocObject();
  v83 = v112;
  *(v82 + 16) = v73;
  *(v82 + 24) = v83;
  v84 = *(v67 + 32);
  v85 = v74;
  v86 = v81;
  v84(v82 + v78, v85, v81);
  v84(v82 + v79, v105, v81);
  v87 = v108;
  *(v82 + v80) = v109;
  v88 = (v82 + ((v80 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v88 = v106;
  v88[1] = v87;

  v89 = v98;
  sub_25C4AFFC4(v98, sub_25C4BAE54, v82);

  sub_25C4BAF14(v102, type metadata accessor for NXSessionDaemon.OperationItem);
  (v97)(v111, v86);
}

void sub_25C4AD104(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v39 = a1;
  v7 = sub_25C4C7B20();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v37 = v11;
  v38 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v36 = &v33 - v12;
  v13 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  v14 = sub_25C4C8650();
  v41 = 1;
  [v13 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v40 = a3;
  v15 = sub_25C4C7B10();
  v41 = 4;
  [v13 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  if (a4)
  {
    v16 = a4;
    v17 = sub_25C4C7A80();
    CUEncodeNSErrorDictionaryStd(v17, v13);
  }

  if (qword_27FC0B970 != -1)
  {
    swift_once();
  }

  v18 = sub_25C4C7BD0();
  __swift_project_value_buffer(v18, qword_27FC0B978);
  v19 = v36;
  v35 = *(v8 + 16);
  v35(v36, v40, v7);

  v20 = sub_25C4C7BB0();
  v21 = sub_25C4C86F0();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v41 = v34;
    *v22 = 136315394;
    *(v22 + 4) = sub_25C458990(v39, a2, &v41);
    *(v22 + 12) = 2080;
    sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
    v23 = sub_25C4C89A0();
    v24 = v19;
    v25 = a2;
    v27 = v26;
    (*(v8 + 8))(v24, v7);
    v28 = sub_25C458990(v23, v27, &v41);
    a2 = v25;

    *(v22 + 14) = v28;
    _os_log_impl(&dword_25C452000, v20, v21, "Send operation start response: operationName=%s, itemUUID=%s", v22, 0x16u);
    v29 = v34;
    swift_arrayDestroy();
    MEMORY[0x25F888630](v29, -1, -1);
    MEMORY[0x25F888630](v22, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v19, v7);
  }

  v30 = v38;
  v35(v38, v40, v7);
  v31 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v39;
  *(v32 + 24) = a2;
  (*(v8 + 32))(v32 + v31, v30, v7);

  sub_25C4AFFC4(v13, sub_25C4BB1B8, v32);
}

uint64_t sub_25C4AD580(_BYTE *a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v99 = a4;
  v100 = a5;
  v98 = a3;
  v92 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A900, &qword_25C4CAC90);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v93 = &v83[-v9];
  v10 = type metadata accessor for NXSessionDaemon.OperationItem(0);
  v101 = *(v10 - 1);
  v11 = *(v101 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v83[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_25C4C7B20();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v95 = &v83[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v17);
  v91 = &v83[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v90 = &v83[-v22];
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v83[-v24];
  v94 = v26;
  MEMORY[0x28223BE20](v23);
  v28 = &v83[-v27];
  v29 = *(v5 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__messageUpperID);
  CUNextID64();
  sub_25C4C7B00();
  v96 = v15;
  v30 = *(v15 + 16);
  v30(v13, v28, v14);
  v30((v13 + v10[6]), a1, v14);
  v31 = (v13 + v10[5]);
  *v31 = 0;
  v31[1] = 0;
  v32 = (v13 + v10[7]);
  v33 = v100;
  *v32 = v99;
  v32[1] = v33;
  v30(v25, v28, v14);
  v97 = v13;
  v34 = v13;
  v35 = v28;
  v36 = v14;
  v37 = v93;
  sub_25C4BACD0(v34, v93, type metadata accessor for NXSessionDaemon.OperationItem);
  (*(v101 + 56))(v37, 0, 1, v10);
  swift_beginAccess();

  v101 = v5;
  v93 = v25;
  sub_25C495328(v37, v25);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A908, &qword_25C4CAC98);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_25C4CA7E0;
  v39 = MEMORY[0x277D83B88];
  *(v38 + 32) = 1;
  *(v38 + 56) = v39;
  *(v38 + 64) = 6;
  *(v38 + 120) = v39;
  *(v38 + 88) = v39;
  *(v38 + 96) = 4;
  *(v38 + 152) = v36;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v38 + 128));
  v30(boxed_opaque_existential_1, v35, v36);
  *(v38 + 184) = v39;
  *(v38 + 160) = 5;
  *(v38 + 216) = v36;
  v41 = __swift_allocate_boxed_opaque_existential_1((v38 + 192));
  v30(v41, a1, v36);
  *(v38 + 224) = 3;
  *(v38 + 280) = MEMORY[0x277CC9318];
  v42 = v92;
  *(v38 + 248) = v39;
  *(v38 + 256) = v42;
  v43 = v98;
  *(v38 + 264) = v98;
  sub_25C4BC77C(0, &unk_27FC0A910, 0x277CBEAC0);
  sub_25C459FB0(v42, v43);
  v92 = sub_25C4C8660();
  if (qword_27FC0B970 != -1)
  {
    swift_once();
  }

  v44 = sub_25C4C7BD0();
  __swift_project_value_buffer(v44, qword_27FC0B978);
  v45 = v90;
  v30(v90, a1, v36);
  v46 = v91;
  v98 = v35;
  v30(v91, v35, v36);
  v47 = sub_25C4C7BB0();
  v48 = sub_25C4C86F0();
  v49 = v46;
  if (os_log_type_enabled(v47, v48))
  {
    v50 = swift_slowAlloc();
    v88 = v30;
    v51 = v50;
    v86 = swift_slowAlloc();
    v102[0] = v86;
    *v51 = 136315394;
    sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
    v85 = v47;
    v52 = v46;
    v53 = sub_25C4C89A0();
    v87 = a1;
    v55 = v54;
    v56 = v45;
    v57 = v36;
    v58 = v96;
    v84 = v48;
    v59 = *(v96 + 8);
    v89 = (v96 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (v59)(v56, v57);
    v60 = sub_25C458990(v53, v55, v102);
    a1 = v87;

    *(v51 + 4) = v60;
    *(v51 + 12) = 2080;
    v61 = sub_25C4C89A0();
    v63 = v62;
    v91 = v59;
    (v59)(v52, v57);
    v64 = v58;
    v36 = v57;
    v65 = sub_25C458990(v61, v63, v102);

    *(v51 + 14) = v65;
    v66 = v85;
    _os_log_impl(&dword_25C452000, v85, v84, "Send operation update: operationUUID=%s, itemUUID=%s", v51, 0x16u);
    v67 = v86;
    swift_arrayDestroy();
    MEMORY[0x25F888630](v67, -1, -1);
    v68 = v51;
    v30 = v88;
    MEMORY[0x25F888630](v68, -1, -1);
  }

  else
  {

    v64 = v96;
    v69 = *(v96 + 8);
    v89 = (v96 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (v69)(v49, v36);
    v91 = v69;
    (v69)(v45, v36);
  }

  v96 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v70 = v93;
  v30(v93, a1, v36);
  v71 = v95;
  v30(v95, v98, v36);
  v72 = *(v64 + 80);
  v73 = (v72 + 16) & ~v72;
  v74 = v36;
  v75 = (v94 + v72 + v73) & ~v72;
  v76 = (v94 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
  v77 = swift_allocObject();
  v78 = *(v64 + 32);
  v78(v77 + v73, v70, v74);
  v78(v77 + v75, v71, v74);
  *(v77 + v76) = v96;
  v79 = (v77 + ((v76 + 15) & 0xFFFFFFFFFFFFFFF8));
  v80 = v100;
  *v79 = v99;
  v79[1] = v80;

  v81 = v92;
  sub_25C4AFFC4(v92, sub_25C4BB244, v77);

  sub_25C4BAF14(v97, type metadata accessor for NXSessionDaemon.OperationItem);
  (v91)(v98, v74);
}

uint64_t sub_25C4ADDDC(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v97 = a2;
  v98 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A900, &qword_25C4CAC90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v100 = &v82[-v7];
  v8 = type metadata accessor for NXSessionDaemon.OperationItem(0);
  v99 = *(v8 - 1);
  v9 = *(v99 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v82[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_25C4C7B20();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v94 = &v82[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v90 = &v82[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v89 = &v82[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v82[-v22];
  v93 = v24;
  MEMORY[0x28223BE20](v21);
  v26 = &v82[-v25];
  v27 = *(v3 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__messageUpperID);
  CUNextID64();
  sub_25C4C7B00();
  v96 = v13;
  v28 = *(v13 + 16);
  v29 = v12;
  v28(v11, v26, v12);
  v30 = &v11[v8[6]];
  v31 = a1;
  v87 = v29;
  v28(v30, a1, v29);
  v32 = &v11[v8[5]];
  *v32 = 0;
  v32[1] = 0;
  v33 = &v11[v8[7]];
  v34 = v98;
  *v33 = v97;
  v33[1] = v34;
  v28(v23, v26, v29);
  v95 = v11;
  v35 = v11;
  v36 = v100;
  sub_25C4BACD0(v35, v100, type metadata accessor for NXSessionDaemon.OperationItem);
  (*(v99 + 56))(v36, 0, 1, v8);
  swift_beginAccess();

  v99 = v3;
  v37 = v28;
  v92 = v23;
  v38 = v23;
  v39 = v87;
  sub_25C495328(v36, v38);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A908, &qword_25C4CAC98);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_25C4CA7F0;
  v41 = MEMORY[0x277D83B88];
  *(v40 + 32) = 1;
  *(v40 + 56) = v41;
  *(v40 + 64) = 8;
  *(v40 + 120) = v41;
  *(v40 + 88) = v41;
  *(v40 + 96) = 4;
  *(v40 + 152) = v39;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v40 + 128));
  v100 = v26;
  v28(boxed_opaque_existential_1, v26, v39);
  *(v40 + 184) = v41;
  *(v40 + 160) = 5;
  *(v40 + 216) = v39;
  v43 = __swift_allocate_boxed_opaque_existential_1((v40 + 192));
  v44 = v31;
  v45 = v28;
  v28(v43, v31, v39);
  sub_25C4BC77C(0, &unk_27FC0A910, 0x277CBEAC0);
  v91 = sub_25C4C8660();
  if (qword_27FC0B970 != -1)
  {
    swift_once();
  }

  v46 = sub_25C4C7BD0();
  __swift_project_value_buffer(v46, qword_27FC0B978);
  v47 = v89;
  v37(v89, v31, v39);
  v48 = v90;
  v45(v90, v100, v39);
  v49 = sub_25C4C7BB0();
  v50 = sub_25C4C86F0();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v84 = v49;
    v52 = v51;
    v85 = swift_slowAlloc();
    v101[0] = v85;
    *v52 = 136315394;
    sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
    v86 = v31;
    v83 = v50;
    v53 = sub_25C4C89A0();
    v54 = v47;
    v55 = v45;
    v57 = v56;
    v58 = *(v96 + 8);
    v88 = (v96 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (v58)(v54, v39);
    v59 = sub_25C458990(v53, v57, v101);
    v45 = v55;

    *(v52 + 4) = v59;
    *(v52 + 12) = 2080;
    v60 = sub_25C4C89A0();
    v62 = v61;
    v90 = v58;
    (v58)(v48, v39);
    v63 = sub_25C458990(v60, v62, v101);
    v44 = v86;

    *(v52 + 14) = v63;
    v64 = v96;
    v65 = v84;
    _os_log_impl(&dword_25C452000, v84, v83, "Send operation cancel: operationUUID=%s, itemUUID=%s", v52, 0x16u);
    v66 = v85;
    swift_arrayDestroy();
    MEMORY[0x25F888630](v66, -1, -1);
    MEMORY[0x25F888630](v52, -1, -1);
  }

  else
  {

    v64 = v96;
    v67 = *(v96 + 8);
    v88 = (v96 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (v67)(v48, v39);
    v90 = v67;
    (v67)(v47, v39);
  }

  v96 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v68 = v92;
  v45(v92, v44, v39);
  v69 = v94;
  v45(v94, v100, v39);
  v70 = *(v64 + 80);
  v71 = (v70 + 16) & ~v70;
  v72 = (v93 + v70 + v71) & ~v70;
  v73 = (v93 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  v75 = v39;
  v76 = *(v64 + 32);
  v76(v74 + v71, v68, v75);
  v76(v74 + v72, v69, v75);
  v77 = v97;
  *(v74 + v73) = v96;
  v78 = (v74 + ((v73 + 15) & 0xFFFFFFFFFFFFFFF8));
  v79 = v98;
  *v78 = v77;
  v78[1] = v79;

  v80 = v91;
  sub_25C4AFFC4(v91, sub_25C4BB344, v74);

  sub_25C4BAF14(v95, type metadata accessor for NXSessionDaemon.OperationItem);
  (v90)(v100, v75);
}

void sub_25C4AE604(uint64_t a1, void *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6)
{
  v39 = a6;
  v40 = a5;
  v35 = a4;
  v8 = sub_25C4C7B20();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v37 = v12;
  v38 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - v13;
  v15 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  v16 = sub_25C4C8650();
  v42 = 1;
  [v15 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v41 = a1;
  v17 = sub_25C4C7B10();
  v42 = 4;
  [v15 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  if (a2)
  {
    v18 = a2;
    v19 = sub_25C4C7A80();
    CUEncodeNSErrorDictionaryStd(v19, v15);
  }

  if (qword_27FC0B970 != -1)
  {
    swift_once();
  }

  v20 = sub_25C4C7BD0();
  __swift_project_value_buffer(v20, qword_27FC0B978);
  v21 = v14;
  v36 = *(v9 + 16);
  v36(v14, v41, v8);
  v22 = sub_25C4C7BB0();
  v23 = sub_25C4C86F0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v42 = v34;
    *v24 = 136315138;
    sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
    v25 = sub_25C4C89A0();
    v26 = v15;
    v28 = v27;
    (*(v9 + 8))(v21, v8);
    v29 = sub_25C458990(v25, v28, &v42);
    v15 = v26;

    *(v24 + 4) = v29;
    _os_log_impl(&dword_25C452000, v22, v23, v35, v24, 0xCu);
    v30 = v34;
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x25F888630](v30, -1, -1);
    MEMORY[0x25F888630](v24, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v14, v8);
  }

  v31 = v38;
  v36(v38, v41, v8);
  v32 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v33 = swift_allocObject();
  (*(v9 + 32))(v33 + v32, v31, v8);
  sub_25C4AFFC4(v15, v39, v33);
}

void sub_25C4AEA24(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a4;
  v44 = a5;
  v8 = sub_25C4C7B20();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v43 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A908, &qword_25C4CAC98);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_25C4CA7F0;
  v16 = MEMORY[0x277D83B88];
  *(v15 + 32) = 1;
  *(v15 + 56) = v16;
  *(v15 + 64) = 11;
  *(v15 + 120) = v16;
  *(v15 + 88) = v16;
  *(v15 + 96) = 5;
  *(v15 + 152) = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v15 + 128));
  v18 = *(v9 + 16);
  v18(boxed_opaque_existential_1, a1, v8);
  *(v15 + 160) = 3;
  *(v15 + 216) = MEMORY[0x277CC9318];
  *(v15 + 184) = v16;
  *(v15 + 192) = a2;
  *(v15 + 200) = a3;
  sub_25C4BC77C(0, &unk_27FC0A910, 0x277CBEAC0);
  sub_25C459FB0(a2, a3);
  v40 = sub_25C4C8660();
  if (qword_27FC0B970 != -1)
  {
    swift_once();
  }

  v19 = sub_25C4C7BD0();
  __swift_project_value_buffer(v19, qword_27FC0B978);
  v39 = a1;
  v18(v14, a1, v8);
  v20 = sub_25C4C7BB0();
  v21 = sub_25C4C86F0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = v14;
    v23 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v45 = v38;
    *v23 = 136315138;
    sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
    v24 = sub_25C4C89A0();
    v25 = v18;
    v27 = v26;
    (*(v9 + 8))(v22, v8);
    v28 = sub_25C458990(v24, v27, &v45);
    v18 = v25;

    *(v23 + 4) = v28;
    _os_log_impl(&dword_25C452000, v20, v21, "Send operation provider event: operationUUID=%s", v23, 0xCu);
    v29 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x25F888630](v29, -1, -1);
    MEMORY[0x25F888630](v23, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v14, v8);
  }

  v30 = v43;
  v18(v43, v39, v8);
  v31 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v32 = (v41 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  (*(v9 + 32))(v33 + v31, v30, v8);
  v34 = (v33 + v32);
  v35 = v44;
  *v34 = v42;
  v34[1] = v35;

  v36 = v40;
  sub_25C4AFFC4(v40, sub_25C4BB81C, v33);
}

uint64_t sub_25C4AEE60(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, _BYTE *, uint64_t), void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v69 = a3;
  v70 = a4;
  v12 = sub_25C4C7B20();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v72 = &v63[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v68 = &v63[-v18];
  v71 = v19;
  MEMORY[0x28223BE20](v17);
  v21 = &v63[-v20];
  v22 = *(v6 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__messageUpperID);
  CUNextID64();
  sub_25C4C7B00();
  v23 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__outstandingRequests;
  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v24 = *(v7 + v23);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v78 = *(v7 + v23);
  *(v7 + v23) = 0x8000000000000000;
  v74 = a6;
  v75 = a5;
  v26 = a6;
  v27 = a1;
  sub_25C4B6794(a1, a2, a5, v26, v21, isUniquelyReferenced_nonNull_native);
  v76 = v7;
  *(v7 + v23) = v78;
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A908, &qword_25C4CAC98);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_25C4CA7E0;
  v29 = MEMORY[0x277D83B88];
  *(v28 + 32) = 1;
  *(v28 + 56) = v29;
  *(v28 + 64) = 2;
  *(v28 + 88) = v29;
  *(v28 + 96) = 2;
  v30 = MEMORY[0x277D837D0];
  *(v28 + 120) = v29;
  *(v28 + 128) = a1;
  *(v28 + 136) = a2;
  *(v28 + 184) = v29;
  *(v28 + 152) = v30;
  *(v28 + 160) = 4;
  *(v28 + 216) = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v28 + 192));
  v73 = v13;
  v32 = *(v13 + 16);
  v77 = v21;
  v32(boxed_opaque_existential_1, v21, v12);
  *(v28 + 224) = 3;
  *(v28 + 280) = MEMORY[0x277CC9318];
  *(v28 + 248) = v29;
  v33 = a2;
  v35 = v69;
  v34 = v70;
  *(v28 + 256) = v69;
  *(v28 + 264) = v34;
  sub_25C4BC77C(0, &unk_27FC0A910, 0x277CBEAC0);

  sub_25C459FB0(v35, v34);
  v70 = sub_25C4C8660();
  if (qword_27FC0B970 != -1)
  {
    swift_once();
  }

  v36 = sub_25C4C7BD0();
  __swift_project_value_buffer(v36, qword_27FC0B978);
  v37 = v68;
  v69 = v32;
  v32(v68, v77, v12);

  v38 = sub_25C4C7BB0();
  v39 = sub_25C4C86F0();

  v40 = os_log_type_enabled(v38, v39);
  v41 = v37;
  v66 = v33;
  if (v40)
  {
    v42 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v79[0] = v65;
    *v42 = 136315394;
    *(v42 + 4) = sub_25C458990(v27, v33, v79);
    *(v42 + 12) = 2080;
    sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
    v43 = v37;
    v44 = sub_25C4C89A0();
    v64 = v39;
    v45 = v27;
    v47 = v46;
    v48 = v73;
    v49 = *(v73 + 8);
    v67 = (v73 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v68 = v49;
    v50 = v12;
    (v49)(v43, v12);
    v51 = sub_25C458990(v44, v47, v79);
    v27 = v45;

    *(v42 + 14) = v51;
    _os_log_impl(&dword_25C452000, v38, v64, "Send request: requestName=%s, requestUUID=%s", v42, 0x16u);
    v52 = v65;
    swift_arrayDestroy();
    MEMORY[0x25F888630](v52, -1, -1);
    MEMORY[0x25F888630](v42, -1, -1);
  }

  else
  {

    v48 = v73;
    v53 = *(v73 + 8);
    v67 = (v73 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v68 = v53;
    (v53)(v41, v12);
    v50 = v12;
  }

  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v55 = v72;
  v69(v72, v77, v50);
  v56 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v57 = (v71 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  *(v58 + 16) = v27;
  *(v58 + 24) = v66;
  (*(v48 + 32))(v58 + v56, v55, v50);
  *(v58 + v57) = v54;
  v59 = (v58 + ((v57 + 15) & 0xFFFFFFFFFFFFFFF8));
  v60 = v74;
  *v59 = v75;
  v59[1] = v60;

  v61 = v70;
  sub_25C4AFFC4(v70, sub_25C4BB9B0, v58);

  (v68)(v77, v50);
}

void sub_25C4AF490(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v40 = a1;
  v43 = a2;
  v8 = sub_25C4C7B20();
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v38 = v11;
  v39 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v37 = &v36 - v12;
  v13 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  v14 = sub_25C4C8650();
  v44 = 1;
  [v13 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v41 = a3;
  v15 = sub_25C4C7B10();
  v44 = 4;
  [v13 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  if (a6)
  {
    v16 = sub_25C4C7A80();
    CUEncodeNSErrorDictionaryStd(v16, v13);
  }

  else
  {
    v17 = sub_25C4C7AE0();
    v44 = 3;
    [v13 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
  }

  v18 = v42;
  v19 = v37;
  if (qword_27FC0B970 != -1)
  {
    swift_once();
  }

  v20 = sub_25C4C7BD0();
  __swift_project_value_buffer(v20, qword_27FC0B978);
  v21 = *(v18 + 16);
  v21(v19, v41, v8);

  v22 = sub_25C4C7BB0();
  v23 = sub_25C4C86F0();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v44 = v36;
    *v24 = 136315394;
    *(v24 + 4) = sub_25C458990(v40, v43, &v44);
    *(v24 + 12) = 2080;
    sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
    v25 = sub_25C4C89A0();
    v26 = v19;
    v28 = v27;
    (*(v42 + 8))(v26, v8);
    v29 = sub_25C458990(v25, v28, &v44);

    *(v24 + 14) = v29;
    _os_log_impl(&dword_25C452000, v22, v23, "Send response: requestName=%s, requestUUID=%s", v24, 0x16u);
    v30 = v36;
    swift_arrayDestroy();
    MEMORY[0x25F888630](v30, -1, -1);
    v31 = v24;
    v18 = v42;
    MEMORY[0x25F888630](v31, -1, -1);
  }

  else
  {

    (*(v18 + 8))(v19, v8);
  }

  v32 = v39;
  v21(v39, v41, v8);
  v33 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v34 = swift_allocObject();
  v35 = v43;
  *(v34 + 16) = v40;
  *(v34 + 24) = v35;
  (*(v18 + 32))(v34 + v33, v32, v8);

  sub_25C4AFFC4(v13, sub_25C4BBB24, v34);
}

void sub_25C4AF950(uint64_t a1, uint64_t a2)
{
  v3 = sub_25C4C7B20();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    (*(v4 + 16))(v7, a2, v3);
    swift_beginAccess();
    sub_25C495840(0, v7);
    swift_endAccess();
    sub_25C4984E4();
  }
}

void sub_25C4AFA84(void *a1, NSObject *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v65 = a8;
  v66 = a7;
  v64 = a6;
  v67 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A900, &qword_25C4CAC90);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v56[-v14];
  v16 = sub_25C4C7B20();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = MEMORY[0x28223BE20](v16);
  v63 = &v56[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v56[-v22];
  MEMORY[0x28223BE20](v21);
  v25 = &v56[-v24];
  if (a1)
  {
    v59 = a2;
    v62 = v15;
    v26 = a1;
    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v27 = sub_25C4C7BD0();
    __swift_project_value_buffer(v27, qword_27FC0B978);
    v28 = v17[2];
    v28(v25, a4, v16);
    v60 = v28;
    v61 = v17 + 2;
    v28(v23, v67, v16);
    v29 = a1;

    v30 = sub_25C4C7BB0();
    v31 = sub_25C4C8710();

    v32 = a1;
    if (os_log_type_enabled(v30, v31))
    {
      v33 = swift_slowAlloc();
      v57 = v31;
      v34 = v33;
      v58 = swift_slowAlloc();
      v68[0] = v58;
      *v34 = 136315906;
      *(v34 + 4) = sub_25C458990(v59, a3, v68);
      *(v34 + 12) = 2080;
      sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
      v59 = v30;
      v35 = sub_25C4C89A0();
      v37 = v36;
      v38 = v17[1];
      v38(v25, v16);
      v39 = sub_25C458990(v35, v37, v68);

      *(v34 + 14) = v39;
      *(v34 + 22) = 2080;
      v40 = sub_25C4C89A0();
      v42 = v41;
      v38(v23, v16);
      v43 = sub_25C458990(v40, v42, v68);

      *(v34 + 24) = v43;
      *(v34 + 32) = 2080;
      swift_getErrorValue();
      v44 = sub_25C4C8A30();
      v46 = sub_25C458990(v44, v45, v68);

      *(v34 + 34) = v46;
      v47 = v59;
      _os_log_impl(&dword_25C452000, v59, v57, "### Send operation start send failed: operationName=%s, operationUUID=%s, itemUUID=%s, error=%s", v34, 0x2Au);
      v48 = v58;
      swift_arrayDestroy();
      MEMORY[0x25F888630](v48, -1, -1);
      MEMORY[0x25F888630](v34, -1, -1);
    }

    else
    {

      v49 = v17[1];
      v49(v23, v16);
      v49(v25, v16);
    }

    v50 = v62;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v52 = Strong;
      v53 = v63;
      v60(v63, v67, v16);
      v54 = type metadata accessor for NXSessionDaemon.OperationItem(0);
      (*(*(v54 - 8) + 56))(v50, 1, 1, v54);
      swift_beginAccess();
      sub_25C495328(v50, v53);
      swift_endAccess();
    }

    v55 = v32;
    v66(v32);
  }
}

uint64_t sub_25C4AFFC4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v125 = *MEMORY[0x277D85DE8];
  v8 = sub_25C4C8470();
  v115 = *(v8 - 8);
  v9 = *(v115 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25C4C8490();
  v113 = *(v12 - 8);
  v114 = v12;
  v13 = *(v113 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25C4C8280();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = *(v4 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection);
  if (!v20)
  {
    v28 = objc_allocWithZone(sub_25C4C7B80());
    v29 = sub_25C4C7B90();
    swift_willThrow();
    goto LABEL_26;
  }

  v111 = (&v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v116 = -6700;

  NSData = OPACKEncoderCreateNSData(a1);
  if (!NSData)
  {
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_25C4C88F0();

    *&aBlock = 0xD000000000000028;
    *(&aBlock + 1) = 0x800000025C4D1790;
    LODWORD(v119) = v116;
    v30 = sub_25C4C89A0();
    MEMORY[0x25F887A50](v30);

    v31 = objc_allocWithZone(sub_25C4C7B80());
    v29 = sub_25C4C7B90();
    swift_willThrow();

    goto LABEL_26;
  }

  v108 = v17;
  v109 = v16;
  v22 = NSData;
  v23 = sub_25C4C7AF0();
  v25 = v24;

  v26 = v25 >> 62;
  v112 = v25;
  v110 = v20;
  if ((v25 >> 62) > 1)
  {
    if (v26 != 2)
    {
      LODWORD(v27) = 0;
      goto LABEL_16;
    }

    v33 = *(v23 + 16);
    v32 = *(v23 + 24);
    v27 = v32 - v33;
    if (!__OFSUB__(v32, v33))
    {
      if (!HIDWORD(v27))
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v26)
  {
    if (!__OFSUB__(HIDWORD(v23), v23))
    {
      LODWORD(v27) = HIDWORD(v23) - v23;
      if (!((HIDWORD(v23) - v23) >> 32))
      {
        goto LABEL_16;
      }

LABEL_14:
      v34 = objc_allocWithZone(sub_25C4C7B80());
      v35 = v23;
      v29 = sub_25C4C7B90();
      swift_willThrow();

      sub_25C45A004(v35, v112);
      goto LABEL_26;
    }

    goto LABEL_43;
  }

  LODWORD(v27) = BYTE6(v25);
LABEL_16:
  v107 = a2;
  v119 = xmmword_25C4CA800;
  v36 = *(v4 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__securityStream);
  v106 = a3;
  if (!v36)
  {
    LOBYTE(v118) = 2;
    sub_25C4BAFE4();
    v75 = sub_25C4C8940();
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A928, &qword_25C4CACA0);
    v122 = v76;
    v77 = sub_25C4BC1E8(&qword_27FC0A930, &qword_27FC0A928, &qword_25C4CACA0);
    v123 = v77;
    *&aBlock = v75;
    v78 = *(*__swift_project_boxed_opaque_existential_1(&aBlock, v76) + 16);

    sub_25C4C7AD0();
    __swift_destroy_boxed_opaque_existential_0(&aBlock);

    LODWORD(v118) = v27;
    sub_25C4BB038();
    v79 = sub_25C4C8940();
    v122 = v76;
    v123 = v77;
    *&aBlock = v79;
    v80 = *(*__swift_project_boxed_opaque_existential_1(&aBlock, v76) + 16);

    sub_25C4C7AD0();
    __swift_destroy_boxed_opaque_existential_0(&aBlock);

    v122 = MEMORY[0x277CC9318];
    v123 = MEMORY[0x277CC9300];
    v81 = v23;
    v65 = v112;
    *&aBlock = v23;
    *(&aBlock + 1) = v112;
    v82 = __swift_project_boxed_opaque_existential_1(&aBlock, MEMORY[0x277CC9318]);
    v83 = *v82;
    v84 = v82[1];
    sub_25C459FB0(v23, v65);
    sub_25C4B8138(v83, v84);
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
    v73 = v107;
LABEL_38:
    v97 = swift_allocObject();
    v98 = v106;
    *(v97 + 16) = v73;
    *(v97 + 24) = v98;
    v99 = v111;
    *v111 = sub_25C4BB08C;
    v99[1] = v97;
    v100 = v108;
    v101 = v109;
    (*(v108 + 104))(v99, *MEMORY[0x277CD8DB0], v109);
    sub_25C4C8270();

    sub_25C4C8260();
    sub_25C4C82B0();

    sub_25C45A004(v81, v65);
    (*(v100 + 8))(v99, v101);
    result = sub_25C45A004(v119, *(&v119 + 1));
    goto LABEL_39;
  }

  v105 = v23;
  v118 = xmmword_25C4CA800;
  LOBYTE(v117) = 1;
  sub_25C4BAFE4();
  v104 = v36;
  v37 = sub_25C4C8940();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A928, &qword_25C4CACA0);
  v122 = v38;
  v39 = sub_25C4BC1E8(&qword_27FC0A930, &qword_27FC0A928, &qword_25C4CACA0);
  v123 = v39;
  *&aBlock = v37;
  v40 = *(*__swift_project_boxed_opaque_existential_1(&aBlock, v38) + 16);

  sub_25C4C7AD0();
  __swift_destroy_boxed_opaque_existential_0(&aBlock);

  v41 = *(v4 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__securityAuthTagLength);
  v42 = __CFADD__(v27, v41);
  v43 = v27 + v41;
  if (v42)
  {
    __break(1u);
LABEL_41:
    swift_once();
LABEL_20:
    v61 = sub_25C4C7BD0();
    __swift_project_value_buffer(v61, qword_27FC0B978);
    sub_25C459FB0(v11, v4);
    sub_25C459FB0(v11, v4);
    sub_25C459FB0(v11, v4);
    v62 = sub_25C4C7BB0();
    v63 = sub_25C4C8700();
    sub_25C45A004(v11, v4);
    v64 = os_log_type_enabled(v62, v63);
    v65 = v112;
    if (!v64)
    {
      sub_25C45A004(v11, v4);
      sub_25C45A004(v11, v4);

      sub_25C45A004(v11, v4);
      v73 = v107;
LABEL_37:
      sub_25C45A004(v118, *(&v118 + 1));
      v81 = v105;
      goto LABEL_38;
    }

    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v117 = v67;
    *v66 = 136315394;
    *&aBlock = v11;
    *(&aBlock + 1) = v4;
    sub_25C459FB0(v11, v4);
    sub_25C4BB094();
    v68 = sub_25C4C85C0();
    v70 = v69;
    sub_25C45A004(aBlock, *(&aBlock + 1));
    v71 = sub_25C458990(v68, v70, &v117);

    *(v66 + 4) = v71;
    *(v66 + 12) = 2048;
    v72 = v4 >> 62;
    if ((v4 >> 62) <= 1)
    {
      v73 = v107;
      if (!v72)
      {
        sub_25C45A004(v11, v4);
        v74 = BYTE6(v4);
LABEL_36:
        v96 = v104;
        *(v66 + 14) = v74;
        sub_25C45A004(v11, v4);
        _os_log_impl(&dword_25C452000, v62, v63, "Send frame body: data=<%s>, size=%ld", v66, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v67);
        MEMORY[0x25F888630](v67, -1, -1);
        MEMORY[0x25F888630](v66, -1, -1);
        sub_25C45A004(v11, v4);

        goto LABEL_37;
      }

      goto LABEL_32;
    }

    if (v72 == 2)
    {
      v73 = *(v11 + 2);
      v95 = *(v11 + 3);
      sub_25C45A004(v11, v4);
      v74 = v95 - v73;
      if (__OFSUB__(v95, v73))
      {
        __break(1u);
LABEL_32:
        sub_25C45A004(v11, v4);
        LODWORD(v74) = HIDWORD(v11) - v11;
        if (!__OFSUB__(HIDWORD(v11), v11))
        {
          v74 = v74;
          goto LABEL_36;
        }

LABEL_44:
        __break(1u);
      }
    }

    else
    {
      sub_25C45A004(v11, v4);
      v74 = 0;
    }

    v73 = v107;
    goto LABEL_36;
  }

  LODWORD(v117) = v43;
  sub_25C4BB038();
  v44 = sub_25C4C8940();
  v122 = v38;
  v123 = v39;
  *&aBlock = v44;
  v45 = *(*__swift_project_boxed_opaque_existential_1(&aBlock, v38) + 16);

  sub_25C4C7AD0();
  __swift_destroy_boxed_opaque_existential_0(&aBlock);

  v46 = sub_25C4C7AE0();
  v47 = v118;
  v48 = sub_25C4C7AE0();
  *&aBlock = 0;
  v49 = v104;
  v50 = [v104 encryptData:v46 aadData:v48 error:&aBlock];

  v51 = aBlock;
  if (v50)
  {
    v11 = sub_25C4C7AF0();
    v4 = v52;

    v53 = MEMORY[0x277CC9318];
    v54 = MEMORY[0x277CC9300];
    v122 = MEMORY[0x277CC9318];
    v123 = MEMORY[0x277CC9300];
    aBlock = v47;
    v55 = __swift_project_boxed_opaque_existential_1(&aBlock, MEMORY[0x277CC9318]);
    v56 = *v55;
    v57 = v55[1];
    sub_25C459FB0(v47, *(&v47 + 1));
    sub_25C4B8138(v56, v57);
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
    v122 = v53;
    v123 = v54;
    *&aBlock = v11;
    *(&aBlock + 1) = v4;
    v58 = __swift_project_boxed_opaque_existential_1(&aBlock, v53);
    v59 = *v58;
    v60 = v58[1];
    sub_25C459FB0(v11, v4);
    sub_25C4B8138(v59, v60);
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
    if (qword_27FC0B970 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

  v85 = v51;
  v86 = v49;
  v87 = sub_25C4C7A90();

  swift_willThrow();
  v88 = objc_allocWithZone(sub_25C4C7B80());
  v89 = v87;
  v29 = sub_25C4C7B90();
  swift_willThrow();
  sub_25C45A004(v105, v112);

  sub_25C45A004(v118, *(&v118 + 1));
  sub_25C45A004(v119, *(&v119 + 1));
  a3 = v106;
  a2 = v107;
LABEL_26:
  v90 = *(v4 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue);
  v91 = swift_allocObject();
  v91[2] = a2;
  v91[3] = a3;
  v91[4] = v29;
  v123 = sub_25C4BAF74;
  v124 = v91;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v121 = sub_25C4676B4;
  v122 = &block_descriptor_59;
  v92 = _Block_copy(&aBlock);

  v93 = v29;
  sub_25C4C8480();
  *&v119 = MEMORY[0x277D84F90];
  sub_25C4B8B3C(&unk_27FC0A180, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A7B0, &qword_25C4C9AE0);
  sub_25C4BC1E8(&qword_27FC0A190, &unk_27FC0A7B0, &qword_25C4C9AE0);
  sub_25C4C8800();
  MEMORY[0x25F887C10](0, v15, v11, v92);
  _Block_release(v92);

  (*(v115 + 8))(v11, v8);
  (*(v113 + 8))(v15, v114);

LABEL_39:
  v102 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25C4B0DB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6, const char *a7)
{
  v62 = a7;
  v63 = a6;
  v64 = a5;
  v65 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A900, &qword_25C4CAC90);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v53[-v12];
  v14 = sub_25C4C7B20();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v14);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v53[-v19];
  MEMORY[0x28223BE20](v18);
  v23 = &v53[-v22];
  if (a1)
  {
    v60 = v21;
    v61 = a4;
    v24 = a1;
    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v25 = sub_25C4C7BD0();
    __swift_project_value_buffer(v25, qword_27FC0B978);
    v26 = v15[2];
    v26(v23, a2, v14);
    v58 = v26;
    v59 = v15 + 2;
    v26(v20, v65, v14);
    v27 = a1;
    v28 = sub_25C4C7BB0();
    v29 = sub_25C4C8710();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v57 = v13;
      v31 = v30;
      v56 = swift_slowAlloc();
      v66[0] = v56;
      *v31 = 136315650;
      sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
      v55 = v28;
      v32 = sub_25C4C89A0();
      v34 = v33;
      v54 = v29;
      v35 = v15[1];
      v35(v23, v14);
      v36 = sub_25C458990(v32, v34, v66);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2080;
      v37 = sub_25C4C89A0();
      v39 = v38;
      v35(v20, v14);
      v40 = sub_25C458990(v37, v39, v66);

      *(v31 + 14) = v40;
      *(v31 + 22) = 2080;
      swift_getErrorValue();
      v41 = sub_25C4C8A30();
      v43 = sub_25C458990(v41, v42, v66);

      *(v31 + 24) = v43;
      v44 = v55;
      _os_log_impl(&dword_25C452000, v55, v54, v62, v31, 0x20u);
      v45 = v56;
      swift_arrayDestroy();
      MEMORY[0x25F888630](v45, -1, -1);
      v46 = v31;
      v13 = v57;
      MEMORY[0x25F888630](v46, -1, -1);
    }

    else
    {

      v47 = v15[1];
      v47(v20, v14);
      v47(v23, v14);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v49 = Strong;
      v50 = v60;
      v58(v60, v65, v14);
      v51 = type metadata accessor for NXSessionDaemon.OperationItem(0);
      (*(*(v51 - 8) + 56))(v13, 1, 1, v51);
      swift_beginAccess();
      sub_25C495328(v13, v50);
      swift_endAccess();
    }

    v52 = a1;
    v64(a1);
  }
}

void sub_25C4B12C4(void *a1, uint64_t a2, const char *a3)
{
  v6 = sub_25C4C7B20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = a1;
    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v12 = sub_25C4C7BD0();
    __swift_project_value_buffer(v12, qword_27FC0B978);
    (*(v7 + 16))(v10, a2, v6);
    v13 = a1;
    v14 = sub_25C4C7BB0();
    v15 = sub_25C4C8710();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v26 = a3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v27 = v18;
      *v17 = 136315394;
      sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
      v19 = sub_25C4C89A0();
      v21 = v20;
      (*(v7 + 8))(v10, v6);
      v22 = sub_25C458990(v19, v21, &v27);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2080;
      swift_getErrorValue();
      v23 = sub_25C4C8A30();
      v25 = sub_25C458990(v23, v24, &v27);

      *(v17 + 14) = v25;
      _os_log_impl(&dword_25C452000, v14, v15, v26, v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F888630](v18, -1, -1);
      MEMORY[0x25F888630](v17, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }
  }
}

uint64_t sub_25C4B15B8(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  v47 = a3;
  v9 = sub_25C4C7E50();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_25C4C7B20();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v42[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v46 = a5;
    v19 = a1;
    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v20 = sub_25C4C7BD0();
    __swift_project_value_buffer(v20, qword_27FC0B978);
    (*(v15 + 16))(v18, a2, v14);
    (*(v10 + 16))(v13, v47, v9);
    v21 = a1;
    v22 = sub_25C4C7BB0();
    v23 = sub_25C4C8710();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v47 = a4;
      v25 = v24;
      v45 = swift_slowAlloc();
      v48 = v45;
      *v25 = 136315650;
      sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
      v44 = v22;
      v26 = sub_25C4C89A0();
      v43 = v23;
      v27 = v10;
      v29 = v28;
      (*(v15 + 8))(v18, v14);
      v30 = sub_25C458990(v26, v29, &v48);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2080;
      sub_25C4B8B3C(&unk_27FC0AA60, MEMORY[0x277D35798]);
      v31 = sub_25C4C89A0();
      v33 = v32;
      (*(v27 + 8))(v13, v9);
      v34 = sub_25C458990(v31, v33, &v48);

      *(v25 + 14) = v34;
      *(v25 + 22) = 2080;
      swift_getErrorValue();
      v35 = sub_25C4C8A30();
      v37 = sub_25C458990(v35, v36, &v48);

      *(v25 + 24) = v37;
      v38 = v44;
      _os_log_impl(&dword_25C452000, v44, v43, "### Send operation event send failed: operationUUID=%s, event=%s,\nerror=%s", v25, 0x20u);
      v39 = v45;
      swift_arrayDestroy();
      MEMORY[0x25F888630](v39, -1, -1);
      v40 = v25;
      a4 = v47;
      MEMORY[0x25F888630](v40, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v13, v9);
      (*(v15 + 8))(v18, v14);
    }
  }

  return a4(a1);
}

uint64_t sub_25C4B1A24(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = sub_25C4C7B20();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v13 = a1;
    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v14 = sub_25C4C7BD0();
    __swift_project_value_buffer(v14, qword_27FC0B978);
    (*(v9 + 16))(v12, a2, v8);
    v15 = a1;
    v16 = sub_25C4C7BB0();
    v17 = sub_25C4C8710();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v29[1] = a4;
      v19 = v18;
      v20 = swift_slowAlloc();
      v31 = v20;
      *v19 = 136315394;
      sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
      v21 = sub_25C4C89A0();
      v30 = a3;
      v23 = v22;
      (*(v9 + 8))(v12, v8);
      v24 = sub_25C458990(v21, v23, &v31);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      swift_getErrorValue();
      v25 = sub_25C4C8A30();
      v27 = sub_25C458990(v25, v26, &v31);
      a3 = v30;

      *(v19 + 14) = v27;
      _os_log_impl(&dword_25C452000, v16, v17, "### Send operation provider event send failed: operationUUID=%s, error=%s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F888630](v20, -1, -1);
      MEMORY[0x25F888630](v19, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }
  }

  return a3(a1);
}

void sub_25C4B1D3C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void, void), uint64_t a7)
{
  v14 = sub_25C4C7B20();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v17);
  v20 = &v42 - v19;
  if (a1)
  {
    v44 = a2;
    v46 = v18;
    v47 = a5;
    v49 = a7;
    v21 = a1;
    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v22 = sub_25C4C7BD0();
    __swift_project_value_buffer(v22, qword_27FC0B978);
    v23 = *(v15 + 16);
    v48 = a4;
    v45 = v23;
    v23(v20, a4, v14);
    v24 = a1;

    v25 = sub_25C4C7BB0();
    v26 = sub_25C4C8710();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v43 = a6;
      v28 = v27;
      v42 = swift_slowAlloc();
      v50[0] = v42;
      *v28 = 136315650;
      *(v28 + 4) = sub_25C458990(v44, a3, v50);
      *(v28 + 12) = 2080;
      sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
      v29 = sub_25C4C89A0();
      v31 = v30;
      (*(v15 + 8))(v20, v14);
      v32 = sub_25C458990(v29, v31, v50);

      *(v28 + 14) = v32;
      *(v28 + 22) = 2080;
      swift_getErrorValue();
      v33 = sub_25C4C8A30();
      v35 = sub_25C458990(v33, v34, v50);

      *(v28 + 24) = v35;
      _os_log_impl(&dword_25C452000, v25, v26, "### Send request send failed: requestName=%s, requestUUID=%s, error=%s", v28, 0x20u);
      v36 = v42;
      swift_arrayDestroy();
      MEMORY[0x25F888630](v36, -1, -1);
      v37 = v28;
      a6 = v43;
      MEMORY[0x25F888630](v37, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v20, v14);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v39 = Strong;
      v40 = v46;
      v45(v46, v48, v14);
      swift_beginAccess();
      sub_25C495548(0, 0, 0, 0, v40);
      swift_endAccess();
    }

    v41 = a1;
    a6(a1, 0, 1);
  }
}

void sub_25C4B2150(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, const char *a5)
{
  v10 = sub_25C4C7B20();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v32 = a2;
    v15 = a1;
    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v16 = sub_25C4C7BD0();
    __swift_project_value_buffer(v16, qword_27FC0B978);
    (*(v11 + 16))(v14, a4, v10);
    v17 = a1;

    v18 = sub_25C4C7BB0();
    v19 = sub_25C4C8710();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v31 = a5;
      v21 = v20;
      v22 = swift_slowAlloc();
      v33 = v22;
      *v21 = 136315650;
      *(v21 + 4) = sub_25C458990(v32, a3, &v33);
      *(v21 + 12) = 2080;
      sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
      v23 = sub_25C4C89A0();
      v25 = v24;
      (*(v11 + 8))(v14, v10);
      v26 = sub_25C458990(v23, v25, &v33);

      *(v21 + 14) = v26;
      *(v21 + 22) = 2080;
      swift_getErrorValue();
      v27 = sub_25C4C8A30();
      v29 = sub_25C458990(v27, v28, &v33);

      *(v21 + 24) = v29;
      _os_log_impl(&dword_25C452000, v18, v19, v31, v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25F888630](v22, -1, -1);
      MEMORY[0x25F888630](v21, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v14, v10);
    }
  }
}

uint64_t sub_25C4B247C(char a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v51 = a2;
  v52 = a4;
  v8 = sub_25C4C8470();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25C4C8490();
  v49 = *(v13 - 8);
  v50 = v13;
  v14 = *(v49 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25C4C8280();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  result = MEMORY[0x28223BE20](v17);
  v22 = (&v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!*(v5 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection))
  {
    v48 = v9;
    v25 = objc_allocWithZone(sub_25C4C7B80());
    v26 = sub_25C4C7B90();
    swift_willThrow();
LABEL_13:
    v30 = *(v5 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue);
    v31 = swift_allocObject();
    v32 = v52;
    v31[2] = sub_25C4BD444;
    v31[3] = v32;
    v31[4] = v26;
    v59 = sub_25C4BDBBC;
    v60 = v31;
    aBlock = MEMORY[0x277D85DD0];
    v56 = 1107296256;
    v57 = sub_25C4676B4;
    v58 = &block_descriptor_226;
    v33 = _Block_copy(&aBlock);

    v34 = v26;
    sub_25C4C8480();
    *&v54 = MEMORY[0x277D84F90];
    sub_25C4B8B3C(&unk_27FC0A180, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A7B0, &qword_25C4C9AE0);
    sub_25C4BC1E8(&qword_27FC0A190, &unk_27FC0A7B0, &qword_25C4C9AE0);
    sub_25C4C8800();
    MEMORY[0x25F887C10](0, v16, v12, v33);
    _Block_release(v33);

    (*(v48 + 8))(v12, v8);
    (*(v49 + 8))(v16, v50);
  }

  v23 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v23 != 2)
    {
      LODWORD(v24) = 0;
      goto LABEL_15;
    }

    v48 = v9;
    v28 = *(v51 + 16);
    v27 = *(v51 + 24);
    v24 = v27 - v28;
    if (!__OFSUB__(v27, v28))
    {
      if (!HIDWORD(v24))
      {
        goto LABEL_15;
      }

LABEL_12:
      v29 = objc_allocWithZone(sub_25C4C7B80());

      v26 = sub_25C4C7B90();
      swift_willThrow();

      goto LABEL_13;
    }

    __break(1u);
  }

  else
  {
    if (!v23)
    {
      LODWORD(v24) = BYTE6(a3);
LABEL_15:
      v54 = xmmword_25C4CA800;
      LOBYTE(v53) = a1;
      v50 = result;
      sub_25C4BAFE4();

      v35 = sub_25C4C8940();
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A928, &qword_25C4CACA0);
      v58 = v36;
      v37 = sub_25C4BC1E8(&qword_27FC0A930, &qword_27FC0A928, &qword_25C4CACA0);
      v59 = v37;
      aBlock = v35;
      v38 = *(*__swift_project_boxed_opaque_existential_1(&aBlock, v36) + 16);

      sub_25C4C7AD0();
      __swift_destroy_boxed_opaque_existential_0(&aBlock);

      v53 = v24;
      sub_25C4BB038();
      v39 = sub_25C4C8940();
      v58 = v36;
      v59 = v37;
      aBlock = v39;
      v40 = *(*__swift_project_boxed_opaque_existential_1(&aBlock, v36) + 16);

      sub_25C4C7AD0();
      __swift_destroy_boxed_opaque_existential_0(&aBlock);

      v58 = MEMORY[0x277CC9318];
      v59 = MEMORY[0x277CC9300];
      v41 = v51;
      aBlock = v51;
      v56 = a3;
      v42 = __swift_project_boxed_opaque_existential_1(&aBlock, MEMORY[0x277CC9318]);
      v43 = *v42;
      v44 = v42[1];
      sub_25C459FB0(v41, a3);
      sub_25C4B8138(v43, v44);
      __swift_destroy_boxed_opaque_existential_0(&aBlock);
      v45 = swift_allocObject();
      v46 = v52;
      *(v45 + 16) = sub_25C4BD444;
      *(v45 + 24) = v46;
      *v22 = sub_25C4BD590;
      v22[1] = v45;
      v47 = v50;
      (*(v18 + 104))(v22, *MEMORY[0x277CD8DB0], v50);
      sub_25C4C8270();

      sub_25C4C8260();
      sub_25C4C82B0();

      (*(v18 + 8))(v22, v47);
      return sub_25C45A004(v54, *(&v54 + 1));
    }

    v48 = v9;
    if (!__OFSUB__(HIDWORD(v51), v51))
    {
      LODWORD(v24) = HIDWORD(v51) - v51;
      if (!((HIDWORD(v51) - v51) >> 32))
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25C4B2B78(uint64_t a1, void (*a2)(void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A948, &qword_25C4CACA8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  v8 = sub_25C4C8390();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25C4BC9B8(a1, v7, &unk_27FC0A948, &qword_25C4CACA8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_25C4666F8(v7, &unk_27FC0A948, &qword_25C4CACA8);
    return (a2)(0);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    sub_25C4B8B3C(&qword_27FC0A550, MEMORY[0x277CD8FC0]);
    swift_allocError();
    (*(v9 + 16))(v14, v12, v8);
    v15 = objc_allocWithZone(sub_25C4C7B80());
    v16 = sub_25C4C7B90();
    a2();

    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_25C4B2DE8(uint64_t a1, void (*a2)(void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A948, &qword_25C4CACA8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  v8 = sub_25C4C8390();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25C4BC9B8(a1, v7, &unk_27FC0A948, &qword_25C4CACA8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_25C4666F8(v7, &unk_27FC0A948, &qword_25C4CACA8);
    return (a2)(0);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    sub_25C4B8B3C(&qword_27FC0A550, MEMORY[0x277CD8FC0]);
    swift_allocError();
    (*(v9 + 16))(v14, v12, v8);
    v15 = objc_allocWithZone(sub_25C4C7B80());
    v16 = sub_25C4C7B90();
    a2();

    return (*(v9 + 8))(v12, v8);
  }
}

void sub_25C4B3058(char a1)
{
  v3 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingSession;
  v4 = *(v1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingSession);
  if (v4)
  {
    [v4 invalidate];
  }

  v5 = [objc_allocWithZone(MEMORY[0x277D028E8]) init];
  v6 = *(v1 + v3);
  *(v1 + v3) = v5;
  v7 = v5;

  [v7 setDispatchQueue_];
  [v7 setFlags_];
  if (*(v1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkIsClient))
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (*(v1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkIsClient))
  {
    v9 = 3;
  }

  else
  {
    v9 = 4;
  }

  v10 = a1 & 1;
  if (a1)
  {
    v11 = v8;
  }

  else
  {
    v11 = v9;
  }

  [v7 setSessionType_];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;
  v32 = sub_25C4BD0D4;
  v33 = v14;
  v28 = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_25C4B39FC;
  v31 = &block_descriptor_195;
  v15 = _Block_copy(&v28);

  [v7 setPromptForPINHandler_];
  _Block_release(v15);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;
  v32 = sub_25C4BD1A0;
  v33 = v18;
  v28 = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_25C4B3A5C;
  v31 = &block_descriptor_203;
  v19 = _Block_copy(&v28);

  [v7 setShowPINHandlerEx_];
  _Block_release(v19);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v22 + 24) = v21;
  *(v22 + 32) = v10;
  v32 = sub_25C4BD274;
  v33 = v22;
  v28 = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_25C4B3DCC;
  v31 = &block_descriptor_211;
  v23 = _Block_copy(&v28);

  [v7 setSendMessageDataHandler_];
  _Block_release(v23);
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  *(v26 + 24) = v25;
  *(v26 + 32) = v10;
  v32 = sub_25C4BD390;
  v33 = v26;
  v28 = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_25C4BDC4C;
  v31 = &block_descriptor_219;
  v27 = _Block_copy(&v28);

  [v7 setCompletionHandler_];
  _Block_release(v27);
  [v7 activate];
}

uint64_t sub_25C4B34DC(int a1, int a2, int a3)
{
  LODWORD(v48) = a3;
  LODWORD(v47) = a2;
  LODWORD(v46) = a1;
  v4 = sub_25C4C7D30();
  v50 = *(v4 - 8);
  v5 = *(v50 + 64);
  MEMORY[0x28223BE20](v4);
  v49 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25C4C7EC0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v51 = sub_25C4C7FB0();
  v9 = *(v51 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v51);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v45 - v14;
  v16 = sub_25C4C84C0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (&v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v3 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue);
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x277D85200], v16);
  v22 = v21;
  LOBYTE(v21) = sub_25C4C84E0();
  (*(v17 + 8))(v20, v16);
  if (v21)
  {
    sub_25C4C7EB0();
    sub_25C4C7FA0();
    v16 = v15;
    if (qword_27FC0B970 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v47 = v4;
  v48 = v3;
  v23 = sub_25C4C7BD0();
  __swift_project_value_buffer(v23, qword_27FC0B978);
  v24 = v13;
  v25 = v13;
  v26 = v51;
  v46 = v9[2];
  v46(v25, v16, v51);
  v27 = sub_25C4C7BB0();
  v28 = sub_25C4C8720();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v45 = v16;
    v31 = v30;
    v52 = v30;
    *v29 = 136315138;
    sub_25C4B8B3C(&qword_27FC0AA38, MEMORY[0x277D35810]);
    v32 = sub_25C4C89A0();
    v33 = v24;
    v35 = v34;
    v36 = v9[1];
    v36(v33, v51);
    v37 = sub_25C458990(v32, v35, &v52);

    *(v29 + 4) = v37;
    _os_log_impl(&dword_25C452000, v27, v28, "Pairing prompt: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    v38 = v31;
    v16 = v45;
    MEMORY[0x25F888630](v38, -1, -1);
    v39 = v29;
    v26 = v51;
    MEMORY[0x25F888630](v39, -1, -1);
  }

  else
  {

    v36 = v9[1];
    v36(v24, v26);
  }

  v40 = v49;
  *(v48 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingReported) = 1;
  v46(v40, v16, v26);
  v41 = v50;
  v42 = v16;
  v43 = v47;
  (*(v50 + 104))(v40, *MEMORY[0x277D35690], v47);
  sub_25C49A214(v40);
  (*(v41 + 8))(v40, v43);
  return (v36)(v42, v26);
}

uint64_t sub_25C4B39FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

uint64_t sub_25C4B3A5C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = sub_25C4C8550();
  v7 = v6;

  v4(a2, v5, v7);
}

uint64_t sub_25C4B3AD8(char a1, char a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = sub_25C4C84C0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v5 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x277D85200], v10);
  v16 = v15;
  LOBYTE(v15) = sub_25C4C84E0();
  (*(v11 + 8))(v14, v10);
  if (v15)
  {
    if (qword_27FC0B970 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v17 = a2 & 1;
  v18 = sub_25C4C7BD0();
  __swift_project_value_buffer(v18, qword_27FC0B978);
  sub_25C459FB0(a3, a4);
  v19 = sub_25C4C7BB0();
  v20 = sub_25C4C86F0();
  if (os_log_type_enabled(v19, v20))
  {
    result = swift_slowAlloc();
    *result = 67109632;
    *(result + 4) = a1 & 1;
    *(result + 8) = 1024;
    *(result + 10) = v17;
    *(result + 14) = 2048;
    v22 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      if (v22 != 2)
      {
        v23 = 0;
        goto LABEL_15;
      }

      v25 = *(a3 + 16);
      v24 = *(a3 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (!v26)
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v22)
    {
      v23 = BYTE6(a4);
LABEL_15:
      *(result + 16) = v23;
      v27 = result;
      sub_25C45A004(a3, a4);
      _os_log_impl(&dword_25C452000, v19, v20, "Pairing send: setup=%{BOOL}d, start=%{BOOL}d, data=%ld bytes", v27, 0x18u);
      MEMORY[0x25F888630](v27, -1, -1);
      goto LABEL_16;
    }

    LODWORD(v23) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      __break(1u);
      return result;
    }

    v23 = v23;
    goto LABEL_15;
  }

  sub_25C45A004(a3, a4);
LABEL_16:

  if (v17)
  {
    v28 = 5;
  }

  else
  {
    v28 = 6;
  }

  if (v17)
  {
    v29 = 3;
  }

  else
  {
    v29 = 4;
  }

  if (a1)
  {
    v30 = v28;
  }

  else
  {
    v30 = v29;
  }

  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_25C4B247C(v30, a3, a4, v31);
}

uint64_t sub_25C4B3DCC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v8 = sub_25C4C7AF0();
  v10 = v9;

  v6(a2, v8, v10);
  sub_25C45A004(v8, v10);
}

uint64_t sub_25C4B3E60(char a1, void *a2)
{
  v4 = v2;
  v38 = *MEMORY[0x277D85DE8];
  v7 = sub_25C4C84C0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v4 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
  v13 = v12;
  v14 = sub_25C4C84E0();
  (*(v8 + 8))(v11, v7);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v3 = *(v4 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingSession);
  if (v3)
  {
    v14 = 0xD000000000000017;
    if (a2)
    {
      swift_willThrow();
      v15 = v3;
LABEL_5:
      objc_allocWithZone(sub_25C4C7B80());
      v16 = a2;
      v17 = sub_25C4C7B90();
      v18 = *(v4 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sessionStepError);
      *(v4 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sessionStepError) = v17;

LABEL_6:
      sub_25C495A00();

      goto LABEL_7;
    }

    v21 = v3;
    v22 = sub_25C4C8540();
    v36 = 0;
    v23 = [v21 openStreamWithName:v22 type:2 error:&v36];

    v24 = v36;
    if (!v23)
    {
      v30 = v36;
      sub_25C4C7A90();

      swift_willThrow();
      goto LABEL_5;
    }

    v25 = *(v4 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__securityStream);
    *(v4 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__securityStream) = v23;
    v26 = v24;
    v11 = v23;

    v27 = [v11 authTagLength];
    if (HIDWORD(v27))
    {
      v36 = 0;
      v37 = 0xE000000000000000;
      sub_25C4C88F0();

      v36 = 0xD000000000000019;
      v37 = 0x800000025C4D1860;
      v35[1] = [v11 authTagLength];
      v28 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v28);

      v29 = objc_allocWithZone(sub_25C4C7B80());
      sub_25C4C7B90();
      swift_willThrow();

      goto LABEL_5;
    }

    *(v4 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__securityAuthTagLength) = v27;
    *(v4 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingCompleted) = 1;
    if (mach_absolute_time() >= *(v4 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingStartTicks))
    {
      v14 = UpTicksToMilliseconds();
      if (qword_27FC0B970 == -1)
      {
LABEL_14:
        v31 = sub_25C4C7BD0();
        __swift_project_value_buffer(v31, qword_27FC0B978);
        v32 = sub_25C4C7BB0();
        v33 = sub_25C4C8720();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 67109376;
          *(v34 + 4) = a1 & 1;
          *(v34 + 8) = 2048;
          *(v34 + 10) = v14;
          _os_log_impl(&dword_25C452000, v32, v33, "Pairing completed: setup=%{BOOL}d, duration=%llu ms", v34, 0x12u);
          MEMORY[0x25F888630](v34, -1, -1);
        }

        goto LABEL_6;
      }

LABEL_19:
      swift_once();
      goto LABEL_14;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_7:
  result = sub_25C4B4484(v4, a2);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25C4B42D4()
{
  v1 = sub_25C4C84C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = sub_25C4C84E0();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v8 = *(v0 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingSession);
    if (v8)
    {
      v9 = v8;
      v10 = sub_25C4C8540();
      [v9 tryPIN_];
    }

    else
    {
      v11 = objc_allocWithZone(sub_25C4C7B80());
      sub_25C4C7B90();
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25C4B4484(uint64_t a1, void *a2)
{
  v4 = sub_25C4C7D30();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_25C4C7D80();
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v32);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25C4C7FD0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  result = MEMORY[0x28223BE20](v13);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingReported) == 1)
  {
    v29 = v5;
    v31 = v4;
    *(a1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingReported) = 0;
    v19 = objc_allocWithZone(sub_25C4C80C0());
    v20 = a2;
    sub_25C4C80D0();
    sub_25C4C7FC0();
    v30 = a1;
    v21 = a1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_serverEventHandler;
    swift_beginAccess();
    v22 = *v21;
    if (*v21)
    {
      v23 = *(v21 + 8);
      v24 = v14;
      v28 = *(v14 + 16);
      v28(v12, v18, v13);
      v25 = v32;
      (*(v9 + 104))(v12, *MEMORY[0x277D35750], v32);

      v22(v12);
      sub_25C45A2C8(v22);
      (*(v9 + 8))(v12, v25);
      v28(v8, v18, v13);
    }

    else
    {
      v24 = v14;
      (*(v14 + 16))(v8, v18, v13);
    }

    v26 = v29;
    v27 = v31;
    (*(v29 + 104))(v8, *MEMORY[0x277D35698], v31);
    sub_25C49A214(v8);
    (*(v26 + 8))(v8, v27);
    return (*(v24 + 8))(v18, v13);
  }

  return result;
}

size_t sub_25C4B480C(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A988, &qword_25C4CACC8);
  v10 = *(type metadata accessor for NXSessionDaemon.SendItem(0) - 8);
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
  v15 = *(type metadata accessor for NXSessionDaemon.SendItem(0) - 8);
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

uint64_t sub_25C4B49E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_25C458F84(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25C4B6EA4();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_25C4C7B20();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for NXSessionDaemon.OperationItem(0);
    v22 = *(v15 - 8);
    sub_25C4BB0E8(v14 + *(v22 + 72) * v8, a2, type metadata accessor for NXSessionDaemon.OperationItem);
    sub_25C4B5A98(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for NXSessionDaemon.OperationItem(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_25C4B4B80(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for NXSessionDaemon.OperationItem(0);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25C4C7B20();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A958, &qword_25C4CACB0);
  v48 = a2;
  result = sub_25C4C8970();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_25C4BB0E8(v31 + v32 * v28, v52, type metadata accessor for NXSessionDaemon.OperationItem);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_25C4BACD0(v33 + v32 * v28, v52, type metadata accessor for NXSessionDaemon.OperationItem);
      }

      v34 = *(v16 + 40);
      sub_25C4B8B3C(&unk_27FC0A960, MEMORY[0x277CC95F0]);
      result = sub_25C4C8510();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_25C4BB0E8(v52, *(v16 + 56) + v32 * v24, type metadata accessor for NXSessionDaemon.OperationItem);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_25C4B5020(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_25C4C7B20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A980, &qword_25C4CACC0);
  v47 = a2;
  result = sub_25C4C8970();
  v14 = result;
  if (*(v11 + 16))
  {
    v53 = v10;
    v43 = v3;
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
    v44 = (v7 + 16);
    v45 = v11;
    v46 = v7;
    v48 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v27 = v24 | (v15 << 6);
      v28 = *(v11 + 48);
      v52 = *(v46 + 72);
      v29 = v28 + v52 * v27;
      if (v47)
      {
        (*v48)(v53, v29, v6);
        v30 = *(v11 + 56) + 32 * v27;
        v51 = *v30;
        v50 = *(v30 + 8);
        v49 = *(v30 + 24);
      }

      else
      {
        (*v44)(v53, v29, v6);
        v31 = *(v11 + 56) + 32 * v27;
        v51 = *v31;
        v32 = *(v31 + 24);
        v50 = *(v31 + 8);

        v49 = v32;
      }

      v33 = *(v14 + 40);
      sub_25C4B8B3C(&unk_27FC0A960, MEMORY[0x277CC95F0]);
      result = sub_25C4C8510();
      v34 = -1 << *(v14 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v21 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v21 + 8 * v36);
          if (v40 != -1)
          {
            v22 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v35) & ~*(v21 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v48)(*(v14 + 48) + v52 * v22, v53, v6);
      v23 = *(v14 + 56) + 32 * v22;
      *v23 = v51;
      *(v23 + 8) = v50;
      *(v23 + 24) = v49;
      ++*(v14 + 16);
      v11 = v45;
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
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v11 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v16, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v41;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_25C4B5444(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0AA40, qword_25C4CAD50);
  result = sub_25C4C8970();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 16 * v20;
      if (a2)
      {
        sub_25C4BBBA8(v22, v33);
      }

      else
      {
        sub_25C4B8A80(v22, v33);
      }

      v23 = *(v8 + 40);
      result = sub_25C4C8A50();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_25C4BBBA8(v33, *(v8 + 56) + 16 * v16);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_25C4B56BC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_25C4C7B20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4B0, &qword_25C4CACD0);
  v43 = a2;
  result = sub_25C4C8970();
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
      sub_25C4B8B3C(&unk_27FC0A960, MEMORY[0x277CC95F0]);
      result = sub_25C4C8510();
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

unint64_t sub_25C4B5A98(int64_t a1, uint64_t a2)
{
  v4 = sub_25C4C7B20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = sub_25C4C8810();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_25C4B8B3C(&unk_27FC0A960, MEMORY[0x277CC95F0]);
      v24 = sub_25C4C8510();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(type metadata accessor for NXSessionDaemon.OperationItem(0) - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_25C4B5DDC(int64_t a1, uint64_t a2)
{
  v44 = sub_25C4C7B20();
  v4 = *(v44 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v44);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v45 = v7;
    v13 = sub_25C4C8810();
    v14 = v44;
    v7 = v45;
    v15 = v12;
    v42 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v40 = a2 + 64;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v43;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v41(v43, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_25C4B8B3C(&unk_27FC0A960, MEMORY[0x277CC95F0]);
      v26 = sub_25C4C8510();
      result = (*v39)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v42)
      {
        if (v27 >= v42 && a1 >= v27)
        {
LABEL_15:
          v7 = v45;
          v30 = *(v45 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v45;
            v18 = v19;
            v15 = v22;
            v9 = v40;
          }

          else
          {
            v9 = v40;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v45;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 32 * a1);
          v33 = (v31 + 32 * v11);
          if (a1 != v11 || v32 >= v33 + 2)
          {
            v34 = v33[1];
            *v32 = *v33;
            v32[1] = v34;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v42 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v40;
      v18 = v19;
      v7 = v45;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(v7 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v37;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_25C4B60FC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25C4C8810() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_25C4C8A50();
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
      result = v17 + 16 * v3;
      if (v3 < v6 || result >= v17 + 16 * v6 + 16)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
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
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_25C4B628C(int64_t a1, uint64_t a2)
{
  v43 = sub_25C4C7B20();
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
    v13 = sub_25C4C8810();
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
      sub_25C4B8B3C(&unk_27FC0A960, MEMORY[0x277CC95F0]);
      v26 = sub_25C4C8510();
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

uint64_t sub_25C4B65AC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25C4C7B20();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_25C458F84(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_25C4B6EA4();
      goto LABEL_7;
    }

    sub_25C4B4B80(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_25C458F84(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_25C4B6C78(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_25C4C8A20();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = v22 + *(*(type metadata accessor for NXSessionDaemon.OperationItem(0) - 8) + 72) * v15;

  return sub_25C4BB150(a1, v23);
}

uint64_t sub_25C4B6794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v36 = a2;
  v37 = a3;
  v35 = a1;
  v11 = sub_25C4C7B20();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  v18 = sub_25C458F84(a5);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a6 & 1) == 0)
  {
    if (v23 >= v21 && (a6 & 1) == 0)
    {
      sub_25C4B71C8();
      goto LABEL_9;
    }

    sub_25C4B5020(v21, a6 & 1);
    v24 = *v7;
    v25 = sub_25C458F84(a5);
    if ((v22 & 1) == (v26 & 1))
    {
      v18 = v25;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_25C4C8A20();
    __break(1u);
    return result;
  }

LABEL_9:
  v27 = v37;
  v28 = *v7;
  if (v22)
  {
    v29 = (v28[7] + 32 * v18);
    v30 = v29[1];
    v31 = v29[3];
    v32 = v36;
    *v29 = v35;
    v29[1] = v32;
    v29[2] = v27;
    v29[3] = a4;
  }

  else
  {
    (*(v12 + 16))(v15, a5, v11);
    return sub_25C4B6D68(v18, v15, v35, v36, v27, a4, v28);
  }
}

uint64_t sub_25C4B698C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_25C462F38(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_25C4B7474();
      v9 = v17;
      goto LABEL_8;
    }

    sub_25C4B5444(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_25C462F38(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_25C4C8A20();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7] + 16 * v9;

    return sub_25C4BDB54(a1, v21);
  }

  else
  {

    return sub_25C4B6E3C(v9, a2, a1, v20);
  }
}

uint64_t sub_25C4B6AAC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25C4C7B20();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_25C458F84(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_25C4B75F0();
      goto LABEL_7;
    }

    sub_25C4B56BC(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_25C458F84(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_25C4598E4(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_25C4C8A20();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_25C4B6C78(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_25C4C7B20();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for NXSessionDaemon.OperationItem(0);
  result = sub_25C4BB0E8(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for NXSessionDaemon.OperationItem);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_25C4B6D68(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v14 = a7[6];
  v15 = sub_25C4C7B20();
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a2, v15);
  v17 = (a7[7] + 32 * a1);
  *v17 = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v18 = a7[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v20;
  }

  return result;
}

uint64_t sub_25C4B6E3C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_25C4BBBA8(a3, a4[7] + 16 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

char *sub_25C4B6EA4()
{
  v1 = v0;
  v2 = type metadata accessor for NXSessionDaemon.OperationItem(0);
  v40 = *(v2 - 8);
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v39 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_25C4C7B20();
  v42 = *(v38 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A958, &qword_25C4CACB0);
  v7 = *v0;
  v8 = sub_25C4C8960();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v41 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v34 = v42 + 32;
    v35 = v42 + 16;
    v36 = v7;
    v19 = v42;
    v20 = v9;
    if (v17)
    {
      do
      {
        v21 = __clz(__rbit64(v17));
        v43 = (v17 - 1) & v17;
LABEL_14:
        v24 = v21 | (v13 << 6);
        v25 = *(v19 + 72) * v24;
        v27 = v37;
        v26 = v38;
        (*(v19 + 16))(v37, *(v7 + 48) + v25, v38);
        v28 = *(v7 + 56);
        v29 = v39;
        v30 = *(v40 + 72) * v24;
        sub_25C4BACD0(v28 + v30, v39, type metadata accessor for NXSessionDaemon.OperationItem);
        (*(v19 + 32))(*(v20 + 48) + v25, v27, v26);
        v31 = v29;
        v7 = v36;
        result = sub_25C4BB0E8(v31, *(v20 + 56) + v30, type metadata accessor for NXSessionDaemon.OperationItem);
        v17 = v43;
      }

      while (v43);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v32;
        v9 = v41;
        goto LABEL_18;
      }

      v23 = *(v33 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v43 = (v23 - 1) & v23;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

char *sub_25C4B71C8()
{
  v1 = v0;
  v39 = sub_25C4C7B20();
  v41 = *(v39 - 8);
  v2 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  v38 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A980, &qword_25C4CACC0);
  v4 = *v0;
  v5 = sub_25C4C8960();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v40 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v41 + 32;
    v36 = v41 + 16;
    v37 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v43 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v41;
        v21 = *(v41 + 72) * v19;
        v22 = v38;
        v23 = v39;
        (*(v41 + 16))(v38, *(v4 + 48) + v21, v39);
        v24 = 32 * v19;
        v25 = *(v4 + 56) + 32 * v19;
        v26 = *v25;
        v27 = *(v25 + 24);
        v28 = v40;
        v29 = *(v40 + 48);
        v30 = *(v20 + 32);
        v42 = *(v25 + 8);
        v30(v29 + v21, v22, v23);
        v31 = *(v28 + 56) + v24;
        *v31 = v26;
        v4 = v37;
        *(v31 + 8) = v42;
        *(v31 + 24) = v27;

        v14 = v43;
      }

      while (v43);
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

        v1 = v33;
        v6 = v40;
        goto LABEL_18;
      }

      v18 = *(v34 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v43 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_25C4B7474()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0AA40, qword_25C4CAD50);
  v2 = *v0;
  v3 = sub_25C4C8960();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_25C4B8A80(*(v2 + 56) + 16 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_25C4BBBA8(v19, *(v4 + 56) + 16 * v17);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_25C4B75F0()
{
  v1 = v0;
  v34 = sub_25C4C7B20();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4B0, &qword_25C4CACD0);
  v4 = *v0;
  v5 = sub_25C4C8960();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
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

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_25C4B7870(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  v8 = sub_25C4C8880();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      sub_25C4BC880(*(v6 + 48) + 40 * v10, v18);
      v12 = MEMORY[0x25F887D50](v18, a2);
      sub_25C4BC82C(v18);
      if (v12)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_25C4BC82C(a2);
    sub_25C4BC880(*(v6 + 48) + 40 * v10, a1);
    return 0;
  }

  else
  {
LABEL_5:
    v13 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_25C4BC880(a2, v18);
    v17 = *v3;
    sub_25C4B7C1C(v18, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v17;
    v15 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v15;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_25C4B79BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A9F8, &unk_25C4CAD20);
  result = sub_25C4C88C0();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 40 * (v16 | (v7 << 6));
      v30 = *v19;
      v31 = *(v19 + 16);
      v32 = *(v19 + 32);
      v20 = *(v6 + 40);
      result = sub_25C4C8880();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 40 * v14;
      *v15 = v30;
      *(v15 + 16) = v31;
      *(v15 + 32) = v32;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_25C4B7C1C(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25C4B79BC(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_25C4B7D94();
      goto LABEL_12;
    }

    sub_25C4B7F0C(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  result = sub_25C4C8880();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      sub_25C4BC880(*(v9 + 48) + 40 * a2, v20);
      v13 = MEMORY[0x25F887D50](v20, v6);
      result = sub_25C4BC82C(v20);
      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v15 = *(v14 + 48) + 40 * a2;
  v16 = *(v6 + 16);
  *v15 = *v6;
  *(v15 + 16) = v16;
  *(v15 + 32) = *(v6 + 32);
  v17 = *(v14 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v14 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25C4C8A10();
  __break(1u);
  return result;
}

void *sub_25C4B7D94()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A9F8, &unk_25C4CAD20);
  v2 = *v0;
  v3 = sub_25C4C88B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 40 * (v14 | (v8 << 6));
        result = sub_25C4BC880(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_25C4B7F0C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A9F8, &unk_25C4CAD20);
  result = sub_25C4C88C0();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      sub_25C4BC880(*(v3 + 48) + 40 * (v17 | (v7 << 6)), v29);
      v20 = *(v6 + 40);
      result = sub_25C4C8880();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 40 * v13;
      v15 = v29[0];
      v16 = v29[1];
      *(v14 + 32) = v30;
      *v14 = v15;
      *(v14 + 16) = v16;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v28;
        goto LABEL_28;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_25C4B8138(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      result = sub_25C4C7AD0();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_25C4B8270(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25C4B8270(uint64_t a1, uint64_t a2)
{
  result = sub_25C4C7A50();
  if (!result || (result = sub_25C4C7A70(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_25C4C7A60();
      return sub_25C4C7AD0();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_25C4B8304(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1B0, &qword_25C4C9B00);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = MEMORY[0x277D84F98];
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__clients] = MEMORY[0x277D84F98];
  v12 = &v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_connectionEndedHandler];
  *v12 = 0;
  v12[1] = 0;
  v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__invalidateCoreCalled] = 0;
  v13 = &v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_invalidationHandler];
  *v13 = 0;
  v13[1] = 0;
  v14 = sub_25C4C7C50();
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v16(v10, 1, 1, v14);
  v16(v8, 1, 1, v14);
  sub_25C4C7DC0();
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__operations] = v11;
  v17 = &v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_serverEventHandler];
  *v17 = 0;
  v17[1] = 0;
  v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_verboseLogging] = 0;
  v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sessionState] = 0;
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sessionStepError] = 0;
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsAccount] = 0;
  v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsInvitationState] = 2;
  v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsSessionStarted] = 0;
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsService] = 0;
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsSession] = 0;
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSession] = 0;
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSessionTimer] = 0;
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDiscoverTimer] = 0;
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanEndpointFound] = 0;
  v18 = &v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanPeerAddressString];
  *v18 = 0;
  v18[1] = 0;
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanSubscriber] = 0;
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__needsNexusBluetoothAdvertiser] = 0;
  v19 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection;
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection] = 0;
  v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkReceiving] = 0;
  v20 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__messageUpperID;
  *&v2[v20] = CUNextID64();
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__outstandingOperationItems] = v11;
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__outstandingRequests] = v11;
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sendQueue] = MEMORY[0x277D84F90];
  v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingCompleted] = 0;
  v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingReported] = 0;
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingSession] = 0;
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingStartTicks] = 0;
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__securityAuthTagLength] = 0;
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__securityStream] = 0;
  v21 = *&v2[v19];
  *&v2[v19] = v26;

  (*(v15 + 104))(&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_endpoint], *MEMORY[0x277D35618], v14);
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__daemon] = a2;
  v22 = *(a2 + 16);
  *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue] = v22;
  v23 = &v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsServiceID];
  *v23 = 0;
  v23[1] = 0;
  v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkIsClient] = 0;
  v28.receiver = v2;
  v28.super_class = ObjectType;

  v24 = v22;
  return objc_msgSendSuper2(&v28, sel_init);
}

id sub_25C4B86B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a2;
  v33 = a3;
  v34 = a1;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1B0, &qword_25C4C9B00);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  v13 = MEMORY[0x277D84F98];
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__clients] = MEMORY[0x277D84F98];
  v14 = &v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_connectionEndedHandler];
  *v14 = 0;
  v14[1] = 0;
  v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__invalidateCoreCalled] = 0;
  v15 = &v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_invalidationHandler];
  *v15 = 0;
  v15[1] = 0;
  v16 = sub_25C4C7C50();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v18(v12, 1, 1, v16);
  v18(v10, 1, 1, v16);
  sub_25C4C7DC0();
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__operations] = v13;
  v19 = &v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_serverEventHandler];
  *v19 = 0;
  v19[1] = 0;
  v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_verboseLogging] = 0;
  v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sessionState] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sessionStepError] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsAccount] = 0;
  v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsInvitationState] = 2;
  v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsSessionStarted] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsService] = 0;
  v20 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsSession;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsSession] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSession] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSessionTimer] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDiscoverTimer] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanEndpointFound] = 0;
  v21 = &v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanPeerAddressString];
  *v21 = 0;
  v21[1] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanSubscriber] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__needsNexusBluetoothAdvertiser] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection] = 0;
  v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkReceiving] = 0;
  v22 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__messageUpperID;
  *&v4[v22] = CUNextID64();
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__outstandingOperationItems] = v13;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__outstandingRequests] = v13;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sendQueue] = MEMORY[0x277D84F90];
  v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingCompleted] = 0;
  v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingReported] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingSession] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingStartTicks] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__securityAuthTagLength] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__securityStream] = 0;
  (*(v17 + 104))(&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_endpoint], *MEMORY[0x277D35618], v16);
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__daemon] = a4;
  v23 = *(a4 + 16);
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue] = v23;
  v24 = &v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsServiceID];
  v25 = v33;
  *v24 = v32;
  v24[1] = v25;
  swift_beginAccess();
  v26 = *&v4[v20];
  v27 = v34;
  *&v4[v20] = v34;

  v28 = v23;
  v29 = v27;

  v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkIsClient] = 0;
  v36.receiver = v4;
  v36.super_class = ObjectType;
  return objc_msgSendSuper2(&v36, sel_init);
}

uint64_t sub_25C4B8AB8()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_25C4B8AF8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  sub_25C497A88(v1, v2, v3);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25C4B8B3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25C4B8B84(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x25F887AF0](v2, MEMORY[0x277D84030], MEMORY[0x277D84038]);
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_25C4BC880(v4, v5);
      sub_25C4B7870(v6, v5);
      sub_25C4BC82C(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

void sub_25C4B8C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = a3;
  v70 = a4;
  v76 = a2;
  v5 = sub_25C4C7E50();
  v73 = *(v5 - 8);
  v74 = v5;
  v6 = *(v73 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v67 = &v58[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v7);
  v65 = &v58[-v9];
  MEMORY[0x28223BE20](v8);
  v63 = &v58[-v10];
  v11 = sub_25C4C7B20();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v66 = &v58[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v14);
  v64 = &v58[-v16];
  MEMORY[0x28223BE20](v15);
  v18 = &v58[-v17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A908, &qword_25C4CAC98);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_25C4CA7F0;
  *(v19 + 32) = 1;
  v20 = MEMORY[0x277D83B88];
  *(v19 + 88) = MEMORY[0x277D83B88];
  *(v19 + 56) = v20;
  *(v19 + 64) = 10;
  *(v19 + 96) = 5;
  *(v19 + 120) = v20;
  *(v19 + 152) = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v19 + 128));
  v71 = v12;
  v22 = *(v12 + 16);
  v68 = a1;
  v75 = v11;
  v72 = v22;
  v22(boxed_opaque_existential_1, a1, v11);
  *(v19 + 160) = 6;
  *(v19 + 184) = v20;
  v23 = sub_25C4C7E30();
  v24 = v63;
  v67 = v13;
  v62 = v6;
  *(v19 + 216) = MEMORY[0x277CC9318];
  *(v19 + 192) = v23;
  *(v19 + 200) = v25;
  sub_25C4BC77C(0, &unk_27FC0A910, 0x277CBEAC0);
  v66 = sub_25C4C8660();
  if (qword_27FC0B970 != -1)
  {
    swift_once();
  }

  v26 = sub_25C4C7BD0();
  __swift_project_value_buffer(v26, qword_27FC0B978);
  v27 = v18;
  v28 = v68;
  v72(v18, v68, v75);
  v30 = v73;
  v29 = v74;
  v61 = *(v73 + 16);
  v61(v24, v76, v74);
  v31 = sub_25C4C7BB0();
  v32 = sub_25C4C86F0();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v77[0] = v60;
    *v33 = 136315394;
    sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
    v59 = v32;
    v34 = v27;
    v35 = v75;
    v36 = sub_25C4C89A0();
    v38 = v37;
    (*(v71 + 8))(v34, v35);
    v39 = sub_25C458990(v36, v38, v77);

    *(v33 + 4) = v39;
    *(v33 + 12) = 2080;
    sub_25C4B8B3C(&unk_27FC0AA60, MEMORY[0x277D35798]);
    v40 = sub_25C4C89A0();
    v42 = v41;
    (*(v73 + 8))(v24, v74);
    v43 = sub_25C458990(v40, v42, v77);

    *(v33 + 14) = v43;
    _os_log_impl(&dword_25C452000, v31, v59, "Send operation event: operationUUID=%s, event=%s", v33, 0x16u);
    v44 = v60;
    swift_arrayDestroy();
    MEMORY[0x25F888630](v44, -1, -1);
    v45 = v33;
    v30 = v73;
    v29 = v74;
    MEMORY[0x25F888630](v45, -1, -1);

    v46 = v71;
  }

  else
  {

    (*(v30 + 8))(v24, v29);
    v46 = v71;
    (*(v71 + 8))(v27, v75);
  }

  v48 = v64;
  v47 = v65;
  v49 = v75;
  v72(v64, v28, v75);
  v61(v47, v76, v29);
  v50 = v47;
  v51 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v52 = &v67[*(v30 + 80) + v51] & ~*(v30 + 80);
  v53 = (v62 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  (*(v46 + 32))(v54 + v51, v48, v49);
  (*(v30 + 32))(v54 + v52, v50, v29);
  v55 = (v54 + v53);
  v56 = v70;
  *v55 = v69;
  v55[1] = v56;

  v57 = v66;
  sub_25C4AFFC4(v66, sub_25C4BB678, v54);
}

uint64_t sub_25C4B9614()
{
  v58 = sub_25C4C7B20();
  v1 = *(v58 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v58);
  v50 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v4;
  MEMORY[0x28223BE20](v3);
  v56 = &v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4F0, &unk_25C4CACE0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = &v46 - v11;
  v12 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__operations;
  swift_beginAccess();
  v52 = v0;
  v13 = *(v0 + v12);
  v14 = *(v13 + 64);
  v47 = v13 + 64;
  v48 = v13;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v46 = (v15 + 63) >> 6;
  v54 = v1 + 32;
  v55 = v1 + 16;
  v57 = v1;
  v49 = v1 + 8;

  v19 = 0;
  if (v17)
  {
    while (1)
    {
      v20 = v19;
LABEL_12:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v23 | (v20 << 6);
      v25 = v48;
      v27 = v56;
      v26 = v57;
      v28 = v58;
      (*(v57 + 16))(v56, *(v48 + 48) + *(v57 + 72) * v24, v58);
      v29 = *(*(v25 + 56) + 8 * v24);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4F8, &qword_25C4CA220);
      v31 = *(v30 + 48);
      (*(v26 + 32))(v10, v27, v28);
      *&v10[v31] = v29;
      (*(*(v30 - 8) + 56))(v10, 0, 1, v30);

      v22 = v20;
LABEL_13:
      v32 = v53;
      sub_25C465DA4(v10, v53, &qword_27FC0A4F0, &unk_25C4CACE0);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4F8, &qword_25C4CA220);
      if ((*(*(v33 - 8) + 48))(v32, 1, v33) == 1)
      {
      }

      v34 = *(v32 + *(v33 + 48));
      v35 = v56;
      v36 = v57;
      v59 = *(v57 + 32);
      v60 = v34;
      v37 = v58;
      v59(v56, v32, v58);
      v38 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v39 = *(v36 + 16);
      v61 = v22;
      v40 = v50;
      v39(v50, v35, v37);
      v41 = v10;
      v42 = (*(v36 + 80) + 24) & ~*(v36 + 80);
      v43 = swift_allocObject();
      *(v43 + 16) = v38;
      v44 = v43 + v42;
      v10 = v41;
      v59(v44, v40, v37);

      sub_25C4C23B0(sub_25C4BBCD4, v43);

      (*(v36 + 8))(v35, v37);

      v19 = v61;
      if (!v17)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v46 <= v19 + 1)
    {
      v21 = v19 + 1;
    }

    else
    {
      v21 = v46;
    }

    v22 = v21 - 1;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v46)
      {
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4F8, &qword_25C4CA220);
        (*(*(v45 - 8) + 56))(v10, 1, 1, v45);
        v17 = 0;
        goto LABEL_13;
      }

      v17 = *(v47 + 8 * v20);
      ++v19;
      if (v17)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25C4B9B18()
{
  v0 = sub_25C4C89F0();

  if (v0 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25C4B9B6C(uint64_t result)
{
  if (result >= 7u)
  {
    return 7;
  }

  else
  {
    return result;
  }
}

uint64_t sub_25C4B9B80(unint64_t a1)
{
  if (a1 >= 8)
  {
    return 7;
  }

  else
  {
    return (0x605040302010007uLL >> (8 * a1));
  }
}

uint64_t sub_25C4B9BA8(uint64_t a1)
{
  if ((a1 - 2) >= 0xA)
  {
    return 10;
  }

  else
  {
    return a1 - 2;
  }
}

unint64_t sub_25C4B9C00()
{
  result = qword_27FC0A7E8;
  if (!qword_27FC0A7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC0A7E8);
  }

  return result;
}

unint64_t sub_25C4B9C58()
{
  result = qword_27FC0A7F0;
  if (!qword_27FC0A7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC0A7F0);
  }

  return result;
}

unint64_t sub_25C4B9CB0()
{
  result = qword_27FC0A7F8;
  if (!qword_27FC0A7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC0A7F8);
  }

  return result;
}

uint64_t sub_25C4B9D04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25C4B9D50(uint64_t result, int a2, int a3)
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
      *(result + 8) = 1;
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

uint64_t sub_25C4B9DC8()
{
  result = sub_25C4C7C50();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_25C4C7E00();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_25C4B9F64(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_25C4B9FF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NXSessionDaemon.MessageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NXSessionDaemon.MessageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25C4BA21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25C4C7B20();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25C4BA2EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25C4C7B20();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

void sub_25C4BA3A4()
{
  sub_25C4C7B20();
  if (v0 <= 0x3F)
  {
    sub_25C4BA444();
    if (v1 <= 0x3F)
    {
      sub_25C4663EC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25C4BA444()
{
  if (!qword_27FC0A870)
  {
    v0 = sub_25C4C87C0();
    if (!v1)
    {
      atomic_store(v0, &qword_27FC0A870);
    }
  }
}

void sub_25C4BA4F4()
{
  sub_25C4BA698(319);
  if (v0 <= 0x3F)
  {
    sub_25C4BAA8C(319, &qword_27FC0A890, &qword_27FC0A898, &qword_25C4CABB8);
    if (v1 <= 0x3F)
    {
      sub_25C4BA984(319, &qword_27FC0A8A0);
      if (v2 <= 0x3F)
      {
        sub_25C4BA7C4(319, &qword_27FC0A8A8, &qword_27FC0A898, &qword_25C4CABB8);
        if (v3 <= 0x3F)
        {
          sub_25C4BA7C4(319, &qword_27FC0A8B0, &qword_27FC0A888, &qword_25C4CABB0);
          if (v4 <= 0x3F)
          {
            sub_25C4BA84C(319);
            if (v5 <= 0x3F)
            {
              sub_25C4BA984(319, &qword_27FC0A8C0);
              if (v6 <= 0x3F)
              {
                sub_25C4BAA0C();
                if (v7 <= 0x3F)
                {
                  sub_25C4BAA8C(319, &qword_27FC0A8D0, &unk_27FC0A8D8, &qword_25C4CABC0);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

void sub_25C4BA698(uint64_t a1)
{
  if (!qword_27FC0A880)
  {
    MEMORY[0x28223BE20](a1);
    sub_25C4C7B20();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC0A888, &qword_25C4CABB0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27FC0A880);
    }
  }
}

void sub_25C4BA7C4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_25C4C7B20();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_25C4BA84C(uint64_t a1)
{
  if (!qword_27FC0A8B8)
  {
    MEMORY[0x28223BE20](a1);
    sub_25C4C7B20();
    sub_25C4C7E50();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC0A888, &qword_25C4CABB0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27FC0A8B8);
    }
  }
}

void sub_25C4BA984(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_25C4C7B20();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC0A888, &qword_25C4CABB0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_25C4BAA0C()
{
  if (!qword_27FC0A8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC0A888, &qword_25C4CABB0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27FC0A8C8);
    }
  }
}

void sub_25C4BAA8C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_25C4C7B20();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for NXSessionDaemon.SessionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NXSessionDaemon.SessionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25C4BAC70()
{
  result = qword_27FC0BF70[0];
  if (!qword_27FC0BF70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FC0BF70);
  }

  return result;
}

void sub_25C4BACC4(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_25C45A004(a1, a2);
  }
}

uint64_t sub_25C4BACD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25C4BAD38()
{
  v1 = sub_25C4C7B20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 24);

  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  v10(v0 + v6, v1);
  v11 = *(v0 + v7);

  v12 = *(v0 + v8 + 8);

  return MEMORY[0x2821FE8E8](v0, v8 + 16, v3 | 7);
}

void sub_25C4BAE54(void *a1)
{
  v3 = *(sub_25C4C7B20() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v8);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = *(v12 + 8);

  sub_25C4AFA84(a1, v10, v11, v1 + v5, v1 + v7, v9, v13, v14);
}

uint64_t sub_25C4BAF14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t OPACKEncoderCreateNSData(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x25F887FD0]();

  return v2;
}

unint64_t sub_25C4BAFE4()
{
  result = qword_27FC0A920;
  if (!qword_27FC0A920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC0A920);
  }

  return result;
}

unint64_t sub_25C4BB038()
{
  result = qword_27FC0A938;
  if (!qword_27FC0A938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC0A938);
  }

  return result;
}

unint64_t sub_25C4BB094()
{
  result = qword_27FC0A940;
  if (!qword_27FC0A940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC0A940);
  }

  return result;
}

uint64_t sub_25C4BB0E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25C4BB150(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NXSessionDaemon.OperationItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void CUEncodeNSErrorDictionaryStd(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  CUEncodeNSErrorDictionary();
}

uint64_t objectdestroy_68Tm()
{
  v1 = sub_25C4C7B20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);
  v10 = *(v0 + v8);

  v11 = *(v0 + v9 + 8);

  return MEMORY[0x2821FE8E8](v0, v9 + 16, v4 | 7);
}

void sub_25C4BB350(void *a1, const char *a2)
{
  v5 = *(sub_25C4C7B20() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  sub_25C4B0DB8(a1, v2 + v7, v2 + v9, *(v2 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8), a2);
}

uint64_t objectdestroy_71Tm()
{
  v1 = sub_25C4C7B20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25C4BB518()
{
  v1 = sub_25C4C7B20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_25C4C7E50();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v12 = *(v0 + v11 + 8);

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v10 | 7);
}

uint64_t sub_25C4BB678(void *a1)
{
  v3 = *(sub_25C4C7B20() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_25C4C7E50() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_25C4B15B8(a1, v1 + v4, (v1 + v7), v9, v10);
}

uint64_t sub_25C4BB77C()
{
  v1 = sub_25C4C7B20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_25C4BB81C(void *a1)
{
  v3 = *(sub_25C4C7B20() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_25C4B1A24(a1, v1 + v4, v6, v7);
}

uint64_t sub_25C4BB8BC()
{
  v1 = sub_25C4C7B20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

void sub_25C4BB9B0(void *a1)
{
  v3 = *(sub_25C4C7B20() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + v5);
  v9 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  sub_25C4B1D3C(a1, v6, v7, v1 + v4, v8, v10, v11);
}

uint64_t objectdestroy_64Tm()
{
  v1 = sub_25C4C7B20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25C4BBC10()
{
  v1 = sub_25C4C7B20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_25C4BBCD4()
{
  v1 = *(sub_25C4C7B20() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_25C4AF950(v2, v3);
}

uint64_t sub_25C4BBD54()
{
  MEMORY[0x25F8886B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_25C4BBD8C(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      if (v7 == *&v6[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanSubscriber])
      {
        if (qword_27FC0B970 != -1)
        {
          swift_once();
        }

        v9 = sub_25C4C7BD0();
        __swift_project_value_buffer(v9, qword_27FC0B978);
        v10 = a1;
        v11 = sub_25C4C7BB0();
        v12 = sub_25C4C8720();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          *v13 = 138412290;
          *(v13 + 4) = v10;
          *v14 = v10;
          v15 = v10;
          _os_log_impl(&dword_25C452000, v11, v12, "NAN discover found: endpoint=%@", v13, 0xCu);
          sub_25C4666F8(v14, &qword_27FC0A9D8, &qword_25C4CAD10);
          MEMORY[0x25F888630](v14, -1, -1);
          MEMORY[0x25F888630](v13, -1, -1);
        }

        v16 = *&v6[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanEndpointFound];
        *&v6[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanEndpointFound] = v10;

        v17 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDiscoverTimer;
        if (*&v6[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDiscoverTimer])
        {
          v18 = *&v6[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDiscoverTimer];
          swift_getObjectType();
          v19 = v10;
          swift_unknownObjectRetain();
          sub_25C4C8790();
          swift_unknownObjectRelease();
          v20 = *&v6[v17];
        }

        else
        {
          v21 = v10;
        }

        *&v6[v17] = 0;
        v22 = swift_unknownObjectRelease();
        sub_25C495A00(v22);
      }

      v6 = v8;
    }
  }
}

void sub_25C4BBFC4(void *a1, uint64_t *a2, const char *a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = *a2;
      v13 = *&v10[*a2];
      if (v13 && v11 == v13 && a1)
      {
        v25 = v11;
        v14 = a1;
        if (qword_27FC0B970 != -1)
        {
          swift_once();
        }

        v15 = sub_25C4C7BD0();
        __swift_project_value_buffer(v15, qword_27FC0B978);
        v16 = a1;
        v17 = sub_25C4C7BB0();
        v18 = sub_25C4C8710();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v26 = v20;
          *v19 = 136315138;
          swift_getErrorValue();
          v21 = sub_25C4C8A30();
          v23 = sub_25C458990(v21, v22, &v26);

          *(v19 + 4) = v23;
          _os_log_impl(&dword_25C452000, v17, v18, a3, v19, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v20);
          MEMORY[0x25F888630](v20, -1, -1);
          MEMORY[0x25F888630](v19, -1, -1);
        }

        [v25 invalidate];
        v24 = *&v10[v12];
        *&v10[v12] = 0;

        v10 = v24;
      }

      else
      {
      }
    }
  }
}

uint64_t sub_25C4BC1E8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_25C4BC230()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDiscoverTimer;
      v7 = *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDiscoverTimer];
      if (!v7 || v5 != v7)
      {

        swift_unknownObjectRelease();
        return;
      }

      swift_getObjectType();
      sub_25C4C8790();
      v8 = *&v4[v6];
      *&v4[v6] = 0;
      swift_unknownObjectRelease();
      v9 = objc_allocWithZone(sub_25C4C7B80());
      v10 = sub_25C4C7B90();
      v11 = *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sessionStepError];
      *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sessionStepError] = v10;

      sub_25C495A00(v12);
      swift_unknownObjectRelease();
    }
  }
}

void sub_25C4BC34C(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSession;
      v9 = *&v6[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSession];
      if (v9 && v7 == v9)
      {
        v10 = v7;
        v11 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSessionTimer;
        if (*&v6[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSessionTimer])
        {
          v12 = *&v6[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSessionTimer];
          swift_getObjectType();
          swift_unknownObjectRetain();
          sub_25C4C8790();
          swift_unknownObjectRelease();
          v13 = *&v6[v11];
        }

        *&v6[v11] = 0;
        swift_unknownObjectRelease();
        if (a1)
        {
          v14 = a1;
          [v10 invalidate];
          v15 = *&v6[v8];
          *&v6[v8] = 0;

          v16 = objc_allocWithZone(sub_25C4C7B80());
          v17 = a1;
          v18 = sub_25C4C7B90();
          v19 = *&v6[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sessionStepError];
          *&v6[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sessionStepError] = v18;

          sub_25C495A00(v20);
          return;
        }

        v21 = [v10 peerAddressString];
        v22 = sub_25C4C8550();
        v24 = v23;

        v25 = &v6[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanPeerAddressString];
        v26 = *&v6[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanPeerAddressString + 8];
        *v25 = v22;
        v25[1] = v24;

        if (qword_27FC0B970 != -1)
        {
          swift_once();
        }

        v27 = sub_25C4C7BD0();
        __swift_project_value_buffer(v27, qword_27FC0B978);

        v28 = sub_25C4C7BB0();
        v29 = sub_25C4C8720();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v34 = v31;
          *v30 = 136315138;
          v32 = sub_25C458990(v22, v24, &v34);

          *(v30 + 4) = v32;
          _os_log_impl(&dword_25C452000, v28, v29, "NAN data session started: peerAddress=%s", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v31);
          MEMORY[0x25F888630](v31, -1, -1);
          MEMORY[0x25F888630](v30, -1, -1);
        }

        else
        {
        }

        sub_25C495A00(v33);
      }

      else
      {
      }
    }
  }
}

void sub_25C4BC660()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSessionTimer;
      v7 = *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSessionTimer];
      if (!v7 || v5 != v7)
      {

        swift_unknownObjectRelease();
        return;
      }

      swift_getObjectType();
      sub_25C4C8790();
      v8 = *&v4[v6];
      *&v4[v6] = 0;
      swift_unknownObjectRelease();
      v9 = objc_allocWithZone(sub_25C4C7B80());
      v10 = sub_25C4C7B90();
      v11 = *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sessionStepError];
      *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sessionStepError] = v10;

      sub_25C495A00(v12);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_25C4BC77C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_25C4BC7C4()
{
  result = qword_27FC0A9E8;
  if (!qword_27FC0A9E8)
  {
    sub_25C4BC77C(255, &qword_27FC0A9E0, 0x277D186C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC0A9E8);
  }

  return result;
}

uint64_t sub_25C4BC8DC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_25C4BC914(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    v7 = swift_weakLoadStrong();
    if (v7)
    {
      if (v7 == *&v6[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection])
      {
        sub_25C49F7D4(v7, a1);
      }
    }
  }
}

uint64_t sub_25C4BC9B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_25C4BCA28(uint64_t a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v7 = *(v5 + 16);
  v8 = *(v5 + 24);
  sub_25C4A0CA8(a1, a2, a4, a5);
}

uint64_t sub_25C4BCA3C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25C459FB0(a1, a2);
  }

  return a1;
}

unint64_t sub_25C4BCA50()
{
  result = qword_27FC0AA18;
  if (!qword_27FC0AA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC0AA18);
  }

  return result;
}

uint64_t sub_25C4BCAA4()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_25C45A004(v0[4], v0[5]);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t OPACKDecodeNSData(void *a1)
{
  v1 = a1;
  v2 = OPACKDecodeData();

  return v2;
}

uint64_t sub_25C4BCB70()
{
  v1 = sub_25C4C7B20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v3 + v6 + 16) & ~v3;
  v8 = *(v0 + 16);

  v9 = *(v2 + 8);
  v9(v0 + v4, v1);
  v10 = *(v0 + v6 + 8);

  v9(v0 + v7, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + v5, v3 | 7);
}

uint64_t sub_25C4BCC7C(void *a1)
{
  v3 = *(sub_25C4C7B20() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v4 + v6 + 16) & ~v4;
  v8 = *(v1 + 16);
  v9 = (v1 + v6);
  v10 = *v9;
  v11 = v9[1];

  return sub_25C4AB4CC(a1, v8, (v1 + v5), v10, v11, (v1 + v7));
}

id CUDecodeNSErrorDictionaryStd(void *a1)
{
  v1 = a1;
  v2 = CUDecodeNSErrorDictionary();

  return v2;
}

uint64_t objectdestroy_176Tm()
{
  v1 = sub_25C4C7B20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = *(v0 + 16);

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + v5, v3 | 7);
}

uint64_t sub_25C4BCEB8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_25C4C7B20() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v4 + 64) + v5 + v6) & ~v5);

  return a2(a1, v7, v2 + v6, v8);
}

uint64_t sub_25C4BCF6C()
{
  v1 = sub_25C4C7B20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25C4BD038(void *a1, unint64_t a2, char a3)
{
  v7 = *(sub_25C4C7B20() - 8);
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3 + ((*(v7 + 80) + 40) & ~*(v7 + 80));

  return sub_25C4AC540(a1, a2, a3 & 1, v8, v9, v10, v11);
}

id sub_25C4BD0C8(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_25C459FB0(a1, a2);
  }
}

void sub_25C4BD0D4(int a1, int a2)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      if (v9 == *&v8[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingSession])
      {
        sub_25C4B34DC([v9 pinTypeActual], a1, a2);
      }
    }

    else
    {
      v10 = v8;
    }
  }
}

void sub_25C4BD1A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      if (v10 == *&v9[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingSession])
      {
        sub_25C4BD598([v10 pinTypeActual], a2, a3);
      }
    }

    else
    {
      v11 = v9;
    }
  }
}

void sub_25C4BD274(char a1, uint64_t a2, unint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      if (v12 == *&v11[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingSession])
      {
        sub_25C4B3AD8(v9, a1, a2, a3);
      }

      v11 = v13;
    }
  }
}

uint64_t objectdestroy_102Tm(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 24);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

void sub_25C4BD390(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      if (v8 == *&v7[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingSession])
      {
        sub_25C4B3E60(v5, a1);
      }

      v7 = v9;
    }
  }
}

void sub_25C4BD444(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      v4 = objc_allocWithZone(sub_25C4C7B80());
      v5 = a1;
      v6 = a1;
      v7 = sub_25C4C7B90();
      v8 = *&v3[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sessionStepError];
      *&v3[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sessionStepError] = v7;

      sub_25C495A00(v9);
    }

    else
    {
    }
  }
}

uint64_t objectdestroy_55Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25C4BD558()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25C4BD598(int a1, uint64_t a2, uint64_t a3)
{
  v49 = a2;
  v50 = a3;
  LODWORD(v48) = a1;
  v4 = sub_25C4C7D80();
  v51 = *(v4 - 8);
  v5 = *(v51 + 8);
  MEMORY[0x28223BE20](v4);
  v54 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25C4C7EC0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_25C4C7F90();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v52 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - v14;
  v16 = sub_25C4C84C0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v3;
  v21 = *(v3 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue);
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x277D85200], v16);
  v22 = v21;
  LOBYTE(v21) = sub_25C4C84E0();
  v24 = *(v17 + 8);
  v23 = (v17 + 8);
  v24(v20, v16);
  if (v21)
  {
    sub_25C4C7EB0();

    sub_25C4C7F80();
    v50 = v10;
    v23 = *(v10 + 16);
    v25 = v54;
    v23(v54, v15, v9);
    v20 = v51;
    (*(v51 + 13))(v25, *MEMORY[0x277D35748], v4);
    v16 = v4;
    if (qword_27FC0B970 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v26 = sub_25C4C7BD0();
  __swift_project_value_buffer(v26, qword_27FC0B978);
  v27 = v52;
  v23(v52, v15, v9);
  v28 = sub_25C4C7BB0();
  v29 = sub_25C4C8720();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v49 = v16;
    v32 = v31;
    v55[0] = v31;
    *v30 = 136315138;
    sub_25C4B8B3C(&qword_27FC0AA30, MEMORY[0x277D35800]);
    v33 = sub_25C4C89A0();
    v34 = v27;
    v35 = v20;
    v37 = v36;
    v48 = v15;
    v38 = *(v50 + 8);
    v38(v34, v9);
    v39 = sub_25C458990(v33, v37, v55);
    v20 = v35;

    *(v30 + 4) = v39;
    _os_log_impl(&dword_25C452000, v28, v29, "Pairing present: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    v40 = v32;
    v16 = v49;
    MEMORY[0x25F888630](v40, -1, -1);
    MEMORY[0x25F888630](v30, -1, -1);

    v41 = v38;
    v15 = v48;
  }

  else
  {

    v41 = *(v50 + 8);
    v41(v27, v9);
  }

  v42 = v53;
  *(v53 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingReported) = 1;
  v43 = v42 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_serverEventHandler;
  swift_beginAccess();
  v44 = *v43;
  if (*v43)
  {
    v45 = *(v43 + 8);
    swift_endAccess();

    v46 = v54;
    v44(v54);
    sub_25C45A2C8(v44);
    (*(v20 + 1))(v46, v16);
    return (v41)(v15, v9);
  }

  else
  {
    (*(v20 + 1))(v54, v16);
    v41(v15, v9);
    return swift_endAccess();
  }
}

uint64_t sub_25C4BDC58()
{
  v0 = sub_25C4C7BD0();
  __swift_allocate_value_buffer(v0, qword_27FC0C088);
  __swift_project_value_buffer(v0, qword_27FC0C088);
  sub_25C4C7C80();
  return sub_25C4C7BC0();
}

uint64_t sub_25C4BDCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = *(v11 + 48);
  v20 = *(v11 + 52);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = 0;
  v22 = (v21 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationHandler);
  *v22 = 0;
  v22[1] = 0;
  *(v21 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__session) = 0;
  v23 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__endpoint;
  v24 = sub_25C4C7C50();
  (*(*(v24 - 8) + 32))(v21 + v23, a1, v24);
  v25 = *(a10 + 16);
  *(v21 + 40) = a10;
  *(v21 + 48) = v25;
  v26 = (v21 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__idsServiceID);
  *v26 = a4;
  v26[1] = a5;
  v27 = (v21 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon_label);
  *v27 = a2;
  v27[1] = a3;
  v28 = (v21 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationName);
  *v28 = a6;
  v28[1] = a7;
  *(v21 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationID) = a8;
  v29 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationUUID;
  v30 = sub_25C4C7B20();
  (*(*(v30 - 8) + 32))(v21 + v29, a9, v30);
  *(v21 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__xpcConnection) = a11;
  v31 = v25;
  return v21;
}

uint64_t sub_25C4BDE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(v8 + 48);
  v16 = *(v8 + 52);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = 0;
  v18 = (v17 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationHandler);
  *v18 = 0;
  v18[1] = 0;
  v19 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__session;
  *(v17 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__session) = 0;
  v20 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__endpoint;
  v21 = *MEMORY[0x277D35618];
  v22 = sub_25C4C7C50();
  (*(*(v22 - 8) + 104))(v17 + v20, v21, v22);
  v23 = *(a6 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue);
  *(v17 + 40) = *(a6 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__daemon);
  *(v17 + 48) = v23;
  v24 = (v17 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__idsServiceID);
  *v24 = a1;
  v24[1] = a2;
  v25 = (v17 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon_label);
  *v25 = a7;
  v25[1] = a8;
  v26 = (v17 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationName);
  *v26 = a3;
  v26[1] = a4;
  *(v17 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationID) = 0;
  v27 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationUUID;
  v28 = sub_25C4C7B20();
  (*(*(v28 - 8) + 32))(v17 + v27, a5, v28);
  swift_beginAccess();
  *(v17 + v19) = a6;
  *(v17 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__xpcConnection) = 0;

  v29 = v23;
  return v17;
}

uint64_t sub_25C4BE020()
{
  v1 = v0;
  v2 = sub_25C4C7C50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  if (qword_27FC0C080 != -1)
  {
    swift_once();
  }

  v10 = sub_25C4C7BD0();
  __swift_project_value_buffer(v10, qword_27FC0C088);
  v11 = sub_25C4C7BB0();
  v12 = sub_25C4C8700();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_25C452000, v11, v12, "deinit", v13, 2u);
    MEMORY[0x25F888630](v13, -1, -1);
  }

  v14 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__endpoint;
  (*(v3 + 16))(v9, v1 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__endpoint, v2);
  (*(v3 + 104))(v7, *MEMORY[0x277D35618], v2);
  sub_25C4C3A48(&qword_27FC0A630, MEMORY[0x277D35630]);
  v15 = sub_25C4C8530();
  v16 = *(v3 + 8);
  v16(v7, v2);
  v16(v9, v2);
  if ((v15 & 1) == 0)
  {
    v17 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__session;
    swift_beginAccess();
    v18 = *(v1 + v17);
    if (v18)
    {
      v19 = v18;
      sub_25C497730(v1, &off_286E24458, 0);
    }
  }

  v20 = *(v1 + 32);
  sub_25C45A2C8(*(v1 + 24));
  v21 = *(v1 + 40);

  v16((v1 + v14), v2);
  v22 = *(v1 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__idsServiceID + 8);

  v23 = *(v1 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon_label + 8);

  v24 = *(v1 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationName + 8);

  v25 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationUUID;
  v26 = sub_25C4C7B20();
  (*(*(v26 - 8) + 8))(v1 + v25, v26);
  v27 = *(v1 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationHandler);
  swift_unknownObjectRelease();

  v28 = *(v1 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__xpcConnection);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_25C4BE398()
{
  sub_25C4BE020();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_25C4BE3F0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v64 = a2;
  v65 = a4;
  v62 = a3;
  v63 = a1;
  v7 = sub_25C4C7C50();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25C4C84C0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v6 + 48);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12);
  v18 = v17;
  LOBYTE(v17) = sub_25C4C84E0();
  (*(v13 + 8))(v16, v12);
  if (v17)
  {
    v68 = v7;
    if (qword_27FC0C080 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v19 = sub_25C4C7BD0();
  __swift_project_value_buffer(v19, qword_27FC0C088);

  v20 = sub_25C4C7BB0();
  v21 = sub_25C4C8720();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v61 = v5;
    v24 = v23;
    v66 = v23;
    *v22 = 136315394;
    *(v22 + 4) = sub_25C458990(*(v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationName), *(v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationName + 8), &v66);
    *(v22 + 12) = 2080;
    sub_25C4C7B20();
    sub_25C4C3A48(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
    v25 = sub_25C4C89A0();
    v27 = sub_25C458990(v25, v26, &v66);

    *(v22 + 14) = v27;
    _os_log_impl(&dword_25C452000, v20, v21, "Operation start client: name=%s, uuid=%s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F888630](v24, -1, -1);
    MEMORY[0x25F888630](v22, -1, -1);
  }

  v28 = v68;
  (*(v8 + 16))(v11, v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__endpoint, v68);
  v29 = (*(v8 + 88))(v11, v28);
  if (v29 == *MEMORY[0x277D35620])
  {
    goto LABEL_6;
  }

  if (v29 == *MEMORY[0x277D355F0] || v29 == *MEMORY[0x277D35628])
  {
    goto LABEL_10;
  }

  if (v29 != *MEMORY[0x277D35608] && v29 != *MEMORY[0x277D355F8] && v29 != *MEMORY[0x277D35610])
  {
    if (v29 == *MEMORY[0x277D35600])
    {
      (*(v8 + 96))(v11, v28);
      v51 = sub_25C4C8170();
      (*(*(v51 - 8) + 8))(v11, v51);
      goto LABEL_11;
    }

    if (v29 == *MEMORY[0x277D35618])
    {
      v52 = *(v6 + 40);
      v53 = *(v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationName);
      v54 = *(v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationName + 8);
      v55 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationUUID;
      v56 = swift_allocObject();
      v58 = v63;
      v57 = v64;
      v56[2] = v6;
      v56[3] = v58;
      v59 = v62;
      v56[4] = v57;
      v56[5] = v59;
      v56[6] = v65;

      sub_25C459FB0(v58, v57);

      v60 = sub_25C4880B8();
      sub_25C4880C0(v53, v54, v6 + v55, v60 & 1, sub_25C4C2EC4, v56);

      return;
    }

LABEL_10:
    (*(v8 + 8))(v11, v28);
LABEL_11:
    v66 = 0;
    v67 = 0xE000000000000000;
    sub_25C4C88F0();

    v66 = 0xD000000000000016;
    v67 = 0x800000025C4D09B0;
    v33 = sub_25C4C7C10();
    MEMORY[0x25F887A50](v33);

    v34 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    return;
  }

LABEL_6:
  (*(v8 + 8))(v11, v28);
  v30 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__session;
  swift_beginAccess();
  v31 = *(v6 + v30);
  if (v31)
  {
    v32 = *(v6 + v30);
  }

  else
  {
    v35 = *(v6 + 40);
    v36 = sub_25C48988C(v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__endpoint, *(v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__idsServiceID), *(v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__idsServiceID + 8));
    v37 = swift_allocObject();
    swift_weakInit();
    v38 = &v36[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_connectionEndedHandler];
    swift_beginAccess();
    v39 = *v38;
    v40 = v38[1];
    *v38 = sub_25C4C3A90;
    v38[1] = v37;
    v41 = v36;

    sub_25C45A2C8(v39);

    v42 = swift_allocObject();
    swift_weakInit();
    v43 = &v41[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_invalidationHandler];
    swift_beginAccess();
    v44 = *v43;
    v45 = v43[1];
    *v43 = sub_25C4C3A98;
    v43[1] = v42;
    v32 = v41;

    sub_25C45A2C8(v44);

    v46 = *(v6 + v30);
    *(v6 + v30) = v32;

    sub_25C494DD4(v6, &off_286E24458);
    v31 = 0;
  }

  v47 = *(v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationName);
  v48 = *(v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationName + 8);
  v49 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationUUID;
  v50 = v31;
  sub_25C49E5D4(v6, v47, v48, v6 + v49, v63, v64, v62, v65);
}

uint64_t sub_25C4BEBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v51 = a6;
  v50 = a5;
  v52 = a3;
  v53 = a4;
  v56 = a2;
  v68 = sub_25C4C7B20();
  v9 = *(v68 - 8);
  v63 = *(v9 + 64);
  v10 = MEMORY[0x28223BE20](v68);
  v49 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v48 - v12;
  v14 = *(v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon_label);
  v57 = *(v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon_label + 8);
  v15 = *(v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationName + 8);
  v67 = *(v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationName);
  v64 = v14;
  v65 = v15;
  v16 = *(v9 + 16);
  v60 = v48 - v12;
  v16(v48 - v12, v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationUUID);
  v61 = v16;
  v62 = v9 + 16;
  v17 = (v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationHandler);
  v58 = v6;
  v18 = *(v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationHandler);
  v66 = a1;
  *v17 = a1;
  v17[1] = a2;
  v48[1] = v17;

  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = v49;
  v21 = v68;
  (v16)(v49, v13, v68);
  v22 = *(v9 + 80);
  v23 = (v22 + 40) & ~v22;
  v24 = v23 + v63;
  v25 = swift_allocObject();
  v26 = v67;
  *(v25 + 2) = v19;
  *(v25 + 3) = v26;
  *(v25 + 4) = v65;
  v54 = v9;
  v59 = *(v9 + 32);
  v27 = v20;
  v59(&v25[v23], v20, v21);
  swift_unknownObjectRetain();

  sub_25C4C7F20();

  v28 = swift_allocObject();
  swift_weakInit();
  v29 = v20;
  v30 = v68;
  v61(v29, v60, v68);
  v31 = swift_allocObject();
  v32 = v67;
  *(v31 + 2) = v28;
  *(v31 + 3) = v32;
  *(v31 + 4) = v65;
  v59(&v31[v23], v27, v30);
  v33 = &v31[(v24 + 7) & 0xFFFFFFFFFFFFFFF8];
  v34 = v57;
  *v33 = v64;
  *(v33 + 1) = v34;

  sub_25C4C7F00();

  v35 = *(v58 + 48);
  v36 = swift_allocObject();
  swift_weakInit();
  v37 = v60;
  v38 = v30;
  v61(v27, v60, v30);
  v39 = (v22 + 48) & ~v22;
  v40 = (v63 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = v38;
  v42 = swift_allocObject();
  *(v42 + 2) = v36;
  *(v42 + 3) = v35;
  v43 = v65;
  *(v42 + 4) = v67;
  *(v42 + 5) = v43;
  v59(&v42[v39], v27, v41);
  v44 = &v42[v40];
  v45 = v57;
  *v44 = v64;
  *(v44 + 1) = v45;

  v46 = v35;
  sub_25C4C7EE0();

  sub_25C4C7F30();
  return (*(v54 + 8))(v37, v68);
}

uint64_t sub_25C4BF1B0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v35 = a3;
  v36 = a1;
  v7 = sub_25C4C7E50();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25C4C7B20();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_27FC0C080 != -1)
    {
      swift_once();
    }

    v18 = sub_25C4C7BD0();
    __swift_project_value_buffer(v18, qword_27FC0C088);
    (*(v13 + 16))(v16, a5, v12);
    (*(v8 + 16))(v11, v36, v7);

    v19 = sub_25C4C7BB0();
    v20 = sub_25C4C8720();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v33 = v19;
      v22 = v21;
      v34 = swift_slowAlloc();
      v37 = v34;
      *v22 = 136315650;
      *(v22 + 4) = sub_25C458990(v35, a4, &v37);
      *(v22 + 12) = 2080;
      sub_25C4C3A48(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
      LODWORD(v35) = v20;
      v23 = sub_25C4C89A0();
      v25 = v24;
      (*(v13 + 8))(v16, v12);
      v26 = sub_25C458990(v23, v25, &v37);

      *(v22 + 14) = v26;
      *(v22 + 22) = 2080;
      sub_25C4C3A48(&unk_27FC0AA60, MEMORY[0x277D35798]);
      v27 = sub_25C4C89A0();
      v29 = v28;
      (*(v8 + 8))(v11, v7);
      v30 = sub_25C458990(v27, v29, &v37);

      *(v22 + 24) = v30;
      v31 = v33;
      _os_log_impl(&dword_25C452000, v33, v35, "Operation event client: name=%s, uuid=%s event=%s", v22, 0x20u);
      v32 = v34;
      swift_arrayDestroy();
      MEMORY[0x25F888630](v32, -1, -1);
      MEMORY[0x25F888630](v22, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
      (*(v13 + 8))(v16, v12);
    }

    sub_25C4BF5EC(v36);
  }

  return result;
}

void sub_25C4BF5EC(uint64_t a1)
{
  v2 = v1;
  v65 = a1;
  v61 = sub_25C4C7D60();
  v3 = *(v61 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v61);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25C4C80B0();
  v63 = *(v7 - 8);
  v8 = *(v63 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v62 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v56 - v11;
  v13 = sub_25C4C84C0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v2 + 48);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13);
  v19 = v18;
  v20 = sub_25C4C84E0();
  (*(v14 + 8))(v17, v13);
  if (v20)
  {
    if (*(v2 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__xpcConnection))
    {
      v60 = *(v2 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__xpcConnection);
      swift_unknownObjectRetain();
      empty = xpc_dictionary_create_empty();
      v21 = *MEMORY[0x277D35858];
      v64 = v2;
      v22 = v63;
      v23 = *(v63 + 104);
      v58 = v63 + 104;
      v59 = v23;
      v23(v12, v21, v7);
      sub_25C4C80A0();
      v63 = *(v22 + 8);
      (v63)(v12, v7);
      v24 = v6;
      v25 = v6;
      v26 = v61;
      (*(v3 + 104))(v25, *MEMORY[0x277D35710], v61);
      sub_25C4C7D50();
      (*(v3 + 8))(v24, v26);
      v27 = sub_25C4C8570();

      v28 = sub_25C4C8570();

      v29 = empty;
      xpc_dictionary_set_string(empty, (v27 + 32), (v28 + 32));

      v30 = v59;
      v59(v12, *MEMORY[0x277D35840], v7);
      sub_25C4C80A0();
      v31 = v63;
      (v63)(v12, v7);
      v32 = *(v64 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationID);
      v33 = sub_25C4C8570();

      xpc_dictionary_set_uint64(v29, (v33 + 32), v32);

      v34 = v62;
      v30(v62, *MEMORY[0x277D35898], v7);
      sub_25C4C80A0();
      v31(v34, v7);
      v50 = sub_25C4C7E10();
      v51 = sub_25C4C8570();

      xpc_dictionary_set_value(v29, (v51 + 32), v50);
      swift_unknownObjectRelease();

      xpc_connection_send_message(v60, v29);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__session;
      swift_beginAccess();
      v46 = *(v2 + v45);
      if (v46)
      {
        v47 = *(v2 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationID);
        v48 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationUUID;
        v49 = v46;
        sub_25C49EDC8(v47, v2 + v48, v65, nullsub_1, 0);
      }

      else
      {
        if (qword_27FC0C080 != -1)
        {
          swift_once();
        }

        v52 = sub_25C4C7BD0();
        __swift_project_value_buffer(v52, qword_27FC0C088);

        v53 = sub_25C4C7BB0();
        v54 = sub_25C4C8710();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 134217984;
          *(v55 + 4) = *(v2 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationID);

          _os_log_impl(&dword_25C452000, v53, v54, "### No transport to report operation event: operationID=%llu", v55, 0xCu);
          MEMORY[0x25F888630](v55, -1, -1);
        }

        else
        {
        }
      }
    }
  }

  else
  {
    __break(1u);
    swift_once();
    v35 = sub_25C4C7BD0();
    __swift_project_value_buffer(v35, qword_27FC0C088);

    v36 = v18;
    v37 = sub_25C4C7BB0();
    v38 = sub_25C4C8710();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = v20;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v66 = v41;
      *v40 = 134218242;
      *(v40 + 4) = v39;

      *(v40 + 12) = 2080;
      swift_getErrorValue();
      v42 = sub_25C4C8A30();
      v44 = sub_25C458990(v42, v43, &v66);

      *(v40 + 14) = v44;
      _os_log_impl(&dword_25C452000, v37, v38, "### Report event failed: operationID=%llu, error=%s", v40, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x25F888630](v41, -1, -1);
      MEMORY[0x25F888630](v40, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_25C4BFD90(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v35 = a4;
  v36 = a7;
  v13 = sub_25C4C7B20();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v34 = a1;
    if (qword_27FC0C080 != -1)
    {
      swift_once();
    }

    v19 = sub_25C4C7BD0();
    __swift_project_value_buffer(v19, qword_27FC0C088);
    (*(v14 + 16))(v17, a6, v13);

    v20 = a8;
    v21 = sub_25C4C7BB0();
    v22 = sub_25C4C8720();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v33 = a2;
      v24 = v23;
      v32 = swift_slowAlloc();
      v37 = v32;
      *v24 = 136315650;
      *(v24 + 4) = sub_25C458990(v35, a5, &v37);
      *(v24 + 12) = 2080;
      sub_25C4C3A48(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
      v25 = sub_25C4C89A0();
      v27 = v26;
      (*(v14 + 8))(v17, v13);
      v28 = sub_25C458990(v25, v27, &v37);

      *(v24 + 14) = v28;
      *(v24 + 22) = 2080;
      *(v24 + 24) = sub_25C458990(v36, v20, &v37);
      _os_log_impl(&dword_25C452000, v21, v22, "Provider event client: name=%s, uuid=%s, client=%s", v24, 0x20u);
      v29 = v32;
      swift_arrayDestroy();
      MEMORY[0x25F888630](v29, -1, -1);
      v30 = v24;
      a2 = v33;
      MEMORY[0x25F888630](v30, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v17, v13);
    }

    sub_25C4C00CC(v34, a2);
  }

  return result;
}

void sub_25C4C00CC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v49 = a1;
  v50 = a2;
  v47 = sub_25C4C7D60();
  v4 = *(v47 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v47);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25C4C80B0();
  v48 = *(v8 - 8);
  v9 = *(v48 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25C4C84C0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v3 + 48);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12);
  v18 = v17;
  v19 = sub_25C4C84E0();
  (*(v13 + 8))(v16, v12);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_7;
  }

  if (*(v3 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__xpcConnection))
  {
    v46 = *(v3 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__xpcConnection);
    swift_unknownObjectRetain();
    empty = xpc_dictionary_create_empty();
    v20 = *MEMORY[0x277D35858];
    v21 = v48;
    v44 = *(v48 + 104);
    v44(v11, v20, v8);
    v42 = sub_25C4C80A0();
    v45 = v3;
    v48 = *(v21 + 8);
    (v48)(v11, v8);
    v22 = v4;
    v23 = *(v4 + 104);
    v24 = v47;
    v23(v7, *MEMORY[0x277D35738], v47);
    sub_25C4C7D50();
    (*(v22 + 8))(v7, v24);
    v25 = sub_25C4C8570();

    v26 = sub_25C4C8570();

    v27 = empty;
    xpc_dictionary_set_string(empty, (v25 + 32), (v26 + 32));

    v28 = v44;
    v44(v11, *MEMORY[0x277D35840], v8);
    sub_25C4C80A0();
    v29 = v48;
    (v48)(v11, v8);
    v30 = *(v45 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationID);
    v31 = sub_25C4C8570();

    xpc_dictionary_set_uint64(v27, (v31 + 32), v30);

    v28(v11, *MEMORY[0x277D358E0], v8);
    sub_25C4C80A0();
    v29(v11, v8);
    v32 = sub_25C4C7AC0();
    v33 = sub_25C4C8570();

    xpc_dictionary_set_value(v27, (v33 + 32), v32);
    swift_unknownObjectRelease();

    xpc_connection_send_message(v46, v27);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return;
  }

  v34 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__session;
  swift_beginAccess();
  v35 = *(v3 + v34);
  if (v35)
  {
    v36 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationUUID;
    v37 = v35;
    sub_25C49F154(v3 + v36, v49, v50, nullsub_1, 0);

    return;
  }

  if (qword_27FC0C080 != -1)
  {
    goto LABEL_11;
  }

LABEL_7:
  v38 = sub_25C4C7BD0();
  __swift_project_value_buffer(v38, qword_27FC0C088);

  v39 = sub_25C4C7BB0();
  v40 = sub_25C4C8710();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 134217984;
    *(v41 + 4) = *(v3 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationID);

    _os_log_impl(&dword_25C452000, v39, v40, "### No transport to report operation provider event: operationID=%llu", v41, 0xCu);
    MEMORY[0x25F888630](v41, -1, -1);
  }

  else
  {
  }
}

void sub_25C4C0694(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void *, void, uint64_t), uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v65 = a4;
  v66 = a8;
  v69 = a6;
  v70 = a5;
  v63 = a2;
  v64 = a3;
  v62 = a1;
  v13 = sub_25C4C8470();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25C4C8490();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v67 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_25C4C7B20();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v56 = a13;
    v55 = a12;
    v68 = a10;
    v53 = a9;
    v27 = *(v23 + 16);
    v54 = Strong;
    v52 = v22;
    v27(&v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), a11, v22);
    v28 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v58 = v13;
    v29 = (v24 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v61 = v19;
    v30 = (v29 + 23) & 0xFFFFFFFFFFFFFFF8;
    v59 = v14;
    v31 = (v30 + 23) & 0xFFFFFFFFFFFFFFF8;
    v60 = v18;
    v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
    v33 = (v32 + 23) & 0xFFFFFFFFFFFFFFF8;
    v57 = v17;
    v34 = swift_allocObject();
    v35 = v68;
    *(v34 + 16) = v53;
    *(v34 + 24) = v35;
    (*(v23 + 32))(v34 + v28, v25, v52);
    v36 = (v34 + v29);
    v37 = v63;
    *v36 = v62;
    v36[1] = v37;
    v38 = (v34 + v30);
    v39 = v56;
    *v38 = v55;
    v38[1] = v39;
    *(v34 + v31) = v54;
    v40 = (v34 + v32);
    v42 = v64;
    v41 = v65;
    *v40 = v64;
    v40[1] = v41;
    v43 = v66;
    *(v34 + v33) = v66;
    v44 = (v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8));
    v45 = v69;
    *v44 = v70;
    v44[1] = v45;
    aBlock[4] = sub_25C4C387C;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25C4676B4;
    aBlock[3] = &block_descriptor_6;
    v46 = _Block_copy(aBlock);

    sub_25C459FB0(v42, v41);
    v43;

    v47 = v67;
    sub_25C4C8480();
    v71 = MEMORY[0x277D84F90];
    sub_25C4C3A48(&unk_27FC0A180, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A7B0, &qword_25C4C9AE0);
    sub_25C48B830();
    v48 = v57;
    v49 = v58;
    sub_25C4C8800();
    MEMORY[0x25F887C10](0, v47, v48, v46);
    _Block_release(v46);

    (*(v59 + 8))(v48, v49);
    (*(v61 + 8))(v47, v60);
  }

  else
  {
    v50 = objc_allocWithZone(sub_25C4C7B80());
    v51 = sub_25C4C7B90();
    v70(v51, 0, 1);
  }
}

uint64_t sub_25C4C0BC4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  v83 = a8;
  v77 = a1;
  v78 = a6;
  v86 = a4;
  v71 = sub_25C4C8470();
  v70 = *(v71 - 8);
  v17 = *(v70 + 64);
  MEMORY[0x28223BE20](v71);
  v68 = v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_25C4C8490();
  v67 = *(v69 - 8);
  v19 = *(v67 + 64);
  MEMORY[0x28223BE20](v69);
  v66[1] = v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1B0, &qword_25C4C9B00);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v73 = v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v72 = v66 - v25;
  v76 = sub_25C4C7E00();
  v74 = *(v76 - 8);
  v26 = *(v74 + 64);
  MEMORY[0x28223BE20](v76);
  v75 = v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_25C4C7B20();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = v66 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FC0C080 != -1)
  {
    swift_once();
  }

  v81 = a9;
  v82 = a10;
  v33 = a12;
  v85 = a13;
  v80 = a11;
  v34 = sub_25C4C7BD0();
  __swift_project_value_buffer(v34, qword_27FC0C088);
  (*(v29 + 16))(v32, a3, v28);

  v35 = sub_25C4C7BB0();
  v36 = sub_25C4C8720();

  v37 = os_log_type_enabled(v35, v36);
  v84 = a5;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v79 = a12;
    v40 = v39;
    aBlock = v39;
    *v38 = 136315906;
    *(v38 + 4) = sub_25C458990(v77, a2, &aBlock);
    *(v38 + 12) = 2080;
    sub_25C4C3A48(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
    LODWORD(v77) = v36;
    v41 = sub_25C4C89A0();
    v43 = v42;
    (*(v29 + 8))(v32, v28);
    v44 = sub_25C458990(v41, v43, &aBlock);

    *(v38 + 14) = v44;
    *(v38 + 22) = 2080;
    *(v38 + 24) = sub_25C458990(v86, a5, &aBlock);
    *(v38 + 32) = 2080;
    *(v38 + 34) = sub_25C458990(v78, a7, &aBlock);
    _os_log_impl(&dword_25C452000, v35, v77, "Operation send request: name=%s, uuid=%s, requestName=%s, client=%s", v38, 0x2Au);
    swift_arrayDestroy();
    v45 = v40;
    v33 = v79;
    MEMORY[0x25F888630](v45, -1, -1);
    MEMORY[0x25F888630](v38, -1, -1);
  }

  else
  {

    (*(v29 + 8))(v32, v28);
  }

  v46 = swift_allocObject();
  v47 = v80;
  v46[2] = v80;
  v46[3] = v33;
  v46[4] = v85;
  v48 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__session;
  v49 = v83;
  swift_beginAccess();
  v50 = *(v49 + v48);
  if (v50)
  {

    v51 = v47;
    v52 = v50;
    sub_25C49F4C8(v86, v84, v81, v82, sub_25C4C39B8, v46);
  }

  else
  {
    v79 = v33;
    v83 = *(v49 + 40);
    v53 = *MEMORY[0x277D35618];
    v54 = v47;
    v55 = sub_25C4C7C50();
    v56 = *(v55 - 8);
    v57 = *(v56 + 104);
    v58 = v72;
    v57(v72, v53, v55);
    v59 = *(v56 + 56);
    v59(v58, 0, 1, v55);
    v60 = v73;
    v57(v73, v53, v55);
    v59(v60, 0, 1, v55);

    v61 = v54;
    v62 = v75;
    sub_25C4C7DC0();
    v63 = sub_25C4880B8();
    sub_25C4892D0(v86, v84, v81, v82, v62, v63 & 1, sub_25C4C39B8, v46);
    v64 = (v74 + 8);

    return (*v64)(v62, v76);
  }
}

uint64_t sub_25C4C152C(void *a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a4;
  v11 = sub_25C4C8470();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_25C4C8490();
  v16 = *(v24 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v24);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a5;
  *(v20 + 24) = a6;
  *(v20 + 32) = a1;
  *(v20 + 40) = a2;
  LOBYTE(a5) = a3 & 1;
  *(v20 + 48) = a3 & 1;
  aBlock[4] = sub_25C4C3B20;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25C4676B4;
  aBlock[3] = &block_descriptor_43;
  v21 = _Block_copy(aBlock);

  sub_25C4BD0C8(a1, a2, a5);
  sub_25C4C8480();
  v26 = MEMORY[0x277D84F90];
  sub_25C4C3A48(&unk_27FC0A180, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A7B0, &qword_25C4C9AE0);
  sub_25C48B830();
  sub_25C4C8800();
  MEMORY[0x25F887C10](0, v19, v15, v21);
  _Block_release(v21);
  (*(v12 + 8))(v15, v11);
  (*(v16 + 8))(v19, v24);
}

uint64_t sub_25C4C17F8()
{
  v0 = sub_25C4C7D00();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25C4C7E50();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 16))
    {
    }

    else
    {
      sub_25C4C80C0();
      (*(v1 + 104))(v4, *MEMORY[0x277D35658], v0);
      *v9 = sub_25C4C80E0();
      (*(v6 + 104))(v9, *MEMORY[0x277D35790], v5);
      sub_25C4BF5EC(v9);

      return (*(v6 + 8))(v9, v5);
    }
  }

  return result;
}

uint64_t sub_25C4C19FC()
{
  v1 = sub_25C4C84C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 48);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = sub_25C4C84E0();
  result = (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_6;
  }

  if (*(v0 + 16) != 1)
  {
    return result;
  }

  if (*(v0 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationHandler))
  {
    return result;
  }

  v9 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__session;
  result = swift_beginAccess();
  if (*(v0 + v9))
  {
    return result;
  }

  if (qword_27FC0C080 != -1)
  {
    goto LABEL_14;
  }

LABEL_6:
  v10 = sub_25C4C7BD0();
  __swift_project_value_buffer(v10, qword_27FC0C088);

  v11 = sub_25C4C7BB0();
  v12 = sub_25C4C8720();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23[0] = v14;
    *v13 = 136315394;
    sub_25C4C7C50();
    sub_25C4C3A48(&qword_27FC0A480, MEMORY[0x277D35630]);
    v15 = sub_25C4C89A0();
    v17 = sub_25C458990(v15, v16, v23);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_25C458990(*(v0 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon_label), *(v0 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon_label + 8), v23);
    _os_log_impl(&dword_25C452000, v11, v12, "Operation cancelled: endpoint=%s, client=%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F888630](v14, -1, -1);
    MEMORY[0x25F888630](v13, -1, -1);
  }

  swift_beginAccess();
  v18 = *(v0 + 24);
  if (v18)
  {
    v19 = *(v0 + 32);

    v18(v20);
    sub_25C45A2C8(v18);
    v21 = *(v0 + 24);
  }

  else
  {
    v21 = 0;
  }

  v22 = *(v0 + 32);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  return sub_25C45A2C8(v21);
}

void sub_25C4C1D5C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v43 = a3;
  v44 = a4;
  v41 = a1;
  v42 = a2;
  v7 = sub_25C4C7C50();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25C4C84C0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v6 + 48);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12);
  v18 = v17;
  LOBYTE(v17) = sub_25C4C84E0();
  (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v47 = v7;
  if (qword_27FC0C080 != -1)
  {
LABEL_24:
    swift_once();
  }

  v19 = sub_25C4C7BD0();
  __swift_project_value_buffer(v19, qword_27FC0C088);

  v20 = sub_25C4C7BB0();
  v21 = sub_25C4C8720();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v40 = v5;
    v24 = v23;
    v45 = v23;
    *v22 = 136315394;
    *(v22 + 4) = sub_25C458990(*(v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationName), *(v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationName + 8), &v45);
    *(v22 + 12) = 2080;
    sub_25C4C7B20();
    sub_25C4C3A48(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
    v25 = sub_25C4C89A0();
    v27 = sub_25C458990(v25, v26, &v45);

    *(v22 + 14) = v27;
    _os_log_impl(&dword_25C452000, v20, v21, "Operation update client: name=%s, uuid=%s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F888630](v24, -1, -1);
    MEMORY[0x25F888630](v22, -1, -1);
  }

  v28 = v47;
  (*(v8 + 16))(v11, v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__endpoint, v47);
  v29 = (*(v8 + 88))(v11, v28);
  if (v29 == *MEMORY[0x277D35620])
  {
LABEL_6:
    (*(v8 + 8))(v11, v28);
    v30 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__session;
    swift_beginAccess();
    v31 = *(v6 + v30);
    if (v31)
    {
      v32 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationUUID;
      v33 = v31;
      sub_25C49E9C4(v6 + v32, v41, v42, v43, v44);

      return;
    }

    goto LABEL_12;
  }

  if (v29 == *MEMORY[0x277D355F0] || v29 == *MEMORY[0x277D35628])
  {
    goto LABEL_10;
  }

  if (v29 == *MEMORY[0x277D35608] || v29 == *MEMORY[0x277D355F8] || v29 == *MEMORY[0x277D35610])
  {
    goto LABEL_6;
  }

  if (v29 == *MEMORY[0x277D35600])
  {
    (*(v8 + 96))(v11, v28);
    v37 = sub_25C4C8170();
    (*(*(v37 - 8) + 8))(v11, v37);
    goto LABEL_11;
  }

  if (v29 != *MEMORY[0x277D35618])
  {
LABEL_10:
    (*(v8 + 8))(v11, v28);
LABEL_11:
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_25C4C88F0();

    v45 = 0xD000000000000016;
    v46 = 0x800000025C4D09B0;
    v34 = sub_25C4C7C10();
    MEMORY[0x25F887A50](v34);

    v35 = objc_allocWithZone(sub_25C4C7B80());
LABEL_13:
    sub_25C4C7B90();
    swift_willThrow();
    return;
  }

  if (!*(v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationHandler))
  {
LABEL_12:
    v36 = objc_allocWithZone(sub_25C4C7B80());
    goto LABEL_13;
  }

  v38 = *(v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationHandler + 8);
  v39 = *(v6 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationHandler);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_25C4C7F50();
  swift_unknownObjectRelease();
}

void sub_25C4C23B0(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v58 = a1;
  v5 = sub_25C4C7C50();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25C4C84C0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v3 + 48);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x277D85200], v10);
  v16 = v15;
  LOBYTE(v15) = sub_25C4C84E0();
  (*(v11 + 8))(v14, v10);
  if (v15)
  {
    v59 = v5;
    if (qword_27FC0C080 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v17 = sub_25C4C7BD0();
  v18 = __swift_project_value_buffer(v17, qword_27FC0C088);

  v19 = sub_25C4C7BB0();
  v20 = sub_25C4C8720();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v57 = v18;
    v23 = a2;
    v24 = v22;
    v61 = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_25C458990(*(v3 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationName), *(v3 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationName + 8), &v61);
    *(v21 + 12) = 2080;
    sub_25C4C7B20();
    sub_25C4C3A48(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
    v25 = sub_25C4C89A0();
    v27 = sub_25C458990(v25, v26, &v61);

    *(v21 + 14) = v27;
    _os_log_impl(&dword_25C452000, v19, v20, "Operation cancel client: name=%s, uuid=%s", v21, 0x16u);
    swift_arrayDestroy();
    v28 = v24;
    a2 = v23;
    MEMORY[0x25F888630](v28, -1, -1);
    MEMORY[0x25F888630](v21, -1, -1);
  }

  *(v3 + 16) = 1;
  v29 = v59;
  (*(v6 + 16))(v9, v3 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__endpoint, v59);
  v30 = (*(v6 + 88))(v9, v29);
  if (v30 == *MEMORY[0x277D35620])
  {
    goto LABEL_6;
  }

  if (v30 != *MEMORY[0x277D355F0] && v30 != *MEMORY[0x277D35628])
  {
    if (v30 == *MEMORY[0x277D35608] || v30 == *MEMORY[0x277D355F8] || v30 == *MEMORY[0x277D35610])
    {
LABEL_6:
      (*(v6 + 8))(v9, v29);
      v31 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__session;
      swift_beginAccess();
      v32 = *(v3 + v31);
      if (v32)
      {
        v33 = OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationUUID;
        v34 = swift_allocObject();
        swift_weakInit();
        v35 = swift_allocObject();
        v35[2] = v58;
        v35[3] = a2;
        v35[4] = v34;
        v35[5] = v32;
        v36 = v32;

        sub_25C49E9DC(v3 + v33, sub_25C4C31C8, v35);
      }

      else
      {
        v53 = objc_allocWithZone(sub_25C4C7B80());
        v54 = sub_25C4C7B90();
        v58();

        sub_25C4C19FC();
      }

      return;
    }

    if (v30 == *MEMORY[0x277D35600])
    {
      (*(v6 + 96))(v9, v29);
      v55 = sub_25C4C8170();
      (*(*(v55 - 8) + 8))(v9, v55);
      goto LABEL_11;
    }

    if (v30 == *MEMORY[0x277D35618])
    {
      sub_25C4C2C20(v58, a2);
      return;
    }
  }

  (*(v6 + 8))(v9, v29);
LABEL_11:
  v61 = 0;
  v62 = 0xE000000000000000;
  sub_25C4C88F0();

  v61 = 0xD000000000000016;
  v62 = 0x800000025C4D09B0;
  v37 = sub_25C4C7C10();
  MEMORY[0x25F887A50](v37);

  v38 = objc_allocWithZone(sub_25C4C7B80());
  v39 = sub_25C4C7B90();

  v40 = v39;
  v41 = sub_25C4C7BB0();
  v42 = sub_25C4C8710();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v57 = a2;
    v44 = v43;
    v45 = swift_slowAlloc();
    v61 = v45;
    *v44 = 136315650;
    sub_25C4C3A48(&qword_27FC0A480, MEMORY[0x277D35630]);
    v46 = sub_25C4C89A0();
    v48 = sub_25C458990(v46, v47, &v61);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2080;
    *(v44 + 14) = sub_25C458990(*(v3 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon_label), *(v3 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon_label + 8), &v61);
    *(v44 + 22) = 2080;
    v60 = v40;
    sub_25C4C3A48(&unk_27FC0AA50, MEMORY[0x277D02A18]);
    v49 = sub_25C4C8A30();
    v51 = sub_25C458990(v49, v50, &v61);

    *(v44 + 24) = v51;
    _os_log_impl(&dword_25C452000, v41, v42, "### Operation cancel failed: endpoint=%s, client=%s, error=%s", v44, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F888630](v45, -1, -1);
    MEMORY[0x25F888630](v44, -1, -1);
  }

  v52 = v40;
  (v58)(v40);
}

uint64_t sub_25C4C2C20(void (*a1)(void), uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationHandler))
  {
    v5 = *(v2 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon__operationHandler + 8);
    swift_getObjectType();
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    v7[2] = a1;
    v7[3] = a2;
    v7[4] = v6;
    swift_unknownObjectRetain();

    sub_25C4C7F40();
    swift_unknownObjectRelease();
  }

  else
  {
    a1(0);
  }

  return sub_25C4C19FC();
}

uint64_t sub_25C4C2D40()
{
  v1 = sub_25C4C84C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 48);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = sub_25C4C84E0();
  result = (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25C4C2E40()
{
  v1 = *(v0 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon_label);
  v2 = *(v0 + OBJC_IVAR____TtC11NexusDaemon17NXOperationDaemon_label + 8);

  return v1;
}

uint64_t sub_25C4C2E7C()
{
  v1 = v0[2];

  sub_25C45A004(v0[3], v0[4]);
  v2 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25C4C2EC4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3[5];
  v5 = v3[6];
  if (a3)
  {
    v6 = v3[6];
    return v4();
  }

  else
  {
    v8 = v3[3];
    v9 = v3[4];
    v10 = v3[2];
    return sub_25C4BEBB4(a1, a2, v8, v9, v4, v5);
  }
}