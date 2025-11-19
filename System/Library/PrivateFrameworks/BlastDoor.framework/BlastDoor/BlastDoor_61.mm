BlastDoor::ASMessageType_optional __swiftcall ASMessageType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x302010004uLL >> (8 * rawValue);
  if (rawValue >= 5)
  {
    LOBYTE(v2) = 4;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_2145390DC(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v2;
  v11 = v10;
  v42 = 1;
  sub_213FCF58C(v46);
  memcpy(&v41[6], v46, 0x201uLL);
  sub_214539BBC(v47);
  memcpy(&v40[7], v47, 0x231uLL);
  sub_213FCF58C(v48);
  memcpy(&v39[7], v48, 0x201uLL);
  if (v9 <= 2)
  {
    if (v9 != 1)
    {
      if (v9 == 2)
      {
        v49 = v8;
        v38[0] = 0;
        v12 = v42;
        LOBYTE(v38[1]) = v42;
        BYTE1(v38[1]) = 2;
        memcpy(&v38[1] + 2, v41, 0x207uLL);
        memcpy(&v38[66] + 1, v40, 0x238uLL);
        memcpy(&v38[137] + 1, v39, 0x208uLL);
        memset(&v38[203], 0, 33);
        memcpy(v37, v38, sizeof(v37));
        sub_21453C308(v38, &v28);
        sub_21453A6D0(v6);
        if (!v1)
        {
          sub_213FB54FC(v6, v4);
          memcpy(__dst, v37, 0x679uLL);
          sub_21431F758(__dst);
          v28 = 0;
          v29 = v12;
          v30 = 2;
          memcpy(v31, v41, sizeof(v31));
          memcpy(v32, v40, sizeof(v32));
          memcpy(v33, v39, sizeof(v33));
          v34 = 0u;
          v35 = 0u;
          v21 = 0u;
          v36 = 0;
          sub_21431F758(&v28);
          memcpy(v22, __src, 0x231uLL);
          nullsub_1(v22);
          memcpy(v43, v48, sizeof(v43));
          v13 = v22;
LABEL_18:
          memcpy(v44, v13, sizeof(v44));
          v18 = v46;
          goto LABEL_19;
        }

LABEL_14:
        sub_213FB54FC(v6, v4);
        memcpy(__dst, v37, 0x679uLL);
        sub_21431F758(__dst);
        v28 = 0;
        v29 = v12;
        v30 = 2;
        memcpy(v31, v41, sizeof(v31));
        memcpy(v32, v40, sizeof(v32));
        memcpy(v33, v39, sizeof(v33));
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    v49 = v8;
    v38[0] = 0;
    v14 = v42;
    LOBYTE(v38[1]) = v42;
    BYTE1(v38[1]) = 2;
    memcpy(&v38[1] + 2, v41, 0x207uLL);
    memcpy(&v38[66] + 1, v40, 0x238uLL);
    memcpy(&v38[137] + 1, v39, 0x208uLL);
    memset(&v38[203], 0, 33);
    memcpy(v37, v38, sizeof(v37));
    sub_21453C308(v38, &v28);
    sub_214539BC4(v6);
    if (!v1)
    {
      sub_213FB54FC(v6, v4);
      memcpy(__dst, v37, 0x679uLL);
      sub_21431F758(__dst);
      v28 = 0;
      v29 = v14;
      v30 = 2;
      memcpy(v31, v41, sizeof(v31));
      memcpy(v32, v40, sizeof(v32));
      memcpy(v33, v39, sizeof(v33));
      v34 = 0u;
      v35 = 0u;
      v21 = 0u;
      v36 = 0;
      sub_21431F758(&v28);
      memcpy(v22, __src, 0x201uLL);
      nullsub_1(v22);
      memcpy(v43, v48, sizeof(v43));
      memcpy(v44, v47, sizeof(v44));
      v18 = v22;
LABEL_19:
      memcpy(v45, v18, sizeof(v45));
      v15 = 0;
      v20 = 0u;
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  if (v9 == 3)
  {
    v49 = v8;
    v38[0] = 0;
    v12 = v42;
    LOBYTE(v38[1]) = v42;
    BYTE1(v38[1]) = 2;
    memcpy(&v38[1] + 2, v41, 0x207uLL);
    memcpy(&v38[66] + 1, v40, 0x238uLL);
    memcpy(&v38[137] + 1, v39, 0x208uLL);
    memset(&v38[203], 0, 33);
    memcpy(v37, v38, sizeof(v37));
    sub_21453C308(v38, &v28);
    sub_21453B4C0(v6);
    if (!v1)
    {
      sub_213FB54FC(v6, v4);
      memcpy(__dst, v37, 0x679uLL);
      sub_21431F758(__dst);
      v28 = 0;
      v29 = v12;
      v30 = 2;
      memcpy(v31, v41, sizeof(v31));
      memcpy(v32, v40, sizeof(v32));
      memcpy(v33, v39, sizeof(v33));
      v34 = 0u;
      v35 = 0u;
      v21 = 0u;
      v36 = 0;
      sub_21431F758(&v28);
      memcpy(v22, __src, 0x201uLL);
      nullsub_1(v22);
      memcpy(v43, v22, sizeof(v43));
      v13 = v47;
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (v9 != 4)
  {
LABEL_10:
    sub_21404A6EC();
    swift_allocError();
    *v16 = 0xD000000000000036;
    v16[1] = 0x800000021478B020;
    v16[2] = 0x4964696C61766E69;
    v16[3] = 0xEB000000006D6574;
    v16[4] = 0xD00000000000001CLL;
    v16[5] = 0x800000021478B060;
    swift_willThrow();
    sub_213FB54FC(v6, v4);
    v38[0] = 0;
    LOBYTE(v38[1]) = v42;
    BYTE1(v38[1]) = 2;
    memcpy(&v38[1] + 2, v41, 0x207uLL);
    memcpy(&v38[66] + 1, v40, 0x238uLL);
    memcpy(&v38[137] + 1, v39, 0x208uLL);
    memset(&v38[203], 0, 33);
    return sub_21431F758(v38);
  }

  v49 = v8;
  v38[0] = 0;
  v14 = v42;
  LOBYTE(v38[1]) = v42;
  BYTE1(v38[1]) = 2;
  memcpy(&v38[1] + 2, v41, 0x207uLL);
  memcpy(&v38[66] + 1, v40, 0x238uLL);
  memcpy(&v38[137] + 1, v39, 0x208uLL);
  memset(&v38[203], 0, 33);
  memcpy(v37, v38, sizeof(v37));
  sub_21453C308(v38, &v28);
  sub_21453C154(v6, v4, __src);
  if (v1)
  {
LABEL_12:
    sub_213FB54FC(v6, v4);
    memcpy(__dst, v37, 0x679uLL);
    sub_21431F758(__dst);
    v28 = 0;
    v29 = v14;
    v30 = 2;
    memcpy(v31, v41, sizeof(v31));
    memcpy(v32, v40, sizeof(v32));
    memcpy(v33, v39, sizeof(v33));
LABEL_15:
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
    return sub_21431F758(&v28);
  }

  sub_213FB54FC(v6, v4);
  memcpy(__dst, v37, 0x679uLL);
  sub_21431F758(__dst);
  v28 = 0;
  v29 = v14;
  v30 = 2;
  memcpy(v31, v41, sizeof(v31));
  memcpy(v32, v40, sizeof(v32));
  memcpy(v33, v39, sizeof(v33));
  v34 = 0u;
  v35 = 0u;
  v36 = 0;
  sub_21431F758(&v28);
  v20 = *&__src[16];
  v21 = *__src;
  v15 = __src[32];
  memcpy(v43, v48, sizeof(v43));
  memcpy(v44, v47, sizeof(v44));
  memcpy(v45, v46, sizeof(v45));
LABEL_20:
  v19 = v49 & 1;
  memcpy(&v26[6], v45, 0x201uLL);
  memcpy(&v25[7], v44, 0x231uLL);
  memcpy(&v24[7], v43, 0x201uLL);
  *v11 = v9;
  *(v11 + 8) = 0;
  *(v11 + 9) = v19;
  memcpy((v11 + 10), v26, 0x207uLL);
  memcpy((v11 + 529), v25, 0x238uLL);
  result = memcpy((v11 + 1097), v24, 0x208uLL);
  *(v11 + 1624) = v21;
  *(v11 + 1640) = v20;
  *(v11 + 1656) = v15;
  return result;
}

uint64_t sub_214539BC4(uint64_t a1)
{
  v3 = MEMORY[0x28223BE20](a1);
  v99 = v2;
  v4 = v1;
  v6 = v5;
  v7 = v3;
  v95 = v8;
  v9 = type metadata accessor for ActivityDataPreviewProtobuf(0);
  v10 = *(v9 - 8);
  v97 = v9;
  v98 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v96 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9135E8, &unk_21473F440);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v80 - v18;
  v20 = sub_2146D8E18();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = type metadata accessor for InviteRequestProtobuf(0);
  v23 = *(*(v22 - 1) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v107, v4, sizeof(v107));
  *&v106[0] = v7;
  *(&v106[0] + 1) = v6;
  memset(v100, 0, 40);
  sub_21402D9F8(v7, v6);
  sub_2146D8E08();
  sub_214543528(&qword_27C913740, type metadata accessor for InviteRequestProtobuf);
  v26 = v99;
  result = sub_2146D8FD8();
  if (!v26)
  {
    v85 = v17;
    v99 = 0;
    v28 = v22[6];
    v29 = &v25[v22[5]];
    v30 = *(v29 + 1);
    v90 = *v29;
    v31 = *&v25[v28];
    v32 = *&v25[v28 + 8];
    v33 = v22[8];
    v34 = &v25[v22[7]];
    v35 = *(v34 + 1);
    v87 = *v34;
    v88 = v31;
    v36 = *&v25[v33 + 8];
    v80 = *&v25[v33];
    v37 = v22[9];
    v38 = v22[10];
    v39 = &v25[v37];
    v89 = *v39;
    v86 = v39[4];
    sub_213FB2E54(&v25[v38], v19, &qword_27C9135E8, &unk_21473F440);
    v40 = *(v98 + 48);
    v98 += 48;
    v84 = v40;
    v41 = v40(v19, 1, v97);
    v91 = v36;

    v94 = v30;

    v93 = v32;

    v92 = v35;

    sub_213FB2DF4(v19, &qword_27C9135E8, &unk_21473F440);
    if (v41 == 1)
    {
      v83 = v25;
      sub_2144D6714(v106);
      v42 = v94;
    }

    else
    {
      memcpy(v100, v107, 0x679uLL);
      v49 = v85;
      sub_213FB2E54(&v25[v38], v85, &qword_27C9135E8, &unk_21473F440);
      v50 = v97;
      v51 = v84;
      if (v84(v49, 1, v97) == 1)
      {
        v52 = MEMORY[0x277D84F90];
        v53 = v96;
        *v96 = MEMORY[0x277D84F90];
        *(v53 + 1) = v52;
        v54 = &v53[v50[6]];
        sub_2146D8DE8();
        v55 = v50[7];
        v56 = type metadata accessor for ActivitySnapshotProtobuf(0);
        (*(*(v56 - 8) + 56))(&v53[v55], 1, 1, v56);
        v57 = &v53[v50[8]];
        *v57 = 0;
        v57[8] = 1;
        v58 = v51(v49, 1, v50);
        v59 = v94;
        if (v58 != 1)
        {
          sub_213FB2DF4(v49, &qword_27C9135E8, &unk_21473F440);
        }
      }

      else
      {
        v53 = v96;
        sub_214543570(v49, v96, type metadata accessor for ActivityDataPreviewProtobuf);
        v59 = v94;
      }

      sub_214543528(&qword_27C913758, type metadata accessor for ActivityDataPreviewProtobuf);
      v60 = v99;
      v61 = sub_2146D8FC8();
      if (v60)
      {
        sub_2145435D8(v53, type metadata accessor for ActivityDataPreviewProtobuf);

        return sub_2145435D8(v25, type metadata accessor for InviteRequestProtobuf);
      }

      v66 = v61;
      v67 = v62;
      sub_2145435D8(v53, type metadata accessor for ActivityDataPreviewProtobuf);
      sub_21453C364(v66);
      v99 = 0;
      v83 = v25;
      sub_213FB54FC(v66, v67);
      memcpy(v106, v101, 0x189uLL);
      v42 = v59;
    }

    sub_213FB2E54(v106, v100, &qword_27C909E50, &unk_2146F5B30);
    sub_2145B2A64(v100);
    v43 = v100[0];
    v44 = *(&v100[1] + 1);
    v45 = *&v100[1];
    v46 = LOBYTE(v100[2]);
    sub_2145B2A98(v101);
    v97 = v101[2];
    v98 = v101[1];
    v84 = v101[3];
    v85 = v101[0];
    LODWORD(v96) = LOBYTE(v101[4]);
    memcpy(&v102[7], v106, 0x189uLL);
    v86 = v86;
    v101[0] = v90;
    v101[1] = v42;
    v81 = v46;
    v103[0] = v46;
    *&v100[0] = 0xD000000000000032;
    *(&v100[0] + 1) = 0x80000002147918C0;
    *&v100[1] = 0xD00000000000001CLL;
    *(&v100[1] + 1) = 0x800000021478A360;

    sub_213FDC9D0(v45, v44);
    v47 = v99;
    v82 = v43;
    v48 = (v43)(v101, v103, v100);
    if (!v47)
    {
      if (v48)
      {
        sub_213FDC6D0(v45, v44);

        sub_213FDC6D0(v45, v44);
        v101[0] = v80;
        v63 = v91;
        v101[1] = v91;
        v103[0] = v96;
        *&v100[0] = 0xD000000000000036;
        *(&v100[0] + 1) = 0x8000000214791900;
        *&v100[1] = 0xD00000000000001CLL;
        *(&v100[1] + 1) = 0x800000021478A360;

        v64 = v84;
        sub_213FDC9D0(v97, v84);
        v65 = v85(v101, v103, v100);
        v69 = v83;
        v72 = v90;
        if (v65)
        {
          v73 = v97;
          v99 = 0;
          sub_213FDC6D0(v97, v43);
          sub_213FB2DF4(v106, &qword_27C909E50, &unk_2146F5B30);
          v74 = v98;

          sub_213FDC6D0(v73, v84);
          v75 = v95;
          *v95 = v82;
          v75[1] = *(&v43 + 1);
          v76 = v94;
          v75[2] = v72;
          v75[3] = v76;
          *(v75 + 32) = v81;
          *&v78 = v87;
          *&v77 = v88;
          *(&v77 + 1) = v93;
          *(&v78 + 1) = v92;
          *(v75 + 7) = v78;
          *(v75 + 5) = v77;
          v75[9] = v85;
          v75[10] = v74;
          v75[11] = v80;
          v75[12] = v63;
          *(v75 + 104) = v96;
          *(v75 + 27) = v89;
          *(v75 + 112) = v86;
          memcpy(v75 + 113, v102, 0x190uLL);
          return sub_2145435D8(v69, type metadata accessor for InviteRequestProtobuf);
        }

        sub_214031C4C();
        swift_allocError();
        *v79 = 0xD000000000000036;
        v79[1] = 0x8000000214791900;
        v79[2] = 0xD00000000000001CLL;
        v79[3] = 0x800000021478A360;
        swift_willThrow();

        sub_213FB2DF4(v106, &qword_27C909E50, &unk_2146F5B30);

        sub_213FDC6D0(v97, v64);
        v45 = v72;
        v44 = v94;
        goto LABEL_17;
      }

      sub_214031C4C();
      swift_allocError();
      *v68 = 0xD000000000000032;
      v68[1] = 0x80000002147918C0;
      v68[2] = 0xD00000000000001CLL;
      v68[3] = 0x800000021478A360;
      swift_willThrow();
    }

    sub_213FB2DF4(v106, &qword_27C909E50, &unk_2146F5B30);

    sub_213FDC6D0(v45, v44);
    v69 = v83;
LABEL_17:
    *&v100[0] = v82;
    *(&v100[0] + 1) = *(&v43 + 1);
    *&v100[1] = v45;
    *(&v100[1] + 1) = v44;
    LOBYTE(v100[2]) = v81;
    *(&v100[2] + 1) = v108[0];
    *&v71 = v87;
    *&v70 = v88;
    *(&v70 + 1) = v93;
    DWORD1(v100[2]) = *(v108 + 3);
    *(&v71 + 1) = v92;
    *(&v100[3] + 8) = v71;
    *(&v100[2] + 8) = v70;
    *(&v100[4] + 1) = v85;
    *&v100[5] = v98;
    *(&v100[5] + 1) = v97;
    *&v100[6] = v43;
    BYTE8(v100[6]) = v96;
    *(&v100[6] + 9) = v104;
    BYTE11(v100[6]) = v105;
    HIDWORD(v100[6]) = v89;
    LOBYTE(v100[7]) = v86;
    memcpy(&v100[7] + 1, v102, 0x190uLL);
    sub_21430C2BC(v100);
    return sub_2145435D8(v69, type metadata accessor for InviteRequestProtobuf);
  }

  return result;
}

uint64_t sub_21453A6D0(uint64_t a1)
{
  v3 = MEMORY[0x28223BE20](a1);
  v130 = v2;
  v111 = v1;
  v5 = v4;
  v6 = v3;
  v103 = v7;
  v8 = type metadata accessor for ActivityDataPreviewProtobuf(0);
  v107 = *(v8 - 8);
  v108 = v8;
  v9 = *(v107 + 64);
  MEMORY[0x28223BE20](v8);
  v105 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9135E8, &unk_21473F440);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v104 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v106 = &v94 - v15;
  v16 = type metadata accessor for ShareLocationsProtobuf(0);
  v17 = *(v16 - 8);
  v109 = v16;
  v110 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913670, "8\t\t");
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v94 - v26;
  v28 = sub_2146D8E18();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = type metadata accessor for InviteResponseProtobuf(0);
  v31 = *(*(v30 - 1) + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v94 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v129, v111, sizeof(v129));
  *&v124[0] = v6;
  *(&v124[0] + 1) = v5;
  memset(v112, 0, 40);
  sub_21402D9F8(v6, v5);
  sub_2146D8E08();
  sub_214543528(&qword_27C913728, type metadata accessor for InviteResponseProtobuf);
  v34 = v130;
  result = sub_2146D8FD8();
  if (!v34)
  {
    v100 = v25;
    v101 = v20;
    v130 = 0;
    v36 = v30[6];
    v37 = &v33[v30[5]];
    v38 = *(v37 + 1);
    v99 = *v37;
    v98 = *&v33[v36];
    v96 = v33[v36 + 4];
    v39 = v30[8];
    v40 = &v33[v30[7]];
    v41 = *(v40 + 1);
    v97 = *v40;
    sub_213FB2E54(&v33[v39], v27, &qword_27C913670, "8\t\t");
    v42 = *(v110 + 48);
    v110 += 48;
    v102 = v42;
    v43 = v42(v27, 1, v109);
    v111 = v41;
    v44 = v38;

    sub_213FB2DF4(v27, &qword_27C913670, "8\t\t");
    if (v43 == 1)
    {
      v110 = v38;
      memset(v128, 0, 25);
      v127 = 0u;
      v126 = 0u;
      v125 = 0u;
    }

    else
    {
      memcpy(v112, v129, 0x679uLL);
      v58 = &v33[v39];
      v59 = v100;
      sub_213FB2E54(v58, v100, &qword_27C913670, "8\t\t");
      v60 = v109;
      if (v102(v59, 1, v109) == 1)
      {
        v61 = v101;
        sub_2146D8DE8();
        v62 = (v61 + *(v60 + 20));
        *v62 = 0;
        v62[1] = 0;
        v63 = (v61 + *(v60 + 24));
        *v63 = 0;
        v63[1] = 0;
        if (v102(v59, 1, v60) != 1)
        {
          sub_213FB2DF4(v59, &qword_27C913670, "8\t\t");
        }
      }

      else
      {
        v61 = v101;
        sub_214543570(v59, v101, type metadata accessor for ShareLocationsProtobuf);
      }

      sub_214543528(&qword_27C913778, type metadata accessor for ShareLocationsProtobuf);
      v75 = v130;
      v76 = sub_2146D8FC8();
      if (v75)
      {
        sub_2145435D8(v61, type metadata accessor for ShareLocationsProtobuf);

        v78 = v33;
        return sub_2145435D8(v78, type metadata accessor for InviteResponseProtobuf);
      }

      v79 = v76;
      v80 = v77;
      sub_2145435D8(v61, type metadata accessor for ShareLocationsProtobuf);
      sub_2144CBFE8(v124);
      v130 = 0;
      v110 = v44;
      sub_213FB54FC(v79, v80);
      v127 = v124[2];
      v128[0] = v124[3];
      *(v128 + 9) = *(&v124[3] + 9);
      v126 = v124[1];
      v125 = v124[0];
    }

    v45 = v108;
    v46 = v30[10];
    v47 = &v33[v30[9]];
    v48 = v47[1];
    v101 = *v47;
    LODWORD(v102) = *&v33[v46];
    v49 = v33;
    LODWORD(v100) = v33[v46 + 4];
    v50 = v30[11];
    v51 = &v33[v50];
    v52 = v106;
    sub_213FB2E54(v51, v106, &qword_27C9135E8, &unk_21473F440);
    v107 = *(v107 + 48);
    LODWORD(v45) = (v107)(v52, 1, v45);
    v109 = v48;

    sub_213FB2DF4(v52, &qword_27C9135E8, &unk_21473F440);
    v95 = v49;
    if (v45 == 1)
    {
      v53 = v110;
      sub_2144D6714(v124);
      goto LABEL_6;
    }

    memcpy(v112, v129, 0x679uLL);
    v64 = v49 + v50;
    v65 = v104;
    sub_213FB2E54(v64, v104, &qword_27C9135E8, &unk_21473F440);
    v67 = v107;
    v66 = v108;
    v68 = (v107)(v65, 1, v108);
    v53 = v110;
    if (v68 == 1)
    {
      v69 = MEMORY[0x277D84F90];
      v70 = v105;
      *v105 = MEMORY[0x277D84F90];
      *(v70 + 1) = v69;
      v71 = &v70[v66[6]];
      sub_2146D8DE8();
      v72 = v66[7];
      v73 = type metadata accessor for ActivitySnapshotProtobuf(0);
      (*(*(v73 - 8) + 56))(&v70[v72], 1, 1, v73);
      v74 = &v70[v66[8]];
      *v74 = 0;
      v74[8] = 1;
      if (v67(v65, 1, v66) != 1)
      {
        sub_213FB2DF4(v65, &qword_27C9135E8, &unk_21473F440);
      }
    }

    else
    {
      v70 = v105;
      sub_214543570(v65, v105, type metadata accessor for ActivityDataPreviewProtobuf);
    }

    sub_214543528(&qword_27C913758, type metadata accessor for ActivityDataPreviewProtobuf);
    v81 = v130;
    v82 = sub_2146D8FC8();
    if (!v81)
    {
      v90 = v82;
      v91 = v83;
      sub_2145435D8(v70, type metadata accessor for ActivityDataPreviewProtobuf);
      sub_21453C364(v90);
      v130 = 0;
      sub_213FB54FC(v90, v91);
      memcpy(v124, v113, 0x189uLL);
LABEL_6:
      sub_213FB2E54(&v125, v112, &qword_27C909E68, &qword_214761070);
      sub_213FB2E54(v124, v112, &qword_27C909E50, &unk_2146F5B30);
      sub_2145B2D30(v112);
      v54 = v112[0];
      v55 = v112[1];
      v119 = v127;
      v120[0] = v128[0];
      *(v120 + 9) = *(v128 + 9);
      v118 = v126;
      v117 = v125;
      memcpy(&v114[3], v124, 0x189uLL);
      LODWORD(v107) = v96;
      LODWORD(v108) = v100;
      v113[0] = v99;
      v113[1] = v53;
      LODWORD(v106) = LOBYTE(v112[2]);
      v115[0] = v112[2];
      *&v112[0] = 0xD000000000000033;
      *(&v112[0] + 1) = 0x8000000214791940;
      *&v112[1] = 0xD00000000000001CLL;
      *(&v112[1] + 1) = 0x800000021478A360;

      sub_213FDC9D0(v55, *(&v55 + 1));
      v56 = v130;
      v57 = (v54)(v113, v115, v112);
      if (v56)
      {
        v130 = v56;
        sub_213FB2DF4(&v125, &qword_27C909E68, &qword_214761070);
        sub_213FB2DF4(v124, &qword_27C909E50, &unk_2146F5B30);
      }

      else
      {
        v110 = v53;
        if (v57)
        {
          v130 = 0;
          sub_213FDC6D0(v55, *(&v55 + 1));
          v84 = v110;

          sub_213FB2DF4(&v125, &qword_27C909E68, &qword_214761070);
          sub_213FB2DF4(v124, &qword_27C909E50, &unk_2146F5B30);

          sub_213FDC6D0(v55, *(&v55 + 1));
          v85 = v103;
          *v103 = v54;
          *(v85 + 2) = v99;
          *(v85 + 3) = v84;
          *(v85 + 32) = v106;
          *(v85 + 9) = v98;
          *(v85 + 40) = v107;
          v86 = v111;
          *(v85 + 6) = v97;
          *(v85 + 7) = v86;
          v87 = v120[0];
          v85[6] = v119;
          v85[7] = v87;
          *(v85 + 121) = *(v120 + 9);
          v88 = v118;
          v85[4] = v117;
          v85[5] = v88;
          v89 = v109;
          *(v85 + 18) = v101;
          *(v85 + 19) = v89;
          *(v85 + 40) = v102;
          *(v85 + 164) = v108;
          memcpy(v85 + 165, v114, 0x18CuLL);
          return sub_2145435D8(v95, type metadata accessor for InviteResponseProtobuf);
        }

        sub_214031C4C();
        v92 = swift_allocError();
        *v93 = 0xD000000000000033;
        v93[1] = 0x8000000214791940;
        v93[2] = 0xD00000000000001CLL;
        v93[3] = 0x800000021478A360;
        v130 = v92;
        swift_willThrow();

        sub_213FB2DF4(&v125, &qword_27C909E68, &qword_214761070);
        sub_213FB2DF4(v124, &qword_27C909E50, &unk_2146F5B30);
      }

      sub_213FDC6D0(v55, *(&v55 + 1));
      v112[0] = v54;
      v112[1] = v55;
      LOBYTE(v112[2]) = v106;
      *(&v112[2] + 1) = v122;
      BYTE3(v112[2]) = v123;
      DWORD1(v112[2]) = v98;
      BYTE8(v112[2]) = v107;
      *(&v112[2] + 9) = v121[0];
      HIDWORD(v112[2]) = *(v121 + 3);
      *&v112[3] = v97;
      *(&v112[3] + 1) = v111;
      *(&v112[7] + 9) = *(v120 + 9);
      v112[6] = v119;
      v112[7] = v120[0];
      v112[4] = v117;
      v112[5] = v118;
      HIDWORD(v112[8]) = *(v116 + 3);
      *(&v112[8] + 9) = v116[0];
      *&v112[9] = v101;
      *(&v112[9] + 1) = v109;
      LODWORD(v112[10]) = v102;
      BYTE4(v112[10]) = v108;
      memcpy(&v112[10] + 5, v114, 0x18CuLL);
      sub_21430C3C0(v112);
      return sub_2145435D8(v95, type metadata accessor for InviteResponseProtobuf);
    }

    sub_2145435D8(v70, type metadata accessor for ActivityDataPreviewProtobuf);

    sub_213FB2DF4(&v125, &qword_27C909E68, &qword_214761070);
    v78 = v95;
    return sub_2145435D8(v78, type metadata accessor for InviteResponseProtobuf);
  }

  return result;
}

uint64_t sub_21453B4C0(uint64_t a1)
{
  v3 = MEMORY[0x28223BE20](a1);
  v107 = v2;
  v95 = v1;
  v5 = v4;
  v6 = v3;
  v87 = v7;
  v8 = type metadata accessor for ActivityDataPreviewProtobuf(0);
  v91 = *(v8 - 8);
  v92 = v8;
  v9 = *(v91 + 64);
  MEMORY[0x28223BE20](v8);
  v88 = (&v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9135E8, &unk_21473F440);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v89 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v90 = &v82 - v15;
  v16 = type metadata accessor for ShareLocationsProtobuf(0);
  v17 = *(v16 - 8);
  v93 = v16;
  v94 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913670, "8\t\t");
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v82 - v26;
  v28 = sub_2146D8E18();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = type metadata accessor for FinalizeHandshakeProtobuf(0);
  v31 = *(*(v30 - 1) + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v82 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v106, v95, sizeof(v106));
  *&v101[0] = v6;
  *(&v101[0] + 1) = v5;
  memset(v96, 0, 40);
  sub_21402D9F8(v6, v5);
  sub_2146D8E08();
  sub_214543528(&qword_27C913710, type metadata accessor for FinalizeHandshakeProtobuf);
  v34 = v107;
  result = sub_2146D8FD8();
  if (!v34)
  {
    v85 = v25;
    v86 = v20;
    v107 = 0;
    v36 = v30[6];
    v37 = &v33[v30[5]];
    v38 = *(v37 + 1);
    v83 = *v37;
    sub_213FB2E54(&v33[v36], v27, &qword_27C913670, "8\t\t");
    v39 = *(v94 + 48);
    v94 += 48;
    v84 = v39;
    v40 = v39(v27, 1, v93);
    v95 = v38;

    sub_213FB2DF4(v27, &qword_27C913670, "8\t\t");
    if (v40 == 1)
    {
      v41 = v33;
      memset(v105, 0, 25);
      v104 = 0u;
      v103 = 0u;
      v102 = 0u;
      v42 = v92;
    }

    else
    {
      memcpy(v96, v106, 0x679uLL);
      v54 = v85;
      sub_213FB2E54(&v33[v36], v85, &qword_27C913670, "8\t\t");
      v55 = v93;
      v56 = v84;
      if (v84(v54, 1, v93) == 1)
      {
        v57 = v86;
        sub_2146D8DE8();
        v58 = (v57 + *(v55 + 20));
        *v58 = 0;
        v58[1] = 0;
        v59 = (v57 + *(v55 + 24));
        *v59 = 0;
        v59[1] = 0;
        if (v56(v54, 1, v55) != 1)
        {
          sub_213FB2DF4(v54, &qword_27C913670, "8\t\t");
        }
      }

      else
      {
        v57 = v86;
        sub_214543570(v54, v86, type metadata accessor for ShareLocationsProtobuf);
      }

      sub_214543528(&qword_27C913778, type metadata accessor for ShareLocationsProtobuf);
      v69 = v107;
      v70 = sub_2146D8FC8();
      v42 = v92;
      if (v69)
      {
        sub_2145435D8(v57, type metadata accessor for ShareLocationsProtobuf);

        return sub_2145435D8(v33, type metadata accessor for FinalizeHandshakeProtobuf);
      }

      v72 = v70;
      v73 = v71;
      sub_2145435D8(v57, type metadata accessor for ShareLocationsProtobuf);
      sub_2144CBFE8(v101);
      v107 = 0;
      v41 = v33;
      sub_213FB54FC(v72, v73);
      v104 = v101[2];
      v105[0] = v101[3];
      *(v105 + 9) = *(&v101[3] + 9);
      v103 = v101[1];
      v102 = v101[0];
    }

    v43 = v90;
    v44 = v30[7];
    sub_213FB2E54(v41 + v44, v90, &qword_27C9135E8, &unk_21473F440);
    v45 = *(v91 + 48);
    v46 = v45(v43, 1, v42);
    v47 = v43;
    LODWORD(v43) = v46;
    sub_213FB2DF4(v47, &qword_27C9135E8, &unk_21473F440);
    if (v43 == 1)
    {
      v94 = v41;
      sub_2144D6714(v101);
    }

    else
    {
      memcpy(v96, v106, 0x679uLL);
      v60 = v89;
      sub_213FB2E54(v41 + v44, v89, &qword_27C9135E8, &unk_21473F440);
      if (v45(v60, 1, v42) == 1)
      {
        v61 = MEMORY[0x277D84F90];
        v62 = v88;
        *v88 = MEMORY[0x277D84F90];
        v62[1] = v61;
        v63 = v62 + v42[6];
        sub_2146D8DE8();
        v64 = v42[7];
        v65 = type metadata accessor for ActivitySnapshotProtobuf(0);
        v66 = v62 + v64;
        v67 = v89;
        (*(*(v65 - 8) + 56))(v66, 1, 1, v65);
        v68 = v62 + v42[8];
        *v68 = 0;
        v68[8] = 1;
        if (v45(v67, 1, v42) != 1)
        {
          sub_213FB2DF4(v67, &qword_27C9135E8, &unk_21473F440);
        }
      }

      else
      {
        v62 = v88;
        sub_214543570(v60, v88, type metadata accessor for ActivityDataPreviewProtobuf);
      }

      sub_214543528(&qword_27C913758, type metadata accessor for ActivityDataPreviewProtobuf);
      v74 = v107;
      v75 = sub_2146D8FC8();
      if (v74)
      {
        sub_2145435D8(v62, type metadata accessor for ActivityDataPreviewProtobuf);

        sub_213FB2DF4(&v102, &qword_27C909E68, &qword_214761070);
        return sub_2145435D8(v41, type metadata accessor for FinalizeHandshakeProtobuf);
      }

      v79 = v75;
      v80 = v76;
      sub_2145435D8(v62, type metadata accessor for ActivityDataPreviewProtobuf);
      sub_21453C364(v79);
      v107 = 0;
      v94 = v41;
      sub_213FB54FC(v79, v80);
      memcpy(v101, v97, 0x189uLL);
    }

    sub_213FB2E54(&v102, v96, &qword_27C909E68, &qword_214761070);
    sub_213FB2E54(v101, v96, &qword_27C909E50, &unk_2146F5B30);
    sub_2145B2EA4(v98);
    *(&v97[1] + 7) = v103;
    *(&v97[2] + 7) = v104;
    *(&v97[3] + 7) = v105[0];
    v97[4] = *(v105 + 9);
    v48 = v98[0];
    v49 = v98[1];
    v50 = v98[2];
    v51 = v98[3];
    *(v97 + 7) = v102;
    memcpy(v96 + 7, v101, 0x189uLL);
    v100[2] = v97[2];
    v100[3] = v97[3];
    v100[4] = *(v105 + 9);
    v100[1] = v97[1];
    v100[0] = v97[0];
    memcpy(&v100[5], v96, 0x190uLL);
    *&v97[0] = v83;
    *(&v97[0] + 1) = v95;
    LODWORD(v93) = v99;
    LOBYTE(v98[0]) = v99;
    v96[0] = 0xD000000000000036;
    v96[1] = 0x8000000214791980;
    v96[2] = 0xD00000000000001CLL;
    v96[3] = 0x800000021478A360;

    sub_213FDC9D0(v50, v51);
    v52 = v107;
    v53 = v48(v97, v98, v96);
    if (v52)
    {
      sub_213FB2DF4(&v102, &qword_27C909E68, &qword_214761070);
      sub_213FB2DF4(v101, &qword_27C909E50, &unk_2146F5B30);
    }

    else
    {
      if (v53)
      {
        sub_213FDC6D0(v50, v51);
        v77 = v95;

        sub_213FB2DF4(&v102, &qword_27C909E68, &qword_214761070);
        sub_213FB2DF4(v101, &qword_27C909E50, &unk_2146F5B30);

        sub_213FDC6D0(v50, v51);
        v78 = v87;
        *v87 = v48;
        v78[1] = v49;
        v78[2] = v83;
        v78[3] = v77;
        *(v78 + 32) = v93;
        memcpy(v78 + 33, v100, 0x1E0uLL);
        return sub_2145435D8(v94, type metadata accessor for FinalizeHandshakeProtobuf);
      }

      sub_214031C4C();
      swift_allocError();
      *v81 = 0xD000000000000036;
      v81[1] = 0x8000000214791980;
      v81[2] = 0xD00000000000001CLL;
      v81[3] = 0x800000021478A360;
      swift_willThrow();

      sub_213FB2DF4(&v102, &qword_27C909E68, &qword_214761070);
      sub_213FB2DF4(v101, &qword_27C909E50, &unk_2146F5B30);
    }

    sub_213FDC6D0(v50, v51);
    v96[0] = v48;
    v96[1] = v49;
    v96[2] = v50;
    v96[3] = v51;
    LOBYTE(v96[4]) = v93;
    memcpy(&v96[4] + 1, v100, 0x1E0uLL);
    sub_21430C4C4(v96);
    return sub_2145435D8(v94, type metadata accessor for FinalizeHandshakeProtobuf);
  }

  return result;
}

uint64_t sub_21453C154@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_2146D8E18();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for WithdrawInviteRequestProtobuf(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1;
  v20 = a2;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_21402D9F8(a1, a2);
  sub_2146D8E08();
  sub_214543528(&qword_27C9136F8, type metadata accessor for WithdrawInviteRequestProtobuf);
  result = sub_2146D8FD8();
  if (!v3)
  {
    v14 = &v12[*(v9 + 20)];
    v15 = *v14;
    v16 = v14[1];

    sub_2142221B4(v15, v16, a3);
    return sub_2145435D8(v12, type metadata accessor for WithdrawInviteRequestProtobuf);
  }

  return result;
}

void sub_21453C364(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v4 = v3;
  memcpy(__dst, v1, sizeof(__dst));
  v5 = objc_allocWithZone(_BlastDoorASCodableActivityDataPreview);
  v6 = sub_2146D8A38();
  v7 = [v5 initWithData_];

  if (!v7)
  {
    sub_2144D6714(v57);
    goto LABEL_56;
  }

  LODWORD(v8) = [v7 hasDate];
  v9 = 0;
  if (v8)
  {
    [v7 date];
    v9 = v10;
  }

  if (![v7 hasActivitySnapshot])
  {
    v13 = sub_2144D6754(v59);
LABEL_11:
    v14 = [v7 workoutsCount];
    v15 = MEMORY[0x277D84F90];
    if (v14 < 1)
    {
      v19 = MEMORY[0x277D84F90];
    }

    else
    {
      v16 = [v7 workouts];
      if (v16)
      {
        v17 = v16;
        *&v57[0] = 0;
        sub_21404A8B8(0, &qword_27C9133E0, off_278175120);
        sub_2146D9908();

        v18 = *&v57[0];
        v19 = MEMORY[0x277D84F90];
        if (*&v57[0])
        {
          v48 = v8;
          v20 = (*&v57[0] & 0xFFFFFFFFFFFFFF8);
          if (*&v57[0] >> 62)
          {
            goto LABEL_34;
          }

          v21 = *((*&v57[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v21)
          {
            while (1)
            {
              v51 = v20;
              v46 = v4;
              v58 = v19;
              v20 = &v58;
              sub_2140A00A0(0, v21 & ~(v21 >> 63), 0);
              if (v21 < 0)
              {
                break;
              }

              v22 = 0;
              v19 = v58;
              v4 = v18 & 0xC000000000000001;
              v53 = v21 - 1;
              do
              {
                if (v4)
                {
                  v23 = MEMORY[0x216054E00](v22, v18);
                }

                else
                {
                  if (v22 >= v51[2])
                  {
                    goto LABEL_33;
                  }

                  v23 = *(v18 + 8 * v22 + 32);
                }

                v24 = v23;
                memcpy(v57, __dst, 0x679uLL);
                v20 = v57;
                sub_21453D708(v24, __src);
                if (v2)
                {

                  sub_213FB2DF4(v59, &qword_27C909F60, &qword_2146F5B98);

                  return;
                }

                memcpy(v55, __src, 0x121uLL);
                v58 = v19;
                v15 = *(v19 + 16);
                v25 = *(v19 + 24);
                if (v15 >= v25 >> 1)
                {
                  v20 = &v58;
                  sub_2140A00A0((v25 > 1), v15 + 1, 1);
                  v19 = v58;
                }

                *(v19 + 16) = v15 + 1;
                memcpy((v19 + 296 * v15 + 32), v55, 0x121uLL);
                if (v53 == v22)
                {

                  v4 = v46;
                  LOBYTE(v8) = v48;
                  v15 = MEMORY[0x277D84F90];
                  goto LABEL_36;
                }

                ++v22;
              }

              while (!__OFADD__(v22, 1));
              __break(1u);
LABEL_33:
              __break(1u);
LABEL_34:
              v21 = sub_2146DA028();
              if (!v21)
              {
                goto LABEL_35;
              }
            }

            __break(1u);
            goto LABEL_63;
          }

LABEL_35:

          LOBYTE(v8) = v48;
        }
      }

      else
      {
        v19 = MEMORY[0x277D84F90];
      }
    }

LABEL_36:
    if ([v7 achievementsCount] >= 1 && (v26 = objc_msgSend(v7, sel_achievements)) != 0 && (v27 = v26, *&v57[0] = 0, sub_21404A8B8(0, &qword_27C9133D8, off_2781750F0), sub_2146D9908(), v27, (v28 = *&v57[0]) != 0))
    {
      v49 = v8;
      v29 = (*&v57[0] & 0xFFFFFFFFFFFFFF8);
      if (*&v57[0] >> 62)
      {
        goto LABEL_60;
      }

      v30 = *((*&v57[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
        while (1)
        {
          v50 = v29;
          v45 = v7;
          v47 = v4;
          v58 = v15;
          v29 = &v58;
          sub_2140A0080(0, v30 & ~(v30 >> 63), 0);
          if (v30 < 0)
          {
            break;
          }

          v4 = 0;
          v15 = __src;
          v31 = v58;
          v52 = v30 - 1;
          v54 = v28 & 0xC000000000000001;
          do
          {
            if (v54)
            {
              v32 = MEMORY[0x216054E00](v4, v28);
            }

            else
            {
              if (v4 >= v50[2])
              {
                goto LABEL_59;
              }

              v32 = *(v28 + 8 * v4 + 32);
            }

            v33 = v32;
            memcpy(v57, __dst, 0x679uLL);
            v29 = v57;
            sub_21453DFFC(v33, __src);
            if (v2)
            {

              sub_213FB2DF4(v59, &qword_27C909F60, &qword_2146F5B98);

              return;
            }

            v7 = v28;

            v55[4] = __src[4];
            v55[5] = __src[5];
            v55[1] = __src[1];
            v55[2] = __src[2];
            v55[3] = __src[3];
            v55[8] = __src[8];
            v55[9] = __src[9];
            v55[6] = __src[6];
            v55[7] = __src[7];
            *&v55[10] = *&__src[10];
            v35 = *(v31 + 16);
            v34 = *(v31 + 24);
            v55[0] = __src[0];
            v58 = v31;
            if (v35 >= v34 >> 1)
            {
              v29 = &v58;
              sub_2140A0080((v34 > 1), v35 + 1, 1);
              v31 = v58;
            }

            *(v31 + 16) = v35 + 1;
            v36 = v31 + 168 * v35;
            v37 = v55[0];
            v38 = v55[2];
            *(v36 + 48) = v55[1];
            *(v36 + 64) = v38;
            *(v36 + 32) = v37;
            v39 = v55[3];
            v40 = v55[4];
            v41 = v55[6];
            *(v36 + 112) = v55[5];
            *(v36 + 128) = v41;
            *(v36 + 80) = v39;
            *(v36 + 96) = v40;
            v42 = v55[7];
            v43 = v55[8];
            v44 = v55[9];
            *(v36 + 192) = *&v55[10];
            *(v36 + 160) = v43;
            *(v36 + 176) = v44;
            *(v36 + 144) = v42;
            if (v52 == v4)
            {

              v4 = v47;
              LOBYTE(v8) = v49;
              goto LABEL_55;
            }

            ++v4;
            v28 = v7;
          }

          while (!__OFADD__(v4, 1));
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          v30 = sub_2146DA028();
          if (!v30)
          {
            goto LABEL_61;
          }
        }

LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

LABEL_61:

      v31 = MEMORY[0x277D84F90];
      LOBYTE(v8) = v49;
    }

    else
    {

      v31 = MEMORY[0x277D84F90];
    }

LABEL_55:
    memcpy(v57, v59, 0x169uLL);
    LOBYTE(__src[0]) = v8 ^ 1;
    *&v57[23] = v19;
    *(&v57[23] + 1) = v31;
    *&v57[24] = v9;
    BYTE8(v57[24]) = v8 ^ 1;
    nullsub_1(v57);
LABEL_56:
    memcpy(v4, v57, 0x189uLL);
    return;
  }

  v11 = v8;
  memcpy(v57, v1, 0x679uLL);
  v12 = [v7 activitySnapshot];
  if (v12)
  {
    v8 = v12;
    sub_21453CA40(v12, __src);
    if (v2)
    {

      return;
    }

    memcpy(v55, __src, 0x169uLL);
    nullsub_1(v55);
    memcpy(v59, v55, 0x169uLL);
    LOBYTE(v8) = v11;
    goto LABEL_11;
  }

LABEL_64:
  __break(1u);
}

void sub_21453CA40(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (![a1 hasSample])
  {
    v151 = 0;
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
LABEL_6:
    if ([a1 hasSourceUUID] && (v8 = objc_msgSend(a1, sel_sourceUUID)) != 0)
    {
      v9 = v8;
      v91 = sub_2146D8A58();
      v11 = v10;
    }

    else
    {
      v91 = 0;
      v11 = 0xF000000000000000;
    }

    v73 = [a1 hasSnapshotIndex];
    if (v73)
    {
      v12 = [a1 snapshotIndex];
    }

    else
    {
      v12 = 0;
    }

    v153 = [a1 hasTimeZoneOffsetFromUTCForNoon];
    if (v153)
    {
      v87 = [a1 timeZoneOffsetFromUTCForNoon];
    }

    else
    {
      v87 = 0;
    }

    v13 = [a1 hasEnergyBurned];
    v14 = 0;
    v15 = 0;
    v152 = v13;
    if (v13)
    {
      [a1 energyBurned];
    }

    v86 = v15;
    v102 = [a1 hasEnergyBurnedGoal];
    if (v102)
    {
      [a1 energyBurnedGoal];
      v14 = v16;
    }

    v75 = v12;
    v17 = 0;
    v18 = 0;
    v100 = [a1 hasBriskMinutes];
    if (v100)
    {
      [a1 briskMinutes];
      v18 = v19;
    }

    v20 = [a1 hasBriskMinutesGoal];
    if (v20)
    {
      [a1 briskMinutesGoal];
      v17 = v21;
    }

    v22 = [a1 hasActiveHours];
    v23 = 0;
    v24 = 0;
    if (v22)
    {
      [a1 activeHours];
      v24 = v25;
    }

    v26 = [a1 hasActiveHoursGoal];
    if (v26)
    {
      [a1 activeHoursGoal];
      v23 = v27;
    }

    v92 = v11;
    v28 = [a1 hasWalkingAndRunningDistance];
    v29 = 0;
    v30 = 0;
    if (v28)
    {
      [a1 walkingAndRunningDistance];
      v30 = v31;
    }

    v88 = v14;
    v72 = a2;
    v32 = [a1 hasStepCount];
    if (v32)
    {
      [a1 stepCount];
      v29 = v33;
    }

    v34 = [a1 hasPushCount];
    v35 = 0;
    if (v34)
    {
      [a1 pushCount];
      v35 = v36;
    }

    v37 = [a1 hasWheelchairUse];
    v85 = v17;
    if (v37)
    {
      v84 = [a1 wheelchairUse];
    }

    else
    {
      v84 = 0;
    }

    v38 = [a1 hasMmv];
    v39 = 0;
    v40 = 0;
    if (v38)
    {
      [a1 mmv];
      v40 = v41;
    }

    v93 = v153 ^ 1;
    v94 = v152 ^ 1;
    v95 = v102 ^ 1;
    v96 = v100 ^ 1;
    v97 = v22 ^ 1;
    v98 = v26 ^ 1;
    v99 = v28 ^ 1;
    v101 = v32 ^ 1;
    v103 = v34 ^ 1;
    v153 = v37 ^ 1;
    v42 = v38 ^ 1;
    v43 = [a1 hasMmg];
    if (v43)
    {
      [a1 mmg];
      v39 = v44;
    }

    v152 = v43 ^ 1;
    v45 = [a1 hasAmm];
    if (v45)
    {
      v83 = [a1 amm];
    }

    else
    {
      v83 = 0;
    }

    sub_213FB2E54(&v147, __dst, &qword_27C90A020, &qword_2146F5BE0);
    sub_2145EF844(__dst);
    v46 = __dst[0];
    v47 = __dst[1];
    v48 = __dst[2];
    sub_2145EF9AC(&v105);
    v80 = *(&v105 + 1);
    v81 = v105;
    v77 = v106;
    v76 = BYTE8(v106);
    v79 = BYTE10(v106);
    v144 = v149;
    v145 = v150;
    LOBYTE(v146) = v151;
    v143 = v148;
    v142 = v147;
    v124 = BYTE9(v106);
    v123 = v93;
    v122 = v94;
    v121 = v95;
    v120 = v96;
    v119 = v20 ^ 1;
    v118 = v22 ^ 1;
    v117 = v98;
    v116 = v99;
    v115 = v32 ^ 1;
    v114 = v34 ^ 1;
    v113 = v153;
    v112 = v42;
    v111 = v152;
    v82 = v45 ^ 1;
    v110 = v45 ^ 1;
    v78 = BYTE9(v106);
    v140 = BYTE9(v106);
    __dst[0] = v46;
    __dst[1] = v47;
    LOBYTE(__dst[2]) = v48;

    sub_21404F7E0(v47, *(&v47 + 1));
    sub_214032118(v91, v92, 2, 0xD000000000000047, 0x80000002147914C0, 0xD00000000000001CLL, 0x800000021478A360);
    if (v3)
    {
      sub_213FB2DF4(&v147, &qword_27C90A020, &qword_2146F5BE0);
      sub_213FDC6BC(v91, v92);

      v89 = __dst[0];
      v49 = *(&__dst[1] + 1);
      v50 = *&__dst[1];
      v51 = __dst[2];

      sub_214032564(v47, *(&v47 + 1));
      v52 = v89;
      v53 = v42;
      v54 = v78;
      v55 = v79;
      v57 = v80;
      v56 = v81;
    }

    else
    {
      v58 = v73 ^ 1;

      v90 = __dst[0];
      v74 = *(&__dst[1] + 1);
      v50 = *&__dst[1];
      v71 = __dst[2];

      sub_214032564(v47, *(&v47 + 1));
      *&v105 = v75;
      BYTE8(v105) = v58;
      v55 = v79;
      v124 = v79;
      *&__dst[0] = 0xD00000000000004ALL;
      *(&__dst[0] + 1) = 0x8000000214791510;
      *&__dst[1] = 0xD00000000000001CLL;
      *(&__dst[1] + 1) = 0x800000021478A360;
      v57 = v80;

      v56 = v81;
      if (v81(&v105, &v124, __dst))
      {
        sub_213FB2DF4(&v147, &qword_27C90A020, &qword_2146F5BE0);
        sub_213FDC6BC(v91, v92);

        v140 = 0;
        v59 = v145;
        *(v72 + 32) = v144;
        *(v72 + 48) = v59;
        *(v72 + 64) = v146;
        v60 = v143;
        *v72 = v142;
        *(v72 + 16) = v60;
        *(v72 + 72) = v90;
        *(v72 + 88) = v50;
        *(v72 + 96) = v74;
        *(v72 + 104) = v71;
        *(v72 + 105) = *v141;
        *(v72 + 108) = *&v141[3];
        *(v72 + 112) = v81;
        *(v72 + 120) = v80;
        *(v72 + 128) = v75;
        *(v72 + 136) = 0;
        *(v72 + 138) = v79;
        *(v72 + 139) = v138;
        *(v72 + 143) = v139;
        *(v72 + 144) = v87;
        *(v72 + 152) = v93;
        *(v72 + 153) = v137[0];
        *(v72 + 156) = *(v137 + 3);
        *(v72 + 160) = v86;
        *(v72 + 168) = v94;
        *(v72 + 172) = *(v136 + 3);
        *(v72 + 169) = v136[0];
        *(v72 + 176) = v88;
        *(v72 + 184) = v95;
        *(v72 + 188) = *(v135 + 3);
        *(v72 + 185) = v135[0];
        *(v72 + 192) = v18;
        *(v72 + 200) = v96;
        *(v72 + 204) = *(v134 + 3);
        *(v72 + 201) = v134[0];
        *(v72 + 208) = v85;
        *(v72 + 216) = v20 ^ 1;
        v61 = v133[0];
        *(v72 + 220) = *(v133 + 3);
        *(v72 + 217) = v61;
        *(v72 + 224) = v24;
        *(v72 + 232) = v97;
        v62 = v132[0];
        *(v72 + 236) = *(v132 + 3);
        *(v72 + 233) = v62;
        *(v72 + 240) = v23;
        *(v72 + 248) = v98;
        v63 = v131[0];
        *(v72 + 252) = *(v131 + 3);
        *(v72 + 249) = v63;
        *(v72 + 256) = v30;
        *(v72 + 264) = v99;
        v64 = v130[0];
        *(v72 + 268) = *(v130 + 3);
        *(v72 + 265) = v64;
        *(v72 + 272) = v29;
        *(v72 + 280) = v101;
        v65 = v129[0];
        *(v72 + 284) = *(v129 + 3);
        *(v72 + 281) = v65;
        *(v72 + 288) = v35;
        *(v72 + 296) = v103;
        v66 = v128[0];
        *(v72 + 300) = *(v128 + 3);
        *(v72 + 297) = v66;
        *(v72 + 304) = v84;
        *(v72 + 312) = v153;
        v67 = v127[0];
        *(v72 + 316) = *(v127 + 3);
        *(v72 + 313) = v67;
        *(v72 + 320) = v40;
        *(v72 + 328) = v42;
        v68 = v126[0];
        *(v72 + 332) = *(v126 + 3);
        *(v72 + 329) = v68;
        *(v72 + 336) = v39;
        *(v72 + 344) = v152;
        v69 = v125[0];
        *(v72 + 348) = *(v125 + 3);
        *(v72 + 345) = v69;
        *(v72 + 352) = v83;
        *(v72 + 360) = v82;
        return;
      }

      sub_214031C4C();
      swift_allocError();
      *v70 = 0xD00000000000004ALL;
      v70[1] = 0x8000000214791510;
      v70[2] = 0xD00000000000001CLL;
      v70[3] = 0x800000021478A360;
      swift_willThrow();

      sub_213FB2DF4(&v147, &qword_27C90A020, &qword_2146F5BE0);
      sub_213FDC6BC(v91, v92);

      v51 = v71;

      v54 = v78;
      v140 = v78;
      v53 = v42;
      v52 = v90;
      v49 = v74;
    }

    __dst[2] = v144;
    __dst[3] = v145;
    *&__dst[4] = v146;
    __dst[0] = v142;
    __dst[1] = v143;
    *(&__dst[4] + 8) = v52;
    *(&__dst[5] + 1) = v50;
    *&__dst[6] = v49;
    BYTE8(__dst[6]) = v51;
    *(&__dst[6] + 9) = *v141;
    HIDWORD(__dst[6]) = *&v141[3];
    *&__dst[7] = v56;
    *(&__dst[7] + 1) = v57;
    *&__dst[8] = v77;
    BYTE8(__dst[8]) = v76;
    BYTE9(__dst[8]) = v54;
    BYTE10(__dst[8]) = v55;
    HIBYTE(__dst[8]) = v139;
    *(&__dst[8] + 11) = v138;
    *&__dst[9] = v87;
    BYTE8(__dst[9]) = v93;
    HIDWORD(__dst[9]) = *(v137 + 3);
    *(&__dst[9] + 9) = v137[0];
    *&__dst[10] = v86;
    BYTE8(__dst[10]) = v94;
    HIDWORD(__dst[10]) = *(v136 + 3);
    *(&__dst[10] + 9) = v136[0];
    *&__dst[11] = v88;
    BYTE8(__dst[11]) = v95;
    HIDWORD(__dst[11]) = *(v135 + 3);
    *(&__dst[11] + 9) = v135[0];
    *&__dst[12] = v18;
    BYTE8(__dst[12]) = v96;
    HIDWORD(__dst[12]) = *(v134 + 3);
    *(&__dst[12] + 9) = v134[0];
    *&__dst[13] = v85;
    BYTE8(__dst[13]) = v20 ^ 1;
    HIDWORD(__dst[13]) = *(v133 + 3);
    *(&__dst[13] + 9) = v133[0];
    *&__dst[14] = v24;
    BYTE8(__dst[14]) = v97;
    HIDWORD(__dst[14]) = *(v132 + 3);
    *(&__dst[14] + 9) = v132[0];
    *&__dst[15] = v23;
    BYTE8(__dst[15]) = v98;
    HIDWORD(__dst[15]) = *(v131 + 3);
    *(&__dst[15] + 9) = v131[0];
    *&__dst[16] = v30;
    BYTE8(__dst[16]) = v99;
    *(&__dst[16] + 9) = v130[0];
    HIDWORD(__dst[16]) = *(v130 + 3);
    *&__dst[17] = v29;
    BYTE8(__dst[17]) = v101;
    *(&__dst[17] + 9) = v129[0];
    HIDWORD(__dst[17]) = *(v129 + 3);
    *&__dst[18] = v35;
    BYTE8(__dst[18]) = v103;
    *(&__dst[18] + 9) = v128[0];
    HIDWORD(__dst[18]) = *(v128 + 3);
    *&__dst[19] = v84;
    BYTE8(__dst[19]) = v153;
    *(&__dst[19] + 9) = v127[0];
    HIDWORD(__dst[19]) = *(v127 + 3);
    *&__dst[20] = v40;
    BYTE8(__dst[20]) = v53;
    *(&__dst[20] + 9) = v126[0];
    HIDWORD(__dst[20]) = *(v126 + 3);
    *&__dst[21] = v39;
    BYTE8(__dst[21]) = v152;
    *(&__dst[21] + 9) = v125[0];
    HIDWORD(__dst[21]) = *(v125 + 3);
    *&__dst[22] = v83;
    BYTE8(__dst[22]) = v82;
    sub_21430B3E4(__dst);
    return;
  }

  memcpy(__dst, v2, 0x679uLL);
  v6 = [a1 sample];
  if (!v6)
  {
    __break(1u);
    return;
  }

  v7 = v6;
  sub_2144CE058(v6, &v105);

  if (!v3)
  {
    v149 = v107;
    v150 = v108;
    v151 = v109;
    v147 = v105;
    v148 = v106;
    goto LABEL_6;
  }
}

void sub_21453D708(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 hasSample])
  {
    memcpy(__dst, v2, 0x679uLL);
    v6 = [a1 sample];
    if (!v6)
    {
      __break(1u);
      goto LABEL_61;
    }

    v7 = v6;
    sub_2144CE058(v6, v81);

    if (v3)
    {
      return;
    }

    v107 = v81[2];
    v108 = v81[3];
    v109 = v82;
    v105 = v81[0];
    v106 = v81[1];
  }

  else
  {
    v109 = 0;
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
  }

  v8 = [a1 hasType];
  if (v8)
  {
    v9 = [a1 type];
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
  v11 = 0;
  v71 = [a1 hasDuration];
  if (v71)
  {
    [a1 duration];
    v11 = v12;
  }

  v70 = [a1 hasTotalEnergyBurnedInCanonicalUnit];
  if (v70)
  {
    [a1 totalEnergyBurnedInCanonicalUnit];
    v10 = v13;
  }

  v14 = 0;
  v15 = 0;
  v66 = [a1 hasTotalBasalEnergyBurnedInCanonicalUnit];
  if (v66)
  {
    [a1 totalBasalEnergyBurnedInCanonicalUnit];
    v15 = v16;
  }

  v63 = [a1 hasTotalDistanceInCanonicalUnit];
  if (v63)
  {
    [a1 totalDistanceInCanonicalUnit];
    v14 = v17;
  }

  v59 = [a1 hasGoalType];
  v79 = v9;
  if (v59)
  {
    v18 = [a1 goalType];
  }

  else
  {
    v18 = 0;
  }

  v19 = [a1 hasGoalInCanonicalUnit];
  v20 = 0;
  if (v19)
  {
    [a1 goalInCanonicalUnit];
    v20 = v21;
  }

  if ([a1 hasBundleID] && (v22 = objc_msgSend(a1, sel_bundleID)) != 0)
  {
    v23 = v22;
    v24 = sub_2146D95B8();
    v76 = v25;
    v77 = v24;
  }

  else
  {
    v76 = 0;
    v77 = 0;
  }

  if ([a1 hasIsWatchWorkout])
  {
    v75 = [a1 isWatchWorkout];
  }

  else
  {
    v75 = 2;
  }

  if ([a1 hasIsIndoorWorkout])
  {
    v74 = [a1 isIndoorWorkout];
  }

  else
  {
    v74 = 2;
  }

  if ([a1 hasDeviceManufacturer] && (v26 = objc_msgSend(a1, sel_deviceManufacturer)) != 0)
  {
    v27 = v26;
    v28 = sub_2146D95B8();
    v72 = v29;
    v73 = v28;
  }

  else
  {
    v72 = 0;
    v73 = 0;
  }

  if ([a1 hasDeviceModel] && (v30 = objc_msgSend(a1, sel_deviceModel)) != 0)
  {
    v31 = v30;
    v32 = sub_2146D95B8();
    v68 = v33;
    v69 = v32;
  }

  else
  {
    v68 = 0;
    v69 = 0;
  }

  v34 = [a1 hasAmm];
  if (v34)
  {
    v65 = [a1 amm];
  }

  else
  {
    v65 = 0;
  }

  if ([a1 hasSeymourCatalogWorkoutIdentifier] && (v35 = objc_msgSend(a1, sel_seymourCatalogWorkoutIdentifier)) != 0)
  {
    v36 = v35;
    v37 = sub_2146D95B8();
    v61 = v38;
    v62 = v37;
  }

  else
  {
    v61 = 0;
    v62 = 0;
  }

  v55 = a2;
  v78 = v18;
  if ([a1 hasSeymourMediaType])
  {
    v39 = [a1 seymourMediaType];
    if (v39)
    {
      v40 = v39;
      sub_2146D95B8();

      v41 = sub_2146DA098();

      v42 = 4;
      if (v41 < 4)
      {
        v42 = v41;
      }

      v58 = v42;
      goto LABEL_53;
    }

LABEL_61:
    __break(1u);
    return;
  }

  v58 = 4;
LABEL_53:
  v43 = v59 ^ 1;
  v44 = v19 ^ 1;
  sub_213FB2E54(&v105, __dst, &qword_27C90A020, &qword_2146F5BE0);
  sub_2145EFD30(__dst);
  v45 = *(&__dst[0] + 1);
  v57 = *&__dst[1];
  v56 = BYTE8(__dst[1]);
  v102 = v107;
  v103 = v108;
  LOBYTE(v104) = v109;
  v101 = v106;
  v100 = v105;
  v88 = v70 ^ 1;
  v46 = *&__dst[0];
  v60 = v66 ^ 1;
  v87 = v66 ^ 1;
  v47 = BYTE10(__dst[1]);
  v64 = v63 ^ 1;
  v86 = v64;
  v67 = v43;
  v85 = v43;
  v48 = v8 ^ 1;
  v49 = BYTE9(__dst[1]);
  v84 = v44;
  v83 = v34 ^ 1;
  v99 = BYTE9(__dst[1]);
  *&v81[0] = v79;
  BYTE8(v81[0]) = v48;
  v89[0] = BYTE10(__dst[1]);
  *&__dst[0] = 0xD000000000000038;
  *(&__dst[0] + 1) = 0x8000000214791560;
  *&__dst[1] = 0xD00000000000001CLL;
  *(&__dst[1] + 1) = 0x800000021478A360;

  v50 = v46(v81, v89, __dst);
  if (v3)
  {
    sub_213FB2DF4(&v105, &qword_27C90A020, &qword_2146F5BE0);
  }

  else
  {
    if (v50)
    {
      sub_213FB2DF4(&v105, &qword_27C90A020, &qword_2146F5BE0);

      v99 = 0;
      v51 = v103;
      *(v55 + 32) = v102;
      *(v55 + 48) = v51;
      v52 = v104;
      v53 = v101;
      *v55 = v100;
      *(v55 + 16) = v53;
      *(v55 + 64) = v52;
      *(v55 + 72) = v46;
      *(v55 + 80) = v45;
      *(v55 + 88) = v79;
      *(v55 + 96) = v48;
      *(v55 + 97) = 0;
      *(v55 + 98) = v47;
      *(v55 + 104) = v11;
      *(v55 + 112) = v71 ^ 1;
      *(v55 + 120) = v10;
      *(v55 + 128) = v70 ^ 1;
      *(v55 + 136) = v15;
      *(v55 + 144) = v60;
      *(v55 + 152) = v14;
      *(v55 + 160) = v64;
      *(v55 + 168) = v78;
      *(v55 + 176) = v67;
      *(v55 + 184) = v20;
      *(v55 + 192) = v44;
      *(v55 + 200) = v77;
      *(v55 + 208) = v76;
      *(v55 + 216) = v75;
      *(v55 + 217) = v74;
      *(v55 + 224) = v73;
      *(v55 + 232) = v72;
      *(v55 + 240) = v69;
      *(v55 + 248) = v68;
      *(v55 + 256) = v65;
      *(v55 + 264) = v34 ^ 1;
      *(v55 + 272) = v62;
      *(v55 + 280) = v61;
      *(v55 + 288) = v58;
      return;
    }

    sub_214031C4C();
    swift_allocError();
    *v54 = 0xD000000000000038;
    v54[1] = 0x8000000214791560;
    v54[2] = 0xD00000000000001CLL;
    v54[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(&v105, &qword_27C90A020, &qword_2146F5BE0);
  }

  __dst[2] = v102;
  __dst[3] = v103;
  __dst[0] = v100;
  __dst[1] = v101;
  *&__dst[4] = v104;
  *(&__dst[4] + 1) = v46;
  *&__dst[5] = v45;
  *(&__dst[5] + 1) = v57;
  LOBYTE(__dst[6]) = v56;
  BYTE1(__dst[6]) = v49;
  BYTE2(__dst[6]) = v47;
  BYTE7(__dst[6]) = v98;
  *(&__dst[6] + 3) = v97[2];
  *(&__dst[6] + 1) = v11;
  LOBYTE(__dst[7]) = v71 ^ 1;
  DWORD1(__dst[7]) = *(v97 + 3);
  *(&__dst[7] + 1) = v97[0];
  *(&__dst[7] + 1) = v10;
  LOBYTE(__dst[8]) = v70 ^ 1;
  DWORD1(__dst[8]) = *(v96 + 3);
  *(&__dst[8] + 1) = v96[0];
  *(&__dst[8] + 1) = v15;
  LOBYTE(__dst[9]) = v60;
  DWORD1(__dst[9]) = *(v95 + 3);
  *(&__dst[9] + 1) = v95[0];
  *(&__dst[9] + 1) = v14;
  LOBYTE(__dst[10]) = v64;
  DWORD1(__dst[10]) = *(v94 + 3);
  *(&__dst[10] + 1) = v94[0];
  *(&__dst[10] + 1) = v78;
  LOBYTE(__dst[11]) = v67;
  DWORD1(__dst[11]) = *(v93 + 3);
  *(&__dst[11] + 1) = v93[0];
  *(&__dst[11] + 1) = v20;
  LOBYTE(__dst[12]) = v44;
  DWORD1(__dst[12]) = *(v92 + 3);
  *(&__dst[12] + 1) = v92[0];
  *(&__dst[12] + 1) = v77;
  *&__dst[13] = v76;
  BYTE8(__dst[13]) = v75;
  BYTE9(__dst[13]) = v74;
  HIWORD(__dst[13]) = v91;
  *(&__dst[13] + 10) = v90[2];
  *&__dst[14] = v73;
  *(&__dst[14] + 1) = v72;
  *&__dst[15] = v69;
  *(&__dst[15] + 1) = v68;
  *&__dst[16] = v65;
  BYTE8(__dst[16]) = v34 ^ 1;
  *(&__dst[16] + 9) = v90[0];
  HIDWORD(__dst[16]) = *(v90 + 3);
  *&__dst[17] = v62;
  *(&__dst[17] + 1) = v61;
  LOBYTE(__dst[18]) = v58;
  sub_21430B698(__dst);
}

void sub_21453DFFC(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (![a1 hasSample])
  {
    v44 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    goto LABEL_6;
  }

  memcpy(__dst, v2, sizeof(__dst));
  v6 = [a1 sample];
  if (!v6)
  {
    __break(1u);
    return;
  }

  v7 = v6;
  sub_2144CE058(v6, v40);

  if (!v3)
  {
    v37 = v40[1];
    v38 = v40[0];
    v35 = v40[3];
    v36 = v40[2];
    v44 = v41;
LABEL_6:
    v8 = [a1 hasCompletedDate];
    v9 = 0;
    v10 = 0;
    if (v8)
    {
      [a1 completedDate];
      v10 = v11;
    }

    v12 = [a1 hasDoubleValue];
    if (v12)
    {
      [a1 doubleValue];
      v9 = v13;
    }

    v14 = [a1 hasIntValue];
    if (v14)
    {
      v34 = [a1 intValue];
    }

    else
    {
      v34 = 0;
    }

    v15 = [a1 hasWorkoutActivityType];
    if (v15)
    {
      v33 = [a1 workoutActivityType];
    }

    else
    {
      v33 = 0;
    }

    v16 = v8 ^ 1;
    v17 = v12 ^ 1;
    v18 = v14 ^ 1;
    v19 = v15 ^ 1;
    if ([a1 hasDefinitionIdentifier] && (v20 = objc_msgSend(a1, sel_definitionIdentifier)) != 0)
    {
      v21 = v20;
      v22 = sub_2146D95B8();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    if ([a1 hasTemplateUniqueName] && (v25 = objc_msgSend(a1, sel_templateUniqueName)) != 0)
    {
      v32 = v19;
      v26 = v24;
      v27 = v22;
      v28 = v25;
      v29 = sub_2146D95B8();
      v31 = v30;

      v22 = v27;
      v24 = v26;
      v19 = v32;
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    __dst[0] = v16;
    LOBYTE(v40[0]) = v17;
    v43 = v18;
    v42 = v19;
    *a2 = v38;
    *(a2 + 16) = v37;
    *(a2 + 32) = v36;
    *(a2 + 48) = v35;
    *(a2 + 64) = v44;
    *(a2 + 72) = v10;
    *(a2 + 80) = v16;
    *(a2 + 88) = v9;
    *(a2 + 96) = v17;
    *(a2 + 104) = v34;
    *(a2 + 112) = v18;
    *(a2 + 120) = v33;
    *(a2 + 128) = v19;
    *(a2 + 136) = v22;
    *(a2 + 144) = v24;
    *(a2 + 152) = v29;
    *(a2 + 160) = v31;
  }
}

void sub_21453E2D8()
{
  if (*(v0 + 8))
  {
    __break(1u);
  }

  else if ((*v0 - 1) > 3)
  {
    sub_21404A6EC();
    swift_allocError();
    *v1 = 0xD000000000000036;
    v1[1] = 0x800000021478B020;
    v1[2] = 0x4964696C61766E69;
    v1[3] = 0xEB000000006D6574;
    v1[4] = 0xD00000000000001CLL;
    v1[5] = 0x800000021478B060;
    swift_willThrow();
  }
}

uint64_t sub_21453E39C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v46 = v2;
  v3 = type metadata accessor for WithdrawInviteRequestProtobuf(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v37 - v8;
  v38 = type metadata accessor for FinalizeHandshakeProtobuf(0);
  v10 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v39 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for InviteResponseProtobuf(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for InviteRequestProtobuf(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v45, v1, 0x679uLL);
  if (v45[1])
  {
    __break(1u);
    goto LABEL_34;
  }

  if (v45[0] <= 2)
  {
    if (v45[0] == 1)
    {
      memcpy(v43, (v1 + 16), 0x201uLL);
      if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(v43) != 1)
      {
        memcpy(v44, v45, 0x679uLL);
        memcpy(v41, v43, 0x201uLL);
        memcpy(v42, &v45[2], 0x201uLL);
        sub_21430C364(v42, v40);
        v20 = v44;
        v34 = v46;
        sub_21453EC38(v41);
        if (!v34)
        {
          sub_214543528(&qword_27C913740, type metadata accessor for InviteRequestProtobuf);
          v20 = sub_2146D8FC8();
          sub_2145435D8(v19, type metadata accessor for InviteRequestProtobuf);
        }

        sub_213FB2DF4(&v45[2], &qword_27C907A70, &qword_2146F4CB0);
        return v20;
      }

      v20 = 0x800000021478B020;
      v30 = 0x800000021479BC20;
      sub_21404A6EC();
      swift_allocError();
      *v31 = 0xD000000000000036;
      v31[1] = 0x800000021478B020;
      v32 = 0xD000000000000016;
      goto LABEL_24;
    }

    if (v45[0] == 2)
    {
      memcpy(v43, (v1 + 536), 0x231uLL);
      if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(v43) != 1)
      {
        memcpy(v44, v45, 0x679uLL);
        memcpy(v41, v43, 0x231uLL);
        memcpy(v42, &v45[67], 0x231uLL);
        sub_21430C468(v42, v40);
        v20 = v44;
        v21 = v46;
        sub_21453F140(v41);
        if (!v21)
        {
          sub_214543528(&qword_27C913728, type metadata accessor for InviteResponseProtobuf);
          v20 = sub_2146D8FC8();
          sub_2145435D8(v15, type metadata accessor for InviteResponseProtobuf);
        }

        sub_213FB2DF4(&v45[67], &qword_27C907A88, &qword_2146F4CB8);
        return v20;
      }

      goto LABEL_23;
    }

LABEL_19:
    v20 = 0x800000021478B020;
    v30 = 0x800000021479BB70;
    sub_21404A6EC();
    swift_allocError();
    *v31 = 0xD000000000000036;
    v31[1] = 0x800000021478B020;
    v32 = 0xD000000000000012;
LABEL_24:
    v31[2] = v32;
    v31[3] = v30;
    v31[4] = 0xD00000000000001CLL;
    v31[5] = 0x800000021478B060;
    swift_willThrow();
    return v20;
  }

  if (v45[0] == 3)
  {
    memcpy(v43, (v1 + 1104), 0x201uLL);
    if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(v43) != 1)
    {
      memcpy(v44, v45, 0x679uLL);
      memcpy(v41, v43, 0x201uLL);
      memcpy(v42, &v45[138], 0x201uLL);
      sub_21430C56C(v42, v40);
      v20 = v44;
      v35 = v39;
      v36 = v46;
      sub_21453F8EC(v41);
      if (!v36)
      {
        sub_214543528(&qword_27C913710, type metadata accessor for FinalizeHandshakeProtobuf);
        v20 = sub_2146D8FC8();
        sub_2145435D8(v35, type metadata accessor for FinalizeHandshakeProtobuf);
      }

      sub_213FB2DF4(&v45[138], &qword_27C907AA0, &qword_2146F4CC0);
      return v20;
    }

    goto LABEL_23;
  }

  if (v45[0] != 4)
  {
    goto LABEL_19;
  }

  v22 = v45[203];
  if (!v45[203])
  {
LABEL_23:
    v20 = 0x800000021478B020;
    v30 = 0x800000021479BB90;
    sub_21404A6EC();
    swift_allocError();
    *v31 = 0xD000000000000036;
    v31[1] = 0x800000021478B020;
    v32 = 0xD000000000000017;
    goto LABEL_24;
  }

  v23 = v45[204];
  v24 = v45[205];
  v25 = v45[206];
  v26 = LOBYTE(v45[207]);

  sub_213FDC9D0(v24, v25);
  sub_2146D8DE8();
  v27 = &v7[*(v3 + 20)];
  *v27 = 0;
  v27[1] = 0;
  if (!v25)
  {
LABEL_16:
    v38 = v23;
    LODWORD(v39) = v26;
    sub_214543570(v7, v9, type metadata accessor for WithdrawInviteRequestProtobuf);
    sub_214543528(&qword_27C9136F8, type metadata accessor for WithdrawInviteRequestProtobuf);

    v20 = v9;
    v28 = v46;
    v29 = sub_2146D8FC8();
    if (!v28)
    {
      v20 = v29;
    }

    sub_2145435D8(v9, type metadata accessor for WithdrawInviteRequestProtobuf);
    sub_214313220(v22, v38, v24, v25);
    return v20;
  }

  if (v25 != 1)
  {
    *v27 = v24;
    v27[1] = v25;
    goto LABEL_16;
  }

LABEL_34:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21453EC38(uint64_t a1)
{
  v3 = MEMORY[0x28223BE20](a1);
  v5 = v4;
  v6 = sub_2146D8E18();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v38[2] = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for ActivityDataPreviewProtobuf(0);
  v9 = *(v50 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 24);
  v57 = *(v3 + 16);
  v13 = *(v3 + 48);
  v41 = *(v3 + 40);
  v14 = *(v3 + 64);
  v42 = *(v3 + 56);
  v43 = v12;
  v45 = v14;
  v46 = v13;
  v15 = *(v3 + 96);
  v47 = *(v3 + 88);
  v48 = v15;
  v39 = *(v3 + 108);
  v44 = *(v3 + 112);
  memcpy(v55, (v3 + 120), 0x189uLL);
  memcpy(v56, v1, sizeof(v56));
  sub_2146D8DE8();
  v16 = type metadata accessor for InviteRequestProtobuf(0);
  v17 = (v5 + v16[5]);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v5 + v16[6]);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v5 + v16[7]);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v5 + v16[8]);
  *v20 = 0;
  v20[1] = 0;
  v21 = v5 + v16[9];
  *v21 = 0;
  *(v21 + 4) = 1;
  v22 = v16[10];
  v23 = *(v9 + 56);
  v40 = v5;
  v38[0] = v22;
  v38[1] = v9 + 56;
  v23(v5 + v22, 1, 1, v50);
  v24 = v43;
  if (v43)
  {
    if (v43 == 1)
    {
      goto LABEL_18;
    }

    *v17 = v57;
    v17[1] = v24;
  }

  v25 = v46;
  if (v46)
  {
    *v18 = v41;
    v18[1] = v25;
  }

  v26 = v47;
  v27 = v45;
  if (v45)
  {
    *v19 = v42;
    v19[1] = v27;
  }

  v28 = v48;
  if (!v48)
  {
    goto LABEL_11;
  }

  if (v48 == 1)
  {
LABEL_18:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  *v20 = v26;
  v20[1] = v28;
LABEL_11:
  v29 = v24;
  if ((v44 & 1) == 0)
  {
    *v21 = v39;
    *(v21 + 4) = 0;
  }

  memcpy(v54, v55, 0x189uLL);
  v30 = sub_2144D65A8(v54);
  v31 = v49;
  if (v30 == 1)
  {
    sub_213FDC9D0(v57, v29);

    return sub_213FDC9D0(v26, v28);
  }

  else
  {
    memcpy(v53, v56, sizeof(v53));
    memcpy(v52, v54, 0x189uLL);
    sub_213FDC9D0(v57, v29);

    sub_213FDC9D0(v26, v28);
    sub_213FB2E54(v55, &v51, &qword_27C909E50, &unk_2146F5B30);
    v33 = sub_21453FF78(v52);
    if (v2)
    {
      sub_2145435D8(v40, type metadata accessor for InviteRequestProtobuf);
      return sub_213FB2DF4(v55, &qword_27C909E50, &unk_2146F5B30);
    }

    else
    {
      v52[0] = v33;
      v52[1] = v34;
      memset(v53, 0, 40);
      sub_2146D8E08();
      sub_214543528(&qword_27C913758, type metadata accessor for ActivityDataPreviewProtobuf);
      v35 = v50;
      sub_2146D8FD8();
      sub_213FB2DF4(v55, &qword_27C909E50, &unk_2146F5B30);
      v36 = v40;
      v37 = v38[0];
      sub_213FB2DF4(v40 + v38[0], &qword_27C9135E8, &unk_21473F440);
      sub_214543570(v31, v36 + v37, type metadata accessor for ActivityDataPreviewProtobuf);
      return (v23)(v36 + v37, 0, 1, v35);
    }
  }
}

uint64_t sub_21453F140(uint64_t a1)
{
  v76 = v2;
  v3 = v1;
  v4 = MEMORY[0x28223BE20](a1);
  v6 = v5;
  v75 = type metadata accessor for ActivityDataPreviewProtobuf(0);
  v85 = *(v75 - 8);
  v7 = *(v85 + 64);
  MEMORY[0x28223BE20](v75);
  v68 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2146D8E18();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v57[1] = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v62 = v57 - v13;
  v14 = type metadata accessor for ShareLocationsProtobuf(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v63 = v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v4 + 24);
  v77 = *(v4 + 16);
  v72 = v18;
  v69 = *(v4 + 36);
  v73 = *(v4 + 40);
  v19 = *(v4 + 56);
  v70 = *(v4 + 48);
  v74 = v19;
  v20 = *(v4 + 112);
  *&v82[32] = *(v4 + 96);
  *&v82[48] = v20;
  *&v82[57] = *(v4 + 121);
  v21 = *(v4 + 64);
  *&v82[16] = *(v4 + 80);
  *v82 = v21;
  v22 = *(v4 + 152);
  v65 = *(v4 + 144);
  v67 = v22;
  v61 = *(v4 + 160);
  v66 = *(v4 + 164);
  memcpy(v83, (v4 + 168), 0x189uLL);
  memcpy(v84, v3, sizeof(v84));
  sub_2146D8DE8();
  v23 = type metadata accessor for InviteResponseProtobuf(0);
  v24 = (v6 + v23[5]);
  *v24 = 0;
  v24[1] = 0;
  v25 = v6 + v23[6];
  *v25 = 0;
  *(v25 + 4) = 1;
  v26 = (v6 + v23[7]);
  *v26 = 0;
  v26[1] = 0;
  v27 = *(v15 + 56);
  v58 = v23[8];
  v59 = v27;
  v64 = v14;
  v60 = v15 + 56;
  v27(v6 + v58, 1, 1, v14);
  v28 = (v6 + v23[9]);
  *v28 = 0;
  v28[1] = 0;
  v29 = v6 + v23[10];
  *v29 = 0;
  *(v29 + 4) = 1;
  v30 = v23[11];
  v31 = *(v85 + 56);
  v71 = v6;
  v57[0] = v30;
  v32 = v75;
  v85 += 56;
  v31(v6 + v30, 1, 1);
  v33 = v72;
  if (!v72)
  {
LABEL_4:
    if ((v73 & 1) == 0)
    {
      *v25 = v69;
      *(v25 + 4) = 0;
    }

    v34 = v74;
    if (v74)
    {
      *v26 = v70;
      v26[1] = v34;
    }

    v35 = v28;
    if (*v82)
    {
      v36 = v31;
      v37 = v33;
      memcpy(v80, v84, sizeof(v80));
      v81[0] = *v82;
      *&v81[3] = *&v82[24];
      *&v81[5] = *&v82[40];
      *&v81[7] = *&v82[56];
      LOBYTE(v81[9]) = v82[72];
      *&v81[1] = *&v82[8];
      sub_213FDC9D0(v77, v37);

      sub_213FB2E54(v82, v79, &qword_27C909E68, &qword_214761070);
      v38 = v76;
      v39 = sub_2144D0258(v81);
      v41 = v38;
      if (v38)
      {
        sub_2145435D8(v71, type metadata accessor for InviteResponseProtobuf);
        v44 = &qword_27C909E68;
        v45 = &qword_214761070;
        v46 = v82;
        return sub_213FB2DF4(v46, v44, v45);
      }

      v77 = v29;
      v81[0] = v39;
      v81[1] = v40;
      memset(v80, 0, 40);
      sub_2146D8E08();
      sub_214543528(&qword_27C913778, type metadata accessor for ShareLocationsProtobuf);
      v43 = v63;
      v42 = v64;
      sub_2146D8FD8();
      v47 = v32;
      sub_213FB2DF4(v82, &qword_27C909E68, &qword_214761070);
      v53 = v71;
      v54 = v58;
      sub_213FB2DF4(v71 + v58, &qword_27C913670, "8\t\t");
      sub_214543570(v43, v53 + v54, type metadata accessor for ShareLocationsProtobuf);
      v59(v53 + v54, 0, 1, v42);
      v31 = v36;
      v29 = v77;
      v48 = v67;
      v49 = v68;
      if (!v67)
      {
LABEL_14:
        if ((v66 & 1) == 0)
        {
          *v29 = v61;
          *(v29 + 4) = 0;
        }

        memcpy(v81, v83, 0x189uLL);
        if (sub_2144D65A8(v81) == 1)
        {
        }

        memcpy(v80, v84, sizeof(v80));
        memcpy(v79, v81, 0x189uLL);

        sub_213FB2E54(v83, &v78, &qword_27C909E50, &unk_2146F5B30);
        v51 = sub_21453FF78(v79);
        if (!v41)
        {
          v79[0] = v51;
          v79[1] = v52;
          memset(v80, 0, 40);
          sub_2146D8E08();
          sub_214543528(&qword_27C913758, type metadata accessor for ActivityDataPreviewProtobuf);
          sub_2146D8FD8();
          sub_213FB2DF4(v83, &qword_27C909E50, &unk_2146F5B30);
          v55 = v71;
          v56 = v57[0];
          sub_213FB2DF4(v71 + v57[0], &qword_27C9135E8, &unk_21473F440);
          sub_214543570(v49, v55 + v56, type metadata accessor for ActivityDataPreviewProtobuf);
          return (v31)(v55 + v56, 0, 1, v47);
        }

        sub_2145435D8(v71, type metadata accessor for InviteResponseProtobuf);
        v44 = &qword_27C909E50;
        v45 = &unk_2146F5B30;
        v46 = v83;
        return sub_213FB2DF4(v46, v44, v45);
      }
    }

    else
    {
      sub_213FDC9D0(v77, v33);

      v41 = v76;
      v47 = v32;
      v48 = v67;
      v49 = v68;
      if (!v67)
      {
        goto LABEL_14;
      }
    }

    *v35 = v65;
    v35[1] = v48;
    goto LABEL_14;
  }

  if (v72 != 1)
  {
    *v24 = v77;
    v24[1] = v33;
    goto LABEL_4;
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21453F8EC(uint64_t a1)
{
  v55 = v2;
  v3 = MEMORY[0x28223BE20](a1);
  v5 = v4;
  v65 = type metadata accessor for ActivityDataPreviewProtobuf(0);
  v6 = *(v65 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v65);
  v53 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2146D8E18();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v47 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v50 = &v47 - v13;
  v14 = type metadata accessor for ShareLocationsProtobuf(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v51 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + 24);
  v56 = *(v3 + 16);
  v19 = *(v3 + 56);
  v20 = *(v3 + 88);
  *&v62[32] = *(v3 + 72);
  *&v62[48] = v20;
  *&v62[57] = *(v3 + 97);
  v21 = *(v3 + 40);
  *&v62[16] = v19;
  *v62 = v21;
  memcpy(v63, (v3 + 120), 0x189uLL);
  memcpy(v64, v1, sizeof(v64));
  sub_2146D8DE8();
  v22 = type metadata accessor for FinalizeHandshakeProtobuf(0);
  v23 = (v5 + v22[5]);
  *v23 = 0;
  v23[1] = 0;
  v24 = v22[6];
  v25 = *(v15 + 56);
  v52 = v14;
  v48 = v25;
  v49 = v15 + 56;
  v25(v5 + v24, 1, 1, v14);
  v26 = v22[7];
  v27 = *(v6 + 56);
  v54 = v5;
  v28 = v5 + v26;
  v29 = v27;
  v27(v28, 1, 1, v65);
  if (v18)
  {
    if (v18 == 1)
    {
      result = sub_2146DA018();
      __break(1u);
      return result;
    }

    *v23 = v56;
    v23[1] = v18;
  }

  v30 = v26;
  if (*v62)
  {
    memcpy(v59, v64, sizeof(v59));
    v61[0] = *v62;
    *&v61[3] = *&v62[24];
    *&v61[5] = *&v62[40];
    *&v61[7] = *&v62[56];
    LOBYTE(v61[9]) = v62[72];
    *&v61[1] = *&v62[8];
    sub_213FDC9D0(v56, v18);
    sub_213FB2E54(v62, v60, &qword_27C909E68, &qword_214761070);
    v31 = v55;
    v32 = sub_2144D0258(v61);
    v34 = v31;
    if (v31)
    {
      sub_2145435D8(v54, type metadata accessor for FinalizeHandshakeProtobuf);
      v37 = &qword_27C909E68;
      v38 = &qword_214761070;
      v39 = v62;
      return sub_213FB2DF4(v39, v37, v38);
    }

    v61[0] = v32;
    v61[1] = v33;
    memset(v59, 0, 40);
    sub_2146D8E08();
    sub_214543528(&qword_27C913778, type metadata accessor for ShareLocationsProtobuf);
    v36 = v51;
    v35 = v52;
    sub_2146D8FD8();
    sub_213FB2DF4(v62, &qword_27C909E68, &qword_214761070);
    v45 = v54;
    sub_213FB2DF4(v54 + v24, &qword_27C913670, "8\t\t");
    sub_214543570(v36, v45 + v24, type metadata accessor for ShareLocationsProtobuf);
    v48(v45 + v24, 0, 1, v35);
  }

  else
  {

    v34 = v55;
  }

  memcpy(v61, v63, 0x189uLL);
  result = sub_2144D65A8(v61);
  v41 = v65;
  v42 = v53;
  if (result == 1)
  {
    return result;
  }

  memcpy(v59, v64, sizeof(v59));
  memcpy(v58, v61, 0x189uLL);
  memcpy(v60, v63, 0x189uLL);
  sub_2144D68A8(v60, &v57);
  v43 = sub_21453FF78(v58);
  if (!v34)
  {
    v58[0] = v43;
    v58[1] = v44;
    memset(v59, 0, 40);
    sub_2146D8E08();
    sub_214543528(&qword_27C913758, type metadata accessor for ActivityDataPreviewProtobuf);
    sub_2146D8FD8();
    sub_213FB2DF4(v63, &qword_27C909E50, &unk_2146F5B30);
    v46 = v54;
    sub_213FB2DF4(v54 + v30, &qword_27C9135E8, &unk_21473F440);
    sub_214543570(v42, v46 + v30, type metadata accessor for ActivityDataPreviewProtobuf);
    return v29(v46 + v30, 0, 1, v41);
  }

  sub_2145435D8(v54, type metadata accessor for FinalizeHandshakeProtobuf);
  v37 = &qword_27C909E50;
  v38 = &unk_2146F5B30;
  v39 = v63;
  return sub_213FB2DF4(v39, v37, v38);
}

unint64_t *sub_21453FF78(uint64_t a1)
{
  v3 = v1;
  v4 = MEMORY[0x28223BE20](a1);
  memcpy(__dst, v4, 0x169uLL);
  v5 = *(v4 + 368);
  v6 = *(v4 + 376);
  v7 = *(v4 + 384);
  v8 = *(v4 + 392);
  memcpy(v54, v3, sizeof(v54));
  v9 = [objc_allocWithZone(_BlastDoorASCodableActivityDataPreview) init];
  if (!v9)
  {
    v11 = 0x800000021478B020;
    sub_21404A6EC();
    swift_allocError();
    *v13 = 0xD000000000000036;
    v13[1] = 0x800000021478B020;
    v13[2] = 0x5064696C61766E69;
    v13[3] = 0xEF6675626F746F72;
    v13[4] = 0xD00000000000001CLL;
    v13[5] = 0x800000021478B060;
    swift_willThrow();
    return v11;
  }

  v10 = v9;
  memcpy(__src, v4, 0x169uLL);
  if (sub_2144D6590(__src) != 1)
  {
    memcpy(v50, v3, 0x679uLL);
    memcpy(v48, __src, 0x169uLL);
    memcpy(v49, __dst, 0x169uLL);
    sub_21430B564(v49, v47);
    v11 = v50;
    v12 = sub_214540534(v48);
    if (v2)
    {

      sub_213FB2DF4(__dst, &qword_27C909F60, &qword_2146F5B98);
      return v11;
    }

    v14 = v12;
    [v10 setActivitySnapshot_];

    sub_213FB2DF4(__dst, &qword_27C909F60, &qword_2146F5B98);
  }

  v15 = *(v5 + 16);
  v16 = MEMORY[0x277D84F90];
  v46 = v8;
  if (v15)
  {
    v45 = v10;
    v51 = MEMORY[0x277D84F90];
    v11 = &v51;
    sub_2146D9FB8();
    if (*(v5 + 16))
    {
      v17 = 0;
      v18 = (v5 + 32);
      while (1)
      {
        memcpy(v49, v18, 0x121uLL);
        memcpy(v50, v3, 0x679uLL);
        memcpy(v48, v18, 0x121uLL);
        sub_21430B818(v49, v47);
        v11 = v50;
        sub_214540AA0(v48);
        if (v2)
        {
          break;
        }

        sub_21430B698(v49);
        sub_2146D9F98();
        v19 = *(v51 + 16);
        sub_2146D9FC8();
        sub_2146D9FD8();
        v11 = &v51;
        sub_2146D9FA8();
        if (v15 - 1 == v17)
        {
          sub_214429790(v51);

          v20 = objc_allocWithZone(MEMORY[0x277CBEB18]);
          v21 = sub_2146D98E8();

          v22 = [v20 initWithArray_];

          v10 = v45;
          [v45 setWorkouts_];

          v8 = v46;
          v16 = MEMORY[0x277D84F90];
          goto LABEL_16;
        }

        v18 += 296;
        if (++v17 >= *(v5 + 16))
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      __break(1u);
    }

    sub_21430B698(v49);
    goto LABEL_24;
  }

LABEL_16:
  v23 = *(v6 + 16);
  if (v23)
  {
    v51 = v16;
    v11 = &v51;
    sub_2146D9FB8();
    if (*(v6 + 16))
    {
      v24 = 0;
      v25 = v6 + 32;
      while (1)
      {
        v26 = *v25;
        v27 = *(v25 + 32);
        v49[1] = *(v25 + 16);
        v49[2] = v27;
        v49[0] = v26;
        v28 = *(v25 + 48);
        v29 = *(v25 + 64);
        v30 = *(v25 + 96);
        v49[5] = *(v25 + 80);
        v49[6] = v30;
        v49[3] = v28;
        v49[4] = v29;
        v31 = *(v25 + 112);
        v32 = *(v25 + 128);
        v33 = *(v25 + 144);
        *&v49[10] = *(v25 + 160);
        v49[8] = v32;
        v49[9] = v33;
        v49[7] = v31;
        memcpy(v50, v54, 0x679uLL);
        v34 = *(v25 + 144);
        v48[8] = *(v25 + 128);
        v48[9] = v34;
        *&v48[10] = *(v25 + 160);
        v35 = *(v25 + 80);
        v48[4] = *(v25 + 64);
        v48[5] = v35;
        v36 = *(v25 + 112);
        v48[6] = *(v25 + 96);
        v48[7] = v36;
        v37 = *(v25 + 16);
        v48[0] = *v25;
        v48[1] = v37;
        v38 = *(v25 + 48);
        v48[2] = *(v25 + 32);
        v48[3] = v38;
        sub_2143DA3B8(v49, v47);
        v11 = v50;
        sub_214541094(v48);
        if (v2)
        {
          break;
        }

        sub_2143DA414(v49);
        sub_2146D9F98();
        v39 = *(v51 + 16);
        sub_2146D9FC8();
        sub_2146D9FD8();
        v11 = &v51;
        sub_2146D9FA8();
        if (v23 - 1 == v24)
        {
          sub_2144297A4(v51);

          v41 = objc_allocWithZone(MEMORY[0x277CBEB18]);
          v42 = sub_2146D98E8();

          v43 = [v41 initWithArray_];

          [v10 setAchievements_];
          v8 = v46;
          goto LABEL_27;
        }

        v25 += 168;
        if (++v24 >= *(v6 + 16))
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      __break(1u);
    }

    sub_2143DA414(v49);
LABEL_24:

    return v11;
  }

LABEL_27:
  if ((v8 & 1) == 0)
  {
    [v10 setDate_];
  }

  result = [v10 data];
  if (result)
  {
    v44 = result;
    v11 = sub_2146D8A58();

    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_214540534(__int128 *a1)
{
  v3 = v1;
  v5 = a1[3];
  v56[2] = a1[2];
  v56[3] = v5;
  v57 = *(a1 + 64);
  v6 = a1[1];
  v56[0] = *a1;
  v56[1] = v6;
  v7 = *(a1 + 12);
  v30 = *(a1 + 11);
  v31 = *(a1 + 16);
  v37 = *(a1 + 137);
  v38 = *(a1 + 136);
  v32 = *(a1 + 18);
  v8 = *(a1 + 20);
  v39 = *(a1 + 152);
  v40 = *(a1 + 168);
  v9 = *(a1 + 22);
  v10 = *(a1 + 24);
  v41 = *(a1 + 184);
  v42 = *(a1 + 200);
  v11 = *(a1 + 26);
  v12 = *(a1 + 28);
  v43 = *(a1 + 216);
  v44 = *(a1 + 232);
  v13 = *(a1 + 30);
  v14 = *(a1 + 32);
  v45 = *(a1 + 248);
  v46 = *(a1 + 264);
  v15 = *(a1 + 34);
  v47 = *(a1 + 280);
  v33 = *(a1 + 36);
  v58 = *(a1 + 296);
  v34 = *(a1 + 38);
  v59 = *(a1 + 312);
  v16 = *(a1 + 328);
  v35 = *(a1 + 40);
  v36 = *(a1 + 42);
  v17 = *(a1 + 344);
  v18 = *(a1 + 44);
  v19 = *(a1 + 360);
  v20 = [objc_allocWithZone(_BlastDoorASCodableActivitySnapshot) init];
  if (!v20)
  {
    sub_21404A6EC();
    swift_allocError();
    *v26 = 0xD000000000000036;
    v26[1] = 0x800000021478B020;
    v26[2] = 0x5064696C61766E69;
    v26[3] = 0xEF6675626F746F72;
    v26[4] = 0xD00000000000001CLL;
    v26[5] = 0x800000021478B060;
    swift_willThrow();
    return v20;
  }

  if (*&v56[0])
  {
    memcpy(__dst, v3, sizeof(__dst));
    v49 = *&v56[0];
    v21 = *(a1 + 24);
    v50 = *(a1 + 8);
    v51 = v21;
    v52[0] = *(a1 + 40);
    *(v52 + 9) = *(a1 + 49);
    v22 = a1[1];
    v23 = a1[3];
    v54[2] = a1[2];
    v54[3] = v23;
    v55 = *(a1 + 64);
    v24 = *a1;
    v54[1] = v22;
    v54[0] = v24;
    sub_21430BA48(v54, v48);
    v25 = sub_2144D13E4(&v49);
    if (v2)
    {

      sub_213FB2DF4(v56, &qword_27C90A020, &qword_2146F5BE0);
      return v20;
    }

    v27 = v25;
    [v20 setSample_];

    sub_213FB2DF4(v56, &qword_27C90A020, &qword_2146F5BE0);
  }

  if (v7 >> 60 != 11)
  {
    if (v7 >> 60 != 15)
    {
      sub_213FDCA18(v30, v7);
      v28 = sub_2146D8A38();
      [v20 setSourceUUID_];

      sub_214032564(v30, v7);
    }

    if ((v37 & 1) == 0)
    {
      if (v38)
      {
        if (v39)
        {
          goto LABEL_13;
        }
      }

      else
      {
        [v20 setSnapshotIndex_];
        if (v39)
        {
LABEL_13:
          if (v40)
          {
            goto LABEL_14;
          }

          goto LABEL_30;
        }
      }

      [v20 setTimeZoneOffsetFromUTCForNoon_];
      if (v40)
      {
LABEL_14:
        if (v41)
        {
          goto LABEL_15;
        }

        goto LABEL_31;
      }

LABEL_30:
      [v20 setEnergyBurned_];
      if (v41)
      {
LABEL_15:
        if (v42)
        {
          goto LABEL_16;
        }

        goto LABEL_32;
      }

LABEL_31:
      [v20 setEnergyBurnedGoal_];
      if (v42)
      {
LABEL_16:
        if (v43)
        {
          goto LABEL_17;
        }

        goto LABEL_33;
      }

LABEL_32:
      [v20 setBriskMinutes_];
      if (v43)
      {
LABEL_17:
        if (v44)
        {
          goto LABEL_18;
        }

        goto LABEL_34;
      }

LABEL_33:
      [v20 setBriskMinutesGoal_];
      if (v44)
      {
LABEL_18:
        if (v45)
        {
          goto LABEL_19;
        }

        goto LABEL_35;
      }

LABEL_34:
      [v20 setActiveHours_];
      if (v45)
      {
LABEL_19:
        if (v46)
        {
          goto LABEL_20;
        }

        goto LABEL_36;
      }

LABEL_35:
      [v20 setActiveHoursGoal_];
      if (v46)
      {
LABEL_20:
        if (v47)
        {
          goto LABEL_21;
        }

        goto LABEL_37;
      }

LABEL_36:
      [v20 setWalkingAndRunningDistance_];
      if (v47)
      {
LABEL_21:
        if (v58)
        {
          goto LABEL_22;
        }

        goto LABEL_38;
      }

LABEL_37:
      [v20 setStepCount_];
      if (v58)
      {
LABEL_22:
        if (v59)
        {
          goto LABEL_23;
        }

        goto LABEL_39;
      }

LABEL_38:
      [v20 setPushCount_];
      if (v59)
      {
LABEL_23:
        if (v16)
        {
          goto LABEL_24;
        }

        goto LABEL_40;
      }

LABEL_39:
      [v20 setWheelchairUse_];
      if (v16)
      {
LABEL_24:
        if (v17)
        {
          goto LABEL_25;
        }

        goto LABEL_41;
      }

LABEL_40:
      [v20 setMmv_];
      if (v17)
      {
LABEL_25:
        if (v19)
        {
          return v20;
        }

LABEL_26:
        [v20 setAmm_];
        return v20;
      }

LABEL_41:
      [v20 setMmg_];
      if (v19)
      {
        return v20;
      }

      goto LABEL_26;
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214540AA0(__int128 *a1)
{
  v3 = v1;
  v5 = a1[3];
  v60[2] = a1[2];
  v60[3] = v5;
  v61 = *(a1 + 64);
  v6 = a1[1];
  v60[0] = *a1;
  v60[1] = v6;
  v39 = *(a1 + 97);
  v40 = *(a1 + 96);
  v7 = *(a1 + 13);
  v8 = *(a1 + 15);
  v41 = *(a1 + 112);
  v42 = *(a1 + 128);
  v9 = *(a1 + 17);
  v10 = *(a1 + 19);
  v43 = *(a1 + 144);
  v44 = *(a1 + 160);
  v34 = *(a1 + 11);
  v35 = *(a1 + 21);
  v11 = *(a1 + 23);
  v45 = *(a1 + 176);
  v46 = *(a1 + 192);
  v50 = *(a1 + 26);
  v51 = *(a1 + 216);
  v49 = *(a1 + 217);
  v36 = *(a1 + 25);
  v37 = *(a1 + 28);
  v38 = *(a1 + 30);
  v47 = *(a1 + 29);
  v48 = *(a1 + 31);
  v12 = *(a1 + 32);
  v13 = *(a1 + 264);
  v14 = *(a1 + 34);
  v15 = *(a1 + 35);
  v16 = *(a1 + 288);
  v17 = [objc_allocWithZone(_BlastDoorASCodableWorkout) init];
  if (!v17)
  {
    sub_21404A6EC();
    swift_allocError();
    *v23 = 0xD000000000000036;
    v23[1] = 0x800000021478B020;
    v23[2] = 0x5064696C61766E69;
    v23[3] = 0xEF6675626F746F72;
    v23[4] = 0xD00000000000001CLL;
    v23[5] = 0x800000021478B060;
    swift_willThrow();
    return v17;
  }

  if (*&v60[0])
  {
    memcpy(__dst, v3, sizeof(__dst));
    v53 = *&v60[0];
    v18 = *(a1 + 24);
    v54 = *(a1 + 8);
    v55 = v18;
    v56[0] = *(a1 + 40);
    *(v56 + 9) = *(a1 + 49);
    v19 = a1[1];
    v20 = a1[3];
    v58[2] = a1[2];
    v58[3] = v20;
    v59 = *(a1 + 64);
    v21 = *a1;
    v58[1] = v19;
    v58[0] = v21;
    sub_21430BA48(v58, v52);
    v22 = sub_2144D13E4(&v53);
    if (v2)
    {

      sub_213FB2DF4(v60, &qword_27C90A020, &qword_2146F5BE0);
      return v17;
    }

    v24 = v22;
    [v17 setSample_];

    sub_213FB2DF4(v60, &qword_27C90A020, &qword_2146F5BE0);
  }

  v25 = v49;
  v26 = v51;
  v27 = v50;
  if ((v39 & 1) == 0)
  {
    if (v40)
    {
      if (v41)
      {
        goto LABEL_11;
      }
    }

    else
    {
      [v17 setType_];
      v27 = v50;
      v26 = v51;
      if (v41)
      {
LABEL_11:
        if (v42)
        {
          goto LABEL_12;
        }

        goto LABEL_32;
      }
    }

    [v17 setDuration_];
    v27 = v50;
    v26 = v51;
    if (v42)
    {
LABEL_12:
      if (v43)
      {
        goto LABEL_13;
      }

      goto LABEL_33;
    }

LABEL_32:
    [v17 setTotalEnergyBurnedInCanonicalUnit_];
    v27 = v50;
    v26 = v51;
    if (v43)
    {
LABEL_13:
      if (v44)
      {
        goto LABEL_14;
      }

      goto LABEL_34;
    }

LABEL_33:
    [v17 setTotalBasalEnergyBurnedInCanonicalUnit_];
    v27 = v50;
    v26 = v51;
    if (v44)
    {
LABEL_14:
      if (v45)
      {
        goto LABEL_15;
      }

      goto LABEL_35;
    }

LABEL_34:
    [v17 setTotalDistanceInCanonicalUnit_];
    v27 = v50;
    v26 = v51;
    if (v45)
    {
LABEL_15:
      if (v46)
      {
        goto LABEL_16;
      }

      goto LABEL_36;
    }

LABEL_35:
    [v17 setGoalType_];
    v27 = v50;
    v26 = v51;
    if (v46)
    {
LABEL_16:
      if (!v27)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

LABEL_36:
    [v17 setGoalInCanonicalUnit_];
    v26 = v51;
    if (!v50)
    {
LABEL_18:
      if (v26 == 2)
      {
        if (v25 == 2)
        {
          goto LABEL_20;
        }
      }

      else
      {
        [v17 setIsWatchWorkout_];
        if (v25 == 2)
        {
LABEL_20:
          if (!v47)
          {
LABEL_22:
            if (v48)
            {
              v30 = sub_2146D9588();
              [v17 setDeviceModel_];
            }

            if ((v13 & 1) == 0)
            {
              [v17 setAmm_];
            }

            if (v15)
            {
              v31 = sub_2146D9588();
              [v17 setSeymourCatalogWorkoutIdentifier_];
            }

            if (v16 < 4)
            {
              v32 = sub_2146D9588();

              [v17 setSeymourMediaType_];
            }

            return v17;
          }

LABEL_21:
          v29 = sub_2146D9588();
          [v17 setDeviceManufacturer_];

          goto LABEL_22;
        }
      }

      [v17 setIsIndoorWorkout_];
      if (!v47)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

LABEL_17:
    v28 = sub_2146D9588();
    [v17 setBundleID_];

    v26 = v51;
    v25 = v49;
    goto LABEL_18;
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

id sub_214541094(uint64_t a1)
{
  v3 = v1;
  v5 = *(a1 + 48);
  v36[2] = *(a1 + 32);
  v36[3] = v5;
  v37 = *(a1 + 64);
  v6 = *(a1 + 16);
  v36[0] = *a1;
  v36[1] = v6;
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  v27 = *(a1 + 96);
  v25 = *(a1 + 104);
  v38 = *(a1 + 112);
  v26 = *(a1 + 120);
  v39 = *(a1 + 128);
  v11 = *(a1 + 136);
  v10 = *(a1 + 144);
  v12 = *(a1 + 152);
  v13 = *(a1 + 160);
  v14 = [objc_allocWithZone(_BlastDoorASCodableAchievement) init];
  if (!v14)
  {
    sub_21404A6EC();
    swift_allocError();
    *v19 = 0xD000000000000036;
    v19[1] = 0x800000021478B020;
    v19[2] = 0x5064696C61766E69;
    v19[3] = 0xEF6675626F746F72;
    v19[4] = 0xD00000000000001CLL;
    v19[5] = 0x800000021478B060;
    swift_willThrow();
    return v14;
  }

  v24 = v10;
  if (*&v36[0])
  {
    memcpy(__dst, v3, sizeof(__dst));
    v29 = *&v36[0];
    v15 = *(a1 + 24);
    v30 = *(a1 + 8);
    v31 = v15;
    v32[0] = *(a1 + 40);
    *(v32 + 9) = *(a1 + 49);
    v16 = *(a1 + 16);
    v17 = *(a1 + 48);
    v34[2] = *(a1 + 32);
    v34[3] = v17;
    v35 = *(a1 + 64);
    v34[0] = *a1;
    v34[1] = v16;
    sub_21430BA48(v34, v28);
    v18 = sub_2144D13E4(&v29);
    if (v2)
    {

      sub_213FB2DF4(v36, &qword_27C90A020, &qword_2146F5BE0);
      return v14;
    }

    v20 = v18;
    [v14 setSample_];

    sub_213FB2DF4(v36, &qword_27C90A020, &qword_2146F5BE0);
  }

  if (v8)
  {
    if (v27)
    {
      goto LABEL_9;
    }
  }

  else
  {
    [v14 setCompletedDate_];
    if (v27)
    {
LABEL_9:
      if (v38)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }
  }

  [v14 setDoubleValue_];
  if (v38)
  {
LABEL_10:
    if (v39)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v14 setIntValue_];
  if (v39)
  {
LABEL_11:
    if (!v10)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_19:
  [v14 setWorkoutActivityType_];
  if (v10)
  {
LABEL_12:
    v21 = sub_2146D9588();
    [v14 setDefinitionIdentifier_];
  }

LABEL_13:
  if (v13)
  {
    v22 = sub_2146D9588();
    [v14 setTemplateUniqueName_];
  }

  return v14;
}

uint64_t sub_2145413D0(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v19 = *(v1 + 56);
  v23 = *(v1 + 64);
  v17 = *(v1 + 108);
  v21 = *(v1 + 112);
  memcpy(__dst, (v1 + 120), 0x189uLL);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v12 = *(v3 + 40);
  v11 = *(v3 + 48);
  v18 = *(v3 + 56);
  v22 = *(v3 + 64);
  v16 = *(v3 + 108);
  v20 = *(v3 + 112);
  memcpy(v33, (v3 + 120), 0x189uLL);
  if (v6 != 1 && v10 != 1)
  {
    if (v6)
    {
      if (!v10 || (v5 != v9 || v6 != v10) && (sub_2146DA6A8() & 1) == 0)
      {
        goto LABEL_26;
      }

      if (v8)
      {
LABEL_9:
        if (!v11 || (v7 != v12 || v8 != v11) && (sub_2146DA6A8() & 1) == 0)
        {
          goto LABEL_26;
        }

LABEL_17:
        if (v23)
        {
          if (!v22 || (v19 != v18 || v23 != v22) && (sub_2146DA6A8() & 1) == 0)
          {
            goto LABEL_26;
          }

LABEL_24:
          if (v21)
          {
            if (!v20)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v15 = v20;
            if (v17 != v16)
            {
              v15 = 1;
            }

            if (v15)
            {
              goto LABEL_26;
            }
          }

          memcpy(__src, (v4 + 120), 0x189uLL);
          memcpy(&__src[400], (v3 + 120), 0x189uLL);
          memcpy(v31, (v4 + 120), 0x189uLL);
          if (sub_2144D65A8(v31) == 1)
          {
            memcpy(v28, (v3 + 120), 0x189uLL);
            if (sub_2144D65A8(v28) == 1)
            {
              memcpy(v29, (v4 + 120), 0x189uLL);
              sub_213FB2E54(__dst, v27, &qword_27C909E50, &unk_2146F5B30);
              sub_213FB2E54(v33, v27, &qword_27C909E50, &unk_2146F5B30);
              sub_213FB2DF4(v29, &qword_27C909E50, &unk_2146F5B30);
              v13 = 1;
              return v13 & 1;
            }

            sub_213FB2E54(__dst, v29, &qword_27C909E50, &unk_2146F5B30);
            sub_213FB2E54(v33, v29, &qword_27C909E50, &unk_2146F5B30);
          }

          else
          {
            memcpy(v29, (v4 + 120), 0x189uLL);
            memcpy(v27, (v4 + 120), 0x189uLL);
            memcpy(v28, (v3 + 120), 0x189uLL);
            if (sub_2144D65A8(v28) != 1)
            {
              memcpy(v26, (v3 + 120), 0x189uLL);
              sub_213FB2E54(__dst, v25, &qword_27C909E50, &unk_2146F5B30);
              sub_213FB2E54(v33, v25, &qword_27C909E50, &unk_2146F5B30);
              sub_213FB2E54(v29, v25, &qword_27C909E50, &unk_2146F5B30);
              v13 = sub_2144D2ECC(v27);
              memcpy(v24, v26, 0x189uLL);
              sub_2144D65C0(v24);
              memcpy(v25, v27, 0x189uLL);
              sub_2144D65C0(v25);
              memcpy(v26, (v4 + 120), 0x189uLL);
              sub_213FB2DF4(v26, &qword_27C909E50, &unk_2146F5B30);
              return v13 & 1;
            }

            memcpy(v26, (v4 + 120), 0x189uLL);
            sub_213FB2E54(__dst, v25, &qword_27C909E50, &unk_2146F5B30);
            sub_213FB2E54(v33, v25, &qword_27C909E50, &unk_2146F5B30);
            sub_213FB2E54(v29, v25, &qword_27C909E50, &unk_2146F5B30);
            sub_2144D65C0(v26);
          }

          memcpy(v28, __src, 0x319uLL);
          sub_213FB2DF4(v28, &qword_27C914928, &unk_214755D80);
          v13 = 0;
          return v13 & 1;
        }

        if (!v22)
        {
          goto LABEL_24;
        }

LABEL_26:
        v13 = 0;
        return v13 & 1;
      }
    }

    else
    {
      if (v10)
      {
        goto LABEL_26;
      }

      sub_213FDC9D0(v9, 0);
      sub_213FDC9D0(v5, 0);
      if (v8)
      {
        goto LABEL_9;
      }
    }

    if (v11)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21454188C(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v37 = *(v1 + 36);
  v7 = *(v1 + 40);
  v36 = *(v1 + 48);
  v38 = *(v1 + 56);
  v8 = *(v1 + 112);
  v47[2] = *(v1 + 96);
  v48[0] = v8;
  *(v48 + 9) = *(v1 + 121);
  v9 = *(v1 + 64);
  v47[1] = *(v1 + 80);
  v47[0] = v9;
  v30 = *(v1 + 144);
  v34 = *(v1 + 152);
  v28 = *(v1 + 160);
  v32 = *(v1 + 164);
  memcpy(v49, (v1 + 168), 0x189uLL);
  v11 = *(v3 + 16);
  v10 = *(v3 + 24);
  v12 = *(v3 + 36);
  v13 = *(v3 + 40);
  v14 = *(v3 + 56);
  v35 = *(v3 + 48);
  v15 = *(v3 + 112);
  v50[2] = *(v3 + 96);
  v51[0] = v15;
  *(v51 + 9) = *(v3 + 121);
  v16 = *(v3 + 64);
  v50[1] = *(v3 + 80);
  v50[0] = v16;
  v29 = *(v3 + 144);
  v33 = *(v3 + 152);
  v27 = *(v3 + 160);
  v31 = *(v3 + 164);
  memcpy(v52, (v3 + 168), 0x189uLL);
  if (v6 != 1 && v10 != 1)
  {
    if (v6)
    {
      if (!v10 || (v5 != v11 || v6 != v10) && (sub_2146DA6A8() & 1) == 0)
      {
        goto LABEL_33;
      }

      if (v7)
      {
LABEL_9:
        if (!v13)
        {
          goto LABEL_33;
        }

LABEL_17:
        if (v38)
        {
          if (!v14 || (v36 != v35 || v38 != v14) && (sub_2146DA6A8() & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        else if (v14)
        {
          goto LABEL_33;
        }

        v18 = *&v47[0];
        v19 = *&v50[0];
        if (*&v47[0])
        {
          *&__dst[0] = *&v47[0];
          *(__dst + 8) = *(v4 + 72);
          *(&__dst[1] + 8) = *(v4 + 88);
          *(&__dst[2] + 8) = *(v4 + 104);
          *(&__dst[3] + 8) = *(v4 + 120);
          BYTE8(__dst[4]) = *(v4 + 136);
          v43[2] = __dst[2];
          v43[3] = __dst[3];
          *(&v43[3] + 9) = *(&__dst[3] + 9);
          v43[1] = __dst[1];
          v43[0] = __dst[0];
          if (*&v50[0])
          {
            *(&v46[1] + 8) = *(v3 + 88);
            *(&v46[2] + 8) = *(v3 + 104);
            *(&v46[3] + 8) = *(v3 + 120);
            BYTE8(v46[4]) = *(v3 + 136);
            *(v46 + 8) = *(v3 + 72);
            *&v46[0] = *&v50[0];
            v20 = sub_2144D3210(v43, v46);
            v42[2] = v46[2];
            v42[3] = v46[3];
            *(&v42[3] + 9) = *(&v46[3] + 9);
            v42[1] = v46[1];
            v42[0] = v46[0];
            sub_213FB2E54(v47, v44, &qword_27C909E68, &qword_214761070);
            sub_213FB2E54(v50, v44, &qword_27C909E68, &qword_214761070);
            sub_213FB2E54(__dst, v44, &qword_27C909E68, &qword_214761070);
            sub_21430B28C(v42);
            v44[2] = v43[2];
            v44[3] = v43[3];
            *(&v44[3] + 9) = *(&v43[3] + 9);
            v44[1] = v43[1];
            v44[0] = v43[0];
            sub_21430B28C(v44);
            *&v46[0] = v18;
            *(&v46[1] + 8) = *(v4 + 88);
            *(&v46[2] + 8) = *(v4 + 104);
            *(&v46[3] + 8) = *(v4 + 120);
            BYTE8(v46[4]) = *(v4 + 136);
            *(v46 + 8) = *(v4 + 72);
            sub_213FB2DF4(v46, &qword_27C909E68, &qword_214761070);
            if (v20)
            {
              goto LABEL_36;
            }

LABEL_33:
            v24 = 0;
            return v24 & 1;
          }

          v46[2] = __dst[2];
          v46[3] = __dst[3];
          *(&v46[3] + 9) = *(&__dst[3] + 9);
          v46[1] = __dst[1];
          v46[0] = __dst[0];
          sub_213FB2E54(v47, v44, &qword_27C909E68, &qword_214761070);
          sub_213FB2E54(v50, v44, &qword_27C909E68, &qword_214761070);
          sub_213FB2E54(__dst, v44, &qword_27C909E68, &qword_214761070);
          sub_21430B28C(v46);
        }

        else
        {
          if (!*&v50[0])
          {
            *&__dst[0] = 0;
            *(&__dst[1] + 8) = *(v4 + 88);
            *(&__dst[2] + 8) = *(v4 + 104);
            *(&__dst[3] + 8) = *(v4 + 120);
            BYTE8(__dst[4]) = *(v4 + 136);
            *(__dst + 8) = *(v4 + 72);
            sub_213FB2E54(v47, v43, &qword_27C909E68, &qword_214761070);
            sub_213FB2E54(v50, v43, &qword_27C909E68, &qword_214761070);
            sub_213FB2DF4(__dst, &qword_27C909E68, &qword_214761070);
LABEL_36:
            if (v34)
            {
              if (!v33 || (v30 != v29 || v34 != v33) && (sub_2146DA6A8() & 1) == 0)
              {
                goto LABEL_33;
              }
            }

            else if (v33)
            {
              goto LABEL_33;
            }

            if (v32)
            {
              if (!v31)
              {
                goto LABEL_33;
              }
            }

            else
            {
              v26 = v31;
              if (v28 != v27)
              {
                v26 = 1;
              }

              if (v26)
              {
                goto LABEL_33;
              }
            }

            memcpy(__dst, v49, 0x189uLL);
            memcpy(&__dst[25], v52, 0x189uLL);
            memcpy(v46, v49, 0x189uLL);
            if (sub_2144D65A8(v46) == 1)
            {
              memcpy(v43, &__dst[25], 0x189uLL);
              if (sub_2144D65A8(v43) == 1)
              {
                memcpy(v44, __dst, 0x189uLL);
                sub_213FB2E54(v49, v42, &qword_27C909E50, &unk_2146F5B30);
                sub_213FB2E54(v52, v42, &qword_27C909E50, &unk_2146F5B30);
                sub_213FB2DF4(v44, &qword_27C909E50, &unk_2146F5B30);
                v24 = 1;
                return v24 & 1;
              }

              sub_213FB2E54(v49, v44, &qword_27C909E50, &unk_2146F5B30);
              sub_213FB2E54(v52, v44, &qword_27C909E50, &unk_2146F5B30);
            }

            else
            {
              memcpy(v44, __dst, 0x189uLL);
              memcpy(v42, __dst, 0x189uLL);
              memcpy(v43, &__dst[25], 0x189uLL);
              if (sub_2144D65A8(v43) != 1)
              {
                memcpy(__src, &__dst[25], 0x189uLL);
                sub_213FB2E54(v49, v40, &qword_27C909E50, &unk_2146F5B30);
                sub_213FB2E54(v52, v40, &qword_27C909E50, &unk_2146F5B30);
                sub_213FB2E54(v44, v40, &qword_27C909E50, &unk_2146F5B30);
                v24 = sub_2144D2ECC(v42);
                memcpy(v39, __src, 0x189uLL);
                sub_2144D65C0(v39);
                memcpy(v40, v42, 0x189uLL);
                sub_2144D65C0(v40);
                memcpy(__src, __dst, 0x189uLL);
                sub_213FB2DF4(__src, &qword_27C909E50, &unk_2146F5B30);
                return v24 & 1;
              }

              memcpy(__src, __dst, 0x189uLL);
              sub_213FB2E54(v49, v40, &qword_27C909E50, &unk_2146F5B30);
              sub_213FB2E54(v52, v40, &qword_27C909E50, &unk_2146F5B30);
              sub_213FB2E54(v44, v40, &qword_27C909E50, &unk_2146F5B30);
              sub_2144D65C0(__src);
            }

            memcpy(v43, __dst, 0x319uLL);
            v21 = &qword_27C914928;
            v22 = &unk_214755D80;
            v23 = v43;
            goto LABEL_32;
          }

          sub_213FB2E54(v47, __dst, &qword_27C909E68, &qword_214761070);
          sub_213FB2E54(v50, __dst, &qword_27C909E68, &qword_214761070);
        }

        *&__dst[0] = v18;
        *(&__dst[1] + 8) = *(v4 + 88);
        *(&__dst[2] + 8) = *(v4 + 104);
        *(&__dst[3] + 8) = *(v4 + 120);
        BYTE8(__dst[4]) = *(v4 + 136);
        *(__dst + 8) = *(v4 + 72);
        *&__dst[5] = v19;
        *(&__dst[6] + 8) = *(v3 + 88);
        *(&__dst[7] + 8) = *(v3 + 104);
        *(&__dst[8] + 8) = *(v3 + 120);
        BYTE8(__dst[9]) = *(v3 + 136);
        *(&__dst[5] + 8) = *(v3 + 72);
        v21 = &unk_27C914930;
        v22 = &unk_214755D90;
        v23 = __dst;
LABEL_32:
        sub_213FB2DF4(v23, v21, v22);
        goto LABEL_33;
      }
    }

    else
    {
      if (v10)
      {
        goto LABEL_33;
      }

      sub_213FDC9D0(v11, 0);
      sub_213FDC9D0(v5, 0);
      if (v7)
      {
        goto LABEL_9;
      }
    }

    if (v37 == v12)
    {
      v17 = v13;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      goto LABEL_33;
    }

    goto LABEL_17;
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21454213C(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 56);
  v8 = *(v1 + 88);
  v43[2] = *(v1 + 72);
  v44[0] = v8;
  *(v44 + 9) = *(v1 + 97);
  v9 = *(v1 + 40);
  v43[1] = v7;
  v43[0] = v9;
  memcpy(v45, (v1 + 120), 0x189uLL);
  v10 = *(v3 + 16);
  v11 = *(v3 + 24);
  v12 = *(v3 + 56);
  v13 = *(v3 + 88);
  v46[2] = *(v3 + 72);
  v47[0] = v13;
  *(v47 + 9) = *(v3 + 97);
  v14 = *(v3 + 40);
  v46[1] = v12;
  v46[0] = v14;
  memcpy(v48, (v3 + 120), 0x189uLL);
  if (v6 != 1 && v11 != 1)
  {
    if (v6)
    {
      if (!v11 || (v5 != v10 || v6 != v11) && (sub_2146DA6A8() & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v11)
      {
LABEL_28:
        v33 = 0;
        return v33 & 1;
      }

      sub_213FDC9D0(v10, 0);
      sub_213FDC9D0(v5, 0);
    }

    v15 = *&v43[0];
    v16 = *&v46[0];
    if (*&v43[0])
    {
      *&__src[0] = *&v43[0];
      v17 = *(v4 + 64);
      *(__src + 8) = *(v4 + 48);
      *(&__src[1] + 8) = v17;
      v18 = *(v4 + 96);
      *(&__src[2] + 8) = *(v4 + 80);
      *(&__src[3] + 8) = v18;
      BYTE8(__src[4]) = *(v4 + 112);
      v39[2] = __src[2];
      v39[3] = __src[3];
      *(&v39[3] + 9) = *(&__src[3] + 9);
      v39[1] = __src[1];
      v39[0] = __src[0];
      if (*&v46[0])
      {
        v19 = *(v3 + 48);
        *(&v42[1] + 8) = *(v3 + 64);
        v20 = *(v3 + 96);
        *(&v42[2] + 8) = *(v3 + 80);
        *(&v42[3] + 8) = v20;
        BYTE8(v42[4]) = *(v3 + 112);
        *(v42 + 8) = v19;
        *&v42[0] = *&v46[0];
        v21 = sub_2144D3210(v39, v42);
        v38[2] = v42[2];
        v38[3] = v42[3];
        *(&v38[3] + 9) = *(&v42[3] + 9);
        v38[1] = v42[1];
        v38[0] = v42[0];
        sub_213FB2E54(v43, v40, &qword_27C909E68, &qword_214761070);
        sub_213FB2E54(v46, v40, &qword_27C909E68, &qword_214761070);
        sub_213FB2E54(__src, v40, &qword_27C909E68, &qword_214761070);
        sub_21430B28C(v38);
        v40[2] = v39[2];
        v40[3] = v39[3];
        *(&v40[3] + 9) = *(&v39[3] + 9);
        v40[1] = v39[1];
        v40[0] = v39[0];
        sub_21430B28C(v40);
        *&v42[0] = v15;
        v22 = *(v4 + 48);
        *(&v42[1] + 8) = *(v4 + 64);
        v23 = *(v4 + 96);
        *(&v42[2] + 8) = *(v4 + 80);
        *(&v42[3] + 8) = v23;
        BYTE8(v42[4]) = *(v4 + 112);
        *(v42 + 8) = v22;
        sub_213FB2DF4(v42, &qword_27C909E68, &qword_214761070);
        if ((v21 & 1) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_20;
      }

      v42[2] = __src[2];
      v42[3] = __src[3];
      *(&v42[3] + 9) = *(&__src[3] + 9);
      v42[1] = __src[1];
      v42[0] = __src[0];
      sub_213FB2E54(v43, v40, &qword_27C909E68, &qword_214761070);
      sub_213FB2E54(v46, v40, &qword_27C909E68, &qword_214761070);
      sub_213FB2E54(__src, v40, &qword_27C909E68, &qword_214761070);
      sub_21430B28C(v42);
    }

    else
    {
      if (!*&v46[0])
      {
        *&__src[0] = 0;
        v31 = *(v4 + 48);
        *(&__src[1] + 8) = *(v4 + 64);
        v32 = *(v4 + 96);
        *(&__src[2] + 8) = *(v4 + 80);
        *(&__src[3] + 8) = v32;
        BYTE8(__src[4]) = *(v4 + 112);
        *(__src + 8) = v31;
        sub_213FB2E54(v43, v39, &qword_27C909E68, &qword_214761070);
        sub_213FB2E54(v46, v39, &qword_27C909E68, &qword_214761070);
        sub_213FB2DF4(__src, &qword_27C909E68, &qword_214761070);
LABEL_20:
        memcpy(__src, v45, 0x189uLL);
        memcpy(&__src[25], v48, 0x189uLL);
        memcpy(v42, v45, 0x189uLL);
        if (sub_2144D65A8(v42) == 1)
        {
          memcpy(v39, &__src[25], 0x189uLL);
          if (sub_2144D65A8(v39) == 1)
          {
            memcpy(v40, __src, 0x189uLL);
            sub_213FB2E54(v45, v38, &qword_27C909E50, &unk_2146F5B30);
            sub_213FB2E54(v48, v38, &qword_27C909E50, &unk_2146F5B30);
            sub_213FB2DF4(v40, &qword_27C909E50, &unk_2146F5B30);
            v33 = 1;
            return v33 & 1;
          }

          sub_213FB2E54(v45, v40, &qword_27C909E50, &unk_2146F5B30);
          sub_213FB2E54(v48, v40, &qword_27C909E50, &unk_2146F5B30);
        }

        else
        {
          memcpy(v40, __src, 0x189uLL);
          memcpy(v38, __src, 0x189uLL);
          memcpy(v39, &__src[25], 0x189uLL);
          if (sub_2144D65A8(v39) != 1)
          {
            memcpy(v37, &__src[25], 0x189uLL);
            sub_213FB2E54(v45, v36, &qword_27C909E50, &unk_2146F5B30);
            sub_213FB2E54(v48, v36, &qword_27C909E50, &unk_2146F5B30);
            sub_213FB2E54(v40, v36, &qword_27C909E50, &unk_2146F5B30);
            v33 = sub_2144D2ECC(v38);
            memcpy(v35, v37, 0x189uLL);
            sub_2144D65C0(v35);
            memcpy(v36, v38, 0x189uLL);
            sub_2144D65C0(v36);
            memcpy(v37, __src, 0x189uLL);
            sub_213FB2DF4(v37, &qword_27C909E50, &unk_2146F5B30);
            return v33 & 1;
          }

          memcpy(v37, __src, 0x189uLL);
          sub_213FB2E54(v45, v36, &qword_27C909E50, &unk_2146F5B30);
          sub_213FB2E54(v48, v36, &qword_27C909E50, &unk_2146F5B30);
          sub_213FB2E54(v40, v36, &qword_27C909E50, &unk_2146F5B30);
          sub_2144D65C0(v37);
        }

        memcpy(v39, __src, 0x319uLL);
        v28 = &qword_27C914928;
        v29 = &unk_214755D80;
        v30 = v39;
        goto LABEL_27;
      }

      sub_213FB2E54(v43, __src, &qword_27C909E68, &qword_214761070);
      sub_213FB2E54(v46, __src, &qword_27C909E68, &qword_214761070);
    }

    v24 = *(v4 + 48);
    *(&__src[1] + 8) = *(v4 + 64);
    v25 = *(v4 + 96);
    *(&__src[2] + 8) = *(v4 + 80);
    *(&__src[3] + 8) = v25;
    *(__src + 8) = v24;
    v26 = *(v3 + 48);
    *(&__src[6] + 8) = *(v3 + 64);
    v27 = *(v3 + 96);
    *(&__src[7] + 8) = *(v3 + 80);
    *(&__src[8] + 8) = v27;
    *&__src[0] = v15;
    BYTE8(__src[4]) = *(v4 + 112);
    *&__src[5] = v16;
    BYTE8(__src[9]) = *(v3 + 112);
    *(&__src[5] + 8) = v26;
    v28 = &unk_27C914930;
    v29 = &unk_214755D90;
    v30 = __src;
LABEL_27:
    sub_213FB2DF4(v30, v28, v29);
    goto LABEL_28;
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214542898(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  v5 = *v1;
  v6 = *(v1 + 8);
  memcpy(v51, (v1 + 16), 0x201uLL);
  memcpy(v52, (v4 + 536), 0x231uLL);
  memcpy(v53, (v4 + 1104), 0x201uLL);
  v40 = *(v4 + 1624);
  v7 = *(v4 + 1632);
  v8 = *(v4 + 1640);
  v9 = *(v4 + 1648);
  v10 = *(v4 + 1656);
  v11 = *v3;
  v12 = *(v3 + 8);
  memcpy(v54, v3 + 2, 0x201uLL);
  memcpy(v55, v3 + 67, 0x231uLL);
  memcpy(v56, v3 + 138, 0x201uLL);
  if (v6)
  {
    if (!v12)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v5 == v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      goto LABEL_24;
    }
  }

  v14 = v3[203];
  v15 = v3[204];
  v37 = v3[205];
  v38 = v3[206];
  v39 = *(v3 + 1656);
  memcpy(v48, (v4 + 16), 0x201uLL);
  memcpy(&v48[65], v3 + 2, 0x201uLL);
  memcpy(v50, (v4 + 16), 0x201uLL);
  if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(v50) == 1)
  {
    memcpy(__dst, v3 + 2, 0x201uLL);
    if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(__dst) == 1)
    {
      memcpy(v49, (v4 + 16), 0x201uLL);
      sub_213FB2E54(v51, v47, &qword_27C907A70, &qword_2146F4CB0);
      sub_213FB2E54(v54, v47, &qword_27C907A70, &qword_2146F4CB0);
      sub_213FB2DF4(v49, &qword_27C907A70, &qword_2146F4CB0);
LABEL_16:
      memcpy(v48, v52, 0x231uLL);
      memcpy(&v48[71], v55, 0x231uLL);
      memcpy(v49, v52, 0x231uLL);
      if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(v49) == 1)
      {
        memcpy(__dst, &v48[71], 0x231uLL);
        if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(__dst) == 1)
        {
          memcpy(v47, v48, 0x231uLL);
          sub_213FB2E54(v52, __src, &qword_27C907A88, &qword_2146F4CB8);
          sub_213FB2E54(v55, __src, &qword_27C907A88, &qword_2146F4CB8);
          sub_213FB2DF4(v47, &qword_27C907A88, &qword_2146F4CB8);
          goto LABEL_27;
        }

        sub_213FB2E54(v52, v47, &qword_27C907A88, &qword_2146F4CB8);
        sub_213FB2E54(v55, v47, &qword_27C907A88, &qword_2146F4CB8);
      }

      else
      {
        memcpy(v47, v48, 0x231uLL);
        memcpy(__src, v48, 0x231uLL);
        memcpy(__dst, &v48[71], 0x231uLL);
        if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(__dst) != 1)
        {
          memcpy(v43, &v48[71], 0x231uLL);
          sub_213FB2E54(v52, v42, &qword_27C907A88, &qword_2146F4CB8);
          sub_213FB2E54(v55, v42, &qword_27C907A88, &qword_2146F4CB8);
          sub_213FB2E54(v47, v42, &qword_27C907A88, &qword_2146F4CB8);
          v21 = sub_21454188C(__src);
          memcpy(v41, v43, 0x231uLL);
          sub_21430C3C0(v41);
          memcpy(v42, __src, 0x231uLL);
          sub_21430C3C0(v42);
          memcpy(v43, v48, 0x231uLL);
          sub_213FB2DF4(v43, &qword_27C907A88, &qword_2146F4CB8);
          if ((v21 & 1) == 0)
          {
            goto LABEL_24;
          }

LABEL_27:
          if (v40)
          {
            v48[0] = v40;
            v22 = v7;
            v48[1] = v7;
            v23 = v8;
            v48[2] = v8;
            v24 = v9;
            v48[3] = v9;
            LOBYTE(v48[4]) = v10;
            if (v14)
            {
              __dst[0] = v14;
              __dst[1] = v15;
              __dst[2] = v37;
              __dst[3] = v38;
              LOBYTE(__dst[4]) = v39;
              v36 = sub_2144D3604(v48, __dst);
              v34 = __dst[3];
              v35 = __dst[2];
              sub_21431326C(v40, v7, v8, v9);
              sub_21431326C(v14, v15, v37, v38);
              sub_21431326C(v40, v7, v8, v9);

              sub_213FDC6D0(v35, v34);
              v25 = v48[2];
              v26 = v48[3];

              sub_213FDC6D0(v25, v26);
              sub_214313220(v40, v7, v8, v9);
              if ((v36 & 1) == 0)
              {
                goto LABEL_24;
              }

              goto LABEL_36;
            }

            v32 = v40;
            v27 = 0;
            sub_21431326C(v40, v22, v23, v9);
            v28 = v15;
            v33 = v15;
            v31 = v37;
            v30 = v38;
            sub_21431326C(0, v33, v37, v38);
            sub_21431326C(v40, v22, v23, v24);

            sub_213FDC6D0(v23, v24);
          }

          else
          {
            v22 = v7;
            v23 = v8;
            v24 = v9;
            sub_21431326C(0, v7, v8, v9);
            if (!v14)
            {
              sub_21431326C(0, v15, v37, v38);
              sub_214313220(0, v7, v8, v9);
LABEL_36:
              memcpy(v48, v53, 0x201uLL);
              memcpy(&v48[65], v56, 0x201uLL);
              memcpy(v47, v53, 0x201uLL);
              if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(v47) == 1)
              {
                memcpy(__dst, &v48[65], 0x201uLL);
                if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(__dst) == 1)
                {
                  memcpy(__src, v48, 0x201uLL);
                  sub_213FB2E54(v53, v43, &qword_27C907AA0, &qword_2146F4CC0);
                  sub_213FB2E54(v56, v43, &qword_27C907AA0, &qword_2146F4CC0);
                  sub_213FB2DF4(__src, &qword_27C907AA0, &qword_2146F4CC0);
                  v19 = 1;
                  return v19 & 1;
                }

                sub_213FB2E54(v53, __src, &qword_27C907AA0, &qword_2146F4CC0);
                sub_213FB2E54(v56, __src, &qword_27C907AA0, &qword_2146F4CC0);
              }

              else
              {
                memcpy(__src, v48, 0x201uLL);
                memcpy(v43, v48, 0x201uLL);
                memcpy(__dst, &v48[65], 0x201uLL);
                if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(__dst) != 1)
                {
                  memcpy(v42, &v48[65], 0x201uLL);
                  sub_213FB2E54(v53, v41, &qword_27C907AA0, &qword_2146F4CC0);
                  sub_213FB2E54(v56, v41, &qword_27C907AA0, &qword_2146F4CC0);
                  sub_213FB2E54(__src, v41, &qword_27C907AA0, &qword_2146F4CC0);
                  v19 = sub_21454213C(v43);
                  memcpy(v44, v42, 0x201uLL);
                  sub_21430C4C4(v44);
                  memcpy(v41, v43, 0x201uLL);
                  sub_21430C4C4(v41);
                  memcpy(v42, v48, 0x201uLL);
                  sub_213FB2DF4(v42, &qword_27C907AA0, &qword_2146F4CC0);
                  return v19 & 1;
                }

                memcpy(v42, v48, 0x201uLL);
                sub_213FB2E54(v53, v41, &qword_27C907AA0, &qword_2146F4CC0);
                sub_213FB2E54(v56, v41, &qword_27C907AA0, &qword_2146F4CC0);
                sub_213FB2E54(__src, v41, &qword_27C907AA0, &qword_2146F4CC0);
                sub_21430C4C4(v42);
              }

              memcpy(__dst, v48, 0x409uLL);
              v16 = &unk_27C915390;
              v17 = &unk_21475A378;
              goto LABEL_23;
            }

            v27 = v14;
            v28 = v15;
            v29 = v15;
            v31 = v37;
            v30 = v38;
            sub_21431326C(v14, v29, v37, v38);
            v32 = 0;
          }

          sub_214313220(v32, v22, v23, v24);
          sub_214313220(v27, v28, v31, v30);
          goto LABEL_24;
        }

        memcpy(v43, v48, 0x231uLL);
        sub_213FB2E54(v52, v42, &qword_27C907A88, &qword_2146F4CB8);
        sub_213FB2E54(v55, v42, &qword_27C907A88, &qword_2146F4CB8);
        sub_213FB2E54(v47, v42, &qword_27C907A88, &qword_2146F4CB8);
        sub_21430C3C0(v43);
      }

      memcpy(__dst, v48, 0x469uLL);
      v16 = &unk_27C915388;
      v17 = &unk_21475A370;
LABEL_23:
      sub_213FB2DF4(__dst, v16, v17);
      goto LABEL_24;
    }

    sub_213FB2E54(v51, v49, &qword_27C907A70, &qword_2146F4CB0);
    sub_213FB2E54(v54, v49, &qword_27C907A70, &qword_2146F4CB0);
LABEL_14:
    memcpy(__dst, v48, 0x409uLL);
    v16 = &unk_27C915380;
    v17 = &unk_21475A368;
    goto LABEL_23;
  }

  memcpy(v49, (v4 + 16), 0x201uLL);
  memcpy(v47, (v4 + 16), 0x201uLL);
  memcpy(__dst, v3 + 2, 0x201uLL);
  if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(__dst) == 1)
  {
    memcpy(__src, (v4 + 16), 0x201uLL);
    sub_213FB2E54(v51, v43, &qword_27C907A70, &qword_2146F4CB0);
    sub_213FB2E54(v54, v43, &qword_27C907A70, &qword_2146F4CB0);
    sub_213FB2E54(v49, v43, &qword_27C907A70, &qword_2146F4CB0);
    sub_21430C2BC(__src);
    goto LABEL_14;
  }

  memcpy(__src, v3 + 2, 0x201uLL);
  sub_213FB2E54(v51, v43, &qword_27C907A70, &qword_2146F4CB0);
  sub_213FB2E54(v54, v43, &qword_27C907A70, &qword_2146F4CB0);
  sub_213FB2E54(v49, v43, &qword_27C907A70, &qword_2146F4CB0);
  v18 = sub_2145413D0(v47);
  memcpy(v42, __src, 0x201uLL);
  sub_21430C2BC(v42);
  memcpy(v43, v47, 0x201uLL);
  sub_21430C2BC(v43);
  memcpy(__src, (v4 + 16), 0x201uLL);
  sub_213FB2DF4(__src, &qword_27C907A70, &qword_2146F4CB0);
  if (v18)
  {
    goto LABEL_16;
  }

LABEL_24:
  v19 = 0;
  return v19 & 1;
}

unint64_t sub_2145434C4()
{
  result = qword_27C915378;
  if (!qword_27C915378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915378);
  }

  return result;
}

uint64_t sub_214543528(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_214543570(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2145435D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_214543638(uint64_t a1)
{
  *(a1 + 8) = sub_21431EC24();
  result = sub_21431E0B8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214543678@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_21439DF24;
  *(v3 + 24) = 0;
  *(inited + 32) = v3;
  sub_214042B80(inited, a1);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_2146E9BF0;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = 100;
  *(v6 + 24) = 0;
  *(v5 + 16) = sub_21406418C;
  *(v5 + 24) = v6;
  *(v4 + 32) = v5;
  return sub_214042B80(v4, a1 + 40);
}

uint64_t sub_21454379C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2145437E8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214543844@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v4 = *(v1 + 56);
  v3 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214543890(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 48);
  v7 = *(v1 + 64);

  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_2145438EC()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214543968()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 56);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2145439E4()
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = v0[3];
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = v0[2];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[10];
  v6 = v0[11];
  v7 = MEMORY[0x277D837D0];
  v27 = MEMORY[0x277D837D0];
  *&v26 = v2;
  *(&v26 + 1) = v1;
  sub_213FDC730(&v26, v25);

  v8 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = v8;
  sub_2140524DC(v25, 0x444965636E6566, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  if (v3)
  {
    v27 = v7;
    *&v26 = v4;
    *(&v26 + 1) = v3;
    sub_213FDC730(&v26, v25);

    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v25, 0xD000000000000015, 0x800000021479B0F0, v10);
    v11 = objc_allocWithZone(MEMORY[0x277CBC5D0]);
    v12 = sub_2146D9588();
    v13 = [v11 initWithRecordName_];

    v14 = objc_opt_self();
    *&v26 = 0;
    v15 = [v14 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v26];
    v16 = v26;
    if (v15)
    {
      v17 = sub_2146D8A58();
      v19 = v18;

      v27 = MEMORY[0x277CC9318];
      *&v26 = v17;
      *(&v26 + 1) = v19;
      sub_213FDC730(&v26, v25);
      sub_21402D9F8(v17, v19);
      v20 = swift_isUniquelyReferenced_nonNull_native();
      sub_2140524DC(v25, 0x64726F6365526B63, 0xEA00000000004449, v20);
      sub_213FB54FC(v17, v19);

      result = v24;
      v22 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  else
  {
LABEL_5:
    v16 = sub_2146DA018();
    __break(1u);
  }

  v23 = v16;
  sub_2146D8838();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_214543C8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *v2;
  v7 = *(v2 + 8);
  v12 = *(v3 + 32);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 24);

    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214543DD4(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CFE84;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_214543E70(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D01AC;
}

uint64_t sub_214543F08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v12 = *(v3 + 72);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 64);

    *(v3 + 56) = a1;
    *(v3 + 64) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214544050(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 64);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 56);
    a1[1] = v3;

    return sub_2144120D4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_2145440EC(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v7 = *(v1 + 56);
  v6 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_214412390;
}

uint64_t sub_214544184()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t sub_2145441B4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t sub_21454420C()
{
  sub_2145439E4();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214544260()
{
  sub_2145439E4();
  v0 = sub_2146D9468();

  return v0;
}

unint64_t sub_2145442B4(uint64_t a1)
{
  *(a1 + 8) = sub_214320184();
  result = sub_21431FA4C();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145442E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_21454432C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_214544394(const void *a1)
{
  v3 = objc_allocWithZone(v1);
  memcpy(&v3[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload], a1, 0x89BuLL);
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_2145443FC(void *__src)
{
  memcpy(&v1[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload], __src, 0x89BuLL);
  v3.receiver = v1;
  v3.super_class = type metadata accessor for _ObjCAPSUserPayloadWrapper();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_21454446C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = v2;
  memcpy(__dst, (v1 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload), 0x89BuLL);
  memcpy(v3, (v1 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload), 0x89BuLL);
  return sub_2142E1BD4(__dst, &v5);
}

uint64_t sub_214544614()
{
  if ((*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 24) & 1) == 0)
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 16);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2145446DC()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 40))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 32);
  }
}

uint64_t sub_214544754()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 56))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 48);
  }
}

uint64_t sub_214544780()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 64);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 72));
  return v1;
}

uint64_t sub_2145447CC()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 80);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 88));
  return v1;
}

uint64_t sub_214544894()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 96);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 104));
  return v1;
}

uint64_t sub_21454495C()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 112);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 120));
  return v1;
}

uint64_t sub_2145449A8()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 128);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 136));
  return v1;
}

uint64_t sub_214544A58()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 144);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 152);

  return v1;
}

uint64_t sub_214544B1C()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 160);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 168));
  return v1;
}

uint64_t sub_214544BCC()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 176);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 184);

  return v1;
}

id sub_214544D14()
{
  v1 = v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload;
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 209))
  {
    return 0;
  }

  v3 = *(v1 + 208);
  v4 = *(v1 + 200);
  v5 = type metadata accessor for _ObjCAPSUserPayloadDeliveryContextWrapper();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorAPSUserPayloadDeliveryContext_aPSUserPayloadDeliveryContext];
  *v7 = v4;
  v7[8] = v3 & 1;
  v8.receiver = v6;
  v8.super_class = v5;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_214544D9C(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 8);
  v5 = &v3[OBJC_IVAR___BlastDoorAPSUserPayloadDeliveryContext_aPSUserPayloadDeliveryContext];
  *v5 = *a1;
  v5[8] = v4;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_214544E78()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 224))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 216);
  }
}

uint64_t sub_214544EA4()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 232);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 240));
  return v1;
}

uint64_t sub_21454503C()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 256);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 264));
  return v1;
}

uint64_t sub_214545104()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 272);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 280));
  return v1;
}

uint64_t sub_2145451B4()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 288);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 296);

  return v1;
}

uint64_t sub_214545260()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 304);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 312);

  return v1;
}

uint64_t sub_21454530C()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 320);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 328);

  return v1;
}

uint64_t sub_2145453D0()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 336);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 344));
  return v1;
}

uint64_t sub_214545468()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 360))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 352);
  }
}

uint64_t sub_2145454F8()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 368);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 376);

  return v1;
}

uint64_t sub_2145455A4()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 384);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 392);

  return v1;
}

uint64_t sub_214545650()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 400);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 408);

  return v1;
}

uint64_t sub_2145457FC()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 432);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 440);

  return v1;
}

uint64_t sub_2145458A8()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 448);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 456);

  return v1;
}

uint64_t sub_21454593C()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 472))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 464);
  }
}

uint64_t sub_2145459B4()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 488))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 480);
  }
}

uint64_t sub_214545A44()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 496);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 504);

  return v1;
}

uint64_t sub_214545B08()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 512);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 520));
  return v1;
}

uint64_t sub_214545BD4()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 528);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 536));
  return v1;
}

uint64_t sub_214545C70()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 552))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 544);
  }
}

uint64_t sub_214545D18()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 560);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 568));
  return v1;
}

uint64_t sub_214545DCC()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 576);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 584);

  return v1;
}

uint64_t sub_214545E7C()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 592);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 600);

  return v1;
}

uint64_t sub_214545F2C()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 608);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 616);

  return v1;
}

uint64_t sub_214545FC4()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 632))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 624);
  }
}

uint64_t sub_21454603C()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 648))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 640);
  }
}

uint64_t sub_2145460B4()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 664))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 656);
  }
}

uint64_t sub_21454612C()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 680))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 672);
  }
}

uint64_t sub_2145461D4()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 688);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 696));
  return v1;
}

uint64_t sub_214546288()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 704);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 712);

  return v1;
}

uint64_t sub_214546320()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 728))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 720);
  }
}

uint64_t sub_214546398()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 744))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 736);
  }
}

uint64_t sub_214546428()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 752);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 760);

  return v1;
}

uint64_t sub_2145464C0()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 776))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 768);
  }
}

uint64_t sub_214546550()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 784);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 792);

  return v1;
}

uint64_t sub_2145465E8()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 808))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 800);
  }
}

uint64_t sub_214546660()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 824))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 816);
  }
}

uint64_t sub_2145466D8()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 840))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 832);
  }
}

uint64_t sub_214546724(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = *(v1 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 848);
  v3 = *(v2 + 16);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v13 = MEMORY[0x277D84F90];

    sub_2146D9FB8();
    v5 = type metadata accessor for _ObjCAPSUserPayloadWrapper();
    v6 = v3 - 1;
    for (i = 32; ; i += 2208)
    {
      memcpy(__dst, (v2 + i), 0x89BuLL);
      v8 = objc_allocWithZone(v5);
      memcpy(&v8[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload], __dst, 0x89BuLL);
      sub_2142E1BD4(__dst, v11);
      v10.receiver = v8;
      v10.super_class = v5;
      objc_msgSendSuper2(&v10, sel_init);
      sub_2146D9F98();
      v9 = *(v13 + 16);
      sub_2146D9FC8();
      sub_2146D9FD8();
      sub_2146D9FA8();
      if (!v6)
      {
        break;
      }

      --v6;
    }

    return v13;
  }

  return result;
}

uint64_t sub_214546890(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = *(v1 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 856);
  v3 = *(v2 + 16);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v13 = MEMORY[0x277D84F90];

    sub_2146D9FB8();
    v5 = type metadata accessor for _ObjCAPSUserPayloadWrapper();
    v6 = v3 - 1;
    for (i = 32; ; i += 2208)
    {
      memcpy(__dst, (v2 + i), 0x89BuLL);
      v8 = objc_allocWithZone(v5);
      memcpy(&v8[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload], __dst, 0x89BuLL);
      sub_2142E1BD4(__dst, v11);
      v10.receiver = v8;
      v10.super_class = v5;
      objc_msgSendSuper2(&v10, sel_init);
      sub_2146D9F98();
      v9 = *(v13 + 16);
      sub_2146D9FC8();
      sub_2146D9FD8();
      sub_2146D9FA8();
      if (!v6)
      {
        break;
      }

      --v6;
    }

    return v13;
  }

  return result;
}

uint64_t sub_214546A28()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 872))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 864);
  }
}

uint64_t sub_214546AA0()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 888))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 880);
  }
}

uint64_t sub_214546B18()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 904))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 896);
  }
}

uint64_t sub_214546D48()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 912);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 920);

  return v1;
}

uint64_t sub_214546DF8()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 928);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 936);

  return v1;
}

uint64_t sub_214546EC0()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 944);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 952));
  return v1;
}

uint64_t sub_214546F74()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 960);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 968);

  return v1;
}

uint64_t sub_214547024()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 976);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 984);

  return v1;
}

uint64_t sub_2145470D4()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 992);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1000);

  return v1;
}

uint64_t sub_214547184()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1008);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1016);

  return v1;
}

uint64_t sub_214547234()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1024);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1032);

  return v1;
}

uint64_t sub_2145472CC()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1048))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1040);
  }
}

uint64_t sub_21454735C()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1056);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1064);

  return v1;
}

uint64_t sub_2145473F4()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1080))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1072);
  }
}

uint64_t sub_214547484()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1088);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1096);

  return v1;
}

uint64_t sub_21454751C()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1112))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1104);
  }
}

uint64_t sub_214547614()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1120);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1128);

  return v1;
}

uint64_t sub_2145476AC()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1144))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1136);
  }
}

uint64_t sub_214547724()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1160))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1152);
  }
}

uint64_t sub_2145477B4()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1168);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1176);

  return v1;
}

id sub_2145478FC()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1184);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1192);
  v3 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1216);
  v4 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1248);
  v21 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1232);
  v22 = v4;
  v23 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1264);
  v19 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1200);
  v20 = v3;
  v26 = v21;
  v27 = v4;
  v28 = v23;
  v24 = v19;
  v25 = v3;
  if (v2 == 1)
  {
    return 0;
  }

  v6 = type metadata accessor for _ObjCAPSUserPayloadHttpHeadersWrapper();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BlastDoorAPSUserPayloadHttpHeaders_aPSUserPayloadHttpHeaders];
  *v8 = v1;
  *(v8 + 1) = v2;
  v9 = v27;
  *(v8 + 3) = v26;
  *(v8 + 4) = v9;
  *(v8 + 5) = v28;
  v10 = v25;
  *(v8 + 1) = v24;
  *(v8 + 2) = v10;
  v13[0] = v1;
  v13[1] = v2;
  v16 = v21;
  v17 = v22;
  v18 = v23;
  v14 = v19;
  v15 = v20;
  sub_21454AF44(v13, v12);
  v11.receiver = v7;
  v11.super_class = v6;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_2145479F4(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR___BlastDoorAPSUserPayloadHttpHeaders_aPSUserPayloadHttpHeaders];
  v5 = a1[3];
  *(v4 + 2) = a1[2];
  *(v4 + 3) = v5;
  v6 = a1[5];
  *(v4 + 4) = a1[4];
  *(v4 + 5) = v6;
  v7 = a1[1];
  *v4 = *a1;
  *(v4 + 1) = v7;
  v9.receiver = v3;
  v9.super_class = v1;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_214547AE4()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1280);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1288));
  return v1;
}

uint64_t sub_214547B98()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1296);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1304);

  return v1;
}

uint64_t sub_214547C60()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1312);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1320));
  return v1;
}

uint64_t sub_214547CFC()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1336))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1328);
  }
}

uint64_t sub_214547D8C()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1344);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1352);

  return v1;
}

uint64_t sub_214547F5C()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1376))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1368);
  }
}

uint64_t sub_214547FEC()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1384);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1392);

  return v1;
}

uint64_t sub_2145480B4()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1400);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1408));
  return v1;
}

uint64_t sub_214548180()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1416);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1424));
  return v1;
}

uint64_t sub_21454821C()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1440))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1432);
  }
}

uint64_t sub_214548364()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1456))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1448);
  }
}

uint64_t sub_2145483DC()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1472))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1464);
  }
}

uint64_t sub_2145484BC()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1488))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1480);
  }
}

uint64_t sub_214548534()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1504))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1496);
  }
}

uint64_t sub_2145485C4()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1512);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1520);

  return v1;
}

uint64_t sub_21454865C()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1536))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1528);
  }
}

uint64_t sub_2145486D4()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1552))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1544);
  }
}

uint64_t sub_21454877C()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1560);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1568));
  return v1;
}

uint64_t sub_214548848()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1576);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1584));
  return v1;
}

uint64_t sub_2145488E4()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1600))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1592);
  }
}

uint64_t sub_21454898C()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1608);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1616));
  return v1;
}

uint64_t sub_214548A58()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1624);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1632));
  return v1;
}

uint64_t sub_214548AF4()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1648))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1640);
  }
}

uint64_t sub_214548B6C()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1664))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1656);
  }
}

uint64_t sub_214548BB8()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1672);
  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v17 = MEMORY[0x277D84F90];

    sub_2146D9FB8();
    v4 = type metadata accessor for _ObjCAPSQuickRelayPluginRequestWrapper();
    v5 = (v1 + 73);
    do
    {
      v6 = *(v5 - 41);
      v7 = *(v5 - 33);
      v8 = *(v5 - 25);
      v9 = *(v5 - 17);
      v10 = *(v5 - 9);
      v11 = *(v5 - 1);
      v12 = *v5;
      v5 += 48;
      v13 = objc_allocWithZone(v4);
      v14 = &v13[OBJC_IVAR___BlastDoorAPSQuickRelayPluginRequest_aPSQuickRelayPluginRequest];
      *v14 = v6;
      *(v14 + 1) = v7;
      *(v14 + 2) = v8;
      *(v14 + 3) = v9;
      *(v14 + 4) = v10;
      v14[40] = v11;
      v14[41] = v12;
      v16.receiver = v13;
      v16.super_class = v4;

      objc_msgSendSuper2(&v16, sel_init);
      sub_2146D9F98();
      v15 = *(v17 + 16);
      sub_2146D9FC8();
      sub_2146D9FD8();
      sub_2146D9FA8();
      --v2;
    }

    while (v2);

    return v17;
  }

  return result;
}

id sub_214548CFC(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 41);
  v7 = &v3[OBJC_IVAR___BlastDoorAPSQuickRelayPluginRequest_aPSQuickRelayPluginRequest];
  v8 = *(a1 + 16);
  *v7 = *a1;
  *(v7 + 1) = v8;
  *(v7 + 4) = v4;
  v7[40] = v5;
  v7[41] = v6;
  v10.receiver = v3;
  v10.super_class = v1;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_214548DDC()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1680);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1688);

  return v1;
}

uint64_t sub_214548E8C()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1696);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1704);

  return v1;
}

uint64_t sub_214548F24()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1720))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1712);
  }
}

uint64_t sub_21454906C()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1736))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1728);
  }
}

uint64_t sub_214549114()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1744);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1752));
  return v1;
}

uint64_t sub_2145491B0()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1768))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1760);
  }
}

uint64_t sub_2145492A8()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1776);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1784);

  return v1;
}

uint64_t sub_214549340()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1800))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1792);
  }
}

uint64_t sub_2145493B8()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1816))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1808);
  }
}

uint64_t sub_214549460()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1824);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1832));
  return v1;
}

uint64_t sub_21454952C()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1840);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1848));
  return v1;
}

uint64_t sub_2145495C8()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1864))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1856);
  }
}

uint64_t sub_214549670()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1872);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1880));
  return v1;
}

uint64_t sub_21454973C()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1888);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1896));
  return v1;
}

uint64_t sub_214549808()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1904);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1912));
  return v1;
}

uint64_t sub_2145498A4()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1928))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1920);
  }
}

uint64_t sub_21454994C()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1936);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1944));
  return v1;
}

uint64_t sub_2145499E8()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1960))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1952);
  }
}

uint64_t sub_214549A90()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1968);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1976));
  return v1;
}

uint64_t sub_214549B44()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1984);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1992);

  return v1;
}

uint64_t sub_214549BDC()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2008))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2000);
  }
}

uint64_t sub_214549C54()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2024))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2016);
  }
}

uint64_t sub_214549CCC()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2040))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2032);
  }
}

uint64_t sub_214549D44()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2056))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2048);
  }
}

uint64_t sub_214549D90()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2064);
  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v22 = MEMORY[0x277D84F90];

    sub_2146D9FB8();
    v4 = type metadata accessor for _ObjCAPSQuickRelayAllocationStatusWrapper();
    v5 = v2 - 1;
    for (i = 32; ; i += 64)
    {
      v7 = *(v1 + i);
      v8 = *(v1 + i + 16);
      v9 = *(v1 + i + 48);
      v20 = *(v1 + i + 32);
      v21 = v9;
      v18 = v7;
      v19 = v8;
      v10 = objc_allocWithZone(v4);
      v11 = &v10[OBJC_IVAR___BlastDoorAPSQuickRelayAllocationStatus_aPSQuickRelayAllocationStatus];
      v12 = v21;
      v14 = v18;
      v13 = v19;
      *(v11 + 2) = v20;
      *(v11 + 3) = v12;
      *v11 = v14;
      *(v11 + 1) = v13;
      sub_21454B6E0(&v18, v17);
      v16.receiver = v10;
      v16.super_class = v4;
      objc_msgSendSuper2(&v16, sel_init);
      sub_2146D9F98();
      v15 = *(v22 + 16);
      sub_2146D9FC8();
      sub_2146D9FD8();
      sub_2146D9FA8();
      if (!v5)
      {
        break;
      }

      --v5;
    }

    return v22;
  }

  return result;
}

uint64_t sub_214549EF8()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2072);
  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v28 = MEMORY[0x277D84F90];

    sub_2146D9FB8();
    v4 = type metadata accessor for _ObjCAPSQuickRelaySelfAllocTokenWrapper();
    v5 = v2 - 1;
    for (i = 32; ; i += 112)
    {
      v7 = *(v1 + i);
      v8 = *(v1 + i + 32);
      v23 = *(v1 + i + 16);
      v24 = v8;
      v22 = v7;
      v9 = *(v1 + i + 48);
      v10 = *(v1 + i + 64);
      v11 = *(v1 + i + 80);
      *(v27 + 9) = *(v1 + i + 89);
      v26 = v10;
      v27[0] = v11;
      v25 = v9;
      v12 = objc_allocWithZone(v4);
      v13 = &v12[OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken];
      v15 = v23;
      v14 = v24;
      *v13 = v22;
      *(v13 + 1) = v15;
      *(v13 + 2) = v14;
      v17 = v26;
      v16 = v27[0];
      v18 = v25;
      *(v13 + 89) = *(v27 + 9);
      *(v13 + 4) = v17;
      *(v13 + 5) = v16;
      *(v13 + 3) = v18;
      sub_21454BBF8(&v22, v21);
      v20.receiver = v12;
      v20.super_class = v4;
      objc_msgSendSuper2(&v20, sel_init);
      sub_2146D9F98();
      v19 = *(v28 + 16);
      sub_2146D9FC8();
      sub_2146D9FD8();
      sub_2146D9FA8();
      if (!v5)
      {
        break;
      }

      --v5;
    }

    return v28;
  }

  return result;
}

uint64_t sub_21454A0F0()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2080);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2088));
  return v1;
}

uint64_t sub_21454A18C()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2104))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2096);
  }
}

uint64_t sub_21454A1D8()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2112);
  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v23 = MEMORY[0x277D84F90];

    sub_2146D9FB8();
    v4 = type metadata accessor for _ObjCAPSQuickRelayPluginAllocationWrapper();
    v5 = v2 - 1;
    for (i = 32; ; i += 80)
    {
      v18 = *(v1 + i);
      v7 = *(v1 + i + 16);
      v8 = *(v1 + i + 32);
      v9 = *(v1 + i + 64);
      v21 = *(v1 + i + 48);
      v22 = v9;
      v19 = v7;
      v20 = v8;
      v10 = objc_allocWithZone(v4);
      v11 = &v10[OBJC_IVAR___BlastDoorAPSQuickRelayPluginAllocation_aPSQuickRelayPluginAllocation];
      *v11 = v18;
      v12 = v22;
      v14 = v19;
      v13 = v20;
      *(v11 + 3) = v21;
      *(v11 + 4) = v12;
      *(v11 + 1) = v14;
      *(v11 + 2) = v13;
      sub_21454C394(&v18, v17);
      v16.receiver = v10;
      v16.super_class = v4;
      objc_msgSendSuper2(&v16, sel_init);
      sub_2146D9F98();
      v15 = *(v23 + 16);
      sub_2146D9FC8();
      sub_2146D9FD8();
      sub_2146D9FA8();
      if (!v5)
      {
        break;
      }

      --v5;
    }

    return v23;
  }

  return result;
}

uint64_t sub_21454A37C()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2128))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2120);
  }
}

uint64_t sub_21454A3F4()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2144))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2136);
  }
}

uint64_t sub_21454A554()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2152);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2160);

  return v1;
}

uint64_t sub_21454A654()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2184))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2176);
  }
}

uint64_t sub_21454A6CC()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2200))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2192);
  }
}

id APSUserPayload.bridgedToObjectiveC.getter(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  memcpy(__dst, v1, 0x89BuLL);
  v2 = type metadata accessor for _ObjCAPSUserPayloadWrapper();
  v3 = objc_allocWithZone(v2);
  memcpy(&v3[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload], v1, 0x89BuLL);
  sub_2142E1BD4(__dst, v6);
  v5.receiver = v3;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_21454A91C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  memcpy(__dst, v1, 0x89BuLL);
  v2 = type metadata accessor for _ObjCAPSUserPayloadWrapper();
  v3 = objc_allocWithZone(v2);
  memcpy(&v3[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload], __dst, 0x89BuLL);
  sub_2142E1BD4(__dst, v6);
  v5.receiver = v3;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_21454A9BC(_OWORD *a1)
{
  v2 = &v1[OBJC_IVAR___BlastDoorAPSUserPayloadHttpHeaders_aPSUserPayloadHttpHeaders];
  v3 = a1[3];
  *(v2 + 2) = a1[2];
  *(v2 + 3) = v3;
  v4 = a1[5];
  *(v2 + 4) = a1[4];
  *(v2 + 5) = v4;
  v5 = a1[1];
  *v2 = *a1;
  *(v2 + 1) = v5;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for _ObjCAPSUserPayloadHttpHeadersWrapper();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_21454AA14@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorAPSUserPayloadHttpHeaders_aPSUserPayloadHttpHeaders + 48);
  v10 = *(v1 + OBJC_IVAR___BlastDoorAPSUserPayloadHttpHeaders_aPSUserPayloadHttpHeaders + 32);
  v11 = v2;
  v4 = *(v1 + OBJC_IVAR___BlastDoorAPSUserPayloadHttpHeaders_aPSUserPayloadHttpHeaders + 80);
  v12 = *(v1 + OBJC_IVAR___BlastDoorAPSUserPayloadHttpHeaders_aPSUserPayloadHttpHeaders + 64);
  v3 = v12;
  v13 = v4;
  v6 = *(v1 + OBJC_IVAR___BlastDoorAPSUserPayloadHttpHeaders_aPSUserPayloadHttpHeaders + 16);
  v9[0] = *(v1 + OBJC_IVAR___BlastDoorAPSUserPayloadHttpHeaders_aPSUserPayloadHttpHeaders);
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_21454AF44(v9, &v8);
}

uint64_t sub_21454AB28()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayloadHttpHeaders_aPSUserPayloadHttpHeaders);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayloadHttpHeaders_aPSUserPayloadHttpHeaders + 8);

  return v1;
}

uint64_t sub_21454AC34()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayloadHttpHeaders_aPSUserPayloadHttpHeaders + 80);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSUserPayloadHttpHeaders_aPSUserPayloadHttpHeaders + 88);

  return v1;
}

id sub_21454ACE8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_21454ADA8()
{
  v1 = v0[3];
  v13[2] = v0[2];
  v13[3] = v1;
  v2 = v0[5];
  v13[4] = v0[4];
  v13[5] = v2;
  v3 = v0[1];
  v13[0] = *v0;
  v13[1] = v3;
  v4 = type metadata accessor for _ObjCAPSUserPayloadHttpHeadersWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorAPSUserPayloadHttpHeaders_aPSUserPayloadHttpHeaders];
  v7 = v0[3];
  *(v6 + 2) = v0[2];
  *(v6 + 3) = v7;
  v8 = v0[5];
  *(v6 + 4) = v0[4];
  *(v6 + 5) = v8;
  v9 = v0[1];
  *v6 = *v0;
  *(v6 + 1) = v9;
  sub_21454AF44(v13, v12);
  v11.receiver = v5;
  v11.super_class = v4;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_21454AE40()
{
  v1 = v0[3];
  v16 = v0[2];
  v17 = v1;
  v2 = v0[5];
  v18 = v0[4];
  v19 = v2;
  v3 = v0[1];
  v14 = *v0;
  v15 = v3;
  v4 = type metadata accessor for _ObjCAPSUserPayloadHttpHeadersWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorAPSUserPayloadHttpHeaders_aPSUserPayloadHttpHeaders];
  v7 = v15;
  *v6 = v14;
  *(v6 + 1) = v7;
  v8 = v19;
  v10 = v16;
  v9 = v17;
  *(v6 + 4) = v18;
  *(v6 + 5) = v8;
  *(v6 + 2) = v10;
  *(v6 + 3) = v9;
  sub_21454AF44(&v14, v13);
  v12.receiver = v5;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_21454AED0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = &v1[OBJC_IVAR___BlastDoorAPSUserPayloadDeliveryContext_aPSUserPayloadDeliveryContext];
  *v3 = *a1;
  v3[8] = v2;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for _ObjCAPSUserPayloadDeliveryContextWrapper();
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_21454AFC4(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorAPSUserPayloadDeliveryContext_aPSUserPayloadDeliveryContext + 8);
  *a1 = *(v1 + OBJC_IVAR___BlastDoorAPSUserPayloadDeliveryContext_aPSUserPayloadDeliveryContext);
  *(a1 + 8) = v2;
}

uint64_t sub_21454B0B4()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSUserPayloadDeliveryContext_aPSUserPayloadDeliveryContext + 8))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSUserPayloadDeliveryContext_aPSUserPayloadDeliveryContext);
  }
}

id sub_21454B14C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = type metadata accessor for _ObjCAPSUserPayloadDeliveryContextWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorAPSUserPayloadDeliveryContext_aPSUserPayloadDeliveryContext];
  *v5 = v1;
  v5[8] = v2;
  v7.receiver = v4;
  v7.super_class = v3;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_21454B1B4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = type metadata accessor for _ObjCAPSUserPayloadDeliveryContextWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorAPSUserPayloadDeliveryContext_aPSUserPayloadDeliveryContext];
  *v5 = v1;
  v5[8] = v2;
  v7.receiver = v4;
  v7.super_class = v3;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_21454B21C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 41);
  v5 = &v1[OBJC_IVAR___BlastDoorAPSQuickRelayPluginRequest_aPSQuickRelayPluginRequest];
  v6 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 1) = v6;
  *(v5 + 4) = v2;
  v5[40] = v3;
  v5[41] = v4;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for _ObjCAPSQuickRelayPluginRequestWrapper();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_21454B27C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___BlastDoorAPSQuickRelayPluginRequest_aPSQuickRelayPluginRequest;
  v3 = *(v1 + OBJC_IVAR___BlastDoorAPSQuickRelayPluginRequest_aPSQuickRelayPluginRequest + 40);
  v4 = *(v1 + OBJC_IVAR___BlastDoorAPSQuickRelayPluginRequest_aPSQuickRelayPluginRequest + 41);
  *a1 = *(v1 + OBJC_IVAR___BlastDoorAPSQuickRelayPluginRequest_aPSQuickRelayPluginRequest);
  *(a1 + 8) = *(v2 + 8);
  *(a1 + 24) = *(v2 + 24);
  *(a1 + 40) = v3;
  *(a1 + 41) = v4;
}

uint64_t sub_21454B39C()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSQuickRelayPluginRequest_aPSQuickRelayPluginRequest);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSQuickRelayPluginRequest_aPSQuickRelayPluginRequest + 8);

  return v1;
}

uint64_t sub_21454B448()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSQuickRelayPluginRequest_aPSQuickRelayPluginRequest + 40))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSQuickRelayPluginRequest_aPSQuickRelayPluginRequest + 32);
  }
}

id sub_21454B554()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  v7 = *(v0 + 41);
  v8 = type metadata accessor for _ObjCAPSQuickRelayPluginRequestWrapper();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR___BlastDoorAPSQuickRelayPluginRequest_aPSQuickRelayPluginRequest];
  *v10 = v2;
  *(v10 + 1) = v1;
  *(v10 + 2) = v4;
  *(v10 + 3) = v3;
  *(v10 + 4) = v5;
  v10[40] = v6;
  v10[41] = v7;
  v12.receiver = v9;
  v12.super_class = v8;

  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_21454B5F8()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  v7 = *(v0 + 41);
  v8 = type metadata accessor for _ObjCAPSQuickRelayPluginRequestWrapper();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR___BlastDoorAPSQuickRelayPluginRequest_aPSQuickRelayPluginRequest];
  *v10 = v2;
  *(v10 + 1) = v1;
  *(v10 + 2) = v4;
  *(v10 + 3) = v3;
  *(v10 + 4) = v5;
  v10[40] = v6;
  v10[41] = v7;
  v12.receiver = v9;
  v12.super_class = v8;

  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_21454B73C@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorAPSQuickRelayAllocationStatus_aPSQuickRelayAllocationStatus + 16);
  v7[0] = *(v1 + OBJC_IVAR___BlastDoorAPSQuickRelayAllocationStatus_aPSQuickRelayAllocationStatus);
  v7[1] = v2;
  v4 = *(v1 + OBJC_IVAR___BlastDoorAPSQuickRelayAllocationStatus_aPSQuickRelayAllocationStatus + 48);
  v8 = *(v1 + OBJC_IVAR___BlastDoorAPSQuickRelayAllocationStatus_aPSQuickRelayAllocationStatus + 32);
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_21454B6E0(v7, &v6);
}

uint64_t sub_21454B874()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSQuickRelayAllocationStatus_aPSQuickRelayAllocationStatus + 8))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSQuickRelayAllocationStatus_aPSQuickRelayAllocationStatus);
  }
}

uint64_t sub_21454B8EC()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSQuickRelayAllocationStatus_aPSQuickRelayAllocationStatus + 24))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSQuickRelayAllocationStatus_aPSQuickRelayAllocationStatus + 16);
  }
}

uint64_t sub_21454B994()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSQuickRelayAllocationStatus_aPSQuickRelayAllocationStatus + 32);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSQuickRelayAllocationStatus_aPSQuickRelayAllocationStatus + 40));
  return v1;
}

id sub_21454BAAC()
{
  v1 = v0[1];
  v11[0] = *v0;
  v11[1] = v1;
  v2 = v0[3];
  v11[2] = v0[2];
  v11[3] = v2;
  v3 = type metadata accessor for _ObjCAPSQuickRelayAllocationStatusWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorAPSQuickRelayAllocationStatus_aPSQuickRelayAllocationStatus];
  v6 = v0[1];
  *v5 = *v0;
  *(v5 + 1) = v6;
  v7 = v0[3];
  *(v5 + 2) = v0[2];
  *(v5 + 3) = v7;
  sub_21454B6E0(v11, v10);
  v9.receiver = v4;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_21454BB34()
{
  v1 = v0[1];
  v12 = *v0;
  v13 = v1;
  v2 = v0[3];
  v14 = v0[2];
  v15 = v2;
  v3 = type metadata accessor for _ObjCAPSQuickRelayAllocationStatusWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorAPSQuickRelayAllocationStatus_aPSQuickRelayAllocationStatus];
  v6 = v15;
  v8 = v12;
  v7 = v13;
  *(v5 + 2) = v14;
  *(v5 + 3) = v6;
  *v5 = v8;
  *(v5 + 1) = v7;
  sub_21454B6E0(&v12, v11);
  v10.receiver = v4;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_21454BC54@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken + 80);
  v13 = *(v1 + OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken + 64);
  v2 = v13;
  v14[0] = v3;
  *(v14 + 9) = *(v1 + OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken + 89);
  v4 = *(v14 + 9);
  v5 = *(v1 + OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken + 16);
  v10[0] = *(v1 + OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken);
  v10[1] = v5;
  v6 = *(v1 + OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken + 48);
  v11 = *(v1 + OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken + 32);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  *(a1 + 89) = v4;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  return sub_21454BBF8(v10, &v9);
}

uint64_t sub_21454BD88()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken + 8));
  return v1;
}

uint64_t sub_21454BE50()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken + 16);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken + 24));
  return v1;
}

uint64_t sub_21454BEE8()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken + 40))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken + 32);
  }
}

uint64_t sub_21454BF14()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken + 48);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken + 56));
  return v1;
}

uint64_t sub_21454BF60()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken + 64);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken + 72));
  return v1;
}

id sub_21454BFAC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *(v3 + 88);
  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v6 = *(v3 + 80);
    sub_21402D9F8(v6, *(v3 + 88));
    v7 = sub_2146D8A38();
    sub_213FDC6BC(v6, v4);
    v5 = v7;
  }

  return v5;
}

uint64_t sub_21454C030()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken + 80);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken + 88));
  return v1;
}

uint64_t sub_21454C0C8()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken + 104))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken + 96);
  }
}

id sub_21454C1F4()
{
  v1 = v0[5];
  v13[4] = v0[4];
  v14[0] = v1;
  *(v14 + 9) = *(v0 + 89);
  v2 = v0[1];
  v13[0] = *v0;
  v13[1] = v2;
  v3 = v0[3];
  v13[2] = v0[2];
  v13[3] = v3;
  v4 = type metadata accessor for _ObjCAPSQuickRelaySelfAllocTokenWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken];
  v7 = v0[5];
  *(v6 + 4) = v0[4];
  *(v6 + 5) = v7;
  *(v6 + 89) = *(v0 + 89);
  v8 = v0[1];
  *v6 = *v0;
  *(v6 + 1) = v8;
  v9 = v0[3];
  *(v6 + 2) = v0[2];
  *(v6 + 3) = v9;
  sub_21454BBF8(v13, v12);
  v11.receiver = v5;
  v11.super_class = v4;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_21454C29C()
{
  v1 = v0[5];
  v19 = v0[4];
  v20[0] = v1;
  *(v20 + 9) = *(v0 + 89);
  v2 = v0[1];
  v15 = *v0;
  v16 = v2;
  v3 = v0[3];
  v17 = v0[2];
  v18 = v3;
  v4 = type metadata accessor for _ObjCAPSQuickRelaySelfAllocTokenWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken];
  v8 = v16;
  v7 = v17;
  *v6 = v15;
  *(v6 + 1) = v8;
  *(v6 + 2) = v7;
  v10 = v19;
  v9 = v20[0];
  v11 = v18;
  *(v6 + 89) = *(v20 + 9);
  *(v6 + 4) = v10;
  *(v6 + 5) = v9;
  *(v6 + 3) = v11;
  sub_21454BBF8(&v15, v14);
  v13.receiver = v5;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_21454C3F0@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorAPSQuickRelayPluginAllocation_aPSQuickRelayPluginAllocation + 48);
  v9 = *(v1 + OBJC_IVAR___BlastDoorAPSQuickRelayPluginAllocation_aPSQuickRelayPluginAllocation + 32);
  v10 = v2;
  v11 = *(v1 + OBJC_IVAR___BlastDoorAPSQuickRelayPluginAllocation_aPSQuickRelayPluginAllocation + 64);
  v3 = v11;
  v4 = *(v1 + OBJC_IVAR___BlastDoorAPSQuickRelayPluginAllocation_aPSQuickRelayPluginAllocation + 16);
  v8[0] = *(v1 + OBJC_IVAR___BlastDoorAPSQuickRelayPluginAllocation_aPSQuickRelayPluginAllocation);
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_21454C394(v8, &v7);
}

uint64_t sub_21454C500()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSQuickRelayPluginAllocation_aPSQuickRelayPluginAllocation);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAPSQuickRelayPluginAllocation_aPSQuickRelayPluginAllocation + 8);

  return v1;
}

uint64_t sub_21454C594()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSQuickRelayPluginAllocation_aPSQuickRelayPluginAllocation + 24))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSQuickRelayPluginAllocation_aPSQuickRelayPluginAllocation + 16);
  }
}

uint64_t sub_21454C60C()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAPSQuickRelayPluginAllocation_aPSQuickRelayPluginAllocation + 40))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAPSQuickRelayPluginAllocation_aPSQuickRelayPluginAllocation + 32);
  }
}

id sub_21454C638(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *(v3 + 56);
  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v6 = *(v3 + 48);
    sub_21402D9F8(v6, *(v3 + 56));
    v7 = sub_2146D8A38();
    sub_213FDC6BC(v6, v4);
    v5 = v7;
  }

  return v5;
}

uint64_t sub_21454C6BC()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSQuickRelayPluginAllocation_aPSQuickRelayPluginAllocation + 48);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSQuickRelayPluginAllocation_aPSQuickRelayPluginAllocation + 56));
  return v1;
}

id sub_21454C708(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *(v3 + 72);
  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v6 = *(v3 + 64);
    sub_21402D9F8(v6, *(v3 + 72));
    v7 = sub_2146D8A38();
    sub_213FDC6BC(v6, v4);
    v5 = v7;
  }

  return v5;
}

uint64_t sub_21454C78C()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAPSQuickRelayPluginAllocation_aPSQuickRelayPluginAllocation + 64);
  sub_213FDCA18(v1, *(v0 + OBJC_IVAR___BlastDoorAPSQuickRelayPluginAllocation_aPSQuickRelayPluginAllocation + 72));
  return v1;
}

id sub_21454C8A8()
{
  v1 = v0[3];
  v11[2] = v0[2];
  v11[3] = v1;
  v11[4] = v0[4];
  v2 = v0[1];
  v11[0] = *v0;
  v11[1] = v2;
  v3 = type metadata accessor for _ObjCAPSQuickRelayPluginAllocationWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorAPSQuickRelayPluginAllocation_aPSQuickRelayPluginAllocation];
  v6 = v0[3];
  *(v5 + 2) = v0[2];
  *(v5 + 3) = v6;
  *(v5 + 4) = v0[4];
  v7 = v0[1];
  *v5 = *v0;
  *(v5 + 1) = v7;
  sub_21454C394(v11, v10);
  v9.receiver = v4;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_21454C940()
{
  v1 = v0[3];
  v14 = v0[2];
  v15 = v1;
  v16 = v0[4];
  v2 = v0[1];
  v12 = *v0;
  v13 = v2;
  v3 = type metadata accessor for _ObjCAPSQuickRelayPluginAllocationWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorAPSQuickRelayPluginAllocation_aPSQuickRelayPluginAllocation];
  *v5 = v12;
  v6 = v16;
  v8 = v13;
  v7 = v14;
  *(v5 + 3) = v15;
  *(v5 + 4) = v6;
  *(v5 + 1) = v8;
  *(v5 + 2) = v7;
  sub_21454C394(&v12, v11);
  v10.receiver = v4;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_21454CB88(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = objc_allocWithZone(v4);
  sub_213FB568C(a1, v9 + *a2, a3);
  v12.receiver = v9;
  v12.super_class = v4;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  sub_213FB5844(a1, a4);
  return v10;
}

id sub_21454CCC8()
{
  v1 = type metadata accessor for AcceptChatCommand();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for AcceptChatCommand);
  v5 = type metadata accessor for _ObjCAcceptChatCommandWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorAcceptChatCommand_acceptChatCommand, type metadata accessor for AcceptChatCommand);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for AcceptChatCommand);
  return v7;
}

uint64_t sub_21454CF54()
{
  sub_21446887C(v0 + OBJC_IVAR___BlastDoorAnimatedImageFrame_animatedImageFrame, v22);
  result = sub_213FB2E54(v22, &v6, &qword_27C904858, &qword_214736F00);
  if (*(&v7 + 1))
  {
    sub_2144688B4(v22);
    v23[12] = v18;
    v23[13] = v19;
    v23[14] = v20;
    v24 = v21;
    v23[8] = v14;
    v23[9] = v15;
    v23[10] = v16;
    v23[11] = v17;
    v23[4] = v10;
    v23[5] = v11;
    v23[6] = v12;
    v23[7] = v13;
    v23[0] = v6;
    v23[1] = v7;
    v23[2] = v8;
    v23[3] = v9;
    sub_21407CF14(v23, v22);
    v2 = type metadata accessor for _ObjCImageWrapper();
    v3 = objc_allocWithZone(v2);
    sub_21407CF14(v22, v3 + OBJC_IVAR___BlastDoorImage_image);
    v5.receiver = v3;
    v5.super_class = v2;
    v4 = objc_msgSendSuper2(&v5, sel_init);
    sub_21406D2CC(v22);
    sub_21406D2CC(v23);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_21454D0C8()
{
  result = *(v0 + OBJC_IVAR___BlastDoorAnimatedImageFrame_animatedImageFrame + 440);
  if (*(v0 + OBJC_IVAR___BlastDoorAnimatedImageFrame_animatedImageFrame + 448))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_21454D1DC()
{
  *(v0 + OBJC_IVAR___BlastDoorAnimatedImageFrame_animatedImageFrame + 449);
  v1 = sub_2146D9588();

  return v1;
}

uint64_t sub_21454D338()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAnimatedImageFrame_animatedImageFrame + 456);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAnimatedImageFrame_animatedImageFrame + 464);

  return v1;
}

id sub_21454D3FC()
{
  sub_21446887C(v0, v6);
  v1 = type metadata accessor for _ObjCAnimatedImageFrameWrapper();
  v2 = objc_allocWithZone(v1);
  sub_21446887C(v6, v2 + OBJC_IVAR___BlastDoorAnimatedImageFrame_animatedImageFrame);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_2144688B4(v6);
  return v3;
}

id sub_21454D47C()
{
  sub_21446887C(v0, v6);
  v1 = type metadata accessor for _ObjCAnimatedImageFrameWrapper();
  v2 = objc_allocWithZone(v1);
  sub_21446887C(v6, v2 + OBJC_IVAR___BlastDoorAnimatedImageFrame_animatedImageFrame);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_2144688B4(v6);
  return v3;
}

id sub_21454D4FC(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = &v3[OBJC_IVAR___BlastDoorAnimatedImageMetadata_animatedImageMetadata];
  *v6 = *a1;
  *(v6 + 8) = *(a1 + 8);
  *(v6 + 3) = v4;
  *(v6 + 4) = v5;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_21454D564(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = &v1[OBJC_IVAR___BlastDoorAnimatedImageMetadata_animatedImageMetadata];
  *v4 = *a1;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 3) = v2;
  *(v4 + 4) = v3;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for _ObjCAnimatedImageMetadataWrapper();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_21454D5BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___BlastDoorAnimatedImageMetadata_animatedImageMetadata;
  v3 = *(v1 + OBJC_IVAR___BlastDoorAnimatedImageMetadata_animatedImageMetadata + 24);
  v4 = *(v1 + OBJC_IVAR___BlastDoorAnimatedImageMetadata_animatedImageMetadata + 32);
  *a1 = *(v1 + OBJC_IVAR___BlastDoorAnimatedImageMetadata_animatedImageMetadata);
  *(a1 + 8) = *(v2 + 8);
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
}

double sub_21454D720()
{
  result = *(v0 + OBJC_IVAR___BlastDoorAnimatedImageMetadata_animatedImageMetadata + 8);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAnimatedImageMetadata_animatedImageMetadata + 16);
  return result;
}

uint64_t sub_21454D794()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAnimatedImageMetadata_animatedImageMetadata + 24);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAnimatedImageMetadata_animatedImageMetadata + 32);

  return v1;
}

id sub_21454D890()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v5 = v0[3];
  v4 = v0[4];
  v6 = type metadata accessor for _ObjCAnimatedImageMetadataWrapper();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BlastDoorAnimatedImageMetadata_animatedImageMetadata];
  *v8 = v1;
  *(v8 + 1) = v2;
  *(v8 + 2) = v3;
  *(v8 + 3) = v5;
  *(v8 + 4) = v4;
  v10.receiver = v7;
  v10.super_class = v6;

  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_21454D91C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v5 = v0[3];
  v4 = v0[4];
  v6 = type metadata accessor for _ObjCAnimatedImageMetadataWrapper();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BlastDoorAnimatedImageMetadata_animatedImageMetadata];
  *v8 = v1;
  *(v8 + 1) = v2;
  *(v8 + 2) = v3;
  *(v8 + 3) = v5;
  *(v8 + 4) = v4;
  v10.receiver = v7;
  v10.super_class = v6;

  return objc_msgSendSuper2(&v10, sel_init);
}

__n128 sub_21454D9D4@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorBaseWritingDirectionAttribute_baseWritingDirectionAttribute + 16);
  result = *(v1 + OBJC_IVAR___BlastDoorBaseWritingDirectionAttribute_baseWritingDirectionAttribute);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

unint64_t sub_21454DA44()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorBaseWritingDirectionAttribute_baseWritingDirectionAttribute + 16);
  if (v1 <= 2)
  {
    return v1 - 1;
  }

  __break(1u);
  return result;
}

uint64_t _ObjCEnumBaseWritingDirectionAttributeWritingDirection.init(rawValue:)(uint64_t result)
{
  if ((result + 1) >= 3)
  {
    return 0;
  }

  return result;
}

__n128 sub_21454DB64@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorMessagePartAttribute_messagePartAttribute + 16);
  result = *(v1 + OBJC_IVAR___BlastDoorMessagePartAttribute_messagePartAttribute);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

__n128 sub_21454DCBC@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorBreadcrumbTextOptionFlagsAttribute_breadcrumbTextOptionFlagsAttribute + 16);
  result = *(v1 + OBJC_IVAR___BlastDoorBreadcrumbTextOptionFlagsAttribute_breadcrumbTextOptionFlagsAttribute);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

id sub_21454DCF0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v6 = *v3;
  v7 = *(v3 + 2);
  sub_2146D9608();
  v4 = sub_2146D9588();

  return v4;
}

uint64_t sub_21454DEC8()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorBreadcrumbTextMarkerAttribute_breadcrumbTextMarkerAttribute + 16);
  v2 = *(v0 + OBJC_IVAR___BlastDoorBreadcrumbTextMarkerAttribute_breadcrumbTextMarkerAttribute + 24);

  return v1;
}

uint64_t sub_21454E008@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *a1;
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  *a2 = *v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v4;
}

id sub_21454E038(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v6 = *v3;
  v7 = *(v3 + 2);
  v8 = *(v3 + 3);

  sub_2146D9608();
  v4 = sub_2146D9588();

  return v4;
}

uint64_t sub_21454E0D4()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorMentionAttribute_mentionAttribute + 16);
  v2 = *(v0 + OBJC_IVAR___BlastDoorMentionAttribute_mentionAttribute + 24);

  return v1;
}

id sub_21454E1BC(uint64_t (*a1)(void), void *a2)
{
  v10 = *v2;
  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  v6 = a1();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[*a2];
  *v8 = v10;
  *(v8 + 2) = v5;
  *(v8 + 3) = v4;
  v11.receiver = v7;
  v11.super_class = v6;

  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_21454E25C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  v12 = *v4;
  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  v8 = a3();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[*a4];
  *v10 = v12;
  *(v10 + 2) = v7;
  *(v10 + 3) = v6;
  v13.receiver = v9;
  v13.super_class = v8;

  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_21454E2E8(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = *(a1 + 16);
  v7 = &v5[*a2];
  *v7 = *a1;
  v7[16] = v6;
  v9.receiver = v5;
  v9.super_class = v2;
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_21454E370(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  v5 = &v3[*a2];
  *v5 = *a1;
  v5[16] = v4;
  v7.receiver = v3;
  v7.super_class = a3();
  return objc_msgSendSuper2(&v7, sel_init);
}

__n128 sub_21454E3C0@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorTextEffectAttribute_textEffectAttribute + 16);
  result = *(v1 + OBJC_IVAR___BlastDoorTextEffectAttribute_textEffectAttribute);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

id sub_21454E3F4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v6 = *v3;
  v7 = *(v3 + 16);
  sub_2146D9608();
  v4 = sub_2146D9588();

  return v4;
}

unint64_t sub_21454E4AC()
{
  result = sub_213FCF7DC(*(v0 + OBJC_IVAR___BlastDoorTextEffectAttribute_textEffectAttribute + 16));
  if (v2)
  {
    __break(1u);
  }

  return result;
}

id sub_21454E590(uint64_t (*a1)(void), void *a2)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 16);
  v7 = a1();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[*a2];
  *v9 = v4;
  *(v9 + 1) = v5;
  v9[16] = v6;
  v11.receiver = v8;
  v11.super_class = v7;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_21454E624(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  v6 = *v4;
  v7 = v4[1];
  v8 = *(v4 + 16);
  v9 = a3();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[*a4];
  *v11 = v6;
  *(v11 + 1) = v7;
  v11[16] = v8;
  v13.receiver = v10;
  v13.super_class = v9;
  return objc_msgSendSuper2(&v13, sel_init);
}

__n128 sub_21454E6C4@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + OBJC_IVAR___BlastDoorTextBoldAttribute_textBoldAttribute);
  *a1 = result;
  return result;
}

__n128 sub_21454E7E8@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + OBJC_IVAR___BlastDoorTextItalicAttribute_textItalicAttribute);
  *a1 = result;
  return result;
}

__n128 sub_21454E90C@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + OBJC_IVAR___BlastDoorTextUnderlineAttribute_textUnderlineAttribute);
  *a1 = result;
  return result;
}

__n128 sub_21454EA30@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + OBJC_IVAR___BlastDoorTextStrikethroughAttribute_textStrikethroughAttribute);
  *a1 = result;
  return result;
}

id sub_21454EA58(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + *a3);
  sub_2146D9608();
  v3 = sub_2146D9588();

  return v3;
}

id sub_21454EB6C(uint64_t (*a1)(void), void *a2)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = a1();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[*a2];
  *v8 = v4;
  *(v8 + 1) = v5;
  v10.receiver = v7;
  v10.super_class = v6;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_21454EBF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  v6 = *v4;
  v7 = v4[1];
  v8 = a3();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[*a4];
  *v10 = v6;
  *(v10 + 1) = v7;
  v12.receiver = v9;
  v12.super_class = v8;
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_21454ECD0(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  sub_213FB568C(a1, v5 + *a2, a3);
  v11.receiver = v5;
  v11.super_class = a4(0);
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_213FB5844(a1, a5);
  return v9;
}

id sub_21454EDB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4, uint64_t (*a5)(void))
{
  v8 = a3(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_213FB568C(a1 + *a4, &v13 - v10, a5);
  sub_2146D9608();
  v11 = sub_2146D9588();

  return v11;
}

uint64_t sub_21454F018@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LinkAttribute(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v1 + OBJC_IVAR___BlastDoorLinkAttribute_linkAttribute[0], v7, type metadata accessor for LinkAttribute);
  v8 = *(v4 + 28);
  v9 = sub_2146D8958();
  return (*(*(v9 - 8) + 32))(a1, &v7[v8], v9);
}

id LinkAttribute.bridgedToObjectiveC.getter()
{
  v1 = type metadata accessor for LinkAttribute(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for LinkAttribute);
  v5 = type metadata accessor for _ObjCLinkAttributeWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorLinkAttribute_linkAttribute[0], type metadata accessor for LinkAttribute);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for LinkAttribute);
  return v7;
}

id sub_21454F2E8(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 16);
  v5 = &v3[OBJC_IVAR___BlastDoorLinkIsRichLinkAttribute_linkIsRichLinkAttribute];
  *v5 = *a1;
  v5[16] = v4;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_21454F348(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = &v1[OBJC_IVAR___BlastDoorLinkIsRichLinkAttribute_linkIsRichLinkAttribute];
  *v3 = *a1;
  v3[16] = v2;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for _ObjCLinkIsRichLinkAttributeWrapper();
  return objc_msgSendSuper2(&v5, sel_init);
}

__n128 sub_21454F398@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorLinkIsRichLinkAttribute_linkIsRichLinkAttribute + 16);
  result = *(v1 + OBJC_IVAR___BlastDoorLinkIsRichLinkAttribute_linkIsRichLinkAttribute);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

uint64_t sub_21454F43C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  result = *v3;
  if (__OFSUB__(v3[1], *v3))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21454F464(void *a1)
{
  v2 = (v1 + *a1);
  result = *v2;
  if (__OFSUB__(v2[1], *v2))
  {
    __break(1u);
  }

  return result;
}

id LinkIsRichLinkAttribute.bridgedToObjectiveC.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  IsRichLinkAttributeWrapper = type metadata accessor for _ObjCLinkIsRichLinkAttributeWrapper();
  v5 = objc_allocWithZone(IsRichLinkAttributeWrapper);
  v6 = &v5[OBJC_IVAR___BlastDoorLinkIsRichLinkAttribute_linkIsRichLinkAttribute];
  *v6 = v1;
  *(v6 + 1) = v2;
  v6[16] = v3;
  v8.receiver = v5;
  v8.super_class = IsRichLinkAttributeWrapper;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_21454F588()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  IsRichLinkAttributeWrapper = type metadata accessor for _ObjCLinkIsRichLinkAttributeWrapper();
  v5 = objc_allocWithZone(IsRichLinkAttributeWrapper);
  v6 = &v5[OBJC_IVAR___BlastDoorLinkIsRichLinkAttribute_linkIsRichLinkAttribute];
  *v6 = v1;
  *(v6 + 1) = v2;
  v6[16] = v3;
  v8.receiver = v5;
  v8.super_class = IsRichLinkAttributeWrapper;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_21454F61C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorGeneralAttachmentInfo_generalAttachmentInfo + 8);
  *a1 = *(v1 + OBJC_IVAR___BlastDoorGeneralAttachmentInfo_generalAttachmentInfo);
  a1[1] = v2;
}

uint64_t sub_21454F654()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorGeneralAttachmentInfo_generalAttachmentInfo);
  v2 = *(v0 + OBJC_IVAR___BlastDoorGeneralAttachmentInfo_generalAttachmentInfo + 8);

  return v1;
}

id sub_21454F75C(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 32);
  v5 = &v3[OBJC_IVAR___BlastDoorAudioMessageAttachmentInfo_audioMessageAttachmentInfo];
  v6 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 1) = v6;
  v5[32] = v4;
  *(v5 + 40) = *(a1 + 40);
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_21454F7C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = &v1[OBJC_IVAR___BlastDoorAudioMessageAttachmentInfo_audioMessageAttachmentInfo];
  v4 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v4;
  v3[32] = v2;
  *(v3 + 40) = *(a1 + 40);
  v6.receiver = v1;
  v6.super_class = type metadata accessor for _ObjCAudioMessageAttachmentInfoWrapper();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_21454F81C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___BlastDoorAudioMessageAttachmentInfo_audioMessageAttachmentInfo;
  v4 = *(v1 + OBJC_IVAR___BlastDoorAudioMessageAttachmentInfo_audioMessageAttachmentInfo);
  v3 = *(v1 + OBJC_IVAR___BlastDoorAudioMessageAttachmentInfo_audioMessageAttachmentInfo + 8);
  v5 = *(v1 + OBJC_IVAR___BlastDoorAudioMessageAttachmentInfo_audioMessageAttachmentInfo + 16);
  v6 = *(v1 + OBJC_IVAR___BlastDoorAudioMessageAttachmentInfo_audioMessageAttachmentInfo + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;

  sub_213FDC9D0(v5, v6);
}

id sub_21454FA40()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v7 = v0[5];
  v6 = v0[6];
  v8 = type metadata accessor for _ObjCAudioMessageAttachmentInfoWrapper();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR___BlastDoorAudioMessageAttachmentInfo_audioMessageAttachmentInfo];
  *v10 = v2;
  *(v10 + 1) = v1;
  *(v10 + 2) = v3;
  *(v10 + 3) = v4;
  v10[32] = v5;
  *(v10 + 5) = v7;
  *(v10 + 6) = v6;

  sub_213FDC9D0(v3, v4);
  v12.receiver = v9;
  v12.super_class = v8;

  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_21454FAF4()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v7 = v0[5];
  v6 = v0[6];
  v8 = type metadata accessor for _ObjCAudioMessageAttachmentInfoWrapper();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR___BlastDoorAudioMessageAttachmentInfo_audioMessageAttachmentInfo];
  *v10 = v2;
  *(v10 + 1) = v1;
  *(v10 + 2) = v3;
  *(v10 + 3) = v4;
  v10[32] = v5;
  *(v10 + 5) = v7;
  *(v10 + 6) = v6;

  sub_213FDC9D0(v3, v4);
  v12.receiver = v9;
  v12.super_class = v8;

  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_21454FCD0(const void *a1)
{
  v3 = objc_allocWithZone(v1);
  memcpy(&v3[OBJC_IVAR___BlastDoorEmojiImageAttachmentInfo_emojiImageAttachmentInfo], a1, 0x111uLL);
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_21454FD38(void *__src)
{
  memcpy(&v1[OBJC_IVAR___BlastDoorEmojiImageAttachmentInfo_emojiImageAttachmentInfo], __src, 0x111uLL);
  v3.receiver = v1;
  v3.super_class = type metadata accessor for _ObjCEmojiImageAttachmentInfoWrapper();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_21454FD84@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + OBJC_IVAR___BlastDoorEmojiImageAttachmentInfo_emojiImageAttachmentInfo), 0x111uLL);
  memcpy(a1, (v1 + OBJC_IVAR___BlastDoorEmojiImageAttachmentInfo_emojiImageAttachmentInfo), 0x111uLL);
  return sub_2142E346C(__dst, &v4);
}

uint64_t sub_21454FF78()
{
  if (*(v0 + OBJC_IVAR___BlastDoorEmojiImageAttachmentInfo_emojiImageAttachmentInfo + 144))
  {
    v1 = *(v0 + OBJC_IVAR___BlastDoorEmojiImageAttachmentInfo_emojiImageAttachmentInfo + 136);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2145500AC()
{
  if (*(v0 + OBJC_IVAR___BlastDoorEmojiImageAttachmentInfo_emojiImageAttachmentInfo + 184))
  {
    v1 = *(v0 + OBJC_IVAR___BlastDoorEmojiImageAttachmentInfo_emojiImageAttachmentInfo + 176);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2145501FC()
{
  if (*(v0 + OBJC_IVAR___BlastDoorEmojiImageAttachmentInfo_emojiImageAttachmentInfo + 224) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR___BlastDoorEmojiImageAttachmentInfo_emojiImageAttachmentInfo + 216);

    return v1;
  }

  return result;
}

uint64_t sub_214550350()
{
  if (*(v0 + OBJC_IVAR___BlastDoorEmojiImageAttachmentInfo_emojiImageAttachmentInfo + 264) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR___BlastDoorEmojiImageAttachmentInfo_emojiImageAttachmentInfo + 256);

    return v1;
  }

  return result;
}

id sub_21455049C()
{
  memcpy(__dst, v0, 0x111uLL);
  v1 = type metadata accessor for _ObjCEmojiImageAttachmentInfoWrapper();
  v2 = objc_allocWithZone(v1);
  memcpy(&v2[OBJC_IVAR___BlastDoorEmojiImageAttachmentInfo_emojiImageAttachmentInfo], v0, 0x111uLL);
  sub_2142E346C(__dst, v5);
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_214550520()
{
  memcpy(__dst, v0, 0x111uLL);
  v1 = type metadata accessor for _ObjCEmojiImageAttachmentInfoWrapper();
  v2 = objc_allocWithZone(v1);
  memcpy(&v2[OBJC_IVAR___BlastDoorEmojiImageAttachmentInfo_emojiImageAttachmentInfo], __dst, 0x111uLL);
  sub_2142E346C(__dst, v5);
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_2145505D0@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo), 0x139uLL);
  memcpy(a1, (v1 + OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo), 0x139uLL);
  return sub_2142E371C(__dst, &v4);
}

id sub_21455070C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  if (*(v3 + 104))
  {
    v4 = *(v3 + 96);
    v5 = *(v3 + 104);

    v6 = sub_2146D9588();

    return v6;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2145507C0(void *a1)
{
  v2 = v1 + *a1;
  if (*(v2 + 104))
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);

    return v3;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21455090C()
{
  if (*(v0 + OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 144) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 136);

    return v1;
  }

  return result;
}

uint64_t sub_214550A60()
{
  if (*(v0 + OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 184) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 176);

    return v1;
  }

  return result;
}

uint64_t sub_214550B44()
{
  if (*(v0 + OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 208))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 200);
  }
}

uint64_t sub_214550BBC()
{
  if (*(v0 + OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 224))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 216);
  }
}

double sub_214550C38()
{
  result = *(v0 + OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 232);
  if (*(v0 + OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 240))
  {
    return 0.0;
  }

  return result;
}

double sub_214550CBC()
{
  result = *(v0 + OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 248);
  v2 = *(v0 + OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 256);
  if (*(v0 + OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 264))
  {
    result = 0.0;
  }

  *(v0 + OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 264);
  return result;
}

double sub_214550D40()
{
  result = *(v0 + OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 272);
  if (*(v0 + OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 280))
  {
    return 0.0;
  }

  return result;
}

double sub_214550DC0()
{
  result = *(v0 + OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 288);
  if (*(v0 + OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 296))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_214550E64()
{
  if (*(v0 + OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 312))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 304);
  }
}

id sub_214550F44()
{
  memcpy(__dst, v0, 0x139uLL);
  v1 = type metadata accessor for _ObjCStickerAttachmentInfoWrapper();
  v2 = objc_allocWithZone(v1);
  memcpy(&v2[OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo], v0, 0x139uLL);
  sub_2142E371C(__dst, v5);
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_214550FC8()
{
  memcpy(__dst, v0, 0x139uLL);
  v1 = type metadata accessor for _ObjCStickerAttachmentInfoWrapper();
  v2 = objc_allocWithZone(v1);
  memcpy(&v2[OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo], __dst, 0x139uLL);
  sub_2142E371C(__dst, v5);
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_21455104C(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo];
  v5 = *(a1 + 144);
  *(v4 + 8) = *(a1 + 128);
  *(v4 + 9) = v5;
  *(v4 + 10) = *(a1 + 160);
  *(v4 + 88) = *(a1 + 176);
  v6 = *(a1 + 80);
  *(v4 + 4) = *(a1 + 64);
  *(v4 + 5) = v6;
  v7 = *(a1 + 112);
  *(v4 + 6) = *(a1 + 96);
  *(v4 + 7) = v7;
  v8 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v8;
  v9 = *(a1 + 48);
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 3) = v9;
  v11.receiver = v3;
  v11.super_class = v1;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_2145510D4(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo];
  v3 = *(a1 + 144);
  *(v2 + 8) = *(a1 + 128);
  *(v2 + 9) = v3;
  *(v2 + 10) = *(a1 + 160);
  *(v2 + 88) = *(a1 + 176);
  v4 = *(a1 + 80);
  *(v2 + 4) = *(a1 + 64);
  *(v2 + 5) = v4;
  v5 = *(a1 + 112);
  *(v2 + 6) = *(a1 + 96);
  *(v2 + 7) = v5;
  v6 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 1) = v6;
  v7 = *(a1 + 48);
  *(v2 + 2) = *(a1 + 32);
  *(v2 + 3) = v7;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for _ObjCAttributionInfoWrapper();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_21455114C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo;
  v3 = *(v1 + OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 144);
  v4 = *(v1 + OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 112);
  v26 = *(v1 + OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 128);
  v27 = v3;
  v5 = *(v1 + OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 144);
  v28 = *(v1 + OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 160);
  v6 = *(v1 + OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 80);
  v8 = *(v1 + OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 48);
  v22 = *(v1 + OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 64);
  v7 = v22;
  v23 = v6;
  v9 = *(v1 + OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 80);
  v10 = *(v1 + OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 112);
  v24 = *(v1 + OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 96);
  v11 = v24;
  v25 = v10;
  v12 = *(v1 + OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 16);
  v19[0] = *(v1 + OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo);
  v19[1] = v12;
  v13 = *(v1 + OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 48);
  v15 = *(v1 + OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo);
  v14 = *(v1 + OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 16);
  v20 = *(v1 + OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 32);
  v16 = v20;
  v21 = v13;
  *(a1 + 128) = v26;
  *(a1 + 144) = v5;
  *(a1 + 160) = *(v2 + 160);
  *(a1 + 64) = v7;
  *(a1 + 80) = v9;
  *(a1 + 96) = v11;
  *(a1 + 112) = v4;
  *a1 = v15;
  *(a1 + 16) = v14;
  v29 = *(v2 + 176);
  *(a1 + 176) = *(v2 + 176);
  *(a1 + 32) = v16;
  *(a1 + 48) = v8;
  return sub_2142E4A90(v19, v18);
}

uint64_t sub_214551344()
{
  if (*(v0 + OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 8))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo);
  }
}

double sub_214551408()
{
  result = *(v0 + OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 88);
  if (*(v0 + OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 96))
  {
    return 0.0;
  }

  return result;
}

double sub_214551488()
{
  result = *(v0 + OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 104);
  if (*(v0 + OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 112))
  {
    return 0.0;
  }

  return result;
}

id sub_214551568()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 136);
  v9 = *(v0 + OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 120);
  v10 = v1;
  v11 = *(v0 + OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 152);
  v12 = *(v0 + OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 168);
  v2 = *(v0 + OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 176);
  if ((v2 & 0xFF00) == 0x200)
  {
    return 0;
  }

  v4 = type metadata accessor for _ObjCAttributionInfo_PreviewGenerationConstraintsWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints];
  v7 = v10;
  *v6 = v9;
  *(v6 + 1) = v7;
  *(v6 + 2) = v11;
  *(v6 + 6) = v12;
  *(v6 + 28) = v2;
  v8.receiver = v5;
  v8.super_class = v4;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_214551614(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints];
  v5 = a1[1];
  *v4 = *a1;
  *(v4 + 1) = v5;
  *(v4 + 2) = a1[2];
  *(v4 + 42) = *(a1 + 42);
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_21455175C()
{
  v1 = *(v0 + 144);
  v17[8] = *(v0 + 128);
  v17[9] = v1;
  v17[10] = *(v0 + 160);
  v18 = *(v0 + 176);
  v2 = *(v0 + 80);
  v17[4] = *(v0 + 64);
  v17[5] = v2;
  v3 = *(v0 + 112);
  v17[6] = *(v0 + 96);
  v17[7] = v3;
  v4 = *(v0 + 16);
  v17[0] = *v0;
  v17[1] = v4;
  v5 = *(v0 + 48);
  v17[2] = *(v0 + 32);
  v17[3] = v5;
  v6 = type metadata accessor for _ObjCAttributionInfoWrapper();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo];
  v9 = *(v0 + 144);
  *(v8 + 8) = *(v0 + 128);
  *(v8 + 9) = v9;
  *(v8 + 10) = *(v0 + 160);
  *(v8 + 88) = *(v0 + 176);
  v10 = *(v0 + 80);
  *(v8 + 4) = *(v0 + 64);
  *(v8 + 5) = v10;
  v11 = *(v0 + 112);
  *(v8 + 6) = *(v0 + 96);
  *(v8 + 7) = v11;
  v12 = *(v0 + 16);
  *v8 = *v0;
  *(v8 + 1) = v12;
  v13 = *(v0 + 48);
  *(v8 + 2) = *(v0 + 32);
  *(v8 + 3) = v13;
  sub_2142E4A90(v17, v16);
  v15.receiver = v7;
  v15.super_class = v6;
  return objc_msgSendSuper2(&v15, sel_init);
}

id sub_214551838()
{
  v1 = v0[9];
  v29 = v0[8];
  v30 = v1;
  v31 = v0[10];
  v32 = *(v0 + 88);
  v2 = v0[5];
  v25 = v0[4];
  v26 = v2;
  v3 = v0[7];
  v27 = v0[6];
  v28 = v3;
  v4 = v0[1];
  v21 = *v0;
  v22 = v4;
  v5 = v0[3];
  v23 = v0[2];
  v24 = v5;
  v6 = type metadata accessor for _ObjCAttributionInfoWrapper();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo];
  v9 = v24;
  v11 = v21;
  v10 = v22;
  *(v8 + 2) = v23;
  *(v8 + 3) = v9;
  *v8 = v11;
  *(v8 + 1) = v10;
  v12 = v28;
  v14 = v25;
  v13 = v26;
  *(v8 + 6) = v27;
  *(v8 + 7) = v12;
  *(v8 + 4) = v14;
  *(v8 + 5) = v13;
  v16 = v30;
  v15 = v31;
  v17 = v29;
  *(v8 + 88) = v32;
  *(v8 + 9) = v16;
  *(v8 + 10) = v15;
  *(v8 + 8) = v17;
  sub_2142E4A90(&v21, v20);
  v19.receiver = v7;
  v19.super_class = v6;
  return objc_msgSendSuper2(&v19, sel_init);
}

id sub_214551AF8()
{
  v1 = v0 + OBJC_IVAR___BlastDoorBackground_background;
  v2 = type metadata accessor for Background();
  sub_2140A6810(v1 + *(v2 + 20), v8);
  v3 = type metadata accessor for _ObjCWatchBackgroundWrapper();
  v4 = objc_allocWithZone(v3);
  sub_2140A6810(v8, v4 + OBJC_IVAR___BlastDoorWatchBackground_watchBackground);
  v7.receiver = v4;
  v7.super_class = v3;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  sub_2142E4DA0(v8);
  return v5;
}

id sub_214551B90(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_2140A6810(a1, v3 + OBJC_IVAR___BlastDoorWatchBackground_watchBackground);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_2142E4DA0(a1);
  return v4;
}

id Background.bridgedToObjectiveC.getter()
{
  v1 = type metadata accessor for Background();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for Background);
  v5 = type metadata accessor for _ObjCBackgroundWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorBackground_background, type metadata accessor for Background);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for Background);
  return v7;
}

id sub_214551DF8(uint64_t a1)
{
  sub_2140A6810(a1, v1 + OBJC_IVAR___BlastDoorWatchBackground_watchBackground);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for _ObjCWatchBackgroundWrapper();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_2142E4DA0(a1);
  return v3;
}

uint64_t sub_214551F28()
{
  sub_2140A6810(v0 + OBJC_IVAR___BlastDoorWatchBackground_watchBackground, v22);
  result = sub_213FB2E54(v22, &v6, &qword_27C904858, &qword_214736F00);
  if (*(&v7 + 1))
  {
    sub_2142E4DA0(v22);
    v23[12] = v18;
    v23[13] = v19;
    v23[14] = v20;
    v24 = v21;
    v23[8] = v14;
    v23[9] = v15;
    v23[10] = v16;
    v23[11] = v17;
    v23[4] = v10;
    v23[5] = v11;
    v23[6] = v12;
    v23[7] = v13;
    v23[0] = v6;
    v23[1] = v7;
    v23[2] = v8;
    v23[3] = v9;
    sub_21407CF14(v23, v22);
    v2 = type metadata accessor for _ObjCImageWrapper();
    v3 = objc_allocWithZone(v2);
    sub_21407CF14(v22, v3 + OBJC_IVAR___BlastDoorImage_image);
    v5.receiver = v3;
    v5.super_class = v2;
    v4 = objc_msgSendSuper2(&v5, sel_init);
    sub_21406D2CC(v22);
    sub_21406D2CC(v23);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2145520D4()
{
  sub_2140A6810(v0 + OBJC_IVAR___BlastDoorWatchBackground_watchBackground, v2);
  if ((v2[464] & 1) == 0)
  {
    return sub_2142E4DA0(v2);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2145521F0()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorWatchBackground_watchBackground + 472);
  v2 = *(v0 + OBJC_IVAR___BlastDoorWatchBackground_watchBackground + 480);

  return v1;
}

id sub_2145522B4()
{
  sub_2140A6810(v0, v6);
  v1 = type metadata accessor for _ObjCWatchBackgroundWrapper();
  v2 = objc_allocWithZone(v1);
  sub_2140A6810(v6, v2 + OBJC_IVAR___BlastDoorWatchBackground_watchBackground);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_2142E4DA0(v6);
  return v3;
}

id sub_214552334()
{
  sub_2140A6810(v0, v6);
  v1 = type metadata accessor for _ObjCWatchBackgroundWrapper();
  v2 = objc_allocWithZone(v1);
  sub_2140A6810(v6, v2 + OBJC_IVAR___BlastDoorWatchBackground_watchBackground);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_2142E4DA0(v6);
  return v3;
}

id sub_2145525B4()
{
  v1 = type metadata accessor for BalloonPlugin.Payload(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorBalloonPlugin_balloonPlugin, v4, type metadata accessor for BalloonPlugin.Payload);
  v5 = type metadata accessor for _ObjCEnumBalloonPluginPayloadWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorBalloonPluginPayloadWrapper_balloonPlugin_Payload, type metadata accessor for BalloonPlugin.Payload);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for BalloonPlugin.Payload);
  return v7;
}

uint64_t sub_21455282C()
{
  v1 = type metadata accessor for BalloonPlugin(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorBalloonPlugin_balloonPlugin, v5, type metadata accessor for BalloonPlugin);
  v6 = &v5[*(v2 + 28)];
  if (*(v6 + 3))
  {
    v7 = *(v6 + 2);
    v8 = *(v6 + 3);

    sub_213FB5844(v5, type metadata accessor for BalloonPlugin);
    return v7;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2145529E4()
{
  v1 = v0 + OBJC_IVAR___BlastDoorBalloonPlugin_balloonPlugin;
  v2 = *(v1 + *(type metadata accessor for BalloonPlugin(0) + 28));
  v3 = *(v2 + 16);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v43 = MEMORY[0x277D84F90];
    sub_2146D9FB8();
    v5 = (v2 + 32);
    v6 = type metadata accessor for _ObjCAttributionInfoWrapper();
    for (i = v3 - 1; ; --i)
    {
      v8 = *v5;
      v9 = v5[1];
      v10 = v5[3];
      v33 = v5[2];
      v34 = v10;
      v31 = v8;
      v32 = v9;
      v11 = v5[4];
      v12 = v5[5];
      v13 = v5[7];
      v37 = v5[6];
      v38 = v13;
      v35 = v11;
      v36 = v12;
      v14 = v5[8];
      v15 = v5[9];
      v16 = v5[10];
      v42 = *(v5 + 88);
      v40 = v15;
      v41 = v16;
      v39 = v14;
      v17 = objc_allocWithZone(v6);
      v18 = &v17[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo];
      v19 = v34;
      v21 = v31;
      v20 = v32;
      *(v18 + 2) = v33;
      *(v18 + 3) = v19;
      *v18 = v21;
      *(v18 + 1) = v20;
      v22 = v38;
      v24 = v35;
      v23 = v36;
      *(v18 + 6) = v37;
      *(v18 + 7) = v22;
      *(v18 + 4) = v24;
      *(v18 + 5) = v23;
      v26 = v40;
      v25 = v41;
      v27 = v39;
      *(v18 + 88) = v42;
      *(v18 + 9) = v26;
      *(v18 + 10) = v25;
      *(v18 + 8) = v27;
      sub_2142E4A90(&v31, v30);
      v29.receiver = v17;
      v29.super_class = v6;
      objc_msgSendSuper2(&v29, sel_init);
      sub_2146D9F98();
      v28 = *(v43 + 16);
      sub_2146D9FC8();
      sub_2146D9FD8();
      sub_2146D9FA8();
      if (!i)
      {
        break;
      }

      v5 = (v5 + 184);
    }

    return v43;
  }

  return result;
}

id sub_214552C14()
{
  v1 = v0 + OBJC_IVAR___BlastDoorBalloonPlugin_balloonPlugin;
  v2 = (v1 + *(type metadata accessor for BalloonPlugin(0) + 36));
  if (!*v2)
  {
    return 0;
  }

  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  return sub_214664BB8();
}

uint64_t sub_214552DBC()
{
  v1 = type metadata accessor for BalloonPlugin(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorBalloonPlugin_balloonPlugin, v5, type metadata accessor for BalloonPlugin);
  v6 = &v5[*(v2 + 48)];
  v7 = *(v6 + 2);
  if (v7)
  {
    v8 = *(v6 + 2);

    sub_213FB5844(v5, type metadata accessor for BalloonPlugin);
    return v7;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214553028()
{
  v1 = type metadata accessor for BalloonPlugin(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorBalloonPlugin_balloonPlugin, v5, type metadata accessor for BalloonPlugin);
  v6 = &v5[*(v2 + 52)];
  if (*(v6 + 3) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v7 = *(v6 + 2);
    v8 = *(v6 + 3);

    sub_213FB5844(v5, type metadata accessor for BalloonPlugin);
    return v7;
  }

  return result;
}

uint64_t sub_214553214()
{
  v1 = type metadata accessor for BalloonPlugin(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v19 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = OBJC_IVAR___BlastDoorBalloonPlugin_balloonPlugin;
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorBalloonPlugin_balloonPlugin, &v19 - v9, type metadata accessor for BalloonPlugin);
  v12 = 0;
  v13 = &v10[*(v1 + 48)];
  if ((v13[16] & 1) == 0)
  {
    v12 = *v13;
  }

  sub_213FB5844(v10, type metadata accessor for BalloonPlugin);
  sub_213FB568C(v0 + v11, v8, type metadata accessor for BalloonPlugin);
  v14 = &v8[*(v1 + 48)];
  if (v14[16])
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v14 + 1);
  }

  sub_213FB5844(v8, type metadata accessor for BalloonPlugin);
  sub_213FB568C(v0 + v11, v5, type metadata accessor for BalloonPlugin);
  v16 = &v5[*(v1 + 48)];
  if (v16[16])
  {
    v17 = 0;
  }

  else
  {
    v17 = *v16;
  }

  result = sub_213FB5844(v5, type metadata accessor for BalloonPlugin);
  if (!__OFSUB__(v15, v17))
  {
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_214553518()
{
  v1 = type metadata accessor for BalloonPlugin(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorBalloonPlugin_balloonPlugin, v5, type metadata accessor for BalloonPlugin);
  v6 = &v5[*(v2 + 60)];
  if (v6[25])
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v7 = v6[24];
    sub_213FB5844(v5, type metadata accessor for BalloonPlugin);
    return (v7 & 1) == 0;
  }

  return result;
}

uint64_t sub_214553748()
{
  v1 = type metadata accessor for BalloonPlugin(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorBalloonPlugin_balloonPlugin, v5, type metadata accessor for BalloonPlugin);
  v6 = &v5[*(v2 + 60)];
  if (v6[25])
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v7 = v6[24];
    v8 = *(v6 + 2);
    sub_213FB5844(v5, type metadata accessor for BalloonPlugin);
    if (v7)
    {
      return 0;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

id sub_2145538E8()
{
  v1 = v0 + OBJC_IVAR___BlastDoorBalloonPlugin_balloonPlugin;
  v2 = *(v1 + *(type metadata accessor for BalloonPlugin(0) + 56));
  v3 = type metadata accessor for _ObjCEncodedAttachmentsWrapper();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR___BlastDoorEncodedAttachments_encodedAttachments] = v2;
  v6.receiver = v4;
  v6.super_class = v3;

  return objc_msgSendSuper2(&v6, sel_init);
}